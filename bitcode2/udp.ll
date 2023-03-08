; ModuleID = '/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/udp.c'
source_filename = "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/udp.c"
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
%struct.udp_pcb = type { %struct.ip_addr, %struct.ip_addr, i8, i8, i8, i8, %struct.udp_pcb*, i8, i16, i16, %struct.ip4_addr, i8, i8, void (i8*, %struct.udp_pcb*, %struct.pbuf*, %struct.ip_addr*, i16)*, i8* }
%struct.uk_thread_status_block = type { i64, i64 }
%struct.uk_swrand = type opaque
%struct.udp_hdr = type { i16, i16, i16, i16 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@udp_port = internal unnamed_addr global i16 -16384, align 2, !dbg !0
@.str = private unnamed_addr constant [24 x i8] c"udp_input: invalid pbuf\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Assertion failure: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"!(1)\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"udp_input: invalid netif\00", align 1
@lwip_stats = external dso_local local_unnamed_addr global %struct.stats_, align 2
@ip_data = external dso_local global %struct.ip_globals, align 8
@udp_pcbs = common dso_local local_unnamed_addr global %struct.udp_pcb* null, align 8, !dbg !206
@.str.4 = private unnamed_addr constant [27 x i8] c"pbuf_remove_header failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"udp_send: invalid pcb\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"udp_send: invalid pbuf\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"udp_sendto: invalid pcb\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"udp_sendto: invalid pbuf\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"udp_sendto: invalid dst_ip\00", align 1
@ip_addr_broadcast = external dso_local local_unnamed_addr constant %struct.ip_addr, align 4
@.str.10 = private unnamed_addr constant [27 x i8] c"udp_sendto_if: invalid pcb\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"udp_sendto_if: invalid pbuf\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"udp_sendto_if: invalid dst_ip\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"udp_sendto_if: invalid netif\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"udp_sendto_if_src: invalid pcb\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"udp_sendto_if_src: invalid pbuf\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"udp_sendto_if_src: invalid dst_ip\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"udp_sendto_if_src: invalid src_ip\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"udp_sendto_if_src: invalid netif\00", align 1
@.str.19 = private unnamed_addr constant [46 x i8] c"check that first pbuf can hold struct udp_hdr\00", align 1
@ip_addr_any = external dso_local constant %struct.ip_addr, align 4
@.str.20 = private unnamed_addr constant [22 x i8] c"udp_bind: invalid pcb\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"udp_connect: invalid pcb\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"udp_connect: invalid ipaddr\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"udp_disconnect: invalid pcb\00", align 1
@ip_addr_any_type = external dso_local local_unnamed_addr constant %struct.ip_addr, align 4
@.str.24 = private unnamed_addr constant [22 x i8] c"udp_recv: invalid pcb\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"udp_remove: invalid pcb\00", align 1
@_intrstack_start = external dso_local global [0 x i8], align 1
@_end = external dso_local global [0 x i8], align 1
@tsb_comp1 = external dso_local global [32 x %struct.uk_thread_status_block], align 16
@tsb_comp0 = external dso_local global [32 x %struct.uk_thread_status_block], align 16
@uk_swrand_def = external dso_local global %struct.uk_swrand, align 1
@uk_pr_crit.__str = internal global [8 x i8] c"liblwip\00", section ".data_shared", align 1, !dbg !208
@uk_pr_crit.__str.26 = internal global [6 x i8] c"udp.c\00", section ".data_shared", align 1, !dbg !235
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local void @udp_init() local_unnamed_addr #0 !dbg !244 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !248
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #6, !dbg !248
  %3 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !267, !srcloc !275
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !277
  %4 = icmp ult i64 %3, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !278
  br i1 %4, label %11, label %5, !dbg !278

; <label>:5:                                      ; preds = %0
  %6 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !279, !srcloc !275
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !282
  %7 = icmp ugt i64 %6, ptrtoint ([0 x i8]* @_end to i64), !dbg !278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !283
  br i1 %7, label %11, label %8, !dbg !283

; <label>:8:                                      ; preds = %5
  %9 = tail call i64 @ukplat_lcpu_save_irqf() #7, !dbg !284
  %10 = tail call i32 @uk_swrand_randr_r(%struct.uk_swrand* nonnull @uk_swrand_def) #7, !dbg !293
  tail call void @ukplat_lcpu_restore_irqf(i64 %9) #7, !dbg !295
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !296
  store i32 %10, i32* %1, align 4, !dbg !298, !tbaa !299
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !298
  br label %20, !dbg !298

; <label>:11:                                     ; preds = %5, %0
  %12 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !303, !srcloc !275
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !313
  %13 = and i64 %12, -65536, !dbg !315
  %14 = or i64 %13, 4097, !dbg !315
  %15 = add nsw i64 %14, -1, !dbg !315
  %16 = inttoptr i64 %15 to i32*, !dbg !316
  %17 = load i32, i32* %16, align 4096, !dbg !317, !tbaa !299
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !318
  %18 = tail call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_swrand_randr\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i32 %17, i32 ()* nonnull @uk_swrand_randr) #6, !dbg !319, !srcloc !320
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %1, i64 %18) #6, !dbg !321, !srcloc !324
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %19 = load i32, i32* %1, align 4, !dbg !325, !tbaa !299
  br label %20

; <label>:20:                                     ; preds = %8, %11
  %21 = phi i32 [ %19, %11 ], [ %10, %8 ], !dbg !325
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #6, !dbg !326
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !327
  %22 = trunc i32 %21 to i16, !dbg !328
  %23 = or i16 %22, -16384, !dbg !328
  store i16 %23, i16* @udp_port, align 2, !dbg !329, !tbaa !330
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !332
  ret void, !dbg !332
}

; Function Attrs: noredzone nounwind
define dso_local void @udp_input(%struct.pbuf*, %struct.netif*) local_unnamed_addr #0 !dbg !333 {
  %3 = icmp eq %struct.pbuf* %0, null, !dbg !421
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !424
  br i1 %3, label %4, label %5, !dbg !424

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0)) #8, !dbg !425
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !428
  tail call void @ukplat_terminate(i32 3) #9, !dbg !428
  unreachable

; <label>:5:                                      ; preds = %2
  %6 = icmp eq %struct.netif* %1, null, !dbg !432
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !435
  br i1 %6, label %7, label %8, !dbg !435

; <label>:7:                                      ; preds = %5
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !436
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !439
  tail call void @ukplat_terminate(i32 3) #9, !dbg !439
  unreachable

; <label>:8:                                      ; preds = %5
  %9 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 5, i32 1), align 2, !dbg !443, !tbaa !444
  %10 = add i16 %9, 1, !dbg !443
  store i16 %10, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 5, i32 1), align 2, !dbg !443, !tbaa !444
  %11 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 3, !dbg !450
  %12 = load i16, i16* %11, align 2, !dbg !450, !tbaa !452
  %13 = icmp ult i16 %12, 8, !dbg !455
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !456
  br i1 %13, label %14, label %20, !dbg !456

; <label>:14:                                     ; preds = %8
  %15 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 5, i32 5), align 2, !dbg !457, !tbaa !459
  %16 = add i16 %15, 1, !dbg !457
  store i16 %16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 5, i32 5), align 2, !dbg !457, !tbaa !459
  %17 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 5, i32 3), align 2, !dbg !460, !tbaa !461
  %18 = add i16 %17, 1, !dbg !460
  store i16 %18, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 5, i32 3), align 2, !dbg !460, !tbaa !461
  %19 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !462
  br label %331, !dbg !463

; <label>:20:                                     ; preds = %8
  %21 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 1, !dbg !464
  %22 = bitcast i8** %21 to %struct.udp_hdr**, !dbg !464
  %23 = load %struct.udp_hdr*, %struct.udp_hdr** %22, align 8, !dbg !464, !tbaa !465
  %24 = load i8, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 1), align 4, !dbg !467, !tbaa !468
  %25 = icmp eq i8 %24, 6, !dbg !467
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !467
  br i1 %25, label %30, label %26, !dbg !467

; <label>:26:                                     ; preds = %20
  %27 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !467, !tbaa !471
  %28 = load %struct.netif*, %struct.netif** getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 0), align 8, !dbg !467, !tbaa !472
  %29 = tail call zeroext i8 @ip4_addr_isbroadcast_u32(i32 %27, %struct.netif* %28) #7, !dbg !467
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !467
  br label %30, !dbg !467

; <label>:30:                                     ; preds = %20, %26
  %31 = phi i8 [ %29, %26 ], [ 0, %20 ], !dbg !467
  %32 = getelementptr inbounds %struct.udp_hdr, %struct.udp_hdr* %23, i64 0, i32 0, !dbg !474
  %33 = load i16, i16* %32, align 1, !dbg !474, !tbaa !475
  %34 = tail call zeroext i16 @lwip_htons(i16 zeroext %33) #7, !dbg !474
  %35 = getelementptr inbounds %struct.udp_hdr, %struct.udp_hdr* %23, i64 0, i32 1, !dbg !478
  %36 = load i16, i16* %35, align 1, !dbg !478, !tbaa !479
  %37 = tail call zeroext i16 @lwip_htons(i16 zeroext %36) #7, !dbg !478
  %38 = load %struct.udp_pcb*, %struct.udp_pcb** @udp_pcbs, align 8, !dbg !484, !tbaa !486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !487
  %39 = icmp eq %struct.udp_pcb* %38, null, !dbg !488
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !490
  %40 = ptrtoint %struct.udp_pcb* %38 to i64, !dbg !490
  br i1 %39, label %41, label %42, !dbg !490

; <label>:41:                                     ; preds = %30
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !491
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !492
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !495
  br label %254, !dbg !495

; <label>:42:                                     ; preds = %30
  %43 = icmp eq i8 %31, 0
  %44 = icmp ne i8 %31, 0
  %45 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 2, i32 0, i32 0, i32 0, i64 0
  %46 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 1, i32 0, i32 0, i32 0, i64 0
  br label %47, !dbg !490

; <label>:47:                                     ; preds = %42, %244
  %48 = phi %struct.udp_pcb* [ %38, %42 ], [ %247, %244 ]
  %49 = phi %struct.udp_pcb* [ null, %42 ], [ %48, %244 ]
  %50 = phi %struct.udp_pcb* [ null, %42 ], [ %245, %244 ]
  %51 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %48, i64 0, i32 8, !dbg !496
  %52 = load i16, i16* %51, align 2, !dbg !496, !tbaa !499
  %53 = icmp eq i16 %52, %37, !dbg !502
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !503
  br i1 %53, label %54, label %244, !dbg !503

; <label>:54:                                     ; preds = %47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !515
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !517
  %55 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %48, i64 0, i32 2, !dbg !519
  %56 = load i8, i8* %55, align 8, !dbg !519, !tbaa !521
  %57 = icmp eq i8 %56, 0, !dbg !522
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !523
  br i1 %57, label %64, label %58, !dbg !523

; <label>:58:                                     ; preds = %54
  %59 = load %struct.netif*, %struct.netif** getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 1), align 8, !dbg !524, !tbaa !525
  %60 = getelementptr inbounds %struct.netif, %struct.netif* %59, i64 0, i32 23, !dbg !524
  %61 = load i8, i8* %60, align 8, !dbg !524, !tbaa !526
  %62 = add i8 %61, 1, !dbg !524
  %63 = icmp eq i8 %56, %62, !dbg !528
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !529
  br i1 %63, label %64, label %129, !dbg !529

; <label>:64:                                     ; preds = %58, %54
  %65 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %48, i64 0, i32 0, i32 1, !dbg !530
  %66 = load i8, i8* %65, align 4, !dbg !530, !tbaa !532
  %67 = icmp eq i8 %66, 46, !dbg !530
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !533
  br i1 %67, label %130, label %68, !dbg !533

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 1), align 4, !dbg !534, !tbaa !468
  %70 = icmp eq i8 %66, %69, !dbg !534
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !536
  br i1 %70, label %71, label %129, !dbg !536

; <label>:71:                                     ; preds = %68
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !537
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !539
  br i1 %43, label %84, label %72, !dbg !537

; <label>:72:                                     ; preds = %71
  %73 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %48, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !544
  %74 = load i32, i32* %73, align 8, !dbg !544, !tbaa !471
  %75 = icmp eq i32 %74, 0, !dbg !544
  %76 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !545
  %77 = icmp eq i32 %76, -1, !dbg !546
  %78 = or i1 %75, %77, !dbg !547
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !547
  br i1 %78, label %130, label %79, !dbg !547

; <label>:79:                                     ; preds = %72
  %80 = load i32, i32* %45, align 8, !dbg !548, !tbaa !471
  %81 = xor i32 %76, %74, !dbg !548
  %82 = and i32 %80, %81, !dbg !548
  %83 = icmp eq i32 %82, 0, !dbg !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !549
  br i1 %83, label %130, label %129, !dbg !549

; <label>:84:                                     ; preds = %71
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !550
  %85 = icmp eq i8 %66, 6, !dbg !550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !552
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !550
  %86 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %48, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !550
  %87 = load i32, i32* %86, align 8, !dbg !550, !tbaa !471
  %88 = icmp eq i32 %87, 0, !dbg !550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !553
  br i1 %85, label %89, label %102, !dbg !552

; <label>:89:                                     ; preds = %84
  br i1 %88, label %90, label %103, !dbg !550

; <label>:90:                                     ; preds = %89
  %91 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %48, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !550
  %92 = load i32, i32* %91, align 4, !dbg !550, !tbaa !471
  %93 = icmp eq i32 %92, 0, !dbg !550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !550
  br i1 %93, label %94, label %103, !dbg !550

; <label>:94:                                     ; preds = %90
  %95 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %48, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !550
  %96 = load i32, i32* %95, align 8, !dbg !550, !tbaa !471
  %97 = icmp eq i32 %96, 0, !dbg !550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !550
  br i1 %97, label %98, label %103, !dbg !550

; <label>:98:                                     ; preds = %94
  %99 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %48, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !550
  %100 = load i32, i32* %99, align 4, !dbg !550, !tbaa !471
  %101 = icmp eq i32 %100, 0, !dbg !550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !550
  br i1 %101, label %130, label %103, !dbg !550

; <label>:102:                                    ; preds = %84
  br i1 %88, label %130, label %126, !dbg !552

; <label>:103:                                    ; preds = %98, %94, %90, %89
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !554
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !554
  %104 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !555, !tbaa !471
  %105 = icmp eq i32 %87, %104, !dbg !555
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !556
  br i1 %105, label %106, label %129, !dbg !555

; <label>:106:                                    ; preds = %103
  %107 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %48, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !555
  %108 = load i32, i32* %107, align 4, !dbg !555, !tbaa !471
  %109 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 1), align 4, !dbg !555, !tbaa !471
  %110 = icmp eq i32 %108, %109, !dbg !555
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !555
  br i1 %110, label %111, label %129, !dbg !555

; <label>:111:                                    ; preds = %106
  %112 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %48, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !555
  %113 = load i32, i32* %112, align 8, !dbg !555, !tbaa !471
  %114 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 2), align 4, !dbg !555, !tbaa !471
  %115 = icmp eq i32 %113, %114, !dbg !555
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !555
  br i1 %115, label %116, label %129, !dbg !555

; <label>:116:                                    ; preds = %111
  %117 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %48, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !555
  %118 = load i32, i32* %117, align 4, !dbg !555, !tbaa !471
  %119 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 3), align 4, !dbg !555, !tbaa !471
  %120 = icmp eq i32 %118, %119, !dbg !555
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !555
  br i1 %120, label %121, label %129, !dbg !555

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %48, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !555
  %123 = load i8, i8* %122, align 8, !dbg !555, !tbaa !471
  %124 = load i8, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 1), align 4, !dbg !555, !tbaa !471
  %125 = icmp eq i8 %123, %124, !dbg !555
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !555
  br i1 %125, label %130, label %129, !dbg !555

; <label>:126:                                    ; preds = %102
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !554
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !554
  %127 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !555, !tbaa !471
  %128 = icmp eq i32 %87, %127, !dbg !555
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !556
  br i1 %128, label %130, label %129, !dbg !554

; <label>:129:                                    ; preds = %68, %79, %103, %106, %111, %116, %121, %126, %58
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !557
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !558
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !559
  br label %244

; <label>:130:                                    ; preds = %98, %102, %121, %126, %72, %79, %64
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !557
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !558
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !559
  %131 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %48, i64 0, i32 7, !dbg !560
  %132 = load i8, i8* %131, align 8, !dbg !560, !tbaa !563
  %133 = and i8 %132, 4, !dbg !564
  %134 = icmp eq i8 %133, 0, !dbg !565
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !566
  br i1 %134, label %135, label %179, !dbg !566

; <label>:135:                                    ; preds = %130
  %136 = icmp eq %struct.udp_pcb* %50, null, !dbg !567
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !570
  br i1 %136, label %137, label %138, !dbg !570

; <label>:137:                                    ; preds = %135
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !571
  br label %179, !dbg !571

; <label>:138:                                    ; preds = %135
  %139 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !573
  %140 = icmp eq i32 %139, -1, !dbg !575
  %141 = and i1 %44, %140, !dbg !576
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !576
  br i1 %141, label %142, label %159, !dbg !576

; <label>:142:                                    ; preds = %138
  %143 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %50, i64 0, i32 0, i32 1, !dbg !577
  %144 = load i8, i8* %143, align 4, !dbg !577, !tbaa !532
  %145 = icmp eq i8 %144, 0, !dbg !577
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !580
  br i1 %145, label %146, label %151, !dbg !580

; <label>:146:                                    ; preds = %142
  %147 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %50, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !581
  %148 = load i32, i32* %147, align 8, !dbg !581, !tbaa !471
  %149 = load i32, i32* %46, align 8, !dbg !581, !tbaa !471
  %150 = icmp eq i32 %148, %149, !dbg !581
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !582
  br i1 %150, label %179, label %151, !dbg !582

; <label>:151:                                    ; preds = %146, %142
  %152 = icmp eq i8 %66, 0, !dbg !583
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !586
  br i1 %152, label %153, label %179, !dbg !586

; <label>:153:                                    ; preds = %151
  %154 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %48, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !587
  %155 = load i32, i32* %154, align 8, !dbg !587, !tbaa !471
  %156 = load i32, i32* %46, align 8, !dbg !587, !tbaa !471
  %157 = icmp eq i32 %155, %156, !dbg !587
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !588
  br i1 %157, label %158, label %179, !dbg !588

; <label>:158:                                    ; preds = %153
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !589
  br label %179, !dbg !589

; <label>:159:                                    ; preds = %138
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !591
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !592
  %160 = icmp eq i8 %66, 6, !dbg !592
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !591
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !592
  %161 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %48, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !592
  %162 = load i32, i32* %161, align 8, !dbg !592, !tbaa !471
  %163 = icmp eq i32 %162, 0, !dbg !592
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !594
  br i1 %160, label %164, label %177, !dbg !591

; <label>:164:                                    ; preds = %159
  br i1 %163, label %165, label %178, !dbg !592

; <label>:165:                                    ; preds = %164
  %166 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %48, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !592
  %167 = load i32, i32* %166, align 4, !dbg !592, !tbaa !471
  %168 = icmp eq i32 %167, 0, !dbg !592
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !592
  br i1 %168, label %169, label %178, !dbg !592

; <label>:169:                                    ; preds = %165
  %170 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %48, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !592
  %171 = load i32, i32* %170, align 8, !dbg !592, !tbaa !471
  %172 = icmp eq i32 %171, 0, !dbg !592
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !592
  br i1 %172, label %173, label %178, !dbg !592

; <label>:173:                                    ; preds = %169
  %174 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %48, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !592
  %175 = load i32, i32* %174, align 4, !dbg !592, !tbaa !471
  %176 = icmp eq i32 %175, 0, !dbg !592
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !592
  br i1 %176, label %179, label %178, !dbg !592

; <label>:177:                                    ; preds = %159
  br i1 %163, label %179, label %178, !dbg !591

; <label>:178:                                    ; preds = %177, %173, %169, %165, %164
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !595
  br label %179, !dbg !595

; <label>:179:                                    ; preds = %137, %173, %177, %178, %146, %158, %153, %151, %130
  %180 = phi %struct.udp_pcb* [ %48, %137 ], [ %50, %146 ], [ %48, %158 ], [ %50, %153 ], [ %50, %151 ], [ %50, %173 ], [ %48, %178 ], [ %50, %177 ], [ %50, %130 ], !dbg !597
  %181 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %48, i64 0, i32 9, !dbg !598
  %182 = load i16, i16* %181, align 4, !dbg !598, !tbaa !600
  %183 = icmp eq i16 %182, %34, !dbg !601
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !602
  br i1 %183, label %184, label %244, !dbg !602

; <label>:184:                                    ; preds = %179
  %185 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %48, i64 0, i32 1, i32 1, !dbg !603
  %186 = load i8, i8* %185, align 4, !dbg !603, !tbaa !604
  %187 = icmp eq i8 %186, 6, !dbg !603
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !605
  %188 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %48, i64 0, i32 1, i32 0, i32 0, i32 0, i64 0, !dbg !603
  %189 = load i32, i32* %188, align 8, !dbg !603, !tbaa !471
  %190 = icmp eq i32 %189, 0, !dbg !603
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !606
  br i1 %187, label %191, label %204, !dbg !605

; <label>:191:                                    ; preds = %184
  br i1 %190, label %192, label %205, !dbg !603

; <label>:192:                                    ; preds = %191
  %193 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %48, i64 0, i32 1, i32 0, i32 0, i32 0, i64 1, !dbg !603
  %194 = load i32, i32* %193, align 4, !dbg !603, !tbaa !471
  %195 = icmp eq i32 %194, 0, !dbg !603
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !603
  br i1 %195, label %196, label %205, !dbg !603

; <label>:196:                                    ; preds = %192
  %197 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %48, i64 0, i32 1, i32 0, i32 0, i32 0, i64 2, !dbg !603
  %198 = load i32, i32* %197, align 8, !dbg !603, !tbaa !471
  %199 = icmp eq i32 %198, 0, !dbg !603
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !603
  br i1 %199, label %200, label %205, !dbg !603

; <label>:200:                                    ; preds = %196
  %201 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %48, i64 0, i32 1, i32 0, i32 0, i32 0, i64 3, !dbg !603
  %202 = load i32, i32* %201, align 4, !dbg !603, !tbaa !471
  %203 = icmp eq i32 %202, 0, !dbg !603
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !603
  br i1 %203, label %233, label %205, !dbg !603

; <label>:204:                                    ; preds = %184
  br i1 %190, label %233, label %205, !dbg !605

; <label>:205:                                    ; preds = %204, %200, %196, %192, %191
  %206 = load i8, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 1), align 4, !dbg !607, !tbaa !608
  %207 = icmp eq i8 %186, %206, !dbg !607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !609
  br i1 %207, label %208, label %244, !dbg !609

; <label>:208:                                    ; preds = %205
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !609
  %209 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !607, !tbaa !471
  %210 = icmp eq i32 %189, %209, !dbg !607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !610
  br i1 %187, label %211, label %232, !dbg !609

; <label>:211:                                    ; preds = %208
  br i1 %210, label %212, label %244, !dbg !607

; <label>:212:                                    ; preds = %211
  %213 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %48, i64 0, i32 1, i32 0, i32 0, i32 0, i64 1, !dbg !607
  %214 = load i32, i32* %213, align 4, !dbg !607, !tbaa !471
  %215 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 1), align 4, !dbg !607, !tbaa !471
  %216 = icmp eq i32 %214, %215, !dbg !607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !607
  br i1 %216, label %217, label %244, !dbg !607

; <label>:217:                                    ; preds = %212
  %218 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %48, i64 0, i32 1, i32 0, i32 0, i32 0, i64 2, !dbg !607
  %219 = load i32, i32* %218, align 8, !dbg !607, !tbaa !471
  %220 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 2), align 4, !dbg !607, !tbaa !471
  %221 = icmp eq i32 %219, %220, !dbg !607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !607
  br i1 %221, label %222, label %244, !dbg !607

; <label>:222:                                    ; preds = %217
  %223 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %48, i64 0, i32 1, i32 0, i32 0, i32 0, i64 3, !dbg !607
  %224 = load i32, i32* %223, align 4, !dbg !607, !tbaa !471
  %225 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 3), align 4, !dbg !607, !tbaa !471
  %226 = icmp eq i32 %224, %225, !dbg !607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !607
  br i1 %226, label %227, label %244, !dbg !607

; <label>:227:                                    ; preds = %222
  %228 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %48, i64 0, i32 1, i32 0, i32 0, i32 1, !dbg !607
  %229 = load i8, i8* %228, align 8, !dbg !607, !tbaa !471
  %230 = load i8, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 1), align 4, !dbg !607, !tbaa !471
  %231 = icmp eq i8 %229, %230, !dbg !607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !607
  br i1 %231, label %233, label %244, !dbg !607

; <label>:232:                                    ; preds = %208
  br i1 %210, label %233, label %244, !dbg !609

; <label>:233:                                    ; preds = %232, %227, %204, %200
  %234 = icmp eq %struct.udp_pcb* %49, null, !dbg !611
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !614
  br i1 %234, label %241, label %235, !dbg !614

; <label>:235:                                    ; preds = %233
  %236 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %48, i64 0, i32 6, !dbg !615
  %237 = bitcast %struct.udp_pcb** %236 to i64*, !dbg !615
  %238 = load i64, i64* %237, align 8, !dbg !615, !tbaa !617
  %239 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %49, i64 0, i32 6, !dbg !618
  %240 = bitcast %struct.udp_pcb** %239 to i64*, !dbg !619
  store i64 %238, i64* %240, align 8, !dbg !619, !tbaa !617
  store i64 %40, i64* %237, align 8, !dbg !620, !tbaa !617
  store %struct.udp_pcb* %48, %struct.udp_pcb** @udp_pcbs, align 8, !dbg !621, !tbaa !486
  br label %249, !dbg !622

; <label>:241:                                    ; preds = %233
  %242 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 5, i32 11), align 2, !dbg !623, !tbaa !625
  %243 = add i16 %242, 1, !dbg !623
  store i16 %243, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 5, i32 11), align 2, !dbg !623, !tbaa !625
  br label %249

; <label>:244:                                    ; preds = %129, %205, %179, %211, %212, %217, %222, %227, %232, %47
  %245 = phi %struct.udp_pcb* [ %180, %205 ], [ %180, %227 ], [ %180, %222 ], [ %180, %217 ], [ %180, %212 ], [ %180, %211 ], [ %180, %232 ], [ %180, %179 ], [ %50, %129 ], [ %50, %47 ], !dbg !597
  %246 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %48, i64 0, i32 6, !dbg !626
  %247 = load %struct.udp_pcb*, %struct.udp_pcb** %246, align 8, !dbg !626, !tbaa !617
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !627
  %248 = icmp eq %struct.udp_pcb* %247, null, !dbg !488
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !490
  br i1 %248, label %250, label %47, !dbg !490, !llvm.loop !628

; <label>:249:                                    ; preds = %241, %235
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !491
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !495
  br label %252, !dbg !495

; <label>:250:                                    ; preds = %244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !491
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !492
  %251 = icmp eq %struct.udp_pcb* %245, null, !dbg !630
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !495
  br i1 %251, label %254, label %252, !dbg !495

; <label>:252:                                    ; preds = %250, %249
  %253 = phi %struct.udp_pcb* [ %48, %249 ], [ %245, %250 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !632
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !634
  br label %273, !dbg !634

; <label>:254:                                    ; preds = %41, %250
  %255 = load %struct.ip6_hdr*, %struct.ip6_hdr** getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 3), align 8, !dbg !635, !tbaa !638
  %256 = icmp eq %struct.ip6_hdr* %255, null, !dbg !635
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !639
  br i1 %256, label %257, label %258, !dbg !639

; <label>:257:                                    ; preds = %254
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !640
  br label %264, !dbg !640

; <label>:258:                                    ; preds = %254
  %259 = tail call signext i8 @netif_get_ip6_addr_match(%struct.netif* nonnull %1, %struct.ip6_addr* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0)) #7, !dbg !641
  %260 = lshr i8 %259, 7, !dbg !641
  %261 = xor i8 %260, 1, !dbg !641
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !643
  %262 = load %struct.ip6_hdr*, %struct.ip6_hdr** getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 3), align 8, !dbg !644, !tbaa !638
  %263 = icmp eq %struct.ip6_hdr* %262, null, !dbg !644
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !640
  br i1 %263, label %264, label %270, !dbg !640

; <label>:264:                                    ; preds = %257, %258
  %265 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 1, i32 0, i32 0, i32 0, i64 0, !dbg !646
  %266 = load i32, i32* %265, align 8, !dbg !646, !tbaa !471
  %267 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !646, !tbaa !471
  %268 = icmp eq i32 %266, %267, !dbg !646
  %269 = zext i1 %268 to i8, !dbg !646
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !648
  br label %270, !dbg !648

; <label>:270:                                    ; preds = %258, %264
  %271 = phi i8 [ %261, %258 ], [ %269, %264 ], !dbg !649
  %272 = icmp eq i8 %271, 0, !dbg !650
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !634
  br i1 %272, label %329, label %273, !dbg !634

; <label>:273:                                    ; preds = %252, %270
  %274 = phi %struct.udp_pcb* [ %253, %252 ], [ null, %270 ]
  %275 = phi i1 [ true, %252 ], [ false, %270 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !652
  %276 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 16, !dbg !652
  %277 = load i16, i16* %276, align 8, !dbg !652, !tbaa !655
  %278 = and i16 %277, 512, !dbg !652
  %279 = icmp eq i16 %278, 0, !dbg !652
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !656
  br i1 %279, label %289, label %280, !dbg !656

; <label>:280:                                    ; preds = %273
  %281 = getelementptr inbounds %struct.udp_hdr, %struct.udp_hdr* %23, i64 0, i32 3, !dbg !657
  %282 = load i16, i16* %281, align 1, !dbg !657, !tbaa !661
  %283 = icmp eq i16 %282, 0, !dbg !662
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !663
  br i1 %283, label %289, label %284, !dbg !663

; <label>:284:                                    ; preds = %280
  %285 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 2, !dbg !664
  %286 = load i16, i16* %285, align 8, !dbg !664, !tbaa !667
  %287 = tail call zeroext i16 @ip_chksum_pseudo(%struct.pbuf* nonnull %0, i8 zeroext 17, i16 zeroext %286, %struct.ip_addr* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5), %struct.ip_addr* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6)) #7, !dbg !668
  %288 = icmp eq i16 %287, 0, !dbg !669
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !670
  br i1 %288, label %289, label %332, !dbg !670

; <label>:289:                                    ; preds = %284, %280, %273
  %290 = tail call zeroext i8 @pbuf_remove_header(%struct.pbuf* nonnull %0, i64 8) #7, !dbg !671
  %291 = icmp eq i8 %290, 0, !dbg !671
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !673
  br i1 %291, label %293, label %292, !dbg !673

; <label>:292:                                    ; preds = %289
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !674
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !680
  tail call void @ukplat_terminate(i32 3) #9, !dbg !680
  unreachable

; <label>:293:                                    ; preds = %289
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !684
  br i1 %275, label %294, label %303, !dbg !684

