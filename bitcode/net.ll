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
  br i1 %10, label %16, label %11, !dbg !182

; <label>:11:                                     ; preds = %2
  %12 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !183, !srcloc !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !186
  %13 = icmp ugt i64 %12, ptrtoint ([0 x i8]* @_end to i64), !dbg !182
  br i1 %13, label %16, label %14, !dbg !187

; <label>:14:                                     ; preds = %11
  %15 = call i32 @setsockopt(i32 %7, i32 4095, i32 8, i8* nonnull %5, i32 4) #5, !dbg !188
  store i32 %15, i32* %4, align 4, !dbg !188, !tbaa !159
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
  %26 = load i32, i32* %4, align 4, !dbg !213, !tbaa !159
  br label %27

; <label>:27:                                     ; preds = %16, %14
  %28 = phi i32 [ %26, %16 ], [ %15, %14 ], !dbg !213
  %29 = icmp eq i32 %28, -1, !dbg !215
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
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #4, !dbg !225
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #4, !dbg !225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !225
  ret i32 %36, !dbg !225
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
define dso_local i32 @redisCheckSocketError(%struct.redisContext*) local_unnamed_addr #0 !dbg !226 {
  %2 = alloca [128 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = bitcast i32* %3 to i8*, !dbg !255
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #4, !dbg !255
  store i32 0, i32* %3, align 4, !dbg !256, !tbaa !159
  %6 = bitcast i32* %4 to i8*, !dbg !257
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #4, !dbg !257
  store i32 4, i32* %4, align 4, !dbg !258, !tbaa !159
  %7 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 2, !dbg !259
  %8 = load i32, i32* %7, align 4, !dbg !259, !tbaa !164
  %9 = call i32 @getsockopt(i32 %8, i32 4095, i32 4103, i8* nonnull %5, i32* nonnull %4) #5, !dbg !260
  %10 = icmp eq i32 %9, -1, !dbg !261
  br i1 %10, label %11, label %20, !dbg !262

; <label>:11:                                     ; preds = %1
  %12 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0, !dbg !266
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %12) #4, !dbg !266
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %12, i8 0, i64 128, i1 false) #4, !dbg !250
  %13 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %12, i64 128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0)) #5, !dbg !268
  %14 = sext i32 %13 to i64, !dbg !268
  %15 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 %14, !dbg !270
  %16 = sub nsw i64 128, %14, !dbg !272
  %17 = call i32* @__errno() #5, !dbg !270
  %18 = load i32, i32* %17, align 4, !dbg !270, !tbaa !159
  %19 = call i32 @__xpg_strerror_r(i32 %18, i8* nonnull %15, i64 %16) #5, !dbg !270
  call void @__redisSetError(%struct.redisContext* nonnull %0, i32 1, i8* nonnull %12) #5, !dbg !273
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %12) #4, !dbg !274
  br label %29, !dbg !275

; <label>:20:                                     ; preds = %1
  %21 = load i32, i32* %3, align 4, !dbg !276, !tbaa !159
  %22 = icmp eq i32 %21, 0, !dbg !276
  br i1 %22, label %30, label %23, !dbg !277

; <label>:23:                                     ; preds = %20
  %24 = call i32* @__errno() #5, !dbg !278
  store i32 %21, i32* %24, align 4, !dbg !279, !tbaa !159
  %25 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0, !dbg !283
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %25) #4, !dbg !283
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %25, i8 0, i64 128, i1 false) #4, !dbg !246
  %26 = call i32* @__errno() #5, !dbg !285
  %27 = load i32, i32* %26, align 4, !dbg !285, !tbaa !159
  %28 = call i32 @__xpg_strerror_r(i32 %27, i8* nonnull %25, i64 128) #5, !dbg !285
  call void @__redisSetError(%struct.redisContext* nonnull %0, i32 1, i8* nonnull %25) #5, !dbg !286
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %25) #4, !dbg !287
  br label %29, !dbg !288

; <label>:29:                                     ; preds = %11, %23
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !287
  br label %30, !dbg !289

; <label>:30:                                     ; preds = %29, %20
  %31 = phi i32 [ 0, %20 ], [ -1, %29 ], !dbg !290
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #4, !dbg !289
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #4, !dbg !289
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !289
  ret i32 %31, !dbg !289
}

; Function Attrs: noredzone
declare dso_local i32 @getsockopt(i32, i32, i32, i8*, i32*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @redisContextSetTimeout(%struct.redisContext*, i64, i64) local_unnamed_addr #0 !dbg !291 {
  %4 = alloca [128 x i8], align 16
  %5 = alloca %struct.timeval, align 8
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i64 0, i32 0
  store i64 %1, i64* %7, align 8
  %8 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i64 0, i32 1
  store i64 %2, i64* %8, align 8
  %9 = bitcast i32* %6 to i8*, !dbg !328
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #4, !dbg !328
  %10 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !329, !srcloc !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !332
  %11 = icmp ult i64 %10, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !333
  br i1 %11, label %20, label %12, !dbg !333

; <label>:12:                                     ; preds = %3
  %13 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !334, !srcloc !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !337
  %14 = icmp ugt i64 %13, ptrtoint ([0 x i8]* @_end to i64), !dbg !333
  br i1 %14, label %20, label %15, !dbg !338

; <label>:15:                                     ; preds = %12
  %16 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 2, !dbg !339
  %17 = load i32, i32* %16, align 4, !dbg !339, !tbaa !164
  %18 = bitcast %struct.timeval* %5 to i8*, !dbg !339
  %19 = call i32 @setsockopt(i32 %17, i32 4095, i32 4102, i8* nonnull %18, i32 16) #5, !dbg !339
  store i32 %19, i32* %6, align 4, !dbg !339, !tbaa !159
  br label %33, !dbg !339

; <label>:20:                                     ; preds = %12, %3
  %21 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !342, !srcloc !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !346
  %22 = and i64 %21, -65536, !dbg !348
  %23 = or i64 %22, 4097, !dbg !348
  %24 = add nsw i64 %23, -1, !dbg !348
  %25 = inttoptr i64 %24 to i32*, !dbg !349
  %26 = load i32, i32* %25, align 4096, !dbg !350, !tbaa !159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !351
  %27 = ptrtoint %struct.timeval* %5 to i64, !dbg !352
  %28 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 2, !dbg !352
  %29 = load i32, i32* %28, align 4, !dbg !352, !tbaa !164
  %30 = sext i32 %29 to i64, !dbg !352
  %31 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call setsockopt\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r8},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %30, i64 4095, i64 4102, i64 %27, i64 16, i32 %26, i32 (i32, i32, i32, i8*, i32)* nonnull @setsockopt) #4, !dbg !352, !srcloc !353
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %6, i64 %31) #4, !dbg !354, !srcloc !357
  %32 = load i32, i32* %6, align 4, !dbg !358, !tbaa !159
  br label %33

; <label>:33:                                     ; preds = %20, %15
  %34 = phi i32 [ %32, %20 ], [ %19, %15 ], !dbg !358
  %35 = icmp eq i32 %34, -1, !dbg !359
  br i1 %35, label %36, label %45, !dbg !360

; <label>:36:                                     ; preds = %33
  %37 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0, !dbg !364
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %37) #4, !dbg !364
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %37, i8 0, i64 128, i1 false) #4, !dbg !323
  %38 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %37, i64 128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !366
  %39 = sext i32 %38 to i64, !dbg !366
  %40 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 %39, !dbg !367
  %41 = sub nsw i64 128, %39, !dbg !368
  %42 = call i32* @__errno() #5, !dbg !367
  %43 = load i32, i32* %42, align 4, !dbg !367, !tbaa !159
  %44 = call i32 @__xpg_strerror_r(i32 %43, i8* nonnull %40, i64 %41) #5, !dbg !367
  call void @__redisSetError(%struct.redisContext* nonnull %0, i32 1, i8* nonnull %37) #5, !dbg !369
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %37) #4, !dbg !370
  br label %81, !dbg !371

; <label>:45:                                     ; preds = %33
  %46 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !372, !srcloc !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !375
  %47 = icmp ult i64 %46, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !376
  br i1 %47, label %56, label %48, !dbg !376

; <label>:48:                                     ; preds = %45
  %49 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !377, !srcloc !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !380
  %50 = icmp ugt i64 %49, ptrtoint ([0 x i8]* @_end to i64), !dbg !376
  br i1 %50, label %56, label %51, !dbg !381

; <label>:51:                                     ; preds = %48
  %52 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 2, !dbg !382
  %53 = load i32, i32* %52, align 4, !dbg !382, !tbaa !164
  %54 = bitcast %struct.timeval* %5 to i8*, !dbg !382
  %55 = call i32 @setsockopt(i32 %53, i32 4095, i32 4101, i8* nonnull %54, i32 16) #5, !dbg !382
  store i32 %55, i32* %6, align 4, !dbg !382, !tbaa !159
  br label %69, !dbg !382

; <label>:56:                                     ; preds = %48, %45
  %57 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !384, !srcloc !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !388
  %58 = and i64 %57, -65536, !dbg !390
  %59 = or i64 %58, 4097, !dbg !390
  %60 = add nsw i64 %59, -1, !dbg !390
  %61 = inttoptr i64 %60 to i32*, !dbg !391
  %62 = load i32, i32* %61, align 4096, !dbg !392, !tbaa !159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !393
  %63 = ptrtoint %struct.timeval* %5 to i64, !dbg !394
  %64 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 2, !dbg !394
  %65 = load i32, i32* %64, align 4, !dbg !394, !tbaa !164
  %66 = sext i32 %65 to i64, !dbg !394
  %67 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call setsockopt\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r8},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %66, i64 4095, i64 4101, i64 %63, i64 16, i32 %62, i32 (i32, i32, i32, i8*, i32)* nonnull @setsockopt) #4, !dbg !394, !srcloc !395
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %6, i64 %67) #4, !dbg !396, !srcloc !399
  %68 = load i32, i32* %6, align 4, !dbg !400, !tbaa !159
  br label %69

; <label>:69:                                     ; preds = %56, %51
  %70 = phi i32 [ %68, %56 ], [ %55, %51 ], !dbg !400
  %71 = icmp eq i32 %70, -1, !dbg !401
  br i1 %71, label %72, label %82, !dbg !402

; <label>:72:                                     ; preds = %69
  %73 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0, !dbg !406
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %73) #4, !dbg !406
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %73, i8 0, i64 128, i1 false) #4, !dbg !319
  %74 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %73, i64 128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0)) #5, !dbg !408
  %75 = sext i32 %74 to i64, !dbg !408
  %76 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 %75, !dbg !409
  %77 = sub nsw i64 128, %75, !dbg !410
  %78 = call i32* @__errno() #5, !dbg !409
  %79 = load i32, i32* %78, align 4, !dbg !409, !tbaa !159
  %80 = call i32 @__xpg_strerror_r(i32 %79, i8* nonnull %76, i64 %77) #5, !dbg !409
  call void @__redisSetError(%struct.redisContext* nonnull %0, i32 1, i8* nonnull %73) #5, !dbg !411
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %73) #4, !dbg !412
  br label %81, !dbg !413

; <label>:81:                                     ; preds = %36, %72
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !412
  br label %82, !dbg !414

; <label>:82:                                     ; preds = %81, %69
  %83 = phi i32 [ 0, %69 ], [ -1, %81 ], !dbg !415
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #4, !dbg !414
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !414
  ret i32 %83, !dbg !414
}

; Function Attrs: noredzone nounwind
define dso_local i32 @redisContextConnectTcp(%struct.redisContext*, i8*, i32, %struct.timeval*) local_unnamed_addr #0 !dbg !416 {
  %5 = tail call fastcc i32 @_redisContextConnectTcp(%struct.redisContext* %0, i8* %1, i32 %2, %struct.timeval* %3, i8* null) #6, !dbg !429
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !430
  ret i32 %5, !dbg !430
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @_redisContextConnectTcp(%struct.redisContext*, i8*, i32, %struct.timeval*, i8*) unnamed_addr #0 !dbg !431 {
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
  %20 = bitcast i32* %9 to i8*, !dbg !559
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %20) #4, !dbg !559
  %21 = bitcast i32* %10 to i8*, !dbg !559
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %21) #4, !dbg !559
  %22 = bitcast i32* %11 to i8*, !dbg !559
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #4, !dbg !559
  %23 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 0, !dbg !560
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %23) #4, !dbg !560
  %24 = bitcast %struct.addrinfo* %13 to i8*, !dbg !562
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %24) #4, !dbg !562
  %25 = bitcast %struct.addrinfo** %14 to i8*, !dbg !562
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %25) #4, !dbg !562
  %26 = bitcast %struct.addrinfo** %15 to i8*, !dbg !562
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #4, !dbg !562
  %27 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 3, !dbg !563
  %28 = load i32, i32* %27, align 8, !dbg !563, !tbaa !564
  %29 = and i32 %28, 1, !dbg !565
  %30 = and i32 %28, 128, !dbg !567
  store %struct.addrinfo* null, %struct.addrinfo** %14, align 8, !dbg !572, !tbaa !573
  %31 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 6, !dbg !574
  store i32 0, i32* %31, align 8, !dbg !575, !tbaa !576
  %32 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 8, i32 2, !dbg !577
  store i32 %2, i32* %32, align 8, !dbg !578, !tbaa !579
  %33 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 8, i32 0, !dbg !580
  %34 = load i8*, i8** %33, align 8, !dbg !580, !tbaa !582
  %35 = icmp eq i8* %34, %1, !dbg !583
  br i1 %35, label %41, label %36, !dbg !584

; <label>:36:                                     ; preds = %5
  %37 = icmp eq i8* %34, null, !dbg !585
  br i1 %37, label %39, label %38, !dbg !588

; <label>:38:                                     ; preds = %36
  tail call void @free(i8* nonnull %34) #5, !dbg !589
  br label %39, !dbg !589

; <label>:39:                                     ; preds = %36, %38
  %40 = tail call i8* @strdup(i8* %1) #5, !dbg !590
  store i8* %40, i8** %33, align 8, !dbg !591, !tbaa !582
  br label %41, !dbg !592

; <label>:41:                                     ; preds = %5, %39
  %42 = icmp eq %struct.timeval* %3, null, !dbg !593
  %43 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 7, !dbg !595
  %44 = load %struct.timeval*, %struct.timeval** %43, align 8, !dbg !595, !tbaa !598
  %45 = bitcast %struct.timeval* %44 to i8*, !dbg !599
  br i1 %42, label %53, label %46, !dbg !599

; <label>:46:                                     ; preds = %41
  %47 = icmp eq %struct.timeval* %44, %3, !dbg !600
  br i1 %47, label %63, label %48, !dbg !603

; <label>:48:                                     ; preds = %46
  %49 = icmp eq %struct.timeval* %44, null, !dbg !604
  br i1 %49, label %50, label %57, !dbg !607

; <label>:50:                                     ; preds = %48
  %51 = tail call i8* @malloc(i64 16) #5, !dbg !608
  %52 = bitcast %struct.timeval** %43 to i8**, !dbg !609
  store i8* %51, i8** %52, align 8, !dbg !609, !tbaa !598
  br label %57, !dbg !610

; <label>:53:                                     ; preds = %41
  %54 = icmp eq %struct.timeval* %44, null, !dbg !611
  br i1 %54, label %56, label %55, !dbg !612

; <label>:55:                                     ; preds = %53
  tail call void @free(i8* %45) #5, !dbg !613
  br label %56, !dbg !613

; <label>:56:                                     ; preds = %55, %53
  store %struct.timeval* null, %struct.timeval** %43, align 8, !dbg !614, !tbaa !598
  br label %80, !dbg !629

; <label>:57:                                     ; preds = %50, %48
  %58 = phi i8* [ %51, %50 ], [ %45, %48 ], !dbg !630
  %59 = bitcast %struct.timeval* %3 to i8*, !dbg !631
  %60 = tail call i8* @memcpy(i8* %58, i8* %59, i64 16) #5, !dbg !632
  %61 = load %struct.timeval*, %struct.timeval** %43, align 8, !dbg !633, !tbaa !598
  %62 = icmp eq %struct.timeval* %61, null, !dbg !634
  br i1 %62, label %80, label %63, !dbg !629

; <label>:63:                                     ; preds = %46, %57
  %64 = phi %struct.timeval* [ %61, %57 ], [ %3, %46 ]
  %65 = getelementptr inbounds %struct.timeval, %struct.timeval* %64, i64 0, i32 1, !dbg !636
  %66 = load i64, i64* %65, align 8, !dbg !636, !tbaa !639
  %67 = icmp sgt i64 %66, 1000000, !dbg !642
  br i1 %67, label %79, label %68, !dbg !643

; <label>:68:                                     ; preds = %63
  %69 = getelementptr inbounds %struct.timeval, %struct.timeval* %64, i64 0, i32 0, !dbg !644
  %70 = load i64, i64* %69, align 8, !dbg !644, !tbaa !645
  %71 = icmp sgt i64 %70, 9223372036854774, !dbg !646
  br i1 %71, label %79, label %72, !dbg !647

; <label>:72:                                     ; preds = %68
  %73 = mul nsw i64 %70, 1000, !dbg !648
  %74 = add nsw i64 %66, 999, !dbg !649
  %75 = sdiv i64 %74, 1000, !dbg !650
  %76 = add nsw i64 %73, %75, !dbg !651
  %77 = icmp ult i64 %76, 2147483647, !dbg !652
  %78 = select i1 %77, i64 %76, i64 2147483647, !dbg !652
  br label %80, !dbg !652

; <label>:79:                                     ; preds = %68, %63
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !654
  tail call void @__redisSetError(%struct.redisContext* nonnull %0, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !655
  br label %378, !dbg !657

; <label>:80:                                     ; preds = %72, %57, %56
  %81 = phi i64 [ -1, %56 ], [ -1, %57 ], [ %78, %72 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !654
  %82 = icmp eq i8* %4, null, !dbg !658
  %83 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 8, i32 1, !dbg !660
  %84 = load i8*, i8** %83, align 8, !dbg !660, !tbaa !662
  br i1 %82, label %85, label %86, !dbg !663

; <label>:85:                                     ; preds = %80
  tail call void @free(i8* %84) #5, !dbg !664
  br label %90, !dbg !666

; <label>:86:                                     ; preds = %80
  %87 = icmp eq i8* %84, %4, !dbg !667
  br i1 %87, label %92, label %88, !dbg !668

; <label>:88:                                     ; preds = %86
  tail call void @free(i8* %84) #5, !dbg !669
  %89 = tail call i8* @strdup(i8* nonnull %4) #5, !dbg !671
  br label %90, !dbg !672

; <label>:90:                                     ; preds = %85, %88
  %91 = phi i8* [ %89, %88 ], [ null, %85 ]
  store i8* %91, i8** %83, align 8, !dbg !673, !tbaa !662
  br label %92, !dbg !674

; <label>:92:                                     ; preds = %90, %86
  %93 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %23, i64 6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %2) #5, !dbg !674
  %94 = call i8* @memset(i8* nonnull %24, i32 0, i64 48) #5, !dbg !675
  %95 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %13, i64 0, i32 1, !dbg !676
  store i32 2, i32* %95, align 4, !dbg !677, !tbaa !678
  %96 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %13, i64 0, i32 2, !dbg !680
  store i32 1, i32* %96, align 8, !dbg !681, !tbaa !682
  %97 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !683, !srcloc !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !686
  %98 = icmp ult i64 %97, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !687
  br i1 %98, label %105, label %99, !dbg !687

; <label>:99:                                     ; preds = %92
  %100 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !688, !srcloc !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !691
  %101 = icmp ugt i64 %100, ptrtoint ([0 x i8]* @_end to i64), !dbg !687
  br i1 %101, label %105, label %102, !dbg !692

; <label>:102:                                    ; preds = %99
  %103 = load i8*, i8** %33, align 8, !dbg !693, !tbaa !582
  %104 = call i32 @getaddrinfo(i8* %103, i8* nonnull %23, %struct.addrinfo* nonnull %13, %struct.addrinfo** nonnull %14) #5, !dbg !693
  store i32 %104, i32* %10, align 4, !dbg !693, !tbaa !159
  br label %119, !dbg !693

; <label>:105:                                    ; preds = %99, %92
  %106 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !697, !srcloc !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !701
  %107 = and i64 %106, -65536, !dbg !703
  %108 = or i64 %107, 4097, !dbg !703
  %109 = add nsw i64 %108, -1, !dbg !703
  %110 = inttoptr i64 %109 to i32*, !dbg !704
  %111 = load i32, i32* %110, align 4096, !dbg !705, !tbaa !159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !706
  %112 = ptrtoint %struct.addrinfo* %13 to i64, !dbg !707
  %113 = ptrtoint %struct.addrinfo** %14 to i64, !dbg !707
  %114 = bitcast i8** %33 to i64*, !dbg !707
  %115 = load i64, i64* %114, align 8, !dbg !707, !tbaa !582
  %116 = ptrtoint [6 x i8]* %12 to i64, !dbg !707
  %117 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call getaddrinfo\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %115, i64 %116, i64 %112, i64 %113, i32 %111, i32 (i8*, i8*, %struct.addrinfo*, %struct.addrinfo**)* nonnull @getaddrinfo) #4, !dbg !707, !srcloc !708
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %10, i64 %117) #4, !dbg !709, !srcloc !712
  %118 = load i32, i32* %10, align 4, !dbg !713, !tbaa !159
  br label %119

; <label>:119:                                    ; preds = %105, %102
  %120 = phi i32 [ %118, %105 ], [ %104, %102 ], !dbg !713
  %121 = icmp eq i32 %120, 0, !dbg !714
  br i1 %121, label %148, label %122, !dbg !715

; <label>:122:                                    ; preds = %119
  store i32 10, i32* %95, align 4, !dbg !716, !tbaa !678
  %123 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !717, !srcloc !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !720
  %124 = icmp ult i64 %123, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !721
  br i1 %124, label %130, label %125, !dbg !721

; <label>:125:                                    ; preds = %122
  %126 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !722, !srcloc !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !725
  %127 = icmp ugt i64 %126, ptrtoint ([0 x i8]* @_end to i64), !dbg !721
  br i1 %127, label %130, label %128, !dbg !726

