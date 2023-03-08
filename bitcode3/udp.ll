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

; Function Attrs: noredzone nounwind
define dso_local void @udp_init() local_unnamed_addr #0 !dbg !244 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !248
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #6, !dbg !248
  %3 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !267, !srcloc !275
  %4 = icmp ult i64 %3, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !277
  br i1 %4, label %11, label %5, !dbg !277

; <label>:5:                                      ; preds = %0
  %6 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !278, !srcloc !275
  %7 = icmp ugt i64 %6, ptrtoint ([0 x i8]* @_end to i64), !dbg !277
  br i1 %7, label %11, label %8, !dbg !281

; <label>:8:                                      ; preds = %5
  %9 = tail call i64 @ukplat_lcpu_save_irqf() #7, !dbg !282
  %10 = tail call i32 @uk_swrand_randr_r(%struct.uk_swrand* nonnull @uk_swrand_def) #7, !dbg !291
  tail call void @ukplat_lcpu_restore_irqf(i64 %9) #7, !dbg !293
  store i32 %10, i32* %1, align 4, !dbg !295, !tbaa !296
  br label %20, !dbg !295

; <label>:11:                                     ; preds = %5, %0
  %12 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !300, !srcloc !275
  %13 = and i64 %12, -65536, !dbg !311
  %14 = or i64 %13, 4097, !dbg !311
  %15 = add nsw i64 %14, -1, !dbg !311
  %16 = inttoptr i64 %15 to i32*, !dbg !312
  %17 = load i32, i32* %16, align 4096, !dbg !313, !tbaa !296
  %18 = tail call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_swrand_randr\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i32 %17, i32 ()* nonnull @uk_swrand_randr) #6, !dbg !314, !srcloc !315
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %1, i64 %18) #6, !dbg !316, !srcloc !319
  %19 = load i32, i32* %1, align 4, !dbg !320, !tbaa !296
  br label %20

; <label>:20:                                     ; preds = %8, %11
  %21 = phi i32 [ %19, %11 ], [ %10, %8 ], !dbg !320
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #6, !dbg !321
  %22 = trunc i32 %21 to i16, !dbg !322
  %23 = or i16 %22, -16384, !dbg !322
  store i16 %23, i16* @udp_port, align 2, !dbg !323, !tbaa !324
  ret void, !dbg !326
}

; Function Attrs: noredzone nounwind
define dso_local void @udp_input(%struct.pbuf*, %struct.netif*) local_unnamed_addr #0 !dbg !327 {
  %3 = icmp eq %struct.pbuf* %0, null, !dbg !415
  br i1 %3, label %4, label %5, !dbg !418

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0)) #8, !dbg !419
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !422
  tail call void @ukplat_terminate(i32 3) #9, !dbg !422
  unreachable, !dbg !422

; <label>:5:                                      ; preds = %2
  %6 = icmp eq %struct.netif* %1, null, !dbg !426
  br i1 %6, label %7, label %8, !dbg !429

; <label>:7:                                      ; preds = %5
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !430
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !433
  tail call void @ukplat_terminate(i32 3) #9, !dbg !433
  unreachable, !dbg !433

; <label>:8:                                      ; preds = %5
  %9 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 5, i32 1), align 2, !dbg !437, !tbaa !438
  %10 = add i16 %9, 1, !dbg !437
  store i16 %10, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 5, i32 1), align 2, !dbg !437, !tbaa !438
  %11 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 3, !dbg !444
  %12 = load i16, i16* %11, align 2, !dbg !444, !tbaa !446
  %13 = icmp ult i16 %12, 8, !dbg !449
  br i1 %13, label %14, label %20, !dbg !450

; <label>:14:                                     ; preds = %8
  %15 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 5, i32 5), align 2, !dbg !451, !tbaa !453
  %16 = add i16 %15, 1, !dbg !451
  store i16 %16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 5, i32 5), align 2, !dbg !451, !tbaa !453
  %17 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 5, i32 3), align 2, !dbg !454, !tbaa !455
  %18 = add i16 %17, 1, !dbg !454
  store i16 %18, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 5, i32 3), align 2, !dbg !454, !tbaa !455
  %19 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !456
  br label %325, !dbg !457

; <label>:20:                                     ; preds = %8
  %21 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 1, !dbg !458
  %22 = bitcast i8** %21 to %struct.udp_hdr**, !dbg !458
  %23 = load %struct.udp_hdr*, %struct.udp_hdr** %22, align 8, !dbg !458, !tbaa !459
  %24 = load i8, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 1), align 4, !dbg !461, !tbaa !462
  %25 = icmp eq i8 %24, 6, !dbg !461
  br i1 %25, label %30, label %26, !dbg !461

; <label>:26:                                     ; preds = %20
  %27 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !461, !tbaa !465
  %28 = load %struct.netif*, %struct.netif** getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 0), align 8, !dbg !461, !tbaa !466
  %29 = tail call zeroext i8 @ip4_addr_isbroadcast_u32(i32 %27, %struct.netif* %28) #7, !dbg !461
  br label %30, !dbg !461

; <label>:30:                                     ; preds = %20, %26
  %31 = phi i8 [ %29, %26 ], [ 0, %20 ], !dbg !461
  %32 = getelementptr inbounds %struct.udp_hdr, %struct.udp_hdr* %23, i64 0, i32 0, !dbg !468
  %33 = load i16, i16* %32, align 1, !dbg !468, !tbaa !469
  %34 = tail call zeroext i16 @lwip_htons(i16 zeroext %33) #7, !dbg !468
  %35 = getelementptr inbounds %struct.udp_hdr, %struct.udp_hdr* %23, i64 0, i32 1, !dbg !472
  %36 = load i16, i16* %35, align 1, !dbg !472, !tbaa !473
  %37 = tail call zeroext i16 @lwip_htons(i16 zeroext %36) #7, !dbg !472
  %38 = load %struct.udp_pcb*, %struct.udp_pcb** @udp_pcbs, align 8, !dbg !478, !tbaa !481
  %39 = icmp eq %struct.udp_pcb* %38, null, !dbg !482
  %40 = ptrtoint %struct.udp_pcb* %38 to i64, !dbg !483
  br i1 %39, label %243, label %41, !dbg !483

; <label>:41:                                     ; preds = %30
  %42 = load %struct.netif*, %struct.netif** getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 1), align 8
  %43 = getelementptr inbounds %struct.netif, %struct.netif* %42, i64 0, i32 23
  %44 = load i8, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 1), align 4
  %45 = icmp eq i8 %31, 0
  %46 = icmp ne i8 %31, 0
  %47 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 0), align 4
  %48 = icmp eq i32 %47, -1
  %49 = and i1 %46, %48
  %50 = load i8, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 1), align 4
  %51 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 2, i32 0, i32 0, i32 0, i64 0
  %52 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 1, i32 0, i32 0, i32 0, i64 0
  %53 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 0), align 4
  %54 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 1), align 4
  %55 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 1), align 4
  %56 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 2), align 4
  %57 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 2), align 4
  %58 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 3), align 4
  %59 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 3), align 4
  %60 = load i8, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 1), align 4
  %61 = load i8, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 1), align 4
  %62 = icmp eq i8 %44, 6
  br label %63, !dbg !483

; <label>:63:                                     ; preds = %41, %236
  %64 = phi %struct.udp_pcb* [ %38, %41 ], [ %239, %236 ]
  %65 = phi %struct.udp_pcb* [ null, %41 ], [ %64, %236 ]
  %66 = phi %struct.udp_pcb* [ null, %41 ], [ %237, %236 ]
  %67 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %64, i64 0, i32 8, !dbg !484
  %68 = load i16, i16* %67, align 2, !dbg !484, !tbaa !487
  %69 = icmp eq i16 %68, %37, !dbg !490
  br i1 %69, label %70, label %236, !dbg !491

; <label>:70:                                     ; preds = %63
  %71 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %64, i64 0, i32 2, !dbg !503
  %72 = load i8, i8* %71, align 8, !dbg !503, !tbaa !505
  %73 = icmp eq i8 %72, 0, !dbg !506
  br i1 %73, label %78, label %74, !dbg !507

; <label>:74:                                     ; preds = %70
  %75 = load i8, i8* %43, align 8, !dbg !508, !tbaa !509
  %76 = add i8 %75, 1, !dbg !508
  %77 = icmp eq i8 %72, %76, !dbg !511
  br i1 %77, label %78, label %236, !dbg !512

; <label>:78:                                     ; preds = %74, %70
  %79 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %64, i64 0, i32 0, i32 1, !dbg !513
  %80 = load i8, i8* %79, align 4, !dbg !513, !tbaa !515
  %81 = icmp eq i8 %80, 46, !dbg !513
  br i1 %81, label %130, label %82, !dbg !516

; <label>:82:                                     ; preds = %78
  %83 = icmp eq i8 %80, %44, !dbg !517
  br i1 %83, label %84, label %236, !dbg !519

; <label>:84:                                     ; preds = %82
  %85 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %64, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !520
  %86 = load i32, i32* %85, align 8, !dbg !520, !tbaa !465
  %87 = icmp eq i32 %86, 0, !dbg !520
  br i1 %45, label %95, label %88, !dbg !521

; <label>:88:                                     ; preds = %84
  %89 = or i1 %87, %48, !dbg !523
  br i1 %89, label %130, label %90, !dbg !523

; <label>:90:                                     ; preds = %88
  %91 = load i32, i32* %51, align 8, !dbg !528, !tbaa !465
  %92 = xor i32 %47, %86, !dbg !528
  %93 = and i32 %91, %92, !dbg !528
  %94 = icmp eq i32 %93, 0, !dbg !528
  br i1 %94, label %130, label %236, !dbg !529

; <label>:95:                                     ; preds = %84
  br i1 %62, label %96, label %109, !dbg !530

; <label>:96:                                     ; preds = %95
  br i1 %87, label %97, label %112, !dbg !532

; <label>:97:                                     ; preds = %96
  %98 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %64, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !532
  %99 = load i32, i32* %98, align 4, !dbg !532, !tbaa !465
  %100 = icmp eq i32 %99, 0, !dbg !532
  br i1 %100, label %101, label %112, !dbg !532

; <label>:101:                                    ; preds = %97
  %102 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %64, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !532
  %103 = load i32, i32* %102, align 8, !dbg !532, !tbaa !465
  %104 = icmp eq i32 %103, 0, !dbg !532
  br i1 %104, label %105, label %112, !dbg !532

; <label>:105:                                    ; preds = %101
  %106 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %64, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !532
  %107 = load i32, i32* %106, align 4, !dbg !532, !tbaa !465
  %108 = icmp eq i32 %107, 0, !dbg !532
  br i1 %108, label %130, label %112, !dbg !532

; <label>:109:                                    ; preds = %95
  %110 = icmp eq i32 %86, %47, !dbg !533
  %111 = or i1 %87, %110, !dbg !530
  br i1 %111, label %130, label %236, !dbg !530

; <label>:112:                                    ; preds = %105, %101, %97, %96
  %113 = icmp eq i32 %86, %47, !dbg !533
  br i1 %113, label %114, label %236, !dbg !533

; <label>:114:                                    ; preds = %112
  %115 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %64, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !533
  %116 = load i32, i32* %115, align 4, !dbg !533, !tbaa !465
  %117 = icmp eq i32 %116, %54, !dbg !533
  br i1 %117, label %118, label %236, !dbg !533

; <label>:118:                                    ; preds = %114
  %119 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %64, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !533
  %120 = load i32, i32* %119, align 8, !dbg !533, !tbaa !465
  %121 = icmp eq i32 %120, %56, !dbg !533
  br i1 %121, label %122, label %236, !dbg !533

; <label>:122:                                    ; preds = %118
  %123 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %64, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !533
  %124 = load i32, i32* %123, align 4, !dbg !533, !tbaa !465
  %125 = icmp eq i32 %124, %58, !dbg !533
  br i1 %125, label %126, label %236, !dbg !533

; <label>:126:                                    ; preds = %122
  %127 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %64, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !533
  %128 = load i8, i8* %127, align 8, !dbg !533, !tbaa !465
  %129 = icmp eq i8 %128, %60, !dbg !533
  br i1 %129, label %130, label %236, !dbg !533

; <label>:130:                                    ; preds = %78, %90, %88, %126, %109, %105
  %131 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %64, i64 0, i32 7, !dbg !534
  %132 = load i8, i8* %131, align 8, !dbg !534, !tbaa !537
  %133 = and i8 %132, 4, !dbg !538
  %134 = icmp eq i8 %133, 0, !dbg !539
  br i1 %134, label %135, label %177, !dbg !540

; <label>:135:                                    ; preds = %130
  %136 = icmp eq %struct.udp_pcb* %66, null, !dbg !541
  br i1 %136, label %177, label %137, !dbg !544

; <label>:137:                                    ; preds = %135
  br i1 %49, label %138, label %157, !dbg !545

; <label>:138:                                    ; preds = %137
  %139 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %66, i64 0, i32 0, i32 1, !dbg !547
  %140 = load i8, i8* %139, align 4, !dbg !547, !tbaa !515
  %141 = icmp eq i8 %140, 0, !dbg !547
  br i1 %141, label %142, label %149, !dbg !550

; <label>:142:                                    ; preds = %138
  %143 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %66, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !551
  %144 = load i32, i32* %143, align 8, !dbg !551, !tbaa !465
  %145 = load i32, i32* %52, align 8, !dbg !551, !tbaa !465
  %146 = icmp ne i32 %144, %145, !dbg !551
  %147 = icmp eq i8 %80, 0, !dbg !552
  %148 = and i1 %146, %147, !dbg !555
  br i1 %148, label %151, label %177, !dbg !555

; <label>:149:                                    ; preds = %138
  %150 = icmp eq i8 %80, 0, !dbg !552
  br i1 %150, label %151, label %177, !dbg !556

; <label>:151:                                    ; preds = %142, %149
  %152 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %64, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !557
  %153 = load i32, i32* %152, align 8, !dbg !557, !tbaa !465
  %154 = load i32, i32* %52, align 8, !dbg !557, !tbaa !465
  %155 = icmp eq i32 %153, %154, !dbg !557
  %156 = select i1 %155, %struct.udp_pcb* %64, %struct.udp_pcb* %66, !dbg !558
  br label %177, !dbg !558

; <label>:157:                                    ; preds = %137
  %158 = icmp eq i8 %80, 6, !dbg !559
  %159 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %64, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !559
  %160 = load i32, i32* %159, align 8, !dbg !559, !tbaa !465
  %161 = icmp eq i32 %160, 0, !dbg !559
  br i1 %158, label %162, label %175, !dbg !561

; <label>:162:                                    ; preds = %157
  br i1 %161, label %163, label %176, !dbg !559

; <label>:163:                                    ; preds = %162
  %164 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %64, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !559
  %165 = load i32, i32* %164, align 4, !dbg !559, !tbaa !465
  %166 = icmp eq i32 %165, 0, !dbg !559
  br i1 %166, label %167, label %176, !dbg !559

; <label>:167:                                    ; preds = %163
  %168 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %64, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !559
  %169 = load i32, i32* %168, align 8, !dbg !559, !tbaa !465
  %170 = icmp eq i32 %169, 0, !dbg !559
  br i1 %170, label %171, label %176, !dbg !559

; <label>:171:                                    ; preds = %167
  %172 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %64, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !559
  %173 = load i32, i32* %172, align 4, !dbg !559, !tbaa !465
  %174 = icmp eq i32 %173, 0, !dbg !559
  br i1 %174, label %177, label %176, !dbg !559

; <label>:175:                                    ; preds = %157
  br i1 %161, label %177, label %176, !dbg !561

; <label>:176:                                    ; preds = %175, %171, %167, %163, %162
  br label %177, !dbg !562

; <label>:177:                                    ; preds = %142, %151, %135, %171, %175, %176, %149, %130
  %178 = phi %struct.udp_pcb* [ %66, %142 ], [ %66, %149 ], [ %66, %171 ], [ %64, %176 ], [ %66, %175 ], [ %66, %130 ], [ %64, %135 ], [ %156, %151 ], !dbg !564
  %179 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %64, i64 0, i32 9, !dbg !565
  %180 = load i16, i16* %179, align 4, !dbg !565, !tbaa !567
  %181 = icmp eq i16 %180, %34, !dbg !568
  br i1 %181, label %182, label %236, !dbg !569

; <label>:182:                                    ; preds = %177
  %183 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %64, i64 0, i32 1, i32 1, !dbg !570
  %184 = load i8, i8* %183, align 4, !dbg !570, !tbaa !571
  %185 = icmp eq i8 %184, 6, !dbg !570
  %186 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %64, i64 0, i32 1, i32 0, i32 0, i32 0, i64 0, !dbg !570
  %187 = load i32, i32* %186, align 8, !dbg !570, !tbaa !465
  %188 = icmp eq i32 %187, 0, !dbg !570
  br i1 %185, label %189, label %202, !dbg !572

; <label>:189:                                    ; preds = %182
  br i1 %188, label %190, label %203, !dbg !570

; <label>:190:                                    ; preds = %189
  %191 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %64, i64 0, i32 1, i32 0, i32 0, i32 0, i64 1, !dbg !570
  %192 = load i32, i32* %191, align 4, !dbg !570, !tbaa !465
  %193 = icmp eq i32 %192, 0, !dbg !570
  br i1 %193, label %194, label %203, !dbg !570

; <label>:194:                                    ; preds = %190
  %195 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %64, i64 0, i32 1, i32 0, i32 0, i32 0, i64 2, !dbg !570
  %196 = load i32, i32* %195, align 8, !dbg !570, !tbaa !465
  %197 = icmp eq i32 %196, 0, !dbg !570
  br i1 %197, label %198, label %203, !dbg !570

; <label>:198:                                    ; preds = %194
  %199 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %64, i64 0, i32 1, i32 0, i32 0, i32 0, i64 3, !dbg !570
  %200 = load i32, i32* %199, align 4, !dbg !570, !tbaa !465
  %201 = icmp eq i32 %200, 0, !dbg !570
  br i1 %201, label %225, label %203, !dbg !570

; <label>:202:                                    ; preds = %182
  br i1 %188, label %225, label %203, !dbg !572

; <label>:203:                                    ; preds = %202, %198, %194, %190, %189
  %204 = icmp eq i8 %184, %50, !dbg !573
  br i1 %204, label %205, label %236, !dbg !574

; <label>:205:                                    ; preds = %203
  %206 = icmp eq i32 %187, %53, !dbg !573
  br i1 %185, label %207, label %224, !dbg !574

; <label>:207:                                    ; preds = %205
  br i1 %206, label %208, label %236, !dbg !573

; <label>:208:                                    ; preds = %207
  %209 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %64, i64 0, i32 1, i32 0, i32 0, i32 0, i64 1, !dbg !573
  %210 = load i32, i32* %209, align 4, !dbg !573, !tbaa !465
  %211 = icmp eq i32 %210, %55, !dbg !573
  br i1 %211, label %212, label %236, !dbg !573

; <label>:212:                                    ; preds = %208
  %213 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %64, i64 0, i32 1, i32 0, i32 0, i32 0, i64 2, !dbg !573
  %214 = load i32, i32* %213, align 8, !dbg !573, !tbaa !465
  %215 = icmp eq i32 %214, %57, !dbg !573
  br i1 %215, label %216, label %236, !dbg !573

; <label>:216:                                    ; preds = %212
  %217 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %64, i64 0, i32 1, i32 0, i32 0, i32 0, i64 3, !dbg !573
  %218 = load i32, i32* %217, align 4, !dbg !573, !tbaa !465
  %219 = icmp eq i32 %218, %59, !dbg !573
  br i1 %219, label %220, label %236, !dbg !573

; <label>:220:                                    ; preds = %216
  %221 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %64, i64 0, i32 1, i32 0, i32 0, i32 1, !dbg !573
  %222 = load i8, i8* %221, align 8, !dbg !573, !tbaa !465
  %223 = icmp eq i8 %222, %61, !dbg !573
  br i1 %223, label %225, label %236, !dbg !573

; <label>:224:                                    ; preds = %205
  br i1 %206, label %225, label %236, !dbg !574

; <label>:225:                                    ; preds = %224, %220, %202, %198
  %226 = icmp eq %struct.udp_pcb* %65, null, !dbg !575
  br i1 %226, label %233, label %227, !dbg !578

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %64, i64 0, i32 6, !dbg !579
  %229 = bitcast %struct.udp_pcb** %228 to i64*, !dbg !579
  %230 = load i64, i64* %229, align 8, !dbg !579, !tbaa !581
  %231 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %65, i64 0, i32 6, !dbg !582
  %232 = bitcast %struct.udp_pcb** %231 to i64*, !dbg !583
  store i64 %230, i64* %232, align 8, !dbg !583, !tbaa !581
  store i64 %40, i64* %229, align 8, !dbg !584, !tbaa !581
  store %struct.udp_pcb* %64, %struct.udp_pcb** @udp_pcbs, align 8, !dbg !585, !tbaa !481
  br label %261, !dbg !586

; <label>:233:                                    ; preds = %225
  %234 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 5, i32 11), align 2, !dbg !587, !tbaa !589
  %235 = add i16 %234, 1, !dbg !587
  store i16 %235, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 5, i32 11), align 2, !dbg !587, !tbaa !589
  br label %261

; <label>:236:                                    ; preds = %82, %90, %109, %112, %114, %118, %122, %126, %74, %203, %177, %207, %208, %212, %216, %220, %224, %63
  %237 = phi %struct.udp_pcb* [ %178, %203 ], [ %178, %220 ], [ %178, %216 ], [ %178, %212 ], [ %178, %208 ], [ %178, %207 ], [ %178, %224 ], [ %178, %177 ], [ %66, %63 ], [ %66, %74 ], [ %66, %126 ], [ %66, %122 ], [ %66, %118 ], [ %66, %114 ], [ %66, %112 ], [ %66, %109 ], [ %66, %90 ], [ %66, %82 ], !dbg !564
  %238 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %64, i64 0, i32 6, !dbg !590
  %239 = load %struct.udp_pcb*, %struct.udp_pcb** %238, align 8, !dbg !478, !tbaa !481
  %240 = icmp eq %struct.udp_pcb* %239, null, !dbg !482
  br i1 %240, label %241, label %63, !dbg !483, !llvm.loop !591

; <label>:241:                                    ; preds = %236
  %242 = icmp eq %struct.udp_pcb* %237, null, !dbg !593
  br i1 %242, label %243, label %261, !dbg !595

; <label>:243:                                    ; preds = %241, %30
  %244 = load %struct.ip6_hdr*, %struct.ip6_hdr** getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 3), align 8, !dbg !596, !tbaa !599
  %245 = icmp eq %struct.ip6_hdr* %244, null, !dbg !596
  br i1 %245, label %252, label %246, !dbg !600

; <label>:246:                                    ; preds = %243
  %247 = tail call signext i8 @netif_get_ip6_addr_match(%struct.netif* nonnull %1, %struct.ip6_addr* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0)) #7, !dbg !601
  %248 = lshr i8 %247, 7, !dbg !601
  %249 = xor i8 %248, 1, !dbg !601
  %250 = load %struct.ip6_hdr*, %struct.ip6_hdr** getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 3), align 8, !dbg !603, !tbaa !599
  %251 = icmp eq %struct.ip6_hdr* %250, null, !dbg !603
  br i1 %251, label %252, label %258, !dbg !605

; <label>:252:                                    ; preds = %243, %246
  %253 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 1, i32 0, i32 0, i32 0, i64 0, !dbg !606
  %254 = load i32, i32* %253, align 8, !dbg !606, !tbaa !465
  %255 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !606, !tbaa !465
  %256 = icmp eq i32 %254, %255, !dbg !606
  %257 = zext i1 %256 to i8, !dbg !606
  br label %258, !dbg !608

; <label>:258:                                    ; preds = %246, %252
  %259 = phi i8 [ %249, %246 ], [ %257, %252 ], !dbg !609
  %260 = icmp eq i8 %259, 0, !dbg !610
  br i1 %260, label %317, label %261, !dbg !612

; <label>:261:                                    ; preds = %241, %233, %227, %258
  %262 = phi i1 [ true, %241 ], [ false, %258 ], [ true, %227 ], [ true, %233 ]
  %263 = phi %struct.udp_pcb* [ %237, %241 ], [ null, %258 ], [ %64, %227 ], [ %64, %233 ]
  %264 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 16, !dbg !613
  %265 = load i16, i16* %264, align 8, !dbg !613, !tbaa !616
  %266 = and i16 %265, 512, !dbg !613
  %267 = icmp eq i16 %266, 0, !dbg !613
  br i1 %267, label %277, label %268, !dbg !617

; <label>:268:                                    ; preds = %261
  %269 = getelementptr inbounds %struct.udp_hdr, %struct.udp_hdr* %23, i64 0, i32 3, !dbg !618
  %270 = load i16, i16* %269, align 1, !dbg !618, !tbaa !622
  %271 = icmp eq i16 %270, 0, !dbg !623
  br i1 %271, label %277, label %272, !dbg !624

; <label>:272:                                    ; preds = %268
  %273 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 2, !dbg !625
  %274 = load i16, i16* %273, align 8, !dbg !625, !tbaa !628
  %275 = tail call zeroext i16 @ip_chksum_pseudo(%struct.pbuf* nonnull %0, i8 zeroext 17, i16 zeroext %274, %struct.ip_addr* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5), %struct.ip_addr* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6)) #7, !dbg !629
  %276 = icmp eq i16 %275, 0, !dbg !630
  br i1 %276, label %277, label %319, !dbg !631

; <label>:277:                                    ; preds = %272, %268, %261
  %278 = tail call zeroext i8 @pbuf_remove_header(%struct.pbuf* nonnull %0, i64 8) #7, !dbg !632
  %279 = icmp eq i8 %278, 0, !dbg !632
  br i1 %279, label %281, label %280, !dbg !634

; <label>:280:                                    ; preds = %277
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !635
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !641
  tail call void @ukplat_terminate(i32 3) #9, !dbg !641
  unreachable, !dbg !641

; <label>:281:                                    ; preds = %277
  br i1 %262, label %282, label %291, !dbg !645

; <label>:282:                                    ; preds = %281
  %283 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %263, i64 0, i32 13, !dbg !646
  %284 = load void (i8*, %struct.udp_pcb*, %struct.pbuf*, %struct.ip_addr*, i16)*, void (i8*, %struct.udp_pcb*, %struct.pbuf*, %struct.ip_addr*, i16)** %283, align 8, !dbg !646, !tbaa !650
  %285 = icmp eq void (i8*, %struct.udp_pcb*, %struct.pbuf*, %struct.ip_addr*, i16)* %284, null, !dbg !651
  br i1 %285, label %289, label %286, !dbg !652

