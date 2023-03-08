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
  %17 = tail call signext i8 %13(%struct.netif* nonnull %0, %struct.ip6_addr* nonnull %16, i32 0) #5, !dbg !289
  br label %18, !dbg !290

; <label>:18:                                     ; preds = %8, %15
  tail call void @memp_free(i32 14, i8* nonnull %10) #5, !dbg !291
  %19 = icmp eq %struct.mld_group* %12, null, !dbg !271
  br i1 %19, label %20, label %8, !dbg !272, !llvm.loop !292

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
  %4 = load %struct.mld_group*, %struct.mld_group** %3, align 8, !dbg !302, !tbaa !265
  %5 = icmp eq %struct.mld_group* %4, null, !dbg !304
  br i1 %5, label %11, label %6, !dbg !305

; <label>:6:                                      ; preds = %1, %6
  %7 = phi %struct.mld_group* [ %9, %6 ], [ %4, %1 ]
  tail call fastcc void @mld6_delayed_report(%struct.mld_group* nonnull %7, i16 zeroext 500) #6, !dbg !306
  %8 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %7, i64 0, i32 0, !dbg !307
  %9 = load %struct.mld_group*, %struct.mld_group** %8, align 8, !dbg !302, !tbaa !265
  %10 = icmp eq %struct.mld_group* %9, null, !dbg !304
  br i1 %10, label %11, label %6, !dbg !305, !llvm.loop !308

; <label>:11:                                     ; preds = %6, %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !310
  ret void, !dbg !310
}

; Function Attrs: noredzone nounwind
define internal fastcc void @mld6_delayed_report(%struct.mld_group* nocapture, i16 zeroext) unnamed_addr #0 !dbg !311 {
  %3 = alloca i32, align 4
  %4 = udiv i16 %1, 100, !dbg !320
  %5 = icmp ult i16 %1, 100, !dbg !322
  %6 = select i1 %5, i16 1, i16 %4, !dbg !324
  %7 = bitcast i32* %3 to i8*, !dbg !325
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #7, !dbg !325
  %8 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !344, !srcloc !352
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !354
  %9 = icmp ult i64 %8, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !355
  br i1 %9, label %16, label %10, !dbg !355

; <label>:10:                                     ; preds = %2
  %11 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !356, !srcloc !352
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !359
  %12 = icmp ugt i64 %11, ptrtoint ([0 x i8]* @_end to i64), !dbg !355
  br i1 %12, label %16, label %13, !dbg !360

; <label>:13:                                     ; preds = %10
  %14 = tail call i64 @ukplat_lcpu_save_irqf() #5, !dbg !361
  %15 = tail call i32 @uk_swrand_randr_r(%struct.uk_swrand* nonnull @uk_swrand_def) #5, !dbg !370
  tail call void @ukplat_lcpu_restore_irqf(i64 %14) #5, !dbg !372
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !373
  store i32 %15, i32* %3, align 4, !dbg !375, !tbaa !376
  br label %25, !dbg !375

; <label>:16:                                     ; preds = %10, %2
  %17 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !378, !srcloc !352
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !388
  %18 = and i64 %17, -65536, !dbg !390
  %19 = or i64 %18, 4097, !dbg !390
  %20 = add nsw i64 %19, -1, !dbg !390
  %21 = inttoptr i64 %20 to i32*, !dbg !391
  %22 = load i32, i32* %21, align 4096, !dbg !392, !tbaa !376
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !393
  %23 = tail call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_swrand_randr\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i32 %22, i32 ()* nonnull @uk_swrand_randr) #7, !dbg !394, !srcloc !395
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %3, i64 %23) #7, !dbg !396, !srcloc !399
  %24 = load i32, i32* %3, align 4, !dbg !400, !tbaa !376
  br label %25

; <label>:25:                                     ; preds = %13, %16
  %26 = phi i32 [ %24, %16 ], [ %15, %13 ], !dbg !400
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #7, !dbg !401
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !402
  %27 = zext i16 %6 to i32, !dbg !403
  %28 = urem i32 %26, %27, !dbg !404
  %29 = trunc i32 %28 to i16, !dbg !405
  %30 = icmp eq i32 %28, 0, !dbg !406
  %31 = select i1 %30, i16 1, i16 %29, !dbg !408
  %32 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %0, i64 0, i32 3, !dbg !409
  %33 = load i8, i8* %32, align 1, !dbg !409, !tbaa !411
  switch i8 %33, label %43 [
    i8 2, label %34
    i8 1, label %36
  ], !dbg !412

; <label>:34:                                     ; preds = %25
  %35 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %0, i64 0, i32 4, !dbg !413
  br label %41, !dbg !412

; <label>:36:                                     ; preds = %25
  %37 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %0, i64 0, i32 4, !dbg !415
  %38 = load i16, i16* %37, align 2, !dbg !415, !tbaa !416
  %39 = add i16 %38, -1, !dbg !417
  %40 = icmp ult i16 %39, %31, !dbg !417
  br i1 %40, label %43, label %41, !dbg !417

; <label>:41:                                     ; preds = %34, %36
  %42 = phi i16* [ %35, %34 ], [ %37, %36 ], !dbg !413
  store i16 %31, i16* %42, align 2, !dbg !418, !tbaa !416
  store i8 1, i8* %32, align 1, !dbg !419, !tbaa !411
  br label %43, !dbg !420

; <label>:43:                                     ; preds = %36, %25, %41
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !421
  ret void, !dbg !421
}

; Function Attrs: noredzone nounwind
define dso_local %struct.mld_group* @mld6_lookfor_group(%struct.netif* nocapture readonly, %struct.ip6_addr* nocapture readonly) local_unnamed_addr #0 !dbg !422 {
  %3 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 15, i64 0, !dbg !431
  %4 = bitcast i8** %3 to %struct.mld_group**, !dbg !431
  %5 = load %struct.mld_group*, %struct.mld_group** %4, align 8, !dbg !433, !tbaa !265
  %6 = icmp eq %struct.mld_group* %5, null, !dbg !435
  br i1 %6, label %43, label %7, !dbg !436

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 0
  %9 = load i32, i32* %8, align 4, !tbaa !376
  %10 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 1
  %11 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 2
  %12 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 3
  %13 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 1
  br label %14, !dbg !436

; <label>:14:                                     ; preds = %7, %39
  %15 = phi %struct.mld_group* [ %5, %7 ], [ %41, %39 ]
  %16 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %15, i64 0, i32 1, i32 0, i64 0, !dbg !437
  %17 = load i32, i32* %16, align 8, !dbg !437, !tbaa !376
  %18 = icmp eq i32 %17, %9, !dbg !437
  br i1 %18, label %19, label %39, !dbg !437

; <label>:19:                                     ; preds = %14
  %20 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %15, i64 0, i32 1, i32 0, i64 1, !dbg !437
  %21 = load i32, i32* %20, align 4, !dbg !437, !tbaa !376
  %22 = load i32, i32* %10, align 4, !dbg !437, !tbaa !376
  %23 = icmp eq i32 %21, %22, !dbg !437
  br i1 %23, label %24, label %39, !dbg !437

; <label>:24:                                     ; preds = %19
  %25 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %15, i64 0, i32 1, i32 0, i64 2, !dbg !437
  %26 = load i32, i32* %25, align 8, !dbg !437, !tbaa !376
  %27 = load i32, i32* %11, align 4, !dbg !437, !tbaa !376
  %28 = icmp eq i32 %26, %27, !dbg !437
  br i1 %28, label %29, label %39, !dbg !437

; <label>:29:                                     ; preds = %24
  %30 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %15, i64 0, i32 1, i32 0, i64 3, !dbg !437
  %31 = load i32, i32* %30, align 4, !dbg !437, !tbaa !376
  %32 = load i32, i32* %12, align 4, !dbg !437, !tbaa !376
  %33 = icmp eq i32 %31, %32, !dbg !437
  br i1 %33, label %34, label %39, !dbg !437

; <label>:34:                                     ; preds = %29
  %35 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %15, i64 0, i32 1, i32 1, !dbg !437
  %36 = load i8, i8* %35, align 8, !dbg !437, !tbaa !439
  %37 = load i8, i8* %13, align 4, !dbg !437, !tbaa !440
  %38 = icmp eq i8 %36, %37, !dbg !437
  br i1 %38, label %43, label %39, !dbg !441

; <label>:39:                                     ; preds = %34, %29, %24, %19, %14
  %40 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %15, i64 0, i32 0, !dbg !442
  %41 = load %struct.mld_group*, %struct.mld_group** %40, align 8, !dbg !433, !tbaa !265
  %42 = icmp eq %struct.mld_group* %41, null, !dbg !435
  br i1 %42, label %43, label %14, !dbg !436, !llvm.loop !443

; <label>:43:                                     ; preds = %34, %39, %2
  %44 = phi %struct.mld_group* [ null, %2 ], [ null, %39 ], [ %15, %34 ], !dbg !433
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !445
  ret %struct.mld_group* %44, !dbg !445
}

; Function Attrs: noredzone nounwind
define dso_local void @mld6_input(%struct.pbuf*, %struct.netif* nocapture readonly) local_unnamed_addr #0 !dbg !446 {
  %3 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 1), align 2, !dbg !456, !tbaa !457
  %4 = add i16 %3, 1, !dbg !456
  store i16 %4, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 1), align 2, !dbg !456, !tbaa !457
  %5 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 3, !dbg !463
  %6 = load i16, i16* %5, align 2, !dbg !463, !tbaa !465
  %7 = icmp ult i16 %6, 24, !dbg !467
  br i1 %7, label %8, label %14, !dbg !468

; <label>:8:                                      ; preds = %2
  %9 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #5, !dbg !469
  %10 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 4), align 2, !dbg !471, !tbaa !472
  %11 = add i16 %10, 1, !dbg !471
  store i16 %11, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 4), align 2, !dbg !471, !tbaa !472
  %12 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 2), align 2, !dbg !473, !tbaa !474
  %13 = add i16 %12, 1, !dbg !473
  store i16 %13, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 2), align 2, !dbg !473, !tbaa !474
  br label %173, !dbg !475

; <label>:14:                                     ; preds = %2
  %15 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 1, !dbg !476
  %16 = bitcast i8** %15 to %struct.mld_header**, !dbg !476
  %17 = load %struct.mld_header*, %struct.mld_header** %16, align 8, !dbg !476, !tbaa !477
  %18 = getelementptr inbounds %struct.mld_header, %struct.mld_header* %17, i64 0, i32 0, !dbg !479
  %19 = load i8, i8* %18, align 1, !dbg !479, !tbaa !480
  switch i8 %19, label %166 [
    i8 -126, label %20
    i8 -125, label %120
    i8 -124, label %171
  ], !dbg !483

; <label>:20:                                     ; preds = %14
  %21 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !484, !tbaa !487
  %22 = icmp eq i32 %21, 767, !dbg !484
  %23 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 1), align 4, !dbg !484
  %24 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 2), align 4, !dbg !484
  %25 = or i32 %24, %23, !dbg !484
  %26 = icmp eq i32 %25, 0, !dbg !484
  %27 = and i1 %22, %26, !dbg !484
  %28 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 3), align 4, !dbg !484
  %29 = icmp eq i32 %28, 16777216, !dbg !484
  %30 = and i1 %29, %27, !dbg !484
  br i1 %30, label %31, label %82, !dbg !484

; <label>:31:                                     ; preds = %20
  %32 = getelementptr inbounds %struct.mld_header, %struct.mld_header* %17, i64 0, i32 5, i32 0, i64 0, !dbg !488
  %33 = load i32, i32* %32, align 1, !dbg !488, !tbaa !376
  %34 = icmp eq i32 %33, 0, !dbg !488
  br i1 %34, label %35, label %82, !dbg !488

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds %struct.mld_header, %struct.mld_header* %17, i64 0, i32 5, i32 0, i64 1, !dbg !488
  %37 = load i32, i32* %36, align 1, !dbg !488, !tbaa !376
  %38 = icmp eq i32 %37, 0, !dbg !488
  br i1 %38, label %39, label %82, !dbg !488

; <label>:39:                                     ; preds = %35
  %40 = getelementptr inbounds %struct.mld_header, %struct.mld_header* %17, i64 0, i32 5, i32 0, i64 2, !dbg !488
  %41 = load i32, i32* %40, align 1, !dbg !488, !tbaa !376
  %42 = icmp eq i32 %41, 0, !dbg !488
  br i1 %42, label %43, label %82, !dbg !488

; <label>:43:                                     ; preds = %39
  %44 = getelementptr inbounds %struct.mld_header, %struct.mld_header* %17, i64 0, i32 5, i32 0, i64 3, !dbg !488
  %45 = load i32, i32* %44, align 1, !dbg !488, !tbaa !376
  %46 = icmp eq i32 %45, 0, !dbg !488
  br i1 %46, label %47, label %82, !dbg !489

; <label>:47:                                     ; preds = %43
  %48 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 9), align 2, !dbg !490, !tbaa !492
  %49 = add i16 %48, 1, !dbg !490
  store i16 %49, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 9), align 2, !dbg !490, !tbaa !492
  %50 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 15, i64 0, !dbg !493
  %51 = bitcast i8** %50 to %struct.mld_group**, !dbg !493
  %52 = load %struct.mld_group*, %struct.mld_group** %51, align 8, !dbg !495, !tbaa !265
  %53 = icmp eq %struct.mld_group* %52, null, !dbg !497
  br i1 %53, label %171, label %54, !dbg !498

; <label>:54:                                     ; preds = %47
  %55 = getelementptr inbounds %struct.mld_header, %struct.mld_header* %17, i64 0, i32 3
  br label %56, !dbg !498

; <label>:56:                                     ; preds = %54, %78
  %57 = phi %struct.mld_group* [ %52, %54 ], [ %80, %78 ]
  %58 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %57, i64 0, i32 1, i32 0, i64 0, !dbg !499
  %59 = load i32, i32* %58, align 8, !dbg !499, !tbaa !376
  %60 = and i32 %59, 36863, !dbg !499
  %61 = icmp eq i32 %60, 511, !dbg !499
  br i1 %61, label %78, label %62, !dbg !501

; <label>:62:                                     ; preds = %56
  %63 = icmp eq i32 %59, 767, !dbg !502
  br i1 %63, label %64, label %76, !dbg !502

