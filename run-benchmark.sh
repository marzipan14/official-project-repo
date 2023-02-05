#!/usr/bin/env bash
set -o errexit
set -o pipefail
if [[ "${TRACE-0}" == "1" ]]; then set -o xtrace; fi
cd "$(dirname "$0")"

CORE_ID0=${CORE_ID0:-1}
CORE_ID1=${CORE_ID1:-2}

BRIDGE=${BRIDGE:-redis-bridge}
BRIDGE_IP=${BRIDGE_IP:-172.0.1.1}

CONTAINER=${CONTAINER:-redis-test}
QEMU_GUEST=${QEMU_GUEST:-/root/qemu-guest}
UNIKERNEL_INITRD=${UNIKERNEL_INITRD:-/root/.unikraft/apps/redis/redis.cpio}
UNIKERNEL_IP=${UNIKERNEL_IP:-172.0.1.2}
UNIKERNEL_IMAGE=${UNIKERNEL_IMAGE:-/root/.unikraft/apps/redis/build/redis_kvm-x86_64}

ITERATIONS=${ITERATIONS:-10}
# ITERATIONS=${ITERATIONS:-50}
RESULTS=${RESULTS:-./output.txt}
BOOT_WARMUP_SLEEP=${BOOT_WARMUP_SLEEP:-4}
NUM_REQUESTS=${NUM_REQUESTS:-100000}

# BYTES=(2 4)
BYTES=(2 4 8 16 32 64 128 256)
PATCHES="./patches"

function cleanup {
  echo "Cleaning up..."
  pkill qemu-system-x86_64 || true
  docker stop "$CONTAINER"
}

function DOCKER_EXEC {
  docker exec -it "$CONTAINER" "$@"
}

function start_container {
  echo "Starting intermediate docker container"
  docker run --detach -it --rm --name "$CONTAINER" \
    --volume "$(pwd)":"$(pwd)" \
    --workdir "$(pwd)" \
    --security-opt seccomp:unconfined \
    --privileged \
  flexos-dev bash -c "while true; do sleep 1; done"

  echo "Waiting for docker image to start..."
  sleep "$BOOT_WARMUP_SLEEP"
}

function setup_container {
  local benchmark="$1"

  echo "Setting up..."
  create_bridge
  add_llvm_flags
  add_clang_compatibility

  if [[ "$benchmark" == "instrumentation" ]]; then
    add_instrumentation
    add_instrumentation_flags
  elif [[ "$benchmark" == "exit-points" ]]; then
    send_patch "0006-Touch-memory-at-every-exit-point.patch" "/root/.unikraft/libs/redis/patches"
  elif [[ "$benchmark" == "llvm" ]]; then
    send_pass "llvm-pass"
    add_llvm_pass_flags "llvm-pass"
  elif [[ "$benchmark" == "basic-blocks" ]]; then
    send_pass "llvm-pass2"
    add_llvm_pass_flags "llvm-pass2"
  fi

  compile_redis
}

function add_clang_compatibility {
  echo "Adding clang compatibility..."
  DOCKER_EXEC bash -c "
    cd /root/.unikraft;
    find . -type f -exec sed -i 's/#pragma GCC optimize(\"O0\")/ /g' {} \\;
    find . -type f -exec sed -i 's/#pragma GCC push_options/#pragma clang attribute push(__attribute__((optnone)), apply_to = any(function)) /g' {} \\;
    find . -type f -exec sed -i 's/#pragma GCC pop_options/#pragma clang attribute pop /g' {} \\;
    find . -type f -exec sed -i 's/__attribute__((fallthrough))/ /g' {} \\;
    find . -type f -exec sed -i 's/ __VA_OPT__(,) /, ##/g' {} \\;
  "
}

function send_pass {
  pass_name="$1"
  docker cp "./$pass_name" "$CONTAINER:/root/.unikraft"
  compile_pass "$pass_name"
}

function compile_pass {
  pass_name="$1"
  echo "Compiling pass..."
  DOCKER_EXEC bash -c "
    cd /root/.unikraft/$pass_name/
    cmake -B ./build
    cd ./build
    make
  "
}

function add_llvm_pass_flags {
  pass_name="$1"
  echo "Adding LLVM pass flags..."
  add_flags "LIBREDIS_CFLAGS-y += -Xclang -load -Xclang /root/.unikraft/$pass_name/build/touchmemory/libTouchMemoryPass.so"
}

function add_llvm_flags {
  echo "Adding LLVM flags..."
  add_flags '
    AR=llvm-ar
    CC=clang
    CXX=clang++
    NM=llvm-nm
    RANLIB=llvm-ranlib
  '
}

function add_flags {
  DOCKER_EXEC bash -c "
    echo '
      $1
    ' | \
    cat - /root/.unikraft/libs/redis/Makefile.uk > /tmp/out && mv /tmp/out /root/.unikraft/libs/redis/Makefile.uk
  "
}

