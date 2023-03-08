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
@__A_VARIABLE = internal global i32 0

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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !181
  %10 = icmp ult i64 %9, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !182
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !182
  br i1 %10, label %16, label %11, !dbg !182

; <label>:11:                                     ; preds = %2
  %12 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !183, !srcloc !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !186
  %13 = icmp ugt i64 %12, ptrtoint ([0 x i8]* @_end to i64), !dbg !182
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !187
  br i1 %13, label %16, label %14, !dbg !187

; <label>:14:                                     ; preds = %11
  %15 = call i32 @setsockopt(i32 %7, i32 4095, i32 8, i8* nonnull %5, i32 4) #5, !dbg !188
  store i32 %15, i32* %4, align 4, !dbg !188, !tbaa !159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !188
  br label %27, !dbg !188

; <label>:16:                                     ; preds = %11, %2
  %17 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !191, !srcloc !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !201
  %18 = and i64 %17, -65536, !dbg !203
  %19 = or i64 %18, 4097, !dbg !203
  %20 = add nsw i64 %19, -1, !dbg !203
  %21 = inttoptr i64 %20 to i32*, !dbg !204
  %22 = load i32, i32* %21, align 4096, !dbg !205, !tbaa !159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !206
  %23 = ptrtoint i32* %3 to i64, !dbg !207
  %24 = sext i32 %7 to i64, !dbg !207
  %25 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call setsockopt\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r8},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %24, i64 4095, i64 8, i64 %23, i64 4, i32 %22, i32 (i32, i32, i32, i8*, i32)* nonnull @setsockopt) #4, !dbg !207, !srcloc !208
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %4, i64 %25) #4, !dbg !209, !srcloc !212
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %26 = load i32, i32* %4, align 4, !dbg !213, !tbaa !159
  br label %27

; <label>:27:                                     ; preds = %16, %14
  %28 = phi i32 [ %26, %16 ], [ %15, %14 ], !dbg !213
  %29 = icmp eq i32 %28, -1, !dbg !215
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !216
  br i1 %29, label %30, label %34, !dbg !216

; <label>:30:                                     ; preds = %27
  %31 = call i32* @__errno() #5, !dbg !217
  %32 = load i32, i32* %31, align 4, !dbg !217, !tbaa !159
  %33 = call i8* @strerror(i32 %32) #5, !dbg !219
  call void @__redisSetError(%struct.redisContext* nonnull %0, i32 2, i8* %33) #5, !dbg !220
  br label %35, !dbg !221

; <label>:34:                                     ; preds = %27
  store i32 %1, i32* %3, align 4, !dbg !222, !tbaa !159
  br label %35, !dbg !223

; <label>:35:                                     ; preds = %34, %30
  %36 = phi i32 [ -1, %30 ], [ 0, %34 ], !dbg !224
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !225
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #4, !dbg !226
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #4, !dbg !226
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !226
  ret i32 %36, !dbg !226
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
define dso_local i32 @redisCheckSocketError(%struct.redisContext*) local_unnamed_addr #0 !dbg !227 {
  %2 = alloca [128 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = bitcast i32* %3 to i8*, !dbg !256
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #4, !dbg !256
  store i32 0, i32* %3, align 4, !dbg !257, !tbaa !159
  %6 = bitcast i32* %4 to i8*, !dbg !258
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #4, !dbg !258
  store i32 4, i32* %4, align 4, !dbg !259, !tbaa !159
  %7 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 2, !dbg !260
  %8 = load i32, i32* %7, align 4, !dbg !260, !tbaa !164
  %9 = call i32 @getsockopt(i32 %8, i32 4095, i32 4103, i8* nonnull %5, i32* nonnull %4) #5, !dbg !261
  %10 = icmp eq i32 %9, -1, !dbg !262
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !263
  br i1 %10, label %11, label %20, !dbg !263

; <label>:11:                                     ; preds = %1
  %12 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0, !dbg !267
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %12) #4, !dbg !267
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %12, i8 0, i64 128, i1 false) #4, !dbg !251
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !269
  %13 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %12, i64 128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0)) #5, !dbg !270
  %14 = sext i32 %13 to i64, !dbg !270
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !272
  %15 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 %14, !dbg !273
  %16 = sub nsw i64 128, %14, !dbg !272
  %17 = call i32* @__errno() #5, !dbg !273
  %18 = load i32, i32* %17, align 4, !dbg !273, !tbaa !159
  %19 = call i32 @__xpg_strerror_r(i32 %18, i8* nonnull %15, i64 %16) #5, !dbg !273
  call void @__redisSetError(%struct.redisContext* nonnull %0, i32 1, i8* nonnull %12) #5, !dbg !275
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %12) #4, !dbg !276
  br label %29, !dbg !277

; <label>:20:                                     ; preds = %1
  %21 = load i32, i32* %3, align 4, !dbg !278, !tbaa !159
  %22 = icmp eq i32 %21, 0, !dbg !278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !279
  br i1 %22, label %30, label %23, !dbg !279

; <label>:23:                                     ; preds = %20
  %24 = call i32* @__errno() #5, !dbg !280
  store i32 %21, i32* %24, align 4, !dbg !281, !tbaa !159
  %25 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0, !dbg !285
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %25) #4, !dbg !285
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %25, i8 0, i64 128, i1 false) #4, !dbg !247
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !287
  %26 = call i32* @__errno() #5, !dbg !288
  %27 = load i32, i32* %26, align 4, !dbg !288, !tbaa !159
  %28 = call i32 @__xpg_strerror_r(i32 %27, i8* nonnull %25, i64 128) #5, !dbg !288
  call void @__redisSetError(%struct.redisContext* nonnull %0, i32 1, i8* nonnull %25) #5, !dbg !289
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %25) #4, !dbg !290
  br label %29, !dbg !291

; <label>:29:                                     ; preds = %11, %23
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !290
  br label %30, !dbg !292

; <label>:30:                                     ; preds = %29, %20
  %31 = phi i32 [ 0, %20 ], [ -1, %29 ], !dbg !293
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !292
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #4, !dbg !294
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #4, !dbg !294
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !294
  ret i32 %31, !dbg !294
}

; Function Attrs: noredzone
declare dso_local i32 @getsockopt(i32, i32, i32, i8*, i32*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @redisContextSetTimeout(%struct.redisContext*, i64, i64) local_unnamed_addr #0 !dbg !295 {
  %4 = alloca [128 x i8], align 16
  %5 = alloca %struct.timeval, align 8
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i64 0, i32 0
  store i64 %1, i64* %7, align 8
  %8 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i64 0, i32 1
  store i64 %2, i64* %8, align 8
  %9 = bitcast i32* %6 to i8*, !dbg !332
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #4, !dbg !332
  %10 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !333, !srcloc !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !336
  %11 = icmp ult i64 %10, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !337
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !337
  br i1 %11, label %20, label %12, !dbg !337

; <label>:12:                                     ; preds = %3
  %13 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !338, !srcloc !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !341
  %14 = icmp ugt i64 %13, ptrtoint ([0 x i8]* @_end to i64), !dbg !337
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !342
  br i1 %14, label %20, label %15, !dbg !342

; <label>:15:                                     ; preds = %12
  %16 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 2, !dbg !343
  %17 = load i32, i32* %16, align 4, !dbg !343, !tbaa !164
  %18 = bitcast %struct.timeval* %5 to i8*, !dbg !343
  %19 = call i32 @setsockopt(i32 %17, i32 4095, i32 4102, i8* nonnull %18, i32 16) #5, !dbg !343
  store i32 %19, i32* %6, align 4, !dbg !343, !tbaa !159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !343
  br label %33, !dbg !343

; <label>:20:                                     ; preds = %12, %3
  %21 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !346, !srcloc !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !350
  %22 = and i64 %21, -65536, !dbg !352
  %23 = or i64 %22, 4097, !dbg !352
  %24 = add nsw i64 %23, -1, !dbg !352
  %25 = inttoptr i64 %24 to i32*, !dbg !353
  %26 = load i32, i32* %25, align 4096, !dbg !354, !tbaa !159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !355
  %27 = ptrtoint %struct.timeval* %5 to i64, !dbg !356
  %28 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 2, !dbg !356
  %29 = load i32, i32* %28, align 4, !dbg !356, !tbaa !164
  %30 = sext i32 %29 to i64, !dbg !356
  %31 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call setsockopt\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r8},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %30, i64 4095, i64 4102, i64 %27, i64 16, i32 %26, i32 (i32, i32, i32, i8*, i32)* nonnull @setsockopt) #4, !dbg !356, !srcloc !357
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %6, i64 %31) #4, !dbg !358, !srcloc !361
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %32 = load i32, i32* %6, align 4, !dbg !362, !tbaa !159
  br label %33

; <label>:33:                                     ; preds = %20, %15
  %34 = phi i32 [ %32, %20 ], [ %19, %15 ], !dbg !362
  %35 = icmp eq i32 %34, -1, !dbg !363
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !364
  br i1 %35, label %36, label %45, !dbg !364

; <label>:36:                                     ; preds = %33
  %37 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0, !dbg !368
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %37) #4, !dbg !368
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %37, i8 0, i64 128, i1 false) #4, !dbg !327
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !370
  %38 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %37, i64 128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !371
  %39 = sext i32 %38 to i64, !dbg !371
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !372
  %40 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 %39, !dbg !373
  %41 = sub nsw i64 128, %39, !dbg !372
  %42 = call i32* @__errno() #5, !dbg !373
  %43 = load i32, i32* %42, align 4, !dbg !373, !tbaa !159
  %44 = call i32 @__xpg_strerror_r(i32 %43, i8* nonnull %40, i64 %41) #5, !dbg !373
  call void @__redisSetError(%struct.redisContext* nonnull %0, i32 1, i8* nonnull %37) #5, !dbg !374
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %37) #4, !dbg !375
  br label %81, !dbg !376

; <label>:45:                                     ; preds = %33
  %46 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !377, !srcloc !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !380
  %47 = icmp ult i64 %46, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !381
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !381
  br i1 %47, label %56, label %48, !dbg !381

; <label>:48:                                     ; preds = %45
  %49 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !382, !srcloc !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !385
  %50 = icmp ugt i64 %49, ptrtoint ([0 x i8]* @_end to i64), !dbg !381
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !386
  br i1 %50, label %56, label %51, !dbg !386

; <label>:51:                                     ; preds = %48
  %52 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 2, !dbg !387
  %53 = load i32, i32* %52, align 4, !dbg !387, !tbaa !164
  %54 = bitcast %struct.timeval* %5 to i8*, !dbg !387
  %55 = call i32 @setsockopt(i32 %53, i32 4095, i32 4101, i8* nonnull %54, i32 16) #5, !dbg !387
  store i32 %55, i32* %6, align 4, !dbg !387, !tbaa !159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !387
  br label %69, !dbg !387

; <label>:56:                                     ; preds = %48, %45
  %57 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !389, !srcloc !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !393
  %58 = and i64 %57, -65536, !dbg !395
  %59 = or i64 %58, 4097, !dbg !395
  %60 = add nsw i64 %59, -1, !dbg !395
  %61 = inttoptr i64 %60 to i32*, !dbg !396
  %62 = load i32, i32* %61, align 4096, !dbg !397, !tbaa !159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !398
  %63 = ptrtoint %struct.timeval* %5 to i64, !dbg !399
  %64 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 2, !dbg !399
  %65 = load i32, i32* %64, align 4, !dbg !399, !tbaa !164
  %66 = sext i32 %65 to i64, !dbg !399
  %67 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call setsockopt\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r8},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %66, i64 4095, i64 4101, i64 %63, i64 16, i32 %62, i32 (i32, i32, i32, i8*, i32)* nonnull @setsockopt) #4, !dbg !399, !srcloc !400
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %6, i64 %67) #4, !dbg !401, !srcloc !404
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %68 = load i32, i32* %6, align 4, !dbg !405, !tbaa !159
  br label %69

; <label>:69:                                     ; preds = %56, %51
  %70 = phi i32 [ %68, %56 ], [ %55, %51 ], !dbg !405
  %71 = icmp eq i32 %70, -1, !dbg !406
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !407
  br i1 %71, label %72, label %82, !dbg !407

; <label>:72:                                     ; preds = %69
  %73 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0, !dbg !411
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %73) #4, !dbg !411
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %73, i8 0, i64 128, i1 false) #4, !dbg !323
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !413
  %74 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %73, i64 128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0)) #5, !dbg !414
  %75 = sext i32 %74 to i64, !dbg !414
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !415
  %76 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 %75, !dbg !416
  %77 = sub nsw i64 128, %75, !dbg !415
  %78 = call i32* @__errno() #5, !dbg !416
  %79 = load i32, i32* %78, align 4, !dbg !416, !tbaa !159
  %80 = call i32 @__xpg_strerror_r(i32 %79, i8* nonnull %76, i64 %77) #5, !dbg !416
  call void @__redisSetError(%struct.redisContext* nonnull %0, i32 1, i8* nonnull %73) #5, !dbg !417
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %73) #4, !dbg !418
  br label %81, !dbg !419

; <label>:81:                                     ; preds = %36, %72
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !418
  br label %82, !dbg !420

; <label>:82:                                     ; preds = %81, %69
  %83 = phi i32 [ 0, %69 ], [ -1, %81 ], !dbg !421
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !420
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #4, !dbg !422
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !422
  ret i32 %83, !dbg !422
}

; Function Attrs: noredzone nounwind
define dso_local i32 @redisContextConnectTcp(%struct.redisContext*, i8*, i32, %struct.timeval*) local_unnamed_addr #0 !dbg !423 {
  %5 = tail call fastcc i32 @_redisContextConnectTcp(%struct.redisContext* %0, i8* %1, i32 %2, %struct.timeval* %3, i8* null) #6, !dbg !436
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !437
  ret i32 %5, !dbg !437
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @_redisContextConnectTcp(%struct.redisContext*, i8*, i32, %struct.timeval*, i8*) unnamed_addr #0 !dbg !438 {
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
  %20 = bitcast i32* %9 to i8*, !dbg !566
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %20) #4, !dbg !566
  %21 = bitcast i32* %10 to i8*, !dbg !566
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %21) #4, !dbg !566
  %22 = bitcast i32* %11 to i8*, !dbg !566
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #4, !dbg !566
  %23 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 0, !dbg !567
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %23) #4, !dbg !567
  %24 = bitcast %struct.addrinfo* %13 to i8*, !dbg !569
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %24) #4, !dbg !569
  %25 = bitcast %struct.addrinfo** %14 to i8*, !dbg !569
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %25) #4, !dbg !569
  %26 = bitcast %struct.addrinfo** %15 to i8*, !dbg !569
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #4, !dbg !569
  %27 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 3, !dbg !570
  %28 = load i32, i32* %27, align 8, !dbg !570, !tbaa !571
  %29 = and i32 %28, 1, !dbg !572
  %30 = and i32 %28, 128, !dbg !574
  store %struct.addrinfo* null, %struct.addrinfo** %14, align 8, !dbg !579, !tbaa !580
  %31 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 6, !dbg !581
  store i32 0, i32* %31, align 8, !dbg !582, !tbaa !583
  %32 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 8, i32 2, !dbg !584
  store i32 %2, i32* %32, align 8, !dbg !585, !tbaa !586
  %33 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 8, i32 0, !dbg !587
  %34 = load i8*, i8** %33, align 8, !dbg !587, !tbaa !589
  %35 = icmp eq i8* %34, %1, !dbg !590
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !591
  br i1 %35, label %41, label %36, !dbg !591

; <label>:36:                                     ; preds = %5
  %37 = icmp eq i8* %34, null, !dbg !592
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !595
  br i1 %37, label %39, label %38, !dbg !595

; <label>:38:                                     ; preds = %36
  tail call void @free(i8* nonnull %34) #5, !dbg !596
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !596
  br label %39, !dbg !596

; <label>:39:                                     ; preds = %36, %38
  %40 = tail call i8* @strdup(i8* %1) #5, !dbg !597
  store i8* %40, i8** %33, align 8, !dbg !598, !tbaa !589
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !599
  br label %41, !dbg !599

; <label>:41:                                     ; preds = %5, %39
  %42 = icmp eq %struct.timeval* %3, null, !dbg !600
  %43 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 7, !dbg !602
  %44 = load %struct.timeval*, %struct.timeval** %43, align 8, !dbg !602, !tbaa !605
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !606
  %45 = bitcast %struct.timeval* %44 to i8*, !dbg !606
  br i1 %42, label %54, label %46, !dbg !606

; <label>:46:                                     ; preds = %41
  %47 = icmp eq %struct.timeval* %44, %3, !dbg !607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !610
  br i1 %47, label %48, label %49, !dbg !610

; <label>:48:                                     ; preds = %46
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !625
  br label %64, !dbg !625

; <label>:49:                                     ; preds = %46
  %50 = icmp eq %struct.timeval* %44, null, !dbg !626
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !629
  br i1 %50, label %51, label %58, !dbg !629

; <label>:51:                                     ; preds = %49
  %52 = tail call i8* @malloc(i64 16) #5, !dbg !630
  %53 = bitcast %struct.timeval** %43 to i8**, !dbg !631
  store i8* %52, i8** %53, align 8, !dbg !631, !tbaa !605
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !632
  br label %58, !dbg !632

; <label>:54:                                     ; preds = %41
  %55 = icmp eq %struct.timeval* %44, null, !dbg !633
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !634
  br i1 %55, label %57, label %56, !dbg !634

; <label>:56:                                     ; preds = %54
  tail call void @free(i8* %45) #5, !dbg !635
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !635
  br label %57, !dbg !635

; <label>:57:                                     ; preds = %56, %54
  store %struct.timeval* null, %struct.timeval** %43, align 8, !dbg !636, !tbaa !605
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %81, !dbg !625

; <label>:58:                                     ; preds = %51, %49
  %59 = phi i8* [ %52, %51 ], [ %45, %49 ], !dbg !637
  %60 = bitcast %struct.timeval* %3 to i8*, !dbg !638
  %61 = tail call i8* @memcpy(i8* %59, i8* %60, i64 16) #5, !dbg !639
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !640
  %62 = load %struct.timeval*, %struct.timeval** %43, align 8, !dbg !641, !tbaa !605
  %63 = icmp eq %struct.timeval* %62, null, !dbg !642
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !625
  br i1 %63, label %83, label %64, !dbg !625

; <label>:64:                                     ; preds = %48, %58
  %65 = phi %struct.timeval* [ %3, %48 ], [ %62, %58 ]
  %66 = getelementptr inbounds %struct.timeval, %struct.timeval* %65, i64 0, i32 1, !dbg !644
  %67 = load i64, i64* %66, align 8, !dbg !644, !tbaa !647
  %68 = icmp sgt i64 %67, 1000000, !dbg !650
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !651
  br i1 %68, label %80, label %69, !dbg !651

; <label>:69:                                     ; preds = %64
  %70 = getelementptr inbounds %struct.timeval, %struct.timeval* %65, i64 0, i32 0, !dbg !652
  %71 = load i64, i64* %70, align 8, !dbg !652, !tbaa !653
  %72 = icmp sgt i64 %71, 9223372036854774, !dbg !654
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !655
  br i1 %72, label %80, label %73, !dbg !655

; <label>:73:                                     ; preds = %69
  %74 = mul nsw i64 %71, 1000, !dbg !656
  %75 = add nsw i64 %67, 999, !dbg !657
  %76 = sdiv i64 %75, 1000, !dbg !658
  %77 = add nsw i64 %74, %76, !dbg !659
  %78 = icmp ult i64 %77, 2147483647, !dbg !660
  %79 = select i1 %78, i64 %77, i64 2147483647, !dbg !660
  br label %81, !dbg !660

; <label>:80:                                     ; preds = %69, %64
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !662
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !664
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !665
  tail call void @__redisSetError(%struct.redisContext* nonnull %0, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !666
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !668
  br label %384, !dbg !668

; <label>:81:                                     ; preds = %57, %73
  %82 = phi i64 [ -1, %57 ], [ %79, %73 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !669
  br label %83, !dbg !670

; <label>:83:                                     ; preds = %81, %58
  %84 = phi i64 [ -1, %58 ], [ %82, %81 ], !dbg !671
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !670
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !664
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !665
  %85 = icmp eq i8* %4, null, !dbg !672
  %86 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 8, i32 1, !dbg !674
  %87 = load i8*, i8** %86, align 8, !dbg !674, !tbaa !676
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !677
  br i1 %85, label %88, label %89, !dbg !677

; <label>:88:                                     ; preds = %83
  tail call void @free(i8* %87) #5, !dbg !678
  br label %93, !dbg !680

; <label>:89:                                     ; preds = %83
  %90 = icmp eq i8* %87, %4, !dbg !681
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !682
  br i1 %90, label %95, label %91, !dbg !682

; <label>:91:                                     ; preds = %89
  tail call void @free(i8* %87) #5, !dbg !683
  %92 = tail call i8* @strdup(i8* nonnull %4) #5, !dbg !685
  br label %93, !dbg !686

; <label>:93:                                     ; preds = %88, %91
  %94 = phi i8* [ %92, %91 ], [ null, %88 ]
  store i8* %94, i8** %86, align 8, !dbg !687, !tbaa !676
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !687
  br label %95, !dbg !688

; <label>:95:                                     ; preds = %93, %89
  %96 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %23, i64 6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %2) #5, !dbg !688
  %97 = call i8* @memset(i8* nonnull %24, i32 0, i64 48) #5, !dbg !689
  %98 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %13, i64 0, i32 1, !dbg !690
  store i32 2, i32* %98, align 4, !dbg !691, !tbaa !692
  %99 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %13, i64 0, i32 2, !dbg !694
  store i32 1, i32* %99, align 8, !dbg !695, !tbaa !696
  %100 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !697, !srcloc !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !700
  %101 = icmp ult i64 %100, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !701
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !701
  br i1 %101, label %108, label %102, !dbg !701

; <label>:102:                                    ; preds = %95
  %103 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !702, !srcloc !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !705
  %104 = icmp ugt i64 %103, ptrtoint ([0 x i8]* @_end to i64), !dbg !701
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !706
  br i1 %104, label %108, label %105, !dbg !706

; <label>:105:                                    ; preds = %102
  %106 = load i8*, i8** %33, align 8, !dbg !707, !tbaa !589
  %107 = call i32 @getaddrinfo(i8* %106, i8* nonnull %23, %struct.addrinfo* nonnull %13, %struct.addrinfo** nonnull %14) #5, !dbg !707
  store i32 %107, i32* %10, align 4, !dbg !707, !tbaa !159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !707
  br label %122, !dbg !707

; <label>:108:                                    ; preds = %102, %95
  %109 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !711, !srcloc !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !715
  %110 = and i64 %109, -65536, !dbg !717
  %111 = or i64 %110, 4097, !dbg !717
  %112 = add nsw i64 %111, -1, !dbg !717
  %113 = inttoptr i64 %112 to i32*, !dbg !718
  %114 = load i32, i32* %113, align 4096, !dbg !719, !tbaa !159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !720
  %115 = ptrtoint %struct.addrinfo* %13 to i64, !dbg !721
  %116 = ptrtoint %struct.addrinfo** %14 to i64, !dbg !721
  %117 = bitcast i8** %33 to i64*, !dbg !721
  %118 = load i64, i64* %117, align 8, !dbg !721, !tbaa !589
  %119 = ptrtoint [6 x i8]* %12 to i64, !dbg !721
  %120 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call getaddrinfo\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %118, i64 %119, i64 %115, i64 %116, i32 %114, i32 (i8*, i8*, %struct.addrinfo*, %struct.addrinfo**)* nonnull @getaddrinfo) #4, !dbg !721, !srcloc !722
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %10, i64 %120) #4, !dbg !723, !srcloc !726
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %121 = load i32, i32* %10, align 4, !dbg !727, !tbaa !159
  br label %122