; <label>:64:                                     ; preds = %62
  %65 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %57, i64 0, i32 1, i32 0, i64 1, !dbg !502
  %66 = load i32, i32* %65, align 4, !dbg !502, !tbaa !376
  %67 = icmp eq i32 %66, 0, !dbg !502
  br i1 %67, label %68, label %76, !dbg !502

; <label>:68:                                     ; preds = %64
  %69 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %57, i64 0, i32 1, i32 0, i64 2, !dbg !502
  %70 = load i32, i32* %69, align 8, !dbg !502, !tbaa !376
  %71 = icmp eq i32 %70, 0, !dbg !502
  br i1 %71, label %72, label %76, !dbg !502

; <label>:72:                                     ; preds = %68
  %73 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %57, i64 0, i32 1, i32 0, i64 3, !dbg !502
  %74 = load i32, i32* %73, align 4, !dbg !502, !tbaa !376
  %75 = icmp eq i32 %74, 16777216, !dbg !502
  br i1 %75, label %78, label %76, !dbg !503

; <label>:76:                                     ; preds = %72, %68, %64, %62
  %77 = load i16, i16* %55, align 1, !dbg !504, !tbaa !506
  tail call fastcc void @mld6_delayed_report(%struct.mld_group* nonnull %57, i16 zeroext %77) #6, !dbg !507
  br label %78, !dbg !508

; <label>:78:                                     ; preds = %76, %72, %56
  %79 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %57, i64 0, i32 0, !dbg !509
  %80 = load %struct.mld_group*, %struct.mld_group** %79, align 8, !dbg !495, !tbaa !265
  %81 = icmp eq %struct.mld_group* %80, null, !dbg !497
  br i1 %81, label %171, label %56, !dbg !498, !llvm.loop !510

; <label>:82:                                     ; preds = %43, %39, %35, %31, %20
  %83 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 8), align 2, !dbg !512, !tbaa !514
  %84 = add i16 %83, 1, !dbg !512
  store i16 %84, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 8), align 2, !dbg !512, !tbaa !514
  %85 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 15, i64 0, !dbg !517
  %86 = bitcast i8** %85 to %struct.mld_group**, !dbg !517
  %87 = load %struct.mld_group*, %struct.mld_group** %86, align 8, !dbg !519, !tbaa !265
  %88 = icmp eq %struct.mld_group* %87, null, !dbg !520
  br i1 %88, label %116, label %89, !dbg !521

; <label>:89:                                     ; preds = %82
  %90 = load i8, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 1), align 4
  br label %91, !dbg !522

; <label>:91:                                     ; preds = %89, %112
  %92 = phi %struct.mld_group* [ %114, %112 ], [ %87, %89 ]
  %93 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %92, i64 0, i32 1, i32 0, i64 0, !dbg !522
  %94 = load i32, i32* %93, align 8, !dbg !522, !tbaa !376
  %95 = icmp eq i32 %94, %21, !dbg !522
  br i1 %95, label %96, label %112, !dbg !522

; <label>:96:                                     ; preds = %91
  %97 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %92, i64 0, i32 1, i32 0, i64 1, !dbg !522
  %98 = load i32, i32* %97, align 4, !dbg !522, !tbaa !376
  %99 = icmp eq i32 %98, %23, !dbg !522
  br i1 %99, label %100, label %112, !dbg !522

; <label>:100:                                    ; preds = %96
  %101 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %92, i64 0, i32 1, i32 0, i64 2, !dbg !522
  %102 = load i32, i32* %101, align 8, !dbg !522, !tbaa !376
  %103 = icmp eq i32 %102, %24, !dbg !522
  br i1 %103, label %104, label %112, !dbg !522

; <label>:104:                                    ; preds = %100
  %105 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %92, i64 0, i32 1, i32 0, i64 3, !dbg !522
  %106 = load i32, i32* %105, align 4, !dbg !522, !tbaa !376
  %107 = icmp eq i32 %106, %28, !dbg !522
  br i1 %107, label %108, label %112, !dbg !522

; <label>:108:                                    ; preds = %104
  %109 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %92, i64 0, i32 1, i32 1, !dbg !522
  %110 = load i8, i8* %109, align 8, !dbg !522, !tbaa !439
  %111 = icmp eq i8 %110, %90, !dbg !522
  br i1 %111, label %117, label %112, !dbg !523

; <label>:112:                                    ; preds = %108, %104, %100, %96, %91
  %113 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %92, i64 0, i32 0, !dbg !524
  %114 = load %struct.mld_group*, %struct.mld_group** %113, align 8, !dbg !519, !tbaa !265
  %115 = icmp eq %struct.mld_group* %114, null, !dbg !520
  br i1 %115, label %116, label %91, !dbg !521, !llvm.loop !443

; <label>:116:                                    ; preds = %112, %82
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !525
  br label %171, !dbg !526

; <label>:117:                                    ; preds = %108
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !525
  %118 = getelementptr inbounds %struct.mld_header, %struct.mld_header* %17, i64 0, i32 3, !dbg !527
  %119 = load i16, i16* %118, align 1, !dbg !527, !tbaa !506
  tail call fastcc void @mld6_delayed_report(%struct.mld_group* nonnull %92, i16 zeroext %119) #6, !dbg !530
  br label %171, !dbg !531

; <label>:120:                                    ; preds = %14
  %121 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 10), align 2, !dbg !532, !tbaa !533
  %122 = add i16 %121, 1, !dbg !532
  store i16 %122, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 10), align 2, !dbg !532, !tbaa !533
  %123 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 15, i64 0, !dbg !536
  %124 = bitcast i8** %123 to %struct.mld_group**, !dbg !536
  %125 = load %struct.mld_group*, %struct.mld_group** %124, align 8, !dbg !538, !tbaa !265
  %126 = icmp eq %struct.mld_group* %125, null, !dbg !539
  br i1 %126, label %158, label %127, !dbg !540

; <label>:127:                                    ; preds = %120
  %128 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 0), align 4, !tbaa !376
  %129 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 1), align 4
  %130 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 2), align 4
  %131 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 3), align 4
  %132 = load i8, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 1), align 4
  br label %133, !dbg !540

; <label>:133:                                    ; preds = %154, %127
  %134 = phi %struct.mld_group* [ %125, %127 ], [ %156, %154 ]
  %135 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %134, i64 0, i32 1, i32 0, i64 0, !dbg !541
  %136 = load i32, i32* %135, align 8, !dbg !541, !tbaa !376
  %137 = icmp eq i32 %136, %128, !dbg !541
  br i1 %137, label %138, label %154, !dbg !541

; <label>:138:                                    ; preds = %133
  %139 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %134, i64 0, i32 1, i32 0, i64 1, !dbg !541
  %140 = load i32, i32* %139, align 4, !dbg !541, !tbaa !376
  %141 = icmp eq i32 %140, %129, !dbg !541
  br i1 %141, label %142, label %154, !dbg !541

; <label>:142:                                    ; preds = %138
  %143 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %134, i64 0, i32 1, i32 0, i64 2, !dbg !541
  %144 = load i32, i32* %143, align 8, !dbg !541, !tbaa !376
  %145 = icmp eq i32 %144, %130, !dbg !541
  br i1 %145, label %146, label %154, !dbg !541

; <label>:146:                                    ; preds = %142
  %147 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %134, i64 0, i32 1, i32 0, i64 3, !dbg !541
  %148 = load i32, i32* %147, align 4, !dbg !541, !tbaa !376
  %149 = icmp eq i32 %148, %131, !dbg !541
  br i1 %149, label %150, label %154, !dbg !541

; <label>:150:                                    ; preds = %146
  %151 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %134, i64 0, i32 1, i32 1, !dbg !541
  %152 = load i8, i8* %151, align 8, !dbg !541, !tbaa !439
  %153 = icmp eq i8 %152, %132, !dbg !541
  br i1 %153, label %159, label %154, !dbg !542

; <label>:154:                                    ; preds = %150, %146, %142, %138, %133
  %155 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %134, i64 0, i32 0, !dbg !543
  %156 = load %struct.mld_group*, %struct.mld_group** %155, align 8, !dbg !538, !tbaa !265
  %157 = icmp eq %struct.mld_group* %156, null, !dbg !539
  br i1 %157, label %158, label %133, !dbg !540, !llvm.loop !443

; <label>:158:                                    ; preds = %154, %120
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !544
  br label %171, !dbg !545

; <label>:159:                                    ; preds = %150
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !544
  %160 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %134, i64 0, i32 3, !dbg !546
  %161 = load i8, i8* %160, align 1, !dbg !546, !tbaa !411
  %162 = icmp eq i8 %161, 1, !dbg !550
  br i1 %162, label %163, label %171, !dbg !551

; <label>:163:                                    ; preds = %159
  %164 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %134, i64 0, i32 4, !dbg !552
  store i16 0, i16* %164, align 2, !dbg !554, !tbaa !416
  store i8 2, i8* %160, align 1, !dbg !555, !tbaa !411
  %165 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %134, i64 0, i32 2, !dbg !556
  store i8 0, i8* %165, align 4, !dbg !557, !tbaa !558
  br label %171, !dbg !559

; <label>:166:                                    ; preds = %14
  %167 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 6), align 2, !dbg !560, !tbaa !561
  %168 = add i16 %167, 1, !dbg !560
  store i16 %168, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 6), align 2, !dbg !560, !tbaa !561
  %169 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 2), align 2, !dbg !562, !tbaa !474
  %170 = add i16 %169, 1, !dbg !562
  store i16 %170, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 2), align 2, !dbg !562, !tbaa !474
  br label %171, !dbg !563

; <label>:171:                                    ; preds = %78, %47, %158, %116, %163, %159, %117, %166, %14
  %172 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %0) #5, !dbg !564
  br label %173, !dbg !565

; <label>:173:                                    ; preds = %171, %8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !565
  ret void, !dbg !565
}

; Function Attrs: noredzone
declare dso_local zeroext i8 @pbuf_free(%struct.pbuf*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local signext i8 @mld6_joingroup(%struct.ip6_addr*, %struct.ip6_addr*) local_unnamed_addr #0 !dbg !566 {
  %3 = load %struct.netif*, %struct.netif** @netif_list, align 8, !dbg !578, !tbaa !265
  %4 = icmp eq %struct.netif* %3, null, !dbg !580
  br i1 %4, label %37, label %5, !dbg !578

; <label>:5:                                      ; preds = %2
  %6 = icmp eq %struct.ip6_addr* %0, null
  %7 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 0
  %8 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 1
  %9 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 2
  %10 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 3
  br label %11, !dbg !578

; <label>:11:                                     ; preds = %5, %32
  %12 = phi %struct.netif* [ %3, %5 ], [ %35, %32 ]
  %13 = phi i8 [ -6, %5 ], [ %33, %32 ]
  br i1 %6, label %29, label %14, !dbg !582

; <label>:14:                                     ; preds = %11
  %15 = load i32, i32* %7, align 4, !dbg !582, !tbaa !376
  %16 = icmp eq i32 %15, 0, !dbg !582
  br i1 %16, label %17, label %26, !dbg !582

; <label>:17:                                     ; preds = %14
  %18 = load i32, i32* %8, align 4, !dbg !582, !tbaa !376
  %19 = icmp eq i32 %18, 0, !dbg !582
  br i1 %19, label %20, label %26, !dbg !582

; <label>:20:                                     ; preds = %17
  %21 = load i32, i32* %9, align 4, !dbg !582, !tbaa !376
  %22 = icmp eq i32 %21, 0, !dbg !582
  br i1 %22, label %23, label %26, !dbg !582

; <label>:23:                                     ; preds = %20
  %24 = load i32, i32* %10, align 4, !dbg !582, !tbaa !376
  %25 = icmp eq i32 %24, 0, !dbg !582
  br i1 %25, label %29, label %26, !dbg !585

; <label>:26:                                     ; preds = %23, %20, %17, %14
  %27 = tail call signext i8 @netif_get_ip6_addr_match(%struct.netif* nonnull %12, %struct.ip6_addr* nonnull %0) #5, !dbg !586
  %28 = icmp sgt i8 %27, -1, !dbg !587
  br i1 %28, label %29, label %32, !dbg !588

; <label>:29:                                     ; preds = %26, %23, %11
  %30 = tail call signext i8 @mld6_joingroup_netif(%struct.netif* nonnull %12, %struct.ip6_addr* %1) #6, !dbg !589
  %31 = icmp eq i8 %30, 0, !dbg !591
  br i1 %31, label %32, label %37, !dbg !593

; <label>:32:                                     ; preds = %29, %26
  %33 = phi i8 [ 0, %29 ], [ %13, %26 ], !dbg !594
  %34 = getelementptr inbounds %struct.netif, %struct.netif* %12, i64 0, i32 0, !dbg !580
  %35 = load %struct.netif*, %struct.netif** %34, align 8, !dbg !578, !tbaa !265
  %36 = icmp eq %struct.netif* %35, null, !dbg !580
  br i1 %36, label %37, label %11, !dbg !578, !llvm.loop !595

; <label>:37:                                     ; preds = %29, %32, %2
  %38 = phi i8 [ -6, %2 ], [ %33, %32 ], [ %30, %29 ], !dbg !594
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !597
  ret i8 %38, !dbg !597
}

; Function Attrs: noredzone
declare dso_local signext i8 @netif_get_ip6_addr_match(%struct.netif*, %struct.ip6_addr*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local signext i8 @mld6_joingroup_netif(%struct.netif*, %struct.ip6_addr*) local_unnamed_addr #0 !dbg !598 {
  %3 = alloca %struct.ip6_addr, align 4
  %4 = bitcast %struct.ip6_addr* %3 to i8*, !dbg !608
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %4) #7, !dbg !608
  %5 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 1, !dbg !609
  %6 = load i8, i8* %5, align 4, !dbg !609, !tbaa !440
  %7 = icmp eq i8 %6, 0, !dbg !609
  br i1 %7, label %8, label %37, !dbg !609

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 0, !dbg !609
  %10 = load i32, i32* %9, align 4, !dbg !609, !tbaa !376
  %11 = and i32 %10, 49407, !dbg !609
  %12 = icmp eq i32 %11, 33022, !dbg !609
  br i1 %12, label %16, label %13, !dbg !609

; <label>:13:                                     ; preds = %8
  %14 = trunc i32 %10 to i16, !dbg !609
  %15 = and i16 %14, -28673, !dbg !609
  switch i16 %15, label %37 [
    i16 511, label %16
    i16 767, label %16
  ], !dbg !609

