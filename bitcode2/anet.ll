; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/anet.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/anet.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.uk_thread_status_block = type { i64, i64 }
%struct.sockaddr_storage = type { i8, i8, [2 x i8], [3 x i32], [3 x i32] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.timeval = type { i64, i64 }
%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.sockaddr*, i8*, %struct.addrinfo* }
%struct.sockaddr = type { i8, i8, [14 x i8] }
%struct.sockaddr_in = type { i8, i8, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr_in6 = type { i8, i8, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct.sockaddr_un = type { i8, [108 x i8] }

@.str = private unnamed_addr constant [19 x i8] c"fcntl(F_GETFL): %s\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"fcntl(F_SETFL,O_NONBLOCK): %s\00", align 1
@_intrstack_start = external dso_local global [0 x i8], align 1
@_end = external dso_local global [0 x i8], align 1
@tsb_comp0 = external dso_local global [32 x %struct.uk_thread_status_block], align 16
@tsb_comp1 = external dso_local global [32 x %struct.uk_thread_status_block], align 16
@.str.2 = private unnamed_addr constant [28 x i8] c"setsockopt SO_KEEPALIVE: %s\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"setsockopt SO_SNDBUF: %s\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"setsockopt SO_SNDTIMEO: %s\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"connect: %s\00", align 1
@sa = internal global %struct.sockaddr_storage zeroinitializer, section ".data_shared", align 4, !dbg !0
@salen = internal global i32 28, section ".data_shared", align 4, !dbg !96
@.str.7 = private unnamed_addr constant [12 x i8] c"/unixsocket\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"[%s]:%d\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%s:%d\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"setsockopt TCP_NODELAY: %s\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"bind: %s\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"creating socket: %s\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"setsockopt SO_REUSEADDR: %s\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"unable to bind socket, errno: %d\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"setsockopt: %s\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"listen: %s\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"accept: %s\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @anetSetBlock(i8*, i32, i32) local_unnamed_addr #0 !dbg !115 {
  %4 = tail call i32 (i32, i32, ...) @fcntl(i32 %1, i32 3) #5, !dbg !126
  %5 = icmp eq i32 %4, -1, !dbg !129
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !130
  br i1 %5, label %6, label %10, !dbg !130

; <label>:6:                                      ; preds = %3
  %7 = tail call i32* @__errno() #5, !dbg !131
  %8 = load i32, i32* %7, align 4, !dbg !131, !tbaa !133
  %9 = tail call i8* @strerror(i32 %8) #5, !dbg !137
  tail call void (i8*, i8*, ...) @anetSetError(i8* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %9) #6, !dbg !138
  br label %21, !dbg !139

; <label>:10:                                     ; preds = %3
  %11 = icmp eq i32 %2, 0, !dbg !140
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !142
  %12 = or i32 %4, 16384, !dbg !143
  %13 = and i32 %4, -16385, !dbg !144
  %14 = select i1 %11, i32 %13, i32 %12, !dbg !142
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %15 = tail call i32 (i32, i32, ...) @fcntl(i32 %1, i32 4, i32 %14) #5, !dbg !145
  %16 = icmp eq i32 %15, -1, !dbg !147
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !148
  br i1 %16, label %17, label %21, !dbg !148

; <label>:17:                                     ; preds = %10
  %18 = tail call i32* @__errno() #5, !dbg !149
  %19 = load i32, i32* %18, align 4, !dbg !149, !tbaa !133
  %20 = tail call i8* @strerror(i32 %19) #5, !dbg !151
  tail call void (i8*, i8*, ...) @anetSetError(i8* %0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %20) #6, !dbg !152
  br label %21, !dbg !153

; <label>:21:                                     ; preds = %10, %17, %6
  %22 = phi i32 [ -1, %6 ], [ -1, %17 ], [ 0, %10 ], !dbg !154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !155
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !156
  ret i32 %22, !dbg !156
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i32 @fcntl(i32, i32, ...) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal void @anetSetError(i8*, i8*, ...) unnamed_addr #0 !dbg !157 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !182
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #4, !dbg !182
  %5 = icmp eq i8* %0, null, !dbg !184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !186
  br i1 %5, label %9, label %6, !dbg !186

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !187
  call void @llvm.va_start(i8* nonnull %4), !dbg !187
  %8 = call i32 @vsnprintf(i8* nonnull %0, i64 256, i8* %1, %struct.__va_list_tag* nonnull %7) #5, !dbg !188
  call void @llvm.va_end(i8* nonnull %4), !dbg !189
  br label %9, !dbg !190

; <label>:9:                                      ; preds = %2, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !191
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #4, !dbg !190
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !190
  ret void, !dbg !190
}

; Function Attrs: noredzone
declare dso_local i8* @strerror(i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local i32 @anetNonBlock(i8*, i32) local_unnamed_addr #0 !dbg !192 {
  %3 = tail call i32 @anetSetBlock(i8* %0, i32 %1, i32 1) #6, !dbg !200
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !201
  ret i32 %3, !dbg !201
}

; Function Attrs: noredzone nounwind
define dso_local i32 @anetBlock(i8*, i32) local_unnamed_addr #0 !dbg !202 {
  %3 = tail call i32 @anetSetBlock(i8* %0, i32 %1, i32 0) #6, !dbg !208
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !209
  ret i32 %3, !dbg !209
}

; Function Attrs: noredzone nounwind
define dso_local i32 @anetKeepAlive(i8*, i32, i32) local_unnamed_addr #0 !dbg !210 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = bitcast i32* %4 to i8*, !dbg !231
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #4, !dbg !231
  %7 = ptrtoint i32* %4 to i64, !dbg !232
  %8 = add i64 %7, 65536, !dbg !233
  %9 = inttoptr i64 %8 to i32*, !dbg !234
  store i32 1, i32* %9, align 4, !dbg !236, !tbaa !133
  %10 = bitcast i32* %5 to i8*, !dbg !237
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #4, !dbg !237
  %11 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !238, !srcloc !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !248
  %12 = icmp ult i64 %11, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !249
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !249
  br i1 %12, label %19, label %13, !dbg !249

; <label>:13:                                     ; preds = %3
  %14 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !250, !srcloc !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !253
  %15 = icmp ugt i64 %14, ptrtoint ([0 x i8]* @_end to i64), !dbg !249
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !254
  br i1 %15, label %19, label %16, !dbg !254

; <label>:16:                                     ; preds = %13
  %17 = inttoptr i64 %8 to i8*, !dbg !255
  %18 = call i32 @setsockopt(i32 %1, i32 4095, i32 8, i8* %17, i32 4) #5, !dbg !255
  store i32 %18, i32* %5, align 4, !dbg !255, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !255
  br label %29, !dbg !255

; <label>:19:                                     ; preds = %13, %3
  %20 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !258, !srcloc !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !268
  %21 = and i64 %20, -65536, !dbg !270
  %22 = or i64 %21, 4097, !dbg !270
  %23 = add nsw i64 %22, -1, !dbg !270
  %24 = inttoptr i64 %23 to i32*, !dbg !271
  %25 = load i32, i32* %24, align 4096, !dbg !272, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !273
  %26 = sext i32 %1 to i64, !dbg !274
  %27 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call setsockopt\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r8},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %26, i64 4095, i64 8, i64 %8, i64 4, i32 %25, i32 (i32, i32, i32, i8*, i32)* nonnull @setsockopt) #4, !dbg !274, !srcloc !275
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %5, i64 %27) #4, !dbg !276, !srcloc !279
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %28 = load i32, i32* %5, align 4, !dbg !280, !tbaa !133
  br label %29

; <label>:29:                                     ; preds = %19, %16
  %30 = phi i32 [ %28, %19 ], [ %18, %16 ], !dbg !280
  %31 = icmp eq i32 %30, -1, !dbg !282
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !283
  br i1 %31, label %32, label %36, !dbg !283

; <label>:32:                                     ; preds = %29
  %33 = call i32* @__errno() #5, !dbg !284
  %34 = load i32, i32* %33, align 4, !dbg !284, !tbaa !133
  %35 = call i8* @strerror(i32 %34) #5, !dbg !286
  call void (i8*, i8*, ...) @anetSetError(i8* %0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %35) #6, !dbg !287
  br label %36, !dbg !288

; <label>:36:                                     ; preds = %29, %32
  %37 = phi i32 [ -1, %32 ], [ 0, %29 ], !dbg !289
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !290
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #4, !dbg !291
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #4, !dbg !291
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !291
  ret i32 %37, !dbg !291
}

; Function Attrs: noredzone
declare dso_local i32 @setsockopt(i32, i32, i32, i8*, i32) #3

; Function Attrs: noredzone nounwind
define dso_local i32 @anetEnableTcpNoDelay(i8*, i32) local_unnamed_addr #0 !dbg !292 {
  %3 = tail call fastcc i32 @anetSetTcpNoDelay(i8* %0, i32 %1, i32 1) #6, !dbg !298
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !299
  ret i32 %3, !dbg !299
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @anetSetTcpNoDelay(i8*, i32, i32) unnamed_addr #0 !dbg !300 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = bitcast i32* %4 to i8*, !dbg !321
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #4, !dbg !321
  %7 = ptrtoint i32* %4 to i64, !dbg !322
  %8 = add i64 %7, 65536, !dbg !323
  %9 = inttoptr i64 %8 to i32*, !dbg !324
  store i32 %2, i32* %9, align 4, !dbg !326, !tbaa !133
  %10 = bitcast i32* %5 to i8*, !dbg !327
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #4, !dbg !327
  %11 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !328, !srcloc !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !331
  %12 = icmp ult i64 %11, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !332
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !332
  br i1 %12, label %19, label %13, !dbg !332

; <label>:13:                                     ; preds = %3
  %14 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !333, !srcloc !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !336
  %15 = icmp ugt i64 %14, ptrtoint ([0 x i8]* @_end to i64), !dbg !332
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !337
  br i1 %15, label %19, label %16, !dbg !337

; <label>:16:                                     ; preds = %13
  %17 = inttoptr i64 %8 to i8*, !dbg !338
  %18 = call i32 @setsockopt(i32 %1, i32 6, i32 1, i8* %17, i32 4) #5, !dbg !338
  store i32 %18, i32* %5, align 4, !dbg !338, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !338
  br label %29, !dbg !338

; <label>:19:                                     ; preds = %13, %3
  %20 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !341, !srcloc !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !345
  %21 = and i64 %20, -65536, !dbg !347
  %22 = or i64 %21, 4097, !dbg !347
  %23 = add nsw i64 %22, -1, !dbg !347
  %24 = inttoptr i64 %23 to i32*, !dbg !348
  %25 = load i32, i32* %24, align 4096, !dbg !349, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !350
  %26 = sext i32 %1 to i64, !dbg !351
  %27 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call setsockopt\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r8},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %26, i64 6, i64 1, i64 %8, i64 4, i32 %25, i32 (i32, i32, i32, i8*, i32)* nonnull @setsockopt) #4, !dbg !351, !srcloc !352
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %5, i64 %27) #4, !dbg !353, !srcloc !356
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %28 = load i32, i32* %5, align 4, !dbg !357, !tbaa !133
  br label %29

; <label>:29:                                     ; preds = %19, %16
  %30 = phi i32 [ %28, %19 ], [ %18, %16 ], !dbg !357
  %31 = icmp eq i32 %30, -1, !dbg !359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !360
  br i1 %31, label %32, label %36, !dbg !360

; <label>:32:                                     ; preds = %29
  %33 = call i32* @__errno() #5, !dbg !361
  %34 = load i32, i32* %33, align 4, !dbg !361, !tbaa !133
  %35 = call i8* @strerror(i32 %34) #5, !dbg !363
  call void (i8*, i8*, ...) @anetSetError(i8* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i8* %35) #6, !dbg !364
  br label %36, !dbg !365

; <label>:36:                                     ; preds = %29, %32
  %37 = phi i32 [ -1, %32 ], [ 0, %29 ], !dbg !366
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !367
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #4, !dbg !368
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #4, !dbg !368
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !368
  ret i32 %37, !dbg !368
}

; Function Attrs: noredzone nounwind
define dso_local i32 @anetDisableTcpNoDelay(i8*, i32) local_unnamed_addr #0 !dbg !369 {
  %3 = tail call fastcc i32 @anetSetTcpNoDelay(i8* %0, i32 %1, i32 0) #6, !dbg !375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !376
  ret i32 %3, !dbg !376
}

; Function Attrs: noredzone nounwind
define dso_local i32 @anetSetSendBuffer(i8*, i32, i32) local_unnamed_addr #0 !dbg !377 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %2, i32* %4, align 4, !tbaa !133
  %6 = bitcast i32* %5 to i8*, !dbg !396
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #4, !dbg !396
  %7 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !397, !srcloc !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !400
  %8 = icmp ult i64 %7, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !401
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !401
  br i1 %8, label %15, label %9, !dbg !401

; <label>:9:                                      ; preds = %3
  %10 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !402, !srcloc !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !405
  %11 = icmp ugt i64 %10, ptrtoint ([0 x i8]* @_end to i64), !dbg !401
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !406
  br i1 %11, label %15, label %12, !dbg !406

; <label>:12:                                     ; preds = %9
  %13 = bitcast i32* %4 to i8*, !dbg !407
  %14 = call i32 @setsockopt(i32 %1, i32 4095, i32 4097, i8* nonnull %13, i32 4) #5, !dbg !407
  store i32 %14, i32* %5, align 4, !dbg !407, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !407
  br label %26, !dbg !407

; <label>:15:                                     ; preds = %9, %3
  %16 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !410, !srcloc !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !414
  %17 = and i64 %16, -65536, !dbg !416
  %18 = or i64 %17, 4097, !dbg !416
  %19 = add nsw i64 %18, -1, !dbg !416
  %20 = inttoptr i64 %19 to i32*, !dbg !417
  %21 = load i32, i32* %20, align 4096, !dbg !418, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !419
  %22 = ptrtoint i32* %4 to i64, !dbg !420
  %23 = sext i32 %1 to i64, !dbg !420
  %24 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call setsockopt\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r8},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %23, i64 4095, i64 4097, i64 %22, i64 4, i32 %21, i32 (i32, i32, i32, i8*, i32)* nonnull @setsockopt) #4, !dbg !420, !srcloc !421
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %5, i64 %24) #4, !dbg !422, !srcloc !425
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %25 = load i32, i32* %5, align 4, !dbg !426, !tbaa !133
  br label %26

; <label>:26:                                     ; preds = %15, %12
  %27 = phi i32 [ %25, %15 ], [ %14, %12 ], !dbg !426
  %28 = icmp eq i32 %27, -1, !dbg !428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !429
  br i1 %28, label %29, label %33, !dbg !429

; <label>:29:                                     ; preds = %26
  %30 = call i32* @__errno() #5, !dbg !430
  %31 = load i32, i32* %30, align 4, !dbg !430, !tbaa !133
  %32 = call i8* @strerror(i32 %31) #5, !dbg !432
  call void (i8*, i8*, ...) @anetSetError(i8* %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %32) #6, !dbg !433
  br label %33, !dbg !434

; <label>:33:                                     ; preds = %26, %29
  %34 = phi i32 [ -1, %29 ], [ 0, %26 ], !dbg !435
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !436
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #4, !dbg !437
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !437
  ret i32 %34, !dbg !437
}

; Function Attrs: noredzone nounwind
define dso_local i32 @anetTcpKeepAlive(i8*, i32) local_unnamed_addr #0 !dbg !438 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = bitcast i32* %3 to i8*, !dbg !456
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #4, !dbg !456
  store i32 1, i32* %3, align 4, !dbg !457, !tbaa !133
  %6 = bitcast i32* %4 to i8*, !dbg !458
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #4, !dbg !458
  %7 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !459, !srcloc !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !462
  %8 = icmp ult i64 %7, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !463
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !463
  br i1 %8, label %14, label %9, !dbg !463

; <label>:9:                                      ; preds = %2
  %10 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !464, !srcloc !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !467
  %11 = icmp ugt i64 %10, ptrtoint ([0 x i8]* @_end to i64), !dbg !463
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !468
  br i1 %11, label %14, label %12, !dbg !468

; <label>:12:                                     ; preds = %9
  %13 = call i32 @setsockopt(i32 %1, i32 4095, i32 8, i8* nonnull %5, i32 4) #5, !dbg !469
  store i32 %13, i32* %4, align 4, !dbg !469, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !469
  br label %25, !dbg !469

; <label>:14:                                     ; preds = %9, %2
  %15 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !472, !srcloc !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !476
  %16 = and i64 %15, -65536, !dbg !478
  %17 = or i64 %16, 4097, !dbg !478
  %18 = add nsw i64 %17, -1, !dbg !478
  %19 = inttoptr i64 %18 to i32*, !dbg !479
  %20 = load i32, i32* %19, align 4096, !dbg !480, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !481
  %21 = ptrtoint i32* %3 to i64, !dbg !482
  %22 = sext i32 %1 to i64, !dbg !482
  %23 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call setsockopt\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r8},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %22, i64 4095, i64 8, i64 %21, i64 4, i32 %20, i32 (i32, i32, i32, i8*, i32)* nonnull @setsockopt) #4, !dbg !482, !srcloc !483
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %4, i64 %23) #4, !dbg !484, !srcloc !487
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %24 = load i32, i32* %4, align 4, !dbg !488, !tbaa !133
  br label %25

; <label>:25:                                     ; preds = %14, %12
  %26 = phi i32 [ %24, %14 ], [ %13, %12 ], !dbg !488
  %27 = icmp eq i32 %26, -1, !dbg !490
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !491
  br i1 %27, label %28, label %32, !dbg !491

; <label>:28:                                     ; preds = %25
  %29 = call i32* @__errno() #5, !dbg !492
  %30 = load i32, i32* %29, align 4, !dbg !492, !tbaa !133
  %31 = call i8* @strerror(i32 %30) #5, !dbg !494
  call void (i8*, i8*, ...) @anetSetError(i8* %0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %31) #6, !dbg !495
  br label %32, !dbg !496

; <label>:32:                                     ; preds = %25, %28
  %33 = phi i32 [ -1, %28 ], [ 0, %25 ], !dbg !497
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !498
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #4, !dbg !499
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #4, !dbg !499
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !499
  ret i32 %33, !dbg !499
}

; Function Attrs: noredzone nounwind
define dso_local i32 @anetSendTimeout(i8*, i32, i64) local_unnamed_addr #0 !dbg !500 {
  %4 = alloca %struct.timeval, align 8
  %5 = alloca i32, align 4
  %6 = bitcast %struct.timeval* %4 to i8*, !dbg !531
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #4, !dbg !531
  %7 = sdiv i64 %2, 1000, !dbg !532
  %8 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i64 0, i32 0, !dbg !533
  store i64 %7, i64* %8, align 8, !dbg !534, !tbaa !535
  %9 = srem i64 %2, 1000, !dbg !538
  %10 = mul nsw i64 %9, 1000, !dbg !539
  %11 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i64 0, i32 1, !dbg !540
  store i64 %10, i64* %11, align 8, !dbg !541, !tbaa !542
  %12 = bitcast i32* %5 to i8*, !dbg !543
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #4, !dbg !543
  %13 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !544, !srcloc !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !547
  %14 = icmp ult i64 %13, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !548
  br i1 %14, label %20, label %15, !dbg !548

; <label>:15:                                     ; preds = %3
  %16 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !549, !srcloc !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !552
  %17 = icmp ugt i64 %16, ptrtoint ([0 x i8]* @_end to i64), !dbg !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !553
  br i1 %17, label %20, label %18, !dbg !553

; <label>:18:                                     ; preds = %15
  %19 = call i32 @setsockopt(i32 %1, i32 4095, i32 4101, i8* nonnull %6, i32 16) #5, !dbg !554
  store i32 %19, i32* %5, align 4, !dbg !554, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !554
  br label %31, !dbg !554

; <label>:20:                                     ; preds = %15, %3
  %21 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !557, !srcloc !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !561
  %22 = and i64 %21, -65536, !dbg !563
  %23 = or i64 %22, 4097, !dbg !563
  %24 = add nsw i64 %23, -1, !dbg !563
  %25 = inttoptr i64 %24 to i32*, !dbg !564
  %26 = load i32, i32* %25, align 4096, !dbg !565, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !566
  %27 = ptrtoint %struct.timeval* %4 to i64, !dbg !567
  %28 = sext i32 %1 to i64, !dbg !567
  %29 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call setsockopt\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r8},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %28, i64 4095, i64 4101, i64 %27, i64 16, i32 %26, i32 (i32, i32, i32, i8*, i32)* nonnull @setsockopt) #4, !dbg !567, !srcloc !568
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %5, i64 %29) #4, !dbg !569, !srcloc !572
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %30 = load i32, i32* %5, align 4, !dbg !573, !tbaa !133
  br label %31

; <label>:31:                                     ; preds = %20, %18
  %32 = phi i32 [ %30, %20 ], [ %19, %18 ], !dbg !573
  %33 = icmp eq i32 %32, -1, !dbg !575
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !576
  br i1 %33, label %34, label %38, !dbg !576

; <label>:34:                                     ; preds = %31
  %35 = call i32* @__errno() #5, !dbg !577
  %36 = load i32, i32* %35, align 4, !dbg !577, !tbaa !133
  %37 = call i8* @strerror(i32 %36) #5, !dbg !579
  call void (i8*, i8*, ...) @anetSetError(i8* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %37) #6, !dbg !580
  br label %38, !dbg !581

; <label>:38:                                     ; preds = %31, %34
  %39 = phi i32 [ -1, %34 ], [ 0, %31 ], !dbg !582
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !583
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #4, !dbg !584
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #4, !dbg !584
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !584
  ret i32 %39, !dbg !584
}

; Function Attrs: noredzone nounwind
define dso_local i32 @anetGenericResolve(i8*, i8*, i8*, i64, i32) local_unnamed_addr #0 !dbg !585 {
  %6 = alloca %struct.addrinfo, align 8
  %7 = alloca %struct.addrinfo*, align 8
  %8 = alloca i32, align 4
  %9 = bitcast %struct.addrinfo* %6 to i8*, !dbg !620
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %9) #4, !dbg !620
  %10 = bitcast %struct.addrinfo** %7 to i8*, !dbg !620
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #4, !dbg !620
  %11 = bitcast i32* %8 to i8*, !dbg !621
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #4, !dbg !621
  %12 = call i8* @memset(i8* nonnull %9, i32 0, i64 48) #5, !dbg !622
  %13 = and i32 %4, 1, !dbg !623
  %14 = icmp eq i32 %13, 0, !dbg !623
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !625
  br i1 %14, label %17, label %15, !dbg !625

; <label>:15:                                     ; preds = %5
  %16 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i64 0, i32 0, !dbg !626
  store i32 4, i32* %16, align 8, !dbg !627, !tbaa !628
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !631
  br label %17, !dbg !631

; <label>:17:                                     ; preds = %5, %15
  %18 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i64 0, i32 1, !dbg !632
  store i32 0, i32* %18, align 4, !dbg !633, !tbaa !634
  %19 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i64 0, i32 2, !dbg !635
  store i32 1, i32* %19, align 8, !dbg !636, !tbaa !637
  %20 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !638, !srcloc !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !641
  %21 = icmp ult i64 %20, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !642
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !642
  br i1 %21, label %27, label %22, !dbg !642

; <label>:22:                                     ; preds = %17
  %23 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !643, !srcloc !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !646
  %24 = icmp ugt i64 %23, ptrtoint ([0 x i8]* @_end to i64), !dbg !642
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !647
  br i1 %24, label %27, label %25, !dbg !647

; <label>:25:                                     ; preds = %22
  %26 = call i32 @getaddrinfo(i8* %1, i8* null, %struct.addrinfo* nonnull %6, %struct.addrinfo** nonnull %7) #5, !dbg !650
  store i32 %26, i32* %8, align 4, !dbg !650, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !650
  br label %39, !dbg !650

; <label>:27:                                     ; preds = %22, %17
  %28 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !653, !srcloc !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !657
  %29 = and i64 %28, -65536, !dbg !659
  %30 = or i64 %29, 4097, !dbg !659
  %31 = add nsw i64 %30, -1, !dbg !659
  %32 = inttoptr i64 %31 to i32*, !dbg !660
  %33 = load i32, i32* %32, align 4096, !dbg !661, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !662
  %34 = ptrtoint %struct.addrinfo* %6 to i64, !dbg !663
  %35 = ptrtoint %struct.addrinfo** %7 to i64, !dbg !663
  %36 = ptrtoint i8* %1 to i64, !dbg !663
  %37 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call getaddrinfo\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %36, i64 0, i64 %34, i64 %35, i32 %33, i32 (i8*, i8*, %struct.addrinfo*, %struct.addrinfo**)* nonnull @getaddrinfo) #4, !dbg !663, !srcloc !664
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %8, i64 %37) #4, !dbg !665, !srcloc !668
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %38 = load i32, i32* %8, align 4, !dbg !669, !tbaa !133
  br label %39

; <label>:39:                                     ; preds = %27, %25
  %40 = phi i32 [ %38, %27 ], [ %26, %25 ], !dbg !669
  %41 = icmp eq i32 %40, 0, !dbg !671
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !672
  br i1 %41, label %44, label %42, !dbg !672

; <label>:42:                                     ; preds = %39
  %43 = call i8* @gai_strerror(i32 %40) #5, !dbg !673
  call void (i8*, i8*, ...) @anetSetError(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %43) #6, !dbg !675
  br label %66, !dbg !676

; <label>:44:                                     ; preds = %39
  %45 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8, !dbg !677, !tbaa !678
  %46 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %45, i64 0, i32 1, !dbg !679
  %47 = load i32, i32* %46, align 4, !dbg !679, !tbaa !634
  %48 = icmp eq i32 %47, 2, !dbg !680
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !681
  %49 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %45, i64 0, i32 5, !dbg !682
  br i1 %48, label %50, label %57, !dbg !681

; <label>:50:                                     ; preds = %44
  %51 = bitcast %struct.sockaddr** %49 to %struct.sockaddr_in**, !dbg !683
  %52 = load %struct.sockaddr_in*, %struct.sockaddr_in** %51, align 8, !dbg !683, !tbaa !684
  %53 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %52, i64 0, i32 3, !dbg !686
  %54 = bitcast %struct.in_addr* %53 to i8*, !dbg !687
  %55 = trunc i64 %3 to i32, !dbg !688
  %56 = call i8* @inet_ntop(i32 2, i8* nonnull %54, i8* %2, i32 %55) #5, !dbg !689
  br label %64, !dbg !690

; <label>:57:                                     ; preds = %44
  %58 = bitcast %struct.sockaddr** %49 to %struct.sockaddr_in6**, !dbg !691
  %59 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %58, align 8, !dbg !691, !tbaa !684
  %60 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %59, i64 0, i32 4, !dbg !693
  %61 = bitcast %struct.in6_addr* %60 to i8*, !dbg !694
  %62 = trunc i64 %3 to i32, !dbg !695
  %63 = call i8* @inet_ntop(i32 10, i8* nonnull %61, i8* %2, i32 %62) #5, !dbg !696
  br label %64

; <label>:64:                                     ; preds = %57, %50
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %65 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8, !dbg !697, !tbaa !678
  call void @freeaddrinfo(%struct.addrinfo* %65) #5, !dbg !698
  br label %66, !dbg !699

; <label>:66:                                     ; preds = %64, %42
  %67 = phi i32 [ -1, %42 ], [ 0, %64 ], !dbg !700
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !701
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #4, !dbg !702
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #4, !dbg !702
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %9) #4, !dbg !702
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !702
  ret i32 %67, !dbg !702
}

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #3

; Function Attrs: noredzone
declare dso_local i8* @gai_strerror(i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @inet_ntop(i32, i8*, i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @freeaddrinfo(%struct.addrinfo*) #3

; Function Attrs: noredzone nounwind
define dso_local i32 @anetResolve(i8*, i8*, i8*, i64) local_unnamed_addr #0 !dbg !703 {
  %5 = tail call i32 @anetGenericResolve(i8* %0, i8* %1, i8* %2, i64 %3, i32 0) #6, !dbg !715
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !716
  ret i32 %5, !dbg !716
}

; Function Attrs: noredzone nounwind
define dso_local i32 @anetResolveIP(i8*, i8*, i8*, i64) local_unnamed_addr #0 !dbg !717 {
  %5 = tail call i32 @anetGenericResolve(i8* %0, i8* %1, i8* %2, i64 %3, i32 1) #6, !dbg !727
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !728
  ret i32 %5, !dbg !728
}

; Function Attrs: noredzone nounwind
define dso_local i32 @anetTcpConnect(i8*, i8*, i32) local_unnamed_addr #0 !dbg !729 {
  %4 = tail call fastcc i32 @anetTcpGenericConnect(i8* %0, i8* %1, i32 %2, i8* null, i32 0) #6, !dbg !739
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !740
  ret i32 %4, !dbg !740
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @anetTcpGenericConnect(i8*, i8*, i32, i8*, i32) unnamed_addr #0 !dbg !741 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [6 x i8], align 1
  %9 = alloca %struct.addrinfo, align 8
  %10 = alloca %struct.addrinfo*, align 8
  %11 = alloca %struct.addrinfo*, align 8
  %12 = bitcast i32* %6 to i8*, !dbg !798
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #4, !dbg !798
  store i32 -1, i32* %6, align 4, !dbg !799, !tbaa !133
  %13 = bitcast i32* %7 to i8*, !dbg !798
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13) #4, !dbg !798
  %14 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0, !dbg !800
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %14) #4, !dbg !800
  %15 = bitcast %struct.addrinfo* %9 to i8*, !dbg !802
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %15) #4, !dbg !802
  %16 = bitcast %struct.addrinfo** %10 to i8*, !dbg !802
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #4, !dbg !802
  %17 = bitcast %struct.addrinfo** %11 to i8*, !dbg !802
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %17) #4, !dbg !802
  %18 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %14, i64 6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32 %2) #5, !dbg !803
  %19 = call i8* @memset(i8* nonnull %15, i32 0, i64 48) #5, !dbg !804
  %20 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %9, i64 0, i32 1, !dbg !805
  store i32 0, i32* %20, align 4, !dbg !806, !tbaa !634
  %21 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %9, i64 0, i32 2, !dbg !807
  store i32 1, i32* %21, align 8, !dbg !808, !tbaa !637
  %22 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !809, !srcloc !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !812
  %23 = icmp ult i64 %22, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !813
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !813
  br i1 %23, label %29, label %24, !dbg !813

; <label>:24:                                     ; preds = %5
  %25 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !814, !srcloc !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !817
  %26 = icmp ugt i64 %25, ptrtoint ([0 x i8]* @_end to i64), !dbg !813
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !818
  br i1 %26, label %29, label %27, !dbg !818

; <label>:27:                                     ; preds = %24
  %28 = call i32 @getaddrinfo(i8* %1, i8* nonnull %14, %struct.addrinfo* nonnull %9, %struct.addrinfo** nonnull %10) #5, !dbg !821
  store i32 %28, i32* %7, align 4, !dbg !821, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !821
  br label %42, !dbg !821

; <label>:29:                                     ; preds = %24, %5
  %30 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !824, !srcloc !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !828
  %31 = and i64 %30, -65536, !dbg !830
  %32 = or i64 %31, 4097, !dbg !830
  %33 = add nsw i64 %32, -1, !dbg !830
  %34 = inttoptr i64 %33 to i32*, !dbg !831
  %35 = load i32, i32* %34, align 4096, !dbg !832, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !833
  %36 = ptrtoint %struct.addrinfo* %9 to i64, !dbg !834
  %37 = ptrtoint %struct.addrinfo** %10 to i64, !dbg !834
  %38 = ptrtoint i8* %1 to i64, !dbg !834
  %39 = ptrtoint [6 x i8]* %8 to i64, !dbg !834
  %40 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call getaddrinfo\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %38, i64 %39, i64 %36, i64 %37, i32 %35, i32 (i8*, i8*, %struct.addrinfo*, %struct.addrinfo**)* nonnull @getaddrinfo) #4, !dbg !834, !srcloc !835
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %7, i64 %40) #4, !dbg !836, !srcloc !839
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %41 = load i32, i32* %7, align 4, !dbg !840, !tbaa !133
  br label %42

; <label>:42:                                     ; preds = %29, %27
  %43 = phi i32 [ %41, %29 ], [ %28, %27 ], !dbg !840
  %44 = icmp eq i32 %43, 0, !dbg !842
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !843
  br i1 %44, label %47, label %45, !dbg !843

; <label>:45:                                     ; preds = %42
  %46 = call i8* @gai_strerror(i32 %43) #5, !dbg !844
  call void (i8*, i8*, ...) @anetSetError(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %46) #6, !dbg !846
  br label %190, !dbg !847

; <label>:47:                                     ; preds = %42
  %48 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8, !dbg !848, !tbaa !678
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !850
  %49 = icmp eq %struct.addrinfo* %48, null, !dbg !851
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !852
  br i1 %49, label %170, label %50, !dbg !852

; <label>:50:                                     ; preds = %47
  %51 = and i32 %4, 1
  %52 = icmp ne i32 %51, 0
  %53 = icmp eq i8* %3, null
  %54 = ptrtoint %struct.addrinfo* %9 to i64
  %55 = ptrtoint %struct.addrinfo** %11 to i64
  %56 = ptrtoint i8* %3 to i64
  br label %57, !dbg !852

; <label>:57:                                     ; preds = %50, %166
  %58 = phi %struct.addrinfo* [ %48, %50 ], [ %168, %166 ]
  %59 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !853, !srcloc !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !856
  %60 = icmp ult i64 %59, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !857
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !857
  br i1 %60, label %72, label %61, !dbg !857

; <label>:61:                                     ; preds = %57
  %62 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !858, !srcloc !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !861
  %63 = icmp ugt i64 %62, ptrtoint ([0 x i8]* @_end to i64), !dbg !857
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !862
  br i1 %63, label %72, label %64, !dbg !862

; <label>:64:                                     ; preds = %61
  %65 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %58, i64 0, i32 1, !dbg !863
  %66 = load i32, i32* %65, align 4, !dbg !863, !tbaa !634
  %67 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %58, i64 0, i32 2, !dbg !863
  %68 = load i32, i32* %67, align 8, !dbg !863, !tbaa !637
  %69 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %58, i64 0, i32 3, !dbg !863
  %70 = load i32, i32* %69, align 4, !dbg !863, !tbaa !865
  %71 = call i32 @socket(i32 %66, i32 %68, i32 %70) #5, !dbg !863
  store i32 %71, i32* %6, align 4, !dbg !863, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !863
  br label %90, !dbg !863

; <label>:72:                                     ; preds = %61, %57
  %73 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !866, !srcloc !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !870
  %74 = and i64 %73, -65536, !dbg !872
  %75 = or i64 %74, 4097, !dbg !872
  %76 = add nsw i64 %75, -1, !dbg !872
  %77 = inttoptr i64 %76 to i32*, !dbg !873
  %78 = load i32, i32* %77, align 4096, !dbg !874, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !875
  %79 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %58, i64 0, i32 3, !dbg !876
  %80 = load i32, i32* %79, align 4, !dbg !876, !tbaa !865
  %81 = sext i32 %80 to i64, !dbg !876
  %82 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %58, i64 0, i32 1, !dbg !876
  %83 = load i32, i32* %82, align 4, !dbg !876, !tbaa !634
  %84 = sext i32 %83 to i64, !dbg !876
  %85 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %58, i64 0, i32 2, !dbg !876
  %86 = load i32, i32* %85, align 8, !dbg !876, !tbaa !637
  %87 = sext i32 %86 to i64, !dbg !876
  %88 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call socket\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %84, i64 %87, i64 %81, i32 %78, i32 (i32, i32, i32)* nonnull @socket) #4, !dbg !876, !srcloc !877
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %6, i64 %88) #4, !dbg !878, !srcloc !881
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %89 = load i32, i32* %6, align 4, !dbg !882, !tbaa !133
  br label %90

; <label>:90:                                     ; preds = %72, %64
  %91 = phi i32 [ %89, %72 ], [ %71, %64 ], !dbg !882
  %92 = icmp eq i32 %91, -1, !dbg !884
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !885
  br i1 %92, label %166, label %93, !dbg !885

; <label>:93:                                     ; preds = %90
  %94 = call fastcc i32 @anetSetReuseAddr(i8* %0, i32 %91) #6, !dbg !886
  %95 = icmp eq i32 %94, -1, !dbg !888
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !889
  br i1 %95, label %174, label %96, !dbg !889

; <label>:96:                                     ; preds = %93
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !890
  br i1 %52, label %97, label %101, !dbg !890

; <label>:97:                                     ; preds = %96
  %98 = load i32, i32* %6, align 4, !dbg !892, !tbaa !133
  %99 = call i32 @anetSetBlock(i8* %0, i32 %98, i32 1) #5, !dbg !896
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !897
  %100 = icmp eq i32 %99, 0, !dbg !898
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !899
  br i1 %100, label %101, label %174, !dbg !899

; <label>:101:                                    ; preds = %97, %96
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !900
  br i1 %53, label %150, label %102, !dbg !900

; <label>:102:                                    ; preds = %101
  %103 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !902, !srcloc !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !905
  %104 = icmp ult i64 %103, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !906
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !906
  br i1 %104, label %110, label %105, !dbg !906

; <label>:105:                                    ; preds = %102
  %106 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !907, !srcloc !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !910
  %107 = icmp ugt i64 %106, ptrtoint ([0 x i8]* @_end to i64), !dbg !906
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !911
  br i1 %107, label %110, label %108, !dbg !911

; <label>:108:                                    ; preds = %105
  %109 = call i32 @getaddrinfo(i8* nonnull %3, i8* null, %struct.addrinfo* nonnull %9, %struct.addrinfo** nonnull %11) #5, !dbg !913
  store i32 %109, i32* %7, align 4, !dbg !913, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !913
  br label %119, !dbg !913

; <label>:110:                                    ; preds = %105, %102
  %111 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !915, !srcloc !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !919
  %112 = and i64 %111, -65536, !dbg !921
  %113 = or i64 %112, 4097, !dbg !921
  %114 = add nsw i64 %113, -1, !dbg !921
  %115 = inttoptr i64 %114 to i32*, !dbg !922
  %116 = load i32, i32* %115, align 4096, !dbg !923, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !924
  %117 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call getaddrinfo\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %56, i64 0, i64 %54, i64 %55, i32 %116, i32 (i8*, i8*, %struct.addrinfo*, %struct.addrinfo**)* nonnull @getaddrinfo) #4, !dbg !925, !srcloc !926
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %7, i64 %117) #4, !dbg !927, !srcloc !930
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %118 = load i32, i32* %7, align 4, !dbg !931, !tbaa !133
  br label %119

; <label>:119:                                    ; preds = %110, %108
  %120 = phi i32 [ %118, %110 ], [ %109, %108 ], !dbg !931
  %121 = icmp eq i32 %120, 0, !dbg !933
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !934
  br i1 %121, label %124, label %122, !dbg !934