; <label>:122:                                    ; preds = %108, %105
  %123 = phi i32 [ %121, %108 ], [ %107, %105 ], !dbg !727
  %124 = icmp eq i32 %123, 0, !dbg !728
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !729
  br i1 %124, label %151, label %125, !dbg !729

; <label>:125:                                    ; preds = %122
  store i32 10, i32* %98, align 4, !dbg !730, !tbaa !692
  %126 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !731, !srcloc !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !734
  %127 = icmp ult i64 %126, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !735
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !735
  br i1 %127, label %133, label %128, !dbg !735

; <label>:128:                                    ; preds = %125
  %129 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !736, !srcloc !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !739
  %130 = icmp ugt i64 %129, ptrtoint ([0 x i8]* @_end to i64), !dbg !735
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !740
  br i1 %130, label %133, label %131, !dbg !740

; <label>:131:                                    ; preds = %128
  %132 = call i32 @getaddrinfo(i8* %1, i8* nonnull %23, %struct.addrinfo* nonnull %13, %struct.addrinfo** nonnull %14) #5, !dbg !741
  store i32 %132, i32* %10, align 4, !dbg !741, !tbaa !159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !741
  br label %146, !dbg !741

; <label>:133:                                    ; preds = %128, %125
  %134 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !743, !srcloc !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !747
  %135 = and i64 %134, -65536, !dbg !749
  %136 = or i64 %135, 4097, !dbg !749
  %137 = add nsw i64 %136, -1, !dbg !749
  %138 = inttoptr i64 %137 to i32*, !dbg !750
  %139 = load i32, i32* %138, align 4096, !dbg !751, !tbaa !159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !752
  %140 = ptrtoint %struct.addrinfo* %13 to i64, !dbg !753
  %141 = ptrtoint %struct.addrinfo** %14 to i64, !dbg !753
  %142 = ptrtoint i8* %1 to i64, !dbg !753
  %143 = ptrtoint [6 x i8]* %12 to i64, !dbg !753
  %144 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call getaddrinfo\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %142, i64 %143, i64 %140, i64 %141, i32 %139, i32 (i8*, i8*, %struct.addrinfo*, %struct.addrinfo**)* nonnull @getaddrinfo) #4, !dbg !753, !srcloc !754
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %10, i64 %144) #4, !dbg !755, !srcloc !758
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %145 = load i32, i32* %10, align 4, !dbg !759, !tbaa !159
  br label %146

; <label>:146:                                    ; preds = %133, %131
  %147 = phi i32 [ %145, %133 ], [ %132, %131 ], !dbg !759
  %148 = icmp eq i32 %147, 0, !dbg !761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !762
  br i1 %148, label %151, label %149, !dbg !762

; <label>:149:                                    ; preds = %146
  %150 = call i8* @gai_strerror(i32 %147) #5, !dbg !763
  call void @__redisSetError(%struct.redisContext* nonnull %0, i32 2, i8* %150) #5, !dbg !765
  br label %388, !dbg !766

; <label>:151:                                    ; preds = %146, %122
  %152 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8, !dbg !767, !tbaa !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !769
  %153 = icmp eq %struct.addrinfo* %152, null, !dbg !770
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !771
  br i1 %153, label %378, label %154, !dbg !771

; <label>:154:                                    ; preds = %151
  %155 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 2
  %156 = ptrtoint %struct.addrinfo* %13 to i64
  %157 = ptrtoint %struct.addrinfo** %15 to i64
  %158 = bitcast i8** %86 to i64*
  %159 = icmp ne i32 %29, 0
  %160 = icmp eq i32 %30, 0
  %161 = icmp ne i32 %30, 0
  %162 = bitcast i32* %17 to i8*
  %163 = ptrtoint i32* %11 to i64
  br label %164, !dbg !771

; <label>:164:                                    ; preds = %154, %374
  %165 = phi %struct.addrinfo* [ %152, %154 ], [ %376, %374 ]
  %166 = phi i32 [ 0, %154 ], [ %173, %374 ]
  %167 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %165, i64 0, i32 3
  %168 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %165, i64 0, i32 1
  %169 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %165, i64 0, i32 2
  %170 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %165, i64 0, i32 5
  %171 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %165, i64 0, i32 4
  br label %172, !dbg !772

; <label>:172:                                    ; preds = %164, %322
  %173 = phi i32 [ %317, %322 ], [ %166, %164 ], !dbg !774
  %174 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !772, !srcloc !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !783
  %175 = icmp ult i64 %174, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !784
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !784
  br i1 %175, label %184, label %176, !dbg !784

; <label>:176:                                    ; preds = %172
  %177 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !785, !srcloc !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !788
  %178 = icmp ugt i64 %177, ptrtoint ([0 x i8]* @_end to i64), !dbg !784
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !789
  br i1 %178, label %184, label %179, !dbg !789

; <label>:179:                                    ; preds = %176
  %180 = load i32, i32* %168, align 4, !dbg !790, !tbaa !692
  %181 = load i32, i32* %169, align 8, !dbg !790, !tbaa !696
  %182 = load i32, i32* %167, align 4, !dbg !790, !tbaa !792
  %183 = call i32 @socket(i32 %180, i32 %181, i32 %182) #5, !dbg !790
  store i32 %183, i32* %9, align 4, !dbg !790, !tbaa !159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !790
  br label %199, !dbg !790

; <label>:184:                                    ; preds = %176, %172
  %185 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !794, !srcloc !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !798
  %186 = and i64 %185, -65536, !dbg !800
  %187 = or i64 %186, 4097, !dbg !800
  %188 = add nsw i64 %187, -1, !dbg !800
  %189 = inttoptr i64 %188 to i32*, !dbg !801
  %190 = load i32, i32* %189, align 4096, !dbg !802, !tbaa !159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !803
  %191 = load i32, i32* %167, align 4, !dbg !804, !tbaa !792
  %192 = sext i32 %191 to i64, !dbg !804
  %193 = load i32, i32* %168, align 4, !dbg !804, !tbaa !692
  %194 = sext i32 %193 to i64, !dbg !804
  %195 = load i32, i32* %169, align 8, !dbg !804, !tbaa !696
  %196 = sext i32 %195 to i64, !dbg !804
  %197 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call socket\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %194, i64 %196, i64 %192, i32 %190, i32 (i32, i32, i32)* nonnull @socket) #4, !dbg !804, !srcloc !805
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %9, i64 %197) #4, !dbg !806, !srcloc !809
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %198 = load i32, i32* %9, align 4, !dbg !810, !tbaa !159
  br label %199

; <label>:199:                                    ; preds = %184, %179
  %200 = phi i32 [ %198, %184 ], [ %183, %179 ], !dbg !810
  %201 = icmp eq i32 %200, -1, !dbg !812
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !813
  br i1 %201, label %374, label %202, !dbg !813

; <label>:202:                                    ; preds = %199
  store i32 %200, i32* %155, align 4, !dbg !814, !tbaa !164
  %203 = call fastcc i32 @redisSetBlocking(%struct.redisContext* %0, i32 0) #6, !dbg !815
  %204 = icmp eq i32 %203, 0, !dbg !817
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !818
  br i1 %204, label %205, label %384, !dbg !818

; <label>:205:                                    ; preds = %202
  %206 = load i8*, i8** %86, align 8, !dbg !819, !tbaa !676
  %207 = icmp eq i8* %206, null, !dbg !820
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !821
  br i1 %207, label %287, label %208, !dbg !821

; <label>:208:                                    ; preds = %205
  %209 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !823, !srcloc !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !826
  %210 = icmp ult i64 %209, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !827
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !827
  br i1 %210, label %217, label %211, !dbg !827

; <label>:211:                                    ; preds = %208
  %212 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !828, !srcloc !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !831
  %213 = icmp ugt i64 %212, ptrtoint ([0 x i8]* @_end to i64), !dbg !827
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !832
  br i1 %213, label %217, label %214, !dbg !832

; <label>:214:                                    ; preds = %211
  %215 = load i8*, i8** %86, align 8, !dbg !833, !tbaa !676
  %216 = call i32 @getaddrinfo(i8* %215, i8* null, %struct.addrinfo* nonnull %13, %struct.addrinfo** nonnull %15) #5, !dbg !833
  store i32 %216, i32* %10, align 4, !dbg !833, !tbaa !159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !833
  br label %227, !dbg !833

; <label>:217:                                    ; preds = %211, %208
  %218 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !836, !srcloc !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !840
  %219 = and i64 %218, -65536, !dbg !842
  %220 = or i64 %219, 4097, !dbg !842
  %221 = add nsw i64 %220, -1, !dbg !842
  %222 = inttoptr i64 %221 to i32*, !dbg !843
  %223 = load i32, i32* %222, align 4096, !dbg !844, !tbaa !159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !845
  %224 = load i64, i64* %158, align 8, !dbg !846, !tbaa !676
  %225 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call getaddrinfo\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %224, i64 0, i64 %156, i64 %157, i32 %223, i32 (i8*, i8*, %struct.addrinfo*, %struct.addrinfo**)* nonnull @getaddrinfo) #4, !dbg !846, !srcloc !847
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %10, i64 %225) #4, !dbg !848, !srcloc !851
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %226 = load i32, i32* %10, align 4, !dbg !852, !tbaa !159
  br label %227

; <label>:227:                                    ; preds = %217, %214
  %228 = phi i32 [ %226, %217 ], [ %216, %214 ], !dbg !852
  %229 = icmp eq i32 %228, 0, !dbg !853
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !854
  br i1 %229, label %234, label %230, !dbg !854

; <label>:230:                                    ; preds = %227
  %231 = getelementptr inbounds [128 x i8], [128 x i8]* %16, i64 0, i64 0, !dbg !855
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %231) #4, !dbg !855
  %232 = call i8* @gai_strerror(i32 %228) #5, !dbg !857
  %233 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %231, i64 128, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* %232) #5, !dbg !858
  call void @__redisSetError(%struct.redisContext* nonnull %0, i32 2, i8* nonnull %231) #5, !dbg !859
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %231) #4, !dbg !860
  br label %283

; <label>:234:                                    ; preds = %227
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !861
  br i1 %160, label %258, label %235, !dbg !861

; <label>:235:                                    ; preds = %234
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %162) #4, !dbg !862
  store i32 1, i32* %11, align 4, !dbg !864, !tbaa !159
  %236 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !865, !srcloc !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !868
  %237 = icmp ult i64 %236, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !869
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !869
  br i1 %237, label %244, label %238, !dbg !869

; <label>:238:                                    ; preds = %235
  %239 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !870, !srcloc !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !873
  %240 = icmp ugt i64 %239, ptrtoint ([0 x i8]* @_end to i64), !dbg !869
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !874
  br i1 %240, label %244, label %241, !dbg !874

; <label>:241:                                    ; preds = %238
  %242 = load i32, i32* %9, align 4, !dbg !875, !tbaa !159
  %243 = call i32 @setsockopt(i32 %242, i32 4095, i32 4, i8* nonnull %22, i32 4) #5, !dbg !875
  store i32 %243, i32* %17, align 4, !dbg !875, !tbaa !159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !875
  br label %255, !dbg !875

; <label>:244:                                    ; preds = %238, %235
  %245 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !878, !srcloc !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !882
  %246 = and i64 %245, -65536, !dbg !884
  %247 = or i64 %246, 4097, !dbg !884
  %248 = add nsw i64 %247, -1, !dbg !884
  %249 = inttoptr i64 %248 to i32*, !dbg !885
  %250 = load i32, i32* %249, align 4096, !dbg !886, !tbaa !159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !887
  %251 = load i32, i32* %9, align 4, !dbg !888, !tbaa !159
  %252 = sext i32 %251 to i64, !dbg !888
  %253 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call setsockopt\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r8},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %252, i64 4095, i64 4, i64 %163, i64 4, i32 %250, i32 (i32, i32, i32, i8*, i32)* nonnull @setsockopt) #4, !dbg !888, !srcloc !889
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %17, i64 %253) #4, !dbg !890, !srcloc !893
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %254 = load i32, i32* %17, align 4, !dbg !894, !tbaa !159
  br label %255

; <label>:255:                                    ; preds = %244, %241
  %256 = phi i32 [ %254, %244 ], [ %243, %241 ], !dbg !894
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !896
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !897
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %162) #4, !dbg !898
  %257 = icmp sgt i32 %256, -1
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br i1 %257, label %258, label %284

; <label>:258:                                    ; preds = %234, %255
  %259 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8, !dbg !899, !tbaa !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !902
  %260 = icmp eq %struct.addrinfo* %259, null, !dbg !903
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !905
  br i1 %260, label %276, label %261, !dbg !905

; <label>:261:                                    ; preds = %258, %270
  %262 = phi %struct.addrinfo* [ %272, %270 ], [ %259, %258 ]
  %263 = load i32, i32* %9, align 4, !dbg !906, !tbaa !159
  %264 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %262, i64 0, i32 5, !dbg !909
  %265 = load %struct.sockaddr*, %struct.sockaddr** %264, align 8, !dbg !909, !tbaa !910
  %266 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %262, i64 0, i32 4, !dbg !911
  %267 = load i32, i32* %266, align 8, !dbg !911, !tbaa !912
  %268 = call i32 @bind(i32 %263, %struct.sockaddr* %265, i32 %267) #5, !dbg !913
  %269 = icmp eq i32 %268, -1, !dbg !914
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !915
  br i1 %269, label %270, label %285, !dbg !915

; <label>:270:                                    ; preds = %261
  %271 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %262, i64 0, i32 7, !dbg !916
  %272 = load %struct.addrinfo*, %struct.addrinfo** %271, align 8, !dbg !916, !tbaa !917
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !918
  %273 = icmp eq %struct.addrinfo* %272, null, !dbg !903
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !905
  br i1 %273, label %274, label %261, !dbg !905, !llvm.loop !919

; <label>:274:                                    ; preds = %270
  %275 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8, !dbg !921, !tbaa !580
  br label %276, !dbg !921

; <label>:276:                                    ; preds = %258, %274
  %277 = phi %struct.addrinfo* [ %275, %274 ], [ null, %258 ], !dbg !921
  call void @freeaddrinfo(%struct.addrinfo* %277) #5, !dbg !922
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !923
  %278 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0, !dbg !924
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %278) #4, !dbg !924
  %279 = call i32* @__errno() #5, !dbg !926
  %280 = load i32, i32* %279, align 4, !dbg !926, !tbaa !159
  %281 = call i8* @strerror(i32 %280) #5, !dbg !927
  %282 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %278, i64 128, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* %281) #5, !dbg !928
  call void @__redisSetError(%struct.redisContext* %0, i32 2, i8* nonnull %278) #5, !dbg !929
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %278) #4, !dbg !930
  br label %283

; <label>:283:                                    ; preds = %276, %230
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %284

; <label>:284:                                    ; preds = %255, %283
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %384

; <label>:285:                                    ; preds = %261
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !931
  %286 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8, !dbg !921, !tbaa !580
  call void @freeaddrinfo(%struct.addrinfo* %286) #5, !dbg !922
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !923
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !933
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %287

; <label>:287:                                    ; preds = %285, %205
  %288 = load i32, i32* %9, align 4, !dbg !934, !tbaa !159
  %289 = load %struct.sockaddr*, %struct.sockaddr** %170, align 8, !dbg !935, !tbaa !910
  %290 = load i32, i32* %171, align 8, !dbg !936, !tbaa !912
  %291 = call i32 @connect(i32 %288, %struct.sockaddr* %289, i32 %290) #5, !dbg !937
  %292 = icmp eq i32 %291, -1, !dbg !938
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !939
  br i1 %292, label %293, label %326, !dbg !939

; <label>:293:                                    ; preds = %287
  %294 = call i32* @__errno() #5, !dbg !940
  %295 = load i32, i32* %294, align 4, !dbg !940, !tbaa !159
  %296 = icmp eq i32 %295, 118, !dbg !941
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !942
  br i1 %296, label %297, label %303, !dbg !942

; <label>:297:                                    ; preds = %293
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !951
  %298 = load i32, i32* %155, align 4, !dbg !953, !tbaa !164
  %299 = icmp sgt i32 %298, -1, !dbg !954
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !955
  br i1 %299, label %300, label %302, !dbg !955

; <label>:300:                                    ; preds = %297
  %301 = call i32 @close(i32 %298) #5, !dbg !956
  store i32 -1, i32* %155, align 4, !dbg !958, !tbaa !164
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !959
  br label %302, !dbg !959

; <label>:302:                                    ; preds = %297, %300
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !960
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !961
  br label %374, !dbg !961

; <label>:303:                                    ; preds = %293
  %304 = call i32* @__errno() #5, !dbg !962
  %305 = load i32, i32* %304, align 4, !dbg !962, !tbaa !159
  %306 = icmp ne i32 %305, 119, !dbg !963
  %307 = or i1 %159, %306, !dbg !964
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !964
  br i1 %307, label %309, label %308, !dbg !964

; <label>:308:                                    ; preds = %303
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !965
  br label %331, !dbg !965

; <label>:309:                                    ; preds = %303
  %310 = call i32* @__errno() #5, !dbg !967
  %311 = load i32, i32* %310, align 4, !dbg !967, !tbaa !159
  %312 = icmp eq i32 %311, 125, !dbg !968
  %313 = and i1 %161, %312, !dbg !969
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !969
  br i1 %313, label %314, label %323, !dbg !969

; <label>:314:                                    ; preds = %309
  %315 = icmp sgt i32 %173, 8, !dbg !970
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !971
  br i1 %315, label %384, label %316, !dbg !971

; <label>:316:                                    ; preds = %314
  %317 = add nsw i32 %173, 1, !dbg !972
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !976
  %318 = load i32, i32* %155, align 4, !dbg !977, !tbaa !164
  %319 = icmp sgt i32 %318, -1, !dbg !978
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !979
  br i1 %319, label %320, label %322, !dbg !979

; <label>:320:                                    ; preds = %316
  %321 = call i32 @close(i32 %318) #5, !dbg !980
  store i32 -1, i32* %155, align 4, !dbg !981, !tbaa !164
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !982
  br label %322, !dbg !982

; <label>:322:                                    ; preds = %316, %320
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !983
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !984
  br label %172, !dbg !984

; <label>:323:                                    ; preds = %309
  %324 = call fastcc i32 @redisContextWaitReady(%struct.redisContext* %0, i64 %84) #6, !dbg !985
  %325 = icmp eq i32 %324, 0, !dbg !988
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !989
  br i1 %325, label %326, label %384, !dbg !989

; <label>:326:                                    ; preds = %287, %323
  %327 = icmp eq i32 %29, 0, !dbg !990
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !965
  br i1 %327, label %331, label %328, !dbg !965

; <label>:328:                                    ; preds = %326
  %329 = call fastcc i32 @redisSetBlocking(%struct.redisContext* %0, i32 1) #6, !dbg !991
  %330 = icmp eq i32 %329, 0, !dbg !992
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !993
  br i1 %330, label %331, label %384, !dbg !993

; <label>:331:                                    ; preds = %308, %328, %326
  %332 = bitcast i32* %7 to i8*, !dbg !995
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %332) #4, !dbg !995
  store i32 1, i32* %7, align 4, !dbg !996, !tbaa !159
  %333 = bitcast i32* %8 to i8*, !dbg !995
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %333) #4, !dbg !995
  %334 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !997, !srcloc !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1000
  %335 = icmp ult i64 %334, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1001
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1001
  br i1 %335, label %342, label %336, !dbg !1001

; <label>:336:                                    ; preds = %331
  %337 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1002, !srcloc !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1005
  %338 = icmp ugt i64 %337, ptrtoint ([0 x i8]* @_end to i64), !dbg !1001
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1006
  br i1 %338, label %342, label %339, !dbg !1006

; <label>:339:                                    ; preds = %336
  %340 = load i32, i32* %155, align 4, !dbg !1007, !tbaa !164
  %341 = call i32 @setsockopt(i32 %340, i32 6, i32 1, i8* nonnull %332, i32 4) #5, !dbg !1007
  store i32 %341, i32* %8, align 4, !dbg !1007, !tbaa !159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1007
  br label %354, !dbg !1007

; <label>:342:                                    ; preds = %336, %331
  %343 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1010, !srcloc !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1014
  %344 = and i64 %343, -65536, !dbg !1016
  %345 = or i64 %344, 4097, !dbg !1016
  %346 = add nsw i64 %345, -1, !dbg !1016
  %347 = inttoptr i64 %346 to i32*, !dbg !1017
  %348 = load i32, i32* %347, align 4096, !dbg !1018, !tbaa !159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1019
  %349 = ptrtoint i32* %7 to i64, !dbg !1020
  %350 = load i32, i32* %155, align 4, !dbg !1020, !tbaa !164
  %351 = sext i32 %350 to i64, !dbg !1020
  %352 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call setsockopt\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r8},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %351, i64 6, i64 1, i64 %349, i64 4, i32 %348, i32 (i32, i32, i32, i8*, i32)* nonnull @setsockopt) #4, !dbg !1020, !srcloc !1021
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %8, i64 %352) #4, !dbg !1022, !srcloc !1025
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %353 = load i32, i32* %8, align 4, !dbg !1026, !tbaa !159
  br label %354

; <label>:354:                                    ; preds = %342, %339
  %355 = phi i32 [ %353, %342 ], [ %341, %339 ], !dbg !1026
  %356 = icmp eq i32 %355, -1, !dbg !1027
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1028
  br i1 %356, label %357, label %371, !dbg !1028

; <label>:357:                                    ; preds = %354
  %358 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0, !dbg !1032
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %358) #4, !dbg !1032
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %358, i8 0, i64 128, i1 false) #4, !dbg !540
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1034
  %359 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %358, i64 128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #5, !dbg !1035
  %360 = sext i32 %359 to i64, !dbg !1035
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1036
  %361 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 %360, !dbg !1037
  %362 = sub nsw i64 128, %360, !dbg !1036
  %363 = call i32* @__errno() #5, !dbg !1037
  %364 = load i32, i32* %363, align 4, !dbg !1037, !tbaa !159
  %365 = call i32 @__xpg_strerror_r(i32 %364, i8* nonnull %361, i64 %362) #5, !dbg !1037
  call void @__redisSetError(%struct.redisContext* nonnull %0, i32 1, i8* nonnull %358) #5, !dbg !1038
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %358) #4, !dbg !1039
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1039
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1042
  %366 = load i32, i32* %155, align 4, !dbg !1043, !tbaa !164
  %367 = icmp sgt i32 %366, -1, !dbg !1044
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1045
  br i1 %367, label %368, label %370, !dbg !1045

; <label>:368:                                    ; preds = %357
  %369 = call i32 @close(i32 %366) #5, !dbg !1046
  store i32 -1, i32* %155, align 4, !dbg !1047, !tbaa !164
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1048
  br label %370, !dbg !1048

; <label>:370:                                    ; preds = %368, %357
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1049
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1050
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %333) #4, !dbg !1051
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %332) #4, !dbg !1051
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1051
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1052
  br label %384

; <label>:371:                                    ; preds = %354
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1053
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %333) #4, !dbg !1051
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %332) #4, !dbg !1051
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1051
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1052
  %372 = load i32, i32* %27, align 8, !dbg !1054, !tbaa !571
  %373 = or i32 %372, 2, !dbg !1054
  store i32 %373, i32* %27, align 8, !dbg !1054, !tbaa !571
  br label %384, !dbg !1055

; <label>:374:                                    ; preds = %199, %302
  %375 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %165, i64 0, i32 7, !dbg !1056
  %376 = load %struct.addrinfo*, %struct.addrinfo** %375, align 8, !dbg !1056, !tbaa !917
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1057
  %377 = icmp eq %struct.addrinfo* %376, null, !dbg !770
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !771
  br i1 %377, label %378, label %164, !dbg !771, !llvm.loop !1058

