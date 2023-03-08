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

; Function Attrs: noredzone nounwind
define dso_local signext i8 @mld6_stop(%struct.netif*) local_unnamed_addr #0 !dbg !153 {
  %2 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 15, i64 0, !dbg !264
  %3 = bitcast i8** %2 to %struct.mld_group**, !dbg !264
  %4 = load %struct.mld_group*, %struct.mld_group** %3, align 8, !dbg !264, !tbaa !265
  store i8* null, i8** %2, align 8, !dbg !270, !tbaa !265
  %5 = icmp eq %struct.mld_group* %4, null, !dbg !271
  br i1 %5, label %20, label %6, !dbg !272

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 26
  br label %8, !dbg !272

; <label>:8:                                      ; preds = %6, %18
  %9 = phi %struct.mld_group* [ %4, %6 ], [ %12, %18 ]
  %10 = bitcast %struct.mld_group* %9 to i8*, !dbg !273
  %11 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %9, i64 0, i32 0, !dbg !274
  %12 = load %struct.mld_group*, %struct.mld_group** %11, align 8, !dbg !274, !tbaa !275
  %13 = load i8 (%struct.netif*, %struct.ip6_addr*, i32)*, i8 (%struct.netif*, %struct.ip6_addr*, i32)** %7, align 8, !dbg !280, !tbaa !282
  %14 = icmp eq i8 (%struct.netif*, %struct.ip6_addr*, i32)* %13, null, !dbg !285
  br i1 %14, label %18, label %15, !dbg !286

; <label>:15:                                     ; preds = %8
  %16 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %9, i64 0, i32 1, !dbg !287
  %17 = tail call signext i8 %13(%struct.netif* nonnull %0, %struct.ip6_addr* nonnull %16, i32 0) #6, !dbg !289
  br label %18, !dbg !290

; <label>:18:                                     ; preds = %8, %15
  tail call void @memp_free(i32 14, i8* nonnull %10) #6, !dbg !291
  %19 = icmp eq %struct.mld_group* %12, null, !dbg !271
  br i1 %19, label %20, label %8, !dbg !272, !llvm.loop !292

; <label>:20:                                     ; preds = %18, %1
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
  %4 = load %struct.mld_group*, %struct.mld_group** %3, align 8, !dbg !302, !tbaa !265
  %5 = icmp eq %struct.mld_group* %4, null, !dbg !304
  br i1 %5, label %11, label %6, !dbg !305

; <label>:6:                                      ; preds = %1, %6
  %7 = phi %struct.mld_group* [ %9, %6 ], [ %4, %1 ]
  tail call fastcc void @mld6_delayed_report(%struct.mld_group* nonnull %7, i16 zeroext 500) #7, !dbg !306
  %8 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %7, i64 0, i32 0, !dbg !307
  %9 = load %struct.mld_group*, %struct.mld_group** %8, align 8, !dbg !302, !tbaa !265
  %10 = icmp eq %struct.mld_group* %9, null, !dbg !304
  br i1 %10, label %11, label %6, !dbg !305, !llvm.loop !308

; <label>:11:                                     ; preds = %6, %1
  ret void, !dbg !310
}

; Function Attrs: noredzone nounwind
define internal fastcc void @mld6_delayed_report(%struct.mld_group* nocapture, i16 zeroext) unnamed_addr #0 !dbg !311 {
  %3 = alloca i32, align 4
  %4 = udiv i16 %1, 100, !dbg !320
  %5 = icmp ult i16 %1, 100, !dbg !322
  %6 = select i1 %5, i16 1, i16 %4, !dbg !324
  %7 = bitcast i32* %3 to i8*, !dbg !325
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #8, !dbg !325
  %8 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !344, !srcloc !352
  %9 = icmp ult i64 %8, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !354
  br i1 %9, label %16, label %10, !dbg !354

; <label>:10:                                     ; preds = %2
  %11 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !355, !srcloc !352
  %12 = icmp ugt i64 %11, ptrtoint ([0 x i8]* @_end to i64), !dbg !354
  br i1 %12, label %16, label %13, !dbg !358

; <label>:13:                                     ; preds = %10
  %14 = tail call i64 @ukplat_lcpu_save_irqf() #6, !dbg !359
  %15 = tail call i32 @uk_swrand_randr_r(%struct.uk_swrand* nonnull @uk_swrand_def) #6, !dbg !368
  tail call void @ukplat_lcpu_restore_irqf(i64 %14) #6, !dbg !370
  store i32 %15, i32* %3, align 4, !dbg !372, !tbaa !373
  br label %25, !dbg !372

; <label>:16:                                     ; preds = %10, %2
  %17 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !375, !srcloc !352
  %18 = and i64 %17, -65536, !dbg !386
  %19 = or i64 %18, 4097, !dbg !386
  %20 = add nsw i64 %19, -1, !dbg !386
  %21 = inttoptr i64 %20 to i32*, !dbg !387
  %22 = load i32, i32* %21, align 4096, !dbg !388, !tbaa !373
  %23 = tail call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_swrand_randr\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i32 %22, i32 ()* nonnull @uk_swrand_randr) #8, !dbg !389, !srcloc !390
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %3, i64 %23) #8, !dbg !391, !srcloc !394
  %24 = load i32, i32* %3, align 4, !dbg !395, !tbaa !373
  br label %25

; <label>:25:                                     ; preds = %13, %16
  %26 = phi i32 [ %24, %16 ], [ %15, %13 ], !dbg !395
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #8, !dbg !396
  %27 = zext i16 %6 to i32, !dbg !397
  %28 = urem i32 %26, %27, !dbg !398
  %29 = trunc i32 %28 to i16, !dbg !399
  %30 = icmp eq i32 %28, 0, !dbg !400
  %31 = select i1 %30, i16 1, i16 %29, !dbg !402
  %32 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %0, i64 0, i32 3, !dbg !403
  %33 = load i8, i8* %32, align 1, !dbg !403, !tbaa !405
  switch i8 %33, label %43 [
    i8 2, label %34
    i8 1, label %36
  ], !dbg !406

; <label>:34:                                     ; preds = %25
  %35 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %0, i64 0, i32 4, !dbg !407
  br label %41, !dbg !406

; <label>:36:                                     ; preds = %25
  %37 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %0, i64 0, i32 4, !dbg !409
  %38 = load i16, i16* %37, align 2, !dbg !409, !tbaa !410
  %39 = add i16 %38, -1, !dbg !411
  %40 = icmp ult i16 %39, %31, !dbg !411
  br i1 %40, label %43, label %41, !dbg !411

; <label>:41:                                     ; preds = %34, %36
  %42 = phi i16* [ %35, %34 ], [ %37, %36 ], !dbg !407
  store i16 %31, i16* %42, align 2, !dbg !412, !tbaa !410
  store i8 1, i8* %32, align 1, !dbg !413, !tbaa !405
  br label %43, !dbg !414

; <label>:43:                                     ; preds = %36, %25, %41
  ret void, !dbg !415
}

; Function Attrs: noredzone nounwind readonly
define dso_local %struct.mld_group* @mld6_lookfor_group(%struct.netif* nocapture readonly, %struct.ip6_addr* nocapture readonly) local_unnamed_addr #3 !dbg !416 {
  %3 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 15, i64 0, !dbg !425
  %4 = bitcast i8** %3 to %struct.mld_group**, !dbg !425
  %5 = load %struct.mld_group*, %struct.mld_group** %4, align 8, !dbg !427, !tbaa !265
  %6 = icmp eq %struct.mld_group* %5, null, !dbg !429
  br i1 %6, label %43, label %7, !dbg !430

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 0
  %9 = load i32, i32* %8, align 4, !tbaa !373
  %10 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 1
  %11 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 2
  %12 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 3
  %13 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 1
  br label %14, !dbg !430

; <label>:14:                                     ; preds = %7, %39
  %15 = phi %struct.mld_group* [ %5, %7 ], [ %41, %39 ]
  %16 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %15, i64 0, i32 1, i32 0, i64 0, !dbg !431
  %17 = load i32, i32* %16, align 8, !dbg !431, !tbaa !373
  %18 = icmp eq i32 %17, %9, !dbg !431
  br i1 %18, label %19, label %39, !dbg !431

; <label>:19:                                     ; preds = %14
  %20 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %15, i64 0, i32 1, i32 0, i64 1, !dbg !431
  %21 = load i32, i32* %20, align 4, !dbg !431, !tbaa !373
  %22 = load i32, i32* %10, align 4, !dbg !431, !tbaa !373
  %23 = icmp eq i32 %21, %22, !dbg !431
  br i1 %23, label %24, label %39, !dbg !431

; <label>:24:                                     ; preds = %19
  %25 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %15, i64 0, i32 1, i32 0, i64 2, !dbg !431
  %26 = load i32, i32* %25, align 8, !dbg !431, !tbaa !373
  %27 = load i32, i32* %11, align 4, !dbg !431, !tbaa !373
  %28 = icmp eq i32 %26, %27, !dbg !431
  br i1 %28, label %29, label %39, !dbg !431

; <label>:29:                                     ; preds = %24
  %30 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %15, i64 0, i32 1, i32 0, i64 3, !dbg !431
  %31 = load i32, i32* %30, align 4, !dbg !431, !tbaa !373
  %32 = load i32, i32* %12, align 4, !dbg !431, !tbaa !373
  %33 = icmp eq i32 %31, %32, !dbg !431
  br i1 %33, label %34, label %39, !dbg !431

; <label>:34:                                     ; preds = %29
  %35 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %15, i64 0, i32 1, i32 1, !dbg !431
  %36 = load i8, i8* %35, align 8, !dbg !431, !tbaa !433
  %37 = load i8, i8* %13, align 4, !dbg !431, !tbaa !434
  %38 = icmp eq i8 %36, %37, !dbg !431
  br i1 %38, label %43, label %39, !dbg !435

; <label>:39:                                     ; preds = %34, %29, %24, %19, %14
  %40 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %15, i64 0, i32 0, !dbg !436
  %41 = load %struct.mld_group*, %struct.mld_group** %40, align 8, !dbg !427, !tbaa !265
  %42 = icmp eq %struct.mld_group* %41, null, !dbg !429
  br i1 %42, label %43, label %14, !dbg !430, !llvm.loop !437

; <label>:43:                                     ; preds = %34, %39, %2
  %44 = phi %struct.mld_group* [ null, %2 ], [ null, %39 ], [ %15, %34 ], !dbg !427
  ret %struct.mld_group* %44, !dbg !439
}

; Function Attrs: noredzone nounwind
define dso_local void @mld6_input(%struct.pbuf*, %struct.netif* nocapture readonly) local_unnamed_addr #0 !dbg !440 {
  %3 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 1), align 2, !dbg !450, !tbaa !451
  %4 = add i16 %3, 1, !dbg !450
  store i16 %4, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 1), align 2, !dbg !450, !tbaa !451
  %5 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 3, !dbg !457
  %6 = load i16, i16* %5, align 2, !dbg !457, !tbaa !459
  %7 = icmp ult i16 %6, 24, !dbg !461
  br i1 %7, label %8, label %14, !dbg !462

; <label>:8:                                      ; preds = %2
  %9 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #6, !dbg !463
  %10 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 4), align 2, !dbg !465, !tbaa !466
  %11 = add i16 %10, 1, !dbg !465
  store i16 %11, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 4), align 2, !dbg !465, !tbaa !466
  %12 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 2), align 2, !dbg !467, !tbaa !468
  %13 = add i16 %12, 1, !dbg !467
  store i16 %13, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 2), align 2, !dbg !467, !tbaa !468
  br label %171, !dbg !469

; <label>:14:                                     ; preds = %2
  %15 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 1, !dbg !470
  %16 = bitcast i8** %15 to %struct.mld_header**, !dbg !470
  %17 = load %struct.mld_header*, %struct.mld_header** %16, align 8, !dbg !470, !tbaa !471
  %18 = getelementptr inbounds %struct.mld_header, %struct.mld_header* %17, i64 0, i32 0, !dbg !473
  %19 = load i8, i8* %18, align 1, !dbg !473, !tbaa !474
  switch i8 %19, label %164 [
    i8 -126, label %20
    i8 -125, label %119
    i8 -124, label %169
  ], !dbg !477

; <label>:20:                                     ; preds = %14
  %21 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !478, !tbaa !481
  %22 = icmp eq i32 %21, 767, !dbg !478
  %23 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 1), align 4, !dbg !478
  %24 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 2), align 4, !dbg !478
  %25 = or i32 %24, %23, !dbg !478
  %26 = icmp eq i32 %25, 0, !dbg !478
  %27 = and i1 %22, %26, !dbg !478
  %28 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 3), align 4, !dbg !478
  %29 = icmp eq i32 %28, 16777216, !dbg !478
  %30 = and i1 %29, %27, !dbg !478
  br i1 %30, label %31, label %82, !dbg !478

; <label>:31:                                     ; preds = %20
  %32 = getelementptr inbounds %struct.mld_header, %struct.mld_header* %17, i64 0, i32 5, i32 0, i64 0, !dbg !482
  %33 = load i32, i32* %32, align 1, !dbg !482, !tbaa !373
  %34 = icmp eq i32 %33, 0, !dbg !482
  br i1 %34, label %35, label %82, !dbg !482

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds %struct.mld_header, %struct.mld_header* %17, i64 0, i32 5, i32 0, i64 1, !dbg !482
  %37 = load i32, i32* %36, align 1, !dbg !482, !tbaa !373
  %38 = icmp eq i32 %37, 0, !dbg !482
  br i1 %38, label %39, label %82, !dbg !482

; <label>:39:                                     ; preds = %35
  %40 = getelementptr inbounds %struct.mld_header, %struct.mld_header* %17, i64 0, i32 5, i32 0, i64 2, !dbg !482
  %41 = load i32, i32* %40, align 1, !dbg !482, !tbaa !373
  %42 = icmp eq i32 %41, 0, !dbg !482
  br i1 %42, label %43, label %82, !dbg !482

; <label>:43:                                     ; preds = %39
  %44 = getelementptr inbounds %struct.mld_header, %struct.mld_header* %17, i64 0, i32 5, i32 0, i64 3, !dbg !482
  %45 = load i32, i32* %44, align 1, !dbg !482, !tbaa !373
  %46 = icmp eq i32 %45, 0, !dbg !482
  br i1 %46, label %47, label %82, !dbg !483

; <label>:47:                                     ; preds = %43
  %48 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 9), align 2, !dbg !484, !tbaa !486
  %49 = add i16 %48, 1, !dbg !484
  store i16 %49, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 9), align 2, !dbg !484, !tbaa !486
  %50 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 15, i64 0, !dbg !487
  %51 = bitcast i8** %50 to %struct.mld_group**, !dbg !487
  %52 = load %struct.mld_group*, %struct.mld_group** %51, align 8, !dbg !489, !tbaa !265
  %53 = icmp eq %struct.mld_group* %52, null, !dbg !491
  br i1 %53, label %169, label %54, !dbg !492