; <label>:286:                                    ; preds = %282
  %287 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %263, i64 0, i32 14, !dbg !653
  %288 = load i8*, i8** %287, align 8, !dbg !653, !tbaa !655
  tail call void %284(i8* %288, %struct.udp_pcb* nonnull %263, %struct.pbuf* nonnull %0, %struct.ip_addr* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5), i16 zeroext %34) #7, !dbg !656
  br label %325, !dbg !657

; <label>:289:                                    ; preds = %282
  %290 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !658
  br label %325, !dbg !660

; <label>:291:                                    ; preds = %281
  %292 = icmp eq i8 %31, 0, !dbg !661
  br i1 %292, label %293, label %311, !dbg !664

; <label>:293:                                    ; preds = %291
  %294 = load i8, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 1), align 4, !dbg !665, !tbaa !462
  %295 = icmp eq i8 %294, 6, !dbg !665
  %296 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !665, !tbaa !465
  br i1 %295, label %297, label %300, !dbg !666

; <label>:297:                                    ; preds = %293
  %298 = and i32 %296, 255, !dbg !665
  %299 = icmp eq i32 %298, 255, !dbg !665
  br i1 %299, label %311, label %303, !dbg !665

; <label>:300:                                    ; preds = %293
  %301 = and i32 %296, 240, !dbg !665
  %302 = icmp eq i32 %301, 224, !dbg !665
  br i1 %302, label %311, label %303, !dbg !666

; <label>:303:                                    ; preds = %300, %297
  %304 = load i16, i16* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 4), align 8, !dbg !667, !tbaa !669
  %305 = add i16 %304, 8, !dbg !670
  %306 = tail call zeroext i8 @pbuf_header_force(%struct.pbuf* nonnull %0, i16 signext %305) #7, !dbg !671
  %307 = load %struct.ip6_hdr*, %struct.ip6_hdr** getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 3), align 8, !dbg !672, !tbaa !599
  %308 = icmp eq %struct.ip6_hdr* %307, null, !dbg !672
  br i1 %308, label %310, label %309, !dbg !672

; <label>:309:                                    ; preds = %303
  tail call void @icmp6_dest_unreach(%struct.pbuf* nonnull %0, i32 4) #7, !dbg !672
  br label %311, !dbg !672

; <label>:310:                                    ; preds = %303
  tail call void @icmp_dest_unreach(%struct.pbuf* nonnull %0, i32 3) #7, !dbg !672
  br label %311, !dbg !672

; <label>:311:                                    ; preds = %291, %309, %310, %300, %297
  %312 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 5, i32 8), align 2, !dbg !673, !tbaa !674
  %313 = add i16 %312, 1, !dbg !673
  store i16 %313, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 5, i32 8), align 2, !dbg !673, !tbaa !674
  %314 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 5, i32 3), align 2, !dbg !675, !tbaa !455
  %315 = add i16 %314, 1, !dbg !675
  store i16 %315, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 5, i32 3), align 2, !dbg !675, !tbaa !455
  %316 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !676
  br label %325

; <label>:317:                                    ; preds = %258
  %318 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !677
  br label %325

; <label>:319:                                    ; preds = %272
  %320 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 5, i32 4), align 2, !dbg !679, !tbaa !680
  %321 = add i16 %320, 1, !dbg !679
  store i16 %321, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 5, i32 4), align 2, !dbg !679, !tbaa !680
  %322 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 5, i32 3), align 2, !dbg !681, !tbaa !455
  %323 = add i16 %322, 1, !dbg !681
  store i16 %323, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 5, i32 3), align 2, !dbg !681, !tbaa !455
  %324 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !682
  br label %325, !dbg !683

; <label>:325:                                    ; preds = %14, %289, %286, %311, %317, %319
  ret void, !dbg !683
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8*, ...) unnamed_addr #3 !dbg !210 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !685
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #6, !dbg !685
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !687
  call void @llvm.va_start(i8* nonnull %3), !dbg !687
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @uk_pr_crit.__str.26, i64 0, i64 0), i32 198, i8* %0, %struct.__va_list_tag* nonnull %4) #7, !dbg !688
  call void @llvm.va_end(i8* nonnull %3), !dbg !691
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #6, !dbg !692
  ret void, !dbg !692
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
define dso_local signext i8 @udp_send(%struct.udp_pcb*, %struct.pbuf*) local_unnamed_addr #0 !dbg !693 {
  %3 = icmp eq %struct.udp_pcb* %0, null, !dbg !701
  br i1 %3, label %4, label %5, !dbg !704

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !705
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !708
  tail call void @ukplat_terminate(i32 3) #9, !dbg !708
  unreachable, !dbg !708

; <label>:5:                                      ; preds = %2
  %6 = icmp eq %struct.pbuf* %1, null, !dbg !712
  br i1 %6, label %7, label %8, !dbg !715

; <label>:7:                                      ; preds = %5
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0)) #8, !dbg !716
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !719
  tail call void @ukplat_terminate(i32 3) #9, !dbg !719
  unreachable, !dbg !719

; <label>:8:                                      ; preds = %5
  %9 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 1, !dbg !723
  %10 = load i8, i8* %9, align 4, !dbg !723, !tbaa !571
  %11 = icmp eq i8 %10, 46, !dbg !723
  br i1 %11, label %17, label %12, !dbg !725

; <label>:12:                                     ; preds = %8
  %13 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, !dbg !723
  %14 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 9, !dbg !726
  %15 = load i16, i16* %14, align 4, !dbg !726, !tbaa !567
  %16 = tail call signext i8 @udp_sendto(%struct.udp_pcb* nonnull %0, %struct.pbuf* nonnull %1, %struct.ip_addr* nonnull %13, i16 zeroext %15) #8, !dbg !727
  br label %17, !dbg !728

; <label>:17:                                     ; preds = %8, %12
  %18 = phi i8 [ %16, %12 ], [ -6, %8 ], !dbg !729
  ret i8 %18, !dbg !730
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @udp_sendto(%struct.udp_pcb*, %struct.pbuf*, %struct.ip_addr*, i16 zeroext) local_unnamed_addr #0 !dbg !731 {
  %5 = icmp eq %struct.udp_pcb* %0, null, !dbg !744
  br i1 %5, label %6, label %7, !dbg !747

; <label>:6:                                      ; preds = %4
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0)) #8, !dbg !748
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !751
  tail call void @ukplat_terminate(i32 3) #9, !dbg !751
  unreachable, !dbg !751

; <label>:7:                                      ; preds = %4
  %8 = icmp eq %struct.pbuf* %1, null, !dbg !755
  br i1 %8, label %9, label %10, !dbg !758

; <label>:9:                                      ; preds = %7
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0)) #8, !dbg !759
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !762
  tail call void @ukplat_terminate(i32 3) #9, !dbg !762
  unreachable, !dbg !762

; <label>:10:                                     ; preds = %7
  %11 = icmp eq %struct.ip_addr* %2, null, !dbg !766
  br i1 %11, label %12, label %13, !dbg !769

; <label>:12:                                     ; preds = %10
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0)) #8, !dbg !770
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !773
  tail call void @ukplat_terminate(i32 3) #9, !dbg !773
  unreachable, !dbg !773

; <label>:13:                                     ; preds = %10
  %14 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, i32 1, !dbg !777
  %15 = load i8, i8* %14, align 4, !dbg !777, !tbaa !515
  %16 = icmp eq i8 %15, 46, !dbg !777
  br i1 %16, label %21, label %17, !dbg !777

; <label>:17:                                     ; preds = %13
  %18 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 1, !dbg !777
  %19 = load i8, i8* %18, align 4, !dbg !777, !tbaa !779
  %20 = icmp eq i8 %15, %19, !dbg !777
  br i1 %20, label %21, label %81, !dbg !780

; <label>:21:                                     ; preds = %17, %13
  %22 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 2, !dbg !781
  %23 = load i8, i8* %22, align 8, !dbg !781, !tbaa !505
  %24 = icmp eq i8 %23, 0, !dbg !783
  br i1 %24, label %27, label %25, !dbg !784

; <label>:25:                                     ; preds = %21
  %26 = tail call %struct.netif* @netif_get_by_index(i8 zeroext %23) #7, !dbg !785
  br label %72, !dbg !788

; <label>:27:                                     ; preds = %21
  %28 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 1, !dbg !789
  %29 = load i8, i8* %28, align 4, !dbg !789, !tbaa !779
  %30 = icmp eq i8 %29, 6, !dbg !789
  %31 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !789
  %32 = load i32, i32* %31, align 4, !dbg !789, !tbaa !465
  br i1 %30, label %33, label %36, !dbg !792

; <label>:33:                                     ; preds = %27
  %34 = and i32 %32, 255, !dbg !789
  %35 = icmp eq i32 %34, 255, !dbg !789
  br i1 %35, label %39, label %65, !dbg !789

; <label>:36:                                     ; preds = %27
  %37 = and i32 %32, 240, !dbg !789
  %38 = icmp eq i32 %37, 224, !dbg !789
  br i1 %38, label %39, label %69, !dbg !792

; <label>:39:                                     ; preds = %36, %33
  %40 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 11, !dbg !793
  %41 = load i8, i8* %40, align 4, !dbg !793, !tbaa !796
  %42 = icmp eq i8 %41, 0, !dbg !797
  br i1 %42, label %45, label %43, !dbg !798

; <label>:43:                                     ; preds = %39
  %44 = tail call %struct.netif* @netif_get_by_index(i8 zeroext %41) #7, !dbg !799
  br label %57, !dbg !801

; <label>:45:                                     ; preds = %39
  %46 = icmp eq i8 %29, 0, !dbg !802
  br i1 %46, label %47, label %62, !dbg !804

; <label>:47:                                     ; preds = %45
  %48 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 10, !dbg !805
  %49 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %48, i64 0, i32 0, !dbg !805
  %50 = load i32, i32* %49, align 8, !dbg !805, !tbaa !808
  %51 = icmp eq i32 %50, 0, !dbg !805
  %52 = load i32, i32* getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip_addr_broadcast, i64 0, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !809
  %53 = icmp eq i32 %50, %52, !dbg !809
  %54 = or i1 %51, %53, !dbg !810
  br i1 %54, label %69, label %55, !dbg !810

; <label>:55:                                     ; preds = %47
  %56 = tail call %struct.netif* @ip4_route(%struct.ip4_addr* nonnull %48) #7, !dbg !811
  br label %57, !dbg !813

; <label>:57:                                     ; preds = %43, %55
  %58 = phi %struct.netif* [ %44, %43 ], [ %56, %55 ], !dbg !814
  %59 = icmp eq %struct.netif* %58, null, !dbg !815
  br i1 %59, label %60, label %78, !dbg !817

; <label>:60:                                     ; preds = %57
  %61 = load i8, i8* %28, align 4, !dbg !818, !tbaa !779
  br label %62, !dbg !817

; <label>:62:                                     ; preds = %60, %45
  %63 = phi i8 [ %61, %60 ], [ %29, %45 ], !dbg !818
  %64 = icmp eq i8 %63, 6, !dbg !818
  br i1 %64, label %65, label %69, !dbg !818

; <label>:65:                                     ; preds = %33, %62
  %66 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, i32 0, i32 0, !dbg !818
  %67 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 0, i32 0, !dbg !818
  %68 = tail call %struct.netif* @ip6_route(%struct.ip6_addr* nonnull %66, %struct.ip6_addr* nonnull %67) #7, !dbg !818
  br label %72, !dbg !818

; <label>:69:                                     ; preds = %47, %36, %62
  %70 = bitcast %struct.ip_addr* %2 to %struct.ip4_addr*, !dbg !818
  %71 = tail call %struct.netif* @ip4_route(%struct.ip4_addr* %70) #7, !dbg !818
  br label %72, !dbg !818

; <label>:72:                                     ; preds = %65, %69, %25
  %73 = phi %struct.netif* [ %26, %25 ], [ %68, %65 ], [ %71, %69 ], !dbg !820
  %74 = icmp eq %struct.netif* %73, null, !dbg !821
  br i1 %74, label %75, label %78, !dbg !823

; <label>:75:                                     ; preds = %72
  %76 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 5, i32 7), align 2, !dbg !824, !tbaa !826
  %77 = add i16 %76, 1, !dbg !824
  store i16 %77, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 5, i32 7), align 2, !dbg !824, !tbaa !826
  br label %81, !dbg !827

; <label>:78:                                     ; preds = %57, %72
  %79 = phi %struct.netif* [ %73, %72 ], [ %58, %57 ]
  %80 = tail call signext i8 @udp_sendto_if(%struct.udp_pcb* nonnull %0, %struct.pbuf* nonnull %1, %struct.ip_addr* nonnull %2, i16 zeroext %3, %struct.netif* nonnull %79) #8, !dbg !828
  br label %81, !dbg !829

; <label>:81:                                     ; preds = %17, %78, %75
  %82 = phi i8 [ -4, %75 ], [ %80, %78 ], [ -6, %17 ], !dbg !830
  ret i8 %82, !dbg !832
}

; Function Attrs: noredzone
declare dso_local %struct.netif* @netif_get_by_index(i8 zeroext) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local %struct.netif* @ip4_route(%struct.ip4_addr*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local %struct.netif* @ip6_route(%struct.ip6_addr*, %struct.ip6_addr*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local signext i8 @udp_sendto_if(%struct.udp_pcb*, %struct.pbuf*, %struct.ip_addr*, i16 zeroext, %struct.netif*) local_unnamed_addr #0 !dbg !833 {
  %6 = icmp eq %struct.udp_pcb* %0, null, !dbg !848
  br i1 %6, label %7, label %8, !dbg !851

; <label>:7:                                      ; preds = %5
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0)) #8, !dbg !852
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !855
  tail call void @ukplat_terminate(i32 3) #9, !dbg !855
  unreachable, !dbg !855

; <label>:8:                                      ; preds = %5
  %9 = icmp eq %struct.pbuf* %1, null, !dbg !859
  br i1 %9, label %10, label %11, !dbg !862

; <label>:10:                                     ; preds = %8
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0)) #8, !dbg !863
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !866
  tail call void @ukplat_terminate(i32 3) #9, !dbg !866
  unreachable, !dbg !866

; <label>:11:                                     ; preds = %8
  %12 = icmp eq %struct.ip_addr* %2, null, !dbg !870
  br i1 %12, label %13, label %14, !dbg !873

; <label>:13:                                     ; preds = %11
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0)) #8, !dbg !874
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !877
  tail call void @ukplat_terminate(i32 3) #9, !dbg !877
  unreachable, !dbg !877

; <label>:14:                                     ; preds = %11
  %15 = icmp eq %struct.netif* %4, null, !dbg !881
  br i1 %15, label %16, label %17, !dbg !884

; <label>:16:                                     ; preds = %14
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0)) #8, !dbg !885
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !888
  tail call void @ukplat_terminate(i32 3) #9, !dbg !888
  unreachable, !dbg !888

; <label>:17:                                     ; preds = %14
  %18 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, !dbg !892
  %19 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, i32 1, !dbg !892
  %20 = load i8, i8* %19, align 4, !dbg !892, !tbaa !515
  %21 = icmp eq i8 %20, 46, !dbg !892
  %22 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 1
  %23 = load i8, i8* %22, align 4, !dbg !894, !tbaa !779
  br i1 %21, label %26, label %24, !dbg !892

; <label>:24:                                     ; preds = %17
  %25 = icmp eq i8 %20, %23, !dbg !892
  br i1 %25, label %26, label %72, !dbg !895

; <label>:26:                                     ; preds = %17, %24
  %27 = phi i8 [ %20, %24 ], [ %23, %17 ], !dbg !896
  %28 = icmp eq i8 %27, 6, !dbg !896
  br i1 %28, label %29, label %56, !dbg !898

; <label>:29:                                     ; preds = %26
  %30 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, i32 0, i32 0, !dbg !899
  %31 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !899
  %32 = load i32, i32* %31, align 8, !dbg !899, !tbaa !465
  %33 = icmp eq i32 %32, 0, !dbg !899
  br i1 %33, label %34, label %46, !dbg !899

; <label>:34:                                     ; preds = %29
  %35 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !899
  %36 = load i32, i32* %35, align 4, !dbg !899, !tbaa !465
  %37 = icmp eq i32 %36, 0, !dbg !899
  br i1 %37, label %38, label %53, !dbg !899

; <label>:38:                                     ; preds = %34
  %39 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !899
  %40 = load i32, i32* %39, align 8, !dbg !899, !tbaa !465
  %41 = icmp eq i32 %40, 0, !dbg !899
  br i1 %41, label %42, label %53, !dbg !899

; <label>:42:                                     ; preds = %38
  %43 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !899
  %44 = load i32, i32* %43, align 4, !dbg !899, !tbaa !465
  %45 = icmp eq i32 %44, 0, !dbg !899
  br i1 %45, label %49, label %53, !dbg !902

; <label>:46:                                     ; preds = %29
  %47 = and i32 %32, 255, !dbg !903
  %48 = icmp eq i32 %47, 255, !dbg !903
  br i1 %48, label %49, label %53, !dbg !904

; <label>:49:                                     ; preds = %46, %42
  %50 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 0, i32 0, !dbg !905
  %51 = tail call %struct.ip_addr* @ip6_select_source_address(%struct.netif* nonnull %4, %struct.ip6_addr* nonnull %50) #7, !dbg !907
  %52 = icmp eq %struct.ip_addr* %51, null, !dbg !909
  br i1 %52, label %72, label %69, !dbg !911

; <label>:53:                                     ; preds = %34, %38, %42, %46
  %54 = tail call signext i8 @netif_get_ip6_addr_match(%struct.netif* nonnull %4, %struct.ip6_addr* nonnull %30) #7, !dbg !912
  %55 = icmp slt i8 %54, 0, !dbg !915
  br i1 %55, label %72, label %69, !dbg !916

; <label>:56:                                     ; preds = %26
  %57 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !917
  %58 = load i32, i32* %57, align 8, !dbg !917, !tbaa !465
  %59 = icmp eq i32 %58, 0, !dbg !917
  %60 = and i32 %58, 240, !dbg !919
  %61 = icmp eq i32 %60, 224, !dbg !919
  %62 = or i1 %59, %61, !dbg !920
  br i1 %62, label %63, label %65, !dbg !920

; <label>:63:                                     ; preds = %56
  %64 = getelementptr inbounds %struct.netif, %struct.netif* %4, i64 0, i32 1, !dbg !921
  br label %69, !dbg !923

; <label>:65:                                     ; preds = %56
  %66 = getelementptr inbounds %struct.netif, %struct.netif* %4, i64 0, i32 1, i32 0, i32 0, i32 0, i64 0, !dbg !924
  %67 = load i32, i32* %66, align 8, !dbg !924, !tbaa !465
  %68 = icmp eq i32 %58, %67, !dbg !924
  br i1 %68, label %69, label %72, !dbg !927

; <label>:69:                                     ; preds = %65, %53, %63, %49
  %70 = phi %struct.ip_addr* [ %51, %49 ], [ %64, %63 ], [ %18, %53 ], [ %18, %65 ], !dbg !928
  %71 = tail call signext i8 @udp_sendto_if_src(%struct.udp_pcb* nonnull %0, %struct.pbuf* nonnull %1, %struct.ip_addr* nonnull %2, i16 zeroext %3, %struct.netif* nonnull %4, %struct.ip_addr* nonnull %70) #8, !dbg !929
  br label %72, !dbg !930

; <label>:72:                                     ; preds = %65, %53, %49, %24, %69
  %73 = phi i8 [ %71, %69 ], [ -6, %24 ], [ -4, %49 ], [ -4, %53 ], [ -4, %65 ], !dbg !931
  ret i8 %73, !dbg !933
}

; Function Attrs: noredzone
declare dso_local %struct.ip_addr* @ip6_select_source_address(%struct.netif*, %struct.ip6_addr*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local signext i8 @udp_sendto_if_src(%struct.udp_pcb*, %struct.pbuf*, %struct.ip_addr*, i16 zeroext, %struct.netif*, %struct.ip_addr*) local_unnamed_addr #0 !dbg !934 {
  %7 = icmp eq %struct.udp_pcb* %0, null, !dbg !961
  br i1 %7, label %8, label %9, !dbg !964

; <label>:8:                                      ; preds = %6
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0)) #8, !dbg !965
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !968
  tail call void @ukplat_terminate(i32 3) #9, !dbg !968
  unreachable, !dbg !968

; <label>:9:                                      ; preds = %6
  %10 = icmp eq %struct.pbuf* %1, null, !dbg !972
  br i1 %10, label %11, label %12, !dbg !975

; <label>:11:                                     ; preds = %9
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0)) #8, !dbg !976
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !979
  tail call void @ukplat_terminate(i32 3) #9, !dbg !979
  unreachable, !dbg !979

; <label>:12:                                     ; preds = %9
  %13 = icmp eq %struct.ip_addr* %2, null, !dbg !983
  br i1 %13, label %14, label %15, !dbg !986

; <label>:14:                                     ; preds = %12
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0)) #8, !dbg !987
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !990
  tail call void @ukplat_terminate(i32 3) #9, !dbg !990
  unreachable, !dbg !990

; <label>:15:                                     ; preds = %12
  %16 = icmp eq %struct.ip_addr* %5, null, !dbg !994
  br i1 %16, label %17, label %18, !dbg !997

; <label>:17:                                     ; preds = %15
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i64 0, i64 0)) #8, !dbg !998
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1001
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1001
  unreachable, !dbg !1001

; <label>:18:                                     ; preds = %15
  %19 = icmp eq %struct.netif* %4, null, !dbg !1005
  br i1 %19, label %20, label %21, !dbg !1008

; <label>:20:                                     ; preds = %18
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i64 0, i64 0)) #8, !dbg !1009
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1012
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1012
  unreachable, !dbg !1012

; <label>:21:                                     ; preds = %18
  %22 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, !dbg !1016
  %23 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, i32 1, !dbg !1016
  %24 = load i8, i8* %23, align 4, !dbg !1016, !tbaa !515
  %25 = icmp eq i8 %24, 46, !dbg !1016
  br i1 %25, label %34, label %26, !dbg !1016

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 1, !dbg !1016
  %28 = load i8, i8* %27, align 4, !dbg !1016, !tbaa !779
  %29 = icmp eq i8 %24, %28, !dbg !1016
  br i1 %29, label %30, label %151, !dbg !1018

; <label>:30:                                     ; preds = %26
  %31 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 1, !dbg !1019
  %32 = load i8, i8* %31, align 4, !dbg !1019, !tbaa !779
  %33 = icmp eq i8 %24, %32, !dbg !1019
  br i1 %33, label %34, label %151, !dbg !1020

; <label>:34:                                     ; preds = %21, %30
  %35 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 8, !dbg !1021
  %36 = load i16, i16* %35, align 2, !dbg !1021, !tbaa !487
  %37 = icmp eq i16 %36, 0, !dbg !1023
  br i1 %37, label %38, label %41, !dbg !1024

; <label>:38:                                     ; preds = %34
  %39 = tail call signext i8 @udp_bind(%struct.udp_pcb* nonnull %0, %struct.ip_addr* nonnull %22, i16 zeroext 0) #8, !dbg !1025
  %40 = icmp eq i8 %39, 0, !dbg !1028
  br i1 %40, label %41, label %151, !dbg !1030

; <label>:41:                                     ; preds = %38, %34
  %42 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %1, i64 0, i32 2, !dbg !1031
  %43 = load i16, i16* %42, align 8, !dbg !1031, !tbaa !628
  %44 = icmp ugt i16 %43, -9, !dbg !1033
  br i1 %44, label %151, label %45, !dbg !1034

; <label>:45:                                     ; preds = %41
  %46 = tail call zeroext i8 @pbuf_add_header(%struct.pbuf* nonnull %1, i64 8) #7, !dbg !1035
  %47 = icmp eq i8 %46, 0, !dbg !1035
  br i1 %47, label %55, label %48, !dbg !1037

; <label>:48:                                     ; preds = %45
  %49 = tail call %struct.pbuf* @pbuf_alloc(i32 54, i16 zeroext 8, i32 640) #7, !dbg !1038
  %50 = icmp eq %struct.pbuf* %49, null, !dbg !1041
  br i1 %50, label %151, label %51, !dbg !1043

; <label>:51:                                     ; preds = %48
  %52 = load i16, i16* %42, align 8, !dbg !1044, !tbaa !628
  %53 = icmp eq i16 %52, 0, !dbg !1046
  br i1 %53, label %55, label %54, !dbg !1047

; <label>:54:                                     ; preds = %51
  tail call void @pbuf_chain(%struct.pbuf* nonnull %49, %struct.pbuf* nonnull %1) #7, !dbg !1048
  br label %55, !dbg !1050

; <label>:55:                                     ; preds = %45, %51, %54
  %56 = phi %struct.pbuf* [ %49, %54 ], [ %49, %51 ], [ %1, %45 ], !dbg !1051
  %57 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %56, i64 0, i32 3, !dbg !1053
  %58 = load i16, i16* %57, align 2, !dbg !1053, !tbaa !446
  %59 = icmp ugt i16 %58, 7, !dbg !1053
  br i1 %59, label %61, label %60, !dbg !1056

; <label>:60:                                     ; preds = %55
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.19, i64 0, i64 0)) #8, !dbg !1057
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1060
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1060
  unreachable, !dbg !1060

; <label>:61:                                     ; preds = %55
  %62 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %56, i64 0, i32 1, !dbg !1064
  %63 = bitcast i8** %62 to %struct.udp_hdr**, !dbg !1064
  %64 = load %struct.udp_hdr*, %struct.udp_hdr** %63, align 8, !dbg !1064, !tbaa !459
  %65 = load i16, i16* %35, align 2, !dbg !1066, !tbaa !487
  %66 = tail call zeroext i16 @lwip_htons(i16 zeroext %65) #7, !dbg !1067
  %67 = getelementptr inbounds %struct.udp_hdr, %struct.udp_hdr* %64, i64 0, i32 0, !dbg !1068
  store i16 %66, i16* %67, align 1, !dbg !1069, !tbaa !469
  %68 = tail call zeroext i16 @lwip_htons(i16 zeroext %3) #7, !dbg !1070
  %69 = getelementptr inbounds %struct.udp_hdr, %struct.udp_hdr* %64, i64 0, i32 1, !dbg !1071
  store i16 %68, i16* %69, align 1, !dbg !1072, !tbaa !473
  %70 = getelementptr inbounds %struct.udp_hdr, %struct.udp_hdr* %64, i64 0, i32 3, !dbg !1073
  store i16 0, i16* %70, align 1, !dbg !1074, !tbaa !622
  %71 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 7, !dbg !1075
  %72 = load i8, i8* %71, align 8, !dbg !1075, !tbaa !537
  %73 = and i8 %72, 8, !dbg !1077
  %74 = icmp eq i8 %73, 0, !dbg !1078
  br i1 %74, label %91, label %75, !dbg !1079

