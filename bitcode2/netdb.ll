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
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local %struct.hostent* @lwip_gethostbyname(i8*) local_unnamed_addr #0 !dbg !2 {
  %2 = alloca %struct.ip_addr, align 4
  %3 = bitcast %struct.ip_addr* %2 to i8*, !dbg !236
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #6, !dbg !236
  %4 = call signext i8 @netconn_gethostbyname_addrtype(i8* %0, %struct.ip_addr* nonnull %2, i8 zeroext 2) #7, !dbg !238
  %5 = icmp eq i8 %4, 0, !dbg !240
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !242
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !272
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #6, !dbg !273
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !273
  ret %struct.hostent* %10, !dbg !273
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
define dso_local i32 @lwip_gethostbyname_r(i8*, %struct.hostent*, i8*, i64, %struct.hostent**, i32*) local_unnamed_addr #0 !dbg !274 {
  %7 = alloca i32, align 4
  %8 = bitcast i32* %7 to i8*, !dbg !300
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8), !dbg !300
  %9 = icmp eq i32* %5, null, !dbg !301
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !303
  br i1 %9, label %10, label %11, !dbg !303

; <label>:10:                                     ; preds = %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !304
  br label %11, !dbg !304

; <label>:11:                                     ; preds = %10, %6
  %12 = phi i32* [ %7, %10 ], [ %5, %6 ]
  %13 = icmp eq %struct.hostent** %4, null, !dbg !306
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !308
  br i1 %13, label %14, label %15, !dbg !308

; <label>:14:                                     ; preds = %11
  store i32 22, i32* %12, align 4, !dbg !309, !tbaa !245
  br label %49, !dbg !311

; <label>:15:                                     ; preds = %11
  store %struct.hostent* null, %struct.hostent** %4, align 8, !dbg !312, !tbaa !254
  %16 = icmp eq i8* %0, null, !dbg !313
  %17 = icmp eq %struct.hostent* %1, null, !dbg !315
  %18 = or i1 %16, %17, !dbg !316
  %19 = icmp eq i8* %2, null, !dbg !317
  %20 = or i1 %18, %19, !dbg !316
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !316
  br i1 %20, label %21, label %22, !dbg !316

; <label>:21:                                     ; preds = %15
  store i32 22, i32* %12, align 4, !dbg !318, !tbaa !245
  br label %49, !dbg !320

; <label>:22:                                     ; preds = %15
  %23 = tail call i64 @strlen(i8* nonnull %0) #7, !dbg !321
  %24 = add i64 %23, 49, !dbg !323
  %25 = icmp ugt i64 %24, %3, !dbg !325
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !326
  br i1 %25, label %26, label %27, !dbg !326

; <label>:26:                                     ; preds = %22
  store i32 34, i32* %12, align 4, !dbg !327, !tbaa !245
  br label %49, !dbg !329

; <label>:27:                                     ; preds = %22
  %28 = getelementptr inbounds i8, i8* %2, i64 48, !dbg !330
  %29 = getelementptr inbounds i8, i8* %2, i64 16, !dbg !332
  %30 = bitcast i8* %29 to %struct.ip_addr*, !dbg !332
  %31 = tail call signext i8 @netconn_gethostbyname_addrtype(i8* nonnull %0, %struct.ip_addr* nonnull %30, i8 zeroext 2) #7, !dbg !332
  %32 = icmp eq i8 %31, 0, !dbg !334
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !336
  br i1 %32, label %34, label %33, !dbg !336

; <label>:33:                                     ; preds = %27
  store i32 210, i32* %12, align 4, !dbg !337, !tbaa !245
  br label %49, !dbg !339

; <label>:34:                                     ; preds = %27
  %35 = tail call i8* @memcpy(i8* nonnull %28, i8* nonnull %0, i64 %23) #7, !dbg !341
  %36 = getelementptr inbounds i8, i8* %28, i64 %23, !dbg !342
  store i8 0, i8* %36, align 1, !dbg !343, !tbaa !252
  %37 = bitcast i8* %2 to i8**, !dbg !344
  store i8* %29, i8** %37, align 8, !dbg !344, !tbaa !254
  %38 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !345
  %39 = bitcast i8* %38 to %struct.ip_addr**, !dbg !345
  store %struct.ip_addr* null, %struct.ip_addr** %39, align 8, !dbg !346, !tbaa !254
  %40 = getelementptr inbounds i8, i8* %2, i64 40, !dbg !347
  %41 = bitcast i8* %40 to i8**, !dbg !347
  store i8* null, i8** %41, align 8, !dbg !348, !tbaa !349
  %42 = getelementptr inbounds %struct.hostent, %struct.hostent* %1, i64 0, i32 0, !dbg !352
  store i8* %28, i8** %42, align 8, !dbg !353, !tbaa !259
  %43 = getelementptr inbounds %struct.hostent, %struct.hostent* %1, i64 0, i32 1, !dbg !354
  %44 = bitcast i8*** %43 to i8**, !dbg !355
  store i8* %40, i8** %44, align 8, !dbg !355, !tbaa !263
  %45 = getelementptr inbounds %struct.hostent, %struct.hostent* %1, i64 0, i32 2, !dbg !356
  store i32 2, i32* %45, align 8, !dbg !357, !tbaa !265
  %46 = getelementptr inbounds %struct.hostent, %struct.hostent* %1, i64 0, i32 3, !dbg !358
  store i32 24, i32* %46, align 4, !dbg !359, !tbaa !267
  %47 = getelementptr inbounds %struct.hostent, %struct.hostent* %1, i64 0, i32 4, !dbg !360
  %48 = bitcast i8*** %47 to i8**, !dbg !361
  store i8* %2, i8** %48, align 8, !dbg !361, !tbaa !269
  store %struct.hostent* %1, %struct.hostent** %4, align 8, !dbg !362, !tbaa !254
  br label %49, !dbg !363

; <label>:49:                                     ; preds = %34, %33, %26, %21, %14
  %50 = phi i32 [ -1, %14 ], [ -1, %21 ], [ -1, %26 ], [ -1, %33 ], [ 0, %34 ], !dbg !364
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !365
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8), !dbg !366
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !366
  ret i32 %50, !dbg !366
}

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @lwip_freeaddrinfo(%struct.addrinfo*) local_unnamed_addr #0 !dbg !367 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !374
  %2 = icmp eq %struct.addrinfo* %0, null, !dbg !375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !374
  br i1 %2, label %16, label %3, !dbg !374

; <label>:3:                                      ; preds = %1, %10
  %4 = phi %struct.addrinfo* [ %6, %10 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %4, i64 0, i32 7, !dbg !376
  %6 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8, !dbg !376, !tbaa !378
  %7 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !381, !tbaa !254
  %8 = icmp eq %struct.uk_alloc* %7, null, !dbg !451
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !454
  br i1 %8, label %9, label %10, !dbg !454, !prof !455

; <label>:9:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !456
  tail call void @ukplat_terminate(i32 3) #8, !dbg !456
  unreachable

; <label>:10:                                     ; preds = %3
  %11 = bitcast %struct.addrinfo* %4 to i8*, !dbg !458
  %12 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %7, i64 0, i32 5, !dbg !461
  %13 = bitcast {}** %12 to void (%struct.uk_alloc*, i8*)**, !dbg !461
  %14 = load void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)** %13, align 8, !dbg !461, !tbaa !254
  tail call void %14(%struct.uk_alloc* nonnull %7, i8* %11) #7, !dbg !462
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !463
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !464
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !374
  %15 = icmp eq %struct.addrinfo* %6, null, !dbg !375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !374
  br i1 %15, label %16, label %3, !dbg !374, !llvm.loop !465

; <label>:16:                                     ; preds = %10, %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !467
  ret void, !dbg !467
}

; Function Attrs: noredzone nounwind
define dso_local i32 @lwip_getaddrinfo(i8*, i8*, %struct.addrinfo* readonly, %struct.addrinfo**) local_unnamed_addr #0 !dbg !468 {
  %5 = alloca %struct.ip_addr, align 16
  %6 = alloca i32, align 4
  %7 = bitcast %struct.ip_addr* %5 to i8*, !dbg !510
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #6, !dbg !510
  %8 = bitcast i32* %6 to i8*, !dbg !512
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #6, !dbg !512
  store i32 0, i32* %6, align 4, !dbg !513, !tbaa !245
  %9 = icmp eq %struct.addrinfo** %3, null, !dbg !515
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !517
  br i1 %9, label %10, label %11, !dbg !517

; <label>:10:                                     ; preds = %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !518
  br label %201, !dbg !518

