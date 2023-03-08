; ModuleID = '/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/ipv6/mld6.c'
source_filename = "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/ipv6/mld6.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stats_ = type { %struct.stats_proto, %struct.stats_proto, %struct.stats_proto, %struct.stats_proto, %struct.stats_proto, %struct.stats_proto, %struct.stats_proto, %struct.stats_sys, %struct.stats_proto, %struct.stats_proto, %struct.stats_proto, %struct.stats_igmp, %struct.stats_proto }
%struct.stats_sys = type { %struct.stats_syselem, %struct.stats_syselem, %struct.stats_syselem }
%struct.stats_syselem = type { i16, i16, i16 }
%struct.stats_igmp = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.stats_proto = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.ip_globals = type { %struct.netif*, %struct.netif*, %struct.ip_hdr*, %struct.ip6_hdr*, i16, %struct.ip_addr, %struct.ip_addr }
%struct.netif = type { %struct.netif*, %struct.ip_addr, %struct.ip_addr, %struct.ip_addr, [3 x %struct.ip_addr], [3 x i8], [3 x i32], [3 x i32], i8 (%struct.pbuf*, %struct.netif*)*, i8 (%struct.netif*, %struct.pbuf*, %struct.ip4_addr*)*, i8 (%struct.netif*, %struct.pbuf*)*, i8 (%struct.netif*, %struct.pbuf*, %struct.ip6_addr*)*, void (%struct.netif*)*, void (%struct.netif*)*, i8*, [1 x i8*], i16, i16, i16, [6 x i8], i8, i8, [2 x i8], i8, i8, i8, i8 (%struct.netif*, %struct.ip6_addr*, i32)* }
%struct.pbuf = type { %struct.pbuf*, i8*, i16, i16, i8, i8, i8, i8 }
%struct.ip4_addr = type { i32 }
%struct.ip6_addr = type { [4 x i32], i8 }
%struct.ip_hdr = type { i8, i8, i16, i16, i16, i8, i8, i16, %struct.ip4_addr_packed, %struct.ip4_addr_packed }
%struct.ip4_addr_packed = type { i32 }
%struct.ip6_hdr = type { i32, i16, i8, i8, %struct.ip6_addr_packed, %struct.ip6_addr_packed }
%struct.ip6_addr_packed = type { [4 x i32] }
%struct.ip_addr = type { %union.anon, i8 }
%union.anon = type { %struct.ip6_addr }
%struct.uk_thread_status_block = type { i64, i64 }
%struct.uk_swrand = type opaque
%struct.mld_group = type { %struct.mld_group*, %struct.ip6_addr, i8, i8, i16, i8 }
%struct.mld_header = type { i8, i8, i16, i16, i16, %struct.ip6_addr_packed }

@lwip_stats = external dso_local local_unnamed_addr global %struct.stats_, align 2
@ip_data = external dso_local local_unnamed_addr global %struct.ip_globals, align 8
@netif_list = external dso_local local_unnamed_addr global %struct.netif*, align 8
@_intrstack_start = external dso_local global [0 x i8], align 1
@_end = external dso_local global [0 x i8], align 1
@tsb_comp1 = external dso_local global [32 x %struct.uk_thread_status_block], align 16
@tsb_comp0 = external dso_local global [32 x %struct.uk_thread_status_block], align 16
@uk_swrand_def = external dso_local global %struct.uk_swrand, align 1
@ip6_addr_any = external dso_local constant %struct.ip_addr, align 4
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local signext i8 @mld6_stop(%struct.netif*) local_unnamed_addr #0 !dbg !153 {
  %2 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 15, i64 0, !dbg !264
  %3 = bitcast i8** %2 to %struct.mld_group**, !dbg !264
  %4 = load %struct.mld_group*, %struct.mld_group** %3, align 8, !dbg !264, !tbaa !265
  store i8* null, i8** %2, align 8, !dbg !270, !tbaa !265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !271
  %5 = icmp eq %struct.mld_group* %4, null, !dbg !272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !271
  br i1 %5, label %20, label %6, !dbg !271

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 26
  br label %8, !dbg !271

; <label>:8:                                      ; preds = %6, %18
  %9 = phi %struct.mld_group* [ %4, %6 ], [ %12, %18 ]
  %10 = bitcast %struct.mld_group* %9 to i8*, !dbg !273
  %11 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %9, i64 0, i32 0, !dbg !274
  %12 = load %struct.mld_group*, %struct.mld_group** %11, align 8, !dbg !274, !tbaa !275
  %13 = load i8 (%struct.netif*, %struct.ip6_addr*, i32)*, i8 (%struct.netif*, %struct.ip6_addr*, i32)** %7, align 8, !dbg !280, !tbaa !282
  %14 = icmp eq i8 (%struct.netif*, %struct.ip6_addr*, i32)* %13, null, !dbg !285
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !286
  br i1 %14, label %18, label %15, !dbg !286

; <label>:15:                                     ; preds = %8
  %16 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %9, i64 0, i32 1, !dbg !287
  %17 = tail call signext i8 %13(%struct.netif* nonnull %0, %struct.ip6_addr* nonnull %16, i32 0) #5, !dbg !289
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !290
  br label %18, !dbg !290

; <label>:18:                                     ; preds = %8, %15
  tail call void @memp_free(i32 14, i8* nonnull %10) #5, !dbg !291
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !271
  %19 = icmp eq %struct.mld_group* %12, null, !dbg !272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !271
  br i1 %19, label %20, label %8, !dbg !271, !llvm.loop !292

; <label>:20:                                     ; preds = %18, %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !294
  ret i8 0, !dbg !294
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local void @memp_free(i32, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone nounwind
define dso_local void @mld6_report_groups(%struct.netif* nocapture readonly) local_unnamed_addr #0 !dbg !295 {
  %2 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 15, i64 0, !dbg !300
  %3 = bitcast i8** %2 to %struct.mld_group**, !dbg !300
  %4 = load %struct.mld_group*, %struct.mld_group** %3, align 8, !dbg !300, !tbaa !265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !302
  %5 = icmp eq %struct.mld_group* %4, null, !dbg !303
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !302
  br i1 %5, label %11, label %6, !dbg !302

; <label>:6:                                      ; preds = %1, %6
  %7 = phi %struct.mld_group* [ %9, %6 ], [ %4, %1 ]
  tail call fastcc void @mld6_delayed_report(%struct.mld_group* nonnull %7, i16 zeroext 500) #6, !dbg !304
  %8 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %7, i64 0, i32 0, !dbg !306
  %9 = load %struct.mld_group*, %struct.mld_group** %8, align 8, !dbg !306, !tbaa !275
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !302
  %10 = icmp eq %struct.mld_group* %9, null, !dbg !303
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !302
  br i1 %10, label %11, label %6, !dbg !302, !llvm.loop !307

; <label>:11:                                     ; preds = %6, %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !309
  ret void, !dbg !309
}

; Function Attrs: noredzone nounwind
define internal fastcc void @mld6_delayed_report(%struct.mld_group* nocapture, i16 zeroext) unnamed_addr #0 !dbg !310 {
  %3 = alloca i32, align 4
  %4 = udiv i16 %1, 100, !dbg !319
  %5 = icmp ult i16 %1, 100, !dbg !321
  %6 = select i1 %5, i16 1, i16 %4, !dbg !323
  %7 = bitcast i32* %3 to i8*, !dbg !324
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #7, !dbg !324
  %8 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !343, !srcloc !351
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !353
  %9 = icmp ult i64 %8, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !354
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !354
  br i1 %9, label %16, label %10, !dbg !354

; <label>:10:                                     ; preds = %2
  %11 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !355, !srcloc !351
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !358
  %12 = icmp ugt i64 %11, ptrtoint ([0 x i8]* @_end to i64), !dbg !354
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !359
  br i1 %12, label %16, label %13, !dbg !359

; <label>:13:                                     ; preds = %10
  %14 = tail call i64 @ukplat_lcpu_save_irqf() #5, !dbg !360
  %15 = tail call i32 @uk_swrand_randr_r(%struct.uk_swrand* nonnull @uk_swrand_def) #5, !dbg !369
  tail call void @ukplat_lcpu_restore_irqf(i64 %14) #5, !dbg !371
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !372
  store i32 %15, i32* %3, align 4, !dbg !374, !tbaa !375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !374
  br label %25, !dbg !374

; <label>:16:                                     ; preds = %10, %2
  %17 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !377, !srcloc !351
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !387
  %18 = and i64 %17, -65536, !dbg !389
  %19 = or i64 %18, 4097, !dbg !389
  %20 = add nsw i64 %19, -1, !dbg !389
  %21 = inttoptr i64 %20 to i32*, !dbg !390
  %22 = load i32, i32* %21, align 4096, !dbg !391, !tbaa !375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !392
  %23 = tail call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_swrand_randr\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i32 %22, i32 ()* nonnull @uk_swrand_randr) #7, !dbg !393, !srcloc !394
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %3, i64 %23) #7, !dbg !395, !srcloc !398
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %24 = load i32, i32* %3, align 4, !dbg !399, !tbaa !375
  br label %25

; <label>:25:                                     ; preds = %13, %16
  %26 = phi i32 [ %24, %16 ], [ %15, %13 ], !dbg !399
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #7, !dbg !400
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !401
  %27 = zext i16 %6 to i32, !dbg !402
  %28 = urem i32 %26, %27, !dbg !403
  %29 = trunc i32 %28 to i16, !dbg !404
  %30 = icmp eq i32 %28, 0, !dbg !405
  %31 = select i1 %30, i16 1, i16 %29, !dbg !407
  %32 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %0, i64 0, i32 3, !dbg !408
  %33 = load i8, i8* %32, align 1, !dbg !408, !tbaa !410
  %34 = icmp eq i8 %33, 2, !dbg !411
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !412
  br i1 %34, label %35, label %37, !dbg !412

; <label>:35:                                     ; preds = %25
  %36 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %0, i64 0, i32 4, !dbg !413
  br label %45, !dbg !412

; <label>:37:                                     ; preds = %25
  %38 = icmp eq i8 %33, 1, !dbg !415
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !416
  br i1 %38, label %39, label %47, !dbg !416

; <label>:39:                                     ; preds = %37
  %40 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %0, i64 0, i32 4, !dbg !417
  %41 = load i16, i16* %40, align 2, !dbg !417, !tbaa !418
  %42 = icmp eq i16 %41, 0, !dbg !419
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !420
  br i1 %42, label %45, label %43, !dbg !420

; <label>:43:                                     ; preds = %39
  %44 = icmp ult i16 %31, %41, !dbg !421
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !422
  br i1 %44, label %45, label %47, !dbg !422

; <label>:45:                                     ; preds = %35, %43, %39
  %46 = phi i16* [ %36, %35 ], [ %40, %43 ], [ %40, %39 ], !dbg !413
  store i16 %31, i16* %46, align 2, !dbg !423, !tbaa !418
  store i8 1, i8* %32, align 1, !dbg !424, !tbaa !410
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !425
  br label %47, !dbg !425

; <label>:47:                                     ; preds = %45, %43, %37
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !426
  ret void, !dbg !426
}

; Function Attrs: noredzone nounwind
define dso_local %struct.mld_group* @mld6_lookfor_group(%struct.netif* nocapture readonly, %struct.ip6_addr* nocapture readonly) local_unnamed_addr #0 !dbg !427 {
  %3 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 15, i64 0, !dbg !436
  %4 = bitcast i8** %3 to %struct.mld_group**, !dbg !436
  %5 = load %struct.mld_group*, %struct.mld_group** %4, align 8, !dbg !436, !tbaa !265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !438
  %6 = icmp eq %struct.mld_group* %5, null, !dbg !439
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !438
  br i1 %6, label %43, label %7, !dbg !438

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 0
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 1
  %11 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 2
  %12 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 3
  %13 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 1
  br label %14, !dbg !438

; <label>:14:                                     ; preds = %7, %39
  %15 = phi %struct.mld_group* [ %5, %7 ], [ %41, %39 ]
  %16 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %15, i64 0, i32 1, i32 0, i64 0, !dbg !440
  %17 = load i32, i32* %16, align 8, !dbg !440, !tbaa !375
  %18 = icmp eq i32 %17, %9, !dbg !440
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !440
  br i1 %18, label %19, label %39, !dbg !440

; <label>:19:                                     ; preds = %14
  %20 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %15, i64 0, i32 1, i32 0, i64 1, !dbg !440
  %21 = load i32, i32* %20, align 4, !dbg !440, !tbaa !375
  %22 = load i32, i32* %10, align 4, !dbg !440, !tbaa !375
  %23 = icmp eq i32 %21, %22, !dbg !440
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !440
  br i1 %23, label %24, label %39, !dbg !440

; <label>:24:                                     ; preds = %19
  %25 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %15, i64 0, i32 1, i32 0, i64 2, !dbg !440
  %26 = load i32, i32* %25, align 8, !dbg !440, !tbaa !375
  %27 = load i32, i32* %11, align 4, !dbg !440, !tbaa !375
  %28 = icmp eq i32 %26, %27, !dbg !440
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !440
  br i1 %28, label %29, label %39, !dbg !440

; <label>:29:                                     ; preds = %24
  %30 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %15, i64 0, i32 1, i32 0, i64 3, !dbg !440
  %31 = load i32, i32* %30, align 4, !dbg !440, !tbaa !375
  %32 = load i32, i32* %12, align 4, !dbg !440, !tbaa !375
  %33 = icmp eq i32 %31, %32, !dbg !440
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !440
  br i1 %33, label %34, label %39, !dbg !440

; <label>:34:                                     ; preds = %29
  %35 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %15, i64 0, i32 1, i32 1, !dbg !440
  %36 = load i8, i8* %35, align 8, !dbg !440, !tbaa !443
  %37 = load i8, i8* %13, align 4, !dbg !440, !tbaa !444
  %38 = icmp eq i8 %36, %37, !dbg !440
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !445
  br i1 %38, label %43, label %39, !dbg !445

; <label>:39:                                     ; preds = %34, %29, %24, %19, %14
  %40 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %15, i64 0, i32 0, !dbg !446
  %41 = load %struct.mld_group*, %struct.mld_group** %40, align 8, !dbg !446, !tbaa !275
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !438
  %42 = icmp eq %struct.mld_group* %41, null, !dbg !439
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !438
  br i1 %42, label %43, label %14, !dbg !438, !llvm.loop !447

; <label>:43:                                     ; preds = %39, %34, %2
  %44 = phi %struct.mld_group* [ null, %2 ], [ null, %39 ], [ %15, %34 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !449
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !451
  ret %struct.mld_group* %44, !dbg !451
}

; Function Attrs: noredzone nounwind
define dso_local void @mld6_input(%struct.pbuf*, %struct.netif* nocapture readonly) local_unnamed_addr #0 !dbg !452 {
  %3 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 1), align 2, !dbg !462, !tbaa !463
  %4 = add i16 %3, 1, !dbg !462
  store i16 %4, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 1), align 2, !dbg !462, !tbaa !463
  %5 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 3, !dbg !469
  %6 = load i16, i16* %5, align 2, !dbg !469, !tbaa !471
  %7 = icmp ult i16 %6, 24, !dbg !473
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !474
  br i1 %7, label %8, label %14, !dbg !474

; <label>:8:                                      ; preds = %2
  %9 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #5, !dbg !475
  %10 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 4), align 2, !dbg !477, !tbaa !478
  %11 = add i16 %10, 1, !dbg !477
  store i16 %11, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 4), align 2, !dbg !477, !tbaa !478
  %12 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 2), align 2, !dbg !479, !tbaa !480
  %13 = add i16 %12, 1, !dbg !479
  store i16 %13, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 2), align 2, !dbg !479, !tbaa !480
  br label %177, !dbg !481

; <label>:14:                                     ; preds = %2
  %15 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 1, !dbg !482
  %16 = bitcast i8** %15 to %struct.mld_header**, !dbg !482
  %17 = load %struct.mld_header*, %struct.mld_header** %16, align 8, !dbg !482, !tbaa !483
  %18 = getelementptr inbounds %struct.mld_header, %struct.mld_header* %17, i64 0, i32 0, !dbg !485
  %19 = load i8, i8* %18, align 1, !dbg !485, !tbaa !486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !489
  switch i8 %19, label %170 [
    i8 -126, label %20
    i8 -125, label %124
    i8 -124, label %175
  ], !dbg !489

; <label>:20:                                     ; preds = %14
  %21 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !490, !tbaa !493
  %22 = icmp eq i32 %21, 767, !dbg !490
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !490
  br i1 %22, label %23, label %83, !dbg !490

; <label>:23:                                     ; preds = %20
  %24 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 1), align 4, !dbg !490, !tbaa !493
  %25 = icmp eq i32 %24, 0, !dbg !490
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !490
  br i1 %25, label %26, label %83, !dbg !490

; <label>:26:                                     ; preds = %23
  %27 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 2), align 4, !dbg !490, !tbaa !493
  %28 = icmp eq i32 %27, 0, !dbg !490
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !490
  br i1 %28, label %29, label %83, !dbg !490

; <label>:29:                                     ; preds = %26
  %30 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 3), align 4, !dbg !490, !tbaa !493
  %31 = icmp eq i32 %30, 16777216, !dbg !490
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !494
  br i1 %31, label %32, label %83, !dbg !494

; <label>:32:                                     ; preds = %29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !495
  %33 = getelementptr inbounds %struct.mld_header, %struct.mld_header* %17, i64 0, i32 5, i32 0, i64 0, !dbg !495
  %34 = load i32, i32* %33, align 1, !dbg !495, !tbaa !375
  %35 = icmp eq i32 %34, 0, !dbg !495
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !495
  br i1 %35, label %36, label %83, !dbg !495

; <label>:36:                                     ; preds = %32
  %37 = getelementptr inbounds %struct.mld_header, %struct.mld_header* %17, i64 0, i32 5, i32 0, i64 1, !dbg !495
  %38 = load i32, i32* %37, align 1, !dbg !495, !tbaa !375
  %39 = icmp eq i32 %38, 0, !dbg !495
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !495
  br i1 %39, label %40, label %83, !dbg !495

; <label>:40:                                     ; preds = %36
  %41 = getelementptr inbounds %struct.mld_header, %struct.mld_header* %17, i64 0, i32 5, i32 0, i64 2, !dbg !495
  %42 = load i32, i32* %41, align 1, !dbg !495, !tbaa !375
  %43 = icmp eq i32 %42, 0, !dbg !495
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !495
  br i1 %43, label %44, label %83, !dbg !495

; <label>:44:                                     ; preds = %40
  %45 = getelementptr inbounds %struct.mld_header, %struct.mld_header* %17, i64 0, i32 5, i32 0, i64 3, !dbg !495
  %46 = load i32, i32* %45, align 1, !dbg !495, !tbaa !375
  %47 = icmp eq i32 %46, 0, !dbg !495
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !496
  br i1 %47, label %48, label %83, !dbg !496