; <label>:294:                                    ; preds = %293
  %295 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %274, i64 0, i32 13, !dbg !685
  %296 = load void (i8*, %struct.udp_pcb*, %struct.pbuf*, %struct.ip_addr*, i16)*, void (i8*, %struct.udp_pcb*, %struct.pbuf*, %struct.ip_addr*, i16)** %295, align 8, !dbg !685, !tbaa !689
  %297 = icmp eq void (i8*, %struct.udp_pcb*, %struct.pbuf*, %struct.ip_addr*, i16)* %296, null, !dbg !690
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !691
  br i1 %297, label %301, label %298, !dbg !691

; <label>:298:                                    ; preds = %294
  %299 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %274, i64 0, i32 14, !dbg !692
  %300 = load i8*, i8** %299, align 8, !dbg !692, !tbaa !694
  tail call void %296(i8* %300, %struct.udp_pcb* nonnull %274, %struct.pbuf* nonnull %0, %struct.ip_addr* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5), i16 zeroext %34) #7, !dbg !695
  br label %331, !dbg !696

; <label>:301:                                    ; preds = %294
  %302 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !697
  br label %331, !dbg !699

; <label>:303:                                    ; preds = %293
  %304 = icmp eq i8 %31, 0, !dbg !700
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !703
  br i1 %304, label %305, label %323, !dbg !703

; <label>:305:                                    ; preds = %303
  %306 = load i8, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 1), align 4, !dbg !704, !tbaa !468
  %307 = icmp eq i8 %306, 6, !dbg !704
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !705
  %308 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !704, !tbaa !471
  br i1 %307, label %309, label %312, !dbg !705

; <label>:309:                                    ; preds = %305
  %310 = and i32 %308, 255, !dbg !704
  %311 = icmp eq i32 %310, 255, !dbg !704
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !704
  br i1 %311, label %323, label %315, !dbg !704

; <label>:312:                                    ; preds = %305
  %313 = and i32 %308, 240, !dbg !704
  %314 = icmp eq i32 %313, 224, !dbg !704
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !705
  br i1 %314, label %323, label %315, !dbg !705

; <label>:315:                                    ; preds = %312, %309
  %316 = load i16, i16* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 4), align 8, !dbg !706, !tbaa !708
  %317 = add i16 %316, 8, !dbg !709
  %318 = tail call zeroext i8 @pbuf_header_force(%struct.pbuf* nonnull %0, i16 signext %317) #7, !dbg !710
  %319 = load %struct.ip6_hdr*, %struct.ip6_hdr** getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 3), align 8, !dbg !711, !tbaa !638
  %320 = icmp eq %struct.ip6_hdr* %319, null, !dbg !711
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !711
  br i1 %320, label %322, label %321, !dbg !711

; <label>:321:                                    ; preds = %315
  tail call void @icmp6_dest_unreach(%struct.pbuf* nonnull %0, i32 4) #7, !dbg !711
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !711
  br label %323, !dbg !711

; <label>:322:                                    ; preds = %315
  tail call void @icmp_dest_unreach(%struct.pbuf* nonnull %0, i32 3) #7, !dbg !711
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !711
  br label %323, !dbg !711

; <label>:323:                                    ; preds = %303, %321, %322, %312, %309
  %324 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 5, i32 8), align 2, !dbg !712, !tbaa !713
  %325 = add i16 %324, 1, !dbg !712
  store i16 %325, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 5, i32 8), align 2, !dbg !712, !tbaa !713
  %326 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 5, i32 3), align 2, !dbg !714, !tbaa !461
  %327 = add i16 %326, 1, !dbg !714
  store i16 %327, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 5, i32 3), align 2, !dbg !714, !tbaa !461
  %328 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !715
  br label %331

; <label>:329:                                    ; preds = %270
  %330 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !716
  br label %331

; <label>:331:                                    ; preds = %329, %323, %298, %301, %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %338, !dbg !718

; <label>:332:                                    ; preds = %284
  %333 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 5, i32 4), align 2, !dbg !719, !tbaa !720
  %334 = add i16 %333, 1, !dbg !719
  store i16 %334, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 5, i32 4), align 2, !dbg !719, !tbaa !720
  %335 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 5, i32 3), align 2, !dbg !721, !tbaa !461
  %336 = add i16 %335, 1, !dbg !721
  store i16 %336, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 5, i32 3), align 2, !dbg !721, !tbaa !461
  %337 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !722
  br label %338, !dbg !723

; <label>:338:                                    ; preds = %332, %331
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !597
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !723
  ret void, !dbg !723
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8*, ...) unnamed_addr #3 !dbg !210 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !725
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #6, !dbg !725
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !727
  call void @llvm.va_start(i8* nonnull %3), !dbg !727
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @uk_pr_crit.__str.26, i64 0, i64 0), i32 198, i8* %0, %struct.__va_list_tag* nonnull %4) #7, !dbg !728
  call void @llvm.va_end(i8* nonnull %3), !dbg !731
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #6, !dbg !732
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !732
  ret void, !dbg !732
}

; Function Attrs: noredzone noreturn
declare dso_local void @ukplat_terminate(i32) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local zeroext i8 @pbuf_free(%struct.pbuf*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local zeroext i8 @ip4_addr_isbroadcast_u32(i32, %struct.netif*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local zeroext i16 @lwip_htons(i16 zeroext) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local signext i8 @netif_get_ip6_addr_match(%struct.netif*, %struct.ip6_addr*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local zeroext i16 @ip_chksum_pseudo(%struct.pbuf*, i8 zeroext, i16 zeroext, %struct.ip_addr*, %struct.ip_addr*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local zeroext i8 @pbuf_remove_header(%struct.pbuf*, i64) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local zeroext i8 @pbuf_header_force(%struct.pbuf*, i16 signext) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @icmp6_dest_unreach(%struct.pbuf*, i32) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @icmp_dest_unreach(%struct.pbuf*, i32) local_unnamed_addr #5

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local signext i8 @udp_send(%struct.udp_pcb*, %struct.pbuf*) local_unnamed_addr #0 !dbg !733 {
  %3 = icmp eq %struct.udp_pcb* %0, null, !dbg !741
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !744
  br i1 %3, label %4, label %5, !dbg !744

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !745
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !748
  tail call void @ukplat_terminate(i32 3) #9, !dbg !748
  unreachable

; <label>:5:                                      ; preds = %2
  %6 = icmp eq %struct.pbuf* %1, null, !dbg !752
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !755
  br i1 %6, label %7, label %8, !dbg !755

; <label>:7:                                      ; preds = %5
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0)) #8, !dbg !756
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !759
  tail call void @ukplat_terminate(i32 3) #9, !dbg !759
  unreachable

; <label>:8:                                      ; preds = %5
  %9 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 1, !dbg !763
  %10 = load i8, i8* %9, align 4, !dbg !763, !tbaa !604
  %11 = icmp eq i8 %10, 46, !dbg !763
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !765
  br i1 %11, label %17, label %12, !dbg !765

; <label>:12:                                     ; preds = %8
  %13 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, !dbg !763
  %14 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 9, !dbg !766
  %15 = load i16, i16* %14, align 4, !dbg !766, !tbaa !600
  %16 = tail call signext i8 @udp_sendto(%struct.udp_pcb* nonnull %0, %struct.pbuf* nonnull %1, %struct.ip_addr* nonnull %13, i16 zeroext %15) #8, !dbg !767
  br label %17, !dbg !768

; <label>:17:                                     ; preds = %8, %12
  %18 = phi i8 [ %16, %12 ], [ -6, %8 ], !dbg !769
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !770
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !772
  ret i8 %18, !dbg !772
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @udp_sendto(%struct.udp_pcb*, %struct.pbuf*, %struct.ip_addr*, i16 zeroext) local_unnamed_addr #0 !dbg !773 {
  %5 = icmp eq %struct.udp_pcb* %0, null, !dbg !786
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !789
  br i1 %5, label %6, label %7, !dbg !789

; <label>:6:                                      ; preds = %4
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0)) #8, !dbg !790
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !793
  tail call void @ukplat_terminate(i32 3) #9, !dbg !793
  unreachable

; <label>:7:                                      ; preds = %4
  %8 = icmp eq %struct.pbuf* %1, null, !dbg !797
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !800
  br i1 %8, label %9, label %10, !dbg !800

; <label>:9:                                      ; preds = %7
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0)) #8, !dbg !801
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !804
  tail call void @ukplat_terminate(i32 3) #9, !dbg !804
  unreachable

; <label>:10:                                     ; preds = %7
  %11 = icmp eq %struct.ip_addr* %2, null, !dbg !808
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !811
  br i1 %11, label %12, label %13, !dbg !811

; <label>:12:                                     ; preds = %10
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0)) #8, !dbg !812
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !815
  tail call void @ukplat_terminate(i32 3) #9, !dbg !815
  unreachable

; <label>:13:                                     ; preds = %10
  %14 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, i32 1, !dbg !819
  %15 = load i8, i8* %14, align 4, !dbg !819, !tbaa !532
  %16 = icmp eq i8 %15, 46, !dbg !819
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !819
  br i1 %16, label %21, label %17, !dbg !819

; <label>:17:                                     ; preds = %13
  %18 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 1, !dbg !819
  %19 = load i8, i8* %18, align 4, !dbg !819, !tbaa !821
  %20 = icmp eq i8 %15, %19, !dbg !819
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !822
  br i1 %20, label %21, label %85, !dbg !822

; <label>:21:                                     ; preds = %17, %13
  %22 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 2, !dbg !823
  %23 = load i8, i8* %22, align 8, !dbg !823, !tbaa !521
  %24 = icmp eq i8 %23, 0, !dbg !825
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !826
  br i1 %24, label %27, label %25, !dbg !826

; <label>:25:                                     ; preds = %21
  %26 = tail call %struct.netif* @netif_get_by_index(i8 zeroext %23) #7, !dbg !827
  br label %76, !dbg !830

; <label>:27:                                     ; preds = %21
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !831
  %28 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 1, !dbg !831
  %29 = load i8, i8* %28, align 4, !dbg !831, !tbaa !821
  %30 = icmp eq i8 %29, 6, !dbg !831
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !834
  %31 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !831
  %32 = load i32, i32* %31, align 4, !dbg !831, !tbaa !471
  br i1 %30, label %33, label %36, !dbg !834

; <label>:33:                                     ; preds = %27
  %34 = and i32 %32, 255, !dbg !831
  %35 = icmp eq i32 %34, 255, !dbg !831
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !831
  br i1 %35, label %39, label %57, !dbg !831

; <label>:36:                                     ; preds = %27
  %37 = and i32 %32, 240, !dbg !831
  %38 = icmp eq i32 %37, 224, !dbg !831
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !834
  br i1 %38, label %39, label %57, !dbg !834

; <label>:39:                                     ; preds = %36, %33
  %40 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 11, !dbg !835
  %41 = load i8, i8* %40, align 4, !dbg !835, !tbaa !838
  %42 = icmp eq i8 %41, 0, !dbg !839
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !840
  br i1 %42, label %45, label %43, !dbg !840

; <label>:43:                                     ; preds = %39
  %44 = tail call %struct.netif* @netif_get_by_index(i8 zeroext %41) #7, !dbg !841
  br label %58, !dbg !843

; <label>:45:                                     ; preds = %39
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !844
  %46 = icmp eq i8 %29, 0, !dbg !844
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !846
  br i1 %46, label %47, label %57, !dbg !846

; <label>:47:                                     ; preds = %45
  %48 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 10, !dbg !847
  %49 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %48, i64 0, i32 0, !dbg !847
  %50 = load i32, i32* %49, align 8, !dbg !847, !tbaa !850
  %51 = icmp eq i32 %50, 0, !dbg !847
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !851
  br i1 %51, label %57, label %52, !dbg !851

; <label>:52:                                     ; preds = %47
  %53 = load i32, i32* getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip_addr_broadcast, i64 0, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !852, !tbaa !471
  %54 = icmp eq i32 %50, %53, !dbg !852
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !853
  br i1 %54, label %57, label %55, !dbg !853

; <label>:55:                                     ; preds = %52
  %56 = tail call %struct.netif* @ip4_route(%struct.ip4_addr* nonnull %48) #7, !dbg !854
  br label %58, !dbg !856

; <label>:57:                                     ; preds = %47, %52, %45, %33, %36
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !857
  br label %64, !dbg !857

; <label>:58:                                     ; preds = %43, %55
  %59 = phi %struct.netif* [ %44, %43 ], [ %56, %55 ], !dbg !858
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !859
  %60 = icmp eq %struct.netif* %59, null, !dbg !860
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !857
  br i1 %60, label %61, label %63, !dbg !857

; <label>:61:                                     ; preds = %58
  %62 = load i8, i8* %28, align 4, !dbg !862, !tbaa !821
  br label %64, !dbg !857

; <label>:63:                                     ; preds = %58
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !864
  br label %82, !dbg !864

; <label>:64:                                     ; preds = %61, %57
  %65 = phi i8 [ %62, %61 ], [ %29, %57 ], !dbg !862
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !862
  %66 = icmp eq i8 %65, 6, !dbg !862
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !862
  br i1 %66, label %67, label %71, !dbg !862

; <label>:67:                                     ; preds = %64
  %68 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, i32 0, i32 0, !dbg !862
  %69 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 0, i32 0, !dbg !862
  %70 = tail call %struct.netif* @ip6_route(%struct.ip6_addr* nonnull %68, %struct.ip6_addr* nonnull %69) #7, !dbg !862
  br label %74, !dbg !862

; <label>:71:                                     ; preds = %64
  %72 = bitcast %struct.ip_addr* %2 to %struct.ip4_addr*, !dbg !862
  %73 = tail call %struct.netif* @ip4_route(%struct.ip4_addr* %72) #7, !dbg !862
  br label %74, !dbg !862

; <label>:74:                                     ; preds = %71, %67
  %75 = phi %struct.netif* [ %70, %67 ], [ %73, %71 ], !dbg !862
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !862
  br label %76, !dbg !865

; <label>:76:                                     ; preds = %74, %25
  %77 = phi %struct.netif* [ %26, %25 ], [ %75, %74 ], !dbg !866
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !867
  %78 = icmp eq %struct.netif* %77, null, !dbg !868
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !864
  br i1 %78, label %79, label %82, !dbg !864

; <label>:79:                                     ; preds = %76
  %80 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 5, i32 7), align 2, !dbg !870, !tbaa !872
  %81 = add i16 %80, 1, !dbg !870
  store i16 %81, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 5, i32 7), align 2, !dbg !870, !tbaa !872
  br label %85, !dbg !873

; <label>:82:                                     ; preds = %63, %76
  %83 = phi %struct.netif* [ %59, %63 ], [ %77, %76 ]
  %84 = tail call signext i8 @udp_sendto_if(%struct.udp_pcb* nonnull %0, %struct.pbuf* nonnull %1, %struct.ip_addr* nonnull %2, i16 zeroext %3, %struct.netif* nonnull %83) #8, !dbg !874
  br label %85, !dbg !875

; <label>:85:                                     ; preds = %17, %82, %79
  %86 = phi i8 [ -4, %79 ], [ %84, %82 ], [ -6, %17 ], !dbg !876
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !876
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !878
  ret i8 %86, !dbg !878
}

; Function Attrs: noredzone
declare dso_local %struct.netif* @netif_get_by_index(i8 zeroext) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local %struct.netif* @ip4_route(%struct.ip4_addr*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local %struct.netif* @ip6_route(%struct.ip6_addr*, %struct.ip6_addr*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local signext i8 @udp_sendto_if(%struct.udp_pcb*, %struct.pbuf*, %struct.ip_addr*, i16 zeroext, %struct.netif*) local_unnamed_addr #0 !dbg !879 {
  %6 = icmp eq %struct.udp_pcb* %0, null, !dbg !894
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !897
  br i1 %6, label %7, label %8, !dbg !897

; <label>:7:                                      ; preds = %5
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0)) #8, !dbg !898
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !901
  tail call void @ukplat_terminate(i32 3) #9, !dbg !901
  unreachable

; <label>:8:                                      ; preds = %5
  %9 = icmp eq %struct.pbuf* %1, null, !dbg !905
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !908
  br i1 %9, label %10, label %11, !dbg !908

; <label>:10:                                     ; preds = %8
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0)) #8, !dbg !909
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !912
  tail call void @ukplat_terminate(i32 3) #9, !dbg !912
  unreachable

; <label>:11:                                     ; preds = %8
  %12 = icmp eq %struct.ip_addr* %2, null, !dbg !916
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !919
  br i1 %12, label %13, label %14, !dbg !919

; <label>:13:                                     ; preds = %11
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0)) #8, !dbg !920
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !923
  tail call void @ukplat_terminate(i32 3) #9, !dbg !923
  unreachable

; <label>:14:                                     ; preds = %11
  %15 = icmp eq %struct.netif* %4, null, !dbg !927
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !930
  br i1 %15, label %16, label %17, !dbg !930

; <label>:16:                                     ; preds = %14
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0)) #8, !dbg !931
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !934
  tail call void @ukplat_terminate(i32 3) #9, !dbg !934
  unreachable

; <label>:17:                                     ; preds = %14
  %18 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, !dbg !938
  %19 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, i32 1, !dbg !938
  %20 = load i8, i8* %19, align 4, !dbg !938, !tbaa !532
  %21 = icmp eq i8 %20, 46, !dbg !938
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !938
  %22 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 1
  %23 = load i8, i8* %22, align 4, !dbg !940, !tbaa !821
  br i1 %21, label %27, label %24, !dbg !938

; <label>:24:                                     ; preds = %17
  %25 = icmp eq i8 %20, %23, !dbg !938
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !941
  br i1 %25, label %27, label %26, !dbg !941

; <label>:26:                                     ; preds = %24
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !942
  br label %75, !dbg !942

; <label>:27:                                     ; preds = %17, %24
  %28 = phi i8 [ %20, %24 ], [ %23, %17 ], !dbg !944
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !944
  %29 = icmp eq i8 %28, 6, !dbg !944
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !946
  br i1 %29, label %30, label %59, !dbg !946

; <label>:30:                                     ; preds = %27
  %31 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, i32 0, i32 0, !dbg !947
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !947
  %32 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !947
  %33 = load i32, i32* %32, align 8, !dbg !947, !tbaa !471
  %34 = icmp eq i32 %33, 0, !dbg !947
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !947
  br i1 %34, label %35, label %48, !dbg !947

; <label>:35:                                     ; preds = %30
  %36 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !947
  %37 = load i32, i32* %36, align 4, !dbg !947, !tbaa !471
  %38 = icmp eq i32 %37, 0, !dbg !947
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !947
  br i1 %38, label %39, label %47, !dbg !947

; <label>:39:                                     ; preds = %35
  %40 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !947
  %41 = load i32, i32* %40, align 8, !dbg !947, !tbaa !471
  %42 = icmp eq i32 %41, 0, !dbg !947
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !947
  br i1 %42, label %43, label %47, !dbg !947

; <label>:43:                                     ; preds = %39
  %44 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !947
  %45 = load i32, i32* %44, align 4, !dbg !947, !tbaa !471
  %46 = icmp eq i32 %45, 0, !dbg !947
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !950
  br i1 %46, label %51, label %47, !dbg !950

; <label>:47:                                     ; preds = %43, %39, %35
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !951
  br label %56, !dbg !951

; <label>:48:                                     ; preds = %30
  %49 = and i32 %33, 255, !dbg !952
  %50 = icmp eq i32 %49, 255, !dbg !952
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !951
  br i1 %50, label %51, label %56, !dbg !951

; <label>:51:                                     ; preds = %48, %43
  %52 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 0, i32 0, !dbg !953
  %53 = tail call %struct.ip_addr* @ip6_select_source_address(%struct.netif* nonnull %4, %struct.ip6_addr* nonnull %52) #7, !dbg !955
  %54 = icmp eq %struct.ip_addr* %53, null, !dbg !957
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !959
  br i1 %54, label %55, label %72, !dbg !959

; <label>:55:                                     ; preds = %51
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !960
  br label %75, !dbg !960

; <label>:56:                                     ; preds = %47, %48
  %57 = tail call signext i8 @netif_get_ip6_addr_match(%struct.netif* nonnull %4, %struct.ip6_addr* nonnull %31) #7, !dbg !962
  %58 = icmp slt i8 %57, 0, !dbg !965
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !966
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br i1 %58, label %75, label %72, !dbg !966

; <label>:59:                                     ; preds = %27
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !967
  %60 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !967
  %61 = load i32, i32* %60, align 8, !dbg !967, !tbaa !471
  %62 = icmp eq i32 %61, 0, !dbg !967
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !969
  br i1 %62, label %66, label %63, !dbg !969

; <label>:63:                                     ; preds = %59
  %64 = and i32 %61, 240, !dbg !970
  %65 = icmp eq i32 %64, 224, !dbg !970
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !971
  br i1 %65, label %66, label %68, !dbg !971

; <label>:66:                                     ; preds = %63, %59
  %67 = getelementptr inbounds %struct.netif, %struct.netif* %4, i64 0, i32 1, !dbg !972
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !974
  br label %72, !dbg !974

; <label>:68:                                     ; preds = %63
  %69 = getelementptr inbounds %struct.netif, %struct.netif* %4, i64 0, i32 1, i32 0, i32 0, i32 0, i64 0, !dbg !975
  %70 = load i32, i32* %69, align 8, !dbg !975, !tbaa !471
  %71 = icmp eq i32 %61, %70, !dbg !975
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !978
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br i1 %71, label %72, label %75, !dbg !978

; <label>:72:                                     ; preds = %68, %56, %66, %51
  %73 = phi %struct.ip_addr* [ %53, %51 ], [ %67, %66 ], [ %18, %56 ], [ %18, %68 ], !dbg !979
  %74 = tail call signext i8 @udp_sendto_if_src(%struct.udp_pcb* nonnull %0, %struct.pbuf* nonnull %1, %struct.ip_addr* nonnull %2, i16 zeroext %3, %struct.netif* nonnull %4, %struct.ip_addr* nonnull %73) #8, !dbg !980
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !981
  br label %75, !dbg !981

; <label>:75:                                     ; preds = %68, %56, %72, %55, %26
  %76 = phi i8 [ -4, %55 ], [ %74, %72 ], [ -6, %26 ], [ -4, %56 ], [ -4, %68 ], !dbg !982
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !983
  ret i8 %76, !dbg !983
}

; Function Attrs: noredzone
declare dso_local %struct.ip_addr* @ip6_select_source_address(%struct.netif*, %struct.ip6_addr*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local signext i8 @udp_sendto_if_src(%struct.udp_pcb*, %struct.pbuf*, %struct.ip_addr*, i16 zeroext, %struct.netif*, %struct.ip_addr*) local_unnamed_addr #0 !dbg !984 {
  %7 = icmp eq %struct.udp_pcb* %0, null, !dbg !1011
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1014
  br i1 %7, label %8, label %9, !dbg !1014

; <label>:8:                                      ; preds = %6
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0)) #8, !dbg !1015
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1018
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1018
  unreachable

; <label>:9:                                      ; preds = %6
  %10 = icmp eq %struct.pbuf* %1, null, !dbg !1022
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1025
  br i1 %10, label %11, label %12, !dbg !1025

; <label>:11:                                     ; preds = %9
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0)) #8, !dbg !1026
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1029
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1029
  unreachable

; <label>:12:                                     ; preds = %9
  %13 = icmp eq %struct.ip_addr* %2, null, !dbg !1033
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1036
  br i1 %13, label %14, label %15, !dbg !1036

; <label>:14:                                     ; preds = %12
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0)) #8, !dbg !1037
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1040
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1040
  unreachable

; <label>:15:                                     ; preds = %12
  %16 = icmp eq %struct.ip_addr* %5, null, !dbg !1044
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1047
  br i1 %16, label %17, label %18, !dbg !1047

; <label>:17:                                     ; preds = %15
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i64 0, i64 0)) #8, !dbg !1048
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1051
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1051
  unreachable

; <label>:18:                                     ; preds = %15
  %19 = icmp eq %struct.netif* %4, null, !dbg !1055
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1058
  br i1 %19, label %20, label %21, !dbg !1058

; <label>:20:                                     ; preds = %18
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i64 0, i64 0)) #8, !dbg !1059
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1062
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1062
  unreachable

; <label>:21:                                     ; preds = %18
  %22 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, !dbg !1066
  %23 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, i32 1, !dbg !1066
  %24 = load i8, i8* %23, align 4, !dbg !1066, !tbaa !532
  %25 = icmp eq i8 %24, 46, !dbg !1066
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1066
  br i1 %25, label %26, label %27, !dbg !1066

; <label>:26:                                     ; preds = %21
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1068
  br label %35, !dbg !1068

; <label>:27:                                     ; preds = %21
  %28 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 1, !dbg !1066
  %29 = load i8, i8* %28, align 4, !dbg !1066, !tbaa !821
  %30 = icmp eq i8 %24, %29, !dbg !1066
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1069
  br i1 %30, label %31, label %157, !dbg !1069

; <label>:31:                                     ; preds = %27
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1068
  %32 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 1, !dbg !1068
  %33 = load i8, i8* %32, align 4, !dbg !1068, !tbaa !821
  %34 = icmp eq i8 %24, %33, !dbg !1068
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1070
  br i1 %34, label %35, label %157, !dbg !1070

; <label>:35:                                     ; preds = %26, %31
  %36 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 8, !dbg !1071
  %37 = load i16, i16* %36, align 2, !dbg !1071, !tbaa !499
  %38 = icmp eq i16 %37, 0, !dbg !1073
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1074
  br i1 %38, label %39, label %42, !dbg !1074

; <label>:39:                                     ; preds = %35
  %40 = tail call signext i8 @udp_bind(%struct.udp_pcb* nonnull %0, %struct.ip_addr* nonnull %22, i16 zeroext 0) #8, !dbg !1075
  %41 = icmp eq i8 %40, 0, !dbg !1078
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1080
  br i1 %41, label %42, label %157, !dbg !1080

; <label>:42:                                     ; preds = %39, %35
  %43 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %1, i64 0, i32 2, !dbg !1081
  %44 = load i16, i16* %43, align 8, !dbg !1081, !tbaa !667
  %45 = icmp ugt i16 %44, -9, !dbg !1083
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1084
  br i1 %45, label %157, label %46, !dbg !1084

; <label>:46:                                     ; preds = %42
  %47 = tail call zeroext i8 @pbuf_add_header(%struct.pbuf* nonnull %1, i64 8) #7, !dbg !1085
  %48 = icmp eq i8 %47, 0, !dbg !1085
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1087
  br i1 %48, label %56, label %49, !dbg !1087

; <label>:49:                                     ; preds = %46
  %50 = tail call %struct.pbuf* @pbuf_alloc(i32 54, i16 zeroext 8, i32 640) #7, !dbg !1088
  %51 = icmp eq %struct.pbuf* %50, null, !dbg !1091
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1093
  br i1 %51, label %157, label %52, !dbg !1093

; <label>:52:                                     ; preds = %49
  %53 = load i16, i16* %43, align 8, !dbg !1094, !tbaa !667
  %54 = icmp eq i16 %53, 0, !dbg !1096
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1097
  br i1 %54, label %58, label %55, !dbg !1097

; <label>:55:                                     ; preds = %52
  tail call void @pbuf_chain(%struct.pbuf* nonnull %50, %struct.pbuf* nonnull %1) #7, !dbg !1098
  br label %56, !dbg !1100

; <label>:56:                                     ; preds = %46, %55
  %57 = phi %struct.pbuf* [ %50, %55 ], [ %1, %46 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %58, !dbg !1101

; <label>:58:                                     ; preds = %56, %52
  %59 = phi %struct.pbuf* [ %50, %52 ], [ %57, %56 ], !dbg !1104
  %60 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %59, i64 0, i32 3, !dbg !1101
  %61 = load i16, i16* %60, align 2, !dbg !1101, !tbaa !452
  %62 = icmp ugt i16 %61, 7, !dbg !1101
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1106
  br i1 %62, label %64, label %63, !dbg !1106

; <label>:63:                                     ; preds = %58
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.19, i64 0, i64 0)) #8, !dbg !1107
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1110
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1110
  unreachable

; <label>:64:                                     ; preds = %58
  %65 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %59, i64 0, i32 1, !dbg !1114
  %66 = bitcast i8** %65 to %struct.udp_hdr**, !dbg !1114
  %67 = load %struct.udp_hdr*, %struct.udp_hdr** %66, align 8, !dbg !1114, !tbaa !465
  %68 = load i16, i16* %36, align 2, !dbg !1116, !tbaa !499
  %69 = tail call zeroext i16 @lwip_htons(i16 zeroext %68) #7, !dbg !1117
  %70 = getelementptr inbounds %struct.udp_hdr, %struct.udp_hdr* %67, i64 0, i32 0, !dbg !1118
  store i16 %69, i16* %70, align 1, !dbg !1119, !tbaa !475
  %71 = tail call zeroext i16 @lwip_htons(i16 zeroext %3) #7, !dbg !1120
  %72 = getelementptr inbounds %struct.udp_hdr, %struct.udp_hdr* %67, i64 0, i32 1, !dbg !1121
  store i16 %71, i16* %72, align 1, !dbg !1122, !tbaa !479
  %73 = getelementptr inbounds %struct.udp_hdr, %struct.udp_hdr* %67, i64 0, i32 3, !dbg !1123
  store i16 0, i16* %73, align 1, !dbg !1124, !tbaa !661
  %74 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 7, !dbg !1125
  %75 = load i8, i8* %74, align 8, !dbg !1125, !tbaa !563
  %76 = and i8 %75, 8, !dbg !1127
  %77 = icmp eq i8 %76, 0, !dbg !1128
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1129
  br i1 %77, label %94, label %78, !dbg !1129

; <label>:78:                                     ; preds = %64
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1130
  %79 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 1, !dbg !1130
  %80 = load i8, i8* %79, align 4, !dbg !1130, !tbaa !821
  %81 = icmp eq i8 %80, 6, !dbg !1130
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1131
  %82 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1130
  %83 = load i32, i32* %82, align 4, !dbg !1130, !tbaa !471
  br i1 %81, label %84, label %87, !dbg !1131

; <label>:84:                                     ; preds = %78
  %85 = and i32 %83, 255, !dbg !1130
  %86 = icmp eq i32 %85, 255, !dbg !1130
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1130
  br i1 %86, label %90, label %94, !dbg !1130

; <label>:87:                                     ; preds = %78
  %88 = and i32 %83, 240, !dbg !1130
  %89 = icmp eq i32 %88, 224, !dbg !1130
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1131
  br i1 %89, label %90, label %94, !dbg !1131

; <label>:90:                                     ; preds = %87, %84
  %91 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %59, i64 0, i32 5, !dbg !1132
  %92 = load i8, i8* %91, align 1, !dbg !1134, !tbaa !1135
  %93 = or i8 %92, 4, !dbg !1134
  store i8 %93, i8* %91, align 1, !dbg !1134, !tbaa !1135
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1136
  br label %94, !dbg !1136

; <label>:94:                                     ; preds = %64, %90, %87, %84
  %95 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %59, i64 0, i32 2, !dbg !1137
  %96 = load i16, i16* %95, align 8, !dbg !1137, !tbaa !667
  %97 = tail call zeroext i16 @lwip_htons(i16 zeroext %96) #7, !dbg !1138
  %98 = getelementptr inbounds %struct.udp_hdr, %struct.udp_hdr* %67, i64 0, i32 2, !dbg !1139
  store i16 %97, i16* %98, align 1, !dbg !1140, !tbaa !1141
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1142
  %99 = getelementptr inbounds %struct.netif, %struct.netif* %4, i64 0, i32 16, !dbg !1142
  %100 = load i16, i16* %99, align 8, !dbg !1142, !tbaa !655
  %101 = and i16 %100, 2, !dbg !1142
  %102 = icmp eq i16 %101, 0, !dbg !1142
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1143
  br i1 %102, label %103, label %105, !dbg !1143

