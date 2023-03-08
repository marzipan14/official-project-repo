; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/hiredis/net.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/hiredis/net.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.uk_thread_status_block = type { i64, i64 }
%struct.redisContext = type { i32, [128 x i8], i32, i32, i8*, %struct.redisReader*, i32, %struct.timeval*, %struct.anon, %struct.anon.0 }
%struct.redisReader = type { i32, [128 x i8], i8*, i64, i64, i64, [9 x %struct.redisReadTask], i32, i8*, %struct.redisReplyObjectFunctions*, i8* }
%struct.redisReadTask = type { i32, i32, i32, i8*, %struct.redisReadTask*, i8* }
%struct.redisReplyObjectFunctions = type { i8* (%struct.redisReadTask*, i8*, i64)*, i8* (%struct.redisReadTask*, i32)*, i8* (%struct.redisReadTask*, i64)*, i8* (%struct.redisReadTask*)*, void (i8*)* }
%struct.timeval = type { i64, i64 }
%struct.anon = type { i8*, i8*, i32 }
%struct.anon.0 = type { i8* }
%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.sockaddr*, i8*, %struct.addrinfo* }
%struct.sockaddr = type { i8, i8, [14 x i8] }
%struct.sockaddr_un = type { i8, [108 x i8] }
%struct.pollfd = type { i32, i16, i16 }

@_intrstack_start = external dso_local global [0 x i8], align 1
@_end = external dso_local global [0 x i8], align 1
@tsb_comp0 = external dso_local global [32 x %struct.uk_thread_status_block], align 16
@tsb_comp1 = external dso_local global [32 x %struct.uk_thread_status_block], align 16
@.str = private unnamed_addr constant [21 x i8] c"getsockopt(SO_ERROR)\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"setsockopt(SO_RCVTIMEO)\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"setsockopt(SO_SNDTIMEO)\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Invalid timeout specified\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Can't get addr: %s\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Can't bind socket: %s\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Can't create socket: %s\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"setsockopt(TCP_NODELAY)\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"fcntl(F_GETFL)\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"fcntl(F_SETFL)\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"poll(2)\00", align 1

; Function Attrs: noredzone nounwind
define dso_local i32 @redisKeepAlive(%struct.redisContext*, i32) local_unnamed_addr #0 !dbg !40 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = bitcast i32* %3 to i8*, !dbg !157
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #4, !dbg !157
  store i32 1, i32* %3, align 4, !dbg !158, !tbaa !159
  %6 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 2, !dbg !163
  %7 = load i32, i32* %6, align 4, !dbg !163, !tbaa !164
  %8 = bitcast i32* %4 to i8*, !dbg !170
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #4, !dbg !170
  %9 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !171, !srcloc !179
  %10 = icmp ult i64 %9, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !181
  br i1 %10, label %16, label %11, !dbg !181

; <label>:11:                                     ; preds = %2
  %12 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !182, !srcloc !179
  %13 = icmp ugt i64 %12, ptrtoint ([0 x i8]* @_end to i64), !dbg !181
  br i1 %13, label %16, label %14, !dbg !185

; <label>:14:                                     ; preds = %11
  %15 = call i32 @setsockopt(i32 %7, i32 4095, i32 8, i8* nonnull %5, i32 4) #5, !dbg !186
  store i32 %15, i32* %4, align 4, !dbg !186, !tbaa !159
  br label %27, !dbg !186

; <label>:16:                                     ; preds = %11, %2
  %17 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !189, !srcloc !179
  %18 = and i64 %17, -65536, !dbg !200
  %19 = or i64 %18, 4097, !dbg !200
  %20 = add nsw i64 %19, -1, !dbg !200
  %21 = inttoptr i64 %20 to i32*, !dbg !201
  %22 = load i32, i32* %21, align 4096, !dbg !202, !tbaa !159
  %23 = ptrtoint i32* %3 to i64, !dbg !203
  %24 = sext i32 %7 to i64, !dbg !203
  %25 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call setsockopt\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r8},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %24, i64 4095, i64 8, i64 %23, i64 4, i32 %22, i32 (i32, i32, i32, i8*, i32)* nonnull @setsockopt) #4, !dbg !203, !srcloc !204
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %4, i64 %25) #4, !dbg !205, !srcloc !208
  %26 = load i32, i32* %4, align 4, !dbg !209, !tbaa !159
  br label %27

; <label>:27:                                     ; preds = %16, %14
  %28 = phi i32 [ %26, %16 ], [ %15, %14 ], !dbg !209
  %29 = icmp eq i32 %28, -1, !dbg !211
  br i1 %29, label %30, label %34, !dbg !212

; <label>:30:                                     ; preds = %27
  %31 = call i32* @__errno() #5, !dbg !213
  %32 = load i32, i32* %31, align 4, !dbg !213, !tbaa !159
  %33 = call i8* @strerror(i32 %32) #5, !dbg !215
  call void @__redisSetError(%struct.redisContext* nonnull %0, i32 2, i8* %33) #5, !dbg !216
  br label %35, !dbg !217

; <label>:34:                                     ; preds = %27
  store i32 %1, i32* %3, align 4, !dbg !218, !tbaa !159
  br label %35, !dbg !219

; <label>:35:                                     ; preds = %34, %30
  %36 = phi i32 [ -1, %30 ], [ 0, %34 ], !dbg !220
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #4, !dbg !221
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #4, !dbg !221
  ret i32 %36, !dbg !221
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i32 @setsockopt(i32, i32, i32, i8*, i32) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local void @__redisSetError(%struct.redisContext*, i32, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @strerror(i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @redisCheckSocketError(%struct.redisContext*) local_unnamed_addr #0 !dbg !222 {
  %2 = alloca [128 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = bitcast i32* %3 to i8*, !dbg !251
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #4, !dbg !251
  store i32 0, i32* %3, align 4, !dbg !252, !tbaa !159
  %6 = bitcast i32* %4 to i8*, !dbg !253
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #4, !dbg !253
  store i32 4, i32* %4, align 4, !dbg !254, !tbaa !159
  %7 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 2, !dbg !255
  %8 = load i32, i32* %7, align 4, !dbg !255, !tbaa !164
  %9 = call i32 @getsockopt(i32 %8, i32 4095, i32 4103, i8* nonnull %5, i32* nonnull %4) #5, !dbg !256
  %10 = icmp eq i32 %9, -1, !dbg !257
  br i1 %10, label %11, label %20, !dbg !258

; <label>:11:                                     ; preds = %1
  %12 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0, !dbg !262
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %12) #4, !dbg !262
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %12, i8 0, i64 128, i1 false) #4, !dbg !246
  %13 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %12, i64 128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0)) #5, !dbg !264
  %14 = sext i32 %13 to i64, !dbg !264
  %15 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 %14, !dbg !266
  %16 = sub nsw i64 128, %14, !dbg !268
  %17 = call i32* @__errno() #5, !dbg !266
  %18 = load i32, i32* %17, align 4, !dbg !266, !tbaa !159
  %19 = call i32 @__xpg_strerror_r(i32 %18, i8* nonnull %15, i64 %16) #5, !dbg !266
  call void @__redisSetError(%struct.redisContext* nonnull %0, i32 1, i8* nonnull %12) #5, !dbg !269
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %12) #4, !dbg !270
  br label %29, !dbg !271

; <label>:20:                                     ; preds = %1
  %21 = load i32, i32* %3, align 4, !dbg !272, !tbaa !159
  %22 = icmp eq i32 %21, 0, !dbg !272
  br i1 %22, label %29, label %23, !dbg !273

; <label>:23:                                     ; preds = %20
  %24 = call i32* @__errno() #5, !dbg !274
  store i32 %21, i32* %24, align 4, !dbg !275, !tbaa !159
  %25 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0, !dbg !279
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %25) #4, !dbg !279
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %25, i8 0, i64 128, i1 false) #4, !dbg !242
  %26 = call i32* @__errno() #5, !dbg !281
  %27 = load i32, i32* %26, align 4, !dbg !281, !tbaa !159
  %28 = call i32 @__xpg_strerror_r(i32 %27, i8* nonnull %25, i64 128) #5, !dbg !281
  call void @__redisSetError(%struct.redisContext* nonnull %0, i32 1, i8* nonnull %25) #5, !dbg !282
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %25) #4, !dbg !283
  br label %29, !dbg !284

; <label>:29:                                     ; preds = %20, %23, %11
  %30 = phi i32 [ -1, %11 ], [ -1, %23 ], [ 0, %20 ], !dbg !285
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #4, !dbg !286
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #4, !dbg !286
  ret i32 %30, !dbg !286
}

; Function Attrs: noredzone
declare dso_local i32 @getsockopt(i32, i32, i32, i8*, i32*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @redisContextSetTimeout(%struct.redisContext*, i64, i64) local_unnamed_addr #0 !dbg !287 {
  %4 = alloca [128 x i8], align 16
  %5 = alloca %struct.timeval, align 8
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i64 0, i32 0
  store i64 %1, i64* %7, align 8
  %8 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i64 0, i32 1
  store i64 %2, i64* %8, align 8
  %9 = bitcast i32* %6 to i8*, !dbg !324
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #4, !dbg !324
  %10 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !325, !srcloc !179
  %11 = icmp ult i64 %10, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !328
  br i1 %11, label %20, label %12, !dbg !328

; <label>:12:                                     ; preds = %3
  %13 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !329, !srcloc !179
  %14 = icmp ugt i64 %13, ptrtoint ([0 x i8]* @_end to i64), !dbg !328
  br i1 %14, label %20, label %15, !dbg !332

; <label>:15:                                     ; preds = %12
  %16 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 2, !dbg !333
  %17 = load i32, i32* %16, align 4, !dbg !333, !tbaa !164
  %18 = bitcast %struct.timeval* %5 to i8*, !dbg !333
  %19 = call i32 @setsockopt(i32 %17, i32 4095, i32 4102, i8* nonnull %18, i32 16) #5, !dbg !333
  store i32 %19, i32* %6, align 4, !dbg !333, !tbaa !159
  br label %33, !dbg !333

; <label>:20:                                     ; preds = %12, %3
  %21 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !336, !srcloc !179
  %22 = and i64 %21, -65536, !dbg !341
  %23 = or i64 %22, 4097, !dbg !341
  %24 = add nsw i64 %23, -1, !dbg !341
  %25 = inttoptr i64 %24 to i32*, !dbg !342
  %26 = load i32, i32* %25, align 4096, !dbg !343, !tbaa !159
  %27 = ptrtoint %struct.timeval* %5 to i64, !dbg !344
  %28 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 2, !dbg !344
  %29 = load i32, i32* %28, align 4, !dbg !344, !tbaa !164
  %30 = sext i32 %29 to i64, !dbg !344
  %31 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call setsockopt\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r8},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %30, i64 4095, i64 4102, i64 %27, i64 16, i32 %26, i32 (i32, i32, i32, i8*, i32)* nonnull @setsockopt) #4, !dbg !344, !srcloc !345
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %6, i64 %31) #4, !dbg !346, !srcloc !349
  %32 = load i32, i32* %6, align 4, !dbg !350, !tbaa !159
  br label %33

; <label>:33:                                     ; preds = %20, %15
  %34 = phi i32 [ %32, %20 ], [ %19, %15 ], !dbg !350
  %35 = icmp eq i32 %34, -1, !dbg !351
  br i1 %35, label %36, label %45, !dbg !352

; <label>:36:                                     ; preds = %33
  %37 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0, !dbg !356
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %37) #4, !dbg !356
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %37, i8 0, i64 128, i1 false) #4, !dbg !319
  %38 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %37, i64 128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !358
  %39 = sext i32 %38 to i64, !dbg !358
  %40 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 %39, !dbg !359
  %41 = sub nsw i64 128, %39, !dbg !360
  %42 = call i32* @__errno() #5, !dbg !359
  %43 = load i32, i32* %42, align 4, !dbg !359, !tbaa !159
  %44 = call i32 @__xpg_strerror_r(i32 %43, i8* nonnull %40, i64 %41) #5, !dbg !359
  call void @__redisSetError(%struct.redisContext* nonnull %0, i32 1, i8* nonnull %37) #5, !dbg !361
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %37) #4, !dbg !362
  br label %81, !dbg !363

; <label>:45:                                     ; preds = %33
  %46 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !364, !srcloc !179
  %47 = icmp ult i64 %46, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !367
  br i1 %47, label %56, label %48, !dbg !367

; <label>:48:                                     ; preds = %45
  %49 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !368, !srcloc !179
  %50 = icmp ugt i64 %49, ptrtoint ([0 x i8]* @_end to i64), !dbg !367
  br i1 %50, label %56, label %51, !dbg !371

; <label>:51:                                     ; preds = %48
  %52 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 2, !dbg !372
  %53 = load i32, i32* %52, align 4, !dbg !372, !tbaa !164
  %54 = bitcast %struct.timeval* %5 to i8*, !dbg !372
  %55 = call i32 @setsockopt(i32 %53, i32 4095, i32 4101, i8* nonnull %54, i32 16) #5, !dbg !372
  store i32 %55, i32* %6, align 4, !dbg !372, !tbaa !159
  br label %69, !dbg !372

; <label>:56:                                     ; preds = %48, %45
  %57 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !374, !srcloc !179
  %58 = and i64 %57, -65536, !dbg !379
  %59 = or i64 %58, 4097, !dbg !379
  %60 = add nsw i64 %59, -1, !dbg !379
  %61 = inttoptr i64 %60 to i32*, !dbg !380
  %62 = load i32, i32* %61, align 4096, !dbg !381, !tbaa !159
  %63 = ptrtoint %struct.timeval* %5 to i64, !dbg !382
  %64 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 2, !dbg !382
  %65 = load i32, i32* %64, align 4, !dbg !382, !tbaa !164
  %66 = sext i32 %65 to i64, !dbg !382
  %67 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call setsockopt\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r8},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %66, i64 4095, i64 4101, i64 %63, i64 16, i32 %62, i32 (i32, i32, i32, i8*, i32)* nonnull @setsockopt) #4, !dbg !382, !srcloc !383
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %6, i64 %67) #4, !dbg !384, !srcloc !387
  %68 = load i32, i32* %6, align 4, !dbg !388, !tbaa !159
  br label %69

; <label>:69:                                     ; preds = %56, %51
  %70 = phi i32 [ %68, %56 ], [ %55, %51 ], !dbg !388
  %71 = icmp eq i32 %70, -1, !dbg !389
  br i1 %71, label %72, label %81, !dbg !390

; <label>:72:                                     ; preds = %69
  %73 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0, !dbg !394
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %73) #4, !dbg !394
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %73, i8 0, i64 128, i1 false) #4, !dbg !315
  %74 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %73, i64 128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0)) #5, !dbg !396
  %75 = sext i32 %74 to i64, !dbg !396
  %76 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 %75, !dbg !397
  %77 = sub nsw i64 128, %75, !dbg !398
  %78 = call i32* @__errno() #5, !dbg !397
  %79 = load i32, i32* %78, align 4, !dbg !397, !tbaa !159
  %80 = call i32 @__xpg_strerror_r(i32 %79, i8* nonnull %76, i64 %77) #5, !dbg !397
  call void @__redisSetError(%struct.redisContext* nonnull %0, i32 1, i8* nonnull %73) #5, !dbg !399
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %73) #4, !dbg !400
  br label %81, !dbg !401

; <label>:81:                                     ; preds = %69, %72, %36
  %82 = phi i32 [ -1, %36 ], [ -1, %72 ], [ 0, %69 ], !dbg !402
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #4, !dbg !403
  ret i32 %82, !dbg !403
}

; Function Attrs: noredzone nounwind
define dso_local i32 @redisContextConnectTcp(%struct.redisContext*, i8*, i32, %struct.timeval*) local_unnamed_addr #0 !dbg !404 {
  %5 = tail call fastcc i32 @_redisContextConnectTcp(%struct.redisContext* %0, i8* %1, i32 %2, %struct.timeval* %3, i8* null) #6, !dbg !417
  ret i32 %5, !dbg !418
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @_redisContextConnectTcp(%struct.redisContext*, i8*, i32, %struct.timeval*, i8*) unnamed_addr #0 !dbg !419 {
  %6 = alloca [128 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [6 x i8], align 1
  %13 = alloca %struct.addrinfo, align 8
  %14 = alloca %struct.addrinfo*, align 8
  %15 = alloca %struct.addrinfo*, align 8
  %16 = alloca [128 x i8], align 16
  %17 = alloca i32, align 4
  %18 = alloca [128 x i8], align 16
  %19 = alloca [128 x i8], align 16
  %20 = bitcast i32* %9 to i8*, !dbg !547
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %20) #4, !dbg !547
  %21 = bitcast i32* %10 to i8*, !dbg !547
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %21) #4, !dbg !547
  %22 = bitcast i32* %11 to i8*, !dbg !547
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #4, !dbg !547
  %23 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 0, !dbg !548
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %23) #4, !dbg !548
  %24 = bitcast %struct.addrinfo* %13 to i8*, !dbg !550
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %24) #4, !dbg !550
  %25 = bitcast %struct.addrinfo** %14 to i8*, !dbg !550
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %25) #4, !dbg !550
  %26 = bitcast %struct.addrinfo** %15 to i8*, !dbg !550
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #4, !dbg !550
  %27 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 3, !dbg !551
  %28 = load i32, i32* %27, align 8, !dbg !551, !tbaa !552
  %29 = and i32 %28, 1, !dbg !553
  %30 = and i32 %28, 128, !dbg !555
  store %struct.addrinfo* null, %struct.addrinfo** %14, align 8, !dbg !560, !tbaa !561
  %31 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 6, !dbg !562
  store i32 0, i32* %31, align 8, !dbg !563, !tbaa !564
  %32 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 8, i32 2, !dbg !565
  store i32 %2, i32* %32, align 8, !dbg !566, !tbaa !567
  %33 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 8, i32 0, !dbg !568
  %34 = load i8*, i8** %33, align 8, !dbg !568, !tbaa !570
  %35 = icmp eq i8* %34, %1, !dbg !571
  br i1 %35, label %41, label %36, !dbg !572

; <label>:36:                                     ; preds = %5
  %37 = icmp eq i8* %34, null, !dbg !573
  br i1 %37, label %39, label %38, !dbg !576

; <label>:38:                                     ; preds = %36
  tail call void @free(i8* nonnull %34) #5, !dbg !577
  br label %39, !dbg !577

; <label>:39:                                     ; preds = %36, %38
  %40 = tail call i8* @strdup(i8* %1) #5, !dbg !578
  store i8* %40, i8** %33, align 8, !dbg !579, !tbaa !570
  br label %41, !dbg !580

; <label>:41:                                     ; preds = %5, %39
  %42 = icmp eq %struct.timeval* %3, null, !dbg !581
  %43 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 7, !dbg !583
  %44 = load %struct.timeval*, %struct.timeval** %43, align 8, !dbg !583, !tbaa !586
  %45 = bitcast %struct.timeval* %44 to i8*, !dbg !587
  br i1 %42, label %53, label %46, !dbg !587

; <label>:46:                                     ; preds = %41
  %47 = icmp eq %struct.timeval* %44, %3, !dbg !588
  br i1 %47, label %63, label %48, !dbg !591

; <label>:48:                                     ; preds = %46
  %49 = icmp eq %struct.timeval* %44, null, !dbg !592
  br i1 %49, label %50, label %57, !dbg !595

; <label>:50:                                     ; preds = %48
  %51 = tail call i8* @malloc(i64 16) #5, !dbg !596
  %52 = bitcast %struct.timeval** %43 to i8**, !dbg !597
  store i8* %51, i8** %52, align 8, !dbg !597, !tbaa !586
  br label %57, !dbg !598

; <label>:53:                                     ; preds = %41
  %54 = icmp eq %struct.timeval* %44, null, !dbg !599
  br i1 %54, label %56, label %55, !dbg !600

; <label>:55:                                     ; preds = %53
  tail call void @free(i8* %45) #5, !dbg !601
  br label %56, !dbg !601

; <label>:56:                                     ; preds = %55, %53
  store %struct.timeval* null, %struct.timeval** %43, align 8, !dbg !602, !tbaa !586
  br label %80, !dbg !617

; <label>:57:                                     ; preds = %50, %48
  %58 = phi i8* [ %51, %50 ], [ %45, %48 ], !dbg !618
  %59 = bitcast %struct.timeval* %3 to i8*, !dbg !619
  %60 = tail call i8* @memcpy(i8* %58, i8* %59, i64 16) #5, !dbg !620
  %61 = load %struct.timeval*, %struct.timeval** %43, align 8, !dbg !621, !tbaa !586
  %62 = icmp eq %struct.timeval* %61, null, !dbg !622
  br i1 %62, label %80, label %63, !dbg !617

; <label>:63:                                     ; preds = %46, %57
  %64 = phi %struct.timeval* [ %61, %57 ], [ %3, %46 ]
  %65 = getelementptr inbounds %struct.timeval, %struct.timeval* %64, i64 0, i32 1, !dbg !624
  %66 = load i64, i64* %65, align 8, !dbg !624, !tbaa !627
  %67 = icmp sgt i64 %66, 1000000, !dbg !630
  br i1 %67, label %79, label %68, !dbg !631

; <label>:68:                                     ; preds = %63
  %69 = getelementptr inbounds %struct.timeval, %struct.timeval* %64, i64 0, i32 0, !dbg !632
  %70 = load i64, i64* %69, align 8, !dbg !632, !tbaa !633
  %71 = icmp sgt i64 %70, 9223372036854774, !dbg !634
  br i1 %71, label %79, label %72, !dbg !635

; <label>:72:                                     ; preds = %68
  %73 = mul nsw i64 %70, 1000, !dbg !636
  %74 = add nsw i64 %66, 999, !dbg !637
  %75 = sdiv i64 %74, 1000, !dbg !638
  %76 = add nsw i64 %73, %75, !dbg !639
  %77 = icmp ult i64 %76, 2147483647, !dbg !640
  %78 = select i1 %77, i64 %76, i64 2147483647, !dbg !640
  br label %80, !dbg !640

; <label>:79:                                     ; preds = %68, %63
  tail call void @__redisSetError(%struct.redisContext* nonnull %0, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !642
  br label %377, !dbg !644

; <label>:80:                                     ; preds = %72, %57, %56
  %81 = phi i64 [ -1, %56 ], [ -1, %57 ], [ %78, %72 ]
  %82 = icmp eq i8* %4, null, !dbg !645
  %83 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 8, i32 1, !dbg !647
  %84 = load i8*, i8** %83, align 8, !dbg !647, !tbaa !649
  br i1 %82, label %85, label %86, !dbg !650

; <label>:85:                                     ; preds = %80
  tail call void @free(i8* %84) #5, !dbg !651
  br label %90, !dbg !653

; <label>:86:                                     ; preds = %80
  %87 = icmp eq i8* %84, %4, !dbg !654
  br i1 %87, label %92, label %88, !dbg !655

; <label>:88:                                     ; preds = %86
  tail call void @free(i8* %84) #5, !dbg !656
  %89 = tail call i8* @strdup(i8* nonnull %4) #5, !dbg !658
  br label %90, !dbg !659

; <label>:90:                                     ; preds = %85, %88
  %91 = phi i8* [ %89, %88 ], [ null, %85 ]
  store i8* %91, i8** %83, align 8, !dbg !660, !tbaa !649
  br label %92, !dbg !661

; <label>:92:                                     ; preds = %90, %86
  %93 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %23, i64 6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %2) #5, !dbg !661
  %94 = call i8* @memset(i8* nonnull %24, i32 0, i64 48) #5, !dbg !662
  %95 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %13, i64 0, i32 1, !dbg !663
  store i32 2, i32* %95, align 4, !dbg !664, !tbaa !665
  %96 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %13, i64 0, i32 2, !dbg !667
  store i32 1, i32* %96, align 8, !dbg !668, !tbaa !669
  %97 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !670, !srcloc !179
  %98 = icmp ult i64 %97, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !673
  br i1 %98, label %105, label %99, !dbg !673