; <label>:75:                                     ; preds = %61
  %76 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 1, !dbg !1080
  %77 = load i8, i8* %76, align 4, !dbg !1080, !tbaa !779
  %78 = icmp eq i8 %77, 6, !dbg !1080
  %79 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1080
  %80 = load i32, i32* %79, align 4, !dbg !1080, !tbaa !465
  br i1 %78, label %81, label %84, !dbg !1081

; <label>:81:                                     ; preds = %75
  %82 = and i32 %80, 255, !dbg !1080
  %83 = icmp eq i32 %82, 255, !dbg !1080
  br i1 %83, label %87, label %91, !dbg !1080

; <label>:84:                                     ; preds = %75
  %85 = and i32 %80, 240, !dbg !1080
  %86 = icmp eq i32 %85, 224, !dbg !1080
  br i1 %86, label %87, label %91, !dbg !1081

; <label>:87:                                     ; preds = %84, %81
  %88 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %56, i64 0, i32 5, !dbg !1082
  %89 = load i8, i8* %88, align 1, !dbg !1084, !tbaa !1085
  %90 = or i8 %89, 4, !dbg !1084
  store i8 %90, i8* %88, align 1, !dbg !1084, !tbaa !1085
  br label %91, !dbg !1086

; <label>:91:                                     ; preds = %61, %87, %84, %81
  %92 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %56, i64 0, i32 2, !dbg !1087
  %93 = load i16, i16* %92, align 8, !dbg !1087, !tbaa !628
  %94 = tail call zeroext i16 @lwip_htons(i16 zeroext %93) #7, !dbg !1088
  %95 = getelementptr inbounds %struct.udp_hdr, %struct.udp_hdr* %64, i64 0, i32 2, !dbg !1089
  store i16 %94, i16* %95, align 1, !dbg !1090, !tbaa !1091
  %96 = getelementptr inbounds %struct.netif, %struct.netif* %4, i64 0, i32 16, !dbg !1092
  %97 = load i16, i16* %96, align 8, !dbg !1092, !tbaa !616
  %98 = and i16 %97, 2, !dbg !1092
  %99 = icmp eq i16 %98, 0, !dbg !1092
  %100 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 1, !dbg !1093
  br i1 %99, label %113, label %101, !dbg !1094

; <label>:101:                                    ; preds = %91
  %102 = load i8, i8* %100, align 4, !dbg !1095, !tbaa !779
  %103 = icmp eq i8 %102, 6, !dbg !1095
  br i1 %103, label %108, label %104, !dbg !1096

; <label>:104:                                    ; preds = %101
  %105 = load i8, i8* %71, align 8, !dbg !1097, !tbaa !537
  %106 = and i8 %105, 1, !dbg !1098
  %107 = icmp eq i8 %106, 0, !dbg !1099
  br i1 %107, label %108, label %113, !dbg !1100

; <label>:108:                                    ; preds = %104, %101
  %109 = load i16, i16* %92, align 8, !dbg !1101, !tbaa !628
  %110 = tail call zeroext i16 @ip_chksum_pseudo(%struct.pbuf* nonnull %56, i8 zeroext 17, i16 zeroext %109, %struct.ip_addr* nonnull %5, %struct.ip_addr* nonnull %2) #7, !dbg !1103
  %111 = icmp eq i16 %110, 0, !dbg !1105
  %112 = select i1 %111, i16 -1, i16 %110, !dbg !1107
  store i16 %112, i16* %70, align 1, !dbg !1108, !tbaa !622
  br label %113, !dbg !1109

; <label>:113:                                    ; preds = %91, %108, %104
  %114 = load i8, i8* %100, align 4, !dbg !1111, !tbaa !779
  %115 = icmp eq i8 %114, 6, !dbg !1111
  %116 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1111
  %117 = load i32, i32* %116, align 4, !dbg !1111, !tbaa !465
  br i1 %115, label %118, label %121, !dbg !1111

; <label>:118:                                    ; preds = %113
  %119 = and i32 %117, 255, !dbg !1111
  %120 = icmp eq i32 %119, 255, !dbg !1111
  br i1 %120, label %124, label %126, !dbg !1111

; <label>:121:                                    ; preds = %113
  %122 = and i32 %117, 240, !dbg !1111
  %123 = icmp eq i32 %122, 224, !dbg !1111
  br i1 %123, label %124, label %126, !dbg !1111

; <label>:124:                                    ; preds = %121, %118
  %125 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 12, !dbg !1112
  br label %128, !dbg !1111

; <label>:126:                                    ; preds = %121, %118
  %127 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 5, !dbg !1113
  br label %128, !dbg !1111

; <label>:128:                                    ; preds = %126, %124
  %129 = phi i8* [ %125, %124 ], [ %127, %126 ]
  %130 = load i8, i8* %129, align 1, !dbg !1114, !tbaa !465
  br i1 %115, label %131, label %137, !dbg !1116

; <label>:131:                                    ; preds = %128
  %132 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i64 0, i32 0, i32 0, !dbg !1116
  %133 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 0, i32 0, !dbg !1116
  %134 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 4, !dbg !1116
  %135 = load i8, i8* %134, align 2, !dbg !1116, !tbaa !1117
  %136 = tail call signext i8 @ip6_output_if_src(%struct.pbuf* nonnull %56, %struct.ip6_addr* nonnull %132, %struct.ip6_addr* nonnull %133, i8 zeroext %130, i8 zeroext %135, i8 zeroext 17, %struct.netif* nonnull %4) #7, !dbg !1116
  br label %143, !dbg !1116

; <label>:137:                                    ; preds = %128
  %138 = bitcast %struct.ip_addr* %5 to %struct.ip4_addr*, !dbg !1116
  %139 = bitcast %struct.ip_addr* %2 to %struct.ip4_addr*, !dbg !1116
  %140 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 4, !dbg !1116
  %141 = load i8, i8* %140, align 2, !dbg !1116, !tbaa !1117
  %142 = tail call signext i8 @ip4_output_if_src(%struct.pbuf* nonnull %56, %struct.ip4_addr* %138, %struct.ip4_addr* %139, i8 zeroext %130, i8 zeroext %141, i8 zeroext 17, %struct.netif* nonnull %4) #7, !dbg !1116
  br label %143, !dbg !1116

; <label>:143:                                    ; preds = %137, %131
  %144 = phi i8 [ %136, %131 ], [ %142, %137 ]
  %145 = icmp eq %struct.pbuf* %56, %1, !dbg !1118
  br i1 %145, label %148, label %146, !dbg !1120

; <label>:146:                                    ; preds = %143
  %147 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %56) #7, !dbg !1121
  br label %148, !dbg !1123

; <label>:148:                                    ; preds = %143, %146
  %149 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 5, i32 0), align 2, !dbg !1124, !tbaa !1125
  %150 = add i16 %149, 1, !dbg !1124
  store i16 %150, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 5, i32 0), align 2, !dbg !1124, !tbaa !1125
  br label %151, !dbg !1126

; <label>:151:                                    ; preds = %48, %41, %38, %26, %30, %148
  %152 = phi i8 [ %144, %148 ], [ -6, %30 ], [ -6, %26 ], [ %39, %38 ], [ -1, %41 ], [ -1, %48 ], !dbg !1127
  ret i8 %152, !dbg !1129
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @udp_bind(%struct.udp_pcb*, %struct.ip_addr*, i16 zeroext) local_unnamed_addr #0 !dbg !1130 {
  %4 = alloca %struct.ip_addr, align 4
  %5 = bitcast %struct.ip_addr* %4 to i8*, !dbg !1147
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #6, !dbg !1147
  %6 = icmp eq %struct.ip_addr* %1, null, !dbg !1148
  %7 = select i1 %6, %struct.ip_addr* @ip_addr_any, %struct.ip_addr* %1, !dbg !1150
  %8 = icmp eq %struct.udp_pcb* %0, null, !dbg !1151
  br i1 %8, label %12, label %9, !dbg !1154

; <label>:9:                                      ; preds = %3
  %10 = load %struct.udp_pcb*, %struct.udp_pcb** @udp_pcbs, align 8, !dbg !1155, !tbaa !481
  %11 = icmp eq %struct.udp_pcb* %10, null, !dbg !1159
  br i1 %11, label %20, label %17, !dbg !1160

; <label>:12:                                     ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0)) #8, !dbg !1161
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1164
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1164
  unreachable, !dbg !1164

; <label>:13:                                     ; preds = %17
  %14 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %18, i64 0, i32 6, !dbg !1168
  %15 = load %struct.udp_pcb*, %struct.udp_pcb** %14, align 8, !dbg !1155, !tbaa !481
  %16 = icmp eq %struct.udp_pcb* %15, null, !dbg !1159
  br i1 %16, label %20, label %17, !dbg !1160, !llvm.loop !1169

; <label>:17:                                     ; preds = %9, %13
  %18 = phi %struct.udp_pcb* [ %15, %13 ], [ %10, %9 ]
  %19 = icmp eq %struct.udp_pcb* %18, %0, !dbg !1171
  br i1 %19, label %20, label %13, !dbg !1174

; <label>:20:                                     ; preds = %17, %13, %9
  %21 = phi i32 [ 0, %9 ], [ 0, %13 ], [ 1, %17 ]
  %22 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %7, i64 0, i32 1, !dbg !1175
  %23 = load i8, i8* %22, align 4, !dbg !1175, !tbaa !779
  %24 = icmp eq i8 %23, 6, !dbg !1175
  br i1 %24, label %25, label %66, !dbg !1176

; <label>:25:                                     ; preds = %20
  %26 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %7, i64 0, i32 0, i32 0, i32 1, !dbg !1177
  %27 = load i8, i8* %26, align 4, !dbg !1177, !tbaa !465
  %28 = icmp eq i8 %27, 0, !dbg !1177
  br i1 %28, label %29, label %66, !dbg !1177

; <label>:29:                                     ; preds = %25
  %30 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %7, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1177
  %31 = load i32, i32* %30, align 4, !dbg !1177, !tbaa !465
  %32 = and i32 %31, 49407, !dbg !1177
  %33 = icmp eq i32 %32, 33022, !dbg !1177
  br i1 %33, label %37, label %34, !dbg !1177

; <label>:34:                                     ; preds = %29
  %35 = trunc i32 %31 to i16, !dbg !1177
  %36 = and i16 %35, -28673, !dbg !1177
  switch i16 %36, label %66 [
    i16 511, label %37
    i16 767, label %37
  ], !dbg !1177

; <label>:37:                                     ; preds = %34, %34, %29
  %38 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 1, !dbg !1178
  store i8 6, i8* %38, align 4, !dbg !1178, !tbaa !779
  %39 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1181
  store i32 %31, i32* %39, align 4, !dbg !1181, !tbaa !465
  %40 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %7, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !1181
  %41 = load i32, i32* %40, align 4, !dbg !1181, !tbaa !465
  %42 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !1181
  store i32 %41, i32* %42, align 4, !dbg !1181, !tbaa !465
  %43 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %7, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !1181
  %44 = load i32, i32* %43, align 4, !dbg !1181, !tbaa !465
  %45 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !1181
  store i32 %44, i32* %45, align 4, !dbg !1181, !tbaa !465
  %46 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %7, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !1181
  %47 = load i32, i32* %46, align 4, !dbg !1181, !tbaa !465
  %48 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !1181
  store i32 %47, i32* %48, align 4, !dbg !1181, !tbaa !465
  %49 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, i32 1, !dbg !1181
  store i8 0, i8* %49, align 4, !dbg !1181, !tbaa !465
  %50 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, !dbg !1185
  %51 = call %struct.netif* @ip6_route(%struct.ip6_addr* nonnull %50, %struct.ip6_addr* nonnull %50) #7, !dbg !1185
  %52 = icmp eq %struct.netif* %51, null, !dbg !1186
  br i1 %52, label %66, label %53, !dbg !1185

; <label>:53:                                     ; preds = %37
  %54 = load i32, i32* %39, align 4, !dbg !1188, !tbaa !465
  %55 = and i32 %54, 49407, !dbg !1188
  %56 = icmp eq i32 %55, 33022, !dbg !1188
  br i1 %56, label %60, label %57, !dbg !1188

; <label>:57:                                     ; preds = %53
  %58 = trunc i32 %54 to i16, !dbg !1188
  %59 = and i16 %58, -28673, !dbg !1188
  switch i16 %59, label %64 [
    i16 511, label %60
    i16 767, label %60
  ], !dbg !1188

; <label>:60:                                     ; preds = %57, %57, %53
  %61 = getelementptr inbounds %struct.netif, %struct.netif* %51, i64 0, i32 23, !dbg !1188
  %62 = load i8, i8* %61, align 8, !dbg !1188, !tbaa !509
  %63 = add i8 %62, 1, !dbg !1188
  br label %64, !dbg !1188

; <label>:64:                                     ; preds = %57, %60
  %65 = phi i8 [ %63, %60 ], [ 0, %57 ]
  store i8 %65, i8* %49, align 4, !dbg !1188, !tbaa !465
  br label %66, !dbg !1188

; <label>:66:                                     ; preds = %64, %37, %34, %25, %20
  %67 = phi %struct.ip_addr* [ %7, %25 ], [ %7, %20 ], [ %7, %34 ], [ %4, %37 ], [ %4, %64 ], !dbg !1190
  %68 = icmp eq i16 %2, 0, !dbg !1192
  %69 = load %struct.udp_pcb*, %struct.udp_pcb** @udp_pcbs, align 8, !tbaa !481
  %70 = icmp eq %struct.udp_pcb* %69, null
  br i1 %68, label %80, label %71, !dbg !1194

; <label>:71:                                     ; preds = %66
  br i1 %70, label %196, label %72, !dbg !1195

; <label>:72:                                     ; preds = %71
  %73 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 3
  %74 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %67, i64 0, i32 1
  %75 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %67, i64 0, i32 0, i32 0, i32 0, i64 0
  %76 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %67, i64 0, i32 0, i32 0, i32 0, i64 1
  %77 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %67, i64 0, i32 0, i32 0, i32 0, i64 2
  %78 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %67, i64 0, i32 0, i32 0, i32 0, i64 3
  %79 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %67, i64 0, i32 0, i32 0, i32 1
  br label %107, !dbg !1195

; <label>:80:                                     ; preds = %66
  %81 = load i16, i16* @udp_port, align 2, !dbg !1207
  br label %82, !dbg !1210

; <label>:82:                                     ; preds = %242, %80
  %83 = phi i16 [ %81, %80 ], [ %100, %242 ], !dbg !1204
  %84 = phi i16 [ 0, %80 ], [ %243, %242 ], !dbg !1211
  %85 = add i16 %83, 1, !dbg !1218
  %86 = icmp eq i16 %83, -1, !dbg !1219
  %87 = select i1 %86, i16 -16384, i16 %85, !dbg !1220
  br i1 %70, label %101, label %92, !dbg !1222

; <label>:88:                                     ; preds = %92
  %89 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %93, i64 0, i32 6, !dbg !1223
  %90 = load %struct.udp_pcb*, %struct.udp_pcb** %89, align 8, !dbg !1224, !tbaa !481
  %91 = icmp eq %struct.udp_pcb* %90, null, !dbg !1225
  br i1 %91, label %104, label %92, !dbg !1222, !llvm.loop !1226

; <label>:92:                                     ; preds = %82, %88
  %93 = phi %struct.udp_pcb* [ %90, %88 ], [ %69, %82 ]
  %94 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %93, i64 0, i32 8, !dbg !1229
  %95 = load i16, i16* %94, align 2, !dbg !1229, !tbaa !487
  %96 = icmp eq i16 %95, %87, !dbg !1230
  br i1 %96, label %97, label %88, !dbg !1231

; <label>:97:                                     ; preds = %92
  %98 = add i16 %87, 1, !dbg !1218
  %99 = icmp eq i16 %87, -1, !dbg !1219
  %100 = select i1 %99, i16 -16384, i16 %98, !dbg !1220
  br i1 %70, label %101, label %233, !dbg !1222

; <label>:101:                                    ; preds = %97, %82
  %102 = phi i16 [ %87, %82 ], [ %100, %97 ], !dbg !1220
  store i16 %102, i16* @udp_port, align 2, !dbg !1207
  br label %196, !dbg !1232

; <label>:103:                                    ; preds = %242
  store i16 %100, i16* @udp_port, align 2, !dbg !1207
  br label %231, !dbg !1232

; <label>:104:                                    ; preds = %238, %88
  %105 = phi i16 [ %87, %88 ], [ %100, %238 ], !dbg !1220
  store i16 %105, i16* @udp_port, align 2, !dbg !1207
  %106 = icmp eq i16 %105, 0, !dbg !1233
  br i1 %106, label %231, label %196, !dbg !1232

; <label>:107:                                    ; preds = %72, %192
  %108 = phi %struct.udp_pcb* [ %69, %72 ], [ %194, %192 ]
  %109 = icmp eq %struct.udp_pcb* %108, %0, !dbg !1235
  br i1 %109, label %192, label %110, !dbg !1239

; <label>:110:                                    ; preds = %107
  %111 = load i8, i8* %73, align 1, !dbg !1240, !tbaa !1243
  %112 = and i8 %111, 4, !dbg !1240
  %113 = icmp eq i8 %112, 0, !dbg !1240
  br i1 %113, label %119, label %114, !dbg !1244

; <label>:114:                                    ; preds = %110
  %115 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %108, i64 0, i32 3, !dbg !1245
  %116 = load i8, i8* %115, align 1, !dbg !1245, !tbaa !1243
  %117 = and i8 %116, 4, !dbg !1245
  %118 = icmp eq i8 %117, 0, !dbg !1245
  br i1 %118, label %119, label %192, !dbg !1246

; <label>:119:                                    ; preds = %114, %110
  %120 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %108, i64 0, i32 8, !dbg !1247
  %121 = load i16, i16* %120, align 2, !dbg !1247, !tbaa !487
  %122 = icmp eq i16 %121, %2, !dbg !1250
  br i1 %122, label %123, label %192, !dbg !1251

; <label>:123:                                    ; preds = %119
  %124 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %108, i64 0, i32 0, i32 1, !dbg !1252
  %125 = load i8, i8* %124, align 4, !dbg !1252, !tbaa !515
  %126 = load i8, i8* %74, align 4, !dbg !1252, !tbaa !779
  %127 = icmp eq i8 %125, %126, !dbg !1252
  br i1 %127, label %130, label %128, !dbg !1253

; <label>:128:                                    ; preds = %123
  %129 = load i32, i32* %75, align 4, !dbg !1254, !tbaa !465
  br label %158, !dbg !1253

; <label>:130:                                    ; preds = %123
  %131 = icmp eq i8 %125, 6, !dbg !1252
  %132 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %108, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !1252
  %133 = load i32, i32* %132, align 8, !dbg !1252, !tbaa !465
  %134 = load i32, i32* %75, align 4, !dbg !1252, !tbaa !465
  %135 = icmp eq i32 %133, %134, !dbg !1252
  br i1 %131, label %136, label %157, !dbg !1253

; <label>:136:                                    ; preds = %130
  br i1 %135, label %137, label %158, !dbg !1252

; <label>:137:                                    ; preds = %136
  %138 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %108, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !1252
  %139 = load i32, i32* %138, align 4, !dbg !1252, !tbaa !465
  %140 = load i32, i32* %76, align 4, !dbg !1252, !tbaa !465
  %141 = icmp eq i32 %139, %140, !dbg !1252
  br i1 %141, label %142, label %158, !dbg !1252

; <label>:142:                                    ; preds = %137
  %143 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %108, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !1252
  %144 = load i32, i32* %143, align 8, !dbg !1252, !tbaa !465
  %145 = load i32, i32* %77, align 4, !dbg !1252, !tbaa !465
  %146 = icmp eq i32 %144, %145, !dbg !1252
  br i1 %146, label %147, label %158, !dbg !1252

; <label>:147:                                    ; preds = %142
  %148 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %108, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !1252
  %149 = load i32, i32* %148, align 4, !dbg !1252, !tbaa !465
  %150 = load i32, i32* %78, align 4, !dbg !1252, !tbaa !465
  %151 = icmp eq i32 %149, %150, !dbg !1252
  br i1 %151, label %152, label %158, !dbg !1252

; <label>:152:                                    ; preds = %147
  %153 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %108, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !1252
  %154 = load i8, i8* %153, align 8, !dbg !1252, !tbaa !465
  %155 = load i8, i8* %79, align 4, !dbg !1252, !tbaa !465
  %156 = icmp eq i8 %154, %155, !dbg !1252
  br i1 %156, label %231, label %158, !dbg !1252

; <label>:157:                                    ; preds = %130
  br i1 %135, label %231, label %158, !dbg !1253

; <label>:158:                                    ; preds = %128, %136, %137, %142, %147, %157, %152
  %159 = phi i32 [ %129, %128 ], [ %134, %136 ], [ %133, %137 ], [ %133, %142 ], [ %133, %147 ], [ %134, %157 ], [ %133, %152 ], !dbg !1254
  %160 = icmp eq i8 %126, 6, !dbg !1254
  %161 = icmp eq i32 %159, 0, !dbg !1254
  br i1 %160, label %162, label %172, !dbg !1255

; <label>:162:                                    ; preds = %158
  br i1 %161, label %163, label %173, !dbg !1254

; <label>:163:                                    ; preds = %162
  %164 = load i32, i32* %76, align 4, !dbg !1254, !tbaa !465
  %165 = icmp eq i32 %164, 0, !dbg !1254
  br i1 %165, label %166, label %173, !dbg !1254

; <label>:166:                                    ; preds = %163
  %167 = load i32, i32* %77, align 4, !dbg !1254, !tbaa !465
  %168 = icmp eq i32 %167, 0, !dbg !1254
  br i1 %168, label %169, label %173, !dbg !1254

; <label>:169:                                    ; preds = %166
  %170 = load i32, i32* %78, align 4, !dbg !1254, !tbaa !465
  %171 = icmp eq i32 %170, 0, !dbg !1254
  br i1 %171, label %231, label %173, !dbg !1254

; <label>:172:                                    ; preds = %158
  br i1 %161, label %231, label %173, !dbg !1255

; <label>:173:                                    ; preds = %172, %169, %166, %163, %162
  %174 = icmp eq i8 %125, 6, !dbg !1256
  %175 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %108, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !1256
  %176 = load i32, i32* %175, align 8, !dbg !1256, !tbaa !465
  %177 = icmp eq i32 %176, 0, !dbg !1256
  br i1 %174, label %178, label %191, !dbg !1257

; <label>:178:                                    ; preds = %173
  br i1 %177, label %179, label %192, !dbg !1256

; <label>:179:                                    ; preds = %178
  %180 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %108, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !1256
  %181 = load i32, i32* %180, align 4, !dbg !1256, !tbaa !465
  %182 = icmp eq i32 %181, 0, !dbg !1256
  br i1 %182, label %183, label %192, !dbg !1256

; <label>:183:                                    ; preds = %179
  %184 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %108, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !1256
  %185 = load i32, i32* %184, align 8, !dbg !1256, !tbaa !465
  %186 = icmp eq i32 %185, 0, !dbg !1256
  br i1 %186, label %187, label %192, !dbg !1256

; <label>:187:                                    ; preds = %183
  %188 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %108, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !1256
  %189 = load i32, i32* %188, align 4, !dbg !1256, !tbaa !465
  %190 = icmp eq i32 %189, 0, !dbg !1256
  br i1 %190, label %231, label %192, !dbg !1256

; <label>:191:                                    ; preds = %173
  br i1 %177, label %231, label %192, !dbg !1257

; <label>:192:                                    ; preds = %114, %107, %119, %178, %179, %183, %187, %191
  %193 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %108, i64 0, i32 6, !dbg !1258
  %194 = load %struct.udp_pcb*, %struct.udp_pcb** %193, align 8, !dbg !1259, !tbaa !481
  %195 = icmp eq %struct.udp_pcb* %194, null, !dbg !1260
  br i1 %195, label %196, label %107, !dbg !1195, !llvm.loop !1261

; <label>:196:                                    ; preds = %192, %71, %104, %101
  %197 = phi i16 [ %105, %104 ], [ %102, %101 ], [ %2, %71 ], [ %2, %192 ]
  %198 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %67, i64 0, i32 1, !dbg !1263
  %199 = load i8, i8* %198, align 4, !dbg !1263, !tbaa !779
  %200 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, i32 1, !dbg !1263
  store i8 %199, i8* %200, align 4, !dbg !1263, !tbaa !515
  %201 = load i8, i8* %198, align 4, !dbg !1269, !tbaa !779
  %202 = icmp eq i8 %201, 6, !dbg !1269
  %203 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %67, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1271
  %204 = load i32, i32* %203, align 4, !dbg !1271, !tbaa !465
  %205 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !1271
  store i32 %204, i32* %205, align 8, !dbg !1271, !tbaa !465
  br i1 %202, label %206, label %218, !dbg !1274

; <label>:206:                                    ; preds = %196
  %207 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %67, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !1271
  %208 = load i32, i32* %207, align 4, !dbg !1271, !tbaa !465
  %209 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !1271
  store i32 %208, i32* %209, align 4, !dbg !1271, !tbaa !465
  %210 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %67, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !1271
  %211 = load i32, i32* %210, align 4, !dbg !1271, !tbaa !465
  %212 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !1271
  store i32 %211, i32* %212, align 8, !dbg !1271, !tbaa !465
  %213 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %67, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !1271
  %214 = load i32, i32* %213, align 4, !dbg !1271, !tbaa !465
  %215 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !1271
  store i32 %214, i32* %215, align 4, !dbg !1271, !tbaa !465
  %216 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %67, i64 0, i32 0, i32 0, i32 1, !dbg !1271
  %217 = load i8, i8* %216, align 4, !dbg !1271, !tbaa !465
  br label %222, !dbg !1275

; <label>:218:                                    ; preds = %196
  %219 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !1276
  store i32 0, i32* %219, align 4, !dbg !1276, !tbaa !465
  %220 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !1276
  store i32 0, i32* %220, align 8, !dbg !1276, !tbaa !465
  %221 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !1276
  store i32 0, i32* %221, align 4, !dbg !1276, !tbaa !465
  br label %222

; <label>:222:                                    ; preds = %218, %206
  %223 = phi i8 [ 0, %218 ], [ %217, %206 ]
  %224 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !1276
  store i8 %223, i8* %224, align 8, !dbg !1276
  %225 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 8, !dbg !1279
  store i16 %197, i16* %225, align 2, !dbg !1280, !tbaa !487
  %226 = icmp eq i32 %21, 0, !dbg !1281
  br i1 %226, label %227, label %231, !dbg !1283

; <label>:227:                                    ; preds = %222
  %228 = load i64, i64* bitcast (%struct.udp_pcb** @udp_pcbs to i64*), align 8, !dbg !1284, !tbaa !481
  %229 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 6, !dbg !1286
  %230 = bitcast %struct.udp_pcb** %229 to i64*, !dbg !1287
  store i64 %228, i64* %230, align 8, !dbg !1287, !tbaa !581
  store %struct.udp_pcb* %0, %struct.udp_pcb** @udp_pcbs, align 8, !dbg !1288, !tbaa !481
  br label %231, !dbg !1289

