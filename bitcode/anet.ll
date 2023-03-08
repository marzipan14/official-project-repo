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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !155
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !189
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !199
  ret i32 %3, !dbg !199
}

; Function Attrs: noredzone nounwind
define dso_local i32 @anetBlock(i8*, i32) local_unnamed_addr #0 !dbg !200 {
  %3 = tail call i32 @anetSetBlock(i8* %0, i32 %1, i32 0) #6, !dbg !206
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !207
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !246
  %12 = icmp ult i64 %11, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !247
  br i1 %12, label %19, label %13, !dbg !247

; <label>:13:                                     ; preds = %3
  %14 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !248, !srcloc !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !251
  %15 = icmp ugt i64 %14, ptrtoint ([0 x i8]* @_end to i64), !dbg !247
  br i1 %15, label %19, label %16, !dbg !252

; <label>:16:                                     ; preds = %13
  %17 = inttoptr i64 %8 to i8*, !dbg !253
  %18 = call i32 @setsockopt(i32 %1, i32 4095, i32 8, i8* %17, i32 4) #5, !dbg !253
  store i32 %18, i32* %5, align 4, !dbg !253, !tbaa !133
  br label %29, !dbg !253

; <label>:19:                                     ; preds = %13, %3
  %20 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !256, !srcloc !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !266
  %21 = and i64 %20, -65536, !dbg !268
  %22 = or i64 %21, 4097, !dbg !268
  %23 = add nsw i64 %22, -1, !dbg !268
  %24 = inttoptr i64 %23 to i32*, !dbg !269
  %25 = load i32, i32* %24, align 4096, !dbg !270, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !271
  %26 = sext i32 %1 to i64, !dbg !272
  %27 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call setsockopt\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r8},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %26, i64 4095, i64 8, i64 %8, i64 4, i32 %25, i32 (i32, i32, i32, i8*, i32)* nonnull @setsockopt) #4, !dbg !272, !srcloc !273
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %5, i64 %27) #4, !dbg !274, !srcloc !277
  %28 = load i32, i32* %5, align 4, !dbg !278, !tbaa !133
  br label %29

; <label>:29:                                     ; preds = %19, %16
  %30 = phi i32 [ %28, %19 ], [ %18, %16 ], !dbg !278
  %31 = icmp eq i32 %30, -1, !dbg !280
  br i1 %31, label %32, label %36, !dbg !281

; <label>:32:                                     ; preds = %29
  %33 = call i32* @__errno() #5, !dbg !282
  %34 = load i32, i32* %33, align 4, !dbg !282, !tbaa !133
  %35 = call i8* @strerror(i32 %34) #5, !dbg !284
  call void (i8*, i8*, ...) @anetSetError(i8* %0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %35) #6, !dbg !285
  br label %36, !dbg !286

; <label>:36:                                     ; preds = %29, %32
  %37 = phi i32 [ -1, %32 ], [ 0, %29 ], !dbg !287
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #4, !dbg !288
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #4, !dbg !288
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !288
  ret i32 %37, !dbg !288
}

; Function Attrs: noredzone
declare dso_local i32 @setsockopt(i32, i32, i32, i8*, i32) #3

; Function Attrs: noredzone nounwind
define dso_local i32 @anetEnableTcpNoDelay(i8*, i32) local_unnamed_addr #0 !dbg !289 {
  %3 = tail call fastcc i32 @anetSetTcpNoDelay(i8* %0, i32 %1, i32 1) #6, !dbg !295
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !296
  ret i32 %3, !dbg !296
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @anetSetTcpNoDelay(i8*, i32, i32) unnamed_addr #0 !dbg !297 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = bitcast i32* %4 to i8*, !dbg !318
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #4, !dbg !318
  %7 = ptrtoint i32* %4 to i64, !dbg !319
  %8 = add i64 %7, 65536, !dbg !320
  %9 = inttoptr i64 %8 to i32*, !dbg !321
  store i32 %2, i32* %9, align 4, !dbg !323, !tbaa !133
  %10 = bitcast i32* %5 to i8*, !dbg !324
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #4, !dbg !324
  %11 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !325, !srcloc !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !328
  %12 = icmp ult i64 %11, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !329
  br i1 %12, label %19, label %13, !dbg !329

; <label>:13:                                     ; preds = %3
  %14 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !330, !srcloc !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !333
  %15 = icmp ugt i64 %14, ptrtoint ([0 x i8]* @_end to i64), !dbg !329
  br i1 %15, label %19, label %16, !dbg !334

; <label>:16:                                     ; preds = %13
  %17 = inttoptr i64 %8 to i8*, !dbg !335
  %18 = call i32 @setsockopt(i32 %1, i32 6, i32 1, i8* %17, i32 4) #5, !dbg !335
  store i32 %18, i32* %5, align 4, !dbg !335, !tbaa !133
  br label %29, !dbg !335

; <label>:19:                                     ; preds = %13, %3
  %20 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !338, !srcloc !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !342
  %21 = and i64 %20, -65536, !dbg !344
  %22 = or i64 %21, 4097, !dbg !344
  %23 = add nsw i64 %22, -1, !dbg !344
  %24 = inttoptr i64 %23 to i32*, !dbg !345
  %25 = load i32, i32* %24, align 4096, !dbg !346, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !347
  %26 = sext i32 %1 to i64, !dbg !348
  %27 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call setsockopt\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r8},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %26, i64 6, i64 1, i64 %8, i64 4, i32 %25, i32 (i32, i32, i32, i8*, i32)* nonnull @setsockopt) #4, !dbg !348, !srcloc !349
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %5, i64 %27) #4, !dbg !350, !srcloc !353
  %28 = load i32, i32* %5, align 4, !dbg !354, !tbaa !133
  br label %29

; <label>:29:                                     ; preds = %19, %16
  %30 = phi i32 [ %28, %19 ], [ %18, %16 ], !dbg !354
  %31 = icmp eq i32 %30, -1, !dbg !356
  br i1 %31, label %32, label %36, !dbg !357

; <label>:32:                                     ; preds = %29
  %33 = call i32* @__errno() #5, !dbg !358
  %34 = load i32, i32* %33, align 4, !dbg !358, !tbaa !133
  %35 = call i8* @strerror(i32 %34) #5, !dbg !360
  call void (i8*, i8*, ...) @anetSetError(i8* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i8* %35) #6, !dbg !361
  br label %36, !dbg !362

; <label>:36:                                     ; preds = %29, %32
  %37 = phi i32 [ -1, %32 ], [ 0, %29 ], !dbg !363
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #4, !dbg !364
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #4, !dbg !364
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !364
  ret i32 %37, !dbg !364
}

; Function Attrs: noredzone nounwind
define dso_local i32 @anetDisableTcpNoDelay(i8*, i32) local_unnamed_addr #0 !dbg !365 {
  %3 = tail call fastcc i32 @anetSetTcpNoDelay(i8* %0, i32 %1, i32 0) #6, !dbg !371
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !372
  ret i32 %3, !dbg !372
}

; Function Attrs: noredzone nounwind
define dso_local i32 @anetSetSendBuffer(i8*, i32, i32) local_unnamed_addr #0 !dbg !373 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %2, i32* %4, align 4, !tbaa !133
  %6 = bitcast i32* %5 to i8*, !dbg !392
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #4, !dbg !392
  %7 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !393, !srcloc !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !396
  %8 = icmp ult i64 %7, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !397
  br i1 %8, label %15, label %9, !dbg !397

; <label>:9:                                      ; preds = %3
  %10 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !398, !srcloc !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !401
  %11 = icmp ugt i64 %10, ptrtoint ([0 x i8]* @_end to i64), !dbg !397
  br i1 %11, label %15, label %12, !dbg !402

; <label>:12:                                     ; preds = %9
  %13 = bitcast i32* %4 to i8*, !dbg !403
  %14 = call i32 @setsockopt(i32 %1, i32 4095, i32 4097, i8* nonnull %13, i32 4) #5, !dbg !403
  store i32 %14, i32* %5, align 4, !dbg !403, !tbaa !133
  br label %26, !dbg !403

; <label>:15:                                     ; preds = %9, %3
  %16 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !406, !srcloc !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !410
  %17 = and i64 %16, -65536, !dbg !412
  %18 = or i64 %17, 4097, !dbg !412
  %19 = add nsw i64 %18, -1, !dbg !412
  %20 = inttoptr i64 %19 to i32*, !dbg !413
  %21 = load i32, i32* %20, align 4096, !dbg !414, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !415
  %22 = ptrtoint i32* %4 to i64, !dbg !416
  %23 = sext i32 %1 to i64, !dbg !416
  %24 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call setsockopt\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r8},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %23, i64 4095, i64 4097, i64 %22, i64 4, i32 %21, i32 (i32, i32, i32, i8*, i32)* nonnull @setsockopt) #4, !dbg !416, !srcloc !417
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %5, i64 %24) #4, !dbg !418, !srcloc !421
  %25 = load i32, i32* %5, align 4, !dbg !422, !tbaa !133
  br label %26

; <label>:26:                                     ; preds = %15, %12
  %27 = phi i32 [ %25, %15 ], [ %14, %12 ], !dbg !422
  %28 = icmp eq i32 %27, -1, !dbg !424
  br i1 %28, label %29, label %33, !dbg !425

; <label>:29:                                     ; preds = %26
  %30 = call i32* @__errno() #5, !dbg !426
  %31 = load i32, i32* %30, align 4, !dbg !426, !tbaa !133
  %32 = call i8* @strerror(i32 %31) #5, !dbg !428
  call void (i8*, i8*, ...) @anetSetError(i8* %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %32) #6, !dbg !429
  br label %33, !dbg !430

; <label>:33:                                     ; preds = %26, %29
  %34 = phi i32 [ -1, %29 ], [ 0, %26 ], !dbg !431
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #4, !dbg !432
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !432
  ret i32 %34, !dbg !432
}

; Function Attrs: noredzone nounwind
define dso_local i32 @anetTcpKeepAlive(i8*, i32) local_unnamed_addr #0 !dbg !433 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = bitcast i32* %3 to i8*, !dbg !451
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #4, !dbg !451
  store i32 1, i32* %3, align 4, !dbg !452, !tbaa !133
  %6 = bitcast i32* %4 to i8*, !dbg !453
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #4, !dbg !453
  %7 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !454, !srcloc !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !457
  %8 = icmp ult i64 %7, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !458
  br i1 %8, label %14, label %9, !dbg !458

; <label>:9:                                      ; preds = %2
  %10 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !459, !srcloc !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !462
  %11 = icmp ugt i64 %10, ptrtoint ([0 x i8]* @_end to i64), !dbg !458
  br i1 %11, label %14, label %12, !dbg !463

; <label>:12:                                     ; preds = %9
  %13 = call i32 @setsockopt(i32 %1, i32 4095, i32 8, i8* nonnull %5, i32 4) #5, !dbg !464
  store i32 %13, i32* %4, align 4, !dbg !464, !tbaa !133
  br label %25, !dbg !464

; <label>:14:                                     ; preds = %9, %2
  %15 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !467, !srcloc !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !471
  %16 = and i64 %15, -65536, !dbg !473
  %17 = or i64 %16, 4097, !dbg !473
  %18 = add nsw i64 %17, -1, !dbg !473
  %19 = inttoptr i64 %18 to i32*, !dbg !474
  %20 = load i32, i32* %19, align 4096, !dbg !475, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !476
  %21 = ptrtoint i32* %3 to i64, !dbg !477
  %22 = sext i32 %1 to i64, !dbg !477
  %23 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call setsockopt\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r8},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %22, i64 4095, i64 8, i64 %21, i64 4, i32 %20, i32 (i32, i32, i32, i8*, i32)* nonnull @setsockopt) #4, !dbg !477, !srcloc !478
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %4, i64 %23) #4, !dbg !479, !srcloc !482
  %24 = load i32, i32* %4, align 4, !dbg !483, !tbaa !133
  br label %25

; <label>:25:                                     ; preds = %14, %12
  %26 = phi i32 [ %24, %14 ], [ %13, %12 ], !dbg !483
  %27 = icmp eq i32 %26, -1, !dbg !485
  br i1 %27, label %28, label %32, !dbg !486

; <label>:28:                                     ; preds = %25
  %29 = call i32* @__errno() #5, !dbg !487
  %30 = load i32, i32* %29, align 4, !dbg !487, !tbaa !133
  %31 = call i8* @strerror(i32 %30) #5, !dbg !489
  call void (i8*, i8*, ...) @anetSetError(i8* %0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %31) #6, !dbg !490
  br label %32, !dbg !491

; <label>:32:                                     ; preds = %25, %28
  %33 = phi i32 [ -1, %28 ], [ 0, %25 ], !dbg !492
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #4, !dbg !493
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #4, !dbg !493
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !493
  ret i32 %33, !dbg !493
}

; Function Attrs: noredzone nounwind
define dso_local i32 @anetSendTimeout(i8*, i32, i64) local_unnamed_addr #0 !dbg !494 {
  %4 = alloca %struct.timeval, align 8
  %5 = alloca i32, align 4
  %6 = bitcast %struct.timeval* %4 to i8*, !dbg !525
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #4, !dbg !525
  %7 = sdiv i64 %2, 1000, !dbg !526
  %8 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i64 0, i32 0, !dbg !527
  store i64 %7, i64* %8, align 8, !dbg !528, !tbaa !529
  %9 = srem i64 %2, 1000, !dbg !532
  %10 = mul nsw i64 %9, 1000, !dbg !533
  %11 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i64 0, i32 1, !dbg !534
  store i64 %10, i64* %11, align 8, !dbg !535, !tbaa !536
  %12 = bitcast i32* %5 to i8*, !dbg !537
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #4, !dbg !537
  %13 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !538, !srcloc !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !541
  %14 = icmp ult i64 %13, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !542
  br i1 %14, label %20, label %15, !dbg !542

; <label>:15:                                     ; preds = %3
  %16 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !543, !srcloc !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !546
  %17 = icmp ugt i64 %16, ptrtoint ([0 x i8]* @_end to i64), !dbg !542
  br i1 %17, label %20, label %18, !dbg !547

; <label>:18:                                     ; preds = %15
  %19 = call i32 @setsockopt(i32 %1, i32 4095, i32 4101, i8* nonnull %6, i32 16) #5, !dbg !548
  store i32 %19, i32* %5, align 4, !dbg !548, !tbaa !133
  br label %31, !dbg !548

; <label>:20:                                     ; preds = %15, %3
  %21 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !551, !srcloc !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !555
  %22 = and i64 %21, -65536, !dbg !557
  %23 = or i64 %22, 4097, !dbg !557
  %24 = add nsw i64 %23, -1, !dbg !557
  %25 = inttoptr i64 %24 to i32*, !dbg !558
  %26 = load i32, i32* %25, align 4096, !dbg !559, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !560
  %27 = ptrtoint %struct.timeval* %4 to i64, !dbg !561
  %28 = sext i32 %1 to i64, !dbg !561
  %29 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call setsockopt\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r8},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %28, i64 4095, i64 4101, i64 %27, i64 16, i32 %26, i32 (i32, i32, i32, i8*, i32)* nonnull @setsockopt) #4, !dbg !561, !srcloc !562
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %5, i64 %29) #4, !dbg !563, !srcloc !566
  %30 = load i32, i32* %5, align 4, !dbg !567, !tbaa !133
  br label %31

; <label>:31:                                     ; preds = %20, %18
  %32 = phi i32 [ %30, %20 ], [ %19, %18 ], !dbg !567
  %33 = icmp eq i32 %32, -1, !dbg !569
  br i1 %33, label %34, label %38, !dbg !570

; <label>:34:                                     ; preds = %31
  %35 = call i32* @__errno() #5, !dbg !571
  %36 = load i32, i32* %35, align 4, !dbg !571, !tbaa !133
  %37 = call i8* @strerror(i32 %36) #5, !dbg !573
  call void (i8*, i8*, ...) @anetSetError(i8* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %37) #6, !dbg !574
  br label %38, !dbg !575

; <label>:38:                                     ; preds = %31, %34
  %39 = phi i32 [ -1, %34 ], [ 0, %31 ], !dbg !576
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #4, !dbg !577
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #4, !dbg !577
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !577
  ret i32 %39, !dbg !577
}

; Function Attrs: noredzone nounwind
define dso_local i32 @anetGenericResolve(i8*, i8*, i8*, i64, i32) local_unnamed_addr #0 !dbg !578 {
  %6 = alloca %struct.addrinfo, align 8
  %7 = alloca %struct.addrinfo*, align 8
  %8 = alloca i32, align 4
  %9 = bitcast %struct.addrinfo* %6 to i8*, !dbg !613
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %9) #4, !dbg !613
  %10 = bitcast %struct.addrinfo** %7 to i8*, !dbg !613
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #4, !dbg !613
  %11 = bitcast i32* %8 to i8*, !dbg !614
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #4, !dbg !614
  %12 = call i8* @memset(i8* nonnull %9, i32 0, i64 48) #5, !dbg !615
  %13 = and i32 %4, 1, !dbg !616
  %14 = icmp eq i32 %13, 0, !dbg !616
  br i1 %14, label %17, label %15, !dbg !618

; <label>:15:                                     ; preds = %5
  %16 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i64 0, i32 0, !dbg !619
  store i32 4, i32* %16, align 8, !dbg !620, !tbaa !621
  br label %17, !dbg !624

; <label>:17:                                     ; preds = %5, %15
  %18 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i64 0, i32 1, !dbg !625
  store i32 0, i32* %18, align 4, !dbg !626, !tbaa !627
  %19 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i64 0, i32 2, !dbg !628
  store i32 1, i32* %19, align 8, !dbg !629, !tbaa !630
  %20 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !631, !srcloc !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !634
  %21 = icmp ult i64 %20, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !635
  br i1 %21, label %27, label %22, !dbg !635

; <label>:22:                                     ; preds = %17
  %23 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !636, !srcloc !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !639
  %24 = icmp ugt i64 %23, ptrtoint ([0 x i8]* @_end to i64), !dbg !635
  br i1 %24, label %27, label %25, !dbg !640

; <label>:25:                                     ; preds = %22
  %26 = call i32 @getaddrinfo(i8* %1, i8* null, %struct.addrinfo* nonnull %6, %struct.addrinfo** nonnull %7) #5, !dbg !643
  store i32 %26, i32* %8, align 4, !dbg !643, !tbaa !133
  br label %39, !dbg !643

; <label>:27:                                     ; preds = %22, %17
  %28 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !646, !srcloc !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !650
  %29 = and i64 %28, -65536, !dbg !652
  %30 = or i64 %29, 4097, !dbg !652
  %31 = add nsw i64 %30, -1, !dbg !652
  %32 = inttoptr i64 %31 to i32*, !dbg !653
  %33 = load i32, i32* %32, align 4096, !dbg !654, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !655
  %34 = ptrtoint %struct.addrinfo* %6 to i64, !dbg !656
  %35 = ptrtoint %struct.addrinfo** %7 to i64, !dbg !656
  %36 = ptrtoint i8* %1 to i64, !dbg !656
  %37 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call getaddrinfo\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %36, i64 0, i64 %34, i64 %35, i32 %33, i32 (i8*, i8*, %struct.addrinfo*, %struct.addrinfo**)* nonnull @getaddrinfo) #4, !dbg !656, !srcloc !657
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %8, i64 %37) #4, !dbg !658, !srcloc !661
  %38 = load i32, i32* %8, align 4, !dbg !662, !tbaa !133
  br label %39

; <label>:39:                                     ; preds = %27, %25
  %40 = phi i32 [ %38, %27 ], [ %26, %25 ], !dbg !662
  %41 = icmp eq i32 %40, 0, !dbg !664
  br i1 %41, label %44, label %42, !dbg !665

; <label>:42:                                     ; preds = %39
  %43 = call i8* @gai_strerror(i32 %40) #5, !dbg !666
  call void (i8*, i8*, ...) @anetSetError(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %43) #6, !dbg !668
  br label %66, !dbg !669

; <label>:44:                                     ; preds = %39
  %45 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8, !dbg !670, !tbaa !671
  %46 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %45, i64 0, i32 1, !dbg !672
  %47 = load i32, i32* %46, align 4, !dbg !672, !tbaa !627
  %48 = icmp eq i32 %47, 2, !dbg !673
  %49 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %45, i64 0, i32 5, !dbg !674
  br i1 %48, label %50, label %57, !dbg !675

; <label>:50:                                     ; preds = %44
  %51 = bitcast %struct.sockaddr** %49 to %struct.sockaddr_in**, !dbg !676
  %52 = load %struct.sockaddr_in*, %struct.sockaddr_in** %51, align 8, !dbg !676, !tbaa !677
  %53 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %52, i64 0, i32 3, !dbg !679
  %54 = bitcast %struct.in_addr* %53 to i8*, !dbg !680
  %55 = trunc i64 %3 to i32, !dbg !681
  %56 = call i8* @inet_ntop(i32 2, i8* nonnull %54, i8* %2, i32 %55) #5, !dbg !682
  br label %64, !dbg !683

; <label>:57:                                     ; preds = %44
  %58 = bitcast %struct.sockaddr** %49 to %struct.sockaddr_in6**, !dbg !684
  %59 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %58, align 8, !dbg !684, !tbaa !677
  %60 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %59, i64 0, i32 4, !dbg !686
  %61 = bitcast %struct.in6_addr* %60 to i8*, !dbg !687
  %62 = trunc i64 %3 to i32, !dbg !688
  %63 = call i8* @inet_ntop(i32 10, i8* nonnull %61, i8* %2, i32 %62) #5, !dbg !689
  br label %64

; <label>:64:                                     ; preds = %57, %50
  %65 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8, !dbg !690, !tbaa !671
  call void @freeaddrinfo(%struct.addrinfo* %65) #5, !dbg !691
  br label %66, !dbg !692

; <label>:66:                                     ; preds = %64, %42
  %67 = phi i32 [ -1, %42 ], [ 0, %64 ], !dbg !693
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #4, !dbg !694
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #4, !dbg !694
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %9) #4, !dbg !694
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !694
  ret i32 %67, !dbg !694
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
define dso_local i32 @anetResolve(i8*, i8*, i8*, i64) local_unnamed_addr #0 !dbg !695 {
  %5 = tail call i32 @anetGenericResolve(i8* %0, i8* %1, i8* %2, i64 %3, i32 0) #6, !dbg !707
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !708
  ret i32 %5, !dbg !708
}

; Function Attrs: noredzone nounwind
define dso_local i32 @anetResolveIP(i8*, i8*, i8*, i64) local_unnamed_addr #0 !dbg !709 {
  %5 = tail call i32 @anetGenericResolve(i8* %0, i8* %1, i8* %2, i64 %3, i32 1) #6, !dbg !719
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !720
  ret i32 %5, !dbg !720
}

; Function Attrs: noredzone nounwind
define dso_local i32 @anetTcpConnect(i8*, i8*, i32) local_unnamed_addr #0 !dbg !721 {
  %4 = tail call fastcc i32 @anetTcpGenericConnect(i8* %0, i8* %1, i32 %2, i8* null, i32 0) #6, !dbg !731
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !732
  ret i32 %4, !dbg !732
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @anetTcpGenericConnect(i8*, i8*, i32, i8*, i32) unnamed_addr #0 !dbg !733 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [6 x i8], align 1
  %9 = alloca %struct.addrinfo, align 8
  %10 = alloca %struct.addrinfo*, align 8
  %11 = alloca %struct.addrinfo*, align 8
  %12 = bitcast i32* %6 to i8*, !dbg !790
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #4, !dbg !790
  store i32 -1, i32* %6, align 4, !dbg !791, !tbaa !133
  %13 = bitcast i32* %7 to i8*, !dbg !790
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13) #4, !dbg !790
  %14 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0, !dbg !792
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %14) #4, !dbg !792
  %15 = bitcast %struct.addrinfo* %9 to i8*, !dbg !794
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %15) #4, !dbg !794
  %16 = bitcast %struct.addrinfo** %10 to i8*, !dbg !794
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #4, !dbg !794
  %17 = bitcast %struct.addrinfo** %11 to i8*, !dbg !794
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %17) #4, !dbg !794
  %18 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %14, i64 6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32 %2) #5, !dbg !795
  %19 = call i8* @memset(i8* nonnull %15, i32 0, i64 48) #5, !dbg !796
  %20 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %9, i64 0, i32 1, !dbg !797
  store i32 0, i32* %20, align 4, !dbg !798, !tbaa !627
  %21 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %9, i64 0, i32 2, !dbg !799
  store i32 1, i32* %21, align 8, !dbg !800, !tbaa !630
  %22 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !801, !srcloc !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !804
  %23 = icmp ult i64 %22, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !805
  br i1 %23, label %29, label %24, !dbg !805

; <label>:24:                                     ; preds = %5
  %25 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !806, !srcloc !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !809
  %26 = icmp ugt i64 %25, ptrtoint ([0 x i8]* @_end to i64), !dbg !805
  br i1 %26, label %29, label %27, !dbg !810

; <label>:27:                                     ; preds = %24
  %28 = call i32 @getaddrinfo(i8* %1, i8* nonnull %14, %struct.addrinfo* nonnull %9, %struct.addrinfo** nonnull %10) #5, !dbg !813
  store i32 %28, i32* %7, align 4, !dbg !813, !tbaa !133
  br label %42, !dbg !813

; <label>:29:                                     ; preds = %24, %5
  %30 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !816, !srcloc !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !820
  %31 = and i64 %30, -65536, !dbg !822
  %32 = or i64 %31, 4097, !dbg !822
  %33 = add nsw i64 %32, -1, !dbg !822
  %34 = inttoptr i64 %33 to i32*, !dbg !823
  %35 = load i32, i32* %34, align 4096, !dbg !824, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !825
  %36 = ptrtoint %struct.addrinfo* %9 to i64, !dbg !826
  %37 = ptrtoint %struct.addrinfo** %10 to i64, !dbg !826
  %38 = ptrtoint i8* %1 to i64, !dbg !826
  %39 = ptrtoint [6 x i8]* %8 to i64, !dbg !826
  %40 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call getaddrinfo\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %38, i64 %39, i64 %36, i64 %37, i32 %35, i32 (i8*, i8*, %struct.addrinfo*, %struct.addrinfo**)* nonnull @getaddrinfo) #4, !dbg !826, !srcloc !827
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %7, i64 %40) #4, !dbg !828, !srcloc !831
  %41 = load i32, i32* %7, align 4, !dbg !832, !tbaa !133
  br label %42

; <label>:42:                                     ; preds = %29, %27
  %43 = phi i32 [ %41, %29 ], [ %28, %27 ], !dbg !832
  %44 = icmp eq i32 %43, 0, !dbg !834
  br i1 %44, label %45, label %56, !dbg !835

; <label>:45:                                     ; preds = %42
  %46 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8, !dbg !836, !tbaa !671
  %47 = icmp eq %struct.addrinfo* %46, null, !dbg !838
  br i1 %47, label %170, label %48, !dbg !839

; <label>:48:                                     ; preds = %45
  %49 = and i32 %4, 1
  %50 = icmp ne i32 %49, 0
  %51 = icmp eq i8* %3, null
  %52 = xor i1 %50, true
  %53 = ptrtoint %struct.addrinfo* %9 to i64
  %54 = ptrtoint %struct.addrinfo** %11 to i64
  %55 = ptrtoint i8* %3 to i64
  br label %58, !dbg !839

; <label>:56:                                     ; preds = %42
  %57 = call i8* @gai_strerror(i32 %43) #5, !dbg !840
  call void (i8*, i8*, ...) @anetSetError(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %57) #6, !dbg !842
  br label %190, !dbg !843

; <label>:58:                                     ; preds = %48, %166
  %59 = phi %struct.addrinfo* [ %46, %48 ], [ %168, %166 ]
  %60 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !844, !srcloc !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !847
  %61 = icmp ult i64 %60, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !848
  br i1 %61, label %73, label %62, !dbg !848

; <label>:62:                                     ; preds = %58
  %63 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !849, !srcloc !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !852
  %64 = icmp ugt i64 %63, ptrtoint ([0 x i8]* @_end to i64), !dbg !848
  br i1 %64, label %73, label %65, !dbg !853

; <label>:65:                                     ; preds = %62
  %66 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %59, i64 0, i32 1, !dbg !854
  %67 = load i32, i32* %66, align 4, !dbg !854, !tbaa !627
  %68 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %59, i64 0, i32 2, !dbg !854
  %69 = load i32, i32* %68, align 8, !dbg !854, !tbaa !630
  %70 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %59, i64 0, i32 3, !dbg !854
  %71 = load i32, i32* %70, align 4, !dbg !854, !tbaa !856
  %72 = call i32 @socket(i32 %67, i32 %69, i32 %71) #5, !dbg !854
  store i32 %72, i32* %6, align 4, !dbg !854, !tbaa !133
  br label %91, !dbg !854

; <label>:73:                                     ; preds = %62, %58
  %74 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !857, !srcloc !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !861
  %75 = and i64 %74, -65536, !dbg !863
  %76 = or i64 %75, 4097, !dbg !863
  %77 = add nsw i64 %76, -1, !dbg !863
  %78 = inttoptr i64 %77 to i32*, !dbg !864
  %79 = load i32, i32* %78, align 4096, !dbg !865, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !866
  %80 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %59, i64 0, i32 3, !dbg !867
  %81 = load i32, i32* %80, align 4, !dbg !867, !tbaa !856
  %82 = sext i32 %81 to i64, !dbg !867
  %83 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %59, i64 0, i32 1, !dbg !867
  %84 = load i32, i32* %83, align 4, !dbg !867, !tbaa !627
  %85 = sext i32 %84 to i64, !dbg !867
  %86 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %59, i64 0, i32 2, !dbg !867
  %87 = load i32, i32* %86, align 8, !dbg !867, !tbaa !630
  %88 = sext i32 %87 to i64, !dbg !867
  %89 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call socket\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %85, i64 %88, i64 %82, i32 %79, i32 (i32, i32, i32)* nonnull @socket) #4, !dbg !867, !srcloc !868
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %6, i64 %89) #4, !dbg !869, !srcloc !872
  %90 = load i32, i32* %6, align 4, !dbg !873, !tbaa !133
  br label %91

; <label>:91:                                     ; preds = %73, %65
  %92 = phi i32 [ %90, %73 ], [ %72, %65 ], !dbg !873
  %93 = icmp eq i32 %92, -1, !dbg !875
  br i1 %93, label %166, label %94, !dbg !876

; <label>:94:                                     ; preds = %91
  %95 = call fastcc i32 @anetSetReuseAddr(i8* %0, i32 %92) #6, !dbg !877
  %96 = icmp eq i32 %95, -1, !dbg !879
  br i1 %96, label %174, label %97, !dbg !880

; <label>:97:                                     ; preds = %94
  br i1 %50, label %98, label %102, !dbg !881

; <label>:98:                                     ; preds = %97
  %99 = load i32, i32* %6, align 4, !dbg !883, !tbaa !133
  %100 = call i32 @anetSetBlock(i8* %0, i32 %99, i32 1) #5, !dbg !887
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !888
  %101 = icmp eq i32 %100, 0, !dbg !889
  br i1 %101, label %102, label %174, !dbg !890

; <label>:102:                                    ; preds = %98, %97
  br i1 %51, label %150, label %103, !dbg !891

; <label>:103:                                    ; preds = %102
  %104 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !893, !srcloc !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !896
  %105 = icmp ult i64 %104, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !897
  br i1 %105, label %111, label %106, !dbg !897

; <label>:106:                                    ; preds = %103
  %107 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !898, !srcloc !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !901
  %108 = icmp ugt i64 %107, ptrtoint ([0 x i8]* @_end to i64), !dbg !897
  br i1 %108, label %111, label %109, !dbg !902

; <label>:109:                                    ; preds = %106
  %110 = call i32 @getaddrinfo(i8* nonnull %3, i8* null, %struct.addrinfo* nonnull %9, %struct.addrinfo** nonnull %11) #5, !dbg !904
  store i32 %110, i32* %7, align 4, !dbg !904, !tbaa !133
  br label %120, !dbg !904

; <label>:111:                                    ; preds = %106, %103
  %112 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !906, !srcloc !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !910
  %113 = and i64 %112, -65536, !dbg !912
  %114 = or i64 %113, 4097, !dbg !912
  %115 = add nsw i64 %114, -1, !dbg !912
  %116 = inttoptr i64 %115 to i32*, !dbg !913
  %117 = load i32, i32* %116, align 4096, !dbg !914, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !915
  %118 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call getaddrinfo\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %55, i64 0, i64 %53, i64 %54, i32 %117, i32 (i8*, i8*, %struct.addrinfo*, %struct.addrinfo**)* nonnull @getaddrinfo) #4, !dbg !916, !srcloc !917
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %7, i64 %118) #4, !dbg !918, !srcloc !921
  %119 = load i32, i32* %7, align 4, !dbg !922, !tbaa !133
  br label %120

; <label>:120:                                    ; preds = %111, %109
  %121 = phi i32 [ %119, %111 ], [ %110, %109 ], !dbg !922
  %122 = icmp eq i32 %121, 0, !dbg !924
  br i1 %122, label %123, label %126, !dbg !925

; <label>:123:                                    ; preds = %120
  %124 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8, !dbg !926, !tbaa !671
  %125 = icmp eq %struct.addrinfo* %124, null, !dbg !930
  br i1 %125, label %143, label %132, !dbg !931

; <label>:126:                                    ; preds = %120
  %127 = call i8* @gai_strerror(i32 %121) #5, !dbg !932
  call void (i8*, i8*, ...) @anetSetError(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %127) #6, !dbg !934
  br label %174, !dbg !935

; <label>:128:                                    ; preds = %132
  %129 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %133, i64 0, i32 7, !dbg !936
  %130 = load %struct.addrinfo*, %struct.addrinfo** %129, align 8, !dbg !926, !tbaa !671
  %131 = icmp eq %struct.addrinfo* %130, null, !dbg !930
  br i1 %131, label %141, label %132, !dbg !931, !llvm.loop !937

; <label>:132:                                    ; preds = %123, %128
  %133 = phi %struct.addrinfo* [ %130, %128 ], [ %124, %123 ]
  %134 = load i32, i32* %6, align 4, !dbg !939, !tbaa !133
  %135 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %133, i64 0, i32 5, !dbg !942
  %136 = load %struct.sockaddr*, %struct.sockaddr** %135, align 8, !dbg !942, !tbaa !677
  %137 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %133, i64 0, i32 4, !dbg !943
  %138 = load i32, i32* %137, align 8, !dbg !943, !tbaa !944
  %139 = call i32 @bind(i32 %134, %struct.sockaddr* %136, i32 %138) #5, !dbg !945
  %140 = icmp eq i32 %139, -1, !dbg !946
  br i1 %140, label %128, label %148, !dbg !947