; <label>:128:                                    ; preds = %125
  %129 = call i32 @getaddrinfo(i8* %1, i8* nonnull %23, %struct.addrinfo* nonnull %13, %struct.addrinfo** nonnull %14) #5, !dbg !727
  store i32 %129, i32* %10, align 4, !dbg !727, !tbaa !159
  br label %143, !dbg !727

; <label>:130:                                    ; preds = %125, %122
  %131 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !729, !srcloc !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !733
  %132 = and i64 %131, -65536, !dbg !735
  %133 = or i64 %132, 4097, !dbg !735
  %134 = add nsw i64 %133, -1, !dbg !735
  %135 = inttoptr i64 %134 to i32*, !dbg !736
  %136 = load i32, i32* %135, align 4096, !dbg !737, !tbaa !159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !738
  %137 = ptrtoint %struct.addrinfo* %13 to i64, !dbg !739
  %138 = ptrtoint %struct.addrinfo** %14 to i64, !dbg !739
  %139 = ptrtoint i8* %1 to i64, !dbg !739
  %140 = ptrtoint [6 x i8]* %12 to i64, !dbg !739
  %141 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call getaddrinfo\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %139, i64 %140, i64 %137, i64 %138, i32 %136, i32 (i8*, i8*, %struct.addrinfo*, %struct.addrinfo**)* nonnull @getaddrinfo) #4, !dbg !739, !srcloc !740
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %10, i64 %141) #4, !dbg !741, !srcloc !744
  %142 = load i32, i32* %10, align 4, !dbg !745, !tbaa !159
  br label %143

; <label>:143:                                    ; preds = %130, %128
  %144 = phi i32 [ %142, %130 ], [ %129, %128 ], !dbg !745
  %145 = icmp eq i32 %144, 0, !dbg !747
  br i1 %145, label %148, label %146, !dbg !748

; <label>:146:                                    ; preds = %143
  %147 = call i8* @gai_strerror(i32 %144) #5, !dbg !749
  call void @__redisSetError(%struct.redisContext* nonnull %0, i32 2, i8* %147) #5, !dbg !751
  br label %382, !dbg !752

; <label>:148:                                    ; preds = %143, %119
  %149 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8, !dbg !754, !tbaa !573
  %150 = icmp eq %struct.addrinfo* %149, null, !dbg !755
  br i1 %150, label %372, label %151, !dbg !756

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
  br label %161, !dbg !756

; <label>:161:                                    ; preds = %151, %368
  %162 = phi %struct.addrinfo* [ %149, %151 ], [ %370, %368 ]
  %163 = phi i32 [ 0, %151 ], [ %170, %368 ]
  %164 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %162, i64 0, i32 3
  %165 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %162, i64 0, i32 1
  %166 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %162, i64 0, i32 2
  %167 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %162, i64 0, i32 5
  %168 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %162, i64 0, i32 4
  br label %169, !dbg !757

; <label>:169:                                    ; preds = %161, %316
  %170 = phi i32 [ %311, %316 ], [ %163, %161 ], !dbg !759
  %171 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !757, !srcloc !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !768
  %172 = icmp ult i64 %171, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !769
  br i1 %172, label %181, label %173, !dbg !769

; <label>:173:                                    ; preds = %169
  %174 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !770, !srcloc !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !773
  %175 = icmp ugt i64 %174, ptrtoint ([0 x i8]* @_end to i64), !dbg !769
  br i1 %175, label %181, label %176, !dbg !774

; <label>:176:                                    ; preds = %173
  %177 = load i32, i32* %165, align 4, !dbg !775, !tbaa !678
  %178 = load i32, i32* %166, align 8, !dbg !775, !tbaa !682
  %179 = load i32, i32* %164, align 4, !dbg !775, !tbaa !777
  %180 = call i32 @socket(i32 %177, i32 %178, i32 %179) #5, !dbg !775
  store i32 %180, i32* %9, align 4, !dbg !775, !tbaa !159
  br label %196, !dbg !775

; <label>:181:                                    ; preds = %173, %169
  %182 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !779, !srcloc !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !783
  %183 = and i64 %182, -65536, !dbg !785
  %184 = or i64 %183, 4097, !dbg !785
  %185 = add nsw i64 %184, -1, !dbg !785
  %186 = inttoptr i64 %185 to i32*, !dbg !786
  %187 = load i32, i32* %186, align 4096, !dbg !787, !tbaa !159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !788
  %188 = load i32, i32* %164, align 4, !dbg !789, !tbaa !777
  %189 = sext i32 %188 to i64, !dbg !789
  %190 = load i32, i32* %165, align 4, !dbg !789, !tbaa !678
  %191 = sext i32 %190 to i64, !dbg !789
  %192 = load i32, i32* %166, align 8, !dbg !789, !tbaa !682
  %193 = sext i32 %192 to i64, !dbg !789
  %194 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call socket\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %191, i64 %193, i64 %189, i32 %187, i32 (i32, i32, i32)* nonnull @socket) #4, !dbg !789, !srcloc !790
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %9, i64 %194) #4, !dbg !791, !srcloc !794
  %195 = load i32, i32* %9, align 4, !dbg !795, !tbaa !159
  br label %196

; <label>:196:                                    ; preds = %181, %176
  %197 = phi i32 [ %195, %181 ], [ %180, %176 ], !dbg !795
  %198 = icmp eq i32 %197, -1, !dbg !797
  br i1 %198, label %368, label %199, !dbg !798

; <label>:199:                                    ; preds = %196
  store i32 %197, i32* %152, align 4, !dbg !799, !tbaa !164
  %200 = call fastcc i32 @redisSetBlocking(%struct.redisContext* %0, i32 0) #6, !dbg !800
  %201 = icmp eq i32 %200, 0, !dbg !802
  br i1 %201, label %202, label %378, !dbg !803

; <label>:202:                                    ; preds = %199
  %203 = load i8*, i8** %83, align 8, !dbg !804, !tbaa !662
  %204 = icmp eq i8* %203, null, !dbg !805
  br i1 %204, label %282, label %205, !dbg !806

; <label>:205:                                    ; preds = %202
  %206 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !808, !srcloc !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !811
  %207 = icmp ult i64 %206, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !812
  br i1 %207, label %214, label %208, !dbg !812

; <label>:208:                                    ; preds = %205
  %209 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !813, !srcloc !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !816
  %210 = icmp ugt i64 %209, ptrtoint ([0 x i8]* @_end to i64), !dbg !812
  br i1 %210, label %214, label %211, !dbg !817

; <label>:211:                                    ; preds = %208
  %212 = load i8*, i8** %83, align 8, !dbg !818, !tbaa !662
  %213 = call i32 @getaddrinfo(i8* %212, i8* null, %struct.addrinfo* nonnull %13, %struct.addrinfo** nonnull %15) #5, !dbg !818
  store i32 %213, i32* %10, align 4, !dbg !818, !tbaa !159
  br label %224, !dbg !818

; <label>:214:                                    ; preds = %208, %205
  %215 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !821, !srcloc !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !825
  %216 = and i64 %215, -65536, !dbg !827
  %217 = or i64 %216, 4097, !dbg !827
  %218 = add nsw i64 %217, -1, !dbg !827
  %219 = inttoptr i64 %218 to i32*, !dbg !828
  %220 = load i32, i32* %219, align 4096, !dbg !829, !tbaa !159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !830
  %221 = load i64, i64* %155, align 8, !dbg !831, !tbaa !662
  %222 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call getaddrinfo\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %221, i64 0, i64 %153, i64 %154, i32 %220, i32 (i8*, i8*, %struct.addrinfo*, %struct.addrinfo**)* nonnull @getaddrinfo) #4, !dbg !831, !srcloc !832
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %10, i64 %222) #4, !dbg !833, !srcloc !836
  %223 = load i32, i32* %10, align 4, !dbg !837, !tbaa !159
  br label %224

; <label>:224:                                    ; preds = %214, %211
  %225 = phi i32 [ %223, %214 ], [ %213, %211 ], !dbg !837
  %226 = icmp eq i32 %225, 0, !dbg !838
  br i1 %226, label %231, label %227, !dbg !839

; <label>:227:                                    ; preds = %224
  %228 = getelementptr inbounds [128 x i8], [128 x i8]* %16, i64 0, i64 0, !dbg !840
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %228) #4, !dbg !840
  %229 = call i8* @gai_strerror(i32 %225) #5, !dbg !842
  %230 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %228, i64 128, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* %229) #5, !dbg !843
  call void @__redisSetError(%struct.redisContext* nonnull %0, i32 2, i8* nonnull %228) #5, !dbg !844
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %228) #4, !dbg !845
  br label %378

; <label>:231:                                    ; preds = %224
  br i1 %157, label %255, label %232, !dbg !846

; <label>:232:                                    ; preds = %231
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %159) #4, !dbg !847
  store i32 1, i32* %11, align 4, !dbg !849, !tbaa !159
  %233 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !850, !srcloc !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !853
  %234 = icmp ult i64 %233, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !854
  br i1 %234, label %241, label %235, !dbg !854

; <label>:235:                                    ; preds = %232
  %236 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !855, !srcloc !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !858
  %237 = icmp ugt i64 %236, ptrtoint ([0 x i8]* @_end to i64), !dbg !854
  br i1 %237, label %241, label %238, !dbg !859

; <label>:238:                                    ; preds = %235
  %239 = load i32, i32* %9, align 4, !dbg !860, !tbaa !159
  %240 = call i32 @setsockopt(i32 %239, i32 4095, i32 4, i8* nonnull %22, i32 4) #5, !dbg !860
  store i32 %240, i32* %17, align 4, !dbg !860, !tbaa !159
  br label %252, !dbg !860

; <label>:241:                                    ; preds = %235, %232
  %242 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !863, !srcloc !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !867
  %243 = and i64 %242, -65536, !dbg !869
  %244 = or i64 %243, 4097, !dbg !869
  %245 = add nsw i64 %244, -1, !dbg !869
  %246 = inttoptr i64 %245 to i32*, !dbg !870
  %247 = load i32, i32* %246, align 4096, !dbg !871, !tbaa !159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !872
  %248 = load i32, i32* %9, align 4, !dbg !873, !tbaa !159
  %249 = sext i32 %248 to i64, !dbg !873
  %250 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call setsockopt\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r8},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %249, i64 4095, i64 4, i64 %160, i64 4, i32 %247, i32 (i32, i32, i32, i8*, i32)* nonnull @setsockopt) #4, !dbg !873, !srcloc !874
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %17, i64 %250) #4, !dbg !875, !srcloc !878
  %251 = load i32, i32* %17, align 4, !dbg !879, !tbaa !159
  br label %252

; <label>:252:                                    ; preds = %241, %238
  %253 = phi i32 [ %251, %241 ], [ %240, %238 ], !dbg !879
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %159) #4, !dbg !881
  %254 = icmp sgt i32 %253, -1
  br i1 %254, label %255, label %378

; <label>:255:                                    ; preds = %231, %252
  %256 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8, !dbg !883, !tbaa !573
  %257 = icmp eq %struct.addrinfo* %256, null, !dbg !886
  br i1 %257, label %273, label %262, !dbg !887

; <label>:258:                                    ; preds = %262
  %259 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %263, i64 0, i32 7, !dbg !888
  %260 = load %struct.addrinfo*, %struct.addrinfo** %259, align 8, !dbg !883, !tbaa !573
  %261 = icmp eq %struct.addrinfo* %260, null, !dbg !886
  br i1 %261, label %271, label %262, !dbg !887, !llvm.loop !889

; <label>:262:                                    ; preds = %255, %258
  %263 = phi %struct.addrinfo* [ %260, %258 ], [ %256, %255 ]
  %264 = load i32, i32* %9, align 4, !dbg !891, !tbaa !159
  %265 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %263, i64 0, i32 5, !dbg !894
  %266 = load %struct.sockaddr*, %struct.sockaddr** %265, align 8, !dbg !894, !tbaa !895
  %267 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %263, i64 0, i32 4, !dbg !896
  %268 = load i32, i32* %267, align 8, !dbg !896, !tbaa !897
  %269 = call i32 @bind(i32 %264, %struct.sockaddr* %266, i32 %268) #5, !dbg !898
  %270 = icmp eq i32 %269, -1, !dbg !899
  br i1 %270, label %258, label %280, !dbg !900

; <label>:271:                                    ; preds = %258
  %272 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8, !dbg !901, !tbaa !573
  br label %273, !dbg !901

; <label>:273:                                    ; preds = %255, %271
  %274 = phi %struct.addrinfo* [ %272, %271 ], [ null, %255 ], !dbg !901
  call void @freeaddrinfo(%struct.addrinfo* %274) #5, !dbg !902
  %275 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0, !dbg !903
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %275) #4, !dbg !903
  %276 = call i32* @__errno() #5, !dbg !905
  %277 = load i32, i32* %276, align 4, !dbg !905, !tbaa !159
  %278 = call i8* @strerror(i32 %277) #5, !dbg !906
  %279 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %275, i64 128, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* %278) #5, !dbg !907
  call void @__redisSetError(%struct.redisContext* %0, i32 2, i8* nonnull %275) #5, !dbg !908
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %275) #4, !dbg !909
  br label %378

; <label>:280:                                    ; preds = %262
  %281 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8, !dbg !901, !tbaa !573
  call void @freeaddrinfo(%struct.addrinfo* %281) #5, !dbg !902
  br label %282

; <label>:282:                                    ; preds = %280, %202
  %283 = load i32, i32* %9, align 4, !dbg !910, !tbaa !159
  %284 = load %struct.sockaddr*, %struct.sockaddr** %167, align 8, !dbg !911, !tbaa !895
  %285 = load i32, i32* %168, align 8, !dbg !912, !tbaa !897
  %286 = call i32 @connect(i32 %283, %struct.sockaddr* %284, i32 %285) #5, !dbg !913
  %287 = icmp eq i32 %286, -1, !dbg !914
  br i1 %287, label %288, label %320, !dbg !915

; <label>:288:                                    ; preds = %282
  %289 = call i32* @__errno() #5, !dbg !916
  %290 = load i32, i32* %289, align 4, !dbg !916, !tbaa !159
  %291 = icmp eq i32 %290, 118, !dbg !917
  br i1 %291, label %292, label %298, !dbg !918

; <label>:292:                                    ; preds = %288
  %293 = load i32, i32* %152, align 4, !dbg !927, !tbaa !164
  %294 = icmp sgt i32 %293, -1, !dbg !929
  br i1 %294, label %295, label %297, !dbg !930

; <label>:295:                                    ; preds = %292
  %296 = call i32 @close(i32 %293) #5, !dbg !931
  store i32 -1, i32* %152, align 4, !dbg !933, !tbaa !164
  br label %297, !dbg !934

; <label>:297:                                    ; preds = %292, %295
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !935
  br label %368, !dbg !936

; <label>:298:                                    ; preds = %288
  %299 = call i32* @__errno() #5, !dbg !937
  %300 = load i32, i32* %299, align 4, !dbg !937, !tbaa !159
  %301 = icmp ne i32 %300, 119, !dbg !938
  %302 = or i1 %156, %301, !dbg !939
  br i1 %302, label %303, label %325, !dbg !939

; <label>:303:                                    ; preds = %298
  %304 = call i32* @__errno() #5, !dbg !940
  %305 = load i32, i32* %304, align 4, !dbg !940, !tbaa !159
  %306 = icmp eq i32 %305, 125, !dbg !941
  %307 = and i1 %158, %306, !dbg !942
  br i1 %307, label %308, label %317, !dbg !942

; <label>:308:                                    ; preds = %303
  %309 = icmp sgt i32 %170, 8, !dbg !943
  br i1 %309, label %378, label %310, !dbg !944

; <label>:310:                                    ; preds = %308
  %311 = add nsw i32 %170, 1, !dbg !945
  %312 = load i32, i32* %152, align 4, !dbg !949, !tbaa !164
  %313 = icmp sgt i32 %312, -1, !dbg !950
  br i1 %313, label %314, label %316, !dbg !951

; <label>:314:                                    ; preds = %310
  %315 = call i32 @close(i32 %312) #5, !dbg !952
  store i32 -1, i32* %152, align 4, !dbg !953, !tbaa !164
  br label %316, !dbg !954

; <label>:316:                                    ; preds = %310, %314
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !955
  br label %169, !dbg !956

; <label>:317:                                    ; preds = %303
  %318 = call fastcc i32 @redisContextWaitReady(%struct.redisContext* %0, i64 %81) #6, !dbg !957
  %319 = icmp eq i32 %318, 0, !dbg !960
  br i1 %319, label %320, label %378, !dbg !961

; <label>:320:                                    ; preds = %282, %317
  %321 = icmp eq i32 %29, 0, !dbg !962
  br i1 %321, label %325, label %322, !dbg !964

; <label>:322:                                    ; preds = %320
  %323 = call fastcc i32 @redisSetBlocking(%struct.redisContext* %0, i32 1) #6, !dbg !965
  %324 = icmp eq i32 %323, 0, !dbg !966
  br i1 %324, label %325, label %378, !dbg !967

; <label>:325:                                    ; preds = %298, %322, %320
  %326 = bitcast i32* %7 to i8*, !dbg !969
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %326) #4, !dbg !969
  store i32 1, i32* %7, align 4, !dbg !970, !tbaa !159
  %327 = bitcast i32* %8 to i8*, !dbg !969
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %327) #4, !dbg !969
  %328 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !971, !srcloc !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !974
  %329 = icmp ult i64 %328, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !975
  br i1 %329, label %336, label %330, !dbg !975

; <label>:330:                                    ; preds = %325
  %331 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !976, !srcloc !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !979
  %332 = icmp ugt i64 %331, ptrtoint ([0 x i8]* @_end to i64), !dbg !975
  br i1 %332, label %336, label %333, !dbg !980

; <label>:333:                                    ; preds = %330
  %334 = load i32, i32* %152, align 4, !dbg !981, !tbaa !164
  %335 = call i32 @setsockopt(i32 %334, i32 6, i32 1, i8* nonnull %326, i32 4) #5, !dbg !981
  store i32 %335, i32* %8, align 4, !dbg !981, !tbaa !159
  br label %348, !dbg !981

; <label>:336:                                    ; preds = %330, %325
  %337 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !984, !srcloc !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !988
  %338 = and i64 %337, -65536, !dbg !990
  %339 = or i64 %338, 4097, !dbg !990
  %340 = add nsw i64 %339, -1, !dbg !990
  %341 = inttoptr i64 %340 to i32*, !dbg !991
  %342 = load i32, i32* %341, align 4096, !dbg !992, !tbaa !159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !993
  %343 = ptrtoint i32* %7 to i64, !dbg !994
  %344 = load i32, i32* %152, align 4, !dbg !994, !tbaa !164
  %345 = sext i32 %344 to i64, !dbg !994
  %346 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call setsockopt\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r8},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %345, i64 6, i64 1, i64 %343, i64 4, i32 %342, i32 (i32, i32, i32, i8*, i32)* nonnull @setsockopt) #4, !dbg !994, !srcloc !995
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %8, i64 %346) #4, !dbg !996, !srcloc !999
  %347 = load i32, i32* %8, align 4, !dbg !1000, !tbaa !159
  br label %348

; <label>:348:                                    ; preds = %336, %333
  %349 = phi i32 [ %347, %336 ], [ %335, %333 ], !dbg !1000
  %350 = icmp eq i32 %349, -1, !dbg !1001
  br i1 %350, label %351, label %365, !dbg !1002

; <label>:351:                                    ; preds = %348
  %352 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0, !dbg !1006
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %352) #4, !dbg !1006
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %352, i8 0, i64 128, i1 false) #4, !dbg !533
  %353 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %352, i64 128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #5, !dbg !1008
  %354 = sext i32 %353 to i64, !dbg !1008
  %355 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 %354, !dbg !1009
  %356 = sub nsw i64 128, %354, !dbg !1010
  %357 = call i32* @__errno() #5, !dbg !1009
  %358 = load i32, i32* %357, align 4, !dbg !1009, !tbaa !159
  %359 = call i32 @__xpg_strerror_r(i32 %358, i8* nonnull %355, i64 %356) #5, !dbg !1009
  call void @__redisSetError(%struct.redisContext* nonnull %0, i32 1, i8* nonnull %352) #5, !dbg !1011
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %352) #4, !dbg !1012
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1012
  %360 = load i32, i32* %152, align 4, !dbg !1015, !tbaa !164
  %361 = icmp sgt i32 %360, -1, !dbg !1016
  br i1 %361, label %362, label %364, !dbg !1017

; <label>:362:                                    ; preds = %351
  %363 = call i32 @close(i32 %360) #5, !dbg !1018
  store i32 -1, i32* %152, align 4, !dbg !1019, !tbaa !164
  br label %364, !dbg !1020

; <label>:364:                                    ; preds = %351, %362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1021
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %327) #4, !dbg !1022
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %326) #4, !dbg !1022
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1022
  br label %378, !dbg !1023

; <label>:365:                                    ; preds = %348
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %327) #4, !dbg !1022
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %326) #4, !dbg !1022
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1022
  %366 = load i32, i32* %27, align 8, !dbg !1024, !tbaa !564
  %367 = or i32 %366, 2, !dbg !1024
  store i32 %367, i32* %27, align 8, !dbg !1024, !tbaa !564
  br label %378, !dbg !1025

; <label>:368:                                    ; preds = %196, %297
  %369 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %162, i64 0, i32 7, !dbg !1026
  %370 = load %struct.addrinfo*, %struct.addrinfo** %369, align 8, !dbg !754, !tbaa !573
  %371 = icmp eq %struct.addrinfo* %370, null, !dbg !755
  br i1 %371, label %372, label %161, !dbg !756, !llvm.loop !1027

; <label>:372:                                    ; preds = %368, %148
  %373 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0, !dbg !1029
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %373) #4, !dbg !1029
  %374 = call i32* @__errno() #5, !dbg !1031
  %375 = load i32, i32* %374, align 4, !dbg !1031, !tbaa !159
  %376 = call i8* @strerror(i32 %375) #5, !dbg !1032
  %377 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %373, i64 128, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i8* %376) #5, !dbg !1033
  call void @__redisSetError(%struct.redisContext* %0, i32 2, i8* nonnull %373) #5, !dbg !1034
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %373) #4, !dbg !1035
  br label %378