; <label>:103:                                    ; preds = %94
  %104 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 1, !dbg !1144
  br label %118, !dbg !1143

; <label>:105:                                    ; preds = %94
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1145
  %106 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 1, !dbg !1145
  %107 = load i8, i8* %106, align 4, !dbg !1145, !tbaa !821
  %108 = icmp eq i8 %107, 6, !dbg !1145
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1146
  br i1 %108, label %113, label %109, !dbg !1146

; <label>:109:                                    ; preds = %105
  %110 = load i8, i8* %74, align 8, !dbg !1147, !tbaa !563
  %111 = and i8 %110, 1, !dbg !1148
  %112 = icmp eq i8 %111, 0, !dbg !1149
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1150
  br i1 %112, label %113, label %118, !dbg !1150

; <label>:113:                                    ; preds = %109, %105
  %114 = load i16, i16* %95, align 8, !dbg !1151, !tbaa !667
  %115 = tail call zeroext i16 @ip_chksum_pseudo(%struct.pbuf* nonnull %59, i8 zeroext 17, i16 zeroext %114, %struct.ip_addr* nonnull %5, %struct.ip_addr* nonnull %2) #7, !dbg !1153
  %116 = icmp eq i16 %115, 0, !dbg !1155
  %117 = select i1 %116, i16 -1, i16 %115, !dbg !1157
  store i16 %117, i16* %73, align 1, !dbg !1158, !tbaa !661
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1159
  br label %118, !dbg !1159

; <label>:118:                                    ; preds = %103, %109, %113
  %119 = phi i8* [ %104, %103 ], [ %106, %109 ], [ %106, %113 ], !dbg !1144
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1144
  %120 = load i8, i8* %119, align 4, !dbg !1144, !tbaa !821
  %121 = icmp eq i8 %120, 6, !dbg !1144
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1144
  %122 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1144
  %123 = load i32, i32* %122, align 4, !dbg !1144, !tbaa !471
  br i1 %121, label %124, label %127, !dbg !1144

; <label>:124:                                    ; preds = %118
  %125 = and i32 %123, 255, !dbg !1144
  %126 = icmp eq i32 %125, 255, !dbg !1144
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1144
  br i1 %126, label %130, label %132, !dbg !1144

; <label>:127:                                    ; preds = %118
  %128 = and i32 %123, 240, !dbg !1144
  %129 = icmp eq i32 %128, 224, !dbg !1144
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1144
  br i1 %129, label %130, label %132, !dbg !1144

; <label>:130:                                    ; preds = %127, %124
  %131 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 12, !dbg !1161
  br label %134, !dbg !1144

; <label>:132:                                    ; preds = %127, %124
  %133 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 5, !dbg !1162
  br label %134, !dbg !1144

; <label>:134:                                    ; preds = %132, %130
  %135 = phi i8* [ %133, %132 ], [ %131, %130 ]
  %136 = load i8, i8* %135, align 1, !dbg !1163, !tbaa !471
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1144
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1165
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1165
  br i1 %121, label %137, label %143, !dbg !1165

; <label>:137:                                    ; preds = %134
  %138 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 0, i32 0, !dbg !1165
  %139 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 0, i32 0, !dbg !1165
  %140 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 4, !dbg !1165
  %141 = load i8, i8* %140, align 2, !dbg !1165, !tbaa !1166
  %142 = tail call signext i8 @ip6_output_if_src(%struct.pbuf* nonnull %59, %struct.ip6_addr* nonnull %138, %struct.ip6_addr* nonnull %139, i8 zeroext %136, i8 zeroext %141, i8 zeroext 17, %struct.netif* nonnull %4) #7, !dbg !1165
  br label %149, !dbg !1165

; <label>:143:                                    ; preds = %134
  %144 = bitcast %struct.ip_addr* %5 to %struct.ip4_addr*, !dbg !1165
  %145 = bitcast %struct.ip_addr* %2 to %struct.ip4_addr*, !dbg !1165
  %146 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 4, !dbg !1165
  %147 = load i8, i8* %146, align 2, !dbg !1165, !tbaa !1166
  %148 = tail call signext i8 @ip4_output_if_src(%struct.pbuf* nonnull %59, %struct.ip4_addr* %144, %struct.ip4_addr* %145, i8 zeroext %136, i8 zeroext %147, i8 zeroext 17, %struct.netif* nonnull %4) #7, !dbg !1165
  br label %149, !dbg !1165

; <label>:149:                                    ; preds = %143, %137
  %150 = phi i8 [ %142, %137 ], [ %148, %143 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1165
  %151 = icmp eq %struct.pbuf* %59, %1, !dbg !1167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1169
  br i1 %151, label %154, label %152, !dbg !1169

; <label>:152:                                    ; preds = %149
  %153 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %59) #7, !dbg !1170
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1172
  br label %154, !dbg !1172

; <label>:154:                                    ; preds = %149, %152
  %155 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 5, i32 0), align 2, !dbg !1173, !tbaa !1174
  %156 = add i16 %155, 1, !dbg !1173
  store i16 %156, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 5, i32 0), align 2, !dbg !1173, !tbaa !1174
  br label %157, !dbg !1175

; <label>:157:                                    ; preds = %49, %42, %39, %27, %31, %154
  %158 = phi i8 [ %150, %154 ], [ -6, %31 ], [ -6, %27 ], [ %40, %39 ], [ -1, %42 ], [ -1, %49 ], !dbg !1176
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1176
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1178
  ret i8 %158, !dbg !1178
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @udp_bind(%struct.udp_pcb*, %struct.ip_addr* readonly, i16 zeroext) local_unnamed_addr #0 !dbg !1179 {
  %4 = alloca %struct.ip_addr, align 4
  %5 = bitcast %struct.ip_addr* %4 to i8*, !dbg !1196
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #6, !dbg !1196
  %6 = icmp eq %struct.ip_addr* %1, null, !dbg !1197
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1199
  br i1 %6, label %7, label %8, !dbg !1199

; <label>:7:                                      ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1200
  br label %8, !dbg !1200

; <label>:8:                                      ; preds = %3, %7
  %9 = phi %struct.ip_addr* [ @ip_addr_any, %7 ], [ %1, %3 ]
  %10 = icmp eq %struct.udp_pcb* %0, null, !dbg !1202
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1205
  br i1 %10, label %11, label %12, !dbg !1205

; <label>:11:                                     ; preds = %8
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0)) #8, !dbg !1206
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1209
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1209
  unreachable

; <label>:12:                                     ; preds = %8
  %13 = load %struct.udp_pcb*, %struct.udp_pcb** @udp_pcbs, align 8, !dbg !1214, !tbaa !486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1217
  %14 = icmp eq %struct.udp_pcb* %13, null, !dbg !1218
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1220
  br i1 %14, label %23, label %15, !dbg !1220

; <label>:15:                                     ; preds = %12, %19
  %16 = phi %struct.udp_pcb* [ %21, %19 ], [ %13, %12 ]
  %17 = icmp eq %struct.udp_pcb* %16, %0, !dbg !1221
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1224
  br i1 %17, label %18, label %19, !dbg !1224

; <label>:18:                                     ; preds = %15
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1225
  br label %23, !dbg !1225

; <label>:19:                                     ; preds = %15
  %20 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %16, i64 0, i32 6, !dbg !1227
  %21 = load %struct.udp_pcb*, %struct.udp_pcb** %20, align 8, !dbg !1227, !tbaa !617
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1228
  %22 = icmp eq %struct.udp_pcb* %21, null, !dbg !1218
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1220
  br i1 %22, label %23, label %15, !dbg !1220, !llvm.loop !1229

; <label>:23:                                     ; preds = %19, %12, %18
  %24 = phi i32 [ 1, %18 ], [ 0, %12 ], [ 0, %19 ]
  %25 = icmp eq %struct.ip_addr* %9, null, !dbg !1231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1231
  br i1 %25, label %78, label %26, !dbg !1231

; <label>:26:                                     ; preds = %23
  %27 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %9, i64 0, i32 1, !dbg !1231
  %28 = load i8, i8* %27, align 4, !dbg !1231, !tbaa !821
  %29 = icmp eq i8 %28, 6, !dbg !1231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1232
  br i1 %29, label %30, label %78, !dbg !1232

; <label>:30:                                     ; preds = %26
  %31 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %9, i64 0, i32 0, i32 0, i32 1, !dbg !1233
  %32 = load i8, i8* %31, align 4, !dbg !1233, !tbaa !471
  %33 = icmp eq i8 %32, 0, !dbg !1233
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1233
  br i1 %33, label %34, label %78, !dbg !1233

; <label>:34:                                     ; preds = %30
  %35 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %9, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1233
  %36 = load i32, i32* %35, align 4, !dbg !1233, !tbaa !471
  %37 = zext i32 %36 to i64, !dbg !1233
  %38 = and i64 %37, 49407, !dbg !1233
  %39 = icmp eq i64 %38, 33022, !dbg !1233
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1233
  br i1 %39, label %45, label %40, !dbg !1233

; <label>:40:                                     ; preds = %34
  %41 = and i64 %37, 36863, !dbg !1233
  %42 = icmp eq i64 %41, 511, !dbg !1233
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1233
  br i1 %42, label %45, label %43, !dbg !1233

; <label>:43:                                     ; preds = %40
  %44 = icmp eq i64 %41, 767, !dbg !1233
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1234
  br i1 %44, label %45, label %78, !dbg !1234

; <label>:45:                                     ; preds = %43, %40, %34
  %46 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 1, !dbg !1235
  store i8 6, i8* %46, align 4, !dbg !1235, !tbaa !821
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1238
  %47 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1239
  store i32 %36, i32* %47, align 4, !dbg !1239, !tbaa !471
  %48 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %9, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !1239
  %49 = load i32, i32* %48, align 4, !dbg !1239, !tbaa !471
  %50 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !1239
  store i32 %49, i32* %50, align 4, !dbg !1239, !tbaa !471
  %51 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %9, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !1239
  %52 = load i32, i32* %51, align 4, !dbg !1239, !tbaa !471
  %53 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !1239
  store i32 %52, i32* %53, align 4, !dbg !1239, !tbaa !471
  %54 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %9, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !1239
  %55 = load i32, i32* %54, align 4, !dbg !1239, !tbaa !471
  %56 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !1239
  store i32 %55, i32* %56, align 4, !dbg !1239, !tbaa !471
  %57 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, i32 1, !dbg !1239
  store i8 0, i8* %57, align 4, !dbg !1239, !tbaa !471
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1243
  %58 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, !dbg !1244
  %59 = call %struct.netif* @ip6_route(%struct.ip6_addr* nonnull %58, %struct.ip6_addr* nonnull %58) #7, !dbg !1244
  %60 = icmp eq %struct.netif* %59, null, !dbg !1245
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1244
  br i1 %60, label %77, label %61, !dbg !1244

; <label>:61:                                     ; preds = %45
  %62 = load i32, i32* %47, align 4, !dbg !1247, !tbaa !471
  %63 = zext i32 %62 to i64, !dbg !1247
  %64 = and i64 %63, 49407, !dbg !1247
  %65 = icmp eq i64 %64, 33022, !dbg !1247
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1247
  br i1 %65, label %71, label %66, !dbg !1247

; <label>:66:                                     ; preds = %61
  %67 = and i64 %63, 36863, !dbg !1247
  %68 = icmp eq i64 %67, 511, !dbg !1247
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1247
  br i1 %68, label %71, label %69, !dbg !1247

; <label>:69:                                     ; preds = %66
  %70 = icmp eq i64 %67, 767, !dbg !1247
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1247
  br i1 %70, label %71, label %75, !dbg !1247

; <label>:71:                                     ; preds = %69, %66, %61
  %72 = getelementptr inbounds %struct.netif, %struct.netif* %59, i64 0, i32 23, !dbg !1247
  %73 = load i8, i8* %72, align 8, !dbg !1247, !tbaa !526
  %74 = add i8 %73, 1, !dbg !1247
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1247
  br label %75, !dbg !1247

; <label>:75:                                     ; preds = %69, %71
  %76 = phi i8 [ %74, %71 ], [ 0, %69 ]
  store i8 %76, i8* %57, align 4, !dbg !1247, !tbaa !471
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1247
  br label %77, !dbg !1247

; <label>:77:                                     ; preds = %45, %75
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1249
  br label %78, !dbg !1249

; <label>:78:                                     ; preds = %30, %23, %77, %43, %26
  %79 = phi %struct.ip_addr* [ %9, %30 ], [ %4, %77 ], [ %9, %43 ], [ %9, %26 ], [ null, %23 ], !dbg !1250
  %80 = icmp eq i16 %2, 0, !dbg !1251
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1253
  br i1 %80, label %81, label %107, !dbg !1253

; <label>:81:                                     ; preds = %78
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1263
  %82 = load %struct.udp_pcb*, %struct.udp_pcb** @udp_pcbs, align 8
  %83 = icmp eq %struct.udp_pcb* %82, null
  %84 = load i16, i16* @udp_port, align 2, !dbg !1264, !tbaa !330
  br label %85, !dbg !1263

; <label>:85:                                     ; preds = %97, %81
  %86 = phi i16 [ %84, %81 ], [ %90, %97 ], !dbg !1264
  %87 = phi i16 [ 0, %81 ], [ %98, %97 ], !dbg !1266
  %88 = add i16 %86, 1, !dbg !1264
  %89 = icmp eq i16 %86, -1, !dbg !1273
  %90 = select i1 %89, i16 -16384, i16 %88, !dbg !1274
  store i16 %90, i16* @udp_port, align 2, !dbg !1275
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1279
  br i1 %83, label %91, label %92, !dbg !1279

; <label>:91:                                     ; preds = %85
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1280
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1281
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1282
  br label %209, !dbg !1282

; <label>:92:                                     ; preds = %85, %101
  %93 = phi %struct.udp_pcb* [ %103, %101 ], [ %82, %85 ]
  %94 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %93, i64 0, i32 8, !dbg !1283
  %95 = load i16, i16* %94, align 2, !dbg !1283, !tbaa !499
  %96 = icmp eq i16 %95, %90, !dbg !1284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1285
  br i1 %96, label %97, label %101, !dbg !1285

; <label>:97:                                     ; preds = %92
  %98 = add nuw nsw i16 %87, 1, !dbg !1286
  %99 = icmp ugt i16 %87, 16382, !dbg !1287
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1288
  br i1 %99, label %100, label %85, !dbg !1288

; <label>:100:                                    ; preds = %97
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1289
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1281
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1282
  br label %249, !dbg !1282

; <label>:101:                                    ; preds = %92
  %102 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %93, i64 0, i32 6, !dbg !1291
  %103 = load %struct.udp_pcb*, %struct.udp_pcb** %102, align 8, !dbg !1291, !tbaa !617
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1292
  %104 = icmp eq %struct.udp_pcb* %103, null, !dbg !1293
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1279
  br i1 %104, label %105, label %92, !dbg !1279, !llvm.loop !1294

; <label>:105:                                    ; preds = %101
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1280
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1281
  %106 = icmp eq i16 %90, 0, !dbg !1297
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1282
  br i1 %106, label %249, label %209, !dbg !1282

; <label>:107:                                    ; preds = %78
  %108 = load %struct.udp_pcb*, %struct.udp_pcb** @udp_pcbs, align 8, !dbg !1299, !tbaa !486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1302
  %109 = icmp eq %struct.udp_pcb* %108, null, !dbg !1303
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1305
  br i1 %109, label %209, label %110, !dbg !1305

; <label>:110:                                    ; preds = %107
  %111 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 3
  %112 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %79, i64 0, i32 1
  %113 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %79, i64 0, i32 0, i32 0, i32 0, i64 0
  %114 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %79, i64 0, i32 0, i32 0, i32 0, i64 1
  %115 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %79, i64 0, i32 0, i32 0, i32 0, i64 2
  %116 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %79, i64 0, i32 0, i32 0, i32 0, i64 3
  %117 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %79, i64 0, i32 0, i32 0, i32 1
  br label %118, !dbg !1305

; <label>:118:                                    ; preds = %110, %205
  %119 = phi %struct.udp_pcb* [ %108, %110 ], [ %207, %205 ]
  %120 = icmp eq %struct.udp_pcb* %119, %0, !dbg !1306
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1309
  br i1 %120, label %205, label %121, !dbg !1309

; <label>:121:                                    ; preds = %118
  %122 = load i8, i8* %111, align 1, !dbg !1310, !tbaa !1313
  %123 = and i8 %122, 4, !dbg !1310
  %124 = icmp eq i8 %123, 0, !dbg !1310
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1314
  br i1 %124, label %130, label %125, !dbg !1314

; <label>:125:                                    ; preds = %121
  %126 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %119, i64 0, i32 3, !dbg !1315
  %127 = load i8, i8* %126, align 1, !dbg !1315, !tbaa !1313
  %128 = and i8 %127, 4, !dbg !1315
  %129 = icmp eq i8 %128, 0, !dbg !1315
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1316
  br i1 %129, label %130, label %205, !dbg !1316

; <label>:130:                                    ; preds = %125, %121
  %131 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %119, i64 0, i32 8, !dbg !1317
  %132 = load i16, i16* %131, align 2, !dbg !1317, !tbaa !499
  %133 = icmp eq i16 %132, %2, !dbg !1320
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1321
  br i1 %133, label %134, label %205, !dbg !1321

; <label>:134:                                    ; preds = %130
  %135 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %119, i64 0, i32 0, i32 1, !dbg !1322
  %136 = load i8, i8* %135, align 4, !dbg !1322, !tbaa !532
  %137 = load i8, i8* %112, align 4, !dbg !1322, !tbaa !821
  %138 = icmp eq i8 %136, %137, !dbg !1322
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1323
  br i1 %138, label %141, label %139, !dbg !1323

; <label>:139:                                    ; preds = %134
  %140 = load i32, i32* %113, align 4, !dbg !1324, !tbaa !471
  br label %169, !dbg !1323

; <label>:141:                                    ; preds = %134
  %142 = icmp eq i8 %136, 6, !dbg !1322
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1323
  %143 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %119, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !1322
  %144 = load i32, i32* %143, align 8, !dbg !1322, !tbaa !471
  %145 = load i32, i32* %113, align 4, !dbg !1322, !tbaa !471
  %146 = icmp eq i32 %144, %145, !dbg !1322
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1325
  br i1 %142, label %147, label %168, !dbg !1323

; <label>:147:                                    ; preds = %141
  br i1 %146, label %148, label %169, !dbg !1322

; <label>:148:                                    ; preds = %147
  %149 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %119, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !1322
  %150 = load i32, i32* %149, align 4, !dbg !1322, !tbaa !471
  %151 = load i32, i32* %114, align 4, !dbg !1322, !tbaa !471
  %152 = icmp eq i32 %150, %151, !dbg !1322
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1322
  br i1 %152, label %153, label %169, !dbg !1322

; <label>:153:                                    ; preds = %148
  %154 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %119, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !1322
  %155 = load i32, i32* %154, align 8, !dbg !1322, !tbaa !471
  %156 = load i32, i32* %115, align 4, !dbg !1322, !tbaa !471
  %157 = icmp eq i32 %155, %156, !dbg !1322
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1322
  br i1 %157, label %158, label %169, !dbg !1322

; <label>:158:                                    ; preds = %153
  %159 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %119, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !1322
  %160 = load i32, i32* %159, align 4, !dbg !1322, !tbaa !471
  %161 = load i32, i32* %116, align 4, !dbg !1322, !tbaa !471
  %162 = icmp eq i32 %160, %161, !dbg !1322
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1322
  br i1 %162, label %163, label %169, !dbg !1322

; <label>:163:                                    ; preds = %158
  %164 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %119, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !1322
  %165 = load i8, i8* %164, align 8, !dbg !1322, !tbaa !471
  %166 = load i8, i8* %117, align 4, !dbg !1322, !tbaa !471
  %167 = icmp eq i8 %165, %166, !dbg !1322
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1322
  br i1 %167, label %249, label %171, !dbg !1322

; <label>:168:                                    ; preds = %141
  br i1 %146, label %249, label %171, !dbg !1323

; <label>:169:                                    ; preds = %139, %158, %153, %148, %147
  %170 = phi i32 [ %140, %139 ], [ %144, %158 ], [ %144, %153 ], [ %144, %148 ], [ %145, %147 ], !dbg !1324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1326
  br label %171

; <label>:171:                                    ; preds = %168, %163, %169
  %172 = phi i32 [ %145, %168 ], [ %144, %163 ], [ %170, %169 ], !dbg !1324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1324
  %173 = icmp eq i8 %137, 6, !dbg !1324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1326
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1324
  %174 = icmp eq i32 %172, 0, !dbg !1324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1325
  br i1 %173, label %175, label %185, !dbg !1326

; <label>:175:                                    ; preds = %171
  br i1 %174, label %176, label %186, !dbg !1324

; <label>:176:                                    ; preds = %175
  %177 = load i32, i32* %114, align 4, !dbg !1324, !tbaa !471
  %178 = icmp eq i32 %177, 0, !dbg !1324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1324
  br i1 %178, label %179, label %186, !dbg !1324

; <label>:179:                                    ; preds = %176
  %180 = load i32, i32* %115, align 4, !dbg !1324, !tbaa !471
  %181 = icmp eq i32 %180, 0, !dbg !1324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1324
  br i1 %181, label %182, label %186, !dbg !1324

; <label>:182:                                    ; preds = %179
  %183 = load i32, i32* %116, align 4, !dbg !1324, !tbaa !471
  %184 = icmp eq i32 %183, 0, !dbg !1324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1324
  br i1 %184, label %249, label %186, !dbg !1324

; <label>:185:                                    ; preds = %171
  br i1 %174, label %249, label %186, !dbg !1326

; <label>:186:                                    ; preds = %185, %182, %179, %176, %175
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1327
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1328
  %187 = icmp eq i8 %136, 6, !dbg !1328
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1327
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1328
  %188 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %119, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !1328
  %189 = load i32, i32* %188, align 8, !dbg !1328, !tbaa !471
  %190 = icmp eq i32 %189, 0, !dbg !1328
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1329
  br i1 %187, label %191, label %204, !dbg !1327

; <label>:191:                                    ; preds = %186
  br i1 %190, label %192, label %205, !dbg !1328

; <label>:192:                                    ; preds = %191
  %193 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %119, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !1328
  %194 = load i32, i32* %193, align 4, !dbg !1328, !tbaa !471
  %195 = icmp eq i32 %194, 0, !dbg !1328
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1328
  br i1 %195, label %196, label %205, !dbg !1328

; <label>:196:                                    ; preds = %192
  %197 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %119, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !1328
  %198 = load i32, i32* %197, align 8, !dbg !1328, !tbaa !471
  %199 = icmp eq i32 %198, 0, !dbg !1328
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1328
  br i1 %199, label %200, label %205, !dbg !1328

; <label>:200:                                    ; preds = %196
  %201 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %119, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !1328
  %202 = load i32, i32* %201, align 4, !dbg !1328, !tbaa !471
  %203 = icmp eq i32 %202, 0, !dbg !1328
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1328
  br i1 %203, label %249, label %205, !dbg !1328

; <label>:204:                                    ; preds = %186
  br i1 %190, label %249, label %205, !dbg !1327

; <label>:205:                                    ; preds = %125, %118, %130, %191, %192, %196, %200, %204
  %206 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %119, i64 0, i32 6, !dbg !1330
  %207 = load %struct.udp_pcb*, %struct.udp_pcb** %206, align 8, !dbg !1330, !tbaa !617
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1331
  %208 = icmp eq %struct.udp_pcb* %207, null, !dbg !1303
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1305
  br i1 %208, label %209, label %118, !dbg !1305, !llvm.loop !1332

; <label>:209:                                    ; preds = %205, %107, %91, %105
  %210 = phi i16 [ %90, %105 ], [ %90, %91 ], [ %2, %107 ], [ %2, %205 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1334
  %211 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %79, i64 0, i32 1, !dbg !1337
  %212 = load i8, i8* %211, align 4, !dbg !1337, !tbaa !821
  %213 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, i32 1, !dbg !1337
  store i8 %212, i8* %213, align 4, !dbg !1337, !tbaa !532
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1341
  %214 = icmp eq %struct.ip_addr* %79, null, !dbg !1342
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1342
  br i1 %214, label %215, label %216, !dbg !1342

; <label>:215:                                    ; preds = %209
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1344
  br label %234, !dbg !1344

; <label>:216:                                    ; preds = %209
  %217 = load i8, i8* %211, align 4, !dbg !1342, !tbaa !821
  %218 = icmp eq i8 %217, 6, !dbg !1342
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1346
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1347
  %219 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %79, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1347
  %220 = load i32, i32* %219, align 4, !dbg !1347, !tbaa !471
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1347
  br i1 %218, label %221, label %234, !dbg !1346

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !1347
  store i32 %220, i32* %222, align 8, !dbg !1347, !tbaa !471
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1347
  %223 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %79, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !1347
  %224 = load i32, i32* %223, align 4, !dbg !1347, !tbaa !471
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1347
  %225 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !1347
  store i32 %224, i32* %225, align 4, !dbg !1347, !tbaa !471
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1347
  %226 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %79, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !1347
  %227 = load i32, i32* %226, align 4, !dbg !1347, !tbaa !471
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1347
  %228 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !1347
  store i32 %227, i32* %228, align 8, !dbg !1347, !tbaa !471
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1347
  %229 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %79, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !1347
  %230 = load i32, i32* %229, align 4, !dbg !1347, !tbaa !471
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1347
  %231 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !1347
  store i32 %230, i32* %231, align 4, !dbg !1347, !tbaa !471
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1347
  %232 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %79, i64 0, i32 0, i32 0, i32 1, !dbg !1347
  %233 = load i8, i8* %232, align 4, !dbg !1347, !tbaa !471
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1347
  br label %240, !dbg !1350

; <label>:234:                                    ; preds = %216, %215
  %235 = phi i32 [ 0, %215 ], [ %220, %216 ], !dbg !1344
  %236 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !1344
  store i32 %235, i32* %236, align 8, !dbg !1344, !tbaa !471
  %237 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !1351
  store i32 0, i32* %237, align 4, !dbg !1351, !tbaa !471
  %238 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !1351
  store i32 0, i32* %238, align 8, !dbg !1351, !tbaa !471
  %239 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !1351
  store i32 0, i32* %239, align 4, !dbg !1351, !tbaa !471
  br label %240

; <label>:240:                                    ; preds = %234, %221
  %241 = phi i8 [ 0, %234 ], [ %233, %221 ]
  %242 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !1351
  store i8 %241, i8* %242, align 8, !dbg !1351, !tbaa !471
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %243 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 8, !dbg !1353
  store i16 %210, i16* %243, align 2, !dbg !1354, !tbaa !499
  %244 = icmp eq i32 %24, 0, !dbg !1355
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1357
  br i1 %244, label %245, label %249, !dbg !1357

; <label>:245:                                    ; preds = %240
  %246 = load i64, i64* bitcast (%struct.udp_pcb** @udp_pcbs to i64*), align 8, !dbg !1358, !tbaa !486
  %247 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 6, !dbg !1360
  %248 = bitcast %struct.udp_pcb** %247 to i64*, !dbg !1361
  store i64 %246, i64* %248, align 8, !dbg !1361, !tbaa !617
  store %struct.udp_pcb* %0, %struct.udp_pcb** @udp_pcbs, align 8, !dbg !1362, !tbaa !486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1363
  br label %249, !dbg !1363

; <label>:249:                                    ; preds = %163, %168, %182, %185, %200, %204, %240, %245, %105, %100
  %250 = phi i8 [ -8, %100 ], [ -8, %105 ], [ 0, %245 ], [ 0, %240 ], [ -8, %204 ], [ -8, %200 ], [ -8, %185 ], [ -8, %182 ], [ -8, %168 ], [ -8, %163 ], !dbg !1364
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1366
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #6, !dbg !1368
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1368
  ret i8 %250, !dbg !1368
}

; Function Attrs: noredzone
declare dso_local zeroext i8 @pbuf_add_header(%struct.pbuf*, i64) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local %struct.pbuf* @pbuf_alloc(i32, i16 zeroext, i32) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @pbuf_chain(%struct.pbuf*, %struct.pbuf*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local signext i8 @ip6_output_if_src(%struct.pbuf*, %struct.ip6_addr*, %struct.ip6_addr*, i8 zeroext, i8 zeroext, i8 zeroext, %struct.netif*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local signext i8 @ip4_output_if_src(%struct.pbuf*, %struct.ip4_addr*, %struct.ip4_addr*, i8 zeroext, i8 zeroext, i8 zeroext, %struct.netif*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local void @udp_bind_netif(%struct.udp_pcb* nocapture, %struct.netif* readonly) local_unnamed_addr #0 !dbg !1369 {
  %3 = icmp eq %struct.netif* %1, null, !dbg !1379
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1381
  br i1 %3, label %8, label %4, !dbg !1381

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 23, !dbg !1382
  %6 = load i8, i8* %5, align 8, !dbg !1382, !tbaa !526
  %7 = add i8 %6, 1, !dbg !1382
  br label %8, !dbg !1384

; <label>:8:                                      ; preds = %2, %4
  %9 = phi i8 [ %7, %4 ], [ 0, %2 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %10 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 2, !dbg !1385
  store i8 %9, i8* %10, align 8, !dbg !1387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1388
  ret void, !dbg !1388
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @udp_connect(%struct.udp_pcb*, %struct.ip_addr* readonly, i16 zeroext) local_unnamed_addr #0 !dbg !1389 {
  %4 = icmp eq %struct.udp_pcb* %0, null, !dbg !1405
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1408
  br i1 %4, label %5, label %6, !dbg !1408

; <label>:5:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i64 0, i64 0)) #8, !dbg !1409
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1412
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1412
  unreachable

; <label>:6:                                      ; preds = %3
  %7 = icmp eq %struct.ip_addr* %1, null, !dbg !1416
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1419
  br i1 %7, label %8, label %9, !dbg !1419

; <label>:8:                                      ; preds = %6
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i64 0, i64 0)) #8, !dbg !1420
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1423
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1423
  unreachable

; <label>:9:                                      ; preds = %6
  %10 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 8, !dbg !1427
  %11 = load i16, i16* %10, align 2, !dbg !1427, !tbaa !499
  %12 = icmp eq i16 %11, 0, !dbg !1428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1429
  br i1 %12, label %13, label %17, !dbg !1429

; <label>:13:                                     ; preds = %9
  %14 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, !dbg !1430
  %15 = tail call signext i8 @udp_bind(%struct.udp_pcb* nonnull %0, %struct.ip_addr* nonnull %14, i16 zeroext 0) #8, !dbg !1431
  %16 = icmp eq i8 %15, 0, !dbg !1433
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1435
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1436
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br i1 %16, label %17, label %99

