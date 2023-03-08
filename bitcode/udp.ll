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
@ip_addr_any = external dso_local local_unnamed_addr constant %struct.ip_addr, align 4
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
  br i1 %4, label %11, label %5, !dbg !278

; <label>:5:                                      ; preds = %0
  %6 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !279, !srcloc !275
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !282
  %7 = icmp ugt i64 %6, ptrtoint ([0 x i8]* @_end to i64), !dbg !278
  br i1 %7, label %11, label %8, !dbg !283

; <label>:8:                                      ; preds = %5
  %9 = tail call i64 @ukplat_lcpu_save_irqf() #7, !dbg !284
  %10 = tail call i32 @uk_swrand_randr_r(%struct.uk_swrand* nonnull @uk_swrand_def) #7, !dbg !293
  tail call void @ukplat_lcpu_restore_irqf(i64 %9) #7, !dbg !295
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !296
  store i32 %10, i32* %1, align 4, !dbg !298, !tbaa !299
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
  br i1 %3, label %4, label %5, !dbg !424

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0)) #8, !dbg !425
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !428
  tail call void @ukplat_terminate(i32 3) #9, !dbg !428
  unreachable, !dbg !428

; <label>:5:                                      ; preds = %2
  %6 = icmp eq %struct.netif* %1, null, !dbg !432
  br i1 %6, label %7, label %8, !dbg !435

; <label>:7:                                      ; preds = %5
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !436
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !439
  tail call void @ukplat_terminate(i32 3) #9, !dbg !439
  unreachable, !dbg !439

; <label>:8:                                      ; preds = %5
  %9 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 5, i32 1), align 2, !dbg !443, !tbaa !444
  %10 = add i16 %9, 1, !dbg !443
  store i16 %10, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 5, i32 1), align 2, !dbg !443, !tbaa !444
  %11 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 3, !dbg !450
  %12 = load i16, i16* %11, align 2, !dbg !450, !tbaa !452
  %13 = icmp ult i16 %12, 8, !dbg !455
  br i1 %13, label %14, label %20, !dbg !456

; <label>:14:                                     ; preds = %8
  %15 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 5, i32 5), align 2, !dbg !457, !tbaa !459
  %16 = add i16 %15, 1, !dbg !457
  store i16 %16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 5, i32 5), align 2, !dbg !457, !tbaa !459
  %17 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 5, i32 3), align 2, !dbg !460, !tbaa !461
  %18 = add i16 %17, 1, !dbg !460
  store i16 %18, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 5, i32 3), align 2, !dbg !460, !tbaa !461
  %19 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !462
  br label %333, !dbg !463

; <label>:20:                                     ; preds = %8
  %21 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 1, !dbg !464
  %22 = bitcast i8** %21 to %struct.udp_hdr**, !dbg !464
  %23 = load %struct.udp_hdr*, %struct.udp_hdr** %22, align 8, !dbg !464, !tbaa !465
  %24 = load i8, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 1), align 4, !dbg !467, !tbaa !468
  %25 = icmp eq i8 %24, 6, !dbg !467
  br i1 %25, label %30, label %26, !dbg !467

; <label>:26:                                     ; preds = %20
  %27 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !467, !tbaa !471
  %28 = load %struct.netif*, %struct.netif** getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 0), align 8, !dbg !467, !tbaa !472
  %29 = tail call zeroext i8 @ip4_addr_isbroadcast_u32(i32 %27, %struct.netif* %28) #7, !dbg !467
  br label %30, !dbg !467

; <label>:30:                                     ; preds = %20, %26
  %31 = phi i8 [ %29, %26 ], [ 0, %20 ], !dbg !467
  %32 = getelementptr inbounds %struct.udp_hdr, %struct.udp_hdr* %23, i64 0, i32 0, !dbg !474
  %33 = load i16, i16* %32, align 1, !dbg !474, !tbaa !475
  %34 = tail call zeroext i16 @lwip_htons(i16 zeroext %33) #7, !dbg !474
  %35 = getelementptr inbounds %struct.udp_hdr, %struct.udp_hdr* %23, i64 0, i32 1, !dbg !478
  %36 = load i16, i16* %35, align 1, !dbg !478, !tbaa !479
  %37 = tail call zeroext i16 @lwip_htons(i16 zeroext %36) #7, !dbg !478
  %38 = load %struct.udp_pcb*, %struct.udp_pcb** @udp_pcbs, align 8, !dbg !484, !tbaa !487
  %39 = icmp eq %struct.udp_pcb* %38, null, !dbg !488
  %40 = ptrtoint %struct.udp_pcb* %38 to i64, !dbg !489
  br i1 %39, label %251, label %41, !dbg !489

; <label>:41:                                     ; preds = %30
  %42 = icmp eq i8 %31, 0
  %43 = icmp ne i8 %31, 0
  %44 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 2, i32 0, i32 0, i32 0, i64 0
  %45 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 1, i32 0, i32 0, i32 0, i64 0
  br label %46, !dbg !489

; <label>:46:                                     ; preds = %41, %244
  %47 = phi %struct.udp_pcb* [ %38, %41 ], [ %247, %244 ]
  %48 = phi %struct.udp_pcb* [ null, %41 ], [ %47, %244 ]
  %49 = phi %struct.udp_pcb* [ null, %41 ], [ %245, %244 ]
  %50 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %47, i64 0, i32 8, !dbg !490
  %51 = load i16, i16* %50, align 2, !dbg !490, !tbaa !493
  %52 = icmp eq i16 %51, %37, !dbg !496
  br i1 %52, label %53, label %244, !dbg !497

; <label>:53:                                     ; preds = %46
  %54 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %47, i64 0, i32 2, !dbg !509
  %55 = load i8, i8* %54, align 8, !dbg !509, !tbaa !511
  %56 = icmp eq i8 %55, 0, !dbg !512
  br i1 %56, label %63, label %57, !dbg !513

; <label>:57:                                     ; preds = %53
  %58 = load %struct.netif*, %struct.netif** getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 1), align 8, !dbg !514, !tbaa !515
  %59 = getelementptr inbounds %struct.netif, %struct.netif* %58, i64 0, i32 23, !dbg !514
  %60 = load i8, i8* %59, align 8, !dbg !514, !tbaa !516
  %61 = add i8 %60, 1, !dbg !514
  %62 = icmp eq i8 %55, %61, !dbg !518
  br i1 %62, label %63, label %128, !dbg !519

; <label>:63:                                     ; preds = %57, %53
  %64 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %47, i64 0, i32 0, i32 1, !dbg !520
  %65 = load i8, i8* %64, align 4, !dbg !520, !tbaa !522
  %66 = icmp eq i8 %65, 46, !dbg !520
  br i1 %66, label %129, label %67, !dbg !523

; <label>:67:                                     ; preds = %63
  %68 = load i8, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 1), align 4, !dbg !524, !tbaa !468
  %69 = icmp eq i8 %65, %68, !dbg !524
  br i1 %69, label %70, label %128, !dbg !526

; <label>:70:                                     ; preds = %67
  br i1 %42, label %83, label %71, !dbg !527

; <label>:71:                                     ; preds = %70
  %72 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %47, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !529
  %73 = load i32, i32* %72, align 8, !dbg !529, !tbaa !471
  %74 = icmp eq i32 %73, 0, !dbg !529
  %75 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !534
  %76 = icmp eq i32 %75, -1, !dbg !535
  %77 = or i1 %74, %76, !dbg !536
  br i1 %77, label %129, label %78, !dbg !536

; <label>:78:                                     ; preds = %71
  %79 = load i32, i32* %44, align 8, !dbg !537, !tbaa !471
  %80 = xor i32 %75, %73, !dbg !537
  %81 = and i32 %79, %80, !dbg !537
  %82 = icmp eq i32 %81, 0, !dbg !537
  br i1 %82, label %129, label %128, !dbg !538

; <label>:83:                                     ; preds = %70
  %84 = icmp eq i8 %65, 6, !dbg !539
  %85 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %47, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !539
  %86 = load i32, i32* %85, align 8, !dbg !539, !tbaa !471
  %87 = icmp eq i32 %86, 0, !dbg !539
  br i1 %84, label %88, label %101, !dbg !541

; <label>:88:                                     ; preds = %83
  br i1 %87, label %89, label %105, !dbg !539

; <label>:89:                                     ; preds = %88
  %90 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %47, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !539
  %91 = load i32, i32* %90, align 4, !dbg !539, !tbaa !471
  %92 = icmp eq i32 %91, 0, !dbg !539
  br i1 %92, label %93, label %105, !dbg !539

; <label>:93:                                     ; preds = %89
  %94 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %47, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !539
  %95 = load i32, i32* %94, align 8, !dbg !539, !tbaa !471
  %96 = icmp eq i32 %95, 0, !dbg !539
  br i1 %96, label %97, label %105, !dbg !539

; <label>:97:                                     ; preds = %93
  %98 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %47, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !539
  %99 = load i32, i32* %98, align 4, !dbg !539, !tbaa !471
  %100 = icmp eq i32 %99, 0, !dbg !539
  br i1 %100, label %129, label %105, !dbg !539

; <label>:101:                                    ; preds = %83
  %102 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !542
  %103 = icmp eq i32 %86, %102, !dbg !542
  %104 = or i1 %87, %103, !dbg !541
  br i1 %104, label %129, label %128, !dbg !541

; <label>:105:                                    ; preds = %97, %93, %89, %88
  %106 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !542, !tbaa !471
  %107 = icmp eq i32 %86, %106, !dbg !542
  br i1 %107, label %108, label %128, !dbg !542

; <label>:108:                                    ; preds = %105
  %109 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %47, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !542
  %110 = load i32, i32* %109, align 4, !dbg !542, !tbaa !471
  %111 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 1), align 4, !dbg !542, !tbaa !471
  %112 = icmp eq i32 %110, %111, !dbg !542
  br i1 %112, label %113, label %128, !dbg !542

; <label>:113:                                    ; preds = %108
  %114 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %47, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !542
  %115 = load i32, i32* %114, align 8, !dbg !542, !tbaa !471
  %116 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 2), align 4, !dbg !542, !tbaa !471
  %117 = icmp eq i32 %115, %116, !dbg !542
  br i1 %117, label %118, label %128, !dbg !542

; <label>:118:                                    ; preds = %113
  %119 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %47, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !542
  %120 = load i32, i32* %119, align 4, !dbg !542, !tbaa !471
  %121 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 3), align 4, !dbg !542, !tbaa !471
  %122 = icmp eq i32 %120, %121, !dbg !542
  br i1 %122, label %123, label %128, !dbg !542

; <label>:123:                                    ; preds = %118
  %124 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %47, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !542
  %125 = load i8, i8* %124, align 8, !dbg !542, !tbaa !471
  %126 = load i8, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 1), align 4, !dbg !542, !tbaa !471
  %127 = icmp eq i8 %125, %126, !dbg !542
  br i1 %127, label %129, label %128, !dbg !542

; <label>:128:                                    ; preds = %67, %78, %101, %105, %108, %113, %118, %123, %57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !543
  br label %244

; <label>:129:                                    ; preds = %63, %78, %71, %123, %101, %97
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !543
  %130 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %47, i64 0, i32 7, !dbg !544
  %131 = load i8, i8* %130, align 8, !dbg !544, !tbaa !547
  %132 = and i8 %131, 4, !dbg !548
  %133 = icmp eq i8 %132, 0, !dbg !549
  br i1 %133, label %134, label %179, !dbg !550

; <label>:134:                                    ; preds = %129
  %135 = icmp eq %struct.udp_pcb* %49, null, !dbg !551
  br i1 %135, label %179, label %136, !dbg !554

; <label>:136:                                    ; preds = %134
  %137 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !555
  %138 = icmp eq i32 %137, -1, !dbg !557
  %139 = and i1 %43, %138, !dbg !558
  br i1 %139, label %140, label %159, !dbg !558

; <label>:140:                                    ; preds = %136
  %141 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %49, i64 0, i32 0, i32 1, !dbg !559
  %142 = load i8, i8* %141, align 4, !dbg !559, !tbaa !522
  %143 = icmp eq i8 %142, 0, !dbg !559
  br i1 %143, label %144, label %151, !dbg !562

; <label>:144:                                    ; preds = %140
  %145 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %49, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !563
  %146 = load i32, i32* %145, align 8, !dbg !563, !tbaa !471
  %147 = load i32, i32* %45, align 8, !dbg !563, !tbaa !471
  %148 = icmp ne i32 %146, %147, !dbg !563
  %149 = icmp eq i8 %65, 0, !dbg !564
  %150 = and i1 %148, %149, !dbg !567
  br i1 %150, label %153, label %179, !dbg !567

; <label>:151:                                    ; preds = %140
  %152 = icmp eq i8 %65, 0, !dbg !564
  br i1 %152, label %153, label %179, !dbg !568

; <label>:153:                                    ; preds = %144, %151
  %154 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %47, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !569
  %155 = load i32, i32* %154, align 8, !dbg !569, !tbaa !471
  %156 = load i32, i32* %45, align 8, !dbg !569, !tbaa !471
  %157 = icmp eq i32 %155, %156, !dbg !569
  %158 = select i1 %157, %struct.udp_pcb* %47, %struct.udp_pcb* %49, !dbg !570
  br label %179, !dbg !570

; <label>:159:                                    ; preds = %136
  %160 = icmp eq i8 %65, 6, !dbg !571
  %161 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %47, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !571
  %162 = load i32, i32* %161, align 8, !dbg !571, !tbaa !471
  %163 = icmp eq i32 %162, 0, !dbg !571
  br i1 %160, label %164, label %177, !dbg !573

; <label>:164:                                    ; preds = %159
  br i1 %163, label %165, label %178, !dbg !571

; <label>:165:                                    ; preds = %164
  %166 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %47, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !571
  %167 = load i32, i32* %166, align 4, !dbg !571, !tbaa !471
  %168 = icmp eq i32 %167, 0, !dbg !571
  br i1 %168, label %169, label %178, !dbg !571

; <label>:169:                                    ; preds = %165
  %170 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %47, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !571
  %171 = load i32, i32* %170, align 8, !dbg !571, !tbaa !471
  %172 = icmp eq i32 %171, 0, !dbg !571
  br i1 %172, label %173, label %178, !dbg !571

; <label>:173:                                    ; preds = %169
  %174 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %47, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !571
  %175 = load i32, i32* %174, align 4, !dbg !571, !tbaa !471
  %176 = icmp eq i32 %175, 0, !dbg !571
  br i1 %176, label %179, label %178, !dbg !571

; <label>:177:                                    ; preds = %159
  br i1 %163, label %179, label %178, !dbg !573

; <label>:178:                                    ; preds = %177, %173, %169, %165, %164
  br label %179, !dbg !574

; <label>:179:                                    ; preds = %144, %153, %134, %173, %177, %178, %151, %129
  %180 = phi %struct.udp_pcb* [ %49, %144 ], [ %49, %151 ], [ %49, %173 ], [ %47, %178 ], [ %49, %177 ], [ %49, %129 ], [ %47, %134 ], [ %158, %153 ], !dbg !576
  %181 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %47, i64 0, i32 9, !dbg !577
  %182 = load i16, i16* %181, align 4, !dbg !577, !tbaa !579
  %183 = icmp eq i16 %182, %34, !dbg !580
  br i1 %183, label %184, label %244, !dbg !581

; <label>:184:                                    ; preds = %179
  %185 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %47, i64 0, i32 1, i32 1, !dbg !582
  %186 = load i8, i8* %185, align 4, !dbg !582, !tbaa !583
  %187 = icmp eq i8 %186, 6, !dbg !582
  %188 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %47, i64 0, i32 1, i32 0, i32 0, i32 0, i64 0, !dbg !582
  %189 = load i32, i32* %188, align 8, !dbg !582, !tbaa !471
  %190 = icmp eq i32 %189, 0, !dbg !582
  br i1 %187, label %191, label %204, !dbg !584

; <label>:191:                                    ; preds = %184
  br i1 %190, label %192, label %205, !dbg !582

; <label>:192:                                    ; preds = %191
  %193 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %47, i64 0, i32 1, i32 0, i32 0, i32 0, i64 1, !dbg !582
  %194 = load i32, i32* %193, align 4, !dbg !582, !tbaa !471
  %195 = icmp eq i32 %194, 0, !dbg !582
  br i1 %195, label %196, label %205, !dbg !582

; <label>:196:                                    ; preds = %192
  %197 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %47, i64 0, i32 1, i32 0, i32 0, i32 0, i64 2, !dbg !582
  %198 = load i32, i32* %197, align 8, !dbg !582, !tbaa !471
  %199 = icmp eq i32 %198, 0, !dbg !582
  br i1 %199, label %200, label %205, !dbg !582

; <label>:200:                                    ; preds = %196
  %201 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %47, i64 0, i32 1, i32 0, i32 0, i32 0, i64 3, !dbg !582
  %202 = load i32, i32* %201, align 4, !dbg !582, !tbaa !471
  %203 = icmp eq i32 %202, 0, !dbg !582
  br i1 %203, label %233, label %205, !dbg !582

; <label>:204:                                    ; preds = %184
  br i1 %190, label %233, label %205, !dbg !584

; <label>:205:                                    ; preds = %204, %200, %196, %192, %191
  %206 = load i8, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 1), align 4, !dbg !585, !tbaa !586
  %207 = icmp eq i8 %186, %206, !dbg !585
  br i1 %207, label %208, label %244, !dbg !587

; <label>:208:                                    ; preds = %205
  %209 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !585, !tbaa !471
  %210 = icmp eq i32 %189, %209, !dbg !585
  br i1 %187, label %211, label %232, !dbg !587

; <label>:211:                                    ; preds = %208
  br i1 %210, label %212, label %244, !dbg !585

; <label>:212:                                    ; preds = %211
  %213 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %47, i64 0, i32 1, i32 0, i32 0, i32 0, i64 1, !dbg !585
  %214 = load i32, i32* %213, align 4, !dbg !585, !tbaa !471
  %215 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 1), align 4, !dbg !585, !tbaa !471
  %216 = icmp eq i32 %214, %215, !dbg !585
  br i1 %216, label %217, label %244, !dbg !585

; <label>:217:                                    ; preds = %212
  %218 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %47, i64 0, i32 1, i32 0, i32 0, i32 0, i64 2, !dbg !585
  %219 = load i32, i32* %218, align 8, !dbg !585, !tbaa !471
  %220 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 2), align 4, !dbg !585, !tbaa !471
  %221 = icmp eq i32 %219, %220, !dbg !585
  br i1 %221, label %222, label %244, !dbg !585

; <label>:222:                                    ; preds = %217
  %223 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %47, i64 0, i32 1, i32 0, i32 0, i32 0, i64 3, !dbg !585
  %224 = load i32, i32* %223, align 4, !dbg !585, !tbaa !471
  %225 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 3), align 4, !dbg !585, !tbaa !471
  %226 = icmp eq i32 %224, %225, !dbg !585
  br i1 %226, label %227, label %244, !dbg !585

; <label>:227:                                    ; preds = %222
  %228 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %47, i64 0, i32 1, i32 0, i32 0, i32 1, !dbg !585
  %229 = load i8, i8* %228, align 8, !dbg !585, !tbaa !471
  %230 = load i8, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 1), align 4, !dbg !585, !tbaa !471
  %231 = icmp eq i8 %229, %230, !dbg !585
  br i1 %231, label %233, label %244, !dbg !585

; <label>:232:                                    ; preds = %208
  br i1 %210, label %233, label %244, !dbg !587

; <label>:233:                                    ; preds = %232, %227, %204, %200
  %234 = icmp eq %struct.udp_pcb* %48, null, !dbg !588
  br i1 %234, label %241, label %235, !dbg !591

; <label>:235:                                    ; preds = %233
  %236 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %47, i64 0, i32 6, !dbg !592
  %237 = bitcast %struct.udp_pcb** %236 to i64*, !dbg !592
  %238 = load i64, i64* %237, align 8, !dbg !592, !tbaa !594
  %239 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %48, i64 0, i32 6, !dbg !595
  %240 = bitcast %struct.udp_pcb** %239 to i64*, !dbg !596
  store i64 %238, i64* %240, align 8, !dbg !596, !tbaa !594
  store i64 %40, i64* %237, align 8, !dbg !597, !tbaa !594
  store %struct.udp_pcb* %47, %struct.udp_pcb** @udp_pcbs, align 8, !dbg !598, !tbaa !487
  br label %269, !dbg !599

; <label>:241:                                    ; preds = %233
  %242 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 5, i32 11), align 2, !dbg !600, !tbaa !602
  %243 = add i16 %242, 1, !dbg !600
  store i16 %243, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 5, i32 11), align 2, !dbg !600, !tbaa !602
  br label %269

; <label>:244:                                    ; preds = %128, %205, %179, %211, %212, %217, %222, %227, %232, %46
  %245 = phi %struct.udp_pcb* [ %180, %205 ], [ %180, %227 ], [ %180, %222 ], [ %180, %217 ], [ %180, %212 ], [ %180, %211 ], [ %180, %232 ], [ %180, %179 ], [ %49, %128 ], [ %49, %46 ], !dbg !576
  %246 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %47, i64 0, i32 6, !dbg !603
  %247 = load %struct.udp_pcb*, %struct.udp_pcb** %246, align 8, !dbg !484, !tbaa !487
  %248 = icmp eq %struct.udp_pcb* %247, null, !dbg !488
  br i1 %248, label %249, label %46, !dbg !489, !llvm.loop !604

; <label>:249:                                    ; preds = %244
  %250 = icmp eq %struct.udp_pcb* %245, null, !dbg !606
  br i1 %250, label %251, label %269, !dbg !608

; <label>:251:                                    ; preds = %249, %30
  %252 = load %struct.ip6_hdr*, %struct.ip6_hdr** getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 3), align 8, !dbg !609, !tbaa !612
  %253 = icmp eq %struct.ip6_hdr* %252, null, !dbg !609
  br i1 %253, label %260, label %254, !dbg !613

; <label>:254:                                    ; preds = %251
  %255 = tail call signext i8 @netif_get_ip6_addr_match(%struct.netif* nonnull %1, %struct.ip6_addr* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0)) #7, !dbg !614
  %256 = lshr i8 %255, 7, !dbg !614
  %257 = xor i8 %256, 1, !dbg !614
  %258 = load %struct.ip6_hdr*, %struct.ip6_hdr** getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 3), align 8, !dbg !616, !tbaa !612
  %259 = icmp eq %struct.ip6_hdr* %258, null, !dbg !616
  br i1 %259, label %260, label %266, !dbg !618

; <label>:260:                                    ; preds = %251, %254
  %261 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 1, i32 0, i32 0, i32 0, i64 0, !dbg !619
  %262 = load i32, i32* %261, align 8, !dbg !619, !tbaa !471
  %263 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !619, !tbaa !471
  %264 = icmp eq i32 %262, %263, !dbg !619
  %265 = zext i1 %264 to i8, !dbg !619
  br label %266, !dbg !621

; <label>:266:                                    ; preds = %254, %260
  %267 = phi i8 [ %257, %254 ], [ %265, %260 ], !dbg !622
  %268 = icmp eq i8 %267, 0, !dbg !623
  br i1 %268, label %325, label %269, !dbg !625

; <label>:269:                                    ; preds = %249, %241, %235, %266
  %270 = phi i1 [ true, %249 ], [ false, %266 ], [ true, %235 ], [ true, %241 ]
  %271 = phi %struct.udp_pcb* [ %245, %249 ], [ null, %266 ], [ %47, %235 ], [ %47, %241 ]
  %272 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 16, !dbg !626
  %273 = load i16, i16* %272, align 8, !dbg !626, !tbaa !629
  %274 = and i16 %273, 512, !dbg !626
  %275 = icmp eq i16 %274, 0, !dbg !626
  br i1 %275, label %285, label %276, !dbg !630

; <label>:276:                                    ; preds = %269
  %277 = getelementptr inbounds %struct.udp_hdr, %struct.udp_hdr* %23, i64 0, i32 3, !dbg !631
  %278 = load i16, i16* %277, align 1, !dbg !631, !tbaa !635
  %279 = icmp eq i16 %278, 0, !dbg !636
  br i1 %279, label %285, label %280, !dbg !637

; <label>:280:                                    ; preds = %276
  %281 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 2, !dbg !638
  %282 = load i16, i16* %281, align 8, !dbg !638, !tbaa !641
  %283 = tail call zeroext i16 @ip_chksum_pseudo(%struct.pbuf* nonnull %0, i8 zeroext 17, i16 zeroext %282, %struct.ip_addr* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5), %struct.ip_addr* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6)) #7, !dbg !642
  %284 = icmp eq i16 %283, 0, !dbg !643
  br i1 %284, label %285, label %327, !dbg !644

; <label>:285:                                    ; preds = %280, %276, %269
  %286 = tail call zeroext i8 @pbuf_remove_header(%struct.pbuf* nonnull %0, i64 8) #7, !dbg !645
  %287 = icmp eq i8 %286, 0, !dbg !645
  br i1 %287, label %289, label %288, !dbg !647

