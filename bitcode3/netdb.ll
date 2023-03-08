; ModuleID = '/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/api/netdb.c'
source_filename = "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/api/netdb.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.hostent = type { i8*, i8**, i32, i32, i8** }
%struct.ip_addr = type { %union.anon, i8 }
%union.anon = type { %struct.ip6_addr }
%struct.ip6_addr = type { [4 x i32], i8 }
%struct.uk_alloc = type { i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64, i64)*, i8* (%struct.uk_alloc*, i8*, i64)*, i32 (%struct.uk_alloc*, i8**, i64, i64)*, i8* (%struct.uk_alloc*, i64, i64)*, {}*, {}*, i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)*, void (%struct.uk_alloc*, i8*, i64)*, i32 (%struct.uk_alloc*, i8*, i64)*, i64, %struct.uk_alloc*, [0 x i8] }
%struct.uk_thread_status_block = type { i64, i64 }
%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.sockaddr*, i8*, %struct.addrinfo* }
%struct.sockaddr = type { i8, i8, [14 x i8] }
%struct.sockaddr_storage = type { i8, i8, [2 x i8], [3 x i32], [3 x i32] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@lwip_gethostbyname.s_hostent = internal global %struct.hostent zeroinitializer, align 8, !dbg !0
@lwip_gethostbyname.s_aliases = internal global i8* null, align 8, !dbg !186
@lwip_gethostbyname.s_hostent_addr = internal global %struct.ip_addr zeroinitializer, align 4, !dbg !188
@lwip_gethostbyname.s_phostent_addr = internal global [2 x %struct.ip_addr*] zeroinitializer, align 16, !dbg !190
@lwip_gethostbyname.s_hostname = internal global [257 x i8] zeroinitializer, align 16, !dbg !192
@h_errno = common dso_local local_unnamed_addr global i32 0, align 4, !dbg !197
@flexos_shared_alloc = external dso_local local_unnamed_addr global %struct.uk_alloc*, align 8
@_intrstack_start = external dso_local global [0 x i8], align 1
@_end = external dso_local global [0 x i8], align 1
@tsb_comp1 = external dso_local global [32 x %struct.uk_thread_status_block], align 16
@tsb_comp0 = external dso_local global [32 x %struct.uk_thread_status_block], align 16
@.str.1 = private unnamed_addr constant [23 x i8] c"Assertion failure: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@uk_pr_crit.__str = internal global [8 x i8] c"liblwip\00", section ".data_shared", align 1, !dbg !199
@uk_pr_crit.__str.5 = internal global [8 x i8] c"netdb.c\00", section ".data_shared", align 1, !dbg !220

; Function Attrs: noredzone nounwind
define dso_local %struct.hostent* @lwip_gethostbyname(i8*) local_unnamed_addr #0 !dbg !2 {
  %2 = alloca %struct.ip_addr, align 4
  %3 = bitcast %struct.ip_addr* %2 to i8*, !dbg !236
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #6, !dbg !236
  %4 = call signext i8 @netconn_gethostbyname_addrtype(i8* %0, %struct.ip_addr* nonnull %2, i8 zeroext 2) #7, !dbg !238
  %5 = icmp eq i8 %4, 0, !dbg !240
  br i1 %5, label %7, label %6, !dbg !242

; <label>:6:                                      ; preds = %1
  store i32 210, i32* @h_errno, align 4, !dbg !243, !tbaa !245
  br label %9, !dbg !249

; <label>:7:                                      ; preds = %1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.ip_addr* @lwip_gethostbyname.s_hostent_addr to i8*), i8* nonnull align 4 %3, i64 24, i1 false), !dbg !250, !tbaa.struct !251
  store <2 x %struct.ip_addr*> <%struct.ip_addr* @lwip_gethostbyname.s_hostent_addr, %struct.ip_addr* null>, <2 x %struct.ip_addr*>* bitcast ([2 x %struct.ip_addr*]* @lwip_gethostbyname.s_phostent_addr to <2 x %struct.ip_addr*>*), align 16, !dbg !253, !tbaa !254
  %8 = call i8* @strncpy(i8* getelementptr inbounds ([257 x i8], [257 x i8]* @lwip_gethostbyname.s_hostname, i64 0, i64 0), i8* %0, i64 256) #7, !dbg !256
  store i8 0, i8* getelementptr inbounds ([257 x i8], [257 x i8]* @lwip_gethostbyname.s_hostname, i64 0, i64 256), align 16, !dbg !257, !tbaa !252
  store i8* getelementptr inbounds ([257 x i8], [257 x i8]* @lwip_gethostbyname.s_hostname, i64 0, i64 0), i8** getelementptr inbounds (%struct.hostent, %struct.hostent* @lwip_gethostbyname.s_hostent, i64 0, i32 0), align 8, !dbg !258, !tbaa !259
  store i8* null, i8** @lwip_gethostbyname.s_aliases, align 8, !dbg !261, !tbaa !254
  store i8** @lwip_gethostbyname.s_aliases, i8*** getelementptr inbounds (%struct.hostent, %struct.hostent* @lwip_gethostbyname.s_hostent, i64 0, i32 1), align 8, !dbg !262, !tbaa !263
  store i32 2, i32* getelementptr inbounds (%struct.hostent, %struct.hostent* @lwip_gethostbyname.s_hostent, i64 0, i32 2), align 8, !dbg !264, !tbaa !265
  store i32 24, i32* getelementptr inbounds (%struct.hostent, %struct.hostent* @lwip_gethostbyname.s_hostent, i64 0, i32 3), align 4, !dbg !266, !tbaa !267
  store i8** bitcast ([2 x %struct.ip_addr*]* @lwip_gethostbyname.s_phostent_addr to i8**), i8*** getelementptr inbounds (%struct.hostent, %struct.hostent* @lwip_gethostbyname.s_hostent, i64 0, i32 4), align 8, !dbg !268, !tbaa !269
  br label %9, !dbg !270

; <label>:9:                                      ; preds = %7, %6
  %10 = phi %struct.hostent* [ null, %6 ], [ @lwip_gethostbyname.s_hostent, %7 ], !dbg !271
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #6, !dbg !272
  ret %struct.hostent* %10, !dbg !272
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local signext i8 @netconn_gethostbyname_addrtype(i8*, %struct.ip_addr*, i8 zeroext) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #2

; Function Attrs: noredzone
declare dso_local i8* @strncpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local i32 @lwip_gethostbyname_r(i8*, %struct.hostent*, i8*, i64, %struct.hostent**, i32*) local_unnamed_addr #0 !dbg !273 {
  %7 = alloca i32, align 4
  %8 = bitcast i32* %7 to i8*, !dbg !299
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8), !dbg !299
  %9 = icmp eq i32* %5, null, !dbg !300
  %10 = select i1 %9, i32* %7, i32* %5, !dbg !302
  %11 = icmp eq %struct.hostent** %4, null, !dbg !303
  br i1 %11, label %12, label %13, !dbg !305

; <label>:12:                                     ; preds = %6
  store i32 22, i32* %10, align 4, !dbg !306, !tbaa !245
  br label %47, !dbg !308

; <label>:13:                                     ; preds = %6
  store %struct.hostent* null, %struct.hostent** %4, align 8, !dbg !309, !tbaa !254
  %14 = icmp eq i8* %0, null, !dbg !310
  %15 = icmp eq %struct.hostent* %1, null, !dbg !312
  %16 = or i1 %14, %15, !dbg !313
  %17 = icmp eq i8* %2, null, !dbg !314
  %18 = or i1 %16, %17, !dbg !313
  br i1 %18, label %19, label %20, !dbg !313

; <label>:19:                                     ; preds = %13
  store i32 22, i32* %10, align 4, !dbg !315, !tbaa !245
  br label %47, !dbg !317

; <label>:20:                                     ; preds = %13
  %21 = tail call i64 @strlen(i8* nonnull %0) #7, !dbg !318
  %22 = add i64 %21, 49, !dbg !320
  %23 = icmp ugt i64 %22, %3, !dbg !322
  br i1 %23, label %24, label %25, !dbg !323

; <label>:24:                                     ; preds = %20
  store i32 34, i32* %10, align 4, !dbg !324, !tbaa !245
  br label %47, !dbg !326

; <label>:25:                                     ; preds = %20
  %26 = getelementptr inbounds i8, i8* %2, i64 48, !dbg !327
  %27 = getelementptr inbounds i8, i8* %2, i64 16, !dbg !329
  %28 = bitcast i8* %27 to %struct.ip_addr*, !dbg !329
  %29 = tail call signext i8 @netconn_gethostbyname_addrtype(i8* nonnull %0, %struct.ip_addr* nonnull %28, i8 zeroext 2) #7, !dbg !329
  %30 = icmp eq i8 %29, 0, !dbg !331
  br i1 %30, label %32, label %31, !dbg !333

; <label>:31:                                     ; preds = %25
  store i32 210, i32* %10, align 4, !dbg !334, !tbaa !245
  br label %47, !dbg !336

; <label>:32:                                     ; preds = %25
  %33 = tail call i8* @memcpy(i8* nonnull %26, i8* nonnull %0, i64 %21) #7, !dbg !338
  %34 = getelementptr inbounds i8, i8* %26, i64 %21, !dbg !339
  store i8 0, i8* %34, align 1, !dbg !340, !tbaa !252
  %35 = bitcast i8* %2 to i8**, !dbg !341
  store i8* %27, i8** %35, align 8, !dbg !341, !tbaa !254
  %36 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !342
  %37 = bitcast i8* %36 to %struct.ip_addr**, !dbg !342
  store %struct.ip_addr* null, %struct.ip_addr** %37, align 8, !dbg !343, !tbaa !254
  %38 = getelementptr inbounds i8, i8* %2, i64 40, !dbg !344
  %39 = bitcast i8* %38 to i8**, !dbg !344
  store i8* null, i8** %39, align 8, !dbg !345, !tbaa !346
  %40 = getelementptr inbounds %struct.hostent, %struct.hostent* %1, i64 0, i32 0, !dbg !349
  store i8* %26, i8** %40, align 8, !dbg !350, !tbaa !259
  %41 = getelementptr inbounds %struct.hostent, %struct.hostent* %1, i64 0, i32 1, !dbg !351
  %42 = bitcast i8*** %41 to i8**, !dbg !352
  store i8* %38, i8** %42, align 8, !dbg !352, !tbaa !263
  %43 = getelementptr inbounds %struct.hostent, %struct.hostent* %1, i64 0, i32 2, !dbg !353
  store i32 2, i32* %43, align 8, !dbg !354, !tbaa !265
  %44 = getelementptr inbounds %struct.hostent, %struct.hostent* %1, i64 0, i32 3, !dbg !355
  store i32 24, i32* %44, align 4, !dbg !356, !tbaa !267
  %45 = getelementptr inbounds %struct.hostent, %struct.hostent* %1, i64 0, i32 4, !dbg !357
  %46 = bitcast i8*** %45 to i8**, !dbg !358
  store i8* %2, i8** %46, align 8, !dbg !358, !tbaa !269
  store %struct.hostent* %1, %struct.hostent** %4, align 8, !dbg !359, !tbaa !254
  br label %47, !dbg !360