; <label>:54:                                     ; preds = %47
  %55 = getelementptr inbounds %struct.mld_header, %struct.mld_header* %17, i64 0, i32 3
  br label %56, !dbg !492

; <label>:56:                                     ; preds = %54, %78
  %57 = phi %struct.mld_group* [ %52, %54 ], [ %80, %78 ]
  %58 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %57, i64 0, i32 1, i32 0, i64 0, !dbg !493
  %59 = load i32, i32* %58, align 8, !dbg !493, !tbaa !373
  %60 = and i32 %59, 36863, !dbg !493
  %61 = icmp eq i32 %60, 511, !dbg !493
  br i1 %61, label %78, label %62, !dbg !495

; <label>:62:                                     ; preds = %56
  %63 = icmp eq i32 %59, 767, !dbg !496
  br i1 %63, label %64, label %76, !dbg !496

; <label>:64:                                     ; preds = %62
  %65 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %57, i64 0, i32 1, i32 0, i64 1, !dbg !496
  %66 = load i32, i32* %65, align 4, !dbg !496, !tbaa !373
  %67 = icmp eq i32 %66, 0, !dbg !496
  br i1 %67, label %68, label %76, !dbg !496

; <label>:68:                                     ; preds = %64
  %69 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %57, i64 0, i32 1, i32 0, i64 2, !dbg !496
  %70 = load i32, i32* %69, align 8, !dbg !496, !tbaa !373
  %71 = icmp eq i32 %70, 0, !dbg !496
  br i1 %71, label %72, label %76, !dbg !496

; <label>:72:                                     ; preds = %68
  %73 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %57, i64 0, i32 1, i32 0, i64 3, !dbg !496
  %74 = load i32, i32* %73, align 4, !dbg !496, !tbaa !373
  %75 = icmp eq i32 %74, 16777216, !dbg !496
  br i1 %75, label %78, label %76, !dbg !497

; <label>:76:                                     ; preds = %72, %68, %64, %62
  %77 = load i16, i16* %55, align 1, !dbg !498, !tbaa !500
  tail call fastcc void @mld6_delayed_report(%struct.mld_group* nonnull %57, i16 zeroext %77) #7, !dbg !501
  br label %78, !dbg !502

; <label>:78:                                     ; preds = %76, %72, %56
  %79 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %57, i64 0, i32 0, !dbg !503
  %80 = load %struct.mld_group*, %struct.mld_group** %79, align 8, !dbg !489, !tbaa !265
  %81 = icmp eq %struct.mld_group* %80, null, !dbg !491
  br i1 %81, label %169, label %56, !dbg !492, !llvm.loop !504

; <label>:82:                                     ; preds = %43, %39, %35, %31, %20
  %83 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 8), align 2, !dbg !506, !tbaa !508
  %84 = add i16 %83, 1, !dbg !506
  store i16 %84, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 8), align 2, !dbg !506, !tbaa !508
  %85 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 15, i64 0, !dbg !511
  %86 = bitcast i8** %85 to %struct.mld_group**, !dbg !511
  %87 = load %struct.mld_group*, %struct.mld_group** %86, align 8, !dbg !513, !tbaa !265
  %88 = icmp eq %struct.mld_group* %87, null, !dbg !514
  br i1 %88, label %169, label %89, !dbg !515

; <label>:89:                                     ; preds = %82
  %90 = load i8, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 1), align 4
  br label %91, !dbg !516

; <label>:91:                                     ; preds = %89, %112
  %92 = phi %struct.mld_group* [ %114, %112 ], [ %87, %89 ]
  %93 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %92, i64 0, i32 1, i32 0, i64 0, !dbg !516
  %94 = load i32, i32* %93, align 8, !dbg !516, !tbaa !373
  %95 = icmp eq i32 %94, %21, !dbg !516
  br i1 %95, label %96, label %112, !dbg !516

; <label>:96:                                     ; preds = %91
  %97 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %92, i64 0, i32 1, i32 0, i64 1, !dbg !516
  %98 = load i32, i32* %97, align 4, !dbg !516, !tbaa !373
  %99 = icmp eq i32 %98, %23, !dbg !516
  br i1 %99, label %100, label %112, !dbg !516

; <label>:100:                                    ; preds = %96
  %101 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %92, i64 0, i32 1, i32 0, i64 2, !dbg !516
  %102 = load i32, i32* %101, align 8, !dbg !516, !tbaa !373
  %103 = icmp eq i32 %102, %24, !dbg !516
  br i1 %103, label %104, label %112, !dbg !516

; <label>:104:                                    ; preds = %100
  %105 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %92, i64 0, i32 1, i32 0, i64 3, !dbg !516
  %106 = load i32, i32* %105, align 4, !dbg !516, !tbaa !373
  %107 = icmp eq i32 %106, %28, !dbg !516
  br i1 %107, label %108, label %112, !dbg !516

; <label>:108:                                    ; preds = %104
  %109 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %92, i64 0, i32 1, i32 1, !dbg !516
  %110 = load i8, i8* %109, align 8, !dbg !516, !tbaa !433
  %111 = icmp eq i8 %110, %90, !dbg !516
  br i1 %111, label %116, label %112, !dbg !517

; <label>:112:                                    ; preds = %108, %104, %100, %96, %91
  %113 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %92, i64 0, i32 0, !dbg !518
  %114 = load %struct.mld_group*, %struct.mld_group** %113, align 8, !dbg !513, !tbaa !265
  %115 = icmp eq %struct.mld_group* %114, null, !dbg !514
  br i1 %115, label %169, label %91, !dbg !515, !llvm.loop !437

; <label>:116:                                    ; preds = %108
  %117 = getelementptr inbounds %struct.mld_header, %struct.mld_header* %17, i64 0, i32 3, !dbg !519
  %118 = load i16, i16* %117, align 1, !dbg !519, !tbaa !500
  tail call fastcc void @mld6_delayed_report(%struct.mld_group* nonnull %92, i16 zeroext %118) #7, !dbg !522
  br label %169, !dbg !523

; <label>:119:                                    ; preds = %14
  %120 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 10), align 2, !dbg !524, !tbaa !525
  %121 = add i16 %120, 1, !dbg !524
  store i16 %121, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 10), align 2, !dbg !524, !tbaa !525
  %122 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 15, i64 0, !dbg !528
  %123 = bitcast i8** %122 to %struct.mld_group**, !dbg !528
  %124 = load %struct.mld_group*, %struct.mld_group** %123, align 8, !dbg !530, !tbaa !265
  %125 = icmp eq %struct.mld_group* %124, null, !dbg !531
  br i1 %125, label %169, label %126, !dbg !532

; <label>:126:                                    ; preds = %119
  %127 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 0), align 4, !tbaa !373
  %128 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 1), align 4
  %129 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 2), align 4
  %130 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 3), align 4
  %131 = load i8, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 1), align 4
  br label %132, !dbg !532

; <label>:132:                                    ; preds = %153, %126
  %133 = phi %struct.mld_group* [ %124, %126 ], [ %155, %153 ]
  %134 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %133, i64 0, i32 1, i32 0, i64 0, !dbg !533
  %135 = load i32, i32* %134, align 8, !dbg !533, !tbaa !373
  %136 = icmp eq i32 %135, %127, !dbg !533
  br i1 %136, label %137, label %153, !dbg !533

; <label>:137:                                    ; preds = %132
  %138 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %133, i64 0, i32 1, i32 0, i64 1, !dbg !533
  %139 = load i32, i32* %138, align 4, !dbg !533, !tbaa !373
  %140 = icmp eq i32 %139, %128, !dbg !533
  br i1 %140, label %141, label %153, !dbg !533

; <label>:141:                                    ; preds = %137
  %142 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %133, i64 0, i32 1, i32 0, i64 2, !dbg !533
  %143 = load i32, i32* %142, align 8, !dbg !533, !tbaa !373
  %144 = icmp eq i32 %143, %129, !dbg !533
  br i1 %144, label %145, label %153, !dbg !533

; <label>:145:                                    ; preds = %141
  %146 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %133, i64 0, i32 1, i32 0, i64 3, !dbg !533
  %147 = load i32, i32* %146, align 4, !dbg !533, !tbaa !373
  %148 = icmp eq i32 %147, %130, !dbg !533
  br i1 %148, label %149, label %153, !dbg !533

; <label>:149:                                    ; preds = %145
  %150 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %133, i64 0, i32 1, i32 1, !dbg !533
  %151 = load i8, i8* %150, align 8, !dbg !533, !tbaa !433
  %152 = icmp eq i8 %151, %131, !dbg !533
  br i1 %152, label %157, label %153, !dbg !534

; <label>:153:                                    ; preds = %149, %145, %141, %137, %132
  %154 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %133, i64 0, i32 0, !dbg !535
  %155 = load %struct.mld_group*, %struct.mld_group** %154, align 8, !dbg !530, !tbaa !265
  %156 = icmp eq %struct.mld_group* %155, null, !dbg !531
  br i1 %156, label %169, label %132, !dbg !532, !llvm.loop !437

; <label>:157:                                    ; preds = %149
  %158 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %133, i64 0, i32 3, !dbg !536
  %159 = load i8, i8* %158, align 1, !dbg !536, !tbaa !405
  %160 = icmp eq i8 %159, 1, !dbg !540
  br i1 %160, label %161, label %169, !dbg !541

; <label>:161:                                    ; preds = %157
  %162 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %133, i64 0, i32 4, !dbg !542
  store i16 0, i16* %162, align 2, !dbg !544, !tbaa !410
  store i8 2, i8* %158, align 1, !dbg !545, !tbaa !405
  %163 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %133, i64 0, i32 2, !dbg !546
  store i8 0, i8* %163, align 4, !dbg !547, !tbaa !548
  br label %169, !dbg !549

; <label>:164:                                    ; preds = %14
  %165 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 6), align 2, !dbg !550, !tbaa !551
  %166 = add i16 %165, 1, !dbg !550
  store i16 %166, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 6), align 2, !dbg !550, !tbaa !551
  %167 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 2), align 2, !dbg !552, !tbaa !468
  %168 = add i16 %167, 1, !dbg !552
  store i16 %168, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 2), align 2, !dbg !552, !tbaa !468
  br label %169, !dbg !553

; <label>:169:                                    ; preds = %153, %112, %78, %47, %119, %82, %161, %157, %116, %164, %14
  %170 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %0) #6, !dbg !554
  br label %171, !dbg !555

; <label>:171:                                    ; preds = %169, %8
  ret void, !dbg !555
}

; Function Attrs: noredzone
declare dso_local zeroext i8 @pbuf_free(%struct.pbuf*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local signext i8 @mld6_joingroup(%struct.ip6_addr*, %struct.ip6_addr*) local_unnamed_addr #0 !dbg !556 {
  %3 = load %struct.netif*, %struct.netif** @netif_list, align 8, !dbg !568, !tbaa !265
  %4 = icmp eq %struct.netif* %3, null, !dbg !570
  br i1 %4, label %37, label %5, !dbg !568

; <label>:5:                                      ; preds = %2
  %6 = icmp eq %struct.ip6_addr* %0, null
  %7 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 0
  %8 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 1
  %9 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 2
  %10 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 3
  br label %11, !dbg !568

; <label>:11:                                     ; preds = %5, %32
  %12 = phi %struct.netif* [ %3, %5 ], [ %35, %32 ]
  %13 = phi i8 [ -6, %5 ], [ %33, %32 ]
  br i1 %6, label %29, label %14, !dbg !572

; <label>:14:                                     ; preds = %11
  %15 = load i32, i32* %7, align 4, !dbg !572, !tbaa !373
  %16 = icmp eq i32 %15, 0, !dbg !572
  br i1 %16, label %17, label %26, !dbg !572

; <label>:17:                                     ; preds = %14
  %18 = load i32, i32* %8, align 4, !dbg !572, !tbaa !373
  %19 = icmp eq i32 %18, 0, !dbg !572
  br i1 %19, label %20, label %26, !dbg !572

; <label>:20:                                     ; preds = %17
  %21 = load i32, i32* %9, align 4, !dbg !572, !tbaa !373
  %22 = icmp eq i32 %21, 0, !dbg !572
  br i1 %22, label %23, label %26, !dbg !572

; <label>:23:                                     ; preds = %20
  %24 = load i32, i32* %10, align 4, !dbg !572, !tbaa !373
  %25 = icmp eq i32 %24, 0, !dbg !572
  br i1 %25, label %29, label %26, !dbg !575

; <label>:26:                                     ; preds = %23, %20, %17, %14
  %27 = tail call signext i8 @netif_get_ip6_addr_match(%struct.netif* nonnull %12, %struct.ip6_addr* nonnull %0) #6, !dbg !576
  %28 = icmp sgt i8 %27, -1, !dbg !577
  br i1 %28, label %29, label %32, !dbg !578

; <label>:29:                                     ; preds = %26, %23, %11
  %30 = tail call signext i8 @mld6_joingroup_netif(%struct.netif* nonnull %12, %struct.ip6_addr* %1) #7, !dbg !579
  %31 = icmp eq i8 %30, 0, !dbg !581
  br i1 %31, label %32, label %37, !dbg !583

; <label>:32:                                     ; preds = %29, %26
  %33 = phi i8 [ 0, %29 ], [ %13, %26 ], !dbg !584
  %34 = getelementptr inbounds %struct.netif, %struct.netif* %12, i64 0, i32 0, !dbg !570
  %35 = load %struct.netif*, %struct.netif** %34, align 8, !dbg !568, !tbaa !265
  %36 = icmp eq %struct.netif* %35, null, !dbg !570
  br i1 %36, label %37, label %11, !dbg !568, !llvm.loop !585

; <label>:37:                                     ; preds = %29, %32, %2
  %38 = phi i8 [ -6, %2 ], [ %33, %32 ], [ %30, %29 ], !dbg !584
  ret i8 %38, !dbg !587
}

; Function Attrs: noredzone
declare dso_local signext i8 @netif_get_ip6_addr_match(%struct.netif*, %struct.ip6_addr*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local signext i8 @mld6_joingroup_netif(%struct.netif*, %struct.ip6_addr*) local_unnamed_addr #0 !dbg !588 {
  %3 = alloca %struct.ip6_addr, align 4
  %4 = bitcast %struct.ip6_addr* %3 to i8*, !dbg !598
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %4) #8, !dbg !598
  %5 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 1, !dbg !599
  %6 = load i8, i8* %5, align 4, !dbg !599, !tbaa !434
  %7 = icmp eq i8 %6, 0, !dbg !599
  br i1 %7, label %8, label %37, !dbg !599

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 0, !dbg !599
  %10 = load i32, i32* %9, align 4, !dbg !599, !tbaa !373
  %11 = and i32 %10, 49407, !dbg !599
  %12 = icmp eq i32 %11, 33022, !dbg !599
  br i1 %12, label %16, label %13, !dbg !599