; <label>:288:                                    ; preds = %285
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !648
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !654
  tail call void @ukplat_terminate(i32 3) #9, !dbg !654
  unreachable, !dbg !654

; <label>:289:                                    ; preds = %285
  br i1 %270, label %290, label %299, !dbg !658

; <label>:290:                                    ; preds = %289
  %291 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %271, i64 0, i32 13, !dbg !659
  %292 = load void (i8*, %struct.udp_pcb*, %struct.pbuf*, %struct.ip_addr*, i16)*, void (i8*, %struct.udp_pcb*, %struct.pbuf*, %struct.ip_addr*, i16)** %291, align 8, !dbg !659, !tbaa !663
  %293 = icmp eq void (i8*, %struct.udp_pcb*, %struct.pbuf*, %struct.ip_addr*, i16)* %292, null, !dbg !664
  br i1 %293, label %297, label %294, !dbg !665

; <label>:294:                                    ; preds = %290
  %295 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %271, i64 0, i32 14, !dbg !666
  %296 = load i8*, i8** %295, align 8, !dbg !666, !tbaa !668
  tail call void %292(i8* %296, %struct.udp_pcb* nonnull %271, %struct.pbuf* nonnull %0, %struct.ip_addr* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5), i16 zeroext %34) #7, !dbg !669
  br label %333, !dbg !670

; <label>:297:                                    ; preds = %290
  %298 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !671
  br label %333, !dbg !673

; <label>:299:                                    ; preds = %289
  %300 = icmp eq i8 %31, 0, !dbg !674
  br i1 %300, label %301, label %319, !dbg !677

; <label>:301:                                    ; preds = %299
  %302 = load i8, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 1), align 4, !dbg !678, !tbaa !468
  %303 = icmp eq i8 %302, 6, !dbg !678
  %304 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !678, !tbaa !471
  br i1 %303, label %305, label %308, !dbg !679

; <label>:305:                                    ; preds = %301
  %306 = and i32 %304, 255, !dbg !678
  %307 = icmp eq i32 %306, 255, !dbg !678
  br i1 %307, label %319, label %311, !dbg !678

; <label>:308:                                    ; preds = %301
  %309 = and i32 %304, 240, !dbg !678
  %310 = icmp eq i32 %309, 224, !dbg !678
  br i1 %310, label %319, label %311, !dbg !679

; <label>:311:                                    ; preds = %308, %305
  %312 = load i16, i16* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 4), align 8, !dbg !680, !tbaa !682
  %313 = add i16 %312, 8, !dbg !683
  %314 = tail call zeroext i8 @pbuf_header_force(%struct.pbuf* nonnull %0, i16 signext %313) #7, !dbg !684
  %315 = load %struct.ip6_hdr*, %struct.ip6_hdr** getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 3), align 8, !dbg !685, !tbaa !612
  %316 = icmp eq %struct.ip6_hdr* %315, null, !dbg !685
  br i1 %316, label %318, label %317, !dbg !685

; <label>:317:                                    ; preds = %311
  tail call void @icmp6_dest_unreach(%struct.pbuf* nonnull %0, i32 4) #7, !dbg !685
  br label %319, !dbg !685

; <label>:318:                                    ; preds = %311
  tail call void @icmp_dest_unreach(%struct.pbuf* nonnull %0, i32 3) #7, !dbg !685
  br label %319, !dbg !685

; <label>:319:                                    ; preds = %299, %317, %318, %308, %305
  %320 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 5, i32 8), align 2, !dbg !686, !tbaa !687
  %321 = add i16 %320, 1, !dbg !686
  store i16 %321, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 5, i32 8), align 2, !dbg !686, !tbaa !687
  %322 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 5, i32 3), align 2, !dbg !688, !tbaa !461
  %323 = add i16 %322, 1, !dbg !688
  store i16 %323, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 5, i32 3), align 2, !dbg !688, !tbaa !461
  %324 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !689
  br label %333

; <label>:325:                                    ; preds = %266
  %326 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !690
  br label %333

; <label>:327:                                    ; preds = %280
  %328 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 5, i32 4), align 2, !dbg !692, !tbaa !693
  %329 = add i16 %328, 1, !dbg !692
  store i16 %329, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 5, i32 4), align 2, !dbg !692, !tbaa !693
  %330 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 5, i32 3), align 2, !dbg !694, !tbaa !461
  %331 = add i16 %330, 1, !dbg !694
  store i16 %331, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 5, i32 3), align 2, !dbg !694, !tbaa !461
  %332 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !695
  br label %333, !dbg !696

; <label>:333:                                    ; preds = %14, %297, %294, %319, %325, %327
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !696
  ret void, !dbg !696
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8*, ...) unnamed_addr #3 !dbg !210 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !698
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #6, !dbg !698
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !700
  call void @llvm.va_start(i8* nonnull %3), !dbg !700
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @uk_pr_crit.__str.26, i64 0, i64 0), i32 198, i8* %0, %struct.__va_list_tag* nonnull %4) #7, !dbg !701
  call void @llvm.va_end(i8* nonnull %3), !dbg !704
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #6, !dbg !705
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !705
  ret void, !dbg !705
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
define dso_local signext i8 @udp_send(%struct.udp_pcb*, %struct.pbuf*) local_unnamed_addr #0 !dbg !706 {
  %3 = icmp eq %struct.udp_pcb* %0, null, !dbg !714
  br i1 %3, label %4, label %5, !dbg !717

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !718
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !721
  tail call void @ukplat_terminate(i32 3) #9, !dbg !721
  unreachable, !dbg !721

; <label>:5:                                      ; preds = %2
  %6 = icmp eq %struct.pbuf* %1, null, !dbg !725
  br i1 %6, label %7, label %8, !dbg !728

; <label>:7:                                      ; preds = %5
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0)) #8, !dbg !729
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !732
  tail call void @ukplat_terminate(i32 3) #9, !dbg !732
  unreachable, !dbg !732

; <label>:8:                                      ; preds = %5
  %9 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 1, !dbg !736
  %10 = load i8, i8* %9, align 4, !dbg !736, !tbaa !583
  %11 = icmp eq i8 %10, 46, !dbg !736
  br i1 %11, label %17, label %12, !dbg !738

; <label>:12:                                     ; preds = %8
  %13 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, !dbg !736
  %14 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 9, !dbg !739
  %15 = load i16, i16* %14, align 4, !dbg !739, !tbaa !579
  %16 = tail call signext i8 @udp_sendto(%struct.udp_pcb* nonnull %0, %struct.pbuf* nonnull %1, %struct.ip_addr* nonnull %13, i16 zeroext %15) #8, !dbg !740
  br label %17, !dbg !741

; <label>:17:                                     ; preds = %8, %12
  %18 = phi i8 [ %16, %12 ], [ -6, %8 ], !dbg !742
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !743
  ret i8 %18, !dbg !743
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @udp_sendto(%struct.udp_pcb*, %struct.pbuf*, %struct.ip_addr*, i16 zeroext) local_unnamed_addr #0 !dbg !744 {
  %5 = icmp eq %struct.udp_pcb* %0, null, !dbg !757
  br i1 %5, label %6, label %7, !dbg !760

; <label>:6:                                      ; preds = %4
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0)) #8, !dbg !761
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !764
  tail call void @ukplat_terminate(i32 3) #9, !dbg !764
  unreachable, !dbg !764

; <label>:7:                                      ; preds = %4
  %8 = icmp eq %struct.pbuf* %1, null, !dbg !768
  br i1 %8, label %9, label %10, !dbg !771

; <label>:9:                                      ; preds = %7
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0)) #8, !dbg !772
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !775
  tail call void @ukplat_terminate(i32 3) #9, !dbg !775
  unreachable, !dbg !775

; <label>:10:                                     ; preds = %7
  %11 = icmp eq %struct.ip_addr* %2, null, !dbg !779
  br i1 %11, label %12, label %13, !dbg !782

; <label>:12:                                     ; preds = %10
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0)) #8, !dbg !783
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !786
  tail call void @ukplat_terminate(i32 3) #9, !dbg !786
  unreachable, !dbg !786

; <label>:13:                                     ; preds = %10
  %14 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, i32 1, !dbg !790
  %15 = load i8, i8* %14, align 4, !dbg !790, !tbaa !522
  %16 = icmp eq i8 %15, 46, !dbg !790
  br i1 %16, label %21, label %17, !dbg !790

; <label>:17:                                     ; preds = %13
  %18 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 1, !dbg !790
  %19 = load i8, i8* %18, align 4, !dbg !790, !tbaa !792
  %20 = icmp eq i8 %15, %19, !dbg !790
  br i1 %20, label %21, label %81, !dbg !793

; <label>:21:                                     ; preds = %17, %13
  %22 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 2, !dbg !794
  %23 = load i8, i8* %22, align 8, !dbg !794, !tbaa !511
  %24 = icmp eq i8 %23, 0, !dbg !796
  br i1 %24, label %27, label %25, !dbg !797

; <label>:25:                                     ; preds = %21
  %26 = tail call %struct.netif* @netif_get_by_index(i8 zeroext %23) #7, !dbg !798
  br label %72, !dbg !801

; <label>:27:                                     ; preds = %21
  %28 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 1, !dbg !802
  %29 = load i8, i8* %28, align 4, !dbg !802, !tbaa !792
  %30 = icmp eq i8 %29, 6, !dbg !802
  %31 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !802
  %32 = load i32, i32* %31, align 4, !dbg !802, !tbaa !471
  br i1 %30, label %33, label %36, !dbg !805

; <label>:33:                                     ; preds = %27
  %34 = and i32 %32, 255, !dbg !802
  %35 = icmp eq i32 %34, 255, !dbg !802
  br i1 %35, label %39, label %65, !dbg !802

; <label>:36:                                     ; preds = %27
  %37 = and i32 %32, 240, !dbg !802
  %38 = icmp eq i32 %37, 224, !dbg !802
  br i1 %38, label %39, label %69, !dbg !805

; <label>:39:                                     ; preds = %36, %33
  %40 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 11, !dbg !806
  %41 = load i8, i8* %40, align 4, !dbg !806, !tbaa !809
  %42 = icmp eq i8 %41, 0, !dbg !810
  br i1 %42, label %45, label %43, !dbg !811

; <label>:43:                                     ; preds = %39
  %44 = tail call %struct.netif* @netif_get_by_index(i8 zeroext %41) #7, !dbg !812
  br label %57, !dbg !814

; <label>:45:                                     ; preds = %39
  %46 = icmp eq i8 %29, 0, !dbg !815
  br i1 %46, label %47, label %62, !dbg !817

; <label>:47:                                     ; preds = %45
  %48 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 10, !dbg !818
  %49 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %48, i64 0, i32 0, !dbg !818
  %50 = load i32, i32* %49, align 8, !dbg !818, !tbaa !821
  %51 = icmp eq i32 %50, 0, !dbg !818
  %52 = load i32, i32* getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip_addr_broadcast, i64 0, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !822
  %53 = icmp eq i32 %50, %52, !dbg !822
  %54 = or i1 %51, %53, !dbg !823
  br i1 %54, label %69, label %55, !dbg !823

; <label>:55:                                     ; preds = %47
  %56 = tail call %struct.netif* @ip4_route(%struct.ip4_addr* nonnull %48) #7, !dbg !824
  br label %57, !dbg !826

; <label>:57:                                     ; preds = %43, %55
  %58 = phi %struct.netif* [ %44, %43 ], [ %56, %55 ], !dbg !827
  %59 = icmp eq %struct.netif* %58, null, !dbg !828
  br i1 %59, label %60, label %78, !dbg !830

; <label>:60:                                     ; preds = %57
  %61 = load i8, i8* %28, align 4, !dbg !831, !tbaa !792
  br label %62, !dbg !830

; <label>:62:                                     ; preds = %60, %45
  %63 = phi i8 [ %61, %60 ], [ %29, %45 ], !dbg !831
  %64 = icmp eq i8 %63, 6, !dbg !831
  br i1 %64, label %65, label %69, !dbg !831

; <label>:65:                                     ; preds = %33, %62
  %66 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, i32 0, i32 0, !dbg !831
  %67 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 0, i32 0, !dbg !831
  %68 = tail call %struct.netif* @ip6_route(%struct.ip6_addr* nonnull %66, %struct.ip6_addr* nonnull %67) #7, !dbg !831
  br label %72, !dbg !831

; <label>:69:                                     ; preds = %47, %36, %62
  %70 = bitcast %struct.ip_addr* %2 to %struct.ip4_addr*, !dbg !831
  %71 = tail call %struct.netif* @ip4_route(%struct.ip4_addr* %70) #7, !dbg !831
  br label %72, !dbg !831

; <label>:72:                                     ; preds = %65, %69, %25
  %73 = phi %struct.netif* [ %26, %25 ], [ %68, %65 ], [ %71, %69 ], !dbg !833
  %74 = icmp eq %struct.netif* %73, null, !dbg !834
  br i1 %74, label %75, label %78, !dbg !836

; <label>:75:                                     ; preds = %72
  %76 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 5, i32 7), align 2, !dbg !837, !tbaa !839
  %77 = add i16 %76, 1, !dbg !837
  store i16 %77, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 5, i32 7), align 2, !dbg !837, !tbaa !839
  br label %81, !dbg !840

; <label>:78:                                     ; preds = %57, %72
  %79 = phi %struct.netif* [ %73, %72 ], [ %58, %57 ]
  %80 = tail call signext i8 @udp_sendto_if(%struct.udp_pcb* nonnull %0, %struct.pbuf* nonnull %1, %struct.ip_addr* nonnull %2, i16 zeroext %3, %struct.netif* nonnull %79) #8, !dbg !841
  br label %81, !dbg !842

; <label>:81:                                     ; preds = %17, %78, %75
  %82 = phi i8 [ -4, %75 ], [ %80, %78 ], [ -6, %17 ], !dbg !843
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !845
  ret i8 %82, !dbg !845
}

; Function Attrs: noredzone
declare dso_local %struct.netif* @netif_get_by_index(i8 zeroext) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local %struct.netif* @ip4_route(%struct.ip4_addr*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local %struct.netif* @ip6_route(%struct.ip6_addr*, %struct.ip6_addr*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local signext i8 @udp_sendto_if(%struct.udp_pcb*, %struct.pbuf*, %struct.ip_addr*, i16 zeroext, %struct.netif*) local_unnamed_addr #0 !dbg !846 {
  %6 = icmp eq %struct.udp_pcb* %0, null, !dbg !861
  br i1 %6, label %7, label %8, !dbg !864

; <label>:7:                                      ; preds = %5
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0)) #8, !dbg !865
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !868
  tail call void @ukplat_terminate(i32 3) #9, !dbg !868
  unreachable, !dbg !868

; <label>:8:                                      ; preds = %5
  %9 = icmp eq %struct.pbuf* %1, null, !dbg !872
  br i1 %9, label %10, label %11, !dbg !875

; <label>:10:                                     ; preds = %8
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0)) #8, !dbg !876
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !879
  tail call void @ukplat_terminate(i32 3) #9, !dbg !879
  unreachable, !dbg !879

; <label>:11:                                     ; preds = %8
  %12 = icmp eq %struct.ip_addr* %2, null, !dbg !883
  br i1 %12, label %13, label %14, !dbg !886

; <label>:13:                                     ; preds = %11
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0)) #8, !dbg !887
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !890
  tail call void @ukplat_terminate(i32 3) #9, !dbg !890
  unreachable, !dbg !890

; <label>:14:                                     ; preds = %11
  %15 = icmp eq %struct.netif* %4, null, !dbg !894
  br i1 %15, label %16, label %17, !dbg !897

; <label>:16:                                     ; preds = %14
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0)) #8, !dbg !898
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !901
  tail call void @ukplat_terminate(i32 3) #9, !dbg !901
  unreachable, !dbg !901

; <label>:17:                                     ; preds = %14
  %18 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, !dbg !905
  %19 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, i32 1, !dbg !905
  %20 = load i8, i8* %19, align 4, !dbg !905, !tbaa !522
  %21 = icmp eq i8 %20, 46, !dbg !905
  %22 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 1
  %23 = load i8, i8* %22, align 4, !dbg !907, !tbaa !792
  br i1 %21, label %26, label %24, !dbg !905

; <label>:24:                                     ; preds = %17
  %25 = icmp eq i8 %20, %23, !dbg !905
  br i1 %25, label %26, label %72, !dbg !908

; <label>:26:                                     ; preds = %17, %24
  %27 = phi i8 [ %20, %24 ], [ %23, %17 ], !dbg !909
  %28 = icmp eq i8 %27, 6, !dbg !909
  br i1 %28, label %29, label %56, !dbg !911

; <label>:29:                                     ; preds = %26
  %30 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, i32 0, i32 0, !dbg !912
  %31 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !912
  %32 = load i32, i32* %31, align 8, !dbg !912, !tbaa !471
  %33 = icmp eq i32 %32, 0, !dbg !912
  br i1 %33, label %34, label %46, !dbg !912

; <label>:34:                                     ; preds = %29
  %35 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !912
  %36 = load i32, i32* %35, align 4, !dbg !912, !tbaa !471
  %37 = icmp eq i32 %36, 0, !dbg !912
  br i1 %37, label %38, label %53, !dbg !912

; <label>:38:                                     ; preds = %34
  %39 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !912
  %40 = load i32, i32* %39, align 8, !dbg !912, !tbaa !471
  %41 = icmp eq i32 %40, 0, !dbg !912
  br i1 %41, label %42, label %53, !dbg !912

; <label>:42:                                     ; preds = %38
  %43 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !912
  %44 = load i32, i32* %43, align 4, !dbg !912, !tbaa !471
  %45 = icmp eq i32 %44, 0, !dbg !912
  br i1 %45, label %49, label %53, !dbg !915

; <label>:46:                                     ; preds = %29
  %47 = and i32 %32, 255, !dbg !916
  %48 = icmp eq i32 %47, 255, !dbg !916
  br i1 %48, label %49, label %53, !dbg !917

; <label>:49:                                     ; preds = %46, %42
  %50 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 0, i32 0, !dbg !918
  %51 = tail call %struct.ip_addr* @ip6_select_source_address(%struct.netif* nonnull %4, %struct.ip6_addr* nonnull %50) #7, !dbg !920
  %52 = icmp eq %struct.ip_addr* %51, null, !dbg !922
  br i1 %52, label %72, label %69, !dbg !924

; <label>:53:                                     ; preds = %34, %38, %42, %46
  %54 = tail call signext i8 @netif_get_ip6_addr_match(%struct.netif* nonnull %4, %struct.ip6_addr* nonnull %30) #7, !dbg !925
  %55 = icmp slt i8 %54, 0, !dbg !928
  br i1 %55, label %72, label %69, !dbg !929

; <label>:56:                                     ; preds = %26
  %57 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !930
  %58 = load i32, i32* %57, align 8, !dbg !930, !tbaa !471
  %59 = icmp eq i32 %58, 0, !dbg !930
  %60 = and i32 %58, 240, !dbg !932
  %61 = icmp eq i32 %60, 224, !dbg !932
  %62 = or i1 %59, %61, !dbg !933
  br i1 %62, label %63, label %65, !dbg !933

; <label>:63:                                     ; preds = %56
  %64 = getelementptr inbounds %struct.netif, %struct.netif* %4, i64 0, i32 1, !dbg !934
  br label %69, !dbg !936

; <label>:65:                                     ; preds = %56
  %66 = getelementptr inbounds %struct.netif, %struct.netif* %4, i64 0, i32 1, i32 0, i32 0, i32 0, i64 0, !dbg !937
  %67 = load i32, i32* %66, align 8, !dbg !937, !tbaa !471
  %68 = icmp eq i32 %58, %67, !dbg !937
  br i1 %68, label %69, label %72, !dbg !940

; <label>:69:                                     ; preds = %65, %53, %63, %49
  %70 = phi %struct.ip_addr* [ %51, %49 ], [ %64, %63 ], [ %18, %53 ], [ %18, %65 ], !dbg !941
  %71 = tail call signext i8 @udp_sendto_if_src(%struct.udp_pcb* nonnull %0, %struct.pbuf* nonnull %1, %struct.ip_addr* nonnull %2, i16 zeroext %3, %struct.netif* nonnull %4, %struct.ip_addr* nonnull %70) #8, !dbg !942
  br label %72, !dbg !943

; <label>:72:                                     ; preds = %65, %53, %49, %24, %69
  %73 = phi i8 [ %71, %69 ], [ -6, %24 ], [ -4, %49 ], [ -4, %53 ], [ -4, %65 ], !dbg !944
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !946
  ret i8 %73, !dbg !946
}

; Function Attrs: noredzone
declare dso_local %struct.ip_addr* @ip6_select_source_address(%struct.netif*, %struct.ip6_addr*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local signext i8 @udp_sendto_if_src(%struct.udp_pcb*, %struct.pbuf*, %struct.ip_addr*, i16 zeroext, %struct.netif*, %struct.ip_addr*) local_unnamed_addr #0 !dbg !947 {
  %7 = icmp eq %struct.udp_pcb* %0, null, !dbg !974
  br i1 %7, label %8, label %9, !dbg !977

; <label>:8:                                      ; preds = %6
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0)) #8, !dbg !978
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !981
  tail call void @ukplat_terminate(i32 3) #9, !dbg !981
  unreachable, !dbg !981

; <label>:9:                                      ; preds = %6
  %10 = icmp eq %struct.pbuf* %1, null, !dbg !985
  br i1 %10, label %11, label %12, !dbg !988

; <label>:11:                                     ; preds = %9
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0)) #8, !dbg !989
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !992
  tail call void @ukplat_terminate(i32 3) #9, !dbg !992
  unreachable, !dbg !992

; <label>:12:                                     ; preds = %9
  %13 = icmp eq %struct.ip_addr* %2, null, !dbg !996
  br i1 %13, label %14, label %15, !dbg !999

; <label>:14:                                     ; preds = %12
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0)) #8, !dbg !1000
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1003
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1003
  unreachable, !dbg !1003

; <label>:15:                                     ; preds = %12
  %16 = icmp eq %struct.ip_addr* %5, null, !dbg !1007
  br i1 %16, label %17, label %18, !dbg !1010

; <label>:17:                                     ; preds = %15
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i64 0, i64 0)) #8, !dbg !1011
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1014
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1014
  unreachable, !dbg !1014

; <label>:18:                                     ; preds = %15
  %19 = icmp eq %struct.netif* %4, null, !dbg !1018
  br i1 %19, label %20, label %21, !dbg !1021

; <label>:20:                                     ; preds = %18
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i64 0, i64 0)) #8, !dbg !1022
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1025
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1025
  unreachable, !dbg !1025

; <label>:21:                                     ; preds = %18
  %22 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, !dbg !1029
  %23 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, i32 1, !dbg !1029
  %24 = load i8, i8* %23, align 4, !dbg !1029, !tbaa !522
  %25 = icmp eq i8 %24, 46, !dbg !1029
  br i1 %25, label %34, label %26, !dbg !1029

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 1, !dbg !1029
  %28 = load i8, i8* %27, align 4, !dbg !1029, !tbaa !792
  %29 = icmp eq i8 %24, %28, !dbg !1029
  br i1 %29, label %30, label %151, !dbg !1031

; <label>:30:                                     ; preds = %26
  %31 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 1, !dbg !1032
  %32 = load i8, i8* %31, align 4, !dbg !1032, !tbaa !792
  %33 = icmp eq i8 %24, %32, !dbg !1032
  br i1 %33, label %34, label %151, !dbg !1033

; <label>:34:                                     ; preds = %21, %30
  %35 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 8, !dbg !1034
  %36 = load i16, i16* %35, align 2, !dbg !1034, !tbaa !493
  %37 = icmp eq i16 %36, 0, !dbg !1036
  br i1 %37, label %38, label %41, !dbg !1037

; <label>:38:                                     ; preds = %34
  %39 = tail call signext i8 @udp_bind(%struct.udp_pcb* nonnull %0, %struct.ip_addr* nonnull %22, i16 zeroext 0) #8, !dbg !1038
  %40 = icmp eq i8 %39, 0, !dbg !1041
  br i1 %40, label %41, label %151, !dbg !1043

; <label>:41:                                     ; preds = %38, %34
  %42 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %1, i64 0, i32 2, !dbg !1044
  %43 = load i16, i16* %42, align 8, !dbg !1044, !tbaa !641
  %44 = icmp ugt i16 %43, -9, !dbg !1046
  br i1 %44, label %151, label %45, !dbg !1047

; <label>:45:                                     ; preds = %41
  %46 = tail call zeroext i8 @pbuf_add_header(%struct.pbuf* nonnull %1, i64 8) #7, !dbg !1048
  %47 = icmp eq i8 %46, 0, !dbg !1048
  br i1 %47, label %55, label %48, !dbg !1050