; <label>:47:                                     ; preds = %32, %31, %24, %19, %12
  %48 = phi i32 [ -1, %12 ], [ -1, %19 ], [ -1, %24 ], [ -1, %31 ], [ 0, %32 ], !dbg !361
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8), !dbg !362
  ret i32 %48, !dbg !362
}

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @lwip_freeaddrinfo(%struct.addrinfo*) local_unnamed_addr #0 !dbg !363 {
  %2 = icmp eq %struct.addrinfo* %0, null, !dbg !370
  br i1 %2, label %16, label %3, !dbg !371

; <label>:3:                                      ; preds = %1, %8
  %4 = phi %struct.addrinfo* [ %11, %8 ], [ %0, %1 ]
  %5 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !372, !tbaa !254
  %6 = icmp eq %struct.uk_alloc* %5, null, !dbg !443
  br i1 %6, label %7, label %8, !dbg !446, !prof !447

; <label>:7:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !448
  tail call void @ukplat_terminate(i32 3) #8, !dbg !448
  unreachable, !dbg !448

; <label>:8:                                      ; preds = %3
  %9 = bitcast %struct.addrinfo* %4 to i8*, !dbg !450
  %10 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %4, i64 0, i32 7, !dbg !453
  %11 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8, !dbg !453, !tbaa !454
  %12 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %5, i64 0, i32 5, !dbg !457
  %13 = bitcast {}** %12 to void (%struct.uk_alloc*, i8*)**, !dbg !457
  %14 = load void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)** %13, align 8, !dbg !457, !tbaa !254
  tail call void %14(%struct.uk_alloc* nonnull %5, i8* %9) #7, !dbg !458
  %15 = icmp eq %struct.addrinfo* %11, null, !dbg !370
  br i1 %15, label %16, label %3, !dbg !371, !llvm.loop !459

; <label>:16:                                     ; preds = %8, %1
  ret void, !dbg !461
}

; Function Attrs: noredzone nounwind
define dso_local i32 @lwip_getaddrinfo(i8*, i8*, %struct.addrinfo* readonly, %struct.addrinfo**) local_unnamed_addr #0 !dbg !462 {
  %5 = alloca %struct.ip_addr, align 16
  %6 = alloca i32, align 4
  %7 = bitcast %struct.ip_addr* %5 to i8*, !dbg !504
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #6, !dbg !504
  %8 = bitcast i32* %6 to i8*, !dbg !506
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #6, !dbg !506
  store i32 0, i32* %6, align 4, !dbg !507, !tbaa !245
  %9 = icmp eq %struct.addrinfo** %3, null, !dbg !509
  br i1 %9, label %189, label %10, !dbg !511

; <label>:10:                                     ; preds = %4
  store %struct.addrinfo* null, %struct.addrinfo** %3, align 8, !dbg !512, !tbaa !254
  %11 = icmp eq i8* %0, null, !dbg !513
  %12 = icmp eq i8* %1, null, !dbg !515
  %13 = and i1 %11, %12, !dbg !516
  br i1 %13, label %189, label %14, !dbg !516

; <label>:14:                                     ; preds = %10
  %15 = icmp ne %struct.addrinfo* %2, null, !dbg !517
  br i1 %15, label %16, label %19, !dbg !519

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %2, i64 0, i32 1, !dbg !520
  %18 = load i32, i32* %17, align 4, !dbg !520, !tbaa !522
  switch i32 %18, label %189 [
    i32 10, label %19
    i32 2, label %19
    i32 0, label %19
  ], !dbg !524

; <label>:19:                                     ; preds = %14, %16, %16, %16
  %20 = phi i32 [ %18, %16 ], [ %18, %16 ], [ %18, %16 ], [ 0, %14 ], !dbg !526
  br i1 %12, label %43, label %21, !dbg !528

; <label>:21:                                     ; preds = %19
  %22 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !529, !srcloc !537
  %23 = icmp ult i64 %22, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !539
  br i1 %23, label %29, label %24, !dbg !539

; <label>:24:                                     ; preds = %21
  %25 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !540, !srcloc !537
  %26 = icmp ugt i64 %25, ptrtoint ([0 x i8]* @_end to i64), !dbg !539
  br i1 %26, label %29, label %27, !dbg !543

; <label>:27:                                     ; preds = %24
  %28 = tail call i32 @atoi(i8* nonnull %1) #7, !dbg !544
  store i32 %28, i32* %6, align 4, !dbg !544, !tbaa !245
  br label %39, !dbg !544

; <label>:29:                                     ; preds = %24, %21
  %30 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !546, !srcloc !537
  %31 = and i64 %30, -65536, !dbg !557
  %32 = or i64 %31, 4097, !dbg !557
  %33 = add nsw i64 %32, -1, !dbg !557
  %34 = inttoptr i64 %33 to i32*, !dbg !558
  %35 = load i32, i32* %34, align 4096, !dbg !559, !tbaa !245
  %36 = ptrtoint i8* %1 to i64, !dbg !560
  %37 = tail call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call atoi\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %36, i32 %35, i32 (i8*)* nonnull @atoi) #6, !dbg !560, !srcloc !561
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %6, i64 %37) #6, !dbg !562, !srcloc !565
  %38 = load i32, i32* %6, align 4, !dbg !566, !tbaa !245
  br label %39

; <label>:39:                                     ; preds = %29, %27
  %40 = phi i32 [ %38, %29 ], [ %28, %27 ], !dbg !566
  %41 = add i32 %40, -1, !dbg !568
  %42 = icmp ugt i32 %41, 65534, !dbg !568
  br i1 %42, label %189, label %43, !dbg !568

; <label>:43:                                     ; preds = %19, %39
  %44 = icmp ne i8* %0, null, !dbg !569
  br i1 %44, label %45, label %71, !dbg !570

; <label>:45:                                     ; preds = %43
  br i1 %15, label %46, label %64, !dbg !571

; <label>:46:                                     ; preds = %45
  %47 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %2, i64 0, i32 0, !dbg !572
  %48 = load i32, i32* %47, align 8, !dbg !572, !tbaa !573
  %49 = and i32 %48, 4, !dbg !574
  %50 = icmp eq i32 %49, 0, !dbg !574
  br i1 %50, label %64, label %51, !dbg !575

; <label>:51:                                     ; preds = %46
  %52 = call i32 @ipaddr_aton(i8* nonnull %0, %struct.ip_addr* nonnull %5) #7, !dbg !577
  %53 = icmp eq i32 %52, 0, !dbg !577
  br i1 %53, label %189, label %54, !dbg !580

; <label>:54:                                     ; preds = %51
  %55 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 1, !dbg !581
  %56 = load i8, i8* %55, align 4, !dbg !581, !tbaa !583
  %57 = icmp eq i8 %56, 6, !dbg !581
  %58 = icmp eq i32 %20, 2, !dbg !584
  %59 = and i1 %58, %57, !dbg !585
  br i1 %59, label %189, label %60, !dbg !585

; <label>:60:                                     ; preds = %54
  %61 = icmp eq i8 %56, 0, !dbg !586
  %62 = icmp eq i32 %20, 10, !dbg !587
  %63 = and i1 %62, %61, !dbg !588
  br i1 %63, label %189, label %102, !dbg !588

; <label>:64:                                     ; preds = %46, %45
  %65 = icmp eq i32 %20, 10, !dbg !590
  %66 = select i1 %65, i8 1, i8 2, !dbg !590
  %67 = icmp eq i32 %20, 2, !dbg !590
  %68 = select i1 %67, i8 0, i8 %66, !dbg !590
  %69 = call signext i8 @netconn_gethostbyname_addrtype(i8* nonnull %0, %struct.ip_addr* nonnull %5, i8 zeroext %68) #7, !dbg !591
  %70 = icmp eq i8 %69, 0, !dbg !593
  br i1 %70, label %102, label %189

; <label>:71:                                     ; preds = %43
  br i1 %15, label %72, label %92, !dbg !595

; <label>:72:                                     ; preds = %71
  %73 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %2, i64 0, i32 0, !dbg !598
  %74 = load i32, i32* %73, align 8, !dbg !598, !tbaa !573
  %75 = and i32 %74, 1, !dbg !599
  %76 = icmp eq i32 %75, 0, !dbg !599
  br i1 %76, label %92, label %77, !dbg !600

; <label>:77:                                     ; preds = %72
  %78 = icmp eq i32 %20, 10, !dbg !601
  %79 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !605
  store i32 0, i32* %79, align 16, !dbg !605, !tbaa !252
  br i1 %78, label %80, label %86, !dbg !608

; <label>:80:                                     ; preds = %77
  %81 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !605
  store i32 0, i32* %81, align 4, !dbg !605, !tbaa !252
  %82 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !605
  store i32 0, i32* %82, align 8, !dbg !605, !tbaa !252
  %83 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !605
  store i32 0, i32* %83, align 4, !dbg !605, !tbaa !252
  %84 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 0, i32 0, i32 1, !dbg !605
  store i8 0, i8* %84, align 16, !dbg !605, !tbaa !252
  %85 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 1, !dbg !609
  store i8 6, i8* %85, align 4, !dbg !609, !tbaa !583
  br label %107, !dbg !611

; <label>:86:                                     ; preds = %77
  %87 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 1, !dbg !612
  store i8 0, i8* %87, align 4, !dbg !612, !tbaa !583
  %88 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !615
  store i32 0, i32* %88, align 4, !dbg !615, !tbaa !252
  %89 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !615
  store i32 0, i32* %89, align 8, !dbg !615, !tbaa !252
  %90 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !615
  store i32 0, i32* %90, align 4, !dbg !615, !tbaa !252
  %91 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 0, i32 0, i32 1, !dbg !615
  store i8 0, i8* %91, align 16, !dbg !615, !tbaa !252
  br label %107

; <label>:92:                                     ; preds = %72, %71
  %93 = icmp eq i32 %20, 10, !dbg !617
  br i1 %93, label %94, label %98, !dbg !621

; <label>:94:                                     ; preds = %92
  %95 = bitcast %struct.ip_addr* %5 to <4 x i32>*, !dbg !622
  store <4 x i32> <i32 0, i32 0, i32 0, i32 16777216>, <4 x i32>* %95, align 16, !dbg !622, !tbaa !252
  %96 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 0, i32 0, i32 1, !dbg !622
  store i8 0, i8* %96, align 16, !dbg !622, !tbaa !252
  %97 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 1, !dbg !625
  store i8 6, i8* %97, align 4, !dbg !625, !tbaa !583
  br label %107, !dbg !627