; <label>:99:                                     ; preds = %92
  %100 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !674, !srcloc !179
  %101 = icmp ugt i64 %100, ptrtoint ([0 x i8]* @_end to i64), !dbg !673
  br i1 %101, label %105, label %102, !dbg !677

; <label>:102:                                    ; preds = %99
  %103 = load i8*, i8** %33, align 8, !dbg !678, !tbaa !570
  %104 = call i32 @getaddrinfo(i8* %103, i8* nonnull %23, %struct.addrinfo* nonnull %13, %struct.addrinfo** nonnull %14) #5, !dbg !678
  store i32 %104, i32* %10, align 4, !dbg !678, !tbaa !159
  br label %119, !dbg !678

; <label>:105:                                    ; preds = %99, %92
  %106 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !682, !srcloc !179
  %107 = and i64 %106, -65536, !dbg !687
  %108 = or i64 %107, 4097, !dbg !687
  %109 = add nsw i64 %108, -1, !dbg !687
  %110 = inttoptr i64 %109 to i32*, !dbg !688
  %111 = load i32, i32* %110, align 4096, !dbg !689, !tbaa !159
  %112 = ptrtoint %struct.addrinfo* %13 to i64, !dbg !690
  %113 = ptrtoint %struct.addrinfo** %14 to i64, !dbg !690
  %114 = bitcast i8** %33 to i64*, !dbg !690
  %115 = load i64, i64* %114, align 8, !dbg !690, !tbaa !570
  %116 = ptrtoint [6 x i8]* %12 to i64, !dbg !690
  %117 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call getaddrinfo\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %115, i64 %116, i64 %112, i64 %113, i32 %111, i32 (i8*, i8*, %struct.addrinfo*, %struct.addrinfo**)* nonnull @getaddrinfo) #4, !dbg !690, !srcloc !691
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %10, i64 %117) #4, !dbg !692, !srcloc !695
  %118 = load i32, i32* %10, align 4, !dbg !696, !tbaa !159
  br label %119

; <label>:119:                                    ; preds = %105, %102
  %120 = phi i32 [ %118, %105 ], [ %104, %102 ], !dbg !696
  %121 = icmp eq i32 %120, 0, !dbg !697
  br i1 %121, label %148, label %122, !dbg !698

; <label>:122:                                    ; preds = %119
  store i32 10, i32* %95, align 4, !dbg !699, !tbaa !665
  %123 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !700, !srcloc !179
  %124 = icmp ult i64 %123, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !703
  br i1 %124, label %130, label %125, !dbg !703

; <label>:125:                                    ; preds = %122
  %126 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !704, !srcloc !179
  %127 = icmp ugt i64 %126, ptrtoint ([0 x i8]* @_end to i64), !dbg !703
  br i1 %127, label %130, label %128, !dbg !707

; <label>:128:                                    ; preds = %125
  %129 = call i32 @getaddrinfo(i8* %1, i8* nonnull %23, %struct.addrinfo* nonnull %13, %struct.addrinfo** nonnull %14) #5, !dbg !708
  store i32 %129, i32* %10, align 4, !dbg !708, !tbaa !159
  br label %143, !dbg !708

; <label>:130:                                    ; preds = %125, %122
  %131 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !710, !srcloc !179
  %132 = and i64 %131, -65536, !dbg !715
  %133 = or i64 %132, 4097, !dbg !715
  %134 = add nsw i64 %133, -1, !dbg !715
  %135 = inttoptr i64 %134 to i32*, !dbg !716
  %136 = load i32, i32* %135, align 4096, !dbg !717, !tbaa !159
  %137 = ptrtoint %struct.addrinfo* %13 to i64, !dbg !718
  %138 = ptrtoint %struct.addrinfo** %14 to i64, !dbg !718
  %139 = ptrtoint i8* %1 to i64, !dbg !718
  %140 = ptrtoint [6 x i8]* %12 to i64, !dbg !718
  %141 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call getaddrinfo\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %139, i64 %140, i64 %137, i64 %138, i32 %136, i32 (i8*, i8*, %struct.addrinfo*, %struct.addrinfo**)* nonnull @getaddrinfo) #4, !dbg !718, !srcloc !719
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %10, i64 %141) #4, !dbg !720, !srcloc !723
  %142 = load i32, i32* %10, align 4, !dbg !724, !tbaa !159
  br label %143

; <label>:143:                                    ; preds = %130, %128
  %144 = phi i32 [ %142, %130 ], [ %129, %128 ], !dbg !724
  %145 = icmp eq i32 %144, 0, !dbg !726
  br i1 %145, label %148, label %146, !dbg !727

; <label>:146:                                    ; preds = %143
  %147 = call i8* @gai_strerror(i32 %144) #5, !dbg !728
  call void @__redisSetError(%struct.redisContext* nonnull %0, i32 2, i8* %147) #5, !dbg !730
  br label %381, !dbg !731

; <label>:148:                                    ; preds = %143, %119
  %149 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8, !dbg !733, !tbaa !561
  %150 = icmp eq %struct.addrinfo* %149, null, !dbg !734
  br i1 %150, label %371, label %151, !dbg !735

; <label>:151:                                    ; preds = %148
  %152 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 2
  %153 = ptrtoint %struct.addrinfo* %13 to i64
  %154 = ptrtoint %struct.addrinfo** %15 to i64
  %155 = bitcast i8** %83 to i64*
  %156 = icmp ne i32 %29, 0
  %157 = icmp eq i32 %30, 0
  %158 = icmp ne i32 %30, 0
  %159 = bitcast i32* %17 to i8*
  %160 = ptrtoint i32* %11 to i64
  br label %161, !dbg !735

; <label>:161:                                    ; preds = %151, %367
  %162 = phi %struct.addrinfo* [ %149, %151 ], [ %369, %367 ]
  %163 = phi i32 [ 0, %151 ], [ %170, %367 ]
  %164 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %162, i64 0, i32 3
  %165 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %162, i64 0, i32 1
  %166 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %162, i64 0, i32 2
  %167 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %162, i64 0, i32 5
  %168 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %162, i64 0, i32 4
  br label %169, !dbg !736

; <label>:169:                                    ; preds = %313, %161
  %170 = phi i32 [ %163, %161 ], [ %310, %313 ], !dbg !738
  %171 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !736, !srcloc !179
  %172 = icmp ult i64 %171, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !747
  br i1 %172, label %181, label %173, !dbg !747

; <label>:173:                                    ; preds = %169
  %174 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !748, !srcloc !179
  %175 = icmp ugt i64 %174, ptrtoint ([0 x i8]* @_end to i64), !dbg !747
  br i1 %175, label %181, label %176, !dbg !751

; <label>:176:                                    ; preds = %173
  %177 = load i32, i32* %165, align 4, !dbg !752, !tbaa !665
  %178 = load i32, i32* %166, align 8, !dbg !752, !tbaa !669
  %179 = load i32, i32* %164, align 4, !dbg !752, !tbaa !754
  %180 = call i32 @socket(i32 %177, i32 %178, i32 %179) #5, !dbg !752
  store i32 %180, i32* %9, align 4, !dbg !752, !tbaa !159
  br label %196, !dbg !752

; <label>:181:                                    ; preds = %173, %169
  %182 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !756, !srcloc !179
  %183 = and i64 %182, -65536, !dbg !761
  %184 = or i64 %183, 4097, !dbg !761
  %185 = add nsw i64 %184, -1, !dbg !761
  %186 = inttoptr i64 %185 to i32*, !dbg !762
  %187 = load i32, i32* %186, align 4096, !dbg !763, !tbaa !159
  %188 = load i32, i32* %164, align 4, !dbg !764, !tbaa !754
  %189 = sext i32 %188 to i64, !dbg !764
  %190 = load i32, i32* %165, align 4, !dbg !764, !tbaa !665
  %191 = sext i32 %190 to i64, !dbg !764
  %192 = load i32, i32* %166, align 8, !dbg !764, !tbaa !669
  %193 = sext i32 %192 to i64, !dbg !764
  %194 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call socket\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %191, i64 %193, i64 %189, i32 %187, i32 (i32, i32, i32)* nonnull @socket) #4, !dbg !764, !srcloc !765
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %9, i64 %194) #4, !dbg !766, !srcloc !769
  %195 = load i32, i32* %9, align 4, !dbg !770, !tbaa !159
  br label %196

; <label>:196:                                    ; preds = %181, %176
  %197 = phi i32 [ %195, %181 ], [ %180, %176 ], !dbg !770
  %198 = icmp eq i32 %197, -1, !dbg !772
  br i1 %198, label %367, label %199, !dbg !773

; <label>:199:                                    ; preds = %196
  store i32 %197, i32* %152, align 4, !dbg !774, !tbaa !164
  %200 = call fastcc i32 @redisSetBlocking(%struct.redisContext* %0, i32 0) #6, !dbg !775
  %201 = icmp eq i32 %200, 0, !dbg !777
  br i1 %201, label %202, label %377, !dbg !778

; <label>:202:                                    ; preds = %199
  %203 = load i8*, i8** %83, align 8, !dbg !779, !tbaa !649
  %204 = icmp eq i8* %203, null, !dbg !780
  br i1 %204, label %282, label %205, !dbg !781

; <label>:205:                                    ; preds = %202
  %206 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !783, !srcloc !179
  %207 = icmp ult i64 %206, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !786
  br i1 %207, label %214, label %208, !dbg !786

; <label>:208:                                    ; preds = %205
  %209 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !787, !srcloc !179
  %210 = icmp ugt i64 %209, ptrtoint ([0 x i8]* @_end to i64), !dbg !786
  br i1 %210, label %214, label %211, !dbg !790

; <label>:211:                                    ; preds = %208
  %212 = load i8*, i8** %83, align 8, !dbg !791, !tbaa !649
  %213 = call i32 @getaddrinfo(i8* %212, i8* null, %struct.addrinfo* nonnull %13, %struct.addrinfo** nonnull %15) #5, !dbg !791
  store i32 %213, i32* %10, align 4, !dbg !791, !tbaa !159
  br label %224, !dbg !791

; <label>:214:                                    ; preds = %208, %205
  %215 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !794, !srcloc !179
  %216 = and i64 %215, -65536, !dbg !799
  %217 = or i64 %216, 4097, !dbg !799
  %218 = add nsw i64 %217, -1, !dbg !799
  %219 = inttoptr i64 %218 to i32*, !dbg !800
  %220 = load i32, i32* %219, align 4096, !dbg !801, !tbaa !159
  %221 = load i64, i64* %155, align 8, !dbg !802, !tbaa !649
  %222 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call getaddrinfo\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %221, i64 0, i64 %153, i64 %154, i32 %220, i32 (i8*, i8*, %struct.addrinfo*, %struct.addrinfo**)* nonnull @getaddrinfo) #4, !dbg !802, !srcloc !803
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %10, i64 %222) #4, !dbg !804, !srcloc !807
  %223 = load i32, i32* %10, align 4, !dbg !808, !tbaa !159
  br label %224

; <label>:224:                                    ; preds = %214, %211
  %225 = phi i32 [ %223, %214 ], [ %213, %211 ], !dbg !808
  %226 = icmp eq i32 %225, 0, !dbg !809
  br i1 %226, label %231, label %227, !dbg !810

; <label>:227:                                    ; preds = %224
  %228 = getelementptr inbounds [128 x i8], [128 x i8]* %16, i64 0, i64 0, !dbg !811
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %228) #4, !dbg !811
  %229 = call i8* @gai_strerror(i32 %225) #5, !dbg !813
  %230 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %228, i64 128, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* %229) #5, !dbg !814
  call void @__redisSetError(%struct.redisContext* nonnull %0, i32 2, i8* nonnull %228) #5, !dbg !815
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %228) #4, !dbg !816
  br label %377

; <label>:231:                                    ; preds = %224
  br i1 %157, label %255, label %232, !dbg !817

; <label>:232:                                    ; preds = %231
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %159) #4, !dbg !818
  store i32 1, i32* %11, align 4, !dbg !820, !tbaa !159
  %233 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !821, !srcloc !179
  %234 = icmp ult i64 %233, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !824
  br i1 %234, label %241, label %235, !dbg !824

; <label>:235:                                    ; preds = %232
  %236 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !825, !srcloc !179
  %237 = icmp ugt i64 %236, ptrtoint ([0 x i8]* @_end to i64), !dbg !824
  br i1 %237, label %241, label %238, !dbg !828

; <label>:238:                                    ; preds = %235
  %239 = load i32, i32* %9, align 4, !dbg !829, !tbaa !159
  %240 = call i32 @setsockopt(i32 %239, i32 4095, i32 4, i8* nonnull %22, i32 4) #5, !dbg !829
  store i32 %240, i32* %17, align 4, !dbg !829, !tbaa !159
  br label %252, !dbg !829

; <label>:241:                                    ; preds = %235, %232
  %242 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !832, !srcloc !179
  %243 = and i64 %242, -65536, !dbg !837
  %244 = or i64 %243, 4097, !dbg !837
  %245 = add nsw i64 %244, -1, !dbg !837
  %246 = inttoptr i64 %245 to i32*, !dbg !838
  %247 = load i32, i32* %246, align 4096, !dbg !839, !tbaa !159
  %248 = load i32, i32* %9, align 4, !dbg !840, !tbaa !159
  %249 = sext i32 %248 to i64, !dbg !840
  %250 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call setsockopt\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r8},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %249, i64 4095, i64 4, i64 %160, i64 4, i32 %247, i32 (i32, i32, i32, i8*, i32)* nonnull @setsockopt) #4, !dbg !840, !srcloc !841
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %17, i64 %250) #4, !dbg !842, !srcloc !845
  %251 = load i32, i32* %17, align 4, !dbg !846, !tbaa !159
  br label %252

; <label>:252:                                    ; preds = %241, %238
  %253 = phi i32 [ %251, %241 ], [ %240, %238 ], !dbg !846
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %159) #4, !dbg !848
  %254 = icmp sgt i32 %253, -1
  br i1 %254, label %255, label %377

; <label>:255:                                    ; preds = %231, %252
  %256 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8, !dbg !850, !tbaa !561
  %257 = icmp eq %struct.addrinfo* %256, null, !dbg !853
  br i1 %257, label %273, label %262, !dbg !854

; <label>:258:                                    ; preds = %262
  %259 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %263, i64 0, i32 7, !dbg !855
  %260 = load %struct.addrinfo*, %struct.addrinfo** %259, align 8, !dbg !850, !tbaa !561
  %261 = icmp eq %struct.addrinfo* %260, null, !dbg !853
  br i1 %261, label %271, label %262, !dbg !854, !llvm.loop !856

; <label>:262:                                    ; preds = %255, %258
  %263 = phi %struct.addrinfo* [ %260, %258 ], [ %256, %255 ]
  %264 = load i32, i32* %9, align 4, !dbg !858, !tbaa !159
  %265 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %263, i64 0, i32 5, !dbg !861
  %266 = load %struct.sockaddr*, %struct.sockaddr** %265, align 8, !dbg !861, !tbaa !862
  %267 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %263, i64 0, i32 4, !dbg !863
  %268 = load i32, i32* %267, align 8, !dbg !863, !tbaa !864
  %269 = call i32 @bind(i32 %264, %struct.sockaddr* %266, i32 %268) #5, !dbg !865
  %270 = icmp eq i32 %269, -1, !dbg !866
  br i1 %270, label %258, label %280, !dbg !867

; <label>:271:                                    ; preds = %258
  %272 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8, !dbg !868, !tbaa !561
  br label %273, !dbg !868

; <label>:273:                                    ; preds = %255, %271
  %274 = phi %struct.addrinfo* [ %272, %271 ], [ null, %255 ], !dbg !868
  call void @freeaddrinfo(%struct.addrinfo* %274) #5, !dbg !869
  %275 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0, !dbg !870
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %275) #4, !dbg !870
  %276 = call i32* @__errno() #5, !dbg !872
  %277 = load i32, i32* %276, align 4, !dbg !872, !tbaa !159
  %278 = call i8* @strerror(i32 %277) #5, !dbg !873
  %279 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %275, i64 128, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* %278) #5, !dbg !874
  call void @__redisSetError(%struct.redisContext* %0, i32 2, i8* nonnull %275) #5, !dbg !875
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %275) #4, !dbg !876
  br label %377

; <label>:280:                                    ; preds = %262
  %281 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8, !dbg !868, !tbaa !561
  call void @freeaddrinfo(%struct.addrinfo* %281) #5, !dbg !869
  br label %282

; <label>:282:                                    ; preds = %280, %202
  %283 = load i32, i32* %9, align 4, !dbg !877, !tbaa !159
  %284 = load %struct.sockaddr*, %struct.sockaddr** %167, align 8, !dbg !878, !tbaa !862
  %285 = load i32, i32* %168, align 8, !dbg !879, !tbaa !864
  %286 = call i32 @connect(i32 %283, %struct.sockaddr* %284, i32 %285) #5, !dbg !880
  %287 = icmp eq i32 %286, -1, !dbg !881
  br i1 %287, label %288, label %319, !dbg !882

; <label>:288:                                    ; preds = %282
  %289 = call i32* @__errno() #5, !dbg !883
  %290 = load i32, i32* %289, align 4, !dbg !883, !tbaa !159
  %291 = icmp eq i32 %290, 118, !dbg !884
  br i1 %291, label %292, label %297, !dbg !885

; <label>:292:                                    ; preds = %288
  %293 = load i32, i32* %152, align 4, !dbg !894, !tbaa !164
  %294 = icmp sgt i32 %293, -1, !dbg !896
  br i1 %294, label %295, label %367, !dbg !897

; <label>:295:                                    ; preds = %292
  %296 = call i32 @close(i32 %293) #5, !dbg !898
  store i32 -1, i32* %152, align 4, !dbg !900, !tbaa !164
  br label %367, !dbg !901

; <label>:297:                                    ; preds = %288
  %298 = call i32* @__errno() #5, !dbg !902
  %299 = load i32, i32* %298, align 4, !dbg !902, !tbaa !159
  %300 = icmp ne i32 %299, 119, !dbg !903
  %301 = or i1 %156, %300, !dbg !904
  br i1 %301, label %302, label %324, !dbg !904

; <label>:302:                                    ; preds = %297
  %303 = call i32* @__errno() #5, !dbg !905
  %304 = load i32, i32* %303, align 4, !dbg !905, !tbaa !159
  %305 = icmp eq i32 %304, 125, !dbg !906
  %306 = and i1 %158, %305, !dbg !907
  br i1 %306, label %307, label %316, !dbg !907

; <label>:307:                                    ; preds = %302
  %308 = icmp sgt i32 %170, 8, !dbg !908
  br i1 %308, label %377, label %309, !dbg !909

; <label>:309:                                    ; preds = %307
  %310 = add nsw i32 %170, 1, !dbg !910
  %311 = load i32, i32* %152, align 4, !dbg !914, !tbaa !164
  %312 = icmp sgt i32 %311, -1, !dbg !915
  br i1 %312, label %314, label %313, !dbg !916

; <label>:313:                                    ; preds = %309, %314
  br label %169, !dbg !557

; <label>:314:                                    ; preds = %309
  %315 = call i32 @close(i32 %311) #5, !dbg !917
  store i32 -1, i32* %152, align 4, !dbg !918, !tbaa !164
  br label %313, !dbg !919

; <label>:316:                                    ; preds = %302
  %317 = call fastcc i32 @redisContextWaitReady(%struct.redisContext* %0, i64 %81) #6, !dbg !920
  %318 = icmp eq i32 %317, 0, !dbg !923
  br i1 %318, label %319, label %377, !dbg !924

; <label>:319:                                    ; preds = %282, %316
  %320 = icmp eq i32 %29, 0, !dbg !925
  br i1 %320, label %324, label %321, !dbg !927

; <label>:321:                                    ; preds = %319
  %322 = call fastcc i32 @redisSetBlocking(%struct.redisContext* %0, i32 1) #6, !dbg !928
  %323 = icmp eq i32 %322, 0, !dbg !929
  br i1 %323, label %324, label %377, !dbg !930

; <label>:324:                                    ; preds = %297, %321, %319
  %325 = bitcast i32* %7 to i8*, !dbg !932
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %325) #4, !dbg !932
  store i32 1, i32* %7, align 4, !dbg !933, !tbaa !159
  %326 = bitcast i32* %8 to i8*, !dbg !932
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %326) #4, !dbg !932
  %327 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !934, !srcloc !179
  %328 = icmp ult i64 %327, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !937
  br i1 %328, label %335, label %329, !dbg !937

; <label>:329:                                    ; preds = %324
  %330 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !938, !srcloc !179
  %331 = icmp ugt i64 %330, ptrtoint ([0 x i8]* @_end to i64), !dbg !937
  br i1 %331, label %335, label %332, !dbg !941

; <label>:332:                                    ; preds = %329
  %333 = load i32, i32* %152, align 4, !dbg !942, !tbaa !164
  %334 = call i32 @setsockopt(i32 %333, i32 6, i32 1, i8* nonnull %325, i32 4) #5, !dbg !942
  store i32 %334, i32* %8, align 4, !dbg !942, !tbaa !159
  br label %347, !dbg !942

; <label>:335:                                    ; preds = %329, %324
  %336 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !945, !srcloc !179
  %337 = and i64 %336, -65536, !dbg !950
  %338 = or i64 %337, 4097, !dbg !950
  %339 = add nsw i64 %338, -1, !dbg !950
  %340 = inttoptr i64 %339 to i32*, !dbg !951
  %341 = load i32, i32* %340, align 4096, !dbg !952, !tbaa !159
  %342 = ptrtoint i32* %7 to i64, !dbg !953
  %343 = load i32, i32* %152, align 4, !dbg !953, !tbaa !164
  %344 = sext i32 %343 to i64, !dbg !953
  %345 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call setsockopt\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r8},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %344, i64 6, i64 1, i64 %342, i64 4, i32 %341, i32 (i32, i32, i32, i8*, i32)* nonnull @setsockopt) #4, !dbg !953, !srcloc !954
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %8, i64 %345) #4, !dbg !955, !srcloc !958
  %346 = load i32, i32* %8, align 4, !dbg !959, !tbaa !159
  br label %347

; <label>:347:                                    ; preds = %335, %332
  %348 = phi i32 [ %346, %335 ], [ %334, %332 ], !dbg !959
  %349 = icmp eq i32 %348, -1, !dbg !960
  br i1 %349, label %350, label %364, !dbg !961

; <label>:350:                                    ; preds = %347
  %351 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0, !dbg !965
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %351) #4, !dbg !965
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %351, i8 0, i64 128, i1 false) #4, !dbg !521
  %352 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %351, i64 128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #5, !dbg !967
  %353 = sext i32 %352 to i64, !dbg !967
  %354 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 %353, !dbg !968
  %355 = sub nsw i64 128, %353, !dbg !969
  %356 = call i32* @__errno() #5, !dbg !968
  %357 = load i32, i32* %356, align 4, !dbg !968, !tbaa !159
  %358 = call i32 @__xpg_strerror_r(i32 %357, i8* nonnull %354, i64 %355) #5, !dbg !968
  call void @__redisSetError(%struct.redisContext* nonnull %0, i32 1, i8* nonnull %351) #5, !dbg !970
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %351) #4, !dbg !971
  %359 = load i32, i32* %152, align 4, !dbg !974, !tbaa !164
  %360 = icmp sgt i32 %359, -1, !dbg !975
  br i1 %360, label %361, label %363, !dbg !976

; <label>:361:                                    ; preds = %350
  %362 = call i32 @close(i32 %359) #5, !dbg !977
  store i32 -1, i32* %152, align 4, !dbg !978, !tbaa !164
  br label %363, !dbg !979