; <label>:122:                                    ; preds = %119
  %123 = call i8* @gai_strerror(i32 %120) #5, !dbg !935
  call void (i8*, i8*, ...) @anetSetError(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %123) #6, !dbg !937
  br label %147, !dbg !938

; <label>:124:                                    ; preds = %119
  %125 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8, !dbg !939, !tbaa !678
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !942
  %126 = icmp eq %struct.addrinfo* %125, null, !dbg !943
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !945
  br i1 %126, label %142, label %127, !dbg !945

; <label>:127:                                    ; preds = %124, %136
  %128 = phi %struct.addrinfo* [ %138, %136 ], [ %125, %124 ]
  %129 = load i32, i32* %6, align 4, !dbg !946, !tbaa !133
  %130 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %128, i64 0, i32 5, !dbg !949
  %131 = load %struct.sockaddr*, %struct.sockaddr** %130, align 8, !dbg !949, !tbaa !684
  %132 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %128, i64 0, i32 4, !dbg !950
  %133 = load i32, i32* %132, align 8, !dbg !950, !tbaa !951
  %134 = call i32 @bind(i32 %129, %struct.sockaddr* %131, i32 %133) #5, !dbg !952
  %135 = icmp eq i32 %134, -1, !dbg !953
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !954
  br i1 %135, label %136, label %148, !dbg !954

; <label>:136:                                    ; preds = %127
  %137 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %128, i64 0, i32 7, !dbg !955
  %138 = load %struct.addrinfo*, %struct.addrinfo** %137, align 8, !dbg !955, !tbaa !956
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !957
  %139 = icmp eq %struct.addrinfo* %138, null, !dbg !943
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !945
  br i1 %139, label %140, label %127, !dbg !945, !llvm.loop !958

; <label>:140:                                    ; preds = %136
  %141 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8, !dbg !960, !tbaa !678
  br label %142, !dbg !960

; <label>:142:                                    ; preds = %124, %140
  %143 = phi %struct.addrinfo* [ %141, %140 ], [ null, %124 ], !dbg !960
  call void @freeaddrinfo(%struct.addrinfo* %143) #5, !dbg !961
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !962
  %144 = call i32* @__errno() #5, !dbg !963
  %145 = load i32, i32* %144, align 4, !dbg !963, !tbaa !133
  %146 = call i8* @strerror(i32 %145) #5, !dbg !966
  call void (i8*, i8*, ...) @anetSetError(i8* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* %146) #6, !dbg !967
  br label %147, !dbg !968

; <label>:147:                                    ; preds = %122, %142
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !969
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %174

; <label>:148:                                    ; preds = %127
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !970
  %149 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8, !dbg !960, !tbaa !678
  call void @freeaddrinfo(%struct.addrinfo* %149) #5, !dbg !961
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !962
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !972
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %150

; <label>:150:                                    ; preds = %148, %101
  %151 = load i32, i32* %6, align 4, !dbg !973, !tbaa !133
  %152 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %58, i64 0, i32 5, !dbg !975
  %153 = load %struct.sockaddr*, %struct.sockaddr** %152, align 8, !dbg !975, !tbaa !684
  %154 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %58, i64 0, i32 4, !dbg !976
  %155 = load i32, i32* %154, align 8, !dbg !976, !tbaa !951
  %156 = call i32 @connect(i32 %151, %struct.sockaddr* %153, i32 %155) #5, !dbg !977
  %157 = icmp eq i32 %156, -1, !dbg !978
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !979
  br i1 %157, label %158, label %179, !dbg !979

; <label>:158:                                    ; preds = %150
  %159 = call i32* @__errno() #5, !dbg !980
  %160 = load i32, i32* %159, align 4, !dbg !980, !tbaa !133
  %161 = icmp eq i32 %160, 119, !dbg !983
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !984
  br i1 %161, label %162, label %163, !dbg !984

; <label>:162:                                    ; preds = %158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !985
  br i1 %52, label %179, label %163, !dbg !985

; <label>:163:                                    ; preds = %162, %158
  %164 = load i32, i32* %6, align 4, !dbg !986, !tbaa !133
  %165 = call i32 @close(i32 %164) #5, !dbg !987
  store i32 -1, i32* %6, align 4, !dbg !988, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !989
  br label %166, !dbg !989

; <label>:166:                                    ; preds = %90, %163
  %167 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %58, i64 0, i32 7, !dbg !990
  %168 = load %struct.addrinfo*, %struct.addrinfo** %167, align 8, !dbg !990, !tbaa !956
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !991
  %169 = icmp eq %struct.addrinfo* %168, null, !dbg !851
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !852
  br i1 %169, label %170, label %57, !dbg !852, !llvm.loop !992

; <label>:170:                                    ; preds = %166, %47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !994
  %171 = call i32* @__errno() #5, !dbg !995
  %172 = load i32, i32* %171, align 4, !dbg !995, !tbaa !133
  %173 = call i8* @strerror(i32 %172) #5, !dbg !997
  call void (i8*, i8*, ...) @anetSetError(i8* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i8* %173) #6, !dbg !998
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !998
  br label %174, !dbg !998

; <label>:174:                                    ; preds = %97, %93, %147, %170
  %175 = load i32, i32* %6, align 4, !dbg !999, !tbaa !133
  %176 = icmp eq i32 %175, -1, !dbg !1001
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1002
  br i1 %176, label %179, label %177, !dbg !1002

; <label>:177:                                    ; preds = %174
  %178 = call i32 @close(i32 %175) #5, !dbg !1003
  store i32 -1, i32* %6, align 4, !dbg !1005, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1006
  br label %179, !dbg !1006

; <label>:179:                                    ; preds = %150, %162, %174, %177
  %180 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8, !dbg !1007, !tbaa !678
  call void @freeaddrinfo(%struct.addrinfo* %180) #5, !dbg !1008
  %181 = load i32, i32* %6, align 4, !dbg !1009, !tbaa !133
  %182 = icmp eq i32 %181, -1, !dbg !1011
  %183 = icmp ne i8* %3, null, !dbg !1012
  %184 = and i1 %183, %182, !dbg !1013
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1013
  br i1 %184, label %185, label %190, !dbg !1013

; <label>:185:                                    ; preds = %179
  %186 = and i32 %4, 2, !dbg !1014
  %187 = icmp eq i32 %186, 0, !dbg !1014
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1015
  br i1 %187, label %190, label %188, !dbg !1015

; <label>:188:                                    ; preds = %185
  %189 = call fastcc i32 @anetTcpGenericConnect(i8* %0, i8* %1, i32 %2, i8* null, i32 %4) #6, !dbg !1016
  br label %190, !dbg !1018

; <label>:190:                                    ; preds = %179, %185, %188, %45
  %191 = phi i32 [ -1, %45 ], [ %189, %188 ], [ %181, %185 ], [ %181, %179 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1019
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #4, !dbg !1020
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #4, !dbg !1020
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %15) #4, !dbg !1020
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %14) #4, !dbg !1020
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #4, !dbg !1020
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #4, !dbg !1020
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1020
  ret i32 %191, !dbg !1020
}

; Function Attrs: noredzone nounwind
define dso_local i32 @anetTcpNonBlockConnect(i8*, i8*, i32) local_unnamed_addr #0 !dbg !1021 {
  %4 = tail call fastcc i32 @anetTcpGenericConnect(i8* %0, i8* %1, i32 %2, i8* null, i32 1) #6, !dbg !1029
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1030
  ret i32 %4, !dbg !1030
}

; Function Attrs: noredzone nounwind
define dso_local i32 @anetTcpNonBlockBindConnect(i8*, i8*, i32, i8*) local_unnamed_addr #0 !dbg !1031 {
  %5 = tail call fastcc i32 @anetTcpGenericConnect(i8* %0, i8* %1, i32 %2, i8* %3, i32 1) #6, !dbg !1043
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1044
  ret i32 %5, !dbg !1044
}

; Function Attrs: noredzone nounwind
define dso_local i32 @anetTcpNonBlockBestEffortBindConnect(i8*, i8*, i32, i8*) local_unnamed_addr #0 !dbg !1045 {
  %5 = tail call fastcc i32 @anetTcpGenericConnect(i8* %0, i8* %1, i32 %2, i8* %3, i32 3) #6, !dbg !1055
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1056
  ret i32 %5, !dbg !1056
}

; Function Attrs: noredzone nounwind
define dso_local i32 @anetUnixGenericConnect(i8*, i8*, i32) local_unnamed_addr #0 !dbg !1057 {
  %4 = alloca %struct.sockaddr_un, align 1
  %5 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %4, i64 0, i32 0, !dbg !1075
  call void @llvm.lifetime.start.p0i8(i64 109, i8* nonnull %5) #4, !dbg !1075
  %6 = tail call fastcc i32 @anetCreateSocket(i8* %0) #6, !dbg !1076
  %7 = icmp eq i32 %6, -1, !dbg !1079
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1080
  br i1 %7, label %32, label %8, !dbg !1080

; <label>:8:                                      ; preds = %3
  store i8 1, i8* %5, align 1, !dbg !1081, !tbaa !1082
  %9 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %4, i64 0, i32 1, i64 0, !dbg !1084
  %10 = call i8* @strncpy(i8* nonnull %9, i8* %1, i64 107) #5, !dbg !1085
  %11 = and i32 %2, 1, !dbg !1086
  %12 = icmp ne i32 %11, 0, !dbg !1086
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1088
  br i1 %12, label %13, label %18, !dbg !1088

; <label>:13:                                     ; preds = %8
  %14 = call i32 @anetSetBlock(i8* %0, i32 %6, i32 1) #5, !dbg !1094
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1095
  %15 = icmp eq i32 %14, 0, !dbg !1096
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1097
  br i1 %15, label %18, label %16, !dbg !1097

; <label>:16:                                     ; preds = %13
  %17 = call i32 @close(i32 %6) #5, !dbg !1098
  br label %32, !dbg !1100

; <label>:18:                                     ; preds = %13, %8
  %19 = bitcast %struct.sockaddr_un* %4 to %struct.sockaddr*, !dbg !1101
  %20 = call i32 @connect(i32 %6, %struct.sockaddr* nonnull %19, i32 109) #5, !dbg !1103
  %21 = icmp eq i32 %20, -1, !dbg !1104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1105
  br i1 %21, label %22, label %32, !dbg !1105

; <label>:22:                                     ; preds = %18
  %23 = call i32* @__errno() #5, !dbg !1106
  %24 = load i32, i32* %23, align 4, !dbg !1106, !tbaa !133
  %25 = icmp eq i32 %24, 119, !dbg !1109
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1110
  br i1 %25, label %26, label %27, !dbg !1110

; <label>:26:                                     ; preds = %22
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1111
  br i1 %12, label %32, label %27, !dbg !1111

; <label>:27:                                     ; preds = %26, %22
  %28 = call i32* @__errno() #5, !dbg !1112
  %29 = load i32, i32* %28, align 4, !dbg !1112, !tbaa !133
  %30 = call i8* @strerror(i32 %29) #5, !dbg !1113
  call void (i8*, i8*, ...) @anetSetError(i8* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* %30) #6, !dbg !1114
  %31 = call i32 @close(i32 %6) #5, !dbg !1115
  br label %32, !dbg !1116

; <label>:32:                                     ; preds = %18, %26, %3, %27, %16
  %33 = phi i32 [ -1, %16 ], [ -1, %27 ], [ -1, %3 ], [ %6, %26 ], [ %6, %18 ], !dbg !1117
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1118
  call void @llvm.lifetime.end.p0i8(i64 109, i8* nonnull %5) #4, !dbg !1119
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1119
  ret i32 %33, !dbg !1119
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @anetCreateSocket(i8*) unnamed_addr #0 !dbg !1120 {
  %2 = alloca i32, align 4
  %3 = bitcast i32* %2 to i8*, !dbg !1135
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #4, !dbg !1135
  %4 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1136, !srcloc !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1139
  %5 = icmp ult i64 %4, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1140
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1140
  br i1 %5, label %11, label %6, !dbg !1140

; <label>:6:                                      ; preds = %1
  %7 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1141, !srcloc !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1144
  %8 = icmp ugt i64 %7, ptrtoint ([0 x i8]* @_end to i64), !dbg !1140
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1145
  br i1 %8, label %11, label %9, !dbg !1145

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @socket(i32 1, i32 1, i32 0) #5, !dbg !1146
  store i32 %10, i32* %2, align 4, !dbg !1146, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1146
  br label %20, !dbg !1146

; <label>:11:                                     ; preds = %6, %1
  %12 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1149, !srcloc !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1153
  %13 = and i64 %12, -65536, !dbg !1155
  %14 = or i64 %13, 4097, !dbg !1155
  %15 = add nsw i64 %14, -1, !dbg !1155
  %16 = inttoptr i64 %15 to i32*, !dbg !1156
  %17 = load i32, i32* %16, align 4096, !dbg !1157, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1158
  %18 = tail call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call socket\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 1, i64 1, i64 0, i32 %17, i32 (i32, i32, i32)* nonnull @socket) #4, !dbg !1159, !srcloc !1160
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %2, i64 %18) #4, !dbg !1161, !srcloc !1164
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %19 = load i32, i32* %2, align 4, !dbg !1165, !tbaa !133
  br label %20

; <label>:20:                                     ; preds = %11, %9
  %21 = phi i32 [ %19, %11 ], [ %10, %9 ], !dbg !1165
  %22 = icmp eq i32 %21, -1, !dbg !1167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1168
  br i1 %22, label %23, label %27, !dbg !1168

; <label>:23:                                     ; preds = %20
  %24 = call i32* @__errno() #5, !dbg !1169
  %25 = load i32, i32* %24, align 4, !dbg !1169, !tbaa !133
  %26 = call i8* @strerror(i32 %25) #5, !dbg !1171
  call void (i8*, i8*, ...) @anetSetError(i8* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i8* %26) #6, !dbg !1172
  br label %33, !dbg !1173

; <label>:27:                                     ; preds = %20
  %28 = call fastcc i32 @anetSetReuseAddr(i8* %0, i32 %21) #6, !dbg !1174
  %29 = icmp eq i32 %28, -1, !dbg !1176
  %30 = load i32, i32* %2, align 4, !dbg !1177, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1178
  br i1 %29, label %31, label %33, !dbg !1178

; <label>:31:                                     ; preds = %27
  %32 = call i32 @close(i32 %30) #5, !dbg !1179
  br label %33, !dbg !1181

; <label>:33:                                     ; preds = %27, %31, %23
  %34 = phi i32 [ -1, %23 ], [ -1, %31 ], [ %30, %27 ], !dbg !1177
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1182
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #4, !dbg !1183
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1183
  ret i32 %34, !dbg !1183
}

; Function Attrs: noredzone
declare dso_local i8* @strncpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @close(i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @anetUnixConnect(i8*, i8*) local_unnamed_addr #0 !dbg !1184 {
  %3 = tail call i32 @anetUnixGenericConnect(i8* %0, i8* %1, i32 0) #6, !dbg !1192
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1193
  ret i32 %3, !dbg !1193
}

; Function Attrs: noredzone nounwind
define dso_local i32 @anetUnixNonBlockConnect(i8*, i8*) local_unnamed_addr #0 !dbg !1194 {
  %3 = tail call i32 @anetUnixGenericConnect(i8* %0, i8* %1, i32 1) #6, !dbg !1200
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1201
  ret i32 %3, !dbg !1201
}

; Function Attrs: noredzone nounwind
define dso_local i32 @anetRead(i32, i8*, i32) local_unnamed_addr #0 !dbg !1202 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1218
  %4 = sext i32 %2 to i64, !dbg !1219
  %5 = icmp eq i32 %2, 0, !dbg !1220
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1218
  br i1 %5, label %20, label %6, !dbg !1218

; <label>:6:                                      ; preds = %3, %16
  %7 = phi i64 [ %17, %16 ], [ 0, %3 ]
  %8 = phi i8* [ %18, %16 ], [ %1, %3 ]
  %9 = sub nsw i64 %4, %7, !dbg !1221
  %10 = tail call i64 @read(i32 %0, i8* %8, i64 %9) #5, !dbg !1223
  %11 = icmp eq i64 %10, 0, !dbg !1225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1227
  br i1 %11, label %12, label %14, !dbg !1227

; <label>:12:                                     ; preds = %6
  %13 = trunc i64 %7 to i32, !dbg !1228
  br label %20, !dbg !1229

; <label>:14:                                     ; preds = %6
  %15 = icmp eq i64 %10, -1, !dbg !1230
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1232
  br i1 %15, label %20, label %16, !dbg !1232

; <label>:16:                                     ; preds = %14
  %17 = add nsw i64 %10, %7, !dbg !1233
  %18 = getelementptr inbounds i8, i8* %8, i64 %10, !dbg !1234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1218
  %19 = icmp eq i64 %17, %4, !dbg !1220
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1218
  br i1 %19, label %20, label %6, !dbg !1218, !llvm.loop !1235

; <label>:20:                                     ; preds = %16, %14, %3, %12
  %21 = phi i32 [ %13, %12 ], [ %2, %3 ], [ %2, %16 ], [ -1, %14 ], !dbg !1237
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1238
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1239
  ret i32 %21, !dbg !1239
}

; Function Attrs: noredzone
declare dso_local i64 @read(i32, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @anetWrite(i32, i8*, i32) local_unnamed_addr #0 !dbg !1240 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1251
  %4 = sext i32 %2 to i64, !dbg !1252
  %5 = icmp eq i32 %2, 0, !dbg !1253
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1251
  br i1 %5, label %20, label %6, !dbg !1251

; <label>:6:                                      ; preds = %3, %16
  %7 = phi i64 [ %17, %16 ], [ 0, %3 ]
  %8 = phi i8* [ %18, %16 ], [ %1, %3 ]
  %9 = sub nsw i64 %4, %7, !dbg !1254
  %10 = tail call i64 @write(i32 %0, i8* %8, i64 %9) #5, !dbg !1256
  %11 = icmp eq i64 %10, 0, !dbg !1258
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1260
  br i1 %11, label %12, label %14, !dbg !1260

; <label>:12:                                     ; preds = %6
  %13 = trunc i64 %7 to i32, !dbg !1261
  br label %20, !dbg !1262

; <label>:14:                                     ; preds = %6
  %15 = icmp eq i64 %10, -1, !dbg !1263
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1265
  br i1 %15, label %20, label %16, !dbg !1265

; <label>:16:                                     ; preds = %14
  %17 = add nsw i64 %10, %7, !dbg !1266
  %18 = getelementptr inbounds i8, i8* %8, i64 %10, !dbg !1267
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1251
  %19 = icmp eq i64 %17, %4, !dbg !1253
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1251
  br i1 %19, label %20, label %6, !dbg !1251, !llvm.loop !1268

; <label>:20:                                     ; preds = %16, %14, %3, %12
  %21 = phi i32 [ %13, %12 ], [ %2, %3 ], [ %2, %16 ], [ -1, %14 ], !dbg !1270
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1271
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1272
  ret i32 %21, !dbg !1272
}

; Function Attrs: noredzone
declare dso_local i64 @write(i32, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @anetTcpServer(i8*, i32, i8*, i32) local_unnamed_addr #0 !dbg !1273 {
  %5 = tail call fastcc i32 @_anetTcpServer(i8* %0, i32 %1, i8* %2, i32 2, i32 %3) #6, !dbg !1285
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1286
  ret i32 %5, !dbg !1286
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @_anetTcpServer(i8*, i32, i8*, i32, i32) unnamed_addr #0 !dbg !1287 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [6 x i8], align 1
  %11 = alloca %struct.addrinfo, align 8
  %12 = alloca %struct.addrinfo*, align 8
  %13 = bitcast i32* %8 to i8*, !dbg !1336
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13) #4, !dbg !1336
  store i32 -1, i32* %8, align 4, !dbg !1337, !tbaa !133
  %14 = bitcast i32* %9 to i8*, !dbg !1336
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %14) #4, !dbg !1336
  %15 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0, !dbg !1338
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %15) #4, !dbg !1338
  %16 = ptrtoint [6 x i8]* %10 to i64, !dbg !1340
  %17 = add i64 %16, 65536, !dbg !1341
  %18 = inttoptr i64 %17 to i8*, !dbg !1342
  %19 = bitcast %struct.addrinfo* %11 to i8*, !dbg !1344
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %19) #4, !dbg !1344
  %20 = ptrtoint %struct.addrinfo* %11 to i64, !dbg !1345
  %21 = add i64 %20, 65536, !dbg !1346
  %22 = inttoptr i64 %21 to %struct.addrinfo*, !dbg !1347
  %23 = bitcast %struct.addrinfo** %12 to i8*, !dbg !1349
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #4, !dbg !1349
  %24 = ptrtoint %struct.addrinfo** %12 to i64, !dbg !1350
  %25 = add i64 %24, 65536, !dbg !1351
  %26 = inttoptr i64 %25 to %struct.addrinfo**, !dbg !1352
  %27 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %18, i64 6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32 %1) #5, !dbg !1354
  %28 = inttoptr i64 %21 to i8*, !dbg !1355
  %29 = call i8* @memset(i8* %28, i32 0, i64 48) #5, !dbg !1356
  %30 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %22, i64 0, i32 1, !dbg !1357
  store i32 %3, i32* %30, align 4, !dbg !1358, !tbaa !634
  %31 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %22, i64 0, i32 2, !dbg !1359
  store i32 1, i32* %31, align 8, !dbg !1360, !tbaa !637
  %32 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %22, i64 0, i32 0, !dbg !1361
  store i32 1, i32* %32, align 8, !dbg !1362, !tbaa !628
  %33 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1363, !srcloc !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1366
  %34 = icmp ult i64 %33, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1367
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1367
  br i1 %34, label %40, label %35, !dbg !1367

; <label>:35:                                     ; preds = %5
  %36 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1368, !srcloc !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1371
  %37 = icmp ugt i64 %36, ptrtoint ([0 x i8]* @_end to i64), !dbg !1367
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1372
  br i1 %37, label %40, label %38, !dbg !1372

; <label>:38:                                     ; preds = %35
  %39 = call i32 @getaddrinfo(i8* %2, i8* %18, %struct.addrinfo* %22, %struct.addrinfo** %26) #5, !dbg !1373
  store i32 %39, i32* %9, align 4, !dbg !1373, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1373
  br label %50, !dbg !1373

; <label>:40:                                     ; preds = %35, %5
  %41 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1376, !srcloc !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1380
  %42 = and i64 %41, -65536, !dbg !1382
  %43 = or i64 %42, 4097, !dbg !1382
  %44 = add nsw i64 %43, -1, !dbg !1382
  %45 = inttoptr i64 %44 to i32*, !dbg !1383
  %46 = load i32, i32* %45, align 4096, !dbg !1384, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1385
  %47 = ptrtoint i8* %2 to i64, !dbg !1386
  %48 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call getaddrinfo\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %47, i64 %17, i64 %21, i64 %25, i32 %46, i32 (i8*, i8*, %struct.addrinfo*, %struct.addrinfo**)* nonnull @getaddrinfo) #4, !dbg !1386, !srcloc !1387
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %9, i64 %48) #4, !dbg !1388, !srcloc !1391
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %49 = load i32, i32* %9, align 4, !dbg !1392, !tbaa !133
  br label %50

; <label>:50:                                     ; preds = %40, %38
  %51 = phi i32 [ %49, %40 ], [ %39, %38 ], !dbg !1392
  %52 = icmp eq i32 %51, 0, !dbg !1394
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1395
  br i1 %52, label %55, label %53, !dbg !1395

; <label>:53:                                     ; preds = %50
  %54 = call i8* @gai_strerror(i32 %51) #5, !dbg !1396
  call void (i8*, i8*, ...) @anetSetError(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %54) #6, !dbg !1398
  br label %175, !dbg !1399

; <label>:55:                                     ; preds = %50
  %56 = load %struct.addrinfo*, %struct.addrinfo** %26, align 8, !dbg !1400, !tbaa !678
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1402
  %57 = icmp eq %struct.addrinfo* %56, null, !dbg !1403
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1404
  br i1 %57, label %146, label %58, !dbg !1404

; <label>:58:                                     ; preds = %55, %142
  %59 = phi %struct.addrinfo* [ %144, %142 ], [ %56, %55 ]
  %60 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1405, !srcloc !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1408
  %61 = icmp ult i64 %60, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1409
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1409
  br i1 %61, label %73, label %62, !dbg !1409

; <label>:62:                                     ; preds = %58
  %63 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1410, !srcloc !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1413
  %64 = icmp ugt i64 %63, ptrtoint ([0 x i8]* @_end to i64), !dbg !1409
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1414
  br i1 %64, label %73, label %65, !dbg !1414

; <label>:65:                                     ; preds = %62
  %66 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %59, i64 0, i32 1, !dbg !1415
  %67 = load i32, i32* %66, align 4, !dbg !1415, !tbaa !634
  %68 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %59, i64 0, i32 2, !dbg !1415
  %69 = load i32, i32* %68, align 8, !dbg !1415, !tbaa !637
  %70 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %59, i64 0, i32 3, !dbg !1415
  %71 = load i32, i32* %70, align 4, !dbg !1415, !tbaa !865
  %72 = call i32 @socket(i32 %67, i32 %69, i32 %71) #5, !dbg !1415
  store i32 %72, i32* %8, align 4, !dbg !1415, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1415
  br label %91, !dbg !1415

; <label>:73:                                     ; preds = %62, %58
  %74 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1417, !srcloc !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1421
  %75 = and i64 %74, -65536, !dbg !1423
  %76 = or i64 %75, 4097, !dbg !1423
  %77 = add nsw i64 %76, -1, !dbg !1423
  %78 = inttoptr i64 %77 to i32*, !dbg !1424
  %79 = load i32, i32* %78, align 4096, !dbg !1425, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1426
  %80 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %59, i64 0, i32 3, !dbg !1427
  %81 = load i32, i32* %80, align 4, !dbg !1427, !tbaa !865
  %82 = sext i32 %81 to i64, !dbg !1427
  %83 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %59, i64 0, i32 1, !dbg !1427
  %84 = load i32, i32* %83, align 4, !dbg !1427, !tbaa !634
  %85 = sext i32 %84 to i64, !dbg !1427
  %86 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %59, i64 0, i32 2, !dbg !1427
  %87 = load i32, i32* %86, align 8, !dbg !1427, !tbaa !637
  %88 = sext i32 %87 to i64, !dbg !1427
  %89 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call socket\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %85, i64 %88, i64 %82, i32 %79, i32 (i32, i32, i32)* nonnull @socket) #4, !dbg !1427, !srcloc !1428
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %8, i64 %89) #4, !dbg !1429, !srcloc !1432
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %90 = load i32, i32* %8, align 4, !dbg !1433, !tbaa !133
  br label %91

; <label>:91:                                     ; preds = %73, %65
  %92 = phi i32 [ %90, %73 ], [ %72, %65 ], !dbg !1433
  %93 = icmp eq i32 %92, -1, !dbg !1435
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1436
  br i1 %93, label %142, label %94, !dbg !1436

; <label>:94:                                     ; preds = %91
  %95 = icmp eq i32 %3, 10, !dbg !1437
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1439
  br i1 %95, label %96, label %130, !dbg !1439

; <label>:96:                                     ; preds = %94
  %97 = bitcast i32* %6 to i8*, !dbg !1460
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %97) #4, !dbg !1460
  %98 = ptrtoint i32* %6 to i64, !dbg !1461
  %99 = add i64 %98, 65536, !dbg !1462
  %100 = inttoptr i64 %99 to i32*, !dbg !1463
  store i32 1, i32* %100, align 4, !dbg !1465, !tbaa !133
  %101 = bitcast i32* %7 to i8*, !dbg !1466
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %101) #4, !dbg !1466
  %102 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1467, !srcloc !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1470
  %103 = icmp ult i64 %102, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1471
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1471
  br i1 %103, label %110, label %104, !dbg !1471

; <label>:104:                                    ; preds = %96
  %105 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1472, !srcloc !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1475
  %106 = icmp ugt i64 %105, ptrtoint ([0 x i8]* @_end to i64), !dbg !1471
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1476
  br i1 %106, label %110, label %107, !dbg !1476

; <label>:107:                                    ; preds = %104
  %108 = inttoptr i64 %99 to i8*, !dbg !1477
  %109 = call i32 @setsockopt(i32 %92, i32 41, i32 27, i8* %108, i32 4) #5, !dbg !1477
  store i32 %109, i32* %7, align 4, !dbg !1477, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1477
  br label %120, !dbg !1477

; <label>:110:                                    ; preds = %104, %96
  %111 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1480, !srcloc !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1484
  %112 = and i64 %111, -65536, !dbg !1486
  %113 = or i64 %112, 4097, !dbg !1486
  %114 = add nsw i64 %113, -1, !dbg !1486
  %115 = inttoptr i64 %114 to i32*, !dbg !1487
  %116 = load i32, i32* %115, align 4096, !dbg !1488, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1489
  %117 = sext i32 %92 to i64, !dbg !1490
  %118 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call setsockopt\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r8},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %117, i64 41, i64 27, i64 %99, i64 4, i32 %116, i32 (i32, i32, i32, i8*, i32)* nonnull @setsockopt) #4, !dbg !1490, !srcloc !1491
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %7, i64 %118) #4, !dbg !1492, !srcloc !1495
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %119 = load i32, i32* %7, align 4, !dbg !1496, !tbaa !133
  br label %120

; <label>:120:                                    ; preds = %110, %107
  %121 = phi i32 [ %119, %110 ], [ %109, %107 ], !dbg !1496
  %122 = icmp eq i32 %121, -1, !dbg !1498
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1499
  br i1 %122, label %123, label %128, !dbg !1499

; <label>:123:                                    ; preds = %120
  %124 = call i32* @__errno() #5, !dbg !1500
  %125 = load i32, i32* %124, align 4, !dbg !1500, !tbaa !133
  %126 = call i8* @strerror(i32 %125) #5, !dbg !1502
  call void (i8*, i8*, ...) @anetSetError(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i8* %126) #5, !dbg !1503
  %127 = call i32 @close(i32 %92) #5, !dbg !1504
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1505
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %101) #4, !dbg !1506
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %97) #4, !dbg !1506
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1506
  br label %149

; <label>:128:                                    ; preds = %120
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1507
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %101) #4, !dbg !1506
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %97) #4, !dbg !1506
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1506
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1508
  %129 = load i32, i32* %8, align 4, !dbg !1509, !tbaa !133
  br label %130, !dbg !1508

; <label>:130:                                    ; preds = %128, %94
  %131 = phi i32 [ %129, %128 ], [ %92, %94 ], !dbg !1509
  %132 = call fastcc i32 @anetSetReuseAddr(i8* %0, i32 %131) #6, !dbg !1511
  %133 = icmp eq i32 %132, -1, !dbg !1512
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1513
  br i1 %133, label %150, label %134, !dbg !1513

; <label>:134:                                    ; preds = %130
  %135 = load i32, i32* %8, align 4, !dbg !1514, !tbaa !133
  %136 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %59, i64 0, i32 5, !dbg !1516
  %137 = load %struct.sockaddr*, %struct.sockaddr** %136, align 8, !dbg !1516, !tbaa !684
  %138 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %59, i64 0, i32 4, !dbg !1517
  %139 = load i32, i32* %138, align 8, !dbg !1517, !tbaa !951
  %140 = call fastcc i32 @anetListen(i8* %0, i32 %135, %struct.sockaddr* %137, i32 %139, i32 %4) #6, !dbg !1518
  %141 = icmp eq i32 %140, -1, !dbg !1519
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1520
  br i1 %141, label %155, label %156, !dbg !1520

; <label>:142:                                    ; preds = %91
  %143 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %59, i64 0, i32 7, !dbg !1521
  %144 = load %struct.addrinfo*, %struct.addrinfo** %143, align 8, !dbg !1521, !tbaa !956
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1522
  %145 = icmp eq %struct.addrinfo* %144, null, !dbg !1403
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1404
  br i1 %145, label %146, label %58, !dbg !1404, !llvm.loop !1523

; <label>:146:                                    ; preds = %142, %55
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1525
  %147 = call i32* @__errno() #5, !dbg !1526
  %148 = load i32, i32* %147, align 4, !dbg !1526, !tbaa !133
  call void (i8*, i8*, ...) @anetSetError(i8* %0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0), i32 %148) #6, !dbg !1529
  br label %149, !dbg !1530

; <label>:149:                                    ; preds = %146, %123
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1531
  br label %150, !dbg !1532

; <label>:150:                                    ; preds = %149, %130
  %151 = load i32, i32* %8, align 4, !dbg !1532, !tbaa !133
  %152 = icmp eq i32 %151, -1, !dbg !1534
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1535
  br i1 %152, label %155, label %153, !dbg !1535

; <label>:153:                                    ; preds = %150
  %154 = call i32 @close(i32 %151) #5, !dbg !1536
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1536
  br label %155, !dbg !1536

; <label>:155:                                    ; preds = %153, %150, %134
  store i32 -1, i32* %8, align 4, !dbg !1537, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1538
  br label %156, !dbg !1539

; <label>:156:                                    ; preds = %155, %134
  %157 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1539, !srcloc !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1542
  %158 = icmp ult i64 %157, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1543
  br i1 %158, label %164, label %159, !dbg !1543

; <label>:159:                                    ; preds = %156
  %160 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1544, !srcloc !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1547
  %161 = icmp ugt i64 %160, ptrtoint ([0 x i8]* @_end to i64), !dbg !1543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1548
  br i1 %161, label %164, label %162, !dbg !1548

; <label>:162:                                    ; preds = %159
  %163 = load %struct.addrinfo*, %struct.addrinfo** %26, align 8, !dbg !1549, !tbaa !678
  call void @freeaddrinfo(%struct.addrinfo* %163) #5, !dbg !1549
  br label %173, !dbg !1549

; <label>:164:                                    ; preds = %159, %156
  %165 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1551, !srcloc !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1555
  %166 = and i64 %165, -65536, !dbg !1557
  %167 = or i64 %166, 4097, !dbg !1557
  %168 = add nsw i64 %167, -1, !dbg !1557
  %169 = inttoptr i64 %168 to i32*, !dbg !1558
  %170 = load i32, i32* %169, align 4096, !dbg !1559, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1560
  %171 = inttoptr i64 %25 to i64*, !dbg !1561
  %172 = load i64, i64* %171, align 8, !dbg !1561, !tbaa !678
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call freeaddrinfo\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %172, i32 %170, void (%struct.addrinfo*)* nonnull @freeaddrinfo) #4, !dbg !1561, !srcloc !1562
  br label %173

; <label>:173:                                    ; preds = %164, %162
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %174 = load i32, i32* %8, align 4, !dbg !1563, !tbaa !133
  br label %175, !dbg !1564

; <label>:175:                                    ; preds = %173, %53
  %176 = phi i32 [ -1, %53 ], [ %174, %173 ], !dbg !1537
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1565
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #4, !dbg !1566
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %19) #4, !dbg !1566
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %15) #4, !dbg !1566
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14) #4, !dbg !1566
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #4, !dbg !1566
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1566
  ret i32 %176, !dbg !1566
}

; Function Attrs: noredzone nounwind
define dso_local i32 @anetTcp6Server(i8*, i32, i8*, i32) local_unnamed_addr #0 !dbg !1567 {
  %5 = tail call fastcc i32 @_anetTcpServer(i8* %0, i32 %1, i8* %2, i32 10, i32 %3) #6, !dbg !1577
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1578
  ret i32 %5, !dbg !1578
}

; Function Attrs: noredzone nounwind
define dso_local i32 @anetUnixServer(i8*, i8*, i32, i32) local_unnamed_addr #0 !dbg !1579 {
  %5 = alloca %struct.sockaddr_un, align 1
  %6 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %5, i64 0, i32 0, !dbg !1595
  call void @llvm.lifetime.start.p0i8(i64 109, i8* nonnull %6) #4, !dbg !1595
  %7 = tail call fastcc i32 @anetCreateSocket(i8* %0) #6, !dbg !1596
  %8 = icmp eq i32 %7, -1, !dbg !1599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1600
  br i1 %8, label %20, label %9, !dbg !1600

; <label>:9:                                      ; preds = %4
  %10 = call i8* @memset(i8* nonnull %6, i32 0, i64 109) #5, !dbg !1601
  store i8 1, i8* %6, align 1, !dbg !1602, !tbaa !1082
  %11 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %5, i64 0, i32 1, i64 0, !dbg !1603
  %12 = call i8* @strncpy(i8* nonnull %11, i8* %1, i64 107) #5, !dbg !1604
  %13 = bitcast %struct.sockaddr_un* %5 to %struct.sockaddr*, !dbg !1605
  %14 = call fastcc i32 @anetListen(i8* %0, i32 %7, %struct.sockaddr* nonnull %13, i32 109, i32 %3) #6, !dbg !1607
  %15 = icmp eq i32 %14, -1, !dbg !1608
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1609
  br i1 %15, label %20, label %16, !dbg !1609

; <label>:16:                                     ; preds = %9
  %17 = icmp eq i32 %2, 0, !dbg !1610
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1612
  br i1 %17, label %20, label %18, !dbg !1612

; <label>:18:                                     ; preds = %16
  %19 = call i32 @chmod(i8* nonnull %11, i32 %2) #5, !dbg !1613
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1613
  br label %20, !dbg !1613

; <label>:20:                                     ; preds = %18, %16, %9, %4
  %21 = phi i32 [ -1, %4 ], [ -1, %9 ], [ %7, %16 ], [ %7, %18 ], !dbg !1614
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1615
  call void @llvm.lifetime.end.p0i8(i64 109, i8* nonnull %6) #4, !dbg !1616
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1616
  ret i32 %21, !dbg !1616
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @anetListen(i8*, i32, %struct.sockaddr*, i32, i32) unnamed_addr #0 !dbg !1617 {
  %6 = alloca i32, align 4
  %7 = bitcast i32* %6 to i8*, !dbg !1647
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #4, !dbg !1647
  %8 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1648, !srcloc !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1651
  %9 = icmp ult i64 %8, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1652
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1652
  br i1 %9, label %15, label %10, !dbg !1652

; <label>:10:                                     ; preds = %5
  %11 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1653, !srcloc !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1656
  %12 = icmp ugt i64 %11, ptrtoint ([0 x i8]* @_end to i64), !dbg !1652
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1657
  br i1 %12, label %15, label %13, !dbg !1657

; <label>:13:                                     ; preds = %10
  %14 = tail call i32 @bind(i32 %1, %struct.sockaddr* %2, i32 %3) #5, !dbg !1658
  store i32 %14, i32* %6, align 4, !dbg !1658, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1658
  br label %27, !dbg !1658