; <label>:98:                                     ; preds = %92
  %99 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 1, !dbg !628
  store i8 0, i8* %99, align 4, !dbg !628, !tbaa !583
  %100 = bitcast %struct.ip_addr* %5 to <4 x i32>*, !dbg !631
  store <4 x i32> <i32 16777343, i32 0, i32 0, i32 0>, <4 x i32>* %100, align 16, !dbg !631, !tbaa !252
  %101 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 0, i32 0, i32 1, !dbg !632
  store i8 0, i8* %101, align 16, !dbg !632, !tbaa !252
  br label %107

; <label>:102:                                    ; preds = %64, %60
  %103 = call i64 @strlen(i8* nonnull %0) #7, !dbg !635
  %104 = icmp ugt i64 %103, 256, !dbg !638
  br i1 %104, label %189, label %105, !dbg !640

; <label>:105:                                    ; preds = %102
  %106 = add i64 %103, 77, !dbg !641
  br label %107, !dbg !642

; <label>:107:                                    ; preds = %94, %98, %80, %86, %105
  %108 = phi i64 [ %103, %105 ], [ 0, %86 ], [ 0, %80 ], [ 0, %98 ], [ 0, %94 ], !dbg !643
  %109 = phi i64 [ %106, %105 ], [ 76, %86 ], [ 76, %80 ], [ 76, %98 ], [ 76, %94 ], !dbg !643
  %110 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !644, !tbaa !254
  %111 = icmp eq %struct.uk_alloc* %110, null, !dbg !652
  br i1 %111, label %112, label %114, !dbg !654, !prof !447

; <label>:112:                                    ; preds = %107
  %113 = call i32* @__errno() #7, !dbg !655
  store i32 12, i32* %113, align 4, !dbg !657, !tbaa !245
  br label %189, !dbg !659

; <label>:114:                                    ; preds = %107
  %115 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %110, i64 0, i32 0, !dbg !667
  %116 = load i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)** %115, align 8, !dbg !667, !tbaa !254
  %117 = call i8* %116(%struct.uk_alloc* nonnull %110, i64 %109) #7, !dbg !668
  %118 = icmp eq i8* %117, null, !dbg !669
  br i1 %118, label %189, label %119, !dbg !659

; <label>:119:                                    ; preds = %114
  %120 = call i8* @memset(i8* nonnull %117, i32 0, i64 %109) #7, !dbg !671
  %121 = getelementptr inbounds i8, i8* %117, i64 48, !dbg !672
  %122 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 1, !dbg !673
  %123 = load i8, i8* %122, align 4, !dbg !673, !tbaa !583
  %124 = icmp eq i8 %123, 6, !dbg !673
  %125 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !674
  %126 = load i32, i32* %125, align 16, !dbg !674, !tbaa !252
  br i1 %124, label %127, label %153, !dbg !675

; <label>:127:                                    ; preds = %119
  %128 = getelementptr inbounds i8, i8* %117, i64 56, !dbg !677
  %129 = bitcast i8* %128 to i32*, !dbg !677
  store i32 %126, i32* %129, align 4, !dbg !677, !tbaa !252
  %130 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !677
  %131 = load i32, i32* %130, align 4, !dbg !677, !tbaa !252
  %132 = getelementptr inbounds i8, i8* %117, i64 60, !dbg !677
  %133 = bitcast i8* %132 to i32*, !dbg !677
  store i32 %131, i32* %133, align 4, !dbg !677, !tbaa !252
  %134 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !677
  %135 = load i32, i32* %134, align 8, !dbg !677, !tbaa !252
  %136 = getelementptr inbounds i8, i8* %117, i64 64, !dbg !677
  %137 = bitcast i8* %136 to i32*, !dbg !677
  store i32 %135, i32* %137, align 4, !dbg !677, !tbaa !252
  %138 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !677
  %139 = load i32, i32* %138, align 4, !dbg !677, !tbaa !252
  %140 = getelementptr inbounds i8, i8* %117, i64 68, !dbg !677
  %141 = bitcast i8* %140 to i32*, !dbg !677
  store i32 %139, i32* %141, align 4, !dbg !677, !tbaa !252
  %142 = getelementptr inbounds i8, i8* %117, i64 49, !dbg !679
  store i8 10, i8* %142, align 1, !dbg !680, !tbaa !681
  store i8 28, i8* %121, align 4, !dbg !685, !tbaa !686
  %143 = load i32, i32* %6, align 4, !dbg !687, !tbaa !245
  %144 = trunc i32 %143 to i16, !dbg !688
  %145 = call zeroext i16 @lwip_htons(i16 zeroext %144) #7, !dbg !689
  %146 = getelementptr inbounds i8, i8* %117, i64 50, !dbg !690
  %147 = bitcast i8* %146 to i16*, !dbg !690
  store i16 %145, i16* %147, align 2, !dbg !691, !tbaa !692
  %148 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 0, i32 0, i32 1, !dbg !693
  %149 = load i8, i8* %148, align 16, !dbg !693, !tbaa !252
  %150 = zext i8 %149 to i32, !dbg !693
  %151 = getelementptr inbounds i8, i8* %117, i64 72, !dbg !694
  %152 = bitcast i8* %151 to i32*, !dbg !694
  store i32 %150, i32* %152, align 4, !dbg !695, !tbaa !696
  br label %162, !dbg !697

; <label>:153:                                    ; preds = %119
  %154 = getelementptr inbounds i8, i8* %117, i64 52, !dbg !699
  %155 = bitcast i8* %154 to i32*, !dbg !699
  store i32 %126, i32* %155, align 4, !dbg !699, !tbaa !700
  %156 = getelementptr inbounds i8, i8* %117, i64 49, !dbg !703
  store i8 2, i8* %156, align 1, !dbg !704, !tbaa !705
  store i8 16, i8* %121, align 4, !dbg !706, !tbaa !707
  %157 = load i32, i32* %6, align 4, !dbg !708, !tbaa !245
  %158 = trunc i32 %157 to i16, !dbg !709
  %159 = call zeroext i16 @lwip_htons(i16 zeroext %158) #7, !dbg !710
  %160 = getelementptr inbounds i8, i8* %117, i64 50, !dbg !711
  %161 = bitcast i8* %160 to i16*, !dbg !711
  store i16 %159, i16* %161, align 2, !dbg !712, !tbaa !713
  br label %162

; <label>:162:                                    ; preds = %153, %127
  %163 = phi i32 [ 2, %153 ], [ 10, %127 ]
  %164 = getelementptr inbounds i8, i8* %117, i64 4, !dbg !714
  %165 = bitcast i8* %164 to i32*, !dbg !714
  store i32 %163, i32* %165, align 4, !dbg !714, !tbaa !522
  br i1 %15, label %166, label %175, !dbg !715

; <label>:166:                                    ; preds = %162
  %167 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %2, i64 0, i32 2, !dbg !716
  %168 = load i32, i32* %167, align 8, !dbg !716, !tbaa !719
  %169 = getelementptr inbounds i8, i8* %117, i64 8, !dbg !720
  %170 = bitcast i8* %169 to i32*, !dbg !720
  store i32 %168, i32* %170, align 8, !dbg !721, !tbaa !719
  %171 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %2, i64 0, i32 3, !dbg !722
  %172 = load i32, i32* %171, align 4, !dbg !722, !tbaa !723
  %173 = getelementptr inbounds i8, i8* %117, i64 12, !dbg !724
  %174 = bitcast i8* %173 to i32*, !dbg !724
  store i32 %172, i32* %174, align 4, !dbg !725, !tbaa !723
  br label %175, !dbg !726

; <label>:175:                                    ; preds = %166, %162
  br i1 %44, label %176, label %183, !dbg !727

; <label>:176:                                    ; preds = %175
  %177 = getelementptr inbounds i8, i8* %117, i64 76, !dbg !728
  %178 = getelementptr inbounds i8, i8* %117, i64 32, !dbg !731
  %179 = bitcast i8* %178 to i8**, !dbg !731
  store i8* %177, i8** %179, align 8, !dbg !732, !tbaa !733
  %180 = call i8* @memcpy(i8* nonnull %177, i8* nonnull %0, i64 %108) #7, !dbg !734
  %181 = load i8*, i8** %179, align 8, !dbg !735, !tbaa !733
  %182 = getelementptr inbounds i8, i8* %181, i64 %108, !dbg !736
  store i8 0, i8* %182, align 1, !dbg !737, !tbaa !252
  br label %183, !dbg !738

; <label>:183:                                    ; preds = %176, %175
  %184 = getelementptr inbounds i8, i8* %117, i64 16, !dbg !739
  %185 = bitcast i8* %184 to i32*, !dbg !739
  store i32 28, i32* %185, align 8, !dbg !740, !tbaa !741
  %186 = getelementptr inbounds i8, i8* %117, i64 24, !dbg !742
  %187 = bitcast i8* %186 to i8**, !dbg !743
  store i8* %121, i8** %187, align 8, !dbg !743, !tbaa !744
  %188 = bitcast %struct.addrinfo** %3 to i8**, !dbg !745
  store i8* %117, i8** %188, align 8, !dbg !745, !tbaa !254
  br label %189, !dbg !746

; <label>:189:                                    ; preds = %112, %114, %102, %54, %60, %51, %39, %16, %10, %4, %64, %183
  %190 = phi i32 [ 0, %183 ], [ 202, %64 ], [ 202, %4 ], [ 200, %10 ], [ 204, %16 ], [ 201, %39 ], [ 200, %51 ], [ 200, %60 ], [ 200, %54 ], [ 202, %102 ], [ 203, %114 ], [ 203, %112 ], !dbg !747
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #6, !dbg !749
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #6, !dbg !749
  ret i32 %190, !dbg !749
}

; Function Attrs: noredzone
declare dso_local i32 @atoi(i8*) #3

; Function Attrs: noredzone
declare dso_local i32 @ipaddr_aton(i8*, %struct.ip_addr*) local_unnamed_addr #3

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8*, ...) unnamed_addr #4 !dbg !201 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !751
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #6, !dbg !751
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !753
  call void @llvm.va_start(i8* nonnull %3), !dbg !753
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str.5, i64 0, i64 0), i32 198, i8* %0, %struct.__va_list_tag* nonnull %4) #7, !dbg !754
  call void @llvm.va_end(i8* nonnull %3), !dbg !757
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #6, !dbg !758
  ret void, !dbg !758
}

; Function Attrs: noredzone noreturn
declare dso_local void @ukplat_terminate(i32) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local zeroext i16 @lwip_htons(i16 zeroext) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

; Function Attrs: noredzone
declare dso_local void @_uk_vprintk(i32, i8*, i8*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin noredzone nounwind }
attributes #8 = { nobuiltin noredzone noreturn nounwind }

