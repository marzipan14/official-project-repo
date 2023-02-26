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
ITERATIONS=${ITERATIONS:-50}
RESULTS=${RESULTS:-./output.txt}
BOOT_WARMUP_SLEEP=${BOOT_WARMUP_SLEEP:-4}
NUM_REQUESTS=${NUM_REQUESTS:-100000}

BYTES=(2 4)
# BYTES=(2 4 8 16 32 64 128 256)
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

  if [[ "$benchmark" == "instrumentation" ]]; then
    add_instrumentation
    add_instrumentation_flags
  elif [[ "$benchmark" == "exit-points" ]]; then
    send_patch "0006-Touch-memory-at-every-exit-point-redis.patch" "redis"
    #send_patch "0008-Touch-memory-at-every-exit-point-lwip.patch" "lwip"
    send_patch "0011-Touch-memory-at-every-exit-point-newlib.patch" "newlib"
    send_patch "0014-Touch-memory-at-every-exit-point-pthread-embedded.patch" "pthread-embedded"
    #send_patch "05-Touch-memory-at-every-exit-point-tlsf.patch" "tlsf"
  elif [[ "$benchmark" == "llvm" ]]; then
    send_pass "llvm-pass"
    add_llvm_pass_flags "llvm-pass"
  elif [[ "$benchmark" == "basic-blocks" ]]; then
    send_pass "llvm-pass2"
    add_llvm_pass_flags "llvm-pass2"
  fi

  compile_redis
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
  echo "Adding LLVM pass flags..."
  pass_name="$1"
  pass_flags="-Xclang -load -Xclang /root/.unikraft/$pass_name/build/touchmemory/libTouchMemoryPass.so"
  add_flags "LIBREDIS_CFLAGS-y += $pass_flags" "redis"
  add_flags "LIBPTHREAD-EMBEDDED_CFLAGS-y += $pass_flags" "pthread-embedded"
  #add_flags "LIBLWIP_CFLAGS-y += $pass_flags" "lwip"
  #add_flags "LIBTLSF_CFLAGS-y += $pass_flags" "tlsf"
  #add_flags "LIBNEWLIBGLUE_CFLAGS-y += $pass_flags" "newlib"
  #add_flags "LIBNEWLIBC_CFLAGS-y += $pass_flags" "newlib"
  #add_flags "LIBNEWLIBM_CFLAGS-y += $pass_flags" "newlib"
}

function add_flags {
  lib_name=$2
  DOCKER_EXEC bash -c "
    echo '
      $1
    ' | \
    cat - /root/.unikraft/libs/$lib_name/Makefile.uk > /tmp/out && mv /tmp/out /root/.unikraft/libs/$lib_name/Makefile.uk
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
    	#include <flexos/isolation.h>

	static volatile int __A_VARIABLE __attribute__((flexos_whitelist));

      void __cyg_profile_func_enter (void *func, void	*call_site) __attribute__((no_instrument_function));
      void __cyg_profile_func_exit (void *func, void *call_site) __attribute__((no_instrument_function));

      void __cyg_profile_func_enter (void *this_fn, void *call_site) __attribute__((no_instrument_function)){}
  
      void __cyg_profile_func_exit (void *this_fn, void *call_site) __attribute__((no_instrument_function)){
        __A_VARIABLE = 1;
      }
    ' | \
    cat - /root/.unikraft/libs/redis/main.c > /tmp/out && mv /tmp/out /root/.unikraft/libs/redis/main.c
  "
}

function add_instrumentation_flags {
  echo "Adding instrumentation flags..."
  add_flags "LIBREDIS_CFLAGS-y += -finstrument-functions" "redis"
  add_flags "LIBTLSF_CFLAGS-y += -finstrument-functions" "tlsf"
  add_flags "LIBLWIP_CFLAGS-y += -finstrument-functions" "lwip"
  add_flags "LIBPTHREAD-EMBEDDED_CFLAGS-y += -finstrument-functions" "pthread-embedded"
  add_flags "LIBNEWLIBC_CFLAGS-y += -finstrument-functions" "newlib"
  add_flags "LIBNEWLIBM_CFLAGS-y += -finstrument-functions" "newlib"
  add_flags "LIBNEWLIBGLUE_CFLAGS-y += -finstrument-functions" "newlib"
}

function send_patch {
  patch_file="$1"
  patch_directory="$2"
  docker cp "$PATCHES/$patch_file" "$CONTAINER:/root/.unikraft/libs/$patch_directory/patches"
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