; <label>:15:                                     ; preds = %10, %5
  %16 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1661, !srcloc !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1665
  %17 = and i64 %16, -65536, !dbg !1667
  %18 = or i64 %17, 4097, !dbg !1667
  %19 = add nsw i64 %18, -1, !dbg !1667
  %20 = inttoptr i64 %19 to i32*, !dbg !1668
  %21 = load i32, i32* %20, align 4096, !dbg !1669, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1670
  %22 = zext i32 %3 to i64, !dbg !1671
  %23 = sext i32 %1 to i64, !dbg !1671
  %24 = ptrtoint %struct.sockaddr* %2 to i64, !dbg !1671
  %25 = tail call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call bind\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %23, i64 %24, i64 %22, i32 %21, i32 (i32, %struct.sockaddr*, i32)* nonnull @bind) #4, !dbg !1671, !srcloc !1672
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %6, i64 %25) #4, !dbg !1673, !srcloc !1676
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %26 = load i32, i32* %6, align 4, !dbg !1677, !tbaa !133
  br label %27

; <label>:27:                                     ; preds = %15, %13
  %28 = phi i32 [ %26, %15 ], [ %14, %13 ], !dbg !1677
  %29 = icmp eq i32 %28, -1, !dbg !1679
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1680
  br i1 %29, label %30, label %35, !dbg !1680

; <label>:30:                                     ; preds = %27
  %31 = call i32* @__errno() #5, !dbg !1681
  %32 = load i32, i32* %31, align 4, !dbg !1681, !tbaa !133
  %33 = call i8* @strerror(i32 %32) #5, !dbg !1683
  call void (i8*, i8*, ...) @anetSetError(i8* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* %33) #6, !dbg !1684
  %34 = call i32 @close(i32 %1) #5, !dbg !1685
  br label %62, !dbg !1686

; <label>:35:                                     ; preds = %27
  %36 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1687, !srcloc !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1690
  %37 = icmp ult i64 %36, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1691
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1691
  br i1 %37, label %43, label %38, !dbg !1691

; <label>:38:                                     ; preds = %35
  %39 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1692, !srcloc !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1695
  %40 = icmp ugt i64 %39, ptrtoint ([0 x i8]* @_end to i64), !dbg !1691
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1696
  br i1 %40, label %43, label %41, !dbg !1696

; <label>:41:                                     ; preds = %38
  %42 = call i32 @listen(i32 %1, i32 %4) #5, !dbg !1697
  store i32 %42, i32* %6, align 4, !dbg !1697, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1697
  br label %54, !dbg !1697

; <label>:43:                                     ; preds = %38, %35
  %44 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1699, !srcloc !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1703
  %45 = and i64 %44, -65536, !dbg !1705
  %46 = or i64 %45, 4097, !dbg !1705
  %47 = add nsw i64 %46, -1, !dbg !1705
  %48 = inttoptr i64 %47 to i32*, !dbg !1706
  %49 = load i32, i32* %48, align 4096, !dbg !1707, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1708
  %50 = sext i32 %1 to i64, !dbg !1709
  %51 = sext i32 %4 to i64, !dbg !1709
  %52 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call listen\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %50, i64 %51, i32 %49, i32 (i32, i32)* nonnull @listen) #4, !dbg !1709, !srcloc !1710
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %6, i64 %52) #4, !dbg !1711, !srcloc !1714
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %53 = load i32, i32* %6, align 4, !dbg !1715, !tbaa !133
  br label %54

; <label>:54:                                     ; preds = %43, %41
  %55 = phi i32 [ %53, %43 ], [ %42, %41 ], !dbg !1715
  %56 = icmp eq i32 %55, -1, !dbg !1717
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1718
  br i1 %56, label %57, label %62, !dbg !1718

; <label>:57:                                     ; preds = %54
  %58 = call i32* @__errno() #5, !dbg !1719
  %59 = load i32, i32* %58, align 4, !dbg !1719, !tbaa !133
  %60 = call i8* @strerror(i32 %59) #5, !dbg !1721
  call void (i8*, i8*, ...) @anetSetError(i8* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i8* %60) #6, !dbg !1722
  %61 = call i32 @close(i32 %1) #5, !dbg !1723
  br label %62, !dbg !1724

; <label>:62:                                     ; preds = %54, %57, %30
  %63 = phi i32 [ -1, %30 ], [ -1, %57 ], [ 0, %54 ], !dbg !1725
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1726
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #4, !dbg !1727
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1727
  ret i32 %63, !dbg !1727
}

; Function Attrs: noredzone
declare dso_local i32 @chmod(i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @anetTcpAccept(i8*, i32, i8*, i64, i32*) local_unnamed_addr #0 !dbg !1728 {
  %6 = tail call fastcc i32 @anetGenericAccept(i8* %0, i32 %1, %struct.sockaddr* bitcast (%struct.sockaddr_storage* @sa to %struct.sockaddr*), i32* nonnull @salen) #6, !dbg !1748
  %7 = icmp eq i32 %6, -1, !dbg !1751
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1752
  br i1 %7, label %33, label %8, !dbg !1752

; <label>:8:                                      ; preds = %5
  %9 = load i8, i8* getelementptr inbounds (%struct.sockaddr_storage, %struct.sockaddr_storage* @sa, i64 0, i32 1), align 1, !dbg !1753, !tbaa !1754
  %10 = icmp eq i8 %9, 2, !dbg !1756
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1757
  %11 = icmp eq i8* %2, null, !dbg !1758
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1760
  br i1 %10, label %12, label %22, !dbg !1757

; <label>:12:                                     ; preds = %8
  br i1 %11, label %16, label %13, !dbg !1761

; <label>:13:                                     ; preds = %12
  %14 = trunc i64 %3 to i32, !dbg !1762
  %15 = tail call i8* @inet_ntop(i32 2, i8* bitcast (i32* getelementptr inbounds (%struct.sockaddr_storage, %struct.sockaddr_storage* @sa, i64 0, i32 3, i64 0) to i8*), i8* nonnull %2, i32 %14) #5, !dbg !1764
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1764
  br label %16, !dbg !1764

; <label>:16:                                     ; preds = %12, %13
  %17 = icmp eq i32* %4, null, !dbg !1765
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1767
  br i1 %17, label %32, label %18, !dbg !1767

; <label>:18:                                     ; preds = %16
  %19 = load i16, i16* bitcast (i8* getelementptr inbounds (%struct.sockaddr_storage, %struct.sockaddr_storage* @sa, i64 0, i32 2, i64 0) to i16*), align 2, !dbg !1768, !tbaa !1769
  %20 = tail call zeroext i16 @lwip_htons(i16 zeroext %19) #5, !dbg !1768
  %21 = zext i16 %20 to i32, !dbg !1768
  store i32 %21, i32* %4, align 4, !dbg !1773, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1774
  br label %32, !dbg !1774

; <label>:22:                                     ; preds = %8
  br i1 %11, label %26, label %23, !dbg !1775

; <label>:23:                                     ; preds = %22
  %24 = trunc i64 %3 to i32, !dbg !1776
  %25 = tail call i8* @inet_ntop(i32 10, i8* bitcast (i32* getelementptr inbounds (%struct.sockaddr_storage, %struct.sockaddr_storage* @sa, i64 0, i32 3, i64 1) to i8*), i8* nonnull %2, i32 %24) #5, !dbg !1777
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1777
  br label %26, !dbg !1777

; <label>:26:                                     ; preds = %22, %23
  %27 = icmp eq i32* %4, null, !dbg !1778
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1780
  br i1 %27, label %32, label %28, !dbg !1780

; <label>:28:                                     ; preds = %26
  %29 = load i16, i16* bitcast (i8* getelementptr inbounds (%struct.sockaddr_storage, %struct.sockaddr_storage* @sa, i64 0, i32 2, i64 0) to i16*), align 2, !dbg !1781, !tbaa !1782
  %30 = tail call zeroext i16 @lwip_htons(i16 zeroext %29) #5, !dbg !1781
  %31 = zext i16 %30 to i32, !dbg !1781
  store i32 %31, i32* %4, align 4, !dbg !1785, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1786
  br label %32, !dbg !1786

; <label>:32:                                     ; preds = %28, %26, %18, %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %33, !dbg !1787

; <label>:33:                                     ; preds = %5, %32
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1788
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1789
  ret i32 %6, !dbg !1789
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @anetGenericAccept(i8*, i32, %struct.sockaddr*, i32*) unnamed_addr #0 !dbg !1790 {
  %5 = alloca i32, align 4
  %6 = bitcast i32* %5 to i8*, !dbg !1813
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #4, !dbg !1813
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1814
  %7 = ptrtoint i32* %3 to i64
  %8 = sext i32 %1 to i64
  %9 = ptrtoint %struct.sockaddr* %2 to i64
  br label %10, !dbg !1814

; <label>:10:                                     ; preds = %30, %4
  %11 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1815, !srcloc !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1818
  %12 = icmp ult i64 %11, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1819
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1819
  br i1 %12, label %18, label %13, !dbg !1819

; <label>:13:                                     ; preds = %10
  %14 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1820, !srcloc !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1823
  %15 = icmp ugt i64 %14, ptrtoint ([0 x i8]* @_end to i64), !dbg !1819
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1824
  br i1 %15, label %18, label %16, !dbg !1824

; <label>:16:                                     ; preds = %13
  %17 = call i32 @accept(i32 %1, %struct.sockaddr* %2, i32* %3) #5, !dbg !1825
  store i32 %17, i32* %5, align 4, !dbg !1825, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1825
  br label %27, !dbg !1825

; <label>:18:                                     ; preds = %13, %10
  %19 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1828, !srcloc !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1832
  %20 = and i64 %19, -65536, !dbg !1834
  %21 = or i64 %20, 4097, !dbg !1834
  %22 = add nsw i64 %21, -1, !dbg !1834
  %23 = inttoptr i64 %22 to i32*, !dbg !1835
  %24 = load i32, i32* %23, align 4096, !dbg !1836, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1837
  %25 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call accept\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %8, i64 %9, i64 %7, i32 %24, i32 (i32, %struct.sockaddr*, i32*)* nonnull @accept) #4, !dbg !1838, !srcloc !1839
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %5, i64 %25) #4, !dbg !1840, !srcloc !1843
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %26 = load i32, i32* %5, align 4, !dbg !1844, !tbaa !133
  br label %27

; <label>:27:                                     ; preds = %18, %16
  %28 = phi i32 [ %26, %18 ], [ %17, %16 ], !dbg !1844
  %29 = icmp eq i32 %28, -1, !dbg !1846
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1847
  br i1 %29, label %30, label %38, !dbg !1847

; <label>:30:                                     ; preds = %27
  %31 = call i32* @__errno() #5, !dbg !1848
  %32 = load i32, i32* %31, align 4, !dbg !1848, !tbaa !133
  %33 = icmp eq i32 %32, 4, !dbg !1851
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1852
  br i1 %33, label %10, label %34, !dbg !1852, !llvm.loop !1853

; <label>:34:                                     ; preds = %30
  %35 = call i32* @__errno() #5, !dbg !1855
  %36 = load i32, i32* %35, align 4, !dbg !1855, !tbaa !133
  %37 = call i8* @strerror(i32 %36) #5, !dbg !1857
  call void (i8*, i8*, ...) @anetSetError(i8* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i8* %37) #6, !dbg !1858
  br label %38, !dbg !1859

; <label>:38:                                     ; preds = %27, %34
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1860
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #4, !dbg !1861
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1861
  ret i32 %28, !dbg !1861
}

; Function Attrs: noredzone
declare dso_local zeroext i16 @lwip_htons(i16 zeroext) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @anetUnixAccept(i8*, i32) local_unnamed_addr #0 !dbg !1862 {
  %3 = alloca %struct.sockaddr_un, align 1
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %3, i64 0, i32 0, !dbg !1871
  call void @llvm.lifetime.start.p0i8(i64 109, i8* nonnull %5) #4, !dbg !1871
  %6 = bitcast i32* %4 to i8*, !dbg !1872
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #4, !dbg !1872
  store i32 109, i32* %4, align 4, !dbg !1873, !tbaa !133
  %7 = bitcast %struct.sockaddr_un* %3 to %struct.sockaddr*, !dbg !1874
  %8 = call fastcc i32 @anetGenericAccept(i8* %0, i32 %1, %struct.sockaddr* nonnull %7, i32* nonnull %4) #6, !dbg !1876
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1878
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1879
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #4, !dbg !1880
  call void @llvm.lifetime.end.p0i8(i64 109, i8* nonnull %5) #4, !dbg !1880
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1880
  ret i32 %8, !dbg !1880
}

; Function Attrs: noredzone nounwind
define dso_local i32 @anetPeerToString(i32, i8*, i64, i32*) local_unnamed_addr #0 !dbg !1881 {
  %5 = alloca %struct.sockaddr_storage, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %5, i64 0, i32 0, !dbg !1910
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %8) #4, !dbg !1910
  %9 = bitcast i32* %6 to i8*, !dbg !1911
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #4, !dbg !1911
  store i32 28, i32* %6, align 4, !dbg !1912, !tbaa !133
  %10 = bitcast i32* %7 to i8*, !dbg !1913
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #4, !dbg !1913
  %11 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1914, !srcloc !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1917
  %12 = icmp ult i64 %11, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1918
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1918
  br i1 %12, label %19, label %13, !dbg !1918

; <label>:13:                                     ; preds = %4
  %14 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1919, !srcloc !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1922
  %15 = icmp ugt i64 %14, ptrtoint ([0 x i8]* @_end to i64), !dbg !1918
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1923
  br i1 %15, label %19, label %16, !dbg !1923

; <label>:16:                                     ; preds = %13
  %17 = bitcast %struct.sockaddr_storage* %5 to %struct.sockaddr*, !dbg !1924
  %18 = call i32 @getpeername(i32 %0, %struct.sockaddr* nonnull %17, i32* nonnull %6) #5, !dbg !1924
  store i32 %18, i32* %7, align 4, !dbg !1924, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1924
  br label %31, !dbg !1924

; <label>:19:                                     ; preds = %13, %4
  %20 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1927, !srcloc !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1931
  %21 = and i64 %20, -65536, !dbg !1933
  %22 = or i64 %21, 4097, !dbg !1933
  %23 = add nsw i64 %22, -1, !dbg !1933
  %24 = inttoptr i64 %23 to i32*, !dbg !1934
  %25 = load i32, i32* %24, align 4096, !dbg !1935, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1936
  %26 = ptrtoint i32* %6 to i64, !dbg !1937
  %27 = sext i32 %0 to i64, !dbg !1937
  %28 = ptrtoint %struct.sockaddr_storage* %5 to i64, !dbg !1937
  %29 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call getpeername\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %27, i64 %28, i64 %26, i32 %25, i32 (i32, %struct.sockaddr*, i32*)* nonnull @getpeername) #4, !dbg !1937, !srcloc !1938
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %7, i64 %29) #4, !dbg !1939, !srcloc !1942
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %30 = load i32, i32* %7, align 4, !dbg !1943, !tbaa !133
  br label %31

; <label>:31:                                     ; preds = %19, %16
  %32 = phi i32 [ %30, %19 ], [ %18, %16 ], !dbg !1943
  %33 = icmp eq i32 %32, -1, !dbg !1945
  %34 = icmp eq i64 %2, 0, !dbg !1946
  %35 = or i1 %34, %33, !dbg !1948
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1948
  br i1 %35, label %82, label %36, !dbg !1948

; <label>:36:                                     ; preds = %31
  %37 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %5, i64 0, i32 1, !dbg !1949
  %38 = load i8, i8* %37, align 1, !dbg !1949, !tbaa !1754
  %39 = icmp eq i8 %38, 2, !dbg !1950
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1951
  br i1 %39, label %40, label %55, !dbg !1951

; <label>:40:                                     ; preds = %36
  %41 = icmp eq i8* %1, null, !dbg !1952
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1954
  br i1 %41, label %47, label %42, !dbg !1954

; <label>:42:                                     ; preds = %40
  %43 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %5, i64 0, i32 3, !dbg !1956
  %44 = bitcast [3 x i32]* %43 to i8*, !dbg !1957
  %45 = trunc i64 %2 to i32, !dbg !1958
  %46 = call i8* @inet_ntop(i32 2, i8* nonnull %44, i8* nonnull %1, i32 %45) #5, !dbg !1959
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1959
  br label %47, !dbg !1959

; <label>:47:                                     ; preds = %40, %42
  %48 = icmp eq i32* %3, null, !dbg !1960
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1962
  br i1 %48, label %81, label %49, !dbg !1962

; <label>:49:                                     ; preds = %47
  %50 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %5, i64 0, i32 2, !dbg !1963
  %51 = bitcast [2 x i8]* %50 to i16*, !dbg !1963
  %52 = load i16, i16* %51, align 2, !dbg !1963, !tbaa !1769
  %53 = call zeroext i16 @lwip_htons(i16 zeroext %52) #5, !dbg !1963
  %54 = zext i16 %53 to i32, !dbg !1963
  store i32 %54, i32* %3, align 4, !dbg !1964, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1965
  br label %81, !dbg !1965

; <label>:55:                                     ; preds = %36
  %56 = icmp eq i8 %38, 10, !dbg !1966
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1967
  br i1 %56, label %57, label %72, !dbg !1967

; <label>:57:                                     ; preds = %55
  %58 = icmp eq i8* %1, null, !dbg !1968
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1970
  br i1 %58, label %64, label %59, !dbg !1970

; <label>:59:                                     ; preds = %57
  %60 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %5, i64 0, i32 3, i64 1, !dbg !1972
  %61 = bitcast i32* %60 to i8*, !dbg !1973
  %62 = trunc i64 %2 to i32, !dbg !1974
  %63 = call i8* @inet_ntop(i32 10, i8* nonnull %61, i8* nonnull %1, i32 %62) #5, !dbg !1975
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1975
  br label %64, !dbg !1975

; <label>:64:                                     ; preds = %57, %59
  %65 = icmp eq i32* %3, null, !dbg !1976
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1978
  br i1 %65, label %81, label %66, !dbg !1978

; <label>:66:                                     ; preds = %64
  %67 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %5, i64 0, i32 2, !dbg !1979
  %68 = bitcast [2 x i8]* %67 to i16*, !dbg !1979
  %69 = load i16, i16* %68, align 2, !dbg !1979, !tbaa !1782
  %70 = call zeroext i16 @lwip_htons(i16 zeroext %69) #5, !dbg !1979
  %71 = zext i16 %70 to i32, !dbg !1979
  store i32 %71, i32* %3, align 4, !dbg !1980, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1981
  br label %81, !dbg !1981

; <label>:72:                                     ; preds = %55
  %73 = icmp eq i8 %38, 1, !dbg !1982
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1984
  br i1 %73, label %74, label %82, !dbg !1984

; <label>:74:                                     ; preds = %72
  %75 = icmp eq i8* %1, null, !dbg !1985
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1988
  br i1 %75, label %78, label %76, !dbg !1988

; <label>:76:                                     ; preds = %74
  %77 = call i8* @strncpy(i8* nonnull %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i64 %2) #5, !dbg !1989
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1989
  br label %78, !dbg !1989

; <label>:78:                                     ; preds = %74, %76
  %79 = icmp eq i32* %3, null, !dbg !1990
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1992
  br i1 %79, label %94, label %80, !dbg !1992

; <label>:80:                                     ; preds = %78
  store i32 0, i32* %3, align 4, !dbg !1993, !tbaa !133
  br label %81, !dbg !1994

; <label>:81:                                     ; preds = %66, %64, %49, %47, %80
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1995
  br label %94, !dbg !1996

; <label>:82:                                     ; preds = %72, %31
  %83 = icmp eq i8* %1, null, !dbg !1997
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1999
  br i1 %83, label %91, label %84, !dbg !1999

; <label>:84:                                     ; preds = %82
  %85 = icmp ugt i64 %2, 1, !dbg !2000
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2003
  br i1 %85, label %86, label %88, !dbg !2003

; <label>:86:                                     ; preds = %84
  store i8 63, i8* %1, align 1, !dbg !2004, !tbaa !2006
  %87 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2007
  store i8 0, i8* %87, align 1, !dbg !2008, !tbaa !2006
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2009
  br label %91, !dbg !2009

; <label>:88:                                     ; preds = %84
  %89 = icmp eq i64 %2, 1, !dbg !2010
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2012
  br i1 %89, label %90, label %91, !dbg !2012

; <label>:90:                                     ; preds = %88
  store i8 0, i8* %1, align 1, !dbg !2013, !tbaa !2006
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2015
  br label %91, !dbg !2015

; <label>:91:                                     ; preds = %82, %86, %90, %88
  %92 = icmp eq i32* %3, null, !dbg !2016
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2018
  br i1 %92, label %94, label %93, !dbg !2018

; <label>:93:                                     ; preds = %91
  store i32 0, i32* %3, align 4, !dbg !2019, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2020
  br label %94, !dbg !2020

; <label>:94:                                     ; preds = %93, %91, %78, %81
  %95 = phi i32 [ 0, %81 ], [ 0, %78 ], [ -1, %91 ], [ -1, %93 ], !dbg !2021
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2021
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #4, !dbg !2022
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #4, !dbg !2022
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %8) #4, !dbg !2022
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2022
  ret i32 %95, !dbg !2022
}

; Function Attrs: noredzone
declare dso_local i32 @getpeername(i32, %struct.sockaddr*, i32*) #3

; Function Attrs: noredzone nounwind
define dso_local i32 @anetFormatAddr(i8*, i64, i8*, i32) local_unnamed_addr #0 !dbg !2023 {
  %5 = tail call i8* @strchr(i8* %2, i32 58) #5, !dbg !2035
  %6 = icmp eq i8* %5, null, !dbg !2035
  %7 = select i1 %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), !dbg !2035
  %8 = tail call i32 (i8*, i64, i8*, ...) @snprintf(i8* %0, i64 %1, i8* %7, i8* %2, i32 %3) #5, !dbg !2036
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2037
  ret i32 %8, !dbg !2037
}

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @anetFormatPeer(i32, i8*, i64) local_unnamed_addr #0 !dbg !2038 {
  %4 = alloca [46 x i8], align 16
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds [46 x i8], [46 x i8]* %4, i64 0, i64 0, !dbg !2053
  call void @llvm.lifetime.start.p0i8(i64 46, i8* nonnull %6) #4, !dbg !2053
  %7 = bitcast i32* %5 to i8*, !dbg !2055
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #4, !dbg !2055
  %8 = call i32 @anetPeerToString(i32 %0, i8* nonnull %6, i64 46, i32* nonnull %5) #6, !dbg !2057
  %9 = load i32, i32* %5, align 4, !dbg !2058, !tbaa !133
  %10 = call i8* @strchr(i8* nonnull %6, i32 58) #5, !dbg !2064
  %11 = icmp eq i8* %10, null, !dbg !2064
  %12 = select i1 %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), !dbg !2064
  %13 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %1, i64 %2, i8* %12, i8* nonnull %6, i32 %9) #5, !dbg !2065
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2066
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #4, !dbg !2067
  call void @llvm.lifetime.end.p0i8(i64 46, i8* nonnull %6) #4, !dbg !2067
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2068
  ret i32 %13, !dbg !2068
}

; Function Attrs: noredzone nounwind
define dso_local i32 @anetSockName(i32, i8*, i64, i32*) local_unnamed_addr #0 !dbg !2069 {
  %5 = alloca %struct.sockaddr_storage, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %5, i64 0, i32 0, !dbg !2086
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %7) #4, !dbg !2086
  %8 = bitcast i32* %6 to i8*, !dbg !2087
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #4, !dbg !2087
  store i32 28, i32* %6, align 4, !dbg !2088, !tbaa !133
  %9 = bitcast %struct.sockaddr_storage* %5 to %struct.sockaddr*, !dbg !2089
  %10 = call i32 @getsockname(i32 %0, %struct.sockaddr* nonnull %9, i32* nonnull %6) #5, !dbg !2091
  %11 = icmp eq i32 %10, -1, !dbg !2092
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2093
  br i1 %11, label %12, label %17, !dbg !2093

; <label>:12:                                     ; preds = %4
  %13 = icmp eq i32* %3, null, !dbg !2094
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2097
  br i1 %13, label %15, label %14, !dbg !2097

; <label>:14:                                     ; preds = %12
  store i32 0, i32* %3, align 4, !dbg !2098, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2099
  br label %15, !dbg !2099

; <label>:15:                                     ; preds = %12, %14
  store i8 63, i8* %1, align 1, !dbg !2100, !tbaa !2006
  %16 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2101
  store i8 0, i8* %16, align 1, !dbg !2102, !tbaa !2006
  br label %51, !dbg !2103

; <label>:17:                                     ; preds = %4
  %18 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %5, i64 0, i32 1, !dbg !2104
  %19 = load i8, i8* %18, align 1, !dbg !2104, !tbaa !1754
  %20 = icmp eq i8 %19, 2, !dbg !2105
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2106
  %21 = icmp eq i8* %1, null, !dbg !2107
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2109
  br i1 %20, label %22, label %36, !dbg !2106

; <label>:22:                                     ; preds = %17
  br i1 %21, label %28, label %23, !dbg !2110

; <label>:23:                                     ; preds = %22
  %24 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %5, i64 0, i32 3, !dbg !2112
  %25 = bitcast [3 x i32]* %24 to i8*, !dbg !2114
  %26 = trunc i64 %2 to i32, !dbg !2115
  %27 = call i8* @inet_ntop(i32 2, i8* nonnull %25, i8* nonnull %1, i32 %26) #5, !dbg !2116
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2116
  br label %28, !dbg !2116

; <label>:28:                                     ; preds = %22, %23
  %29 = icmp eq i32* %3, null, !dbg !2117
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2119
  br i1 %29, label %50, label %30, !dbg !2119

; <label>:30:                                     ; preds = %28
  %31 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %5, i64 0, i32 2, !dbg !2120
  %32 = bitcast [2 x i8]* %31 to i16*, !dbg !2120
  %33 = load i16, i16* %32, align 2, !dbg !2120, !tbaa !1769
  %34 = call zeroext i16 @lwip_htons(i16 zeroext %33) #5, !dbg !2120
  %35 = zext i16 %34 to i32, !dbg !2120
  store i32 %35, i32* %3, align 4, !dbg !2121, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2122
  br label %50, !dbg !2122

; <label>:36:                                     ; preds = %17
  br i1 %21, label %42, label %37, !dbg !2123

; <label>:37:                                     ; preds = %36
  %38 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %5, i64 0, i32 3, i64 1, !dbg !2125
  %39 = bitcast i32* %38 to i8*, !dbg !2126
  %40 = trunc i64 %2 to i32, !dbg !2127
  %41 = call i8* @inet_ntop(i32 10, i8* nonnull %39, i8* nonnull %1, i32 %40) #5, !dbg !2128
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2128
  br label %42, !dbg !2128

; <label>:42:                                     ; preds = %36, %37
  %43 = icmp eq i32* %3, null, !dbg !2129
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2131
  br i1 %43, label %50, label %44, !dbg !2131

; <label>:44:                                     ; preds = %42
  %45 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %5, i64 0, i32 2, !dbg !2132
  %46 = bitcast [2 x i8]* %45 to i16*, !dbg !2132
  %47 = load i16, i16* %46, align 2, !dbg !2132, !tbaa !1782
  %48 = call zeroext i16 @lwip_htons(i16 zeroext %47) #5, !dbg !2132
  %49 = zext i16 %48 to i32, !dbg !2132
  store i32 %49, i32* %3, align 4, !dbg !2133, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2134
  br label %50, !dbg !2134

; <label>:50:                                     ; preds = %44, %42, %30, %28
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %51, !dbg !2135

; <label>:51:                                     ; preds = %50, %15
  %52 = phi i32 [ -1, %15 ], [ 0, %50 ], !dbg !2136
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2137
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #4, !dbg !2138
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %7) #4, !dbg !2138
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2138
  ret i32 %52, !dbg !2138
}

; Function Attrs: noredzone
declare dso_local i32 @getsockname(i32, %struct.sockaddr*, i32*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @anetFormatSock(i32, i8*, i64) local_unnamed_addr #0 !dbg !2139 {
  %4 = alloca [46 x i8], align 16
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds [46 x i8], [46 x i8]* %4, i64 0, i64 0, !dbg !2149
  call void @llvm.lifetime.start.p0i8(i64 46, i8* nonnull %6) #4, !dbg !2149
  %7 = bitcast i32* %5 to i8*, !dbg !2151
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #4, !dbg !2151
  %8 = call i32 @anetSockName(i32 %0, i8* nonnull %6, i64 46, i32* nonnull %5) #6, !dbg !2153
  %9 = load i32, i32* %5, align 4, !dbg !2154, !tbaa !133
  %10 = call i8* @strchr(i8* nonnull %6, i32 58) #5, !dbg !2160
  %11 = icmp eq i8* %10, null, !dbg !2160
  %12 = select i1 %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), !dbg !2160
  %13 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %1, i64 %2, i8* %12, i8* nonnull %6, i32 %9) #5, !dbg !2161
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2162
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #4, !dbg !2163
  call void @llvm.lifetime.end.p0i8(i64 46, i8* nonnull %6) #4, !dbg !2163
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2164
  ret i32 %13, !dbg !2164
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

; Function Attrs: noredzone
declare dso_local i32 @vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

; Function Attrs: noredzone
declare dso_local i32 @socket(i32, i32, i32) #3

; Function Attrs: noredzone nounwind
define internal fastcc i32 @anetSetReuseAddr(i8*, i32) unnamed_addr #0 !dbg !2165 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = bitcast i32* %3 to i8*, !dbg !2184
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #4, !dbg !2184
  %6 = ptrtoint i32* %3 to i64, !dbg !2185
  %7 = add i64 %6, 65536, !dbg !2186
  %8 = inttoptr i64 %7 to i32*, !dbg !2187
  store i32 1, i32* %8, align 4, !dbg !2189, !tbaa !133
  %9 = bitcast i32* %4 to i8*, !dbg !2190
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #4, !dbg !2190
  %10 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !2191, !srcloc !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2194
  %11 = icmp ult i64 %10, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !2195
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2195
  br i1 %11, label %18, label %12, !dbg !2195

; <label>:12:                                     ; preds = %2
  %13 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !2196, !srcloc !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2199
  %14 = icmp ugt i64 %13, ptrtoint ([0 x i8]* @_end to i64), !dbg !2195
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2200
  br i1 %14, label %18, label %15, !dbg !2200

; <label>:15:                                     ; preds = %12
  %16 = inttoptr i64 %7 to i8*, !dbg !2201
  %17 = call i32 @setsockopt(i32 %1, i32 4095, i32 4, i8* %16, i32 4) #5, !dbg !2201
  store i32 %17, i32* %4, align 4, !dbg !2201, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2201
  br label %28, !dbg !2201

; <label>:18:                                     ; preds = %12, %2
  %19 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !2204, !srcloc !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2208
  %20 = and i64 %19, -65536, !dbg !2210
  %21 = or i64 %20, 4097, !dbg !2210
  %22 = add nsw i64 %21, -1, !dbg !2210
  %23 = inttoptr i64 %22 to i32*, !dbg !2211
  %24 = load i32, i32* %23, align 4096, !dbg !2212, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2213
  %25 = sext i32 %1 to i64, !dbg !2214
  %26 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call setsockopt\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r8},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %25, i64 4095, i64 4, i64 %7, i64 4, i32 %24, i32 (i32, i32, i32, i8*, i32)* nonnull @setsockopt) #4, !dbg !2214, !srcloc !2215
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %4, i64 %26) #4, !dbg !2216, !srcloc !2219
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %27 = load i32, i32* %4, align 4, !dbg !2220, !tbaa !133
  br label %28

; <label>:28:                                     ; preds = %18, %15
  %29 = phi i32 [ %27, %18 ], [ %17, %15 ], !dbg !2220
  %30 = icmp eq i32 %29, -1, !dbg !2222
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2223
  br i1 %30, label %31, label %35, !dbg !2223

; <label>:31:                                     ; preds = %28
  %32 = call i32* @__errno() #5, !dbg !2224
  %33 = load i32, i32* %32, align 4, !dbg !2224, !tbaa !133
  %34 = call i8* @strerror(i32 %33) #5, !dbg !2226
  call void (i8*, i8*, ...) @anetSetError(i8* %0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0), i8* %34) #6, !dbg !2227
  br label %35, !dbg !2228

; <label>:35:                                     ; preds = %28, %31
  %36 = phi i32 [ -1, %31 ], [ 0, %28 ], !dbg !2229
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2230
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #4, !dbg !2231
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #4, !dbg !2231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2231
  ret i32 %36, !dbg !2231
}

; Function Attrs: noredzone
declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #3

; Function Attrs: noredzone
declare dso_local i32 @listen(i32, i32) #3

; Function Attrs: noredzone
declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }
attributes #6 = { nobuiltin noredzone }