; <label>:13:                                     ; preds = %8
  %14 = trunc i32 %10 to i16, !dbg !599
  %15 = and i16 %14, -28673, !dbg !599
  switch i16 %15, label %37 [
    i16 511, label %16
    i16 767, label %16
  ], !dbg !599

; <label>:16:                                     ; preds = %13, %13, %8
  %17 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %3, i64 0, i32 0, i64 0, !dbg !601
  store i32 %10, i32* %17, align 4, !dbg !601, !tbaa !373
  %18 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 1, !dbg !601
  %19 = load i32, i32* %18, align 4, !dbg !601, !tbaa !373
  %20 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %3, i64 0, i32 0, i64 1, !dbg !601
  store i32 %19, i32* %20, align 4, !dbg !601, !tbaa !373
  %21 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 2, !dbg !601
  %22 = load i32, i32* %21, align 4, !dbg !601, !tbaa !373
  %23 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %3, i64 0, i32 0, i64 2, !dbg !601
  store i32 %22, i32* %23, align 4, !dbg !601, !tbaa !373
  %24 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 3, !dbg !601
  %25 = load i32, i32* %24, align 4, !dbg !601, !tbaa !373
  %26 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %3, i64 0, i32 0, i64 3, !dbg !601
  store i32 %25, i32* %26, align 4, !dbg !601, !tbaa !373
  %27 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %3, i64 0, i32 1, !dbg !601
  store i8 0, i8* %27, align 4, !dbg !601, !tbaa !434
  br i1 %12, label %31, label %28, !dbg !604

; <label>:28:                                     ; preds = %16
  %29 = trunc i32 %10 to i16, !dbg !604
  %30 = and i16 %29, -28673, !dbg !604
  switch i16 %30, label %35 [
    i16 511, label %31
    i16 767, label %31
  ], !dbg !604

; <label>:31:                                     ; preds = %28, %28, %16
  %32 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 23, !dbg !604
  %33 = load i8, i8* %32, align 8, !dbg !604, !tbaa !605
  %34 = add i8 %33, 1, !dbg !604
  br label %35, !dbg !604

; <label>:35:                                     ; preds = %28, %31
  %36 = phi i8 [ %34, %31 ], [ 0, %28 ]
  store i8 %36, i8* %27, align 4, !dbg !604, !tbaa !434
  br label %37, !dbg !606

; <label>:37:                                     ; preds = %13, %2, %35
  %38 = phi i8 [ %6, %2 ], [ %36, %35 ], [ 0, %13 ]
  %39 = phi %struct.ip6_addr* [ %1, %2 ], [ %3, %35 ], [ %1, %13 ]
  %40 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 15, i64 0, !dbg !610
  %41 = bitcast i8** %40 to %struct.mld_group**, !dbg !610
  %42 = load %struct.mld_group*, %struct.mld_group** %41, align 8, !dbg !612, !tbaa !265
  %43 = icmp eq %struct.mld_group* %42, null, !dbg !613
  br i1 %43, label %78, label %44, !dbg !614

; <label>:44:                                     ; preds = %37
  %45 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %39, i64 0, i32 0, i64 0
  %46 = load i32, i32* %45, align 4, !tbaa !373
  %47 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %39, i64 0, i32 0, i64 1
  %48 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %39, i64 0, i32 0, i64 2
  %49 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %39, i64 0, i32 0, i64 3
  br label %50, !dbg !614

; <label>:50:                                     ; preds = %74, %44
  %51 = phi %struct.mld_group* [ %42, %44 ], [ %76, %74 ]
  %52 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %51, i64 0, i32 1, i32 0, i64 0, !dbg !615
  %53 = load i32, i32* %52, align 8, !dbg !615, !tbaa !373
  %54 = icmp eq i32 %53, %46, !dbg !615
  br i1 %54, label %55, label %74, !dbg !615

; <label>:55:                                     ; preds = %50
  %56 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %51, i64 0, i32 1, i32 0, i64 1, !dbg !615
  %57 = load i32, i32* %56, align 4, !dbg !615, !tbaa !373
  %58 = load i32, i32* %47, align 4, !dbg !615, !tbaa !373
  %59 = icmp eq i32 %57, %58, !dbg !615
  br i1 %59, label %60, label %74, !dbg !615

; <label>:60:                                     ; preds = %55
  %61 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %51, i64 0, i32 1, i32 0, i64 2, !dbg !615
  %62 = load i32, i32* %61, align 8, !dbg !615, !tbaa !373
  %63 = load i32, i32* %48, align 4, !dbg !615, !tbaa !373
  %64 = icmp eq i32 %62, %63, !dbg !615
  br i1 %64, label %65, label %74, !dbg !615

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %51, i64 0, i32 1, i32 0, i64 3, !dbg !615
  %67 = load i32, i32* %66, align 4, !dbg !615, !tbaa !373
  %68 = load i32, i32* %49, align 4, !dbg !615, !tbaa !373
  %69 = icmp eq i32 %67, %68, !dbg !615
  br i1 %69, label %70, label %74, !dbg !615

; <label>:70:                                     ; preds = %65
  %71 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %51, i64 0, i32 1, i32 1, !dbg !615
  %72 = load i8, i8* %71, align 8, !dbg !615, !tbaa !433
  %73 = icmp eq i8 %72, %38, !dbg !615
  br i1 %73, label %125, label %74, !dbg !616

; <label>:74:                                     ; preds = %70, %65, %60, %55, %50
  %75 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %51, i64 0, i32 0, !dbg !617
  %76 = load %struct.mld_group*, %struct.mld_group** %75, align 8, !dbg !612, !tbaa !265
  %77 = icmp eq %struct.mld_group* %76, null, !dbg !613
  br i1 %77, label %78, label %50, !dbg !614, !llvm.loop !437

; <label>:78:                                     ; preds = %74, %37
  %79 = tail call i8* @memp_malloc(i32 14) #6, !dbg !628
  %80 = bitcast i8* %79 to %struct.mld_group*, !dbg !629
  %81 = icmp eq i8* %79, null, !dbg !631
  br i1 %81, label %130, label %82, !dbg !633

; <label>:82:                                     ; preds = %78
  %83 = icmp eq %struct.ip6_addr* %39, null, !dbg !634
  br i1 %83, label %84, label %87, !dbg !634

; <label>:84:                                     ; preds = %82
  %85 = getelementptr inbounds i8, i8* %79, i64 8, !dbg !634
  %86 = bitcast i8* %85 to <4 x i32>*, !dbg !634
  store <4 x i32> zeroinitializer, <4 x i32>* %86, align 8, !dbg !634, !tbaa !373
  br label %106, !dbg !634

; <label>:87:                                     ; preds = %82
  %88 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %39, i64 0, i32 0, i64 0, !dbg !634
  %89 = load i32, i32* %88, align 4, !dbg !634, !tbaa !373
  %90 = getelementptr inbounds i8, i8* %79, i64 8, !dbg !634
  %91 = bitcast i8* %90 to i32*, !dbg !634
  store i32 %89, i32* %91, align 8, !dbg !634, !tbaa !373
  %92 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %39, i64 0, i32 0, i64 1, !dbg !634
  %93 = load i32, i32* %92, align 4, !dbg !634, !tbaa !373
  %94 = getelementptr inbounds i8, i8* %79, i64 12, !dbg !634
  %95 = bitcast i8* %94 to i32*, !dbg !634
  store i32 %93, i32* %95, align 4, !dbg !634, !tbaa !373
  %96 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %39, i64 0, i32 0, i64 2, !dbg !634
  %97 = load i32, i32* %96, align 4, !dbg !634, !tbaa !373
  %98 = getelementptr inbounds i8, i8* %79, i64 16, !dbg !634
  %99 = bitcast i8* %98 to i32*, !dbg !634
  store i32 %97, i32* %99, align 8, !dbg !634, !tbaa !373
  %100 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %39, i64 0, i32 0, i64 3, !dbg !634
  %101 = load i32, i32* %100, align 4, !dbg !634, !tbaa !373
  %102 = getelementptr inbounds i8, i8* %79, i64 20, !dbg !634
  %103 = bitcast i8* %102 to i32*, !dbg !634
  store i32 %101, i32* %103, align 4, !dbg !634, !tbaa !373
  %104 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %39, i64 0, i32 1, !dbg !634
  %105 = load i8, i8* %104, align 4, !dbg !634, !tbaa !434
  br label %106, !dbg !634

; <label>:106:                                    ; preds = %84, %87
  %107 = phi i8 [ %105, %87 ], [ 0, %84 ]
  %108 = getelementptr inbounds i8, i8* %79, i64 24, !dbg !634
  store i8 %107, i8* %108, align 8, !dbg !634, !tbaa !433
  %109 = getelementptr inbounds i8, i8* %79, i64 30, !dbg !637
  %110 = bitcast i8* %109 to i16*, !dbg !637
  store i16 0, i16* %110, align 2, !dbg !638, !tbaa !410
  %111 = getelementptr inbounds i8, i8* %79, i64 29, !dbg !639
  store i8 2, i8* %111, align 1, !dbg !640, !tbaa !405
  %112 = getelementptr inbounds i8, i8* %79, i64 28, !dbg !641
  store i8 0, i8* %112, align 4, !dbg !642, !tbaa !548
  %113 = getelementptr inbounds i8, i8* %79, i64 32, !dbg !643
  store i8 0, i8* %113, align 8, !dbg !644, !tbaa !645
  %114 = bitcast i8** %40 to i64*, !dbg !646
  %115 = load i64, i64* %114, align 8, !dbg !646, !tbaa !265
  %116 = bitcast i8* %79 to i64*, !dbg !647
  store i64 %115, i64* %116, align 8, !dbg !647, !tbaa !275
  store i8* %79, i8** %40, align 8, !dbg !648, !tbaa !265
  %117 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 26, !dbg !650
  %118 = load i8 (%struct.netif*, %struct.ip6_addr*, i32)*, i8 (%struct.netif*, %struct.ip6_addr*, i32)** %117, align 8, !dbg !650, !tbaa !282
  %119 = icmp eq i8 (%struct.netif*, %struct.ip6_addr*, i32)* %118, null, !dbg !652
  br i1 %119, label %122, label %120, !dbg !653

; <label>:120:                                    ; preds = %106
  %121 = call signext i8 %118(%struct.netif* nonnull %0, %struct.ip6_addr* %39, i32 1) #6, !dbg !654
  br label %122, !dbg !656

; <label>:122:                                    ; preds = %106, %120
  %123 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 13), align 2, !dbg !657, !tbaa !658
  %124 = add i16 %123, 1, !dbg !657
  store i16 %124, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 13), align 2, !dbg !657, !tbaa !658
  call fastcc void @mld6_send(%struct.netif* nonnull %0, %struct.mld_group* nonnull %80, i8 zeroext -125) #7, !dbg !659
  call fastcc void @mld6_delayed_report(%struct.mld_group* nonnull %80, i16 zeroext 500) #7, !dbg !660
  br label %125, !dbg !661

; <label>:125:                                    ; preds = %70, %122
  %126 = phi %struct.mld_group* [ %80, %122 ], [ %51, %70 ], !dbg !662
  %127 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %126, i64 0, i32 5, !dbg !663
  %128 = load i8, i8* %127, align 8, !dbg !664, !tbaa !645
  %129 = add i8 %128, 1, !dbg !664
  store i8 %129, i8* %127, align 8, !dbg !664, !tbaa !645
  br label %130, !dbg !665

; <label>:130:                                    ; preds = %78, %125
  %131 = phi i8 [ 0, %125 ], [ -1, %78 ], !dbg !662
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %4) #8, !dbg !666
  ret i8 %131, !dbg !666
}

; Function Attrs: noredzone nounwind
define internal fastcc void @mld6_send(%struct.netif*, %struct.mld_group*, i8 zeroext) unnamed_addr #0 !dbg !667 {
  %4 = tail call %struct.pbuf* @pbuf_alloc(i32 54, i16 zeroext 32, i32 640) #6, !dbg !680
  %5 = icmp eq %struct.pbuf* %4, null, !dbg !682
  br i1 %5, label %6, label %9, !dbg !684

; <label>:6:                                      ; preds = %3
  %7 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 5), align 2, !dbg !685, !tbaa !687
  %8 = add i16 %7, 1, !dbg !685
  store i16 %8, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 5), align 2, !dbg !685, !tbaa !687
  br label %82, !dbg !688

; <label>:9:                                      ; preds = %3
  %10 = tail call zeroext i8 @pbuf_remove_header(%struct.pbuf* nonnull %4, i64 8) #6, !dbg !689
  %11 = icmp eq i8 %10, 0, !dbg !689
  br i1 %11, label %16, label %12, !dbg !691

; <label>:12:                                     ; preds = %9
  %13 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %4) #6, !dbg !692
  %14 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 4), align 2, !dbg !694, !tbaa !466
  %15 = add i16 %14, 1, !dbg !694
  store i16 %15, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 4), align 2, !dbg !694, !tbaa !466
  br label %82, !dbg !695

; <label>:16:                                     ; preds = %9
  %17 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 0, !dbg !696
  %18 = load i8, i8* %17, align 8, !dbg !696, !tbaa !481
  %19 = and i8 %18, 16, !dbg !696
  %20 = icmp eq i8 %19, 0, !dbg !696
  %21 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, !dbg !698
  %22 = select i1 %20, %struct.ip6_addr* getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip6_addr_any, i64 0, i32 0, i32 0), %struct.ip6_addr* %21, !dbg !701
  %23 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %4, i64 0, i32 1, !dbg !702
  %24 = bitcast i8** %23 to %struct.mld_header**, !dbg !702
  %25 = load %struct.mld_header*, %struct.mld_header** %24, align 8, !dbg !702, !tbaa !471
  %26 = getelementptr inbounds %struct.mld_header, %struct.mld_header* %25, i64 0, i32 0, !dbg !704
  store i8 %2, i8* %26, align 1, !dbg !705, !tbaa !474
  %27 = getelementptr inbounds %struct.mld_header, %struct.mld_header* %25, i64 0, i32 1, !dbg !706
  store i8 0, i8* %27, align 1, !dbg !707, !tbaa !708
  %28 = getelementptr inbounds %struct.mld_header, %struct.mld_header* %25, i64 0, i32 2, !dbg !709
  store i16 0, i16* %28, align 1, !dbg !710, !tbaa !711
  %29 = getelementptr inbounds %struct.mld_header, %struct.mld_header* %25, i64 0, i32 3, !dbg !712
  store i16 0, i16* %29, align 1, !dbg !713, !tbaa !500
  %30 = getelementptr inbounds %struct.mld_header, %struct.mld_header* %25, i64 0, i32 4, !dbg !714
  store i16 0, i16* %30, align 1, !dbg !715, !tbaa !716
  %31 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %1, i64 0, i32 1, !dbg !717
  %32 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %31, i64 0, i32 0, i64 0, !dbg !717
  %33 = load i32, i32* %32, align 8, !dbg !717, !tbaa !373
  %34 = getelementptr inbounds %struct.mld_header, %struct.mld_header* %25, i64 0, i32 5, i32 0, i64 0, !dbg !717
  store i32 %33, i32* %34, align 1, !dbg !717, !tbaa !373
  %35 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %1, i64 0, i32 1, i32 0, i64 1, !dbg !717
  %36 = load i32, i32* %35, align 4, !dbg !717, !tbaa !373
  %37 = getelementptr inbounds %struct.mld_header, %struct.mld_header* %25, i64 0, i32 5, i32 0, i64 1, !dbg !717
  store i32 %36, i32* %37, align 1, !dbg !717, !tbaa !373
  %38 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %1, i64 0, i32 1, i32 0, i64 2, !dbg !717
  %39 = load i32, i32* %38, align 8, !dbg !717, !tbaa !373
  %40 = getelementptr inbounds %struct.mld_header, %struct.mld_header* %25, i64 0, i32 5, i32 0, i64 2, !dbg !717
  store i32 %39, i32* %40, align 1, !dbg !717, !tbaa !373
  %41 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %1, i64 0, i32 1, i32 0, i64 3, !dbg !717
  %42 = load i32, i32* %41, align 4, !dbg !717, !tbaa !373
  %43 = getelementptr inbounds %struct.mld_header, %struct.mld_header* %25, i64 0, i32 5, i32 0, i64 3, !dbg !717
  store i32 %42, i32* %43, align 1, !dbg !717, !tbaa !373
  %44 = icmp eq %struct.netif* %0, null, !dbg !719
  br i1 %44, label %50, label %45, !dbg !719