; <label>:48:                                     ; preds = %44
  %49 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 9), align 2, !dbg !497, !tbaa !499
  %50 = add i16 %49, 1, !dbg !497
  store i16 %50, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 9), align 2, !dbg !497, !tbaa !499
  %51 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 15, i64 0, !dbg !500
  %52 = bitcast i8** %51 to %struct.mld_group**, !dbg !500
  %53 = load %struct.mld_group*, %struct.mld_group** %52, align 8, !dbg !500, !tbaa !265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !502
  %54 = icmp eq %struct.mld_group* %53, null, !dbg !503
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !502
  br i1 %54, label %175, label %55, !dbg !502

; <label>:55:                                     ; preds = %48
  %56 = getelementptr inbounds %struct.mld_header, %struct.mld_header* %17, i64 0, i32 3
  br label %57, !dbg !502

; <label>:57:                                     ; preds = %55, %79
  %58 = phi %struct.mld_group* [ %53, %55 ], [ %81, %79 ]
  %59 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %58, i64 0, i32 1, i32 0, i64 0, !dbg !504
  %60 = load i32, i32* %59, align 8, !dbg !504, !tbaa !375
  %61 = and i32 %60, 36863, !dbg !504
  %62 = icmp eq i32 %61, 511, !dbg !504
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !507
  br i1 %62, label %79, label %63, !dbg !507

; <label>:63:                                     ; preds = %57
  %64 = icmp eq i32 %60, 767, !dbg !508
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !508
  br i1 %64, label %65, label %77, !dbg !508

; <label>:65:                                     ; preds = %63
  %66 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %58, i64 0, i32 1, i32 0, i64 1, !dbg !508
  %67 = load i32, i32* %66, align 4, !dbg !508, !tbaa !375
  %68 = icmp eq i32 %67, 0, !dbg !508
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !508
  br i1 %68, label %69, label %77, !dbg !508

; <label>:69:                                     ; preds = %65
  %70 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %58, i64 0, i32 1, i32 0, i64 2, !dbg !508
  %71 = load i32, i32* %70, align 8, !dbg !508, !tbaa !375
  %72 = icmp eq i32 %71, 0, !dbg !508
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !508
  br i1 %72, label %73, label %77, !dbg !508

; <label>:73:                                     ; preds = %69
  %74 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %58, i64 0, i32 1, i32 0, i64 3, !dbg !508
  %75 = load i32, i32* %74, align 4, !dbg !508, !tbaa !375
  %76 = icmp eq i32 %75, 16777216, !dbg !508
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !509
  br i1 %76, label %79, label %77, !dbg !509

; <label>:77:                                     ; preds = %73, %69, %65, %63
  %78 = load i16, i16* %56, align 1, !dbg !510, !tbaa !512
  tail call fastcc void @mld6_delayed_report(%struct.mld_group* nonnull %58, i16 zeroext %78) #6, !dbg !513
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !514
  br label %79, !dbg !514

; <label>:79:                                     ; preds = %77, %73, %57
  %80 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %58, i64 0, i32 0, !dbg !515
  %81 = load %struct.mld_group*, %struct.mld_group** %80, align 8, !dbg !515, !tbaa !275
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !502
  %82 = icmp eq %struct.mld_group* %81, null, !dbg !503
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !502
  br i1 %82, label %175, label %57, !dbg !502, !llvm.loop !516

; <label>:83:                                     ; preds = %44, %40, %36, %32, %29, %26, %23, %20
  %84 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 8), align 2, !dbg !518, !tbaa !520
  %85 = add i16 %84, 1, !dbg !518
  store i16 %85, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 8), align 2, !dbg !518, !tbaa !520
  %86 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 15, i64 0, !dbg !523
  %87 = bitcast i8** %86 to %struct.mld_group**, !dbg !523
  %88 = load %struct.mld_group*, %struct.mld_group** %87, align 8, !dbg !523, !tbaa !265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !525
  %89 = icmp eq %struct.mld_group* %88, null, !dbg !526
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !525
  br i1 %89, label %120, label %90, !dbg !525

; <label>:90:                                     ; preds = %83
  %91 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 1), align 4
  %92 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 2), align 4
  %93 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 3), align 4
  %94 = load i8, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 1), align 4
  br label %95, !dbg !527

; <label>:95:                                     ; preds = %90, %116
  %96 = phi %struct.mld_group* [ %118, %116 ], [ %88, %90 ]
  %97 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %96, i64 0, i32 1, i32 0, i64 0, !dbg !527
  %98 = load i32, i32* %97, align 8, !dbg !527, !tbaa !375
  %99 = icmp eq i32 %98, %21, !dbg !527
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !527
  br i1 %99, label %100, label %116, !dbg !527

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %96, i64 0, i32 1, i32 0, i64 1, !dbg !527
  %102 = load i32, i32* %101, align 4, !dbg !527, !tbaa !375
  %103 = icmp eq i32 %102, %91, !dbg !527
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !527
  br i1 %103, label %104, label %116, !dbg !527

; <label>:104:                                    ; preds = %100
  %105 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %96, i64 0, i32 1, i32 0, i64 2, !dbg !527
  %106 = load i32, i32* %105, align 8, !dbg !527, !tbaa !375
  %107 = icmp eq i32 %106, %92, !dbg !527
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !527
  br i1 %107, label %108, label %116, !dbg !527

; <label>:108:                                    ; preds = %104
  %109 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %96, i64 0, i32 1, i32 0, i64 3, !dbg !527
  %110 = load i32, i32* %109, align 4, !dbg !527, !tbaa !375
  %111 = icmp eq i32 %110, %93, !dbg !527
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !527
  br i1 %111, label %112, label %116, !dbg !527

; <label>:112:                                    ; preds = %108
  %113 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %96, i64 0, i32 1, i32 1, !dbg !527
  %114 = load i8, i8* %113, align 8, !dbg !527, !tbaa !443
  %115 = icmp eq i8 %114, %94, !dbg !527
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !528
  br i1 %115, label %121, label %116, !dbg !528

; <label>:116:                                    ; preds = %112, %108, %104, %100, %95
  %117 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %96, i64 0, i32 0, !dbg !529
  %118 = load %struct.mld_group*, %struct.mld_group** %117, align 8, !dbg !529, !tbaa !275
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !525
  %119 = icmp eq %struct.mld_group* %118, null, !dbg !526
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !525
  br i1 %119, label %120, label %95, !dbg !525, !llvm.loop !447

; <label>:120:                                    ; preds = %116, %83
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !530
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !531
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !532
  br label %175, !dbg !532

; <label>:121:                                    ; preds = %112
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !531
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !532
  %122 = getelementptr inbounds %struct.mld_header, %struct.mld_header* %17, i64 0, i32 3, !dbg !534
  %123 = load i16, i16* %122, align 1, !dbg !534, !tbaa !512
  tail call fastcc void @mld6_delayed_report(%struct.mld_group* nonnull %96, i16 zeroext %123) #6, !dbg !537
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !538
  br label %175, !dbg !538

; <label>:124:                                    ; preds = %14
  %125 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 10), align 2, !dbg !539, !tbaa !540
  %126 = add i16 %125, 1, !dbg !539
  store i16 %126, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 10), align 2, !dbg !539, !tbaa !540
  %127 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 15, i64 0, !dbg !543
  %128 = bitcast i8** %127 to %struct.mld_group**, !dbg !543
  %129 = load %struct.mld_group*, %struct.mld_group** %128, align 8, !dbg !543, !tbaa !265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !545
  %130 = icmp eq %struct.mld_group* %129, null, !dbg !546
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !545
  br i1 %130, label %162, label %131, !dbg !545

; <label>:131:                                    ; preds = %124
  %132 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 0), align 4
  %133 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 1), align 4
  %134 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 2), align 4
  %135 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 3), align 4
  %136 = load i8, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 1), align 4
  br label %137, !dbg !545

; <label>:137:                                    ; preds = %158, %131
  %138 = phi %struct.mld_group* [ %129, %131 ], [ %160, %158 ]
  %139 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %138, i64 0, i32 1, i32 0, i64 0, !dbg !547
  %140 = load i32, i32* %139, align 8, !dbg !547, !tbaa !375
  %141 = icmp eq i32 %140, %132, !dbg !547
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !547
  br i1 %141, label %142, label %158, !dbg !547

; <label>:142:                                    ; preds = %137
  %143 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %138, i64 0, i32 1, i32 0, i64 1, !dbg !547
  %144 = load i32, i32* %143, align 4, !dbg !547, !tbaa !375
  %145 = icmp eq i32 %144, %133, !dbg !547
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !547
  br i1 %145, label %146, label %158, !dbg !547

; <label>:146:                                    ; preds = %142
  %147 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %138, i64 0, i32 1, i32 0, i64 2, !dbg !547
  %148 = load i32, i32* %147, align 8, !dbg !547, !tbaa !375
  %149 = icmp eq i32 %148, %134, !dbg !547
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !547
  br i1 %149, label %150, label %158, !dbg !547

; <label>:150:                                    ; preds = %146
  %151 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %138, i64 0, i32 1, i32 0, i64 3, !dbg !547
  %152 = load i32, i32* %151, align 4, !dbg !547, !tbaa !375
  %153 = icmp eq i32 %152, %135, !dbg !547
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !547
  br i1 %153, label %154, label %158, !dbg !547

; <label>:154:                                    ; preds = %150
  %155 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %138, i64 0, i32 1, i32 1, !dbg !547
  %156 = load i8, i8* %155, align 8, !dbg !547, !tbaa !443
  %157 = icmp eq i8 %156, %136, !dbg !547
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !548
  br i1 %157, label %163, label %158, !dbg !548

; <label>:158:                                    ; preds = %154, %150, %146, %142, %137
  %159 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %138, i64 0, i32 0, !dbg !549
  %160 = load %struct.mld_group*, %struct.mld_group** %159, align 8, !dbg !549, !tbaa !275
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !545
  %161 = icmp eq %struct.mld_group* %160, null, !dbg !546
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !545
  br i1 %161, label %162, label %137, !dbg !545, !llvm.loop !447

; <label>:162:                                    ; preds = %158, %124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !551
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !552
  br label %175, !dbg !552

; <label>:163:                                    ; preds = %154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !553
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !551
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !552
  %164 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %138, i64 0, i32 3, !dbg !554
  %165 = load i8, i8* %164, align 1, !dbg !554, !tbaa !410
  %166 = icmp eq i8 %165, 1, !dbg !558
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !559
  br i1 %166, label %167, label %175, !dbg !559

; <label>:167:                                    ; preds = %163
  %168 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %138, i64 0, i32 4, !dbg !560
  store i16 0, i16* %168, align 2, !dbg !562, !tbaa !418
  store i8 2, i8* %164, align 1, !dbg !563, !tbaa !410
  %169 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %138, i64 0, i32 2, !dbg !564
  store i8 0, i8* %169, align 4, !dbg !565, !tbaa !566
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !567
  br label %175, !dbg !567

; <label>:170:                                    ; preds = %14
  %171 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 6), align 2, !dbg !568, !tbaa !569
  %172 = add i16 %171, 1, !dbg !568
  store i16 %172, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 6), align 2, !dbg !568, !tbaa !569
  %173 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 2), align 2, !dbg !570, !tbaa !480
  %174 = add i16 %173, 1, !dbg !570
  store i16 %174, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 2), align 2, !dbg !570, !tbaa !480
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !571
  br label %175, !dbg !571

; <label>:175:                                    ; preds = %79, %48, %162, %120, %167, %163, %121, %170, %14
  %176 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %0) #5, !dbg !572
  br label %177, !dbg !573

; <label>:177:                                    ; preds = %175, %8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !574
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !573
  ret void, !dbg !573
}