; <label>:378:                                    ; preds = %252, %308, %199, %273, %227, %364, %79, %372, %322, %317, %365
  %379 = phi i32 [ 0, %365 ], [ -1, %317 ], [ -1, %322 ], [ -1, %364 ], [ -1, %372 ], [ -1, %79 ], [ -1, %227 ], [ -1, %273 ], [ -1, %199 ], [ -1, %308 ], [ -1, %252 ]
  store i32 %379, i32* %10, align 4, !dbg !1036, !tbaa !159
  %380 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8, !dbg !1037, !tbaa !573
  call void @freeaddrinfo(%struct.addrinfo* %380) #5, !dbg !1038
  %381 = load i32, i32* %10, align 4, !dbg !1039, !tbaa !159
  br label %382, !dbg !1040

; <label>:382:                                    ; preds = %378, %146
  %383 = phi i32 [ %381, %378 ], [ -1, %146 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #4, !dbg !1041
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %25) #4, !dbg !1041
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %24) #4, !dbg !1041
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %23) #4, !dbg !1041
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #4, !dbg !1041
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %21) #4, !dbg !1041
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %20) #4, !dbg !1041
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1041
  ret i32 %383, !dbg !1041
}

; Function Attrs: noredzone nounwind
define dso_local i32 @redisContextConnectBindTcp(%struct.redisContext*, i8*, i32, %struct.timeval*, i8*) local_unnamed_addr #0 !dbg !1042 {
  %6 = tail call fastcc i32 @_redisContextConnectTcp(%struct.redisContext* %0, i8* %1, i32 %2, %struct.timeval* %3, i8* %4) #6, !dbg !1054
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1055
  ret i32 %6, !dbg !1055
}

; Function Attrs: noredzone nounwind
define dso_local i32 @redisContextConnectUnix(%struct.redisContext*, i8*, %struct.timeval*) local_unnamed_addr #0 !dbg !1056 {
  %4 = alloca [128 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr_un, align 1
  %7 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 3, !dbg !1096
  %8 = load i32, i32* %7, align 8, !dbg !1096, !tbaa !564
  %9 = and i32 %8, 1, !dbg !1097
  %10 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %6, i64 0, i32 0, !dbg !1099
  call void @llvm.lifetime.start.p0i8(i64 109, i8* nonnull %10) #4, !dbg !1099
  %11 = bitcast i32* %5 to i8*, !dbg !1103
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #4, !dbg !1103
  %12 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1104, !srcloc !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1107
  %13 = icmp ult i64 %12, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1108
  br i1 %13, label %19, label %14, !dbg !1108

; <label>:14:                                     ; preds = %3
  %15 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1109, !srcloc !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1112
  %16 = icmp ugt i64 %15, ptrtoint ([0 x i8]* @_end to i64), !dbg !1108
  br i1 %16, label %19, label %17, !dbg !1113

; <label>:17:                                     ; preds = %14
  %18 = tail call i32 @socket(i32 1, i32 1, i32 0) #5, !dbg !1114
  store i32 %18, i32* %5, align 4, !dbg !1114, !tbaa !159
  br label %28, !dbg !1114

; <label>:19:                                     ; preds = %14, %3
  %20 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1117, !srcloc !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1121
  %21 = and i64 %20, -65536, !dbg !1123
  %22 = or i64 %21, 4097, !dbg !1123
  %23 = add nsw i64 %22, -1, !dbg !1123
  %24 = inttoptr i64 %23 to i32*, !dbg !1124
  %25 = load i32, i32* %24, align 4096, !dbg !1125, !tbaa !159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1126
  %26 = tail call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call socket\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 1, i64 1, i64 0, i32 %25, i32 (i32, i32, i32)* nonnull @socket) #4, !dbg !1127, !srcloc !1128
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %5, i64 %26) #4, !dbg !1129, !srcloc !1132
  %27 = load i32, i32* %5, align 4, !dbg !1133, !tbaa !159
  br label %28

; <label>:28:                                     ; preds = %19, %17
  %29 = phi i32 [ %27, %19 ], [ %18, %17 ], !dbg !1133
  %30 = icmp eq i32 %29, -1, !dbg !1134
  br i1 %30, label %31, label %36, !dbg !1135

; <label>:31:                                     ; preds = %28
  %32 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0, !dbg !1139
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %32) #4, !dbg !1139
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %32, i8 0, i64 128, i1 false) #4, !dbg !1074
  %33 = call i32* @__errno() #5, !dbg !1141
  %34 = load i32, i32* %33, align 4, !dbg !1141, !tbaa !159
  %35 = call i32 @__xpg_strerror_r(i32 %34, i8* nonnull %32, i64 128) #5, !dbg !1141
  call void @__redisSetError(%struct.redisContext* nonnull %0, i32 1, i8* nonnull %32) #5, !dbg !1142
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %32) #4, !dbg !1143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1143
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #4, !dbg !1144
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1144
  br label %111, !dbg !1145

; <label>:36:                                     ; preds = %28
  %37 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 2, !dbg !1146
  store i32 %29, i32* %37, align 4, !dbg !1147, !tbaa !164
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #4, !dbg !1144
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1144
  %38 = call fastcc i32 @redisSetBlocking(%struct.redisContext* nonnull %0, i32 0) #6, !dbg !1148
  %39 = icmp eq i32 %38, 0, !dbg !1150
  br i1 %39, label %40, label %111, !dbg !1151

; <label>:40:                                     ; preds = %36
  %41 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 6, !dbg !1152
  store i32 1, i32* %41, align 8, !dbg !1153, !tbaa !576
  %42 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 9, i32 0, !dbg !1154
  %43 = load i8*, i8** %42, align 8, !dbg !1154, !tbaa !1156
  %44 = icmp eq i8* %43, %1, !dbg !1157
  br i1 %44, label %47, label %45, !dbg !1158

; <label>:45:                                     ; preds = %40
  %46 = call i8* @strdup(i8* %1) #5, !dbg !1159
  store i8* %46, i8** %42, align 8, !dbg !1160, !tbaa !1156
  br label %47, !dbg !1161

; <label>:47:                                     ; preds = %40, %45
  %48 = icmp eq %struct.timeval* %2, null, !dbg !1162
  %49 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 7, !dbg !1164
  %50 = load %struct.timeval*, %struct.timeval** %49, align 8, !dbg !1164, !tbaa !598
  %51 = bitcast %struct.timeval* %50 to i8*, !dbg !1167
  br i1 %48, label %59, label %52, !dbg !1167

; <label>:52:                                     ; preds = %47
  %53 = icmp eq %struct.timeval* %50, %2, !dbg !1168
  br i1 %53, label %69, label %54, !dbg !1171

; <label>:54:                                     ; preds = %52
  %55 = icmp eq %struct.timeval* %50, null, !dbg !1172
  br i1 %55, label %56, label %63, !dbg !1175

; <label>:56:                                     ; preds = %54
  %57 = call i8* @malloc(i64 16) #5, !dbg !1176
  %58 = bitcast %struct.timeval** %49 to i8**, !dbg !1177
  store i8* %57, i8** %58, align 8, !dbg !1177, !tbaa !598
  br label %63, !dbg !1178

; <label>:59:                                     ; preds = %47
  %60 = icmp eq %struct.timeval* %50, null, !dbg !1179
  br i1 %60, label %62, label %61, !dbg !1180

; <label>:61:                                     ; preds = %59
  call void @free(i8* %51) #5, !dbg !1181
  br label %62, !dbg !1181

; <label>:62:                                     ; preds = %61, %59
  store %struct.timeval* null, %struct.timeval** %49, align 8, !dbg !1182, !tbaa !598
  br label %86, !dbg !1188

; <label>:63:                                     ; preds = %56, %54
  %64 = phi i8* [ %57, %56 ], [ %51, %54 ], !dbg !1189
  %65 = bitcast %struct.timeval* %2 to i8*, !dbg !1190
  %66 = call i8* @memcpy(i8* %64, i8* %65, i64 16) #5, !dbg !1191
  %67 = load %struct.timeval*, %struct.timeval** %49, align 8, !dbg !1192, !tbaa !598
  %68 = icmp eq %struct.timeval* %67, null, !dbg !1193
  br i1 %68, label %86, label %69, !dbg !1188

; <label>:69:                                     ; preds = %52, %63
  %70 = phi %struct.timeval* [ %67, %63 ], [ %2, %52 ]
  %71 = getelementptr inbounds %struct.timeval, %struct.timeval* %70, i64 0, i32 1, !dbg !1194
  %72 = load i64, i64* %71, align 8, !dbg !1194, !tbaa !639
  %73 = icmp sgt i64 %72, 1000000, !dbg !1195
  br i1 %73, label %85, label %74, !dbg !1196

; <label>:74:                                     ; preds = %69
  %75 = getelementptr inbounds %struct.timeval, %struct.timeval* %70, i64 0, i32 0, !dbg !1197
  %76 = load i64, i64* %75, align 8, !dbg !1197, !tbaa !645
  %77 = icmp sgt i64 %76, 9223372036854774, !dbg !1198
  br i1 %77, label %85, label %78, !dbg !1199

; <label>:78:                                     ; preds = %74
  %79 = mul nsw i64 %76, 1000, !dbg !1200
  %80 = add nsw i64 %72, 999, !dbg !1201
  %81 = sdiv i64 %80, 1000, !dbg !1202
  %82 = add nsw i64 %79, %81, !dbg !1203
  %83 = icmp ult i64 %82, 2147483647, !dbg !1204
  %84 = select i1 %83, i64 %82, i64 2147483647, !dbg !1204
  br label %86, !dbg !1204

; <label>:85:                                     ; preds = %69, %74
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1205
  br label %111

; <label>:86:                                     ; preds = %78, %63, %62
  %87 = phi i64 [ -1, %62 ], [ -1, %63 ], [ %84, %78 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1205
  store i8 1, i8* %10, align 1, !dbg !1206, !tbaa !1207
  %88 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %6, i64 0, i32 1, i64 0, !dbg !1209
  %89 = call i8* @strncpy(i8* nonnull %88, i8* %1, i64 107) #5, !dbg !1210
  %90 = load i32, i32* %37, align 4, !dbg !1211, !tbaa !164
  %91 = bitcast %struct.sockaddr_un* %6 to %struct.sockaddr*, !dbg !1213
  %92 = call i32 @connect(i32 %90, %struct.sockaddr* nonnull %91, i32 109) #5, !dbg !1214
  %93 = icmp eq i32 %92, -1, !dbg !1215
  br i1 %93, label %94, label %103, !dbg !1216

; <label>:94:                                     ; preds = %86
  %95 = call i32* @__errno() #5, !dbg !1217
  %96 = load i32, i32* %95, align 4, !dbg !1217, !tbaa !159
  %97 = icmp ne i32 %96, 119, !dbg !1220
  %98 = icmp ne i32 %9, 0, !dbg !1221
  %99 = or i1 %98, %97, !dbg !1222
  br i1 %99, label %100, label %108, !dbg !1222

; <label>:100:                                    ; preds = %94
  %101 = call fastcc i32 @redisContextWaitReady(%struct.redisContext* nonnull %0, i64 %87) #6, !dbg !1223
  %102 = icmp eq i32 %101, 0, !dbg !1226
  br i1 %102, label %103, label %111, !dbg !1227

; <label>:103:                                    ; preds = %100, %86
  %104 = icmp eq i32 %9, 0, !dbg !1228
  br i1 %104, label %108, label %105, !dbg !1230

; <label>:105:                                    ; preds = %103
  %106 = call fastcc i32 @redisSetBlocking(%struct.redisContext* nonnull %0, i32 1) #6, !dbg !1231
  %107 = icmp eq i32 %106, 0, !dbg !1232
  br i1 %107, label %108, label %111, !dbg !1233

; <label>:108:                                    ; preds = %94, %105, %103
  %109 = load i32, i32* %7, align 8, !dbg !1234, !tbaa !564
  %110 = or i32 %109, 2, !dbg !1234
  store i32 %110, i32* %7, align 8, !dbg !1234, !tbaa !564
  br label %111, !dbg !1235

; <label>:111:                                    ; preds = %85, %31, %105, %100, %36, %108
  %112 = phi i32 [ 0, %108 ], [ -1, %36 ], [ -1, %85 ], [ -1, %100 ], [ -1, %105 ], [ -1, %31 ], !dbg !1236
  call void @llvm.lifetime.end.p0i8(i64 109, i8* nonnull %10) #4, !dbg !1237
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1237
  ret i32 %112, !dbg !1237
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @redisSetBlocking(%struct.redisContext*, i32) unnamed_addr #0 !dbg !1238 {
  %3 = alloca [128 x i8], align 16
  %4 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 2, !dbg !1253
  %5 = load i32, i32* %4, align 4, !dbg !1253, !tbaa !164
  %6 = tail call i32 (i32, i32, ...) @fcntl(i32 %5, i32 3) #5, !dbg !1254
  %7 = icmp eq i32 %6, -1, !dbg !1256
  br i1 %7, label %8, label %21, !dbg !1257

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0, !dbg !1261
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %9) #4, !dbg !1261
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %9, i8 0, i64 128, i1 false) #4, !dbg !1247
  %10 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %9, i64 128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0)) #5, !dbg !1263
  %11 = sext i32 %10 to i64, !dbg !1263
  %12 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 %11, !dbg !1264
  %13 = sub nsw i64 128, %11, !dbg !1265
  %14 = call i32* @__errno() #5, !dbg !1264
  %15 = load i32, i32* %14, align 4, !dbg !1264, !tbaa !159
  %16 = call i32 @__xpg_strerror_r(i32 %15, i8* nonnull %12, i64 %13) #5, !dbg !1264
  call void @__redisSetError(%struct.redisContext* nonnull %0, i32 1, i8* nonnull %9) #5, !dbg !1266
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %9) #4, !dbg !1267
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1267
  %17 = load i32, i32* %4, align 4, !dbg !1270, !tbaa !164
  %18 = icmp sgt i32 %17, -1, !dbg !1271
  br i1 %18, label %19, label %42, !dbg !1272

; <label>:19:                                     ; preds = %8
  %20 = call i32 @close(i32 %17) #5, !dbg !1273
  store i32 -1, i32* %4, align 4, !dbg !1274, !tbaa !164
  br label %42, !dbg !1275

; <label>:21:                                     ; preds = %2
  %22 = icmp eq i32 %1, 0, !dbg !1276
  %23 = and i32 %6, -16385, !dbg !1278
  %24 = or i32 %6, 16384, !dbg !1279
  %25 = select i1 %22, i32 %24, i32 %23, !dbg !1280
  %26 = load i32, i32* %4, align 4, !dbg !1281, !tbaa !164
  %27 = tail call i32 (i32, i32, ...) @fcntl(i32 %26, i32 4, i32 %25) #5, !dbg !1282
  %28 = icmp eq i32 %27, -1, !dbg !1283
  br i1 %28, label %29, label %43, !dbg !1284

; <label>:29:                                     ; preds = %21
  %30 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0, !dbg !1288
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %30) #4, !dbg !1288
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %30, i8 0, i64 128, i1 false) #4, !dbg !1243
  %31 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %30, i64 128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0)) #5, !dbg !1290
  %32 = sext i32 %31 to i64, !dbg !1290
  %33 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 %32, !dbg !1291
  %34 = sub nsw i64 128, %32, !dbg !1292
  %35 = call i32* @__errno() #5, !dbg !1291
  %36 = load i32, i32* %35, align 4, !dbg !1291, !tbaa !159
  %37 = call i32 @__xpg_strerror_r(i32 %36, i8* nonnull %33, i64 %34) #5, !dbg !1291
  call void @__redisSetError(%struct.redisContext* nonnull %0, i32 1, i8* nonnull %30) #5, !dbg !1293
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %30) #4, !dbg !1294
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1294
  %38 = load i32, i32* %4, align 4, !dbg !1297, !tbaa !164
  %39 = icmp sgt i32 %38, -1, !dbg !1298
  br i1 %39, label %40, label %42, !dbg !1299

; <label>:40:                                     ; preds = %29
  %41 = call i32 @close(i32 %38) #5, !dbg !1300
  store i32 -1, i32* %4, align 4, !dbg !1301, !tbaa !164
  br label %42, !dbg !1302

; <label>:42:                                     ; preds = %40, %29, %19, %8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1303
  br label %43, !dbg !1304

; <label>:43:                                     ; preds = %42, %21
  %44 = phi i32 [ 0, %21 ], [ -1, %42 ], !dbg !1305
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1304
  ret i32 %44, !dbg !1304
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
define internal fastcc i32 @redisContextWaitReady(%struct.redisContext*, i64) unnamed_addr #0 !dbg !1306 {
  %3 = alloca [128 x i8], align 16
  %4 = alloca [1 x %struct.pollfd], align 4
  %5 = bitcast [1 x %struct.pollfd]* %4 to i8*, !dbg !1337
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #4, !dbg !1337
  %6 = getelementptr inbounds %struct.redisContext, %struct.redisContext* %0, i64 0, i32 2, !dbg !1339
  %7 = load i32, i32* %6, align 4, !dbg !1339, !tbaa !164
  %8 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %4, i64 0, i64 0, i32 0, !dbg !1340
  store i32 %7, i32* %8, align 4, !dbg !1341, !tbaa !1342
  %9 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %4, i64 0, i64 0, i32 1, !dbg !1345
  store i16 2, i16* %9, align 4, !dbg !1346, !tbaa !1347
  %10 = tail call i32* @__errno() #5, !dbg !1348
  %11 = load i32, i32* %10, align 4, !dbg !1348, !tbaa !159
  %12 = icmp eq i32 %11, 119, !dbg !1349
  br i1 %12, label %13, label %46, !dbg !1350

; <label>:13:                                     ; preds = %2
  %14 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %4, i64 0, i64 0, !dbg !1351
  %15 = trunc i64 %1 to i32, !dbg !1352
  %16 = call i32 @poll(%struct.pollfd* nonnull %14, i32 1, i32 %15) #5, !dbg !1353
  switch i32 %16, label %42 [
    i32 -1, label %17
    i32 0, label %31
  ], !dbg !1355

; <label>:17:                                     ; preds = %13
  %18 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0, !dbg !1359
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %18) #4, !dbg !1359
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %18, i8 0, i64 128, i1 false) #4, !dbg !1332
  %19 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %18, i64 128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0)) #5, !dbg !1361
  %20 = sext i32 %19 to i64, !dbg !1361
  %21 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 %20, !dbg !1362
  %22 = sub nsw i64 128, %20, !dbg !1363
  %23 = call i32* @__errno() #5, !dbg !1362
  %24 = load i32, i32* %23, align 4, !dbg !1362, !tbaa !159
  %25 = call i32 @__xpg_strerror_r(i32 %24, i8* nonnull %21, i64 %22) #5, !dbg !1362
  call void @__redisSetError(%struct.redisContext* nonnull %0, i32 1, i8* nonnull %18) #5, !dbg !1364
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %18) #4, !dbg !1365
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1365
  %26 = load i32, i32* %6, align 4, !dbg !1368, !tbaa !164
  %27 = icmp sgt i32 %26, -1, !dbg !1369
  br i1 %27, label %28, label %30, !dbg !1370

; <label>:28:                                     ; preds = %17
  %29 = call i32 @close(i32 %26) #5, !dbg !1371
  store i32 -1, i32* %6, align 4, !dbg !1372, !tbaa !164
  br label %30, !dbg !1373

; <label>:30:                                     ; preds = %17, %28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1374
  br label %56, !dbg !1375

; <label>:31:                                     ; preds = %13
  %32 = call i32* @__errno() #5, !dbg !1376
  store i32 116, i32* %32, align 4, !dbg !1377, !tbaa !159
  %33 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0, !dbg !1381
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %33) #4, !dbg !1381
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %33, i8 0, i64 128, i1 false) #4, !dbg !1327
  %34 = call i32* @__errno() #5, !dbg !1383
  %35 = load i32, i32* %34, align 4, !dbg !1383, !tbaa !159
  %36 = call i32 @__xpg_strerror_r(i32 %35, i8* nonnull %33, i64 128) #5, !dbg !1383
  call void @__redisSetError(%struct.redisContext* nonnull %0, i32 1, i8* nonnull %33) #5, !dbg !1384
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %33) #4, !dbg !1385
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1385
  %37 = load i32, i32* %6, align 4, !dbg !1388, !tbaa !164
  %38 = icmp sgt i32 %37, -1, !dbg !1389
  br i1 %38, label %39, label %41, !dbg !1390

; <label>:39:                                     ; preds = %31
  %40 = call i32 @close(i32 %37) #5, !dbg !1391
  store i32 -1, i32* %6, align 4, !dbg !1392, !tbaa !164
  br label %41, !dbg !1393

; <label>:41:                                     ; preds = %31, %39
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1394
  br label %56, !dbg !1395

; <label>:42:                                     ; preds = %13
  %43 = call i32 @redisCheckSocketError(%struct.redisContext* nonnull %0) #6, !dbg !1396
  %44 = icmp ne i32 %43, 0, !dbg !1398
  %45 = sext i1 %44 to i32, !dbg !1399
  br label %56, !dbg !1399

; <label>:46:                                     ; preds = %2
  %47 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0, !dbg !1403
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %47) #4, !dbg !1403
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %47, i8 0, i64 128, i1 false) #4, !dbg !1325
  %48 = tail call i32* @__errno() #5, !dbg !1405
  %49 = load i32, i32* %48, align 4, !dbg !1405, !tbaa !159
  %50 = call i32 @__xpg_strerror_r(i32 %49, i8* nonnull %47, i64 128) #5, !dbg !1405
  call void @__redisSetError(%struct.redisContext* nonnull %0, i32 1, i8* nonnull %47) #5, !dbg !1406
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %47) #4, !dbg !1407
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1407
  %51 = load i32, i32* %6, align 4, !dbg !1410, !tbaa !164
  %52 = icmp sgt i32 %51, -1, !dbg !1411
  br i1 %52, label %53, label %55, !dbg !1412

; <label>:53:                                     ; preds = %46
  %54 = call i32 @close(i32 %51) #5, !dbg !1413
  store i32 -1, i32* %6, align 4, !dbg !1414, !tbaa !164
  br label %55, !dbg !1415