; <label>:378:                                    ; preds = %374, %151
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1060
  %379 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0, !dbg !1061
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %379) #4, !dbg !1061
  %380 = call i32* @__errno() #5, !dbg !1063
  %381 = load i32, i32* %380, align 4, !dbg !1063, !tbaa !159
  %382 = call i8* @strerror(i32 %381) #5, !dbg !1064
  %383 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %379, i64 128, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i8* %382) #5, !dbg !1065
  call void @__redisSetError(%struct.redisContext* %0, i32 2, i8* nonnull %379) #5, !dbg !1066
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %379) #4, !dbg !1067
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %384

; <label>:384:                                    ; preds = %80, %378, %328, %323, %284, %370, %314, %202, %371
  %385 = phi i32 [ 0, %371 ], [ -1, %202 ], [ -1, %314 ], [ -1, %370 ], [ -1, %284 ], [ -1, %323 ], [ -1, %328 ], [ -1, %378 ], [ -1, %80 ]
  store i32 %385, i32* %10, align 4, !dbg !1068, !tbaa !159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1068
  %386 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8, !dbg !1069, !tbaa !580
  call void @freeaddrinfo(%struct.addrinfo* %386) #5, !dbg !1070
  %387 = load i32, i32* %10, align 4, !dbg !1071, !tbaa !159
  br label %388, !dbg !1072

; <label>:388:                                    ; preds = %384, %149
  %389 = phi i32 [ %387, %384 ], [ -1, %149 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1073
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #4, !dbg !1074
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %25) #4, !dbg !1074
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %24) #4, !dbg !1074
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %23) #4, !dbg !1074
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #4, !dbg !1074
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %21) #4, !dbg !1074
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %20) #4, !dbg !1074
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1074
  ret i32 %389, !dbg !1074
}

; Function Attrs: noredzone nounwind
define dso_local i32 @redisContextConnectBindTcp(%struct.redisContext*, i8*, i32, %struct.timeval*, i8*) local_unnamed_addr #0 !dbg !1075 {
  %6 = tail call fastcc i32 @_redisContextConnectTcp(%struct.redisContext* %0, i8* %1, i32 %2, %struct.timeval* %3, i8* %4) #6, !dbg !1087
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1088
  ret i32 %6, !dbg !1088
}

; Function Attrs: noredzone nounwind
define dso_local i32 @redisContextConnectUnix(%struct.redisContext*, i8*, %struct.timeval*) local_unnamed_addr #0 !dbg !1089 {
  %4 = alloca [128 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr_un, align 1
  %7 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 3, !dbg !1129
  %8 = load i32, i32* %7, align 8, !dbg !1129, !tbaa !571
  %9 = and i32 %8, 1, !dbg !1130
  %10 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %6, i64 0, i32 0, !dbg !1132
  call void @llvm.lifetime.start.p0i8(i64 109, i8* nonnull %10) #4, !dbg !1132
  %11 = bitcast i32* %5 to i8*, !dbg !1136
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #4, !dbg !1136
  %12 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1137, !srcloc !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1140
  %13 = icmp ult i64 %12, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1141
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1141
  br i1 %13, label %19, label %14, !dbg !1141

; <label>:14:                                     ; preds = %3
  %15 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1142, !srcloc !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1145
  %16 = icmp ugt i64 %15, ptrtoint ([0 x i8]* @_end to i64), !dbg !1141
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1146
  br i1 %16, label %19, label %17, !dbg !1146

; <label>:17:                                     ; preds = %14
  %18 = tail call i32 @socket(i32 1, i32 1, i32 0) #5, !dbg !1147
  store i32 %18, i32* %5, align 4, !dbg !1147, !tbaa !159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1147
  br label %28, !dbg !1147

; <label>:19:                                     ; preds = %14, %3
  %20 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1150, !srcloc !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1154
  %21 = and i64 %20, -65536, !dbg !1156
  %22 = or i64 %21, 4097, !dbg !1156
  %23 = add nsw i64 %22, -1, !dbg !1156
  %24 = inttoptr i64 %23 to i32*, !dbg !1157
  %25 = load i32, i32* %24, align 4096, !dbg !1158, !tbaa !159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1159
  %26 = tail call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call socket\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 1, i64 1, i64 0, i32 %25, i32 (i32, i32, i32)* nonnull @socket) #4, !dbg !1160, !srcloc !1161
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %5, i64 %26) #4, !dbg !1162, !srcloc !1165
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %27 = load i32, i32* %5, align 4, !dbg !1166, !tbaa !159
  br label %28

; <label>:28:                                     ; preds = %19, %17
  %29 = phi i32 [ %27, %19 ], [ %18, %17 ], !dbg !1166
  %30 = icmp eq i32 %29, -1, !dbg !1167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1168
  br i1 %30, label %31, label %36, !dbg !1168

; <label>:31:                                     ; preds = %28
  %32 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0, !dbg !1172
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %32) #4, !dbg !1172
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %32, i8 0, i64 128, i1 false) #4, !dbg !1107
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1174
  %33 = call i32* @__errno() #5, !dbg !1175
  %34 = load i32, i32* %33, align 4, !dbg !1175, !tbaa !159
  %35 = call i32 @__xpg_strerror_r(i32 %34, i8* nonnull %32, i64 128) #5, !dbg !1175
  call void @__redisSetError(%struct.redisContext* nonnull %0, i32 1, i8* nonnull %32) #5, !dbg !1176
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %32) #4, !dbg !1177
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1177
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1178
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #4, !dbg !1179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1180
  br label %115, !dbg !1181

; <label>:36:                                     ; preds = %28
  %37 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 2, !dbg !1182
  store i32 %29, i32* %37, align 4, !dbg !1183, !tbaa !164
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1185
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #4, !dbg !1179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1180
  %38 = call fastcc i32 @redisSetBlocking(%struct.redisContext* nonnull %0, i32 0) #6, !dbg !1186
  %39 = icmp eq i32 %38, 0, !dbg !1188
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1189
  br i1 %39, label %40, label %115, !dbg !1189

; <label>:40:                                     ; preds = %36
  %41 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 6, !dbg !1190
  store i32 1, i32* %41, align 8, !dbg !1191, !tbaa !583
  %42 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 9, i32 0, !dbg !1192
  %43 = load i8*, i8** %42, align 8, !dbg !1192, !tbaa !1194
  %44 = icmp eq i8* %43, %1, !dbg !1195
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1196
  br i1 %44, label %47, label %45, !dbg !1196

; <label>:45:                                     ; preds = %40
  %46 = call i8* @strdup(i8* %1) #5, !dbg !1197
  store i8* %46, i8** %42, align 8, !dbg !1198, !tbaa !1194
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1199
  br label %47, !dbg !1199

; <label>:47:                                     ; preds = %40, %45
  %48 = icmp eq %struct.timeval* %2, null, !dbg !1200
  %49 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 7, !dbg !1202
  %50 = load %struct.timeval*, %struct.timeval** %49, align 8, !dbg !1202, !tbaa !605
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1205
  %51 = bitcast %struct.timeval* %50 to i8*, !dbg !1205
  br i1 %48, label %60, label %52, !dbg !1205

; <label>:52:                                     ; preds = %47
  %53 = icmp eq %struct.timeval* %50, %2, !dbg !1206
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1209
  br i1 %53, label %54, label %55, !dbg !1209

; <label>:54:                                     ; preds = %52
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1215
  br label %70, !dbg !1215

; <label>:55:                                     ; preds = %52
  %56 = icmp eq %struct.timeval* %50, null, !dbg !1216
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1219
  br i1 %56, label %57, label %64, !dbg !1219

; <label>:57:                                     ; preds = %55
  %58 = call i8* @malloc(i64 16) #5, !dbg !1220
  %59 = bitcast %struct.timeval** %49 to i8**, !dbg !1221
  store i8* %58, i8** %59, align 8, !dbg !1221, !tbaa !605
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1222
  br label %64, !dbg !1222

; <label>:60:                                     ; preds = %47
  %61 = icmp eq %struct.timeval* %50, null, !dbg !1223
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1224
  br i1 %61, label %63, label %62, !dbg !1224

; <label>:62:                                     ; preds = %60
  call void @free(i8* %51) #5, !dbg !1225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1225
  br label %63, !dbg !1225

; <label>:63:                                     ; preds = %62, %60
  store %struct.timeval* null, %struct.timeval** %49, align 8, !dbg !1226, !tbaa !605
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %87, !dbg !1215

; <label>:64:                                     ; preds = %57, %55
  %65 = phi i8* [ %58, %57 ], [ %51, %55 ], !dbg !1227
  %66 = bitcast %struct.timeval* %2 to i8*, !dbg !1228
  %67 = call i8* @memcpy(i8* %65, i8* %66, i64 16) #5, !dbg !1229
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1230
  %68 = load %struct.timeval*, %struct.timeval** %49, align 8, !dbg !1231, !tbaa !605
  %69 = icmp eq %struct.timeval* %68, null, !dbg !1232
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1215
  br i1 %69, label %89, label %70, !dbg !1215

; <label>:70:                                     ; preds = %54, %64
  %71 = phi %struct.timeval* [ %2, %54 ], [ %68, %64 ]
  %72 = getelementptr inbounds %struct.timeval, %struct.timeval* %71, i64 0, i32 1, !dbg !1233
  %73 = load i64, i64* %72, align 8, !dbg !1233, !tbaa !647
  %74 = icmp sgt i64 %73, 1000000, !dbg !1234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1235
  br i1 %74, label %86, label %75, !dbg !1235

; <label>:75:                                     ; preds = %70
  %76 = getelementptr inbounds %struct.timeval, %struct.timeval* %71, i64 0, i32 0, !dbg !1236
  %77 = load i64, i64* %76, align 8, !dbg !1236, !tbaa !653
  %78 = icmp sgt i64 %77, 9223372036854774, !dbg !1237
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1238
  br i1 %78, label %86, label %79, !dbg !1238

; <label>:79:                                     ; preds = %75
  %80 = mul nsw i64 %77, 1000, !dbg !1239
  %81 = add nsw i64 %73, 999, !dbg !1240
  %82 = sdiv i64 %81, 1000, !dbg !1241
  %83 = add nsw i64 %80, %82, !dbg !1242
  %84 = icmp ult i64 %83, 2147483647, !dbg !1243
  %85 = select i1 %84, i64 %83, i64 2147483647, !dbg !1243
  br label %87, !dbg !1243

; <label>:86:                                     ; preds = %75, %70
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1245
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1246
  br label %115, !dbg !1247

; <label>:87:                                     ; preds = %63, %79
  %88 = phi i64 [ -1, %63 ], [ %85, %79 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1248
  br label %89, !dbg !1249

; <label>:89:                                     ; preds = %87, %64
  %90 = phi i64 [ -1, %64 ], [ %88, %87 ], !dbg !1250
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1249
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1245
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1246
  store i8 1, i8* %10, align 1, !dbg !1251, !tbaa !1252
  %91 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %6, i64 0, i32 1, i64 0, !dbg !1254
  %92 = call i8* @strncpy(i8* nonnull %91, i8* %1, i64 107) #5, !dbg !1255
  %93 = load i32, i32* %37, align 4, !dbg !1256, !tbaa !164
  %94 = bitcast %struct.sockaddr_un* %6 to %struct.sockaddr*, !dbg !1258
  %95 = call i32 @connect(i32 %93, %struct.sockaddr* nonnull %94, i32 109) #5, !dbg !1259
  %96 = icmp eq i32 %95, -1, !dbg !1260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1261
  br i1 %96, label %97, label %107, !dbg !1261

; <label>:97:                                     ; preds = %89
  %98 = call i32* @__errno() #5, !dbg !1262
  %99 = load i32, i32* %98, align 4, !dbg !1262, !tbaa !159
  %100 = icmp ne i32 %99, 119, !dbg !1265
  %101 = icmp ne i32 %9, 0, !dbg !1266
  %102 = or i1 %101, %100, !dbg !1267
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1267
  br i1 %102, label %104, label %103, !dbg !1267

; <label>:103:                                    ; preds = %97
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1268
  br label %112, !dbg !1268

; <label>:104:                                    ; preds = %97
  %105 = call fastcc i32 @redisContextWaitReady(%struct.redisContext* nonnull %0, i64 %90) #6, !dbg !1270
  %106 = icmp eq i32 %105, 0, !dbg !1273
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1274
  br i1 %106, label %107, label %115, !dbg !1274

; <label>:107:                                    ; preds = %104, %89
  %108 = icmp eq i32 %9, 0, !dbg !1275
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1268
  br i1 %108, label %112, label %109, !dbg !1268

; <label>:109:                                    ; preds = %107
  %110 = call fastcc i32 @redisSetBlocking(%struct.redisContext* nonnull %0, i32 1) #6, !dbg !1276
  %111 = icmp eq i32 %110, 0, !dbg !1277
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1278
  br i1 %111, label %112, label %115, !dbg !1278

; <label>:112:                                    ; preds = %103, %109, %107
  %113 = load i32, i32* %7, align 8, !dbg !1279, !tbaa !571
  %114 = or i32 %113, 2, !dbg !1279
  store i32 %114, i32* %7, align 8, !dbg !1279, !tbaa !571
  br label %115, !dbg !1280

; <label>:115:                                    ; preds = %109, %104, %36, %112, %86, %31
  %116 = phi i32 [ -1, %31 ], [ -1, %86 ], [ 0, %112 ], [ -1, %36 ], [ -1, %104 ], [ -1, %109 ], !dbg !1281
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1282
  call void @llvm.lifetime.end.p0i8(i64 109, i8* nonnull %10) #4, !dbg !1283
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1283
  ret i32 %116, !dbg !1283
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @redisSetBlocking(%struct.redisContext*, i32) unnamed_addr #0 !dbg !1284 {
  %3 = alloca [128 x i8], align 16
  %4 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 2, !dbg !1299
  %5 = load i32, i32* %4, align 4, !dbg !1299, !tbaa !164
  %6 = tail call i32 (i32, i32, ...) @fcntl(i32 %5, i32 3) #5, !dbg !1300
  %7 = icmp eq i32 %6, -1, !dbg !1302
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1303
  br i1 %7, label %8, label %21, !dbg !1303

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0, !dbg !1307
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %9) #4, !dbg !1307
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %9, i8 0, i64 128, i1 false) #4, !dbg !1293
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1309
  %10 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %9, i64 128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0)) #5, !dbg !1310
  %11 = sext i32 %10 to i64, !dbg !1310
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1311
  %12 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 %11, !dbg !1312
  %13 = sub nsw i64 128, %11, !dbg !1311
  %14 = call i32* @__errno() #5, !dbg !1312
  %15 = load i32, i32* %14, align 4, !dbg !1312, !tbaa !159
  %16 = call i32 @__xpg_strerror_r(i32 %15, i8* nonnull %12, i64 %13) #5, !dbg !1312
  call void @__redisSetError(%struct.redisContext* nonnull %0, i32 1, i8* nonnull %9) #5, !dbg !1313
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %9) #4, !dbg !1314
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1314
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1317
  %17 = load i32, i32* %4, align 4, !dbg !1318, !tbaa !164
  %18 = icmp sgt i32 %17, -1, !dbg !1319
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1320
  br i1 %18, label %19, label %42, !dbg !1320

; <label>:19:                                     ; preds = %8
  %20 = call i32 @close(i32 %17) #5, !dbg !1321
  store i32 -1, i32* %4, align 4, !dbg !1322, !tbaa !164
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1323
  br label %42, !dbg !1323

; <label>:21:                                     ; preds = %2
  %22 = icmp eq i32 %1, 0, !dbg !1324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1326
  %23 = and i32 %6, -16385, !dbg !1327
  %24 = or i32 %6, 16384, !dbg !1328
  %25 = select i1 %22, i32 %24, i32 %23, !dbg !1326
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %26 = load i32, i32* %4, align 4, !dbg !1329, !tbaa !164
  %27 = tail call i32 (i32, i32, ...) @fcntl(i32 %26, i32 4, i32 %25) #5, !dbg !1330
  %28 = icmp eq i32 %27, -1, !dbg !1331
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1332
  br i1 %28, label %29, label %43, !dbg !1332

; <label>:29:                                     ; preds = %21
  %30 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0, !dbg !1336
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %30) #4, !dbg !1336
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %30, i8 0, i64 128, i1 false) #4, !dbg !1289
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1338
  %31 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %30, i64 128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0)) #5, !dbg !1339
  %32 = sext i32 %31 to i64, !dbg !1339
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1340
  %33 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 %32, !dbg !1341
  %34 = sub nsw i64 128, %32, !dbg !1340
  %35 = call i32* @__errno() #5, !dbg !1341
  %36 = load i32, i32* %35, align 4, !dbg !1341, !tbaa !159
  %37 = call i32 @__xpg_strerror_r(i32 %36, i8* nonnull %33, i64 %34) #5, !dbg !1341
  call void @__redisSetError(%struct.redisContext* nonnull %0, i32 1, i8* nonnull %30) #5, !dbg !1342
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %30) #4, !dbg !1343
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1343
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1346
  %38 = load i32, i32* %4, align 4, !dbg !1347, !tbaa !164
  %39 = icmp sgt i32 %38, -1, !dbg !1348
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1349
  br i1 %39, label %40, label %42, !dbg !1349

; <label>:40:                                     ; preds = %29
  %41 = call i32 @close(i32 %38) #5, !dbg !1350
  store i32 -1, i32* %4, align 4, !dbg !1351, !tbaa !164
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1352
  br label %42, !dbg !1352

; <label>:42:                                     ; preds = %40, %29, %19, %8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1353
  br label %43, !dbg !1354

; <label>:43:                                     ; preds = %42, %21
  %44 = phi i32 [ 0, %21 ], [ -1, %42 ], !dbg !1355
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1354
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1356
  ret i32 %44, !dbg !1356
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
define internal fastcc i32 @redisContextWaitReady(%struct.redisContext*, i64) unnamed_addr #0 !dbg !1357 {
  %3 = alloca [128 x i8], align 16
  %4 = alloca [1 x %struct.pollfd], align 4
  %5 = bitcast [1 x %struct.pollfd]* %4 to i8*, !dbg !1388
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #4, !dbg !1388
  %6 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 2, !dbg !1390
  %7 = load i32, i32* %6, align 4, !dbg !1390, !tbaa !164
  %8 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %4, i64 0, i64 0, i32 0, !dbg !1391
  store i32 %7, i32* %8, align 4, !dbg !1392, !tbaa !1393
  %9 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %4, i64 0, i64 0, i32 1, !dbg !1396
  store i16 2, i16* %9, align 4, !dbg !1397, !tbaa !1398
  %10 = tail call i32* @__errno() #5, !dbg !1399
  %11 = load i32, i32* %10, align 4, !dbg !1399, !tbaa !159
  %12 = icmp eq i32 %11, 119, !dbg !1400
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1401
  br i1 %12, label %13, label %49, !dbg !1401

; <label>:13:                                     ; preds = %2
  %14 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %4, i64 0, i64 0, !dbg !1402
  %15 = trunc i64 %1 to i32, !dbg !1403
  %16 = call i32 @poll(%struct.pollfd* nonnull %14, i32 1, i32 %15) #5, !dbg !1404
  %17 = icmp eq i32 %16, -1, !dbg !1406
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1407
  br i1 %17, label %18, label %32, !dbg !1407

; <label>:18:                                     ; preds = %13
  %19 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0, !dbg !1411
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %19) #4, !dbg !1411
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %19, i8 0, i64 128, i1 false) #4, !dbg !1383
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1413
  %20 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %19, i64 128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0)) #5, !dbg !1414
  %21 = sext i32 %20 to i64, !dbg !1414
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1415
  %22 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 %21, !dbg !1416
  %23 = sub nsw i64 128, %21, !dbg !1415
  %24 = call i32* @__errno() #5, !dbg !1416
  %25 = load i32, i32* %24, align 4, !dbg !1416, !tbaa !159
  %26 = call i32 @__xpg_strerror_r(i32 %25, i8* nonnull %22, i64 %23) #5, !dbg !1416
  call void @__redisSetError(%struct.redisContext* nonnull %0, i32 1, i8* nonnull %19) #5, !dbg !1417
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %19) #4, !dbg !1418
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1418
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1421
  %27 = load i32, i32* %6, align 4, !dbg !1422, !tbaa !164
  %28 = icmp sgt i32 %27, -1, !dbg !1423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1424
  br i1 %28, label %29, label %31, !dbg !1424

; <label>:29:                                     ; preds = %18
  %30 = call i32 @close(i32 %27) #5, !dbg !1425
  store i32 -1, i32* %6, align 4, !dbg !1426, !tbaa !164
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1427
  br label %31, !dbg !1427

; <label>:31:                                     ; preds = %18, %29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1429
  br label %59, !dbg !1429

; <label>:32:                                     ; preds = %13
  %33 = icmp eq i32 %16, 0, !dbg !1430
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1431
  br i1 %33, label %34, label %45, !dbg !1431

; <label>:34:                                     ; preds = %32
  %35 = call i32* @__errno() #5, !dbg !1432
  store i32 116, i32* %35, align 4, !dbg !1433, !tbaa !159
  %36 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0, !dbg !1437
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %36) #4, !dbg !1437
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %36, i8 0, i64 128, i1 false) #4, !dbg !1378
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1439
  %37 = call i32* @__errno() #5, !dbg !1440
  %38 = load i32, i32* %37, align 4, !dbg !1440, !tbaa !159
  %39 = call i32 @__xpg_strerror_r(i32 %38, i8* nonnull %36, i64 128) #5, !dbg !1440
  call void @__redisSetError(%struct.redisContext* nonnull %0, i32 1, i8* nonnull %36) #5, !dbg !1441
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %36) #4, !dbg !1442
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1442
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1445
  %40 = load i32, i32* %6, align 4, !dbg !1446, !tbaa !164
  %41 = icmp sgt i32 %40, -1, !dbg !1447
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1448
  br i1 %41, label %42, label %44, !dbg !1448

; <label>:42:                                     ; preds = %34
  %43 = call i32 @close(i32 %40) #5, !dbg !1449
  store i32 -1, i32* %6, align 4, !dbg !1450, !tbaa !164
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1451
  br label %44, !dbg !1451

; <label>:44:                                     ; preds = %34, %42
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1452
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1453
  br label %59, !dbg !1453

; <label>:45:                                     ; preds = %32
  %46 = call i32 @redisCheckSocketError(%struct.redisContext* nonnull %0) #6, !dbg !1454
  %47 = icmp ne i32 %46, 0, !dbg !1456
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1457
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1458
  %48 = sext i1 %47 to i32, !dbg !1459
  br label %59, !dbg !1459

; <label>:49:                                     ; preds = %2
  %50 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0, !dbg !1463
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %50) #4, !dbg !1463
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %50, i8 0, i64 128, i1 false) #4, !dbg !1376
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1465
  %51 = tail call i32* @__errno() #5, !dbg !1466
  %52 = load i32, i32* %51, align 4, !dbg !1466, !tbaa !159
  %53 = call i32 @__xpg_strerror_r(i32 %52, i8* nonnull %50, i64 128) #5, !dbg !1466
  call void @__redisSetError(%struct.redisContext* nonnull %0, i32 1, i8* nonnull %50) #5, !dbg !1467
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %50) #4, !dbg !1468
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1468
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1471
  %54 = load i32, i32* %6, align 4, !dbg !1472, !tbaa !164
  %55 = icmp sgt i32 %54, -1, !dbg !1473
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1474
  br i1 %55, label %56, label %58, !dbg !1474

; <label>:56:                                     ; preds = %49
  %57 = call i32 @close(i32 %54) #5, !dbg !1475
  store i32 -1, i32* %6, align 4, !dbg !1476, !tbaa !164
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1477
  br label %58, !dbg !1477