; <label>:16:                                     ; preds = %13, %13, %8
  %17 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %3, i64 0, i32 0, i64 0, !dbg !611
  store i32 %10, i32* %17, align 4, !dbg !611, !tbaa !376
  %18 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 1, !dbg !611
  %19 = load i32, i32* %18, align 4, !dbg !611, !tbaa !376
  %20 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %3, i64 0, i32 0, i64 1, !dbg !611
  store i32 %19, i32* %20, align 4, !dbg !611, !tbaa !376
  %21 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 2, !dbg !611
  %22 = load i32, i32* %21, align 4, !dbg !611, !tbaa !376
  %23 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %3, i64 0, i32 0, i64 2, !dbg !611
  store i32 %22, i32* %23, align 4, !dbg !611, !tbaa !376
  %24 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 3, !dbg !611
  %25 = load i32, i32* %24, align 4, !dbg !611, !tbaa !376
  %26 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %3, i64 0, i32 0, i64 3, !dbg !611
  store i32 %25, i32* %26, align 4, !dbg !611, !tbaa !376
  %27 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %3, i64 0, i32 1, !dbg !611
  store i8 0, i8* %27, align 4, !dbg !611, !tbaa !440
  br i1 %12, label %31, label %28, !dbg !614

; <label>:28:                                     ; preds = %16
  %29 = trunc i32 %10 to i16, !dbg !614
  %30 = and i16 %29, -28673, !dbg !614
  switch i16 %30, label %35 [
    i16 511, label %31
    i16 767, label %31
  ], !dbg !614

; <label>:31:                                     ; preds = %28, %28, %16
  %32 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 23, !dbg !614
  %33 = load i8, i8* %32, align 8, !dbg !614, !tbaa !615
  %34 = add i8 %33, 1, !dbg !614
  br label %35, !dbg !614

; <label>:35:                                     ; preds = %28, %31
  %36 = phi i8 [ %34, %31 ], [ 0, %28 ]
  store i8 %36, i8* %27, align 4, !dbg !614, !tbaa !440
  br label %37, !dbg !616

; <label>:37:                                     ; preds = %13, %2, %35
  %38 = phi i8 [ %6, %2 ], [ %36, %35 ], [ 0, %13 ]
  %39 = phi %struct.ip6_addr* [ %1, %2 ], [ %3, %35 ], [ %1, %13 ]
  %40 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 15, i64 0, !dbg !620
  %41 = bitcast i8** %40 to %struct.mld_group**, !dbg !620
  %42 = load %struct.mld_group*, %struct.mld_group** %41, align 8, !dbg !622, !tbaa !265
  %43 = icmp eq %struct.mld_group* %42, null, !dbg !623
  br i1 %43, label %79, label %44, !dbg !624

; <label>:44:                                     ; preds = %37
  %45 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %39, i64 0, i32 0, i64 0
  %46 = load i32, i32* %45, align 4, !tbaa !376
  %47 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %39, i64 0, i32 0, i64 1
  %48 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %39, i64 0, i32 0, i64 2
  %49 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %39, i64 0, i32 0, i64 3
  br label %50, !dbg !624

; <label>:50:                                     ; preds = %74, %44
  %51 = phi %struct.mld_group* [ %42, %44 ], [ %76, %74 ]
  %52 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %51, i64 0, i32 1, i32 0, i64 0, !dbg !625
  %53 = load i32, i32* %52, align 8, !dbg !625, !tbaa !376
  %54 = icmp eq i32 %53, %46, !dbg !625
  br i1 %54, label %55, label %74, !dbg !625

; <label>:55:                                     ; preds = %50
  %56 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %51, i64 0, i32 1, i32 0, i64 1, !dbg !625
  %57 = load i32, i32* %56, align 4, !dbg !625, !tbaa !376
  %58 = load i32, i32* %47, align 4, !dbg !625, !tbaa !376
  %59 = icmp eq i32 %57, %58, !dbg !625
  br i1 %59, label %60, label %74, !dbg !625

; <label>:60:                                     ; preds = %55
  %61 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %51, i64 0, i32 1, i32 0, i64 2, !dbg !625
  %62 = load i32, i32* %61, align 8, !dbg !625, !tbaa !376
  %63 = load i32, i32* %48, align 4, !dbg !625, !tbaa !376
  %64 = icmp eq i32 %62, %63, !dbg !625
  br i1 %64, label %65, label %74, !dbg !625

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %51, i64 0, i32 1, i32 0, i64 3, !dbg !625
  %67 = load i32, i32* %66, align 4, !dbg !625, !tbaa !376
  %68 = load i32, i32* %49, align 4, !dbg !625, !tbaa !376
  %69 = icmp eq i32 %67, %68, !dbg !625
  br i1 %69, label %70, label %74, !dbg !625

; <label>:70:                                     ; preds = %65
  %71 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %51, i64 0, i32 1, i32 1, !dbg !625
  %72 = load i8, i8* %71, align 8, !dbg !625, !tbaa !439
  %73 = icmp eq i8 %72, %38, !dbg !625
  br i1 %73, label %78, label %74, !dbg !626

; <label>:74:                                     ; preds = %70, %65, %60, %55, %50
  %75 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %51, i64 0, i32 0, !dbg !627
  %76 = load %struct.mld_group*, %struct.mld_group** %75, align 8, !dbg !622, !tbaa !265
  %77 = icmp eq %struct.mld_group* %76, null, !dbg !623
  br i1 %77, label %79, label %50, !dbg !624, !llvm.loop !443

; <label>:78:                                     ; preds = %70
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !628
  br label %127

; <label>:79:                                     ; preds = %74, %37
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !628
  %80 = tail call i8* @memp_malloc(i32 14) #5, !dbg !640
  %81 = bitcast i8* %80 to %struct.mld_group*, !dbg !641
  %82 = icmp eq i8* %80, null, !dbg !643
  br i1 %82, label %121, label %83, !dbg !645

; <label>:83:                                     ; preds = %79
  %84 = icmp eq %struct.ip6_addr* %39, null, !dbg !646
  br i1 %84, label %85, label %88, !dbg !646

; <label>:85:                                     ; preds = %83
  %86 = getelementptr inbounds i8, i8* %80, i64 8, !dbg !646
  %87 = bitcast i8* %86 to <4 x i32>*, !dbg !646
  store <4 x i32> zeroinitializer, <4 x i32>* %87, align 8, !dbg !646, !tbaa !376
  br label %107, !dbg !646

; <label>:88:                                     ; preds = %83
  %89 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %39, i64 0, i32 0, i64 0, !dbg !646
  %90 = load i32, i32* %89, align 4, !dbg !646, !tbaa !376
  %91 = getelementptr inbounds i8, i8* %80, i64 8, !dbg !646
  %92 = bitcast i8* %91 to i32*, !dbg !646
  store i32 %90, i32* %92, align 8, !dbg !646, !tbaa !376
  %93 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %39, i64 0, i32 0, i64 1, !dbg !646
  %94 = load i32, i32* %93, align 4, !dbg !646, !tbaa !376
  %95 = getelementptr inbounds i8, i8* %80, i64 12, !dbg !646
  %96 = bitcast i8* %95 to i32*, !dbg !646
  store i32 %94, i32* %96, align 4, !dbg !646, !tbaa !376
  %97 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %39, i64 0, i32 0, i64 2, !dbg !646
  %98 = load i32, i32* %97, align 4, !dbg !646, !tbaa !376
  %99 = getelementptr inbounds i8, i8* %80, i64 16, !dbg !646
  %100 = bitcast i8* %99 to i32*, !dbg !646
  store i32 %98, i32* %100, align 8, !dbg !646, !tbaa !376
  %101 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %39, i64 0, i32 0, i64 3, !dbg !646
  %102 = load i32, i32* %101, align 4, !dbg !646, !tbaa !376
  %103 = getelementptr inbounds i8, i8* %80, i64 20, !dbg !646
  %104 = bitcast i8* %103 to i32*, !dbg !646
  store i32 %102, i32* %104, align 4, !dbg !646, !tbaa !376
  %105 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %39, i64 0, i32 1, !dbg !646
  %106 = load i8, i8* %105, align 4, !dbg !646, !tbaa !440
  br label %107, !dbg !646

; <label>:107:                                    ; preds = %85, %88
  %108 = phi i8 [ %106, %88 ], [ 0, %85 ]
  %109 = getelementptr inbounds i8, i8* %80, i64 24, !dbg !646
  store i8 %108, i8* %109, align 8, !dbg !646, !tbaa !439
  %110 = getelementptr inbounds i8, i8* %80, i64 30, !dbg !649
  %111 = bitcast i8* %110 to i16*, !dbg !649
  store i16 0, i16* %111, align 2, !dbg !650, !tbaa !416
  %112 = getelementptr inbounds i8, i8* %80, i64 29, !dbg !651
  store i8 2, i8* %112, align 1, !dbg !652, !tbaa !411
  %113 = getelementptr inbounds i8, i8* %80, i64 28, !dbg !653
  store i8 0, i8* %113, align 4, !dbg !654, !tbaa !558
  %114 = getelementptr inbounds i8, i8* %80, i64 32, !dbg !655
  store i8 0, i8* %114, align 8, !dbg !656, !tbaa !657
  %115 = bitcast i8** %40 to i64*, !dbg !658
  %116 = load i64, i64* %115, align 8, !dbg !658, !tbaa !265
  %117 = bitcast i8* %80 to i64*, !dbg !659
  store i64 %116, i64* %117, align 8, !dbg !659, !tbaa !275
  store i8* %80, i8** %40, align 8, !dbg !660, !tbaa !265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !661
  %118 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 26, !dbg !662
  %119 = load i8 (%struct.netif*, %struct.ip6_addr*, i32)*, i8 (%struct.netif*, %struct.ip6_addr*, i32)** %118, align 8, !dbg !662, !tbaa !282
  %120 = icmp eq i8 (%struct.netif*, %struct.ip6_addr*, i32)* %119, null, !dbg !664
  br i1 %120, label %124, label %122, !dbg !665

; <label>:121:                                    ; preds = %79
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !661
  br label %132, !dbg !666

; <label>:122:                                    ; preds = %107
  %123 = call signext i8 %119(%struct.netif* nonnull %0, %struct.ip6_addr* %39, i32 1) #5, !dbg !667
  br label %124, !dbg !669

; <label>:124:                                    ; preds = %107, %122
  %125 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 13), align 2, !dbg !670, !tbaa !671
  %126 = add i16 %125, 1, !dbg !670
  store i16 %126, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 13), align 2, !dbg !670, !tbaa !671
  call fastcc void @mld6_send(%struct.netif* nonnull %0, %struct.mld_group* nonnull %81, i8 zeroext -125) #6, !dbg !672
  call fastcc void @mld6_delayed_report(%struct.mld_group* nonnull %81, i16 zeroext 500) #6, !dbg !673
  br label %127, !dbg !674

; <label>:127:                                    ; preds = %78, %124
  %128 = phi %struct.mld_group* [ %81, %124 ], [ %51, %78 ], !dbg !675
  %129 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %128, i64 0, i32 5, !dbg !676
  %130 = load i8, i8* %129, align 8, !dbg !677, !tbaa !657
  %131 = add i8 %130, 1, !dbg !677
  store i8 %131, i8* %129, align 8, !dbg !677, !tbaa !657
  br label %132, !dbg !678

; <label>:132:                                    ; preds = %121, %127
  %133 = phi i8 [ 0, %127 ], [ -1, %121 ], !dbg !675
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %4) #7, !dbg !679
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !679
  ret i8 %133, !dbg !679
}

; Function Attrs: noredzone nounwind
define internal fastcc void @mld6_send(%struct.netif*, %struct.mld_group*, i8 zeroext) unnamed_addr #0 !dbg !680 {
  %4 = tail call %struct.pbuf* @pbuf_alloc(i32 54, i16 zeroext 32, i32 640) #5, !dbg !693
  %5 = icmp eq %struct.pbuf* %4, null, !dbg !695
  br i1 %5, label %6, label %9, !dbg !697

; <label>:6:                                      ; preds = %3
  %7 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 5), align 2, !dbg !698, !tbaa !700
  %8 = add i16 %7, 1, !dbg !698
  store i16 %8, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 5), align 2, !dbg !698, !tbaa !700
  br label %82, !dbg !701

; <label>:9:                                      ; preds = %3
  %10 = tail call zeroext i8 @pbuf_remove_header(%struct.pbuf* nonnull %4, i64 8) #5, !dbg !702
  %11 = icmp eq i8 %10, 0, !dbg !702
  br i1 %11, label %16, label %12, !dbg !704

; <label>:12:                                     ; preds = %9
  %13 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %4) #5, !dbg !705
  %14 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 4), align 2, !dbg !707, !tbaa !472
  %15 = add i16 %14, 1, !dbg !707
  store i16 %15, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 4), align 2, !dbg !707, !tbaa !472
  br label %82, !dbg !708