; <label>:363:                                    ; preds = %350, %361
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %326) #4, !dbg !980
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %325) #4, !dbg !980
  br label %377, !dbg !981

; <label>:364:                                    ; preds = %347
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %326) #4, !dbg !980
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %325) #4, !dbg !980
  %365 = load i32, i32* %27, align 8, !dbg !982, !tbaa !552
  %366 = or i32 %365, 2, !dbg !982
  store i32 %366, i32* %27, align 8, !dbg !982, !tbaa !552
  br label %377, !dbg !983

; <label>:367:                                    ; preds = %196, %295, %292
  %368 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %162, i64 0, i32 7, !dbg !984
  %369 = load %struct.addrinfo*, %struct.addrinfo** %368, align 8, !dbg !733, !tbaa !561
  %370 = icmp eq %struct.addrinfo* %369, null, !dbg !734
  br i1 %370, label %371, label %161, !dbg !735, !llvm.loop !985

; <label>:371:                                    ; preds = %367, %148
  %372 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0, !dbg !987
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %372) #4, !dbg !987
  %373 = call i32* @__errno() #5, !dbg !989
  %374 = load i32, i32* %373, align 4, !dbg !989, !tbaa !159
  %375 = call i8* @strerror(i32 %374) #5, !dbg !990
  %376 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %372, i64 128, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i8* %375) #5, !dbg !991
  call void @__redisSetError(%struct.redisContext* %0, i32 2, i8* nonnull %372) #5, !dbg !992
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %372) #4, !dbg !993
  br label %377

; <label>:377:                                    ; preds = %252, %307, %199, %273, %227, %363, %79, %371, %321, %316, %364
  %378 = phi i32 [ 0, %364 ], [ -1, %316 ], [ -1, %321 ], [ -1, %371 ], [ -1, %79 ], [ -1, %363 ], [ -1, %227 ], [ -1, %273 ], [ -1, %199 ], [ -1, %307 ], [ -1, %252 ]
  store i32 %378, i32* %10, align 4, !dbg !994, !tbaa !159
  %379 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8, !dbg !995, !tbaa !561
  call void @freeaddrinfo(%struct.addrinfo* %379) #5, !dbg !996
  %380 = load i32, i32* %10, align 4, !dbg !997, !tbaa !159
  br label %381, !dbg !998

; <label>:381:                                    ; preds = %377, %146
  %382 = phi i32 [ %380, %377 ], [ -1, %146 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #4, !dbg !999
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %25) #4, !dbg !999
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %24) #4, !dbg !999
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %23) #4, !dbg !999
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #4, !dbg !999
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %21) #4, !dbg !999
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %20) #4, !dbg !999
  ret i32 %382, !dbg !999
}

; Function Attrs: noredzone nounwind
define dso_local i32 @redisContextConnectBindTcp(%struct.redisContext*, i8*, i32, %struct.timeval*, i8*) local_unnamed_addr #0 !dbg !1000 {
  %6 = tail call fastcc i32 @_redisContextConnectTcp(%struct.redisContext* %0, i8* %1, i32 %2, %struct.timeval* %3, i8* %4) #6, !dbg !1012
  ret i32 %6, !dbg !1013
}

; Function Attrs: noredzone nounwind
define dso_local i32 @redisContextConnectUnix(%struct.redisContext*, i8*, %struct.timeval*) local_unnamed_addr #0 !dbg !1014 {
  %4 = alloca [128 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr_un, align 1
  %7 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 3, !dbg !1054
  %8 = load i32, i32* %7, align 8, !dbg !1054, !tbaa !552
  %9 = and i32 %8, 1, !dbg !1055
  %10 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %6, i64 0, i32 0, !dbg !1057
  call void @llvm.lifetime.start.p0i8(i64 109, i8* nonnull %10) #4, !dbg !1057
  %11 = bitcast i32* %5 to i8*, !dbg !1061
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #4, !dbg !1061
  %12 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1062, !srcloc !179
  %13 = icmp ult i64 %12, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1065
  br i1 %13, label %19, label %14, !dbg !1065

; <label>:14:                                     ; preds = %3
  %15 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1066, !srcloc !179
  %16 = icmp ugt i64 %15, ptrtoint ([0 x i8]* @_end to i64), !dbg !1065
  br i1 %16, label %19, label %17, !dbg !1069

; <label>:17:                                     ; preds = %14
  %18 = tail call i32 @socket(i32 1, i32 1, i32 0) #5, !dbg !1070
  store i32 %18, i32* %5, align 4, !dbg !1070, !tbaa !159
  br label %28, !dbg !1070

; <label>:19:                                     ; preds = %14, %3
  %20 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1073, !srcloc !179
  %21 = and i64 %20, -65536, !dbg !1078
  %22 = or i64 %21, 4097, !dbg !1078
  %23 = add nsw i64 %22, -1, !dbg !1078
  %24 = inttoptr i64 %23 to i32*, !dbg !1079
  %25 = load i32, i32* %24, align 4096, !dbg !1080, !tbaa !159
  %26 = tail call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call socket\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 1, i64 1, i64 0, i32 %25, i32 (i32, i32, i32)* nonnull @socket) #4, !dbg !1081, !srcloc !1082
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %5, i64 %26) #4, !dbg !1083, !srcloc !1086
  %27 = load i32, i32* %5, align 4, !dbg !1087, !tbaa !159
  br label %28

; <label>:28:                                     ; preds = %19, %17
  %29 = phi i32 [ %27, %19 ], [ %18, %17 ], !dbg !1087
  %30 = icmp eq i32 %29, -1, !dbg !1088
  br i1 %30, label %31, label %36, !dbg !1089

; <label>:31:                                     ; preds = %28
  %32 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0, !dbg !1093
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %32) #4, !dbg !1093
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %32, i8 0, i64 128, i1 false) #4, !dbg !1032
  %33 = call i32* @__errno() #5, !dbg !1095
  %34 = load i32, i32* %33, align 4, !dbg !1095, !tbaa !159
  %35 = call i32 @__xpg_strerror_r(i32 %34, i8* nonnull %32, i64 128) #5, !dbg !1095
  call void @__redisSetError(%struct.redisContext* nonnull %0, i32 1, i8* nonnull %32) #5, !dbg !1096
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %32) #4, !dbg !1097
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #4, !dbg !1098
  br label %110, !dbg !1099

; <label>:36:                                     ; preds = %28
  %37 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 2, !dbg !1100
  store i32 %29, i32* %37, align 4, !dbg !1101, !tbaa !164
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #4, !dbg !1098
  %38 = call fastcc i32 @redisSetBlocking(%struct.redisContext* nonnull %0, i32 0) #6, !dbg !1102
  %39 = icmp eq i32 %38, 0, !dbg !1104
  br i1 %39, label %40, label %110, !dbg !1105

; <label>:40:                                     ; preds = %36
  %41 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 6, !dbg !1106
  store i32 1, i32* %41, align 8, !dbg !1107, !tbaa !564
  %42 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 9, i32 0, !dbg !1108
  %43 = load i8*, i8** %42, align 8, !dbg !1108, !tbaa !1110
  %44 = icmp eq i8* %43, %1, !dbg !1111
  br i1 %44, label %47, label %45, !dbg !1112

; <label>:45:                                     ; preds = %40
  %46 = call i8* @strdup(i8* %1) #5, !dbg !1113
  store i8* %46, i8** %42, align 8, !dbg !1114, !tbaa !1110
  br label %47, !dbg !1115

; <label>:47:                                     ; preds = %40, %45
  %48 = icmp eq %struct.timeval* %2, null, !dbg !1116
  %49 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 7, !dbg !1118
  %50 = load %struct.timeval*, %struct.timeval** %49, align 8, !dbg !1118, !tbaa !586
  %51 = bitcast %struct.timeval* %50 to i8*, !dbg !1121
  br i1 %48, label %59, label %52, !dbg !1121

; <label>:52:                                     ; preds = %47
  %53 = icmp eq %struct.timeval* %50, %2, !dbg !1122
  br i1 %53, label %69, label %54, !dbg !1125

; <label>:54:                                     ; preds = %52
  %55 = icmp eq %struct.timeval* %50, null, !dbg !1126
  br i1 %55, label %56, label %63, !dbg !1129

; <label>:56:                                     ; preds = %54
  %57 = call i8* @malloc(i64 16) #5, !dbg !1130
  %58 = bitcast %struct.timeval** %49 to i8**, !dbg !1131
  store i8* %57, i8** %58, align 8, !dbg !1131, !tbaa !586
  br label %63, !dbg !1132

; <label>:59:                                     ; preds = %47
  %60 = icmp eq %struct.timeval* %50, null, !dbg !1133
  br i1 %60, label %62, label %61, !dbg !1134

; <label>:61:                                     ; preds = %59
  call void @free(i8* %51) #5, !dbg !1135
  br label %62, !dbg !1135

; <label>:62:                                     ; preds = %61, %59
  store %struct.timeval* null, %struct.timeval** %49, align 8, !dbg !1136, !tbaa !586
  br label %85, !dbg !1142

; <label>:63:                                     ; preds = %56, %54
  %64 = phi i8* [ %57, %56 ], [ %51, %54 ], !dbg !1143
  %65 = bitcast %struct.timeval* %2 to i8*, !dbg !1144
  %66 = call i8* @memcpy(i8* %64, i8* %65, i64 16) #5, !dbg !1145
  %67 = load %struct.timeval*, %struct.timeval** %49, align 8, !dbg !1146, !tbaa !586
  %68 = icmp eq %struct.timeval* %67, null, !dbg !1147
  br i1 %68, label %85, label %69, !dbg !1142

; <label>:69:                                     ; preds = %52, %63
  %70 = phi %struct.timeval* [ %67, %63 ], [ %2, %52 ]
  %71 = getelementptr inbounds %struct.timeval, %struct.timeval* %70, i64 0, i32 1, !dbg !1148
  %72 = load i64, i64* %71, align 8, !dbg !1148, !tbaa !627
  %73 = icmp sgt i64 %72, 1000000, !dbg !1149
  br i1 %73, label %110, label %74, !dbg !1150

; <label>:74:                                     ; preds = %69
  %75 = getelementptr inbounds %struct.timeval, %struct.timeval* %70, i64 0, i32 0, !dbg !1151
  %76 = load i64, i64* %75, align 8, !dbg !1151, !tbaa !633
  %77 = icmp sgt i64 %76, 9223372036854774, !dbg !1152
  br i1 %77, label %110, label %78, !dbg !1153

; <label>:78:                                     ; preds = %74
  %79 = mul nsw i64 %76, 1000, !dbg !1154
  %80 = add nsw i64 %72, 999, !dbg !1155
  %81 = sdiv i64 %80, 1000, !dbg !1156
  %82 = add nsw i64 %79, %81, !dbg !1157
  %83 = icmp ult i64 %82, 2147483647, !dbg !1158
  %84 = select i1 %83, i64 %82, i64 2147483647, !dbg !1158
  br label %85, !dbg !1158

; <label>:85:                                     ; preds = %78, %63, %62
  %86 = phi i64 [ -1, %62 ], [ -1, %63 ], [ %84, %78 ]
  store i8 1, i8* %10, align 1, !dbg !1159, !tbaa !1160
  %87 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %6, i64 0, i32 1, i64 0, !dbg !1162
  %88 = call i8* @strncpy(i8* nonnull %87, i8* %1, i64 107) #5, !dbg !1163
  %89 = load i32, i32* %37, align 4, !dbg !1164, !tbaa !164
  %90 = bitcast %struct.sockaddr_un* %6 to %struct.sockaddr*, !dbg !1166
  %91 = call i32 @connect(i32 %89, %struct.sockaddr* nonnull %90, i32 109) #5, !dbg !1167
  %92 = icmp eq i32 %91, -1, !dbg !1168
  br i1 %92, label %93, label %102, !dbg !1169

; <label>:93:                                     ; preds = %85
  %94 = call i32* @__errno() #5, !dbg !1170
  %95 = load i32, i32* %94, align 4, !dbg !1170, !tbaa !159
  %96 = icmp ne i32 %95, 119, !dbg !1173
  %97 = icmp ne i32 %9, 0, !dbg !1174
  %98 = or i1 %97, %96, !dbg !1175
  br i1 %98, label %99, label %107, !dbg !1175

; <label>:99:                                     ; preds = %93
  %100 = call fastcc i32 @redisContextWaitReady(%struct.redisContext* nonnull %0, i64 %86) #6, !dbg !1176
  %101 = icmp eq i32 %100, 0, !dbg !1179
  br i1 %101, label %102, label %110, !dbg !1180

; <label>:102:                                    ; preds = %99, %85
  %103 = icmp eq i32 %9, 0, !dbg !1181
  br i1 %103, label %107, label %104, !dbg !1183

; <label>:104:                                    ; preds = %102
  %105 = call fastcc i32 @redisSetBlocking(%struct.redisContext* nonnull %0, i32 1) #6, !dbg !1184
  %106 = icmp eq i32 %105, 0, !dbg !1185
  br i1 %106, label %107, label %110, !dbg !1186

; <label>:107:                                    ; preds = %93, %104, %102
  %108 = load i32, i32* %7, align 8, !dbg !1187, !tbaa !552
  %109 = or i32 %108, 2, !dbg !1187
  store i32 %109, i32* %7, align 8, !dbg !1187, !tbaa !552
  br label %110, !dbg !1188

; <label>:110:                                    ; preds = %74, %69, %31, %104, %99, %36, %107
  %111 = phi i32 [ 0, %107 ], [ -1, %36 ], [ -1, %99 ], [ -1, %104 ], [ -1, %31 ], [ -1, %69 ], [ -1, %74 ], !dbg !1189
  call void @llvm.lifetime.end.p0i8(i64 109, i8* nonnull %10) #4, !dbg !1190
  ret i32 %111, !dbg !1190
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @redisSetBlocking(%struct.redisContext*, i32) unnamed_addr #0 !dbg !1191 {
  %3 = alloca [128 x i8], align 16
  %4 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 2, !dbg !1206
  %5 = load i32, i32* %4, align 4, !dbg !1206, !tbaa !164
  %6 = tail call i32 (i32, i32, ...) @fcntl(i32 %5, i32 3) #5, !dbg !1207
  %7 = icmp eq i32 %6, -1, !dbg !1209
  br i1 %7, label %8, label %21, !dbg !1210

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0, !dbg !1214
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %9) #4, !dbg !1214
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %9, i8 0, i64 128, i1 false) #4, !dbg !1200
  %10 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %9, i64 128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0)) #5, !dbg !1216
  %11 = sext i32 %10 to i64, !dbg !1216
  %12 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 %11, !dbg !1217
  %13 = sub nsw i64 128, %11, !dbg !1218
  %14 = call i32* @__errno() #5, !dbg !1217
  %15 = load i32, i32* %14, align 4, !dbg !1217, !tbaa !159
  %16 = call i32 @__xpg_strerror_r(i32 %15, i8* nonnull %12, i64 %13) #5, !dbg !1217
  call void @__redisSetError(%struct.redisContext* nonnull %0, i32 1, i8* nonnull %9) #5, !dbg !1219
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %9) #4, !dbg !1220
  %17 = load i32, i32* %4, align 4, !dbg !1223, !tbaa !164
  %18 = icmp sgt i32 %17, -1, !dbg !1224
  br i1 %18, label %19, label %42, !dbg !1225

; <label>:19:                                     ; preds = %8
  %20 = call i32 @close(i32 %17) #5, !dbg !1226
  store i32 -1, i32* %4, align 4, !dbg !1227, !tbaa !164
  br label %42, !dbg !1228

; <label>:21:                                     ; preds = %2
  %22 = icmp eq i32 %1, 0, !dbg !1229
  %23 = and i32 %6, -16385, !dbg !1231
  %24 = or i32 %6, 16384, !dbg !1232
  %25 = select i1 %22, i32 %24, i32 %23, !dbg !1233
  %26 = load i32, i32* %4, align 4, !dbg !1234, !tbaa !164
  %27 = tail call i32 (i32, i32, ...) @fcntl(i32 %26, i32 4, i32 %25) #5, !dbg !1235
  %28 = icmp eq i32 %27, -1, !dbg !1236
  br i1 %28, label %29, label %42, !dbg !1237

; <label>:29:                                     ; preds = %21
  %30 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0, !dbg !1241
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %30) #4, !dbg !1241
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %30, i8 0, i64 128, i1 false) #4, !dbg !1196
  %31 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %30, i64 128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0)) #5, !dbg !1243
  %32 = sext i32 %31 to i64, !dbg !1243
  %33 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 %32, !dbg !1244
  %34 = sub nsw i64 128, %32, !dbg !1245
  %35 = call i32* @__errno() #5, !dbg !1244
  %36 = load i32, i32* %35, align 4, !dbg !1244, !tbaa !159
  %37 = call i32 @__xpg_strerror_r(i32 %36, i8* nonnull %33, i64 %34) #5, !dbg !1244
  call void @__redisSetError(%struct.redisContext* nonnull %0, i32 1, i8* nonnull %30) #5, !dbg !1246
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %30) #4, !dbg !1247
  %38 = load i32, i32* %4, align 4, !dbg !1250, !tbaa !164
  %39 = icmp sgt i32 %38, -1, !dbg !1251
  br i1 %39, label %40, label %42, !dbg !1252

; <label>:40:                                     ; preds = %29
  %41 = call i32 @close(i32 %38) #5, !dbg !1253
  store i32 -1, i32* %4, align 4, !dbg !1254, !tbaa !164
  br label %42, !dbg !1255

; <label>:42:                                     ; preds = %40, %29, %19, %8, %21
  %43 = phi i32 [ 0, %21 ], [ -1, %8 ], [ -1, %19 ], [ -1, %29 ], [ -1, %40 ], !dbg !1256
  ret i32 %43, !dbg !1257
}

; Function Attrs: noredzone
declare dso_local i8* @strdup(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @malloc(i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @strncpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc i32 @redisContextWaitReady(%struct.redisContext*, i64) unnamed_addr #0 !dbg !1258 {
  %3 = alloca [128 x i8], align 16
  %4 = alloca [1 x %struct.pollfd], align 4
  %5 = bitcast [1 x %struct.pollfd]* %4 to i8*, !dbg !1289
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #4, !dbg !1289
  %6 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 2, !dbg !1291
  %7 = load i32, i32* %6, align 4, !dbg !1291, !tbaa !164
  %8 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %4, i64 0, i64 0, i32 0, !dbg !1292
  store i32 %7, i32* %8, align 4, !dbg !1293, !tbaa !1294
  %9 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %4, i64 0, i64 0, i32 1, !dbg !1297
  store i16 2, i16* %9, align 4, !dbg !1298, !tbaa !1299
  %10 = tail call i32* @__errno() #5, !dbg !1300
  %11 = load i32, i32* %10, align 4, !dbg !1300, !tbaa !159
  %12 = icmp eq i32 %11, 119, !dbg !1301
  br i1 %12, label %13, label %44, !dbg !1302

; <label>:13:                                     ; preds = %2
  %14 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %4, i64 0, i64 0, !dbg !1303
  %15 = trunc i64 %1 to i32, !dbg !1304
  %16 = call i32 @poll(%struct.pollfd* nonnull %14, i32 1, i32 %15) #5, !dbg !1305
  switch i32 %16, label %40 [
    i32 -1, label %17
    i32 0, label %30
  ], !dbg !1307

; <label>:17:                                     ; preds = %13
  %18 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0, !dbg !1311
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %18) #4, !dbg !1311
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %18, i8 0, i64 128, i1 false) #4, !dbg !1284
  %19 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %18, i64 128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0)) #5, !dbg !1313
  %20 = sext i32 %19 to i64, !dbg !1313
  %21 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 %20, !dbg !1314
  %22 = sub nsw i64 128, %20, !dbg !1315
  %23 = call i32* @__errno() #5, !dbg !1314
  %24 = load i32, i32* %23, align 4, !dbg !1314, !tbaa !159
  %25 = call i32 @__xpg_strerror_r(i32 %24, i8* nonnull %21, i64 %22) #5, !dbg !1314
  call void @__redisSetError(%struct.redisContext* nonnull %0, i32 1, i8* nonnull %18) #5, !dbg !1316
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %18) #4, !dbg !1317
  %26 = load i32, i32* %6, align 4, !dbg !1320, !tbaa !164
  %27 = icmp sgt i32 %26, -1, !dbg !1321
  br i1 %27, label %28, label %53, !dbg !1322

; <label>:28:                                     ; preds = %17
  %29 = call i32 @close(i32 %26) #5, !dbg !1323
  store i32 -1, i32* %6, align 4, !dbg !1324, !tbaa !164
  br label %53, !dbg !1325

; <label>:30:                                     ; preds = %13
  %31 = call i32* @__errno() #5, !dbg !1326
  store i32 116, i32* %31, align 4, !dbg !1327, !tbaa !159
  %32 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0, !dbg !1331
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %32) #4, !dbg !1331
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %32, i8 0, i64 128, i1 false) #4, !dbg !1279
  %33 = call i32* @__errno() #5, !dbg !1333
  %34 = load i32, i32* %33, align 4, !dbg !1333, !tbaa !159
  %35 = call i32 @__xpg_strerror_r(i32 %34, i8* nonnull %32, i64 128) #5, !dbg !1333
  call void @__redisSetError(%struct.redisContext* nonnull %0, i32 1, i8* nonnull %32) #5, !dbg !1334
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %32) #4, !dbg !1335
  %36 = load i32, i32* %6, align 4, !dbg !1338, !tbaa !164
  %37 = icmp sgt i32 %36, -1, !dbg !1339
  br i1 %37, label %38, label %53, !dbg !1340

; <label>:38:                                     ; preds = %30
  %39 = call i32 @close(i32 %36) #5, !dbg !1341
  store i32 -1, i32* %6, align 4, !dbg !1342, !tbaa !164
  br label %53, !dbg !1343

; <label>:40:                                     ; preds = %13
  %41 = call i32 @redisCheckSocketError(%struct.redisContext* nonnull %0) #6, !dbg !1344
  %42 = icmp ne i32 %41, 0, !dbg !1346
  %43 = sext i1 %42 to i32, !dbg !1347
  br label %53, !dbg !1347

; <label>:44:                                     ; preds = %2
  %45 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0, !dbg !1351
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %45) #4, !dbg !1351
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %45, i8 0, i64 128, i1 false) #4, !dbg !1277
  %46 = tail call i32* @__errno() #5, !dbg !1353
  %47 = load i32, i32* %46, align 4, !dbg !1353, !tbaa !159
  %48 = call i32 @__xpg_strerror_r(i32 %47, i8* nonnull %45, i64 128) #5, !dbg !1353
  call void @__redisSetError(%struct.redisContext* nonnull %0, i32 1, i8* nonnull %45) #5, !dbg !1354
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %45) #4, !dbg !1355
  %49 = load i32, i32* %6, align 4, !dbg !1358, !tbaa !164
  %50 = icmp sgt i32 %49, -1, !dbg !1359
  br i1 %50, label %51, label %53, !dbg !1360

; <label>:51:                                     ; preds = %44
  %52 = call i32 @close(i32 %49) #5, !dbg !1361
  store i32 -1, i32* %6, align 4, !dbg !1362, !tbaa !164
  br label %53, !dbg !1363