; <label>:58:                                     ; preds = %49, %56
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1478
  br label %59, !dbg !1479

; <label>:59:                                     ; preds = %31, %44, %45, %58
  %60 = phi i32 [ -1, %58 ], [ -1, %31 ], [ -1, %44 ], [ %48, %45 ], !dbg !1480
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #4, !dbg !1481
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1481
  ret i32 %60, !dbg !1481
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
!181 = !DILocation(line: 121, column: 2, scope: !172, inlinedAt: !178)
!182 = !DILocation(line: 136, column: 5, scope: !147)
!183 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !184)
!184 = distinct !DILocation(line: 136, column: 5, scope: !147)
!185 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !184)
!186 = !DILocation(line: 121, column: 2, scope: !172, inlinedAt: !184)
!187 = !DILocation(line: 136, column: 5, scope: !148)
!188 = !DILocation(line: 136, column: 5, scope: !189)
!189 = distinct !DILexicalBlock(scope: !147, file: !1, line: 136, column: 5)
!190 = !DILocation(line: 135, column: 9, scope: !40)
!191 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !192)
!192 = distinct !DILocation(line: 49, column: 21, scope: !193, inlinedAt: !199)
!193 = distinct !DISubprogram(name: "uk_thread_get_tid", scope: !194, file: !194, line: 47, type: !195, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !197)
!194 = !DIFile(filename: "/root/.unikraft/unikraft/lib/flexos-core/include/flexos/impl/intelpku-impl.h", directory: "/root/.unikraft/apps/redis/build")
!195 = !DISubroutineType(types: !196)
!196 = !{!34}
!197 = !{!198}
!198 = !DILocalVariable(name: "sp", scope: !193, file: !194, line: 49, type: !10)
!199 = distinct !DILocation(line: 136, column: 5, scope: !144)
!200 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !192)
!201 = !DILocation(line: 121, column: 2, scope: !172, inlinedAt: !192)
!202 = !DILocation(line: 49, column: 16, scope: !193, inlinedAt: !199)
!203 = !DILocation(line: 50, column: 19, scope: !193, inlinedAt: !199)
!204 = !DILocation(line: 50, column: 11, scope: !193, inlinedAt: !199)
!205 = !DILocation(line: 50, column: 9, scope: !193, inlinedAt: !199)
!206 = !DILocation(line: 50, column: 2, scope: !193, inlinedAt: !199)
!207 = !DILocation(line: 136, column: 5, scope: !144)
!208 = !{i32 -2146237826, i32 -2146237813, i32 -2146237788, i32 -2146237764, i32 -2146237739, i32 -2146237664, i32 -2146237639, i32 -2146237495, i32 -2146237470, i32 -2146234079, i32 -2146233990, i32 -2146233869, i32 -2146233774, i32 -2146233673, i32 -2146233646, i32 -2146233563, i32 -2146233474, i32 -2146233353, i32 -2146233253, i32 -2146233147, i32 -2146233039, i32 -2146237094, i32 -2146237041, i32 -2146237010, i32 -2146236979, i32 -2146236958, i32 -2146236936, i32 -2146236887, i32 -2146236866, i32 -2146236763, i32 -2146236731, i32 -2146232956, i32 -2146232867, i32 -2146232746, i32 -2146232647, i32 -2146232541, i32 -2146232439, i32 -2146232406, i32 -2146232333, i32 -2146232265, i32 -2146236541, i32 -2146236482, i32 -2146236429, i32 -2146236398, i32 -2146236367, i32 -2146236346, i32 -2146236324, i32 -2146236275, i32 -2146236254, i32 -2146232219, i32 -2146232130, i32 -2146232009, i32 -2146231910, i32 -2146231804, i32 -2146231702, i32 -2146231669, i32 -2146231586, i32 -2146231497, i32 -2146231376, i32 -2146231276, i32 -2146231250, i32 -2146231147, i32 -2146231121, i32 -2146235996, i32 -2146235971, i32 -2146235904, i32 -2146235879, i32 -2146235815, i32 -2146235733, i32 -2146235710, i32 -2146235685, i32 -2146235660}
!209 = !DILocation(line: 136, column: 5, scope: !210)
!210 = distinct !DILexicalBlock(scope: !211, file: !1, line: 136, column: 5)
!211 = distinct !DILexicalBlock(scope: !144, file: !1, line: 136, column: 5)
!212 = !{i32 -2146234576, i32 -2146234559}
!213 = !DILocation(line: 138, column: 9, scope: !214)
!214 = distinct !DILexicalBlock(scope: !40, file: !1, line: 138, column: 9)
!215 = !DILocation(line: 138, column: 13, scope: !214)
!216 = !DILocation(line: 138, column: 9, scope: !40)
!217 = !DILocation(line: 139, column: 52, scope: !218)
!218 = distinct !DILexicalBlock(scope: !214, file: !1, line: 138, column: 20)
!219 = !DILocation(line: 139, column: 43, scope: !218)
!220 = !DILocation(line: 139, column: 9, scope: !218)
!221 = !DILocation(line: 140, column: 9, scope: !218)
!222 = !DILocation(line: 143, column: 9, scope: !40)
!223 = !DILocation(line: 179, column: 5, scope: !40)
!224 = !DILocation(line: 0, scope: !40)
!225 = !DILocation(line: 0, scope: !218)
!226 = !DILocation(line: 180, column: 1, scope: !40)
!227 = distinct !DISubprogram(name: "redisCheckSocketError", scope: !1, file: !1, line: 250, type: !228, isLocal: false, isDefinition: true, scopeLine: 250, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !230)
!228 = !DISubroutineType(types: !229)
!229 = !{!34, !43}
!230 = !{!231, !232, !233}
!231 = !DILocalVariable(name: "c", arg: 1, scope: !227, file: !1, line: 250, type: !43)
!232 = !DILocalVariable(name: "err", scope: !227, file: !1, line: 251, type: !34)
!233 = !DILocalVariable(name: "errlen", scope: !227, file: !1, line: 252, type: !234)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !18, line: 113, baseType: !235)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32_t", file: !22, line: 129, baseType: !149)
!236 = !DILocalVariable(name: "buf", scope: !237, file: !1, line: 69, type: !49)
!237 = distinct !DISubprogram(name: "__redisSetErrorFromErrno", scope: !1, file: !1, line: 68, type: !238, isLocal: true, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !242)
!238 = !DISubroutineType(types: !239)
!239 = !{null, !43, !34, !240}
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!242 = !{!243, !244, !245, !236, !246}
!243 = !DILocalVariable(name: "c", arg: 1, scope: !237, file: !1, line: 68, type: !43)
!244 = !DILocalVariable(name: "type", arg: 2, scope: !237, file: !1, line: 68, type: !34)
!245 = !DILocalVariable(name: "prefix", arg: 3, scope: !237, file: !1, line: 68, type: !240)
!246 = !DILocalVariable(name: "len", scope: !237, file: !1, line: 70, type: !65)
!247 = !DILocation(line: 69, column: 10, scope: !237, inlinedAt: !248)
!248 = distinct !DILocation(line: 261, column: 9, scope: !249)
!249 = distinct !DILexicalBlock(scope: !250, file: !1, line: 259, column: 14)
!250 = distinct !DILexicalBlock(scope: !227, file: !1, line: 259, column: 9)
!251 = !DILocation(line: 69, column: 10, scope: !237, inlinedAt: !252)
!252 = distinct !DILocation(line: 255, column: 9, scope: !253)
!253 = distinct !DILexicalBlock(scope: !254, file: !1, line: 254, column: 71)
!254 = distinct !DILexicalBlock(scope: !227, file: !1, line: 254, column: 9)
!255 = !DILocation(line: 250, column: 41, scope: !227)
!256 = !DILocation(line: 251, column: 5, scope: !227)
!257 = !DILocation(line: 251, column: 9, scope: !227)
!258 = !DILocation(line: 252, column: 5, scope: !227)
!259 = !DILocation(line: 252, column: 15, scope: !227)
!260 = !DILocation(line: 254, column: 23, scope: !254)
!261 = !DILocation(line: 254, column: 9, scope: !254)
!262 = !DILocation(line: 254, column: 64, scope: !254)
!263 = !DILocation(line: 254, column: 9, scope: !227)
!264 = !DILocation(line: 68, column: 52, scope: !237, inlinedAt: !252)
!265 = !DILocation(line: 68, column: 59, scope: !237, inlinedAt: !252)
!266 = !DILocation(line: 68, column: 77, scope: !237, inlinedAt: !252)
!267 = !DILocation(line: 69, column: 5, scope: !237, inlinedAt: !252)
!268 = !DILocation(line: 70, column: 12, scope: !237, inlinedAt: !252)
!269 = !DILocation(line: 72, column: 9, scope: !237, inlinedAt: !252)
!270 = !DILocation(line: 73, column: 15, scope: !271, inlinedAt: !252)
!271 = distinct !DILexicalBlock(scope: !237, file: !1, line: 72, column: 9)
!272 = !DILocation(line: 73, column: 9, scope: !271, inlinedAt: !252)
!273 = !DILocation(line: 74, column: 5, scope: !274, inlinedAt: !252)
!274 = distinct !DILexicalBlock(scope: !237, file: !1, line: 74, column: 5)
!275 = !DILocation(line: 75, column: 5, scope: !237, inlinedAt: !252)
!276 = !DILocation(line: 76, column: 1, scope: !237, inlinedAt: !252)
!277 = !DILocation(line: 256, column: 9, scope: !253)
!278 = !DILocation(line: 259, column: 9, scope: !250)
!279 = !DILocation(line: 259, column: 9, scope: !227)
!280 = !DILocation(line: 260, column: 9, scope: !249)
!281 = !DILocation(line: 260, column: 15, scope: !249)
!282 = !DILocation(line: 68, column: 52, scope: !237, inlinedAt: !248)
!283 = !DILocation(line: 68, column: 59, scope: !237, inlinedAt: !248)
!284 = !DILocation(line: 68, column: 77, scope: !237, inlinedAt: !248)
!285 = !DILocation(line: 69, column: 5, scope: !237, inlinedAt: !248)
!286 = !DILocation(line: 70, column: 12, scope: !237, inlinedAt: !248)
!287 = !DILocation(line: 72, column: 9, scope: !237, inlinedAt: !248)
!288 = !DILocation(line: 74, column: 5, scope: !274, inlinedAt: !248)
!289 = !DILocation(line: 75, column: 5, scope: !237, inlinedAt: !248)
!290 = !DILocation(line: 76, column: 1, scope: !237, inlinedAt: !248)
!291 = !DILocation(line: 262, column: 9, scope: !249)
!292 = !DILocation(line: 0, scope: !253)
!293 = !DILocation(line: 0, scope: !227)
!294 = !DILocation(line: 266, column: 1, scope: !227)
!295 = distinct !DISubprogram(name: "redisContextSetTimeout", scope: !1, file: !1, line: 268, type: !296, isLocal: false, isDefinition: true, scopeLine: 268, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !299)
!296 = !DISubroutineType(types: !297)
!297 = !{!34, !43, !298}
!298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !119)
!299 = !{!300, !301, !302, !303, !309, !310, !311, !312, !313, !319, !320, !321, !322}
!300 = !DILocalVariable(name: "c", arg: 1, scope: !295, file: !1, line: 268, type: !43)
!301 = !DILocalVariable(name: "tv", arg: 2, scope: !295, file: !1, line: 268, type: !298)
!302 = !DILocalVariable(name: "ret", scope: !295, file: !1, line: 269, type: !34)
!303 = !DILocalVariable(name: "tid", scope: !304, file: !1, line: 270, type: !149)
!304 = distinct !DILexicalBlock(scope: !305, file: !1, line: 270, column: 5)
!305 = distinct !DILexicalBlock(scope: !306, file: !1, line: 270, column: 5)
!306 = distinct !DILexicalBlock(scope: !307, file: !1, line: 270, column: 5)
!307 = distinct !DILexicalBlock(scope: !308, file: !1, line: 270, column: 5)
!308 = distinct !DILexicalBlock(scope: !295, file: !1, line: 270, column: 5)
!309 = !DILocalVariable(name: "_ret", scope: !304, file: !1, line: 270, type: !11)
!310 = !DILocalVariable(name: "_arg3", scope: !304, file: !1, line: 270, type: !11)
!311 = !DILocalVariable(name: "_arg4", scope: !304, file: !1, line: 270, type: !11)
!312 = !DILocalVariable(name: "_arg5", scope: !304, file: !1, line: 270, type: !11)
!313 = !DILocalVariable(name: "tid", scope: !314, file: !1, line: 276, type: !149)
!314 = distinct !DILexicalBlock(scope: !315, file: !1, line: 276, column: 5)
!315 = distinct !DILexicalBlock(scope: !316, file: !1, line: 276, column: 5)
!316 = distinct !DILexicalBlock(scope: !317, file: !1, line: 276, column: 5)
!317 = distinct !DILexicalBlock(scope: !318, file: !1, line: 276, column: 5)
!318 = distinct !DILexicalBlock(scope: !295, file: !1, line: 276, column: 5)
!319 = !DILocalVariable(name: "_ret", scope: !314, file: !1, line: 276, type: !11)
!320 = !DILocalVariable(name: "_arg3", scope: !314, file: !1, line: 276, type: !11)
!321 = !DILocalVariable(name: "_arg4", scope: !314, file: !1, line: 276, type: !11)
!322 = !DILocalVariable(name: "_arg5", scope: !314, file: !1, line: 276, type: !11)
!323 = !DILocation(line: 69, column: 10, scope: !237, inlinedAt: !324)
!324 = distinct !DILocation(line: 279, column: 9, scope: !325)
!325 = distinct !DILexicalBlock(scope: !326, file: !1, line: 278, column: 20)
!326 = distinct !DILexicalBlock(scope: !295, file: !1, line: 278, column: 9)
!327 = !DILocation(line: 69, column: 10, scope: !237, inlinedAt: !328)
!328 = distinct !DILocation(line: 273, column: 9, scope: !329)
!329 = distinct !DILexicalBlock(scope: !330, file: !1, line: 272, column: 20)
!330 = distinct !DILexicalBlock(scope: !295, file: !1, line: 272, column: 9)
!331 = !DILocation(line: 268, column: 42, scope: !295)
!332 = !DILocation(line: 269, column: 5, scope: !295)
!333 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !334)
!334 = distinct !DILocation(line: 270, column: 5, scope: !307)
!335 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !334)
!336 = !DILocation(line: 121, column: 2, scope: !172, inlinedAt: !334)
!337 = !DILocation(line: 270, column: 5, scope: !307)
!338 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !339)
!339 = distinct !DILocation(line: 270, column: 5, scope: !307)
!340 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !339)
!341 = !DILocation(line: 121, column: 2, scope: !172, inlinedAt: !339)
!342 = !DILocation(line: 270, column: 5, scope: !308)
!343 = !DILocation(line: 270, column: 5, scope: !344)
!344 = distinct !DILexicalBlock(scope: !307, file: !1, line: 270, column: 5)
!345 = !DILocation(line: 269, column: 9, scope: !295)
!346 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !347)
!347 = distinct !DILocation(line: 49, column: 21, scope: !193, inlinedAt: !348)
!348 = distinct !DILocation(line: 270, column: 5, scope: !304)
!349 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !347)
!350 = !DILocation(line: 121, column: 2, scope: !172, inlinedAt: !347)
!351 = !DILocation(line: 49, column: 16, scope: !193, inlinedAt: !348)
!352 = !DILocation(line: 50, column: 19, scope: !193, inlinedAt: !348)
!353 = !DILocation(line: 50, column: 11, scope: !193, inlinedAt: !348)
!354 = !DILocation(line: 50, column: 9, scope: !193, inlinedAt: !348)
!355 = !DILocation(line: 50, column: 2, scope: !193, inlinedAt: !348)
!356 = !DILocation(line: 270, column: 5, scope: !304)
!357 = !{i32 -2146219088, i32 -2146219075, i32 -2146219050, i32 -2146219026, i32 -2146219001, i32 -2146218926, i32 -2146218901, i32 -2146218757, i32 -2146218732, i32 -2146215340, i32 -2146215251, i32 -2146215130, i32 -2146215035, i32 -2146214934, i32 -2146214907, i32 -2146214824, i32 -2146214735, i32 -2146214614, i32 -2146214514, i32 -2146214408, i32 -2146214300, i32 -2146218356, i32 -2146218303, i32 -2146218272, i32 -2146218241, i32 -2146218220, i32 -2146218198, i32 -2146218149, i32 -2146218128, i32 -2146218025, i32 -2146217993, i32 -2146214217, i32 -2146214128, i32 -2146214007, i32 -2146213908, i32 -2146213802, i32 -2146213700, i32 -2146213667, i32 -2146213594, i32 -2146213526, i32 -2146217803, i32 -2146217744, i32 -2146217691, i32 -2146217660, i32 -2146217629, i32 -2146217608, i32 -2146217586, i32 -2146217537, i32 -2146217516, i32 -2146213480, i32 -2146213391, i32 -2146213270, i32 -2146213171, i32 -2146213065, i32 -2146212963, i32 -2146212930, i32 -2146212847, i32 -2146212758, i32 -2146212637, i32 -2146212537, i32 -2146212511, i32 -2146212408, i32 -2146212382, i32 -2146217258, i32 -2146217233, i32 -2146217166, i32 -2146217141, i32 -2146217077, i32 -2146216995, i32 -2146216972, i32 -2146216947, i32 -2146216922}
!358 = !DILocation(line: 270, column: 5, scope: !359)
!359 = distinct !DILexicalBlock(scope: !360, file: !1, line: 270, column: 5)
!360 = distinct !DILexicalBlock(scope: !304, file: !1, line: 270, column: 5)
!361 = !{i32 -2146215838, i32 -2146215821}
!362 = !DILocation(line: 272, column: 9, scope: !330)
!363 = !DILocation(line: 272, column: 13, scope: !330)
!364 = !DILocation(line: 272, column: 9, scope: !295)
!365 = !DILocation(line: 68, column: 52, scope: !237, inlinedAt: !328)
!366 = !DILocation(line: 68, column: 59, scope: !237, inlinedAt: !328)
!367 = !DILocation(line: 68, column: 77, scope: !237, inlinedAt: !328)
!368 = !DILocation(line: 69, column: 5, scope: !237, inlinedAt: !328)
!369 = !DILocation(line: 70, column: 12, scope: !237, inlinedAt: !328)
!370 = !DILocation(line: 72, column: 9, scope: !237, inlinedAt: !328)
!371 = !DILocation(line: 73, column: 15, scope: !271, inlinedAt: !328)
!372 = !DILocation(line: 73, column: 9, scope: !271, inlinedAt: !328)
!373 = !DILocation(line: 74, column: 5, scope: !274, inlinedAt: !328)
!374 = !DILocation(line: 75, column: 5, scope: !237, inlinedAt: !328)
!375 = !DILocation(line: 76, column: 1, scope: !237, inlinedAt: !328)
!376 = !DILocation(line: 274, column: 9, scope: !329)
!377 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !378)
!378 = distinct !DILocation(line: 276, column: 5, scope: !317)
!379 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !378)
!380 = !DILocation(line: 121, column: 2, scope: !172, inlinedAt: !378)
!381 = !DILocation(line: 276, column: 5, scope: !317)
!382 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !383)
!383 = distinct !DILocation(line: 276, column: 5, scope: !317)
!384 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !383)
!385 = !DILocation(line: 121, column: 2, scope: !172, inlinedAt: !383)
!386 = !DILocation(line: 276, column: 5, scope: !318)
!387 = !DILocation(line: 276, column: 5, scope: !388)
!388 = distinct !DILexicalBlock(scope: !317, file: !1, line: 276, column: 5)
!389 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !390)
!390 = distinct !DILocation(line: 49, column: 21, scope: !193, inlinedAt: !391)
!391 = distinct !DILocation(line: 276, column: 5, scope: !314)
!392 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !390)
!393 = !DILocation(line: 121, column: 2, scope: !172, inlinedAt: !390)
!394 = !DILocation(line: 49, column: 16, scope: !193, inlinedAt: !391)
!395 = !DILocation(line: 50, column: 19, scope: !193, inlinedAt: !391)
!396 = !DILocation(line: 50, column: 11, scope: !193, inlinedAt: !391)
!397 = !DILocation(line: 50, column: 9, scope: !193, inlinedAt: !391)
!398 = !DILocation(line: 50, column: 2, scope: !193, inlinedAt: !391)
!399 = !DILocation(line: 276, column: 5, scope: !314)
!400 = !{i32 -2146209828, i32 -2146209815, i32 -2146209790, i32 -2146209766, i32 -2146209741, i32 -2146209666, i32 -2146209641, i32 -2146209497, i32 -2146209472, i32 -2146206080, i32 -2146205991, i32 -2146205870, i32 -2146205775, i32 -2146205674, i32 -2146205647, i32 -2146205564, i32 -2146205475, i32 -2146205354, i32 -2146205254, i32 -2146205148, i32 -2146205040, i32 -2146209096, i32 -2146209043, i32 -2146209012, i32 -2146208981, i32 -2146208960, i32 -2146208938, i32 -2146208889, i32 -2146208868, i32 -2146208765, i32 -2146208733, i32 -2146204957, i32 -2146204868, i32 -2146204747, i32 -2146204648, i32 -2146204542, i32 -2146204440, i32 -2146204407, i32 -2146204334, i32 -2146204266, i32 -2146208543, i32 -2146208484, i32 -2146208431, i32 -2146208400, i32 -2146208369, i32 -2146208348, i32 -2146208326, i32 -2146208277, i32 -2146208256, i32 -2146204220, i32 -2146204131, i32 -2146204010, i32 -2146203911, i32 -2146203805, i32 -2146203703, i32 -2146203670, i32 -2146203587, i32 -2146203498, i32 -2146203377, i32 -2146203277, i32 -2146203251, i32 -2146203148, i32 -2146203122, i32 -2146207998, i32 -2146207973, i32 -2146207906, i32 -2146207881, i32 -2146207817, i32 -2146207735, i32 -2146207712, i32 -2146207687, i32 -2146207662}
!401 = !DILocation(line: 276, column: 5, scope: !402)
!402 = distinct !DILexicalBlock(scope: !403, file: !1, line: 276, column: 5)
!403 = distinct !DILexicalBlock(scope: !314, file: !1, line: 276, column: 5)
!404 = !{i32 -2146206578, i32 -2146206561}
!405 = !DILocation(line: 278, column: 9, scope: !326)
!406 = !DILocation(line: 278, column: 13, scope: !326)
!407 = !DILocation(line: 278, column: 9, scope: !295)
!408 = !DILocation(line: 68, column: 52, scope: !237, inlinedAt: !324)
!409 = !DILocation(line: 68, column: 59, scope: !237, inlinedAt: !324)
!410 = !DILocation(line: 68, column: 77, scope: !237, inlinedAt: !324)
!411 = !DILocation(line: 69, column: 5, scope: !237, inlinedAt: !324)
!412 = !DILocation(line: 70, column: 12, scope: !237, inlinedAt: !324)
!413 = !DILocation(line: 72, column: 9, scope: !237, inlinedAt: !324)
!414 = !DILocation(line: 73, column: 15, scope: !271, inlinedAt: !324)
!415 = !DILocation(line: 73, column: 9, scope: !271, inlinedAt: !324)
!416 = !DILocation(line: 74, column: 5, scope: !274, inlinedAt: !324)
!417 = !DILocation(line: 75, column: 5, scope: !237, inlinedAt: !324)
!418 = !DILocation(line: 76, column: 1, scope: !237, inlinedAt: !324)
!419 = !DILocation(line: 280, column: 9, scope: !325)
!420 = !DILocation(line: 0, scope: !329)
!421 = !DILocation(line: 0, scope: !295)
!422 = !DILocation(line: 283, column: 1, scope: !295)
!423 = distinct !DISubprogram(name: "redisContextConnectTcp", scope: !1, file: !1, line: 448, type: !424, isLocal: false, isDefinition: true, scopeLine: 449, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !427)
!424 = !DISubroutineType(types: !425)
!425 = !{!34, !43, !240, !34, !426}
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!427 = !{!428, !429, !430, !431}
!428 = !DILocalVariable(name: "c", arg: 1, scope: !423, file: !1, line: 448, type: !43)
!429 = !DILocalVariable(name: "addr", arg: 2, scope: !423, file: !1, line: 448, type: !240)
!430 = !DILocalVariable(name: "port", arg: 3, scope: !423, file: !1, line: 448, type: !34)
!431 = !DILocalVariable(name: "timeout", arg: 4, scope: !423, file: !1, line: 449, type: !426)
!432 = !DILocation(line: 448, column: 42, scope: !423)
!433 = !DILocation(line: 448, column: 57, scope: !423)
!434 = !DILocation(line: 448, column: 67, scope: !423)
!435 = !DILocation(line: 449, column: 50, scope: !423)
!436 = !DILocation(line: 450, column: 12, scope: !423)
!437 = !DILocation(line: 450, column: 5, scope: !423)
!438 = distinct !DISubprogram(name: "_redisContextConnectTcp", scope: !1, file: !1, line: 285, type: !439, isLocal: true, isDefinition: true, scopeLine: 287, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !441)
!439 = !DISubroutineType(types: !440)
!440 = !{!34, !43, !240, !34, !426, !240}
!441 = !{!442, !443, !444, !445, !446, !447, !448, !449, !450, !454, !467, !468, !469, !470, !471, !472, !473, !474, !475, !481, !482, !483, !484, !492, !493, !494, !495, !504, !505, !506, !509, !515, !516, !517, !518, !521, !524, !530, !531, !532, !533, !534, !537}
!442 = !DILocalVariable(name: "c", arg: 1, scope: !438, file: !1, line: 285, type: !43)
!443 = !DILocalVariable(name: "addr", arg: 2, scope: !438, file: !1, line: 285, type: !240)
!444 = !DILocalVariable(name: "port", arg: 3, scope: !438, file: !1, line: 285, type: !34)
!445 = !DILocalVariable(name: "timeout", arg: 4, scope: !438, file: !1, line: 286, type: !426)
!446 = !DILocalVariable(name: "source_addr", arg: 5, scope: !438, file: !1, line: 287, type: !240)
!447 = !DILocalVariable(name: "s", scope: !438, file: !1, line: 288, type: !34)
!448 = !DILocalVariable(name: "rv", scope: !438, file: !1, line: 288, type: !34)
!449 = !DILocalVariable(name: "n", scope: !438, file: !1, line: 288, type: !34)
!450 = !DILocalVariable(name: "_port", scope: !438, file: !1, line: 289, type: !451)
!451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 48, elements: !452)
!452 = !{!453}
!453 = !DISubrange(count: 6)
!454 = !DILocalVariable(name: "hints", scope: !438, file: !1, line: 290, type: !455)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "addrinfo", file: !456, line: 103, size: 384, elements: !457)
!456 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/netdb.h", directory: "/root/.unikraft/apps/redis/build")
!457 = !{!458, !459, !460, !461, !462, !463, !464, !465}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "ai_flags", scope: !455, file: !456, line: 104, baseType: !34, size: 32)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "ai_family", scope: !455, file: !456, line: 105, baseType: !34, size: 32, offset: 32)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "ai_socktype", scope: !455, file: !456, line: 106, baseType: !34, size: 32, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "ai_protocol", scope: !455, file: !456, line: 107, baseType: !34, size: 32, offset: 96)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "ai_addrlen", scope: !455, file: !456, line: 108, baseType: !234, size: 32, offset: 128)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "ai_addr", scope: !455, file: !456, line: 109, baseType: !16, size: 64, offset: 192)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "ai_canonname", scope: !455, file: !456, line: 110, baseType: !35, size: 64, offset: 256)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "ai_next", scope: !455, file: !456, line: 111, baseType: !466, size: 64, offset: 320)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!467 = !DILocalVariable(name: "servinfo", scope: !438, file: !1, line: 290, type: !466)
!468 = !DILocalVariable(name: "bservinfo", scope: !438, file: !1, line: 290, type: !466)
!469 = !DILocalVariable(name: "p", scope: !438, file: !1, line: 290, type: !466)
!470 = !DILocalVariable(name: "b", scope: !438, file: !1, line: 290, type: !466)
!471 = !DILocalVariable(name: "blocking", scope: !438, file: !1, line: 291, type: !34)
!472 = !DILocalVariable(name: "reuseaddr", scope: !438, file: !1, line: 292, type: !34)
!473 = !DILocalVariable(name: "reuses", scope: !438, file: !1, line: 293, type: !34)
!474 = !DILocalVariable(name: "timeout_msec", scope: !438, file: !1, line: 294, type: !124)
!475 = !DILocalVariable(name: "tid", scope: !476, file: !1, line: 350, type: !149)
!476 = distinct !DILexicalBlock(scope: !477, file: !1, line: 350, column: 5)
!477 = distinct !DILexicalBlock(scope: !478, file: !1, line: 350, column: 5)
!478 = distinct !DILexicalBlock(scope: !479, file: !1, line: 350, column: 5)
!479 = distinct !DILexicalBlock(scope: !480, file: !1, line: 350, column: 5)
!480 = distinct !DILexicalBlock(scope: !438, file: !1, line: 350, column: 5)
!481 = !DILocalVariable(name: "_ret", scope: !476, file: !1, line: 350, type: !11)
!482 = !DILocalVariable(name: "_arg3", scope: !476, file: !1, line: 350, type: !11)
!483 = !DILocalVariable(name: "_arg4", scope: !476, file: !1, line: 350, type: !11)
!484 = !DILocalVariable(name: "tid", scope: !485, file: !1, line: 354, type: !149)
!485 = distinct !DILexicalBlock(scope: !486, file: !1, line: 354, column: 10)
!486 = distinct !DILexicalBlock(scope: !487, file: !1, line: 354, column: 10)
!487 = distinct !DILexicalBlock(scope: !488, file: !1, line: 354, column: 10)
!488 = distinct !DILexicalBlock(scope: !489, file: !1, line: 354, column: 10)
!489 = distinct !DILexicalBlock(scope: !490, file: !1, line: 354, column: 10)
!490 = distinct !DILexicalBlock(scope: !491, file: !1, line: 352, column: 18)
!491 = distinct !DILexicalBlock(scope: !438, file: !1, line: 352, column: 9)
!492 = !DILocalVariable(name: "_ret", scope: !485, file: !1, line: 354, type: !11)
!493 = !DILocalVariable(name: "_arg3", scope: !485, file: !1, line: 354, type: !11)
!494 = !DILocalVariable(name: "_arg4", scope: !485, file: !1, line: 354, type: !11)
!495 = !DILocalVariable(name: "tid", scope: !496, file: !1, line: 363, type: !149)
!496 = distinct !DILexicalBlock(scope: !497, file: !1, line: 363, column: 9)
!497 = distinct !DILexicalBlock(scope: !498, file: !1, line: 363, column: 9)
!498 = distinct !DILexicalBlock(scope: !499, file: !1, line: 363, column: 9)
!499 = distinct !DILexicalBlock(scope: !500, file: !1, line: 363, column: 9)
!500 = distinct !DILexicalBlock(scope: !501, file: !1, line: 363, column: 9)
!501 = distinct !DILexicalBlock(scope: !502, file: !1, line: 361, column: 51)
!502 = distinct !DILexicalBlock(scope: !503, file: !1, line: 361, column: 5)
!503 = distinct !DILexicalBlock(scope: !438, file: !1, line: 361, column: 5)
!504 = !DILocalVariable(name: "_ret", scope: !496, file: !1, line: 363, type: !11)
!505 = !DILocalVariable(name: "_arg3", scope: !496, file: !1, line: 363, type: !11)
!506 = !DILocalVariable(name: "bound", scope: !507, file: !1, line: 372, type: !34)
!507 = distinct !DILexicalBlock(scope: !508, file: !1, line: 371, column: 33)
!508 = distinct !DILexicalBlock(scope: !501, file: !1, line: 371, column: 13)
!509 = !DILocalVariable(name: "tid", scope: !510, file: !1, line: 374, type: !149)
!510 = distinct !DILexicalBlock(scope: !511, file: !1, line: 374, column: 13)
!511 = distinct !DILexicalBlock(scope: !512, file: !1, line: 374, column: 13)
!512 = distinct !DILexicalBlock(scope: !513, file: !1, line: 374, column: 13)
!513 = distinct !DILexicalBlock(scope: !514, file: !1, line: 374, column: 13)
!514 = distinct !DILexicalBlock(scope: !507, file: !1, line: 374, column: 13)
!515 = !DILocalVariable(name: "_ret", scope: !510, file: !1, line: 374, type: !11)
!516 = !DILocalVariable(name: "_arg3", scope: !510, file: !1, line: 374, type: !11)
!517 = !DILocalVariable(name: "_arg4", scope: !510, file: !1, line: 374, type: !11)
!518 = !DILocalVariable(name: "buf", scope: !519, file: !1, line: 377, type: !49)
!519 = distinct !DILexicalBlock(scope: !520, file: !1, line: 376, column: 26)
!520 = distinct !DILexicalBlock(scope: !507, file: !1, line: 376, column: 17)
!521 = !DILocalVariable(name: "ret", scope: !522, file: !1, line: 384, type: !34)
!522 = distinct !DILexicalBlock(scope: !523, file: !1, line: 383, column: 28)
!523 = distinct !DILexicalBlock(scope: !507, file: !1, line: 383, column: 17)
!524 = !DILocalVariable(name: "tid", scope: !525, file: !1, line: 386, type: !149)
!525 = distinct !DILexicalBlock(scope: !526, file: !1, line: 386, column: 17)
!526 = distinct !DILexicalBlock(scope: !527, file: !1, line: 386, column: 17)
!527 = distinct !DILexicalBlock(scope: !528, file: !1, line: 386, column: 17)
!528 = distinct !DILexicalBlock(scope: !529, file: !1, line: 386, column: 17)
!529 = distinct !DILexicalBlock(scope: !522, file: !1, line: 386, column: 17)
!530 = !DILocalVariable(name: "_ret", scope: !525, file: !1, line: 386, type: !11)
!531 = !DILocalVariable(name: "_arg3", scope: !525, file: !1, line: 386, type: !11)
!532 = !DILocalVariable(name: "_arg4", scope: !525, file: !1, line: 386, type: !11)
!533 = !DILocalVariable(name: "_arg5", scope: !525, file: !1, line: 386, type: !11)
!534 = !DILocalVariable(name: "buf", scope: !535, file: !1, line: 401, type: !49)
!535 = distinct !DILexicalBlock(scope: !536, file: !1, line: 400, column: 25)
!536 = distinct !DILexicalBlock(scope: !507, file: !1, line: 400, column: 17)
!537 = !DILocalVariable(name: "buf", scope: !538, file: !1, line: 435, type: !49)
!538 = distinct !DILexicalBlock(scope: !539, file: !1, line: 434, column: 20)
!539 = distinct !DILexicalBlock(scope: !438, file: !1, line: 434, column: 9)
!540 = !DILocation(line: 69, column: 10, scope: !237, inlinedAt: !541)
!541 = distinct !DILocation(line: 187, column: 9, scope: !542, inlinedAt: !559)
!542 = distinct !DILexicalBlock(scope: !543, file: !1, line: 186, column: 20)
!543 = distinct !DILexicalBlock(scope: !544, file: !1, line: 186, column: 9)
!544 = distinct !DISubprogram(name: "redisSetTcpNoDelay", scope: !1, file: !1, line: 182, type: !228, isLocal: true, isDefinition: true, scopeLine: 182, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !545)
!545 = !{!546, !547, !548, !549, !555, !556, !557, !558}
!546 = !DILocalVariable(name: "c", arg: 1, scope: !544, file: !1, line: 182, type: !43)
!547 = !DILocalVariable(name: "yes", scope: !544, file: !1, line: 183, type: !34)
!548 = !DILocalVariable(name: "ret", scope: !544, file: !1, line: 183, type: !34)
!549 = !DILocalVariable(name: "tid", scope: !550, file: !1, line: 184, type: !149)
!550 = distinct !DILexicalBlock(scope: !551, file: !1, line: 184, column: 5)
!551 = distinct !DILexicalBlock(scope: !552, file: !1, line: 184, column: 5)
!552 = distinct !DILexicalBlock(scope: !553, file: !1, line: 184, column: 5)
!553 = distinct !DILexicalBlock(scope: !554, file: !1, line: 184, column: 5)
!554 = distinct !DILexicalBlock(scope: !544, file: !1, line: 184, column: 5)
!555 = !DILocalVariable(name: "_ret", scope: !550, file: !1, line: 184, type: !11)
!556 = !DILocalVariable(name: "_arg3", scope: !550, file: !1, line: 184, type: !11)
!557 = !DILocalVariable(name: "_arg4", scope: !550, file: !1, line: 184, type: !11)
!558 = !DILocalVariable(name: "_arg5", scope: !550, file: !1, line: 184, type: !11)
!559 = distinct !DILocation(line: 427, column: 13, scope: !560)
!560 = distinct !DILexicalBlock(scope: !501, file: !1, line: 427, column: 13)
!561 = !DILocation(line: 285, column: 50, scope: !438)
!562 = !DILocation(line: 285, column: 65, scope: !438)
!563 = !DILocation(line: 285, column: 75, scope: !438)
!564 = !DILocation(line: 286, column: 58, scope: !438)
!565 = !DILocation(line: 287, column: 48, scope: !438)
!566 = !DILocation(line: 288, column: 5, scope: !438)
!567 = !DILocation(line: 289, column: 5, scope: !438)
!568 = !DILocation(line: 289, column: 10, scope: !438)
!569 = !DILocation(line: 290, column: 5, scope: !438)
!570 = !DILocation(line: 291, column: 24, scope: !438)
!571 = !{!165, !160, i64 136}
!572 = !DILocation(line: 291, column: 30, scope: !438)
!573 = !DILocation(line: 291, column: 9, scope: !438)
!574 = !DILocation(line: 292, column: 31, scope: !438)
!575 = !DILocation(line: 292, column: 9, scope: !438)
!576 = !DILocation(line: 293, column: 9, scope: !438)
!577 = !DILocation(line: 294, column: 10, scope: !438)
!578 = !DILocation(line: 290, column: 29, scope: !438)
!579 = !DILocation(line: 296, column: 14, scope: !438)
!580 = !{!166, !166, i64 0}
!581 = !DILocation(line: 297, column: 8, scope: !438)
!582 = !DILocation(line: 297, column: 24, scope: !438)
!583 = !{!165, !161, i64 160}
!584 = !DILocation(line: 298, column: 12, scope: !438)
!585 = !DILocation(line: 298, column: 17, scope: !438)
!586 = !{!165, !160, i64 192}
!587 = !DILocation(line: 307, column: 16, scope: !588)
!588 = distinct !DILexicalBlock(scope: !438, file: !1, line: 307, column: 9)
!589 = !{!165, !166, i64 176}
!590 = !DILocation(line: 307, column: 21, scope: !588)
!591 = !DILocation(line: 307, column: 9, scope: !438)
!592 = !DILocation(line: 308, column: 13, scope: !593)
!593 = distinct !DILexicalBlock(scope: !594, file: !1, line: 308, column: 13)
!594 = distinct !DILexicalBlock(scope: !588, file: !1, line: 307, column: 30)
!595 = !DILocation(line: 308, column: 13, scope: !594)
!596 = !DILocation(line: 309, column: 13, scope: !593)
!597 = !DILocation(line: 311, column: 23, scope: !594)
!598 = !DILocation(line: 311, column: 21, scope: !594)
!599 = !DILocation(line: 312, column: 5, scope: !594)
!600 = !DILocation(line: 314, column: 9, scope: !601)
!601 = distinct !DILexicalBlock(scope: !438, file: !1, line: 314, column: 9)
!602 = !DILocation(line: 0, scope: !603)
!603 = distinct !DILexicalBlock(scope: !604, file: !1, line: 322, column: 13)
!604 = distinct !DILexicalBlock(scope: !601, file: !1, line: 321, column: 12)
!605 = !{!165, !166, i64 168}
!606 = !DILocation(line: 314, column: 9, scope: !438)
!607 = !DILocation(line: 315, column: 24, scope: !608)
!608 = distinct !DILexicalBlock(scope: !609, file: !1, line: 315, column: 13)
!609 = distinct !DILexicalBlock(scope: !601, file: !1, line: 314, column: 18)
!610 = !DILocation(line: 315, column: 13, scope: !609)
!611 = !DILocalVariable(name: "c", arg: 1, scope: !612, file: !1, line: 196, type: !43)
!612 = distinct !DISubprogram(name: "redisContextTimeoutMsec", scope: !1, file: !1, line: 196, type: !613, isLocal: true, isDefinition: true, scopeLine: 197, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !616)
!613 = !DISubroutineType(types: !614)
!614 = !{!34, !43, !615}
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!616 = !{!611, !617, !618, !619}
!617 = !DILocalVariable(name: "result", arg: 2, scope: !612, file: !1, line: 196, type: !615)
!618 = !DILocalVariable(name: "timeout", scope: !612, file: !1, line: 198, type: !426)
!619 = !DILocalVariable(name: "msec", scope: !612, file: !1, line: 199, type: !124)
!620 = !DILocation(line: 196, column: 50, scope: !612, inlinedAt: !621)
!621 = distinct !DILocation(line: 327, column: 9, scope: !622)
!622 = distinct !DILexicalBlock(scope: !438, file: !1, line: 327, column: 9)
!623 = !DILocation(line: 198, column: 27, scope: !612, inlinedAt: !621)
!624 = !DILocation(line: 199, column: 10, scope: !612, inlinedAt: !621)
!625 = !DILocation(line: 202, column: 9, scope: !612, inlinedAt: !621)
!626 = !DILocation(line: 316, column: 28, scope: !627)
!627 = distinct !DILexicalBlock(scope: !628, file: !1, line: 316, column: 17)
!628 = distinct !DILexicalBlock(scope: !608, file: !1, line: 315, column: 36)
!629 = !DILocation(line: 316, column: 17, scope: !628)
!630 = !DILocation(line: 317, column: 30, scope: !627)
!631 = !DILocation(line: 317, column: 28, scope: !627)
!632 = !DILocation(line: 317, column: 17, scope: !627)
!633 = !DILocation(line: 322, column: 13, scope: !603)
!634 = !DILocation(line: 322, column: 13, scope: !604)
!635 = !DILocation(line: 323, column: 13, scope: !603)
!636 = !DILocation(line: 324, column: 20, scope: !604)
!637 = !DILocation(line: 319, column: 23, scope: !628)
!638 = !DILocation(line: 319, column: 32, scope: !628)
!639 = !DILocation(line: 319, column: 13, scope: !628)
!640 = !DILocation(line: 320, column: 9, scope: !628)
!641 = !DILocation(line: 198, column: 40, scope: !612, inlinedAt: !621)
!642 = !DILocation(line: 202, column: 17, scope: !643, inlinedAt: !621)
!643 = distinct !DILexicalBlock(scope: !612, file: !1, line: 202, column: 9)
!644 = !DILocation(line: 203, column: 22, scope: !645, inlinedAt: !621)
!645 = distinct !DILexicalBlock(scope: !646, file: !1, line: 203, column: 13)
!646 = distinct !DILexicalBlock(scope: !643, file: !1, line: 202, column: 26)
!647 = !{!648, !649, i64 8}
!648 = !{!"timeval", !649, i64 0, !649, i64 8}
!649 = !{!"long", !161, i64 0}
!650 = !DILocation(line: 203, column: 30, scope: !645, inlinedAt: !621)
!651 = !DILocation(line: 203, column: 40, scope: !645, inlinedAt: !621)
!652 = !DILocation(line: 203, column: 52, scope: !645, inlinedAt: !621)
!653 = !{!648, !649, i64 0}
!654 = !DILocation(line: 203, column: 59, scope: !645, inlinedAt: !621)
!655 = !DILocation(line: 203, column: 13, scope: !646, inlinedAt: !621)
!656 = !DILocation(line: 208, column: 33, scope: !646, inlinedAt: !621)
!657 = !DILocation(line: 208, column: 62, scope: !646, inlinedAt: !621)
!658 = !DILocation(line: 208, column: 69, scope: !646, inlinedAt: !621)
!659 = !DILocation(line: 208, column: 41, scope: !646, inlinedAt: !621)
!660 = !DILocation(line: 210, column: 22, scope: !661, inlinedAt: !621)
!661 = distinct !DILexicalBlock(scope: !646, file: !1, line: 210, column: 13)
!662 = !DILocation(line: 205, column: 13, scope: !663, inlinedAt: !621)
!663 = distinct !DILexicalBlock(scope: !645, file: !1, line: 203, column: 73)
!664 = !DILocation(line: 217, column: 1, scope: !612, inlinedAt: !621)
!665 = !DILocation(line: 327, column: 9, scope: !438)
!666 = !DILocation(line: 328, column: 9, scope: !667)
!667 = distinct !DILexicalBlock(scope: !622, file: !1, line: 327, column: 64)
!668 = !DILocation(line: 329, column: 9, scope: !667)
!669 = !DILocation(line: 0, scope: !622)
!670 = !DILocation(line: 216, column: 5, scope: !612, inlinedAt: !621)
!671 = !DILocation(line: 0, scope: !612, inlinedAt: !621)
!672 = !DILocation(line: 332, column: 21, scope: !673)
!673 = distinct !DILexicalBlock(scope: !438, file: !1, line: 332, column: 9)
!674 = !DILocation(line: 0, scope: !675)
!675 = distinct !DILexicalBlock(scope: !673, file: !1, line: 335, column: 16)
!676 = !{!165, !166, i64 184}
!677 = !DILocation(line: 332, column: 9, scope: !438)
!678 = !DILocation(line: 333, column: 9, scope: !679)
!679 = distinct !DILexicalBlock(scope: !673, file: !1, line: 332, column: 30)
!680 = !DILocation(line: 335, column: 5, scope: !679)
!681 = !DILocation(line: 335, column: 35, scope: !675)
!682 = !DILocation(line: 335, column: 16, scope: !673)
!683 = !DILocation(line: 336, column: 9, scope: !684)
!684 = distinct !DILexicalBlock(scope: !675, file: !1, line: 335, column: 51)
!685 = !DILocation(line: 337, column: 30, scope: !684)
!686 = !DILocation(line: 338, column: 5, scope: !684)
!687 = !DILocation(line: 0, scope: !679)
!688 = !DILocation(line: 340, column: 5, scope: !438)
!689 = !DILocation(line: 341, column: 5, scope: !438)
!690 = !DILocation(line: 342, column: 11, scope: !438)
!691 = !DILocation(line: 342, column: 21, scope: !438)
!692 = !{!693, !160, i64 4}
!693 = !{!"addrinfo", !160, i64 0, !160, i64 4, !160, i64 8, !160, i64 12, !160, i64 16, !166, i64 24, !166, i64 32, !166, i64 40}
!694 = !DILocation(line: 343, column: 11, scope: !438)
!695 = !DILocation(line: 343, column: 23, scope: !438)
!696 = !{!693, !160, i64 8}
!697 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !698)
!698 = distinct !DILocation(line: 350, column: 5, scope: !479)
!699 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !698)
!700 = !DILocation(line: 121, column: 2, scope: !172, inlinedAt: !698)
!701 = !DILocation(line: 350, column: 5, scope: !479)
!702 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !703)
!703 = distinct !DILocation(line: 350, column: 5, scope: !479)
!704 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !703)
!705 = !DILocation(line: 121, column: 2, scope: !172, inlinedAt: !703)
!706 = !DILocation(line: 350, column: 5, scope: !480)
!707 = !DILocation(line: 350, column: 5, scope: !708)
!708 = distinct !DILexicalBlock(scope: !479, file: !1, line: 350, column: 5)
!709 = !DILocation(line: 290, column: 21, scope: !438)
!710 = !DILocation(line: 288, column: 12, scope: !438)
!711 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !712)
!712 = distinct !DILocation(line: 49, column: 21, scope: !193, inlinedAt: !713)
!713 = distinct !DILocation(line: 350, column: 5, scope: !476)
!714 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !712)
!715 = !DILocation(line: 121, column: 2, scope: !172, inlinedAt: !712)
!716 = !DILocation(line: 49, column: 16, scope: !193, inlinedAt: !713)
!717 = !DILocation(line: 50, column: 19, scope: !193, inlinedAt: !713)
!718 = !DILocation(line: 50, column: 11, scope: !193, inlinedAt: !713)
!719 = !DILocation(line: 50, column: 9, scope: !193, inlinedAt: !713)
!720 = !DILocation(line: 50, column: 2, scope: !193, inlinedAt: !713)
!721 = !DILocation(line: 350, column: 5, scope: !476)
!722 = !{i32 -2146200514, i32 -2146200501, i32 -2146200476, i32 -2146200452, i32 -2146200427, i32 -2146200352, i32 -2146200327, i32 -2146200183, i32 -2146200158, i32 -2146196846, i32 -2146196757, i32 -2146196636, i32 -2146196541, i32 -2146196440, i32 -2146196413, i32 -2146196330, i32 -2146196241, i32 -2146196120, i32 -2146196020, i32 -2146195914, i32 -2146195806, i32 -2146199821, i32 -2146199768, i32 -2146199737, i32 -2146199706, i32 -2146199685, i32 -2146199663, i32 -2146199614, i32 -2146199593, i32 -2146199490, i32 -2146199458, i32 -2146195723, i32 -2146195634, i32 -2146195513, i32 -2146195414, i32 -2146195308, i32 -2146195206, i32 -2146195173, i32 -2146195100, i32 -2146195032, i32 -2146199268, i32 -2146199209, i32 -2146199156, i32 -2146199125, i32 -2146199094, i32 -2146199073, i32 -2146199051, i32 -2146199002, i32 -2146198981, i32 -2146194985, i32 -2146194896, i32 -2146194775, i32 -2146194676, i32 -2146194570, i32 -2146194468, i32 -2146194435, i32 -2146194352, i32 -2146194263, i32 -2146194142, i32 -2146194042, i32 -2146194016, i32 -2146193913, i32 -2146193887, i32 -2146198723, i32 -2146198698, i32 -2146198631, i32 -2146198606, i32 -2146198542, i32 -2146198460, i32 -2146198437, i32 -2146198412, i32 -2146198387}
!723 = !DILocation(line: 350, column: 5, scope: !724)
!724 = distinct !DILexicalBlock(scope: !725, file: !1, line: 350, column: 5)
!725 = distinct !DILexicalBlock(scope: !476, file: !1, line: 350, column: 5)
!726 = !{i32 -2146197326, i32 -2146197309}
!727 = !DILocation(line: 352, column: 9, scope: !491)
!728 = !DILocation(line: 352, column: 12, scope: !491)
!729 = !DILocation(line: 352, column: 9, scope: !438)
!730 = !DILocation(line: 353, column: 26, scope: !490)
!731 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !732)
!732 = distinct !DILocation(line: 354, column: 10, scope: !488)
!733 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !732)
!734 = !DILocation(line: 121, column: 2, scope: !172, inlinedAt: !732)
!735 = !DILocation(line: 354, column: 10, scope: !488)
!736 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !737)
!737 = distinct !DILocation(line: 354, column: 10, scope: !488)
!738 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !737)
!739 = !DILocation(line: 121, column: 2, scope: !172, inlinedAt: !737)
!740 = !DILocation(line: 354, column: 10, scope: !489)
!741 = !DILocation(line: 354, column: 10, scope: !742)
!742 = distinct !DILexicalBlock(scope: !488, file: !1, line: 354, column: 10)
!743 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !744)
!744 = distinct !DILocation(line: 49, column: 21, scope: !193, inlinedAt: !745)
!745 = distinct !DILocation(line: 354, column: 10, scope: !485)
!746 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !744)
!747 = !DILocation(line: 121, column: 2, scope: !172, inlinedAt: !744)
!748 = !DILocation(line: 49, column: 16, scope: !193, inlinedAt: !745)
!749 = !DILocation(line: 50, column: 19, scope: !193, inlinedAt: !745)
!750 = !DILocation(line: 50, column: 11, scope: !193, inlinedAt: !745)
!751 = !DILocation(line: 50, column: 9, scope: !193, inlinedAt: !745)
!752 = !DILocation(line: 50, column: 2, scope: !193, inlinedAt: !745)
!753 = !DILocation(line: 354, column: 10, scope: !485)
!754 = !{i32 -2146191372, i32 -2146191359, i32 -2146191334, i32 -2146191310, i32 -2146191285, i32 -2146191210, i32 -2146191185, i32 -2146191041, i32 -2146191016, i32 -2146187711, i32 -2146187622, i32 -2146187501, i32 -2146187406, i32 -2146187305, i32 -2146187278, i32 -2146187195, i32 -2146187106, i32 -2146186985, i32 -2146186885, i32 -2146186779, i32 -2146186671, i32 -2146190679, i32 -2146190626, i32 -2146190595, i32 -2146190564, i32 -2146190543, i32 -2146190521, i32 -2146190472, i32 -2146190451, i32 -2146190348, i32 -2146190316, i32 -2146186588, i32 -2146186499, i32 -2146186378, i32 -2146186279, i32 -2146186173, i32 -2146186071, i32 -2146186038, i32 -2146185965, i32 -2146185897, i32 -2146190126, i32 -2146190067, i32 -2146190014, i32 -2146189983, i32 -2146189952, i32 -2146189931, i32 -2146189909, i32 -2146189860, i32 -2146189839, i32 -2146185850, i32 -2146185761, i32 -2146185640, i32 -2146185541, i32 -2146185435, i32 -2146185333, i32 -2146185300, i32 -2146185217, i32 -2146185128, i32 -2146185007, i32 -2146184907, i32 -2146184881, i32 -2146184778, i32 -2146184752, i32 -2146189581, i32 -2146189556, i32 -2146189489, i32 -2146189464, i32 -2146189400, i32 -2146189318, i32 -2146189295, i32 -2146189270, i32 -2146189245}
!755 = !DILocation(line: 354, column: 10, scope: !756)
!756 = distinct !DILexicalBlock(scope: !757, file: !1, line: 354, column: 10)
!757 = distinct !DILexicalBlock(scope: !485, file: !1, line: 354, column: 10)
!758 = !{i32 -2146188184, i32 -2146188167}
!759 = !DILocation(line: 356, column: 14, scope: !760)
!760 = distinct !DILexicalBlock(scope: !490, file: !1, line: 356, column: 14)
!761 = !DILocation(line: 356, column: 17, scope: !760)
!762 = !DILocation(line: 356, column: 14, scope: !490)
!763 = !DILocation(line: 357, column: 47, scope: !764)
!764 = distinct !DILexicalBlock(scope: !760, file: !1, line: 356, column: 23)
!765 = !DILocation(line: 357, column: 13, scope: !764)
!766 = !DILocation(line: 358, column: 13, scope: !764)
!767 = !DILocation(line: 361, column: 14, scope: !503)
!768 = !DILocation(line: 290, column: 52, scope: !438)
!769 = !DILocation(line: 361, column: 10, scope: !503)
!770 = !DILocation(line: 361, column: 26, scope: !502)
!771 = !DILocation(line: 361, column: 5, scope: !503)
!772 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !773)
!773 = distinct !DILocation(line: 363, column: 9, scope: !499)
!774 = !DILocation(line: 0, scope: !775)
!775 = distinct !DILexicalBlock(scope: !776, file: !1, line: 414, column: 21)
!776 = distinct !DILexicalBlock(scope: !777, file: !1, line: 413, column: 61)
!777 = distinct !DILexicalBlock(scope: !778, file: !1, line: 413, column: 24)
!778 = distinct !DILexicalBlock(scope: !779, file: !1, line: 411, column: 24)
!779 = distinct !DILexicalBlock(scope: !780, file: !1, line: 408, column: 17)
!780 = distinct !DILexicalBlock(scope: !781, file: !1, line: 407, column: 56)
!781 = distinct !DILexicalBlock(scope: !501, file: !1, line: 407, column: 13)
!782 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !773)
!783 = !DILocation(line: 121, column: 2, scope: !172, inlinedAt: !773)
!784 = !DILocation(line: 363, column: 9, scope: !499)
!785 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !786)
!786 = distinct !DILocation(line: 363, column: 9, scope: !499)
!787 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !786)
!788 = !DILocation(line: 121, column: 2, scope: !172, inlinedAt: !786)
!789 = !DILocation(line: 363, column: 9, scope: !500)
!790 = !DILocation(line: 363, column: 9, scope: !791)
!791 = distinct !DILexicalBlock(scope: !499, file: !1, line: 363, column: 9)
!792 = !{!693, !160, i64 12}
!793 = !DILocation(line: 288, column: 9, scope: !438)
!794 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !795)
!795 = distinct !DILocation(line: 49, column: 21, scope: !193, inlinedAt: !796)
!796 = distinct !DILocation(line: 363, column: 9, scope: !496)
!797 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !795)
!798 = !DILocation(line: 121, column: 2, scope: !172, inlinedAt: !795)
!799 = !DILocation(line: 49, column: 16, scope: !193, inlinedAt: !796)
!800 = !DILocation(line: 50, column: 19, scope: !193, inlinedAt: !796)
!801 = !DILocation(line: 50, column: 11, scope: !193, inlinedAt: !796)
!802 = !DILocation(line: 50, column: 9, scope: !193, inlinedAt: !796)
!803 = !DILocation(line: 50, column: 2, scope: !193, inlinedAt: !796)
!804 = !DILocation(line: 363, column: 9, scope: !496)
!805 = !{i32 -2146182235, i32 -2146182222, i32 -2146182197, i32 -2146182173, i32 -2146182148, i32 -2146182073, i32 -2146182048, i32 -2146181904, i32 -2146178689, i32 -2146178600, i32 -2146178479, i32 -2146178384, i32 -2146178283, i32 -2146178256, i32 -2146178173, i32 -2146178084, i32 -2146177963, i32 -2146177863, i32 -2146177757, i32 -2146177649, i32 -2146181574, i32 -2146181521, i32 -2146181490, i32 -2146181459, i32 -2146181438, i32 -2146181416, i32 -2146181367, i32 -2146181346, i32 -2146181243, i32 -2146177566, i32 -2146177477, i32 -2146177356, i32 -2146177257, i32 -2146177151, i32 -2146177049, i32 -2146177016, i32 -2146176943, i32 -2146176875, i32 -2146181053, i32 -2146180994, i32 -2146180941, i32 -2146180910, i32 -2146180879, i32 -2146180858, i32 -2146180836, i32 -2146180787, i32 -2146180766, i32 -2146176833, i32 -2146176744, i32 -2146176623, i32 -2146176524, i32 -2146176418, i32 -2146176316, i32 -2146176283, i32 -2146176200, i32 -2146176111, i32 -2146175990, i32 -2146175890, i32 -2146175864, i32 -2146175761, i32 -2146175735, i32 -2146180508, i32 -2146180441, i32 -2146180416, i32 -2146180352, i32 -2146180270, i32 -2146180247, i32 -2146180222, i32 -2146180197}
!806 = !DILocation(line: 363, column: 9, scope: !807)
!807 = distinct !DILexicalBlock(scope: !808, file: !1, line: 363, column: 9)
!808 = distinct !DILexicalBlock(scope: !496, file: !1, line: 363, column: 9)
!809 = !{i32 -2146179159, i32 -2146179142}
!810 = !DILocation(line: 365, column: 13, scope: !811)
!811 = distinct !DILexicalBlock(scope: !501, file: !1, line: 365, column: 13)
!812 = !DILocation(line: 365, column: 15, scope: !811)
!813 = !DILocation(line: 365, column: 13, scope: !501)
!814 = !DILocation(line: 368, column: 15, scope: !501)
!815 = !DILocation(line: 369, column: 13, scope: !816)
!816 = distinct !DILexicalBlock(scope: !501, file: !1, line: 369, column: 13)
!817 = !DILocation(line: 369, column: 35, scope: !816)
!818 = !DILocation(line: 369, column: 13, scope: !501)
!819 = !DILocation(line: 371, column: 20, scope: !508)
!820 = !DILocation(line: 371, column: 13, scope: !508)
!821 = !DILocation(line: 371, column: 13, scope: !501)
!822 = !DILocation(line: 372, column: 17, scope: !507)
!823 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !824)
!824 = distinct !DILocation(line: 374, column: 13, scope: !513)
!825 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !824)
!826 = !DILocation(line: 121, column: 2, scope: !172, inlinedAt: !824)
!827 = !DILocation(line: 374, column: 13, scope: !513)
!828 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !829)
!829 = distinct !DILocation(line: 374, column: 13, scope: !513)
!830 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !829)
!831 = !DILocation(line: 121, column: 2, scope: !172, inlinedAt: !829)
!832 = !DILocation(line: 374, column: 13, scope: !514)
!833 = !DILocation(line: 374, column: 13, scope: !834)
!834 = distinct !DILexicalBlock(scope: !513, file: !1, line: 374, column: 13)
!835 = !DILocation(line: 290, column: 40, scope: !438)
!836 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !837)
!837 = distinct !DILocation(line: 49, column: 21, scope: !193, inlinedAt: !838)
!838 = distinct !DILocation(line: 374, column: 13, scope: !510)
!839 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !837)
!840 = !DILocation(line: 121, column: 2, scope: !172, inlinedAt: !837)
!841 = !DILocation(line: 49, column: 16, scope: !193, inlinedAt: !838)
!842 = !DILocation(line: 50, column: 19, scope: !193, inlinedAt: !838)
!843 = !DILocation(line: 50, column: 11, scope: !193, inlinedAt: !838)
!844 = !DILocation(line: 50, column: 9, scope: !193, inlinedAt: !838)
!845 = !DILocation(line: 50, column: 2, scope: !193, inlinedAt: !838)
!846 = !DILocation(line: 374, column: 13, scope: !510)
!847 = !{i32 -2146173188, i32 -2146173175, i32 -2146173150, i32 -2146173126, i32 -2146173101, i32 -2146173026, i32 -2146173001, i32 -2146172857, i32 -2146172832, i32 -2146169494, i32 -2146169405, i32 -2146169284, i32 -2146169189, i32 -2146169088, i32 -2146169061, i32 -2146168978, i32 -2146168889, i32 -2146168768, i32 -2146168668, i32 -2146168562, i32 -2146168454, i32 -2146172495, i32 -2146172442, i32 -2146172411, i32 -2146172380, i32 -2146172359, i32 -2146172337, i32 -2146172288, i32 -2146172267, i32 -2146172164, i32 -2146172132, i32 -2146168371, i32 -2146168282, i32 -2146168161, i32 -2146168062, i32 -2146167956, i32 -2146167854, i32 -2146167821, i32 -2146167748, i32 -2146167680, i32 -2146171942, i32 -2146171883, i32 -2146171830, i32 -2146171799, i32 -2146171768, i32 -2146171747, i32 -2146171725, i32 -2146171676, i32 -2146171655, i32 -2146167633, i32 -2146167544, i32 -2146167423, i32 -2146167324, i32 -2146167218, i32 -2146167116, i32 -2146167083, i32 -2146167000, i32 -2146166911, i32 -2146166790, i32 -2146166690, i32 -2146166664, i32 -2146166561, i32 -2146166535, i32 -2146171397, i32 -2146171372, i32 -2146171305, i32 -2146171280, i32 -2146171216, i32 -2146171134, i32 -2146171111, i32 -2146171086, i32 -2146171061}
!848 = !DILocation(line: 374, column: 13, scope: !849)
!849 = distinct !DILexicalBlock(scope: !850, file: !1, line: 374, column: 13)
!850 = distinct !DILexicalBlock(scope: !510, file: !1, line: 374, column: 13)
!851 = !{i32 -2146170000, i32 -2146169983}
!852 = !DILocation(line: 376, column: 17, scope: !520)
!853 = !DILocation(line: 376, column: 20, scope: !520)
!854 = !DILocation(line: 376, column: 17, scope: !507)
!855 = !DILocation(line: 377, column: 17, scope: !519)
!856 = !DILocation(line: 377, column: 22, scope: !519)
!857 = !DILocation(line: 378, column: 63, scope: !519)
!858 = !DILocation(line: 378, column: 17, scope: !519)
!859 = !DILocation(line: 379, column: 17, scope: !519)
!860 = !DILocation(line: 381, column: 13, scope: !520)
!861 = !DILocation(line: 383, column: 17, scope: !507)
!862 = !DILocation(line: 384, column: 17, scope: !522)
!863 = !DILocation(line: 288, column: 16, scope: !438)
!864 = !DILocation(line: 385, column: 19, scope: !522)
!865 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !866)
!866 = distinct !DILocation(line: 386, column: 17, scope: !528)
!867 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !866)
!868 = !DILocation(line: 121, column: 2, scope: !172, inlinedAt: !866)
!869 = !DILocation(line: 386, column: 17, scope: !528)
!870 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !871)
!871 = distinct !DILocation(line: 386, column: 17, scope: !528)
!872 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !871)
!873 = !DILocation(line: 121, column: 2, scope: !172, inlinedAt: !871)
!874 = !DILocation(line: 386, column: 17, scope: !529)
!875 = !DILocation(line: 386, column: 17, scope: !876)
!876 = distinct !DILexicalBlock(scope: !528, file: !1, line: 386, column: 17)
!877 = !DILocation(line: 384, column: 21, scope: !522)
!878 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !879)
!879 = distinct !DILocation(line: 49, column: 21, scope: !193, inlinedAt: !880)
!880 = distinct !DILocation(line: 386, column: 17, scope: !525)
!881 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !879)
!882 = !DILocation(line: 121, column: 2, scope: !172, inlinedAt: !879)
!883 = !DILocation(line: 49, column: 16, scope: !193, inlinedAt: !880)
!884 = !DILocation(line: 50, column: 19, scope: !193, inlinedAt: !880)
!885 = !DILocation(line: 50, column: 11, scope: !193, inlinedAt: !880)
!886 = !DILocation(line: 50, column: 9, scope: !193, inlinedAt: !880)
!887 = !DILocation(line: 50, column: 2, scope: !193, inlinedAt: !880)
!888 = !DILocation(line: 386, column: 17, scope: !525)
!889 = !{i32 -2146159872, i32 -2146159859, i32 -2146159834, i32 -2146159810, i32 -2146159785, i32 -2146159710, i32 -2146159685, i32 -2146159541, i32 -2146159516, i32 -2146156122, i32 -2146156033, i32 -2146155912, i32 -2146155817, i32 -2146155716, i32 -2146155689, i32 -2146155606, i32 -2146155517, i32 -2146155396, i32 -2146155296, i32 -2146155190, i32 -2146155082, i32 -2146159140, i32 -2146159087, i32 -2146159056, i32 -2146159025, i32 -2146159004, i32 -2146158982, i32 -2146158933, i32 -2146158912, i32 -2146158809, i32 -2146158777, i32 -2146154999, i32 -2146154910, i32 -2146154789, i32 -2146154690, i32 -2146154584, i32 -2146154482, i32 -2146154449, i32 -2146154376, i32 -2146154308, i32 -2146158587, i32 -2146158528, i32 -2146158475, i32 -2146158444, i32 -2146158413, i32 -2146158392, i32 -2146158370, i32 -2146158321, i32 -2146158300, i32 -2146154262, i32 -2146154173, i32 -2146154052, i32 -2146153953, i32 -2146153847, i32 -2146153745, i32 -2146153712, i32 -2146153629, i32 -2146153540, i32 -2146153419, i32 -2146153319, i32 -2146153293, i32 -2146153190, i32 -2146153164, i32 -2146158042, i32 -2146158017, i32 -2146157950, i32 -2146157925, i32 -2146157861, i32 -2146157779, i32 -2146157756, i32 -2146157731, i32 -2146157706}
!890 = !DILocation(line: 386, column: 17, scope: !891)
!891 = distinct !DILexicalBlock(scope: !892, file: !1, line: 386, column: 17)
!892 = distinct !DILexicalBlock(scope: !525, file: !1, line: 386, column: 17)
!893 = !{i32 -2146156622, i32 -2146156605}
!894 = !DILocation(line: 388, column: 21, scope: !895)
!895 = distinct !DILexicalBlock(scope: !522, file: !1, line: 388, column: 21)
!896 = !DILocation(line: 388, column: 21, scope: !522)
!897 = !DILocation(line: 0, scope: !523)
!898 = !DILocation(line: 391, column: 13, scope: !523)
!899 = !DILocation(line: 393, column: 22, scope: !900)
!900 = distinct !DILexicalBlock(scope: !507, file: !1, line: 393, column: 13)
!901 = !DILocation(line: 290, column: 56, scope: !438)
!902 = !DILocation(line: 393, column: 18, scope: !900)
!903 = !DILocation(line: 393, column: 35, scope: !904)
!904 = distinct !DILexicalBlock(scope: !900, file: !1, line: 393, column: 13)
!905 = !DILocation(line: 393, column: 13, scope: !900)
!906 = !DILocation(line: 394, column: 26, scope: !907)
!907 = distinct !DILexicalBlock(scope: !908, file: !1, line: 394, column: 21)
!908 = distinct !DILexicalBlock(scope: !904, file: !1, line: 393, column: 60)
!909 = !DILocation(line: 394, column: 31, scope: !907)
!910 = !{!693, !166, i64 24}
!911 = !DILocation(line: 394, column: 42, scope: !907)
!912 = !{!693, !160, i64 16}
!913 = !DILocation(line: 394, column: 21, scope: !907)
!914 = !DILocation(line: 394, column: 54, scope: !907)
!915 = !DILocation(line: 394, column: 21, scope: !908)
!916 = !DILocation(line: 393, column: 51, scope: !904)
!917 = !{!693, !166, i64 40}
!918 = !DILocation(line: 393, column: 13, scope: !904)
!919 = distinct !{!919, !905, !920}
!920 = !DILocation(line: 398, column: 13, scope: !900)
!921 = !DILocation(line: 399, column: 26, scope: !507)
!922 = !DILocation(line: 399, column: 13, scope: !507)
!923 = !DILocation(line: 400, column: 17, scope: !507)
!924 = !DILocation(line: 401, column: 17, scope: !535)
!925 = !DILocation(line: 401, column: 22, scope: !535)
!926 = !DILocation(line: 402, column: 75, scope: !535)
!927 = !DILocation(line: 402, column: 66, scope: !535)
!928 = !DILocation(line: 402, column: 17, scope: !535)
!929 = !DILocation(line: 403, column: 17, scope: !535)
!930 = !DILocation(line: 405, column: 13, scope: !536)
!931 = !DILocation(line: 396, column: 21, scope: !932)
!932 = distinct !DILexicalBlock(scope: !907, file: !1, line: 394, column: 61)
!933 = !DILocation(line: 406, column: 9, scope: !508)
!934 = !DILocation(line: 407, column: 21, scope: !781)
!935 = !DILocation(line: 407, column: 26, scope: !781)
!936 = !DILocation(line: 407, column: 37, scope: !781)
!937 = !DILocation(line: 407, column: 13, scope: !781)
!938 = !DILocation(line: 407, column: 49, scope: !781)
!939 = !DILocation(line: 407, column: 13, scope: !501)
!940 = !DILocation(line: 408, column: 17, scope: !779)
!941 = !DILocation(line: 408, column: 23, scope: !779)
!942 = !DILocation(line: 408, column: 17, scope: !780)
!943 = !DILocalVariable(name: "c", arg: 1, scope: !944, file: !1, line: 61, type: !43)
!944 = distinct !DISubprogram(name: "redisContextCloseFd", scope: !1, file: !1, line: 61, type: !945, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !947)
!945 = !DISubroutineType(types: !946)
!946 = !{null, !43}
!947 = !{!943}
!948 = !DILocation(line: 61, column: 47, scope: !944, inlinedAt: !949)
!949 = distinct !DILocation(line: 409, column: 17, scope: !950)
!950 = distinct !DILexicalBlock(scope: !779, file: !1, line: 408, column: 40)
!951 = !DILocation(line: 62, column: 11, scope: !952, inlinedAt: !949)
!952 = distinct !DILexicalBlock(scope: !944, file: !1, line: 62, column: 9)
!953 = !DILocation(line: 62, column: 17, scope: !952, inlinedAt: !949)
!954 = !DILocation(line: 62, column: 20, scope: !952, inlinedAt: !949)
!955 = !DILocation(line: 62, column: 9, scope: !944, inlinedAt: !949)
!956 = !DILocation(line: 63, column: 9, scope: !957, inlinedAt: !949)
!957 = distinct !DILexicalBlock(scope: !952, file: !1, line: 62, column: 26)
!958 = !DILocation(line: 64, column: 15, scope: !957, inlinedAt: !949)
!959 = !DILocation(line: 65, column: 5, scope: !957, inlinedAt: !949)
!960 = !DILocation(line: 66, column: 1, scope: !944, inlinedAt: !949)
!961 = !DILocation(line: 410, column: 17, scope: !950)
!962 = !DILocation(line: 411, column: 24, scope: !778)
!963 = !DILocation(line: 411, column: 30, scope: !778)
!964 = !DILocation(line: 411, column: 45, scope: !778)
!965 = !DILocation(line: 425, column: 22, scope: !966)
!966 = distinct !DILexicalBlock(scope: !501, file: !1, line: 425, column: 13)
!967 = !DILocation(line: 413, column: 24, scope: !777)
!968 = !DILocation(line: 413, column: 30, scope: !777)
!969 = !DILocation(line: 413, column: 47, scope: !777)
!970 = !DILocation(line: 414, column: 30, scope: !775)
!971 = !DILocation(line: 414, column: 21, scope: !776)
!972 = !DILocation(line: 414, column: 21, scope: !775)
!973 = !DILocation(line: 61, column: 47, scope: !944, inlinedAt: !974)
!974 = distinct !DILocation(line: 417, column: 21, scope: !975)
!975 = distinct !DILexicalBlock(scope: !775, file: !1, line: 416, column: 24)
!976 = !DILocation(line: 62, column: 11, scope: !952, inlinedAt: !974)
!977 = !DILocation(line: 62, column: 17, scope: !952, inlinedAt: !974)
!978 = !DILocation(line: 62, column: 20, scope: !952, inlinedAt: !974)
!979 = !DILocation(line: 62, column: 9, scope: !944, inlinedAt: !974)
!980 = !DILocation(line: 63, column: 9, scope: !957, inlinedAt: !974)
!981 = !DILocation(line: 64, column: 15, scope: !957, inlinedAt: !974)
!982 = !DILocation(line: 65, column: 5, scope: !957, inlinedAt: !974)
!983 = !DILocation(line: 66, column: 1, scope: !944, inlinedAt: !974)
!984 = !DILocation(line: 418, column: 21, scope: !975)
!985 = !DILocation(line: 421, column: 21, scope: !986)
!986 = distinct !DILexicalBlock(scope: !987, file: !1, line: 421, column: 21)
!987 = distinct !DILexicalBlock(scope: !777, file: !1, line: 420, column: 20)
!988 = !DILocation(line: 421, column: 59, scope: !986)
!989 = !DILocation(line: 421, column: 21, scope: !987)
!990 = !DILocation(line: 425, column: 13, scope: !966)
!991 = !DILocation(line: 425, column: 25, scope: !966)
!992 = !DILocation(line: 425, column: 47, scope: !966)
!993 = !DILocation(line: 425, column: 13, scope: !501)
!994 = !DILocation(line: 182, column: 45, scope: !544, inlinedAt: !559)
!995 = !DILocation(line: 183, column: 5, scope: !544, inlinedAt: !559)
!996 = !DILocation(line: 183, column: 9, scope: !544, inlinedAt: !559)
!997 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !998)
!998 = distinct !DILocation(line: 184, column: 5, scope: !553, inlinedAt: !559)
!999 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !998)
!1000 = !DILocation(line: 121, column: 2, scope: !172, inlinedAt: !998)
!1001 = !DILocation(line: 184, column: 5, scope: !553, inlinedAt: !559)
!1002 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !1003)
!1003 = distinct !DILocation(line: 184, column: 5, scope: !553, inlinedAt: !559)
!1004 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !1003)
!1005 = !DILocation(line: 121, column: 2, scope: !172, inlinedAt: !1003)
!1006 = !DILocation(line: 184, column: 5, scope: !554, inlinedAt: !559)
!1007 = !DILocation(line: 184, column: 5, scope: !1008, inlinedAt: !559)
!1008 = distinct !DILexicalBlock(scope: !553, file: !1, line: 184, column: 5)
!1009 = !DILocation(line: 183, column: 18, scope: !544, inlinedAt: !559)
!1010 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !1011)
!1011 = distinct !DILocation(line: 49, column: 21, scope: !193, inlinedAt: !1012)
!1012 = distinct !DILocation(line: 184, column: 5, scope: !550, inlinedAt: !559)
!1013 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !1011)
!1014 = !DILocation(line: 121, column: 2, scope: !172, inlinedAt: !1011)
!1015 = !DILocation(line: 49, column: 16, scope: !193, inlinedAt: !1012)
!1016 = !DILocation(line: 50, column: 19, scope: !193, inlinedAt: !1012)
!1017 = !DILocation(line: 50, column: 11, scope: !193, inlinedAt: !1012)
!1018 = !DILocation(line: 50, column: 9, scope: !193, inlinedAt: !1012)
!1019 = !DILocation(line: 50, column: 2, scope: !193, inlinedAt: !1012)
!1020 = !DILocation(line: 184, column: 5, scope: !550, inlinedAt: !559)
!1021 = !{i32 -2146228561, i32 -2146228548, i32 -2146228523, i32 -2146228499, i32 -2146228474, i32 -2146228399, i32 -2146228374, i32 -2146228230, i32 -2146228205, i32 -2146224823, i32 -2146224734, i32 -2146224613, i32 -2146224518, i32 -2146224417, i32 -2146224390, i32 -2146224307, i32 -2146224218, i32 -2146224097, i32 -2146223997, i32 -2146223891, i32 -2146223783, i32 -2146227829, i32 -2146227776, i32 -2146227745, i32 -2146227714, i32 -2146227693, i32 -2146227671, i32 -2146227622, i32 -2146227601, i32 -2146227498, i32 -2146227466, i32 -2146223700, i32 -2146223611, i32 -2146223490, i32 -2146223391, i32 -2146223285, i32 -2146223183, i32 -2146223150, i32 -2146223077, i32 -2146223009, i32 -2146227276, i32 -2146227217, i32 -2146227164, i32 -2146227133, i32 -2146227102, i32 -2146227081, i32 -2146227059, i32 -2146227010, i32 -2146226989, i32 -2146222963, i32 -2146222874, i32 -2146222753, i32 -2146222654, i32 -2146222548, i32 -2146222446, i32 -2146222413, i32 -2146222330, i32 -2146222241, i32 -2146222120, i32 -2146222020, i32 -2146221994, i32 -2146221891, i32 -2146221865, i32 -2146226731, i32 -2146226706, i32 -2146226639, i32 -2146226614, i32 -2146226550, i32 -2146226468, i32 -2146226445, i32 -2146226420, i32 -2146226395}
!1022 = !DILocation(line: 184, column: 5, scope: !1023, inlinedAt: !559)
!1023 = distinct !DILexicalBlock(scope: !1024, file: !1, line: 184, column: 5)
!1024 = distinct !DILexicalBlock(scope: !550, file: !1, line: 184, column: 5)
!1025 = !{i32 -2146225311, i32 -2146225294}
!1026 = !DILocation(line: 186, column: 9, scope: !543, inlinedAt: !559)
!1027 = !DILocation(line: 186, column: 13, scope: !543, inlinedAt: !559)
!1028 = !DILocation(line: 186, column: 9, scope: !544, inlinedAt: !559)
!1029 = !DILocation(line: 68, column: 52, scope: !237, inlinedAt: !541)
!1030 = !DILocation(line: 68, column: 59, scope: !237, inlinedAt: !541)
!1031 = !DILocation(line: 68, column: 77, scope: !237, inlinedAt: !541)
!1032 = !DILocation(line: 69, column: 5, scope: !237, inlinedAt: !541)
!1033 = !DILocation(line: 70, column: 12, scope: !237, inlinedAt: !541)
!1034 = !DILocation(line: 72, column: 9, scope: !237, inlinedAt: !541)
!1035 = !DILocation(line: 73, column: 15, scope: !271, inlinedAt: !541)
!1036 = !DILocation(line: 73, column: 9, scope: !271, inlinedAt: !541)
!1037 = !DILocation(line: 74, column: 5, scope: !274, inlinedAt: !541)
!1038 = !DILocation(line: 75, column: 5, scope: !237, inlinedAt: !541)
!1039 = !DILocation(line: 76, column: 1, scope: !237, inlinedAt: !541)
!1040 = !DILocation(line: 61, column: 47, scope: !944, inlinedAt: !1041)
!1041 = distinct !DILocation(line: 188, column: 9, scope: !542, inlinedAt: !559)
!1042 = !DILocation(line: 62, column: 11, scope: !952, inlinedAt: !1041)
!1043 = !DILocation(line: 62, column: 17, scope: !952, inlinedAt: !1041)
!1044 = !DILocation(line: 62, column: 20, scope: !952, inlinedAt: !1041)
!1045 = !DILocation(line: 62, column: 9, scope: !944, inlinedAt: !1041)
!1046 = !DILocation(line: 63, column: 9, scope: !957, inlinedAt: !1041)
!1047 = !DILocation(line: 64, column: 15, scope: !957, inlinedAt: !1041)
!1048 = !DILocation(line: 65, column: 5, scope: !957, inlinedAt: !1041)
!1049 = !DILocation(line: 66, column: 1, scope: !944, inlinedAt: !1041)
!1050 = !DILocation(line: 189, column: 9, scope: !542, inlinedAt: !559)
!1051 = !DILocation(line: 192, column: 1, scope: !544, inlinedAt: !559)
!1052 = !DILocation(line: 427, column: 13, scope: !501)
!1053 = !DILocation(line: 191, column: 5, scope: !544, inlinedAt: !559)
!1054 = !DILocation(line: 430, column: 18, scope: !501)
!1055 = !DILocation(line: 432, column: 9, scope: !501)
!1056 = !DILocation(line: 361, column: 42, scope: !502)
!1057 = !DILocation(line: 361, column: 5, scope: !502)
!1058 = distinct !{!1058, !771, !1059}
!1059 = !DILocation(line: 433, column: 5, scope: !503)
!1060 = !DILocation(line: 434, column: 9, scope: !438)
!1061 = !DILocation(line: 435, column: 9, scope: !538)
!1062 = !DILocation(line: 435, column: 14, scope: !538)
!1063 = !DILocation(line: 436, column: 69, scope: !538)
!1064 = !DILocation(line: 436, column: 60, scope: !538)
!1065 = !DILocation(line: 436, column: 9, scope: !538)
!1066 = !DILocation(line: 437, column: 9, scope: !538)
!1067 = !DILocation(line: 439, column: 5, scope: !539)
!1068 = !DILocation(line: 0, scope: !501)
!1069 = !DILocation(line: 444, column: 18, scope: !438)
!1070 = !DILocation(line: 444, column: 5, scope: !438)
!1071 = !DILocation(line: 445, column: 12, scope: !438)
!1072 = !DILocation(line: 445, column: 5, scope: !438)
!1073 = !DILocation(line: 0, scope: !764)
!1074 = !DILocation(line: 446, column: 1, scope: !438)
!1075 = distinct !DISubprogram(name: "redisContextConnectBindTcp", scope: !1, file: !1, line: 453, type: !439, isLocal: false, isDefinition: true, scopeLine: 455, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1076)
!1076 = !{!1077, !1078, !1079, !1080, !1081}
!1077 = !DILocalVariable(name: "c", arg: 1, scope: !1075, file: !1, line: 453, type: !43)
!1078 = !DILocalVariable(name: "addr", arg: 2, scope: !1075, file: !1, line: 453, type: !240)
!1079 = !DILocalVariable(name: "port", arg: 3, scope: !1075, file: !1, line: 453, type: !34)
!1080 = !DILocalVariable(name: "timeout", arg: 4, scope: !1075, file: !1, line: 454, type: !426)
!1081 = !DILocalVariable(name: "source_addr", arg: 5, scope: !1075, file: !1, line: 455, type: !240)
!1082 = !DILocation(line: 453, column: 46, scope: !1075)
!1083 = !DILocation(line: 453, column: 61, scope: !1075)
!1084 = !DILocation(line: 453, column: 71, scope: !1075)
!1085 = !DILocation(line: 454, column: 54, scope: !1075)
!1086 = !DILocation(line: 455, column: 44, scope: !1075)
!1087 = !DILocation(line: 456, column: 12, scope: !1075)
!1088 = !DILocation(line: 456, column: 5, scope: !1075)
!1089 = distinct !DISubprogram(name: "redisContextConnectUnix", scope: !1, file: !1, line: 459, type: !1090, isLocal: false, isDefinition: true, scopeLine: 459, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1092)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!34, !43, !240, !426}
!1092 = !{!1093, !1094, !1095, !1096, !1097, !1106}
!1093 = !DILocalVariable(name: "c", arg: 1, scope: !1089, file: !1, line: 459, type: !43)
!1094 = !DILocalVariable(name: "path", arg: 2, scope: !1089, file: !1, line: 459, type: !240)
!1095 = !DILocalVariable(name: "timeout", arg: 3, scope: !1089, file: !1, line: 459, type: !426)
!1096 = !DILocalVariable(name: "blocking", scope: !1089, file: !1, line: 460, type: !34)
!1097 = !DILocalVariable(name: "sa", scope: !1089, file: !1, line: 461, type: !1098)
!1098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_un", file: !1099, line: 17, size: 872, elements: !1100)
!1099 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/include/sys/un.h", directory: "/root/.unikraft/apps/redis/build")
!1100 = !{!1101, !1102}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "sun_family", scope: !1098, file: !1099, line: 18, baseType: !27, size: 8)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "sun_path", scope: !1098, file: !1099, line: 19, baseType: !1103, size: 864, offset: 8)
!1103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 864, elements: !1104)
!1104 = !{!1105}
!1105 = !DISubrange(count: 108)
!1106 = !DILocalVariable(name: "timeout_msec", scope: !1089, file: !1, line: 462, type: !124)
!1107 = !DILocation(line: 69, column: 10, scope: !237, inlinedAt: !1108)
!1108 = distinct !DILocation(line: 94, column: 9, scope: !1109, inlinedAt: !1124)
!1109 = distinct !DILexicalBlock(scope: !1110, file: !1, line: 93, column: 18)
!1110 = distinct !DILexicalBlock(scope: !1111, file: !1, line: 93, column: 9)
!1111 = distinct !DISubprogram(name: "redisCreateSocket", scope: !1, file: !1, line: 90, type: !41, isLocal: true, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1112)
!1112 = !{!1113, !1114, !1115, !1116, !1122, !1123}
!1113 = !DILocalVariable(name: "c", arg: 1, scope: !1111, file: !1, line: 90, type: !43)
!1114 = !DILocalVariable(name: "type", arg: 2, scope: !1111, file: !1, line: 90, type: !34)
!1115 = !DILocalVariable(name: "s", scope: !1111, file: !1, line: 91, type: !34)
!1116 = !DILocalVariable(name: "tid", scope: !1117, file: !1, line: 92, type: !149)
!1117 = distinct !DILexicalBlock(scope: !1118, file: !1, line: 92, column: 5)
!1118 = distinct !DILexicalBlock(scope: !1119, file: !1, line: 92, column: 5)
!1119 = distinct !DILexicalBlock(scope: !1120, file: !1, line: 92, column: 5)
!1120 = distinct !DILexicalBlock(scope: !1121, file: !1, line: 92, column: 5)
!1121 = distinct !DILexicalBlock(scope: !1111, file: !1, line: 92, column: 5)
!1122 = !DILocalVariable(name: "_ret", scope: !1117, file: !1, line: 92, type: !11)
!1123 = !DILocalVariable(name: "_arg3", scope: !1117, file: !1, line: 92, type: !11)
!1124 = distinct !DILocation(line: 464, column: 9, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1089, file: !1, line: 464, column: 9)
!1126 = !DILocation(line: 459, column: 43, scope: !1089)
!1127 = !DILocation(line: 459, column: 58, scope: !1089)
!1128 = !DILocation(line: 459, column: 86, scope: !1089)
!1129 = !DILocation(line: 460, column: 24, scope: !1089)
!1130 = !DILocation(line: 460, column: 30, scope: !1089)
!1131 = !DILocation(line: 460, column: 9, scope: !1089)
!1132 = !DILocation(line: 461, column: 5, scope: !1089)
!1133 = !DILocation(line: 462, column: 10, scope: !1089)
!1134 = !DILocation(line: 90, column: 44, scope: !1111, inlinedAt: !1124)
!1135 = !DILocation(line: 90, column: 51, scope: !1111, inlinedAt: !1124)
!1136 = !DILocation(line: 91, column: 5, scope: !1111, inlinedAt: !1124)
!1137 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !1138)
!1138 = distinct !DILocation(line: 92, column: 5, scope: !1120, inlinedAt: !1124)
!1139 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !1138)
!1140 = !DILocation(line: 121, column: 2, scope: !172, inlinedAt: !1138)
!1141 = !DILocation(line: 92, column: 5, scope: !1120, inlinedAt: !1124)
!1142 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !1143)
!1143 = distinct !DILocation(line: 92, column: 5, scope: !1120, inlinedAt: !1124)
!1144 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !1143)
!1145 = !DILocation(line: 121, column: 2, scope: !172, inlinedAt: !1143)
!1146 = !DILocation(line: 92, column: 5, scope: !1121, inlinedAt: !1124)
!1147 = !DILocation(line: 92, column: 5, scope: !1148, inlinedAt: !1124)
!1148 = distinct !DILexicalBlock(scope: !1120, file: !1, line: 92, column: 5)
!1149 = !DILocation(line: 91, column: 9, scope: !1111, inlinedAt: !1124)
!1150 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !1151)
!1151 = distinct !DILocation(line: 49, column: 21, scope: !193, inlinedAt: !1152)
!1152 = distinct !DILocation(line: 92, column: 5, scope: !1117, inlinedAt: !1124)
!1153 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !1151)
!1154 = !DILocation(line: 121, column: 2, scope: !172, inlinedAt: !1151)
!1155 = !DILocation(line: 49, column: 16, scope: !193, inlinedAt: !1152)
!1156 = !DILocation(line: 50, column: 19, scope: !193, inlinedAt: !1152)
!1157 = !DILocation(line: 50, column: 11, scope: !193, inlinedAt: !1152)
!1158 = !DILocation(line: 50, column: 9, scope: !193, inlinedAt: !1152)
!1159 = !DILocation(line: 50, column: 2, scope: !193, inlinedAt: !1152)
!1160 = !DILocation(line: 92, column: 5, scope: !1117, inlinedAt: !1124)
!1161 = !{i32 -2146246919, i32 -2146246906, i32 -2146246881, i32 -2146246857, i32 -2146246832, i32 -2146246757, i32 -2146246732, i32 -2146246588, i32 -2146243405, i32 -2146243316, i32 -2146243195, i32 -2146243100, i32 -2146242999, i32 -2146242972, i32 -2146242889, i32 -2146242800, i32 -2146242679, i32 -2146242579, i32 -2146242473, i32 -2146242365, i32 -2146246258, i32 -2146246205, i32 -2146246174, i32 -2146246143, i32 -2146246122, i32 -2146246100, i32 -2146246051, i32 -2146246030, i32 -2146245927, i32 -2146242282, i32 -2146242193, i32 -2146242072, i32 -2146241973, i32 -2146241867, i32 -2146241765, i32 -2146241732, i32 -2146241659, i32 -2146241591, i32 -2146245737, i32 -2146245678, i32 -2146245625, i32 -2146245594, i32 -2146245563, i32 -2146245542, i32 -2146245520, i32 -2146245471, i32 -2146245450, i32 -2146241549, i32 -2146241460, i32 -2146241339, i32 -2146241240, i32 -2146241134, i32 -2146241032, i32 -2146240999, i32 -2146240916, i32 -2146240827, i32 -2146240706, i32 -2146240606, i32 -2146240580, i32 -2146240477, i32 -2146240451, i32 -2146245192, i32 -2146245125, i32 -2146245100, i32 -2146245036, i32 -2146244954, i32 -2146244931, i32 -2146244906, i32 -2146244881}
!1162 = !DILocation(line: 92, column: 5, scope: !1163, inlinedAt: !1124)
!1163 = distinct !DILexicalBlock(scope: !1164, file: !1, line: 92, column: 5)
!1164 = distinct !DILexicalBlock(scope: !1117, file: !1, line: 92, column: 5)
!1165 = !{i32 -2146243843, i32 -2146243826}
!1166 = !DILocation(line: 93, column: 9, scope: !1110, inlinedAt: !1124)
!1167 = !DILocation(line: 93, column: 11, scope: !1110, inlinedAt: !1124)
!1168 = !DILocation(line: 93, column: 9, scope: !1111, inlinedAt: !1124)
!1169 = !DILocation(line: 68, column: 52, scope: !237, inlinedAt: !1108)
!1170 = !DILocation(line: 68, column: 59, scope: !237, inlinedAt: !1108)
!1171 = !DILocation(line: 68, column: 77, scope: !237, inlinedAt: !1108)
!1172 = !DILocation(line: 69, column: 5, scope: !237, inlinedAt: !1108)
!1173 = !DILocation(line: 70, column: 12, scope: !237, inlinedAt: !1108)
!1174 = !DILocation(line: 72, column: 9, scope: !237, inlinedAt: !1108)
!1175 = !DILocation(line: 74, column: 5, scope: !274, inlinedAt: !1108)
!1176 = !DILocation(line: 75, column: 5, scope: !237, inlinedAt: !1108)
!1177 = !DILocation(line: 76, column: 1, scope: !237, inlinedAt: !1108)
!1178 = !DILocation(line: 95, column: 9, scope: !1109, inlinedAt: !1124)
!1179 = !DILocation(line: 104, column: 1, scope: !1111, inlinedAt: !1124)
!1180 = !DILocation(line: 464, column: 9, scope: !1089)
!1181 = !DILocation(line: 465, column: 9, scope: !1125)
!1182 = !DILocation(line: 97, column: 8, scope: !1111, inlinedAt: !1124)
!1183 = !DILocation(line: 97, column: 11, scope: !1111, inlinedAt: !1124)
!1184 = !DILocation(line: 98, column: 9, scope: !1111, inlinedAt: !1124)
!1185 = !DILocation(line: 103, column: 5, scope: !1111, inlinedAt: !1124)
!1186 = !DILocation(line: 466, column: 9, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1089, file: !1, line: 466, column: 9)
!1188 = !DILocation(line: 466, column: 31, scope: !1187)
!1189 = !DILocation(line: 466, column: 9, scope: !1089)
!1190 = !DILocation(line: 469, column: 8, scope: !1089)
!1191 = !DILocation(line: 469, column: 24, scope: !1089)
!1192 = !DILocation(line: 470, column: 22, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1089, file: !1, line: 470, column: 9)
!1194 = !{!165, !166, i64 200}
!1195 = !DILocation(line: 470, column: 27, scope: !1193)
!1196 = !DILocation(line: 470, column: 9, scope: !1089)
!1197 = !DILocation(line: 471, column: 29, scope: !1193)
!1198 = !DILocation(line: 471, column: 27, scope: !1193)
!1199 = !DILocation(line: 471, column: 9, scope: !1193)
!1200 = !DILocation(line: 473, column: 9, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1089, file: !1, line: 473, column: 9)
!1202 = !DILocation(line: 0, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1204, file: !1, line: 481, column: 13)
!1204 = distinct !DILexicalBlock(scope: !1201, file: !1, line: 480, column: 12)
!1205 = !DILocation(line: 473, column: 9, scope: !1089)
!1206 = !DILocation(line: 474, column: 24, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1208, file: !1, line: 474, column: 13)
!1208 = distinct !DILexicalBlock(scope: !1201, file: !1, line: 473, column: 18)
!1209 = !DILocation(line: 474, column: 13, scope: !1208)
!1210 = !DILocation(line: 196, column: 50, scope: !612, inlinedAt: !1211)
!1211 = distinct !DILocation(line: 486, column: 9, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1089, file: !1, line: 486, column: 9)
!1213 = !DILocation(line: 198, column: 27, scope: !612, inlinedAt: !1211)
!1214 = !DILocation(line: 199, column: 10, scope: !612, inlinedAt: !1211)
!1215 = !DILocation(line: 202, column: 9, scope: !612, inlinedAt: !1211)
!1216 = !DILocation(line: 475, column: 28, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1218, file: !1, line: 475, column: 17)
!1218 = distinct !DILexicalBlock(scope: !1207, file: !1, line: 474, column: 36)
!1219 = !DILocation(line: 475, column: 17, scope: !1218)
!1220 = !DILocation(line: 476, column: 30, scope: !1217)
!1221 = !DILocation(line: 476, column: 28, scope: !1217)
!1222 = !DILocation(line: 476, column: 17, scope: !1217)
!1223 = !DILocation(line: 481, column: 13, scope: !1203)
!1224 = !DILocation(line: 481, column: 13, scope: !1204)
!1225 = !DILocation(line: 482, column: 13, scope: !1203)
!1226 = !DILocation(line: 483, column: 20, scope: !1204)
!1227 = !DILocation(line: 478, column: 23, scope: !1218)
!1228 = !DILocation(line: 478, column: 32, scope: !1218)
!1229 = !DILocation(line: 478, column: 13, scope: !1218)
!1230 = !DILocation(line: 479, column: 9, scope: !1218)
!1231 = !DILocation(line: 198, column: 40, scope: !612, inlinedAt: !1211)
!1232 = !DILocation(line: 202, column: 17, scope: !643, inlinedAt: !1211)
!1233 = !DILocation(line: 203, column: 22, scope: !645, inlinedAt: !1211)
!1234 = !DILocation(line: 203, column: 30, scope: !645, inlinedAt: !1211)
!1235 = !DILocation(line: 203, column: 40, scope: !645, inlinedAt: !1211)
!1236 = !DILocation(line: 203, column: 52, scope: !645, inlinedAt: !1211)
!1237 = !DILocation(line: 203, column: 59, scope: !645, inlinedAt: !1211)
!1238 = !DILocation(line: 203, column: 13, scope: !646, inlinedAt: !1211)
!1239 = !DILocation(line: 208, column: 33, scope: !646, inlinedAt: !1211)
!1240 = !DILocation(line: 208, column: 62, scope: !646, inlinedAt: !1211)
!1241 = !DILocation(line: 208, column: 69, scope: !646, inlinedAt: !1211)
!1242 = !DILocation(line: 208, column: 41, scope: !646, inlinedAt: !1211)
!1243 = !DILocation(line: 210, column: 22, scope: !661, inlinedAt: !1211)
!1244 = !DILocation(line: 205, column: 13, scope: !663, inlinedAt: !1211)
!1245 = !DILocation(line: 217, column: 1, scope: !612, inlinedAt: !1211)
!1246 = !DILocation(line: 486, column: 9, scope: !1089)
!1247 = !DILocation(line: 487, column: 9, scope: !1212)
!1248 = !DILocation(line: 0, scope: !1212)
!1249 = !DILocation(line: 216, column: 5, scope: !612, inlinedAt: !1211)
!1250 = !DILocation(line: 0, scope: !612, inlinedAt: !1211)
!1251 = !DILocation(line: 489, column: 19, scope: !1089)
!1252 = !{!1253, !161, i64 0}
!1253 = !{!"sockaddr_un", !161, i64 0, !161, i64 1}
!1254 = !DILocation(line: 490, column: 13, scope: !1089)
!1255 = !DILocation(line: 490, column: 5, scope: !1089)
!1256 = !DILocation(line: 491, column: 20, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1089, file: !1, line: 491, column: 9)
!1258 = !DILocation(line: 491, column: 24, scope: !1257)
!1259 = !DILocation(line: 491, column: 9, scope: !1257)
!1260 = !DILocation(line: 491, column: 59, scope: !1257)
!1261 = !DILocation(line: 491, column: 9, scope: !1089)
!1262 = !DILocation(line: 492, column: 13, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1264, file: !1, line: 492, column: 13)
!1264 = distinct !DILexicalBlock(scope: !1257, file: !1, line: 491, column: 66)
!1265 = !DILocation(line: 492, column: 19, scope: !1263)
!1266 = !DILocation(line: 492, column: 38, scope: !1263)
!1267 = !DILocation(line: 492, column: 34, scope: !1263)
!1268 = !DILocation(line: 501, column: 18, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1089, file: !1, line: 501, column: 9)
!1270 = !DILocation(line: 495, column: 17, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1272, file: !1, line: 495, column: 17)
!1272 = distinct !DILexicalBlock(scope: !1263, file: !1, line: 494, column: 16)
!1273 = !DILocation(line: 495, column: 55, scope: !1271)
!1274 = !DILocation(line: 495, column: 17, scope: !1272)
!1275 = !DILocation(line: 501, column: 9, scope: !1269)
!1276 = !DILocation(line: 501, column: 21, scope: !1269)
!1277 = !DILocation(line: 501, column: 43, scope: !1269)
!1278 = !DILocation(line: 501, column: 9, scope: !1089)
!1279 = !DILocation(line: 504, column: 14, scope: !1089)
!1280 = !DILocation(line: 505, column: 5, scope: !1089)
!1281 = !DILocation(line: 0, scope: !1089)
!1282 = !DILocation(line: 0, scope: !1125)
!1283 = !DILocation(line: 506, column: 1, scope: !1089)
!1284 = distinct !DISubprogram(name: "redisSetBlocking", scope: !1, file: !1, line: 106, type: !41, isLocal: true, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1285)
!1285 = !{!1286, !1287, !1288}
!1286 = !DILocalVariable(name: "c", arg: 1, scope: !1284, file: !1, line: 106, type: !43)
!1287 = !DILocalVariable(name: "blocking", arg: 2, scope: !1284, file: !1, line: 106, type: !34)
!1288 = !DILocalVariable(name: "flags", scope: !1284, file: !1, line: 107, type: !34)
!1289 = !DILocation(line: 69, column: 10, scope: !237, inlinedAt: !1290)
!1290 = distinct !DILocation(line: 124, column: 9, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1292, file: !1, line: 123, column: 45)
!1292 = distinct !DILexicalBlock(scope: !1284, file: !1, line: 123, column: 9)
!1293 = !DILocation(line: 69, column: 10, scope: !237, inlinedAt: !1294)
!1294 = distinct !DILocation(line: 113, column: 9, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1296, file: !1, line: 112, column: 48)
!1296 = distinct !DILexicalBlock(scope: !1284, file: !1, line: 112, column: 9)
!1297 = !DILocation(line: 106, column: 43, scope: !1284)
!1298 = !DILocation(line: 106, column: 50, scope: !1284)
!1299 = !DILocation(line: 112, column: 27, scope: !1296)
!1300 = !DILocation(line: 112, column: 18, scope: !1296)
!1301 = !DILocation(line: 107, column: 9, scope: !1284)
!1302 = !DILocation(line: 112, column: 41, scope: !1296)
!1303 = !DILocation(line: 112, column: 9, scope: !1284)
!1304 = !DILocation(line: 68, column: 52, scope: !237, inlinedAt: !1294)
!1305 = !DILocation(line: 68, column: 59, scope: !237, inlinedAt: !1294)
!1306 = !DILocation(line: 68, column: 77, scope: !237, inlinedAt: !1294)
!1307 = !DILocation(line: 69, column: 5, scope: !237, inlinedAt: !1294)
!1308 = !DILocation(line: 70, column: 12, scope: !237, inlinedAt: !1294)
!1309 = !DILocation(line: 72, column: 9, scope: !237, inlinedAt: !1294)
!1310 = !DILocation(line: 73, column: 15, scope: !271, inlinedAt: !1294)
!1311 = !DILocation(line: 73, column: 9, scope: !271, inlinedAt: !1294)
!1312 = !DILocation(line: 74, column: 5, scope: !274, inlinedAt: !1294)
!1313 = !DILocation(line: 75, column: 5, scope: !237, inlinedAt: !1294)
!1314 = !DILocation(line: 76, column: 1, scope: !237, inlinedAt: !1294)
!1315 = !DILocation(line: 61, column: 47, scope: !944, inlinedAt: !1316)
!1316 = distinct !DILocation(line: 114, column: 9, scope: !1295)
!1317 = !DILocation(line: 62, column: 11, scope: !952, inlinedAt: !1316)
!1318 = !DILocation(line: 62, column: 17, scope: !952, inlinedAt: !1316)
!1319 = !DILocation(line: 62, column: 20, scope: !952, inlinedAt: !1316)
!1320 = !DILocation(line: 62, column: 9, scope: !944, inlinedAt: !1316)
!1321 = !DILocation(line: 63, column: 9, scope: !957, inlinedAt: !1316)
!1322 = !DILocation(line: 64, column: 15, scope: !957, inlinedAt: !1316)
!1323 = !DILocation(line: 65, column: 5, scope: !957, inlinedAt: !1316)
!1324 = !DILocation(line: 118, column: 9, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1284, file: !1, line: 118, column: 9)
!1326 = !DILocation(line: 118, column: 9, scope: !1284)
!1327 = !DILocation(line: 119, column: 15, scope: !1325)
!1328 = !DILocation(line: 121, column: 15, scope: !1325)
!1329 = !DILocation(line: 123, column: 18, scope: !1292)
!1330 = !DILocation(line: 123, column: 9, scope: !1292)
!1331 = !DILocation(line: 123, column: 38, scope: !1292)
!1332 = !DILocation(line: 123, column: 9, scope: !1284)
!1333 = !DILocation(line: 68, column: 52, scope: !237, inlinedAt: !1290)
!1334 = !DILocation(line: 68, column: 59, scope: !237, inlinedAt: !1290)
!1335 = !DILocation(line: 68, column: 77, scope: !237, inlinedAt: !1290)
!1336 = !DILocation(line: 69, column: 5, scope: !237, inlinedAt: !1290)
!1337 = !DILocation(line: 70, column: 12, scope: !237, inlinedAt: !1290)
!1338 = !DILocation(line: 72, column: 9, scope: !237, inlinedAt: !1290)
!1339 = !DILocation(line: 73, column: 15, scope: !271, inlinedAt: !1290)
!1340 = !DILocation(line: 73, column: 9, scope: !271, inlinedAt: !1290)
!1341 = !DILocation(line: 74, column: 5, scope: !274, inlinedAt: !1290)
!1342 = !DILocation(line: 75, column: 5, scope: !237, inlinedAt: !1290)
!1343 = !DILocation(line: 76, column: 1, scope: !237, inlinedAt: !1290)
!1344 = !DILocation(line: 61, column: 47, scope: !944, inlinedAt: !1345)
!1345 = distinct !DILocation(line: 125, column: 9, scope: !1291)
!1346 = !DILocation(line: 62, column: 11, scope: !952, inlinedAt: !1345)
!1347 = !DILocation(line: 62, column: 17, scope: !952, inlinedAt: !1345)
!1348 = !DILocation(line: 62, column: 20, scope: !952, inlinedAt: !1345)
!1349 = !DILocation(line: 62, column: 9, scope: !944, inlinedAt: !1345)
!1350 = !DILocation(line: 63, column: 9, scope: !957, inlinedAt: !1345)
!1351 = !DILocation(line: 64, column: 15, scope: !957, inlinedAt: !1345)
!1352 = !DILocation(line: 65, column: 5, scope: !957, inlinedAt: !1345)
!1353 = !DILocation(line: 66, column: 1, scope: !944, inlinedAt: !1345)
!1354 = !DILocation(line: 0, scope: !1295)
!1355 = !DILocation(line: 0, scope: !1284)
!1356 = !DILocation(line: 129, column: 1, scope: !1284)
!1357 = distinct !DISubprogram(name: "redisContextWaitReady", scope: !1, file: !1, line: 219, type: !1358, isLocal: true, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1360)
!1358 = !DISubroutineType(types: !1359)
!1359 = !{!34, !43, !124}
!1360 = !{!1361, !1362, !1363, !1373}
!1361 = !DILocalVariable(name: "c", arg: 1, scope: !1357, file: !1, line: 219, type: !43)
!1362 = !DILocalVariable(name: "msec", arg: 2, scope: !1357, file: !1, line: 219, type: !124)
!1363 = !DILocalVariable(name: "wfd", scope: !1357, file: !1, line: 220, type: !1364)
!1364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1365, size: 64, elements: !1371)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !18, line: 542, size: 64, elements: !1366)
!1366 = !{!1367, !1368, !1370}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1365, file: !18, line: 544, baseType: !34, size: 32)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1365, file: !18, line: 545, baseType: !1369, size: 16, offset: 32)
!1369 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1365, file: !18, line: 546, baseType: !1369, size: 16, offset: 48)
!1371 = !{!1372}
!1372 = !DISubrange(count: 1)
!1373 = !DILocalVariable(name: "res", scope: !1374, file: !1, line: 226, type: !34)
!1374 = distinct !DILexicalBlock(scope: !1375, file: !1, line: 225, column: 31)
!1375 = distinct !DILexicalBlock(scope: !1357, file: !1, line: 225, column: 9)
!1376 = !DILocation(line: 69, column: 10, scope: !237, inlinedAt: !1377)
!1377 = distinct !DILocation(line: 245, column: 5, scope: !1357)
!1378 = !DILocation(line: 69, column: 10, scope: !237, inlinedAt: !1379)
!1379 = distinct !DILocation(line: 234, column: 13, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1381, file: !1, line: 232, column: 30)
!1381 = distinct !DILexicalBlock(scope: !1382, file: !1, line: 232, column: 20)
!1382 = distinct !DILexicalBlock(scope: !1374, file: !1, line: 228, column: 13)
!1383 = !DILocation(line: 69, column: 10, scope: !237, inlinedAt: !1384)
!1384 = distinct !DILocation(line: 229, column: 13, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1382, file: !1, line: 228, column: 47)
!1386 = !DILocation(line: 219, column: 48, scope: !1357)
!1387 = !DILocation(line: 219, column: 56, scope: !1357)
!1388 = !DILocation(line: 220, column: 5, scope: !1357)
!1389 = !DILocation(line: 220, column: 21, scope: !1357)
!1390 = !DILocation(line: 222, column: 24, scope: !1357)
!1391 = !DILocation(line: 222, column: 12, scope: !1357)
!1392 = !DILocation(line: 222, column: 19, scope: !1357)
!1393 = !{!1394, !160, i64 0}
!1394 = !{!"pollfd", !160, i64 0, !1395, i64 4, !1395, i64 6}
!1395 = !{!"short", !161, i64 0}
!1396 = !DILocation(line: 223, column: 12, scope: !1357)
!1397 = !DILocation(line: 223, column: 19, scope: !1357)
!1398 = !{!1394, !1395, i64 4}
!1399 = !DILocation(line: 225, column: 9, scope: !1375)
!1400 = !DILocation(line: 225, column: 15, scope: !1375)
!1401 = !DILocation(line: 225, column: 9, scope: !1357)
!1402 = !DILocation(line: 228, column: 25, scope: !1382)
!1403 = !DILocation(line: 228, column: 33, scope: !1382)
!1404 = !DILocation(line: 228, column: 20, scope: !1382)
!1405 = !DILocation(line: 226, column: 13, scope: !1374)
!1406 = !DILocation(line: 228, column: 40, scope: !1382)
!1407 = !DILocation(line: 228, column: 13, scope: !1374)
!1408 = !DILocation(line: 68, column: 52, scope: !237, inlinedAt: !1384)
!1409 = !DILocation(line: 68, column: 59, scope: !237, inlinedAt: !1384)
!1410 = !DILocation(line: 68, column: 77, scope: !237, inlinedAt: !1384)
!1411 = !DILocation(line: 69, column: 5, scope: !237, inlinedAt: !1384)
!1412 = !DILocation(line: 70, column: 12, scope: !237, inlinedAt: !1384)
!1413 = !DILocation(line: 72, column: 9, scope: !237, inlinedAt: !1384)
!1414 = !DILocation(line: 73, column: 15, scope: !271, inlinedAt: !1384)
!1415 = !DILocation(line: 73, column: 9, scope: !271, inlinedAt: !1384)
!1416 = !DILocation(line: 74, column: 5, scope: !274, inlinedAt: !1384)
!1417 = !DILocation(line: 75, column: 5, scope: !237, inlinedAt: !1384)
!1418 = !DILocation(line: 76, column: 1, scope: !237, inlinedAt: !1384)
!1419 = !DILocation(line: 61, column: 47, scope: !944, inlinedAt: !1420)
!1420 = distinct !DILocation(line: 230, column: 13, scope: !1385)
!1421 = !DILocation(line: 62, column: 11, scope: !952, inlinedAt: !1420)
!1422 = !DILocation(line: 62, column: 17, scope: !952, inlinedAt: !1420)
!1423 = !DILocation(line: 62, column: 20, scope: !952, inlinedAt: !1420)
!1424 = !DILocation(line: 62, column: 9, scope: !944, inlinedAt: !1420)
!1425 = !DILocation(line: 63, column: 9, scope: !957, inlinedAt: !1420)
!1426 = !DILocation(line: 64, column: 15, scope: !957, inlinedAt: !1420)
!1427 = !DILocation(line: 65, column: 5, scope: !957, inlinedAt: !1420)
!1428 = !DILocation(line: 66, column: 1, scope: !944, inlinedAt: !1420)
!1429 = !DILocation(line: 231, column: 13, scope: !1385)
!1430 = !DILocation(line: 232, column: 24, scope: !1381)
!1431 = !DILocation(line: 232, column: 20, scope: !1382)
!1432 = !DILocation(line: 233, column: 13, scope: !1380)
!1433 = !DILocation(line: 233, column: 19, scope: !1380)
!1434 = !DILocation(line: 68, column: 52, scope: !237, inlinedAt: !1379)
!1435 = !DILocation(line: 68, column: 59, scope: !237, inlinedAt: !1379)
!1436 = !DILocation(line: 68, column: 77, scope: !237, inlinedAt: !1379)
!1437 = !DILocation(line: 69, column: 5, scope: !237, inlinedAt: !1379)
!1438 = !DILocation(line: 70, column: 12, scope: !237, inlinedAt: !1379)
!1439 = !DILocation(line: 72, column: 9, scope: !237, inlinedAt: !1379)
!1440 = !DILocation(line: 74, column: 5, scope: !274, inlinedAt: !1379)
!1441 = !DILocation(line: 75, column: 5, scope: !237, inlinedAt: !1379)
!1442 = !DILocation(line: 76, column: 1, scope: !237, inlinedAt: !1379)
!1443 = !DILocation(line: 61, column: 47, scope: !944, inlinedAt: !1444)
!1444 = distinct !DILocation(line: 235, column: 13, scope: !1380)
!1445 = !DILocation(line: 62, column: 11, scope: !952, inlinedAt: !1444)
!1446 = !DILocation(line: 62, column: 17, scope: !952, inlinedAt: !1444)
!1447 = !DILocation(line: 62, column: 20, scope: !952, inlinedAt: !1444)
!1448 = !DILocation(line: 62, column: 9, scope: !944, inlinedAt: !1444)
!1449 = !DILocation(line: 63, column: 9, scope: !957, inlinedAt: !1444)
!1450 = !DILocation(line: 64, column: 15, scope: !957, inlinedAt: !1444)
!1451 = !DILocation(line: 65, column: 5, scope: !957, inlinedAt: !1444)
!1452 = !DILocation(line: 66, column: 1, scope: !944, inlinedAt: !1444)
!1453 = !DILocation(line: 236, column: 13, scope: !1380)
!1454 = !DILocation(line: 239, column: 13, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1374, file: !1, line: 239, column: 13)
!1456 = !DILocation(line: 239, column: 38, scope: !1455)
!1457 = !DILocation(line: 239, column: 13, scope: !1374)
!1458 = !DILocation(line: 0, scope: !1455)
!1459 = !DILocation(line: 242, column: 9, scope: !1374)
!1460 = !DILocation(line: 68, column: 52, scope: !237, inlinedAt: !1377)
!1461 = !DILocation(line: 68, column: 59, scope: !237, inlinedAt: !1377)
!1462 = !DILocation(line: 68, column: 77, scope: !237, inlinedAt: !1377)
!1463 = !DILocation(line: 69, column: 5, scope: !237, inlinedAt: !1377)
!1464 = !DILocation(line: 70, column: 12, scope: !237, inlinedAt: !1377)
!1465 = !DILocation(line: 72, column: 9, scope: !237, inlinedAt: !1377)
!1466 = !DILocation(line: 74, column: 5, scope: !274, inlinedAt: !1377)
!1467 = !DILocation(line: 75, column: 5, scope: !237, inlinedAt: !1377)
!1468 = !DILocation(line: 76, column: 1, scope: !237, inlinedAt: !1377)
!1469 = !DILocation(line: 61, column: 47, scope: !944, inlinedAt: !1470)
!1470 = distinct !DILocation(line: 246, column: 5, scope: !1357)
!1471 = !DILocation(line: 62, column: 11, scope: !952, inlinedAt: !1470)
!1472 = !DILocation(line: 62, column: 17, scope: !952, inlinedAt: !1470)
!1473 = !DILocation(line: 62, column: 20, scope: !952, inlinedAt: !1470)
!1474 = !DILocation(line: 62, column: 9, scope: !944, inlinedAt: !1470)
!1475 = !DILocation(line: 63, column: 9, scope: !957, inlinedAt: !1470)
!1476 = !DILocation(line: 64, column: 15, scope: !957, inlinedAt: !1470)
!1477 = !DILocation(line: 65, column: 5, scope: !957, inlinedAt: !1470)
!1478 = !DILocation(line: 66, column: 1, scope: !944, inlinedAt: !1470)
!1479 = !DILocation(line: 247, column: 5, scope: !1357)
!1480 = !DILocation(line: 0, scope: !1357)
!1481 = !DILocation(line: 248, column: 1, scope: !1357)