; <label>:16:                                     ; preds = %9
  %17 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 0, !dbg !709
  %18 = load i8, i8* %17, align 8, !dbg !709, !tbaa !487
  %19 = and i8 %18, 16, !dbg !709
  %20 = icmp eq i8 %19, 0, !dbg !709
  %21 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, !dbg !711
  %22 = select i1 %20, %struct.ip6_addr* getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip6_addr_any, i64 0, i32 0, i32 0), %struct.ip6_addr* %21, !dbg !714
  %23 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %4, i64 0, i32 1, !dbg !715
  %24 = bitcast i8** %23 to %struct.mld_header**, !dbg !715
  %25 = load %struct.mld_header*, %struct.mld_header** %24, align 8, !dbg !715, !tbaa !477
  %26 = getelementptr inbounds %struct.mld_header, %struct.mld_header* %25, i64 0, i32 0, !dbg !717
  store i8 %2, i8* %26, align 1, !dbg !718, !tbaa !480
  %27 = getelementptr inbounds %struct.mld_header, %struct.mld_header* %25, i64 0, i32 1, !dbg !719
  store i8 0, i8* %27, align 1, !dbg !720, !tbaa !721
  %28 = getelementptr inbounds %struct.mld_header, %struct.mld_header* %25, i64 0, i32 2, !dbg !722
  store i16 0, i16* %28, align 1, !dbg !723, !tbaa !724
  %29 = getelementptr inbounds %struct.mld_header, %struct.mld_header* %25, i64 0, i32 3, !dbg !725
  store i16 0, i16* %29, align 1, !dbg !726, !tbaa !506
  %30 = getelementptr inbounds %struct.mld_header, %struct.mld_header* %25, i64 0, i32 4, !dbg !727
  store i16 0, i16* %30, align 1, !dbg !728, !tbaa !729
  %31 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %1, i64 0, i32 1, !dbg !730
  %32 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %31, i64 0, i32 0, i64 0, !dbg !730
  %33 = load i32, i32* %32, align 8, !dbg !730, !tbaa !376
  %34 = getelementptr inbounds %struct.mld_header, %struct.mld_header* %25, i64 0, i32 5, i32 0, i64 0, !dbg !730
  store i32 %33, i32* %34, align 1, !dbg !730, !tbaa !376
  %35 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %1, i64 0, i32 1, i32 0, i64 1, !dbg !730
  %36 = load i32, i32* %35, align 4, !dbg !730, !tbaa !376
  %37 = getelementptr inbounds %struct.mld_header, %struct.mld_header* %25, i64 0, i32 5, i32 0, i64 1, !dbg !730
  store i32 %36, i32* %37, align 1, !dbg !730, !tbaa !376
  %38 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %1, i64 0, i32 1, i32 0, i64 2, !dbg !730
  %39 = load i32, i32* %38, align 8, !dbg !730, !tbaa !376
  %40 = getelementptr inbounds %struct.mld_header, %struct.mld_header* %25, i64 0, i32 5, i32 0, i64 2, !dbg !730
  store i32 %39, i32* %40, align 1, !dbg !730, !tbaa !376
  %41 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %1, i64 0, i32 1, i32 0, i64 3, !dbg !730
  %42 = load i32, i32* %41, align 4, !dbg !730, !tbaa !376
  %43 = getelementptr inbounds %struct.mld_header, %struct.mld_header* %25, i64 0, i32 5, i32 0, i64 3, !dbg !730
  store i32 %42, i32* %43, align 1, !dbg !730, !tbaa !376
  %44 = icmp eq %struct.netif* %0, null, !dbg !732
  br i1 %44, label %50, label %45, !dbg !732

; <label>:45:                                     ; preds = %16
  %46 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 16, !dbg !732
  %47 = load i16, i16* %46, align 8, !dbg !732, !tbaa !734
  %48 = and i16 %47, 16, !dbg !732
  %49 = icmp eq i16 %48, 0, !dbg !732
  br i1 %49, label %54, label %50, !dbg !735

; <label>:50:                                     ; preds = %45, %16
  %51 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %4, i64 0, i32 3, !dbg !736
  %52 = load i16, i16* %51, align 2, !dbg !736, !tbaa !465
  %53 = tail call zeroext i16 @ip6_chksum_pseudo(%struct.pbuf* nonnull %4, i8 zeroext 58, i16 zeroext %52, %struct.ip6_addr* %22, %struct.ip6_addr* nonnull %31) #5, !dbg !738
  store i16 %53, i16* %28, align 1, !dbg !739, !tbaa !724
  br label %54, !dbg !740

; <label>:54:                                     ; preds = %45, %50
  %55 = tail call signext i8 @ip6_options_add_hbh_ra(%struct.pbuf* nonnull %4, i8 zeroext 58, i8 zeroext 0) #5, !dbg !741
  %56 = icmp eq i8 %2, -125, !dbg !742
  br i1 %56, label %57, label %59, !dbg !744

; <label>:57:                                     ; preds = %54
  %58 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %1, i64 0, i32 2, !dbg !745
  store i8 1, i8* %58, align 4, !dbg !747, !tbaa !558
  br label %59, !dbg !748

; <label>:59:                                     ; preds = %57, %54
  %60 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 0), align 2, !dbg !749, !tbaa !750
  %61 = add i16 %60, 1, !dbg !749
  store i16 %61, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 0), align 2, !dbg !749, !tbaa !750
  %62 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %22, i64 0, i32 0, i64 0, !dbg !751
  %63 = load i32, i32* %62, align 4, !dbg !751, !tbaa !376
  %64 = icmp eq i32 %63, 0, !dbg !751
  br i1 %64, label %65, label %77, !dbg !751

; <label>:65:                                     ; preds = %59
  %66 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %22, i64 0, i32 0, i64 1, !dbg !751
  %67 = load i32, i32* %66, align 4, !dbg !751, !tbaa !376
  %68 = icmp eq i32 %67, 0, !dbg !751
  br i1 %68, label %69, label %77, !dbg !751

; <label>:69:                                     ; preds = %65
  %70 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %22, i64 0, i32 0, i64 2, !dbg !751
  %71 = load i32, i32* %70, align 4, !dbg !751, !tbaa !376
  %72 = icmp eq i32 %71, 0, !dbg !751
  br i1 %72, label %73, label %77, !dbg !751

; <label>:73:                                     ; preds = %69
  %74 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %22, i64 0, i32 0, i64 3, !dbg !751
  %75 = load i32, i32* %74, align 4, !dbg !751, !tbaa !376
  %76 = icmp eq i32 %75, 0, !dbg !751
  br i1 %76, label %78, label %77, !dbg !752

; <label>:77:                                     ; preds = %73, %69, %65, %59
  br label %78, !dbg !752

; <label>:78:                                     ; preds = %73, %77
  %79 = phi %struct.ip6_addr* [ %22, %77 ], [ null, %73 ], !dbg !752
  %80 = tail call signext i8 @ip6_output_if(%struct.pbuf* nonnull %4, %struct.ip6_addr* %79, %struct.ip6_addr* nonnull %31, i8 zeroext 1, i8 zeroext 0, i8 zeroext 0, %struct.netif* %0) #5, !dbg !753
  %81 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %4) #5, !dbg !754
  br label %82, !dbg !755

; <label>:82:                                     ; preds = %78, %12, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !755
  ret void, !dbg !755
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @mld6_leavegroup(%struct.ip6_addr*, %struct.ip6_addr*) local_unnamed_addr #0 !dbg !756 {
  %3 = load %struct.netif*, %struct.netif** @netif_list, align 8, !dbg !772, !tbaa !265
  %4 = icmp eq %struct.netif* %3, null, !dbg !773
  br i1 %4, label %38, label %5, !dbg !772

; <label>:5:                                      ; preds = %2
  %6 = icmp eq %struct.ip6_addr* %0, null
  %7 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 0
  %8 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 1
  %9 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 2
  %10 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 3
  br label %11, !dbg !772

; <label>:11:                                     ; preds = %5, %33
  %12 = phi %struct.netif* [ %3, %5 ], [ %36, %33 ]
  %13 = phi i8 [ -6, %5 ], [ %34, %33 ]
  br i1 %6, label %29, label %14, !dbg !774

; <label>:14:                                     ; preds = %11
  %15 = load i32, i32* %7, align 4, !dbg !774, !tbaa !376
  %16 = icmp eq i32 %15, 0, !dbg !774
  br i1 %16, label %17, label %26, !dbg !774

; <label>:17:                                     ; preds = %14
  %18 = load i32, i32* %8, align 4, !dbg !774, !tbaa !376
  %19 = icmp eq i32 %18, 0, !dbg !774
  br i1 %19, label %20, label %26, !dbg !774

; <label>:20:                                     ; preds = %17
  %21 = load i32, i32* %9, align 4, !dbg !774, !tbaa !376
  %22 = icmp eq i32 %21, 0, !dbg !774
  br i1 %22, label %23, label %26, !dbg !774

; <label>:23:                                     ; preds = %20
  %24 = load i32, i32* %10, align 4, !dbg !774, !tbaa !376
  %25 = icmp eq i32 %24, 0, !dbg !774
  br i1 %25, label %29, label %26, !dbg !775

; <label>:26:                                     ; preds = %23, %20, %17, %14
  %27 = tail call signext i8 @netif_get_ip6_addr_match(%struct.netif* nonnull %12, %struct.ip6_addr* nonnull %0) #5, !dbg !776
  %28 = icmp sgt i8 %27, -1, !dbg !777
  br i1 %28, label %29, label %33, !dbg !778

; <label>:29:                                     ; preds = %26, %23, %11
  %30 = tail call signext i8 @mld6_leavegroup_netif(%struct.netif* nonnull %12, %struct.ip6_addr* %1) #6, !dbg !779
  %31 = icmp eq i8 %13, 0, !dbg !781
  %32 = select i1 %31, i8 0, i8 %30, !dbg !783
  br label %33, !dbg !784

; <label>:33:                                     ; preds = %26, %29
  %34 = phi i8 [ %32, %29 ], [ %13, %26 ], !dbg !785
  %35 = getelementptr inbounds %struct.netif, %struct.netif* %12, i64 0, i32 0, !dbg !773
  %36 = load %struct.netif*, %struct.netif** %35, align 8, !dbg !772, !tbaa !265
  %37 = icmp eq %struct.netif* %36, null, !dbg !773
  br i1 %37, label %38, label %11, !dbg !772, !llvm.loop !786

; <label>:38:                                     ; preds = %33, %2
  %39 = phi i8 [ -6, %2 ], [ %34, %33 ], !dbg !788
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !790
  ret i8 %39, !dbg !790
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @mld6_leavegroup_netif(%struct.netif*, %struct.ip6_addr*) local_unnamed_addr #0 !dbg !791 {
  %3 = alloca %struct.ip6_addr, align 4
  %4 = bitcast %struct.ip6_addr* %3 to i8*, !dbg !799
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %4) #7, !dbg !799
  %5 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 1, !dbg !800
  %6 = load i8, i8* %5, align 4, !dbg !800, !tbaa !440
  %7 = icmp eq i8 %6, 0, !dbg !800
  br i1 %7, label %8, label %37, !dbg !800

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 0, !dbg !800
  %10 = load i32, i32* %9, align 4, !dbg !800, !tbaa !376
  %11 = and i32 %10, 49407, !dbg !800
  %12 = icmp eq i32 %11, 33022, !dbg !800
  br i1 %12, label %16, label %13, !dbg !800

; <label>:13:                                     ; preds = %8
  %14 = trunc i32 %10 to i16, !dbg !800
  %15 = and i16 %14, -28673, !dbg !800
  switch i16 %15, label %37 [
    i16 511, label %16
    i16 767, label %16
  ], !dbg !800

; <label>:16:                                     ; preds = %13, %13, %8
  %17 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %3, i64 0, i32 0, i64 0, !dbg !802
  store i32 %10, i32* %17, align 4, !dbg !802, !tbaa !376
  %18 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 1, !dbg !802
  %19 = load i32, i32* %18, align 4, !dbg !802, !tbaa !376
  %20 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %3, i64 0, i32 0, i64 1, !dbg !802
  store i32 %19, i32* %20, align 4, !dbg !802, !tbaa !376
  %21 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 2, !dbg !802
  %22 = load i32, i32* %21, align 4, !dbg !802, !tbaa !376
  %23 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %3, i64 0, i32 0, i64 2, !dbg !802
  store i32 %22, i32* %23, align 4, !dbg !802, !tbaa !376
  %24 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 3, !dbg !802
  %25 = load i32, i32* %24, align 4, !dbg !802, !tbaa !376
  %26 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %3, i64 0, i32 0, i64 3, !dbg !802
  store i32 %25, i32* %26, align 4, !dbg !802, !tbaa !376
  %27 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %3, i64 0, i32 1, !dbg !802
  store i8 0, i8* %27, align 4, !dbg !802, !tbaa !440
  br i1 %12, label %31, label %28, !dbg !805

; <label>:28:                                     ; preds = %16
  %29 = trunc i32 %10 to i16, !dbg !805
  %30 = and i16 %29, -28673, !dbg !805
  switch i16 %30, label %35 [
    i16 511, label %31
    i16 767, label %31
  ], !dbg !805

; <label>:31:                                     ; preds = %28, %28, %16
  %32 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 23, !dbg !805
  %33 = load i8, i8* %32, align 8, !dbg !805, !tbaa !615
  %34 = add i8 %33, 1, !dbg !805
  br label %35, !dbg !805

; <label>:35:                                     ; preds = %28, %31
  %36 = phi i8 [ %34, %31 ], [ 0, %28 ]
  store i8 %36, i8* %27, align 4, !dbg !805, !tbaa !440
  br label %37, !dbg !806

; <label>:37:                                     ; preds = %13, %2, %35
  %38 = phi i8 [ %6, %2 ], [ %36, %35 ], [ 0, %13 ]
  %39 = phi %struct.ip6_addr* [ %1, %2 ], [ %3, %35 ], [ %1, %13 ]
  %40 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 15, i64 0, !dbg !810
  %41 = bitcast i8** %40 to %struct.mld_group**, !dbg !810
  %42 = load %struct.mld_group*, %struct.mld_group** %41, align 8, !dbg !812, !tbaa !265
  %43 = icmp eq %struct.mld_group* %42, null, !dbg !813
  br i1 %43, label %78, label %44, !dbg !814

; <label>:44:                                     ; preds = %37
  %45 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %39, i64 0, i32 0, i64 0
  %46 = load i32, i32* %45, align 4, !tbaa !376
  %47 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %39, i64 0, i32 0, i64 1
  %48 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %39, i64 0, i32 0, i64 2
  %49 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %39, i64 0, i32 0, i64 3
  br label %50, !dbg !814

; <label>:50:                                     ; preds = %74, %44
  %51 = phi %struct.mld_group* [ %42, %44 ], [ %76, %74 ]
  %52 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %51, i64 0, i32 1, i32 0, i64 0, !dbg !815
  %53 = load i32, i32* %52, align 8, !dbg !815, !tbaa !376
  %54 = icmp eq i32 %53, %46, !dbg !815
  br i1 %54, label %55, label %74, !dbg !815

; <label>:55:                                     ; preds = %50
  %56 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %51, i64 0, i32 1, i32 0, i64 1, !dbg !815
  %57 = load i32, i32* %56, align 4, !dbg !815, !tbaa !376
  %58 = load i32, i32* %47, align 4, !dbg !815, !tbaa !376
  %59 = icmp eq i32 %57, %58, !dbg !815
  br i1 %59, label %60, label %74, !dbg !815