!llvm.module.flags = !{!111, !112, !113}
!llvm.ident = !{!114}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "sa", scope: !2, file: !3, line: 611, type: !98, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !95)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/anet.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6, !8, !12, !13, !15, !16, !49, !71, !80, !81, !94}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !9, line: 82, baseType: !10)
!9 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintptr_t", file: !11, line: 232, baseType: !12)
!11 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!12 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !9, line: 60, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !11, line: 105, baseType: !12)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !18, line: 73, size: 128, elements: !19)
!18 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/sockets.h", directory: "/root/.unikraft/apps/redis/build")
!19 = !{!20, !26, !28, !34, !44}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "sin_len", scope: !17, file: !18, line: 74, baseType: !21, size: 8)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8_t", file: !22, line: 125, baseType: !23)
!22 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/arch.h", directory: "/root/.unikraft/apps/redis/build")
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !9, line: 24, baseType: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !11, line: 43, baseType: !25)
!25 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !17, file: !18, line: 75, baseType: !27, size: 8, offset: 8)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !18, line: 63, baseType: !21)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !17, file: !18, line: 76, baseType: !29, size: 16, offset: 16)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !18, line: 68, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16_t", file: !22, line: 127, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !9, line: 36, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !11, line: 57, baseType: !33)
!33 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !17, file: !18, line: 77, baseType: !35, size: 32, offset: 32)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !36, line: 58, size: 32, elements: !37)
!36 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/inet.h", directory: "/root/.unikraft/apps/redis/build")
!37 = !{!38}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !35, file: !36, line: 59, baseType: !39, size: 32)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !36, line: 55, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32_t", file: !22, line: 129, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !9, line: 48, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !11, line: 79, baseType: !43)
!43 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !17, file: !18, line: 79, baseType: !45, size: 64, offset: 64)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 64, elements: !47)
!46 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!47 = !{!48}
!48 = !DISubrange(count: 8)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !18, line: 84, size: 224, elements: !51)
!51 = !{!52, !53, !54, !55, !56, !70}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_len", scope: !50, file: !18, line: 85, baseType: !21, size: 8)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !50, file: !18, line: 86, baseType: !27, size: 8, offset: 8)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !50, file: !18, line: 87, baseType: !29, size: 16, offset: 16)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !50, file: !18, line: 88, baseType: !40, size: 32, offset: 32)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !50, file: !18, line: 89, baseType: !57, size: 128, offset: 64)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !36, line: 62, size: 128, elements: !58)
!58 = !{!59}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "un", scope: !57, file: !36, line: 66, baseType: !60, size: 128)
!60 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !57, file: !36, line: 63, size: 128, elements: !61)
!61 = !{!62, !66}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "u32_addr", scope: !60, file: !36, line: 64, baseType: !63, size: 128)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 128, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 4)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "u8_addr", scope: !60, file: !36, line: 65, baseType: !67, size: 128)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 128, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 16)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !50, file: !18, line: 90, baseType: !40, size: 32, offset: 192)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !18, line: 94, size: 128, elements: !73)
!73 = !{!74, !75, !76}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "sa_len", scope: !72, file: !18, line: 95, baseType: !21, size: 8)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !72, file: !18, line: 96, baseType: !27, size: 8, offset: 8)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !72, file: !18, line: 97, baseType: !77, size: 112, offset: 16)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 112, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 14)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "addrinfo", file: !83, line: 103, size: 384, elements: !84)
!83 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/netdb.h", directory: "/root/.unikraft/apps/redis/build")
!84 = !{!85, !86, !87, !88, !89, !91, !92, !93}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "ai_flags", scope: !82, file: !83, line: 104, baseType: !7, size: 32)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "ai_family", scope: !82, file: !83, line: 105, baseType: !7, size: 32, offset: 32)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "ai_socktype", scope: !82, file: !83, line: 106, baseType: !7, size: 32, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "ai_protocol", scope: !82, file: !83, line: 107, baseType: !7, size: 32, offset: 96)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "ai_addrlen", scope: !82, file: !83, line: 108, baseType: !90, size: 32, offset: 128)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !18, line: 113, baseType: !40)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "ai_addr", scope: !82, file: !83, line: 109, baseType: !71, size: 64, offset: 192)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "ai_canonname", scope: !82, file: !83, line: 110, baseType: !80, size: 64, offset: 256)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "ai_next", scope: !82, file: !83, line: 111, baseType: !81, size: 64, offset: 320)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!95 = !{!0, !96}
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression())
!97 = distinct !DIGlobalVariable(name: "salen", scope: !2, file: !3, line: 612, type: !90, isLocal: true, isDefinition: true)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_storage", file: !18, line: 100, size: 224, elements: !99)
!99 = !{!100, !101, !102, !106, !110}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "s2_len", scope: !98, file: !18, line: 101, baseType: !21, size: 8)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "ss_family", scope: !98, file: !18, line: 102, baseType: !27, size: 8, offset: 8)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "s2_data1", scope: !98, file: !18, line: 103, baseType: !103, size: 16, offset: 16)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 16, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 2)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "s2_data2", scope: !98, file: !18, line: 104, baseType: !107, size: 96, offset: 32)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 96, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 3)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "s2_data3", scope: !98, file: !18, line: 106, baseType: !107, size: 96, offset: 128)
!111 = !{i32 2, !"Dwarf Version", i32 4}
!112 = !{i32 2, !"Debug Info Version", i32 3}
!113 = !{i32 1, !"wchar_size", i32 4}
!114 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!115 = distinct !DISubprogram(name: "anetSetBlock", scope: !3, file: !3, line: 62, type: !116, isLocal: false, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !118)
!116 = !DISubroutineType(types: !117)
!117 = !{!7, !80, !7, !7}
!118 = !{!119, !120, !121, !122}
!119 = !DILocalVariable(name: "err", arg: 1, scope: !115, file: !3, line: 62, type: !80)
!120 = !DILocalVariable(name: "fd", arg: 2, scope: !115, file: !3, line: 62, type: !7)
!121 = !DILocalVariable(name: "non_block", arg: 3, scope: !115, file: !3, line: 62, type: !7)
!122 = !DILocalVariable(name: "flags", scope: !115, file: !3, line: 63, type: !7)
!123 = !DILocation(line: 62, column: 24, scope: !115)
!124 = !DILocation(line: 62, column: 33, scope: !115)
!125 = !DILocation(line: 62, column: 41, scope: !115)
!126 = !DILocation(line: 68, column: 18, scope: !127)
!127 = distinct !DILexicalBlock(scope: !115, file: !3, line: 68, column: 9)
!128 = !DILocation(line: 63, column: 9, scope: !115)
!129 = !DILocation(line: 68, column: 38, scope: !127)
!130 = !DILocation(line: 68, column: 9, scope: !115)
!131 = !DILocation(line: 69, column: 58, scope: !132)
!132 = distinct !DILexicalBlock(scope: !127, file: !3, line: 68, column: 45)
!133 = !{!134, !134, i64 0}
!134 = !{!"int", !135, i64 0}
!135 = !{!"omnipotent char", !136, i64 0}
!136 = !{!"Simple C/C++ TBAA"}
!137 = !DILocation(line: 69, column: 49, scope: !132)
!138 = !DILocation(line: 69, column: 9, scope: !132)
!139 = !DILocation(line: 70, column: 9, scope: !132)
!140 = !DILocation(line: 73, column: 9, scope: !141)
!141 = distinct !DILexicalBlock(scope: !115, file: !3, line: 73, column: 9)
!142 = !DILocation(line: 73, column: 9, scope: !115)
!143 = !DILocation(line: 74, column: 15, scope: !141)
!144 = !DILocation(line: 76, column: 15, scope: !141)
!145 = !DILocation(line: 78, column: 9, scope: !146)
!146 = distinct !DILexicalBlock(scope: !115, file: !3, line: 78, column: 9)
!147 = !DILocation(line: 78, column: 35, scope: !146)
!148 = !DILocation(line: 78, column: 9, scope: !115)
!149 = !DILocation(line: 79, column: 69, scope: !150)
!150 = distinct !DILexicalBlock(scope: !146, file: !3, line: 78, column: 42)
!151 = !DILocation(line: 79, column: 60, scope: !150)
!152 = !DILocation(line: 79, column: 9, scope: !150)
!153 = !DILocation(line: 80, column: 9, scope: !150)
!154 = !DILocation(line: 0, scope: !115)
!155 = !DILocation(line: 0, scope: !132)
!156 = !DILocation(line: 83, column: 1, scope: !115)
!157 = distinct !DISubprogram(name: "anetSetError", scope: !3, file: !3, line: 52, type: !158, isLocal: true, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !162)
!158 = !DISubroutineType(types: !159)
!159 = !{null, !80, !160, null}
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!162 = !{!163, !164, !165}
!163 = !DILocalVariable(name: "err", arg: 1, scope: !157, file: !3, line: 52, type: !80)
!164 = !DILocalVariable(name: "fmt", arg: 2, scope: !157, file: !3, line: 52, type: !160)
!165 = !DILocalVariable(name: "ap", scope: !157, file: !3, line: 54, type: !166)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !167, line: 46, baseType: !168)
!167 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !169, line: 51, baseType: !170)
!169 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 54, baseType: !171)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 192, elements: !178)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 54, size: 192, elements: !173)
!173 = !{!174, !175, !176, !177}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !172, file: !3, line: 54, baseType: !43, size: 32)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !172, file: !3, line: 54, baseType: !43, size: 32, offset: 32)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !172, file: !3, line: 54, baseType: !15, size: 64, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !172, file: !3, line: 54, baseType: !15, size: 64, offset: 128)
!178 = !{!179}
!179 = !DISubrange(count: 1)
!180 = !DILocation(line: 52, column: 32, scope: !157)
!181 = !DILocation(line: 52, column: 49, scope: !157)
!182 = !DILocation(line: 54, column: 5, scope: !157)
!183 = !DILocation(line: 54, column: 13, scope: !157)
!184 = !DILocation(line: 56, column: 10, scope: !185)
!185 = distinct !DILexicalBlock(scope: !157, file: !3, line: 56, column: 9)
!186 = !DILocation(line: 56, column: 9, scope: !157)
!187 = !DILocation(line: 57, column: 5, scope: !157)
!188 = !DILocation(line: 58, column: 5, scope: !157)
!189 = !DILocation(line: 59, column: 5, scope: !157)
!190 = !DILocation(line: 60, column: 1, scope: !157)
!191 = !DILocation(line: 0, scope: !185)
!192 = distinct !DISubprogram(name: "anetNonBlock", scope: !3, file: !3, line: 85, type: !193, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !195)
!193 = !DISubroutineType(types: !194)
!194 = !{!7, !80, !7}
!195 = !{!196, !197}
!196 = !DILocalVariable(name: "err", arg: 1, scope: !192, file: !3, line: 85, type: !80)
!197 = !DILocalVariable(name: "fd", arg: 2, scope: !192, file: !3, line: 85, type: !7)
!198 = !DILocation(line: 85, column: 24, scope: !192)
!199 = !DILocation(line: 85, column: 33, scope: !192)
!200 = !DILocation(line: 86, column: 12, scope: !192)
!201 = !DILocation(line: 86, column: 5, scope: !192)
!202 = distinct !DISubprogram(name: "anetBlock", scope: !3, file: !3, line: 89, type: !193, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !203)
!203 = !{!204, !205}
!204 = !DILocalVariable(name: "err", arg: 1, scope: !202, file: !3, line: 89, type: !80)
!205 = !DILocalVariable(name: "fd", arg: 2, scope: !202, file: !3, line: 89, type: !7)
!206 = !DILocation(line: 89, column: 21, scope: !202)
!207 = !DILocation(line: 89, column: 30, scope: !202)
!208 = !DILocation(line: 90, column: 12, scope: !202)
!209 = !DILocation(line: 90, column: 5, scope: !202)
!210 = distinct !DISubprogram(name: "anetKeepAlive", scope: !3, file: !3, line: 96, type: !116, isLocal: false, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !211)
!211 = !{!212, !213, !214, !215, !216, !217, !218, !224, !225, !226, !227}
!212 = !DILocalVariable(name: "err", arg: 1, scope: !210, file: !3, line: 96, type: !80)
!213 = !DILocalVariable(name: "fd", arg: 2, scope: !210, file: !3, line: 96, type: !7)
!214 = !DILocalVariable(name: "interval", arg: 3, scope: !210, file: !3, line: 96, type: !7)
!215 = !DILocalVariable(name: "val", scope: !210, file: !3, line: 98, type: !7)
!216 = !DILocalVariable(name: "_dss_val", scope: !210, file: !3, line: 99, type: !6)
!217 = !DILocalVariable(name: "ret", scope: !210, file: !3, line: 102, type: !7)
!218 = !DILocalVariable(name: "tid", scope: !219, file: !3, line: 103, type: !41)
!219 = distinct !DILexicalBlock(scope: !220, file: !3, line: 103, column: 5)
!220 = distinct !DILexicalBlock(scope: !221, file: !3, line: 103, column: 5)
!221 = distinct !DILexicalBlock(scope: !222, file: !3, line: 103, column: 5)
!222 = distinct !DILexicalBlock(scope: !223, file: !3, line: 103, column: 5)
!223 = distinct !DILexicalBlock(scope: !210, file: !3, line: 103, column: 5)
!224 = !DILocalVariable(name: "_ret", scope: !219, file: !3, line: 103, type: !13)
!225 = !DILocalVariable(name: "_arg3", scope: !219, file: !3, line: 103, type: !13)
!226 = !DILocalVariable(name: "_arg4", scope: !219, file: !3, line: 103, type: !13)
!227 = !DILocalVariable(name: "_arg5", scope: !219, file: !3, line: 103, type: !13)
!228 = !DILocation(line: 96, column: 25, scope: !210)
!229 = !DILocation(line: 96, column: 34, scope: !210)
!230 = !DILocation(line: 96, column: 42, scope: !210)
!231 = !DILocation(line: 98, column: 5, scope: !210)
!232 = !DILocation(line: 99, column: 30, scope: !210)
!233 = !DILocation(line: 99, column: 49, scope: !210)
!234 = !DILocation(line: 99, column: 21, scope: !210)
!235 = !DILocation(line: 99, column: 10, scope: !210)
!236 = !DILocation(line: 100, column: 17, scope: !210)
!237 = !DILocation(line: 102, column: 5, scope: !210)
!238 = !DILocation(line: 120, column: 2, scope: !239, inlinedAt: !245)
!239 = distinct !DISubprogram(name: "ukarch_read_sp", scope: !240, file: !240, line: 116, type: !241, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !243)
!240 = !DIFile(filename: "/root/.unikraft/unikraft/arch/x86/x86_64/include/uk/asm/lcpu.h", directory: "/root/.unikraft/apps/redis/build")
!241 = !DISubroutineType(types: !242)
!242 = !{!12}
!243 = !{!244}
!244 = !DILocalVariable(name: "sp", scope: !239, file: !240, line: 118, type: !12)
!245 = distinct !DILocation(line: 103, column: 5, scope: !222)
!246 = !{i32 444436}
!247 = !DILocation(line: 118, column: 16, scope: !239, inlinedAt: !245)
!248 = !DILocation(line: 121, column: 2, scope: !239, inlinedAt: !245)
!249 = !DILocation(line: 103, column: 5, scope: !222)
!250 = !DILocation(line: 120, column: 2, scope: !239, inlinedAt: !251)
!251 = distinct !DILocation(line: 103, column: 5, scope: !222)
!252 = !DILocation(line: 118, column: 16, scope: !239, inlinedAt: !251)
!253 = !DILocation(line: 121, column: 2, scope: !239, inlinedAt: !251)
!254 = !DILocation(line: 103, column: 5, scope: !223)
!255 = !DILocation(line: 103, column: 5, scope: !256)
!256 = distinct !DILexicalBlock(scope: !222, file: !3, line: 103, column: 5)
!257 = !DILocation(line: 102, column: 9, scope: !210)
!258 = !DILocation(line: 120, column: 2, scope: !239, inlinedAt: !259)
!259 = distinct !DILocation(line: 49, column: 21, scope: !260, inlinedAt: !266)
!260 = distinct !DISubprogram(name: "uk_thread_get_tid", scope: !261, file: !261, line: 47, type: !262, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !264)
!261 = !DIFile(filename: "/root/.unikraft/unikraft/lib/flexos-core/include/flexos/impl/intelpku-impl.h", directory: "/root/.unikraft/apps/redis/build")
!262 = !DISubroutineType(types: !263)
!263 = !{!7}
!264 = !{!265}
!265 = !DILocalVariable(name: "sp", scope: !260, file: !261, line: 49, type: !12)
!266 = distinct !DILocation(line: 103, column: 5, scope: !219)
!267 = !DILocation(line: 118, column: 16, scope: !239, inlinedAt: !259)
!268 = !DILocation(line: 121, column: 2, scope: !239, inlinedAt: !259)
!269 = !DILocation(line: 49, column: 16, scope: !260, inlinedAt: !266)
!270 = !DILocation(line: 50, column: 19, scope: !260, inlinedAt: !266)
!271 = !DILocation(line: 50, column: 11, scope: !260, inlinedAt: !266)
!272 = !DILocation(line: 50, column: 9, scope: !260, inlinedAt: !266)
!273 = !DILocation(line: 50, column: 2, scope: !260, inlinedAt: !266)
!274 = !DILocation(line: 103, column: 5, scope: !219)
!275 = !{i32 -2146307502, i32 -2146307489, i32 -2146307464, i32 -2146307440, i32 -2146307415, i32 -2146307340, i32 -2146307315, i32 -2146307171, i32 -2146307146, i32 -2146303739, i32 -2146303650, i32 -2146303529, i32 -2146303434, i32 -2146303333, i32 -2146303306, i32 -2146303223, i32 -2146303134, i32 -2146303013, i32 -2146302913, i32 -2146302807, i32 -2146302699, i32 -2146306770, i32 -2146306717, i32 -2146306686, i32 -2146306655, i32 -2146306634, i32 -2146306612, i32 -2146306563, i32 -2146306542, i32 -2146306439, i32 -2146306407, i32 -2146302616, i32 -2146302527, i32 -2146302406, i32 -2146302307, i32 -2146302201, i32 -2146302099, i32 -2146302066, i32 -2146301993, i32 -2146301925, i32 -2146306217, i32 -2146306158, i32 -2146306105, i32 -2146306074, i32 -2146306043, i32 -2146306022, i32 -2146306000, i32 -2146305951, i32 -2146305930, i32 -2146301879, i32 -2146301790, i32 -2146301669, i32 -2146301570, i32 -2146301464, i32 -2146301362, i32 -2146301329, i32 -2146301246, i32 -2146301157, i32 -2146301036, i32 -2146300936, i32 -2146300910, i32 -2146300807, i32 -2146300781, i32 -2146305672, i32 -2146305647, i32 -2146305580, i32 -2146305555, i32 -2146305491, i32 -2146305409, i32 -2146305386, i32 -2146305361, i32 -2146305336}
!276 = !DILocation(line: 103, column: 5, scope: !277)
!277 = distinct !DILexicalBlock(scope: !278, file: !3, line: 103, column: 5)
!278 = distinct !DILexicalBlock(scope: !219, file: !3, line: 103, column: 5)
!279 = !{i32 -2146304252, i32 -2146304235}
!280 = !DILocation(line: 105, column: 9, scope: !281)
!281 = distinct !DILexicalBlock(scope: !210, file: !3, line: 105, column: 9)
!282 = !DILocation(line: 105, column: 13, scope: !281)
!283 = !DILocation(line: 105, column: 9, scope: !210)
!284 = !DILocation(line: 107, column: 67, scope: !285)
!285 = distinct !DILexicalBlock(scope: !281, file: !3, line: 106, column: 5)
!286 = !DILocation(line: 107, column: 58, scope: !285)
!287 = !DILocation(line: 107, column: 9, scope: !285)
!288 = !DILocation(line: 108, column: 9, scope: !285)
!289 = !DILocation(line: 0, scope: !210)
!290 = !DILocation(line: 0, scope: !285)
!291 = !DILocation(line: 154, column: 1, scope: !210)
!292 = distinct !DISubprogram(name: "anetEnableTcpNoDelay", scope: !3, file: !3, line: 172, type: !193, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !293)
!293 = !{!294, !295}
!294 = !DILocalVariable(name: "err", arg: 1, scope: !292, file: !3, line: 172, type: !80)
!295 = !DILocalVariable(name: "fd", arg: 2, scope: !292, file: !3, line: 172, type: !7)
!296 = !DILocation(line: 172, column: 32, scope: !292)
!297 = !DILocation(line: 172, column: 41, scope: !292)
!298 = !DILocation(line: 174, column: 12, scope: !292)
!299 = !DILocation(line: 174, column: 5, scope: !292)
!300 = distinct !DISubprogram(name: "anetSetTcpNoDelay", scope: !3, file: !3, line: 156, type: !116, isLocal: true, isDefinition: true, scopeLine: 157, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !301)
!301 = !{!302, !303, !304, !305, !306, !307, !308, !314, !315, !316, !317}
!302 = !DILocalVariable(name: "err", arg: 1, scope: !300, file: !3, line: 156, type: !80)
!303 = !DILocalVariable(name: "fd", arg: 2, scope: !300, file: !3, line: 156, type: !7)
!304 = !DILocalVariable(name: "val", arg: 3, scope: !300, file: !3, line: 156, type: !7)
!305 = !DILocalVariable(name: "_val", scope: !300, file: !3, line: 158, type: !7)
!306 = !DILocalVariable(name: "_dss__val", scope: !300, file: !3, line: 159, type: !6)
!307 = !DILocalVariable(name: "ret", scope: !300, file: !3, line: 161, type: !7)
!308 = !DILocalVariable(name: "tid", scope: !309, file: !3, line: 162, type: !41)
!309 = distinct !DILexicalBlock(scope: !310, file: !3, line: 162, column: 5)
!310 = distinct !DILexicalBlock(scope: !311, file: !3, line: 162, column: 5)
!311 = distinct !DILexicalBlock(scope: !312, file: !3, line: 162, column: 5)
!312 = distinct !DILexicalBlock(scope: !313, file: !3, line: 162, column: 5)
!313 = distinct !DILexicalBlock(scope: !300, file: !3, line: 162, column: 5)
!314 = !DILocalVariable(name: "_ret", scope: !309, file: !3, line: 162, type: !13)
!315 = !DILocalVariable(name: "_arg3", scope: !309, file: !3, line: 162, type: !13)
!316 = !DILocalVariable(name: "_arg4", scope: !309, file: !3, line: 162, type: !13)
!317 = !DILocalVariable(name: "_arg5", scope: !309, file: !3, line: 162, type: !13)
!318 = !DILocation(line: 156, column: 36, scope: !300)
!319 = !DILocation(line: 156, column: 45, scope: !300)
!320 = !DILocation(line: 156, column: 53, scope: !300)
!321 = !DILocation(line: 158, column: 5, scope: !300)
!322 = !DILocation(line: 159, column: 31, scope: !300)
!323 = !DILocation(line: 159, column: 51, scope: !300)
!324 = !DILocation(line: 159, column: 22, scope: !300)
!325 = !DILocation(line: 159, column: 10, scope: !300)
!326 = !DILocation(line: 160, column: 18, scope: !300)
!327 = !DILocation(line: 161, column: 5, scope: !300)
!328 = !DILocation(line: 120, column: 2, scope: !239, inlinedAt: !329)
!329 = distinct !DILocation(line: 162, column: 5, scope: !312)
!330 = !DILocation(line: 118, column: 16, scope: !239, inlinedAt: !329)
!331 = !DILocation(line: 121, column: 2, scope: !239, inlinedAt: !329)
!332 = !DILocation(line: 162, column: 5, scope: !312)
!333 = !DILocation(line: 120, column: 2, scope: !239, inlinedAt: !334)
!334 = distinct !DILocation(line: 162, column: 5, scope: !312)
!335 = !DILocation(line: 118, column: 16, scope: !239, inlinedAt: !334)
!336 = !DILocation(line: 121, column: 2, scope: !239, inlinedAt: !334)
!337 = !DILocation(line: 162, column: 5, scope: !313)
!338 = !DILocation(line: 162, column: 5, scope: !339)
!339 = distinct !DILexicalBlock(scope: !312, file: !3, line: 162, column: 5)
!340 = !DILocation(line: 161, column: 9, scope: !300)
!341 = !DILocation(line: 120, column: 2, scope: !239, inlinedAt: !342)
!342 = distinct !DILocation(line: 49, column: 21, scope: !260, inlinedAt: !343)
!343 = distinct !DILocation(line: 162, column: 5, scope: !309)
!344 = !DILocation(line: 118, column: 16, scope: !239, inlinedAt: !342)
!345 = !DILocation(line: 121, column: 2, scope: !239, inlinedAt: !342)
!346 = !DILocation(line: 49, column: 16, scope: !260, inlinedAt: !343)
!347 = !DILocation(line: 50, column: 19, scope: !260, inlinedAt: !343)
!348 = !DILocation(line: 50, column: 11, scope: !260, inlinedAt: !343)
!349 = !DILocation(line: 50, column: 9, scope: !260, inlinedAt: !343)
!350 = !DILocation(line: 50, column: 2, scope: !260, inlinedAt: !343)
!351 = !DILocation(line: 162, column: 5, scope: !309)
!352 = !{i32 -2146298016, i32 -2146298003, i32 -2146297978, i32 -2146297954, i32 -2146297929, i32 -2146297854, i32 -2146297829, i32 -2146297685, i32 -2146297660, i32 -2146294263, i32 -2146294174, i32 -2146294053, i32 -2146293958, i32 -2146293857, i32 -2146293830, i32 -2146293747, i32 -2146293658, i32 -2146293537, i32 -2146293437, i32 -2146293331, i32 -2146293223, i32 -2146297284, i32 -2146297231, i32 -2146297200, i32 -2146297169, i32 -2146297148, i32 -2146297126, i32 -2146297077, i32 -2146297056, i32 -2146296953, i32 -2146296921, i32 -2146293140, i32 -2146293051, i32 -2146292930, i32 -2146292831, i32 -2146292725, i32 -2146292623, i32 -2146292590, i32 -2146292517, i32 -2146292449, i32 -2146296731, i32 -2146296672, i32 -2146296619, i32 -2146296588, i32 -2146296557, i32 -2146296536, i32 -2146296514, i32 -2146296465, i32 -2146296444, i32 -2146292403, i32 -2146292314, i32 -2146292193, i32 -2146292094, i32 -2146291988, i32 -2146291886, i32 -2146291853, i32 -2146291770, i32 -2146291681, i32 -2146291560, i32 -2146291460, i32 -2146291434, i32 -2146291331, i32 -2146291305, i32 -2146296186, i32 -2146296161, i32 -2146296094, i32 -2146296069, i32 -2146296005, i32 -2146295923, i32 -2146295900, i32 -2146295875, i32 -2146295850}
!353 = !DILocation(line: 162, column: 5, scope: !354)
!354 = distinct !DILexicalBlock(scope: !355, file: !3, line: 162, column: 5)
!355 = distinct !DILexicalBlock(scope: !309, file: !3, line: 162, column: 5)
!356 = !{i32 -2146294766, i32 -2146294749}
!357 = !DILocation(line: 164, column: 9, scope: !358)
!358 = distinct !DILexicalBlock(scope: !300, file: !3, line: 164, column: 9)
!359 = !DILocation(line: 164, column: 13, scope: !358)
!360 = !DILocation(line: 164, column: 9, scope: !300)
!361 = !DILocation(line: 166, column: 66, scope: !362)
!362 = distinct !DILexicalBlock(scope: !358, file: !3, line: 165, column: 5)
!363 = !DILocation(line: 166, column: 57, scope: !362)
!364 = !DILocation(line: 166, column: 9, scope: !362)
!365 = !DILocation(line: 167, column: 9, scope: !362)
!366 = !DILocation(line: 0, scope: !300)
!367 = !DILocation(line: 0, scope: !362)
!368 = !DILocation(line: 170, column: 1, scope: !300)
!369 = distinct !DISubprogram(name: "anetDisableTcpNoDelay", scope: !3, file: !3, line: 177, type: !193, isLocal: false, isDefinition: true, scopeLine: 178, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !370)
!370 = !{!371, !372}
!371 = !DILocalVariable(name: "err", arg: 1, scope: !369, file: !3, line: 177, type: !80)
!372 = !DILocalVariable(name: "fd", arg: 2, scope: !369, file: !3, line: 177, type: !7)
!373 = !DILocation(line: 177, column: 33, scope: !369)
!374 = !DILocation(line: 177, column: 42, scope: !369)
!375 = !DILocation(line: 179, column: 12, scope: !369)
!376 = !DILocation(line: 179, column: 5, scope: !369)
!377 = distinct !DISubprogram(name: "anetSetSendBuffer", scope: !3, file: !3, line: 183, type: !116, isLocal: false, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !378)
!378 = !{!379, !380, !381, !382, !383, !389, !390, !391, !392}
!379 = !DILocalVariable(name: "err", arg: 1, scope: !377, file: !3, line: 183, type: !80)
!380 = !DILocalVariable(name: "fd", arg: 2, scope: !377, file: !3, line: 183, type: !7)
!381 = !DILocalVariable(name: "buffsize", arg: 3, scope: !377, file: !3, line: 183, type: !7)
!382 = !DILocalVariable(name: "ret", scope: !377, file: !3, line: 185, type: !7)
!383 = !DILocalVariable(name: "tid", scope: !384, file: !3, line: 186, type: !41)
!384 = distinct !DILexicalBlock(scope: !385, file: !3, line: 186, column: 5)
!385 = distinct !DILexicalBlock(scope: !386, file: !3, line: 186, column: 5)
!386 = distinct !DILexicalBlock(scope: !387, file: !3, line: 186, column: 5)
!387 = distinct !DILexicalBlock(scope: !388, file: !3, line: 186, column: 5)
!388 = distinct !DILexicalBlock(scope: !377, file: !3, line: 186, column: 5)
!389 = !DILocalVariable(name: "_ret", scope: !384, file: !3, line: 186, type: !13)
!390 = !DILocalVariable(name: "_arg3", scope: !384, file: !3, line: 186, type: !13)
!391 = !DILocalVariable(name: "_arg4", scope: !384, file: !3, line: 186, type: !13)
!392 = !DILocalVariable(name: "_arg5", scope: !384, file: !3, line: 186, type: !13)
!393 = !DILocation(line: 183, column: 29, scope: !377)
!394 = !DILocation(line: 183, column: 38, scope: !377)
!395 = !DILocation(line: 183, column: 46, scope: !377)
!396 = !DILocation(line: 185, column: 5, scope: !377)
!397 = !DILocation(line: 120, column: 2, scope: !239, inlinedAt: !398)
!398 = distinct !DILocation(line: 186, column: 5, scope: !387)
!399 = !DILocation(line: 118, column: 16, scope: !239, inlinedAt: !398)
!400 = !DILocation(line: 121, column: 2, scope: !239, inlinedAt: !398)
!401 = !DILocation(line: 186, column: 5, scope: !387)
!402 = !DILocation(line: 120, column: 2, scope: !239, inlinedAt: !403)
!403 = distinct !DILocation(line: 186, column: 5, scope: !387)
!404 = !DILocation(line: 118, column: 16, scope: !239, inlinedAt: !403)
!405 = !DILocation(line: 121, column: 2, scope: !239, inlinedAt: !403)
!406 = !DILocation(line: 186, column: 5, scope: !388)
!407 = !DILocation(line: 186, column: 5, scope: !408)
!408 = distinct !DILexicalBlock(scope: !387, file: !3, line: 186, column: 5)
!409 = !DILocation(line: 185, column: 9, scope: !377)
!410 = !DILocation(line: 120, column: 2, scope: !239, inlinedAt: !411)
!411 = distinct !DILocation(line: 49, column: 21, scope: !260, inlinedAt: !412)
!412 = distinct !DILocation(line: 186, column: 5, scope: !384)
!413 = !DILocation(line: 118, column: 16, scope: !239, inlinedAt: !411)
!414 = !DILocation(line: 121, column: 2, scope: !239, inlinedAt: !411)
!415 = !DILocation(line: 49, column: 16, scope: !260, inlinedAt: !412)
!416 = !DILocation(line: 50, column: 19, scope: !260, inlinedAt: !412)
!417 = !DILocation(line: 50, column: 11, scope: !260, inlinedAt: !412)
!418 = !DILocation(line: 50, column: 9, scope: !260, inlinedAt: !412)
!419 = !DILocation(line: 50, column: 2, scope: !260, inlinedAt: !412)
!420 = !DILocation(line: 186, column: 5, scope: !384)
!421 = !{i32 -2146288609, i32 -2146288596, i32 -2146288571, i32 -2146288547, i32 -2146288522, i32 -2146288447, i32 -2146288422, i32 -2146288278, i32 -2146288253, i32 -2146284852, i32 -2146284763, i32 -2146284642, i32 -2146284547, i32 -2146284446, i32 -2146284419, i32 -2146284336, i32 -2146284247, i32 -2146284126, i32 -2146284026, i32 -2146283920, i32 -2146283812, i32 -2146287877, i32 -2146287824, i32 -2146287793, i32 -2146287762, i32 -2146287741, i32 -2146287719, i32 -2146287670, i32 -2146287649, i32 -2146287546, i32 -2146287514, i32 -2146283729, i32 -2146283640, i32 -2146283519, i32 -2146283420, i32 -2146283314, i32 -2146283212, i32 -2146283179, i32 -2146283106, i32 -2146283038, i32 -2146287324, i32 -2146287265, i32 -2146287212, i32 -2146287181, i32 -2146287150, i32 -2146287129, i32 -2146287107, i32 -2146287058, i32 -2146287037, i32 -2146282992, i32 -2146282903, i32 -2146282782, i32 -2146282683, i32 -2146282577, i32 -2146282475, i32 -2146282442, i32 -2146282359, i32 -2146282270, i32 -2146282149, i32 -2146282049, i32 -2146282023, i32 -2146281920, i32 -2146281894, i32 -2146286779, i32 -2146286754, i32 -2146286687, i32 -2146286662, i32 -2146286598, i32 -2146286516, i32 -2146286493, i32 -2146286468, i32 -2146286443}
!422 = !DILocation(line: 186, column: 5, scope: !423)
!423 = distinct !DILexicalBlock(scope: !424, file: !3, line: 186, column: 5)
!424 = distinct !DILexicalBlock(scope: !384, file: !3, line: 186, column: 5)
!425 = !{i32 -2146285359, i32 -2146285342}
!426 = !DILocation(line: 188, column: 9, scope: !427)
!427 = distinct !DILexicalBlock(scope: !377, file: !3, line: 188, column: 9)
!428 = !DILocation(line: 188, column: 13, scope: !427)
!429 = !DILocation(line: 188, column: 9, scope: !377)
!430 = !DILocation(line: 190, column: 64, scope: !431)
!431 = distinct !DILexicalBlock(scope: !427, file: !3, line: 189, column: 5)
!432 = !DILocation(line: 190, column: 55, scope: !431)
!433 = !DILocation(line: 190, column: 9, scope: !431)
!434 = !DILocation(line: 191, column: 9, scope: !431)
!435 = !DILocation(line: 0, scope: !377)
!436 = !DILocation(line: 0, scope: !431)
!437 = !DILocation(line: 194, column: 1, scope: !377)
!438 = distinct !DISubprogram(name: "anetTcpKeepAlive", scope: !3, file: !3, line: 196, type: !193, isLocal: false, isDefinition: true, scopeLine: 197, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !439)
!439 = !{!440, !441, !442, !443, !444, !450, !451, !452, !453}
!440 = !DILocalVariable(name: "err", arg: 1, scope: !438, file: !3, line: 196, type: !80)
!441 = !DILocalVariable(name: "fd", arg: 2, scope: !438, file: !3, line: 196, type: !7)
!442 = !DILocalVariable(name: "yes", scope: !438, file: !3, line: 198, type: !7)
!443 = !DILocalVariable(name: "ret", scope: !438, file: !3, line: 199, type: !7)
!444 = !DILocalVariable(name: "tid", scope: !445, file: !3, line: 200, type: !41)
!445 = distinct !DILexicalBlock(scope: !446, file: !3, line: 200, column: 5)
!446 = distinct !DILexicalBlock(scope: !447, file: !3, line: 200, column: 5)
!447 = distinct !DILexicalBlock(scope: !448, file: !3, line: 200, column: 5)
!448 = distinct !DILexicalBlock(scope: !449, file: !3, line: 200, column: 5)
!449 = distinct !DILexicalBlock(scope: !438, file: !3, line: 200, column: 5)
!450 = !DILocalVariable(name: "_ret", scope: !445, file: !3, line: 200, type: !13)
!451 = !DILocalVariable(name: "_arg3", scope: !445, file: !3, line: 200, type: !13)
!452 = !DILocalVariable(name: "_arg4", scope: !445, file: !3, line: 200, type: !13)
!453 = !DILocalVariable(name: "_arg5", scope: !445, file: !3, line: 200, type: !13)
!454 = !DILocation(line: 196, column: 28, scope: !438)
!455 = !DILocation(line: 196, column: 37, scope: !438)
!456 = !DILocation(line: 198, column: 5, scope: !438)
!457 = !DILocation(line: 198, column: 9, scope: !438)
!458 = !DILocation(line: 199, column: 5, scope: !438)
!459 = !DILocation(line: 120, column: 2, scope: !239, inlinedAt: !460)
!460 = distinct !DILocation(line: 200, column: 5, scope: !448)
!461 = !DILocation(line: 118, column: 16, scope: !239, inlinedAt: !460)
!462 = !DILocation(line: 121, column: 2, scope: !239, inlinedAt: !460)
!463 = !DILocation(line: 200, column: 5, scope: !448)
!464 = !DILocation(line: 120, column: 2, scope: !239, inlinedAt: !465)
!465 = distinct !DILocation(line: 200, column: 5, scope: !448)
!466 = !DILocation(line: 118, column: 16, scope: !239, inlinedAt: !465)
!467 = !DILocation(line: 121, column: 2, scope: !239, inlinedAt: !465)
!468 = !DILocation(line: 200, column: 5, scope: !449)
!469 = !DILocation(line: 200, column: 5, scope: !470)
!470 = distinct !DILexicalBlock(scope: !448, file: !3, line: 200, column: 5)
!471 = !DILocation(line: 199, column: 9, scope: !438)
!472 = !DILocation(line: 120, column: 2, scope: !239, inlinedAt: !473)
!473 = distinct !DILocation(line: 49, column: 21, scope: !260, inlinedAt: !474)
!474 = distinct !DILocation(line: 200, column: 5, scope: !445)
!475 = !DILocation(line: 118, column: 16, scope: !239, inlinedAt: !473)
!476 = !DILocation(line: 121, column: 2, scope: !239, inlinedAt: !473)
!477 = !DILocation(line: 49, column: 16, scope: !260, inlinedAt: !474)
!478 = !DILocation(line: 50, column: 19, scope: !260, inlinedAt: !474)
!479 = !DILocation(line: 50, column: 11, scope: !260, inlinedAt: !474)
!480 = !DILocation(line: 50, column: 9, scope: !260, inlinedAt: !474)
!481 = !DILocation(line: 50, column: 2, scope: !260, inlinedAt: !474)
!482 = !DILocation(line: 200, column: 5, scope: !445)
!483 = !{i32 -2146279330, i32 -2146279317, i32 -2146279292, i32 -2146279268, i32 -2146279243, i32 -2146279168, i32 -2146279143, i32 -2146278999, i32 -2146278974, i32 -2146275583, i32 -2146275494, i32 -2146275373, i32 -2146275278, i32 -2146275177, i32 -2146275150, i32 -2146275067, i32 -2146274978, i32 -2146274857, i32 -2146274757, i32 -2146274651, i32 -2146274543, i32 -2146278598, i32 -2146278545, i32 -2146278514, i32 -2146278483, i32 -2146278462, i32 -2146278440, i32 -2146278391, i32 -2146278370, i32 -2146278267, i32 -2146278235, i32 -2146274460, i32 -2146274371, i32 -2146274250, i32 -2146274151, i32 -2146274045, i32 -2146273943, i32 -2146273910, i32 -2146273837, i32 -2146273769, i32 -2146278045, i32 -2146277986, i32 -2146277933, i32 -2146277902, i32 -2146277871, i32 -2146277850, i32 -2146277828, i32 -2146277779, i32 -2146277758, i32 -2146273723, i32 -2146273634, i32 -2146273513, i32 -2146273414, i32 -2146273308, i32 -2146273206, i32 -2146273173, i32 -2146273090, i32 -2146273001, i32 -2146272880, i32 -2146272780, i32 -2146272754, i32 -2146272651, i32 -2146272625, i32 -2146277500, i32 -2146277475, i32 -2146277408, i32 -2146277383, i32 -2146277319, i32 -2146277237, i32 -2146277214, i32 -2146277189, i32 -2146277164}
!484 = !DILocation(line: 200, column: 5, scope: !485)
!485 = distinct !DILexicalBlock(scope: !486, file: !3, line: 200, column: 5)
!486 = distinct !DILexicalBlock(scope: !445, file: !3, line: 200, column: 5)
!487 = !{i32 -2146276080, i32 -2146276063}
!488 = !DILocation(line: 202, column: 9, scope: !489)
!489 = distinct !DILexicalBlock(scope: !438, file: !3, line: 202, column: 9)
!490 = !DILocation(line: 202, column: 13, scope: !489)
!491 = !DILocation(line: 202, column: 9, scope: !438)
!492 = !DILocation(line: 203, column: 67, scope: !493)
!493 = distinct !DILexicalBlock(scope: !489, file: !3, line: 202, column: 20)
!494 = !DILocation(line: 203, column: 58, scope: !493)
!495 = !DILocation(line: 203, column: 9, scope: !493)
!496 = !DILocation(line: 204, column: 9, scope: !493)
!497 = !DILocation(line: 0, scope: !438)
!498 = !DILocation(line: 0, scope: !493)
!499 = !DILocation(line: 207, column: 1, scope: !438)
!500 = distinct !DISubprogram(name: "anetSendTimeout", scope: !3, file: !3, line: 211, type: !501, isLocal: false, isDefinition: true, scopeLine: 211, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !504)
!501 = !DISubroutineType(types: !502)
!502 = !{!7, !80, !7, !503}
!503 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!504 = !{!505, !506, !507, !508, !517, !518, !524, !525, !526, !527}
!505 = !DILocalVariable(name: "err", arg: 1, scope: !500, file: !3, line: 211, type: !80)
!506 = !DILocalVariable(name: "fd", arg: 2, scope: !500, file: !3, line: 211, type: !7)
!507 = !DILocalVariable(name: "ms", arg: 3, scope: !500, file: !3, line: 211, type: !503)
!508 = !DILocalVariable(name: "tv", scope: !500, file: !3, line: 212, type: !509)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !510, line: 44, size: 128, elements: !511)
!510 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!511 = !{!512, !515}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !509, file: !510, line: 45, baseType: !513, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !510, line: 34, baseType: !514)
!514 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !509, file: !510, line: 46, baseType: !516, size: 64, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "suseconds_t", file: !510, line: 39, baseType: !514)
!517 = !DILocalVariable(name: "ret", scope: !500, file: !3, line: 216, type: !7)
!518 = !DILocalVariable(name: "tid", scope: !519, file: !3, line: 217, type: !41)
!519 = distinct !DILexicalBlock(scope: !520, file: !3, line: 217, column: 5)
!520 = distinct !DILexicalBlock(scope: !521, file: !3, line: 217, column: 5)
!521 = distinct !DILexicalBlock(scope: !522, file: !3, line: 217, column: 5)
!522 = distinct !DILexicalBlock(scope: !523, file: !3, line: 217, column: 5)
!523 = distinct !DILexicalBlock(scope: !500, file: !3, line: 217, column: 5)
!524 = !DILocalVariable(name: "_ret", scope: !519, file: !3, line: 217, type: !13)
!525 = !DILocalVariable(name: "_arg3", scope: !519, file: !3, line: 217, type: !13)
!526 = !DILocalVariable(name: "_arg4", scope: !519, file: !3, line: 217, type: !13)
!527 = !DILocalVariable(name: "_arg5", scope: !519, file: !3, line: 217, type: !13)
!528 = !DILocation(line: 211, column: 27, scope: !500)
!529 = !DILocation(line: 211, column: 36, scope: !500)
!530 = !DILocation(line: 211, column: 50, scope: !500)
!531 = !DILocation(line: 212, column: 5, scope: !500)
!532 = !DILocation(line: 214, column: 19, scope: !500)
!533 = !DILocation(line: 214, column: 8, scope: !500)
!534 = !DILocation(line: 214, column: 15, scope: !500)
!535 = !{!536, !537, i64 0}
!536 = !{!"timeval", !537, i64 0, !537, i64 8}
!537 = !{!"long", !135, i64 0}
!538 = !DILocation(line: 215, column: 21, scope: !500)
!539 = !DILocation(line: 215, column: 27, scope: !500)
!540 = !DILocation(line: 215, column: 8, scope: !500)
!541 = !DILocation(line: 215, column: 16, scope: !500)
!542 = !{!536, !537, i64 8}
!543 = !DILocation(line: 216, column: 5, scope: !500)
!544 = !DILocation(line: 120, column: 2, scope: !239, inlinedAt: !545)
!545 = distinct !DILocation(line: 217, column: 5, scope: !522)
!546 = !DILocation(line: 118, column: 16, scope: !239, inlinedAt: !545)
!547 = !DILocation(line: 121, column: 2, scope: !239, inlinedAt: !545)
!548 = !DILocation(line: 217, column: 5, scope: !522)
!549 = !DILocation(line: 120, column: 2, scope: !239, inlinedAt: !550)
!550 = distinct !DILocation(line: 217, column: 5, scope: !522)
!551 = !DILocation(line: 118, column: 16, scope: !239, inlinedAt: !550)
!552 = !DILocation(line: 121, column: 2, scope: !239, inlinedAt: !550)
!553 = !DILocation(line: 217, column: 5, scope: !523)
!554 = !DILocation(line: 217, column: 5, scope: !555)
!555 = distinct !DILexicalBlock(scope: !522, file: !3, line: 217, column: 5)
!556 = !DILocation(line: 216, column: 9, scope: !500)
!557 = !DILocation(line: 120, column: 2, scope: !239, inlinedAt: !558)
!558 = distinct !DILocation(line: 49, column: 21, scope: !260, inlinedAt: !559)
!559 = distinct !DILocation(line: 217, column: 5, scope: !519)
!560 = !DILocation(line: 118, column: 16, scope: !239, inlinedAt: !558)
!561 = !DILocation(line: 121, column: 2, scope: !239, inlinedAt: !558)
!562 = !DILocation(line: 49, column: 16, scope: !260, inlinedAt: !559)
!563 = !DILocation(line: 50, column: 19, scope: !260, inlinedAt: !559)
!564 = !DILocation(line: 50, column: 11, scope: !260, inlinedAt: !559)
!565 = !DILocation(line: 50, column: 9, scope: !260, inlinedAt: !559)
!566 = !DILocation(line: 50, column: 2, scope: !260, inlinedAt: !559)
!567 = !DILocation(line: 217, column: 5, scope: !519)
!568 = !{i32 -2146269995, i32 -2146269982, i32 -2146269957, i32 -2146269933, i32 -2146269908, i32 -2146269833, i32 -2146269808, i32 -2146269664, i32 -2146269639, i32 -2146266250, i32 -2146266161, i32 -2146266040, i32 -2146265945, i32 -2146265844, i32 -2146265817, i32 -2146265734, i32 -2146265645, i32 -2146265524, i32 -2146265424, i32 -2146265318, i32 -2146265210, i32 -2146269263, i32 -2146269210, i32 -2146269179, i32 -2146269148, i32 -2146269127, i32 -2146269105, i32 -2146269056, i32 -2146269035, i32 -2146268932, i32 -2146268900, i32 -2146265127, i32 -2146265038, i32 -2146264917, i32 -2146264818, i32 -2146264712, i32 -2146264610, i32 -2146264577, i32 -2146264504, i32 -2146264436, i32 -2146268710, i32 -2146268651, i32 -2146268598, i32 -2146268567, i32 -2146268536, i32 -2146268515, i32 -2146268493, i32 -2146268444, i32 -2146268423, i32 -2146264390, i32 -2146264301, i32 -2146264180, i32 -2146264081, i32 -2146263975, i32 -2146263873, i32 -2146263840, i32 -2146263757, i32 -2146263668, i32 -2146263547, i32 -2146263447, i32 -2146263421, i32 -2146263318, i32 -2146263292, i32 -2146268165, i32 -2146268140, i32 -2146268073, i32 -2146268048, i32 -2146267984, i32 -2146267902, i32 -2146267879, i32 -2146267854, i32 -2146267829}
!569 = !DILocation(line: 217, column: 5, scope: !570)
!570 = distinct !DILexicalBlock(scope: !571, file: !3, line: 217, column: 5)
!571 = distinct !DILexicalBlock(scope: !519, file: !3, line: 217, column: 5)
!572 = !{i32 -2146266745, i32 -2146266728}
!573 = !DILocation(line: 219, column: 9, scope: !574)
!574 = distinct !DILexicalBlock(scope: !500, file: !3, line: 219, column: 9)
!575 = !DILocation(line: 219, column: 13, scope: !574)
!576 = !DILocation(line: 219, column: 9, scope: !500)
!577 = !DILocation(line: 220, column: 66, scope: !578)
!578 = distinct !DILexicalBlock(scope: !574, file: !3, line: 219, column: 20)
!579 = !DILocation(line: 220, column: 57, scope: !578)
!580 = !DILocation(line: 220, column: 9, scope: !578)
!581 = !DILocation(line: 221, column: 9, scope: !578)
!582 = !DILocation(line: 0, scope: !500)
!583 = !DILocation(line: 0, scope: !578)
!584 = !DILocation(line: 224, column: 1, scope: !500)
!585 = distinct !DISubprogram(name: "anetGenericResolve", scope: !3, file: !3, line: 233, type: !586, isLocal: false, isDefinition: true, scopeLine: 235, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !592)
!586 = !DISubroutineType(types: !587)
!587 = !{!7, !80, !80, !80, !588, !7}
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !589, line: 40, baseType: !590)
!589 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !591, line: 129, baseType: !12)
!591 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!592 = !{!593, !594, !595, !596, !597, !598, !599, !600, !601, !607, !608, !609, !610, !613}
!593 = !DILocalVariable(name: "err", arg: 1, scope: !585, file: !3, line: 233, type: !80)
!594 = !DILocalVariable(name: "host", arg: 2, scope: !585, file: !3, line: 233, type: !80)
!595 = !DILocalVariable(name: "ipbuf", arg: 3, scope: !585, file: !3, line: 233, type: !80)
!596 = !DILocalVariable(name: "ipbuf_len", arg: 4, scope: !585, file: !3, line: 233, type: !588)
!597 = !DILocalVariable(name: "flags", arg: 5, scope: !585, file: !3, line: 234, type: !7)
!598 = !DILocalVariable(name: "hints", scope: !585, file: !3, line: 236, type: !82)
!599 = !DILocalVariable(name: "info", scope: !585, file: !3, line: 236, type: !81)
!600 = !DILocalVariable(name: "rv", scope: !585, file: !3, line: 237, type: !7)
!601 = !DILocalVariable(name: "tid", scope: !602, file: !3, line: 244, type: !41)
!602 = distinct !DILexicalBlock(scope: !603, file: !3, line: 244, column: 5)
!603 = distinct !DILexicalBlock(scope: !604, file: !3, line: 244, column: 5)
!604 = distinct !DILexicalBlock(scope: !605, file: !3, line: 244, column: 5)
!605 = distinct !DILexicalBlock(scope: !606, file: !3, line: 244, column: 5)
!606 = distinct !DILexicalBlock(scope: !585, file: !3, line: 244, column: 5)
!607 = !DILocalVariable(name: "_ret", scope: !602, file: !3, line: 244, type: !13)
!608 = !DILocalVariable(name: "_arg3", scope: !602, file: !3, line: 244, type: !13)
!609 = !DILocalVariable(name: "_arg4", scope: !602, file: !3, line: 244, type: !13)
!610 = !DILocalVariable(name: "sa", scope: !611, file: !3, line: 250, type: !16)
!611 = distinct !DILexicalBlock(scope: !612, file: !3, line: 249, column: 37)
!612 = distinct !DILexicalBlock(scope: !585, file: !3, line: 249, column: 9)
!613 = !DILocalVariable(name: "sa", scope: !614, file: !3, line: 253, type: !49)
!614 = distinct !DILexicalBlock(scope: !612, file: !3, line: 252, column: 12)
!615 = !DILocation(line: 233, column: 30, scope: !585)
!616 = !DILocation(line: 233, column: 41, scope: !585)
!617 = !DILocation(line: 233, column: 53, scope: !585)
!618 = !DILocation(line: 233, column: 67, scope: !585)
!619 = !DILocation(line: 234, column: 28, scope: !585)
!620 = !DILocation(line: 236, column: 5, scope: !585)
!621 = !DILocation(line: 237, column: 5, scope: !585)
!622 = !DILocation(line: 239, column: 5, scope: !585)
!623 = !DILocation(line: 240, column: 15, scope: !624)
!624 = distinct !DILexicalBlock(scope: !585, file: !3, line: 240, column: 9)
!625 = !DILocation(line: 240, column: 9, scope: !585)
!626 = !DILocation(line: 240, column: 37, scope: !624)
!627 = !DILocation(line: 240, column: 46, scope: !624)
!628 = !{!629, !134, i64 0}
!629 = !{!"addrinfo", !134, i64 0, !134, i64 4, !134, i64 8, !134, i64 12, !134, i64 16, !630, i64 24, !630, i64 32, !630, i64 40}
!630 = !{!"any pointer", !135, i64 0}
!631 = !DILocation(line: 240, column: 31, scope: !624)
!632 = !DILocation(line: 241, column: 11, scope: !585)
!633 = !DILocation(line: 241, column: 21, scope: !585)
!634 = !{!629, !134, i64 4}
!635 = !DILocation(line: 242, column: 11, scope: !585)
!636 = !DILocation(line: 242, column: 23, scope: !585)
!637 = !{!629, !134, i64 8}
!638 = !DILocation(line: 120, column: 2, scope: !239, inlinedAt: !639)
!639 = distinct !DILocation(line: 244, column: 5, scope: !605)
!640 = !DILocation(line: 118, column: 16, scope: !239, inlinedAt: !639)
!641 = !DILocation(line: 121, column: 2, scope: !239, inlinedAt: !639)
!642 = !DILocation(line: 244, column: 5, scope: !605)
!643 = !DILocation(line: 120, column: 2, scope: !239, inlinedAt: !644)
!644 = distinct !DILocation(line: 244, column: 5, scope: !605)
!645 = !DILocation(line: 118, column: 16, scope: !239, inlinedAt: !644)
!646 = !DILocation(line: 121, column: 2, scope: !239, inlinedAt: !644)
!647 = !DILocation(line: 244, column: 5, scope: !606)
!648 = !DILocation(line: 236, column: 21, scope: !585)
!649 = !DILocation(line: 236, column: 29, scope: !585)
!650 = !DILocation(line: 244, column: 5, scope: !651)
!651 = distinct !DILexicalBlock(scope: !605, file: !3, line: 244, column: 5)
!652 = !DILocation(line: 237, column: 9, scope: !585)
!653 = !DILocation(line: 120, column: 2, scope: !239, inlinedAt: !654)
!654 = distinct !DILocation(line: 49, column: 21, scope: !260, inlinedAt: !655)
!655 = distinct !DILocation(line: 244, column: 5, scope: !602)
!656 = !DILocation(line: 118, column: 16, scope: !239, inlinedAt: !654)
!657 = !DILocation(line: 121, column: 2, scope: !239, inlinedAt: !654)
!658 = !DILocation(line: 49, column: 16, scope: !260, inlinedAt: !655)
!659 = !DILocation(line: 50, column: 19, scope: !260, inlinedAt: !655)
!660 = !DILocation(line: 50, column: 11, scope: !260, inlinedAt: !655)
!661 = !DILocation(line: 50, column: 9, scope: !260, inlinedAt: !655)
!662 = !DILocation(line: 50, column: 2, scope: !260, inlinedAt: !655)
!663 = !DILocation(line: 244, column: 5, scope: !602)
!664 = !{i32 -2146260932, i32 -2146260919, i32 -2146260894, i32 -2146260870, i32 -2146260845, i32 -2146260770, i32 -2146260745, i32 -2146260601, i32 -2146260576, i32 -2146257257, i32 -2146257168, i32 -2146257047, i32 -2146256952, i32 -2146256851, i32 -2146256824, i32 -2146256741, i32 -2146256652, i32 -2146256531, i32 -2146256431, i32 -2146256325, i32 -2146256217, i32 -2146260239, i32 -2146260186, i32 -2146260155, i32 -2146260124, i32 -2146260103, i32 -2146260081, i32 -2146260032, i32 -2146260011, i32 -2146259908, i32 -2146259876, i32 -2146256134, i32 -2146256045, i32 -2146255924, i32 -2146255825, i32 -2146255719, i32 -2146255617, i32 -2146255584, i32 -2146255511, i32 -2146255443, i32 -2146259686, i32 -2146259627, i32 -2146259574, i32 -2146259543, i32 -2146259512, i32 -2146259491, i32 -2146259469, i32 -2146259420, i32 -2146259399, i32 -2146255396, i32 -2146255307, i32 -2146255186, i32 -2146255087, i32 -2146254981, i32 -2146254879, i32 -2146254846, i32 -2146254763, i32 -2146254674, i32 -2146254553, i32 -2146254453, i32 -2146254427, i32 -2146254324, i32 -2146254298, i32 -2146259141, i32 -2146259116, i32 -2146259049, i32 -2146259024, i32 -2146258960, i32 -2146258878, i32 -2146258855, i32 -2146258830, i32 -2146258805}
!665 = !DILocation(line: 244, column: 5, scope: !666)
!666 = distinct !DILexicalBlock(scope: !667, file: !3, line: 244, column: 5)
!667 = distinct !DILexicalBlock(scope: !602, file: !3, line: 244, column: 5)
!668 = !{i32 -2146257744, i32 -2146257727}
!669 = !DILocation(line: 245, column: 9, scope: !670)
!670 = distinct !DILexicalBlock(scope: !585, file: !3, line: 245, column: 9)
!671 = !DILocation(line: 245, column: 12, scope: !670)
!672 = !DILocation(line: 245, column: 9, scope: !585)
!673 = !DILocation(line: 246, column: 33, scope: !674)
!674 = distinct !DILexicalBlock(scope: !670, file: !3, line: 245, column: 18)
!675 = !DILocation(line: 246, column: 9, scope: !674)
!676 = !DILocation(line: 247, column: 9, scope: !674)
!677 = !DILocation(line: 249, column: 9, scope: !612)
!678 = !{!630, !630, i64 0}
!679 = !DILocation(line: 249, column: 15, scope: !612)
!680 = !DILocation(line: 249, column: 25, scope: !612)
!681 = !DILocation(line: 249, column: 9, scope: !585)
!682 = !DILocation(line: 0, scope: !614)
!683 = !DILocation(line: 250, column: 62, scope: !611)
!684 = !{!629, !630, i64 24}
!685 = !DILocation(line: 250, column: 29, scope: !611)
!686 = !DILocation(line: 251, column: 34, scope: !611)
!687 = !DILocation(line: 251, column: 28, scope: !611)
!688 = !DILocation(line: 251, column: 52, scope: !611)
!689 = !DILocation(line: 251, column: 9, scope: !611)
!690 = !DILocation(line: 252, column: 5, scope: !611)
!691 = !DILocation(line: 253, column: 64, scope: !614)
!692 = !DILocation(line: 253, column: 30, scope: !614)
!693 = !DILocation(line: 254, column: 35, scope: !614)
!694 = !DILocation(line: 254, column: 29, scope: !614)
!695 = !DILocation(line: 254, column: 54, scope: !614)
!696 = !DILocation(line: 254, column: 9, scope: !614)
!697 = !DILocation(line: 257, column: 18, scope: !585)
!698 = !DILocation(line: 257, column: 5, scope: !585)
!699 = !DILocation(line: 258, column: 5, scope: !585)
!700 = !DILocation(line: 0, scope: !585)
!701 = !DILocation(line: 0, scope: !674)
!702 = !DILocation(line: 259, column: 1, scope: !585)
!703 = distinct !DISubprogram(name: "anetResolve", scope: !3, file: !3, line: 261, type: !704, isLocal: false, isDefinition: true, scopeLine: 261, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !706)
!704 = !DISubroutineType(types: !705)
!705 = !{!7, !80, !80, !80, !588}
!706 = !{!707, !708, !709, !710}
!707 = !DILocalVariable(name: "err", arg: 1, scope: !703, file: !3, line: 261, type: !80)
!708 = !DILocalVariable(name: "host", arg: 2, scope: !703, file: !3, line: 261, type: !80)
!709 = !DILocalVariable(name: "ipbuf", arg: 3, scope: !703, file: !3, line: 261, type: !80)
!710 = !DILocalVariable(name: "ipbuf_len", arg: 4, scope: !703, file: !3, line: 261, type: !588)
!711 = !DILocation(line: 261, column: 23, scope: !703)
!712 = !DILocation(line: 261, column: 34, scope: !703)
!713 = !DILocation(line: 261, column: 46, scope: !703)
!714 = !DILocation(line: 261, column: 60, scope: !703)
!715 = !DILocation(line: 262, column: 12, scope: !703)
!716 = !DILocation(line: 262, column: 5, scope: !703)
!717 = distinct !DISubprogram(name: "anetResolveIP", scope: !3, file: !3, line: 265, type: !704, isLocal: false, isDefinition: true, scopeLine: 265, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !718)
!718 = !{!719, !720, !721, !722}
!719 = !DILocalVariable(name: "err", arg: 1, scope: !717, file: !3, line: 265, type: !80)
!720 = !DILocalVariable(name: "host", arg: 2, scope: !717, file: !3, line: 265, type: !80)
!721 = !DILocalVariable(name: "ipbuf", arg: 3, scope: !717, file: !3, line: 265, type: !80)
!722 = !DILocalVariable(name: "ipbuf_len", arg: 4, scope: !717, file: !3, line: 265, type: !588)
!723 = !DILocation(line: 265, column: 25, scope: !717)
!724 = !DILocation(line: 265, column: 36, scope: !717)
!725 = !DILocation(line: 265, column: 48, scope: !717)
!726 = !DILocation(line: 265, column: 62, scope: !717)
!727 = !DILocation(line: 266, column: 12, scope: !717)
!728 = !DILocation(line: 266, column: 5, scope: !717)
!729 = distinct !DISubprogram(name: "anetTcpConnect", scope: !3, file: !3, line: 391, type: !730, isLocal: false, isDefinition: true, scopeLine: 392, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !732)
!730 = !DISubroutineType(types: !731)
!731 = !{!7, !80, !80, !7}
!732 = !{!733, !734, !735}
!733 = !DILocalVariable(name: "err", arg: 1, scope: !729, file: !3, line: 391, type: !80)
!734 = !DILocalVariable(name: "addr", arg: 2, scope: !729, file: !3, line: 391, type: !80)
!735 = !DILocalVariable(name: "port", arg: 3, scope: !729, file: !3, line: 391, type: !7)
!736 = !DILocation(line: 391, column: 26, scope: !729)
!737 = !DILocation(line: 391, column: 37, scope: !729)
!738 = !DILocation(line: 391, column: 47, scope: !729)
!739 = !DILocation(line: 393, column: 12, scope: !729)
!740 = !DILocation(line: 393, column: 5, scope: !729)
!741 = distinct !DISubprogram(name: "anetTcpGenericConnect", scope: !3, file: !3, line: 305, type: !742, isLocal: true, isDefinition: true, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !744)
!742 = !DISubroutineType(types: !743)
!743 = !{!7, !80, !80, !7, !80, !7}
!744 = !{!745, !746, !747, !748, !749, !750, !751, !752, !756, !757, !758, !759, !760, !761, !767, !768, !769, !770, !779, !780, !781, !784, !790, !791, !792}
!745 = !DILocalVariable(name: "err", arg: 1, scope: !741, file: !3, line: 305, type: !80)
!746 = !DILocalVariable(name: "addr", arg: 2, scope: !741, file: !3, line: 305, type: !80)
!747 = !DILocalVariable(name: "port", arg: 3, scope: !741, file: !3, line: 305, type: !7)
!748 = !DILocalVariable(name: "source_addr", arg: 4, scope: !741, file: !3, line: 306, type: !80)
!749 = !DILocalVariable(name: "flags", arg: 5, scope: !741, file: !3, line: 306, type: !7)
!750 = !DILocalVariable(name: "s", scope: !741, file: !3, line: 308, type: !7)
!751 = !DILocalVariable(name: "rv", scope: !741, file: !3, line: 308, type: !7)
!752 = !DILocalVariable(name: "portstr", scope: !741, file: !3, line: 309, type: !753)
!753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 48, elements: !754)
!754 = !{!755}
!755 = !DISubrange(count: 6)
!756 = !DILocalVariable(name: "hints", scope: !741, file: !3, line: 310, type: !82)
!757 = !DILocalVariable(name: "servinfo", scope: !741, file: !3, line: 310, type: !81)
!758 = !DILocalVariable(name: "bservinfo", scope: !741, file: !3, line: 310, type: !81)
!759 = !DILocalVariable(name: "p", scope: !741, file: !3, line: 310, type: !81)
!760 = !DILocalVariable(name: "b", scope: !741, file: !3, line: 310, type: !81)
!761 = !DILocalVariable(name: "tid", scope: !762, file: !3, line: 317, type: !41)
!762 = distinct !DILexicalBlock(scope: !763, file: !3, line: 317, column: 5)
!763 = distinct !DILexicalBlock(scope: !764, file: !3, line: 317, column: 5)
!764 = distinct !DILexicalBlock(scope: !765, file: !3, line: 317, column: 5)
!765 = distinct !DILexicalBlock(scope: !766, file: !3, line: 317, column: 5)
!766 = distinct !DILexicalBlock(scope: !741, file: !3, line: 317, column: 5)
!767 = !DILocalVariable(name: "_ret", scope: !762, file: !3, line: 317, type: !13)
!768 = !DILocalVariable(name: "_arg3", scope: !762, file: !3, line: 317, type: !13)
!769 = !DILocalVariable(name: "_arg4", scope: !762, file: !3, line: 317, type: !13)
!770 = !DILocalVariable(name: "tid", scope: !771, file: !3, line: 327, type: !41)
!771 = distinct !DILexicalBlock(scope: !772, file: !3, line: 327, column: 9)
!772 = distinct !DILexicalBlock(scope: !773, file: !3, line: 327, column: 9)
!773 = distinct !DILexicalBlock(scope: !774, file: !3, line: 327, column: 9)
!774 = distinct !DILexicalBlock(scope: !775, file: !3, line: 327, column: 9)
!775 = distinct !DILexicalBlock(scope: !776, file: !3, line: 327, column: 9)
!776 = distinct !DILexicalBlock(scope: !777, file: !3, line: 323, column: 51)
!777 = distinct !DILexicalBlock(scope: !778, file: !3, line: 323, column: 5)
!778 = distinct !DILexicalBlock(scope: !741, file: !3, line: 323, column: 5)
!779 = !DILocalVariable(name: "_ret", scope: !771, file: !3, line: 327, type: !13)
!780 = !DILocalVariable(name: "_arg3", scope: !771, file: !3, line: 327, type: !13)
!781 = !DILocalVariable(name: "bound", scope: !782, file: !3, line: 335, type: !7)
!782 = distinct !DILexicalBlock(scope: !783, file: !3, line: 334, column: 26)
!783 = distinct !DILexicalBlock(scope: !776, file: !3, line: 334, column: 13)
!784 = !DILocalVariable(name: "tid", scope: !785, file: !3, line: 337, type: !41)
!785 = distinct !DILexicalBlock(scope: !786, file: !3, line: 337, column: 13)
!786 = distinct !DILexicalBlock(scope: !787, file: !3, line: 337, column: 13)
!787 = distinct !DILexicalBlock(scope: !788, file: !3, line: 337, column: 13)
!788 = distinct !DILexicalBlock(scope: !789, file: !3, line: 337, column: 13)
!789 = distinct !DILexicalBlock(scope: !782, file: !3, line: 337, column: 13)
!790 = !DILocalVariable(name: "_ret", scope: !785, file: !3, line: 337, type: !13)
!791 = !DILocalVariable(name: "_arg3", scope: !785, file: !3, line: 337, type: !13)
!792 = !DILocalVariable(name: "_arg4", scope: !785, file: !3, line: 337, type: !13)
!793 = !DILocation(line: 305, column: 40, scope: !741)
!794 = !DILocation(line: 305, column: 51, scope: !741)
!795 = !DILocation(line: 305, column: 61, scope: !741)
!796 = !DILocation(line: 306, column: 40, scope: !741)
!797 = !DILocation(line: 306, column: 57, scope: !741)
!798 = !DILocation(line: 308, column: 5, scope: !741)
!799 = !DILocation(line: 308, column: 9, scope: !741)
!800 = !DILocation(line: 309, column: 5, scope: !741)
!801 = !DILocation(line: 309, column: 10, scope: !741)
!802 = !DILocation(line: 310, column: 5, scope: !741)
!803 = !DILocation(line: 312, column: 5, scope: !741)
!804 = !DILocation(line: 313, column: 5, scope: !741)
!805 = !DILocation(line: 314, column: 11, scope: !741)
!806 = !DILocation(line: 314, column: 21, scope: !741)
!807 = !DILocation(line: 315, column: 11, scope: !741)
!808 = !DILocation(line: 315, column: 23, scope: !741)
!809 = !DILocation(line: 120, column: 2, scope: !239, inlinedAt: !810)
!810 = distinct !DILocation(line: 317, column: 5, scope: !765)
!811 = !DILocation(line: 118, column: 16, scope: !239, inlinedAt: !810)
!812 = !DILocation(line: 121, column: 2, scope: !239, inlinedAt: !810)
!813 = !DILocation(line: 317, column: 5, scope: !765)
!814 = !DILocation(line: 120, column: 2, scope: !239, inlinedAt: !815)
!815 = distinct !DILocation(line: 317, column: 5, scope: !765)
!816 = !DILocation(line: 118, column: 16, scope: !239, inlinedAt: !815)
!817 = !DILocation(line: 121, column: 2, scope: !239, inlinedAt: !815)
!818 = !DILocation(line: 317, column: 5, scope: !766)
!819 = !DILocation(line: 310, column: 21, scope: !741)
!820 = !DILocation(line: 310, column: 29, scope: !741)
!821 = !DILocation(line: 317, column: 5, scope: !822)
!822 = distinct !DILexicalBlock(scope: !765, file: !3, line: 317, column: 5)
!823 = !DILocation(line: 308, column: 23, scope: !741)
!824 = !DILocation(line: 120, column: 2, scope: !239, inlinedAt: !825)
!825 = distinct !DILocation(line: 49, column: 21, scope: !260, inlinedAt: !826)
!826 = distinct !DILocation(line: 317, column: 5, scope: !762)
!827 = !DILocation(line: 118, column: 16, scope: !239, inlinedAt: !825)
!828 = !DILocation(line: 121, column: 2, scope: !239, inlinedAt: !825)
!829 = !DILocation(line: 49, column: 16, scope: !260, inlinedAt: !826)
!830 = !DILocation(line: 50, column: 19, scope: !260, inlinedAt: !826)
!831 = !DILocation(line: 50, column: 11, scope: !260, inlinedAt: !826)
!832 = !DILocation(line: 50, column: 9, scope: !260, inlinedAt: !826)
!833 = !DILocation(line: 50, column: 2, scope: !260, inlinedAt: !826)
!834 = !DILocation(line: 317, column: 5, scope: !762)
!835 = !{i32 -2146233629, i32 -2146233616, i32 -2146233591, i32 -2146233567, i32 -2146233542, i32 -2146233467, i32 -2146233442, i32 -2146233298, i32 -2146233273, i32 -2146229966, i32 -2146229877, i32 -2146229756, i32 -2146229661, i32 -2146229560, i32 -2146229533, i32 -2146229450, i32 -2146229361, i32 -2146229240, i32 -2146229140, i32 -2146229034, i32 -2146228926, i32 -2146232936, i32 -2146232883, i32 -2146232852, i32 -2146232821, i32 -2146232800, i32 -2146232778, i32 -2146232729, i32 -2146232708, i32 -2146232605, i32 -2146232573, i32 -2146228843, i32 -2146228754, i32 -2146228633, i32 -2146228534, i32 -2146228428, i32 -2146228326, i32 -2146228293, i32 -2146228220, i32 -2146228152, i32 -2146232383, i32 -2146232324, i32 -2146232271, i32 -2146232240, i32 -2146232209, i32 -2146232188, i32 -2146232166, i32 -2146232117, i32 -2146232096, i32 -2146228105, i32 -2146228016, i32 -2146227895, i32 -2146227796, i32 -2146227690, i32 -2146227588, i32 -2146227555, i32 -2146227472, i32 -2146227383, i32 -2146227262, i32 -2146227162, i32 -2146227136, i32 -2146227033, i32 -2146227007, i32 -2146231838, i32 -2146231813, i32 -2146231746, i32 -2146231721, i32 -2146231657, i32 -2146231575, i32 -2146231552, i32 -2146231527, i32 -2146231502}
!836 = !DILocation(line: 317, column: 5, scope: !837)
!837 = distinct !DILexicalBlock(scope: !838, file: !3, line: 317, column: 5)
!838 = distinct !DILexicalBlock(scope: !762, file: !3, line: 317, column: 5)
!839 = !{i32 -2146230441, i32 -2146230424}
!840 = !DILocation(line: 319, column: 9, scope: !841)
!841 = distinct !DILexicalBlock(scope: !741, file: !3, line: 319, column: 9)
!842 = !DILocation(line: 319, column: 12, scope: !841)
!843 = !DILocation(line: 319, column: 9, scope: !741)
!844 = !DILocation(line: 320, column: 33, scope: !845)
!845 = distinct !DILexicalBlock(scope: !841, file: !3, line: 319, column: 18)
!846 = !DILocation(line: 320, column: 9, scope: !845)
!847 = !DILocation(line: 321, column: 9, scope: !845)
!848 = !DILocation(line: 323, column: 14, scope: !778)
!849 = !DILocation(line: 310, column: 52, scope: !741)
!850 = !DILocation(line: 323, column: 10, scope: !778)
!851 = !DILocation(line: 323, column: 26, scope: !777)
!852 = !DILocation(line: 323, column: 5, scope: !778)
!853 = !DILocation(line: 120, column: 2, scope: !239, inlinedAt: !854)
!854 = distinct !DILocation(line: 327, column: 9, scope: !774)
!855 = !DILocation(line: 118, column: 16, scope: !239, inlinedAt: !854)
!856 = !DILocation(line: 121, column: 2, scope: !239, inlinedAt: !854)
!857 = !DILocation(line: 327, column: 9, scope: !774)
!858 = !DILocation(line: 120, column: 2, scope: !239, inlinedAt: !859)
!859 = distinct !DILocation(line: 327, column: 9, scope: !774)
!860 = !DILocation(line: 118, column: 16, scope: !239, inlinedAt: !859)
!861 = !DILocation(line: 121, column: 2, scope: !239, inlinedAt: !859)
!862 = !DILocation(line: 327, column: 9, scope: !775)
!863 = !DILocation(line: 327, column: 9, scope: !864)
!864 = distinct !DILexicalBlock(scope: !774, file: !3, line: 327, column: 9)
!865 = !{!629, !134, i64 12}
!866 = !DILocation(line: 120, column: 2, scope: !239, inlinedAt: !867)
!867 = distinct !DILocation(line: 49, column: 21, scope: !260, inlinedAt: !868)
!868 = distinct !DILocation(line: 327, column: 9, scope: !771)
!869 = !DILocation(line: 118, column: 16, scope: !239, inlinedAt: !867)
!870 = !DILocation(line: 121, column: 2, scope: !239, inlinedAt: !867)
!871 = !DILocation(line: 49, column: 16, scope: !260, inlinedAt: !868)
!872 = !DILocation(line: 50, column: 19, scope: !260, inlinedAt: !868)
!873 = !DILocation(line: 50, column: 11, scope: !260, inlinedAt: !868)
!874 = !DILocation(line: 50, column: 9, scope: !260, inlinedAt: !868)
!875 = !DILocation(line: 50, column: 2, scope: !260, inlinedAt: !868)
!876 = !DILocation(line: 327, column: 9, scope: !771)
!877 = !{i32 -2146224492, i32 -2146224479, i32 -2146224454, i32 -2146224430, i32 -2146224405, i32 -2146224330, i32 -2146224305, i32 -2146224161, i32 -2146220946, i32 -2146220857, i32 -2146220736, i32 -2146220641, i32 -2146220540, i32 -2146220513, i32 -2146220430, i32 -2146220341, i32 -2146220220, i32 -2146220120, i32 -2146220014, i32 -2146219906, i32 -2146223831, i32 -2146223778, i32 -2146223747, i32 -2146223716, i32 -2146223695, i32 -2146223673, i32 -2146223624, i32 -2146223603, i32 -2146223500, i32 -2146219823, i32 -2146219734, i32 -2146219613, i32 -2146219514, i32 -2146219408, i32 -2146219306, i32 -2146219273, i32 -2146219200, i32 -2146219132, i32 -2146223310, i32 -2146223251, i32 -2146223198, i32 -2146223167, i32 -2146223136, i32 -2146223115, i32 -2146223093, i32 -2146223044, i32 -2146223023, i32 -2146219090, i32 -2146219001, i32 -2146218880, i32 -2146218781, i32 -2146218675, i32 -2146218573, i32 -2146218540, i32 -2146218457, i32 -2146218368, i32 -2146218247, i32 -2146218147, i32 -2146218121, i32 -2146218018, i32 -2146217992, i32 -2146222765, i32 -2146222698, i32 -2146222673, i32 -2146222609, i32 -2146222527, i32 -2146222504, i32 -2146222479, i32 -2146222454}
!878 = !DILocation(line: 327, column: 9, scope: !879)
!879 = distinct !DILexicalBlock(scope: !880, file: !3, line: 327, column: 9)
!880 = distinct !DILexicalBlock(scope: !771, file: !3, line: 327, column: 9)
!881 = !{i32 -2146221416, i32 -2146221399}
!882 = !DILocation(line: 329, column: 13, scope: !883)
!883 = distinct !DILexicalBlock(scope: !776, file: !3, line: 329, column: 13)
!884 = !DILocation(line: 329, column: 15, scope: !883)
!885 = !DILocation(line: 329, column: 13, scope: !776)
!886 = !DILocation(line: 331, column: 13, scope: !887)
!887 = distinct !DILexicalBlock(scope: !776, file: !3, line: 331, column: 13)
!888 = !DILocation(line: 331, column: 37, scope: !887)
!889 = !DILocation(line: 331, column: 13, scope: !776)
!890 = !DILocation(line: 332, column: 43, scope: !891)
!891 = distinct !DILexicalBlock(scope: !776, file: !3, line: 332, column: 13)
!892 = !DILocation(line: 332, column: 63, scope: !891)
!893 = !DILocation(line: 85, column: 24, scope: !192, inlinedAt: !894)
!894 = distinct !DILocation(line: 332, column: 46, scope: !891)
!895 = !DILocation(line: 85, column: 33, scope: !192, inlinedAt: !894)
!896 = !DILocation(line: 86, column: 12, scope: !192, inlinedAt: !894)
!897 = !DILocation(line: 86, column: 5, scope: !192, inlinedAt: !894)
!898 = !DILocation(line: 332, column: 66, scope: !891)
!899 = !DILocation(line: 332, column: 13, scope: !776)
!900 = !DILocation(line: 334, column: 13, scope: !776)
!901 = !DILocation(line: 335, column: 17, scope: !782)
!902 = !DILocation(line: 120, column: 2, scope: !239, inlinedAt: !903)
!903 = distinct !DILocation(line: 337, column: 13, scope: !788)
!904 = !DILocation(line: 118, column: 16, scope: !239, inlinedAt: !903)
!905 = !DILocation(line: 121, column: 2, scope: !239, inlinedAt: !903)
!906 = !DILocation(line: 337, column: 13, scope: !788)
!907 = !DILocation(line: 120, column: 2, scope: !239, inlinedAt: !908)
!908 = distinct !DILocation(line: 337, column: 13, scope: !788)
!909 = !DILocation(line: 118, column: 16, scope: !239, inlinedAt: !908)
!910 = !DILocation(line: 121, column: 2, scope: !239, inlinedAt: !908)
!911 = !DILocation(line: 337, column: 13, scope: !789)
!912 = !DILocation(line: 310, column: 40, scope: !741)
!913 = !DILocation(line: 337, column: 13, scope: !914)
!914 = distinct !DILexicalBlock(scope: !788, file: !3, line: 337, column: 13)
!915 = !DILocation(line: 120, column: 2, scope: !239, inlinedAt: !916)
!916 = distinct !DILocation(line: 49, column: 21, scope: !260, inlinedAt: !917)
!917 = distinct !DILocation(line: 337, column: 13, scope: !785)
!918 = !DILocation(line: 118, column: 16, scope: !239, inlinedAt: !916)
!919 = !DILocation(line: 121, column: 2, scope: !239, inlinedAt: !916)
!920 = !DILocation(line: 49, column: 16, scope: !260, inlinedAt: !917)
!921 = !DILocation(line: 50, column: 19, scope: !260, inlinedAt: !917)
!922 = !DILocation(line: 50, column: 11, scope: !260, inlinedAt: !917)
!923 = !DILocation(line: 50, column: 9, scope: !260, inlinedAt: !917)
!924 = !DILocation(line: 50, column: 2, scope: !260, inlinedAt: !917)
!925 = !DILocation(line: 337, column: 13, scope: !785)
!926 = !{i32 -2146215377, i32 -2146215364, i32 -2146215339, i32 -2146215315, i32 -2146215290, i32 -2146215215, i32 -2146215190, i32 -2146215046, i32 -2146215021, i32 -2146211690, i32 -2146211601, i32 -2146211480, i32 -2146211385, i32 -2146211284, i32 -2146211257, i32 -2146211174, i32 -2146211085, i32 -2146210964, i32 -2146210864, i32 -2146210758, i32 -2146210650, i32 -2146214684, i32 -2146214631, i32 -2146214600, i32 -2146214569, i32 -2146214548, i32 -2146214526, i32 -2146214477, i32 -2146214456, i32 -2146214353, i32 -2146214321, i32 -2146210567, i32 -2146210478, i32 -2146210357, i32 -2146210258, i32 -2146210152, i32 -2146210050, i32 -2146210017, i32 -2146209944, i32 -2146209876, i32 -2146214131, i32 -2146214072, i32 -2146214019, i32 -2146213988, i32 -2146213957, i32 -2146213936, i32 -2146213914, i32 -2146213865, i32 -2146213844, i32 -2146209829, i32 -2146209740, i32 -2146209619, i32 -2146209520, i32 -2146209414, i32 -2146209312, i32 -2146209279, i32 -2146209196, i32 -2146209107, i32 -2146208986, i32 -2146208886, i32 -2146208860, i32 -2146208757, i32 -2146208731, i32 -2146213586, i32 -2146213561, i32 -2146213494, i32 -2146213469, i32 -2146213405, i32 -2146213323, i32 -2146213300, i32 -2146213275, i32 -2146213250}
!927 = !DILocation(line: 337, column: 13, scope: !928)
!928 = distinct !DILexicalBlock(scope: !929, file: !3, line: 337, column: 13)
!929 = distinct !DILexicalBlock(scope: !785, file: !3, line: 337, column: 13)
!930 = !{i32 -2146212189, i32 -2146212172}
!931 = !DILocation(line: 339, column: 17, scope: !932)
!932 = distinct !DILexicalBlock(scope: !782, file: !3, line: 339, column: 17)
!933 = !DILocation(line: 339, column: 20, scope: !932)
!934 = !DILocation(line: 339, column: 17, scope: !782)
!935 = !DILocation(line: 341, column: 41, scope: !936)
!936 = distinct !DILexicalBlock(scope: !932, file: !3, line: 340, column: 13)
!937 = !DILocation(line: 341, column: 17, scope: !936)
!938 = !DILocation(line: 342, column: 17, scope: !936)
!939 = !DILocation(line: 344, column: 22, scope: !940)
!940 = distinct !DILexicalBlock(scope: !782, file: !3, line: 344, column: 13)
!941 = !DILocation(line: 310, column: 56, scope: !741)
!942 = !DILocation(line: 344, column: 18, scope: !940)
!943 = !DILocation(line: 344, column: 35, scope: !944)
!944 = distinct !DILexicalBlock(scope: !940, file: !3, line: 344, column: 13)
!945 = !DILocation(line: 344, column: 13, scope: !940)
!946 = !DILocation(line: 345, column: 26, scope: !947)
!947 = distinct !DILexicalBlock(scope: !948, file: !3, line: 345, column: 21)
!948 = distinct !DILexicalBlock(scope: !944, file: !3, line: 344, column: 60)
!949 = !DILocation(line: 345, column: 31, scope: !947)
!950 = !DILocation(line: 345, column: 42, scope: !947)
!951 = !{!629, !134, i64 16}
!952 = !DILocation(line: 345, column: 21, scope: !947)
!953 = !DILocation(line: 345, column: 54, scope: !947)
!954 = !DILocation(line: 345, column: 21, scope: !948)
!955 = !DILocation(line: 344, column: 51, scope: !944)
!956 = !{!629, !630, i64 40}
!957 = !DILocation(line: 344, column: 13, scope: !944)
!958 = distinct !{!958, !945, !959}
!959 = !DILocation(line: 349, column: 13, scope: !940)
!960 = !DILocation(line: 350, column: 26, scope: !782)
!961 = !DILocation(line: 350, column: 13, scope: !782)
!962 = !DILocation(line: 351, column: 17, scope: !782)
!963 = !DILocation(line: 352, column: 56, scope: !964)
!964 = distinct !DILexicalBlock(scope: !965, file: !3, line: 351, column: 25)
!965 = distinct !DILexicalBlock(scope: !782, file: !3, line: 351, column: 17)
!966 = !DILocation(line: 352, column: 47, scope: !964)
!967 = !DILocation(line: 352, column: 17, scope: !964)
!968 = !DILocation(line: 353, column: 17, scope: !964)
!969 = !DILocation(line: 0, scope: !964)
!970 = !DILocation(line: 347, column: 21, scope: !971)
!971 = distinct !DILexicalBlock(scope: !947, file: !3, line: 345, column: 61)
!972 = !DILocation(line: 355, column: 9, scope: !783)
!973 = !DILocation(line: 356, column: 21, scope: !974)
!974 = distinct !DILexicalBlock(scope: !776, file: !3, line: 356, column: 13)
!975 = !DILocation(line: 356, column: 26, scope: !974)
!976 = !DILocation(line: 356, column: 37, scope: !974)
!977 = !DILocation(line: 356, column: 13, scope: !974)
!978 = !DILocation(line: 356, column: 49, scope: !974)
!979 = !DILocation(line: 356, column: 13, scope: !776)
!980 = !DILocation(line: 359, column: 17, scope: !981)
!981 = distinct !DILexicalBlock(scope: !982, file: !3, line: 359, column: 17)
!982 = distinct !DILexicalBlock(scope: !974, file: !3, line: 356, column: 56)
!983 = !DILocation(line: 359, column: 23, scope: !981)
!984 = !DILocation(line: 359, column: 38, scope: !981)
!985 = !DILocation(line: 359, column: 17, scope: !982)
!986 = !DILocation(line: 361, column: 19, scope: !982)
!987 = !DILocation(line: 361, column: 13, scope: !982)
!988 = !DILocation(line: 362, column: 15, scope: !982)
!989 = !DILocation(line: 363, column: 13, scope: !982)
!990 = !DILocation(line: 323, column: 42, scope: !777)
!991 = !DILocation(line: 323, column: 5, scope: !777)
!992 = distinct !{!992, !852, !993}
!993 = !DILocation(line: 369, column: 5, scope: !778)
!994 = !DILocation(line: 370, column: 9, scope: !741)
!995 = !DILocation(line: 371, column: 59, scope: !996)
!996 = distinct !DILexicalBlock(scope: !741, file: !3, line: 370, column: 9)
!997 = !DILocation(line: 371, column: 50, scope: !996)
!998 = !DILocation(line: 371, column: 9, scope: !996)
!999 = !DILocation(line: 374, column: 9, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !741, file: !3, line: 374, column: 9)
!1001 = !DILocation(line: 374, column: 11, scope: !1000)
!1002 = !DILocation(line: 374, column: 9, scope: !741)
!1003 = !DILocation(line: 375, column: 9, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 374, column: 24)
!1005 = !DILocation(line: 376, column: 11, scope: !1004)
!1006 = !DILocation(line: 377, column: 5, scope: !1004)
!1007 = !DILocation(line: 380, column: 18, scope: !741)
!1008 = !DILocation(line: 380, column: 5, scope: !741)
!1009 = !DILocation(line: 384, column: 9, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !741, file: !3, line: 384, column: 9)
!1011 = !DILocation(line: 384, column: 11, scope: !1010)
!1012 = !DILocation(line: 384, column: 26, scope: !1010)
!1013 = !DILocation(line: 384, column: 23, scope: !1010)
!1014 = !DILocation(line: 384, column: 48, scope: !1010)
!1015 = !DILocation(line: 384, column: 9, scope: !741)
!1016 = !DILocation(line: 385, column: 16, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 384, column: 76)
!1018 = !DILocation(line: 385, column: 9, scope: !1017)
!1019 = !DILocation(line: 0, scope: !845)
!1020 = !DILocation(line: 389, column: 1, scope: !741)
!1021 = distinct !DISubprogram(name: "anetTcpNonBlockConnect", scope: !3, file: !3, line: 396, type: !730, isLocal: false, isDefinition: true, scopeLine: 397, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1022)
!1022 = !{!1023, !1024, !1025}
!1023 = !DILocalVariable(name: "err", arg: 1, scope: !1021, file: !3, line: 396, type: !80)
!1024 = !DILocalVariable(name: "addr", arg: 2, scope: !1021, file: !3, line: 396, type: !80)
!1025 = !DILocalVariable(name: "port", arg: 3, scope: !1021, file: !3, line: 396, type: !7)
!1026 = !DILocation(line: 396, column: 34, scope: !1021)
!1027 = !DILocation(line: 396, column: 45, scope: !1021)
!1028 = !DILocation(line: 396, column: 55, scope: !1021)
!1029 = !DILocation(line: 398, column: 12, scope: !1021)
!1030 = !DILocation(line: 398, column: 5, scope: !1021)
!1031 = distinct !DISubprogram(name: "anetTcpNonBlockBindConnect", scope: !3, file: !3, line: 401, type: !1032, isLocal: false, isDefinition: true, scopeLine: 403, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1034)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!7, !80, !80, !7, !80}
!1034 = !{!1035, !1036, !1037, !1038}
!1035 = !DILocalVariable(name: "err", arg: 1, scope: !1031, file: !3, line: 401, type: !80)
!1036 = !DILocalVariable(name: "addr", arg: 2, scope: !1031, file: !3, line: 401, type: !80)
!1037 = !DILocalVariable(name: "port", arg: 3, scope: !1031, file: !3, line: 401, type: !7)
!1038 = !DILocalVariable(name: "source_addr", arg: 4, scope: !1031, file: !3, line: 402, type: !80)
!1039 = !DILocation(line: 401, column: 38, scope: !1031)
!1040 = !DILocation(line: 401, column: 49, scope: !1031)
!1041 = !DILocation(line: 401, column: 59, scope: !1031)
!1042 = !DILocation(line: 402, column: 38, scope: !1031)
!1043 = !DILocation(line: 404, column: 12, scope: !1031)
!1044 = !DILocation(line: 404, column: 5, scope: !1031)
!1045 = distinct !DISubprogram(name: "anetTcpNonBlockBestEffortBindConnect", scope: !3, file: !3, line: 408, type: !1032, isLocal: false, isDefinition: true, scopeLine: 410, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1046)
!1046 = !{!1047, !1048, !1049, !1050}
!1047 = !DILocalVariable(name: "err", arg: 1, scope: !1045, file: !3, line: 408, type: !80)
!1048 = !DILocalVariable(name: "addr", arg: 2, scope: !1045, file: !3, line: 408, type: !80)
!1049 = !DILocalVariable(name: "port", arg: 3, scope: !1045, file: !3, line: 408, type: !7)
!1050 = !DILocalVariable(name: "source_addr", arg: 4, scope: !1045, file: !3, line: 409, type: !80)
!1051 = !DILocation(line: 408, column: 48, scope: !1045)
!1052 = !DILocation(line: 408, column: 59, scope: !1045)
!1053 = !DILocation(line: 408, column: 69, scope: !1045)
!1054 = !DILocation(line: 409, column: 48, scope: !1045)
!1055 = !DILocation(line: 411, column: 12, scope: !1045)
!1056 = !DILocation(line: 411, column: 5, scope: !1045)
!1057 = distinct !DISubprogram(name: "anetUnixGenericConnect", scope: !3, file: !3, line: 415, type: !730, isLocal: false, isDefinition: true, scopeLine: 416, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1058)
!1058 = !{!1059, !1060, !1061, !1062, !1063}
!1059 = !DILocalVariable(name: "err", arg: 1, scope: !1057, file: !3, line: 415, type: !80)
!1060 = !DILocalVariable(name: "path", arg: 2, scope: !1057, file: !3, line: 415, type: !80)
!1061 = !DILocalVariable(name: "flags", arg: 3, scope: !1057, file: !3, line: 415, type: !7)
!1062 = !DILocalVariable(name: "s", scope: !1057, file: !3, line: 417, type: !7)
!1063 = !DILocalVariable(name: "sa", scope: !1057, file: !3, line: 418, type: !1064)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_un", file: !1065, line: 17, size: 872, elements: !1066)
!1065 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/include/sys/un.h", directory: "/root/.unikraft/apps/redis/build")
!1066 = !{!1067, !1068}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "sun_family", scope: !1064, file: !1065, line: 18, baseType: !27, size: 8)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "sun_path", scope: !1064, file: !1065, line: 19, baseType: !1069, size: 864, offset: 8)
!1069 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 864, elements: !1070)
!1070 = !{!1071}
!1071 = !DISubrange(count: 108)
!1072 = !DILocation(line: 415, column: 34, scope: !1057)
!1073 = !DILocation(line: 415, column: 45, scope: !1057)
!1074 = !DILocation(line: 415, column: 55, scope: !1057)
!1075 = !DILocation(line: 418, column: 5, scope: !1057)
!1076 = !DILocation(line: 420, column: 14, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 420, column: 9)
!1078 = !DILocation(line: 417, column: 9, scope: !1057)
!1079 = !DILocation(line: 420, column: 46, scope: !1077)
!1080 = !DILocation(line: 420, column: 9, scope: !1057)
!1081 = !DILocation(line: 423, column: 19, scope: !1057)
!1082 = !{!1083, !135, i64 0}
!1083 = !{!"sockaddr_un", !135, i64 0, !135, i64 1}
!1084 = !DILocation(line: 424, column: 13, scope: !1057)
!1085 = !DILocation(line: 424, column: 5, scope: !1057)
!1086 = !DILocation(line: 425, column: 15, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 425, column: 9)
!1088 = !DILocation(line: 425, column: 9, scope: !1057)
!1089 = !DILocation(line: 85, column: 24, scope: !192, inlinedAt: !1090)
!1090 = distinct !DILocation(line: 426, column: 13, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 426, column: 13)
!1092 = distinct !DILexicalBlock(scope: !1087, file: !3, line: 425, column: 40)
!1093 = !DILocation(line: 85, column: 33, scope: !192, inlinedAt: !1090)
!1094 = !DILocation(line: 86, column: 12, scope: !192, inlinedAt: !1090)
!1095 = !DILocation(line: 86, column: 5, scope: !192, inlinedAt: !1090)
!1096 = !DILocation(line: 426, column: 33, scope: !1091)
!1097 = !DILocation(line: 426, column: 13, scope: !1092)
!1098 = !DILocation(line: 427, column: 13, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1091, file: !3, line: 426, column: 45)
!1100 = !DILocation(line: 428, column: 13, scope: !1099)
!1101 = !DILocation(line: 431, column: 19, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 431, column: 9)
!1103 = !DILocation(line: 431, column: 9, scope: !1102)
!1104 = !DILocation(line: 431, column: 53, scope: !1102)
!1105 = !DILocation(line: 431, column: 9, scope: !1057)
!1106 = !DILocation(line: 432, column: 13, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 432, column: 13)
!1108 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 431, column: 60)
!1109 = !DILocation(line: 432, column: 19, scope: !1107)
!1110 = !DILocation(line: 432, column: 34, scope: !1107)
!1111 = !DILocation(line: 432, column: 13, scope: !1108)
!1112 = !DILocation(line: 436, column: 51, scope: !1108)
!1113 = !DILocation(line: 436, column: 42, scope: !1108)
!1114 = !DILocation(line: 436, column: 9, scope: !1108)
!1115 = !DILocation(line: 437, column: 9, scope: !1108)
!1116 = !DILocation(line: 438, column: 9, scope: !1108)
!1117 = !DILocation(line: 0, scope: !1057)
!1118 = !DILocation(line: 0, scope: !1077)
!1119 = !DILocation(line: 441, column: 1, scope: !1057)
!1120 = distinct !DISubprogram(name: "anetCreateSocket", scope: !3, file: !3, line: 285, type: !193, isLocal: true, isDefinition: true, scopeLine: 285, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1121)
!1121 = !{!1122, !1123, !1124, !1125, !1131, !1132}
!1122 = !DILocalVariable(name: "err", arg: 1, scope: !1120, file: !3, line: 285, type: !80)
!1123 = !DILocalVariable(name: "domain", arg: 2, scope: !1120, file: !3, line: 285, type: !7)
!1124 = !DILocalVariable(name: "s", scope: !1120, file: !3, line: 286, type: !7)
!1125 = !DILocalVariable(name: "tid", scope: !1126, file: !3, line: 287, type: !41)
!1126 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 287, column: 5)
!1127 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 287, column: 5)
!1128 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 287, column: 5)
!1129 = distinct !DILexicalBlock(scope: !1130, file: !3, line: 287, column: 5)
!1130 = distinct !DILexicalBlock(scope: !1120, file: !3, line: 287, column: 5)
!1131 = !DILocalVariable(name: "_ret", scope: !1126, file: !3, line: 287, type: !13)
!1132 = !DILocalVariable(name: "_arg3", scope: !1126, file: !3, line: 287, type: !13)
!1133 = !DILocation(line: 285, column: 35, scope: !1120)
!1134 = !DILocation(line: 285, column: 44, scope: !1120)
!1135 = !DILocation(line: 286, column: 5, scope: !1120)
!1136 = !DILocation(line: 120, column: 2, scope: !239, inlinedAt: !1137)
!1137 = distinct !DILocation(line: 287, column: 5, scope: !1129)
!1138 = !DILocation(line: 118, column: 16, scope: !239, inlinedAt: !1137)
!1139 = !DILocation(line: 121, column: 2, scope: !239, inlinedAt: !1137)
!1140 = !DILocation(line: 287, column: 5, scope: !1129)
!1141 = !DILocation(line: 120, column: 2, scope: !239, inlinedAt: !1142)
!1142 = distinct !DILocation(line: 287, column: 5, scope: !1129)
!1143 = !DILocation(line: 118, column: 16, scope: !239, inlinedAt: !1142)
!1144 = !DILocation(line: 121, column: 2, scope: !239, inlinedAt: !1142)
!1145 = !DILocation(line: 287, column: 5, scope: !1130)
!1146 = !DILocation(line: 287, column: 5, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 287, column: 5)
!1148 = !DILocation(line: 286, column: 9, scope: !1120)
!1149 = !DILocation(line: 120, column: 2, scope: !239, inlinedAt: !1150)
!1150 = distinct !DILocation(line: 49, column: 21, scope: !260, inlinedAt: !1151)
!1151 = distinct !DILocation(line: 287, column: 5, scope: !1126)
!1152 = !DILocation(line: 118, column: 16, scope: !239, inlinedAt: !1150)
!1153 = !DILocation(line: 121, column: 2, scope: !239, inlinedAt: !1150)
!1154 = !DILocation(line: 49, column: 16, scope: !260, inlinedAt: !1151)
!1155 = !DILocation(line: 50, column: 19, scope: !260, inlinedAt: !1151)
!1156 = !DILocation(line: 50, column: 11, scope: !260, inlinedAt: !1151)
!1157 = !DILocation(line: 50, column: 9, scope: !260, inlinedAt: !1151)
!1158 = !DILocation(line: 50, column: 2, scope: !260, inlinedAt: !1151)
!1159 = !DILocation(line: 287, column: 5, scope: !1126)
!1160 = !{i32 -2146242622, i32 -2146242609, i32 -2146242584, i32 -2146242560, i32 -2146242535, i32 -2146242460, i32 -2146242435, i32 -2146242291, i32 -2146239106, i32 -2146239017, i32 -2146238896, i32 -2146238801, i32 -2146238700, i32 -2146238673, i32 -2146238590, i32 -2146238501, i32 -2146238380, i32 -2146238280, i32 -2146238174, i32 -2146238066, i32 -2146241961, i32 -2146241908, i32 -2146241877, i32 -2146241846, i32 -2146241825, i32 -2146241803, i32 -2146241754, i32 -2146241733, i32 -2146241630, i32 -2146237983, i32 -2146237894, i32 -2146237773, i32 -2146237674, i32 -2146237568, i32 -2146237466, i32 -2146237433, i32 -2146237360, i32 -2146237292, i32 -2146241440, i32 -2146241381, i32 -2146241328, i32 -2146241297, i32 -2146241266, i32 -2146241245, i32 -2146241223, i32 -2146241174, i32 -2146241153, i32 -2146237250, i32 -2146237161, i32 -2146237040, i32 -2146236941, i32 -2146236835, i32 -2146236733, i32 -2146236700, i32 -2146236617, i32 -2146236528, i32 -2146236407, i32 -2146236307, i32 -2146236281, i32 -2146236178, i32 -2146236152, i32 -2146240895, i32 -2146240828, i32 -2146240803, i32 -2146240739, i32 -2146240657, i32 -2146240634, i32 -2146240609, i32 -2146240584}
!1161 = !DILocation(line: 287, column: 5, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1163, file: !3, line: 287, column: 5)
!1163 = distinct !DILexicalBlock(scope: !1126, file: !3, line: 287, column: 5)
!1164 = !{i32 -2146239546, i32 -2146239529}
!1165 = !DILocation(line: 288, column: 9, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1120, file: !3, line: 288, column: 9)
!1167 = !DILocation(line: 288, column: 11, scope: !1166)
!1168 = !DILocation(line: 288, column: 9, scope: !1120)
!1169 = !DILocation(line: 289, column: 59, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1166, file: !3, line: 288, column: 18)
!1171 = !DILocation(line: 289, column: 50, scope: !1170)
!1172 = !DILocation(line: 289, column: 9, scope: !1170)
!1173 = !DILocation(line: 290, column: 9, scope: !1170)
!1174 = !DILocation(line: 295, column: 9, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1120, file: !3, line: 295, column: 9)
!1176 = !DILocation(line: 295, column: 33, scope: !1175)
!1177 = !DILocation(line: 0, scope: !1120)
!1178 = !DILocation(line: 295, column: 9, scope: !1120)
!1179 = !DILocation(line: 296, column: 9, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 295, column: 46)
!1181 = !DILocation(line: 297, column: 9, scope: !1180)
!1182 = !DILocation(line: 0, scope: !1170)
!1183 = !DILocation(line: 300, column: 1, scope: !1120)
!1184 = distinct !DISubprogram(name: "anetUnixConnect", scope: !3, file: !3, line: 443, type: !1185, isLocal: false, isDefinition: true, scopeLine: 444, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1187)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!7, !80, !80}
!1187 = !{!1188, !1189}
!1188 = !DILocalVariable(name: "err", arg: 1, scope: !1184, file: !3, line: 443, type: !80)
!1189 = !DILocalVariable(name: "path", arg: 2, scope: !1184, file: !3, line: 443, type: !80)
!1190 = !DILocation(line: 443, column: 27, scope: !1184)
!1191 = !DILocation(line: 443, column: 38, scope: !1184)
!1192 = !DILocation(line: 445, column: 12, scope: !1184)
!1193 = !DILocation(line: 445, column: 5, scope: !1184)
!1194 = distinct !DISubprogram(name: "anetUnixNonBlockConnect", scope: !3, file: !3, line: 448, type: !1185, isLocal: false, isDefinition: true, scopeLine: 449, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1195)
!1195 = !{!1196, !1197}
!1196 = !DILocalVariable(name: "err", arg: 1, scope: !1194, file: !3, line: 448, type: !80)
!1197 = !DILocalVariable(name: "path", arg: 2, scope: !1194, file: !3, line: 448, type: !80)
!1198 = !DILocation(line: 448, column: 35, scope: !1194)
!1199 = !DILocation(line: 448, column: 46, scope: !1194)
!1200 = !DILocation(line: 450, column: 12, scope: !1194)
!1201 = !DILocation(line: 450, column: 5, scope: !1194)
!1202 = distinct !DISubprogram(name: "anetRead", scope: !3, file: !3, line: 455, type: !1203, isLocal: false, isDefinition: true, scopeLine: 456, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1205)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!7, !7, !80, !7}
!1205 = !{!1206, !1207, !1208, !1209, !1213}
!1206 = !DILocalVariable(name: "fd", arg: 1, scope: !1202, file: !3, line: 455, type: !7)
!1207 = !DILocalVariable(name: "buf", arg: 2, scope: !1202, file: !3, line: 455, type: !80)
!1208 = !DILocalVariable(name: "count", arg: 3, scope: !1202, file: !3, line: 455, type: !7)
!1209 = !DILocalVariable(name: "nread", scope: !1202, file: !3, line: 457, type: !1210)
!1210 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !1211, line: 200, baseType: !1212)
!1211 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!1212 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !591, line: 145, baseType: !514)
!1213 = !DILocalVariable(name: "totlen", scope: !1202, file: !3, line: 457, type: !1210)
!1214 = !DILocation(line: 455, column: 18, scope: !1202)
!1215 = !DILocation(line: 455, column: 28, scope: !1202)
!1216 = !DILocation(line: 455, column: 37, scope: !1202)
!1217 = !DILocation(line: 457, column: 20, scope: !1202)
!1218 = !DILocation(line: 458, column: 5, scope: !1202)
!1219 = !DILocation(line: 458, column: 21, scope: !1202)
!1220 = !DILocation(line: 458, column: 18, scope: !1202)
!1221 = !DILocation(line: 459, column: 34, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 458, column: 28)
!1223 = !DILocation(line: 459, column: 17, scope: !1222)
!1224 = !DILocation(line: 457, column: 13, scope: !1202)
!1225 = !DILocation(line: 460, column: 19, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 460, column: 13)
!1227 = !DILocation(line: 460, column: 13, scope: !1222)
!1228 = !DILocation(line: 460, column: 32, scope: !1226)
!1229 = !DILocation(line: 460, column: 25, scope: !1226)
!1230 = !DILocation(line: 461, column: 19, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 461, column: 13)
!1232 = !DILocation(line: 461, column: 13, scope: !1222)
!1233 = !DILocation(line: 462, column: 16, scope: !1222)
!1234 = !DILocation(line: 463, column: 13, scope: !1222)
!1235 = distinct !{!1235, !1218, !1236}
!1236 = !DILocation(line: 464, column: 5, scope: !1202)
!1237 = !DILocation(line: 0, scope: !1202)
!1238 = !DILocation(line: 0, scope: !1226)
!1239 = !DILocation(line: 466, column: 1, scope: !1202)
!1240 = distinct !DISubprogram(name: "anetWrite", scope: !3, file: !3, line: 470, type: !1203, isLocal: false, isDefinition: true, scopeLine: 471, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1241)
!1241 = !{!1242, !1243, !1244, !1245, !1246}
!1242 = !DILocalVariable(name: "fd", arg: 1, scope: !1240, file: !3, line: 470, type: !7)
!1243 = !DILocalVariable(name: "buf", arg: 2, scope: !1240, file: !3, line: 470, type: !80)
!1244 = !DILocalVariable(name: "count", arg: 3, scope: !1240, file: !3, line: 470, type: !7)
!1245 = !DILocalVariable(name: "nwritten", scope: !1240, file: !3, line: 472, type: !1210)
!1246 = !DILocalVariable(name: "totlen", scope: !1240, file: !3, line: 472, type: !1210)
!1247 = !DILocation(line: 470, column: 19, scope: !1240)
!1248 = !DILocation(line: 470, column: 29, scope: !1240)
!1249 = !DILocation(line: 470, column: 38, scope: !1240)
!1250 = !DILocation(line: 472, column: 23, scope: !1240)
!1251 = !DILocation(line: 473, column: 5, scope: !1240)
!1252 = !DILocation(line: 473, column: 21, scope: !1240)
!1253 = !DILocation(line: 473, column: 18, scope: !1240)
!1254 = !DILocation(line: 474, column: 38, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 473, column: 28)
!1256 = !DILocation(line: 474, column: 20, scope: !1255)
!1257 = !DILocation(line: 472, column: 13, scope: !1240)
!1258 = !DILocation(line: 475, column: 22, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 475, column: 13)
!1260 = !DILocation(line: 475, column: 13, scope: !1255)
!1261 = !DILocation(line: 475, column: 35, scope: !1259)
!1262 = !DILocation(line: 475, column: 28, scope: !1259)
!1263 = !DILocation(line: 476, column: 22, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 476, column: 13)
!1265 = !DILocation(line: 476, column: 13, scope: !1255)
!1266 = !DILocation(line: 477, column: 16, scope: !1255)
!1267 = !DILocation(line: 478, column: 13, scope: !1255)
!1268 = distinct !{!1268, !1251, !1269}
!1269 = !DILocation(line: 479, column: 5, scope: !1240)
!1270 = !DILocation(line: 0, scope: !1240)
!1271 = !DILocation(line: 0, scope: !1259)
!1272 = !DILocation(line: 481, column: 1, scope: !1240)
!1273 = distinct !DISubprogram(name: "anetTcpServer", scope: !3, file: !3, line: 566, type: !1274, isLocal: false, isDefinition: true, scopeLine: 567, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1276)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{!7, !80, !7, !80, !7}
!1276 = !{!1277, !1278, !1279, !1280}
!1277 = !DILocalVariable(name: "err", arg: 1, scope: !1273, file: !3, line: 566, type: !80)
!1278 = !DILocalVariable(name: "port", arg: 2, scope: !1273, file: !3, line: 566, type: !7)
!1279 = !DILocalVariable(name: "bindaddr", arg: 3, scope: !1273, file: !3, line: 566, type: !80)
!1280 = !DILocalVariable(name: "backlog", arg: 4, scope: !1273, file: !3, line: 566, type: !7)
!1281 = !DILocation(line: 566, column: 25, scope: !1273)
!1282 = !DILocation(line: 566, column: 34, scope: !1273)
!1283 = !DILocation(line: 566, column: 46, scope: !1273)
!1284 = !DILocation(line: 566, column: 60, scope: !1273)
!1285 = !DILocation(line: 568, column: 12, scope: !1273)
!1286 = !DILocation(line: 568, column: 5, scope: !1273)
!1287 = distinct !DISubprogram(name: "_anetTcpServer", scope: !3, file: !3, line: 517, type: !1288, isLocal: true, isDefinition: true, scopeLine: 518, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1290)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{!7, !80, !7, !80, !7, !7}
!1290 = !{!1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1311, !1312, !1313, !1314, !1323, !1324, !1325}
!1291 = !DILocalVariable(name: "err", arg: 1, scope: !1287, file: !3, line: 517, type: !80)
!1292 = !DILocalVariable(name: "port", arg: 2, scope: !1287, file: !3, line: 517, type: !7)
!1293 = !DILocalVariable(name: "bindaddr", arg: 3, scope: !1287, file: !3, line: 517, type: !80)
!1294 = !DILocalVariable(name: "af", arg: 4, scope: !1287, file: !3, line: 517, type: !7)
!1295 = !DILocalVariable(name: "backlog", arg: 5, scope: !1287, file: !3, line: 517, type: !7)
!1296 = !DILocalVariable(name: "s", scope: !1287, file: !3, line: 519, type: !7)
!1297 = !DILocalVariable(name: "rv", scope: !1287, file: !3, line: 519, type: !7)
!1298 = !DILocalVariable(name: "_port", scope: !1287, file: !3, line: 520, type: !753)
!1299 = !DILocalVariable(name: "_dss__port", scope: !1287, file: !3, line: 521, type: !80)
!1300 = !DILocalVariable(name: "hints", scope: !1287, file: !3, line: 522, type: !82)
!1301 = !DILocalVariable(name: "_dss_hints", scope: !1287, file: !3, line: 523, type: !81)
!1302 = !DILocalVariable(name: "servinfo", scope: !1287, file: !3, line: 524, type: !81)
!1303 = !DILocalVariable(name: "_dss_servinfo", scope: !1287, file: !3, line: 525, type: !94)
!1304 = !DILocalVariable(name: "p", scope: !1287, file: !3, line: 526, type: !81)
!1305 = !DILocalVariable(name: "tid", scope: !1306, file: !3, line: 534, type: !41)
!1306 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 534, column: 5)
!1307 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 534, column: 5)
!1308 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 534, column: 5)
!1309 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 534, column: 5)
!1310 = distinct !DILexicalBlock(scope: !1287, file: !3, line: 534, column: 5)
!1311 = !DILocalVariable(name: "_ret", scope: !1306, file: !3, line: 534, type: !13)
!1312 = !DILocalVariable(name: "_arg3", scope: !1306, file: !3, line: 534, type: !13)
!1313 = !DILocalVariable(name: "_arg4", scope: !1306, file: !3, line: 534, type: !13)
!1314 = !DILocalVariable(name: "tid", scope: !1315, file: !3, line: 543, type: !41)
!1315 = distinct !DILexicalBlock(scope: !1316, file: !3, line: 543, column: 9)
!1316 = distinct !DILexicalBlock(scope: !1317, file: !3, line: 543, column: 9)
!1317 = distinct !DILexicalBlock(scope: !1318, file: !3, line: 543, column: 9)
!1318 = distinct !DILexicalBlock(scope: !1319, file: !3, line: 543, column: 9)
!1319 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 543, column: 9)
!1320 = distinct !DILexicalBlock(scope: !1321, file: !3, line: 542, column: 59)
!1321 = distinct !DILexicalBlock(scope: !1322, file: !3, line: 542, column: 5)
!1322 = distinct !DILexicalBlock(scope: !1287, file: !3, line: 542, column: 5)
!1323 = !DILocalVariable(name: "_ret", scope: !1315, file: !3, line: 543, type: !13)
!1324 = !DILocalVariable(name: "_arg3", scope: !1315, file: !3, line: 543, type: !13)
!1325 = !DILocalVariable(name: "tid", scope: !1326, file: !3, line: 562, type: !41)
!1326 = distinct !DILexicalBlock(scope: !1327, file: !3, line: 562, column: 5)
!1327 = distinct !DILexicalBlock(scope: !1328, file: !3, line: 562, column: 5)
!1328 = distinct !DILexicalBlock(scope: !1329, file: !3, line: 562, column: 5)
!1329 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 562, column: 5)
!1330 = distinct !DILexicalBlock(scope: !1287, file: !3, line: 562, column: 5)
!1331 = !DILocation(line: 517, column: 33, scope: !1287)
!1332 = !DILocation(line: 517, column: 42, scope: !1287)
!1333 = !DILocation(line: 517, column: 54, scope: !1287)
!1334 = !DILocation(line: 517, column: 68, scope: !1287)
!1335 = !DILocation(line: 517, column: 76, scope: !1287)
!1336 = !DILocation(line: 519, column: 5, scope: !1287)
!1337 = !DILocation(line: 519, column: 9, scope: !1287)
!1338 = !DILocation(line: 520, column: 5, scope: !1287)
!1339 = !DILocation(line: 520, column: 10, scope: !1287)
!1340 = !DILocation(line: 521, column: 34, scope: !1287)
!1341 = !DILocation(line: 521, column: 55, scope: !1287)
!1342 = !DILocation(line: 521, column: 24, scope: !1287)
!1343 = !DILocation(line: 521, column: 11, scope: !1287)
!1344 = !DILocation(line: 522, column: 5, scope: !1287)
!1345 = !DILocation(line: 523, column: 56, scope: !1287)
!1346 = !DILocation(line: 523, column: 77, scope: !1287)
!1347 = !DILocation(line: 523, column: 35, scope: !1287)
!1348 = !DILocation(line: 523, column: 22, scope: !1287)
!1349 = !DILocation(line: 524, column: 5, scope: !1287)
!1350 = !DILocation(line: 525, column: 61, scope: !1287)
!1351 = !DILocation(line: 525, column: 85, scope: !1287)
!1352 = !DILocation(line: 525, column: 39, scope: !1287)
!1353 = !DILocation(line: 525, column: 23, scope: !1287)
!1354 = !DILocation(line: 528, column: 5, scope: !1287)
!1355 = !DILocation(line: 529, column: 12, scope: !1287)
!1356 = !DILocation(line: 529, column: 5, scope: !1287)
!1357 = !DILocation(line: 530, column: 19, scope: !1287)
!1358 = !DILocation(line: 530, column: 29, scope: !1287)
!1359 = !DILocation(line: 531, column: 19, scope: !1287)
!1360 = !DILocation(line: 531, column: 31, scope: !1287)
!1361 = !DILocation(line: 532, column: 19, scope: !1287)
!1362 = !DILocation(line: 532, column: 28, scope: !1287)
!1363 = !DILocation(line: 120, column: 2, scope: !239, inlinedAt: !1364)
!1364 = distinct !DILocation(line: 534, column: 5, scope: !1309)
!1365 = !DILocation(line: 118, column: 16, scope: !239, inlinedAt: !1364)
!1366 = !DILocation(line: 121, column: 2, scope: !239, inlinedAt: !1364)
!1367 = !DILocation(line: 534, column: 5, scope: !1309)
!1368 = !DILocation(line: 120, column: 2, scope: !239, inlinedAt: !1369)
!1369 = distinct !DILocation(line: 534, column: 5, scope: !1309)
!1370 = !DILocation(line: 118, column: 16, scope: !239, inlinedAt: !1369)
!1371 = !DILocation(line: 121, column: 2, scope: !239, inlinedAt: !1369)
!1372 = !DILocation(line: 534, column: 5, scope: !1310)
!1373 = !DILocation(line: 534, column: 5, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 534, column: 5)
!1375 = !DILocation(line: 519, column: 17, scope: !1287)
!1376 = !DILocation(line: 120, column: 2, scope: !239, inlinedAt: !1377)
!1377 = distinct !DILocation(line: 49, column: 21, scope: !260, inlinedAt: !1378)
!1378 = distinct !DILocation(line: 534, column: 5, scope: !1306)
!1379 = !DILocation(line: 118, column: 16, scope: !239, inlinedAt: !1377)
!1380 = !DILocation(line: 121, column: 2, scope: !239, inlinedAt: !1377)
!1381 = !DILocation(line: 49, column: 16, scope: !260, inlinedAt: !1378)
!1382 = !DILocation(line: 50, column: 19, scope: !260, inlinedAt: !1378)
!1383 = !DILocation(line: 50, column: 11, scope: !260, inlinedAt: !1378)
!1384 = !DILocation(line: 50, column: 9, scope: !260, inlinedAt: !1378)
!1385 = !DILocation(line: 50, column: 2, scope: !260, inlinedAt: !1378)
!1386 = !DILocation(line: 534, column: 5, scope: !1306)
!1387 = !{i32 -2146174843, i32 -2146174830, i32 -2146174805, i32 -2146174781, i32 -2146174756, i32 -2146174681, i32 -2146174656, i32 -2146174512, i32 -2146174487, i32 -2146171157, i32 -2146171068, i32 -2146170947, i32 -2146170852, i32 -2146170751, i32 -2146170724, i32 -2146170641, i32 -2146170552, i32 -2146170431, i32 -2146170331, i32 -2146170225, i32 -2146170117, i32 -2146174150, i32 -2146174097, i32 -2146174066, i32 -2146174035, i32 -2146174014, i32 -2146173992, i32 -2146173943, i32 -2146173922, i32 -2146173819, i32 -2146173787, i32 -2146170034, i32 -2146169945, i32 -2146169824, i32 -2146169725, i32 -2146169619, i32 -2146169517, i32 -2146169484, i32 -2146169411, i32 -2146169343, i32 -2146173597, i32 -2146173538, i32 -2146173485, i32 -2146173454, i32 -2146173423, i32 -2146173402, i32 -2146173380, i32 -2146173331, i32 -2146173310, i32 -2146169296, i32 -2146169207, i32 -2146169086, i32 -2146168987, i32 -2146168881, i32 -2146168779, i32 -2146168746, i32 -2146168663, i32 -2146168574, i32 -2146168453, i32 -2146168353, i32 -2146168327, i32 -2146168224, i32 -2146168198, i32 -2146173052, i32 -2146173027, i32 -2146172960, i32 -2146172935, i32 -2146172871, i32 -2146172789, i32 -2146172766, i32 -2146172741, i32 -2146172716}
!1388 = !DILocation(line: 534, column: 5, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1390, file: !3, line: 534, column: 5)
!1390 = distinct !DILexicalBlock(scope: !1306, file: !3, line: 534, column: 5)
!1391 = !{i32 -2146171655, i32 -2146171638}
!1392 = !DILocation(line: 538, column: 9, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1287, file: !3, line: 538, column: 9)
!1394 = !DILocation(line: 538, column: 12, scope: !1393)
!1395 = !DILocation(line: 538, column: 9, scope: !1287)
!1396 = !DILocation(line: 539, column: 33, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1393, file: !3, line: 538, column: 18)
!1398 = !DILocation(line: 539, column: 9, scope: !1397)
!1399 = !DILocation(line: 540, column: 9, scope: !1397)
!1400 = !DILocation(line: 542, column: 15, scope: !1322)
!1401 = !DILocation(line: 526, column: 22, scope: !1287)
!1402 = !DILocation(line: 542, column: 10, scope: !1322)
!1403 = !DILocation(line: 542, column: 34, scope: !1321)
!1404 = !DILocation(line: 542, column: 5, scope: !1322)
!1405 = !DILocation(line: 120, column: 2, scope: !239, inlinedAt: !1406)
!1406 = distinct !DILocation(line: 543, column: 9, scope: !1318)
!1407 = !DILocation(line: 118, column: 16, scope: !239, inlinedAt: !1406)
!1408 = !DILocation(line: 121, column: 2, scope: !239, inlinedAt: !1406)
!1409 = !DILocation(line: 543, column: 9, scope: !1318)
!1410 = !DILocation(line: 120, column: 2, scope: !239, inlinedAt: !1411)
!1411 = distinct !DILocation(line: 543, column: 9, scope: !1318)
!1412 = !DILocation(line: 118, column: 16, scope: !239, inlinedAt: !1411)
!1413 = !DILocation(line: 121, column: 2, scope: !239, inlinedAt: !1411)
!1414 = !DILocation(line: 543, column: 9, scope: !1319)
!1415 = !DILocation(line: 543, column: 9, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1318, file: !3, line: 543, column: 9)
!1417 = !DILocation(line: 120, column: 2, scope: !239, inlinedAt: !1418)
!1418 = distinct !DILocation(line: 49, column: 21, scope: !260, inlinedAt: !1419)
!1419 = distinct !DILocation(line: 543, column: 9, scope: !1315)
!1420 = !DILocation(line: 118, column: 16, scope: !239, inlinedAt: !1418)
!1421 = !DILocation(line: 121, column: 2, scope: !239, inlinedAt: !1418)
!1422 = !DILocation(line: 49, column: 16, scope: !260, inlinedAt: !1419)
!1423 = !DILocation(line: 50, column: 19, scope: !260, inlinedAt: !1419)
!1424 = !DILocation(line: 50, column: 11, scope: !260, inlinedAt: !1419)
!1425 = !DILocation(line: 50, column: 9, scope: !260, inlinedAt: !1419)
!1426 = !DILocation(line: 50, column: 2, scope: !260, inlinedAt: !1419)
!1427 = !DILocation(line: 543, column: 9, scope: !1315)
!1428 = !{i32 -2146165683, i32 -2146165670, i32 -2146165645, i32 -2146165621, i32 -2146165596, i32 -2146165521, i32 -2146165496, i32 -2146165352, i32 -2146162137, i32 -2146162048, i32 -2146161927, i32 -2146161832, i32 -2146161731, i32 -2146161704, i32 -2146161621, i32 -2146161532, i32 -2146161411, i32 -2146161311, i32 -2146161205, i32 -2146161097, i32 -2146165022, i32 -2146164969, i32 -2146164938, i32 -2146164907, i32 -2146164886, i32 -2146164864, i32 -2146164815, i32 -2146164794, i32 -2146164691, i32 -2146161014, i32 -2146160925, i32 -2146160804, i32 -2146160705, i32 -2146160599, i32 -2146160497, i32 -2146160464, i32 -2146160391, i32 -2146160323, i32 -2146164501, i32 -2146164442, i32 -2146164389, i32 -2146164358, i32 -2146164327, i32 -2146164306, i32 -2146164284, i32 -2146164235, i32 -2146164214, i32 -2146160281, i32 -2146160192, i32 -2146160071, i32 -2146159972, i32 -2146159866, i32 -2146159764, i32 -2146159731, i32 -2146159648, i32 -2146159559, i32 -2146159438, i32 -2146159338, i32 -2146159312, i32 -2146159209, i32 -2146159183, i32 -2146163956, i32 -2146163889, i32 -2146163864, i32 -2146163800, i32 -2146163718, i32 -2146163695, i32 -2146163670, i32 -2146163645}
!1429 = !DILocation(line: 543, column: 9, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1431, file: !3, line: 543, column: 9)
!1431 = distinct !DILexicalBlock(scope: !1315, file: !3, line: 543, column: 9)
!1432 = !{i32 -2146162607, i32 -2146162590}
!1433 = !DILocation(line: 545, column: 13, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 545, column: 13)
!1435 = !DILocation(line: 545, column: 15, scope: !1434)
!1436 = !DILocation(line: 545, column: 13, scope: !1320)
!1437 = !DILocation(line: 548, column: 16, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 548, column: 13)
!1439 = !DILocation(line: 548, column: 28, scope: !1438)
!1440 = !DILocalVariable(name: "err", arg: 1, scope: !1441, file: !3, line: 502, type: !80)
!1441 = distinct !DISubprogram(name: "anetV6Only", scope: !3, file: !3, line: 502, type: !193, isLocal: true, isDefinition: true, scopeLine: 502, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1442)
!1442 = !{!1440, !1443, !1444, !1445, !1446, !1447, !1453, !1454, !1455, !1456}
!1443 = !DILocalVariable(name: "s", arg: 2, scope: !1441, file: !3, line: 502, type: !7)
!1444 = !DILocalVariable(name: "yes", scope: !1441, file: !3, line: 503, type: !7)
!1445 = !DILocalVariable(name: "_dss_yes", scope: !1441, file: !3, line: 504, type: !6)
!1446 = !DILocalVariable(name: "ret", scope: !1441, file: !3, line: 506, type: !7)
!1447 = !DILocalVariable(name: "tid", scope: !1448, file: !3, line: 507, type: !41)
!1448 = distinct !DILexicalBlock(scope: !1449, file: !3, line: 507, column: 5)
!1449 = distinct !DILexicalBlock(scope: !1450, file: !3, line: 507, column: 5)
!1450 = distinct !DILexicalBlock(scope: !1451, file: !3, line: 507, column: 5)
!1451 = distinct !DILexicalBlock(scope: !1452, file: !3, line: 507, column: 5)
!1452 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 507, column: 5)
!1453 = !DILocalVariable(name: "_ret", scope: !1448, file: !3, line: 507, type: !13)
!1454 = !DILocalVariable(name: "_arg3", scope: !1448, file: !3, line: 507, type: !13)
!1455 = !DILocalVariable(name: "_arg4", scope: !1448, file: !3, line: 507, type: !13)
!1456 = !DILocalVariable(name: "_arg5", scope: !1448, file: !3, line: 507, type: !13)
!1457 = !DILocation(line: 502, column: 29, scope: !1441, inlinedAt: !1458)
!1458 = distinct !DILocation(line: 548, column: 31, scope: !1438)
!1459 = !DILocation(line: 502, column: 38, scope: !1441, inlinedAt: !1458)
!1460 = !DILocation(line: 503, column: 5, scope: !1441, inlinedAt: !1458)
!1461 = !DILocation(line: 504, column: 30, scope: !1441, inlinedAt: !1458)
!1462 = !DILocation(line: 504, column: 49, scope: !1441, inlinedAt: !1458)
!1463 = !DILocation(line: 504, column: 21, scope: !1441, inlinedAt: !1458)
!1464 = !DILocation(line: 504, column: 10, scope: !1441, inlinedAt: !1458)
!1465 = !DILocation(line: 505, column: 17, scope: !1441, inlinedAt: !1458)
!1466 = !DILocation(line: 506, column: 5, scope: !1441, inlinedAt: !1458)
!1467 = !DILocation(line: 120, column: 2, scope: !239, inlinedAt: !1468)
!1468 = distinct !DILocation(line: 507, column: 5, scope: !1451, inlinedAt: !1458)
!1469 = !DILocation(line: 118, column: 16, scope: !239, inlinedAt: !1468)
!1470 = !DILocation(line: 121, column: 2, scope: !239, inlinedAt: !1468)
!1471 = !DILocation(line: 507, column: 5, scope: !1451, inlinedAt: !1458)
!1472 = !DILocation(line: 120, column: 2, scope: !239, inlinedAt: !1473)
!1473 = distinct !DILocation(line: 507, column: 5, scope: !1451, inlinedAt: !1458)
!1474 = !DILocation(line: 118, column: 16, scope: !239, inlinedAt: !1473)
!1475 = !DILocation(line: 121, column: 2, scope: !239, inlinedAt: !1473)
!1476 = !DILocation(line: 507, column: 5, scope: !1452, inlinedAt: !1458)
!1477 = !DILocation(line: 507, column: 5, scope: !1478, inlinedAt: !1458)
!1478 = distinct !DILexicalBlock(scope: !1451, file: !3, line: 507, column: 5)
!1479 = !DILocation(line: 506, column: 9, scope: !1441, inlinedAt: !1458)
!1480 = !DILocation(line: 120, column: 2, scope: !239, inlinedAt: !1481)
!1481 = distinct !DILocation(line: 49, column: 21, scope: !260, inlinedAt: !1482)
!1482 = distinct !DILocation(line: 507, column: 5, scope: !1448, inlinedAt: !1458)
!1483 = !DILocation(line: 118, column: 16, scope: !239, inlinedAt: !1481)
!1484 = !DILocation(line: 121, column: 2, scope: !239, inlinedAt: !1481)
!1485 = !DILocation(line: 49, column: 16, scope: !260, inlinedAt: !1482)
!1486 = !DILocation(line: 50, column: 19, scope: !260, inlinedAt: !1482)
!1487 = !DILocation(line: 50, column: 11, scope: !260, inlinedAt: !1482)
!1488 = !DILocation(line: 50, column: 9, scope: !260, inlinedAt: !1482)
!1489 = !DILocation(line: 50, column: 2, scope: !260, inlinedAt: !1482)
!1490 = !DILocation(line: 507, column: 5, scope: !1448, inlinedAt: !1458)
!1491 = !{i32 -2146184719, i32 -2146184706, i32 -2146184681, i32 -2146184657, i32 -2146184632, i32 -2146184557, i32 -2146184532, i32 -2146184388, i32 -2146184363, i32 -2146180971, i32 -2146180882, i32 -2146180761, i32 -2146180666, i32 -2146180565, i32 -2146180538, i32 -2146180455, i32 -2146180366, i32 -2146180245, i32 -2146180145, i32 -2146180039, i32 -2146179931, i32 -2146183987, i32 -2146183934, i32 -2146183903, i32 -2146183872, i32 -2146183851, i32 -2146183829, i32 -2146183780, i32 -2146183759, i32 -2146183656, i32 -2146183624, i32 -2146179848, i32 -2146179759, i32 -2146179638, i32 -2146179539, i32 -2146179433, i32 -2146179331, i32 -2146179298, i32 -2146179225, i32 -2146179157, i32 -2146183434, i32 -2146183375, i32 -2146183322, i32 -2146183291, i32 -2146183260, i32 -2146183239, i32 -2146183217, i32 -2146183168, i32 -2146183147, i32 -2146179111, i32 -2146179022, i32 -2146178901, i32 -2146178802, i32 -2146178696, i32 -2146178594, i32 -2146178561, i32 -2146178478, i32 -2146178389, i32 -2146178268, i32 -2146178168, i32 -2146178142, i32 -2146178039, i32 -2146178013, i32 -2146182889, i32 -2146182864, i32 -2146182797, i32 -2146182772, i32 -2146182708, i32 -2146182626, i32 -2146182603, i32 -2146182578, i32 -2146182553}
!1492 = !DILocation(line: 507, column: 5, scope: !1493, inlinedAt: !1458)
!1493 = distinct !DILexicalBlock(scope: !1494, file: !3, line: 507, column: 5)
!1494 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 507, column: 5)
!1495 = !{i32 -2146181469, i32 -2146181452}
!1496 = !DILocation(line: 509, column: 9, scope: !1497, inlinedAt: !1458)
!1497 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 509, column: 9)
!1498 = !DILocation(line: 509, column: 13, scope: !1497, inlinedAt: !1458)
!1499 = !DILocation(line: 509, column: 9, scope: !1441, inlinedAt: !1458)
!1500 = !DILocation(line: 510, column: 54, scope: !1501, inlinedAt: !1458)
!1501 = distinct !DILexicalBlock(scope: !1497, file: !3, line: 509, column: 20)
!1502 = !DILocation(line: 510, column: 45, scope: !1501, inlinedAt: !1458)
!1503 = !DILocation(line: 510, column: 9, scope: !1501, inlinedAt: !1458)
!1504 = !DILocation(line: 511, column: 9, scope: !1501, inlinedAt: !1458)
!1505 = !DILocation(line: 512, column: 9, scope: !1501, inlinedAt: !1458)
!1506 = !DILocation(line: 515, column: 1, scope: !1441, inlinedAt: !1458)
!1507 = !DILocation(line: 514, column: 5, scope: !1441, inlinedAt: !1458)
!1508 = !DILocation(line: 548, column: 13, scope: !1320)
!1509 = !DILocation(line: 549, column: 34, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 549, column: 13)
!1511 = !DILocation(line: 549, column: 13, scope: !1510)
!1512 = !DILocation(line: 549, column: 37, scope: !1510)
!1513 = !DILocation(line: 549, column: 13, scope: !1320)
!1514 = !DILocation(line: 550, column: 28, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 550, column: 13)
!1516 = !DILocation(line: 550, column: 33, scope: !1515)
!1517 = !DILocation(line: 550, column: 44, scope: !1515)
!1518 = !DILocation(line: 550, column: 13, scope: !1515)
!1519 = !DILocation(line: 550, column: 64, scope: !1515)
!1520 = !DILocation(line: 550, column: 13, scope: !1320)
!1521 = !DILocation(line: 542, column: 50, scope: !1321)
!1522 = !DILocation(line: 542, column: 5, scope: !1321)
!1523 = distinct !{!1523, !1404, !1524}
!1524 = !DILocation(line: 552, column: 5, scope: !1322)
!1525 = !DILocation(line: 553, column: 9, scope: !1287)
!1526 = !DILocation(line: 554, column: 63, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1528, file: !3, line: 553, column: 20)
!1528 = distinct !DILexicalBlock(scope: !1287, file: !3, line: 553, column: 9)
!1529 = !DILocation(line: 554, column: 9, scope: !1527)
!1530 = !DILocation(line: 555, column: 9, scope: !1527)
!1531 = !DILocation(line: 0, scope: !1527)
!1532 = !DILocation(line: 559, column: 9, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1287, file: !3, line: 559, column: 9)
!1534 = !DILocation(line: 559, column: 11, scope: !1533)
!1535 = !DILocation(line: 559, column: 9, scope: !1287)
!1536 = !DILocation(line: 559, column: 18, scope: !1533)
!1537 = !DILocation(line: 0, scope: !1287)
!1538 = !DILocation(line: 0, scope: !1515)
!1539 = !DILocation(line: 120, column: 2, scope: !239, inlinedAt: !1540)
!1540 = distinct !DILocation(line: 562, column: 5, scope: !1329)
!1541 = !DILocation(line: 118, column: 16, scope: !239, inlinedAt: !1540)
!1542 = !DILocation(line: 121, column: 2, scope: !239, inlinedAt: !1540)
!1543 = !DILocation(line: 562, column: 5, scope: !1329)
!1544 = !DILocation(line: 120, column: 2, scope: !239, inlinedAt: !1545)
!1545 = distinct !DILocation(line: 562, column: 5, scope: !1329)
!1546 = !DILocation(line: 118, column: 16, scope: !239, inlinedAt: !1545)
!1547 = !DILocation(line: 121, column: 2, scope: !239, inlinedAt: !1545)
!1548 = !DILocation(line: 562, column: 5, scope: !1330)
!1549 = !DILocation(line: 562, column: 5, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1329, file: !3, line: 562, column: 5)
!1551 = !DILocation(line: 120, column: 2, scope: !239, inlinedAt: !1552)
!1552 = distinct !DILocation(line: 49, column: 21, scope: !260, inlinedAt: !1553)
!1553 = distinct !DILocation(line: 562, column: 5, scope: !1326)
!1554 = !DILocation(line: 118, column: 16, scope: !239, inlinedAt: !1552)
!1555 = !DILocation(line: 121, column: 2, scope: !239, inlinedAt: !1552)
!1556 = !DILocation(line: 49, column: 16, scope: !260, inlinedAt: !1553)
!1557 = !DILocation(line: 50, column: 19, scope: !260, inlinedAt: !1553)
!1558 = !DILocation(line: 50, column: 11, scope: !260, inlinedAt: !1553)
!1559 = !DILocation(line: 50, column: 9, scope: !260, inlinedAt: !1553)
!1560 = !DILocation(line: 50, column: 2, scope: !260, inlinedAt: !1553)
!1561 = !DILocation(line: 562, column: 5, scope: !1326)
!1562 = !{i32 -2146157208, i32 -2146157195, i32 -2146157170, i32 -2146157146, i32 -2146157121, i32 -2146157046, i32 -2146157021, i32 -2146156877, i32 -2146154660, i32 -2146154571, i32 -2146154450, i32 -2146154355, i32 -2146154254, i32 -2146154227, i32 -2146154144, i32 -2146154055, i32 -2146153934, i32 -2146153834, i32 -2146153728, i32 -2146153620, i32 -2146156589, i32 -2146156536, i32 -2146156505, i32 -2146156474, i32 -2146156453, i32 -2146156431, i32 -2146156382, i32 -2146156361, i32 -2146153537, i32 -2146153448, i32 -2146153327, i32 -2146153228, i32 -2146153122, i32 -2146153020, i32 -2146152987, i32 -2146152914, i32 -2146152846, i32 -2146155987, i32 -2146155934, i32 -2146155903, i32 -2146155872, i32 -2146155851, i32 -2146155829, i32 -2146155780, i32 -2146155759, i32 -2146152798, i32 -2146152709, i32 -2146152588, i32 -2146152489, i32 -2146152383, i32 -2146152281, i32 -2146152248, i32 -2146152165, i32 -2146152076, i32 -2146151955, i32 -2146151855, i32 -2146151829, i32 -2146151726, i32 -2146151700, i32 -2146155501, i32 -2146155434, i32 -2146155409, i32 -2146155345, i32 -2146155229, i32 -2146155204, i32 -2146155179}
!1563 = !DILocation(line: 563, column: 12, scope: !1287)
!1564 = !DILocation(line: 563, column: 5, scope: !1287)
!1565 = !DILocation(line: 0, scope: !1397)
!1566 = !DILocation(line: 564, column: 1, scope: !1287)
!1567 = distinct !DISubprogram(name: "anetTcp6Server", scope: !3, file: !3, line: 571, type: !1274, isLocal: false, isDefinition: true, scopeLine: 572, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1568)
!1568 = !{!1569, !1570, !1571, !1572}
!1569 = !DILocalVariable(name: "err", arg: 1, scope: !1567, file: !3, line: 571, type: !80)
!1570 = !DILocalVariable(name: "port", arg: 2, scope: !1567, file: !3, line: 571, type: !7)
!1571 = !DILocalVariable(name: "bindaddr", arg: 3, scope: !1567, file: !3, line: 571, type: !80)
!1572 = !DILocalVariable(name: "backlog", arg: 4, scope: !1567, file: !3, line: 571, type: !7)
!1573 = !DILocation(line: 571, column: 26, scope: !1567)
!1574 = !DILocation(line: 571, column: 35, scope: !1567)
!1575 = !DILocation(line: 571, column: 47, scope: !1567)
!1576 = !DILocation(line: 571, column: 61, scope: !1567)
!1577 = !DILocation(line: 573, column: 12, scope: !1567)
!1578 = !DILocation(line: 573, column: 5, scope: !1567)
!1579 = distinct !DISubprogram(name: "anetUnixServer", scope: !3, file: !3, line: 576, type: !1580, isLocal: false, isDefinition: true, scopeLine: 577, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1584)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{!7, !80, !80, !1582, !7}
!1582 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !1211, line: 205, baseType: !1583)
!1583 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !591, line: 88, baseType: !42)
!1584 = !{!1585, !1586, !1587, !1588, !1589, !1590}
!1585 = !DILocalVariable(name: "err", arg: 1, scope: !1579, file: !3, line: 576, type: !80)
!1586 = !DILocalVariable(name: "path", arg: 2, scope: !1579, file: !3, line: 576, type: !80)
!1587 = !DILocalVariable(name: "perm", arg: 3, scope: !1579, file: !3, line: 576, type: !1582)
!1588 = !DILocalVariable(name: "backlog", arg: 4, scope: !1579, file: !3, line: 576, type: !7)
!1589 = !DILocalVariable(name: "s", scope: !1579, file: !3, line: 578, type: !7)
!1590 = !DILocalVariable(name: "sa", scope: !1579, file: !3, line: 579, type: !1064)
!1591 = !DILocation(line: 576, column: 26, scope: !1579)
!1592 = !DILocation(line: 576, column: 37, scope: !1579)
!1593 = !DILocation(line: 576, column: 50, scope: !1579)
!1594 = !DILocation(line: 576, column: 60, scope: !1579)
!1595 = !DILocation(line: 579, column: 5, scope: !1579)
!1596 = !DILocation(line: 581, column: 14, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1579, file: !3, line: 581, column: 9)
!1598 = !DILocation(line: 578, column: 9, scope: !1579)
!1599 = !DILocation(line: 581, column: 46, scope: !1597)
!1600 = !DILocation(line: 581, column: 9, scope: !1579)
!1601 = !DILocation(line: 584, column: 5, scope: !1579)
!1602 = !DILocation(line: 585, column: 19, scope: !1579)
!1603 = !DILocation(line: 586, column: 13, scope: !1579)
!1604 = !DILocation(line: 586, column: 5, scope: !1579)
!1605 = !DILocation(line: 587, column: 26, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1579, file: !3, line: 587, column: 9)
!1607 = !DILocation(line: 587, column: 9, scope: !1606)
!1608 = !DILocation(line: 587, column: 68, scope: !1606)
!1609 = !DILocation(line: 587, column: 9, scope: !1579)
!1610 = !DILocation(line: 589, column: 9, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1579, file: !3, line: 589, column: 9)
!1612 = !DILocation(line: 589, column: 9, scope: !1579)
!1613 = !DILocation(line: 590, column: 9, scope: !1611)
!1614 = !DILocation(line: 0, scope: !1579)
!1615 = !DILocation(line: 0, scope: !1597)
!1616 = !DILocation(line: 592, column: 1, scope: !1579)
!1617 = distinct !DISubprogram(name: "anetListen", scope: !3, file: !3, line: 483, type: !1618, isLocal: true, isDefinition: true, scopeLine: 483, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1620)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{!7, !80, !7, !71, !90, !7}
!1620 = !{!1621, !1622, !1623, !1624, !1625, !1626, !1627, !1633, !1634, !1635, !1641}
!1621 = !DILocalVariable(name: "err", arg: 1, scope: !1617, file: !3, line: 483, type: !80)
!1622 = !DILocalVariable(name: "s", arg: 2, scope: !1617, file: !3, line: 483, type: !7)
!1623 = !DILocalVariable(name: "sa", arg: 3, scope: !1617, file: !3, line: 483, type: !71)
!1624 = !DILocalVariable(name: "len", arg: 4, scope: !1617, file: !3, line: 483, type: !90)
!1625 = !DILocalVariable(name: "backlog", arg: 5, scope: !1617, file: !3, line: 483, type: !7)
!1626 = !DILocalVariable(name: "ret", scope: !1617, file: !3, line: 484, type: !7)
!1627 = !DILocalVariable(name: "tid", scope: !1628, file: !3, line: 486, type: !41)
!1628 = distinct !DILexicalBlock(scope: !1629, file: !3, line: 486, column: 5)
!1629 = distinct !DILexicalBlock(scope: !1630, file: !3, line: 486, column: 5)
!1630 = distinct !DILexicalBlock(scope: !1631, file: !3, line: 486, column: 5)
!1631 = distinct !DILexicalBlock(scope: !1632, file: !3, line: 486, column: 5)
!1632 = distinct !DILexicalBlock(scope: !1617, file: !3, line: 486, column: 5)
!1633 = !DILocalVariable(name: "_ret", scope: !1628, file: !3, line: 486, type: !13)
!1634 = !DILocalVariable(name: "_arg3", scope: !1628, file: !3, line: 486, type: !13)
!1635 = !DILocalVariable(name: "tid", scope: !1636, file: !3, line: 493, type: !41)
!1636 = distinct !DILexicalBlock(scope: !1637, file: !3, line: 493, column: 5)
!1637 = distinct !DILexicalBlock(scope: !1638, file: !3, line: 493, column: 5)
!1638 = distinct !DILexicalBlock(scope: !1639, file: !3, line: 493, column: 5)
!1639 = distinct !DILexicalBlock(scope: !1640, file: !3, line: 493, column: 5)
!1640 = distinct !DILexicalBlock(scope: !1617, file: !3, line: 493, column: 5)
!1641 = !DILocalVariable(name: "_ret", scope: !1636, file: !3, line: 493, type: !13)
!1642 = !DILocation(line: 483, column: 29, scope: !1617)
!1643 = !DILocation(line: 483, column: 38, scope: !1617)
!1644 = !DILocation(line: 483, column: 58, scope: !1617)
!1645 = !DILocation(line: 483, column: 72, scope: !1617)
!1646 = !DILocation(line: 483, column: 81, scope: !1617)
!1647 = !DILocation(line: 484, column: 5, scope: !1617)
!1648 = !DILocation(line: 120, column: 2, scope: !239, inlinedAt: !1649)
!1649 = distinct !DILocation(line: 486, column: 5, scope: !1631)
!1650 = !DILocation(line: 118, column: 16, scope: !239, inlinedAt: !1649)
!1651 = !DILocation(line: 121, column: 2, scope: !239, inlinedAt: !1649)
!1652 = !DILocation(line: 486, column: 5, scope: !1631)
!1653 = !DILocation(line: 120, column: 2, scope: !239, inlinedAt: !1654)
!1654 = distinct !DILocation(line: 486, column: 5, scope: !1631)
!1655 = !DILocation(line: 118, column: 16, scope: !239, inlinedAt: !1654)
!1656 = !DILocation(line: 121, column: 2, scope: !239, inlinedAt: !1654)
!1657 = !DILocation(line: 486, column: 5, scope: !1632)
!1658 = !DILocation(line: 486, column: 5, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1631, file: !3, line: 486, column: 5)
!1660 = !DILocation(line: 484, column: 9, scope: !1617)
!1661 = !DILocation(line: 120, column: 2, scope: !239, inlinedAt: !1662)
!1662 = distinct !DILocation(line: 49, column: 21, scope: !260, inlinedAt: !1663)
!1663 = distinct !DILocation(line: 486, column: 5, scope: !1628)
!1664 = !DILocation(line: 118, column: 16, scope: !239, inlinedAt: !1662)
!1665 = !DILocation(line: 121, column: 2, scope: !239, inlinedAt: !1662)
!1666 = !DILocation(line: 49, column: 16, scope: !260, inlinedAt: !1663)
!1667 = !DILocation(line: 50, column: 19, scope: !260, inlinedAt: !1663)
!1668 = !DILocation(line: 50, column: 11, scope: !260, inlinedAt: !1663)
!1669 = !DILocation(line: 50, column: 9, scope: !260, inlinedAt: !1663)
!1670 = !DILocation(line: 50, column: 2, scope: !260, inlinedAt: !1663)
!1671 = !DILocation(line: 486, column: 5, scope: !1628)
!1672 = !{i32 -2146206420, i32 -2146206407, i32 -2146206382, i32 -2146206358, i32 -2146206333, i32 -2146206258, i32 -2146206233, i32 -2146206089, i32 -2146202896, i32 -2146202807, i32 -2146202686, i32 -2146202591, i32 -2146202490, i32 -2146202463, i32 -2146202380, i32 -2146202291, i32 -2146202170, i32 -2146202070, i32 -2146201964, i32 -2146201856, i32 -2146205759, i32 -2146205706, i32 -2146205675, i32 -2146205644, i32 -2146205623, i32 -2146205601, i32 -2146205552, i32 -2146205531, i32 -2146205428, i32 -2146201773, i32 -2146201684, i32 -2146201563, i32 -2146201464, i32 -2146201358, i32 -2146201256, i32 -2146201223, i32 -2146201150, i32 -2146201082, i32 -2146205238, i32 -2146205179, i32 -2146205126, i32 -2146205095, i32 -2146205064, i32 -2146205043, i32 -2146205021, i32 -2146204972, i32 -2146204951, i32 -2146201042, i32 -2146200953, i32 -2146200832, i32 -2146200733, i32 -2146200627, i32 -2146200525, i32 -2146200492, i32 -2146200409, i32 -2146200320, i32 -2146200199, i32 -2146200099, i32 -2146200073, i32 -2146199970, i32 -2146199944, i32 -2146204693, i32 -2146204626, i32 -2146204601, i32 -2146204537, i32 -2146204455, i32 -2146204432, i32 -2146204407, i32 -2146204382}
!1673 = !DILocation(line: 486, column: 5, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1675, file: !3, line: 486, column: 5)
!1675 = distinct !DILexicalBlock(scope: !1628, file: !3, line: 486, column: 5)
!1676 = !{i32 -2146203344, i32 -2146203327}
!1677 = !DILocation(line: 487, column: 9, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1617, file: !3, line: 487, column: 9)
!1679 = !DILocation(line: 487, column: 13, scope: !1678)
!1680 = !DILocation(line: 487, column: 9, scope: !1617)
!1681 = !DILocation(line: 488, column: 48, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1678, file: !3, line: 487, column: 20)
!1683 = !DILocation(line: 488, column: 39, scope: !1682)
!1684 = !DILocation(line: 488, column: 9, scope: !1682)
!1685 = !DILocation(line: 489, column: 9, scope: !1682)
!1686 = !DILocation(line: 490, column: 9, scope: !1682)
!1687 = !DILocation(line: 120, column: 2, scope: !239, inlinedAt: !1688)
!1688 = distinct !DILocation(line: 493, column: 5, scope: !1639)
!1689 = !DILocation(line: 118, column: 16, scope: !239, inlinedAt: !1688)
!1690 = !DILocation(line: 121, column: 2, scope: !239, inlinedAt: !1688)
!1691 = !DILocation(line: 493, column: 5, scope: !1639)
!1692 = !DILocation(line: 120, column: 2, scope: !239, inlinedAt: !1693)
!1693 = distinct !DILocation(line: 493, column: 5, scope: !1639)
!1694 = !DILocation(line: 118, column: 16, scope: !239, inlinedAt: !1693)
!1695 = !DILocation(line: 121, column: 2, scope: !239, inlinedAt: !1693)
!1696 = !DILocation(line: 493, column: 5, scope: !1640)
!1697 = !DILocation(line: 493, column: 5, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1639, file: !3, line: 493, column: 5)
!1699 = !DILocation(line: 120, column: 2, scope: !239, inlinedAt: !1700)
!1700 = distinct !DILocation(line: 49, column: 21, scope: !260, inlinedAt: !1701)
!1701 = distinct !DILocation(line: 493, column: 5, scope: !1636)
!1702 = !DILocation(line: 118, column: 16, scope: !239, inlinedAt: !1700)
!1703 = !DILocation(line: 121, column: 2, scope: !239, inlinedAt: !1700)
!1704 = !DILocation(line: 49, column: 16, scope: !260, inlinedAt: !1701)
!1705 = !DILocation(line: 50, column: 19, scope: !260, inlinedAt: !1701)
!1706 = !DILocation(line: 50, column: 11, scope: !260, inlinedAt: !1701)
!1707 = !DILocation(line: 50, column: 9, scope: !260, inlinedAt: !1701)
!1708 = !DILocation(line: 50, column: 2, scope: !260, inlinedAt: !1701)
!1709 = !DILocation(line: 493, column: 5, scope: !1636)
!1710 = !{i32 -2146193901, i32 -2146193888, i32 -2146193863, i32 -2146193839, i32 -2146193814, i32 -2146193739, i32 -2146193714, i32 -2146193570, i32 -2146190419, i32 -2146190330, i32 -2146190209, i32 -2146190114, i32 -2146190013, i32 -2146189986, i32 -2146189903, i32 -2146189814, i32 -2146189693, i32 -2146189593, i32 -2146189487, i32 -2146189379, i32 -2146193278, i32 -2146193225, i32 -2146193194, i32 -2146193163, i32 -2146193142, i32 -2146193120, i32 -2146193071, i32 -2146193050, i32 -2146189296, i32 -2146189207, i32 -2146189086, i32 -2146188987, i32 -2146188881, i32 -2146188779, i32 -2146188746, i32 -2146188673, i32 -2146188605, i32 -2146192743, i32 -2146192684, i32 -2146192631, i32 -2146192600, i32 -2146192569, i32 -2146192548, i32 -2146192526, i32 -2146192477, i32 -2146192456, i32 -2146188563, i32 -2146188474, i32 -2146188353, i32 -2146188254, i32 -2146188148, i32 -2146188046, i32 -2146188013, i32 -2146187930, i32 -2146187841, i32 -2146187720, i32 -2146187620, i32 -2146187594, i32 -2146187491, i32 -2146187465, i32 -2146192198, i32 -2146192131, i32 -2146192106, i32 -2146192042, i32 -2146191960, i32 -2146191937, i32 -2146191912, i32 -2146191887}
!1711 = !DILocation(line: 493, column: 5, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1713, file: !3, line: 493, column: 5)
!1713 = distinct !DILexicalBlock(scope: !1636, file: !3, line: 493, column: 5)
!1714 = !{i32 -2146190872, i32 -2146190855}
!1715 = !DILocation(line: 494, column: 9, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1617, file: !3, line: 494, column: 9)
!1717 = !DILocation(line: 494, column: 13, scope: !1716)
!1718 = !DILocation(line: 494, column: 9, scope: !1617)
!1719 = !DILocation(line: 495, column: 50, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1716, file: !3, line: 494, column: 20)
!1721 = !DILocation(line: 495, column: 41, scope: !1720)
!1722 = !DILocation(line: 495, column: 9, scope: !1720)
!1723 = !DILocation(line: 496, column: 9, scope: !1720)
!1724 = !DILocation(line: 497, column: 9, scope: !1720)
!1725 = !DILocation(line: 0, scope: !1617)
!1726 = !DILocation(line: 0, scope: !1682)
!1727 = !DILocation(line: 500, column: 1, scope: !1617)
!1728 = distinct !DISubprogram(name: "anetTcpAccept", scope: !3, file: !3, line: 613, type: !1729, isLocal: false, isDefinition: true, scopeLine: 613, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1731)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{!7, !80, !7, !80, !588, !6}
!1731 = !{!1732, !1733, !1734, !1735, !1736, !1737, !1738, !1741}
!1732 = !DILocalVariable(name: "err", arg: 1, scope: !1728, file: !3, line: 613, type: !80)
!1733 = !DILocalVariable(name: "s", arg: 2, scope: !1728, file: !3, line: 613, type: !7)
!1734 = !DILocalVariable(name: "ip", arg: 3, scope: !1728, file: !3, line: 613, type: !80)
!1735 = !DILocalVariable(name: "ip_len", arg: 4, scope: !1728, file: !3, line: 613, type: !588)
!1736 = !DILocalVariable(name: "port", arg: 5, scope: !1728, file: !3, line: 613, type: !6)
!1737 = !DILocalVariable(name: "fd", scope: !1728, file: !3, line: 614, type: !7)
!1738 = !DILocalVariable(name: "s", scope: !1739, file: !3, line: 619, type: !16)
!1739 = distinct !DILexicalBlock(scope: !1740, file: !3, line: 618, column: 34)
!1740 = distinct !DILexicalBlock(scope: !1728, file: !3, line: 618, column: 9)
!1741 = !DILocalVariable(name: "s", scope: !1742, file: !3, line: 623, type: !49)
!1742 = distinct !DILexicalBlock(scope: !1740, file: !3, line: 622, column: 12)
!1743 = !DILocation(line: 613, column: 25, scope: !1728)
!1744 = !DILocation(line: 613, column: 34, scope: !1728)
!1745 = !DILocation(line: 613, column: 43, scope: !1728)
!1746 = !DILocation(line: 613, column: 54, scope: !1728)
!1747 = !DILocation(line: 613, column: 67, scope: !1728)
!1748 = !DILocation(line: 615, column: 15, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1728, file: !3, line: 615, column: 9)
!1750 = !DILocation(line: 614, column: 9, scope: !1728)
!1751 = !DILocation(line: 615, column: 70, scope: !1749)
!1752 = !DILocation(line: 615, column: 9, scope: !1728)
!1753 = !DILocation(line: 618, column: 12, scope: !1740)
!1754 = !{!1755, !135, i64 1}
!1755 = !{!"sockaddr_storage", !135, i64 0, !135, i64 1, !135, i64 2, !135, i64 4, !135, i64 16}
!1756 = !DILocation(line: 618, column: 22, scope: !1740)
!1757 = !DILocation(line: 618, column: 9, scope: !1728)
!1758 = !DILocation(line: 0, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1742, file: !3, line: 624, column: 13)
!1760 = !DILocation(line: 0, scope: !1742)
!1761 = !DILocation(line: 620, column: 13, scope: !1739)
!1762 = !DILocation(line: 620, column: 60, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1739, file: !3, line: 620, column: 13)
!1764 = !DILocation(line: 620, column: 17, scope: !1763)
!1765 = !DILocation(line: 621, column: 13, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1739, file: !3, line: 621, column: 13)
!1767 = !DILocation(line: 621, column: 13, scope: !1739)
!1768 = !DILocation(line: 621, column: 27, scope: !1766)
!1769 = !{!1770, !1771, i64 2}
!1770 = !{!"sockaddr_in", !135, i64 0, !135, i64 1, !1771, i64 2, !1772, i64 4, !135, i64 8}
!1771 = !{!"short", !135, i64 0}
!1772 = !{!"in_addr", !134, i64 0}
!1773 = !DILocation(line: 621, column: 25, scope: !1766)
!1774 = !DILocation(line: 621, column: 19, scope: !1766)
!1775 = !DILocation(line: 624, column: 13, scope: !1742)
!1776 = !DILocation(line: 624, column: 62, scope: !1759)
!1777 = !DILocation(line: 624, column: 17, scope: !1759)
!1778 = !DILocation(line: 625, column: 13, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1742, file: !3, line: 625, column: 13)
!1780 = !DILocation(line: 625, column: 13, scope: !1742)
!1781 = !DILocation(line: 625, column: 27, scope: !1779)
!1782 = !{!1783, !1771, i64 2}
!1783 = !{!"sockaddr_in6", !135, i64 0, !135, i64 1, !1771, i64 2, !134, i64 4, !1784, i64 8, !134, i64 24}
!1784 = !{!"in6_addr", !135, i64 0}
!1785 = !DILocation(line: 625, column: 25, scope: !1779)
!1786 = !DILocation(line: 625, column: 19, scope: !1779)
!1787 = !DILocation(line: 627, column: 5, scope: !1728)
!1788 = !DILocation(line: 0, scope: !1749)
!1789 = !DILocation(line: 628, column: 1, scope: !1728)
!1790 = distinct !DISubprogram(name: "anetGenericAccept", scope: !3, file: !3, line: 594, type: !1791, isLocal: true, isDefinition: true, scopeLine: 594, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1794)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{!7, !80, !7, !71, !1793}
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!1794 = !{!1795, !1796, !1797, !1798, !1799, !1800, !1807, !1808}
!1795 = !DILocalVariable(name: "err", arg: 1, scope: !1790, file: !3, line: 594, type: !80)
!1796 = !DILocalVariable(name: "s", arg: 2, scope: !1790, file: !3, line: 594, type: !7)
!1797 = !DILocalVariable(name: "sa", arg: 3, scope: !1790, file: !3, line: 594, type: !71)
!1798 = !DILocalVariable(name: "len", arg: 4, scope: !1790, file: !3, line: 594, type: !1793)
!1799 = !DILocalVariable(name: "fd", scope: !1790, file: !3, line: 595, type: !7)
!1800 = !DILocalVariable(name: "tid", scope: !1801, file: !3, line: 597, type: !41)
!1801 = distinct !DILexicalBlock(scope: !1802, file: !3, line: 597, column: 2)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !3, line: 597, column: 2)
!1803 = distinct !DILexicalBlock(scope: !1804, file: !3, line: 597, column: 2)
!1804 = distinct !DILexicalBlock(scope: !1805, file: !3, line: 597, column: 2)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !3, line: 597, column: 2)
!1806 = distinct !DILexicalBlock(scope: !1790, file: !3, line: 596, column: 14)
!1807 = !DILocalVariable(name: "_ret", scope: !1801, file: !3, line: 597, type: !13)
!1808 = !DILocalVariable(name: "_arg3", scope: !1801, file: !3, line: 597, type: !13)
!1809 = !DILocation(line: 594, column: 36, scope: !1790)
!1810 = !DILocation(line: 594, column: 45, scope: !1790)
!1811 = !DILocation(line: 594, column: 65, scope: !1790)
!1812 = !DILocation(line: 594, column: 80, scope: !1790)
!1813 = !DILocation(line: 595, column: 5, scope: !1790)
!1814 = !DILocation(line: 596, column: 5, scope: !1790)
!1815 = !DILocation(line: 120, column: 2, scope: !239, inlinedAt: !1816)
!1816 = distinct !DILocation(line: 597, column: 2, scope: !1804)
!1817 = !DILocation(line: 118, column: 16, scope: !239, inlinedAt: !1816)
!1818 = !DILocation(line: 121, column: 2, scope: !239, inlinedAt: !1816)
!1819 = !DILocation(line: 597, column: 2, scope: !1804)
!1820 = !DILocation(line: 120, column: 2, scope: !239, inlinedAt: !1821)
!1821 = distinct !DILocation(line: 597, column: 2, scope: !1804)
!1822 = !DILocation(line: 118, column: 16, scope: !239, inlinedAt: !1821)
!1823 = !DILocation(line: 121, column: 2, scope: !239, inlinedAt: !1821)
!1824 = !DILocation(line: 597, column: 2, scope: !1805)
!1825 = !DILocation(line: 597, column: 2, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1804, file: !3, line: 597, column: 2)
!1827 = !DILocation(line: 595, column: 9, scope: !1790)
!1828 = !DILocation(line: 120, column: 2, scope: !239, inlinedAt: !1829)
!1829 = distinct !DILocation(line: 49, column: 21, scope: !260, inlinedAt: !1830)
!1830 = distinct !DILocation(line: 597, column: 2, scope: !1801)
!1831 = !DILocation(line: 118, column: 16, scope: !239, inlinedAt: !1829)
!1832 = !DILocation(line: 121, column: 2, scope: !239, inlinedAt: !1829)
!1833 = !DILocation(line: 49, column: 16, scope: !260, inlinedAt: !1830)
!1834 = !DILocation(line: 50, column: 19, scope: !260, inlinedAt: !1830)
!1835 = !DILocation(line: 50, column: 11, scope: !260, inlinedAt: !1830)
!1836 = !DILocation(line: 50, column: 9, scope: !260, inlinedAt: !1830)
!1837 = !DILocation(line: 50, column: 2, scope: !260, inlinedAt: !1830)
!1838 = !DILocation(line: 597, column: 2, scope: !1801)
!1839 = !{i32 -2146149547, i32 -2146149534, i32 -2146149509, i32 -2146149485, i32 -2146149460, i32 -2146149385, i32 -2146149360, i32 -2146149216, i32 -2146146027, i32 -2146145938, i32 -2146145817, i32 -2146145722, i32 -2146145621, i32 -2146145594, i32 -2146145511, i32 -2146145422, i32 -2146145301, i32 -2146145201, i32 -2146145095, i32 -2146144987, i32 -2146148886, i32 -2146148833, i32 -2146148802, i32 -2146148771, i32 -2146148750, i32 -2146148728, i32 -2146148679, i32 -2146148658, i32 -2146148555, i32 -2146144904, i32 -2146144815, i32 -2146144694, i32 -2146144595, i32 -2146144489, i32 -2146144387, i32 -2146144354, i32 -2146144281, i32 -2146144213, i32 -2146148365, i32 -2146148306, i32 -2146148253, i32 -2146148222, i32 -2146148191, i32 -2146148170, i32 -2146148148, i32 -2146148099, i32 -2146148078, i32 -2146144171, i32 -2146144082, i32 -2146143961, i32 -2146143862, i32 -2146143756, i32 -2146143654, i32 -2146143621, i32 -2146143538, i32 -2146143449, i32 -2146143328, i32 -2146143228, i32 -2146143202, i32 -2146143099, i32 -2146143073, i32 -2146147820, i32 -2146147753, i32 -2146147728, i32 -2146147664, i32 -2146147582, i32 -2146147559, i32 -2146147534, i32 -2146147509}
!1840 = !DILocation(line: 597, column: 2, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1842, file: !3, line: 597, column: 2)
!1842 = distinct !DILexicalBlock(scope: !1801, file: !3, line: 597, column: 2)
!1843 = !{i32 -2146146471, i32 -2146146454}
!1844 = !DILocation(line: 598, column: 13, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1806, file: !3, line: 598, column: 13)
!1846 = !DILocation(line: 598, column: 16, scope: !1845)
!1847 = !DILocation(line: 598, column: 13, scope: !1806)
!1848 = !DILocation(line: 599, column: 17, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1850, file: !3, line: 599, column: 17)
!1850 = distinct !DILexicalBlock(scope: !1845, file: !3, line: 598, column: 23)
!1851 = !DILocation(line: 599, column: 23, scope: !1849)
!1852 = !DILocation(line: 599, column: 17, scope: !1850)
!1853 = distinct !{!1853, !1814, !1854}
!1854 = !DILocation(line: 607, column: 5, scope: !1790)
!1855 = !DILocation(line: 602, column: 58, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1849, file: !3, line: 601, column: 18)
!1857 = !DILocation(line: 602, column: 49, scope: !1856)
!1858 = !DILocation(line: 602, column: 17, scope: !1856)
!1859 = !DILocation(line: 603, column: 17, scope: !1856)
!1860 = !DILocation(line: 0, scope: !1856)
!1861 = !DILocation(line: 609, column: 1, scope: !1790)
!1862 = distinct !DISubprogram(name: "anetUnixAccept", scope: !3, file: !3, line: 630, type: !193, isLocal: false, isDefinition: true, scopeLine: 630, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1863)
!1863 = !{!1864, !1865, !1866, !1867, !1868}
!1864 = !DILocalVariable(name: "err", arg: 1, scope: !1862, file: !3, line: 630, type: !80)
!1865 = !DILocalVariable(name: "s", arg: 2, scope: !1862, file: !3, line: 630, type: !7)
!1866 = !DILocalVariable(name: "fd", scope: !1862, file: !3, line: 631, type: !7)
!1867 = !DILocalVariable(name: "sa", scope: !1862, file: !3, line: 632, type: !1064)
!1868 = !DILocalVariable(name: "salen", scope: !1862, file: !3, line: 633, type: !90)
!1869 = !DILocation(line: 630, column: 26, scope: !1862)
!1870 = !DILocation(line: 630, column: 35, scope: !1862)
!1871 = !DILocation(line: 632, column: 5, scope: !1862)
!1872 = !DILocation(line: 633, column: 5, scope: !1862)
!1873 = !DILocation(line: 633, column: 15, scope: !1862)
!1874 = !DILocation(line: 634, column: 39, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1862, file: !3, line: 634, column: 9)
!1876 = !DILocation(line: 634, column: 15, scope: !1875)
!1877 = !DILocation(line: 631, column: 9, scope: !1862)
!1878 = !DILocation(line: 634, column: 9, scope: !1862)
!1879 = !DILocation(line: 0, scope: !1862)
!1880 = !DILocation(line: 638, column: 1, scope: !1862)
!1881 = distinct !DISubprogram(name: "anetPeerToString", scope: !3, file: !3, line: 640, type: !1882, isLocal: false, isDefinition: true, scopeLine: 640, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1884)
!1882 = !DISubroutineType(types: !1883)
!1883 = !{!7, !7, !80, !588, !6}
!1884 = !{!1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1898, !1899, !1900, !1903}
!1885 = !DILocalVariable(name: "fd", arg: 1, scope: !1881, file: !3, line: 640, type: !7)
!1886 = !DILocalVariable(name: "ip", arg: 2, scope: !1881, file: !3, line: 640, type: !80)
!1887 = !DILocalVariable(name: "ip_len", arg: 3, scope: !1881, file: !3, line: 640, type: !588)
!1888 = !DILocalVariable(name: "port", arg: 4, scope: !1881, file: !3, line: 640, type: !6)
!1889 = !DILocalVariable(name: "sa", scope: !1881, file: !3, line: 641, type: !98)
!1890 = !DILocalVariable(name: "salen", scope: !1881, file: !3, line: 642, type: !90)
!1891 = !DILocalVariable(name: "ret", scope: !1881, file: !3, line: 643, type: !7)
!1892 = !DILocalVariable(name: "tid", scope: !1893, file: !3, line: 644, type: !41)
!1893 = distinct !DILexicalBlock(scope: !1894, file: !3, line: 644, column: 5)
!1894 = distinct !DILexicalBlock(scope: !1895, file: !3, line: 644, column: 5)
!1895 = distinct !DILexicalBlock(scope: !1896, file: !3, line: 644, column: 5)
!1896 = distinct !DILexicalBlock(scope: !1897, file: !3, line: 644, column: 5)
!1897 = distinct !DILexicalBlock(scope: !1881, file: !3, line: 644, column: 5)
!1898 = !DILocalVariable(name: "_ret", scope: !1893, file: !3, line: 644, type: !13)
!1899 = !DILocalVariable(name: "_arg3", scope: !1893, file: !3, line: 644, type: !13)
!1900 = !DILocalVariable(name: "s", scope: !1901, file: !3, line: 651, type: !16)
!1901 = distinct !DILexicalBlock(scope: !1902, file: !3, line: 650, column: 34)
!1902 = distinct !DILexicalBlock(scope: !1881, file: !3, line: 650, column: 9)
!1903 = !DILocalVariable(name: "s", scope: !1904, file: !3, line: 655, type: !49)
!1904 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 654, column: 42)
!1905 = distinct !DILexicalBlock(scope: !1902, file: !3, line: 654, column: 16)
!1906 = !DILocation(line: 640, column: 26, scope: !1881)
!1907 = !DILocation(line: 640, column: 36, scope: !1881)
!1908 = !DILocation(line: 640, column: 47, scope: !1881)
!1909 = !DILocation(line: 640, column: 60, scope: !1881)
!1910 = !DILocation(line: 641, column: 5, scope: !1881)
!1911 = !DILocation(line: 642, column: 5, scope: !1881)
!1912 = !DILocation(line: 642, column: 15, scope: !1881)
!1913 = !DILocation(line: 643, column: 5, scope: !1881)
!1914 = !DILocation(line: 120, column: 2, scope: !239, inlinedAt: !1915)
!1915 = distinct !DILocation(line: 644, column: 5, scope: !1896)
!1916 = !DILocation(line: 118, column: 16, scope: !239, inlinedAt: !1915)
!1917 = !DILocation(line: 121, column: 2, scope: !239, inlinedAt: !1915)
!1918 = !DILocation(line: 644, column: 5, scope: !1896)
!1919 = !DILocation(line: 120, column: 2, scope: !239, inlinedAt: !1920)
!1920 = distinct !DILocation(line: 644, column: 5, scope: !1896)
!1921 = !DILocation(line: 118, column: 16, scope: !239, inlinedAt: !1920)
!1922 = !DILocation(line: 121, column: 2, scope: !239, inlinedAt: !1920)
!1923 = !DILocation(line: 644, column: 5, scope: !1897)
!1924 = !DILocation(line: 644, column: 5, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1896, file: !3, line: 644, column: 5)
!1926 = !DILocation(line: 643, column: 9, scope: !1881)
!1927 = !DILocation(line: 120, column: 2, scope: !239, inlinedAt: !1928)
!1928 = distinct !DILocation(line: 49, column: 21, scope: !260, inlinedAt: !1929)
!1929 = distinct !DILocation(line: 644, column: 5, scope: !1893)
!1930 = !DILocation(line: 118, column: 16, scope: !239, inlinedAt: !1928)
!1931 = !DILocation(line: 121, column: 2, scope: !239, inlinedAt: !1928)
!1932 = !DILocation(line: 49, column: 16, scope: !260, inlinedAt: !1929)
!1933 = !DILocation(line: 50, column: 19, scope: !260, inlinedAt: !1929)
!1934 = !DILocation(line: 50, column: 11, scope: !260, inlinedAt: !1929)
!1935 = !DILocation(line: 50, column: 9, scope: !260, inlinedAt: !1929)
!1936 = !DILocation(line: 50, column: 2, scope: !260, inlinedAt: !1929)
!1937 = !DILocation(line: 644, column: 5, scope: !1893)
!1938 = !{i32 -2146140380, i32 -2146140367, i32 -2146140342, i32 -2146140318, i32 -2146140293, i32 -2146140218, i32 -2146140193, i32 -2146140049, i32 -2146136818, i32 -2146136729, i32 -2146136608, i32 -2146136513, i32 -2146136412, i32 -2146136385, i32 -2146136302, i32 -2146136213, i32 -2146136092, i32 -2146135992, i32 -2146135886, i32 -2146135778, i32 -2146139719, i32 -2146139666, i32 -2146139635, i32 -2146139604, i32 -2146139583, i32 -2146139561, i32 -2146139512, i32 -2146139491, i32 -2146139388, i32 -2146135695, i32 -2146135606, i32 -2146135485, i32 -2146135386, i32 -2146135280, i32 -2146135178, i32 -2146135145, i32 -2146135072, i32 -2146135004, i32 -2146139198, i32 -2146139139, i32 -2146139086, i32 -2146139055, i32 -2146139024, i32 -2146139003, i32 -2146138981, i32 -2146138932, i32 -2146138911, i32 -2146134957, i32 -2146134868, i32 -2146134747, i32 -2146134648, i32 -2146134542, i32 -2146134440, i32 -2146134407, i32 -2146134324, i32 -2146134235, i32 -2146134114, i32 -2146134014, i32 -2146133988, i32 -2146133885, i32 -2146133859, i32 -2146138653, i32 -2146138586, i32 -2146138561, i32 -2146138497, i32 -2146138415, i32 -2146138392, i32 -2146138367, i32 -2146138342}
!1939 = !DILocation(line: 644, column: 5, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1941, file: !3, line: 644, column: 5)
!1941 = distinct !DILexicalBlock(scope: !1893, file: !3, line: 644, column: 5)
!1942 = !{i32 -2146137304, i32 -2146137287}
!1943 = !DILocation(line: 647, column: 9, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1881, file: !3, line: 647, column: 9)
!1945 = !DILocation(line: 647, column: 13, scope: !1944)
!1946 = !DILocation(line: 648, column: 16, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1881, file: !3, line: 648, column: 9)
!1948 = !DILocation(line: 647, column: 9, scope: !1881)
!1949 = !DILocation(line: 650, column: 12, scope: !1902)
!1950 = !DILocation(line: 650, column: 22, scope: !1902)
!1951 = !DILocation(line: 650, column: 9, scope: !1881)
!1952 = !DILocation(line: 652, column: 13, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1901, file: !3, line: 652, column: 13)
!1954 = !DILocation(line: 652, column: 13, scope: !1901)
!1955 = !DILocation(line: 651, column: 29, scope: !1901)
!1956 = !DILocation(line: 652, column: 47, scope: !1953)
!1957 = !DILocation(line: 652, column: 35, scope: !1953)
!1958 = !DILocation(line: 652, column: 60, scope: !1953)
!1959 = !DILocation(line: 652, column: 17, scope: !1953)
!1960 = !DILocation(line: 653, column: 13, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1901, file: !3, line: 653, column: 13)
!1962 = !DILocation(line: 653, column: 13, scope: !1901)
!1963 = !DILocation(line: 653, column: 27, scope: !1961)
!1964 = !DILocation(line: 653, column: 25, scope: !1961)
!1965 = !DILocation(line: 653, column: 19, scope: !1961)
!1966 = !DILocation(line: 654, column: 29, scope: !1905)
!1967 = !DILocation(line: 654, column: 16, scope: !1902)
!1968 = !DILocation(line: 656, column: 13, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1904, file: !3, line: 656, column: 13)
!1970 = !DILocation(line: 656, column: 13, scope: !1904)
!1971 = !DILocation(line: 655, column: 30, scope: !1904)
!1972 = !DILocation(line: 656, column: 48, scope: !1969)
!1973 = !DILocation(line: 656, column: 36, scope: !1969)
!1974 = !DILocation(line: 656, column: 62, scope: !1969)
!1975 = !DILocation(line: 656, column: 17, scope: !1969)
!1976 = !DILocation(line: 657, column: 13, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1904, file: !3, line: 657, column: 13)
!1978 = !DILocation(line: 657, column: 13, scope: !1904)
!1979 = !DILocation(line: 657, column: 27, scope: !1977)
!1980 = !DILocation(line: 657, column: 25, scope: !1977)
!1981 = !DILocation(line: 657, column: 19, scope: !1977)
!1982 = !DILocation(line: 658, column: 29, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 658, column: 16)
!1984 = !DILocation(line: 658, column: 16, scope: !1905)
!1985 = !DILocation(line: 659, column: 13, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1987, file: !3, line: 659, column: 13)
!1987 = distinct !DILexicalBlock(scope: !1983, file: !3, line: 658, column: 41)
!1988 = !DILocation(line: 659, column: 13, scope: !1987)
!1989 = !DILocation(line: 659, column: 17, scope: !1986)
!1990 = !DILocation(line: 660, column: 13, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1987, file: !3, line: 660, column: 13)
!1992 = !DILocation(line: 660, column: 13, scope: !1987)
!1993 = !DILocation(line: 660, column: 25, scope: !1991)
!1994 = !DILocation(line: 660, column: 19, scope: !1991)
!1995 = !DILocation(line: 0, scope: !1901)
!1996 = !DILocation(line: 664, column: 5, scope: !1881)
!1997 = !DILocation(line: 667, column: 9, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1881, file: !3, line: 667, column: 9)
!1999 = !DILocation(line: 667, column: 9, scope: !1881)
!2000 = !DILocation(line: 668, column: 20, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !2002, file: !3, line: 668, column: 13)
!2002 = distinct !DILexicalBlock(scope: !1998, file: !3, line: 667, column: 13)
!2003 = !DILocation(line: 668, column: 13, scope: !2002)
!2004 = !DILocation(line: 669, column: 19, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !2001, file: !3, line: 668, column: 26)
!2006 = !{!135, !135, i64 0}
!2007 = !DILocation(line: 670, column: 13, scope: !2005)
!2008 = !DILocation(line: 670, column: 19, scope: !2005)
!2009 = !DILocation(line: 671, column: 9, scope: !2005)
!2010 = !DILocation(line: 671, column: 27, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !2001, file: !3, line: 671, column: 20)
!2012 = !DILocation(line: 671, column: 20, scope: !2001)
!2013 = !DILocation(line: 672, column: 19, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !2011, file: !3, line: 671, column: 33)
!2015 = !DILocation(line: 673, column: 9, scope: !2014)
!2016 = !DILocation(line: 675, column: 9, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !1881, file: !3, line: 675, column: 9)
!2018 = !DILocation(line: 675, column: 9, scope: !1881)
!2019 = !DILocation(line: 675, column: 21, scope: !2017)
!2020 = !DILocation(line: 675, column: 15, scope: !2017)
!2021 = !DILocation(line: 0, scope: !1881)
!2022 = !DILocation(line: 677, column: 1, scope: !1881)
!2023 = distinct !DISubprogram(name: "anetFormatAddr", scope: !3, file: !3, line: 682, type: !2024, isLocal: false, isDefinition: true, scopeLine: 682, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2026)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{!7, !80, !588, !80, !7}
!2026 = !{!2027, !2028, !2029, !2030}
!2027 = !DILocalVariable(name: "buf", arg: 1, scope: !2023, file: !3, line: 682, type: !80)
!2028 = !DILocalVariable(name: "buf_len", arg: 2, scope: !2023, file: !3, line: 682, type: !588)
!2029 = !DILocalVariable(name: "ip", arg: 3, scope: !2023, file: !3, line: 682, type: !80)
!2030 = !DILocalVariable(name: "port", arg: 4, scope: !2023, file: !3, line: 682, type: !7)
!2031 = !DILocation(line: 682, column: 26, scope: !2023)
!2032 = !DILocation(line: 682, column: 38, scope: !2023)
!2033 = !DILocation(line: 682, column: 53, scope: !2023)
!2034 = !DILocation(line: 682, column: 61, scope: !2023)
!2035 = !DILocation(line: 683, column: 34, scope: !2023)
!2036 = !DILocation(line: 683, column: 12, scope: !2023)
!2037 = !DILocation(line: 683, column: 5, scope: !2023)
!2038 = distinct !DISubprogram(name: "anetFormatPeer", scope: !3, file: !3, line: 688, type: !2039, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2041)
!2039 = !DISubroutineType(types: !2040)
!2040 = !{!7, !7, !80, !588}
!2041 = !{!2042, !2043, !2044, !2045, !2049}
!2042 = !DILocalVariable(name: "fd", arg: 1, scope: !2038, file: !3, line: 688, type: !7)
!2043 = !DILocalVariable(name: "buf", arg: 2, scope: !2038, file: !3, line: 688, type: !80)
!2044 = !DILocalVariable(name: "buf_len", arg: 3, scope: !2038, file: !3, line: 688, type: !588)
!2045 = !DILocalVariable(name: "ip", scope: !2038, file: !3, line: 689, type: !2046)
!2046 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 368, elements: !2047)
!2047 = !{!2048}
!2048 = !DISubrange(count: 46)
!2049 = !DILocalVariable(name: "port", scope: !2038, file: !3, line: 690, type: !7)
!2050 = !DILocation(line: 688, column: 24, scope: !2038)
!2051 = !DILocation(line: 688, column: 34, scope: !2038)
!2052 = !DILocation(line: 688, column: 46, scope: !2038)
!2053 = !DILocation(line: 689, column: 5, scope: !2038)
!2054 = !DILocation(line: 689, column: 10, scope: !2038)
!2055 = !DILocation(line: 690, column: 5, scope: !2038)
!2056 = !DILocation(line: 690, column: 9, scope: !2038)
!2057 = !DILocation(line: 692, column: 5, scope: !2038)
!2058 = !DILocation(line: 693, column: 45, scope: !2038)
!2059 = !DILocation(line: 682, column: 26, scope: !2023, inlinedAt: !2060)
!2060 = distinct !DILocation(line: 693, column: 12, scope: !2038)
!2061 = !DILocation(line: 682, column: 38, scope: !2023, inlinedAt: !2060)
!2062 = !DILocation(line: 682, column: 53, scope: !2023, inlinedAt: !2060)
!2063 = !DILocation(line: 682, column: 61, scope: !2023, inlinedAt: !2060)
!2064 = !DILocation(line: 683, column: 34, scope: !2023, inlinedAt: !2060)
!2065 = !DILocation(line: 683, column: 12, scope: !2023, inlinedAt: !2060)
!2066 = !DILocation(line: 683, column: 5, scope: !2023, inlinedAt: !2060)
!2067 = !DILocation(line: 694, column: 1, scope: !2038)
!2068 = !DILocation(line: 693, column: 5, scope: !2038)
!2069 = distinct !DISubprogram(name: "anetSockName", scope: !3, file: !3, line: 696, type: !1882, isLocal: false, isDefinition: true, scopeLine: 696, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2070)
!2070 = !{!2071, !2072, !2073, !2074, !2075, !2076, !2077, !2080}
!2071 = !DILocalVariable(name: "fd", arg: 1, scope: !2069, file: !3, line: 696, type: !7)
!2072 = !DILocalVariable(name: "ip", arg: 2, scope: !2069, file: !3, line: 696, type: !80)
!2073 = !DILocalVariable(name: "ip_len", arg: 3, scope: !2069, file: !3, line: 696, type: !588)
!2074 = !DILocalVariable(name: "port", arg: 4, scope: !2069, file: !3, line: 696, type: !6)
!2075 = !DILocalVariable(name: "sa", scope: !2069, file: !3, line: 697, type: !98)
!2076 = !DILocalVariable(name: "salen", scope: !2069, file: !3, line: 698, type: !90)
!2077 = !DILocalVariable(name: "s", scope: !2078, file: !3, line: 707, type: !16)
!2078 = distinct !DILexicalBlock(scope: !2079, file: !3, line: 706, column: 34)
!2079 = distinct !DILexicalBlock(scope: !2069, file: !3, line: 706, column: 9)
!2080 = !DILocalVariable(name: "s", scope: !2081, file: !3, line: 711, type: !49)
!2081 = distinct !DILexicalBlock(scope: !2079, file: !3, line: 710, column: 12)
!2082 = !DILocation(line: 696, column: 22, scope: !2069)
!2083 = !DILocation(line: 696, column: 32, scope: !2069)
!2084 = !DILocation(line: 696, column: 43, scope: !2069)
!2085 = !DILocation(line: 696, column: 56, scope: !2069)
!2086 = !DILocation(line: 697, column: 5, scope: !2069)
!2087 = !DILocation(line: 698, column: 5, scope: !2069)
!2088 = !DILocation(line: 698, column: 15, scope: !2069)
!2089 = !DILocation(line: 700, column: 24, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2069, file: !3, line: 700, column: 9)
!2091 = !DILocation(line: 700, column: 9, scope: !2090)
!2092 = !DILocation(line: 700, column: 54, scope: !2090)
!2093 = !DILocation(line: 700, column: 9, scope: !2069)
!2094 = !DILocation(line: 701, column: 13, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2096, file: !3, line: 701, column: 13)
!2096 = distinct !DILexicalBlock(scope: !2090, file: !3, line: 700, column: 61)
!2097 = !DILocation(line: 701, column: 13, scope: !2096)
!2098 = !DILocation(line: 701, column: 25, scope: !2095)
!2099 = !DILocation(line: 701, column: 19, scope: !2095)
!2100 = !DILocation(line: 702, column: 15, scope: !2096)
!2101 = !DILocation(line: 703, column: 9, scope: !2096)
!2102 = !DILocation(line: 703, column: 15, scope: !2096)
!2103 = !DILocation(line: 704, column: 9, scope: !2096)
!2104 = !DILocation(line: 706, column: 12, scope: !2079)
!2105 = !DILocation(line: 706, column: 22, scope: !2079)
!2106 = !DILocation(line: 706, column: 9, scope: !2069)
!2107 = !DILocation(line: 0, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2081, file: !3, line: 712, column: 13)
!2109 = !DILocation(line: 0, scope: !2081)
!2110 = !DILocation(line: 708, column: 13, scope: !2078)
!2111 = !DILocation(line: 707, column: 29, scope: !2078)
!2112 = !DILocation(line: 708, column: 47, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2078, file: !3, line: 708, column: 13)
!2114 = !DILocation(line: 708, column: 35, scope: !2113)
!2115 = !DILocation(line: 708, column: 60, scope: !2113)
!2116 = !DILocation(line: 708, column: 17, scope: !2113)
!2117 = !DILocation(line: 709, column: 13, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2078, file: !3, line: 709, column: 13)
!2119 = !DILocation(line: 709, column: 13, scope: !2078)
!2120 = !DILocation(line: 709, column: 27, scope: !2118)
!2121 = !DILocation(line: 709, column: 25, scope: !2118)
!2122 = !DILocation(line: 709, column: 19, scope: !2118)
!2123 = !DILocation(line: 712, column: 13, scope: !2081)
!2124 = !DILocation(line: 711, column: 30, scope: !2081)
!2125 = !DILocation(line: 712, column: 48, scope: !2108)
!2126 = !DILocation(line: 712, column: 36, scope: !2108)
!2127 = !DILocation(line: 712, column: 62, scope: !2108)
!2128 = !DILocation(line: 712, column: 17, scope: !2108)
!2129 = !DILocation(line: 713, column: 13, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2081, file: !3, line: 713, column: 13)
!2131 = !DILocation(line: 713, column: 13, scope: !2081)
!2132 = !DILocation(line: 713, column: 27, scope: !2130)
!2133 = !DILocation(line: 713, column: 25, scope: !2130)
!2134 = !DILocation(line: 713, column: 19, scope: !2130)
!2135 = !DILocation(line: 715, column: 5, scope: !2069)
!2136 = !DILocation(line: 0, scope: !2069)
!2137 = !DILocation(line: 0, scope: !2096)
!2138 = !DILocation(line: 716, column: 1, scope: !2069)
!2139 = distinct !DISubprogram(name: "anetFormatSock", scope: !3, file: !3, line: 718, type: !2039, isLocal: false, isDefinition: true, scopeLine: 718, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2140)
!2140 = !{!2141, !2142, !2143, !2144, !2145}
!2141 = !DILocalVariable(name: "fd", arg: 1, scope: !2139, file: !3, line: 718, type: !7)
!2142 = !DILocalVariable(name: "fmt", arg: 2, scope: !2139, file: !3, line: 718, type: !80)
!2143 = !DILocalVariable(name: "fmt_len", arg: 3, scope: !2139, file: !3, line: 718, type: !588)
!2144 = !DILocalVariable(name: "ip", scope: !2139, file: !3, line: 719, type: !2046)
!2145 = !DILocalVariable(name: "port", scope: !2139, file: !3, line: 720, type: !7)
!2146 = !DILocation(line: 718, column: 24, scope: !2139)
!2147 = !DILocation(line: 718, column: 34, scope: !2139)
!2148 = !DILocation(line: 718, column: 46, scope: !2139)
!2149 = !DILocation(line: 719, column: 5, scope: !2139)
!2150 = !DILocation(line: 719, column: 10, scope: !2139)
!2151 = !DILocation(line: 720, column: 5, scope: !2139)
!2152 = !DILocation(line: 720, column: 9, scope: !2139)
!2153 = !DILocation(line: 722, column: 5, scope: !2139)
!2154 = !DILocation(line: 723, column: 45, scope: !2139)
!2155 = !DILocation(line: 682, column: 26, scope: !2023, inlinedAt: !2156)
!2156 = distinct !DILocation(line: 723, column: 12, scope: !2139)
!2157 = !DILocation(line: 682, column: 38, scope: !2023, inlinedAt: !2156)
!2158 = !DILocation(line: 682, column: 53, scope: !2023, inlinedAt: !2156)
!2159 = !DILocation(line: 682, column: 61, scope: !2023, inlinedAt: !2156)
!2160 = !DILocation(line: 683, column: 34, scope: !2023, inlinedAt: !2156)
!2161 = !DILocation(line: 683, column: 12, scope: !2023, inlinedAt: !2156)
!2162 = !DILocation(line: 683, column: 5, scope: !2023, inlinedAt: !2156)
!2163 = !DILocation(line: 724, column: 1, scope: !2139)
!2164 = !DILocation(line: 723, column: 5, scope: !2139)
!2165 = distinct !DISubprogram(name: "anetSetReuseAddr", scope: !3, file: !3, line: 269, type: !193, isLocal: true, isDefinition: true, scopeLine: 269, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2166)
!2166 = !{!2167, !2168, !2169, !2170, !2171, !2172, !2178, !2179, !2180, !2181}
!2167 = !DILocalVariable(name: "err", arg: 1, scope: !2165, file: !3, line: 269, type: !80)
!2168 = !DILocalVariable(name: "fd", arg: 2, scope: !2165, file: !3, line: 269, type: !7)
!2169 = !DILocalVariable(name: "yes", scope: !2165, file: !3, line: 270, type: !7)
!2170 = !DILocalVariable(name: "_dss_yes", scope: !2165, file: !3, line: 271, type: !6)
!2171 = !DILocalVariable(name: "ret", scope: !2165, file: !3, line: 275, type: !7)
!2172 = !DILocalVariable(name: "tid", scope: !2173, file: !3, line: 276, type: !41)
!2173 = distinct !DILexicalBlock(scope: !2174, file: !3, line: 276, column: 5)
!2174 = distinct !DILexicalBlock(scope: !2175, file: !3, line: 276, column: 5)
!2175 = distinct !DILexicalBlock(scope: !2176, file: !3, line: 276, column: 5)
!2176 = distinct !DILexicalBlock(scope: !2177, file: !3, line: 276, column: 5)
!2177 = distinct !DILexicalBlock(scope: !2165, file: !3, line: 276, column: 5)
!2178 = !DILocalVariable(name: "_ret", scope: !2173, file: !3, line: 276, type: !13)
!2179 = !DILocalVariable(name: "_arg3", scope: !2173, file: !3, line: 276, type: !13)
!2180 = !DILocalVariable(name: "_arg4", scope: !2173, file: !3, line: 276, type: !13)
!2181 = !DILocalVariable(name: "_arg5", scope: !2173, file: !3, line: 276, type: !13)
!2182 = !DILocation(line: 269, column: 35, scope: !2165)
!2183 = !DILocation(line: 269, column: 44, scope: !2165)
!2184 = !DILocation(line: 270, column: 5, scope: !2165)
!2185 = !DILocation(line: 271, column: 30, scope: !2165)
!2186 = !DILocation(line: 271, column: 49, scope: !2165)
!2187 = !DILocation(line: 271, column: 21, scope: !2165)
!2188 = !DILocation(line: 271, column: 10, scope: !2165)
!2189 = !DILocation(line: 272, column: 17, scope: !2165)
!2190 = !DILocation(line: 275, column: 5, scope: !2165)
!2191 = !DILocation(line: 120, column: 2, scope: !239, inlinedAt: !2192)
!2192 = distinct !DILocation(line: 276, column: 5, scope: !2176)
!2193 = !DILocation(line: 118, column: 16, scope: !239, inlinedAt: !2192)
!2194 = !DILocation(line: 121, column: 2, scope: !239, inlinedAt: !2192)
!2195 = !DILocation(line: 276, column: 5, scope: !2176)
!2196 = !DILocation(line: 120, column: 2, scope: !239, inlinedAt: !2197)
!2197 = distinct !DILocation(line: 276, column: 5, scope: !2176)
!2198 = !DILocation(line: 118, column: 16, scope: !239, inlinedAt: !2197)
!2199 = !DILocation(line: 121, column: 2, scope: !239, inlinedAt: !2197)
!2200 = !DILocation(line: 276, column: 5, scope: !2177)
!2201 = !DILocation(line: 276, column: 5, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2176, file: !3, line: 276, column: 5)
!2203 = !DILocation(line: 275, column: 9, scope: !2165)
!2204 = !DILocation(line: 120, column: 2, scope: !239, inlinedAt: !2205)
!2205 = distinct !DILocation(line: 49, column: 21, scope: !260, inlinedAt: !2206)
!2206 = distinct !DILocation(line: 276, column: 5, scope: !2173)
!2207 = !DILocation(line: 118, column: 16, scope: !239, inlinedAt: !2205)
!2208 = !DILocation(line: 121, column: 2, scope: !239, inlinedAt: !2205)
!2209 = !DILocation(line: 49, column: 16, scope: !260, inlinedAt: !2206)
!2210 = !DILocation(line: 50, column: 19, scope: !260, inlinedAt: !2206)
!2211 = !DILocation(line: 50, column: 11, scope: !260, inlinedAt: !2206)
!2212 = !DILocation(line: 50, column: 9, scope: !260, inlinedAt: !2206)
!2213 = !DILocation(line: 50, column: 2, scope: !260, inlinedAt: !2206)
!2214 = !DILocation(line: 276, column: 5, scope: !2173)
!2215 = !{i32 -2146251518, i32 -2146251505, i32 -2146251480, i32 -2146251456, i32 -2146251431, i32 -2146251356, i32 -2146251331, i32 -2146251187, i32 -2146251162, i32 -2146247755, i32 -2146247666, i32 -2146247545, i32 -2146247450, i32 -2146247349, i32 -2146247322, i32 -2146247239, i32 -2146247150, i32 -2146247029, i32 -2146246929, i32 -2146246823, i32 -2146246715, i32 -2146250786, i32 -2146250733, i32 -2146250702, i32 -2146250671, i32 -2146250650, i32 -2146250628, i32 -2146250579, i32 -2146250558, i32 -2146250455, i32 -2146250423, i32 -2146246632, i32 -2146246543, i32 -2146246422, i32 -2146246323, i32 -2146246217, i32 -2146246115, i32 -2146246082, i32 -2146246009, i32 -2146245941, i32 -2146250233, i32 -2146250174, i32 -2146250121, i32 -2146250090, i32 -2146250059, i32 -2146250038, i32 -2146250016, i32 -2146249967, i32 -2146249946, i32 -2146245895, i32 -2146245806, i32 -2146245685, i32 -2146245586, i32 -2146245480, i32 -2146245378, i32 -2146245345, i32 -2146245262, i32 -2146245173, i32 -2146245052, i32 -2146244952, i32 -2146244926, i32 -2146244823, i32 -2146244797, i32 -2146249688, i32 -2146249663, i32 -2146249596, i32 -2146249571, i32 -2146249507, i32 -2146249425, i32 -2146249402, i32 -2146249377, i32 -2146249352}
!2216 = !DILocation(line: 276, column: 5, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2218, file: !3, line: 276, column: 5)
!2218 = distinct !DILexicalBlock(scope: !2173, file: !3, line: 276, column: 5)
!2219 = !{i32 -2146248268, i32 -2146248251}
!2220 = !DILocation(line: 278, column: 9, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2165, file: !3, line: 278, column: 9)
!2222 = !DILocation(line: 278, column: 13, scope: !2221)
!2223 = !DILocation(line: 278, column: 9, scope: !2165)
!2224 = !DILocation(line: 279, column: 67, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2221, file: !3, line: 278, column: 20)
!2226 = !DILocation(line: 279, column: 58, scope: !2225)
!2227 = !DILocation(line: 279, column: 9, scope: !2225)
!2228 = !DILocation(line: 280, column: 9, scope: !2225)
!2229 = !DILocation(line: 0, scope: !2165)
!2230 = !DILocation(line: 0, scope: !2225)
!2231 = !DILocation(line: 283, column: 1, scope: !2165)