; <label>:11:                                     ; preds = %4
  store %struct.addrinfo* null, %struct.addrinfo** %3, align 8, !dbg !520, !tbaa !254
  %12 = icmp eq i8* %0, null, !dbg !521
  %13 = icmp eq i8* %1, null, !dbg !523
  %14 = and i1 %12, %13, !dbg !524
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !524
  br i1 %14, label %15, label %16, !dbg !524

; <label>:15:                                     ; preds = %11
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !525
  br label %201, !dbg !525

; <label>:16:                                     ; preds = %11
  %17 = icmp ne %struct.addrinfo* %2, null, !dbg !527
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !529
  br i1 %17, label %18, label %22, !dbg !529

; <label>:18:                                     ; preds = %16
  %19 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %2, i64 0, i32 1, !dbg !530
  %20 = load i32, i32* %19, align 4, !dbg !530, !tbaa !532
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !534
  switch i32 %20, label %21 [
    i32 10, label %23
    i32 2, label %23
    i32 0, label %23
  ], !dbg !534

; <label>:21:                                     ; preds = %18
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !536
  br label %201, !dbg !536

; <label>:22:                                     ; preds = %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %23

; <label>:23:                                     ; preds = %18, %18, %18, %22
  %24 = phi i32 [ %20, %18 ], [ 0, %22 ], [ %20, %18 ], [ %20, %18 ], !dbg !538
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !540
  br i1 %13, label %48, label %25, !dbg !540

; <label>:25:                                     ; preds = %23
  %26 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !541, !srcloc !549
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !551
  %27 = icmp ult i64 %26, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !552
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !552
  br i1 %27, label %33, label %28, !dbg !552

; <label>:28:                                     ; preds = %25
  %29 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !553, !srcloc !549
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !556
  %30 = icmp ugt i64 %29, ptrtoint ([0 x i8]* @_end to i64), !dbg !552
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !557
  br i1 %30, label %33, label %31, !dbg !557

; <label>:31:                                     ; preds = %28
  %32 = tail call i32 @atoi(i8* nonnull %1) #7, !dbg !558
  store i32 %32, i32* %6, align 4, !dbg !558, !tbaa !245
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !558
  br label %43, !dbg !558

; <label>:33:                                     ; preds = %28, %25
  %34 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !560, !srcloc !549
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !570
  %35 = and i64 %34, -65536, !dbg !572
  %36 = or i64 %35, 4097, !dbg !572
  %37 = add nsw i64 %36, -1, !dbg !572
  %38 = inttoptr i64 %37 to i32*, !dbg !573
  %39 = load i32, i32* %38, align 4096, !dbg !574, !tbaa !245
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !575
  %40 = ptrtoint i8* %1 to i64, !dbg !576
  %41 = tail call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call atoi\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %40, i32 %39, i32 (i8*)* nonnull @atoi) #6, !dbg !576, !srcloc !577
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %6, i64 %41) #6, !dbg !578, !srcloc !581
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %42 = load i32, i32* %6, align 4, !dbg !582, !tbaa !245
  br label %43

; <label>:43:                                     ; preds = %33, %31
  %44 = phi i32 [ %42, %33 ], [ %32, %31 ], !dbg !582
  %45 = add i32 %44, -1, !dbg !584
  %46 = icmp ugt i32 %45, 65534, !dbg !584
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !584
  br i1 %46, label %47, label %48, !dbg !584

; <label>:47:                                     ; preds = %43
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !585
  br label %201, !dbg !585

; <label>:48:                                     ; preds = %23, %43
  %49 = icmp ne i8* %0, null, !dbg !587
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !588
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !589
  br i1 %49, label %50, label %81, !dbg !588

; <label>:50:                                     ; preds = %48
  br i1 %17, label %51, label %71, !dbg !592

; <label>:51:                                     ; preds = %50
  %52 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %2, i64 0, i32 0, !dbg !593
  %53 = load i32, i32* %52, align 8, !dbg !593, !tbaa !594
  %54 = and i32 %53, 4, !dbg !595
  %55 = icmp eq i32 %54, 0, !dbg !595
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !596
  br i1 %55, label %71, label %56, !dbg !596

; <label>:56:                                     ; preds = %51
  %57 = call i32 @ipaddr_aton(i8* nonnull %0, %struct.ip_addr* nonnull %5) #7, !dbg !598
  %58 = icmp eq i32 %57, 0, !dbg !598
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !601
  br i1 %58, label %59, label %60, !dbg !601

; <label>:59:                                     ; preds = %56
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !602
  br label %201, !dbg !602

; <label>:60:                                     ; preds = %56
  %61 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 1, !dbg !604
  %62 = load i8, i8* %61, align 4, !dbg !604, !tbaa !606
  %63 = icmp eq i8 %62, 6, !dbg !604
  %64 = icmp eq i32 %24, 2, !dbg !607
  %65 = and i1 %64, %63, !dbg !608
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !608
  br i1 %65, label %70, label %66, !dbg !608

; <label>:66:                                     ; preds = %60
  %67 = icmp eq i8 %62, 0, !dbg !609
  %68 = icmp eq i32 %24, 10, !dbg !610
  %69 = and i1 %68, %67, !dbg !611
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !611
  br i1 %69, label %70, label %113, !dbg !611

; <label>:70:                                     ; preds = %66, %60
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !612
  br label %201, !dbg !612

; <label>:71:                                     ; preds = %51, %50
  %72 = icmp eq i32 %24, 2, !dbg !615
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !617
  br i1 %72, label %75, label %73, !dbg !617

; <label>:73:                                     ; preds = %71
  %74 = icmp eq i32 %24, 10, !dbg !618
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !620
  br i1 %74, label %75, label %77, !dbg !620

; <label>:75:                                     ; preds = %73, %71
  %76 = phi i8 [ 0, %71 ], [ 1, %73 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !621
  br label %77, !dbg !623

; <label>:77:                                     ; preds = %75, %73
  %78 = phi i8 [ 2, %73 ], [ %76, %75 ], !dbg !624
  %79 = call signext i8 @netconn_gethostbyname_addrtype(i8* nonnull %0, %struct.ip_addr* nonnull %5, i8 zeroext %78) #7, !dbg !623
  %80 = icmp eq i8 %79, 0, !dbg !626
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !628
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !629
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br i1 %80, label %113, label %201

; <label>:81:                                     ; preds = %48
  br i1 %17, label %82, label %102, !dbg !631

; <label>:82:                                     ; preds = %81
  %83 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %2, i64 0, i32 0, !dbg !632
  %84 = load i32, i32* %83, align 8, !dbg !632, !tbaa !594
  %85 = and i32 %84, 1, !dbg !633
  %86 = icmp eq i32 %85, 0, !dbg !633
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !634
  br i1 %86, label %102, label %87, !dbg !634

; <label>:87:                                     ; preds = %82
  %88 = icmp eq i32 %24, 10, !dbg !635
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !639
  %89 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !640
  store i32 0, i32* %89, align 16, !dbg !640, !tbaa !252
  br i1 %88, label %90, label %96, !dbg !639

; <label>:90:                                     ; preds = %87
  %91 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !640
  store i32 0, i32* %91, align 4, !dbg !640, !tbaa !252
  %92 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !640
  store i32 0, i32* %92, align 8, !dbg !640, !tbaa !252
  %93 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !640
  store i32 0, i32* %93, align 4, !dbg !640, !tbaa !252
  %94 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 0, i32 0, i32 1, !dbg !640
  store i8 0, i8* %94, align 16, !dbg !640, !tbaa !252
  %95 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 1, !dbg !643
  store i8 6, i8* %95, align 4, !dbg !643, !tbaa !606
  br label %112, !dbg !645

; <label>:96:                                     ; preds = %87
  %97 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 1, !dbg !646
  store i8 0, i8* %97, align 4, !dbg !646, !tbaa !606
  %98 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !649
  store i32 0, i32* %98, align 4, !dbg !649, !tbaa !252
  %99 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !649
  store i32 0, i32* %99, align 8, !dbg !649, !tbaa !252
  %100 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !649
  store i32 0, i32* %100, align 4, !dbg !649, !tbaa !252
  %101 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 0, i32 0, i32 1, !dbg !649
  store i8 0, i8* %101, align 16, !dbg !649, !tbaa !252
  br label %112

; <label>:102:                                    ; preds = %82, %81
  %103 = icmp eq i32 %24, 10, !dbg !651
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !655
  br i1 %103, label %104, label %108, !dbg !655

; <label>:104:                                    ; preds = %102
  %105 = bitcast %struct.ip_addr* %5 to <4 x i32>*, !dbg !656
  store <4 x i32> <i32 0, i32 0, i32 0, i32 16777216>, <4 x i32>* %105, align 16, !dbg !656, !tbaa !252
  %106 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 0, i32 0, i32 1, !dbg !656
  store i8 0, i8* %106, align 16, !dbg !656, !tbaa !252
  %107 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 1, !dbg !659
  store i8 6, i8* %107, align 4, !dbg !659, !tbaa !606
  br label %112, !dbg !661

; <label>:108:                                    ; preds = %102
  %109 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 1, !dbg !662
  store i8 0, i8* %109, align 4, !dbg !662, !tbaa !606
  %110 = bitcast %struct.ip_addr* %5 to <4 x i32>*, !dbg !665
  store <4 x i32> <i32 16777343, i32 0, i32 0, i32 0>, <4 x i32>* %110, align 16, !dbg !665, !tbaa !252
  %111 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 0, i32 0, i32 1, !dbg !666
  store i8 0, i8* %111, align 16, !dbg !666, !tbaa !252
  br label %112

; <label>:112:                                    ; preds = %96, %90, %108, %104
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %118, !dbg !669

; <label>:113:                                    ; preds = %77, %66
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !669
  %114 = call i64 @strlen(i8* nonnull %0) #7, !dbg !670
  %115 = icmp ugt i64 %114, 256, !dbg !673
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !675
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !676
  br i1 %115, label %201, label %116, !dbg !675

; <label>:116:                                    ; preds = %113
  %117 = add i64 %114, 77, !dbg !678
  br label %118, !dbg !679

; <label>:118:                                    ; preds = %116, %112
  %119 = phi i64 [ %114, %116 ], [ 0, %112 ], !dbg !680
  %120 = phi i64 [ %117, %116 ], [ 76, %112 ], !dbg !680
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !680
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !681
  %121 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !683, !tbaa !254
  %122 = icmp eq %struct.uk_alloc* %121, null, !dbg !691
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !693
  br i1 %122, label %123, label %125, !dbg !693, !prof !455

; <label>:123:                                    ; preds = %118
  %124 = call i32* @__errno() #7, !dbg !694
  store i32 12, i32* %124, align 4, !dbg !696, !tbaa !245
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !697
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !698
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !700
  br label %130, !dbg !700

; <label>:125:                                    ; preds = %118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !708
  %126 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %121, i64 0, i32 0, !dbg !710
  %127 = load i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)** %126, align 8, !dbg !710, !tbaa !254
  %128 = call i8* %127(%struct.uk_alloc* nonnull %121, i64 %120) #7, !dbg !711
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !712
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !713
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !698
  %129 = icmp eq i8* %128, null, !dbg !714
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !700
  br i1 %129, label %130, label %131, !dbg !700

