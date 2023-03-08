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

; Function Attrs: noredzone nounwind
define dso_local i32 @anetSetBlock(i8*, i32, i32) local_unnamed_addr #0 !dbg !115 {
  %4 = tail call i32 (i32, i32, ...) @fcntl(i32 %1, i32 3) #5, !dbg !126
  %5 = icmp eq i32 %4, -1, !dbg !129
  br i1 %5, label %6, label %10, !dbg !130

; <label>:6:                                      ; preds = %3
  %7 = tail call i32* @__errno() #5, !dbg !131
  %8 = load i32, i32* %7, align 4, !dbg !131, !tbaa !133
  %9 = tail call i8* @strerror(i32 %8) #5, !dbg !137
  tail call void (i8*, i8*, ...) @anetSetError(i8* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %9) #6, !dbg !138
  br label %21, !dbg !139

; <label>:10:                                     ; preds = %3
  %11 = icmp eq i32 %2, 0, !dbg !140
  %12 = or i32 %4, 16384, !dbg !142
  %13 = and i32 %4, -16385, !dbg !143
  %14 = select i1 %11, i32 %13, i32 %12, !dbg !144
  %15 = tail call i32 (i32, i32, ...) @fcntl(i32 %1, i32 4, i32 %14) #5, !dbg !145
  %16 = icmp eq i32 %15, -1, !dbg !147
  br i1 %16, label %17, label %21, !dbg !148

; <label>:17:                                     ; preds = %10
  %18 = tail call i32* @__errno() #5, !dbg !149
  %19 = load i32, i32* %18, align 4, !dbg !149, !tbaa !133
  %20 = tail call i8* @strerror(i32 %19) #5, !dbg !151
  tail call void (i8*, i8*, ...) @anetSetError(i8* %0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %20) #6, !dbg !152
  br label %21, !dbg !153

; <label>:21:                                     ; preds = %10, %17, %6
  %22 = phi i32 [ -1, %6 ], [ -1, %17 ], [ 0, %10 ], !dbg !154
  ret i32 %22, !dbg !155
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i32 @fcntl(i32, i32, ...) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal void @anetSetError(i8*, i8*, ...) unnamed_addr #0 !dbg !156 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !181
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #4, !dbg !181
  %5 = icmp eq i8* %0, null, !dbg !183
  br i1 %5, label %9, label %6, !dbg !185

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !186
  call void @llvm.va_start(i8* nonnull %4), !dbg !186
  %8 = call i32 @vsnprintf(i8* nonnull %0, i64 256, i8* %1, %struct.__va_list_tag* nonnull %7) #5, !dbg !187
  call void @llvm.va_end(i8* nonnull %4), !dbg !188
  br label %9, !dbg !189

; <label>:9:                                      ; preds = %2, %6
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #4, !dbg !189
  ret void, !dbg !189
}

; Function Attrs: noredzone
declare dso_local i8* @strerror(i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local i32 @anetNonBlock(i8*, i32) local_unnamed_addr #0 !dbg !190 {
  %3 = tail call i32 @anetSetBlock(i8* %0, i32 %1, i32 1) #6, !dbg !198
  ret i32 %3, !dbg !199
}

; Function Attrs: noredzone nounwind
define dso_local i32 @anetBlock(i8*, i32) local_unnamed_addr #0 !dbg !200 {
  %3 = tail call i32 @anetSetBlock(i8* %0, i32 %1, i32 0) #6, !dbg !206
  ret i32 %3, !dbg !207
}

; Function Attrs: noredzone nounwind
define dso_local i32 @anetKeepAlive(i8*, i32, i32) local_unnamed_addr #0 !dbg !208 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = bitcast i32* %4 to i8*, !dbg !229
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #4, !dbg !229
  %7 = ptrtoint i32* %4 to i64, !dbg !230
  %8 = add i64 %7, 65536, !dbg !231
  %9 = inttoptr i64 %8 to i32*, !dbg !232
  store i32 1, i32* %9, align 4, !dbg !234, !tbaa !133
  %10 = bitcast i32* %5 to i8*, !dbg !235
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #4, !dbg !235
  %11 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !236, !srcloc !244
  %12 = icmp ult i64 %11, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !246
  br i1 %12, label %19, label %13, !dbg !246

; <label>:13:                                     ; preds = %3
  %14 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !247, !srcloc !244
  %15 = icmp ugt i64 %14, ptrtoint ([0 x i8]* @_end to i64), !dbg !246
  br i1 %15, label %19, label %16, !dbg !250

; <label>:16:                                     ; preds = %13
  %17 = inttoptr i64 %8 to i8*, !dbg !251
  %18 = call i32 @setsockopt(i32 %1, i32 4095, i32 8, i8* %17, i32 4) #5, !dbg !251
  store i32 %18, i32* %5, align 4, !dbg !251, !tbaa !133
  br label %29, !dbg !251

; <label>:19:                                     ; preds = %13, %3
  %20 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !254, !srcloc !244
  %21 = and i64 %20, -65536, !dbg !265
  %22 = or i64 %21, 4097, !dbg !265
  %23 = add nsw i64 %22, -1, !dbg !265
  %24 = inttoptr i64 %23 to i32*, !dbg !266
  %25 = load i32, i32* %24, align 4096, !dbg !267, !tbaa !133
  %26 = sext i32 %1 to i64, !dbg !268
  %27 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call setsockopt\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r8},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %26, i64 4095, i64 8, i64 %8, i64 4, i32 %25, i32 (i32, i32, i32, i8*, i32)* nonnull @setsockopt) #4, !dbg !268, !srcloc !269
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %5, i64 %27) #4, !dbg !270, !srcloc !273
  %28 = load i32, i32* %5, align 4, !dbg !274, !tbaa !133
  br label %29

; <label>:29:                                     ; preds = %19, %16
  %30 = phi i32 [ %28, %19 ], [ %18, %16 ], !dbg !274
  %31 = icmp eq i32 %30, -1, !dbg !276
  br i1 %31, label %32, label %36, !dbg !277

; <label>:32:                                     ; preds = %29
  %33 = call i32* @__errno() #5, !dbg !278
  %34 = load i32, i32* %33, align 4, !dbg !278, !tbaa !133
  %35 = call i8* @strerror(i32 %34) #5, !dbg !280
  call void (i8*, i8*, ...) @anetSetError(i8* %0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %35) #6, !dbg !281
  br label %36, !dbg !282

; <label>:36:                                     ; preds = %29, %32
  %37 = phi i32 [ -1, %32 ], [ 0, %29 ], !dbg !283
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #4, !dbg !284
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #4, !dbg !284
  ret i32 %37, !dbg !284
}

; Function Attrs: noredzone
declare dso_local i32 @setsockopt(i32, i32, i32, i8*, i32) #3

; Function Attrs: noredzone nounwind
define dso_local i32 @anetEnableTcpNoDelay(i8*, i32) local_unnamed_addr #0 !dbg !285 {
  %3 = tail call fastcc i32 @anetSetTcpNoDelay(i8* %0, i32 %1, i32 1) #6, !dbg !291
  ret i32 %3, !dbg !292
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @anetSetTcpNoDelay(i8*, i32, i32) unnamed_addr #0 !dbg !293 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = bitcast i32* %4 to i8*, !dbg !314
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #4, !dbg !314
  %7 = ptrtoint i32* %4 to i64, !dbg !315
  %8 = add i64 %7, 65536, !dbg !316
  %9 = inttoptr i64 %8 to i32*, !dbg !317
  store i32 %2, i32* %9, align 4, !dbg !319, !tbaa !133
  %10 = bitcast i32* %5 to i8*, !dbg !320
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #4, !dbg !320
  %11 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !321, !srcloc !244
  %12 = icmp ult i64 %11, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !324
  br i1 %12, label %19, label %13, !dbg !324

; <label>:13:                                     ; preds = %3
  %14 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !325, !srcloc !244
  %15 = icmp ugt i64 %14, ptrtoint ([0 x i8]* @_end to i64), !dbg !324
  br i1 %15, label %19, label %16, !dbg !328

; <label>:16:                                     ; preds = %13
  %17 = inttoptr i64 %8 to i8*, !dbg !329
  %18 = call i32 @setsockopt(i32 %1, i32 6, i32 1, i8* %17, i32 4) #5, !dbg !329
  store i32 %18, i32* %5, align 4, !dbg !329, !tbaa !133
  br label %29, !dbg !329

; <label>:19:                                     ; preds = %13, %3
  %20 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !332, !srcloc !244
  %21 = and i64 %20, -65536, !dbg !337
  %22 = or i64 %21, 4097, !dbg !337
  %23 = add nsw i64 %22, -1, !dbg !337
  %24 = inttoptr i64 %23 to i32*, !dbg !338
  %25 = load i32, i32* %24, align 4096, !dbg !339, !tbaa !133
  %26 = sext i32 %1 to i64, !dbg !340
  %27 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call setsockopt\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r8},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %26, i64 6, i64 1, i64 %8, i64 4, i32 %25, i32 (i32, i32, i32, i8*, i32)* nonnull @setsockopt) #4, !dbg !340, !srcloc !341
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %5, i64 %27) #4, !dbg !342, !srcloc !345
  %28 = load i32, i32* %5, align 4, !dbg !346, !tbaa !133
  br label %29

; <label>:29:                                     ; preds = %19, %16
  %30 = phi i32 [ %28, %19 ], [ %18, %16 ], !dbg !346
  %31 = icmp eq i32 %30, -1, !dbg !348
  br i1 %31, label %32, label %36, !dbg !349

; <label>:32:                                     ; preds = %29
  %33 = call i32* @__errno() #5, !dbg !350
  %34 = load i32, i32* %33, align 4, !dbg !350, !tbaa !133
  %35 = call i8* @strerror(i32 %34) #5, !dbg !352
  call void (i8*, i8*, ...) @anetSetError(i8* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i8* %35) #6, !dbg !353
  br label %36, !dbg !354

; <label>:36:                                     ; preds = %29, %32
  %37 = phi i32 [ -1, %32 ], [ 0, %29 ], !dbg !355
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #4, !dbg !356
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #4, !dbg !356
  ret i32 %37, !dbg !356
}

; Function Attrs: noredzone nounwind
define dso_local i32 @anetDisableTcpNoDelay(i8*, i32) local_unnamed_addr #0 !dbg !357 {
  %3 = tail call fastcc i32 @anetSetTcpNoDelay(i8* %0, i32 %1, i32 0) #6, !dbg !363
  ret i32 %3, !dbg !364
}

; Function Attrs: noredzone nounwind
define dso_local i32 @anetSetSendBuffer(i8*, i32, i32) local_unnamed_addr #0 !dbg !365 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %2, i32* %4, align 4, !tbaa !133
  %6 = bitcast i32* %5 to i8*, !dbg !384
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #4, !dbg !384
  %7 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !385, !srcloc !244
  %8 = icmp ult i64 %7, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !388
  br i1 %8, label %15, label %9, !dbg !388

; <label>:9:                                      ; preds = %3
  %10 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !389, !srcloc !244
  %11 = icmp ugt i64 %10, ptrtoint ([0 x i8]* @_end to i64), !dbg !388
  br i1 %11, label %15, label %12, !dbg !392

; <label>:12:                                     ; preds = %9
  %13 = bitcast i32* %4 to i8*, !dbg !393
  %14 = call i32 @setsockopt(i32 %1, i32 4095, i32 4097, i8* nonnull %13, i32 4) #5, !dbg !393
  store i32 %14, i32* %5, align 4, !dbg !393, !tbaa !133
  br label %26, !dbg !393

; <label>:15:                                     ; preds = %9, %3
  %16 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !396, !srcloc !244
  %17 = and i64 %16, -65536, !dbg !401
  %18 = or i64 %17, 4097, !dbg !401
  %19 = add nsw i64 %18, -1, !dbg !401
  %20 = inttoptr i64 %19 to i32*, !dbg !402
  %21 = load i32, i32* %20, align 4096, !dbg !403, !tbaa !133
  %22 = ptrtoint i32* %4 to i64, !dbg !404
  %23 = sext i32 %1 to i64, !dbg !404
  %24 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call setsockopt\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r8},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %23, i64 4095, i64 4097, i64 %22, i64 4, i32 %21, i32 (i32, i32, i32, i8*, i32)* nonnull @setsockopt) #4, !dbg !404, !srcloc !405
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %5, i64 %24) #4, !dbg !406, !srcloc !409
  %25 = load i32, i32* %5, align 4, !dbg !410, !tbaa !133
  br label %26

; <label>:26:                                     ; preds = %15, %12
  %27 = phi i32 [ %25, %15 ], [ %14, %12 ], !dbg !410
  %28 = icmp eq i32 %27, -1, !dbg !412
  br i1 %28, label %29, label %33, !dbg !413

; <label>:29:                                     ; preds = %26
  %30 = call i32* @__errno() #5, !dbg !414
  %31 = load i32, i32* %30, align 4, !dbg !414, !tbaa !133
  %32 = call i8* @strerror(i32 %31) #5, !dbg !416
  call void (i8*, i8*, ...) @anetSetError(i8* %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %32) #6, !dbg !417
  br label %33, !dbg !418

; <label>:33:                                     ; preds = %26, %29
  %34 = phi i32 [ -1, %29 ], [ 0, %26 ], !dbg !419
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #4, !dbg !420
  ret i32 %34, !dbg !420
}

; Function Attrs: noredzone nounwind
define dso_local i32 @anetTcpKeepAlive(i8*, i32) local_unnamed_addr #0 !dbg !421 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = bitcast i32* %3 to i8*, !dbg !439
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #4, !dbg !439
  store i32 1, i32* %3, align 4, !dbg !440, !tbaa !133
  %6 = bitcast i32* %4 to i8*, !dbg !441
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #4, !dbg !441
  %7 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !442, !srcloc !244
  %8 = icmp ult i64 %7, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !445
  br i1 %8, label %14, label %9, !dbg !445

; <label>:9:                                      ; preds = %2
  %10 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !446, !srcloc !244
  %11 = icmp ugt i64 %10, ptrtoint ([0 x i8]* @_end to i64), !dbg !445
  br i1 %11, label %14, label %12, !dbg !449

; <label>:12:                                     ; preds = %9
  %13 = call i32 @setsockopt(i32 %1, i32 4095, i32 8, i8* nonnull %5, i32 4) #5, !dbg !450
  store i32 %13, i32* %4, align 4, !dbg !450, !tbaa !133
  br label %25, !dbg !450

; <label>:14:                                     ; preds = %9, %2
  %15 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !453, !srcloc !244
  %16 = and i64 %15, -65536, !dbg !458
  %17 = or i64 %16, 4097, !dbg !458
  %18 = add nsw i64 %17, -1, !dbg !458
  %19 = inttoptr i64 %18 to i32*, !dbg !459
  %20 = load i32, i32* %19, align 4096, !dbg !460, !tbaa !133
  %21 = ptrtoint i32* %3 to i64, !dbg !461
  %22 = sext i32 %1 to i64, !dbg !461
  %23 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call setsockopt\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r8},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %22, i64 4095, i64 8, i64 %21, i64 4, i32 %20, i32 (i32, i32, i32, i8*, i32)* nonnull @setsockopt) #4, !dbg !461, !srcloc !462
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %4, i64 %23) #4, !dbg !463, !srcloc !466
  %24 = load i32, i32* %4, align 4, !dbg !467, !tbaa !133
  br label %25

; <label>:25:                                     ; preds = %14, %12
  %26 = phi i32 [ %24, %14 ], [ %13, %12 ], !dbg !467
  %27 = icmp eq i32 %26, -1, !dbg !469
  br i1 %27, label %28, label %32, !dbg !470

; <label>:28:                                     ; preds = %25
  %29 = call i32* @__errno() #5, !dbg !471
  %30 = load i32, i32* %29, align 4, !dbg !471, !tbaa !133
  %31 = call i8* @strerror(i32 %30) #5, !dbg !473
  call void (i8*, i8*, ...) @anetSetError(i8* %0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %31) #6, !dbg !474
  br label %32, !dbg !475

; <label>:32:                                     ; preds = %25, %28
  %33 = phi i32 [ -1, %28 ], [ 0, %25 ], !dbg !476
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #4, !dbg !477
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #4, !dbg !477
  ret i32 %33, !dbg !477
}

; Function Attrs: noredzone nounwind
define dso_local i32 @anetSendTimeout(i8*, i32, i64) local_unnamed_addr #0 !dbg !478 {
  %4 = alloca %struct.timeval, align 8
  %5 = alloca i32, align 4
  %6 = bitcast %struct.timeval* %4 to i8*, !dbg !509
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #4, !dbg !509
  %7 = sdiv i64 %2, 1000, !dbg !510
  %8 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i64 0, i32 0, !dbg !511
  store i64 %7, i64* %8, align 8, !dbg !512, !tbaa !513
  %9 = srem i64 %2, 1000, !dbg !516
  %10 = mul nsw i64 %9, 1000, !dbg !517
  %11 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i64 0, i32 1, !dbg !518
  store i64 %10, i64* %11, align 8, !dbg !519, !tbaa !520
  %12 = bitcast i32* %5 to i8*, !dbg !521
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #4, !dbg !521
  %13 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !522, !srcloc !244
  %14 = icmp ult i64 %13, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !525
  br i1 %14, label %20, label %15, !dbg !525

; <label>:15:                                     ; preds = %3
  %16 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !526, !srcloc !244
  %17 = icmp ugt i64 %16, ptrtoint ([0 x i8]* @_end to i64), !dbg !525
  br i1 %17, label %20, label %18, !dbg !529

; <label>:18:                                     ; preds = %15
  %19 = call i32 @setsockopt(i32 %1, i32 4095, i32 4101, i8* nonnull %6, i32 16) #5, !dbg !530
  store i32 %19, i32* %5, align 4, !dbg !530, !tbaa !133
  br label %31, !dbg !530

; <label>:20:                                     ; preds = %15, %3
  %21 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !533, !srcloc !244
  %22 = and i64 %21, -65536, !dbg !538
  %23 = or i64 %22, 4097, !dbg !538
  %24 = add nsw i64 %23, -1, !dbg !538
  %25 = inttoptr i64 %24 to i32*, !dbg !539
  %26 = load i32, i32* %25, align 4096, !dbg !540, !tbaa !133
  %27 = ptrtoint %struct.timeval* %4 to i64, !dbg !541
  %28 = sext i32 %1 to i64, !dbg !541
  %29 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call setsockopt\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r8},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %28, i64 4095, i64 4101, i64 %27, i64 16, i32 %26, i32 (i32, i32, i32, i8*, i32)* nonnull @setsockopt) #4, !dbg !541, !srcloc !542
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %5, i64 %29) #4, !dbg !543, !srcloc !546
  %30 = load i32, i32* %5, align 4, !dbg !547, !tbaa !133
  br label %31

; <label>:31:                                     ; preds = %20, %18
  %32 = phi i32 [ %30, %20 ], [ %19, %18 ], !dbg !547
  %33 = icmp eq i32 %32, -1, !dbg !549
  br i1 %33, label %34, label %38, !dbg !550

; <label>:34:                                     ; preds = %31
  %35 = call i32* @__errno() #5, !dbg !551
  %36 = load i32, i32* %35, align 4, !dbg !551, !tbaa !133
  %37 = call i8* @strerror(i32 %36) #5, !dbg !553
  call void (i8*, i8*, ...) @anetSetError(i8* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %37) #6, !dbg !554
  br label %38, !dbg !555

; <label>:38:                                     ; preds = %31, %34
  %39 = phi i32 [ -1, %34 ], [ 0, %31 ], !dbg !556
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #4, !dbg !557
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #4, !dbg !557
  ret i32 %39, !dbg !557
}

; Function Attrs: noredzone nounwind
define dso_local i32 @anetGenericResolve(i8*, i8*, i8*, i64, i32) local_unnamed_addr #0 !dbg !558 {
  %6 = alloca %struct.addrinfo, align 8
  %7 = alloca %struct.addrinfo*, align 8
  %8 = alloca i32, align 4
  %9 = bitcast %struct.addrinfo* %6 to i8*, !dbg !593
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %9) #4, !dbg !593
  %10 = bitcast %struct.addrinfo** %7 to i8*, !dbg !593
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #4, !dbg !593
  %11 = bitcast i32* %8 to i8*, !dbg !594
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #4, !dbg !594
  %12 = call i8* @memset(i8* nonnull %9, i32 0, i64 48) #5, !dbg !595
  %13 = and i32 %4, 1, !dbg !596
  %14 = icmp eq i32 %13, 0, !dbg !596
  br i1 %14, label %17, label %15, !dbg !598

; <label>:15:                                     ; preds = %5
  %16 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i64 0, i32 0, !dbg !599
  store i32 4, i32* %16, align 8, !dbg !600, !tbaa !601
  br label %17, !dbg !604

; <label>:17:                                     ; preds = %5, %15
  %18 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i64 0, i32 1, !dbg !605
  store i32 0, i32* %18, align 4, !dbg !606, !tbaa !607
  %19 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i64 0, i32 2, !dbg !608
  store i32 1, i32* %19, align 8, !dbg !609, !tbaa !610
  %20 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !611, !srcloc !244
  %21 = icmp ult i64 %20, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !614
  br i1 %21, label %27, label %22, !dbg !614

; <label>:22:                                     ; preds = %17
  %23 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !615, !srcloc !244
  %24 = icmp ugt i64 %23, ptrtoint ([0 x i8]* @_end to i64), !dbg !614
  br i1 %24, label %27, label %25, !dbg !618

; <label>:25:                                     ; preds = %22
  %26 = call i32 @getaddrinfo(i8* %1, i8* null, %struct.addrinfo* nonnull %6, %struct.addrinfo** nonnull %7) #5, !dbg !621
  store i32 %26, i32* %8, align 4, !dbg !621, !tbaa !133
  br label %39, !dbg !621

; <label>:27:                                     ; preds = %22, %17
  %28 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !624, !srcloc !244
  %29 = and i64 %28, -65536, !dbg !629
  %30 = or i64 %29, 4097, !dbg !629
  %31 = add nsw i64 %30, -1, !dbg !629
  %32 = inttoptr i64 %31 to i32*, !dbg !630
  %33 = load i32, i32* %32, align 4096, !dbg !631, !tbaa !133
  %34 = ptrtoint %struct.addrinfo* %6 to i64, !dbg !632
  %35 = ptrtoint %struct.addrinfo** %7 to i64, !dbg !632
  %36 = ptrtoint i8* %1 to i64, !dbg !632
  %37 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call getaddrinfo\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %36, i64 0, i64 %34, i64 %35, i32 %33, i32 (i8*, i8*, %struct.addrinfo*, %struct.addrinfo**)* nonnull @getaddrinfo) #4, !dbg !632, !srcloc !633
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %8, i64 %37) #4, !dbg !634, !srcloc !637
  %38 = load i32, i32* %8, align 4, !dbg !638, !tbaa !133
  br label %39

; <label>:39:                                     ; preds = %27, %25
  %40 = phi i32 [ %38, %27 ], [ %26, %25 ], !dbg !638
  %41 = icmp eq i32 %40, 0, !dbg !640
  br i1 %41, label %44, label %42, !dbg !641

; <label>:42:                                     ; preds = %39
  %43 = call i8* @gai_strerror(i32 %40) #5, !dbg !642
  call void (i8*, i8*, ...) @anetSetError(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %43) #6, !dbg !644
  br label %66, !dbg !645

; <label>:44:                                     ; preds = %39
  %45 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8, !dbg !646, !tbaa !647
  %46 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %45, i64 0, i32 1, !dbg !648
  %47 = load i32, i32* %46, align 4, !dbg !648, !tbaa !607
  %48 = icmp eq i32 %47, 2, !dbg !649
  %49 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %45, i64 0, i32 5, !dbg !650
  br i1 %48, label %50, label %57, !dbg !651

; <label>:50:                                     ; preds = %44
  %51 = bitcast %struct.sockaddr** %49 to %struct.sockaddr_in**, !dbg !652
  %52 = load %struct.sockaddr_in*, %struct.sockaddr_in** %51, align 8, !dbg !652, !tbaa !653
  %53 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %52, i64 0, i32 3, !dbg !655
  %54 = bitcast %struct.in_addr* %53 to i8*, !dbg !656
  %55 = trunc i64 %3 to i32, !dbg !657
  %56 = call i8* @inet_ntop(i32 2, i8* nonnull %54, i8* %2, i32 %55) #5, !dbg !658
  br label %64, !dbg !659

; <label>:57:                                     ; preds = %44
  %58 = bitcast %struct.sockaddr** %49 to %struct.sockaddr_in6**, !dbg !660
  %59 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %58, align 8, !dbg !660, !tbaa !653
  %60 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %59, i64 0, i32 4, !dbg !662
  %61 = bitcast %struct.in6_addr* %60 to i8*, !dbg !663
  %62 = trunc i64 %3 to i32, !dbg !664
  %63 = call i8* @inet_ntop(i32 10, i8* nonnull %61, i8* %2, i32 %62) #5, !dbg !665
  br label %64

; <label>:64:                                     ; preds = %57, %50
  %65 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8, !dbg !666, !tbaa !647
  call void @freeaddrinfo(%struct.addrinfo* %65) #5, !dbg !667
  br label %66, !dbg !668

; <label>:66:                                     ; preds = %64, %42
  %67 = phi i32 [ -1, %42 ], [ 0, %64 ], !dbg !669
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #4, !dbg !670
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #4, !dbg !670
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %9) #4, !dbg !670
  ret i32 %67, !dbg !670
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
define dso_local i32 @anetResolve(i8*, i8*, i8*, i64) local_unnamed_addr #0 !dbg !671 {
  %5 = tail call i32 @anetGenericResolve(i8* %0, i8* %1, i8* %2, i64 %3, i32 0) #6, !dbg !683
  ret i32 %5, !dbg !684
}

; Function Attrs: noredzone nounwind
define dso_local i32 @anetResolveIP(i8*, i8*, i8*, i64) local_unnamed_addr #0 !dbg !685 {
  %5 = tail call i32 @anetGenericResolve(i8* %0, i8* %1, i8* %2, i64 %3, i32 1) #6, !dbg !695
  ret i32 %5, !dbg !696
}

; Function Attrs: noredzone nounwind
define dso_local i32 @anetTcpConnect(i8*, i8*, i32) local_unnamed_addr #0 !dbg !697 {
  %4 = tail call fastcc i32 @anetTcpGenericConnect(i8* %0, i8* %1, i32 %2, i8* null, i32 0) #6, !dbg !707
  ret i32 %4, !dbg !708
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @anetTcpGenericConnect(i8*, i8*, i32, i8*, i32) unnamed_addr #0 !dbg !709 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [6 x i8], align 1
  %9 = alloca %struct.addrinfo, align 8
  %10 = alloca %struct.addrinfo*, align 8
  %11 = alloca %struct.addrinfo*, align 8
  %12 = bitcast i32* %6 to i8*, !dbg !766
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #4, !dbg !766
  store i32 -1, i32* %6, align 4, !dbg !767, !tbaa !133
  %13 = bitcast i32* %7 to i8*, !dbg !766
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13) #4, !dbg !766
  %14 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0, !dbg !768
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %14) #4, !dbg !768
  %15 = bitcast %struct.addrinfo* %9 to i8*, !dbg !770
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %15) #4, !dbg !770
  %16 = bitcast %struct.addrinfo** %10 to i8*, !dbg !770
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #4, !dbg !770
  %17 = bitcast %struct.addrinfo** %11 to i8*, !dbg !770
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %17) #4, !dbg !770
  %18 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %14, i64 6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32 %2) #5, !dbg !771
  %19 = call i8* @memset(i8* nonnull %15, i32 0, i64 48) #5, !dbg !772
  %20 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %9, i64 0, i32 1, !dbg !773
  store i32 0, i32* %20, align 4, !dbg !774, !tbaa !607
  %21 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %9, i64 0, i32 2, !dbg !775
  store i32 1, i32* %21, align 8, !dbg !776, !tbaa !610
  %22 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !777, !srcloc !244
  %23 = icmp ult i64 %22, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !780
  br i1 %23, label %29, label %24, !dbg !780

; <label>:24:                                     ; preds = %5
  %25 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !781, !srcloc !244
  %26 = icmp ugt i64 %25, ptrtoint ([0 x i8]* @_end to i64), !dbg !780
  br i1 %26, label %29, label %27, !dbg !784

; <label>:27:                                     ; preds = %24
  %28 = call i32 @getaddrinfo(i8* %1, i8* nonnull %14, %struct.addrinfo* nonnull %9, %struct.addrinfo** nonnull %10) #5, !dbg !787
  store i32 %28, i32* %7, align 4, !dbg !787, !tbaa !133
  br label %42, !dbg !787

; <label>:29:                                     ; preds = %24, %5
  %30 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !790, !srcloc !244
  %31 = and i64 %30, -65536, !dbg !795
  %32 = or i64 %31, 4097, !dbg !795
  %33 = add nsw i64 %32, -1, !dbg !795
  %34 = inttoptr i64 %33 to i32*, !dbg !796
  %35 = load i32, i32* %34, align 4096, !dbg !797, !tbaa !133
  %36 = ptrtoint %struct.addrinfo* %9 to i64, !dbg !798
  %37 = ptrtoint %struct.addrinfo** %10 to i64, !dbg !798
  %38 = ptrtoint i8* %1 to i64, !dbg !798
  %39 = ptrtoint [6 x i8]* %8 to i64, !dbg !798
  %40 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call getaddrinfo\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %38, i64 %39, i64 %36, i64 %37, i32 %35, i32 (i8*, i8*, %struct.addrinfo*, %struct.addrinfo**)* nonnull @getaddrinfo) #4, !dbg !798, !srcloc !799
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %7, i64 %40) #4, !dbg !800, !srcloc !803
  %41 = load i32, i32* %7, align 4, !dbg !804, !tbaa !133
  br label %42

; <label>:42:                                     ; preds = %29, %27
  %43 = phi i32 [ %41, %29 ], [ %28, %27 ], !dbg !804
  %44 = icmp eq i32 %43, 0, !dbg !806
  br i1 %44, label %45, label %56, !dbg !807

; <label>:45:                                     ; preds = %42
  %46 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8, !dbg !808, !tbaa !647
  %47 = icmp eq %struct.addrinfo* %46, null, !dbg !810
  br i1 %47, label %170, label %48, !dbg !811

; <label>:48:                                     ; preds = %45
  %49 = and i32 %4, 1
  %50 = icmp ne i32 %49, 0
  %51 = icmp eq i8* %3, null
  %52 = xor i1 %50, true
  %53 = ptrtoint %struct.addrinfo* %9 to i64
  %54 = ptrtoint %struct.addrinfo** %11 to i64
  %55 = ptrtoint i8* %3 to i64
  br label %58, !dbg !811

; <label>:56:                                     ; preds = %42
  %57 = call i8* @gai_strerror(i32 %43) #5, !dbg !812
  call void (i8*, i8*, ...) @anetSetError(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %57) #6, !dbg !814
  br label %190, !dbg !815

; <label>:58:                                     ; preds = %48, %166
  %59 = phi %struct.addrinfo* [ %46, %48 ], [ %168, %166 ]
  %60 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !816, !srcloc !244
  %61 = icmp ult i64 %60, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !819
  br i1 %61, label %73, label %62, !dbg !819

; <label>:62:                                     ; preds = %58
  %63 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !820, !srcloc !244
  %64 = icmp ugt i64 %63, ptrtoint ([0 x i8]* @_end to i64), !dbg !819
  br i1 %64, label %73, label %65, !dbg !823

; <label>:65:                                     ; preds = %62
  %66 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %59, i64 0, i32 1, !dbg !824
  %67 = load i32, i32* %66, align 4, !dbg !824, !tbaa !607
  %68 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %59, i64 0, i32 2, !dbg !824
  %69 = load i32, i32* %68, align 8, !dbg !824, !tbaa !610
  %70 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %59, i64 0, i32 3, !dbg !824
  %71 = load i32, i32* %70, align 4, !dbg !824, !tbaa !826
  %72 = call i32 @socket(i32 %67, i32 %69, i32 %71) #5, !dbg !824
  store i32 %72, i32* %6, align 4, !dbg !824, !tbaa !133
  br label %91, !dbg !824

; <label>:73:                                     ; preds = %62, %58
  %74 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !827, !srcloc !244
  %75 = and i64 %74, -65536, !dbg !832
  %76 = or i64 %75, 4097, !dbg !832
  %77 = add nsw i64 %76, -1, !dbg !832
  %78 = inttoptr i64 %77 to i32*, !dbg !833
  %79 = load i32, i32* %78, align 4096, !dbg !834, !tbaa !133
  %80 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %59, i64 0, i32 3, !dbg !835
  %81 = load i32, i32* %80, align 4, !dbg !835, !tbaa !826
  %82 = sext i32 %81 to i64, !dbg !835
  %83 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %59, i64 0, i32 1, !dbg !835
  %84 = load i32, i32* %83, align 4, !dbg !835, !tbaa !607
  %85 = sext i32 %84 to i64, !dbg !835
  %86 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %59, i64 0, i32 2, !dbg !835
  %87 = load i32, i32* %86, align 8, !dbg !835, !tbaa !610
  %88 = sext i32 %87 to i64, !dbg !835
  %89 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call socket\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %85, i64 %88, i64 %82, i32 %79, i32 (i32, i32, i32)* nonnull @socket) #4, !dbg !835, !srcloc !836
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %6, i64 %89) #4, !dbg !837, !srcloc !840
  %90 = load i32, i32* %6, align 4, !dbg !841, !tbaa !133
  br label %91

; <label>:91:                                     ; preds = %73, %65
  %92 = phi i32 [ %90, %73 ], [ %72, %65 ], !dbg !841
  %93 = icmp eq i32 %92, -1, !dbg !843
  br i1 %93, label %166, label %94, !dbg !844

; <label>:94:                                     ; preds = %91
  %95 = call fastcc i32 @anetSetReuseAddr(i8* %0, i32 %92) #6, !dbg !845
  %96 = icmp eq i32 %95, -1, !dbg !847
  br i1 %96, label %174, label %97, !dbg !848

; <label>:97:                                     ; preds = %94
  br i1 %50, label %98, label %102, !dbg !849

; <label>:98:                                     ; preds = %97
  %99 = load i32, i32* %6, align 4, !dbg !851, !tbaa !133
  %100 = call i32 @anetSetBlock(i8* %0, i32 %99, i32 1) #5, !dbg !855
  %101 = icmp eq i32 %100, 0, !dbg !856
  br i1 %101, label %102, label %174, !dbg !857

; <label>:102:                                    ; preds = %98, %97
  br i1 %51, label %150, label %103, !dbg !858

; <label>:103:                                    ; preds = %102
  %104 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !860, !srcloc !244
  %105 = icmp ult i64 %104, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !863
  br i1 %105, label %111, label %106, !dbg !863