; <label>:45:                                     ; preds = %16
  %46 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 16, !dbg !719
  %47 = load i16, i16* %46, align 8, !dbg !719, !tbaa !721
  %48 = and i16 %47, 16, !dbg !719
  %49 = icmp eq i16 %48, 0, !dbg !719
  br i1 %49, label %54, label %50, !dbg !722

; <label>:50:                                     ; preds = %45, %16
  %51 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %4, i64 0, i32 3, !dbg !723
  %52 = load i16, i16* %51, align 2, !dbg !723, !tbaa !459
  %53 = tail call zeroext i16 @ip6_chksum_pseudo(%struct.pbuf* nonnull %4, i8 zeroext 58, i16 zeroext %52, %struct.ip6_addr* %22, %struct.ip6_addr* nonnull %31) #6, !dbg !725
  store i16 %53, i16* %28, align 1, !dbg !726, !tbaa !711
  br label %54, !dbg !727

; <label>:54:                                     ; preds = %45, %50
  %55 = tail call signext i8 @ip6_options_add_hbh_ra(%struct.pbuf* nonnull %4, i8 zeroext 58, i8 zeroext 0) #6, !dbg !728
  %56 = icmp eq i8 %2, -125, !dbg !729
  br i1 %56, label %57, label %59, !dbg !731

; <label>:57:                                     ; preds = %54
  %58 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %1, i64 0, i32 2, !dbg !732
  store i8 1, i8* %58, align 4, !dbg !734, !tbaa !548
  br label %59, !dbg !735

; <label>:59:                                     ; preds = %57, %54
  %60 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 0), align 2, !dbg !736, !tbaa !737
  %61 = add i16 %60, 1, !dbg !736
  store i16 %61, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 0), align 2, !dbg !736, !tbaa !737
  %62 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %22, i64 0, i32 0, i64 0, !dbg !738
  %63 = load i32, i32* %62, align 4, !dbg !738, !tbaa !373
  %64 = icmp eq i32 %63, 0, !dbg !738
  br i1 %64, label %65, label %77, !dbg !738

; <label>:65:                                     ; preds = %59
  %66 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %22, i64 0, i32 0, i64 1, !dbg !738
  %67 = load i32, i32* %66, align 4, !dbg !738, !tbaa !373
  %68 = icmp eq i32 %67, 0, !dbg !738
  br i1 %68, label %69, label %77, !dbg !738

; <label>:69:                                     ; preds = %65
  %70 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %22, i64 0, i32 0, i64 2, !dbg !738
  %71 = load i32, i32* %70, align 4, !dbg !738, !tbaa !373
  %72 = icmp eq i32 %71, 0, !dbg !738
  br i1 %72, label %73, label %77, !dbg !738

; <label>:73:                                     ; preds = %69
  %74 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %22, i64 0, i32 0, i64 3, !dbg !738
  %75 = load i32, i32* %74, align 4, !dbg !738, !tbaa !373
  %76 = icmp eq i32 %75, 0, !dbg !738
  br i1 %76, label %78, label %77, !dbg !739

; <label>:77:                                     ; preds = %73, %69, %65, %59
  br label %78, !dbg !739

; <label>:78:                                     ; preds = %73, %77
  %79 = phi %struct.ip6_addr* [ %22, %77 ], [ null, %73 ], !dbg !739
  %80 = tail call signext i8 @ip6_output_if(%struct.pbuf* nonnull %4, %struct.ip6_addr* %79, %struct.ip6_addr* nonnull %31, i8 zeroext 1, i8 zeroext 0, i8 zeroext 0, %struct.netif* %0) #6, !dbg !740
  %81 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %4) #6, !dbg !741
  br label %82, !dbg !742

; <label>:82:                                     ; preds = %78, %12, %6
  ret void, !dbg !742
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @mld6_leavegroup(%struct.ip6_addr*, %struct.ip6_addr*) local_unnamed_addr #0 !dbg !743 {
  %3 = load %struct.netif*, %struct.netif** @netif_list, align 8, !dbg !759, !tbaa !265
  %4 = icmp eq %struct.netif* %3, null, !dbg !760
  br i1 %4, label %38, label %5, !dbg !759

; <label>:5:                                      ; preds = %2
  %6 = icmp eq %struct.ip6_addr* %0, null
  %7 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 0
  %8 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 1
  %9 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 2
  %10 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 3
  br label %11, !dbg !759

; <label>:11:                                     ; preds = %5, %33
  %12 = phi %struct.netif* [ %3, %5 ], [ %36, %33 ]
  %13 = phi i8 [ -6, %5 ], [ %34, %33 ]
  br i1 %6, label %29, label %14, !dbg !761

; <label>:14:                                     ; preds = %11
  %15 = load i32, i32* %7, align 4, !dbg !761, !tbaa !373
  %16 = icmp eq i32 %15, 0, !dbg !761
  br i1 %16, label %17, label %26, !dbg !761

; <label>:17:                                     ; preds = %14
  %18 = load i32, i32* %8, align 4, !dbg !761, !tbaa !373
  %19 = icmp eq i32 %18, 0, !dbg !761
  br i1 %19, label %20, label %26, !dbg !761

; <label>:20:                                     ; preds = %17
  %21 = load i32, i32* %9, align 4, !dbg !761, !tbaa !373
  %22 = icmp eq i32 %21, 0, !dbg !761
  br i1 %22, label %23, label %26, !dbg !761

; <label>:23:                                     ; preds = %20
  %24 = load i32, i32* %10, align 4, !dbg !761, !tbaa !373
  %25 = icmp eq i32 %24, 0, !dbg !761
  br i1 %25, label %29, label %26, !dbg !762

; <label>:26:                                     ; preds = %23, %20, %17, %14
  %27 = tail call signext i8 @netif_get_ip6_addr_match(%struct.netif* nonnull %12, %struct.ip6_addr* nonnull %0) #6, !dbg !763
  %28 = icmp sgt i8 %27, -1, !dbg !764
  br i1 %28, label %29, label %33, !dbg !765

; <label>:29:                                     ; preds = %26, %23, %11
  %30 = tail call signext i8 @mld6_leavegroup_netif(%struct.netif* nonnull %12, %struct.ip6_addr* %1) #7, !dbg !766
  %31 = icmp eq i8 %13, 0, !dbg !768
  %32 = select i1 %31, i8 0, i8 %30, !dbg !770
  br label %33, !dbg !771

; <label>:33:                                     ; preds = %26, %29
  %34 = phi i8 [ %32, %29 ], [ %13, %26 ], !dbg !772
  %35 = getelementptr inbounds %struct.netif, %struct.netif* %12, i64 0, i32 0, !dbg !760
  %36 = load %struct.netif*, %struct.netif** %35, align 8, !dbg !759, !tbaa !265
  %37 = icmp eq %struct.netif* %36, null, !dbg !760
  br i1 %37, label %38, label %11, !dbg !759, !llvm.loop !773

; <label>:38:                                     ; preds = %33, %2
  %39 = phi i8 [ -6, %2 ], [ %34, %33 ], !dbg !775
  ret i8 %39, !dbg !777
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @mld6_leavegroup_netif(%struct.netif*, %struct.ip6_addr*) local_unnamed_addr #0 !dbg !778 {
  %3 = alloca %struct.ip6_addr, align 4
  %4 = bitcast %struct.ip6_addr* %3 to i8*, !dbg !786
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %4) #8, !dbg !786
  %5 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 1, !dbg !787
  %6 = load i8, i8* %5, align 4, !dbg !787, !tbaa !434
  %7 = icmp eq i8 %6, 0, !dbg !787
  br i1 %7, label %8, label %37, !dbg !787

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 0, !dbg !787
  %10 = load i32, i32* %9, align 4, !dbg !787, !tbaa !373
  %11 = and i32 %10, 49407, !dbg !787
  %12 = icmp eq i32 %11, 33022, !dbg !787
  br i1 %12, label %16, label %13, !dbg !787

; <label>:13:                                     ; preds = %8
  %14 = trunc i32 %10 to i16, !dbg !787
  %15 = and i16 %14, -28673, !dbg !787
  switch i16 %15, label %37 [
    i16 511, label %16
    i16 767, label %16
  ], !dbg !787

; <label>:16:                                     ; preds = %13, %13, %8
  %17 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %3, i64 0, i32 0, i64 0, !dbg !789
  store i32 %10, i32* %17, align 4, !dbg !789, !tbaa !373
  %18 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 1, !dbg !789
  %19 = load i32, i32* %18, align 4, !dbg !789, !tbaa !373
  %20 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %3, i64 0, i32 0, i64 1, !dbg !789
  store i32 %19, i32* %20, align 4, !dbg !789, !tbaa !373
  %21 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 2, !dbg !789
  %22 = load i32, i32* %21, align 4, !dbg !789, !tbaa !373
  %23 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %3, i64 0, i32 0, i64 2, !dbg !789
  store i32 %22, i32* %23, align 4, !dbg !789, !tbaa !373
  %24 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 3, !dbg !789
  %25 = load i32, i32* %24, align 4, !dbg !789, !tbaa !373
  %26 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %3, i64 0, i32 0, i64 3, !dbg !789
  store i32 %25, i32* %26, align 4, !dbg !789, !tbaa !373
  %27 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %3, i64 0, i32 1, !dbg !789
  store i8 0, i8* %27, align 4, !dbg !789, !tbaa !434
  br i1 %12, label %31, label %28, !dbg !792

; <label>:28:                                     ; preds = %16
  %29 = trunc i32 %10 to i16, !dbg !792
  %30 = and i16 %29, -28673, !dbg !792
  switch i16 %30, label %35 [
    i16 511, label %31
    i16 767, label %31
  ], !dbg !792

; <label>:31:                                     ; preds = %28, %28, %16
  %32 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 23, !dbg !792
  %33 = load i8, i8* %32, align 8, !dbg !792, !tbaa !605
  %34 = add i8 %33, 1, !dbg !792
  br label %35, !dbg !792

; <label>:35:                                     ; preds = %28, %31
  %36 = phi i8 [ %34, %31 ], [ 0, %28 ]
  store i8 %36, i8* %27, align 4, !dbg !792, !tbaa !434
  br label %37, !dbg !793

; <label>:37:                                     ; preds = %13, %2, %35
  %38 = phi i8 [ %6, %2 ], [ %36, %35 ], [ 0, %13 ]
  %39 = phi %struct.ip6_addr* [ %1, %2 ], [ %3, %35 ], [ %1, %13 ]
  %40 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 15, i64 0, !dbg !797
  %41 = bitcast i8** %40 to %struct.mld_group**, !dbg !797
  %42 = load %struct.mld_group*, %struct.mld_group** %41, align 8, !dbg !799, !tbaa !265
  %43 = icmp eq %struct.mld_group* %42, null, !dbg !800
  br i1 %43, label %116, label %44, !dbg !801

; <label>:44:                                     ; preds = %37
  %45 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %39, i64 0, i32 0, i64 0
  %46 = load i32, i32* %45, align 4, !tbaa !373
  %47 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %39, i64 0, i32 0, i64 1
  %48 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %39, i64 0, i32 0, i64 2
  %49 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %39, i64 0, i32 0, i64 3
  br label %50, !dbg !801

; <label>:50:                                     ; preds = %74, %44
  %51 = phi %struct.mld_group* [ %42, %44 ], [ %76, %74 ]
  %52 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %51, i64 0, i32 1, i32 0, i64 0, !dbg !802
  %53 = load i32, i32* %52, align 8, !dbg !802, !tbaa !373
  %54 = icmp eq i32 %53, %46, !dbg !802
  br i1 %54, label %55, label %74, !dbg !802

; <label>:55:                                     ; preds = %50
  %56 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %51, i64 0, i32 1, i32 0, i64 1, !dbg !802
  %57 = load i32, i32* %56, align 4, !dbg !802, !tbaa !373
  %58 = load i32, i32* %47, align 4, !dbg !802, !tbaa !373
  %59 = icmp eq i32 %57, %58, !dbg !802
  br i1 %59, label %60, label %74, !dbg !802

; <label>:60:                                     ; preds = %55
  %61 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %51, i64 0, i32 1, i32 0, i64 2, !dbg !802
  %62 = load i32, i32* %61, align 8, !dbg !802, !tbaa !373
  %63 = load i32, i32* %48, align 4, !dbg !802, !tbaa !373
  %64 = icmp eq i32 %62, %63, !dbg !802
  br i1 %64, label %65, label %74, !dbg !802

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %51, i64 0, i32 1, i32 0, i64 3, !dbg !802
  %67 = load i32, i32* %66, align 4, !dbg !802, !tbaa !373
  %68 = load i32, i32* %49, align 4, !dbg !802, !tbaa !373
  %69 = icmp eq i32 %67, %68, !dbg !802
  br i1 %69, label %70, label %74, !dbg !802

; <label>:70:                                     ; preds = %65
  %71 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %51, i64 0, i32 1, i32 1, !dbg !802
  %72 = load i8, i8* %71, align 8, !dbg !802, !tbaa !433
  %73 = icmp eq i8 %72, %38, !dbg !802
  br i1 %73, label %78, label %74, !dbg !803

; <label>:74:                                     ; preds = %70, %65, %60, %55, %50
  %75 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %51, i64 0, i32 0, !dbg !804
  %76 = load %struct.mld_group*, %struct.mld_group** %75, align 8, !dbg !799, !tbaa !265
  %77 = icmp eq %struct.mld_group* %76, null, !dbg !800
  br i1 %77, label %116, label %50, !dbg !801, !llvm.loop !437