; <label>:130:                                    ; preds = %123, %125
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !716
  br label %201, !dbg !716

; <label>:131:                                    ; preds = %125
  %132 = call i8* @memset(i8* nonnull %128, i32 0, i64 %120) #7, !dbg !718
  %133 = getelementptr inbounds i8, i8* %128, i64 48, !dbg !719
  %134 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 1, !dbg !720
  %135 = load i8, i8* %134, align 4, !dbg !720, !tbaa !606
  %136 = icmp eq i8 %135, 6, !dbg !720
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !721
  %137 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !722
  %138 = load i32, i32* %137, align 16, !dbg !722, !tbaa !252
  br i1 %136, label %139, label %165, !dbg !721

; <label>:139:                                    ; preds = %131
  %140 = getelementptr inbounds i8, i8* %128, i64 56, !dbg !724
  %141 = bitcast i8* %140 to i32*, !dbg !724
  store i32 %138, i32* %141, align 4, !dbg !724, !tbaa !252
  %142 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !724
  %143 = load i32, i32* %142, align 4, !dbg !724, !tbaa !252
  %144 = getelementptr inbounds i8, i8* %128, i64 60, !dbg !724
  %145 = bitcast i8* %144 to i32*, !dbg !724
  store i32 %143, i32* %145, align 4, !dbg !724, !tbaa !252
  %146 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !724
  %147 = load i32, i32* %146, align 8, !dbg !724, !tbaa !252
  %148 = getelementptr inbounds i8, i8* %128, i64 64, !dbg !724
  %149 = bitcast i8* %148 to i32*, !dbg !724
  store i32 %147, i32* %149, align 4, !dbg !724, !tbaa !252
  %150 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !724
  %151 = load i32, i32* %150, align 4, !dbg !724, !tbaa !252
  %152 = getelementptr inbounds i8, i8* %128, i64 68, !dbg !724
  %153 = bitcast i8* %152 to i32*, !dbg !724
  store i32 %151, i32* %153, align 4, !dbg !724, !tbaa !252
  %154 = getelementptr inbounds i8, i8* %128, i64 49, !dbg !726
  store i8 10, i8* %154, align 1, !dbg !727, !tbaa !728
  store i8 28, i8* %133, align 4, !dbg !732, !tbaa !733
  %155 = load i32, i32* %6, align 4, !dbg !734, !tbaa !245
  %156 = trunc i32 %155 to i16, !dbg !735
  %157 = call zeroext i16 @lwip_htons(i16 zeroext %156) #7, !dbg !736
  %158 = getelementptr inbounds i8, i8* %128, i64 50, !dbg !737
  %159 = bitcast i8* %158 to i16*, !dbg !737
  store i16 %157, i16* %159, align 2, !dbg !738, !tbaa !739
  %160 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 0, i32 0, i32 1, !dbg !740
  %161 = load i8, i8* %160, align 16, !dbg !740, !tbaa !252
  %162 = zext i8 %161 to i32, !dbg !740
  %163 = getelementptr inbounds i8, i8* %128, i64 72, !dbg !741
  %164 = bitcast i8* %163 to i32*, !dbg !741
  store i32 %162, i32* %164, align 4, !dbg !742, !tbaa !743
  br label %174, !dbg !744

; <label>:165:                                    ; preds = %131
  %166 = getelementptr inbounds i8, i8* %128, i64 52, !dbg !746
  %167 = bitcast i8* %166 to i32*, !dbg !746
  store i32 %138, i32* %167, align 4, !dbg !746, !tbaa !747
  %168 = getelementptr inbounds i8, i8* %128, i64 49, !dbg !750
  store i8 2, i8* %168, align 1, !dbg !751, !tbaa !752
  store i8 16, i8* %133, align 4, !dbg !753, !tbaa !754
  %169 = load i32, i32* %6, align 4, !dbg !755, !tbaa !245
  %170 = trunc i32 %169 to i16, !dbg !756
  %171 = call zeroext i16 @lwip_htons(i16 zeroext %170) #7, !dbg !757
  %172 = getelementptr inbounds i8, i8* %128, i64 50, !dbg !758
  %173 = bitcast i8* %172 to i16*, !dbg !758
  store i16 %171, i16* %173, align 2, !dbg !759, !tbaa !760
  br label %174

; <label>:174:                                    ; preds = %165, %139
  %175 = phi i32 [ 2, %165 ], [ 10, %139 ]
  %176 = getelementptr inbounds i8, i8* %128, i64 4, !dbg !761
  %177 = bitcast i8* %176 to i32*, !dbg !761
  store i32 %175, i32* %177, align 4, !dbg !761, !tbaa !532
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !762
  br i1 %17, label %178, label %187, !dbg !762

; <label>:178:                                    ; preds = %174
  %179 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %2, i64 0, i32 2, !dbg !763
  %180 = load i32, i32* %179, align 8, !dbg !763, !tbaa !766
  %181 = getelementptr inbounds i8, i8* %128, i64 8, !dbg !767
  %182 = bitcast i8* %181 to i32*, !dbg !767
  store i32 %180, i32* %182, align 8, !dbg !768, !tbaa !766
  %183 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %2, i64 0, i32 3, !dbg !769
  %184 = load i32, i32* %183, align 4, !dbg !769, !tbaa !770
  %185 = getelementptr inbounds i8, i8* %128, i64 12, !dbg !771
  %186 = bitcast i8* %185 to i32*, !dbg !771
  store i32 %184, i32* %186, align 4, !dbg !772, !tbaa !770
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !773
  br label %187, !dbg !773

; <label>:187:                                    ; preds = %178, %174
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !774
  br i1 %49, label %188, label %195, !dbg !774

; <label>:188:                                    ; preds = %187
  %189 = getelementptr inbounds i8, i8* %128, i64 76, !dbg !775
  %190 = getelementptr inbounds i8, i8* %128, i64 32, !dbg !778
  %191 = bitcast i8* %190 to i8**, !dbg !778
  store i8* %189, i8** %191, align 8, !dbg !779, !tbaa !780
  %192 = call i8* @memcpy(i8* nonnull %189, i8* nonnull %0, i64 %119) #7, !dbg !781
  %193 = load i8*, i8** %191, align 8, !dbg !782, !tbaa !780
  %194 = getelementptr inbounds i8, i8* %193, i64 %119, !dbg !783
  store i8 0, i8* %194, align 1, !dbg !784, !tbaa !252
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !785
  br label %195, !dbg !785