; <label>:60:                                     ; preds = %55
  %61 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %51, i64 0, i32 1, i32 0, i64 2, !dbg !815
  %62 = load i32, i32* %61, align 8, !dbg !815, !tbaa !376
  %63 = load i32, i32* %48, align 4, !dbg !815, !tbaa !376
  %64 = icmp eq i32 %62, %63, !dbg !815
  br i1 %64, label %65, label %74, !dbg !815

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %51, i64 0, i32 1, i32 0, i64 3, !dbg !815
  %67 = load i32, i32* %66, align 4, !dbg !815, !tbaa !376
  %68 = load i32, i32* %49, align 4, !dbg !815, !tbaa !376
  %69 = icmp eq i32 %67, %68, !dbg !815
  br i1 %69, label %70, label %74, !dbg !815

; <label>:70:                                     ; preds = %65
  %71 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %51, i64 0, i32 1, i32 1, !dbg !815
  %72 = load i8, i8* %71, align 8, !dbg !815, !tbaa !439
  %73 = icmp eq i8 %72, %38, !dbg !815
  br i1 %73, label %79, label %74, !dbg !816

; <label>:74:                                     ; preds = %70, %65, %60, %55, %50
  %75 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %51, i64 0, i32 0, !dbg !817
  %76 = load %struct.mld_group*, %struct.mld_group** %75, align 8, !dbg !812, !tbaa !265
  %77 = icmp eq %struct.mld_group* %76, null, !dbg !813
  br i1 %77, label %78, label %50, !dbg !814, !llvm.loop !443

; <label>:78:                                     ; preds = %74, %37
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !818
  br label %117, !dbg !820

; <label>:79:                                     ; preds = %70
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !818
  %80 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %51, i64 0, i32 5, !dbg !821
  %81 = load i8, i8* %80, align 8, !dbg !821, !tbaa !657
  %82 = icmp ult i8 %81, 2, !dbg !825
  br i1 %82, label %83, label %115, !dbg !826

; <label>:83:                                     ; preds = %79
  %84 = icmp eq %struct.mld_group* %42, %51, !dbg !842
  br i1 %84, label %85, label %89, !dbg !843

; <label>:85:                                     ; preds = %83
  %86 = bitcast %struct.mld_group* %42 to i64*, !dbg !844
  %87 = load i64, i64* %86, align 8, !dbg !844, !tbaa !275
  %88 = bitcast i8** %40 to i64*, !dbg !844
  store i64 %87, i64* %88, align 8, !dbg !844, !tbaa !265
  br label %100, !dbg !846

; <label>:89:                                     ; preds = %83, %92
  %90 = phi %struct.mld_group* [ %94, %92 ], [ %42, %83 ], !dbg !847
  %91 = icmp eq %struct.mld_group* %90, null, !dbg !851
  br i1 %91, label %100, label %92, !dbg !851

; <label>:92:                                     ; preds = %89
  %93 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %90, i64 0, i32 0, !dbg !852
  %94 = load %struct.mld_group*, %struct.mld_group** %93, align 8, !dbg !852, !tbaa !275
  %95 = icmp eq %struct.mld_group* %94, %51, !dbg !855
  br i1 %95, label %96, label %89, !dbg !856, !llvm.loop !857

; <label>:96:                                     ; preds = %92
  %97 = bitcast %struct.mld_group* %51 to i64*, !dbg !860
  %98 = load i64, i64* %97, align 8, !dbg !860, !tbaa !275
  %99 = bitcast %struct.mld_group* %90 to i64*, !dbg !862
  store i64 %98, i64* %99, align 8, !dbg !862, !tbaa !275
  br label %100, !dbg !863

; <label>:100:                                    ; preds = %89, %85, %96
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !864
  %101 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %51, i64 0, i32 2, !dbg !865
  %102 = load i8, i8* %101, align 4, !dbg !865, !tbaa !558
  %103 = icmp eq i8 %102, 0, !dbg !867
  br i1 %103, label %107, label %104, !dbg !868

; <label>:104:                                    ; preds = %100
  %105 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 12), align 2, !dbg !869, !tbaa !871
  %106 = add i16 %105, 1, !dbg !869
  store i16 %106, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 12), align 2, !dbg !869, !tbaa !871
  tail call fastcc void @mld6_send(%struct.netif* %0, %struct.mld_group* nonnull %51, i8 zeroext -124) #6, !dbg !872
  br label %107, !dbg !873

; <label>:107:                                    ; preds = %100, %104
  %108 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 26, !dbg !874
  %109 = load i8 (%struct.netif*, %struct.ip6_addr*, i32)*, i8 (%struct.netif*, %struct.ip6_addr*, i32)** %108, align 8, !dbg !874, !tbaa !282
  %110 = icmp eq i8 (%struct.netif*, %struct.ip6_addr*, i32)* %109, null, !dbg !876
  br i1 %110, label %113, label %111, !dbg !877

; <label>:111:                                    ; preds = %107
  %112 = call signext i8 %109(%struct.netif* nonnull %0, %struct.ip6_addr* %39, i32 0) #5, !dbg !878
  br label %113, !dbg !880

; <label>:113:                                    ; preds = %107, %111
  %114 = bitcast %struct.mld_group* %51 to i8*, !dbg !881
  call void @memp_free(i32 14, i8* %114) #5, !dbg !882
  br label %117, !dbg !883

; <label>:115:                                    ; preds = %79
  %116 = add i8 %81, -1, !dbg !884
  store i8 %116, i8* %80, align 8, !dbg !884, !tbaa !657
  br label %117

; <label>:117:                                    ; preds = %78, %113, %115
  %118 = phi i8 [ 0, %115 ], [ 0, %113 ], [ -6, %78 ], !dbg !886
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %4) #7, !dbg !887
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !887
  ret i8 %118, !dbg !887
}

; Function Attrs: noredzone nounwind
define dso_local void @mld6_tmr() local_unnamed_addr #0 !dbg !888 {
  %1 = load %struct.netif*, %struct.netif** @netif_list, align 8, !dbg !898, !tbaa !265
  %2 = icmp eq %struct.netif* %1, null, !dbg !899
  br i1 %2, label %32, label %3, !dbg !898

; <label>:3:                                      ; preds = %0, %28
  %4 = phi %struct.netif* [ %30, %28 ], [ %1, %0 ]
  %5 = getelementptr inbounds %struct.netif, %struct.netif* %4, i64 0, i32 15, i64 0, !dbg !900
  %6 = bitcast i8** %5 to %struct.mld_group**, !dbg !900
  %7 = load %struct.mld_group*, %struct.mld_group** %6, align 8, !dbg !902, !tbaa !265
  %8 = icmp eq %struct.mld_group* %7, null, !dbg !904
  br i1 %8, label %28, label %9, !dbg !905

; <label>:9:                                      ; preds = %3, %24
  %10 = phi %struct.mld_group* [ %26, %24 ], [ %7, %3 ]
  %11 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %10, i64 0, i32 4, !dbg !906
  %12 = load i16, i16* %11, align 2, !dbg !906, !tbaa !416
  %13 = icmp eq i16 %12, 0, !dbg !908
  br i1 %13, label %24, label %14, !dbg !909

; <label>:14:                                     ; preds = %9
  %15 = add i16 %12, -1, !dbg !910
  store i16 %15, i16* %11, align 2, !dbg !910, !tbaa !416
  %16 = icmp eq i16 %15, 0, !dbg !912
  br i1 %16, label %17, label %24, !dbg !914

; <label>:17:                                     ; preds = %14
  %18 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %10, i64 0, i32 3, !dbg !915
  %19 = load i8, i8* %18, align 1, !dbg !915, !tbaa !411
  %20 = icmp eq i8 %19, 1, !dbg !918
  br i1 %20, label %21, label %24, !dbg !919

; <label>:21:                                     ; preds = %17
  %22 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 13), align 2, !dbg !920, !tbaa !671
  %23 = add i16 %22, 1, !dbg !920
  store i16 %23, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 11, i32 13), align 2, !dbg !920, !tbaa !671
  tail call fastcc void @mld6_send(%struct.netif* nonnull %4, %struct.mld_group* nonnull %10, i8 zeroext -125) #6, !dbg !922
  store i8 2, i8* %18, align 1, !dbg !923, !tbaa !411
  br label %24, !dbg !924

; <label>:24:                                     ; preds = %9, %14, %21, %17
  %25 = getelementptr inbounds %struct.mld_group, %struct.mld_group* %10, i64 0, i32 0, !dbg !925
  %26 = load %struct.mld_group*, %struct.mld_group** %25, align 8, !dbg !902, !tbaa !265
  %27 = icmp eq %struct.mld_group* %26, null, !dbg !904
  br i1 %27, label %28, label %9, !dbg !905, !llvm.loop !926

; <label>:28:                                     ; preds = %24, %3
  %29 = getelementptr inbounds %struct.netif, %struct.netif* %4, i64 0, i32 0, !dbg !899
  %30 = load %struct.netif*, %struct.netif** %29, align 8, !dbg !898, !tbaa !265
  %31 = icmp eq %struct.netif* %30, null, !dbg !899
  br i1 %31, label %32, label %3, !dbg !898, !llvm.loop !928

; <label>:32:                                     ; preds = %28, %0
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !930
  ret void, !dbg !930
}

; Function Attrs: noredzone
declare dso_local i8* @memp_malloc(i32) local_unnamed_addr #2