; <label>:53:                                     ; preds = %51, %44, %38, %30, %28, %17, %40
  %54 = phi i32 [ %43, %40 ], [ -1, %17 ], [ -1, %28 ], [ -1, %30 ], [ -1, %38 ], [ -1, %44 ], [ -1, %51 ], !dbg !1364
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #4, !dbg !1365
  ret i32 %54, !dbg !1365
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #2

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @__xpg_strerror_r(i32, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #3

; Function Attrs: noredzone
declare dso_local i8* @gai_strerror(i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @socket(i32, i32, i32) #3

; Function Attrs: noredzone
declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @freeaddrinfo(%struct.addrinfo*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @close(i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @fcntl(i32, i32, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @poll(%struct.pollfd*, i32, i32) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }
attributes #6 = { nobuiltin noredzone }

!llvm.module.flags = !{!36, !37, !38}
!llvm.ident = !{!39}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !9)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/hiredis/net.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "redisConnectionType", file: !4, line: 134, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/hiredis/hiredis.h", directory: "/root/.unikraft/apps/redis/build")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8}
!7 = !DIEnumerator(name: "REDIS_CONN_TCP", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "REDIS_CONN_UNIX", value: 1, isUnsigned: true)
!9 = !{!10, !11, !15, !16, !33, !35}
!10 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !12, line: 60, baseType: !13)
!12 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !14, line: 105, baseType: !10)
!14 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !18, line: 94, size: 128, elements: !19)
!18 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/sockets.h", directory: "/root/.unikraft/apps/redis/build")
!19 = !{!20, !26, !28}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "sa_len", scope: !17, file: !18, line: 95, baseType: !21, size: 8)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8_t", file: !22, line: 125, baseType: !23)
!22 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/arch.h", directory: "/root/.unikraft/apps/redis/build")
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !12, line: 24, baseType: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !14, line: 43, baseType: !25)
!25 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !17, file: !18, line: 96, baseType: !27, size: 8, offset: 8)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !18, line: 63, baseType: !21)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !17, file: !18, line: 97, baseType: !29, size: 112, offset: 16)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 112, elements: !31)
!30 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!31 = !{!32}
!32 = !DISubrange(count: 14)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!36 = !{i32 2, !"Dwarf Version", i32 4}
!37 = !{i32 2, !"Debug Info Version", i32 3}
!38 = !{i32 1, !"wchar_size", i32 4}
!39 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!40 = distinct !DISubprogram(name: "redisKeepAlive", scope: !1, file: !1, line: 131, type: !41, isLocal: false, isDefinition: true, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !137)
!41 = !DISubroutineType(types: !42)
!42 = !{!34, !43, !34}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisContext", file: !4, line: 161, baseType: !45)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisContext", file: !4, line: 140, size: 1664, elements: !46)
!46 = !{!47, !48, !52, !53, !54, !55, !116, !117, !127, !133}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !45, file: !4, line: 141, baseType: !34, size: 32)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "errstr", scope: !45, file: !4, line: 142, baseType: !49, size: 1024, offset: 32)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 1024, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 128)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !45, file: !4, line: 143, baseType: !34, size: 32, offset: 1056)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !45, file: !4, line: 144, baseType: !34, size: 32, offset: 1088)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "obuf", scope: !45, file: !4, line: 145, baseType: !35, size: 64, offset: 1152)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "reader", scope: !45, file: !4, line: 146, baseType: !56, size: 64, offset: 1216)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisReader", file: !58, line: 95, baseType: !59)
!58 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/hiredis/read.h", directory: "/root/.unikraft/apps/redis/build")
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisReader", file: !58, line: 80, size: 4480, elements: !60)
!60 = !{!61, !62, !63, !64, !69, !70, !71, !85, !86, !87, !115}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !59, file: !58, line: 81, baseType: !34, size: 32)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "errstr", scope: !59, file: !58, line: 82, baseType: !49, size: 1024, offset: 32)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !59, file: !58, line: 84, baseType: !35, size: 64, offset: 1088)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !59, file: !58, line: 85, baseType: !65, size: 64, offset: 1152)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !66, line: 40, baseType: !67)
!66 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !68, line: 129, baseType: !10)
!68 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!69 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !59, file: !58, line: 86, baseType: !65, size: 64, offset: 1216)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "maxbuf", scope: !59, file: !58, line: 87, baseType: !65, size: 64, offset: 1280)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "rstack", scope: !59, file: !58, line: 89, baseType: !72, size: 2880, offset: 1344)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 2880, elements: !83)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisReadTask", file: !58, line: 70, baseType: !74)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisReadTask", file: !58, line: 63, size: 320, elements: !75)
!75 = !{!76, !77, !78, !79, !80, !82}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !74, file: !58, line: 64, baseType: !34, size: 32)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !74, file: !58, line: 65, baseType: !34, size: 32, offset: 32)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !74, file: !58, line: 66, baseType: !34, size: 32, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !74, file: !58, line: 67, baseType: !15, size: 64, offset: 128)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !74, file: !58, line: 68, baseType: !81, size: 64, offset: 192)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "privdata", scope: !74, file: !58, line: 69, baseType: !15, size: 64, offset: 256)
!83 = !{!84}
!84 = !DISubrange(count: 9)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "ridx", scope: !59, file: !58, line: 90, baseType: !34, size: 32, offset: 4224)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !59, file: !58, line: 91, baseType: !15, size: 64, offset: 4288)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !59, file: !58, line: 93, baseType: !88, size: 64, offset: 4352)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisReplyObjectFunctions", file: !58, line: 78, baseType: !90)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisReplyObjectFunctions", file: !58, line: 72, size: 320, elements: !91)
!91 = !{!92, !98, !102, !107, !111}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "createString", scope: !90, file: !58, line: 73, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DISubroutineType(types: !95)
!95 = !{!15, !96, !35, !65}
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "createArray", scope: !90, file: !58, line: 74, baseType: !99, size: 64, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DISubroutineType(types: !101)
!101 = !{!15, !96, !34}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "createInteger", scope: !90, file: !58, line: 75, baseType: !103, size: 64, offset: 128)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DISubroutineType(types: !105)
!105 = !{!15, !96, !106}
!106 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "createNil", scope: !90, file: !58, line: 76, baseType: !108, size: 64, offset: 192)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DISubroutineType(types: !110)
!110 = !{!15, !96}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "freeObject", scope: !90, file: !58, line: 77, baseType: !112, size: 64, offset: 256)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DISubroutineType(types: !114)
!114 = !{null, !15}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "privdata", scope: !59, file: !58, line: 94, baseType: !15, size: 64, offset: 4416)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "connection_type", scope: !45, file: !4, line: 148, baseType: !3, size: 32, offset: 1280)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !45, file: !4, line: 149, baseType: !118, size: 64, offset: 1344)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !120, line: 44, size: 128, elements: !121)
!120 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!121 = !{!122, !125}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !119, file: !120, line: 45, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !120, line: 34, baseType: !124)
!124 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !119, file: !120, line: 46, baseType: !126, size: 64, offset: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "suseconds_t", file: !120, line: 39, baseType: !124)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "tcp", scope: !45, file: !4, line: 155, baseType: !128, size: 192, offset: 1408)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !45, file: !4, line: 151, size: 192, elements: !129)
!129 = !{!130, !131, !132}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !128, file: !4, line: 152, baseType: !35, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "source_addr", scope: !128, file: !4, line: 153, baseType: !35, size: 64, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !128, file: !4, line: 154, baseType: !34, size: 32, offset: 128)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "unix_sock", scope: !45, file: !4, line: 159, baseType: !134, size: 64, offset: 1600)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !45, file: !4, line: 157, size: 64, elements: !135)
!135 = !{!136}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !134, file: !4, line: 158, baseType: !35, size: 64)
!137 = !{!138, !139, !140, !141, !142, !143, !151, !152, !153, !154}
!138 = !DILocalVariable(name: "c", arg: 1, scope: !40, file: !1, line: 131, type: !43)
!139 = !DILocalVariable(name: "interval", arg: 2, scope: !40, file: !1, line: 131, type: !34)
!140 = !DILocalVariable(name: "val", scope: !40, file: !1, line: 132, type: !34)
!141 = !DILocalVariable(name: "fd", scope: !40, file: !1, line: 133, type: !34)
!142 = !DILocalVariable(name: "ret", scope: !40, file: !1, line: 135, type: !34)
!143 = !DILocalVariable(name: "tid", scope: !144, file: !1, line: 136, type: !149)
!144 = distinct !DILexicalBlock(scope: !145, file: !1, line: 136, column: 5)
!145 = distinct !DILexicalBlock(scope: !146, file: !1, line: 136, column: 5)
!146 = distinct !DILexicalBlock(scope: !147, file: !1, line: 136, column: 5)
!147 = distinct !DILexicalBlock(scope: !148, file: !1, line: 136, column: 5)
!148 = distinct !DILexicalBlock(scope: !40, file: !1, line: 136, column: 5)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !12, line: 48, baseType: !150)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !14, line: 79, baseType: !5)
!151 = !DILocalVariable(name: "_ret", scope: !144, file: !1, line: 136, type: !11)
!152 = !DILocalVariable(name: "_arg3", scope: !144, file: !1, line: 136, type: !11)
!153 = !DILocalVariable(name: "_arg4", scope: !144, file: !1, line: 136, type: !11)
!154 = !DILocalVariable(name: "_arg5", scope: !144, file: !1, line: 136, type: !11)
!155 = !DILocation(line: 131, column: 34, scope: !40)
!156 = !DILocation(line: 131, column: 41, scope: !40)
!157 = !DILocation(line: 132, column: 5, scope: !40)
!158 = !DILocation(line: 132, column: 9, scope: !40)
!159 = !{!160, !160, i64 0}
!160 = !{!"int", !161, i64 0}
!161 = !{!"omnipotent char", !162, i64 0}
!162 = !{!"Simple C/C++ TBAA"}
!163 = !DILocation(line: 133, column: 17, scope: !40)
!164 = !{!165, !160, i64 132}
!165 = !{!"redisContext", !160, i64 0, !161, i64 4, !160, i64 132, !160, i64 136, !166, i64 144, !166, i64 152, !161, i64 160, !166, i64 168, !167, i64 176, !168, i64 200}
!166 = !{!"any pointer", !161, i64 0}
!167 = !{!"", !166, i64 0, !166, i64 8, !160, i64 16}
!168 = !{!"", !166, i64 0}
!169 = !DILocation(line: 133, column: 9, scope: !40)
!170 = !DILocation(line: 135, column: 5, scope: !40)
!171 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !178)
!172 = distinct !DISubprogram(name: "ukarch_read_sp", scope: !173, file: !173, line: 116, type: !174, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !176)
!173 = !DIFile(filename: "/root/.unikraft/unikraft/arch/x86/x86_64/include/uk/asm/lcpu.h", directory: "/root/.unikraft/apps/redis/build")
!174 = !DISubroutineType(types: !175)
!175 = !{!10}
!176 = !{!177}
!177 = !DILocalVariable(name: "sp", scope: !172, file: !173, line: 118, type: !10)
!178 = distinct !DILocation(line: 136, column: 5, scope: !147)
!179 = !{i32 435586}
!180 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !178)
!181 = !DILocation(line: 136, column: 5, scope: !147)
!182 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !183)
!183 = distinct !DILocation(line: 136, column: 5, scope: !147)
!184 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !183)
!185 = !DILocation(line: 136, column: 5, scope: !148)
!186 = !DILocation(line: 136, column: 5, scope: !187)
!187 = distinct !DILexicalBlock(scope: !147, file: !1, line: 136, column: 5)
!188 = !DILocation(line: 135, column: 9, scope: !40)
!189 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !190)
!190 = distinct !DILocation(line: 49, column: 21, scope: !191, inlinedAt: !197)
!191 = distinct !DISubprogram(name: "uk_thread_get_tid", scope: !192, file: !192, line: 47, type: !193, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !195)
!192 = !DIFile(filename: "/root/.unikraft/unikraft/lib/flexos-core/include/flexos/impl/intelpku-impl.h", directory: "/root/.unikraft/apps/redis/build")
!193 = !DISubroutineType(types: !194)
!194 = !{!34}
!195 = !{!196}
!196 = !DILocalVariable(name: "sp", scope: !191, file: !192, line: 49, type: !10)
!197 = distinct !DILocation(line: 136, column: 5, scope: !144)
!198 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !190)
!199 = !DILocation(line: 49, column: 16, scope: !191, inlinedAt: !197)
!200 = !DILocation(line: 50, column: 19, scope: !191, inlinedAt: !197)
!201 = !DILocation(line: 50, column: 11, scope: !191, inlinedAt: !197)
!202 = !DILocation(line: 50, column: 9, scope: !191, inlinedAt: !197)
!203 = !DILocation(line: 136, column: 5, scope: !144)
!204 = !{i32 -2146237826, i32 -2146237813, i32 -2146237788, i32 -2146237764, i32 -2146237739, i32 -2146237664, i32 -2146237639, i32 -2146237495, i32 -2146237470, i32 -2146234079, i32 -2146233990, i32 -2146233869, i32 -2146233774, i32 -2146233673, i32 -2146233646, i32 -2146233563, i32 -2146233474, i32 -2146233353, i32 -2146233253, i32 -2146233147, i32 -2146233039, i32 -2146237094, i32 -2146237041, i32 -2146237010, i32 -2146236979, i32 -2146236958, i32 -2146236936, i32 -2146236887, i32 -2146236866, i32 -2146236763, i32 -2146236731, i32 -2146232956, i32 -2146232867, i32 -2146232746, i32 -2146232647, i32 -2146232541, i32 -2146232439, i32 -2146232406, i32 -2146232333, i32 -2146232265, i32 -2146236541, i32 -2146236482, i32 -2146236429, i32 -2146236398, i32 -2146236367, i32 -2146236346, i32 -2146236324, i32 -2146236275, i32 -2146236254, i32 -2146232219, i32 -2146232130, i32 -2146232009, i32 -2146231910, i32 -2146231804, i32 -2146231702, i32 -2146231669, i32 -2146231586, i32 -2146231497, i32 -2146231376, i32 -2146231276, i32 -2146231250, i32 -2146231147, i32 -2146231121, i32 -2146235996, i32 -2146235971, i32 -2146235904, i32 -2146235879, i32 -2146235815, i32 -2146235733, i32 -2146235710, i32 -2146235685, i32 -2146235660}
!205 = !DILocation(line: 136, column: 5, scope: !206)
!206 = distinct !DILexicalBlock(scope: !207, file: !1, line: 136, column: 5)
!207 = distinct !DILexicalBlock(scope: !144, file: !1, line: 136, column: 5)
!208 = !{i32 -2146234576, i32 -2146234559}
!209 = !DILocation(line: 138, column: 9, scope: !210)
!210 = distinct !DILexicalBlock(scope: !40, file: !1, line: 138, column: 9)
!211 = !DILocation(line: 138, column: 13, scope: !210)
!212 = !DILocation(line: 138, column: 9, scope: !40)
!213 = !DILocation(line: 139, column: 52, scope: !214)
!214 = distinct !DILexicalBlock(scope: !210, file: !1, line: 138, column: 20)
!215 = !DILocation(line: 139, column: 43, scope: !214)
!216 = !DILocation(line: 139, column: 9, scope: !214)
!217 = !DILocation(line: 140, column: 9, scope: !214)
!218 = !DILocation(line: 143, column: 9, scope: !40)
!219 = !DILocation(line: 179, column: 5, scope: !40)
!220 = !DILocation(line: 0, scope: !40)
!221 = !DILocation(line: 180, column: 1, scope: !40)
!222 = distinct !DISubprogram(name: "redisCheckSocketError", scope: !1, file: !1, line: 250, type: !223, isLocal: false, isDefinition: true, scopeLine: 250, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !225)
!223 = !DISubroutineType(types: !224)
!224 = !{!34, !43}
!225 = !{!226, !227, !228}
!226 = !DILocalVariable(name: "c", arg: 1, scope: !222, file: !1, line: 250, type: !43)
!227 = !DILocalVariable(name: "err", scope: !222, file: !1, line: 251, type: !34)
!228 = !DILocalVariable(name: "errlen", scope: !222, file: !1, line: 252, type: !229)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !18, line: 113, baseType: !230)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32_t", file: !22, line: 129, baseType: !149)
!231 = !DILocalVariable(name: "buf", scope: !232, file: !1, line: 69, type: !49)
!232 = distinct !DISubprogram(name: "__redisSetErrorFromErrno", scope: !1, file: !1, line: 68, type: !233, isLocal: true, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !237)
!233 = !DISubroutineType(types: !234)
!234 = !{null, !43, !34, !235}
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!237 = !{!238, !239, !240, !231, !241}
!238 = !DILocalVariable(name: "c", arg: 1, scope: !232, file: !1, line: 68, type: !43)
!239 = !DILocalVariable(name: "type", arg: 2, scope: !232, file: !1, line: 68, type: !34)
!240 = !DILocalVariable(name: "prefix", arg: 3, scope: !232, file: !1, line: 68, type: !235)
!241 = !DILocalVariable(name: "len", scope: !232, file: !1, line: 70, type: !65)
!242 = !DILocation(line: 69, column: 10, scope: !232, inlinedAt: !243)
!243 = distinct !DILocation(line: 261, column: 9, scope: !244)
!244 = distinct !DILexicalBlock(scope: !245, file: !1, line: 259, column: 14)
!245 = distinct !DILexicalBlock(scope: !222, file: !1, line: 259, column: 9)
!246 = !DILocation(line: 69, column: 10, scope: !232, inlinedAt: !247)
!247 = distinct !DILocation(line: 255, column: 9, scope: !248)
!248 = distinct !DILexicalBlock(scope: !249, file: !1, line: 254, column: 71)
!249 = distinct !DILexicalBlock(scope: !222, file: !1, line: 254, column: 9)
!250 = !DILocation(line: 250, column: 41, scope: !222)
!251 = !DILocation(line: 251, column: 5, scope: !222)
!252 = !DILocation(line: 251, column: 9, scope: !222)
!253 = !DILocation(line: 252, column: 5, scope: !222)
!254 = !DILocation(line: 252, column: 15, scope: !222)
!255 = !DILocation(line: 254, column: 23, scope: !249)
!256 = !DILocation(line: 254, column: 9, scope: !249)
!257 = !DILocation(line: 254, column: 64, scope: !249)
!258 = !DILocation(line: 254, column: 9, scope: !222)
!259 = !DILocation(line: 68, column: 52, scope: !232, inlinedAt: !247)
!260 = !DILocation(line: 68, column: 59, scope: !232, inlinedAt: !247)
!261 = !DILocation(line: 68, column: 77, scope: !232, inlinedAt: !247)
!262 = !DILocation(line: 69, column: 5, scope: !232, inlinedAt: !247)
!263 = !DILocation(line: 70, column: 12, scope: !232, inlinedAt: !247)
!264 = !DILocation(line: 73, column: 15, scope: !265, inlinedAt: !247)
!265 = distinct !DILexicalBlock(scope: !232, file: !1, line: 72, column: 9)
!266 = !DILocation(line: 74, column: 5, scope: !267, inlinedAt: !247)
!267 = distinct !DILexicalBlock(scope: !232, file: !1, line: 74, column: 5)
!268 = !DILocation(line: 73, column: 9, scope: !265, inlinedAt: !247)
!269 = !DILocation(line: 75, column: 5, scope: !232, inlinedAt: !247)
!270 = !DILocation(line: 76, column: 1, scope: !232, inlinedAt: !247)
!271 = !DILocation(line: 256, column: 9, scope: !248)
!272 = !DILocation(line: 259, column: 9, scope: !245)
!273 = !DILocation(line: 259, column: 9, scope: !222)
!274 = !DILocation(line: 260, column: 9, scope: !244)
!275 = !DILocation(line: 260, column: 15, scope: !244)
!276 = !DILocation(line: 68, column: 52, scope: !232, inlinedAt: !243)
!277 = !DILocation(line: 68, column: 59, scope: !232, inlinedAt: !243)
!278 = !DILocation(line: 68, column: 77, scope: !232, inlinedAt: !243)
!279 = !DILocation(line: 69, column: 5, scope: !232, inlinedAt: !243)
!280 = !DILocation(line: 70, column: 12, scope: !232, inlinedAt: !243)
!281 = !DILocation(line: 74, column: 5, scope: !267, inlinedAt: !243)
!282 = !DILocation(line: 75, column: 5, scope: !232, inlinedAt: !243)
!283 = !DILocation(line: 76, column: 1, scope: !232, inlinedAt: !243)
!284 = !DILocation(line: 262, column: 9, scope: !244)
!285 = !DILocation(line: 0, scope: !222)
!286 = !DILocation(line: 266, column: 1, scope: !222)
!287 = distinct !DISubprogram(name: "redisContextSetTimeout", scope: !1, file: !1, line: 268, type: !288, isLocal: false, isDefinition: true, scopeLine: 268, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !291)
!288 = !DISubroutineType(types: !289)
!289 = !{!34, !43, !290}
!290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !119)
!291 = !{!292, !293, !294, !295, !301, !302, !303, !304, !305, !311, !312, !313, !314}
!292 = !DILocalVariable(name: "c", arg: 1, scope: !287, file: !1, line: 268, type: !43)
!293 = !DILocalVariable(name: "tv", arg: 2, scope: !287, file: !1, line: 268, type: !290)
!294 = !DILocalVariable(name: "ret", scope: !287, file: !1, line: 269, type: !34)
!295 = !DILocalVariable(name: "tid", scope: !296, file: !1, line: 270, type: !149)
!296 = distinct !DILexicalBlock(scope: !297, file: !1, line: 270, column: 5)
!297 = distinct !DILexicalBlock(scope: !298, file: !1, line: 270, column: 5)
!298 = distinct !DILexicalBlock(scope: !299, file: !1, line: 270, column: 5)
!299 = distinct !DILexicalBlock(scope: !300, file: !1, line: 270, column: 5)
!300 = distinct !DILexicalBlock(scope: !287, file: !1, line: 270, column: 5)
!301 = !DILocalVariable(name: "_ret", scope: !296, file: !1, line: 270, type: !11)
!302 = !DILocalVariable(name: "_arg3", scope: !296, file: !1, line: 270, type: !11)
!303 = !DILocalVariable(name: "_arg4", scope: !296, file: !1, line: 270, type: !11)
!304 = !DILocalVariable(name: "_arg5", scope: !296, file: !1, line: 270, type: !11)
!305 = !DILocalVariable(name: "tid", scope: !306, file: !1, line: 276, type: !149)
!306 = distinct !DILexicalBlock(scope: !307, file: !1, line: 276, column: 5)
!307 = distinct !DILexicalBlock(scope: !308, file: !1, line: 276, column: 5)
!308 = distinct !DILexicalBlock(scope: !309, file: !1, line: 276, column: 5)
!309 = distinct !DILexicalBlock(scope: !310, file: !1, line: 276, column: 5)
!310 = distinct !DILexicalBlock(scope: !287, file: !1, line: 276, column: 5)
!311 = !DILocalVariable(name: "_ret", scope: !306, file: !1, line: 276, type: !11)
!312 = !DILocalVariable(name: "_arg3", scope: !306, file: !1, line: 276, type: !11)
!313 = !DILocalVariable(name: "_arg4", scope: !306, file: !1, line: 276, type: !11)
!314 = !DILocalVariable(name: "_arg5", scope: !306, file: !1, line: 276, type: !11)
!315 = !DILocation(line: 69, column: 10, scope: !232, inlinedAt: !316)
!316 = distinct !DILocation(line: 279, column: 9, scope: !317)
!317 = distinct !DILexicalBlock(scope: !318, file: !1, line: 278, column: 20)
!318 = distinct !DILexicalBlock(scope: !287, file: !1, line: 278, column: 9)
!319 = !DILocation(line: 69, column: 10, scope: !232, inlinedAt: !320)
!320 = distinct !DILocation(line: 273, column: 9, scope: !321)
!321 = distinct !DILexicalBlock(scope: !322, file: !1, line: 272, column: 20)
!322 = distinct !DILexicalBlock(scope: !287, file: !1, line: 272, column: 9)
!323 = !DILocation(line: 268, column: 42, scope: !287)
!324 = !DILocation(line: 269, column: 5, scope: !287)
!325 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !326)
!326 = distinct !DILocation(line: 270, column: 5, scope: !299)
!327 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !326)
!328 = !DILocation(line: 270, column: 5, scope: !299)
!329 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !330)
!330 = distinct !DILocation(line: 270, column: 5, scope: !299)
!331 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !330)
!332 = !DILocation(line: 270, column: 5, scope: !300)
!333 = !DILocation(line: 270, column: 5, scope: !334)
!334 = distinct !DILexicalBlock(scope: !299, file: !1, line: 270, column: 5)
!335 = !DILocation(line: 269, column: 9, scope: !287)
!336 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !337)
!337 = distinct !DILocation(line: 49, column: 21, scope: !191, inlinedAt: !338)
!338 = distinct !DILocation(line: 270, column: 5, scope: !296)
!339 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !337)
!340 = !DILocation(line: 49, column: 16, scope: !191, inlinedAt: !338)
!341 = !DILocation(line: 50, column: 19, scope: !191, inlinedAt: !338)
!342 = !DILocation(line: 50, column: 11, scope: !191, inlinedAt: !338)
!343 = !DILocation(line: 50, column: 9, scope: !191, inlinedAt: !338)
!344 = !DILocation(line: 270, column: 5, scope: !296)
!345 = !{i32 -2146219088, i32 -2146219075, i32 -2146219050, i32 -2146219026, i32 -2146219001, i32 -2146218926, i32 -2146218901, i32 -2146218757, i32 -2146218732, i32 -2146215340, i32 -2146215251, i32 -2146215130, i32 -2146215035, i32 -2146214934, i32 -2146214907, i32 -2146214824, i32 -2146214735, i32 -2146214614, i32 -2146214514, i32 -2146214408, i32 -2146214300, i32 -2146218356, i32 -2146218303, i32 -2146218272, i32 -2146218241, i32 -2146218220, i32 -2146218198, i32 -2146218149, i32 -2146218128, i32 -2146218025, i32 -2146217993, i32 -2146214217, i32 -2146214128, i32 -2146214007, i32 -2146213908, i32 -2146213802, i32 -2146213700, i32 -2146213667, i32 -2146213594, i32 -2146213526, i32 -2146217803, i32 -2146217744, i32 -2146217691, i32 -2146217660, i32 -2146217629, i32 -2146217608, i32 -2146217586, i32 -2146217537, i32 -2146217516, i32 -2146213480, i32 -2146213391, i32 -2146213270, i32 -2146213171, i32 -2146213065, i32 -2146212963, i32 -2146212930, i32 -2146212847, i32 -2146212758, i32 -2146212637, i32 -2146212537, i32 -2146212511, i32 -2146212408, i32 -2146212382, i32 -2146217258, i32 -2146217233, i32 -2146217166, i32 -2146217141, i32 -2146217077, i32 -2146216995, i32 -2146216972, i32 -2146216947, i32 -2146216922}
!346 = !DILocation(line: 270, column: 5, scope: !347)
!347 = distinct !DILexicalBlock(scope: !348, file: !1, line: 270, column: 5)
!348 = distinct !DILexicalBlock(scope: !296, file: !1, line: 270, column: 5)
!349 = !{i32 -2146215838, i32 -2146215821}
!350 = !DILocation(line: 272, column: 9, scope: !322)
!351 = !DILocation(line: 272, column: 13, scope: !322)
!352 = !DILocation(line: 272, column: 9, scope: !287)
!353 = !DILocation(line: 68, column: 52, scope: !232, inlinedAt: !320)
!354 = !DILocation(line: 68, column: 59, scope: !232, inlinedAt: !320)
!355 = !DILocation(line: 68, column: 77, scope: !232, inlinedAt: !320)
!356 = !DILocation(line: 69, column: 5, scope: !232, inlinedAt: !320)
!357 = !DILocation(line: 70, column: 12, scope: !232, inlinedAt: !320)
!358 = !DILocation(line: 73, column: 15, scope: !265, inlinedAt: !320)
!359 = !DILocation(line: 74, column: 5, scope: !267, inlinedAt: !320)
!360 = !DILocation(line: 73, column: 9, scope: !265, inlinedAt: !320)
!361 = !DILocation(line: 75, column: 5, scope: !232, inlinedAt: !320)
!362 = !DILocation(line: 76, column: 1, scope: !232, inlinedAt: !320)
!363 = !DILocation(line: 274, column: 9, scope: !321)
!364 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !365)
!365 = distinct !DILocation(line: 276, column: 5, scope: !309)
!366 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !365)
!367 = !DILocation(line: 276, column: 5, scope: !309)
!368 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !369)
!369 = distinct !DILocation(line: 276, column: 5, scope: !309)
!370 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !369)
!371 = !DILocation(line: 276, column: 5, scope: !310)
!372 = !DILocation(line: 276, column: 5, scope: !373)
!373 = distinct !DILexicalBlock(scope: !309, file: !1, line: 276, column: 5)
!374 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !375)
!375 = distinct !DILocation(line: 49, column: 21, scope: !191, inlinedAt: !376)
!376 = distinct !DILocation(line: 276, column: 5, scope: !306)
!377 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !375)
!378 = !DILocation(line: 49, column: 16, scope: !191, inlinedAt: !376)
!379 = !DILocation(line: 50, column: 19, scope: !191, inlinedAt: !376)
!380 = !DILocation(line: 50, column: 11, scope: !191, inlinedAt: !376)
!381 = !DILocation(line: 50, column: 9, scope: !191, inlinedAt: !376)
!382 = !DILocation(line: 276, column: 5, scope: !306)
!383 = !{i32 -2146209828, i32 -2146209815, i32 -2146209790, i32 -2146209766, i32 -2146209741, i32 -2146209666, i32 -2146209641, i32 -2146209497, i32 -2146209472, i32 -2146206080, i32 -2146205991, i32 -2146205870, i32 -2146205775, i32 -2146205674, i32 -2146205647, i32 -2146205564, i32 -2146205475, i32 -2146205354, i32 -2146205254, i32 -2146205148, i32 -2146205040, i32 -2146209096, i32 -2146209043, i32 -2146209012, i32 -2146208981, i32 -2146208960, i32 -2146208938, i32 -2146208889, i32 -2146208868, i32 -2146208765, i32 -2146208733, i32 -2146204957, i32 -2146204868, i32 -2146204747, i32 -2146204648, i32 -2146204542, i32 -2146204440, i32 -2146204407, i32 -2146204334, i32 -2146204266, i32 -2146208543, i32 -2146208484, i32 -2146208431, i32 -2146208400, i32 -2146208369, i32 -2146208348, i32 -2146208326, i32 -2146208277, i32 -2146208256, i32 -2146204220, i32 -2146204131, i32 -2146204010, i32 -2146203911, i32 -2146203805, i32 -2146203703, i32 -2146203670, i32 -2146203587, i32 -2146203498, i32 -2146203377, i32 -2146203277, i32 -2146203251, i32 -2146203148, i32 -2146203122, i32 -2146207998, i32 -2146207973, i32 -2146207906, i32 -2146207881, i32 -2146207817, i32 -2146207735, i32 -2146207712, i32 -2146207687, i32 -2146207662}
!384 = !DILocation(line: 276, column: 5, scope: !385)
!385 = distinct !DILexicalBlock(scope: !386, file: !1, line: 276, column: 5)
!386 = distinct !DILexicalBlock(scope: !306, file: !1, line: 276, column: 5)
!387 = !{i32 -2146206578, i32 -2146206561}
!388 = !DILocation(line: 278, column: 9, scope: !318)
!389 = !DILocation(line: 278, column: 13, scope: !318)
!390 = !DILocation(line: 278, column: 9, scope: !287)
!391 = !DILocation(line: 68, column: 52, scope: !232, inlinedAt: !316)
!392 = !DILocation(line: 68, column: 59, scope: !232, inlinedAt: !316)
!393 = !DILocation(line: 68, column: 77, scope: !232, inlinedAt: !316)
!394 = !DILocation(line: 69, column: 5, scope: !232, inlinedAt: !316)
!395 = !DILocation(line: 70, column: 12, scope: !232, inlinedAt: !316)
!396 = !DILocation(line: 73, column: 15, scope: !265, inlinedAt: !316)
!397 = !DILocation(line: 74, column: 5, scope: !267, inlinedAt: !316)
!398 = !DILocation(line: 73, column: 9, scope: !265, inlinedAt: !316)
!399 = !DILocation(line: 75, column: 5, scope: !232, inlinedAt: !316)
!400 = !DILocation(line: 76, column: 1, scope: !232, inlinedAt: !316)
!401 = !DILocation(line: 280, column: 9, scope: !317)
!402 = !DILocation(line: 0, scope: !287)
!403 = !DILocation(line: 283, column: 1, scope: !287)
!404 = distinct !DISubprogram(name: "redisContextConnectTcp", scope: !1, file: !1, line: 448, type: !405, isLocal: false, isDefinition: true, scopeLine: 449, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !408)
!405 = !DISubroutineType(types: !406)
!406 = !{!34, !43, !235, !34, !407}
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!408 = !{!409, !410, !411, !412}
!409 = !DILocalVariable(name: "c", arg: 1, scope: !404, file: !1, line: 448, type: !43)
!410 = !DILocalVariable(name: "addr", arg: 2, scope: !404, file: !1, line: 448, type: !235)
!411 = !DILocalVariable(name: "port", arg: 3, scope: !404, file: !1, line: 448, type: !34)
!412 = !DILocalVariable(name: "timeout", arg: 4, scope: !404, file: !1, line: 449, type: !407)
!413 = !DILocation(line: 448, column: 42, scope: !404)
!414 = !DILocation(line: 448, column: 57, scope: !404)
!415 = !DILocation(line: 448, column: 67, scope: !404)
!416 = !DILocation(line: 449, column: 50, scope: !404)
!417 = !DILocation(line: 450, column: 12, scope: !404)
!418 = !DILocation(line: 450, column: 5, scope: !404)
!419 = distinct !DISubprogram(name: "_redisContextConnectTcp", scope: !1, file: !1, line: 285, type: !420, isLocal: true, isDefinition: true, scopeLine: 287, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !422)
!420 = !DISubroutineType(types: !421)
!421 = !{!34, !43, !235, !34, !407, !235}
!422 = !{!423, !424, !425, !426, !427, !428, !429, !430, !431, !435, !448, !449, !450, !451, !452, !453, !454, !455, !456, !462, !463, !464, !465, !473, !474, !475, !476, !485, !486, !487, !490, !496, !497, !498, !499, !502, !505, !511, !512, !513, !514, !515, !518}
!423 = !DILocalVariable(name: "c", arg: 1, scope: !419, file: !1, line: 285, type: !43)
!424 = !DILocalVariable(name: "addr", arg: 2, scope: !419, file: !1, line: 285, type: !235)
!425 = !DILocalVariable(name: "port", arg: 3, scope: !419, file: !1, line: 285, type: !34)
!426 = !DILocalVariable(name: "timeout", arg: 4, scope: !419, file: !1, line: 286, type: !407)
!427 = !DILocalVariable(name: "source_addr", arg: 5, scope: !419, file: !1, line: 287, type: !235)
!428 = !DILocalVariable(name: "s", scope: !419, file: !1, line: 288, type: !34)
!429 = !DILocalVariable(name: "rv", scope: !419, file: !1, line: 288, type: !34)
!430 = !DILocalVariable(name: "n", scope: !419, file: !1, line: 288, type: !34)
!431 = !DILocalVariable(name: "_port", scope: !419, file: !1, line: 289, type: !432)
!432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 48, elements: !433)
!433 = !{!434}
!434 = !DISubrange(count: 6)
!435 = !DILocalVariable(name: "hints", scope: !419, file: !1, line: 290, type: !436)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "addrinfo", file: !437, line: 103, size: 384, elements: !438)
!437 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/netdb.h", directory: "/root/.unikraft/apps/redis/build")
!438 = !{!439, !440, !441, !442, !443, !444, !445, !446}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "ai_flags", scope: !436, file: !437, line: 104, baseType: !34, size: 32)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "ai_family", scope: !436, file: !437, line: 105, baseType: !34, size: 32, offset: 32)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "ai_socktype", scope: !436, file: !437, line: 106, baseType: !34, size: 32, offset: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "ai_protocol", scope: !436, file: !437, line: 107, baseType: !34, size: 32, offset: 96)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "ai_addrlen", scope: !436, file: !437, line: 108, baseType: !229, size: 32, offset: 128)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "ai_addr", scope: !436, file: !437, line: 109, baseType: !16, size: 64, offset: 192)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "ai_canonname", scope: !436, file: !437, line: 110, baseType: !35, size: 64, offset: 256)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "ai_next", scope: !436, file: !437, line: 111, baseType: !447, size: 64, offset: 320)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!448 = !DILocalVariable(name: "servinfo", scope: !419, file: !1, line: 290, type: !447)
!449 = !DILocalVariable(name: "bservinfo", scope: !419, file: !1, line: 290, type: !447)
!450 = !DILocalVariable(name: "p", scope: !419, file: !1, line: 290, type: !447)
!451 = !DILocalVariable(name: "b", scope: !419, file: !1, line: 290, type: !447)
!452 = !DILocalVariable(name: "blocking", scope: !419, file: !1, line: 291, type: !34)
!453 = !DILocalVariable(name: "reuseaddr", scope: !419, file: !1, line: 292, type: !34)
!454 = !DILocalVariable(name: "reuses", scope: !419, file: !1, line: 293, type: !34)
!455 = !DILocalVariable(name: "timeout_msec", scope: !419, file: !1, line: 294, type: !124)
!456 = !DILocalVariable(name: "tid", scope: !457, file: !1, line: 350, type: !149)
!457 = distinct !DILexicalBlock(scope: !458, file: !1, line: 350, column: 5)
!458 = distinct !DILexicalBlock(scope: !459, file: !1, line: 350, column: 5)
!459 = distinct !DILexicalBlock(scope: !460, file: !1, line: 350, column: 5)
!460 = distinct !DILexicalBlock(scope: !461, file: !1, line: 350, column: 5)
!461 = distinct !DILexicalBlock(scope: !419, file: !1, line: 350, column: 5)
!462 = !DILocalVariable(name: "_ret", scope: !457, file: !1, line: 350, type: !11)
!463 = !DILocalVariable(name: "_arg3", scope: !457, file: !1, line: 350, type: !11)
!464 = !DILocalVariable(name: "_arg4", scope: !457, file: !1, line: 350, type: !11)
!465 = !DILocalVariable(name: "tid", scope: !466, file: !1, line: 354, type: !149)
!466 = distinct !DILexicalBlock(scope: !467, file: !1, line: 354, column: 10)
!467 = distinct !DILexicalBlock(scope: !468, file: !1, line: 354, column: 10)
!468 = distinct !DILexicalBlock(scope: !469, file: !1, line: 354, column: 10)
!469 = distinct !DILexicalBlock(scope: !470, file: !1, line: 354, column: 10)
!470 = distinct !DILexicalBlock(scope: !471, file: !1, line: 354, column: 10)
!471 = distinct !DILexicalBlock(scope: !472, file: !1, line: 352, column: 18)
!472 = distinct !DILexicalBlock(scope: !419, file: !1, line: 352, column: 9)
!473 = !DILocalVariable(name: "_ret", scope: !466, file: !1, line: 354, type: !11)
!474 = !DILocalVariable(name: "_arg3", scope: !466, file: !1, line: 354, type: !11)
!475 = !DILocalVariable(name: "_arg4", scope: !466, file: !1, line: 354, type: !11)
!476 = !DILocalVariable(name: "tid", scope: !477, file: !1, line: 363, type: !149)
!477 = distinct !DILexicalBlock(scope: !478, file: !1, line: 363, column: 9)
!478 = distinct !DILexicalBlock(scope: !479, file: !1, line: 363, column: 9)
!479 = distinct !DILexicalBlock(scope: !480, file: !1, line: 363, column: 9)
!480 = distinct !DILexicalBlock(scope: !481, file: !1, line: 363, column: 9)
!481 = distinct !DILexicalBlock(scope: !482, file: !1, line: 363, column: 9)
!482 = distinct !DILexicalBlock(scope: !483, file: !1, line: 361, column: 51)
!483 = distinct !DILexicalBlock(scope: !484, file: !1, line: 361, column: 5)
!484 = distinct !DILexicalBlock(scope: !419, file: !1, line: 361, column: 5)
!485 = !DILocalVariable(name: "_ret", scope: !477, file: !1, line: 363, type: !11)
!486 = !DILocalVariable(name: "_arg3", scope: !477, file: !1, line: 363, type: !11)
!487 = !DILocalVariable(name: "bound", scope: !488, file: !1, line: 372, type: !34)
!488 = distinct !DILexicalBlock(scope: !489, file: !1, line: 371, column: 33)
!489 = distinct !DILexicalBlock(scope: !482, file: !1, line: 371, column: 13)
!490 = !DILocalVariable(name: "tid", scope: !491, file: !1, line: 374, type: !149)
!491 = distinct !DILexicalBlock(scope: !492, file: !1, line: 374, column: 13)
!492 = distinct !DILexicalBlock(scope: !493, file: !1, line: 374, column: 13)
!493 = distinct !DILexicalBlock(scope: !494, file: !1, line: 374, column: 13)
!494 = distinct !DILexicalBlock(scope: !495, file: !1, line: 374, column: 13)
!495 = distinct !DILexicalBlock(scope: !488, file: !1, line: 374, column: 13)
!496 = !DILocalVariable(name: "_ret", scope: !491, file: !1, line: 374, type: !11)
!497 = !DILocalVariable(name: "_arg3", scope: !491, file: !1, line: 374, type: !11)
!498 = !DILocalVariable(name: "_arg4", scope: !491, file: !1, line: 374, type: !11)
!499 = !DILocalVariable(name: "buf", scope: !500, file: !1, line: 377, type: !49)
!500 = distinct !DILexicalBlock(scope: !501, file: !1, line: 376, column: 26)
!501 = distinct !DILexicalBlock(scope: !488, file: !1, line: 376, column: 17)
!502 = !DILocalVariable(name: "ret", scope: !503, file: !1, line: 384, type: !34)
!503 = distinct !DILexicalBlock(scope: !504, file: !1, line: 383, column: 28)
!504 = distinct !DILexicalBlock(scope: !488, file: !1, line: 383, column: 17)
!505 = !DILocalVariable(name: "tid", scope: !506, file: !1, line: 386, type: !149)
!506 = distinct !DILexicalBlock(scope: !507, file: !1, line: 386, column: 17)
!507 = distinct !DILexicalBlock(scope: !508, file: !1, line: 386, column: 17)
!508 = distinct !DILexicalBlock(scope: !509, file: !1, line: 386, column: 17)
!509 = distinct !DILexicalBlock(scope: !510, file: !1, line: 386, column: 17)
!510 = distinct !DILexicalBlock(scope: !503, file: !1, line: 386, column: 17)
!511 = !DILocalVariable(name: "_ret", scope: !506, file: !1, line: 386, type: !11)
!512 = !DILocalVariable(name: "_arg3", scope: !506, file: !1, line: 386, type: !11)
!513 = !DILocalVariable(name: "_arg4", scope: !506, file: !1, line: 386, type: !11)
!514 = !DILocalVariable(name: "_arg5", scope: !506, file: !1, line: 386, type: !11)
!515 = !DILocalVariable(name: "buf", scope: !516, file: !1, line: 401, type: !49)
!516 = distinct !DILexicalBlock(scope: !517, file: !1, line: 400, column: 25)
!517 = distinct !DILexicalBlock(scope: !488, file: !1, line: 400, column: 17)
!518 = !DILocalVariable(name: "buf", scope: !519, file: !1, line: 435, type: !49)
!519 = distinct !DILexicalBlock(scope: !520, file: !1, line: 434, column: 20)
!520 = distinct !DILexicalBlock(scope: !419, file: !1, line: 434, column: 9)
!521 = !DILocation(line: 69, column: 10, scope: !232, inlinedAt: !522)
!522 = distinct !DILocation(line: 187, column: 9, scope: !523, inlinedAt: !540)
!523 = distinct !DILexicalBlock(scope: !524, file: !1, line: 186, column: 20)
!524 = distinct !DILexicalBlock(scope: !525, file: !1, line: 186, column: 9)
!525 = distinct !DISubprogram(name: "redisSetTcpNoDelay", scope: !1, file: !1, line: 182, type: !223, isLocal: true, isDefinition: true, scopeLine: 182, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !526)
!526 = !{!527, !528, !529, !530, !536, !537, !538, !539}
!527 = !DILocalVariable(name: "c", arg: 1, scope: !525, file: !1, line: 182, type: !43)
!528 = !DILocalVariable(name: "yes", scope: !525, file: !1, line: 183, type: !34)
!529 = !DILocalVariable(name: "ret", scope: !525, file: !1, line: 183, type: !34)
!530 = !DILocalVariable(name: "tid", scope: !531, file: !1, line: 184, type: !149)
!531 = distinct !DILexicalBlock(scope: !532, file: !1, line: 184, column: 5)
!532 = distinct !DILexicalBlock(scope: !533, file: !1, line: 184, column: 5)
!533 = distinct !DILexicalBlock(scope: !534, file: !1, line: 184, column: 5)
!534 = distinct !DILexicalBlock(scope: !535, file: !1, line: 184, column: 5)
!535 = distinct !DILexicalBlock(scope: !525, file: !1, line: 184, column: 5)
!536 = !DILocalVariable(name: "_ret", scope: !531, file: !1, line: 184, type: !11)
!537 = !DILocalVariable(name: "_arg3", scope: !531, file: !1, line: 184, type: !11)
!538 = !DILocalVariable(name: "_arg4", scope: !531, file: !1, line: 184, type: !11)
!539 = !DILocalVariable(name: "_arg5", scope: !531, file: !1, line: 184, type: !11)
!540 = distinct !DILocation(line: 427, column: 13, scope: !541)
!541 = distinct !DILexicalBlock(scope: !482, file: !1, line: 427, column: 13)
!542 = !DILocation(line: 285, column: 50, scope: !419)
!543 = !DILocation(line: 285, column: 65, scope: !419)
!544 = !DILocation(line: 285, column: 75, scope: !419)
!545 = !DILocation(line: 286, column: 58, scope: !419)
!546 = !DILocation(line: 287, column: 48, scope: !419)
!547 = !DILocation(line: 288, column: 5, scope: !419)
!548 = !DILocation(line: 289, column: 5, scope: !419)
!549 = !DILocation(line: 289, column: 10, scope: !419)
!550 = !DILocation(line: 290, column: 5, scope: !419)
!551 = !DILocation(line: 291, column: 24, scope: !419)
!552 = !{!165, !160, i64 136}
!553 = !DILocation(line: 291, column: 30, scope: !419)
!554 = !DILocation(line: 291, column: 9, scope: !419)
!555 = !DILocation(line: 292, column: 31, scope: !419)
!556 = !DILocation(line: 292, column: 9, scope: !419)
!557 = !DILocation(line: 293, column: 9, scope: !419)
!558 = !DILocation(line: 294, column: 10, scope: !419)
!559 = !DILocation(line: 290, column: 29, scope: !419)
!560 = !DILocation(line: 296, column: 14, scope: !419)
!561 = !{!166, !166, i64 0}
!562 = !DILocation(line: 297, column: 8, scope: !419)
!563 = !DILocation(line: 297, column: 24, scope: !419)
!564 = !{!165, !161, i64 160}
!565 = !DILocation(line: 298, column: 12, scope: !419)
!566 = !DILocation(line: 298, column: 17, scope: !419)
!567 = !{!165, !160, i64 192}
!568 = !DILocation(line: 307, column: 16, scope: !569)
!569 = distinct !DILexicalBlock(scope: !419, file: !1, line: 307, column: 9)
!570 = !{!165, !166, i64 176}
!571 = !DILocation(line: 307, column: 21, scope: !569)
!572 = !DILocation(line: 307, column: 9, scope: !419)
!573 = !DILocation(line: 308, column: 13, scope: !574)
!574 = distinct !DILexicalBlock(scope: !575, file: !1, line: 308, column: 13)
!575 = distinct !DILexicalBlock(scope: !569, file: !1, line: 307, column: 30)
!576 = !DILocation(line: 308, column: 13, scope: !575)
!577 = !DILocation(line: 309, column: 13, scope: !574)
!578 = !DILocation(line: 311, column: 23, scope: !575)
!579 = !DILocation(line: 311, column: 21, scope: !575)
!580 = !DILocation(line: 312, column: 5, scope: !575)
!581 = !DILocation(line: 314, column: 9, scope: !582)
!582 = distinct !DILexicalBlock(scope: !419, file: !1, line: 314, column: 9)
!583 = !DILocation(line: 0, scope: !584)
!584 = distinct !DILexicalBlock(scope: !585, file: !1, line: 322, column: 13)
!585 = distinct !DILexicalBlock(scope: !582, file: !1, line: 321, column: 12)
!586 = !{!165, !166, i64 168}
!587 = !DILocation(line: 314, column: 9, scope: !419)
!588 = !DILocation(line: 315, column: 24, scope: !589)
!589 = distinct !DILexicalBlock(scope: !590, file: !1, line: 315, column: 13)
!590 = distinct !DILexicalBlock(scope: !582, file: !1, line: 314, column: 18)
!591 = !DILocation(line: 315, column: 13, scope: !590)
!592 = !DILocation(line: 316, column: 28, scope: !593)
!593 = distinct !DILexicalBlock(scope: !594, file: !1, line: 316, column: 17)
!594 = distinct !DILexicalBlock(scope: !589, file: !1, line: 315, column: 36)
!595 = !DILocation(line: 316, column: 17, scope: !594)
!596 = !DILocation(line: 317, column: 30, scope: !593)
!597 = !DILocation(line: 317, column: 28, scope: !593)
!598 = !DILocation(line: 317, column: 17, scope: !593)
!599 = !DILocation(line: 322, column: 13, scope: !584)
!600 = !DILocation(line: 322, column: 13, scope: !585)
!601 = !DILocation(line: 323, column: 13, scope: !584)
!602 = !DILocation(line: 324, column: 20, scope: !585)
!603 = !DILocalVariable(name: "c", arg: 1, scope: !604, file: !1, line: 196, type: !43)
!604 = distinct !DISubprogram(name: "redisContextTimeoutMsec", scope: !1, file: !1, line: 196, type: !605, isLocal: true, isDefinition: true, scopeLine: 197, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !608)
!605 = !DISubroutineType(types: !606)
!606 = !{!34, !43, !607}
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!608 = !{!603, !609, !610, !611}
!609 = !DILocalVariable(name: "result", arg: 2, scope: !604, file: !1, line: 196, type: !607)
!610 = !DILocalVariable(name: "timeout", scope: !604, file: !1, line: 198, type: !407)
!611 = !DILocalVariable(name: "msec", scope: !604, file: !1, line: 199, type: !124)
!612 = !DILocation(line: 196, column: 50, scope: !604, inlinedAt: !613)
!613 = distinct !DILocation(line: 327, column: 9, scope: !614)
!614 = distinct !DILexicalBlock(scope: !419, file: !1, line: 327, column: 9)
!615 = !DILocation(line: 198, column: 27, scope: !604, inlinedAt: !613)
!616 = !DILocation(line: 199, column: 10, scope: !604, inlinedAt: !613)
!617 = !DILocation(line: 202, column: 9, scope: !604, inlinedAt: !613)
!618 = !DILocation(line: 319, column: 23, scope: !594)
!619 = !DILocation(line: 319, column: 32, scope: !594)
!620 = !DILocation(line: 319, column: 13, scope: !594)
!621 = !DILocation(line: 198, column: 40, scope: !604, inlinedAt: !613)
!622 = !DILocation(line: 202, column: 17, scope: !623, inlinedAt: !613)
!623 = distinct !DILexicalBlock(scope: !604, file: !1, line: 202, column: 9)
!624 = !DILocation(line: 203, column: 22, scope: !625, inlinedAt: !613)
!625 = distinct !DILexicalBlock(scope: !626, file: !1, line: 203, column: 13)
!626 = distinct !DILexicalBlock(scope: !623, file: !1, line: 202, column: 26)
!627 = !{!628, !629, i64 8}
!628 = !{!"timeval", !629, i64 0, !629, i64 8}
!629 = !{!"long", !161, i64 0}
!630 = !DILocation(line: 203, column: 30, scope: !625, inlinedAt: !613)
!631 = !DILocation(line: 203, column: 40, scope: !625, inlinedAt: !613)
!632 = !DILocation(line: 203, column: 52, scope: !625, inlinedAt: !613)
!633 = !{!628, !629, i64 0}
!634 = !DILocation(line: 203, column: 59, scope: !625, inlinedAt: !613)
!635 = !DILocation(line: 203, column: 13, scope: !626, inlinedAt: !613)
!636 = !DILocation(line: 208, column: 33, scope: !626, inlinedAt: !613)
!637 = !DILocation(line: 208, column: 62, scope: !626, inlinedAt: !613)
!638 = !DILocation(line: 208, column: 69, scope: !626, inlinedAt: !613)
!639 = !DILocation(line: 208, column: 41, scope: !626, inlinedAt: !613)
!640 = !DILocation(line: 210, column: 22, scope: !641, inlinedAt: !613)
!641 = distinct !DILexicalBlock(scope: !626, file: !1, line: 210, column: 13)
!642 = !DILocation(line: 328, column: 9, scope: !643)
!643 = distinct !DILexicalBlock(scope: !614, file: !1, line: 327, column: 64)
!644 = !DILocation(line: 329, column: 9, scope: !643)
!645 = !DILocation(line: 332, column: 21, scope: !646)
!646 = distinct !DILexicalBlock(scope: !419, file: !1, line: 332, column: 9)
!647 = !DILocation(line: 0, scope: !648)
!648 = distinct !DILexicalBlock(scope: !646, file: !1, line: 335, column: 16)
!649 = !{!165, !166, i64 184}
!650 = !DILocation(line: 332, column: 9, scope: !419)
!651 = !DILocation(line: 333, column: 9, scope: !652)
!652 = distinct !DILexicalBlock(scope: !646, file: !1, line: 332, column: 30)
!653 = !DILocation(line: 335, column: 5, scope: !652)
!654 = !DILocation(line: 335, column: 35, scope: !648)
!655 = !DILocation(line: 335, column: 16, scope: !646)
!656 = !DILocation(line: 336, column: 9, scope: !657)
!657 = distinct !DILexicalBlock(scope: !648, file: !1, line: 335, column: 51)
!658 = !DILocation(line: 337, column: 30, scope: !657)
!659 = !DILocation(line: 338, column: 5, scope: !657)
!660 = !DILocation(line: 0, scope: !652)
!661 = !DILocation(line: 340, column: 5, scope: !419)
!662 = !DILocation(line: 341, column: 5, scope: !419)
!663 = !DILocation(line: 342, column: 11, scope: !419)
!664 = !DILocation(line: 342, column: 21, scope: !419)
!665 = !{!666, !160, i64 4}
!666 = !{!"addrinfo", !160, i64 0, !160, i64 4, !160, i64 8, !160, i64 12, !160, i64 16, !166, i64 24, !166, i64 32, !166, i64 40}
!667 = !DILocation(line: 343, column: 11, scope: !419)
!668 = !DILocation(line: 343, column: 23, scope: !419)
!669 = !{!666, !160, i64 8}
!670 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !671)
!671 = distinct !DILocation(line: 350, column: 5, scope: !460)
!672 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !671)
!673 = !DILocation(line: 350, column: 5, scope: !460)
!674 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !675)
!675 = distinct !DILocation(line: 350, column: 5, scope: !460)
!676 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !675)
!677 = !DILocation(line: 350, column: 5, scope: !461)
!678 = !DILocation(line: 350, column: 5, scope: !679)
!679 = distinct !DILexicalBlock(scope: !460, file: !1, line: 350, column: 5)
!680 = !DILocation(line: 290, column: 21, scope: !419)
!681 = !DILocation(line: 288, column: 12, scope: !419)
!682 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !683)
!683 = distinct !DILocation(line: 49, column: 21, scope: !191, inlinedAt: !684)
!684 = distinct !DILocation(line: 350, column: 5, scope: !457)
!685 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !683)
!686 = !DILocation(line: 49, column: 16, scope: !191, inlinedAt: !684)
!687 = !DILocation(line: 50, column: 19, scope: !191, inlinedAt: !684)
!688 = !DILocation(line: 50, column: 11, scope: !191, inlinedAt: !684)
!689 = !DILocation(line: 50, column: 9, scope: !191, inlinedAt: !684)
!690 = !DILocation(line: 350, column: 5, scope: !457)
!691 = !{i32 -2146200514, i32 -2146200501, i32 -2146200476, i32 -2146200452, i32 -2146200427, i32 -2146200352, i32 -2146200327, i32 -2146200183, i32 -2146200158, i32 -2146196846, i32 -2146196757, i32 -2146196636, i32 -2146196541, i32 -2146196440, i32 -2146196413, i32 -2146196330, i32 -2146196241, i32 -2146196120, i32 -2146196020, i32 -2146195914, i32 -2146195806, i32 -2146199821, i32 -2146199768, i32 -2146199737, i32 -2146199706, i32 -2146199685, i32 -2146199663, i32 -2146199614, i32 -2146199593, i32 -2146199490, i32 -2146199458, i32 -2146195723, i32 -2146195634, i32 -2146195513, i32 -2146195414, i32 -2146195308, i32 -2146195206, i32 -2146195173, i32 -2146195100, i32 -2146195032, i32 -2146199268, i32 -2146199209, i32 -2146199156, i32 -2146199125, i32 -2146199094, i32 -2146199073, i32 -2146199051, i32 -2146199002, i32 -2146198981, i32 -2146194985, i32 -2146194896, i32 -2146194775, i32 -2146194676, i32 -2146194570, i32 -2146194468, i32 -2146194435, i32 -2146194352, i32 -2146194263, i32 -2146194142, i32 -2146194042, i32 -2146194016, i32 -2146193913, i32 -2146193887, i32 -2146198723, i32 -2146198698, i32 -2146198631, i32 -2146198606, i32 -2146198542, i32 -2146198460, i32 -2146198437, i32 -2146198412, i32 -2146198387}
!692 = !DILocation(line: 350, column: 5, scope: !693)
!693 = distinct !DILexicalBlock(scope: !694, file: !1, line: 350, column: 5)
!694 = distinct !DILexicalBlock(scope: !457, file: !1, line: 350, column: 5)
!695 = !{i32 -2146197326, i32 -2146197309}
!696 = !DILocation(line: 352, column: 9, scope: !472)
!697 = !DILocation(line: 352, column: 12, scope: !472)
!698 = !DILocation(line: 352, column: 9, scope: !419)
!699 = !DILocation(line: 353, column: 26, scope: !471)
!700 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !701)
!701 = distinct !DILocation(line: 354, column: 10, scope: !469)
!702 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !701)
!703 = !DILocation(line: 354, column: 10, scope: !469)
!704 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !705)
!705 = distinct !DILocation(line: 354, column: 10, scope: !469)
!706 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !705)
!707 = !DILocation(line: 354, column: 10, scope: !470)
!708 = !DILocation(line: 354, column: 10, scope: !709)
!709 = distinct !DILexicalBlock(scope: !469, file: !1, line: 354, column: 10)
!710 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !711)
!711 = distinct !DILocation(line: 49, column: 21, scope: !191, inlinedAt: !712)
!712 = distinct !DILocation(line: 354, column: 10, scope: !466)
!713 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !711)
!714 = !DILocation(line: 49, column: 16, scope: !191, inlinedAt: !712)
!715 = !DILocation(line: 50, column: 19, scope: !191, inlinedAt: !712)
!716 = !DILocation(line: 50, column: 11, scope: !191, inlinedAt: !712)
!717 = !DILocation(line: 50, column: 9, scope: !191, inlinedAt: !712)
!718 = !DILocation(line: 354, column: 10, scope: !466)
!719 = !{i32 -2146191372, i32 -2146191359, i32 -2146191334, i32 -2146191310, i32 -2146191285, i32 -2146191210, i32 -2146191185, i32 -2146191041, i32 -2146191016, i32 -2146187711, i32 -2146187622, i32 -2146187501, i32 -2146187406, i32 -2146187305, i32 -2146187278, i32 -2146187195, i32 -2146187106, i32 -2146186985, i32 -2146186885, i32 -2146186779, i32 -2146186671, i32 -2146190679, i32 -2146190626, i32 -2146190595, i32 -2146190564, i32 -2146190543, i32 -2146190521, i32 -2146190472, i32 -2146190451, i32 -2146190348, i32 -2146190316, i32 -2146186588, i32 -2146186499, i32 -2146186378, i32 -2146186279, i32 -2146186173, i32 -2146186071, i32 -2146186038, i32 -2146185965, i32 -2146185897, i32 -2146190126, i32 -2146190067, i32 -2146190014, i32 -2146189983, i32 -2146189952, i32 -2146189931, i32 -2146189909, i32 -2146189860, i32 -2146189839, i32 -2146185850, i32 -2146185761, i32 -2146185640, i32 -2146185541, i32 -2146185435, i32 -2146185333, i32 -2146185300, i32 -2146185217, i32 -2146185128, i32 -2146185007, i32 -2146184907, i32 -2146184881, i32 -2146184778, i32 -2146184752, i32 -2146189581, i32 -2146189556, i32 -2146189489, i32 -2146189464, i32 -2146189400, i32 -2146189318, i32 -2146189295, i32 -2146189270, i32 -2146189245}
!720 = !DILocation(line: 354, column: 10, scope: !721)
!721 = distinct !DILexicalBlock(scope: !722, file: !1, line: 354, column: 10)
!722 = distinct !DILexicalBlock(scope: !466, file: !1, line: 354, column: 10)
!723 = !{i32 -2146188184, i32 -2146188167}
!724 = !DILocation(line: 356, column: 14, scope: !725)
!725 = distinct !DILexicalBlock(scope: !471, file: !1, line: 356, column: 14)
!726 = !DILocation(line: 356, column: 17, scope: !725)
!727 = !DILocation(line: 356, column: 14, scope: !471)
!728 = !DILocation(line: 357, column: 47, scope: !729)
!729 = distinct !DILexicalBlock(scope: !725, file: !1, line: 356, column: 23)
!730 = !DILocation(line: 357, column: 13, scope: !729)
!731 = !DILocation(line: 358, column: 13, scope: !729)
!732 = !DILocation(line: 290, column: 52, scope: !419)
!733 = !DILocation(line: 0, scope: !483)
!734 = !DILocation(line: 361, column: 26, scope: !483)
!735 = !DILocation(line: 361, column: 5, scope: !484)
!736 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !737)
!737 = distinct !DILocation(line: 363, column: 9, scope: !480)
!738 = !DILocation(line: 0, scope: !739)
!739 = distinct !DILexicalBlock(scope: !740, file: !1, line: 414, column: 21)
!740 = distinct !DILexicalBlock(scope: !741, file: !1, line: 413, column: 61)
!741 = distinct !DILexicalBlock(scope: !742, file: !1, line: 413, column: 24)
!742 = distinct !DILexicalBlock(scope: !743, file: !1, line: 411, column: 24)
!743 = distinct !DILexicalBlock(scope: !744, file: !1, line: 408, column: 17)
!744 = distinct !DILexicalBlock(scope: !745, file: !1, line: 407, column: 56)
!745 = distinct !DILexicalBlock(scope: !482, file: !1, line: 407, column: 13)
!746 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !737)
!747 = !DILocation(line: 363, column: 9, scope: !480)
!748 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !749)
!749 = distinct !DILocation(line: 363, column: 9, scope: !480)
!750 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !749)
!751 = !DILocation(line: 363, column: 9, scope: !481)
!752 = !DILocation(line: 363, column: 9, scope: !753)
!753 = distinct !DILexicalBlock(scope: !480, file: !1, line: 363, column: 9)
!754 = !{!666, !160, i64 12}
!755 = !DILocation(line: 288, column: 9, scope: !419)
!756 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !757)
!757 = distinct !DILocation(line: 49, column: 21, scope: !191, inlinedAt: !758)
!758 = distinct !DILocation(line: 363, column: 9, scope: !477)
!759 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !757)
!760 = !DILocation(line: 49, column: 16, scope: !191, inlinedAt: !758)
!761 = !DILocation(line: 50, column: 19, scope: !191, inlinedAt: !758)
!762 = !DILocation(line: 50, column: 11, scope: !191, inlinedAt: !758)
!763 = !DILocation(line: 50, column: 9, scope: !191, inlinedAt: !758)
!764 = !DILocation(line: 363, column: 9, scope: !477)
!765 = !{i32 -2146182235, i32 -2146182222, i32 -2146182197, i32 -2146182173, i32 -2146182148, i32 -2146182073, i32 -2146182048, i32 -2146181904, i32 -2146178689, i32 -2146178600, i32 -2146178479, i32 -2146178384, i32 -2146178283, i32 -2146178256, i32 -2146178173, i32 -2146178084, i32 -2146177963, i32 -2146177863, i32 -2146177757, i32 -2146177649, i32 -2146181574, i32 -2146181521, i32 -2146181490, i32 -2146181459, i32 -2146181438, i32 -2146181416, i32 -2146181367, i32 -2146181346, i32 -2146181243, i32 -2146177566, i32 -2146177477, i32 -2146177356, i32 -2146177257, i32 -2146177151, i32 -2146177049, i32 -2146177016, i32 -2146176943, i32 -2146176875, i32 -2146181053, i32 -2146180994, i32 -2146180941, i32 -2146180910, i32 -2146180879, i32 -2146180858, i32 -2146180836, i32 -2146180787, i32 -2146180766, i32 -2146176833, i32 -2146176744, i32 -2146176623, i32 -2146176524, i32 -2146176418, i32 -2146176316, i32 -2146176283, i32 -2146176200, i32 -2146176111, i32 -2146175990, i32 -2146175890, i32 -2146175864, i32 -2146175761, i32 -2146175735, i32 -2146180508, i32 -2146180441, i32 -2146180416, i32 -2146180352, i32 -2146180270, i32 -2146180247, i32 -2146180222, i32 -2146180197}
!766 = !DILocation(line: 363, column: 9, scope: !767)
!767 = distinct !DILexicalBlock(scope: !768, file: !1, line: 363, column: 9)
!768 = distinct !DILexicalBlock(scope: !477, file: !1, line: 363, column: 9)
!769 = !{i32 -2146179159, i32 -2146179142}
!770 = !DILocation(line: 365, column: 13, scope: !771)
!771 = distinct !DILexicalBlock(scope: !482, file: !1, line: 365, column: 13)
!772 = !DILocation(line: 365, column: 15, scope: !771)
!773 = !DILocation(line: 365, column: 13, scope: !482)
!774 = !DILocation(line: 368, column: 15, scope: !482)
!775 = !DILocation(line: 369, column: 13, scope: !776)
!776 = distinct !DILexicalBlock(scope: !482, file: !1, line: 369, column: 13)
!777 = !DILocation(line: 369, column: 35, scope: !776)
!778 = !DILocation(line: 369, column: 13, scope: !482)
!779 = !DILocation(line: 371, column: 20, scope: !489)
!780 = !DILocation(line: 371, column: 13, scope: !489)
!781 = !DILocation(line: 371, column: 13, scope: !482)
!782 = !DILocation(line: 372, column: 17, scope: !488)
!783 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !784)
!784 = distinct !DILocation(line: 374, column: 13, scope: !494)
!785 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !784)
!786 = !DILocation(line: 374, column: 13, scope: !494)
!787 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !788)
!788 = distinct !DILocation(line: 374, column: 13, scope: !494)
!789 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !788)
!790 = !DILocation(line: 374, column: 13, scope: !495)
!791 = !DILocation(line: 374, column: 13, scope: !792)
!792 = distinct !DILexicalBlock(scope: !494, file: !1, line: 374, column: 13)
!793 = !DILocation(line: 290, column: 40, scope: !419)
!794 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !795)
!795 = distinct !DILocation(line: 49, column: 21, scope: !191, inlinedAt: !796)
!796 = distinct !DILocation(line: 374, column: 13, scope: !491)
!797 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !795)
!798 = !DILocation(line: 49, column: 16, scope: !191, inlinedAt: !796)
!799 = !DILocation(line: 50, column: 19, scope: !191, inlinedAt: !796)
!800 = !DILocation(line: 50, column: 11, scope: !191, inlinedAt: !796)
!801 = !DILocation(line: 50, column: 9, scope: !191, inlinedAt: !796)
!802 = !DILocation(line: 374, column: 13, scope: !491)
!803 = !{i32 -2146173188, i32 -2146173175, i32 -2146173150, i32 -2146173126, i32 -2146173101, i32 -2146173026, i32 -2146173001, i32 -2146172857, i32 -2146172832, i32 -2146169494, i32 -2146169405, i32 -2146169284, i32 -2146169189, i32 -2146169088, i32 -2146169061, i32 -2146168978, i32 -2146168889, i32 -2146168768, i32 -2146168668, i32 -2146168562, i32 -2146168454, i32 -2146172495, i32 -2146172442, i32 -2146172411, i32 -2146172380, i32 -2146172359, i32 -2146172337, i32 -2146172288, i32 -2146172267, i32 -2146172164, i32 -2146172132, i32 -2146168371, i32 -2146168282, i32 -2146168161, i32 -2146168062, i32 -2146167956, i32 -2146167854, i32 -2146167821, i32 -2146167748, i32 -2146167680, i32 -2146171942, i32 -2146171883, i32 -2146171830, i32 -2146171799, i32 -2146171768, i32 -2146171747, i32 -2146171725, i32 -2146171676, i32 -2146171655, i32 -2146167633, i32 -2146167544, i32 -2146167423, i32 -2146167324, i32 -2146167218, i32 -2146167116, i32 -2146167083, i32 -2146167000, i32 -2146166911, i32 -2146166790, i32 -2146166690, i32 -2146166664, i32 -2146166561, i32 -2146166535, i32 -2146171397, i32 -2146171372, i32 -2146171305, i32 -2146171280, i32 -2146171216, i32 -2146171134, i32 -2146171111, i32 -2146171086, i32 -2146171061}
!804 = !DILocation(line: 374, column: 13, scope: !805)
!805 = distinct !DILexicalBlock(scope: !806, file: !1, line: 374, column: 13)
!806 = distinct !DILexicalBlock(scope: !491, file: !1, line: 374, column: 13)
!807 = !{i32 -2146170000, i32 -2146169983}
!808 = !DILocation(line: 376, column: 17, scope: !501)
!809 = !DILocation(line: 376, column: 20, scope: !501)
!810 = !DILocation(line: 376, column: 17, scope: !488)
!811 = !DILocation(line: 377, column: 17, scope: !500)
!812 = !DILocation(line: 377, column: 22, scope: !500)
!813 = !DILocation(line: 378, column: 63, scope: !500)
!814 = !DILocation(line: 378, column: 17, scope: !500)
!815 = !DILocation(line: 379, column: 17, scope: !500)
!816 = !DILocation(line: 381, column: 13, scope: !501)
!817 = !DILocation(line: 383, column: 17, scope: !488)
!818 = !DILocation(line: 384, column: 17, scope: !503)
!819 = !DILocation(line: 288, column: 16, scope: !419)
!820 = !DILocation(line: 385, column: 19, scope: !503)
!821 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !822)
!822 = distinct !DILocation(line: 386, column: 17, scope: !509)
!823 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !822)
!824 = !DILocation(line: 386, column: 17, scope: !509)
!825 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !826)
!826 = distinct !DILocation(line: 386, column: 17, scope: !509)
!827 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !826)
!828 = !DILocation(line: 386, column: 17, scope: !510)
!829 = !DILocation(line: 386, column: 17, scope: !830)
!830 = distinct !DILexicalBlock(scope: !509, file: !1, line: 386, column: 17)
!831 = !DILocation(line: 384, column: 21, scope: !503)
!832 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !833)
!833 = distinct !DILocation(line: 49, column: 21, scope: !191, inlinedAt: !834)
!834 = distinct !DILocation(line: 386, column: 17, scope: !506)
!835 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !833)
!836 = !DILocation(line: 49, column: 16, scope: !191, inlinedAt: !834)
!837 = !DILocation(line: 50, column: 19, scope: !191, inlinedAt: !834)
!838 = !DILocation(line: 50, column: 11, scope: !191, inlinedAt: !834)
!839 = !DILocation(line: 50, column: 9, scope: !191, inlinedAt: !834)
!840 = !DILocation(line: 386, column: 17, scope: !506)
!841 = !{i32 -2146159872, i32 -2146159859, i32 -2146159834, i32 -2146159810, i32 -2146159785, i32 -2146159710, i32 -2146159685, i32 -2146159541, i32 -2146159516, i32 -2146156122, i32 -2146156033, i32 -2146155912, i32 -2146155817, i32 -2146155716, i32 -2146155689, i32 -2146155606, i32 -2146155517, i32 -2146155396, i32 -2146155296, i32 -2146155190, i32 -2146155082, i32 -2146159140, i32 -2146159087, i32 -2146159056, i32 -2146159025, i32 -2146159004, i32 -2146158982, i32 -2146158933, i32 -2146158912, i32 -2146158809, i32 -2146158777, i32 -2146154999, i32 -2146154910, i32 -2146154789, i32 -2146154690, i32 -2146154584, i32 -2146154482, i32 -2146154449, i32 -2146154376, i32 -2146154308, i32 -2146158587, i32 -2146158528, i32 -2146158475, i32 -2146158444, i32 -2146158413, i32 -2146158392, i32 -2146158370, i32 -2146158321, i32 -2146158300, i32 -2146154262, i32 -2146154173, i32 -2146154052, i32 -2146153953, i32 -2146153847, i32 -2146153745, i32 -2146153712, i32 -2146153629, i32 -2146153540, i32 -2146153419, i32 -2146153319, i32 -2146153293, i32 -2146153190, i32 -2146153164, i32 -2146158042, i32 -2146158017, i32 -2146157950, i32 -2146157925, i32 -2146157861, i32 -2146157779, i32 -2146157756, i32 -2146157731, i32 -2146157706}
!842 = !DILocation(line: 386, column: 17, scope: !843)
!843 = distinct !DILexicalBlock(scope: !844, file: !1, line: 386, column: 17)
!844 = distinct !DILexicalBlock(scope: !506, file: !1, line: 386, column: 17)
!845 = !{i32 -2146156622, i32 -2146156605}
!846 = !DILocation(line: 388, column: 21, scope: !847)
!847 = distinct !DILexicalBlock(scope: !503, file: !1, line: 388, column: 21)
!848 = !DILocation(line: 391, column: 13, scope: !504)
!849 = !DILocation(line: 290, column: 56, scope: !419)
!850 = !DILocation(line: 0, scope: !851)
!851 = distinct !DILexicalBlock(scope: !852, file: !1, line: 393, column: 13)
!852 = distinct !DILexicalBlock(scope: !488, file: !1, line: 393, column: 13)
!853 = !DILocation(line: 393, column: 35, scope: !851)
!854 = !DILocation(line: 393, column: 13, scope: !852)
!855 = !DILocation(line: 393, column: 51, scope: !851)
!856 = distinct !{!856, !854, !857}
!857 = !DILocation(line: 398, column: 13, scope: !852)
!858 = !DILocation(line: 394, column: 26, scope: !859)
!859 = distinct !DILexicalBlock(scope: !860, file: !1, line: 394, column: 21)
!860 = distinct !DILexicalBlock(scope: !851, file: !1, line: 393, column: 60)
!861 = !DILocation(line: 394, column: 31, scope: !859)
!862 = !{!666, !166, i64 24}
!863 = !DILocation(line: 394, column: 42, scope: !859)
!864 = !{!666, !160, i64 16}
!865 = !DILocation(line: 394, column: 21, scope: !859)
!866 = !DILocation(line: 394, column: 54, scope: !859)
!867 = !DILocation(line: 394, column: 21, scope: !860)
!868 = !DILocation(line: 399, column: 26, scope: !488)
!869 = !DILocation(line: 399, column: 13, scope: !488)
!870 = !DILocation(line: 401, column: 17, scope: !516)
!871 = !DILocation(line: 401, column: 22, scope: !516)
!872 = !DILocation(line: 402, column: 75, scope: !516)
!873 = !DILocation(line: 402, column: 66, scope: !516)
!874 = !DILocation(line: 402, column: 17, scope: !516)
!875 = !DILocation(line: 403, column: 17, scope: !516)
!876 = !DILocation(line: 405, column: 13, scope: !517)
!877 = !DILocation(line: 407, column: 21, scope: !745)
!878 = !DILocation(line: 407, column: 26, scope: !745)
!879 = !DILocation(line: 407, column: 37, scope: !745)
!880 = !DILocation(line: 407, column: 13, scope: !745)
!881 = !DILocation(line: 407, column: 49, scope: !745)
!882 = !DILocation(line: 407, column: 13, scope: !482)
!883 = !DILocation(line: 408, column: 17, scope: !743)
!884 = !DILocation(line: 408, column: 23, scope: !743)
!885 = !DILocation(line: 408, column: 17, scope: !744)
!886 = !DILocalVariable(name: "c", arg: 1, scope: !887, file: !1, line: 61, type: !43)
!887 = distinct !DISubprogram(name: "redisContextCloseFd", scope: !1, file: !1, line: 61, type: !888, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !890)
!888 = !DISubroutineType(types: !889)
!889 = !{null, !43}
!890 = !{!886}
!891 = !DILocation(line: 61, column: 47, scope: !887, inlinedAt: !892)
!892 = distinct !DILocation(line: 409, column: 17, scope: !893)
!893 = distinct !DILexicalBlock(scope: !743, file: !1, line: 408, column: 40)
!894 = !DILocation(line: 62, column: 17, scope: !895, inlinedAt: !892)
!895 = distinct !DILexicalBlock(scope: !887, file: !1, line: 62, column: 9)
!896 = !DILocation(line: 62, column: 20, scope: !895, inlinedAt: !892)
!897 = !DILocation(line: 62, column: 9, scope: !887, inlinedAt: !892)
!898 = !DILocation(line: 63, column: 9, scope: !899, inlinedAt: !892)
!899 = distinct !DILexicalBlock(scope: !895, file: !1, line: 62, column: 26)
!900 = !DILocation(line: 64, column: 15, scope: !899, inlinedAt: !892)
!901 = !DILocation(line: 65, column: 5, scope: !899, inlinedAt: !892)
!902 = !DILocation(line: 411, column: 24, scope: !742)
!903 = !DILocation(line: 411, column: 30, scope: !742)
!904 = !DILocation(line: 411, column: 45, scope: !742)
!905 = !DILocation(line: 413, column: 24, scope: !741)
!906 = !DILocation(line: 413, column: 30, scope: !741)
!907 = !DILocation(line: 413, column: 47, scope: !741)
!908 = !DILocation(line: 414, column: 30, scope: !739)
!909 = !DILocation(line: 414, column: 21, scope: !740)
!910 = !DILocation(line: 414, column: 21, scope: !739)
!911 = !DILocation(line: 61, column: 47, scope: !887, inlinedAt: !912)
!912 = distinct !DILocation(line: 417, column: 21, scope: !913)
!913 = distinct !DILexicalBlock(scope: !739, file: !1, line: 416, column: 24)
!914 = !DILocation(line: 62, column: 17, scope: !895, inlinedAt: !912)
!915 = !DILocation(line: 62, column: 20, scope: !895, inlinedAt: !912)
!916 = !DILocation(line: 62, column: 9, scope: !887, inlinedAt: !912)
!917 = !DILocation(line: 63, column: 9, scope: !899, inlinedAt: !912)
!918 = !DILocation(line: 64, column: 15, scope: !899, inlinedAt: !912)
!919 = !DILocation(line: 65, column: 5, scope: !899, inlinedAt: !912)
!920 = !DILocation(line: 421, column: 21, scope: !921)
!921 = distinct !DILexicalBlock(scope: !922, file: !1, line: 421, column: 21)
!922 = distinct !DILexicalBlock(scope: !741, file: !1, line: 420, column: 20)
!923 = !DILocation(line: 421, column: 59, scope: !921)
!924 = !DILocation(line: 421, column: 21, scope: !922)
!925 = !DILocation(line: 425, column: 13, scope: !926)
!926 = distinct !DILexicalBlock(scope: !482, file: !1, line: 425, column: 13)
!927 = !DILocation(line: 425, column: 22, scope: !926)
!928 = !DILocation(line: 425, column: 25, scope: !926)
!929 = !DILocation(line: 425, column: 47, scope: !926)
!930 = !DILocation(line: 425, column: 13, scope: !482)
!931 = !DILocation(line: 182, column: 45, scope: !525, inlinedAt: !540)
!932 = !DILocation(line: 183, column: 5, scope: !525, inlinedAt: !540)
!933 = !DILocation(line: 183, column: 9, scope: !525, inlinedAt: !540)
!934 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !935)
!935 = distinct !DILocation(line: 184, column: 5, scope: !534, inlinedAt: !540)
!936 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !935)
!937 = !DILocation(line: 184, column: 5, scope: !534, inlinedAt: !540)
!938 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !939)
!939 = distinct !DILocation(line: 184, column: 5, scope: !534, inlinedAt: !540)
!940 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !939)
!941 = !DILocation(line: 184, column: 5, scope: !535, inlinedAt: !540)
!942 = !DILocation(line: 184, column: 5, scope: !943, inlinedAt: !540)
!943 = distinct !DILexicalBlock(scope: !534, file: !1, line: 184, column: 5)
!944 = !DILocation(line: 183, column: 18, scope: !525, inlinedAt: !540)
!945 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !946)
!946 = distinct !DILocation(line: 49, column: 21, scope: !191, inlinedAt: !947)
!947 = distinct !DILocation(line: 184, column: 5, scope: !531, inlinedAt: !540)
!948 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !946)
!949 = !DILocation(line: 49, column: 16, scope: !191, inlinedAt: !947)
!950 = !DILocation(line: 50, column: 19, scope: !191, inlinedAt: !947)
!951 = !DILocation(line: 50, column: 11, scope: !191, inlinedAt: !947)
!952 = !DILocation(line: 50, column: 9, scope: !191, inlinedAt: !947)
!953 = !DILocation(line: 184, column: 5, scope: !531, inlinedAt: !540)
!954 = !{i32 -2146228561, i32 -2146228548, i32 -2146228523, i32 -2146228499, i32 -2146228474, i32 -2146228399, i32 -2146228374, i32 -2146228230, i32 -2146228205, i32 -2146224823, i32 -2146224734, i32 -2146224613, i32 -2146224518, i32 -2146224417, i32 -2146224390, i32 -2146224307, i32 -2146224218, i32 -2146224097, i32 -2146223997, i32 -2146223891, i32 -2146223783, i32 -2146227829, i32 -2146227776, i32 -2146227745, i32 -2146227714, i32 -2146227693, i32 -2146227671, i32 -2146227622, i32 -2146227601, i32 -2146227498, i32 -2146227466, i32 -2146223700, i32 -2146223611, i32 -2146223490, i32 -2146223391, i32 -2146223285, i32 -2146223183, i32 -2146223150, i32 -2146223077, i32 -2146223009, i32 -2146227276, i32 -2146227217, i32 -2146227164, i32 -2146227133, i32 -2146227102, i32 -2146227081, i32 -2146227059, i32 -2146227010, i32 -2146226989, i32 -2146222963, i32 -2146222874, i32 -2146222753, i32 -2146222654, i32 -2146222548, i32 -2146222446, i32 -2146222413, i32 -2146222330, i32 -2146222241, i32 -2146222120, i32 -2146222020, i32 -2146221994, i32 -2146221891, i32 -2146221865, i32 -2146226731, i32 -2146226706, i32 -2146226639, i32 -2146226614, i32 -2146226550, i32 -2146226468, i32 -2146226445, i32 -2146226420, i32 -2146226395}
!955 = !DILocation(line: 184, column: 5, scope: !956, inlinedAt: !540)
!956 = distinct !DILexicalBlock(scope: !957, file: !1, line: 184, column: 5)
!957 = distinct !DILexicalBlock(scope: !531, file: !1, line: 184, column: 5)
!958 = !{i32 -2146225311, i32 -2146225294}
!959 = !DILocation(line: 186, column: 9, scope: !524, inlinedAt: !540)
!960 = !DILocation(line: 186, column: 13, scope: !524, inlinedAt: !540)
!961 = !DILocation(line: 186, column: 9, scope: !525, inlinedAt: !540)
!962 = !DILocation(line: 68, column: 52, scope: !232, inlinedAt: !522)
!963 = !DILocation(line: 68, column: 59, scope: !232, inlinedAt: !522)
!964 = !DILocation(line: 68, column: 77, scope: !232, inlinedAt: !522)
!965 = !DILocation(line: 69, column: 5, scope: !232, inlinedAt: !522)
!966 = !DILocation(line: 70, column: 12, scope: !232, inlinedAt: !522)
!967 = !DILocation(line: 73, column: 15, scope: !265, inlinedAt: !522)
!968 = !DILocation(line: 74, column: 5, scope: !267, inlinedAt: !522)
!969 = !DILocation(line: 73, column: 9, scope: !265, inlinedAt: !522)
!970 = !DILocation(line: 75, column: 5, scope: !232, inlinedAt: !522)
!971 = !DILocation(line: 76, column: 1, scope: !232, inlinedAt: !522)
!972 = !DILocation(line: 61, column: 47, scope: !887, inlinedAt: !973)
!973 = distinct !DILocation(line: 188, column: 9, scope: !523, inlinedAt: !540)
!974 = !DILocation(line: 62, column: 17, scope: !895, inlinedAt: !973)
!975 = !DILocation(line: 62, column: 20, scope: !895, inlinedAt: !973)
!976 = !DILocation(line: 62, column: 9, scope: !887, inlinedAt: !973)
!977 = !DILocation(line: 63, column: 9, scope: !899, inlinedAt: !973)
!978 = !DILocation(line: 64, column: 15, scope: !899, inlinedAt: !973)
!979 = !DILocation(line: 65, column: 5, scope: !899, inlinedAt: !973)
!980 = !DILocation(line: 192, column: 1, scope: !525, inlinedAt: !540)
!981 = !DILocation(line: 427, column: 13, scope: !482)
!982 = !DILocation(line: 430, column: 18, scope: !482)
!983 = !DILocation(line: 432, column: 9, scope: !482)
!984 = !DILocation(line: 361, column: 42, scope: !483)
!985 = distinct !{!985, !735, !986}
!986 = !DILocation(line: 433, column: 5, scope: !484)
!987 = !DILocation(line: 435, column: 9, scope: !519)
!988 = !DILocation(line: 435, column: 14, scope: !519)
!989 = !DILocation(line: 436, column: 69, scope: !519)
!990 = !DILocation(line: 436, column: 60, scope: !519)
!991 = !DILocation(line: 436, column: 9, scope: !519)
!992 = !DILocation(line: 437, column: 9, scope: !519)
!993 = !DILocation(line: 439, column: 5, scope: !520)
!994 = !DILocation(line: 0, scope: !482)
!995 = !DILocation(line: 444, column: 18, scope: !419)
!996 = !DILocation(line: 444, column: 5, scope: !419)
!997 = !DILocation(line: 445, column: 12, scope: !419)
!998 = !DILocation(line: 445, column: 5, scope: !419)
!999 = !DILocation(line: 446, column: 1, scope: !419)
!1000 = distinct !DISubprogram(name: "redisContextConnectBindTcp", scope: !1, file: !1, line: 453, type: !420, isLocal: false, isDefinition: true, scopeLine: 455, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1001)
!1001 = !{!1002, !1003, !1004, !1005, !1006}
!1002 = !DILocalVariable(name: "c", arg: 1, scope: !1000, file: !1, line: 453, type: !43)
!1003 = !DILocalVariable(name: "addr", arg: 2, scope: !1000, file: !1, line: 453, type: !235)
!1004 = !DILocalVariable(name: "port", arg: 3, scope: !1000, file: !1, line: 453, type: !34)
!1005 = !DILocalVariable(name: "timeout", arg: 4, scope: !1000, file: !1, line: 454, type: !407)
!1006 = !DILocalVariable(name: "source_addr", arg: 5, scope: !1000, file: !1, line: 455, type: !235)
!1007 = !DILocation(line: 453, column: 46, scope: !1000)
!1008 = !DILocation(line: 453, column: 61, scope: !1000)
!1009 = !DILocation(line: 453, column: 71, scope: !1000)
!1010 = !DILocation(line: 454, column: 54, scope: !1000)
!1011 = !DILocation(line: 455, column: 44, scope: !1000)
!1012 = !DILocation(line: 456, column: 12, scope: !1000)
!1013 = !DILocation(line: 456, column: 5, scope: !1000)
!1014 = distinct !DISubprogram(name: "redisContextConnectUnix", scope: !1, file: !1, line: 459, type: !1015, isLocal: false, isDefinition: true, scopeLine: 459, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1017)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!34, !43, !235, !407}
!1017 = !{!1018, !1019, !1020, !1021, !1022, !1031}
!1018 = !DILocalVariable(name: "c", arg: 1, scope: !1014, file: !1, line: 459, type: !43)
!1019 = !DILocalVariable(name: "path", arg: 2, scope: !1014, file: !1, line: 459, type: !235)
!1020 = !DILocalVariable(name: "timeout", arg: 3, scope: !1014, file: !1, line: 459, type: !407)
!1021 = !DILocalVariable(name: "blocking", scope: !1014, file: !1, line: 460, type: !34)
!1022 = !DILocalVariable(name: "sa", scope: !1014, file: !1, line: 461, type: !1023)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_un", file: !1024, line: 17, size: 872, elements: !1025)
!1024 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/include/sys/un.h", directory: "/root/.unikraft/apps/redis/build")
!1025 = !{!1026, !1027}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "sun_family", scope: !1023, file: !1024, line: 18, baseType: !27, size: 8)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "sun_path", scope: !1023, file: !1024, line: 19, baseType: !1028, size: 864, offset: 8)
!1028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 864, elements: !1029)
!1029 = !{!1030}
!1030 = !DISubrange(count: 108)
!1031 = !DILocalVariable(name: "timeout_msec", scope: !1014, file: !1, line: 462, type: !124)
!1032 = !DILocation(line: 69, column: 10, scope: !232, inlinedAt: !1033)
!1033 = distinct !DILocation(line: 94, column: 9, scope: !1034, inlinedAt: !1049)
!1034 = distinct !DILexicalBlock(scope: !1035, file: !1, line: 93, column: 18)
!1035 = distinct !DILexicalBlock(scope: !1036, file: !1, line: 93, column: 9)
!1036 = distinct !DISubprogram(name: "redisCreateSocket", scope: !1, file: !1, line: 90, type: !41, isLocal: true, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1037)
!1037 = !{!1038, !1039, !1040, !1041, !1047, !1048}
!1038 = !DILocalVariable(name: "c", arg: 1, scope: !1036, file: !1, line: 90, type: !43)
!1039 = !DILocalVariable(name: "type", arg: 2, scope: !1036, file: !1, line: 90, type: !34)
!1040 = !DILocalVariable(name: "s", scope: !1036, file: !1, line: 91, type: !34)
!1041 = !DILocalVariable(name: "tid", scope: !1042, file: !1, line: 92, type: !149)
!1042 = distinct !DILexicalBlock(scope: !1043, file: !1, line: 92, column: 5)
!1043 = distinct !DILexicalBlock(scope: !1044, file: !1, line: 92, column: 5)
!1044 = distinct !DILexicalBlock(scope: !1045, file: !1, line: 92, column: 5)
!1045 = distinct !DILexicalBlock(scope: !1046, file: !1, line: 92, column: 5)
!1046 = distinct !DILexicalBlock(scope: !1036, file: !1, line: 92, column: 5)
!1047 = !DILocalVariable(name: "_ret", scope: !1042, file: !1, line: 92, type: !11)
!1048 = !DILocalVariable(name: "_arg3", scope: !1042, file: !1, line: 92, type: !11)
!1049 = distinct !DILocation(line: 464, column: 9, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1014, file: !1, line: 464, column: 9)
!1051 = !DILocation(line: 459, column: 43, scope: !1014)
!1052 = !DILocation(line: 459, column: 58, scope: !1014)
!1053 = !DILocation(line: 459, column: 86, scope: !1014)
!1054 = !DILocation(line: 460, column: 24, scope: !1014)
!1055 = !DILocation(line: 460, column: 30, scope: !1014)
!1056 = !DILocation(line: 460, column: 9, scope: !1014)
!1057 = !DILocation(line: 461, column: 5, scope: !1014)
!1058 = !DILocation(line: 462, column: 10, scope: !1014)
!1059 = !DILocation(line: 90, column: 44, scope: !1036, inlinedAt: !1049)
!1060 = !DILocation(line: 90, column: 51, scope: !1036, inlinedAt: !1049)
!1061 = !DILocation(line: 91, column: 5, scope: !1036, inlinedAt: !1049)
!1062 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !1063)
!1063 = distinct !DILocation(line: 92, column: 5, scope: !1045, inlinedAt: !1049)
!1064 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !1063)
!1065 = !DILocation(line: 92, column: 5, scope: !1045, inlinedAt: !1049)
!1066 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !1067)
!1067 = distinct !DILocation(line: 92, column: 5, scope: !1045, inlinedAt: !1049)
!1068 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !1067)
!1069 = !DILocation(line: 92, column: 5, scope: !1046, inlinedAt: !1049)
!1070 = !DILocation(line: 92, column: 5, scope: !1071, inlinedAt: !1049)
!1071 = distinct !DILexicalBlock(scope: !1045, file: !1, line: 92, column: 5)
!1072 = !DILocation(line: 91, column: 9, scope: !1036, inlinedAt: !1049)
!1073 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !1074)
!1074 = distinct !DILocation(line: 49, column: 21, scope: !191, inlinedAt: !1075)
!1075 = distinct !DILocation(line: 92, column: 5, scope: !1042, inlinedAt: !1049)
!1076 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !1074)
!1077 = !DILocation(line: 49, column: 16, scope: !191, inlinedAt: !1075)
!1078 = !DILocation(line: 50, column: 19, scope: !191, inlinedAt: !1075)
!1079 = !DILocation(line: 50, column: 11, scope: !191, inlinedAt: !1075)
!1080 = !DILocation(line: 50, column: 9, scope: !191, inlinedAt: !1075)
!1081 = !DILocation(line: 92, column: 5, scope: !1042, inlinedAt: !1049)
!1082 = !{i32 -2146246919, i32 -2146246906, i32 -2146246881, i32 -2146246857, i32 -2146246832, i32 -2146246757, i32 -2146246732, i32 -2146246588, i32 -2146243405, i32 -2146243316, i32 -2146243195, i32 -2146243100, i32 -2146242999, i32 -2146242972, i32 -2146242889, i32 -2146242800, i32 -2146242679, i32 -2146242579, i32 -2146242473, i32 -2146242365, i32 -2146246258, i32 -2146246205, i32 -2146246174, i32 -2146246143, i32 -2146246122, i32 -2146246100, i32 -2146246051, i32 -2146246030, i32 -2146245927, i32 -2146242282, i32 -2146242193, i32 -2146242072, i32 -2146241973, i32 -2146241867, i32 -2146241765, i32 -2146241732, i32 -2146241659, i32 -2146241591, i32 -2146245737, i32 -2146245678, i32 -2146245625, i32 -2146245594, i32 -2146245563, i32 -2146245542, i32 -2146245520, i32 -2146245471, i32 -2146245450, i32 -2146241549, i32 -2146241460, i32 -2146241339, i32 -2146241240, i32 -2146241134, i32 -2146241032, i32 -2146240999, i32 -2146240916, i32 -2146240827, i32 -2146240706, i32 -2146240606, i32 -2146240580, i32 -2146240477, i32 -2146240451, i32 -2146245192, i32 -2146245125, i32 -2146245100, i32 -2146245036, i32 -2146244954, i32 -2146244931, i32 -2146244906, i32 -2146244881}
!1083 = !DILocation(line: 92, column: 5, scope: !1084, inlinedAt: !1049)
!1084 = distinct !DILexicalBlock(scope: !1085, file: !1, line: 92, column: 5)
!1085 = distinct !DILexicalBlock(scope: !1042, file: !1, line: 92, column: 5)
!1086 = !{i32 -2146243843, i32 -2146243826}
!1087 = !DILocation(line: 93, column: 9, scope: !1035, inlinedAt: !1049)
!1088 = !DILocation(line: 93, column: 11, scope: !1035, inlinedAt: !1049)
!1089 = !DILocation(line: 93, column: 9, scope: !1036, inlinedAt: !1049)
!1090 = !DILocation(line: 68, column: 52, scope: !232, inlinedAt: !1033)
!1091 = !DILocation(line: 68, column: 59, scope: !232, inlinedAt: !1033)
!1092 = !DILocation(line: 68, column: 77, scope: !232, inlinedAt: !1033)
!1093 = !DILocation(line: 69, column: 5, scope: !232, inlinedAt: !1033)
!1094 = !DILocation(line: 70, column: 12, scope: !232, inlinedAt: !1033)
!1095 = !DILocation(line: 74, column: 5, scope: !267, inlinedAt: !1033)
!1096 = !DILocation(line: 75, column: 5, scope: !232, inlinedAt: !1033)
!1097 = !DILocation(line: 76, column: 1, scope: !232, inlinedAt: !1033)
!1098 = !DILocation(line: 104, column: 1, scope: !1036, inlinedAt: !1049)
!1099 = !DILocation(line: 464, column: 9, scope: !1014)
!1100 = !DILocation(line: 97, column: 8, scope: !1036, inlinedAt: !1049)
!1101 = !DILocation(line: 97, column: 11, scope: !1036, inlinedAt: !1049)
!1102 = !DILocation(line: 466, column: 9, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1014, file: !1, line: 466, column: 9)
!1104 = !DILocation(line: 466, column: 31, scope: !1103)
!1105 = !DILocation(line: 466, column: 9, scope: !1014)
!1106 = !DILocation(line: 469, column: 8, scope: !1014)
!1107 = !DILocation(line: 469, column: 24, scope: !1014)
!1108 = !DILocation(line: 470, column: 22, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1014, file: !1, line: 470, column: 9)
!1110 = !{!165, !166, i64 200}
!1111 = !DILocation(line: 470, column: 27, scope: !1109)
!1112 = !DILocation(line: 470, column: 9, scope: !1014)
!1113 = !DILocation(line: 471, column: 29, scope: !1109)
!1114 = !DILocation(line: 471, column: 27, scope: !1109)
!1115 = !DILocation(line: 471, column: 9, scope: !1109)
!1116 = !DILocation(line: 473, column: 9, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1014, file: !1, line: 473, column: 9)
!1118 = !DILocation(line: 0, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1120, file: !1, line: 481, column: 13)
!1120 = distinct !DILexicalBlock(scope: !1117, file: !1, line: 480, column: 12)
!1121 = !DILocation(line: 473, column: 9, scope: !1014)
!1122 = !DILocation(line: 474, column: 24, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1124, file: !1, line: 474, column: 13)
!1124 = distinct !DILexicalBlock(scope: !1117, file: !1, line: 473, column: 18)
!1125 = !DILocation(line: 474, column: 13, scope: !1124)
!1126 = !DILocation(line: 475, column: 28, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1128, file: !1, line: 475, column: 17)
!1128 = distinct !DILexicalBlock(scope: !1123, file: !1, line: 474, column: 36)
!1129 = !DILocation(line: 475, column: 17, scope: !1128)
!1130 = !DILocation(line: 476, column: 30, scope: !1127)
!1131 = !DILocation(line: 476, column: 28, scope: !1127)
!1132 = !DILocation(line: 476, column: 17, scope: !1127)
!1133 = !DILocation(line: 481, column: 13, scope: !1119)
!1134 = !DILocation(line: 481, column: 13, scope: !1120)
!1135 = !DILocation(line: 482, column: 13, scope: !1119)
!1136 = !DILocation(line: 483, column: 20, scope: !1120)
!1137 = !DILocation(line: 196, column: 50, scope: !604, inlinedAt: !1138)
!1138 = distinct !DILocation(line: 486, column: 9, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1014, file: !1, line: 486, column: 9)
!1140 = !DILocation(line: 198, column: 27, scope: !604, inlinedAt: !1138)
!1141 = !DILocation(line: 199, column: 10, scope: !604, inlinedAt: !1138)
!1142 = !DILocation(line: 202, column: 9, scope: !604, inlinedAt: !1138)
!1143 = !DILocation(line: 478, column: 23, scope: !1128)
!1144 = !DILocation(line: 478, column: 32, scope: !1128)
!1145 = !DILocation(line: 478, column: 13, scope: !1128)
!1146 = !DILocation(line: 198, column: 40, scope: !604, inlinedAt: !1138)
!1147 = !DILocation(line: 202, column: 17, scope: !623, inlinedAt: !1138)
!1148 = !DILocation(line: 203, column: 22, scope: !625, inlinedAt: !1138)
!1149 = !DILocation(line: 203, column: 30, scope: !625, inlinedAt: !1138)
!1150 = !DILocation(line: 203, column: 40, scope: !625, inlinedAt: !1138)
!1151 = !DILocation(line: 203, column: 52, scope: !625, inlinedAt: !1138)
!1152 = !DILocation(line: 203, column: 59, scope: !625, inlinedAt: !1138)
!1153 = !DILocation(line: 203, column: 13, scope: !626, inlinedAt: !1138)
!1154 = !DILocation(line: 208, column: 33, scope: !626, inlinedAt: !1138)
!1155 = !DILocation(line: 208, column: 62, scope: !626, inlinedAt: !1138)
!1156 = !DILocation(line: 208, column: 69, scope: !626, inlinedAt: !1138)
!1157 = !DILocation(line: 208, column: 41, scope: !626, inlinedAt: !1138)
!1158 = !DILocation(line: 210, column: 22, scope: !641, inlinedAt: !1138)
!1159 = !DILocation(line: 489, column: 19, scope: !1014)
!1160 = !{!1161, !161, i64 0}
!1161 = !{!"sockaddr_un", !161, i64 0, !161, i64 1}
!1162 = !DILocation(line: 490, column: 13, scope: !1014)
!1163 = !DILocation(line: 490, column: 5, scope: !1014)
!1164 = !DILocation(line: 491, column: 20, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1014, file: !1, line: 491, column: 9)
!1166 = !DILocation(line: 491, column: 24, scope: !1165)
!1167 = !DILocation(line: 491, column: 9, scope: !1165)
!1168 = !DILocation(line: 491, column: 59, scope: !1165)
!1169 = !DILocation(line: 491, column: 9, scope: !1014)
!1170 = !DILocation(line: 492, column: 13, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1172, file: !1, line: 492, column: 13)
!1172 = distinct !DILexicalBlock(scope: !1165, file: !1, line: 491, column: 66)
!1173 = !DILocation(line: 492, column: 19, scope: !1171)
!1174 = !DILocation(line: 492, column: 38, scope: !1171)
!1175 = !DILocation(line: 492, column: 34, scope: !1171)
!1176 = !DILocation(line: 495, column: 17, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1178, file: !1, line: 495, column: 17)
!1178 = distinct !DILexicalBlock(scope: !1171, file: !1, line: 494, column: 16)
!1179 = !DILocation(line: 495, column: 55, scope: !1177)
!1180 = !DILocation(line: 495, column: 17, scope: !1178)
!1181 = !DILocation(line: 501, column: 9, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1014, file: !1, line: 501, column: 9)
!1183 = !DILocation(line: 501, column: 18, scope: !1182)
!1184 = !DILocation(line: 501, column: 21, scope: !1182)
!1185 = !DILocation(line: 501, column: 43, scope: !1182)
!1186 = !DILocation(line: 501, column: 9, scope: !1014)
!1187 = !DILocation(line: 504, column: 14, scope: !1014)
!1188 = !DILocation(line: 505, column: 5, scope: !1014)
!1189 = !DILocation(line: 0, scope: !1014)
!1190 = !DILocation(line: 506, column: 1, scope: !1014)
!1191 = distinct !DISubprogram(name: "redisSetBlocking", scope: !1, file: !1, line: 106, type: !41, isLocal: true, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1192)
!1192 = !{!1193, !1194, !1195}
!1193 = !DILocalVariable(name: "c", arg: 1, scope: !1191, file: !1, line: 106, type: !43)
!1194 = !DILocalVariable(name: "blocking", arg: 2, scope: !1191, file: !1, line: 106, type: !34)
!1195 = !DILocalVariable(name: "flags", scope: !1191, file: !1, line: 107, type: !34)
!1196 = !DILocation(line: 69, column: 10, scope: !232, inlinedAt: !1197)
!1197 = distinct !DILocation(line: 124, column: 9, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !1, line: 123, column: 45)
!1199 = distinct !DILexicalBlock(scope: !1191, file: !1, line: 123, column: 9)
!1200 = !DILocation(line: 69, column: 10, scope: !232, inlinedAt: !1201)
!1201 = distinct !DILocation(line: 113, column: 9, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1203, file: !1, line: 112, column: 48)
!1203 = distinct !DILexicalBlock(scope: !1191, file: !1, line: 112, column: 9)
!1204 = !DILocation(line: 106, column: 43, scope: !1191)
!1205 = !DILocation(line: 106, column: 50, scope: !1191)
!1206 = !DILocation(line: 112, column: 27, scope: !1203)
!1207 = !DILocation(line: 112, column: 18, scope: !1203)
!1208 = !DILocation(line: 107, column: 9, scope: !1191)
!1209 = !DILocation(line: 112, column: 41, scope: !1203)
!1210 = !DILocation(line: 112, column: 9, scope: !1191)
!1211 = !DILocation(line: 68, column: 52, scope: !232, inlinedAt: !1201)
!1212 = !DILocation(line: 68, column: 59, scope: !232, inlinedAt: !1201)
!1213 = !DILocation(line: 68, column: 77, scope: !232, inlinedAt: !1201)
!1214 = !DILocation(line: 69, column: 5, scope: !232, inlinedAt: !1201)
!1215 = !DILocation(line: 70, column: 12, scope: !232, inlinedAt: !1201)
!1216 = !DILocation(line: 73, column: 15, scope: !265, inlinedAt: !1201)
!1217 = !DILocation(line: 74, column: 5, scope: !267, inlinedAt: !1201)
!1218 = !DILocation(line: 73, column: 9, scope: !265, inlinedAt: !1201)
!1219 = !DILocation(line: 75, column: 5, scope: !232, inlinedAt: !1201)
!1220 = !DILocation(line: 76, column: 1, scope: !232, inlinedAt: !1201)
!1221 = !DILocation(line: 61, column: 47, scope: !887, inlinedAt: !1222)
!1222 = distinct !DILocation(line: 114, column: 9, scope: !1202)
!1223 = !DILocation(line: 62, column: 17, scope: !895, inlinedAt: !1222)
!1224 = !DILocation(line: 62, column: 20, scope: !895, inlinedAt: !1222)
!1225 = !DILocation(line: 62, column: 9, scope: !887, inlinedAt: !1222)
!1226 = !DILocation(line: 63, column: 9, scope: !899, inlinedAt: !1222)
!1227 = !DILocation(line: 64, column: 15, scope: !899, inlinedAt: !1222)
!1228 = !DILocation(line: 65, column: 5, scope: !899, inlinedAt: !1222)
!1229 = !DILocation(line: 118, column: 9, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1191, file: !1, line: 118, column: 9)
!1231 = !DILocation(line: 119, column: 15, scope: !1230)
!1232 = !DILocation(line: 121, column: 15, scope: !1230)
!1233 = !DILocation(line: 118, column: 9, scope: !1191)
!1234 = !DILocation(line: 123, column: 18, scope: !1199)
!1235 = !DILocation(line: 123, column: 9, scope: !1199)
!1236 = !DILocation(line: 123, column: 38, scope: !1199)
!1237 = !DILocation(line: 123, column: 9, scope: !1191)
!1238 = !DILocation(line: 68, column: 52, scope: !232, inlinedAt: !1197)
!1239 = !DILocation(line: 68, column: 59, scope: !232, inlinedAt: !1197)
!1240 = !DILocation(line: 68, column: 77, scope: !232, inlinedAt: !1197)
!1241 = !DILocation(line: 69, column: 5, scope: !232, inlinedAt: !1197)
!1242 = !DILocation(line: 70, column: 12, scope: !232, inlinedAt: !1197)
!1243 = !DILocation(line: 73, column: 15, scope: !265, inlinedAt: !1197)
!1244 = !DILocation(line: 74, column: 5, scope: !267, inlinedAt: !1197)
!1245 = !DILocation(line: 73, column: 9, scope: !265, inlinedAt: !1197)
!1246 = !DILocation(line: 75, column: 5, scope: !232, inlinedAt: !1197)
!1247 = !DILocation(line: 76, column: 1, scope: !232, inlinedAt: !1197)
!1248 = !DILocation(line: 61, column: 47, scope: !887, inlinedAt: !1249)
!1249 = distinct !DILocation(line: 125, column: 9, scope: !1198)
!1250 = !DILocation(line: 62, column: 17, scope: !895, inlinedAt: !1249)
!1251 = !DILocation(line: 62, column: 20, scope: !895, inlinedAt: !1249)
!1252 = !DILocation(line: 62, column: 9, scope: !887, inlinedAt: !1249)
!1253 = !DILocation(line: 63, column: 9, scope: !899, inlinedAt: !1249)
!1254 = !DILocation(line: 64, column: 15, scope: !899, inlinedAt: !1249)
!1255 = !DILocation(line: 65, column: 5, scope: !899, inlinedAt: !1249)
!1256 = !DILocation(line: 0, scope: !1191)
!1257 = !DILocation(line: 129, column: 1, scope: !1191)
!1258 = distinct !DISubprogram(name: "redisContextWaitReady", scope: !1, file: !1, line: 219, type: !1259, isLocal: true, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1261)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!34, !43, !124}
!1261 = !{!1262, !1263, !1264, !1274}
!1262 = !DILocalVariable(name: "c", arg: 1, scope: !1258, file: !1, line: 219, type: !43)
!1263 = !DILocalVariable(name: "msec", arg: 2, scope: !1258, file: !1, line: 219, type: !124)
!1264 = !DILocalVariable(name: "wfd", scope: !1258, file: !1, line: 220, type: !1265)
!1265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1266, size: 64, elements: !1272)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !18, line: 542, size: 64, elements: !1267)
!1267 = !{!1268, !1269, !1271}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1266, file: !18, line: 544, baseType: !34, size: 32)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1266, file: !18, line: 545, baseType: !1270, size: 16, offset: 32)
!1270 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1266, file: !18, line: 546, baseType: !1270, size: 16, offset: 48)
!1272 = !{!1273}
!1273 = !DISubrange(count: 1)
!1274 = !DILocalVariable(name: "res", scope: !1275, file: !1, line: 226, type: !34)
!1275 = distinct !DILexicalBlock(scope: !1276, file: !1, line: 225, column: 31)
!1276 = distinct !DILexicalBlock(scope: !1258, file: !1, line: 225, column: 9)
!1277 = !DILocation(line: 69, column: 10, scope: !232, inlinedAt: !1278)
!1278 = distinct !DILocation(line: 245, column: 5, scope: !1258)
!1279 = !DILocation(line: 69, column: 10, scope: !232, inlinedAt: !1280)
!1280 = distinct !DILocation(line: 234, column: 13, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1282, file: !1, line: 232, column: 30)
!1282 = distinct !DILexicalBlock(scope: !1283, file: !1, line: 232, column: 20)
!1283 = distinct !DILexicalBlock(scope: !1275, file: !1, line: 228, column: 13)
!1284 = !DILocation(line: 69, column: 10, scope: !232, inlinedAt: !1285)
!1285 = distinct !DILocation(line: 229, column: 13, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1283, file: !1, line: 228, column: 47)
!1287 = !DILocation(line: 219, column: 48, scope: !1258)
!1288 = !DILocation(line: 219, column: 56, scope: !1258)
!1289 = !DILocation(line: 220, column: 5, scope: !1258)
!1290 = !DILocation(line: 220, column: 21, scope: !1258)
!1291 = !DILocation(line: 222, column: 24, scope: !1258)
!1292 = !DILocation(line: 222, column: 12, scope: !1258)
!1293 = !DILocation(line: 222, column: 19, scope: !1258)
!1294 = !{!1295, !160, i64 0}
!1295 = !{!"pollfd", !160, i64 0, !1296, i64 4, !1296, i64 6}
!1296 = !{!"short", !161, i64 0}
!1297 = !DILocation(line: 223, column: 12, scope: !1258)
!1298 = !DILocation(line: 223, column: 19, scope: !1258)
!1299 = !{!1295, !1296, i64 4}
!1300 = !DILocation(line: 225, column: 9, scope: !1276)
!1301 = !DILocation(line: 225, column: 15, scope: !1276)
!1302 = !DILocation(line: 225, column: 9, scope: !1258)
!1303 = !DILocation(line: 228, column: 25, scope: !1283)
!1304 = !DILocation(line: 228, column: 33, scope: !1283)
!1305 = !DILocation(line: 228, column: 20, scope: !1283)
!1306 = !DILocation(line: 226, column: 13, scope: !1275)
!1307 = !DILocation(line: 228, column: 13, scope: !1275)
!1308 = !DILocation(line: 68, column: 52, scope: !232, inlinedAt: !1285)
!1309 = !DILocation(line: 68, column: 59, scope: !232, inlinedAt: !1285)
!1310 = !DILocation(line: 68, column: 77, scope: !232, inlinedAt: !1285)
!1311 = !DILocation(line: 69, column: 5, scope: !232, inlinedAt: !1285)
!1312 = !DILocation(line: 70, column: 12, scope: !232, inlinedAt: !1285)
!1313 = !DILocation(line: 73, column: 15, scope: !265, inlinedAt: !1285)
!1314 = !DILocation(line: 74, column: 5, scope: !267, inlinedAt: !1285)
!1315 = !DILocation(line: 73, column: 9, scope: !265, inlinedAt: !1285)
!1316 = !DILocation(line: 75, column: 5, scope: !232, inlinedAt: !1285)
!1317 = !DILocation(line: 76, column: 1, scope: !232, inlinedAt: !1285)
!1318 = !DILocation(line: 61, column: 47, scope: !887, inlinedAt: !1319)
!1319 = distinct !DILocation(line: 230, column: 13, scope: !1286)
!1320 = !DILocation(line: 62, column: 17, scope: !895, inlinedAt: !1319)
!1321 = !DILocation(line: 62, column: 20, scope: !895, inlinedAt: !1319)
!1322 = !DILocation(line: 62, column: 9, scope: !887, inlinedAt: !1319)
!1323 = !DILocation(line: 63, column: 9, scope: !899, inlinedAt: !1319)
!1324 = !DILocation(line: 64, column: 15, scope: !899, inlinedAt: !1319)
!1325 = !DILocation(line: 65, column: 5, scope: !899, inlinedAt: !1319)
!1326 = !DILocation(line: 233, column: 13, scope: !1281)
!1327 = !DILocation(line: 233, column: 19, scope: !1281)
!1328 = !DILocation(line: 68, column: 52, scope: !232, inlinedAt: !1280)
!1329 = !DILocation(line: 68, column: 59, scope: !232, inlinedAt: !1280)
!1330 = !DILocation(line: 68, column: 77, scope: !232, inlinedAt: !1280)
!1331 = !DILocation(line: 69, column: 5, scope: !232, inlinedAt: !1280)
!1332 = !DILocation(line: 70, column: 12, scope: !232, inlinedAt: !1280)
!1333 = !DILocation(line: 74, column: 5, scope: !267, inlinedAt: !1280)
!1334 = !DILocation(line: 75, column: 5, scope: !232, inlinedAt: !1280)
!1335 = !DILocation(line: 76, column: 1, scope: !232, inlinedAt: !1280)
!1336 = !DILocation(line: 61, column: 47, scope: !887, inlinedAt: !1337)
!1337 = distinct !DILocation(line: 235, column: 13, scope: !1281)
!1338 = !DILocation(line: 62, column: 17, scope: !895, inlinedAt: !1337)
!1339 = !DILocation(line: 62, column: 20, scope: !895, inlinedAt: !1337)
!1340 = !DILocation(line: 62, column: 9, scope: !887, inlinedAt: !1337)
!1341 = !DILocation(line: 63, column: 9, scope: !899, inlinedAt: !1337)
!1342 = !DILocation(line: 64, column: 15, scope: !899, inlinedAt: !1337)
!1343 = !DILocation(line: 65, column: 5, scope: !899, inlinedAt: !1337)
!1344 = !DILocation(line: 239, column: 13, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1275, file: !1, line: 239, column: 13)
!1346 = !DILocation(line: 239, column: 38, scope: !1345)
!1347 = !DILocation(line: 242, column: 9, scope: !1275)
!1348 = !DILocation(line: 68, column: 52, scope: !232, inlinedAt: !1278)
!1349 = !DILocation(line: 68, column: 59, scope: !232, inlinedAt: !1278)
!1350 = !DILocation(line: 68, column: 77, scope: !232, inlinedAt: !1278)
!1351 = !DILocation(line: 69, column: 5, scope: !232, inlinedAt: !1278)
!1352 = !DILocation(line: 70, column: 12, scope: !232, inlinedAt: !1278)
!1353 = !DILocation(line: 74, column: 5, scope: !267, inlinedAt: !1278)
!1354 = !DILocation(line: 75, column: 5, scope: !232, inlinedAt: !1278)
!1355 = !DILocation(line: 76, column: 1, scope: !232, inlinedAt: !1278)
!1356 = !DILocation(line: 61, column: 47, scope: !887, inlinedAt: !1357)
!1357 = distinct !DILocation(line: 246, column: 5, scope: !1258)
!1358 = !DILocation(line: 62, column: 17, scope: !895, inlinedAt: !1357)
!1359 = !DILocation(line: 62, column: 20, scope: !895, inlinedAt: !1357)
!1360 = !DILocation(line: 62, column: 9, scope: !887, inlinedAt: !1357)
!1361 = !DILocation(line: 63, column: 9, scope: !899, inlinedAt: !1357)
!1362 = !DILocation(line: 64, column: 15, scope: !899, inlinedAt: !1357)
!1363 = !DILocation(line: 65, column: 5, scope: !899, inlinedAt: !1357)
!1364 = !DILocation(line: 0, scope: !1258)
!1365 = !DILocation(line: 248, column: 1, scope: !1258)