; <label>:141:                                    ; preds = %128
  %142 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8, !dbg !948, !tbaa !671
  br label %143, !dbg !948

; <label>:143:                                    ; preds = %123, %141
  %144 = phi %struct.addrinfo* [ %142, %141 ], [ null, %123 ], !dbg !948
  call void @freeaddrinfo(%struct.addrinfo* %144) #5, !dbg !949
  %145 = call i32* @__errno() #5, !dbg !950
  %146 = load i32, i32* %145, align 4, !dbg !950, !tbaa !133
  %147 = call i8* @strerror(i32 %146) #5, !dbg !953
  call void (i8*, i8*, ...) @anetSetError(i8* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* %147) #6, !dbg !954
  br label %174, !dbg !955

; <label>:148:                                    ; preds = %132
  %149 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8, !dbg !948, !tbaa !671
  call void @freeaddrinfo(%struct.addrinfo* %149) #5, !dbg !949
  br label %150

; <label>:150:                                    ; preds = %148, %102
  %151 = load i32, i32* %6, align 4, !dbg !956, !tbaa !133
  %152 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %59, i64 0, i32 5, !dbg !958
  %153 = load %struct.sockaddr*, %struct.sockaddr** %152, align 8, !dbg !958, !tbaa !677
  %154 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %59, i64 0, i32 4, !dbg !959
  %155 = load i32, i32* %154, align 8, !dbg !959, !tbaa !944
  %156 = call i32 @connect(i32 %151, %struct.sockaddr* %153, i32 %155) #5, !dbg !960
  %157 = icmp eq i32 %156, -1, !dbg !961
  br i1 %157, label %158, label %179, !dbg !962

; <label>:158:                                    ; preds = %150
  %159 = call i32* @__errno() #5, !dbg !963
  %160 = load i32, i32* %159, align 4, !dbg !963, !tbaa !133
  %161 = icmp ne i32 %160, 119, !dbg !966
  %162 = or i1 %161, %52, !dbg !967
  br i1 %162, label %163, label %179, !dbg !967

; <label>:163:                                    ; preds = %158
  %164 = load i32, i32* %6, align 4, !dbg !968, !tbaa !133
  %165 = call i32 @close(i32 %164) #5, !dbg !969
  store i32 -1, i32* %6, align 4, !dbg !970, !tbaa !133
  br label %166, !dbg !971

; <label>:166:                                    ; preds = %91, %163
  %167 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %59, i64 0, i32 7, !dbg !972
  %168 = load %struct.addrinfo*, %struct.addrinfo** %167, align 8, !dbg !836, !tbaa !671
  %169 = icmp eq %struct.addrinfo* %168, null, !dbg !838
  br i1 %169, label %170, label %58, !dbg !839, !llvm.loop !973

; <label>:170:                                    ; preds = %166, %45
  %171 = call i32* @__errno() #5, !dbg !975
  %172 = load i32, i32* %171, align 4, !dbg !975, !tbaa !133
  %173 = call i8* @strerror(i32 %172) #5, !dbg !977
  call void (i8*, i8*, ...) @anetSetError(i8* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i8* %173) #6, !dbg !978
  br label %174, !dbg !978

; <label>:174:                                    ; preds = %98, %94, %143, %126, %170
  %175 = load i32, i32* %6, align 4, !dbg !979, !tbaa !133
  %176 = icmp eq i32 %175, -1, !dbg !981
  br i1 %176, label %179, label %177, !dbg !982

; <label>:177:                                    ; preds = %174
  %178 = call i32 @close(i32 %175) #5, !dbg !983
  store i32 -1, i32* %6, align 4, !dbg !985, !tbaa !133
  br label %179, !dbg !986

; <label>:179:                                    ; preds = %158, %150, %174, %177
  %180 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8, !dbg !987, !tbaa !671
  call void @freeaddrinfo(%struct.addrinfo* %180) #5, !dbg !988
  %181 = load i32, i32* %6, align 4, !dbg !989, !tbaa !133
  %182 = icmp ne i32 %181, -1, !dbg !991
  %183 = icmp eq i8* %3, null, !dbg !992
  %184 = or i1 %183, %182, !dbg !993
  %185 = and i32 %4, 2, !dbg !994
  %186 = icmp eq i32 %185, 0, !dbg !994
  %187 = or i1 %186, %184, !dbg !993
  br i1 %187, label %190, label %188, !dbg !993

; <label>:188:                                    ; preds = %179
  %189 = call fastcc i32 @anetTcpGenericConnect(i8* %0, i8* %1, i32 %2, i8* null, i32 %4) #6, !dbg !995
  br label %190, !dbg !997

; <label>:190:                                    ; preds = %179, %188, %56
  %191 = phi i32 [ -1, %56 ], [ %189, %188 ], [ %181, %179 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #4, !dbg !998
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #4, !dbg !998
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %15) #4, !dbg !998
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %14) #4, !dbg !998
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #4, !dbg !998
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #4, !dbg !998
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !998
  ret i32 %191, !dbg !998
}

; Function Attrs: noredzone nounwind
define dso_local i32 @anetTcpNonBlockConnect(i8*, i8*, i32) local_unnamed_addr #0 !dbg !999 {
  %4 = tail call fastcc i32 @anetTcpGenericConnect(i8* %0, i8* %1, i32 %2, i8* null, i32 1) #6, !dbg !1007
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1008
  ret i32 %4, !dbg !1008
}

; Function Attrs: noredzone nounwind
define dso_local i32 @anetTcpNonBlockBindConnect(i8*, i8*, i32, i8*) local_unnamed_addr #0 !dbg !1009 {
  %5 = tail call fastcc i32 @anetTcpGenericConnect(i8* %0, i8* %1, i32 %2, i8* %3, i32 1) #6, !dbg !1021
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1022
  ret i32 %5, !dbg !1022
}

; Function Attrs: noredzone nounwind
define dso_local i32 @anetTcpNonBlockBestEffortBindConnect(i8*, i8*, i32, i8*) local_unnamed_addr #0 !dbg !1023 {
  %5 = tail call fastcc i32 @anetTcpGenericConnect(i8* %0, i8* %1, i32 %2, i8* %3, i32 3) #6, !dbg !1033
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1034
  ret i32 %5, !dbg !1034
}

; Function Attrs: noredzone nounwind
define dso_local i32 @anetUnixGenericConnect(i8*, i8*, i32) local_unnamed_addr #0 !dbg !1035 {
  %4 = alloca %struct.sockaddr_un, align 1
  %5 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %4, i64 0, i32 0, !dbg !1053
  call void @llvm.lifetime.start.p0i8(i64 109, i8* nonnull %5) #4, !dbg !1053
  %6 = tail call fastcc i32 @anetCreateSocket(i8* %0) #6, !dbg !1054
  %7 = icmp eq i32 %6, -1, !dbg !1057
  br i1 %7, label %33, label %8, !dbg !1058

; <label>:8:                                      ; preds = %3
  store i8 1, i8* %5, align 1, !dbg !1059, !tbaa !1060
  %9 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %4, i64 0, i32 1, i64 0, !dbg !1062
  %10 = call i8* @strncpy(i8* nonnull %9, i8* %1, i64 107) #5, !dbg !1063
  %11 = and i32 %2, 1, !dbg !1064
  %12 = icmp ne i32 %11, 0, !dbg !1064
  br i1 %12, label %13, label %18, !dbg !1066

; <label>:13:                                     ; preds = %8
  %14 = call i32 @anetSetBlock(i8* %0, i32 %6, i32 1) #5, !dbg !1072
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1073
  %15 = icmp eq i32 %14, 0, !dbg !1074
  br i1 %15, label %18, label %16, !dbg !1075

; <label>:16:                                     ; preds = %13
  %17 = call i32 @close(i32 %6) #5, !dbg !1076
  br label %33, !dbg !1078

; <label>:18:                                     ; preds = %13, %8
  %19 = bitcast %struct.sockaddr_un* %4 to %struct.sockaddr*, !dbg !1079
  %20 = call i32 @connect(i32 %6, %struct.sockaddr* nonnull %19, i32 109) #5, !dbg !1081
  %21 = icmp eq i32 %20, -1, !dbg !1082
  br i1 %21, label %22, label %33, !dbg !1083

; <label>:22:                                     ; preds = %18
  %23 = call i32* @__errno() #5, !dbg !1084
  %24 = load i32, i32* %23, align 4, !dbg !1084, !tbaa !133
  %25 = icmp ne i32 %24, 119, !dbg !1087
  %26 = xor i1 %12, true, !dbg !1088
  %27 = or i1 %25, %26, !dbg !1088
  br i1 %27, label %28, label %33, !dbg !1088

; <label>:28:                                     ; preds = %22
  %29 = call i32* @__errno() #5, !dbg !1089
  %30 = load i32, i32* %29, align 4, !dbg !1089, !tbaa !133
  %31 = call i8* @strerror(i32 %30) #5, !dbg !1090
  call void (i8*, i8*, ...) @anetSetError(i8* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* %31) #6, !dbg !1091
  %32 = call i32 @close(i32 %6) #5, !dbg !1092
  br label %33, !dbg !1093

; <label>:33:                                     ; preds = %18, %22, %3, %28, %16
  %34 = phi i32 [ -1, %16 ], [ -1, %28 ], [ -1, %3 ], [ %6, %22 ], [ %6, %18 ], !dbg !1094
  call void @llvm.lifetime.end.p0i8(i64 109, i8* nonnull %5) #4, !dbg !1095
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1095
  ret i32 %34, !dbg !1095
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @anetCreateSocket(i8*) unnamed_addr #0 !dbg !1096 {
  %2 = alloca i32, align 4
  %3 = bitcast i32* %2 to i8*, !dbg !1111
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #4, !dbg !1111
  %4 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1112, !srcloc !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1115
  %5 = icmp ult i64 %4, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1116
  br i1 %5, label %11, label %6, !dbg !1116

; <label>:6:                                      ; preds = %1
  %7 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1117, !srcloc !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1120
  %8 = icmp ugt i64 %7, ptrtoint ([0 x i8]* @_end to i64), !dbg !1116
  br i1 %8, label %11, label %9, !dbg !1121

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @socket(i32 1, i32 1, i32 0) #5, !dbg !1122
  store i32 %10, i32* %2, align 4, !dbg !1122, !tbaa !133
  br label %20, !dbg !1122

; <label>:11:                                     ; preds = %6, %1
  %12 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1125, !srcloc !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1129
  %13 = and i64 %12, -65536, !dbg !1131
  %14 = or i64 %13, 4097, !dbg !1131
  %15 = add nsw i64 %14, -1, !dbg !1131
  %16 = inttoptr i64 %15 to i32*, !dbg !1132
  %17 = load i32, i32* %16, align 4096, !dbg !1133, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1134
  %18 = tail call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call socket\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 1, i64 1, i64 0, i32 %17, i32 (i32, i32, i32)* nonnull @socket) #4, !dbg !1135, !srcloc !1136
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %2, i64 %18) #4, !dbg !1137, !srcloc !1140
  %19 = load i32, i32* %2, align 4, !dbg !1141, !tbaa !133
  br label %20

; <label>:20:                                     ; preds = %11, %9
  %21 = phi i32 [ %19, %11 ], [ %10, %9 ], !dbg !1141
  %22 = icmp eq i32 %21, -1, !dbg !1143
  br i1 %22, label %23, label %27, !dbg !1144

; <label>:23:                                     ; preds = %20
  %24 = call i32* @__errno() #5, !dbg !1145
  %25 = load i32, i32* %24, align 4, !dbg !1145, !tbaa !133
  %26 = call i8* @strerror(i32 %25) #5, !dbg !1147
  call void (i8*, i8*, ...) @anetSetError(i8* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i8* %26) #6, !dbg !1148
  br label %33, !dbg !1149

; <label>:27:                                     ; preds = %20
  %28 = call fastcc i32 @anetSetReuseAddr(i8* %0, i32 %21) #6, !dbg !1150
  %29 = icmp eq i32 %28, -1, !dbg !1152
  %30 = load i32, i32* %2, align 4, !dbg !1153, !tbaa !133
  br i1 %29, label %31, label %33, !dbg !1154

; <label>:31:                                     ; preds = %27
  %32 = call i32 @close(i32 %30) #5, !dbg !1155
  br label %33, !dbg !1157

; <label>:33:                                     ; preds = %27, %31, %23
  %34 = phi i32 [ -1, %23 ], [ -1, %31 ], [ %30, %27 ], !dbg !1153
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #4, !dbg !1158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1158
  ret i32 %34, !dbg !1158
}

; Function Attrs: noredzone
declare dso_local i8* @strncpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @close(i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @anetUnixConnect(i8*, i8*) local_unnamed_addr #0 !dbg !1159 {
  %3 = tail call i32 @anetUnixGenericConnect(i8* %0, i8* %1, i32 0) #6, !dbg !1167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1168
  ret i32 %3, !dbg !1168
}

; Function Attrs: noredzone nounwind
define dso_local i32 @anetUnixNonBlockConnect(i8*, i8*) local_unnamed_addr #0 !dbg !1169 {
  %3 = tail call i32 @anetUnixGenericConnect(i8* %0, i8* %1, i32 1) #6, !dbg !1175
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1176
  ret i32 %3, !dbg !1176
}

; Function Attrs: noredzone nounwind
define dso_local i32 @anetRead(i32, i8*, i32) local_unnamed_addr #0 !dbg !1177 {
  %4 = sext i32 %2 to i64, !dbg !1193
  %5 = icmp eq i32 %2, 0, !dbg !1194
  br i1 %5, label %17, label %6, !dbg !1195

; <label>:6:                                      ; preds = %3, %13
  %7 = phi i64 [ %14, %13 ], [ 0, %3 ]
  %8 = phi i8* [ %15, %13 ], [ %1, %3 ]
  %9 = sub nsw i64 %4, %7, !dbg !1196
  %10 = tail call i64 @read(i32 %0, i8* %8, i64 %9) #5, !dbg !1198
  switch i64 %10, label %13 [
    i64 0, label %11
    i64 -1, label %17
  ], !dbg !1200

; <label>:11:                                     ; preds = %6
  %12 = trunc i64 %7 to i32, !dbg !1201
  br label %17, !dbg !1203

; <label>:13:                                     ; preds = %6
  %14 = add nsw i64 %10, %7, !dbg !1204
  %15 = getelementptr inbounds i8, i8* %8, i64 %10, !dbg !1205
  %16 = icmp eq i64 %14, %4, !dbg !1194
  br i1 %16, label %17, label %6, !dbg !1195, !llvm.loop !1206

; <label>:17:                                     ; preds = %6, %13, %3, %11
  %18 = phi i32 [ %12, %11 ], [ 0, %3 ], [ -1, %6 ], [ %2, %13 ], !dbg !1208
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1209
  ret i32 %18, !dbg !1209
}

; Function Attrs: noredzone
declare dso_local i64 @read(i32, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @anetWrite(i32, i8*, i32) local_unnamed_addr #0 !dbg !1210 {
  %4 = sext i32 %2 to i64, !dbg !1221
  %5 = icmp eq i32 %2, 0, !dbg !1222
  br i1 %5, label %17, label %6, !dbg !1223

; <label>:6:                                      ; preds = %3, %13
  %7 = phi i64 [ %14, %13 ], [ 0, %3 ]
  %8 = phi i8* [ %15, %13 ], [ %1, %3 ]
  %9 = sub nsw i64 %4, %7, !dbg !1224
  %10 = tail call i64 @write(i32 %0, i8* %8, i64 %9) #5, !dbg !1226
  switch i64 %10, label %13 [
    i64 0, label %11
    i64 -1, label %17
  ], !dbg !1228

; <label>:11:                                     ; preds = %6
  %12 = trunc i64 %7 to i32, !dbg !1229
  br label %17, !dbg !1231

; <label>:13:                                     ; preds = %6
  %14 = add nsw i64 %10, %7, !dbg !1232
  %15 = getelementptr inbounds i8, i8* %8, i64 %10, !dbg !1233
  %16 = icmp eq i64 %14, %4, !dbg !1222
  br i1 %16, label %17, label %6, !dbg !1223, !llvm.loop !1234

; <label>:17:                                     ; preds = %6, %13, %3, %11
  %18 = phi i32 [ %12, %11 ], [ 0, %3 ], [ -1, %6 ], [ %2, %13 ], !dbg !1236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1237
  ret i32 %18, !dbg !1237
}

; Function Attrs: noredzone
declare dso_local i64 @write(i32, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @anetTcpServer(i8*, i32, i8*, i32) local_unnamed_addr #0 !dbg !1238 {
  %5 = tail call fastcc i32 @_anetTcpServer(i8* %0, i32 %1, i8* %2, i32 2, i32 %3) #6, !dbg !1250
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1251
  ret i32 %5, !dbg !1251
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @_anetTcpServer(i8*, i32, i8*, i32, i32) unnamed_addr #0 !dbg !1252 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [6 x i8], align 1
  %11 = alloca %struct.addrinfo, align 8
  %12 = alloca %struct.addrinfo*, align 8
  %13 = bitcast i32* %8 to i8*, !dbg !1301
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13) #4, !dbg !1301
  store i32 -1, i32* %8, align 4, !dbg !1302, !tbaa !133
  %14 = bitcast i32* %9 to i8*, !dbg !1301
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %14) #4, !dbg !1301
  %15 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0, !dbg !1303
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %15) #4, !dbg !1303
  %16 = ptrtoint [6 x i8]* %10 to i64, !dbg !1305
  %17 = add i64 %16, 65536, !dbg !1306
  %18 = inttoptr i64 %17 to i8*, !dbg !1307
  %19 = bitcast %struct.addrinfo* %11 to i8*, !dbg !1309
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %19) #4, !dbg !1309
  %20 = ptrtoint %struct.addrinfo* %11 to i64, !dbg !1310
  %21 = add i64 %20, 65536, !dbg !1311
  %22 = inttoptr i64 %21 to %struct.addrinfo*, !dbg !1312
  %23 = bitcast %struct.addrinfo** %12 to i8*, !dbg !1314
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #4, !dbg !1314
  %24 = ptrtoint %struct.addrinfo** %12 to i64, !dbg !1315
  %25 = add i64 %24, 65536, !dbg !1316
  %26 = inttoptr i64 %25 to %struct.addrinfo**, !dbg !1317
  %27 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %18, i64 6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32 %1) #5, !dbg !1319
  %28 = inttoptr i64 %21 to i8*, !dbg !1320
  %29 = call i8* @memset(i8* %28, i32 0, i64 48) #5, !dbg !1321
  %30 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %22, i64 0, i32 1, !dbg !1322
  store i32 %3, i32* %30, align 4, !dbg !1323, !tbaa !627
  %31 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %22, i64 0, i32 2, !dbg !1324
  store i32 1, i32* %31, align 8, !dbg !1325, !tbaa !630
  %32 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %22, i64 0, i32 0, !dbg !1326
  store i32 1, i32* %32, align 8, !dbg !1327, !tbaa !621
  %33 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1328, !srcloc !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1331
  %34 = icmp ult i64 %33, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1332
  br i1 %34, label %40, label %35, !dbg !1332

; <label>:35:                                     ; preds = %5
  %36 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1333, !srcloc !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1336
  %37 = icmp ugt i64 %36, ptrtoint ([0 x i8]* @_end to i64), !dbg !1332
  br i1 %37, label %40, label %38, !dbg !1337

; <label>:38:                                     ; preds = %35
  %39 = call i32 @getaddrinfo(i8* %2, i8* %18, %struct.addrinfo* %22, %struct.addrinfo** %26) #5, !dbg !1338
  store i32 %39, i32* %9, align 4, !dbg !1338, !tbaa !133
  br label %50, !dbg !1338

; <label>:40:                                     ; preds = %35, %5
  %41 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1341, !srcloc !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1345
  %42 = and i64 %41, -65536, !dbg !1347
  %43 = or i64 %42, 4097, !dbg !1347
  %44 = add nsw i64 %43, -1, !dbg !1347
  %45 = inttoptr i64 %44 to i32*, !dbg !1348
  %46 = load i32, i32* %45, align 4096, !dbg !1349, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1350
  %47 = ptrtoint i8* %2 to i64, !dbg !1351
  %48 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call getaddrinfo\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %47, i64 %17, i64 %21, i64 %25, i32 %46, i32 (i8*, i8*, %struct.addrinfo*, %struct.addrinfo**)* nonnull @getaddrinfo) #4, !dbg !1351, !srcloc !1352
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %9, i64 %48) #4, !dbg !1353, !srcloc !1356
  %49 = load i32, i32* %9, align 4, !dbg !1357, !tbaa !133
  br label %50

; <label>:50:                                     ; preds = %40, %38
  %51 = phi i32 [ %49, %40 ], [ %39, %38 ], !dbg !1357
  %52 = icmp eq i32 %51, 0, !dbg !1359
  br i1 %52, label %53, label %56, !dbg !1360

; <label>:53:                                     ; preds = %50
  %54 = load %struct.addrinfo*, %struct.addrinfo** %26, align 8, !dbg !1361, !tbaa !671
  %55 = icmp eq %struct.addrinfo* %54, null, !dbg !1363
  br i1 %55, label %147, label %58, !dbg !1364

; <label>:56:                                     ; preds = %50
  %57 = call i8* @gai_strerror(i32 %51) #5, !dbg !1365
  call void (i8*, i8*, ...) @anetSetError(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %57) #6, !dbg !1367
  br label %175, !dbg !1368

; <label>:58:                                     ; preds = %53, %143
  %59 = phi %struct.addrinfo* [ %145, %143 ], [ %54, %53 ]
  %60 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1369, !srcloc !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1372
  %61 = icmp ult i64 %60, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1373
  br i1 %61, label %73, label %62, !dbg !1373

; <label>:62:                                     ; preds = %58
  %63 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1374, !srcloc !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1377
  %64 = icmp ugt i64 %63, ptrtoint ([0 x i8]* @_end to i64), !dbg !1373
  br i1 %64, label %73, label %65, !dbg !1378

; <label>:65:                                     ; preds = %62
  %66 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %59, i64 0, i32 1, !dbg !1379
  %67 = load i32, i32* %66, align 4, !dbg !1379, !tbaa !627
  %68 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %59, i64 0, i32 2, !dbg !1379
  %69 = load i32, i32* %68, align 8, !dbg !1379, !tbaa !630
  %70 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %59, i64 0, i32 3, !dbg !1379
  %71 = load i32, i32* %70, align 4, !dbg !1379, !tbaa !856
  %72 = call i32 @socket(i32 %67, i32 %69, i32 %71) #5, !dbg !1379
  store i32 %72, i32* %8, align 4, !dbg !1379, !tbaa !133
  br label %91, !dbg !1379

; <label>:73:                                     ; preds = %62, %58
  %74 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1381, !srcloc !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1385
  %75 = and i64 %74, -65536, !dbg !1387
  %76 = or i64 %75, 4097, !dbg !1387
  %77 = add nsw i64 %76, -1, !dbg !1387
  %78 = inttoptr i64 %77 to i32*, !dbg !1388
  %79 = load i32, i32* %78, align 4096, !dbg !1389, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1390
  %80 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %59, i64 0, i32 3, !dbg !1391
  %81 = load i32, i32* %80, align 4, !dbg !1391, !tbaa !856
  %82 = sext i32 %81 to i64, !dbg !1391
  %83 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %59, i64 0, i32 1, !dbg !1391
  %84 = load i32, i32* %83, align 4, !dbg !1391, !tbaa !627
  %85 = sext i32 %84 to i64, !dbg !1391
  %86 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %59, i64 0, i32 2, !dbg !1391
  %87 = load i32, i32* %86, align 8, !dbg !1391, !tbaa !630
  %88 = sext i32 %87 to i64, !dbg !1391
  %89 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call socket\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %85, i64 %88, i64 %82, i32 %79, i32 (i32, i32, i32)* nonnull @socket) #4, !dbg !1391, !srcloc !1392
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %8, i64 %89) #4, !dbg !1393, !srcloc !1396
  %90 = load i32, i32* %8, align 4, !dbg !1397, !tbaa !133
  br label %91

; <label>:91:                                     ; preds = %73, %65
  %92 = phi i32 [ %90, %73 ], [ %72, %65 ], !dbg !1397
  %93 = icmp eq i32 %92, -1, !dbg !1399
  br i1 %93, label %143, label %94, !dbg !1400

; <label>:94:                                     ; preds = %91
  %95 = icmp eq i32 %3, 10, !dbg !1401
  br i1 %95, label %96, label %130, !dbg !1403

; <label>:96:                                     ; preds = %94
  %97 = bitcast i32* %6 to i8*, !dbg !1424
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %97) #4, !dbg !1424
  %98 = ptrtoint i32* %6 to i64, !dbg !1425
  %99 = add i64 %98, 65536, !dbg !1426
  %100 = inttoptr i64 %99 to i32*, !dbg !1427
  store i32 1, i32* %100, align 4, !dbg !1429, !tbaa !133
  %101 = bitcast i32* %7 to i8*, !dbg !1430
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %101) #4, !dbg !1430
  %102 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1431, !srcloc !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1434
  %103 = icmp ult i64 %102, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1435
  br i1 %103, label %110, label %104, !dbg !1435

; <label>:104:                                    ; preds = %96
  %105 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1436, !srcloc !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1439
  %106 = icmp ugt i64 %105, ptrtoint ([0 x i8]* @_end to i64), !dbg !1435
  br i1 %106, label %110, label %107, !dbg !1440

; <label>:107:                                    ; preds = %104
  %108 = inttoptr i64 %99 to i8*, !dbg !1441
  %109 = call i32 @setsockopt(i32 %92, i32 41, i32 27, i8* %108, i32 4) #5, !dbg !1441
  store i32 %109, i32* %7, align 4, !dbg !1441, !tbaa !133
  br label %120, !dbg !1441

; <label>:110:                                    ; preds = %104, %96
  %111 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1444, !srcloc !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1448
  %112 = and i64 %111, -65536, !dbg !1450
  %113 = or i64 %112, 4097, !dbg !1450
  %114 = add nsw i64 %113, -1, !dbg !1450
  %115 = inttoptr i64 %114 to i32*, !dbg !1451
  %116 = load i32, i32* %115, align 4096, !dbg !1452, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1453
  %117 = sext i32 %92 to i64, !dbg !1454
  %118 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call setsockopt\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r8},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %117, i64 41, i64 27, i64 %99, i64 4, i32 %116, i32 (i32, i32, i32, i8*, i32)* nonnull @setsockopt) #4, !dbg !1454, !srcloc !1455
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %7, i64 %118) #4, !dbg !1456, !srcloc !1459
  %119 = load i32, i32* %7, align 4, !dbg !1460, !tbaa !133
  br label %120

; <label>:120:                                    ; preds = %110, %107
  %121 = phi i32 [ %119, %110 ], [ %109, %107 ], !dbg !1460
  %122 = icmp eq i32 %121, -1, !dbg !1462
  br i1 %122, label %123, label %128, !dbg !1463

; <label>:123:                                    ; preds = %120
  %124 = call i32* @__errno() #5, !dbg !1464
  %125 = load i32, i32* %124, align 4, !dbg !1464, !tbaa !133
  %126 = call i8* @strerror(i32 %125) #5, !dbg !1466
  call void (i8*, i8*, ...) @anetSetError(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i8* %126) #5, !dbg !1467
  %127 = call i32 @close(i32 %92) #5, !dbg !1468
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %101) #4, !dbg !1469
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %97) #4, !dbg !1469
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1469
  br label %150, !dbg !1470

; <label>:128:                                    ; preds = %120
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %101) #4, !dbg !1469
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %97) #4, !dbg !1469
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1469
  %129 = load i32, i32* %8, align 4, !dbg !1471, !tbaa !133
  br label %130

; <label>:130:                                    ; preds = %128, %94
  %131 = phi i32 [ %129, %128 ], [ %92, %94 ], !dbg !1471
  %132 = call fastcc i32 @anetSetReuseAddr(i8* %0, i32 %131) #6, !dbg !1473
  %133 = icmp eq i32 %132, -1, !dbg !1474
  br i1 %133, label %150, label %134, !dbg !1475

; <label>:134:                                    ; preds = %130
  %135 = load i32, i32* %8, align 4, !dbg !1476, !tbaa !133
  %136 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %59, i64 0, i32 5, !dbg !1478
  %137 = load %struct.sockaddr*, %struct.sockaddr** %136, align 8, !dbg !1478, !tbaa !677
  %138 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %59, i64 0, i32 4, !dbg !1479
  %139 = load i32, i32* %138, align 8, !dbg !1479, !tbaa !944
  %140 = call fastcc i32 @anetListen(i8* %0, i32 %135, %struct.sockaddr* %137, i32 %139, i32 %4) #6, !dbg !1480
  %141 = icmp eq i32 %140, -1, !dbg !1481
  br i1 %141, label %142, label %156, !dbg !1482

; <label>:142:                                    ; preds = %134
  store i32 -1, i32* %8, align 4, !dbg !1483, !tbaa !133
  br label %156, !dbg !1484

; <label>:143:                                    ; preds = %91
  %144 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %59, i64 0, i32 7, !dbg !1485
  %145 = load %struct.addrinfo*, %struct.addrinfo** %144, align 8, !dbg !1361, !tbaa !671
  %146 = icmp eq %struct.addrinfo* %145, null, !dbg !1363
  br i1 %146, label %147, label %58, !dbg !1364, !llvm.loop !1486

; <label>:147:                                    ; preds = %143, %53
  %148 = call i32* @__errno() #5, !dbg !1488
  %149 = load i32, i32* %148, align 4, !dbg !1488, !tbaa !133
  call void (i8*, i8*, ...) @anetSetError(i8* %0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0), i32 %149) #6, !dbg !1491
  br label %150, !dbg !1492

; <label>:150:                                    ; preds = %123, %130, %147
  %151 = load i32, i32* %8, align 4, !dbg !1493, !tbaa !133
  %152 = icmp eq i32 %151, -1, !dbg !1495
  br i1 %152, label %155, label %153, !dbg !1496

; <label>:153:                                    ; preds = %150
  %154 = call i32 @close(i32 %151) #5, !dbg !1497
  br label %155, !dbg !1497

; <label>:155:                                    ; preds = %150, %153
  store i32 -1, i32* %8, align 4, !dbg !1498, !tbaa !133
  br label %156, !dbg !1499

; <label>:156:                                    ; preds = %155, %142, %134
  %157 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1500, !srcloc !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1503
  %158 = icmp ult i64 %157, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1504
  br i1 %158, label %164, label %159, !dbg !1504

; <label>:159:                                    ; preds = %156
  %160 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1505, !srcloc !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1508
  %161 = icmp ugt i64 %160, ptrtoint ([0 x i8]* @_end to i64), !dbg !1504
  br i1 %161, label %164, label %162, !dbg !1509

; <label>:162:                                    ; preds = %159
  %163 = load %struct.addrinfo*, %struct.addrinfo** %26, align 8, !dbg !1510, !tbaa !671
  call void @freeaddrinfo(%struct.addrinfo* %163) #5, !dbg !1510
  br label %173, !dbg !1510

; <label>:164:                                    ; preds = %159, %156
  %165 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1512, !srcloc !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1516
  %166 = and i64 %165, -65536, !dbg !1518
  %167 = or i64 %166, 4097, !dbg !1518
  %168 = add nsw i64 %167, -1, !dbg !1518
  %169 = inttoptr i64 %168 to i32*, !dbg !1519
  %170 = load i32, i32* %169, align 4096, !dbg !1520, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1521
  %171 = inttoptr i64 %25 to i64*, !dbg !1522
  %172 = load i64, i64* %171, align 8, !dbg !1522, !tbaa !671
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call freeaddrinfo\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %172, i32 %170, void (%struct.addrinfo*)* nonnull @freeaddrinfo) #4, !dbg !1522, !srcloc !1523
  br label %173

; <label>:173:                                    ; preds = %164, %162
  %174 = load i32, i32* %8, align 4, !dbg !1524, !tbaa !133
  br label %175, !dbg !1525

; <label>:175:                                    ; preds = %173, %56
  %176 = phi i32 [ -1, %56 ], [ %174, %173 ], !dbg !1526
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #4, !dbg !1527
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %19) #4, !dbg !1527
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %15) #4, !dbg !1527
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14) #4, !dbg !1527
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #4, !dbg !1527
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1527
  ret i32 %176, !dbg !1527
}

; Function Attrs: noredzone nounwind
define dso_local i32 @anetTcp6Server(i8*, i32, i8*, i32) local_unnamed_addr #0 !dbg !1528 {
  %5 = tail call fastcc i32 @_anetTcpServer(i8* %0, i32 %1, i8* %2, i32 10, i32 %3) #6, !dbg !1538
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1539
  ret i32 %5, !dbg !1539
}

; Function Attrs: noredzone nounwind
define dso_local i32 @anetUnixServer(i8*, i8*, i32, i32) local_unnamed_addr #0 !dbg !1540 {
  %5 = alloca %struct.sockaddr_un, align 1
  %6 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %5, i64 0, i32 0, !dbg !1556
  call void @llvm.lifetime.start.p0i8(i64 109, i8* nonnull %6) #4, !dbg !1556
  %7 = tail call fastcc i32 @anetCreateSocket(i8* %0) #6, !dbg !1557
  %8 = icmp eq i32 %7, -1, !dbg !1560
  br i1 %8, label %20, label %9, !dbg !1561

; <label>:9:                                      ; preds = %4
  %10 = call i8* @memset(i8* nonnull %6, i32 0, i64 109) #5, !dbg !1562
  store i8 1, i8* %6, align 1, !dbg !1563, !tbaa !1060
  %11 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %5, i64 0, i32 1, i64 0, !dbg !1564
  %12 = call i8* @strncpy(i8* nonnull %11, i8* %1, i64 107) #5, !dbg !1565
  %13 = bitcast %struct.sockaddr_un* %5 to %struct.sockaddr*, !dbg !1566
  %14 = call fastcc i32 @anetListen(i8* %0, i32 %7, %struct.sockaddr* nonnull %13, i32 109, i32 %3) #6, !dbg !1568
  %15 = icmp eq i32 %14, -1, !dbg !1569
  br i1 %15, label %20, label %16, !dbg !1570

; <label>:16:                                     ; preds = %9
  %17 = icmp eq i32 %2, 0, !dbg !1571
  br i1 %17, label %20, label %18, !dbg !1573

; <label>:18:                                     ; preds = %16
  %19 = call i32 @chmod(i8* nonnull %11, i32 %2) #5, !dbg !1574
  br label %20, !dbg !1574