; <label>:231:                                    ; preds = %152, %157, %169, %172, %187, %191, %103, %222, %227, %104
  %232 = phi i8 [ -8, %104 ], [ 0, %227 ], [ 0, %222 ], [ -8, %103 ], [ -8, %191 ], [ -8, %187 ], [ -8, %172 ], [ -8, %169 ], [ -8, %157 ], [ -8, %152 ], !dbg !1290
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #6, !dbg !1292
  ret i8 %232, !dbg !1292

; <label>:233:                                    ; preds = %97, %238
  %234 = phi %struct.udp_pcb* [ %240, %238 ], [ %69, %97 ]
  %235 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %234, i64 0, i32 8, !dbg !1229
  %236 = load i16, i16* %235, align 2, !dbg !1229, !tbaa !487
  %237 = icmp eq i16 %236, %100, !dbg !1230
  br i1 %237, label %242, label %238, !dbg !1231

; <label>:238:                                    ; preds = %233
  %239 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %234, i64 0, i32 6, !dbg !1223
  %240 = load %struct.udp_pcb*, %struct.udp_pcb** %239, align 8, !dbg !1224, !tbaa !481
  %241 = icmp eq %struct.udp_pcb* %240, null, !dbg !1225
  br i1 %241, label %104, label %233, !dbg !1222, !llvm.loop !1226

; <label>:242:                                    ; preds = %233
  %243 = add nuw nsw i16 %84, 2, !dbg !1293
  %244 = icmp ugt i16 %84, 16381, !dbg !1294
  br i1 %244, label %103, label %82, !dbg !1295
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
define dso_local void @udp_bind_netif(%struct.udp_pcb* nocapture, %struct.netif* readonly) local_unnamed_addr #0 !dbg !1296 {
  %3 = icmp eq %struct.netif* %1, null, !dbg !1306
  br i1 %3, label %8, label %4, !dbg !1308

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 23, !dbg !1309
  %6 = load i8, i8* %5, align 8, !dbg !1309, !tbaa !509
  %7 = add i8 %6, 1, !dbg !1309
  br label %8, !dbg !1311

; <label>:8:                                      ; preds = %2, %4
  %9 = phi i8 [ %7, %4 ], [ 0, %2 ]
  %10 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 2, !dbg !1312
  store i8 %9, i8* %10, align 8, !dbg !1314
  ret void, !dbg !1315
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @udp_connect(%struct.udp_pcb*, %struct.ip_addr* readonly, i16 zeroext) local_unnamed_addr #0 !dbg !1316 {
  %4 = icmp eq %struct.udp_pcb* %0, null, !dbg !1332
  br i1 %4, label %5, label %6, !dbg !1335

; <label>:5:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i64 0, i64 0)) #8, !dbg !1336
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1339
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1339
  unreachable, !dbg !1339

; <label>:6:                                      ; preds = %3
  %7 = icmp eq %struct.ip_addr* %1, null, !dbg !1343
  br i1 %7, label %8, label %9, !dbg !1346

; <label>:8:                                      ; preds = %6
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i64 0, i64 0)) #8, !dbg !1347
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1350
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1350
  unreachable, !dbg !1350

; <label>:9:                                      ; preds = %6
  %10 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 8, !dbg !1354
  %11 = load i16, i16* %10, align 2, !dbg !1354, !tbaa !487
  %12 = icmp eq i16 %11, 0, !dbg !1355
  br i1 %12, label %13, label %17, !dbg !1356

; <label>:13:                                     ; preds = %9
  %14 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, !dbg !1357
  %15 = tail call signext i8 @udp_bind(%struct.udp_pcb* nonnull %0, %struct.ip_addr* nonnull %14, i16 zeroext 0) #8, !dbg !1358
  %16 = icmp eq i8 %15, 0, !dbg !1360
  br i1 %16, label %17, label %91

; <label>:17:                                     ; preds = %13, %9
  %18 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, !dbg !1362
  %19 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 1, !dbg !1366
  %20 = load i8, i8* %19, align 4, !dbg !1366, !tbaa !779
  %21 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 1, !dbg !1366
  store i8 %20, i8* %21, align 4, !dbg !1366, !tbaa !571
  %22 = load i8, i8* %19, align 4, !dbg !1369, !tbaa !779
  %23 = icmp eq i8 %22, 6, !dbg !1369
  %24 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1371
  %25 = load i32, i32* %24, align 4, !dbg !1371, !tbaa !465
  %26 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %18, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1371
  store i32 %25, i32* %26, align 8, !dbg !1371, !tbaa !465
  br i1 %23, label %27, label %39, !dbg !1374

; <label>:27:                                     ; preds = %17
  %28 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !1371
  %29 = load i32, i32* %28, align 4, !dbg !1371, !tbaa !465
  %30 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 1, !dbg !1371
  store i32 %29, i32* %30, align 4, !dbg !1371, !tbaa !465
  %31 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !1371
  %32 = load i32, i32* %31, align 4, !dbg !1371, !tbaa !465
  %33 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 2, !dbg !1371
  store i32 %32, i32* %33, align 8, !dbg !1371, !tbaa !465
  %34 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !1371
  %35 = load i32, i32* %34, align 4, !dbg !1371, !tbaa !465
  %36 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 3, !dbg !1371
  store i32 %35, i32* %36, align 4, !dbg !1371, !tbaa !465
  %37 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 1, !dbg !1371
  %38 = load i8, i8* %37, align 4, !dbg !1371, !tbaa !465
  br label %43, !dbg !1375

; <label>:39:                                     ; preds = %17
  %40 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 3, !dbg !1376
  store i32 0, i32* %40, align 4, !dbg !1376, !tbaa !465
  %41 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 2, !dbg !1376
  store i32 0, i32* %41, align 8, !dbg !1376, !tbaa !465
  %42 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 1, !dbg !1376
  store i32 0, i32* %42, align 4, !dbg !1376, !tbaa !465
  br label %43

; <label>:43:                                     ; preds = %27, %39
  %44 = phi i8 [ %38, %27 ], [ 0, %39 ]
  %45 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 1, !dbg !1371
  store i8 %44, i8* %45, align 8, !dbg !1371
  %46 = icmp eq i8 %20, 6, !dbg !1379
  br i1 %46, label %47, label %73, !dbg !1380

; <label>:47:                                     ; preds = %43
  %48 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %18, i64 0, i32 0, i32 0, !dbg !1381
  %49 = icmp eq i8 %44, 0, !dbg !1381
  br i1 %49, label %50, label %73, !dbg !1381

; <label>:50:                                     ; preds = %47
  %51 = and i32 %25, 49407, !dbg !1381
  %52 = icmp eq i32 %51, 33022, !dbg !1381
  br i1 %52, label %56, label %53, !dbg !1381

; <label>:53:                                     ; preds = %50
  %54 = trunc i32 %25 to i16, !dbg !1381
  %55 = and i16 %54, -28673, !dbg !1381
  switch i16 %55, label %73 [
    i16 511, label %56
    i16 767, label %56
  ], !dbg !1381

; <label>:56:                                     ; preds = %53, %53, %50
  %57 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, i32 0, i32 0, !dbg !1382
  %58 = tail call %struct.netif* @ip6_route(%struct.ip6_addr* nonnull %57, %struct.ip6_addr* nonnull %48) #7, !dbg !1382
  %59 = icmp eq %struct.netif* %58, null, !dbg !1383
  br i1 %59, label %73, label %60, !dbg !1382

; <label>:60:                                     ; preds = %56
  %61 = load i32, i32* %26, align 8, !dbg !1385, !tbaa !465
  %62 = and i32 %61, 49407, !dbg !1385
  %63 = icmp eq i32 %62, 33022, !dbg !1385
  br i1 %63, label %67, label %64, !dbg !1385

; <label>:64:                                     ; preds = %60
  %65 = trunc i32 %61 to i16, !dbg !1385
  %66 = and i16 %65, -28673, !dbg !1385
  switch i16 %66, label %71 [
    i16 511, label %67
    i16 767, label %67
  ], !dbg !1385

; <label>:67:                                     ; preds = %64, %64, %60
  %68 = getelementptr inbounds %struct.netif, %struct.netif* %58, i64 0, i32 23, !dbg !1385
  %69 = load i8, i8* %68, align 8, !dbg !1385, !tbaa !509
  %70 = add i8 %69, 1, !dbg !1385
  br label %71, !dbg !1385

; <label>:71:                                     ; preds = %64, %67
  %72 = phi i8 [ %70, %67 ], [ 0, %64 ]
  store i8 %72, i8* %45, align 8, !dbg !1385, !tbaa !465
  br label %73, !dbg !1385

; <label>:73:                                     ; preds = %71, %56, %53, %47, %43
  %74 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 9, !dbg !1387
  store i16 %2, i16* %74, align 4, !dbg !1388, !tbaa !567
  %75 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 7, !dbg !1389
  %76 = load i8, i8* %75, align 8, !dbg !1390, !tbaa !537
  %77 = or i8 %76, 4, !dbg !1390
  store i8 %77, i8* %75, align 8, !dbg !1390, !tbaa !537
  %78 = load %struct.udp_pcb*, %struct.udp_pcb** @udp_pcbs, align 8, !dbg !1392, !tbaa !481
  %79 = icmp eq %struct.udp_pcb* %78, null, !dbg !1395
  %80 = ptrtoint %struct.udp_pcb* %78 to i64, !dbg !1396
  br i1 %79, label %88, label %85, !dbg !1396

; <label>:81:                                     ; preds = %85
  %82 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %86, i64 0, i32 6, !dbg !1397
  %83 = load %struct.udp_pcb*, %struct.udp_pcb** %82, align 8, !dbg !1392, !tbaa !481
  %84 = icmp eq %struct.udp_pcb* %83, null, !dbg !1395
  br i1 %84, label %88, label %85, !dbg !1396, !llvm.loop !1398

; <label>:85:                                     ; preds = %73, %81
  %86 = phi %struct.udp_pcb* [ %83, %81 ], [ %78, %73 ]
  %87 = icmp eq %struct.udp_pcb* %86, %0, !dbg !1400
  br i1 %87, label %91, label %81, !dbg !1403

; <label>:88:                                     ; preds = %81, %73
  %89 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 6, !dbg !1404
  %90 = bitcast %struct.udp_pcb** %89 to i64*, !dbg !1405
  store i64 %80, i64* %90, align 8, !dbg !1405, !tbaa !581
  store %struct.udp_pcb* %0, %struct.udp_pcb** @udp_pcbs, align 8, !dbg !1406, !tbaa !481
  br label %91, !dbg !1407

; <label>:91:                                     ; preds = %85, %13, %88
  %92 = phi i8 [ 0, %88 ], [ %15, %13 ], [ 0, %85 ], !dbg !1408
  ret i8 %92, !dbg !1410
}

; Function Attrs: noredzone nounwind
define dso_local void @udp_disconnect(%struct.udp_pcb*) local_unnamed_addr #0 !dbg !1411 {
  %2 = icmp eq %struct.udp_pcb* %0, null, !dbg !1417
  br i1 %2, label %3, label %4, !dbg !1420

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.23, i64 0, i64 0)) #8, !dbg !1421
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1424
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1424
  unreachable, !dbg !1424

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 0, i32 1, !dbg !1428
  %6 = load i8, i8* %5, align 4, !dbg !1428, !tbaa !515
  %7 = icmp eq i8 %6, 46, !dbg !1428
  br i1 %7, label %8, label %28, !dbg !1430

; <label>:8:                                      ; preds = %4
  %9 = load i8, i8* getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip_addr_any_type, i64 0, i32 1), align 4, !dbg !1431, !tbaa !779
  %10 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 1, !dbg !1431
  store i8 %9, i8* %10, align 4, !dbg !1431, !tbaa !571
  %11 = icmp eq i8 %9, 6, !dbg !1435
  %12 = load i32, i32* getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip_addr_any_type, i64 0, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !1437, !tbaa !465
  %13 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 0, !dbg !1437
  store i32 %12, i32* %13, align 8, !dbg !1437, !tbaa !465
  br i1 %11, label %14, label %23, !dbg !1440

; <label>:14:                                     ; preds = %8
  %15 = load i32, i32* getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip_addr_any_type, i64 0, i32 0, i32 0, i32 0, i64 1), align 4, !dbg !1437, !tbaa !465
  %16 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 1, !dbg !1437
  store i32 %15, i32* %16, align 4, !dbg !1437, !tbaa !465
  %17 = load i32, i32* getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip_addr_any_type, i64 0, i32 0, i32 0, i32 0, i64 2), align 4, !dbg !1437, !tbaa !465
  %18 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 2, !dbg !1437
  store i32 %17, i32* %18, align 8, !dbg !1437, !tbaa !465
  %19 = load i32, i32* getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip_addr_any_type, i64 0, i32 0, i32 0, i32 0, i64 3), align 4, !dbg !1437, !tbaa !465
  %20 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 3, !dbg !1437
  store i32 %19, i32* %20, align 4, !dbg !1437, !tbaa !465
  %21 = load i8, i8* getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip_addr_any_type, i64 0, i32 0, i32 0, i32 1), align 4, !dbg !1437, !tbaa !465
  %22 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 1, !dbg !1437
  store i8 %21, i8* %22, align 8, !dbg !1437, !tbaa !465
  br label %43, !dbg !1441

; <label>:23:                                     ; preds = %8
  %24 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 3, !dbg !1442
  store i32 0, i32* %24, align 4, !dbg !1442, !tbaa !465
  %25 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 2, !dbg !1442
  store i32 0, i32* %25, align 8, !dbg !1442, !tbaa !465
  %26 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 1, !dbg !1442
  store i32 0, i32* %26, align 4, !dbg !1442, !tbaa !465
  %27 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 1, !dbg !1442
  store i8 0, i8* %27, align 8, !dbg !1442, !tbaa !465
  br label %43

; <label>:28:                                     ; preds = %4
  %29 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 1, !dbg !1445
  %30 = load i8, i8* %29, align 4, !dbg !1445, !tbaa !571
  %31 = icmp eq i8 %30, 6, !dbg !1445
  %32 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 0, !dbg !1449
  store i32 0, i32* %32, align 8, !dbg !1449, !tbaa !465
  br i1 %31, label %33, label %38, !dbg !1452

; <label>:33:                                     ; preds = %28
  %34 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 1, !dbg !1449
  store i32 0, i32* %34, align 4, !dbg !1449, !tbaa !465
  %35 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 2, !dbg !1449
  store i32 0, i32* %35, align 8, !dbg !1449, !tbaa !465
  %36 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 3, !dbg !1449
  store i32 0, i32* %36, align 4, !dbg !1449, !tbaa !465
  %37 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 1, !dbg !1449
  store i8 0, i8* %37, align 8, !dbg !1449, !tbaa !465
  store i8 6, i8* %29, align 4, !dbg !1453, !tbaa !571
  br label %43, !dbg !1458

; <label>:38:                                     ; preds = %28
  store i8 0, i8* %29, align 4, !dbg !1459, !tbaa !571
  %39 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 3, !dbg !1465
  store i32 0, i32* %39, align 4, !dbg !1465, !tbaa !465
  %40 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 2, !dbg !1465
  store i32 0, i32* %40, align 8, !dbg !1465, !tbaa !465
  %41 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 1, !dbg !1465
  store i32 0, i32* %41, align 4, !dbg !1465, !tbaa !465
  %42 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 1, !dbg !1465
  store i8 0, i8* %42, align 8, !dbg !1465, !tbaa !465
  br label %43

; <label>:43:                                     ; preds = %33, %38, %23, %14
  %44 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 9, !dbg !1467
  store i16 0, i16* %44, align 4, !dbg !1468, !tbaa !567
  %45 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 2, !dbg !1469
  store i8 0, i8* %45, align 8, !dbg !1470, !tbaa !505
  %46 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 7, !dbg !1471
  %47 = load i8, i8* %46, align 8, !dbg !1471, !tbaa !537
  %48 = and i8 %47, -5, !dbg !1471
  store i8 %48, i8* %46, align 8, !dbg !1471, !tbaa !537
  ret void, !dbg !1473
}

; Function Attrs: noredzone nounwind
define dso_local void @udp_recv(%struct.udp_pcb*, void (i8*, %struct.udp_pcb*, %struct.pbuf*, %struct.ip_addr*, i16)*, i8*) local_unnamed_addr #0 !dbg !1474 {
  %4 = icmp eq %struct.udp_pcb* %0, null, !dbg !1484
  br i1 %4, label %5, label %6, !dbg !1487

; <label>:5:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i64 0, i64 0)) #8, !dbg !1488
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1491
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1491
  unreachable, !dbg !1491

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 13, !dbg !1495
  store void (i8*, %struct.udp_pcb*, %struct.pbuf*, %struct.ip_addr*, i16)* %1, void (i8*, %struct.udp_pcb*, %struct.pbuf*, %struct.ip_addr*, i16)** %7, align 8, !dbg !1496, !tbaa !650
  %8 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 14, !dbg !1497
  store i8* %2, i8** %8, align 8, !dbg !1498, !tbaa !655
  ret void, !dbg !1499
}

; Function Attrs: noredzone nounwind
define dso_local void @udp_remove(%struct.udp_pcb*) local_unnamed_addr #0 !dbg !1500 {
  %2 = icmp eq %struct.udp_pcb* %0, null, !dbg !1505
  br i1 %2, label %3, label %4, !dbg !1508

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i64 0, i64 0)) #8, !dbg !1509
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1512
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1512
  unreachable, !dbg !1512

; <label>:4:                                      ; preds = %1
  %5 = load %struct.udp_pcb*, %struct.udp_pcb** @udp_pcbs, align 8, !dbg !1516, !tbaa !481
  %6 = icmp eq %struct.udp_pcb* %5, %0, !dbg !1518
  br i1 %6, label %7, label %11, !dbg !1519

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 6, !dbg !1520
  %9 = bitcast %struct.udp_pcb** %8 to i64*, !dbg !1520
  %10 = load i64, i64* %9, align 8, !dbg !1520, !tbaa !581
  store i64 %10, i64* bitcast (%struct.udp_pcb** @udp_pcbs to i64*), align 8, !dbg !1522, !tbaa !481
  br label %26, !dbg !1523

; <label>:11:                                     ; preds = %4, %14
  %12 = phi %struct.udp_pcb* [ %16, %14 ], [ %5, %4 ], !dbg !1524
  %13 = icmp eq %struct.udp_pcb* %12, null, !dbg !1529
  br i1 %13, label %26, label %14, !dbg !1530

; <label>:14:                                     ; preds = %11
  %15 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %12, i64 0, i32 6, !dbg !1531
  %16 = load %struct.udp_pcb*, %struct.udp_pcb** %15, align 8, !dbg !1531, !tbaa !581
  %17 = icmp ne %struct.udp_pcb* %16, null, !dbg !1534
  %18 = icmp eq %struct.udp_pcb* %16, %0, !dbg !1535
  %19 = and i1 %17, %18, !dbg !1536
  br i1 %19, label %20, label %11, !dbg !1536, !llvm.loop !1537

; <label>:20:                                     ; preds = %14
  %21 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %12, i64 0, i32 6, !dbg !1531
  %22 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %0, i64 0, i32 6, !dbg !1539
  %23 = bitcast %struct.udp_pcb** %22 to i64*, !dbg !1539
  %24 = load i64, i64* %23, align 8, !dbg !1539, !tbaa !581
  %25 = bitcast %struct.udp_pcb** %21 to i64*, !dbg !1541
  store i64 %24, i64* %25, align 8, !dbg !1541, !tbaa !581
  br label %26, !dbg !1542

; <label>:26:                                     ; preds = %11, %20, %7
  %27 = bitcast %struct.udp_pcb* %0 to i8*, !dbg !1543
  tail call void @memp_free(i32 0, i8* %27) #7, !dbg !1544
  ret void, !dbg !1545
}

; Function Attrs: noredzone
declare dso_local void @memp_free(i32, i8*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local %struct.udp_pcb* @udp_new() local_unnamed_addr #0 !dbg !1546 {
  %1 = tail call i8* @memp_malloc(i32 0) #7, !dbg !1551
  %2 = bitcast i8* %1 to %struct.udp_pcb*, !dbg !1552
  %3 = icmp eq i8* %1, null, !dbg !1554
  br i1 %3, label %8, label %4, !dbg !1556

; <label>:4:                                      ; preds = %0
  %5 = tail call i8* @memset(i8* nonnull %1, i32 0, i64 96) #7, !dbg !1557
  %6 = getelementptr inbounds i8, i8* %1, i64 51, !dbg !1559
  store i8 -1, i8* %6, align 1, !dbg !1560, !tbaa !1561
  %7 = getelementptr inbounds i8, i8* %1, i64 77, !dbg !1562
  store i8 -1, i8* %7, align 1, !dbg !1562, !tbaa !1563
  br label %8, !dbg !1564

; <label>:8:                                      ; preds = %0, %4
  ret %struct.udp_pcb* %2, !dbg !1565
}

; Function Attrs: noredzone
declare dso_local i8* @memp_malloc(i32) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local %struct.udp_pcb* @udp_new_ip_type(i8 zeroext) local_unnamed_addr #0 !dbg !1566 {
  %2 = tail call i8* @memp_malloc(i32 0) #7, !dbg !1573
  %3 = bitcast i8* %2 to %struct.udp_pcb*, !dbg !1575
  %4 = icmp eq i8* %2, null, !dbg !1577
  br i1 %4, label %11, label %5, !dbg !1578

; <label>:5:                                      ; preds = %1
  %6 = tail call i8* @memset(i8* nonnull %2, i32 0, i64 96) #7, !dbg !1579
  %7 = getelementptr inbounds i8, i8* %2, i64 51, !dbg !1580
  store i8 -1, i8* %7, align 1, !dbg !1581, !tbaa !1561
  %8 = getelementptr inbounds i8, i8* %2, i64 77, !dbg !1582
  store i8 -1, i8* %8, align 1, !dbg !1582, !tbaa !1563
  %9 = getelementptr inbounds i8, i8* %2, i64 20, !dbg !1584
  store i8 %0, i8* %9, align 4, !dbg !1584, !tbaa !515
  %10 = getelementptr inbounds i8, i8* %2, i64 44, !dbg !1588
  store i8 %0, i8* %10, align 4, !dbg !1588, !tbaa !571
  br label %11, !dbg !1590

; <label>:11:                                     ; preds = %1, %5
  ret %struct.udp_pcb* %3, !dbg !1591
}

; Function Attrs: noredzone nounwind
define dso_local void @udp_netif_ip_addr_changed(%struct.ip_addr* readonly, %struct.ip_addr*) local_unnamed_addr #0 !dbg !1592 {
  %3 = icmp eq %struct.ip_addr* %0, null, !dbg !1601
  br i1 %3, label %123, label %4, !dbg !1603

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 1, !dbg !1601
  %6 = load i8, i8* %5, align 4, !dbg !1601, !tbaa !779
  %7 = icmp eq i8 %6, 6, !dbg !1601
  %8 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1601
  %9 = load i32, i32* %8, align 4, !dbg !1601, !tbaa !465
  %10 = icmp eq i32 %9, 0, !dbg !1601
  br i1 %7, label %11, label %26, !dbg !1603

; <label>:11:                                     ; preds = %4
  br i1 %10, label %12, label %29, !dbg !1601

; <label>:12:                                     ; preds = %11
  %13 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !1601
  %14 = load i32, i32* %13, align 4, !dbg !1601, !tbaa !465
  %15 = icmp eq i32 %14, 0, !dbg !1601
  br i1 %15, label %16, label %29, !dbg !1601

; <label>:16:                                     ; preds = %12
  %17 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !1601
  %18 = load i32, i32* %17, align 4, !dbg !1601, !tbaa !465
  %19 = icmp eq i32 %18, 0, !dbg !1601
  br i1 %19, label %20, label %29, !dbg !1601

; <label>:20:                                     ; preds = %16
  %21 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !1601
  %22 = load i32, i32* %21, align 4, !dbg !1601, !tbaa !465
  %23 = icmp eq i32 %22, 0, !dbg !1601
  %24 = icmp eq %struct.ip_addr* %1, null, !dbg !1604
  %25 = or i1 %24, %23, !dbg !1601
  br i1 %25, label %123, label %31, !dbg !1601

; <label>:26:                                     ; preds = %4
  %27 = icmp eq %struct.ip_addr* %1, null, !dbg !1604
  %28 = or i1 %27, %10, !dbg !1603
  br i1 %28, label %123, label %31, !dbg !1603

; <label>:29:                                     ; preds = %16, %12, %11
  %30 = icmp eq %struct.ip_addr* %1, null, !dbg !1605
  br i1 %30, label %123, label %31, !dbg !1605

; <label>:31:                                     ; preds = %26, %20, %29
  %32 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 1, !dbg !1604
  %33 = load i8, i8* %32, align 4, !dbg !1604, !tbaa !779
  %34 = icmp eq i8 %33, 6, !dbg !1604
  %35 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1604
  %36 = load i32, i32* %35, align 4, !dbg !1604, !tbaa !465
  %37 = icmp eq i32 %36, 0, !dbg !1604
  br i1 %34, label %38, label %51, !dbg !1605

; <label>:38:                                     ; preds = %31
  br i1 %37, label %39, label %52, !dbg !1604

; <label>:39:                                     ; preds = %38
  %40 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !1604
  %41 = load i32, i32* %40, align 4, !dbg !1604, !tbaa !465
  %42 = icmp eq i32 %41, 0, !dbg !1604
  br i1 %42, label %43, label %52, !dbg !1604

; <label>:43:                                     ; preds = %39
  %44 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !1604
  %45 = load i32, i32* %44, align 4, !dbg !1604, !tbaa !465
  %46 = icmp eq i32 %45, 0, !dbg !1604
  br i1 %46, label %47, label %52, !dbg !1604

; <label>:47:                                     ; preds = %43
  %48 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !1604
  %49 = load i32, i32* %48, align 4, !dbg !1604, !tbaa !465
  %50 = icmp eq i32 %49, 0, !dbg !1604
  br i1 %50, label %123, label %52, !dbg !1604

; <label>:51:                                     ; preds = %31
  br i1 %37, label %123, label %52, !dbg !1605

; <label>:52:                                     ; preds = %51, %47, %43, %39, %38
  %53 = load %struct.udp_pcb*, %struct.udp_pcb** @udp_pcbs, align 8, !dbg !1607, !tbaa !481
  %54 = icmp eq %struct.udp_pcb* %53, null, !dbg !1611
  br i1 %54, label %123, label %55, !dbg !1612

; <label>:55:                                     ; preds = %52
  %56 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 0, i64 1
  %57 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 1
  %58 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 2
  %59 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 3
  %60 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 1
  %61 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 0, i64 2
  %62 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 0, i64 3
  %63 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 1
  br label %64, !dbg !1612