; Function Attrs: noredzone
declare dso_local zeroext i8 @pbuf_free(%struct.pbuf*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local signext i8 @mld6_joingroup(%struct.ip6_addr*, %struct.ip6_addr*) local_unnamed_addr #0 !dbg !575 {
  %3 = load %struct.netif*, %struct.netif** @netif_list, align 8, !dbg !586, !tbaa !265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !586
  %4 = icmp eq %struct.netif* %3, null, !dbg !589
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !586
  br i1 %4, label %37, label %5, !dbg !586

; <label>:5:                                      ; preds = %2
  %6 = icmp eq %struct.ip6_addr* %0, null
  %7 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 0
  %8 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 1
  %9 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 2
  %10 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 3
  br label %11, !dbg !586

; <label>:11:                                     ; preds = %5, %32
  %12 = phi %struct.netif* [ %3, %5 ], [ %35, %32 ]
  %13 = phi i8 [ -6, %5 ], [ %33, %32 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !591
  br i1 %6, label %29, label %14, !dbg !591

; <label>:14:                                     ; preds = %11
  %15 = load i32, i32* %7, align 4, !dbg !591, !tbaa !375
  %16 = icmp eq i32 %15, 0, !dbg !591
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !591
  br i1 %16, label %17, label %26, !dbg !591

; <label>:17:                                     ; preds = %14
  %18 = load i32, i32* %8, align 4, !dbg !591, !tbaa !375
  %19 = icmp eq i32 %18, 0, !dbg !591
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !591
  br i1 %19, label %20, label %26, !dbg !591

; <label>:20:                                     ; preds = %17
  %21 = load i32, i32* %9, align 4, !dbg !591, !tbaa !375
  %22 = icmp eq i32 %21, 0, !dbg !591
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !591
  br i1 %22, label %23, label %26, !dbg !591

; <label>:23:                                     ; preds = %20
  %24 = load i32, i32* %10, align 4, !dbg !591, !tbaa !375
  %25 = icmp eq i32 %24, 0, !dbg !591
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !594
  br i1 %25, label %29, label %26, !dbg !594

; <label>:26:                                     ; preds = %23, %20, %17, %14
  %27 = tail call signext i8 @netif_get_ip6_addr_match(%struct.netif* nonnull %12, %struct.ip6_addr* nonnull %0) #5, !dbg !595
  %28 = icmp sgt i8 %27, -1, !dbg !596
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !597
  br i1 %28, label %29, label %32, !dbg !597

; <label>:29:                                     ; preds = %26, %23, %11
  %30 = tail call signext i8 @mld6_joingroup_netif(%struct.netif* nonnull %12, %struct.ip6_addr* %1) #6, !dbg !598
  %31 = icmp eq i8 %30, 0, !dbg !600
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !602
  br i1 %31, label %32, label %37, !dbg !602

; <label>:32:                                     ; preds = %29, %26
  %33 = phi i8 [ 0, %29 ], [ %13, %26 ], !dbg !603
  %34 = getelementptr inbounds %struct.netif, %struct.netif* %12, i64 0, i32 0, !dbg !589
  %35 = load %struct.netif*, %struct.netif** %34, align 8, !dbg !589, !tbaa !604
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !589
  %36 = icmp eq %struct.netif* %35, null, !dbg !589
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !586
  br i1 %36, label %37, label %11, !dbg !586, !llvm.loop !605

; <label>:37:                                     ; preds = %32, %29, %2
  %38 = phi i8 [ -6, %2 ], [ %33, %32 ], [ %30, %29 ], !dbg !603
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !609
  ret i8 %38, !dbg !609
}

; Function Attrs: noredzone
declare dso_local signext i8 @netif_get_ip6_addr_match(%struct.netif*, %struct.ip6_addr*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local signext i8 @mld6_joingroup_netif(%struct.netif*, %struct.ip6_addr*) local_unnamed_addr #0 !dbg !610 {
  %3 = alloca %struct.ip6_addr, align 4
  %4 = bitcast %struct.ip6_addr* %3 to i8*, !dbg !620
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %4) #7, !dbg !620
  %5 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 1, !dbg !621
  %6 = load i8, i8* %5, align 4, !dbg !621, !tbaa !444
  %7 = icmp eq i8 %6, 0, !dbg !621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !621
  br i1 %7, label %8, label %42, !dbg !621

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 0, !dbg !621
  %10 = load i32, i32* %9, align 4, !dbg !621, !tbaa !375
  %11 = zext i32 %10 to i64, !dbg !621
  %12 = and i64 %11, 49407, !dbg !621
  %13 = icmp eq i64 %12, 33022, !dbg !621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !621
  br i1 %13, label %19, label %14, !dbg !621

; <label>:14:                                     ; preds = %8
  %15 = and i64 %11, 36863, !dbg !621
  %16 = icmp eq i64 %15, 511, !dbg !621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !621
  br i1 %16, label %19, label %17, !dbg !621

; <label>:17:                                     ; preds = %14
  %18 = icmp eq i64 %15, 767, !dbg !621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !623
  br i1 %18, label %19, label %42, !dbg !623

; <label>:19:                                     ; preds = %8, %14, %17
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !624
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !624
  %20 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %3, i64 0, i32 0, i64 0, !dbg !624
  store i32 %10, i32* %20, align 4, !dbg !624, !tbaa !375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !624
  %21 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 1, !dbg !624
  %22 = load i32, i32* %21, align 4, !dbg !624, !tbaa !375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !624
  %23 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %3, i64 0, i32 0, i64 1, !dbg !624
  store i32 %22, i32* %23, align 4, !dbg !624, !tbaa !375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !624
  %24 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 2, !dbg !624
  %25 = load i32, i32* %24, align 4, !dbg !624, !tbaa !375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !624
  %26 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %3, i64 0, i32 0, i64 2, !dbg !624
  store i32 %25, i32* %26, align 4, !dbg !624, !tbaa !375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !624
  %27 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 3, !dbg !624
  %28 = load i32, i32* %27, align 4, !dbg !624, !tbaa !375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !624
  %29 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %3, i64 0, i32 0, i64 3, !dbg !624
  store i32 %28, i32* %29, align 4, !dbg !624, !tbaa !375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !624
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !624
  %30 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %3, i64 0, i32 1, !dbg !624
  store i8 0, i8* %30, align 4, !dbg !624, !tbaa !444
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !627
  br i1 %13, label %36, label %31, !dbg !627

; <label>:31:                                     ; preds = %19
  %32 = and i64 %11, 36863, !dbg !627
  %33 = icmp eq i64 %32, 511, !dbg !627
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !627
  br i1 %33, label %36, label %34, !dbg !627

; <label>:34:                                     ; preds = %31
  %35 = icmp eq i64 %32, 767, !dbg !627
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !627
  br i1 %35, label %36, label %40, !dbg !627

; <label>:36:                                     ; preds = %34, %31, %19
  %37 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 23, !dbg !627
  %38 = load i8, i8* %37, align 8, !dbg !627, !tbaa !628
  %39 = add i8 %38, 1, !dbg !627
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !627
  br label %40, !dbg !627

; <label>:40:                                     ; preds = %34, %36
  %41 = phi i8 [ %39, %36 ], [ 0, %34 ]
  store i8 %41, i8* %30, align 4, !dbg !627, !tbaa !444
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !629
  br label %42, !dbg !629

; <label>:42:                                     ; preds = %2, %40, %17
  %43 = phi i8 [ %6, %2 ], [ %41, %40 ], [ 0, %17 ]
  %44 = phi %struct.ip6_addr* [ %1, %2 ], [ %3, %40 ], [ %1, %17 ]
  %45 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 15, i64 0, !dbg !633
  %46 = bitcast i8** %45 to %struct.mld_group**, !dbg !633
  %47 = load %struct.mld_group*, %struct.mld_group** %46, align 8, !dbg !633, !tbaa !265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !635
  %48 = icmp eq %struct.mld_group* %47, null, !dbg !636
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !635
  br i1 %48, label %84, label %49, !dbg !635

; <label>:49:                                     ; preds = %42
  %50 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %44, i64 0, i32 0, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %44, i64 0, i32 0, i64 1
  %53 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %44, i64 0, i32 0, i64 2
  %54 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %44, i64 0, i32 0, i64 3
  br label %55, !dbg !635

; <label>:55:                                     ; preds = %79, %49
  %56 = phi %struct.mld_group* [ %47, %49 ], [ %81, %79 ]
  %57 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %56, i64 0, i32 1, i32 0, i64 0, !dbg !637
  %58 = load i32, i32* %57, align 8, !dbg !637, !tbaa !375
  %59 = icmp eq i32 %58, %51, !dbg !637
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !637
  br i1 %59, label %60, label %79, !dbg !637

; <label>:60:                                     ; preds = %55
  %61 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %56, i64 0, i32 1, i32 0, i64 1, !dbg !637
  %62 = load i32, i32* %61, align 4, !dbg !637, !tbaa !375
  %63 = load i32, i32* %52, align 4, !dbg !637, !tbaa !375
  %64 = icmp eq i32 %62, %63, !dbg !637
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !637
  br i1 %64, label %65, label %79, !dbg !637

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %56, i64 0, i32 1, i32 0, i64 2, !dbg !637
  %67 = load i32, i32* %66, align 8, !dbg !637, !tbaa !375
  %68 = load i32, i32* %53, align 4, !dbg !637, !tbaa !375
  %69 = icmp eq i32 %67, %68, !dbg !637
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !637
  br i1 %69, label %70, label %79, !dbg !637

; <label>:70:                                     ; preds = %65
  %71 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %56, i64 0, i32 1, i32 0, i64 3, !dbg !637
  %72 = load i32, i32* %71, align 4, !dbg !637, !tbaa !375
  %73 = load i32, i32* %54, align 4, !dbg !637, !tbaa !375
  %74 = icmp eq i32 %72, %73, !dbg !637
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !637
  br i1 %74, label %75, label %79, !dbg !637

; <label>:75:                                     ; preds = %70
  %76 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %56, i64 0, i32 1, i32 1, !dbg !637
  %77 = load i8, i8* %76, align 8, !dbg !637, !tbaa !443
  %78 = icmp eq i8 %77, %43, !dbg !637
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !638
  br i1 %78, label %83, label %79, !dbg !638

; <label>:79:                                     ; preds = %75, %70, %65, %60, %55
  %80 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %56, i64 0, i32 0, !dbg !639
  %81 = load %struct.mld_group*, %struct.mld_group** %80, align 8, !dbg !639, !tbaa !275
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !635
  %82 = icmp eq %struct.mld_group* %81, null, !dbg !636
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !635
  br i1 %82, label %84, label %55, !dbg !635, !llvm.loop !447

; <label>:83:                                     ; preds = %75
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !640
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !641
  br label %138

; <label>:84:                                     ; preds = %79, %42
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !643
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !641
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !644
  %85 = tail call i8* @memp_malloc(i32 14) #5, !dbg !655
  %86 = bitcast i8* %85 to %struct.mld_group*, !dbg !656
  %87 = icmp eq i8* %85, null, !dbg !658
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !660
  br i1 %87, label %132, label %88, !dbg !660

; <label>:88:                                     ; preds = %84
  %89 = icmp eq %struct.ip6_addr* %44, null, !dbg !661
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !661
  br i1 %89, label %90, label %99, !dbg !661

; <label>:90:                                     ; preds = %88
  %91 = getelementptr inbounds i8, i8* %85, i64 8, !dbg !661
  %92 = bitcast i8* %91 to i32*, !dbg !661
  store i32 0, i32* %92, align 8, !dbg !661, !tbaa !375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !661
  %93 = getelementptr inbounds i8, i8* %85, i64 12, !dbg !661
  %94 = bitcast i8* %93 to i32*, !dbg !661
  store i32 0, i32* %94, align 4, !dbg !661, !tbaa !375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !661
  %95 = getelementptr inbounds i8, i8* %85, i64 16, !dbg !661
  %96 = bitcast i8* %95 to i32*, !dbg !661
  store i32 0, i32* %96, align 8, !dbg !661, !tbaa !375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !661
  %97 = getelementptr inbounds i8, i8* %85, i64 20, !dbg !661
  %98 = bitcast i8* %97 to i32*, !dbg !661
  store i32 0, i32* %98, align 4, !dbg !661, !tbaa !375
  br label %118, !dbg !661

; <label>:99:                                     ; preds = %88
  %100 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %44, i64 0, i32 0, i64 0, !dbg !661
  %101 = load i32, i32* %100, align 4, !dbg !661, !tbaa !375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !661
  %102 = getelementptr inbounds i8, i8* %85, i64 8, !dbg !661
  %103 = bitcast i8* %102 to i32*, !dbg !661
  store i32 %101, i32* %103, align 8, !dbg !661, !tbaa !375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !661
  %104 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %44, i64 0, i32 0, i64 1, !dbg !661
  %105 = load i32, i32* %104, align 4, !dbg !661, !tbaa !375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !661
  %106 = getelementptr inbounds i8, i8* %85, i64 12, !dbg !661
  %107 = bitcast i8* %106 to i32*, !dbg !661
  store i32 %105, i32* %107, align 4, !dbg !661, !tbaa !375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !661
  %108 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %44, i64 0, i32 0, i64 2, !dbg !661
  %109 = load i32, i32* %108, align 4, !dbg !661, !tbaa !375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !661
  %110 = getelementptr inbounds i8, i8* %85, i64 16, !dbg !661
  %111 = bitcast i8* %110 to i32*, !dbg !661
  store i32 %109, i32* %111, align 8, !dbg !661, !tbaa !375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !661
  %112 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %44, i64 0, i32 0, i64 3, !dbg !661
  %113 = load i32, i32* %112, align 4, !dbg !661, !tbaa !375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !661
  %114 = getelementptr inbounds i8, i8* %85, i64 20, !dbg !661
  %115 = bitcast i8* %114 to i32*, !dbg !661
  store i32 %113, i32* %115, align 4, !dbg !661, !tbaa !375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !661
  %116 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %44, i64 0, i32 1, !dbg !661
  %117 = load i8, i8* %116, align 4, !dbg !661, !tbaa !444
  br label %118, !dbg !661

; <label>:118:                                    ; preds = %90, %99
  %119 = phi i8 [ %117, %99 ], [ 0, %90 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !661
  %120 = getelementptr inbounds i8, i8* %85, i64 24, !dbg !661
  store i8 %119, i8* %120, align 8, !dbg !661, !tbaa !443
  %121 = getelementptr inbounds i8, i8* %85, i64 30, !dbg !664
  %122 = bitcast i8* %121 to i16*, !dbg !664
  store i16 0, i16* %122, align 2, !dbg !665, !tbaa !418
  %123 = getelementptr inbounds i8, i8* %85, i64 29, !dbg !666
  store i8 2, i8* %123, align 1, !dbg !667, !tbaa !410
  %124 = getelementptr inbounds i8, i8* %85, i64 28, !dbg !668
  store i8 0, i8* %124, align 4, !dbg !669, !tbaa !566
  %125 = getelementptr inbounds i8, i8* %85, i64 32, !dbg !670
  store i8 0, i8* %125, align 8, !dbg !671, !tbaa !672
  %126 = bitcast i8** %45 to i64*, !dbg !673
  %127 = load i64, i64* %126, align 8, !dbg !673, !tbaa !265
  %128 = bitcast i8* %85 to i64*, !dbg !674
  store i64 %127, i64* %128, align 8, !dbg !674, !tbaa !275
  store i8* %85, i8** %45, align 8, !dbg !675, !tbaa !265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !676
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !677
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !678
  %129 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 26, !dbg !679
  %130 = load i8 (%struct.netif*, %struct.ip6_addr*, i32)*, i8 (%struct.netif*, %struct.ip6_addr*, i32)** %129, align 8, !dbg !679, !tbaa !282
  %131 = icmp eq i8 (%struct.netif*, %struct.ip6_addr*, i32)* %130, null, !dbg !681
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !682
  br i1 %131, label %135, label %133, !dbg !682

; <label>:132:                                    ; preds = %84
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !677
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !678
  br label %143, !dbg !683

; <label>:133:                                    ; preds = %118
  %134 = call signext i8 %130(%struct.netif* nonnull %0, %struct.ip6_addr* %44, i32 1) #5, !dbg !686
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !688
  br label %135, !dbg !688

; <label>:135:                                    ; preds = %118, %133
  %136 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 13), align 2, !dbg !689, !tbaa !690
  %137 = add i16 %136, 1, !dbg !689
  store i16 %137, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 13), align 2, !dbg !689, !tbaa !690
  call fastcc void @mld6_send(%struct.netif* nonnull %0, %struct.mld_group* nonnull %86, i8 zeroext -125) #6, !dbg !691
  call fastcc void @mld6_delayed_report(%struct.mld_group* nonnull %86, i16 zeroext 500) #6, !dbg !692
  br label %138, !dbg !693

; <label>:138:                                    ; preds = %83, %135
  %139 = phi %struct.mld_group* [ %86, %135 ], [ %56, %83 ], !dbg !694
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !695
  %140 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %139, i64 0, i32 5, !dbg !696
  %141 = load i8, i8* %140, align 8, !dbg !697, !tbaa !672
  %142 = add i8 %141, 1, !dbg !697
  store i8 %142, i8* %140, align 8, !dbg !697, !tbaa !672
  br label %143, !dbg !698

; <label>:143:                                    ; preds = %138, %132
  %144 = phi i8 [ -1, %132 ], [ 0, %138 ], !dbg !694
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !699
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %4) #7, !dbg !700
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !700
  ret i8 %144, !dbg !700
}

; Function Attrs: noredzone nounwind
define internal fastcc void @mld6_send(%struct.netif*, %struct.mld_group*, i8 zeroext) unnamed_addr #0 !dbg !701 {
  %4 = tail call %struct.pbuf* @pbuf_alloc(i32 54, i16 zeroext 32, i32 640) #5, !dbg !714
  %5 = icmp eq %struct.pbuf* %4, null, !dbg !716
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !718
  br i1 %5, label %6, label %9, !dbg !718

; <label>:6:                                      ; preds = %3
  %7 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 5), align 2, !dbg !719, !tbaa !721
  %8 = add i16 %7, 1, !dbg !719
  store i16 %8, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 5), align 2, !dbg !719, !tbaa !721
  br label %80, !dbg !722

; <label>:9:                                      ; preds = %3
  %10 = tail call zeroext i8 @pbuf_remove_header(%struct.pbuf* nonnull %4, i64 8) #5, !dbg !723
  %11 = icmp eq i8 %10, 0, !dbg !723
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !725
  br i1 %11, label %16, label %12, !dbg !725

; <label>:12:                                     ; preds = %9
  %13 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %4) #5, !dbg !726
  %14 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 4), align 2, !dbg !728, !tbaa !478
  %15 = add i16 %14, 1, !dbg !728
  store i16 %15, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 4), align 2, !dbg !728, !tbaa !478
  br label %80, !dbg !729

; <label>:16:                                     ; preds = %9
  %17 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 0, !dbg !730
  %18 = load i8, i8* %17, align 8, !dbg !730, !tbaa !493
  %19 = and i8 %18, 16, !dbg !730
  %20 = icmp eq i8 %19, 0, !dbg !730
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !732
  %21 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, !dbg !733
  %22 = select i1 %20, %struct.ip6_addr* getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip6_addr_any, i64 0, i32 0, i32 0), %struct.ip6_addr* %21, !dbg !732
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %23 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %4, i64 0, i32 1, !dbg !736
  %24 = bitcast i8** %23 to %struct.mld_header**, !dbg !736
  %25 = load %struct.mld_header*, %struct.mld_header** %24, align 8, !dbg !736, !tbaa !483
  %26 = getelementptr inbounds %struct.mld_header, %struct.mld_header* %25, i64 0, i32 0, !dbg !738
  store i8 %2, i8* %26, align 1, !dbg !739, !tbaa !486
  %27 = getelementptr inbounds %struct.mld_header, %struct.mld_header* %25, i64 0, i32 1, !dbg !740
  store i8 0, i8* %27, align 1, !dbg !741, !tbaa !742
  %28 = getelementptr inbounds %struct.mld_header, %struct.mld_header* %25, i64 0, i32 2, !dbg !743
  store i16 0, i16* %28, align 1, !dbg !744, !tbaa !745
  %29 = getelementptr inbounds %struct.mld_header, %struct.mld_header* %25, i64 0, i32 3, !dbg !746
  store i16 0, i16* %29, align 1, !dbg !747, !tbaa !512
  %30 = getelementptr inbounds %struct.mld_header, %struct.mld_header* %25, i64 0, i32 4, !dbg !748
  store i16 0, i16* %30, align 1, !dbg !749, !tbaa !750
  %31 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %1, i64 0, i32 1, !dbg !751
  %32 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %31, i64 0, i32 0, i64 0, !dbg !751
  %33 = load i32, i32* %32, align 8, !dbg !751, !tbaa !375
  %34 = getelementptr inbounds %struct.mld_header, %struct.mld_header* %25, i64 0, i32 5, i32 0, i64 0, !dbg !751
  store i32 %33, i32* %34, align 1, !dbg !751, !tbaa !375
  %35 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %1, i64 0, i32 1, i32 0, i64 1, !dbg !751
  %36 = load i32, i32* %35, align 4, !dbg !751, !tbaa !375
  %37 = getelementptr inbounds %struct.mld_header, %struct.mld_header* %25, i64 0, i32 5, i32 0, i64 1, !dbg !751
  store i32 %36, i32* %37, align 1, !dbg !751, !tbaa !375
  %38 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %1, i64 0, i32 1, i32 0, i64 2, !dbg !751
  %39 = load i32, i32* %38, align 8, !dbg !751, !tbaa !375
  %40 = getelementptr inbounds %struct.mld_header, %struct.mld_header* %25, i64 0, i32 5, i32 0, i64 2, !dbg !751
  store i32 %39, i32* %40, align 1, !dbg !751, !tbaa !375
  %41 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %1, i64 0, i32 1, i32 0, i64 3, !dbg !751
  %42 = load i32, i32* %41, align 4, !dbg !751, !tbaa !375
  %43 = getelementptr inbounds %struct.mld_header, %struct.mld_header* %25, i64 0, i32 5, i32 0, i64 3, !dbg !751
  store i32 %42, i32* %43, align 1, !dbg !751, !tbaa !375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !753
  %44 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 16, !dbg !753
  %45 = load i16, i16* %44, align 8, !dbg !753, !tbaa !755
  %46 = and i16 %45, 16, !dbg !753
  %47 = icmp eq i16 %46, 0, !dbg !753
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !756
  br i1 %47, label %52, label %48, !dbg !756

; <label>:48:                                     ; preds = %16
  %49 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %4, i64 0, i32 3, !dbg !757
  %50 = load i16, i16* %49, align 2, !dbg !757, !tbaa !471
  %51 = tail call zeroext i16 @ip6_chksum_pseudo(%struct.pbuf* nonnull %4, i8 zeroext 58, i16 zeroext %50, %struct.ip6_addr* %22, %struct.ip6_addr* nonnull %31) #5, !dbg !759
  store i16 %51, i16* %28, align 1, !dbg !760, !tbaa !745
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !761
  br label %52, !dbg !761

; <label>:52:                                     ; preds = %16, %48
  %53 = tail call signext i8 @ip6_options_add_hbh_ra(%struct.pbuf* nonnull %4, i8 zeroext 58, i8 zeroext 0) #5, !dbg !762
  %54 = icmp eq i8 %2, -125, !dbg !763
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !765
  br i1 %54, label %55, label %57, !dbg !765

; <label>:55:                                     ; preds = %52
  %56 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %1, i64 0, i32 2, !dbg !766
  store i8 1, i8* %56, align 4, !dbg !768, !tbaa !566
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !769
  br label %57, !dbg !769

; <label>:57:                                     ; preds = %55, %52
  %58 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 0), align 2, !dbg !770, !tbaa !771
  %59 = add i16 %58, 1, !dbg !770
  store i16 %59, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 0), align 2, !dbg !770, !tbaa !771
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !772
  %60 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %22, i64 0, i32 0, i64 0, !dbg !772
  %61 = load i32, i32* %60, align 4, !dbg !772, !tbaa !375
  %62 = icmp eq i32 %61, 0, !dbg !772
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !772
  br i1 %62, label %63, label %75, !dbg !772

; <label>:63:                                     ; preds = %57
  %64 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %22, i64 0, i32 0, i64 1, !dbg !772
  %65 = load i32, i32* %64, align 4, !dbg !772, !tbaa !375
  %66 = icmp eq i32 %65, 0, !dbg !772
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !772
  br i1 %66, label %67, label %75, !dbg !772

; <label>:67:                                     ; preds = %63
  %68 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %22, i64 0, i32 0, i64 2, !dbg !772
  %69 = load i32, i32* %68, align 4, !dbg !772, !tbaa !375
  %70 = icmp eq i32 %69, 0, !dbg !772
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !772
  br i1 %70, label %71, label %75, !dbg !772

; <label>:71:                                     ; preds = %67
  %72 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %22, i64 0, i32 0, i64 3, !dbg !772
  %73 = load i32, i32* %72, align 4, !dbg !772, !tbaa !375
  %74 = icmp eq i32 %73, 0, !dbg !772
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !773
  br i1 %74, label %76, label %75, !dbg !773

; <label>:75:                                     ; preds = %71, %67, %63, %57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !773
  br label %76, !dbg !773

; <label>:76:                                     ; preds = %71, %75
  %77 = phi %struct.ip6_addr* [ %22, %75 ], [ null, %71 ], !dbg !773
  %78 = tail call signext i8 @ip6_output_if(%struct.pbuf* nonnull %4, %struct.ip6_addr* %77, %struct.ip6_addr* nonnull %31, i8 zeroext 1, i8 zeroext 0, i8 zeroext 0, %struct.netif* nonnull %0) #5, !dbg !774
  %79 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %4) #5, !dbg !775
  br label %80, !dbg !776

; <label>:80:                                     ; preds = %76, %12, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !777
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !776
  ret void, !dbg !776
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @mld6_leavegroup(%struct.ip6_addr*, %struct.ip6_addr*) local_unnamed_addr #0 !dbg !778 {
  %3 = load %struct.netif*, %struct.netif** @netif_list, align 8, !dbg !793, !tbaa !265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !793
  %4 = icmp eq %struct.netif* %3, null, !dbg !795
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !793
  br i1 %4, label %40, label %5, !dbg !793