; <label>:106:                                    ; preds = %103
  %107 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !864, !srcloc !244
  %108 = icmp ugt i64 %107, ptrtoint ([0 x i8]* @_end to i64), !dbg !863
  br i1 %108, label %111, label %109, !dbg !867

; <label>:109:                                    ; preds = %106
  %110 = call i32 @getaddrinfo(i8* nonnull %3, i8* null, %struct.addrinfo* nonnull %9, %struct.addrinfo** nonnull %11) #5, !dbg !869
  store i32 %110, i32* %7, align 4, !dbg !869, !tbaa !133
  br label %120, !dbg !869

; <label>:111:                                    ; preds = %106, %103
  %112 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !871, !srcloc !244
  %113 = and i64 %112, -65536, !dbg !876
  %114 = or i64 %113, 4097, !dbg !876
  %115 = add nsw i64 %114, -1, !dbg !876
  %116 = inttoptr i64 %115 to i32*, !dbg !877
  %117 = load i32, i32* %116, align 4096, !dbg !878, !tbaa !133
  %118 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call getaddrinfo\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %55, i64 0, i64 %53, i64 %54, i32 %117, i32 (i8*, i8*, %struct.addrinfo*, %struct.addrinfo**)* nonnull @getaddrinfo) #4, !dbg !879, !srcloc !880
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %7, i64 %118) #4, !dbg !881, !srcloc !884
  %119 = load i32, i32* %7, align 4, !dbg !885, !tbaa !133
  br label %120

; <label>:120:                                    ; preds = %111, %109
  %121 = phi i32 [ %119, %111 ], [ %110, %109 ], !dbg !885
  %122 = icmp eq i32 %121, 0, !dbg !887
  br i1 %122, label %123, label %126, !dbg !888

; <label>:123:                                    ; preds = %120
  %124 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8, !dbg !889, !tbaa !647
  %125 = icmp eq %struct.addrinfo* %124, null, !dbg !893
  br i1 %125, label %143, label %132, !dbg !894

; <label>:126:                                    ; preds = %120
  %127 = call i8* @gai_strerror(i32 %121) #5, !dbg !895
  call void (i8*, i8*, ...) @anetSetError(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %127) #6, !dbg !897
  br label %174, !dbg !898

; <label>:128:                                    ; preds = %132
  %129 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %133, i64 0, i32 7, !dbg !899
  %130 = load %struct.addrinfo*, %struct.addrinfo** %129, align 8, !dbg !889, !tbaa !647
  %131 = icmp eq %struct.addrinfo* %130, null, !dbg !893
  br i1 %131, label %141, label %132, !dbg !894, !llvm.loop !900

; <label>:132:                                    ; preds = %123, %128
  %133 = phi %struct.addrinfo* [ %130, %128 ], [ %124, %123 ]
  %134 = load i32, i32* %6, align 4, !dbg !902, !tbaa !133
  %135 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %133, i64 0, i32 5, !dbg !905
  %136 = load %struct.sockaddr*, %struct.sockaddr** %135, align 8, !dbg !905, !tbaa !653
  %137 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %133, i64 0, i32 4, !dbg !906
  %138 = load i32, i32* %137, align 8, !dbg !906, !tbaa !907
  %139 = call i32 @bind(i32 %134, %struct.sockaddr* %136, i32 %138) #5, !dbg !908
  %140 = icmp eq i32 %139, -1, !dbg !909
  br i1 %140, label %128, label %148, !dbg !910

; <label>:141:                                    ; preds = %128
  %142 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8, !dbg !911, !tbaa !647
  br label %143, !dbg !911

; <label>:143:                                    ; preds = %123, %141
  %144 = phi %struct.addrinfo* [ %142, %141 ], [ null, %123 ], !dbg !911
  call void @freeaddrinfo(%struct.addrinfo* %144) #5, !dbg !912
  %145 = call i32* @__errno() #5, !dbg !913
  %146 = load i32, i32* %145, align 4, !dbg !913, !tbaa !133
  %147 = call i8* @strerror(i32 %146) #5, !dbg !916
  call void (i8*, i8*, ...) @anetSetError(i8* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* %147) #6, !dbg !917
  br label %174, !dbg !918

; <label>:148:                                    ; preds = %132
  %149 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8, !dbg !911, !tbaa !647
  call void @freeaddrinfo(%struct.addrinfo* %149) #5, !dbg !912
  br label %150

; <label>:150:                                    ; preds = %148, %102
  %151 = load i32, i32* %6, align 4, !dbg !919, !tbaa !133
  %152 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %59, i64 0, i32 5, !dbg !921
  %153 = load %struct.sockaddr*, %struct.sockaddr** %152, align 8, !dbg !921, !tbaa !653
  %154 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %59, i64 0, i32 4, !dbg !922
  %155 = load i32, i32* %154, align 8, !dbg !922, !tbaa !907
  %156 = call i32 @connect(i32 %151, %struct.sockaddr* %153, i32 %155) #5, !dbg !923
  %157 = icmp eq i32 %156, -1, !dbg !924
  br i1 %157, label %158, label %179, !dbg !925

; <label>:158:                                    ; preds = %150
  %159 = call i32* @__errno() #5, !dbg !926
  %160 = load i32, i32* %159, align 4, !dbg !926, !tbaa !133
  %161 = icmp ne i32 %160, 119, !dbg !929
  %162 = or i1 %161, %52, !dbg !930
  br i1 %162, label %163, label %179, !dbg !930

; <label>:163:                                    ; preds = %158
  %164 = load i32, i32* %6, align 4, !dbg !931, !tbaa !133
  %165 = call i32 @close(i32 %164) #5, !dbg !932
  store i32 -1, i32* %6, align 4, !dbg !933, !tbaa !133
  br label %166, !dbg !934

; <label>:166:                                    ; preds = %91, %163
  %167 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %59, i64 0, i32 7, !dbg !935
  %168 = load %struct.addrinfo*, %struct.addrinfo** %167, align 8, !dbg !808, !tbaa !647
  %169 = icmp eq %struct.addrinfo* %168, null, !dbg !810
  br i1 %169, label %170, label %58, !dbg !811, !llvm.loop !936

; <label>:170:                                    ; preds = %166, %45
  %171 = call i32* @__errno() #5, !dbg !938
  %172 = load i32, i32* %171, align 4, !dbg !938, !tbaa !133
  %173 = call i8* @strerror(i32 %172) #5, !dbg !940
  call void (i8*, i8*, ...) @anetSetError(i8* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i8* %173) #6, !dbg !941
  br label %174, !dbg !941

; <label>:174:                                    ; preds = %98, %94, %143, %126, %170
  %175 = load i32, i32* %6, align 4, !dbg !942, !tbaa !133
  %176 = icmp eq i32 %175, -1, !dbg !944
  br i1 %176, label %179, label %177, !dbg !945

; <label>:177:                                    ; preds = %174
  %178 = call i32 @close(i32 %175) #5, !dbg !946
  store i32 -1, i32* %6, align 4, !dbg !948, !tbaa !133
  br label %179, !dbg !949

; <label>:179:                                    ; preds = %158, %150, %174, %177
  %180 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8, !dbg !950, !tbaa !647
  call void @freeaddrinfo(%struct.addrinfo* %180) #5, !dbg !951
  %181 = load i32, i32* %6, align 4, !dbg !952, !tbaa !133
  %182 = icmp ne i32 %181, -1, !dbg !954
  %183 = icmp eq i8* %3, null, !dbg !955
  %184 = or i1 %183, %182, !dbg !956
  %185 = and i32 %4, 2, !dbg !957
  %186 = icmp eq i32 %185, 0, !dbg !957
  %187 = or i1 %186, %184, !dbg !956
  br i1 %187, label %190, label %188, !dbg !956

; <label>:188:                                    ; preds = %179
  %189 = call fastcc i32 @anetTcpGenericConnect(i8* %0, i8* %1, i32 %2, i8* null, i32 %4) #6, !dbg !958
  br label %190, !dbg !960

; <label>:190:                                    ; preds = %179, %188, %56
  %191 = phi i32 [ -1, %56 ], [ %189, %188 ], [ %181, %179 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #4, !dbg !961
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #4, !dbg !961
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %15) #4, !dbg !961
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %14) #4, !dbg !961
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #4, !dbg !961
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #4, !dbg !961
  ret i32 %191, !dbg !961
}

; Function Attrs: noredzone nounwind
define dso_local i32 @anetTcpNonBlockConnect(i8*, i8*, i32) local_unnamed_addr #0 !dbg !962 {
  %4 = tail call fastcc i32 @anetTcpGenericConnect(i8* %0, i8* %1, i32 %2, i8* null, i32 1) #6, !dbg !970
  ret i32 %4, !dbg !971
}

; Function Attrs: noredzone nounwind
define dso_local i32 @anetTcpNonBlockBindConnect(i8*, i8*, i32, i8*) local_unnamed_addr #0 !dbg !972 {
  %5 = tail call fastcc i32 @anetTcpGenericConnect(i8* %0, i8* %1, i32 %2, i8* %3, i32 1) #6, !dbg !984
  ret i32 %5, !dbg !985
}

; Function Attrs: noredzone nounwind
define dso_local i32 @anetTcpNonBlockBestEffortBindConnect(i8*, i8*, i32, i8*) local_unnamed_addr #0 !dbg !986 {
  %5 = tail call fastcc i32 @anetTcpGenericConnect(i8* %0, i8* %1, i32 %2, i8* %3, i32 3) #6, !dbg !996
  ret i32 %5, !dbg !997
}

; Function Attrs: noredzone nounwind
define dso_local i32 @anetUnixGenericConnect(i8*, i8*, i32) local_unnamed_addr #0 !dbg !998 {
  %4 = alloca %struct.sockaddr_un, align 1
  %5 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %4, i64 0, i32 0, !dbg !1016
  call void @llvm.lifetime.start.p0i8(i64 109, i8* nonnull %5) #4, !dbg !1016
  %6 = tail call fastcc i32 @anetCreateSocket(i8* %0) #6, !dbg !1017
  %7 = icmp eq i32 %6, -1, !dbg !1020
  br i1 %7, label %33, label %8, !dbg !1021

; <label>:8:                                      ; preds = %3
  store i8 1, i8* %5, align 1, !dbg !1022, !tbaa !1023
  %9 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %4, i64 0, i32 1, i64 0, !dbg !1025
  %10 = call i8* @strncpy(i8* nonnull %9, i8* %1, i64 107) #5, !dbg !1026
  %11 = and i32 %2, 1, !dbg !1027
  %12 = icmp ne i32 %11, 0, !dbg !1027
  br i1 %12, label %13, label %18, !dbg !1029

; <label>:13:                                     ; preds = %8
  %14 = call i32 @anetSetBlock(i8* %0, i32 %6, i32 1) #5, !dbg !1035
  %15 = icmp eq i32 %14, 0, !dbg !1036
  br i1 %15, label %18, label %16, !dbg !1037

; <label>:16:                                     ; preds = %13
  %17 = call i32 @close(i32 %6) #5, !dbg !1038
  br label %33, !dbg !1040

; <label>:18:                                     ; preds = %13, %8
  %19 = bitcast %struct.sockaddr_un* %4 to %struct.sockaddr*, !dbg !1041
  %20 = call i32 @connect(i32 %6, %struct.sockaddr* nonnull %19, i32 109) #5, !dbg !1043
  %21 = icmp eq i32 %20, -1, !dbg !1044
  br i1 %21, label %22, label %33, !dbg !1045

; <label>:22:                                     ; preds = %18
  %23 = call i32* @__errno() #5, !dbg !1046
  %24 = load i32, i32* %23, align 4, !dbg !1046, !tbaa !133
  %25 = icmp ne i32 %24, 119, !dbg !1049
  %26 = xor i1 %12, true, !dbg !1050
  %27 = or i1 %25, %26, !dbg !1050
  br i1 %27, label %28, label %33, !dbg !1050

; <label>:28:                                     ; preds = %22
  %29 = call i32* @__errno() #5, !dbg !1051
  %30 = load i32, i32* %29, align 4, !dbg !1051, !tbaa !133
  %31 = call i8* @strerror(i32 %30) #5, !dbg !1052
  call void (i8*, i8*, ...) @anetSetError(i8* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* %31) #6, !dbg !1053
  %32 = call i32 @close(i32 %6) #5, !dbg !1054
  br label %33, !dbg !1055

; <label>:33:                                     ; preds = %18, %22, %3, %28, %16
  %34 = phi i32 [ -1, %16 ], [ -1, %28 ], [ -1, %3 ], [ %6, %22 ], [ %6, %18 ], !dbg !1056
  call void @llvm.lifetime.end.p0i8(i64 109, i8* nonnull %5) #4, !dbg !1057
  ret i32 %34, !dbg !1057
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @anetCreateSocket(i8*) unnamed_addr #0 !dbg !1058 {
  %2 = alloca i32, align 4
  %3 = bitcast i32* %2 to i8*, !dbg !1073
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #4, !dbg !1073
  %4 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1074, !srcloc !244
  %5 = icmp ult i64 %4, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1077
  br i1 %5, label %11, label %6, !dbg !1077

; <label>:6:                                      ; preds = %1
  %7 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1078, !srcloc !244
  %8 = icmp ugt i64 %7, ptrtoint ([0 x i8]* @_end to i64), !dbg !1077
  br i1 %8, label %11, label %9, !dbg !1081

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @socket(i32 1, i32 1, i32 0) #5, !dbg !1082
  store i32 %10, i32* %2, align 4, !dbg !1082, !tbaa !133
  br label %20, !dbg !1082

; <label>:11:                                     ; preds = %6, %1
  %12 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1085, !srcloc !244
  %13 = and i64 %12, -65536, !dbg !1090
  %14 = or i64 %13, 4097, !dbg !1090
  %15 = add nsw i64 %14, -1, !dbg !1090
  %16 = inttoptr i64 %15 to i32*, !dbg !1091
  %17 = load i32, i32* %16, align 4096, !dbg !1092, !tbaa !133
  %18 = tail call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call socket\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 1, i64 1, i64 0, i32 %17, i32 (i32, i32, i32)* nonnull @socket) #4, !dbg !1093, !srcloc !1094
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %2, i64 %18) #4, !dbg !1095, !srcloc !1098
  %19 = load i32, i32* %2, align 4, !dbg !1099, !tbaa !133
  br label %20

; <label>:20:                                     ; preds = %11, %9
  %21 = phi i32 [ %19, %11 ], [ %10, %9 ], !dbg !1099
  %22 = icmp eq i32 %21, -1, !dbg !1101
  br i1 %22, label %23, label %27, !dbg !1102

; <label>:23:                                     ; preds = %20
  %24 = call i32* @__errno() #5, !dbg !1103
  %25 = load i32, i32* %24, align 4, !dbg !1103, !tbaa !133
  %26 = call i8* @strerror(i32 %25) #5, !dbg !1105
  call void (i8*, i8*, ...) @anetSetError(i8* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i8* %26) #6, !dbg !1106
  br label %33, !dbg !1107

; <label>:27:                                     ; preds = %20
  %28 = call fastcc i32 @anetSetReuseAddr(i8* %0, i32 %21) #6, !dbg !1108
  %29 = icmp eq i32 %28, -1, !dbg !1110
  %30 = load i32, i32* %2, align 4, !dbg !1111, !tbaa !133
  br i1 %29, label %31, label %33, !dbg !1112

; <label>:31:                                     ; preds = %27
  %32 = call i32 @close(i32 %30) #5, !dbg !1113
  br label %33, !dbg !1115

; <label>:33:                                     ; preds = %27, %31, %23
  %34 = phi i32 [ -1, %23 ], [ -1, %31 ], [ %30, %27 ], !dbg !1111
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #4, !dbg !1116
  ret i32 %34, !dbg !1116
}

; Function Attrs: noredzone
declare dso_local i8* @strncpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @close(i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @anetUnixConnect(i8*, i8*) local_unnamed_addr #0 !dbg !1117 {
  %3 = tail call i32 @anetUnixGenericConnect(i8* %0, i8* %1, i32 0) #6, !dbg !1125
  ret i32 %3, !dbg !1126
}

; Function Attrs: noredzone nounwind
define dso_local i32 @anetUnixNonBlockConnect(i8*, i8*) local_unnamed_addr #0 !dbg !1127 {
  %3 = tail call i32 @anetUnixGenericConnect(i8* %0, i8* %1, i32 1) #6, !dbg !1133
  ret i32 %3, !dbg !1134
}

; Function Attrs: noredzone nounwind
define dso_local i32 @anetRead(i32, i8*, i32) local_unnamed_addr #0 !dbg !1135 {
  %4 = sext i32 %2 to i64, !dbg !1151
  %5 = icmp eq i32 %2, 0, !dbg !1152
  br i1 %5, label %17, label %6, !dbg !1153

; <label>:6:                                      ; preds = %3, %13
  %7 = phi i64 [ %14, %13 ], [ 0, %3 ]
  %8 = phi i8* [ %15, %13 ], [ %1, %3 ]
  %9 = sub nsw i64 %4, %7, !dbg !1154
  %10 = tail call i64 @read(i32 %0, i8* %8, i64 %9) #5, !dbg !1156
  switch i64 %10, label %13 [
    i64 0, label %11
    i64 -1, label %17
  ], !dbg !1158

; <label>:11:                                     ; preds = %6
  %12 = trunc i64 %7 to i32, !dbg !1159
  br label %17, !dbg !1161

; <label>:13:                                     ; preds = %6
  %14 = add nsw i64 %10, %7, !dbg !1162
  %15 = getelementptr inbounds i8, i8* %8, i64 %10, !dbg !1163
  %16 = icmp eq i64 %14, %4, !dbg !1152
  br i1 %16, label %17, label %6, !dbg !1153, !llvm.loop !1164

; <label>:17:                                     ; preds = %6, %13, %3, %11
  %18 = phi i32 [ %12, %11 ], [ 0, %3 ], [ -1, %6 ], [ %2, %13 ], !dbg !1166
  ret i32 %18, !dbg !1167
}

; Function Attrs: noredzone
declare dso_local i64 @read(i32, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @anetWrite(i32, i8*, i32) local_unnamed_addr #0 !dbg !1168 {
  %4 = sext i32 %2 to i64, !dbg !1179
  %5 = icmp eq i32 %2, 0, !dbg !1180
  br i1 %5, label %17, label %6, !dbg !1181

; <label>:6:                                      ; preds = %3, %13
  %7 = phi i64 [ %14, %13 ], [ 0, %3 ]
  %8 = phi i8* [ %15, %13 ], [ %1, %3 ]
  %9 = sub nsw i64 %4, %7, !dbg !1182
  %10 = tail call i64 @write(i32 %0, i8* %8, i64 %9) #5, !dbg !1184
  switch i64 %10, label %13 [
    i64 0, label %11
    i64 -1, label %17
  ], !dbg !1186

; <label>:11:                                     ; preds = %6
  %12 = trunc i64 %7 to i32, !dbg !1187
  br label %17, !dbg !1189

; <label>:13:                                     ; preds = %6
  %14 = add nsw i64 %10, %7, !dbg !1190
  %15 = getelementptr inbounds i8, i8* %8, i64 %10, !dbg !1191
  %16 = icmp eq i64 %14, %4, !dbg !1180
  br i1 %16, label %17, label %6, !dbg !1181, !llvm.loop !1192

; <label>:17:                                     ; preds = %6, %13, %3, %11
  %18 = phi i32 [ %12, %11 ], [ 0, %3 ], [ -1, %6 ], [ %2, %13 ], !dbg !1194
  ret i32 %18, !dbg !1195
}

; Function Attrs: noredzone
declare dso_local i64 @write(i32, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @anetTcpServer(i8*, i32, i8*, i32) local_unnamed_addr #0 !dbg !1196 {
  %5 = tail call fastcc i32 @_anetTcpServer(i8* %0, i32 %1, i8* %2, i32 2, i32 %3) #6, !dbg !1208
  ret i32 %5, !dbg !1209
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @_anetTcpServer(i8*, i32, i8*, i32, i32) unnamed_addr #0 !dbg !1210 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [6 x i8], align 1
  %11 = alloca %struct.addrinfo, align 8
  %12 = alloca %struct.addrinfo*, align 8
  %13 = bitcast i32* %8 to i8*, !dbg !1259
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13) #4, !dbg !1259
  store i32 -1, i32* %8, align 4, !dbg !1260, !tbaa !133
  %14 = bitcast i32* %9 to i8*, !dbg !1259
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %14) #4, !dbg !1259
  %15 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0, !dbg !1261
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %15) #4, !dbg !1261
  %16 = ptrtoint [6 x i8]* %10 to i64, !dbg !1263
  %17 = add i64 %16, 65536, !dbg !1264
  %18 = inttoptr i64 %17 to i8*, !dbg !1265
  %19 = bitcast %struct.addrinfo* %11 to i8*, !dbg !1267
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %19) #4, !dbg !1267
  %20 = ptrtoint %struct.addrinfo* %11 to i64, !dbg !1268
  %21 = add i64 %20, 65536, !dbg !1269
  %22 = inttoptr i64 %21 to %struct.addrinfo*, !dbg !1270
  %23 = bitcast %struct.addrinfo** %12 to i8*, !dbg !1272
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #4, !dbg !1272
  %24 = ptrtoint %struct.addrinfo** %12 to i64, !dbg !1273
  %25 = add i64 %24, 65536, !dbg !1274
  %26 = inttoptr i64 %25 to %struct.addrinfo**, !dbg !1275
  %27 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %18, i64 6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32 %1) #5, !dbg !1277
  %28 = inttoptr i64 %21 to i8*, !dbg !1278
  %29 = call i8* @memset(i8* %28, i32 0, i64 48) #5, !dbg !1279
  %30 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %22, i64 0, i32 1, !dbg !1280
  store i32 %3, i32* %30, align 4, !dbg !1281, !tbaa !607
  %31 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %22, i64 0, i32 2, !dbg !1282
  store i32 1, i32* %31, align 8, !dbg !1283, !tbaa !610
  %32 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %22, i64 0, i32 0, !dbg !1284
  store i32 1, i32* %32, align 8, !dbg !1285, !tbaa !601
  %33 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1286, !srcloc !244
  %34 = icmp ult i64 %33, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1289
  br i1 %34, label %40, label %35, !dbg !1289

; <label>:35:                                     ; preds = %5
  %36 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1290, !srcloc !244
  %37 = icmp ugt i64 %36, ptrtoint ([0 x i8]* @_end to i64), !dbg !1289
  br i1 %37, label %40, label %38, !dbg !1293

; <label>:38:                                     ; preds = %35
  %39 = call i32 @getaddrinfo(i8* %2, i8* %18, %struct.addrinfo* %22, %struct.addrinfo** %26) #5, !dbg !1294
  store i32 %39, i32* %9, align 4, !dbg !1294, !tbaa !133
  br label %50, !dbg !1294

; <label>:40:                                     ; preds = %35, %5
  %41 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1297, !srcloc !244
  %42 = and i64 %41, -65536, !dbg !1302
  %43 = or i64 %42, 4097, !dbg !1302
  %44 = add nsw i64 %43, -1, !dbg !1302
  %45 = inttoptr i64 %44 to i32*, !dbg !1303
  %46 = load i32, i32* %45, align 4096, !dbg !1304, !tbaa !133
  %47 = ptrtoint i8* %2 to i64, !dbg !1305
  %48 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call getaddrinfo\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %47, i64 %17, i64 %21, i64 %25, i32 %46, i32 (i8*, i8*, %struct.addrinfo*, %struct.addrinfo**)* nonnull @getaddrinfo) #4, !dbg !1305, !srcloc !1306
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %9, i64 %48) #4, !dbg !1307, !srcloc !1310
  %49 = load i32, i32* %9, align 4, !dbg !1311, !tbaa !133
  br label %50

; <label>:50:                                     ; preds = %40, %38
  %51 = phi i32 [ %49, %40 ], [ %39, %38 ], !dbg !1311
  %52 = icmp eq i32 %51, 0, !dbg !1313
  br i1 %52, label %53, label %56, !dbg !1314

; <label>:53:                                     ; preds = %50
  %54 = load %struct.addrinfo*, %struct.addrinfo** %26, align 8, !dbg !1315, !tbaa !647
  %55 = icmp eq %struct.addrinfo* %54, null, !dbg !1317
  br i1 %55, label %147, label %58, !dbg !1318

; <label>:56:                                     ; preds = %50
  %57 = call i8* @gai_strerror(i32 %51) #5, !dbg !1319
  call void (i8*, i8*, ...) @anetSetError(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %57) #6, !dbg !1321
  br label %175, !dbg !1322

; <label>:58:                                     ; preds = %53, %143
  %59 = phi %struct.addrinfo* [ %145, %143 ], [ %54, %53 ]
  %60 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1323, !srcloc !244
  %61 = icmp ult i64 %60, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1326
  br i1 %61, label %73, label %62, !dbg !1326

; <label>:62:                                     ; preds = %58
  %63 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1327, !srcloc !244
  %64 = icmp ugt i64 %63, ptrtoint ([0 x i8]* @_end to i64), !dbg !1326
  br i1 %64, label %73, label %65, !dbg !1330

; <label>:65:                                     ; preds = %62
  %66 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %59, i64 0, i32 1, !dbg !1331
  %67 = load i32, i32* %66, align 4, !dbg !1331, !tbaa !607
  %68 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %59, i64 0, i32 2, !dbg !1331
  %69 = load i32, i32* %68, align 8, !dbg !1331, !tbaa !610
  %70 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %59, i64 0, i32 3, !dbg !1331
  %71 = load i32, i32* %70, align 4, !dbg !1331, !tbaa !826
  %72 = call i32 @socket(i32 %67, i32 %69, i32 %71) #5, !dbg !1331
  store i32 %72, i32* %8, align 4, !dbg !1331, !tbaa !133
  br label %91, !dbg !1331

; <label>:73:                                     ; preds = %62, %58
  %74 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1333, !srcloc !244
  %75 = and i64 %74, -65536, !dbg !1338
  %76 = or i64 %75, 4097, !dbg !1338
  %77 = add nsw i64 %76, -1, !dbg !1338
  %78 = inttoptr i64 %77 to i32*, !dbg !1339
  %79 = load i32, i32* %78, align 4096, !dbg !1340, !tbaa !133
  %80 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %59, i64 0, i32 3, !dbg !1341
  %81 = load i32, i32* %80, align 4, !dbg !1341, !tbaa !826
  %82 = sext i32 %81 to i64, !dbg !1341
  %83 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %59, i64 0, i32 1, !dbg !1341
  %84 = load i32, i32* %83, align 4, !dbg !1341, !tbaa !607
  %85 = sext i32 %84 to i64, !dbg !1341
  %86 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %59, i64 0, i32 2, !dbg !1341
  %87 = load i32, i32* %86, align 8, !dbg !1341, !tbaa !610
  %88 = sext i32 %87 to i64, !dbg !1341
  %89 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call socket\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %85, i64 %88, i64 %82, i32 %79, i32 (i32, i32, i32)* nonnull @socket) #4, !dbg !1341, !srcloc !1342
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %8, i64 %89) #4, !dbg !1343, !srcloc !1346
  %90 = load i32, i32* %8, align 4, !dbg !1347, !tbaa !133
  br label %91

; <label>:91:                                     ; preds = %73, %65
  %92 = phi i32 [ %90, %73 ], [ %72, %65 ], !dbg !1347
  %93 = icmp eq i32 %92, -1, !dbg !1349
  br i1 %93, label %143, label %94, !dbg !1350

; <label>:94:                                     ; preds = %91
  %95 = icmp eq i32 %3, 10, !dbg !1351
  br i1 %95, label %96, label %130, !dbg !1353

; <label>:96:                                     ; preds = %94
  %97 = bitcast i32* %6 to i8*, !dbg !1374
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %97) #4, !dbg !1374
  %98 = ptrtoint i32* %6 to i64, !dbg !1375
  %99 = add i64 %98, 65536, !dbg !1376
  %100 = inttoptr i64 %99 to i32*, !dbg !1377
  store i32 1, i32* %100, align 4, !dbg !1379, !tbaa !133
  %101 = bitcast i32* %7 to i8*, !dbg !1380
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %101) #4, !dbg !1380
  %102 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1381, !srcloc !244
  %103 = icmp ult i64 %102, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1384
  br i1 %103, label %110, label %104, !dbg !1384

; <label>:104:                                    ; preds = %96
  %105 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1385, !srcloc !244
  %106 = icmp ugt i64 %105, ptrtoint ([0 x i8]* @_end to i64), !dbg !1384
  br i1 %106, label %110, label %107, !dbg !1388

; <label>:107:                                    ; preds = %104
  %108 = inttoptr i64 %99 to i8*, !dbg !1389
  %109 = call i32 @setsockopt(i32 %92, i32 41, i32 27, i8* %108, i32 4) #5, !dbg !1389
  store i32 %109, i32* %7, align 4, !dbg !1389, !tbaa !133
  br label %120, !dbg !1389

; <label>:110:                                    ; preds = %104, %96
  %111 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1392, !srcloc !244
  %112 = and i64 %111, -65536, !dbg !1397
  %113 = or i64 %112, 4097, !dbg !1397
  %114 = add nsw i64 %113, -1, !dbg !1397
  %115 = inttoptr i64 %114 to i32*, !dbg !1398
  %116 = load i32, i32* %115, align 4096, !dbg !1399, !tbaa !133
  %117 = sext i32 %92 to i64, !dbg !1400
  %118 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call setsockopt\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r8},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %117, i64 41, i64 27, i64 %99, i64 4, i32 %116, i32 (i32, i32, i32, i8*, i32)* nonnull @setsockopt) #4, !dbg !1400, !srcloc !1401
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %7, i64 %118) #4, !dbg !1402, !srcloc !1405
  %119 = load i32, i32* %7, align 4, !dbg !1406, !tbaa !133
  br label %120

; <label>:120:                                    ; preds = %110, %107
  %121 = phi i32 [ %119, %110 ], [ %109, %107 ], !dbg !1406
  %122 = icmp eq i32 %121, -1, !dbg !1408
  br i1 %122, label %123, label %128, !dbg !1409

; <label>:123:                                    ; preds = %120
  %124 = call i32* @__errno() #5, !dbg !1410
  %125 = load i32, i32* %124, align 4, !dbg !1410, !tbaa !133
  %126 = call i8* @strerror(i32 %125) #5, !dbg !1412
  call void (i8*, i8*, ...) @anetSetError(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i8* %126) #5, !dbg !1413
  %127 = call i32 @close(i32 %92) #5, !dbg !1414
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %101) #4, !dbg !1415
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %97) #4, !dbg !1415
  br label %150, !dbg !1416

; <label>:128:                                    ; preds = %120
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %101) #4, !dbg !1415
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %97) #4, !dbg !1415
  %129 = load i32, i32* %8, align 4, !dbg !1417, !tbaa !133
  br label %130

; <label>:130:                                    ; preds = %128, %94
  %131 = phi i32 [ %129, %128 ], [ %92, %94 ], !dbg !1417
  %132 = call fastcc i32 @anetSetReuseAddr(i8* %0, i32 %131) #6, !dbg !1419
  %133 = icmp eq i32 %132, -1, !dbg !1420
  br i1 %133, label %150, label %134, !dbg !1421

; <label>:134:                                    ; preds = %130
  %135 = load i32, i32* %8, align 4, !dbg !1422, !tbaa !133
  %136 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %59, i64 0, i32 5, !dbg !1424
  %137 = load %struct.sockaddr*, %struct.sockaddr** %136, align 8, !dbg !1424, !tbaa !653
  %138 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %59, i64 0, i32 4, !dbg !1425
  %139 = load i32, i32* %138, align 8, !dbg !1425, !tbaa !907
  %140 = call fastcc i32 @anetListen(i8* %0, i32 %135, %struct.sockaddr* %137, i32 %139, i32 %4) #6, !dbg !1426
  %141 = icmp eq i32 %140, -1, !dbg !1427
  br i1 %141, label %142, label %156, !dbg !1428

; <label>:142:                                    ; preds = %134
  store i32 -1, i32* %8, align 4, !dbg !1429, !tbaa !133
  br label %156, !dbg !1430

; <label>:143:                                    ; preds = %91
  %144 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %59, i64 0, i32 7, !dbg !1431
  %145 = load %struct.addrinfo*, %struct.addrinfo** %144, align 8, !dbg !1315, !tbaa !647
  %146 = icmp eq %struct.addrinfo* %145, null, !dbg !1317
  br i1 %146, label %147, label %58, !dbg !1318, !llvm.loop !1432

; <label>:147:                                    ; preds = %143, %53
  %148 = call i32* @__errno() #5, !dbg !1434
  %149 = load i32, i32* %148, align 4, !dbg !1434, !tbaa !133
  call void (i8*, i8*, ...) @anetSetError(i8* %0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0), i32 %149) #6, !dbg !1437
  br label %150, !dbg !1438

; <label>:150:                                    ; preds = %123, %130, %147
  %151 = load i32, i32* %8, align 4, !dbg !1439, !tbaa !133
  %152 = icmp eq i32 %151, -1, !dbg !1441
  br i1 %152, label %155, label %153, !dbg !1442

; <label>:153:                                    ; preds = %150
  %154 = call i32 @close(i32 %151) #5, !dbg !1443
  br label %155, !dbg !1443

; <label>:155:                                    ; preds = %150, %153
  store i32 -1, i32* %8, align 4, !dbg !1444, !tbaa !133
  br label %156, !dbg !1445

; <label>:156:                                    ; preds = %155, %142, %134
  %157 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1446, !srcloc !244
  %158 = icmp ult i64 %157, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1449
  br i1 %158, label %164, label %159, !dbg !1449

; <label>:159:                                    ; preds = %156
  %160 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1450, !srcloc !244
  %161 = icmp ugt i64 %160, ptrtoint ([0 x i8]* @_end to i64), !dbg !1449
  br i1 %161, label %164, label %162, !dbg !1453

; <label>:162:                                    ; preds = %159
  %163 = load %struct.addrinfo*, %struct.addrinfo** %26, align 8, !dbg !1454, !tbaa !647
  call void @freeaddrinfo(%struct.addrinfo* %163) #5, !dbg !1454
  br label %173, !dbg !1454

; <label>:164:                                    ; preds = %159, %156
  %165 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1456, !srcloc !244
  %166 = and i64 %165, -65536, !dbg !1461
  %167 = or i64 %166, 4097, !dbg !1461
  %168 = add nsw i64 %167, -1, !dbg !1461
  %169 = inttoptr i64 %168 to i32*, !dbg !1462
  %170 = load i32, i32* %169, align 4096, !dbg !1463, !tbaa !133
  %171 = inttoptr i64 %25 to i64*, !dbg !1464
  %172 = load i64, i64* %171, align 8, !dbg !1464, !tbaa !647
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call freeaddrinfo\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %172, i32 %170, void (%struct.addrinfo*)* nonnull @freeaddrinfo) #4, !dbg !1464, !srcloc !1465
  br label %173