; <label>:195:                                    ; preds = %188, %187
  %196 = getelementptr inbounds i8, i8* %128, i64 16, !dbg !786
  %197 = bitcast i8* %196 to i32*, !dbg !786
  store i32 28, i32* %197, align 8, !dbg !787, !tbaa !788
  %198 = getelementptr inbounds i8, i8* %128, i64 24, !dbg !789
  %199 = bitcast i8* %198 to i8**, !dbg !790
  store i8* %133, i8** %199, align 8, !dbg !790, !tbaa !791
  %200 = bitcast %struct.addrinfo** %3 to i8**, !dbg !792
  store i8* %128, i8** %200, align 8, !dbg !792, !tbaa !254
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !793
  br label %201, !dbg !793

; <label>:201:                                    ; preds = %113, %77, %195, %130, %70, %59, %47, %21, %15, %10
  %202 = phi i32 [ 202, %10 ], [ 200, %15 ], [ 204, %21 ], [ 201, %47 ], [ 200, %70 ], [ 203, %130 ], [ 0, %195 ], [ 200, %59 ], [ 202, %77 ], [ 202, %113 ], !dbg !629
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #6, !dbg !794
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #6, !dbg !794
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !794
  ret i32 %202, !dbg !794
}

; Function Attrs: noredzone
declare dso_local i32 @atoi(i8*) #3