; <label>:5:                                      ; preds = %2
  %6 = icmp eq %struct.ip6_addr* %0, null
  %7 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 0
  %8 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 1
  %9 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 2
  %10 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 3
  br label %11, !dbg !793

; <label>:11:                                     ; preds = %5, %35
  %12 = phi i8 [ -6, %5 ], [ %36, %35 ]
  %13 = phi %struct.netif* [ %3, %5 ], [ %38, %35 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !796
  br i1 %6, label %29, label %14, !dbg !796

; <label>:14:                                     ; preds = %11
  %15 = load i32, i32* %7, align 4, !dbg !796, !tbaa !375
  %16 = icmp eq i32 %15, 0, !dbg !796
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !796
  br i1 %16, label %17, label %26, !dbg !796

; <label>:17:                                     ; preds = %14
  %18 = load i32, i32* %8, align 4, !dbg !796, !tbaa !375
  %19 = icmp eq i32 %18, 0, !dbg !796
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !796
  br i1 %19, label %20, label %26, !dbg !796

; <label>:20:                                     ; preds = %17
  %21 = load i32, i32* %9, align 4, !dbg !796, !tbaa !375
  %22 = icmp eq i32 %21, 0, !dbg !796
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !796
  br i1 %22, label %23, label %26, !dbg !796

; <label>:23:                                     ; preds = %20
  %24 = load i32, i32* %10, align 4, !dbg !796, !tbaa !375
  %25 = icmp eq i32 %24, 0, !dbg !796
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !797
  br i1 %25, label %29, label %26, !dbg !797

; <label>:26:                                     ; preds = %23, %20, %17, %14
  %27 = tail call signext i8 @netif_get_ip6_addr_match(%struct.netif* nonnull %13, %struct.ip6_addr* nonnull %0) #5, !dbg !798
  %28 = icmp sgt i8 %27, -1, !dbg !799
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !800
  br i1 %28, label %29, label %35, !dbg !800

; <label>:29:                                     ; preds = %26, %23, %11
  %30 = tail call signext i8 @mld6_leavegroup_netif(%struct.netif* nonnull %13, %struct.ip6_addr* %1) #6, !dbg !801
  %31 = icmp eq i8 %12, 0, !dbg !803
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !805
  br i1 %31, label %33, label %32, !dbg !805

; <label>:32:                                     ; preds = %29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !806
  br label %33, !dbg !806

; <label>:33:                                     ; preds = %29, %32
  %34 = phi i8 [ %30, %32 ], [ 0, %29 ], !dbg !808
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !809
  br label %35, !dbg !809

; <label>:35:                                     ; preds = %26, %33
  %36 = phi i8 [ %34, %33 ], [ %12, %26 ], !dbg !808
  %37 = getelementptr inbounds %struct.netif, %struct.netif* %13, i64 0, i32 0, !dbg !795
  %38 = load %struct.netif*, %struct.netif** %37, align 8, !dbg !795, !tbaa !604
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !795
  %39 = icmp eq %struct.netif* %38, null, !dbg !795
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !793
  br i1 %39, label %40, label %11, !dbg !793, !llvm.loop !810

; <label>:40:                                     ; preds = %35, %2
  %41 = phi i8 [ -6, %2 ], [ %36, %35 ], !dbg !812
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !813
  ret i8 %41, !dbg !813
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @mld6_leavegroup_netif(%struct.netif*, %struct.ip6_addr*) local_unnamed_addr #0 !dbg !814 {
  %3 = alloca %struct.ip6_addr, align 4
  %4 = bitcast %struct.ip6_addr* %3 to i8*, !dbg !822
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %4) #7, !dbg !822
  %5 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 1, !dbg !823
  %6 = load i8, i8* %5, align 4, !dbg !823, !tbaa !444
  %7 = icmp eq i8 %6, 0, !dbg !823
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !823
  br i1 %7, label %8, label %42, !dbg !823

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 0, !dbg !823
  %10 = load i32, i32* %9, align 4, !dbg !823, !tbaa !375
  %11 = zext i32 %10 to i64, !dbg !823
  %12 = and i64 %11, 49407, !dbg !823
  %13 = icmp eq i64 %12, 33022, !dbg !823
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !823
  br i1 %13, label %19, label %14, !dbg !823

; <label>:14:                                     ; preds = %8
  %15 = and i64 %11, 36863, !dbg !823
  %16 = icmp eq i64 %15, 511, !dbg !823
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !823
  br i1 %16, label %19, label %17, !dbg !823

; <label>:17:                                     ; preds = %14
  %18 = icmp eq i64 %15, 767, !dbg !823
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !825
  br i1 %18, label %19, label %42, !dbg !825

; <label>:19:                                     ; preds = %8, %14, %17
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !826
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !826
  %20 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %3, i64 0, i32 0, i64 0, !dbg !826
  store i32 %10, i32* %20, align 4, !dbg !826, !tbaa !375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !826
  %21 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 1, !dbg !826
  %22 = load i32, i32* %21, align 4, !dbg !826, !tbaa !375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !826
  %23 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %3, i64 0, i32 0, i64 1, !dbg !826
  store i32 %22, i32* %23, align 4, !dbg !826, !tbaa !375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !826
  %24 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 2, !dbg !826
  %25 = load i32, i32* %24, align 4, !dbg !826, !tbaa !375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !826
  %26 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %3, i64 0, i32 0, i64 2, !dbg !826
  store i32 %25, i32* %26, align 4, !dbg !826, !tbaa !375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !826
  %27 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 3, !dbg !826
  %28 = load i32, i32* %27, align 4, !dbg !826, !tbaa !375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !826
  %29 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %3, i64 0, i32 0, i64 3, !dbg !826
  store i32 %28, i32* %29, align 4, !dbg !826, !tbaa !375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !826
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !826
  %30 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %3, i64 0, i32 1, !dbg !826
  store i8 0, i8* %30, align 4, !dbg !826, !tbaa !444
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !829
  br i1 %13, label %36, label %31, !dbg !829

; <label>:31:                                     ; preds = %19
  %32 = and i64 %11, 36863, !dbg !829
  %33 = icmp eq i64 %32, 511, !dbg !829
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !829
  br i1 %33, label %36, label %34, !dbg !829

; <label>:34:                                     ; preds = %31
  %35 = icmp eq i64 %32, 767, !dbg !829
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !829
  br i1 %35, label %36, label %40, !dbg !829

; <label>:36:                                     ; preds = %34, %31, %19
  %37 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 23, !dbg !829
  %38 = load i8, i8* %37, align 8, !dbg !829, !tbaa !628
  %39 = add i8 %38, 1, !dbg !829
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !829
  br label %40, !dbg !829

; <label>:40:                                     ; preds = %34, %36
  %41 = phi i8 [ %39, %36 ], [ 0, %34 ]
  store i8 %41, i8* %30, align 4, !dbg !829, !tbaa !444
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !830
  br label %42, !dbg !830

; <label>:42:                                     ; preds = %2, %40, %17
  %43 = phi i8 [ %6, %2 ], [ %41, %40 ], [ 0, %17 ]
  %44 = phi %struct.ip6_addr* [ %1, %2 ], [ %3, %40 ], [ %1, %17 ]
  %45 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 15, i64 0, !dbg !834
  %46 = bitcast i8** %45 to %struct.mld_group**, !dbg !834
  %47 = load %struct.mld_group*, %struct.mld_group** %46, align 8, !dbg !834, !tbaa !265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !836
  %48 = icmp eq %struct.mld_group* %47, null, !dbg !837
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !836
  br i1 %48, label %123, label %49, !dbg !836

; <label>:49:                                     ; preds = %42
  %50 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %44, i64 0, i32 0, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %44, i64 0, i32 0, i64 1
  %53 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %44, i64 0, i32 0, i64 2
  %54 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %44, i64 0, i32 0, i64 3
  br label %55, !dbg !836

; <label>:55:                                     ; preds = %79, %49
  %56 = phi %struct.mld_group* [ %47, %49 ], [ %81, %79 ]
  %57 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %56, i64 0, i32 1, i32 0, i64 0, !dbg !838
  %58 = load i32, i32* %57, align 8, !dbg !838, !tbaa !375
  %59 = icmp eq i32 %58, %51, !dbg !838
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !838
  br i1 %59, label %60, label %79, !dbg !838

; <label>:60:                                     ; preds = %55
  %61 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %56, i64 0, i32 1, i32 0, i64 1, !dbg !838
  %62 = load i32, i32* %61, align 4, !dbg !838, !tbaa !375
  %63 = load i32, i32* %52, align 4, !dbg !838, !tbaa !375
  %64 = icmp eq i32 %62, %63, !dbg !838
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !838
  br i1 %64, label %65, label %79, !dbg !838

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %56, i64 0, i32 1, i32 0, i64 2, !dbg !838
  %67 = load i32, i32* %66, align 8, !dbg !838, !tbaa !375
  %68 = load i32, i32* %53, align 4, !dbg !838, !tbaa !375
  %69 = icmp eq i32 %67, %68, !dbg !838
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !838
  br i1 %69, label %70, label %79, !dbg !838

; <label>:70:                                     ; preds = %65
  %71 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %56, i64 0, i32 1, i32 0, i64 3, !dbg !838
  %72 = load i32, i32* %71, align 4, !dbg !838, !tbaa !375
  %73 = load i32, i32* %54, align 4, !dbg !838, !tbaa !375
  %74 = icmp eq i32 %72, %73, !dbg !838
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !838
  br i1 %74, label %75, label %79, !dbg !838

; <label>:75:                                     ; preds = %70
  %76 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %56, i64 0, i32 1, i32 1, !dbg !838
  %77 = load i8, i8* %76, align 8, !dbg !838, !tbaa !443
  %78 = icmp eq i8 %77, %43, !dbg !838
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !839
  br i1 %78, label %83, label %79, !dbg !839

; <label>:79:                                     ; preds = %75, %70, %65, %60, %55
  %80 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %56, i64 0, i32 0, !dbg !840
  %81 = load %struct.mld_group*, %struct.mld_group** %80, align 8, !dbg !840, !tbaa !275
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !836
  %82 = icmp eq %struct.mld_group* %81, null, !dbg !837
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !836
  br i1 %82, label %123, label %55, !dbg !836, !llvm.loop !447

; <label>:83:                                     ; preds = %75
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !841
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !842
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !844
  %84 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %56, i64 0, i32 5, !dbg !845
  %85 = load i8, i8* %84, align 8, !dbg !845, !tbaa !672
  %86 = icmp ult i8 %85, 2, !dbg !849
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !850
  br i1 %86, label %87, label %121, !dbg !850

; <label>:87:                                     ; preds = %83
  %88 = icmp eq %struct.mld_group* %47, %56, !dbg !866
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !867
  br i1 %88, label %89, label %93, !dbg !867

; <label>:89:                                     ; preds = %87
  %90 = bitcast %struct.mld_group* %47 to i64*, !dbg !868
  %91 = load i64, i64* %90, align 8, !dbg !868, !tbaa !275
  %92 = bitcast i8** %45 to i64*, !dbg !868
  store i64 %91, i64* %92, align 8, !dbg !868, !tbaa !265
  br label %106, !dbg !870

; <label>:93:                                     ; preds = %87
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !872
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !874
  br label %94, !dbg !875

; <label>:94:                                     ; preds = %93, %99
  %95 = phi %struct.mld_group* [ %97, %99 ], [ %47, %93 ]
  %96 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %95, i64 0, i32 0, !dbg !875
  %97 = load %struct.mld_group*, %struct.mld_group** %96, align 8, !dbg !875, !tbaa !275
  %98 = icmp eq %struct.mld_group* %97, %56, !dbg !879
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !880
  br i1 %98, label %101, label %99, !dbg !880

; <label>:99:                                     ; preds = %94
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !881
  %100 = icmp eq %struct.mld_group* %97, null, !dbg !882
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !874
  br i1 %100, label %105, label %94, !dbg !874, !llvm.loop !883

; <label>:101:                                    ; preds = %94
  %102 = bitcast %struct.mld_group* %56 to i64*, !dbg !886
  %103 = load i64, i64* %102, align 8, !dbg !886, !tbaa !275
  %104 = bitcast %struct.mld_group* %95 to i64*, !dbg !888
  store i64 %103, i64* %104, align 8, !dbg !888, !tbaa !275
  br label %105

; <label>:105:                                    ; preds = %99, %101
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !889
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !889
  br label %106

; <label>:106:                                    ; preds = %89, %105
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !890
  %107 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %56, i64 0, i32 2, !dbg !891
  %108 = load i8, i8* %107, align 4, !dbg !891, !tbaa !566
  %109 = icmp eq i8 %108, 0, !dbg !893
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !894
  br i1 %109, label %113, label %110, !dbg !894

; <label>:110:                                    ; preds = %106
  %111 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 12), align 2, !dbg !895, !tbaa !897
  %112 = add i16 %111, 1, !dbg !895
  store i16 %112, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 12), align 2, !dbg !895, !tbaa !897
  tail call fastcc void @mld6_send(%struct.netif* %0, %struct.mld_group* nonnull %56, i8 zeroext -124) #6, !dbg !898
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !899
  br label %113, !dbg !899

; <label>:113:                                    ; preds = %106, %110
  %114 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 26, !dbg !900
  %115 = load i8 (%struct.netif*, %struct.ip6_addr*, i32)*, i8 (%struct.netif*, %struct.ip6_addr*, i32)** %114, align 8, !dbg !900, !tbaa !282
  %116 = icmp eq i8 (%struct.netif*, %struct.ip6_addr*, i32)* %115, null, !dbg !902
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !903
  br i1 %116, label %119, label %117, !dbg !903

; <label>:117:                                    ; preds = %113
  %118 = call signext i8 %115(%struct.netif* nonnull %0, %struct.ip6_addr* %44, i32 0) #5, !dbg !904
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !906
  br label %119, !dbg !906

; <label>:119:                                    ; preds = %113, %117
  %120 = bitcast %struct.mld_group* %56 to i8*, !dbg !907
  call void @memp_free(i32 14, i8* %120) #5, !dbg !908
  br label %124, !dbg !909

; <label>:121:                                    ; preds = %83
  %122 = add i8 %85, -1, !dbg !910
  store i8 %122, i8* %84, align 8, !dbg !910, !tbaa !672
  br label %124

; <label>:123:                                    ; preds = %79, %42
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !912
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !842
  br label %124, !dbg !913

; <label>:124:                                    ; preds = %119, %121, %123
  %125 = phi i8 [ -6, %123 ], [ 0, %121 ], [ 0, %119 ], !dbg !914
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !915
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %4) #7, !dbg !916
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !916
  ret i8 %125, !dbg !916
}

; Function Attrs: noredzone nounwind
define dso_local void @mld6_tmr() local_unnamed_addr #0 !dbg !917 {
  %1 = load %struct.netif*, %struct.netif** @netif_list, align 8, !dbg !926, !tbaa !265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !926
  %2 = icmp eq %struct.netif* %1, null, !dbg !928
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !926
  br i1 %2, label %32, label %3, !dbg !926

; <label>:3:                                      ; preds = %0, %28
  %4 = phi %struct.netif* [ %30, %28 ], [ %1, %0 ]
  %5 = getelementptr inbounds %struct.netif, %struct.netif* %4, i64 0, i32 15, i64 0, !dbg !929
  %6 = bitcast i8** %5 to %struct.mld_group**, !dbg !929
  %7 = load %struct.mld_group*, %struct.mld_group** %6, align 8, !dbg !929, !tbaa !265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !931
  %8 = icmp eq %struct.mld_group* %7, null, !dbg !932
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !931
  br i1 %8, label %28, label %9, !dbg !931

; <label>:9:                                      ; preds = %3, %24
  %10 = phi %struct.mld_group* [ %26, %24 ], [ %7, %3 ]
  %11 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %10, i64 0, i32 4, !dbg !933
  %12 = load i16, i16* %11, align 2, !dbg !933, !tbaa !418
  %13 = icmp eq i16 %12, 0, !dbg !936
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !937
  br i1 %13, label %24, label %14, !dbg !937

; <label>:14:                                     ; preds = %9
  %15 = add i16 %12, -1, !dbg !938
  store i16 %15, i16* %11, align 2, !dbg !938, !tbaa !418
  %16 = icmp eq i16 %15, 0, !dbg !940
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !942
  br i1 %16, label %17, label %24, !dbg !942

; <label>:17:                                     ; preds = %14
  %18 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %10, i64 0, i32 3, !dbg !943
  %19 = load i8, i8* %18, align 1, !dbg !943, !tbaa !410
  %20 = icmp eq i8 %19, 1, !dbg !946
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !947
  br i1 %20, label %21, label %24, !dbg !947

; <label>:21:                                     ; preds = %17
  %22 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 13), align 2, !dbg !948, !tbaa !690
  %23 = add i16 %22, 1, !dbg !948
  store i16 %23, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 13), align 2, !dbg !948, !tbaa !690
  tail call fastcc void @mld6_send(%struct.netif* nonnull %4, %struct.mld_group* nonnull %10, i8 zeroext -125) #6, !dbg !950
  store i8 2, i8* %18, align 1, !dbg !951, !tbaa !410
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !952
  br label %24, !dbg !952

; <label>:24:                                     ; preds = %9, %14, %21, %17
  %25 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %10, i64 0, i32 0, !dbg !953
  %26 = load %struct.mld_group*, %struct.mld_group** %25, align 8, !dbg !953, !tbaa !275
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !931
  %27 = icmp eq %struct.mld_group* %26, null, !dbg !932
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !931
  br i1 %27, label %28, label %9, !dbg !931, !llvm.loop !954

; <label>:28:                                     ; preds = %24, %3
  %29 = getelementptr inbounds %struct.netif, %struct.netif* %4, i64 0, i32 0, !dbg !928
  %30 = load %struct.netif*, %struct.netif** %29, align 8, !dbg !928, !tbaa !604
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !928
  %31 = icmp eq %struct.netif* %30, null, !dbg !928
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !926
  br i1 %31, label %32, label %3, !dbg !926, !llvm.loop !956

; <label>:32:                                     ; preds = %28, %0
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !958
  ret void, !dbg !958
}

; Function Attrs: noredzone
declare dso_local i8* @memp_malloc(i32) local_unnamed_addr #2

; Function Attrs: inlinehint noredzone nounwind
define internal i32 @uk_swrand_randr() #3 !dbg !361 {
  %1 = tail call i64 @ukplat_lcpu_save_irqf() #5, !dbg !959
  %2 = tail call i32 @uk_swrand_randr_r(%struct.uk_swrand* nonnull @uk_swrand_def) #5, !dbg !961
  tail call void @ukplat_lcpu_restore_irqf(i64 %1) #5, !dbg !963
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !964
  ret i32 %2, !dbg !964
}