; <label>:20:                                     ; preds = %18, %16, %9, %4
  %21 = phi i32 [ -1, %4 ], [ -1, %9 ], [ %7, %16 ], [ %7, %18 ], !dbg !1575
  call void @llvm.lifetime.end.p0i8(i64 109, i8* nonnull %6) #4, !dbg !1576
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1576
  ret i32 %21, !dbg !1576
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @anetListen(i8*, i32, %struct.sockaddr*, i32, i32) unnamed_addr #0 !dbg !1577 {
  %6 = alloca i32, align 4
  %7 = bitcast i32* %6 to i8*, !dbg !1607
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #4, !dbg !1607
  %8 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1608, !srcloc !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1611
  %9 = icmp ult i64 %8, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1612
  br i1 %9, label %15, label %10, !dbg !1612

; <label>:10:                                     ; preds = %5
  %11 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1613, !srcloc !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1616
  %12 = icmp ugt i64 %11, ptrtoint ([0 x i8]* @_end to i64), !dbg !1612
  br i1 %12, label %15, label %13, !dbg !1617

; <label>:13:                                     ; preds = %10
  %14 = tail call i32 @bind(i32 %1, %struct.sockaddr* %2, i32 %3) #5, !dbg !1618
  store i32 %14, i32* %6, align 4, !dbg !1618, !tbaa !133
  br label %27, !dbg !1618

; <label>:15:                                     ; preds = %10, %5
  %16 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1621, !srcloc !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1625
  %17 = and i64 %16, -65536, !dbg !1627
  %18 = or i64 %17, 4097, !dbg !1627
  %19 = add nsw i64 %18, -1, !dbg !1627
  %20 = inttoptr i64 %19 to i32*, !dbg !1628
  %21 = load i32, i32* %20, align 4096, !dbg !1629, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1630
  %22 = zext i32 %3 to i64, !dbg !1631
  %23 = sext i32 %1 to i64, !dbg !1631
  %24 = ptrtoint %struct.sockaddr* %2 to i64, !dbg !1631
  %25 = tail call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call bind\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %23, i64 %24, i64 %22, i32 %21, i32 (i32, %struct.sockaddr*, i32)* nonnull @bind) #4, !dbg !1631, !srcloc !1632
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %6, i64 %25) #4, !dbg !1633, !srcloc !1636
  %26 = load i32, i32* %6, align 4, !dbg !1637, !tbaa !133
  br label %27

; <label>:27:                                     ; preds = %15, %13
  %28 = phi i32 [ %26, %15 ], [ %14, %13 ], !dbg !1637
  %29 = icmp eq i32 %28, -1, !dbg !1639
  br i1 %29, label %30, label %35, !dbg !1640

; <label>:30:                                     ; preds = %27
  %31 = call i32* @__errno() #5, !dbg !1641
  %32 = load i32, i32* %31, align 4, !dbg !1641, !tbaa !133
  %33 = call i8* @strerror(i32 %32) #5, !dbg !1643
  call void (i8*, i8*, ...) @anetSetError(i8* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* %33) #6, !dbg !1644
  %34 = call i32 @close(i32 %1) #5, !dbg !1645
  br label %62, !dbg !1646

; <label>:35:                                     ; preds = %27
  %36 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1647, !srcloc !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1650
  %37 = icmp ult i64 %36, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1651
  br i1 %37, label %43, label %38, !dbg !1651

; <label>:38:                                     ; preds = %35
  %39 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1652, !srcloc !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1655
  %40 = icmp ugt i64 %39, ptrtoint ([0 x i8]* @_end to i64), !dbg !1651
  br i1 %40, label %43, label %41, !dbg !1656

; <label>:41:                                     ; preds = %38
  %42 = call i32 @listen(i32 %1, i32 %4) #5, !dbg !1657
  store i32 %42, i32* %6, align 4, !dbg !1657, !tbaa !133
  br label %54, !dbg !1657

; <label>:43:                                     ; preds = %38, %35
  %44 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1659, !srcloc !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1663
  %45 = and i64 %44, -65536, !dbg !1665
  %46 = or i64 %45, 4097, !dbg !1665
  %47 = add nsw i64 %46, -1, !dbg !1665
  %48 = inttoptr i64 %47 to i32*, !dbg !1666
  %49 = load i32, i32* %48, align 4096, !dbg !1667, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1668
  %50 = sext i32 %1 to i64, !dbg !1669
  %51 = sext i32 %4 to i64, !dbg !1669
  %52 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call listen\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %50, i64 %51, i32 %49, i32 (i32, i32)* nonnull @listen) #4, !dbg !1669, !srcloc !1670
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %6, i64 %52) #4, !dbg !1671, !srcloc !1674
  %53 = load i32, i32* %6, align 4, !dbg !1675, !tbaa !133
  br label %54

; <label>:54:                                     ; preds = %43, %41
  %55 = phi i32 [ %53, %43 ], [ %42, %41 ], !dbg !1675
  %56 = icmp eq i32 %55, -1, !dbg !1677
  br i1 %56, label %57, label %62, !dbg !1678

; <label>:57:                                     ; preds = %54
  %58 = call i32* @__errno() #5, !dbg !1679
  %59 = load i32, i32* %58, align 4, !dbg !1679, !tbaa !133
  %60 = call i8* @strerror(i32 %59) #5, !dbg !1681
  call void (i8*, i8*, ...) @anetSetError(i8* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i8* %60) #6, !dbg !1682
  %61 = call i32 @close(i32 %1) #5, !dbg !1683
  br label %62, !dbg !1684

; <label>:62:                                     ; preds = %54, %57, %30
  %63 = phi i32 [ -1, %30 ], [ -1, %57 ], [ 0, %54 ], !dbg !1685
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #4, !dbg !1686
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1686
  ret i32 %63, !dbg !1686
}

; Function Attrs: noredzone
declare dso_local i32 @chmod(i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @anetTcpAccept(i8*, i32, i8*, i64, i32*) local_unnamed_addr #0 !dbg !1687 {
  %6 = tail call fastcc i32 @anetGenericAccept(i8* %0, i32 %1, %struct.sockaddr* bitcast (%struct.sockaddr_storage* @sa to %struct.sockaddr*), i32* nonnull @salen) #6, !dbg !1707
  %7 = icmp eq i32 %6, -1, !dbg !1710
  br i1 %7, label %32, label %8, !dbg !1711

; <label>:8:                                      ; preds = %5
  %9 = load i8, i8* getelementptr inbounds (%struct.sockaddr_storage, %struct.sockaddr_storage* @sa, i64 0, i32 1), align 1, !dbg !1712, !tbaa !1713
  %10 = icmp eq i8 %9, 2, !dbg !1715
  %11 = icmp eq i8* %2, null, !dbg !1716
  br i1 %10, label %12, label %22, !dbg !1718

; <label>:12:                                     ; preds = %8
  br i1 %11, label %16, label %13, !dbg !1719

; <label>:13:                                     ; preds = %12
  %14 = trunc i64 %3 to i32, !dbg !1720
  %15 = tail call i8* @inet_ntop(i32 2, i8* bitcast (i32* getelementptr inbounds (%struct.sockaddr_storage, %struct.sockaddr_storage* @sa, i64 0, i32 3, i64 0) to i8*), i8* nonnull %2, i32 %14) #5, !dbg !1722
  br label %16, !dbg !1722

; <label>:16:                                     ; preds = %12, %13
  %17 = icmp eq i32* %4, null, !dbg !1723
  br i1 %17, label %32, label %18, !dbg !1725

; <label>:18:                                     ; preds = %16
  %19 = load i16, i16* bitcast (i8* getelementptr inbounds (%struct.sockaddr_storage, %struct.sockaddr_storage* @sa, i64 0, i32 2, i64 0) to i16*), align 2, !dbg !1726, !tbaa !1727
  %20 = tail call zeroext i16 @lwip_htons(i16 zeroext %19) #5, !dbg !1726
  %21 = zext i16 %20 to i32, !dbg !1726
  store i32 %21, i32* %4, align 4, !dbg !1731, !tbaa !133
  br label %32, !dbg !1732

; <label>:22:                                     ; preds = %8
  br i1 %11, label %26, label %23, !dbg !1733

; <label>:23:                                     ; preds = %22
  %24 = trunc i64 %3 to i32, !dbg !1734
  %25 = tail call i8* @inet_ntop(i32 10, i8* bitcast (i32* getelementptr inbounds (%struct.sockaddr_storage, %struct.sockaddr_storage* @sa, i64 0, i32 3, i64 1) to i8*), i8* nonnull %2, i32 %24) #5, !dbg !1735
  br label %26, !dbg !1735

; <label>:26:                                     ; preds = %22, %23
  %27 = icmp eq i32* %4, null, !dbg !1736
  br i1 %27, label %32, label %28, !dbg !1738

; <label>:28:                                     ; preds = %26
  %29 = load i16, i16* bitcast (i8* getelementptr inbounds (%struct.sockaddr_storage, %struct.sockaddr_storage* @sa, i64 0, i32 2, i64 0) to i16*), align 2, !dbg !1739, !tbaa !1740
  %30 = tail call zeroext i16 @lwip_htons(i16 zeroext %29) #5, !dbg !1739
  %31 = zext i16 %30 to i32, !dbg !1739
  store i32 %31, i32* %4, align 4, !dbg !1743, !tbaa !133
  br label %32, !dbg !1744

; <label>:32:                                     ; preds = %16, %18, %26, %28, %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1745
  ret i32 %6, !dbg !1745
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @anetGenericAccept(i8*, i32, %struct.sockaddr*, i32*) unnamed_addr #0 !dbg !1746 {
  %5 = alloca i32, align 4
  %6 = bitcast i32* %5 to i8*, !dbg !1769
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #4, !dbg !1769
  %7 = ptrtoint i32* %3 to i64
  %8 = sext i32 %1 to i64
  %9 = ptrtoint %struct.sockaddr* %2 to i64
  br label %10, !dbg !1770

; <label>:10:                                     ; preds = %30, %4
  %11 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1771, !srcloc !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1774
  %12 = icmp ult i64 %11, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1775
  br i1 %12, label %18, label %13, !dbg !1775

; <label>:13:                                     ; preds = %10
  %14 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1776, !srcloc !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1779
  %15 = icmp ugt i64 %14, ptrtoint ([0 x i8]* @_end to i64), !dbg !1775
  br i1 %15, label %18, label %16, !dbg !1780

; <label>:16:                                     ; preds = %13
  %17 = call i32 @accept(i32 %1, %struct.sockaddr* %2, i32* %3) #5, !dbg !1781
  store i32 %17, i32* %5, align 4, !dbg !1781, !tbaa !133
  br label %27, !dbg !1781

; <label>:18:                                     ; preds = %13, %10
  %19 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1784, !srcloc !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1788
  %20 = and i64 %19, -65536, !dbg !1790
  %21 = or i64 %20, 4097, !dbg !1790
  %22 = add nsw i64 %21, -1, !dbg !1790
  %23 = inttoptr i64 %22 to i32*, !dbg !1791
  %24 = load i32, i32* %23, align 4096, !dbg !1792, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1793
  %25 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call accept\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %8, i64 %9, i64 %7, i32 %24, i32 (i32, %struct.sockaddr*, i32*)* nonnull @accept) #4, !dbg !1794, !srcloc !1795
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %5, i64 %25) #4, !dbg !1796, !srcloc !1799
  %26 = load i32, i32* %5, align 4, !dbg !1800, !tbaa !133
  br label %27

; <label>:27:                                     ; preds = %18, %16
  %28 = phi i32 [ %26, %18 ], [ %17, %16 ], !dbg !1800
  %29 = icmp eq i32 %28, -1, !dbg !1802
  br i1 %29, label %30, label %38, !dbg !1803

; <label>:30:                                     ; preds = %27
  %31 = call i32* @__errno() #5, !dbg !1804
  %32 = load i32, i32* %31, align 4, !dbg !1804, !tbaa !133
  %33 = icmp eq i32 %32, 4, !dbg !1807
  br i1 %33, label %10, label %34, !dbg !1808, !llvm.loop !1809

; <label>:34:                                     ; preds = %30
  %35 = call i32* @__errno() #5, !dbg !1811
  %36 = load i32, i32* %35, align 4, !dbg !1811, !tbaa !133
  %37 = call i8* @strerror(i32 %36) #5, !dbg !1813
  call void (i8*, i8*, ...) @anetSetError(i8* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i8* %37) #6, !dbg !1814
  br label %38, !dbg !1815

; <label>:38:                                     ; preds = %27, %34
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #4, !dbg !1816
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1816
  ret i32 %28, !dbg !1816
}

; Function Attrs: noredzone
declare dso_local zeroext i16 @lwip_htons(i16 zeroext) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @anetUnixAccept(i8*, i32) local_unnamed_addr #0 !dbg !1817 {
  %3 = alloca %struct.sockaddr_un, align 1
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %3, i64 0, i32 0, !dbg !1826
  call void @llvm.lifetime.start.p0i8(i64 109, i8* nonnull %5) #4, !dbg !1826
  %6 = bitcast i32* %4 to i8*, !dbg !1827
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #4, !dbg !1827
  store i32 109, i32* %4, align 4, !dbg !1828, !tbaa !133
  %7 = bitcast %struct.sockaddr_un* %3 to %struct.sockaddr*, !dbg !1829
  %8 = call fastcc i32 @anetGenericAccept(i8* %0, i32 %1, %struct.sockaddr* nonnull %7, i32* nonnull %4) #6, !dbg !1831
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #4, !dbg !1833
  call void @llvm.lifetime.end.p0i8(i64 109, i8* nonnull %5) #4, !dbg !1833
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1833
  ret i32 %8, !dbg !1833
}

; Function Attrs: noredzone nounwind
define dso_local i32 @anetPeerToString(i32, i8*, i64, i32*) local_unnamed_addr #0 !dbg !1834 {
  %5 = alloca %struct.sockaddr_storage, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %5, i64 0, i32 0, !dbg !1863
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %8) #4, !dbg !1863
  %9 = bitcast i32* %6 to i8*, !dbg !1864
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #4, !dbg !1864
  store i32 28, i32* %6, align 4, !dbg !1865, !tbaa !133
  %10 = bitcast i32* %7 to i8*, !dbg !1866
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #4, !dbg !1866
  %11 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1867, !srcloc !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1870
  %12 = icmp ult i64 %11, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !1871
  br i1 %12, label %19, label %13, !dbg !1871

; <label>:13:                                     ; preds = %4
  %14 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1872, !srcloc !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1875
  %15 = icmp ugt i64 %14, ptrtoint ([0 x i8]* @_end to i64), !dbg !1871
  br i1 %15, label %19, label %16, !dbg !1876

; <label>:16:                                     ; preds = %13
  %17 = bitcast %struct.sockaddr_storage* %5 to %struct.sockaddr*, !dbg !1877
  %18 = call i32 @getpeername(i32 %0, %struct.sockaddr* nonnull %17, i32* nonnull %6) #5, !dbg !1877
  store i32 %18, i32* %7, align 4, !dbg !1877, !tbaa !133
  br label %31, !dbg !1877

; <label>:19:                                     ; preds = %13, %4
  %20 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !1880, !srcloc !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1884
  %21 = and i64 %20, -65536, !dbg !1886
  %22 = or i64 %21, 4097, !dbg !1886
  %23 = add nsw i64 %22, -1, !dbg !1886
  %24 = inttoptr i64 %23 to i32*, !dbg !1887
  %25 = load i32, i32* %24, align 4096, !dbg !1888, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1889
  %26 = ptrtoint i32* %6 to i64, !dbg !1890
  %27 = sext i32 %0 to i64, !dbg !1890
  %28 = ptrtoint %struct.sockaddr_storage* %5 to i64, !dbg !1890
  %29 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call getpeername\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %27, i64 %28, i64 %26, i32 %25, i32 (i32, %struct.sockaddr*, i32*)* nonnull @getpeername) #4, !dbg !1890, !srcloc !1891
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %7, i64 %29) #4, !dbg !1892, !srcloc !1895
  %30 = load i32, i32* %7, align 4, !dbg !1896, !tbaa !133
  br label %31

; <label>:31:                                     ; preds = %19, %16
  %32 = phi i32 [ %30, %19 ], [ %18, %16 ], !dbg !1896
  %33 = icmp eq i32 %32, -1, !dbg !1898
  %34 = icmp eq i64 %2, 0, !dbg !1899
  %35 = or i1 %34, %33, !dbg !1901
  br i1 %35, label %76, label %36, !dbg !1901

; <label>:36:                                     ; preds = %31
  %37 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %5, i64 0, i32 1, !dbg !1902
  %38 = load i8, i8* %37, align 1, !dbg !1902, !tbaa !1713
  switch i8 %38, label %76 [
    i8 2, label %39
    i8 10, label %54
    i8 1, label %69
  ], !dbg !1903

; <label>:39:                                     ; preds = %36
  %40 = icmp eq i8* %1, null, !dbg !1904
  br i1 %40, label %46, label %41, !dbg !1906

; <label>:41:                                     ; preds = %39
  %42 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %5, i64 0, i32 3, !dbg !1908
  %43 = bitcast [3 x i32]* %42 to i8*, !dbg !1909
  %44 = trunc i64 %2 to i32, !dbg !1910
  %45 = call i8* @inet_ntop(i32 2, i8* nonnull %43, i8* nonnull %1, i32 %44) #5, !dbg !1911
  br label %46, !dbg !1911

; <label>:46:                                     ; preds = %39, %41
  %47 = icmp eq i32* %3, null, !dbg !1912
  br i1 %47, label %88, label %48, !dbg !1914

; <label>:48:                                     ; preds = %46
  %49 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %5, i64 0, i32 2, !dbg !1915
  %50 = bitcast [2 x i8]* %49 to i16*, !dbg !1915
  %51 = load i16, i16* %50, align 2, !dbg !1915, !tbaa !1727
  %52 = call zeroext i16 @lwip_htons(i16 zeroext %51) #5, !dbg !1915
  %53 = zext i16 %52 to i32, !dbg !1915
  store i32 %53, i32* %3, align 4, !dbg !1916, !tbaa !133
  br label %88, !dbg !1917

; <label>:54:                                     ; preds = %36
  %55 = icmp eq i8* %1, null, !dbg !1918
  br i1 %55, label %61, label %56, !dbg !1920

; <label>:56:                                     ; preds = %54
  %57 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %5, i64 0, i32 3, i64 1, !dbg !1922
  %58 = bitcast i32* %57 to i8*, !dbg !1923
  %59 = trunc i64 %2 to i32, !dbg !1924
  %60 = call i8* @inet_ntop(i32 10, i8* nonnull %58, i8* nonnull %1, i32 %59) #5, !dbg !1925
  br label %61, !dbg !1925

; <label>:61:                                     ; preds = %54, %56
  %62 = icmp eq i32* %3, null, !dbg !1926
  br i1 %62, label %88, label %63, !dbg !1928

; <label>:63:                                     ; preds = %61
  %64 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %5, i64 0, i32 2, !dbg !1929
  %65 = bitcast [2 x i8]* %64 to i16*, !dbg !1929
  %66 = load i16, i16* %65, align 2, !dbg !1929, !tbaa !1740
  %67 = call zeroext i16 @lwip_htons(i16 zeroext %66) #5, !dbg !1929
  %68 = zext i16 %67 to i32, !dbg !1929
  store i32 %68, i32* %3, align 4, !dbg !1930, !tbaa !133
  br label %88, !dbg !1931

; <label>:69:                                     ; preds = %36
  %70 = icmp eq i8* %1, null, !dbg !1932
  br i1 %70, label %73, label %71, !dbg !1936

; <label>:71:                                     ; preds = %69
  %72 = call i8* @strncpy(i8* nonnull %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i64 %2) #5, !dbg !1937
  br label %73, !dbg !1937

; <label>:73:                                     ; preds = %69, %71
  %74 = icmp eq i32* %3, null, !dbg !1938
  br i1 %74, label %88, label %75, !dbg !1940

; <label>:75:                                     ; preds = %73
  store i32 0, i32* %3, align 4, !dbg !1941, !tbaa !133
  br label %88, !dbg !1942

; <label>:76:                                     ; preds = %36, %31
  %77 = icmp eq i8* %1, null, !dbg !1943
  br i1 %77, label %85, label %78, !dbg !1945

; <label>:78:                                     ; preds = %76
  %79 = icmp ugt i64 %2, 1, !dbg !1946
  br i1 %79, label %80, label %82, !dbg !1949

; <label>:80:                                     ; preds = %78
  store i8 63, i8* %1, align 1, !dbg !1950, !tbaa !1952
  %81 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1953
  store i8 0, i8* %81, align 1, !dbg !1954, !tbaa !1952
  br label %85, !dbg !1955

; <label>:82:                                     ; preds = %78
  %83 = icmp eq i64 %2, 1, !dbg !1956
  br i1 %83, label %84, label %85, !dbg !1958

; <label>:84:                                     ; preds = %82
  store i8 0, i8* %1, align 1, !dbg !1959, !tbaa !1952
  br label %85, !dbg !1961

; <label>:85:                                     ; preds = %76, %80, %84, %82
  %86 = icmp eq i32* %3, null, !dbg !1962
  br i1 %86, label %88, label %87, !dbg !1964

; <label>:87:                                     ; preds = %85
  store i32 0, i32* %3, align 4, !dbg !1965, !tbaa !133
  br label %88, !dbg !1966

; <label>:88:                                     ; preds = %87, %85, %75, %73, %46, %48, %61, %63
  %89 = phi i32 [ 0, %63 ], [ 0, %61 ], [ 0, %48 ], [ 0, %46 ], [ 0, %73 ], [ 0, %75 ], [ -1, %85 ], [ -1, %87 ], !dbg !1967
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #4, !dbg !1968
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #4, !dbg !1968
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %8) #4, !dbg !1968
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1968
  ret i32 %89, !dbg !1968
}

; Function Attrs: noredzone
declare dso_local i32 @getpeername(i32, %struct.sockaddr*, i32*) #3

; Function Attrs: noredzone nounwind
define dso_local i32 @anetFormatAddr(i8*, i64, i8*, i32) local_unnamed_addr #0 !dbg !1969 {
  %5 = tail call i8* @strchr(i8* %2, i32 58) #5, !dbg !1981
  %6 = icmp eq i8* %5, null, !dbg !1981
  %7 = select i1 %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), !dbg !1981
  %8 = tail call i32 (i8*, i64, i8*, ...) @snprintf(i8* %0, i64 %1, i8* %7, i8* %2, i32 %3) #5, !dbg !1982
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1983
  ret i32 %8, !dbg !1983
}

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @anetFormatPeer(i32, i8*, i64) local_unnamed_addr #0 !dbg !1984 {
  %4 = alloca [46 x i8], align 16
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds [46 x i8], [46 x i8]* %4, i64 0, i64 0, !dbg !1999
  call void @llvm.lifetime.start.p0i8(i64 46, i8* nonnull %6) #4, !dbg !1999
  %7 = bitcast i32* %5 to i8*, !dbg !2001
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #4, !dbg !2001
  %8 = call i32 @anetPeerToString(i32 %0, i8* nonnull %6, i64 46, i32* nonnull %5) #6, !dbg !2003
  %9 = load i32, i32* %5, align 4, !dbg !2004, !tbaa !133
  %10 = call i8* @strchr(i8* nonnull %6, i32 58) #5, !dbg !2010
  %11 = icmp eq i8* %10, null, !dbg !2010
  %12 = select i1 %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), !dbg !2010
  %13 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %1, i64 %2, i8* %12, i8* nonnull %6, i32 %9) #5, !dbg !2011
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2012
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #4, !dbg !2013
  call void @llvm.lifetime.end.p0i8(i64 46, i8* nonnull %6) #4, !dbg !2013
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2014
  ret i32 %13, !dbg !2014
}

; Function Attrs: noredzone nounwind
define dso_local i32 @anetSockName(i32, i8*, i64, i32*) local_unnamed_addr #0 !dbg !2015 {
  %5 = alloca %struct.sockaddr_storage, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %5, i64 0, i32 0, !dbg !2032
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %7) #4, !dbg !2032
  %8 = bitcast i32* %6 to i8*, !dbg !2033
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #4, !dbg !2033
  store i32 28, i32* %6, align 4, !dbg !2034, !tbaa !133
  %9 = bitcast %struct.sockaddr_storage* %5 to %struct.sockaddr*, !dbg !2035
  %10 = call i32 @getsockname(i32 %0, %struct.sockaddr* nonnull %9, i32* nonnull %6) #5, !dbg !2037
  %11 = icmp eq i32 %10, -1, !dbg !2038
  br i1 %11, label %12, label %17, !dbg !2039

; <label>:12:                                     ; preds = %4
  %13 = icmp eq i32* %3, null, !dbg !2040
  br i1 %13, label %15, label %14, !dbg !2043

; <label>:14:                                     ; preds = %12
  store i32 0, i32* %3, align 4, !dbg !2044, !tbaa !133
  br label %15, !dbg !2045

; <label>:15:                                     ; preds = %12, %14
  store i8 63, i8* %1, align 1, !dbg !2046, !tbaa !1952
  %16 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2047
  store i8 0, i8* %16, align 1, !dbg !2048, !tbaa !1952
  br label %50, !dbg !2049

; <label>:17:                                     ; preds = %4
  %18 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %5, i64 0, i32 1, !dbg !2050
  %19 = load i8, i8* %18, align 1, !dbg !2050, !tbaa !1713
  %20 = icmp eq i8 %19, 2, !dbg !2051
  %21 = icmp eq i8* %1, null, !dbg !2052
  br i1 %20, label %22, label %36, !dbg !2054

; <label>:22:                                     ; preds = %17
  br i1 %21, label %28, label %23, !dbg !2055

; <label>:23:                                     ; preds = %22
  %24 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %5, i64 0, i32 3, !dbg !2057
  %25 = bitcast [3 x i32]* %24 to i8*, !dbg !2059
  %26 = trunc i64 %2 to i32, !dbg !2060
  %27 = call i8* @inet_ntop(i32 2, i8* nonnull %25, i8* nonnull %1, i32 %26) #5, !dbg !2061
  br label %28, !dbg !2061

; <label>:28:                                     ; preds = %22, %23
  %29 = icmp eq i32* %3, null, !dbg !2062
  br i1 %29, label %50, label %30, !dbg !2064

; <label>:30:                                     ; preds = %28
  %31 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %5, i64 0, i32 2, !dbg !2065
  %32 = bitcast [2 x i8]* %31 to i16*, !dbg !2065
  %33 = load i16, i16* %32, align 2, !dbg !2065, !tbaa !1727
  %34 = call zeroext i16 @lwip_htons(i16 zeroext %33) #5, !dbg !2065
  %35 = zext i16 %34 to i32, !dbg !2065
  store i32 %35, i32* %3, align 4, !dbg !2066, !tbaa !133
  br label %50, !dbg !2067

; <label>:36:                                     ; preds = %17
  br i1 %21, label %42, label %37, !dbg !2068

; <label>:37:                                     ; preds = %36
  %38 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %5, i64 0, i32 3, i64 1, !dbg !2070
  %39 = bitcast i32* %38 to i8*, !dbg !2071
  %40 = trunc i64 %2 to i32, !dbg !2072
  %41 = call i8* @inet_ntop(i32 10, i8* nonnull %39, i8* nonnull %1, i32 %40) #5, !dbg !2073
  br label %42, !dbg !2073

; <label>:42:                                     ; preds = %36, %37
  %43 = icmp eq i32* %3, null, !dbg !2074
  br i1 %43, label %50, label %44, !dbg !2076

; <label>:44:                                     ; preds = %42
  %45 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %5, i64 0, i32 2, !dbg !2077
  %46 = bitcast [2 x i8]* %45 to i16*, !dbg !2077
  %47 = load i16, i16* %46, align 2, !dbg !2077, !tbaa !1740
  %48 = call zeroext i16 @lwip_htons(i16 zeroext %47) #5, !dbg !2077
  %49 = zext i16 %48 to i32, !dbg !2077
  store i32 %49, i32* %3, align 4, !dbg !2078, !tbaa !133
  br label %50, !dbg !2079

; <label>:50:                                     ; preds = %28, %30, %42, %44, %15
  %51 = phi i32 [ -1, %15 ], [ 0, %44 ], [ 0, %42 ], [ 0, %30 ], [ 0, %28 ], !dbg !2080
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #4, !dbg !2081
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %7) #4, !dbg !2081
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2081
  ret i32 %51, !dbg !2081
}

; Function Attrs: noredzone
declare dso_local i32 @getsockname(i32, %struct.sockaddr*, i32*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @anetFormatSock(i32, i8*, i64) local_unnamed_addr #0 !dbg !2082 {
  %4 = alloca [46 x i8], align 16
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds [46 x i8], [46 x i8]* %4, i64 0, i64 0, !dbg !2092
  call void @llvm.lifetime.start.p0i8(i64 46, i8* nonnull %6) #4, !dbg !2092
  %7 = bitcast i32* %5 to i8*, !dbg !2094
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #4, !dbg !2094
  %8 = call i32 @anetSockName(i32 %0, i8* nonnull %6, i64 46, i32* nonnull %5) #6, !dbg !2096
  %9 = load i32, i32* %5, align 4, !dbg !2097, !tbaa !133
  %10 = call i8* @strchr(i8* nonnull %6, i32 58) #5, !dbg !2103
  %11 = icmp eq i8* %10, null, !dbg !2103
  %12 = select i1 %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), !dbg !2103
  %13 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %1, i64 %2, i8* %12, i8* nonnull %6, i32 %9) #5, !dbg !2104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2105
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #4, !dbg !2106
  call void @llvm.lifetime.end.p0i8(i64 46, i8* nonnull %6) #4, !dbg !2106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2107
  ret i32 %13, !dbg !2107
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
define internal fastcc i32 @anetSetReuseAddr(i8*, i32) unnamed_addr #0 !dbg !2108 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = bitcast i32* %3 to i8*, !dbg !2127
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #4, !dbg !2127
  %6 = ptrtoint i32* %3 to i64, !dbg !2128
  %7 = add i64 %6, 65536, !dbg !2129
  %8 = inttoptr i64 %7 to i32*, !dbg !2130
  store i32 1, i32* %8, align 4, !dbg !2132, !tbaa !133
  %9 = bitcast i32* %4 to i8*, !dbg !2133
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #4, !dbg !2133
  %10 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !2134, !srcloc !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2137
  %11 = icmp ult i64 %10, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !2138
  br i1 %11, label %18, label %12, !dbg !2138

; <label>:12:                                     ; preds = %2
  %13 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !2139, !srcloc !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2142
  %14 = icmp ugt i64 %13, ptrtoint ([0 x i8]* @_end to i64), !dbg !2138
  br i1 %14, label %18, label %15, !dbg !2143

; <label>:15:                                     ; preds = %12
  %16 = inttoptr i64 %7 to i8*, !dbg !2144
  %17 = call i32 @setsockopt(i32 %1, i32 4095, i32 4, i8* %16, i32 4) #5, !dbg !2144
  store i32 %17, i32* %4, align 4, !dbg !2144, !tbaa !133
  br label %28, !dbg !2144

; <label>:18:                                     ; preds = %12, %2
  %19 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !2147, !srcloc !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2151
  %20 = and i64 %19, -65536, !dbg !2153
  %21 = or i64 %20, 4097, !dbg !2153
  %22 = add nsw i64 %21, -1, !dbg !2153
  %23 = inttoptr i64 %22 to i32*, !dbg !2154
  %24 = load i32, i32* %23, align 4096, !dbg !2155, !tbaa !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2156
  %25 = sext i32 %1 to i64, !dbg !2157
  %26 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09push %r13\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp0,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r13, %rcx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call setsockopt\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp0,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r13\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r13},{r8},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, i64 1073741820, i64 1073741811, i64 %25, i64 4095, i64 4, i64 %7, i64 4, i32 %24, i32 (i32, i32, i32, i8*, i32)* nonnull @setsockopt) #4, !dbg !2157, !srcloc !2158
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %4, i64 %26) #4, !dbg !2159, !srcloc !2162
  %27 = load i32, i32* %4, align 4, !dbg !2163, !tbaa !133
  br label %28

; <label>:28:                                     ; preds = %18, %15
  %29 = phi i32 [ %27, %18 ], [ %17, %15 ], !dbg !2163
  %30 = icmp eq i32 %29, -1, !dbg !2165
  br i1 %30, label %31, label %35, !dbg !2166

; <label>:31:                                     ; preds = %28
  %32 = call i32* @__errno() #5, !dbg !2167
  %33 = load i32, i32* %32, align 4, !dbg !2167, !tbaa !133
  %34 = call i8* @strerror(i32 %33) #5, !dbg !2169
  call void (i8*, i8*, ...) @anetSetError(i8* %0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0), i8* %34) #6, !dbg !2170
  br label %35, !dbg !2171