; <label>:173:                                    ; preds = %164, %162
  %174 = load i32, i32* %8, align 4, !dbg !1466, !tbaa !133
  br label %175, !dbg !1467

; <label>:175:                                    ; preds = %173, %56
  %176 = phi i32 [ -1, %56 ], [ %174, %173 ], !dbg !1468
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #4, !dbg !1469
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %19) #4, !dbg !1469
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %15) #4, !dbg !1469
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14) #4, !dbg !1469
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #4, !dbg !1469
  ret i32 %176, !dbg !1469
}

; Function Attrs: noredzone nounwind
define dso_local i32 @anetTcp6Server(i8*, i32, i8*, i32) local_unnamed_addr #0 !dbg !1470 {
  %5 = tail call fastcc i32 @_anetTcpServer(i8* %0, i32 %1, i8* %2, i32 10, i32 %3) #6, !dbg !1480
  ret i32 %5, !dbg !1481
}

; Function Attrs: noredzone nounwind
define dso_local i32 @anetUnixServer(i8*, i8*, i32, i32) local_unnamed_addr #0 !dbg !1482 {
  %5 = alloca %struct.sockaddr_un, align 1
  %6 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %5, i64 0, i32 0, !dbg !1498
  call void @llvm.lifetime.start.p0i8(i64 109, i8* nonnull %6) #4, !dbg !1498
  %7 = tail call fastcc i32 @anetCreateSocket(i8* %0) #6, !dbg !1499
  %8 = icmp eq i32 %7, -1, !dbg !1502
  br i1 %8, label %20, label %9, !dbg !1503

; <label>:9:                                      ; preds = %4
  %10 = call i8* @memset(i8* nonnull %6, i32 0, i64 109) #5, !dbg !1504
  store i8 1, i8* %6, align 1, !dbg !1505, !tbaa !1023
  %11 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %5, i64 0, i32 1, i64 0, !dbg !1506
  %12 = call i8* @strncpy(i8* nonnull %11, i8* %1, i64 107) #5, !dbg !1507
  %13 = bitcast %struct.sockaddr_un* %5 to %struct.sockaddr*, !dbg !1508
  %14 = call fastcc i32 @anetListen(i8* %0, i32 %7, %struct.sockaddr* nonnull %13, i32 109, i32 %3) #6, !dbg !1510
  %15 = icmp eq i32 %14, -1, !dbg !1511
  br i1 %15, label %20, label %16, !dbg !1512

; <label>:16:                                     ; preds = %9
  %17 = icmp eq i32 %2, 0, !dbg !1513
  br i1 %17, label %20, label %18, !dbg !1515

; <label>:18:                                     ; preds = %16
  %19 = call i32 @chmod(i8* nonnull %11, i32 %2) #5, !dbg !1516
  br label %20, !dbg !1516

; <label>:20:                                     ; preds = %18, %16, %9, %4
  %21 = phi i32 [ -1, %4 ], [ -1, %9 ], [ %7, %16 ], [ %7, %18 ], !dbg !1517
  call void @llvm.lifetime.end.p0i8(i64 109, i8* nonnull %6) #4, !dbg !1518
  ret i32 %21, !dbg !1518
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @anetListen(i8*, i32, %struct.sockaddr*, i32, i32) unnamed_addr #0 !dbg !1519 {
  %6 = alloca i32, align 4
  %7 = bitcast i32* %6 to i8*, !dbg !1549
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #4, !dbg !1549
  %8 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1550, !srcloc !244
  %9 = icmp ult i64 %8, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1553
  br i1 %9, label %15, label %10, !dbg !1553

; <label>:10:                                     ; preds = %5
  %11 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1554, !srcloc !244
  %12 = icmp ugt i64 %11, ptrtoint ([0 x i8]* @_end to i64), !dbg !1553
  br i1 %12, label %15, label %13, !dbg !1557

; <label>:13:                                     ; preds = %10
  %14 = tail call i32 @bind(i32 %1, %struct.sockaddr* %2, i32 %3) #5, !dbg !1558
  store i32 %14, i32* %6, align 4, !dbg !1558, !tbaa !133
  br label %27, !dbg !1558

; <label>:15:                                     ; preds = %10, %5
  %16 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1561, !srcloc !244
  %17 = and i64 %16, -65536, !dbg !1566
  %18 = or i64 %17, 4097, !dbg !1566
  %19 = add nsw i64 %18, -1, !dbg !1566
  %20 = inttoptr i64 %19 to i32*, !dbg !1567
  %21 = load i32, i32* %20, align 4096, !dbg !1568, !tbaa !133
  %22 = zext i32 %3 to i64, !dbg !1569
  %23 = sext i32 %1 to i64, !dbg !1569
  %24 = ptrtoint %struct.sockaddr* %2 to i64, !dbg !1569
  %25 = tail call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call bind\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %23, i64 %24, i64 %22, i32 %21, i32 (i32, %struct.sockaddr*, i32)* nonnull @bind) #4, !dbg !1569, !srcloc !1570
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %6, i64 %25) #4, !dbg !1571, !srcloc !1574
  %26 = load i32, i32* %6, align 4, !dbg !1575, !tbaa !133
  br label %27

; <label>:27:                                     ; preds = %15, %13
  %28 = phi i32 [ %26, %15 ], [ %14, %13 ], !dbg !1575
  %29 = icmp eq i32 %28, -1, !dbg !1577
  br i1 %29, label %30, label %35, !dbg !1578

; <label>:30:                                     ; preds = %27
  %31 = call i32* @__errno() #5, !dbg !1579
  %32 = load i32, i32* %31, align 4, !dbg !1579, !tbaa !133
  %33 = call i8* @strerror(i32 %32) #5, !dbg !1581
  call void (i8*, i8*, ...) @anetSetError(i8* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* %33) #6, !dbg !1582
  %34 = call i32 @close(i32 %1) #5, !dbg !1583
  br label %62, !dbg !1584

; <label>:35:                                     ; preds = %27
  %36 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1585, !srcloc !244
  %37 = icmp ult i64 %36, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1588
  br i1 %37, label %43, label %38, !dbg !1588

; <label>:38:                                     ; preds = %35
  %39 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1589, !srcloc !244
  %40 = icmp ugt i64 %39, ptrtoint ([0 x i8]* @_end to i64), !dbg !1588
  br i1 %40, label %43, label %41, !dbg !1592

; <label>:41:                                     ; preds = %38
  %42 = call i32 @listen(i32 %1, i32 %4) #5, !dbg !1593
  store i32 %42, i32* %6, align 4, !dbg !1593, !tbaa !133
  br label %54, !dbg !1593

; <label>:43:                                     ; preds = %38, %35
  %44 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1595, !srcloc !244
  %45 = and i64 %44, -65536, !dbg !1600
  %46 = or i64 %45, 4097, !dbg !1600
  %47 = add nsw i64 %46, -1, !dbg !1600
  %48 = inttoptr i64 %47 to i32*, !dbg !1601
  %49 = load i32, i32* %48, align 4096, !dbg !1602, !tbaa !133
  %50 = sext i32 %1 to i64, !dbg !1603
  %51 = sext i32 %4 to i64, !dbg !1603
  %52 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call listen\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %50, i64 %51, i32 %49, i32 (i32, i32)* nonnull @listen) #4, !dbg !1603, !srcloc !1604
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %6, i64 %52) #4, !dbg !1605, !srcloc !1608
  %53 = load i32, i32* %6, align 4, !dbg !1609, !tbaa !133
  br label %54

; <label>:54:                                     ; preds = %43, %41
  %55 = phi i32 [ %53, %43 ], [ %42, %41 ], !dbg !1609
  %56 = icmp eq i32 %55, -1, !dbg !1611
  br i1 %56, label %57, label %62, !dbg !1612

; <label>:57:                                     ; preds = %54
  %58 = call i32* @__errno() #5, !dbg !1613
  %59 = load i32, i32* %58, align 4, !dbg !1613, !tbaa !133
  %60 = call i8* @strerror(i32 %59) #5, !dbg !1615
  call void (i8*, i8*, ...) @anetSetError(i8* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i8* %60) #6, !dbg !1616
  %61 = call i32 @close(i32 %1) #5, !dbg !1617
  br label %62, !dbg !1618

; <label>:62:                                     ; preds = %54, %57, %30
  %63 = phi i32 [ -1, %30 ], [ -1, %57 ], [ 0, %54 ], !dbg !1619
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #4, !dbg !1620
  ret i32 %63, !dbg !1620
}

; Function Attrs: noredzone
declare dso_local i32 @chmod(i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @anetTcpAccept(i8*, i32, i8*, i64, i32*) local_unnamed_addr #0 !dbg !1621 {
  %6 = tail call fastcc i32 @anetGenericAccept(i8* %0, i32 %1, %struct.sockaddr* bitcast (%struct.sockaddr_storage* @sa to %struct.sockaddr*), i32* nonnull @salen) #6, !dbg !1641
  %7 = icmp eq i32 %6, -1, !dbg !1644
  br i1 %7, label %32, label %8, !dbg !1645

; <label>:8:                                      ; preds = %5
  %9 = load i8, i8* getelementptr inbounds (%struct.sockaddr_storage, %struct.sockaddr_storage* @sa, i64 0, i32 1), align 1, !dbg !1646, !tbaa !1647
  %10 = icmp eq i8 %9, 2, !dbg !1649
  %11 = icmp eq i8* %2, null, !dbg !1650
  br i1 %10, label %12, label %22, !dbg !1652

; <label>:12:                                     ; preds = %8
  br i1 %11, label %16, label %13, !dbg !1653

; <label>:13:                                     ; preds = %12
  %14 = trunc i64 %3 to i32, !dbg !1654
  %15 = tail call i8* @inet_ntop(i32 2, i8* bitcast (i32* getelementptr inbounds (%struct.sockaddr_storage, %struct.sockaddr_storage* @sa, i64 0, i32 3, i64 0) to i8*), i8* nonnull %2, i32 %14) #5, !dbg !1656
  br label %16, !dbg !1656

; <label>:16:                                     ; preds = %12, %13
  %17 = icmp eq i32* %4, null, !dbg !1657
  br i1 %17, label %32, label %18, !dbg !1659

; <label>:18:                                     ; preds = %16
  %19 = load i16, i16* bitcast (i8* getelementptr inbounds (%struct.sockaddr_storage, %struct.sockaddr_storage* @sa, i64 0, i32 2, i64 0) to i16*), align 2, !dbg !1660, !tbaa !1661
  %20 = tail call zeroext i16 @lwip_htons(i16 zeroext %19) #5, !dbg !1660
  %21 = zext i16 %20 to i32, !dbg !1660
  store i32 %21, i32* %4, align 4, !dbg !1665, !tbaa !133
  br label %32, !dbg !1666

; <label>:22:                                     ; preds = %8
  br i1 %11, label %26, label %23, !dbg !1667

; <label>:23:                                     ; preds = %22
  %24 = trunc i64 %3 to i32, !dbg !1668
  %25 = tail call i8* @inet_ntop(i32 10, i8* bitcast (i32* getelementptr inbounds (%struct.sockaddr_storage, %struct.sockaddr_storage* @sa, i64 0, i32 3, i64 1) to i8*), i8* nonnull %2, i32 %24) #5, !dbg !1669
  br label %26, !dbg !1669

; <label>:26:                                     ; preds = %22, %23
  %27 = icmp eq i32* %4, null, !dbg !1670
  br i1 %27, label %32, label %28, !dbg !1672

; <label>:28:                                     ; preds = %26
  %29 = load i16, i16* bitcast (i8* getelementptr inbounds (%struct.sockaddr_storage, %struct.sockaddr_storage* @sa, i64 0, i32 2, i64 0) to i16*), align 2, !dbg !1673, !tbaa !1674
  %30 = tail call zeroext i16 @lwip_htons(i16 zeroext %29) #5, !dbg !1673
  %31 = zext i16 %30 to i32, !dbg !1673
  store i32 %31, i32* %4, align 4, !dbg !1677, !tbaa !133
  br label %32, !dbg !1678

; <label>:32:                                     ; preds = %16, %18, %26, %28, %5
  ret i32 %6, !dbg !1679
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @anetGenericAccept(i8*, i32, %struct.sockaddr*, i32*) unnamed_addr #0 !dbg !1680 {
  %5 = alloca i32, align 4
  %6 = bitcast i32* %5 to i8*, !dbg !1703
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #4, !dbg !1703
  %7 = ptrtoint i32* %3 to i64
  %8 = sext i32 %1 to i64
  %9 = ptrtoint %struct.sockaddr* %2 to i64
  br label %10, !dbg !1704

; <label>:10:                                     ; preds = %30, %4
  %11 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1705, !srcloc !244
  %12 = icmp ult i64 %11, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1708
  br i1 %12, label %18, label %13, !dbg !1708

; <label>:13:                                     ; preds = %10
  %14 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1709, !srcloc !244
  %15 = icmp ugt i64 %14, ptrtoint ([0 x i8]* @_end to i64), !dbg !1708
  br i1 %15, label %18, label %16, !dbg !1712

; <label>:16:                                     ; preds = %13
  %17 = call i32 @accept(i32 %1, %struct.sockaddr* %2, i32* %3) #5, !dbg !1713
  store i32 %17, i32* %5, align 4, !dbg !1713, !tbaa !133
  br label %27, !dbg !1713

; <label>:18:                                     ; preds = %13, %10
  %19 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1716, !srcloc !244
  %20 = and i64 %19, -65536, !dbg !1721
  %21 = or i64 %20, 4097, !dbg !1721
  %22 = add nsw i64 %21, -1, !dbg !1721
  %23 = inttoptr i64 %22 to i32*, !dbg !1722
  %24 = load i32, i32* %23, align 4096, !dbg !1723, !tbaa !133
  %25 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call accept\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %8, i64 %9, i64 %7, i32 %24, i32 (i32, %struct.sockaddr*, i32*)* nonnull @accept) #4, !dbg !1724, !srcloc !1725
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %5, i64 %25) #4, !dbg !1726, !srcloc !1729
  %26 = load i32, i32* %5, align 4, !dbg !1730, !tbaa !133
  br label %27

; <label>:27:                                     ; preds = %18, %16
  %28 = phi i32 [ %26, %18 ], [ %17, %16 ], !dbg !1730
  %29 = icmp eq i32 %28, -1, !dbg !1732
  br i1 %29, label %30, label %38, !dbg !1733

; <label>:30:                                     ; preds = %27
  %31 = call i32* @__errno() #5, !dbg !1734
  %32 = load i32, i32* %31, align 4, !dbg !1734, !tbaa !133
  %33 = icmp eq i32 %32, 4, !dbg !1737
  br i1 %33, label %10, label %34, !dbg !1738, !llvm.loop !1739

; <label>:34:                                     ; preds = %30
  %35 = call i32* @__errno() #5, !dbg !1741
  %36 = load i32, i32* %35, align 4, !dbg !1741, !tbaa !133
  %37 = call i8* @strerror(i32 %36) #5, !dbg !1743
  call void (i8*, i8*, ...) @anetSetError(i8* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i8* %37) #6, !dbg !1744
  br label %38, !dbg !1745

; <label>:38:                                     ; preds = %27, %34
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #4, !dbg !1746
  ret i32 %28, !dbg !1746
}

; Function Attrs: noredzone
declare dso_local zeroext i16 @lwip_htons(i16 zeroext) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @anetUnixAccept(i8*, i32) local_unnamed_addr #0 !dbg !1747 {
  %3 = alloca %struct.sockaddr_un, align 1
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %3, i64 0, i32 0, !dbg !1756
  call void @llvm.lifetime.start.p0i8(i64 109, i8* nonnull %5) #4, !dbg !1756
  %6 = bitcast i32* %4 to i8*, !dbg !1757
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #4, !dbg !1757
  store i32 109, i32* %4, align 4, !dbg !1758, !tbaa !133
  %7 = bitcast %struct.sockaddr_un* %3 to %struct.sockaddr*, !dbg !1759
  %8 = call fastcc i32 @anetGenericAccept(i8* %0, i32 %1, %struct.sockaddr* nonnull %7, i32* nonnull %4) #6, !dbg !1761
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #4, !dbg !1763
  call void @llvm.lifetime.end.p0i8(i64 109, i8* nonnull %5) #4, !dbg !1763
  ret i32 %8, !dbg !1763
}

; Function Attrs: noredzone nounwind
define dso_local i32 @anetPeerToString(i32, i8*, i64, i32*) local_unnamed_addr #0 !dbg !1764 {
  %5 = alloca %struct.sockaddr_storage, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %5, i64 0, i32 0, !dbg !1793
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %8) #4, !dbg !1793
  %9 = bitcast i32* %6 to i8*, !dbg !1794
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #4, !dbg !1794
  store i32 28, i32* %6, align 4, !dbg !1795, !tbaa !133
  %10 = bitcast i32* %7 to i8*, !dbg !1796
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #4, !dbg !1796
  %11 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1797, !srcloc !244
  %12 = icmp ult i64 %11, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1800
  br i1 %12, label %19, label %13, !dbg !1800

; <label>:13:                                     ; preds = %4
  %14 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1801, !srcloc !244
  %15 = icmp ugt i64 %14, ptrtoint ([0 x i8]* @_end to i64), !dbg !1800
  br i1 %15, label %19, label %16, !dbg !1804

; <label>:16:                                     ; preds = %13
  %17 = bitcast %struct.sockaddr_storage* %5 to %struct.sockaddr*, !dbg !1805
  %18 = call i32 @getpeername(i32 %0, %struct.sockaddr* nonnull %17, i32* nonnull %6) #5, !dbg !1805
  store i32 %18, i32* %7, align 4, !dbg !1805, !tbaa !133
  br label %31, !dbg !1805

; <label>:19:                                     ; preds = %13, %4
  %20 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1808, !srcloc !244
  %21 = and i64 %20, -65536, !dbg !1813
  %22 = or i64 %21, 4097, !dbg !1813
  %23 = add nsw i64 %22, -1, !dbg !1813
  %24 = inttoptr i64 %23 to i32*, !dbg !1814
  %25 = load i32, i32* %24, align 4096, !dbg !1815, !tbaa !133
  %26 = ptrtoint i32* %6 to i64, !dbg !1816
  %27 = sext i32 %0 to i64, !dbg !1816
  %28 = ptrtoint %struct.sockaddr_storage* %5 to i64, !dbg !1816
  %29 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call getpeername\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %27, i64 %28, i64 %26, i32 %25, i32 (i32, %struct.sockaddr*, i32*)* nonnull @getpeername) #4, !dbg !1816, !srcloc !1817
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %7, i64 %29) #4, !dbg !1818, !srcloc !1821
  %30 = load i32, i32* %7, align 4, !dbg !1822, !tbaa !133
  br label %31

; <label>:31:                                     ; preds = %19, %16
  %32 = phi i32 [ %30, %19 ], [ %18, %16 ], !dbg !1822
  %33 = icmp eq i32 %32, -1, !dbg !1824
  %34 = icmp eq i64 %2, 0, !dbg !1825
  %35 = or i1 %34, %33, !dbg !1827
  br i1 %35, label %76, label %36, !dbg !1827

; <label>:36:                                     ; preds = %31
  %37 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %5, i64 0, i32 1, !dbg !1828
  %38 = load i8, i8* %37, align 1, !dbg !1828, !tbaa !1647
  switch i8 %38, label %76 [
    i8 2, label %39
    i8 10, label %54
    i8 1, label %69
  ], !dbg !1829

; <label>:39:                                     ; preds = %36
  %40 = icmp eq i8* %1, null, !dbg !1830
  br i1 %40, label %46, label %41, !dbg !1832

; <label>:41:                                     ; preds = %39
  %42 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %5, i64 0, i32 3, !dbg !1834
  %43 = bitcast [3 x i32]* %42 to i8*, !dbg !1835
  %44 = trunc i64 %2 to i32, !dbg !1836
  %45 = call i8* @inet_ntop(i32 2, i8* nonnull %43, i8* nonnull %1, i32 %44) #5, !dbg !1837
  br label %46, !dbg !1837

; <label>:46:                                     ; preds = %39, %41
  %47 = icmp eq i32* %3, null, !dbg !1838
  br i1 %47, label %88, label %48, !dbg !1840

; <label>:48:                                     ; preds = %46
  %49 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %5, i64 0, i32 2, !dbg !1841
  %50 = bitcast [2 x i8]* %49 to i16*, !dbg !1841
  %51 = load i16, i16* %50, align 2, !dbg !1841, !tbaa !1661
  %52 = call zeroext i16 @lwip_htons(i16 zeroext %51) #5, !dbg !1841
  %53 = zext i16 %52 to i32, !dbg !1841
  store i32 %53, i32* %3, align 4, !dbg !1842, !tbaa !133
  br label %88, !dbg !1843

; <label>:54:                                     ; preds = %36
  %55 = icmp eq i8* %1, null, !dbg !1844
  br i1 %55, label %61, label %56, !dbg !1846

; <label>:56:                                     ; preds = %54
  %57 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %5, i64 0, i32 3, i64 1, !dbg !1848
  %58 = bitcast i32* %57 to i8*, !dbg !1849
  %59 = trunc i64 %2 to i32, !dbg !1850
  %60 = call i8* @inet_ntop(i32 10, i8* nonnull %58, i8* nonnull %1, i32 %59) #5, !dbg !1851
  br label %61, !dbg !1851

; <label>:61:                                     ; preds = %54, %56
  %62 = icmp eq i32* %3, null, !dbg !1852
  br i1 %62, label %88, label %63, !dbg !1854

; <label>:63:                                     ; preds = %61
  %64 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %5, i64 0, i32 2, !dbg !1855
  %65 = bitcast [2 x i8]* %64 to i16*, !dbg !1855
  %66 = load i16, i16* %65, align 2, !dbg !1855, !tbaa !1674
  %67 = call zeroext i16 @lwip_htons(i16 zeroext %66) #5, !dbg !1855
  %68 = zext i16 %67 to i32, !dbg !1855
  store i32 %68, i32* %3, align 4, !dbg !1856, !tbaa !133
  br label %88, !dbg !1857

; <label>:69:                                     ; preds = %36
  %70 = icmp eq i8* %1, null, !dbg !1858
  br i1 %70, label %73, label %71, !dbg !1862

; <label>:71:                                     ; preds = %69
  %72 = call i8* @strncpy(i8* nonnull %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i64 %2) #5, !dbg !1863
  br label %73, !dbg !1863

; <label>:73:                                     ; preds = %69, %71
  %74 = icmp eq i32* %3, null, !dbg !1864
  br i1 %74, label %88, label %75, !dbg !1866

; <label>:75:                                     ; preds = %73
  store i32 0, i32* %3, align 4, !dbg !1867, !tbaa !133
  br label %88, !dbg !1868

; <label>:76:                                     ; preds = %36, %31
  %77 = icmp eq i8* %1, null, !dbg !1869
  br i1 %77, label %85, label %78, !dbg !1871

; <label>:78:                                     ; preds = %76
  %79 = icmp ugt i64 %2, 1, !dbg !1872
  br i1 %79, label %80, label %82, !dbg !1875

; <label>:80:                                     ; preds = %78
  store i8 63, i8* %1, align 1, !dbg !1876, !tbaa !1878
  %81 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1879
  store i8 0, i8* %81, align 1, !dbg !1880, !tbaa !1878
  br label %85, !dbg !1881

; <label>:82:                                     ; preds = %78
  %83 = icmp eq i64 %2, 1, !dbg !1882
  br i1 %83, label %84, label %85, !dbg !1884

; <label>:84:                                     ; preds = %82
  store i8 0, i8* %1, align 1, !dbg !1885, !tbaa !1878
  br label %85, !dbg !1887

; <label>:85:                                     ; preds = %76, %80, %84, %82
  %86 = icmp eq i32* %3, null, !dbg !1888
  br i1 %86, label %88, label %87, !dbg !1890

; <label>:87:                                     ; preds = %85
  store i32 0, i32* %3, align 4, !dbg !1891, !tbaa !133
  br label %88, !dbg !1892

; <label>:88:                                     ; preds = %87, %85, %75, %73, %46, %48, %61, %63
  %89 = phi i32 [ 0, %63 ], [ 0, %61 ], [ 0, %48 ], [ 0, %46 ], [ 0, %73 ], [ 0, %75 ], [ -1, %85 ], [ -1, %87 ], !dbg !1893
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #4, !dbg !1894
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #4, !dbg !1894
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %8) #4, !dbg !1894
  ret i32 %89, !dbg !1894
}

; Function Attrs: noredzone
declare dso_local i32 @getpeername(i32, %struct.sockaddr*, i32*) #3

; Function Attrs: noredzone nounwind
define dso_local i32 @anetFormatAddr(i8*, i64, i8*, i32) local_unnamed_addr #0 !dbg !1895 {
  %5 = tail call i8* @strchr(i8* %2, i32 58) #5, !dbg !1907
  %6 = icmp eq i8* %5, null, !dbg !1907
  %7 = select i1 %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), !dbg !1907
  %8 = tail call i32 (i8*, i64, i8*, ...) @snprintf(i8* %0, i64 %1, i8* %7, i8* %2, i32 %3) #5, !dbg !1908
  ret i32 %8, !dbg !1909
}

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @anetFormatPeer(i32, i8*, i64) local_unnamed_addr #0 !dbg !1910 {
  %4 = alloca [46 x i8], align 16
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds [46 x i8], [46 x i8]* %4, i64 0, i64 0, !dbg !1925
  call void @llvm.lifetime.start.p0i8(i64 46, i8* nonnull %6) #4, !dbg !1925
  %7 = bitcast i32* %5 to i8*, !dbg !1927
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #4, !dbg !1927
  %8 = call i32 @anetPeerToString(i32 %0, i8* nonnull %6, i64 46, i32* nonnull %5) #6, !dbg !1929
  %9 = load i32, i32* %5, align 4, !dbg !1930, !tbaa !133
  %10 = call i8* @strchr(i8* nonnull %6, i32 58) #5, !dbg !1936
  %11 = icmp eq i8* %10, null, !dbg !1936
  %12 = select i1 %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), !dbg !1936
  %13 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %1, i64 %2, i8* %12, i8* nonnull %6, i32 %9) #5, !dbg !1937
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #4, !dbg !1938
  call void @llvm.lifetime.end.p0i8(i64 46, i8* nonnull %6) #4, !dbg !1938
  ret i32 %13, !dbg !1939
}

; Function Attrs: noredzone nounwind
define dso_local i32 @anetSockName(i32, i8*, i64, i32*) local_unnamed_addr #0 !dbg !1940 {
  %5 = alloca %struct.sockaddr_storage, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %5, i64 0, i32 0, !dbg !1957
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %7) #4, !dbg !1957
  %8 = bitcast i32* %6 to i8*, !dbg !1958
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #4, !dbg !1958
  store i32 28, i32* %6, align 4, !dbg !1959, !tbaa !133
  %9 = bitcast %struct.sockaddr_storage* %5 to %struct.sockaddr*, !dbg !1960
  %10 = call i32 @getsockname(i32 %0, %struct.sockaddr* nonnull %9, i32* nonnull %6) #5, !dbg !1962
  %11 = icmp eq i32 %10, -1, !dbg !1963
  br i1 %11, label %12, label %17, !dbg !1964

; <label>:12:                                     ; preds = %4
  %13 = icmp eq i32* %3, null, !dbg !1965
  br i1 %13, label %15, label %14, !dbg !1968

; <label>:14:                                     ; preds = %12
  store i32 0, i32* %3, align 4, !dbg !1969, !tbaa !133
  br label %15, !dbg !1970

; <label>:15:                                     ; preds = %12, %14
  store i8 63, i8* %1, align 1, !dbg !1971, !tbaa !1878
  %16 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1972
  store i8 0, i8* %16, align 1, !dbg !1973, !tbaa !1878
  br label %50, !dbg !1974

; <label>:17:                                     ; preds = %4
  %18 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %5, i64 0, i32 1, !dbg !1975
  %19 = load i8, i8* %18, align 1, !dbg !1975, !tbaa !1647
  %20 = icmp eq i8 %19, 2, !dbg !1976
  %21 = icmp eq i8* %1, null, !dbg !1977
  br i1 %20, label %22, label %36, !dbg !1979

; <label>:22:                                     ; preds = %17
  br i1 %21, label %28, label %23, !dbg !1980

; <label>:23:                                     ; preds = %22
  %24 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %5, i64 0, i32 3, !dbg !1982
  %25 = bitcast [3 x i32]* %24 to i8*, !dbg !1984
  %26 = trunc i64 %2 to i32, !dbg !1985
  %27 = call i8* @inet_ntop(i32 2, i8* nonnull %25, i8* nonnull %1, i32 %26) #5, !dbg !1986
  br label %28, !dbg !1986

; <label>:28:                                     ; preds = %22, %23
  %29 = icmp eq i32* %3, null, !dbg !1987
  br i1 %29, label %50, label %30, !dbg !1989

; <label>:30:                                     ; preds = %28
  %31 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %5, i64 0, i32 2, !dbg !1990
  %32 = bitcast [2 x i8]* %31 to i16*, !dbg !1990
  %33 = load i16, i16* %32, align 2, !dbg !1990, !tbaa !1661
  %34 = call zeroext i16 @lwip_htons(i16 zeroext %33) #5, !dbg !1990
  %35 = zext i16 %34 to i32, !dbg !1990
  store i32 %35, i32* %3, align 4, !dbg !1991, !tbaa !133
  br label %50, !dbg !1992

; <label>:36:                                     ; preds = %17
  br i1 %21, label %42, label %37, !dbg !1993

; <label>:37:                                     ; preds = %36
  %38 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %5, i64 0, i32 3, i64 1, !dbg !1995
  %39 = bitcast i32* %38 to i8*, !dbg !1996
  %40 = trunc i64 %2 to i32, !dbg !1997
  %41 = call i8* @inet_ntop(i32 10, i8* nonnull %39, i8* nonnull %1, i32 %40) #5, !dbg !1998
  br label %42, !dbg !1998

; <label>:42:                                     ; preds = %36, %37
  %43 = icmp eq i32* %3, null, !dbg !1999
  br i1 %43, label %50, label %44, !dbg !2001

; <label>:44:                                     ; preds = %42
  %45 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %5, i64 0, i32 2, !dbg !2002
  %46 = bitcast [2 x i8]* %45 to i16*, !dbg !2002
  %47 = load i16, i16* %46, align 2, !dbg !2002, !tbaa !1674
  %48 = call zeroext i16 @lwip_htons(i16 zeroext %47) #5, !dbg !2002
  %49 = zext i16 %48 to i32, !dbg !2002
  store i32 %49, i32* %3, align 4, !dbg !2003, !tbaa !133
  br label %50, !dbg !2004

; <label>:50:                                     ; preds = %28, %30, %42, %44, %15
  %51 = phi i32 [ -1, %15 ], [ 0, %44 ], [ 0, %42 ], [ 0, %30 ], [ 0, %28 ], !dbg !2005
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #4, !dbg !2006
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %7) #4, !dbg !2006
  ret i32 %51, !dbg !2006
}

; Function Attrs: noredzone
declare dso_local i32 @getsockname(i32, %struct.sockaddr*, i32*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @anetFormatSock(i32, i8*, i64) local_unnamed_addr #0 !dbg !2007 {
  %4 = alloca [46 x i8], align 16
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds [46 x i8], [46 x i8]* %4, i64 0, i64 0, !dbg !2017
  call void @llvm.lifetime.start.p0i8(i64 46, i8* nonnull %6) #4, !dbg !2017
  %7 = bitcast i32* %5 to i8*, !dbg !2019
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #4, !dbg !2019
  %8 = call i32 @anetSockName(i32 %0, i8* nonnull %6, i64 46, i32* nonnull %5) #6, !dbg !2021
  %9 = load i32, i32* %5, align 4, !dbg !2022, !tbaa !133
  %10 = call i8* @strchr(i8* nonnull %6, i32 58) #5, !dbg !2028
  %11 = icmp eq i8* %10, null, !dbg !2028
  %12 = select i1 %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), !dbg !2028
  %13 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %1, i64 %2, i8* %12, i8* nonnull %6, i32 %9) #5, !dbg !2029
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #4, !dbg !2030
  call void @llvm.lifetime.end.p0i8(i64 46, i8* nonnull %6) #4, !dbg !2030
  ret i32 %13, !dbg !2031
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
define internal fastcc i32 @anetSetReuseAddr(i8*, i32) unnamed_addr #0 !dbg !2032 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = bitcast i32* %3 to i8*, !dbg !2051
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #4, !dbg !2051
  %6 = ptrtoint i32* %3 to i64, !dbg !2052
  %7 = add i64 %6, 65536, !dbg !2053
  %8 = inttoptr i64 %7 to i32*, !dbg !2054
  store i32 1, i32* %8, align 4, !dbg !2056, !tbaa !133
  %9 = bitcast i32* %4 to i8*, !dbg !2057
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #4, !dbg !2057
  %10 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !2058, !srcloc !244
  %11 = icmp ult i64 %10, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !2061
  br i1 %11, label %18, label %12, !dbg !2061

; <label>:12:                                     ; preds = %2
  %13 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !2062, !srcloc !244
  %14 = icmp ugt i64 %13, ptrtoint ([0 x i8]* @_end to i64), !dbg !2061
  br i1 %14, label %18, label %15, !dbg !2065

; <label>:15:                                     ; preds = %12
  %16 = inttoptr i64 %7 to i8*, !dbg !2066
  %17 = call i32 @setsockopt(i32 %1, i32 4095, i32 4, i8* %16, i32 4) #5, !dbg !2066
  store i32 %17, i32* %4, align 4, !dbg !2066, !tbaa !133
  br label %28, !dbg !2066

; <label>:18:                                     ; preds = %12, %2
  %19 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !2069, !srcloc !244
  %20 = and i64 %19, -65536, !dbg !2074
  %21 = or i64 %20, 4097, !dbg !2074
  %22 = add nsw i64 %21, -1, !dbg !2074
  %23 = inttoptr i64 %22 to i32*, !dbg !2075
  %24 = load i32, i32* %23, align 4096, !dbg !2076, !tbaa !133
  %25 = sext i32 %1 to i64, !dbg !2077
  %26 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call setsockopt\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r8},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %25, i64 4095, i64 4, i64 %7, i64 4, i32 %24, i32 (i32, i32, i32, i8*, i32)* nonnull @setsockopt) #4, !dbg !2077, !srcloc !2078
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %4, i64 %26) #4, !dbg !2079, !srcloc !2082
  %27 = load i32, i32* %4, align 4, !dbg !2083, !tbaa !133
  br label %28

; <label>:28:                                     ; preds = %18, %15
  %29 = phi i32 [ %27, %18 ], [ %17, %15 ], !dbg !2083
  %30 = icmp eq i32 %29, -1, !dbg !2085
  br i1 %30, label %31, label %35, !dbg !2086