; <label>:17:                                     ; preds = %13, %9
  %18 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, !dbg !1438
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1442
  %19 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 1, !dbg !1443
  %20 = load i8, i8* %19, align 4, !dbg !1443, !tbaa !821
  %21 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 1, !dbg !1443
  store i8 %20, i8* %21, align 4, !dbg !1443, !tbaa !604
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1446
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1447
  %22 = load i8, i8* %19, align 4, !dbg !1447, !tbaa !821
  %23 = icmp eq i8 %22, 6, !dbg !1447
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1449
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1450
  %24 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1450
  %25 = load i32, i32* %24, align 4, !dbg !1450, !tbaa !471
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1450
  %26 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %18, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1450
  store i32 %25, i32* %26, align 8, !dbg !1450, !tbaa !471
  br i1 %23, label %27, label %39, !dbg !1449

; <label>:27:                                     ; preds = %17
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1450
  %28 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !1450
  %29 = load i32, i32* %28, align 4, !dbg !1450, !tbaa !471
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1450
  %30 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 1, !dbg !1450
  store i32 %29, i32* %30, align 4, !dbg !1450, !tbaa !471
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1450
  %31 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !1450
  %32 = load i32, i32* %31, align 4, !dbg !1450, !tbaa !471
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1450
  %33 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 2, !dbg !1450
  store i32 %32, i32* %33, align 8, !dbg !1450, !tbaa !471
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1450
  %34 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !1450
  %35 = load i32, i32* %34, align 4, !dbg !1450, !tbaa !471
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1450
  %36 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 3, !dbg !1450
  store i32 %35, i32* %36, align 4, !dbg !1450, !tbaa !471
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1450
  %37 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 1, !dbg !1450
  %38 = load i8, i8* %37, align 4, !dbg !1450, !tbaa !471
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1450
  br label %43, !dbg !1453

; <label>:39:                                     ; preds = %17
  %40 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 3, !dbg !1454
  store i32 0, i32* %40, align 4, !dbg !1454, !tbaa !471
  %41 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 2, !dbg !1454
  store i32 0, i32* %41, align 8, !dbg !1454, !tbaa !471
  %42 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 1, !dbg !1454
  store i32 0, i32* %42, align 4, !dbg !1454, !tbaa !471
  br label %43

; <label>:43:                                     ; preds = %39, %27
  %44 = phi i8 [ 0, %39 ], [ %38, %27 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %45 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 1, !dbg !1454
  store i8 %44, i8* %45, align 8, !dbg !1454
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1457
  %46 = icmp eq i8 %20, 6, !dbg !1457
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1458
  br i1 %46, label %47, label %80, !dbg !1458

; <label>:47:                                     ; preds = %43
  %48 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %18, i64 0, i32 0, i32 0, !dbg !1459
  %49 = icmp eq i8 %44, 0, !dbg !1459
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1459
  br i1 %49, label %50, label %80, !dbg !1459

; <label>:50:                                     ; preds = %47
  %51 = zext i32 %25 to i64, !dbg !1459
  %52 = and i64 %51, 49407, !dbg !1459
  %53 = icmp eq i64 %52, 33022, !dbg !1459
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1459
  br i1 %53, label %59, label %54, !dbg !1459

; <label>:54:                                     ; preds = %50
  %55 = and i64 %51, 36863, !dbg !1459
  %56 = icmp eq i64 %55, 511, !dbg !1459
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1459
  br i1 %56, label %59, label %57, !dbg !1459

; <label>:57:                                     ; preds = %54
  %58 = icmp eq i64 %55, 767, !dbg !1459
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1460
  br i1 %58, label %59, label %80, !dbg !1460

; <label>:59:                                     ; preds = %50, %54, %57
  %60 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, i32 0, i32 0, !dbg !1461
  %61 = tail call %struct.netif* @ip6_route(%struct.ip6_addr* nonnull %60, %struct.ip6_addr* nonnull %48) #7, !dbg !1461
  %62 = icmp eq %struct.netif* %61, null, !dbg !1462
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1461
  br i1 %62, label %79, label %63, !dbg !1461

; <label>:63:                                     ; preds = %59
  %64 = load i32, i32* %26, align 8, !dbg !1464, !tbaa !471
  %65 = zext i32 %64 to i64, !dbg !1464
  %66 = and i64 %65, 49407, !dbg !1464
  %67 = icmp eq i64 %66, 33022, !dbg !1464
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1464
  br i1 %67, label %73, label %68, !dbg !1464

; <label>:68:                                     ; preds = %63
  %69 = and i64 %65, 36863, !dbg !1464
  %70 = icmp eq i64 %69, 511, !dbg !1464
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1464
  br i1 %70, label %73, label %71, !dbg !1464

; <label>:71:                                     ; preds = %68
  %72 = icmp eq i64 %69, 767, !dbg !1464
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1464
  br i1 %72, label %73, label %77, !dbg !1464

; <label>:73:                                     ; preds = %71, %68, %63
  %74 = getelementptr inbounds %struct.netif, %struct.netif* %61, i64 0, i32 23, !dbg !1464
  %75 = load i8, i8* %74, align 8, !dbg !1464, !tbaa !526
  %76 = add i8 %75, 1, !dbg !1464
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1464
  br label %77, !dbg !1464

; <label>:77:                                     ; preds = %71, %73
  %78 = phi i8 [ %76, %73 ], [ 0, %71 ]
  store i8 %78, i8* %45, align 8, !dbg !1464, !tbaa !471
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1464
  br label %79, !dbg !1464

; <label>:79:                                     ; preds = %59, %77
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1466
  br label %80, !dbg !1466

; <label>:80:                                     ; preds = %47, %79, %57, %43
  %81 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 9, !dbg !1467
  store i16 %2, i16* %81, align 4, !dbg !1468, !tbaa !600
  %82 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 7, !dbg !1469
  %83 = load i8, i8* %82, align 8, !dbg !1470, !tbaa !563
  %84 = or i8 %83, 4, !dbg !1470
  store i8 %84, i8* %82, align 8, !dbg !1470, !tbaa !563
  %85 = load %struct.udp_pcb*, %struct.udp_pcb** @udp_pcbs, align 8, !dbg !1471, !tbaa !486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1474
  %86 = icmp eq %struct.udp_pcb* %85, null, !dbg !1475
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1477
  %87 = ptrtoint %struct.udp_pcb* %85 to i64, !dbg !1477
  br i1 %86, label %95, label %88, !dbg !1477

; <label>:88:                                     ; preds = %80, %91
  %89 = phi %struct.udp_pcb* [ %93, %91 ], [ %85, %80 ]
  %90 = icmp eq %struct.udp_pcb* %89, %0, !dbg !1478
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1481
  br i1 %90, label %98, label %91, !dbg !1481

; <label>:91:                                     ; preds = %88
  %92 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %89, i64 0, i32 6, !dbg !1482
  %93 = load %struct.udp_pcb*, %struct.udp_pcb** %92, align 8, !dbg !1482, !tbaa !617
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1483
  %94 = icmp eq %struct.udp_pcb* %93, null, !dbg !1475
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1477
  br i1 %94, label %95, label %88, !dbg !1477, !llvm.loop !1484

; <label>:95:                                     ; preds = %91, %80
  %96 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 6, !dbg !1486
  %97 = bitcast %struct.udp_pcb** %96 to i64*, !dbg !1487
  store i64 %87, i64* %97, align 8, !dbg !1487, !tbaa !617
  store %struct.udp_pcb* %0, %struct.udp_pcb** @udp_pcbs, align 8, !dbg !1488, !tbaa !486
  br label %98, !dbg !1489

; <label>:98:                                     ; preds = %88, %95
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1490
  br label %99, !dbg !1492

; <label>:99:                                     ; preds = %98, %13
  %100 = phi i8 [ %15, %13 ], [ 0, %98 ], !dbg !1436
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1492
  ret i8 %100, !dbg !1492
}

; Function Attrs: noredzone nounwind
define dso_local void @udp_disconnect(%struct.udp_pcb*) local_unnamed_addr #0 !dbg !1493 {
  %2 = icmp eq %struct.udp_pcb* %0, null, !dbg !1499
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1502
  br i1 %2, label %3, label %4, !dbg !1502

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.23, i64 0, i64 0)) #8, !dbg !1503
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1506
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1506
  unreachable

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, i32 1, !dbg !1510
  %6 = load i8, i8* %5, align 4, !dbg !1510, !tbaa !532
  %7 = icmp eq i8 %6, 46, !dbg !1510
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1512
  br i1 %7, label %8, label %28, !dbg !1512

; <label>:8:                                      ; preds = %4
  %9 = load i8, i8* getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip_addr_any_type, i64 0, i32 1), align 4, !dbg !1513, !tbaa !821
  %10 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 1, !dbg !1513
  store i8 %9, i8* %10, align 4, !dbg !1513, !tbaa !604
  %11 = icmp eq i8 %9, 6, !dbg !1517
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1519
  %12 = load i32, i32* getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip_addr_any_type, i64 0, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !1520, !tbaa !471
  %13 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 0, !dbg !1520
  store i32 %12, i32* %13, align 8, !dbg !1520, !tbaa !471
  br i1 %11, label %14, label %23, !dbg !1519

; <label>:14:                                     ; preds = %8
  %15 = load i32, i32* getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip_addr_any_type, i64 0, i32 0, i32 0, i32 0, i64 1), align 4, !dbg !1520, !tbaa !471
  %16 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 1, !dbg !1520
  store i32 %15, i32* %16, align 4, !dbg !1520, !tbaa !471
  %17 = load i32, i32* getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip_addr_any_type, i64 0, i32 0, i32 0, i32 0, i64 2), align 4, !dbg !1520, !tbaa !471
  %18 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 2, !dbg !1520
  store i32 %17, i32* %18, align 8, !dbg !1520, !tbaa !471
  %19 = load i32, i32* getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip_addr_any_type, i64 0, i32 0, i32 0, i32 0, i64 3), align 4, !dbg !1520, !tbaa !471
  %20 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 3, !dbg !1520
  store i32 %19, i32* %20, align 4, !dbg !1520, !tbaa !471
  %21 = load i8, i8* getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip_addr_any_type, i64 0, i32 0, i32 0, i32 1), align 4, !dbg !1520, !tbaa !471
  %22 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 1, !dbg !1520
  store i8 %21, i8* %22, align 8, !dbg !1520, !tbaa !471
  br label %43, !dbg !1523

; <label>:23:                                     ; preds = %8
  %24 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 3, !dbg !1524
  store i32 0, i32* %24, align 4, !dbg !1524, !tbaa !471
  %25 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 2, !dbg !1524
  store i32 0, i32* %25, align 8, !dbg !1524, !tbaa !471
  %26 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 1, !dbg !1524
  store i32 0, i32* %26, align 4, !dbg !1524, !tbaa !471
  %27 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 1, !dbg !1524
  store i8 0, i8* %27, align 8, !dbg !1524, !tbaa !471
  br label %43

; <label>:28:                                     ; preds = %4
  %29 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 1, !dbg !1527
  %30 = load i8, i8* %29, align 4, !dbg !1527, !tbaa !604
  %31 = icmp eq i8 %30, 6, !dbg !1527
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1531
  %32 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 0, !dbg !1532
  store i32 0, i32* %32, align 8, !dbg !1532, !tbaa !471
  br i1 %31, label %33, label %38, !dbg !1531

; <label>:33:                                     ; preds = %28
  %34 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 1, !dbg !1532
  store i32 0, i32* %34, align 4, !dbg !1532, !tbaa !471
  %35 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 2, !dbg !1532
  store i32 0, i32* %35, align 8, !dbg !1532, !tbaa !471
  %36 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 3, !dbg !1532
  store i32 0, i32* %36, align 4, !dbg !1532, !tbaa !471
  %37 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 1, !dbg !1532
  store i8 0, i8* %37, align 8, !dbg !1532, !tbaa !471
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1535
  store i8 6, i8* %29, align 4, !dbg !1537, !tbaa !604
  br label %43, !dbg !1541

; <label>:38:                                     ; preds = %28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1542
  store i8 0, i8* %29, align 4, !dbg !1545, !tbaa !604
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1549
  %39 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 3, !dbg !1550
  store i32 0, i32* %39, align 4, !dbg !1550, !tbaa !471
  %40 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 2, !dbg !1550
  store i32 0, i32* %40, align 8, !dbg !1550, !tbaa !471
  %41 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 1, !dbg !1550
  store i32 0, i32* %41, align 4, !dbg !1550, !tbaa !471
  %42 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 1, !dbg !1550
  store i8 0, i8* %42, align 8, !dbg !1550, !tbaa !471
  br label %43

; <label>:43:                                     ; preds = %33, %38, %23, %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %44 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 9, !dbg !1552
  store i16 0, i16* %44, align 4, !dbg !1553, !tbaa !600
  %45 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 2, !dbg !1554
  store i8 0, i8* %45, align 8, !dbg !1555, !tbaa !521
  %46 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 7, !dbg !1556
  %47 = load i8, i8* %46, align 8, !dbg !1556, !tbaa !563
  %48 = and i8 %47, -5, !dbg !1556
  store i8 %48, i8* %46, align 8, !dbg !1556, !tbaa !563
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1558
  ret void, !dbg !1558
}

; Function Attrs: noredzone nounwind
define dso_local void @udp_recv(%struct.udp_pcb*, void (i8*, %struct.udp_pcb*, %struct.pbuf*, %struct.ip_addr*, i16)*, i8*) local_unnamed_addr #0 !dbg !1559 {
  %4 = icmp eq %struct.udp_pcb* %0, null, !dbg !1569
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1572
  br i1 %4, label %5, label %6, !dbg !1572

; <label>:5:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i64 0, i64 0)) #8, !dbg !1573
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1576
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1576
  unreachable

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 13, !dbg !1580
  store void (i8*, %struct.udp_pcb*, %struct.pbuf*, %struct.ip_addr*, i16)* %1, void (i8*, %struct.udp_pcb*, %struct.pbuf*, %struct.ip_addr*, i16)** %7, align 8, !dbg !1581, !tbaa !689
  %8 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 14, !dbg !1582
  store i8* %2, i8** %8, align 8, !dbg !1583, !tbaa !694
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1584
  ret void, !dbg !1584
}

; Function Attrs: noredzone nounwind
define dso_local void @udp_remove(%struct.udp_pcb*) local_unnamed_addr #0 !dbg !1585 {
  %2 = icmp eq %struct.udp_pcb* %0, null, !dbg !1590
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1593
  br i1 %2, label %3, label %4, !dbg !1593

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i64 0, i64 0)) #8, !dbg !1594
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1597
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1597
  unreachable

; <label>:4:                                      ; preds = %1
  %5 = load %struct.udp_pcb*, %struct.udp_pcb** @udp_pcbs, align 8, !dbg !1601, !tbaa !486
  %6 = icmp eq %struct.udp_pcb* %5, %0, !dbg !1603
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1604
  br i1 %6, label %7, label %11, !dbg !1604

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 6, !dbg !1605
  %9 = bitcast %struct.udp_pcb** %8 to i64*, !dbg !1605
  %10 = load i64, i64* %9, align 8, !dbg !1605, !tbaa !617
  store i64 %10, i64* bitcast (%struct.udp_pcb** @udp_pcbs to i64*), align 8, !dbg !1607, !tbaa !486
  br label %32, !dbg !1608

; <label>:11:                                     ; preds = %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1610
  %12 = icmp eq %struct.udp_pcb* %5, null, !dbg !1613
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1615
  br i1 %12, label %33, label %13, !dbg !1615

; <label>:13:                                     ; preds = %11
  %14 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %5, i64 0, i32 6, !dbg !1616
  %15 = load %struct.udp_pcb*, %struct.udp_pcb** %14, align 8, !dbg !1616, !tbaa !617
  %16 = icmp eq %struct.udp_pcb* %15, null, !dbg !1619
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1620
  br i1 %16, label %31, label %17, !dbg !1620

; <label>:17:                                     ; preds = %13, %27
  %18 = phi %struct.udp_pcb* [ %29, %27 ], [ %15, %13 ]
  %19 = phi %struct.udp_pcb* [ %18, %27 ], [ %5, %13 ]
  %20 = icmp eq %struct.udp_pcb* %18, %0, !dbg !1621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1622
  br i1 %20, label %21, label %27, !dbg !1622

; <label>:21:                                     ; preds = %17
  %22 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %19, i64 0, i32 6, !dbg !1616
  %23 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 6, !dbg !1623
  %24 = bitcast %struct.udp_pcb** %23 to i64*, !dbg !1623
  %25 = load i64, i64* %24, align 8, !dbg !1623, !tbaa !617
  %26 = bitcast %struct.udp_pcb** %22 to i64*, !dbg !1625
  store i64 %25, i64* %26, align 8, !dbg !1625, !tbaa !617
  br label %32, !dbg !1626

; <label>:27:                                     ; preds = %17
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1627
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1615
  %28 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %18, i64 0, i32 6, !dbg !1616
  %29 = load %struct.udp_pcb*, %struct.udp_pcb** %28, align 8, !dbg !1616, !tbaa !617
  %30 = icmp eq %struct.udp_pcb* %29, null, !dbg !1619
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1620
  br i1 %30, label %31, label %17, !dbg !1620

; <label>:31:                                     ; preds = %27, %13
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1627
  br label %32, !dbg !1628

; <label>:32:                                     ; preds = %7, %21, %31
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1629
  br label %33, !dbg !1628

; <label>:33:                                     ; preds = %32, %11
  %34 = bitcast %struct.udp_pcb* %0 to i8*, !dbg !1628
  tail call void @memp_free(i32 0, i8* %34) #7, !dbg !1630
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1631
  ret void, !dbg !1631
}

; Function Attrs: noredzone
declare dso_local void @memp_free(i32, i8*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local %struct.udp_pcb* @udp_new() local_unnamed_addr #0 !dbg !1632 {
  %1 = tail call i8* @memp_malloc(i32 0) #7, !dbg !1637
  %2 = bitcast i8* %1 to %struct.udp_pcb*, !dbg !1638
  %3 = icmp eq i8* %1, null, !dbg !1640
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1642
  br i1 %3, label %8, label %4, !dbg !1642

; <label>:4:                                      ; preds = %0
  %5 = tail call i8* @memset(i8* nonnull %1, i32 0, i64 96) #7, !dbg !1643
  %6 = getelementptr inbounds i8, i8* %1, i64 51, !dbg !1645
  store i8 -1, i8* %6, align 1, !dbg !1646, !tbaa !1647
  %7 = getelementptr inbounds i8, i8* %1, i64 77, !dbg !1648
  store i8 -1, i8* %7, align 1, !dbg !1648, !tbaa !1649
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1650
  br label %8, !dbg !1650

; <label>:8:                                      ; preds = %0, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1651
  ret %struct.udp_pcb* %2, !dbg !1651
}

; Function Attrs: noredzone
declare dso_local i8* @memp_malloc(i32) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local %struct.udp_pcb* @udp_new_ip_type(i8 zeroext) local_unnamed_addr #0 !dbg !1652 {
  %2 = tail call i8* @memp_malloc(i32 0) #7, !dbg !1659
  %3 = bitcast i8* %2 to %struct.udp_pcb*, !dbg !1661
  %4 = icmp eq i8* %2, null, !dbg !1663
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1664
  br i1 %4, label %11, label %5, !dbg !1664

; <label>:5:                                      ; preds = %1
  %6 = tail call i8* @memset(i8* nonnull %2, i32 0, i64 96) #7, !dbg !1665
  %7 = getelementptr inbounds i8, i8* %2, i64 51, !dbg !1666
  store i8 -1, i8* %7, align 1, !dbg !1667, !tbaa !1647
  %8 = getelementptr inbounds i8, i8* %2, i64 77, !dbg !1668
  store i8 -1, i8* %8, align 1, !dbg !1668, !tbaa !1649
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1669
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1670
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1672
  %9 = getelementptr inbounds i8, i8* %2, i64 20, !dbg !1673
  store i8 %0, i8* %9, align 4, !dbg !1673, !tbaa !532
  %10 = getelementptr inbounds i8, i8* %2, i64 44, !dbg !1677
  store i8 %0, i8* %10, align 4, !dbg !1677, !tbaa !604
  br label %12, !dbg !1679

; <label>:11:                                     ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1670
  br label %12, !dbg !1672

; <label>:12:                                     ; preds = %11, %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1680
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1681
  ret %struct.udp_pcb* %3, !dbg !1681
}

; Function Attrs: noredzone nounwind
define dso_local void @udp_netif_ip_addr_changed(%struct.ip_addr* readonly, %struct.ip_addr* readonly) local_unnamed_addr #0 !dbg !1682 {
  %3 = icmp eq %struct.ip_addr* %0, null, !dbg !1691
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1693
  br i1 %3, label %123, label %4, !dbg !1693

; <label>:4:                                      ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1691
  %5 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 1, !dbg !1691
  %6 = load i8, i8* %5, align 4, !dbg !1691, !tbaa !821
  %7 = icmp eq i8 %6, 6, !dbg !1691
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1693
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1691
  %8 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1691
  %9 = load i32, i32* %8, align 4, !dbg !1691, !tbaa !471
  %10 = icmp eq i32 %9, 0, !dbg !1691
  br i1 %7, label %11, label %26, !dbg !1693

; <label>:11:                                     ; preds = %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1691
  br i1 %10, label %12, label %29, !dbg !1691

; <label>:12:                                     ; preds = %11
  %13 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !1691
  %14 = load i32, i32* %13, align 4, !dbg !1691, !tbaa !471
  %15 = icmp eq i32 %14, 0, !dbg !1691
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1691
  br i1 %15, label %16, label %29, !dbg !1691

; <label>:16:                                     ; preds = %12
  %17 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !1691
  %18 = load i32, i32* %17, align 4, !dbg !1691, !tbaa !471
  %19 = icmp eq i32 %18, 0, !dbg !1691
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1691
  br i1 %19, label %20, label %29, !dbg !1691

; <label>:20:                                     ; preds = %16
  %21 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !1691
  %22 = load i32, i32* %21, align 4, !dbg !1691, !tbaa !471
  %23 = icmp eq i32 %22, 0, !dbg !1691
  %24 = icmp eq %struct.ip_addr* %1, null, !dbg !1694
  %25 = or i1 %24, %23, !dbg !1691
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1691
  br i1 %25, label %123, label %31, !dbg !1691

; <label>:26:                                     ; preds = %4
  %27 = icmp eq %struct.ip_addr* %1, null, !dbg !1694
  %28 = or i1 %27, %10, !dbg !1693
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1693
  br i1 %28, label %123, label %31, !dbg !1693

; <label>:29:                                     ; preds = %16, %12, %11
  %30 = icmp eq %struct.ip_addr* %1, null, !dbg !1694
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1695
  br i1 %30, label %123, label %31, !dbg !1695

; <label>:31:                                     ; preds = %29, %26, %20
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1694
  %32 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 1, !dbg !1694
  %33 = load i8, i8* %32, align 4, !dbg !1694, !tbaa !821
  %34 = icmp eq i8 %33, 6, !dbg !1694
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1695
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1694
  %35 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1694
  %36 = load i32, i32* %35, align 4, !dbg !1694, !tbaa !471
  %37 = icmp eq i32 %36, 0, !dbg !1694
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1696
  br i1 %34, label %38, label %51, !dbg !1695

; <label>:38:                                     ; preds = %31
  br i1 %37, label %39, label %52, !dbg !1694

; <label>:39:                                     ; preds = %38
  %40 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !1694
  %41 = load i32, i32* %40, align 4, !dbg !1694, !tbaa !471
  %42 = icmp eq i32 %41, 0, !dbg !1694
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1694
  br i1 %42, label %43, label %52, !dbg !1694

; <label>:43:                                     ; preds = %39
  %44 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !1694
  %45 = load i32, i32* %44, align 4, !dbg !1694, !tbaa !471
  %46 = icmp eq i32 %45, 0, !dbg !1694
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1694
  br i1 %46, label %47, label %52, !dbg !1694

; <label>:47:                                     ; preds = %43
  %48 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !1694
  %49 = load i32, i32* %48, align 4, !dbg !1694, !tbaa !471
  %50 = icmp eq i32 %49, 0, !dbg !1694
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1694
  br i1 %50, label %123, label %52, !dbg !1694

; <label>:51:                                     ; preds = %31
  br i1 %37, label %123, label %52, !dbg !1695

; <label>:52:                                     ; preds = %51, %47, %43, %39, %38
  %53 = load %struct.udp_pcb*, %struct.udp_pcb** @udp_pcbs, align 8, !dbg !1697, !tbaa !486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1701
  %54 = icmp eq %struct.udp_pcb* %53, null, !dbg !1702
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1704
  br i1 %54, label %123, label %55, !dbg !1704

; <label>:55:                                     ; preds = %52
  %56 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 0, i64 1
  %57 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 1
  %58 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 2
  %59 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 3
  %60 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 1
  %61 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 0, i64 2
  %62 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 0, i64 3
  %63 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 1
  br label %64, !dbg !1704

; <label>:64:                                     ; preds = %121, %55
  %65 = phi i8 [ %6, %55 ], [ %122, %121 ], !dbg !1705
  %66 = phi %struct.udp_pcb* [ %53, %55 ], [ %119, %121 ]
  %67 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %66, i64 0, i32 0, i32 1, !dbg !1705
  %68 = load i8, i8* %67, align 4, !dbg !1705, !tbaa !532
  %69 = icmp eq i8 %68, %65, !dbg !1705
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1708
  br i1 %69, label %70, label %117, !dbg !1708

; <label>:70:                                     ; preds = %64
  %71 = icmp eq i8 %65, 6, !dbg !1705
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1708
  %72 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %66, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !1705
  %73 = load i32, i32* %72, align 8, !dbg !1705, !tbaa !471
  %74 = load i32, i32* %8, align 4, !dbg !1705, !tbaa !471
  %75 = icmp eq i32 %73, %74, !dbg !1705
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1705
  br i1 %71, label %76, label %97, !dbg !1708

; <label>:76:                                     ; preds = %70
  br i1 %75, label %77, label %117, !dbg !1705

; <label>:77:                                     ; preds = %76
  %78 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %66, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !1705
  %79 = load i32, i32* %78, align 4, !dbg !1705, !tbaa !471
  %80 = load i32, i32* %56, align 4, !dbg !1705, !tbaa !471
  %81 = icmp eq i32 %79, %80, !dbg !1705
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1705
  br i1 %81, label %82, label %117, !dbg !1705

; <label>:82:                                     ; preds = %77
  %83 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %66, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !1705
  %84 = load i32, i32* %83, align 8, !dbg !1705, !tbaa !471
  %85 = load i32, i32* %61, align 4, !dbg !1705, !tbaa !471
  %86 = icmp eq i32 %84, %85, !dbg !1705
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1705
  br i1 %86, label %87, label %117, !dbg !1705

; <label>:87:                                     ; preds = %82
  %88 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %66, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !1705
  %89 = load i32, i32* %88, align 4, !dbg !1705, !tbaa !471
  %90 = load i32, i32* %62, align 4, !dbg !1705, !tbaa !471
  %91 = icmp eq i32 %89, %90, !dbg !1705
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1705
  br i1 %91, label %92, label %117, !dbg !1705

; <label>:92:                                     ; preds = %87
  %93 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %66, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !1705
  %94 = load i8, i8* %93, align 8, !dbg !1705, !tbaa !471
  %95 = load i8, i8* %63, align 4, !dbg !1705, !tbaa !471
  %96 = icmp eq i8 %94, %95, !dbg !1705
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1705
  br i1 %96, label %98, label %117, !dbg !1705

; <label>:97:                                     ; preds = %70
  br i1 %75, label %98, label %117, !dbg !1708

; <label>:98:                                     ; preds = %97, %92
  %99 = load i8, i8* %32, align 4, !dbg !1709, !tbaa !821
  store i8 %99, i8* %67, align 4, !dbg !1709, !tbaa !532
  %100 = load i8, i8* %32, align 4, !dbg !1713, !tbaa !821
  %101 = icmp eq i8 %100, 6, !dbg !1713
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1715
  %102 = load i32, i32* %35, align 4, !dbg !1716, !tbaa !471
  store i32 %102, i32* %72, align 8, !dbg !1716, !tbaa !471
  br i1 %101, label %103, label %112, !dbg !1715

; <label>:103:                                    ; preds = %98
  %104 = load i32, i32* %57, align 4, !dbg !1716, !tbaa !471
  %105 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %66, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !1716
  store i32 %104, i32* %105, align 4, !dbg !1716, !tbaa !471
  %106 = load i32, i32* %58, align 4, !dbg !1716, !tbaa !471
  %107 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %66, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !1716
  store i32 %106, i32* %107, align 8, !dbg !1716, !tbaa !471
  %108 = load i32, i32* %59, align 4, !dbg !1716, !tbaa !471
  %109 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %66, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !1716
  store i32 %108, i32* %109, align 4, !dbg !1716, !tbaa !471
  %110 = load i8, i8* %60, align 4, !dbg !1716, !tbaa !471
  %111 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %66, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !1716
  store i8 %110, i8* %111, align 8, !dbg !1716, !tbaa !471
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1719
  br label %117, !dbg !1719

; <label>:112:                                    ; preds = %98
  %113 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %66, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !1720
  store i32 0, i32* %113, align 4, !dbg !1720, !tbaa !471
  %114 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %66, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !1720
  store i32 0, i32* %114, align 8, !dbg !1720, !tbaa !471
  %115 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %66, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !1720
  store i32 0, i32* %115, align 4, !dbg !1720, !tbaa !471
  %116 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %66, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !1720
  store i8 0, i8* %116, align 8, !dbg !1720, !tbaa !471
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %117

; <label>:117:                                    ; preds = %64, %76, %77, %82, %87, %92, %97, %112, %103
  %118 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %66, i64 0, i32 6, !dbg !1723
  %119 = load %struct.udp_pcb*, %struct.udp_pcb** %118, align 8, !dbg !1723, !tbaa !617
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1724
  %120 = icmp eq %struct.udp_pcb* %119, null, !dbg !1702
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1704
  br i1 %120, label %123, label %121, !dbg !1704, !llvm.loop !1725

; <label>:121:                                    ; preds = %117
  %122 = load i8, i8* %5, align 4, !dbg !1705, !tbaa !821
  br label %64, !dbg !1704

; <label>:123:                                    ; preds = %117, %52, %29, %2, %51, %47, %26, %20
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1727
  ret void, !dbg !1727
}

; Function Attrs: inlinehint noredzone nounwind
define internal i32 @uk_swrand_randr() #3 !dbg !285 {
  %1 = tail call i64 @ukplat_lcpu_save_irqf() #7, !dbg !1728
  %2 = tail call i32 @uk_swrand_randr_r(%struct.uk_swrand* nonnull @uk_swrand_def) #7, !dbg !1730
  tail call void @ukplat_lcpu_restore_irqf(i64 %1) #7, !dbg !1732
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1733
  ret i32 %2, !dbg !1733
}