; <label>:48:                                     ; preds = %45
  %49 = tail call %struct.pbuf* @pbuf_alloc(i32 54, i16 zeroext 8, i32 640) #7, !dbg !1051
  %50 = icmp eq %struct.pbuf* %49, null, !dbg !1054
  br i1 %50, label %151, label %51, !dbg !1056

; <label>:51:                                     ; preds = %48
  %52 = load i16, i16* %42, align 8, !dbg !1057, !tbaa !641
  %53 = icmp eq i16 %52, 0, !dbg !1059
  br i1 %53, label %55, label %54, !dbg !1060

; <label>:54:                                     ; preds = %51
  tail call void @pbuf_chain(%struct.pbuf* nonnull %49, %struct.pbuf* nonnull %1) #7, !dbg !1061
  br label %55, !dbg !1063

; <label>:55:                                     ; preds = %45, %51, %54
  %56 = phi %struct.pbuf* [ %49, %54 ], [ %49, %51 ], [ %1, %45 ], !dbg !1064
  %57 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %56, i64 0, i32 3, !dbg !1066
  %58 = load i16, i16* %57, align 2, !dbg !1066, !tbaa !452
  %59 = icmp ugt i16 %58, 7, !dbg !1066
  br i1 %59, label %61, label %60, !dbg !1069

; <label>:60:                                     ; preds = %55
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.19, i64 0, i64 0)) #8, !dbg !1070
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1073
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1073
  unreachable, !dbg !1073

; <label>:61:                                     ; preds = %55
  %62 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %56, i64 0, i32 1, !dbg !1077
  %63 = bitcast i8** %62 to %struct.udp_hdr**, !dbg !1077
  %64 = load %struct.udp_hdr*, %struct.udp_hdr** %63, align 8, !dbg !1077, !tbaa !465
  %65 = load i16, i16* %35, align 2, !dbg !1079, !tbaa !493
  %66 = tail call zeroext i16 @lwip_htons(i16 zeroext %65) #7, !dbg !1080
  %67 = getelementptr inbounds %struct.udp_hdr, %struct.udp_hdr* %64, i64 0, i32 0, !dbg !1081
  store i16 %66, i16* %67, align 1, !dbg !1082, !tbaa !475
  %68 = tail call zeroext i16 @lwip_htons(i16 zeroext %3) #7, !dbg !1083
  %69 = getelementptr inbounds %struct.udp_hdr, %struct.udp_hdr* %64, i64 0, i32 1, !dbg !1084
  store i16 %68, i16* %69, align 1, !dbg !1085, !tbaa !479
  %70 = getelementptr inbounds %struct.udp_hdr, %struct.udp_hdr* %64, i64 0, i32 3, !dbg !1086
  store i16 0, i16* %70, align 1, !dbg !1087, !tbaa !635
  %71 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 7, !dbg !1088
  %72 = load i8, i8* %71, align 8, !dbg !1088, !tbaa !547
  %73 = and i8 %72, 8, !dbg !1090
  %74 = icmp eq i8 %73, 0, !dbg !1091
  br i1 %74, label %91, label %75, !dbg !1092

; <label>:75:                                     ; preds = %61
  %76 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 1, !dbg !1093
  %77 = load i8, i8* %76, align 4, !dbg !1093, !tbaa !792
  %78 = icmp eq i8 %77, 6, !dbg !1093
  %79 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1093
  %80 = load i32, i32* %79, align 4, !dbg !1093, !tbaa !471
  br i1 %78, label %81, label %84, !dbg !1094

; <label>:81:                                     ; preds = %75
  %82 = and i32 %80, 255, !dbg !1093
  %83 = icmp eq i32 %82, 255, !dbg !1093
  br i1 %83, label %87, label %91, !dbg !1093

; <label>:84:                                     ; preds = %75
  %85 = and i32 %80, 240, !dbg !1093
  %86 = icmp eq i32 %85, 224, !dbg !1093
  br i1 %86, label %87, label %91, !dbg !1094

; <label>:87:                                     ; preds = %84, %81
  %88 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %56, i64 0, i32 5, !dbg !1095
  %89 = load i8, i8* %88, align 1, !dbg !1097, !tbaa !1098
  %90 = or i8 %89, 4, !dbg !1097
  store i8 %90, i8* %88, align 1, !dbg !1097, !tbaa !1098
  br label %91, !dbg !1099

; <label>:91:                                     ; preds = %61, %87, %84, %81
  %92 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %56, i64 0, i32 2, !dbg !1100
  %93 = load i16, i16* %92, align 8, !dbg !1100, !tbaa !641
  %94 = tail call zeroext i16 @lwip_htons(i16 zeroext %93) #7, !dbg !1101
  %95 = getelementptr inbounds %struct.udp_hdr, %struct.udp_hdr* %64, i64 0, i32 2, !dbg !1102
  store i16 %94, i16* %95, align 1, !dbg !1103, !tbaa !1104
  %96 = getelementptr inbounds %struct.netif, %struct.netif* %4, i64 0, i32 16, !dbg !1105
  %97 = load i16, i16* %96, align 8, !dbg !1105, !tbaa !629
  %98 = and i16 %97, 2, !dbg !1105
  %99 = icmp eq i16 %98, 0, !dbg !1105
  %100 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 1, !dbg !1106
  br i1 %99, label %113, label %101, !dbg !1107

; <label>:101:                                    ; preds = %91
  %102 = load i8, i8* %100, align 4, !dbg !1108, !tbaa !792
  %103 = icmp eq i8 %102, 6, !dbg !1108
  br i1 %103, label %108, label %104, !dbg !1109

; <label>:104:                                    ; preds = %101
  %105 = load i8, i8* %71, align 8, !dbg !1110, !tbaa !547
  %106 = and i8 %105, 1, !dbg !1111
  %107 = icmp eq i8 %106, 0, !dbg !1112
  br i1 %107, label %108, label %113, !dbg !1113

; <label>:108:                                    ; preds = %104, %101
  %109 = load i16, i16* %92, align 8, !dbg !1114, !tbaa !641
  %110 = tail call zeroext i16 @ip_chksum_pseudo(%struct.pbuf* nonnull %56, i8 zeroext 17, i16 zeroext %109, %struct.ip_addr* nonnull %5, %struct.ip_addr* nonnull %2) #7, !dbg !1116
  %111 = icmp eq i16 %110, 0, !dbg !1118
  %112 = select i1 %111, i16 -1, i16 %110, !dbg !1120
  store i16 %112, i16* %70, align 1, !dbg !1121, !tbaa !635
  br label %113, !dbg !1122

; <label>:113:                                    ; preds = %91, %108, %104
  %114 = load i8, i8* %100, align 4, !dbg !1124, !tbaa !792
  %115 = icmp eq i8 %114, 6, !dbg !1124
  %116 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1124
  %117 = load i32, i32* %116, align 4, !dbg !1124, !tbaa !471
  br i1 %115, label %118, label %121, !dbg !1124

; <label>:118:                                    ; preds = %113
  %119 = and i32 %117, 255, !dbg !1124
  %120 = icmp eq i32 %119, 255, !dbg !1124
  br i1 %120, label %124, label %126, !dbg !1124

; <label>:121:                                    ; preds = %113
  %122 = and i32 %117, 240, !dbg !1124
  %123 = icmp eq i32 %122, 224, !dbg !1124
  br i1 %123, label %124, label %126, !dbg !1124

; <label>:124:                                    ; preds = %121, %118
  %125 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 12, !dbg !1125
  br label %128, !dbg !1124

; <label>:126:                                    ; preds = %121, %118
  %127 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 5, !dbg !1126
  br label %128, !dbg !1124

; <label>:128:                                    ; preds = %126, %124
  %129 = phi i8* [ %125, %124 ], [ %127, %126 ]
  %130 = load i8, i8* %129, align 1, !dbg !1127, !tbaa !471
  br i1 %115, label %131, label %137, !dbg !1129

; <label>:131:                                    ; preds = %128
  %132 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 0, i32 0, !dbg !1129
  %133 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 0, i32 0, !dbg !1129
  %134 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 4, !dbg !1129
  %135 = load i8, i8* %134, align 2, !dbg !1129, !tbaa !1130
  %136 = tail call signext i8 @ip6_output_if_src(%struct.pbuf* nonnull %56, %struct.ip6_addr* nonnull %132, %struct.ip6_addr* nonnull %133, i8 zeroext %130, i8 zeroext %135, i8 zeroext 17, %struct.netif* nonnull %4) #7, !dbg !1129
  br label %143, !dbg !1129

; <label>:137:                                    ; preds = %128
  %138 = bitcast %struct.ip_addr* %5 to %struct.ip4_addr*, !dbg !1129
  %139 = bitcast %struct.ip_addr* %2 to %struct.ip4_addr*, !dbg !1129
  %140 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 4, !dbg !1129
  %141 = load i8, i8* %140, align 2, !dbg !1129, !tbaa !1130
  %142 = tail call signext i8 @ip4_output_if_src(%struct.pbuf* nonnull %56, %struct.ip4_addr* %138, %struct.ip4_addr* %139, i8 zeroext %130, i8 zeroext %141, i8 zeroext 17, %struct.netif* nonnull %4) #7, !dbg !1129
  br label %143, !dbg !1129

; <label>:143:                                    ; preds = %137, %131
  %144 = phi i8 [ %136, %131 ], [ %142, %137 ]
  %145 = icmp eq %struct.pbuf* %56, %1, !dbg !1131
  br i1 %145, label %148, label %146, !dbg !1133

; <label>:146:                                    ; preds = %143
  %147 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %56) #7, !dbg !1134
  br label %148, !dbg !1136

; <label>:148:                                    ; preds = %143, %146
  %149 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 5, i32 0), align 2, !dbg !1137, !tbaa !1138
  %150 = add i16 %149, 1, !dbg !1137
  store i16 %150, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 5, i32 0), align 2, !dbg !1137, !tbaa !1138
  br label %151, !dbg !1139

; <label>:151:                                    ; preds = %48, %41, %38, %26, %30, %148
  %152 = phi i8 [ %144, %148 ], [ -6, %30 ], [ -6, %26 ], [ %39, %38 ], [ -1, %41 ], [ -1, %48 ], !dbg !1140
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1142
  ret i8 %152, !dbg !1142
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @udp_bind(%struct.udp_pcb*, %struct.ip_addr*, i16 zeroext) local_unnamed_addr #0 !dbg !1143 {
  %4 = alloca %struct.ip_addr, align 4
  %5 = bitcast %struct.ip_addr* %4 to i8*, !dbg !1160
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #6, !dbg !1160
  %6 = icmp eq %struct.ip_addr* %1, null, !dbg !1161
  %7 = select i1 %6, %struct.ip_addr* @ip_addr_any, %struct.ip_addr* %1, !dbg !1163
  %8 = icmp eq %struct.udp_pcb* %0, null, !dbg !1164
  br i1 %8, label %12, label %9, !dbg !1167

; <label>:9:                                      ; preds = %3
  %10 = load %struct.udp_pcb*, %struct.udp_pcb** @udp_pcbs, align 8, !dbg !1168, !tbaa !487
  %11 = icmp eq %struct.udp_pcb* %10, null, !dbg !1172
  br i1 %11, label %20, label %17, !dbg !1173

; <label>:12:                                     ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0)) #8, !dbg !1174
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1177
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1177
  unreachable, !dbg !1177

; <label>:13:                                     ; preds = %17
  %14 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %18, i64 0, i32 6, !dbg !1181
  %15 = load %struct.udp_pcb*, %struct.udp_pcb** %14, align 8, !dbg !1168, !tbaa !487
  %16 = icmp eq %struct.udp_pcb* %15, null, !dbg !1172
  br i1 %16, label %20, label %17, !dbg !1173, !llvm.loop !1182

; <label>:17:                                     ; preds = %9, %13
  %18 = phi %struct.udp_pcb* [ %15, %13 ], [ %10, %9 ]
  %19 = icmp eq %struct.udp_pcb* %18, %0, !dbg !1184
  br i1 %19, label %20, label %13, !dbg !1187

; <label>:20:                                     ; preds = %17, %13, %9
  %21 = phi i32 [ 0, %9 ], [ 0, %13 ], [ 1, %17 ]
  %22 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %7, i64 0, i32 1, !dbg !1188
  %23 = load i8, i8* %22, align 4, !dbg !1188, !tbaa !792
  %24 = icmp eq i8 %23, 6, !dbg !1188
  br i1 %24, label %25, label %66, !dbg !1189

; <label>:25:                                     ; preds = %20
  %26 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %7, i64 0, i32 0, i32 0, i32 1, !dbg !1190
  %27 = load i8, i8* %26, align 4, !dbg !1190, !tbaa !471
  %28 = icmp eq i8 %27, 0, !dbg !1190
  br i1 %28, label %29, label %66, !dbg !1190

; <label>:29:                                     ; preds = %25
  %30 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %7, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1190
  %31 = load i32, i32* %30, align 4, !dbg !1190, !tbaa !471
  %32 = and i32 %31, 49407, !dbg !1190
  %33 = icmp eq i32 %32, 33022, !dbg !1190
  br i1 %33, label %37, label %34, !dbg !1190

; <label>:34:                                     ; preds = %29
  %35 = trunc i32 %31 to i16, !dbg !1190
  %36 = and i16 %35, -28673, !dbg !1190
  switch i16 %36, label %66 [
    i16 511, label %37
    i16 767, label %37
  ], !dbg !1190

; <label>:37:                                     ; preds = %34, %34, %29
  %38 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 1, !dbg !1191
  store i8 6, i8* %38, align 4, !dbg !1191, !tbaa !792
  %39 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1194
  store i32 %31, i32* %39, align 4, !dbg !1194, !tbaa !471
  %40 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %7, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !1194
  %41 = load i32, i32* %40, align 4, !dbg !1194, !tbaa !471
  %42 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !1194
  store i32 %41, i32* %42, align 4, !dbg !1194, !tbaa !471
  %43 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %7, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !1194
  %44 = load i32, i32* %43, align 4, !dbg !1194, !tbaa !471
  %45 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !1194
  store i32 %44, i32* %45, align 4, !dbg !1194, !tbaa !471
  %46 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %7, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !1194
  %47 = load i32, i32* %46, align 4, !dbg !1194, !tbaa !471
  %48 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !1194
  store i32 %47, i32* %48, align 4, !dbg !1194, !tbaa !471
  %49 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, i32 1, !dbg !1194
  store i8 0, i8* %49, align 4, !dbg !1194, !tbaa !471
  %50 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, !dbg !1198
  %51 = call %struct.netif* @ip6_route(%struct.ip6_addr* nonnull %50, %struct.ip6_addr* nonnull %50) #7, !dbg !1198
  %52 = icmp eq %struct.netif* %51, null, !dbg !1199
  br i1 %52, label %66, label %53, !dbg !1198

; <label>:53:                                     ; preds = %37
  %54 = load i32, i32* %39, align 4, !dbg !1201, !tbaa !471
  %55 = and i32 %54, 49407, !dbg !1201
  %56 = icmp eq i32 %55, 33022, !dbg !1201
  br i1 %56, label %60, label %57, !dbg !1201

; <label>:57:                                     ; preds = %53
  %58 = trunc i32 %54 to i16, !dbg !1201
  %59 = and i16 %58, -28673, !dbg !1201
  switch i16 %59, label %64 [
    i16 511, label %60
    i16 767, label %60
  ], !dbg !1201

; <label>:60:                                     ; preds = %57, %57, %53
  %61 = getelementptr inbounds %struct.netif, %struct.netif* %51, i64 0, i32 23, !dbg !1201
  %62 = load i8, i8* %61, align 8, !dbg !1201, !tbaa !516
  %63 = add i8 %62, 1, !dbg !1201
  br label %64, !dbg !1201

; <label>:64:                                     ; preds = %57, %60
  %65 = phi i8 [ %63, %60 ], [ 0, %57 ]
  store i8 %65, i8* %49, align 4, !dbg !1201, !tbaa !471
  br label %66, !dbg !1201

; <label>:66:                                     ; preds = %64, %37, %34, %25, %20
  %67 = phi %struct.ip_addr* [ %7, %25 ], [ %7, %20 ], [ %7, %34 ], [ %4, %37 ], [ %4, %64 ], !dbg !1203
  %68 = icmp eq i16 %2, 0, !dbg !1205
  %69 = load %struct.udp_pcb*, %struct.udp_pcb** @udp_pcbs, align 8, !tbaa !487
  %70 = icmp eq %struct.udp_pcb* %69, null
  br i1 %68, label %80, label %71, !dbg !1207

; <label>:71:                                     ; preds = %66
  br i1 %70, label %196, label %72, !dbg !1208

; <label>:72:                                     ; preds = %71
  %73 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 3
  %74 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %67, i64 0, i32 1
  %75 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %67, i64 0, i32 0, i32 0, i32 0, i64 0
  %76 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %67, i64 0, i32 0, i32 0, i32 0, i64 1
  %77 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %67, i64 0, i32 0, i32 0, i32 0, i64 2
  %78 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %67, i64 0, i32 0, i32 0, i32 0, i64 3
  %79 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %67, i64 0, i32 0, i32 0, i32 1
  br label %107, !dbg !1208

; <label>:80:                                     ; preds = %66
  %81 = load i16, i16* @udp_port, align 2, !dbg !1220
  br label %82, !dbg !1223

; <label>:82:                                     ; preds = %242, %80
  %83 = phi i16 [ %81, %80 ], [ %100, %242 ], !dbg !1217
  %84 = phi i16 [ 0, %80 ], [ %243, %242 ], !dbg !1224
  %85 = add i16 %83, 1, !dbg !1231
  %86 = icmp eq i16 %83, -1, !dbg !1232
  %87 = select i1 %86, i16 -16384, i16 %85, !dbg !1233
  br i1 %70, label %101, label %92, !dbg !1235

; <label>:88:                                     ; preds = %92
  %89 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %93, i64 0, i32 6, !dbg !1236
  %90 = load %struct.udp_pcb*, %struct.udp_pcb** %89, align 8, !dbg !1237, !tbaa !487
  %91 = icmp eq %struct.udp_pcb* %90, null, !dbg !1238
  br i1 %91, label %104, label %92, !dbg !1235, !llvm.loop !1239

; <label>:92:                                     ; preds = %82, %88
  %93 = phi %struct.udp_pcb* [ %90, %88 ], [ %69, %82 ]
  %94 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %93, i64 0, i32 8, !dbg !1242
  %95 = load i16, i16* %94, align 2, !dbg !1242, !tbaa !493
  %96 = icmp eq i16 %95, %87, !dbg !1243
  br i1 %96, label %97, label %88, !dbg !1244

; <label>:97:                                     ; preds = %92
  %98 = add i16 %87, 1, !dbg !1231
  %99 = icmp eq i16 %87, -1, !dbg !1232
  %100 = select i1 %99, i16 -16384, i16 %98, !dbg !1233
  br i1 %70, label %101, label %233, !dbg !1235

; <label>:101:                                    ; preds = %97, %82
  %102 = phi i16 [ %87, %82 ], [ %100, %97 ], !dbg !1233
  store i16 %102, i16* @udp_port, align 2, !dbg !1220
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1245
  br label %196, !dbg !1246

; <label>:103:                                    ; preds = %242
  store i16 %100, i16* @udp_port, align 2, !dbg !1220
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1245
  br label %231, !dbg !1246

; <label>:104:                                    ; preds = %238, %88
  %105 = phi i16 [ %87, %88 ], [ %100, %238 ], !dbg !1233
  store i16 %105, i16* @udp_port, align 2, !dbg !1220
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1245
  %106 = icmp eq i16 %105, 0, !dbg !1247
  br i1 %106, label %231, label %196, !dbg !1246

; <label>:107:                                    ; preds = %72, %192
  %108 = phi %struct.udp_pcb* [ %69, %72 ], [ %194, %192 ]
  %109 = icmp eq %struct.udp_pcb* %108, %0, !dbg !1249
  br i1 %109, label %192, label %110, !dbg !1253

; <label>:110:                                    ; preds = %107
  %111 = load i8, i8* %73, align 1, !dbg !1254, !tbaa !1257
  %112 = and i8 %111, 4, !dbg !1254
  %113 = icmp eq i8 %112, 0, !dbg !1254
  br i1 %113, label %119, label %114, !dbg !1258

; <label>:114:                                    ; preds = %110
  %115 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %108, i64 0, i32 3, !dbg !1259
  %116 = load i8, i8* %115, align 1, !dbg !1259, !tbaa !1257
  %117 = and i8 %116, 4, !dbg !1259
  %118 = icmp eq i8 %117, 0, !dbg !1259
  br i1 %118, label %119, label %192, !dbg !1260

; <label>:119:                                    ; preds = %114, %110
  %120 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %108, i64 0, i32 8, !dbg !1261
  %121 = load i16, i16* %120, align 2, !dbg !1261, !tbaa !493
  %122 = icmp eq i16 %121, %2, !dbg !1264
  br i1 %122, label %123, label %192, !dbg !1265

; <label>:123:                                    ; preds = %119
  %124 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %108, i64 0, i32 0, i32 1, !dbg !1266
  %125 = load i8, i8* %124, align 4, !dbg !1266, !tbaa !522
  %126 = load i8, i8* %74, align 4, !dbg !1266, !tbaa !792
  %127 = icmp eq i8 %125, %126, !dbg !1266
  br i1 %127, label %130, label %128, !dbg !1267

; <label>:128:                                    ; preds = %123
  %129 = load i32, i32* %75, align 4, !dbg !1268, !tbaa !471
  br label %158, !dbg !1267

; <label>:130:                                    ; preds = %123
  %131 = icmp eq i8 %125, 6, !dbg !1266
  %132 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %108, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !1266
  %133 = load i32, i32* %132, align 8, !dbg !1266, !tbaa !471
  %134 = load i32, i32* %75, align 4, !dbg !1266, !tbaa !471
  %135 = icmp eq i32 %133, %134, !dbg !1266
  br i1 %131, label %136, label %157, !dbg !1267

; <label>:136:                                    ; preds = %130
  br i1 %135, label %137, label %158, !dbg !1266

; <label>:137:                                    ; preds = %136
  %138 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %108, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !1266
  %139 = load i32, i32* %138, align 4, !dbg !1266, !tbaa !471
  %140 = load i32, i32* %76, align 4, !dbg !1266, !tbaa !471
  %141 = icmp eq i32 %139, %140, !dbg !1266
  br i1 %141, label %142, label %158, !dbg !1266

; <label>:142:                                    ; preds = %137
  %143 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %108, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !1266
  %144 = load i32, i32* %143, align 8, !dbg !1266, !tbaa !471
  %145 = load i32, i32* %77, align 4, !dbg !1266, !tbaa !471
  %146 = icmp eq i32 %144, %145, !dbg !1266
  br i1 %146, label %147, label %158, !dbg !1266

; <label>:147:                                    ; preds = %142
  %148 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %108, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !1266
  %149 = load i32, i32* %148, align 4, !dbg !1266, !tbaa !471
  %150 = load i32, i32* %78, align 4, !dbg !1266, !tbaa !471
  %151 = icmp eq i32 %149, %150, !dbg !1266
  br i1 %151, label %152, label %158, !dbg !1266

; <label>:152:                                    ; preds = %147
  %153 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %108, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !1266
  %154 = load i8, i8* %153, align 8, !dbg !1266, !tbaa !471
  %155 = load i8, i8* %79, align 4, !dbg !1266, !tbaa !471
  %156 = icmp eq i8 %154, %155, !dbg !1266
  br i1 %156, label %231, label %158, !dbg !1266

; <label>:157:                                    ; preds = %130
  br i1 %135, label %231, label %158, !dbg !1267

; <label>:158:                                    ; preds = %128, %136, %137, %142, %147, %157, %152
  %159 = phi i32 [ %129, %128 ], [ %134, %136 ], [ %133, %137 ], [ %133, %142 ], [ %133, %147 ], [ %134, %157 ], [ %133, %152 ], !dbg !1268
  %160 = icmp eq i8 %126, 6, !dbg !1268
  %161 = icmp eq i32 %159, 0, !dbg !1268
  br i1 %160, label %162, label %172, !dbg !1269

; <label>:162:                                    ; preds = %158
  br i1 %161, label %163, label %173, !dbg !1268

; <label>:163:                                    ; preds = %162
  %164 = load i32, i32* %76, align 4, !dbg !1268, !tbaa !471
  %165 = icmp eq i32 %164, 0, !dbg !1268
  br i1 %165, label %166, label %173, !dbg !1268

; <label>:166:                                    ; preds = %163
  %167 = load i32, i32* %77, align 4, !dbg !1268, !tbaa !471
  %168 = icmp eq i32 %167, 0, !dbg !1268
  br i1 %168, label %169, label %173, !dbg !1268

; <label>:169:                                    ; preds = %166
  %170 = load i32, i32* %78, align 4, !dbg !1268, !tbaa !471
  %171 = icmp eq i32 %170, 0, !dbg !1268
  br i1 %171, label %231, label %173, !dbg !1268

; <label>:172:                                    ; preds = %158
  br i1 %161, label %231, label %173, !dbg !1269