; Function Attrs: noredzone
declare dso_local i64 @ukplat_lcpu_save_irqf() local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @uk_swrand_randr_r(%struct.uk_swrand*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @ukplat_lcpu_restore_irqf(i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local %struct.pbuf* @pbuf_alloc(i32, i16 zeroext, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local zeroext i8 @pbuf_remove_header(%struct.pbuf*, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local zeroext i16 @ip6_chksum_pseudo(%struct.pbuf*, i8 zeroext, i16 zeroext, %struct.ip6_addr*, %struct.ip6_addr*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local signext i8 @ip6_options_add_hbh_ra(%struct.pbuf*, i8 zeroext, i8 zeroext) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local signext i8 @ip6_output_if(%struct.pbuf*, %struct.ip6_addr*, %struct.ip6_addr*, i8 zeroext, i8 zeroext, i8 zeroext, %struct.netif*) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { nobuiltin noredzone nounwind }
attributes #6 = { nobuiltin noredzone }
attributes #7 = { nounwind }

!llvm.module.flags = !{!149, !150, !151}
!llvm.ident = !{!152}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !95)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/ipv6/mld6.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{!3, !9, !13, !34, !55, !81, !89}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "netif_mac_filter_action", file: !4, line: 156, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/netif.h", directory: "/root/.unikraft/apps/redis/build")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8}
!7 = !DIEnumerator(name: "NETIF_DEL_MAC_FILTER", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "NETIF_ADD_MAC_FILTER", value: 1, isUnsigned: true)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lwip_internal_netif_client_data_index", file: !4, line: 113, baseType: !5, size: 32, elements: !10)
!10 = !{!11, !12}
!11 = !DIEnumerator(name: "LWIP_NETIF_CLIENT_DATA_INDEX_MLD6", value: 0, isUnsigned: true)
!12 = !DIEnumerator(name: "LWIP_NETIF_CLIENT_DATA_INDEX_MAX", value: 1, isUnsigned: true)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 52, baseType: !5, size: 32, elements: !15)
!14 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/memp.h", directory: "/root/.unikraft/apps/redis/build")
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33}
!16 = !DIEnumerator(name: "MEMP_UDP_PCB", value: 0, isUnsigned: true)
!17 = !DIEnumerator(name: "MEMP_TCP_PCB", value: 1, isUnsigned: true)
!18 = !DIEnumerator(name: "MEMP_TCP_PCB_LISTEN", value: 2, isUnsigned: true)
!19 = !DIEnumerator(name: "MEMP_TCP_SEG", value: 3, isUnsigned: true)
!20 = !DIEnumerator(name: "MEMP_REASSDATA", value: 4, isUnsigned: true)
!21 = !DIEnumerator(name: "MEMP_FRAG_PBUF", value: 5, isUnsigned: true)
!22 = !DIEnumerator(name: "MEMP_NETBUF", value: 6, isUnsigned: true)
!23 = !DIEnumerator(name: "MEMP_NETCONN", value: 7, isUnsigned: true)
!24 = !DIEnumerator(name: "MEMP_TCPIP_MSG_API", value: 8, isUnsigned: true)
!25 = !DIEnumerator(name: "MEMP_TCPIP_MSG_INPKT", value: 9, isUnsigned: true)
!26 = !DIEnumerator(name: "MEMP_SYS_TIMEOUT", value: 10, isUnsigned: true)
!27 = !DIEnumerator(name: "MEMP_NETDB", value: 11, isUnsigned: true)
!28 = !DIEnumerator(name: "MEMP_ND6_QUEUE", value: 12, isUnsigned: true)
!29 = !DIEnumerator(name: "MEMP_IP6_REASSDATA", value: 13, isUnsigned: true)
!30 = !DIEnumerator(name: "MEMP_MLD6_GROUP", value: 14, isUnsigned: true)
!31 = !DIEnumerator(name: "MEMP_PBUF", value: 15, isUnsigned: true)
!32 = !DIEnumerator(name: "MEMP_PBUF_POOL", value: 16, isUnsigned: true)
!33 = !DIEnumerator(name: "MEMP_MAX", value: 17, isUnsigned: true)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !35, line: 53, baseType: !36, size: 32, elements: !37)
!35 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/err.h", directory: "/root/.unikraft/apps/redis/build")
!36 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!37 = !{!38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54}
!38 = !DIEnumerator(name: "ERR_OK", value: 0)
!39 = !DIEnumerator(name: "ERR_MEM", value: -1)
!40 = !DIEnumerator(name: "ERR_BUF", value: -2)
!41 = !DIEnumerator(name: "ERR_TIMEOUT", value: -3)
!42 = !DIEnumerator(name: "ERR_RTE", value: -4)
!43 = !DIEnumerator(name: "ERR_INPROGRESS", value: -5)
!44 = !DIEnumerator(name: "ERR_VAL", value: -6)
!45 = !DIEnumerator(name: "ERR_WOULDBLOCK", value: -7)
!46 = !DIEnumerator(name: "ERR_USE", value: -8)
!47 = !DIEnumerator(name: "ERR_ALREADY", value: -9)
!48 = !DIEnumerator(name: "ERR_ISCONN", value: -10)
!49 = !DIEnumerator(name: "ERR_CONN", value: -11)
!50 = !DIEnumerator(name: "ERR_IF", value: -12)
!51 = !DIEnumerator(name: "ERR_ABRT", value: -13)
!52 = !DIEnumerator(name: "ERR_RST", value: -14)
!53 = !DIEnumerator(name: "ERR_CLSD", value: -15)
!54 = !DIEnumerator(name: "ERR_ARG", value: -16)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "icmp6_type", file: !56, line: 47, baseType: !5, size: 32, elements: !57)
!56 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/prot/icmp6.h", directory: "/root/.unikraft/apps/redis/build")
!57 = !{!58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80}
!58 = !DIEnumerator(name: "ICMP6_TYPE_DUR", value: 1, isUnsigned: true)
!59 = !DIEnumerator(name: "ICMP6_TYPE_PTB", value: 2, isUnsigned: true)
!60 = !DIEnumerator(name: "ICMP6_TYPE_TE", value: 3, isUnsigned: true)
!61 = !DIEnumerator(name: "ICMP6_TYPE_PP", value: 4, isUnsigned: true)
!62 = !DIEnumerator(name: "ICMP6_TYPE_PE1", value: 100, isUnsigned: true)
!63 = !DIEnumerator(name: "ICMP6_TYPE_PE2", value: 101, isUnsigned: true)
!64 = !DIEnumerator(name: "ICMP6_TYPE_RSV_ERR", value: 127, isUnsigned: true)
!65 = !DIEnumerator(name: "ICMP6_TYPE_EREQ", value: 128, isUnsigned: true)
!66 = !DIEnumerator(name: "ICMP6_TYPE_EREP", value: 129, isUnsigned: true)
!67 = !DIEnumerator(name: "ICMP6_TYPE_MLQ", value: 130, isUnsigned: true)
!68 = !DIEnumerator(name: "ICMP6_TYPE_MLR", value: 131, isUnsigned: true)
!69 = !DIEnumerator(name: "ICMP6_TYPE_MLD", value: 132, isUnsigned: true)
!70 = !DIEnumerator(name: "ICMP6_TYPE_RS", value: 133, isUnsigned: true)
!71 = !DIEnumerator(name: "ICMP6_TYPE_RA", value: 134, isUnsigned: true)
!72 = !DIEnumerator(name: "ICMP6_TYPE_NS", value: 135, isUnsigned: true)
!73 = !DIEnumerator(name: "ICMP6_TYPE_NA", value: 136, isUnsigned: true)
!74 = !DIEnumerator(name: "ICMP6_TYPE_RD", value: 137, isUnsigned: true)
!75 = !DIEnumerator(name: "ICMP6_TYPE_MRA", value: 151, isUnsigned: true)
!76 = !DIEnumerator(name: "ICMP6_TYPE_MRS", value: 152, isUnsigned: true)
!77 = !DIEnumerator(name: "ICMP6_TYPE_MRT", value: 153, isUnsigned: true)
!78 = !DIEnumerator(name: "ICMP6_TYPE_PE3", value: 200, isUnsigned: true)
!79 = !DIEnumerator(name: "ICMP6_TYPE_PE4", value: 201, isUnsigned: true)
!80 = !DIEnumerator(name: "ICMP6_TYPE_RSV_INF", value: 255, isUnsigned: true)
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !82, line: 89, baseType: !5, size: 32, elements: !83)
!82 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/pbuf.h", directory: "/root/.unikraft/apps/redis/build")
!83 = !{!84, !85, !86, !87, !88}
!84 = !DIEnumerator(name: "PBUF_TRANSPORT", value: 74, isUnsigned: true)
!85 = !DIEnumerator(name: "PBUF_IP", value: 54, isUnsigned: true)
!86 = !DIEnumerator(name: "PBUF_LINK", value: 14, isUnsigned: true)
!87 = !DIEnumerator(name: "PBUF_RAW_TX", value: 0, isUnsigned: true)
!88 = !DIEnumerator(name: "PBUF_RAW", value: 0, isUnsigned: true)
!89 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !82, line: 145, baseType: !5, size: 32, elements: !90)
!90 = !{!91, !92, !93, !94}
!91 = !DIEnumerator(name: "PBUF_RAM", value: 640, isUnsigned: true)
!92 = !DIEnumerator(name: "PBUF_ROM", value: 1, isUnsigned: true)
!93 = !DIEnumerator(name: "PBUF_REF", value: 65, isUnsigned: true)
!94 = !DIEnumerator(name: "PBUF_POOL", value: 386, isUnsigned: true)
!95 = !{!96, !129, !130, !108, !117, !124, !145, !146, !147}
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mld_group", file: !98, line: 58, size: 320, elements: !99)
!98 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/mld6.h", directory: "/root/.unikraft/apps/redis/build")
!99 = !{!100, !101, !121, !122, !123, !128}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !97, file: !98, line: 60, baseType: !96, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "group_address", scope: !97, file: !98, line: 62, baseType: !102, size: 160, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip6_addr_t", file: !103, line: 67, baseType: !104)
!103 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip6_addr.h", directory: "/root/.unikraft/apps/redis/build")
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip6_addr", file: !103, line: 59, size: 160, elements: !105)
!105 = !{!106, !116}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !104, file: !103, line: 60, baseType: !107, size: 128)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 128, elements: !114)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32_t", file: !109, line: 129, baseType: !110)
!109 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/arch.h", directory: "/root/.unikraft/apps/redis/build")
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !111, line: 48, baseType: !112)
!111 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !113, line: 79, baseType: !5)
!113 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!114 = !{!115}
!115 = !DISubrange(count: 4)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "zone", scope: !104, file: !103, line: 62, baseType: !117, size: 8, offset: 128)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8_t", file: !109, line: 125, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !111, line: 24, baseType: !119)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !113, line: 43, baseType: !120)
!120 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "last_reporter_flag", scope: !97, file: !98, line: 64, baseType: !117, size: 8, offset: 224)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "group_state", scope: !97, file: !98, line: 66, baseType: !117, size: 8, offset: 232)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !97, file: !98, line: 68, baseType: !124, size: 16, offset: 240)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16_t", file: !109, line: 127, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !111, line: 36, baseType: !126)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !113, line: 57, baseType: !127)
!127 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !97, file: !98, line: 70, baseType: !117, size: 8, offset: 256)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mld_header", file: !132, line: 53, size: 192, elements: !133)
!132 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/prot/mld6.h", directory: "/root/.unikraft/apps/redis/build")
!133 = !{!134, !135, !136, !137, !138, !139}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !131, file: !132, line: 54, baseType: !117, size: 8)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !131, file: !132, line: 55, baseType: !117, size: 8, offset: 8)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "chksum", scope: !131, file: !132, line: 56, baseType: !124, size: 16, offset: 16)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "max_resp_delay", scope: !131, file: !132, line: 57, baseType: !124, size: 16, offset: 32)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !131, file: !132, line: 58, baseType: !124, size: 16, offset: 48)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "multicast_address", scope: !131, file: !132, line: 59, baseType: !140, size: 128, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip6_addr_p_t", file: !141, line: 60, baseType: !142)
!141 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/prot/ip6.h", directory: "/root/.unikraft/apps/redis/build")
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip6_addr_packed", file: !141, line: 53, size: 128, elements: !143)
!143 = !{!144}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !142, file: !141, line: 54, baseType: !107, size: 128)
!145 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!149 = !{i32 2, !"Dwarf Version", i32 4}
!150 = !{i32 2, !"Debug Info Version", i32 3}
!151 = !{i32 1, !"wchar_size", i32 4}
!152 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!153 = distinct !DISubprogram(name: "mld6_stop", scope: !1, file: !1, line: 96, type: !154, isLocal: false, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !258)
!154 = !DISubroutineType(types: !155)
!155 = !{!156, !161}
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "err_t", file: !35, line: 96, baseType: !157)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8_t", file: !109, line: 126, baseType: !158)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !111, line: 20, baseType: !159)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !113, line: 41, baseType: !160)
!160 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netif", file: !4, line: 260, size: 2240, elements: !163)
!163 = !{!164, !165, !181, !182, !183, !187, !189, !191, !192, !208, !215, !220, !225, !230, !231, !232, !236, !237, !238, !239, !243, !244, !245, !250, !251, !252, !253}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !162, file: !4, line: 263, baseType: !161, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "ip_addr", scope: !162, file: !4, line: 268, baseType: !166, size: 192, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_addr_t", file: !167, line: 76, baseType: !168)
!167 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip_addr.h", directory: "/root/.unikraft/apps/redis/build")
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_addr", file: !167, line: 69, size: 192, elements: !169)
!169 = !{!170, !180}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "u_addr", scope: !168, file: !167, line: 73, baseType: !171, size: 160)
!171 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !168, file: !167, line: 70, size: 160, elements: !172)
!172 = !{!173, !174}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "ip6", scope: !171, file: !167, line: 71, baseType: !102, size: 160)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "ip4", scope: !171, file: !167, line: 72, baseType: !175, size: 32)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip4_addr_t", file: !176, line: 57, baseType: !177)
!176 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip4_addr.h", directory: "/root/.unikraft/apps/redis/build")
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip4_addr", file: !176, line: 51, size: 32, elements: !178)
!178 = !{!179}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !177, file: !176, line: 52, baseType: !108, size: 32)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !168, file: !167, line: 75, baseType: !117, size: 8, offset: 160)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "netmask", scope: !162, file: !4, line: 269, baseType: !166, size: 192, offset: 256)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "gw", scope: !162, file: !4, line: 270, baseType: !166, size: 192, offset: 448)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr", scope: !162, file: !4, line: 274, baseType: !184, size: 576, offset: 640)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 576, elements: !185)
!185 = !{!186}
!186 = !DISubrange(count: 3)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_state", scope: !162, file: !4, line: 277, baseType: !188, size: 24, offset: 1216)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 24, elements: !185)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_valid_life", scope: !162, file: !4, line: 282, baseType: !190, size: 96, offset: 1248)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 96, elements: !185)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_pref_life", scope: !162, file: !4, line: 283, baseType: !190, size: 96, offset: 1344)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !162, file: !4, line: 288, baseType: !193, size: 64, offset: 1472)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_input_fn", file: !4, line: 178, baseType: !194)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{!156, !197, !161}
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pbuf", file: !82, line: 186, size: 192, elements: !199)
!199 = !{!200, !201, !202, !203, !204, !205, !206, !207}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !198, file: !82, line: 188, baseType: !197, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !198, file: !82, line: 191, baseType: !129, size: 64, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "tot_len", scope: !198, file: !82, line: 200, baseType: !124, size: 16, offset: 128)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !198, file: !82, line: 203, baseType: !124, size: 16, offset: 144)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "type_internal", scope: !198, file: !82, line: 208, baseType: !117, size: 8, offset: 160)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !198, file: !82, line: 211, baseType: !117, size: 8, offset: 168)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !198, file: !82, line: 218, baseType: !117, size: 8, offset: 176)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "if_idx", scope: !198, file: !82, line: 221, baseType: !117, size: 8, offset: 184)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !162, file: !4, line: 294, baseType: !209, size: 64, offset: 1536)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_output_fn", file: !4, line: 189, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!156, !161, !197, !213}
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !175)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "linkoutput", scope: !162, file: !4, line: 299, baseType: !216, size: 64, offset: 1600)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_linkoutput_fn", file: !4, line: 212, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{!156, !161, !197}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "output_ip6", scope: !162, file: !4, line: 305, baseType: !221, size: 64, offset: 1664)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_output_ip6_fn", file: !4, line: 202, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{!156, !161, !197, !147}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "status_callback", scope: !162, file: !4, line: 310, baseType: !226, size: 64, offset: 1728)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_status_callback_fn", file: !4, line: 214, baseType: !227)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DISubroutineType(types: !229)
!229 = !{null, !161}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "remove_callback", scope: !162, file: !4, line: 319, baseType: !226, size: 64, offset: 1792)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !162, file: !4, line: 323, baseType: !129, size: 64, offset: 1856)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !162, file: !4, line: 325, baseType: !233, size: 64, offset: 1920)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 64, elements: !234)
!234 = !{!235}
!235 = !DISubrange(count: 1)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "chksum_flags", scope: !162, file: !4, line: 332, baseType: !124, size: 16, offset: 1984)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !162, file: !4, line: 335, baseType: !124, size: 16, offset: 2000)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "mtu6", scope: !162, file: !4, line: 338, baseType: !124, size: 16, offset: 2016)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "hwaddr", scope: !162, file: !4, line: 341, baseType: !240, size: 48, offset: 2032)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 48, elements: !241)
!241 = !{!242}
!242 = !DISubrange(count: 6)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "hwaddr_len", scope: !162, file: !4, line: 343, baseType: !117, size: 8, offset: 2080)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !162, file: !4, line: 345, baseType: !117, size: 8, offset: 2088)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !162, file: !4, line: 347, baseType: !246, size: 16, offset: 2096)
!246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, size: 16, elements: !248)
!247 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!248 = !{!249}
!249 = !DISubrange(count: 2)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !162, file: !4, line: 350, baseType: !117, size: 8, offset: 2112)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_autoconfig_enabled", scope: !162, file: !4, line: 353, baseType: !117, size: 8, offset: 2120)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "rs_count", scope: !162, file: !4, line: 357, baseType: !117, size: 8, offset: 2128)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "mld_mac_filter", scope: !162, file: !4, line: 377, baseType: !254, size: 64, offset: 2176)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_mld_mac_filter_fn", file: !4, line: 222, baseType: !255)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DISubroutineType(types: !257)
!257 = !{!156, !161, !147, !3}
!258 = !{!259, !260, !261}
!259 = !DILocalVariable(name: "netif", arg: 1, scope: !153, file: !1, line: 96, type: !161)
!260 = !DILocalVariable(name: "group", scope: !153, file: !1, line: 98, type: !96)
!261 = !DILocalVariable(name: "next", scope: !262, file: !1, line: 103, type: !96)
!262 = distinct !DILexicalBlock(scope: !153, file: !1, line: 102, column: 25)
!263 = !DILocation(line: 96, column: 25, scope: !153)
!264 = !DILocation(line: 98, column: 29, scope: !153)
!265 = !{!266, !266, i64 0}
!266 = !{!"any pointer", !267, i64 0}
!267 = !{!"omnipotent char", !268, i64 0}
!268 = !{!"Simple C/C++ TBAA"}
!269 = !DILocation(line: 98, column: 21, scope: !153)
!270 = !DILocation(line: 100, column: 3, scope: !153)
!271 = !DILocation(line: 102, column: 3, scope: !153)
!272 = !DILocation(line: 102, column: 16, scope: !153)
!273 = !DILocation(line: 0, scope: !262)
!274 = !DILocation(line: 103, column: 37, scope: !262)
!275 = !{!276, !266, i64 0}
!276 = !{!"mld_group", !266, i64 0, !277, i64 8, !267, i64 28, !267, i64 29, !278, i64 30, !267, i64 32}
!277 = !{!"ip6_addr", !267, i64 0, !267, i64 16}
!278 = !{!"short", !267, i64 0}
!279 = !DILocation(line: 103, column: 23, scope: !262)
!280 = !DILocation(line: 106, column: 16, scope: !281)
!281 = distinct !DILexicalBlock(scope: !262, file: !1, line: 106, column: 9)
!282 = !{!283, !266, i64 272}
!283 = !{!"netif", !266, i64 0, !284, i64 8, !284, i64 32, !284, i64 56, !267, i64 80, !267, i64 152, !267, i64 156, !267, i64 168, !266, i64 184, !266, i64 192, !266, i64 200, !266, i64 208, !266, i64 216, !266, i64 224, !266, i64 232, !267, i64 240, !278, i64 248, !278, i64 250, !278, i64 252, !267, i64 254, !267, i64 260, !267, i64 261, !267, i64 262, !267, i64 264, !267, i64 265, !267, i64 266, !266, i64 272}
!284 = !{!"ip_addr", !267, i64 0, !267, i64 20}
!285 = !DILocation(line: 106, column: 31, scope: !281)
!286 = !DILocation(line: 106, column: 9, scope: !262)
!287 = !DILocation(line: 107, column: 45, scope: !288)
!288 = distinct !DILexicalBlock(scope: !281, file: !1, line: 106, column: 40)
!289 = !DILocation(line: 107, column: 7, scope: !288)
!290 = !DILocation(line: 108, column: 5, scope: !288)
!291 = !DILocation(line: 111, column: 5, scope: !262)
!292 = distinct !{!292, !271, !293}
!293 = !DILocation(line: 115, column: 3, scope: !153)
!294 = !DILocation(line: 116, column: 3, scope: !153)
!295 = distinct !DISubprogram(name: "mld6_report_groups", scope: !1, file: !1, line: 125, type: !228, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !296)
!296 = !{!297, !298}
!297 = !DILocalVariable(name: "netif", arg: 1, scope: !295, file: !1, line: 125, type: !161)
!298 = !DILocalVariable(name: "group", scope: !295, file: !1, line: 127, type: !96)
!299 = !DILocation(line: 125, column: 34, scope: !295)
!300 = !DILocation(line: 127, column: 29, scope: !295)
!301 = !DILocation(line: 127, column: 21, scope: !295)
!302 = !DILocation(line: 129, column: 3, scope: !295)
!303 = !DILocation(line: 129, column: 16, scope: !295)
!304 = !DILocation(line: 130, column: 5, scope: !305)
!305 = distinct !DILexicalBlock(scope: !295, file: !1, line: 129, column: 25)
!306 = !DILocation(line: 131, column: 20, scope: !305)
!307 = distinct !{!307, !302, !308}
!308 = !DILocation(line: 132, column: 3, scope: !295)
!309 = !DILocation(line: 133, column: 1, scope: !295)
!310 = distinct !DISubprogram(name: "mld6_delayed_report", scope: !1, file: !1, line: 528, type: !311, isLocal: true, isDefinition: true, scopeLine: 529, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !313)
!311 = !DISubroutineType(types: !312)
!312 = !{null, !96, !124}
!313 = !{!314, !315, !316}
!314 = !DILocalVariable(name: "group", arg: 1, scope: !310, file: !1, line: 528, type: !96)
!315 = !DILocalVariable(name: "maxresp_in", arg: 2, scope: !310, file: !1, line: 528, type: !124)
!316 = !DILocalVariable(name: "maxresp", scope: !310, file: !1, line: 531, type: !124)
!317 = !DILocation(line: 528, column: 39, scope: !310)
!318 = !DILocation(line: 528, column: 52, scope: !310)
!319 = !DILocation(line: 531, column: 30, scope: !310)
!320 = !DILocation(line: 531, column: 9, scope: !310)
!321 = !DILocation(line: 532, column: 15, scope: !322)
!322 = distinct !DILexicalBlock(scope: !310, file: !1, line: 532, column: 7)
!323 = !DILocation(line: 532, column: 7, scope: !310)
!324 = !DILocation(line: 65, column: 2, scope: !325, inlinedAt: !342)
!325 = distinct !DISubprogram(name: "isolated_rand", scope: !326, file: !326, line: 63, type: !327, isLocal: true, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !331)
!326 = !DIFile(filename: "/root/.unikraft/libs/lwip/include/arch/cc.h", directory: "/root/.unikraft/apps/redis/build")
!327 = !DISubroutineType(types: !328)
!328 = !{!329}
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !330, line: 88, baseType: !5)
!330 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/types.h", directory: "/root/.unikraft/apps/redis/build")
!331 = !{!332, !333, !339}
!332 = !DILocalVariable(name: "randn", scope: !325, file: !326, line: 65, type: !329)
!333 = !DILocalVariable(name: "tid", scope: !334, file: !326, line: 66, type: !110)
!334 = distinct !DILexicalBlock(scope: !335, file: !326, line: 66, column: 2)
!335 = distinct !DILexicalBlock(scope: !336, file: !326, line: 66, column: 2)
!336 = distinct !DILexicalBlock(scope: !337, file: !326, line: 66, column: 2)
!337 = distinct !DILexicalBlock(scope: !338, file: !326, line: 66, column: 2)
!338 = distinct !DILexicalBlock(scope: !325, file: !326, line: 66, column: 2)
!339 = !DILocalVariable(name: "_ret", scope: !334, file: !326, line: 66, type: !340)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !111, line: 60, baseType: !341)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !113, line: 105, baseType: !145)
!342 = distinct !DILocation(line: 538, column: 21, scope: !310)
!343 = !DILocation(line: 120, column: 2, scope: !344, inlinedAt: !350)
!344 = distinct !DISubprogram(name: "ukarch_read_sp", scope: !345, file: !345, line: 116, type: !346, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !348)
!345 = !DIFile(filename: "/root/.unikraft/unikraft/arch/x86/x86_64/include/uk/asm/lcpu.h", directory: "/root/.unikraft/apps/redis/build")
!346 = !DISubroutineType(types: !347)
!347 = !{!145}
!348 = !{!349}
!349 = !DILocalVariable(name: "sp", scope: !344, file: !345, line: 118, type: !145)
!350 = distinct !DILocation(line: 66, column: 2, scope: !337, inlinedAt: !342)
!351 = !{i32 531785}
!352 = !DILocation(line: 118, column: 16, scope: !344, inlinedAt: !350)
!353 = !DILocation(line: 121, column: 2, scope: !344, inlinedAt: !350)
!354 = !DILocation(line: 66, column: 2, scope: !337, inlinedAt: !342)
!355 = !DILocation(line: 120, column: 2, scope: !344, inlinedAt: !356)
!356 = distinct !DILocation(line: 66, column: 2, scope: !337, inlinedAt: !342)
!357 = !DILocation(line: 118, column: 16, scope: !344, inlinedAt: !356)
!358 = !DILocation(line: 121, column: 2, scope: !344, inlinedAt: !356)
!359 = !DILocation(line: 66, column: 2, scope: !338, inlinedAt: !342)
!360 = !DILocation(line: 65, column: 11, scope: !361, inlinedAt: !366)
!361 = distinct !DISubprogram(name: "uk_swrand_randr", scope: !362, file: !362, line: 60, type: !327, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !363)
!362 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukswrand/include/uk/swrand.h", directory: "/root/.unikraft/apps/redis/build")
!363 = !{!364, !365}
!364 = !DILocalVariable(name: "iflags", scope: !361, file: !362, line: 62, type: !145)
!365 = !DILocalVariable(name: "ret", scope: !361, file: !362, line: 63, type: !329)
!366 = distinct !DILocation(line: 66, column: 2, scope: !367, inlinedAt: !342)
!367 = distinct !DILexicalBlock(scope: !337, file: !326, line: 66, column: 2)
!368 = !DILocation(line: 62, column: 16, scope: !361, inlinedAt: !366)
!369 = !DILocation(line: 66, column: 8, scope: !361, inlinedAt: !366)
!370 = !DILocation(line: 63, column: 8, scope: !361, inlinedAt: !366)
!371 = !DILocation(line: 67, column: 2, scope: !361, inlinedAt: !366)
!372 = !DILocation(line: 69, column: 2, scope: !361, inlinedAt: !366)
!373 = !DILocation(line: 65, column: 8, scope: !325, inlinedAt: !342)
!374 = !DILocation(line: 66, column: 2, scope: !367, inlinedAt: !342)
!375 = !{!376, !376, i64 0}
!376 = !{!"int", !267, i64 0}
!377 = !DILocation(line: 120, column: 2, scope: !344, inlinedAt: !378)
!378 = distinct !DILocation(line: 49, column: 21, scope: !379, inlinedAt: !385)
!379 = distinct !DISubprogram(name: "uk_thread_get_tid", scope: !380, file: !380, line: 47, type: !381, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !383)
!380 = !DIFile(filename: "/root/.unikraft/unikraft/lib/flexos-core/include/flexos/impl/intelpku-impl.h", directory: "/root/.unikraft/apps/redis/build")
!381 = !DISubroutineType(types: !382)
!382 = !{!36}
!383 = !{!384}
!384 = !DILocalVariable(name: "sp", scope: !379, file: !380, line: 49, type: !145)
!385 = distinct !DILocation(line: 66, column: 2, scope: !334, inlinedAt: !342)
!386 = !DILocation(line: 118, column: 16, scope: !344, inlinedAt: !378)
!387 = !DILocation(line: 121, column: 2, scope: !344, inlinedAt: !378)
!388 = !DILocation(line: 49, column: 16, scope: !379, inlinedAt: !385)
!389 = !DILocation(line: 50, column: 19, scope: !379, inlinedAt: !385)
!390 = !DILocation(line: 50, column: 11, scope: !379, inlinedAt: !385)
!391 = !DILocation(line: 50, column: 9, scope: !379, inlinedAt: !385)
!392 = !DILocation(line: 50, column: 2, scope: !379, inlinedAt: !385)
!393 = !DILocation(line: 66, column: 2, scope: !334, inlinedAt: !342)
!394 = !{i32 -2146824497, i32 -2146824484, i32 -2146824459, i32 -2146824435, i32 -2146824410, i32 -2146824335, i32 -2146824310, i32 -2146824166, i32 -2146821073, i32 -2146820984, i32 -2146820863, i32 -2146820768, i32 -2146820667, i32 -2146820640, i32 -2146820557, i32 -2146820468, i32 -2146820347, i32 -2146820247, i32 -2146820141, i32 -2146820033, i32 -2146823883, i32 -2146823830, i32 -2146823799, i32 -2146823768, i32 -2146823747, i32 -2146823725, i32 -2146823676, i32 -2146823655, i32 -2146819950, i32 -2146819861, i32 -2146819740, i32 -2146819641, i32 -2146819535, i32 -2146819433, i32 -2146819400, i32 -2146819327, i32 -2146819259, i32 -2146823353, i32 -2146823294, i32 -2146823241, i32 -2146823210, i32 -2146823179, i32 -2146823158, i32 -2146823136, i32 -2146823087, i32 -2146823066, i32 -2146819208, i32 -2146819119, i32 -2146818998, i32 -2146818899, i32 -2146818793, i32 -2146818691, i32 -2146818658, i32 -2146818575, i32 -2146818486, i32 -2146818365, i32 -2146818265, i32 -2146818239, i32 -2146818136, i32 -2146818110, i32 -2146822808, i32 -2146822741, i32 -2146822716, i32 -2146822652, i32 -2146822570, i32 -2146822547, i32 -2146822522, i32 -2146822497}
!395 = !DILocation(line: 66, column: 2, scope: !396, inlinedAt: !342)
!396 = distinct !DILexicalBlock(scope: !397, file: !326, line: 66, column: 2)
!397 = distinct !DILexicalBlock(scope: !334, file: !326, line: 66, column: 2)
!398 = !{i32 -2146821550, i32 -2146821533}
!399 = !DILocation(line: 67, column: 9, scope: !325, inlinedAt: !342)
!400 = !DILocation(line: 68, column: 1, scope: !325, inlinedAt: !342)
!401 = !DILocation(line: 67, column: 2, scope: !325, inlinedAt: !342)
!402 = !DILocation(line: 538, column: 35, scope: !310)
!403 = !DILocation(line: 538, column: 33, scope: !310)
!404 = !DILocation(line: 538, column: 13, scope: !310)
!405 = !DILocation(line: 539, column: 15, scope: !406)
!406 = distinct !DILexicalBlock(scope: !310, file: !1, line: 539, column: 7)
!407 = !DILocation(line: 539, column: 7, scope: !310)
!408 = !DILocation(line: 545, column: 15, scope: !409)
!409 = distinct !DILexicalBlock(scope: !310, file: !1, line: 545, column: 7)
!410 = !{!276, !267, i64 29}
!411 = !DILocation(line: 545, column: 27, scope: !409)
!412 = !DILocation(line: 545, column: 54, scope: !409)
!413 = !DILocation(line: 548, column: 12, scope: !414)
!414 = distinct !DILexicalBlock(scope: !409, file: !1, line: 547, column: 59)
!415 = !DILocation(line: 546, column: 27, scope: !409)
!416 = !DILocation(line: 546, column: 58, scope: !409)
!417 = !DILocation(line: 547, column: 16, scope: !409)
!418 = !{!276, !278, i64 30}
!419 = !DILocation(line: 547, column: 22, scope: !409)
!420 = !DILocation(line: 547, column: 28, scope: !409)
!421 = !DILocation(line: 547, column: 40, scope: !409)
!422 = !DILocation(line: 545, column: 7, scope: !310)
!423 = !DILocation(line: 548, column: 18, scope: !414)
!424 = !DILocation(line: 549, column: 24, scope: !414)
!425 = !DILocation(line: 550, column: 3, scope: !414)
!426 = !DILocation(line: 551, column: 1, scope: !310)
!427 = distinct !DISubprogram(name: "mld6_lookfor_group", scope: !1, file: !1, line: 144, type: !428, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !430)
!428 = !DISubroutineType(types: !429)
!429 = !{!96, !161, !147}
!430 = !{!431, !432, !433}
!431 = !DILocalVariable(name: "ifp", arg: 1, scope: !427, file: !1, line: 144, type: !161)
!432 = !DILocalVariable(name: "addr", arg: 2, scope: !427, file: !1, line: 144, type: !147)
!433 = !DILocalVariable(name: "group", scope: !427, file: !1, line: 146, type: !96)
!434 = !DILocation(line: 144, column: 34, scope: !427)
!435 = !DILocation(line: 144, column: 57, scope: !427)
!436 = !DILocation(line: 146, column: 29, scope: !427)
!437 = !DILocation(line: 146, column: 21, scope: !427)
!438 = !DILocation(line: 148, column: 3, scope: !427)
!439 = !DILocation(line: 148, column: 16, scope: !427)
!440 = !DILocation(line: 149, column: 9, scope: !441)
!441 = distinct !DILexicalBlock(scope: !442, file: !1, line: 149, column: 9)
!442 = distinct !DILexicalBlock(scope: !427, file: !1, line: 148, column: 25)
!443 = !{!276, !267, i64 24}
!444 = !{!277, !267, i64 16}
!445 = !DILocation(line: 149, column: 9, scope: !442)
!446 = !DILocation(line: 152, column: 20, scope: !442)
!447 = distinct !{!447, !438, !448}
!448 = !DILocation(line: 153, column: 3, scope: !427)
!449 = !DILocation(line: 0, scope: !450)
!450 = distinct !DILexicalBlock(scope: !441, file: !1, line: 149, column: 54)
!451 = !DILocation(line: 156, column: 1, scope: !427)
!452 = distinct !DISubprogram(name: "mld6_input", scope: !1, file: !1, line: 227, type: !453, isLocal: false, isDefinition: true, scopeLine: 228, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !455)
!453 = !DISubroutineType(types: !454)
!454 = !{null, !197, !161}
!455 = !{!456, !457, !458, !459}
!456 = !DILocalVariable(name: "p", arg: 1, scope: !452, file: !1, line: 227, type: !197)
!457 = !DILocalVariable(name: "inp", arg: 2, scope: !452, file: !1, line: 227, type: !161)
!458 = !DILocalVariable(name: "mld_hdr", scope: !452, file: !1, line: 229, type: !130)
!459 = !DILocalVariable(name: "group", scope: !452, file: !1, line: 230, type: !96)
!460 = !DILocation(line: 227, column: 25, scope: !452)
!461 = !DILocation(line: 227, column: 42, scope: !452)
!462 = !DILocation(line: 232, column: 3, scope: !452)
!463 = !{!464, !278, i64 260}
!464 = !{!"stats_", !465, i64 0, !465, i64 24, !465, i64 48, !465, i64 72, !465, i64 96, !465, i64 120, !465, i64 144, !466, i64 168, !465, i64 186, !465, i64 210, !465, i64 234, !468, i64 258, !465, i64 286}
!465 = !{!"stats_proto", !278, i64 0, !278, i64 2, !278, i64 4, !278, i64 6, !278, i64 8, !278, i64 10, !278, i64 12, !278, i64 14, !278, i64 16, !278, i64 18, !278, i64 20, !278, i64 22}
!466 = !{!"stats_sys", !467, i64 0, !467, i64 6, !467, i64 12}
!467 = !{!"stats_syselem", !278, i64 0, !278, i64 2, !278, i64 4}
!468 = !{!"stats_igmp", !278, i64 0, !278, i64 2, !278, i64 4, !278, i64 6, !278, i64 8, !278, i64 10, !278, i64 12, !278, i64 14, !278, i64 16, !278, i64 18, !278, i64 20, !278, i64 22, !278, i64 24, !278, i64 26}
!469 = !DILocation(line: 235, column: 10, scope: !470)
!470 = distinct !DILexicalBlock(scope: !452, file: !1, line: 235, column: 7)
!471 = !{!472, !278, i64 18}
!472 = !{!"pbuf", !266, i64 0, !266, i64 8, !278, i64 16, !278, i64 18, !267, i64 20, !267, i64 21, !267, i64 22, !267, i64 23}
!473 = !DILocation(line: 235, column: 14, scope: !470)
!474 = !DILocation(line: 235, column: 7, scope: !452)
!475 = !DILocation(line: 237, column: 5, scope: !476)
!476 = distinct !DILexicalBlock(scope: !470, file: !1, line: 235, column: 43)
!477 = !DILocation(line: 238, column: 5, scope: !476)
!478 = !{!464, !278, i64 266}
!479 = !DILocation(line: 239, column: 5, scope: !476)
!480 = !{!464, !278, i64 262}
!481 = !DILocation(line: 240, column: 5, scope: !476)
!482 = !DILocation(line: 243, column: 37, scope: !452)
!483 = !{!472, !266, i64 8}
!484 = !DILocation(line: 229, column: 22, scope: !452)
!485 = !DILocation(line: 245, column: 20, scope: !452)
!486 = !{!487, !267, i64 0}
!487 = !{!"mld_header", !267, i64 0, !267, i64 1, !278, i64 2, !278, i64 4, !278, i64 6, !488, i64 8}
!488 = !{!"ip6_addr_packed", !267, i64 0}
!489 = !DILocation(line: 245, column: 3, scope: !452)
!490 = !DILocation(line: 248, column: 9, scope: !491)
!491 = distinct !DILexicalBlock(scope: !492, file: !1, line: 248, column: 9)
!492 = distinct !DILexicalBlock(scope: !452, file: !1, line: 245, column: 26)
!493 = !{!267, !267, i64 0}
!494 = !DILocation(line: 248, column: 64, scope: !491)
!495 = !DILocation(line: 249, column: 9, scope: !491)
!496 = !DILocation(line: 248, column: 9, scope: !492)
!497 = !DILocation(line: 250, column: 7, scope: !498)
!498 = distinct !DILexicalBlock(scope: !491, file: !1, line: 249, column: 56)
!499 = !{!464, !278, i64 276}
!500 = !DILocation(line: 252, column: 15, scope: !498)
!501 = !DILocation(line: 230, column: 21, scope: !452)
!502 = !DILocation(line: 253, column: 7, scope: !498)
!503 = !DILocation(line: 253, column: 20, scope: !498)
!504 = !DILocation(line: 254, column: 16, scope: !505)
!505 = distinct !DILexicalBlock(scope: !506, file: !1, line: 254, column: 13)
!506 = distinct !DILexicalBlock(scope: !498, file: !1, line: 253, column: 29)
!507 = !DILocation(line: 254, column: 72, scope: !505)
!508 = !DILocation(line: 255, column: 16, scope: !505)
!509 = !DILocation(line: 254, column: 13, scope: !506)
!510 = !DILocation(line: 256, column: 47, scope: !511)
!511 = distinct !DILexicalBlock(scope: !505, file: !1, line: 255, column: 74)
!512 = !{!487, !278, i64 4}
!513 = !DILocation(line: 256, column: 11, scope: !511)
!514 = !DILocation(line: 257, column: 9, scope: !511)
!515 = !DILocation(line: 258, column: 24, scope: !506)
!516 = distinct !{!516, !502, !517}
!517 = !DILocation(line: 259, column: 7, scope: !498)
!518 = !DILocation(line: 264, column: 7, scope: !519)
!519 = distinct !DILexicalBlock(scope: !491, file: !1, line: 260, column: 12)
!520 = !{!464, !278, i64 274}
!521 = !DILocation(line: 144, column: 34, scope: !427, inlinedAt: !522)
!522 = distinct !DILocation(line: 265, column: 15, scope: !519)
!523 = !DILocation(line: 146, column: 29, scope: !427, inlinedAt: !522)
!524 = !DILocation(line: 146, column: 21, scope: !427, inlinedAt: !522)
!525 = !DILocation(line: 148, column: 3, scope: !427, inlinedAt: !522)
!526 = !DILocation(line: 148, column: 16, scope: !427, inlinedAt: !522)
!527 = !DILocation(line: 149, column: 9, scope: !441, inlinedAt: !522)
!528 = !DILocation(line: 149, column: 9, scope: !442, inlinedAt: !522)
!529 = !DILocation(line: 152, column: 20, scope: !442, inlinedAt: !522)
!530 = !DILocation(line: 155, column: 3, scope: !427, inlinedAt: !522)
!531 = !DILocation(line: 156, column: 1, scope: !427, inlinedAt: !522)
!532 = !DILocation(line: 266, column: 11, scope: !519)
!533 = !DILocation(line: 150, column: 7, scope: !450, inlinedAt: !522)
!534 = !DILocation(line: 268, column: 45, scope: !535)
!535 = distinct !DILexicalBlock(scope: !536, file: !1, line: 266, column: 26)
!536 = distinct !DILexicalBlock(scope: !519, file: !1, line: 266, column: 11)
!537 = !DILocation(line: 268, column: 9, scope: !535)
!538 = !DILocation(line: 269, column: 7, scope: !535)
!539 = !DILocation(line: 276, column: 5, scope: !492)
!540 = !{!464, !278, i64 278}
!541 = !DILocation(line: 144, column: 34, scope: !427, inlinedAt: !542)
!542 = distinct !DILocation(line: 277, column: 13, scope: !492)
!543 = !DILocation(line: 146, column: 29, scope: !427, inlinedAt: !542)
!544 = !DILocation(line: 146, column: 21, scope: !427, inlinedAt: !542)
!545 = !DILocation(line: 148, column: 3, scope: !427, inlinedAt: !542)
!546 = !DILocation(line: 148, column: 16, scope: !427, inlinedAt: !542)
!547 = !DILocation(line: 149, column: 9, scope: !441, inlinedAt: !542)
!548 = !DILocation(line: 149, column: 9, scope: !442, inlinedAt: !542)
!549 = !DILocation(line: 152, column: 20, scope: !442, inlinedAt: !542)
!550 = !DILocation(line: 155, column: 3, scope: !427, inlinedAt: !542)
!551 = !DILocation(line: 156, column: 1, scope: !427, inlinedAt: !542)
!552 = !DILocation(line: 278, column: 9, scope: !492)
!553 = !DILocation(line: 150, column: 7, scope: !450, inlinedAt: !542)
!554 = !DILocation(line: 280, column: 18, scope: !555)
!555 = distinct !DILexicalBlock(scope: !556, file: !1, line: 280, column: 11)
!556 = distinct !DILexicalBlock(scope: !557, file: !1, line: 278, column: 24)
!557 = distinct !DILexicalBlock(scope: !492, file: !1, line: 278, column: 9)
!558 = !DILocation(line: 280, column: 30, scope: !555)
!559 = !DILocation(line: 280, column: 11, scope: !556)
!560 = !DILocation(line: 281, column: 16, scope: !561)
!561 = distinct !DILexicalBlock(scope: !555, file: !1, line: 280, column: 61)
!562 = !DILocation(line: 281, column: 22, scope: !561)
!563 = !DILocation(line: 282, column: 28, scope: !561)
!564 = !DILocation(line: 283, column: 16, scope: !561)
!565 = !DILocation(line: 283, column: 35, scope: !561)
!566 = !{!276, !267, i64 28}
!567 = !DILocation(line: 284, column: 7, scope: !561)
!568 = !DILocation(line: 291, column: 5, scope: !492)
!569 = !{!464, !278, i64 270}
!570 = !DILocation(line: 292, column: 5, scope: !492)
!571 = !DILocation(line: 293, column: 5, scope: !492)
!572 = !DILocation(line: 296, column: 3, scope: !452)
!573 = !DILocation(line: 297, column: 1, scope: !452)
!574 = !DILocation(line: 0, scope: !476)
!575 = distinct !DISubprogram(name: "mld6_joingroup", scope: !1, file: !1, line: 315, type: !576, isLocal: false, isDefinition: true, scopeLine: 316, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !578)
!576 = !DISubroutineType(types: !577)
!577 = !{!156, !147, !147}
!578 = !{!579, !580, !581, !582}
!579 = !DILocalVariable(name: "srcaddr", arg: 1, scope: !575, file: !1, line: 315, type: !147)
!580 = !DILocalVariable(name: "groupaddr", arg: 2, scope: !575, file: !1, line: 315, type: !147)
!581 = !DILocalVariable(name: "err", scope: !575, file: !1, line: 317, type: !156)
!582 = !DILocalVariable(name: "netif", scope: !575, file: !1, line: 318, type: !161)
!583 = !DILocation(line: 315, column: 34, scope: !575)
!584 = !DILocation(line: 315, column: 61, scope: !575)
!585 = !DILocation(line: 317, column: 17, scope: !575)
!586 = !DILocation(line: 323, column: 3, scope: !587)
!587 = distinct !DILexicalBlock(scope: !575, file: !1, line: 323, column: 3)
!588 = !DILocation(line: 318, column: 17, scope: !575)
!589 = !DILocation(line: 323, column: 3, scope: !590)
!590 = distinct !DILexicalBlock(scope: !587, file: !1, line: 323, column: 3)
!591 = !DILocation(line: 325, column: 9, scope: !592)
!592 = distinct !DILexicalBlock(scope: !593, file: !1, line: 325, column: 9)
!593 = distinct !DILexicalBlock(scope: !590, file: !1, line: 323, column: 24)
!594 = !DILocation(line: 325, column: 33, scope: !592)
!595 = !DILocation(line: 326, column: 9, scope: !592)
!596 = !DILocation(line: 326, column: 50, scope: !592)
!597 = !DILocation(line: 325, column: 9, scope: !593)
!598 = !DILocation(line: 327, column: 13, scope: !599)
!599 = distinct !DILexicalBlock(scope: !592, file: !1, line: 326, column: 56)
!600 = !DILocation(line: 328, column: 15, scope: !601)
!601 = distinct !DILexicalBlock(scope: !599, file: !1, line: 328, column: 11)
!602 = !DILocation(line: 328, column: 11, scope: !599)
!603 = !DILocation(line: 0, scope: !575)
!604 = !{!283, !266, i64 0}
!605 = distinct !{!605, !586, !606}
!606 = !DILocation(line: 332, column: 3, scope: !587)
!607 = !DILocation(line: 0, scope: !608)
!608 = distinct !DILexicalBlock(scope: !601, file: !1, line: 328, column: 26)
!609 = !DILocation(line: 335, column: 1, scope: !575)
!610 = distinct !DISubprogram(name: "mld6_joingroup_netif", scope: !1, file: !1, line: 347, type: !611, isLocal: false, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !613)
!611 = !DISubroutineType(types: !612)
!612 = !{!156, !161, !147}
!613 = !{!614, !615, !616, !617}
!614 = !DILocalVariable(name: "netif", arg: 1, scope: !610, file: !1, line: 347, type: !161)
!615 = !DILocalVariable(name: "groupaddr", arg: 2, scope: !610, file: !1, line: 347, type: !147)
!616 = !DILocalVariable(name: "group", scope: !610, file: !1, line: 349, type: !96)
!617 = !DILocalVariable(name: "ip6addr", scope: !610, file: !1, line: 351, type: !102)
!618 = !DILocation(line: 347, column: 36, scope: !610)
!619 = !DILocation(line: 347, column: 61, scope: !610)
!620 = !DILocation(line: 351, column: 3, scope: !610)
!621 = !DILocation(line: 355, column: 7, scope: !622)
!622 = distinct !DILexicalBlock(scope: !610, file: !1, line: 355, column: 7)
!623 = !DILocation(line: 355, column: 7, scope: !610)
!624 = !DILocation(line: 356, column: 5, scope: !625)
!625 = distinct !DILexicalBlock(scope: !626, file: !1, line: 356, column: 5)
!626 = distinct !DILexicalBlock(scope: !622, file: !1, line: 355, column: 54)
!627 = !DILocation(line: 357, column: 5, scope: !626)
!628 = !{!283, !267, i64 264}
!629 = !DILocation(line: 359, column: 3, scope: !626)
!630 = !DILocation(line: 144, column: 34, scope: !427, inlinedAt: !631)
!631 = distinct !DILocation(line: 366, column: 11, scope: !610)
!632 = !DILocation(line: 144, column: 57, scope: !427, inlinedAt: !631)
!633 = !DILocation(line: 146, column: 29, scope: !427, inlinedAt: !631)
!634 = !DILocation(line: 146, column: 21, scope: !427, inlinedAt: !631)
!635 = !DILocation(line: 148, column: 3, scope: !427, inlinedAt: !631)
!636 = !DILocation(line: 148, column: 16, scope: !427, inlinedAt: !631)
!637 = !DILocation(line: 149, column: 9, scope: !441, inlinedAt: !631)
!638 = !DILocation(line: 149, column: 9, scope: !442, inlinedAt: !631)
!639 = !DILocation(line: 152, column: 20, scope: !442, inlinedAt: !631)
!640 = !DILocation(line: 150, column: 7, scope: !450, inlinedAt: !631)
!641 = !DILocation(line: 156, column: 1, scope: !427, inlinedAt: !631)
!642 = !DILocation(line: 349, column: 21, scope: !610)
!643 = !DILocation(line: 155, column: 3, scope: !427, inlinedAt: !631)
!644 = !DILocation(line: 368, column: 7, scope: !610)
!645 = !DILocalVariable(name: "ifp", arg: 1, scope: !646, file: !1, line: 168, type: !161)
!646 = distinct !DISubprogram(name: "mld6_new_group", scope: !1, file: !1, line: 168, type: !428, isLocal: true, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !647)
!647 = !{!645, !648, !649}
!648 = !DILocalVariable(name: "addr", arg: 2, scope: !646, file: !1, line: 168, type: !147)
!649 = !DILocalVariable(name: "group", scope: !646, file: !1, line: 170, type: !96)
!650 = !DILocation(line: 168, column: 30, scope: !646, inlinedAt: !651)
!651 = distinct !DILocation(line: 370, column: 13, scope: !652)
!652 = distinct !DILexicalBlock(scope: !653, file: !1, line: 368, column: 22)
!653 = distinct !DILexicalBlock(scope: !610, file: !1, line: 368, column: 7)
!654 = !DILocation(line: 168, column: 53, scope: !646, inlinedAt: !651)
!655 = !DILocation(line: 172, column: 31, scope: !646, inlinedAt: !651)
!656 = !DILocation(line: 172, column: 11, scope: !646, inlinedAt: !651)
!657 = !DILocation(line: 170, column: 21, scope: !646, inlinedAt: !651)
!658 = !DILocation(line: 173, column: 13, scope: !659, inlinedAt: !651)
!659 = distinct !DILexicalBlock(scope: !646, file: !1, line: 173, column: 7)
!660 = !DILocation(line: 173, column: 7, scope: !646, inlinedAt: !651)
!661 = !DILocation(line: 174, column: 5, scope: !662, inlinedAt: !651)
!662 = distinct !DILexicalBlock(scope: !663, file: !1, line: 174, column: 5)
!663 = distinct !DILexicalBlock(scope: !659, file: !1, line: 173, column: 22)
!664 = !DILocation(line: 175, column: 12, scope: !663, inlinedAt: !651)
!665 = !DILocation(line: 175, column: 31, scope: !663, inlinedAt: !651)
!666 = !DILocation(line: 176, column: 12, scope: !663, inlinedAt: !651)
!667 = !DILocation(line: 176, column: 31, scope: !663, inlinedAt: !651)
!668 = !DILocation(line: 177, column: 12, scope: !663, inlinedAt: !651)
!669 = !DILocation(line: 177, column: 31, scope: !663, inlinedAt: !651)
!670 = !DILocation(line: 178, column: 12, scope: !663, inlinedAt: !651)
!671 = !DILocation(line: 178, column: 31, scope: !663, inlinedAt: !651)
!672 = !{!276, !267, i64 32}
!673 = !DILocation(line: 179, column: 33, scope: !663, inlinedAt: !651)
!674 = !DILocation(line: 179, column: 31, scope: !663, inlinedAt: !651)
!675 = !DILocation(line: 181, column: 5, scope: !663, inlinedAt: !651)
!676 = !DILocation(line: 182, column: 3, scope: !663, inlinedAt: !651)
!677 = !DILocation(line: 184, column: 3, scope: !646, inlinedAt: !651)
!678 = !DILocation(line: 371, column: 9, scope: !652)
!679 = !DILocation(line: 376, column: 16, scope: !680)
!680 = distinct !DILexicalBlock(scope: !652, file: !1, line: 376, column: 9)
!681 = !DILocation(line: 376, column: 31, scope: !680)
!682 = !DILocation(line: 376, column: 9, scope: !652)
!683 = !DILocation(line: 372, column: 7, scope: !684)
!684 = distinct !DILexicalBlock(scope: !685, file: !1, line: 371, column: 24)
!685 = distinct !DILexicalBlock(scope: !652, file: !1, line: 371, column: 9)
!686 = !DILocation(line: 377, column: 7, scope: !687)
!687 = distinct !DILexicalBlock(scope: !680, file: !1, line: 376, column: 40)
!688 = !DILocation(line: 378, column: 5, scope: !687)
!689 = !DILocation(line: 381, column: 5, scope: !652)
!690 = !{!464, !278, i64 284}
!691 = !DILocation(line: 382, column: 5, scope: !652)
!692 = !DILocation(line: 383, column: 5, scope: !652)
!693 = !DILocation(line: 384, column: 3, scope: !652)
!694 = !DILocation(line: 0, scope: !610)
!695 = !DILocation(line: 0, scope: !652)
!696 = !DILocation(line: 387, column: 10, scope: !610)
!697 = !DILocation(line: 387, column: 13, scope: !610)
!698 = !DILocation(line: 388, column: 3, scope: !610)
!699 = !DILocation(line: 0, scope: !684)
!700 = !DILocation(line: 389, column: 1, scope: !610)
!701 = distinct !DISubprogram(name: "mld6_send", scope: !1, file: !1, line: 563, type: !702, isLocal: true, isDefinition: true, scopeLine: 564, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !704)
!702 = !DISubroutineType(types: !703)
!703 = !{null, !161, !96, !117}
!704 = !{!705, !706, !707, !708, !709, !710}
!705 = !DILocalVariable(name: "netif", arg: 1, scope: !701, file: !1, line: 563, type: !161)
!706 = !DILocalVariable(name: "group", arg: 2, scope: !701, file: !1, line: 563, type: !96)
!707 = !DILocalVariable(name: "type", arg: 3, scope: !701, file: !1, line: 563, type: !117)
!708 = !DILocalVariable(name: "mld_hdr", scope: !701, file: !1, line: 565, type: !130)
!709 = !DILocalVariable(name: "p", scope: !701, file: !1, line: 566, type: !197)
!710 = !DILocalVariable(name: "src_addr", scope: !701, file: !1, line: 567, type: !147)
!711 = !DILocation(line: 563, column: 25, scope: !701)
!712 = !DILocation(line: 563, column: 50, scope: !701)
!713 = !DILocation(line: 563, column: 62, scope: !701)
!714 = !DILocation(line: 570, column: 7, scope: !701)
!715 = !DILocation(line: 566, column: 16, scope: !701)
!716 = !DILocation(line: 571, column: 9, scope: !717)
!717 = distinct !DILexicalBlock(scope: !701, file: !1, line: 571, column: 7)
!718 = !DILocation(line: 571, column: 7, scope: !701)
!719 = !DILocation(line: 572, column: 5, scope: !720)
!720 = distinct !DILexicalBlock(scope: !717, file: !1, line: 571, column: 18)
!721 = !{!464, !278, i64 268}
!722 = !DILocation(line: 573, column: 5, scope: !720)
!723 = !DILocation(line: 577, column: 7, scope: !724)
!724 = distinct !DILexicalBlock(scope: !701, file: !1, line: 577, column: 7)
!725 = !DILocation(line: 577, column: 7, scope: !701)
!726 = !DILocation(line: 578, column: 5, scope: !727)
!727 = distinct !DILexicalBlock(scope: !724, file: !1, line: 577, column: 45)
!728 = !DILocation(line: 579, column: 5, scope: !727)
!729 = !DILocation(line: 580, column: 5, scope: !727)
!730 = !DILocation(line: 584, column: 8, scope: !731)
!731 = distinct !DILexicalBlock(scope: !701, file: !1, line: 584, column: 7)
!732 = !DILocation(line: 584, column: 7, scope: !701)
!733 = !DILocation(line: 590, column: 16, scope: !734)
!734 = distinct !DILexicalBlock(scope: !731, file: !1, line: 588, column: 10)
!735 = !DILocation(line: 567, column: 21, scope: !701)
!736 = !DILocation(line: 594, column: 37, scope: !701)
!737 = !DILocation(line: 565, column: 22, scope: !701)
!738 = !DILocation(line: 597, column: 12, scope: !701)
!739 = !DILocation(line: 597, column: 17, scope: !701)
!740 = !DILocation(line: 598, column: 12, scope: !701)
!741 = !DILocation(line: 598, column: 17, scope: !701)
!742 = !{!487, !267, i64 1}
!743 = !DILocation(line: 599, column: 12, scope: !701)
!744 = !DILocation(line: 599, column: 19, scope: !701)
!745 = !{!487, !278, i64 2}
!746 = !DILocation(line: 600, column: 12, scope: !701)
!747 = !DILocation(line: 600, column: 27, scope: !701)
!748 = !DILocation(line: 601, column: 12, scope: !701)
!749 = !DILocation(line: 601, column: 21, scope: !701)
!750 = !{!487, !278, i64 6}
!751 = !DILocation(line: 602, column: 3, scope: !752)
!752 = distinct !DILexicalBlock(scope: !701, file: !1, line: 602, column: 3)
!753 = !DILocation(line: 605, column: 3, scope: !754)
!754 = distinct !DILexicalBlock(scope: !701, file: !1, line: 605, column: 3)
!755 = !{!283, !278, i64 248}
!756 = !DILocation(line: 605, column: 3, scope: !701)
!757 = !DILocation(line: 606, column: 64, scope: !758)
!758 = distinct !DILexicalBlock(scope: !754, file: !1, line: 605, column: 63)
!759 = !DILocation(line: 606, column: 23, scope: !758)
!760 = !DILocation(line: 606, column: 21, scope: !758)
!761 = !DILocation(line: 608, column: 3, scope: !758)
!762 = !DILocation(line: 612, column: 3, scope: !701)
!763 = !DILocation(line: 614, column: 12, scope: !764)
!764 = distinct !DILexicalBlock(scope: !701, file: !1, line: 614, column: 7)
!765 = !DILocation(line: 614, column: 7, scope: !701)
!766 = !DILocation(line: 616, column: 12, scope: !767)
!767 = distinct !DILexicalBlock(scope: !764, file: !1, line: 614, column: 31)
!768 = !DILocation(line: 616, column: 31, scope: !767)
!769 = !DILocation(line: 617, column: 3, scope: !767)
!770 = !DILocation(line: 620, column: 3, scope: !701)
!771 = !{!464, !278, i64 258}
!772 = !DILocation(line: 621, column: 21, scope: !701)
!773 = !DILocation(line: 621, column: 20, scope: !701)
!774 = !DILocation(line: 621, column: 3, scope: !701)
!775 = !DILocation(line: 623, column: 3, scope: !701)
!776 = !DILocation(line: 624, column: 1, scope: !701)
!777 = !DILocation(line: 0, scope: !720)
!778 = distinct !DISubprogram(name: "mld6_leavegroup", scope: !1, file: !1, line: 404, type: !576, isLocal: false, isDefinition: true, scopeLine: 405, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !779)
!779 = !{!780, !781, !782, !783, !784}
!780 = !DILocalVariable(name: "srcaddr", arg: 1, scope: !778, file: !1, line: 404, type: !147)
!781 = !DILocalVariable(name: "groupaddr", arg: 2, scope: !778, file: !1, line: 404, type: !147)
!782 = !DILocalVariable(name: "err", scope: !778, file: !1, line: 406, type: !156)
!783 = !DILocalVariable(name: "netif", scope: !778, file: !1, line: 407, type: !161)
!784 = !DILocalVariable(name: "res", scope: !785, file: !1, line: 416, type: !156)
!785 = distinct !DILexicalBlock(scope: !786, file: !1, line: 415, column: 56)
!786 = distinct !DILexicalBlock(scope: !787, file: !1, line: 414, column: 9)
!787 = distinct !DILexicalBlock(scope: !788, file: !1, line: 412, column: 24)
!788 = distinct !DILexicalBlock(scope: !789, file: !1, line: 412, column: 3)
!789 = distinct !DILexicalBlock(scope: !778, file: !1, line: 412, column: 3)
!790 = !DILocation(line: 404, column: 35, scope: !778)
!791 = !DILocation(line: 404, column: 62, scope: !778)
!792 = !DILocation(line: 406, column: 17, scope: !778)
!793 = !DILocation(line: 412, column: 3, scope: !789)
!794 = !DILocation(line: 407, column: 17, scope: !778)
!795 = !DILocation(line: 412, column: 3, scope: !788)
!796 = !DILocation(line: 414, column: 9, scope: !786)
!797 = !DILocation(line: 414, column: 33, scope: !786)
!798 = !DILocation(line: 415, column: 9, scope: !786)
!799 = !DILocation(line: 415, column: 50, scope: !786)
!800 = !DILocation(line: 414, column: 9, scope: !787)
!801 = !DILocation(line: 416, column: 19, scope: !785)
!802 = !DILocation(line: 416, column: 13, scope: !785)
!803 = !DILocation(line: 417, column: 15, scope: !804)
!804 = distinct !DILexicalBlock(scope: !785, file: !1, line: 417, column: 11)
!805 = !DILocation(line: 417, column: 11, scope: !785)
!806 = !DILocation(line: 420, column: 7, scope: !807)
!807 = distinct !DILexicalBlock(scope: !804, file: !1, line: 417, column: 26)
!808 = !DILocation(line: 0, scope: !778)
!809 = !DILocation(line: 421, column: 5, scope: !785)
!810 = distinct !{!810, !793, !811}
!811 = !DILocation(line: 422, column: 3, scope: !789)
!812 = !DILocation(line: 0, scope: !807)
!813 = !DILocation(line: 424, column: 3, scope: !778)
!814 = distinct !DISubprogram(name: "mld6_leavegroup_netif", scope: !1, file: !1, line: 437, type: !611, isLocal: false, isDefinition: true, scopeLine: 438, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !815)
!815 = !{!816, !817, !818, !819}
!816 = !DILocalVariable(name: "netif", arg: 1, scope: !814, file: !1, line: 437, type: !161)
!817 = !DILocalVariable(name: "groupaddr", arg: 2, scope: !814, file: !1, line: 437, type: !147)
!818 = !DILocalVariable(name: "group", scope: !814, file: !1, line: 439, type: !96)
!819 = !DILocalVariable(name: "ip6addr", scope: !814, file: !1, line: 441, type: !102)
!820 = !DILocation(line: 437, column: 37, scope: !814)
!821 = !DILocation(line: 437, column: 62, scope: !814)
!822 = !DILocation(line: 441, column: 3, scope: !814)
!823 = !DILocation(line: 443, column: 7, scope: !824)
!824 = distinct !DILexicalBlock(scope: !814, file: !1, line: 443, column: 7)
!825 = !DILocation(line: 443, column: 7, scope: !814)
!826 = !DILocation(line: 444, column: 5, scope: !827)
!827 = distinct !DILexicalBlock(scope: !828, file: !1, line: 444, column: 5)
!828 = distinct !DILexicalBlock(scope: !824, file: !1, line: 443, column: 54)
!829 = !DILocation(line: 445, column: 5, scope: !828)
!830 = !DILocation(line: 447, column: 3, scope: !828)
!831 = !DILocation(line: 144, column: 34, scope: !427, inlinedAt: !832)
!832 = distinct !DILocation(line: 454, column: 11, scope: !814)
!833 = !DILocation(line: 144, column: 57, scope: !427, inlinedAt: !832)
!834 = !DILocation(line: 146, column: 29, scope: !427, inlinedAt: !832)
!835 = !DILocation(line: 146, column: 21, scope: !427, inlinedAt: !832)
!836 = !DILocation(line: 148, column: 3, scope: !427, inlinedAt: !832)
!837 = !DILocation(line: 148, column: 16, scope: !427, inlinedAt: !832)
!838 = !DILocation(line: 149, column: 9, scope: !441, inlinedAt: !832)
!839 = !DILocation(line: 149, column: 9, scope: !442, inlinedAt: !832)
!840 = !DILocation(line: 152, column: 20, scope: !442, inlinedAt: !832)
!841 = !DILocation(line: 150, column: 7, scope: !450, inlinedAt: !832)
!842 = !DILocation(line: 156, column: 1, scope: !427, inlinedAt: !832)
!843 = !DILocation(line: 439, column: 21, scope: !814)
!844 = !DILocation(line: 456, column: 7, scope: !814)
!845 = !DILocation(line: 458, column: 16, scope: !846)
!846 = distinct !DILexicalBlock(scope: !847, file: !1, line: 458, column: 9)
!847 = distinct !DILexicalBlock(scope: !848, file: !1, line: 456, column: 22)
!848 = distinct !DILexicalBlock(scope: !814, file: !1, line: 456, column: 7)
!849 = !DILocation(line: 458, column: 20, scope: !846)
!850 = !DILocation(line: 458, column: 9, scope: !847)
!851 = !DILocalVariable(name: "netif", arg: 1, scope: !852, file: !1, line: 194, type: !161)
!852 = distinct !DISubprogram(name: "mld6_remove_group", scope: !1, file: !1, line: 194, type: !853, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !855)
!853 = !DISubroutineType(types: !854)
!854 = !{!156, !161, !96}
!855 = !{!851, !856, !857, !858}
!856 = !DILocalVariable(name: "group", arg: 2, scope: !852, file: !1, line: 194, type: !96)
!857 = !DILocalVariable(name: "err", scope: !852, file: !1, line: 196, type: !156)
!858 = !DILocalVariable(name: "tmpGroup", scope: !859, file: !1, line: 203, type: !96)
!859 = distinct !DILexicalBlock(scope: !860, file: !1, line: 201, column: 10)
!860 = distinct !DILexicalBlock(scope: !852, file: !1, line: 199, column: 7)
!861 = !DILocation(line: 194, column: 33, scope: !852, inlinedAt: !862)
!862 = distinct !DILocation(line: 460, column: 7, scope: !863)
!863 = distinct !DILexicalBlock(scope: !846, file: !1, line: 458, column: 26)
!864 = !DILocation(line: 194, column: 58, scope: !852, inlinedAt: !862)
!865 = !DILocation(line: 196, column: 9, scope: !852, inlinedAt: !862)
!866 = !DILocation(line: 199, column: 30, scope: !860, inlinedAt: !862)
!867 = !DILocation(line: 199, column: 7, scope: !852, inlinedAt: !862)
!868 = !DILocation(line: 200, column: 5, scope: !869, inlinedAt: !862)
!869 = distinct !DILexicalBlock(scope: !860, file: !1, line: 199, column: 40)
!870 = !DILocation(line: 201, column: 3, scope: !869, inlinedAt: !862)
!871 = !DILocation(line: 203, column: 23, scope: !859, inlinedAt: !862)
!872 = !DILocation(line: 204, column: 10, scope: !873, inlinedAt: !862)
!873 = distinct !DILexicalBlock(scope: !859, file: !1, line: 204, column: 5)
!874 = !DILocation(line: 204, column: 5, scope: !873, inlinedAt: !862)
!875 = !DILocation(line: 205, column: 21, scope: !876, inlinedAt: !862)
!876 = distinct !DILexicalBlock(scope: !877, file: !1, line: 205, column: 11)
!877 = distinct !DILexicalBlock(scope: !878, file: !1, line: 204, column: 90)
!878 = distinct !DILexicalBlock(scope: !873, file: !1, line: 204, column: 5)
!879 = !DILocation(line: 205, column: 26, scope: !876, inlinedAt: !862)
!880 = !DILocation(line: 205, column: 11, scope: !877, inlinedAt: !862)
!881 = !DILocation(line: 204, column: 5, scope: !878, inlinedAt: !862)
!882 = !DILocation(line: 204, column: 54, scope: !878, inlinedAt: !862)
!883 = distinct !{!883, !884, !885}
!884 = !DILocation(line: 204, column: 5, scope: !873)
!885 = !DILocation(line: 209, column: 5, scope: !873)
!886 = !DILocation(line: 206, column: 33, scope: !887, inlinedAt: !862)
!887 = distinct !DILexicalBlock(scope: !876, file: !1, line: 205, column: 36)
!888 = !DILocation(line: 206, column: 24, scope: !887, inlinedAt: !862)
!889 = !DILocation(line: 0, scope: !863)
!890 = !DILocation(line: 216, column: 3, scope: !852, inlinedAt: !862)
!891 = !DILocation(line: 463, column: 18, scope: !892)
!892 = distinct !DILexicalBlock(scope: !863, file: !1, line: 463, column: 11)
!893 = !DILocation(line: 463, column: 11, scope: !892)
!894 = !DILocation(line: 463, column: 11, scope: !863)
!895 = !DILocation(line: 464, column: 9, scope: !896)
!896 = distinct !DILexicalBlock(scope: !892, file: !1, line: 463, column: 38)
!897 = !{!464, !278, i64 282}
!898 = !DILocation(line: 465, column: 9, scope: !896)
!899 = !DILocation(line: 466, column: 7, scope: !896)
!900 = !DILocation(line: 469, column: 18, scope: !901)
!901 = distinct !DILexicalBlock(scope: !863, file: !1, line: 469, column: 11)
!902 = !DILocation(line: 469, column: 33, scope: !901)
!903 = !DILocation(line: 469, column: 11, scope: !863)
!904 = !DILocation(line: 470, column: 9, scope: !905)
!905 = distinct !DILexicalBlock(scope: !901, file: !1, line: 469, column: 42)
!906 = !DILocation(line: 471, column: 7, scope: !905)
!907 = !DILocation(line: 474, column: 34, scope: !863)
!908 = !DILocation(line: 474, column: 7, scope: !863)
!909 = !DILocation(line: 475, column: 5, scope: !863)
!910 = !DILocation(line: 477, column: 17, scope: !911)
!911 = distinct !DILexicalBlock(scope: !846, file: !1, line: 475, column: 12)
!912 = !DILocation(line: 155, column: 3, scope: !427, inlinedAt: !832)
!913 = !DILocation(line: 485, column: 3, scope: !814)
!914 = !DILocation(line: 0, scope: !814)
!915 = !DILocation(line: 0, scope: !847)
!916 = !DILocation(line: 486, column: 1, scope: !814)
!917 = distinct !DISubprogram(name: "mld6_tmr", scope: !1, file: !1, line: 496, type: !918, isLocal: false, isDefinition: true, scopeLine: 497, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !920)
!918 = !DISubroutineType(types: !919)
!919 = !{null}
!920 = !{!921, !922}
!921 = !DILocalVariable(name: "netif", scope: !917, file: !1, line: 498, type: !161)
!922 = !DILocalVariable(name: "group", scope: !923, file: !1, line: 501, type: !96)
!923 = distinct !DILexicalBlock(scope: !924, file: !1, line: 500, column: 24)
!924 = distinct !DILexicalBlock(scope: !925, file: !1, line: 500, column: 3)
!925 = distinct !DILexicalBlock(scope: !917, file: !1, line: 500, column: 3)
!926 = !DILocation(line: 500, column: 3, scope: !925)
!927 = !DILocation(line: 498, column: 17, scope: !917)
!928 = !DILocation(line: 500, column: 3, scope: !924)
!929 = !DILocation(line: 501, column: 31, scope: !923)
!930 = !DILocation(line: 501, column: 23, scope: !923)
!931 = !DILocation(line: 503, column: 5, scope: !923)
!932 = !DILocation(line: 503, column: 18, scope: !923)
!933 = !DILocation(line: 504, column: 18, scope: !934)
!934 = distinct !DILexicalBlock(scope: !935, file: !1, line: 504, column: 11)
!935 = distinct !DILexicalBlock(scope: !923, file: !1, line: 503, column: 27)
!936 = !DILocation(line: 504, column: 24, scope: !934)
!937 = !DILocation(line: 504, column: 11, scope: !935)
!938 = !DILocation(line: 505, column: 21, scope: !939)
!939 = distinct !DILexicalBlock(scope: !934, file: !1, line: 504, column: 29)
!940 = !DILocation(line: 506, column: 26, scope: !941)
!941 = distinct !DILexicalBlock(scope: !939, file: !1, line: 506, column: 13)
!942 = !DILocation(line: 506, column: 13, scope: !939)
!943 = !DILocation(line: 508, column: 22, scope: !944)
!944 = distinct !DILexicalBlock(scope: !945, file: !1, line: 508, column: 15)
!945 = distinct !DILexicalBlock(scope: !941, file: !1, line: 506, column: 32)
!946 = !DILocation(line: 508, column: 34, scope: !944)
!947 = !DILocation(line: 508, column: 15, scope: !945)
!948 = !DILocation(line: 509, column: 13, scope: !949)
!949 = distinct !DILexicalBlock(scope: !944, file: !1, line: 508, column: 65)
!950 = !DILocation(line: 510, column: 13, scope: !949)
!951 = !DILocation(line: 511, column: 32, scope: !949)
!952 = !DILocation(line: 512, column: 11, scope: !949)
!953 = !DILocation(line: 515, column: 22, scope: !935)
!954 = distinct !{!954, !931, !955}
!955 = !DILocation(line: 516, column: 5, scope: !923)
!956 = distinct !{!956, !926, !957}
!957 = !DILocation(line: 517, column: 3, scope: !925)
!958 = !DILocation(line: 518, column: 1, scope: !917)
!959 = !DILocation(line: 65, column: 11, scope: !361)
!960 = !DILocation(line: 62, column: 16, scope: !361)
!961 = !DILocation(line: 66, column: 8, scope: !361)
!962 = !DILocation(line: 63, column: 8, scope: !361)
!963 = !DILocation(line: 67, column: 2, scope: !361)
!964 = !DILocation(line: 69, column: 2, scope: !361)