; Function Attrs: noredzone
declare dso_local i32 @ipaddr_aton(i8*, %struct.ip_addr*) local_unnamed_addr #3

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8*, ...) unnamed_addr #4 !dbg !201 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !796
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #6, !dbg !796
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !798
  call void @llvm.va_start(i8* nonnull %3), !dbg !798
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str.5, i64 0, i64 0), i32 198, i8* %0, %struct.__va_list_tag* nonnull %4) #7, !dbg !799
  call void @llvm.va_end(i8* nonnull %3), !dbg !802
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #6, !dbg !803
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !803
  ret void, !dbg !803
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
!272 = !DILocation(line: 0, scope: !244)
!273 = !DILocation(line: 144, column: 1, scope: !2)
!274 = distinct !DISubprogram(name: "lwip_gethostbyname_r", scope: !3, file: !3, line: 163, type: !275, isLocal: false, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !282)
!275 = !DISubroutineType(types: !276)
!276 = !{!16, !19, !6, !11, !277, !281, !184}
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !278, line: 40, baseType: !279)
!278 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !280, line: 129, baseType: !105)
!280 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!282 = !{!283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293}
!283 = !DILocalVariable(name: "name", arg: 1, scope: !274, file: !3, line: 163, type: !19)
!284 = !DILocalVariable(name: "ret", arg: 2, scope: !274, file: !3, line: 163, type: !6)
!285 = !DILocalVariable(name: "buf", arg: 3, scope: !274, file: !3, line: 163, type: !11)
!286 = !DILocalVariable(name: "buflen", arg: 4, scope: !274, file: !3, line: 164, type: !277)
!287 = !DILocalVariable(name: "result", arg: 5, scope: !274, file: !3, line: 164, type: !281)
!288 = !DILocalVariable(name: "h_errnop", arg: 6, scope: !274, file: !3, line: 164, type: !184)
!289 = !DILocalVariable(name: "err", scope: !274, file: !3, line: 166, type: !225)
!290 = !DILocalVariable(name: "h", scope: !274, file: !3, line: 167, type: !59)
!291 = !DILocalVariable(name: "hostname", scope: !274, file: !3, line: 168, type: !11)
!292 = !DILocalVariable(name: "namelen", scope: !274, file: !3, line: 169, type: !277)
!293 = !DILocalVariable(name: "lh_errno", scope: !274, file: !3, line: 170, type: !16)
!294 = !DILocation(line: 163, column: 34, scope: !274)
!295 = !DILocation(line: 163, column: 56, scope: !274)
!296 = !DILocation(line: 163, column: 67, scope: !274)
!297 = !DILocation(line: 164, column: 29, scope: !274)
!298 = !DILocation(line: 164, column: 54, scope: !274)
!299 = !DILocation(line: 164, column: 67, scope: !274)
!300 = !DILocation(line: 170, column: 3, scope: !274)
!301 = !DILocation(line: 172, column: 16, scope: !302)
!302 = distinct !DILexicalBlock(scope: !274, file: !3, line: 172, column: 7)
!303 = !DILocation(line: 172, column: 7, scope: !274)
!304 = !DILocation(line: 175, column: 3, scope: !305)
!305 = distinct !DILexicalBlock(scope: !302, file: !3, line: 172, column: 25)
!306 = !DILocation(line: 177, column: 14, scope: !307)
!307 = distinct !DILexicalBlock(scope: !274, file: !3, line: 177, column: 7)
!308 = !DILocation(line: 177, column: 7, scope: !274)
!309 = !DILocation(line: 179, column: 15, scope: !310)
!310 = distinct !DILexicalBlock(scope: !307, file: !3, line: 177, column: 23)
!311 = !DILocation(line: 180, column: 5, scope: !310)
!312 = !DILocation(line: 183, column: 11, scope: !274)
!313 = !DILocation(line: 184, column: 13, scope: !314)
!314 = distinct !DILexicalBlock(scope: !274, file: !3, line: 184, column: 7)
!315 = !DILocation(line: 184, column: 30, scope: !314)
!316 = !DILocation(line: 184, column: 22, scope: !314)
!317 = !DILocation(line: 184, column: 47, scope: !314)
!318 = !DILocation(line: 186, column: 15, scope: !319)
!319 = distinct !DILexicalBlock(scope: !314, file: !3, line: 184, column: 57)
!320 = !DILocation(line: 187, column: 5, scope: !319)
!321 = !DILocation(line: 190, column: 13, scope: !274)
!322 = !DILocation(line: 169, column: 10, scope: !274)
!323 = !DILocation(line: 191, column: 55, scope: !324)
!324 = distinct !DILexicalBlock(scope: !274, file: !3, line: 191, column: 7)
!325 = !DILocation(line: 191, column: 14, scope: !324)
!326 = !DILocation(line: 191, column: 7, scope: !274)
!327 = !DILocation(line: 193, column: 15, scope: !328)
!328 = distinct !DILexicalBlock(scope: !324, file: !3, line: 191, column: 94)
!329 = !DILocation(line: 194, column: 5, scope: !328)
!330 = !DILocation(line: 198, column: 26, scope: !274)
!331 = !DILocation(line: 168, column: 9, scope: !274)
!332 = !DILocation(line: 201, column: 9, scope: !274)
!333 = !DILocation(line: 166, column: 9, scope: !274)
!334 = !DILocation(line: 202, column: 11, scope: !335)
!335 = distinct !DILexicalBlock(scope: !274, file: !3, line: 202, column: 7)
!336 = !DILocation(line: 202, column: 7, scope: !274)
!337 = !DILocation(line: 204, column: 15, scope: !338)
!338 = distinct !DILexicalBlock(scope: !335, file: !3, line: 202, column: 22)
!339 = !DILocation(line: 205, column: 5, scope: !338)
!340 = !DILocation(line: 167, column: 34, scope: !274)
!341 = !DILocation(line: 209, column: 3, scope: !274)
!342 = !DILocation(line: 210, column: 3, scope: !274)
!343 = !DILocation(line: 210, column: 21, scope: !274)
!344 = !DILocation(line: 213, column: 19, scope: !274)
!345 = !DILocation(line: 214, column: 3, scope: !274)
!346 = !DILocation(line: 214, column: 19, scope: !274)
!347 = !DILocation(line: 215, column: 6, scope: !274)
!348 = !DILocation(line: 215, column: 14, scope: !274)
!349 = !{!350, !255, i64 40}
!350 = !{!"gethostbyname_r_helper", !247, i64 0, !351, i64 16, !255, i64 40}
!351 = !{!"ip_addr", !247, i64 0, !247, i64 20}
!352 = !DILocation(line: 216, column: 8, scope: !274)
!353 = !DILocation(line: 216, column: 15, scope: !274)
!354 = !DILocation(line: 217, column: 8, scope: !274)
!355 = !DILocation(line: 217, column: 18, scope: !274)
!356 = !DILocation(line: 218, column: 8, scope: !274)
!357 = !DILocation(line: 218, column: 19, scope: !274)
!358 = !DILocation(line: 219, column: 8, scope: !274)
!359 = !DILocation(line: 219, column: 17, scope: !274)
!360 = !DILocation(line: 220, column: 8, scope: !274)
!361 = !DILocation(line: 220, column: 20, scope: !274)
!362 = !DILocation(line: 223, column: 11, scope: !274)
!363 = !DILocation(line: 226, column: 3, scope: !274)
!364 = !DILocation(line: 0, scope: !274)
!365 = !DILocation(line: 0, scope: !310)
!366 = !DILocation(line: 227, column: 1, scope: !274)
!367 = distinct !DISubprogram(name: "lwip_freeaddrinfo", scope: !3, file: !3, line: 237, type: !368, isLocal: false, isDefinition: true, scopeLine: 238, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !370)
!368 = !DISubroutineType(types: !369)
!369 = !{null, !108}
!370 = !{!371, !372}
!371 = !DILocalVariable(name: "ai", arg: 1, scope: !367, file: !3, line: 237, type: !108)
!372 = !DILocalVariable(name: "next", scope: !367, file: !3, line: 239, type: !108)
!373 = !DILocation(line: 237, column: 36, scope: !367)
!374 = !DILocation(line: 241, column: 3, scope: !367)
!375 = !DILocation(line: 241, column: 13, scope: !367)
!376 = !DILocation(line: 242, column: 16, scope: !377)
!377 = distinct !DILexicalBlock(scope: !367, file: !3, line: 241, column: 22)
!378 = !{!379, !255, i64 40}
!379 = !{!"addrinfo", !246, i64 0, !246, i64 4, !246, i64 8, !246, i64 12, !246, i64 16, !255, i64 24, !255, i64 32, !255, i64 40}
!380 = !DILocation(line: 239, column: 20, scope: !367)
!381 = !DILocation(line: 243, column: 13, scope: !377)
!382 = !DILocalVariable(name: "a", arg: 1, scope: !383, file: !384, line: 237, type: !387)
!383 = distinct !DISubprogram(name: "uk_free", scope: !384, file: !384, line: 237, type: !385, isLocal: true, isDefinition: true, scopeLine: 238, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !441)
!384 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukalloc/include/uk/alloc.h", directory: "/root/.unikraft/apps/redis/build")
!385 = !DISubroutineType(types: !386)
!386 = !{null, !387, !58}
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_alloc", file: !384, line: 77, size: 832, elements: !389)
!389 = !{!390, !397, !402, !407, !413, !415, !418, !419, !420, !425, !430, !435, !436, !437}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "malloc", scope: !388, file: !384, line: 79, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_malloc_func_t", file: !384, line: 54, baseType: !392)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DISubroutineType(types: !394)
!394 = !{!58, !387, !395}
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !396, line: 58, baseType: !105)
!396 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!397 = !DIDerivedType(tag: DW_TAG_member, name: "calloc", scope: !388, file: !384, line: 80, baseType: !398, size: 64, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_calloc_func_t", file: !384, line: 56, baseType: !399)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DISubroutineType(types: !401)
!401 = !{!58, !387, !395, !395}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "realloc", scope: !388, file: !384, line: 81, baseType: !403, size: 64, offset: 128)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_realloc_func_t", file: !384, line: 62, baseType: !404)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DISubroutineType(types: !406)
!406 = !{!58, !387, !58, !395}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "posix_memalign", scope: !388, file: !384, line: 82, baseType: !408, size: 64, offset: 192)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_posix_memalign_func_t", file: !384, line: 58, baseType: !409)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DISubroutineType(types: !411)
!411 = !{!16, !387, !412, !395, !395}
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "memalign", scope: !388, file: !384, line: 83, baseType: !414, size: 64, offset: 256)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_memalign_func_t", file: !384, line: 60, baseType: !399)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !388, file: !384, line: 84, baseType: !416, size: 64, offset: 320)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_free_func_t", file: !384, line: 64, baseType: !417)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "free_backend", scope: !388, file: !384, line: 87, baseType: !416, size: 64, offset: 384)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_backend", scope: !388, file: !384, line: 88, baseType: !391, size: 64, offset: 448)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "palloc", scope: !388, file: !384, line: 92, baseType: !421, size: 64, offset: 512)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_palloc_func_t", file: !384, line: 66, baseType: !422)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DISubroutineType(types: !424)
!424 = !{!58, !387, !105}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "pfree", scope: !388, file: !384, line: 93, baseType: !426, size: 64, offset: 576)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_pfree_func_t", file: !384, line: 68, baseType: !427)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DISubroutineType(types: !429)
!429 = !{null, !387, !58, !105}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "addmem", scope: !388, file: !384, line: 99, baseType: !431, size: 64, offset: 640)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_addmem_func_t", file: !384, line: 70, baseType: !432)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DISubroutineType(types: !434)
!434 = !{!16, !387, !58, !395}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !388, file: !384, line: 100, baseType: !395, size: 64, offset: 704)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !388, file: !384, line: 103, baseType: !387, size: 64, offset: 768)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !388, file: !384, line: 104, baseType: !438, offset: 832)
!438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, elements: !439)
!439 = !{!440}
!440 = !DISubrange(count: -1)
!441 = !{!382, !442}
!442 = !DILocalVariable(name: "ptr", arg: 2, scope: !383, file: !384, line: 237, type: !58)
!443 = !DILocation(line: 237, column: 45, scope: !383, inlinedAt: !444)
!444 = distinct !DILocation(line: 243, column: 5, scope: !377)
!445 = !DILocalVariable(name: "a", arg: 1, scope: !446, file: !384, line: 231, type: !387)
!446 = distinct !DISubprogram(name: "uk_do_free", scope: !384, file: !384, line: 231, type: !385, isLocal: true, isDefinition: true, scopeLine: 232, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !447)
!447 = !{!445, !448}
!448 = !DILocalVariable(name: "ptr", arg: 2, scope: !446, file: !384, line: 231, type: !58)
!449 = !DILocation(line: 231, column: 48, scope: !446, inlinedAt: !450)
!450 = distinct !DILocation(line: 239, column: 2, scope: !383, inlinedAt: !444)
!451 = !DILocation(line: 233, column: 2, scope: !452, inlinedAt: !450)
!452 = distinct !DILexicalBlock(scope: !453, file: !384, line: 233, column: 2)
!453 = distinct !DILexicalBlock(scope: !446, file: !384, line: 233, column: 2)
!454 = !DILocation(line: 233, column: 2, scope: !453, inlinedAt: !450)
!455 = !{!"branch_weights", i32 1, i32 2000}
!456 = !DILocation(line: 233, column: 2, scope: !457, inlinedAt: !450)
!457 = distinct !DILexicalBlock(scope: !452, file: !384, line: 233, column: 2)
!458 = !DILocation(line: 243, column: 34, scope: !377)
!459 = !DILocation(line: 231, column: 57, scope: !446, inlinedAt: !450)
!460 = !DILocation(line: 237, column: 54, scope: !383, inlinedAt: !444)
!461 = !DILocation(line: 234, column: 5, scope: !446, inlinedAt: !450)
!462 = !DILocation(line: 234, column: 2, scope: !446, inlinedAt: !450)
!463 = !DILocation(line: 235, column: 1, scope: !446, inlinedAt: !450)
!464 = !DILocation(line: 240, column: 1, scope: !383, inlinedAt: !444)
!465 = distinct !{!465, !374, !466}
!466 = !DILocation(line: 245, column: 3, scope: !367)
!467 = !DILocation(line: 246, column: 1, scope: !367)
!468 = distinct !DISubprogram(name: "lwip_getaddrinfo", scope: !3, file: !3, line: 270, type: !469, isLocal: false, isDefinition: true, scopeLine: 272, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !474)
!469 = !DISubroutineType(types: !470)
!470 = !{!16, !19, !19, !471, !473}
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!474 = !{!475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !495, !496, !501, !504}
!475 = !DILocalVariable(name: "nodename", arg: 1, scope: !468, file: !3, line: 270, type: !19)
!476 = !DILocalVariable(name: "servname", arg: 2, scope: !468, file: !3, line: 270, type: !19)
!477 = !DILocalVariable(name: "hints", arg: 3, scope: !468, file: !3, line: 271, type: !471)
!478 = !DILocalVariable(name: "res", arg: 4, scope: !468, file: !3, line: 271, type: !473)
!479 = !DILocalVariable(name: "err", scope: !468, file: !3, line: 273, type: !225)
!480 = !DILocalVariable(name: "addr", scope: !468, file: !3, line: 274, type: !65)
!481 = !DILocalVariable(name: "ai", scope: !468, file: !3, line: 275, type: !108)
!482 = !DILocalVariable(name: "sa", scope: !468, file: !3, line: 276, type: !131)
!483 = !DILocalVariable(name: "port_nr", scope: !468, file: !3, line: 277, type: !16)
!484 = !DILocalVariable(name: "total_size", scope: !468, file: !3, line: 278, type: !277)
!485 = !DILocalVariable(name: "namelen", scope: !468, file: !3, line: 279, type: !277)
!486 = !DILocalVariable(name: "ai_family", scope: !468, file: !3, line: 280, type: !16)
!487 = !DILocalVariable(name: "tid", scope: !488, file: !3, line: 309, type: !80)
!488 = distinct !DILexicalBlock(scope: !489, file: !3, line: 309, column: 5)
!489 = distinct !DILexicalBlock(scope: !490, file: !3, line: 309, column: 5)
!490 = distinct !DILexicalBlock(scope: !491, file: !3, line: 309, column: 5)
!491 = distinct !DILexicalBlock(scope: !492, file: !3, line: 309, column: 5)
!492 = distinct !DILexicalBlock(scope: !493, file: !3, line: 309, column: 5)
!493 = distinct !DILexicalBlock(scope: !494, file: !3, line: 306, column: 25)
!494 = distinct !DILexicalBlock(scope: !468, file: !3, line: 306, column: 7)
!495 = !DILocalVariable(name: "_ret", scope: !488, file: !3, line: 309, type: !106)
!496 = !DILocalVariable(name: "type", scope: !497, file: !3, line: 331, type: !87)
!497 = distinct !DILexicalBlock(scope: !498, file: !3, line: 328, column: 12)
!498 = distinct !DILexicalBlock(scope: !499, file: !3, line: 317, column: 9)
!499 = distinct !DILexicalBlock(scope: !500, file: !3, line: 315, column: 25)
!500 = distinct !DILexicalBlock(scope: !468, file: !3, line: 315, column: 7)
!501 = !DILocalVariable(name: "sa6", scope: !502, file: !3, line: 374, type: !144)
!502 = distinct !DILexicalBlock(scope: !503, file: !3, line: 372, column: 27)
!503 = distinct !DILexicalBlock(scope: !468, file: !3, line: 372, column: 7)
!504 = !DILocalVariable(name: "sa4", scope: !505, file: !3, line: 385, type: !169)
!505 = distinct !DILexicalBlock(scope: !503, file: !3, line: 383, column: 10)
!506 = !DILocation(line: 270, column: 30, scope: !468)
!507 = !DILocation(line: 270, column: 52, scope: !468)
!508 = !DILocation(line: 271, column: 41, scope: !468)
!509 = !DILocation(line: 271, column: 66, scope: !468)
!510 = !DILocation(line: 274, column: 3, scope: !468)
!511 = !DILocation(line: 276, column: 28, scope: !468)
!512 = !DILocation(line: 277, column: 3, scope: !468)
!513 = !DILocation(line: 277, column: 7, scope: !468)
!514 = !DILocation(line: 279, column: 10, scope: !468)
!515 = !DILocation(line: 282, column: 11, scope: !516)
!516 = distinct !DILexicalBlock(scope: !468, file: !3, line: 282, column: 7)
!517 = !DILocation(line: 282, column: 7, scope: !468)
!518 = !DILocation(line: 283, column: 5, scope: !519)
!519 = distinct !DILexicalBlock(scope: !516, file: !3, line: 282, column: 20)
!520 = !DILocation(line: 285, column: 8, scope: !468)
!521 = !DILocation(line: 286, column: 17, scope: !522)
!522 = distinct !DILexicalBlock(scope: !468, file: !3, line: 286, column: 7)
!523 = !DILocation(line: 286, column: 39, scope: !522)
!524 = !DILocation(line: 286, column: 26, scope: !522)
!525 = !DILocation(line: 287, column: 5, scope: !526)
!526 = distinct !DILexicalBlock(scope: !522, file: !3, line: 286, column: 49)
!527 = !DILocation(line: 290, column: 13, scope: !528)
!528 = distinct !DILexicalBlock(scope: !468, file: !3, line: 290, column: 7)
!529 = !DILocation(line: 290, column: 7, scope: !468)
!530 = !DILocation(line: 291, column: 24, scope: !531)
!531 = distinct !DILexicalBlock(scope: !528, file: !3, line: 290, column: 22)
!532 = !{!379, !246, i64 4}
!533 = !DILocation(line: 280, column: 7, scope: !468)
!534 = !DILocation(line: 294, column: 9, scope: !535)
!535 = distinct !DILexicalBlock(scope: !531, file: !3, line: 292, column: 9)
!536 = !DILocation(line: 300, column: 7, scope: !537)
!537 = distinct !DILexicalBlock(scope: !535, file: !3, line: 299, column: 10)
!538 = !DILocation(line: 0, scope: !539)
!539 = distinct !DILexicalBlock(scope: !528, file: !3, line: 302, column: 10)
!540 = !DILocation(line: 306, column: 7, scope: !468)
!541 = !DILocation(line: 120, column: 2, scope: !542, inlinedAt: !548)
!542 = distinct !DISubprogram(name: "ukarch_read_sp", scope: !543, file: !543, line: 116, type: !544, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !546)
!543 = !DIFile(filename: "/root/.unikraft/unikraft/arch/x86/x86_64/include/uk/asm/lcpu.h", directory: "/root/.unikraft/apps/redis/build")
!544 = !DISubroutineType(types: !545)
!545 = !{!105}
!546 = !{!547}
!547 = !DILocalVariable(name: "sp", scope: !542, file: !543, line: 118, type: !105)
!548 = distinct !DILocation(line: 309, column: 5, scope: !491)
!549 = !{i32 531476}
!550 = !DILocation(line: 118, column: 16, scope: !542, inlinedAt: !548)
!551 = !DILocation(line: 121, column: 2, scope: !542, inlinedAt: !548)
!552 = !DILocation(line: 309, column: 5, scope: !491)
!553 = !DILocation(line: 120, column: 2, scope: !542, inlinedAt: !554)
!554 = distinct !DILocation(line: 309, column: 5, scope: !491)
!555 = !DILocation(line: 118, column: 16, scope: !542, inlinedAt: !554)
!556 = !DILocation(line: 121, column: 2, scope: !542, inlinedAt: !554)
!557 = !DILocation(line: 309, column: 5, scope: !492)
!558 = !DILocation(line: 309, column: 5, scope: !559)
!559 = distinct !DILexicalBlock(scope: !491, file: !3, line: 309, column: 5)
!560 = !DILocation(line: 120, column: 2, scope: !542, inlinedAt: !561)
!561 = distinct !DILocation(line: 49, column: 21, scope: !562, inlinedAt: !568)
!562 = distinct !DISubprogram(name: "uk_thread_get_tid", scope: !563, file: !563, line: 47, type: !564, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !566)
!563 = !DIFile(filename: "/root/.unikraft/unikraft/lib/flexos-core/include/flexos/impl/intelpku-impl.h", directory: "/root/.unikraft/apps/redis/build")
!564 = !DISubroutineType(types: !565)
!565 = !{!16}
!566 = !{!567}
!567 = !DILocalVariable(name: "sp", scope: !562, file: !563, line: 49, type: !105)
!568 = distinct !DILocation(line: 309, column: 5, scope: !488)
!569 = !DILocation(line: 118, column: 16, scope: !542, inlinedAt: !561)
!570 = !DILocation(line: 121, column: 2, scope: !542, inlinedAt: !561)
!571 = !DILocation(line: 49, column: 16, scope: !562, inlinedAt: !568)
!572 = !DILocation(line: 50, column: 19, scope: !562, inlinedAt: !568)
!573 = !DILocation(line: 50, column: 11, scope: !562, inlinedAt: !568)
!574 = !DILocation(line: 50, column: 9, scope: !562, inlinedAt: !568)
!575 = !DILocation(line: 50, column: 2, scope: !562, inlinedAt: !568)
!576 = !DILocation(line: 309, column: 5, scope: !488)
!577 = !{i32 -2146180470, i32 -2146180457, i32 -2146180432, i32 -2146180408, i32 -2146180383, i32 -2146180308, i32 -2146180283, i32 -2146180139, i32 -2146177002, i32 -2146176913, i32 -2146176792, i32 -2146176697, i32 -2146176596, i32 -2146176569, i32 -2146176486, i32 -2146176397, i32 -2146176276, i32 -2146176176, i32 -2146176070, i32 -2146175962, i32 -2146179851, i32 -2146179798, i32 -2146179767, i32 -2146179736, i32 -2146179715, i32 -2146179693, i32 -2146179644, i32 -2146179623, i32 -2146175879, i32 -2146175790, i32 -2146175669, i32 -2146175570, i32 -2146175464, i32 -2146175362, i32 -2146175329, i32 -2146175256, i32 -2146175188, i32 -2146179319, i32 -2146179260, i32 -2146179207, i32 -2146179176, i32 -2146179145, i32 -2146179124, i32 -2146179102, i32 -2146179053, i32 -2146179032, i32 -2146175148, i32 -2146175059, i32 -2146174938, i32 -2146174839, i32 -2146174733, i32 -2146174631, i32 -2146174598, i32 -2146174515, i32 -2146174426, i32 -2146174305, i32 -2146174205, i32 -2146174179, i32 -2146174076, i32 -2146174050, i32 -2146178774, i32 -2146178707, i32 -2146178682, i32 -2146178618, i32 -2146178536, i32 -2146178513, i32 -2146178488, i32 -2146178463}
!578 = !DILocation(line: 309, column: 5, scope: !579)
!579 = distinct !DILexicalBlock(scope: !580, file: !3, line: 309, column: 5)
!580 = distinct !DILexicalBlock(scope: !488, file: !3, line: 309, column: 5)
!581 = !{i32 -2146177482, i32 -2146177465}
!582 = !DILocation(line: 310, column: 10, scope: !583)
!583 = distinct !DILexicalBlock(scope: !493, file: !3, line: 310, column: 9)
!584 = !DILocation(line: 310, column: 24, scope: !583)
!585 = !DILocation(line: 311, column: 7, scope: !586)
!586 = distinct !DILexicalBlock(scope: !583, file: !3, line: 310, column: 47)
!587 = !DILocation(line: 315, column: 16, scope: !500)
!588 = !DILocation(line: 315, column: 7, scope: !468)
!589 = !DILocation(line: 0, scope: !590)
!590 = distinct !DILexicalBlock(scope: !591, file: !3, line: 345, column: 9)
!591 = distinct !DILexicalBlock(scope: !500, file: !3, line: 343, column: 10)
!592 = !DILocation(line: 317, column: 25, scope: !498)
!593 = !DILocation(line: 317, column: 36, scope: !498)
!594 = !{!379, !246, i64 0}
!595 = !DILocation(line: 317, column: 45, scope: !498)
!596 = !DILocation(line: 317, column: 9, scope: !499)
!597 = !DILocation(line: 274, column: 13, scope: !468)
!598 = !DILocation(line: 319, column: 12, scope: !599)
!599 = distinct !DILexicalBlock(scope: !600, file: !3, line: 319, column: 11)
!600 = distinct !DILexicalBlock(scope: !498, file: !3, line: 317, column: 64)
!601 = !DILocation(line: 319, column: 11, scope: !600)
!602 = !DILocation(line: 320, column: 9, scope: !603)
!603 = distinct !DILexicalBlock(scope: !599, file: !3, line: 319, column: 42)
!604 = !DILocation(line: 323, column: 12, scope: !605)
!605 = distinct !DILexicalBlock(scope: !600, file: !3, line: 323, column: 11)
!606 = !{!351, !247, i64 20}
!607 = !DILocation(line: 323, column: 44, scope: !605)
!608 = !DILocation(line: 323, column: 31, scope: !605)
!609 = !DILocation(line: 324, column: 12, scope: !605)
!610 = !DILocation(line: 324, column: 44, scope: !605)
!611 = !DILocation(line: 324, column: 31, scope: !605)
!612 = !DILocation(line: 325, column: 9, scope: !613)
!613 = distinct !DILexicalBlock(scope: !605, file: !3, line: 324, column: 58)
!614 = !DILocation(line: 331, column: 12, scope: !497)
!615 = !DILocation(line: 332, column: 21, scope: !616)
!616 = distinct !DILexicalBlock(scope: !497, file: !3, line: 332, column: 11)
!617 = !DILocation(line: 332, column: 11, scope: !497)
!618 = !DILocation(line: 334, column: 28, scope: !619)
!619 = distinct !DILexicalBlock(scope: !616, file: !3, line: 334, column: 18)
!620 = !DILocation(line: 334, column: 18, scope: !616)
!621 = !DILocation(line: 0, scope: !622)
!622 = distinct !DILexicalBlock(scope: !616, file: !3, line: 332, column: 33)
!623 = !DILocation(line: 338, column: 13, scope: !497)
!624 = !DILocation(line: 0, scope: !497)
!625 = !DILocation(line: 273, column: 9, scope: !468)
!626 = !DILocation(line: 339, column: 15, scope: !627)
!627 = distinct !DILexicalBlock(scope: !497, file: !3, line: 339, column: 11)
!628 = !DILocation(line: 339, column: 11, scope: !497)
!629 = !DILocation(line: 0, scope: !630)
!630 = distinct !DILexicalBlock(scope: !627, file: !3, line: 339, column: 26)
!631 = !DILocation(line: 345, column: 25, scope: !590)
!632 = !DILocation(line: 345, column: 36, scope: !590)
!633 = !DILocation(line: 345, column: 45, scope: !590)
!634 = !DILocation(line: 345, column: 9, scope: !591)
!635 = !DILocation(line: 346, column: 7, scope: !636)
!636 = distinct !DILexicalBlock(scope: !637, file: !3, line: 346, column: 7)
!637 = distinct !DILexicalBlock(scope: !638, file: !3, line: 346, column: 7)
!638 = distinct !DILexicalBlock(scope: !590, file: !3, line: 345, column: 60)
!639 = !DILocation(line: 346, column: 7, scope: !637)
!640 = !DILocation(line: 346, column: 7, scope: !641)
!641 = distinct !DILexicalBlock(scope: !642, file: !3, line: 346, column: 7)
!642 = distinct !DILexicalBlock(scope: !636, file: !3, line: 346, column: 7)
!643 = !DILocation(line: 346, column: 7, scope: !644)
!644 = distinct !DILexicalBlock(scope: !642, file: !3, line: 346, column: 7)
!645 = !DILocation(line: 346, column: 7, scope: !642)
!646 = !DILocation(line: 346, column: 7, scope: !647)
!647 = distinct !DILexicalBlock(scope: !648, file: !3, line: 346, column: 7)
!648 = distinct !DILexicalBlock(scope: !636, file: !3, line: 346, column: 7)
!649 = !DILocation(line: 346, column: 7, scope: !650)
!650 = distinct !DILexicalBlock(scope: !648, file: !3, line: 346, column: 7)
!651 = !DILocation(line: 348, column: 7, scope: !652)
!652 = distinct !DILexicalBlock(scope: !653, file: !3, line: 348, column: 7)
!653 = distinct !DILexicalBlock(scope: !654, file: !3, line: 348, column: 7)
!654 = distinct !DILexicalBlock(scope: !590, file: !3, line: 347, column: 12)
!655 = !DILocation(line: 348, column: 7, scope: !653)
!656 = !DILocation(line: 348, column: 7, scope: !657)
!657 = distinct !DILexicalBlock(scope: !658, file: !3, line: 348, column: 7)
!658 = distinct !DILexicalBlock(scope: !652, file: !3, line: 348, column: 7)
!659 = !DILocation(line: 348, column: 7, scope: !660)
!660 = distinct !DILexicalBlock(scope: !658, file: !3, line: 348, column: 7)
!661 = !DILocation(line: 348, column: 7, scope: !658)
!662 = !DILocation(line: 348, column: 7, scope: !663)
!663 = distinct !DILexicalBlock(scope: !664, file: !3, line: 348, column: 7)
!664 = distinct !DILexicalBlock(scope: !652, file: !3, line: 348, column: 7)
!665 = !DILocation(line: 348, column: 7, scope: !664)
!666 = !DILocation(line: 348, column: 7, scope: !667)
!667 = distinct !DILexicalBlock(scope: !664, file: !3, line: 348, column: 7)
!668 = !DILocation(line: 278, column: 10, scope: !468)
!669 = !DILocation(line: 353, column: 7, scope: !468)
!670 = !DILocation(line: 354, column: 15, scope: !671)
!671 = distinct !DILexicalBlock(scope: !672, file: !3, line: 353, column: 25)
!672 = distinct !DILexicalBlock(scope: !468, file: !3, line: 353, column: 7)
!673 = !DILocation(line: 355, column: 17, scope: !674)
!674 = distinct !DILexicalBlock(scope: !671, file: !3, line: 355, column: 9)
!675 = !DILocation(line: 355, column: 9, scope: !671)
!676 = !DILocation(line: 0, scope: !677)
!677 = distinct !DILexicalBlock(scope: !671, file: !3, line: 359, column: 5)
!678 = !DILocation(line: 360, column: 16, scope: !671)
!679 = !DILocation(line: 361, column: 3, scope: !671)
!680 = !DILocation(line: 0, scope: !468)
!681 = !DILocation(line: 363, column: 3, scope: !682)
!682 = distinct !DILexicalBlock(scope: !468, file: !3, line: 363, column: 3)
!683 = !DILocation(line: 365, column: 38, scope: !468)
!684 = !DILocalVariable(name: "a", arg: 1, scope: !685, file: !384, line: 157, type: !387)
!685 = distinct !DISubprogram(name: "uk_malloc", scope: !384, file: !384, line: 157, type: !393, isLocal: true, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !686)
!686 = !{!684, !687}
!687 = !DILocalVariable(name: "size", arg: 2, scope: !685, file: !384, line: 157, type: !395)
!688 = !DILocation(line: 157, column: 48, scope: !685, inlinedAt: !689)
!689 = distinct !DILocation(line: 365, column: 28, scope: !468)
!690 = !DILocation(line: 157, column: 58, scope: !685, inlinedAt: !689)
!691 = !DILocation(line: 159, column: 6, scope: !692, inlinedAt: !689)
!692 = distinct !DILexicalBlock(scope: !685, file: !384, line: 159, column: 6)
!693 = !DILocation(line: 159, column: 6, scope: !685, inlinedAt: !689)
!694 = !DILocation(line: 160, column: 3, scope: !695, inlinedAt: !689)
!695 = distinct !DILexicalBlock(scope: !692, file: !384, line: 159, column: 20)
!696 = !DILocation(line: 160, column: 9, scope: !695, inlinedAt: !689)
!697 = !DILocation(line: 161, column: 3, scope: !695, inlinedAt: !689)
!698 = !DILocation(line: 164, column: 1, scope: !685, inlinedAt: !689)
!699 = !DILocation(line: 275, column: 20, scope: !468)
!700 = !DILocation(line: 366, column: 7, scope: !468)
!701 = !DILocalVariable(name: "a", arg: 1, scope: !702, file: !384, line: 151, type: !387)
!702 = distinct !DISubprogram(name: "uk_do_malloc", scope: !384, file: !384, line: 151, type: !393, isLocal: true, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !21, retainedNodes: !703)
!703 = !{!701, !704}
!704 = !DILocalVariable(name: "size", arg: 2, scope: !702, file: !384, line: 151, type: !395)
!705 = !DILocation(line: 151, column: 51, scope: !702, inlinedAt: !706)
!706 = distinct !DILocation(line: 163, column: 9, scope: !685, inlinedAt: !689)
!707 = !DILocation(line: 151, column: 61, scope: !702, inlinedAt: !706)
!708 = !DILocation(line: 153, column: 2, scope: !709, inlinedAt: !706)
!709 = distinct !DILexicalBlock(scope: !702, file: !384, line: 153, column: 2)
!710 = !DILocation(line: 154, column: 12, scope: !702, inlinedAt: !706)
!711 = !DILocation(line: 154, column: 9, scope: !702, inlinedAt: !706)
!712 = !DILocation(line: 154, column: 2, scope: !702, inlinedAt: !706)
!713 = !DILocation(line: 163, column: 2, scope: !685, inlinedAt: !689)
!714 = !DILocation(line: 366, column: 10, scope: !715)
!715 = distinct !DILexicalBlock(scope: !468, file: !3, line: 366, column: 7)
!716 = !DILocation(line: 367, column: 5, scope: !717)
!717 = distinct !DILexicalBlock(scope: !715, file: !3, line: 366, column: 19)
!718 = !DILocation(line: 369, column: 3, scope: !468)
!719 = !DILocation(line: 371, column: 55, scope: !468)
!720 = !DILocation(line: 372, column: 7, scope: !503)
!721 = !DILocation(line: 372, column: 7, scope: !468)
!722 = !DILocation(line: 0, scope: !505)
!723 = !DILocation(line: 374, column: 26, scope: !502)
!724 = !DILocation(line: 376, column: 5, scope: !725)
!725 = distinct !DILexicalBlock(scope: !502, file: !3, line: 376, column: 5)
!726 = !DILocation(line: 377, column: 10, scope: !502)
!727 = !DILocation(line: 377, column: 22, scope: !502)
!728 = !{!729, !247, i64 1}
!729 = !{!"sockaddr_in6", !247, i64 0, !247, i64 1, !730, i64 2, !246, i64 4, !731, i64 8, !246, i64 24}
!730 = !{!"short", !247, i64 0}
!731 = !{!"in6_addr", !247, i64 0}
!732 = !DILocation(line: 378, column: 19, scope: !502)
!733 = !{!729, !247, i64 0}
!734 = !DILocation(line: 379, column: 40, scope: !502)
!735 = !DILocation(line: 379, column: 33, scope: !502)
!736 = !DILocation(line: 379, column: 22, scope: !502)
!737 = !DILocation(line: 379, column: 10, scope: !502)
!738 = !DILocation(line: 379, column: 20, scope: !502)
!739 = !{!729, !730, i64 2}
!740 = !DILocation(line: 380, column: 26, scope: !502)
!741 = !DILocation(line: 380, column: 10, scope: !502)
!742 = !DILocation(line: 380, column: 24, scope: !502)
!743 = !{!729, !246, i64 24}
!744 = !DILocation(line: 383, column: 3, scope: !502)
!745 = !DILocation(line: 385, column: 25, scope: !505)
!746 = !DILocation(line: 387, column: 5, scope: !505)
!747 = !{!748, !246, i64 4}
!748 = !{!"sockaddr_in", !247, i64 0, !247, i64 1, !730, i64 2, !749, i64 4, !247, i64 8}
!749 = !{!"in_addr", !246, i64 0}
!750 = !DILocation(line: 388, column: 10, scope: !505)
!751 = !DILocation(line: 388, column: 21, scope: !505)
!752 = !{!748, !247, i64 1}
!753 = !DILocation(line: 389, column: 18, scope: !505)
!754 = !{!748, !247, i64 0}
!755 = !DILocation(line: 390, column: 39, scope: !505)
!756 = !DILocation(line: 390, column: 32, scope: !505)
!757 = !DILocation(line: 390, column: 21, scope: !505)
!758 = !DILocation(line: 390, column: 10, scope: !505)
!759 = !DILocation(line: 390, column: 19, scope: !505)
!760 = !{!748, !730, i64 2}
!761 = !DILocation(line: 0, scope: !502)
!762 = !DILocation(line: 396, column: 7, scope: !468)
!763 = !DILocation(line: 398, column: 30, scope: !764)
!764 = distinct !DILexicalBlock(scope: !765, file: !3, line: 396, column: 22)
!765 = distinct !DILexicalBlock(scope: !468, file: !3, line: 396, column: 7)
!766 = !{!379, !246, i64 8}
!767 = !DILocation(line: 398, column: 9, scope: !764)
!768 = !DILocation(line: 398, column: 21, scope: !764)
!769 = !DILocation(line: 399, column: 30, scope: !764)
!770 = !{!379, !246, i64 12}
!771 = !DILocation(line: 399, column: 9, scope: !764)
!772 = !DILocation(line: 399, column: 21, scope: !764)
!773 = !DILocation(line: 400, column: 3, scope: !764)
!774 = !DILocation(line: 401, column: 7, scope: !468)
!775 = !DILocation(line: 403, column: 62, scope: !776)
!776 = distinct !DILexicalBlock(scope: !777, file: !3, line: 401, column: 25)
!777 = distinct !DILexicalBlock(scope: !468, file: !3, line: 401, column: 7)
!778 = !DILocation(line: 403, column: 9, scope: !776)
!779 = !DILocation(line: 403, column: 22, scope: !776)
!780 = !{!379, !255, i64 32}
!781 = !DILocation(line: 404, column: 5, scope: !776)
!782 = !DILocation(line: 405, column: 9, scope: !776)
!783 = !DILocation(line: 405, column: 5, scope: !776)
!784 = !DILocation(line: 405, column: 31, scope: !776)
!785 = !DILocation(line: 406, column: 3, scope: !776)
!786 = !DILocation(line: 407, column: 7, scope: !468)
!787 = !DILocation(line: 407, column: 18, scope: !468)
!788 = !{!379, !246, i64 16}
!789 = !DILocation(line: 408, column: 7, scope: !468)
!790 = !DILocation(line: 408, column: 15, scope: !468)
!791 = !{!379, !255, i64 24}
!792 = !DILocation(line: 410, column: 8, scope: !468)
!793 = !DILocation(line: 412, column: 3, scope: !468)
!794 = !DILocation(line: 413, column: 1, scope: !468)
!795 = !DILocation(line: 194, column: 43, scope: !201)
!796 = !DILocation(line: 196, column: 2, scope: !201)
!797 = !DILocation(line: 196, column: 10, scope: !201)
!798 = !DILocation(line: 197, column: 2, scope: !201)
!799 = !DILocation(line: 198, column: 2, scope: !800)
!800 = distinct !DILexicalBlock(scope: !801, file: !202, line: 198, column: 2)
!801 = distinct !DILexicalBlock(scope: !201, file: !202, line: 198, column: 2)
!802 = !DILocation(line: 199, column: 2, scope: !201)
!803 = !DILocation(line: 200, column: 1, scope: !201)