; <label>:35:                                     ; preds = %28, %31
  %36 = phi i32 [ -1, %31 ], [ 0, %28 ], !dbg !2172
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #4, !dbg !2173
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #4, !dbg !2173
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2173
  ret i32 %36, !dbg !2173
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
!244 = !{i32 444422}
!245 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !243)
!246 = !DILocation(line: 121, column: 2, scope: !237, inlinedAt: !243)
!247 = !DILocation(line: 103, column: 5, scope: !220)
!248 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !249)
!249 = distinct !DILocation(line: 103, column: 5, scope: !220)
!250 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !249)
!251 = !DILocation(line: 121, column: 2, scope: !237, inlinedAt: !249)
!252 = !DILocation(line: 103, column: 5, scope: !221)
!253 = !DILocation(line: 103, column: 5, scope: !254)
!254 = distinct !DILexicalBlock(scope: !220, file: !3, line: 103, column: 5)
!255 = !DILocation(line: 102, column: 9, scope: !208)
!256 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !257)
!257 = distinct !DILocation(line: 49, column: 21, scope: !258, inlinedAt: !264)
!258 = distinct !DISubprogram(name: "uk_thread_get_tid", scope: !259, file: !259, line: 47, type: !260, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !262)
!259 = !DIFile(filename: "/root/.unikraft/unikraft/lib/flexos-core/include/flexos/impl/intelpku-impl.h", directory: "/root/.unikraft/apps/redis/build")
!260 = !DISubroutineType(types: !261)
!261 = !{!7}
!262 = !{!263}
!263 = !DILocalVariable(name: "sp", scope: !258, file: !259, line: 49, type: !12)
!264 = distinct !DILocation(line: 103, column: 5, scope: !217)
!265 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !257)
!266 = !DILocation(line: 121, column: 2, scope: !237, inlinedAt: !257)
!267 = !DILocation(line: 49, column: 16, scope: !258, inlinedAt: !264)
!268 = !DILocation(line: 50, column: 19, scope: !258, inlinedAt: !264)
!269 = !DILocation(line: 50, column: 11, scope: !258, inlinedAt: !264)
!270 = !DILocation(line: 50, column: 9, scope: !258, inlinedAt: !264)
!271 = !DILocation(line: 50, column: 2, scope: !258, inlinedAt: !264)
!272 = !DILocation(line: 103, column: 5, scope: !217)
!273 = !{i32 -2146307516, i32 -2146307503, i32 -2146307478, i32 -2146307454, i32 -2146307429, i32 -2146307354, i32 -2146307329, i32 -2146307185, i32 -2146307160, i32 -2146303753, i32 -2146303664, i32 -2146303543, i32 -2146303448, i32 -2146303347, i32 -2146303320, i32 -2146303237, i32 -2146303148, i32 -2146303027, i32 -2146302927, i32 -2146302821, i32 -2146302713, i32 -2146306784, i32 -2146306731, i32 -2146306700, i32 -2146306669, i32 -2146306648, i32 -2146306626, i32 -2146306577, i32 -2146306556, i32 -2146306453, i32 -2146306421, i32 -2146302630, i32 -2146302541, i32 -2146302420, i32 -2146302321, i32 -2146302215, i32 -2146302113, i32 -2146302080, i32 -2146302007, i32 -2146301939, i32 -2146306231, i32 -2146306172, i32 -2146306119, i32 -2146306088, i32 -2146306057, i32 -2146306036, i32 -2146306014, i32 -2146305965, i32 -2146305944, i32 -2146301893, i32 -2146301804, i32 -2146301683, i32 -2146301584, i32 -2146301478, i32 -2146301376, i32 -2146301343, i32 -2146301260, i32 -2146301171, i32 -2146301050, i32 -2146300950, i32 -2146300924, i32 -2146300821, i32 -2146300795, i32 -2146305686, i32 -2146305661, i32 -2146305594, i32 -2146305569, i32 -2146305505, i32 -2146305423, i32 -2146305400, i32 -2146305375, i32 -2146305350}
!274 = !DILocation(line: 103, column: 5, scope: !275)
!275 = distinct !DILexicalBlock(scope: !276, file: !3, line: 103, column: 5)
!276 = distinct !DILexicalBlock(scope: !217, file: !3, line: 103, column: 5)
!277 = !{i32 -2146304266, i32 -2146304249}
!278 = !DILocation(line: 105, column: 9, scope: !279)
!279 = distinct !DILexicalBlock(scope: !208, file: !3, line: 105, column: 9)
!280 = !DILocation(line: 105, column: 13, scope: !279)
!281 = !DILocation(line: 105, column: 9, scope: !208)
!282 = !DILocation(line: 107, column: 67, scope: !283)
!283 = distinct !DILexicalBlock(scope: !279, file: !3, line: 106, column: 5)
!284 = !DILocation(line: 107, column: 58, scope: !283)
!285 = !DILocation(line: 107, column: 9, scope: !283)
!286 = !DILocation(line: 108, column: 9, scope: !283)
!287 = !DILocation(line: 0, scope: !208)
!288 = !DILocation(line: 154, column: 1, scope: !208)
!289 = distinct !DISubprogram(name: "anetEnableTcpNoDelay", scope: !3, file: !3, line: 172, type: !191, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !290)
!290 = !{!291, !292}
!291 = !DILocalVariable(name: "err", arg: 1, scope: !289, file: !3, line: 172, type: !80)
!292 = !DILocalVariable(name: "fd", arg: 2, scope: !289, file: !3, line: 172, type: !7)
!293 = !DILocation(line: 172, column: 32, scope: !289)
!294 = !DILocation(line: 172, column: 41, scope: !289)
!295 = !DILocation(line: 174, column: 12, scope: !289)
!296 = !DILocation(line: 174, column: 5, scope: !289)
!297 = distinct !DISubprogram(name: "anetSetTcpNoDelay", scope: !3, file: !3, line: 156, type: !116, isLocal: true, isDefinition: true, scopeLine: 157, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !298)
!298 = !{!299, !300, !301, !302, !303, !304, !305, !311, !312, !313, !314}
!299 = !DILocalVariable(name: "err", arg: 1, scope: !297, file: !3, line: 156, type: !80)
!300 = !DILocalVariable(name: "fd", arg: 2, scope: !297, file: !3, line: 156, type: !7)
!301 = !DILocalVariable(name: "val", arg: 3, scope: !297, file: !3, line: 156, type: !7)
!302 = !DILocalVariable(name: "_val", scope: !297, file: !3, line: 158, type: !7)
!303 = !DILocalVariable(name: "_dss__val", scope: !297, file: !3, line: 159, type: !6)
!304 = !DILocalVariable(name: "ret", scope: !297, file: !3, line: 161, type: !7)
!305 = !DILocalVariable(name: "tid", scope: !306, file: !3, line: 162, type: !41)
!306 = distinct !DILexicalBlock(scope: !307, file: !3, line: 162, column: 5)
!307 = distinct !DILexicalBlock(scope: !308, file: !3, line: 162, column: 5)
!308 = distinct !DILexicalBlock(scope: !309, file: !3, line: 162, column: 5)
!309 = distinct !DILexicalBlock(scope: !310, file: !3, line: 162, column: 5)
!310 = distinct !DILexicalBlock(scope: !297, file: !3, line: 162, column: 5)
!311 = !DILocalVariable(name: "_ret", scope: !306, file: !3, line: 162, type: !13)
!312 = !DILocalVariable(name: "_arg3", scope: !306, file: !3, line: 162, type: !13)
!313 = !DILocalVariable(name: "_arg4", scope: !306, file: !3, line: 162, type: !13)
!314 = !DILocalVariable(name: "_arg5", scope: !306, file: !3, line: 162, type: !13)
!315 = !DILocation(line: 156, column: 36, scope: !297)
!316 = !DILocation(line: 156, column: 45, scope: !297)
!317 = !DILocation(line: 156, column: 53, scope: !297)
!318 = !DILocation(line: 158, column: 5, scope: !297)
!319 = !DILocation(line: 159, column: 31, scope: !297)
!320 = !DILocation(line: 159, column: 51, scope: !297)
!321 = !DILocation(line: 159, column: 22, scope: !297)
!322 = !DILocation(line: 159, column: 10, scope: !297)
!323 = !DILocation(line: 160, column: 18, scope: !297)
!324 = !DILocation(line: 161, column: 5, scope: !297)
!325 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !326)
!326 = distinct !DILocation(line: 162, column: 5, scope: !309)
!327 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !326)
!328 = !DILocation(line: 121, column: 2, scope: !237, inlinedAt: !326)
!329 = !DILocation(line: 162, column: 5, scope: !309)
!330 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !331)
!331 = distinct !DILocation(line: 162, column: 5, scope: !309)
!332 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !331)
!333 = !DILocation(line: 121, column: 2, scope: !237, inlinedAt: !331)
!334 = !DILocation(line: 162, column: 5, scope: !310)
!335 = !DILocation(line: 162, column: 5, scope: !336)
!336 = distinct !DILexicalBlock(scope: !309, file: !3, line: 162, column: 5)
!337 = !DILocation(line: 161, column: 9, scope: !297)
!338 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !339)
!339 = distinct !DILocation(line: 49, column: 21, scope: !258, inlinedAt: !340)
!340 = distinct !DILocation(line: 162, column: 5, scope: !306)
!341 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !339)
!342 = !DILocation(line: 121, column: 2, scope: !237, inlinedAt: !339)
!343 = !DILocation(line: 49, column: 16, scope: !258, inlinedAt: !340)
!344 = !DILocation(line: 50, column: 19, scope: !258, inlinedAt: !340)
!345 = !DILocation(line: 50, column: 11, scope: !258, inlinedAt: !340)
!346 = !DILocation(line: 50, column: 9, scope: !258, inlinedAt: !340)
!347 = !DILocation(line: 50, column: 2, scope: !258, inlinedAt: !340)
!348 = !DILocation(line: 162, column: 5, scope: !306)
!349 = !{i32 -2146298030, i32 -2146298017, i32 -2146297992, i32 -2146297968, i32 -2146297943, i32 -2146297868, i32 -2146297843, i32 -2146297699, i32 -2146297674, i32 -2146294277, i32 -2146294188, i32 -2146294067, i32 -2146293972, i32 -2146293871, i32 -2146293844, i32 -2146293761, i32 -2146293672, i32 -2146293551, i32 -2146293451, i32 -2146293345, i32 -2146293237, i32 -2146297298, i32 -2146297245, i32 -2146297214, i32 -2146297183, i32 -2146297162, i32 -2146297140, i32 -2146297091, i32 -2146297070, i32 -2146296967, i32 -2146296935, i32 -2146293154, i32 -2146293065, i32 -2146292944, i32 -2146292845, i32 -2146292739, i32 -2146292637, i32 -2146292604, i32 -2146292531, i32 -2146292463, i32 -2146296745, i32 -2146296686, i32 -2146296633, i32 -2146296602, i32 -2146296571, i32 -2146296550, i32 -2146296528, i32 -2146296479, i32 -2146296458, i32 -2146292417, i32 -2146292328, i32 -2146292207, i32 -2146292108, i32 -2146292002, i32 -2146291900, i32 -2146291867, i32 -2146291784, i32 -2146291695, i32 -2146291574, i32 -2146291474, i32 -2146291448, i32 -2146291345, i32 -2146291319, i32 -2146296200, i32 -2146296175, i32 -2146296108, i32 -2146296083, i32 -2146296019, i32 -2146295937, i32 -2146295914, i32 -2146295889, i32 -2146295864}
!350 = !DILocation(line: 162, column: 5, scope: !351)
!351 = distinct !DILexicalBlock(scope: !352, file: !3, line: 162, column: 5)
!352 = distinct !DILexicalBlock(scope: !306, file: !3, line: 162, column: 5)
!353 = !{i32 -2146294780, i32 -2146294763}
!354 = !DILocation(line: 164, column: 9, scope: !355)
!355 = distinct !DILexicalBlock(scope: !297, file: !3, line: 164, column: 9)
!356 = !DILocation(line: 164, column: 13, scope: !355)
!357 = !DILocation(line: 164, column: 9, scope: !297)
!358 = !DILocation(line: 166, column: 66, scope: !359)
!359 = distinct !DILexicalBlock(scope: !355, file: !3, line: 165, column: 5)
!360 = !DILocation(line: 166, column: 57, scope: !359)
!361 = !DILocation(line: 166, column: 9, scope: !359)
!362 = !DILocation(line: 167, column: 9, scope: !359)
!363 = !DILocation(line: 0, scope: !297)
!364 = !DILocation(line: 170, column: 1, scope: !297)
!365 = distinct !DISubprogram(name: "anetDisableTcpNoDelay", scope: !3, file: !3, line: 177, type: !191, isLocal: false, isDefinition: true, scopeLine: 178, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !366)
!366 = !{!367, !368}
!367 = !DILocalVariable(name: "err", arg: 1, scope: !365, file: !3, line: 177, type: !80)
!368 = !DILocalVariable(name: "fd", arg: 2, scope: !365, file: !3, line: 177, type: !7)
!369 = !DILocation(line: 177, column: 33, scope: !365)
!370 = !DILocation(line: 177, column: 42, scope: !365)
!371 = !DILocation(line: 179, column: 12, scope: !365)
!372 = !DILocation(line: 179, column: 5, scope: !365)
!373 = distinct !DISubprogram(name: "anetSetSendBuffer", scope: !3, file: !3, line: 183, type: !116, isLocal: false, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !374)
!374 = !{!375, !376, !377, !378, !379, !385, !386, !387, !388}
!375 = !DILocalVariable(name: "err", arg: 1, scope: !373, file: !3, line: 183, type: !80)
!376 = !DILocalVariable(name: "fd", arg: 2, scope: !373, file: !3, line: 183, type: !7)
!377 = !DILocalVariable(name: "buffsize", arg: 3, scope: !373, file: !3, line: 183, type: !7)
!378 = !DILocalVariable(name: "ret", scope: !373, file: !3, line: 185, type: !7)
!379 = !DILocalVariable(name: "tid", scope: !380, file: !3, line: 186, type: !41)
!380 = distinct !DILexicalBlock(scope: !381, file: !3, line: 186, column: 5)
!381 = distinct !DILexicalBlock(scope: !382, file: !3, line: 186, column: 5)
!382 = distinct !DILexicalBlock(scope: !383, file: !3, line: 186, column: 5)
!383 = distinct !DILexicalBlock(scope: !384, file: !3, line: 186, column: 5)
!384 = distinct !DILexicalBlock(scope: !373, file: !3, line: 186, column: 5)
!385 = !DILocalVariable(name: "_ret", scope: !380, file: !3, line: 186, type: !13)
!386 = !DILocalVariable(name: "_arg3", scope: !380, file: !3, line: 186, type: !13)
!387 = !DILocalVariable(name: "_arg4", scope: !380, file: !3, line: 186, type: !13)
!388 = !DILocalVariable(name: "_arg5", scope: !380, file: !3, line: 186, type: !13)
!389 = !DILocation(line: 183, column: 29, scope: !373)
!390 = !DILocation(line: 183, column: 38, scope: !373)
!391 = !DILocation(line: 183, column: 46, scope: !373)
!392 = !DILocation(line: 185, column: 5, scope: !373)
!393 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !394)
!394 = distinct !DILocation(line: 186, column: 5, scope: !383)
!395 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !394)
!396 = !DILocation(line: 121, column: 2, scope: !237, inlinedAt: !394)
!397 = !DILocation(line: 186, column: 5, scope: !383)
!398 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !399)
!399 = distinct !DILocation(line: 186, column: 5, scope: !383)
!400 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !399)
!401 = !DILocation(line: 121, column: 2, scope: !237, inlinedAt: !399)
!402 = !DILocation(line: 186, column: 5, scope: !384)
!403 = !DILocation(line: 186, column: 5, scope: !404)
!404 = distinct !DILexicalBlock(scope: !383, file: !3, line: 186, column: 5)
!405 = !DILocation(line: 185, column: 9, scope: !373)
!406 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !407)
!407 = distinct !DILocation(line: 49, column: 21, scope: !258, inlinedAt: !408)
!408 = distinct !DILocation(line: 186, column: 5, scope: !380)
!409 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !407)
!410 = !DILocation(line: 121, column: 2, scope: !237, inlinedAt: !407)
!411 = !DILocation(line: 49, column: 16, scope: !258, inlinedAt: !408)
!412 = !DILocation(line: 50, column: 19, scope: !258, inlinedAt: !408)
!413 = !DILocation(line: 50, column: 11, scope: !258, inlinedAt: !408)
!414 = !DILocation(line: 50, column: 9, scope: !258, inlinedAt: !408)
!415 = !DILocation(line: 50, column: 2, scope: !258, inlinedAt: !408)
!416 = !DILocation(line: 186, column: 5, scope: !380)
!417 = !{i32 -2146288623, i32 -2146288610, i32 -2146288585, i32 -2146288561, i32 -2146288536, i32 -2146288461, i32 -2146288436, i32 -2146288292, i32 -2146288267, i32 -2146284866, i32 -2146284777, i32 -2146284656, i32 -2146284561, i32 -2146284460, i32 -2146284433, i32 -2146284350, i32 -2146284261, i32 -2146284140, i32 -2146284040, i32 -2146283934, i32 -2146283826, i32 -2146287891, i32 -2146287838, i32 -2146287807, i32 -2146287776, i32 -2146287755, i32 -2146287733, i32 -2146287684, i32 -2146287663, i32 -2146287560, i32 -2146287528, i32 -2146283743, i32 -2146283654, i32 -2146283533, i32 -2146283434, i32 -2146283328, i32 -2146283226, i32 -2146283193, i32 -2146283120, i32 -2146283052, i32 -2146287338, i32 -2146287279, i32 -2146287226, i32 -2146287195, i32 -2146287164, i32 -2146287143, i32 -2146287121, i32 -2146287072, i32 -2146287051, i32 -2146283006, i32 -2146282917, i32 -2146282796, i32 -2146282697, i32 -2146282591, i32 -2146282489, i32 -2146282456, i32 -2146282373, i32 -2146282284, i32 -2146282163, i32 -2146282063, i32 -2146282037, i32 -2146281934, i32 -2146281908, i32 -2146286793, i32 -2146286768, i32 -2146286701, i32 -2146286676, i32 -2146286612, i32 -2146286530, i32 -2146286507, i32 -2146286482, i32 -2146286457}
!418 = !DILocation(line: 186, column: 5, scope: !419)
!419 = distinct !DILexicalBlock(scope: !420, file: !3, line: 186, column: 5)
!420 = distinct !DILexicalBlock(scope: !380, file: !3, line: 186, column: 5)
!421 = !{i32 -2146285373, i32 -2146285356}
!422 = !DILocation(line: 188, column: 9, scope: !423)
!423 = distinct !DILexicalBlock(scope: !373, file: !3, line: 188, column: 9)
!424 = !DILocation(line: 188, column: 13, scope: !423)
!425 = !DILocation(line: 188, column: 9, scope: !373)
!426 = !DILocation(line: 190, column: 64, scope: !427)
!427 = distinct !DILexicalBlock(scope: !423, file: !3, line: 189, column: 5)
!428 = !DILocation(line: 190, column: 55, scope: !427)
!429 = !DILocation(line: 190, column: 9, scope: !427)
!430 = !DILocation(line: 191, column: 9, scope: !427)
!431 = !DILocation(line: 0, scope: !373)
!432 = !DILocation(line: 194, column: 1, scope: !373)
!433 = distinct !DISubprogram(name: "anetTcpKeepAlive", scope: !3, file: !3, line: 196, type: !191, isLocal: false, isDefinition: true, scopeLine: 197, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !434)
!434 = !{!435, !436, !437, !438, !439, !445, !446, !447, !448}
!435 = !DILocalVariable(name: "err", arg: 1, scope: !433, file: !3, line: 196, type: !80)
!436 = !DILocalVariable(name: "fd", arg: 2, scope: !433, file: !3, line: 196, type: !7)
!437 = !DILocalVariable(name: "yes", scope: !433, file: !3, line: 198, type: !7)
!438 = !DILocalVariable(name: "ret", scope: !433, file: !3, line: 199, type: !7)
!439 = !DILocalVariable(name: "tid", scope: !440, file: !3, line: 200, type: !41)
!440 = distinct !DILexicalBlock(scope: !441, file: !3, line: 200, column: 5)
!441 = distinct !DILexicalBlock(scope: !442, file: !3, line: 200, column: 5)
!442 = distinct !DILexicalBlock(scope: !443, file: !3, line: 200, column: 5)
!443 = distinct !DILexicalBlock(scope: !444, file: !3, line: 200, column: 5)
!444 = distinct !DILexicalBlock(scope: !433, file: !3, line: 200, column: 5)
!445 = !DILocalVariable(name: "_ret", scope: !440, file: !3, line: 200, type: !13)
!446 = !DILocalVariable(name: "_arg3", scope: !440, file: !3, line: 200, type: !13)
!447 = !DILocalVariable(name: "_arg4", scope: !440, file: !3, line: 200, type: !13)
!448 = !DILocalVariable(name: "_arg5", scope: !440, file: !3, line: 200, type: !13)
!449 = !DILocation(line: 196, column: 28, scope: !433)
!450 = !DILocation(line: 196, column: 37, scope: !433)
!451 = !DILocation(line: 198, column: 5, scope: !433)
!452 = !DILocation(line: 198, column: 9, scope: !433)
!453 = !DILocation(line: 199, column: 5, scope: !433)
!454 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !455)
!455 = distinct !DILocation(line: 200, column: 5, scope: !443)
!456 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !455)
!457 = !DILocation(line: 121, column: 2, scope: !237, inlinedAt: !455)
!458 = !DILocation(line: 200, column: 5, scope: !443)
!459 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !460)
!460 = distinct !DILocation(line: 200, column: 5, scope: !443)
!461 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !460)
!462 = !DILocation(line: 121, column: 2, scope: !237, inlinedAt: !460)
!463 = !DILocation(line: 200, column: 5, scope: !444)
!464 = !DILocation(line: 200, column: 5, scope: !465)
!465 = distinct !DILexicalBlock(scope: !443, file: !3, line: 200, column: 5)
!466 = !DILocation(line: 199, column: 9, scope: !433)
!467 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !468)
!468 = distinct !DILocation(line: 49, column: 21, scope: !258, inlinedAt: !469)
!469 = distinct !DILocation(line: 200, column: 5, scope: !440)
!470 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !468)
!471 = !DILocation(line: 121, column: 2, scope: !237, inlinedAt: !468)
!472 = !DILocation(line: 49, column: 16, scope: !258, inlinedAt: !469)
!473 = !DILocation(line: 50, column: 19, scope: !258, inlinedAt: !469)
!474 = !DILocation(line: 50, column: 11, scope: !258, inlinedAt: !469)
!475 = !DILocation(line: 50, column: 9, scope: !258, inlinedAt: !469)
!476 = !DILocation(line: 50, column: 2, scope: !258, inlinedAt: !469)
!477 = !DILocation(line: 200, column: 5, scope: !440)
!478 = !{i32 -2146279344, i32 -2146279331, i32 -2146279306, i32 -2146279282, i32 -2146279257, i32 -2146279182, i32 -2146279157, i32 -2146279013, i32 -2146278988, i32 -2146275597, i32 -2146275508, i32 -2146275387, i32 -2146275292, i32 -2146275191, i32 -2146275164, i32 -2146275081, i32 -2146274992, i32 -2146274871, i32 -2146274771, i32 -2146274665, i32 -2146274557, i32 -2146278612, i32 -2146278559, i32 -2146278528, i32 -2146278497, i32 -2146278476, i32 -2146278454, i32 -2146278405, i32 -2146278384, i32 -2146278281, i32 -2146278249, i32 -2146274474, i32 -2146274385, i32 -2146274264, i32 -2146274165, i32 -2146274059, i32 -2146273957, i32 -2146273924, i32 -2146273851, i32 -2146273783, i32 -2146278059, i32 -2146278000, i32 -2146277947, i32 -2146277916, i32 -2146277885, i32 -2146277864, i32 -2146277842, i32 -2146277793, i32 -2146277772, i32 -2146273737, i32 -2146273648, i32 -2146273527, i32 -2146273428, i32 -2146273322, i32 -2146273220, i32 -2146273187, i32 -2146273104, i32 -2146273015, i32 -2146272894, i32 -2146272794, i32 -2146272768, i32 -2146272665, i32 -2146272639, i32 -2146277514, i32 -2146277489, i32 -2146277422, i32 -2146277397, i32 -2146277333, i32 -2146277251, i32 -2146277228, i32 -2146277203, i32 -2146277178}
!479 = !DILocation(line: 200, column: 5, scope: !480)
!480 = distinct !DILexicalBlock(scope: !481, file: !3, line: 200, column: 5)
!481 = distinct !DILexicalBlock(scope: !440, file: !3, line: 200, column: 5)
!482 = !{i32 -2146276094, i32 -2146276077}
!483 = !DILocation(line: 202, column: 9, scope: !484)
!484 = distinct !DILexicalBlock(scope: !433, file: !3, line: 202, column: 9)
!485 = !DILocation(line: 202, column: 13, scope: !484)
!486 = !DILocation(line: 202, column: 9, scope: !433)
!487 = !DILocation(line: 203, column: 67, scope: !488)
!488 = distinct !DILexicalBlock(scope: !484, file: !3, line: 202, column: 20)
!489 = !DILocation(line: 203, column: 58, scope: !488)
!490 = !DILocation(line: 203, column: 9, scope: !488)
!491 = !DILocation(line: 204, column: 9, scope: !488)
!492 = !DILocation(line: 0, scope: !433)
!493 = !DILocation(line: 207, column: 1, scope: !433)
!494 = distinct !DISubprogram(name: "anetSendTimeout", scope: !3, file: !3, line: 211, type: !495, isLocal: false, isDefinition: true, scopeLine: 211, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !498)
!495 = !DISubroutineType(types: !496)
!496 = !{!7, !80, !7, !497}
!497 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!498 = !{!499, !500, !501, !502, !511, !512, !518, !519, !520, !521}
!499 = !DILocalVariable(name: "err", arg: 1, scope: !494, file: !3, line: 211, type: !80)
!500 = !DILocalVariable(name: "fd", arg: 2, scope: !494, file: !3, line: 211, type: !7)
!501 = !DILocalVariable(name: "ms", arg: 3, scope: !494, file: !3, line: 211, type: !497)
!502 = !DILocalVariable(name: "tv", scope: !494, file: !3, line: 212, type: !503)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !504, line: 44, size: 128, elements: !505)
!504 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!505 = !{!506, !509}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !503, file: !504, line: 45, baseType: !507, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !504, line: 34, baseType: !508)
!508 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !503, file: !504, line: 46, baseType: !510, size: 64, offset: 64)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "suseconds_t", file: !504, line: 39, baseType: !508)
!511 = !DILocalVariable(name: "ret", scope: !494, file: !3, line: 216, type: !7)
!512 = !DILocalVariable(name: "tid", scope: !513, file: !3, line: 217, type: !41)
!513 = distinct !DILexicalBlock(scope: !514, file: !3, line: 217, column: 5)
!514 = distinct !DILexicalBlock(scope: !515, file: !3, line: 217, column: 5)
!515 = distinct !DILexicalBlock(scope: !516, file: !3, line: 217, column: 5)
!516 = distinct !DILexicalBlock(scope: !517, file: !3, line: 217, column: 5)
!517 = distinct !DILexicalBlock(scope: !494, file: !3, line: 217, column: 5)
!518 = !DILocalVariable(name: "_ret", scope: !513, file: !3, line: 217, type: !13)
!519 = !DILocalVariable(name: "_arg3", scope: !513, file: !3, line: 217, type: !13)
!520 = !DILocalVariable(name: "_arg4", scope: !513, file: !3, line: 217, type: !13)
!521 = !DILocalVariable(name: "_arg5", scope: !513, file: !3, line: 217, type: !13)
!522 = !DILocation(line: 211, column: 27, scope: !494)
!523 = !DILocation(line: 211, column: 36, scope: !494)
!524 = !DILocation(line: 211, column: 50, scope: !494)
!525 = !DILocation(line: 212, column: 5, scope: !494)
!526 = !DILocation(line: 214, column: 19, scope: !494)
!527 = !DILocation(line: 214, column: 8, scope: !494)
!528 = !DILocation(line: 214, column: 15, scope: !494)
!529 = !{!530, !531, i64 0}
!530 = !{!"timeval", !531, i64 0, !531, i64 8}
!531 = !{!"long", !135, i64 0}
!532 = !DILocation(line: 215, column: 21, scope: !494)
!533 = !DILocation(line: 215, column: 27, scope: !494)
!534 = !DILocation(line: 215, column: 8, scope: !494)
!535 = !DILocation(line: 215, column: 16, scope: !494)
!536 = !{!530, !531, i64 8}
!537 = !DILocation(line: 216, column: 5, scope: !494)
!538 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !539)
!539 = distinct !DILocation(line: 217, column: 5, scope: !516)
!540 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !539)
!541 = !DILocation(line: 121, column: 2, scope: !237, inlinedAt: !539)
!542 = !DILocation(line: 217, column: 5, scope: !516)
!543 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !544)
!544 = distinct !DILocation(line: 217, column: 5, scope: !516)
!545 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !544)
!546 = !DILocation(line: 121, column: 2, scope: !237, inlinedAt: !544)
!547 = !DILocation(line: 217, column: 5, scope: !517)
!548 = !DILocation(line: 217, column: 5, scope: !549)
!549 = distinct !DILexicalBlock(scope: !516, file: !3, line: 217, column: 5)
!550 = !DILocation(line: 216, column: 9, scope: !494)
!551 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !552)
!552 = distinct !DILocation(line: 49, column: 21, scope: !258, inlinedAt: !553)
!553 = distinct !DILocation(line: 217, column: 5, scope: !513)
!554 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !552)
!555 = !DILocation(line: 121, column: 2, scope: !237, inlinedAt: !552)
!556 = !DILocation(line: 49, column: 16, scope: !258, inlinedAt: !553)
!557 = !DILocation(line: 50, column: 19, scope: !258, inlinedAt: !553)
!558 = !DILocation(line: 50, column: 11, scope: !258, inlinedAt: !553)
!559 = !DILocation(line: 50, column: 9, scope: !258, inlinedAt: !553)
!560 = !DILocation(line: 50, column: 2, scope: !258, inlinedAt: !553)
!561 = !DILocation(line: 217, column: 5, scope: !513)
!562 = !{i32 -2146270009, i32 -2146269996, i32 -2146269971, i32 -2146269947, i32 -2146269922, i32 -2146269847, i32 -2146269822, i32 -2146269678, i32 -2146269653, i32 -2146266264, i32 -2146266175, i32 -2146266054, i32 -2146265959, i32 -2146265858, i32 -2146265831, i32 -2146265748, i32 -2146265659, i32 -2146265538, i32 -2146265438, i32 -2146265332, i32 -2146265224, i32 -2146269277, i32 -2146269224, i32 -2146269193, i32 -2146269162, i32 -2146269141, i32 -2146269119, i32 -2146269070, i32 -2146269049, i32 -2146268946, i32 -2146268914, i32 -2146265141, i32 -2146265052, i32 -2146264931, i32 -2146264832, i32 -2146264726, i32 -2146264624, i32 -2146264591, i32 -2146264518, i32 -2146264450, i32 -2146268724, i32 -2146268665, i32 -2146268612, i32 -2146268581, i32 -2146268550, i32 -2146268529, i32 -2146268507, i32 -2146268458, i32 -2146268437, i32 -2146264404, i32 -2146264315, i32 -2146264194, i32 -2146264095, i32 -2146263989, i32 -2146263887, i32 -2146263854, i32 -2146263771, i32 -2146263682, i32 -2146263561, i32 -2146263461, i32 -2146263435, i32 -2146263332, i32 -2146263306, i32 -2146268179, i32 -2146268154, i32 -2146268087, i32 -2146268062, i32 -2146267998, i32 -2146267916, i32 -2146267893, i32 -2146267868, i32 -2146267843}
!563 = !DILocation(line: 217, column: 5, scope: !564)
!564 = distinct !DILexicalBlock(scope: !565, file: !3, line: 217, column: 5)
!565 = distinct !DILexicalBlock(scope: !513, file: !3, line: 217, column: 5)
!566 = !{i32 -2146266759, i32 -2146266742}
!567 = !DILocation(line: 219, column: 9, scope: !568)
!568 = distinct !DILexicalBlock(scope: !494, file: !3, line: 219, column: 9)
!569 = !DILocation(line: 219, column: 13, scope: !568)
!570 = !DILocation(line: 219, column: 9, scope: !494)
!571 = !DILocation(line: 220, column: 66, scope: !572)
!572 = distinct !DILexicalBlock(scope: !568, file: !3, line: 219, column: 20)
!573 = !DILocation(line: 220, column: 57, scope: !572)
!574 = !DILocation(line: 220, column: 9, scope: !572)
!575 = !DILocation(line: 221, column: 9, scope: !572)
!576 = !DILocation(line: 0, scope: !494)
!577 = !DILocation(line: 224, column: 1, scope: !494)
!578 = distinct !DISubprogram(name: "anetGenericResolve", scope: !3, file: !3, line: 233, type: !579, isLocal: false, isDefinition: true, scopeLine: 235, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !585)
!579 = !DISubroutineType(types: !580)
!580 = !{!7, !80, !80, !80, !581, !7}
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !582, line: 40, baseType: !583)
!582 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !584, line: 129, baseType: !12)
!584 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!585 = !{!586, !587, !588, !589, !590, !591, !592, !593, !594, !600, !601, !602, !603, !606}
!586 = !DILocalVariable(name: "err", arg: 1, scope: !578, file: !3, line: 233, type: !80)
!587 = !DILocalVariable(name: "host", arg: 2, scope: !578, file: !3, line: 233, type: !80)
!588 = !DILocalVariable(name: "ipbuf", arg: 3, scope: !578, file: !3, line: 233, type: !80)
!589 = !DILocalVariable(name: "ipbuf_len", arg: 4, scope: !578, file: !3, line: 233, type: !581)
!590 = !DILocalVariable(name: "flags", arg: 5, scope: !578, file: !3, line: 234, type: !7)
!591 = !DILocalVariable(name: "hints", scope: !578, file: !3, line: 236, type: !82)
!592 = !DILocalVariable(name: "info", scope: !578, file: !3, line: 236, type: !81)
!593 = !DILocalVariable(name: "rv", scope: !578, file: !3, line: 237, type: !7)
!594 = !DILocalVariable(name: "tid", scope: !595, file: !3, line: 244, type: !41)
!595 = distinct !DILexicalBlock(scope: !596, file: !3, line: 244, column: 5)
!596 = distinct !DILexicalBlock(scope: !597, file: !3, line: 244, column: 5)
!597 = distinct !DILexicalBlock(scope: !598, file: !3, line: 244, column: 5)
!598 = distinct !DILexicalBlock(scope: !599, file: !3, line: 244, column: 5)
!599 = distinct !DILexicalBlock(scope: !578, file: !3, line: 244, column: 5)
!600 = !DILocalVariable(name: "_ret", scope: !595, file: !3, line: 244, type: !13)
!601 = !DILocalVariable(name: "_arg3", scope: !595, file: !3, line: 244, type: !13)
!602 = !DILocalVariable(name: "_arg4", scope: !595, file: !3, line: 244, type: !13)
!603 = !DILocalVariable(name: "sa", scope: !604, file: !3, line: 250, type: !16)
!604 = distinct !DILexicalBlock(scope: !605, file: !3, line: 249, column: 37)
!605 = distinct !DILexicalBlock(scope: !578, file: !3, line: 249, column: 9)
!606 = !DILocalVariable(name: "sa", scope: !607, file: !3, line: 253, type: !49)
!607 = distinct !DILexicalBlock(scope: !605, file: !3, line: 252, column: 12)
!608 = !DILocation(line: 233, column: 30, scope: !578)
!609 = !DILocation(line: 233, column: 41, scope: !578)
!610 = !DILocation(line: 233, column: 53, scope: !578)
!611 = !DILocation(line: 233, column: 67, scope: !578)
!612 = !DILocation(line: 234, column: 28, scope: !578)
!613 = !DILocation(line: 236, column: 5, scope: !578)
!614 = !DILocation(line: 237, column: 5, scope: !578)
!615 = !DILocation(line: 239, column: 5, scope: !578)
!616 = !DILocation(line: 240, column: 15, scope: !617)
!617 = distinct !DILexicalBlock(scope: !578, file: !3, line: 240, column: 9)
!618 = !DILocation(line: 240, column: 9, scope: !578)
!619 = !DILocation(line: 240, column: 37, scope: !617)
!620 = !DILocation(line: 240, column: 46, scope: !617)
!621 = !{!622, !134, i64 0}
!622 = !{!"addrinfo", !134, i64 0, !134, i64 4, !134, i64 8, !134, i64 12, !134, i64 16, !623, i64 24, !623, i64 32, !623, i64 40}
!623 = !{!"any pointer", !135, i64 0}
!624 = !DILocation(line: 240, column: 31, scope: !617)
!625 = !DILocation(line: 241, column: 11, scope: !578)
!626 = !DILocation(line: 241, column: 21, scope: !578)
!627 = !{!622, !134, i64 4}
!628 = !DILocation(line: 242, column: 11, scope: !578)
!629 = !DILocation(line: 242, column: 23, scope: !578)
!630 = !{!622, !134, i64 8}
!631 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !632)
!632 = distinct !DILocation(line: 244, column: 5, scope: !598)
!633 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !632)
!634 = !DILocation(line: 121, column: 2, scope: !237, inlinedAt: !632)
!635 = !DILocation(line: 244, column: 5, scope: !598)
!636 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !637)
!637 = distinct !DILocation(line: 244, column: 5, scope: !598)
!638 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !637)
!639 = !DILocation(line: 121, column: 2, scope: !237, inlinedAt: !637)
!640 = !DILocation(line: 244, column: 5, scope: !599)
!641 = !DILocation(line: 236, column: 21, scope: !578)
!642 = !DILocation(line: 236, column: 29, scope: !578)
!643 = !DILocation(line: 244, column: 5, scope: !644)
!644 = distinct !DILexicalBlock(scope: !598, file: !3, line: 244, column: 5)
!645 = !DILocation(line: 237, column: 9, scope: !578)
!646 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !647)
!647 = distinct !DILocation(line: 49, column: 21, scope: !258, inlinedAt: !648)
!648 = distinct !DILocation(line: 244, column: 5, scope: !595)
!649 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !647)
!650 = !DILocation(line: 121, column: 2, scope: !237, inlinedAt: !647)
!651 = !DILocation(line: 49, column: 16, scope: !258, inlinedAt: !648)
!652 = !DILocation(line: 50, column: 19, scope: !258, inlinedAt: !648)
!653 = !DILocation(line: 50, column: 11, scope: !258, inlinedAt: !648)
!654 = !DILocation(line: 50, column: 9, scope: !258, inlinedAt: !648)
!655 = !DILocation(line: 50, column: 2, scope: !258, inlinedAt: !648)
!656 = !DILocation(line: 244, column: 5, scope: !595)
!657 = !{i32 -2146260946, i32 -2146260933, i32 -2146260908, i32 -2146260884, i32 -2146260859, i32 -2146260784, i32 -2146260759, i32 -2146260615, i32 -2146260590, i32 -2146257271, i32 -2146257182, i32 -2146257061, i32 -2146256966, i32 -2146256865, i32 -2146256838, i32 -2146256755, i32 -2146256666, i32 -2146256545, i32 -2146256445, i32 -2146256339, i32 -2146256231, i32 -2146260253, i32 -2146260200, i32 -2146260169, i32 -2146260138, i32 -2146260117, i32 -2146260095, i32 -2146260046, i32 -2146260025, i32 -2146259922, i32 -2146259890, i32 -2146256148, i32 -2146256059, i32 -2146255938, i32 -2146255839, i32 -2146255733, i32 -2146255631, i32 -2146255598, i32 -2146255525, i32 -2146255457, i32 -2146259700, i32 -2146259641, i32 -2146259588, i32 -2146259557, i32 -2146259526, i32 -2146259505, i32 -2146259483, i32 -2146259434, i32 -2146259413, i32 -2146255410, i32 -2146255321, i32 -2146255200, i32 -2146255101, i32 -2146254995, i32 -2146254893, i32 -2146254860, i32 -2146254777, i32 -2146254688, i32 -2146254567, i32 -2146254467, i32 -2146254441, i32 -2146254338, i32 -2146254312, i32 -2146259155, i32 -2146259130, i32 -2146259063, i32 -2146259038, i32 -2146258974, i32 -2146258892, i32 -2146258869, i32 -2146258844, i32 -2146258819}
!658 = !DILocation(line: 244, column: 5, scope: !659)
!659 = distinct !DILexicalBlock(scope: !660, file: !3, line: 244, column: 5)
!660 = distinct !DILexicalBlock(scope: !595, file: !3, line: 244, column: 5)
!661 = !{i32 -2146257758, i32 -2146257741}
!662 = !DILocation(line: 245, column: 9, scope: !663)
!663 = distinct !DILexicalBlock(scope: !578, file: !3, line: 245, column: 9)
!664 = !DILocation(line: 245, column: 12, scope: !663)
!665 = !DILocation(line: 245, column: 9, scope: !578)
!666 = !DILocation(line: 246, column: 33, scope: !667)
!667 = distinct !DILexicalBlock(scope: !663, file: !3, line: 245, column: 18)
!668 = !DILocation(line: 246, column: 9, scope: !667)
!669 = !DILocation(line: 247, column: 9, scope: !667)
!670 = !DILocation(line: 249, column: 9, scope: !605)
!671 = !{!623, !623, i64 0}
!672 = !DILocation(line: 249, column: 15, scope: !605)
!673 = !DILocation(line: 249, column: 25, scope: !605)
!674 = !DILocation(line: 0, scope: !607)
!675 = !DILocation(line: 249, column: 9, scope: !578)
!676 = !DILocation(line: 250, column: 62, scope: !604)
!677 = !{!622, !623, i64 24}
!678 = !DILocation(line: 250, column: 29, scope: !604)
!679 = !DILocation(line: 251, column: 34, scope: !604)
!680 = !DILocation(line: 251, column: 28, scope: !604)
!681 = !DILocation(line: 251, column: 52, scope: !604)
!682 = !DILocation(line: 251, column: 9, scope: !604)
!683 = !DILocation(line: 252, column: 5, scope: !604)
!684 = !DILocation(line: 253, column: 64, scope: !607)
!685 = !DILocation(line: 253, column: 30, scope: !607)
!686 = !DILocation(line: 254, column: 35, scope: !607)
!687 = !DILocation(line: 254, column: 29, scope: !607)
!688 = !DILocation(line: 254, column: 54, scope: !607)
!689 = !DILocation(line: 254, column: 9, scope: !607)
!690 = !DILocation(line: 257, column: 18, scope: !578)
!691 = !DILocation(line: 257, column: 5, scope: !578)
!692 = !DILocation(line: 258, column: 5, scope: !578)
!693 = !DILocation(line: 0, scope: !578)
!694 = !DILocation(line: 259, column: 1, scope: !578)
!695 = distinct !DISubprogram(name: "anetResolve", scope: !3, file: !3, line: 261, type: !696, isLocal: false, isDefinition: true, scopeLine: 261, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !698)
!696 = !DISubroutineType(types: !697)
!697 = !{!7, !80, !80, !80, !581}
!698 = !{!699, !700, !701, !702}
!699 = !DILocalVariable(name: "err", arg: 1, scope: !695, file: !3, line: 261, type: !80)
!700 = !DILocalVariable(name: "host", arg: 2, scope: !695, file: !3, line: 261, type: !80)
!701 = !DILocalVariable(name: "ipbuf", arg: 3, scope: !695, file: !3, line: 261, type: !80)
!702 = !DILocalVariable(name: "ipbuf_len", arg: 4, scope: !695, file: !3, line: 261, type: !581)
!703 = !DILocation(line: 261, column: 23, scope: !695)
!704 = !DILocation(line: 261, column: 34, scope: !695)
!705 = !DILocation(line: 261, column: 46, scope: !695)
!706 = !DILocation(line: 261, column: 60, scope: !695)
!707 = !DILocation(line: 262, column: 12, scope: !695)
!708 = !DILocation(line: 262, column: 5, scope: !695)
!709 = distinct !DISubprogram(name: "anetResolveIP", scope: !3, file: !3, line: 265, type: !696, isLocal: false, isDefinition: true, scopeLine: 265, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !710)
!710 = !{!711, !712, !713, !714}
!711 = !DILocalVariable(name: "err", arg: 1, scope: !709, file: !3, line: 265, type: !80)
!712 = !DILocalVariable(name: "host", arg: 2, scope: !709, file: !3, line: 265, type: !80)
!713 = !DILocalVariable(name: "ipbuf", arg: 3, scope: !709, file: !3, line: 265, type: !80)
!714 = !DILocalVariable(name: "ipbuf_len", arg: 4, scope: !709, file: !3, line: 265, type: !581)
!715 = !DILocation(line: 265, column: 25, scope: !709)
!716 = !DILocation(line: 265, column: 36, scope: !709)
!717 = !DILocation(line: 265, column: 48, scope: !709)
!718 = !DILocation(line: 265, column: 62, scope: !709)
!719 = !DILocation(line: 266, column: 12, scope: !709)
!720 = !DILocation(line: 266, column: 5, scope: !709)
!721 = distinct !DISubprogram(name: "anetTcpConnect", scope: !3, file: !3, line: 391, type: !722, isLocal: false, isDefinition: true, scopeLine: 392, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !724)
!722 = !DISubroutineType(types: !723)
!723 = !{!7, !80, !80, !7}
!724 = !{!725, !726, !727}
!725 = !DILocalVariable(name: "err", arg: 1, scope: !721, file: !3, line: 391, type: !80)
!726 = !DILocalVariable(name: "addr", arg: 2, scope: !721, file: !3, line: 391, type: !80)
!727 = !DILocalVariable(name: "port", arg: 3, scope: !721, file: !3, line: 391, type: !7)
!728 = !DILocation(line: 391, column: 26, scope: !721)
!729 = !DILocation(line: 391, column: 37, scope: !721)
!730 = !DILocation(line: 391, column: 47, scope: !721)
!731 = !DILocation(line: 393, column: 12, scope: !721)
!732 = !DILocation(line: 393, column: 5, scope: !721)
!733 = distinct !DISubprogram(name: "anetTcpGenericConnect", scope: !3, file: !3, line: 305, type: !734, isLocal: true, isDefinition: true, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !736)
!734 = !DISubroutineType(types: !735)
!735 = !{!7, !80, !80, !7, !80, !7}
!736 = !{!737, !738, !739, !740, !741, !742, !743, !744, !748, !749, !750, !751, !752, !753, !759, !760, !761, !762, !771, !772, !773, !776, !782, !783, !784}
!737 = !DILocalVariable(name: "err", arg: 1, scope: !733, file: !3, line: 305, type: !80)
!738 = !DILocalVariable(name: "addr", arg: 2, scope: !733, file: !3, line: 305, type: !80)
!739 = !DILocalVariable(name: "port", arg: 3, scope: !733, file: !3, line: 305, type: !7)
!740 = !DILocalVariable(name: "source_addr", arg: 4, scope: !733, file: !3, line: 306, type: !80)
!741 = !DILocalVariable(name: "flags", arg: 5, scope: !733, file: !3, line: 306, type: !7)
!742 = !DILocalVariable(name: "s", scope: !733, file: !3, line: 308, type: !7)
!743 = !DILocalVariable(name: "rv", scope: !733, file: !3, line: 308, type: !7)
!744 = !DILocalVariable(name: "portstr", scope: !733, file: !3, line: 309, type: !745)
!745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 48, elements: !746)
!746 = !{!747}
!747 = !DISubrange(count: 6)
!748 = !DILocalVariable(name: "hints", scope: !733, file: !3, line: 310, type: !82)
!749 = !DILocalVariable(name: "servinfo", scope: !733, file: !3, line: 310, type: !81)
!750 = !DILocalVariable(name: "bservinfo", scope: !733, file: !3, line: 310, type: !81)
!751 = !DILocalVariable(name: "p", scope: !733, file: !3, line: 310, type: !81)
!752 = !DILocalVariable(name: "b", scope: !733, file: !3, line: 310, type: !81)
!753 = !DILocalVariable(name: "tid", scope: !754, file: !3, line: 317, type: !41)
!754 = distinct !DILexicalBlock(scope: !755, file: !3, line: 317, column: 5)
!755 = distinct !DILexicalBlock(scope: !756, file: !3, line: 317, column: 5)
!756 = distinct !DILexicalBlock(scope: !757, file: !3, line: 317, column: 5)
!757 = distinct !DILexicalBlock(scope: !758, file: !3, line: 317, column: 5)
!758 = distinct !DILexicalBlock(scope: !733, file: !3, line: 317, column: 5)
!759 = !DILocalVariable(name: "_ret", scope: !754, file: !3, line: 317, type: !13)
!760 = !DILocalVariable(name: "_arg3", scope: !754, file: !3, line: 317, type: !13)
!761 = !DILocalVariable(name: "_arg4", scope: !754, file: !3, line: 317, type: !13)
!762 = !DILocalVariable(name: "tid", scope: !763, file: !3, line: 327, type: !41)
!763 = distinct !DILexicalBlock(scope: !764, file: !3, line: 327, column: 9)
!764 = distinct !DILexicalBlock(scope: !765, file: !3, line: 327, column: 9)
!765 = distinct !DILexicalBlock(scope: !766, file: !3, line: 327, column: 9)
!766 = distinct !DILexicalBlock(scope: !767, file: !3, line: 327, column: 9)
!767 = distinct !DILexicalBlock(scope: !768, file: !3, line: 327, column: 9)
!768 = distinct !DILexicalBlock(scope: !769, file: !3, line: 323, column: 51)
!769 = distinct !DILexicalBlock(scope: !770, file: !3, line: 323, column: 5)
!770 = distinct !DILexicalBlock(scope: !733, file: !3, line: 323, column: 5)
!771 = !DILocalVariable(name: "_ret", scope: !763, file: !3, line: 327, type: !13)
!772 = !DILocalVariable(name: "_arg3", scope: !763, file: !3, line: 327, type: !13)
!773 = !DILocalVariable(name: "bound", scope: !774, file: !3, line: 335, type: !7)
!774 = distinct !DILexicalBlock(scope: !775, file: !3, line: 334, column: 26)
!775 = distinct !DILexicalBlock(scope: !768, file: !3, line: 334, column: 13)
!776 = !DILocalVariable(name: "tid", scope: !777, file: !3, line: 337, type: !41)
!777 = distinct !DILexicalBlock(scope: !778, file: !3, line: 337, column: 13)
!778 = distinct !DILexicalBlock(scope: !779, file: !3, line: 337, column: 13)
!779 = distinct !DILexicalBlock(scope: !780, file: !3, line: 337, column: 13)
!780 = distinct !DILexicalBlock(scope: !781, file: !3, line: 337, column: 13)
!781 = distinct !DILexicalBlock(scope: !774, file: !3, line: 337, column: 13)
!782 = !DILocalVariable(name: "_ret", scope: !777, file: !3, line: 337, type: !13)
!783 = !DILocalVariable(name: "_arg3", scope: !777, file: !3, line: 337, type: !13)
!784 = !DILocalVariable(name: "_arg4", scope: !777, file: !3, line: 337, type: !13)
!785 = !DILocation(line: 305, column: 40, scope: !733)
!786 = !DILocation(line: 305, column: 51, scope: !733)
!787 = !DILocation(line: 305, column: 61, scope: !733)
!788 = !DILocation(line: 306, column: 40, scope: !733)
!789 = !DILocation(line: 306, column: 57, scope: !733)
!790 = !DILocation(line: 308, column: 5, scope: !733)
!791 = !DILocation(line: 308, column: 9, scope: !733)
!792 = !DILocation(line: 309, column: 5, scope: !733)
!793 = !DILocation(line: 309, column: 10, scope: !733)
!794 = !DILocation(line: 310, column: 5, scope: !733)
!795 = !DILocation(line: 312, column: 5, scope: !733)
!796 = !DILocation(line: 313, column: 5, scope: !733)
!797 = !DILocation(line: 314, column: 11, scope: !733)
!798 = !DILocation(line: 314, column: 21, scope: !733)
!799 = !DILocation(line: 315, column: 11, scope: !733)
!800 = !DILocation(line: 315, column: 23, scope: !733)
!801 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !802)
!802 = distinct !DILocation(line: 317, column: 5, scope: !757)
!803 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !802)
!804 = !DILocation(line: 121, column: 2, scope: !237, inlinedAt: !802)
!805 = !DILocation(line: 317, column: 5, scope: !757)
!806 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !807)
!807 = distinct !DILocation(line: 317, column: 5, scope: !757)
!808 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !807)
!809 = !DILocation(line: 121, column: 2, scope: !237, inlinedAt: !807)
!810 = !DILocation(line: 317, column: 5, scope: !758)
!811 = !DILocation(line: 310, column: 21, scope: !733)
!812 = !DILocation(line: 310, column: 29, scope: !733)
!813 = !DILocation(line: 317, column: 5, scope: !814)
!814 = distinct !DILexicalBlock(scope: !757, file: !3, line: 317, column: 5)
!815 = !DILocation(line: 308, column: 23, scope: !733)
!816 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !817)
!817 = distinct !DILocation(line: 49, column: 21, scope: !258, inlinedAt: !818)
!818 = distinct !DILocation(line: 317, column: 5, scope: !754)
!819 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !817)
!820 = !DILocation(line: 121, column: 2, scope: !237, inlinedAt: !817)
!821 = !DILocation(line: 49, column: 16, scope: !258, inlinedAt: !818)
!822 = !DILocation(line: 50, column: 19, scope: !258, inlinedAt: !818)
!823 = !DILocation(line: 50, column: 11, scope: !258, inlinedAt: !818)
!824 = !DILocation(line: 50, column: 9, scope: !258, inlinedAt: !818)
!825 = !DILocation(line: 50, column: 2, scope: !258, inlinedAt: !818)
!826 = !DILocation(line: 317, column: 5, scope: !754)
!827 = !{i32 -2146233643, i32 -2146233630, i32 -2146233605, i32 -2146233581, i32 -2146233556, i32 -2146233481, i32 -2146233456, i32 -2146233312, i32 -2146233287, i32 -2146229980, i32 -2146229891, i32 -2146229770, i32 -2146229675, i32 -2146229574, i32 -2146229547, i32 -2146229464, i32 -2146229375, i32 -2146229254, i32 -2146229154, i32 -2146229048, i32 -2146228940, i32 -2146232950, i32 -2146232897, i32 -2146232866, i32 -2146232835, i32 -2146232814, i32 -2146232792, i32 -2146232743, i32 -2146232722, i32 -2146232619, i32 -2146232587, i32 -2146228857, i32 -2146228768, i32 -2146228647, i32 -2146228548, i32 -2146228442, i32 -2146228340, i32 -2146228307, i32 -2146228234, i32 -2146228166, i32 -2146232397, i32 -2146232338, i32 -2146232285, i32 -2146232254, i32 -2146232223, i32 -2146232202, i32 -2146232180, i32 -2146232131, i32 -2146232110, i32 -2146228119, i32 -2146228030, i32 -2146227909, i32 -2146227810, i32 -2146227704, i32 -2146227602, i32 -2146227569, i32 -2146227486, i32 -2146227397, i32 -2146227276, i32 -2146227176, i32 -2146227150, i32 -2146227047, i32 -2146227021, i32 -2146231852, i32 -2146231827, i32 -2146231760, i32 -2146231735, i32 -2146231671, i32 -2146231589, i32 -2146231566, i32 -2146231541, i32 -2146231516}
!828 = !DILocation(line: 317, column: 5, scope: !829)
!829 = distinct !DILexicalBlock(scope: !830, file: !3, line: 317, column: 5)
!830 = distinct !DILexicalBlock(scope: !754, file: !3, line: 317, column: 5)
!831 = !{i32 -2146230455, i32 -2146230438}
!832 = !DILocation(line: 319, column: 9, scope: !833)
!833 = distinct !DILexicalBlock(scope: !733, file: !3, line: 319, column: 9)
!834 = !DILocation(line: 319, column: 12, scope: !833)
!835 = !DILocation(line: 319, column: 9, scope: !733)
!836 = !DILocation(line: 0, scope: !769)
!837 = !DILocation(line: 310, column: 52, scope: !733)
!838 = !DILocation(line: 323, column: 26, scope: !769)
!839 = !DILocation(line: 323, column: 5, scope: !770)
!840 = !DILocation(line: 320, column: 33, scope: !841)
!841 = distinct !DILexicalBlock(scope: !833, file: !3, line: 319, column: 18)
!842 = !DILocation(line: 320, column: 9, scope: !841)
!843 = !DILocation(line: 321, column: 9, scope: !841)
!844 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !845)
!845 = distinct !DILocation(line: 327, column: 9, scope: !766)
!846 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !845)
!847 = !DILocation(line: 121, column: 2, scope: !237, inlinedAt: !845)
!848 = !DILocation(line: 327, column: 9, scope: !766)
!849 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !850)
!850 = distinct !DILocation(line: 327, column: 9, scope: !766)
!851 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !850)
!852 = !DILocation(line: 121, column: 2, scope: !237, inlinedAt: !850)
!853 = !DILocation(line: 327, column: 9, scope: !767)
!854 = !DILocation(line: 327, column: 9, scope: !855)
!855 = distinct !DILexicalBlock(scope: !766, file: !3, line: 327, column: 9)
!856 = !{!622, !134, i64 12}
!857 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !858)
!858 = distinct !DILocation(line: 49, column: 21, scope: !258, inlinedAt: !859)
!859 = distinct !DILocation(line: 327, column: 9, scope: !763)
!860 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !858)
!861 = !DILocation(line: 121, column: 2, scope: !237, inlinedAt: !858)
!862 = !DILocation(line: 49, column: 16, scope: !258, inlinedAt: !859)
!863 = !DILocation(line: 50, column: 19, scope: !258, inlinedAt: !859)
!864 = !DILocation(line: 50, column: 11, scope: !258, inlinedAt: !859)
!865 = !DILocation(line: 50, column: 9, scope: !258, inlinedAt: !859)
!866 = !DILocation(line: 50, column: 2, scope: !258, inlinedAt: !859)
!867 = !DILocation(line: 327, column: 9, scope: !763)
!868 = !{i32 -2146224506, i32 -2146224493, i32 -2146224468, i32 -2146224444, i32 -2146224419, i32 -2146224344, i32 -2146224319, i32 -2146224175, i32 -2146220960, i32 -2146220871, i32 -2146220750, i32 -2146220655, i32 -2146220554, i32 -2146220527, i32 -2146220444, i32 -2146220355, i32 -2146220234, i32 -2146220134, i32 -2146220028, i32 -2146219920, i32 -2146223845, i32 -2146223792, i32 -2146223761, i32 -2146223730, i32 -2146223709, i32 -2146223687, i32 -2146223638, i32 -2146223617, i32 -2146223514, i32 -2146219837, i32 -2146219748, i32 -2146219627, i32 -2146219528, i32 -2146219422, i32 -2146219320, i32 -2146219287, i32 -2146219214, i32 -2146219146, i32 -2146223324, i32 -2146223265, i32 -2146223212, i32 -2146223181, i32 -2146223150, i32 -2146223129, i32 -2146223107, i32 -2146223058, i32 -2146223037, i32 -2146219104, i32 -2146219015, i32 -2146218894, i32 -2146218795, i32 -2146218689, i32 -2146218587, i32 -2146218554, i32 -2146218471, i32 -2146218382, i32 -2146218261, i32 -2146218161, i32 -2146218135, i32 -2146218032, i32 -2146218006, i32 -2146222779, i32 -2146222712, i32 -2146222687, i32 -2146222623, i32 -2146222541, i32 -2146222518, i32 -2146222493, i32 -2146222468}
!869 = !DILocation(line: 327, column: 9, scope: !870)
!870 = distinct !DILexicalBlock(scope: !871, file: !3, line: 327, column: 9)
!871 = distinct !DILexicalBlock(scope: !763, file: !3, line: 327, column: 9)
!872 = !{i32 -2146221430, i32 -2146221413}
!873 = !DILocation(line: 329, column: 13, scope: !874)
!874 = distinct !DILexicalBlock(scope: !768, file: !3, line: 329, column: 13)
!875 = !DILocation(line: 329, column: 15, scope: !874)
!876 = !DILocation(line: 329, column: 13, scope: !768)
!877 = !DILocation(line: 331, column: 13, scope: !878)
!878 = distinct !DILexicalBlock(scope: !768, file: !3, line: 331, column: 13)
!879 = !DILocation(line: 331, column: 37, scope: !878)
!880 = !DILocation(line: 331, column: 13, scope: !768)
!881 = !DILocation(line: 332, column: 43, scope: !882)
!882 = distinct !DILexicalBlock(scope: !768, file: !3, line: 332, column: 13)
!883 = !DILocation(line: 332, column: 63, scope: !882)
!884 = !DILocation(line: 85, column: 24, scope: !190, inlinedAt: !885)
!885 = distinct !DILocation(line: 332, column: 46, scope: !882)
!886 = !DILocation(line: 85, column: 33, scope: !190, inlinedAt: !885)
!887 = !DILocation(line: 86, column: 12, scope: !190, inlinedAt: !885)
!888 = !DILocation(line: 86, column: 5, scope: !190, inlinedAt: !885)
!889 = !DILocation(line: 332, column: 66, scope: !882)
!890 = !DILocation(line: 332, column: 13, scope: !768)
!891 = !DILocation(line: 334, column: 13, scope: !768)
!892 = !DILocation(line: 335, column: 17, scope: !774)
!893 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !894)
!894 = distinct !DILocation(line: 337, column: 13, scope: !780)
!895 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !894)
!896 = !DILocation(line: 121, column: 2, scope: !237, inlinedAt: !894)
!897 = !DILocation(line: 337, column: 13, scope: !780)
!898 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !899)
!899 = distinct !DILocation(line: 337, column: 13, scope: !780)
!900 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !899)
!901 = !DILocation(line: 121, column: 2, scope: !237, inlinedAt: !899)
!902 = !DILocation(line: 337, column: 13, scope: !781)
!903 = !DILocation(line: 310, column: 40, scope: !733)
!904 = !DILocation(line: 337, column: 13, scope: !905)
!905 = distinct !DILexicalBlock(scope: !780, file: !3, line: 337, column: 13)
!906 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !907)
!907 = distinct !DILocation(line: 49, column: 21, scope: !258, inlinedAt: !908)
!908 = distinct !DILocation(line: 337, column: 13, scope: !777)
!909 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !907)
!910 = !DILocation(line: 121, column: 2, scope: !237, inlinedAt: !907)
!911 = !DILocation(line: 49, column: 16, scope: !258, inlinedAt: !908)
!912 = !DILocation(line: 50, column: 19, scope: !258, inlinedAt: !908)
!913 = !DILocation(line: 50, column: 11, scope: !258, inlinedAt: !908)
!914 = !DILocation(line: 50, column: 9, scope: !258, inlinedAt: !908)
!915 = !DILocation(line: 50, column: 2, scope: !258, inlinedAt: !908)
!916 = !DILocation(line: 337, column: 13, scope: !777)
!917 = !{i32 -2146215391, i32 -2146215378, i32 -2146215353, i32 -2146215329, i32 -2146215304, i32 -2146215229, i32 -2146215204, i32 -2146215060, i32 -2146215035, i32 -2146211704, i32 -2146211615, i32 -2146211494, i32 -2146211399, i32 -2146211298, i32 -2146211271, i32 -2146211188, i32 -2146211099, i32 -2146210978, i32 -2146210878, i32 -2146210772, i32 -2146210664, i32 -2146214698, i32 -2146214645, i32 -2146214614, i32 -2146214583, i32 -2146214562, i32 -2146214540, i32 -2146214491, i32 -2146214470, i32 -2146214367, i32 -2146214335, i32 -2146210581, i32 -2146210492, i32 -2146210371, i32 -2146210272, i32 -2146210166, i32 -2146210064, i32 -2146210031, i32 -2146209958, i32 -2146209890, i32 -2146214145, i32 -2146214086, i32 -2146214033, i32 -2146214002, i32 -2146213971, i32 -2146213950, i32 -2146213928, i32 -2146213879, i32 -2146213858, i32 -2146209843, i32 -2146209754, i32 -2146209633, i32 -2146209534, i32 -2146209428, i32 -2146209326, i32 -2146209293, i32 -2146209210, i32 -2146209121, i32 -2146209000, i32 -2146208900, i32 -2146208874, i32 -2146208771, i32 -2146208745, i32 -2146213600, i32 -2146213575, i32 -2146213508, i32 -2146213483, i32 -2146213419, i32 -2146213337, i32 -2146213314, i32 -2146213289, i32 -2146213264}
!918 = !DILocation(line: 337, column: 13, scope: !919)
!919 = distinct !DILexicalBlock(scope: !920, file: !3, line: 337, column: 13)
!920 = distinct !DILexicalBlock(scope: !777, file: !3, line: 337, column: 13)
!921 = !{i32 -2146212203, i32 -2146212186}
!922 = !DILocation(line: 339, column: 17, scope: !923)
!923 = distinct !DILexicalBlock(scope: !774, file: !3, line: 339, column: 17)
!924 = !DILocation(line: 339, column: 20, scope: !923)
!925 = !DILocation(line: 339, column: 17, scope: !774)
!926 = !DILocation(line: 0, scope: !927)
!927 = distinct !DILexicalBlock(scope: !928, file: !3, line: 344, column: 13)
!928 = distinct !DILexicalBlock(scope: !774, file: !3, line: 344, column: 13)
!929 = !DILocation(line: 310, column: 56, scope: !733)
!930 = !DILocation(line: 344, column: 35, scope: !927)
!931 = !DILocation(line: 344, column: 13, scope: !928)
!932 = !DILocation(line: 341, column: 41, scope: !933)
!933 = distinct !DILexicalBlock(scope: !923, file: !3, line: 340, column: 13)
!934 = !DILocation(line: 341, column: 17, scope: !933)
!935 = !DILocation(line: 342, column: 17, scope: !933)
!936 = !DILocation(line: 344, column: 51, scope: !927)
!937 = distinct !{!937, !931, !938}
!938 = !DILocation(line: 349, column: 13, scope: !928)
!939 = !DILocation(line: 345, column: 26, scope: !940)
!940 = distinct !DILexicalBlock(scope: !941, file: !3, line: 345, column: 21)
!941 = distinct !DILexicalBlock(scope: !927, file: !3, line: 344, column: 60)
!942 = !DILocation(line: 345, column: 31, scope: !940)
!943 = !DILocation(line: 345, column: 42, scope: !940)
!944 = !{!622, !134, i64 16}
!945 = !DILocation(line: 345, column: 21, scope: !940)
!946 = !DILocation(line: 345, column: 54, scope: !940)
!947 = !DILocation(line: 345, column: 21, scope: !941)
!948 = !DILocation(line: 350, column: 26, scope: !774)
!949 = !DILocation(line: 350, column: 13, scope: !774)
!950 = !DILocation(line: 352, column: 56, scope: !951)
!951 = distinct !DILexicalBlock(scope: !952, file: !3, line: 351, column: 25)
!952 = distinct !DILexicalBlock(scope: !774, file: !3, line: 351, column: 17)
!953 = !DILocation(line: 352, column: 47, scope: !951)
!954 = !DILocation(line: 352, column: 17, scope: !951)
!955 = !DILocation(line: 353, column: 17, scope: !951)
!956 = !DILocation(line: 356, column: 21, scope: !957)
!957 = distinct !DILexicalBlock(scope: !768, file: !3, line: 356, column: 13)
!958 = !DILocation(line: 356, column: 26, scope: !957)
!959 = !DILocation(line: 356, column: 37, scope: !957)
!960 = !DILocation(line: 356, column: 13, scope: !957)
!961 = !DILocation(line: 356, column: 49, scope: !957)
!962 = !DILocation(line: 356, column: 13, scope: !768)
!963 = !DILocation(line: 359, column: 17, scope: !964)
!964 = distinct !DILexicalBlock(scope: !965, file: !3, line: 359, column: 17)
!965 = distinct !DILexicalBlock(scope: !957, file: !3, line: 356, column: 56)
!966 = !DILocation(line: 359, column: 23, scope: !964)
!967 = !DILocation(line: 359, column: 38, scope: !964)
!968 = !DILocation(line: 361, column: 19, scope: !965)
!969 = !DILocation(line: 361, column: 13, scope: !965)
!970 = !DILocation(line: 362, column: 15, scope: !965)
!971 = !DILocation(line: 363, column: 13, scope: !965)
!972 = !DILocation(line: 323, column: 42, scope: !769)
!973 = distinct !{!973, !839, !974}
!974 = !DILocation(line: 369, column: 5, scope: !770)
!975 = !DILocation(line: 371, column: 59, scope: !976)
!976 = distinct !DILexicalBlock(scope: !733, file: !3, line: 370, column: 9)
!977 = !DILocation(line: 371, column: 50, scope: !976)
!978 = !DILocation(line: 371, column: 9, scope: !976)
!979 = !DILocation(line: 374, column: 9, scope: !980)
!980 = distinct !DILexicalBlock(scope: !733, file: !3, line: 374, column: 9)
!981 = !DILocation(line: 374, column: 11, scope: !980)
!982 = !DILocation(line: 374, column: 9, scope: !733)
!983 = !DILocation(line: 375, column: 9, scope: !984)
!984 = distinct !DILexicalBlock(scope: !980, file: !3, line: 374, column: 24)
!985 = !DILocation(line: 376, column: 11, scope: !984)
!986 = !DILocation(line: 377, column: 5, scope: !984)
!987 = !DILocation(line: 380, column: 18, scope: !733)
!988 = !DILocation(line: 380, column: 5, scope: !733)
!989 = !DILocation(line: 384, column: 9, scope: !990)
!990 = distinct !DILexicalBlock(scope: !733, file: !3, line: 384, column: 9)
!991 = !DILocation(line: 384, column: 11, scope: !990)
!992 = !DILocation(line: 384, column: 26, scope: !990)
!993 = !DILocation(line: 384, column: 23, scope: !990)
!994 = !DILocation(line: 384, column: 48, scope: !990)
!995 = !DILocation(line: 385, column: 16, scope: !996)
!996 = distinct !DILexicalBlock(scope: !990, file: !3, line: 384, column: 76)
!997 = !DILocation(line: 385, column: 9, scope: !996)
!998 = !DILocation(line: 389, column: 1, scope: !733)
!999 = distinct !DISubprogram(name: "anetTcpNonBlockConnect", scope: !3, file: !3, line: 396, type: !722, isLocal: false, isDefinition: true, scopeLine: 397, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1000)
!1000 = !{!1001, !1002, !1003}
!1001 = !DILocalVariable(name: "err", arg: 1, scope: !999, file: !3, line: 396, type: !80)
!1002 = !DILocalVariable(name: "addr", arg: 2, scope: !999, file: !3, line: 396, type: !80)
!1003 = !DILocalVariable(name: "port", arg: 3, scope: !999, file: !3, line: 396, type: !7)
!1004 = !DILocation(line: 396, column: 34, scope: !999)
!1005 = !DILocation(line: 396, column: 45, scope: !999)
!1006 = !DILocation(line: 396, column: 55, scope: !999)
!1007 = !DILocation(line: 398, column: 12, scope: !999)
!1008 = !DILocation(line: 398, column: 5, scope: !999)
!1009 = distinct !DISubprogram(name: "anetTcpNonBlockBindConnect", scope: !3, file: !3, line: 401, type: !1010, isLocal: false, isDefinition: true, scopeLine: 403, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1012)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{!7, !80, !80, !7, !80}
!1012 = !{!1013, !1014, !1015, !1016}
!1013 = !DILocalVariable(name: "err", arg: 1, scope: !1009, file: !3, line: 401, type: !80)
!1014 = !DILocalVariable(name: "addr", arg: 2, scope: !1009, file: !3, line: 401, type: !80)
!1015 = !DILocalVariable(name: "port", arg: 3, scope: !1009, file: !3, line: 401, type: !7)
!1016 = !DILocalVariable(name: "source_addr", arg: 4, scope: !1009, file: !3, line: 402, type: !80)
!1017 = !DILocation(line: 401, column: 38, scope: !1009)
!1018 = !DILocation(line: 401, column: 49, scope: !1009)
!1019 = !DILocation(line: 401, column: 59, scope: !1009)
!1020 = !DILocation(line: 402, column: 38, scope: !1009)
!1021 = !DILocation(line: 404, column: 12, scope: !1009)
!1022 = !DILocation(line: 404, column: 5, scope: !1009)
!1023 = distinct !DISubprogram(name: "anetTcpNonBlockBestEffortBindConnect", scope: !3, file: !3, line: 408, type: !1010, isLocal: false, isDefinition: true, scopeLine: 410, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1024)
!1024 = !{!1025, !1026, !1027, !1028}
!1025 = !DILocalVariable(name: "err", arg: 1, scope: !1023, file: !3, line: 408, type: !80)
!1026 = !DILocalVariable(name: "addr", arg: 2, scope: !1023, file: !3, line: 408, type: !80)
!1027 = !DILocalVariable(name: "port", arg: 3, scope: !1023, file: !3, line: 408, type: !7)
!1028 = !DILocalVariable(name: "source_addr", arg: 4, scope: !1023, file: !3, line: 409, type: !80)
!1029 = !DILocation(line: 408, column: 48, scope: !1023)
!1030 = !DILocation(line: 408, column: 59, scope: !1023)
!1031 = !DILocation(line: 408, column: 69, scope: !1023)
!1032 = !DILocation(line: 409, column: 48, scope: !1023)
!1033 = !DILocation(line: 411, column: 12, scope: !1023)
!1034 = !DILocation(line: 411, column: 5, scope: !1023)
!1035 = distinct !DISubprogram(name: "anetUnixGenericConnect", scope: !3, file: !3, line: 415, type: !722, isLocal: false, isDefinition: true, scopeLine: 416, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1036)
!1036 = !{!1037, !1038, !1039, !1040, !1041}
!1037 = !DILocalVariable(name: "err", arg: 1, scope: !1035, file: !3, line: 415, type: !80)
!1038 = !DILocalVariable(name: "path", arg: 2, scope: !1035, file: !3, line: 415, type: !80)
!1039 = !DILocalVariable(name: "flags", arg: 3, scope: !1035, file: !3, line: 415, type: !7)
!1040 = !DILocalVariable(name: "s", scope: !1035, file: !3, line: 417, type: !7)
!1041 = !DILocalVariable(name: "sa", scope: !1035, file: !3, line: 418, type: !1042)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_un", file: !1043, line: 17, size: 872, elements: !1044)
!1043 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/include/sys/un.h", directory: "/root/.unikraft/apps/redis/build")
!1044 = !{!1045, !1046}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "sun_family", scope: !1042, file: !1043, line: 18, baseType: !27, size: 8)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "sun_path", scope: !1042, file: !1043, line: 19, baseType: !1047, size: 864, offset: 8)
!1047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 864, elements: !1048)
!1048 = !{!1049}
!1049 = !DISubrange(count: 108)
!1050 = !DILocation(line: 415, column: 34, scope: !1035)
!1051 = !DILocation(line: 415, column: 45, scope: !1035)
!1052 = !DILocation(line: 415, column: 55, scope: !1035)
!1053 = !DILocation(line: 418, column: 5, scope: !1035)
!1054 = !DILocation(line: 420, column: 14, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 420, column: 9)
!1056 = !DILocation(line: 417, column: 9, scope: !1035)
!1057 = !DILocation(line: 420, column: 46, scope: !1055)
!1058 = !DILocation(line: 420, column: 9, scope: !1035)
!1059 = !DILocation(line: 423, column: 19, scope: !1035)
!1060 = !{!1061, !135, i64 0}
!1061 = !{!"sockaddr_un", !135, i64 0, !135, i64 1}
!1062 = !DILocation(line: 424, column: 13, scope: !1035)
!1063 = !DILocation(line: 424, column: 5, scope: !1035)
!1064 = !DILocation(line: 425, column: 15, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 425, column: 9)
!1066 = !DILocation(line: 425, column: 9, scope: !1035)
!1067 = !DILocation(line: 85, column: 24, scope: !190, inlinedAt: !1068)
!1068 = distinct !DILocation(line: 426, column: 13, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 426, column: 13)
!1070 = distinct !DILexicalBlock(scope: !1065, file: !3, line: 425, column: 40)
!1071 = !DILocation(line: 85, column: 33, scope: !190, inlinedAt: !1068)
!1072 = !DILocation(line: 86, column: 12, scope: !190, inlinedAt: !1068)
!1073 = !DILocation(line: 86, column: 5, scope: !190, inlinedAt: !1068)
!1074 = !DILocation(line: 426, column: 33, scope: !1069)
!1075 = !DILocation(line: 426, column: 13, scope: !1070)
!1076 = !DILocation(line: 427, column: 13, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 426, column: 45)
!1078 = !DILocation(line: 428, column: 13, scope: !1077)
!1079 = !DILocation(line: 431, column: 19, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 431, column: 9)
!1081 = !DILocation(line: 431, column: 9, scope: !1080)
!1082 = !DILocation(line: 431, column: 53, scope: !1080)
!1083 = !DILocation(line: 431, column: 9, scope: !1035)
!1084 = !DILocation(line: 432, column: 13, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1086, file: !3, line: 432, column: 13)
!1086 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 431, column: 60)
!1087 = !DILocation(line: 432, column: 19, scope: !1085)
!1088 = !DILocation(line: 432, column: 34, scope: !1085)
!1089 = !DILocation(line: 436, column: 51, scope: !1086)
!1090 = !DILocation(line: 436, column: 42, scope: !1086)
!1091 = !DILocation(line: 436, column: 9, scope: !1086)
!1092 = !DILocation(line: 437, column: 9, scope: !1086)
!1093 = !DILocation(line: 438, column: 9, scope: !1086)
!1094 = !DILocation(line: 0, scope: !1035)
!1095 = !DILocation(line: 441, column: 1, scope: !1035)
!1096 = distinct !DISubprogram(name: "anetCreateSocket", scope: !3, file: !3, line: 285, type: !191, isLocal: true, isDefinition: true, scopeLine: 285, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1097)
!1097 = !{!1098, !1099, !1100, !1101, !1107, !1108}
!1098 = !DILocalVariable(name: "err", arg: 1, scope: !1096, file: !3, line: 285, type: !80)
!1099 = !DILocalVariable(name: "domain", arg: 2, scope: !1096, file: !3, line: 285, type: !7)
!1100 = !DILocalVariable(name: "s", scope: !1096, file: !3, line: 286, type: !7)
!1101 = !DILocalVariable(name: "tid", scope: !1102, file: !3, line: 287, type: !41)
!1102 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 287, column: 5)
!1103 = distinct !DILexicalBlock(scope: !1104, file: !3, line: 287, column: 5)
!1104 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 287, column: 5)
!1105 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 287, column: 5)
!1106 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 287, column: 5)
!1107 = !DILocalVariable(name: "_ret", scope: !1102, file: !3, line: 287, type: !13)
!1108 = !DILocalVariable(name: "_arg3", scope: !1102, file: !3, line: 287, type: !13)
!1109 = !DILocation(line: 285, column: 35, scope: !1096)
!1110 = !DILocation(line: 285, column: 44, scope: !1096)
!1111 = !DILocation(line: 286, column: 5, scope: !1096)
!1112 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !1113)
!1113 = distinct !DILocation(line: 287, column: 5, scope: !1105)
!1114 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !1113)
!1115 = !DILocation(line: 121, column: 2, scope: !237, inlinedAt: !1113)
!1116 = !DILocation(line: 287, column: 5, scope: !1105)
!1117 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !1118)
!1118 = distinct !DILocation(line: 287, column: 5, scope: !1105)
!1119 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !1118)
!1120 = !DILocation(line: 121, column: 2, scope: !237, inlinedAt: !1118)
!1121 = !DILocation(line: 287, column: 5, scope: !1106)
!1122 = !DILocation(line: 287, column: 5, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 287, column: 5)
!1124 = !DILocation(line: 286, column: 9, scope: !1096)
!1125 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !1126)
!1126 = distinct !DILocation(line: 49, column: 21, scope: !258, inlinedAt: !1127)
!1127 = distinct !DILocation(line: 287, column: 5, scope: !1102)
!1128 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !1126)
!1129 = !DILocation(line: 121, column: 2, scope: !237, inlinedAt: !1126)
!1130 = !DILocation(line: 49, column: 16, scope: !258, inlinedAt: !1127)
!1131 = !DILocation(line: 50, column: 19, scope: !258, inlinedAt: !1127)
!1132 = !DILocation(line: 50, column: 11, scope: !258, inlinedAt: !1127)
!1133 = !DILocation(line: 50, column: 9, scope: !258, inlinedAt: !1127)
!1134 = !DILocation(line: 50, column: 2, scope: !258, inlinedAt: !1127)
!1135 = !DILocation(line: 287, column: 5, scope: !1102)
!1136 = !{i32 -2146242636, i32 -2146242623, i32 -2146242598, i32 -2146242574, i32 -2146242549, i32 -2146242474, i32 -2146242449, i32 -2146242305, i32 -2146239120, i32 -2146239031, i32 -2146238910, i32 -2146238815, i32 -2146238714, i32 -2146238687, i32 -2146238604, i32 -2146238515, i32 -2146238394, i32 -2146238294, i32 -2146238188, i32 -2146238080, i32 -2146241975, i32 -2146241922, i32 -2146241891, i32 -2146241860, i32 -2146241839, i32 -2146241817, i32 -2146241768, i32 -2146241747, i32 -2146241644, i32 -2146237997, i32 -2146237908, i32 -2146237787, i32 -2146237688, i32 -2146237582, i32 -2146237480, i32 -2146237447, i32 -2146237374, i32 -2146237306, i32 -2146241454, i32 -2146241395, i32 -2146241342, i32 -2146241311, i32 -2146241280, i32 -2146241259, i32 -2146241237, i32 -2146241188, i32 -2146241167, i32 -2146237264, i32 -2146237175, i32 -2146237054, i32 -2146236955, i32 -2146236849, i32 -2146236747, i32 -2146236714, i32 -2146236631, i32 -2146236542, i32 -2146236421, i32 -2146236321, i32 -2146236295, i32 -2146236192, i32 -2146236166, i32 -2146240909, i32 -2146240842, i32 -2146240817, i32 -2146240753, i32 -2146240671, i32 -2146240648, i32 -2146240623, i32 -2146240598}
!1137 = !DILocation(line: 287, column: 5, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 287, column: 5)
!1139 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 287, column: 5)
!1140 = !{i32 -2146239560, i32 -2146239543}
!1141 = !DILocation(line: 288, column: 9, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 288, column: 9)
!1143 = !DILocation(line: 288, column: 11, scope: !1142)
!1144 = !DILocation(line: 288, column: 9, scope: !1096)
!1145 = !DILocation(line: 289, column: 59, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 288, column: 18)
!1147 = !DILocation(line: 289, column: 50, scope: !1146)
!1148 = !DILocation(line: 289, column: 9, scope: !1146)
!1149 = !DILocation(line: 290, column: 9, scope: !1146)
!1150 = !DILocation(line: 295, column: 9, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 295, column: 9)
!1152 = !DILocation(line: 295, column: 33, scope: !1151)
!1153 = !DILocation(line: 0, scope: !1096)
!1154 = !DILocation(line: 295, column: 9, scope: !1096)
!1155 = !DILocation(line: 296, column: 9, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1151, file: !3, line: 295, column: 46)
!1157 = !DILocation(line: 297, column: 9, scope: !1156)
!1158 = !DILocation(line: 300, column: 1, scope: !1096)
!1159 = distinct !DISubprogram(name: "anetUnixConnect", scope: !3, file: !3, line: 443, type: !1160, isLocal: false, isDefinition: true, scopeLine: 444, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1162)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!7, !80, !80}
!1162 = !{!1163, !1164}
!1163 = !DILocalVariable(name: "err", arg: 1, scope: !1159, file: !3, line: 443, type: !80)
!1164 = !DILocalVariable(name: "path", arg: 2, scope: !1159, file: !3, line: 443, type: !80)
!1165 = !DILocation(line: 443, column: 27, scope: !1159)
!1166 = !DILocation(line: 443, column: 38, scope: !1159)
!1167 = !DILocation(line: 445, column: 12, scope: !1159)
!1168 = !DILocation(line: 445, column: 5, scope: !1159)
!1169 = distinct !DISubprogram(name: "anetUnixNonBlockConnect", scope: !3, file: !3, line: 448, type: !1160, isLocal: false, isDefinition: true, scopeLine: 449, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1170)
!1170 = !{!1171, !1172}
!1171 = !DILocalVariable(name: "err", arg: 1, scope: !1169, file: !3, line: 448, type: !80)
!1172 = !DILocalVariable(name: "path", arg: 2, scope: !1169, file: !3, line: 448, type: !80)
!1173 = !DILocation(line: 448, column: 35, scope: !1169)
!1174 = !DILocation(line: 448, column: 46, scope: !1169)
!1175 = !DILocation(line: 450, column: 12, scope: !1169)
!1176 = !DILocation(line: 450, column: 5, scope: !1169)
!1177 = distinct !DISubprogram(name: "anetRead", scope: !3, file: !3, line: 455, type: !1178, isLocal: false, isDefinition: true, scopeLine: 456, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1180)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!7, !7, !80, !7}
!1180 = !{!1181, !1182, !1183, !1184, !1188}
!1181 = !DILocalVariable(name: "fd", arg: 1, scope: !1177, file: !3, line: 455, type: !7)
!1182 = !DILocalVariable(name: "buf", arg: 2, scope: !1177, file: !3, line: 455, type: !80)
!1183 = !DILocalVariable(name: "count", arg: 3, scope: !1177, file: !3, line: 455, type: !7)
!1184 = !DILocalVariable(name: "nread", scope: !1177, file: !3, line: 457, type: !1185)
!1185 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !1186, line: 200, baseType: !1187)
!1186 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!1187 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !584, line: 145, baseType: !508)
!1188 = !DILocalVariable(name: "totlen", scope: !1177, file: !3, line: 457, type: !1185)
!1189 = !DILocation(line: 455, column: 18, scope: !1177)
!1190 = !DILocation(line: 455, column: 28, scope: !1177)
!1191 = !DILocation(line: 455, column: 37, scope: !1177)
!1192 = !DILocation(line: 457, column: 20, scope: !1177)
!1193 = !DILocation(line: 458, column: 21, scope: !1177)
!1194 = !DILocation(line: 458, column: 18, scope: !1177)
!1195 = !DILocation(line: 458, column: 5, scope: !1177)
!1196 = !DILocation(line: 459, column: 34, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1177, file: !3, line: 458, column: 28)
!1198 = !DILocation(line: 459, column: 17, scope: !1197)
!1199 = !DILocation(line: 457, column: 13, scope: !1177)
!1200 = !DILocation(line: 460, column: 13, scope: !1197)
!1201 = !DILocation(line: 460, column: 32, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 460, column: 13)
!1203 = !DILocation(line: 460, column: 25, scope: !1202)
!1204 = !DILocation(line: 462, column: 16, scope: !1197)
!1205 = !DILocation(line: 463, column: 13, scope: !1197)
!1206 = distinct !{!1206, !1195, !1207}
!1207 = !DILocation(line: 464, column: 5, scope: !1177)
!1208 = !DILocation(line: 0, scope: !1177)
!1209 = !DILocation(line: 466, column: 1, scope: !1177)
!1210 = distinct !DISubprogram(name: "anetWrite", scope: !3, file: !3, line: 470, type: !1178, isLocal: false, isDefinition: true, scopeLine: 471, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1211)
!1211 = !{!1212, !1213, !1214, !1215, !1216}
!1212 = !DILocalVariable(name: "fd", arg: 1, scope: !1210, file: !3, line: 470, type: !7)
!1213 = !DILocalVariable(name: "buf", arg: 2, scope: !1210, file: !3, line: 470, type: !80)
!1214 = !DILocalVariable(name: "count", arg: 3, scope: !1210, file: !3, line: 470, type: !7)
!1215 = !DILocalVariable(name: "nwritten", scope: !1210, file: !3, line: 472, type: !1185)
!1216 = !DILocalVariable(name: "totlen", scope: !1210, file: !3, line: 472, type: !1185)
!1217 = !DILocation(line: 470, column: 19, scope: !1210)
!1218 = !DILocation(line: 470, column: 29, scope: !1210)
!1219 = !DILocation(line: 470, column: 38, scope: !1210)
!1220 = !DILocation(line: 472, column: 23, scope: !1210)
!1221 = !DILocation(line: 473, column: 21, scope: !1210)
!1222 = !DILocation(line: 473, column: 18, scope: !1210)
!1223 = !DILocation(line: 473, column: 5, scope: !1210)
!1224 = !DILocation(line: 474, column: 38, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1210, file: !3, line: 473, column: 28)
!1226 = !DILocation(line: 474, column: 20, scope: !1225)
!1227 = !DILocation(line: 472, column: 13, scope: !1210)
!1228 = !DILocation(line: 475, column: 13, scope: !1225)
!1229 = !DILocation(line: 475, column: 35, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 475, column: 13)
!1231 = !DILocation(line: 475, column: 28, scope: !1230)
!1232 = !DILocation(line: 477, column: 16, scope: !1225)
!1233 = !DILocation(line: 478, column: 13, scope: !1225)
!1234 = distinct !{!1234, !1223, !1235}
!1235 = !DILocation(line: 479, column: 5, scope: !1210)
!1236 = !DILocation(line: 0, scope: !1210)
!1237 = !DILocation(line: 481, column: 1, scope: !1210)
!1238 = distinct !DISubprogram(name: "anetTcpServer", scope: !3, file: !3, line: 566, type: !1239, isLocal: false, isDefinition: true, scopeLine: 567, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1241)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!7, !80, !7, !80, !7}
!1241 = !{!1242, !1243, !1244, !1245}
!1242 = !DILocalVariable(name: "err", arg: 1, scope: !1238, file: !3, line: 566, type: !80)
!1243 = !DILocalVariable(name: "port", arg: 2, scope: !1238, file: !3, line: 566, type: !7)
!1244 = !DILocalVariable(name: "bindaddr", arg: 3, scope: !1238, file: !3, line: 566, type: !80)
!1245 = !DILocalVariable(name: "backlog", arg: 4, scope: !1238, file: !3, line: 566, type: !7)
!1246 = !DILocation(line: 566, column: 25, scope: !1238)
!1247 = !DILocation(line: 566, column: 34, scope: !1238)
!1248 = !DILocation(line: 566, column: 46, scope: !1238)
!1249 = !DILocation(line: 566, column: 60, scope: !1238)
!1250 = !DILocation(line: 568, column: 12, scope: !1238)
!1251 = !DILocation(line: 568, column: 5, scope: !1238)
!1252 = distinct !DISubprogram(name: "_anetTcpServer", scope: !3, file: !3, line: 517, type: !1253, isLocal: true, isDefinition: true, scopeLine: 518, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1255)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!7, !80, !7, !80, !7, !7}
!1255 = !{!1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1276, !1277, !1278, !1279, !1288, !1289, !1290}
!1256 = !DILocalVariable(name: "err", arg: 1, scope: !1252, file: !3, line: 517, type: !80)
!1257 = !DILocalVariable(name: "port", arg: 2, scope: !1252, file: !3, line: 517, type: !7)
!1258 = !DILocalVariable(name: "bindaddr", arg: 3, scope: !1252, file: !3, line: 517, type: !80)
!1259 = !DILocalVariable(name: "af", arg: 4, scope: !1252, file: !3, line: 517, type: !7)
!1260 = !DILocalVariable(name: "backlog", arg: 5, scope: !1252, file: !3, line: 517, type: !7)
!1261 = !DILocalVariable(name: "s", scope: !1252, file: !3, line: 519, type: !7)
!1262 = !DILocalVariable(name: "rv", scope: !1252, file: !3, line: 519, type: !7)
!1263 = !DILocalVariable(name: "_port", scope: !1252, file: !3, line: 520, type: !745)
!1264 = !DILocalVariable(name: "_dss__port", scope: !1252, file: !3, line: 521, type: !80)
!1265 = !DILocalVariable(name: "hints", scope: !1252, file: !3, line: 522, type: !82)
!1266 = !DILocalVariable(name: "_dss_hints", scope: !1252, file: !3, line: 523, type: !81)
!1267 = !DILocalVariable(name: "servinfo", scope: !1252, file: !3, line: 524, type: !81)
!1268 = !DILocalVariable(name: "_dss_servinfo", scope: !1252, file: !3, line: 525, type: !94)
!1269 = !DILocalVariable(name: "p", scope: !1252, file: !3, line: 526, type: !81)
!1270 = !DILocalVariable(name: "tid", scope: !1271, file: !3, line: 534, type: !41)
!1271 = distinct !DILexicalBlock(scope: !1272, file: !3, line: 534, column: 5)
!1272 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 534, column: 5)
!1273 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 534, column: 5)
!1274 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 534, column: 5)
!1275 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 534, column: 5)
!1276 = !DILocalVariable(name: "_ret", scope: !1271, file: !3, line: 534, type: !13)
!1277 = !DILocalVariable(name: "_arg3", scope: !1271, file: !3, line: 534, type: !13)
!1278 = !DILocalVariable(name: "_arg4", scope: !1271, file: !3, line: 534, type: !13)
!1279 = !DILocalVariable(name: "tid", scope: !1280, file: !3, line: 543, type: !41)
!1280 = distinct !DILexicalBlock(scope: !1281, file: !3, line: 543, column: 9)
!1281 = distinct !DILexicalBlock(scope: !1282, file: !3, line: 543, column: 9)
!1282 = distinct !DILexicalBlock(scope: !1283, file: !3, line: 543, column: 9)
!1283 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 543, column: 9)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !3, line: 543, column: 9)
!1285 = distinct !DILexicalBlock(scope: !1286, file: !3, line: 542, column: 59)
!1286 = distinct !DILexicalBlock(scope: !1287, file: !3, line: 542, column: 5)
!1287 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 542, column: 5)
!1288 = !DILocalVariable(name: "_ret", scope: !1280, file: !3, line: 543, type: !13)
!1289 = !DILocalVariable(name: "_arg3", scope: !1280, file: !3, line: 543, type: !13)
!1290 = !DILocalVariable(name: "tid", scope: !1291, file: !3, line: 562, type: !41)
!1291 = distinct !DILexicalBlock(scope: !1292, file: !3, line: 562, column: 5)
!1292 = distinct !DILexicalBlock(scope: !1293, file: !3, line: 562, column: 5)
!1293 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 562, column: 5)
!1294 = distinct !DILexicalBlock(scope: !1295, file: !3, line: 562, column: 5)
!1295 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 562, column: 5)
!1296 = !DILocation(line: 517, column: 33, scope: !1252)
!1297 = !DILocation(line: 517, column: 42, scope: !1252)
!1298 = !DILocation(line: 517, column: 54, scope: !1252)
!1299 = !DILocation(line: 517, column: 68, scope: !1252)
!1300 = !DILocation(line: 517, column: 76, scope: !1252)
!1301 = !DILocation(line: 519, column: 5, scope: !1252)
!1302 = !DILocation(line: 519, column: 9, scope: !1252)
!1303 = !DILocation(line: 520, column: 5, scope: !1252)
!1304 = !DILocation(line: 520, column: 10, scope: !1252)
!1305 = !DILocation(line: 521, column: 34, scope: !1252)
!1306 = !DILocation(line: 521, column: 55, scope: !1252)
!1307 = !DILocation(line: 521, column: 24, scope: !1252)
!1308 = !DILocation(line: 521, column: 11, scope: !1252)
!1309 = !DILocation(line: 522, column: 5, scope: !1252)
!1310 = !DILocation(line: 523, column: 56, scope: !1252)
!1311 = !DILocation(line: 523, column: 77, scope: !1252)
!1312 = !DILocation(line: 523, column: 35, scope: !1252)
!1313 = !DILocation(line: 523, column: 22, scope: !1252)
!1314 = !DILocation(line: 524, column: 5, scope: !1252)
!1315 = !DILocation(line: 525, column: 61, scope: !1252)
!1316 = !DILocation(line: 525, column: 85, scope: !1252)
!1317 = !DILocation(line: 525, column: 39, scope: !1252)
!1318 = !DILocation(line: 525, column: 23, scope: !1252)
!1319 = !DILocation(line: 528, column: 5, scope: !1252)
!1320 = !DILocation(line: 529, column: 12, scope: !1252)
!1321 = !DILocation(line: 529, column: 5, scope: !1252)
!1322 = !DILocation(line: 530, column: 19, scope: !1252)
!1323 = !DILocation(line: 530, column: 29, scope: !1252)
!1324 = !DILocation(line: 531, column: 19, scope: !1252)
!1325 = !DILocation(line: 531, column: 31, scope: !1252)
!1326 = !DILocation(line: 532, column: 19, scope: !1252)
!1327 = !DILocation(line: 532, column: 28, scope: !1252)
!1328 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !1329)
!1329 = distinct !DILocation(line: 534, column: 5, scope: !1274)
!1330 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !1329)
!1331 = !DILocation(line: 121, column: 2, scope: !237, inlinedAt: !1329)
!1332 = !DILocation(line: 534, column: 5, scope: !1274)
!1333 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !1334)
!1334 = distinct !DILocation(line: 534, column: 5, scope: !1274)
!1335 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !1334)
!1336 = !DILocation(line: 121, column: 2, scope: !237, inlinedAt: !1334)
!1337 = !DILocation(line: 534, column: 5, scope: !1275)
!1338 = !DILocation(line: 534, column: 5, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 534, column: 5)
!1340 = !DILocation(line: 519, column: 17, scope: !1252)
!1341 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !1342)
!1342 = distinct !DILocation(line: 49, column: 21, scope: !258, inlinedAt: !1343)
!1343 = distinct !DILocation(line: 534, column: 5, scope: !1271)
!1344 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !1342)
!1345 = !DILocation(line: 121, column: 2, scope: !237, inlinedAt: !1342)
!1346 = !DILocation(line: 49, column: 16, scope: !258, inlinedAt: !1343)
!1347 = !DILocation(line: 50, column: 19, scope: !258, inlinedAt: !1343)
!1348 = !DILocation(line: 50, column: 11, scope: !258, inlinedAt: !1343)
!1349 = !DILocation(line: 50, column: 9, scope: !258, inlinedAt: !1343)
!1350 = !DILocation(line: 50, column: 2, scope: !258, inlinedAt: !1343)
!1351 = !DILocation(line: 534, column: 5, scope: !1271)
!1352 = !{i32 -2146174857, i32 -2146174844, i32 -2146174819, i32 -2146174795, i32 -2146174770, i32 -2146174695, i32 -2146174670, i32 -2146174526, i32 -2146174501, i32 -2146171171, i32 -2146171082, i32 -2146170961, i32 -2146170866, i32 -2146170765, i32 -2146170738, i32 -2146170655, i32 -2146170566, i32 -2146170445, i32 -2146170345, i32 -2146170239, i32 -2146170131, i32 -2146174164, i32 -2146174111, i32 -2146174080, i32 -2146174049, i32 -2146174028, i32 -2146174006, i32 -2146173957, i32 -2146173936, i32 -2146173833, i32 -2146173801, i32 -2146170048, i32 -2146169959, i32 -2146169838, i32 -2146169739, i32 -2146169633, i32 -2146169531, i32 -2146169498, i32 -2146169425, i32 -2146169357, i32 -2146173611, i32 -2146173552, i32 -2146173499, i32 -2146173468, i32 -2146173437, i32 -2146173416, i32 -2146173394, i32 -2146173345, i32 -2146173324, i32 -2146169310, i32 -2146169221, i32 -2146169100, i32 -2146169001, i32 -2146168895, i32 -2146168793, i32 -2146168760, i32 -2146168677, i32 -2146168588, i32 -2146168467, i32 -2146168367, i32 -2146168341, i32 -2146168238, i32 -2146168212, i32 -2146173066, i32 -2146173041, i32 -2146172974, i32 -2146172949, i32 -2146172885, i32 -2146172803, i32 -2146172780, i32 -2146172755, i32 -2146172730}
!1353 = !DILocation(line: 534, column: 5, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 534, column: 5)
!1355 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 534, column: 5)
!1356 = !{i32 -2146171669, i32 -2146171652}
!1357 = !DILocation(line: 538, column: 9, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 538, column: 9)
!1359 = !DILocation(line: 538, column: 12, scope: !1358)
!1360 = !DILocation(line: 538, column: 9, scope: !1252)
!1361 = !DILocation(line: 0, scope: !1286)
!1362 = !DILocation(line: 526, column: 22, scope: !1252)
!1363 = !DILocation(line: 542, column: 34, scope: !1286)
!1364 = !DILocation(line: 542, column: 5, scope: !1287)
!1365 = !DILocation(line: 539, column: 33, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1358, file: !3, line: 538, column: 18)
!1367 = !DILocation(line: 539, column: 9, scope: !1366)
!1368 = !DILocation(line: 540, column: 9, scope: !1366)
!1369 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !1370)
!1370 = distinct !DILocation(line: 543, column: 9, scope: !1283)
!1371 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !1370)
!1372 = !DILocation(line: 121, column: 2, scope: !237, inlinedAt: !1370)
!1373 = !DILocation(line: 543, column: 9, scope: !1283)
!1374 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !1375)
!1375 = distinct !DILocation(line: 543, column: 9, scope: !1283)
!1376 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !1375)
!1377 = !DILocation(line: 121, column: 2, scope: !237, inlinedAt: !1375)
!1378 = !DILocation(line: 543, column: 9, scope: !1284)
!1379 = !DILocation(line: 543, column: 9, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1283, file: !3, line: 543, column: 9)
!1381 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !1382)
!1382 = distinct !DILocation(line: 49, column: 21, scope: !258, inlinedAt: !1383)
!1383 = distinct !DILocation(line: 543, column: 9, scope: !1280)
!1384 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !1382)
!1385 = !DILocation(line: 121, column: 2, scope: !237, inlinedAt: !1382)
!1386 = !DILocation(line: 49, column: 16, scope: !258, inlinedAt: !1383)
!1387 = !DILocation(line: 50, column: 19, scope: !258, inlinedAt: !1383)
!1388 = !DILocation(line: 50, column: 11, scope: !258, inlinedAt: !1383)
!1389 = !DILocation(line: 50, column: 9, scope: !258, inlinedAt: !1383)
!1390 = !DILocation(line: 50, column: 2, scope: !258, inlinedAt: !1383)
!1391 = !DILocation(line: 543, column: 9, scope: !1280)
!1392 = !{i32 -2146165697, i32 -2146165684, i32 -2146165659, i32 -2146165635, i32 -2146165610, i32 -2146165535, i32 -2146165510, i32 -2146165366, i32 -2146162151, i32 -2146162062, i32 -2146161941, i32 -2146161846, i32 -2146161745, i32 -2146161718, i32 -2146161635, i32 -2146161546, i32 -2146161425, i32 -2146161325, i32 -2146161219, i32 -2146161111, i32 -2146165036, i32 -2146164983, i32 -2146164952, i32 -2146164921, i32 -2146164900, i32 -2146164878, i32 -2146164829, i32 -2146164808, i32 -2146164705, i32 -2146161028, i32 -2146160939, i32 -2146160818, i32 -2146160719, i32 -2146160613, i32 -2146160511, i32 -2146160478, i32 -2146160405, i32 -2146160337, i32 -2146164515, i32 -2146164456, i32 -2146164403, i32 -2146164372, i32 -2146164341, i32 -2146164320, i32 -2146164298, i32 -2146164249, i32 -2146164228, i32 -2146160295, i32 -2146160206, i32 -2146160085, i32 -2146159986, i32 -2146159880, i32 -2146159778, i32 -2146159745, i32 -2146159662, i32 -2146159573, i32 -2146159452, i32 -2146159352, i32 -2146159326, i32 -2146159223, i32 -2146159197, i32 -2146163970, i32 -2146163903, i32 -2146163878, i32 -2146163814, i32 -2146163732, i32 -2146163709, i32 -2146163684, i32 -2146163659}
!1393 = !DILocation(line: 543, column: 9, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 543, column: 9)
!1395 = distinct !DILexicalBlock(scope: !1280, file: !3, line: 543, column: 9)
!1396 = !{i32 -2146162621, i32 -2146162604}
!1397 = !DILocation(line: 545, column: 13, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1285, file: !3, line: 545, column: 13)
!1399 = !DILocation(line: 545, column: 15, scope: !1398)
!1400 = !DILocation(line: 545, column: 13, scope: !1285)
!1401 = !DILocation(line: 548, column: 16, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1285, file: !3, line: 548, column: 13)
!1403 = !DILocation(line: 548, column: 28, scope: !1402)
!1404 = !DILocalVariable(name: "err", arg: 1, scope: !1405, file: !3, line: 502, type: !80)
!1405 = distinct !DISubprogram(name: "anetV6Only", scope: !3, file: !3, line: 502, type: !191, isLocal: true, isDefinition: true, scopeLine: 502, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1406)
!1406 = !{!1404, !1407, !1408, !1409, !1410, !1411, !1417, !1418, !1419, !1420}
!1407 = !DILocalVariable(name: "s", arg: 2, scope: !1405, file: !3, line: 502, type: !7)
!1408 = !DILocalVariable(name: "yes", scope: !1405, file: !3, line: 503, type: !7)
!1409 = !DILocalVariable(name: "_dss_yes", scope: !1405, file: !3, line: 504, type: !6)
!1410 = !DILocalVariable(name: "ret", scope: !1405, file: !3, line: 506, type: !7)
!1411 = !DILocalVariable(name: "tid", scope: !1412, file: !3, line: 507, type: !41)
!1412 = distinct !DILexicalBlock(scope: !1413, file: !3, line: 507, column: 5)
!1413 = distinct !DILexicalBlock(scope: !1414, file: !3, line: 507, column: 5)
!1414 = distinct !DILexicalBlock(scope: !1415, file: !3, line: 507, column: 5)
!1415 = distinct !DILexicalBlock(scope: !1416, file: !3, line: 507, column: 5)
!1416 = distinct !DILexicalBlock(scope: !1405, file: !3, line: 507, column: 5)
!1417 = !DILocalVariable(name: "_ret", scope: !1412, file: !3, line: 507, type: !13)
!1418 = !DILocalVariable(name: "_arg3", scope: !1412, file: !3, line: 507, type: !13)
!1419 = !DILocalVariable(name: "_arg4", scope: !1412, file: !3, line: 507, type: !13)
!1420 = !DILocalVariable(name: "_arg5", scope: !1412, file: !3, line: 507, type: !13)
!1421 = !DILocation(line: 502, column: 29, scope: !1405, inlinedAt: !1422)
!1422 = distinct !DILocation(line: 548, column: 31, scope: !1402)
!1423 = !DILocation(line: 502, column: 38, scope: !1405, inlinedAt: !1422)
!1424 = !DILocation(line: 503, column: 5, scope: !1405, inlinedAt: !1422)
!1425 = !DILocation(line: 504, column: 30, scope: !1405, inlinedAt: !1422)
!1426 = !DILocation(line: 504, column: 49, scope: !1405, inlinedAt: !1422)
!1427 = !DILocation(line: 504, column: 21, scope: !1405, inlinedAt: !1422)
!1428 = !DILocation(line: 504, column: 10, scope: !1405, inlinedAt: !1422)
!1429 = !DILocation(line: 505, column: 17, scope: !1405, inlinedAt: !1422)
!1430 = !DILocation(line: 506, column: 5, scope: !1405, inlinedAt: !1422)
!1431 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !1432)
!1432 = distinct !DILocation(line: 507, column: 5, scope: !1415, inlinedAt: !1422)
!1433 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !1432)
!1434 = !DILocation(line: 121, column: 2, scope: !237, inlinedAt: !1432)
!1435 = !DILocation(line: 507, column: 5, scope: !1415, inlinedAt: !1422)
!1436 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !1437)
!1437 = distinct !DILocation(line: 507, column: 5, scope: !1415, inlinedAt: !1422)
!1438 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !1437)
!1439 = !DILocation(line: 121, column: 2, scope: !237, inlinedAt: !1437)
!1440 = !DILocation(line: 507, column: 5, scope: !1416, inlinedAt: !1422)
!1441 = !DILocation(line: 507, column: 5, scope: !1442, inlinedAt: !1422)
!1442 = distinct !DILexicalBlock(scope: !1415, file: !3, line: 507, column: 5)
!1443 = !DILocation(line: 506, column: 9, scope: !1405, inlinedAt: !1422)
!1444 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !1445)
!1445 = distinct !DILocation(line: 49, column: 21, scope: !258, inlinedAt: !1446)
!1446 = distinct !DILocation(line: 507, column: 5, scope: !1412, inlinedAt: !1422)
!1447 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !1445)
!1448 = !DILocation(line: 121, column: 2, scope: !237, inlinedAt: !1445)
!1449 = !DILocation(line: 49, column: 16, scope: !258, inlinedAt: !1446)
!1450 = !DILocation(line: 50, column: 19, scope: !258, inlinedAt: !1446)
!1451 = !DILocation(line: 50, column: 11, scope: !258, inlinedAt: !1446)
!1452 = !DILocation(line: 50, column: 9, scope: !258, inlinedAt: !1446)
!1453 = !DILocation(line: 50, column: 2, scope: !258, inlinedAt: !1446)
!1454 = !DILocation(line: 507, column: 5, scope: !1412, inlinedAt: !1422)
!1455 = !{i32 -2146184733, i32 -2146184720, i32 -2146184695, i32 -2146184671, i32 -2146184646, i32 -2146184571, i32 -2146184546, i32 -2146184402, i32 -2146184377, i32 -2146180985, i32 -2146180896, i32 -2146180775, i32 -2146180680, i32 -2146180579, i32 -2146180552, i32 -2146180469, i32 -2146180380, i32 -2146180259, i32 -2146180159, i32 -2146180053, i32 -2146179945, i32 -2146184001, i32 -2146183948, i32 -2146183917, i32 -2146183886, i32 -2146183865, i32 -2146183843, i32 -2146183794, i32 -2146183773, i32 -2146183670, i32 -2146183638, i32 -2146179862, i32 -2146179773, i32 -2146179652, i32 -2146179553, i32 -2146179447, i32 -2146179345, i32 -2146179312, i32 -2146179239, i32 -2146179171, i32 -2146183448, i32 -2146183389, i32 -2146183336, i32 -2146183305, i32 -2146183274, i32 -2146183253, i32 -2146183231, i32 -2146183182, i32 -2146183161, i32 -2146179125, i32 -2146179036, i32 -2146178915, i32 -2146178816, i32 -2146178710, i32 -2146178608, i32 -2146178575, i32 -2146178492, i32 -2146178403, i32 -2146178282, i32 -2146178182, i32 -2146178156, i32 -2146178053, i32 -2146178027, i32 -2146182903, i32 -2146182878, i32 -2146182811, i32 -2146182786, i32 -2146182722, i32 -2146182640, i32 -2146182617, i32 -2146182592, i32 -2146182567}
!1456 = !DILocation(line: 507, column: 5, scope: !1457, inlinedAt: !1422)
!1457 = distinct !DILexicalBlock(scope: !1458, file: !3, line: 507, column: 5)
!1458 = distinct !DILexicalBlock(scope: !1412, file: !3, line: 507, column: 5)
!1459 = !{i32 -2146181483, i32 -2146181466}
!1460 = !DILocation(line: 509, column: 9, scope: !1461, inlinedAt: !1422)
!1461 = distinct !DILexicalBlock(scope: !1405, file: !3, line: 509, column: 9)
!1462 = !DILocation(line: 509, column: 13, scope: !1461, inlinedAt: !1422)
!1463 = !DILocation(line: 509, column: 9, scope: !1405, inlinedAt: !1422)
!1464 = !DILocation(line: 510, column: 54, scope: !1465, inlinedAt: !1422)
!1465 = distinct !DILexicalBlock(scope: !1461, file: !3, line: 509, column: 20)
!1466 = !DILocation(line: 510, column: 45, scope: !1465, inlinedAt: !1422)
!1467 = !DILocation(line: 510, column: 9, scope: !1465, inlinedAt: !1422)
!1468 = !DILocation(line: 511, column: 9, scope: !1465, inlinedAt: !1422)
!1469 = !DILocation(line: 515, column: 1, scope: !1405, inlinedAt: !1422)
!1470 = !DILocation(line: 548, column: 13, scope: !1285)
!1471 = !DILocation(line: 549, column: 34, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1285, file: !3, line: 549, column: 13)
!1473 = !DILocation(line: 549, column: 13, scope: !1472)
!1474 = !DILocation(line: 549, column: 37, scope: !1472)
!1475 = !DILocation(line: 549, column: 13, scope: !1285)
!1476 = !DILocation(line: 550, column: 28, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1285, file: !3, line: 550, column: 13)
!1478 = !DILocation(line: 550, column: 33, scope: !1477)
!1479 = !DILocation(line: 550, column: 44, scope: !1477)
!1480 = !DILocation(line: 550, column: 13, scope: !1477)
!1481 = !DILocation(line: 550, column: 64, scope: !1477)
!1482 = !DILocation(line: 550, column: 13, scope: !1285)
!1483 = !DILocation(line: 550, column: 79, scope: !1477)
!1484 = !DILocation(line: 550, column: 77, scope: !1477)
!1485 = !DILocation(line: 542, column: 50, scope: !1286)
!1486 = distinct !{!1486, !1364, !1487}
!1487 = !DILocation(line: 552, column: 5, scope: !1287)
!1488 = !DILocation(line: 554, column: 63, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1490, file: !3, line: 553, column: 20)
!1490 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 553, column: 9)
!1491 = !DILocation(line: 554, column: 9, scope: !1489)
!1492 = !DILocation(line: 555, column: 9, scope: !1489)
!1493 = !DILocation(line: 559, column: 9, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 559, column: 9)
!1495 = !DILocation(line: 559, column: 11, scope: !1494)
!1496 = !DILocation(line: 559, column: 9, scope: !1252)
!1497 = !DILocation(line: 559, column: 18, scope: !1494)
!1498 = !DILocation(line: 560, column: 7, scope: !1252)
!1499 = !DILocation(line: 560, column: 5, scope: !1252)
!1500 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !1501)
!1501 = distinct !DILocation(line: 562, column: 5, scope: !1294)
!1502 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !1501)
!1503 = !DILocation(line: 121, column: 2, scope: !237, inlinedAt: !1501)
!1504 = !DILocation(line: 562, column: 5, scope: !1294)
!1505 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !1506)
!1506 = distinct !DILocation(line: 562, column: 5, scope: !1294)
!1507 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !1506)
!1508 = !DILocation(line: 121, column: 2, scope: !237, inlinedAt: !1506)
!1509 = !DILocation(line: 562, column: 5, scope: !1295)
!1510 = !DILocation(line: 562, column: 5, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 562, column: 5)
!1512 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !1513)
!1513 = distinct !DILocation(line: 49, column: 21, scope: !258, inlinedAt: !1514)
!1514 = distinct !DILocation(line: 562, column: 5, scope: !1291)
!1515 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !1513)
!1516 = !DILocation(line: 121, column: 2, scope: !237, inlinedAt: !1513)
!1517 = !DILocation(line: 49, column: 16, scope: !258, inlinedAt: !1514)
!1518 = !DILocation(line: 50, column: 19, scope: !258, inlinedAt: !1514)
!1519 = !DILocation(line: 50, column: 11, scope: !258, inlinedAt: !1514)
!1520 = !DILocation(line: 50, column: 9, scope: !258, inlinedAt: !1514)
!1521 = !DILocation(line: 50, column: 2, scope: !258, inlinedAt: !1514)
!1522 = !DILocation(line: 562, column: 5, scope: !1291)
!1523 = !{i32 -2146157222, i32 -2146157209, i32 -2146157184, i32 -2146157160, i32 -2146157135, i32 -2146157060, i32 -2146157035, i32 -2146156891, i32 -2146154674, i32 -2146154585, i32 -2146154464, i32 -2146154369, i32 -2146154268, i32 -2146154241, i32 -2146154158, i32 -2146154069, i32 -2146153948, i32 -2146153848, i32 -2146153742, i32 -2146153634, i32 -2146156603, i32 -2146156550, i32 -2146156519, i32 -2146156488, i32 -2146156467, i32 -2146156445, i32 -2146156396, i32 -2146156375, i32 -2146153551, i32 -2146153462, i32 -2146153341, i32 -2146153242, i32 -2146153136, i32 -2146153034, i32 -2146153001, i32 -2146152928, i32 -2146152860, i32 -2146156001, i32 -2146155948, i32 -2146155917, i32 -2146155886, i32 -2146155865, i32 -2146155843, i32 -2146155794, i32 -2146155773, i32 -2146152812, i32 -2146152723, i32 -2146152602, i32 -2146152503, i32 -2146152397, i32 -2146152295, i32 -2146152262, i32 -2146152179, i32 -2146152090, i32 -2146151969, i32 -2146151869, i32 -2146151843, i32 -2146151740, i32 -2146151714, i32 -2146155515, i32 -2146155448, i32 -2146155423, i32 -2146155359, i32 -2146155243, i32 -2146155218, i32 -2146155193}
!1524 = !DILocation(line: 563, column: 12, scope: !1252)
!1525 = !DILocation(line: 563, column: 5, scope: !1252)
!1526 = !DILocation(line: 0, scope: !1252)
!1527 = !DILocation(line: 564, column: 1, scope: !1252)
!1528 = distinct !DISubprogram(name: "anetTcp6Server", scope: !3, file: !3, line: 571, type: !1239, isLocal: false, isDefinition: true, scopeLine: 572, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1529)
!1529 = !{!1530, !1531, !1532, !1533}
!1530 = !DILocalVariable(name: "err", arg: 1, scope: !1528, file: !3, line: 571, type: !80)
!1531 = !DILocalVariable(name: "port", arg: 2, scope: !1528, file: !3, line: 571, type: !7)
!1532 = !DILocalVariable(name: "bindaddr", arg: 3, scope: !1528, file: !3, line: 571, type: !80)
!1533 = !DILocalVariable(name: "backlog", arg: 4, scope: !1528, file: !3, line: 571, type: !7)
!1534 = !DILocation(line: 571, column: 26, scope: !1528)
!1535 = !DILocation(line: 571, column: 35, scope: !1528)
!1536 = !DILocation(line: 571, column: 47, scope: !1528)
!1537 = !DILocation(line: 571, column: 61, scope: !1528)
!1538 = !DILocation(line: 573, column: 12, scope: !1528)
!1539 = !DILocation(line: 573, column: 5, scope: !1528)
!1540 = distinct !DISubprogram(name: "anetUnixServer", scope: !3, file: !3, line: 576, type: !1541, isLocal: false, isDefinition: true, scopeLine: 577, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1545)
!1541 = !DISubroutineType(types: !1542)
!1542 = !{!7, !80, !80, !1543, !7}
!1543 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !1186, line: 205, baseType: !1544)
!1544 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !584, line: 88, baseType: !42)
!1545 = !{!1546, !1547, !1548, !1549, !1550, !1551}
!1546 = !DILocalVariable(name: "err", arg: 1, scope: !1540, file: !3, line: 576, type: !80)
!1547 = !DILocalVariable(name: "path", arg: 2, scope: !1540, file: !3, line: 576, type: !80)
!1548 = !DILocalVariable(name: "perm", arg: 3, scope: !1540, file: !3, line: 576, type: !1543)
!1549 = !DILocalVariable(name: "backlog", arg: 4, scope: !1540, file: !3, line: 576, type: !7)
!1550 = !DILocalVariable(name: "s", scope: !1540, file: !3, line: 578, type: !7)
!1551 = !DILocalVariable(name: "sa", scope: !1540, file: !3, line: 579, type: !1042)
!1552 = !DILocation(line: 576, column: 26, scope: !1540)
!1553 = !DILocation(line: 576, column: 37, scope: !1540)
!1554 = !DILocation(line: 576, column: 50, scope: !1540)
!1555 = !DILocation(line: 576, column: 60, scope: !1540)
!1556 = !DILocation(line: 579, column: 5, scope: !1540)
!1557 = !DILocation(line: 581, column: 14, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1540, file: !3, line: 581, column: 9)
!1559 = !DILocation(line: 578, column: 9, scope: !1540)
!1560 = !DILocation(line: 581, column: 46, scope: !1558)
!1561 = !DILocation(line: 581, column: 9, scope: !1540)
!1562 = !DILocation(line: 584, column: 5, scope: !1540)
!1563 = !DILocation(line: 585, column: 19, scope: !1540)
!1564 = !DILocation(line: 586, column: 13, scope: !1540)
!1565 = !DILocation(line: 586, column: 5, scope: !1540)
!1566 = !DILocation(line: 587, column: 26, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1540, file: !3, line: 587, column: 9)
!1568 = !DILocation(line: 587, column: 9, scope: !1567)
!1569 = !DILocation(line: 587, column: 68, scope: !1567)
!1570 = !DILocation(line: 587, column: 9, scope: !1540)
!1571 = !DILocation(line: 589, column: 9, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1540, file: !3, line: 589, column: 9)
!1573 = !DILocation(line: 589, column: 9, scope: !1540)
!1574 = !DILocation(line: 590, column: 9, scope: !1572)
!1575 = !DILocation(line: 0, scope: !1540)
!1576 = !DILocation(line: 592, column: 1, scope: !1540)
!1577 = distinct !DISubprogram(name: "anetListen", scope: !3, file: !3, line: 483, type: !1578, isLocal: true, isDefinition: true, scopeLine: 483, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1580)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!7, !80, !7, !71, !90, !7}
!1580 = !{!1581, !1582, !1583, !1584, !1585, !1586, !1587, !1593, !1594, !1595, !1601}
!1581 = !DILocalVariable(name: "err", arg: 1, scope: !1577, file: !3, line: 483, type: !80)
!1582 = !DILocalVariable(name: "s", arg: 2, scope: !1577, file: !3, line: 483, type: !7)
!1583 = !DILocalVariable(name: "sa", arg: 3, scope: !1577, file: !3, line: 483, type: !71)
!1584 = !DILocalVariable(name: "len", arg: 4, scope: !1577, file: !3, line: 483, type: !90)
!1585 = !DILocalVariable(name: "backlog", arg: 5, scope: !1577, file: !3, line: 483, type: !7)
!1586 = !DILocalVariable(name: "ret", scope: !1577, file: !3, line: 484, type: !7)
!1587 = !DILocalVariable(name: "tid", scope: !1588, file: !3, line: 486, type: !41)
!1588 = distinct !DILexicalBlock(scope: !1589, file: !3, line: 486, column: 5)
!1589 = distinct !DILexicalBlock(scope: !1590, file: !3, line: 486, column: 5)
!1590 = distinct !DILexicalBlock(scope: !1591, file: !3, line: 486, column: 5)
!1591 = distinct !DILexicalBlock(scope: !1592, file: !3, line: 486, column: 5)
!1592 = distinct !DILexicalBlock(scope: !1577, file: !3, line: 486, column: 5)
!1593 = !DILocalVariable(name: "_ret", scope: !1588, file: !3, line: 486, type: !13)
!1594 = !DILocalVariable(name: "_arg3", scope: !1588, file: !3, line: 486, type: !13)
!1595 = !DILocalVariable(name: "tid", scope: !1596, file: !3, line: 493, type: !41)
!1596 = distinct !DILexicalBlock(scope: !1597, file: !3, line: 493, column: 5)
!1597 = distinct !DILexicalBlock(scope: !1598, file: !3, line: 493, column: 5)
!1598 = distinct !DILexicalBlock(scope: !1599, file: !3, line: 493, column: 5)
!1599 = distinct !DILexicalBlock(scope: !1600, file: !3, line: 493, column: 5)
!1600 = distinct !DILexicalBlock(scope: !1577, file: !3, line: 493, column: 5)
!1601 = !DILocalVariable(name: "_ret", scope: !1596, file: !3, line: 493, type: !13)
!1602 = !DILocation(line: 483, column: 29, scope: !1577)
!1603 = !DILocation(line: 483, column: 38, scope: !1577)
!1604 = !DILocation(line: 483, column: 58, scope: !1577)
!1605 = !DILocation(line: 483, column: 72, scope: !1577)
!1606 = !DILocation(line: 483, column: 81, scope: !1577)
!1607 = !DILocation(line: 484, column: 5, scope: !1577)
!1608 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !1609)
!1609 = distinct !DILocation(line: 486, column: 5, scope: !1591)
!1610 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !1609)
!1611 = !DILocation(line: 121, column: 2, scope: !237, inlinedAt: !1609)
!1612 = !DILocation(line: 486, column: 5, scope: !1591)
!1613 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !1614)
!1614 = distinct !DILocation(line: 486, column: 5, scope: !1591)
!1615 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !1614)
!1616 = !DILocation(line: 121, column: 2, scope: !237, inlinedAt: !1614)
!1617 = !DILocation(line: 486, column: 5, scope: !1592)
!1618 = !DILocation(line: 486, column: 5, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1591, file: !3, line: 486, column: 5)
!1620 = !DILocation(line: 484, column: 9, scope: !1577)
!1621 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !1622)
!1622 = distinct !DILocation(line: 49, column: 21, scope: !258, inlinedAt: !1623)
!1623 = distinct !DILocation(line: 486, column: 5, scope: !1588)
!1624 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !1622)
!1625 = !DILocation(line: 121, column: 2, scope: !237, inlinedAt: !1622)
!1626 = !DILocation(line: 49, column: 16, scope: !258, inlinedAt: !1623)
!1627 = !DILocation(line: 50, column: 19, scope: !258, inlinedAt: !1623)
!1628 = !DILocation(line: 50, column: 11, scope: !258, inlinedAt: !1623)
!1629 = !DILocation(line: 50, column: 9, scope: !258, inlinedAt: !1623)
!1630 = !DILocation(line: 50, column: 2, scope: !258, inlinedAt: !1623)
!1631 = !DILocation(line: 486, column: 5, scope: !1588)
!1632 = !{i32 -2146206434, i32 -2146206421, i32 -2146206396, i32 -2146206372, i32 -2146206347, i32 -2146206272, i32 -2146206247, i32 -2146206103, i32 -2146202910, i32 -2146202821, i32 -2146202700, i32 -2146202605, i32 -2146202504, i32 -2146202477, i32 -2146202394, i32 -2146202305, i32 -2146202184, i32 -2146202084, i32 -2146201978, i32 -2146201870, i32 -2146205773, i32 -2146205720, i32 -2146205689, i32 -2146205658, i32 -2146205637, i32 -2146205615, i32 -2146205566, i32 -2146205545, i32 -2146205442, i32 -2146201787, i32 -2146201698, i32 -2146201577, i32 -2146201478, i32 -2146201372, i32 -2146201270, i32 -2146201237, i32 -2146201164, i32 -2146201096, i32 -2146205252, i32 -2146205193, i32 -2146205140, i32 -2146205109, i32 -2146205078, i32 -2146205057, i32 -2146205035, i32 -2146204986, i32 -2146204965, i32 -2146201056, i32 -2146200967, i32 -2146200846, i32 -2146200747, i32 -2146200641, i32 -2146200539, i32 -2146200506, i32 -2146200423, i32 -2146200334, i32 -2146200213, i32 -2146200113, i32 -2146200087, i32 -2146199984, i32 -2146199958, i32 -2146204707, i32 -2146204640, i32 -2146204615, i32 -2146204551, i32 -2146204469, i32 -2146204446, i32 -2146204421, i32 -2146204396}
!1633 = !DILocation(line: 486, column: 5, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !3, line: 486, column: 5)
!1635 = distinct !DILexicalBlock(scope: !1588, file: !3, line: 486, column: 5)
!1636 = !{i32 -2146203358, i32 -2146203341}
!1637 = !DILocation(line: 487, column: 9, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1577, file: !3, line: 487, column: 9)
!1639 = !DILocation(line: 487, column: 13, scope: !1638)
!1640 = !DILocation(line: 487, column: 9, scope: !1577)
!1641 = !DILocation(line: 488, column: 48, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1638, file: !3, line: 487, column: 20)
!1643 = !DILocation(line: 488, column: 39, scope: !1642)
!1644 = !DILocation(line: 488, column: 9, scope: !1642)
!1645 = !DILocation(line: 489, column: 9, scope: !1642)
!1646 = !DILocation(line: 490, column: 9, scope: !1642)
!1647 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !1648)
!1648 = distinct !DILocation(line: 493, column: 5, scope: !1599)
!1649 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !1648)
!1650 = !DILocation(line: 121, column: 2, scope: !237, inlinedAt: !1648)
!1651 = !DILocation(line: 493, column: 5, scope: !1599)
!1652 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !1653)
!1653 = distinct !DILocation(line: 493, column: 5, scope: !1599)
!1654 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !1653)
!1655 = !DILocation(line: 121, column: 2, scope: !237, inlinedAt: !1653)
!1656 = !DILocation(line: 493, column: 5, scope: !1600)
!1657 = !DILocation(line: 493, column: 5, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1599, file: !3, line: 493, column: 5)
!1659 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !1660)
!1660 = distinct !DILocation(line: 49, column: 21, scope: !258, inlinedAt: !1661)
!1661 = distinct !DILocation(line: 493, column: 5, scope: !1596)
!1662 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !1660)
!1663 = !DILocation(line: 121, column: 2, scope: !237, inlinedAt: !1660)
!1664 = !DILocation(line: 49, column: 16, scope: !258, inlinedAt: !1661)
!1665 = !DILocation(line: 50, column: 19, scope: !258, inlinedAt: !1661)
!1666 = !DILocation(line: 50, column: 11, scope: !258, inlinedAt: !1661)
!1667 = !DILocation(line: 50, column: 9, scope: !258, inlinedAt: !1661)
!1668 = !DILocation(line: 50, column: 2, scope: !258, inlinedAt: !1661)
!1669 = !DILocation(line: 493, column: 5, scope: !1596)
!1670 = !{i32 -2146193915, i32 -2146193902, i32 -2146193877, i32 -2146193853, i32 -2146193828, i32 -2146193753, i32 -2146193728, i32 -2146193584, i32 -2146190433, i32 -2146190344, i32 -2146190223, i32 -2146190128, i32 -2146190027, i32 -2146190000, i32 -2146189917, i32 -2146189828, i32 -2146189707, i32 -2146189607, i32 -2146189501, i32 -2146189393, i32 -2146193292, i32 -2146193239, i32 -2146193208, i32 -2146193177, i32 -2146193156, i32 -2146193134, i32 -2146193085, i32 -2146193064, i32 -2146189310, i32 -2146189221, i32 -2146189100, i32 -2146189001, i32 -2146188895, i32 -2146188793, i32 -2146188760, i32 -2146188687, i32 -2146188619, i32 -2146192757, i32 -2146192698, i32 -2146192645, i32 -2146192614, i32 -2146192583, i32 -2146192562, i32 -2146192540, i32 -2146192491, i32 -2146192470, i32 -2146188577, i32 -2146188488, i32 -2146188367, i32 -2146188268, i32 -2146188162, i32 -2146188060, i32 -2146188027, i32 -2146187944, i32 -2146187855, i32 -2146187734, i32 -2146187634, i32 -2146187608, i32 -2146187505, i32 -2146187479, i32 -2146192212, i32 -2146192145, i32 -2146192120, i32 -2146192056, i32 -2146191974, i32 -2146191951, i32 -2146191926, i32 -2146191901}
!1671 = !DILocation(line: 493, column: 5, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1673, file: !3, line: 493, column: 5)
!1673 = distinct !DILexicalBlock(scope: !1596, file: !3, line: 493, column: 5)
!1674 = !{i32 -2146190886, i32 -2146190869}
!1675 = !DILocation(line: 494, column: 9, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1577, file: !3, line: 494, column: 9)
!1677 = !DILocation(line: 494, column: 13, scope: !1676)
!1678 = !DILocation(line: 494, column: 9, scope: !1577)
!1679 = !DILocation(line: 495, column: 50, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1676, file: !3, line: 494, column: 20)
!1681 = !DILocation(line: 495, column: 41, scope: !1680)
!1682 = !DILocation(line: 495, column: 9, scope: !1680)
!1683 = !DILocation(line: 496, column: 9, scope: !1680)
!1684 = !DILocation(line: 497, column: 9, scope: !1680)
!1685 = !DILocation(line: 0, scope: !1577)
!1686 = !DILocation(line: 500, column: 1, scope: !1577)
!1687 = distinct !DISubprogram(name: "anetTcpAccept", scope: !3, file: !3, line: 613, type: !1688, isLocal: false, isDefinition: true, scopeLine: 613, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1690)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{!7, !80, !7, !80, !581, !6}
!1690 = !{!1691, !1692, !1693, !1694, !1695, !1696, !1697, !1700}
!1691 = !DILocalVariable(name: "err", arg: 1, scope: !1687, file: !3, line: 613, type: !80)
!1692 = !DILocalVariable(name: "s", arg: 2, scope: !1687, file: !3, line: 613, type: !7)
!1693 = !DILocalVariable(name: "ip", arg: 3, scope: !1687, file: !3, line: 613, type: !80)
!1694 = !DILocalVariable(name: "ip_len", arg: 4, scope: !1687, file: !3, line: 613, type: !581)
!1695 = !DILocalVariable(name: "port", arg: 5, scope: !1687, file: !3, line: 613, type: !6)
!1696 = !DILocalVariable(name: "fd", scope: !1687, file: !3, line: 614, type: !7)
!1697 = !DILocalVariable(name: "s", scope: !1698, file: !3, line: 619, type: !16)
!1698 = distinct !DILexicalBlock(scope: !1699, file: !3, line: 618, column: 34)
!1699 = distinct !DILexicalBlock(scope: !1687, file: !3, line: 618, column: 9)
!1700 = !DILocalVariable(name: "s", scope: !1701, file: !3, line: 623, type: !49)
!1701 = distinct !DILexicalBlock(scope: !1699, file: !3, line: 622, column: 12)
!1702 = !DILocation(line: 613, column: 25, scope: !1687)
!1703 = !DILocation(line: 613, column: 34, scope: !1687)
!1704 = !DILocation(line: 613, column: 43, scope: !1687)
!1705 = !DILocation(line: 613, column: 54, scope: !1687)
!1706 = !DILocation(line: 613, column: 67, scope: !1687)
!1707 = !DILocation(line: 615, column: 15, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1687, file: !3, line: 615, column: 9)
!1709 = !DILocation(line: 614, column: 9, scope: !1687)
!1710 = !DILocation(line: 615, column: 70, scope: !1708)
!1711 = !DILocation(line: 615, column: 9, scope: !1687)
!1712 = !DILocation(line: 618, column: 12, scope: !1699)
!1713 = !{!1714, !135, i64 1}
!1714 = !{!"sockaddr_storage", !135, i64 0, !135, i64 1, !135, i64 2, !135, i64 4, !135, i64 16}
!1715 = !DILocation(line: 618, column: 22, scope: !1699)
!1716 = !DILocation(line: 0, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1701, file: !3, line: 624, column: 13)
!1718 = !DILocation(line: 618, column: 9, scope: !1687)
!1719 = !DILocation(line: 620, column: 13, scope: !1698)
!1720 = !DILocation(line: 620, column: 60, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1698, file: !3, line: 620, column: 13)
!1722 = !DILocation(line: 620, column: 17, scope: !1721)
!1723 = !DILocation(line: 621, column: 13, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1698, file: !3, line: 621, column: 13)
!1725 = !DILocation(line: 621, column: 13, scope: !1698)
!1726 = !DILocation(line: 621, column: 27, scope: !1724)
!1727 = !{!1728, !1729, i64 2}
!1728 = !{!"sockaddr_in", !135, i64 0, !135, i64 1, !1729, i64 2, !1730, i64 4, !135, i64 8}
!1729 = !{!"short", !135, i64 0}
!1730 = !{!"in_addr", !134, i64 0}
!1731 = !DILocation(line: 621, column: 25, scope: !1724)
!1732 = !DILocation(line: 621, column: 19, scope: !1724)
!1733 = !DILocation(line: 624, column: 13, scope: !1701)
!1734 = !DILocation(line: 624, column: 62, scope: !1717)
!1735 = !DILocation(line: 624, column: 17, scope: !1717)
!1736 = !DILocation(line: 625, column: 13, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1701, file: !3, line: 625, column: 13)
!1738 = !DILocation(line: 625, column: 13, scope: !1701)
!1739 = !DILocation(line: 625, column: 27, scope: !1737)
!1740 = !{!1741, !1729, i64 2}
!1741 = !{!"sockaddr_in6", !135, i64 0, !135, i64 1, !1729, i64 2, !134, i64 4, !1742, i64 8, !134, i64 24}
!1742 = !{!"in6_addr", !135, i64 0}
!1743 = !DILocation(line: 625, column: 25, scope: !1737)
!1744 = !DILocation(line: 625, column: 19, scope: !1737)
!1745 = !DILocation(line: 628, column: 1, scope: !1687)
!1746 = distinct !DISubprogram(name: "anetGenericAccept", scope: !3, file: !3, line: 594, type: !1747, isLocal: true, isDefinition: true, scopeLine: 594, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1750)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!7, !80, !7, !71, !1749}
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!1750 = !{!1751, !1752, !1753, !1754, !1755, !1756, !1763, !1764}
!1751 = !DILocalVariable(name: "err", arg: 1, scope: !1746, file: !3, line: 594, type: !80)
!1752 = !DILocalVariable(name: "s", arg: 2, scope: !1746, file: !3, line: 594, type: !7)
!1753 = !DILocalVariable(name: "sa", arg: 3, scope: !1746, file: !3, line: 594, type: !71)
!1754 = !DILocalVariable(name: "len", arg: 4, scope: !1746, file: !3, line: 594, type: !1749)
!1755 = !DILocalVariable(name: "fd", scope: !1746, file: !3, line: 595, type: !7)
!1756 = !DILocalVariable(name: "tid", scope: !1757, file: !3, line: 597, type: !41)
!1757 = distinct !DILexicalBlock(scope: !1758, file: !3, line: 597, column: 2)
!1758 = distinct !DILexicalBlock(scope: !1759, file: !3, line: 597, column: 2)
!1759 = distinct !DILexicalBlock(scope: !1760, file: !3, line: 597, column: 2)
!1760 = distinct !DILexicalBlock(scope: !1761, file: !3, line: 597, column: 2)
!1761 = distinct !DILexicalBlock(scope: !1762, file: !3, line: 597, column: 2)
!1762 = distinct !DILexicalBlock(scope: !1746, file: !3, line: 596, column: 14)
!1763 = !DILocalVariable(name: "_ret", scope: !1757, file: !3, line: 597, type: !13)
!1764 = !DILocalVariable(name: "_arg3", scope: !1757, file: !3, line: 597, type: !13)
!1765 = !DILocation(line: 594, column: 36, scope: !1746)
!1766 = !DILocation(line: 594, column: 45, scope: !1746)
!1767 = !DILocation(line: 594, column: 65, scope: !1746)
!1768 = !DILocation(line: 594, column: 80, scope: !1746)
!1769 = !DILocation(line: 595, column: 5, scope: !1746)
!1770 = !DILocation(line: 596, column: 5, scope: !1746)
!1771 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !1772)
!1772 = distinct !DILocation(line: 597, column: 2, scope: !1760)
!1773 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !1772)
!1774 = !DILocation(line: 121, column: 2, scope: !237, inlinedAt: !1772)
!1775 = !DILocation(line: 597, column: 2, scope: !1760)
!1776 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !1777)
!1777 = distinct !DILocation(line: 597, column: 2, scope: !1760)
!1778 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !1777)
!1779 = !DILocation(line: 121, column: 2, scope: !237, inlinedAt: !1777)
!1780 = !DILocation(line: 597, column: 2, scope: !1761)
!1781 = !DILocation(line: 597, column: 2, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1760, file: !3, line: 597, column: 2)
!1783 = !DILocation(line: 595, column: 9, scope: !1746)
!1784 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !1785)
!1785 = distinct !DILocation(line: 49, column: 21, scope: !258, inlinedAt: !1786)
!1786 = distinct !DILocation(line: 597, column: 2, scope: !1757)
!1787 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !1785)
!1788 = !DILocation(line: 121, column: 2, scope: !237, inlinedAt: !1785)
!1789 = !DILocation(line: 49, column: 16, scope: !258, inlinedAt: !1786)
!1790 = !DILocation(line: 50, column: 19, scope: !258, inlinedAt: !1786)
!1791 = !DILocation(line: 50, column: 11, scope: !258, inlinedAt: !1786)
!1792 = !DILocation(line: 50, column: 9, scope: !258, inlinedAt: !1786)
!1793 = !DILocation(line: 50, column: 2, scope: !258, inlinedAt: !1786)
!1794 = !DILocation(line: 597, column: 2, scope: !1757)
!1795 = !{i32 -2146149561, i32 -2146149548, i32 -2146149523, i32 -2146149499, i32 -2146149474, i32 -2146149399, i32 -2146149374, i32 -2146149230, i32 -2146146041, i32 -2146145952, i32 -2146145831, i32 -2146145736, i32 -2146145635, i32 -2146145608, i32 -2146145525, i32 -2146145436, i32 -2146145315, i32 -2146145215, i32 -2146145109, i32 -2146145001, i32 -2146148900, i32 -2146148847, i32 -2146148816, i32 -2146148785, i32 -2146148764, i32 -2146148742, i32 -2146148693, i32 -2146148672, i32 -2146148569, i32 -2146144918, i32 -2146144829, i32 -2146144708, i32 -2146144609, i32 -2146144503, i32 -2146144401, i32 -2146144368, i32 -2146144295, i32 -2146144227, i32 -2146148379, i32 -2146148320, i32 -2146148267, i32 -2146148236, i32 -2146148205, i32 -2146148184, i32 -2146148162, i32 -2146148113, i32 -2146148092, i32 -2146144185, i32 -2146144096, i32 -2146143975, i32 -2146143876, i32 -2146143770, i32 -2146143668, i32 -2146143635, i32 -2146143552, i32 -2146143463, i32 -2146143342, i32 -2146143242, i32 -2146143216, i32 -2146143113, i32 -2146143087, i32 -2146147834, i32 -2146147767, i32 -2146147742, i32 -2146147678, i32 -2146147596, i32 -2146147573, i32 -2146147548, i32 -2146147523}
!1796 = !DILocation(line: 597, column: 2, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1798, file: !3, line: 597, column: 2)
!1798 = distinct !DILexicalBlock(scope: !1757, file: !3, line: 597, column: 2)
!1799 = !{i32 -2146146485, i32 -2146146468}
!1800 = !DILocation(line: 598, column: 13, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1762, file: !3, line: 598, column: 13)
!1802 = !DILocation(line: 598, column: 16, scope: !1801)
!1803 = !DILocation(line: 598, column: 13, scope: !1762)
!1804 = !DILocation(line: 599, column: 17, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !3, line: 599, column: 17)
!1806 = distinct !DILexicalBlock(scope: !1801, file: !3, line: 598, column: 23)
!1807 = !DILocation(line: 599, column: 23, scope: !1805)
!1808 = !DILocation(line: 599, column: 17, scope: !1806)
!1809 = distinct !{!1809, !1770, !1810}
!1810 = !DILocation(line: 607, column: 5, scope: !1746)
!1811 = !DILocation(line: 602, column: 58, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1805, file: !3, line: 601, column: 18)
!1813 = !DILocation(line: 602, column: 49, scope: !1812)
!1814 = !DILocation(line: 602, column: 17, scope: !1812)
!1815 = !DILocation(line: 603, column: 17, scope: !1812)
!1816 = !DILocation(line: 609, column: 1, scope: !1746)
!1817 = distinct !DISubprogram(name: "anetUnixAccept", scope: !3, file: !3, line: 630, type: !191, isLocal: false, isDefinition: true, scopeLine: 630, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1818)
!1818 = !{!1819, !1820, !1821, !1822, !1823}
!1819 = !DILocalVariable(name: "err", arg: 1, scope: !1817, file: !3, line: 630, type: !80)
!1820 = !DILocalVariable(name: "s", arg: 2, scope: !1817, file: !3, line: 630, type: !7)
!1821 = !DILocalVariable(name: "fd", scope: !1817, file: !3, line: 631, type: !7)
!1822 = !DILocalVariable(name: "sa", scope: !1817, file: !3, line: 632, type: !1042)
!1823 = !DILocalVariable(name: "salen", scope: !1817, file: !3, line: 633, type: !90)
!1824 = !DILocation(line: 630, column: 26, scope: !1817)
!1825 = !DILocation(line: 630, column: 35, scope: !1817)
!1826 = !DILocation(line: 632, column: 5, scope: !1817)
!1827 = !DILocation(line: 633, column: 5, scope: !1817)
!1828 = !DILocation(line: 633, column: 15, scope: !1817)
!1829 = !DILocation(line: 634, column: 39, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1817, file: !3, line: 634, column: 9)
!1831 = !DILocation(line: 634, column: 15, scope: !1830)
!1832 = !DILocation(line: 631, column: 9, scope: !1817)
!1833 = !DILocation(line: 638, column: 1, scope: !1817)
!1834 = distinct !DISubprogram(name: "anetPeerToString", scope: !3, file: !3, line: 640, type: !1835, isLocal: false, isDefinition: true, scopeLine: 640, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1837)
!1835 = !DISubroutineType(types: !1836)
!1836 = !{!7, !7, !80, !581, !6}
!1837 = !{!1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1851, !1852, !1853, !1856}
!1838 = !DILocalVariable(name: "fd", arg: 1, scope: !1834, file: !3, line: 640, type: !7)
!1839 = !DILocalVariable(name: "ip", arg: 2, scope: !1834, file: !3, line: 640, type: !80)
!1840 = !DILocalVariable(name: "ip_len", arg: 3, scope: !1834, file: !3, line: 640, type: !581)
!1841 = !DILocalVariable(name: "port", arg: 4, scope: !1834, file: !3, line: 640, type: !6)
!1842 = !DILocalVariable(name: "sa", scope: !1834, file: !3, line: 641, type: !98)
!1843 = !DILocalVariable(name: "salen", scope: !1834, file: !3, line: 642, type: !90)
!1844 = !DILocalVariable(name: "ret", scope: !1834, file: !3, line: 643, type: !7)
!1845 = !DILocalVariable(name: "tid", scope: !1846, file: !3, line: 644, type: !41)
!1846 = distinct !DILexicalBlock(scope: !1847, file: !3, line: 644, column: 5)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !3, line: 644, column: 5)
!1848 = distinct !DILexicalBlock(scope: !1849, file: !3, line: 644, column: 5)
!1849 = distinct !DILexicalBlock(scope: !1850, file: !3, line: 644, column: 5)
!1850 = distinct !DILexicalBlock(scope: !1834, file: !3, line: 644, column: 5)
!1851 = !DILocalVariable(name: "_ret", scope: !1846, file: !3, line: 644, type: !13)
!1852 = !DILocalVariable(name: "_arg3", scope: !1846, file: !3, line: 644, type: !13)
!1853 = !DILocalVariable(name: "s", scope: !1854, file: !3, line: 651, type: !16)
!1854 = distinct !DILexicalBlock(scope: !1855, file: !3, line: 650, column: 34)
!1855 = distinct !DILexicalBlock(scope: !1834, file: !3, line: 650, column: 9)
!1856 = !DILocalVariable(name: "s", scope: !1857, file: !3, line: 655, type: !49)
!1857 = distinct !DILexicalBlock(scope: !1858, file: !3, line: 654, column: 42)
!1858 = distinct !DILexicalBlock(scope: !1855, file: !3, line: 654, column: 16)
!1859 = !DILocation(line: 640, column: 26, scope: !1834)
!1860 = !DILocation(line: 640, column: 36, scope: !1834)
!1861 = !DILocation(line: 640, column: 47, scope: !1834)
!1862 = !DILocation(line: 640, column: 60, scope: !1834)
!1863 = !DILocation(line: 641, column: 5, scope: !1834)
!1864 = !DILocation(line: 642, column: 5, scope: !1834)
!1865 = !DILocation(line: 642, column: 15, scope: !1834)
!1866 = !DILocation(line: 643, column: 5, scope: !1834)
!1867 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !1868)
!1868 = distinct !DILocation(line: 644, column: 5, scope: !1849)
!1869 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !1868)
!1870 = !DILocation(line: 121, column: 2, scope: !237, inlinedAt: !1868)
!1871 = !DILocation(line: 644, column: 5, scope: !1849)
!1872 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !1873)
!1873 = distinct !DILocation(line: 644, column: 5, scope: !1849)
!1874 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !1873)
!1875 = !DILocation(line: 121, column: 2, scope: !237, inlinedAt: !1873)
!1876 = !DILocation(line: 644, column: 5, scope: !1850)
!1877 = !DILocation(line: 644, column: 5, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1849, file: !3, line: 644, column: 5)
!1879 = !DILocation(line: 643, column: 9, scope: !1834)
!1880 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !1881)
!1881 = distinct !DILocation(line: 49, column: 21, scope: !258, inlinedAt: !1882)
!1882 = distinct !DILocation(line: 644, column: 5, scope: !1846)
!1883 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !1881)
!1884 = !DILocation(line: 121, column: 2, scope: !237, inlinedAt: !1881)
!1885 = !DILocation(line: 49, column: 16, scope: !258, inlinedAt: !1882)
!1886 = !DILocation(line: 50, column: 19, scope: !258, inlinedAt: !1882)
!1887 = !DILocation(line: 50, column: 11, scope: !258, inlinedAt: !1882)
!1888 = !DILocation(line: 50, column: 9, scope: !258, inlinedAt: !1882)
!1889 = !DILocation(line: 50, column: 2, scope: !258, inlinedAt: !1882)
!1890 = !DILocation(line: 644, column: 5, scope: !1846)
!1891 = !{i32 -2146140394, i32 -2146140381, i32 -2146140356, i32 -2146140332, i32 -2146140307, i32 -2146140232, i32 -2146140207, i32 -2146140063, i32 -2146136832, i32 -2146136743, i32 -2146136622, i32 -2146136527, i32 -2146136426, i32 -2146136399, i32 -2146136316, i32 -2146136227, i32 -2146136106, i32 -2146136006, i32 -2146135900, i32 -2146135792, i32 -2146139733, i32 -2146139680, i32 -2146139649, i32 -2146139618, i32 -2146139597, i32 -2146139575, i32 -2146139526, i32 -2146139505, i32 -2146139402, i32 -2146135709, i32 -2146135620, i32 -2146135499, i32 -2146135400, i32 -2146135294, i32 -2146135192, i32 -2146135159, i32 -2146135086, i32 -2146135018, i32 -2146139212, i32 -2146139153, i32 -2146139100, i32 -2146139069, i32 -2146139038, i32 -2146139017, i32 -2146138995, i32 -2146138946, i32 -2146138925, i32 -2146134971, i32 -2146134882, i32 -2146134761, i32 -2146134662, i32 -2146134556, i32 -2146134454, i32 -2146134421, i32 -2146134338, i32 -2146134249, i32 -2146134128, i32 -2146134028, i32 -2146134002, i32 -2146133899, i32 -2146133873, i32 -2146138667, i32 -2146138600, i32 -2146138575, i32 -2146138511, i32 -2146138429, i32 -2146138406, i32 -2146138381, i32 -2146138356}
!1892 = !DILocation(line: 644, column: 5, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1894, file: !3, line: 644, column: 5)
!1894 = distinct !DILexicalBlock(scope: !1846, file: !3, line: 644, column: 5)
!1895 = !{i32 -2146137318, i32 -2146137301}
!1896 = !DILocation(line: 647, column: 9, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1834, file: !3, line: 647, column: 9)
!1898 = !DILocation(line: 647, column: 13, scope: !1897)
!1899 = !DILocation(line: 648, column: 16, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1834, file: !3, line: 648, column: 9)
!1901 = !DILocation(line: 647, column: 9, scope: !1834)
!1902 = !DILocation(line: 650, column: 12, scope: !1855)
!1903 = !DILocation(line: 650, column: 9, scope: !1834)
!1904 = !DILocation(line: 652, column: 13, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1854, file: !3, line: 652, column: 13)
!1906 = !DILocation(line: 652, column: 13, scope: !1854)
!1907 = !DILocation(line: 651, column: 29, scope: !1854)
!1908 = !DILocation(line: 652, column: 47, scope: !1905)
!1909 = !DILocation(line: 652, column: 35, scope: !1905)
!1910 = !DILocation(line: 652, column: 60, scope: !1905)
!1911 = !DILocation(line: 652, column: 17, scope: !1905)
!1912 = !DILocation(line: 653, column: 13, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1854, file: !3, line: 653, column: 13)
!1914 = !DILocation(line: 653, column: 13, scope: !1854)
!1915 = !DILocation(line: 653, column: 27, scope: !1913)
!1916 = !DILocation(line: 653, column: 25, scope: !1913)
!1917 = !DILocation(line: 653, column: 19, scope: !1913)
!1918 = !DILocation(line: 656, column: 13, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1857, file: !3, line: 656, column: 13)
!1920 = !DILocation(line: 656, column: 13, scope: !1857)
!1921 = !DILocation(line: 655, column: 30, scope: !1857)
!1922 = !DILocation(line: 656, column: 48, scope: !1919)
!1923 = !DILocation(line: 656, column: 36, scope: !1919)
!1924 = !DILocation(line: 656, column: 62, scope: !1919)
!1925 = !DILocation(line: 656, column: 17, scope: !1919)
!1926 = !DILocation(line: 657, column: 13, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1857, file: !3, line: 657, column: 13)
!1928 = !DILocation(line: 657, column: 13, scope: !1857)
!1929 = !DILocation(line: 657, column: 27, scope: !1927)
!1930 = !DILocation(line: 657, column: 25, scope: !1927)
!1931 = !DILocation(line: 657, column: 19, scope: !1927)
!1932 = !DILocation(line: 659, column: 13, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1934, file: !3, line: 659, column: 13)
!1934 = distinct !DILexicalBlock(scope: !1935, file: !3, line: 658, column: 41)
!1935 = distinct !DILexicalBlock(scope: !1858, file: !3, line: 658, column: 16)
!1936 = !DILocation(line: 659, column: 13, scope: !1934)
!1937 = !DILocation(line: 659, column: 17, scope: !1933)
!1938 = !DILocation(line: 660, column: 13, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1934, file: !3, line: 660, column: 13)
!1940 = !DILocation(line: 660, column: 13, scope: !1934)
!1941 = !DILocation(line: 660, column: 25, scope: !1939)
!1942 = !DILocation(line: 660, column: 19, scope: !1939)
!1943 = !DILocation(line: 667, column: 9, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1834, file: !3, line: 667, column: 9)
!1945 = !DILocation(line: 667, column: 9, scope: !1834)
!1946 = !DILocation(line: 668, column: 20, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1948, file: !3, line: 668, column: 13)
!1948 = distinct !DILexicalBlock(scope: !1944, file: !3, line: 667, column: 13)
!1949 = !DILocation(line: 668, column: 13, scope: !1948)
!1950 = !DILocation(line: 669, column: 19, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1947, file: !3, line: 668, column: 26)
!1952 = !{!135, !135, i64 0}
!1953 = !DILocation(line: 670, column: 13, scope: !1951)
!1954 = !DILocation(line: 670, column: 19, scope: !1951)
!1955 = !DILocation(line: 671, column: 9, scope: !1951)
!1956 = !DILocation(line: 671, column: 27, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1947, file: !3, line: 671, column: 20)
!1958 = !DILocation(line: 671, column: 20, scope: !1947)
!1959 = !DILocation(line: 672, column: 19, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1957, file: !3, line: 671, column: 33)
!1961 = !DILocation(line: 673, column: 9, scope: !1960)
!1962 = !DILocation(line: 675, column: 9, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1834, file: !3, line: 675, column: 9)
!1964 = !DILocation(line: 675, column: 9, scope: !1834)
!1965 = !DILocation(line: 675, column: 21, scope: !1963)
!1966 = !DILocation(line: 675, column: 15, scope: !1963)
!1967 = !DILocation(line: 0, scope: !1834)
!1968 = !DILocation(line: 677, column: 1, scope: !1834)
!1969 = distinct !DISubprogram(name: "anetFormatAddr", scope: !3, file: !3, line: 682, type: !1970, isLocal: false, isDefinition: true, scopeLine: 682, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1972)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{!7, !80, !581, !80, !7}
!1972 = !{!1973, !1974, !1975, !1976}
!1973 = !DILocalVariable(name: "buf", arg: 1, scope: !1969, file: !3, line: 682, type: !80)
!1974 = !DILocalVariable(name: "buf_len", arg: 2, scope: !1969, file: !3, line: 682, type: !581)
!1975 = !DILocalVariable(name: "ip", arg: 3, scope: !1969, file: !3, line: 682, type: !80)
!1976 = !DILocalVariable(name: "port", arg: 4, scope: !1969, file: !3, line: 682, type: !7)
!1977 = !DILocation(line: 682, column: 26, scope: !1969)
!1978 = !DILocation(line: 682, column: 38, scope: !1969)
!1979 = !DILocation(line: 682, column: 53, scope: !1969)
!1980 = !DILocation(line: 682, column: 61, scope: !1969)
!1981 = !DILocation(line: 683, column: 34, scope: !1969)
!1982 = !DILocation(line: 683, column: 12, scope: !1969)
!1983 = !DILocation(line: 683, column: 5, scope: !1969)
!1984 = distinct !DISubprogram(name: "anetFormatPeer", scope: !3, file: !3, line: 688, type: !1985, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1987)
!1985 = !DISubroutineType(types: !1986)
!1986 = !{!7, !7, !80, !581}
!1987 = !{!1988, !1989, !1990, !1991, !1995}
!1988 = !DILocalVariable(name: "fd", arg: 1, scope: !1984, file: !3, line: 688, type: !7)
!1989 = !DILocalVariable(name: "buf", arg: 2, scope: !1984, file: !3, line: 688, type: !80)
!1990 = !DILocalVariable(name: "buf_len", arg: 3, scope: !1984, file: !3, line: 688, type: !581)
!1991 = !DILocalVariable(name: "ip", scope: !1984, file: !3, line: 689, type: !1992)
!1992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 368, elements: !1993)
!1993 = !{!1994}
!1994 = !DISubrange(count: 46)
!1995 = !DILocalVariable(name: "port", scope: !1984, file: !3, line: 690, type: !7)
!1996 = !DILocation(line: 688, column: 24, scope: !1984)
!1997 = !DILocation(line: 688, column: 34, scope: !1984)
!1998 = !DILocation(line: 688, column: 46, scope: !1984)
!1999 = !DILocation(line: 689, column: 5, scope: !1984)
!2000 = !DILocation(line: 689, column: 10, scope: !1984)
!2001 = !DILocation(line: 690, column: 5, scope: !1984)
!2002 = !DILocation(line: 690, column: 9, scope: !1984)
!2003 = !DILocation(line: 692, column: 5, scope: !1984)
!2004 = !DILocation(line: 693, column: 45, scope: !1984)
!2005 = !DILocation(line: 682, column: 26, scope: !1969, inlinedAt: !2006)
!2006 = distinct !DILocation(line: 693, column: 12, scope: !1984)
!2007 = !DILocation(line: 682, column: 38, scope: !1969, inlinedAt: !2006)
!2008 = !DILocation(line: 682, column: 53, scope: !1969, inlinedAt: !2006)
!2009 = !DILocation(line: 682, column: 61, scope: !1969, inlinedAt: !2006)
!2010 = !DILocation(line: 683, column: 34, scope: !1969, inlinedAt: !2006)
!2011 = !DILocation(line: 683, column: 12, scope: !1969, inlinedAt: !2006)
!2012 = !DILocation(line: 683, column: 5, scope: !1969, inlinedAt: !2006)
!2013 = !DILocation(line: 694, column: 1, scope: !1984)
!2014 = !DILocation(line: 693, column: 5, scope: !1984)
!2015 = distinct !DISubprogram(name: "anetSockName", scope: !3, file: !3, line: 696, type: !1835, isLocal: false, isDefinition: true, scopeLine: 696, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2016)
!2016 = !{!2017, !2018, !2019, !2020, !2021, !2022, !2023, !2026}
!2017 = !DILocalVariable(name: "fd", arg: 1, scope: !2015, file: !3, line: 696, type: !7)
!2018 = !DILocalVariable(name: "ip", arg: 2, scope: !2015, file: !3, line: 696, type: !80)
!2019 = !DILocalVariable(name: "ip_len", arg: 3, scope: !2015, file: !3, line: 696, type: !581)
!2020 = !DILocalVariable(name: "port", arg: 4, scope: !2015, file: !3, line: 696, type: !6)
!2021 = !DILocalVariable(name: "sa", scope: !2015, file: !3, line: 697, type: !98)
!2022 = !DILocalVariable(name: "salen", scope: !2015, file: !3, line: 698, type: !90)
!2023 = !DILocalVariable(name: "s", scope: !2024, file: !3, line: 707, type: !16)
!2024 = distinct !DILexicalBlock(scope: !2025, file: !3, line: 706, column: 34)
!2025 = distinct !DILexicalBlock(scope: !2015, file: !3, line: 706, column: 9)
!2026 = !DILocalVariable(name: "s", scope: !2027, file: !3, line: 711, type: !49)
!2027 = distinct !DILexicalBlock(scope: !2025, file: !3, line: 710, column: 12)
!2028 = !DILocation(line: 696, column: 22, scope: !2015)
!2029 = !DILocation(line: 696, column: 32, scope: !2015)
!2030 = !DILocation(line: 696, column: 43, scope: !2015)
!2031 = !DILocation(line: 696, column: 56, scope: !2015)
!2032 = !DILocation(line: 697, column: 5, scope: !2015)
!2033 = !DILocation(line: 698, column: 5, scope: !2015)
!2034 = !DILocation(line: 698, column: 15, scope: !2015)
!2035 = !DILocation(line: 700, column: 24, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2015, file: !3, line: 700, column: 9)
!2037 = !DILocation(line: 700, column: 9, scope: !2036)
!2038 = !DILocation(line: 700, column: 54, scope: !2036)
!2039 = !DILocation(line: 700, column: 9, scope: !2015)
!2040 = !DILocation(line: 701, column: 13, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2042, file: !3, line: 701, column: 13)
!2042 = distinct !DILexicalBlock(scope: !2036, file: !3, line: 700, column: 61)
!2043 = !DILocation(line: 701, column: 13, scope: !2042)
!2044 = !DILocation(line: 701, column: 25, scope: !2041)
!2045 = !DILocation(line: 701, column: 19, scope: !2041)
!2046 = !DILocation(line: 702, column: 15, scope: !2042)
!2047 = !DILocation(line: 703, column: 9, scope: !2042)
!2048 = !DILocation(line: 703, column: 15, scope: !2042)
!2049 = !DILocation(line: 704, column: 9, scope: !2042)
!2050 = !DILocation(line: 706, column: 12, scope: !2025)
!2051 = !DILocation(line: 706, column: 22, scope: !2025)
!2052 = !DILocation(line: 0, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2027, file: !3, line: 712, column: 13)
!2054 = !DILocation(line: 706, column: 9, scope: !2015)
!2055 = !DILocation(line: 708, column: 13, scope: !2024)
!2056 = !DILocation(line: 707, column: 29, scope: !2024)
!2057 = !DILocation(line: 708, column: 47, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2024, file: !3, line: 708, column: 13)
!2059 = !DILocation(line: 708, column: 35, scope: !2058)
!2060 = !DILocation(line: 708, column: 60, scope: !2058)
!2061 = !DILocation(line: 708, column: 17, scope: !2058)
!2062 = !DILocation(line: 709, column: 13, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2024, file: !3, line: 709, column: 13)
!2064 = !DILocation(line: 709, column: 13, scope: !2024)
!2065 = !DILocation(line: 709, column: 27, scope: !2063)
!2066 = !DILocation(line: 709, column: 25, scope: !2063)
!2067 = !DILocation(line: 709, column: 19, scope: !2063)
!2068 = !DILocation(line: 712, column: 13, scope: !2027)
!2069 = !DILocation(line: 711, column: 30, scope: !2027)
!2070 = !DILocation(line: 712, column: 48, scope: !2053)
!2071 = !DILocation(line: 712, column: 36, scope: !2053)
!2072 = !DILocation(line: 712, column: 62, scope: !2053)
!2073 = !DILocation(line: 712, column: 17, scope: !2053)
!2074 = !DILocation(line: 713, column: 13, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2027, file: !3, line: 713, column: 13)
!2076 = !DILocation(line: 713, column: 13, scope: !2027)
!2077 = !DILocation(line: 713, column: 27, scope: !2075)
!2078 = !DILocation(line: 713, column: 25, scope: !2075)
!2079 = !DILocation(line: 713, column: 19, scope: !2075)
!2080 = !DILocation(line: 0, scope: !2015)
!2081 = !DILocation(line: 716, column: 1, scope: !2015)
!2082 = distinct !DISubprogram(name: "anetFormatSock", scope: !3, file: !3, line: 718, type: !1985, isLocal: false, isDefinition: true, scopeLine: 718, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2083)
!2083 = !{!2084, !2085, !2086, !2087, !2088}
!2084 = !DILocalVariable(name: "fd", arg: 1, scope: !2082, file: !3, line: 718, type: !7)
!2085 = !DILocalVariable(name: "fmt", arg: 2, scope: !2082, file: !3, line: 718, type: !80)
!2086 = !DILocalVariable(name: "fmt_len", arg: 3, scope: !2082, file: !3, line: 718, type: !581)
!2087 = !DILocalVariable(name: "ip", scope: !2082, file: !3, line: 719, type: !1992)
!2088 = !DILocalVariable(name: "port", scope: !2082, file: !3, line: 720, type: !7)
!2089 = !DILocation(line: 718, column: 24, scope: !2082)
!2090 = !DILocation(line: 718, column: 34, scope: !2082)
!2091 = !DILocation(line: 718, column: 46, scope: !2082)
!2092 = !DILocation(line: 719, column: 5, scope: !2082)
!2093 = !DILocation(line: 719, column: 10, scope: !2082)
!2094 = !DILocation(line: 720, column: 5, scope: !2082)
!2095 = !DILocation(line: 720, column: 9, scope: !2082)
!2096 = !DILocation(line: 722, column: 5, scope: !2082)
!2097 = !DILocation(line: 723, column: 45, scope: !2082)
!2098 = !DILocation(line: 682, column: 26, scope: !1969, inlinedAt: !2099)
!2099 = distinct !DILocation(line: 723, column: 12, scope: !2082)
!2100 = !DILocation(line: 682, column: 38, scope: !1969, inlinedAt: !2099)
!2101 = !DILocation(line: 682, column: 53, scope: !1969, inlinedAt: !2099)
!2102 = !DILocation(line: 682, column: 61, scope: !1969, inlinedAt: !2099)
!2103 = !DILocation(line: 683, column: 34, scope: !1969, inlinedAt: !2099)
!2104 = !DILocation(line: 683, column: 12, scope: !1969, inlinedAt: !2099)
!2105 = !DILocation(line: 683, column: 5, scope: !1969, inlinedAt: !2099)
!2106 = !DILocation(line: 724, column: 1, scope: !2082)
!2107 = !DILocation(line: 723, column: 5, scope: !2082)
!2108 = distinct !DISubprogram(name: "anetSetReuseAddr", scope: !3, file: !3, line: 269, type: !191, isLocal: true, isDefinition: true, scopeLine: 269, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2109)
!2109 = !{!2110, !2111, !2112, !2113, !2114, !2115, !2121, !2122, !2123, !2124}
!2110 = !DILocalVariable(name: "err", arg: 1, scope: !2108, file: !3, line: 269, type: !80)
!2111 = !DILocalVariable(name: "fd", arg: 2, scope: !2108, file: !3, line: 269, type: !7)
!2112 = !DILocalVariable(name: "yes", scope: !2108, file: !3, line: 270, type: !7)
!2113 = !DILocalVariable(name: "_dss_yes", scope: !2108, file: !3, line: 271, type: !6)
!2114 = !DILocalVariable(name: "ret", scope: !2108, file: !3, line: 275, type: !7)
!2115 = !DILocalVariable(name: "tid", scope: !2116, file: !3, line: 276, type: !41)
!2116 = distinct !DILexicalBlock(scope: !2117, file: !3, line: 276, column: 5)
!2117 = distinct !DILexicalBlock(scope: !2118, file: !3, line: 276, column: 5)
!2118 = distinct !DILexicalBlock(scope: !2119, file: !3, line: 276, column: 5)
!2119 = distinct !DILexicalBlock(scope: !2120, file: !3, line: 276, column: 5)
!2120 = distinct !DILexicalBlock(scope: !2108, file: !3, line: 276, column: 5)
!2121 = !DILocalVariable(name: "_ret", scope: !2116, file: !3, line: 276, type: !13)
!2122 = !DILocalVariable(name: "_arg3", scope: !2116, file: !3, line: 276, type: !13)
!2123 = !DILocalVariable(name: "_arg4", scope: !2116, file: !3, line: 276, type: !13)
!2124 = !DILocalVariable(name: "_arg5", scope: !2116, file: !3, line: 276, type: !13)
!2125 = !DILocation(line: 269, column: 35, scope: !2108)
!2126 = !DILocation(line: 269, column: 44, scope: !2108)
!2127 = !DILocation(line: 270, column: 5, scope: !2108)
!2128 = !DILocation(line: 271, column: 30, scope: !2108)
!2129 = !DILocation(line: 271, column: 49, scope: !2108)
!2130 = !DILocation(line: 271, column: 21, scope: !2108)
!2131 = !DILocation(line: 271, column: 10, scope: !2108)
!2132 = !DILocation(line: 272, column: 17, scope: !2108)
!2133 = !DILocation(line: 275, column: 5, scope: !2108)
!2134 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !2135)
!2135 = distinct !DILocation(line: 276, column: 5, scope: !2119)
!2136 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !2135)
!2137 = !DILocation(line: 121, column: 2, scope: !237, inlinedAt: !2135)
!2138 = !DILocation(line: 276, column: 5, scope: !2119)
!2139 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !2140)
!2140 = distinct !DILocation(line: 276, column: 5, scope: !2119)
!2141 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !2140)
!2142 = !DILocation(line: 121, column: 2, scope: !237, inlinedAt: !2140)
!2143 = !DILocation(line: 276, column: 5, scope: !2120)
!2144 = !DILocation(line: 276, column: 5, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2119, file: !3, line: 276, column: 5)
!2146 = !DILocation(line: 275, column: 9, scope: !2108)
!2147 = !DILocation(line: 120, column: 2, scope: !237, inlinedAt: !2148)
!2148 = distinct !DILocation(line: 49, column: 21, scope: !258, inlinedAt: !2149)
!2149 = distinct !DILocation(line: 276, column: 5, scope: !2116)
!2150 = !DILocation(line: 118, column: 16, scope: !237, inlinedAt: !2148)
!2151 = !DILocation(line: 121, column: 2, scope: !237, inlinedAt: !2148)
!2152 = !DILocation(line: 49, column: 16, scope: !258, inlinedAt: !2149)
!2153 = !DILocation(line: 50, column: 19, scope: !258, inlinedAt: !2149)
!2154 = !DILocation(line: 50, column: 11, scope: !258, inlinedAt: !2149)
!2155 = !DILocation(line: 50, column: 9, scope: !258, inlinedAt: !2149)
!2156 = !DILocation(line: 50, column: 2, scope: !258, inlinedAt: !2149)
!2157 = !DILocation(line: 276, column: 5, scope: !2116)
!2158 = !{i32 -2146251532, i32 -2146251519, i32 -2146251494, i32 -2146251470, i32 -2146251445, i32 -2146251370, i32 -2146251345, i32 -2146251201, i32 -2146251176, i32 -2146247769, i32 -2146247680, i32 -2146247559, i32 -2146247464, i32 -2146247363, i32 -2146247336, i32 -2146247253, i32 -2146247164, i32 -2146247043, i32 -2146246943, i32 -2146246837, i32 -2146246729, i32 -2146250800, i32 -2146250747, i32 -2146250716, i32 -2146250685, i32 -2146250664, i32 -2146250642, i32 -2146250593, i32 -2146250572, i32 -2146250469, i32 -2146250437, i32 -2146246646, i32 -2146246557, i32 -2146246436, i32 -2146246337, i32 -2146246231, i32 -2146246129, i32 -2146246096, i32 -2146246023, i32 -2146245955, i32 -2146250247, i32 -2146250188, i32 -2146250135, i32 -2146250104, i32 -2146250073, i32 -2146250052, i32 -2146250030, i32 -2146249981, i32 -2146249960, i32 -2146245909, i32 -2146245820, i32 -2146245699, i32 -2146245600, i32 -2146245494, i32 -2146245392, i32 -2146245359, i32 -2146245276, i32 -2146245187, i32 -2146245066, i32 -2146244966, i32 -2146244940, i32 -2146244837, i32 -2146244811, i32 -2146249702, i32 -2146249677, i32 -2146249610, i32 -2146249585, i32 -2146249521, i32 -2146249439, i32 -2146249416, i32 -2146249391, i32 -2146249366}
!2159 = !DILocation(line: 276, column: 5, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2161, file: !3, line: 276, column: 5)
!2161 = distinct !DILexicalBlock(scope: !2116, file: !3, line: 276, column: 5)
!2162 = !{i32 -2146248282, i32 -2146248265}
!2163 = !DILocation(line: 278, column: 9, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2108, file: !3, line: 278, column: 9)
!2165 = !DILocation(line: 278, column: 13, scope: !2164)
!2166 = !DILocation(line: 278, column: 9, scope: !2108)
!2167 = !DILocation(line: 279, column: 67, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2164, file: !3, line: 278, column: 20)
!2169 = !DILocation(line: 279, column: 58, scope: !2168)
!2170 = !DILocation(line: 279, column: 9, scope: !2168)
!2171 = !DILocation(line: 280, column: 9, scope: !2168)
!2172 = !DILocation(line: 0, scope: !2108)
!2173 = !DILocation(line: 283, column: 1, scope: !2108)