function create_bridge {
  echo "Creating bridge..."
  DOCKER_EXEC brctl addbr "$BRIDGE" || true
  DOCKER_EXEC ifconfig "$BRIDGE" down
  DOCKER_EXEC ifconfig "$BRIDGE" "$BRIDGE_IP"
  DOCKER_EXEC ifconfig "$BRIDGE" up
}

function add_instrumentation {
  echo "Adding instrumentation..."
  DOCKER_EXEC bash -c "
    echo '
      #ifndef ADD_INSTRUMENTATION
      #define ADD_INSTRUMENTATION
  
      void __cyg_profile_func_enter (void *func, void	*call_site) __attribute__((no_instrument_function));
      void __cyg_profile_func_exit (void *func, void *call_site) __attribute__((no_instrument_function));

      void __cyg_profile_func_enter (void *this_fn, void *call_site) __attribute__((no_instrument_function)){}
  
      void __cyg_profile_func_exit (void *this_fn, void *call_site) __attribute__((no_instrument_function)){
        static volatile int __A_VARIABLE; __A_VARIABLE = 1;
      }
      #endif
    ' | \
    cat - /root/.unikraft/libs/redis/main.c > /tmp/out && mv /tmp/out /root/.unikraft/libs/redis/main.c
  "
}

function add_instrumentation_flags {
  echo "Adding instrumentation flags..."
  add_flags "LIBREDIS_CFLAGS-y += -finstrument-functions"
}

function send_patch {
  patch_file="$1"
  patch_directory="$2"
  docker cp "$PATCHES/$patch_file" "$CONTAINER:$patch_directory"
}

function compile_redis {
  echo "Compiling Redis..."
  DOCKER_EXEC bash -c "
    cd /root/.unikraft/apps/redis;
    kraft configure \
      -y LIBCPIO \
      -y LIBINITRAMFS \
      -y LIBUK9P \
      -y LIB9PFS \
      -y LIBFLEXOS_INTELPKU \
      -y LWIP_POOLS \
      -y LWIP_UKNETDEV_POLLONLY \
      -y LWIP_TCP_KEEPALIVE;
    make prepare;
    kraft -v build --no-progress --fast --compartmentalize"
}

function prepare_results_file {
  if [[ -f "$RESULTS" ]]; then
    rm "$RESULTS"
  fi

  echo "The size of GET/SET value in bytes,Iteration,Method,Query/sec" > "$RESULTS"
}

function run_benchmark {
  echo "Running the benchmark..."
  for BYTE in "${BYTES[@]}"; do
    for ((I=1; I<="$ITERATIONS";I++)) do
      start_unikernel
      run_experiment "$BYTE" "$I"
      amend_results_file
      DOCKER_EXEC pkill qemu-system-x86
    done
  done
}

function start_unikernel {
  echo "Starting unikernel..."
  DOCKER_EXEC taskset --cpu-list "$CORE_ID0" \
  "$QEMU_GUEST" \
    -k "$UNIKERNEL_IMAGE" \
    -x \
    -m 1024 \
    -i "$UNIKERNEL_INITRD" \
    -b "$BRIDGE" \
    -p 3 \
    -a "netdev.ipv4_addr=$UNIKERNEL_IP netdev.ipv4_gw_addr=$BRIDGE_IP netdev.ipv4_subnet_mask=255.255.255.0 vfs.rootdev=ramfs -- /redis.conf"

  echo "Sleeping $BOOT_WARMUP_SLEEP..."
  sleep "$BOOT_WARMUP_SLEEP"
}

function run_experiment {
  local byte="$1"
  local i="$2"

  echo "Starting experiment $byte/$i..."
    DOCKER_EXEC \
    taskset --cpu-list "$CORE_ID1" \
    redis-benchmark \
      -h "$UNIKERNEL_IP" -p 6379 \
      -n "$NUM_REQUESTS" \
      --csv \
      -q \
      -c 30 \
      -k 1 \
      -P 16 \
      -t get,set \
      -d "$byte" | \
    awk -v prefix="$byte","$i" '{ print prefix "," $0 }' >> "$RESULTS"
}

function amend_results_file {
  sed -i 's/"//g' "$RESULTS"
}

if [[ -z "$1" ]]; then
  echo "You must provide a benchmark!"
  exit
fi

if [[ "$1" == "-h" ]] || [[ "$1" == "--help" ]]; then
  echo "Options:"
  echo "./run-benchmark.sh pure\tRun without augmentations"
  echo "./run-benchmark.sh instrumentation\tRun with -finstrument-functions"
  echo "./run-benchmark.sh exit-points\tTouch local memory at every exit point (source-level)"
  echo "./run-benchmark.sh llvm\tTouch local memory at every exit point (IR-level)"
  echo "./run-benchmark.sh basic-blocks\tTouch local memory at the end of every basic block (IR-level)"
  exit
fi  

benchmark="$1"

start_container
trap "cleanup" EXIT
setup_container "$benchmark"
prepare_results_file
run_benchmark