; Function Attrs: inlinehint noredzone nounwind
define internal i32 @uk_swrand_randr() #3 !dbg !362 {
  %1 = tail call i64 @ukplat_lcpu_save_irqf() #5, !dbg !931
  %2 = tail call i32 @uk_swrand_randr_r(%struct.uk_swrand* nonnull @uk_swrand_def) #5, !dbg !933
  tail call void @ukplat_lcpu_restore_irqf(i64 %1) #5, !dbg !935
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !936
  ret i32 %2, !dbg !936
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
!352 = !{i32 531771}
!353 = !DILocation(line: 118, column: 16, scope: !345, inlinedAt: !351)
!354 = !DILocation(line: 121, column: 2, scope: !345, inlinedAt: !351)
!355 = !DILocation(line: 66, column: 2, scope: !338, inlinedAt: !343)
!356 = !DILocation(line: 120, column: 2, scope: !345, inlinedAt: !357)
!357 = distinct !DILocation(line: 66, column: 2, scope: !338, inlinedAt: !343)
!358 = !DILocation(line: 118, column: 16, scope: !345, inlinedAt: !357)
!359 = !DILocation(line: 121, column: 2, scope: !345, inlinedAt: !357)
!360 = !DILocation(line: 66, column: 2, scope: !339, inlinedAt: !343)
!361 = !DILocation(line: 65, column: 11, scope: !362, inlinedAt: !367)
!362 = distinct !DISubprogram(name: "uk_swrand_randr", scope: !363, file: !363, line: 60, type: !328, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !364)
!363 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukswrand/include/uk/swrand.h", directory: "/root/.unikraft/apps/redis/build")
!364 = !{!365, !366}
!365 = !DILocalVariable(name: "iflags", scope: !362, file: !363, line: 62, type: !145)
!366 = !DILocalVariable(name: "ret", scope: !362, file: !363, line: 63, type: !330)
!367 = distinct !DILocation(line: 66, column: 2, scope: !368, inlinedAt: !343)
!368 = distinct !DILexicalBlock(scope: !338, file: !327, line: 66, column: 2)
!369 = !DILocation(line: 62, column: 16, scope: !362, inlinedAt: !367)
!370 = !DILocation(line: 66, column: 8, scope: !362, inlinedAt: !367)
!371 = !DILocation(line: 63, column: 8, scope: !362, inlinedAt: !367)
!372 = !DILocation(line: 67, column: 2, scope: !362, inlinedAt: !367)
!373 = !DILocation(line: 69, column: 2, scope: !362, inlinedAt: !367)
!374 = !DILocation(line: 65, column: 8, scope: !326, inlinedAt: !343)
!375 = !DILocation(line: 66, column: 2, scope: !368, inlinedAt: !343)
!376 = !{!377, !377, i64 0}
!377 = !{!"int", !267, i64 0}
!378 = !DILocation(line: 120, column: 2, scope: !345, inlinedAt: !379)
!379 = distinct !DILocation(line: 49, column: 21, scope: !380, inlinedAt: !386)
!380 = distinct !DISubprogram(name: "uk_thread_get_tid", scope: !381, file: !381, line: 47, type: !382, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !384)
!381 = !DIFile(filename: "/root/.unikraft/unikraft/lib/flexos-core/include/flexos/impl/intelpku-impl.h", directory: "/root/.unikraft/apps/redis/build")
!382 = !DISubroutineType(types: !383)
!383 = !{!36}
!384 = !{!385}
!385 = !DILocalVariable(name: "sp", scope: !380, file: !381, line: 49, type: !145)
!386 = distinct !DILocation(line: 66, column: 2, scope: !335, inlinedAt: !343)
!387 = !DILocation(line: 118, column: 16, scope: !345, inlinedAt: !379)
!388 = !DILocation(line: 121, column: 2, scope: !345, inlinedAt: !379)
!389 = !DILocation(line: 49, column: 16, scope: !380, inlinedAt: !386)
!390 = !DILocation(line: 50, column: 19, scope: !380, inlinedAt: !386)
!391 = !DILocation(line: 50, column: 11, scope: !380, inlinedAt: !386)
!392 = !DILocation(line: 50, column: 9, scope: !380, inlinedAt: !386)
!393 = !DILocation(line: 50, column: 2, scope: !380, inlinedAt: !386)
!394 = !DILocation(line: 66, column: 2, scope: !335, inlinedAt: !343)
!395 = !{i32 -2146824511, i32 -2146824498, i32 -2146824473, i32 -2146824449, i32 -2146824424, i32 -2146824349, i32 -2146824324, i32 -2146824180, i32 -2146821087, i32 -2146820998, i32 -2146820877, i32 -2146820782, i32 -2146820681, i32 -2146820654, i32 -2146820571, i32 -2146820482, i32 -2146820361, i32 -2146820261, i32 -2146820155, i32 -2146820047, i32 -2146823897, i32 -2146823844, i32 -2146823813, i32 -2146823782, i32 -2146823761, i32 -2146823739, i32 -2146823690, i32 -2146823669, i32 -2146819964, i32 -2146819875, i32 -2146819754, i32 -2146819655, i32 -2146819549, i32 -2146819447, i32 -2146819414, i32 -2146819341, i32 -2146819273, i32 -2146823367, i32 -2146823308, i32 -2146823255, i32 -2146823224, i32 -2146823193, i32 -2146823172, i32 -2146823150, i32 -2146823101, i32 -2146823080, i32 -2146819222, i32 -2146819133, i32 -2146819012, i32 -2146818913, i32 -2146818807, i32 -2146818705, i32 -2146818672, i32 -2146818589, i32 -2146818500, i32 -2146818379, i32 -2146818279, i32 -2146818253, i32 -2146818150, i32 -2146818124, i32 -2146822822, i32 -2146822755, i32 -2146822730, i32 -2146822666, i32 -2146822584, i32 -2146822561, i32 -2146822536, i32 -2146822511}
!396 = !DILocation(line: 66, column: 2, scope: !397, inlinedAt: !343)
!397 = distinct !DILexicalBlock(scope: !398, file: !327, line: 66, column: 2)
!398 = distinct !DILexicalBlock(scope: !335, file: !327, line: 66, column: 2)
!399 = !{i32 -2146821564, i32 -2146821547}
!400 = !DILocation(line: 67, column: 9, scope: !326, inlinedAt: !343)
!401 = !DILocation(line: 68, column: 1, scope: !326, inlinedAt: !343)
!402 = !DILocation(line: 67, column: 2, scope: !326, inlinedAt: !343)
!403 = !DILocation(line: 538, column: 35, scope: !311)
!404 = !DILocation(line: 538, column: 33, scope: !311)
!405 = !DILocation(line: 538, column: 13, scope: !311)
!406 = !DILocation(line: 539, column: 15, scope: !407)
!407 = distinct !DILexicalBlock(scope: !311, file: !1, line: 539, column: 7)
!408 = !DILocation(line: 539, column: 7, scope: !311)
!409 = !DILocation(line: 545, column: 15, scope: !410)
!410 = distinct !DILexicalBlock(scope: !311, file: !1, line: 545, column: 7)
!411 = !{!276, !267, i64 29}
!412 = !DILocation(line: 545, column: 54, scope: !410)
!413 = !DILocation(line: 548, column: 12, scope: !414)
!414 = distinct !DILexicalBlock(scope: !410, file: !1, line: 547, column: 59)
!415 = !DILocation(line: 547, column: 16, scope: !410)
!416 = !{!276, !278, i64 30}
!417 = !DILocation(line: 547, column: 28, scope: !410)
!418 = !DILocation(line: 548, column: 18, scope: !414)
!419 = !DILocation(line: 549, column: 24, scope: !414)
!420 = !DILocation(line: 550, column: 3, scope: !414)
!421 = !DILocation(line: 551, column: 1, scope: !311)
!422 = distinct !DISubprogram(name: "mld6_lookfor_group", scope: !1, file: !1, line: 144, type: !423, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !425)
!423 = !DISubroutineType(types: !424)
!424 = !{!96, !161, !147}
!425 = !{!426, !427, !428}
!426 = !DILocalVariable(name: "ifp", arg: 1, scope: !422, file: !1, line: 144, type: !161)
!427 = !DILocalVariable(name: "addr", arg: 2, scope: !422, file: !1, line: 144, type: !147)
!428 = !DILocalVariable(name: "group", scope: !422, file: !1, line: 146, type: !96)
!429 = !DILocation(line: 144, column: 34, scope: !422)
!430 = !DILocation(line: 144, column: 57, scope: !422)
!431 = !DILocation(line: 146, column: 29, scope: !422)
!432 = !DILocation(line: 146, column: 21, scope: !422)
!433 = !DILocation(line: 0, scope: !434)
!434 = distinct !DILexicalBlock(scope: !422, file: !1, line: 148, column: 25)
!435 = !DILocation(line: 148, column: 16, scope: !422)
!436 = !DILocation(line: 148, column: 3, scope: !422)
!437 = !DILocation(line: 149, column: 9, scope: !438)
!438 = distinct !DILexicalBlock(scope: !434, file: !1, line: 149, column: 9)
!439 = !{!276, !267, i64 24}
!440 = !{!277, !267, i64 16}
!441 = !DILocation(line: 149, column: 9, scope: !434)
!442 = !DILocation(line: 152, column: 20, scope: !434)
!443 = distinct !{!443, !436, !444}
!444 = !DILocation(line: 153, column: 3, scope: !422)
!445 = !DILocation(line: 156, column: 1, scope: !422)
!446 = distinct !DISubprogram(name: "mld6_input", scope: !1, file: !1, line: 227, type: !447, isLocal: false, isDefinition: true, scopeLine: 228, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !449)
!447 = !DISubroutineType(types: !448)
!448 = !{null, !197, !161}
!449 = !{!450, !451, !452, !453}
!450 = !DILocalVariable(name: "p", arg: 1, scope: !446, file: !1, line: 227, type: !197)
!451 = !DILocalVariable(name: "inp", arg: 2, scope: !446, file: !1, line: 227, type: !161)
!452 = !DILocalVariable(name: "mld_hdr", scope: !446, file: !1, line: 229, type: !130)
!453 = !DILocalVariable(name: "group", scope: !446, file: !1, line: 230, type: !96)
!454 = !DILocation(line: 227, column: 25, scope: !446)
!455 = !DILocation(line: 227, column: 42, scope: !446)
!456 = !DILocation(line: 232, column: 3, scope: !446)
!457 = !{!458, !278, i64 260}
!458 = !{!"stats_", !459, i64 0, !459, i64 24, !459, i64 48, !459, i64 72, !459, i64 96, !459, i64 120, !459, i64 144, !460, i64 168, !459, i64 186, !459, i64 210, !459, i64 234, !462, i64 258, !459, i64 286}
!459 = !{!"stats_proto", !278, i64 0, !278, i64 2, !278, i64 4, !278, i64 6, !278, i64 8, !278, i64 10, !278, i64 12, !278, i64 14, !278, i64 16, !278, i64 18, !278, i64 20, !278, i64 22}
!460 = !{!"stats_sys", !461, i64 0, !461, i64 6, !461, i64 12}
!461 = !{!"stats_syselem", !278, i64 0, !278, i64 2, !278, i64 4}
!462 = !{!"stats_igmp", !278, i64 0, !278, i64 2, !278, i64 4, !278, i64 6, !278, i64 8, !278, i64 10, !278, i64 12, !278, i64 14, !278, i64 16, !278, i64 18, !278, i64 20, !278, i64 22, !278, i64 24, !278, i64 26}
!463 = !DILocation(line: 235, column: 10, scope: !464)
!464 = distinct !DILexicalBlock(scope: !446, file: !1, line: 235, column: 7)
!465 = !{!466, !278, i64 18}
!466 = !{!"pbuf", !266, i64 0, !266, i64 8, !278, i64 16, !278, i64 18, !267, i64 20, !267, i64 21, !267, i64 22, !267, i64 23}
!467 = !DILocation(line: 235, column: 14, scope: !464)
!468 = !DILocation(line: 235, column: 7, scope: !446)
!469 = !DILocation(line: 237, column: 5, scope: !470)
!470 = distinct !DILexicalBlock(scope: !464, file: !1, line: 235, column: 43)
!471 = !DILocation(line: 238, column: 5, scope: !470)
!472 = !{!458, !278, i64 266}
!473 = !DILocation(line: 239, column: 5, scope: !470)
!474 = !{!458, !278, i64 262}
!475 = !DILocation(line: 240, column: 5, scope: !470)
!476 = !DILocation(line: 243, column: 37, scope: !446)
!477 = !{!466, !266, i64 8}
!478 = !DILocation(line: 229, column: 22, scope: !446)
!479 = !DILocation(line: 245, column: 20, scope: !446)
!480 = !{!481, !267, i64 0}
!481 = !{!"mld_header", !267, i64 0, !267, i64 1, !278, i64 2, !278, i64 4, !278, i64 6, !482, i64 8}
!482 = !{!"ip6_addr_packed", !267, i64 0}
!483 = !DILocation(line: 245, column: 3, scope: !446)
!484 = !DILocation(line: 248, column: 9, scope: !485)
!485 = distinct !DILexicalBlock(scope: !486, file: !1, line: 248, column: 9)
!486 = distinct !DILexicalBlock(scope: !446, file: !1, line: 245, column: 26)
!487 = !{!267, !267, i64 0}
!488 = !DILocation(line: 249, column: 9, scope: !485)
!489 = !DILocation(line: 248, column: 9, scope: !486)
!490 = !DILocation(line: 250, column: 7, scope: !491)
!491 = distinct !DILexicalBlock(scope: !485, file: !1, line: 249, column: 56)
!492 = !{!458, !278, i64 276}
!493 = !DILocation(line: 252, column: 15, scope: !491)
!494 = !DILocation(line: 230, column: 21, scope: !446)
!495 = !DILocation(line: 0, scope: !496)
!496 = distinct !DILexicalBlock(scope: !491, file: !1, line: 253, column: 29)
!497 = !DILocation(line: 253, column: 20, scope: !491)
!498 = !DILocation(line: 253, column: 7, scope: !491)
!499 = !DILocation(line: 254, column: 16, scope: !500)
!500 = distinct !DILexicalBlock(scope: !496, file: !1, line: 254, column: 13)
!501 = !DILocation(line: 254, column: 72, scope: !500)
!502 = !DILocation(line: 255, column: 16, scope: !500)
!503 = !DILocation(line: 254, column: 13, scope: !496)
!504 = !DILocation(line: 256, column: 47, scope: !505)
!505 = distinct !DILexicalBlock(scope: !500, file: !1, line: 255, column: 74)
!506 = !{!481, !278, i64 4}
!507 = !DILocation(line: 256, column: 11, scope: !505)
!508 = !DILocation(line: 257, column: 9, scope: !505)
!509 = !DILocation(line: 258, column: 24, scope: !496)
!510 = distinct !{!510, !498, !511}
!511 = !DILocation(line: 259, column: 7, scope: !491)
!512 = !DILocation(line: 264, column: 7, scope: !513)
!513 = distinct !DILexicalBlock(scope: !485, file: !1, line: 260, column: 12)
!514 = !{!458, !278, i64 274}
!515 = !DILocation(line: 144, column: 34, scope: !422, inlinedAt: !516)
!516 = distinct !DILocation(line: 265, column: 15, scope: !513)
!517 = !DILocation(line: 146, column: 29, scope: !422, inlinedAt: !516)
!518 = !DILocation(line: 146, column: 21, scope: !422, inlinedAt: !516)
!519 = !DILocation(line: 0, scope: !434, inlinedAt: !516)
!520 = !DILocation(line: 148, column: 16, scope: !422, inlinedAt: !516)
!521 = !DILocation(line: 148, column: 3, scope: !422, inlinedAt: !516)
!522 = !DILocation(line: 149, column: 9, scope: !438, inlinedAt: !516)
!523 = !DILocation(line: 149, column: 9, scope: !434, inlinedAt: !516)
!524 = !DILocation(line: 152, column: 20, scope: !434, inlinedAt: !516)
!525 = !DILocation(line: 156, column: 1, scope: !422, inlinedAt: !516)
!526 = !DILocation(line: 266, column: 11, scope: !513)
!527 = !DILocation(line: 268, column: 45, scope: !528)
!528 = distinct !DILexicalBlock(scope: !529, file: !1, line: 266, column: 26)
!529 = distinct !DILexicalBlock(scope: !513, file: !1, line: 266, column: 11)
!530 = !DILocation(line: 268, column: 9, scope: !528)
!531 = !DILocation(line: 269, column: 7, scope: !528)
!532 = !DILocation(line: 276, column: 5, scope: !486)
!533 = !{!458, !278, i64 278}
!534 = !DILocation(line: 144, column: 34, scope: !422, inlinedAt: !535)
!535 = distinct !DILocation(line: 277, column: 13, scope: !486)
!536 = !DILocation(line: 146, column: 29, scope: !422, inlinedAt: !535)
!537 = !DILocation(line: 146, column: 21, scope: !422, inlinedAt: !535)
!538 = !DILocation(line: 0, scope: !434, inlinedAt: !535)
!539 = !DILocation(line: 148, column: 16, scope: !422, inlinedAt: !535)
!540 = !DILocation(line: 148, column: 3, scope: !422, inlinedAt: !535)
!541 = !DILocation(line: 149, column: 9, scope: !438, inlinedAt: !535)
!542 = !DILocation(line: 149, column: 9, scope: !434, inlinedAt: !535)
!543 = !DILocation(line: 152, column: 20, scope: !434, inlinedAt: !535)
!544 = !DILocation(line: 156, column: 1, scope: !422, inlinedAt: !535)
!545 = !DILocation(line: 278, column: 9, scope: !486)
!546 = !DILocation(line: 280, column: 18, scope: !547)
!547 = distinct !DILexicalBlock(scope: !548, file: !1, line: 280, column: 11)
!548 = distinct !DILexicalBlock(scope: !549, file: !1, line: 278, column: 24)
!549 = distinct !DILexicalBlock(scope: !486, file: !1, line: 278, column: 9)
!550 = !DILocation(line: 280, column: 30, scope: !547)
!551 = !DILocation(line: 280, column: 11, scope: !548)
!552 = !DILocation(line: 281, column: 16, scope: !553)
!553 = distinct !DILexicalBlock(scope: !547, file: !1, line: 280, column: 61)
!554 = !DILocation(line: 281, column: 22, scope: !553)
!555 = !DILocation(line: 282, column: 28, scope: !553)
!556 = !DILocation(line: 283, column: 16, scope: !553)
!557 = !DILocation(line: 283, column: 35, scope: !553)
!558 = !{!276, !267, i64 28}
!559 = !DILocation(line: 284, column: 7, scope: !553)
!560 = !DILocation(line: 291, column: 5, scope: !486)
!561 = !{!458, !278, i64 270}
!562 = !DILocation(line: 292, column: 5, scope: !486)
!563 = !DILocation(line: 293, column: 5, scope: !486)
!564 = !DILocation(line: 296, column: 3, scope: !446)
!565 = !DILocation(line: 297, column: 1, scope: !446)
!566 = distinct !DISubprogram(name: "mld6_joingroup", scope: !1, file: !1, line: 315, type: !567, isLocal: false, isDefinition: true, scopeLine: 316, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !569)
!567 = !DISubroutineType(types: !568)
!568 = !{!156, !147, !147}
!569 = !{!570, !571, !572, !573}
!570 = !DILocalVariable(name: "srcaddr", arg: 1, scope: !566, file: !1, line: 315, type: !147)
!571 = !DILocalVariable(name: "groupaddr", arg: 2, scope: !566, file: !1, line: 315, type: !147)
!572 = !DILocalVariable(name: "err", scope: !566, file: !1, line: 317, type: !156)
!573 = !DILocalVariable(name: "netif", scope: !566, file: !1, line: 318, type: !161)
!574 = !DILocation(line: 315, column: 34, scope: !566)
!575 = !DILocation(line: 315, column: 61, scope: !566)
!576 = !DILocation(line: 317, column: 17, scope: !566)
!577 = !DILocation(line: 318, column: 17, scope: !566)
!578 = !DILocation(line: 323, column: 3, scope: !579)
!579 = distinct !DILexicalBlock(scope: !566, file: !1, line: 323, column: 3)
!580 = !DILocation(line: 323, column: 3, scope: !581)
!581 = distinct !DILexicalBlock(scope: !579, file: !1, line: 323, column: 3)
!582 = !DILocation(line: 325, column: 9, scope: !583)
!583 = distinct !DILexicalBlock(scope: !584, file: !1, line: 325, column: 9)
!584 = distinct !DILexicalBlock(scope: !581, file: !1, line: 323, column: 24)
!585 = !DILocation(line: 325, column: 33, scope: !583)
!586 = !DILocation(line: 326, column: 9, scope: !583)
!587 = !DILocation(line: 326, column: 50, scope: !583)
!588 = !DILocation(line: 325, column: 9, scope: !584)
!589 = !DILocation(line: 327, column: 13, scope: !590)
!590 = distinct !DILexicalBlock(scope: !583, file: !1, line: 326, column: 56)
!591 = !DILocation(line: 328, column: 15, scope: !592)
!592 = distinct !DILexicalBlock(scope: !590, file: !1, line: 328, column: 11)
!593 = !DILocation(line: 328, column: 11, scope: !590)
!594 = !DILocation(line: 0, scope: !566)
!595 = distinct !{!595, !578, !596}
!596 = !DILocation(line: 332, column: 3, scope: !579)
!597 = !DILocation(line: 335, column: 1, scope: !566)
!598 = distinct !DISubprogram(name: "mld6_joingroup_netif", scope: !1, file: !1, line: 347, type: !599, isLocal: false, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !601)
!599 = !DISubroutineType(types: !600)
!600 = !{!156, !161, !147}
!601 = !{!602, !603, !604, !605}
!602 = !DILocalVariable(name: "netif", arg: 1, scope: !598, file: !1, line: 347, type: !161)
!603 = !DILocalVariable(name: "groupaddr", arg: 2, scope: !598, file: !1, line: 347, type: !147)
!604 = !DILocalVariable(name: "group", scope: !598, file: !1, line: 349, type: !96)
!605 = !DILocalVariable(name: "ip6addr", scope: !598, file: !1, line: 351, type: !102)
!606 = !DILocation(line: 347, column: 36, scope: !598)
!607 = !DILocation(line: 347, column: 61, scope: !598)
!608 = !DILocation(line: 351, column: 3, scope: !598)
!609 = !DILocation(line: 355, column: 7, scope: !610)
!610 = distinct !DILexicalBlock(scope: !598, file: !1, line: 355, column: 7)
!611 = !DILocation(line: 356, column: 5, scope: !612)
!612 = distinct !DILexicalBlock(scope: !613, file: !1, line: 356, column: 5)
!613 = distinct !DILexicalBlock(scope: !610, file: !1, line: 355, column: 54)
!614 = !DILocation(line: 357, column: 5, scope: !613)
!615 = !{!283, !267, i64 264}
!616 = !DILocation(line: 359, column: 3, scope: !613)
!617 = !DILocation(line: 144, column: 34, scope: !422, inlinedAt: !618)
!618 = distinct !DILocation(line: 366, column: 11, scope: !598)
!619 = !DILocation(line: 144, column: 57, scope: !422, inlinedAt: !618)
!620 = !DILocation(line: 146, column: 29, scope: !422, inlinedAt: !618)
!621 = !DILocation(line: 146, column: 21, scope: !422, inlinedAt: !618)
!622 = !DILocation(line: 0, scope: !434, inlinedAt: !618)
!623 = !DILocation(line: 148, column: 16, scope: !422, inlinedAt: !618)
!624 = !DILocation(line: 148, column: 3, scope: !422, inlinedAt: !618)
!625 = !DILocation(line: 149, column: 9, scope: !438, inlinedAt: !618)
!626 = !DILocation(line: 149, column: 9, scope: !434, inlinedAt: !618)
!627 = !DILocation(line: 152, column: 20, scope: !434, inlinedAt: !618)
!628 = !DILocation(line: 156, column: 1, scope: !422, inlinedAt: !618)
!629 = !DILocation(line: 349, column: 21, scope: !598)
!630 = !DILocalVariable(name: "ifp", arg: 1, scope: !631, file: !1, line: 168, type: !161)
!631 = distinct !DISubprogram(name: "mld6_new_group", scope: !1, file: !1, line: 168, type: !423, isLocal: true, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !632)
!632 = !{!630, !633, !634}
!633 = !DILocalVariable(name: "addr", arg: 2, scope: !631, file: !1, line: 168, type: !147)
!634 = !DILocalVariable(name: "group", scope: !631, file: !1, line: 170, type: !96)
!635 = !DILocation(line: 168, column: 30, scope: !631, inlinedAt: !636)
!636 = distinct !DILocation(line: 370, column: 13, scope: !637)
!637 = distinct !DILexicalBlock(scope: !638, file: !1, line: 368, column: 22)
!638 = distinct !DILexicalBlock(scope: !598, file: !1, line: 368, column: 7)
!639 = !DILocation(line: 168, column: 53, scope: !631, inlinedAt: !636)
!640 = !DILocation(line: 172, column: 31, scope: !631, inlinedAt: !636)
!641 = !DILocation(line: 172, column: 11, scope: !631, inlinedAt: !636)
!642 = !DILocation(line: 170, column: 21, scope: !631, inlinedAt: !636)
!643 = !DILocation(line: 173, column: 13, scope: !644, inlinedAt: !636)
!644 = distinct !DILexicalBlock(scope: !631, file: !1, line: 173, column: 7)
!645 = !DILocation(line: 173, column: 7, scope: !631, inlinedAt: !636)
!646 = !DILocation(line: 174, column: 5, scope: !647, inlinedAt: !636)
!647 = distinct !DILexicalBlock(scope: !648, file: !1, line: 174, column: 5)
!648 = distinct !DILexicalBlock(scope: !644, file: !1, line: 173, column: 22)
!649 = !DILocation(line: 175, column: 12, scope: !648, inlinedAt: !636)
!650 = !DILocation(line: 175, column: 31, scope: !648, inlinedAt: !636)
!651 = !DILocation(line: 176, column: 12, scope: !648, inlinedAt: !636)
!652 = !DILocation(line: 176, column: 31, scope: !648, inlinedAt: !636)
!653 = !DILocation(line: 177, column: 12, scope: !648, inlinedAt: !636)
!654 = !DILocation(line: 177, column: 31, scope: !648, inlinedAt: !636)
!655 = !DILocation(line: 178, column: 12, scope: !648, inlinedAt: !636)
!656 = !DILocation(line: 178, column: 31, scope: !648, inlinedAt: !636)
!657 = !{!276, !267, i64 32}
!658 = !DILocation(line: 179, column: 33, scope: !648, inlinedAt: !636)
!659 = !DILocation(line: 179, column: 31, scope: !648, inlinedAt: !636)
!660 = !DILocation(line: 181, column: 5, scope: !648, inlinedAt: !636)
!661 = !DILocation(line: 184, column: 3, scope: !631, inlinedAt: !636)
!662 = !DILocation(line: 376, column: 16, scope: !663)
!663 = distinct !DILexicalBlock(scope: !637, file: !1, line: 376, column: 9)
!664 = !DILocation(line: 376, column: 31, scope: !663)
!665 = !DILocation(line: 376, column: 9, scope: !637)
!666 = !DILocation(line: 371, column: 9, scope: !637)
!667 = !DILocation(line: 377, column: 7, scope: !668)
!668 = distinct !DILexicalBlock(scope: !663, file: !1, line: 376, column: 40)
!669 = !DILocation(line: 378, column: 5, scope: !668)
!670 = !DILocation(line: 381, column: 5, scope: !637)
!671 = !{!458, !278, i64 284}
!672 = !DILocation(line: 382, column: 5, scope: !637)
!673 = !DILocation(line: 383, column: 5, scope: !637)
!674 = !DILocation(line: 384, column: 3, scope: !637)
!675 = !DILocation(line: 0, scope: !598)
!676 = !DILocation(line: 387, column: 10, scope: !598)
!677 = !DILocation(line: 387, column: 13, scope: !598)
!678 = !DILocation(line: 388, column: 3, scope: !598)
!679 = !DILocation(line: 389, column: 1, scope: !598)
!680 = distinct !DISubprogram(name: "mld6_send", scope: !1, file: !1, line: 563, type: !681, isLocal: true, isDefinition: true, scopeLine: 564, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !683)
!681 = !DISubroutineType(types: !682)
!682 = !{null, !161, !96, !117}
!683 = !{!684, !685, !686, !687, !688, !689}
!684 = !DILocalVariable(name: "netif", arg: 1, scope: !680, file: !1, line: 563, type: !161)
!685 = !DILocalVariable(name: "group", arg: 2, scope: !680, file: !1, line: 563, type: !96)
!686 = !DILocalVariable(name: "type", arg: 3, scope: !680, file: !1, line: 563, type: !117)
!687 = !DILocalVariable(name: "mld_hdr", scope: !680, file: !1, line: 565, type: !130)
!688 = !DILocalVariable(name: "p", scope: !680, file: !1, line: 566, type: !197)
!689 = !DILocalVariable(name: "src_addr", scope: !680, file: !1, line: 567, type: !147)
!690 = !DILocation(line: 563, column: 25, scope: !680)
!691 = !DILocation(line: 563, column: 50, scope: !680)
!692 = !DILocation(line: 563, column: 62, scope: !680)
!693 = !DILocation(line: 570, column: 7, scope: !680)
!694 = !DILocation(line: 566, column: 16, scope: !680)
!695 = !DILocation(line: 571, column: 9, scope: !696)
!696 = distinct !DILexicalBlock(scope: !680, file: !1, line: 571, column: 7)
!697 = !DILocation(line: 571, column: 7, scope: !680)
!698 = !DILocation(line: 572, column: 5, scope: !699)
!699 = distinct !DILexicalBlock(scope: !696, file: !1, line: 571, column: 18)
!700 = !{!458, !278, i64 268}
!701 = !DILocation(line: 573, column: 5, scope: !699)
!702 = !DILocation(line: 577, column: 7, scope: !703)
!703 = distinct !DILexicalBlock(scope: !680, file: !1, line: 577, column: 7)
!704 = !DILocation(line: 577, column: 7, scope: !680)
!705 = !DILocation(line: 578, column: 5, scope: !706)
!706 = distinct !DILexicalBlock(scope: !703, file: !1, line: 577, column: 45)
!707 = !DILocation(line: 579, column: 5, scope: !706)
!708 = !DILocation(line: 580, column: 5, scope: !706)
!709 = !DILocation(line: 584, column: 8, scope: !710)
!710 = distinct !DILexicalBlock(scope: !680, file: !1, line: 584, column: 7)
!711 = !DILocation(line: 590, column: 16, scope: !712)
!712 = distinct !DILexicalBlock(scope: !710, file: !1, line: 588, column: 10)
!713 = !DILocation(line: 567, column: 21, scope: !680)
!714 = !DILocation(line: 584, column: 7, scope: !680)
!715 = !DILocation(line: 594, column: 37, scope: !680)
!716 = !DILocation(line: 565, column: 22, scope: !680)
!717 = !DILocation(line: 597, column: 12, scope: !680)
!718 = !DILocation(line: 597, column: 17, scope: !680)
!719 = !DILocation(line: 598, column: 12, scope: !680)
!720 = !DILocation(line: 598, column: 17, scope: !680)
!721 = !{!481, !267, i64 1}
!722 = !DILocation(line: 599, column: 12, scope: !680)
!723 = !DILocation(line: 599, column: 19, scope: !680)
!724 = !{!481, !278, i64 2}
!725 = !DILocation(line: 600, column: 12, scope: !680)
!726 = !DILocation(line: 600, column: 27, scope: !680)
!727 = !DILocation(line: 601, column: 12, scope: !680)
!728 = !DILocation(line: 601, column: 21, scope: !680)
!729 = !{!481, !278, i64 6}
!730 = !DILocation(line: 602, column: 3, scope: !731)
!731 = distinct !DILexicalBlock(scope: !680, file: !1, line: 602, column: 3)
!732 = !DILocation(line: 605, column: 3, scope: !733)
!733 = distinct !DILexicalBlock(scope: !680, file: !1, line: 605, column: 3)
!734 = !{!283, !278, i64 248}
!735 = !DILocation(line: 605, column: 3, scope: !680)
!736 = !DILocation(line: 606, column: 64, scope: !737)
!737 = distinct !DILexicalBlock(scope: !733, file: !1, line: 605, column: 63)
!738 = !DILocation(line: 606, column: 23, scope: !737)
!739 = !DILocation(line: 606, column: 21, scope: !737)
!740 = !DILocation(line: 608, column: 3, scope: !737)
!741 = !DILocation(line: 612, column: 3, scope: !680)
!742 = !DILocation(line: 614, column: 12, scope: !743)
!743 = distinct !DILexicalBlock(scope: !680, file: !1, line: 614, column: 7)
!744 = !DILocation(line: 614, column: 7, scope: !680)
!745 = !DILocation(line: 616, column: 12, scope: !746)
!746 = distinct !DILexicalBlock(scope: !743, file: !1, line: 614, column: 31)
!747 = !DILocation(line: 616, column: 31, scope: !746)
!748 = !DILocation(line: 617, column: 3, scope: !746)
!749 = !DILocation(line: 620, column: 3, scope: !680)
!750 = !{!458, !278, i64 258}
!751 = !DILocation(line: 621, column: 21, scope: !680)
!752 = !DILocation(line: 621, column: 20, scope: !680)
!753 = !DILocation(line: 621, column: 3, scope: !680)
!754 = !DILocation(line: 623, column: 3, scope: !680)
!755 = !DILocation(line: 624, column: 1, scope: !680)
!756 = distinct !DISubprogram(name: "mld6_leavegroup", scope: !1, file: !1, line: 404, type: !567, isLocal: false, isDefinition: true, scopeLine: 405, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !757)
!757 = !{!758, !759, !760, !761, !762}
!758 = !DILocalVariable(name: "srcaddr", arg: 1, scope: !756, file: !1, line: 404, type: !147)
!759 = !DILocalVariable(name: "groupaddr", arg: 2, scope: !756, file: !1, line: 404, type: !147)
!760 = !DILocalVariable(name: "err", scope: !756, file: !1, line: 406, type: !156)
!761 = !DILocalVariable(name: "netif", scope: !756, file: !1, line: 407, type: !161)
!762 = !DILocalVariable(name: "res", scope: !763, file: !1, line: 416, type: !156)
!763 = distinct !DILexicalBlock(scope: !764, file: !1, line: 415, column: 56)
!764 = distinct !DILexicalBlock(scope: !765, file: !1, line: 414, column: 9)
!765 = distinct !DILexicalBlock(scope: !766, file: !1, line: 412, column: 24)
!766 = distinct !DILexicalBlock(scope: !767, file: !1, line: 412, column: 3)
!767 = distinct !DILexicalBlock(scope: !756, file: !1, line: 412, column: 3)
!768 = !DILocation(line: 404, column: 35, scope: !756)
!769 = !DILocation(line: 404, column: 62, scope: !756)
!770 = !DILocation(line: 406, column: 17, scope: !756)
!771 = !DILocation(line: 407, column: 17, scope: !756)
!772 = !DILocation(line: 412, column: 3, scope: !767)
!773 = !DILocation(line: 412, column: 3, scope: !766)
!774 = !DILocation(line: 414, column: 9, scope: !764)
!775 = !DILocation(line: 414, column: 33, scope: !764)
!776 = !DILocation(line: 415, column: 9, scope: !764)
!777 = !DILocation(line: 415, column: 50, scope: !764)
!778 = !DILocation(line: 414, column: 9, scope: !765)
!779 = !DILocation(line: 416, column: 19, scope: !763)
!780 = !DILocation(line: 416, column: 13, scope: !763)
!781 = !DILocation(line: 417, column: 15, scope: !782)
!782 = distinct !DILexicalBlock(scope: !763, file: !1, line: 417, column: 11)
!783 = !DILocation(line: 417, column: 11, scope: !763)
!784 = !DILocation(line: 421, column: 5, scope: !763)
!785 = !DILocation(line: 0, scope: !756)
!786 = distinct !{!786, !772, !787}
!787 = !DILocation(line: 422, column: 3, scope: !767)
!788 = !DILocation(line: 0, scope: !789)
!789 = distinct !DILexicalBlock(scope: !782, file: !1, line: 417, column: 26)
!790 = !DILocation(line: 424, column: 3, scope: !756)
!791 = distinct !DISubprogram(name: "mld6_leavegroup_netif", scope: !1, file: !1, line: 437, type: !599, isLocal: false, isDefinition: true, scopeLine: 438, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !792)
!792 = !{!793, !794, !795, !796}
!793 = !DILocalVariable(name: "netif", arg: 1, scope: !791, file: !1, line: 437, type: !161)
!794 = !DILocalVariable(name: "groupaddr", arg: 2, scope: !791, file: !1, line: 437, type: !147)
!795 = !DILocalVariable(name: "group", scope: !791, file: !1, line: 439, type: !96)
!796 = !DILocalVariable(name: "ip6addr", scope: !791, file: !1, line: 441, type: !102)
!797 = !DILocation(line: 437, column: 37, scope: !791)
!798 = !DILocation(line: 437, column: 62, scope: !791)
!799 = !DILocation(line: 441, column: 3, scope: !791)
!800 = !DILocation(line: 443, column: 7, scope: !801)
!801 = distinct !DILexicalBlock(scope: !791, file: !1, line: 443, column: 7)
!802 = !DILocation(line: 444, column: 5, scope: !803)
!803 = distinct !DILexicalBlock(scope: !804, file: !1, line: 444, column: 5)
!804 = distinct !DILexicalBlock(scope: !801, file: !1, line: 443, column: 54)
!805 = !DILocation(line: 445, column: 5, scope: !804)
!806 = !DILocation(line: 447, column: 3, scope: !804)
!807 = !DILocation(line: 144, column: 34, scope: !422, inlinedAt: !808)
!808 = distinct !DILocation(line: 454, column: 11, scope: !791)
!809 = !DILocation(line: 144, column: 57, scope: !422, inlinedAt: !808)
!810 = !DILocation(line: 146, column: 29, scope: !422, inlinedAt: !808)
!811 = !DILocation(line: 146, column: 21, scope: !422, inlinedAt: !808)
!812 = !DILocation(line: 0, scope: !434, inlinedAt: !808)
!813 = !DILocation(line: 148, column: 16, scope: !422, inlinedAt: !808)
!814 = !DILocation(line: 148, column: 3, scope: !422, inlinedAt: !808)
!815 = !DILocation(line: 149, column: 9, scope: !438, inlinedAt: !808)
!816 = !DILocation(line: 149, column: 9, scope: !434, inlinedAt: !808)
!817 = !DILocation(line: 152, column: 20, scope: !434, inlinedAt: !808)
!818 = !DILocation(line: 156, column: 1, scope: !422, inlinedAt: !808)
!819 = !DILocation(line: 439, column: 21, scope: !791)
!820 = !DILocation(line: 456, column: 7, scope: !791)
!821 = !DILocation(line: 458, column: 16, scope: !822)
!822 = distinct !DILexicalBlock(scope: !823, file: !1, line: 458, column: 9)
!823 = distinct !DILexicalBlock(scope: !824, file: !1, line: 456, column: 22)
!824 = distinct !DILexicalBlock(scope: !791, file: !1, line: 456, column: 7)
!825 = !DILocation(line: 458, column: 20, scope: !822)
!826 = !DILocation(line: 458, column: 9, scope: !823)
!827 = !DILocalVariable(name: "netif", arg: 1, scope: !828, file: !1, line: 194, type: !161)
!828 = distinct !DISubprogram(name: "mld6_remove_group", scope: !1, file: !1, line: 194, type: !829, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !831)
!829 = !DISubroutineType(types: !830)
!830 = !{!156, !161, !96}
!831 = !{!827, !832, !833, !834}
!832 = !DILocalVariable(name: "group", arg: 2, scope: !828, file: !1, line: 194, type: !96)
!833 = !DILocalVariable(name: "err", scope: !828, file: !1, line: 196, type: !156)
!834 = !DILocalVariable(name: "tmpGroup", scope: !835, file: !1, line: 203, type: !96)
!835 = distinct !DILexicalBlock(scope: !836, file: !1, line: 201, column: 10)
!836 = distinct !DILexicalBlock(scope: !828, file: !1, line: 199, column: 7)
!837 = !DILocation(line: 194, column: 33, scope: !828, inlinedAt: !838)
!838 = distinct !DILocation(line: 460, column: 7, scope: !839)
!839 = distinct !DILexicalBlock(scope: !822, file: !1, line: 458, column: 26)
!840 = !DILocation(line: 194, column: 58, scope: !828, inlinedAt: !838)
!841 = !DILocation(line: 196, column: 9, scope: !828, inlinedAt: !838)
!842 = !DILocation(line: 199, column: 30, scope: !836, inlinedAt: !838)
!843 = !DILocation(line: 199, column: 7, scope: !828, inlinedAt: !838)
!844 = !DILocation(line: 200, column: 5, scope: !845, inlinedAt: !838)
!845 = distinct !DILexicalBlock(scope: !836, file: !1, line: 199, column: 40)
!846 = !DILocation(line: 201, column: 3, scope: !845, inlinedAt: !838)
!847 = !DILocation(line: 0, scope: !848, inlinedAt: !838)
!848 = distinct !DILexicalBlock(scope: !849, file: !1, line: 204, column: 5)
!849 = distinct !DILexicalBlock(scope: !835, file: !1, line: 204, column: 5)
!850 = !DILocation(line: 203, column: 23, scope: !835, inlinedAt: !838)
!851 = !DILocation(line: 204, column: 5, scope: !849, inlinedAt: !838)
!852 = !DILocation(line: 205, column: 21, scope: !853, inlinedAt: !838)
!853 = distinct !DILexicalBlock(scope: !854, file: !1, line: 205, column: 11)
!854 = distinct !DILexicalBlock(scope: !848, file: !1, line: 204, column: 90)
!855 = !DILocation(line: 205, column: 26, scope: !853, inlinedAt: !838)
!856 = !DILocation(line: 205, column: 11, scope: !854, inlinedAt: !838)
!857 = distinct !{!857, !858, !859}
!858 = !DILocation(line: 204, column: 5, scope: !849)
!859 = !DILocation(line: 209, column: 5, scope: !849)
!860 = !DILocation(line: 206, column: 33, scope: !861, inlinedAt: !838)
!861 = distinct !DILexicalBlock(scope: !853, file: !1, line: 205, column: 36)
!862 = !DILocation(line: 206, column: 24, scope: !861, inlinedAt: !838)
!863 = !DILocation(line: 211, column: 9, scope: !835, inlinedAt: !838)
!864 = !DILocation(line: 216, column: 3, scope: !828, inlinedAt: !838)
!865 = !DILocation(line: 463, column: 18, scope: !866)
!866 = distinct !DILexicalBlock(scope: !839, file: !1, line: 463, column: 11)
!867 = !DILocation(line: 463, column: 11, scope: !866)
!868 = !DILocation(line: 463, column: 11, scope: !839)
!869 = !DILocation(line: 464, column: 9, scope: !870)
!870 = distinct !DILexicalBlock(scope: !866, file: !1, line: 463, column: 38)
!871 = !{!458, !278, i64 282}
!872 = !DILocation(line: 465, column: 9, scope: !870)
!873 = !DILocation(line: 466, column: 7, scope: !870)
!874 = !DILocation(line: 469, column: 18, scope: !875)
!875 = distinct !DILexicalBlock(scope: !839, file: !1, line: 469, column: 11)
!876 = !DILocation(line: 469, column: 33, scope: !875)
!877 = !DILocation(line: 469, column: 11, scope: !839)
!878 = !DILocation(line: 470, column: 9, scope: !879)
!879 = distinct !DILexicalBlock(scope: !875, file: !1, line: 469, column: 42)
!880 = !DILocation(line: 471, column: 7, scope: !879)
!881 = !DILocation(line: 474, column: 34, scope: !839)
!882 = !DILocation(line: 474, column: 7, scope: !839)
!883 = !DILocation(line: 475, column: 5, scope: !839)
!884 = !DILocation(line: 477, column: 17, scope: !885)
!885 = distinct !DILexicalBlock(scope: !822, file: !1, line: 475, column: 12)
!886 = !DILocation(line: 0, scope: !791)
!887 = !DILocation(line: 486, column: 1, scope: !791)
!888 = distinct !DISubprogram(name: "mld6_tmr", scope: !1, file: !1, line: 496, type: !889, isLocal: false, isDefinition: true, scopeLine: 497, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !891)
!889 = !DISubroutineType(types: !890)
!890 = !{null}
!891 = !{!892, !893}
!892 = !DILocalVariable(name: "netif", scope: !888, file: !1, line: 498, type: !161)
!893 = !DILocalVariable(name: "group", scope: !894, file: !1, line: 501, type: !96)
!894 = distinct !DILexicalBlock(scope: !895, file: !1, line: 500, column: 24)
!895 = distinct !DILexicalBlock(scope: !896, file: !1, line: 500, column: 3)
!896 = distinct !DILexicalBlock(scope: !888, file: !1, line: 500, column: 3)
!897 = !DILocation(line: 498, column: 17, scope: !888)
!898 = !DILocation(line: 500, column: 3, scope: !896)
!899 = !DILocation(line: 500, column: 3, scope: !895)
!900 = !DILocation(line: 501, column: 31, scope: !894)
!901 = !DILocation(line: 501, column: 23, scope: !894)
!902 = !DILocation(line: 0, scope: !903)
!903 = distinct !DILexicalBlock(scope: !894, file: !1, line: 503, column: 27)
!904 = !DILocation(line: 503, column: 18, scope: !894)
!905 = !DILocation(line: 503, column: 5, scope: !894)
!906 = !DILocation(line: 504, column: 18, scope: !907)
!907 = distinct !DILexicalBlock(scope: !903, file: !1, line: 504, column: 11)
!908 = !DILocation(line: 504, column: 24, scope: !907)
!909 = !DILocation(line: 504, column: 11, scope: !903)
!910 = !DILocation(line: 505, column: 21, scope: !911)
!911 = distinct !DILexicalBlock(scope: !907, file: !1, line: 504, column: 29)
!912 = !DILocation(line: 506, column: 26, scope: !913)
!913 = distinct !DILexicalBlock(scope: !911, file: !1, line: 506, column: 13)
!914 = !DILocation(line: 506, column: 13, scope: !911)
!915 = !DILocation(line: 508, column: 22, scope: !916)
!916 = distinct !DILexicalBlock(scope: !917, file: !1, line: 508, column: 15)
!917 = distinct !DILexicalBlock(scope: !913, file: !1, line: 506, column: 32)
!918 = !DILocation(line: 508, column: 34, scope: !916)
!919 = !DILocation(line: 508, column: 15, scope: !917)
!920 = !DILocation(line: 509, column: 13, scope: !921)
!921 = distinct !DILexicalBlock(scope: !916, file: !1, line: 508, column: 65)
!922 = !DILocation(line: 510, column: 13, scope: !921)
!923 = !DILocation(line: 511, column: 32, scope: !921)
!924 = !DILocation(line: 512, column: 11, scope: !921)
!925 = !DILocation(line: 515, column: 22, scope: !903)
!926 = distinct !{!926, !905, !927}
!927 = !DILocation(line: 516, column: 5, scope: !894)
!928 = distinct !{!928, !898, !929}
!929 = !DILocation(line: 517, column: 3, scope: !896)
!930 = !DILocation(line: 518, column: 1, scope: !888)
!931 = !DILocation(line: 65, column: 11, scope: !362)
!932 = !DILocation(line: 62, column: 16, scope: !362)
!933 = !DILocation(line: 66, column: 8, scope: !362)
!934 = !DILocation(line: 63, column: 8, scope: !362)
!935 = !DILocation(line: 67, column: 2, scope: !362)
!936 = !DILocation(line: 69, column: 2, scope: !362)