; <label>:78:                                     ; preds = %70
  %79 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %51, i64 0, i32 5, !dbg !806
  %80 = load i8, i8* %79, align 8, !dbg !806, !tbaa !645
  %81 = icmp ult i8 %80, 2, !dbg !810
  br i1 %81, label %82, label %114, !dbg !811

; <label>:82:                                     ; preds = %78
  %83 = icmp eq %struct.mld_group* %42, %51, !dbg !827
  br i1 %83, label %84, label %88, !dbg !828

; <label>:84:                                     ; preds = %82
  %85 = bitcast %struct.mld_group* %42 to i64*, !dbg !829
  %86 = load i64, i64* %85, align 8, !dbg !829, !tbaa !275
  %87 = bitcast i8** %40 to i64*, !dbg !829
  store i64 %86, i64* %87, align 8, !dbg !829, !tbaa !265
  br label %99, !dbg !831

; <label>:88:                                     ; preds = %82, %91
  %89 = phi %struct.mld_group* [ %93, %91 ], [ %42, %82 ], !dbg !832
  %90 = icmp eq %struct.mld_group* %89, null, !dbg !836
  br i1 %90, label %99, label %91, !dbg !836

; <label>:91:                                     ; preds = %88
  %92 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %89, i64 0, i32 0, !dbg !837
  %93 = load %struct.mld_group*, %struct.mld_group** %92, align 8, !dbg !837, !tbaa !275
  %94 = icmp eq %struct.mld_group* %93, %51, !dbg !840
  br i1 %94, label %95, label %88, !dbg !841, !llvm.loop !842

; <label>:95:                                     ; preds = %91
  %96 = bitcast %struct.mld_group* %51 to i64*, !dbg !845
  %97 = load i64, i64* %96, align 8, !dbg !845, !tbaa !275
  %98 = bitcast %struct.mld_group* %89 to i64*, !dbg !847
  store i64 %97, i64* %98, align 8, !dbg !847, !tbaa !275
  br label %99, !dbg !848

; <label>:99:                                     ; preds = %88, %84, %95
  %100 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %51, i64 0, i32 2, !dbg !849
  %101 = load i8, i8* %100, align 4, !dbg !849, !tbaa !548
  %102 = icmp eq i8 %101, 0, !dbg !851
  br i1 %102, label %106, label %103, !dbg !852

; <label>:103:                                    ; preds = %99
  %104 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 12), align 2, !dbg !853, !tbaa !855
  %105 = add i16 %104, 1, !dbg !853
  store i16 %105, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 12), align 2, !dbg !853, !tbaa !855
  tail call fastcc void @mld6_send(%struct.netif* %0, %struct.mld_group* nonnull %51, i8 zeroext -124) #7, !dbg !856
  br label %106, !dbg !857

; <label>:106:                                    ; preds = %99, %103
  %107 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 26, !dbg !858
  %108 = load i8 (%struct.netif*, %struct.ip6_addr*, i32)*, i8 (%struct.netif*, %struct.ip6_addr*, i32)** %107, align 8, !dbg !858, !tbaa !282
  %109 = icmp eq i8 (%struct.netif*, %struct.ip6_addr*, i32)* %108, null, !dbg !860
  br i1 %109, label %112, label %110, !dbg !861

; <label>:110:                                    ; preds = %106
  %111 = call signext i8 %108(%struct.netif* nonnull %0, %struct.ip6_addr* %39, i32 0) #6, !dbg !862
  br label %112, !dbg !864

; <label>:112:                                    ; preds = %106, %110
  %113 = bitcast %struct.mld_group* %51 to i8*, !dbg !865
  call void @memp_free(i32 14, i8* %113) #6, !dbg !866
  br label %116, !dbg !867

; <label>:114:                                    ; preds = %78
  %115 = add i8 %80, -1, !dbg !868
  store i8 %115, i8* %79, align 8, !dbg !868, !tbaa !645
  br label %116

; <label>:116:                                    ; preds = %74, %37, %112, %114
  %117 = phi i8 [ 0, %114 ], [ 0, %112 ], [ -6, %37 ], [ -6, %74 ], !dbg !870
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %4) #8, !dbg !871
  ret i8 %117, !dbg !871
}

; Function Attrs: noredzone nounwind
define dso_local void @mld6_tmr() local_unnamed_addr #0 !dbg !872 {
  %1 = load %struct.netif*, %struct.netif** @netif_list, align 8, !dbg !882, !tbaa !265
  %2 = icmp eq %struct.netif* %1, null, !dbg !883
  br i1 %2, label %32, label %3, !dbg !882

; <label>:3:                                      ; preds = %0, %28
  %4 = phi %struct.netif* [ %30, %28 ], [ %1, %0 ]
  %5 = getelementptr inbounds %struct.netif, %struct.netif* %4, i64 0, i32 15, i64 0, !dbg !884
  %6 = bitcast i8** %5 to %struct.mld_group**, !dbg !884
  %7 = load %struct.mld_group*, %struct.mld_group** %6, align 8, !dbg !886, !tbaa !265
  %8 = icmp eq %struct.mld_group* %7, null, !dbg !888
  br i1 %8, label %28, label %9, !dbg !889

; <label>:9:                                      ; preds = %3, %24
  %10 = phi %struct.mld_group* [ %26, %24 ], [ %7, %3 ]
  %11 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %10, i64 0, i32 4, !dbg !890
  %12 = load i16, i16* %11, align 2, !dbg !890, !tbaa !410
  %13 = icmp eq i16 %12, 0, !dbg !892
  br i1 %13, label %24, label %14, !dbg !893

; <label>:14:                                     ; preds = %9
  %15 = add i16 %12, -1, !dbg !894
  store i16 %15, i16* %11, align 2, !dbg !894, !tbaa !410
  %16 = icmp eq i16 %15, 0, !dbg !896
  br i1 %16, label %17, label %24, !dbg !898

; <label>:17:                                     ; preds = %14
  %18 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %10, i64 0, i32 3, !dbg !899
  %19 = load i8, i8* %18, align 1, !dbg !899, !tbaa !405
  %20 = icmp eq i8 %19, 1, !dbg !902
  br i1 %20, label %21, label %24, !dbg !903

; <label>:21:                                     ; preds = %17
  %22 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 13), align 2, !dbg !904, !tbaa !658
  %23 = add i16 %22, 1, !dbg !904
  store i16 %23, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 13), align 2, !dbg !904, !tbaa !658
  tail call fastcc void @mld6_send(%struct.netif* nonnull %4, %struct.mld_group* nonnull %10, i8 zeroext -125) #7, !dbg !906
  store i8 2, i8* %18, align 1, !dbg !907, !tbaa !405
  br label %24, !dbg !908

; <label>:24:                                     ; preds = %9, %14, %21, %17
  %25 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %10, i64 0, i32 0, !dbg !909
  %26 = load %struct.mld_group*, %struct.mld_group** %25, align 8, !dbg !886, !tbaa !265
  %27 = icmp eq %struct.mld_group* %26, null, !dbg !888
  br i1 %27, label %28, label %9, !dbg !889, !llvm.loop !910

; <label>:28:                                     ; preds = %24, %3
  %29 = getelementptr inbounds %struct.netif, %struct.netif* %4, i64 0, i32 0, !dbg !883
  %30 = load %struct.netif*, %struct.netif** %29, align 8, !dbg !882, !tbaa !265
  %31 = icmp eq %struct.netif* %30, null, !dbg !883
  br i1 %31, label %32, label %3, !dbg !882, !llvm.loop !912

; <label>:32:                                     ; preds = %28, %0
  ret void, !dbg !914
}

; Function Attrs: noredzone
declare dso_local i8* @memp_malloc(i32) local_unnamed_addr #2