; <label>:173:                                    ; preds = %172, %169, %166, %163, %162
  %174 = icmp eq i8 %125, 6, !dbg !1270
  %175 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %108, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !1270
  %176 = load i32, i32* %175, align 8, !dbg !1270, !tbaa !471
  %177 = icmp eq i32 %176, 0, !dbg !1270
  br i1 %174, label %178, label %191, !dbg !1271

; <label>:178:                                    ; preds = %173
  br i1 %177, label %179, label %192, !dbg !1270

; <label>:179:                                    ; preds = %178
  %180 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %108, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !1270
  %181 = load i32, i32* %180, align 4, !dbg !1270, !tbaa !471
  %182 = icmp eq i32 %181, 0, !dbg !1270
  br i1 %182, label %183, label %192, !dbg !1270

; <label>:183:                                    ; preds = %179
  %184 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %108, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !1270
  %185 = load i32, i32* %184, align 8, !dbg !1270, !tbaa !471
  %186 = icmp eq i32 %185, 0, !dbg !1270
  br i1 %186, label %187, label %192, !dbg !1270

; <label>:187:                                    ; preds = %183
  %188 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %108, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !1270
  %189 = load i32, i32* %188, align 4, !dbg !1270, !tbaa !471
  %190 = icmp eq i32 %189, 0, !dbg !1270
  br i1 %190, label %231, label %192, !dbg !1270

; <label>:191:                                    ; preds = %173
  br i1 %177, label %231, label %192, !dbg !1271

; <label>:192:                                    ; preds = %114, %107, %119, %178, %179, %183, %187, %191
  %193 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %108, i64 0, i32 6, !dbg !1272
  %194 = load %struct.udp_pcb*, %struct.udp_pcb** %193, align 8, !dbg !1273, !tbaa !487
  %195 = icmp eq %struct.udp_pcb* %194, null, !dbg !1274
  br i1 %195, label %196, label %107, !dbg !1208, !llvm.loop !1275

; <label>:196:                                    ; preds = %192, %71, %104, %101
  %197 = phi i16 [ %105, %104 ], [ %102, %101 ], [ %2, %71 ], [ %2, %192 ]
  %198 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %67, i64 0, i32 1, !dbg !1277
  %199 = load i8, i8* %198, align 4, !dbg !1277, !tbaa !792
  %200 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, i32 1, !dbg !1277
  store i8 %199, i8* %200, align 4, !dbg !1277, !tbaa !522
  %201 = load i8, i8* %198, align 4, !dbg !1283, !tbaa !792
  %202 = icmp eq i8 %201, 6, !dbg !1283
  %203 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %67, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1285
  %204 = load i32, i32* %203, align 4, !dbg !1285, !tbaa !471
  %205 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !1285
  store i32 %204, i32* %205, align 8, !dbg !1285, !tbaa !471
  br i1 %202, label %206, label %218, !dbg !1288

; <label>:206:                                    ; preds = %196
  %207 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %67, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !1285
  %208 = load i32, i32* %207, align 4, !dbg !1285, !tbaa !471
  %209 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !1285
  store i32 %208, i32* %209, align 4, !dbg !1285, !tbaa !471
  %210 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %67, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !1285
  %211 = load i32, i32* %210, align 4, !dbg !1285, !tbaa !471
  %212 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !1285
  store i32 %211, i32* %212, align 8, !dbg !1285, !tbaa !471
  %213 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %67, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !1285
  %214 = load i32, i32* %213, align 4, !dbg !1285, !tbaa !471
  %215 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !1285
  store i32 %214, i32* %215, align 4, !dbg !1285, !tbaa !471
  %216 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %67, i64 0, i32 0, i32 0, i32 1, !dbg !1285
  %217 = load i8, i8* %216, align 4, !dbg !1285, !tbaa !471
  br label %222, !dbg !1289

; <label>:218:                                    ; preds = %196
  %219 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !1290
  store i32 0, i32* %219, align 4, !dbg !1290, !tbaa !471
  %220 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !1290
  store i32 0, i32* %220, align 8, !dbg !1290, !tbaa !471
  %221 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !1290
  store i32 0, i32* %221, align 4, !dbg !1290, !tbaa !471
  br label %222

; <label>:222:                                    ; preds = %218, %206
  %223 = phi i8 [ 0, %218 ], [ %217, %206 ]
  %224 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !1290
  store i8 %223, i8* %224, align 8, !dbg !1290
  %225 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 8, !dbg !1293
  store i16 %197, i16* %225, align 2, !dbg !1294, !tbaa !493
  %226 = icmp eq i32 %21, 0, !dbg !1295
  br i1 %226, label %227, label %231, !dbg !1297

; <label>:227:                                    ; preds = %222
  %228 = load i64, i64* bitcast (%struct.udp_pcb** @udp_pcbs to i64*), align 8, !dbg !1298, !tbaa !487
  %229 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 6, !dbg !1300
  %230 = bitcast %struct.udp_pcb** %229 to i64*, !dbg !1301
  store i64 %228, i64* %230, align 8, !dbg !1301, !tbaa !594
  store %struct.udp_pcb* %0, %struct.udp_pcb** @udp_pcbs, align 8, !dbg !1302, !tbaa !487
  br label %231, !dbg !1303

; <label>:231:                                    ; preds = %152, %157, %169, %172, %187, %191, %103, %222, %227, %104
  %232 = phi i8 [ -8, %104 ], [ 0, %227 ], [ 0, %222 ], [ -8, %103 ], [ -8, %191 ], [ -8, %187 ], [ -8, %172 ], [ -8, %169 ], [ -8, %157 ], [ -8, %152 ], !dbg !1304
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #6, !dbg !1306
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1306
  ret i8 %232, !dbg !1306

; <label>:233:                                    ; preds = %97, %238
  %234 = phi %struct.udp_pcb* [ %240, %238 ], [ %69, %97 ]
  %235 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %234, i64 0, i32 8, !dbg !1242
  %236 = load i16, i16* %235, align 2, !dbg !1242, !tbaa !493
  %237 = icmp eq i16 %236, %100, !dbg !1243
  br i1 %237, label %242, label %238, !dbg !1244

; <label>:238:                                    ; preds = %233
  %239 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %234, i64 0, i32 6, !dbg !1236
  %240 = load %struct.udp_pcb*, %struct.udp_pcb** %239, align 8, !dbg !1237, !tbaa !487
  %241 = icmp eq %struct.udp_pcb* %240, null, !dbg !1238
  br i1 %241, label %104, label %233, !dbg !1235, !llvm.loop !1239

; <label>:242:                                    ; preds = %233
  %243 = add nuw nsw i16 %84, 2, !dbg !1307
  %244 = icmp ugt i16 %84, 16381, !dbg !1308
  br i1 %244, label %103, label %82, !dbg !1309
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
define dso_local void @udp_bind_netif(%struct.udp_pcb* nocapture, %struct.netif* readonly) local_unnamed_addr #0 !dbg !1310 {
  %3 = icmp eq %struct.netif* %1, null, !dbg !1320
  br i1 %3, label %8, label %4, !dbg !1322

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 23, !dbg !1323
  %6 = load i8, i8* %5, align 8, !dbg !1323, !tbaa !516
  %7 = add i8 %6, 1, !dbg !1323
  br label %8, !dbg !1325

; <label>:8:                                      ; preds = %2, %4
  %9 = phi i8 [ %7, %4 ], [ 0, %2 ]
  %10 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 2, !dbg !1326
  store i8 %9, i8* %10, align 8, !dbg !1328
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1329
  ret void, !dbg !1329
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @udp_connect(%struct.udp_pcb*, %struct.ip_addr* readonly, i16 zeroext) local_unnamed_addr #0 !dbg !1330 {
  %4 = icmp eq %struct.udp_pcb* %0, null, !dbg !1346
  br i1 %4, label %5, label %6, !dbg !1349

; <label>:5:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i64 0, i64 0)) #8, !dbg !1350
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1353
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1353
  unreachable, !dbg !1353

; <label>:6:                                      ; preds = %3
  %7 = icmp eq %struct.ip_addr* %1, null, !dbg !1357
  br i1 %7, label %8, label %9, !dbg !1360

; <label>:8:                                      ; preds = %6
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i64 0, i64 0)) #8, !dbg !1361
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1364
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1364
  unreachable, !dbg !1364

; <label>:9:                                      ; preds = %6
  %10 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 8, !dbg !1368
  %11 = load i16, i16* %10, align 2, !dbg !1368, !tbaa !493
  %12 = icmp eq i16 %11, 0, !dbg !1369
  br i1 %12, label %13, label %17, !dbg !1370

; <label>:13:                                     ; preds = %9
  %14 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, !dbg !1371
  %15 = tail call signext i8 @udp_bind(%struct.udp_pcb* nonnull %0, %struct.ip_addr* nonnull %14, i16 zeroext 0) #8, !dbg !1372
  %16 = icmp eq i8 %15, 0, !dbg !1374
  br i1 %16, label %17, label %91

; <label>:17:                                     ; preds = %13, %9
  %18 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, !dbg !1376
  %19 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 1, !dbg !1380
  %20 = load i8, i8* %19, align 4, !dbg !1380, !tbaa !792
  %21 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 1, !dbg !1380
  store i8 %20, i8* %21, align 4, !dbg !1380, !tbaa !583
  %22 = load i8, i8* %19, align 4, !dbg !1383, !tbaa !792
  %23 = icmp eq i8 %22, 6, !dbg !1383
  %24 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1385
  %25 = load i32, i32* %24, align 4, !dbg !1385, !tbaa !471
  %26 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %18, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1385
  store i32 %25, i32* %26, align 8, !dbg !1385, !tbaa !471
  br i1 %23, label %27, label %39, !dbg !1388

; <label>:27:                                     ; preds = %17
  %28 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !1385
  %29 = load i32, i32* %28, align 4, !dbg !1385, !tbaa !471
  %30 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 1, !dbg !1385
  store i32 %29, i32* %30, align 4, !dbg !1385, !tbaa !471
  %31 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !1385
  %32 = load i32, i32* %31, align 4, !dbg !1385, !tbaa !471
  %33 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 2, !dbg !1385
  store i32 %32, i32* %33, align 8, !dbg !1385, !tbaa !471
  %34 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !1385
  %35 = load i32, i32* %34, align 4, !dbg !1385, !tbaa !471
  %36 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 3, !dbg !1385
  store i32 %35, i32* %36, align 4, !dbg !1385, !tbaa !471
  %37 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 1, !dbg !1385
  %38 = load i8, i8* %37, align 4, !dbg !1385, !tbaa !471
  br label %43, !dbg !1389

; <label>:39:                                     ; preds = %17
  %40 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 3, !dbg !1390
  store i32 0, i32* %40, align 4, !dbg !1390, !tbaa !471
  %41 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 2, !dbg !1390
  store i32 0, i32* %41, align 8, !dbg !1390, !tbaa !471
  %42 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 1, !dbg !1390
  store i32 0, i32* %42, align 4, !dbg !1390, !tbaa !471
  br label %43

; <label>:43:                                     ; preds = %27, %39
  %44 = phi i8 [ %38, %27 ], [ 0, %39 ]
  %45 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 1, !dbg !1385
  store i8 %44, i8* %45, align 8, !dbg !1385
  %46 = icmp eq i8 %20, 6, !dbg !1393
  br i1 %46, label %47, label %73, !dbg !1394

; <label>:47:                                     ; preds = %43
  %48 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %18, i64 0, i32 0, i32 0, !dbg !1395
  %49 = icmp eq i8 %44, 0, !dbg !1395
  br i1 %49, label %50, label %73, !dbg !1395

; <label>:50:                                     ; preds = %47
  %51 = and i32 %25, 49407, !dbg !1395
  %52 = icmp eq i32 %51, 33022, !dbg !1395
  br i1 %52, label %56, label %53, !dbg !1395

; <label>:53:                                     ; preds = %50
  %54 = trunc i32 %25 to i16, !dbg !1395
  %55 = and i16 %54, -28673, !dbg !1395
  switch i16 %55, label %73 [
    i16 511, label %56
    i16 767, label %56
  ], !dbg !1395

; <label>:56:                                     ; preds = %53, %53, %50
  %57 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, i32 0, i32 0, !dbg !1396
  %58 = tail call %struct.netif* @ip6_route(%struct.ip6_addr* nonnull %57, %struct.ip6_addr* nonnull %48) #7, !dbg !1396
  %59 = icmp eq %struct.netif* %58, null, !dbg !1397
  br i1 %59, label %73, label %60, !dbg !1396

; <label>:60:                                     ; preds = %56
  %61 = load i32, i32* %26, align 8, !dbg !1399, !tbaa !471
  %62 = and i32 %61, 49407, !dbg !1399
  %63 = icmp eq i32 %62, 33022, !dbg !1399
  br i1 %63, label %67, label %64, !dbg !1399

; <label>:64:                                     ; preds = %60
  %65 = trunc i32 %61 to i16, !dbg !1399
  %66 = and i16 %65, -28673, !dbg !1399
  switch i16 %66, label %71 [
    i16 511, label %67
    i16 767, label %67
  ], !dbg !1399

; <label>:67:                                     ; preds = %64, %64, %60
  %68 = getelementptr inbounds %struct.netif, %struct.netif* %58, i64 0, i32 23, !dbg !1399
  %69 = load i8, i8* %68, align 8, !dbg !1399, !tbaa !516
  %70 = add i8 %69, 1, !dbg !1399
  br label %71, !dbg !1399

; <label>:71:                                     ; preds = %64, %67
  %72 = phi i8 [ %70, %67 ], [ 0, %64 ]
  store i8 %72, i8* %45, align 8, !dbg !1399, !tbaa !471
  br label %73, !dbg !1399

; <label>:73:                                     ; preds = %71, %56, %53, %47, %43
  %74 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 9, !dbg !1401
  store i16 %2, i16* %74, align 4, !dbg !1402, !tbaa !579
  %75 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 7, !dbg !1403
  %76 = load i8, i8* %75, align 8, !dbg !1404, !tbaa !547
  %77 = or i8 %76, 4, !dbg !1404
  store i8 %77, i8* %75, align 8, !dbg !1404, !tbaa !547
  %78 = load %struct.udp_pcb*, %struct.udp_pcb** @udp_pcbs, align 8, !dbg !1406, !tbaa !487
  %79 = icmp eq %struct.udp_pcb* %78, null, !dbg !1409
  %80 = ptrtoint %struct.udp_pcb* %78 to i64, !dbg !1410
  br i1 %79, label %88, label %85, !dbg !1410

; <label>:81:                                     ; preds = %85
  %82 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %86, i64 0, i32 6, !dbg !1411
  %83 = load %struct.udp_pcb*, %struct.udp_pcb** %82, align 8, !dbg !1406, !tbaa !487
  %84 = icmp eq %struct.udp_pcb* %83, null, !dbg !1409
  br i1 %84, label %88, label %85, !dbg !1410, !llvm.loop !1412

; <label>:85:                                     ; preds = %73, %81
  %86 = phi %struct.udp_pcb* [ %83, %81 ], [ %78, %73 ]
  %87 = icmp eq %struct.udp_pcb* %86, %0, !dbg !1414
  br i1 %87, label %91, label %81, !dbg !1417

; <label>:88:                                     ; preds = %81, %73
  %89 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 6, !dbg !1418
  %90 = bitcast %struct.udp_pcb** %89 to i64*, !dbg !1419
  store i64 %80, i64* %90, align 8, !dbg !1419, !tbaa !594
  store %struct.udp_pcb* %0, %struct.udp_pcb** @udp_pcbs, align 8, !dbg !1420, !tbaa !487
  br label %91, !dbg !1421

; <label>:91:                                     ; preds = %85, %13, %88
  %92 = phi i8 [ 0, %88 ], [ %15, %13 ], [ 0, %85 ], !dbg !1422
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1424
  ret i8 %92, !dbg !1424
}

; Function Attrs: noredzone nounwind
define dso_local void @udp_disconnect(%struct.udp_pcb*) local_unnamed_addr #0 !dbg !1425 {
  %2 = icmp eq %struct.udp_pcb* %0, null, !dbg !1431
  br i1 %2, label %3, label %4, !dbg !1434

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.23, i64 0, i64 0)) #8, !dbg !1435
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1438
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1438
  unreachable, !dbg !1438

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, i32 1, !dbg !1442
  %6 = load i8, i8* %5, align 4, !dbg !1442, !tbaa !522
  %7 = icmp eq i8 %6, 46, !dbg !1442
  br i1 %7, label %8, label %28, !dbg !1444

; <label>:8:                                      ; preds = %4
  %9 = load i8, i8* getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip_addr_any_type, i64 0, i32 1), align 4, !dbg !1445, !tbaa !792
  %10 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 1, !dbg !1445
  store i8 %9, i8* %10, align 4, !dbg !1445, !tbaa !583
  %11 = icmp eq i8 %9, 6, !dbg !1449
  %12 = load i32, i32* getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip_addr_any_type, i64 0, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !1451, !tbaa !471
  %13 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 0, !dbg !1451
  store i32 %12, i32* %13, align 8, !dbg !1451, !tbaa !471
  br i1 %11, label %14, label %23, !dbg !1454

; <label>:14:                                     ; preds = %8
  %15 = load i32, i32* getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip_addr_any_type, i64 0, i32 0, i32 0, i32 0, i64 1), align 4, !dbg !1451, !tbaa !471
  %16 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 1, !dbg !1451
  store i32 %15, i32* %16, align 4, !dbg !1451, !tbaa !471
  %17 = load i32, i32* getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip_addr_any_type, i64 0, i32 0, i32 0, i32 0, i64 2), align 4, !dbg !1451, !tbaa !471
  %18 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 2, !dbg !1451
  store i32 %17, i32* %18, align 8, !dbg !1451, !tbaa !471
  %19 = load i32, i32* getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip_addr_any_type, i64 0, i32 0, i32 0, i32 0, i64 3), align 4, !dbg !1451, !tbaa !471
  %20 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 3, !dbg !1451
  store i32 %19, i32* %20, align 4, !dbg !1451, !tbaa !471
  %21 = load i8, i8* getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip_addr_any_type, i64 0, i32 0, i32 0, i32 1), align 4, !dbg !1451, !tbaa !471
  %22 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 1, !dbg !1451
  store i8 %21, i8* %22, align 8, !dbg !1451, !tbaa !471
  br label %43, !dbg !1455

; <label>:23:                                     ; preds = %8
  %24 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 3, !dbg !1456
  store i32 0, i32* %24, align 4, !dbg !1456, !tbaa !471
  %25 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 2, !dbg !1456
  store i32 0, i32* %25, align 8, !dbg !1456, !tbaa !471
  %26 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 1, !dbg !1456
  store i32 0, i32* %26, align 4, !dbg !1456, !tbaa !471
  %27 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 1, !dbg !1456
  store i8 0, i8* %27, align 8, !dbg !1456, !tbaa !471
  br label %43

; <label>:28:                                     ; preds = %4
  %29 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 1, !dbg !1459
  %30 = load i8, i8* %29, align 4, !dbg !1459, !tbaa !583
  %31 = icmp eq i8 %30, 6, !dbg !1459
  %32 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 0, !dbg !1463
  store i32 0, i32* %32, align 8, !dbg !1463, !tbaa !471
  br i1 %31, label %33, label %38, !dbg !1466

; <label>:33:                                     ; preds = %28
  %34 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 1, !dbg !1463
  store i32 0, i32* %34, align 4, !dbg !1463, !tbaa !471
  %35 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 2, !dbg !1463
  store i32 0, i32* %35, align 8, !dbg !1463, !tbaa !471
  %36 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 3, !dbg !1463
  store i32 0, i32* %36, align 4, !dbg !1463, !tbaa !471
  %37 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 1, !dbg !1463
  store i8 0, i8* %37, align 8, !dbg !1463, !tbaa !471
  store i8 6, i8* %29, align 4, !dbg !1467, !tbaa !583
  br label %43, !dbg !1472

; <label>:38:                                     ; preds = %28
  store i8 0, i8* %29, align 4, !dbg !1473, !tbaa !583
  %39 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 3, !dbg !1479
  store i32 0, i32* %39, align 4, !dbg !1479, !tbaa !471
  %40 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 2, !dbg !1479
  store i32 0, i32* %40, align 8, !dbg !1479, !tbaa !471
  %41 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 1, !dbg !1479
  store i32 0, i32* %41, align 4, !dbg !1479, !tbaa !471
  %42 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 1, !dbg !1479
  store i8 0, i8* %42, align 8, !dbg !1479, !tbaa !471
  br label %43

; <label>:43:                                     ; preds = %33, %38, %23, %14
  %44 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 9, !dbg !1481
  store i16 0, i16* %44, align 4, !dbg !1482, !tbaa !579
  %45 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 2, !dbg !1483
  store i8 0, i8* %45, align 8, !dbg !1484, !tbaa !511
  %46 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 7, !dbg !1485
  %47 = load i8, i8* %46, align 8, !dbg !1485, !tbaa !547
  %48 = and i8 %47, -5, !dbg !1485
  store i8 %48, i8* %46, align 8, !dbg !1485, !tbaa !547
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1487
  ret void, !dbg !1487
}

; Function Attrs: noredzone nounwind
define dso_local void @udp_recv(%struct.udp_pcb*, void (i8*, %struct.udp_pcb*, %struct.pbuf*, %struct.ip_addr*, i16)*, i8*) local_unnamed_addr #0 !dbg !1488 {
  %4 = icmp eq %struct.udp_pcb* %0, null, !dbg !1498
  br i1 %4, label %5, label %6, !dbg !1501

; <label>:5:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i64 0, i64 0)) #8, !dbg !1502
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1505
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1505
  unreachable, !dbg !1505

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 13, !dbg !1509
  store void (i8*, %struct.udp_pcb*, %struct.pbuf*, %struct.ip_addr*, i16)* %1, void (i8*, %struct.udp_pcb*, %struct.pbuf*, %struct.ip_addr*, i16)** %7, align 8, !dbg !1510, !tbaa !663
  %8 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 14, !dbg !1511
  store i8* %2, i8** %8, align 8, !dbg !1512, !tbaa !668
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1513
  ret void, !dbg !1513
}

; Function Attrs: noredzone nounwind
define dso_local void @udp_remove(%struct.udp_pcb*) local_unnamed_addr #0 !dbg !1514 {
  %2 = icmp eq %struct.udp_pcb* %0, null, !dbg !1519
  br i1 %2, label %3, label %4, !dbg !1522

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i64 0, i64 0)) #8, !dbg !1523
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1526
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1526
  unreachable, !dbg !1526

; <label>:4:                                      ; preds = %1
  %5 = load %struct.udp_pcb*, %struct.udp_pcb** @udp_pcbs, align 8, !dbg !1530, !tbaa !487
  %6 = icmp eq %struct.udp_pcb* %5, %0, !dbg !1532
  br i1 %6, label %7, label %11, !dbg !1533

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 6, !dbg !1534
  %9 = bitcast %struct.udp_pcb** %8 to i64*, !dbg !1534
  %10 = load i64, i64* %9, align 8, !dbg !1534, !tbaa !594
  store i64 %10, i64* bitcast (%struct.udp_pcb** @udp_pcbs to i64*), align 8, !dbg !1536, !tbaa !487
  br label %26, !dbg !1537

; <label>:11:                                     ; preds = %4, %14
  %12 = phi %struct.udp_pcb* [ %16, %14 ], [ %5, %4 ], !dbg !1538
  %13 = icmp eq %struct.udp_pcb* %12, null, !dbg !1543
  br i1 %13, label %26, label %14, !dbg !1544

; <label>:14:                                     ; preds = %11
  %15 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %12, i64 0, i32 6, !dbg !1545
  %16 = load %struct.udp_pcb*, %struct.udp_pcb** %15, align 8, !dbg !1545, !tbaa !594
  %17 = icmp ne %struct.udp_pcb* %16, null, !dbg !1548
  %18 = icmp eq %struct.udp_pcb* %16, %0, !dbg !1549
  %19 = and i1 %17, %18, !dbg !1550
  br i1 %19, label %20, label %11, !dbg !1550, !llvm.loop !1551

; <label>:20:                                     ; preds = %14
  %21 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %12, i64 0, i32 6, !dbg !1545
  %22 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 6, !dbg !1553
  %23 = bitcast %struct.udp_pcb** %22 to i64*, !dbg !1553
  %24 = load i64, i64* %23, align 8, !dbg !1553, !tbaa !594
  %25 = bitcast %struct.udp_pcb** %21 to i64*, !dbg !1555
  store i64 %24, i64* %25, align 8, !dbg !1555, !tbaa !594
  br label %26, !dbg !1556

; <label>:26:                                     ; preds = %11, %20, %7
  %27 = bitcast %struct.udp_pcb* %0 to i8*, !dbg !1557
  tail call void @memp_free(i32 0, i8* %27) #7, !dbg !1558
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1559
  ret void, !dbg !1559
}