; <label>:64:                                     ; preds = %121, %55
  %65 = phi i8 [ %6, %55 ], [ %122, %121 ], !dbg !1613
  %66 = phi %struct.udp_pcb* [ %53, %55 ], [ %119, %121 ]
  %67 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %66, i64 0, i32 0, i32 1, !dbg !1613
  %68 = load i8, i8* %67, align 4, !dbg !1613, !tbaa !515
  %69 = icmp eq i8 %68, %65, !dbg !1613
  br i1 %69, label %70, label %117, !dbg !1616

; <label>:70:                                     ; preds = %64
  %71 = icmp eq i8 %65, 6, !dbg !1613
  %72 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %66, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !1613
  %73 = load i32, i32* %72, align 8, !dbg !1613, !tbaa !465
  %74 = load i32, i32* %8, align 4, !dbg !1613, !tbaa !465
  %75 = icmp eq i32 %73, %74, !dbg !1613
  br i1 %71, label %76, label %97, !dbg !1616

; <label>:76:                                     ; preds = %70
  br i1 %75, label %77, label %117, !dbg !1613

; <label>:77:                                     ; preds = %76
  %78 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %66, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !1613
  %79 = load i32, i32* %78, align 4, !dbg !1613, !tbaa !465
  %80 = load i32, i32* %56, align 4, !dbg !1613, !tbaa !465
  %81 = icmp eq i32 %79, %80, !dbg !1613
  br i1 %81, label %82, label %117, !dbg !1613

; <label>:82:                                     ; preds = %77
  %83 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %66, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !1613
  %84 = load i32, i32* %83, align 8, !dbg !1613, !tbaa !465
  %85 = load i32, i32* %61, align 4, !dbg !1613, !tbaa !465
  %86 = icmp eq i32 %84, %85, !dbg !1613
  br i1 %86, label %87, label %117, !dbg !1613

; <label>:87:                                     ; preds = %82
  %88 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %66, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !1613
  %89 = load i32, i32* %88, align 4, !dbg !1613, !tbaa !465
  %90 = load i32, i32* %62, align 4, !dbg !1613, !tbaa !465
  %91 = icmp eq i32 %89, %90, !dbg !1613
  br i1 %91, label %92, label %117, !dbg !1613

; <label>:92:                                     ; preds = %87
  %93 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %66, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !1613
  %94 = load i8, i8* %93, align 8, !dbg !1613, !tbaa !465
  %95 = load i8, i8* %63, align 4, !dbg !1613, !tbaa !465
  %96 = icmp eq i8 %94, %95, !dbg !1613
  br i1 %96, label %98, label %117, !dbg !1613

; <label>:97:                                     ; preds = %70
  br i1 %75, label %98, label %117, !dbg !1616

; <label>:98:                                     ; preds = %97, %92
  %99 = load i8, i8* %32, align 4, !dbg !1617, !tbaa !779
  store i8 %99, i8* %67, align 4, !dbg !1617, !tbaa !515
  %100 = load i8, i8* %32, align 4, !dbg !1621, !tbaa !779
  %101 = icmp eq i8 %100, 6, !dbg !1621
  %102 = load i32, i32* %35, align 4, !dbg !1623, !tbaa !465
  store i32 %102, i32* %72, align 8, !dbg !1623, !tbaa !465
  br i1 %101, label %103, label %112, !dbg !1626

; <label>:103:                                    ; preds = %98
  %104 = load i32, i32* %57, align 4, !dbg !1623, !tbaa !465
  %105 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %66, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !1623
  store i32 %104, i32* %105, align 4, !dbg !1623, !tbaa !465
  %106 = load i32, i32* %58, align 4, !dbg !1623, !tbaa !465
  %107 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %66, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !1623
  store i32 %106, i32* %107, align 8, !dbg !1623, !tbaa !465
  %108 = load i32, i32* %59, align 4, !dbg !1623, !tbaa !465
  %109 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %66, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !1623
  store i32 %108, i32* %109, align 4, !dbg !1623, !tbaa !465
  %110 = load i8, i8* %60, align 4, !dbg !1623, !tbaa !465
  %111 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %66, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !1623
  store i8 %110, i8* %111, align 8, !dbg !1623, !tbaa !465
  br label %117, !dbg !1627

; <label>:112:                                    ; preds = %98
  %113 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %66, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !1628
  store i32 0, i32* %113, align 4, !dbg !1628, !tbaa !465
  %114 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %66, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !1628
  store i32 0, i32* %114, align 8, !dbg !1628, !tbaa !465
  %115 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %66, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !1628
  store i32 0, i32* %115, align 4, !dbg !1628, !tbaa !465
  %116 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %66, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !1628
  store i8 0, i8* %116, align 8, !dbg !1628, !tbaa !465
  br label %117

; <label>:117:                                    ; preds = %64, %76, %77, %82, %87, %92, %97, %112, %103
  %118 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %66, i64 0, i32 6, !dbg !1631
  %119 = load %struct.udp_pcb*, %struct.udp_pcb** %118, align 8, !dbg !1607, !tbaa !481
  %120 = icmp eq %struct.udp_pcb* %119, null, !dbg !1611
  br i1 %120, label %123, label %121, !dbg !1612, !llvm.loop !1632

; <label>:121:                                    ; preds = %117
  %122 = load i8, i8* %5, align 4, !dbg !1613, !tbaa !779
  br label %64, !dbg !1612

; <label>:123:                                    ; preds = %117, %52, %29, %2, %51, %47, %26, %20
  ret void, !dbg !1634
}