!llvm.module.flags = !{!231, !232, !233}
!llvm.ident = !{!234}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "s_hostent", scope: !2, file: !3, line: 94, type: !7, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "lwip_gethostbyname", scope: !3, file: !3, line: 88, type: !4, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !222)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/api/netdb.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !19}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hostent", file: !8, line: 92, size: 256, elements: !9)
!8 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/netdb.h", directory: "/root/.unikraft/apps/redis/build")
!9 = !{!10, !13, !15, !17, !18}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "h_name", scope: !7, file: !8, line: 93, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "h_aliases", scope: !7, file: !8, line: 94, baseType: !14, size: 64, offset: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "h_addrtype", scope: !7, file: !8, line: 96, baseType: !16, size: 32, offset: 128)
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "h_length", scope: !7, file: !8, line: 97, baseType: !16, size: 32, offset: 160)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "h_addr_list", scope: !7, file: !8, line: 98, baseType: !14, size: 64, offset: 192)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!21 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !22, retainedTypes: !57, globals: !185)
!22 = !{!23, !43, !50}
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !24, line: 53, baseType: !16, size: 32, elements: !25)
!24 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/err.h", directory: "/root/.unikraft/apps/redis/build")
!25 = !{!26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42}
!26 = !DIEnumerator(name: "ERR_OK", value: 0)
!27 = !DIEnumerator(name: "ERR_MEM", value: -1)
!28 = !DIEnumerator(name: "ERR_BUF", value: -2)
!29 = !DIEnumerator(name: "ERR_TIMEOUT", value: -3)
!30 = !DIEnumerator(name: "ERR_RTE", value: -4)
!31 = !DIEnumerator(name: "ERR_INPROGRESS", value: -5)
!32 = !DIEnumerator(name: "ERR_VAL", value: -6)
!33 = !DIEnumerator(name: "ERR_WOULDBLOCK", value: -7)
!34 = !DIEnumerator(name: "ERR_USE", value: -8)
!35 = !DIEnumerator(name: "ERR_ALREADY", value: -9)
!36 = !DIEnumerator(name: "ERR_ISCONN", value: -10)
!37 = !DIEnumerator(name: "ERR_CONN", value: -11)
!38 = !DIEnumerator(name: "ERR_IF", value: -12)
!39 = !DIEnumerator(name: "ERR_ABRT", value: -13)
!40 = !DIEnumerator(name: "ERR_RST", value: -14)
!41 = !DIEnumerator(name: "ERR_CLSD", value: -15)
!42 = !DIEnumerator(name: "ERR_ARG", value: -16)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lwip_ip_addr_type", file: !44, line: 54, baseType: !45, size: 32, elements: !46)
!44 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip_addr.h", directory: "/root/.unikraft/apps/redis/build")
!45 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!46 = !{!47, !48, !49}
!47 = !DIEnumerator(name: "IPADDR_TYPE_V4", value: 0, isUnsigned: true)
!48 = !DIEnumerator(name: "IPADDR_TYPE_V6", value: 6, isUnsigned: true)
!49 = !DIEnumerator(name: "IPADDR_TYPE_ANY", value: 46, isUnsigned: true)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ukplat_gstate", file: !51, line: 68, baseType: !45, size: 32, elements: !52)
!51 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/bootstrap.h", directory: "/root/.unikraft/apps/redis/build")
!52 = !{!53, !54, !55, !56}
!53 = !DIEnumerator(name: "UKPLAT_HALT", value: 0, isUnsigned: true)
!54 = !DIEnumerator(name: "UKPLAT_RESTART", value: 1, isUnsigned: true)
!55 = !DIEnumerator(name: "UKPLAT_SUSPEND", value: 2, isUnsigned: true)
!56 = !DIEnumerator(name: "UKPLAT_CRASH", value: 3, isUnsigned: true)
!57 = !{!14, !58, !59, !102, !11, !105, !106, !78, !108, !131, !143, !144, !151, !169, !119, !184}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gethostbyname_r_helper", file: !3, line: 54, size: 384, elements: !61)
!61 = !{!62, !100, !101}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "addr_list", scope: !60, file: !3, line: 55, baseType: !63, size: 128)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 128, elements: !98)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_addr_t", file: !44, line: 76, baseType: !66)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_addr", file: !44, line: 69, size: 192, elements: !67)
!67 = !{!68, !97}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "u_addr", scope: !66, file: !44, line: 73, baseType: !69, size: 160)
!69 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !66, file: !44, line: 70, size: 160, elements: !70)
!70 = !{!71, !91}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "ip6", scope: !69, file: !44, line: 71, baseType: !72, size: 160)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip6_addr_t", file: !73, line: 67, baseType: !74)
!73 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip6_addr.h", directory: "/root/.unikraft/apps/redis/build")
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip6_addr", file: !73, line: 59, size: 160, elements: !75)
!75 = !{!76, !86}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !74, file: !73, line: 60, baseType: !77, size: 128)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 128, elements: !84)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32_t", file: !79, line: 129, baseType: !80)
!79 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/arch.h", directory: "/root/.unikraft/apps/redis/build")
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !81, line: 48, baseType: !82)
!81 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !83, line: 79, baseType: !45)
!83 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!84 = !{!85}
!85 = !DISubrange(count: 4)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "zone", scope: !74, file: !73, line: 62, baseType: !87, size: 8, offset: 128)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8_t", file: !79, line: 125, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !81, line: 24, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !83, line: 43, baseType: !90)
!90 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "ip4", scope: !69, file: !44, line: 72, baseType: !92, size: 32)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip4_addr_t", file: !93, line: 57, baseType: !94)
!93 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip4_addr.h", directory: "/root/.unikraft/apps/redis/build")
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip4_addr", file: !93, line: 51, size: 32, elements: !95)
!95 = !{!96}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !94, file: !93, line: 52, baseType: !78, size: 32)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !66, file: !44, line: 75, baseType: !87, size: 8, offset: 160)
!98 = !{!99}
!99 = !DISubrange(count: 2)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !60, file: !3, line: 56, baseType: !65, size: 192, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "aliases", scope: !60, file: !3, line: 57, baseType: !11, size: 64, offset: 320)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_ptr_t", file: !79, line: 135, baseType: !103)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !81, line: 82, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintptr_t", file: !83, line: 232, baseType: !105)
!105 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !81, line: 60, baseType: !107)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !83, line: 105, baseType: !105)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "addrinfo", file: !8, line: 103, size: 384, elements: !110)
!110 = !{!111, !112, !113, !114, !115, !118, !129, !130}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "ai_flags", scope: !109, file: !8, line: 104, baseType: !16, size: 32)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "ai_family", scope: !109, file: !8, line: 105, baseType: !16, size: 32, offset: 32)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "ai_socktype", scope: !109, file: !8, line: 106, baseType: !16, size: 32, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "ai_protocol", scope: !109, file: !8, line: 107, baseType: !16, size: 32, offset: 96)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "ai_addrlen", scope: !109, file: !8, line: 108, baseType: !116, size: 32, offset: 128)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !117, line: 113, baseType: !78)
!117 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/sockets.h", directory: "/root/.unikraft/apps/redis/build")
!118 = !DIDerivedType(tag: DW_TAG_member, name: "ai_addr", scope: !109, file: !8, line: 109, baseType: !119, size: 64, offset: 192)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !117, line: 94, size: 128, elements: !121)
!121 = !{!122, !123, !125}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "sa_len", scope: !120, file: !117, line: 95, baseType: !87, size: 8)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !120, file: !117, line: 96, baseType: !124, size: 8, offset: 8)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !117, line: 63, baseType: !87)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !120, file: !117, line: 97, baseType: !126, size: 112, offset: 16)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 112, elements: !127)
!127 = !{!128}
!128 = !DISubrange(count: 14)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "ai_canonname", scope: !109, file: !8, line: 110, baseType: !11, size: 64, offset: 256)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "ai_next", scope: !109, file: !8, line: 111, baseType: !108, size: 64, offset: 320)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_storage", file: !117, line: 100, size: 224, elements: !133)
!133 = !{!134, !135, !136, !138, !142}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "s2_len", scope: !132, file: !117, line: 101, baseType: !87, size: 8)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "ss_family", scope: !132, file: !117, line: 102, baseType: !124, size: 8, offset: 8)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "s2_data1", scope: !132, file: !117, line: 103, baseType: !137, size: 16, offset: 16)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 16, elements: !98)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "s2_data2", scope: !132, file: !117, line: 104, baseType: !139, size: 96, offset: 32)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 96, elements: !140)
!140 = !{!141}
!141 = !DISubrange(count: 3)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "s2_data3", scope: !132, file: !117, line: 106, baseType: !139, size: 96, offset: 128)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !117, line: 84, size: 224, elements: !146)
!146 = !{!147, !148, !149, !155, !156, !168}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_len", scope: !145, file: !117, line: 85, baseType: !87, size: 8)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !145, file: !117, line: 86, baseType: !124, size: 8, offset: 8)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !145, file: !117, line: 87, baseType: !150, size: 16, offset: 16)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !117, line: 68, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16_t", file: !79, line: 127, baseType: !152)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !81, line: 36, baseType: !153)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !83, line: 57, baseType: !154)
!154 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !145, file: !117, line: 88, baseType: !78, size: 32, offset: 32)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !145, file: !117, line: 89, baseType: !157, size: 128, offset: 64)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !158, line: 62, size: 128, elements: !159)
!158 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/inet.h", directory: "/root/.unikraft/apps/redis/build")
!159 = !{!160}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "un", scope: !157, file: !158, line: 66, baseType: !161, size: 128)
!161 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !157, file: !158, line: 63, size: 128, elements: !162)
!162 = !{!163, !164}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "u32_addr", scope: !161, file: !158, line: 64, baseType: !77, size: 128)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "u8_addr", scope: !161, file: !158, line: 65, baseType: !165, size: 128)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 128, elements: !166)
!166 = !{!167}
!167 = !DISubrange(count: 16)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !145, file: !117, line: 90, baseType: !78, size: 32, offset: 192)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !117, line: 73, size: 128, elements: !171)
!171 = !{!172, !173, !174, !175, !180}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "sin_len", scope: !170, file: !117, line: 74, baseType: !87, size: 8)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !170, file: !117, line: 75, baseType: !124, size: 8, offset: 8)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !170, file: !117, line: 76, baseType: !150, size: 16, offset: 16)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !170, file: !117, line: 77, baseType: !176, size: 32, offset: 32)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !158, line: 58, size: 32, elements: !177)
!177 = !{!178}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !176, file: !158, line: 59, baseType: !179, size: 32)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !158, line: 55, baseType: !78)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !170, file: !117, line: 79, baseType: !181, size: 64, offset: 64)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 64, elements: !182)
!182 = !{!183}
!183 = !DISubrange(count: 8)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!185 = !{!0, !186, !188, !190, !192, !197, !199, !220}
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(name: "s_aliases", scope: !2, file: !3, line: 95, type: !11, isLocal: true, isDefinition: true)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(name: "s_hostent_addr", scope: !2, file: !3, line: 96, type: !65, isLocal: true, isDefinition: true)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(name: "s_phostent_addr", scope: !2, file: !3, line: 97, type: !63, isLocal: true, isDefinition: true)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(name: "s_hostname", scope: !2, file: !3, line: 98, type: !194, isLocal: true, isDefinition: true)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 2056, elements: !195)
!195 = !{!196}
!196 = !DISubrange(count: 257)
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(name: "h_errno", scope: !21, file: !3, line: 62, type: !16, isLocal: false, isDefinition: true)
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(name: "__str", scope: !201, file: !202, line: 198, type: !181, isLocal: true, isDefinition: true)
!201 = distinct !DISubprogram(name: "uk_pr_crit", scope: !202, file: !202, line: 194, type: !203, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !205)
!202 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukdebug/include/uk/print.h", directory: "/root/.unikraft/apps/redis/build")
!203 = !DISubroutineType(types: !204)
!204 = !{null, !19, null}
!205 = !{!206, !207}
!206 = !DILocalVariable(name: "fmt", arg: 1, scope: !201, file: !202, line: 194, type: !19)
!207 = !DILocalVariable(name: "argp", scope: !201, file: !202, line: 196, type: !208)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !209, line: 32, baseType: !210)
!209 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 196, baseType: !211)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 192, elements: !218)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 196, size: 192, elements: !213)
!213 = !{!214, !215, !216, !217}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !212, file: !3, line: 196, baseType: !45, size: 32)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !212, file: !3, line: 196, baseType: !45, size: 32, offset: 32)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !212, file: !3, line: 196, baseType: !58, size: 64, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !212, file: !3, line: 196, baseType: !58, size: 64, offset: 128)
!218 = !{!219}
!219 = !DISubrange(count: 1)
!220 = !DIGlobalVariableExpression(var: !221, expr: !DIExpression())
!221 = distinct !DIGlobalVariable(name: "__str", scope: !201, file: !202, line: 198, type: !181, isLocal: true, isDefinition: true)
!222 = !{!223, !224, !230}
!223 = !DILocalVariable(name: "name", arg: 1, scope: !2, file: !3, line: 88, type: !19)
!224 = !DILocalVariable(name: "err", scope: !2, file: !3, line: 90, type: !225)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "err_t", file: !24, line: 96, baseType: !226)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8_t", file: !79, line: 126, baseType: !227)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !81, line: 20, baseType: !228)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !83, line: 41, baseType: !229)
!229 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!230 = !DILocalVariable(name: "addr", scope: !2, file: !3, line: 91, type: !65)
!231 = !{i32 2, !"Dwarf Version", i32 4}
!232 = !{i32 2, !"Debug Info Version", i32 3}
!233 = !{i32 1, !"wchar_size", i32 4}
!234 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!235 = !DILocation(line: 88, column: 32, scope: !2)
!236 = !DILocation(line: 91, column: 3, scope: !2)
!237 = !DILocation(line: 91, column: 13, scope: !2)
!238 = !DILocation(line: 101, column: 9, scope: !2)
!239 = !DILocation(line: 90, column: 9, scope: !2)
!240 = !DILocation(line: 102, column: 11, scope: !241)
!241 = distinct !DILexicalBlock(scope: !2, file: !3, line: 102, column: 7)
!242 = !DILocation(line: 102, column: 7, scope: !2)
!243 = !DILocation(line: 104, column: 13, scope: !244)
!244 = distinct !DILexicalBlock(scope: !241, file: !3, line: 102, column: 22)
!245 = !{!246, !246, i64 0}
!246 = !{!"int", !247, i64 0}
!247 = !{!"omnipotent char", !248, i64 0}
!248 = !{!"Simple C/C++ TBAA"}
!249 = !DILocation(line: 105, column: 5, scope: !244)
!250 = !DILocation(line: 109, column: 20, scope: !2)
!251 = !{i64 0, i64 16, !252, i64 16, i64 1, !252, i64 0, i64 4, !245, i64 20, i64 1, !252}
!252 = !{!247, !247, i64 0}
!253 = !DILocation(line: 110, column: 22, scope: !2)
!254 = !{!255, !255, i64 0}
!255 = !{!"any pointer", !247, i64 0}
!256 = !DILocation(line: 112, column: 3, scope: !2)
!257 = !DILocation(line: 113, column: 35, scope: !2)
!258 = !DILocation(line: 114, column: 20, scope: !2)
!259 = !{!260, !255, i64 0}
!260 = !{!"hostent", !255, i64 0, !255, i64 8, !246, i64 16, !246, i64 20, !255, i64 24}
!261 = !DILocation(line: 115, column: 13, scope: !2)
!262 = !DILocation(line: 116, column: 23, scope: !2)
!263 = !{!260, !255, i64 8}
!264 = !DILocation(line: 117, column: 24, scope: !2)
!265 = !{!260, !246, i64 16}
!266 = !DILocation(line: 118, column: 22, scope: !2)
!267 = !{!260, !246, i64 20}
!268 = !DILocation(line: 119, column: 25, scope: !2)
!269 = !{!260, !255, i64 24}
!270 = !DILocation(line: 142, column: 3, scope: !2)
!271 = !DILocation(line: 0, scope: !2)
!272 = !DILocation(line: 144, column: 1, scope: !2)
!273 = distinct !DISubprogram(name: "lwip_gethostbyname_r", scope: !3, file: !3, line: 163, type: !274, isLocal: false, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !281)
!274 = !DISubroutineType(types: !275)
!275 = !{!16, !19, !6, !11, !276, !280, !184}
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !277, line: 40, baseType: !278)
!277 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !279, line: 129, baseType: !105)
!279 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!281 = !{!282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292}
!282 = !DILocalVariable(name: "name", arg: 1, scope: !273, file: !3, line: 163, type: !19)
!283 = !DILocalVariable(name: "ret", arg: 2, scope: !273, file: !3, line: 163, type: !6)
!284 = !DILocalVariable(name: "buf", arg: 3, scope: !273, file: !3, line: 163, type: !11)
!285 = !DILocalVariable(name: "buflen", arg: 4, scope: !273, file: !3, line: 164, type: !276)
!286 = !DILocalVariable(name: "result", arg: 5, scope: !273, file: !3, line: 164, type: !280)
!287 = !DILocalVariable(name: "h_errnop", arg: 6, scope: !273, file: !3, line: 164, type: !184)
!288 = !DILocalVariable(name: "err", scope: !273, file: !3, line: 166, type: !225)
!289 = !DILocalVariable(name: "h", scope: !273, file: !3, line: 167, type: !59)
!290 = !DILocalVariable(name: "hostname", scope: !273, file: !3, line: 168, type: !11)
!291 = !DILocalVariable(name: "namelen", scope: !273, file: !3, line: 169, type: !276)
!292 = !DILocalVariable(name: "lh_errno", scope: !273, file: !3, line: 170, type: !16)
!293 = !DILocation(line: 163, column: 34, scope: !273)
!294 = !DILocation(line: 163, column: 56, scope: !273)
!295 = !DILocation(line: 163, column: 67, scope: !273)
!296 = !DILocation(line: 164, column: 29, scope: !273)
!297 = !DILocation(line: 164, column: 54, scope: !273)
!298 = !DILocation(line: 164, column: 67, scope: !273)
!299 = !DILocation(line: 170, column: 3, scope: !273)
!300 = !DILocation(line: 172, column: 16, scope: !301)
!301 = distinct !DILexicalBlock(scope: !273, file: !3, line: 172, column: 7)
!302 = !DILocation(line: 172, column: 7, scope: !273)
!303 = !DILocation(line: 177, column: 14, scope: !304)
!304 = distinct !DILexicalBlock(scope: !273, file: !3, line: 177, column: 7)
!305 = !DILocation(line: 177, column: 7, scope: !273)
!306 = !DILocation(line: 179, column: 15, scope: !307)
!307 = distinct !DILexicalBlock(scope: !304, file: !3, line: 177, column: 23)
!308 = !DILocation(line: 180, column: 5, scope: !307)
!309 = !DILocation(line: 183, column: 11, scope: !273)
!310 = !DILocation(line: 184, column: 13, scope: !311)
!311 = distinct !DILexicalBlock(scope: !273, file: !3, line: 184, column: 7)
!312 = !DILocation(line: 184, column: 30, scope: !311)
!313 = !DILocation(line: 184, column: 22, scope: !311)
!314 = !DILocation(line: 184, column: 47, scope: !311)
!315 = !DILocation(line: 186, column: 15, scope: !316)
!316 = distinct !DILexicalBlock(scope: !311, file: !3, line: 184, column: 57)
!317 = !DILocation(line: 187, column: 5, scope: !316)
!318 = !DILocation(line: 190, column: 13, scope: !273)
!319 = !DILocation(line: 169, column: 10, scope: !273)
!320 = !DILocation(line: 191, column: 55, scope: !321)
!321 = distinct !DILexicalBlock(scope: !273, file: !3, line: 191, column: 7)
!322 = !DILocation(line: 191, column: 14, scope: !321)
!323 = !DILocation(line: 191, column: 7, scope: !273)
!324 = !DILocation(line: 193, column: 15, scope: !325)
!325 = distinct !DILexicalBlock(scope: !321, file: !3, line: 191, column: 94)
!326 = !DILocation(line: 194, column: 5, scope: !325)
!327 = !DILocation(line: 198, column: 26, scope: !273)
!328 = !DILocation(line: 168, column: 9, scope: !273)
!329 = !DILocation(line: 201, column: 9, scope: !273)
!330 = !DILocation(line: 166, column: 9, scope: !273)
!331 = !DILocation(line: 202, column: 11, scope: !332)
!332 = distinct !DILexicalBlock(scope: !273, file: !3, line: 202, column: 7)
!333 = !DILocation(line: 202, column: 7, scope: !273)
!334 = !DILocation(line: 204, column: 15, scope: !335)
!335 = distinct !DILexicalBlock(scope: !332, file: !3, line: 202, column: 22)
!336 = !DILocation(line: 205, column: 5, scope: !335)
!337 = !DILocation(line: 167, column: 34, scope: !273)
!338 = !DILocation(line: 209, column: 3, scope: !273)
!339 = !DILocation(line: 210, column: 3, scope: !273)
!340 = !DILocation(line: 210, column: 21, scope: !273)
!341 = !DILocation(line: 213, column: 19, scope: !273)
!342 = !DILocation(line: 214, column: 3, scope: !273)
!343 = !DILocation(line: 214, column: 19, scope: !273)
!344 = !DILocation(line: 215, column: 6, scope: !273)
!345 = !DILocation(line: 215, column: 14, scope: !273)
!346 = !{!347, !255, i64 40}
!347 = !{!"gethostbyname_r_helper", !247, i64 0, !348, i64 16, !255, i64 40}
!348 = !{!"ip_addr", !247, i64 0, !247, i64 20}
!349 = !DILocation(line: 216, column: 8, scope: !273)
!350 = !DILocation(line: 216, column: 15, scope: !273)
!351 = !DILocation(line: 217, column: 8, scope: !273)
!352 = !DILocation(line: 217, column: 18, scope: !273)
!353 = !DILocation(line: 218, column: 8, scope: !273)
!354 = !DILocation(line: 218, column: 19, scope: !273)
!355 = !DILocation(line: 219, column: 8, scope: !273)
!356 = !DILocation(line: 219, column: 17, scope: !273)
!357 = !DILocation(line: 220, column: 8, scope: !273)
!358 = !DILocation(line: 220, column: 20, scope: !273)
!359 = !DILocation(line: 223, column: 11, scope: !273)
!360 = !DILocation(line: 226, column: 3, scope: !273)
!361 = !DILocation(line: 0, scope: !273)
!362 = !DILocation(line: 227, column: 1, scope: !273)
!363 = distinct !DISubprogram(name: "lwip_freeaddrinfo", scope: !3, file: !3, line: 237, type: !364, isLocal: false, isDefinition: true, scopeLine: 238, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !366)
!364 = !DISubroutineType(types: !365)
!365 = !{null, !108}
!366 = !{!367, !368}
!367 = !DILocalVariable(name: "ai", arg: 1, scope: !363, file: !3, line: 237, type: !108)
!368 = !DILocalVariable(name: "next", scope: !363, file: !3, line: 239, type: !108)
!369 = !DILocation(line: 237, column: 36, scope: !363)
!370 = !DILocation(line: 241, column: 13, scope: !363)
!371 = !DILocation(line: 241, column: 3, scope: !363)
!372 = !DILocation(line: 243, column: 13, scope: !373)
!373 = distinct !DILexicalBlock(scope: !363, file: !3, line: 241, column: 22)
!374 = !DILocalVariable(name: "a", arg: 1, scope: !375, file: !376, line: 237, type: !379)
!375 = distinct !DISubprogram(name: "uk_free", scope: !376, file: !376, line: 237, type: !377, isLocal: true, isDefinition: true, scopeLine: 238, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !433)
!376 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukalloc/include/uk/alloc.h", directory: "/root/.unikraft/apps/redis/build")
!377 = !DISubroutineType(types: !378)
!378 = !{null, !379, !58}
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_alloc", file: !376, line: 77, size: 832, elements: !381)
!381 = !{!382, !389, !394, !399, !405, !407, !410, !411, !412, !417, !422, !427, !428, !429}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "malloc", scope: !380, file: !376, line: 79, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_malloc_func_t", file: !376, line: 54, baseType: !384)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DISubroutineType(types: !386)
!386 = !{!58, !379, !387}
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !388, line: 58, baseType: !105)
!388 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!389 = !DIDerivedType(tag: DW_TAG_member, name: "calloc", scope: !380, file: !376, line: 80, baseType: !390, size: 64, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_calloc_func_t", file: !376, line: 56, baseType: !391)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DISubroutineType(types: !393)
!393 = !{!58, !379, !387, !387}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "realloc", scope: !380, file: !376, line: 81, baseType: !395, size: 64, offset: 128)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_realloc_func_t", file: !376, line: 62, baseType: !396)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DISubroutineType(types: !398)
!398 = !{!58, !379, !58, !387}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "posix_memalign", scope: !380, file: !376, line: 82, baseType: !400, size: 64, offset: 192)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_posix_memalign_func_t", file: !376, line: 58, baseType: !401)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DISubroutineType(types: !403)
!403 = !{!16, !379, !404, !387, !387}
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "memalign", scope: !380, file: !376, line: 83, baseType: !406, size: 64, offset: 256)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_memalign_func_t", file: !376, line: 60, baseType: !391)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !380, file: !376, line: 84, baseType: !408, size: 64, offset: 320)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_free_func_t", file: !376, line: 64, baseType: !409)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "free_backend", scope: !380, file: !376, line: 87, baseType: !408, size: 64, offset: 384)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_backend", scope: !380, file: !376, line: 88, baseType: !383, size: 64, offset: 448)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "palloc", scope: !380, file: !376, line: 92, baseType: !413, size: 64, offset: 512)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_palloc_func_t", file: !376, line: 66, baseType: !414)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DISubroutineType(types: !416)
!416 = !{!58, !379, !105}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "pfree", scope: !380, file: !376, line: 93, baseType: !418, size: 64, offset: 576)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_pfree_func_t", file: !376, line: 68, baseType: !419)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DISubroutineType(types: !421)
!421 = !{null, !379, !58, !105}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "addmem", scope: !380, file: !376, line: 99, baseType: !423, size: 64, offset: 640)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_addmem_func_t", file: !376, line: 70, baseType: !424)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DISubroutineType(types: !426)
!426 = !{!16, !379, !58, !387}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !380, file: !376, line: 100, baseType: !387, size: 64, offset: 704)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !380, file: !376, line: 103, baseType: !379, size: 64, offset: 768)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !380, file: !376, line: 104, baseType: !430, offset: 832)
!430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, elements: !431)
!431 = !{!432}
!432 = !DISubrange(count: -1)
!433 = !{!374, !434}
!434 = !DILocalVariable(name: "ptr", arg: 2, scope: !375, file: !376, line: 237, type: !58)
!435 = !DILocation(line: 237, column: 45, scope: !375, inlinedAt: !436)
!436 = distinct !DILocation(line: 243, column: 5, scope: !373)
!437 = !DILocalVariable(name: "a", arg: 1, scope: !438, file: !376, line: 231, type: !379)
!438 = distinct !DISubprogram(name: "uk_do_free", scope: !376, file: !376, line: 231, type: !377, isLocal: true, isDefinition: true, scopeLine: 232, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !439)
!439 = !{!437, !440}
!440 = !DILocalVariable(name: "ptr", arg: 2, scope: !438, file: !376, line: 231, type: !58)
!441 = !DILocation(line: 231, column: 48, scope: !438, inlinedAt: !442)
!442 = distinct !DILocation(line: 239, column: 2, scope: !375, inlinedAt: !436)
!443 = !DILocation(line: 233, column: 2, scope: !444, inlinedAt: !442)
!444 = distinct !DILexicalBlock(scope: !445, file: !376, line: 233, column: 2)
!445 = distinct !DILexicalBlock(scope: !438, file: !376, line: 233, column: 2)
!446 = !DILocation(line: 233, column: 2, scope: !445, inlinedAt: !442)
!447 = !{!"branch_weights", i32 1, i32 2000}
!448 = !DILocation(line: 233, column: 2, scope: !449, inlinedAt: !442)
!449 = distinct !DILexicalBlock(scope: !444, file: !376, line: 233, column: 2)
!450 = !DILocation(line: 243, column: 34, scope: !373)
!451 = !DILocation(line: 231, column: 57, scope: !438, inlinedAt: !442)
!452 = !DILocation(line: 237, column: 54, scope: !375, inlinedAt: !436)
!453 = !DILocation(line: 242, column: 16, scope: !373)
!454 = !{!455, !255, i64 40}
!455 = !{!"addrinfo", !246, i64 0, !246, i64 4, !246, i64 8, !246, i64 12, !246, i64 16, !255, i64 24, !255, i64 32, !255, i64 40}
!456 = !DILocation(line: 239, column: 20, scope: !363)
!457 = !DILocation(line: 234, column: 5, scope: !438, inlinedAt: !442)
!458 = !DILocation(line: 234, column: 2, scope: !438, inlinedAt: !442)
!459 = distinct !{!459, !371, !460}
!460 = !DILocation(line: 245, column: 3, scope: !363)
!461 = !DILocation(line: 246, column: 1, scope: !363)
!462 = distinct !DISubprogram(name: "lwip_getaddrinfo", scope: !3, file: !3, line: 270, type: !463, isLocal: false, isDefinition: true, scopeLine: 272, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !468)
!463 = !DISubroutineType(types: !464)
!464 = !{!16, !19, !19, !465, !467}
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!468 = !{!469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !489, !490, !495, !498}
!469 = !DILocalVariable(name: "nodename", arg: 1, scope: !462, file: !3, line: 270, type: !19)
!470 = !DILocalVariable(name: "servname", arg: 2, scope: !462, file: !3, line: 270, type: !19)
!471 = !DILocalVariable(name: "hints", arg: 3, scope: !462, file: !3, line: 271, type: !465)
!472 = !DILocalVariable(name: "res", arg: 4, scope: !462, file: !3, line: 271, type: !467)
!473 = !DILocalVariable(name: "err", scope: !462, file: !3, line: 273, type: !225)
!474 = !DILocalVariable(name: "addr", scope: !462, file: !3, line: 274, type: !65)
!475 = !DILocalVariable(name: "ai", scope: !462, file: !3, line: 275, type: !108)
!476 = !DILocalVariable(name: "sa", scope: !462, file: !3, line: 276, type: !131)
!477 = !DILocalVariable(name: "port_nr", scope: !462, file: !3, line: 277, type: !16)
!478 = !DILocalVariable(name: "total_size", scope: !462, file: !3, line: 278, type: !276)
!479 = !DILocalVariable(name: "namelen", scope: !462, file: !3, line: 279, type: !276)
!480 = !DILocalVariable(name: "ai_family", scope: !462, file: !3, line: 280, type: !16)
!481 = !DILocalVariable(name: "tid", scope: !482, file: !3, line: 309, type: !80)
!482 = distinct !DILexicalBlock(scope: !483, file: !3, line: 309, column: 5)
!483 = distinct !DILexicalBlock(scope: !484, file: !3, line: 309, column: 5)
!484 = distinct !DILexicalBlock(scope: !485, file: !3, line: 309, column: 5)
!485 = distinct !DILexicalBlock(scope: !486, file: !3, line: 309, column: 5)
!486 = distinct !DILexicalBlock(scope: !487, file: !3, line: 309, column: 5)
!487 = distinct !DILexicalBlock(scope: !488, file: !3, line: 306, column: 25)
!488 = distinct !DILexicalBlock(scope: !462, file: !3, line: 306, column: 7)
!489 = !DILocalVariable(name: "_ret", scope: !482, file: !3, line: 309, type: !106)
!490 = !DILocalVariable(name: "type", scope: !491, file: !3, line: 331, type: !87)
!491 = distinct !DILexicalBlock(scope: !492, file: !3, line: 328, column: 12)
!492 = distinct !DILexicalBlock(scope: !493, file: !3, line: 317, column: 9)
!493 = distinct !DILexicalBlock(scope: !494, file: !3, line: 315, column: 25)
!494 = distinct !DILexicalBlock(scope: !462, file: !3, line: 315, column: 7)
!495 = !DILocalVariable(name: "sa6", scope: !496, file: !3, line: 374, type: !144)
!496 = distinct !DILexicalBlock(scope: !497, file: !3, line: 372, column: 27)
!497 = distinct !DILexicalBlock(scope: !462, file: !3, line: 372, column: 7)
!498 = !DILocalVariable(name: "sa4", scope: !499, file: !3, line: 385, type: !169)
!499 = distinct !DILexicalBlock(scope: !497, file: !3, line: 383, column: 10)
!500 = !DILocation(line: 270, column: 30, scope: !462)
!501 = !DILocation(line: 270, column: 52, scope: !462)
!502 = !DILocation(line: 271, column: 41, scope: !462)
!503 = !DILocation(line: 271, column: 66, scope: !462)
!504 = !DILocation(line: 274, column: 3, scope: !462)
!505 = !DILocation(line: 276, column: 28, scope: !462)
!506 = !DILocation(line: 277, column: 3, scope: !462)
!507 = !DILocation(line: 277, column: 7, scope: !462)
!508 = !DILocation(line: 279, column: 10, scope: !462)
!509 = !DILocation(line: 282, column: 11, scope: !510)
!510 = distinct !DILexicalBlock(scope: !462, file: !3, line: 282, column: 7)
!511 = !DILocation(line: 282, column: 7, scope: !462)
!512 = !DILocation(line: 285, column: 8, scope: !462)
!513 = !DILocation(line: 286, column: 17, scope: !514)
!514 = distinct !DILexicalBlock(scope: !462, file: !3, line: 286, column: 7)
!515 = !DILocation(line: 286, column: 39, scope: !514)
!516 = !DILocation(line: 286, column: 26, scope: !514)
!517 = !DILocation(line: 290, column: 13, scope: !518)
!518 = distinct !DILexicalBlock(scope: !462, file: !3, line: 290, column: 7)
!519 = !DILocation(line: 290, column: 7, scope: !462)
!520 = !DILocation(line: 291, column: 24, scope: !521)
!521 = distinct !DILexicalBlock(scope: !518, file: !3, line: 290, column: 22)
!522 = !{!455, !246, i64 4}
!523 = !DILocation(line: 280, column: 7, scope: !462)
!524 = !DILocation(line: 294, column: 9, scope: !525)
!525 = distinct !DILexicalBlock(scope: !521, file: !3, line: 292, column: 9)
!526 = !DILocation(line: 0, scope: !527)
!527 = distinct !DILexicalBlock(scope: !518, file: !3, line: 302, column: 10)
!528 = !DILocation(line: 306, column: 7, scope: !462)
!529 = !DILocation(line: 120, column: 2, scope: !530, inlinedAt: !536)
!530 = distinct !DISubprogram(name: "ukarch_read_sp", scope: !531, file: !531, line: 116, type: !532, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !534)
!531 = !DIFile(filename: "/root/.unikraft/unikraft/arch/x86/x86_64/include/uk/asm/lcpu.h", directory: "/root/.unikraft/apps/redis/build")
!532 = !DISubroutineType(types: !533)
!533 = !{!105}
!534 = !{!535}
!535 = !DILocalVariable(name: "sp", scope: !530, file: !531, line: 118, type: !105)
!536 = distinct !DILocation(line: 309, column: 5, scope: !485)
!537 = !{i32 531476}
!538 = !DILocation(line: 118, column: 16, scope: !530, inlinedAt: !536)
!539 = !DILocation(line: 309, column: 5, scope: !485)
!540 = !DILocation(line: 120, column: 2, scope: !530, inlinedAt: !541)
!541 = distinct !DILocation(line: 309, column: 5, scope: !485)
!542 = !DILocation(line: 118, column: 16, scope: !530, inlinedAt: !541)
!543 = !DILocation(line: 309, column: 5, scope: !486)
!544 = !DILocation(line: 309, column: 5, scope: !545)
!545 = distinct !DILexicalBlock(scope: !485, file: !3, line: 309, column: 5)
!546 = !DILocation(line: 120, column: 2, scope: !530, inlinedAt: !547)
!547 = distinct !DILocation(line: 49, column: 21, scope: !548, inlinedAt: !554)
!548 = distinct !DISubprogram(name: "uk_thread_get_tid", scope: !549, file: !549, line: 47, type: !550, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !552)
!549 = !DIFile(filename: "/root/.unikraft/unikraft/lib/flexos-core/include/flexos/impl/intelpku-impl.h", directory: "/root/.unikraft/apps/redis/build")
!550 = !DISubroutineType(types: !551)
!551 = !{!16}
!552 = !{!553}
!553 = !DILocalVariable(name: "sp", scope: !548, file: !549, line: 49, type: !105)
!554 = distinct !DILocation(line: 309, column: 5, scope: !482)
!555 = !DILocation(line: 118, column: 16, scope: !530, inlinedAt: !547)
!556 = !DILocation(line: 49, column: 16, scope: !548, inlinedAt: !554)
!557 = !DILocation(line: 50, column: 19, scope: !548, inlinedAt: !554)
!558 = !DILocation(line: 50, column: 11, scope: !548, inlinedAt: !554)
!559 = !DILocation(line: 50, column: 9, scope: !548, inlinedAt: !554)
!560 = !DILocation(line: 309, column: 5, scope: !482)
!561 = !{i32 -2146180476, i32 -2146180463, i32 -2146180438, i32 -2146180414, i32 -2146180389, i32 -2146180314, i32 -2146180289, i32 -2146180145, i32 -2146177008, i32 -2146176919, i32 -2146176798, i32 -2146176703, i32 -2146176602, i32 -2146176575, i32 -2146176492, i32 -2146176403, i32 -2146176282, i32 -2146176182, i32 -2146176076, i32 -2146175968, i32 -2146179857, i32 -2146179804, i32 -2146179773, i32 -2146179742, i32 -2146179721, i32 -2146179699, i32 -2146179650, i32 -2146179629, i32 -2146175885, i32 -2146175796, i32 -2146175675, i32 -2146175576, i32 -2146175470, i32 -2146175368, i32 -2146175335, i32 -2146175262, i32 -2146175194, i32 -2146179325, i32 -2146179266, i32 -2146179213, i32 -2146179182, i32 -2146179151, i32 -2146179130, i32 -2146179108, i32 -2146179059, i32 -2146179038, i32 -2146175154, i32 -2146175065, i32 -2146174944, i32 -2146174845, i32 -2146174739, i32 -2146174637, i32 -2146174604, i32 -2146174521, i32 -2146174432, i32 -2146174311, i32 -2146174211, i32 -2146174185, i32 -2146174082, i32 -2146174056, i32 -2146178780, i32 -2146178713, i32 -2146178688, i32 -2146178624, i32 -2146178542, i32 -2146178519, i32 -2146178494, i32 -2146178469}
!562 = !DILocation(line: 309, column: 5, scope: !563)
!563 = distinct !DILexicalBlock(scope: !564, file: !3, line: 309, column: 5)
!564 = distinct !DILexicalBlock(scope: !482, file: !3, line: 309, column: 5)
!565 = !{i32 -2146177488, i32 -2146177471}
!566 = !DILocation(line: 310, column: 10, scope: !567)
!567 = distinct !DILexicalBlock(scope: !487, file: !3, line: 310, column: 9)
!568 = !DILocation(line: 310, column: 24, scope: !567)
!569 = !DILocation(line: 315, column: 16, scope: !494)
!570 = !DILocation(line: 315, column: 7, scope: !462)
!571 = !DILocation(line: 317, column: 25, scope: !492)
!572 = !DILocation(line: 317, column: 36, scope: !492)
!573 = !{!455, !246, i64 0}
!574 = !DILocation(line: 317, column: 45, scope: !492)
!575 = !DILocation(line: 317, column: 9, scope: !493)
!576 = !DILocation(line: 274, column: 13, scope: !462)
!577 = !DILocation(line: 319, column: 12, scope: !578)
!578 = distinct !DILexicalBlock(scope: !579, file: !3, line: 319, column: 11)
!579 = distinct !DILexicalBlock(scope: !492, file: !3, line: 317, column: 64)
!580 = !DILocation(line: 319, column: 11, scope: !579)
!581 = !DILocation(line: 323, column: 12, scope: !582)
!582 = distinct !DILexicalBlock(scope: !579, file: !3, line: 323, column: 11)
!583 = !{!348, !247, i64 20}
!584 = !DILocation(line: 323, column: 44, scope: !582)
!585 = !DILocation(line: 323, column: 31, scope: !582)
!586 = !DILocation(line: 324, column: 12, scope: !582)
!587 = !DILocation(line: 324, column: 44, scope: !582)
!588 = !DILocation(line: 324, column: 31, scope: !582)
!589 = !DILocation(line: 331, column: 12, scope: !491)
!590 = !DILocation(line: 332, column: 11, scope: !491)
!591 = !DILocation(line: 338, column: 13, scope: !491)
!592 = !DILocation(line: 273, column: 9, scope: !462)
!593 = !DILocation(line: 339, column: 15, scope: !594)
!594 = distinct !DILexicalBlock(scope: !491, file: !3, line: 339, column: 11)
!595 = !DILocation(line: 345, column: 25, scope: !596)
!596 = distinct !DILexicalBlock(scope: !597, file: !3, line: 345, column: 9)
!597 = distinct !DILexicalBlock(scope: !494, file: !3, line: 343, column: 10)
!598 = !DILocation(line: 345, column: 36, scope: !596)
!599 = !DILocation(line: 345, column: 45, scope: !596)
!600 = !DILocation(line: 345, column: 9, scope: !597)
!601 = !DILocation(line: 346, column: 7, scope: !602)
!602 = distinct !DILexicalBlock(scope: !603, file: !3, line: 346, column: 7)
!603 = distinct !DILexicalBlock(scope: !604, file: !3, line: 346, column: 7)
!604 = distinct !DILexicalBlock(scope: !596, file: !3, line: 345, column: 60)
!605 = !DILocation(line: 346, column: 7, scope: !606)
!606 = distinct !DILexicalBlock(scope: !607, file: !3, line: 346, column: 7)
!607 = distinct !DILexicalBlock(scope: !602, file: !3, line: 346, column: 7)
!608 = !DILocation(line: 346, column: 7, scope: !603)
!609 = !DILocation(line: 346, column: 7, scope: !610)
!610 = distinct !DILexicalBlock(scope: !607, file: !3, line: 346, column: 7)
!611 = !DILocation(line: 346, column: 7, scope: !607)
!612 = !DILocation(line: 346, column: 7, scope: !613)
!613 = distinct !DILexicalBlock(scope: !614, file: !3, line: 346, column: 7)
!614 = distinct !DILexicalBlock(scope: !602, file: !3, line: 346, column: 7)
!615 = !DILocation(line: 346, column: 7, scope: !616)
!616 = distinct !DILexicalBlock(scope: !614, file: !3, line: 346, column: 7)
!617 = !DILocation(line: 348, column: 7, scope: !618)
!618 = distinct !DILexicalBlock(scope: !619, file: !3, line: 348, column: 7)
!619 = distinct !DILexicalBlock(scope: !620, file: !3, line: 348, column: 7)
!620 = distinct !DILexicalBlock(scope: !596, file: !3, line: 347, column: 12)
!621 = !DILocation(line: 348, column: 7, scope: !619)
!622 = !DILocation(line: 348, column: 7, scope: !623)
!623 = distinct !DILexicalBlock(scope: !624, file: !3, line: 348, column: 7)
!624 = distinct !DILexicalBlock(scope: !618, file: !3, line: 348, column: 7)
!625 = !DILocation(line: 348, column: 7, scope: !626)
!626 = distinct !DILexicalBlock(scope: !624, file: !3, line: 348, column: 7)
!627 = !DILocation(line: 348, column: 7, scope: !624)
!628 = !DILocation(line: 348, column: 7, scope: !629)
!629 = distinct !DILexicalBlock(scope: !630, file: !3, line: 348, column: 7)
!630 = distinct !DILexicalBlock(scope: !618, file: !3, line: 348, column: 7)
!631 = !DILocation(line: 348, column: 7, scope: !630)
!632 = !DILocation(line: 348, column: 7, scope: !633)
!633 = distinct !DILexicalBlock(scope: !630, file: !3, line: 348, column: 7)
!634 = !DILocation(line: 278, column: 10, scope: !462)
!635 = !DILocation(line: 354, column: 15, scope: !636)
!636 = distinct !DILexicalBlock(scope: !637, file: !3, line: 353, column: 25)
!637 = distinct !DILexicalBlock(scope: !462, file: !3, line: 353, column: 7)
!638 = !DILocation(line: 355, column: 17, scope: !639)
!639 = distinct !DILexicalBlock(scope: !636, file: !3, line: 355, column: 9)
!640 = !DILocation(line: 355, column: 9, scope: !636)
!641 = !DILocation(line: 360, column: 16, scope: !636)
!642 = !DILocation(line: 361, column: 3, scope: !636)
!643 = !DILocation(line: 0, scope: !462)
!644 = !DILocation(line: 365, column: 38, scope: !462)
!645 = !DILocalVariable(name: "a", arg: 1, scope: !646, file: !376, line: 157, type: !379)
!646 = distinct !DISubprogram(name: "uk_malloc", scope: !376, file: !376, line: 157, type: !385, isLocal: true, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !647)
!647 = !{!645, !648}
!648 = !DILocalVariable(name: "size", arg: 2, scope: !646, file: !376, line: 157, type: !387)
!649 = !DILocation(line: 157, column: 48, scope: !646, inlinedAt: !650)
!650 = distinct !DILocation(line: 365, column: 28, scope: !462)
!651 = !DILocation(line: 157, column: 58, scope: !646, inlinedAt: !650)
!652 = !DILocation(line: 159, column: 6, scope: !653, inlinedAt: !650)
!653 = distinct !DILexicalBlock(scope: !646, file: !376, line: 159, column: 6)
!654 = !DILocation(line: 159, column: 6, scope: !646, inlinedAt: !650)
!655 = !DILocation(line: 160, column: 3, scope: !656, inlinedAt: !650)
!656 = distinct !DILexicalBlock(scope: !653, file: !376, line: 159, column: 20)
!657 = !DILocation(line: 160, column: 9, scope: !656, inlinedAt: !650)
!658 = !DILocation(line: 275, column: 20, scope: !462)
!659 = !DILocation(line: 366, column: 7, scope: !462)
!660 = !DILocalVariable(name: "a", arg: 1, scope: !661, file: !376, line: 151, type: !379)
!661 = distinct !DISubprogram(name: "uk_do_malloc", scope: !376, file: !376, line: 151, type: !385, isLocal: true, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !662)
!662 = !{!660, !663}
!663 = !DILocalVariable(name: "size", arg: 2, scope: !661, file: !376, line: 151, type: !387)
!664 = !DILocation(line: 151, column: 51, scope: !661, inlinedAt: !665)
!665 = distinct !DILocation(line: 163, column: 9, scope: !646, inlinedAt: !650)
!666 = !DILocation(line: 151, column: 61, scope: !661, inlinedAt: !665)
!667 = !DILocation(line: 154, column: 12, scope: !661, inlinedAt: !665)
!668 = !DILocation(line: 154, column: 9, scope: !661, inlinedAt: !665)
!669 = !DILocation(line: 366, column: 10, scope: !670)
!670 = distinct !DILexicalBlock(scope: !462, file: !3, line: 366, column: 7)
!671 = !DILocation(line: 369, column: 3, scope: !462)
!672 = !DILocation(line: 371, column: 55, scope: !462)
!673 = !DILocation(line: 372, column: 7, scope: !497)
!674 = !DILocation(line: 0, scope: !499)
!675 = !DILocation(line: 372, column: 7, scope: !462)
!676 = !DILocation(line: 374, column: 26, scope: !496)
!677 = !DILocation(line: 376, column: 5, scope: !678)
!678 = distinct !DILexicalBlock(scope: !496, file: !3, line: 376, column: 5)
!679 = !DILocation(line: 377, column: 10, scope: !496)
!680 = !DILocation(line: 377, column: 22, scope: !496)
!681 = !{!682, !247, i64 1}
!682 = !{!"sockaddr_in6", !247, i64 0, !247, i64 1, !683, i64 2, !246, i64 4, !684, i64 8, !246, i64 24}
!683 = !{!"short", !247, i64 0}
!684 = !{!"in6_addr", !247, i64 0}
!685 = !DILocation(line: 378, column: 19, scope: !496)
!686 = !{!682, !247, i64 0}
!687 = !DILocation(line: 379, column: 40, scope: !496)
!688 = !DILocation(line: 379, column: 33, scope: !496)
!689 = !DILocation(line: 379, column: 22, scope: !496)
!690 = !DILocation(line: 379, column: 10, scope: !496)
!691 = !DILocation(line: 379, column: 20, scope: !496)
!692 = !{!682, !683, i64 2}
!693 = !DILocation(line: 380, column: 26, scope: !496)
!694 = !DILocation(line: 380, column: 10, scope: !496)
!695 = !DILocation(line: 380, column: 24, scope: !496)
!696 = !{!682, !246, i64 24}
!697 = !DILocation(line: 383, column: 3, scope: !496)
!698 = !DILocation(line: 385, column: 25, scope: !499)
!699 = !DILocation(line: 387, column: 5, scope: !499)
!700 = !{!701, !246, i64 4}
!701 = !{!"sockaddr_in", !247, i64 0, !247, i64 1, !683, i64 2, !702, i64 4, !247, i64 8}
!702 = !{!"in_addr", !246, i64 0}
!703 = !DILocation(line: 388, column: 10, scope: !499)
!704 = !DILocation(line: 388, column: 21, scope: !499)
!705 = !{!701, !247, i64 1}
!706 = !DILocation(line: 389, column: 18, scope: !499)
!707 = !{!701, !247, i64 0}
!708 = !DILocation(line: 390, column: 39, scope: !499)
!709 = !DILocation(line: 390, column: 32, scope: !499)
!710 = !DILocation(line: 390, column: 21, scope: !499)
!711 = !DILocation(line: 390, column: 10, scope: !499)
!712 = !DILocation(line: 390, column: 19, scope: !499)
!713 = !{!701, !683, i64 2}
!714 = !DILocation(line: 0, scope: !496)
!715 = !DILocation(line: 396, column: 7, scope: !462)
!716 = !DILocation(line: 398, column: 30, scope: !717)
!717 = distinct !DILexicalBlock(scope: !718, file: !3, line: 396, column: 22)
!718 = distinct !DILexicalBlock(scope: !462, file: !3, line: 396, column: 7)
!719 = !{!455, !246, i64 8}
!720 = !DILocation(line: 398, column: 9, scope: !717)
!721 = !DILocation(line: 398, column: 21, scope: !717)
!722 = !DILocation(line: 399, column: 30, scope: !717)
!723 = !{!455, !246, i64 12}
!724 = !DILocation(line: 399, column: 9, scope: !717)
!725 = !DILocation(line: 399, column: 21, scope: !717)
!726 = !DILocation(line: 400, column: 3, scope: !717)
!727 = !DILocation(line: 401, column: 7, scope: !462)
!728 = !DILocation(line: 403, column: 62, scope: !729)
!729 = distinct !DILexicalBlock(scope: !730, file: !3, line: 401, column: 25)
!730 = distinct !DILexicalBlock(scope: !462, file: !3, line: 401, column: 7)
!731 = !DILocation(line: 403, column: 9, scope: !729)
!732 = !DILocation(line: 403, column: 22, scope: !729)
!733 = !{!455, !255, i64 32}
!734 = !DILocation(line: 404, column: 5, scope: !729)
!735 = !DILocation(line: 405, column: 9, scope: !729)
!736 = !DILocation(line: 405, column: 5, scope: !729)
!737 = !DILocation(line: 405, column: 31, scope: !729)
!738 = !DILocation(line: 406, column: 3, scope: !729)
!739 = !DILocation(line: 407, column: 7, scope: !462)
!740 = !DILocation(line: 407, column: 18, scope: !462)
!741 = !{!455, !246, i64 16}
!742 = !DILocation(line: 408, column: 7, scope: !462)
!743 = !DILocation(line: 408, column: 15, scope: !462)
!744 = !{!455, !255, i64 24}
!745 = !DILocation(line: 410, column: 8, scope: !462)
!746 = !DILocation(line: 412, column: 3, scope: !462)
!747 = !DILocation(line: 0, scope: !748)
!748 = distinct !DILexicalBlock(scope: !594, file: !3, line: 339, column: 26)
!749 = !DILocation(line: 413, column: 1, scope: !462)
!750 = !DILocation(line: 194, column: 43, scope: !201)
!751 = !DILocation(line: 196, column: 2, scope: !201)
!752 = !DILocation(line: 196, column: 10, scope: !201)
!753 = !DILocation(line: 197, column: 2, scope: !201)
!754 = !DILocation(line: 198, column: 2, scope: !755)
!755 = distinct !DILexicalBlock(scope: !756, file: !202, line: 198, column: 2)
!756 = distinct !DILexicalBlock(scope: !201, file: !202, line: 198, column: 2)
!757 = !DILocation(line: 199, column: 2, scope: !201)
!758 = !DILocation(line: 200, column: 1, scope: !201)