; Function Attrs: noredzone
declare dso_local void @memp_free(i32, i8*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local %struct.udp_pcb* @udp_new() local_unnamed_addr #0 !dbg !1560 {
  %1 = tail call i8* @memp_malloc(i32 0) #7, !dbg !1565
  %2 = bitcast i8* %1 to %struct.udp_pcb*, !dbg !1566
  %3 = icmp eq i8* %1, null, !dbg !1568
  br i1 %3, label %8, label %4, !dbg !1570

; <label>:4:                                      ; preds = %0
  %5 = tail call i8* @memset(i8* nonnull %1, i32 0, i64 96) #7, !dbg !1571
  %6 = getelementptr inbounds i8, i8* %1, i64 51, !dbg !1573
  store i8 -1, i8* %6, align 1, !dbg !1574, !tbaa !1575
  %7 = getelementptr inbounds i8, i8* %1, i64 77, !dbg !1576
  store i8 -1, i8* %7, align 1, !dbg !1576, !tbaa !1577
  br label %8, !dbg !1578

; <label>:8:                                      ; preds = %0, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1579
  ret %struct.udp_pcb* %2, !dbg !1579
}

; Function Attrs: noredzone
declare dso_local i8* @memp_malloc(i32) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local %struct.udp_pcb* @udp_new_ip_type(i8 zeroext) local_unnamed_addr #0 !dbg !1580 {
  %2 = tail call i8* @memp_malloc(i32 0) #7, !dbg !1587
  %3 = bitcast i8* %2 to %struct.udp_pcb*, !dbg !1589
  %4 = icmp eq i8* %2, null, !dbg !1591
  br i1 %4, label %11, label %5, !dbg !1592

; <label>:5:                                      ; preds = %1
  %6 = tail call i8* @memset(i8* nonnull %2, i32 0, i64 96) #7, !dbg !1593
  %7 = getelementptr inbounds i8, i8* %2, i64 51, !dbg !1594
  store i8 -1, i8* %7, align 1, !dbg !1595, !tbaa !1575
  %8 = getelementptr inbounds i8, i8* %2, i64 77, !dbg !1596
  store i8 -1, i8* %8, align 1, !dbg !1596, !tbaa !1577
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1597
  %9 = getelementptr inbounds i8, i8* %2, i64 20, !dbg !1599
  store i8 %0, i8* %9, align 4, !dbg !1599, !tbaa !522
  %10 = getelementptr inbounds i8, i8* %2, i64 44, !dbg !1603
  store i8 %0, i8* %10, align 4, !dbg !1603, !tbaa !583
  br label %12, !dbg !1605

; <label>:11:                                     ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1597
  br label %12, !dbg !1606

; <label>:12:                                     ; preds = %11, %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1607
  ret %struct.udp_pcb* %3, !dbg !1607
}

; Function Attrs: noredzone nounwind
define dso_local void @udp_netif_ip_addr_changed(%struct.ip_addr* readonly, %struct.ip_addr*) local_unnamed_addr #0 !dbg !1608 {
  %3 = icmp eq %struct.ip_addr* %0, null, !dbg !1617
  br i1 %3, label %123, label %4, !dbg !1619

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 1, !dbg !1617
  %6 = load i8, i8* %5, align 4, !dbg !1617, !tbaa !792
  %7 = icmp eq i8 %6, 6, !dbg !1617
  %8 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1617
  %9 = load i32, i32* %8, align 4, !dbg !1617, !tbaa !471
  %10 = icmp eq i32 %9, 0, !dbg !1617
  br i1 %7, label %11, label %26, !dbg !1619

; <label>:11:                                     ; preds = %4
  br i1 %10, label %12, label %29, !dbg !1617

; <label>:12:                                     ; preds = %11
  %13 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !1617
  %14 = load i32, i32* %13, align 4, !dbg !1617, !tbaa !471
  %15 = icmp eq i32 %14, 0, !dbg !1617
  br i1 %15, label %16, label %29, !dbg !1617

; <label>:16:                                     ; preds = %12
  %17 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !1617
  %18 = load i32, i32* %17, align 4, !dbg !1617, !tbaa !471
  %19 = icmp eq i32 %18, 0, !dbg !1617
  br i1 %19, label %20, label %29, !dbg !1617

; <label>:20:                                     ; preds = %16
  %21 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !1617
  %22 = load i32, i32* %21, align 4, !dbg !1617, !tbaa !471
  %23 = icmp eq i32 %22, 0, !dbg !1617
  %24 = icmp eq %struct.ip_addr* %1, null, !dbg !1620
  %25 = or i1 %24, %23, !dbg !1617
  br i1 %25, label %123, label %31, !dbg !1617

; <label>:26:                                     ; preds = %4
  %27 = icmp eq %struct.ip_addr* %1, null, !dbg !1620
  %28 = or i1 %27, %10, !dbg !1619
  br i1 %28, label %123, label %31, !dbg !1619

; <label>:29:                                     ; preds = %16, %12, %11
  %30 = icmp eq %struct.ip_addr* %1, null, !dbg !1621
  br i1 %30, label %123, label %31, !dbg !1621

; <label>:31:                                     ; preds = %26, %20, %29
  %32 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 1, !dbg !1620
  %33 = load i8, i8* %32, align 4, !dbg !1620, !tbaa !792
  %34 = icmp eq i8 %33, 6, !dbg !1620
  %35 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1620
  %36 = load i32, i32* %35, align 4, !dbg !1620, !tbaa !471
  %37 = icmp eq i32 %36, 0, !dbg !1620
  br i1 %34, label %38, label %51, !dbg !1621

; <label>:38:                                     ; preds = %31
  br i1 %37, label %39, label %52, !dbg !1620

; <label>:39:                                     ; preds = %38
  %40 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !1620
  %41 = load i32, i32* %40, align 4, !dbg !1620, !tbaa !471
  %42 = icmp eq i32 %41, 0, !dbg !1620
  br i1 %42, label %43, label %52, !dbg !1620

; <label>:43:                                     ; preds = %39
  %44 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !1620
  %45 = load i32, i32* %44, align 4, !dbg !1620, !tbaa !471
  %46 = icmp eq i32 %45, 0, !dbg !1620
  br i1 %46, label %47, label %52, !dbg !1620

; <label>:47:                                     ; preds = %43
  %48 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !1620
  %49 = load i32, i32* %48, align 4, !dbg !1620, !tbaa !471
  %50 = icmp eq i32 %49, 0, !dbg !1620
  br i1 %50, label %123, label %52, !dbg !1620

; <label>:51:                                     ; preds = %31
  br i1 %37, label %123, label %52, !dbg !1621

; <label>:52:                                     ; preds = %51, %47, %43, %39, %38
  %53 = load %struct.udp_pcb*, %struct.udp_pcb** @udp_pcbs, align 8, !dbg !1623, !tbaa !487
  %54 = icmp eq %struct.udp_pcb* %53, null, !dbg !1627
  br i1 %54, label %123, label %55, !dbg !1628

; <label>:55:                                     ; preds = %52
  %56 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 0, i64 1
  %57 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 1
  %58 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 2
  %59 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 3
  %60 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 1
  %61 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 0, i64 2
  %62 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 0, i64 3
  %63 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 1
  br label %64, !dbg !1628

; <label>:64:                                     ; preds = %121, %55
  %65 = phi i8 [ %6, %55 ], [ %122, %121 ], !dbg !1629
  %66 = phi %struct.udp_pcb* [ %53, %55 ], [ %119, %121 ]
  %67 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %66, i64 0, i32 0, i32 1, !dbg !1629
  %68 = load i8, i8* %67, align 4, !dbg !1629, !tbaa !522
  %69 = icmp eq i8 %68, %65, !dbg !1629
  br i1 %69, label %70, label %117, !dbg !1632

; <label>:70:                                     ; preds = %64
  %71 = icmp eq i8 %65, 6, !dbg !1629
  %72 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %66, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !1629
  %73 = load i32, i32* %72, align 8, !dbg !1629, !tbaa !471
  %74 = load i32, i32* %8, align 4, !dbg !1629, !tbaa !471
  %75 = icmp eq i32 %73, %74, !dbg !1629
  br i1 %71, label %76, label %97, !dbg !1632

; <label>:76:                                     ; preds = %70
  br i1 %75, label %77, label %117, !dbg !1629

; <label>:77:                                     ; preds = %76
  %78 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %66, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !1629
  %79 = load i32, i32* %78, align 4, !dbg !1629, !tbaa !471
  %80 = load i32, i32* %56, align 4, !dbg !1629, !tbaa !471
  %81 = icmp eq i32 %79, %80, !dbg !1629
  br i1 %81, label %82, label %117, !dbg !1629

; <label>:82:                                     ; preds = %77
  %83 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %66, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !1629
  %84 = load i32, i32* %83, align 8, !dbg !1629, !tbaa !471
  %85 = load i32, i32* %61, align 4, !dbg !1629, !tbaa !471
  %86 = icmp eq i32 %84, %85, !dbg !1629
  br i1 %86, label %87, label %117, !dbg !1629

; <label>:87:                                     ; preds = %82
  %88 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %66, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !1629
  %89 = load i32, i32* %88, align 4, !dbg !1629, !tbaa !471
  %90 = load i32, i32* %62, align 4, !dbg !1629, !tbaa !471
  %91 = icmp eq i32 %89, %90, !dbg !1629
  br i1 %91, label %92, label %117, !dbg !1629

; <label>:92:                                     ; preds = %87
  %93 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %66, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !1629
  %94 = load i8, i8* %93, align 8, !dbg !1629, !tbaa !471
  %95 = load i8, i8* %63, align 4, !dbg !1629, !tbaa !471
  %96 = icmp eq i8 %94, %95, !dbg !1629
  br i1 %96, label %98, label %117, !dbg !1629

; <label>:97:                                     ; preds = %70
  br i1 %75, label %98, label %117, !dbg !1632

; <label>:98:                                     ; preds = %97, %92
  %99 = load i8, i8* %32, align 4, !dbg !1633, !tbaa !792
  store i8 %99, i8* %67, align 4, !dbg !1633, !tbaa !522
  %100 = load i8, i8* %32, align 4, !dbg !1637, !tbaa !792
  %101 = icmp eq i8 %100, 6, !dbg !1637
  %102 = load i32, i32* %35, align 4, !dbg !1639, !tbaa !471
  store i32 %102, i32* %72, align 8, !dbg !1639, !tbaa !471
  br i1 %101, label %103, label %112, !dbg !1642

; <label>:103:                                    ; preds = %98
  %104 = load i32, i32* %57, align 4, !dbg !1639, !tbaa !471
  %105 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %66, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !1639
  store i32 %104, i32* %105, align 4, !dbg !1639, !tbaa !471
  %106 = load i32, i32* %58, align 4, !dbg !1639, !tbaa !471
  %107 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %66, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !1639
  store i32 %106, i32* %107, align 8, !dbg !1639, !tbaa !471
  %108 = load i32, i32* %59, align 4, !dbg !1639, !tbaa !471
  %109 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %66, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !1639
  store i32 %108, i32* %109, align 4, !dbg !1639, !tbaa !471
  %110 = load i8, i8* %60, align 4, !dbg !1639, !tbaa !471
  %111 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %66, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !1639
  store i8 %110, i8* %111, align 8, !dbg !1639, !tbaa !471
  br label %117, !dbg !1643

; <label>:112:                                    ; preds = %98
  %113 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %66, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !1644
  store i32 0, i32* %113, align 4, !dbg !1644, !tbaa !471
  %114 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %66, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !1644
  store i32 0, i32* %114, align 8, !dbg !1644, !tbaa !471
  %115 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %66, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !1644
  store i32 0, i32* %115, align 4, !dbg !1644, !tbaa !471
  %116 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %66, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !1644
  store i8 0, i8* %116, align 8, !dbg !1644, !tbaa !471
  br label %117

; <label>:117:                                    ; preds = %64, %76, %77, %82, %87, %92, %97, %112, %103
  %118 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %66, i64 0, i32 6, !dbg !1647
  %119 = load %struct.udp_pcb*, %struct.udp_pcb** %118, align 8, !dbg !1623, !tbaa !487
  %120 = icmp eq %struct.udp_pcb* %119, null, !dbg !1627
  br i1 %120, label %123, label %121, !dbg !1628, !llvm.loop !1648

; <label>:121:                                    ; preds = %117
  %122 = load i8, i8* %5, align 4, !dbg !1629, !tbaa !792
  br label %64, !dbg !1628

; <label>:123:                                    ; preds = %117, %52, %29, %2, %51, %47, %26, %20
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1650
  ret void, !dbg !1650
}