; Function Attrs: inlinehint noredzone nounwind
define internal i32 @uk_swrand_randr() #3 !dbg !283 {
  %1 = tail call i64 @ukplat_lcpu_save_irqf() #7, !dbg !1635
  %2 = tail call i32 @uk_swrand_randr_r(%struct.uk_swrand* nonnull @uk_swrand_def) #7, !dbg !1637
  tail call void @ukplat_lcpu_restore_irqf(i64 %1) #7, !dbg !1639
  ret i32 %2, !dbg !1640
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
!277 = !DILocation(line: 66, column: 2, scope: !261, inlinedAt: !266)
!278 = !DILocation(line: 120, column: 2, scope: !268, inlinedAt: !279)
!279 = distinct !DILocation(line: 66, column: 2, scope: !261, inlinedAt: !266)
!280 = !DILocation(line: 118, column: 16, scope: !268, inlinedAt: !279)
!281 = !DILocation(line: 66, column: 2, scope: !262, inlinedAt: !266)
!282 = !DILocation(line: 65, column: 11, scope: !283, inlinedAt: !288)
!283 = distinct !DISubprogram(name: "uk_swrand_randr", scope: !284, file: !284, line: 60, type: !251, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !285)
!284 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukswrand/include/uk/swrand.h", directory: "/root/.unikraft/apps/redis/build")
!285 = !{!286, !287}
!286 = !DILocalVariable(name: "iflags", scope: !283, file: !284, line: 62, type: !203)
!287 = !DILocalVariable(name: "ret", scope: !283, file: !284, line: 63, type: !253)
!288 = distinct !DILocation(line: 66, column: 2, scope: !289, inlinedAt: !266)
!289 = distinct !DILexicalBlock(scope: !261, file: !250, line: 66, column: 2)
!290 = !DILocation(line: 62, column: 16, scope: !283, inlinedAt: !288)
!291 = !DILocation(line: 66, column: 8, scope: !283, inlinedAt: !288)
!292 = !DILocation(line: 63, column: 8, scope: !283, inlinedAt: !288)
!293 = !DILocation(line: 67, column: 2, scope: !283, inlinedAt: !288)
!294 = !DILocation(line: 65, column: 8, scope: !249, inlinedAt: !266)
!295 = !DILocation(line: 66, column: 2, scope: !289, inlinedAt: !266)
!296 = !{!297, !297, i64 0}
!297 = !{!"int", !298, i64 0}
!298 = !{!"omnipotent char", !299, i64 0}
!299 = !{!"Simple C/C++ TBAA"}
!300 = !DILocation(line: 120, column: 2, scope: !268, inlinedAt: !301)
!301 = distinct !DILocation(line: 49, column: 21, scope: !302, inlinedAt: !308)
!302 = distinct !DISubprogram(name: "uk_thread_get_tid", scope: !303, file: !303, line: 47, type: !304, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !306)
!303 = !DIFile(filename: "/root/.unikraft/unikraft/lib/flexos-core/include/flexos/impl/intelpku-impl.h", directory: "/root/.unikraft/apps/redis/build")
!304 = !DISubroutineType(types: !305)
!305 = !{!45}
!306 = !{!307}
!307 = !DILocalVariable(name: "sp", scope: !302, file: !303, line: 49, type: !203)
!308 = distinct !DILocation(line: 66, column: 2, scope: !258, inlinedAt: !266)
!309 = !DILocation(line: 118, column: 16, scope: !268, inlinedAt: !301)
!310 = !DILocation(line: 49, column: 16, scope: !302, inlinedAt: !308)
!311 = !DILocation(line: 50, column: 19, scope: !302, inlinedAt: !308)
!312 = !DILocation(line: 50, column: 11, scope: !302, inlinedAt: !308)
!313 = !DILocation(line: 50, column: 9, scope: !302, inlinedAt: !308)
!314 = !DILocation(line: 66, column: 2, scope: !258, inlinedAt: !266)
!315 = !{i32 -2146799712, i32 -2146799699, i32 -2146799674, i32 -2146799650, i32 -2146799625, i32 -2146799550, i32 -2146799525, i32 -2146799381, i32 -2146796288, i32 -2146796199, i32 -2146796078, i32 -2146795983, i32 -2146795882, i32 -2146795855, i32 -2146795772, i32 -2146795683, i32 -2146795562, i32 -2146795462, i32 -2146795356, i32 -2146795248, i32 -2146799098, i32 -2146799045, i32 -2146799014, i32 -2146798983, i32 -2146798962, i32 -2146798940, i32 -2146798891, i32 -2146798870, i32 -2146795165, i32 -2146795076, i32 -2146794955, i32 -2146794856, i32 -2146794750, i32 -2146794648, i32 -2146794615, i32 -2146794542, i32 -2146794474, i32 -2146798568, i32 -2146798509, i32 -2146798456, i32 -2146798425, i32 -2146798394, i32 -2146798373, i32 -2146798351, i32 -2146798302, i32 -2146798281, i32 -2146794423, i32 -2146794334, i32 -2146794213, i32 -2146794114, i32 -2146794008, i32 -2146793906, i32 -2146793873, i32 -2146793790, i32 -2146793701, i32 -2146793580, i32 -2146793480, i32 -2146793454, i32 -2146793351, i32 -2146793325, i32 -2146798023, i32 -2146797956, i32 -2146797931, i32 -2146797867, i32 -2146797785, i32 -2146797762, i32 -2146797737, i32 -2146797712}
!316 = !DILocation(line: 66, column: 2, scope: !317, inlinedAt: !266)
!317 = distinct !DILexicalBlock(scope: !318, file: !250, line: 66, column: 2)
!318 = distinct !DILexicalBlock(scope: !258, file: !250, line: 66, column: 2)
!319 = !{i32 -2146796765, i32 -2146796748}
!320 = !DILocation(line: 67, column: 9, scope: !249, inlinedAt: !266)
!321 = !DILocation(line: 68, column: 1, scope: !249, inlinedAt: !266)
!322 = !DILocation(line: 92, column: 14, scope: !244)
!323 = !DILocation(line: 92, column: 12, scope: !244)
!324 = !{!325, !325, i64 0}
!325 = !{!"short", !298, i64 0}
!326 = !DILocation(line: 94, column: 1, scope: !244)
!327 = distinct !DISubprogram(name: "udp_input", scope: !3, file: !3, line: 196, type: !328, isLocal: false, isDefinition: true, scopeLine: 197, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !401)
!328 = !DISubroutineType(types: !329)
!329 = !{null, !191, !330}
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netif", file: !6, line: 260, size: 2240, elements: !332)
!332 = !{!333, !334, !335, !336, !337, !341, !343, !345, !346, !356, !361, !366, !373, !378, !379, !380, !382, !383, !384, !385, !387, !388, !389, !393, !394, !395, !396}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !331, file: !6, line: 263, baseType: !330, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "ip_addr", scope: !331, file: !6, line: 268, baseType: !154, size: 192, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "netmask", scope: !331, file: !6, line: 269, baseType: !154, size: 192, offset: 256)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "gw", scope: !331, file: !6, line: 270, baseType: !154, size: 192, offset: 448)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr", scope: !331, file: !6, line: 274, baseType: !338, size: 576, offset: 640)
!338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 576, elements: !339)
!339 = !{!340}
!340 = !DISubrange(count: 3)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_state", scope: !331, file: !6, line: 277, baseType: !342, size: 24, offset: 1216)
!342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 24, elements: !339)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_valid_life", scope: !331, file: !6, line: 282, baseType: !344, size: 96, offset: 1248)
!344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 96, elements: !339)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_pref_life", scope: !331, file: !6, line: 283, baseType: !344, size: 96, offset: 1344)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !331, file: !6, line: 288, baseType: !347, size: 64, offset: 1472)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_input_fn", file: !6, line: 178, baseType: !348)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DISubroutineType(types: !350)
!350 = !{!351, !191, !330}
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "err_t", file: !44, line: 96, baseType: !352)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8_t", file: !101, line: 126, baseType: !353)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !103, line: 20, baseType: !354)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !105, line: 41, baseType: !355)
!355 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !331, file: !6, line: 294, baseType: !357, size: 64, offset: 1536)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_output_fn", file: !6, line: 189, baseType: !358)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DISubroutineType(types: !360)
!360 = !{!351, !330, !191, !119}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "linkoutput", scope: !331, file: !6, line: 299, baseType: !362, size: 64, offset: 1600)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_linkoutput_fn", file: !6, line: 212, baseType: !363)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DISubroutineType(types: !365)
!365 = !{!351, !330, !191}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "output_ip6", scope: !331, file: !6, line: 305, baseType: !367, size: 64, offset: 1664)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_output_ip6_fn", file: !6, line: 202, baseType: !368)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DISubroutineType(types: !370)
!370 = !{!351, !330, !191, !371}
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !161)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "status_callback", scope: !331, file: !6, line: 310, baseType: !374, size: 64, offset: 1728)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_status_callback_fn", file: !6, line: 214, baseType: !375)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DISubroutineType(types: !377)
!377 = !{null, !330}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "remove_callback", scope: !331, file: !6, line: 319, baseType: !374, size: 64, offset: 1792)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !331, file: !6, line: 323, baseType: !107, size: 64, offset: 1856)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !331, file: !6, line: 325, baseType: !381, size: 64, offset: 1920)
!381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 64, elements: !230)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "chksum_flags", scope: !331, file: !6, line: 332, baseType: !100, size: 16, offset: 1984)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !331, file: !6, line: 335, baseType: !100, size: 16, offset: 2000)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "mtu6", scope: !331, file: !6, line: 338, baseType: !100, size: 16, offset: 2016)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "hwaddr", scope: !331, file: !6, line: 341, baseType: !386, size: 48, offset: 2032)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 48, elements: !238)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "hwaddr_len", scope: !331, file: !6, line: 343, baseType: !134, size: 8, offset: 2080)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !331, file: !6, line: 345, baseType: !134, size: 8, offset: 2088)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !331, file: !6, line: 347, baseType: !390, size: 16, offset: 2096)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !216, size: 16, elements: !391)
!391 = !{!392}
!392 = !DISubrange(count: 2)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !331, file: !6, line: 350, baseType: !134, size: 8, offset: 2112)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_autoconfig_enabled", scope: !331, file: !6, line: 353, baseType: !134, size: 8, offset: 2120)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "rs_count", scope: !331, file: !6, line: 357, baseType: !134, size: 8, offset: 2128)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "mld_mac_filter", scope: !331, file: !6, line: 377, baseType: !397, size: 64, offset: 2176)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_mld_mac_filter_fn", file: !6, line: 222, baseType: !398)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DISubroutineType(types: !400)
!400 = !{!351, !330, !371, !5}
!401 = !{!402, !403, !404, !405, !406, !407, !408, !409, !410, !411}
!402 = !DILocalVariable(name: "p", arg: 1, scope: !327, file: !3, line: 196, type: !191)
!403 = !DILocalVariable(name: "inp", arg: 2, scope: !327, file: !3, line: 196, type: !330)
!404 = !DILocalVariable(name: "udphdr", scope: !327, file: !3, line: 198, type: !108)
!405 = !DILocalVariable(name: "pcb", scope: !327, file: !3, line: 199, type: !169)
!406 = !DILocalVariable(name: "prev", scope: !327, file: !3, line: 199, type: !169)
!407 = !DILocalVariable(name: "uncon_pcb", scope: !327, file: !3, line: 200, type: !169)
!408 = !DILocalVariable(name: "src", scope: !327, file: !3, line: 201, type: !100)
!409 = !DILocalVariable(name: "dest", scope: !327, file: !3, line: 201, type: !100)
!410 = !DILocalVariable(name: "broadcast", scope: !327, file: !3, line: 202, type: !134)
!411 = !DILocalVariable(name: "for_us", scope: !327, file: !3, line: 203, type: !134)
!412 = !DILocation(line: 196, column: 24, scope: !327)
!413 = !DILocation(line: 196, column: 41, scope: !327)
!414 = !DILocation(line: 203, column: 8, scope: !327)
!415 = !DILocation(line: 209, column: 3, scope: !416)
!416 = distinct !DILexicalBlock(scope: !417, file: !3, line: 209, column: 3)
!417 = distinct !DILexicalBlock(scope: !327, file: !3, line: 209, column: 3)
!418 = !DILocation(line: 209, column: 3, scope: !417)
!419 = !DILocation(line: 209, column: 3, scope: !420)
!420 = distinct !DILexicalBlock(scope: !421, file: !3, line: 209, column: 3)
!421 = distinct !DILexicalBlock(scope: !416, file: !3, line: 209, column: 3)
!422 = !DILocation(line: 209, column: 3, scope: !423)
!423 = distinct !DILexicalBlock(scope: !424, file: !3, line: 209, column: 3)
!424 = distinct !DILexicalBlock(scope: !425, file: !3, line: 209, column: 3)
!425 = distinct !DILexicalBlock(scope: !420, file: !3, line: 209, column: 3)
!426 = !DILocation(line: 210, column: 3, scope: !427)
!427 = distinct !DILexicalBlock(scope: !428, file: !3, line: 210, column: 3)
!428 = distinct !DILexicalBlock(scope: !327, file: !3, line: 210, column: 3)
!429 = !DILocation(line: 210, column: 3, scope: !428)
!430 = !DILocation(line: 210, column: 3, scope: !431)
!431 = distinct !DILexicalBlock(scope: !432, file: !3, line: 210, column: 3)
!432 = distinct !DILexicalBlock(scope: !427, file: !3, line: 210, column: 3)
!433 = !DILocation(line: 210, column: 3, scope: !434)
!434 = distinct !DILexicalBlock(scope: !435, file: !3, line: 210, column: 3)
!435 = distinct !DILexicalBlock(scope: !436, file: !3, line: 210, column: 3)
!436 = distinct !DILexicalBlock(scope: !431, file: !3, line: 210, column: 3)
!437 = !DILocation(line: 214, column: 3, scope: !327)
!438 = !{!439, !325, i64 122}
!439 = !{!"stats_", !440, i64 0, !440, i64 24, !440, i64 48, !440, i64 72, !440, i64 96, !440, i64 120, !440, i64 144, !441, i64 168, !440, i64 186, !440, i64 210, !440, i64 234, !443, i64 258, !440, i64 286}
!440 = !{!"stats_proto", !325, i64 0, !325, i64 2, !325, i64 4, !325, i64 6, !325, i64 8, !325, i64 10, !325, i64 12, !325, i64 14, !325, i64 16, !325, i64 18, !325, i64 20, !325, i64 22}
!441 = !{!"stats_sys", !442, i64 0, !442, i64 6, !442, i64 12}
!442 = !{!"stats_syselem", !325, i64 0, !325, i64 2, !325, i64 4}
!443 = !{!"stats_igmp", !325, i64 0, !325, i64 2, !325, i64 4, !325, i64 6, !325, i64 8, !325, i64 10, !325, i64 12, !325, i64 14, !325, i64 16, !325, i64 18, !325, i64 20, !325, i64 22, !325, i64 24, !325, i64 26}
!444 = !DILocation(line: 217, column: 10, scope: !445)
!445 = distinct !DILexicalBlock(scope: !327, file: !3, line: 217, column: 7)
!446 = !{!447, !325, i64 18}
!447 = !{!"pbuf", !448, i64 0, !448, i64 8, !325, i64 16, !325, i64 18, !298, i64 20, !298, i64 21, !298, i64 22, !298, i64 23}
!448 = !{!"any pointer", !298, i64 0}
!449 = !DILocation(line: 217, column: 14, scope: !445)
!450 = !DILocation(line: 217, column: 7, scope: !327)
!451 = !DILocation(line: 221, column: 5, scope: !452)
!452 = distinct !DILexicalBlock(scope: !445, file: !3, line: 217, column: 26)
!453 = !{!439, !325, i64 130}
!454 = !DILocation(line: 222, column: 5, scope: !452)
!455 = !{!439, !325, i64 126}
!456 = !DILocation(line: 224, column: 5, scope: !452)
!457 = !DILocation(line: 225, column: 5, scope: !452)
!458 = !DILocation(line: 228, column: 33, scope: !327)
!459 = !{!447, !448, i64 8}
!460 = !DILocation(line: 198, column: 19, scope: !327)
!461 = !DILocation(line: 231, column: 15, scope: !327)
!462 = !{!463, !298, i64 80}
!463 = !{!"ip_globals", !448, i64 0, !448, i64 8, !448, i64 16, !448, i64 24, !325, i64 32, !464, i64 36, !464, i64 60}
!464 = !{!"ip_addr", !298, i64 0, !298, i64 20}
!465 = !{!298, !298, i64 0}
!466 = !{!463, !448, i64 0}
!467 = !DILocation(line: 202, column: 8, scope: !327)
!468 = !DILocation(line: 236, column: 9, scope: !327)
!469 = !{!470, !325, i64 0}
!470 = !{!"udp_hdr", !325, i64 0, !325, i64 2, !325, i64 4, !325, i64 6}
!471 = !DILocation(line: 201, column: 9, scope: !327)
!472 = !DILocation(line: 237, column: 10, scope: !327)
!473 = !{!470, !325, i64 2}
!474 = !DILocation(line: 201, column: 14, scope: !327)
!475 = !DILocation(line: 199, column: 19, scope: !327)
!476 = !DILocation(line: 199, column: 25, scope: !327)
!477 = !DILocation(line: 200, column: 19, scope: !327)
!478 = !DILocation(line: 0, scope: !479)
!479 = distinct !DILexicalBlock(scope: !480, file: !3, line: 255, column: 3)
!480 = distinct !DILexicalBlock(scope: !327, file: !3, line: 255, column: 3)
!481 = !{!448, !448, i64 0}
!482 = !DILocation(line: 255, column: 28, scope: !479)
!483 = !DILocation(line: 255, column: 3, scope: !480)
!484 = !DILocation(line: 264, column: 15, scope: !485)
!485 = distinct !DILexicalBlock(scope: !486, file: !3, line: 264, column: 9)
!486 = distinct !DILexicalBlock(scope: !479, file: !3, line: 255, column: 54)
!487 = !{!488, !325, i64 66}
!488 = !{!"udp_pcb", !464, i64 0, !464, i64 24, !298, i64 48, !298, i64 49, !298, i64 50, !298, i64 51, !448, i64 56, !298, i64 64, !325, i64 66, !325, i64 68, !489, i64 72, !298, i64 76, !298, i64 77, !448, i64 80, !448, i64 88}
!489 = !{!"ip4_addr", !297, i64 0}
!490 = !DILocation(line: 264, column: 26, scope: !485)
!491 = !DILocation(line: 264, column: 35, scope: !485)
!492 = !DILocalVariable(name: "pcb", arg: 1, scope: !493, file: !3, line: 132, type: !169)
!493 = distinct !DISubprogram(name: "udp_input_local_match", scope: !3, file: !3, line: 132, type: !494, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !496)
!494 = !DISubroutineType(types: !495)
!495 = !{!134, !169, !330, !134}
!496 = !{!492, !497, !498}
!497 = !DILocalVariable(name: "inp", arg: 2, scope: !493, file: !3, line: 132, type: !330)
!498 = !DILocalVariable(name: "broadcast", arg: 3, scope: !493, file: !3, line: 132, type: !134)
!499 = !DILocation(line: 132, column: 39, scope: !493, inlinedAt: !500)
!500 = distinct !DILocation(line: 265, column: 10, scope: !485)
!501 = !DILocation(line: 132, column: 58, scope: !493, inlinedAt: !500)
!502 = !DILocation(line: 132, column: 68, scope: !493, inlinedAt: !500)
!503 = !DILocation(line: 141, column: 13, scope: !504, inlinedAt: !500)
!504 = distinct !DILexicalBlock(scope: !493, file: !3, line: 141, column: 7)
!505 = !{!488, !298, i64 48}
!506 = !DILocation(line: 141, column: 23, scope: !504, inlinedAt: !500)
!507 = !DILocation(line: 141, column: 42, scope: !504, inlinedAt: !500)
!508 = !DILocation(line: 142, column: 26, scope: !504, inlinedAt: !500)
!509 = !{!510, !298, i64 264}
!510 = !{!"netif", !448, i64 0, !464, i64 8, !464, i64 32, !464, i64 56, !298, i64 80, !298, i64 152, !298, i64 156, !298, i64 168, !448, i64 184, !448, i64 192, !448, i64 200, !448, i64 208, !448, i64 216, !448, i64 224, !448, i64 232, !298, i64 240, !325, i64 248, !325, i64 250, !325, i64 252, !298, i64 254, !298, i64 260, !298, i64 261, !298, i64 262, !298, i64 264, !298, i64 265, !298, i64 266, !448, i64 272}
!511 = !DILocation(line: 142, column: 23, scope: !504, inlinedAt: !500)
!512 = !DILocation(line: 141, column: 7, scope: !493, inlinedAt: !500)
!513 = !DILocation(line: 147, column: 7, scope: !514, inlinedAt: !500)
!514 = distinct !DILexicalBlock(scope: !493, file: !3, line: 147, column: 7)
!515 = !{!488, !298, i64 20}
!516 = !DILocation(line: 147, column: 7, scope: !493, inlinedAt: !500)
!517 = !DILocation(line: 157, column: 7, scope: !518, inlinedAt: !500)
!518 = distinct !DILexicalBlock(scope: !493, file: !3, line: 157, column: 7)
!519 = !DILocation(line: 157, column: 7, scope: !493, inlinedAt: !500)
!520 = !DILocation(line: 0, scope: !485)
!521 = !DILocation(line: 161, column: 9, scope: !522, inlinedAt: !500)
!522 = distinct !DILexicalBlock(scope: !518, file: !3, line: 157, column: 69)
!523 = !DILocation(line: 166, column: 54, scope: !524, inlinedAt: !500)
!524 = distinct !DILexicalBlock(scope: !525, file: !3, line: 166, column: 13)
!525 = distinct !DILexicalBlock(scope: !526, file: !3, line: 165, column: 7)
!526 = distinct !DILexicalBlock(scope: !527, file: !3, line: 161, column: 25)
!527 = distinct !DILexicalBlock(scope: !522, file: !3, line: 161, column: 9)
!528 = !DILocation(line: 168, column: 13, scope: !524, inlinedAt: !500)
!529 = !DILocation(line: 166, column: 13, scope: !525, inlinedAt: !500)
!530 = !DILocation(line: 175, column: 41, scope: !531, inlinedAt: !500)
!531 = distinct !DILexicalBlock(scope: !527, file: !3, line: 175, column: 11)
!532 = !DILocation(line: 175, column: 11, scope: !531, inlinedAt: !500)
!533 = !DILocation(line: 175, column: 44, scope: !531, inlinedAt: !500)
!534 = !DILocation(line: 266, column: 17, scope: !535)
!535 = distinct !DILexicalBlock(scope: !536, file: !3, line: 266, column: 11)
!536 = distinct !DILexicalBlock(scope: !485, file: !3, line: 265, column: 60)
!537 = !{!488, !298, i64 64}
!538 = !DILocation(line: 266, column: 23, scope: !535)
!539 = !DILocation(line: 266, column: 46, scope: !535)
!540 = !DILocation(line: 266, column: 11, scope: !536)
!541 = !DILocation(line: 267, column: 23, scope: !542)
!542 = distinct !DILexicalBlock(scope: !543, file: !3, line: 267, column: 13)
!543 = distinct !DILexicalBlock(scope: !535, file: !3, line: 266, column: 52)
!544 = !DILocation(line: 267, column: 13, scope: !543)
!545 = !DILocation(line: 271, column: 30, scope: !546)
!546 = distinct !DILexicalBlock(scope: !542, file: !3, line: 271, column: 20)
!547 = !DILocation(line: 273, column: 16, scope: !548)
!548 = distinct !DILexicalBlock(scope: !549, file: !3, line: 273, column: 15)
!549 = distinct !DILexicalBlock(scope: !546, file: !3, line: 271, column: 84)
!550 = !DILocation(line: 273, column: 50, scope: !548)
!551 = !DILocation(line: 273, column: 54, scope: !548)
!552 = !DILocation(line: 275, column: 17, scope: !553)
!553 = distinct !DILexicalBlock(scope: !554, file: !3, line: 275, column: 17)
!554 = distinct !DILexicalBlock(scope: !548, file: !3, line: 273, column: 121)
!555 = !DILocation(line: 273, column: 15, scope: !549)
!556 = !DILocation(line: 275, column: 45, scope: !553)
!557 = !DILocation(line: 275, column: 48, scope: !553)
!558 = !DILocation(line: 275, column: 17, scope: !554)
!559 = !DILocation(line: 283, column: 19, scope: !560)
!560 = distinct !DILexicalBlock(scope: !546, file: !3, line: 283, column: 18)
!561 = !DILocation(line: 283, column: 18, scope: !546)
!562 = !DILocation(line: 286, column: 9, scope: !563)
!563 = distinct !DILexicalBlock(scope: !560, file: !3, line: 283, column: 50)
!564 = !DILocation(line: 0, scope: !327)
!565 = !DILocation(line: 291, column: 17, scope: !566)
!566 = distinct !DILexicalBlock(scope: !536, file: !3, line: 291, column: 11)
!567 = !{!488, !325, i64 68}
!568 = !DILocation(line: 291, column: 29, scope: !566)
!569 = !DILocation(line: 291, column: 37, scope: !566)
!570 = !DILocation(line: 292, column: 12, scope: !566)
!571 = !{!488, !298, i64 44}
!572 = !DILocation(line: 292, column: 46, scope: !566)
!573 = !DILocation(line: 293, column: 12, scope: !566)
!574 = !DILocation(line: 291, column: 11, scope: !536)
!575 = !DILocation(line: 295, column: 18, scope: !576)
!576 = distinct !DILexicalBlock(scope: !577, file: !3, line: 295, column: 13)
!577 = distinct !DILexicalBlock(scope: !566, file: !3, line: 293, column: 66)
!578 = !DILocation(line: 295, column: 13, scope: !577)
!579 = !DILocation(line: 298, column: 29, scope: !580)
!580 = distinct !DILexicalBlock(scope: !576, file: !3, line: 295, column: 27)
!581 = !{!488, !448, i64 56}
!582 = !DILocation(line: 298, column: 17, scope: !580)
!583 = !DILocation(line: 298, column: 22, scope: !580)
!584 = !DILocation(line: 299, column: 21, scope: !580)
!585 = !DILocation(line: 300, column: 20, scope: !580)
!586 = !DILocation(line: 301, column: 9, scope: !580)
!587 = !DILocation(line: 302, column: 11, scope: !588)
!588 = distinct !DILexicalBlock(scope: !576, file: !3, line: 301, column: 16)
!589 = !{!439, !325, i64 142}
!590 = !DILocation(line: 255, column: 48, scope: !479)
!591 = distinct !{!591, !483, !592}
!592 = !DILocation(line: 309, column: 3, scope: !480)
!593 = !DILocation(line: 316, column: 11, scope: !594)
!594 = distinct !DILexicalBlock(scope: !327, file: !3, line: 316, column: 7)
!595 = !DILocation(line: 316, column: 7, scope: !327)
!596 = !DILocation(line: 320, column: 9, scope: !597)
!597 = distinct !DILexicalBlock(scope: !598, file: !3, line: 320, column: 9)
!598 = distinct !DILexicalBlock(scope: !594, file: !3, line: 318, column: 10)
!599 = !{!463, !448, i64 24}
!600 = !DILocation(line: 320, column: 9, scope: !598)
!601 = !DILocation(line: 321, column: 16, scope: !602)
!602 = distinct !DILexicalBlock(scope: !597, file: !3, line: 320, column: 29)
!603 = !DILocation(line: 325, column: 10, scope: !604)
!604 = distinct !DILexicalBlock(scope: !598, file: !3, line: 325, column: 9)
!605 = !DILocation(line: 325, column: 9, scope: !598)
!606 = !DILocation(line: 326, column: 16, scope: !607)
!607 = distinct !DILexicalBlock(scope: !604, file: !3, line: 325, column: 30)
!608 = !DILocation(line: 327, column: 5, scope: !607)
!609 = !DILocation(line: 0, scope: !607)
!610 = !DILocation(line: 331, column: 7, scope: !611)
!611 = distinct !DILexicalBlock(scope: !327, file: !3, line: 331, column: 7)
!612 = !DILocation(line: 331, column: 7, scope: !327)
!613 = !DILocation(line: 334, column: 5, scope: !614)
!614 = distinct !DILexicalBlock(scope: !615, file: !3, line: 334, column: 5)
!615 = distinct !DILexicalBlock(scope: !611, file: !3, line: 331, column: 15)
!616 = !{!510, !325, i64 248}
!617 = !DILocation(line: 334, column: 5, scope: !615)
!618 = !DILocation(line: 358, column: 21, scope: !619)
!619 = distinct !DILexicalBlock(scope: !620, file: !3, line: 358, column: 13)
!620 = distinct !DILexicalBlock(scope: !621, file: !3, line: 357, column: 7)
!621 = distinct !DILexicalBlock(scope: !614, file: !3, line: 334, column: 63)
!622 = !{!470, !325, i64 6}
!623 = !DILocation(line: 358, column: 28, scope: !619)
!624 = !DILocation(line: 358, column: 13, scope: !620)
!625 = !DILocation(line: 359, column: 52, scope: !626)
!626 = distinct !DILexicalBlock(scope: !627, file: !3, line: 359, column: 15)
!627 = distinct !DILexicalBlock(scope: !619, file: !3, line: 358, column: 34)
!628 = !{!447, !325, i64 16}
!629 = !DILocation(line: 359, column: 15, scope: !626)
!630 = !DILocation(line: 361, column: 56, scope: !626)
!631 = !DILocation(line: 359, column: 15, scope: !627)
!632 = !DILocation(line: 368, column: 9, scope: !633)
!633 = distinct !DILexicalBlock(scope: !615, file: !3, line: 368, column: 9)
!634 = !DILocation(line: 368, column: 9, scope: !615)
!635 = !DILocation(line: 370, column: 7, scope: !636)
!636 = distinct !DILexicalBlock(scope: !637, file: !3, line: 370, column: 7)
!637 = distinct !DILexicalBlock(scope: !638, file: !3, line: 370, column: 7)
!638 = distinct !DILexicalBlock(scope: !639, file: !3, line: 370, column: 7)
!639 = distinct !DILexicalBlock(scope: !640, file: !3, line: 370, column: 7)
!640 = distinct !DILexicalBlock(scope: !633, file: !3, line: 368, column: 42)
!641 = !DILocation(line: 370, column: 7, scope: !642)
!642 = distinct !DILexicalBlock(scope: !643, file: !3, line: 370, column: 7)
!643 = distinct !DILexicalBlock(scope: !644, file: !3, line: 370, column: 7)
!644 = distinct !DILexicalBlock(scope: !636, file: !3, line: 370, column: 7)
!645 = !DILocation(line: 377, column: 9, scope: !615)
!646 = !DILocation(line: 404, column: 16, scope: !647)
!647 = distinct !DILexicalBlock(scope: !648, file: !3, line: 404, column: 11)
!648 = distinct !DILexicalBlock(scope: !649, file: !3, line: 377, column: 22)
!649 = distinct !DILexicalBlock(scope: !615, file: !3, line: 377, column: 9)
!650 = !{!488, !448, i64 80}
!651 = !DILocation(line: 404, column: 21, scope: !647)
!652 = !DILocation(line: 404, column: 11, scope: !648)
!653 = !DILocation(line: 406, column: 24, scope: !654)
!654 = distinct !DILexicalBlock(scope: !647, file: !3, line: 404, column: 30)
!655 = !{!488, !448, i64 88}
!656 = !DILocation(line: 406, column: 9, scope: !654)
!657 = !DILocation(line: 412, column: 5, scope: !648)
!658 = !DILocation(line: 409, column: 9, scope: !659)
!659 = distinct !DILexicalBlock(scope: !647, file: !3, line: 407, column: 14)
!660 = !DILocation(line: 410, column: 9, scope: !659)
!661 = !DILocation(line: 418, column: 12, scope: !662)
!662 = distinct !DILexicalBlock(scope: !663, file: !3, line: 418, column: 11)
!663 = distinct !DILexicalBlock(scope: !649, file: !3, line: 412, column: 12)
!664 = !DILocation(line: 418, column: 22, scope: !662)
!665 = !DILocation(line: 418, column: 26, scope: !662)
!666 = !DILocation(line: 418, column: 11, scope: !663)
!667 = !DILocation(line: 420, column: 38, scope: !668)
!668 = distinct !DILexicalBlock(scope: !662, file: !3, line: 418, column: 71)
!669 = !{!463, !325, i64 32}
!670 = !DILocation(line: 420, column: 66, scope: !668)
!671 = !DILocation(line: 420, column: 9, scope: !668)
!672 = !DILocation(line: 421, column: 9, scope: !668)
!673 = !DILocation(line: 424, column: 7, scope: !663)
!674 = !{!439, !325, i64 136}
!675 = !DILocation(line: 425, column: 7, scope: !663)
!676 = !DILocation(line: 427, column: 7, scope: !663)
!677 = !DILocation(line: 430, column: 5, scope: !678)
!678 = distinct !DILexicalBlock(scope: !611, file: !3, line: 429, column: 10)
!679 = !DILocation(line: 439, column: 3, scope: !327)
!680 = !{!439, !325, i64 128}
!681 = !DILocation(line: 440, column: 3, scope: !327)
!682 = !DILocation(line: 442, column: 3, scope: !327)
!683 = !DILocation(line: 445, column: 1, scope: !327)
!684 = !DILocation(line: 194, column: 43, scope: !210)
!685 = !DILocation(line: 196, column: 2, scope: !210)
!686 = !DILocation(line: 196, column: 10, scope: !210)
!687 = !DILocation(line: 197, column: 2, scope: !210)
!688 = !DILocation(line: 198, column: 2, scope: !689)
!689 = distinct !DILexicalBlock(scope: !690, file: !211, line: 198, column: 2)
!690 = distinct !DILexicalBlock(scope: !210, file: !211, line: 198, column: 2)
!691 = !DILocation(line: 199, column: 2, scope: !210)
!692 = !DILocation(line: 200, column: 1, scope: !210)
!693 = distinct !DISubprogram(name: "udp_send", scope: !3, file: !3, line: 469, type: !694, isLocal: false, isDefinition: true, scopeLine: 470, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !696)
!694 = !DISubroutineType(types: !695)
!695 = !{!351, !169, !191}
!696 = !{!697, !698}
!697 = !DILocalVariable(name: "pcb", arg: 1, scope: !693, file: !3, line: 469, type: !169)
!698 = !DILocalVariable(name: "p", arg: 2, scope: !693, file: !3, line: 469, type: !191)
!699 = !DILocation(line: 469, column: 26, scope: !693)
!700 = !DILocation(line: 469, column: 44, scope: !693)
!701 = !DILocation(line: 471, column: 3, scope: !702)
!702 = distinct !DILexicalBlock(scope: !703, file: !3, line: 471, column: 3)
!703 = distinct !DILexicalBlock(scope: !693, file: !3, line: 471, column: 3)
!704 = !DILocation(line: 471, column: 3, scope: !703)
!705 = !DILocation(line: 471, column: 3, scope: !706)
!706 = distinct !DILexicalBlock(scope: !707, file: !3, line: 471, column: 3)
!707 = distinct !DILexicalBlock(scope: !702, file: !3, line: 471, column: 3)
!708 = !DILocation(line: 471, column: 3, scope: !709)
!709 = distinct !DILexicalBlock(scope: !710, file: !3, line: 471, column: 3)
!710 = distinct !DILexicalBlock(scope: !711, file: !3, line: 471, column: 3)
!711 = distinct !DILexicalBlock(scope: !706, file: !3, line: 471, column: 3)
!712 = !DILocation(line: 472, column: 3, scope: !713)
!713 = distinct !DILexicalBlock(scope: !714, file: !3, line: 472, column: 3)
!714 = distinct !DILexicalBlock(scope: !693, file: !3, line: 472, column: 3)
!715 = !DILocation(line: 472, column: 3, scope: !714)
!716 = !DILocation(line: 472, column: 3, scope: !717)
!717 = distinct !DILexicalBlock(scope: !718, file: !3, line: 472, column: 3)
!718 = distinct !DILexicalBlock(scope: !713, file: !3, line: 472, column: 3)
!719 = !DILocation(line: 472, column: 3, scope: !720)
!720 = distinct !DILexicalBlock(scope: !721, file: !3, line: 472, column: 3)
!721 = distinct !DILexicalBlock(scope: !722, file: !3, line: 472, column: 3)
!722 = distinct !DILexicalBlock(scope: !717, file: !3, line: 472, column: 3)
!723 = !DILocation(line: 474, column: 7, scope: !724)
!724 = distinct !DILexicalBlock(scope: !693, file: !3, line: 474, column: 7)
!725 = !DILocation(line: 474, column: 7, scope: !693)
!726 = !DILocation(line: 479, column: 51, scope: !693)
!727 = !DILocation(line: 479, column: 10, scope: !693)
!728 = !DILocation(line: 479, column: 3, scope: !693)
!729 = !DILocation(line: 0, scope: !693)
!730 = !DILocation(line: 480, column: 1, scope: !693)
!731 = distinct !DISubprogram(name: "udp_sendto", scope: !3, file: !3, line: 522, type: !732, isLocal: false, isDefinition: true, scopeLine: 524, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !734)
!732 = !DISubroutineType(types: !733)
!733 = !{!351, !169, !191, !152, !100}
!734 = !{!735, !736, !737, !738, !739}
!735 = !DILocalVariable(name: "pcb", arg: 1, scope: !731, file: !3, line: 522, type: !169)
!736 = !DILocalVariable(name: "p", arg: 2, scope: !731, file: !3, line: 522, type: !191)
!737 = !DILocalVariable(name: "dst_ip", arg: 3, scope: !731, file: !3, line: 523, type: !152)
!738 = !DILocalVariable(name: "dst_port", arg: 4, scope: !731, file: !3, line: 523, type: !100)
!739 = !DILocalVariable(name: "netif", scope: !731, file: !3, line: 536, type: !330)
!740 = !DILocation(line: 522, column: 28, scope: !731)
!741 = !DILocation(line: 522, column: 46, scope: !731)
!742 = !DILocation(line: 523, column: 29, scope: !731)
!743 = !DILocation(line: 523, column: 43, scope: !731)
!744 = !DILocation(line: 538, column: 3, scope: !745)
!745 = distinct !DILexicalBlock(scope: !746, file: !3, line: 538, column: 3)
!746 = distinct !DILexicalBlock(scope: !731, file: !3, line: 538, column: 3)
!747 = !DILocation(line: 538, column: 3, scope: !746)
!748 = !DILocation(line: 538, column: 3, scope: !749)
!749 = distinct !DILexicalBlock(scope: !750, file: !3, line: 538, column: 3)
!750 = distinct !DILexicalBlock(scope: !745, file: !3, line: 538, column: 3)
!751 = !DILocation(line: 538, column: 3, scope: !752)
!752 = distinct !DILexicalBlock(scope: !753, file: !3, line: 538, column: 3)
!753 = distinct !DILexicalBlock(scope: !754, file: !3, line: 538, column: 3)
!754 = distinct !DILexicalBlock(scope: !749, file: !3, line: 538, column: 3)
!755 = !DILocation(line: 539, column: 3, scope: !756)
!756 = distinct !DILexicalBlock(scope: !757, file: !3, line: 539, column: 3)
!757 = distinct !DILexicalBlock(scope: !731, file: !3, line: 539, column: 3)
!758 = !DILocation(line: 539, column: 3, scope: !757)
!759 = !DILocation(line: 539, column: 3, scope: !760)
!760 = distinct !DILexicalBlock(scope: !761, file: !3, line: 539, column: 3)
!761 = distinct !DILexicalBlock(scope: !756, file: !3, line: 539, column: 3)
!762 = !DILocation(line: 539, column: 3, scope: !763)
!763 = distinct !DILexicalBlock(scope: !764, file: !3, line: 539, column: 3)
!764 = distinct !DILexicalBlock(scope: !765, file: !3, line: 539, column: 3)
!765 = distinct !DILexicalBlock(scope: !760, file: !3, line: 539, column: 3)
!766 = !DILocation(line: 540, column: 3, scope: !767)
!767 = distinct !DILexicalBlock(scope: !768, file: !3, line: 540, column: 3)
!768 = distinct !DILexicalBlock(scope: !731, file: !3, line: 540, column: 3)
!769 = !DILocation(line: 540, column: 3, scope: !768)
!770 = !DILocation(line: 540, column: 3, scope: !771)
!771 = distinct !DILexicalBlock(scope: !772, file: !3, line: 540, column: 3)
!772 = distinct !DILexicalBlock(scope: !767, file: !3, line: 540, column: 3)
!773 = !DILocation(line: 540, column: 3, scope: !774)
!774 = distinct !DILexicalBlock(scope: !775, file: !3, line: 540, column: 3)
!775 = distinct !DILexicalBlock(scope: !776, file: !3, line: 540, column: 3)
!776 = distinct !DILexicalBlock(scope: !771, file: !3, line: 540, column: 3)
!777 = !DILocation(line: 542, column: 8, scope: !778)
!778 = distinct !DILexicalBlock(scope: !731, file: !3, line: 542, column: 7)
!779 = !{!464, !298, i64 20}
!780 = !DILocation(line: 542, column: 7, scope: !731)
!781 = !DILocation(line: 548, column: 12, scope: !782)
!782 = distinct !DILexicalBlock(scope: !731, file: !3, line: 548, column: 7)
!783 = !DILocation(line: 548, column: 22, scope: !782)
!784 = !DILocation(line: 548, column: 7, scope: !731)
!785 = !DILocation(line: 549, column: 13, scope: !786)
!786 = distinct !DILexicalBlock(scope: !782, file: !3, line: 548, column: 41)
!787 = !DILocation(line: 536, column: 17, scope: !731)
!788 = !DILocation(line: 550, column: 3, scope: !786)
!789 = !DILocation(line: 553, column: 9, scope: !790)
!790 = distinct !DILexicalBlock(scope: !791, file: !3, line: 553, column: 9)
!791 = distinct !DILexicalBlock(scope: !782, file: !3, line: 550, column: 10)
!792 = !DILocation(line: 553, column: 9, scope: !791)
!793 = !DILocation(line: 560, column: 16, scope: !794)
!794 = distinct !DILexicalBlock(scope: !795, file: !3, line: 560, column: 11)
!795 = distinct !DILexicalBlock(scope: !790, file: !3, line: 553, column: 38)
!796 = !{!488, !298, i64 76}
!797 = !DILocation(line: 560, column: 30, scope: !794)
!798 = !DILocation(line: 560, column: 11, scope: !795)
!799 = !DILocation(line: 561, column: 17, scope: !800)
!800 = distinct !DILexicalBlock(scope: !794, file: !3, line: 560, column: 49)
!801 = !DILocation(line: 562, column: 7, scope: !800)
!802 = !DILocation(line: 566, column: 13, scope: !803)
!803 = distinct !DILexicalBlock(scope: !794, file: !3, line: 566, column: 13)
!804 = !DILocation(line: 566, column: 13, scope: !794)
!805 = !DILocation(line: 574, column: 16, scope: !806)
!806 = distinct !DILexicalBlock(scope: !807, file: !3, line: 574, column: 15)
!807 = distinct !DILexicalBlock(scope: !803, file: !3, line: 568, column: 9)
!808 = !{!488, !297, i64 72}
!809 = !DILocation(line: 575, column: 16, scope: !806)
!810 = !DILocation(line: 574, column: 51, scope: !806)
!811 = !DILocation(line: 576, column: 21, scope: !812)
!812 = distinct !DILexicalBlock(scope: !806, file: !3, line: 575, column: 67)
!813 = !DILocation(line: 577, column: 11, scope: !812)
!814 = !DILocation(line: 0, scope: !791)
!815 = !DILocation(line: 582, column: 15, scope: !816)
!816 = distinct !DILexicalBlock(scope: !791, file: !3, line: 582, column: 9)
!817 = !DILocation(line: 582, column: 9, scope: !791)
!818 = !DILocation(line: 586, column: 15, scope: !819)
!819 = distinct !DILexicalBlock(scope: !816, file: !3, line: 584, column: 5)
!820 = !DILocation(line: 0, scope: !800)
!821 = !DILocation(line: 591, column: 13, scope: !822)
!822 = distinct !DILexicalBlock(scope: !731, file: !3, line: 591, column: 7)
!823 = !DILocation(line: 591, column: 7, scope: !731)
!824 = !DILocation(line: 595, column: 5, scope: !825)
!825 = distinct !DILexicalBlock(scope: !822, file: !3, line: 591, column: 22)
!826 = !{!439, !325, i64 134}
!827 = !DILocation(line: 596, column: 5, scope: !825)
!828 = !DILocation(line: 601, column: 10, scope: !731)
!829 = !DILocation(line: 601, column: 3, scope: !731)
!830 = !DILocation(line: 0, scope: !831)
!831 = distinct !DILexicalBlock(scope: !778, file: !3, line: 542, column: 48)
!832 = !DILocation(line: 603, column: 1, scope: !731)
!833 = distinct !DISubprogram(name: "udp_sendto_if", scope: !3, file: !3, line: 626, type: !834, isLocal: false, isDefinition: true, scopeLine: 628, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !836)
!834 = !DISubroutineType(types: !835)
!835 = !{!351, !169, !191, !152, !100, !330}
!836 = !{!837, !838, !839, !840, !841, !842}
!837 = !DILocalVariable(name: "pcb", arg: 1, scope: !833, file: !3, line: 626, type: !169)
!838 = !DILocalVariable(name: "p", arg: 2, scope: !833, file: !3, line: 626, type: !191)
!839 = !DILocalVariable(name: "dst_ip", arg: 3, scope: !833, file: !3, line: 627, type: !152)
!840 = !DILocalVariable(name: "dst_port", arg: 4, scope: !833, file: !3, line: 627, type: !100)
!841 = !DILocalVariable(name: "netif", arg: 5, scope: !833, file: !3, line: 627, type: !330)
!842 = !DILocalVariable(name: "src_ip", scope: !833, file: !3, line: 640, type: !152)
!843 = !DILocation(line: 626, column: 31, scope: !833)
!844 = !DILocation(line: 626, column: 49, scope: !833)
!845 = !DILocation(line: 627, column: 32, scope: !833)
!846 = !DILocation(line: 627, column: 46, scope: !833)
!847 = !DILocation(line: 627, column: 70, scope: !833)
!848 = !DILocation(line: 642, column: 3, scope: !849)
!849 = distinct !DILexicalBlock(scope: !850, file: !3, line: 642, column: 3)
!850 = distinct !DILexicalBlock(scope: !833, file: !3, line: 642, column: 3)
!851 = !DILocation(line: 642, column: 3, scope: !850)
!852 = !DILocation(line: 642, column: 3, scope: !853)
!853 = distinct !DILexicalBlock(scope: !854, file: !3, line: 642, column: 3)
!854 = distinct !DILexicalBlock(scope: !849, file: !3, line: 642, column: 3)
!855 = !DILocation(line: 642, column: 3, scope: !856)
!856 = distinct !DILexicalBlock(scope: !857, file: !3, line: 642, column: 3)
!857 = distinct !DILexicalBlock(scope: !858, file: !3, line: 642, column: 3)
!858 = distinct !DILexicalBlock(scope: !853, file: !3, line: 642, column: 3)
!859 = !DILocation(line: 643, column: 3, scope: !860)
!860 = distinct !DILexicalBlock(scope: !861, file: !3, line: 643, column: 3)
!861 = distinct !DILexicalBlock(scope: !833, file: !3, line: 643, column: 3)
!862 = !DILocation(line: 643, column: 3, scope: !861)
!863 = !DILocation(line: 643, column: 3, scope: !864)
!864 = distinct !DILexicalBlock(scope: !865, file: !3, line: 643, column: 3)
!865 = distinct !DILexicalBlock(scope: !860, file: !3, line: 643, column: 3)
!866 = !DILocation(line: 643, column: 3, scope: !867)
!867 = distinct !DILexicalBlock(scope: !868, file: !3, line: 643, column: 3)
!868 = distinct !DILexicalBlock(scope: !869, file: !3, line: 643, column: 3)
!869 = distinct !DILexicalBlock(scope: !864, file: !3, line: 643, column: 3)
!870 = !DILocation(line: 644, column: 3, scope: !871)
!871 = distinct !DILexicalBlock(scope: !872, file: !3, line: 644, column: 3)
!872 = distinct !DILexicalBlock(scope: !833, file: !3, line: 644, column: 3)
!873 = !DILocation(line: 644, column: 3, scope: !872)
!874 = !DILocation(line: 644, column: 3, scope: !875)
!875 = distinct !DILexicalBlock(scope: !876, file: !3, line: 644, column: 3)
!876 = distinct !DILexicalBlock(scope: !871, file: !3, line: 644, column: 3)
!877 = !DILocation(line: 644, column: 3, scope: !878)
!878 = distinct !DILexicalBlock(scope: !879, file: !3, line: 644, column: 3)
!879 = distinct !DILexicalBlock(scope: !880, file: !3, line: 644, column: 3)
!880 = distinct !DILexicalBlock(scope: !875, file: !3, line: 644, column: 3)
!881 = !DILocation(line: 645, column: 3, scope: !882)
!882 = distinct !DILexicalBlock(scope: !883, file: !3, line: 645, column: 3)
!883 = distinct !DILexicalBlock(scope: !833, file: !3, line: 645, column: 3)
!884 = !DILocation(line: 645, column: 3, scope: !883)
!885 = !DILocation(line: 645, column: 3, scope: !886)
!886 = distinct !DILexicalBlock(scope: !887, file: !3, line: 645, column: 3)
!887 = distinct !DILexicalBlock(scope: !882, file: !3, line: 645, column: 3)
!888 = !DILocation(line: 645, column: 3, scope: !889)
!889 = distinct !DILexicalBlock(scope: !890, file: !3, line: 645, column: 3)
!890 = distinct !DILexicalBlock(scope: !891, file: !3, line: 645, column: 3)
!891 = distinct !DILexicalBlock(scope: !886, file: !3, line: 645, column: 3)
!892 = !DILocation(line: 647, column: 8, scope: !893)
!893 = distinct !DILexicalBlock(scope: !833, file: !3, line: 647, column: 7)
!894 = !DILocation(line: 0, scope: !893)
!895 = !DILocation(line: 647, column: 7, scope: !833)
!896 = !DILocation(line: 653, column: 7, scope: !897)
!897 = distinct !DILexicalBlock(scope: !833, file: !3, line: 653, column: 7)
!898 = !DILocation(line: 653, column: 7, scope: !833)
!899 = !DILocation(line: 654, column: 9, scope: !900)
!900 = distinct !DILexicalBlock(scope: !901, file: !3, line: 654, column: 9)
!901 = distinct !DILexicalBlock(scope: !897, file: !3, line: 653, column: 25)
!902 = !DILocation(line: 654, column: 50, scope: !900)
!903 = !DILocation(line: 655, column: 9, scope: !900)
!904 = !DILocation(line: 654, column: 9, scope: !901)
!905 = !DILocation(line: 656, column: 49, scope: !906)
!906 = distinct !DILexicalBlock(scope: !900, file: !3, line: 655, column: 57)
!907 = !DILocation(line: 656, column: 16, scope: !906)
!908 = !DILocation(line: 640, column: 20, scope: !833)
!909 = !DILocation(line: 657, column: 18, scope: !910)
!910 = distinct !DILexicalBlock(scope: !906, file: !3, line: 657, column: 11)
!911 = !DILocation(line: 657, column: 11, scope: !906)
!912 = !DILocation(line: 663, column: 11, scope: !913)
!913 = distinct !DILexicalBlock(scope: !914, file: !3, line: 663, column: 11)
!914 = distinct !DILexicalBlock(scope: !900, file: !3, line: 661, column: 12)
!915 = !DILocation(line: 663, column: 69, scope: !913)
!916 = !DILocation(line: 663, column: 11, scope: !914)
!917 = !DILocation(line: 675, column: 9, scope: !918)
!918 = distinct !DILexicalBlock(scope: !897, file: !3, line: 675, column: 9)
!919 = !DILocation(line: 676, column: 9, scope: !918)
!920 = !DILocation(line: 675, column: 50, scope: !918)
!921 = !DILocation(line: 679, column: 16, scope: !922)
!922 = distinct !DILexicalBlock(scope: !918, file: !3, line: 676, column: 57)
!923 = !DILocation(line: 680, column: 5, scope: !922)
!924 = !DILocation(line: 683, column: 12, scope: !925)
!925 = distinct !DILexicalBlock(scope: !926, file: !3, line: 683, column: 11)
!926 = distinct !DILexicalBlock(scope: !918, file: !3, line: 680, column: 12)
!927 = !DILocation(line: 683, column: 11, scope: !926)
!928 = !DILocation(line: 0, scope: !926)
!929 = !DILocation(line: 694, column: 10, scope: !833)
!930 = !DILocation(line: 694, column: 3, scope: !833)
!931 = !DILocation(line: 0, scope: !932)
!932 = distinct !DILexicalBlock(scope: !893, file: !3, line: 647, column: 48)
!933 = !DILocation(line: 696, column: 1, scope: !833)
!934 = distinct !DISubprogram(name: "udp_sendto_if_src", scope: !3, file: !3, line: 701, type: !935, isLocal: false, isDefinition: true, scopeLine: 703, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !937)
!935 = !DISubroutineType(types: !936)
!936 = !{!351, !169, !191, !152, !100, !330, !152}
!937 = !{!938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949}
!938 = !DILocalVariable(name: "pcb", arg: 1, scope: !934, file: !3, line: 701, type: !169)
!939 = !DILocalVariable(name: "p", arg: 2, scope: !934, file: !3, line: 701, type: !191)
!940 = !DILocalVariable(name: "dst_ip", arg: 3, scope: !934, file: !3, line: 702, type: !152)
!941 = !DILocalVariable(name: "dst_port", arg: 4, scope: !934, file: !3, line: 702, type: !100)
!942 = !DILocalVariable(name: "netif", arg: 5, scope: !934, file: !3, line: 702, type: !330)
!943 = !DILocalVariable(name: "src_ip", arg: 6, scope: !934, file: !3, line: 702, type: !152)
!944 = !DILocalVariable(name: "udphdr", scope: !934, file: !3, line: 715, type: !108)
!945 = !DILocalVariable(name: "err", scope: !934, file: !3, line: 716, type: !351)
!946 = !DILocalVariable(name: "q", scope: !934, file: !3, line: 717, type: !191)
!947 = !DILocalVariable(name: "ip_proto", scope: !934, file: !3, line: 718, type: !134)
!948 = !DILocalVariable(name: "ttl", scope: !934, file: !3, line: 719, type: !134)
!949 = !DILocalVariable(name: "udpchksum", scope: !950, file: !3, line: 858, type: !100)
!950 = distinct !DILexicalBlock(scope: !951, file: !3, line: 857, column: 71)
!951 = distinct !DILexicalBlock(scope: !952, file: !3, line: 857, column: 11)
!952 = distinct !DILexicalBlock(scope: !953, file: !3, line: 855, column: 63)
!953 = distinct !DILexicalBlock(scope: !954, file: !3, line: 855, column: 5)
!954 = distinct !DILexicalBlock(scope: !934, file: !3, line: 850, column: 3)
!955 = !DILocation(line: 701, column: 35, scope: !934)
!956 = !DILocation(line: 701, column: 53, scope: !934)
!957 = !DILocation(line: 702, column: 36, scope: !934)
!958 = !DILocation(line: 702, column: 50, scope: !934)
!959 = !DILocation(line: 702, column: 74, scope: !934)
!960 = !DILocation(line: 702, column: 98, scope: !934)
!961 = !DILocation(line: 723, column: 3, scope: !962)
!962 = distinct !DILexicalBlock(scope: !963, file: !3, line: 723, column: 3)
!963 = distinct !DILexicalBlock(scope: !934, file: !3, line: 723, column: 3)
!964 = !DILocation(line: 723, column: 3, scope: !963)
!965 = !DILocation(line: 723, column: 3, scope: !966)
!966 = distinct !DILexicalBlock(scope: !967, file: !3, line: 723, column: 3)
!967 = distinct !DILexicalBlock(scope: !962, file: !3, line: 723, column: 3)
!968 = !DILocation(line: 723, column: 3, scope: !969)
!969 = distinct !DILexicalBlock(scope: !970, file: !3, line: 723, column: 3)
!970 = distinct !DILexicalBlock(scope: !971, file: !3, line: 723, column: 3)
!971 = distinct !DILexicalBlock(scope: !966, file: !3, line: 723, column: 3)
!972 = !DILocation(line: 724, column: 3, scope: !973)
!973 = distinct !DILexicalBlock(scope: !974, file: !3, line: 724, column: 3)
!974 = distinct !DILexicalBlock(scope: !934, file: !3, line: 724, column: 3)
!975 = !DILocation(line: 724, column: 3, scope: !974)
!976 = !DILocation(line: 724, column: 3, scope: !977)
!977 = distinct !DILexicalBlock(scope: !978, file: !3, line: 724, column: 3)
!978 = distinct !DILexicalBlock(scope: !973, file: !3, line: 724, column: 3)
!979 = !DILocation(line: 724, column: 3, scope: !980)
!980 = distinct !DILexicalBlock(scope: !981, file: !3, line: 724, column: 3)
!981 = distinct !DILexicalBlock(scope: !982, file: !3, line: 724, column: 3)
!982 = distinct !DILexicalBlock(scope: !977, file: !3, line: 724, column: 3)
!983 = !DILocation(line: 725, column: 3, scope: !984)
!984 = distinct !DILexicalBlock(scope: !985, file: !3, line: 725, column: 3)
!985 = distinct !DILexicalBlock(scope: !934, file: !3, line: 725, column: 3)
!986 = !DILocation(line: 725, column: 3, scope: !985)
!987 = !DILocation(line: 725, column: 3, scope: !988)
!988 = distinct !DILexicalBlock(scope: !989, file: !3, line: 725, column: 3)
!989 = distinct !DILexicalBlock(scope: !984, file: !3, line: 725, column: 3)
!990 = !DILocation(line: 725, column: 3, scope: !991)
!991 = distinct !DILexicalBlock(scope: !992, file: !3, line: 725, column: 3)
!992 = distinct !DILexicalBlock(scope: !993, file: !3, line: 725, column: 3)
!993 = distinct !DILexicalBlock(scope: !988, file: !3, line: 725, column: 3)
!994 = !DILocation(line: 726, column: 3, scope: !995)
!995 = distinct !DILexicalBlock(scope: !996, file: !3, line: 726, column: 3)
!996 = distinct !DILexicalBlock(scope: !934, file: !3, line: 726, column: 3)
!997 = !DILocation(line: 726, column: 3, scope: !996)
!998 = !DILocation(line: 726, column: 3, scope: !999)
!999 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 726, column: 3)
!1000 = distinct !DILexicalBlock(scope: !995, file: !3, line: 726, column: 3)
!1001 = !DILocation(line: 726, column: 3, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 726, column: 3)
!1003 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 726, column: 3)
!1004 = distinct !DILexicalBlock(scope: !999, file: !3, line: 726, column: 3)
!1005 = !DILocation(line: 727, column: 3, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 727, column: 3)
!1007 = distinct !DILexicalBlock(scope: !934, file: !3, line: 727, column: 3)
!1008 = !DILocation(line: 727, column: 3, scope: !1007)
!1009 = !DILocation(line: 727, column: 3, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 727, column: 3)
!1011 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 727, column: 3)
!1012 = !DILocation(line: 727, column: 3, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1014, file: !3, line: 727, column: 3)
!1014 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 727, column: 3)
!1015 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 727, column: 3)
!1016 = !DILocation(line: 729, column: 8, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !934, file: !3, line: 729, column: 7)
!1018 = !DILocation(line: 729, column: 47, scope: !1017)
!1019 = !DILocation(line: 730, column: 8, scope: !1017)
!1020 = !DILocation(line: 729, column: 7, scope: !934)
!1021 = !DILocation(line: 748, column: 12, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !934, file: !3, line: 748, column: 7)
!1023 = !DILocation(line: 748, column: 23, scope: !1022)
!1024 = !DILocation(line: 748, column: 7, scope: !934)
!1025 = !DILocation(line: 750, column: 11, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 748, column: 29)
!1027 = !DILocation(line: 716, column: 9, scope: !934)
!1028 = !DILocation(line: 751, column: 13, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 751, column: 9)
!1030 = !DILocation(line: 751, column: 9, scope: !1026)
!1031 = !DILocation(line: 758, column: 18, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !934, file: !3, line: 758, column: 7)
!1033 = !DILocation(line: 758, column: 38, scope: !1032)
!1034 = !DILocation(line: 758, column: 7, scope: !934)
!1035 = !DILocation(line: 762, column: 7, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !934, file: !3, line: 762, column: 7)
!1037 = !DILocation(line: 762, column: 7, scope: !934)
!1038 = !DILocation(line: 764, column: 9, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1036, file: !3, line: 762, column: 37)
!1040 = !DILocation(line: 717, column: 16, scope: !934)
!1041 = !DILocation(line: 766, column: 11, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 766, column: 9)
!1043 = !DILocation(line: 766, column: 9, scope: !1039)
!1044 = !DILocation(line: 770, column: 12, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 770, column: 9)
!1046 = !DILocation(line: 770, column: 20, scope: !1045)
!1047 = !DILocation(line: 770, column: 9, scope: !1039)
!1048 = !DILocation(line: 772, column: 7, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1045, file: !3, line: 770, column: 26)
!1050 = !DILocation(line: 773, column: 5, scope: !1049)
!1051 = !DILocation(line: 0, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1036, file: !3, line: 777, column: 10)
!1053 = !DILocation(line: 783, column: 3, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 783, column: 3)
!1055 = distinct !DILexicalBlock(scope: !934, file: !3, line: 783, column: 3)
!1056 = !DILocation(line: 783, column: 3, scope: !1055)
!1057 = !DILocation(line: 783, column: 3, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 783, column: 3)
!1059 = distinct !DILexicalBlock(scope: !1054, file: !3, line: 783, column: 3)
!1060 = !DILocation(line: 783, column: 3, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1062, file: !3, line: 783, column: 3)
!1062 = distinct !DILexicalBlock(scope: !1063, file: !3, line: 783, column: 3)
!1063 = distinct !DILexicalBlock(scope: !1058, file: !3, line: 783, column: 3)
!1064 = !DILocation(line: 786, column: 33, scope: !934)
!1065 = !DILocation(line: 715, column: 19, scope: !934)
!1066 = !DILocation(line: 787, column: 33, scope: !934)
!1067 = !DILocation(line: 787, column: 17, scope: !934)
!1068 = !DILocation(line: 787, column: 11, scope: !934)
!1069 = !DILocation(line: 787, column: 15, scope: !934)
!1070 = !DILocation(line: 788, column: 18, scope: !934)
!1071 = !DILocation(line: 788, column: 11, scope: !934)
!1072 = !DILocation(line: 788, column: 16, scope: !934)
!1073 = !DILocation(line: 790, column: 11, scope: !934)
!1074 = !DILocation(line: 790, column: 18, scope: !934)
!1075 = !DILocation(line: 794, column: 14, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !934, file: !3, line: 794, column: 7)
!1077 = !DILocation(line: 794, column: 20, scope: !1076)
!1078 = !DILocation(line: 794, column: 48, scope: !1076)
!1079 = !DILocation(line: 794, column: 54, scope: !1076)
!1080 = !DILocation(line: 794, column: 57, scope: !1076)
!1081 = !DILocation(line: 794, column: 7, scope: !934)
!1082 = !DILocation(line: 795, column: 8, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 794, column: 86)
!1084 = !DILocation(line: 795, column: 14, scope: !1083)
!1085 = !{!447, !298, i64 21}
!1086 = !DILocation(line: 796, column: 3, scope: !1083)
!1087 = !DILocation(line: 852, column: 33, scope: !954)
!1088 = !DILocation(line: 852, column: 19, scope: !954)
!1089 = !DILocation(line: 852, column: 13, scope: !954)
!1090 = !DILocation(line: 852, column: 17, scope: !954)
!1091 = !{!470, !325, i64 4}
!1092 = !DILocation(line: 855, column: 5, scope: !953)
!1093 = !DILocation(line: 0, scope: !951)
!1094 = !DILocation(line: 855, column: 5, scope: !954)
!1095 = !DILocation(line: 857, column: 11, scope: !951)
!1096 = !DILocation(line: 857, column: 28, scope: !951)
!1097 = !DILocation(line: 857, column: 37, scope: !951)
!1098 = !DILocation(line: 857, column: 43, scope: !951)
!1099 = !DILocation(line: 857, column: 65, scope: !951)
!1100 = !DILocation(line: 857, column: 11, scope: !952)
!1101 = !DILocation(line: 869, column: 60, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !950, file: !3, line: 868, column: 9)
!1103 = !DILocation(line: 869, column: 23, scope: !1102)
!1104 = !DILocation(line: 858, column: 15, scope: !950)
!1105 = !DILocation(line: 874, column: 23, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !950, file: !3, line: 874, column: 13)
!1107 = !DILocation(line: 874, column: 13, scope: !950)
!1108 = !DILocation(line: 877, column: 24, scope: !950)
!1109 = !DILocation(line: 878, column: 7, scope: !950)
!1110 = !DILocation(line: 718, column: 8, scope: !934)
!1111 = !DILocation(line: 886, column: 10, scope: !934)
!1112 = !DILocation(line: 886, column: 40, scope: !934)
!1113 = !DILocation(line: 886, column: 74, scope: !934)
!1114 = !DILocation(line: 0, scope: !934)
!1115 = !DILocation(line: 719, column: 8, scope: !934)
!1116 = !DILocation(line: 895, column: 9, scope: !934)
!1117 = !{!488, !298, i64 50}
!1118 = !DILocation(line: 902, column: 9, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !934, file: !3, line: 902, column: 7)
!1120 = !DILocation(line: 902, column: 7, scope: !934)
!1121 = !DILocation(line: 904, column: 5, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 902, column: 15)
!1123 = !DILocation(line: 907, column: 3, scope: !1122)
!1124 = !DILocation(line: 909, column: 3, scope: !934)
!1125 = !{!439, !325, i64 120}
!1126 = !DILocation(line: 910, column: 3, scope: !934)
!1127 = !DILocation(line: 0, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 730, column: 48)
!1129 = !DILocation(line: 911, column: 1, scope: !934)
!1130 = distinct !DISubprogram(name: "udp_bind", scope: !3, file: !3, line: 934, type: !1131, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1133)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!351, !169, !152, !100}
!1133 = !{!1134, !1135, !1136, !1137, !1138, !1139, !1140}
!1134 = !DILocalVariable(name: "pcb", arg: 1, scope: !1130, file: !3, line: 934, type: !169)
!1135 = !DILocalVariable(name: "ipaddr", arg: 2, scope: !1130, file: !3, line: 934, type: !152)
!1136 = !DILocalVariable(name: "port", arg: 3, scope: !1130, file: !3, line: 934, type: !100)
!1137 = !DILocalVariable(name: "ipcb", scope: !1130, file: !3, line: 936, type: !169)
!1138 = !DILocalVariable(name: "rebind", scope: !1130, file: !3, line: 937, type: !134)
!1139 = !DILocalVariable(name: "zoned_ipaddr", scope: !1130, file: !3, line: 939, type: !154)
!1140 = !DILocalVariable(name: "selected_netif", scope: !1141, file: !3, line: 976, type: !330)
!1141 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 976, column: 5)
!1142 = distinct !DILexicalBlock(scope: !1143, file: !3, line: 974, column: 79)
!1143 = distinct !DILexicalBlock(scope: !1130, file: !3, line: 974, column: 7)
!1144 = !DILocation(line: 934, column: 26, scope: !1130)
!1145 = !DILocation(line: 934, column: 48, scope: !1130)
!1146 = !DILocation(line: 934, column: 62, scope: !1130)
!1147 = !DILocation(line: 939, column: 3, scope: !1130)
!1148 = !DILocation(line: 946, column: 14, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1130, file: !3, line: 946, column: 7)
!1150 = !DILocation(line: 946, column: 7, scope: !1130)
!1151 = !DILocation(line: 953, column: 3, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1153, file: !3, line: 953, column: 3)
!1153 = distinct !DILexicalBlock(scope: !1130, file: !3, line: 953, column: 3)
!1154 = !DILocation(line: 953, column: 3, scope: !1153)
!1155 = !DILocation(line: 0, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 961, column: 3)
!1157 = distinct !DILexicalBlock(scope: !1130, file: !3, line: 961, column: 3)
!1158 = !DILocation(line: 936, column: 19, scope: !1130)
!1159 = !DILocation(line: 961, column: 30, scope: !1156)
!1160 = !DILocation(line: 961, column: 3, scope: !1157)
!1161 = !DILocation(line: 953, column: 3, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1163, file: !3, line: 953, column: 3)
!1163 = distinct !DILexicalBlock(scope: !1152, file: !3, line: 953, column: 3)
!1164 = !DILocation(line: 953, column: 3, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1166, file: !3, line: 953, column: 3)
!1166 = distinct !DILexicalBlock(scope: !1167, file: !3, line: 953, column: 3)
!1167 = distinct !DILexicalBlock(scope: !1162, file: !3, line: 953, column: 3)
!1168 = !DILocation(line: 961, column: 52, scope: !1156)
!1169 = distinct !{!1169, !1160, !1170}
!1170 = !DILocation(line: 967, column: 3, scope: !1157)
!1171 = !DILocation(line: 963, column: 13, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 963, column: 9)
!1173 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 961, column: 58)
!1174 = !DILocation(line: 963, column: 9, scope: !1173)
!1175 = !DILocation(line: 974, column: 7, scope: !1143)
!1176 = !DILocation(line: 974, column: 24, scope: !1143)
!1177 = !DILocation(line: 974, column: 27, scope: !1143)
!1178 = !DILocation(line: 975, column: 5, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 975, column: 5)
!1180 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 975, column: 5)
!1181 = !DILocation(line: 975, column: 5, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 975, column: 5)
!1183 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 975, column: 5)
!1184 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 975, column: 5)
!1185 = !DILocation(line: 976, column: 5, scope: !1141)
!1186 = !DILocation(line: 976, column: 5, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1141, file: !3, line: 976, column: 5)
!1188 = !DILocation(line: 976, column: 5, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1187, file: !3, line: 976, column: 5)
!1190 = !DILocation(line: 0, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 946, column: 23)
!1192 = !DILocation(line: 982, column: 12, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1130, file: !3, line: 982, column: 7)
!1194 = !DILocation(line: 982, column: 7, scope: !1130)
!1195 = !DILocation(line: 990, column: 5, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 990, column: 5)
!1197 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 989, column: 10)
!1198 = !DILocalVariable(name: "n", scope: !1199, file: !3, line: 104, type: !100)
!1199 = distinct !DISubprogram(name: "udp_new_port", scope: !3, file: !3, line: 102, type: !1200, isLocal: true, isDefinition: true, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1202)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{!100}
!1202 = !{!1198, !1203}
!1203 = !DILocalVariable(name: "pcb", scope: !1199, file: !3, line: 105, type: !169)
!1204 = !DILocation(line: 104, column: 9, scope: !1199, inlinedAt: !1205)
!1205 = distinct !DILocation(line: 983, column: 12, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 982, column: 18)
!1207 = !DILocation(line: 0, scope: !1208, inlinedAt: !1205)
!1208 = distinct !DILexicalBlock(scope: !1209, file: !3, line: 108, column: 47)
!1209 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 108, column: 7)
!1210 = !DILocation(line: 105, column: 3, scope: !1199, inlinedAt: !1205)
!1211 = !DILocation(line: 0, scope: !1212, inlinedAt: !1205)
!1212 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 114, column: 11)
!1213 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 113, column: 38)
!1214 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 113, column: 9)
!1215 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 112, column: 54)
!1216 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 112, column: 3)
!1217 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 112, column: 3)
!1218 = !DILocation(line: 108, column: 15, scope: !1209, inlinedAt: !1205)
!1219 = !DILocation(line: 108, column: 18, scope: !1209, inlinedAt: !1205)
!1220 = !DILocation(line: 108, column: 7, scope: !1199, inlinedAt: !1205)
!1221 = !DILocation(line: 105, column: 19, scope: !1199, inlinedAt: !1205)
!1222 = !DILocation(line: 112, column: 3, scope: !1217, inlinedAt: !1205)
!1223 = !DILocation(line: 112, column: 48, scope: !1216, inlinedAt: !1205)
!1224 = !DILocation(line: 0, scope: !1216, inlinedAt: !1205)
!1225 = !DILocation(line: 112, column: 28, scope: !1216, inlinedAt: !1205)
!1226 = distinct !{!1226, !1227, !1228}
!1227 = !DILocation(line: 112, column: 3, scope: !1217)
!1228 = !DILocation(line: 119, column: 3, scope: !1217)
!1229 = !DILocation(line: 113, column: 14, scope: !1214, inlinedAt: !1205)
!1230 = !DILocation(line: 113, column: 25, scope: !1214, inlinedAt: !1205)
!1231 = !DILocation(line: 113, column: 9, scope: !1215, inlinedAt: !1205)
!1232 = !DILocation(line: 984, column: 9, scope: !1206)
!1233 = !DILocation(line: 984, column: 14, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1206, file: !3, line: 984, column: 9)
!1235 = !DILocation(line: 991, column: 15, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 991, column: 11)
!1237 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 990, column: 60)
!1238 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 990, column: 5)
!1239 = !DILocation(line: 991, column: 11, scope: !1237)
!1240 = !DILocation(line: 996, column: 14, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 996, column: 13)
!1242 = distinct !DILexicalBlock(scope: !1236, file: !3, line: 991, column: 24)
!1243 = !{!488, !298, i64 49}
!1244 = !DILocation(line: 996, column: 48, scope: !1241)
!1245 = !DILocation(line: 997, column: 14, scope: !1241)
!1246 = !DILocation(line: 996, column: 13, scope: !1242)
!1247 = !DILocation(line: 1001, column: 22, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 1001, column: 15)
!1249 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 999, column: 9)
!1250 = !DILocation(line: 1001, column: 33, scope: !1248)
!1251 = !DILocation(line: 1001, column: 42, scope: !1248)
!1252 = !DILocation(line: 1003, column: 16, scope: !1248)
!1253 = !DILocation(line: 1003, column: 53, scope: !1248)
!1254 = !DILocation(line: 1003, column: 56, scope: !1248)
!1255 = !DILocation(line: 1003, column: 78, scope: !1248)
!1256 = !DILocation(line: 1004, column: 15, scope: !1248)
!1257 = !DILocation(line: 1001, column: 15, scope: !1249)
!1258 = !DILocation(line: 990, column: 54, scope: !1238)
!1259 = !DILocation(line: 0, scope: !1238)
!1260 = !DILocation(line: 990, column: 32, scope: !1238)
!1261 = distinct !{!1261, !1195, !1262}
!1262 = !DILocation(line: 1012, column: 5, scope: !1196)
!1263 = !DILocation(line: 1015, column: 3, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1265, file: !3, line: 1015, column: 3)
!1265 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 1015, column: 3)
!1266 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 1015, column: 3)
!1267 = distinct !DILexicalBlock(scope: !1268, file: !3, line: 1015, column: 3)
!1268 = distinct !DILexicalBlock(scope: !1130, file: !3, line: 1015, column: 3)
!1269 = !DILocation(line: 1015, column: 3, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1268, file: !3, line: 1015, column: 3)
!1271 = !DILocation(line: 1015, column: 3, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 1015, column: 3)
!1273 = distinct !DILexicalBlock(scope: !1270, file: !3, line: 1015, column: 3)
!1274 = !DILocation(line: 1015, column: 3, scope: !1268)
!1275 = !DILocation(line: 1015, column: 3, scope: !1273)
!1276 = !DILocation(line: 1015, column: 3, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1278, file: !3, line: 1015, column: 3)
!1278 = distinct !DILexicalBlock(scope: !1270, file: !3, line: 1015, column: 3)
!1279 = !DILocation(line: 1017, column: 8, scope: !1130)
!1280 = !DILocation(line: 1017, column: 19, scope: !1130)
!1281 = !DILocation(line: 1020, column: 14, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1130, file: !3, line: 1020, column: 7)
!1283 = !DILocation(line: 1020, column: 7, scope: !1130)
!1284 = !DILocation(line: 1022, column: 17, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1282, file: !3, line: 1020, column: 20)
!1286 = !DILocation(line: 1022, column: 10, scope: !1285)
!1287 = !DILocation(line: 1022, column: 15, scope: !1285)
!1288 = !DILocation(line: 1023, column: 14, scope: !1285)
!1289 = !DILocation(line: 1024, column: 3, scope: !1285)
!1290 = !DILocation(line: 0, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 1004, column: 48)
!1292 = !DILocation(line: 1029, column: 1, scope: !1130)
!1293 = !DILocation(line: 114, column: 11, scope: !1212, inlinedAt: !1205)
!1294 = !DILocation(line: 114, column: 15, scope: !1212, inlinedAt: !1205)
!1295 = !DILocation(line: 114, column: 11, scope: !1213, inlinedAt: !1205)
!1296 = distinct !DISubprogram(name: "udp_bind_netif", scope: !3, file: !3, line: 1044, type: !1297, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1301)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{null, !169, !1299}
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !331)
!1301 = !{!1302, !1303}
!1302 = !DILocalVariable(name: "pcb", arg: 1, scope: !1296, file: !3, line: 1044, type: !169)
!1303 = !DILocalVariable(name: "netif", arg: 2, scope: !1296, file: !3, line: 1044, type: !1299)
!1304 = !DILocation(line: 1044, column: 32, scope: !1296)
!1305 = !DILocation(line: 1044, column: 57, scope: !1296)
!1306 = !DILocation(line: 1048, column: 13, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 1048, column: 7)
!1308 = !DILocation(line: 1048, column: 7, scope: !1296)
!1309 = !DILocation(line: 1049, column: 22, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 1048, column: 22)
!1311 = !DILocation(line: 1050, column: 3, scope: !1310)
!1312 = !DILocation(line: 1051, column: 10, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 1050, column: 10)
!1314 = !DILocation(line: 1051, column: 20, scope: !1313)
!1315 = !DILocation(line: 1053, column: 1, scope: !1296)
!1316 = distinct !DISubprogram(name: "udp_connect", scope: !3, file: !3, line: 1073, type: !1131, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1317)
!1317 = !{!1318, !1319, !1320, !1321, !1322, !1325}
!1318 = !DILocalVariable(name: "pcb", arg: 1, scope: !1316, file: !3, line: 1073, type: !169)
!1319 = !DILocalVariable(name: "ipaddr", arg: 2, scope: !1316, file: !3, line: 1073, type: !152)
!1320 = !DILocalVariable(name: "port", arg: 3, scope: !1316, file: !3, line: 1073, type: !100)
!1321 = !DILocalVariable(name: "ipcb", scope: !1316, file: !3, line: 1075, type: !169)
!1322 = !DILocalVariable(name: "err", scope: !1323, file: !3, line: 1083, type: !351)
!1323 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 1082, column: 29)
!1324 = distinct !DILexicalBlock(scope: !1316, file: !3, line: 1082, column: 7)
!1325 = !DILocalVariable(name: "selected_netif", scope: !1326, file: !3, line: 1095, type: !330)
!1326 = distinct !DILexicalBlock(scope: !1327, file: !3, line: 1095, column: 5)
!1327 = distinct !DILexicalBlock(scope: !1328, file: !3, line: 1094, column: 68)
!1328 = distinct !DILexicalBlock(scope: !1316, file: !3, line: 1093, column: 7)
!1329 = !DILocation(line: 1073, column: 29, scope: !1316)
!1330 = !DILocation(line: 1073, column: 51, scope: !1316)
!1331 = !DILocation(line: 1073, column: 65, scope: !1316)
!1332 = !DILocation(line: 1079, column: 3, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1334, file: !3, line: 1079, column: 3)
!1334 = distinct !DILexicalBlock(scope: !1316, file: !3, line: 1079, column: 3)
!1335 = !DILocation(line: 1079, column: 3, scope: !1334)
!1336 = !DILocation(line: 1079, column: 3, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 1079, column: 3)
!1338 = distinct !DILexicalBlock(scope: !1333, file: !3, line: 1079, column: 3)
!1339 = !DILocation(line: 1079, column: 3, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1341, file: !3, line: 1079, column: 3)
!1341 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 1079, column: 3)
!1342 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 1079, column: 3)
!1343 = !DILocation(line: 1080, column: 3, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 1080, column: 3)
!1345 = distinct !DILexicalBlock(scope: !1316, file: !3, line: 1080, column: 3)
!1346 = !DILocation(line: 1080, column: 3, scope: !1345)
!1347 = !DILocation(line: 1080, column: 3, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1349, file: !3, line: 1080, column: 3)
!1349 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 1080, column: 3)
!1350 = !DILocation(line: 1080, column: 3, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 1080, column: 3)
!1352 = distinct !DILexicalBlock(scope: !1353, file: !3, line: 1080, column: 3)
!1353 = distinct !DILexicalBlock(scope: !1348, file: !3, line: 1080, column: 3)
!1354 = !DILocation(line: 1082, column: 12, scope: !1324)
!1355 = !DILocation(line: 1082, column: 23, scope: !1324)
!1356 = !DILocation(line: 1082, column: 7, scope: !1316)
!1357 = !DILocation(line: 1083, column: 37, scope: !1323)
!1358 = !DILocation(line: 1083, column: 17, scope: !1323)
!1359 = !DILocation(line: 1083, column: 11, scope: !1323)
!1360 = !DILocation(line: 1084, column: 13, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1323, file: !3, line: 1084, column: 9)
!1362 = !DILocation(line: 1089, column: 3, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1364, file: !3, line: 1089, column: 3)
!1364 = distinct !DILexicalBlock(scope: !1365, file: !3, line: 1089, column: 3)
!1365 = distinct !DILexicalBlock(scope: !1316, file: !3, line: 1089, column: 3)
!1366 = !DILocation(line: 1089, column: 3, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1368, file: !3, line: 1089, column: 3)
!1368 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 1089, column: 3)
!1369 = !DILocation(line: 1089, column: 3, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1365, file: !3, line: 1089, column: 3)
!1371 = !DILocation(line: 1089, column: 3, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1373, file: !3, line: 1089, column: 3)
!1373 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 1089, column: 3)
!1374 = !DILocation(line: 1089, column: 3, scope: !1365)
!1375 = !DILocation(line: 1089, column: 3, scope: !1373)
!1376 = !DILocation(line: 1089, column: 3, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1378, file: !3, line: 1089, column: 3)
!1378 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 1089, column: 3)
!1379 = !DILocation(line: 1093, column: 7, scope: !1328)
!1380 = !DILocation(line: 1093, column: 33, scope: !1328)
!1381 = !DILocation(line: 1094, column: 7, scope: !1328)
!1382 = !DILocation(line: 1095, column: 5, scope: !1326)
!1383 = !DILocation(line: 1095, column: 5, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1326, file: !3, line: 1095, column: 5)
!1385 = !DILocation(line: 1095, column: 5, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1384, file: !3, line: 1095, column: 5)
!1387 = !DILocation(line: 1099, column: 8, scope: !1316)
!1388 = !DILocation(line: 1099, column: 20, scope: !1316)
!1389 = !DILocation(line: 1100, column: 8, scope: !1316)
!1390 = !DILocation(line: 1100, column: 14, scope: !1316)
!1391 = !DILocation(line: 1075, column: 19, scope: !1316)
!1392 = !DILocation(line: 0, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1394, file: !3, line: 1108, column: 3)
!1394 = distinct !DILexicalBlock(scope: !1316, file: !3, line: 1108, column: 3)
!1395 = !DILocation(line: 1108, column: 30, scope: !1393)
!1396 = !DILocation(line: 1108, column: 3, scope: !1394)
!1397 = !DILocation(line: 1108, column: 52, scope: !1393)
!1398 = distinct !{!1398, !1396, !1399}
!1399 = !DILocation(line: 1113, column: 3, scope: !1394)
!1400 = !DILocation(line: 1109, column: 13, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1402, file: !3, line: 1109, column: 9)
!1402 = distinct !DILexicalBlock(scope: !1393, file: !3, line: 1108, column: 58)
!1403 = !DILocation(line: 1109, column: 9, scope: !1402)
!1404 = !DILocation(line: 1115, column: 8, scope: !1316)
!1405 = !DILocation(line: 1115, column: 13, scope: !1316)
!1406 = !DILocation(line: 1116, column: 12, scope: !1316)
!1407 = !DILocation(line: 1117, column: 3, scope: !1316)
!1408 = !DILocation(line: 0, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1361, file: !3, line: 1084, column: 24)
!1410 = !DILocation(line: 1118, column: 1, scope: !1316)
!1411 = distinct !DISubprogram(name: "udp_disconnect", scope: !3, file: !3, line: 1128, type: !1412, isLocal: false, isDefinition: true, scopeLine: 1129, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1414)
!1412 = !DISubroutineType(types: !1413)
!1413 = !{null, !169}
!1414 = !{!1415}
!1415 = !DILocalVariable(name: "pcb", arg: 1, scope: !1411, file: !3, line: 1128, type: !169)
!1416 = !DILocation(line: 1128, column: 32, scope: !1411)
!1417 = !DILocation(line: 1132, column: 3, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1419, file: !3, line: 1132, column: 3)
!1419 = distinct !DILexicalBlock(scope: !1411, file: !3, line: 1132, column: 3)
!1420 = !DILocation(line: 1132, column: 3, scope: !1419)
!1421 = !DILocation(line: 1132, column: 3, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 1132, column: 3)
!1423 = distinct !DILexicalBlock(scope: !1418, file: !3, line: 1132, column: 3)
!1424 = !DILocation(line: 1132, column: 3, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1426, file: !3, line: 1132, column: 3)
!1426 = distinct !DILexicalBlock(scope: !1427, file: !3, line: 1132, column: 3)
!1427 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 1132, column: 3)
!1428 = !DILocation(line: 1136, column: 7, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1411, file: !3, line: 1136, column: 7)
!1430 = !DILocation(line: 1136, column: 7, scope: !1411)
!1431 = !DILocation(line: 1137, column: 5, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1433, file: !3, line: 1137, column: 5)
!1433 = distinct !DILexicalBlock(scope: !1434, file: !3, line: 1137, column: 5)
!1434 = distinct !DILexicalBlock(scope: !1429, file: !3, line: 1136, column: 42)
!1435 = !DILocation(line: 1137, column: 5, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1433, file: !3, line: 1137, column: 5)
!1437 = !DILocation(line: 1137, column: 5, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1439, file: !3, line: 1137, column: 5)
!1439 = distinct !DILexicalBlock(scope: !1436, file: !3, line: 1137, column: 5)
!1440 = !DILocation(line: 1137, column: 5, scope: !1433)
!1441 = !DILocation(line: 1137, column: 5, scope: !1439)
!1442 = !DILocation(line: 1137, column: 5, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1444, file: !3, line: 1137, column: 5)
!1444 = distinct !DILexicalBlock(scope: !1436, file: !3, line: 1137, column: 5)
!1445 = !DILocation(line: 1140, column: 5, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 1140, column: 5)
!1447 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 1140, column: 5)
!1448 = distinct !DILexicalBlock(scope: !1429, file: !3, line: 1138, column: 10)
!1449 = !DILocation(line: 1140, column: 5, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1451, file: !3, line: 1140, column: 5)
!1451 = distinct !DILexicalBlock(scope: !1446, file: !3, line: 1140, column: 5)
!1452 = !DILocation(line: 1140, column: 5, scope: !1447)
!1453 = !DILocation(line: 1140, column: 5, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1455, file: !3, line: 1140, column: 5)
!1455 = distinct !DILexicalBlock(scope: !1456, file: !3, line: 1140, column: 5)
!1456 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 1140, column: 5)
!1457 = distinct !DILexicalBlock(scope: !1451, file: !3, line: 1140, column: 5)
!1458 = !DILocation(line: 1140, column: 5, scope: !1455)
!1459 = !DILocation(line: 1140, column: 5, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1461, file: !3, line: 1140, column: 5)
!1461 = distinct !DILexicalBlock(scope: !1462, file: !3, line: 1140, column: 5)
!1462 = distinct !DILexicalBlock(scope: !1463, file: !3, line: 1140, column: 5)
!1463 = distinct !DILexicalBlock(scope: !1464, file: !3, line: 1140, column: 5)
!1464 = distinct !DILexicalBlock(scope: !1446, file: !3, line: 1140, column: 5)
!1465 = !DILocation(line: 1140, column: 5, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1464, file: !3, line: 1140, column: 5)
!1467 = !DILocation(line: 1144, column: 8, scope: !1411)
!1468 = !DILocation(line: 1144, column: 20, scope: !1411)
!1469 = !DILocation(line: 1145, column: 8, scope: !1411)
!1470 = !DILocation(line: 1145, column: 18, scope: !1411)
!1471 = !DILocation(line: 1147, column: 3, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1411, file: !3, line: 1147, column: 3)
!1473 = !DILocation(line: 1148, column: 1, scope: !1411)
!1474 = distinct !DISubprogram(name: "udp_recv", scope: !3, file: !3, line: 1160, type: !1475, isLocal: false, isDefinition: true, scopeLine: 1161, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1477)
!1475 = !DISubroutineType(types: !1476)
!1476 = !{null, !169, !187, !107}
!1477 = !{!1478, !1479, !1480}
!1478 = !DILocalVariable(name: "pcb", arg: 1, scope: !1474, file: !3, line: 1160, type: !169)
!1479 = !DILocalVariable(name: "recv", arg: 2, scope: !1474, file: !3, line: 1160, type: !187)
!1480 = !DILocalVariable(name: "recv_arg", arg: 3, scope: !1474, file: !3, line: 1160, type: !107)
!1481 = !DILocation(line: 1160, column: 26, scope: !1474)
!1482 = !DILocation(line: 1160, column: 43, scope: !1474)
!1483 = !DILocation(line: 1160, column: 55, scope: !1474)
!1484 = !DILocation(line: 1164, column: 3, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1486, file: !3, line: 1164, column: 3)
!1486 = distinct !DILexicalBlock(scope: !1474, file: !3, line: 1164, column: 3)
!1487 = !DILocation(line: 1164, column: 3, scope: !1486)
!1488 = !DILocation(line: 1164, column: 3, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1490, file: !3, line: 1164, column: 3)
!1490 = distinct !DILexicalBlock(scope: !1485, file: !3, line: 1164, column: 3)
!1491 = !DILocation(line: 1164, column: 3, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1493, file: !3, line: 1164, column: 3)
!1493 = distinct !DILexicalBlock(scope: !1494, file: !3, line: 1164, column: 3)
!1494 = distinct !DILexicalBlock(scope: !1489, file: !3, line: 1164, column: 3)
!1495 = !DILocation(line: 1167, column: 8, scope: !1474)
!1496 = !DILocation(line: 1167, column: 13, scope: !1474)
!1497 = !DILocation(line: 1168, column: 8, scope: !1474)
!1498 = !DILocation(line: 1168, column: 17, scope: !1474)
!1499 = !DILocation(line: 1169, column: 1, scope: !1474)
!1500 = distinct !DISubprogram(name: "udp_remove", scope: !3, file: !3, line: 1181, type: !1412, isLocal: false, isDefinition: true, scopeLine: 1182, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1501)
!1501 = !{!1502, !1503}
!1502 = !DILocalVariable(name: "pcb", arg: 1, scope: !1500, file: !3, line: 1181, type: !169)
!1503 = !DILocalVariable(name: "pcb2", scope: !1500, file: !3, line: 1183, type: !169)
!1504 = !DILocation(line: 1181, column: 28, scope: !1500)
!1505 = !DILocation(line: 1187, column: 3, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1507, file: !3, line: 1187, column: 3)
!1507 = distinct !DILexicalBlock(scope: !1500, file: !3, line: 1187, column: 3)
!1508 = !DILocation(line: 1187, column: 3, scope: !1507)
!1509 = !DILocation(line: 1187, column: 3, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !3, line: 1187, column: 3)
!1511 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 1187, column: 3)
!1512 = !DILocation(line: 1187, column: 3, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !3, line: 1187, column: 3)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !3, line: 1187, column: 3)
!1515 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 1187, column: 3)
!1516 = !DILocation(line: 1191, column: 7, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1500, file: !3, line: 1191, column: 7)
!1518 = !DILocation(line: 1191, column: 16, scope: !1517)
!1519 = !DILocation(line: 1191, column: 7, scope: !1500)
!1520 = !DILocation(line: 1193, column: 26, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1517, file: !3, line: 1191, column: 24)
!1522 = !DILocation(line: 1193, column: 14, scope: !1521)
!1523 = !DILocation(line: 1195, column: 3, scope: !1521)
!1524 = !DILocation(line: 0, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1526, file: !3, line: 1196, column: 5)
!1526 = distinct !DILexicalBlock(scope: !1527, file: !3, line: 1196, column: 5)
!1527 = distinct !DILexicalBlock(scope: !1517, file: !3, line: 1195, column: 10)
!1528 = !DILocation(line: 1183, column: 19, scope: !1500)
!1529 = !DILocation(line: 1196, column: 32, scope: !1525)
!1530 = !DILocation(line: 1196, column: 5, scope: !1526)
!1531 = !DILocation(line: 1198, column: 17, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1533, file: !3, line: 1198, column: 11)
!1533 = distinct !DILexicalBlock(scope: !1525, file: !3, line: 1196, column: 60)
!1534 = !DILocation(line: 1198, column: 22, scope: !1532)
!1535 = !DILocation(line: 1198, column: 44, scope: !1532)
!1536 = !DILocation(line: 1198, column: 30, scope: !1532)
!1537 = distinct !{!1537, !1530, !1538}
!1538 = !DILocation(line: 1203, column: 5, scope: !1526)
!1539 = !DILocation(line: 1200, column: 27, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1532, file: !3, line: 1198, column: 52)
!1541 = !DILocation(line: 1200, column: 20, scope: !1540)
!1542 = !DILocation(line: 1201, column: 9, scope: !1540)
!1543 = !DILocation(line: 1205, column: 27, scope: !1500)
!1544 = !DILocation(line: 1205, column: 3, scope: !1500)
!1545 = !DILocation(line: 1206, column: 1, scope: !1500)
!1546 = distinct !DISubprogram(name: "udp_new", scope: !3, file: !3, line: 1220, type: !1547, isLocal: false, isDefinition: true, scopeLine: 1221, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1549)
!1547 = !DISubroutineType(types: !1548)
!1548 = !{!169}
!1549 = !{!1550}
!1550 = !DILocalVariable(name: "pcb", scope: !1546, file: !3, line: 1222, type: !169)
!1551 = !DILocation(line: 1226, column: 27, scope: !1546)
!1552 = !DILocation(line: 1226, column: 9, scope: !1546)
!1553 = !DILocation(line: 1222, column: 19, scope: !1546)
!1554 = !DILocation(line: 1228, column: 11, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1546, file: !3, line: 1228, column: 7)
!1556 = !DILocation(line: 1228, column: 7, scope: !1546)
!1557 = !DILocation(line: 1233, column: 5, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1555, file: !3, line: 1228, column: 20)
!1559 = !DILocation(line: 1234, column: 10, scope: !1558)
!1560 = !DILocation(line: 1234, column: 14, scope: !1558)
!1561 = !{!488, !298, i64 51}
!1562 = !DILocation(line: 1236, column: 5, scope: !1558)
!1563 = !{!488, !298, i64 77}
!1564 = !DILocation(line: 1238, column: 3, scope: !1558)
!1565 = !DILocation(line: 1239, column: 3, scope: !1546)
!1566 = distinct !DISubprogram(name: "udp_new_ip_type", scope: !3, file: !3, line: 1257, type: !1567, isLocal: false, isDefinition: true, scopeLine: 1258, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1569)
!1567 = !DISubroutineType(types: !1568)
!1568 = !{!169, !134}
!1569 = !{!1570, !1571}
!1570 = !DILocalVariable(name: "type", arg: 1, scope: !1566, file: !3, line: 1257, type: !134)
!1571 = !DILocalVariable(name: "pcb", scope: !1566, file: !3, line: 1259, type: !169)
!1572 = !DILocation(line: 1257, column: 22, scope: !1566)
!1573 = !DILocation(line: 1226, column: 27, scope: !1546, inlinedAt: !1574)
!1574 = distinct !DILocation(line: 1263, column: 9, scope: !1566)
!1575 = !DILocation(line: 1226, column: 9, scope: !1546, inlinedAt: !1574)
!1576 = !DILocation(line: 1222, column: 19, scope: !1546, inlinedAt: !1574)
!1577 = !DILocation(line: 1228, column: 11, scope: !1555, inlinedAt: !1574)
!1578 = !DILocation(line: 1228, column: 7, scope: !1546, inlinedAt: !1574)
!1579 = !DILocation(line: 1233, column: 5, scope: !1558, inlinedAt: !1574)
!1580 = !DILocation(line: 1234, column: 10, scope: !1558, inlinedAt: !1574)
!1581 = !DILocation(line: 1234, column: 14, scope: !1558, inlinedAt: !1574)
!1582 = !DILocation(line: 1236, column: 5, scope: !1558, inlinedAt: !1574)
!1583 = !DILocation(line: 1259, column: 19, scope: !1566)
!1584 = !DILocation(line: 1266, column: 5, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1586, file: !3, line: 1266, column: 5)
!1586 = distinct !DILexicalBlock(scope: !1587, file: !3, line: 1265, column: 20)
!1587 = distinct !DILexicalBlock(scope: !1566, file: !3, line: 1265, column: 7)
!1588 = !DILocation(line: 1267, column: 5, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1586, file: !3, line: 1267, column: 5)
!1590 = !DILocation(line: 1268, column: 3, scope: !1586)
!1591 = !DILocation(line: 1272, column: 3, scope: !1566)
!1592 = distinct !DISubprogram(name: "udp_netif_ip_addr_changed", scope: !3, file: !3, line: 1280, type: !1593, isLocal: false, isDefinition: true, scopeLine: 1281, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1595)
!1593 = !DISubroutineType(types: !1594)
!1594 = !{null, !152, !152}
!1595 = !{!1596, !1597, !1598}
!1596 = !DILocalVariable(name: "old_addr", arg: 1, scope: !1592, file: !3, line: 1280, type: !152)
!1597 = !DILocalVariable(name: "new_addr", arg: 2, scope: !1592, file: !3, line: 1280, type: !152)
!1598 = !DILocalVariable(name: "upcb", scope: !1592, file: !3, line: 1282, type: !169)
!1599 = !DILocation(line: 1280, column: 49, scope: !1592)
!1600 = !DILocation(line: 1280, column: 76, scope: !1592)
!1601 = !DILocation(line: 1284, column: 8, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1592, file: !3, line: 1284, column: 7)
!1603 = !DILocation(line: 1284, column: 32, scope: !1602)
!1604 = !DILocation(line: 1284, column: 36, scope: !1602)
!1605 = !DILocation(line: 1284, column: 7, scope: !1592)
!1606 = !DILocation(line: 1282, column: 19, scope: !1592)
!1607 = !DILocation(line: 0, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1609, file: !3, line: 1285, column: 5)
!1609 = distinct !DILexicalBlock(scope: !1610, file: !3, line: 1285, column: 5)
!1610 = distinct !DILexicalBlock(scope: !1602, file: !3, line: 1284, column: 61)
!1611 = !DILocation(line: 1285, column: 32, scope: !1608)
!1612 = !DILocation(line: 1285, column: 5, scope: !1609)
!1613 = !DILocation(line: 1287, column: 11, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !3, line: 1287, column: 11)
!1615 = distinct !DILexicalBlock(scope: !1608, file: !3, line: 1285, column: 60)
!1616 = !DILocation(line: 1287, column: 11, scope: !1615)
!1617 = !DILocation(line: 1290, column: 9, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1619, file: !3, line: 1290, column: 9)
!1619 = distinct !DILexicalBlock(scope: !1620, file: !3, line: 1290, column: 9)
!1620 = distinct !DILexicalBlock(scope: !1614, file: !3, line: 1287, column: 51)
!1621 = !DILocation(line: 1290, column: 9, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1619, file: !3, line: 1290, column: 9)
!1623 = !DILocation(line: 1290, column: 9, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 1290, column: 9)
!1625 = distinct !DILexicalBlock(scope: !1622, file: !3, line: 1290, column: 9)
!1626 = !DILocation(line: 1290, column: 9, scope: !1619)
!1627 = !DILocation(line: 1290, column: 9, scope: !1625)
!1628 = !DILocation(line: 1290, column: 9, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1630, file: !3, line: 1290, column: 9)
!1630 = distinct !DILexicalBlock(scope: !1622, file: !3, line: 1290, column: 9)
!1631 = !DILocation(line: 1285, column: 54, scope: !1608)
!1632 = distinct !{!1632, !1612, !1633}
!1633 = !DILocation(line: 1292, column: 5, scope: !1609)
!1634 = !DILocation(line: 1294, column: 1, scope: !1592)
!1635 = !DILocation(line: 65, column: 11, scope: !283)
!1636 = !DILocation(line: 62, column: 16, scope: !283)
!1637 = !DILocation(line: 66, column: 8, scope: !283)
!1638 = !DILocation(line: 63, column: 8, scope: !283)
!1639 = !DILocation(line: 67, column: 2, scope: !283)
!1640 = !DILocation(line: 69, column: 2, scope: !283)