; <label>:31:                                     ; preds = %28
  %32 = call i32* @__errno() #5, !dbg !2087
  %33 = load i32, i32* %32, align 4, !dbg !2087, !tbaa !133
  %34 = call i8* @strerror(i32 %33) #5, !dbg !2089
  call void (i8*, i8*, ...) @anetSetError(i8* %0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0), i8* %34) #6, !dbg !2090
  br label %35, !dbg !2091

; <label>:35:                                     ; preds = %28, %31
  %36 = phi i32 [ -1, %31 ], [ 0, %28 ], !dbg !2092
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #4, !dbg !2093
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #4, !dbg !2093
  ret i32 %36, !dbg !2093
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
!142 = !DILocation(line: 74, column: 15, scope: !141)
!143 = !DILocation(line: 76, column: 15, scope: !141)
!144 = !DILocation(line: 73, column: 9, scope: !115)
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
!155 = !DILocation(line: 83, column: 1, scope: !115)
!156 = distinct !DISubprogram(name: "anetSetError", scope: !3, file: !3, line: 52, type: !157, isLocal: true, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !161)
!157 = !DISubroutineType(types: !158)
!158 = !{null, !80, !159, null}
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!161 = !{!162, !163, !164}
!162 = !DILocalVariable(name: "err", arg: 1, scope: !156, file: !3, line: 52, type: !80)
!163 = !DILocalVariable(name: "fmt", arg: 2, scope: !156, file: !3, line: 52, type: !159)
!164 = !DILocalVariable(name: "ap", scope: !156, file: !3, line: 54, type: !165)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !166, line: 46, baseType: !167)
!166 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !168, line: 51, baseType: !169)
!168 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 54, baseType: !170)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 192, elements: !177)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 54, size: 192, elements: !172)
!172 = !{!173, !174, !175, !176}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !171, file: !3, line: 54, baseType: !43, size: 32)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !171, file: !3, line: 54, baseType: !43, size: 32, offset: 32)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !171, file: !3, line: 54, baseType: !15, size: 64, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !171, file: !3, line: 54, baseType: !15, size: 64, offset: 128)
!177 = !{!178}
!178 = !DISubrange(count: 1)
!179 = !DILocation(line: 52, column: 32, scope: !156)
!180 = !DILocation(line: 52, column: 49, scope: !156)
!181 = !DILocation(line: 54, column: 5, scope: !156)
!182 = !DILocation(line: 54, column: 13, scope: !156)
!183 = !DILocation(line: 56, column: 10, scope: !184)
!184 = distinct !DILexicalBlock(scope: !156, file: !3, line: 56, column: 9)
!185 = !DILocation(line: 56, column: 9, scope: !156)
!186 = !DILocation(line: 57, column: 5, scope: !156)
!187 = !DILocation(line: 58, column: 5, scope: !156)
!188 = !DILocation(line: 59, column: 5, scope: !156)
!189 = !DILocation(line: 60, column: 1, scope: !156)
!190 = distinct !DISubprogram(name: "anetNonBlock", scope: !3, file: !3, line: 85, type: !191, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !193)
!191 = !DISubroutineType(types: !192)
!192 = !{!7, !80, !7}
!193 = !{!194, !195}
!194 = !DILocalVariable(name: "err", arg: 1, scope: !190, file: !3, line: 85, type: !80)
!195 = !DILocalVariable(name: "fd", arg: 2, scope: !190, file: !3, line: 85, type: !7)
!196 = !DILocation(line: 85, column: 24, scope: !190)
!197 = !DILocation(line: 85, column: 33, scope: !190)
!198 = !DILocation(line: 86, column: 12, scope: !190)
!199 = !DILocation(line: 86, column: 5, scope: !190)
!200 = distinct !DISubprogram(name: "anetBlock", scope: !3, file: !3, line: 89, type: !191, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !201)
!201 = !{!202, !203}
!202 = !DILocalVariable(name: "err", arg: 1, scope: !200, file: !3, line: 89, type: !80)
!203 = !DILocalVariable(name: "fd", arg: 2, scope: !200, file: !3, line: 89, type: !7)
!204 = !DILocation(line: 89, column: 21, scope: !200)
!205 = !DILocation(line: 89, column: 30, scope: !200)
!206 = !DILocation(line: 90, column: 12, scope: !200)
!207 = !DILocation(line: 90, column: 5, scope: !200)
!208 = distinct !DISubprogram(name: "anetKeepAlive", scope: !3, file: !3, line: 96, type: !116, isLocal: false, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !209)
!209 = !{!210, !211, !212, !213, !214, !215, !216, !222, !223, !224, !225}
!210 = !DILocalVariable(name: "err", arg: 1, scope: !208, file: !3, line: 96, type: !80)
!211 = !DILocalVariable(name: "fd", arg: 2, scope: !208, file: !3, line: 96, type: !7)
!212 = !DILocalVariable(name: "interval", arg: 3, scope: !208, file: !3, line: 96, type: !7)
!213 = !DILocalVariable(name: "val", scope: !208, file: !3, line: 98, type: !7)
!214 = !DILocalVariable(name: "_dss_val", scope: !208, file: !3, line: 99, type: !6)
!215 = !DILocalVariable(name: "ret", scope: !208, file: !3, line: 102, type: !7)
!216 = !DILocalVariable(name: "tid", scope: !217, file: !3, line: 103, type: !41)
!217 = distinct !DILexicalBlock(scope: !218, file: !3, line: 103, column: 5)
!218 = distinct !DILexicalBlock(scope: !219, file: !3, line: 103, column: 5)
!219 = distinct !DILexicalBlock(scope: !220, file: !3, line: 103, column: 5)
!220 = distinct !DILexicalBlock(scope: !221, file: !3, line: 103, column: 5)
!221 = distinct !DILexicalBlock(scope: !208, file: !3, line: 103, column: 5)
!222 = !DILocalVariable(name: "_ret", scope: !217, file: !3, line: 103, type: !13)
!223 = !DILocalVariable(name: "_arg3", scope: !217, file: !3, line: 103, type: !13)
!224 = !DILocalVariable(name: "_arg4", scope: !217, file: !3, line: 103, type: !13)
!225 = !DILocalVariable(name: "_arg5", scope: !217, file: !3, line: 103, type: !13)
!226 = !DILocation(line: 96, column: 25, scope: !208)
!227 = !DILocation(line: 96, column: 34, scope: !208)
!228 = !DILocation(line: 96, column: 42, scope: !208)
!229 = !DILocation(line: 98, column: 5, scope: !208)
!230 = !DILocation(line: 99, column: 30, scope: !208)
!231 = !DILocation(line: 99, column: 49, scope: !208)
!232 = !DILocation(line: 99, column: 21, scope: !208)
!233 = !DILocation(line: 99, column: 10, scope: !208)
!234 = !DILocation(line: 100, column: 17, scope: !208)
!235 = !DILocation(line: 102, column: 5, scope: !208)
!236 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !243)
!237 = distinct !DISubprogram(name: "ukarch_read_sp", scope: !238, file: !238, line: 116, type: !239, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !241)
!238 = !DIFile(filename: "/root/.unikraft/unikraft/arch/x86/x86_64/include/uk/asm/lcpu.h", directory: "/root/.unikraft/apps/redis/build")
!239 = !DISubroutineType(types: !240)
!240 = !{!12}
!241 = !{!242}
!242 = !DILocalVariable(name: "sp", scope: !237, file: !238, line: 118, type: !12)
!243 = distinct !DILocation(line: 103, column: 5, scope: !220)
!244 = !{i32 444436}
!245 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !243)
!246 = !DILocation(line: 103, column: 5, scope: !220)
!247 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !248)
!248 = distinct !DILocation(line: 103, column: 5, scope: !220)
!249 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !248)
!250 = !DILocation(line: 103, column: 5, scope: !221)
!251 = !DILocation(line: 103, column: 5, scope: !252)
!252 = distinct !DILexicalBlock(scope: !220, file: !3, line: 103, column: 5)
!253 = !DILocation(line: 102, column: 9, scope: !208)
!254 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !255)
!255 = distinct !DILocation(line: 49, column: 21, scope: !256, inlinedAt: !262)
!256 = distinct !DISubprogram(name: "uk_thread_get_tid", scope: !257, file: !257, line: 47, type: !258, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !260)
!257 = !DIFile(filename: "/root/.unikraft/unikraft/lib/flexos-core/include/flexos/impl/intelpku-impl.h", directory: "/root/.unikraft/apps/redis/build")
!258 = !DISubroutineType(types: !259)
!259 = !{!7}
!260 = !{!261}
!261 = !DILocalVariable(name: "sp", scope: !256, file: !257, line: 49, type: !12)
!262 = distinct !DILocation(line: 103, column: 5, scope: !217)
!263 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !255)
!264 = !DILocation(line: 49, column: 16, scope: !256, inlinedAt: !262)
!265 = !DILocation(line: 50, column: 19, scope: !256, inlinedAt: !262)
!266 = !DILocation(line: 50, column: 11, scope: !256, inlinedAt: !262)
!267 = !DILocation(line: 50, column: 9, scope: !256, inlinedAt: !262)
!268 = !DILocation(line: 103, column: 5, scope: !217)
!269 = !{i32 -2146307502, i32 -2146307489, i32 -2146307464, i32 -2146307440, i32 -2146307415, i32 -2146307340, i32 -2146307315, i32 -2146307171, i32 -2146307146, i32 -2146303739, i32 -2146303650, i32 -2146303529, i32 -2146303434, i32 -2146303333, i32 -2146303306, i32 -2146303223, i32 -2146303134, i32 -2146303013, i32 -2146302913, i32 -2146302807, i32 -2146302699, i32 -2146306770, i32 -2146306717, i32 -2146306686, i32 -2146306655, i32 -2146306634, i32 -2146306612, i32 -2146306563, i32 -2146306542, i32 -2146306439, i32 -2146306407, i32 -2146302616, i32 -2146302527, i32 -2146302406, i32 -2146302307, i32 -2146302201, i32 -2146302099, i32 -2146302066, i32 -2146301993, i32 -2146301925, i32 -2146306217, i32 -2146306158, i32 -2146306105, i32 -2146306074, i32 -2146306043, i32 -2146306022, i32 -2146306000, i32 -2146305951, i32 -2146305930, i32 -2146301879, i32 -2146301790, i32 -2146301669, i32 -2146301570, i32 -2146301464, i32 -2146301362, i32 -2146301329, i32 -2146301246, i32 -2146301157, i32 -2146301036, i32 -2146300936, i32 -2146300910, i32 -2146300807, i32 -2146300781, i32 -2146305672, i32 -2146305647, i32 -2146305580, i32 -2146305555, i32 -2146305491, i32 -2146305409, i32 -2146305386, i32 -2146305361, i32 -2146305336}
!270 = !DILocation(line: 103, column: 5, scope: !271)
!271 = distinct !DILexicalBlock(scope: !272, file: !3, line: 103, column: 5)
!272 = distinct !DILexicalBlock(scope: !217, file: !3, line: 103, column: 5)
!273 = !{i32 -2146304252, i32 -2146304235}
!274 = !DILocation(line: 105, column: 9, scope: !275)
!275 = distinct !DILexicalBlock(scope: !208, file: !3, line: 105, column: 9)
!276 = !DILocation(line: 105, column: 13, scope: !275)
!277 = !DILocation(line: 105, column: 9, scope: !208)
!278 = !DILocation(line: 107, column: 67, scope: !279)
!279 = distinct !DILexicalBlock(scope: !275, file: !3, line: 106, column: 5)
!280 = !DILocation(line: 107, column: 58, scope: !279)
!281 = !DILocation(line: 107, column: 9, scope: !279)
!282 = !DILocation(line: 108, column: 9, scope: !279)
!283 = !DILocation(line: 0, scope: !208)
!284 = !DILocation(line: 154, column: 1, scope: !208)
!285 = distinct !DISubprogram(name: "anetEnableTcpNoDelay", scope: !3, file: !3, line: 172, type: !191, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !286)
!286 = !{!287, !288}
!287 = !DILocalVariable(name: "err", arg: 1, scope: !285, file: !3, line: 172, type: !80)
!288 = !DILocalVariable(name: "fd", arg: 2, scope: !285, file: !3, line: 172, type: !7)
!289 = !DILocation(line: 172, column: 32, scope: !285)
!290 = !DILocation(line: 172, column: 41, scope: !285)
!291 = !DILocation(line: 174, column: 12, scope: !285)
!292 = !DILocation(line: 174, column: 5, scope: !285)
!293 = distinct !DISubprogram(name: "anetSetTcpNoDelay", scope: !3, file: !3, line: 156, type: !116, isLocal: true, isDefinition: true, scopeLine: 157, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !294)
!294 = !{!295, !296, !297, !298, !299, !300, !301, !307, !308, !309, !310}
!295 = !DILocalVariable(name: "err", arg: 1, scope: !293, file: !3, line: 156, type: !80)
!296 = !DILocalVariable(name: "fd", arg: 2, scope: !293, file: !3, line: 156, type: !7)
!297 = !DILocalVariable(name: "val", arg: 3, scope: !293, file: !3, line: 156, type: !7)
!298 = !DILocalVariable(name: "_val", scope: !293, file: !3, line: 158, type: !7)
!299 = !DILocalVariable(name: "_dss__val", scope: !293, file: !3, line: 159, type: !6)
!300 = !DILocalVariable(name: "ret", scope: !293, file: !3, line: 161, type: !7)
!301 = !DILocalVariable(name: "tid", scope: !302, file: !3, line: 162, type: !41)
!302 = distinct !DILexicalBlock(scope: !303, file: !3, line: 162, column: 5)
!303 = distinct !DILexicalBlock(scope: !304, file: !3, line: 162, column: 5)
!304 = distinct !DILexicalBlock(scope: !305, file: !3, line: 162, column: 5)
!305 = distinct !DILexicalBlock(scope: !306, file: !3, line: 162, column: 5)
!306 = distinct !DILexicalBlock(scope: !293, file: !3, line: 162, column: 5)
!307 = !DILocalVariable(name: "_ret", scope: !302, file: !3, line: 162, type: !13)
!308 = !DILocalVariable(name: "_arg3", scope: !302, file: !3, line: 162, type: !13)
!309 = !DILocalVariable(name: "_arg4", scope: !302, file: !3, line: 162, type: !13)
!310 = !DILocalVariable(name: "_arg5", scope: !302, file: !3, line: 162, type: !13)
!311 = !DILocation(line: 156, column: 36, scope: !293)
!312 = !DILocation(line: 156, column: 45, scope: !293)
!313 = !DILocation(line: 156, column: 53, scope: !293)
!314 = !DILocation(line: 158, column: 5, scope: !293)
!315 = !DILocation(line: 159, column: 31, scope: !293)
!316 = !DILocation(line: 159, column: 51, scope: !293)
!317 = !DILocation(line: 159, column: 22, scope: !293)
!318 = !DILocation(line: 159, column: 10, scope: !293)
!319 = !DILocation(line: 160, column: 18, scope: !293)
!320 = !DILocation(line: 161, column: 5, scope: !293)
!321 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !322)
!322 = distinct !DILocation(line: 162, column: 5, scope: !305)
!323 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !322)
!324 = !DILocation(line: 162, column: 5, scope: !305)
!325 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !326)
!326 = distinct !DILocation(line: 162, column: 5, scope: !305)
!327 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !326)
!328 = !DILocation(line: 162, column: 5, scope: !306)
!329 = !DILocation(line: 162, column: 5, scope: !330)
!330 = distinct !DILexicalBlock(scope: !305, file: !3, line: 162, column: 5)
!331 = !DILocation(line: 161, column: 9, scope: !293)
!332 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !333)
!333 = distinct !DILocation(line: 49, column: 21, scope: !256, inlinedAt: !334)
!334 = distinct !DILocation(line: 162, column: 5, scope: !302)
!335 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !333)
!336 = !DILocation(line: 49, column: 16, scope: !256, inlinedAt: !334)
!337 = !DILocation(line: 50, column: 19, scope: !256, inlinedAt: !334)
!338 = !DILocation(line: 50, column: 11, scope: !256, inlinedAt: !334)
!339 = !DILocation(line: 50, column: 9, scope: !256, inlinedAt: !334)
!340 = !DILocation(line: 162, column: 5, scope: !302)
!341 = !{i32 -2146298016, i32 -2146298003, i32 -2146297978, i32 -2146297954, i32 -2146297929, i32 -2146297854, i32 -2146297829, i32 -2146297685, i32 -2146297660, i32 -2146294263, i32 -2146294174, i32 -2146294053, i32 -2146293958, i32 -2146293857, i32 -2146293830, i32 -2146293747, i32 -2146293658, i32 -2146293537, i32 -2146293437, i32 -2146293331, i32 -2146293223, i32 -2146297284, i32 -2146297231, i32 -2146297200, i32 -2146297169, i32 -2146297148, i32 -2146297126, i32 -2146297077, i32 -2146297056, i32 -2146296953, i32 -2146296921, i32 -2146293140, i32 -2146293051, i32 -2146292930, i32 -2146292831, i32 -2146292725, i32 -2146292623, i32 -2146292590, i32 -2146292517, i32 -2146292449, i32 -2146296731, i32 -2146296672, i32 -2146296619, i32 -2146296588, i32 -2146296557, i32 -2146296536, i32 -2146296514, i32 -2146296465, i32 -2146296444, i32 -2146292403, i32 -2146292314, i32 -2146292193, i32 -2146292094, i32 -2146291988, i32 -2146291886, i32 -2146291853, i32 -2146291770, i32 -2146291681, i32 -2146291560, i32 -2146291460, i32 -2146291434, i32 -2146291331, i32 -2146291305, i32 -2146296186, i32 -2146296161, i32 -2146296094, i32 -2146296069, i32 -2146296005, i32 -2146295923, i32 -2146295900, i32 -2146295875, i32 -2146295850}
!342 = !DILocation(line: 162, column: 5, scope: !343)
!343 = distinct !DILexicalBlock(scope: !344, file: !3, line: 162, column: 5)
!344 = distinct !DILexicalBlock(scope: !302, file: !3, line: 162, column: 5)
!345 = !{i32 -2146294766, i32 -2146294749}
!346 = !DILocation(line: 164, column: 9, scope: !347)
!347 = distinct !DILexicalBlock(scope: !293, file: !3, line: 164, column: 9)
!348 = !DILocation(line: 164, column: 13, scope: !347)
!349 = !DILocation(line: 164, column: 9, scope: !293)
!350 = !DILocation(line: 166, column: 66, scope: !351)
!351 = distinct !DILexicalBlock(scope: !347, file: !3, line: 165, column: 5)
!352 = !DILocation(line: 166, column: 57, scope: !351)
!353 = !DILocation(line: 166, column: 9, scope: !351)
!354 = !DILocation(line: 167, column: 9, scope: !351)
!355 = !DILocation(line: 0, scope: !293)
!356 = !DILocation(line: 170, column: 1, scope: !293)
!357 = distinct !DISubprogram(name: "anetDisableTcpNoDelay", scope: !3, file: !3, line: 177, type: !191, isLocal: false, isDefinition: true, scopeLine: 178, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !358)
!358 = !{!359, !360}
!359 = !DILocalVariable(name: "err", arg: 1, scope: !357, file: !3, line: 177, type: !80)
!360 = !DILocalVariable(name: "fd", arg: 2, scope: !357, file: !3, line: 177, type: !7)
!361 = !DILocation(line: 177, column: 33, scope: !357)
!362 = !DILocation(line: 177, column: 42, scope: !357)
!363 = !DILocation(line: 179, column: 12, scope: !357)
!364 = !DILocation(line: 179, column: 5, scope: !357)
!365 = distinct !DISubprogram(name: "anetSetSendBuffer", scope: !3, file: !3, line: 183, type: !116, isLocal: false, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !366)
!366 = !{!367, !368, !369, !370, !371, !377, !378, !379, !380}
!367 = !DILocalVariable(name: "err", arg: 1, scope: !365, file: !3, line: 183, type: !80)
!368 = !DILocalVariable(name: "fd", arg: 2, scope: !365, file: !3, line: 183, type: !7)
!369 = !DILocalVariable(name: "buffsize", arg: 3, scope: !365, file: !3, line: 183, type: !7)
!370 = !DILocalVariable(name: "ret", scope: !365, file: !3, line: 185, type: !7)
!371 = !DILocalVariable(name: "tid", scope: !372, file: !3, line: 186, type: !41)
!372 = distinct !DILexicalBlock(scope: !373, file: !3, line: 186, column: 5)
!373 = distinct !DILexicalBlock(scope: !374, file: !3, line: 186, column: 5)
!374 = distinct !DILexicalBlock(scope: !375, file: !3, line: 186, column: 5)
!375 = distinct !DILexicalBlock(scope: !376, file: !3, line: 186, column: 5)
!376 = distinct !DILexicalBlock(scope: !365, file: !3, line: 186, column: 5)
!377 = !DILocalVariable(name: "_ret", scope: !372, file: !3, line: 186, type: !13)
!378 = !DILocalVariable(name: "_arg3", scope: !372, file: !3, line: 186, type: !13)
!379 = !DILocalVariable(name: "_arg4", scope: !372, file: !3, line: 186, type: !13)
!380 = !DILocalVariable(name: "_arg5", scope: !372, file: !3, line: 186, type: !13)
!381 = !DILocation(line: 183, column: 29, scope: !365)
!382 = !DILocation(line: 183, column: 38, scope: !365)
!383 = !DILocation(line: 183, column: 46, scope: !365)
!384 = !DILocation(line: 185, column: 5, scope: !365)
!385 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !386)
!386 = distinct !DILocation(line: 186, column: 5, scope: !375)
!387 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !386)
!388 = !DILocation(line: 186, column: 5, scope: !375)
!389 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !390)
!390 = distinct !DILocation(line: 186, column: 5, scope: !375)
!391 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !390)
!392 = !DILocation(line: 186, column: 5, scope: !376)
!393 = !DILocation(line: 186, column: 5, scope: !394)
!394 = distinct !DILexicalBlock(scope: !375, file: !3, line: 186, column: 5)
!395 = !DILocation(line: 185, column: 9, scope: !365)
!396 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !397)
!397 = distinct !DILocation(line: 49, column: 21, scope: !256, inlinedAt: !398)
!398 = distinct !DILocation(line: 186, column: 5, scope: !372)
!399 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !397)
!400 = !DILocation(line: 49, column: 16, scope: !256, inlinedAt: !398)
!401 = !DILocation(line: 50, column: 19, scope: !256, inlinedAt: !398)
!402 = !DILocation(line: 50, column: 11, scope: !256, inlinedAt: !398)
!403 = !DILocation(line: 50, column: 9, scope: !256, inlinedAt: !398)
!404 = !DILocation(line: 186, column: 5, scope: !372)
!405 = !{i32 -2146288609, i32 -2146288596, i32 -2146288571, i32 -2146288547, i32 -2146288522, i32 -2146288447, i32 -2146288422, i32 -2146288278, i32 -2146288253, i32 -2146284852, i32 -2146284763, i32 -2146284642, i32 -2146284547, i32 -2146284446, i32 -2146284419, i32 -2146284336, i32 -2146284247, i32 -2146284126, i32 -2146284026, i32 -2146283920, i32 -2146283812, i32 -2146287877, i32 -2146287824, i32 -2146287793, i32 -2146287762, i32 -2146287741, i32 -2146287719, i32 -2146287670, i32 -2146287649, i32 -2146287546, i32 -2146287514, i32 -2146283729, i32 -2146283640, i32 -2146283519, i32 -2146283420, i32 -2146283314, i32 -2146283212, i32 -2146283179, i32 -2146283106, i32 -2146283038, i32 -2146287324, i32 -2146287265, i32 -2146287212, i32 -2146287181, i32 -2146287150, i32 -2146287129, i32 -2146287107, i32 -2146287058, i32 -2146287037, i32 -2146282992, i32 -2146282903, i32 -2146282782, i32 -2146282683, i32 -2146282577, i32 -2146282475, i32 -2146282442, i32 -2146282359, i32 -2146282270, i32 -2146282149, i32 -2146282049, i32 -2146282023, i32 -2146281920, i32 -2146281894, i32 -2146286779, i32 -2146286754, i32 -2146286687, i32 -2146286662, i32 -2146286598, i32 -2146286516, i32 -2146286493, i32 -2146286468, i32 -2146286443}
!406 = !DILocation(line: 186, column: 5, scope: !407)
!407 = distinct !DILexicalBlock(scope: !408, file: !3, line: 186, column: 5)
!408 = distinct !DILexicalBlock(scope: !372, file: !3, line: 186, column: 5)
!409 = !{i32 -2146285359, i32 -2146285342}
!410 = !DILocation(line: 188, column: 9, scope: !411)
!411 = distinct !DILexicalBlock(scope: !365, file: !3, line: 188, column: 9)
!412 = !DILocation(line: 188, column: 13, scope: !411)
!413 = !DILocation(line: 188, column: 9, scope: !365)
!414 = !DILocation(line: 190, column: 64, scope: !415)
!415 = distinct !DILexicalBlock(scope: !411, file: !3, line: 189, column: 5)
!416 = !DILocation(line: 190, column: 55, scope: !415)
!417 = !DILocation(line: 190, column: 9, scope: !415)
!418 = !DILocation(line: 191, column: 9, scope: !415)
!419 = !DILocation(line: 0, scope: !365)
!420 = !DILocation(line: 194, column: 1, scope: !365)
!421 = distinct !DISubprogram(name: "anetTcpKeepAlive", scope: !3, file: !3, line: 196, type: !191, isLocal: false, isDefinition: true, scopeLine: 197, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !422)
!422 = !{!423, !424, !425, !426, !427, !433, !434, !435, !436}
!423 = !DILocalVariable(name: "err", arg: 1, scope: !421, file: !3, line: 196, type: !80)
!424 = !DILocalVariable(name: "fd", arg: 2, scope: !421, file: !3, line: 196, type: !7)
!425 = !DILocalVariable(name: "yes", scope: !421, file: !3, line: 198, type: !7)
!426 = !DILocalVariable(name: "ret", scope: !421, file: !3, line: 199, type: !7)
!427 = !DILocalVariable(name: "tid", scope: !428, file: !3, line: 200, type: !41)
!428 = distinct !DILexicalBlock(scope: !429, file: !3, line: 200, column: 5)
!429 = distinct !DILexicalBlock(scope: !430, file: !3, line: 200, column: 5)
!430 = distinct !DILexicalBlock(scope: !431, file: !3, line: 200, column: 5)
!431 = distinct !DILexicalBlock(scope: !432, file: !3, line: 200, column: 5)
!432 = distinct !DILexicalBlock(scope: !421, file: !3, line: 200, column: 5)
!433 = !DILocalVariable(name: "_ret", scope: !428, file: !3, line: 200, type: !13)
!434 = !DILocalVariable(name: "_arg3", scope: !428, file: !3, line: 200, type: !13)
!435 = !DILocalVariable(name: "_arg4", scope: !428, file: !3, line: 200, type: !13)
!436 = !DILocalVariable(name: "_arg5", scope: !428, file: !3, line: 200, type: !13)
!437 = !DILocation(line: 196, column: 28, scope: !421)
!438 = !DILocation(line: 196, column: 37, scope: !421)
!439 = !DILocation(line: 198, column: 5, scope: !421)
!440 = !DILocation(line: 198, column: 9, scope: !421)
!441 = !DILocation(line: 199, column: 5, scope: !421)
!442 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !443)
!443 = distinct !DILocation(line: 200, column: 5, scope: !431)
!444 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !443)
!445 = !DILocation(line: 200, column: 5, scope: !431)
!446 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !447)
!447 = distinct !DILocation(line: 200, column: 5, scope: !431)
!448 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !447)
!449 = !DILocation(line: 200, column: 5, scope: !432)
!450 = !DILocation(line: 200, column: 5, scope: !451)
!451 = distinct !DILexicalBlock(scope: !431, file: !3, line: 200, column: 5)
!452 = !DILocation(line: 199, column: 9, scope: !421)
!453 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !454)
!454 = distinct !DILocation(line: 49, column: 21, scope: !256, inlinedAt: !455)
!455 = distinct !DILocation(line: 200, column: 5, scope: !428)
!456 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !454)
!457 = !DILocation(line: 49, column: 16, scope: !256, inlinedAt: !455)
!458 = !DILocation(line: 50, column: 19, scope: !256, inlinedAt: !455)
!459 = !DILocation(line: 50, column: 11, scope: !256, inlinedAt: !455)
!460 = !DILocation(line: 50, column: 9, scope: !256, inlinedAt: !455)
!461 = !DILocation(line: 200, column: 5, scope: !428)
!462 = !{i32 -2146279330, i32 -2146279317, i32 -2146279292, i32 -2146279268, i32 -2146279243, i32 -2146279168, i32 -2146279143, i32 -2146278999, i32 -2146278974, i32 -2146275583, i32 -2146275494, i32 -2146275373, i32 -2146275278, i32 -2146275177, i32 -2146275150, i32 -2146275067, i32 -2146274978, i32 -2146274857, i32 -2146274757, i32 -2146274651, i32 -2146274543, i32 -2146278598, i32 -2146278545, i32 -2146278514, i32 -2146278483, i32 -2146278462, i32 -2146278440, i32 -2146278391, i32 -2146278370, i32 -2146278267, i32 -2146278235, i32 -2146274460, i32 -2146274371, i32 -2146274250, i32 -2146274151, i32 -2146274045, i32 -2146273943, i32 -2146273910, i32 -2146273837, i32 -2146273769, i32 -2146278045, i32 -2146277986, i32 -2146277933, i32 -2146277902, i32 -2146277871, i32 -2146277850, i32 -2146277828, i32 -2146277779, i32 -2146277758, i32 -2146273723, i32 -2146273634, i32 -2146273513, i32 -2146273414, i32 -2146273308, i32 -2146273206, i32 -2146273173, i32 -2146273090, i32 -2146273001, i32 -2146272880, i32 -2146272780, i32 -2146272754, i32 -2146272651, i32 -2146272625, i32 -2146277500, i32 -2146277475, i32 -2146277408, i32 -2146277383, i32 -2146277319, i32 -2146277237, i32 -2146277214, i32 -2146277189, i32 -2146277164}
!463 = !DILocation(line: 200, column: 5, scope: !464)
!464 = distinct !DILexicalBlock(scope: !465, file: !3, line: 200, column: 5)
!465 = distinct !DILexicalBlock(scope: !428, file: !3, line: 200, column: 5)
!466 = !{i32 -2146276080, i32 -2146276063}
!467 = !DILocation(line: 202, column: 9, scope: !468)
!468 = distinct !DILexicalBlock(scope: !421, file: !3, line: 202, column: 9)
!469 = !DILocation(line: 202, column: 13, scope: !468)
!470 = !DILocation(line: 202, column: 9, scope: !421)
!471 = !DILocation(line: 203, column: 67, scope: !472)
!472 = distinct !DILexicalBlock(scope: !468, file: !3, line: 202, column: 20)
!473 = !DILocation(line: 203, column: 58, scope: !472)
!474 = !DILocation(line: 203, column: 9, scope: !472)
!475 = !DILocation(line: 204, column: 9, scope: !472)
!476 = !DILocation(line: 0, scope: !421)
!477 = !DILocation(line: 207, column: 1, scope: !421)
!478 = distinct !DISubprogram(name: "anetSendTimeout", scope: !3, file: !3, line: 211, type: !479, isLocal: false, isDefinition: true, scopeLine: 211, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !482)
!479 = !DISubroutineType(types: !480)
!480 = !{!7, !80, !7, !481}
!481 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!482 = !{!483, !484, !485, !486, !495, !496, !502, !503, !504, !505}
!483 = !DILocalVariable(name: "err", arg: 1, scope: !478, file: !3, line: 211, type: !80)
!484 = !DILocalVariable(name: "fd", arg: 2, scope: !478, file: !3, line: 211, type: !7)
!485 = !DILocalVariable(name: "ms", arg: 3, scope: !478, file: !3, line: 211, type: !481)
!486 = !DILocalVariable(name: "tv", scope: !478, file: !3, line: 212, type: !487)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !488, line: 44, size: 128, elements: !489)
!488 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!489 = !{!490, !493}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !487, file: !488, line: 45, baseType: !491, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !488, line: 34, baseType: !492)
!492 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !487, file: !488, line: 46, baseType: !494, size: 64, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "suseconds_t", file: !488, line: 39, baseType: !492)
!495 = !DILocalVariable(name: "ret", scope: !478, file: !3, line: 216, type: !7)
!496 = !DILocalVariable(name: "tid", scope: !497, file: !3, line: 217, type: !41)
!497 = distinct !DILexicalBlock(scope: !498, file: !3, line: 217, column: 5)
!498 = distinct !DILexicalBlock(scope: !499, file: !3, line: 217, column: 5)
!499 = distinct !DILexicalBlock(scope: !500, file: !3, line: 217, column: 5)
!500 = distinct !DILexicalBlock(scope: !501, file: !3, line: 217, column: 5)
!501 = distinct !DILexicalBlock(scope: !478, file: !3, line: 217, column: 5)
!502 = !DILocalVariable(name: "_ret", scope: !497, file: !3, line: 217, type: !13)
!503 = !DILocalVariable(name: "_arg3", scope: !497, file: !3, line: 217, type: !13)
!504 = !DILocalVariable(name: "_arg4", scope: !497, file: !3, line: 217, type: !13)
!505 = !DILocalVariable(name: "_arg5", scope: !497, file: !3, line: 217, type: !13)
!506 = !DILocation(line: 211, column: 27, scope: !478)
!507 = !DILocation(line: 211, column: 36, scope: !478)
!508 = !DILocation(line: 211, column: 50, scope: !478)
!509 = !DILocation(line: 212, column: 5, scope: !478)
!510 = !DILocation(line: 214, column: 19, scope: !478)
!511 = !DILocation(line: 214, column: 8, scope: !478)
!512 = !DILocation(line: 214, column: 15, scope: !478)
!513 = !{!514, !515, i64 0}
!514 = !{!"timeval", !515, i64 0, !515, i64 8}
!515 = !{!"long", !135, i64 0}
!516 = !DILocation(line: 215, column: 21, scope: !478)
!517 = !DILocation(line: 215, column: 27, scope: !478)
!518 = !DILocation(line: 215, column: 8, scope: !478)
!519 = !DILocation(line: 215, column: 16, scope: !478)
!520 = !{!514, !515, i64 8}
!521 = !DILocation(line: 216, column: 5, scope: !478)
!522 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !523)
!523 = distinct !DILocation(line: 217, column: 5, scope: !500)
!524 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !523)
!525 = !DILocation(line: 217, column: 5, scope: !500)
!526 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !527)
!527 = distinct !DILocation(line: 217, column: 5, scope: !500)
!528 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !527)
!529 = !DILocation(line: 217, column: 5, scope: !501)
!530 = !DILocation(line: 217, column: 5, scope: !531)
!531 = distinct !DILexicalBlock(scope: !500, file: !3, line: 217, column: 5)
!532 = !DILocation(line: 216, column: 9, scope: !478)
!533 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !534)
!534 = distinct !DILocation(line: 49, column: 21, scope: !256, inlinedAt: !535)
!535 = distinct !DILocation(line: 217, column: 5, scope: !497)
!536 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !534)
!537 = !DILocation(line: 49, column: 16, scope: !256, inlinedAt: !535)
!538 = !DILocation(line: 50, column: 19, scope: !256, inlinedAt: !535)
!539 = !DILocation(line: 50, column: 11, scope: !256, inlinedAt: !535)
!540 = !DILocation(line: 50, column: 9, scope: !256, inlinedAt: !535)
!541 = !DILocation(line: 217, column: 5, scope: !497)
!542 = !{i32 -2146269995, i32 -2146269982, i32 -2146269957, i32 -2146269933, i32 -2146269908, i32 -2146269833, i32 -2146269808, i32 -2146269664, i32 -2146269639, i32 -2146266250, i32 -2146266161, i32 -2146266040, i32 -2146265945, i32 -2146265844, i32 -2146265817, i32 -2146265734, i32 -2146265645, i32 -2146265524, i32 -2146265424, i32 -2146265318, i32 -2146265210, i32 -2146269263, i32 -2146269210, i32 -2146269179, i32 -2146269148, i32 -2146269127, i32 -2146269105, i32 -2146269056, i32 -2146269035, i32 -2146268932, i32 -2146268900, i32 -2146265127, i32 -2146265038, i32 -2146264917, i32 -2146264818, i32 -2146264712, i32 -2146264610, i32 -2146264577, i32 -2146264504, i32 -2146264436, i32 -2146268710, i32 -2146268651, i32 -2146268598, i32 -2146268567, i32 -2146268536, i32 -2146268515, i32 -2146268493, i32 -2146268444, i32 -2146268423, i32 -2146264390, i32 -2146264301, i32 -2146264180, i32 -2146264081, i32 -2146263975, i32 -2146263873, i32 -2146263840, i32 -2146263757, i32 -2146263668, i32 -2146263547, i32 -2146263447, i32 -2146263421, i32 -2146263318, i32 -2146263292, i32 -2146268165, i32 -2146268140, i32 -2146268073, i32 -2146268048, i32 -2146267984, i32 -2146267902, i32 -2146267879, i32 -2146267854, i32 -2146267829}
!543 = !DILocation(line: 217, column: 5, scope: !544)
!544 = distinct !DILexicalBlock(scope: !545, file: !3, line: 217, column: 5)
!545 = distinct !DILexicalBlock(scope: !497, file: !3, line: 217, column: 5)
!546 = !{i32 -2146266745, i32 -2146266728}
!547 = !DILocation(line: 219, column: 9, scope: !548)
!548 = distinct !DILexicalBlock(scope: !478, file: !3, line: 219, column: 9)
!549 = !DILocation(line: 219, column: 13, scope: !548)
!550 = !DILocation(line: 219, column: 9, scope: !478)
!551 = !DILocation(line: 220, column: 66, scope: !552)
!552 = distinct !DILexicalBlock(scope: !548, file: !3, line: 219, column: 20)
!553 = !DILocation(line: 220, column: 57, scope: !552)
!554 = !DILocation(line: 220, column: 9, scope: !552)
!555 = !DILocation(line: 221, column: 9, scope: !552)
!556 = !DILocation(line: 0, scope: !478)
!557 = !DILocation(line: 224, column: 1, scope: !478)
!558 = distinct !DISubprogram(name: "anetGenericResolve", scope: !3, file: !3, line: 233, type: !559, isLocal: false, isDefinition: true, scopeLine: 235, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !565)
!559 = !DISubroutineType(types: !560)
!560 = !{!7, !80, !80, !80, !561, !7}
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !562, line: 40, baseType: !563)
!562 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !564, line: 129, baseType: !12)
!564 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!565 = !{!566, !567, !568, !569, !570, !571, !572, !573, !574, !580, !581, !582, !583, !586}
!566 = !DILocalVariable(name: "err", arg: 1, scope: !558, file: !3, line: 233, type: !80)
!567 = !DILocalVariable(name: "host", arg: 2, scope: !558, file: !3, line: 233, type: !80)
!568 = !DILocalVariable(name: "ipbuf", arg: 3, scope: !558, file: !3, line: 233, type: !80)
!569 = !DILocalVariable(name: "ipbuf_len", arg: 4, scope: !558, file: !3, line: 233, type: !561)
!570 = !DILocalVariable(name: "flags", arg: 5, scope: !558, file: !3, line: 234, type: !7)
!571 = !DILocalVariable(name: "hints", scope: !558, file: !3, line: 236, type: !82)
!572 = !DILocalVariable(name: "info", scope: !558, file: !3, line: 236, type: !81)
!573 = !DILocalVariable(name: "rv", scope: !558, file: !3, line: 237, type: !7)
!574 = !DILocalVariable(name: "tid", scope: !575, file: !3, line: 244, type: !41)
!575 = distinct !DILexicalBlock(scope: !576, file: !3, line: 244, column: 5)
!576 = distinct !DILexicalBlock(scope: !577, file: !3, line: 244, column: 5)
!577 = distinct !DILexicalBlock(scope: !578, file: !3, line: 244, column: 5)
!578 = distinct !DILexicalBlock(scope: !579, file: !3, line: 244, column: 5)
!579 = distinct !DILexicalBlock(scope: !558, file: !3, line: 244, column: 5)
!580 = !DILocalVariable(name: "_ret", scope: !575, file: !3, line: 244, type: !13)
!581 = !DILocalVariable(name: "_arg3", scope: !575, file: !3, line: 244, type: !13)
!582 = !DILocalVariable(name: "_arg4", scope: !575, file: !3, line: 244, type: !13)
!583 = !DILocalVariable(name: "sa", scope: !584, file: !3, line: 250, type: !16)
!584 = distinct !DILexicalBlock(scope: !585, file: !3, line: 249, column: 37)
!585 = distinct !DILexicalBlock(scope: !558, file: !3, line: 249, column: 9)
!586 = !DILocalVariable(name: "sa", scope: !587, file: !3, line: 253, type: !49)
!587 = distinct !DILexicalBlock(scope: !585, file: !3, line: 252, column: 12)
!588 = !DILocation(line: 233, column: 30, scope: !558)
!589 = !DILocation(line: 233, column: 41, scope: !558)
!590 = !DILocation(line: 233, column: 53, scope: !558)
!591 = !DILocation(line: 233, column: 67, scope: !558)
!592 = !DILocation(line: 234, column: 28, scope: !558)
!593 = !DILocation(line: 236, column: 5, scope: !558)
!594 = !DILocation(line: 237, column: 5, scope: !558)
!595 = !DILocation(line: 239, column: 5, scope: !558)
!596 = !DILocation(line: 240, column: 15, scope: !597)
!597 = distinct !DILexicalBlock(scope: !558, file: !3, line: 240, column: 9)
!598 = !DILocation(line: 240, column: 9, scope: !558)
!599 = !DILocation(line: 240, column: 37, scope: !597)
!600 = !DILocation(line: 240, column: 46, scope: !597)
!601 = !{!602, !134, i64 0}
!602 = !{!"addrinfo", !134, i64 0, !134, i64 4, !134, i64 8, !134, i64 12, !134, i64 16, !603, i64 24, !603, i64 32, !603, i64 40}
!603 = !{!"any pointer", !135, i64 0}
!604 = !DILocation(line: 240, column: 31, scope: !597)
!605 = !DILocation(line: 241, column: 11, scope: !558)
!606 = !DILocation(line: 241, column: 21, scope: !558)
!607 = !{!602, !134, i64 4}
!608 = !DILocation(line: 242, column: 11, scope: !558)
!609 = !DILocation(line: 242, column: 23, scope: !558)
!610 = !{!602, !134, i64 8}
!611 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !612)
!612 = distinct !DILocation(line: 244, column: 5, scope: !578)
!613 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !612)
!614 = !DILocation(line: 244, column: 5, scope: !578)
!615 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !616)
!616 = distinct !DILocation(line: 244, column: 5, scope: !578)
!617 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !616)
!618 = !DILocation(line: 244, column: 5, scope: !579)
!619 = !DILocation(line: 236, column: 21, scope: !558)
!620 = !DILocation(line: 236, column: 29, scope: !558)
!621 = !DILocation(line: 244, column: 5, scope: !622)
!622 = distinct !DILexicalBlock(scope: !578, file: !3, line: 244, column: 5)
!623 = !DILocation(line: 237, column: 9, scope: !558)
!624 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !625)
!625 = distinct !DILocation(line: 49, column: 21, scope: !256, inlinedAt: !626)
!626 = distinct !DILocation(line: 244, column: 5, scope: !575)
!627 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !625)
!628 = !DILocation(line: 49, column: 16, scope: !256, inlinedAt: !626)
!629 = !DILocation(line: 50, column: 19, scope: !256, inlinedAt: !626)
!630 = !DILocation(line: 50, column: 11, scope: !256, inlinedAt: !626)
!631 = !DILocation(line: 50, column: 9, scope: !256, inlinedAt: !626)
!632 = !DILocation(line: 244, column: 5, scope: !575)
!633 = !{i32 -2146260932, i32 -2146260919, i32 -2146260894, i32 -2146260870, i32 -2146260845, i32 -2146260770, i32 -2146260745, i32 -2146260601, i32 -2146260576, i32 -2146257257, i32 -2146257168, i32 -2146257047, i32 -2146256952, i32 -2146256851, i32 -2146256824, i32 -2146256741, i32 -2146256652, i32 -2146256531, i32 -2146256431, i32 -2146256325, i32 -2146256217, i32 -2146260239, i32 -2146260186, i32 -2146260155, i32 -2146260124, i32 -2146260103, i32 -2146260081, i32 -2146260032, i32 -2146260011, i32 -2146259908, i32 -2146259876, i32 -2146256134, i32 -2146256045, i32 -2146255924, i32 -2146255825, i32 -2146255719, i32 -2146255617, i32 -2146255584, i32 -2146255511, i32 -2146255443, i32 -2146259686, i32 -2146259627, i32 -2146259574, i32 -2146259543, i32 -2146259512, i32 -2146259491, i32 -2146259469, i32 -2146259420, i32 -2146259399, i32 -2146255396, i32 -2146255307, i32 -2146255186, i32 -2146255087, i32 -2146254981, i32 -2146254879, i32 -2146254846, i32 -2146254763, i32 -2146254674, i32 -2146254553, i32 -2146254453, i32 -2146254427, i32 -2146254324, i32 -2146254298, i32 -2146259141, i32 -2146259116, i32 -2146259049, i32 -2146259024, i32 -2146258960, i32 -2146258878, i32 -2146258855, i32 -2146258830, i32 -2146258805}
!634 = !DILocation(line: 244, column: 5, scope: !635)
!635 = distinct !DILexicalBlock(scope: !636, file: !3, line: 244, column: 5)
!636 = distinct !DILexicalBlock(scope: !575, file: !3, line: 244, column: 5)
!637 = !{i32 -2146257744, i32 -2146257727}
!638 = !DILocation(line: 245, column: 9, scope: !639)
!639 = distinct !DILexicalBlock(scope: !558, file: !3, line: 245, column: 9)
!640 = !DILocation(line: 245, column: 12, scope: !639)
!641 = !DILocation(line: 245, column: 9, scope: !558)
!642 = !DILocation(line: 246, column: 33, scope: !643)
!643 = distinct !DILexicalBlock(scope: !639, file: !3, line: 245, column: 18)
!644 = !DILocation(line: 246, column: 9, scope: !643)
!645 = !DILocation(line: 247, column: 9, scope: !643)
!646 = !DILocation(line: 249, column: 9, scope: !585)
!647 = !{!603, !603, i64 0}
!648 = !DILocation(line: 249, column: 15, scope: !585)
!649 = !DILocation(line: 249, column: 25, scope: !585)
!650 = !DILocation(line: 0, scope: !587)
!651 = !DILocation(line: 249, column: 9, scope: !558)
!652 = !DILocation(line: 250, column: 62, scope: !584)
!653 = !{!602, !603, i64 24}
!654 = !DILocation(line: 250, column: 29, scope: !584)
!655 = !DILocation(line: 251, column: 34, scope: !584)
!656 = !DILocation(line: 251, column: 28, scope: !584)
!657 = !DILocation(line: 251, column: 52, scope: !584)
!658 = !DILocation(line: 251, column: 9, scope: !584)
!659 = !DILocation(line: 252, column: 5, scope: !584)
!660 = !DILocation(line: 253, column: 64, scope: !587)
!661 = !DILocation(line: 253, column: 30, scope: !587)
!662 = !DILocation(line: 254, column: 35, scope: !587)
!663 = !DILocation(line: 254, column: 29, scope: !587)
!664 = !DILocation(line: 254, column: 54, scope: !587)
!665 = !DILocation(line: 254, column: 9, scope: !587)
!666 = !DILocation(line: 257, column: 18, scope: !558)
!667 = !DILocation(line: 257, column: 5, scope: !558)
!668 = !DILocation(line: 258, column: 5, scope: !558)
!669 = !DILocation(line: 0, scope: !558)
!670 = !DILocation(line: 259, column: 1, scope: !558)
!671 = distinct !DISubprogram(name: "anetResolve", scope: !3, file: !3, line: 261, type: !672, isLocal: false, isDefinition: true, scopeLine: 261, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !674)
!672 = !DISubroutineType(types: !673)
!673 = !{!7, !80, !80, !80, !561}
!674 = !{!675, !676, !677, !678}
!675 = !DILocalVariable(name: "err", arg: 1, scope: !671, file: !3, line: 261, type: !80)
!676 = !DILocalVariable(name: "host", arg: 2, scope: !671, file: !3, line: 261, type: !80)
!677 = !DILocalVariable(name: "ipbuf", arg: 3, scope: !671, file: !3, line: 261, type: !80)
!678 = !DILocalVariable(name: "ipbuf_len", arg: 4, scope: !671, file: !3, line: 261, type: !561)
!679 = !DILocation(line: 261, column: 23, scope: !671)
!680 = !DILocation(line: 261, column: 34, scope: !671)
!681 = !DILocation(line: 261, column: 46, scope: !671)
!682 = !DILocation(line: 261, column: 60, scope: !671)
!683 = !DILocation(line: 262, column: 12, scope: !671)
!684 = !DILocation(line: 262, column: 5, scope: !671)
!685 = distinct !DISubprogram(name: "anetResolveIP", scope: !3, file: !3, line: 265, type: !672, isLocal: false, isDefinition: true, scopeLine: 265, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !686)
!686 = !{!687, !688, !689, !690}
!687 = !DILocalVariable(name: "err", arg: 1, scope: !685, file: !3, line: 265, type: !80)
!688 = !DILocalVariable(name: "host", arg: 2, scope: !685, file: !3, line: 265, type: !80)
!689 = !DILocalVariable(name: "ipbuf", arg: 3, scope: !685, file: !3, line: 265, type: !80)
!690 = !DILocalVariable(name: "ipbuf_len", arg: 4, scope: !685, file: !3, line: 265, type: !561)
!691 = !DILocation(line: 265, column: 25, scope: !685)
!692 = !DILocation(line: 265, column: 36, scope: !685)
!693 = !DILocation(line: 265, column: 48, scope: !685)
!694 = !DILocation(line: 265, column: 62, scope: !685)
!695 = !DILocation(line: 266, column: 12, scope: !685)
!696 = !DILocation(line: 266, column: 5, scope: !685)
!697 = distinct !DISubprogram(name: "anetTcpConnect", scope: !3, file: !3, line: 391, type: !698, isLocal: false, isDefinition: true, scopeLine: 392, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !700)
!698 = !DISubroutineType(types: !699)
!699 = !{!7, !80, !80, !7}
!700 = !{!701, !702, !703}
!701 = !DILocalVariable(name: "err", arg: 1, scope: !697, file: !3, line: 391, type: !80)
!702 = !DILocalVariable(name: "addr", arg: 2, scope: !697, file: !3, line: 391, type: !80)
!703 = !DILocalVariable(name: "port", arg: 3, scope: !697, file: !3, line: 391, type: !7)
!704 = !DILocation(line: 391, column: 26, scope: !697)
!705 = !DILocation(line: 391, column: 37, scope: !697)
!706 = !DILocation(line: 391, column: 47, scope: !697)
!707 = !DILocation(line: 393, column: 12, scope: !697)
!708 = !DILocation(line: 393, column: 5, scope: !697)
!709 = distinct !DISubprogram(name: "anetTcpGenericConnect", scope: !3, file: !3, line: 305, type: !710, isLocal: true, isDefinition: true, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !712)
!710 = !DISubroutineType(types: !711)
!711 = !{!7, !80, !80, !7, !80, !7}
!712 = !{!713, !714, !715, !716, !717, !718, !719, !720, !724, !725, !726, !727, !728, !729, !735, !736, !737, !738, !747, !748, !749, !752, !758, !759, !760}
!713 = !DILocalVariable(name: "err", arg: 1, scope: !709, file: !3, line: 305, type: !80)
!714 = !DILocalVariable(name: "addr", arg: 2, scope: !709, file: !3, line: 305, type: !80)
!715 = !DILocalVariable(name: "port", arg: 3, scope: !709, file: !3, line: 305, type: !7)
!716 = !DILocalVariable(name: "source_addr", arg: 4, scope: !709, file: !3, line: 306, type: !80)
!717 = !DILocalVariable(name: "flags", arg: 5, scope: !709, file: !3, line: 306, type: !7)
!718 = !DILocalVariable(name: "s", scope: !709, file: !3, line: 308, type: !7)
!719 = !DILocalVariable(name: "rv", scope: !709, file: !3, line: 308, type: !7)
!720 = !DILocalVariable(name: "portstr", scope: !709, file: !3, line: 309, type: !721)
!721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 48, elements: !722)
!722 = !{!723}
!723 = !DISubrange(count: 6)
!724 = !DILocalVariable(name: "hints", scope: !709, file: !3, line: 310, type: !82)
!725 = !DILocalVariable(name: "servinfo", scope: !709, file: !3, line: 310, type: !81)
!726 = !DILocalVariable(name: "bservinfo", scope: !709, file: !3, line: 310, type: !81)
!727 = !DILocalVariable(name: "p", scope: !709, file: !3, line: 310, type: !81)
!728 = !DILocalVariable(name: "b", scope: !709, file: !3, line: 310, type: !81)
!729 = !DILocalVariable(name: "tid", scope: !730, file: !3, line: 317, type: !41)
!730 = distinct !DILexicalBlock(scope: !731, file: !3, line: 317, column: 5)
!731 = distinct !DILexicalBlock(scope: !732, file: !3, line: 317, column: 5)
!732 = distinct !DILexicalBlock(scope: !733, file: !3, line: 317, column: 5)
!733 = distinct !DILexicalBlock(scope: !734, file: !3, line: 317, column: 5)
!734 = distinct !DILexicalBlock(scope: !709, file: !3, line: 317, column: 5)
!735 = !DILocalVariable(name: "_ret", scope: !730, file: !3, line: 317, type: !13)
!736 = !DILocalVariable(name: "_arg3", scope: !730, file: !3, line: 317, type: !13)
!737 = !DILocalVariable(name: "_arg4", scope: !730, file: !3, line: 317, type: !13)
!738 = !DILocalVariable(name: "tid", scope: !739, file: !3, line: 327, type: !41)
!739 = distinct !DILexicalBlock(scope: !740, file: !3, line: 327, column: 9)
!740 = distinct !DILexicalBlock(scope: !741, file: !3, line: 327, column: 9)
!741 = distinct !DILexicalBlock(scope: !742, file: !3, line: 327, column: 9)
!742 = distinct !DILexicalBlock(scope: !743, file: !3, line: 327, column: 9)
!743 = distinct !DILexicalBlock(scope: !744, file: !3, line: 327, column: 9)
!744 = distinct !DILexicalBlock(scope: !745, file: !3, line: 323, column: 51)
!745 = distinct !DILexicalBlock(scope: !746, file: !3, line: 323, column: 5)
!746 = distinct !DILexicalBlock(scope: !709, file: !3, line: 323, column: 5)
!747 = !DILocalVariable(name: "_ret", scope: !739, file: !3, line: 327, type: !13)
!748 = !DILocalVariable(name: "_arg3", scope: !739, file: !3, line: 327, type: !13)
!749 = !DILocalVariable(name: "bound", scope: !750, file: !3, line: 335, type: !7)
!750 = distinct !DILexicalBlock(scope: !751, file: !3, line: 334, column: 26)
!751 = distinct !DILexicalBlock(scope: !744, file: !3, line: 334, column: 13)
!752 = !DILocalVariable(name: "tid", scope: !753, file: !3, line: 337, type: !41)
!753 = distinct !DILexicalBlock(scope: !754, file: !3, line: 337, column: 13)
!754 = distinct !DILexicalBlock(scope: !755, file: !3, line: 337, column: 13)
!755 = distinct !DILexicalBlock(scope: !756, file: !3, line: 337, column: 13)
!756 = distinct !DILexicalBlock(scope: !757, file: !3, line: 337, column: 13)
!757 = distinct !DILexicalBlock(scope: !750, file: !3, line: 337, column: 13)
!758 = !DILocalVariable(name: "_ret", scope: !753, file: !3, line: 337, type: !13)
!759 = !DILocalVariable(name: "_arg3", scope: !753, file: !3, line: 337, type: !13)
!760 = !DILocalVariable(name: "_arg4", scope: !753, file: !3, line: 337, type: !13)
!761 = !DILocation(line: 305, column: 40, scope: !709)
!762 = !DILocation(line: 305, column: 51, scope: !709)
!763 = !DILocation(line: 305, column: 61, scope: !709)
!764 = !DILocation(line: 306, column: 40, scope: !709)
!765 = !DILocation(line: 306, column: 57, scope: !709)
!766 = !DILocation(line: 308, column: 5, scope: !709)
!767 = !DILocation(line: 308, column: 9, scope: !709)
!768 = !DILocation(line: 309, column: 5, scope: !709)
!769 = !DILocation(line: 309, column: 10, scope: !709)
!770 = !DILocation(line: 310, column: 5, scope: !709)
!771 = !DILocation(line: 312, column: 5, scope: !709)
!772 = !DILocation(line: 313, column: 5, scope: !709)
!773 = !DILocation(line: 314, column: 11, scope: !709)
!774 = !DILocation(line: 314, column: 21, scope: !709)
!775 = !DILocation(line: 315, column: 11, scope: !709)
!776 = !DILocation(line: 315, column: 23, scope: !709)
!777 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !778)
!778 = distinct !DILocation(line: 317, column: 5, scope: !733)
!779 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !778)
!780 = !DILocation(line: 317, column: 5, scope: !733)
!781 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !782)
!782 = distinct !DILocation(line: 317, column: 5, scope: !733)
!783 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !782)
!784 = !DILocation(line: 317, column: 5, scope: !734)
!785 = !DILocation(line: 310, column: 21, scope: !709)
!786 = !DILocation(line: 310, column: 29, scope: !709)
!787 = !DILocation(line: 317, column: 5, scope: !788)
!788 = distinct !DILexicalBlock(scope: !733, file: !3, line: 317, column: 5)
!789 = !DILocation(line: 308, column: 23, scope: !709)
!790 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !791)
!791 = distinct !DILocation(line: 49, column: 21, scope: !256, inlinedAt: !792)
!792 = distinct !DILocation(line: 317, column: 5, scope: !730)
!793 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !791)
!794 = !DILocation(line: 49, column: 16, scope: !256, inlinedAt: !792)
!795 = !DILocation(line: 50, column: 19, scope: !256, inlinedAt: !792)
!796 = !DILocation(line: 50, column: 11, scope: !256, inlinedAt: !792)
!797 = !DILocation(line: 50, column: 9, scope: !256, inlinedAt: !792)
!798 = !DILocation(line: 317, column: 5, scope: !730)
!799 = !{i32 -2146233629, i32 -2146233616, i32 -2146233591, i32 -2146233567, i32 -2146233542, i32 -2146233467, i32 -2146233442, i32 -2146233298, i32 -2146233273, i32 -2146229966, i32 -2146229877, i32 -2146229756, i32 -2146229661, i32 -2146229560, i32 -2146229533, i32 -2146229450, i32 -2146229361, i32 -2146229240, i32 -2146229140, i32 -2146229034, i32 -2146228926, i32 -2146232936, i32 -2146232883, i32 -2146232852, i32 -2146232821, i32 -2146232800, i32 -2146232778, i32 -2146232729, i32 -2146232708, i32 -2146232605, i32 -2146232573, i32 -2146228843, i32 -2146228754, i32 -2146228633, i32 -2146228534, i32 -2146228428, i32 -2146228326, i32 -2146228293, i32 -2146228220, i32 -2146228152, i32 -2146232383, i32 -2146232324, i32 -2146232271, i32 -2146232240, i32 -2146232209, i32 -2146232188, i32 -2146232166, i32 -2146232117, i32 -2146232096, i32 -2146228105, i32 -2146228016, i32 -2146227895, i32 -2146227796, i32 -2146227690, i32 -2146227588, i32 -2146227555, i32 -2146227472, i32 -2146227383, i32 -2146227262, i32 -2146227162, i32 -2146227136, i32 -2146227033, i32 -2146227007, i32 -2146231838, i32 -2146231813, i32 -2146231746, i32 -2146231721, i32 -2146231657, i32 -2146231575, i32 -2146231552, i32 -2146231527, i32 -2146231502}
!800 = !DILocation(line: 317, column: 5, scope: !801)
!801 = distinct !DILexicalBlock(scope: !802, file: !3, line: 317, column: 5)
!802 = distinct !DILexicalBlock(scope: !730, file: !3, line: 317, column: 5)
!803 = !{i32 -2146230441, i32 -2146230424}
!804 = !DILocation(line: 319, column: 9, scope: !805)
!805 = distinct !DILexicalBlock(scope: !709, file: !3, line: 319, column: 9)
!806 = !DILocation(line: 319, column: 12, scope: !805)
!807 = !DILocation(line: 319, column: 9, scope: !709)
!808 = !DILocation(line: 0, scope: !745)
!809 = !DILocation(line: 310, column: 52, scope: !709)
!810 = !DILocation(line: 323, column: 26, scope: !745)
!811 = !DILocation(line: 323, column: 5, scope: !746)
!812 = !DILocation(line: 320, column: 33, scope: !813)
!813 = distinct !DILexicalBlock(scope: !805, file: !3, line: 319, column: 18)
!814 = !DILocation(line: 320, column: 9, scope: !813)
!815 = !DILocation(line: 321, column: 9, scope: !813)
!816 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !817)
!817 = distinct !DILocation(line: 327, column: 9, scope: !742)
!818 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !817)
!819 = !DILocation(line: 327, column: 9, scope: !742)
!820 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !821)
!821 = distinct !DILocation(line: 327, column: 9, scope: !742)
!822 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !821)
!823 = !DILocation(line: 327, column: 9, scope: !743)
!824 = !DILocation(line: 327, column: 9, scope: !825)
!825 = distinct !DILexicalBlock(scope: !742, file: !3, line: 327, column: 9)
!826 = !{!602, !134, i64 12}
!827 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !828)
!828 = distinct !DILocation(line: 49, column: 21, scope: !256, inlinedAt: !829)
!829 = distinct !DILocation(line: 327, column: 9, scope: !739)
!830 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !828)
!831 = !DILocation(line: 49, column: 16, scope: !256, inlinedAt: !829)
!832 = !DILocation(line: 50, column: 19, scope: !256, inlinedAt: !829)
!833 = !DILocation(line: 50, column: 11, scope: !256, inlinedAt: !829)
!834 = !DILocation(line: 50, column: 9, scope: !256, inlinedAt: !829)
!835 = !DILocation(line: 327, column: 9, scope: !739)
!836 = !{i32 -2146224492, i32 -2146224479, i32 -2146224454, i32 -2146224430, i32 -2146224405, i32 -2146224330, i32 -2146224305, i32 -2146224161, i32 -2146220946, i32 -2146220857, i32 -2146220736, i32 -2146220641, i32 -2146220540, i32 -2146220513, i32 -2146220430, i32 -2146220341, i32 -2146220220, i32 -2146220120, i32 -2146220014, i32 -2146219906, i32 -2146223831, i32 -2146223778, i32 -2146223747, i32 -2146223716, i32 -2146223695, i32 -2146223673, i32 -2146223624, i32 -2146223603, i32 -2146223500, i32 -2146219823, i32 -2146219734, i32 -2146219613, i32 -2146219514, i32 -2146219408, i32 -2146219306, i32 -2146219273, i32 -2146219200, i32 -2146219132, i32 -2146223310, i32 -2146223251, i32 -2146223198, i32 -2146223167, i32 -2146223136, i32 -2146223115, i32 -2146223093, i32 -2146223044, i32 -2146223023, i32 -2146219090, i32 -2146219001, i32 -2146218880, i32 -2146218781, i32 -2146218675, i32 -2146218573, i32 -2146218540, i32 -2146218457, i32 -2146218368, i32 -2146218247, i32 -2146218147, i32 -2146218121, i32 -2146218018, i32 -2146217992, i32 -2146222765, i32 -2146222698, i32 -2146222673, i32 -2146222609, i32 -2146222527, i32 -2146222504, i32 -2146222479, i32 -2146222454}
!837 = !DILocation(line: 327, column: 9, scope: !838)
!838 = distinct !DILexicalBlock(scope: !839, file: !3, line: 327, column: 9)
!839 = distinct !DILexicalBlock(scope: !739, file: !3, line: 327, column: 9)
!840 = !{i32 -2146221416, i32 -2146221399}
!841 = !DILocation(line: 329, column: 13, scope: !842)
!842 = distinct !DILexicalBlock(scope: !744, file: !3, line: 329, column: 13)
!843 = !DILocation(line: 329, column: 15, scope: !842)
!844 = !DILocation(line: 329, column: 13, scope: !744)
!845 = !DILocation(line: 331, column: 13, scope: !846)
!846 = distinct !DILexicalBlock(scope: !744, file: !3, line: 331, column: 13)
!847 = !DILocation(line: 331, column: 37, scope: !846)
!848 = !DILocation(line: 331, column: 13, scope: !744)
!849 = !DILocation(line: 332, column: 43, scope: !850)
!850 = distinct !DILexicalBlock(scope: !744, file: !3, line: 332, column: 13)
!851 = !DILocation(line: 332, column: 63, scope: !850)
!852 = !DILocation(line: 85, column: 24, scope: !190, inlinedAt: !853)
!853 = distinct !DILocation(line: 332, column: 46, scope: !850)
!854 = !DILocation(line: 85, column: 33, scope: !190, inlinedAt: !853)
!855 = !DILocation(line: 86, column: 12, scope: !190, inlinedAt: !853)
!856 = !DILocation(line: 332, column: 66, scope: !850)
!857 = !DILocation(line: 332, column: 13, scope: !744)
!858 = !DILocation(line: 334, column: 13, scope: !744)
!859 = !DILocation(line: 335, column: 17, scope: !750)
!860 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !861)
!861 = distinct !DILocation(line: 337, column: 13, scope: !756)
!862 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !861)
!863 = !DILocation(line: 337, column: 13, scope: !756)
!864 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !865)
!865 = distinct !DILocation(line: 337, column: 13, scope: !756)
!866 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !865)
!867 = !DILocation(line: 337, column: 13, scope: !757)
!868 = !DILocation(line: 310, column: 40, scope: !709)
!869 = !DILocation(line: 337, column: 13, scope: !870)
!870 = distinct !DILexicalBlock(scope: !756, file: !3, line: 337, column: 13)
!871 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !872)
!872 = distinct !DILocation(line: 49, column: 21, scope: !256, inlinedAt: !873)
!873 = distinct !DILocation(line: 337, column: 13, scope: !753)
!874 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !872)
!875 = !DILocation(line: 49, column: 16, scope: !256, inlinedAt: !873)
!876 = !DILocation(line: 50, column: 19, scope: !256, inlinedAt: !873)
!877 = !DILocation(line: 50, column: 11, scope: !256, inlinedAt: !873)
!878 = !DILocation(line: 50, column: 9, scope: !256, inlinedAt: !873)
!879 = !DILocation(line: 337, column: 13, scope: !753)
!880 = !{i32 -2146215377, i32 -2146215364, i32 -2146215339, i32 -2146215315, i32 -2146215290, i32 -2146215215, i32 -2146215190, i32 -2146215046, i32 -2146215021, i32 -2146211690, i32 -2146211601, i32 -2146211480, i32 -2146211385, i32 -2146211284, i32 -2146211257, i32 -2146211174, i32 -2146211085, i32 -2146210964, i32 -2146210864, i32 -2146210758, i32 -2146210650, i32 -2146214684, i32 -2146214631, i32 -2146214600, i32 -2146214569, i32 -2146214548, i32 -2146214526, i32 -2146214477, i32 -2146214456, i32 -2146214353, i32 -2146214321, i32 -2146210567, i32 -2146210478, i32 -2146210357, i32 -2146210258, i32 -2146210152, i32 -2146210050, i32 -2146210017, i32 -2146209944, i32 -2146209876, i32 -2146214131, i32 -2146214072, i32 -2146214019, i32 -2146213988, i32 -2146213957, i32 -2146213936, i32 -2146213914, i32 -2146213865, i32 -2146213844, i32 -2146209829, i32 -2146209740, i32 -2146209619, i32 -2146209520, i32 -2146209414, i32 -2146209312, i32 -2146209279, i32 -2146209196, i32 -2146209107, i32 -2146208986, i32 -2146208886, i32 -2146208860, i32 -2146208757, i32 -2146208731, i32 -2146213586, i32 -2146213561, i32 -2146213494, i32 -2146213469, i32 -2146213405, i32 -2146213323, i32 -2146213300, i32 -2146213275, i32 -2146213250}
!881 = !DILocation(line: 337, column: 13, scope: !882)
!882 = distinct !DILexicalBlock(scope: !883, file: !3, line: 337, column: 13)
!883 = distinct !DILexicalBlock(scope: !753, file: !3, line: 337, column: 13)
!884 = !{i32 -2146212189, i32 -2146212172}
!885 = !DILocation(line: 339, column: 17, scope: !886)
!886 = distinct !DILexicalBlock(scope: !750, file: !3, line: 339, column: 17)
!887 = !DILocation(line: 339, column: 20, scope: !886)
!888 = !DILocation(line: 339, column: 17, scope: !750)
!889 = !DILocation(line: 0, scope: !890)
!890 = distinct !DILexicalBlock(scope: !891, file: !3, line: 344, column: 13)
!891 = distinct !DILexicalBlock(scope: !750, file: !3, line: 344, column: 13)
!892 = !DILocation(line: 310, column: 56, scope: !709)
!893 = !DILocation(line: 344, column: 35, scope: !890)
!894 = !DILocation(line: 344, column: 13, scope: !891)
!895 = !DILocation(line: 341, column: 41, scope: !896)
!896 = distinct !DILexicalBlock(scope: !886, file: !3, line: 340, column: 13)
!897 = !DILocation(line: 341, column: 17, scope: !896)
!898 = !DILocation(line: 342, column: 17, scope: !896)
!899 = !DILocation(line: 344, column: 51, scope: !890)
!900 = distinct !{!900, !894, !901}
!901 = !DILocation(line: 349, column: 13, scope: !891)
!902 = !DILocation(line: 345, column: 26, scope: !903)
!903 = distinct !DILexicalBlock(scope: !904, file: !3, line: 345, column: 21)
!904 = distinct !DILexicalBlock(scope: !890, file: !3, line: 344, column: 60)
!905 = !DILocation(line: 345, column: 31, scope: !903)
!906 = !DILocation(line: 345, column: 42, scope: !903)
!907 = !{!602, !134, i64 16}
!908 = !DILocation(line: 345, column: 21, scope: !903)
!909 = !DILocation(line: 345, column: 54, scope: !903)
!910 = !DILocation(line: 345, column: 21, scope: !904)
!911 = !DILocation(line: 350, column: 26, scope: !750)
!912 = !DILocation(line: 350, column: 13, scope: !750)
!913 = !DILocation(line: 352, column: 56, scope: !914)
!914 = distinct !DILexicalBlock(scope: !915, file: !3, line: 351, column: 25)
!915 = distinct !DILexicalBlock(scope: !750, file: !3, line: 351, column: 17)
!916 = !DILocation(line: 352, column: 47, scope: !914)
!917 = !DILocation(line: 352, column: 17, scope: !914)
!918 = !DILocation(line: 353, column: 17, scope: !914)
!919 = !DILocation(line: 356, column: 21, scope: !920)
!920 = distinct !DILexicalBlock(scope: !744, file: !3, line: 356, column: 13)
!921 = !DILocation(line: 356, column: 26, scope: !920)
!922 = !DILocation(line: 356, column: 37, scope: !920)
!923 = !DILocation(line: 356, column: 13, scope: !920)
!924 = !DILocation(line: 356, column: 49, scope: !920)
!925 = !DILocation(line: 356, column: 13, scope: !744)
!926 = !DILocation(line: 359, column: 17, scope: !927)
!927 = distinct !DILexicalBlock(scope: !928, file: !3, line: 359, column: 17)
!928 = distinct !DILexicalBlock(scope: !920, file: !3, line: 356, column: 56)
!929 = !DILocation(line: 359, column: 23, scope: !927)
!930 = !DILocation(line: 359, column: 38, scope: !927)
!931 = !DILocation(line: 361, column: 19, scope: !928)
!932 = !DILocation(line: 361, column: 13, scope: !928)
!933 = !DILocation(line: 362, column: 15, scope: !928)
!934 = !DILocation(line: 363, column: 13, scope: !928)
!935 = !DILocation(line: 323, column: 42, scope: !745)
!936 = distinct !{!936, !811, !937}
!937 = !DILocation(line: 369, column: 5, scope: !746)
!938 = !DILocation(line: 371, column: 59, scope: !939)
!939 = distinct !DILexicalBlock(scope: !709, file: !3, line: 370, column: 9)
!940 = !DILocation(line: 371, column: 50, scope: !939)
!941 = !DILocation(line: 371, column: 9, scope: !939)
!942 = !DILocation(line: 374, column: 9, scope: !943)
!943 = distinct !DILexicalBlock(scope: !709, file: !3, line: 374, column: 9)
!944 = !DILocation(line: 374, column: 11, scope: !943)
!945 = !DILocation(line: 374, column: 9, scope: !709)
!946 = !DILocation(line: 375, column: 9, scope: !947)
!947 = distinct !DILexicalBlock(scope: !943, file: !3, line: 374, column: 24)
!948 = !DILocation(line: 376, column: 11, scope: !947)
!949 = !DILocation(line: 377, column: 5, scope: !947)
!950 = !DILocation(line: 380, column: 18, scope: !709)
!951 = !DILocation(line: 380, column: 5, scope: !709)
!952 = !DILocation(line: 384, column: 9, scope: !953)
!953 = distinct !DILexicalBlock(scope: !709, file: !3, line: 384, column: 9)
!954 = !DILocation(line: 384, column: 11, scope: !953)
!955 = !DILocation(line: 384, column: 26, scope: !953)
!956 = !DILocation(line: 384, column: 23, scope: !953)
!957 = !DILocation(line: 384, column: 48, scope: !953)
!958 = !DILocation(line: 385, column: 16, scope: !959)
!959 = distinct !DILexicalBlock(scope: !953, file: !3, line: 384, column: 76)
!960 = !DILocation(line: 385, column: 9, scope: !959)
!961 = !DILocation(line: 389, column: 1, scope: !709)
!962 = distinct !DISubprogram(name: "anetTcpNonBlockConnect", scope: !3, file: !3, line: 396, type: !698, isLocal: false, isDefinition: true, scopeLine: 397, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !963)
!963 = !{!964, !965, !966}
!964 = !DILocalVariable(name: "err", arg: 1, scope: !962, file: !3, line: 396, type: !80)
!965 = !DILocalVariable(name: "addr", arg: 2, scope: !962, file: !3, line: 396, type: !80)
!966 = !DILocalVariable(name: "port", arg: 3, scope: !962, file: !3, line: 396, type: !7)
!967 = !DILocation(line: 396, column: 34, scope: !962)
!968 = !DILocation(line: 396, column: 45, scope: !962)
!969 = !DILocation(line: 396, column: 55, scope: !962)
!970 = !DILocation(line: 398, column: 12, scope: !962)
!971 = !DILocation(line: 398, column: 5, scope: !962)
!972 = distinct !DISubprogram(name: "anetTcpNonBlockBindConnect", scope: !3, file: !3, line: 401, type: !973, isLocal: false, isDefinition: true, scopeLine: 403, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !975)
!973 = !DISubroutineType(types: !974)
!974 = !{!7, !80, !80, !7, !80}
!975 = !{!976, !977, !978, !979}
!976 = !DILocalVariable(name: "err", arg: 1, scope: !972, file: !3, line: 401, type: !80)
!977 = !DILocalVariable(name: "addr", arg: 2, scope: !972, file: !3, line: 401, type: !80)
!978 = !DILocalVariable(name: "port", arg: 3, scope: !972, file: !3, line: 401, type: !7)
!979 = !DILocalVariable(name: "source_addr", arg: 4, scope: !972, file: !3, line: 402, type: !80)
!980 = !DILocation(line: 401, column: 38, scope: !972)
!981 = !DILocation(line: 401, column: 49, scope: !972)
!982 = !DILocation(line: 401, column: 59, scope: !972)
!983 = !DILocation(line: 402, column: 38, scope: !972)
!984 = !DILocation(line: 404, column: 12, scope: !972)
!985 = !DILocation(line: 404, column: 5, scope: !972)
!986 = distinct !DISubprogram(name: "anetTcpNonBlockBestEffortBindConnect", scope: !3, file: !3, line: 408, type: !973, isLocal: false, isDefinition: true, scopeLine: 410, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !987)
!987 = !{!988, !989, !990, !991}
!988 = !DILocalVariable(name: "err", arg: 1, scope: !986, file: !3, line: 408, type: !80)
!989 = !DILocalVariable(name: "addr", arg: 2, scope: !986, file: !3, line: 408, type: !80)
!990 = !DILocalVariable(name: "port", arg: 3, scope: !986, file: !3, line: 408, type: !7)
!991 = !DILocalVariable(name: "source_addr", arg: 4, scope: !986, file: !3, line: 409, type: !80)
!992 = !DILocation(line: 408, column: 48, scope: !986)
!993 = !DILocation(line: 408, column: 59, scope: !986)
!994 = !DILocation(line: 408, column: 69, scope: !986)
!995 = !DILocation(line: 409, column: 48, scope: !986)
!996 = !DILocation(line: 411, column: 12, scope: !986)
!997 = !DILocation(line: 411, column: 5, scope: !986)
!998 = distinct !DISubprogram(name: "anetUnixGenericConnect", scope: !3, file: !3, line: 415, type: !698, isLocal: false, isDefinition: true, scopeLine: 416, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !999)
!999 = !{!1000, !1001, !1002, !1003, !1004}
!1000 = !DILocalVariable(name: "err", arg: 1, scope: !998, file: !3, line: 415, type: !80)
!1001 = !DILocalVariable(name: "path", arg: 2, scope: !998, file: !3, line: 415, type: !80)
!1002 = !DILocalVariable(name: "flags", arg: 3, scope: !998, file: !3, line: 415, type: !7)
!1003 = !DILocalVariable(name: "s", scope: !998, file: !3, line: 417, type: !7)
!1004 = !DILocalVariable(name: "sa", scope: !998, file: !3, line: 418, type: !1005)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_un", file: !1006, line: 17, size: 872, elements: !1007)
!1006 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/include/sys/un.h", directory: "/root/.unikraft/apps/redis/build")
!1007 = !{!1008, !1009}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "sun_family", scope: !1005, file: !1006, line: 18, baseType: !27, size: 8)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "sun_path", scope: !1005, file: !1006, line: 19, baseType: !1010, size: 864, offset: 8)
!1010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 864, elements: !1011)
!1011 = !{!1012}
!1012 = !DISubrange(count: 108)
!1013 = !DILocation(line: 415, column: 34, scope: !998)
!1014 = !DILocation(line: 415, column: 45, scope: !998)
!1015 = !DILocation(line: 415, column: 55, scope: !998)
!1016 = !DILocation(line: 418, column: 5, scope: !998)
!1017 = !DILocation(line: 420, column: 14, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !998, file: !3, line: 420, column: 9)
!1019 = !DILocation(line: 417, column: 9, scope: !998)
!1020 = !DILocation(line: 420, column: 46, scope: !1018)
!1021 = !DILocation(line: 420, column: 9, scope: !998)
!1022 = !DILocation(line: 423, column: 19, scope: !998)
!1023 = !{!1024, !135, i64 0}
!1024 = !{!"sockaddr_un", !135, i64 0, !135, i64 1}
!1025 = !DILocation(line: 424, column: 13, scope: !998)
!1026 = !DILocation(line: 424, column: 5, scope: !998)
!1027 = !DILocation(line: 425, column: 15, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !998, file: !3, line: 425, column: 9)
!1029 = !DILocation(line: 425, column: 9, scope: !998)
!1030 = !DILocation(line: 85, column: 24, scope: !190, inlinedAt: !1031)
!1031 = distinct !DILocation(line: 426, column: 13, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 426, column: 13)
!1033 = distinct !DILexicalBlock(scope: !1028, file: !3, line: 425, column: 40)
!1034 = !DILocation(line: 85, column: 33, scope: !190, inlinedAt: !1031)
!1035 = !DILocation(line: 86, column: 12, scope: !190, inlinedAt: !1031)
!1036 = !DILocation(line: 426, column: 33, scope: !1032)
!1037 = !DILocation(line: 426, column: 13, scope: !1033)
!1038 = !DILocation(line: 427, column: 13, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 426, column: 45)
!1040 = !DILocation(line: 428, column: 13, scope: !1039)
!1041 = !DILocation(line: 431, column: 19, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !998, file: !3, line: 431, column: 9)
!1043 = !DILocation(line: 431, column: 9, scope: !1042)
!1044 = !DILocation(line: 431, column: 53, scope: !1042)
!1045 = !DILocation(line: 431, column: 9, scope: !998)
!1046 = !DILocation(line: 432, column: 13, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 432, column: 13)
!1048 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 431, column: 60)
!1049 = !DILocation(line: 432, column: 19, scope: !1047)
!1050 = !DILocation(line: 432, column: 34, scope: !1047)
!1051 = !DILocation(line: 436, column: 51, scope: !1048)
!1052 = !DILocation(line: 436, column: 42, scope: !1048)
!1053 = !DILocation(line: 436, column: 9, scope: !1048)
!1054 = !DILocation(line: 437, column: 9, scope: !1048)
!1055 = !DILocation(line: 438, column: 9, scope: !1048)
!1056 = !DILocation(line: 0, scope: !998)
!1057 = !DILocation(line: 441, column: 1, scope: !998)
!1058 = distinct !DISubprogram(name: "anetCreateSocket", scope: !3, file: !3, line: 285, type: !191, isLocal: true, isDefinition: true, scopeLine: 285, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1059)
!1059 = !{!1060, !1061, !1062, !1063, !1069, !1070}
!1060 = !DILocalVariable(name: "err", arg: 1, scope: !1058, file: !3, line: 285, type: !80)
!1061 = !DILocalVariable(name: "domain", arg: 2, scope: !1058, file: !3, line: 285, type: !7)
!1062 = !DILocalVariable(name: "s", scope: !1058, file: !3, line: 286, type: !7)
!1063 = !DILocalVariable(name: "tid", scope: !1064, file: !3, line: 287, type: !41)
!1064 = distinct !DILexicalBlock(scope: !1065, file: !3, line: 287, column: 5)
!1065 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 287, column: 5)
!1066 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 287, column: 5)
!1067 = distinct !DILexicalBlock(scope: !1068, file: !3, line: 287, column: 5)
!1068 = distinct !DILexicalBlock(scope: !1058, file: !3, line: 287, column: 5)
!1069 = !DILocalVariable(name: "_ret", scope: !1064, file: !3, line: 287, type: !13)
!1070 = !DILocalVariable(name: "_arg3", scope: !1064, file: !3, line: 287, type: !13)
!1071 = !DILocation(line: 285, column: 35, scope: !1058)
!1072 = !DILocation(line: 285, column: 44, scope: !1058)
!1073 = !DILocation(line: 286, column: 5, scope: !1058)
!1074 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !1075)
!1075 = distinct !DILocation(line: 287, column: 5, scope: !1067)
!1076 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !1075)
!1077 = !DILocation(line: 287, column: 5, scope: !1067)
!1078 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !1079)
!1079 = distinct !DILocation(line: 287, column: 5, scope: !1067)
!1080 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !1079)
!1081 = !DILocation(line: 287, column: 5, scope: !1068)
!1082 = !DILocation(line: 287, column: 5, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 287, column: 5)
!1084 = !DILocation(line: 286, column: 9, scope: !1058)
!1085 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !1086)
!1086 = distinct !DILocation(line: 49, column: 21, scope: !256, inlinedAt: !1087)
!1087 = distinct !DILocation(line: 287, column: 5, scope: !1064)
!1088 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !1086)
!1089 = !DILocation(line: 49, column: 16, scope: !256, inlinedAt: !1087)
!1090 = !DILocation(line: 50, column: 19, scope: !256, inlinedAt: !1087)
!1091 = !DILocation(line: 50, column: 11, scope: !256, inlinedAt: !1087)
!1092 = !DILocation(line: 50, column: 9, scope: !256, inlinedAt: !1087)
!1093 = !DILocation(line: 287, column: 5, scope: !1064)
!1094 = !{i32 -2146242622, i32 -2146242609, i32 -2146242584, i32 -2146242560, i32 -2146242535, i32 -2146242460, i32 -2146242435, i32 -2146242291, i32 -2146239106, i32 -2146239017, i32 -2146238896, i32 -2146238801, i32 -2146238700, i32 -2146238673, i32 -2146238590, i32 -2146238501, i32 -2146238380, i32 -2146238280, i32 -2146238174, i32 -2146238066, i32 -2146241961, i32 -2146241908, i32 -2146241877, i32 -2146241846, i32 -2146241825, i32 -2146241803, i32 -2146241754, i32 -2146241733, i32 -2146241630, i32 -2146237983, i32 -2146237894, i32 -2146237773, i32 -2146237674, i32 -2146237568, i32 -2146237466, i32 -2146237433, i32 -2146237360, i32 -2146237292, i32 -2146241440, i32 -2146241381, i32 -2146241328, i32 -2146241297, i32 -2146241266, i32 -2146241245, i32 -2146241223, i32 -2146241174, i32 -2146241153, i32 -2146237250, i32 -2146237161, i32 -2146237040, i32 -2146236941, i32 -2146236835, i32 -2146236733, i32 -2146236700, i32 -2146236617, i32 -2146236528, i32 -2146236407, i32 -2146236307, i32 -2146236281, i32 -2146236178, i32 -2146236152, i32 -2146240895, i32 -2146240828, i32 -2146240803, i32 -2146240739, i32 -2146240657, i32 -2146240634, i32 -2146240609, i32 -2146240584}
!1095 = !DILocation(line: 287, column: 5, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 287, column: 5)
!1097 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 287, column: 5)
!1098 = !{i32 -2146239546, i32 -2146239529}
!1099 = !DILocation(line: 288, column: 9, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1058, file: !3, line: 288, column: 9)
!1101 = !DILocation(line: 288, column: 11, scope: !1100)
!1102 = !DILocation(line: 288, column: 9, scope: !1058)
!1103 = !DILocation(line: 289, column: 59, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 288, column: 18)
!1105 = !DILocation(line: 289, column: 50, scope: !1104)
!1106 = !DILocation(line: 289, column: 9, scope: !1104)
!1107 = !DILocation(line: 290, column: 9, scope: !1104)
!1108 = !DILocation(line: 295, column: 9, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1058, file: !3, line: 295, column: 9)
!1110 = !DILocation(line: 295, column: 33, scope: !1109)
!1111 = !DILocation(line: 0, scope: !1058)
!1112 = !DILocation(line: 295, column: 9, scope: !1058)
!1113 = !DILocation(line: 296, column: 9, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 295, column: 46)
!1115 = !DILocation(line: 297, column: 9, scope: !1114)
!1116 = !DILocation(line: 300, column: 1, scope: !1058)
!1117 = distinct !DISubprogram(name: "anetUnixConnect", scope: !3, file: !3, line: 443, type: !1118, isLocal: false, isDefinition: true, scopeLine: 444, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1120)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{!7, !80, !80}
!1120 = !{!1121, !1122}
!1121 = !DILocalVariable(name: "err", arg: 1, scope: !1117, file: !3, line: 443, type: !80)
!1122 = !DILocalVariable(name: "path", arg: 2, scope: !1117, file: !3, line: 443, type: !80)
!1123 = !DILocation(line: 443, column: 27, scope: !1117)
!1124 = !DILocation(line: 443, column: 38, scope: !1117)
!1125 = !DILocation(line: 445, column: 12, scope: !1117)
!1126 = !DILocation(line: 445, column: 5, scope: !1117)
!1127 = distinct !DISubprogram(name: "anetUnixNonBlockConnect", scope: !3, file: !3, line: 448, type: !1118, isLocal: false, isDefinition: true, scopeLine: 449, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1128)
!1128 = !{!1129, !1130}
!1129 = !DILocalVariable(name: "err", arg: 1, scope: !1127, file: !3, line: 448, type: !80)
!1130 = !DILocalVariable(name: "path", arg: 2, scope: !1127, file: !3, line: 448, type: !80)
!1131 = !DILocation(line: 448, column: 35, scope: !1127)
!1132 = !DILocation(line: 448, column: 46, scope: !1127)
!1133 = !DILocation(line: 450, column: 12, scope: !1127)
!1134 = !DILocation(line: 450, column: 5, scope: !1127)
!1135 = distinct !DISubprogram(name: "anetRead", scope: !3, file: !3, line: 455, type: !1136, isLocal: false, isDefinition: true, scopeLine: 456, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1138)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!7, !7, !80, !7}
!1138 = !{!1139, !1140, !1141, !1142, !1146}
!1139 = !DILocalVariable(name: "fd", arg: 1, scope: !1135, file: !3, line: 455, type: !7)
!1140 = !DILocalVariable(name: "buf", arg: 2, scope: !1135, file: !3, line: 455, type: !80)
!1141 = !DILocalVariable(name: "count", arg: 3, scope: !1135, file: !3, line: 455, type: !7)
!1142 = !DILocalVariable(name: "nread", scope: !1135, file: !3, line: 457, type: !1143)
!1143 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !1144, line: 200, baseType: !1145)
!1144 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!1145 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !564, line: 145, baseType: !492)
!1146 = !DILocalVariable(name: "totlen", scope: !1135, file: !3, line: 457, type: !1143)
!1147 = !DILocation(line: 455, column: 18, scope: !1135)
!1148 = !DILocation(line: 455, column: 28, scope: !1135)
!1149 = !DILocation(line: 455, column: 37, scope: !1135)
!1150 = !DILocation(line: 457, column: 20, scope: !1135)
!1151 = !DILocation(line: 458, column: 21, scope: !1135)
!1152 = !DILocation(line: 458, column: 18, scope: !1135)
!1153 = !DILocation(line: 458, column: 5, scope: !1135)
!1154 = !DILocation(line: 459, column: 34, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 458, column: 28)
!1156 = !DILocation(line: 459, column: 17, scope: !1155)
!1157 = !DILocation(line: 457, column: 13, scope: !1135)
!1158 = !DILocation(line: 460, column: 13, scope: !1155)
!1159 = !DILocation(line: 460, column: 32, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1155, file: !3, line: 460, column: 13)
!1161 = !DILocation(line: 460, column: 25, scope: !1160)
!1162 = !DILocation(line: 462, column: 16, scope: !1155)
!1163 = !DILocation(line: 463, column: 13, scope: !1155)
!1164 = distinct !{!1164, !1153, !1165}
!1165 = !DILocation(line: 464, column: 5, scope: !1135)
!1166 = !DILocation(line: 0, scope: !1135)
!1167 = !DILocation(line: 466, column: 1, scope: !1135)
!1168 = distinct !DISubprogram(name: "anetWrite", scope: !3, file: !3, line: 470, type: !1136, isLocal: false, isDefinition: true, scopeLine: 471, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1169)
!1169 = !{!1170, !1171, !1172, !1173, !1174}
!1170 = !DILocalVariable(name: "fd", arg: 1, scope: !1168, file: !3, line: 470, type: !7)
!1171 = !DILocalVariable(name: "buf", arg: 2, scope: !1168, file: !3, line: 470, type: !80)
!1172 = !DILocalVariable(name: "count", arg: 3, scope: !1168, file: !3, line: 470, type: !7)
!1173 = !DILocalVariable(name: "nwritten", scope: !1168, file: !3, line: 472, type: !1143)
!1174 = !DILocalVariable(name: "totlen", scope: !1168, file: !3, line: 472, type: !1143)
!1175 = !DILocation(line: 470, column: 19, scope: !1168)
!1176 = !DILocation(line: 470, column: 29, scope: !1168)
!1177 = !DILocation(line: 470, column: 38, scope: !1168)
!1178 = !DILocation(line: 472, column: 23, scope: !1168)
!1179 = !DILocation(line: 473, column: 21, scope: !1168)
!1180 = !DILocation(line: 473, column: 18, scope: !1168)
!1181 = !DILocation(line: 473, column: 5, scope: !1168)
!1182 = !DILocation(line: 474, column: 38, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 473, column: 28)
!1184 = !DILocation(line: 474, column: 20, scope: !1183)
!1185 = !DILocation(line: 472, column: 13, scope: !1168)
!1186 = !DILocation(line: 475, column: 13, scope: !1183)
!1187 = !DILocation(line: 475, column: 35, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 475, column: 13)
!1189 = !DILocation(line: 475, column: 28, scope: !1188)
!1190 = !DILocation(line: 477, column: 16, scope: !1183)
!1191 = !DILocation(line: 478, column: 13, scope: !1183)
!1192 = distinct !{!1192, !1181, !1193}
!1193 = !DILocation(line: 479, column: 5, scope: !1168)
!1194 = !DILocation(line: 0, scope: !1168)
!1195 = !DILocation(line: 481, column: 1, scope: !1168)
!1196 = distinct !DISubprogram(name: "anetTcpServer", scope: !3, file: !3, line: 566, type: !1197, isLocal: false, isDefinition: true, scopeLine: 567, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1199)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{!7, !80, !7, !80, !7}
!1199 = !{!1200, !1201, !1202, !1203}
!1200 = !DILocalVariable(name: "err", arg: 1, scope: !1196, file: !3, line: 566, type: !80)
!1201 = !DILocalVariable(name: "port", arg: 2, scope: !1196, file: !3, line: 566, type: !7)
!1202 = !DILocalVariable(name: "bindaddr", arg: 3, scope: !1196, file: !3, line: 566, type: !80)
!1203 = !DILocalVariable(name: "backlog", arg: 4, scope: !1196, file: !3, line: 566, type: !7)
!1204 = !DILocation(line: 566, column: 25, scope: !1196)
!1205 = !DILocation(line: 566, column: 34, scope: !1196)
!1206 = !DILocation(line: 566, column: 46, scope: !1196)
!1207 = !DILocation(line: 566, column: 60, scope: !1196)
!1208 = !DILocation(line: 568, column: 12, scope: !1196)
!1209 = !DILocation(line: 568, column: 5, scope: !1196)
!1210 = distinct !DISubprogram(name: "_anetTcpServer", scope: !3, file: !3, line: 517, type: !1211, isLocal: true, isDefinition: true, scopeLine: 518, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1213)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{!7, !80, !7, !80, !7, !7}
!1213 = !{!1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1234, !1235, !1236, !1237, !1246, !1247, !1248}
!1214 = !DILocalVariable(name: "err", arg: 1, scope: !1210, file: !3, line: 517, type: !80)
!1215 = !DILocalVariable(name: "port", arg: 2, scope: !1210, file: !3, line: 517, type: !7)
!1216 = !DILocalVariable(name: "bindaddr", arg: 3, scope: !1210, file: !3, line: 517, type: !80)
!1217 = !DILocalVariable(name: "af", arg: 4, scope: !1210, file: !3, line: 517, type: !7)
!1218 = !DILocalVariable(name: "backlog", arg: 5, scope: !1210, file: !3, line: 517, type: !7)
!1219 = !DILocalVariable(name: "s", scope: !1210, file: !3, line: 519, type: !7)
!1220 = !DILocalVariable(name: "rv", scope: !1210, file: !3, line: 519, type: !7)
!1221 = !DILocalVariable(name: "_port", scope: !1210, file: !3, line: 520, type: !721)
!1222 = !DILocalVariable(name: "_dss__port", scope: !1210, file: !3, line: 521, type: !80)
!1223 = !DILocalVariable(name: "hints", scope: !1210, file: !3, line: 522, type: !82)
!1224 = !DILocalVariable(name: "_dss_hints", scope: !1210, file: !3, line: 523, type: !81)
!1225 = !DILocalVariable(name: "servinfo", scope: !1210, file: !3, line: 524, type: !81)
!1226 = !DILocalVariable(name: "_dss_servinfo", scope: !1210, file: !3, line: 525, type: !94)
!1227 = !DILocalVariable(name: "p", scope: !1210, file: !3, line: 526, type: !81)
!1228 = !DILocalVariable(name: "tid", scope: !1229, file: !3, line: 534, type: !41)
!1229 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 534, column: 5)
!1230 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 534, column: 5)
!1231 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 534, column: 5)
!1232 = distinct !DILexicalBlock(scope: !1233, file: !3, line: 534, column: 5)
!1233 = distinct !DILexicalBlock(scope: !1210, file: !3, line: 534, column: 5)
!1234 = !DILocalVariable(name: "_ret", scope: !1229, file: !3, line: 534, type: !13)
!1235 = !DILocalVariable(name: "_arg3", scope: !1229, file: !3, line: 534, type: !13)
!1236 = !DILocalVariable(name: "_arg4", scope: !1229, file: !3, line: 534, type: !13)
!1237 = !DILocalVariable(name: "tid", scope: !1238, file: !3, line: 543, type: !41)
!1238 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 543, column: 9)
!1239 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 543, column: 9)
!1240 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 543, column: 9)
!1241 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 543, column: 9)
!1242 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 543, column: 9)
!1243 = distinct !DILexicalBlock(scope: !1244, file: !3, line: 542, column: 59)
!1244 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 542, column: 5)
!1245 = distinct !DILexicalBlock(scope: !1210, file: !3, line: 542, column: 5)
!1246 = !DILocalVariable(name: "_ret", scope: !1238, file: !3, line: 543, type: !13)
!1247 = !DILocalVariable(name: "_arg3", scope: !1238, file: !3, line: 543, type: !13)
!1248 = !DILocalVariable(name: "tid", scope: !1249, file: !3, line: 562, type: !41)
!1249 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 562, column: 5)
!1250 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 562, column: 5)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 562, column: 5)
!1252 = distinct !DILexicalBlock(scope: !1253, file: !3, line: 562, column: 5)
!1253 = distinct !DILexicalBlock(scope: !1210, file: !3, line: 562, column: 5)
!1254 = !DILocation(line: 517, column: 33, scope: !1210)
!1255 = !DILocation(line: 517, column: 42, scope: !1210)
!1256 = !DILocation(line: 517, column: 54, scope: !1210)
!1257 = !DILocation(line: 517, column: 68, scope: !1210)
!1258 = !DILocation(line: 517, column: 76, scope: !1210)
!1259 = !DILocation(line: 519, column: 5, scope: !1210)
!1260 = !DILocation(line: 519, column: 9, scope: !1210)
!1261 = !DILocation(line: 520, column: 5, scope: !1210)
!1262 = !DILocation(line: 520, column: 10, scope: !1210)
!1263 = !DILocation(line: 521, column: 34, scope: !1210)
!1264 = !DILocation(line: 521, column: 55, scope: !1210)
!1265 = !DILocation(line: 521, column: 24, scope: !1210)
!1266 = !DILocation(line: 521, column: 11, scope: !1210)
!1267 = !DILocation(line: 522, column: 5, scope: !1210)
!1268 = !DILocation(line: 523, column: 56, scope: !1210)
!1269 = !DILocation(line: 523, column: 77, scope: !1210)
!1270 = !DILocation(line: 523, column: 35, scope: !1210)
!1271 = !DILocation(line: 523, column: 22, scope: !1210)
!1272 = !DILocation(line: 524, column: 5, scope: !1210)
!1273 = !DILocation(line: 525, column: 61, scope: !1210)
!1274 = !DILocation(line: 525, column: 85, scope: !1210)
!1275 = !DILocation(line: 525, column: 39, scope: !1210)
!1276 = !DILocation(line: 525, column: 23, scope: !1210)
!1277 = !DILocation(line: 528, column: 5, scope: !1210)
!1278 = !DILocation(line: 529, column: 12, scope: !1210)
!1279 = !DILocation(line: 529, column: 5, scope: !1210)
!1280 = !DILocation(line: 530, column: 19, scope: !1210)
!1281 = !DILocation(line: 530, column: 29, scope: !1210)
!1282 = !DILocation(line: 531, column: 19, scope: !1210)
!1283 = !DILocation(line: 531, column: 31, scope: !1210)
!1284 = !DILocation(line: 532, column: 19, scope: !1210)
!1285 = !DILocation(line: 532, column: 28, scope: !1210)
!1286 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !1287)
!1287 = distinct !DILocation(line: 534, column: 5, scope: !1232)
!1288 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !1287)
!1289 = !DILocation(line: 534, column: 5, scope: !1232)
!1290 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !1291)
!1291 = distinct !DILocation(line: 534, column: 5, scope: !1232)
!1292 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !1291)
!1293 = !DILocation(line: 534, column: 5, scope: !1233)
!1294 = !DILocation(line: 534, column: 5, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 534, column: 5)
!1296 = !DILocation(line: 519, column: 17, scope: !1210)
!1297 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !1298)
!1298 = distinct !DILocation(line: 49, column: 21, scope: !256, inlinedAt: !1299)
!1299 = distinct !DILocation(line: 534, column: 5, scope: !1229)
!1300 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !1298)
!1301 = !DILocation(line: 49, column: 16, scope: !256, inlinedAt: !1299)
!1302 = !DILocation(line: 50, column: 19, scope: !256, inlinedAt: !1299)
!1303 = !DILocation(line: 50, column: 11, scope: !256, inlinedAt: !1299)
!1304 = !DILocation(line: 50, column: 9, scope: !256, inlinedAt: !1299)
!1305 = !DILocation(line: 534, column: 5, scope: !1229)
!1306 = !{i32 -2146174843, i32 -2146174830, i32 -2146174805, i32 -2146174781, i32 -2146174756, i32 -2146174681, i32 -2146174656, i32 -2146174512, i32 -2146174487, i32 -2146171157, i32 -2146171068, i32 -2146170947, i32 -2146170852, i32 -2146170751, i32 -2146170724, i32 -2146170641, i32 -2146170552, i32 -2146170431, i32 -2146170331, i32 -2146170225, i32 -2146170117, i32 -2146174150, i32 -2146174097, i32 -2146174066, i32 -2146174035, i32 -2146174014, i32 -2146173992, i32 -2146173943, i32 -2146173922, i32 -2146173819, i32 -2146173787, i32 -2146170034, i32 -2146169945, i32 -2146169824, i32 -2146169725, i32 -2146169619, i32 -2146169517, i32 -2146169484, i32 -2146169411, i32 -2146169343, i32 -2146173597, i32 -2146173538, i32 -2146173485, i32 -2146173454, i32 -2146173423, i32 -2146173402, i32 -2146173380, i32 -2146173331, i32 -2146173310, i32 -2146169296, i32 -2146169207, i32 -2146169086, i32 -2146168987, i32 -2146168881, i32 -2146168779, i32 -2146168746, i32 -2146168663, i32 -2146168574, i32 -2146168453, i32 -2146168353, i32 -2146168327, i32 -2146168224, i32 -2146168198, i32 -2146173052, i32 -2146173027, i32 -2146172960, i32 -2146172935, i32 -2146172871, i32 -2146172789, i32 -2146172766, i32 -2146172741, i32 -2146172716}
!1307 = !DILocation(line: 534, column: 5, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 534, column: 5)
!1309 = distinct !DILexicalBlock(scope: !1229, file: !3, line: 534, column: 5)
!1310 = !{i32 -2146171655, i32 -2146171638}
!1311 = !DILocation(line: 538, column: 9, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1210, file: !3, line: 538, column: 9)
!1313 = !DILocation(line: 538, column: 12, scope: !1312)
!1314 = !DILocation(line: 538, column: 9, scope: !1210)
!1315 = !DILocation(line: 0, scope: !1244)
!1316 = !DILocation(line: 526, column: 22, scope: !1210)
!1317 = !DILocation(line: 542, column: 34, scope: !1244)
!1318 = !DILocation(line: 542, column: 5, scope: !1245)
!1319 = !DILocation(line: 539, column: 33, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1312, file: !3, line: 538, column: 18)
!1321 = !DILocation(line: 539, column: 9, scope: !1320)
!1322 = !DILocation(line: 540, column: 9, scope: !1320)
!1323 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !1324)
!1324 = distinct !DILocation(line: 543, column: 9, scope: !1241)
!1325 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !1324)
!1326 = !DILocation(line: 543, column: 9, scope: !1241)
!1327 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !1328)
!1328 = distinct !DILocation(line: 543, column: 9, scope: !1241)
!1329 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !1328)
!1330 = !DILocation(line: 543, column: 9, scope: !1242)
!1331 = !DILocation(line: 543, column: 9, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 543, column: 9)
!1333 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !1334)
!1334 = distinct !DILocation(line: 49, column: 21, scope: !256, inlinedAt: !1335)
!1335 = distinct !DILocation(line: 543, column: 9, scope: !1238)
!1336 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !1334)
!1337 = !DILocation(line: 49, column: 16, scope: !256, inlinedAt: !1335)
!1338 = !DILocation(line: 50, column: 19, scope: !256, inlinedAt: !1335)
!1339 = !DILocation(line: 50, column: 11, scope: !256, inlinedAt: !1335)
!1340 = !DILocation(line: 50, column: 9, scope: !256, inlinedAt: !1335)
!1341 = !DILocation(line: 543, column: 9, scope: !1238)
!1342 = !{i32 -2146165683, i32 -2146165670, i32 -2146165645, i32 -2146165621, i32 -2146165596, i32 -2146165521, i32 -2146165496, i32 -2146165352, i32 -2146162137, i32 -2146162048, i32 -2146161927, i32 -2146161832, i32 -2146161731, i32 -2146161704, i32 -2146161621, i32 -2146161532, i32 -2146161411, i32 -2146161311, i32 -2146161205, i32 -2146161097, i32 -2146165022, i32 -2146164969, i32 -2146164938, i32 -2146164907, i32 -2146164886, i32 -2146164864, i32 -2146164815, i32 -2146164794, i32 -2146164691, i32 -2146161014, i32 -2146160925, i32 -2146160804, i32 -2146160705, i32 -2146160599, i32 -2146160497, i32 -2146160464, i32 -2146160391, i32 -2146160323, i32 -2146164501, i32 -2146164442, i32 -2146164389, i32 -2146164358, i32 -2146164327, i32 -2146164306, i32 -2146164284, i32 -2146164235, i32 -2146164214, i32 -2146160281, i32 -2146160192, i32 -2146160071, i32 -2146159972, i32 -2146159866, i32 -2146159764, i32 -2146159731, i32 -2146159648, i32 -2146159559, i32 -2146159438, i32 -2146159338, i32 -2146159312, i32 -2146159209, i32 -2146159183, i32 -2146163956, i32 -2146163889, i32 -2146163864, i32 -2146163800, i32 -2146163718, i32 -2146163695, i32 -2146163670, i32 -2146163645}
!1343 = !DILocation(line: 543, column: 9, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 543, column: 9)
!1345 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 543, column: 9)
!1346 = !{i32 -2146162607, i32 -2146162590}
!1347 = !DILocation(line: 545, column: 13, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 545, column: 13)
!1349 = !DILocation(line: 545, column: 15, scope: !1348)
!1350 = !DILocation(line: 545, column: 13, scope: !1243)
!1351 = !DILocation(line: 548, column: 16, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 548, column: 13)
!1353 = !DILocation(line: 548, column: 28, scope: !1352)
!1354 = !DILocalVariable(name: "err", arg: 1, scope: !1355, file: !3, line: 502, type: !80)
!1355 = distinct !DISubprogram(name: "anetV6Only", scope: !3, file: !3, line: 502, type: !191, isLocal: true, isDefinition: true, scopeLine: 502, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1356)
!1356 = !{!1354, !1357, !1358, !1359, !1360, !1361, !1367, !1368, !1369, !1370}
!1357 = !DILocalVariable(name: "s", arg: 2, scope: !1355, file: !3, line: 502, type: !7)
!1358 = !DILocalVariable(name: "yes", scope: !1355, file: !3, line: 503, type: !7)
!1359 = !DILocalVariable(name: "_dss_yes", scope: !1355, file: !3, line: 504, type: !6)
!1360 = !DILocalVariable(name: "ret", scope: !1355, file: !3, line: 506, type: !7)
!1361 = !DILocalVariable(name: "tid", scope: !1362, file: !3, line: 507, type: !41)
!1362 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 507, column: 5)
!1363 = distinct !DILexicalBlock(scope: !1364, file: !3, line: 507, column: 5)
!1364 = distinct !DILexicalBlock(scope: !1365, file: !3, line: 507, column: 5)
!1365 = distinct !DILexicalBlock(scope: !1366, file: !3, line: 507, column: 5)
!1366 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 507, column: 5)
!1367 = !DILocalVariable(name: "_ret", scope: !1362, file: !3, line: 507, type: !13)
!1368 = !DILocalVariable(name: "_arg3", scope: !1362, file: !3, line: 507, type: !13)
!1369 = !DILocalVariable(name: "_arg4", scope: !1362, file: !3, line: 507, type: !13)
!1370 = !DILocalVariable(name: "_arg5", scope: !1362, file: !3, line: 507, type: !13)
!1371 = !DILocation(line: 502, column: 29, scope: !1355, inlinedAt: !1372)
!1372 = distinct !DILocation(line: 548, column: 31, scope: !1352)
!1373 = !DILocation(line: 502, column: 38, scope: !1355, inlinedAt: !1372)
!1374 = !DILocation(line: 503, column: 5, scope: !1355, inlinedAt: !1372)
!1375 = !DILocation(line: 504, column: 30, scope: !1355, inlinedAt: !1372)
!1376 = !DILocation(line: 504, column: 49, scope: !1355, inlinedAt: !1372)
!1377 = !DILocation(line: 504, column: 21, scope: !1355, inlinedAt: !1372)
!1378 = !DILocation(line: 504, column: 10, scope: !1355, inlinedAt: !1372)
!1379 = !DILocation(line: 505, column: 17, scope: !1355, inlinedAt: !1372)
!1380 = !DILocation(line: 506, column: 5, scope: !1355, inlinedAt: !1372)
!1381 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !1382)
!1382 = distinct !DILocation(line: 507, column: 5, scope: !1365, inlinedAt: !1372)
!1383 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !1382)
!1384 = !DILocation(line: 507, column: 5, scope: !1365, inlinedAt: !1372)
!1385 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !1386)
!1386 = distinct !DILocation(line: 507, column: 5, scope: !1365, inlinedAt: !1372)
!1387 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !1386)
!1388 = !DILocation(line: 507, column: 5, scope: !1366, inlinedAt: !1372)
!1389 = !DILocation(line: 507, column: 5, scope: !1390, inlinedAt: !1372)
!1390 = distinct !DILexicalBlock(scope: !1365, file: !3, line: 507, column: 5)
!1391 = !DILocation(line: 506, column: 9, scope: !1355, inlinedAt: !1372)
!1392 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !1393)
!1393 = distinct !DILocation(line: 49, column: 21, scope: !256, inlinedAt: !1394)
!1394 = distinct !DILocation(line: 507, column: 5, scope: !1362, inlinedAt: !1372)
!1395 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !1393)
!1396 = !DILocation(line: 49, column: 16, scope: !256, inlinedAt: !1394)
!1397 = !DILocation(line: 50, column: 19, scope: !256, inlinedAt: !1394)
!1398 = !DILocation(line: 50, column: 11, scope: !256, inlinedAt: !1394)
!1399 = !DILocation(line: 50, column: 9, scope: !256, inlinedAt: !1394)
!1400 = !DILocation(line: 507, column: 5, scope: !1362, inlinedAt: !1372)
!1401 = !{i32 -2146184719, i32 -2146184706, i32 -2146184681, i32 -2146184657, i32 -2146184632, i32 -2146184557, i32 -2146184532, i32 -2146184388, i32 -2146184363, i32 -2146180971, i32 -2146180882, i32 -2146180761, i32 -2146180666, i32 -2146180565, i32 -2146180538, i32 -2146180455, i32 -2146180366, i32 -2146180245, i32 -2146180145, i32 -2146180039, i32 -2146179931, i32 -2146183987, i32 -2146183934, i32 -2146183903, i32 -2146183872, i32 -2146183851, i32 -2146183829, i32 -2146183780, i32 -2146183759, i32 -2146183656, i32 -2146183624, i32 -2146179848, i32 -2146179759, i32 -2146179638, i32 -2146179539, i32 -2146179433, i32 -2146179331, i32 -2146179298, i32 -2146179225, i32 -2146179157, i32 -2146183434, i32 -2146183375, i32 -2146183322, i32 -2146183291, i32 -2146183260, i32 -2146183239, i32 -2146183217, i32 -2146183168, i32 -2146183147, i32 -2146179111, i32 -2146179022, i32 -2146178901, i32 -2146178802, i32 -2146178696, i32 -2146178594, i32 -2146178561, i32 -2146178478, i32 -2146178389, i32 -2146178268, i32 -2146178168, i32 -2146178142, i32 -2146178039, i32 -2146178013, i32 -2146182889, i32 -2146182864, i32 -2146182797, i32 -2146182772, i32 -2146182708, i32 -2146182626, i32 -2146182603, i32 -2146182578, i32 -2146182553}
!1402 = !DILocation(line: 507, column: 5, scope: !1403, inlinedAt: !1372)
!1403 = distinct !DILexicalBlock(scope: !1404, file: !3, line: 507, column: 5)
!1404 = distinct !DILexicalBlock(scope: !1362, file: !3, line: 507, column: 5)
!1405 = !{i32 -2146181469, i32 -2146181452}
!1406 = !DILocation(line: 509, column: 9, scope: !1407, inlinedAt: !1372)
!1407 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 509, column: 9)
!1408 = !DILocation(line: 509, column: 13, scope: !1407, inlinedAt: !1372)
!1409 = !DILocation(line: 509, column: 9, scope: !1355, inlinedAt: !1372)
!1410 = !DILocation(line: 510, column: 54, scope: !1411, inlinedAt: !1372)
!1411 = distinct !DILexicalBlock(scope: !1407, file: !3, line: 509, column: 20)
!1412 = !DILocation(line: 510, column: 45, scope: !1411, inlinedAt: !1372)
!1413 = !DILocation(line: 510, column: 9, scope: !1411, inlinedAt: !1372)
!1414 = !DILocation(line: 511, column: 9, scope: !1411, inlinedAt: !1372)
!1415 = !DILocation(line: 515, column: 1, scope: !1355, inlinedAt: !1372)
!1416 = !DILocation(line: 548, column: 13, scope: !1243)
!1417 = !DILocation(line: 549, column: 34, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 549, column: 13)
!1419 = !DILocation(line: 549, column: 13, scope: !1418)
!1420 = !DILocation(line: 549, column: 37, scope: !1418)
!1421 = !DILocation(line: 549, column: 13, scope: !1243)
!1422 = !DILocation(line: 550, column: 28, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 550, column: 13)
!1424 = !DILocation(line: 550, column: 33, scope: !1423)
!1425 = !DILocation(line: 550, column: 44, scope: !1423)
!1426 = !DILocation(line: 550, column: 13, scope: !1423)
!1427 = !DILocation(line: 550, column: 64, scope: !1423)
!1428 = !DILocation(line: 550, column: 13, scope: !1243)
!1429 = !DILocation(line: 550, column: 79, scope: !1423)
!1430 = !DILocation(line: 550, column: 77, scope: !1423)
!1431 = !DILocation(line: 542, column: 50, scope: !1244)
!1432 = distinct !{!1432, !1318, !1433}
!1433 = !DILocation(line: 552, column: 5, scope: !1245)
!1434 = !DILocation(line: 554, column: 63, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1436, file: !3, line: 553, column: 20)
!1436 = distinct !DILexicalBlock(scope: !1210, file: !3, line: 553, column: 9)
!1437 = !DILocation(line: 554, column: 9, scope: !1435)
!1438 = !DILocation(line: 555, column: 9, scope: !1435)
!1439 = !DILocation(line: 559, column: 9, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1210, file: !3, line: 559, column: 9)
!1441 = !DILocation(line: 559, column: 11, scope: !1440)
!1442 = !DILocation(line: 559, column: 9, scope: !1210)
!1443 = !DILocation(line: 559, column: 18, scope: !1440)
!1444 = !DILocation(line: 560, column: 7, scope: !1210)
!1445 = !DILocation(line: 560, column: 5, scope: !1210)
!1446 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !1447)
!1447 = distinct !DILocation(line: 562, column: 5, scope: !1252)
!1448 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !1447)
!1449 = !DILocation(line: 562, column: 5, scope: !1252)
!1450 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !1451)
!1451 = distinct !DILocation(line: 562, column: 5, scope: !1252)
!1452 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !1451)
!1453 = !DILocation(line: 562, column: 5, scope: !1253)
!1454 = !DILocation(line: 562, column: 5, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 562, column: 5)
!1456 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !1457)
!1457 = distinct !DILocation(line: 49, column: 21, scope: !256, inlinedAt: !1458)
!1458 = distinct !DILocation(line: 562, column: 5, scope: !1249)
!1459 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !1457)
!1460 = !DILocation(line: 49, column: 16, scope: !256, inlinedAt: !1458)
!1461 = !DILocation(line: 50, column: 19, scope: !256, inlinedAt: !1458)
!1462 = !DILocation(line: 50, column: 11, scope: !256, inlinedAt: !1458)
!1463 = !DILocation(line: 50, column: 9, scope: !256, inlinedAt: !1458)
!1464 = !DILocation(line: 562, column: 5, scope: !1249)
!1465 = !{i32 -2146157208, i32 -2146157195, i32 -2146157170, i32 -2146157146, i32 -2146157121, i32 -2146157046, i32 -2146157021, i32 -2146156877, i32 -2146154660, i32 -2146154571, i32 -2146154450, i32 -2146154355, i32 -2146154254, i32 -2146154227, i32 -2146154144, i32 -2146154055, i32 -2146153934, i32 -2146153834, i32 -2146153728, i32 -2146153620, i32 -2146156589, i32 -2146156536, i32 -2146156505, i32 -2146156474, i32 -2146156453, i32 -2146156431, i32 -2146156382, i32 -2146156361, i32 -2146153537, i32 -2146153448, i32 -2146153327, i32 -2146153228, i32 -2146153122, i32 -2146153020, i32 -2146152987, i32 -2146152914, i32 -2146152846, i32 -2146155987, i32 -2146155934, i32 -2146155903, i32 -2146155872, i32 -2146155851, i32 -2146155829, i32 -2146155780, i32 -2146155759, i32 -2146152798, i32 -2146152709, i32 -2146152588, i32 -2146152489, i32 -2146152383, i32 -2146152281, i32 -2146152248, i32 -2146152165, i32 -2146152076, i32 -2146151955, i32 -2146151855, i32 -2146151829, i32 -2146151726, i32 -2146151700, i32 -2146155501, i32 -2146155434, i32 -2146155409, i32 -2146155345, i32 -2146155229, i32 -2146155204, i32 -2146155179}
!1466 = !DILocation(line: 563, column: 12, scope: !1210)
!1467 = !DILocation(line: 563, column: 5, scope: !1210)
!1468 = !DILocation(line: 0, scope: !1210)
!1469 = !DILocation(line: 564, column: 1, scope: !1210)
!1470 = distinct !DISubprogram(name: "anetTcp6Server", scope: !3, file: !3, line: 571, type: !1197, isLocal: false, isDefinition: true, scopeLine: 572, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1471)
!1471 = !{!1472, !1473, !1474, !1475}
!1472 = !DILocalVariable(name: "err", arg: 1, scope: !1470, file: !3, line: 571, type: !80)
!1473 = !DILocalVariable(name: "port", arg: 2, scope: !1470, file: !3, line: 571, type: !7)
!1474 = !DILocalVariable(name: "bindaddr", arg: 3, scope: !1470, file: !3, line: 571, type: !80)
!1475 = !DILocalVariable(name: "backlog", arg: 4, scope: !1470, file: !3, line: 571, type: !7)
!1476 = !DILocation(line: 571, column: 26, scope: !1470)
!1477 = !DILocation(line: 571, column: 35, scope: !1470)
!1478 = !DILocation(line: 571, column: 47, scope: !1470)
!1479 = !DILocation(line: 571, column: 61, scope: !1470)
!1480 = !DILocation(line: 573, column: 12, scope: !1470)
!1481 = !DILocation(line: 573, column: 5, scope: !1470)
!1482 = distinct !DISubprogram(name: "anetUnixServer", scope: !3, file: !3, line: 576, type: !1483, isLocal: false, isDefinition: true, scopeLine: 577, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1487)
!1483 = !DISubroutineType(types: !1484)
!1484 = !{!7, !80, !80, !1485, !7}
!1485 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !1144, line: 205, baseType: !1486)
!1486 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !564, line: 88, baseType: !42)
!1487 = !{!1488, !1489, !1490, !1491, !1492, !1493}
!1488 = !DILocalVariable(name: "err", arg: 1, scope: !1482, file: !3, line: 576, type: !80)
!1489 = !DILocalVariable(name: "path", arg: 2, scope: !1482, file: !3, line: 576, type: !80)
!1490 = !DILocalVariable(name: "perm", arg: 3, scope: !1482, file: !3, line: 576, type: !1485)
!1491 = !DILocalVariable(name: "backlog", arg: 4, scope: !1482, file: !3, line: 576, type: !7)
!1492 = !DILocalVariable(name: "s", scope: !1482, file: !3, line: 578, type: !7)
!1493 = !DILocalVariable(name: "sa", scope: !1482, file: !3, line: 579, type: !1005)
!1494 = !DILocation(line: 576, column: 26, scope: !1482)
!1495 = !DILocation(line: 576, column: 37, scope: !1482)
!1496 = !DILocation(line: 576, column: 50, scope: !1482)
!1497 = !DILocation(line: 576, column: 60, scope: !1482)
!1498 = !DILocation(line: 579, column: 5, scope: !1482)
!1499 = !DILocation(line: 581, column: 14, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1482, file: !3, line: 581, column: 9)
!1501 = !DILocation(line: 578, column: 9, scope: !1482)
!1502 = !DILocation(line: 581, column: 46, scope: !1500)
!1503 = !DILocation(line: 581, column: 9, scope: !1482)
!1504 = !DILocation(line: 584, column: 5, scope: !1482)
!1505 = !DILocation(line: 585, column: 19, scope: !1482)
!1506 = !DILocation(line: 586, column: 13, scope: !1482)
!1507 = !DILocation(line: 586, column: 5, scope: !1482)
!1508 = !DILocation(line: 587, column: 26, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1482, file: !3, line: 587, column: 9)
!1510 = !DILocation(line: 587, column: 9, scope: !1509)
!1511 = !DILocation(line: 587, column: 68, scope: !1509)
!1512 = !DILocation(line: 587, column: 9, scope: !1482)
!1513 = !DILocation(line: 589, column: 9, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1482, file: !3, line: 589, column: 9)
!1515 = !DILocation(line: 589, column: 9, scope: !1482)
!1516 = !DILocation(line: 590, column: 9, scope: !1514)
!1517 = !DILocation(line: 0, scope: !1482)
!1518 = !DILocation(line: 592, column: 1, scope: !1482)
!1519 = distinct !DISubprogram(name: "anetListen", scope: !3, file: !3, line: 483, type: !1520, isLocal: true, isDefinition: true, scopeLine: 483, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1522)
!1520 = !DISubroutineType(types: !1521)
!1521 = !{!7, !80, !7, !71, !90, !7}
!1522 = !{!1523, !1524, !1525, !1526, !1527, !1528, !1529, !1535, !1536, !1537, !1543}
!1523 = !DILocalVariable(name: "err", arg: 1, scope: !1519, file: !3, line: 483, type: !80)
!1524 = !DILocalVariable(name: "s", arg: 2, scope: !1519, file: !3, line: 483, type: !7)
!1525 = !DILocalVariable(name: "sa", arg: 3, scope: !1519, file: !3, line: 483, type: !71)
!1526 = !DILocalVariable(name: "len", arg: 4, scope: !1519, file: !3, line: 483, type: !90)
!1527 = !DILocalVariable(name: "backlog", arg: 5, scope: !1519, file: !3, line: 483, type: !7)
!1528 = !DILocalVariable(name: "ret", scope: !1519, file: !3, line: 484, type: !7)
!1529 = !DILocalVariable(name: "tid", scope: !1530, file: !3, line: 486, type: !41)
!1530 = distinct !DILexicalBlock(scope: !1531, file: !3, line: 486, column: 5)
!1531 = distinct !DILexicalBlock(scope: !1532, file: !3, line: 486, column: 5)
!1532 = distinct !DILexicalBlock(scope: !1533, file: !3, line: 486, column: 5)
!1533 = distinct !DILexicalBlock(scope: !1534, file: !3, line: 486, column: 5)
!1534 = distinct !DILexicalBlock(scope: !1519, file: !3, line: 486, column: 5)
!1535 = !DILocalVariable(name: "_ret", scope: !1530, file: !3, line: 486, type: !13)
!1536 = !DILocalVariable(name: "_arg3", scope: !1530, file: !3, line: 486, type: !13)
!1537 = !DILocalVariable(name: "tid", scope: !1538, file: !3, line: 493, type: !41)
!1538 = distinct !DILexicalBlock(scope: !1539, file: !3, line: 493, column: 5)
!1539 = distinct !DILexicalBlock(scope: !1540, file: !3, line: 493, column: 5)
!1540 = distinct !DILexicalBlock(scope: !1541, file: !3, line: 493, column: 5)
!1541 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 493, column: 5)
!1542 = distinct !DILexicalBlock(scope: !1519, file: !3, line: 493, column: 5)
!1543 = !DILocalVariable(name: "_ret", scope: !1538, file: !3, line: 493, type: !13)
!1544 = !DILocation(line: 483, column: 29, scope: !1519)
!1545 = !DILocation(line: 483, column: 38, scope: !1519)
!1546 = !DILocation(line: 483, column: 58, scope: !1519)
!1547 = !DILocation(line: 483, column: 72, scope: !1519)
!1548 = !DILocation(line: 483, column: 81, scope: !1519)
!1549 = !DILocation(line: 484, column: 5, scope: !1519)
!1550 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !1551)
!1551 = distinct !DILocation(line: 486, column: 5, scope: !1533)
!1552 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !1551)
!1553 = !DILocation(line: 486, column: 5, scope: !1533)
!1554 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !1555)
!1555 = distinct !DILocation(line: 486, column: 5, scope: !1533)
!1556 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !1555)
!1557 = !DILocation(line: 486, column: 5, scope: !1534)
!1558 = !DILocation(line: 486, column: 5, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1533, file: !3, line: 486, column: 5)
!1560 = !DILocation(line: 484, column: 9, scope: !1519)
!1561 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !1562)
!1562 = distinct !DILocation(line: 49, column: 21, scope: !256, inlinedAt: !1563)
!1563 = distinct !DILocation(line: 486, column: 5, scope: !1530)
!1564 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !1562)
!1565 = !DILocation(line: 49, column: 16, scope: !256, inlinedAt: !1563)
!1566 = !DILocation(line: 50, column: 19, scope: !256, inlinedAt: !1563)
!1567 = !DILocation(line: 50, column: 11, scope: !256, inlinedAt: !1563)
!1568 = !DILocation(line: 50, column: 9, scope: !256, inlinedAt: !1563)
!1569 = !DILocation(line: 486, column: 5, scope: !1530)
!1570 = !{i32 -2146206420, i32 -2146206407, i32 -2146206382, i32 -2146206358, i32 -2146206333, i32 -2146206258, i32 -2146206233, i32 -2146206089, i32 -2146202896, i32 -2146202807, i32 -2146202686, i32 -2146202591, i32 -2146202490, i32 -2146202463, i32 -2146202380, i32 -2146202291, i32 -2146202170, i32 -2146202070, i32 -2146201964, i32 -2146201856, i32 -2146205759, i32 -2146205706, i32 -2146205675, i32 -2146205644, i32 -2146205623, i32 -2146205601, i32 -2146205552, i32 -2146205531, i32 -2146205428, i32 -2146201773, i32 -2146201684, i32 -2146201563, i32 -2146201464, i32 -2146201358, i32 -2146201256, i32 -2146201223, i32 -2146201150, i32 -2146201082, i32 -2146205238, i32 -2146205179, i32 -2146205126, i32 -2146205095, i32 -2146205064, i32 -2146205043, i32 -2146205021, i32 -2146204972, i32 -2146204951, i32 -2146201042, i32 -2146200953, i32 -2146200832, i32 -2146200733, i32 -2146200627, i32 -2146200525, i32 -2146200492, i32 -2146200409, i32 -2146200320, i32 -2146200199, i32 -2146200099, i32 -2146200073, i32 -2146199970, i32 -2146199944, i32 -2146204693, i32 -2146204626, i32 -2146204601, i32 -2146204537, i32 -2146204455, i32 -2146204432, i32 -2146204407, i32 -2146204382}
!1571 = !DILocation(line: 486, column: 5, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1573, file: !3, line: 486, column: 5)
!1573 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 486, column: 5)
!1574 = !{i32 -2146203344, i32 -2146203327}
!1575 = !DILocation(line: 487, column: 9, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1519, file: !3, line: 487, column: 9)
!1577 = !DILocation(line: 487, column: 13, scope: !1576)
!1578 = !DILocation(line: 487, column: 9, scope: !1519)
!1579 = !DILocation(line: 488, column: 48, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1576, file: !3, line: 487, column: 20)
!1581 = !DILocation(line: 488, column: 39, scope: !1580)
!1582 = !DILocation(line: 488, column: 9, scope: !1580)
!1583 = !DILocation(line: 489, column: 9, scope: !1580)
!1584 = !DILocation(line: 490, column: 9, scope: !1580)
!1585 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !1586)
!1586 = distinct !DILocation(line: 493, column: 5, scope: !1541)
!1587 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !1586)
!1588 = !DILocation(line: 493, column: 5, scope: !1541)
!1589 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !1590)
!1590 = distinct !DILocation(line: 493, column: 5, scope: !1541)
!1591 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !1590)
!1592 = !DILocation(line: 493, column: 5, scope: !1542)
!1593 = !DILocation(line: 493, column: 5, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1541, file: !3, line: 493, column: 5)
!1595 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !1596)
!1596 = distinct !DILocation(line: 49, column: 21, scope: !256, inlinedAt: !1597)
!1597 = distinct !DILocation(line: 493, column: 5, scope: !1538)
!1598 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !1596)
!1599 = !DILocation(line: 49, column: 16, scope: !256, inlinedAt: !1597)
!1600 = !DILocation(line: 50, column: 19, scope: !256, inlinedAt: !1597)
!1601 = !DILocation(line: 50, column: 11, scope: !256, inlinedAt: !1597)
!1602 = !DILocation(line: 50, column: 9, scope: !256, inlinedAt: !1597)
!1603 = !DILocation(line: 493, column: 5, scope: !1538)
!1604 = !{i32 -2146193901, i32 -2146193888, i32 -2146193863, i32 -2146193839, i32 -2146193814, i32 -2146193739, i32 -2146193714, i32 -2146193570, i32 -2146190419, i32 -2146190330, i32 -2146190209, i32 -2146190114, i32 -2146190013, i32 -2146189986, i32 -2146189903, i32 -2146189814, i32 -2146189693, i32 -2146189593, i32 -2146189487, i32 -2146189379, i32 -2146193278, i32 -2146193225, i32 -2146193194, i32 -2146193163, i32 -2146193142, i32 -2146193120, i32 -2146193071, i32 -2146193050, i32 -2146189296, i32 -2146189207, i32 -2146189086, i32 -2146188987, i32 -2146188881, i32 -2146188779, i32 -2146188746, i32 -2146188673, i32 -2146188605, i32 -2146192743, i32 -2146192684, i32 -2146192631, i32 -2146192600, i32 -2146192569, i32 -2146192548, i32 -2146192526, i32 -2146192477, i32 -2146192456, i32 -2146188563, i32 -2146188474, i32 -2146188353, i32 -2146188254, i32 -2146188148, i32 -2146188046, i32 -2146188013, i32 -2146187930, i32 -2146187841, i32 -2146187720, i32 -2146187620, i32 -2146187594, i32 -2146187491, i32 -2146187465, i32 -2146192198, i32 -2146192131, i32 -2146192106, i32 -2146192042, i32 -2146191960, i32 -2146191937, i32 -2146191912, i32 -2146191887}
!1605 = !DILocation(line: 493, column: 5, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1607, file: !3, line: 493, column: 5)
!1607 = distinct !DILexicalBlock(scope: !1538, file: !3, line: 493, column: 5)
!1608 = !{i32 -2146190872, i32 -2146190855}
!1609 = !DILocation(line: 494, column: 9, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1519, file: !3, line: 494, column: 9)
!1611 = !DILocation(line: 494, column: 13, scope: !1610)
!1612 = !DILocation(line: 494, column: 9, scope: !1519)
!1613 = !DILocation(line: 495, column: 50, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1610, file: !3, line: 494, column: 20)
!1615 = !DILocation(line: 495, column: 41, scope: !1614)
!1616 = !DILocation(line: 495, column: 9, scope: !1614)
!1617 = !DILocation(line: 496, column: 9, scope: !1614)
!1618 = !DILocation(line: 497, column: 9, scope: !1614)
!1619 = !DILocation(line: 0, scope: !1519)
!1620 = !DILocation(line: 500, column: 1, scope: !1519)
!1621 = distinct !DISubprogram(name: "anetTcpAccept", scope: !3, file: !3, line: 613, type: !1622, isLocal: false, isDefinition: true, scopeLine: 613, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1624)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!7, !80, !7, !80, !561, !6}
!1624 = !{!1625, !1626, !1627, !1628, !1629, !1630, !1631, !1634}
!1625 = !DILocalVariable(name: "err", arg: 1, scope: !1621, file: !3, line: 613, type: !80)
!1626 = !DILocalVariable(name: "s", arg: 2, scope: !1621, file: !3, line: 613, type: !7)
!1627 = !DILocalVariable(name: "ip", arg: 3, scope: !1621, file: !3, line: 613, type: !80)
!1628 = !DILocalVariable(name: "ip_len", arg: 4, scope: !1621, file: !3, line: 613, type: !561)
!1629 = !DILocalVariable(name: "port", arg: 5, scope: !1621, file: !3, line: 613, type: !6)
!1630 = !DILocalVariable(name: "fd", scope: !1621, file: !3, line: 614, type: !7)
!1631 = !DILocalVariable(name: "s", scope: !1632, file: !3, line: 619, type: !16)
!1632 = distinct !DILexicalBlock(scope: !1633, file: !3, line: 618, column: 34)
!1633 = distinct !DILexicalBlock(scope: !1621, file: !3, line: 618, column: 9)
!1634 = !DILocalVariable(name: "s", scope: !1635, file: !3, line: 623, type: !49)
!1635 = distinct !DILexicalBlock(scope: !1633, file: !3, line: 622, column: 12)
!1636 = !DILocation(line: 613, column: 25, scope: !1621)
!1637 = !DILocation(line: 613, column: 34, scope: !1621)
!1638 = !DILocation(line: 613, column: 43, scope: !1621)
!1639 = !DILocation(line: 613, column: 54, scope: !1621)
!1640 = !DILocation(line: 613, column: 67, scope: !1621)
!1641 = !DILocation(line: 615, column: 15, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1621, file: !3, line: 615, column: 9)
!1643 = !DILocation(line: 614, column: 9, scope: !1621)
!1644 = !DILocation(line: 615, column: 70, scope: !1642)
!1645 = !DILocation(line: 615, column: 9, scope: !1621)
!1646 = !DILocation(line: 618, column: 12, scope: !1633)
!1647 = !{!1648, !135, i64 1}
!1648 = !{!"sockaddr_storage", !135, i64 0, !135, i64 1, !135, i64 2, !135, i64 4, !135, i64 16}
!1649 = !DILocation(line: 618, column: 22, scope: !1633)
!1650 = !DILocation(line: 0, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1635, file: !3, line: 624, column: 13)
!1652 = !DILocation(line: 618, column: 9, scope: !1621)
!1653 = !DILocation(line: 620, column: 13, scope: !1632)
!1654 = !DILocation(line: 620, column: 60, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1632, file: !3, line: 620, column: 13)
!1656 = !DILocation(line: 620, column: 17, scope: !1655)
!1657 = !DILocation(line: 621, column: 13, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1632, file: !3, line: 621, column: 13)
!1659 = !DILocation(line: 621, column: 13, scope: !1632)
!1660 = !DILocation(line: 621, column: 27, scope: !1658)
!1661 = !{!1662, !1663, i64 2}
!1662 = !{!"sockaddr_in", !135, i64 0, !135, i64 1, !1663, i64 2, !1664, i64 4, !135, i64 8}
!1663 = !{!"short", !135, i64 0}
!1664 = !{!"in_addr", !134, i64 0}
!1665 = !DILocation(line: 621, column: 25, scope: !1658)
!1666 = !DILocation(line: 621, column: 19, scope: !1658)
!1667 = !DILocation(line: 624, column: 13, scope: !1635)
!1668 = !DILocation(line: 624, column: 62, scope: !1651)
!1669 = !DILocation(line: 624, column: 17, scope: !1651)
!1670 = !DILocation(line: 625, column: 13, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1635, file: !3, line: 625, column: 13)
!1672 = !DILocation(line: 625, column: 13, scope: !1635)
!1673 = !DILocation(line: 625, column: 27, scope: !1671)
!1674 = !{!1675, !1663, i64 2}
!1675 = !{!"sockaddr_in6", !135, i64 0, !135, i64 1, !1663, i64 2, !134, i64 4, !1676, i64 8, !134, i64 24}
!1676 = !{!"in6_addr", !135, i64 0}
!1677 = !DILocation(line: 625, column: 25, scope: !1671)
!1678 = !DILocation(line: 625, column: 19, scope: !1671)
!1679 = !DILocation(line: 628, column: 1, scope: !1621)
!1680 = distinct !DISubprogram(name: "anetGenericAccept", scope: !3, file: !3, line: 594, type: !1681, isLocal: true, isDefinition: true, scopeLine: 594, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1684)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{!7, !80, !7, !71, !1683}
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!1684 = !{!1685, !1686, !1687, !1688, !1689, !1690, !1697, !1698}
!1685 = !DILocalVariable(name: "err", arg: 1, scope: !1680, file: !3, line: 594, type: !80)
!1686 = !DILocalVariable(name: "s", arg: 2, scope: !1680, file: !3, line: 594, type: !7)
!1687 = !DILocalVariable(name: "sa", arg: 3, scope: !1680, file: !3, line: 594, type: !71)
!1688 = !DILocalVariable(name: "len", arg: 4, scope: !1680, file: !3, line: 594, type: !1683)
!1689 = !DILocalVariable(name: "fd", scope: !1680, file: !3, line: 595, type: !7)
!1690 = !DILocalVariable(name: "tid", scope: !1691, file: !3, line: 597, type: !41)
!1691 = distinct !DILexicalBlock(scope: !1692, file: !3, line: 597, column: 2)
!1692 = distinct !DILexicalBlock(scope: !1693, file: !3, line: 597, column: 2)
!1693 = distinct !DILexicalBlock(scope: !1694, file: !3, line: 597, column: 2)
!1694 = distinct !DILexicalBlock(scope: !1695, file: !3, line: 597, column: 2)
!1695 = distinct !DILexicalBlock(scope: !1696, file: !3, line: 597, column: 2)
!1696 = distinct !DILexicalBlock(scope: !1680, file: !3, line: 596, column: 14)
!1697 = !DILocalVariable(name: "_ret", scope: !1691, file: !3, line: 597, type: !13)
!1698 = !DILocalVariable(name: "_arg3", scope: !1691, file: !3, line: 597, type: !13)
!1699 = !DILocation(line: 594, column: 36, scope: !1680)
!1700 = !DILocation(line: 594, column: 45, scope: !1680)
!1701 = !DILocation(line: 594, column: 65, scope: !1680)
!1702 = !DILocation(line: 594, column: 80, scope: !1680)
!1703 = !DILocation(line: 595, column: 5, scope: !1680)
!1704 = !DILocation(line: 596, column: 5, scope: !1680)
!1705 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !1706)
!1706 = distinct !DILocation(line: 597, column: 2, scope: !1694)
!1707 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !1706)
!1708 = !DILocation(line: 597, column: 2, scope: !1694)
!1709 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !1710)
!1710 = distinct !DILocation(line: 597, column: 2, scope: !1694)
!1711 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !1710)
!1712 = !DILocation(line: 597, column: 2, scope: !1695)
!1713 = !DILocation(line: 597, column: 2, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1694, file: !3, line: 597, column: 2)
!1715 = !DILocation(line: 595, column: 9, scope: !1680)
!1716 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !1717)
!1717 = distinct !DILocation(line: 49, column: 21, scope: !256, inlinedAt: !1718)
!1718 = distinct !DILocation(line: 597, column: 2, scope: !1691)
!1719 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !1717)
!1720 = !DILocation(line: 49, column: 16, scope: !256, inlinedAt: !1718)
!1721 = !DILocation(line: 50, column: 19, scope: !256, inlinedAt: !1718)
!1722 = !DILocation(line: 50, column: 11, scope: !256, inlinedAt: !1718)
!1723 = !DILocation(line: 50, column: 9, scope: !256, inlinedAt: !1718)
!1724 = !DILocation(line: 597, column: 2, scope: !1691)
!1725 = !{i32 -2146149547, i32 -2146149534, i32 -2146149509, i32 -2146149485, i32 -2146149460, i32 -2146149385, i32 -2146149360, i32 -2146149216, i32 -2146146027, i32 -2146145938, i32 -2146145817, i32 -2146145722, i32 -2146145621, i32 -2146145594, i32 -2146145511, i32 -2146145422, i32 -2146145301, i32 -2146145201, i32 -2146145095, i32 -2146144987, i32 -2146148886, i32 -2146148833, i32 -2146148802, i32 -2146148771, i32 -2146148750, i32 -2146148728, i32 -2146148679, i32 -2146148658, i32 -2146148555, i32 -2146144904, i32 -2146144815, i32 -2146144694, i32 -2146144595, i32 -2146144489, i32 -2146144387, i32 -2146144354, i32 -2146144281, i32 -2146144213, i32 -2146148365, i32 -2146148306, i32 -2146148253, i32 -2146148222, i32 -2146148191, i32 -2146148170, i32 -2146148148, i32 -2146148099, i32 -2146148078, i32 -2146144171, i32 -2146144082, i32 -2146143961, i32 -2146143862, i32 -2146143756, i32 -2146143654, i32 -2146143621, i32 -2146143538, i32 -2146143449, i32 -2146143328, i32 -2146143228, i32 -2146143202, i32 -2146143099, i32 -2146143073, i32 -2146147820, i32 -2146147753, i32 -2146147728, i32 -2146147664, i32 -2146147582, i32 -2146147559, i32 -2146147534, i32 -2146147509}
!1726 = !DILocation(line: 597, column: 2, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1728, file: !3, line: 597, column: 2)
!1728 = distinct !DILexicalBlock(scope: !1691, file: !3, line: 597, column: 2)
!1729 = !{i32 -2146146471, i32 -2146146454}
!1730 = !DILocation(line: 598, column: 13, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1696, file: !3, line: 598, column: 13)
!1732 = !DILocation(line: 598, column: 16, scope: !1731)
!1733 = !DILocation(line: 598, column: 13, scope: !1696)
!1734 = !DILocation(line: 599, column: 17, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1736, file: !3, line: 599, column: 17)
!1736 = distinct !DILexicalBlock(scope: !1731, file: !3, line: 598, column: 23)
!1737 = !DILocation(line: 599, column: 23, scope: !1735)
!1738 = !DILocation(line: 599, column: 17, scope: !1736)
!1739 = distinct !{!1739, !1704, !1740}
!1740 = !DILocation(line: 607, column: 5, scope: !1680)
!1741 = !DILocation(line: 602, column: 58, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1735, file: !3, line: 601, column: 18)
!1743 = !DILocation(line: 602, column: 49, scope: !1742)
!1744 = !DILocation(line: 602, column: 17, scope: !1742)
!1745 = !DILocation(line: 603, column: 17, scope: !1742)
!1746 = !DILocation(line: 609, column: 1, scope: !1680)
!1747 = distinct !DISubprogram(name: "anetUnixAccept", scope: !3, file: !3, line: 630, type: !191, isLocal: false, isDefinition: true, scopeLine: 630, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1748)
!1748 = !{!1749, !1750, !1751, !1752, !1753}
!1749 = !DILocalVariable(name: "err", arg: 1, scope: !1747, file: !3, line: 630, type: !80)
!1750 = !DILocalVariable(name: "s", arg: 2, scope: !1747, file: !3, line: 630, type: !7)
!1751 = !DILocalVariable(name: "fd", scope: !1747, file: !3, line: 631, type: !7)
!1752 = !DILocalVariable(name: "sa", scope: !1747, file: !3, line: 632, type: !1005)
!1753 = !DILocalVariable(name: "salen", scope: !1747, file: !3, line: 633, type: !90)
!1754 = !DILocation(line: 630, column: 26, scope: !1747)
!1755 = !DILocation(line: 630, column: 35, scope: !1747)
!1756 = !DILocation(line: 632, column: 5, scope: !1747)
!1757 = !DILocation(line: 633, column: 5, scope: !1747)
!1758 = !DILocation(line: 633, column: 15, scope: !1747)
!1759 = !DILocation(line: 634, column: 39, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1747, file: !3, line: 634, column: 9)
!1761 = !DILocation(line: 634, column: 15, scope: !1760)
!1762 = !DILocation(line: 631, column: 9, scope: !1747)
!1763 = !DILocation(line: 638, column: 1, scope: !1747)
!1764 = distinct !DISubprogram(name: "anetPeerToString", scope: !3, file: !3, line: 640, type: !1765, isLocal: false, isDefinition: true, scopeLine: 640, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1767)
!1765 = !DISubroutineType(types: !1766)
!1766 = !{!7, !7, !80, !561, !6}
!1767 = !{!1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1781, !1782, !1783, !1786}
!1768 = !DILocalVariable(name: "fd", arg: 1, scope: !1764, file: !3, line: 640, type: !7)
!1769 = !DILocalVariable(name: "ip", arg: 2, scope: !1764, file: !3, line: 640, type: !80)
!1770 = !DILocalVariable(name: "ip_len", arg: 3, scope: !1764, file: !3, line: 640, type: !561)
!1771 = !DILocalVariable(name: "port", arg: 4, scope: !1764, file: !3, line: 640, type: !6)
!1772 = !DILocalVariable(name: "sa", scope: !1764, file: !3, line: 641, type: !98)
!1773 = !DILocalVariable(name: "salen", scope: !1764, file: !3, line: 642, type: !90)
!1774 = !DILocalVariable(name: "ret", scope: !1764, file: !3, line: 643, type: !7)
!1775 = !DILocalVariable(name: "tid", scope: !1776, file: !3, line: 644, type: !41)
!1776 = distinct !DILexicalBlock(scope: !1777, file: !3, line: 644, column: 5)
!1777 = distinct !DILexicalBlock(scope: !1778, file: !3, line: 644, column: 5)
!1778 = distinct !DILexicalBlock(scope: !1779, file: !3, line: 644, column: 5)
!1779 = distinct !DILexicalBlock(scope: !1780, file: !3, line: 644, column: 5)
!1780 = distinct !DILexicalBlock(scope: !1764, file: !3, line: 644, column: 5)
!1781 = !DILocalVariable(name: "_ret", scope: !1776, file: !3, line: 644, type: !13)
!1782 = !DILocalVariable(name: "_arg3", scope: !1776, file: !3, line: 644, type: !13)
!1783 = !DILocalVariable(name: "s", scope: !1784, file: !3, line: 651, type: !16)
!1784 = distinct !DILexicalBlock(scope: !1785, file: !3, line: 650, column: 34)
!1785 = distinct !DILexicalBlock(scope: !1764, file: !3, line: 650, column: 9)
!1786 = !DILocalVariable(name: "s", scope: !1787, file: !3, line: 655, type: !49)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !3, line: 654, column: 42)
!1788 = distinct !DILexicalBlock(scope: !1785, file: !3, line: 654, column: 16)
!1789 = !DILocation(line: 640, column: 26, scope: !1764)
!1790 = !DILocation(line: 640, column: 36, scope: !1764)
!1791 = !DILocation(line: 640, column: 47, scope: !1764)
!1792 = !DILocation(line: 640, column: 60, scope: !1764)
!1793 = !DILocation(line: 641, column: 5, scope: !1764)
!1794 = !DILocation(line: 642, column: 5, scope: !1764)
!1795 = !DILocation(line: 642, column: 15, scope: !1764)
!1796 = !DILocation(line: 643, column: 5, scope: !1764)
!1797 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !1798)
!1798 = distinct !DILocation(line: 644, column: 5, scope: !1779)
!1799 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !1798)
!1800 = !DILocation(line: 644, column: 5, scope: !1779)
!1801 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !1802)
!1802 = distinct !DILocation(line: 644, column: 5, scope: !1779)
!1803 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !1802)
!1804 = !DILocation(line: 644, column: 5, scope: !1780)
!1805 = !DILocation(line: 644, column: 5, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1779, file: !3, line: 644, column: 5)
!1807 = !DILocation(line: 643, column: 9, scope: !1764)
!1808 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !1809)
!1809 = distinct !DILocation(line: 49, column: 21, scope: !256, inlinedAt: !1810)
!1810 = distinct !DILocation(line: 644, column: 5, scope: !1776)
!1811 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !1809)
!1812 = !DILocation(line: 49, column: 16, scope: !256, inlinedAt: !1810)
!1813 = !DILocation(line: 50, column: 19, scope: !256, inlinedAt: !1810)
!1814 = !DILocation(line: 50, column: 11, scope: !256, inlinedAt: !1810)
!1815 = !DILocation(line: 50, column: 9, scope: !256, inlinedAt: !1810)
!1816 = !DILocation(line: 644, column: 5, scope: !1776)
!1817 = !{i32 -2146140380, i32 -2146140367, i32 -2146140342, i32 -2146140318, i32 -2146140293, i32 -2146140218, i32 -2146140193, i32 -2146140049, i32 -2146136818, i32 -2146136729, i32 -2146136608, i32 -2146136513, i32 -2146136412, i32 -2146136385, i32 -2146136302, i32 -2146136213, i32 -2146136092, i32 -2146135992, i32 -2146135886, i32 -2146135778, i32 -2146139719, i32 -2146139666, i32 -2146139635, i32 -2146139604, i32 -2146139583, i32 -2146139561, i32 -2146139512, i32 -2146139491, i32 -2146139388, i32 -2146135695, i32 -2146135606, i32 -2146135485, i32 -2146135386, i32 -2146135280, i32 -2146135178, i32 -2146135145, i32 -2146135072, i32 -2146135004, i32 -2146139198, i32 -2146139139, i32 -2146139086, i32 -2146139055, i32 -2146139024, i32 -2146139003, i32 -2146138981, i32 -2146138932, i32 -2146138911, i32 -2146134957, i32 -2146134868, i32 -2146134747, i32 -2146134648, i32 -2146134542, i32 -2146134440, i32 -2146134407, i32 -2146134324, i32 -2146134235, i32 -2146134114, i32 -2146134014, i32 -2146133988, i32 -2146133885, i32 -2146133859, i32 -2146138653, i32 -2146138586, i32 -2146138561, i32 -2146138497, i32 -2146138415, i32 -2146138392, i32 -2146138367, i32 -2146138342}
!1818 = !DILocation(line: 644, column: 5, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1820, file: !3, line: 644, column: 5)
!1820 = distinct !DILexicalBlock(scope: !1776, file: !3, line: 644, column: 5)
!1821 = !{i32 -2146137304, i32 -2146137287}
!1822 = !DILocation(line: 647, column: 9, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1764, file: !3, line: 647, column: 9)
!1824 = !DILocation(line: 647, column: 13, scope: !1823)
!1825 = !DILocation(line: 648, column: 16, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1764, file: !3, line: 648, column: 9)
!1827 = !DILocation(line: 647, column: 9, scope: !1764)
!1828 = !DILocation(line: 650, column: 12, scope: !1785)
!1829 = !DILocation(line: 650, column: 9, scope: !1764)
!1830 = !DILocation(line: 652, column: 13, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1784, file: !3, line: 652, column: 13)
!1832 = !DILocation(line: 652, column: 13, scope: !1784)
!1833 = !DILocation(line: 651, column: 29, scope: !1784)
!1834 = !DILocation(line: 652, column: 47, scope: !1831)
!1835 = !DILocation(line: 652, column: 35, scope: !1831)
!1836 = !DILocation(line: 652, column: 60, scope: !1831)
!1837 = !DILocation(line: 652, column: 17, scope: !1831)
!1838 = !DILocation(line: 653, column: 13, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1784, file: !3, line: 653, column: 13)
!1840 = !DILocation(line: 653, column: 13, scope: !1784)
!1841 = !DILocation(line: 653, column: 27, scope: !1839)
!1842 = !DILocation(line: 653, column: 25, scope: !1839)
!1843 = !DILocation(line: 653, column: 19, scope: !1839)
!1844 = !DILocation(line: 656, column: 13, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1787, file: !3, line: 656, column: 13)
!1846 = !DILocation(line: 656, column: 13, scope: !1787)
!1847 = !DILocation(line: 655, column: 30, scope: !1787)
!1848 = !DILocation(line: 656, column: 48, scope: !1845)
!1849 = !DILocation(line: 656, column: 36, scope: !1845)
!1850 = !DILocation(line: 656, column: 62, scope: !1845)
!1851 = !DILocation(line: 656, column: 17, scope: !1845)
!1852 = !DILocation(line: 657, column: 13, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1787, file: !3, line: 657, column: 13)
!1854 = !DILocation(line: 657, column: 13, scope: !1787)
!1855 = !DILocation(line: 657, column: 27, scope: !1853)
!1856 = !DILocation(line: 657, column: 25, scope: !1853)
!1857 = !DILocation(line: 657, column: 19, scope: !1853)
!1858 = !DILocation(line: 659, column: 13, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1860, file: !3, line: 659, column: 13)
!1860 = distinct !DILexicalBlock(scope: !1861, file: !3, line: 658, column: 41)
!1861 = distinct !DILexicalBlock(scope: !1788, file: !3, line: 658, column: 16)
!1862 = !DILocation(line: 659, column: 13, scope: !1860)
!1863 = !DILocation(line: 659, column: 17, scope: !1859)
!1864 = !DILocation(line: 660, column: 13, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1860, file: !3, line: 660, column: 13)
!1866 = !DILocation(line: 660, column: 13, scope: !1860)
!1867 = !DILocation(line: 660, column: 25, scope: !1865)
!1868 = !DILocation(line: 660, column: 19, scope: !1865)
!1869 = !DILocation(line: 667, column: 9, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1764, file: !3, line: 667, column: 9)
!1871 = !DILocation(line: 667, column: 9, scope: !1764)
!1872 = !DILocation(line: 668, column: 20, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1874, file: !3, line: 668, column: 13)
!1874 = distinct !DILexicalBlock(scope: !1870, file: !3, line: 667, column: 13)
!1875 = !DILocation(line: 668, column: 13, scope: !1874)
!1876 = !DILocation(line: 669, column: 19, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1873, file: !3, line: 668, column: 26)
!1878 = !{!135, !135, i64 0}
!1879 = !DILocation(line: 670, column: 13, scope: !1877)
!1880 = !DILocation(line: 670, column: 19, scope: !1877)
!1881 = !DILocation(line: 671, column: 9, scope: !1877)
!1882 = !DILocation(line: 671, column: 27, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1873, file: !3, line: 671, column: 20)
!1884 = !DILocation(line: 671, column: 20, scope: !1873)
!1885 = !DILocation(line: 672, column: 19, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1883, file: !3, line: 671, column: 33)
!1887 = !DILocation(line: 673, column: 9, scope: !1886)
!1888 = !DILocation(line: 675, column: 9, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1764, file: !3, line: 675, column: 9)
!1890 = !DILocation(line: 675, column: 9, scope: !1764)
!1891 = !DILocation(line: 675, column: 21, scope: !1889)
!1892 = !DILocation(line: 675, column: 15, scope: !1889)
!1893 = !DILocation(line: 0, scope: !1764)
!1894 = !DILocation(line: 677, column: 1, scope: !1764)
!1895 = distinct !DISubprogram(name: "anetFormatAddr", scope: !3, file: !3, line: 682, type: !1896, isLocal: false, isDefinition: true, scopeLine: 682, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1898)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{!7, !80, !561, !80, !7}
!1898 = !{!1899, !1900, !1901, !1902}
!1899 = !DILocalVariable(name: "buf", arg: 1, scope: !1895, file: !3, line: 682, type: !80)
!1900 = !DILocalVariable(name: "buf_len", arg: 2, scope: !1895, file: !3, line: 682, type: !561)
!1901 = !DILocalVariable(name: "ip", arg: 3, scope: !1895, file: !3, line: 682, type: !80)
!1902 = !DILocalVariable(name: "port", arg: 4, scope: !1895, file: !3, line: 682, type: !7)
!1903 = !DILocation(line: 682, column: 26, scope: !1895)
!1904 = !DILocation(line: 682, column: 38, scope: !1895)
!1905 = !DILocation(line: 682, column: 53, scope: !1895)
!1906 = !DILocation(line: 682, column: 61, scope: !1895)
!1907 = !DILocation(line: 683, column: 34, scope: !1895)
!1908 = !DILocation(line: 683, column: 12, scope: !1895)
!1909 = !DILocation(line: 683, column: 5, scope: !1895)
!1910 = distinct !DISubprogram(name: "anetFormatPeer", scope: !3, file: !3, line: 688, type: !1911, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1913)
!1911 = !DISubroutineType(types: !1912)
!1912 = !{!7, !7, !80, !561}
!1913 = !{!1914, !1915, !1916, !1917, !1921}
!1914 = !DILocalVariable(name: "fd", arg: 1, scope: !1910, file: !3, line: 688, type: !7)
!1915 = !DILocalVariable(name: "buf", arg: 2, scope: !1910, file: !3, line: 688, type: !80)
!1916 = !DILocalVariable(name: "buf_len", arg: 3, scope: !1910, file: !3, line: 688, type: !561)
!1917 = !DILocalVariable(name: "ip", scope: !1910, file: !3, line: 689, type: !1918)
!1918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 368, elements: !1919)
!1919 = !{!1920}
!1920 = !DISubrange(count: 46)
!1921 = !DILocalVariable(name: "port", scope: !1910, file: !3, line: 690, type: !7)
!1922 = !DILocation(line: 688, column: 24, scope: !1910)
!1923 = !DILocation(line: 688, column: 34, scope: !1910)
!1924 = !DILocation(line: 688, column: 46, scope: !1910)
!1925 = !DILocation(line: 689, column: 5, scope: !1910)
!1926 = !DILocation(line: 689, column: 10, scope: !1910)
!1927 = !DILocation(line: 690, column: 5, scope: !1910)
!1928 = !DILocation(line: 690, column: 9, scope: !1910)
!1929 = !DILocation(line: 692, column: 5, scope: !1910)
!1930 = !DILocation(line: 693, column: 45, scope: !1910)
!1931 = !DILocation(line: 682, column: 26, scope: !1895, inlinedAt: !1932)
!1932 = distinct !DILocation(line: 693, column: 12, scope: !1910)
!1933 = !DILocation(line: 682, column: 38, scope: !1895, inlinedAt: !1932)
!1934 = !DILocation(line: 682, column: 53, scope: !1895, inlinedAt: !1932)
!1935 = !DILocation(line: 682, column: 61, scope: !1895, inlinedAt: !1932)
!1936 = !DILocation(line: 683, column: 34, scope: !1895, inlinedAt: !1932)
!1937 = !DILocation(line: 683, column: 12, scope: !1895, inlinedAt: !1932)
!1938 = !DILocation(line: 694, column: 1, scope: !1910)
!1939 = !DILocation(line: 693, column: 5, scope: !1910)
!1940 = distinct !DISubprogram(name: "anetSockName", scope: !3, file: !3, line: 696, type: !1765, isLocal: false, isDefinition: true, scopeLine: 696, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1941)
!1941 = !{!1942, !1943, !1944, !1945, !1946, !1947, !1948, !1951}
!1942 = !DILocalVariable(name: "fd", arg: 1, scope: !1940, file: !3, line: 696, type: !7)
!1943 = !DILocalVariable(name: "ip", arg: 2, scope: !1940, file: !3, line: 696, type: !80)
!1944 = !DILocalVariable(name: "ip_len", arg: 3, scope: !1940, file: !3, line: 696, type: !561)
!1945 = !DILocalVariable(name: "port", arg: 4, scope: !1940, file: !3, line: 696, type: !6)
!1946 = !DILocalVariable(name: "sa", scope: !1940, file: !3, line: 697, type: !98)
!1947 = !DILocalVariable(name: "salen", scope: !1940, file: !3, line: 698, type: !90)
!1948 = !DILocalVariable(name: "s", scope: !1949, file: !3, line: 707, type: !16)
!1949 = distinct !DILexicalBlock(scope: !1950, file: !3, line: 706, column: 34)
!1950 = distinct !DILexicalBlock(scope: !1940, file: !3, line: 706, column: 9)
!1951 = !DILocalVariable(name: "s", scope: !1952, file: !3, line: 711, type: !49)
!1952 = distinct !DILexicalBlock(scope: !1950, file: !3, line: 710, column: 12)
!1953 = !DILocation(line: 696, column: 22, scope: !1940)
!1954 = !DILocation(line: 696, column: 32, scope: !1940)
!1955 = !DILocation(line: 696, column: 43, scope: !1940)
!1956 = !DILocation(line: 696, column: 56, scope: !1940)
!1957 = !DILocation(line: 697, column: 5, scope: !1940)
!1958 = !DILocation(line: 698, column: 5, scope: !1940)
!1959 = !DILocation(line: 698, column: 15, scope: !1940)
!1960 = !DILocation(line: 700, column: 24, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1940, file: !3, line: 700, column: 9)
!1962 = !DILocation(line: 700, column: 9, scope: !1961)
!1963 = !DILocation(line: 700, column: 54, scope: !1961)
!1964 = !DILocation(line: 700, column: 9, scope: !1940)
!1965 = !DILocation(line: 701, column: 13, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1967, file: !3, line: 701, column: 13)
!1967 = distinct !DILexicalBlock(scope: !1961, file: !3, line: 700, column: 61)
!1968 = !DILocation(line: 701, column: 13, scope: !1967)
!1969 = !DILocation(line: 701, column: 25, scope: !1966)
!1970 = !DILocation(line: 701, column: 19, scope: !1966)
!1971 = !DILocation(line: 702, column: 15, scope: !1967)
!1972 = !DILocation(line: 703, column: 9, scope: !1967)
!1973 = !DILocation(line: 703, column: 15, scope: !1967)
!1974 = !DILocation(line: 704, column: 9, scope: !1967)
!1975 = !DILocation(line: 706, column: 12, scope: !1950)
!1976 = !DILocation(line: 706, column: 22, scope: !1950)
!1977 = !DILocation(line: 0, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1952, file: !3, line: 712, column: 13)
!1979 = !DILocation(line: 706, column: 9, scope: !1940)
!1980 = !DILocation(line: 708, column: 13, scope: !1949)
!1981 = !DILocation(line: 707, column: 29, scope: !1949)
!1982 = !DILocation(line: 708, column: 47, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1949, file: !3, line: 708, column: 13)
!1984 = !DILocation(line: 708, column: 35, scope: !1983)
!1985 = !DILocation(line: 708, column: 60, scope: !1983)
!1986 = !DILocation(line: 708, column: 17, scope: !1983)
!1987 = !DILocation(line: 709, column: 13, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1949, file: !3, line: 709, column: 13)
!1989 = !DILocation(line: 709, column: 13, scope: !1949)
!1990 = !DILocation(line: 709, column: 27, scope: !1988)
!1991 = !DILocation(line: 709, column: 25, scope: !1988)
!1992 = !DILocation(line: 709, column: 19, scope: !1988)
!1993 = !DILocation(line: 712, column: 13, scope: !1952)
!1994 = !DILocation(line: 711, column: 30, scope: !1952)
!1995 = !DILocation(line: 712, column: 48, scope: !1978)
!1996 = !DILocation(line: 712, column: 36, scope: !1978)
!1997 = !DILocation(line: 712, column: 62, scope: !1978)
!1998 = !DILocation(line: 712, column: 17, scope: !1978)
!1999 = !DILocation(line: 713, column: 13, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !1952, file: !3, line: 713, column: 13)
!2001 = !DILocation(line: 713, column: 13, scope: !1952)
!2002 = !DILocation(line: 713, column: 27, scope: !2000)
!2003 = !DILocation(line: 713, column: 25, scope: !2000)
!2004 = !DILocation(line: 713, column: 19, scope: !2000)
!2005 = !DILocation(line: 0, scope: !1940)
!2006 = !DILocation(line: 716, column: 1, scope: !1940)
!2007 = distinct !DISubprogram(name: "anetFormatSock", scope: !3, file: !3, line: 718, type: !1911, isLocal: false, isDefinition: true, scopeLine: 718, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2008)
!2008 = !{!2009, !2010, !2011, !2012, !2013}
!2009 = !DILocalVariable(name: "fd", arg: 1, scope: !2007, file: !3, line: 718, type: !7)
!2010 = !DILocalVariable(name: "fmt", arg: 2, scope: !2007, file: !3, line: 718, type: !80)
!2011 = !DILocalVariable(name: "fmt_len", arg: 3, scope: !2007, file: !3, line: 718, type: !561)
!2012 = !DILocalVariable(name: "ip", scope: !2007, file: !3, line: 719, type: !1918)
!2013 = !DILocalVariable(name: "port", scope: !2007, file: !3, line: 720, type: !7)
!2014 = !DILocation(line: 718, column: 24, scope: !2007)
!2015 = !DILocation(line: 718, column: 34, scope: !2007)
!2016 = !DILocation(line: 718, column: 46, scope: !2007)
!2017 = !DILocation(line: 719, column: 5, scope: !2007)
!2018 = !DILocation(line: 719, column: 10, scope: !2007)
!2019 = !DILocation(line: 720, column: 5, scope: !2007)
!2020 = !DILocation(line: 720, column: 9, scope: !2007)
!2021 = !DILocation(line: 722, column: 5, scope: !2007)
!2022 = !DILocation(line: 723, column: 45, scope: !2007)
!2023 = !DILocation(line: 682, column: 26, scope: !1895, inlinedAt: !2024)
!2024 = distinct !DILocation(line: 723, column: 12, scope: !2007)
!2025 = !DILocation(line: 682, column: 38, scope: !1895, inlinedAt: !2024)
!2026 = !DILocation(line: 682, column: 53, scope: !1895, inlinedAt: !2024)
!2027 = !DILocation(line: 682, column: 61, scope: !1895, inlinedAt: !2024)
!2028 = !DILocation(line: 683, column: 34, scope: !1895, inlinedAt: !2024)
!2029 = !DILocation(line: 683, column: 12, scope: !1895, inlinedAt: !2024)
!2030 = !DILocation(line: 724, column: 1, scope: !2007)
!2031 = !DILocation(line: 723, column: 5, scope: !2007)
!2032 = distinct !DISubprogram(name: "anetSetReuseAddr", scope: !3, file: !3, line: 269, type: !191, isLocal: true, isDefinition: true, scopeLine: 269, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2033)
!2033 = !{!2034, !2035, !2036, !2037, !2038, !2039, !2045, !2046, !2047, !2048}
!2034 = !DILocalVariable(name: "err", arg: 1, scope: !2032, file: !3, line: 269, type: !80)
!2035 = !DILocalVariable(name: "fd", arg: 2, scope: !2032, file: !3, line: 269, type: !7)
!2036 = !DILocalVariable(name: "yes", scope: !2032, file: !3, line: 270, type: !7)
!2037 = !DILocalVariable(name: "_dss_yes", scope: !2032, file: !3, line: 271, type: !6)
!2038 = !DILocalVariable(name: "ret", scope: !2032, file: !3, line: 275, type: !7)
!2039 = !DILocalVariable(name: "tid", scope: !2040, file: !3, line: 276, type: !41)
!2040 = distinct !DILexicalBlock(scope: !2041, file: !3, line: 276, column: 5)
!2041 = distinct !DILexicalBlock(scope: !2042, file: !3, line: 276, column: 5)
!2042 = distinct !DILexicalBlock(scope: !2043, file: !3, line: 276, column: 5)
!2043 = distinct !DILexicalBlock(scope: !2044, file: !3, line: 276, column: 5)
!2044 = distinct !DILexicalBlock(scope: !2032, file: !3, line: 276, column: 5)
!2045 = !DILocalVariable(name: "_ret", scope: !2040, file: !3, line: 276, type: !13)
!2046 = !DILocalVariable(name: "_arg3", scope: !2040, file: !3, line: 276, type: !13)
!2047 = !DILocalVariable(name: "_arg4", scope: !2040, file: !3, line: 276, type: !13)
!2048 = !DILocalVariable(name: "_arg5", scope: !2040, file: !3, line: 276, type: !13)
!2049 = !DILocation(line: 269, column: 35, scope: !2032)
!2050 = !DILocation(line: 269, column: 44, scope: !2032)
!2051 = !DILocation(line: 270, column: 5, scope: !2032)
!2052 = !DILocation(line: 271, column: 30, scope: !2032)
!2053 = !DILocation(line: 271, column: 49, scope: !2032)
!2054 = !DILocation(line: 271, column: 21, scope: !2032)
!2055 = !DILocation(line: 271, column: 10, scope: !2032)
!2056 = !DILocation(line: 272, column: 17, scope: !2032)
!2057 = !DILocation(line: 275, column: 5, scope: !2032)
!2058 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !2059)
!2059 = distinct !DILocation(line: 276, column: 5, scope: !2043)
!2060 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !2059)
!2061 = !DILocation(line: 276, column: 5, scope: !2043)
!2062 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !2063)
!2063 = distinct !DILocation(line: 276, column: 5, scope: !2043)
!2064 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !2063)
!2065 = !DILocation(line: 276, column: 5, scope: !2044)
!2066 = !DILocation(line: 276, column: 5, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2043, file: !3, line: 276, column: 5)
!2068 = !DILocation(line: 275, column: 9, scope: !2032)
!2069 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !2070)
!2070 = distinct !DILocation(line: 49, column: 21, scope: !256, inlinedAt: !2071)
!2071 = distinct !DILocation(line: 276, column: 5, scope: !2040)
!2072 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !2070)
!2073 = !DILocation(line: 49, column: 16, scope: !256, inlinedAt: !2071)
!2074 = !DILocation(line: 50, column: 19, scope: !256, inlinedAt: !2071)
!2075 = !DILocation(line: 50, column: 11, scope: !256, inlinedAt: !2071)
!2076 = !DILocation(line: 50, column: 9, scope: !256, inlinedAt: !2071)
!2077 = !DILocation(line: 276, column: 5, scope: !2040)
!2078 = !{i32 -2146251518, i32 -2146251505, i32 -2146251480, i32 -2146251456, i32 -2146251431, i32 -2146251356, i32 -2146251331, i32 -2146251187, i32 -2146251162, i32 -2146247755, i32 -2146247666, i32 -2146247545, i32 -2146247450, i32 -2146247349, i32 -2146247322, i32 -2146247239, i32 -2146247150, i32 -2146247029, i32 -2146246929, i32 -2146246823, i32 -2146246715, i32 -2146250786, i32 -2146250733, i32 -2146250702, i32 -2146250671, i32 -2146250650, i32 -2146250628, i32 -2146250579, i32 -2146250558, i32 -2146250455, i32 -2146250423, i32 -2146246632, i32 -2146246543, i32 -2146246422, i32 -2146246323, i32 -2146246217, i32 -2146246115, i32 -2146246082, i32 -2146246009, i32 -2146245941, i32 -2146250233, i32 -2146250174, i32 -2146250121, i32 -2146250090, i32 -2146250059, i32 -2146250038, i32 -2146250016, i32 -2146249967, i32 -2146249946, i32 -2146245895, i32 -2146245806, i32 -2146245685, i32 -2146245586, i32 -2146245480, i32 -2146245378, i32 -2146245345, i32 -2146245262, i32 -2146245173, i32 -2146245052, i32 -2146244952, i32 -2146244926, i32 -2146244823, i32 -2146244797, i32 -2146249688, i32 -2146249663, i32 -2146249596, i32 -2146249571, i32 -2146249507, i32 -2146249425, i32 -2146249402, i32 -2146249377, i32 -2146249352}
!2079 = !DILocation(line: 276, column: 5, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2081, file: !3, line: 276, column: 5)
!2081 = distinct !DILexicalBlock(scope: !2040, file: !3, line: 276, column: 5)
!2082 = !{i32 -2146248268, i32 -2146248251}
!2083 = !DILocation(line: 278, column: 9, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2032, file: !3, line: 278, column: 9)
!2085 = !DILocation(line: 278, column: 13, scope: !2084)
!2086 = !DILocation(line: 278, column: 9, scope: !2032)
!2087 = !DILocation(line: 279, column: 67, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2084, file: !3, line: 278, column: 20)
!2089 = !DILocation(line: 279, column: 58, scope: !2088)
!2090 = !DILocation(line: 279, column: 9, scope: !2088)
!2091 = !DILocation(line: 280, column: 9, scope: !2088)
!2092 = !DILocation(line: 0, scope: !2032)
!2093 = !DILocation(line: 283, column: 1, scope: !2032)