; Function Attrs: inlinehint noredzone nounwind
define internal i32 @uk_swrand_randr() #3 !dbg !285 {
  %1 = tail call i64 @ukplat_lcpu_save_irqf() #7, !dbg !1651
  %2 = tail call i32 @uk_swrand_randr_r(%struct.uk_swrand* nonnull @uk_swrand_def) #7, !dbg !1653
  tail call void @ukplat_lcpu_restore_irqf(i64 %1) #7, !dbg !1655
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1656
  ret i32 %2, !dbg !1656
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
!275 = !{i32 556556}
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
!320 = !{i32 -2146799726, i32 -2146799713, i32 -2146799688, i32 -2146799664, i32 -2146799639, i32 -2146799564, i32 -2146799539, i32 -2146799395, i32 -2146796302, i32 -2146796213, i32 -2146796092, i32 -2146795997, i32 -2146795896, i32 -2146795869, i32 -2146795786, i32 -2146795697, i32 -2146795576, i32 -2146795476, i32 -2146795370, i32 -2146795262, i32 -2146799112, i32 -2146799059, i32 -2146799028, i32 -2146798997, i32 -2146798976, i32 -2146798954, i32 -2146798905, i32 -2146798884, i32 -2146795179, i32 -2146795090, i32 -2146794969, i32 -2146794870, i32 -2146794764, i32 -2146794662, i32 -2146794629, i32 -2146794556, i32 -2146794488, i32 -2146798582, i32 -2146798523, i32 -2146798470, i32 -2146798439, i32 -2146798408, i32 -2146798387, i32 -2146798365, i32 -2146798316, i32 -2146798295, i32 -2146794437, i32 -2146794348, i32 -2146794227, i32 -2146794128, i32 -2146794022, i32 -2146793920, i32 -2146793887, i32 -2146793804, i32 -2146793715, i32 -2146793594, i32 -2146793494, i32 -2146793468, i32 -2146793365, i32 -2146793339, i32 -2146798037, i32 -2146797970, i32 -2146797945, i32 -2146797881, i32 -2146797799, i32 -2146797776, i32 -2146797751, i32 -2146797726}
!321 = !DILocation(line: 66, column: 2, scope: !322, inlinedAt: !266)
!322 = distinct !DILexicalBlock(scope: !323, file: !250, line: 66, column: 2)
!323 = distinct !DILexicalBlock(scope: !258, file: !250, line: 66, column: 2)
!324 = !{i32 -2146796779, i32 -2146796762}
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
!484 = !DILocation(line: 0, scope: !485)
!485 = distinct !DILexicalBlock(scope: !486, file: !3, line: 255, column: 3)
!486 = distinct !DILexicalBlock(scope: !333, file: !3, line: 255, column: 3)
!487 = !{!454, !454, i64 0}
!488 = !DILocation(line: 255, column: 28, scope: !485)
!489 = !DILocation(line: 255, column: 3, scope: !486)
!490 = !DILocation(line: 264, column: 15, scope: !491)
!491 = distinct !DILexicalBlock(scope: !492, file: !3, line: 264, column: 9)
!492 = distinct !DILexicalBlock(scope: !485, file: !3, line: 255, column: 54)
!493 = !{!494, !331, i64 66}
!494 = !{!"udp_pcb", !470, i64 0, !470, i64 24, !301, i64 48, !301, i64 49, !301, i64 50, !301, i64 51, !454, i64 56, !301, i64 64, !331, i64 66, !331, i64 68, !495, i64 72, !301, i64 76, !301, i64 77, !454, i64 80, !454, i64 88}
!495 = !{!"ip4_addr", !300, i64 0}
!496 = !DILocation(line: 264, column: 26, scope: !491)
!497 = !DILocation(line: 264, column: 35, scope: !491)
!498 = !DILocalVariable(name: "pcb", arg: 1, scope: !499, file: !3, line: 132, type: !169)
!499 = distinct !DISubprogram(name: "udp_input_local_match", scope: !3, file: !3, line: 132, type: !500, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !502)
!500 = !DISubroutineType(types: !501)
!501 = !{!134, !169, !336, !134}
!502 = !{!498, !503, !504}
!503 = !DILocalVariable(name: "inp", arg: 2, scope: !499, file: !3, line: 132, type: !336)
!504 = !DILocalVariable(name: "broadcast", arg: 3, scope: !499, file: !3, line: 132, type: !134)
!505 = !DILocation(line: 132, column: 39, scope: !499, inlinedAt: !506)
!506 = distinct !DILocation(line: 265, column: 10, scope: !491)
!507 = !DILocation(line: 132, column: 58, scope: !499, inlinedAt: !506)
!508 = !DILocation(line: 132, column: 68, scope: !499, inlinedAt: !506)
!509 = !DILocation(line: 141, column: 13, scope: !510, inlinedAt: !506)
!510 = distinct !DILexicalBlock(scope: !499, file: !3, line: 141, column: 7)
!511 = !{!494, !301, i64 48}
!512 = !DILocation(line: 141, column: 23, scope: !510, inlinedAt: !506)
!513 = !DILocation(line: 141, column: 42, scope: !510, inlinedAt: !506)
!514 = !DILocation(line: 142, column: 26, scope: !510, inlinedAt: !506)
!515 = !{!469, !454, i64 8}
!516 = !{!517, !301, i64 264}
!517 = !{!"netif", !454, i64 0, !470, i64 8, !470, i64 32, !470, i64 56, !301, i64 80, !301, i64 152, !301, i64 156, !301, i64 168, !454, i64 184, !454, i64 192, !454, i64 200, !454, i64 208, !454, i64 216, !454, i64 224, !454, i64 232, !301, i64 240, !331, i64 248, !331, i64 250, !331, i64 252, !301, i64 254, !301, i64 260, !301, i64 261, !301, i64 262, !301, i64 264, !301, i64 265, !301, i64 266, !454, i64 272}
!518 = !DILocation(line: 142, column: 23, scope: !510, inlinedAt: !506)
!519 = !DILocation(line: 141, column: 7, scope: !499, inlinedAt: !506)
!520 = !DILocation(line: 147, column: 7, scope: !521, inlinedAt: !506)
!521 = distinct !DILexicalBlock(scope: !499, file: !3, line: 147, column: 7)
!522 = !{!494, !301, i64 20}
!523 = !DILocation(line: 147, column: 7, scope: !499, inlinedAt: !506)
!524 = !DILocation(line: 157, column: 7, scope: !525, inlinedAt: !506)
!525 = distinct !DILexicalBlock(scope: !499, file: !3, line: 157, column: 7)
!526 = !DILocation(line: 157, column: 7, scope: !499, inlinedAt: !506)
!527 = !DILocation(line: 161, column: 9, scope: !528, inlinedAt: !506)
!528 = distinct !DILexicalBlock(scope: !525, file: !3, line: 157, column: 69)
!529 = !DILocation(line: 166, column: 13, scope: !530, inlinedAt: !506)
!530 = distinct !DILexicalBlock(scope: !531, file: !3, line: 166, column: 13)
!531 = distinct !DILexicalBlock(scope: !532, file: !3, line: 165, column: 7)
!532 = distinct !DILexicalBlock(scope: !533, file: !3, line: 161, column: 25)
!533 = distinct !DILexicalBlock(scope: !528, file: !3, line: 161, column: 9)
!534 = !DILocation(line: 167, column: 40, scope: !530, inlinedAt: !506)
!535 = !DILocation(line: 167, column: 45, scope: !530, inlinedAt: !506)
!536 = !DILocation(line: 166, column: 54, scope: !530, inlinedAt: !506)
!537 = !DILocation(line: 168, column: 13, scope: !530, inlinedAt: !506)
!538 = !DILocation(line: 166, column: 13, scope: !531, inlinedAt: !506)
!539 = !DILocation(line: 175, column: 11, scope: !540, inlinedAt: !506)
!540 = distinct !DILexicalBlock(scope: !533, file: !3, line: 175, column: 11)
!541 = !DILocation(line: 175, column: 41, scope: !540, inlinedAt: !506)
!542 = !DILocation(line: 175, column: 44, scope: !540, inlinedAt: !506)
!543 = !DILocation(line: 181, column: 1, scope: !499, inlinedAt: !506)
!544 = !DILocation(line: 266, column: 17, scope: !545)
!545 = distinct !DILexicalBlock(scope: !546, file: !3, line: 266, column: 11)
!546 = distinct !DILexicalBlock(scope: !491, file: !3, line: 265, column: 60)
!547 = !{!494, !301, i64 64}
!548 = !DILocation(line: 266, column: 23, scope: !545)
!549 = !DILocation(line: 266, column: 46, scope: !545)
!550 = !DILocation(line: 266, column: 11, scope: !546)
!551 = !DILocation(line: 267, column: 23, scope: !552)
!552 = distinct !DILexicalBlock(scope: !553, file: !3, line: 267, column: 13)
!553 = distinct !DILexicalBlock(scope: !545, file: !3, line: 266, column: 52)
!554 = !DILocation(line: 267, column: 13, scope: !553)
!555 = !DILocation(line: 271, column: 58, scope: !556)
!556 = distinct !DILexicalBlock(scope: !552, file: !3, line: 271, column: 20)
!557 = !DILocation(line: 271, column: 63, scope: !556)
!558 = !DILocation(line: 271, column: 30, scope: !556)
!559 = !DILocation(line: 273, column: 16, scope: !560)
!560 = distinct !DILexicalBlock(scope: !561, file: !3, line: 273, column: 15)
!561 = distinct !DILexicalBlock(scope: !556, file: !3, line: 271, column: 84)
!562 = !DILocation(line: 273, column: 50, scope: !560)
!563 = !DILocation(line: 273, column: 54, scope: !560)
!564 = !DILocation(line: 275, column: 17, scope: !565)
!565 = distinct !DILexicalBlock(scope: !566, file: !3, line: 275, column: 17)
!566 = distinct !DILexicalBlock(scope: !560, file: !3, line: 273, column: 121)
!567 = !DILocation(line: 273, column: 15, scope: !561)
!568 = !DILocation(line: 275, column: 45, scope: !565)
!569 = !DILocation(line: 275, column: 48, scope: !565)
!570 = !DILocation(line: 275, column: 17, scope: !566)
!571 = !DILocation(line: 283, column: 19, scope: !572)
!572 = distinct !DILexicalBlock(scope: !556, file: !3, line: 283, column: 18)
!573 = !DILocation(line: 283, column: 18, scope: !556)
!574 = !DILocation(line: 286, column: 9, scope: !575)
!575 = distinct !DILexicalBlock(scope: !572, file: !3, line: 283, column: 50)
!576 = !DILocation(line: 0, scope: !333)
!577 = !DILocation(line: 291, column: 17, scope: !578)
!578 = distinct !DILexicalBlock(scope: !546, file: !3, line: 291, column: 11)
!579 = !{!494, !331, i64 68}
!580 = !DILocation(line: 291, column: 29, scope: !578)
!581 = !DILocation(line: 291, column: 37, scope: !578)
!582 = !DILocation(line: 292, column: 12, scope: !578)
!583 = !{!494, !301, i64 44}
!584 = !DILocation(line: 292, column: 46, scope: !578)
!585 = !DILocation(line: 293, column: 12, scope: !578)
!586 = !{!469, !301, i64 56}
!587 = !DILocation(line: 291, column: 11, scope: !546)
!588 = !DILocation(line: 295, column: 18, scope: !589)
!589 = distinct !DILexicalBlock(scope: !590, file: !3, line: 295, column: 13)
!590 = distinct !DILexicalBlock(scope: !578, file: !3, line: 293, column: 66)
!591 = !DILocation(line: 295, column: 13, scope: !590)
!592 = !DILocation(line: 298, column: 29, scope: !593)
!593 = distinct !DILexicalBlock(scope: !589, file: !3, line: 295, column: 27)
!594 = !{!494, !454, i64 56}
!595 = !DILocation(line: 298, column: 17, scope: !593)
!596 = !DILocation(line: 298, column: 22, scope: !593)
!597 = !DILocation(line: 299, column: 21, scope: !593)
!598 = !DILocation(line: 300, column: 20, scope: !593)
!599 = !DILocation(line: 301, column: 9, scope: !593)
!600 = !DILocation(line: 302, column: 11, scope: !601)
!601 = distinct !DILexicalBlock(scope: !589, file: !3, line: 301, column: 16)
!602 = !{!445, !331, i64 142}
!603 = !DILocation(line: 255, column: 48, scope: !485)
!604 = distinct !{!604, !489, !605}
!605 = !DILocation(line: 309, column: 3, scope: !486)
!606 = !DILocation(line: 316, column: 11, scope: !607)
!607 = distinct !DILexicalBlock(scope: !333, file: !3, line: 316, column: 7)
!608 = !DILocation(line: 316, column: 7, scope: !333)
!609 = !DILocation(line: 320, column: 9, scope: !610)
!610 = distinct !DILexicalBlock(scope: !611, file: !3, line: 320, column: 9)
!611 = distinct !DILexicalBlock(scope: !607, file: !3, line: 318, column: 10)
!612 = !{!469, !454, i64 24}
!613 = !DILocation(line: 320, column: 9, scope: !611)
!614 = !DILocation(line: 321, column: 16, scope: !615)
!615 = distinct !DILexicalBlock(scope: !610, file: !3, line: 320, column: 29)
!616 = !DILocation(line: 325, column: 10, scope: !617)
!617 = distinct !DILexicalBlock(scope: !611, file: !3, line: 325, column: 9)
!618 = !DILocation(line: 325, column: 9, scope: !611)
!619 = !DILocation(line: 326, column: 16, scope: !620)
!620 = distinct !DILexicalBlock(scope: !617, file: !3, line: 325, column: 30)
!621 = !DILocation(line: 327, column: 5, scope: !620)
!622 = !DILocation(line: 0, scope: !620)
!623 = !DILocation(line: 331, column: 7, scope: !624)
!624 = distinct !DILexicalBlock(scope: !333, file: !3, line: 331, column: 7)
!625 = !DILocation(line: 331, column: 7, scope: !333)
!626 = !DILocation(line: 334, column: 5, scope: !627)
!627 = distinct !DILexicalBlock(scope: !628, file: !3, line: 334, column: 5)
!628 = distinct !DILexicalBlock(scope: !624, file: !3, line: 331, column: 15)
!629 = !{!517, !331, i64 248}
!630 = !DILocation(line: 334, column: 5, scope: !628)
!631 = !DILocation(line: 358, column: 21, scope: !632)
!632 = distinct !DILexicalBlock(scope: !633, file: !3, line: 358, column: 13)
!633 = distinct !DILexicalBlock(scope: !634, file: !3, line: 357, column: 7)
!634 = distinct !DILexicalBlock(scope: !627, file: !3, line: 334, column: 63)
!635 = !{!476, !331, i64 6}
!636 = !DILocation(line: 358, column: 28, scope: !632)
!637 = !DILocation(line: 358, column: 13, scope: !633)
!638 = !DILocation(line: 359, column: 52, scope: !639)
!639 = distinct !DILexicalBlock(scope: !640, file: !3, line: 359, column: 15)
!640 = distinct !DILexicalBlock(scope: !632, file: !3, line: 358, column: 34)
!641 = !{!453, !331, i64 16}
!642 = !DILocation(line: 359, column: 15, scope: !639)
!643 = !DILocation(line: 361, column: 56, scope: !639)
!644 = !DILocation(line: 359, column: 15, scope: !640)
!645 = !DILocation(line: 368, column: 9, scope: !646)
!646 = distinct !DILexicalBlock(scope: !628, file: !3, line: 368, column: 9)
!647 = !DILocation(line: 368, column: 9, scope: !628)
!648 = !DILocation(line: 370, column: 7, scope: !649)
!649 = distinct !DILexicalBlock(scope: !650, file: !3, line: 370, column: 7)
!650 = distinct !DILexicalBlock(scope: !651, file: !3, line: 370, column: 7)
!651 = distinct !DILexicalBlock(scope: !652, file: !3, line: 370, column: 7)
!652 = distinct !DILexicalBlock(scope: !653, file: !3, line: 370, column: 7)
!653 = distinct !DILexicalBlock(scope: !646, file: !3, line: 368, column: 42)
!654 = !DILocation(line: 370, column: 7, scope: !655)
!655 = distinct !DILexicalBlock(scope: !656, file: !3, line: 370, column: 7)
!656 = distinct !DILexicalBlock(scope: !657, file: !3, line: 370, column: 7)
!657 = distinct !DILexicalBlock(scope: !649, file: !3, line: 370, column: 7)
!658 = !DILocation(line: 377, column: 9, scope: !628)
!659 = !DILocation(line: 404, column: 16, scope: !660)
!660 = distinct !DILexicalBlock(scope: !661, file: !3, line: 404, column: 11)
!661 = distinct !DILexicalBlock(scope: !662, file: !3, line: 377, column: 22)
!662 = distinct !DILexicalBlock(scope: !628, file: !3, line: 377, column: 9)
!663 = !{!494, !454, i64 80}
!664 = !DILocation(line: 404, column: 21, scope: !660)
!665 = !DILocation(line: 404, column: 11, scope: !661)
!666 = !DILocation(line: 406, column: 24, scope: !667)
!667 = distinct !DILexicalBlock(scope: !660, file: !3, line: 404, column: 30)
!668 = !{!494, !454, i64 88}
!669 = !DILocation(line: 406, column: 9, scope: !667)
!670 = !DILocation(line: 412, column: 5, scope: !661)
!671 = !DILocation(line: 409, column: 9, scope: !672)
!672 = distinct !DILexicalBlock(scope: !660, file: !3, line: 407, column: 14)
!673 = !DILocation(line: 410, column: 9, scope: !672)
!674 = !DILocation(line: 418, column: 12, scope: !675)
!675 = distinct !DILexicalBlock(scope: !676, file: !3, line: 418, column: 11)
!676 = distinct !DILexicalBlock(scope: !662, file: !3, line: 412, column: 12)
!677 = !DILocation(line: 418, column: 22, scope: !675)
!678 = !DILocation(line: 418, column: 26, scope: !675)
!679 = !DILocation(line: 418, column: 11, scope: !676)
!680 = !DILocation(line: 420, column: 38, scope: !681)
!681 = distinct !DILexicalBlock(scope: !675, file: !3, line: 418, column: 71)
!682 = !{!469, !331, i64 32}
!683 = !DILocation(line: 420, column: 66, scope: !681)
!684 = !DILocation(line: 420, column: 9, scope: !681)
!685 = !DILocation(line: 421, column: 9, scope: !681)
!686 = !DILocation(line: 424, column: 7, scope: !676)
!687 = !{!445, !331, i64 136}
!688 = !DILocation(line: 425, column: 7, scope: !676)
!689 = !DILocation(line: 427, column: 7, scope: !676)
!690 = !DILocation(line: 430, column: 5, scope: !691)
!691 = distinct !DILexicalBlock(scope: !624, file: !3, line: 429, column: 10)
!692 = !DILocation(line: 439, column: 3, scope: !333)
!693 = !{!445, !331, i64 128}
!694 = !DILocation(line: 440, column: 3, scope: !333)
!695 = !DILocation(line: 442, column: 3, scope: !333)
!696 = !DILocation(line: 445, column: 1, scope: !333)
!697 = !DILocation(line: 194, column: 43, scope: !210)
!698 = !DILocation(line: 196, column: 2, scope: !210)
!699 = !DILocation(line: 196, column: 10, scope: !210)
!700 = !DILocation(line: 197, column: 2, scope: !210)
!701 = !DILocation(line: 198, column: 2, scope: !702)
!702 = distinct !DILexicalBlock(scope: !703, file: !211, line: 198, column: 2)
!703 = distinct !DILexicalBlock(scope: !210, file: !211, line: 198, column: 2)
!704 = !DILocation(line: 199, column: 2, scope: !210)
!705 = !DILocation(line: 200, column: 1, scope: !210)
!706 = distinct !DISubprogram(name: "udp_send", scope: !3, file: !3, line: 469, type: !707, isLocal: false, isDefinition: true, scopeLine: 470, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !709)
!707 = !DISubroutineType(types: !708)
!708 = !{!357, !169, !191}
!709 = !{!710, !711}
!710 = !DILocalVariable(name: "pcb", arg: 1, scope: !706, file: !3, line: 469, type: !169)
!711 = !DILocalVariable(name: "p", arg: 2, scope: !706, file: !3, line: 469, type: !191)
!712 = !DILocation(line: 469, column: 26, scope: !706)
!713 = !DILocation(line: 469, column: 44, scope: !706)
!714 = !DILocation(line: 471, column: 3, scope: !715)
!715 = distinct !DILexicalBlock(scope: !716, file: !3, line: 471, column: 3)
!716 = distinct !DILexicalBlock(scope: !706, file: !3, line: 471, column: 3)
!717 = !DILocation(line: 471, column: 3, scope: !716)
!718 = !DILocation(line: 471, column: 3, scope: !719)
!719 = distinct !DILexicalBlock(scope: !720, file: !3, line: 471, column: 3)
!720 = distinct !DILexicalBlock(scope: !715, file: !3, line: 471, column: 3)
!721 = !DILocation(line: 471, column: 3, scope: !722)
!722 = distinct !DILexicalBlock(scope: !723, file: !3, line: 471, column: 3)
!723 = distinct !DILexicalBlock(scope: !724, file: !3, line: 471, column: 3)
!724 = distinct !DILexicalBlock(scope: !719, file: !3, line: 471, column: 3)
!725 = !DILocation(line: 472, column: 3, scope: !726)
!726 = distinct !DILexicalBlock(scope: !727, file: !3, line: 472, column: 3)
!727 = distinct !DILexicalBlock(scope: !706, file: !3, line: 472, column: 3)
!728 = !DILocation(line: 472, column: 3, scope: !727)
!729 = !DILocation(line: 472, column: 3, scope: !730)
!730 = distinct !DILexicalBlock(scope: !731, file: !3, line: 472, column: 3)
!731 = distinct !DILexicalBlock(scope: !726, file: !3, line: 472, column: 3)
!732 = !DILocation(line: 472, column: 3, scope: !733)
!733 = distinct !DILexicalBlock(scope: !734, file: !3, line: 472, column: 3)
!734 = distinct !DILexicalBlock(scope: !735, file: !3, line: 472, column: 3)
!735 = distinct !DILexicalBlock(scope: !730, file: !3, line: 472, column: 3)
!736 = !DILocation(line: 474, column: 7, scope: !737)
!737 = distinct !DILexicalBlock(scope: !706, file: !3, line: 474, column: 7)
!738 = !DILocation(line: 474, column: 7, scope: !706)
!739 = !DILocation(line: 479, column: 51, scope: !706)
!740 = !DILocation(line: 479, column: 10, scope: !706)
!741 = !DILocation(line: 479, column: 3, scope: !706)
!742 = !DILocation(line: 0, scope: !706)
!743 = !DILocation(line: 480, column: 1, scope: !706)
!744 = distinct !DISubprogram(name: "udp_sendto", scope: !3, file: !3, line: 522, type: !745, isLocal: false, isDefinition: true, scopeLine: 524, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !747)
!745 = !DISubroutineType(types: !746)
!746 = !{!357, !169, !191, !152, !100}
!747 = !{!748, !749, !750, !751, !752}
!748 = !DILocalVariable(name: "pcb", arg: 1, scope: !744, file: !3, line: 522, type: !169)
!749 = !DILocalVariable(name: "p", arg: 2, scope: !744, file: !3, line: 522, type: !191)
!750 = !DILocalVariable(name: "dst_ip", arg: 3, scope: !744, file: !3, line: 523, type: !152)
!751 = !DILocalVariable(name: "dst_port", arg: 4, scope: !744, file: !3, line: 523, type: !100)
!752 = !DILocalVariable(name: "netif", scope: !744, file: !3, line: 536, type: !336)
!753 = !DILocation(line: 522, column: 28, scope: !744)
!754 = !DILocation(line: 522, column: 46, scope: !744)
!755 = !DILocation(line: 523, column: 29, scope: !744)
!756 = !DILocation(line: 523, column: 43, scope: !744)
!757 = !DILocation(line: 538, column: 3, scope: !758)
!758 = distinct !DILexicalBlock(scope: !759, file: !3, line: 538, column: 3)
!759 = distinct !DILexicalBlock(scope: !744, file: !3, line: 538, column: 3)
!760 = !DILocation(line: 538, column: 3, scope: !759)
!761 = !DILocation(line: 538, column: 3, scope: !762)
!762 = distinct !DILexicalBlock(scope: !763, file: !3, line: 538, column: 3)
!763 = distinct !DILexicalBlock(scope: !758, file: !3, line: 538, column: 3)
!764 = !DILocation(line: 538, column: 3, scope: !765)
!765 = distinct !DILexicalBlock(scope: !766, file: !3, line: 538, column: 3)
!766 = distinct !DILexicalBlock(scope: !767, file: !3, line: 538, column: 3)
!767 = distinct !DILexicalBlock(scope: !762, file: !3, line: 538, column: 3)
!768 = !DILocation(line: 539, column: 3, scope: !769)
!769 = distinct !DILexicalBlock(scope: !770, file: !3, line: 539, column: 3)
!770 = distinct !DILexicalBlock(scope: !744, file: !3, line: 539, column: 3)
!771 = !DILocation(line: 539, column: 3, scope: !770)
!772 = !DILocation(line: 539, column: 3, scope: !773)
!773 = distinct !DILexicalBlock(scope: !774, file: !3, line: 539, column: 3)
!774 = distinct !DILexicalBlock(scope: !769, file: !3, line: 539, column: 3)
!775 = !DILocation(line: 539, column: 3, scope: !776)
!776 = distinct !DILexicalBlock(scope: !777, file: !3, line: 539, column: 3)
!777 = distinct !DILexicalBlock(scope: !778, file: !3, line: 539, column: 3)
!778 = distinct !DILexicalBlock(scope: !773, file: !3, line: 539, column: 3)
!779 = !DILocation(line: 540, column: 3, scope: !780)
!780 = distinct !DILexicalBlock(scope: !781, file: !3, line: 540, column: 3)
!781 = distinct !DILexicalBlock(scope: !744, file: !3, line: 540, column: 3)
!782 = !DILocation(line: 540, column: 3, scope: !781)
!783 = !DILocation(line: 540, column: 3, scope: !784)
!784 = distinct !DILexicalBlock(scope: !785, file: !3, line: 540, column: 3)
!785 = distinct !DILexicalBlock(scope: !780, file: !3, line: 540, column: 3)
!786 = !DILocation(line: 540, column: 3, scope: !787)
!787 = distinct !DILexicalBlock(scope: !788, file: !3, line: 540, column: 3)
!788 = distinct !DILexicalBlock(scope: !789, file: !3, line: 540, column: 3)
!789 = distinct !DILexicalBlock(scope: !784, file: !3, line: 540, column: 3)
!790 = !DILocation(line: 542, column: 8, scope: !791)
!791 = distinct !DILexicalBlock(scope: !744, file: !3, line: 542, column: 7)
!792 = !{!470, !301, i64 20}
!793 = !DILocation(line: 542, column: 7, scope: !744)
!794 = !DILocation(line: 548, column: 12, scope: !795)
!795 = distinct !DILexicalBlock(scope: !744, file: !3, line: 548, column: 7)
!796 = !DILocation(line: 548, column: 22, scope: !795)
!797 = !DILocation(line: 548, column: 7, scope: !744)
!798 = !DILocation(line: 549, column: 13, scope: !799)
!799 = distinct !DILexicalBlock(scope: !795, file: !3, line: 548, column: 41)
!800 = !DILocation(line: 536, column: 17, scope: !744)
!801 = !DILocation(line: 550, column: 3, scope: !799)
!802 = !DILocation(line: 553, column: 9, scope: !803)
!803 = distinct !DILexicalBlock(scope: !804, file: !3, line: 553, column: 9)
!804 = distinct !DILexicalBlock(scope: !795, file: !3, line: 550, column: 10)
!805 = !DILocation(line: 553, column: 9, scope: !804)
!806 = !DILocation(line: 560, column: 16, scope: !807)
!807 = distinct !DILexicalBlock(scope: !808, file: !3, line: 560, column: 11)
!808 = distinct !DILexicalBlock(scope: !803, file: !3, line: 553, column: 38)
!809 = !{!494, !301, i64 76}
!810 = !DILocation(line: 560, column: 30, scope: !807)
!811 = !DILocation(line: 560, column: 11, scope: !808)
!812 = !DILocation(line: 561, column: 17, scope: !813)
!813 = distinct !DILexicalBlock(scope: !807, file: !3, line: 560, column: 49)
!814 = !DILocation(line: 562, column: 7, scope: !813)
!815 = !DILocation(line: 566, column: 13, scope: !816)
!816 = distinct !DILexicalBlock(scope: !807, file: !3, line: 566, column: 13)
!817 = !DILocation(line: 566, column: 13, scope: !807)
!818 = !DILocation(line: 574, column: 16, scope: !819)
!819 = distinct !DILexicalBlock(scope: !820, file: !3, line: 574, column: 15)
!820 = distinct !DILexicalBlock(scope: !816, file: !3, line: 568, column: 9)
!821 = !{!494, !300, i64 72}
!822 = !DILocation(line: 575, column: 16, scope: !819)
!823 = !DILocation(line: 574, column: 51, scope: !819)
!824 = !DILocation(line: 576, column: 21, scope: !825)
!825 = distinct !DILexicalBlock(scope: !819, file: !3, line: 575, column: 67)
!826 = !DILocation(line: 577, column: 11, scope: !825)
!827 = !DILocation(line: 0, scope: !804)
!828 = !DILocation(line: 582, column: 15, scope: !829)
!829 = distinct !DILexicalBlock(scope: !804, file: !3, line: 582, column: 9)
!830 = !DILocation(line: 582, column: 9, scope: !804)
!831 = !DILocation(line: 586, column: 15, scope: !832)
!832 = distinct !DILexicalBlock(scope: !829, file: !3, line: 584, column: 5)
!833 = !DILocation(line: 0, scope: !813)
!834 = !DILocation(line: 591, column: 13, scope: !835)
!835 = distinct !DILexicalBlock(scope: !744, file: !3, line: 591, column: 7)
!836 = !DILocation(line: 591, column: 7, scope: !744)
!837 = !DILocation(line: 595, column: 5, scope: !838)
!838 = distinct !DILexicalBlock(scope: !835, file: !3, line: 591, column: 22)
!839 = !{!445, !331, i64 134}
!840 = !DILocation(line: 596, column: 5, scope: !838)
!841 = !DILocation(line: 601, column: 10, scope: !744)
!842 = !DILocation(line: 601, column: 3, scope: !744)
!843 = !DILocation(line: 0, scope: !844)
!844 = distinct !DILexicalBlock(scope: !791, file: !3, line: 542, column: 48)
!845 = !DILocation(line: 603, column: 1, scope: !744)
!846 = distinct !DISubprogram(name: "udp_sendto_if", scope: !3, file: !3, line: 626, type: !847, isLocal: false, isDefinition: true, scopeLine: 628, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !849)
!847 = !DISubroutineType(types: !848)
!848 = !{!357, !169, !191, !152, !100, !336}
!849 = !{!850, !851, !852, !853, !854, !855}
!850 = !DILocalVariable(name: "pcb", arg: 1, scope: !846, file: !3, line: 626, type: !169)
!851 = !DILocalVariable(name: "p", arg: 2, scope: !846, file: !3, line: 626, type: !191)
!852 = !DILocalVariable(name: "dst_ip", arg: 3, scope: !846, file: !3, line: 627, type: !152)
!853 = !DILocalVariable(name: "dst_port", arg: 4, scope: !846, file: !3, line: 627, type: !100)
!854 = !DILocalVariable(name: "netif", arg: 5, scope: !846, file: !3, line: 627, type: !336)
!855 = !DILocalVariable(name: "src_ip", scope: !846, file: !3, line: 640, type: !152)
!856 = !DILocation(line: 626, column: 31, scope: !846)
!857 = !DILocation(line: 626, column: 49, scope: !846)
!858 = !DILocation(line: 627, column: 32, scope: !846)
!859 = !DILocation(line: 627, column: 46, scope: !846)
!860 = !DILocation(line: 627, column: 70, scope: !846)
!861 = !DILocation(line: 642, column: 3, scope: !862)
!862 = distinct !DILexicalBlock(scope: !863, file: !3, line: 642, column: 3)
!863 = distinct !DILexicalBlock(scope: !846, file: !3, line: 642, column: 3)
!864 = !DILocation(line: 642, column: 3, scope: !863)
!865 = !DILocation(line: 642, column: 3, scope: !866)
!866 = distinct !DILexicalBlock(scope: !867, file: !3, line: 642, column: 3)
!867 = distinct !DILexicalBlock(scope: !862, file: !3, line: 642, column: 3)
!868 = !DILocation(line: 642, column: 3, scope: !869)
!869 = distinct !DILexicalBlock(scope: !870, file: !3, line: 642, column: 3)
!870 = distinct !DILexicalBlock(scope: !871, file: !3, line: 642, column: 3)
!871 = distinct !DILexicalBlock(scope: !866, file: !3, line: 642, column: 3)
!872 = !DILocation(line: 643, column: 3, scope: !873)
!873 = distinct !DILexicalBlock(scope: !874, file: !3, line: 643, column: 3)
!874 = distinct !DILexicalBlock(scope: !846, file: !3, line: 643, column: 3)
!875 = !DILocation(line: 643, column: 3, scope: !874)
!876 = !DILocation(line: 643, column: 3, scope: !877)
!877 = distinct !DILexicalBlock(scope: !878, file: !3, line: 643, column: 3)
!878 = distinct !DILexicalBlock(scope: !873, file: !3, line: 643, column: 3)
!879 = !DILocation(line: 643, column: 3, scope: !880)
!880 = distinct !DILexicalBlock(scope: !881, file: !3, line: 643, column: 3)
!881 = distinct !DILexicalBlock(scope: !882, file: !3, line: 643, column: 3)
!882 = distinct !DILexicalBlock(scope: !877, file: !3, line: 643, column: 3)
!883 = !DILocation(line: 644, column: 3, scope: !884)
!884 = distinct !DILexicalBlock(scope: !885, file: !3, line: 644, column: 3)
!885 = distinct !DILexicalBlock(scope: !846, file: !3, line: 644, column: 3)
!886 = !DILocation(line: 644, column: 3, scope: !885)
!887 = !DILocation(line: 644, column: 3, scope: !888)
!888 = distinct !DILexicalBlock(scope: !889, file: !3, line: 644, column: 3)
!889 = distinct !DILexicalBlock(scope: !884, file: !3, line: 644, column: 3)
!890 = !DILocation(line: 644, column: 3, scope: !891)
!891 = distinct !DILexicalBlock(scope: !892, file: !3, line: 644, column: 3)
!892 = distinct !DILexicalBlock(scope: !893, file: !3, line: 644, column: 3)
!893 = distinct !DILexicalBlock(scope: !888, file: !3, line: 644, column: 3)
!894 = !DILocation(line: 645, column: 3, scope: !895)
!895 = distinct !DILexicalBlock(scope: !896, file: !3, line: 645, column: 3)
!896 = distinct !DILexicalBlock(scope: !846, file: !3, line: 645, column: 3)
!897 = !DILocation(line: 645, column: 3, scope: !896)
!898 = !DILocation(line: 645, column: 3, scope: !899)
!899 = distinct !DILexicalBlock(scope: !900, file: !3, line: 645, column: 3)
!900 = distinct !DILexicalBlock(scope: !895, file: !3, line: 645, column: 3)
!901 = !DILocation(line: 645, column: 3, scope: !902)
!902 = distinct !DILexicalBlock(scope: !903, file: !3, line: 645, column: 3)
!903 = distinct !DILexicalBlock(scope: !904, file: !3, line: 645, column: 3)
!904 = distinct !DILexicalBlock(scope: !899, file: !3, line: 645, column: 3)
!905 = !DILocation(line: 647, column: 8, scope: !906)
!906 = distinct !DILexicalBlock(scope: !846, file: !3, line: 647, column: 7)
!907 = !DILocation(line: 0, scope: !906)
!908 = !DILocation(line: 647, column: 7, scope: !846)
!909 = !DILocation(line: 653, column: 7, scope: !910)
!910 = distinct !DILexicalBlock(scope: !846, file: !3, line: 653, column: 7)
!911 = !DILocation(line: 653, column: 7, scope: !846)
!912 = !DILocation(line: 654, column: 9, scope: !913)
!913 = distinct !DILexicalBlock(scope: !914, file: !3, line: 654, column: 9)
!914 = distinct !DILexicalBlock(scope: !910, file: !3, line: 653, column: 25)
!915 = !DILocation(line: 654, column: 50, scope: !913)
!916 = !DILocation(line: 655, column: 9, scope: !913)
!917 = !DILocation(line: 654, column: 9, scope: !914)
!918 = !DILocation(line: 656, column: 49, scope: !919)
!919 = distinct !DILexicalBlock(scope: !913, file: !3, line: 655, column: 57)
!920 = !DILocation(line: 656, column: 16, scope: !919)
!921 = !DILocation(line: 640, column: 20, scope: !846)
!922 = !DILocation(line: 657, column: 18, scope: !923)
!923 = distinct !DILexicalBlock(scope: !919, file: !3, line: 657, column: 11)
!924 = !DILocation(line: 657, column: 11, scope: !919)
!925 = !DILocation(line: 663, column: 11, scope: !926)
!926 = distinct !DILexicalBlock(scope: !927, file: !3, line: 663, column: 11)
!927 = distinct !DILexicalBlock(scope: !913, file: !3, line: 661, column: 12)
!928 = !DILocation(line: 663, column: 69, scope: !926)
!929 = !DILocation(line: 663, column: 11, scope: !927)
!930 = !DILocation(line: 675, column: 9, scope: !931)
!931 = distinct !DILexicalBlock(scope: !910, file: !3, line: 675, column: 9)
!932 = !DILocation(line: 676, column: 9, scope: !931)
!933 = !DILocation(line: 675, column: 50, scope: !931)
!934 = !DILocation(line: 679, column: 16, scope: !935)
!935 = distinct !DILexicalBlock(scope: !931, file: !3, line: 676, column: 57)
!936 = !DILocation(line: 680, column: 5, scope: !935)
!937 = !DILocation(line: 683, column: 12, scope: !938)
!938 = distinct !DILexicalBlock(scope: !939, file: !3, line: 683, column: 11)
!939 = distinct !DILexicalBlock(scope: !931, file: !3, line: 680, column: 12)
!940 = !DILocation(line: 683, column: 11, scope: !939)
!941 = !DILocation(line: 0, scope: !939)
!942 = !DILocation(line: 694, column: 10, scope: !846)
!943 = !DILocation(line: 694, column: 3, scope: !846)
!944 = !DILocation(line: 0, scope: !945)
!945 = distinct !DILexicalBlock(scope: !906, file: !3, line: 647, column: 48)
!946 = !DILocation(line: 696, column: 1, scope: !846)
!947 = distinct !DISubprogram(name: "udp_sendto_if_src", scope: !3, file: !3, line: 701, type: !948, isLocal: false, isDefinition: true, scopeLine: 703, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !950)
!948 = !DISubroutineType(types: !949)
!949 = !{!357, !169, !191, !152, !100, !336, !152}
!950 = !{!951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962}
!951 = !DILocalVariable(name: "pcb", arg: 1, scope: !947, file: !3, line: 701, type: !169)
!952 = !DILocalVariable(name: "p", arg: 2, scope: !947, file: !3, line: 701, type: !191)
!953 = !DILocalVariable(name: "dst_ip", arg: 3, scope: !947, file: !3, line: 702, type: !152)
!954 = !DILocalVariable(name: "dst_port", arg: 4, scope: !947, file: !3, line: 702, type: !100)
!955 = !DILocalVariable(name: "netif", arg: 5, scope: !947, file: !3, line: 702, type: !336)
!956 = !DILocalVariable(name: "src_ip", arg: 6, scope: !947, file: !3, line: 702, type: !152)
!957 = !DILocalVariable(name: "udphdr", scope: !947, file: !3, line: 715, type: !108)
!958 = !DILocalVariable(name: "err", scope: !947, file: !3, line: 716, type: !357)
!959 = !DILocalVariable(name: "q", scope: !947, file: !3, line: 717, type: !191)
!960 = !DILocalVariable(name: "ip_proto", scope: !947, file: !3, line: 718, type: !134)
!961 = !DILocalVariable(name: "ttl", scope: !947, file: !3, line: 719, type: !134)
!962 = !DILocalVariable(name: "udpchksum", scope: !963, file: !3, line: 858, type: !100)
!963 = distinct !DILexicalBlock(scope: !964, file: !3, line: 857, column: 71)
!964 = distinct !DILexicalBlock(scope: !965, file: !3, line: 857, column: 11)
!965 = distinct !DILexicalBlock(scope: !966, file: !3, line: 855, column: 63)
!966 = distinct !DILexicalBlock(scope: !967, file: !3, line: 855, column: 5)
!967 = distinct !DILexicalBlock(scope: !947, file: !3, line: 850, column: 3)
!968 = !DILocation(line: 701, column: 35, scope: !947)
!969 = !DILocation(line: 701, column: 53, scope: !947)
!970 = !DILocation(line: 702, column: 36, scope: !947)
!971 = !DILocation(line: 702, column: 50, scope: !947)
!972 = !DILocation(line: 702, column: 74, scope: !947)
!973 = !DILocation(line: 702, column: 98, scope: !947)
!974 = !DILocation(line: 723, column: 3, scope: !975)
!975 = distinct !DILexicalBlock(scope: !976, file: !3, line: 723, column: 3)
!976 = distinct !DILexicalBlock(scope: !947, file: !3, line: 723, column: 3)
!977 = !DILocation(line: 723, column: 3, scope: !976)
!978 = !DILocation(line: 723, column: 3, scope: !979)
!979 = distinct !DILexicalBlock(scope: !980, file: !3, line: 723, column: 3)
!980 = distinct !DILexicalBlock(scope: !975, file: !3, line: 723, column: 3)
!981 = !DILocation(line: 723, column: 3, scope: !982)
!982 = distinct !DILexicalBlock(scope: !983, file: !3, line: 723, column: 3)
!983 = distinct !DILexicalBlock(scope: !984, file: !3, line: 723, column: 3)
!984 = distinct !DILexicalBlock(scope: !979, file: !3, line: 723, column: 3)
!985 = !DILocation(line: 724, column: 3, scope: !986)
!986 = distinct !DILexicalBlock(scope: !987, file: !3, line: 724, column: 3)
!987 = distinct !DILexicalBlock(scope: !947, file: !3, line: 724, column: 3)
!988 = !DILocation(line: 724, column: 3, scope: !987)
!989 = !DILocation(line: 724, column: 3, scope: !990)
!990 = distinct !DILexicalBlock(scope: !991, file: !3, line: 724, column: 3)
!991 = distinct !DILexicalBlock(scope: !986, file: !3, line: 724, column: 3)
!992 = !DILocation(line: 724, column: 3, scope: !993)
!993 = distinct !DILexicalBlock(scope: !994, file: !3, line: 724, column: 3)
!994 = distinct !DILexicalBlock(scope: !995, file: !3, line: 724, column: 3)
!995 = distinct !DILexicalBlock(scope: !990, file: !3, line: 724, column: 3)
!996 = !DILocation(line: 725, column: 3, scope: !997)
!997 = distinct !DILexicalBlock(scope: !998, file: !3, line: 725, column: 3)
!998 = distinct !DILexicalBlock(scope: !947, file: !3, line: 725, column: 3)
!999 = !DILocation(line: 725, column: 3, scope: !998)
!1000 = !DILocation(line: 725, column: 3, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !1002, file: !3, line: 725, column: 3)
!1002 = distinct !DILexicalBlock(scope: !997, file: !3, line: 725, column: 3)
!1003 = !DILocation(line: 725, column: 3, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 725, column: 3)
!1005 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 725, column: 3)
!1006 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 725, column: 3)
!1007 = !DILocation(line: 726, column: 3, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 726, column: 3)
!1009 = distinct !DILexicalBlock(scope: !947, file: !3, line: 726, column: 3)
!1010 = !DILocation(line: 726, column: 3, scope: !1009)
!1011 = !DILocation(line: 726, column: 3, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1013, file: !3, line: 726, column: 3)
!1013 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 726, column: 3)
!1014 = !DILocation(line: 726, column: 3, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1016, file: !3, line: 726, column: 3)
!1016 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 726, column: 3)
!1017 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 726, column: 3)
!1018 = !DILocation(line: 727, column: 3, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1020, file: !3, line: 727, column: 3)
!1020 = distinct !DILexicalBlock(scope: !947, file: !3, line: 727, column: 3)
!1021 = !DILocation(line: 727, column: 3, scope: !1020)
!1022 = !DILocation(line: 727, column: 3, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 727, column: 3)
!1024 = distinct !DILexicalBlock(scope: !1019, file: !3, line: 727, column: 3)
!1025 = !DILocation(line: 727, column: 3, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1027, file: !3, line: 727, column: 3)
!1027 = distinct !DILexicalBlock(scope: !1028, file: !3, line: 727, column: 3)
!1028 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 727, column: 3)
!1029 = !DILocation(line: 729, column: 8, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !947, file: !3, line: 729, column: 7)
!1031 = !DILocation(line: 729, column: 47, scope: !1030)
!1032 = !DILocation(line: 730, column: 8, scope: !1030)
!1033 = !DILocation(line: 729, column: 7, scope: !947)
!1034 = !DILocation(line: 748, column: 12, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !947, file: !3, line: 748, column: 7)
!1036 = !DILocation(line: 748, column: 23, scope: !1035)
!1037 = !DILocation(line: 748, column: 7, scope: !947)
!1038 = !DILocation(line: 750, column: 11, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 748, column: 29)
!1040 = !DILocation(line: 716, column: 9, scope: !947)
!1041 = !DILocation(line: 751, column: 13, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 751, column: 9)
!1043 = !DILocation(line: 751, column: 9, scope: !1039)
!1044 = !DILocation(line: 758, column: 18, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !947, file: !3, line: 758, column: 7)
!1046 = !DILocation(line: 758, column: 38, scope: !1045)
!1047 = !DILocation(line: 758, column: 7, scope: !947)
!1048 = !DILocation(line: 762, column: 7, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !947, file: !3, line: 762, column: 7)
!1050 = !DILocation(line: 762, column: 7, scope: !947)
!1051 = !DILocation(line: 764, column: 9, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1049, file: !3, line: 762, column: 37)
!1053 = !DILocation(line: 717, column: 16, scope: !947)
!1054 = !DILocation(line: 766, column: 11, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 766, column: 9)
!1056 = !DILocation(line: 766, column: 9, scope: !1052)
!1057 = !DILocation(line: 770, column: 12, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 770, column: 9)
!1059 = !DILocation(line: 770, column: 20, scope: !1058)
!1060 = !DILocation(line: 770, column: 9, scope: !1052)
!1061 = !DILocation(line: 772, column: 7, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1058, file: !3, line: 770, column: 26)
!1063 = !DILocation(line: 773, column: 5, scope: !1062)
!1064 = !DILocation(line: 0, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1049, file: !3, line: 777, column: 10)
!1066 = !DILocation(line: 783, column: 3, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1068, file: !3, line: 783, column: 3)
!1068 = distinct !DILexicalBlock(scope: !947, file: !3, line: 783, column: 3)
!1069 = !DILocation(line: 783, column: 3, scope: !1068)
!1070 = !DILocation(line: 783, column: 3, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1072, file: !3, line: 783, column: 3)
!1072 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 783, column: 3)
!1073 = !DILocation(line: 783, column: 3, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 783, column: 3)
!1075 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 783, column: 3)
!1076 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 783, column: 3)
!1077 = !DILocation(line: 786, column: 33, scope: !947)
!1078 = !DILocation(line: 715, column: 19, scope: !947)
!1079 = !DILocation(line: 787, column: 33, scope: !947)
!1080 = !DILocation(line: 787, column: 17, scope: !947)
!1081 = !DILocation(line: 787, column: 11, scope: !947)
!1082 = !DILocation(line: 787, column: 15, scope: !947)
!1083 = !DILocation(line: 788, column: 18, scope: !947)
!1084 = !DILocation(line: 788, column: 11, scope: !947)
!1085 = !DILocation(line: 788, column: 16, scope: !947)
!1086 = !DILocation(line: 790, column: 11, scope: !947)
!1087 = !DILocation(line: 790, column: 18, scope: !947)
!1088 = !DILocation(line: 794, column: 14, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !947, file: !3, line: 794, column: 7)
!1090 = !DILocation(line: 794, column: 20, scope: !1089)
!1091 = !DILocation(line: 794, column: 48, scope: !1089)
!1092 = !DILocation(line: 794, column: 54, scope: !1089)
!1093 = !DILocation(line: 794, column: 57, scope: !1089)
!1094 = !DILocation(line: 794, column: 7, scope: !947)
!1095 = !DILocation(line: 795, column: 8, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1089, file: !3, line: 794, column: 86)
!1097 = !DILocation(line: 795, column: 14, scope: !1096)
!1098 = !{!453, !301, i64 21}
!1099 = !DILocation(line: 796, column: 3, scope: !1096)
!1100 = !DILocation(line: 852, column: 33, scope: !967)
!1101 = !DILocation(line: 852, column: 19, scope: !967)
!1102 = !DILocation(line: 852, column: 13, scope: !967)
!1103 = !DILocation(line: 852, column: 17, scope: !967)
!1104 = !{!476, !331, i64 4}
!1105 = !DILocation(line: 855, column: 5, scope: !966)
!1106 = !DILocation(line: 0, scope: !964)
!1107 = !DILocation(line: 855, column: 5, scope: !967)
!1108 = !DILocation(line: 857, column: 11, scope: !964)
!1109 = !DILocation(line: 857, column: 28, scope: !964)
!1110 = !DILocation(line: 857, column: 37, scope: !964)
!1111 = !DILocation(line: 857, column: 43, scope: !964)
!1112 = !DILocation(line: 857, column: 65, scope: !964)
!1113 = !DILocation(line: 857, column: 11, scope: !965)
!1114 = !DILocation(line: 869, column: 60, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !963, file: !3, line: 868, column: 9)
!1116 = !DILocation(line: 869, column: 23, scope: !1115)
!1117 = !DILocation(line: 858, column: 15, scope: !963)
!1118 = !DILocation(line: 874, column: 23, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !963, file: !3, line: 874, column: 13)
!1120 = !DILocation(line: 874, column: 13, scope: !963)
!1121 = !DILocation(line: 877, column: 24, scope: !963)
!1122 = !DILocation(line: 878, column: 7, scope: !963)
!1123 = !DILocation(line: 718, column: 8, scope: !947)
!1124 = !DILocation(line: 886, column: 10, scope: !947)
!1125 = !DILocation(line: 886, column: 40, scope: !947)
!1126 = !DILocation(line: 886, column: 74, scope: !947)
!1127 = !DILocation(line: 0, scope: !947)
!1128 = !DILocation(line: 719, column: 8, scope: !947)
!1129 = !DILocation(line: 895, column: 9, scope: !947)
!1130 = !{!494, !301, i64 50}
!1131 = !DILocation(line: 902, column: 9, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !947, file: !3, line: 902, column: 7)
!1133 = !DILocation(line: 902, column: 7, scope: !947)
!1134 = !DILocation(line: 904, column: 5, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1132, file: !3, line: 902, column: 15)
!1136 = !DILocation(line: 907, column: 3, scope: !1135)
!1137 = !DILocation(line: 909, column: 3, scope: !947)
!1138 = !{!445, !331, i64 120}
!1139 = !DILocation(line: 910, column: 3, scope: !947)
!1140 = !DILocation(line: 0, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 730, column: 48)
!1142 = !DILocation(line: 911, column: 1, scope: !947)
!1143 = distinct !DISubprogram(name: "udp_bind", scope: !3, file: !3, line: 934, type: !1144, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1146)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!357, !169, !152, !100}
!1146 = !{!1147, !1148, !1149, !1150, !1151, !1152, !1153}
!1147 = !DILocalVariable(name: "pcb", arg: 1, scope: !1143, file: !3, line: 934, type: !169)
!1148 = !DILocalVariable(name: "ipaddr", arg: 2, scope: !1143, file: !3, line: 934, type: !152)
!1149 = !DILocalVariable(name: "port", arg: 3, scope: !1143, file: !3, line: 934, type: !100)
!1150 = !DILocalVariable(name: "ipcb", scope: !1143, file: !3, line: 936, type: !169)
!1151 = !DILocalVariable(name: "rebind", scope: !1143, file: !3, line: 937, type: !134)
!1152 = !DILocalVariable(name: "zoned_ipaddr", scope: !1143, file: !3, line: 939, type: !154)
!1153 = !DILocalVariable(name: "selected_netif", scope: !1154, file: !3, line: 976, type: !336)
!1154 = distinct !DILexicalBlock(scope: !1155, file: !3, line: 976, column: 5)
!1155 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 974, column: 79)
!1156 = distinct !DILexicalBlock(scope: !1143, file: !3, line: 974, column: 7)
!1157 = !DILocation(line: 934, column: 26, scope: !1143)
!1158 = !DILocation(line: 934, column: 48, scope: !1143)
!1159 = !DILocation(line: 934, column: 62, scope: !1143)
!1160 = !DILocation(line: 939, column: 3, scope: !1143)
!1161 = !DILocation(line: 946, column: 14, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1143, file: !3, line: 946, column: 7)
!1163 = !DILocation(line: 946, column: 7, scope: !1143)
!1164 = !DILocation(line: 953, column: 3, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1166, file: !3, line: 953, column: 3)
!1166 = distinct !DILexicalBlock(scope: !1143, file: !3, line: 953, column: 3)
!1167 = !DILocation(line: 953, column: 3, scope: !1166)
!1168 = !DILocation(line: 0, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 961, column: 3)
!1170 = distinct !DILexicalBlock(scope: !1143, file: !3, line: 961, column: 3)
!1171 = !DILocation(line: 936, column: 19, scope: !1143)
!1172 = !DILocation(line: 961, column: 30, scope: !1169)
!1173 = !DILocation(line: 961, column: 3, scope: !1170)
!1174 = !DILocation(line: 953, column: 3, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 953, column: 3)
!1176 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 953, column: 3)
!1177 = !DILocation(line: 953, column: 3, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 953, column: 3)
!1179 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 953, column: 3)
!1180 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 953, column: 3)
!1181 = !DILocation(line: 961, column: 52, scope: !1169)
!1182 = distinct !{!1182, !1173, !1183}
!1183 = !DILocation(line: 967, column: 3, scope: !1170)
!1184 = !DILocation(line: 963, column: 13, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 963, column: 9)
!1186 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 961, column: 58)
!1187 = !DILocation(line: 963, column: 9, scope: !1186)
!1188 = !DILocation(line: 974, column: 7, scope: !1156)
!1189 = !DILocation(line: 974, column: 24, scope: !1156)
!1190 = !DILocation(line: 974, column: 27, scope: !1156)
!1191 = !DILocation(line: 975, column: 5, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 975, column: 5)
!1193 = distinct !DILexicalBlock(scope: !1155, file: !3, line: 975, column: 5)
!1194 = !DILocation(line: 975, column: 5, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 975, column: 5)
!1196 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 975, column: 5)
!1197 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 975, column: 5)
!1198 = !DILocation(line: 976, column: 5, scope: !1154)
!1199 = !DILocation(line: 976, column: 5, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 976, column: 5)
!1201 = !DILocation(line: 976, column: 5, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1200, file: !3, line: 976, column: 5)
!1203 = !DILocation(line: 0, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1162, file: !3, line: 946, column: 23)
!1205 = !DILocation(line: 982, column: 12, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1143, file: !3, line: 982, column: 7)
!1207 = !DILocation(line: 982, column: 7, scope: !1143)
!1208 = !DILocation(line: 990, column: 5, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1210, file: !3, line: 990, column: 5)
!1210 = distinct !DILexicalBlock(scope: !1206, file: !3, line: 989, column: 10)
!1211 = !DILocalVariable(name: "n", scope: !1212, file: !3, line: 104, type: !100)
!1212 = distinct !DISubprogram(name: "udp_new_port", scope: !3, file: !3, line: 102, type: !1213, isLocal: true, isDefinition: true, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1215)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{!100}
!1215 = !{!1211, !1216}
!1216 = !DILocalVariable(name: "pcb", scope: !1212, file: !3, line: 105, type: !169)
!1217 = !DILocation(line: 104, column: 9, scope: !1212, inlinedAt: !1218)
!1218 = distinct !DILocation(line: 983, column: 12, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1206, file: !3, line: 982, column: 18)
!1220 = !DILocation(line: 0, scope: !1221, inlinedAt: !1218)
!1221 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 108, column: 47)
!1222 = distinct !DILexicalBlock(scope: !1212, file: !3, line: 108, column: 7)
!1223 = !DILocation(line: 105, column: 3, scope: !1212, inlinedAt: !1218)
!1224 = !DILocation(line: 0, scope: !1225, inlinedAt: !1218)
!1225 = distinct !DILexicalBlock(scope: !1226, file: !3, line: 114, column: 11)
!1226 = distinct !DILexicalBlock(scope: !1227, file: !3, line: 113, column: 38)
!1227 = distinct !DILexicalBlock(scope: !1228, file: !3, line: 113, column: 9)
!1228 = distinct !DILexicalBlock(scope: !1229, file: !3, line: 112, column: 54)
!1229 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 112, column: 3)
!1230 = distinct !DILexicalBlock(scope: !1212, file: !3, line: 112, column: 3)
!1231 = !DILocation(line: 108, column: 15, scope: !1222, inlinedAt: !1218)
!1232 = !DILocation(line: 108, column: 18, scope: !1222, inlinedAt: !1218)
!1233 = !DILocation(line: 108, column: 7, scope: !1212, inlinedAt: !1218)
!1234 = !DILocation(line: 105, column: 19, scope: !1212, inlinedAt: !1218)
!1235 = !DILocation(line: 112, column: 3, scope: !1230, inlinedAt: !1218)
!1236 = !DILocation(line: 112, column: 48, scope: !1229, inlinedAt: !1218)
!1237 = !DILocation(line: 0, scope: !1229, inlinedAt: !1218)
!1238 = !DILocation(line: 112, column: 28, scope: !1229, inlinedAt: !1218)
!1239 = distinct !{!1239, !1240, !1241}
!1240 = !DILocation(line: 112, column: 3, scope: !1230)
!1241 = !DILocation(line: 119, column: 3, scope: !1230)
!1242 = !DILocation(line: 113, column: 14, scope: !1227, inlinedAt: !1218)
!1243 = !DILocation(line: 113, column: 25, scope: !1227, inlinedAt: !1218)
!1244 = !DILocation(line: 113, column: 9, scope: !1228, inlinedAt: !1218)
!1245 = !DILocation(line: 121, column: 1, scope: !1212, inlinedAt: !1218)
!1246 = !DILocation(line: 984, column: 9, scope: !1219)
!1247 = !DILocation(line: 984, column: 14, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 984, column: 9)
!1249 = !DILocation(line: 991, column: 15, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 991, column: 11)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 990, column: 60)
!1252 = distinct !DILexicalBlock(scope: !1209, file: !3, line: 990, column: 5)
!1253 = !DILocation(line: 991, column: 11, scope: !1251)
!1254 = !DILocation(line: 996, column: 14, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 996, column: 13)
!1256 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 991, column: 24)
!1257 = !{!494, !301, i64 49}
!1258 = !DILocation(line: 996, column: 48, scope: !1255)
!1259 = !DILocation(line: 997, column: 14, scope: !1255)
!1260 = !DILocation(line: 996, column: 13, scope: !1256)
!1261 = !DILocation(line: 1001, column: 22, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1263, file: !3, line: 1001, column: 15)
!1263 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 999, column: 9)
!1264 = !DILocation(line: 1001, column: 33, scope: !1262)
!1265 = !DILocation(line: 1001, column: 42, scope: !1262)
!1266 = !DILocation(line: 1003, column: 16, scope: !1262)
!1267 = !DILocation(line: 1003, column: 53, scope: !1262)
!1268 = !DILocation(line: 1003, column: 56, scope: !1262)
!1269 = !DILocation(line: 1003, column: 78, scope: !1262)
!1270 = !DILocation(line: 1004, column: 15, scope: !1262)
!1271 = !DILocation(line: 1001, column: 15, scope: !1263)
!1272 = !DILocation(line: 990, column: 54, scope: !1252)
!1273 = !DILocation(line: 0, scope: !1252)
!1274 = !DILocation(line: 990, column: 32, scope: !1252)
!1275 = distinct !{!1275, !1208, !1276}
!1276 = !DILocation(line: 1012, column: 5, scope: !1209)
!1277 = !DILocation(line: 1015, column: 3, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1279, file: !3, line: 1015, column: 3)
!1279 = distinct !DILexicalBlock(scope: !1280, file: !3, line: 1015, column: 3)
!1280 = distinct !DILexicalBlock(scope: !1281, file: !3, line: 1015, column: 3)
!1281 = distinct !DILexicalBlock(scope: !1282, file: !3, line: 1015, column: 3)
!1282 = distinct !DILexicalBlock(scope: !1143, file: !3, line: 1015, column: 3)
!1283 = !DILocation(line: 1015, column: 3, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1282, file: !3, line: 1015, column: 3)
!1285 = !DILocation(line: 1015, column: 3, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1287, file: !3, line: 1015, column: 3)
!1287 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 1015, column: 3)
!1288 = !DILocation(line: 1015, column: 3, scope: !1282)
!1289 = !DILocation(line: 1015, column: 3, scope: !1287)
!1290 = !DILocation(line: 1015, column: 3, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1292, file: !3, line: 1015, column: 3)
!1292 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 1015, column: 3)
!1293 = !DILocation(line: 1017, column: 8, scope: !1143)
!1294 = !DILocation(line: 1017, column: 19, scope: !1143)
!1295 = !DILocation(line: 1020, column: 14, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1143, file: !3, line: 1020, column: 7)
!1297 = !DILocation(line: 1020, column: 7, scope: !1143)
!1298 = !DILocation(line: 1022, column: 17, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 1020, column: 20)
!1300 = !DILocation(line: 1022, column: 10, scope: !1299)
!1301 = !DILocation(line: 1022, column: 15, scope: !1299)
!1302 = !DILocation(line: 1023, column: 14, scope: !1299)
!1303 = !DILocation(line: 1024, column: 3, scope: !1299)
!1304 = !DILocation(line: 0, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 1004, column: 48)
!1306 = !DILocation(line: 1029, column: 1, scope: !1143)
!1307 = !DILocation(line: 114, column: 11, scope: !1225, inlinedAt: !1218)
!1308 = !DILocation(line: 114, column: 15, scope: !1225, inlinedAt: !1218)
!1309 = !DILocation(line: 114, column: 11, scope: !1226, inlinedAt: !1218)
!1310 = distinct !DISubprogram(name: "udp_bind_netif", scope: !3, file: !3, line: 1044, type: !1311, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1315)
!1311 = !DISubroutineType(types: !1312)
!1312 = !{null, !169, !1313}
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !337)
!1315 = !{!1316, !1317}
!1316 = !DILocalVariable(name: "pcb", arg: 1, scope: !1310, file: !3, line: 1044, type: !169)
!1317 = !DILocalVariable(name: "netif", arg: 2, scope: !1310, file: !3, line: 1044, type: !1313)
!1318 = !DILocation(line: 1044, column: 32, scope: !1310)
!1319 = !DILocation(line: 1044, column: 57, scope: !1310)
!1320 = !DILocation(line: 1048, column: 13, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 1048, column: 7)
!1322 = !DILocation(line: 1048, column: 7, scope: !1310)
!1323 = !DILocation(line: 1049, column: 22, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1321, file: !3, line: 1048, column: 22)
!1325 = !DILocation(line: 1050, column: 3, scope: !1324)
!1326 = !DILocation(line: 1051, column: 10, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1321, file: !3, line: 1050, column: 10)
!1328 = !DILocation(line: 1051, column: 20, scope: !1327)
!1329 = !DILocation(line: 1053, column: 1, scope: !1310)
!1330 = distinct !DISubprogram(name: "udp_connect", scope: !3, file: !3, line: 1073, type: !1144, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1331)
!1331 = !{!1332, !1333, !1334, !1335, !1336, !1339}
!1332 = !DILocalVariable(name: "pcb", arg: 1, scope: !1330, file: !3, line: 1073, type: !169)
!1333 = !DILocalVariable(name: "ipaddr", arg: 2, scope: !1330, file: !3, line: 1073, type: !152)
!1334 = !DILocalVariable(name: "port", arg: 3, scope: !1330, file: !3, line: 1073, type: !100)
!1335 = !DILocalVariable(name: "ipcb", scope: !1330, file: !3, line: 1075, type: !169)
!1336 = !DILocalVariable(name: "err", scope: !1337, file: !3, line: 1083, type: !357)
!1337 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 1082, column: 29)
!1338 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 1082, column: 7)
!1339 = !DILocalVariable(name: "selected_netif", scope: !1340, file: !3, line: 1095, type: !336)
!1340 = distinct !DILexicalBlock(scope: !1341, file: !3, line: 1095, column: 5)
!1341 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 1094, column: 68)
!1342 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 1093, column: 7)
!1343 = !DILocation(line: 1073, column: 29, scope: !1330)
!1344 = !DILocation(line: 1073, column: 51, scope: !1330)
!1345 = !DILocation(line: 1073, column: 65, scope: !1330)
!1346 = !DILocation(line: 1079, column: 3, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1348, file: !3, line: 1079, column: 3)
!1348 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 1079, column: 3)
!1349 = !DILocation(line: 1079, column: 3, scope: !1348)
!1350 = !DILocation(line: 1079, column: 3, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 1079, column: 3)
!1352 = distinct !DILexicalBlock(scope: !1347, file: !3, line: 1079, column: 3)
!1353 = !DILocation(line: 1079, column: 3, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 1079, column: 3)
!1355 = distinct !DILexicalBlock(scope: !1356, file: !3, line: 1079, column: 3)
!1356 = distinct !DILexicalBlock(scope: !1351, file: !3, line: 1079, column: 3)
!1357 = !DILocation(line: 1080, column: 3, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1359, file: !3, line: 1080, column: 3)
!1359 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 1080, column: 3)
!1360 = !DILocation(line: 1080, column: 3, scope: !1359)
!1361 = !DILocation(line: 1080, column: 3, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 1080, column: 3)
!1363 = distinct !DILexicalBlock(scope: !1358, file: !3, line: 1080, column: 3)
!1364 = !DILocation(line: 1080, column: 3, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1366, file: !3, line: 1080, column: 3)
!1366 = distinct !DILexicalBlock(scope: !1367, file: !3, line: 1080, column: 3)
!1367 = distinct !DILexicalBlock(scope: !1362, file: !3, line: 1080, column: 3)
!1368 = !DILocation(line: 1082, column: 12, scope: !1338)
!1369 = !DILocation(line: 1082, column: 23, scope: !1338)
!1370 = !DILocation(line: 1082, column: 7, scope: !1330)
!1371 = !DILocation(line: 1083, column: 37, scope: !1337)
!1372 = !DILocation(line: 1083, column: 17, scope: !1337)
!1373 = !DILocation(line: 1083, column: 11, scope: !1337)
!1374 = !DILocation(line: 1084, column: 13, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 1084, column: 9)
!1376 = !DILocation(line: 1089, column: 3, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1378, file: !3, line: 1089, column: 3)
!1378 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 1089, column: 3)
!1379 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 1089, column: 3)
!1380 = !DILocation(line: 1089, column: 3, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1382, file: !3, line: 1089, column: 3)
!1382 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 1089, column: 3)
!1383 = !DILocation(line: 1089, column: 3, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 1089, column: 3)
!1385 = !DILocation(line: 1089, column: 3, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1387, file: !3, line: 1089, column: 3)
!1387 = distinct !DILexicalBlock(scope: !1384, file: !3, line: 1089, column: 3)
!1388 = !DILocation(line: 1089, column: 3, scope: !1379)
!1389 = !DILocation(line: 1089, column: 3, scope: !1387)
!1390 = !DILocation(line: 1089, column: 3, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1392, file: !3, line: 1089, column: 3)
!1392 = distinct !DILexicalBlock(scope: !1384, file: !3, line: 1089, column: 3)
!1393 = !DILocation(line: 1093, column: 7, scope: !1342)
!1394 = !DILocation(line: 1093, column: 33, scope: !1342)
!1395 = !DILocation(line: 1094, column: 7, scope: !1342)
!1396 = !DILocation(line: 1095, column: 5, scope: !1340)
!1397 = !DILocation(line: 1095, column: 5, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1340, file: !3, line: 1095, column: 5)
!1399 = !DILocation(line: 1095, column: 5, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1398, file: !3, line: 1095, column: 5)
!1401 = !DILocation(line: 1099, column: 8, scope: !1330)
!1402 = !DILocation(line: 1099, column: 20, scope: !1330)
!1403 = !DILocation(line: 1100, column: 8, scope: !1330)
!1404 = !DILocation(line: 1100, column: 14, scope: !1330)
!1405 = !DILocation(line: 1075, column: 19, scope: !1330)
!1406 = !DILocation(line: 0, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 1108, column: 3)
!1408 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 1108, column: 3)
!1409 = !DILocation(line: 1108, column: 30, scope: !1407)
!1410 = !DILocation(line: 1108, column: 3, scope: !1408)
!1411 = !DILocation(line: 1108, column: 52, scope: !1407)
!1412 = distinct !{!1412, !1410, !1413}
!1413 = !DILocation(line: 1113, column: 3, scope: !1408)
!1414 = !DILocation(line: 1109, column: 13, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1416, file: !3, line: 1109, column: 9)
!1416 = distinct !DILexicalBlock(scope: !1407, file: !3, line: 1108, column: 58)
!1417 = !DILocation(line: 1109, column: 9, scope: !1416)
!1418 = !DILocation(line: 1115, column: 8, scope: !1330)
!1419 = !DILocation(line: 1115, column: 13, scope: !1330)
!1420 = !DILocation(line: 1116, column: 12, scope: !1330)
!1421 = !DILocation(line: 1117, column: 3, scope: !1330)
!1422 = !DILocation(line: 0, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1375, file: !3, line: 1084, column: 24)
!1424 = !DILocation(line: 1118, column: 1, scope: !1330)
!1425 = distinct !DISubprogram(name: "udp_disconnect", scope: !3, file: !3, line: 1128, type: !1426, isLocal: false, isDefinition: true, scopeLine: 1129, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1428)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{null, !169}
!1428 = !{!1429}
!1429 = !DILocalVariable(name: "pcb", arg: 1, scope: !1425, file: !3, line: 1128, type: !169)
!1430 = !DILocation(line: 1128, column: 32, scope: !1425)
!1431 = !DILocation(line: 1132, column: 3, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1433, file: !3, line: 1132, column: 3)
!1433 = distinct !DILexicalBlock(scope: !1425, file: !3, line: 1132, column: 3)
!1434 = !DILocation(line: 1132, column: 3, scope: !1433)
!1435 = !DILocation(line: 1132, column: 3, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1437, file: !3, line: 1132, column: 3)
!1437 = distinct !DILexicalBlock(scope: !1432, file: !3, line: 1132, column: 3)
!1438 = !DILocation(line: 1132, column: 3, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1440, file: !3, line: 1132, column: 3)
!1440 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 1132, column: 3)
!1441 = distinct !DILexicalBlock(scope: !1436, file: !3, line: 1132, column: 3)
!1442 = !DILocation(line: 1136, column: 7, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1425, file: !3, line: 1136, column: 7)
!1444 = !DILocation(line: 1136, column: 7, scope: !1425)
!1445 = !DILocation(line: 1137, column: 5, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 1137, column: 5)
!1447 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 1137, column: 5)
!1448 = distinct !DILexicalBlock(scope: !1443, file: !3, line: 1136, column: 42)
!1449 = !DILocation(line: 1137, column: 5, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 1137, column: 5)
!1451 = !DILocation(line: 1137, column: 5, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 1137, column: 5)
!1453 = distinct !DILexicalBlock(scope: !1450, file: !3, line: 1137, column: 5)
!1454 = !DILocation(line: 1137, column: 5, scope: !1447)
!1455 = !DILocation(line: 1137, column: 5, scope: !1453)
!1456 = !DILocation(line: 1137, column: 5, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1458, file: !3, line: 1137, column: 5)
!1458 = distinct !DILexicalBlock(scope: !1450, file: !3, line: 1137, column: 5)
!1459 = !DILocation(line: 1140, column: 5, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1461, file: !3, line: 1140, column: 5)
!1461 = distinct !DILexicalBlock(scope: !1462, file: !3, line: 1140, column: 5)
!1462 = distinct !DILexicalBlock(scope: !1443, file: !3, line: 1138, column: 10)
!1463 = !DILocation(line: 1140, column: 5, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1465, file: !3, line: 1140, column: 5)
!1465 = distinct !DILexicalBlock(scope: !1460, file: !3, line: 1140, column: 5)
!1466 = !DILocation(line: 1140, column: 5, scope: !1461)
!1467 = !DILocation(line: 1140, column: 5, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1469, file: !3, line: 1140, column: 5)
!1469 = distinct !DILexicalBlock(scope: !1470, file: !3, line: 1140, column: 5)
!1470 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 1140, column: 5)
!1471 = distinct !DILexicalBlock(scope: !1465, file: !3, line: 1140, column: 5)
!1472 = !DILocation(line: 1140, column: 5, scope: !1469)
!1473 = !DILocation(line: 1140, column: 5, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 1140, column: 5)
!1475 = distinct !DILexicalBlock(scope: !1476, file: !3, line: 1140, column: 5)
!1476 = distinct !DILexicalBlock(scope: !1477, file: !3, line: 1140, column: 5)
!1477 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 1140, column: 5)
!1478 = distinct !DILexicalBlock(scope: !1460, file: !3, line: 1140, column: 5)
!1479 = !DILocation(line: 1140, column: 5, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 1140, column: 5)
!1481 = !DILocation(line: 1144, column: 8, scope: !1425)
!1482 = !DILocation(line: 1144, column: 20, scope: !1425)
!1483 = !DILocation(line: 1145, column: 8, scope: !1425)
!1484 = !DILocation(line: 1145, column: 18, scope: !1425)
!1485 = !DILocation(line: 1147, column: 3, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1425, file: !3, line: 1147, column: 3)
!1487 = !DILocation(line: 1148, column: 1, scope: !1425)
!1488 = distinct !DISubprogram(name: "udp_recv", scope: !3, file: !3, line: 1160, type: !1489, isLocal: false, isDefinition: true, scopeLine: 1161, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1491)
!1489 = !DISubroutineType(types: !1490)
!1490 = !{null, !169, !187, !107}
!1491 = !{!1492, !1493, !1494}
!1492 = !DILocalVariable(name: "pcb", arg: 1, scope: !1488, file: !3, line: 1160, type: !169)
!1493 = !DILocalVariable(name: "recv", arg: 2, scope: !1488, file: !3, line: 1160, type: !187)
!1494 = !DILocalVariable(name: "recv_arg", arg: 3, scope: !1488, file: !3, line: 1160, type: !107)
!1495 = !DILocation(line: 1160, column: 26, scope: !1488)
!1496 = !DILocation(line: 1160, column: 43, scope: !1488)
!1497 = !DILocation(line: 1160, column: 55, scope: !1488)
!1498 = !DILocation(line: 1164, column: 3, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1500, file: !3, line: 1164, column: 3)
!1500 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 1164, column: 3)
!1501 = !DILocation(line: 1164, column: 3, scope: !1500)
!1502 = !DILocation(line: 1164, column: 3, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 1164, column: 3)
!1504 = distinct !DILexicalBlock(scope: !1499, file: !3, line: 1164, column: 3)
!1505 = !DILocation(line: 1164, column: 3, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1507, file: !3, line: 1164, column: 3)
!1507 = distinct !DILexicalBlock(scope: !1508, file: !3, line: 1164, column: 3)
!1508 = distinct !DILexicalBlock(scope: !1503, file: !3, line: 1164, column: 3)
!1509 = !DILocation(line: 1167, column: 8, scope: !1488)
!1510 = !DILocation(line: 1167, column: 13, scope: !1488)
!1511 = !DILocation(line: 1168, column: 8, scope: !1488)
!1512 = !DILocation(line: 1168, column: 17, scope: !1488)
!1513 = !DILocation(line: 1169, column: 1, scope: !1488)
!1514 = distinct !DISubprogram(name: "udp_remove", scope: !3, file: !3, line: 1181, type: !1426, isLocal: false, isDefinition: true, scopeLine: 1182, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1515)
!1515 = !{!1516, !1517}
!1516 = !DILocalVariable(name: "pcb", arg: 1, scope: !1514, file: !3, line: 1181, type: !169)
!1517 = !DILocalVariable(name: "pcb2", scope: !1514, file: !3, line: 1183, type: !169)
!1518 = !DILocation(line: 1181, column: 28, scope: !1514)
!1519 = !DILocation(line: 1187, column: 3, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1521, file: !3, line: 1187, column: 3)
!1521 = distinct !DILexicalBlock(scope: !1514, file: !3, line: 1187, column: 3)
!1522 = !DILocation(line: 1187, column: 3, scope: !1521)
!1523 = !DILocation(line: 1187, column: 3, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1525, file: !3, line: 1187, column: 3)
!1525 = distinct !DILexicalBlock(scope: !1520, file: !3, line: 1187, column: 3)
!1526 = !DILocation(line: 1187, column: 3, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1528, file: !3, line: 1187, column: 3)
!1528 = distinct !DILexicalBlock(scope: !1529, file: !3, line: 1187, column: 3)
!1529 = distinct !DILexicalBlock(scope: !1524, file: !3, line: 1187, column: 3)
!1530 = !DILocation(line: 1191, column: 7, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1514, file: !3, line: 1191, column: 7)
!1532 = !DILocation(line: 1191, column: 16, scope: !1531)
!1533 = !DILocation(line: 1191, column: 7, scope: !1514)
!1534 = !DILocation(line: 1193, column: 26, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1531, file: !3, line: 1191, column: 24)
!1536 = !DILocation(line: 1193, column: 14, scope: !1535)
!1537 = !DILocation(line: 1195, column: 3, scope: !1535)
!1538 = !DILocation(line: 0, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1540, file: !3, line: 1196, column: 5)
!1540 = distinct !DILexicalBlock(scope: !1541, file: !3, line: 1196, column: 5)
!1541 = distinct !DILexicalBlock(scope: !1531, file: !3, line: 1195, column: 10)
!1542 = !DILocation(line: 1183, column: 19, scope: !1514)
!1543 = !DILocation(line: 1196, column: 32, scope: !1539)
!1544 = !DILocation(line: 1196, column: 5, scope: !1540)
!1545 = !DILocation(line: 1198, column: 17, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1547, file: !3, line: 1198, column: 11)
!1547 = distinct !DILexicalBlock(scope: !1539, file: !3, line: 1196, column: 60)
!1548 = !DILocation(line: 1198, column: 22, scope: !1546)
!1549 = !DILocation(line: 1198, column: 44, scope: !1546)
!1550 = !DILocation(line: 1198, column: 30, scope: !1546)
!1551 = distinct !{!1551, !1544, !1552}
!1552 = !DILocation(line: 1203, column: 5, scope: !1540)
!1553 = !DILocation(line: 1200, column: 27, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1546, file: !3, line: 1198, column: 52)
!1555 = !DILocation(line: 1200, column: 20, scope: !1554)
!1556 = !DILocation(line: 1201, column: 9, scope: !1554)
!1557 = !DILocation(line: 1205, column: 27, scope: !1514)
!1558 = !DILocation(line: 1205, column: 3, scope: !1514)
!1559 = !DILocation(line: 1206, column: 1, scope: !1514)
!1560 = distinct !DISubprogram(name: "udp_new", scope: !3, file: !3, line: 1220, type: !1561, isLocal: false, isDefinition: true, scopeLine: 1221, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1563)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{!169}
!1563 = !{!1564}
!1564 = !DILocalVariable(name: "pcb", scope: !1560, file: !3, line: 1222, type: !169)
!1565 = !DILocation(line: 1226, column: 27, scope: !1560)
!1566 = !DILocation(line: 1226, column: 9, scope: !1560)
!1567 = !DILocation(line: 1222, column: 19, scope: !1560)
!1568 = !DILocation(line: 1228, column: 11, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1560, file: !3, line: 1228, column: 7)
!1570 = !DILocation(line: 1228, column: 7, scope: !1560)
!1571 = !DILocation(line: 1233, column: 5, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1569, file: !3, line: 1228, column: 20)
!1573 = !DILocation(line: 1234, column: 10, scope: !1572)
!1574 = !DILocation(line: 1234, column: 14, scope: !1572)
!1575 = !{!494, !301, i64 51}
!1576 = !DILocation(line: 1236, column: 5, scope: !1572)
!1577 = !{!494, !301, i64 77}
!1578 = !DILocation(line: 1238, column: 3, scope: !1572)
!1579 = !DILocation(line: 1239, column: 3, scope: !1560)
!1580 = distinct !DISubprogram(name: "udp_new_ip_type", scope: !3, file: !3, line: 1257, type: !1581, isLocal: false, isDefinition: true, scopeLine: 1258, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1583)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{!169, !134}
!1583 = !{!1584, !1585}
!1584 = !DILocalVariable(name: "type", arg: 1, scope: !1580, file: !3, line: 1257, type: !134)
!1585 = !DILocalVariable(name: "pcb", scope: !1580, file: !3, line: 1259, type: !169)
!1586 = !DILocation(line: 1257, column: 22, scope: !1580)
!1587 = !DILocation(line: 1226, column: 27, scope: !1560, inlinedAt: !1588)
!1588 = distinct !DILocation(line: 1263, column: 9, scope: !1580)
!1589 = !DILocation(line: 1226, column: 9, scope: !1560, inlinedAt: !1588)
!1590 = !DILocation(line: 1222, column: 19, scope: !1560, inlinedAt: !1588)
!1591 = !DILocation(line: 1228, column: 11, scope: !1569, inlinedAt: !1588)
!1592 = !DILocation(line: 1228, column: 7, scope: !1560, inlinedAt: !1588)
!1593 = !DILocation(line: 1233, column: 5, scope: !1572, inlinedAt: !1588)
!1594 = !DILocation(line: 1234, column: 10, scope: !1572, inlinedAt: !1588)
!1595 = !DILocation(line: 1234, column: 14, scope: !1572, inlinedAt: !1588)
!1596 = !DILocation(line: 1236, column: 5, scope: !1572, inlinedAt: !1588)
!1597 = !DILocation(line: 1239, column: 3, scope: !1560, inlinedAt: !1588)
!1598 = !DILocation(line: 1259, column: 19, scope: !1580)
!1599 = !DILocation(line: 1266, column: 5, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1601, file: !3, line: 1266, column: 5)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !3, line: 1265, column: 20)
!1602 = distinct !DILexicalBlock(scope: !1580, file: !3, line: 1265, column: 7)
!1603 = !DILocation(line: 1267, column: 5, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1601, file: !3, line: 1267, column: 5)
!1605 = !DILocation(line: 1268, column: 3, scope: !1601)
!1606 = !DILocation(line: 1265, column: 7, scope: !1580)
!1607 = !DILocation(line: 1272, column: 3, scope: !1580)
!1608 = distinct !DISubprogram(name: "udp_netif_ip_addr_changed", scope: !3, file: !3, line: 1280, type: !1609, isLocal: false, isDefinition: true, scopeLine: 1281, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1611)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{null, !152, !152}
!1611 = !{!1612, !1613, !1614}
!1612 = !DILocalVariable(name: "old_addr", arg: 1, scope: !1608, file: !3, line: 1280, type: !152)
!1613 = !DILocalVariable(name: "new_addr", arg: 2, scope: !1608, file: !3, line: 1280, type: !152)
!1614 = !DILocalVariable(name: "upcb", scope: !1608, file: !3, line: 1282, type: !169)
!1615 = !DILocation(line: 1280, column: 49, scope: !1608)
!1616 = !DILocation(line: 1280, column: 76, scope: !1608)
!1617 = !DILocation(line: 1284, column: 8, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1608, file: !3, line: 1284, column: 7)
!1619 = !DILocation(line: 1284, column: 32, scope: !1618)
!1620 = !DILocation(line: 1284, column: 36, scope: !1618)
!1621 = !DILocation(line: 1284, column: 7, scope: !1608)
!1622 = !DILocation(line: 1282, column: 19, scope: !1608)
!1623 = !DILocation(line: 0, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 1285, column: 5)
!1625 = distinct !DILexicalBlock(scope: !1626, file: !3, line: 1285, column: 5)
!1626 = distinct !DILexicalBlock(scope: !1618, file: !3, line: 1284, column: 61)
!1627 = !DILocation(line: 1285, column: 32, scope: !1624)
!1628 = !DILocation(line: 1285, column: 5, scope: !1625)
!1629 = !DILocation(line: 1287, column: 11, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1631, file: !3, line: 1287, column: 11)
!1631 = distinct !DILexicalBlock(scope: !1624, file: !3, line: 1285, column: 60)
!1632 = !DILocation(line: 1287, column: 11, scope: !1631)
!1633 = !DILocation(line: 1290, column: 9, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !3, line: 1290, column: 9)
!1635 = distinct !DILexicalBlock(scope: !1636, file: !3, line: 1290, column: 9)
!1636 = distinct !DILexicalBlock(scope: !1630, file: !3, line: 1287, column: 51)
!1637 = !DILocation(line: 1290, column: 9, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1635, file: !3, line: 1290, column: 9)
!1639 = !DILocation(line: 1290, column: 9, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1641, file: !3, line: 1290, column: 9)
!1641 = distinct !DILexicalBlock(scope: !1638, file: !3, line: 1290, column: 9)
!1642 = !DILocation(line: 1290, column: 9, scope: !1635)
!1643 = !DILocation(line: 1290, column: 9, scope: !1641)
!1644 = !DILocation(line: 1290, column: 9, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1646, file: !3, line: 1290, column: 9)
!1646 = distinct !DILexicalBlock(scope: !1638, file: !3, line: 1290, column: 9)
!1647 = !DILocation(line: 1285, column: 54, scope: !1624)
!1648 = distinct !{!1648, !1628, !1649}
!1649 = !DILocation(line: 1292, column: 5, scope: !1625)
!1650 = !DILocation(line: 1294, column: 1, scope: !1608)
!1651 = !DILocation(line: 65, column: 11, scope: !285)
!1652 = !DILocation(line: 62, column: 16, scope: !285)
!1653 = !DILocation(line: 66, column: 8, scope: !285)
!1654 = !DILocation(line: 63, column: 8, scope: !285)
!1655 = !DILocation(line: 67, column: 2, scope: !285)
!1656 = !DILocation(line: 69, column: 2, scope: !285)