; Function Attrs: noredzone
declare dso_local i64 @ukplat_lcpu_save_irqf() local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local i32 @uk_swrand_randr_r(%struct.uk_swrand*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @ukplat_lcpu_restore_irqf(i64) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

; Function Attrs: noredzone
declare dso_local void @_uk_vprintk(i32, i8*, i8*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { inlinehint noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin noredzone nounwind }
attributes #8 = { nobuiltin noredzone }
attributes #9 = { nobuiltin noredzone noreturn nounwind }

!llvm.module.flags = !{!240, !241, !242}
!llvm.ident = !{!243}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "udp_port", scope: !2, file: !3, line: 79, type: !100, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !99, globals: !205)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/udp.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{!5, !11, !18, !24, !34, !43, !64, !72, !78}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "netif_mac_filter_action", file: !6, line: 156, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/netif.h", directory: "/root/.unikraft/apps/redis/build")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "NETIF_DEL_MAC_FILTER", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "NETIF_ADD_MAC_FILTER", value: 1, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ukplat_gstate", file: !12, line: 68, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/bootstrap.h", directory: "/root/.unikraft/apps/redis/build")
!13 = !{!14, !15, !16, !17}
!14 = !DIEnumerator(name: "UKPLAT_HALT", value: 0, isUnsigned: true)
!15 = !DIEnumerator(name: "UKPLAT_RESTART", value: 1, isUnsigned: true)
!16 = !DIEnumerator(name: "UKPLAT_SUSPEND", value: 2, isUnsigned: true)
!17 = !DIEnumerator(name: "UKPLAT_CRASH", value: 3, isUnsigned: true)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lwip_ip_addr_type", file: !19, line: 54, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip_addr.h", directory: "/root/.unikraft/apps/redis/build")
!20 = !{!21, !22, !23}
!21 = !DIEnumerator(name: "IPADDR_TYPE_V4", value: 0, isUnsigned: true)
!22 = !DIEnumerator(name: "IPADDR_TYPE_V6", value: 6, isUnsigned: true)
!23 = !DIEnumerator(name: "IPADDR_TYPE_ANY", value: 46, isUnsigned: true)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "icmp6_dur_code", file: !25, line: 98, baseType: !7, size: 32, elements: !26)
!25 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/prot/icmp6.h", directory: "/root/.unikraft/apps/redis/build")
!26 = !{!27, !28, !29, !30, !31, !32, !33}
!27 = !DIEnumerator(name: "ICMP6_DUR_NO_ROUTE", value: 0, isUnsigned: true)
!28 = !DIEnumerator(name: "ICMP6_DUR_PROHIBITED", value: 1, isUnsigned: true)
!29 = !DIEnumerator(name: "ICMP6_DUR_SCOPE", value: 2, isUnsigned: true)
!30 = !DIEnumerator(name: "ICMP6_DUR_ADDRESS", value: 3, isUnsigned: true)
!31 = !DIEnumerator(name: "ICMP6_DUR_PORT", value: 4, isUnsigned: true)
!32 = !DIEnumerator(name: "ICMP6_DUR_POLICY", value: 5, isUnsigned: true)
!33 = !DIEnumerator(name: "ICMP6_DUR_REJECT_ROUTE", value: 6, isUnsigned: true)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "icmp_dur_type", file: !35, line: 55, baseType: !7, size: 32, elements: !36)
!35 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/icmp.h", directory: "/root/.unikraft/apps/redis/build")
!36 = !{!37, !38, !39, !40, !41, !42}
!37 = !DIEnumerator(name: "ICMP_DUR_NET", value: 0, isUnsigned: true)
!38 = !DIEnumerator(name: "ICMP_DUR_HOST", value: 1, isUnsigned: true)
!39 = !DIEnumerator(name: "ICMP_DUR_PROTO", value: 2, isUnsigned: true)
!40 = !DIEnumerator(name: "ICMP_DUR_PORT", value: 3, isUnsigned: true)
!41 = !DIEnumerator(name: "ICMP_DUR_FRAG", value: 4, isUnsigned: true)
!42 = !DIEnumerator(name: "ICMP_DUR_SR", value: 5, isUnsigned: true)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !44, line: 53, baseType: !45, size: 32, elements: !46)
!44 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/err.h", directory: "/root/.unikraft/apps/redis/build")
!45 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!46 = !{!47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63}
!47 = !DIEnumerator(name: "ERR_OK", value: 0)
!48 = !DIEnumerator(name: "ERR_MEM", value: -1)
!49 = !DIEnumerator(name: "ERR_BUF", value: -2)
!50 = !DIEnumerator(name: "ERR_TIMEOUT", value: -3)
!51 = !DIEnumerator(name: "ERR_RTE", value: -4)
!52 = !DIEnumerator(name: "ERR_INPROGRESS", value: -5)
!53 = !DIEnumerator(name: "ERR_VAL", value: -6)
!54 = !DIEnumerator(name: "ERR_WOULDBLOCK", value: -7)
!55 = !DIEnumerator(name: "ERR_USE", value: -8)
!56 = !DIEnumerator(name: "ERR_ALREADY", value: -9)
!57 = !DIEnumerator(name: "ERR_ISCONN", value: -10)
!58 = !DIEnumerator(name: "ERR_CONN", value: -11)
!59 = !DIEnumerator(name: "ERR_IF", value: -12)
!60 = !DIEnumerator(name: "ERR_ABRT", value: -13)
!61 = !DIEnumerator(name: "ERR_RST", value: -14)
!62 = !DIEnumerator(name: "ERR_CLSD", value: -15)
!63 = !DIEnumerator(name: "ERR_ARG", value: -16)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !65, line: 89, baseType: !7, size: 32, elements: !66)
!65 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/pbuf.h", directory: "/root/.unikraft/apps/redis/build")
!66 = !{!67, !68, !69, !70, !71}
!67 = !DIEnumerator(name: "PBUF_TRANSPORT", value: 74, isUnsigned: true)
!68 = !DIEnumerator(name: "PBUF_IP", value: 54, isUnsigned: true)
!69 = !DIEnumerator(name: "PBUF_LINK", value: 14, isUnsigned: true)
!70 = !DIEnumerator(name: "PBUF_RAW_TX", value: 0, isUnsigned: true)
!71 = !DIEnumerator(name: "PBUF_RAW", value: 0, isUnsigned: true)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !65, line: 145, baseType: !7, size: 32, elements: !73)
!73 = !{!74, !75, !76, !77}
!74 = !DIEnumerator(name: "PBUF_RAM", value: 640, isUnsigned: true)
!75 = !DIEnumerator(name: "PBUF_ROM", value: 1, isUnsigned: true)
!76 = !DIEnumerator(name: "PBUF_REF", value: 65, isUnsigned: true)
!77 = !DIEnumerator(name: "PBUF_POOL", value: 386, isUnsigned: true)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !79, line: 52, baseType: !7, size: 32, elements: !80)
!79 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/memp.h", directory: "/root/.unikraft/apps/redis/build")
!80 = !{!81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98}
!81 = !DIEnumerator(name: "MEMP_UDP_PCB", value: 0, isUnsigned: true)
!82 = !DIEnumerator(name: "MEMP_TCP_PCB", value: 1, isUnsigned: true)
!83 = !DIEnumerator(name: "MEMP_TCP_PCB_LISTEN", value: 2, isUnsigned: true)
!84 = !DIEnumerator(name: "MEMP_TCP_SEG", value: 3, isUnsigned: true)
!85 = !DIEnumerator(name: "MEMP_REASSDATA", value: 4, isUnsigned: true)
!86 = !DIEnumerator(name: "MEMP_FRAG_PBUF", value: 5, isUnsigned: true)
!87 = !DIEnumerator(name: "MEMP_NETBUF", value: 6, isUnsigned: true)
!88 = !DIEnumerator(name: "MEMP_NETCONN", value: 7, isUnsigned: true)
!89 = !DIEnumerator(name: "MEMP_TCPIP_MSG_API", value: 8, isUnsigned: true)
!90 = !DIEnumerator(name: "MEMP_TCPIP_MSG_INPKT", value: 9, isUnsigned: true)
!91 = !DIEnumerator(name: "MEMP_SYS_TIMEOUT", value: 10, isUnsigned: true)
!92 = !DIEnumerator(name: "MEMP_NETDB", value: 11, isUnsigned: true)
!93 = !DIEnumerator(name: "MEMP_ND6_QUEUE", value: 12, isUnsigned: true)
!94 = !DIEnumerator(name: "MEMP_IP6_REASSDATA", value: 13, isUnsigned: true)
!95 = !DIEnumerator(name: "MEMP_MLD6_GROUP", value: 14, isUnsigned: true)
!96 = !DIEnumerator(name: "MEMP_PBUF", value: 15, isUnsigned: true)
!97 = !DIEnumerator(name: "MEMP_PBUF_POOL", value: 16, isUnsigned: true)
!98 = !DIEnumerator(name: "MEMP_MAX", value: 17, isUnsigned: true)
!99 = !{!100, !107, !108, !116, !119, !126, !148, !152, !134, !169, !203, !204}
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16_t", file: !101, line: 127, baseType: !102)
!101 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/arch.h", directory: "/root/.unikraft/apps/redis/build")
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !103, line: 36, baseType: !104)
!103 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !105, line: 57, baseType: !106)
!105 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!106 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "udp_hdr", file: !110, line: 53, size: 64, elements: !111)
!110 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/prot/udp.h", directory: "/root/.unikraft/apps/redis/build")
!111 = !{!112, !113, !114, !115}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !109, file: !110, line: 54, baseType: !100, size: 16)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !109, file: !110, line: 55, baseType: !100, size: 16, offset: 16)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !109, file: !110, line: 56, baseType: !100, size: 16, offset: 32)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "chksum", scope: !109, file: !110, line: 57, baseType: !100, size: 16, offset: 48)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32_t", file: !101, line: 129, baseType: !117)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !103, line: 48, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !105, line: 79, baseType: !7)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip4_addr_t", file: !122, line: 57, baseType: !123)
!122 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip4_addr.h", directory: "/root/.unikraft/apps/redis/build")
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip4_addr", file: !122, line: 51, size: 32, elements: !124)
!124 = !{!125}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !123, file: !122, line: 52, baseType: !116, size: 32)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip6_hdr", file: !129, line: 80, size: 320, elements: !130)
!129 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/prot/ip6.h", directory: "/root/.unikraft/apps/redis/build")
!130 = !{!131, !132, !133, !138, !139, !147}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_v_tc_fl", scope: !128, file: !129, line: 82, baseType: !116, size: 32)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_plen", scope: !128, file: !129, line: 84, baseType: !100, size: 16, offset: 32)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_nexth", scope: !128, file: !129, line: 86, baseType: !134, size: 8, offset: 48)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8_t", file: !101, line: 125, baseType: !135)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !103, line: 24, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !105, line: 43, baseType: !137)
!137 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_hoplim", scope: !128, file: !129, line: 88, baseType: !134, size: 8, offset: 56)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !128, file: !129, line: 90, baseType: !140, size: 128, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip6_addr_p_t", file: !129, line: 60, baseType: !141)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip6_addr_packed", file: !129, line: 53, size: 128, elements: !142)
!142 = !{!143}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !141, file: !129, line: 54, baseType: !144, size: 128)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 128, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 4)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !128, file: !129, line: 91, baseType: !140, size: 128, offset: 192)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16_t", file: !101, line: 128, baseType: !149)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !103, line: 32, baseType: !150)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !105, line: 55, baseType: !151)
!151 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !154)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_addr_t", file: !19, line: 76, baseType: !155)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_addr", file: !19, line: 69, size: 192, elements: !156)
!156 = !{!157, !168}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "u_addr", scope: !155, file: !19, line: 73, baseType: !158, size: 160)
!158 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !155, file: !19, line: 70, size: 160, elements: !159)
!159 = !{!160, !167}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "ip6", scope: !158, file: !19, line: 71, baseType: !161, size: 160)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip6_addr_t", file: !162, line: 67, baseType: !163)
!162 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip6_addr.h", directory: "/root/.unikraft/apps/redis/build")
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip6_addr", file: !162, line: 59, size: 160, elements: !164)
!164 = !{!165, !166}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !163, file: !162, line: 60, baseType: !144, size: 128)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "zone", scope: !163, file: !162, line: 62, baseType: !134, size: 8, offset: 128)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "ip4", scope: !158, file: !19, line: 72, baseType: !121, size: 32)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !155, file: !19, line: 75, baseType: !134, size: 8, offset: 160)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "udp_pcb", file: !171, line: 81, size: 768, elements: !172)
!171 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/udp.h", directory: "/root/.unikraft/apps/redis/build")
!172 = !{!173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !202}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "local_ip", scope: !170, file: !171, line: 83, baseType: !154, size: 192)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "remote_ip", scope: !170, file: !171, line: 83, baseType: !154, size: 192, offset: 192)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "netif_idx", scope: !170, file: !171, line: 83, baseType: !134, size: 8, offset: 384)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "so_options", scope: !170, file: !171, line: 83, baseType: !134, size: 8, offset: 392)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "tos", scope: !170, file: !171, line: 83, baseType: !134, size: 8, offset: 400)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "ttl", scope: !170, file: !171, line: 83, baseType: !134, size: 8, offset: 408)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !170, file: !171, line: 87, baseType: !169, size: 64, offset: 448)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !170, file: !171, line: 89, baseType: !134, size: 8, offset: 512)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "local_port", scope: !170, file: !171, line: 91, baseType: !100, size: 16, offset: 528)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "remote_port", scope: !170, file: !171, line: 91, baseType: !100, size: 16, offset: 544)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "mcast_ip4", scope: !170, file: !171, line: 96, baseType: !121, size: 32, offset: 576)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "mcast_ifindex", scope: !170, file: !171, line: 99, baseType: !134, size: 8, offset: 608)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "mcast_ttl", scope: !170, file: !171, line: 101, baseType: !134, size: 8, offset: 616)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "recv", scope: !170, file: !171, line: 110, baseType: !187, size: 64, offset: 640)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "udp_recv_fn", file: !171, line: 77, baseType: !188)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DISubroutineType(types: !190)
!190 = !{null, !107, !169, !191, !152, !100}
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pbuf", file: !65, line: 186, size: 192, elements: !193)
!193 = !{!194, !195, !196, !197, !198, !199, !200, !201}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !192, file: !65, line: 188, baseType: !191, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !192, file: !65, line: 191, baseType: !107, size: 64, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "tot_len", scope: !192, file: !65, line: 200, baseType: !100, size: 16, offset: 128)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !192, file: !65, line: 203, baseType: !100, size: 16, offset: 144)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "type_internal", scope: !192, file: !65, line: 208, baseType: !134, size: 8, offset: 160)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !192, file: !65, line: 211, baseType: !134, size: 8, offset: 168)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !192, file: !65, line: 218, baseType: !134, size: 8, offset: 176)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "if_idx", scope: !192, file: !65, line: 221, baseType: !134, size: 8, offset: 184)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "recv_arg", scope: !170, file: !171, line: 112, baseType: !107, size: 64, offset: 704)
!203 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!205 = !{!206, !0, !208, !235}
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(name: "udp_pcbs", scope: !2, file: !3, line: 83, type: !169, isLocal: false, isDefinition: true)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(name: "__str", scope: !210, file: !211, line: 198, type: !232, isLocal: true, isDefinition: true)
!210 = distinct !DISubprogram(name: "uk_pr_crit", scope: !211, file: !211, line: 194, type: !212, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !217)
!211 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukdebug/include/uk/print.h", directory: "/root/.unikraft/apps/redis/build")
!212 = !DISubroutineType(types: !213)
!213 = !{null, !214, null}
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !216)
!216 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!217 = !{!218, !219}
!218 = !DILocalVariable(name: "fmt", arg: 1, scope: !210, file: !211, line: 194, type: !214)
!219 = !DILocalVariable(name: "argp", scope: !210, file: !211, line: 196, type: !220)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !221, line: 32, baseType: !222)
!221 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 196, baseType: !223)
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 192, elements: !230)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 196, size: 192, elements: !225)
!225 = !{!226, !227, !228, !229}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !224, file: !3, line: 196, baseType: !7, size: 32)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !224, file: !3, line: 196, baseType: !7, size: 32, offset: 32)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !224, file: !3, line: 196, baseType: !107, size: 64, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !224, file: !3, line: 196, baseType: !107, size: 64, offset: 128)
!230 = !{!231}
!231 = !DISubrange(count: 1)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !216, size: 64, elements: !233)
!233 = !{!234}
!234 = !DISubrange(count: 8)
!235 = !DIGlobalVariableExpression(var: !236, expr: !DIExpression())
!236 = distinct !DIGlobalVariable(name: "__str", scope: !210, file: !211, line: 198, type: !237, isLocal: true, isDefinition: true)
!237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !216, size: 48, elements: !238)
!238 = !{!239}
!239 = !DISubrange(count: 6)
!240 = !{i32 2, !"Dwarf Version", i32 4}
!241 = !{i32 2, !"Debug Info Version", i32 3}
!242 = !{i32 1, !"wchar_size", i32 4}
!243 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!244 = distinct !DISubprogram(name: "udp_init", scope: !3, file: !3, line: 89, type: !245, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !247)
!245 = !DISubroutineType(types: !246)
!246 = !{null}
!247 = !{}
!248 = !DILocation(line: 65, column: 2, scope: !249, inlinedAt: !266)
!249 = distinct !DISubprogram(name: "isolated_rand", scope: !250, file: !250, line: 63, type: !251, isLocal: true, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !255)
!250 = !DIFile(filename: "/root/.unikraft/libs/lwip/include/arch/cc.h", directory: "/root/.unikraft/apps/redis/build")
!251 = !DISubroutineType(types: !252)
!252 = !{!253}
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !254, line: 88, baseType: !7)
!254 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/types.h", directory: "/root/.unikraft/apps/redis/build")
!255 = !{!256, !257, !263}
!256 = !DILocalVariable(name: "randn", scope: !249, file: !250, line: 65, type: !253)
!257 = !DILocalVariable(name: "tid", scope: !258, file: !250, line: 66, type: !117)
!258 = distinct !DILexicalBlock(scope: !259, file: !250, line: 66, column: 2)
!259 = distinct !DILexicalBlock(scope: !260, file: !250, line: 66, column: 2)
!260 = distinct !DILexicalBlock(scope: !261, file: !250, line: 66, column: 2)
!261 = distinct !DILexicalBlock(scope: !262, file: !250, line: 66, column: 2)
!262 = distinct !DILexicalBlock(scope: !249, file: !250, line: 66, column: 2)
!263 = !DILocalVariable(name: "_ret", scope: !258, file: !250, line: 66, type: !264)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !103, line: 60, baseType: !265)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !105, line: 105, baseType: !203)
!266 = distinct !DILocation(line: 92, column: 14, scope: !244)
!267 = !DILocation(line: 120, column: 2, scope: !268, inlinedAt: !274)
!268 = distinct !DISubprogram(name: "ukarch_read_sp", scope: !269, file: !269, line: 116, type: !270, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !272)
!269 = !DIFile(filename: "/root/.unikraft/unikraft/arch/x86/x86_64/include/uk/asm/lcpu.h", directory: "/root/.unikraft/apps/redis/build")
!270 = !DISubroutineType(types: !271)
!271 = !{!203}
!272 = !{!273}
!273 = !DILocalVariable(name: "sp", scope: !268, file: !269, line: 118, type: !203)
!274 = distinct !DILocation(line: 66, column: 2, scope: !261, inlinedAt: !266)
!275 = !{i32 556570}
!276 = !DILocation(line: 118, column: 16, scope: !268, inlinedAt: !274)
!277 = !DILocation(line: 121, column: 2, scope: !268, inlinedAt: !274)
!278 = !DILocation(line: 66, column: 2, scope: !261, inlinedAt: !266)
!279 = !DILocation(line: 120, column: 2, scope: !268, inlinedAt: !280)
!280 = distinct !DILocation(line: 66, column: 2, scope: !261, inlinedAt: !266)
!281 = !DILocation(line: 118, column: 16, scope: !268, inlinedAt: !280)
!282 = !DILocation(line: 121, column: 2, scope: !268, inlinedAt: !280)
!283 = !DILocation(line: 66, column: 2, scope: !262, inlinedAt: !266)
!284 = !DILocation(line: 65, column: 11, scope: !285, inlinedAt: !290)
!285 = distinct !DISubprogram(name: "uk_swrand_randr", scope: !286, file: !286, line: 60, type: !251, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !287)
!286 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukswrand/include/uk/swrand.h", directory: "/root/.unikraft/apps/redis/build")
!287 = !{!288, !289}
!288 = !DILocalVariable(name: "iflags", scope: !285, file: !286, line: 62, type: !203)
!289 = !DILocalVariable(name: "ret", scope: !285, file: !286, line: 63, type: !253)
!290 = distinct !DILocation(line: 66, column: 2, scope: !291, inlinedAt: !266)
!291 = distinct !DILexicalBlock(scope: !261, file: !250, line: 66, column: 2)
!292 = !DILocation(line: 62, column: 16, scope: !285, inlinedAt: !290)
!293 = !DILocation(line: 66, column: 8, scope: !285, inlinedAt: !290)
!294 = !DILocation(line: 63, column: 8, scope: !285, inlinedAt: !290)
!295 = !DILocation(line: 67, column: 2, scope: !285, inlinedAt: !290)
!296 = !DILocation(line: 69, column: 2, scope: !285, inlinedAt: !290)
!297 = !DILocation(line: 65, column: 8, scope: !249, inlinedAt: !266)
!298 = !DILocation(line: 66, column: 2, scope: !291, inlinedAt: !266)
!299 = !{!300, !300, i64 0}
!300 = !{!"int", !301, i64 0}
!301 = !{!"omnipotent char", !302, i64 0}
!302 = !{!"Simple C/C++ TBAA"}
!303 = !DILocation(line: 120, column: 2, scope: !268, inlinedAt: !304)
!304 = distinct !DILocation(line: 49, column: 21, scope: !305, inlinedAt: !311)
!305 = distinct !DISubprogram(name: "uk_thread_get_tid", scope: !306, file: !306, line: 47, type: !307, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !309)
!306 = !DIFile(filename: "/root/.unikraft/unikraft/lib/flexos-core/include/flexos/impl/intelpku-impl.h", directory: "/root/.unikraft/apps/redis/build")
!307 = !DISubroutineType(types: !308)
!308 = !{!45}
!309 = !{!310}
!310 = !DILocalVariable(name: "sp", scope: !305, file: !306, line: 49, type: !203)
!311 = distinct !DILocation(line: 66, column: 2, scope: !258, inlinedAt: !266)
!312 = !DILocation(line: 118, column: 16, scope: !268, inlinedAt: !304)
!313 = !DILocation(line: 121, column: 2, scope: !268, inlinedAt: !304)
!314 = !DILocation(line: 49, column: 16, scope: !305, inlinedAt: !311)
!315 = !DILocation(line: 50, column: 19, scope: !305, inlinedAt: !311)
!316 = !DILocation(line: 50, column: 11, scope: !305, inlinedAt: !311)
!317 = !DILocation(line: 50, column: 9, scope: !305, inlinedAt: !311)
!318 = !DILocation(line: 50, column: 2, scope: !305, inlinedAt: !311)
!319 = !DILocation(line: 66, column: 2, scope: !258, inlinedAt: !266)
!320 = !{i32 -2146799712, i32 -2146799699, i32 -2146799674, i32 -2146799650, i32 -2146799625, i32 -2146799550, i32 -2146799525, i32 -2146799381, i32 -2146796288, i32 -2146796199, i32 -2146796078, i32 -2146795983, i32 -2146795882, i32 -2146795855, i32 -2146795772, i32 -2146795683, i32 -2146795562, i32 -2146795462, i32 -2146795356, i32 -2146795248, i32 -2146799098, i32 -2146799045, i32 -2146799014, i32 -2146798983, i32 -2146798962, i32 -2146798940, i32 -2146798891, i32 -2146798870, i32 -2146795165, i32 -2146795076, i32 -2146794955, i32 -2146794856, i32 -2146794750, i32 -2146794648, i32 -2146794615, i32 -2146794542, i32 -2146794474, i32 -2146798568, i32 -2146798509, i32 -2146798456, i32 -2146798425, i32 -2146798394, i32 -2146798373, i32 -2146798351, i32 -2146798302, i32 -2146798281, i32 -2146794423, i32 -2146794334, i32 -2146794213, i32 -2146794114, i32 -2146794008, i32 -2146793906, i32 -2146793873, i32 -2146793790, i32 -2146793701, i32 -2146793580, i32 -2146793480, i32 -2146793454, i32 -2146793351, i32 -2146793325, i32 -2146798023, i32 -2146797956, i32 -2146797931, i32 -2146797867, i32 -2146797785, i32 -2146797762, i32 -2146797737, i32 -2146797712}
!321 = !DILocation(line: 66, column: 2, scope: !322, inlinedAt: !266)
!322 = distinct !DILexicalBlock(scope: !323, file: !250, line: 66, column: 2)
!323 = distinct !DILexicalBlock(scope: !258, file: !250, line: 66, column: 2)
!324 = !{i32 -2146796765, i32 -2146796748}
!325 = !DILocation(line: 67, column: 9, scope: !249, inlinedAt: !266)
!326 = !DILocation(line: 68, column: 1, scope: !249, inlinedAt: !266)
!327 = !DILocation(line: 67, column: 2, scope: !249, inlinedAt: !266)
!328 = !DILocation(line: 92, column: 14, scope: !244)
!329 = !DILocation(line: 92, column: 12, scope: !244)
!330 = !{!331, !331, i64 0}
!331 = !{!"short", !301, i64 0}
!332 = !DILocation(line: 94, column: 1, scope: !244)
!333 = distinct !DISubprogram(name: "udp_input", scope: !3, file: !3, line: 196, type: !334, isLocal: false, isDefinition: true, scopeLine: 197, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !407)
!334 = !DISubroutineType(types: !335)
!335 = !{null, !191, !336}
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netif", file: !6, line: 260, size: 2240, elements: !338)
!338 = !{!339, !340, !341, !342, !343, !347, !349, !351, !352, !362, !367, !372, !379, !384, !385, !386, !388, !389, !390, !391, !393, !394, !395, !399, !400, !401, !402}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !337, file: !6, line: 263, baseType: !336, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "ip_addr", scope: !337, file: !6, line: 268, baseType: !154, size: 192, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "netmask", scope: !337, file: !6, line: 269, baseType: !154, size: 192, offset: 256)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "gw", scope: !337, file: !6, line: 270, baseType: !154, size: 192, offset: 448)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr", scope: !337, file: !6, line: 274, baseType: !344, size: 576, offset: 640)
!344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 576, elements: !345)
!345 = !{!346}
!346 = !DISubrange(count: 3)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_state", scope: !337, file: !6, line: 277, baseType: !348, size: 24, offset: 1216)
!348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 24, elements: !345)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_valid_life", scope: !337, file: !6, line: 282, baseType: !350, size: 96, offset: 1248)
!350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 96, elements: !345)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_pref_life", scope: !337, file: !6, line: 283, baseType: !350, size: 96, offset: 1344)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !337, file: !6, line: 288, baseType: !353, size: 64, offset: 1472)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_input_fn", file: !6, line: 178, baseType: !354)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DISubroutineType(types: !356)
!356 = !{!357, !191, !336}
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "err_t", file: !44, line: 96, baseType: !358)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8_t", file: !101, line: 126, baseType: !359)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !103, line: 20, baseType: !360)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !105, line: 41, baseType: !361)
!361 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !337, file: !6, line: 294, baseType: !363, size: 64, offset: 1536)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_output_fn", file: !6, line: 189, baseType: !364)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DISubroutineType(types: !366)
!366 = !{!357, !336, !191, !119}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "linkoutput", scope: !337, file: !6, line: 299, baseType: !368, size: 64, offset: 1600)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_linkoutput_fn", file: !6, line: 212, baseType: !369)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DISubroutineType(types: !371)
!371 = !{!357, !336, !191}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "output_ip6", scope: !337, file: !6, line: 305, baseType: !373, size: 64, offset: 1664)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_output_ip6_fn", file: !6, line: 202, baseType: !374)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DISubroutineType(types: !376)
!376 = !{!357, !336, !191, !377}
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !161)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "status_callback", scope: !337, file: !6, line: 310, baseType: !380, size: 64, offset: 1728)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_status_callback_fn", file: !6, line: 214, baseType: !381)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DISubroutineType(types: !383)
!383 = !{null, !336}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "remove_callback", scope: !337, file: !6, line: 319, baseType: !380, size: 64, offset: 1792)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !337, file: !6, line: 323, baseType: !107, size: 64, offset: 1856)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !337, file: !6, line: 325, baseType: !387, size: 64, offset: 1920)
!387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 64, elements: !230)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "chksum_flags", scope: !337, file: !6, line: 332, baseType: !100, size: 16, offset: 1984)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !337, file: !6, line: 335, baseType: !100, size: 16, offset: 2000)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "mtu6", scope: !337, file: !6, line: 338, baseType: !100, size: 16, offset: 2016)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "hwaddr", scope: !337, file: !6, line: 341, baseType: !392, size: 48, offset: 2032)
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 48, elements: !238)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "hwaddr_len", scope: !337, file: !6, line: 343, baseType: !134, size: 8, offset: 2080)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !337, file: !6, line: 345, baseType: !134, size: 8, offset: 2088)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !337, file: !6, line: 347, baseType: !396, size: 16, offset: 2096)
!396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !216, size: 16, elements: !397)
!397 = !{!398}
!398 = !DISubrange(count: 2)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !337, file: !6, line: 350, baseType: !134, size: 8, offset: 2112)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_autoconfig_enabled", scope: !337, file: !6, line: 353, baseType: !134, size: 8, offset: 2120)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "rs_count", scope: !337, file: !6, line: 357, baseType: !134, size: 8, offset: 2128)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "mld_mac_filter", scope: !337, file: !6, line: 377, baseType: !403, size: 64, offset: 2176)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_mld_mac_filter_fn", file: !6, line: 222, baseType: !404)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DISubroutineType(types: !406)
!406 = !{!357, !336, !377, !5}
!407 = !{!408, !409, !410, !411, !412, !413, !414, !415, !416, !417}
!408 = !DILocalVariable(name: "p", arg: 1, scope: !333, file: !3, line: 196, type: !191)
!409 = !DILocalVariable(name: "inp", arg: 2, scope: !333, file: !3, line: 196, type: !336)
!410 = !DILocalVariable(name: "udphdr", scope: !333, file: !3, line: 198, type: !108)
!411 = !DILocalVariable(name: "pcb", scope: !333, file: !3, line: 199, type: !169)
!412 = !DILocalVariable(name: "prev", scope: !333, file: !3, line: 199, type: !169)
!413 = !DILocalVariable(name: "uncon_pcb", scope: !333, file: !3, line: 200, type: !169)
!414 = !DILocalVariable(name: "src", scope: !333, file: !3, line: 201, type: !100)
!415 = !DILocalVariable(name: "dest", scope: !333, file: !3, line: 201, type: !100)
!416 = !DILocalVariable(name: "broadcast", scope: !333, file: !3, line: 202, type: !134)
!417 = !DILocalVariable(name: "for_us", scope: !333, file: !3, line: 203, type: !134)
!418 = !DILocation(line: 196, column: 24, scope: !333)
!419 = !DILocation(line: 196, column: 41, scope: !333)
!420 = !DILocation(line: 203, column: 8, scope: !333)
!421 = !DILocation(line: 209, column: 3, scope: !422)
!422 = distinct !DILexicalBlock(scope: !423, file: !3, line: 209, column: 3)
!423 = distinct !DILexicalBlock(scope: !333, file: !3, line: 209, column: 3)
!424 = !DILocation(line: 209, column: 3, scope: !423)
!425 = !DILocation(line: 209, column: 3, scope: !426)
!426 = distinct !DILexicalBlock(scope: !427, file: !3, line: 209, column: 3)
!427 = distinct !DILexicalBlock(scope: !422, file: !3, line: 209, column: 3)
!428 = !DILocation(line: 209, column: 3, scope: !429)
!429 = distinct !DILexicalBlock(scope: !430, file: !3, line: 209, column: 3)
!430 = distinct !DILexicalBlock(scope: !431, file: !3, line: 209, column: 3)
!431 = distinct !DILexicalBlock(scope: !426, file: !3, line: 209, column: 3)
!432 = !DILocation(line: 210, column: 3, scope: !433)
!433 = distinct !DILexicalBlock(scope: !434, file: !3, line: 210, column: 3)
!434 = distinct !DILexicalBlock(scope: !333, file: !3, line: 210, column: 3)
!435 = !DILocation(line: 210, column: 3, scope: !434)
!436 = !DILocation(line: 210, column: 3, scope: !437)
!437 = distinct !DILexicalBlock(scope: !438, file: !3, line: 210, column: 3)
!438 = distinct !DILexicalBlock(scope: !433, file: !3, line: 210, column: 3)
!439 = !DILocation(line: 210, column: 3, scope: !440)
!440 = distinct !DILexicalBlock(scope: !441, file: !3, line: 210, column: 3)
!441 = distinct !DILexicalBlock(scope: !442, file: !3, line: 210, column: 3)
!442 = distinct !DILexicalBlock(scope: !437, file: !3, line: 210, column: 3)
!443 = !DILocation(line: 214, column: 3, scope: !333)
!444 = !{!445, !331, i64 122}
!445 = !{!"stats_", !446, i64 0, !446, i64 24, !446, i64 48, !446, i64 72, !446, i64 96, !446, i64 120, !446, i64 144, !447, i64 168, !446, i64 186, !446, i64 210, !446, i64 234, !449, i64 258, !446, i64 286}
!446 = !{!"stats_proto", !331, i64 0, !331, i64 2, !331, i64 4, !331, i64 6, !331, i64 8, !331, i64 10, !331, i64 12, !331, i64 14, !331, i64 16, !331, i64 18, !331, i64 20, !331, i64 22}
!447 = !{!"stats_sys", !448, i64 0, !448, i64 6, !448, i64 12}
!448 = !{!"stats_syselem", !331, i64 0, !331, i64 2, !331, i64 4}
!449 = !{!"stats_igmp", !331, i64 0, !331, i64 2, !331, i64 4, !331, i64 6, !331, i64 8, !331, i64 10, !331, i64 12, !331, i64 14, !331, i64 16, !331, i64 18, !331, i64 20, !331, i64 22, !331, i64 24, !331, i64 26}
!450 = !DILocation(line: 217, column: 10, scope: !451)
!451 = distinct !DILexicalBlock(scope: !333, file: !3, line: 217, column: 7)
!452 = !{!453, !331, i64 18}
!453 = !{!"pbuf", !454, i64 0, !454, i64 8, !331, i64 16, !331, i64 18, !301, i64 20, !301, i64 21, !301, i64 22, !301, i64 23}
!454 = !{!"any pointer", !301, i64 0}
!455 = !DILocation(line: 217, column: 14, scope: !451)
!456 = !DILocation(line: 217, column: 7, scope: !333)
!457 = !DILocation(line: 221, column: 5, scope: !458)
!458 = distinct !DILexicalBlock(scope: !451, file: !3, line: 217, column: 26)
!459 = !{!445, !331, i64 130}
!460 = !DILocation(line: 222, column: 5, scope: !458)
!461 = !{!445, !331, i64 126}
!462 = !DILocation(line: 224, column: 5, scope: !458)
!463 = !DILocation(line: 225, column: 5, scope: !458)
!464 = !DILocation(line: 228, column: 33, scope: !333)
!465 = !{!453, !454, i64 8}
!466 = !DILocation(line: 198, column: 19, scope: !333)
!467 = !DILocation(line: 231, column: 15, scope: !333)
!468 = !{!469, !301, i64 80}
!469 = !{!"ip_globals", !454, i64 0, !454, i64 8, !454, i64 16, !454, i64 24, !331, i64 32, !470, i64 36, !470, i64 60}
!470 = !{!"ip_addr", !301, i64 0, !301, i64 20}
!471 = !{!301, !301, i64 0}
!472 = !{!469, !454, i64 0}
!473 = !DILocation(line: 202, column: 8, scope: !333)
!474 = !DILocation(line: 236, column: 9, scope: !333)
!475 = !{!476, !331, i64 0}
!476 = !{!"udp_hdr", !331, i64 0, !331, i64 2, !331, i64 4, !331, i64 6}
!477 = !DILocation(line: 201, column: 9, scope: !333)
!478 = !DILocation(line: 237, column: 10, scope: !333)
!479 = !{!476, !331, i64 2}
!480 = !DILocation(line: 201, column: 14, scope: !333)
!481 = !DILocation(line: 199, column: 19, scope: !333)
!482 = !DILocation(line: 199, column: 25, scope: !333)
!483 = !DILocation(line: 200, column: 19, scope: !333)
!484 = !DILocation(line: 255, column: 14, scope: !485)
!485 = distinct !DILexicalBlock(scope: !333, file: !3, line: 255, column: 3)
!486 = !{!454, !454, i64 0}
!487 = !DILocation(line: 255, column: 8, scope: !485)
!488 = !DILocation(line: 255, column: 28, scope: !489)
!489 = distinct !DILexicalBlock(scope: !485, file: !3, line: 255, column: 3)
!490 = !DILocation(line: 255, column: 3, scope: !485)
!491 = !DILocation(line: 311, column: 7, scope: !333)
!492 = !DILocation(line: 313, column: 3, scope: !493)
!493 = distinct !DILexicalBlock(scope: !494, file: !3, line: 311, column: 20)
!494 = distinct !DILexicalBlock(scope: !333, file: !3, line: 311, column: 7)
!495 = !DILocation(line: 316, column: 7, scope: !333)
!496 = !DILocation(line: 264, column: 15, scope: !497)
!497 = distinct !DILexicalBlock(scope: !498, file: !3, line: 264, column: 9)
!498 = distinct !DILexicalBlock(scope: !489, file: !3, line: 255, column: 54)
!499 = !{!500, !331, i64 66}
!500 = !{!"udp_pcb", !470, i64 0, !470, i64 24, !301, i64 48, !301, i64 49, !301, i64 50, !301, i64 51, !454, i64 56, !301, i64 64, !331, i64 66, !331, i64 68, !501, i64 72, !301, i64 76, !301, i64 77, !454, i64 80, !454, i64 88}
!501 = !{!"ip4_addr", !300, i64 0}
!502 = !DILocation(line: 264, column: 26, scope: !497)
!503 = !DILocation(line: 264, column: 35, scope: !497)
!504 = !DILocalVariable(name: "pcb", arg: 1, scope: !505, file: !3, line: 132, type: !169)
!505 = distinct !DISubprogram(name: "udp_input_local_match", scope: !3, file: !3, line: 132, type: !506, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !508)
!506 = !DISubroutineType(types: !507)
!507 = !{!134, !169, !336, !134}
!508 = !{!504, !509, !510}
!509 = !DILocalVariable(name: "inp", arg: 2, scope: !505, file: !3, line: 132, type: !336)
!510 = !DILocalVariable(name: "broadcast", arg: 3, scope: !505, file: !3, line: 132, type: !134)
!511 = !DILocation(line: 132, column: 39, scope: !505, inlinedAt: !512)
!512 = distinct !DILocation(line: 265, column: 10, scope: !497)
!513 = !DILocation(line: 132, column: 58, scope: !505, inlinedAt: !512)
!514 = !DILocation(line: 132, column: 68, scope: !505, inlinedAt: !512)
!515 = !DILocation(line: 137, column: 3, scope: !516, inlinedAt: !512)
!516 = distinct !DILexicalBlock(scope: !505, file: !3, line: 137, column: 3)
!517 = !DILocation(line: 138, column: 3, scope: !518, inlinedAt: !512)
!518 = distinct !DILexicalBlock(scope: !505, file: !3, line: 138, column: 3)
!519 = !DILocation(line: 141, column: 13, scope: !520, inlinedAt: !512)
!520 = distinct !DILexicalBlock(scope: !505, file: !3, line: 141, column: 7)
!521 = !{!500, !301, i64 48}
!522 = !DILocation(line: 141, column: 23, scope: !520, inlinedAt: !512)
!523 = !DILocation(line: 141, column: 42, scope: !520, inlinedAt: !512)
!524 = !DILocation(line: 142, column: 26, scope: !520, inlinedAt: !512)
!525 = !{!469, !454, i64 8}
!526 = !{!527, !301, i64 264}
!527 = !{!"netif", !454, i64 0, !470, i64 8, !470, i64 32, !470, i64 56, !301, i64 80, !301, i64 152, !301, i64 156, !301, i64 168, !454, i64 184, !454, i64 192, !454, i64 200, !454, i64 208, !454, i64 216, !454, i64 224, !454, i64 232, !301, i64 240, !331, i64 248, !331, i64 250, !331, i64 252, !301, i64 254, !301, i64 260, !301, i64 261, !301, i64 262, !301, i64 264, !301, i64 265, !301, i64 266, !454, i64 272}
!528 = !DILocation(line: 142, column: 23, scope: !520, inlinedAt: !512)
!529 = !DILocation(line: 141, column: 7, scope: !505, inlinedAt: !512)
!530 = !DILocation(line: 147, column: 7, scope: !531, inlinedAt: !512)
!531 = distinct !DILexicalBlock(scope: !505, file: !3, line: 147, column: 7)
!532 = !{!500, !301, i64 20}
!533 = !DILocation(line: 147, column: 7, scope: !505, inlinedAt: !512)
!534 = !DILocation(line: 157, column: 7, scope: !535, inlinedAt: !512)
!535 = distinct !DILexicalBlock(scope: !505, file: !3, line: 157, column: 7)
!536 = !DILocation(line: 157, column: 7, scope: !505, inlinedAt: !512)
!537 = !DILocation(line: 161, column: 9, scope: !538, inlinedAt: !512)
!538 = distinct !DILexicalBlock(scope: !535, file: !3, line: 157, column: 69)
!539 = !DILocation(line: 0, scope: !540, inlinedAt: !512)
!540 = distinct !DILexicalBlock(scope: !541, file: !3, line: 166, column: 13)
!541 = distinct !DILexicalBlock(scope: !542, file: !3, line: 165, column: 7)
!542 = distinct !DILexicalBlock(scope: !543, file: !3, line: 161, column: 25)
!543 = distinct !DILexicalBlock(scope: !538, file: !3, line: 161, column: 9)
!544 = !DILocation(line: 166, column: 13, scope: !540, inlinedAt: !512)
!545 = !DILocation(line: 167, column: 40, scope: !540, inlinedAt: !512)
!546 = !DILocation(line: 167, column: 45, scope: !540, inlinedAt: !512)
!547 = !DILocation(line: 166, column: 54, scope: !540, inlinedAt: !512)
!548 = !DILocation(line: 168, column: 13, scope: !540, inlinedAt: !512)
!549 = !DILocation(line: 166, column: 13, scope: !541, inlinedAt: !512)
!550 = !DILocation(line: 175, column: 11, scope: !551, inlinedAt: !512)
!551 = distinct !DILexicalBlock(scope: !543, file: !3, line: 175, column: 11)
!552 = !DILocation(line: 175, column: 41, scope: !551, inlinedAt: !512)
!553 = !DILocation(line: 0, scope: !551, inlinedAt: !512)
!554 = !DILocation(line: 175, column: 11, scope: !543, inlinedAt: !512)
!555 = !DILocation(line: 175, column: 44, scope: !551, inlinedAt: !512)
!556 = !DILocation(line: 0, scope: !543, inlinedAt: !512)
!557 = !DILocation(line: 0, scope: !497)
!558 = !DILocation(line: 181, column: 1, scope: !505, inlinedAt: !512)
!559 = !DILocation(line: 264, column: 9, scope: !498)
!560 = !DILocation(line: 266, column: 17, scope: !561)
!561 = distinct !DILexicalBlock(scope: !562, file: !3, line: 266, column: 11)
!562 = distinct !DILexicalBlock(scope: !497, file: !3, line: 265, column: 60)
!563 = !{!500, !301, i64 64}
!564 = !DILocation(line: 266, column: 23, scope: !561)
!565 = !DILocation(line: 266, column: 46, scope: !561)
!566 = !DILocation(line: 266, column: 11, scope: !562)
!567 = !DILocation(line: 267, column: 23, scope: !568)
!568 = distinct !DILexicalBlock(scope: !569, file: !3, line: 267, column: 13)
!569 = distinct !DILexicalBlock(scope: !561, file: !3, line: 266, column: 52)
!570 = !DILocation(line: 267, column: 13, scope: !569)
!571 = !DILocation(line: 271, column: 9, scope: !572)
!572 = distinct !DILexicalBlock(scope: !568, file: !3, line: 267, column: 32)
!573 = !DILocation(line: 271, column: 58, scope: !574)
!574 = distinct !DILexicalBlock(scope: !568, file: !3, line: 271, column: 20)
!575 = !DILocation(line: 271, column: 63, scope: !574)
!576 = !DILocation(line: 271, column: 30, scope: !574)
!577 = !DILocation(line: 273, column: 16, scope: !578)
!578 = distinct !DILexicalBlock(scope: !579, file: !3, line: 273, column: 15)
!579 = distinct !DILexicalBlock(scope: !574, file: !3, line: 271, column: 84)
!580 = !DILocation(line: 273, column: 50, scope: !578)
!581 = !DILocation(line: 273, column: 54, scope: !578)
!582 = !DILocation(line: 273, column: 15, scope: !579)
!583 = !DILocation(line: 275, column: 17, scope: !584)
!584 = distinct !DILexicalBlock(scope: !585, file: !3, line: 275, column: 17)
!585 = distinct !DILexicalBlock(scope: !578, file: !3, line: 273, column: 121)
!586 = !DILocation(line: 275, column: 45, scope: !584)
!587 = !DILocation(line: 275, column: 48, scope: !584)
!588 = !DILocation(line: 275, column: 17, scope: !585)
!589 = !DILocation(line: 278, column: 13, scope: !590)
!590 = distinct !DILexicalBlock(scope: !584, file: !3, line: 275, column: 109)
!591 = !DILocation(line: 283, column: 18, scope: !574)
!592 = !DILocation(line: 283, column: 19, scope: !593)
!593 = distinct !DILexicalBlock(scope: !574, file: !3, line: 283, column: 18)
!594 = !DILocation(line: 0, scope: !574)
!595 = !DILocation(line: 286, column: 9, scope: !596)
!596 = distinct !DILexicalBlock(scope: !593, file: !3, line: 283, column: 50)
!597 = !DILocation(line: 0, scope: !333)
!598 = !DILocation(line: 291, column: 17, scope: !599)
!599 = distinct !DILexicalBlock(scope: !562, file: !3, line: 291, column: 11)
!600 = !{!500, !331, i64 68}
!601 = !DILocation(line: 291, column: 29, scope: !599)
!602 = !DILocation(line: 291, column: 37, scope: !599)
!603 = !DILocation(line: 292, column: 12, scope: !599)
!604 = !{!500, !301, i64 44}
!605 = !DILocation(line: 292, column: 46, scope: !599)
!606 = !DILocation(line: 0, scope: !599)
!607 = !DILocation(line: 293, column: 12, scope: !599)
!608 = !{!469, !301, i64 56}
!609 = !DILocation(line: 291, column: 11, scope: !562)
!610 = !DILocation(line: 0, scope: !562)
!611 = !DILocation(line: 295, column: 18, scope: !612)
!612 = distinct !DILexicalBlock(scope: !613, file: !3, line: 295, column: 13)
!613 = distinct !DILexicalBlock(scope: !599, file: !3, line: 293, column: 66)
!614 = !DILocation(line: 295, column: 13, scope: !613)
!615 = !DILocation(line: 298, column: 29, scope: !616)
!616 = distinct !DILexicalBlock(scope: !612, file: !3, line: 295, column: 27)
!617 = !{!500, !454, i64 56}
!618 = !DILocation(line: 298, column: 17, scope: !616)
!619 = !DILocation(line: 298, column: 22, scope: !616)
!620 = !DILocation(line: 299, column: 21, scope: !616)
!621 = !DILocation(line: 300, column: 20, scope: !616)
!622 = !DILocation(line: 301, column: 9, scope: !616)
!623 = !DILocation(line: 302, column: 11, scope: !624)
!624 = distinct !DILexicalBlock(scope: !612, file: !3, line: 301, column: 16)
!625 = !{!445, !331, i64 142}
!626 = !DILocation(line: 255, column: 48, scope: !489)
!627 = !DILocation(line: 255, column: 3, scope: !489)
!628 = distinct !{!628, !490, !629}
!629 = !DILocation(line: 309, column: 3, scope: !485)
!630 = !DILocation(line: 316, column: 11, scope: !631)
!631 = distinct !DILexicalBlock(scope: !333, file: !3, line: 316, column: 7)
!632 = !DILocation(line: 318, column: 3, scope: !633)
!633 = distinct !DILexicalBlock(scope: !631, file: !3, line: 316, column: 20)
!634 = !DILocation(line: 331, column: 7, scope: !333)
!635 = !DILocation(line: 320, column: 9, scope: !636)
!636 = distinct !DILexicalBlock(scope: !637, file: !3, line: 320, column: 9)
!637 = distinct !DILexicalBlock(scope: !631, file: !3, line: 318, column: 10)
!638 = !{!469, !454, i64 24}
!639 = !DILocation(line: 320, column: 9, scope: !637)
!640 = !DILocation(line: 325, column: 9, scope: !637)
!641 = !DILocation(line: 321, column: 16, scope: !642)
!642 = distinct !DILexicalBlock(scope: !636, file: !3, line: 320, column: 29)
!643 = !DILocation(line: 322, column: 5, scope: !642)
!644 = !DILocation(line: 325, column: 10, scope: !645)
!645 = distinct !DILexicalBlock(scope: !637, file: !3, line: 325, column: 9)
!646 = !DILocation(line: 326, column: 16, scope: !647)
!647 = distinct !DILexicalBlock(scope: !645, file: !3, line: 325, column: 30)
!648 = !DILocation(line: 327, column: 5, scope: !647)
!649 = !DILocation(line: 0, scope: !647)
!650 = !DILocation(line: 331, column: 7, scope: !651)
!651 = distinct !DILexicalBlock(scope: !333, file: !3, line: 331, column: 7)
!652 = !DILocation(line: 334, column: 5, scope: !653)
!653 = distinct !DILexicalBlock(scope: !654, file: !3, line: 334, column: 5)
!654 = distinct !DILexicalBlock(scope: !651, file: !3, line: 331, column: 15)
!655 = !{!527, !331, i64 248}
!656 = !DILocation(line: 334, column: 5, scope: !654)
!657 = !DILocation(line: 358, column: 21, scope: !658)
!658 = distinct !DILexicalBlock(scope: !659, file: !3, line: 358, column: 13)
!659 = distinct !DILexicalBlock(scope: !660, file: !3, line: 357, column: 7)
!660 = distinct !DILexicalBlock(scope: !653, file: !3, line: 334, column: 63)
!661 = !{!476, !331, i64 6}
!662 = !DILocation(line: 358, column: 28, scope: !658)
!663 = !DILocation(line: 358, column: 13, scope: !659)
!664 = !DILocation(line: 359, column: 52, scope: !665)
!665 = distinct !DILexicalBlock(scope: !666, file: !3, line: 359, column: 15)
!666 = distinct !DILexicalBlock(scope: !658, file: !3, line: 358, column: 34)
!667 = !{!453, !331, i64 16}
!668 = !DILocation(line: 359, column: 15, scope: !665)
!669 = !DILocation(line: 361, column: 56, scope: !665)
!670 = !DILocation(line: 359, column: 15, scope: !666)
!671 = !DILocation(line: 368, column: 9, scope: !672)
!672 = distinct !DILexicalBlock(scope: !654, file: !3, line: 368, column: 9)
!673 = !DILocation(line: 368, column: 9, scope: !654)
!674 = !DILocation(line: 370, column: 7, scope: !675)
!675 = distinct !DILexicalBlock(scope: !676, file: !3, line: 370, column: 7)
!676 = distinct !DILexicalBlock(scope: !677, file: !3, line: 370, column: 7)
!677 = distinct !DILexicalBlock(scope: !678, file: !3, line: 370, column: 7)
!678 = distinct !DILexicalBlock(scope: !679, file: !3, line: 370, column: 7)
!679 = distinct !DILexicalBlock(scope: !672, file: !3, line: 368, column: 42)
!680 = !DILocation(line: 370, column: 7, scope: !681)
!681 = distinct !DILexicalBlock(scope: !682, file: !3, line: 370, column: 7)
!682 = distinct !DILexicalBlock(scope: !683, file: !3, line: 370, column: 7)
!683 = distinct !DILexicalBlock(scope: !675, file: !3, line: 370, column: 7)
!684 = !DILocation(line: 377, column: 9, scope: !654)
!685 = !DILocation(line: 404, column: 16, scope: !686)
!686 = distinct !DILexicalBlock(scope: !687, file: !3, line: 404, column: 11)
!687 = distinct !DILexicalBlock(scope: !688, file: !3, line: 377, column: 22)
!688 = distinct !DILexicalBlock(scope: !654, file: !3, line: 377, column: 9)
!689 = !{!500, !454, i64 80}
!690 = !DILocation(line: 404, column: 21, scope: !686)
!691 = !DILocation(line: 404, column: 11, scope: !687)
!692 = !DILocation(line: 406, column: 24, scope: !693)
!693 = distinct !DILexicalBlock(scope: !686, file: !3, line: 404, column: 30)
!694 = !{!500, !454, i64 88}
!695 = !DILocation(line: 406, column: 9, scope: !693)
!696 = !DILocation(line: 412, column: 5, scope: !687)
!697 = !DILocation(line: 409, column: 9, scope: !698)
!698 = distinct !DILexicalBlock(scope: !686, file: !3, line: 407, column: 14)
!699 = !DILocation(line: 410, column: 9, scope: !698)
!700 = !DILocation(line: 418, column: 12, scope: !701)
!701 = distinct !DILexicalBlock(scope: !702, file: !3, line: 418, column: 11)
!702 = distinct !DILexicalBlock(scope: !688, file: !3, line: 412, column: 12)
!703 = !DILocation(line: 418, column: 22, scope: !701)
!704 = !DILocation(line: 418, column: 26, scope: !701)
!705 = !DILocation(line: 418, column: 11, scope: !702)
!706 = !DILocation(line: 420, column: 38, scope: !707)
!707 = distinct !DILexicalBlock(scope: !701, file: !3, line: 418, column: 71)
!708 = !{!469, !331, i64 32}
!709 = !DILocation(line: 420, column: 66, scope: !707)
!710 = !DILocation(line: 420, column: 9, scope: !707)
!711 = !DILocation(line: 421, column: 9, scope: !707)
!712 = !DILocation(line: 424, column: 7, scope: !702)
!713 = !{!445, !331, i64 136}
!714 = !DILocation(line: 425, column: 7, scope: !702)
!715 = !DILocation(line: 427, column: 7, scope: !702)
!716 = !DILocation(line: 430, column: 5, scope: !717)
!717 = distinct !DILexicalBlock(scope: !651, file: !3, line: 429, column: 10)
!718 = !DILocation(line: 434, column: 3, scope: !333)
!719 = !DILocation(line: 439, column: 3, scope: !333)
!720 = !{!445, !331, i64 128}
!721 = !DILocation(line: 440, column: 3, scope: !333)
!722 = !DILocation(line: 442, column: 3, scope: !333)
!723 = !DILocation(line: 445, column: 1, scope: !333)
!724 = !DILocation(line: 194, column: 43, scope: !210)
!725 = !DILocation(line: 196, column: 2, scope: !210)
!726 = !DILocation(line: 196, column: 10, scope: !210)
!727 = !DILocation(line: 197, column: 2, scope: !210)
!728 = !DILocation(line: 198, column: 2, scope: !729)
!729 = distinct !DILexicalBlock(scope: !730, file: !211, line: 198, column: 2)
!730 = distinct !DILexicalBlock(scope: !210, file: !211, line: 198, column: 2)
!731 = !DILocation(line: 199, column: 2, scope: !210)
!732 = !DILocation(line: 200, column: 1, scope: !210)
!733 = distinct !DISubprogram(name: "udp_send", scope: !3, file: !3, line: 469, type: !734, isLocal: false, isDefinition: true, scopeLine: 470, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !736)
!734 = !DISubroutineType(types: !735)
!735 = !{!357, !169, !191}
!736 = !{!737, !738}
!737 = !DILocalVariable(name: "pcb", arg: 1, scope: !733, file: !3, line: 469, type: !169)
!738 = !DILocalVariable(name: "p", arg: 2, scope: !733, file: !3, line: 469, type: !191)
!739 = !DILocation(line: 469, column: 26, scope: !733)
!740 = !DILocation(line: 469, column: 44, scope: !733)
!741 = !DILocation(line: 471, column: 3, scope: !742)
!742 = distinct !DILexicalBlock(scope: !743, file: !3, line: 471, column: 3)
!743 = distinct !DILexicalBlock(scope: !733, file: !3, line: 471, column: 3)
!744 = !DILocation(line: 471, column: 3, scope: !743)
!745 = !DILocation(line: 471, column: 3, scope: !746)
!746 = distinct !DILexicalBlock(scope: !747, file: !3, line: 471, column: 3)
!747 = distinct !DILexicalBlock(scope: !742, file: !3, line: 471, column: 3)
!748 = !DILocation(line: 471, column: 3, scope: !749)
!749 = distinct !DILexicalBlock(scope: !750, file: !3, line: 471, column: 3)
!750 = distinct !DILexicalBlock(scope: !751, file: !3, line: 471, column: 3)
!751 = distinct !DILexicalBlock(scope: !746, file: !3, line: 471, column: 3)
!752 = !DILocation(line: 472, column: 3, scope: !753)
!753 = distinct !DILexicalBlock(scope: !754, file: !3, line: 472, column: 3)
!754 = distinct !DILexicalBlock(scope: !733, file: !3, line: 472, column: 3)
!755 = !DILocation(line: 472, column: 3, scope: !754)
!756 = !DILocation(line: 472, column: 3, scope: !757)
!757 = distinct !DILexicalBlock(scope: !758, file: !3, line: 472, column: 3)
!758 = distinct !DILexicalBlock(scope: !753, file: !3, line: 472, column: 3)
!759 = !DILocation(line: 472, column: 3, scope: !760)
!760 = distinct !DILexicalBlock(scope: !761, file: !3, line: 472, column: 3)
!761 = distinct !DILexicalBlock(scope: !762, file: !3, line: 472, column: 3)
!762 = distinct !DILexicalBlock(scope: !757, file: !3, line: 472, column: 3)
!763 = !DILocation(line: 474, column: 7, scope: !764)
!764 = distinct !DILexicalBlock(scope: !733, file: !3, line: 474, column: 7)
!765 = !DILocation(line: 474, column: 7, scope: !733)
!766 = !DILocation(line: 479, column: 51, scope: !733)
!767 = !DILocation(line: 479, column: 10, scope: !733)
!768 = !DILocation(line: 479, column: 3, scope: !733)
!769 = !DILocation(line: 0, scope: !733)
!770 = !DILocation(line: 0, scope: !771)
!771 = distinct !DILexicalBlock(scope: !764, file: !3, line: 474, column: 43)
!772 = !DILocation(line: 480, column: 1, scope: !733)
!773 = distinct !DISubprogram(name: "udp_sendto", scope: !3, file: !3, line: 522, type: !774, isLocal: false, isDefinition: true, scopeLine: 524, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !776)
!774 = !DISubroutineType(types: !775)
!775 = !{!357, !169, !191, !152, !100}
!776 = !{!777, !778, !779, !780, !781}
!777 = !DILocalVariable(name: "pcb", arg: 1, scope: !773, file: !3, line: 522, type: !169)
!778 = !DILocalVariable(name: "p", arg: 2, scope: !773, file: !3, line: 522, type: !191)
!779 = !DILocalVariable(name: "dst_ip", arg: 3, scope: !773, file: !3, line: 523, type: !152)
!780 = !DILocalVariable(name: "dst_port", arg: 4, scope: !773, file: !3, line: 523, type: !100)
!781 = !DILocalVariable(name: "netif", scope: !773, file: !3, line: 536, type: !336)
!782 = !DILocation(line: 522, column: 28, scope: !773)
!783 = !DILocation(line: 522, column: 46, scope: !773)
!784 = !DILocation(line: 523, column: 29, scope: !773)
!785 = !DILocation(line: 523, column: 43, scope: !773)
!786 = !DILocation(line: 538, column: 3, scope: !787)
!787 = distinct !DILexicalBlock(scope: !788, file: !3, line: 538, column: 3)
!788 = distinct !DILexicalBlock(scope: !773, file: !3, line: 538, column: 3)
!789 = !DILocation(line: 538, column: 3, scope: !788)
!790 = !DILocation(line: 538, column: 3, scope: !791)
!791 = distinct !DILexicalBlock(scope: !792, file: !3, line: 538, column: 3)
!792 = distinct !DILexicalBlock(scope: !787, file: !3, line: 538, column: 3)
!793 = !DILocation(line: 538, column: 3, scope: !794)
!794 = distinct !DILexicalBlock(scope: !795, file: !3, line: 538, column: 3)
!795 = distinct !DILexicalBlock(scope: !796, file: !3, line: 538, column: 3)
!796 = distinct !DILexicalBlock(scope: !791, file: !3, line: 538, column: 3)
!797 = !DILocation(line: 539, column: 3, scope: !798)
!798 = distinct !DILexicalBlock(scope: !799, file: !3, line: 539, column: 3)
!799 = distinct !DILexicalBlock(scope: !773, file: !3, line: 539, column: 3)
!800 = !DILocation(line: 539, column: 3, scope: !799)
!801 = !DILocation(line: 539, column: 3, scope: !802)
!802 = distinct !DILexicalBlock(scope: !803, file: !3, line: 539, column: 3)
!803 = distinct !DILexicalBlock(scope: !798, file: !3, line: 539, column: 3)
!804 = !DILocation(line: 539, column: 3, scope: !805)
!805 = distinct !DILexicalBlock(scope: !806, file: !3, line: 539, column: 3)
!806 = distinct !DILexicalBlock(scope: !807, file: !3, line: 539, column: 3)
!807 = distinct !DILexicalBlock(scope: !802, file: !3, line: 539, column: 3)
!808 = !DILocation(line: 540, column: 3, scope: !809)
!809 = distinct !DILexicalBlock(scope: !810, file: !3, line: 540, column: 3)
!810 = distinct !DILexicalBlock(scope: !773, file: !3, line: 540, column: 3)
!811 = !DILocation(line: 540, column: 3, scope: !810)
!812 = !DILocation(line: 540, column: 3, scope: !813)
!813 = distinct !DILexicalBlock(scope: !814, file: !3, line: 540, column: 3)
!814 = distinct !DILexicalBlock(scope: !809, file: !3, line: 540, column: 3)
!815 = !DILocation(line: 540, column: 3, scope: !816)
!816 = distinct !DILexicalBlock(scope: !817, file: !3, line: 540, column: 3)
!817 = distinct !DILexicalBlock(scope: !818, file: !3, line: 540, column: 3)
!818 = distinct !DILexicalBlock(scope: !813, file: !3, line: 540, column: 3)
!819 = !DILocation(line: 542, column: 8, scope: !820)
!820 = distinct !DILexicalBlock(scope: !773, file: !3, line: 542, column: 7)
!821 = !{!470, !301, i64 20}
!822 = !DILocation(line: 542, column: 7, scope: !773)
!823 = !DILocation(line: 548, column: 12, scope: !824)
!824 = distinct !DILexicalBlock(scope: !773, file: !3, line: 548, column: 7)
!825 = !DILocation(line: 548, column: 22, scope: !824)
!826 = !DILocation(line: 548, column: 7, scope: !773)
!827 = !DILocation(line: 549, column: 13, scope: !828)
!828 = distinct !DILexicalBlock(scope: !824, file: !3, line: 548, column: 41)
!829 = !DILocation(line: 536, column: 17, scope: !773)
!830 = !DILocation(line: 550, column: 3, scope: !828)
!831 = !DILocation(line: 553, column: 9, scope: !832)
!832 = distinct !DILexicalBlock(scope: !833, file: !3, line: 553, column: 9)
!833 = distinct !DILexicalBlock(scope: !824, file: !3, line: 550, column: 10)
!834 = !DILocation(line: 553, column: 9, scope: !833)
!835 = !DILocation(line: 560, column: 16, scope: !836)
!836 = distinct !DILexicalBlock(scope: !837, file: !3, line: 560, column: 11)
!837 = distinct !DILexicalBlock(scope: !832, file: !3, line: 553, column: 38)
!838 = !{!500, !301, i64 76}
!839 = !DILocation(line: 560, column: 30, scope: !836)
!840 = !DILocation(line: 560, column: 11, scope: !837)
!841 = !DILocation(line: 561, column: 17, scope: !842)
!842 = distinct !DILexicalBlock(scope: !836, file: !3, line: 560, column: 49)
!843 = !DILocation(line: 562, column: 7, scope: !842)
!844 = !DILocation(line: 566, column: 13, scope: !845)
!845 = distinct !DILexicalBlock(scope: !836, file: !3, line: 566, column: 13)
!846 = !DILocation(line: 566, column: 13, scope: !836)
!847 = !DILocation(line: 574, column: 16, scope: !848)
!848 = distinct !DILexicalBlock(scope: !849, file: !3, line: 574, column: 15)
!849 = distinct !DILexicalBlock(scope: !845, file: !3, line: 568, column: 9)
!850 = !{!500, !300, i64 72}
!851 = !DILocation(line: 574, column: 51, scope: !848)
!852 = !DILocation(line: 575, column: 16, scope: !848)
!853 = !DILocation(line: 574, column: 15, scope: !849)
!854 = !DILocation(line: 576, column: 21, scope: !855)
!855 = distinct !DILexicalBlock(scope: !848, file: !3, line: 575, column: 67)
!856 = !DILocation(line: 577, column: 11, scope: !855)
!857 = !DILocation(line: 582, column: 9, scope: !833)
!858 = !DILocation(line: 0, scope: !833)
!859 = !DILocation(line: 0, scope: !855)
!860 = !DILocation(line: 582, column: 15, scope: !861)
!861 = distinct !DILexicalBlock(scope: !833, file: !3, line: 582, column: 9)
!862 = !DILocation(line: 586, column: 15, scope: !863)
!863 = distinct !DILexicalBlock(scope: !861, file: !3, line: 584, column: 5)
!864 = !DILocation(line: 591, column: 7, scope: !773)
!865 = !DILocation(line: 587, column: 5, scope: !863)
!866 = !DILocation(line: 0, scope: !842)
!867 = !DILocation(line: 0, scope: !828)
!868 = !DILocation(line: 591, column: 13, scope: !869)
!869 = distinct !DILexicalBlock(scope: !773, file: !3, line: 591, column: 7)
!870 = !DILocation(line: 595, column: 5, scope: !871)
!871 = distinct !DILexicalBlock(scope: !869, file: !3, line: 591, column: 22)
!872 = !{!445, !331, i64 134}
!873 = !DILocation(line: 596, column: 5, scope: !871)
!874 = !DILocation(line: 601, column: 10, scope: !773)
!875 = !DILocation(line: 601, column: 3, scope: !773)
!876 = !DILocation(line: 0, scope: !877)
!877 = distinct !DILexicalBlock(scope: !820, file: !3, line: 542, column: 48)
!878 = !DILocation(line: 603, column: 1, scope: !773)
!879 = distinct !DISubprogram(name: "udp_sendto_if", scope: !3, file: !3, line: 626, type: !880, isLocal: false, isDefinition: true, scopeLine: 628, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !882)
!880 = !DISubroutineType(types: !881)
!881 = !{!357, !169, !191, !152, !100, !336}
!882 = !{!883, !884, !885, !886, !887, !888}
!883 = !DILocalVariable(name: "pcb", arg: 1, scope: !879, file: !3, line: 626, type: !169)
!884 = !DILocalVariable(name: "p", arg: 2, scope: !879, file: !3, line: 626, type: !191)
!885 = !DILocalVariable(name: "dst_ip", arg: 3, scope: !879, file: !3, line: 627, type: !152)
!886 = !DILocalVariable(name: "dst_port", arg: 4, scope: !879, file: !3, line: 627, type: !100)
!887 = !DILocalVariable(name: "netif", arg: 5, scope: !879, file: !3, line: 627, type: !336)
!888 = !DILocalVariable(name: "src_ip", scope: !879, file: !3, line: 640, type: !152)
!889 = !DILocation(line: 626, column: 31, scope: !879)
!890 = !DILocation(line: 626, column: 49, scope: !879)
!891 = !DILocation(line: 627, column: 32, scope: !879)
!892 = !DILocation(line: 627, column: 46, scope: !879)
!893 = !DILocation(line: 627, column: 70, scope: !879)
!894 = !DILocation(line: 642, column: 3, scope: !895)
!895 = distinct !DILexicalBlock(scope: !896, file: !3, line: 642, column: 3)
!896 = distinct !DILexicalBlock(scope: !879, file: !3, line: 642, column: 3)
!897 = !DILocation(line: 642, column: 3, scope: !896)
!898 = !DILocation(line: 642, column: 3, scope: !899)
!899 = distinct !DILexicalBlock(scope: !900, file: !3, line: 642, column: 3)
!900 = distinct !DILexicalBlock(scope: !895, file: !3, line: 642, column: 3)
!901 = !DILocation(line: 642, column: 3, scope: !902)
!902 = distinct !DILexicalBlock(scope: !903, file: !3, line: 642, column: 3)
!903 = distinct !DILexicalBlock(scope: !904, file: !3, line: 642, column: 3)
!904 = distinct !DILexicalBlock(scope: !899, file: !3, line: 642, column: 3)
!905 = !DILocation(line: 643, column: 3, scope: !906)
!906 = distinct !DILexicalBlock(scope: !907, file: !3, line: 643, column: 3)
!907 = distinct !DILexicalBlock(scope: !879, file: !3, line: 643, column: 3)
!908 = !DILocation(line: 643, column: 3, scope: !907)
!909 = !DILocation(line: 643, column: 3, scope: !910)
!910 = distinct !DILexicalBlock(scope: !911, file: !3, line: 643, column: 3)
!911 = distinct !DILexicalBlock(scope: !906, file: !3, line: 643, column: 3)
!912 = !DILocation(line: 643, column: 3, scope: !913)
!913 = distinct !DILexicalBlock(scope: !914, file: !3, line: 643, column: 3)
!914 = distinct !DILexicalBlock(scope: !915, file: !3, line: 643, column: 3)
!915 = distinct !DILexicalBlock(scope: !910, file: !3, line: 643, column: 3)
!916 = !DILocation(line: 644, column: 3, scope: !917)
!917 = distinct !DILexicalBlock(scope: !918, file: !3, line: 644, column: 3)
!918 = distinct !DILexicalBlock(scope: !879, file: !3, line: 644, column: 3)
!919 = !DILocation(line: 644, column: 3, scope: !918)
!920 = !DILocation(line: 644, column: 3, scope: !921)
!921 = distinct !DILexicalBlock(scope: !922, file: !3, line: 644, column: 3)
!922 = distinct !DILexicalBlock(scope: !917, file: !3, line: 644, column: 3)
!923 = !DILocation(line: 644, column: 3, scope: !924)
!924 = distinct !DILexicalBlock(scope: !925, file: !3, line: 644, column: 3)
!925 = distinct !DILexicalBlock(scope: !926, file: !3, line: 644, column: 3)
!926 = distinct !DILexicalBlock(scope: !921, file: !3, line: 644, column: 3)
!927 = !DILocation(line: 645, column: 3, scope: !928)
!928 = distinct !DILexicalBlock(scope: !929, file: !3, line: 645, column: 3)
!929 = distinct !DILexicalBlock(scope: !879, file: !3, line: 645, column: 3)
!930 = !DILocation(line: 645, column: 3, scope: !929)
!931 = !DILocation(line: 645, column: 3, scope: !932)
!932 = distinct !DILexicalBlock(scope: !933, file: !3, line: 645, column: 3)
!933 = distinct !DILexicalBlock(scope: !928, file: !3, line: 645, column: 3)
!934 = !DILocation(line: 645, column: 3, scope: !935)
!935 = distinct !DILexicalBlock(scope: !936, file: !3, line: 645, column: 3)
!936 = distinct !DILexicalBlock(scope: !937, file: !3, line: 645, column: 3)
!937 = distinct !DILexicalBlock(scope: !932, file: !3, line: 645, column: 3)
!938 = !DILocation(line: 647, column: 8, scope: !939)
!939 = distinct !DILexicalBlock(scope: !879, file: !3, line: 647, column: 7)
!940 = !DILocation(line: 0, scope: !939)
!941 = !DILocation(line: 647, column: 7, scope: !879)
!942 = !DILocation(line: 648, column: 5, scope: !943)
!943 = distinct !DILexicalBlock(scope: !939, file: !3, line: 647, column: 48)
!944 = !DILocation(line: 653, column: 7, scope: !945)
!945 = distinct !DILexicalBlock(scope: !879, file: !3, line: 653, column: 7)
!946 = !DILocation(line: 653, column: 7, scope: !879)
!947 = !DILocation(line: 654, column: 9, scope: !948)
!948 = distinct !DILexicalBlock(scope: !949, file: !3, line: 654, column: 9)
!949 = distinct !DILexicalBlock(scope: !945, file: !3, line: 653, column: 25)
!950 = !DILocation(line: 654, column: 50, scope: !948)
!951 = !DILocation(line: 654, column: 9, scope: !949)
!952 = !DILocation(line: 655, column: 9, scope: !948)
!953 = !DILocation(line: 656, column: 49, scope: !954)
!954 = distinct !DILexicalBlock(scope: !948, file: !3, line: 655, column: 57)
!955 = !DILocation(line: 656, column: 16, scope: !954)
!956 = !DILocation(line: 640, column: 20, scope: !879)
!957 = !DILocation(line: 657, column: 18, scope: !958)
!958 = distinct !DILexicalBlock(scope: !954, file: !3, line: 657, column: 11)
!959 = !DILocation(line: 657, column: 11, scope: !954)
!960 = !DILocation(line: 659, column: 9, scope: !961)
!961 = distinct !DILexicalBlock(scope: !958, file: !3, line: 657, column: 27)
!962 = !DILocation(line: 663, column: 11, scope: !963)
!963 = distinct !DILexicalBlock(scope: !964, file: !3, line: 663, column: 11)
!964 = distinct !DILexicalBlock(scope: !948, file: !3, line: 661, column: 12)
!965 = !DILocation(line: 663, column: 69, scope: !963)
!966 = !DILocation(line: 663, column: 11, scope: !964)
!967 = !DILocation(line: 675, column: 9, scope: !968)
!968 = distinct !DILexicalBlock(scope: !945, file: !3, line: 675, column: 9)
!969 = !DILocation(line: 675, column: 50, scope: !968)
!970 = !DILocation(line: 676, column: 9, scope: !968)
!971 = !DILocation(line: 675, column: 9, scope: !945)
!972 = !DILocation(line: 679, column: 16, scope: !973)
!973 = distinct !DILexicalBlock(scope: !968, file: !3, line: 676, column: 57)
!974 = !DILocation(line: 680, column: 5, scope: !973)
!975 = !DILocation(line: 683, column: 12, scope: !976)
!976 = distinct !DILexicalBlock(scope: !977, file: !3, line: 683, column: 11)
!977 = distinct !DILexicalBlock(scope: !968, file: !3, line: 680, column: 12)
!978 = !DILocation(line: 683, column: 11, scope: !977)
!979 = !DILocation(line: 0, scope: !977)
!980 = !DILocation(line: 694, column: 10, scope: !879)
!981 = !DILocation(line: 694, column: 3, scope: !879)
!982 = !DILocation(line: 0, scope: !943)
!983 = !DILocation(line: 696, column: 1, scope: !879)
!984 = distinct !DISubprogram(name: "udp_sendto_if_src", scope: !3, file: !3, line: 701, type: !985, isLocal: false, isDefinition: true, scopeLine: 703, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !987)
!985 = !DISubroutineType(types: !986)
!986 = !{!357, !169, !191, !152, !100, !336, !152}
!987 = !{!988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999}
!988 = !DILocalVariable(name: "pcb", arg: 1, scope: !984, file: !3, line: 701, type: !169)
!989 = !DILocalVariable(name: "p", arg: 2, scope: !984, file: !3, line: 701, type: !191)
!990 = !DILocalVariable(name: "dst_ip", arg: 3, scope: !984, file: !3, line: 702, type: !152)
!991 = !DILocalVariable(name: "dst_port", arg: 4, scope: !984, file: !3, line: 702, type: !100)
!992 = !DILocalVariable(name: "netif", arg: 5, scope: !984, file: !3, line: 702, type: !336)
!993 = !DILocalVariable(name: "src_ip", arg: 6, scope: !984, file: !3, line: 702, type: !152)
!994 = !DILocalVariable(name: "udphdr", scope: !984, file: !3, line: 715, type: !108)
!995 = !DILocalVariable(name: "err", scope: !984, file: !3, line: 716, type: !357)
!996 = !DILocalVariable(name: "q", scope: !984, file: !3, line: 717, type: !191)
!997 = !DILocalVariable(name: "ip_proto", scope: !984, file: !3, line: 718, type: !134)
!998 = !DILocalVariable(name: "ttl", scope: !984, file: !3, line: 719, type: !134)
!999 = !DILocalVariable(name: "udpchksum", scope: !1000, file: !3, line: 858, type: !100)
!1000 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 857, column: 71)
!1001 = distinct !DILexicalBlock(scope: !1002, file: !3, line: 857, column: 11)
!1002 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 855, column: 63)
!1003 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 855, column: 5)
!1004 = distinct !DILexicalBlock(scope: !984, file: !3, line: 850, column: 3)
!1005 = !DILocation(line: 701, column: 35, scope: !984)
!1006 = !DILocation(line: 701, column: 53, scope: !984)
!1007 = !DILocation(line: 702, column: 36, scope: !984)
!1008 = !DILocation(line: 702, column: 50, scope: !984)
!1009 = !DILocation(line: 702, column: 74, scope: !984)
!1010 = !DILocation(line: 702, column: 98, scope: !984)
!1011 = !DILocation(line: 723, column: 3, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1013, file: !3, line: 723, column: 3)
!1013 = distinct !DILexicalBlock(scope: !984, file: !3, line: 723, column: 3)
!1014 = !DILocation(line: 723, column: 3, scope: !1013)
!1015 = !DILocation(line: 723, column: 3, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 723, column: 3)
!1017 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 723, column: 3)
!1018 = !DILocation(line: 723, column: 3, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1020, file: !3, line: 723, column: 3)
!1020 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 723, column: 3)
!1021 = distinct !DILexicalBlock(scope: !1016, file: !3, line: 723, column: 3)
!1022 = !DILocation(line: 724, column: 3, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 724, column: 3)
!1024 = distinct !DILexicalBlock(scope: !984, file: !3, line: 724, column: 3)
!1025 = !DILocation(line: 724, column: 3, scope: !1024)
!1026 = !DILocation(line: 724, column: 3, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1028, file: !3, line: 724, column: 3)
!1028 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 724, column: 3)
!1029 = !DILocation(line: 724, column: 3, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1031, file: !3, line: 724, column: 3)
!1031 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 724, column: 3)
!1032 = distinct !DILexicalBlock(scope: !1027, file: !3, line: 724, column: 3)
!1033 = !DILocation(line: 725, column: 3, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 725, column: 3)
!1035 = distinct !DILexicalBlock(scope: !984, file: !3, line: 725, column: 3)
!1036 = !DILocation(line: 725, column: 3, scope: !1035)
!1037 = !DILocation(line: 725, column: 3, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 725, column: 3)
!1039 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 725, column: 3)
!1040 = !DILocation(line: 725, column: 3, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 725, column: 3)
!1042 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 725, column: 3)
!1043 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 725, column: 3)
!1044 = !DILocation(line: 726, column: 3, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1046, file: !3, line: 726, column: 3)
!1046 = distinct !DILexicalBlock(scope: !984, file: !3, line: 726, column: 3)
!1047 = !DILocation(line: 726, column: 3, scope: !1046)
!1048 = !DILocation(line: 726, column: 3, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 726, column: 3)
!1050 = distinct !DILexicalBlock(scope: !1045, file: !3, line: 726, column: 3)
!1051 = !DILocation(line: 726, column: 3, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 726, column: 3)
!1053 = distinct !DILexicalBlock(scope: !1054, file: !3, line: 726, column: 3)
!1054 = distinct !DILexicalBlock(scope: !1049, file: !3, line: 726, column: 3)
!1055 = !DILocation(line: 727, column: 3, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 727, column: 3)
!1057 = distinct !DILexicalBlock(scope: !984, file: !3, line: 727, column: 3)
!1058 = !DILocation(line: 727, column: 3, scope: !1057)
!1059 = !DILocation(line: 727, column: 3, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1061, file: !3, line: 727, column: 3)
!1061 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 727, column: 3)
!1062 = !DILocation(line: 727, column: 3, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 727, column: 3)
!1064 = distinct !DILexicalBlock(scope: !1065, file: !3, line: 727, column: 3)
!1065 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 727, column: 3)
!1066 = !DILocation(line: 729, column: 8, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !984, file: !3, line: 729, column: 7)
!1068 = !DILocation(line: 730, column: 8, scope: !1067)
!1069 = !DILocation(line: 729, column: 47, scope: !1067)
!1070 = !DILocation(line: 729, column: 7, scope: !984)
!1071 = !DILocation(line: 748, column: 12, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !984, file: !3, line: 748, column: 7)
!1073 = !DILocation(line: 748, column: 23, scope: !1072)
!1074 = !DILocation(line: 748, column: 7, scope: !984)
!1075 = !DILocation(line: 750, column: 11, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1072, file: !3, line: 748, column: 29)
!1077 = !DILocation(line: 716, column: 9, scope: !984)
!1078 = !DILocation(line: 751, column: 13, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 751, column: 9)
!1080 = !DILocation(line: 751, column: 9, scope: !1076)
!1081 = !DILocation(line: 758, column: 18, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !984, file: !3, line: 758, column: 7)
!1083 = !DILocation(line: 758, column: 38, scope: !1082)
!1084 = !DILocation(line: 758, column: 7, scope: !984)
!1085 = !DILocation(line: 762, column: 7, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !984, file: !3, line: 762, column: 7)
!1087 = !DILocation(line: 762, column: 7, scope: !984)
!1088 = !DILocation(line: 764, column: 9, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1086, file: !3, line: 762, column: 37)
!1090 = !DILocation(line: 717, column: 16, scope: !984)
!1091 = !DILocation(line: 766, column: 11, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1089, file: !3, line: 766, column: 9)
!1093 = !DILocation(line: 766, column: 9, scope: !1089)
!1094 = !DILocation(line: 770, column: 12, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1089, file: !3, line: 770, column: 9)
!1096 = !DILocation(line: 770, column: 20, scope: !1095)
!1097 = !DILocation(line: 770, column: 9, scope: !1089)
!1098 = !DILocation(line: 772, column: 7, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 770, column: 26)
!1100 = !DILocation(line: 773, column: 5, scope: !1099)
!1101 = !DILocation(line: 783, column: 3, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 783, column: 3)
!1103 = distinct !DILexicalBlock(scope: !984, file: !3, line: 783, column: 3)
!1104 = !DILocation(line: 0, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1086, file: !3, line: 777, column: 10)
!1106 = !DILocation(line: 783, column: 3, scope: !1103)
!1107 = !DILocation(line: 783, column: 3, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 783, column: 3)
!1109 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 783, column: 3)
!1110 = !DILocation(line: 783, column: 3, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 783, column: 3)
!1112 = distinct !DILexicalBlock(scope: !1113, file: !3, line: 783, column: 3)
!1113 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 783, column: 3)
!1114 = !DILocation(line: 786, column: 33, scope: !984)
!1115 = !DILocation(line: 715, column: 19, scope: !984)
!1116 = !DILocation(line: 787, column: 33, scope: !984)
!1117 = !DILocation(line: 787, column: 17, scope: !984)
!1118 = !DILocation(line: 787, column: 11, scope: !984)
!1119 = !DILocation(line: 787, column: 15, scope: !984)
!1120 = !DILocation(line: 788, column: 18, scope: !984)
!1121 = !DILocation(line: 788, column: 11, scope: !984)
!1122 = !DILocation(line: 788, column: 16, scope: !984)
!1123 = !DILocation(line: 790, column: 11, scope: !984)
!1124 = !DILocation(line: 790, column: 18, scope: !984)
!1125 = !DILocation(line: 794, column: 14, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !984, file: !3, line: 794, column: 7)
!1127 = !DILocation(line: 794, column: 20, scope: !1126)
!1128 = !DILocation(line: 794, column: 48, scope: !1126)
!1129 = !DILocation(line: 794, column: 54, scope: !1126)
!1130 = !DILocation(line: 794, column: 57, scope: !1126)
!1131 = !DILocation(line: 794, column: 7, scope: !984)
!1132 = !DILocation(line: 795, column: 8, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1126, file: !3, line: 794, column: 86)
!1134 = !DILocation(line: 795, column: 14, scope: !1133)
!1135 = !{!453, !301, i64 21}
!1136 = !DILocation(line: 796, column: 3, scope: !1133)
!1137 = !DILocation(line: 852, column: 33, scope: !1004)
!1138 = !DILocation(line: 852, column: 19, scope: !1004)
!1139 = !DILocation(line: 852, column: 13, scope: !1004)
!1140 = !DILocation(line: 852, column: 17, scope: !1004)
!1141 = !{!476, !331, i64 4}
!1142 = !DILocation(line: 855, column: 5, scope: !1003)
!1143 = !DILocation(line: 855, column: 5, scope: !1004)
!1144 = !DILocation(line: 886, column: 10, scope: !984)
!1145 = !DILocation(line: 857, column: 11, scope: !1001)
!1146 = !DILocation(line: 857, column: 28, scope: !1001)
!1147 = !DILocation(line: 857, column: 37, scope: !1001)
!1148 = !DILocation(line: 857, column: 43, scope: !1001)
!1149 = !DILocation(line: 857, column: 65, scope: !1001)
!1150 = !DILocation(line: 857, column: 11, scope: !1002)
!1151 = !DILocation(line: 869, column: 60, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 868, column: 9)
!1153 = !DILocation(line: 869, column: 23, scope: !1152)
!1154 = !DILocation(line: 858, column: 15, scope: !1000)
!1155 = !DILocation(line: 874, column: 23, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 874, column: 13)
!1157 = !DILocation(line: 874, column: 13, scope: !1000)
!1158 = !DILocation(line: 877, column: 24, scope: !1000)
!1159 = !DILocation(line: 878, column: 7, scope: !1000)
!1160 = !DILocation(line: 718, column: 8, scope: !984)
!1161 = !DILocation(line: 886, column: 40, scope: !984)
!1162 = !DILocation(line: 886, column: 74, scope: !984)
!1163 = !DILocation(line: 0, scope: !984)
!1164 = !DILocation(line: 719, column: 8, scope: !984)
!1165 = !DILocation(line: 895, column: 9, scope: !984)
!1166 = !{!500, !301, i64 50}
!1167 = !DILocation(line: 902, column: 9, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !984, file: !3, line: 902, column: 7)
!1169 = !DILocation(line: 902, column: 7, scope: !984)
!1170 = !DILocation(line: 904, column: 5, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 902, column: 15)
!1172 = !DILocation(line: 907, column: 3, scope: !1171)
!1173 = !DILocation(line: 909, column: 3, scope: !984)
!1174 = !{!445, !331, i64 120}
!1175 = !DILocation(line: 910, column: 3, scope: !984)
!1176 = !DILocation(line: 0, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 730, column: 48)
!1178 = !DILocation(line: 911, column: 1, scope: !984)
!1179 = distinct !DISubprogram(name: "udp_bind", scope: !3, file: !3, line: 934, type: !1180, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1182)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!357, !169, !152, !100}
!1182 = !{!1183, !1184, !1185, !1186, !1187, !1188, !1189}
!1183 = !DILocalVariable(name: "pcb", arg: 1, scope: !1179, file: !3, line: 934, type: !169)
!1184 = !DILocalVariable(name: "ipaddr", arg: 2, scope: !1179, file: !3, line: 934, type: !152)
!1185 = !DILocalVariable(name: "port", arg: 3, scope: !1179, file: !3, line: 934, type: !100)
!1186 = !DILocalVariable(name: "ipcb", scope: !1179, file: !3, line: 936, type: !169)
!1187 = !DILocalVariable(name: "rebind", scope: !1179, file: !3, line: 937, type: !134)
!1188 = !DILocalVariable(name: "zoned_ipaddr", scope: !1179, file: !3, line: 939, type: !154)
!1189 = !DILocalVariable(name: "selected_netif", scope: !1190, file: !3, line: 976, type: !336)
!1190 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 976, column: 5)
!1191 = distinct !DILexicalBlock(scope: !1192, file: !3, line: 974, column: 79)
!1192 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 974, column: 7)
!1193 = !DILocation(line: 934, column: 26, scope: !1179)
!1194 = !DILocation(line: 934, column: 48, scope: !1179)
!1195 = !DILocation(line: 934, column: 62, scope: !1179)
!1196 = !DILocation(line: 939, column: 3, scope: !1179)
!1197 = !DILocation(line: 946, column: 14, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 946, column: 7)
!1199 = !DILocation(line: 946, column: 7, scope: !1179)
!1200 = !DILocation(line: 948, column: 3, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 946, column: 23)
!1202 = !DILocation(line: 953, column: 3, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 953, column: 3)
!1204 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 953, column: 3)
!1205 = !DILocation(line: 953, column: 3, scope: !1204)
!1206 = !DILocation(line: 953, column: 3, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 953, column: 3)
!1208 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 953, column: 3)
!1209 = !DILocation(line: 953, column: 3, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1211, file: !3, line: 953, column: 3)
!1211 = distinct !DILexicalBlock(scope: !1212, file: !3, line: 953, column: 3)
!1212 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 953, column: 3)
!1213 = !DILocation(line: 937, column: 8, scope: !1179)
!1214 = !DILocation(line: 961, column: 15, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 961, column: 3)
!1216 = !DILocation(line: 936, column: 19, scope: !1179)
!1217 = !DILocation(line: 961, column: 8, scope: !1215)
!1218 = !DILocation(line: 961, column: 30, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 961, column: 3)
!1220 = !DILocation(line: 961, column: 3, scope: !1215)
!1221 = !DILocation(line: 963, column: 13, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 963, column: 9)
!1223 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 961, column: 58)
!1224 = !DILocation(line: 963, column: 9, scope: !1223)
!1225 = !DILocation(line: 965, column: 7, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 963, column: 22)
!1227 = !DILocation(line: 961, column: 52, scope: !1219)
!1228 = !DILocation(line: 961, column: 3, scope: !1219)
!1229 = distinct !{!1229, !1220, !1230}
!1230 = !DILocation(line: 967, column: 3, scope: !1215)
!1231 = !DILocation(line: 974, column: 7, scope: !1192)
!1232 = !DILocation(line: 974, column: 24, scope: !1192)
!1233 = !DILocation(line: 974, column: 27, scope: !1192)
!1234 = !DILocation(line: 974, column: 7, scope: !1179)
!1235 = !DILocation(line: 975, column: 5, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 975, column: 5)
!1237 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 975, column: 5)
!1238 = !DILocation(line: 975, column: 5, scope: !1237)
!1239 = !DILocation(line: 975, column: 5, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 975, column: 5)
!1241 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 975, column: 5)
!1242 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 975, column: 5)
!1243 = !DILocation(line: 975, column: 5, scope: !1241)
!1244 = !DILocation(line: 976, column: 5, scope: !1190)
!1245 = !DILocation(line: 976, column: 5, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 976, column: 5)
!1247 = !DILocation(line: 976, column: 5, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 976, column: 5)
!1249 = !DILocation(line: 978, column: 3, scope: !1191)
!1250 = !DILocation(line: 0, scope: !1201)
!1251 = !DILocation(line: 982, column: 12, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 982, column: 7)
!1253 = !DILocation(line: 982, column: 7, scope: !1179)
!1254 = !DILocalVariable(name: "n", scope: !1255, file: !3, line: 104, type: !100)
!1255 = distinct !DISubprogram(name: "udp_new_port", scope: !3, file: !3, line: 102, type: !1256, isLocal: true, isDefinition: true, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1258)
!1256 = !DISubroutineType(types: !1257)
!1257 = !{!100}
!1258 = !{!1254, !1259}
!1259 = !DILocalVariable(name: "pcb", scope: !1255, file: !3, line: 105, type: !169)
!1260 = !DILocation(line: 104, column: 9, scope: !1255, inlinedAt: !1261)
!1261 = distinct !DILocation(line: 983, column: 12, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 982, column: 18)
!1263 = !DILocation(line: 105, column: 3, scope: !1255, inlinedAt: !1261)
!1264 = !DILocation(line: 108, column: 15, scope: !1265, inlinedAt: !1261)
!1265 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 108, column: 7)
!1266 = !DILocation(line: 0, scope: !1267, inlinedAt: !1261)
!1267 = distinct !DILexicalBlock(scope: !1268, file: !3, line: 114, column: 11)
!1268 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 113, column: 38)
!1269 = distinct !DILexicalBlock(scope: !1270, file: !3, line: 113, column: 9)
!1270 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 112, column: 54)
!1271 = distinct !DILexicalBlock(scope: !1272, file: !3, line: 112, column: 3)
!1272 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 112, column: 3)
!1273 = !DILocation(line: 108, column: 18, scope: !1265, inlinedAt: !1261)
!1274 = !DILocation(line: 108, column: 7, scope: !1255, inlinedAt: !1261)
!1275 = !DILocation(line: 0, scope: !1276, inlinedAt: !1261)
!1276 = distinct !DILexicalBlock(scope: !1265, file: !3, line: 108, column: 47)
!1277 = !DILocation(line: 105, column: 19, scope: !1255, inlinedAt: !1261)
!1278 = !DILocation(line: 112, column: 8, scope: !1272, inlinedAt: !1261)
!1279 = !DILocation(line: 112, column: 3, scope: !1272, inlinedAt: !1261)
!1280 = !DILocation(line: 120, column: 3, scope: !1255, inlinedAt: !1261)
!1281 = !DILocation(line: 121, column: 1, scope: !1255, inlinedAt: !1261)
!1282 = !DILocation(line: 984, column: 9, scope: !1262)
!1283 = !DILocation(line: 113, column: 14, scope: !1269, inlinedAt: !1261)
!1284 = !DILocation(line: 113, column: 25, scope: !1269, inlinedAt: !1261)
!1285 = !DILocation(line: 113, column: 9, scope: !1270, inlinedAt: !1261)
!1286 = !DILocation(line: 114, column: 11, scope: !1267, inlinedAt: !1261)
!1287 = !DILocation(line: 114, column: 15, scope: !1267, inlinedAt: !1261)
!1288 = !DILocation(line: 114, column: 11, scope: !1268, inlinedAt: !1261)
!1289 = !DILocation(line: 115, column: 9, scope: !1290, inlinedAt: !1261)
!1290 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 114, column: 74)
!1291 = !DILocation(line: 112, column: 48, scope: !1271, inlinedAt: !1261)
!1292 = !DILocation(line: 112, column: 3, scope: !1271, inlinedAt: !1261)
!1293 = !DILocation(line: 112, column: 28, scope: !1271, inlinedAt: !1261)
!1294 = distinct !{!1294, !1295, !1296}
!1295 = !DILocation(line: 112, column: 3, scope: !1272)
!1296 = !DILocation(line: 119, column: 3, scope: !1272)
!1297 = !DILocation(line: 984, column: 14, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 984, column: 9)
!1299 = !DILocation(line: 990, column: 17, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !3, line: 990, column: 5)
!1301 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 989, column: 10)
!1302 = !DILocation(line: 990, column: 10, scope: !1300)
!1303 = !DILocation(line: 990, column: 32, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1300, file: !3, line: 990, column: 5)
!1305 = !DILocation(line: 990, column: 5, scope: !1300)
!1306 = !DILocation(line: 991, column: 15, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 991, column: 11)
!1308 = distinct !DILexicalBlock(scope: !1304, file: !3, line: 990, column: 60)
!1309 = !DILocation(line: 991, column: 11, scope: !1308)
!1310 = !DILocation(line: 996, column: 14, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1312, file: !3, line: 996, column: 13)
!1312 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 991, column: 24)
!1313 = !{!500, !301, i64 49}
!1314 = !DILocation(line: 996, column: 48, scope: !1311)
!1315 = !DILocation(line: 997, column: 14, scope: !1311)
!1316 = !DILocation(line: 996, column: 13, scope: !1312)
!1317 = !DILocation(line: 1001, column: 22, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1319, file: !3, line: 1001, column: 15)
!1319 = distinct !DILexicalBlock(scope: !1311, file: !3, line: 999, column: 9)
!1320 = !DILocation(line: 1001, column: 33, scope: !1318)
!1321 = !DILocation(line: 1001, column: 42, scope: !1318)
!1322 = !DILocation(line: 1003, column: 16, scope: !1318)
!1323 = !DILocation(line: 1003, column: 53, scope: !1318)
!1324 = !DILocation(line: 1003, column: 56, scope: !1318)
!1325 = !DILocation(line: 0, scope: !1318)
!1326 = !DILocation(line: 1003, column: 78, scope: !1318)
!1327 = !DILocation(line: 1001, column: 15, scope: !1319)
!1328 = !DILocation(line: 1004, column: 15, scope: !1318)
!1329 = !DILocation(line: 0, scope: !1319)
!1330 = !DILocation(line: 990, column: 54, scope: !1304)
!1331 = !DILocation(line: 990, column: 5, scope: !1304)
!1332 = distinct !{!1332, !1305, !1333}
!1333 = !DILocation(line: 1012, column: 5, scope: !1300)
!1334 = !DILocation(line: 1015, column: 3, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1336, file: !3, line: 1015, column: 3)
!1336 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 1015, column: 3)
!1337 = !DILocation(line: 1015, column: 3, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1339, file: !3, line: 1015, column: 3)
!1339 = distinct !DILexicalBlock(scope: !1340, file: !3, line: 1015, column: 3)
!1340 = distinct !DILexicalBlock(scope: !1335, file: !3, line: 1015, column: 3)
!1341 = !DILocation(line: 1015, column: 3, scope: !1339)
!1342 = !DILocation(line: 1015, column: 3, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1336, file: !3, line: 1015, column: 3)
!1344 = !DILocation(line: 1015, column: 3, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 1015, column: 3)
!1346 = !DILocation(line: 1015, column: 3, scope: !1336)
!1347 = !DILocation(line: 1015, column: 3, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1349, file: !3, line: 1015, column: 3)
!1349 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 1015, column: 3)
!1350 = !DILocation(line: 1015, column: 3, scope: !1349)
!1351 = !DILocation(line: 1015, column: 3, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 1015, column: 3)
!1353 = !DILocation(line: 1017, column: 8, scope: !1179)
!1354 = !DILocation(line: 1017, column: 19, scope: !1179)
!1355 = !DILocation(line: 1020, column: 14, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 1020, column: 7)
!1357 = !DILocation(line: 1020, column: 7, scope: !1179)
!1358 = !DILocation(line: 1022, column: 17, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1356, file: !3, line: 1020, column: 20)
!1360 = !DILocation(line: 1022, column: 10, scope: !1359)
!1361 = !DILocation(line: 1022, column: 15, scope: !1359)
!1362 = !DILocation(line: 1023, column: 14, scope: !1359)
!1363 = !DILocation(line: 1024, column: 3, scope: !1359)
!1364 = !DILocation(line: 0, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1318, file: !3, line: 1004, column: 48)
!1366 = !DILocation(line: 0, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1298, file: !3, line: 984, column: 20)
!1368 = !DILocation(line: 1029, column: 1, scope: !1179)
!1369 = distinct !DISubprogram(name: "udp_bind_netif", scope: !3, file: !3, line: 1044, type: !1370, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1374)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{null, !169, !1372}
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !337)
!1374 = !{!1375, !1376}
!1375 = !DILocalVariable(name: "pcb", arg: 1, scope: !1369, file: !3, line: 1044, type: !169)
!1376 = !DILocalVariable(name: "netif", arg: 2, scope: !1369, file: !3, line: 1044, type: !1372)
!1377 = !DILocation(line: 1044, column: 32, scope: !1369)
!1378 = !DILocation(line: 1044, column: 57, scope: !1369)
!1379 = !DILocation(line: 1048, column: 13, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1369, file: !3, line: 1048, column: 7)
!1381 = !DILocation(line: 1048, column: 7, scope: !1369)
!1382 = !DILocation(line: 1049, column: 22, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1380, file: !3, line: 1048, column: 22)
!1384 = !DILocation(line: 1050, column: 3, scope: !1383)
!1385 = !DILocation(line: 1051, column: 10, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1380, file: !3, line: 1050, column: 10)
!1387 = !DILocation(line: 1051, column: 20, scope: !1386)
!1388 = !DILocation(line: 1053, column: 1, scope: !1369)
!1389 = distinct !DISubprogram(name: "udp_connect", scope: !3, file: !3, line: 1073, type: !1180, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1390)
!1390 = !{!1391, !1392, !1393, !1394, !1395, !1398}
!1391 = !DILocalVariable(name: "pcb", arg: 1, scope: !1389, file: !3, line: 1073, type: !169)
!1392 = !DILocalVariable(name: "ipaddr", arg: 2, scope: !1389, file: !3, line: 1073, type: !152)
!1393 = !DILocalVariable(name: "port", arg: 3, scope: !1389, file: !3, line: 1073, type: !100)
!1394 = !DILocalVariable(name: "ipcb", scope: !1389, file: !3, line: 1075, type: !169)
!1395 = !DILocalVariable(name: "err", scope: !1396, file: !3, line: 1083, type: !357)
!1396 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 1082, column: 29)
!1397 = distinct !DILexicalBlock(scope: !1389, file: !3, line: 1082, column: 7)
!1398 = !DILocalVariable(name: "selected_netif", scope: !1399, file: !3, line: 1095, type: !336)
!1399 = distinct !DILexicalBlock(scope: !1400, file: !3, line: 1095, column: 5)
!1400 = distinct !DILexicalBlock(scope: !1401, file: !3, line: 1094, column: 68)
!1401 = distinct !DILexicalBlock(scope: !1389, file: !3, line: 1093, column: 7)
!1402 = !DILocation(line: 1073, column: 29, scope: !1389)
!1403 = !DILocation(line: 1073, column: 51, scope: !1389)
!1404 = !DILocation(line: 1073, column: 65, scope: !1389)
!1405 = !DILocation(line: 1079, column: 3, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1407, file: !3, line: 1079, column: 3)
!1407 = distinct !DILexicalBlock(scope: !1389, file: !3, line: 1079, column: 3)
!1408 = !DILocation(line: 1079, column: 3, scope: !1407)
!1409 = !DILocation(line: 1079, column: 3, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1411, file: !3, line: 1079, column: 3)
!1411 = distinct !DILexicalBlock(scope: !1406, file: !3, line: 1079, column: 3)
!1412 = !DILocation(line: 1079, column: 3, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1414, file: !3, line: 1079, column: 3)
!1414 = distinct !DILexicalBlock(scope: !1415, file: !3, line: 1079, column: 3)
!1415 = distinct !DILexicalBlock(scope: !1410, file: !3, line: 1079, column: 3)
!1416 = !DILocation(line: 1080, column: 3, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1418, file: !3, line: 1080, column: 3)
!1418 = distinct !DILexicalBlock(scope: !1389, file: !3, line: 1080, column: 3)
!1419 = !DILocation(line: 1080, column: 3, scope: !1418)
!1420 = !DILocation(line: 1080, column: 3, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 1080, column: 3)
!1422 = distinct !DILexicalBlock(scope: !1417, file: !3, line: 1080, column: 3)
!1423 = !DILocation(line: 1080, column: 3, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1425, file: !3, line: 1080, column: 3)
!1425 = distinct !DILexicalBlock(scope: !1426, file: !3, line: 1080, column: 3)
!1426 = distinct !DILexicalBlock(scope: !1421, file: !3, line: 1080, column: 3)
!1427 = !DILocation(line: 1082, column: 12, scope: !1397)
!1428 = !DILocation(line: 1082, column: 23, scope: !1397)
!1429 = !DILocation(line: 1082, column: 7, scope: !1389)
!1430 = !DILocation(line: 1083, column: 37, scope: !1396)
!1431 = !DILocation(line: 1083, column: 17, scope: !1396)
!1432 = !DILocation(line: 1083, column: 11, scope: !1396)
!1433 = !DILocation(line: 1084, column: 13, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1396, file: !3, line: 1084, column: 9)
!1435 = !DILocation(line: 1084, column: 9, scope: !1396)
!1436 = !DILocation(line: 0, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1434, file: !3, line: 1084, column: 24)
!1438 = !DILocation(line: 1089, column: 3, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1440, file: !3, line: 1089, column: 3)
!1440 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 1089, column: 3)
!1441 = distinct !DILexicalBlock(scope: !1389, file: !3, line: 1089, column: 3)
!1442 = !DILocation(line: 1089, column: 3, scope: !1440)
!1443 = !DILocation(line: 1089, column: 3, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1445, file: !3, line: 1089, column: 3)
!1445 = distinct !DILexicalBlock(scope: !1439, file: !3, line: 1089, column: 3)
!1446 = !DILocation(line: 1089, column: 3, scope: !1445)
!1447 = !DILocation(line: 1089, column: 3, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 1089, column: 3)
!1449 = !DILocation(line: 1089, column: 3, scope: !1441)
!1450 = !DILocation(line: 1089, column: 3, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1452, file: !3, line: 1089, column: 3)
!1452 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 1089, column: 3)
!1453 = !DILocation(line: 1089, column: 3, scope: !1452)
!1454 = !DILocation(line: 1089, column: 3, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1456, file: !3, line: 1089, column: 3)
!1456 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 1089, column: 3)
!1457 = !DILocation(line: 1093, column: 7, scope: !1401)
!1458 = !DILocation(line: 1093, column: 33, scope: !1401)
!1459 = !DILocation(line: 1094, column: 7, scope: !1401)
!1460 = !DILocation(line: 1093, column: 7, scope: !1389)
!1461 = !DILocation(line: 1095, column: 5, scope: !1399)
!1462 = !DILocation(line: 1095, column: 5, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1399, file: !3, line: 1095, column: 5)
!1464 = !DILocation(line: 1095, column: 5, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1463, file: !3, line: 1095, column: 5)
!1466 = !DILocation(line: 1096, column: 3, scope: !1400)
!1467 = !DILocation(line: 1099, column: 8, scope: !1389)
!1468 = !DILocation(line: 1099, column: 20, scope: !1389)
!1469 = !DILocation(line: 1100, column: 8, scope: !1389)
!1470 = !DILocation(line: 1100, column: 14, scope: !1389)
!1471 = !DILocation(line: 1108, column: 15, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1389, file: !3, line: 1108, column: 3)
!1473 = !DILocation(line: 1075, column: 19, scope: !1389)
!1474 = !DILocation(line: 1108, column: 8, scope: !1472)
!1475 = !DILocation(line: 1108, column: 30, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1472, file: !3, line: 1108, column: 3)
!1477 = !DILocation(line: 1108, column: 3, scope: !1472)
!1478 = !DILocation(line: 1109, column: 13, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1480, file: !3, line: 1109, column: 9)
!1480 = distinct !DILexicalBlock(scope: !1476, file: !3, line: 1108, column: 58)
!1481 = !DILocation(line: 1109, column: 9, scope: !1480)
!1482 = !DILocation(line: 1108, column: 52, scope: !1476)
!1483 = !DILocation(line: 1108, column: 3, scope: !1476)
!1484 = distinct !{!1484, !1477, !1485}
!1485 = !DILocation(line: 1113, column: 3, scope: !1472)
!1486 = !DILocation(line: 1115, column: 8, scope: !1389)
!1487 = !DILocation(line: 1115, column: 13, scope: !1389)
!1488 = !DILocation(line: 1116, column: 12, scope: !1389)
!1489 = !DILocation(line: 1117, column: 3, scope: !1389)
!1490 = !DILocation(line: 0, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1479, file: !3, line: 1109, column: 22)
!1492 = !DILocation(line: 1118, column: 1, scope: !1389)
!1493 = distinct !DISubprogram(name: "udp_disconnect", scope: !3, file: !3, line: 1128, type: !1494, isLocal: false, isDefinition: true, scopeLine: 1129, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1496)
!1494 = !DISubroutineType(types: !1495)
!1495 = !{null, !169}
!1496 = !{!1497}
!1497 = !DILocalVariable(name: "pcb", arg: 1, scope: !1493, file: !3, line: 1128, type: !169)
!1498 = !DILocation(line: 1128, column: 32, scope: !1493)
!1499 = !DILocation(line: 1132, column: 3, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1501, file: !3, line: 1132, column: 3)
!1501 = distinct !DILexicalBlock(scope: !1493, file: !3, line: 1132, column: 3)
!1502 = !DILocation(line: 1132, column: 3, scope: !1501)
!1503 = !DILocation(line: 1132, column: 3, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1505, file: !3, line: 1132, column: 3)
!1505 = distinct !DILexicalBlock(scope: !1500, file: !3, line: 1132, column: 3)
!1506 = !DILocation(line: 1132, column: 3, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1508, file: !3, line: 1132, column: 3)
!1508 = distinct !DILexicalBlock(scope: !1509, file: !3, line: 1132, column: 3)
!1509 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 1132, column: 3)
!1510 = !DILocation(line: 1136, column: 7, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1493, file: !3, line: 1136, column: 7)
!1512 = !DILocation(line: 1136, column: 7, scope: !1493)
!1513 = !DILocation(line: 1137, column: 5, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !3, line: 1137, column: 5)
!1515 = distinct !DILexicalBlock(scope: !1516, file: !3, line: 1137, column: 5)
!1516 = distinct !DILexicalBlock(scope: !1511, file: !3, line: 1136, column: 42)
!1517 = !DILocation(line: 1137, column: 5, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1515, file: !3, line: 1137, column: 5)
!1519 = !DILocation(line: 1137, column: 5, scope: !1515)
!1520 = !DILocation(line: 1137, column: 5, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1522, file: !3, line: 1137, column: 5)
!1522 = distinct !DILexicalBlock(scope: !1518, file: !3, line: 1137, column: 5)
!1523 = !DILocation(line: 1137, column: 5, scope: !1522)
!1524 = !DILocation(line: 1137, column: 5, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1526, file: !3, line: 1137, column: 5)
!1526 = distinct !DILexicalBlock(scope: !1518, file: !3, line: 1137, column: 5)
!1527 = !DILocation(line: 1140, column: 5, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1529, file: !3, line: 1140, column: 5)
!1529 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 1140, column: 5)
!1530 = distinct !DILexicalBlock(scope: !1511, file: !3, line: 1138, column: 10)
!1531 = !DILocation(line: 1140, column: 5, scope: !1529)
!1532 = !DILocation(line: 1140, column: 5, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1534, file: !3, line: 1140, column: 5)
!1534 = distinct !DILexicalBlock(scope: !1528, file: !3, line: 1140, column: 5)
!1535 = !DILocation(line: 1140, column: 5, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1534, file: !3, line: 1140, column: 5)
!1537 = !DILocation(line: 1140, column: 5, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1539, file: !3, line: 1140, column: 5)
!1539 = distinct !DILexicalBlock(scope: !1540, file: !3, line: 1140, column: 5)
!1540 = distinct !DILexicalBlock(scope: !1536, file: !3, line: 1140, column: 5)
!1541 = !DILocation(line: 1140, column: 5, scope: !1539)
!1542 = !DILocation(line: 1140, column: 5, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1544, file: !3, line: 1140, column: 5)
!1544 = distinct !DILexicalBlock(scope: !1528, file: !3, line: 1140, column: 5)
!1545 = !DILocation(line: 1140, column: 5, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1547, file: !3, line: 1140, column: 5)
!1547 = distinct !DILexicalBlock(scope: !1548, file: !3, line: 1140, column: 5)
!1548 = distinct !DILexicalBlock(scope: !1543, file: !3, line: 1140, column: 5)
!1549 = !DILocation(line: 1140, column: 5, scope: !1547)
!1550 = !DILocation(line: 1140, column: 5, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1544, file: !3, line: 1140, column: 5)
!1552 = !DILocation(line: 1144, column: 8, scope: !1493)
!1553 = !DILocation(line: 1144, column: 20, scope: !1493)
!1554 = !DILocation(line: 1145, column: 8, scope: !1493)
!1555 = !DILocation(line: 1145, column: 18, scope: !1493)
!1556 = !DILocation(line: 1147, column: 3, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1493, file: !3, line: 1147, column: 3)
!1558 = !DILocation(line: 1148, column: 1, scope: !1493)
!1559 = distinct !DISubprogram(name: "udp_recv", scope: !3, file: !3, line: 1160, type: !1560, isLocal: false, isDefinition: true, scopeLine: 1161, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1562)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{null, !169, !187, !107}
!1562 = !{!1563, !1564, !1565}
!1563 = !DILocalVariable(name: "pcb", arg: 1, scope: !1559, file: !3, line: 1160, type: !169)
!1564 = !DILocalVariable(name: "recv", arg: 2, scope: !1559, file: !3, line: 1160, type: !187)
!1565 = !DILocalVariable(name: "recv_arg", arg: 3, scope: !1559, file: !3, line: 1160, type: !107)
!1566 = !DILocation(line: 1160, column: 26, scope: !1559)
!1567 = !DILocation(line: 1160, column: 43, scope: !1559)
!1568 = !DILocation(line: 1160, column: 55, scope: !1559)
!1569 = !DILocation(line: 1164, column: 3, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1571, file: !3, line: 1164, column: 3)
!1571 = distinct !DILexicalBlock(scope: !1559, file: !3, line: 1164, column: 3)
!1572 = !DILocation(line: 1164, column: 3, scope: !1571)
!1573 = !DILocation(line: 1164, column: 3, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1575, file: !3, line: 1164, column: 3)
!1575 = distinct !DILexicalBlock(scope: !1570, file: !3, line: 1164, column: 3)
!1576 = !DILocation(line: 1164, column: 3, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1578, file: !3, line: 1164, column: 3)
!1578 = distinct !DILexicalBlock(scope: !1579, file: !3, line: 1164, column: 3)
!1579 = distinct !DILexicalBlock(scope: !1574, file: !3, line: 1164, column: 3)
!1580 = !DILocation(line: 1167, column: 8, scope: !1559)
!1581 = !DILocation(line: 1167, column: 13, scope: !1559)
!1582 = !DILocation(line: 1168, column: 8, scope: !1559)
!1583 = !DILocation(line: 1168, column: 17, scope: !1559)
!1584 = !DILocation(line: 1169, column: 1, scope: !1559)
!1585 = distinct !DISubprogram(name: "udp_remove", scope: !3, file: !3, line: 1181, type: !1494, isLocal: false, isDefinition: true, scopeLine: 1182, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1586)
!1586 = !{!1587, !1588}
!1587 = !DILocalVariable(name: "pcb", arg: 1, scope: !1585, file: !3, line: 1181, type: !169)
!1588 = !DILocalVariable(name: "pcb2", scope: !1585, file: !3, line: 1183, type: !169)
!1589 = !DILocation(line: 1181, column: 28, scope: !1585)
!1590 = !DILocation(line: 1187, column: 3, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1592, file: !3, line: 1187, column: 3)
!1592 = distinct !DILexicalBlock(scope: !1585, file: !3, line: 1187, column: 3)
!1593 = !DILocation(line: 1187, column: 3, scope: !1592)
!1594 = !DILocation(line: 1187, column: 3, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1596, file: !3, line: 1187, column: 3)
!1596 = distinct !DILexicalBlock(scope: !1591, file: !3, line: 1187, column: 3)
!1597 = !DILocation(line: 1187, column: 3, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1599, file: !3, line: 1187, column: 3)
!1599 = distinct !DILexicalBlock(scope: !1600, file: !3, line: 1187, column: 3)
!1600 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 1187, column: 3)
!1601 = !DILocation(line: 1191, column: 7, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1585, file: !3, line: 1191, column: 7)
!1603 = !DILocation(line: 1191, column: 16, scope: !1602)
!1604 = !DILocation(line: 1191, column: 7, scope: !1585)
!1605 = !DILocation(line: 1193, column: 26, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1602, file: !3, line: 1191, column: 24)
!1607 = !DILocation(line: 1193, column: 14, scope: !1606)
!1608 = !DILocation(line: 1195, column: 3, scope: !1606)
!1609 = !DILocation(line: 1183, column: 19, scope: !1585)
!1610 = !DILocation(line: 1196, column: 10, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1612, file: !3, line: 1196, column: 5)
!1612 = distinct !DILexicalBlock(scope: !1602, file: !3, line: 1195, column: 10)
!1613 = !DILocation(line: 1196, column: 32, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1611, file: !3, line: 1196, column: 5)
!1615 = !DILocation(line: 1196, column: 5, scope: !1611)
!1616 = !DILocation(line: 1198, column: 17, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1618, file: !3, line: 1198, column: 11)
!1618 = distinct !DILexicalBlock(scope: !1614, file: !3, line: 1196, column: 60)
!1619 = !DILocation(line: 1198, column: 22, scope: !1617)
!1620 = !DILocation(line: 1198, column: 30, scope: !1617)
!1621 = !DILocation(line: 1198, column: 44, scope: !1617)
!1622 = !DILocation(line: 1198, column: 11, scope: !1618)
!1623 = !DILocation(line: 1200, column: 27, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1617, file: !3, line: 1198, column: 52)
!1625 = !DILocation(line: 1200, column: 20, scope: !1624)
!1626 = !DILocation(line: 1201, column: 9, scope: !1624)
!1627 = !DILocation(line: 1196, column: 5, scope: !1614)
!1628 = !DILocation(line: 1205, column: 27, scope: !1585)
!1629 = !DILocation(line: 0, scope: !1606)
!1630 = !DILocation(line: 1205, column: 3, scope: !1585)
!1631 = !DILocation(line: 1206, column: 1, scope: !1585)
!1632 = distinct !DISubprogram(name: "udp_new", scope: !3, file: !3, line: 1220, type: !1633, isLocal: false, isDefinition: true, scopeLine: 1221, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1635)
!1633 = !DISubroutineType(types: !1634)
!1634 = !{!169}
!1635 = !{!1636}
!1636 = !DILocalVariable(name: "pcb", scope: !1632, file: !3, line: 1222, type: !169)
!1637 = !DILocation(line: 1226, column: 27, scope: !1632)
!1638 = !DILocation(line: 1226, column: 9, scope: !1632)
!1639 = !DILocation(line: 1222, column: 19, scope: !1632)
!1640 = !DILocation(line: 1228, column: 11, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1632, file: !3, line: 1228, column: 7)
!1642 = !DILocation(line: 1228, column: 7, scope: !1632)
!1643 = !DILocation(line: 1233, column: 5, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1641, file: !3, line: 1228, column: 20)
!1645 = !DILocation(line: 1234, column: 10, scope: !1644)
!1646 = !DILocation(line: 1234, column: 14, scope: !1644)
!1647 = !{!500, !301, i64 51}
!1648 = !DILocation(line: 1236, column: 5, scope: !1644)
!1649 = !{!500, !301, i64 77}
!1650 = !DILocation(line: 1238, column: 3, scope: !1644)
!1651 = !DILocation(line: 1239, column: 3, scope: !1632)
!1652 = distinct !DISubprogram(name: "udp_new_ip_type", scope: !3, file: !3, line: 1257, type: !1653, isLocal: false, isDefinition: true, scopeLine: 1258, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1655)
!1653 = !DISubroutineType(types: !1654)
!1654 = !{!169, !134}
!1655 = !{!1656, !1657}
!1656 = !DILocalVariable(name: "type", arg: 1, scope: !1652, file: !3, line: 1257, type: !134)
!1657 = !DILocalVariable(name: "pcb", scope: !1652, file: !3, line: 1259, type: !169)
!1658 = !DILocation(line: 1257, column: 22, scope: !1652)
!1659 = !DILocation(line: 1226, column: 27, scope: !1632, inlinedAt: !1660)
!1660 = distinct !DILocation(line: 1263, column: 9, scope: !1652)
!1661 = !DILocation(line: 1226, column: 9, scope: !1632, inlinedAt: !1660)
!1662 = !DILocation(line: 1222, column: 19, scope: !1632, inlinedAt: !1660)
!1663 = !DILocation(line: 1228, column: 11, scope: !1641, inlinedAt: !1660)
!1664 = !DILocation(line: 1228, column: 7, scope: !1632, inlinedAt: !1660)
!1665 = !DILocation(line: 1233, column: 5, scope: !1644, inlinedAt: !1660)
!1666 = !DILocation(line: 1234, column: 10, scope: !1644, inlinedAt: !1660)
!1667 = !DILocation(line: 1234, column: 14, scope: !1644, inlinedAt: !1660)
!1668 = !DILocation(line: 1236, column: 5, scope: !1644, inlinedAt: !1660)
!1669 = !DILocation(line: 1238, column: 3, scope: !1644, inlinedAt: !1660)
!1670 = !DILocation(line: 1239, column: 3, scope: !1632, inlinedAt: !1660)
!1671 = !DILocation(line: 1259, column: 19, scope: !1652)
!1672 = !DILocation(line: 1265, column: 7, scope: !1652)
!1673 = !DILocation(line: 1266, column: 5, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1675, file: !3, line: 1266, column: 5)
!1675 = distinct !DILexicalBlock(scope: !1676, file: !3, line: 1265, column: 20)
!1676 = distinct !DILexicalBlock(scope: !1652, file: !3, line: 1265, column: 7)
!1677 = !DILocation(line: 1267, column: 5, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1675, file: !3, line: 1267, column: 5)
!1679 = !DILocation(line: 1268, column: 3, scope: !1675)
!1680 = !DILocation(line: 0, scope: !1675)
!1681 = !DILocation(line: 1272, column: 3, scope: !1652)
!1682 = distinct !DISubprogram(name: "udp_netif_ip_addr_changed", scope: !3, file: !3, line: 1280, type: !1683, isLocal: false, isDefinition: true, scopeLine: 1281, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1685)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{null, !152, !152}
!1685 = !{!1686, !1687, !1688}
!1686 = !DILocalVariable(name: "old_addr", arg: 1, scope: !1682, file: !3, line: 1280, type: !152)
!1687 = !DILocalVariable(name: "new_addr", arg: 2, scope: !1682, file: !3, line: 1280, type: !152)
!1688 = !DILocalVariable(name: "upcb", scope: !1682, file: !3, line: 1282, type: !169)
!1689 = !DILocation(line: 1280, column: 49, scope: !1682)
!1690 = !DILocation(line: 1280, column: 76, scope: !1682)
!1691 = !DILocation(line: 1284, column: 8, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1682, file: !3, line: 1284, column: 7)
!1693 = !DILocation(line: 1284, column: 32, scope: !1692)
!1694 = !DILocation(line: 1284, column: 36, scope: !1692)
!1695 = !DILocation(line: 1284, column: 7, scope: !1682)
!1696 = !DILocation(line: 0, scope: !1682)
!1697 = !DILocation(line: 1285, column: 17, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1699, file: !3, line: 1285, column: 5)
!1699 = distinct !DILexicalBlock(scope: !1692, file: !3, line: 1284, column: 61)
!1700 = !DILocation(line: 1282, column: 19, scope: !1682)
!1701 = !DILocation(line: 1285, column: 10, scope: !1698)
!1702 = !DILocation(line: 1285, column: 32, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1698, file: !3, line: 1285, column: 5)
!1704 = !DILocation(line: 1285, column: 5, scope: !1698)
!1705 = !DILocation(line: 1287, column: 11, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1707, file: !3, line: 1287, column: 11)
!1707 = distinct !DILexicalBlock(scope: !1703, file: !3, line: 1285, column: 60)
!1708 = !DILocation(line: 1287, column: 11, scope: !1707)
!1709 = !DILocation(line: 1290, column: 9, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1711, file: !3, line: 1290, column: 9)
!1711 = distinct !DILexicalBlock(scope: !1712, file: !3, line: 1290, column: 9)
!1712 = distinct !DILexicalBlock(scope: !1706, file: !3, line: 1287, column: 51)
!1713 = !DILocation(line: 1290, column: 9, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1711, file: !3, line: 1290, column: 9)
!1715 = !DILocation(line: 1290, column: 9, scope: !1711)
!1716 = !DILocation(line: 1290, column: 9, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1718, file: !3, line: 1290, column: 9)
!1718 = distinct !DILexicalBlock(scope: !1714, file: !3, line: 1290, column: 9)
!1719 = !DILocation(line: 1290, column: 9, scope: !1718)
!1720 = !DILocation(line: 1290, column: 9, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1722, file: !3, line: 1290, column: 9)
!1722 = distinct !DILexicalBlock(scope: !1714, file: !3, line: 1290, column: 9)
!1723 = !DILocation(line: 1285, column: 54, scope: !1703)
!1724 = !DILocation(line: 1285, column: 5, scope: !1703)
!1725 = distinct !{!1725, !1704, !1726}
!1726 = !DILocation(line: 1292, column: 5, scope: !1698)
!1727 = !DILocation(line: 1294, column: 1, scope: !1682)
!1728 = !DILocation(line: 65, column: 11, scope: !285)
!1729 = !DILocation(line: 62, column: 16, scope: !285)
!1730 = !DILocation(line: 66, column: 8, scope: !285)
!1731 = !DILocation(line: 63, column: 8, scope: !285)
!1732 = !DILocation(line: 67, column: 2, scope: !285)
!1733 = !DILocation(line: 69, column: 2, scope: !285)