; <label>:55:                                     ; preds = %46, %53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1416
  br label %56, !dbg !1417

; <label>:56:                                     ; preds = %30, %41, %42, %55
  %57 = phi i32 [ -1, %55 ], [ -1, %30 ], [ -1, %41 ], [ %45, %42 ], !dbg !1418
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #4, !dbg !1419
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1419
  ret i32 %57, !dbg !1419
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
!179 = !{i32 435572}
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
!208 = !{i32 -2146237840, i32 -2146237827, i32 -2146237802, i32 -2146237778, i32 -2146237753, i32 -2146237678, i32 -2146237653, i32 -2146237509, i32 -2146237484, i32 -2146234093, i32 -2146234004, i32 -2146233883, i32 -2146233788, i32 -2146233687, i32 -2146233660, i32 -2146233577, i32 -2146233488, i32 -2146233367, i32 -2146233267, i32 -2146233161, i32 -2146233053, i32 -2146237108, i32 -2146237055, i32 -2146237024, i32 -2146236993, i32 -2146236972, i32 -2146236950, i32 -2146236901, i32 -2146236880, i32 -2146236777, i32 -2146236745, i32 -2146232970, i32 -2146232881, i32 -2146232760, i32 -2146232661, i32 -2146232555, i32 -2146232453, i32 -2146232420, i32 -2146232347, i32 -2146232279, i32 -2146236555, i32 -2146236496, i32 -2146236443, i32 -2146236412, i32 -2146236381, i32 -2146236360, i32 -2146236338, i32 -2146236289, i32 -2146236268, i32 -2146232233, i32 -2146232144, i32 -2146232023, i32 -2146231924, i32 -2146231818, i32 -2146231716, i32 -2146231683, i32 -2146231600, i32 -2146231511, i32 -2146231390, i32 -2146231290, i32 -2146231264, i32 -2146231161, i32 -2146231135, i32 -2146236010, i32 -2146235985, i32 -2146235918, i32 -2146235893, i32 -2146235829, i32 -2146235747, i32 -2146235724, i32 -2146235699, i32 -2146235674}
!209 = !DILocation(line: 136, column: 5, scope: !210)
!210 = distinct !DILexicalBlock(scope: !211, file: !1, line: 136, column: 5)
!211 = distinct !DILexicalBlock(scope: !144, file: !1, line: 136, column: 5)
!212 = !{i32 -2146234590, i32 -2146234573}
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
!225 = !DILocation(line: 180, column: 1, scope: !40)
!226 = distinct !DISubprogram(name: "redisCheckSocketError", scope: !1, file: !1, line: 250, type: !227, isLocal: false, isDefinition: true, scopeLine: 250, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !229)
!227 = !DISubroutineType(types: !228)
!228 = !{!34, !43}
!229 = !{!230, !231, !232}
!230 = !DILocalVariable(name: "c", arg: 1, scope: !226, file: !1, line: 250, type: !43)
!231 = !DILocalVariable(name: "err", scope: !226, file: !1, line: 251, type: !34)
!232 = !DILocalVariable(name: "errlen", scope: !226, file: !1, line: 252, type: !233)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !18, line: 113, baseType: !234)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32_t", file: !22, line: 129, baseType: !149)
!235 = !DILocalVariable(name: "buf", scope: !236, file: !1, line: 69, type: !49)
!236 = distinct !DISubprogram(name: "__redisSetErrorFromErrno", scope: !1, file: !1, line: 68, type: !237, isLocal: true, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !241)
!237 = !DISubroutineType(types: !238)
!238 = !{null, !43, !34, !239}
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!241 = !{!242, !243, !244, !235, !245}
!242 = !DILocalVariable(name: "c", arg: 1, scope: !236, file: !1, line: 68, type: !43)
!243 = !DILocalVariable(name: "type", arg: 2, scope: !236, file: !1, line: 68, type: !34)
!244 = !DILocalVariable(name: "prefix", arg: 3, scope: !236, file: !1, line: 68, type: !239)
!245 = !DILocalVariable(name: "len", scope: !236, file: !1, line: 70, type: !65)
!246 = !DILocation(line: 69, column: 10, scope: !236, inlinedAt: !247)
!247 = distinct !DILocation(line: 261, column: 9, scope: !248)
!248 = distinct !DILexicalBlock(scope: !249, file: !1, line: 259, column: 14)
!249 = distinct !DILexicalBlock(scope: !226, file: !1, line: 259, column: 9)
!250 = !DILocation(line: 69, column: 10, scope: !236, inlinedAt: !251)
!251 = distinct !DILocation(line: 255, column: 9, scope: !252)
!252 = distinct !DILexicalBlock(scope: !253, file: !1, line: 254, column: 71)
!253 = distinct !DILexicalBlock(scope: !226, file: !1, line: 254, column: 9)
!254 = !DILocation(line: 250, column: 41, scope: !226)
!255 = !DILocation(line: 251, column: 5, scope: !226)
!256 = !DILocation(line: 251, column: 9, scope: !226)
!257 = !DILocation(line: 252, column: 5, scope: !226)
!258 = !DILocation(line: 252, column: 15, scope: !226)
!259 = !DILocation(line: 254, column: 23, scope: !253)
!260 = !DILocation(line: 254, column: 9, scope: !253)
!261 = !DILocation(line: 254, column: 64, scope: !253)
!262 = !DILocation(line: 254, column: 9, scope: !226)
!263 = !DILocation(line: 68, column: 52, scope: !236, inlinedAt: !251)
!264 = !DILocation(line: 68, column: 59, scope: !236, inlinedAt: !251)
!265 = !DILocation(line: 68, column: 77, scope: !236, inlinedAt: !251)
!266 = !DILocation(line: 69, column: 5, scope: !236, inlinedAt: !251)
!267 = !DILocation(line: 70, column: 12, scope: !236, inlinedAt: !251)
!268 = !DILocation(line: 73, column: 15, scope: !269, inlinedAt: !251)
!269 = distinct !DILexicalBlock(scope: !236, file: !1, line: 72, column: 9)
!270 = !DILocation(line: 74, column: 5, scope: !271, inlinedAt: !251)
!271 = distinct !DILexicalBlock(scope: !236, file: !1, line: 74, column: 5)
!272 = !DILocation(line: 73, column: 9, scope: !269, inlinedAt: !251)
!273 = !DILocation(line: 75, column: 5, scope: !236, inlinedAt: !251)
!274 = !DILocation(line: 76, column: 1, scope: !236, inlinedAt: !251)
!275 = !DILocation(line: 256, column: 9, scope: !252)
!276 = !DILocation(line: 259, column: 9, scope: !249)
!277 = !DILocation(line: 259, column: 9, scope: !226)
!278 = !DILocation(line: 260, column: 9, scope: !248)
!279 = !DILocation(line: 260, column: 15, scope: !248)
!280 = !DILocation(line: 68, column: 52, scope: !236, inlinedAt: !247)
!281 = !DILocation(line: 68, column: 59, scope: !236, inlinedAt: !247)
!282 = !DILocation(line: 68, column: 77, scope: !236, inlinedAt: !247)
!283 = !DILocation(line: 69, column: 5, scope: !236, inlinedAt: !247)
!284 = !DILocation(line: 70, column: 12, scope: !236, inlinedAt: !247)
!285 = !DILocation(line: 74, column: 5, scope: !271, inlinedAt: !247)
!286 = !DILocation(line: 75, column: 5, scope: !236, inlinedAt: !247)
!287 = !DILocation(line: 76, column: 1, scope: !236, inlinedAt: !247)
!288 = !DILocation(line: 262, column: 9, scope: !248)
!289 = !DILocation(line: 266, column: 1, scope: !226)
!290 = !DILocation(line: 0, scope: !226)
!291 = distinct !DISubprogram(name: "redisContextSetTimeout", scope: !1, file: !1, line: 268, type: !292, isLocal: false, isDefinition: true, scopeLine: 268, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !295)
!292 = !DISubroutineType(types: !293)
!293 = !{!34, !43, !294}
!294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !119)
!295 = !{!296, !297, !298, !299, !305, !306, !307, !308, !309, !315, !316, !317, !318}
!296 = !DILocalVariable(name: "c", arg: 1, scope: !291, file: !1, line: 268, type: !43)
!297 = !DILocalVariable(name: "tv", arg: 2, scope: !291, file: !1, line: 268, type: !294)
!298 = !DILocalVariable(name: "ret", scope: !291, file: !1, line: 269, type: !34)
!299 = !DILocalVariable(name: "tid", scope: !300, file: !1, line: 270, type: !149)
!300 = distinct !DILexicalBlock(scope: !301, file: !1, line: 270, column: 5)
!301 = distinct !DILexicalBlock(scope: !302, file: !1, line: 270, column: 5)
!302 = distinct !DILexicalBlock(scope: !303, file: !1, line: 270, column: 5)
!303 = distinct !DILexicalBlock(scope: !304, file: !1, line: 270, column: 5)
!304 = distinct !DILexicalBlock(scope: !291, file: !1, line: 270, column: 5)
!305 = !DILocalVariable(name: "_ret", scope: !300, file: !1, line: 270, type: !11)
!306 = !DILocalVariable(name: "_arg3", scope: !300, file: !1, line: 270, type: !11)
!307 = !DILocalVariable(name: "_arg4", scope: !300, file: !1, line: 270, type: !11)
!308 = !DILocalVariable(name: "_arg5", scope: !300, file: !1, line: 270, type: !11)
!309 = !DILocalVariable(name: "tid", scope: !310, file: !1, line: 276, type: !149)
!310 = distinct !DILexicalBlock(scope: !311, file: !1, line: 276, column: 5)
!311 = distinct !DILexicalBlock(scope: !312, file: !1, line: 276, column: 5)
!312 = distinct !DILexicalBlock(scope: !313, file: !1, line: 276, column: 5)
!313 = distinct !DILexicalBlock(scope: !314, file: !1, line: 276, column: 5)
!314 = distinct !DILexicalBlock(scope: !291, file: !1, line: 276, column: 5)
!315 = !DILocalVariable(name: "_ret", scope: !310, file: !1, line: 276, type: !11)
!316 = !DILocalVariable(name: "_arg3", scope: !310, file: !1, line: 276, type: !11)
!317 = !DILocalVariable(name: "_arg4", scope: !310, file: !1, line: 276, type: !11)
!318 = !DILocalVariable(name: "_arg5", scope: !310, file: !1, line: 276, type: !11)
!319 = !DILocation(line: 69, column: 10, scope: !236, inlinedAt: !320)
!320 = distinct !DILocation(line: 279, column: 9, scope: !321)
!321 = distinct !DILexicalBlock(scope: !322, file: !1, line: 278, column: 20)
!322 = distinct !DILexicalBlock(scope: !291, file: !1, line: 278, column: 9)
!323 = !DILocation(line: 69, column: 10, scope: !236, inlinedAt: !324)
!324 = distinct !DILocation(line: 273, column: 9, scope: !325)
!325 = distinct !DILexicalBlock(scope: !326, file: !1, line: 272, column: 20)
!326 = distinct !DILexicalBlock(scope: !291, file: !1, line: 272, column: 9)
!327 = !DILocation(line: 268, column: 42, scope: !291)
!328 = !DILocation(line: 269, column: 5, scope: !291)
!329 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !330)
!330 = distinct !DILocation(line: 270, column: 5, scope: !303)
!331 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !330)
!332 = !DILocation(line: 121, column: 2, scope: !172, inlinedAt: !330)
!333 = !DILocation(line: 270, column: 5, scope: !303)
!334 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !335)
!335 = distinct !DILocation(line: 270, column: 5, scope: !303)
!336 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !335)
!337 = !DILocation(line: 121, column: 2, scope: !172, inlinedAt: !335)
!338 = !DILocation(line: 270, column: 5, scope: !304)
!339 = !DILocation(line: 270, column: 5, scope: !340)
!340 = distinct !DILexicalBlock(scope: !303, file: !1, line: 270, column: 5)
!341 = !DILocation(line: 269, column: 9, scope: !291)
!342 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !343)
!343 = distinct !DILocation(line: 49, column: 21, scope: !193, inlinedAt: !344)
!344 = distinct !DILocation(line: 270, column: 5, scope: !300)
!345 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !343)
!346 = !DILocation(line: 121, column: 2, scope: !172, inlinedAt: !343)
!347 = !DILocation(line: 49, column: 16, scope: !193, inlinedAt: !344)
!348 = !DILocation(line: 50, column: 19, scope: !193, inlinedAt: !344)
!349 = !DILocation(line: 50, column: 11, scope: !193, inlinedAt: !344)
!350 = !DILocation(line: 50, column: 9, scope: !193, inlinedAt: !344)
!351 = !DILocation(line: 50, column: 2, scope: !193, inlinedAt: !344)
!352 = !DILocation(line: 270, column: 5, scope: !300)
!353 = !{i32 -2146219102, i32 -2146219089, i32 -2146219064, i32 -2146219040, i32 -2146219015, i32 -2146218940, i32 -2146218915, i32 -2146218771, i32 -2146218746, i32 -2146215354, i32 -2146215265, i32 -2146215144, i32 -2146215049, i32 -2146214948, i32 -2146214921, i32 -2146214838, i32 -2146214749, i32 -2146214628, i32 -2146214528, i32 -2146214422, i32 -2146214314, i32 -2146218370, i32 -2146218317, i32 -2146218286, i32 -2146218255, i32 -2146218234, i32 -2146218212, i32 -2146218163, i32 -2146218142, i32 -2146218039, i32 -2146218007, i32 -2146214231, i32 -2146214142, i32 -2146214021, i32 -2146213922, i32 -2146213816, i32 -2146213714, i32 -2146213681, i32 -2146213608, i32 -2146213540, i32 -2146217817, i32 -2146217758, i32 -2146217705, i32 -2146217674, i32 -2146217643, i32 -2146217622, i32 -2146217600, i32 -2146217551, i32 -2146217530, i32 -2146213494, i32 -2146213405, i32 -2146213284, i32 -2146213185, i32 -2146213079, i32 -2146212977, i32 -2146212944, i32 -2146212861, i32 -2146212772, i32 -2146212651, i32 -2146212551, i32 -2146212525, i32 -2146212422, i32 -2146212396, i32 -2146217272, i32 -2146217247, i32 -2146217180, i32 -2146217155, i32 -2146217091, i32 -2146217009, i32 -2146216986, i32 -2146216961, i32 -2146216936}
!354 = !DILocation(line: 270, column: 5, scope: !355)
!355 = distinct !DILexicalBlock(scope: !356, file: !1, line: 270, column: 5)
!356 = distinct !DILexicalBlock(scope: !300, file: !1, line: 270, column: 5)
!357 = !{i32 -2146215852, i32 -2146215835}
!358 = !DILocation(line: 272, column: 9, scope: !326)
!359 = !DILocation(line: 272, column: 13, scope: !326)
!360 = !DILocation(line: 272, column: 9, scope: !291)
!361 = !DILocation(line: 68, column: 52, scope: !236, inlinedAt: !324)
!362 = !DILocation(line: 68, column: 59, scope: !236, inlinedAt: !324)
!363 = !DILocation(line: 68, column: 77, scope: !236, inlinedAt: !324)
!364 = !DILocation(line: 69, column: 5, scope: !236, inlinedAt: !324)
!365 = !DILocation(line: 70, column: 12, scope: !236, inlinedAt: !324)
!366 = !DILocation(line: 73, column: 15, scope: !269, inlinedAt: !324)
!367 = !DILocation(line: 74, column: 5, scope: !271, inlinedAt: !324)
!368 = !DILocation(line: 73, column: 9, scope: !269, inlinedAt: !324)
!369 = !DILocation(line: 75, column: 5, scope: !236, inlinedAt: !324)
!370 = !DILocation(line: 76, column: 1, scope: !236, inlinedAt: !324)
!371 = !DILocation(line: 274, column: 9, scope: !325)
!372 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !373)
!373 = distinct !DILocation(line: 276, column: 5, scope: !313)
!374 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !373)
!375 = !DILocation(line: 121, column: 2, scope: !172, inlinedAt: !373)
!376 = !DILocation(line: 276, column: 5, scope: !313)
!377 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !378)
!378 = distinct !DILocation(line: 276, column: 5, scope: !313)
!379 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !378)
!380 = !DILocation(line: 121, column: 2, scope: !172, inlinedAt: !378)
!381 = !DILocation(line: 276, column: 5, scope: !314)
!382 = !DILocation(line: 276, column: 5, scope: !383)
!383 = distinct !DILexicalBlock(scope: !313, file: !1, line: 276, column: 5)
!384 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !385)
!385 = distinct !DILocation(line: 49, column: 21, scope: !193, inlinedAt: !386)
!386 = distinct !DILocation(line: 276, column: 5, scope: !310)
!387 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !385)
!388 = !DILocation(line: 121, column: 2, scope: !172, inlinedAt: !385)
!389 = !DILocation(line: 49, column: 16, scope: !193, inlinedAt: !386)
!390 = !DILocation(line: 50, column: 19, scope: !193, inlinedAt: !386)
!391 = !DILocation(line: 50, column: 11, scope: !193, inlinedAt: !386)
!392 = !DILocation(line: 50, column: 9, scope: !193, inlinedAt: !386)
!393 = !DILocation(line: 50, column: 2, scope: !193, inlinedAt: !386)
!394 = !DILocation(line: 276, column: 5, scope: !310)
!395 = !{i32 -2146209842, i32 -2146209829, i32 -2146209804, i32 -2146209780, i32 -2146209755, i32 -2146209680, i32 -2146209655, i32 -2146209511, i32 -2146209486, i32 -2146206094, i32 -2146206005, i32 -2146205884, i32 -2146205789, i32 -2146205688, i32 -2146205661, i32 -2146205578, i32 -2146205489, i32 -2146205368, i32 -2146205268, i32 -2146205162, i32 -2146205054, i32 -2146209110, i32 -2146209057, i32 -2146209026, i32 -2146208995, i32 -2146208974, i32 -2146208952, i32 -2146208903, i32 -2146208882, i32 -2146208779, i32 -2146208747, i32 -2146204971, i32 -2146204882, i32 -2146204761, i32 -2146204662, i32 -2146204556, i32 -2146204454, i32 -2146204421, i32 -2146204348, i32 -2146204280, i32 -2146208557, i32 -2146208498, i32 -2146208445, i32 -2146208414, i32 -2146208383, i32 -2146208362, i32 -2146208340, i32 -2146208291, i32 -2146208270, i32 -2146204234, i32 -2146204145, i32 -2146204024, i32 -2146203925, i32 -2146203819, i32 -2146203717, i32 -2146203684, i32 -2146203601, i32 -2146203512, i32 -2146203391, i32 -2146203291, i32 -2146203265, i32 -2146203162, i32 -2146203136, i32 -2146208012, i32 -2146207987, i32 -2146207920, i32 -2146207895, i32 -2146207831, i32 -2146207749, i32 -2146207726, i32 -2146207701, i32 -2146207676}
!396 = !DILocation(line: 276, column: 5, scope: !397)
!397 = distinct !DILexicalBlock(scope: !398, file: !1, line: 276, column: 5)
!398 = distinct !DILexicalBlock(scope: !310, file: !1, line: 276, column: 5)
!399 = !{i32 -2146206592, i32 -2146206575}
!400 = !DILocation(line: 278, column: 9, scope: !322)
!401 = !DILocation(line: 278, column: 13, scope: !322)
!402 = !DILocation(line: 278, column: 9, scope: !291)
!403 = !DILocation(line: 68, column: 52, scope: !236, inlinedAt: !320)
!404 = !DILocation(line: 68, column: 59, scope: !236, inlinedAt: !320)
!405 = !DILocation(line: 68, column: 77, scope: !236, inlinedAt: !320)
!406 = !DILocation(line: 69, column: 5, scope: !236, inlinedAt: !320)
!407 = !DILocation(line: 70, column: 12, scope: !236, inlinedAt: !320)
!408 = !DILocation(line: 73, column: 15, scope: !269, inlinedAt: !320)
!409 = !DILocation(line: 74, column: 5, scope: !271, inlinedAt: !320)
!410 = !DILocation(line: 73, column: 9, scope: !269, inlinedAt: !320)
!411 = !DILocation(line: 75, column: 5, scope: !236, inlinedAt: !320)
!412 = !DILocation(line: 76, column: 1, scope: !236, inlinedAt: !320)
!413 = !DILocation(line: 280, column: 9, scope: !321)
!414 = !DILocation(line: 283, column: 1, scope: !291)
!415 = !DILocation(line: 0, scope: !291)
!416 = distinct !DISubprogram(name: "redisContextConnectTcp", scope: !1, file: !1, line: 448, type: !417, isLocal: false, isDefinition: true, scopeLine: 449, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !420)
!417 = !DISubroutineType(types: !418)
!418 = !{!34, !43, !239, !34, !419}
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!420 = !{!421, !422, !423, !424}
!421 = !DILocalVariable(name: "c", arg: 1, scope: !416, file: !1, line: 448, type: !43)
!422 = !DILocalVariable(name: "addr", arg: 2, scope: !416, file: !1, line: 448, type: !239)
!423 = !DILocalVariable(name: "port", arg: 3, scope: !416, file: !1, line: 448, type: !34)
!424 = !DILocalVariable(name: "timeout", arg: 4, scope: !416, file: !1, line: 449, type: !419)
!425 = !DILocation(line: 448, column: 42, scope: !416)
!426 = !DILocation(line: 448, column: 57, scope: !416)
!427 = !DILocation(line: 448, column: 67, scope: !416)
!428 = !DILocation(line: 449, column: 50, scope: !416)
!429 = !DILocation(line: 450, column: 12, scope: !416)
!430 = !DILocation(line: 450, column: 5, scope: !416)
!431 = distinct !DISubprogram(name: "_redisContextConnectTcp", scope: !1, file: !1, line: 285, type: !432, isLocal: true, isDefinition: true, scopeLine: 287, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !434)
!432 = !DISubroutineType(types: !433)
!433 = !{!34, !43, !239, !34, !419, !239}
!434 = !{!435, !436, !437, !438, !439, !440, !441, !442, !443, !447, !460, !461, !462, !463, !464, !465, !466, !467, !468, !474, !475, !476, !477, !485, !486, !487, !488, !497, !498, !499, !502, !508, !509, !510, !511, !514, !517, !523, !524, !525, !526, !527, !530}
!435 = !DILocalVariable(name: "c", arg: 1, scope: !431, file: !1, line: 285, type: !43)
!436 = !DILocalVariable(name: "addr", arg: 2, scope: !431, file: !1, line: 285, type: !239)
!437 = !DILocalVariable(name: "port", arg: 3, scope: !431, file: !1, line: 285, type: !34)
!438 = !DILocalVariable(name: "timeout", arg: 4, scope: !431, file: !1, line: 286, type: !419)
!439 = !DILocalVariable(name: "source_addr", arg: 5, scope: !431, file: !1, line: 287, type: !239)
!440 = !DILocalVariable(name: "s", scope: !431, file: !1, line: 288, type: !34)
!441 = !DILocalVariable(name: "rv", scope: !431, file: !1, line: 288, type: !34)
!442 = !DILocalVariable(name: "n", scope: !431, file: !1, line: 288, type: !34)
!443 = !DILocalVariable(name: "_port", scope: !431, file: !1, line: 289, type: !444)
!444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 48, elements: !445)
!445 = !{!446}
!446 = !DISubrange(count: 6)
!447 = !DILocalVariable(name: "hints", scope: !431, file: !1, line: 290, type: !448)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "addrinfo", file: !449, line: 103, size: 384, elements: !450)
!449 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/netdb.h", directory: "/root/.unikraft/apps/redis/build")
!450 = !{!451, !452, !453, !454, !455, !456, !457, !458}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "ai_flags", scope: !448, file: !449, line: 104, baseType: !34, size: 32)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "ai_family", scope: !448, file: !449, line: 105, baseType: !34, size: 32, offset: 32)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "ai_socktype", scope: !448, file: !449, line: 106, baseType: !34, size: 32, offset: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "ai_protocol", scope: !448, file: !449, line: 107, baseType: !34, size: 32, offset: 96)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "ai_addrlen", scope: !448, file: !449, line: 108, baseType: !233, size: 32, offset: 128)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "ai_addr", scope: !448, file: !449, line: 109, baseType: !16, size: 64, offset: 192)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "ai_canonname", scope: !448, file: !449, line: 110, baseType: !35, size: 64, offset: 256)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "ai_next", scope: !448, file: !449, line: 111, baseType: !459, size: 64, offset: 320)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!460 = !DILocalVariable(name: "servinfo", scope: !431, file: !1, line: 290, type: !459)
!461 = !DILocalVariable(name: "bservinfo", scope: !431, file: !1, line: 290, type: !459)
!462 = !DILocalVariable(name: "p", scope: !431, file: !1, line: 290, type: !459)
!463 = !DILocalVariable(name: "b", scope: !431, file: !1, line: 290, type: !459)
!464 = !DILocalVariable(name: "blocking", scope: !431, file: !1, line: 291, type: !34)
!465 = !DILocalVariable(name: "reuseaddr", scope: !431, file: !1, line: 292, type: !34)
!466 = !DILocalVariable(name: "reuses", scope: !431, file: !1, line: 293, type: !34)
!467 = !DILocalVariable(name: "timeout_msec", scope: !431, file: !1, line: 294, type: !124)
!468 = !DILocalVariable(name: "tid", scope: !469, file: !1, line: 350, type: !149)
!469 = distinct !DILexicalBlock(scope: !470, file: !1, line: 350, column: 5)
!470 = distinct !DILexicalBlock(scope: !471, file: !1, line: 350, column: 5)
!471 = distinct !DILexicalBlock(scope: !472, file: !1, line: 350, column: 5)
!472 = distinct !DILexicalBlock(scope: !473, file: !1, line: 350, column: 5)
!473 = distinct !DILexicalBlock(scope: !431, file: !1, line: 350, column: 5)
!474 = !DILocalVariable(name: "_ret", scope: !469, file: !1, line: 350, type: !11)
!475 = !DILocalVariable(name: "_arg3", scope: !469, file: !1, line: 350, type: !11)
!476 = !DILocalVariable(name: "_arg4", scope: !469, file: !1, line: 350, type: !11)
!477 = !DILocalVariable(name: "tid", scope: !478, file: !1, line: 354, type: !149)
!478 = distinct !DILexicalBlock(scope: !479, file: !1, line: 354, column: 10)
!479 = distinct !DILexicalBlock(scope: !480, file: !1, line: 354, column: 10)
!480 = distinct !DILexicalBlock(scope: !481, file: !1, line: 354, column: 10)
!481 = distinct !DILexicalBlock(scope: !482, file: !1, line: 354, column: 10)
!482 = distinct !DILexicalBlock(scope: !483, file: !1, line: 354, column: 10)
!483 = distinct !DILexicalBlock(scope: !484, file: !1, line: 352, column: 18)
!484 = distinct !DILexicalBlock(scope: !431, file: !1, line: 352, column: 9)
!485 = !DILocalVariable(name: "_ret", scope: !478, file: !1, line: 354, type: !11)
!486 = !DILocalVariable(name: "_arg3", scope: !478, file: !1, line: 354, type: !11)
!487 = !DILocalVariable(name: "_arg4", scope: !478, file: !1, line: 354, type: !11)
!488 = !DILocalVariable(name: "tid", scope: !489, file: !1, line: 363, type: !149)
!489 = distinct !DILexicalBlock(scope: !490, file: !1, line: 363, column: 9)
!490 = distinct !DILexicalBlock(scope: !491, file: !1, line: 363, column: 9)
!491 = distinct !DILexicalBlock(scope: !492, file: !1, line: 363, column: 9)
!492 = distinct !DILexicalBlock(scope: !493, file: !1, line: 363, column: 9)
!493 = distinct !DILexicalBlock(scope: !494, file: !1, line: 363, column: 9)
!494 = distinct !DILexicalBlock(scope: !495, file: !1, line: 361, column: 51)
!495 = distinct !DILexicalBlock(scope: !496, file: !1, line: 361, column: 5)
!496 = distinct !DILexicalBlock(scope: !431, file: !1, line: 361, column: 5)
!497 = !DILocalVariable(name: "_ret", scope: !489, file: !1, line: 363, type: !11)
!498 = !DILocalVariable(name: "_arg3", scope: !489, file: !1, line: 363, type: !11)
!499 = !DILocalVariable(name: "bound", scope: !500, file: !1, line: 372, type: !34)
!500 = distinct !DILexicalBlock(scope: !501, file: !1, line: 371, column: 33)
!501 = distinct !DILexicalBlock(scope: !494, file: !1, line: 371, column: 13)
!502 = !DILocalVariable(name: "tid", scope: !503, file: !1, line: 374, type: !149)
!503 = distinct !DILexicalBlock(scope: !504, file: !1, line: 374, column: 13)
!504 = distinct !DILexicalBlock(scope: !505, file: !1, line: 374, column: 13)
!505 = distinct !DILexicalBlock(scope: !506, file: !1, line: 374, column: 13)
!506 = distinct !DILexicalBlock(scope: !507, file: !1, line: 374, column: 13)
!507 = distinct !DILexicalBlock(scope: !500, file: !1, line: 374, column: 13)
!508 = !DILocalVariable(name: "_ret", scope: !503, file: !1, line: 374, type: !11)
!509 = !DILocalVariable(name: "_arg3", scope: !503, file: !1, line: 374, type: !11)
!510 = !DILocalVariable(name: "_arg4", scope: !503, file: !1, line: 374, type: !11)
!511 = !DILocalVariable(name: "buf", scope: !512, file: !1, line: 377, type: !49)
!512 = distinct !DILexicalBlock(scope: !513, file: !1, line: 376, column: 26)
!513 = distinct !DILexicalBlock(scope: !500, file: !1, line: 376, column: 17)
!514 = !DILocalVariable(name: "ret", scope: !515, file: !1, line: 384, type: !34)
!515 = distinct !DILexicalBlock(scope: !516, file: !1, line: 383, column: 28)
!516 = distinct !DILexicalBlock(scope: !500, file: !1, line: 383, column: 17)
!517 = !DILocalVariable(name: "tid", scope: !518, file: !1, line: 386, type: !149)
!518 = distinct !DILexicalBlock(scope: !519, file: !1, line: 386, column: 17)
!519 = distinct !DILexicalBlock(scope: !520, file: !1, line: 386, column: 17)
!520 = distinct !DILexicalBlock(scope: !521, file: !1, line: 386, column: 17)
!521 = distinct !DILexicalBlock(scope: !522, file: !1, line: 386, column: 17)
!522 = distinct !DILexicalBlock(scope: !515, file: !1, line: 386, column: 17)
!523 = !DILocalVariable(name: "_ret", scope: !518, file: !1, line: 386, type: !11)
!524 = !DILocalVariable(name: "_arg3", scope: !518, file: !1, line: 386, type: !11)
!525 = !DILocalVariable(name: "_arg4", scope: !518, file: !1, line: 386, type: !11)
!526 = !DILocalVariable(name: "_arg5", scope: !518, file: !1, line: 386, type: !11)
!527 = !DILocalVariable(name: "buf", scope: !528, file: !1, line: 401, type: !49)
!528 = distinct !DILexicalBlock(scope: !529, file: !1, line: 400, column: 25)
!529 = distinct !DILexicalBlock(scope: !500, file: !1, line: 400, column: 17)
!530 = !DILocalVariable(name: "buf", scope: !531, file: !1, line: 435, type: !49)
!531 = distinct !DILexicalBlock(scope: !532, file: !1, line: 434, column: 20)
!532 = distinct !DILexicalBlock(scope: !431, file: !1, line: 434, column: 9)
!533 = !DILocation(line: 69, column: 10, scope: !236, inlinedAt: !534)
!534 = distinct !DILocation(line: 187, column: 9, scope: !535, inlinedAt: !552)
!535 = distinct !DILexicalBlock(scope: !536, file: !1, line: 186, column: 20)
!536 = distinct !DILexicalBlock(scope: !537, file: !1, line: 186, column: 9)
!537 = distinct !DISubprogram(name: "redisSetTcpNoDelay", scope: !1, file: !1, line: 182, type: !227, isLocal: true, isDefinition: true, scopeLine: 182, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !538)
!538 = !{!539, !540, !541, !542, !548, !549, !550, !551}
!539 = !DILocalVariable(name: "c", arg: 1, scope: !537, file: !1, line: 182, type: !43)
!540 = !DILocalVariable(name: "yes", scope: !537, file: !1, line: 183, type: !34)
!541 = !DILocalVariable(name: "ret", scope: !537, file: !1, line: 183, type: !34)
!542 = !DILocalVariable(name: "tid", scope: !543, file: !1, line: 184, type: !149)
!543 = distinct !DILexicalBlock(scope: !544, file: !1, line: 184, column: 5)
!544 = distinct !DILexicalBlock(scope: !545, file: !1, line: 184, column: 5)
!545 = distinct !DILexicalBlock(scope: !546, file: !1, line: 184, column: 5)
!546 = distinct !DILexicalBlock(scope: !547, file: !1, line: 184, column: 5)
!547 = distinct !DILexicalBlock(scope: !537, file: !1, line: 184, column: 5)
!548 = !DILocalVariable(name: "_ret", scope: !543, file: !1, line: 184, type: !11)
!549 = !DILocalVariable(name: "_arg3", scope: !543, file: !1, line: 184, type: !11)
!550 = !DILocalVariable(name: "_arg4", scope: !543, file: !1, line: 184, type: !11)
!551 = !DILocalVariable(name: "_arg5", scope: !543, file: !1, line: 184, type: !11)
!552 = distinct !DILocation(line: 427, column: 13, scope: !553)
!553 = distinct !DILexicalBlock(scope: !494, file: !1, line: 427, column: 13)
!554 = !DILocation(line: 285, column: 50, scope: !431)
!555 = !DILocation(line: 285, column: 65, scope: !431)
!556 = !DILocation(line: 285, column: 75, scope: !431)
!557 = !DILocation(line: 286, column: 58, scope: !431)
!558 = !DILocation(line: 287, column: 48, scope: !431)
!559 = !DILocation(line: 288, column: 5, scope: !431)
!560 = !DILocation(line: 289, column: 5, scope: !431)
!561 = !DILocation(line: 289, column: 10, scope: !431)
!562 = !DILocation(line: 290, column: 5, scope: !431)
!563 = !DILocation(line: 291, column: 24, scope: !431)
!564 = !{!165, !160, i64 136}
!565 = !DILocation(line: 291, column: 30, scope: !431)
!566 = !DILocation(line: 291, column: 9, scope: !431)
!567 = !DILocation(line: 292, column: 31, scope: !431)
!568 = !DILocation(line: 292, column: 9, scope: !431)
!569 = !DILocation(line: 293, column: 9, scope: !431)
!570 = !DILocation(line: 294, column: 10, scope: !431)
!571 = !DILocation(line: 290, column: 29, scope: !431)
!572 = !DILocation(line: 296, column: 14, scope: !431)
!573 = !{!166, !166, i64 0}
!574 = !DILocation(line: 297, column: 8, scope: !431)
!575 = !DILocation(line: 297, column: 24, scope: !431)
!576 = !{!165, !161, i64 160}
!577 = !DILocation(line: 298, column: 12, scope: !431)
!578 = !DILocation(line: 298, column: 17, scope: !431)
!579 = !{!165, !160, i64 192}
!580 = !DILocation(line: 307, column: 16, scope: !581)
!581 = distinct !DILexicalBlock(scope: !431, file: !1, line: 307, column: 9)
!582 = !{!165, !166, i64 176}
!583 = !DILocation(line: 307, column: 21, scope: !581)
!584 = !DILocation(line: 307, column: 9, scope: !431)
!585 = !DILocation(line: 308, column: 13, scope: !586)
!586 = distinct !DILexicalBlock(scope: !587, file: !1, line: 308, column: 13)
!587 = distinct !DILexicalBlock(scope: !581, file: !1, line: 307, column: 30)
!588 = !DILocation(line: 308, column: 13, scope: !587)
!589 = !DILocation(line: 309, column: 13, scope: !586)
!590 = !DILocation(line: 311, column: 23, scope: !587)
!591 = !DILocation(line: 311, column: 21, scope: !587)
!592 = !DILocation(line: 312, column: 5, scope: !587)
!593 = !DILocation(line: 314, column: 9, scope: !594)
!594 = distinct !DILexicalBlock(scope: !431, file: !1, line: 314, column: 9)
!595 = !DILocation(line: 0, scope: !596)
!596 = distinct !DILexicalBlock(scope: !597, file: !1, line: 322, column: 13)
!597 = distinct !DILexicalBlock(scope: !594, file: !1, line: 321, column: 12)
!598 = !{!165, !166, i64 168}
!599 = !DILocation(line: 314, column: 9, scope: !431)
!600 = !DILocation(line: 315, column: 24, scope: !601)
!601 = distinct !DILexicalBlock(scope: !602, file: !1, line: 315, column: 13)
!602 = distinct !DILexicalBlock(scope: !594, file: !1, line: 314, column: 18)
!603 = !DILocation(line: 315, column: 13, scope: !602)
!604 = !DILocation(line: 316, column: 28, scope: !605)
!605 = distinct !DILexicalBlock(scope: !606, file: !1, line: 316, column: 17)
!606 = distinct !DILexicalBlock(scope: !601, file: !1, line: 315, column: 36)
!607 = !DILocation(line: 316, column: 17, scope: !606)
!608 = !DILocation(line: 317, column: 30, scope: !605)
!609 = !DILocation(line: 317, column: 28, scope: !605)
!610 = !DILocation(line: 317, column: 17, scope: !605)
!611 = !DILocation(line: 322, column: 13, scope: !596)
!612 = !DILocation(line: 322, column: 13, scope: !597)
!613 = !DILocation(line: 323, column: 13, scope: !596)
!614 = !DILocation(line: 324, column: 20, scope: !597)
!615 = !DILocalVariable(name: "c", arg: 1, scope: !616, file: !1, line: 196, type: !43)
!616 = distinct !DISubprogram(name: "redisContextTimeoutMsec", scope: !1, file: !1, line: 196, type: !617, isLocal: true, isDefinition: true, scopeLine: 197, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !620)
!617 = !DISubroutineType(types: !618)
!618 = !{!34, !43, !619}
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!620 = !{!615, !621, !622, !623}
!621 = !DILocalVariable(name: "result", arg: 2, scope: !616, file: !1, line: 196, type: !619)
!622 = !DILocalVariable(name: "timeout", scope: !616, file: !1, line: 198, type: !419)
!623 = !DILocalVariable(name: "msec", scope: !616, file: !1, line: 199, type: !124)
!624 = !DILocation(line: 196, column: 50, scope: !616, inlinedAt: !625)
!625 = distinct !DILocation(line: 327, column: 9, scope: !626)
!626 = distinct !DILexicalBlock(scope: !431, file: !1, line: 327, column: 9)
!627 = !DILocation(line: 198, column: 27, scope: !616, inlinedAt: !625)
!628 = !DILocation(line: 199, column: 10, scope: !616, inlinedAt: !625)
!629 = !DILocation(line: 202, column: 9, scope: !616, inlinedAt: !625)
!630 = !DILocation(line: 319, column: 23, scope: !606)
!631 = !DILocation(line: 319, column: 32, scope: !606)
!632 = !DILocation(line: 319, column: 13, scope: !606)
!633 = !DILocation(line: 198, column: 40, scope: !616, inlinedAt: !625)
!634 = !DILocation(line: 202, column: 17, scope: !635, inlinedAt: !625)
!635 = distinct !DILexicalBlock(scope: !616, file: !1, line: 202, column: 9)
!636 = !DILocation(line: 203, column: 22, scope: !637, inlinedAt: !625)
!637 = distinct !DILexicalBlock(scope: !638, file: !1, line: 203, column: 13)
!638 = distinct !DILexicalBlock(scope: !635, file: !1, line: 202, column: 26)
!639 = !{!640, !641, i64 8}
!640 = !{!"timeval", !641, i64 0, !641, i64 8}
!641 = !{!"long", !161, i64 0}
!642 = !DILocation(line: 203, column: 30, scope: !637, inlinedAt: !625)
!643 = !DILocation(line: 203, column: 40, scope: !637, inlinedAt: !625)
!644 = !DILocation(line: 203, column: 52, scope: !637, inlinedAt: !625)
!645 = !{!640, !641, i64 0}
!646 = !DILocation(line: 203, column: 59, scope: !637, inlinedAt: !625)
!647 = !DILocation(line: 203, column: 13, scope: !638, inlinedAt: !625)
!648 = !DILocation(line: 208, column: 33, scope: !638, inlinedAt: !625)
!649 = !DILocation(line: 208, column: 62, scope: !638, inlinedAt: !625)
!650 = !DILocation(line: 208, column: 69, scope: !638, inlinedAt: !625)
!651 = !DILocation(line: 208, column: 41, scope: !638, inlinedAt: !625)
!652 = !DILocation(line: 210, column: 22, scope: !653, inlinedAt: !625)
!653 = distinct !DILexicalBlock(scope: !638, file: !1, line: 210, column: 13)
!654 = !DILocation(line: 217, column: 1, scope: !616, inlinedAt: !625)
!655 = !DILocation(line: 328, column: 9, scope: !656)
!656 = distinct !DILexicalBlock(scope: !626, file: !1, line: 327, column: 64)
!657 = !DILocation(line: 329, column: 9, scope: !656)
!658 = !DILocation(line: 332, column: 21, scope: !659)
!659 = distinct !DILexicalBlock(scope: !431, file: !1, line: 332, column: 9)
!660 = !DILocation(line: 0, scope: !661)
!661 = distinct !DILexicalBlock(scope: !659, file: !1, line: 335, column: 16)
!662 = !{!165, !166, i64 184}
!663 = !DILocation(line: 332, column: 9, scope: !431)
!664 = !DILocation(line: 333, column: 9, scope: !665)
!665 = distinct !DILexicalBlock(scope: !659, file: !1, line: 332, column: 30)
!666 = !DILocation(line: 335, column: 5, scope: !665)
!667 = !DILocation(line: 335, column: 35, scope: !661)
!668 = !DILocation(line: 335, column: 16, scope: !659)
!669 = !DILocation(line: 336, column: 9, scope: !670)
!670 = distinct !DILexicalBlock(scope: !661, file: !1, line: 335, column: 51)
!671 = !DILocation(line: 337, column: 30, scope: !670)
!672 = !DILocation(line: 338, column: 5, scope: !670)
!673 = !DILocation(line: 0, scope: !665)
!674 = !DILocation(line: 340, column: 5, scope: !431)
!675 = !DILocation(line: 341, column: 5, scope: !431)
!676 = !DILocation(line: 342, column: 11, scope: !431)
!677 = !DILocation(line: 342, column: 21, scope: !431)
!678 = !{!679, !160, i64 4}
!679 = !{!"addrinfo", !160, i64 0, !160, i64 4, !160, i64 8, !160, i64 12, !160, i64 16, !166, i64 24, !166, i64 32, !166, i64 40}
!680 = !DILocation(line: 343, column: 11, scope: !431)
!681 = !DILocation(line: 343, column: 23, scope: !431)
!682 = !{!679, !160, i64 8}
!683 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !684)
!684 = distinct !DILocation(line: 350, column: 5, scope: !472)
!685 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !684)
!686 = !DILocation(line: 121, column: 2, scope: !172, inlinedAt: !684)
!687 = !DILocation(line: 350, column: 5, scope: !472)
!688 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !689)
!689 = distinct !DILocation(line: 350, column: 5, scope: !472)
!690 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !689)
!691 = !DILocation(line: 121, column: 2, scope: !172, inlinedAt: !689)
!692 = !DILocation(line: 350, column: 5, scope: !473)
!693 = !DILocation(line: 350, column: 5, scope: !694)
!694 = distinct !DILexicalBlock(scope: !472, file: !1, line: 350, column: 5)
!695 = !DILocation(line: 290, column: 21, scope: !431)
!696 = !DILocation(line: 288, column: 12, scope: !431)
!697 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !698)
!698 = distinct !DILocation(line: 49, column: 21, scope: !193, inlinedAt: !699)
!699 = distinct !DILocation(line: 350, column: 5, scope: !469)
!700 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !698)
!701 = !DILocation(line: 121, column: 2, scope: !172, inlinedAt: !698)
!702 = !DILocation(line: 49, column: 16, scope: !193, inlinedAt: !699)
!703 = !DILocation(line: 50, column: 19, scope: !193, inlinedAt: !699)
!704 = !DILocation(line: 50, column: 11, scope: !193, inlinedAt: !699)
!705 = !DILocation(line: 50, column: 9, scope: !193, inlinedAt: !699)
!706 = !DILocation(line: 50, column: 2, scope: !193, inlinedAt: !699)
!707 = !DILocation(line: 350, column: 5, scope: !469)
!708 = !{i32 -2146200528, i32 -2146200515, i32 -2146200490, i32 -2146200466, i32 -2146200441, i32 -2146200366, i32 -2146200341, i32 -2146200197, i32 -2146200172, i32 -2146196860, i32 -2146196771, i32 -2146196650, i32 -2146196555, i32 -2146196454, i32 -2146196427, i32 -2146196344, i32 -2146196255, i32 -2146196134, i32 -2146196034, i32 -2146195928, i32 -2146195820, i32 -2146199835, i32 -2146199782, i32 -2146199751, i32 -2146199720, i32 -2146199699, i32 -2146199677, i32 -2146199628, i32 -2146199607, i32 -2146199504, i32 -2146199472, i32 -2146195737, i32 -2146195648, i32 -2146195527, i32 -2146195428, i32 -2146195322, i32 -2146195220, i32 -2146195187, i32 -2146195114, i32 -2146195046, i32 -2146199282, i32 -2146199223, i32 -2146199170, i32 -2146199139, i32 -2146199108, i32 -2146199087, i32 -2146199065, i32 -2146199016, i32 -2146198995, i32 -2146194999, i32 -2146194910, i32 -2146194789, i32 -2146194690, i32 -2146194584, i32 -2146194482, i32 -2146194449, i32 -2146194366, i32 -2146194277, i32 -2146194156, i32 -2146194056, i32 -2146194030, i32 -2146193927, i32 -2146193901, i32 -2146198737, i32 -2146198712, i32 -2146198645, i32 -2146198620, i32 -2146198556, i32 -2146198474, i32 -2146198451, i32 -2146198426, i32 -2146198401}
!709 = !DILocation(line: 350, column: 5, scope: !710)
!710 = distinct !DILexicalBlock(scope: !711, file: !1, line: 350, column: 5)
!711 = distinct !DILexicalBlock(scope: !469, file: !1, line: 350, column: 5)
!712 = !{i32 -2146197340, i32 -2146197323}
!713 = !DILocation(line: 352, column: 9, scope: !484)
!714 = !DILocation(line: 352, column: 12, scope: !484)
!715 = !DILocation(line: 352, column: 9, scope: !431)
!716 = !DILocation(line: 353, column: 26, scope: !483)
!717 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !718)
!718 = distinct !DILocation(line: 354, column: 10, scope: !481)
!719 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !718)
!720 = !DILocation(line: 121, column: 2, scope: !172, inlinedAt: !718)
!721 = !DILocation(line: 354, column: 10, scope: !481)
!722 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !723)
!723 = distinct !DILocation(line: 354, column: 10, scope: !481)
!724 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !723)
!725 = !DILocation(line: 121, column: 2, scope: !172, inlinedAt: !723)
!726 = !DILocation(line: 354, column: 10, scope: !482)
!727 = !DILocation(line: 354, column: 10, scope: !728)
!728 = distinct !DILexicalBlock(scope: !481, file: !1, line: 354, column: 10)
!729 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !730)
!730 = distinct !DILocation(line: 49, column: 21, scope: !193, inlinedAt: !731)
!731 = distinct !DILocation(line: 354, column: 10, scope: !478)
!732 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !730)
!733 = !DILocation(line: 121, column: 2, scope: !172, inlinedAt: !730)
!734 = !DILocation(line: 49, column: 16, scope: !193, inlinedAt: !731)
!735 = !DILocation(line: 50, column: 19, scope: !193, inlinedAt: !731)
!736 = !DILocation(line: 50, column: 11, scope: !193, inlinedAt: !731)
!737 = !DILocation(line: 50, column: 9, scope: !193, inlinedAt: !731)
!738 = !DILocation(line: 50, column: 2, scope: !193, inlinedAt: !731)
!739 = !DILocation(line: 354, column: 10, scope: !478)
!740 = !{i32 -2146191386, i32 -2146191373, i32 -2146191348, i32 -2146191324, i32 -2146191299, i32 -2146191224, i32 -2146191199, i32 -2146191055, i32 -2146191030, i32 -2146187725, i32 -2146187636, i32 -2146187515, i32 -2146187420, i32 -2146187319, i32 -2146187292, i32 -2146187209, i32 -2146187120, i32 -2146186999, i32 -2146186899, i32 -2146186793, i32 -2146186685, i32 -2146190693, i32 -2146190640, i32 -2146190609, i32 -2146190578, i32 -2146190557, i32 -2146190535, i32 -2146190486, i32 -2146190465, i32 -2146190362, i32 -2146190330, i32 -2146186602, i32 -2146186513, i32 -2146186392, i32 -2146186293, i32 -2146186187, i32 -2146186085, i32 -2146186052, i32 -2146185979, i32 -2146185911, i32 -2146190140, i32 -2146190081, i32 -2146190028, i32 -2146189997, i32 -2146189966, i32 -2146189945, i32 -2146189923, i32 -2146189874, i32 -2146189853, i32 -2146185864, i32 -2146185775, i32 -2146185654, i32 -2146185555, i32 -2146185449, i32 -2146185347, i32 -2146185314, i32 -2146185231, i32 -2146185142, i32 -2146185021, i32 -2146184921, i32 -2146184895, i32 -2146184792, i32 -2146184766, i32 -2146189595, i32 -2146189570, i32 -2146189503, i32 -2146189478, i32 -2146189414, i32 -2146189332, i32 -2146189309, i32 -2146189284, i32 -2146189259}
!741 = !DILocation(line: 354, column: 10, scope: !742)
!742 = distinct !DILexicalBlock(scope: !743, file: !1, line: 354, column: 10)
!743 = distinct !DILexicalBlock(scope: !478, file: !1, line: 354, column: 10)
!744 = !{i32 -2146188198, i32 -2146188181}
!745 = !DILocation(line: 356, column: 14, scope: !746)
!746 = distinct !DILexicalBlock(scope: !483, file: !1, line: 356, column: 14)
!747 = !DILocation(line: 356, column: 17, scope: !746)
!748 = !DILocation(line: 356, column: 14, scope: !483)
!749 = !DILocation(line: 357, column: 47, scope: !750)
!750 = distinct !DILexicalBlock(scope: !746, file: !1, line: 356, column: 23)
!751 = !DILocation(line: 357, column: 13, scope: !750)
!752 = !DILocation(line: 358, column: 13, scope: !750)
!753 = !DILocation(line: 290, column: 52, scope: !431)
!754 = !DILocation(line: 0, scope: !495)
!755 = !DILocation(line: 361, column: 26, scope: !495)
!756 = !DILocation(line: 361, column: 5, scope: !496)
!757 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !758)
!758 = distinct !DILocation(line: 363, column: 9, scope: !492)
!759 = !DILocation(line: 0, scope: !760)
!760 = distinct !DILexicalBlock(scope: !761, file: !1, line: 414, column: 21)
!761 = distinct !DILexicalBlock(scope: !762, file: !1, line: 413, column: 61)
!762 = distinct !DILexicalBlock(scope: !763, file: !1, line: 413, column: 24)
!763 = distinct !DILexicalBlock(scope: !764, file: !1, line: 411, column: 24)
!764 = distinct !DILexicalBlock(scope: !765, file: !1, line: 408, column: 17)
!765 = distinct !DILexicalBlock(scope: !766, file: !1, line: 407, column: 56)
!766 = distinct !DILexicalBlock(scope: !494, file: !1, line: 407, column: 13)
!767 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !758)
!768 = !DILocation(line: 121, column: 2, scope: !172, inlinedAt: !758)
!769 = !DILocation(line: 363, column: 9, scope: !492)
!770 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !771)
!771 = distinct !DILocation(line: 363, column: 9, scope: !492)
!772 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !771)
!773 = !DILocation(line: 121, column: 2, scope: !172, inlinedAt: !771)
!774 = !DILocation(line: 363, column: 9, scope: !493)
!775 = !DILocation(line: 363, column: 9, scope: !776)
!776 = distinct !DILexicalBlock(scope: !492, file: !1, line: 363, column: 9)
!777 = !{!679, !160, i64 12}
!778 = !DILocation(line: 288, column: 9, scope: !431)
!779 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !780)
!780 = distinct !DILocation(line: 49, column: 21, scope: !193, inlinedAt: !781)
!781 = distinct !DILocation(line: 363, column: 9, scope: !489)
!782 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !780)
!783 = !DILocation(line: 121, column: 2, scope: !172, inlinedAt: !780)
!784 = !DILocation(line: 49, column: 16, scope: !193, inlinedAt: !781)
!785 = !DILocation(line: 50, column: 19, scope: !193, inlinedAt: !781)
!786 = !DILocation(line: 50, column: 11, scope: !193, inlinedAt: !781)
!787 = !DILocation(line: 50, column: 9, scope: !193, inlinedAt: !781)
!788 = !DILocation(line: 50, column: 2, scope: !193, inlinedAt: !781)
!789 = !DILocation(line: 363, column: 9, scope: !489)
!790 = !{i32 -2146182249, i32 -2146182236, i32 -2146182211, i32 -2146182187, i32 -2146182162, i32 -2146182087, i32 -2146182062, i32 -2146181918, i32 -2146178703, i32 -2146178614, i32 -2146178493, i32 -2146178398, i32 -2146178297, i32 -2146178270, i32 -2146178187, i32 -2146178098, i32 -2146177977, i32 -2146177877, i32 -2146177771, i32 -2146177663, i32 -2146181588, i32 -2146181535, i32 -2146181504, i32 -2146181473, i32 -2146181452, i32 -2146181430, i32 -2146181381, i32 -2146181360, i32 -2146181257, i32 -2146177580, i32 -2146177491, i32 -2146177370, i32 -2146177271, i32 -2146177165, i32 -2146177063, i32 -2146177030, i32 -2146176957, i32 -2146176889, i32 -2146181067, i32 -2146181008, i32 -2146180955, i32 -2146180924, i32 -2146180893, i32 -2146180872, i32 -2146180850, i32 -2146180801, i32 -2146180780, i32 -2146176847, i32 -2146176758, i32 -2146176637, i32 -2146176538, i32 -2146176432, i32 -2146176330, i32 -2146176297, i32 -2146176214, i32 -2146176125, i32 -2146176004, i32 -2146175904, i32 -2146175878, i32 -2146175775, i32 -2146175749, i32 -2146180522, i32 -2146180455, i32 -2146180430, i32 -2146180366, i32 -2146180284, i32 -2146180261, i32 -2146180236, i32 -2146180211}
!791 = !DILocation(line: 363, column: 9, scope: !792)
!792 = distinct !DILexicalBlock(scope: !793, file: !1, line: 363, column: 9)
!793 = distinct !DILexicalBlock(scope: !489, file: !1, line: 363, column: 9)
!794 = !{i32 -2146179173, i32 -2146179156}
!795 = !DILocation(line: 365, column: 13, scope: !796)
!796 = distinct !DILexicalBlock(scope: !494, file: !1, line: 365, column: 13)
!797 = !DILocation(line: 365, column: 15, scope: !796)
!798 = !DILocation(line: 365, column: 13, scope: !494)
!799 = !DILocation(line: 368, column: 15, scope: !494)
!800 = !DILocation(line: 369, column: 13, scope: !801)
!801 = distinct !DILexicalBlock(scope: !494, file: !1, line: 369, column: 13)
!802 = !DILocation(line: 369, column: 35, scope: !801)
!803 = !DILocation(line: 369, column: 13, scope: !494)
!804 = !DILocation(line: 371, column: 20, scope: !501)
!805 = !DILocation(line: 371, column: 13, scope: !501)
!806 = !DILocation(line: 371, column: 13, scope: !494)
!807 = !DILocation(line: 372, column: 17, scope: !500)
!808 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !809)
!809 = distinct !DILocation(line: 374, column: 13, scope: !506)
!810 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !809)
!811 = !DILocation(line: 121, column: 2, scope: !172, inlinedAt: !809)
!812 = !DILocation(line: 374, column: 13, scope: !506)
!813 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !814)
!814 = distinct !DILocation(line: 374, column: 13, scope: !506)
!815 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !814)
!816 = !DILocation(line: 121, column: 2, scope: !172, inlinedAt: !814)
!817 = !DILocation(line: 374, column: 13, scope: !507)
!818 = !DILocation(line: 374, column: 13, scope: !819)
!819 = distinct !DILexicalBlock(scope: !506, file: !1, line: 374, column: 13)
!820 = !DILocation(line: 290, column: 40, scope: !431)
!821 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !822)
!822 = distinct !DILocation(line: 49, column: 21, scope: !193, inlinedAt: !823)
!823 = distinct !DILocation(line: 374, column: 13, scope: !503)
!824 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !822)
!825 = !DILocation(line: 121, column: 2, scope: !172, inlinedAt: !822)
!826 = !DILocation(line: 49, column: 16, scope: !193, inlinedAt: !823)
!827 = !DILocation(line: 50, column: 19, scope: !193, inlinedAt: !823)
!828 = !DILocation(line: 50, column: 11, scope: !193, inlinedAt: !823)
!829 = !DILocation(line: 50, column: 9, scope: !193, inlinedAt: !823)
!830 = !DILocation(line: 50, column: 2, scope: !193, inlinedAt: !823)
!831 = !DILocation(line: 374, column: 13, scope: !503)
!832 = !{i32 -2146173202, i32 -2146173189, i32 -2146173164, i32 -2146173140, i32 -2146173115, i32 -2146173040, i32 -2146173015, i32 -2146172871, i32 -2146172846, i32 -2146169508, i32 -2146169419, i32 -2146169298, i32 -2146169203, i32 -2146169102, i32 -2146169075, i32 -2146168992, i32 -2146168903, i32 -2146168782, i32 -2146168682, i32 -2146168576, i32 -2146168468, i32 -2146172509, i32 -2146172456, i32 -2146172425, i32 -2146172394, i32 -2146172373, i32 -2146172351, i32 -2146172302, i32 -2146172281, i32 -2146172178, i32 -2146172146, i32 -2146168385, i32 -2146168296, i32 -2146168175, i32 -2146168076, i32 -2146167970, i32 -2146167868, i32 -2146167835, i32 -2146167762, i32 -2146167694, i32 -2146171956, i32 -2146171897, i32 -2146171844, i32 -2146171813, i32 -2146171782, i32 -2146171761, i32 -2146171739, i32 -2146171690, i32 -2146171669, i32 -2146167647, i32 -2146167558, i32 -2146167437, i32 -2146167338, i32 -2146167232, i32 -2146167130, i32 -2146167097, i32 -2146167014, i32 -2146166925, i32 -2146166804, i32 -2146166704, i32 -2146166678, i32 -2146166575, i32 -2146166549, i32 -2146171411, i32 -2146171386, i32 -2146171319, i32 -2146171294, i32 -2146171230, i32 -2146171148, i32 -2146171125, i32 -2146171100, i32 -2146171075}
!833 = !DILocation(line: 374, column: 13, scope: !834)
!834 = distinct !DILexicalBlock(scope: !835, file: !1, line: 374, column: 13)
!835 = distinct !DILexicalBlock(scope: !503, file: !1, line: 374, column: 13)
!836 = !{i32 -2146170014, i32 -2146169997}
!837 = !DILocation(line: 376, column: 17, scope: !513)
!838 = !DILocation(line: 376, column: 20, scope: !513)
!839 = !DILocation(line: 376, column: 17, scope: !500)
!840 = !DILocation(line: 377, column: 17, scope: !512)
!841 = !DILocation(line: 377, column: 22, scope: !512)
!842 = !DILocation(line: 378, column: 63, scope: !512)
!843 = !DILocation(line: 378, column: 17, scope: !512)
!844 = !DILocation(line: 379, column: 17, scope: !512)
!845 = !DILocation(line: 381, column: 13, scope: !513)
!846 = !DILocation(line: 383, column: 17, scope: !500)
!847 = !DILocation(line: 384, column: 17, scope: !515)
!848 = !DILocation(line: 288, column: 16, scope: !431)
!849 = !DILocation(line: 385, column: 19, scope: !515)
!850 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !851)
!851 = distinct !DILocation(line: 386, column: 17, scope: !521)
!852 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !851)
!853 = !DILocation(line: 121, column: 2, scope: !172, inlinedAt: !851)
!854 = !DILocation(line: 386, column: 17, scope: !521)
!855 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !856)
!856 = distinct !DILocation(line: 386, column: 17, scope: !521)
!857 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !856)
!858 = !DILocation(line: 121, column: 2, scope: !172, inlinedAt: !856)
!859 = !DILocation(line: 386, column: 17, scope: !522)
!860 = !DILocation(line: 386, column: 17, scope: !861)
!861 = distinct !DILexicalBlock(scope: !521, file: !1, line: 386, column: 17)
!862 = !DILocation(line: 384, column: 21, scope: !515)
!863 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !864)
!864 = distinct !DILocation(line: 49, column: 21, scope: !193, inlinedAt: !865)
!865 = distinct !DILocation(line: 386, column: 17, scope: !518)
!866 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !864)
!867 = !DILocation(line: 121, column: 2, scope: !172, inlinedAt: !864)
!868 = !DILocation(line: 49, column: 16, scope: !193, inlinedAt: !865)
!869 = !DILocation(line: 50, column: 19, scope: !193, inlinedAt: !865)
!870 = !DILocation(line: 50, column: 11, scope: !193, inlinedAt: !865)
!871 = !DILocation(line: 50, column: 9, scope: !193, inlinedAt: !865)
!872 = !DILocation(line: 50, column: 2, scope: !193, inlinedAt: !865)
!873 = !DILocation(line: 386, column: 17, scope: !518)
!874 = !{i32 -2146159886, i32 -2146159873, i32 -2146159848, i32 -2146159824, i32 -2146159799, i32 -2146159724, i32 -2146159699, i32 -2146159555, i32 -2146159530, i32 -2146156136, i32 -2146156047, i32 -2146155926, i32 -2146155831, i32 -2146155730, i32 -2146155703, i32 -2146155620, i32 -2146155531, i32 -2146155410, i32 -2146155310, i32 -2146155204, i32 -2146155096, i32 -2146159154, i32 -2146159101, i32 -2146159070, i32 -2146159039, i32 -2146159018, i32 -2146158996, i32 -2146158947, i32 -2146158926, i32 -2146158823, i32 -2146158791, i32 -2146155013, i32 -2146154924, i32 -2146154803, i32 -2146154704, i32 -2146154598, i32 -2146154496, i32 -2146154463, i32 -2146154390, i32 -2146154322, i32 -2146158601, i32 -2146158542, i32 -2146158489, i32 -2146158458, i32 -2146158427, i32 -2146158406, i32 -2146158384, i32 -2146158335, i32 -2146158314, i32 -2146154276, i32 -2146154187, i32 -2146154066, i32 -2146153967, i32 -2146153861, i32 -2146153759, i32 -2146153726, i32 -2146153643, i32 -2146153554, i32 -2146153433, i32 -2146153333, i32 -2146153307, i32 -2146153204, i32 -2146153178, i32 -2146158056, i32 -2146158031, i32 -2146157964, i32 -2146157939, i32 -2146157875, i32 -2146157793, i32 -2146157770, i32 -2146157745, i32 -2146157720}
!875 = !DILocation(line: 386, column: 17, scope: !876)
!876 = distinct !DILexicalBlock(scope: !877, file: !1, line: 386, column: 17)
!877 = distinct !DILexicalBlock(scope: !518, file: !1, line: 386, column: 17)
!878 = !{i32 -2146156636, i32 -2146156619}
!879 = !DILocation(line: 388, column: 21, scope: !880)
!880 = distinct !DILexicalBlock(scope: !515, file: !1, line: 388, column: 21)
!881 = !DILocation(line: 391, column: 13, scope: !516)
!882 = !DILocation(line: 290, column: 56, scope: !431)
!883 = !DILocation(line: 0, scope: !884)
!884 = distinct !DILexicalBlock(scope: !885, file: !1, line: 393, column: 13)
!885 = distinct !DILexicalBlock(scope: !500, file: !1, line: 393, column: 13)
!886 = !DILocation(line: 393, column: 35, scope: !884)
!887 = !DILocation(line: 393, column: 13, scope: !885)
!888 = !DILocation(line: 393, column: 51, scope: !884)
!889 = distinct !{!889, !887, !890}
!890 = !DILocation(line: 398, column: 13, scope: !885)
!891 = !DILocation(line: 394, column: 26, scope: !892)
!892 = distinct !DILexicalBlock(scope: !893, file: !1, line: 394, column: 21)
!893 = distinct !DILexicalBlock(scope: !884, file: !1, line: 393, column: 60)
!894 = !DILocation(line: 394, column: 31, scope: !892)
!895 = !{!679, !166, i64 24}
!896 = !DILocation(line: 394, column: 42, scope: !892)
!897 = !{!679, !160, i64 16}
!898 = !DILocation(line: 394, column: 21, scope: !892)
!899 = !DILocation(line: 394, column: 54, scope: !892)
!900 = !DILocation(line: 394, column: 21, scope: !893)
!901 = !DILocation(line: 399, column: 26, scope: !500)
!902 = !DILocation(line: 399, column: 13, scope: !500)
!903 = !DILocation(line: 401, column: 17, scope: !528)
!904 = !DILocation(line: 401, column: 22, scope: !528)
!905 = !DILocation(line: 402, column: 75, scope: !528)
!906 = !DILocation(line: 402, column: 66, scope: !528)
!907 = !DILocation(line: 402, column: 17, scope: !528)
!908 = !DILocation(line: 403, column: 17, scope: !528)
!909 = !DILocation(line: 405, column: 13, scope: !529)
!910 = !DILocation(line: 407, column: 21, scope: !766)
!911 = !DILocation(line: 407, column: 26, scope: !766)
!912 = !DILocation(line: 407, column: 37, scope: !766)
!913 = !DILocation(line: 407, column: 13, scope: !766)
!914 = !DILocation(line: 407, column: 49, scope: !766)
!915 = !DILocation(line: 407, column: 13, scope: !494)
!916 = !DILocation(line: 408, column: 17, scope: !764)
!917 = !DILocation(line: 408, column: 23, scope: !764)
!918 = !DILocation(line: 408, column: 17, scope: !765)
!919 = !DILocalVariable(name: "c", arg: 1, scope: !920, file: !1, line: 61, type: !43)
!920 = distinct !DISubprogram(name: "redisContextCloseFd", scope: !1, file: !1, line: 61, type: !921, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !923)
!921 = !DISubroutineType(types: !922)
!922 = !{null, !43}
!923 = !{!919}
!924 = !DILocation(line: 61, column: 47, scope: !920, inlinedAt: !925)
!925 = distinct !DILocation(line: 409, column: 17, scope: !926)
!926 = distinct !DILexicalBlock(scope: !764, file: !1, line: 408, column: 40)
!927 = !DILocation(line: 62, column: 17, scope: !928, inlinedAt: !925)
!928 = distinct !DILexicalBlock(scope: !920, file: !1, line: 62, column: 9)
!929 = !DILocation(line: 62, column: 20, scope: !928, inlinedAt: !925)
!930 = !DILocation(line: 62, column: 9, scope: !920, inlinedAt: !925)
!931 = !DILocation(line: 63, column: 9, scope: !932, inlinedAt: !925)
!932 = distinct !DILexicalBlock(scope: !928, file: !1, line: 62, column: 26)
!933 = !DILocation(line: 64, column: 15, scope: !932, inlinedAt: !925)
!934 = !DILocation(line: 65, column: 5, scope: !932, inlinedAt: !925)
!935 = !DILocation(line: 66, column: 1, scope: !920, inlinedAt: !925)
!936 = !DILocation(line: 410, column: 17, scope: !926)
!937 = !DILocation(line: 411, column: 24, scope: !763)
!938 = !DILocation(line: 411, column: 30, scope: !763)
!939 = !DILocation(line: 411, column: 45, scope: !763)
!940 = !DILocation(line: 413, column: 24, scope: !762)
!941 = !DILocation(line: 413, column: 30, scope: !762)
!942 = !DILocation(line: 413, column: 47, scope: !762)
!943 = !DILocation(line: 414, column: 30, scope: !760)
!944 = !DILocation(line: 414, column: 21, scope: !761)
!945 = !DILocation(line: 414, column: 21, scope: !760)
!946 = !DILocation(line: 61, column: 47, scope: !920, inlinedAt: !947)
!947 = distinct !DILocation(line: 417, column: 21, scope: !948)
!948 = distinct !DILexicalBlock(scope: !760, file: !1, line: 416, column: 24)
!949 = !DILocation(line: 62, column: 17, scope: !928, inlinedAt: !947)
!950 = !DILocation(line: 62, column: 20, scope: !928, inlinedAt: !947)
!951 = !DILocation(line: 62, column: 9, scope: !920, inlinedAt: !947)
!952 = !DILocation(line: 63, column: 9, scope: !932, inlinedAt: !947)
!953 = !DILocation(line: 64, column: 15, scope: !932, inlinedAt: !947)
!954 = !DILocation(line: 65, column: 5, scope: !932, inlinedAt: !947)
!955 = !DILocation(line: 66, column: 1, scope: !920, inlinedAt: !947)
!956 = !DILocation(line: 418, column: 21, scope: !948)
!957 = !DILocation(line: 421, column: 21, scope: !958)
!958 = distinct !DILexicalBlock(scope: !959, file: !1, line: 421, column: 21)
!959 = distinct !DILexicalBlock(scope: !762, file: !1, line: 420, column: 20)
!960 = !DILocation(line: 421, column: 59, scope: !958)
!961 = !DILocation(line: 421, column: 21, scope: !959)
!962 = !DILocation(line: 425, column: 13, scope: !963)
!963 = distinct !DILexicalBlock(scope: !494, file: !1, line: 425, column: 13)
!964 = !DILocation(line: 425, column: 22, scope: !963)
!965 = !DILocation(line: 425, column: 25, scope: !963)
!966 = !DILocation(line: 425, column: 47, scope: !963)
!967 = !DILocation(line: 425, column: 13, scope: !494)
!968 = !DILocation(line: 182, column: 45, scope: !537, inlinedAt: !552)
!969 = !DILocation(line: 183, column: 5, scope: !537, inlinedAt: !552)
!970 = !DILocation(line: 183, column: 9, scope: !537, inlinedAt: !552)
!971 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !972)
!972 = distinct !DILocation(line: 184, column: 5, scope: !546, inlinedAt: !552)
!973 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !972)
!974 = !DILocation(line: 121, column: 2, scope: !172, inlinedAt: !972)
!975 = !DILocation(line: 184, column: 5, scope: !546, inlinedAt: !552)
!976 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !977)
!977 = distinct !DILocation(line: 184, column: 5, scope: !546, inlinedAt: !552)
!978 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !977)
!979 = !DILocation(line: 121, column: 2, scope: !172, inlinedAt: !977)
!980 = !DILocation(line: 184, column: 5, scope: !547, inlinedAt: !552)
!981 = !DILocation(line: 184, column: 5, scope: !982, inlinedAt: !552)
!982 = distinct !DILexicalBlock(scope: !546, file: !1, line: 184, column: 5)
!983 = !DILocation(line: 183, column: 18, scope: !537, inlinedAt: !552)
!984 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !985)
!985 = distinct !DILocation(line: 49, column: 21, scope: !193, inlinedAt: !986)
!986 = distinct !DILocation(line: 184, column: 5, scope: !543, inlinedAt: !552)
!987 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !985)
!988 = !DILocation(line: 121, column: 2, scope: !172, inlinedAt: !985)
!989 = !DILocation(line: 49, column: 16, scope: !193, inlinedAt: !986)
!990 = !DILocation(line: 50, column: 19, scope: !193, inlinedAt: !986)
!991 = !DILocation(line: 50, column: 11, scope: !193, inlinedAt: !986)
!992 = !DILocation(line: 50, column: 9, scope: !193, inlinedAt: !986)
!993 = !DILocation(line: 50, column: 2, scope: !193, inlinedAt: !986)
!994 = !DILocation(line: 184, column: 5, scope: !543, inlinedAt: !552)
!995 = !{i32 -2146228575, i32 -2146228562, i32 -2146228537, i32 -2146228513, i32 -2146228488, i32 -2146228413, i32 -2146228388, i32 -2146228244, i32 -2146228219, i32 -2146224837, i32 -2146224748, i32 -2146224627, i32 -2146224532, i32 -2146224431, i32 -2146224404, i32 -2146224321, i32 -2146224232, i32 -2146224111, i32 -2146224011, i32 -2146223905, i32 -2146223797, i32 -2146227843, i32 -2146227790, i32 -2146227759, i32 -2146227728, i32 -2146227707, i32 -2146227685, i32 -2146227636, i32 -2146227615, i32 -2146227512, i32 -2146227480, i32 -2146223714, i32 -2146223625, i32 -2146223504, i32 -2146223405, i32 -2146223299, i32 -2146223197, i32 -2146223164, i32 -2146223091, i32 -2146223023, i32 -2146227290, i32 -2146227231, i32 -2146227178, i32 -2146227147, i32 -2146227116, i32 -2146227095, i32 -2146227073, i32 -2146227024, i32 -2146227003, i32 -2146222977, i32 -2146222888, i32 -2146222767, i32 -2146222668, i32 -2146222562, i32 -2146222460, i32 -2146222427, i32 -2146222344, i32 -2146222255, i32 -2146222134, i32 -2146222034, i32 -2146222008, i32 -2146221905, i32 -2146221879, i32 -2146226745, i32 -2146226720, i32 -2146226653, i32 -2146226628, i32 -2146226564, i32 -2146226482, i32 -2146226459, i32 -2146226434, i32 -2146226409}
!996 = !DILocation(line: 184, column: 5, scope: !997, inlinedAt: !552)
!997 = distinct !DILexicalBlock(scope: !998, file: !1, line: 184, column: 5)
!998 = distinct !DILexicalBlock(scope: !543, file: !1, line: 184, column: 5)
!999 = !{i32 -2146225325, i32 -2146225308}
!1000 = !DILocation(line: 186, column: 9, scope: !536, inlinedAt: !552)
!1001 = !DILocation(line: 186, column: 13, scope: !536, inlinedAt: !552)
!1002 = !DILocation(line: 186, column: 9, scope: !537, inlinedAt: !552)
!1003 = !DILocation(line: 68, column: 52, scope: !236, inlinedAt: !534)
!1004 = !DILocation(line: 68, column: 59, scope: !236, inlinedAt: !534)
!1005 = !DILocation(line: 68, column: 77, scope: !236, inlinedAt: !534)
!1006 = !DILocation(line: 69, column: 5, scope: !236, inlinedAt: !534)
!1007 = !DILocation(line: 70, column: 12, scope: !236, inlinedAt: !534)
!1008 = !DILocation(line: 73, column: 15, scope: !269, inlinedAt: !534)
!1009 = !DILocation(line: 74, column: 5, scope: !271, inlinedAt: !534)
!1010 = !DILocation(line: 73, column: 9, scope: !269, inlinedAt: !534)
!1011 = !DILocation(line: 75, column: 5, scope: !236, inlinedAt: !534)
!1012 = !DILocation(line: 76, column: 1, scope: !236, inlinedAt: !534)
!1013 = !DILocation(line: 61, column: 47, scope: !920, inlinedAt: !1014)
!1014 = distinct !DILocation(line: 188, column: 9, scope: !535, inlinedAt: !552)
!1015 = !DILocation(line: 62, column: 17, scope: !928, inlinedAt: !1014)
!1016 = !DILocation(line: 62, column: 20, scope: !928, inlinedAt: !1014)
!1017 = !DILocation(line: 62, column: 9, scope: !920, inlinedAt: !1014)
!1018 = !DILocation(line: 63, column: 9, scope: !932, inlinedAt: !1014)
!1019 = !DILocation(line: 64, column: 15, scope: !932, inlinedAt: !1014)
!1020 = !DILocation(line: 65, column: 5, scope: !932, inlinedAt: !1014)
!1021 = !DILocation(line: 66, column: 1, scope: !920, inlinedAt: !1014)
!1022 = !DILocation(line: 192, column: 1, scope: !537, inlinedAt: !552)
!1023 = !DILocation(line: 427, column: 13, scope: !494)
!1024 = !DILocation(line: 430, column: 18, scope: !494)
!1025 = !DILocation(line: 432, column: 9, scope: !494)
!1026 = !DILocation(line: 361, column: 42, scope: !495)
!1027 = distinct !{!1027, !756, !1028}
!1028 = !DILocation(line: 433, column: 5, scope: !496)
!1029 = !DILocation(line: 435, column: 9, scope: !531)
!1030 = !DILocation(line: 435, column: 14, scope: !531)
!1031 = !DILocation(line: 436, column: 69, scope: !531)
!1032 = !DILocation(line: 436, column: 60, scope: !531)
!1033 = !DILocation(line: 436, column: 9, scope: !531)
!1034 = !DILocation(line: 437, column: 9, scope: !531)
!1035 = !DILocation(line: 439, column: 5, scope: !532)
!1036 = !DILocation(line: 0, scope: !494)
!1037 = !DILocation(line: 444, column: 18, scope: !431)
!1038 = !DILocation(line: 444, column: 5, scope: !431)
!1039 = !DILocation(line: 445, column: 12, scope: !431)
!1040 = !DILocation(line: 445, column: 5, scope: !431)
!1041 = !DILocation(line: 446, column: 1, scope: !431)
!1042 = distinct !DISubprogram(name: "redisContextConnectBindTcp", scope: !1, file: !1, line: 453, type: !432, isLocal: false, isDefinition: true, scopeLine: 455, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1043)
!1043 = !{!1044, !1045, !1046, !1047, !1048}
!1044 = !DILocalVariable(name: "c", arg: 1, scope: !1042, file: !1, line: 453, type: !43)
!1045 = !DILocalVariable(name: "addr", arg: 2, scope: !1042, file: !1, line: 453, type: !239)
!1046 = !DILocalVariable(name: "port", arg: 3, scope: !1042, file: !1, line: 453, type: !34)
!1047 = !DILocalVariable(name: "timeout", arg: 4, scope: !1042, file: !1, line: 454, type: !419)
!1048 = !DILocalVariable(name: "source_addr", arg: 5, scope: !1042, file: !1, line: 455, type: !239)
!1049 = !DILocation(line: 453, column: 46, scope: !1042)
!1050 = !DILocation(line: 453, column: 61, scope: !1042)
!1051 = !DILocation(line: 453, column: 71, scope: !1042)
!1052 = !DILocation(line: 454, column: 54, scope: !1042)
!1053 = !DILocation(line: 455, column: 44, scope: !1042)
!1054 = !DILocation(line: 456, column: 12, scope: !1042)
!1055 = !DILocation(line: 456, column: 5, scope: !1042)
!1056 = distinct !DISubprogram(name: "redisContextConnectUnix", scope: !1, file: !1, line: 459, type: !1057, isLocal: false, isDefinition: true, scopeLine: 459, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1059)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!34, !43, !239, !419}
!1059 = !{!1060, !1061, !1062, !1063, !1064, !1073}
!1060 = !DILocalVariable(name: "c", arg: 1, scope: !1056, file: !1, line: 459, type: !43)
!1061 = !DILocalVariable(name: "path", arg: 2, scope: !1056, file: !1, line: 459, type: !239)
!1062 = !DILocalVariable(name: "timeout", arg: 3, scope: !1056, file: !1, line: 459, type: !419)
!1063 = !DILocalVariable(name: "blocking", scope: !1056, file: !1, line: 460, type: !34)
!1064 = !DILocalVariable(name: "sa", scope: !1056, file: !1, line: 461, type: !1065)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_un", file: !1066, line: 17, size: 872, elements: !1067)
!1066 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/include/sys/un.h", directory: "/root/.unikraft/apps/redis/build")
!1067 = !{!1068, !1069}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "sun_family", scope: !1065, file: !1066, line: 18, baseType: !27, size: 8)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "sun_path", scope: !1065, file: !1066, line: 19, baseType: !1070, size: 864, offset: 8)
!1070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 864, elements: !1071)
!1071 = !{!1072}
!1072 = !DISubrange(count: 108)
!1073 = !DILocalVariable(name: "timeout_msec", scope: !1056, file: !1, line: 462, type: !124)
!1074 = !DILocation(line: 69, column: 10, scope: !236, inlinedAt: !1075)
!1075 = distinct !DILocation(line: 94, column: 9, scope: !1076, inlinedAt: !1091)
!1076 = distinct !DILexicalBlock(scope: !1077, file: !1, line: 93, column: 18)
!1077 = distinct !DILexicalBlock(scope: !1078, file: !1, line: 93, column: 9)
!1078 = distinct !DISubprogram(name: "redisCreateSocket", scope: !1, file: !1, line: 90, type: !41, isLocal: true, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1079)
!1079 = !{!1080, !1081, !1082, !1083, !1089, !1090}
!1080 = !DILocalVariable(name: "c", arg: 1, scope: !1078, file: !1, line: 90, type: !43)
!1081 = !DILocalVariable(name: "type", arg: 2, scope: !1078, file: !1, line: 90, type: !34)
!1082 = !DILocalVariable(name: "s", scope: !1078, file: !1, line: 91, type: !34)
!1083 = !DILocalVariable(name: "tid", scope: !1084, file: !1, line: 92, type: !149)
!1084 = distinct !DILexicalBlock(scope: !1085, file: !1, line: 92, column: 5)
!1085 = distinct !DILexicalBlock(scope: !1086, file: !1, line: 92, column: 5)
!1086 = distinct !DILexicalBlock(scope: !1087, file: !1, line: 92, column: 5)
!1087 = distinct !DILexicalBlock(scope: !1088, file: !1, line: 92, column: 5)
!1088 = distinct !DILexicalBlock(scope: !1078, file: !1, line: 92, column: 5)
!1089 = !DILocalVariable(name: "_ret", scope: !1084, file: !1, line: 92, type: !11)
!1090 = !DILocalVariable(name: "_arg3", scope: !1084, file: !1, line: 92, type: !11)
!1091 = distinct !DILocation(line: 464, column: 9, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1056, file: !1, line: 464, column: 9)
!1093 = !DILocation(line: 459, column: 43, scope: !1056)
!1094 = !DILocation(line: 459, column: 58, scope: !1056)
!1095 = !DILocation(line: 459, column: 86, scope: !1056)
!1096 = !DILocation(line: 460, column: 24, scope: !1056)
!1097 = !DILocation(line: 460, column: 30, scope: !1056)
!1098 = !DILocation(line: 460, column: 9, scope: !1056)
!1099 = !DILocation(line: 461, column: 5, scope: !1056)
!1100 = !DILocation(line: 462, column: 10, scope: !1056)
!1101 = !DILocation(line: 90, column: 44, scope: !1078, inlinedAt: !1091)
!1102 = !DILocation(line: 90, column: 51, scope: !1078, inlinedAt: !1091)
!1103 = !DILocation(line: 91, column: 5, scope: !1078, inlinedAt: !1091)
!1104 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !1105)
!1105 = distinct !DILocation(line: 92, column: 5, scope: !1087, inlinedAt: !1091)
!1106 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !1105)
!1107 = !DILocation(line: 121, column: 2, scope: !172, inlinedAt: !1105)
!1108 = !DILocation(line: 92, column: 5, scope: !1087, inlinedAt: !1091)
!1109 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !1110)
!1110 = distinct !DILocation(line: 92, column: 5, scope: !1087, inlinedAt: !1091)
!1111 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !1110)
!1112 = !DILocation(line: 121, column: 2, scope: !172, inlinedAt: !1110)
!1113 = !DILocation(line: 92, column: 5, scope: !1088, inlinedAt: !1091)
!1114 = !DILocation(line: 92, column: 5, scope: !1115, inlinedAt: !1091)
!1115 = distinct !DILexicalBlock(scope: !1087, file: !1, line: 92, column: 5)
!1116 = !DILocation(line: 91, column: 9, scope: !1078, inlinedAt: !1091)
!1117 = !DILocation(line: 120, column: 2, scope: !172, inlinedAt: !1118)
!1118 = distinct !DILocation(line: 49, column: 21, scope: !193, inlinedAt: !1119)
!1119 = distinct !DILocation(line: 92, column: 5, scope: !1084, inlinedAt: !1091)
!1120 = !DILocation(line: 118, column: 16, scope: !172, inlinedAt: !1118)
!1121 = !DILocation(line: 121, column: 2, scope: !172, inlinedAt: !1118)
!1122 = !DILocation(line: 49, column: 16, scope: !193, inlinedAt: !1119)
!1123 = !DILocation(line: 50, column: 19, scope: !193, inlinedAt: !1119)
!1124 = !DILocation(line: 50, column: 11, scope: !193, inlinedAt: !1119)
!1125 = !DILocation(line: 50, column: 9, scope: !193, inlinedAt: !1119)
!1126 = !DILocation(line: 50, column: 2, scope: !193, inlinedAt: !1119)
!1127 = !DILocation(line: 92, column: 5, scope: !1084, inlinedAt: !1091)
!1128 = !{i32 -2146246933, i32 -2146246920, i32 -2146246895, i32 -2146246871, i32 -2146246846, i32 -2146246771, i32 -2146246746, i32 -2146246602, i32 -2146243419, i32 -2146243330, i32 -2146243209, i32 -2146243114, i32 -2146243013, i32 -2146242986, i32 -2146242903, i32 -2146242814, i32 -2146242693, i32 -2146242593, i32 -2146242487, i32 -2146242379, i32 -2146246272, i32 -2146246219, i32 -2146246188, i32 -2146246157, i32 -2146246136, i32 -2146246114, i32 -2146246065, i32 -2146246044, i32 -2146245941, i32 -2146242296, i32 -2146242207, i32 -2146242086, i32 -2146241987, i32 -2146241881, i32 -2146241779, i32 -2146241746, i32 -2146241673, i32 -2146241605, i32 -2146245751, i32 -2146245692, i32 -2146245639, i32 -2146245608, i32 -2146245577, i32 -2146245556, i32 -2146245534, i32 -2146245485, i32 -2146245464, i32 -2146241563, i32 -2146241474, i32 -2146241353, i32 -2146241254, i32 -2146241148, i32 -2146241046, i32 -2146241013, i32 -2146240930, i32 -2146240841, i32 -2146240720, i32 -2146240620, i32 -2146240594, i32 -2146240491, i32 -2146240465, i32 -2146245206, i32 -2146245139, i32 -2146245114, i32 -2146245050, i32 -2146244968, i32 -2146244945, i32 -2146244920, i32 -2146244895}
!1129 = !DILocation(line: 92, column: 5, scope: !1130, inlinedAt: !1091)
!1130 = distinct !DILexicalBlock(scope: !1131, file: !1, line: 92, column: 5)
!1131 = distinct !DILexicalBlock(scope: !1084, file: !1, line: 92, column: 5)
!1132 = !{i32 -2146243857, i32 -2146243840}
!1133 = !DILocation(line: 93, column: 9, scope: !1077, inlinedAt: !1091)
!1134 = !DILocation(line: 93, column: 11, scope: !1077, inlinedAt: !1091)
!1135 = !DILocation(line: 93, column: 9, scope: !1078, inlinedAt: !1091)
!1136 = !DILocation(line: 68, column: 52, scope: !236, inlinedAt: !1075)
!1137 = !DILocation(line: 68, column: 59, scope: !236, inlinedAt: !1075)
!1138 = !DILocation(line: 68, column: 77, scope: !236, inlinedAt: !1075)
!1139 = !DILocation(line: 69, column: 5, scope: !236, inlinedAt: !1075)
!1140 = !DILocation(line: 70, column: 12, scope: !236, inlinedAt: !1075)
!1141 = !DILocation(line: 74, column: 5, scope: !271, inlinedAt: !1075)
!1142 = !DILocation(line: 75, column: 5, scope: !236, inlinedAt: !1075)
!1143 = !DILocation(line: 76, column: 1, scope: !236, inlinedAt: !1075)
!1144 = !DILocation(line: 104, column: 1, scope: !1078, inlinedAt: !1091)
!1145 = !DILocation(line: 464, column: 9, scope: !1056)
!1146 = !DILocation(line: 97, column: 8, scope: !1078, inlinedAt: !1091)
!1147 = !DILocation(line: 97, column: 11, scope: !1078, inlinedAt: !1091)
!1148 = !DILocation(line: 466, column: 9, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1056, file: !1, line: 466, column: 9)
!1150 = !DILocation(line: 466, column: 31, scope: !1149)
!1151 = !DILocation(line: 466, column: 9, scope: !1056)
!1152 = !DILocation(line: 469, column: 8, scope: !1056)
!1153 = !DILocation(line: 469, column: 24, scope: !1056)
!1154 = !DILocation(line: 470, column: 22, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1056, file: !1, line: 470, column: 9)
!1156 = !{!165, !166, i64 200}
!1157 = !DILocation(line: 470, column: 27, scope: !1155)
!1158 = !DILocation(line: 470, column: 9, scope: !1056)
!1159 = !DILocation(line: 471, column: 29, scope: !1155)
!1160 = !DILocation(line: 471, column: 27, scope: !1155)
!1161 = !DILocation(line: 471, column: 9, scope: !1155)
!1162 = !DILocation(line: 473, column: 9, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1056, file: !1, line: 473, column: 9)
!1164 = !DILocation(line: 0, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1166, file: !1, line: 481, column: 13)
!1166 = distinct !DILexicalBlock(scope: !1163, file: !1, line: 480, column: 12)
!1167 = !DILocation(line: 473, column: 9, scope: !1056)
!1168 = !DILocation(line: 474, column: 24, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1170, file: !1, line: 474, column: 13)
!1170 = distinct !DILexicalBlock(scope: !1163, file: !1, line: 473, column: 18)
!1171 = !DILocation(line: 474, column: 13, scope: !1170)
!1172 = !DILocation(line: 475, column: 28, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1174, file: !1, line: 475, column: 17)
!1174 = distinct !DILexicalBlock(scope: !1169, file: !1, line: 474, column: 36)
!1175 = !DILocation(line: 475, column: 17, scope: !1174)
!1176 = !DILocation(line: 476, column: 30, scope: !1173)
!1177 = !DILocation(line: 476, column: 28, scope: !1173)
!1178 = !DILocation(line: 476, column: 17, scope: !1173)
!1179 = !DILocation(line: 481, column: 13, scope: !1165)
!1180 = !DILocation(line: 481, column: 13, scope: !1166)
!1181 = !DILocation(line: 482, column: 13, scope: !1165)
!1182 = !DILocation(line: 483, column: 20, scope: !1166)
!1183 = !DILocation(line: 196, column: 50, scope: !616, inlinedAt: !1184)
!1184 = distinct !DILocation(line: 486, column: 9, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1056, file: !1, line: 486, column: 9)
!1186 = !DILocation(line: 198, column: 27, scope: !616, inlinedAt: !1184)
!1187 = !DILocation(line: 199, column: 10, scope: !616, inlinedAt: !1184)
!1188 = !DILocation(line: 202, column: 9, scope: !616, inlinedAt: !1184)
!1189 = !DILocation(line: 478, column: 23, scope: !1174)
!1190 = !DILocation(line: 478, column: 32, scope: !1174)
!1191 = !DILocation(line: 478, column: 13, scope: !1174)
!1192 = !DILocation(line: 198, column: 40, scope: !616, inlinedAt: !1184)
!1193 = !DILocation(line: 202, column: 17, scope: !635, inlinedAt: !1184)
!1194 = !DILocation(line: 203, column: 22, scope: !637, inlinedAt: !1184)
!1195 = !DILocation(line: 203, column: 30, scope: !637, inlinedAt: !1184)
!1196 = !DILocation(line: 203, column: 40, scope: !637, inlinedAt: !1184)
!1197 = !DILocation(line: 203, column: 52, scope: !637, inlinedAt: !1184)
!1198 = !DILocation(line: 203, column: 59, scope: !637, inlinedAt: !1184)
!1199 = !DILocation(line: 203, column: 13, scope: !638, inlinedAt: !1184)
!1200 = !DILocation(line: 208, column: 33, scope: !638, inlinedAt: !1184)
!1201 = !DILocation(line: 208, column: 62, scope: !638, inlinedAt: !1184)
!1202 = !DILocation(line: 208, column: 69, scope: !638, inlinedAt: !1184)
!1203 = !DILocation(line: 208, column: 41, scope: !638, inlinedAt: !1184)
!1204 = !DILocation(line: 210, column: 22, scope: !653, inlinedAt: !1184)
!1205 = !DILocation(line: 217, column: 1, scope: !616, inlinedAt: !1184)
!1206 = !DILocation(line: 489, column: 19, scope: !1056)
!1207 = !{!1208, !161, i64 0}
!1208 = !{!"sockaddr_un", !161, i64 0, !161, i64 1}
!1209 = !DILocation(line: 490, column: 13, scope: !1056)
!1210 = !DILocation(line: 490, column: 5, scope: !1056)
!1211 = !DILocation(line: 491, column: 20, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1056, file: !1, line: 491, column: 9)
!1213 = !DILocation(line: 491, column: 24, scope: !1212)
!1214 = !DILocation(line: 491, column: 9, scope: !1212)
!1215 = !DILocation(line: 491, column: 59, scope: !1212)
!1216 = !DILocation(line: 491, column: 9, scope: !1056)
!1217 = !DILocation(line: 492, column: 13, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1219, file: !1, line: 492, column: 13)
!1219 = distinct !DILexicalBlock(scope: !1212, file: !1, line: 491, column: 66)
!1220 = !DILocation(line: 492, column: 19, scope: !1218)
!1221 = !DILocation(line: 492, column: 38, scope: !1218)
!1222 = !DILocation(line: 492, column: 34, scope: !1218)
!1223 = !DILocation(line: 495, column: 17, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1225, file: !1, line: 495, column: 17)
!1225 = distinct !DILexicalBlock(scope: !1218, file: !1, line: 494, column: 16)
!1226 = !DILocation(line: 495, column: 55, scope: !1224)
!1227 = !DILocation(line: 495, column: 17, scope: !1225)
!1228 = !DILocation(line: 501, column: 9, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1056, file: !1, line: 501, column: 9)
!1230 = !DILocation(line: 501, column: 18, scope: !1229)
!1231 = !DILocation(line: 501, column: 21, scope: !1229)
!1232 = !DILocation(line: 501, column: 43, scope: !1229)
!1233 = !DILocation(line: 501, column: 9, scope: !1056)
!1234 = !DILocation(line: 504, column: 14, scope: !1056)
!1235 = !DILocation(line: 505, column: 5, scope: !1056)
!1236 = !DILocation(line: 0, scope: !1056)
!1237 = !DILocation(line: 506, column: 1, scope: !1056)
!1238 = distinct !DISubprogram(name: "redisSetBlocking", scope: !1, file: !1, line: 106, type: !41, isLocal: true, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1239)
!1239 = !{!1240, !1241, !1242}
!1240 = !DILocalVariable(name: "c", arg: 1, scope: !1238, file: !1, line: 106, type: !43)
!1241 = !DILocalVariable(name: "blocking", arg: 2, scope: !1238, file: !1, line: 106, type: !34)
!1242 = !DILocalVariable(name: "flags", scope: !1238, file: !1, line: 107, type: !34)
!1243 = !DILocation(line: 69, column: 10, scope: !236, inlinedAt: !1244)
!1244 = distinct !DILocation(line: 124, column: 9, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1246, file: !1, line: 123, column: 45)
!1246 = distinct !DILexicalBlock(scope: !1238, file: !1, line: 123, column: 9)
!1247 = !DILocation(line: 69, column: 10, scope: !236, inlinedAt: !1248)
!1248 = distinct !DILocation(line: 113, column: 9, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1250, file: !1, line: 112, column: 48)
!1250 = distinct !DILexicalBlock(scope: !1238, file: !1, line: 112, column: 9)
!1251 = !DILocation(line: 106, column: 43, scope: !1238)
!1252 = !DILocation(line: 106, column: 50, scope: !1238)
!1253 = !DILocation(line: 112, column: 27, scope: !1250)
!1254 = !DILocation(line: 112, column: 18, scope: !1250)
!1255 = !DILocation(line: 107, column: 9, scope: !1238)
!1256 = !DILocation(line: 112, column: 41, scope: !1250)
!1257 = !DILocation(line: 112, column: 9, scope: !1238)
!1258 = !DILocation(line: 68, column: 52, scope: !236, inlinedAt: !1248)
!1259 = !DILocation(line: 68, column: 59, scope: !236, inlinedAt: !1248)
!1260 = !DILocation(line: 68, column: 77, scope: !236, inlinedAt: !1248)
!1261 = !DILocation(line: 69, column: 5, scope: !236, inlinedAt: !1248)
!1262 = !DILocation(line: 70, column: 12, scope: !236, inlinedAt: !1248)
!1263 = !DILocation(line: 73, column: 15, scope: !269, inlinedAt: !1248)
!1264 = !DILocation(line: 74, column: 5, scope: !271, inlinedAt: !1248)
!1265 = !DILocation(line: 73, column: 9, scope: !269, inlinedAt: !1248)
!1266 = !DILocation(line: 75, column: 5, scope: !236, inlinedAt: !1248)
!1267 = !DILocation(line: 76, column: 1, scope: !236, inlinedAt: !1248)
!1268 = !DILocation(line: 61, column: 47, scope: !920, inlinedAt: !1269)
!1269 = distinct !DILocation(line: 114, column: 9, scope: !1249)
!1270 = !DILocation(line: 62, column: 17, scope: !928, inlinedAt: !1269)
!1271 = !DILocation(line: 62, column: 20, scope: !928, inlinedAt: !1269)
!1272 = !DILocation(line: 62, column: 9, scope: !920, inlinedAt: !1269)
!1273 = !DILocation(line: 63, column: 9, scope: !932, inlinedAt: !1269)
!1274 = !DILocation(line: 64, column: 15, scope: !932, inlinedAt: !1269)
!1275 = !DILocation(line: 65, column: 5, scope: !932, inlinedAt: !1269)
!1276 = !DILocation(line: 118, column: 9, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1238, file: !1, line: 118, column: 9)
!1278 = !DILocation(line: 119, column: 15, scope: !1277)
!1279 = !DILocation(line: 121, column: 15, scope: !1277)
!1280 = !DILocation(line: 118, column: 9, scope: !1238)
!1281 = !DILocation(line: 123, column: 18, scope: !1246)
!1282 = !DILocation(line: 123, column: 9, scope: !1246)
!1283 = !DILocation(line: 123, column: 38, scope: !1246)
!1284 = !DILocation(line: 123, column: 9, scope: !1238)
!1285 = !DILocation(line: 68, column: 52, scope: !236, inlinedAt: !1244)
!1286 = !DILocation(line: 68, column: 59, scope: !236, inlinedAt: !1244)
!1287 = !DILocation(line: 68, column: 77, scope: !236, inlinedAt: !1244)
!1288 = !DILocation(line: 69, column: 5, scope: !236, inlinedAt: !1244)
!1289 = !DILocation(line: 70, column: 12, scope: !236, inlinedAt: !1244)
!1290 = !DILocation(line: 73, column: 15, scope: !269, inlinedAt: !1244)
!1291 = !DILocation(line: 74, column: 5, scope: !271, inlinedAt: !1244)
!1292 = !DILocation(line: 73, column: 9, scope: !269, inlinedAt: !1244)
!1293 = !DILocation(line: 75, column: 5, scope: !236, inlinedAt: !1244)
!1294 = !DILocation(line: 76, column: 1, scope: !236, inlinedAt: !1244)
!1295 = !DILocation(line: 61, column: 47, scope: !920, inlinedAt: !1296)
!1296 = distinct !DILocation(line: 125, column: 9, scope: !1245)
!1297 = !DILocation(line: 62, column: 17, scope: !928, inlinedAt: !1296)
!1298 = !DILocation(line: 62, column: 20, scope: !928, inlinedAt: !1296)
!1299 = !DILocation(line: 62, column: 9, scope: !920, inlinedAt: !1296)
!1300 = !DILocation(line: 63, column: 9, scope: !932, inlinedAt: !1296)
!1301 = !DILocation(line: 64, column: 15, scope: !932, inlinedAt: !1296)
!1302 = !DILocation(line: 65, column: 5, scope: !932, inlinedAt: !1296)
!1303 = !DILocation(line: 66, column: 1, scope: !920, inlinedAt: !1296)
!1304 = !DILocation(line: 129, column: 1, scope: !1238)
!1305 = !DILocation(line: 0, scope: !1238)
!1306 = distinct !DISubprogram(name: "redisContextWaitReady", scope: !1, file: !1, line: 219, type: !1307, isLocal: true, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1309)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{!34, !43, !124}
!1309 = !{!1310, !1311, !1312, !1322}
!1310 = !DILocalVariable(name: "c", arg: 1, scope: !1306, file: !1, line: 219, type: !43)
!1311 = !DILocalVariable(name: "msec", arg: 2, scope: !1306, file: !1, line: 219, type: !124)
!1312 = !DILocalVariable(name: "wfd", scope: !1306, file: !1, line: 220, type: !1313)
!1313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1314, size: 64, elements: !1320)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !18, line: 542, size: 64, elements: !1315)
!1315 = !{!1316, !1317, !1319}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1314, file: !18, line: 544, baseType: !34, size: 32)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1314, file: !18, line: 545, baseType: !1318, size: 16, offset: 32)
!1318 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1314, file: !18, line: 546, baseType: !1318, size: 16, offset: 48)
!1320 = !{!1321}
!1321 = !DISubrange(count: 1)
!1322 = !DILocalVariable(name: "res", scope: !1323, file: !1, line: 226, type: !34)
!1323 = distinct !DILexicalBlock(scope: !1324, file: !1, line: 225, column: 31)
!1324 = distinct !DILexicalBlock(scope: !1306, file: !1, line: 225, column: 9)
!1325 = !DILocation(line: 69, column: 10, scope: !236, inlinedAt: !1326)
!1326 = distinct !DILocation(line: 245, column: 5, scope: !1306)
!1327 = !DILocation(line: 69, column: 10, scope: !236, inlinedAt: !1328)
!1328 = distinct !DILocation(line: 234, column: 13, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1330, file: !1, line: 232, column: 30)
!1330 = distinct !DILexicalBlock(scope: !1331, file: !1, line: 232, column: 20)
!1331 = distinct !DILexicalBlock(scope: !1323, file: !1, line: 228, column: 13)
!1332 = !DILocation(line: 69, column: 10, scope: !236, inlinedAt: !1333)
!1333 = distinct !DILocation(line: 229, column: 13, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1331, file: !1, line: 228, column: 47)
!1335 = !DILocation(line: 219, column: 48, scope: !1306)
!1336 = !DILocation(line: 219, column: 56, scope: !1306)
!1337 = !DILocation(line: 220, column: 5, scope: !1306)
!1338 = !DILocation(line: 220, column: 21, scope: !1306)
!1339 = !DILocation(line: 222, column: 24, scope: !1306)
!1340 = !DILocation(line: 222, column: 12, scope: !1306)
!1341 = !DILocation(line: 222, column: 19, scope: !1306)
!1342 = !{!1343, !160, i64 0}
!1343 = !{!"pollfd", !160, i64 0, !1344, i64 4, !1344, i64 6}
!1344 = !{!"short", !161, i64 0}
!1345 = !DILocation(line: 223, column: 12, scope: !1306)
!1346 = !DILocation(line: 223, column: 19, scope: !1306)
!1347 = !{!1343, !1344, i64 4}
!1348 = !DILocation(line: 225, column: 9, scope: !1324)
!1349 = !DILocation(line: 225, column: 15, scope: !1324)
!1350 = !DILocation(line: 225, column: 9, scope: !1306)
!1351 = !DILocation(line: 228, column: 25, scope: !1331)
!1352 = !DILocation(line: 228, column: 33, scope: !1331)
!1353 = !DILocation(line: 228, column: 20, scope: !1331)
!1354 = !DILocation(line: 226, column: 13, scope: !1323)
!1355 = !DILocation(line: 228, column: 13, scope: !1323)
!1356 = !DILocation(line: 68, column: 52, scope: !236, inlinedAt: !1333)
!1357 = !DILocation(line: 68, column: 59, scope: !236, inlinedAt: !1333)
!1358 = !DILocation(line: 68, column: 77, scope: !236, inlinedAt: !1333)
!1359 = !DILocation(line: 69, column: 5, scope: !236, inlinedAt: !1333)
!1360 = !DILocation(line: 70, column: 12, scope: !236, inlinedAt: !1333)
!1361 = !DILocation(line: 73, column: 15, scope: !269, inlinedAt: !1333)
!1362 = !DILocation(line: 74, column: 5, scope: !271, inlinedAt: !1333)
!1363 = !DILocation(line: 73, column: 9, scope: !269, inlinedAt: !1333)
!1364 = !DILocation(line: 75, column: 5, scope: !236, inlinedAt: !1333)
!1365 = !DILocation(line: 76, column: 1, scope: !236, inlinedAt: !1333)
!1366 = !DILocation(line: 61, column: 47, scope: !920, inlinedAt: !1367)
!1367 = distinct !DILocation(line: 230, column: 13, scope: !1334)
!1368 = !DILocation(line: 62, column: 17, scope: !928, inlinedAt: !1367)
!1369 = !DILocation(line: 62, column: 20, scope: !928, inlinedAt: !1367)
!1370 = !DILocation(line: 62, column: 9, scope: !920, inlinedAt: !1367)
!1371 = !DILocation(line: 63, column: 9, scope: !932, inlinedAt: !1367)
!1372 = !DILocation(line: 64, column: 15, scope: !932, inlinedAt: !1367)
!1373 = !DILocation(line: 65, column: 5, scope: !932, inlinedAt: !1367)
!1374 = !DILocation(line: 66, column: 1, scope: !920, inlinedAt: !1367)
!1375 = !DILocation(line: 231, column: 13, scope: !1334)
!1376 = !DILocation(line: 233, column: 13, scope: !1329)
!1377 = !DILocation(line: 233, column: 19, scope: !1329)
!1378 = !DILocation(line: 68, column: 52, scope: !236, inlinedAt: !1328)
!1379 = !DILocation(line: 68, column: 59, scope: !236, inlinedAt: !1328)
!1380 = !DILocation(line: 68, column: 77, scope: !236, inlinedAt: !1328)
!1381 = !DILocation(line: 69, column: 5, scope: !236, inlinedAt: !1328)
!1382 = !DILocation(line: 70, column: 12, scope: !236, inlinedAt: !1328)
!1383 = !DILocation(line: 74, column: 5, scope: !271, inlinedAt: !1328)
!1384 = !DILocation(line: 75, column: 5, scope: !236, inlinedAt: !1328)
!1385 = !DILocation(line: 76, column: 1, scope: !236, inlinedAt: !1328)
!1386 = !DILocation(line: 61, column: 47, scope: !920, inlinedAt: !1387)
!1387 = distinct !DILocation(line: 235, column: 13, scope: !1329)
!1388 = !DILocation(line: 62, column: 17, scope: !928, inlinedAt: !1387)
!1389 = !DILocation(line: 62, column: 20, scope: !928, inlinedAt: !1387)
!1390 = !DILocation(line: 62, column: 9, scope: !920, inlinedAt: !1387)
!1391 = !DILocation(line: 63, column: 9, scope: !932, inlinedAt: !1387)
!1392 = !DILocation(line: 64, column: 15, scope: !932, inlinedAt: !1387)
!1393 = !DILocation(line: 65, column: 5, scope: !932, inlinedAt: !1387)
!1394 = !DILocation(line: 66, column: 1, scope: !920, inlinedAt: !1387)
!1395 = !DILocation(line: 236, column: 13, scope: !1329)
!1396 = !DILocation(line: 239, column: 13, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1323, file: !1, line: 239, column: 13)
!1398 = !DILocation(line: 239, column: 38, scope: !1397)
!1399 = !DILocation(line: 242, column: 9, scope: !1323)
!1400 = !DILocation(line: 68, column: 52, scope: !236, inlinedAt: !1326)
!1401 = !DILocation(line: 68, column: 59, scope: !236, inlinedAt: !1326)
!1402 = !DILocation(line: 68, column: 77, scope: !236, inlinedAt: !1326)
!1403 = !DILocation(line: 69, column: 5, scope: !236, inlinedAt: !1326)
!1404 = !DILocation(line: 70, column: 12, scope: !236, inlinedAt: !1326)
!1405 = !DILocation(line: 74, column: 5, scope: !271, inlinedAt: !1326)
!1406 = !DILocation(line: 75, column: 5, scope: !236, inlinedAt: !1326)
!1407 = !DILocation(line: 76, column: 1, scope: !236, inlinedAt: !1326)
!1408 = !DILocation(line: 61, column: 47, scope: !920, inlinedAt: !1409)
!1409 = distinct !DILocation(line: 246, column: 5, scope: !1306)
!1410 = !DILocation(line: 62, column: 17, scope: !928, inlinedAt: !1409)
!1411 = !DILocation(line: 62, column: 20, scope: !928, inlinedAt: !1409)
!1412 = !DILocation(line: 62, column: 9, scope: !920, inlinedAt: !1409)
!1413 = !DILocation(line: 63, column: 9, scope: !932, inlinedAt: !1409)
!1414 = !DILocation(line: 64, column: 15, scope: !932, inlinedAt: !1409)
!1415 = !DILocation(line: 65, column: 5, scope: !932, inlinedAt: !1409)
!1416 = !DILocation(line: 66, column: 1, scope: !920, inlinedAt: !1409)
!1417 = !DILocation(line: 247, column: 5, scope: !1306)
!1418 = !DILocation(line: 0, scope: !1306)
!1419 = !DILocation(line: 248, column: 1, scope: !1306)