; Function Attrs: inlinehint noredzone nounwind
define internal i32 @uk_swrand_randr() #4 !dbg !360 {
  %1 = tail call i64 @ukplat_lcpu_save_irqf() #6, !dbg !915
  %2 = tail call i32 @uk_swrand_randr_r(%struct.uk_swrand* nonnull @uk_swrand_def) #6, !dbg !917
  tail call void @ukplat_lcpu_restore_irqf(i64 %1) #6, !dbg !919
  ret i32 %2, !dbg !920
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
attributes #3 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone speculatable }
attributes #6 = { nobuiltin noredzone nounwind }
attributes #7 = { nobuiltin noredzone }
attributes #8 = { nounwind }

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
!271 = !DILocation(line: 102, column: 16, scope: !153)
!272 = !DILocation(line: 102, column: 3, scope: !153)
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
!292 = distinct !{!292, !272, !293}
!293 = !DILocation(line: 115, column: 3, scope: !153)
!294 = !DILocation(line: 116, column: 3, scope: !153)
!295 = distinct !DISubprogram(name: "mld6_report_groups", scope: !1, file: !1, line: 125, type: !228, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !296)
!296 = !{!297, !298}
!297 = !DILocalVariable(name: "netif", arg: 1, scope: !295, file: !1, line: 125, type: !161)
!298 = !DILocalVariable(name: "group", scope: !295, file: !1, line: 127, type: !96)
!299 = !DILocation(line: 125, column: 34, scope: !295)
!300 = !DILocation(line: 127, column: 29, scope: !295)
!301 = !DILocation(line: 127, column: 21, scope: !295)
!302 = !DILocation(line: 0, scope: !303)
!303 = distinct !DILexicalBlock(scope: !295, file: !1, line: 129, column: 25)
!304 = !DILocation(line: 129, column: 16, scope: !295)
!305 = !DILocation(line: 129, column: 3, scope: !295)
!306 = !DILocation(line: 130, column: 5, scope: !303)
!307 = !DILocation(line: 131, column: 20, scope: !303)
!308 = distinct !{!308, !305, !309}
!309 = !DILocation(line: 132, column: 3, scope: !295)
!310 = !DILocation(line: 133, column: 1, scope: !295)
!311 = distinct !DISubprogram(name: "mld6_delayed_report", scope: !1, file: !1, line: 528, type: !312, isLocal: true, isDefinition: true, scopeLine: 529, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !314)
!312 = !DISubroutineType(types: !313)
!313 = !{null, !96, !124}
!314 = !{!315, !316, !317}
!315 = !DILocalVariable(name: "group", arg: 1, scope: !311, file: !1, line: 528, type: !96)
!316 = !DILocalVariable(name: "maxresp_in", arg: 2, scope: !311, file: !1, line: 528, type: !124)
!317 = !DILocalVariable(name: "maxresp", scope: !311, file: !1, line: 531, type: !124)
!318 = !DILocation(line: 528, column: 39, scope: !311)
!319 = !DILocation(line: 528, column: 52, scope: !311)
!320 = !DILocation(line: 531, column: 30, scope: !311)
!321 = !DILocation(line: 531, column: 9, scope: !311)
!322 = !DILocation(line: 532, column: 15, scope: !323)
!323 = distinct !DILexicalBlock(scope: !311, file: !1, line: 532, column: 7)
!324 = !DILocation(line: 532, column: 7, scope: !311)
!325 = !DILocation(line: 65, column: 2, scope: !326, inlinedAt: !343)
!326 = distinct !DISubprogram(name: "isolated_rand", scope: !327, file: !327, line: 63, type: !328, isLocal: true, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !332)
!327 = !DIFile(filename: "/root/.unikraft/libs/lwip/include/arch/cc.h", directory: "/root/.unikraft/apps/redis/build")
!328 = !DISubroutineType(types: !329)
!329 = !{!330}
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !331, line: 88, baseType: !5)
!331 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/types.h", directory: "/root/.unikraft/apps/redis/build")
!332 = !{!333, !334, !340}
!333 = !DILocalVariable(name: "randn", scope: !326, file: !327, line: 65, type: !330)
!334 = !DILocalVariable(name: "tid", scope: !335, file: !327, line: 66, type: !110)
!335 = distinct !DILexicalBlock(scope: !336, file: !327, line: 66, column: 2)
!336 = distinct !DILexicalBlock(scope: !337, file: !327, line: 66, column: 2)
!337 = distinct !DILexicalBlock(scope: !338, file: !327, line: 66, column: 2)
!338 = distinct !DILexicalBlock(scope: !339, file: !327, line: 66, column: 2)
!339 = distinct !DILexicalBlock(scope: !326, file: !327, line: 66, column: 2)
!340 = !DILocalVariable(name: "_ret", scope: !335, file: !327, line: 66, type: !341)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !111, line: 60, baseType: !342)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !113, line: 105, baseType: !145)
!343 = distinct !DILocation(line: 538, column: 21, scope: !311)
!344 = !DILocation(line: 120, column: 2, scope: !345, inlinedAt: !351)
!345 = distinct !DISubprogram(name: "ukarch_read_sp", scope: !346, file: !346, line: 116, type: !347, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !349)
!346 = !DIFile(filename: "/root/.unikraft/unikraft/arch/x86/x86_64/include/uk/asm/lcpu.h", directory: "/root/.unikraft/apps/redis/build")
!347 = !DISubroutineType(types: !348)
!348 = !{!145}
!349 = !{!350}
!350 = !DILocalVariable(name: "sp", scope: !345, file: !346, line: 118, type: !145)
!351 = distinct !DILocation(line: 66, column: 2, scope: !338, inlinedAt: !343)
!352 = !{i32 531785}
!353 = !DILocation(line: 118, column: 16, scope: !345, inlinedAt: !351)
!354 = !DILocation(line: 66, column: 2, scope: !338, inlinedAt: !343)
!355 = !DILocation(line: 120, column: 2, scope: !345, inlinedAt: !356)
!356 = distinct !DILocation(line: 66, column: 2, scope: !338, inlinedAt: !343)
!357 = !DILocation(line: 118, column: 16, scope: !345, inlinedAt: !356)
!358 = !DILocation(line: 66, column: 2, scope: !339, inlinedAt: !343)
!359 = !DILocation(line: 65, column: 11, scope: !360, inlinedAt: !365)
!360 = distinct !DISubprogram(name: "uk_swrand_randr", scope: !361, file: !361, line: 60, type: !328, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !362)
!361 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukswrand/include/uk/swrand.h", directory: "/root/.unikraft/apps/redis/build")
!362 = !{!363, !364}
!363 = !DILocalVariable(name: "iflags", scope: !360, file: !361, line: 62, type: !145)
!364 = !DILocalVariable(name: "ret", scope: !360, file: !361, line: 63, type: !330)
!365 = distinct !DILocation(line: 66, column: 2, scope: !366, inlinedAt: !343)
!366 = distinct !DILexicalBlock(scope: !338, file: !327, line: 66, column: 2)
!367 = !DILocation(line: 62, column: 16, scope: !360, inlinedAt: !365)
!368 = !DILocation(line: 66, column: 8, scope: !360, inlinedAt: !365)
!369 = !DILocation(line: 63, column: 8, scope: !360, inlinedAt: !365)
!370 = !DILocation(line: 67, column: 2, scope: !360, inlinedAt: !365)
!371 = !DILocation(line: 65, column: 8, scope: !326, inlinedAt: !343)
!372 = !DILocation(line: 66, column: 2, scope: !366, inlinedAt: !343)
!373 = !{!374, !374, i64 0}
!374 = !{!"int", !267, i64 0}
!375 = !DILocation(line: 120, column: 2, scope: !345, inlinedAt: !376)
!376 = distinct !DILocation(line: 49, column: 21, scope: !377, inlinedAt: !383)
!377 = distinct !DISubprogram(name: "uk_thread_get_tid", scope: !378, file: !378, line: 47, type: !379, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !381)
!378 = !DIFile(filename: "/root/.unikraft/unikraft/lib/flexos-core/include/flexos/impl/intelpku-impl.h", directory: "/root/.unikraft/apps/redis/build")
!379 = !DISubroutineType(types: !380)
!380 = !{!36}
!381 = !{!382}
!382 = !DILocalVariable(name: "sp", scope: !377, file: !378, line: 49, type: !145)
!383 = distinct !DILocation(line: 66, column: 2, scope: !335, inlinedAt: !343)
!384 = !DILocation(line: 118, column: 16, scope: !345, inlinedAt: !376)
!385 = !DILocation(line: 49, column: 16, scope: !377, inlinedAt: !383)
!386 = !DILocation(line: 50, column: 19, scope: !377, inlinedAt: !383)
!387 = !DILocation(line: 50, column: 11, scope: !377, inlinedAt: !383)
!388 = !DILocation(line: 50, column: 9, scope: !377, inlinedAt: !383)
!389 = !DILocation(line: 66, column: 2, scope: !335, inlinedAt: !343)
!390 = !{i32 -2146824497, i32 -2146824484, i32 -2146824459, i32 -2146824435, i32 -2146824410, i32 -2146824335, i32 -2146824310, i32 -2146824166, i32 -2146821073, i32 -2146820984, i32 -2146820863, i32 -2146820768, i32 -2146820667, i32 -2146820640, i32 -2146820557, i32 -2146820468, i32 -2146820347, i32 -2146820247, i32 -2146820141, i32 -2146820033, i32 -2146823883, i32 -2146823830, i32 -2146823799, i32 -2146823768, i32 -2146823747, i32 -2146823725, i32 -2146823676, i32 -2146823655, i32 -2146819950, i32 -2146819861, i32 -2146819740, i32 -2146819641, i32 -2146819535, i32 -2146819433, i32 -2146819400, i32 -2146819327, i32 -2146819259, i32 -2146823353, i32 -2146823294, i32 -2146823241, i32 -2146823210, i32 -2146823179, i32 -2146823158, i32 -2146823136, i32 -2146823087, i32 -2146823066, i32 -2146819208, i32 -2146819119, i32 -2146818998, i32 -2146818899, i32 -2146818793, i32 -2146818691, i32 -2146818658, i32 -2146818575, i32 -2146818486, i32 -2146818365, i32 -2146818265, i32 -2146818239, i32 -2146818136, i32 -2146818110, i32 -2146822808, i32 -2146822741, i32 -2146822716, i32 -2146822652, i32 -2146822570, i32 -2146822547, i32 -2146822522, i32 -2146822497}
!391 = !DILocation(line: 66, column: 2, scope: !392, inlinedAt: !343)
!392 = distinct !DILexicalBlock(scope: !393, file: !327, line: 66, column: 2)
!393 = distinct !DILexicalBlock(scope: !335, file: !327, line: 66, column: 2)
!394 = !{i32 -2146821550, i32 -2146821533}
!395 = !DILocation(line: 67, column: 9, scope: !326, inlinedAt: !343)
!396 = !DILocation(line: 68, column: 1, scope: !326, inlinedAt: !343)
!397 = !DILocation(line: 538, column: 35, scope: !311)
!398 = !DILocation(line: 538, column: 33, scope: !311)
!399 = !DILocation(line: 538, column: 13, scope: !311)
!400 = !DILocation(line: 539, column: 15, scope: !401)
!401 = distinct !DILexicalBlock(scope: !311, file: !1, line: 539, column: 7)
!402 = !DILocation(line: 539, column: 7, scope: !311)
!403 = !DILocation(line: 545, column: 15, scope: !404)
!404 = distinct !DILexicalBlock(scope: !311, file: !1, line: 545, column: 7)
!405 = !{!276, !267, i64 29}
!406 = !DILocation(line: 545, column: 54, scope: !404)
!407 = !DILocation(line: 548, column: 12, scope: !408)
!408 = distinct !DILexicalBlock(scope: !404, file: !1, line: 547, column: 59)
!409 = !DILocation(line: 547, column: 16, scope: !404)
!410 = !{!276, !278, i64 30}
!411 = !DILocation(line: 547, column: 28, scope: !404)
!412 = !DILocation(line: 548, column: 18, scope: !408)
!413 = !DILocation(line: 549, column: 24, scope: !408)
!414 = !DILocation(line: 550, column: 3, scope: !408)
!415 = !DILocation(line: 551, column: 1, scope: !311)
!416 = distinct !DISubprogram(name: "mld6_lookfor_group", scope: !1, file: !1, line: 144, type: !417, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !419)
!417 = !DISubroutineType(types: !418)
!418 = !{!96, !161, !147}
!419 = !{!420, !421, !422}
!420 = !DILocalVariable(name: "ifp", arg: 1, scope: !416, file: !1, line: 144, type: !161)
!421 = !DILocalVariable(name: "addr", arg: 2, scope: !416, file: !1, line: 144, type: !147)
!422 = !DILocalVariable(name: "group", scope: !416, file: !1, line: 146, type: !96)
!423 = !DILocation(line: 144, column: 34, scope: !416)
!424 = !DILocation(line: 144, column: 57, scope: !416)
!425 = !DILocation(line: 146, column: 29, scope: !416)
!426 = !DILocation(line: 146, column: 21, scope: !416)
!427 = !DILocation(line: 0, scope: !428)
!428 = distinct !DILexicalBlock(scope: !416, file: !1, line: 148, column: 25)
!429 = !DILocation(line: 148, column: 16, scope: !416)
!430 = !DILocation(line: 148, column: 3, scope: !416)
!431 = !DILocation(line: 149, column: 9, scope: !432)
!432 = distinct !DILexicalBlock(scope: !428, file: !1, line: 149, column: 9)
!433 = !{!276, !267, i64 24}
!434 = !{!277, !267, i64 16}
!435 = !DILocation(line: 149, column: 9, scope: !428)
!436 = !DILocation(line: 152, column: 20, scope: !428)
!437 = distinct !{!437, !430, !438}
!438 = !DILocation(line: 153, column: 3, scope: !416)
!439 = !DILocation(line: 156, column: 1, scope: !416)
!440 = distinct !DISubprogram(name: "mld6_input", scope: !1, file: !1, line: 227, type: !441, isLocal: false, isDefinition: true, scopeLine: 228, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !443)
!441 = !DISubroutineType(types: !442)
!442 = !{null, !197, !161}
!443 = !{!444, !445, !446, !447}
!444 = !DILocalVariable(name: "p", arg: 1, scope: !440, file: !1, line: 227, type: !197)
!445 = !DILocalVariable(name: "inp", arg: 2, scope: !440, file: !1, line: 227, type: !161)
!446 = !DILocalVariable(name: "mld_hdr", scope: !440, file: !1, line: 229, type: !130)
!447 = !DILocalVariable(name: "group", scope: !440, file: !1, line: 230, type: !96)
!448 = !DILocation(line: 227, column: 25, scope: !440)
!449 = !DILocation(line: 227, column: 42, scope: !440)
!450 = !DILocation(line: 232, column: 3, scope: !440)
!451 = !{!452, !278, i64 260}
!452 = !{!"stats_", !453, i64 0, !453, i64 24, !453, i64 48, !453, i64 72, !453, i64 96, !453, i64 120, !453, i64 144, !454, i64 168, !453, i64 186, !453, i64 210, !453, i64 234, !456, i64 258, !453, i64 286}
!453 = !{!"stats_proto", !278, i64 0, !278, i64 2, !278, i64 4, !278, i64 6, !278, i64 8, !278, i64 10, !278, i64 12, !278, i64 14, !278, i64 16, !278, i64 18, !278, i64 20, !278, i64 22}
!454 = !{!"stats_sys", !455, i64 0, !455, i64 6, !455, i64 12}
!455 = !{!"stats_syselem", !278, i64 0, !278, i64 2, !278, i64 4}
!456 = !{!"stats_igmp", !278, i64 0, !278, i64 2, !278, i64 4, !278, i64 6, !278, i64 8, !278, i64 10, !278, i64 12, !278, i64 14, !278, i64 16, !278, i64 18, !278, i64 20, !278, i64 22, !278, i64 24, !278, i64 26}
!457 = !DILocation(line: 235, column: 10, scope: !458)
!458 = distinct !DILexicalBlock(scope: !440, file: !1, line: 235, column: 7)
!459 = !{!460, !278, i64 18}
!460 = !{!"pbuf", !266, i64 0, !266, i64 8, !278, i64 16, !278, i64 18, !267, i64 20, !267, i64 21, !267, i64 22, !267, i64 23}
!461 = !DILocation(line: 235, column: 14, scope: !458)
!462 = !DILocation(line: 235, column: 7, scope: !440)
!463 = !DILocation(line: 237, column: 5, scope: !464)
!464 = distinct !DILexicalBlock(scope: !458, file: !1, line: 235, column: 43)
!465 = !DILocation(line: 238, column: 5, scope: !464)
!466 = !{!452, !278, i64 266}
!467 = !DILocation(line: 239, column: 5, scope: !464)
!468 = !{!452, !278, i64 262}
!469 = !DILocation(line: 240, column: 5, scope: !464)
!470 = !DILocation(line: 243, column: 37, scope: !440)
!471 = !{!460, !266, i64 8}
!472 = !DILocation(line: 229, column: 22, scope: !440)
!473 = !DILocation(line: 245, column: 20, scope: !440)
!474 = !{!475, !267, i64 0}
!475 = !{!"mld_header", !267, i64 0, !267, i64 1, !278, i64 2, !278, i64 4, !278, i64 6, !476, i64 8}
!476 = !{!"ip6_addr_packed", !267, i64 0}
!477 = !DILocation(line: 245, column: 3, scope: !440)
!478 = !DILocation(line: 248, column: 9, scope: !479)
!479 = distinct !DILexicalBlock(scope: !480, file: !1, line: 248, column: 9)
!480 = distinct !DILexicalBlock(scope: !440, file: !1, line: 245, column: 26)
!481 = !{!267, !267, i64 0}
!482 = !DILocation(line: 249, column: 9, scope: !479)
!483 = !DILocation(line: 248, column: 9, scope: !480)
!484 = !DILocation(line: 250, column: 7, scope: !485)
!485 = distinct !DILexicalBlock(scope: !479, file: !1, line: 249, column: 56)
!486 = !{!452, !278, i64 276}
!487 = !DILocation(line: 252, column: 15, scope: !485)
!488 = !DILocation(line: 230, column: 21, scope: !440)
!489 = !DILocation(line: 0, scope: !490)
!490 = distinct !DILexicalBlock(scope: !485, file: !1, line: 253, column: 29)
!491 = !DILocation(line: 253, column: 20, scope: !485)
!492 = !DILocation(line: 253, column: 7, scope: !485)
!493 = !DILocation(line: 254, column: 16, scope: !494)
!494 = distinct !DILexicalBlock(scope: !490, file: !1, line: 254, column: 13)
!495 = !DILocation(line: 254, column: 72, scope: !494)
!496 = !DILocation(line: 255, column: 16, scope: !494)
!497 = !DILocation(line: 254, column: 13, scope: !490)
!498 = !DILocation(line: 256, column: 47, scope: !499)
!499 = distinct !DILexicalBlock(scope: !494, file: !1, line: 255, column: 74)
!500 = !{!475, !278, i64 4}
!501 = !DILocation(line: 256, column: 11, scope: !499)
!502 = !DILocation(line: 257, column: 9, scope: !499)
!503 = !DILocation(line: 258, column: 24, scope: !490)
!504 = distinct !{!504, !492, !505}
!505 = !DILocation(line: 259, column: 7, scope: !485)
!506 = !DILocation(line: 264, column: 7, scope: !507)
!507 = distinct !DILexicalBlock(scope: !479, file: !1, line: 260, column: 12)
!508 = !{!452, !278, i64 274}
!509 = !DILocation(line: 144, column: 34, scope: !416, inlinedAt: !510)
!510 = distinct !DILocation(line: 265, column: 15, scope: !507)
!511 = !DILocation(line: 146, column: 29, scope: !416, inlinedAt: !510)
!512 = !DILocation(line: 146, column: 21, scope: !416, inlinedAt: !510)
!513 = !DILocation(line: 0, scope: !428, inlinedAt: !510)
!514 = !DILocation(line: 148, column: 16, scope: !416, inlinedAt: !510)
!515 = !DILocation(line: 148, column: 3, scope: !416, inlinedAt: !510)
!516 = !DILocation(line: 149, column: 9, scope: !432, inlinedAt: !510)
!517 = !DILocation(line: 149, column: 9, scope: !428, inlinedAt: !510)
!518 = !DILocation(line: 152, column: 20, scope: !428, inlinedAt: !510)
!519 = !DILocation(line: 268, column: 45, scope: !520)
!520 = distinct !DILexicalBlock(scope: !521, file: !1, line: 266, column: 26)
!521 = distinct !DILexicalBlock(scope: !507, file: !1, line: 266, column: 11)
!522 = !DILocation(line: 268, column: 9, scope: !520)
!523 = !DILocation(line: 269, column: 7, scope: !520)
!524 = !DILocation(line: 276, column: 5, scope: !480)
!525 = !{!452, !278, i64 278}
!526 = !DILocation(line: 144, column: 34, scope: !416, inlinedAt: !527)
!527 = distinct !DILocation(line: 277, column: 13, scope: !480)
!528 = !DILocation(line: 146, column: 29, scope: !416, inlinedAt: !527)
!529 = !DILocation(line: 146, column: 21, scope: !416, inlinedAt: !527)
!530 = !DILocation(line: 0, scope: !428, inlinedAt: !527)
!531 = !DILocation(line: 148, column: 16, scope: !416, inlinedAt: !527)
!532 = !DILocation(line: 148, column: 3, scope: !416, inlinedAt: !527)
!533 = !DILocation(line: 149, column: 9, scope: !432, inlinedAt: !527)
!534 = !DILocation(line: 149, column: 9, scope: !428, inlinedAt: !527)
!535 = !DILocation(line: 152, column: 20, scope: !428, inlinedAt: !527)
!536 = !DILocation(line: 280, column: 18, scope: !537)
!537 = distinct !DILexicalBlock(scope: !538, file: !1, line: 280, column: 11)
!538 = distinct !DILexicalBlock(scope: !539, file: !1, line: 278, column: 24)
!539 = distinct !DILexicalBlock(scope: !480, file: !1, line: 278, column: 9)
!540 = !DILocation(line: 280, column: 30, scope: !537)
!541 = !DILocation(line: 280, column: 11, scope: !538)
!542 = !DILocation(line: 281, column: 16, scope: !543)
!543 = distinct !DILexicalBlock(scope: !537, file: !1, line: 280, column: 61)
!544 = !DILocation(line: 281, column: 22, scope: !543)
!545 = !DILocation(line: 282, column: 28, scope: !543)
!546 = !DILocation(line: 283, column: 16, scope: !543)
!547 = !DILocation(line: 283, column: 35, scope: !543)
!548 = !{!276, !267, i64 28}
!549 = !DILocation(line: 284, column: 7, scope: !543)
!550 = !DILocation(line: 291, column: 5, scope: !480)
!551 = !{!452, !278, i64 270}
!552 = !DILocation(line: 292, column: 5, scope: !480)
!553 = !DILocation(line: 293, column: 5, scope: !480)
!554 = !DILocation(line: 296, column: 3, scope: !440)
!555 = !DILocation(line: 297, column: 1, scope: !440)
!556 = distinct !DISubprogram(name: "mld6_joingroup", scope: !1, file: !1, line: 315, type: !557, isLocal: false, isDefinition: true, scopeLine: 316, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !559)
!557 = !DISubroutineType(types: !558)
!558 = !{!156, !147, !147}
!559 = !{!560, !561, !562, !563}
!560 = !DILocalVariable(name: "srcaddr", arg: 1, scope: !556, file: !1, line: 315, type: !147)
!561 = !DILocalVariable(name: "groupaddr", arg: 2, scope: !556, file: !1, line: 315, type: !147)
!562 = !DILocalVariable(name: "err", scope: !556, file: !1, line: 317, type: !156)
!563 = !DILocalVariable(name: "netif", scope: !556, file: !1, line: 318, type: !161)
!564 = !DILocation(line: 315, column: 34, scope: !556)
!565 = !DILocation(line: 315, column: 61, scope: !556)
!566 = !DILocation(line: 317, column: 17, scope: !556)
!567 = !DILocation(line: 318, column: 17, scope: !556)
!568 = !DILocation(line: 323, column: 3, scope: !569)
!569 = distinct !DILexicalBlock(scope: !556, file: !1, line: 323, column: 3)
!570 = !DILocation(line: 323, column: 3, scope: !571)
!571 = distinct !DILexicalBlock(scope: !569, file: !1, line: 323, column: 3)
!572 = !DILocation(line: 325, column: 9, scope: !573)
!573 = distinct !DILexicalBlock(scope: !574, file: !1, line: 325, column: 9)
!574 = distinct !DILexicalBlock(scope: !571, file: !1, line: 323, column: 24)
!575 = !DILocation(line: 325, column: 33, scope: !573)
!576 = !DILocation(line: 326, column: 9, scope: !573)
!577 = !DILocation(line: 326, column: 50, scope: !573)
!578 = !DILocation(line: 325, column: 9, scope: !574)
!579 = !DILocation(line: 327, column: 13, scope: !580)
!580 = distinct !DILexicalBlock(scope: !573, file: !1, line: 326, column: 56)
!581 = !DILocation(line: 328, column: 15, scope: !582)
!582 = distinct !DILexicalBlock(scope: !580, file: !1, line: 328, column: 11)
!583 = !DILocation(line: 328, column: 11, scope: !580)
!584 = !DILocation(line: 0, scope: !556)
!585 = distinct !{!585, !568, !586}
!586 = !DILocation(line: 332, column: 3, scope: !569)
!587 = !DILocation(line: 335, column: 1, scope: !556)
!588 = distinct !DISubprogram(name: "mld6_joingroup_netif", scope: !1, file: !1, line: 347, type: !589, isLocal: false, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !591)
!589 = !DISubroutineType(types: !590)
!590 = !{!156, !161, !147}
!591 = !{!592, !593, !594, !595}
!592 = !DILocalVariable(name: "netif", arg: 1, scope: !588, file: !1, line: 347, type: !161)
!593 = !DILocalVariable(name: "groupaddr", arg: 2, scope: !588, file: !1, line: 347, type: !147)
!594 = !DILocalVariable(name: "group", scope: !588, file: !1, line: 349, type: !96)
!595 = !DILocalVariable(name: "ip6addr", scope: !588, file: !1, line: 351, type: !102)
!596 = !DILocation(line: 347, column: 36, scope: !588)
!597 = !DILocation(line: 347, column: 61, scope: !588)
!598 = !DILocation(line: 351, column: 3, scope: !588)
!599 = !DILocation(line: 355, column: 7, scope: !600)
!600 = distinct !DILexicalBlock(scope: !588, file: !1, line: 355, column: 7)
!601 = !DILocation(line: 356, column: 5, scope: !602)
!602 = distinct !DILexicalBlock(scope: !603, file: !1, line: 356, column: 5)
!603 = distinct !DILexicalBlock(scope: !600, file: !1, line: 355, column: 54)
!604 = !DILocation(line: 357, column: 5, scope: !603)
!605 = !{!283, !267, i64 264}
!606 = !DILocation(line: 359, column: 3, scope: !603)
!607 = !DILocation(line: 144, column: 34, scope: !416, inlinedAt: !608)
!608 = distinct !DILocation(line: 366, column: 11, scope: !588)
!609 = !DILocation(line: 144, column: 57, scope: !416, inlinedAt: !608)
!610 = !DILocation(line: 146, column: 29, scope: !416, inlinedAt: !608)
!611 = !DILocation(line: 146, column: 21, scope: !416, inlinedAt: !608)
!612 = !DILocation(line: 0, scope: !428, inlinedAt: !608)
!613 = !DILocation(line: 148, column: 16, scope: !416, inlinedAt: !608)
!614 = !DILocation(line: 148, column: 3, scope: !416, inlinedAt: !608)
!615 = !DILocation(line: 149, column: 9, scope: !432, inlinedAt: !608)
!616 = !DILocation(line: 149, column: 9, scope: !428, inlinedAt: !608)
!617 = !DILocation(line: 152, column: 20, scope: !428, inlinedAt: !608)
!618 = !DILocalVariable(name: "ifp", arg: 1, scope: !619, file: !1, line: 168, type: !161)
!619 = distinct !DISubprogram(name: "mld6_new_group", scope: !1, file: !1, line: 168, type: !417, isLocal: true, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !620)
!620 = !{!618, !621, !622}
!621 = !DILocalVariable(name: "addr", arg: 2, scope: !619, file: !1, line: 168, type: !147)
!622 = !DILocalVariable(name: "group", scope: !619, file: !1, line: 170, type: !96)
!623 = !DILocation(line: 168, column: 30, scope: !619, inlinedAt: !624)
!624 = distinct !DILocation(line: 370, column: 13, scope: !625)
!625 = distinct !DILexicalBlock(scope: !626, file: !1, line: 368, column: 22)
!626 = distinct !DILexicalBlock(scope: !588, file: !1, line: 368, column: 7)
!627 = !DILocation(line: 168, column: 53, scope: !619, inlinedAt: !624)
!628 = !DILocation(line: 172, column: 31, scope: !619, inlinedAt: !624)
!629 = !DILocation(line: 172, column: 11, scope: !619, inlinedAt: !624)
!630 = !DILocation(line: 170, column: 21, scope: !619, inlinedAt: !624)
!631 = !DILocation(line: 173, column: 13, scope: !632, inlinedAt: !624)
!632 = distinct !DILexicalBlock(scope: !619, file: !1, line: 173, column: 7)
!633 = !DILocation(line: 173, column: 7, scope: !619, inlinedAt: !624)
!634 = !DILocation(line: 174, column: 5, scope: !635, inlinedAt: !624)
!635 = distinct !DILexicalBlock(scope: !636, file: !1, line: 174, column: 5)
!636 = distinct !DILexicalBlock(scope: !632, file: !1, line: 173, column: 22)
!637 = !DILocation(line: 175, column: 12, scope: !636, inlinedAt: !624)
!638 = !DILocation(line: 175, column: 31, scope: !636, inlinedAt: !624)
!639 = !DILocation(line: 176, column: 12, scope: !636, inlinedAt: !624)
!640 = !DILocation(line: 176, column: 31, scope: !636, inlinedAt: !624)
!641 = !DILocation(line: 177, column: 12, scope: !636, inlinedAt: !624)
!642 = !DILocation(line: 177, column: 31, scope: !636, inlinedAt: !624)
!643 = !DILocation(line: 178, column: 12, scope: !636, inlinedAt: !624)
!644 = !DILocation(line: 178, column: 31, scope: !636, inlinedAt: !624)
!645 = !{!276, !267, i64 32}
!646 = !DILocation(line: 179, column: 33, scope: !636, inlinedAt: !624)
!647 = !DILocation(line: 179, column: 31, scope: !636, inlinedAt: !624)
!648 = !DILocation(line: 181, column: 5, scope: !636, inlinedAt: !624)
!649 = !DILocation(line: 349, column: 21, scope: !588)
!650 = !DILocation(line: 376, column: 16, scope: !651)
!651 = distinct !DILexicalBlock(scope: !625, file: !1, line: 376, column: 9)
!652 = !DILocation(line: 376, column: 31, scope: !651)
!653 = !DILocation(line: 376, column: 9, scope: !625)
!654 = !DILocation(line: 377, column: 7, scope: !655)
!655 = distinct !DILexicalBlock(scope: !651, file: !1, line: 376, column: 40)
!656 = !DILocation(line: 378, column: 5, scope: !655)
!657 = !DILocation(line: 381, column: 5, scope: !625)
!658 = !{!452, !278, i64 284}
!659 = !DILocation(line: 382, column: 5, scope: !625)
!660 = !DILocation(line: 383, column: 5, scope: !625)
!661 = !DILocation(line: 384, column: 3, scope: !625)
!662 = !DILocation(line: 0, scope: !588)
!663 = !DILocation(line: 387, column: 10, scope: !588)
!664 = !DILocation(line: 387, column: 13, scope: !588)
!665 = !DILocation(line: 388, column: 3, scope: !588)
!666 = !DILocation(line: 389, column: 1, scope: !588)
!667 = distinct !DISubprogram(name: "mld6_send", scope: !1, file: !1, line: 563, type: !668, isLocal: true, isDefinition: true, scopeLine: 564, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !670)
!668 = !DISubroutineType(types: !669)
!669 = !{null, !161, !96, !117}
!670 = !{!671, !672, !673, !674, !675, !676}
!671 = !DILocalVariable(name: "netif", arg: 1, scope: !667, file: !1, line: 563, type: !161)
!672 = !DILocalVariable(name: "group", arg: 2, scope: !667, file: !1, line: 563, type: !96)
!673 = !DILocalVariable(name: "type", arg: 3, scope: !667, file: !1, line: 563, type: !117)
!674 = !DILocalVariable(name: "mld_hdr", scope: !667, file: !1, line: 565, type: !130)
!675 = !DILocalVariable(name: "p", scope: !667, file: !1, line: 566, type: !197)
!676 = !DILocalVariable(name: "src_addr", scope: !667, file: !1, line: 567, type: !147)
!677 = !DILocation(line: 563, column: 25, scope: !667)
!678 = !DILocation(line: 563, column: 50, scope: !667)
!679 = !DILocation(line: 563, column: 62, scope: !667)
!680 = !DILocation(line: 570, column: 7, scope: !667)
!681 = !DILocation(line: 566, column: 16, scope: !667)
!682 = !DILocation(line: 571, column: 9, scope: !683)
!683 = distinct !DILexicalBlock(scope: !667, file: !1, line: 571, column: 7)
!684 = !DILocation(line: 571, column: 7, scope: !667)
!685 = !DILocation(line: 572, column: 5, scope: !686)
!686 = distinct !DILexicalBlock(scope: !683, file: !1, line: 571, column: 18)
!687 = !{!452, !278, i64 268}
!688 = !DILocation(line: 573, column: 5, scope: !686)
!689 = !DILocation(line: 577, column: 7, scope: !690)
!690 = distinct !DILexicalBlock(scope: !667, file: !1, line: 577, column: 7)
!691 = !DILocation(line: 577, column: 7, scope: !667)
!692 = !DILocation(line: 578, column: 5, scope: !693)
!693 = distinct !DILexicalBlock(scope: !690, file: !1, line: 577, column: 45)
!694 = !DILocation(line: 579, column: 5, scope: !693)
!695 = !DILocation(line: 580, column: 5, scope: !693)
!696 = !DILocation(line: 584, column: 8, scope: !697)
!697 = distinct !DILexicalBlock(scope: !667, file: !1, line: 584, column: 7)
!698 = !DILocation(line: 590, column: 16, scope: !699)
!699 = distinct !DILexicalBlock(scope: !697, file: !1, line: 588, column: 10)
!700 = !DILocation(line: 567, column: 21, scope: !667)
!701 = !DILocation(line: 584, column: 7, scope: !667)
!702 = !DILocation(line: 594, column: 37, scope: !667)
!703 = !DILocation(line: 565, column: 22, scope: !667)
!704 = !DILocation(line: 597, column: 12, scope: !667)
!705 = !DILocation(line: 597, column: 17, scope: !667)
!706 = !DILocation(line: 598, column: 12, scope: !667)
!707 = !DILocation(line: 598, column: 17, scope: !667)
!708 = !{!475, !267, i64 1}
!709 = !DILocation(line: 599, column: 12, scope: !667)
!710 = !DILocation(line: 599, column: 19, scope: !667)
!711 = !{!475, !278, i64 2}
!712 = !DILocation(line: 600, column: 12, scope: !667)
!713 = !DILocation(line: 600, column: 27, scope: !667)
!714 = !DILocation(line: 601, column: 12, scope: !667)
!715 = !DILocation(line: 601, column: 21, scope: !667)
!716 = !{!475, !278, i64 6}
!717 = !DILocation(line: 602, column: 3, scope: !718)
!718 = distinct !DILexicalBlock(scope: !667, file: !1, line: 602, column: 3)
!719 = !DILocation(line: 605, column: 3, scope: !720)
!720 = distinct !DILexicalBlock(scope: !667, file: !1, line: 605, column: 3)
!721 = !{!283, !278, i64 248}
!722 = !DILocation(line: 605, column: 3, scope: !667)
!723 = !DILocation(line: 606, column: 64, scope: !724)
!724 = distinct !DILexicalBlock(scope: !720, file: !1, line: 605, column: 63)
!725 = !DILocation(line: 606, column: 23, scope: !724)
!726 = !DILocation(line: 606, column: 21, scope: !724)
!727 = !DILocation(line: 608, column: 3, scope: !724)
!728 = !DILocation(line: 612, column: 3, scope: !667)
!729 = !DILocation(line: 614, column: 12, scope: !730)
!730 = distinct !DILexicalBlock(scope: !667, file: !1, line: 614, column: 7)
!731 = !DILocation(line: 614, column: 7, scope: !667)
!732 = !DILocation(line: 616, column: 12, scope: !733)
!733 = distinct !DILexicalBlock(scope: !730, file: !1, line: 614, column: 31)
!734 = !DILocation(line: 616, column: 31, scope: !733)
!735 = !DILocation(line: 617, column: 3, scope: !733)
!736 = !DILocation(line: 620, column: 3, scope: !667)
!737 = !{!452, !278, i64 258}
!738 = !DILocation(line: 621, column: 21, scope: !667)
!739 = !DILocation(line: 621, column: 20, scope: !667)
!740 = !DILocation(line: 621, column: 3, scope: !667)
!741 = !DILocation(line: 623, column: 3, scope: !667)
!742 = !DILocation(line: 624, column: 1, scope: !667)
!743 = distinct !DISubprogram(name: "mld6_leavegroup", scope: !1, file: !1, line: 404, type: !557, isLocal: false, isDefinition: true, scopeLine: 405, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !744)
!744 = !{!745, !746, !747, !748, !749}
!745 = !DILocalVariable(name: "srcaddr", arg: 1, scope: !743, file: !1, line: 404, type: !147)
!746 = !DILocalVariable(name: "groupaddr", arg: 2, scope: !743, file: !1, line: 404, type: !147)
!747 = !DILocalVariable(name: "err", scope: !743, file: !1, line: 406, type: !156)
!748 = !DILocalVariable(name: "netif", scope: !743, file: !1, line: 407, type: !161)
!749 = !DILocalVariable(name: "res", scope: !750, file: !1, line: 416, type: !156)
!750 = distinct !DILexicalBlock(scope: !751, file: !1, line: 415, column: 56)
!751 = distinct !DILexicalBlock(scope: !752, file: !1, line: 414, column: 9)
!752 = distinct !DILexicalBlock(scope: !753, file: !1, line: 412, column: 24)
!753 = distinct !DILexicalBlock(scope: !754, file: !1, line: 412, column: 3)
!754 = distinct !DILexicalBlock(scope: !743, file: !1, line: 412, column: 3)
!755 = !DILocation(line: 404, column: 35, scope: !743)
!756 = !DILocation(line: 404, column: 62, scope: !743)
!757 = !DILocation(line: 406, column: 17, scope: !743)
!758 = !DILocation(line: 407, column: 17, scope: !743)
!759 = !DILocation(line: 412, column: 3, scope: !754)
!760 = !DILocation(line: 412, column: 3, scope: !753)
!761 = !DILocation(line: 414, column: 9, scope: !751)
!762 = !DILocation(line: 414, column: 33, scope: !751)
!763 = !DILocation(line: 415, column: 9, scope: !751)
!764 = !DILocation(line: 415, column: 50, scope: !751)
!765 = !DILocation(line: 414, column: 9, scope: !752)
!766 = !DILocation(line: 416, column: 19, scope: !750)
!767 = !DILocation(line: 416, column: 13, scope: !750)
!768 = !DILocation(line: 417, column: 15, scope: !769)
!769 = distinct !DILexicalBlock(scope: !750, file: !1, line: 417, column: 11)
!770 = !DILocation(line: 417, column: 11, scope: !750)
!771 = !DILocation(line: 421, column: 5, scope: !750)
!772 = !DILocation(line: 0, scope: !743)
!773 = distinct !{!773, !759, !774}
!774 = !DILocation(line: 422, column: 3, scope: !754)
!775 = !DILocation(line: 0, scope: !776)
!776 = distinct !DILexicalBlock(scope: !769, file: !1, line: 417, column: 26)
!777 = !DILocation(line: 424, column: 3, scope: !743)
!778 = distinct !DISubprogram(name: "mld6_leavegroup_netif", scope: !1, file: !1, line: 437, type: !589, isLocal: false, isDefinition: true, scopeLine: 438, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !779)
!779 = !{!780, !781, !782, !783}
!780 = !DILocalVariable(name: "netif", arg: 1, scope: !778, file: !1, line: 437, type: !161)
!781 = !DILocalVariable(name: "groupaddr", arg: 2, scope: !778, file: !1, line: 437, type: !147)
!782 = !DILocalVariable(name: "group", scope: !778, file: !1, line: 439, type: !96)
!783 = !DILocalVariable(name: "ip6addr", scope: !778, file: !1, line: 441, type: !102)
!784 = !DILocation(line: 437, column: 37, scope: !778)
!785 = !DILocation(line: 437, column: 62, scope: !778)
!786 = !DILocation(line: 441, column: 3, scope: !778)
!787 = !DILocation(line: 443, column: 7, scope: !788)
!788 = distinct !DILexicalBlock(scope: !778, file: !1, line: 443, column: 7)
!789 = !DILocation(line: 444, column: 5, scope: !790)
!790 = distinct !DILexicalBlock(scope: !791, file: !1, line: 444, column: 5)
!791 = distinct !DILexicalBlock(scope: !788, file: !1, line: 443, column: 54)
!792 = !DILocation(line: 445, column: 5, scope: !791)
!793 = !DILocation(line: 447, column: 3, scope: !791)
!794 = !DILocation(line: 144, column: 34, scope: !416, inlinedAt: !795)
!795 = distinct !DILocation(line: 454, column: 11, scope: !778)
!796 = !DILocation(line: 144, column: 57, scope: !416, inlinedAt: !795)
!797 = !DILocation(line: 146, column: 29, scope: !416, inlinedAt: !795)
!798 = !DILocation(line: 146, column: 21, scope: !416, inlinedAt: !795)
!799 = !DILocation(line: 0, scope: !428, inlinedAt: !795)
!800 = !DILocation(line: 148, column: 16, scope: !416, inlinedAt: !795)
!801 = !DILocation(line: 148, column: 3, scope: !416, inlinedAt: !795)
!802 = !DILocation(line: 149, column: 9, scope: !432, inlinedAt: !795)
!803 = !DILocation(line: 149, column: 9, scope: !428, inlinedAt: !795)
!804 = !DILocation(line: 152, column: 20, scope: !428, inlinedAt: !795)
!805 = !DILocation(line: 439, column: 21, scope: !778)
!806 = !DILocation(line: 458, column: 16, scope: !807)
!807 = distinct !DILexicalBlock(scope: !808, file: !1, line: 458, column: 9)
!808 = distinct !DILexicalBlock(scope: !809, file: !1, line: 456, column: 22)
!809 = distinct !DILexicalBlock(scope: !778, file: !1, line: 456, column: 7)
!810 = !DILocation(line: 458, column: 20, scope: !807)
!811 = !DILocation(line: 458, column: 9, scope: !808)
!812 = !DILocalVariable(name: "netif", arg: 1, scope: !813, file: !1, line: 194, type: !161)
!813 = distinct !DISubprogram(name: "mld6_remove_group", scope: !1, file: !1, line: 194, type: !814, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !816)
!814 = !DISubroutineType(types: !815)
!815 = !{!156, !161, !96}
!816 = !{!812, !817, !818, !819}
!817 = !DILocalVariable(name: "group", arg: 2, scope: !813, file: !1, line: 194, type: !96)
!818 = !DILocalVariable(name: "err", scope: !813, file: !1, line: 196, type: !156)
!819 = !DILocalVariable(name: "tmpGroup", scope: !820, file: !1, line: 203, type: !96)
!820 = distinct !DILexicalBlock(scope: !821, file: !1, line: 201, column: 10)
!821 = distinct !DILexicalBlock(scope: !813, file: !1, line: 199, column: 7)
!822 = !DILocation(line: 194, column: 33, scope: !813, inlinedAt: !823)
!823 = distinct !DILocation(line: 460, column: 7, scope: !824)
!824 = distinct !DILexicalBlock(scope: !807, file: !1, line: 458, column: 26)
!825 = !DILocation(line: 194, column: 58, scope: !813, inlinedAt: !823)
!826 = !DILocation(line: 196, column: 9, scope: !813, inlinedAt: !823)
!827 = !DILocation(line: 199, column: 30, scope: !821, inlinedAt: !823)
!828 = !DILocation(line: 199, column: 7, scope: !813, inlinedAt: !823)
!829 = !DILocation(line: 200, column: 5, scope: !830, inlinedAt: !823)
!830 = distinct !DILexicalBlock(scope: !821, file: !1, line: 199, column: 40)
!831 = !DILocation(line: 201, column: 3, scope: !830, inlinedAt: !823)
!832 = !DILocation(line: 0, scope: !833, inlinedAt: !823)
!833 = distinct !DILexicalBlock(scope: !834, file: !1, line: 204, column: 5)
!834 = distinct !DILexicalBlock(scope: !820, file: !1, line: 204, column: 5)
!835 = !DILocation(line: 203, column: 23, scope: !820, inlinedAt: !823)
!836 = !DILocation(line: 204, column: 5, scope: !834, inlinedAt: !823)
!837 = !DILocation(line: 205, column: 21, scope: !838, inlinedAt: !823)
!838 = distinct !DILexicalBlock(scope: !839, file: !1, line: 205, column: 11)
!839 = distinct !DILexicalBlock(scope: !833, file: !1, line: 204, column: 90)
!840 = !DILocation(line: 205, column: 26, scope: !838, inlinedAt: !823)
!841 = !DILocation(line: 205, column: 11, scope: !839, inlinedAt: !823)
!842 = distinct !{!842, !843, !844}
!843 = !DILocation(line: 204, column: 5, scope: !834)
!844 = !DILocation(line: 209, column: 5, scope: !834)
!845 = !DILocation(line: 206, column: 33, scope: !846, inlinedAt: !823)
!846 = distinct !DILexicalBlock(scope: !838, file: !1, line: 205, column: 36)
!847 = !DILocation(line: 206, column: 24, scope: !846, inlinedAt: !823)
!848 = !DILocation(line: 211, column: 9, scope: !820, inlinedAt: !823)
!849 = !DILocation(line: 463, column: 18, scope: !850)
!850 = distinct !DILexicalBlock(scope: !824, file: !1, line: 463, column: 11)
!851 = !DILocation(line: 463, column: 11, scope: !850)
!852 = !DILocation(line: 463, column: 11, scope: !824)
!853 = !DILocation(line: 464, column: 9, scope: !854)
!854 = distinct !DILexicalBlock(scope: !850, file: !1, line: 463, column: 38)
!855 = !{!452, !278, i64 282}
!856 = !DILocation(line: 465, column: 9, scope: !854)
!857 = !DILocation(line: 466, column: 7, scope: !854)
!858 = !DILocation(line: 469, column: 18, scope: !859)
!859 = distinct !DILexicalBlock(scope: !824, file: !1, line: 469, column: 11)
!860 = !DILocation(line: 469, column: 33, scope: !859)
!861 = !DILocation(line: 469, column: 11, scope: !824)
!862 = !DILocation(line: 470, column: 9, scope: !863)
!863 = distinct !DILexicalBlock(scope: !859, file: !1, line: 469, column: 42)
!864 = !DILocation(line: 471, column: 7, scope: !863)
!865 = !DILocation(line: 474, column: 34, scope: !824)
!866 = !DILocation(line: 474, column: 7, scope: !824)
!867 = !DILocation(line: 475, column: 5, scope: !824)
!868 = !DILocation(line: 477, column: 17, scope: !869)
!869 = distinct !DILexicalBlock(scope: !807, file: !1, line: 475, column: 12)
!870 = !DILocation(line: 0, scope: !778)
!871 = !DILocation(line: 486, column: 1, scope: !778)
!872 = distinct !DISubprogram(name: "mld6_tmr", scope: !1, file: !1, line: 496, type: !873, isLocal: false, isDefinition: true, scopeLine: 497, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !875)
!873 = !DISubroutineType(types: !874)
!874 = !{null}
!875 = !{!876, !877}
!876 = !DILocalVariable(name: "netif", scope: !872, file: !1, line: 498, type: !161)
!877 = !DILocalVariable(name: "group", scope: !878, file: !1, line: 501, type: !96)
!878 = distinct !DILexicalBlock(scope: !879, file: !1, line: 500, column: 24)
!879 = distinct !DILexicalBlock(scope: !880, file: !1, line: 500, column: 3)
!880 = distinct !DILexicalBlock(scope: !872, file: !1, line: 500, column: 3)
!881 = !DILocation(line: 498, column: 17, scope: !872)
!882 = !DILocation(line: 500, column: 3, scope: !880)
!883 = !DILocation(line: 500, column: 3, scope: !879)
!884 = !DILocation(line: 501, column: 31, scope: !878)
!885 = !DILocation(line: 501, column: 23, scope: !878)
!886 = !DILocation(line: 0, scope: !887)
!887 = distinct !DILexicalBlock(scope: !878, file: !1, line: 503, column: 27)
!888 = !DILocation(line: 503, column: 18, scope: !878)
!889 = !DILocation(line: 503, column: 5, scope: !878)
!890 = !DILocation(line: 504, column: 18, scope: !891)
!891 = distinct !DILexicalBlock(scope: !887, file: !1, line: 504, column: 11)
!892 = !DILocation(line: 504, column: 24, scope: !891)
!893 = !DILocation(line: 504, column: 11, scope: !887)
!894 = !DILocation(line: 505, column: 21, scope: !895)
!895 = distinct !DILexicalBlock(scope: !891, file: !1, line: 504, column: 29)
!896 = !DILocation(line: 506, column: 26, scope: !897)
!897 = distinct !DILexicalBlock(scope: !895, file: !1, line: 506, column: 13)
!898 = !DILocation(line: 506, column: 13, scope: !895)
!899 = !DILocation(line: 508, column: 22, scope: !900)
!900 = distinct !DILexicalBlock(scope: !901, file: !1, line: 508, column: 15)
!901 = distinct !DILexicalBlock(scope: !897, file: !1, line: 506, column: 32)
!902 = !DILocation(line: 508, column: 34, scope: !900)
!903 = !DILocation(line: 508, column: 15, scope: !901)
!904 = !DILocation(line: 509, column: 13, scope: !905)
!905 = distinct !DILexicalBlock(scope: !900, file: !1, line: 508, column: 65)
!906 = !DILocation(line: 510, column: 13, scope: !905)
!907 = !DILocation(line: 511, column: 32, scope: !905)
!908 = !DILocation(line: 512, column: 11, scope: !905)
!909 = !DILocation(line: 515, column: 22, scope: !887)
!910 = distinct !{!910, !889, !911}
!911 = !DILocation(line: 516, column: 5, scope: !878)
!912 = distinct !{!912, !882, !913}
!913 = !DILocation(line: 517, column: 3, scope: !880)
!914 = !DILocation(line: 518, column: 1, scope: !872)
!915 = !DILocation(line: 65, column: 11, scope: !360)
!916 = !DILocation(line: 62, column: 16, scope: !360)
!917 = !DILocation(line: 66, column: 8, scope: !360)
!918 = !DILocation(line: 63, column: 8, scope: !360)
!919 = !DILocation(line: 67, column: 2, scope: !360)
!920 = !DILocation(line: 69, column: 2, scope: !360)
