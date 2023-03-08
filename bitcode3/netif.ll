; ModuleID = '/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/netif.c'
source_filename = "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/netif.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ip_addr = type { %union.anon, i8 }
%union.anon = type { %struct.ip6_addr }
%struct.ip6_addr = type { [4 x i32], i8 }
%struct.netif = type { %struct.netif*, %struct.ip_addr, %struct.ip_addr, %struct.ip_addr, [3 x %struct.ip_addr], [3 x i8], [3 x i32], [3 x i32], {}*, i8 (%struct.netif*, %struct.pbuf*, %struct.ip4_addr*)*, i8 (%struct.netif*, %struct.pbuf*)*, i8 (%struct.netif*, %struct.pbuf*, %struct.ip6_addr*)*, void (%struct.netif*)*, void (%struct.netif*)*, i8*, [1 x i8*], i16, i16, i16, [6 x i8], i8, i8, [2 x i8], i8, i8, i8, i8 (%struct.netif*, %struct.ip6_addr*, i32)* }
%struct.pbuf = type { %struct.pbuf*, i8*, i16, i16, i8, i8, i8, i8 }
%struct.ip4_addr = type { i32 }
%struct.netif_ext_callback = type { void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)*, %struct.netif_ext_callback* }
%union.netif_ext_callback_args_t = type { %struct.ipv4_changed_s }
%struct.ipv4_changed_s = type { %struct.ip_addr*, %struct.ip_addr*, %struct.ip_addr* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.ipv6_addr_state_changed_s = type { i8, i8, %struct.ip_addr* }

@.str = private unnamed_addr constant [26 x i8] c"netif_input: invalid pbuf\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Assertion failure: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"!(1)\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"netif_input: invalid netif\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"netif_add: invalid netif\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"netif_add: No init function given\00", align 1
@ip_addr_any = external dso_local constant %struct.ip_addr, align 4
@netif_num = internal unnamed_addr global i8 0, align 1, !dbg !0
@netif_list = common dso_local local_unnamed_addr global %struct.netif* null, align 8, !dbg !221
@.str.6 = private unnamed_addr constant [20 x i8] c"netif already added\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"too many netifs, max. supported number is 255\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"netif_set_ipaddr: invalid netif\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"netif_set_netmask: invalid netif\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"netif_set_gw: invalid netif\00", align 1
@netif_default = common dso_local local_unnamed_addr global %struct.netif* null, align 8, !dbg !223
@.str.11 = private unnamed_addr constant [28 x i8] c"netif_set_up: invalid netif\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"netif_set_down: invalid netif\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"netif_set_link_up: invalid netif\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"netif_set_link_down: invalid netif\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"netif_ip6_addr_set: invalid netif\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"netif_ip6_addr_set: invalid addr6\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"netif != NULL\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"invalid index\00", align 1
@.str.19 = private unnamed_addr constant [40 x i8] c"netif_get_ip6_addr_match: invalid netif\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"netif_get_ip6_addr_match: invalid ip6addr\00", align 1
@.str.21 = private unnamed_addr constant [50 x i8] c"netif_create_ip6_linklocal_address: invalid netif\00", align 1
@.str.22 = private unnamed_addr constant [37 x i8] c"netif_add_ip6_address: invalid netif\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"netif_add_ip6_address: invalid ip6addr\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"callback must be != NULL\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"fn must be != NULL\00", align 1
@ext_callback = internal unnamed_addr global %struct.netif_ext_callback* null, align 8, !dbg !87
@.str.27 = private unnamed_addr constant [22 x i8] c"netif must be != NULL\00", align 1
@uk_pr_crit.__str = internal global [8 x i8] c"liblwip\00", section ".data_shared", align 1, !dbg !225
@uk_pr_crit.__str.28 = internal global [8 x i8] c"netif.c\00", section ".data_shared", align 1, !dbg !249
@.str.29 = private unnamed_addr constant [16 x i8] c"invalid pointer\00", align 1

; Function Attrs: norecurse noredzone nounwind readnone
define dso_local void @netif_init() local_unnamed_addr #0 !dbg !255 {
  ret void, !dbg !259
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @netif_input(%struct.pbuf*, %struct.netif*) local_unnamed_addr #1 !dbg !260 {
  %3 = icmp eq %struct.pbuf* %0, null, !dbg !266
  br i1 %3, label %4, label %5, !dbg !269

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0)) #10, !dbg !270
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !273
  tail call void @ukplat_terminate(i32 3) #11, !dbg !273
  unreachable, !dbg !273

; <label>:5:                                      ; preds = %2
  %6 = icmp eq %struct.netif* %1, null, !dbg !277
  br i1 %6, label %7, label %8, !dbg !280

; <label>:7:                                      ; preds = %5
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0)) #10, !dbg !281
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !284
  tail call void @ukplat_terminate(i32 3) #11, !dbg !284
  unreachable, !dbg !284

; <label>:8:                                      ; preds = %5
  %9 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 21, !dbg !288
  %10 = load i8, i8* %9, align 1, !dbg !288, !tbaa !290
  %11 = and i8 %10, 24, !dbg !297
  %12 = icmp eq i8 %11, 0, !dbg !297
  br i1 %12, label %15, label %13, !dbg !298

; <label>:13:                                     ; preds = %8
  %14 = tail call signext i8 @ethernet_input(%struct.pbuf* nonnull %0, %struct.netif* nonnull %1) #12, !dbg !299
  br label %17, !dbg !301

; <label>:15:                                     ; preds = %8
  %16 = tail call signext i8 @ip_input(%struct.pbuf* nonnull %0, %struct.netif* nonnull %1) #12, !dbg !302
  br label %17, !dbg !303

; <label>:17:                                     ; preds = %15, %13
  %18 = phi i8 [ %14, %13 ], [ %16, %15 ], !dbg !304
  ret i8 %18, !dbg !305
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8*, ...) unnamed_addr #3 !dbg !227 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !307
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #9, !dbg !307
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !309
  call void @llvm.va_start(i8* nonnull %3), !dbg !309
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str.28, i64 0, i64 0), i32 198, i8* %0, %struct.__va_list_tag* nonnull %4) #12, !dbg !310
  call void @llvm.va_end(i8* nonnull %3), !dbg !313
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #9, !dbg !314
  ret void, !dbg !314
}

; Function Attrs: noredzone noreturn
declare dso_local void @ukplat_terminate(i32) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local signext i8 @ethernet_input(%struct.pbuf*, %struct.netif*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local signext i8 @ip_input(%struct.pbuf*, %struct.netif*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local %struct.netif* @netif_add_noaddr(%struct.netif*, i8*, i8 (%struct.netif*)*, i8 (%struct.pbuf*, %struct.netif*)*) local_unnamed_addr #1 !dbg !315 {
  %5 = tail call %struct.netif* @netif_add(%struct.netif* %0, %struct.ip4_addr* null, %struct.ip4_addr* null, %struct.ip4_addr* null, i8* %1, i8 (%struct.netif*)* %2, i8 (%struct.pbuf*, %struct.netif*)* %3) #10, !dbg !331
  ret %struct.netif* %5, !dbg !332
}

; Function Attrs: noredzone nounwind
define dso_local %struct.netif* @netif_add(%struct.netif*, %struct.ip4_addr* readonly, %struct.ip4_addr* readonly, %struct.ip4_addr* readonly, i8*, i8 (%struct.netif*)*, i8 (%struct.pbuf*, %struct.netif*)*) local_unnamed_addr #1 !dbg !333 {
  %8 = icmp eq %struct.netif* %0, null, !dbg !355
  br i1 %8, label %9, label %10, !dbg !358

; <label>:9:                                      ; preds = %7
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0)) #10, !dbg !359
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !362
  tail call void @ukplat_terminate(i32 3) #11, !dbg !362
  unreachable, !dbg !362

; <label>:10:                                     ; preds = %7
  %11 = icmp eq i8 (%struct.netif*)* %5, null, !dbg !366
  br i1 %11, label %12, label %13, !dbg !369

; <label>:12:                                     ; preds = %10
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !370
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !373
  tail call void @ukplat_terminate(i32 3) #11, !dbg !373
  unreachable, !dbg !373

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.ip4_addr* %1, null, !dbg !377
  %15 = icmp eq %struct.ip4_addr* %2, null, !dbg !379
  %16 = icmp eq %struct.ip4_addr* %3, null, !dbg !381
  %17 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 0, !dbg !383
  %18 = bitcast i32* %17 to <4 x i32>*, !dbg !383
  store <4 x i32> zeroinitializer, <4 x i32>* %18, align 8, !dbg !383, !tbaa !386
  %19 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 1, i32 0, i32 0, i32 1, !dbg !383
  store i8 0, i8* %19, align 8, !dbg !383, !tbaa !386
  %20 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 1, i32 1, !dbg !387
  store i8 0, i8* %20, align 4, !dbg !387, !tbaa !392
  %21 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 2, i32 0, i32 0, i32 0, i64 0, !dbg !393
  %22 = bitcast i32* %21 to <4 x i32>*, !dbg !393
  store <4 x i32> zeroinitializer, <4 x i32>* %22, align 8, !dbg !393, !tbaa !386
  %23 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 2, i32 0, i32 0, i32 1, !dbg !393
  store i8 0, i8* %23, align 8, !dbg !393, !tbaa !386
  %24 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 2, i32 1, !dbg !396
  store i8 0, i8* %24, align 4, !dbg !396, !tbaa !401
  %25 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 3, i32 0, i32 0, i32 0, i64 0, !dbg !402
  %26 = bitcast i32* %25 to <4 x i32>*, !dbg !402
  store <4 x i32> zeroinitializer, <4 x i32>* %26, align 8, !dbg !402, !tbaa !386
  %27 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 3, i32 0, i32 0, i32 1, !dbg !402
  store i8 0, i8* %27, align 8, !dbg !402, !tbaa !386
  %28 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 3, i32 1, !dbg !405
  store i8 0, i8* %28, align 4, !dbg !405, !tbaa !410
  %29 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 9, !dbg !411
  store i8 (%struct.netif*, %struct.pbuf*, %struct.ip4_addr*)* @netif_null_output_ip4, i8 (%struct.netif*, %struct.pbuf*, %struct.ip4_addr*)** %29, align 8, !dbg !412, !tbaa !413
  %30 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !415
  %31 = bitcast i32* %30 to <4 x i32>*, !dbg !415
  store <4 x i32> zeroinitializer, <4 x i32>* %31, align 8, !dbg !415, !tbaa !386
  %32 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, i32 1, !dbg !415
  store i8 0, i8* %32, align 8, !dbg !415, !tbaa !386
  %33 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 1, !dbg !421
  store i8 6, i8* %33, align 4, !dbg !421, !tbaa !426
  %34 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 0, !dbg !427
  store i8 0, i8* %34, align 1, !dbg !428, !tbaa !386
  %35 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 6, i64 0, !dbg !429
  store i32 0, i32* %35, align 4, !dbg !430, !tbaa !431
  %36 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 7, i64 0, !dbg !433
  store i32 0, i32* %36, align 4, !dbg !434, !tbaa !431
  %37 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 0, !dbg !415
  %38 = bitcast i32* %37 to <4 x i32>*, !dbg !415
  store <4 x i32> zeroinitializer, <4 x i32>* %38, align 8, !dbg !415, !tbaa !386
  %39 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 1, i32 0, i32 0, i32 1, !dbg !415
  store i8 0, i8* %39, align 8, !dbg !415, !tbaa !386
  %40 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 1, i32 1, !dbg !421
  store i8 6, i8* %40, align 4, !dbg !421, !tbaa !426
  %41 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 1, !dbg !427
  store i8 0, i8* %41, align 1, !dbg !428, !tbaa !386
  %42 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 6, i64 1, !dbg !429
  store i32 0, i32* %42, align 4, !dbg !430, !tbaa !431
  %43 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 7, i64 1, !dbg !433
  store i32 0, i32* %43, align 4, !dbg !434, !tbaa !431
  %44 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 0, !dbg !415
  %45 = bitcast i32* %44 to <4 x i32>*, !dbg !415
  store <4 x i32> zeroinitializer, <4 x i32>* %45, align 8, !dbg !415, !tbaa !386
  %46 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 2, i32 0, i32 0, i32 1, !dbg !415
  store i8 0, i8* %46, align 8, !dbg !415, !tbaa !386
  %47 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 2, i32 1, !dbg !421
  store i8 6, i8* %47, align 4, !dbg !421, !tbaa !426
  %48 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 2, !dbg !427
  store i8 0, i8* %48, align 1, !dbg !428, !tbaa !386
  %49 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 6, i64 2, !dbg !429
  store i32 0, i32* %49, align 4, !dbg !430, !tbaa !431
  %50 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 7, i64 2, !dbg !433
  store i32 0, i32* %50, align 4, !dbg !434, !tbaa !431
  %51 = select i1 %14, %struct.ip4_addr* bitcast (%struct.ip_addr* @ip_addr_any to %struct.ip4_addr*), %struct.ip4_addr* %1, !dbg !435
  %52 = select i1 %15, %struct.ip4_addr* bitcast (%struct.ip_addr* @ip_addr_any to %struct.ip4_addr*), %struct.ip4_addr* %2, !dbg !436
  %53 = select i1 %16, %struct.ip4_addr* bitcast (%struct.ip_addr* @ip_addr_any to %struct.ip4_addr*), %struct.ip4_addr* %3, !dbg !437
  %54 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 11, !dbg !438
  store i8 (%struct.netif*, %struct.pbuf*, %struct.ip6_addr*)* @netif_null_output_ip6, i8 (%struct.netif*, %struct.pbuf*, %struct.ip6_addr*)** %54, align 8, !dbg !439, !tbaa !440
  %55 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 16, !dbg !441
  store i16 -1, i16* %55, align 8, !dbg !441, !tbaa !443
  %56 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 17, !dbg !444
  store i16 0, i16* %56, align 2, !dbg !445, !tbaa !446
  %57 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 21, !dbg !447
  store i8 0, i8* %57, align 1, !dbg !448, !tbaa !290
  %58 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 15, i64 0, !dbg !449
  %59 = bitcast i8** %58 to i8*, !dbg !449
  %60 = tail call i8* @memset(i8* nonnull %59, i32 0, i64 8) #12, !dbg !450
  %61 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 24, !dbg !451
  store i8 0, i8* %61, align 1, !dbg !452, !tbaa !453
  tail call void @nd6_restart_netif(%struct.netif* nonnull %0) #12, !dbg !454
  %62 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 12, !dbg !455
  store void (%struct.netif*)* null, void (%struct.netif*)** %62, align 8, !dbg !456, !tbaa !457
  %63 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 26, !dbg !458
  store i8 (%struct.netif*, %struct.ip6_addr*, i32)* null, i8 (%struct.netif*, %struct.ip6_addr*, i32)** %63, align 8, !dbg !459, !tbaa !460
  %64 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 14, !dbg !461
  store i8* %4, i8** %64, align 8, !dbg !462, !tbaa !463
  %65 = load i8, i8* @netif_num, align 1, !dbg !464, !tbaa !386
  %66 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 23, !dbg !465
  store i8 %65, i8* %66, align 8, !dbg !466, !tbaa !467
  %67 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 8, !dbg !468
  %68 = bitcast {}** %67 to i8 (%struct.pbuf*, %struct.netif*)**, !dbg !468
  store i8 (%struct.pbuf*, %struct.netif*)* %6, i8 (%struct.pbuf*, %struct.netif*)** %68, align 8, !dbg !469, !tbaa !470
  tail call void @netif_set_addr(%struct.netif* nonnull %0, %struct.ip4_addr* %51, %struct.ip4_addr* %52, %struct.ip4_addr* %53) #10, !dbg !471
  %69 = tail call signext i8 %5(%struct.netif* nonnull %0) #12, !dbg !472
  %70 = icmp eq i8 %69, 0, !dbg !474
  br i1 %70, label %71, label %117, !dbg !475

; <label>:71:                                     ; preds = %13
  %72 = load i16, i16* %56, align 2, !dbg !476, !tbaa !446
  %73 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 18, !dbg !477
  store i16 %72, i16* %73, align 4, !dbg !478, !tbaa !479
  %74 = load i8, i8* %66, align 8, !dbg !480, !tbaa !467
  %75 = load %struct.netif*, %struct.netif** @netif_list, align 8, !tbaa !483
  %76 = icmp eq %struct.netif* %75, null
  %77 = ptrtoint %struct.netif* %75 to i64, !dbg !484
  br label %78, !dbg !484

; <label>:78:                                     ; preds = %101, %71
  %79 = phi i8 [ %102, %101 ], [ %74, %71 ], !dbg !480
  %80 = icmp eq i8 %79, -1, !dbg !485
  br i1 %80, label %81, label %82, !dbg !486

; <label>:81:                                     ; preds = %78
  store i8 0, i8* %66, align 8, !dbg !487, !tbaa !467
  br label %82, !dbg !489

; <label>:82:                                     ; preds = %81, %78
  %83 = phi i8 [ 0, %81 ], [ %79, %78 ]
  br i1 %76, label %103, label %88, !dbg !492

; <label>:84:                                     ; preds = %97
  %85 = getelementptr inbounds %struct.netif, %struct.netif* %89, i64 0, i32 0, !dbg !494
  %86 = load %struct.netif*, %struct.netif** %85, align 8, !dbg !496, !tbaa !483
  %87 = icmp eq %struct.netif* %86, null, !dbg !497
  br i1 %87, label %103, label %88, !dbg !492, !llvm.loop !498

; <label>:88:                                     ; preds = %82, %84
  %89 = phi %struct.netif* [ %86, %84 ], [ %75, %82 ]
  %90 = phi i32 [ %94, %84 ], [ 0, %82 ]
  %91 = icmp eq %struct.netif* %89, %0, !dbg !500
  br i1 %91, label %92, label %93, !dbg !504

; <label>:92:                                     ; preds = %88
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !505
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !508
  tail call void @ukplat_terminate(i32 3) #11, !dbg !508
  unreachable, !dbg !508

; <label>:93:                                     ; preds = %88
  %94 = add nuw nsw i32 %90, 1, !dbg !512
  %95 = icmp ult i32 %94, 256, !dbg !513
  br i1 %95, label %97, label %96, !dbg !516

; <label>:96:                                     ; preds = %93
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !517
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !520
  tail call void @ukplat_terminate(i32 3) #11, !dbg !520
  unreachable, !dbg !520

; <label>:97:                                     ; preds = %93
  %98 = getelementptr inbounds %struct.netif, %struct.netif* %89, i64 0, i32 23, !dbg !524
  %99 = load i8, i8* %98, align 8, !dbg !524, !tbaa !467
  %100 = icmp eq i8 %99, %83, !dbg !526
  br i1 %100, label %101, label %84, !dbg !527

; <label>:101:                                    ; preds = %97
  %102 = add i8 %83, 1, !dbg !528
  store i8 %102, i8* %66, align 8, !dbg !528, !tbaa !467
  br label %78, !dbg !530

; <label>:103:                                    ; preds = %82, %84
  %104 = icmp eq i8 %83, -2, !dbg !531
  %105 = add i8 %83, 1, !dbg !533
  %106 = select i1 %104, i8 0, i8 %105, !dbg !535
  store i8 %106, i8* @netif_num, align 1, !dbg !536, !tbaa !386
  %107 = bitcast %struct.netif* %0 to i64*, !dbg !538
  store i64 %77, i64* %107, align 8, !dbg !538, !tbaa !539
  store %struct.netif* %0, %struct.netif** @netif_list, align 8, !dbg !540, !tbaa !483
  %108 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** @ext_callback, align 8, !dbg !552, !tbaa !483
  %109 = icmp eq %struct.netif_ext_callback* %108, null, !dbg !554
  br i1 %109, label %117, label %110, !dbg !555

; <label>:110:                                    ; preds = %103, %110
  %111 = phi %struct.netif_ext_callback* [ %115, %110 ], [ %108, %103 ]
  %112 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %111, i64 0, i32 0, !dbg !556
  %113 = load void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)*, void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)** %112, align 8, !dbg !556, !tbaa !557
  tail call void %113(%struct.netif* nonnull %0, i16 zeroext 1, %union.netif_ext_callback_args_t* null) #12, !dbg !559
  %114 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %111, i64 0, i32 1, !dbg !560
  %115 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** %114, align 8, !dbg !552, !tbaa !483
  %116 = icmp eq %struct.netif_ext_callback* %115, null, !dbg !554
  br i1 %116, label %117, label %110, !dbg !555, !llvm.loop !561

; <label>:117:                                    ; preds = %110, %103, %13
  %118 = phi %struct.netif* [ null, %13 ], [ %0, %103 ], [ %0, %110 ], !dbg !564
  ret %struct.netif* %118, !dbg !565
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #6

; Function Attrs: noredzone nounwind readnone
define internal signext i8 @netif_null_output_ip4(%struct.netif* nocapture readnone, %struct.pbuf* nocapture readnone, %struct.ip4_addr* nocapture readnone) #7 !dbg !566 {
  ret i8 -12, !dbg !574
}

; Function Attrs: noredzone nounwind readnone
define internal signext i8 @netif_null_output_ip6(%struct.netif* nocapture readnone, %struct.pbuf* nocapture readnone, %struct.ip6_addr* nocapture readnone) #7 !dbg !575 {
  ret i8 -12, !dbg !583
}

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @nd6_restart_netif(%struct.netif*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local void @netif_set_addr(%struct.netif*, %struct.ip4_addr* readonly, %struct.ip4_addr* readonly, %struct.ip4_addr* readonly) local_unnamed_addr #1 !dbg !584 {
  %5 = alloca %union.netif_ext_callback_args_t, align 8
  %6 = alloca %struct.ip_addr, align 4
  %7 = alloca %struct.ip_addr, align 4
  %8 = alloca %struct.ip_addr, align 4
  %9 = bitcast %union.netif_ext_callback_args_t* %5 to i8*, !dbg !606
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %9) #9, !dbg !606
  %10 = bitcast %struct.ip_addr* %6 to i8*, !dbg !607
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %10) #9, !dbg !607
  %11 = bitcast %struct.ip_addr* %7 to i8*, !dbg !608
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %11) #9, !dbg !608
  %12 = bitcast %struct.ip_addr* %8 to i8*, !dbg !611
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %12) #9, !dbg !611
  %13 = icmp eq %struct.ip4_addr* %1, null, !dbg !612
  %14 = select i1 %13, %struct.ip4_addr* bitcast (%struct.ip_addr* @ip_addr_any to %struct.ip4_addr*), %struct.ip4_addr* %1, !dbg !614
  %15 = icmp eq %struct.ip4_addr* %2, null, !dbg !615
  %16 = select i1 %15, %struct.ip4_addr* bitcast (%struct.ip_addr* @ip_addr_any to %struct.ip4_addr*), %struct.ip4_addr* %2, !dbg !617
  %17 = icmp eq %struct.ip4_addr* %3, null, !dbg !618
  %18 = select i1 %17, %struct.ip4_addr* bitcast (%struct.ip_addr* @ip_addr_any to %struct.ip4_addr*), %struct.ip4_addr* %3, !dbg !620
  %19 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %14, i64 0, i32 0, !dbg !621
  %20 = load i32, i32* %19, align 4, !dbg !621, !tbaa !622
  %21 = icmp eq i32 %20, 0, !dbg !621
  br i1 %21, label %22, label %27, !dbg !624

; <label>:22:                                     ; preds = %4
  %23 = call fastcc i32 @netif_do_set_ipaddr(%struct.netif* %0, %struct.ip4_addr* %14, %struct.ip_addr* nonnull %8) #10, !dbg !626
  %24 = icmp eq i32 %23, 0, !dbg !626
  br i1 %24, label %27, label %25, !dbg !630

; <label>:25:                                     ; preds = %22
  %26 = getelementptr inbounds %union.netif_ext_callback_args_t, %union.netif_ext_callback_args_t* %5, i64 0, i32 0, i32 0, !dbg !631
  store %struct.ip_addr* %8, %struct.ip_addr** %26, align 8, !dbg !633, !tbaa !386
  br label %27, !dbg !634

; <label>:27:                                     ; preds = %22, %25, %4
  %28 = phi i16 [ 16, %25 ], [ 0, %22 ], [ 0, %4 ], !dbg !635
  %29 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %16, i64 0, i32 0, !dbg !649
  %30 = load i32, i32* %29, align 4, !dbg !649, !tbaa !622
  %31 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 2, i32 0, i32 0, i32 0, i64 0, !dbg !649
  %32 = load i32, i32* %31, align 8, !dbg !649, !tbaa !386
  %33 = icmp eq i32 %30, %32, !dbg !649
  br i1 %33, label %60, label %34, !dbg !651

; <label>:34:                                     ; preds = %27
  %35 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 2, i32 1, !dbg !652
  %36 = load i8, i8* %35, align 4, !dbg !652, !tbaa !426
  %37 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %6, i64 0, i32 1, !dbg !652
  store i8 %36, i8* %37, align 4, !dbg !652, !tbaa !426
  %38 = icmp eq i8 %36, 6, !dbg !656
  %39 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %6, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !658
  store i32 %32, i32* %39, align 4, !dbg !658, !tbaa !386
  br i1 %38, label %40, label %49, !dbg !661

; <label>:40:                                     ; preds = %34
  %41 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 2, i32 0, i32 0, i32 0, i64 1, !dbg !658
  %42 = load i32, i32* %41, align 4, !dbg !658, !tbaa !386
  %43 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 2, i32 0, i32 0, i32 0, i64 2, !dbg !658
  %44 = load i32, i32* %43, align 8, !dbg !658, !tbaa !386
  %45 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 2, i32 0, i32 0, i32 0, i64 3, !dbg !658
  %46 = load i32, i32* %45, align 4, !dbg !658, !tbaa !386
  %47 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 2, i32 0, i32 0, i32 1, !dbg !658
  %48 = load i8, i8* %47, align 8, !dbg !658, !tbaa !386
  br label %49, !dbg !662

; <label>:49:                                     ; preds = %34, %40
  %50 = phi i32 [ %46, %40 ], [ 0, %34 ]
  %51 = phi i32 [ %44, %40 ], [ 0, %34 ]
  %52 = phi i32 [ %42, %40 ], [ 0, %34 ]
  %53 = phi i8 [ %48, %40 ], [ 0, %34 ]
  %54 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %6, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !663
  store i32 %50, i32* %54, align 4, !dbg !663
  %55 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %6, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !663
  store i32 %51, i32* %55, align 4, !dbg !663
  %56 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %6, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !663
  store i32 %52, i32* %56, align 4, !dbg !663
  %57 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %6, i64 0, i32 0, i32 0, i32 1, !dbg !658
  store i8 %53, i8* %57, align 4, !dbg !658
  store i32 %30, i32* %31, align 8, !dbg !666, !tbaa !386
  store i8 0, i8* %35, align 4, !dbg !667, !tbaa !401
  %58 = or i16 %28, 64, !dbg !669
  %59 = getelementptr inbounds %union.netif_ext_callback_args_t, %union.netif_ext_callback_args_t* %5, i64 0, i32 0, i32 1, !dbg !671
  store %struct.ip_addr* %6, %struct.ip_addr** %59, align 8, !dbg !672, !tbaa !386
  br label %60, !dbg !673

; <label>:60:                                     ; preds = %27, %49
  %61 = phi i16 [ %58, %49 ], [ %28, %27 ], !dbg !674
  %62 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %18, i64 0, i32 0, !dbg !686
  %63 = load i32, i32* %62, align 4, !dbg !686, !tbaa !622
  %64 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 3, i32 0, i32 0, i32 0, i64 0, !dbg !686
  %65 = load i32, i32* %64, align 8, !dbg !686, !tbaa !386
  %66 = icmp eq i32 %63, %65, !dbg !686
  br i1 %66, label %93, label %67, !dbg !688

; <label>:67:                                     ; preds = %60
  %68 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 3, i32 1, !dbg !689
  %69 = load i8, i8* %68, align 4, !dbg !689, !tbaa !426
  %70 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %7, i64 0, i32 1, !dbg !689
  store i8 %69, i8* %70, align 4, !dbg !689, !tbaa !426
  %71 = icmp eq i8 %69, 6, !dbg !693
  %72 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %7, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !695
  store i32 %65, i32* %72, align 4, !dbg !695, !tbaa !386
  br i1 %71, label %73, label %82, !dbg !698

; <label>:73:                                     ; preds = %67
  %74 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 3, i32 0, i32 0, i32 0, i64 1, !dbg !695
  %75 = load i32, i32* %74, align 4, !dbg !695, !tbaa !386
  %76 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 3, i32 0, i32 0, i32 0, i64 2, !dbg !695
  %77 = load i32, i32* %76, align 8, !dbg !695, !tbaa !386
  %78 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 3, i32 0, i32 0, i32 0, i64 3, !dbg !695
  %79 = load i32, i32* %78, align 4, !dbg !695, !tbaa !386
  %80 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 3, i32 0, i32 0, i32 1, !dbg !695
  %81 = load i8, i8* %80, align 8, !dbg !695, !tbaa !386
  br label %82, !dbg !699

; <label>:82:                                     ; preds = %67, %73
  %83 = phi i32 [ %79, %73 ], [ 0, %67 ]
  %84 = phi i32 [ %77, %73 ], [ 0, %67 ]
  %85 = phi i32 [ %75, %73 ], [ 0, %67 ]
  %86 = phi i8 [ %81, %73 ], [ 0, %67 ]
  %87 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %7, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !700
  store i32 %83, i32* %87, align 4, !dbg !700
  %88 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %7, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !700
  store i32 %84, i32* %88, align 4, !dbg !700
  %89 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %7, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !700
  store i32 %85, i32* %89, align 4, !dbg !700
  %90 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %7, i64 0, i32 0, i32 0, i32 1, !dbg !695
  store i8 %86, i8* %90, align 4, !dbg !695
  store i32 %63, i32* %64, align 8, !dbg !703, !tbaa !386
  store i8 0, i8* %68, align 4, !dbg !704, !tbaa !410
  %91 = or i16 %61, 32, !dbg !706
  %92 = getelementptr inbounds %union.netif_ext_callback_args_t, %union.netif_ext_callback_args_t* %5, i64 0, i32 0, i32 2, !dbg !708
  store %struct.ip_addr* %7, %struct.ip_addr** %92, align 8, !dbg !709, !tbaa !386
  br label %93, !dbg !710

; <label>:93:                                     ; preds = %60, %82
  %94 = phi i16 [ %91, %82 ], [ %61, %60 ], !dbg !711
  br i1 %21, label %101, label %95, !dbg !712

; <label>:95:                                     ; preds = %93
  %96 = call fastcc i32 @netif_do_set_ipaddr(%struct.netif* nonnull %0, %struct.ip4_addr* %14, %struct.ip_addr* nonnull %8) #10, !dbg !713
  %97 = icmp eq i32 %96, 0, !dbg !713
  br i1 %97, label %101, label %98, !dbg !717

; <label>:98:                                     ; preds = %95
  %99 = or i16 %94, 16, !dbg !718
  %100 = getelementptr inbounds %union.netif_ext_callback_args_t, %union.netif_ext_callback_args_t* %5, i64 0, i32 0, i32 0, !dbg !720
  store %struct.ip_addr* %8, %struct.ip_addr** %100, align 8, !dbg !721, !tbaa !386
  br label %103, !dbg !722

; <label>:101:                                    ; preds = %95, %93
  %102 = icmp eq i16 %94, 0, !dbg !723
  br i1 %102, label %115, label %103, !dbg !722

; <label>:103:                                    ; preds = %101, %98
  %104 = phi i16 [ %99, %98 ], [ %94, %101 ]
  %105 = or i16 %104, 128, !dbg !725
  %106 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** @ext_callback, align 8, !dbg !733, !tbaa !483
  %107 = icmp eq %struct.netif_ext_callback* %106, null, !dbg !734
  br i1 %107, label %115, label %108, !dbg !735

; <label>:108:                                    ; preds = %103, %108
  %109 = phi %struct.netif_ext_callback* [ %113, %108 ], [ %106, %103 ]
  %110 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %109, i64 0, i32 0, !dbg !736
  %111 = load void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)*, void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)** %110, align 8, !dbg !736, !tbaa !557
  call void %111(%struct.netif* nonnull %0, i16 zeroext %105, %union.netif_ext_callback_args_t* nonnull %5) #12, !dbg !737
  %112 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %109, i64 0, i32 1, !dbg !738
  %113 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** %112, align 8, !dbg !733, !tbaa !483
  %114 = icmp eq %struct.netif_ext_callback* %113, null, !dbg !734
  br i1 %114, label %115, label %108, !dbg !735, !llvm.loop !561

; <label>:115:                                    ; preds = %108, %103, %101
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %12) #9, !dbg !739
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %11) #9, !dbg !739
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %10) #9, !dbg !739
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %9) #9, !dbg !739
  ret void, !dbg !739
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #6

; Function Attrs: noredzone nounwind
define dso_local void @netif_invoke_ext_callback(%struct.netif*, i16 zeroext, %union.netif_ext_callback_args_t*) local_unnamed_addr #1 !dbg !542 {
  %4 = icmp eq %struct.netif* %0, null, !dbg !744
  br i1 %4, label %8, label %5, !dbg !747

; <label>:5:                                      ; preds = %3
  %6 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** @ext_callback, align 8, !dbg !748, !tbaa !483
  %7 = icmp eq %struct.netif_ext_callback* %6, null, !dbg !749
  br i1 %7, label %16, label %9, !dbg !562

; <label>:8:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i64 0, i64 0)) #10, !dbg !750
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !753
  tail call void @ukplat_terminate(i32 3) #11, !dbg !753
  unreachable, !dbg !753

; <label>:9:                                      ; preds = %5, %9
  %10 = phi %struct.netif_ext_callback* [ %14, %9 ], [ %6, %5 ]
  %11 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %10, i64 0, i32 0, !dbg !757
  %12 = load void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)*, void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)** %11, align 8, !dbg !757, !tbaa !557
  tail call void %12(%struct.netif* nonnull %0, i16 zeroext %1, %union.netif_ext_callback_args_t* %2) #12, !dbg !758
  %13 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %10, i64 0, i32 1, !dbg !759
  %14 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** %13, align 8, !dbg !748, !tbaa !483
  %15 = icmp eq %struct.netif_ext_callback* %14, null, !dbg !749
  br i1 %15, label %16, label %9, !dbg !562, !llvm.loop !561

; <label>:16:                                     ; preds = %9, %5
  ret void, !dbg !760
}

; Function Attrs: noredzone nounwind
define dso_local void @netif_set_ipaddr(%struct.netif*, %struct.ip4_addr* readonly) local_unnamed_addr #1 !dbg !761 {
  %3 = alloca %struct.ip_addr, align 4
  %4 = alloca %union.netif_ext_callback_args_t, align 8
  %5 = bitcast %struct.ip_addr* %3 to i8*, !dbg !773
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #9, !dbg !773
  %6 = icmp eq %struct.netif* %0, null, !dbg !774
  br i1 %6, label %7, label %8, !dbg !777

; <label>:7:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !778
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !781
  tail call void @ukplat_terminate(i32 3) #11, !dbg !781
  unreachable, !dbg !781

; <label>:8:                                      ; preds = %2
  %9 = icmp eq %struct.ip4_addr* %1, null, !dbg !785
  %10 = select i1 %9, %struct.ip4_addr* bitcast (%struct.ip_addr* @ip_addr_any to %struct.ip4_addr*), %struct.ip4_addr* %1, !dbg !787
  %11 = call fastcc i32 @netif_do_set_ipaddr(%struct.netif* nonnull %0, %struct.ip4_addr* %10, %struct.ip_addr* nonnull %3) #10, !dbg !789
  %12 = icmp eq i32 %11, 0, !dbg !789
  br i1 %12, label %26, label %13, !dbg !790

; <label>:13:                                     ; preds = %8
  %14 = bitcast %union.netif_ext_callback_args_t* %4 to i8*, !dbg !791
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #9, !dbg !791
  %15 = getelementptr inbounds %union.netif_ext_callback_args_t, %union.netif_ext_callback_args_t* %4, i64 0, i32 0, i32 0, !dbg !792
  store %struct.ip_addr* %3, %struct.ip_addr** %15, align 8, !dbg !793, !tbaa !386
  %16 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** @ext_callback, align 8, !dbg !800, !tbaa !483
  %17 = icmp eq %struct.netif_ext_callback* %16, null, !dbg !801
  br i1 %17, label %25, label %18, !dbg !802

; <label>:18:                                     ; preds = %13, %18
  %19 = phi %struct.netif_ext_callback* [ %23, %18 ], [ %16, %13 ]
  %20 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %19, i64 0, i32 0, !dbg !803
  %21 = load void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)*, void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)** %20, align 8, !dbg !803, !tbaa !557
  call void %21(%struct.netif* nonnull %0, i16 zeroext 16, %union.netif_ext_callback_args_t* nonnull %4) #12, !dbg !804
  %22 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %19, i64 0, i32 1, !dbg !805
  %23 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** %22, align 8, !dbg !800, !tbaa !483
  %24 = icmp eq %struct.netif_ext_callback* %23, null, !dbg !801
  br i1 %24, label %25, label %18, !dbg !802, !llvm.loop !561

; <label>:25:                                     ; preds = %18, %13
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %14) #9, !dbg !806
  br label %26, !dbg !807

; <label>:26:                                     ; preds = %8, %25
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #9, !dbg !808
  ret void, !dbg !808
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @netif_do_set_ipaddr(%struct.netif*, %struct.ip4_addr* readonly, %struct.ip_addr*) unnamed_addr #1 !dbg !809 {
  %4 = alloca %struct.ip_addr, align 4
  %5 = icmp eq %struct.ip4_addr* %1, null, !dbg !820
  br i1 %5, label %6, label %7, !dbg !823

; <label>:6:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i64 0, i64 0)) #10, !dbg !824
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !827
  tail call void @ukplat_terminate(i32 3) #11, !dbg !827
  unreachable, !dbg !827

; <label>:7:                                      ; preds = %3
  %8 = icmp eq %struct.ip_addr* %2, null, !dbg !831
  br i1 %8, label %9, label %10, !dbg !834

; <label>:9:                                      ; preds = %7
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i64 0, i64 0)) #10, !dbg !835
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !838
  tail call void @ukplat_terminate(i32 3) #11, !dbg !838
  unreachable, !dbg !838

; <label>:10:                                     ; preds = %7
  %11 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %1, i64 0, i32 0, !dbg !842
  %12 = load i32, i32* %11, align 4, !dbg !842, !tbaa !622
  %13 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 0, !dbg !842
  %14 = load i32, i32* %13, align 8, !dbg !842, !tbaa !386
  %15 = icmp eq i32 %12, %14, !dbg !842
  br i1 %15, label %67, label %16, !dbg !843

; <label>:16:                                     ; preds = %10
  %17 = bitcast %struct.ip_addr* %4 to i8*, !dbg !844
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %17) #9, !dbg !844
  %18 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !845
  store i32 %12, i32* %18, align 4, !dbg !845, !tbaa !431
  %19 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 1, !dbg !846
  store i8 0, i8* %19, align 4, !dbg !846, !tbaa !426
  %20 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 1, i32 1, !dbg !848
  %21 = load i8, i8* %20, align 4, !dbg !848, !tbaa !426
  %22 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 1, !dbg !848
  store i8 %21, i8* %22, align 4, !dbg !848, !tbaa !426
  %23 = load i8, i8* %20, align 4, !dbg !851, !tbaa !426
  %24 = icmp eq i8 %23, 6, !dbg !851
  %25 = load i32, i32* %13, align 8, !dbg !853, !tbaa !386
  %26 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !853
  store i32 %25, i32* %26, align 4, !dbg !853, !tbaa !386
  br i1 %24, label %27, label %39, !dbg !856

; <label>:27:                                     ; preds = %16
  %28 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 1, !dbg !853
  %29 = load i32, i32* %28, align 4, !dbg !853, !tbaa !386
  %30 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !853
  store i32 %29, i32* %30, align 4, !dbg !853, !tbaa !386
  %31 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 2, !dbg !853
  %32 = load i32, i32* %31, align 8, !dbg !853, !tbaa !386
  %33 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !853
  store i32 %32, i32* %33, align 4, !dbg !853, !tbaa !386
  %34 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 3, !dbg !853
  %35 = load i32, i32* %34, align 4, !dbg !853, !tbaa !386
  %36 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !853
  store i32 %35, i32* %36, align 4, !dbg !853, !tbaa !386
  %37 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 1, i32 0, i32 0, i32 1, !dbg !853
  %38 = load i8, i8* %37, align 8, !dbg !853, !tbaa !386
  br label %43, !dbg !857

; <label>:39:                                     ; preds = %16
  %40 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !858
  store i32 0, i32* %40, align 4, !dbg !858, !tbaa !386
  %41 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !858
  store i32 0, i32* %41, align 4, !dbg !858, !tbaa !386
  %42 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !858
  store i32 0, i32* %42, align 4, !dbg !858, !tbaa !386
  br label %43

; <label>:43:                                     ; preds = %27, %39
  %44 = phi i8 [ %38, %27 ], [ 0, %39 ]
  %45 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 0, i32 0, i32 1, !dbg !853
  store i8 %44, i8* %45, align 4, !dbg !853
  call void @tcp_netif_ip_addr_changed(%struct.ip_addr* nonnull %2, %struct.ip_addr* nonnull %4) #12, !dbg !871
  call void @udp_netif_ip_addr_changed(%struct.ip_addr* nonnull %2, %struct.ip_addr* nonnull %4) #12, !dbg !872
  %46 = load i32, i32* %11, align 4, !dbg !873, !tbaa !622
  store i32 %46, i32* %13, align 8, !dbg !873, !tbaa !386
  store i8 0, i8* %20, align 4, !dbg !874, !tbaa !392
  %47 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 21, !dbg !885
  %48 = load i8, i8* %47, align 1, !dbg !885, !tbaa !290
  %49 = zext i8 %48 to i32, !dbg !887
  %50 = and i32 %49, 5, !dbg !888
  %51 = icmp eq i32 %50, 5, !dbg !888
  br i1 %51, label %52, label %61, !dbg !888

; <label>:52:                                     ; preds = %43
  %53 = icmp eq i32 %46, 0, !dbg !889
  %54 = and i32 %49, 8, !dbg !891
  %55 = icmp eq i32 %54, 0, !dbg !891
  %56 = or i1 %55, %53, !dbg !894
  br i1 %56, label %61, label %57, !dbg !894

; <label>:57:                                     ; preds = %52
  %58 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 1, i32 0, !dbg !889
  %59 = bitcast %union.anon* %58 to %struct.ip4_addr*, !dbg !889
  %60 = call signext i8 @etharp_request(%struct.netif* nonnull %0, %struct.ip4_addr* nonnull %59) #12, !dbg !895
  br label %61, !dbg !897

; <label>:61:                                     ; preds = %52, %57, %43
  %62 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 12, !dbg !898
  %63 = load void (%struct.netif*)*, void (%struct.netif*)** %62, align 8, !dbg !898, !tbaa !457
  %64 = icmp eq void (%struct.netif*)* %63, null, !dbg !898
  br i1 %64, label %66, label %65, !dbg !901

; <label>:65:                                     ; preds = %61
  call void %63(%struct.netif* nonnull %0) #12, !dbg !902
  br label %66, !dbg !902

; <label>:66:                                     ; preds = %61, %65
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %17) #9, !dbg !904
  br label %67

; <label>:67:                                     ; preds = %10, %66
  %68 = phi i32 [ 1, %66 ], [ 0, %10 ], !dbg !905
  ret i32 %68, !dbg !906
}

; Function Attrs: noredzone nounwind
define dso_local void @netif_set_netmask(%struct.netif*, %struct.ip4_addr* readonly) local_unnamed_addr #1 !dbg !907 {
  %3 = alloca %struct.ip_addr, align 4
  %4 = alloca %union.netif_ext_callback_args_t, align 8
  %5 = bitcast %struct.ip_addr* %3 to i8*, !dbg !918
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #9, !dbg !918
  %6 = icmp eq %struct.netif* %0, null, !dbg !920
  br i1 %6, label %7, label %8, !dbg !923

; <label>:7:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !924
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !927
  tail call void @ukplat_terminate(i32 3) #11, !dbg !927
  unreachable, !dbg !927

; <label>:8:                                      ; preds = %2
  %9 = icmp eq %struct.ip4_addr* %1, null, !dbg !931
  %10 = select i1 %9, %struct.ip4_addr* bitcast (%struct.ip_addr* @ip_addr_any to %struct.ip4_addr*), %struct.ip4_addr* %1, !dbg !933
  %11 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %10, i64 0, i32 0, !dbg !939
  %12 = load i32, i32* %11, align 4, !dbg !939, !tbaa !622
  %13 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 2, i32 0, i32 0, i32 0, i64 0, !dbg !939
  %14 = load i32, i32* %13, align 8, !dbg !939, !tbaa !386
  %15 = icmp eq i32 %12, %14, !dbg !939
  br i1 %15, label %52, label %16, !dbg !940

; <label>:16:                                     ; preds = %8
  %17 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 2, i32 1, !dbg !941
  %18 = load i8, i8* %17, align 4, !dbg !941, !tbaa !426
  %19 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 1, !dbg !941
  store i8 %18, i8* %19, align 4, !dbg !941, !tbaa !426
  %20 = icmp eq i8 %18, 6, !dbg !942
  %21 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !943
  store i32 %14, i32* %21, align 4, !dbg !943, !tbaa !386
  br i1 %20, label %22, label %31, !dbg !944

; <label>:22:                                     ; preds = %16
  %23 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 2, i32 0, i32 0, i32 0, i64 1, !dbg !943
  %24 = load i32, i32* %23, align 4, !dbg !943, !tbaa !386
  %25 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 2, i32 0, i32 0, i32 0, i64 2, !dbg !943
  %26 = load i32, i32* %25, align 8, !dbg !943, !tbaa !386
  %27 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 2, i32 0, i32 0, i32 0, i64 3, !dbg !943
  %28 = load i32, i32* %27, align 4, !dbg !943, !tbaa !386
  %29 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 2, i32 0, i32 0, i32 1, !dbg !943
  %30 = load i8, i8* %29, align 8, !dbg !943, !tbaa !386
  br label %31, !dbg !945

; <label>:31:                                     ; preds = %16, %22
  %32 = phi i32 [ %24, %22 ], [ 0, %16 ]
  %33 = phi i32 [ %26, %22 ], [ 0, %16 ]
  %34 = phi i32 [ %28, %22 ], [ 0, %16 ]
  %35 = phi i8 [ %30, %22 ], [ 0, %16 ]
  %36 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !943
  store i32 %32, i32* %36, align 4, !dbg !943
  %37 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !943
  store i32 %33, i32* %37, align 4, !dbg !943
  %38 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !943
  store i32 %34, i32* %38, align 4, !dbg !943
  %39 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 0, i32 0, i32 1, !dbg !943
  store i8 %35, i8* %39, align 4, !dbg !943
  store i32 %12, i32* %13, align 8, !dbg !946, !tbaa !386
  store i8 0, i8* %17, align 4, !dbg !947, !tbaa !401
  %40 = bitcast %union.netif_ext_callback_args_t* %4 to i8*, !dbg !948
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %40) #9, !dbg !948
  %41 = getelementptr inbounds %union.netif_ext_callback_args_t, %union.netif_ext_callback_args_t* %4, i64 0, i32 0, i32 1, !dbg !949
  store %struct.ip_addr* %3, %struct.ip_addr** %41, align 8, !dbg !950, !tbaa !386
  %42 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** @ext_callback, align 8, !dbg !957, !tbaa !483
  %43 = icmp eq %struct.netif_ext_callback* %42, null, !dbg !958
  br i1 %43, label %51, label %44, !dbg !959

; <label>:44:                                     ; preds = %31, %44
  %45 = phi %struct.netif_ext_callback* [ %49, %44 ], [ %42, %31 ]
  %46 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %45, i64 0, i32 0, !dbg !960
  %47 = load void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)*, void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)** %46, align 8, !dbg !960, !tbaa !557
  call void %47(%struct.netif* nonnull %0, i16 zeroext 64, %union.netif_ext_callback_args_t* nonnull %4) #12, !dbg !961
  %48 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %45, i64 0, i32 1, !dbg !962
  %49 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** %48, align 8, !dbg !957, !tbaa !483
  %50 = icmp eq %struct.netif_ext_callback* %49, null, !dbg !958
  br i1 %50, label %51, label %44, !dbg !959, !llvm.loop !561

; <label>:51:                                     ; preds = %44, %31
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %40) #9, !dbg !963
  br label %52, !dbg !964

; <label>:52:                                     ; preds = %8, %51
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #9, !dbg !965
  ret void, !dbg !965
}

; Function Attrs: noredzone nounwind
define dso_local void @netif_set_gw(%struct.netif*, %struct.ip4_addr* readonly) local_unnamed_addr #1 !dbg !966 {
  %3 = alloca %struct.ip_addr, align 4
  %4 = alloca %union.netif_ext_callback_args_t, align 8
  %5 = bitcast %struct.ip_addr* %3 to i8*, !dbg !977
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #9, !dbg !977
  %6 = icmp eq %struct.netif* %0, null, !dbg !979
  br i1 %6, label %7, label %8, !dbg !982

; <label>:7:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !983
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !986
  tail call void @ukplat_terminate(i32 3) #11, !dbg !986
  unreachable, !dbg !986

; <label>:8:                                      ; preds = %2
  %9 = icmp eq %struct.ip4_addr* %1, null, !dbg !990
  %10 = select i1 %9, %struct.ip4_addr* bitcast (%struct.ip_addr* @ip_addr_any to %struct.ip4_addr*), %struct.ip4_addr* %1, !dbg !992
  %11 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %10, i64 0, i32 0, !dbg !998
  %12 = load i32, i32* %11, align 4, !dbg !998, !tbaa !622
  %13 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 3, i32 0, i32 0, i32 0, i64 0, !dbg !998
  %14 = load i32, i32* %13, align 8, !dbg !998, !tbaa !386
  %15 = icmp eq i32 %12, %14, !dbg !998
  br i1 %15, label %52, label %16, !dbg !999

; <label>:16:                                     ; preds = %8
  %17 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 3, i32 1, !dbg !1000
  %18 = load i8, i8* %17, align 4, !dbg !1000, !tbaa !426
  %19 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 1, !dbg !1000
  store i8 %18, i8* %19, align 4, !dbg !1000, !tbaa !426
  %20 = icmp eq i8 %18, 6, !dbg !1001
  %21 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1002
  store i32 %14, i32* %21, align 4, !dbg !1002, !tbaa !386
  br i1 %20, label %22, label %31, !dbg !1003

; <label>:22:                                     ; preds = %16
  %23 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 3, i32 0, i32 0, i32 0, i64 1, !dbg !1002
  %24 = load i32, i32* %23, align 4, !dbg !1002, !tbaa !386
  %25 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 3, i32 0, i32 0, i32 0, i64 2, !dbg !1002
  %26 = load i32, i32* %25, align 8, !dbg !1002, !tbaa !386
  %27 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 3, i32 0, i32 0, i32 0, i64 3, !dbg !1002
  %28 = load i32, i32* %27, align 4, !dbg !1002, !tbaa !386
  %29 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 3, i32 0, i32 0, i32 1, !dbg !1002
  %30 = load i8, i8* %29, align 8, !dbg !1002, !tbaa !386
  br label %31, !dbg !1004

; <label>:31:                                     ; preds = %16, %22
  %32 = phi i32 [ %24, %22 ], [ 0, %16 ]
  %33 = phi i32 [ %26, %22 ], [ 0, %16 ]
  %34 = phi i32 [ %28, %22 ], [ 0, %16 ]
  %35 = phi i8 [ %30, %22 ], [ 0, %16 ]
  %36 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !1002
  store i32 %32, i32* %36, align 4, !dbg !1002
  %37 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !1002
  store i32 %33, i32* %37, align 4, !dbg !1002
  %38 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !1002
  store i32 %34, i32* %38, align 4, !dbg !1002
  %39 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 0, i32 0, i32 1, !dbg !1002
  store i8 %35, i8* %39, align 4, !dbg !1002
  store i32 %12, i32* %13, align 8, !dbg !1005, !tbaa !386
  store i8 0, i8* %17, align 4, !dbg !1006, !tbaa !410
  %40 = bitcast %union.netif_ext_callback_args_t* %4 to i8*, !dbg !1007
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %40) #9, !dbg !1007
  %41 = getelementptr inbounds %union.netif_ext_callback_args_t, %union.netif_ext_callback_args_t* %4, i64 0, i32 0, i32 2, !dbg !1008
  store %struct.ip_addr* %3, %struct.ip_addr** %41, align 8, !dbg !1009, !tbaa !386
  %42 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** @ext_callback, align 8, !dbg !1016, !tbaa !483
  %43 = icmp eq %struct.netif_ext_callback* %42, null, !dbg !1017
  br i1 %43, label %51, label %44, !dbg !1018

; <label>:44:                                     ; preds = %31, %44
  %45 = phi %struct.netif_ext_callback* [ %49, %44 ], [ %42, %31 ]
  %46 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %45, i64 0, i32 0, !dbg !1019
  %47 = load void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)*, void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)** %46, align 8, !dbg !1019, !tbaa !557
  call void %47(%struct.netif* nonnull %0, i16 zeroext 32, %union.netif_ext_callback_args_t* nonnull %4) #12, !dbg !1020
  %48 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %45, i64 0, i32 1, !dbg !1021
  %49 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** %48, align 8, !dbg !1016, !tbaa !483
  %50 = icmp eq %struct.netif_ext_callback* %49, null, !dbg !1017
  br i1 %50, label %51, label %44, !dbg !1018, !llvm.loop !561

; <label>:51:                                     ; preds = %44, %31
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %40) #9, !dbg !1022
  br label %52, !dbg !1023

; <label>:52:                                     ; preds = %8, %51
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #9, !dbg !1024
  ret void, !dbg !1024
}

; Function Attrs: noredzone nounwind
define dso_local void @netif_remove(%struct.netif*) local_unnamed_addr #1 !dbg !1025 {
  %2 = alloca %union.netif_ext_callback_args_t, align 8
  %3 = icmp eq %struct.netif* %0, null, !dbg !1033
  br i1 %3, label %82, label %4, !dbg !1035

; <label>:4:                                      ; preds = %1
  %5 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** @ext_callback, align 8, !dbg !1041, !tbaa !483
  %6 = icmp eq %struct.netif_ext_callback* %5, null, !dbg !1042
  br i1 %6, label %14, label %7, !dbg !1043

; <label>:7:                                      ; preds = %4, %7
  %8 = phi %struct.netif_ext_callback* [ %12, %7 ], [ %5, %4 ]
  %9 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %8, i64 0, i32 0, !dbg !1044
  %10 = load void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)*, void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)** %9, align 8, !dbg !1044, !tbaa !557
  tail call void %10(%struct.netif* nonnull %0, i16 zeroext 2, %union.netif_ext_callback_args_t* null) #12, !dbg !1045
  %11 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %8, i64 0, i32 1, !dbg !1046
  %12 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** %11, align 8, !dbg !1041, !tbaa !483
  %13 = icmp eq %struct.netif_ext_callback* %12, null, !dbg !1042
  br i1 %13, label %14, label %7, !dbg !1043, !llvm.loop !561

; <label>:14:                                     ; preds = %7, %4
  %15 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 1, !dbg !1047
  %16 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %15, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1047
  %17 = load i32, i32* %16, align 8, !dbg !1047, !tbaa !386
  %18 = icmp eq i32 %17, 0, !dbg !1047
  br i1 %18, label %20, label %19, !dbg !1049

; <label>:19:                                     ; preds = %14
  tail call void @tcp_netif_ip_addr_changed(%struct.ip_addr* nonnull %15, %struct.ip_addr* null) #12, !dbg !1054
  tail call void @udp_netif_ip_addr_changed(%struct.ip_addr* nonnull %15, %struct.ip_addr* null) #12, !dbg !1055
  br label %20, !dbg !1056

; <label>:20:                                     ; preds = %19, %14
  %21 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 0, !dbg !1058
  %22 = load i8, i8* %21, align 1, !dbg !1058, !tbaa !386
  %23 = and i8 %22, 16, !dbg !1058
  %24 = icmp eq i8 %23, 0, !dbg !1058
  br i1 %24, label %27, label %25, !dbg !1063

; <label>:25:                                     ; preds = %20
  %26 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, !dbg !1064
  tail call void @tcp_netif_ip_addr_changed(%struct.ip_addr* nonnull %26, %struct.ip_addr* null) #12, !dbg !1069
  tail call void @udp_netif_ip_addr_changed(%struct.ip_addr* nonnull %26, %struct.ip_addr* null) #12, !dbg !1070
  br label %27, !dbg !1071

; <label>:27:                                     ; preds = %20, %25
  %28 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 1, !dbg !1058
  %29 = load i8, i8* %28, align 1, !dbg !1058, !tbaa !386
  %30 = and i8 %29, 16, !dbg !1058
  %31 = icmp eq i8 %30, 0, !dbg !1058
  br i1 %31, label %85, label %83, !dbg !1063

; <label>:32:                                     ; preds = %92
  %33 = bitcast %union.netif_ext_callback_args_t* %2 to i8*, !dbg !1083
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %33) #9, !dbg !1083
  store i8 0, i8* %33, align 8, !dbg !1084, !tbaa !386
  %34 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** @ext_callback, align 8, !dbg !1091, !tbaa !483
  %35 = icmp eq %struct.netif_ext_callback* %34, null, !dbg !1092
  br i1 %35, label %45, label %36, !dbg !1093

; <label>:36:                                     ; preds = %32, %36
  %37 = phi %struct.netif_ext_callback* [ %41, %36 ], [ %34, %32 ]
  %38 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %37, i64 0, i32 0, !dbg !1094
  %39 = load void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)*, void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)** %38, align 8, !dbg !1094, !tbaa !557
  call void %39(%struct.netif* nonnull %0, i16 zeroext 8, %union.netif_ext_callback_args_t* nonnull %2) #12, !dbg !1095
  %40 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %37, i64 0, i32 1, !dbg !1096
  %41 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** %40, align 8, !dbg !1091, !tbaa !483
  %42 = icmp eq %struct.netif_ext_callback* %41, null, !dbg !1092
  br i1 %42, label %43, label %36, !dbg !1093, !llvm.loop !561

; <label>:43:                                     ; preds = %36
  %44 = load i8, i8* %94, align 1, !dbg !1097, !tbaa !290
  br label %45, !dbg !1099

; <label>:45:                                     ; preds = %43, %32
  %46 = phi i8 [ %44, %43 ], [ %95, %32 ], !dbg !1097
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %33) #9, !dbg !1099
  %47 = and i8 %46, -2, !dbg !1097
  store i8 %47, i8* %94, align 1, !dbg !1097, !tbaa !290
  %48 = and i8 %46, 8, !dbg !1100
  %49 = icmp eq i8 %48, 0, !dbg !1100
  br i1 %49, label %51, label %50, !dbg !1102

; <label>:50:                                     ; preds = %45
  call void @etharp_cleanup_netif(%struct.netif* nonnull %0) #12, !dbg !1103
  br label %51, !dbg !1105

; <label>:51:                                     ; preds = %50, %45
  call void @nd6_cleanup_netif(%struct.netif* nonnull %0) #12, !dbg !1106
  %52 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 12, !dbg !1107
  %53 = load void (%struct.netif*)*, void (%struct.netif*)** %52, align 8, !dbg !1107, !tbaa !457
  %54 = icmp eq void (%struct.netif*)* %53, null, !dbg !1107
  br i1 %54, label %56, label %55, !dbg !1110

; <label>:55:                                     ; preds = %51
  call void %53(%struct.netif* nonnull %0) #12, !dbg !1111
  br label %56, !dbg !1111

; <label>:56:                                     ; preds = %55, %51, %92
  %57 = load %struct.netif*, %struct.netif** @netif_default, align 8, !dbg !1113, !tbaa !483
  %58 = icmp eq %struct.netif* %57, %0, !dbg !1115
  br i1 %58, label %59, label %60, !dbg !1116

; <label>:59:                                     ; preds = %56
  store %struct.netif* null, %struct.netif** @netif_default, align 8, !dbg !1123, !tbaa !483
  br label %60, !dbg !1124

; <label>:60:                                     ; preds = %59, %56
  %61 = load %struct.netif*, %struct.netif** @netif_list, align 8, !dbg !1125, !tbaa !483
  %62 = icmp eq %struct.netif* %61, %0, !dbg !1126
  br i1 %62, label %63, label %66, !dbg !1127

; <label>:63:                                     ; preds = %60
  %64 = bitcast %struct.netif* %0 to i64*, !dbg !1128
  %65 = load i64, i64* %64, align 8, !dbg !1128, !tbaa !539
  store i64 %65, i64* bitcast (%struct.netif** @netif_list to i64*), align 8, !dbg !1130, !tbaa !483
  br label %77, !dbg !1131

; <label>:66:                                     ; preds = %60, %69
  %67 = phi %struct.netif* [ %71, %69 ], [ %61, %60 ], !dbg !1132
  %68 = icmp eq %struct.netif* %67, null, !dbg !1132
  br i1 %68, label %82, label %69, !dbg !1132

; <label>:69:                                     ; preds = %66
  %70 = getelementptr inbounds %struct.netif, %struct.netif* %67, i64 0, i32 0, !dbg !1135
  %71 = load %struct.netif*, %struct.netif** %70, align 8, !dbg !1135, !tbaa !539
  %72 = icmp eq %struct.netif* %71, %0, !dbg !1139
  br i1 %72, label %73, label %66, !dbg !1140, !llvm.loop !1141

; <label>:73:                                     ; preds = %69
  %74 = bitcast %struct.netif* %0 to i64*, !dbg !1143
  %75 = load i64, i64* %74, align 8, !dbg !1143, !tbaa !539
  %76 = bitcast %struct.netif* %67 to i64*, !dbg !1145
  store i64 %75, i64* %76, align 8, !dbg !1145, !tbaa !539
  br label %77

; <label>:77:                                     ; preds = %73, %63
  %78 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 13, !dbg !1146
  %79 = load void (%struct.netif*)*, void (%struct.netif*)** %78, align 8, !dbg !1146, !tbaa !1148
  %80 = icmp eq void (%struct.netif*)* %79, null, !dbg !1149
  br i1 %80, label %82, label %81, !dbg !1150

; <label>:81:                                     ; preds = %77
  call void %79(%struct.netif* nonnull %0) #12, !dbg !1151
  br label %82, !dbg !1153

; <label>:82:                                     ; preds = %66, %81, %77, %1
  ret void, !dbg !1154

; <label>:83:                                     ; preds = %27
  %84 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 1, !dbg !1064
  tail call void @tcp_netif_ip_addr_changed(%struct.ip_addr* nonnull %84, %struct.ip_addr* null) #12, !dbg !1069
  tail call void @udp_netif_ip_addr_changed(%struct.ip_addr* nonnull %84, %struct.ip_addr* null) #12, !dbg !1070
  br label %85, !dbg !1071

; <label>:85:                                     ; preds = %83, %27
  %86 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 2, !dbg !1058
  %87 = load i8, i8* %86, align 1, !dbg !1058, !tbaa !386
  %88 = and i8 %87, 16, !dbg !1058
  %89 = icmp eq i8 %88, 0, !dbg !1058
  br i1 %89, label %92, label %90, !dbg !1063

; <label>:90:                                     ; preds = %85
  %91 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 2, !dbg !1064
  tail call void @tcp_netif_ip_addr_changed(%struct.ip_addr* nonnull %91, %struct.ip_addr* null) #12, !dbg !1069
  tail call void @udp_netif_ip_addr_changed(%struct.ip_addr* nonnull %91, %struct.ip_addr* null) #12, !dbg !1070
  br label %92, !dbg !1071

; <label>:92:                                     ; preds = %90, %85
  %93 = tail call signext i8 @mld6_stop(%struct.netif* nonnull %0) #12, !dbg !1155
  %94 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 21, !dbg !1156
  %95 = load i8, i8* %94, align 1, !dbg !1156, !tbaa !290
  %96 = and i8 %95, 1, !dbg !1156
  %97 = icmp eq i8 %96, 0, !dbg !1156
  br i1 %97, label %56, label %32, !dbg !1157
}

; Function Attrs: noredzone
declare dso_local signext i8 @mld6_stop(%struct.netif*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local void @netif_set_down(%struct.netif*) local_unnamed_addr #1 !dbg !1073 {
  %2 = alloca %union.netif_ext_callback_args_t, align 8
  %3 = icmp eq %struct.netif* %0, null, !dbg !1159
  br i1 %3, label %4, label %5, !dbg !1162

; <label>:4:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0)) #10, !dbg !1163
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !1166
  tail call void @ukplat_terminate(i32 3) #11, !dbg !1166
  unreachable, !dbg !1166

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 21, !dbg !1170
  %7 = load i8, i8* %6, align 1, !dbg !1170, !tbaa !290
  %8 = and i8 %7, 1, !dbg !1171
  %9 = icmp eq i8 %8, 0, !dbg !1171
  br i1 %9, label %34, label %10, !dbg !1172

; <label>:10:                                     ; preds = %5
  %11 = bitcast %union.netif_ext_callback_args_t* %2 to i8*, !dbg !1173
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %11) #9, !dbg !1173
  store i8 0, i8* %11, align 8, !dbg !1174, !tbaa !386
  %12 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** @ext_callback, align 8, !dbg !1181, !tbaa !483
  %13 = icmp eq %struct.netif_ext_callback* %12, null, !dbg !1182
  br i1 %13, label %23, label %14, !dbg !1183

; <label>:14:                                     ; preds = %10, %14
  %15 = phi %struct.netif_ext_callback* [ %19, %14 ], [ %12, %10 ]
  %16 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %15, i64 0, i32 0, !dbg !1184
  %17 = load void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)*, void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)** %16, align 8, !dbg !1184, !tbaa !557
  call void %17(%struct.netif* nonnull %0, i16 zeroext 8, %union.netif_ext_callback_args_t* nonnull %2) #12, !dbg !1185
  %18 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %15, i64 0, i32 1, !dbg !1186
  %19 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** %18, align 8, !dbg !1181, !tbaa !483
  %20 = icmp eq %struct.netif_ext_callback* %19, null, !dbg !1182
  br i1 %20, label %21, label %14, !dbg !1183, !llvm.loop !561

; <label>:21:                                     ; preds = %14
  %22 = load i8, i8* %6, align 1, !dbg !1187, !tbaa !290
  br label %23, !dbg !1188

; <label>:23:                                     ; preds = %21, %10
  %24 = phi i8 [ %22, %21 ], [ %7, %10 ], !dbg !1187
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %11) #9, !dbg !1188
  %25 = and i8 %24, -2, !dbg !1187
  store i8 %25, i8* %6, align 1, !dbg !1187, !tbaa !290
  %26 = and i8 %24, 8, !dbg !1189
  %27 = icmp eq i8 %26, 0, !dbg !1189
  br i1 %27, label %29, label %28, !dbg !1190

; <label>:28:                                     ; preds = %23
  call void @etharp_cleanup_netif(%struct.netif* nonnull %0) #12, !dbg !1191
  br label %29, !dbg !1192

; <label>:29:                                     ; preds = %23, %28
  call void @nd6_cleanup_netif(%struct.netif* nonnull %0) #12, !dbg !1193
  %30 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 12, !dbg !1194
  %31 = load void (%struct.netif*)*, void (%struct.netif*)** %30, align 8, !dbg !1194, !tbaa !457
  %32 = icmp eq void (%struct.netif*)* %31, null, !dbg !1194
  br i1 %32, label %34, label %33, !dbg !1195

; <label>:33:                                     ; preds = %29
  call void %31(%struct.netif* nonnull %0) #12, !dbg !1196
  br label %34, !dbg !1196

; <label>:34:                                     ; preds = %29, %5, %33
  ret void, !dbg !1197
}

; Function Attrs: noredzone nounwind
define dso_local void @netif_set_default(%struct.netif*) local_unnamed_addr #1 !dbg !1118 {
  store %struct.netif* %0, %struct.netif** @netif_default, align 8, !dbg !1199, !tbaa !483
  ret void, !dbg !1200
}

; Function Attrs: noredzone nounwind
define dso_local void @netif_set_up(%struct.netif*) local_unnamed_addr #1 !dbg !1201 {
  %2 = alloca %union.netif_ext_callback_args_t, align 8
  %3 = icmp eq %struct.netif* %0, null, !dbg !1209
  br i1 %3, label %4, label %5, !dbg !1212

; <label>:4:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0)) #10, !dbg !1213
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !1216
  tail call void @ukplat_terminate(i32 3) #11, !dbg !1216
  unreachable, !dbg !1216

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 21, !dbg !1220
  %7 = load i8, i8* %6, align 1, !dbg !1220, !tbaa !290
  %8 = and i8 %7, 1, !dbg !1221
  %9 = icmp eq i8 %8, 0, !dbg !1221
  br i1 %9, label %10, label %45, !dbg !1222

; <label>:10:                                     ; preds = %5
  %11 = or i8 %7, 1, !dbg !1223
  store i8 %11, i8* %6, align 1, !dbg !1223, !tbaa !290
  %12 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 12, !dbg !1225
  %13 = load void (%struct.netif*)*, void (%struct.netif*)** %12, align 8, !dbg !1225, !tbaa !457
  %14 = icmp eq void (%struct.netif*)* %13, null, !dbg !1225
  br i1 %14, label %16, label %15, !dbg !1228

; <label>:15:                                     ; preds = %10
  tail call void %13(%struct.netif* nonnull %0) #12, !dbg !1229
  br label %16, !dbg !1229

; <label>:16:                                     ; preds = %15, %10
  %17 = bitcast %union.netif_ext_callback_args_t* %2 to i8*, !dbg !1231
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %17) #9, !dbg !1231
  store i8 1, i8* %17, align 8, !dbg !1232, !tbaa !386
  %18 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** @ext_callback, align 8, !dbg !1239, !tbaa !483
  %19 = icmp eq %struct.netif_ext_callback* %18, null, !dbg !1240
  br i1 %19, label %27, label %20, !dbg !1241

; <label>:20:                                     ; preds = %16, %20
  %21 = phi %struct.netif_ext_callback* [ %25, %20 ], [ %18, %16 ]
  %22 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %21, i64 0, i32 0, !dbg !1242
  %23 = load void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)*, void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)** %22, align 8, !dbg !1242, !tbaa !557
  call void %23(%struct.netif* nonnull %0, i16 zeroext 8, %union.netif_ext_callback_args_t* nonnull %2) #12, !dbg !1243
  %24 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %21, i64 0, i32 1, !dbg !1244
  %25 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** %24, align 8, !dbg !1239, !tbaa !483
  %26 = icmp eq %struct.netif_ext_callback* %25, null, !dbg !1240
  br i1 %26, label %27, label %20, !dbg !1241, !llvm.loop !561

; <label>:27:                                     ; preds = %20, %16
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %17) #9, !dbg !1245
  %28 = load i8, i8* %6, align 1, !dbg !1249, !tbaa !290
  %29 = zext i8 %28 to i32, !dbg !1250
  %30 = and i32 %29, 5, !dbg !1251
  %31 = icmp eq i32 %30, 5, !dbg !1251
  br i1 %31, label %32, label %44, !dbg !1251

; <label>:32:                                     ; preds = %27
  %33 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 1, i32 0, !dbg !1252
  %34 = getelementptr inbounds %union.anon, %union.anon* %33, i64 0, i32 0, i32 0, i64 0, !dbg !1252
  %35 = load i32, i32* %34, align 8, !dbg !1252, !tbaa !386
  %36 = icmp eq i32 %35, 0, !dbg !1252
  %37 = and i32 %29, 8, !dbg !1253
  %38 = icmp eq i32 %37, 0, !dbg !1253
  %39 = or i1 %38, %36, !dbg !1254
  br i1 %39, label %43, label %40, !dbg !1254

; <label>:40:                                     ; preds = %32
  %41 = bitcast %union.anon* %33 to %struct.ip4_addr*, !dbg !1252
  %42 = call signext i8 @etharp_request(%struct.netif* nonnull %0, %struct.ip4_addr* nonnull %41) #12, !dbg !1255
  br label %43, !dbg !1256

; <label>:43:                                     ; preds = %40, %32
  call void @mld6_report_groups(%struct.netif* nonnull %0) #12, !dbg !1257
  br label %44, !dbg !1260

; <label>:44:                                     ; preds = %27, %43
  call void @nd6_restart_netif(%struct.netif* nonnull %0) #12, !dbg !1261
  br label %45, !dbg !1262

; <label>:45:                                     ; preds = %5, %44
  ret void, !dbg !1263
}

; Function Attrs: noredzone
declare dso_local void @etharp_cleanup_netif(%struct.netif*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @nd6_cleanup_netif(%struct.netif*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local void @netif_set_status_callback(%struct.netif*, void (%struct.netif*)*) local_unnamed_addr #1 !dbg !1264 {
  %3 = icmp eq %struct.netif* %0, null, !dbg !1272
  br i1 %3, label %6, label %4, !dbg !1274

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 12, !dbg !1275
  store void (%struct.netif*)* %1, void (%struct.netif*)** %5, align 8, !dbg !1277, !tbaa !457
  br label %6, !dbg !1278

; <label>:6:                                      ; preds = %2, %4
  ret void, !dbg !1279
}

; Function Attrs: noredzone nounwind
define dso_local void @netif_set_remove_callback(%struct.netif*, void (%struct.netif*)*) local_unnamed_addr #1 !dbg !1280 {
  %3 = icmp eq %struct.netif* %0, null, !dbg !1286
  br i1 %3, label %6, label %4, !dbg !1288

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 13, !dbg !1289
  store void (%struct.netif*)* %1, void (%struct.netif*)** %5, align 8, !dbg !1291, !tbaa !1148
  br label %6, !dbg !1292

; <label>:6:                                      ; preds = %2, %4
  ret void, !dbg !1293
}

; Function Attrs: noredzone nounwind
define dso_local void @netif_set_link_up(%struct.netif*) local_unnamed_addr #1 !dbg !1294 {
  %2 = alloca %union.netif_ext_callback_args_t, align 8
  %3 = icmp eq %struct.netif* %0, null, !dbg !1302
  br i1 %3, label %4, label %5, !dbg !1305

; <label>:4:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0)) #10, !dbg !1306
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !1309
  tail call void @ukplat_terminate(i32 3) #11, !dbg !1309
  unreachable, !dbg !1309

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 21, !dbg !1313
  %7 = load i8, i8* %6, align 1, !dbg !1313, !tbaa !290
  %8 = and i8 %7, 4, !dbg !1314
  %9 = icmp eq i8 %8, 0, !dbg !1314
  br i1 %9, label %10, label %39, !dbg !1315

; <label>:10:                                     ; preds = %5
  %11 = or i8 %7, 4, !dbg !1316
  store i8 %11, i8* %6, align 1, !dbg !1316, !tbaa !290
  %12 = zext i8 %11 to i32, !dbg !1321
  %13 = and i32 %12, 5, !dbg !1322
  %14 = icmp eq i32 %13, 5, !dbg !1322
  br i1 %14, label %15, label %27, !dbg !1322

; <label>:15:                                     ; preds = %10
  %16 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 1, i32 0, !dbg !1323
  %17 = getelementptr inbounds %union.anon, %union.anon* %16, i64 0, i32 0, i32 0, i64 0, !dbg !1323
  %18 = load i32, i32* %17, align 8, !dbg !1323, !tbaa !386
  %19 = icmp eq i32 %18, 0, !dbg !1323
  %20 = and i32 %12, 8, !dbg !1324
  %21 = icmp eq i32 %20, 0, !dbg !1324
  %22 = or i1 %21, %19, !dbg !1325
  br i1 %22, label %26, label %23, !dbg !1325

; <label>:23:                                     ; preds = %15
  %24 = bitcast %union.anon* %16 to %struct.ip4_addr*, !dbg !1323
  %25 = tail call signext i8 @etharp_request(%struct.netif* nonnull %0, %struct.ip4_addr* nonnull %24) #12, !dbg !1326
  br label %26, !dbg !1327

; <label>:26:                                     ; preds = %23, %15
  tail call void @mld6_report_groups(%struct.netif* nonnull %0) #12, !dbg !1328
  br label %27, !dbg !1329

; <label>:27:                                     ; preds = %26, %10
  tail call void @nd6_restart_netif(%struct.netif* nonnull %0) #12, !dbg !1330
  %28 = bitcast %union.netif_ext_callback_args_t* %2 to i8*, !dbg !1331
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %28) #9, !dbg !1331
  store i8 1, i8* %28, align 8, !dbg !1332, !tbaa !386
  %29 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** @ext_callback, align 8, !dbg !1339, !tbaa !483
  %30 = icmp eq %struct.netif_ext_callback* %29, null, !dbg !1340
  br i1 %30, label %38, label %31, !dbg !1341

; <label>:31:                                     ; preds = %27, %31
  %32 = phi %struct.netif_ext_callback* [ %36, %31 ], [ %29, %27 ]
  %33 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %32, i64 0, i32 0, !dbg !1342
  %34 = load void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)*, void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)** %33, align 8, !dbg !1342, !tbaa !557
  call void %34(%struct.netif* nonnull %0, i16 zeroext 4, %union.netif_ext_callback_args_t* nonnull %2) #12, !dbg !1343
  %35 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %32, i64 0, i32 1, !dbg !1344
  %36 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** %35, align 8, !dbg !1339, !tbaa !483
  %37 = icmp eq %struct.netif_ext_callback* %36, null, !dbg !1340
  br i1 %37, label %38, label %31, !dbg !1341, !llvm.loop !561

; <label>:38:                                     ; preds = %31, %27
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %28) #9, !dbg !1345
  br label %39, !dbg !1346

; <label>:39:                                     ; preds = %5, %38
  ret void, !dbg !1347
}

; Function Attrs: noredzone nounwind
define dso_local void @netif_set_link_down(%struct.netif*) local_unnamed_addr #1 !dbg !1348 {
  %2 = alloca %union.netif_ext_callback_args_t, align 8
  %3 = icmp eq %struct.netif* %0, null, !dbg !1356
  br i1 %3, label %4, label %5, !dbg !1359

; <label>:4:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0)) #10, !dbg !1360
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !1363
  tail call void @ukplat_terminate(i32 3) #11, !dbg !1363
  unreachable, !dbg !1363

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 21, !dbg !1367
  %7 = load i8, i8* %6, align 1, !dbg !1367, !tbaa !290
  %8 = and i8 %7, 4, !dbg !1368
  %9 = icmp eq i8 %8, 0, !dbg !1368
  br i1 %9, label %23, label %10, !dbg !1369

; <label>:10:                                     ; preds = %5
  %11 = and i8 %7, -5, !dbg !1370
  store i8 %11, i8* %6, align 1, !dbg !1370, !tbaa !290
  %12 = bitcast %union.netif_ext_callback_args_t* %2 to i8*, !dbg !1372
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %12) #9, !dbg !1372
  store i8 0, i8* %12, align 8, !dbg !1373, !tbaa !386
  %13 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** @ext_callback, align 8, !dbg !1380, !tbaa !483
  %14 = icmp eq %struct.netif_ext_callback* %13, null, !dbg !1381
  br i1 %14, label %22, label %15, !dbg !1382

; <label>:15:                                     ; preds = %10, %15
  %16 = phi %struct.netif_ext_callback* [ %20, %15 ], [ %13, %10 ]
  %17 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %16, i64 0, i32 0, !dbg !1383
  %18 = load void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)*, void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)** %17, align 8, !dbg !1383, !tbaa !557
  call void %18(%struct.netif* nonnull %0, i16 zeroext 4, %union.netif_ext_callback_args_t* nonnull %2) #12, !dbg !1384
  %19 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %16, i64 0, i32 1, !dbg !1385
  %20 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** %19, align 8, !dbg !1380, !tbaa !483
  %21 = icmp eq %struct.netif_ext_callback* %20, null, !dbg !1381
  br i1 %21, label %22, label %15, !dbg !1382, !llvm.loop !561

; <label>:22:                                     ; preds = %15, %10
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %12) #9, !dbg !1386
  br label %23, !dbg !1387

; <label>:23:                                     ; preds = %5, %22
  ret void, !dbg !1388
}

; Function Attrs: noredzone nounwind
define dso_local void @netif_ip6_addr_set(%struct.netif*, i8 signext, %struct.ip6_addr* readonly) local_unnamed_addr #1 !dbg !1389 {
  %4 = icmp eq %struct.netif* %0, null, !dbg !1399
  br i1 %4, label %5, label %6, !dbg !1402

; <label>:5:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i64 0, i64 0)) #10, !dbg !1403
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !1406
  tail call void @ukplat_terminate(i32 3) #11, !dbg !1406
  unreachable, !dbg !1406

; <label>:6:                                      ; preds = %3
  %7 = icmp eq %struct.ip6_addr* %2, null, !dbg !1410
  br i1 %7, label %8, label %9, !dbg !1413

; <label>:8:                                      ; preds = %6
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0)) #10, !dbg !1414
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !1417
  tail call void @ukplat_terminate(i32 3) #11, !dbg !1417
  unreachable, !dbg !1417

; <label>:9:                                      ; preds = %6
  %10 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %2, i64 0, i32 0, i64 0, !dbg !1421
  %11 = load i32, i32* %10, align 4, !dbg !1421, !tbaa !431
  %12 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %2, i64 0, i32 0, i64 1, !dbg !1422
  %13 = load i32, i32* %12, align 4, !dbg !1422, !tbaa !431
  %14 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %2, i64 0, i32 0, i64 2, !dbg !1423
  %15 = load i32, i32* %14, align 4, !dbg !1423, !tbaa !431
  %16 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %2, i64 0, i32 0, i64 3, !dbg !1424
  %17 = load i32, i32* %16, align 4, !dbg !1424, !tbaa !431
  tail call void @netif_ip6_addr_set_parts(%struct.netif* nonnull %0, i8 signext %1, i32 %11, i32 %13, i32 %15, i32 %17) #10, !dbg !1425
  ret void, !dbg !1426
}

; Function Attrs: noredzone nounwind
define dso_local void @netif_ip6_addr_set_parts(%struct.netif*, i8 signext, i32, i32, i32, i32) local_unnamed_addr #1 !dbg !1427 {
  %7 = alloca %struct.ip_addr, align 16
  %8 = alloca %struct.ip_addr, align 4
  %9 = alloca %union.netif_ext_callback_args_t, align 8
  %10 = bitcast %struct.ip_addr* %7 to i8*, !dbg !1449
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %10) #9, !dbg !1449
  %11 = bitcast %struct.ip_addr* %8 to i8*, !dbg !1450
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %11) #9, !dbg !1450
  %12 = icmp eq %struct.netif* %0, null, !dbg !1451
  br i1 %12, label %13, label %14, !dbg !1454

; <label>:13:                                     ; preds = %6
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0)) #10, !dbg !1455
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !1458
  tail call void @ukplat_terminate(i32 3) #11, !dbg !1458
  unreachable, !dbg !1458

; <label>:14:                                     ; preds = %6
  %15 = icmp slt i8 %1, 3, !dbg !1462
  br i1 %15, label %17, label %16, !dbg !1465

; <label>:16:                                     ; preds = %14
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0)) #10, !dbg !1466
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !1469
  tail call void @ukplat_terminate(i32 3) #11, !dbg !1469
  unreachable, !dbg !1469

; <label>:17:                                     ; preds = %14
  %18 = sext i8 %1 to i64, !dbg !1473
  %19 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 %18, !dbg !1473
  %20 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %19, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1473
  %21 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 %18, i32 0, i32 0, i32 0, i64 1, !dbg !1473
  %22 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 %18, i32 0, i32 0, i32 0, i64 2, !dbg !1473
  %23 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 %18, i32 0, i32 0, i32 0, i64 3, !dbg !1473
  %24 = bitcast %struct.ip_addr* %19 to <4 x i32>*, !dbg !1473
  %25 = load <4 x i32>, <4 x i32>* %24, align 8, !dbg !1473, !tbaa !386
  %26 = bitcast %struct.ip_addr* %7 to <4 x i32>*, !dbg !1473
  store <4 x i32> %25, <4 x i32>* %26, align 16, !dbg !1473, !tbaa !386
  %27 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 %18, i32 0, i32 0, i32 1, !dbg !1473
  %28 = load i8, i8* %27, align 8, !dbg !1473, !tbaa !386
  %29 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %7, i64 0, i32 0, i32 0, i32 1, !dbg !1473
  store i8 %28, i8* %29, align 16, !dbg !1473, !tbaa !386
  %30 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %7, i64 0, i32 1, !dbg !1475
  store i8 6, i8* %30, align 4, !dbg !1475, !tbaa !426
  %31 = extractelement <4 x i32> %25, i32 0, !dbg !1477
  %32 = icmp eq i32 %31, %2, !dbg !1477
  %33 = extractelement <4 x i32> %25, i32 1, !dbg !1478
  %34 = icmp eq i32 %33, %3, !dbg !1478
  %35 = and i1 %32, %34, !dbg !1479
  %36 = extractelement <4 x i32> %25, i32 2, !dbg !1480
  %37 = icmp eq i32 %36, %4, !dbg !1480
  %38 = and i1 %35, %37, !dbg !1479
  %39 = extractelement <4 x i32> %25, i32 3, !dbg !1481
  %40 = icmp eq i32 %39, %5, !dbg !1481
  %41 = and i1 %38, %40, !dbg !1479
  br i1 %41, label %103, label %42, !dbg !1479

; <label>:42:                                     ; preds = %17
  %43 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %8, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1482
  store i32 %2, i32* %43, align 4, !dbg !1482, !tbaa !386
  %44 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %8, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !1482
  store i32 %3, i32* %44, align 4, !dbg !1482, !tbaa !386
  %45 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %8, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !1482
  store i32 %4, i32* %45, align 4, !dbg !1482, !tbaa !386
  %46 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %8, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !1482
  store i32 %5, i32* %46, align 4, !dbg !1482, !tbaa !386
  %47 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %8, i64 0, i32 0, i32 0, i32 1, !dbg !1482
  store i8 0, i8* %47, align 4, !dbg !1482, !tbaa !386
  %48 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %8, i64 0, i32 1, !dbg !1485
  store i8 6, i8* %48, align 4, !dbg !1485, !tbaa !426
  %49 = and i32 %2, 49407, !dbg !1487
  %50 = icmp eq i32 %49, 33022, !dbg !1487
  br i1 %50, label %51, label %55, !dbg !1487

; <label>:51:                                     ; preds = %42
  %52 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 23, !dbg !1487
  %53 = load i8, i8* %52, align 8, !dbg !1487, !tbaa !467
  %54 = add i8 %53, 1, !dbg !1487
  br label %55, !dbg !1487

; <label>:55:                                     ; preds = %42, %51
  %56 = phi i8 [ %54, %51 ], [ 0, %42 ]
  store i8 %56, i8* %47, align 4, !dbg !1487, !tbaa !386
  %57 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 %18, !dbg !1488
  %58 = load i8, i8* %57, align 1, !dbg !1488, !tbaa !386
  %59 = and i8 %58, 16, !dbg !1488
  %60 = icmp eq i8 %59, 0, !dbg !1488
  br i1 %60, label %61, label %63, !dbg !1490

; <label>:61:                                     ; preds = %55
  %62 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 %18, i32 1, !dbg !1491
  store i8 6, i8* %62, align 4, !dbg !1491, !tbaa !426
  store i32 %2, i32* %20, align 8, !dbg !1494, !tbaa !386
  br label %68, !dbg !1498

; <label>:63:                                     ; preds = %55
  call void @tcp_netif_ip_addr_changed(%struct.ip_addr* nonnull %19, %struct.ip_addr* nonnull %8) #12, !dbg !1504
  call void @udp_netif_ip_addr_changed(%struct.ip_addr* nonnull %19, %struct.ip_addr* nonnull %8) #12, !dbg !1505
  %64 = load i8, i8* %48, align 4, !dbg !1491, !tbaa !426
  %65 = load i32, i32* %43, align 4, !dbg !1494, !tbaa !386
  %66 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 %18, i32 1, !dbg !1491
  store i8 %64, i8* %66, align 4, !dbg !1491, !tbaa !426
  %67 = icmp eq i8 %64, 6, !dbg !1506
  store i32 %65, i32* %20, align 8, !dbg !1494, !tbaa !386
  br i1 %67, label %68, label %73, !dbg !1498

; <label>:68:                                     ; preds = %61, %63
  %69 = load i32, i32* %44, align 4, !dbg !1494, !tbaa !386
  store i32 %69, i32* %21, align 4, !dbg !1494, !tbaa !386
  %70 = load i32, i32* %45, align 4, !dbg !1494, !tbaa !386
  store i32 %70, i32* %22, align 8, !dbg !1494, !tbaa !386
  %71 = load i32, i32* %46, align 4, !dbg !1494, !tbaa !386
  store i32 %71, i32* %23, align 4, !dbg !1494, !tbaa !386
  %72 = load i8, i8* %47, align 4, !dbg !1494, !tbaa !386
  br label %74, !dbg !1507

; <label>:73:                                     ; preds = %63
  store i32 0, i32* %23, align 4, !dbg !1508, !tbaa !386
  store i32 0, i32* %22, align 8, !dbg !1508, !tbaa !386
  store i32 0, i32* %21, align 4, !dbg !1508, !tbaa !386
  br label %74

; <label>:74:                                     ; preds = %73, %68
  %75 = phi i8 [ 0, %73 ], [ %72, %68 ]
  store i8 %75, i8* %27, align 8, !dbg !1508, !tbaa !386
  %76 = load i8, i8* %57, align 1, !dbg !1511, !tbaa !386
  %77 = and i8 %76, 16, !dbg !1511
  %78 = icmp eq i8 %77, 0, !dbg !1511
  br i1 %78, label %90, label %79, !dbg !1513

; <label>:79:                                     ; preds = %74
  %80 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 21, !dbg !1518
  %81 = load i8, i8* %80, align 1, !dbg !1518, !tbaa !290
  %82 = and i8 %81, 5, !dbg !1519
  %83 = icmp eq i8 %82, 5, !dbg !1519
  br i1 %83, label %84, label %85, !dbg !1519

; <label>:84:                                     ; preds = %79
  call void @mld6_report_groups(%struct.netif* nonnull %0) #12, !dbg !1520
  br label %85, !dbg !1521

; <label>:85:                                     ; preds = %79, %84
  %86 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 12, !dbg !1522
  %87 = load void (%struct.netif*)*, void (%struct.netif*)** %86, align 8, !dbg !1522, !tbaa !457
  %88 = icmp eq void (%struct.netif*)* %87, null, !dbg !1522
  br i1 %88, label %90, label %89, !dbg !1525

; <label>:89:                                     ; preds = %85
  call void %87(%struct.netif* nonnull %0) #12, !dbg !1526
  br label %90, !dbg !1526

; <label>:90:                                     ; preds = %89, %74, %85
  %91 = bitcast %union.netif_ext_callback_args_t* %9 to i8*, !dbg !1528
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %91) #9, !dbg !1528
  store i8 %1, i8* %91, align 8, !dbg !1529, !tbaa !386
  %92 = getelementptr inbounds %union.netif_ext_callback_args_t, %union.netif_ext_callback_args_t* %9, i64 0, i32 0, i32 1, !dbg !1530
  store %struct.ip_addr* %7, %struct.ip_addr** %92, align 8, !dbg !1531, !tbaa !386
  %93 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** @ext_callback, align 8, !dbg !1538, !tbaa !483
  %94 = icmp eq %struct.netif_ext_callback* %93, null, !dbg !1539
  br i1 %94, label %102, label %95, !dbg !1540

; <label>:95:                                     ; preds = %90, %95
  %96 = phi %struct.netif_ext_callback* [ %100, %95 ], [ %93, %90 ]
  %97 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %96, i64 0, i32 0, !dbg !1541
  %98 = load void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)*, void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)** %97, align 8, !dbg !1541, !tbaa !557
  call void %98(%struct.netif* nonnull %0, i16 zeroext 256, %union.netif_ext_callback_args_t* nonnull %9) #12, !dbg !1542
  %99 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %96, i64 0, i32 1, !dbg !1543
  %100 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** %99, align 8, !dbg !1538, !tbaa !483
  %101 = icmp eq %struct.netif_ext_callback* %100, null, !dbg !1539
  br i1 %101, label %102, label %95, !dbg !1540, !llvm.loop !561

; <label>:102:                                    ; preds = %95, %90
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %91) #9, !dbg !1544
  br label %103, !dbg !1545

; <label>:103:                                    ; preds = %17, %102
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %11) #9, !dbg !1546
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %10) #9, !dbg !1546
  ret void, !dbg !1546
}

; Function Attrs: noredzone nounwind
define dso_local void @netif_ip6_addr_set_state(%struct.netif*, i8 signext, i8 zeroext) local_unnamed_addr #1 !dbg !1547 {
  %4 = alloca %union.netif_ext_callback_args_t, align 8
  %5 = icmp eq %struct.netif* %0, null, !dbg !1564
  br i1 %5, label %6, label %7, !dbg !1567

; <label>:6:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0)) #10, !dbg !1568
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !1571
  tail call void @ukplat_terminate(i32 3) #11, !dbg !1571
  unreachable, !dbg !1571

; <label>:7:                                      ; preds = %3
  %8 = icmp slt i8 %1, 3, !dbg !1575
  br i1 %8, label %10, label %9, !dbg !1578

; <label>:9:                                      ; preds = %7
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0)) #10, !dbg !1579
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !1582
  tail call void @ukplat_terminate(i32 3) #11, !dbg !1582
  unreachable, !dbg !1582

; <label>:10:                                     ; preds = %7
  %11 = sext i8 %1 to i64, !dbg !1586
  %12 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 %11, !dbg !1586
  %13 = load i8, i8* %12, align 1, !dbg !1586, !tbaa !386
  %14 = icmp eq i8 %13, %2, !dbg !1588
  br i1 %14, label %62, label %15, !dbg !1589

; <label>:15:                                     ; preds = %10
  %16 = and i8 %13, 16, !dbg !1590
  %17 = and i8 %2, 16, !dbg !1592
  %18 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 21, !dbg !1594
  %19 = load i8, i8* %18, align 1, !dbg !1594, !tbaa !290
  %20 = and i8 %19, 64, !dbg !1596
  %21 = icmp eq i8 %20, 0, !dbg !1596
  br i1 %21, label %23, label %22, !dbg !1597

; <label>:22:                                     ; preds = %15
  tail call void @nd6_adjust_mld_membership(%struct.netif* nonnull %0, i8 signext %1, i8 zeroext %2) #12, !dbg !1598
  br label %23, !dbg !1600

; <label>:23:                                     ; preds = %15, %22
  %24 = icmp eq i8 %16, 0, !dbg !1601
  %25 = icmp ne i8 %17, 0, !dbg !1603
  %26 = or i1 %25, %24, !dbg !1604
  br i1 %26, label %29, label %27, !dbg !1604

; <label>:27:                                     ; preds = %23
  %28 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 %11, !dbg !1605
  tail call void @tcp_netif_ip_addr_changed(%struct.ip_addr* nonnull %28, %struct.ip_addr* null) #12, !dbg !1610
  tail call void @udp_netif_ip_addr_changed(%struct.ip_addr* nonnull %28, %struct.ip_addr* null) #12, !dbg !1611
  store i8 %2, i8* %12, align 1, !dbg !1612, !tbaa !386
  br label %38, !dbg !1613

; <label>:29:                                     ; preds = %23
  store i8 %2, i8* %12, align 1, !dbg !1612, !tbaa !386
  %30 = icmp ne i8 %16, 0, !dbg !1615
  %31 = icmp eq i8 %17, 0, !dbg !1616
  %32 = or i1 %31, %30, !dbg !1613
  br i1 %32, label %38, label %33, !dbg !1613

; <label>:33:                                     ; preds = %29
  %34 = load i8, i8* %18, align 1, !dbg !1621, !tbaa !290
  %35 = and i8 %34, 5, !dbg !1622
  %36 = icmp eq i8 %35, 5, !dbg !1622
  br i1 %36, label %37, label %38, !dbg !1622

; <label>:37:                                     ; preds = %33
  tail call void @mld6_report_groups(%struct.netif* nonnull %0) #12, !dbg !1623
  br label %38, !dbg !1624

; <label>:38:                                     ; preds = %37, %33, %27, %29
  %39 = xor i8 %13, %2, !dbg !1625
  %40 = icmp ugt i8 %39, 7, !dbg !1625
  br i1 %40, label %41, label %46, !dbg !1627

; <label>:41:                                     ; preds = %38
  %42 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 12, !dbg !1628
  %43 = load void (%struct.netif*)*, void (%struct.netif*)** %42, align 8, !dbg !1628, !tbaa !457
  %44 = icmp eq void (%struct.netif*)* %43, null, !dbg !1628
  br i1 %44, label %46, label %45, !dbg !1632

; <label>:45:                                     ; preds = %41
  tail call void %43(%struct.netif* nonnull %0) #12, !dbg !1633
  br label %46, !dbg !1633

; <label>:46:                                     ; preds = %38, %45, %41
  %47 = bitcast %union.netif_ext_callback_args_t* %4 to i8*, !dbg !1635
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %47) #9, !dbg !1635
  %48 = bitcast %union.netif_ext_callback_args_t* %4 to %struct.ipv6_addr_state_changed_s*, !dbg !1636
  store i8 %1, i8* %47, align 8, !dbg !1637, !tbaa !386
  %49 = getelementptr inbounds %struct.ipv6_addr_state_changed_s, %struct.ipv6_addr_state_changed_s* %48, i64 0, i32 1, !dbg !1638
  store i8 %13, i8* %49, align 1, !dbg !1639, !tbaa !386
  %50 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 %11, !dbg !1640
  %51 = getelementptr inbounds %union.netif_ext_callback_args_t, %union.netif_ext_callback_args_t* %4, i64 0, i32 0, i32 1, !dbg !1641
  store %struct.ip_addr* %50, %struct.ip_addr** %51, align 8, !dbg !1642, !tbaa !386
  %52 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** @ext_callback, align 8, !dbg !1649, !tbaa !483
  %53 = icmp eq %struct.netif_ext_callback* %52, null, !dbg !1650
  br i1 %53, label %61, label %54, !dbg !1651

; <label>:54:                                     ; preds = %46, %54
  %55 = phi %struct.netif_ext_callback* [ %59, %54 ], [ %52, %46 ]
  %56 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %55, i64 0, i32 0, !dbg !1652
  %57 = load void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)*, void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)** %56, align 8, !dbg !1652, !tbaa !557
  call void %57(%struct.netif* nonnull %0, i16 zeroext 512, %union.netif_ext_callback_args_t* nonnull %4) #12, !dbg !1653
  %58 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %55, i64 0, i32 1, !dbg !1654
  %59 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** %58, align 8, !dbg !1649, !tbaa !483
  %60 = icmp eq %struct.netif_ext_callback* %59, null, !dbg !1650
  br i1 %60, label %61, label %54, !dbg !1651, !llvm.loop !561

; <label>:61:                                     ; preds = %54, %46
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %47) #9, !dbg !1655
  br label %62, !dbg !1656

; <label>:62:                                     ; preds = %10, %61
  ret void, !dbg !1657
}

; Function Attrs: noredzone
declare dso_local void @nd6_adjust_mld_membership(%struct.netif*, i8 signext, i8 zeroext) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local signext i8 @netif_get_ip6_addr_match(%struct.netif* readonly, %struct.ip6_addr* readonly) local_unnamed_addr #1 !dbg !1658 {
  %3 = icmp eq %struct.netif* %0, null, !dbg !1667
  br i1 %3, label %4, label %5, !dbg !1670

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.19, i64 0, i64 0)) #10, !dbg !1671
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !1674
  tail call void @ukplat_terminate(i32 3) #11, !dbg !1674
  unreachable, !dbg !1674

; <label>:5:                                      ; preds = %2
  %6 = icmp eq %struct.ip6_addr* %1, null, !dbg !1678
  br i1 %6, label %7, label %8, !dbg !1681

; <label>:7:                                      ; preds = %5
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.20, i64 0, i64 0)) #10, !dbg !1682
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !1685
  tail call void @ukplat_terminate(i32 3) #11, !dbg !1685
  unreachable, !dbg !1685

; <label>:8:                                      ; preds = %5
  %9 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 1, !dbg !1689
  %10 = load i8, i8* %9, align 4, !dbg !1689, !tbaa !1691
  %11 = icmp eq i8 %10, 0, !dbg !1689
  br i1 %11, label %17, label %12, !dbg !1693

; <label>:12:                                     ; preds = %8
  %13 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 23, !dbg !1694
  %14 = load i8, i8* %13, align 8, !dbg !1694, !tbaa !467
  %15 = add i8 %14, 1, !dbg !1694
  %16 = icmp eq i8 %10, %15, !dbg !1694
  br i1 %16, label %17, label %49, !dbg !1695

; <label>:17:                                     ; preds = %8, %12
  %18 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 0
  %19 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 1
  %20 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 2
  %21 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 3
  %22 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 0, !dbg !1697
  %23 = load i8, i8* %22, align 1, !dbg !1697, !tbaa !386
  %24 = icmp eq i8 %23, 0, !dbg !1697
  br i1 %24, label %45, label %25, !dbg !1702

; <label>:25:                                     ; preds = %17
  %26 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1703
  %27 = load i32, i32* %26, align 8, !dbg !1703, !tbaa !386
  %28 = load i32, i32* %18, align 4, !dbg !1703, !tbaa !431
  %29 = icmp eq i32 %27, %28, !dbg !1703
  br i1 %29, label %30, label %45, !dbg !1703

; <label>:30:                                     ; preds = %25
  %31 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !1703
  %32 = load i32, i32* %31, align 4, !dbg !1703, !tbaa !386
  %33 = load i32, i32* %19, align 4, !dbg !1703, !tbaa !431
  %34 = icmp eq i32 %32, %33, !dbg !1703
  br i1 %34, label %35, label %45, !dbg !1703

; <label>:35:                                     ; preds = %30
  %36 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !1703
  %37 = load i32, i32* %36, align 8, !dbg !1703, !tbaa !386
  %38 = load i32, i32* %20, align 4, !dbg !1703, !tbaa !431
  %39 = icmp eq i32 %37, %38, !dbg !1703
  br i1 %39, label %40, label %45, !dbg !1703

; <label>:40:                                     ; preds = %35
  %41 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !1703
  %42 = load i32, i32* %41, align 4, !dbg !1703, !tbaa !386
  %43 = load i32, i32* %21, align 4, !dbg !1703, !tbaa !431
  %44 = icmp eq i32 %42, %43, !dbg !1703
  br i1 %44, label %49, label %45, !dbg !1704

; <label>:45:                                     ; preds = %17, %25, %30, %35, %40
  %46 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 1, !dbg !1697
  %47 = load i8, i8* %46, align 1, !dbg !1697, !tbaa !386
  %48 = icmp eq i8 %47, 0, !dbg !1697
  br i1 %48, label %71, label %51, !dbg !1702

; <label>:49:                                     ; preds = %40, %66, %90, %95, %12
  %50 = phi i8 [ -1, %12 ], [ 0, %40 ], [ 1, %66 ], [ 2, %90 ], [ -1, %95 ], !dbg !1705
  ret i8 %50, !dbg !1707

; <label>:51:                                     ; preds = %45
  %52 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 0, !dbg !1703
  %53 = load i32, i32* %52, align 8, !dbg !1703, !tbaa !386
  %54 = load i32, i32* %18, align 4, !dbg !1703, !tbaa !431
  %55 = icmp eq i32 %53, %54, !dbg !1703
  br i1 %55, label %56, label %71, !dbg !1703

; <label>:56:                                     ; preds = %51
  %57 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 1, !dbg !1703
  %58 = load i32, i32* %57, align 4, !dbg !1703, !tbaa !386
  %59 = load i32, i32* %19, align 4, !dbg !1703, !tbaa !431
  %60 = icmp eq i32 %58, %59, !dbg !1703
  br i1 %60, label %61, label %71, !dbg !1703

; <label>:61:                                     ; preds = %56
  %62 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 2, !dbg !1703
  %63 = load i32, i32* %62, align 8, !dbg !1703, !tbaa !386
  %64 = load i32, i32* %20, align 4, !dbg !1703, !tbaa !431
  %65 = icmp eq i32 %63, %64, !dbg !1703
  br i1 %65, label %66, label %71, !dbg !1703

; <label>:66:                                     ; preds = %61
  %67 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 3, !dbg !1703
  %68 = load i32, i32* %67, align 4, !dbg !1703, !tbaa !386
  %69 = load i32, i32* %21, align 4, !dbg !1703, !tbaa !431
  %70 = icmp eq i32 %68, %69, !dbg !1703
  br i1 %70, label %49, label %71, !dbg !1704

; <label>:71:                                     ; preds = %66, %61, %56, %51, %45
  %72 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 2, !dbg !1697
  %73 = load i8, i8* %72, align 1, !dbg !1697, !tbaa !386
  %74 = icmp eq i8 %73, 0, !dbg !1697
  br i1 %74, label %95, label %75, !dbg !1702

; <label>:75:                                     ; preds = %71
  %76 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 0, !dbg !1703
  %77 = load i32, i32* %76, align 8, !dbg !1703, !tbaa !386
  %78 = load i32, i32* %18, align 4, !dbg !1703, !tbaa !431
  %79 = icmp eq i32 %77, %78, !dbg !1703
  br i1 %79, label %80, label %95, !dbg !1703

; <label>:80:                                     ; preds = %75
  %81 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 1, !dbg !1703
  %82 = load i32, i32* %81, align 4, !dbg !1703, !tbaa !386
  %83 = load i32, i32* %19, align 4, !dbg !1703, !tbaa !431
  %84 = icmp eq i32 %82, %83, !dbg !1703
  br i1 %84, label %85, label %95, !dbg !1703

; <label>:85:                                     ; preds = %80
  %86 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 2, !dbg !1703
  %87 = load i32, i32* %86, align 8, !dbg !1703, !tbaa !386
  %88 = load i32, i32* %20, align 4, !dbg !1703, !tbaa !431
  %89 = icmp eq i32 %87, %88, !dbg !1703
  br i1 %89, label %90, label %95, !dbg !1703

; <label>:90:                                     ; preds = %85
  %91 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 3, !dbg !1703
  %92 = load i32, i32* %91, align 4, !dbg !1703, !tbaa !386
  %93 = load i32, i32* %21, align 4, !dbg !1703, !tbaa !431
  %94 = icmp eq i32 %92, %93, !dbg !1703
  br i1 %94, label %49, label %95, !dbg !1704

; <label>:95:                                     ; preds = %90, %85, %80, %75, %71
  br label %49
}

; Function Attrs: noredzone nounwind
define dso_local void @netif_create_ip6_linklocal_address(%struct.netif*, i8 zeroext) local_unnamed_addr #1 !dbg !1708 {
  %3 = icmp eq %struct.netif* %0, null, !dbg !1716
  br i1 %3, label %4, label %5, !dbg !1719

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.21, i64 0, i64 0)) #10, !dbg !1720
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !1723
  tail call void @ukplat_terminate(i32 3) #11, !dbg !1723
  unreachable, !dbg !1723

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1727
  store i32 33022, i32* %6, align 8, !dbg !1728, !tbaa !386
  %7 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !1729
  store i32 0, i32* %7, align 4, !dbg !1730, !tbaa !386
  %8 = icmp eq i8 %1, 0, !dbg !1731
  br i1 %8, label %44, label %9, !dbg !1733

; <label>:9:                                      ; preds = %5
  %10 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 0, !dbg !1734
  %11 = load i8, i8* %10, align 2, !dbg !1734, !tbaa !386
  %12 = xor i8 %11, 2, !dbg !1736
  %13 = zext i8 %12 to i32, !dbg !1736
  %14 = shl nuw i32 %13, 24, !dbg !1737
  %15 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 1, !dbg !1738
  %16 = load i8, i8* %15, align 1, !dbg !1738, !tbaa !386
  %17 = zext i8 %16 to i32, !dbg !1739
  %18 = shl nuw nsw i32 %17, 16, !dbg !1740
  %19 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 2, !dbg !1741
  %20 = load i8, i8* %19, align 2, !dbg !1741, !tbaa !386
  %21 = zext i8 %20 to i32, !dbg !1742
  %22 = shl nuw nsw i32 %21, 8, !dbg !1743
  %23 = or i32 %18, %14, !dbg !1744
  %24 = or i32 %23, %22, !dbg !1745
  %25 = or i32 %24, 255, !dbg !1745
  %26 = tail call i32 @lwip_htonl(i32 %25) #12, !dbg !1746
  %27 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !1747
  store i32 %26, i32* %27, align 8, !dbg !1748, !tbaa !386
  %28 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 3, !dbg !1749
  %29 = load i8, i8* %28, align 1, !dbg !1749, !tbaa !386
  %30 = zext i8 %29 to i32, !dbg !1750
  %31 = shl nuw nsw i32 %30, 16, !dbg !1751
  %32 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 4, !dbg !1752
  %33 = load i8, i8* %32, align 2, !dbg !1752, !tbaa !386
  %34 = zext i8 %33 to i32, !dbg !1753
  %35 = shl nuw nsw i32 %34, 8, !dbg !1754
  %36 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 5, !dbg !1755
  %37 = load i8, i8* %36, align 1, !dbg !1755, !tbaa !386
  %38 = zext i8 %37 to i32, !dbg !1756
  %39 = or i32 %31, %35, !dbg !1757
  %40 = or i32 %39, %38, !dbg !1757
  %41 = or i32 %40, -33554432, !dbg !1757
  %42 = tail call i32 @lwip_htonl(i32 %41) #12, !dbg !1758
  %43 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !1759
  store i32 %42, i32* %43, align 4, !dbg !1760, !tbaa !386
  br label %74, !dbg !1761

; <label>:44:                                     ; preds = %5
  %45 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !1762
  store i32 0, i32* %45, align 8, !dbg !1764, !tbaa !386
  %46 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !1765
  store i32 0, i32* %46, align 4, !dbg !1766, !tbaa !386
  %47 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 20, !dbg !1769
  br label %48, !dbg !1772

; <label>:48:                                     ; preds = %44, %54
  %49 = phi i32 [ 0, %44 ], [ %72, %54 ]
  %50 = phi i8 [ 3, %44 ], [ %57, %54 ]
  %51 = load i8, i8* %47, align 4, !dbg !1769, !tbaa !1773
  %52 = zext i8 %51 to i32, !dbg !1774
  %53 = icmp ult i32 %49, %52, !dbg !1774
  br i1 %53, label %54, label %74, !dbg !1775

; <label>:54:                                     ; preds = %48
  %55 = icmp eq i32 %49, 4, !dbg !1776
  %56 = sext i1 %55 to i8, !dbg !1779
  %57 = add i8 %50, %56, !dbg !1779
  %58 = xor i32 %49, -1, !dbg !1780
  %59 = add nsw i32 %52, %58, !dbg !1780
  %60 = sext i32 %59 to i64, !dbg !1781
  %61 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 %60, !dbg !1781
  %62 = load i8, i8* %61, align 1, !dbg !1781, !tbaa !386
  %63 = zext i8 %62 to i32, !dbg !1782
  %64 = shl nuw nsw i32 %49, 3, !dbg !1783
  %65 = and i32 %64, 24, !dbg !1783
  %66 = shl i32 %63, %65, !dbg !1784
  %67 = tail call i32 @lwip_htonl(i32 %66) #12, !dbg !1785
  %68 = zext i8 %57 to i64, !dbg !1786
  %69 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 %68, !dbg !1786
  %70 = load i32, i32* %69, align 4, !dbg !1787, !tbaa !386
  %71 = or i32 %70, %67, !dbg !1787
  store i32 %71, i32* %69, align 4, !dbg !1787, !tbaa !386
  %72 = add nuw nsw i32 %49, 1, !dbg !1788
  %73 = icmp ult i32 %72, 8, !dbg !1789
  br i1 %73, label %48, label %74, !dbg !1772, !llvm.loop !1790

; <label>:74:                                     ; preds = %48, %54, %9
  %75 = load i32, i32* %6, align 8, !dbg !1792, !tbaa !386
  %76 = and i32 %75, 49407, !dbg !1792
  %77 = icmp eq i32 %76, 33022, !dbg !1792
  br i1 %77, label %78, label %82, !dbg !1792

; <label>:78:                                     ; preds = %74
  %79 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 23, !dbg !1792
  %80 = load i8, i8* %79, align 8, !dbg !1792, !tbaa !467
  %81 = add i8 %80, 1, !dbg !1792
  br label %82, !dbg !1792

; <label>:82:                                     ; preds = %74, %78
  %83 = phi i8 [ %81, %78 ], [ 0, %74 ]
  %84 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, i32 1, !dbg !1792
  store i8 %83, i8* %84, align 8, !dbg !1792, !tbaa !386
  tail call void @netif_ip6_addr_set_state(%struct.netif* nonnull %0, i8 signext 0, i8 zeroext 8) #10, !dbg !1793
  ret void, !dbg !1794
}

; Function Attrs: noredzone
declare dso_local i32 @lwip_htonl(i32) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local signext i8 @netif_add_ip6_address(%struct.netif*, %struct.ip6_addr*, i8*) local_unnamed_addr #1 !dbg !1795 {
  %4 = icmp eq %struct.netif* %0, null, !dbg !1807
  br i1 %4, label %5, label %6, !dbg !1810

; <label>:5:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.22, i64 0, i64 0)) #10, !dbg !1811
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !1814
  tail call void @ukplat_terminate(i32 3) #11, !dbg !1814
  unreachable, !dbg !1814

; <label>:6:                                      ; preds = %3
  %7 = icmp eq %struct.ip6_addr* %1, null, !dbg !1818
  br i1 %7, label %8, label %9, !dbg !1821

; <label>:8:                                      ; preds = %6
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0)) #10, !dbg !1822
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !1825
  tail call void @ukplat_terminate(i32 3) #11, !dbg !1825
  unreachable, !dbg !1825

; <label>:9:                                      ; preds = %6
  %10 = tail call signext i8 @netif_get_ip6_addr_match(%struct.netif* nonnull %0, %struct.ip6_addr* nonnull %1) #10, !dbg !1829
  %11 = icmp sgt i8 %10, -1, !dbg !1831
  br i1 %11, label %12, label %15, !dbg !1833

; <label>:12:                                     ; preds = %9
  %13 = icmp eq i8* %2, null, !dbg !1834
  br i1 %13, label %60, label %14, !dbg !1837

; <label>:14:                                     ; preds = %12
  store i8 %10, i8* %2, align 1, !dbg !1838, !tbaa !386
  br label %60, !dbg !1840

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 0, !dbg !1841
  %17 = load i32, i32* %16, align 4, !dbg !1841, !tbaa !431
  %18 = and i32 %17, 49407, !dbg !1841
  %19 = icmp ne i32 %18, 33022, !dbg !1841
  %20 = zext i1 %19 to i8, !dbg !1841
  %21 = zext i1 %19 to i64, !dbg !1843
  %22 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 %21, !dbg !1843
  %23 = load i8, i8* %22, align 1, !dbg !1843, !tbaa !386
  %24 = icmp eq i8 %23, 0, !dbg !1843
  br i1 %24, label %25, label %51, !dbg !1847

; <label>:25:                                     ; preds = %65, %51, %15
  %26 = phi i8 [ %20, %15 ], [ %52, %51 ], [ %63, %65 ]
  %27 = phi i64 [ %21, %15 ], [ %53, %51 ], [ %66, %65 ], !dbg !1843
  %28 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 %27, i32 0, i32 0, i32 0, i64 0, !dbg !1848
  store i32 %17, i32* %28, align 8, !dbg !1848, !tbaa !386
  %29 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 1, !dbg !1848
  %30 = load i32, i32* %29, align 4, !dbg !1848, !tbaa !431
  %31 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 %27, i32 0, i32 0, i32 0, i64 1, !dbg !1848
  store i32 %30, i32* %31, align 4, !dbg !1848, !tbaa !386
  %32 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 2, !dbg !1848
  %33 = load i32, i32* %32, align 4, !dbg !1848, !tbaa !431
  %34 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 %27, i32 0, i32 0, i32 0, i64 2, !dbg !1848
  store i32 %33, i32* %34, align 8, !dbg !1848, !tbaa !386
  %35 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 3, !dbg !1848
  %36 = load i32, i32* %35, align 4, !dbg !1848, !tbaa !431
  %37 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 %27, i32 0, i32 0, i32 0, i64 3, !dbg !1848
  store i32 %36, i32* %37, align 4, !dbg !1848, !tbaa !386
  %38 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 1, !dbg !1848
  %39 = load i8, i8* %38, align 4, !dbg !1848, !tbaa !1691
  %40 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 %27, i32 0, i32 0, i32 1, !dbg !1848
  store i8 %39, i8* %40, align 8, !dbg !1848, !tbaa !386
  %41 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 %27, i32 1, !dbg !1852
  store i8 6, i8* %41, align 4, !dbg !1852, !tbaa !426
  %42 = icmp eq i32 %18, 33022, !dbg !1854
  br i1 %42, label %43, label %47, !dbg !1854

; <label>:43:                                     ; preds = %25
  %44 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 23, !dbg !1854
  %45 = load i8, i8* %44, align 8, !dbg !1854, !tbaa !467
  %46 = add i8 %45, 1, !dbg !1854
  br label %47, !dbg !1854

; <label>:47:                                     ; preds = %25, %43
  %48 = phi i8 [ %46, %43 ], [ 0, %25 ]
  store i8 %48, i8* %40, align 8, !dbg !1854, !tbaa !386
  tail call void @netif_ip6_addr_set_state(%struct.netif* nonnull %0, i8 signext %26, i8 zeroext 8) #10, !dbg !1855
  %49 = icmp eq i8* %2, null, !dbg !1856
  br i1 %49, label %60, label %50, !dbg !1858

; <label>:50:                                     ; preds = %47
  store i8 %26, i8* %2, align 1, !dbg !1859, !tbaa !386
  br label %60, !dbg !1861

; <label>:51:                                     ; preds = %15
  %52 = select i1 %19, i8 2, i8 1, !dbg !1862
  %53 = zext i8 %52 to i64, !dbg !1843
  %54 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 %53, !dbg !1843
  %55 = load i8, i8* %54, align 1, !dbg !1843, !tbaa !386
  %56 = icmp eq i8 %55, 0, !dbg !1843
  br i1 %56, label %25, label %62, !dbg !1847

; <label>:57:                                     ; preds = %65, %62
  %58 = icmp eq i8* %2, null, !dbg !1863
  br i1 %58, label %60, label %59, !dbg !1865

; <label>:59:                                     ; preds = %57
  store i8 -1, i8* %2, align 1, !dbg !1866, !tbaa !386
  br label %60, !dbg !1868

; <label>:60:                                     ; preds = %59, %57, %50, %47, %14, %12
  %61 = phi i8 [ 0, %12 ], [ 0, %14 ], [ 0, %47 ], [ 0, %50 ], [ -6, %57 ], [ -6, %59 ], !dbg !1869
  ret i8 %61, !dbg !1870

; <label>:62:                                     ; preds = %51
  %63 = add nuw nsw i8 %52, 1, !dbg !1862
  %64 = icmp ult i8 %63, 3, !dbg !1871
  br i1 %64, label %65, label %57, !dbg !1872, !llvm.loop !1873

; <label>:65:                                     ; preds = %62
  %66 = zext i8 %63 to i64, !dbg !1843
  %67 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 %66, !dbg !1843
  %68 = load i8, i8* %67, align 1, !dbg !1843, !tbaa !386
  %69 = icmp eq i8 %68, 0, !dbg !1843
  br i1 %69, label %25, label %57, !dbg !1847
}

; Function Attrs: noredzone nounwind
define dso_local zeroext i8 @netif_name_to_index(i8*) local_unnamed_addr #1 !dbg !1875 {
  %2 = icmp eq i8* %0, null, !dbg !1891
  br i1 %2, label %32, label %3, !dbg !1893

; <label>:3:                                      ; preds = %1
  %4 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1894
  %5 = tail call i32 @atoi(i8* nonnull %4) #12, !dbg !1895
  %6 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1897
  %7 = load %struct.netif*, %struct.netif** @netif_list, align 8, !dbg !1902, !tbaa !483
  %8 = icmp eq %struct.netif* %7, null, !dbg !1903
  br i1 %8, label %32, label %9, !dbg !1902

; <label>:9:                                      ; preds = %3
  %10 = trunc i32 %5 to i8
  br label %11, !dbg !1902

; <label>:11:                                     ; preds = %26, %9
  %12 = phi %struct.netif* [ %7, %9 ], [ %28, %26 ]
  %13 = getelementptr inbounds %struct.netif, %struct.netif* %12, i64 0, i32 23, !dbg !1904
  %14 = load i8, i8* %13, align 8, !dbg !1904, !tbaa !467
  %15 = icmp eq i8 %14, %10, !dbg !1905
  br i1 %15, label %16, label %26, !dbg !1906

; <label>:16:                                     ; preds = %11
  %17 = load i8, i8* %0, align 1, !dbg !1907, !tbaa !386
  %18 = getelementptr inbounds %struct.netif, %struct.netif* %12, i64 0, i32 22, i64 0, !dbg !1908
  %19 = load i8, i8* %18, align 2, !dbg !1908, !tbaa !386
  %20 = icmp eq i8 %17, %19, !dbg !1909
  br i1 %20, label %21, label %26, !dbg !1910

; <label>:21:                                     ; preds = %16
  %22 = load i8, i8* %6, align 1, !dbg !1897, !tbaa !386
  %23 = getelementptr inbounds %struct.netif, %struct.netif* %12, i64 0, i32 22, i64 1, !dbg !1911
  %24 = load i8, i8* %23, align 1, !dbg !1911, !tbaa !386
  %25 = icmp eq i8 %22, %24, !dbg !1912
  br i1 %25, label %30, label %26, !dbg !1913

; <label>:26:                                     ; preds = %21, %16, %11
  %27 = getelementptr inbounds %struct.netif, %struct.netif* %12, i64 0, i32 0, !dbg !1903
  %28 = load %struct.netif*, %struct.netif** %27, align 8, !dbg !1902, !tbaa !483
  %29 = icmp eq %struct.netif* %28, null, !dbg !1903
  br i1 %29, label %32, label %11, !dbg !1902, !llvm.loop !1914

; <label>:30:                                     ; preds = %21
  %31 = add i8 %10, 1, !dbg !1918
  br label %32, !dbg !1921

; <label>:32:                                     ; preds = %26, %3, %1, %30
  %33 = phi i8 [ %31, %30 ], [ 0, %1 ], [ 0, %3 ], [ 0, %26 ], !dbg !1922
  ret i8 %33, !dbg !1923
}

; Function Attrs: noredzone nounwind
define dso_local %struct.netif* @netif_find(i8*) local_unnamed_addr #1 !dbg !1883 {
  %2 = icmp eq i8* %0, null, !dbg !1925
  br i1 %2, label %30, label %3, !dbg !1926

; <label>:3:                                      ; preds = %1
  %4 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1927
  %5 = tail call i32 @atoi(i8* nonnull %4) #12, !dbg !1928
  %6 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1930
  %7 = load %struct.netif*, %struct.netif** @netif_list, align 8, !dbg !1915, !tbaa !483
  %8 = icmp eq %struct.netif* %7, null, !dbg !1931
  br i1 %8, label %30, label %9, !dbg !1915

; <label>:9:                                      ; preds = %3
  %10 = trunc i32 %5 to i8
  br label %11, !dbg !1915

; <label>:11:                                     ; preds = %9, %26
  %12 = phi %struct.netif* [ %7, %9 ], [ %28, %26 ]
  %13 = getelementptr inbounds %struct.netif, %struct.netif* %12, i64 0, i32 23, !dbg !1932
  %14 = load i8, i8* %13, align 8, !dbg !1932, !tbaa !467
  %15 = icmp eq i8 %14, %10, !dbg !1933
  br i1 %15, label %16, label %26, !dbg !1934

; <label>:16:                                     ; preds = %11
  %17 = load i8, i8* %0, align 1, !dbg !1935, !tbaa !386
  %18 = getelementptr inbounds %struct.netif, %struct.netif* %12, i64 0, i32 22, i64 0, !dbg !1936
  %19 = load i8, i8* %18, align 2, !dbg !1936, !tbaa !386
  %20 = icmp eq i8 %17, %19, !dbg !1937
  br i1 %20, label %21, label %26, !dbg !1938

; <label>:21:                                     ; preds = %16
  %22 = load i8, i8* %6, align 1, !dbg !1930, !tbaa !386
  %23 = getelementptr inbounds %struct.netif, %struct.netif* %12, i64 0, i32 22, i64 1, !dbg !1939
  %24 = load i8, i8* %23, align 1, !dbg !1939, !tbaa !386
  %25 = icmp eq i8 %22, %24, !dbg !1940
  br i1 %25, label %30, label %26, !dbg !1941

; <label>:26:                                     ; preds = %11, %16, %21
  %27 = getelementptr inbounds %struct.netif, %struct.netif* %12, i64 0, i32 0, !dbg !1931
  %28 = load %struct.netif*, %struct.netif** %27, align 8, !dbg !1915, !tbaa !483
  %29 = icmp eq %struct.netif* %28, null, !dbg !1931
  br i1 %29, label %30, label %11, !dbg !1915, !llvm.loop !1914

; <label>:30:                                     ; preds = %21, %26, %3, %1
  %31 = phi %struct.netif* [ null, %1 ], [ null, %3 ], [ %12, %21 ], [ null, %26 ], !dbg !1942
  ret %struct.netif* %31, !dbg !1943
}

; Function Attrs: noredzone nounwind
define dso_local i8* @netif_index_to_name(i8 zeroext, i8*) local_unnamed_addr #1 !dbg !1944 {
  %3 = icmp eq i8 %0, 0, !dbg !1962
  br i1 %3, label %26, label %4, !dbg !1964

; <label>:4:                                      ; preds = %2
  %5 = load %struct.netif*, %struct.netif** @netif_list, align 8, !dbg !1965, !tbaa !483
  %6 = icmp eq %struct.netif* %5, null, !dbg !1969
  br i1 %6, label %26, label %7, !dbg !1965

; <label>:7:                                      ; preds = %4, %13
  %8 = phi %struct.netif* [ %15, %13 ], [ %5, %4 ]
  %9 = getelementptr inbounds %struct.netif, %struct.netif* %8, i64 0, i32 23, !dbg !1971
  %10 = load i8, i8* %9, align 8, !dbg !1971, !tbaa !467
  %11 = add i8 %10, 1, !dbg !1971
  %12 = icmp eq i8 %11, %0, !dbg !1974
  br i1 %12, label %17, label %13, !dbg !1975

; <label>:13:                                     ; preds = %7
  %14 = getelementptr inbounds %struct.netif, %struct.netif* %8, i64 0, i32 0, !dbg !1969
  %15 = load %struct.netif*, %struct.netif** %14, align 8, !dbg !1965, !tbaa !483
  %16 = icmp eq %struct.netif* %15, null, !dbg !1969
  br i1 %16, label %26, label %7, !dbg !1965, !llvm.loop !1976

; <label>:17:                                     ; preds = %7
  %18 = getelementptr inbounds %struct.netif, %struct.netif* %8, i64 0, i32 22, i64 0, !dbg !1980
  %19 = load i8, i8* %18, align 2, !dbg !1980, !tbaa !386
  store i8 %19, i8* %1, align 1, !dbg !1983, !tbaa !386
  %20 = getelementptr inbounds %struct.netif, %struct.netif* %8, i64 0, i32 22, i64 1, !dbg !1984
  %21 = load i8, i8* %20, align 1, !dbg !1984, !tbaa !386
  %22 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1985
  store i8 %21, i8* %22, align 1, !dbg !1986, !tbaa !386
  %23 = getelementptr inbounds i8, i8* %1, i64 2, !dbg !1987
  %24 = zext i8 %0 to i32, !dbg !1988
  %25 = add nsw i32 %24, -1, !dbg !1988
  tail call void @lwip_itoa(i8* nonnull %23, i64 4, i32 %25) #12, !dbg !1989
  br label %26, !dbg !1990

; <label>:26:                                     ; preds = %13, %4, %2, %17
  %27 = phi i8* [ %1, %17 ], [ null, %2 ], [ null, %4 ], [ null, %13 ], !dbg !1991
  ret i8* %27, !dbg !1992
}

; Function Attrs: noredzone nounwind readonly
define dso_local %struct.netif* @netif_get_by_index(i8 zeroext) local_unnamed_addr #8 !dbg !1955 {
  %2 = icmp eq i8 %0, 0, !dbg !1994
  br i1 %2, label %16, label %3, !dbg !1995

; <label>:3:                                      ; preds = %1
  %4 = load %struct.netif*, %struct.netif** @netif_list, align 8, !dbg !1977, !tbaa !483
  %5 = icmp eq %struct.netif* %4, null, !dbg !1997
  br i1 %5, label %16, label %6, !dbg !1977

; <label>:6:                                      ; preds = %3, %12
  %7 = phi %struct.netif* [ %14, %12 ], [ %4, %3 ]
  %8 = getelementptr inbounds %struct.netif, %struct.netif* %7, i64 0, i32 23, !dbg !1998
  %9 = load i8, i8* %8, align 8, !dbg !1998, !tbaa !467
  %10 = add i8 %9, 1, !dbg !1998
  %11 = icmp eq i8 %10, %0, !dbg !1999
  br i1 %11, label %16, label %12, !dbg !2000

; <label>:12:                                     ; preds = %6
  %13 = getelementptr inbounds %struct.netif, %struct.netif* %7, i64 0, i32 0, !dbg !1997
  %14 = load %struct.netif*, %struct.netif** %13, align 8, !dbg !1977, !tbaa !483
  %15 = icmp eq %struct.netif* %14, null, !dbg !1997
  br i1 %15, label %16, label %6, !dbg !1977, !llvm.loop !1976

; <label>:16:                                     ; preds = %6, %12, %3, %1
  %17 = phi %struct.netif* [ null, %1 ], [ null, %3 ], [ %7, %6 ], [ null, %12 ], !dbg !2001
  ret %struct.netif* %17, !dbg !2002
}

; Function Attrs: noredzone
declare dso_local void @lwip_itoa(i8*, i64, i32) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local i32 @atoi(i8*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local void @netif_add_ext_callback(%struct.netif_ext_callback*, void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)*) local_unnamed_addr #1 !dbg !2003 {
  %3 = icmp eq %struct.netif_ext_callback* %0, null, !dbg !2011
  br i1 %3, label %4, label %5, !dbg !2014

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i64 0, i64 0)) #10, !dbg !2015
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !2018
  tail call void @ukplat_terminate(i32 3) #11, !dbg !2018
  unreachable, !dbg !2018

; <label>:5:                                      ; preds = %2
  %6 = icmp eq void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)* %1, null, !dbg !2022
  br i1 %6, label %7, label %8, !dbg !2025

; <label>:7:                                      ; preds = %5
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0)) #10, !dbg !2026
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !2029
  tail call void @ukplat_terminate(i32 3) #11, !dbg !2029
  unreachable, !dbg !2029

; <label>:8:                                      ; preds = %5
  %9 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %0, i64 0, i32 0, !dbg !2033
  store void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)* %1, void (%struct.netif*, i16, %union.netif_ext_callback_args_t*)** %9, align 8, !dbg !2034, !tbaa !557
  %10 = load i64, i64* bitcast (%struct.netif_ext_callback** @ext_callback to i64*), align 8, !dbg !2035, !tbaa !483
  %11 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %0, i64 0, i32 1, !dbg !2036
  %12 = bitcast %struct.netif_ext_callback** %11 to i64*, !dbg !2037
  store i64 %10, i64* %12, align 8, !dbg !2037, !tbaa !2038
  store %struct.netif_ext_callback* %0, %struct.netif_ext_callback** @ext_callback, align 8, !dbg !2039, !tbaa !483
  ret void, !dbg !2040
}

; Function Attrs: noredzone nounwind
define dso_local void @netif_remove_ext_callback(%struct.netif_ext_callback*) local_unnamed_addr #1 !dbg !2041 {
  %2 = icmp eq %struct.netif_ext_callback* %0, null, !dbg !2049
  br i1 %2, label %3, label %4, !dbg !2052

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i64 0, i64 0)) #10, !dbg !2053
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !2056
  tail call void @ukplat_terminate(i32 3) #11, !dbg !2056
  unreachable, !dbg !2056

; <label>:4:                                      ; preds = %1
  %5 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** @ext_callback, align 8, !dbg !2060, !tbaa !483
  %6 = icmp eq %struct.netif_ext_callback* %5, null, !dbg !2062
  br i1 %6, label %26, label %7, !dbg !2063

; <label>:7:                                      ; preds = %4
  %8 = icmp eq %struct.netif_ext_callback* %5, %0, !dbg !2064
  br i1 %8, label %9, label %13, !dbg !2066

; <label>:9:                                      ; preds = %7
  %10 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %0, i64 0, i32 1, !dbg !2067
  %11 = bitcast %struct.netif_ext_callback** %10 to i64*, !dbg !2067
  %12 = load i64, i64* %11, align 8, !dbg !2067, !tbaa !2038
  store i64 %12, i64* bitcast (%struct.netif_ext_callback** @ext_callback to i64*), align 8, !dbg !2069, !tbaa !483
  br label %26, !dbg !2070

; <label>:13:                                     ; preds = %7, %18
  %14 = phi %struct.netif_ext_callback* [ %16, %18 ], [ %5, %7 ], !dbg !2071
  %15 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %14, i64 0, i32 1, !dbg !2071
  %16 = load %struct.netif_ext_callback*, %struct.netif_ext_callback** %15, align 8, !dbg !2071, !tbaa !2038
  %17 = icmp eq %struct.netif_ext_callback* %16, null, !dbg !2077
  br i1 %17, label %26, label %18, !dbg !2078

; <label>:18:                                     ; preds = %13
  %19 = icmp eq %struct.netif_ext_callback* %16, %0, !dbg !2079
  br i1 %19, label %20, label %13, !dbg !2082, !llvm.loop !2083

; <label>:20:                                     ; preds = %18
  %21 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %14, i64 0, i32 1, !dbg !2071
  %22 = getelementptr inbounds %struct.netif_ext_callback, %struct.netif_ext_callback* %0, i64 0, i32 1, !dbg !2085
  %23 = bitcast %struct.netif_ext_callback** %22 to i64*, !dbg !2085
  %24 = load i64, i64* %23, align 8, !dbg !2085, !tbaa !2038
  %25 = bitcast %struct.netif_ext_callback** %21 to i64*, !dbg !2087
  store i64 %24, i64* %25, align 8, !dbg !2087, !tbaa !2038
  store %struct.netif_ext_callback* null, %struct.netif_ext_callback** %22, align 8, !dbg !2088, !tbaa !2038
  br label %26, !dbg !2089

; <label>:26:                                     ; preds = %13, %9, %4, %20
  ret void, !dbg !2090
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #9

; Function Attrs: noredzone
declare dso_local void @_uk_vprintk(i32, i8*, i8*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #9

; Function Attrs: noredzone
declare dso_local void @tcp_netif_ip_addr_changed(%struct.ip_addr*, %struct.ip_addr*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @udp_netif_ip_addr_changed(%struct.ip_addr*, %struct.ip_addr*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local signext i8 @etharp_request(%struct.netif*, %struct.ip4_addr*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @mld6_report_groups(%struct.netif*) local_unnamed_addr #5

; Function Attrs: nounwind readnone speculatable

attributes #0 = { norecurse noredzone nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { inlinehint noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { noredzone nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin noredzone }
attributes #11 = { nobuiltin noredzone noreturn nounwind }
attributes #12 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!251, !252, !253}
!llvm.ident = !{!254}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "netif_num", scope: !2, file: !3, line: 115, type: !47, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !45, globals: !86)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/netif.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{!5, !11, !18, !24}
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
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !25, line: 53, baseType: !26, size: 32, elements: !27)
!25 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/err.h", directory: "/root/.unikraft/apps/redis/build")
!26 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!27 = !{!28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44}
!28 = !DIEnumerator(name: "ERR_OK", value: 0)
!29 = !DIEnumerator(name: "ERR_MEM", value: -1)
!30 = !DIEnumerator(name: "ERR_BUF", value: -2)
!31 = !DIEnumerator(name: "ERR_TIMEOUT", value: -3)
!32 = !DIEnumerator(name: "ERR_RTE", value: -4)
!33 = !DIEnumerator(name: "ERR_INPROGRESS", value: -5)
!34 = !DIEnumerator(name: "ERR_VAL", value: -6)
!35 = !DIEnumerator(name: "ERR_WOULDBLOCK", value: -7)
!36 = !DIEnumerator(name: "ERR_USE", value: -8)
!37 = !DIEnumerator(name: "ERR_ALREADY", value: -9)
!38 = !DIEnumerator(name: "ERR_ISCONN", value: -10)
!39 = !DIEnumerator(name: "ERR_CONN", value: -11)
!40 = !DIEnumerator(name: "ERR_IF", value: -12)
!41 = !DIEnumerator(name: "ERR_ABRT", value: -13)
!42 = !DIEnumerator(name: "ERR_RST", value: -14)
!43 = !DIEnumerator(name: "ERR_CLSD", value: -15)
!44 = !DIEnumerator(name: "ERR_ARG", value: -16)
!45 = !{!46, !47, !54, !57, !64, !84}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8_t", file: !48, line: 125, baseType: !49)
!48 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/arch.h", directory: "/root/.unikraft/apps/redis/build")
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !50, line: 24, baseType: !51)
!50 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !52, line: 43, baseType: !53)
!52 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!53 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32_t", file: !48, line: 129, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !50, line: 48, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !52, line: 79, baseType: !7)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip4_addr_t", file: !60, line: 57, baseType: !61)
!60 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip4_addr.h", directory: "/root/.unikraft/apps/redis/build")
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip4_addr", file: !60, line: 51, size: 32, elements: !62)
!62 = !{!63}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !61, file: !60, line: 52, baseType: !54, size: 32)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_addr_t", file: !19, line: 76, baseType: !67)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_addr", file: !19, line: 69, size: 192, elements: !68)
!68 = !{!69, !83}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "u_addr", scope: !67, file: !19, line: 73, baseType: !70, size: 160)
!70 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !67, file: !19, line: 70, size: 160, elements: !71)
!71 = !{!72, !82}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "ip6", scope: !70, file: !19, line: 71, baseType: !73, size: 160)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip6_addr_t", file: !74, line: 67, baseType: !75)
!74 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip6_addr.h", directory: "/root/.unikraft/apps/redis/build")
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip6_addr", file: !74, line: 59, size: 160, elements: !76)
!76 = !{!77, !81}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !75, file: !74, line: 60, baseType: !78, size: 128)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 128, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 4)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "zone", scope: !75, file: !74, line: 62, baseType: !47, size: 8, offset: 128)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "ip4", scope: !70, file: !19, line: 72, baseType: !59, size: 32)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !67, file: !19, line: 75, baseType: !47, size: 8, offset: 160)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!86 = !{!87, !221, !223, !0, !225, !249}
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(name: "ext_callback", scope: !2, file: !3, line: 106, type: !89, isLocal: true, isDefinition: true)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_ext_callback_t", file: !6, line: 652, baseType: !91)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netif_ext_callback", file: !6, line: 648, size: 128, elements: !92)
!92 = !{!93, !219}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "callback_fn", scope: !91, file: !6, line: 650, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_ext_callback_fn", file: !6, line: 644, baseType: !95)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DISubroutineType(types: !97)
!97 = !{null, !98, !188, !189}
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netif", file: !6, line: 260, size: 2240, elements: !100)
!100 = !{!101, !102, !103, !104, !105, !109, !111, !113, !114, !140, !145, !150, !155, !160, !161, !162, !166, !167, !168, !169, !173, !174, !175, !180, !181, !182, !183}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !99, file: !6, line: 263, baseType: !98, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "ip_addr", scope: !99, file: !6, line: 268, baseType: !66, size: 192, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "netmask", scope: !99, file: !6, line: 269, baseType: !66, size: 192, offset: 256)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "gw", scope: !99, file: !6, line: 270, baseType: !66, size: 192, offset: 448)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr", scope: !99, file: !6, line: 274, baseType: !106, size: 576, offset: 640)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 576, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 3)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_state", scope: !99, file: !6, line: 277, baseType: !110, size: 24, offset: 1216)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 24, elements: !107)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_valid_life", scope: !99, file: !6, line: 282, baseType: !112, size: 96, offset: 1248)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 96, elements: !107)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_pref_life", scope: !99, file: !6, line: 283, baseType: !112, size: 96, offset: 1344)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !99, file: !6, line: 288, baseType: !115, size: 64, offset: 1472)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_input_fn", file: !6, line: 178, baseType: !116)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DISubroutineType(types: !118)
!118 = !{!119, !124, !98}
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "err_t", file: !25, line: 96, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8_t", file: !48, line: 126, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !50, line: 20, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !52, line: 41, baseType: !123)
!123 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pbuf", file: !126, line: 186, size: 192, elements: !127)
!126 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/pbuf.h", directory: "/root/.unikraft/apps/redis/build")
!127 = !{!128, !129, !130, !135, !136, !137, !138, !139}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !125, file: !126, line: 188, baseType: !124, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !125, file: !126, line: 191, baseType: !46, size: 64, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "tot_len", scope: !125, file: !126, line: 200, baseType: !131, size: 16, offset: 128)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16_t", file: !48, line: 127, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !50, line: 36, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !52, line: 57, baseType: !134)
!134 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !125, file: !126, line: 203, baseType: !131, size: 16, offset: 144)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "type_internal", scope: !125, file: !126, line: 208, baseType: !47, size: 8, offset: 160)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !125, file: !126, line: 211, baseType: !47, size: 8, offset: 168)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !125, file: !126, line: 218, baseType: !47, size: 8, offset: 176)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "if_idx", scope: !125, file: !126, line: 221, baseType: !47, size: 8, offset: 184)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !99, file: !6, line: 294, baseType: !141, size: 64, offset: 1536)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_output_fn", file: !6, line: 189, baseType: !142)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DISubroutineType(types: !144)
!144 = !{!119, !98, !124, !57}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "linkoutput", scope: !99, file: !6, line: 299, baseType: !146, size: 64, offset: 1600)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_linkoutput_fn", file: !6, line: 212, baseType: !147)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DISubroutineType(types: !149)
!149 = !{!119, !98, !124}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "output_ip6", scope: !99, file: !6, line: 305, baseType: !151, size: 64, offset: 1664)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_output_ip6_fn", file: !6, line: 202, baseType: !152)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DISubroutineType(types: !154)
!154 = !{!119, !98, !124, !84}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "status_callback", scope: !99, file: !6, line: 310, baseType: !156, size: 64, offset: 1728)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_status_callback_fn", file: !6, line: 214, baseType: !157)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DISubroutineType(types: !159)
!159 = !{null, !98}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "remove_callback", scope: !99, file: !6, line: 319, baseType: !156, size: 64, offset: 1792)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !99, file: !6, line: 323, baseType: !46, size: 64, offset: 1856)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !99, file: !6, line: 325, baseType: !163, size: 64, offset: 1920)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 64, elements: !164)
!164 = !{!165}
!165 = !DISubrange(count: 1)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "chksum_flags", scope: !99, file: !6, line: 332, baseType: !131, size: 16, offset: 1984)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !99, file: !6, line: 335, baseType: !131, size: 16, offset: 2000)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "mtu6", scope: !99, file: !6, line: 338, baseType: !131, size: 16, offset: 2016)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "hwaddr", scope: !99, file: !6, line: 341, baseType: !170, size: 48, offset: 2032)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 48, elements: !171)
!171 = !{!172}
!172 = !DISubrange(count: 6)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "hwaddr_len", scope: !99, file: !6, line: 343, baseType: !47, size: 8, offset: 2080)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !99, file: !6, line: 345, baseType: !47, size: 8, offset: 2088)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !99, file: !6, line: 347, baseType: !176, size: 16, offset: 2096)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 16, elements: !178)
!177 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!178 = !{!179}
!179 = !DISubrange(count: 2)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !99, file: !6, line: 350, baseType: !47, size: 8, offset: 2112)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_autoconfig_enabled", scope: !99, file: !6, line: 353, baseType: !47, size: 8, offset: 2120)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "rs_count", scope: !99, file: !6, line: 357, baseType: !47, size: 8, offset: 2128)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "mld_mac_filter", scope: !99, file: !6, line: 377, baseType: !184, size: 64, offset: 2176)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_mld_mac_filter_fn", file: !6, line: 222, baseType: !185)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DISubroutineType(types: !187)
!187 = !{!119, !98, !84, !5}
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_nsc_reason_t", file: !6, line: 564, baseType: !131)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !191)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_ext_callback_args_t", file: !6, line: 634, baseType: !192)
!192 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !6, line: 594, size: 192, elements: !193)
!193 = !{!194, !198, !202, !208, !213}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "link_changed", scope: !192, file: !6, line: 601, baseType: !195, size: 8)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "link_changed_s", file: !6, line: 597, size: 8, elements: !196)
!196 = !{!197}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !195, file: !6, line: 600, baseType: !47, size: 8)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "status_changed", scope: !192, file: !6, line: 607, baseType: !199, size: 8)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "status_changed_s", file: !6, line: 603, size: 8, elements: !200)
!200 = !{!201}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !199, file: !6, line: 606, baseType: !47, size: 8)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "ipv4_changed", scope: !192, file: !6, line: 615, baseType: !203, size: 192)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipv4_changed_s", file: !6, line: 609, size: 192, elements: !204)
!204 = !{!205, !206, !207}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "old_address", scope: !203, file: !6, line: 612, baseType: !64, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "old_netmask", scope: !203, file: !6, line: 613, baseType: !64, size: 64, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "old_gw", scope: !203, file: !6, line: 614, baseType: !64, size: 64, offset: 128)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "ipv6_set", scope: !192, file: !6, line: 623, baseType: !209, size: 128)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipv6_set_s", file: !6, line: 617, size: 128, elements: !210)
!210 = !{!211, !212}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "addr_index", scope: !209, file: !6, line: 620, baseType: !120, size: 8)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "old_address", scope: !209, file: !6, line: 622, baseType: !64, size: 64, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "ipv6_addr_state_changed", scope: !192, file: !6, line: 633, baseType: !214, size: 128)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipv6_addr_state_changed_s", file: !6, line: 625, size: 128, elements: !215)
!215 = !{!216, !217, !218}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "addr_index", scope: !214, file: !6, line: 628, baseType: !120, size: 8)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "old_state", scope: !214, file: !6, line: 630, baseType: !47, size: 8, offset: 8)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !214, file: !6, line: 632, baseType: !64, size: 64, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !91, file: !6, line: 651, baseType: !220, size: 64, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!221 = !DIGlobalVariableExpression(var: !222, expr: !DIExpression())
!222 = distinct !DIGlobalVariable(name: "netif_list", scope: !2, file: !3, line: 110, type: !98, isLocal: false, isDefinition: true)
!223 = !DIGlobalVariableExpression(var: !224, expr: !DIExpression())
!224 = distinct !DIGlobalVariable(name: "netif_default", scope: !2, file: !3, line: 112, type: !98, isLocal: false, isDefinition: true)
!225 = !DIGlobalVariableExpression(var: !226, expr: !DIExpression())
!226 = distinct !DIGlobalVariable(name: "__str", scope: !227, file: !228, line: 198, type: !246, isLocal: true, isDefinition: true)
!227 = distinct !DISubprogram(name: "uk_pr_crit", scope: !228, file: !228, line: 194, type: !229, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !233)
!228 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukdebug/include/uk/print.h", directory: "/root/.unikraft/apps/redis/build")
!229 = !DISubroutineType(types: !230)
!230 = !{null, !231, null}
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !177)
!233 = !{!234, !235}
!234 = !DILocalVariable(name: "fmt", arg: 1, scope: !227, file: !228, line: 194, type: !231)
!235 = !DILocalVariable(name: "argp", scope: !227, file: !228, line: 196, type: !236)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !237, line: 32, baseType: !238)
!237 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 196, baseType: !239)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !240, size: 192, elements: !164)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 196, size: 192, elements: !241)
!241 = !{!242, !243, !244, !245}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !240, file: !3, line: 196, baseType: !7, size: 32)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !240, file: !3, line: 196, baseType: !7, size: 32, offset: 32)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !240, file: !3, line: 196, baseType: !46, size: 64, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !240, file: !3, line: 196, baseType: !46, size: 64, offset: 128)
!246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 64, elements: !247)
!247 = !{!248}
!248 = !DISubrange(count: 8)
!249 = !DIGlobalVariableExpression(var: !250, expr: !DIExpression())
!250 = distinct !DIGlobalVariable(name: "__str", scope: !227, file: !228, line: 198, type: !246, isLocal: true, isDefinition: true)
!251 = !{i32 2, !"Dwarf Version", i32 4}
!252 = !{i32 2, !"Debug Info Version", i32 3}
!253 = !{i32 1, !"wchar_size", i32 4}
!254 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!255 = distinct !DISubprogram(name: "netif_init", scope: !3, file: !3, line: 177, type: !256, isLocal: false, isDefinition: true, scopeLine: 178, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !258)
!256 = !DISubroutineType(types: !257)
!257 = !{null}
!258 = !{}
!259 = !DILocation(line: 205, column: 1, scope: !255)
!260 = distinct !DISubprogram(name: "netif_input", scope: !3, file: !3, line: 217, type: !117, isLocal: false, isDefinition: true, scopeLine: 218, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !261)
!261 = !{!262, !263}
!262 = !DILocalVariable(name: "p", arg: 1, scope: !260, file: !3, line: 217, type: !124)
!263 = !DILocalVariable(name: "inp", arg: 2, scope: !260, file: !3, line: 217, type: !98)
!264 = !DILocation(line: 217, column: 26, scope: !260)
!265 = !DILocation(line: 217, column: 43, scope: !260)
!266 = !DILocation(line: 221, column: 3, scope: !267)
!267 = distinct !DILexicalBlock(scope: !268, file: !3, line: 221, column: 3)
!268 = distinct !DILexicalBlock(scope: !260, file: !3, line: 221, column: 3)
!269 = !DILocation(line: 221, column: 3, scope: !268)
!270 = !DILocation(line: 221, column: 3, scope: !271)
!271 = distinct !DILexicalBlock(scope: !272, file: !3, line: 221, column: 3)
!272 = distinct !DILexicalBlock(scope: !267, file: !3, line: 221, column: 3)
!273 = !DILocation(line: 221, column: 3, scope: !274)
!274 = distinct !DILexicalBlock(scope: !275, file: !3, line: 221, column: 3)
!275 = distinct !DILexicalBlock(scope: !276, file: !3, line: 221, column: 3)
!276 = distinct !DILexicalBlock(scope: !271, file: !3, line: 221, column: 3)
!277 = !DILocation(line: 222, column: 3, scope: !278)
!278 = distinct !DILexicalBlock(scope: !279, file: !3, line: 222, column: 3)
!279 = distinct !DILexicalBlock(scope: !260, file: !3, line: 222, column: 3)
!280 = !DILocation(line: 222, column: 3, scope: !279)
!281 = !DILocation(line: 222, column: 3, scope: !282)
!282 = distinct !DILexicalBlock(scope: !283, file: !3, line: 222, column: 3)
!283 = distinct !DILexicalBlock(scope: !278, file: !3, line: 222, column: 3)
!284 = !DILocation(line: 222, column: 3, scope: !285)
!285 = distinct !DILexicalBlock(scope: !286, file: !3, line: 222, column: 3)
!286 = distinct !DILexicalBlock(scope: !287, file: !3, line: 222, column: 3)
!287 = distinct !DILexicalBlock(scope: !282, file: !3, line: 222, column: 3)
!288 = !DILocation(line: 225, column: 12, scope: !289)
!289 = distinct !DILexicalBlock(scope: !260, file: !3, line: 225, column: 7)
!290 = !{!291, !293, i64 261}
!291 = !{!"netif", !292, i64 0, !295, i64 8, !295, i64 32, !295, i64 56, !293, i64 80, !293, i64 152, !293, i64 156, !293, i64 168, !292, i64 184, !292, i64 192, !292, i64 200, !292, i64 208, !292, i64 216, !292, i64 224, !292, i64 232, !293, i64 240, !296, i64 248, !296, i64 250, !296, i64 252, !293, i64 254, !293, i64 260, !293, i64 261, !293, i64 262, !293, i64 264, !293, i64 265, !293, i64 266, !292, i64 272}
!292 = !{!"any pointer", !293, i64 0}
!293 = !{!"omnipotent char", !294, i64 0}
!294 = !{!"Simple C/C++ TBAA"}
!295 = !{!"ip_addr", !293, i64 0, !293, i64 20}
!296 = !{!"short", !293, i64 0}
!297 = !DILocation(line: 225, column: 18, scope: !289)
!298 = !DILocation(line: 225, column: 7, scope: !260)
!299 = !DILocation(line: 226, column: 12, scope: !300)
!300 = distinct !DILexicalBlock(scope: !289, file: !3, line: 225, column: 63)
!301 = !DILocation(line: 226, column: 5, scope: !300)
!302 = !DILocation(line: 229, column: 12, scope: !289)
!303 = !DILocation(line: 229, column: 5, scope: !289)
!304 = !DILocation(line: 0, scope: !289)
!305 = !DILocation(line: 230, column: 1, scope: !260)
!306 = !DILocation(line: 194, column: 43, scope: !227)
!307 = !DILocation(line: 196, column: 2, scope: !227)
!308 = !DILocation(line: 196, column: 10, scope: !227)
!309 = !DILocation(line: 197, column: 2, scope: !227)
!310 = !DILocation(line: 198, column: 2, scope: !311)
!311 = distinct !DILexicalBlock(scope: !312, file: !228, line: 198, column: 2)
!312 = distinct !DILexicalBlock(scope: !227, file: !228, line: 198, column: 2)
!313 = !DILocation(line: 199, column: 2, scope: !227)
!314 = !DILocation(line: 200, column: 1, scope: !227)
!315 = distinct !DISubprogram(name: "netif_add_noaddr", scope: !3, file: !3, line: 239, type: !316, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !322)
!316 = !DISubroutineType(types: !317)
!317 = !{!98, !98, !46, !318, !115}
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_init_fn", file: !6, line: 168, baseType: !319)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DISubroutineType(types: !321)
!321 = !{!119, !98}
!322 = !{!323, !324, !325, !326}
!323 = !DILocalVariable(name: "netif", arg: 1, scope: !315, file: !3, line: 239, type: !98)
!324 = !DILocalVariable(name: "state", arg: 2, scope: !315, file: !3, line: 239, type: !46)
!325 = !DILocalVariable(name: "init", arg: 3, scope: !315, file: !3, line: 239, type: !318)
!326 = !DILocalVariable(name: "input", arg: 4, scope: !315, file: !3, line: 239, type: !115)
!327 = !DILocation(line: 239, column: 32, scope: !315)
!328 = !DILocation(line: 239, column: 45, scope: !315)
!329 = !DILocation(line: 239, column: 66, scope: !315)
!330 = !DILocation(line: 239, column: 87, scope: !315)
!331 = !DILocation(line: 241, column: 10, scope: !315)
!332 = !DILocation(line: 241, column: 3, scope: !315)
!333 = distinct !DISubprogram(name: "netif_add", scope: !3, file: !3, line: 276, type: !334, isLocal: false, isDefinition: true, scopeLine: 281, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !336)
!334 = !DISubroutineType(types: !335)
!335 = !{!98, !98, !57, !57, !57, !46, !318, !115}
!336 = !{!337, !338, !339, !340, !341, !342, !343, !344, !345, !347}
!337 = !DILocalVariable(name: "netif", arg: 1, scope: !333, file: !3, line: 276, type: !98)
!338 = !DILocalVariable(name: "ipaddr", arg: 2, scope: !333, file: !3, line: 278, type: !57)
!339 = !DILocalVariable(name: "netmask", arg: 3, scope: !333, file: !3, line: 278, type: !57)
!340 = !DILocalVariable(name: "gw", arg: 4, scope: !333, file: !3, line: 278, type: !57)
!341 = !DILocalVariable(name: "state", arg: 5, scope: !333, file: !3, line: 280, type: !46)
!342 = !DILocalVariable(name: "init", arg: 6, scope: !333, file: !3, line: 280, type: !318)
!343 = !DILocalVariable(name: "input", arg: 7, scope: !333, file: !3, line: 280, type: !115)
!344 = !DILocalVariable(name: "i", scope: !333, file: !3, line: 283, type: !120)
!345 = !DILocalVariable(name: "netif2", scope: !346, file: !3, line: 387, type: !98)
!346 = distinct !DILexicalBlock(scope: !333, file: !3, line: 386, column: 3)
!347 = !DILocalVariable(name: "num_netifs", scope: !346, file: !3, line: 388, type: !26)
!348 = !DILocation(line: 276, column: 25, scope: !333)
!349 = !DILocation(line: 278, column: 29, scope: !333)
!350 = !DILocation(line: 278, column: 55, scope: !333)
!351 = !DILocation(line: 278, column: 82, scope: !333)
!352 = !DILocation(line: 280, column: 17, scope: !333)
!353 = !DILocation(line: 280, column: 38, scope: !333)
!354 = !DILocation(line: 280, column: 59, scope: !333)
!355 = !DILocation(line: 295, column: 3, scope: !356)
!356 = distinct !DILexicalBlock(scope: !357, file: !3, line: 295, column: 3)
!357 = distinct !DILexicalBlock(scope: !333, file: !3, line: 295, column: 3)
!358 = !DILocation(line: 295, column: 3, scope: !357)
!359 = !DILocation(line: 295, column: 3, scope: !360)
!360 = distinct !DILexicalBlock(scope: !361, file: !3, line: 295, column: 3)
!361 = distinct !DILexicalBlock(scope: !356, file: !3, line: 295, column: 3)
!362 = !DILocation(line: 295, column: 3, scope: !363)
!363 = distinct !DILexicalBlock(scope: !364, file: !3, line: 295, column: 3)
!364 = distinct !DILexicalBlock(scope: !365, file: !3, line: 295, column: 3)
!365 = distinct !DILexicalBlock(scope: !360, file: !3, line: 295, column: 3)
!366 = !DILocation(line: 296, column: 3, scope: !367)
!367 = distinct !DILexicalBlock(scope: !368, file: !3, line: 296, column: 3)
!368 = distinct !DILexicalBlock(scope: !333, file: !3, line: 296, column: 3)
!369 = !DILocation(line: 296, column: 3, scope: !368)
!370 = !DILocation(line: 296, column: 3, scope: !371)
!371 = distinct !DILexicalBlock(scope: !372, file: !3, line: 296, column: 3)
!372 = distinct !DILexicalBlock(scope: !367, file: !3, line: 296, column: 3)
!373 = !DILocation(line: 296, column: 3, scope: !374)
!374 = distinct !DILexicalBlock(scope: !375, file: !3, line: 296, column: 3)
!375 = distinct !DILexicalBlock(scope: !376, file: !3, line: 296, column: 3)
!376 = distinct !DILexicalBlock(scope: !371, file: !3, line: 296, column: 3)
!377 = !DILocation(line: 299, column: 14, scope: !378)
!378 = distinct !DILexicalBlock(scope: !333, file: !3, line: 299, column: 7)
!379 = !DILocation(line: 302, column: 15, scope: !380)
!380 = distinct !DILexicalBlock(scope: !333, file: !3, line: 302, column: 7)
!381 = !DILocation(line: 305, column: 10, scope: !382)
!382 = distinct !DILexicalBlock(scope: !333, file: !3, line: 305, column: 7)
!383 = !DILocation(line: 310, column: 3, scope: !384)
!384 = distinct !DILexicalBlock(scope: !385, file: !3, line: 310, column: 3)
!385 = distinct !DILexicalBlock(scope: !333, file: !3, line: 310, column: 3)
!386 = !{!293, !293, i64 0}
!387 = !DILocation(line: 310, column: 3, scope: !388)
!388 = distinct !DILexicalBlock(scope: !389, file: !3, line: 310, column: 3)
!389 = distinct !DILexicalBlock(scope: !390, file: !3, line: 310, column: 3)
!390 = distinct !DILexicalBlock(scope: !391, file: !3, line: 310, column: 3)
!391 = distinct !DILexicalBlock(scope: !385, file: !3, line: 310, column: 3)
!392 = !{!291, !293, i64 28}
!393 = !DILocation(line: 311, column: 3, scope: !394)
!394 = distinct !DILexicalBlock(scope: !395, file: !3, line: 311, column: 3)
!395 = distinct !DILexicalBlock(scope: !333, file: !3, line: 311, column: 3)
!396 = !DILocation(line: 311, column: 3, scope: !397)
!397 = distinct !DILexicalBlock(scope: !398, file: !3, line: 311, column: 3)
!398 = distinct !DILexicalBlock(scope: !399, file: !3, line: 311, column: 3)
!399 = distinct !DILexicalBlock(scope: !400, file: !3, line: 311, column: 3)
!400 = distinct !DILexicalBlock(scope: !395, file: !3, line: 311, column: 3)
!401 = !{!291, !293, i64 52}
!402 = !DILocation(line: 312, column: 3, scope: !403)
!403 = distinct !DILexicalBlock(scope: !404, file: !3, line: 312, column: 3)
!404 = distinct !DILexicalBlock(scope: !333, file: !3, line: 312, column: 3)
!405 = !DILocation(line: 312, column: 3, scope: !406)
!406 = distinct !DILexicalBlock(scope: !407, file: !3, line: 312, column: 3)
!407 = distinct !DILexicalBlock(scope: !408, file: !3, line: 312, column: 3)
!408 = distinct !DILexicalBlock(scope: !409, file: !3, line: 312, column: 3)
!409 = distinct !DILexicalBlock(scope: !404, file: !3, line: 312, column: 3)
!410 = !{!291, !293, i64 76}
!411 = !DILocation(line: 313, column: 10, scope: !333)
!412 = !DILocation(line: 313, column: 17, scope: !333)
!413 = !{!291, !292, i64 192}
!414 = !DILocation(line: 283, column: 8, scope: !333)
!415 = !DILocation(line: 317, column: 5, scope: !416)
!416 = distinct !DILexicalBlock(scope: !417, file: !3, line: 317, column: 5)
!417 = distinct !DILexicalBlock(scope: !418, file: !3, line: 317, column: 5)
!418 = distinct !DILexicalBlock(scope: !419, file: !3, line: 316, column: 49)
!419 = distinct !DILexicalBlock(scope: !420, file: !3, line: 316, column: 3)
!420 = distinct !DILexicalBlock(scope: !333, file: !3, line: 316, column: 3)
!421 = !DILocation(line: 317, column: 5, scope: !422)
!422 = distinct !DILexicalBlock(scope: !423, file: !3, line: 317, column: 5)
!423 = distinct !DILexicalBlock(scope: !424, file: !3, line: 317, column: 5)
!424 = distinct !DILexicalBlock(scope: !425, file: !3, line: 317, column: 5)
!425 = distinct !DILexicalBlock(scope: !417, file: !3, line: 317, column: 5)
!426 = !{!295, !293, i64 20}
!427 = !DILocation(line: 318, column: 5, scope: !418)
!428 = !DILocation(line: 318, column: 30, scope: !418)
!429 = !DILocation(line: 320, column: 5, scope: !418)
!430 = !DILocation(line: 320, column: 35, scope: !418)
!431 = !{!432, !432, i64 0}
!432 = !{!"int", !293, i64 0}
!433 = !DILocation(line: 321, column: 5, scope: !418)
!434 = !DILocation(line: 321, column: 34, scope: !418)
!435 = !DILocation(line: 299, column: 7, scope: !333)
!436 = !DILocation(line: 302, column: 7, scope: !333)
!437 = !DILocation(line: 305, column: 7, scope: !333)
!438 = !DILocation(line: 324, column: 10, scope: !333)
!439 = !DILocation(line: 324, column: 21, scope: !333)
!440 = !{!291, !292, i64 208}
!441 = !DILocation(line: 326, column: 3, scope: !442)
!442 = distinct !DILexicalBlock(scope: !333, file: !3, line: 326, column: 3)
!443 = !{!291, !296, i64 248}
!444 = !DILocation(line: 327, column: 10, scope: !333)
!445 = !DILocation(line: 327, column: 14, scope: !333)
!446 = !{!291, !296, i64 250}
!447 = !DILocation(line: 328, column: 10, scope: !333)
!448 = !DILocation(line: 328, column: 16, scope: !333)
!449 = !DILocation(line: 330, column: 10, scope: !333)
!450 = !DILocation(line: 330, column: 3, scope: !333)
!451 = !DILocation(line: 335, column: 10, scope: !333)
!452 = !DILocation(line: 335, column: 33, scope: !333)
!453 = !{!291, !293, i64 265}
!454 = !DILocation(line: 337, column: 3, scope: !333)
!455 = !DILocation(line: 340, column: 10, scope: !333)
!456 = !DILocation(line: 340, column: 26, scope: !333)
!457 = !{!291, !292, i64 216}
!458 = !DILocation(line: 349, column: 10, scope: !333)
!459 = !DILocation(line: 349, column: 25, scope: !333)
!460 = !{!291, !292, i64 272}
!461 = !DILocation(line: 357, column: 10, scope: !333)
!462 = !DILocation(line: 357, column: 16, scope: !333)
!463 = !{!291, !292, i64 232}
!464 = !DILocation(line: 358, column: 16, scope: !333)
!465 = !DILocation(line: 358, column: 10, scope: !333)
!466 = !DILocation(line: 358, column: 14, scope: !333)
!467 = !{!291, !293, i64 264}
!468 = !DILocation(line: 359, column: 10, scope: !333)
!469 = !DILocation(line: 359, column: 16, scope: !333)
!470 = !{!291, !292, i64 184}
!471 = !DILocation(line: 367, column: 3, scope: !333)
!472 = !DILocation(line: 371, column: 7, scope: !473)
!473 = distinct !DILexicalBlock(scope: !333, file: !3, line: 371, column: 7)
!474 = !DILocation(line: 371, column: 19, scope: !473)
!475 = !DILocation(line: 371, column: 7, scope: !333)
!476 = !DILocation(line: 377, column: 24, scope: !333)
!477 = !DILocation(line: 377, column: 10, scope: !333)
!478 = !DILocation(line: 377, column: 15, scope: !333)
!479 = !{!291, !296, i64 252}
!480 = !DILocation(line: 390, column: 18, scope: !481)
!481 = distinct !DILexicalBlock(scope: !482, file: !3, line: 390, column: 11)
!482 = distinct !DILexicalBlock(scope: !346, file: !3, line: 389, column: 8)
!483 = !{!292, !292, i64 0}
!484 = !DILocation(line: 389, column: 5, scope: !346)
!485 = !DILocation(line: 390, column: 22, scope: !481)
!486 = !DILocation(line: 390, column: 11, scope: !482)
!487 = !DILocation(line: 391, column: 20, scope: !488)
!488 = distinct !DILexicalBlock(scope: !481, file: !3, line: 390, column: 30)
!489 = !DILocation(line: 392, column: 7, scope: !488)
!490 = !DILocation(line: 388, column: 9, scope: !346)
!491 = !DILocation(line: 387, column: 19, scope: !346)
!492 = !DILocation(line: 394, column: 7, scope: !493)
!493 = distinct !DILexicalBlock(scope: !482, file: !3, line: 394, column: 7)
!494 = !DILocation(line: 394, column: 66, scope: !495)
!495 = distinct !DILexicalBlock(scope: !493, file: !3, line: 394, column: 7)
!496 = !DILocation(line: 0, scope: !495)
!497 = !DILocation(line: 394, column: 40, scope: !495)
!498 = distinct !{!498, !492, !499}
!499 = !DILocation(line: 402, column: 7, scope: !493)
!500 = !DILocation(line: 395, column: 9, scope: !501)
!501 = distinct !DILexicalBlock(scope: !502, file: !3, line: 395, column: 9)
!502 = distinct !DILexicalBlock(scope: !503, file: !3, line: 395, column: 9)
!503 = distinct !DILexicalBlock(scope: !495, file: !3, line: 394, column: 72)
!504 = !DILocation(line: 395, column: 9, scope: !502)
!505 = !DILocation(line: 395, column: 9, scope: !506)
!506 = distinct !DILexicalBlock(scope: !507, file: !3, line: 395, column: 9)
!507 = distinct !DILexicalBlock(scope: !501, file: !3, line: 395, column: 9)
!508 = !DILocation(line: 395, column: 9, scope: !509)
!509 = distinct !DILexicalBlock(scope: !510, file: !3, line: 395, column: 9)
!510 = distinct !DILexicalBlock(scope: !511, file: !3, line: 395, column: 9)
!511 = distinct !DILexicalBlock(scope: !506, file: !3, line: 395, column: 9)
!512 = !DILocation(line: 396, column: 19, scope: !503)
!513 = !DILocation(line: 397, column: 9, scope: !514)
!514 = distinct !DILexicalBlock(scope: !515, file: !3, line: 397, column: 9)
!515 = distinct !DILexicalBlock(scope: !503, file: !3, line: 397, column: 9)
!516 = !DILocation(line: 397, column: 9, scope: !515)
!517 = !DILocation(line: 397, column: 9, scope: !518)
!518 = distinct !DILexicalBlock(scope: !519, file: !3, line: 397, column: 9)
!519 = distinct !DILexicalBlock(scope: !514, file: !3, line: 397, column: 9)
!520 = !DILocation(line: 397, column: 9, scope: !521)
!521 = distinct !DILexicalBlock(scope: !522, file: !3, line: 397, column: 9)
!522 = distinct !DILexicalBlock(scope: !523, file: !3, line: 397, column: 9)
!523 = distinct !DILexicalBlock(scope: !518, file: !3, line: 397, column: 9)
!524 = !DILocation(line: 398, column: 21, scope: !525)
!525 = distinct !DILexicalBlock(scope: !503, file: !3, line: 398, column: 13)
!526 = !DILocation(line: 398, column: 25, scope: !525)
!527 = !DILocation(line: 398, column: 13, scope: !503)
!528 = !DILocation(line: 399, column: 21, scope: !529)
!529 = distinct !DILexicalBlock(scope: !525, file: !3, line: 398, column: 40)
!530 = !DILocation(line: 403, column: 5, scope: !482)
!531 = !DILocation(line: 405, column: 18, scope: !532)
!532 = distinct !DILexicalBlock(scope: !333, file: !3, line: 405, column: 7)
!533 = !DILocation(line: 408, column: 35, scope: !534)
!534 = distinct !DILexicalBlock(scope: !532, file: !3, line: 407, column: 10)
!535 = !DILocation(line: 405, column: 7, scope: !333)
!536 = !DILocation(line: 0, scope: !537)
!537 = distinct !DILexicalBlock(scope: !532, file: !3, line: 405, column: 26)
!538 = !DILocation(line: 412, column: 15, scope: !333)
!539 = !{!291, !292, i64 0}
!540 = !DILocation(line: 413, column: 14, scope: !333)
!541 = !DILocalVariable(name: "netif", arg: 1, scope: !542, file: !3, line: 1784, type: !98)
!542 = distinct !DISubprogram(name: "netif_invoke_ext_callback", scope: !3, file: !3, line: 1784, type: !96, isLocal: false, isDefinition: true, scopeLine: 1785, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !543)
!543 = !{!541, !544, !545, !546}
!544 = !DILocalVariable(name: "reason", arg: 2, scope: !542, file: !3, line: 1784, type: !188)
!545 = !DILocalVariable(name: "args", arg: 3, scope: !542, file: !3, line: 1784, type: !189)
!546 = !DILocalVariable(name: "callback", scope: !542, file: !3, line: 1786, type: !89)
!547 = !DILocation(line: 1784, column: 41, scope: !542, inlinedAt: !548)
!548 = distinct !DILocation(line: 436, column: 3, scope: !333)
!549 = !DILocation(line: 1784, column: 67, scope: !542, inlinedAt: !548)
!550 = !DILocation(line: 1784, column: 108, scope: !542, inlinedAt: !548)
!551 = !DILocation(line: 1786, column: 25, scope: !542, inlinedAt: !548)
!552 = !DILocation(line: 0, scope: !553, inlinedAt: !548)
!553 = distinct !DILexicalBlock(scope: !542, file: !3, line: 1790, column: 28)
!554 = !DILocation(line: 1790, column: 19, scope: !542, inlinedAt: !548)
!555 = !DILocation(line: 1790, column: 3, scope: !542, inlinedAt: !548)
!556 = !DILocation(line: 1791, column: 15, scope: !553, inlinedAt: !548)
!557 = !{!558, !292, i64 0}
!558 = !{!"netif_ext_callback", !292, i64 0, !292, i64 8}
!559 = !DILocation(line: 1791, column: 5, scope: !553, inlinedAt: !548)
!560 = !DILocation(line: 1792, column: 26, scope: !553, inlinedAt: !548)
!561 = distinct !{!561, !562, !563}
!562 = !DILocation(line: 1790, column: 3, scope: !542)
!563 = !DILocation(line: 1793, column: 3, scope: !542)
!564 = !DILocation(line: 0, scope: !333)
!565 = !DILocation(line: 439, column: 1, scope: !333)
!566 = distinct !DISubprogram(name: "netif_null_output_ip4", scope: !3, file: !3, line: 1619, type: !143, isLocal: true, isDefinition: true, scopeLine: 1620, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !567)
!567 = !{!568, !569, !570}
!568 = !DILocalVariable(name: "netif", arg: 1, scope: !566, file: !3, line: 1619, type: !98)
!569 = !DILocalVariable(name: "p", arg: 2, scope: !566, file: !3, line: 1619, type: !124)
!570 = !DILocalVariable(name: "ipaddr", arg: 3, scope: !566, file: !3, line: 1619, type: !57)
!571 = !DILocation(line: 1619, column: 37, scope: !566)
!572 = !DILocation(line: 1619, column: 57, scope: !566)
!573 = !DILocation(line: 1619, column: 78, scope: !566)
!574 = !DILocation(line: 1625, column: 3, scope: !566)
!575 = distinct !DISubprogram(name: "netif_null_output_ip6", scope: !3, file: !3, line: 1605, type: !153, isLocal: true, isDefinition: true, scopeLine: 1606, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !576)
!576 = !{!577, !578, !579}
!577 = !DILocalVariable(name: "netif", arg: 1, scope: !575, file: !3, line: 1605, type: !98)
!578 = !DILocalVariable(name: "p", arg: 2, scope: !575, file: !3, line: 1605, type: !124)
!579 = !DILocalVariable(name: "ipaddr", arg: 3, scope: !575, file: !3, line: 1605, type: !84)
!580 = !DILocation(line: 1605, column: 37, scope: !575)
!581 = !DILocation(line: 1605, column: 57, scope: !575)
!582 = !DILocation(line: 1605, column: 78, scope: !575)
!583 = !DILocation(line: 1611, column: 3, scope: !575)
!584 = distinct !DISubprogram(name: "netif_set_addr", scope: !3, file: !3, line: 658, type: !585, isLocal: false, isDefinition: true, scopeLine: 660, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !587)
!585 = !DISubroutineType(types: !586)
!586 = !{null, !98, !57, !57, !57}
!587 = !{!588, !589, !590, !591, !592, !593, !594, !595, !596, !598, !599, !600}
!588 = !DILocalVariable(name: "netif", arg: 1, scope: !584, file: !3, line: 658, type: !98)
!589 = !DILocalVariable(name: "ipaddr", arg: 2, scope: !584, file: !3, line: 658, type: !57)
!590 = !DILocalVariable(name: "netmask", arg: 3, scope: !584, file: !3, line: 658, type: !57)
!591 = !DILocalVariable(name: "gw", arg: 4, scope: !584, file: !3, line: 659, type: !57)
!592 = !DILocalVariable(name: "change_reason", scope: !584, file: !3, line: 662, type: !188)
!593 = !DILocalVariable(name: "cb_args", scope: !584, file: !3, line: 663, type: !191)
!594 = !DILocalVariable(name: "old_nm_val", scope: !584, file: !3, line: 664, type: !66)
!595 = !DILocalVariable(name: "old_gw_val", scope: !584, file: !3, line: 665, type: !66)
!596 = !DILocalVariable(name: "old_nm", scope: !584, file: !3, line: 666, type: !597)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!598 = !DILocalVariable(name: "old_gw", scope: !584, file: !3, line: 667, type: !597)
!599 = !DILocalVariable(name: "old_addr", scope: !584, file: !3, line: 672, type: !66)
!600 = !DILocalVariable(name: "remove", scope: !584, file: !3, line: 673, type: !26)
!601 = !DILocation(line: 658, column: 30, scope: !584)
!602 = !DILocation(line: 658, column: 55, scope: !584)
!603 = !DILocation(line: 658, column: 81, scope: !584)
!604 = !DILocation(line: 659, column: 34, scope: !584)
!605 = !DILocation(line: 662, column: 22, scope: !584)
!606 = !DILocation(line: 663, column: 3, scope: !584)
!607 = !DILocation(line: 664, column: 3, scope: !584)
!608 = !DILocation(line: 665, column: 3, scope: !584)
!609 = !DILocation(line: 666, column: 14, scope: !584)
!610 = !DILocation(line: 667, column: 14, scope: !584)
!611 = !DILocation(line: 672, column: 3, scope: !584)
!612 = !DILocation(line: 678, column: 14, scope: !613)
!613 = distinct !DILexicalBlock(scope: !584, file: !3, line: 678, column: 7)
!614 = !DILocation(line: 678, column: 7, scope: !584)
!615 = !DILocation(line: 681, column: 15, scope: !616)
!616 = distinct !DILexicalBlock(scope: !584, file: !3, line: 681, column: 7)
!617 = !DILocation(line: 681, column: 7, scope: !584)
!618 = !DILocation(line: 684, column: 10, scope: !619)
!619 = distinct !DILexicalBlock(scope: !584, file: !3, line: 684, column: 7)
!620 = !DILocation(line: 684, column: 7, scope: !584)
!621 = !DILocation(line: 688, column: 12, scope: !584)
!622 = !{!623, !432, i64 0}
!623 = !{!"ip4_addr", !432, i64 0}
!624 = !DILocation(line: 689, column: 7, scope: !584)
!625 = !DILocation(line: 672, column: 13, scope: !584)
!626 = !DILocation(line: 692, column: 9, scope: !627)
!627 = distinct !DILexicalBlock(scope: !628, file: !3, line: 692, column: 9)
!628 = distinct !DILexicalBlock(scope: !629, file: !3, line: 689, column: 15)
!629 = distinct !DILexicalBlock(scope: !584, file: !3, line: 689, column: 7)
!630 = !DILocation(line: 692, column: 9, scope: !628)
!631 = !DILocation(line: 695, column: 28, scope: !632)
!632 = distinct !DILexicalBlock(scope: !627, file: !3, line: 692, column: 56)
!633 = !DILocation(line: 695, column: 40, scope: !632)
!634 = !DILocation(line: 697, column: 5, scope: !632)
!635 = !DILocation(line: 0, scope: !584)
!636 = !DILocation(line: 664, column: 13, scope: !584)
!637 = !DILocalVariable(name: "netif", arg: 1, scope: !638, file: !3, line: 523, type: !98)
!638 = distinct !DISubprogram(name: "netif_do_set_netmask", scope: !3, file: !3, line: 523, type: !639, isLocal: true, isDefinition: true, scopeLine: 524, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !641)
!639 = !DISubroutineType(types: !640)
!640 = !{!26, !98, !57, !597}
!641 = !{!637, !642, !643}
!642 = !DILocalVariable(name: "netmask", arg: 2, scope: !638, file: !3, line: 523, type: !57)
!643 = !DILocalVariable(name: "old_nm", arg: 3, scope: !638, file: !3, line: 523, type: !597)
!644 = !DILocation(line: 523, column: 36, scope: !638, inlinedAt: !645)
!645 = distinct !DILocation(line: 699, column: 7, scope: !646)
!646 = distinct !DILexicalBlock(scope: !584, file: !3, line: 699, column: 7)
!647 = !DILocation(line: 523, column: 61, scope: !638, inlinedAt: !645)
!648 = !DILocation(line: 523, column: 81, scope: !638, inlinedAt: !645)
!649 = !DILocation(line: 526, column: 7, scope: !650, inlinedAt: !645)
!650 = distinct !DILexicalBlock(scope: !638, file: !3, line: 526, column: 7)
!651 = !DILocation(line: 526, column: 7, scope: !638, inlinedAt: !645)
!652 = !DILocation(line: 529, column: 5, scope: !653, inlinedAt: !645)
!653 = distinct !DILexicalBlock(scope: !654, file: !3, line: 529, column: 5)
!654 = distinct !DILexicalBlock(scope: !655, file: !3, line: 529, column: 5)
!655 = distinct !DILexicalBlock(scope: !650, file: !3, line: 526, column: 61)
!656 = !DILocation(line: 529, column: 5, scope: !657, inlinedAt: !645)
!657 = distinct !DILexicalBlock(scope: !654, file: !3, line: 529, column: 5)
!658 = !DILocation(line: 529, column: 5, scope: !659, inlinedAt: !645)
!659 = distinct !DILexicalBlock(scope: !660, file: !3, line: 529, column: 5)
!660 = distinct !DILexicalBlock(scope: !657, file: !3, line: 529, column: 5)
!661 = !DILocation(line: 529, column: 5, scope: !654, inlinedAt: !645)
!662 = !DILocation(line: 529, column: 5, scope: !660, inlinedAt: !645)
!663 = !DILocation(line: 529, column: 5, scope: !664, inlinedAt: !645)
!664 = distinct !DILexicalBlock(scope: !665, file: !3, line: 529, column: 5)
!665 = distinct !DILexicalBlock(scope: !657, file: !3, line: 529, column: 5)
!666 = !DILocation(line: 535, column: 5, scope: !655, inlinedAt: !645)
!667 = !DILocation(line: 536, column: 5, scope: !668, inlinedAt: !645)
!668 = distinct !DILexicalBlock(scope: !655, file: !3, line: 536, column: 5)
!669 = !DILocation(line: 701, column: 19, scope: !670)
!670 = distinct !DILexicalBlock(scope: !646, file: !3, line: 699, column: 53)
!671 = !DILocation(line: 702, column: 26, scope: !670)
!672 = !DILocation(line: 702, column: 38, scope: !670)
!673 = !DILocation(line: 704, column: 3, scope: !670)
!674 = !DILocation(line: 0, scope: !632)
!675 = !DILocation(line: 665, column: 13, scope: !584)
!676 = !DILocalVariable(name: "netif", arg: 1, scope: !677, file: !3, line: 587, type: !98)
!677 = distinct !DISubprogram(name: "netif_do_set_gw", scope: !3, file: !3, line: 587, type: !639, isLocal: true, isDefinition: true, scopeLine: 588, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !678)
!678 = !{!676, !679, !680}
!679 = !DILocalVariable(name: "gw", arg: 2, scope: !677, file: !3, line: 587, type: !57)
!680 = !DILocalVariable(name: "old_gw", arg: 3, scope: !677, file: !3, line: 587, type: !597)
!681 = !DILocation(line: 587, column: 31, scope: !677, inlinedAt: !682)
!682 = distinct !DILocation(line: 705, column: 7, scope: !683)
!683 = distinct !DILexicalBlock(scope: !584, file: !3, line: 705, column: 7)
!684 = !DILocation(line: 587, column: 56, scope: !677, inlinedAt: !682)
!685 = !DILocation(line: 587, column: 71, scope: !677, inlinedAt: !682)
!686 = !DILocation(line: 590, column: 7, scope: !687, inlinedAt: !682)
!687 = distinct !DILexicalBlock(scope: !677, file: !3, line: 590, column: 7)
!688 = !DILocation(line: 590, column: 7, scope: !677, inlinedAt: !682)
!689 = !DILocation(line: 593, column: 5, scope: !690, inlinedAt: !682)
!690 = distinct !DILexicalBlock(scope: !691, file: !3, line: 593, column: 5)
!691 = distinct !DILexicalBlock(scope: !692, file: !3, line: 593, column: 5)
!692 = distinct !DILexicalBlock(scope: !687, file: !3, line: 590, column: 51)
!693 = !DILocation(line: 593, column: 5, scope: !694, inlinedAt: !682)
!694 = distinct !DILexicalBlock(scope: !691, file: !3, line: 593, column: 5)
!695 = !DILocation(line: 593, column: 5, scope: !696, inlinedAt: !682)
!696 = distinct !DILexicalBlock(scope: !697, file: !3, line: 593, column: 5)
!697 = distinct !DILexicalBlock(scope: !694, file: !3, line: 593, column: 5)
!698 = !DILocation(line: 593, column: 5, scope: !691, inlinedAt: !682)
!699 = !DILocation(line: 593, column: 5, scope: !697, inlinedAt: !682)
!700 = !DILocation(line: 593, column: 5, scope: !701, inlinedAt: !682)
!701 = distinct !DILexicalBlock(scope: !702, file: !3, line: 593, column: 5)
!702 = distinct !DILexicalBlock(scope: !694, file: !3, line: 593, column: 5)
!703 = !DILocation(line: 598, column: 5, scope: !692, inlinedAt: !682)
!704 = !DILocation(line: 599, column: 5, scope: !705, inlinedAt: !682)
!705 = distinct !DILexicalBlock(scope: !692, file: !3, line: 599, column: 5)
!706 = !DILocation(line: 707, column: 19, scope: !707)
!707 = distinct !DILexicalBlock(scope: !683, file: !3, line: 705, column: 43)
!708 = !DILocation(line: 708, column: 26, scope: !707)
!709 = !DILocation(line: 708, column: 33, scope: !707)
!710 = !DILocation(line: 710, column: 3, scope: !707)
!711 = !DILocation(line: 0, scope: !670)
!712 = !DILocation(line: 711, column: 7, scope: !584)
!713 = !DILocation(line: 713, column: 9, scope: !714)
!714 = distinct !DILexicalBlock(scope: !715, file: !3, line: 713, column: 9)
!715 = distinct !DILexicalBlock(scope: !716, file: !3, line: 711, column: 16)
!716 = distinct !DILexicalBlock(scope: !584, file: !3, line: 711, column: 7)
!717 = !DILocation(line: 713, column: 9, scope: !715)
!718 = !DILocation(line: 715, column: 21, scope: !719)
!719 = distinct !DILexicalBlock(scope: !714, file: !3, line: 713, column: 56)
!720 = !DILocation(line: 716, column: 28, scope: !719)
!721 = !DILocation(line: 716, column: 40, scope: !719)
!722 = !DILocation(line: 722, column: 7, scope: !584)
!723 = !DILocation(line: 722, column: 21, scope: !724)
!724 = distinct !DILexicalBlock(scope: !584, file: !3, line: 722, column: 7)
!725 = !DILocation(line: 723, column: 19, scope: !726)
!726 = distinct !DILexicalBlock(scope: !724, file: !3, line: 722, column: 39)
!727 = !DILocation(line: 663, column: 29, scope: !584)
!728 = !DILocation(line: 1784, column: 41, scope: !542, inlinedAt: !729)
!729 = distinct !DILocation(line: 724, column: 5, scope: !726)
!730 = !DILocation(line: 1784, column: 67, scope: !542, inlinedAt: !729)
!731 = !DILocation(line: 1784, column: 108, scope: !542, inlinedAt: !729)
!732 = !DILocation(line: 1786, column: 25, scope: !542, inlinedAt: !729)
!733 = !DILocation(line: 0, scope: !553, inlinedAt: !729)
!734 = !DILocation(line: 1790, column: 19, scope: !542, inlinedAt: !729)
!735 = !DILocation(line: 1790, column: 3, scope: !542, inlinedAt: !729)
!736 = !DILocation(line: 1791, column: 15, scope: !553, inlinedAt: !729)
!737 = !DILocation(line: 1791, column: 5, scope: !553, inlinedAt: !729)
!738 = !DILocation(line: 1792, column: 26, scope: !553, inlinedAt: !729)
!739 = !DILocation(line: 727, column: 1, scope: !584)
!740 = !DILocation(line: 1784, column: 41, scope: !542)
!741 = !DILocation(line: 1784, column: 67, scope: !542)
!742 = !DILocation(line: 1784, column: 108, scope: !542)
!743 = !DILocation(line: 1786, column: 25, scope: !542)
!744 = !DILocation(line: 1788, column: 3, scope: !745)
!745 = distinct !DILexicalBlock(scope: !746, file: !3, line: 1788, column: 3)
!746 = distinct !DILexicalBlock(scope: !542, file: !3, line: 1788, column: 3)
!747 = !DILocation(line: 1788, column: 3, scope: !746)
!748 = !DILocation(line: 0, scope: !553)
!749 = !DILocation(line: 1790, column: 19, scope: !542)
!750 = !DILocation(line: 1788, column: 3, scope: !751)
!751 = distinct !DILexicalBlock(scope: !752, file: !3, line: 1788, column: 3)
!752 = distinct !DILexicalBlock(scope: !745, file: !3, line: 1788, column: 3)
!753 = !DILocation(line: 1788, column: 3, scope: !754)
!754 = distinct !DILexicalBlock(scope: !755, file: !3, line: 1788, column: 3)
!755 = distinct !DILexicalBlock(scope: !756, file: !3, line: 1788, column: 3)
!756 = distinct !DILexicalBlock(scope: !751, file: !3, line: 1788, column: 3)
!757 = !DILocation(line: 1791, column: 15, scope: !553)
!758 = !DILocation(line: 1791, column: 5, scope: !553)
!759 = !DILocation(line: 1792, column: 26, scope: !553)
!760 = !DILocation(line: 1794, column: 1, scope: !542)
!761 = distinct !DISubprogram(name: "netif_set_ipaddr", scope: !3, file: !3, line: 500, type: !762, isLocal: false, isDefinition: true, scopeLine: 501, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !764)
!762 = !DISubroutineType(types: !763)
!763 = !{null, !98, !57}
!764 = !{!765, !766, !767, !768}
!765 = !DILocalVariable(name: "netif", arg: 1, scope: !761, file: !3, line: 500, type: !98)
!766 = !DILocalVariable(name: "ipaddr", arg: 2, scope: !761, file: !3, line: 500, type: !57)
!767 = !DILocalVariable(name: "old_addr", scope: !761, file: !3, line: 502, type: !66)
!768 = !DILocalVariable(name: "args", scope: !769, file: !3, line: 515, type: !191)
!769 = distinct !DILexicalBlock(scope: !770, file: !3, line: 513, column: 54)
!770 = distinct !DILexicalBlock(scope: !761, file: !3, line: 513, column: 7)
!771 = !DILocation(line: 500, column: 32, scope: !761)
!772 = !DILocation(line: 500, column: 57, scope: !761)
!773 = !DILocation(line: 502, column: 3, scope: !761)
!774 = !DILocation(line: 504, column: 3, scope: !775)
!775 = distinct !DILexicalBlock(scope: !776, file: !3, line: 504, column: 3)
!776 = distinct !DILexicalBlock(scope: !761, file: !3, line: 504, column: 3)
!777 = !DILocation(line: 504, column: 3, scope: !776)
!778 = !DILocation(line: 504, column: 3, scope: !779)
!779 = distinct !DILexicalBlock(scope: !780, file: !3, line: 504, column: 3)
!780 = distinct !DILexicalBlock(scope: !775, file: !3, line: 504, column: 3)
!781 = !DILocation(line: 504, column: 3, scope: !782)
!782 = distinct !DILexicalBlock(scope: !783, file: !3, line: 504, column: 3)
!783 = distinct !DILexicalBlock(scope: !784, file: !3, line: 504, column: 3)
!784 = distinct !DILexicalBlock(scope: !779, file: !3, line: 504, column: 3)
!785 = !DILocation(line: 507, column: 14, scope: !786)
!786 = distinct !DILexicalBlock(scope: !761, file: !3, line: 507, column: 7)
!787 = !DILocation(line: 507, column: 7, scope: !761)
!788 = !DILocation(line: 502, column: 13, scope: !761)
!789 = !DILocation(line: 513, column: 7, scope: !770)
!790 = !DILocation(line: 513, column: 7, scope: !761)
!791 = !DILocation(line: 515, column: 5, scope: !769)
!792 = !DILocation(line: 516, column: 23, scope: !769)
!793 = !DILocation(line: 516, column: 35, scope: !769)
!794 = !DILocation(line: 515, column: 31, scope: !769)
!795 = !DILocation(line: 1784, column: 41, scope: !542, inlinedAt: !796)
!796 = distinct !DILocation(line: 517, column: 5, scope: !769)
!797 = !DILocation(line: 1784, column: 67, scope: !542, inlinedAt: !796)
!798 = !DILocation(line: 1784, column: 108, scope: !542, inlinedAt: !796)
!799 = !DILocation(line: 1786, column: 25, scope: !542, inlinedAt: !796)
!800 = !DILocation(line: 0, scope: !553, inlinedAt: !796)
!801 = !DILocation(line: 1790, column: 19, scope: !542, inlinedAt: !796)
!802 = !DILocation(line: 1790, column: 3, scope: !542, inlinedAt: !796)
!803 = !DILocation(line: 1791, column: 15, scope: !553, inlinedAt: !796)
!804 = !DILocation(line: 1791, column: 5, scope: !553, inlinedAt: !796)
!805 = !DILocation(line: 1792, column: 26, scope: !553, inlinedAt: !796)
!806 = !DILocation(line: 519, column: 3, scope: !770)
!807 = !DILocation(line: 519, column: 3, scope: !769)
!808 = !DILocation(line: 520, column: 1, scope: !761)
!809 = distinct !DISubprogram(name: "netif_do_set_ipaddr", scope: !3, file: !3, line: 457, type: !639, isLocal: true, isDefinition: true, scopeLine: 458, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !810)
!810 = !{!811, !812, !813, !814}
!811 = !DILocalVariable(name: "netif", arg: 1, scope: !809, file: !3, line: 457, type: !98)
!812 = !DILocalVariable(name: "ipaddr", arg: 2, scope: !809, file: !3, line: 457, type: !57)
!813 = !DILocalVariable(name: "old_addr", arg: 3, scope: !809, file: !3, line: 457, type: !597)
!814 = !DILocalVariable(name: "new_addr", scope: !815, file: !3, line: 464, type: !66)
!815 = distinct !DILexicalBlock(scope: !816, file: !3, line: 463, column: 57)
!816 = distinct !DILexicalBlock(scope: !809, file: !3, line: 463, column: 7)
!817 = !DILocation(line: 457, column: 35, scope: !809)
!818 = !DILocation(line: 457, column: 60, scope: !809)
!819 = !DILocation(line: 457, column: 79, scope: !809)
!820 = !DILocation(line: 459, column: 3, scope: !821)
!821 = distinct !DILexicalBlock(scope: !822, file: !3, line: 459, column: 3)
!822 = distinct !DILexicalBlock(scope: !809, file: !3, line: 459, column: 3)
!823 = !DILocation(line: 459, column: 3, scope: !822)
!824 = !DILocation(line: 459, column: 3, scope: !825)
!825 = distinct !DILexicalBlock(scope: !826, file: !3, line: 459, column: 3)
!826 = distinct !DILexicalBlock(scope: !821, file: !3, line: 459, column: 3)
!827 = !DILocation(line: 459, column: 3, scope: !828)
!828 = distinct !DILexicalBlock(scope: !829, file: !3, line: 459, column: 3)
!829 = distinct !DILexicalBlock(scope: !830, file: !3, line: 459, column: 3)
!830 = distinct !DILexicalBlock(scope: !825, file: !3, line: 459, column: 3)
!831 = !DILocation(line: 460, column: 3, scope: !832)
!832 = distinct !DILexicalBlock(scope: !833, file: !3, line: 460, column: 3)
!833 = distinct !DILexicalBlock(scope: !809, file: !3, line: 460, column: 3)
!834 = !DILocation(line: 460, column: 3, scope: !833)
!835 = !DILocation(line: 460, column: 3, scope: !836)
!836 = distinct !DILexicalBlock(scope: !837, file: !3, line: 460, column: 3)
!837 = distinct !DILexicalBlock(scope: !832, file: !3, line: 460, column: 3)
!838 = !DILocation(line: 460, column: 3, scope: !839)
!839 = distinct !DILexicalBlock(scope: !840, file: !3, line: 460, column: 3)
!840 = distinct !DILexicalBlock(scope: !841, file: !3, line: 460, column: 3)
!841 = distinct !DILexicalBlock(scope: !836, file: !3, line: 460, column: 3)
!842 = !DILocation(line: 463, column: 7, scope: !816)
!843 = !DILocation(line: 463, column: 7, scope: !809)
!844 = !DILocation(line: 464, column: 5, scope: !815)
!845 = !DILocation(line: 465, column: 28, scope: !815)
!846 = !DILocation(line: 466, column: 5, scope: !847)
!847 = distinct !DILexicalBlock(scope: !815, file: !3, line: 466, column: 5)
!848 = !DILocation(line: 468, column: 5, scope: !849)
!849 = distinct !DILexicalBlock(scope: !850, file: !3, line: 468, column: 5)
!850 = distinct !DILexicalBlock(scope: !815, file: !3, line: 468, column: 5)
!851 = !DILocation(line: 468, column: 5, scope: !852)
!852 = distinct !DILexicalBlock(scope: !850, file: !3, line: 468, column: 5)
!853 = !DILocation(line: 468, column: 5, scope: !854)
!854 = distinct !DILexicalBlock(scope: !855, file: !3, line: 468, column: 5)
!855 = distinct !DILexicalBlock(scope: !852, file: !3, line: 468, column: 5)
!856 = !DILocation(line: 468, column: 5, scope: !850)
!857 = !DILocation(line: 468, column: 5, scope: !855)
!858 = !DILocation(line: 468, column: 5, scope: !859)
!859 = distinct !DILexicalBlock(scope: !860, file: !3, line: 468, column: 5)
!860 = distinct !DILexicalBlock(scope: !852, file: !3, line: 468, column: 5)
!861 = !DILocation(line: 464, column: 15, scope: !815)
!862 = !DILocalVariable(name: "old_addr", arg: 1, scope: !863, file: !3, line: 442, type: !64)
!863 = distinct !DISubprogram(name: "netif_do_ip_addr_changed", scope: !3, file: !3, line: 442, type: !864, isLocal: true, isDefinition: true, scopeLine: 443, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !866)
!864 = !DISubroutineType(types: !865)
!865 = !{null, !64, !64}
!866 = !{!862, !867}
!867 = !DILocalVariable(name: "new_addr", arg: 2, scope: !863, file: !3, line: 442, type: !64)
!868 = !DILocation(line: 442, column: 43, scope: !863, inlinedAt: !869)
!869 = distinct !DILocation(line: 471, column: 5, scope: !815)
!870 = !DILocation(line: 442, column: 70, scope: !863, inlinedAt: !869)
!871 = !DILocation(line: 445, column: 3, scope: !863, inlinedAt: !869)
!872 = !DILocation(line: 448, column: 3, scope: !863, inlinedAt: !869)
!873 = !DILocation(line: 476, column: 5, scope: !815)
!874 = !DILocation(line: 477, column: 5, scope: !875)
!875 = distinct !DILexicalBlock(scope: !815, file: !3, line: 477, column: 5)
!876 = !DILocalVariable(name: "netif", arg: 1, scope: !877, file: !3, line: 875, type: !98)
!877 = distinct !DISubprogram(name: "netif_issue_reports", scope: !3, file: !3, line: 875, type: !878, isLocal: true, isDefinition: true, scopeLine: 876, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !880)
!878 = !DISubroutineType(types: !879)
!879 = !{null, !98, !47}
!880 = !{!876, !881}
!881 = !DILocalVariable(name: "report_type", arg: 2, scope: !877, file: !3, line: 875, type: !47)
!882 = !DILocation(line: 875, column: 35, scope: !877, inlinedAt: !883)
!883 = distinct !DILocation(line: 481, column: 5, scope: !815)
!884 = !DILocation(line: 875, column: 47, scope: !877, inlinedAt: !883)
!885 = !DILocation(line: 880, column: 16, scope: !886, inlinedAt: !883)
!886 = distinct !DILexicalBlock(scope: !877, file: !3, line: 880, column: 7)
!887 = !DILocation(line: 880, column: 9, scope: !886, inlinedAt: !883)
!888 = !DILocation(line: 880, column: 44, scope: !886, inlinedAt: !883)
!889 = !DILocation(line: 887, column: 8, scope: !890, inlinedAt: !883)
!890 = distinct !DILexicalBlock(scope: !877, file: !3, line: 886, column: 7)
!891 = !DILocation(line: 890, column: 22, scope: !892, inlinedAt: !883)
!892 = distinct !DILexicalBlock(scope: !893, file: !3, line: 890, column: 9)
!893 = distinct !DILexicalBlock(scope: !890, file: !3, line: 887, column: 52)
!894 = !DILocation(line: 886, column: 7, scope: !877, inlinedAt: !883)
!895 = !DILocation(line: 891, column: 7, scope: !896, inlinedAt: !883)
!896 = distinct !DILexicalBlock(scope: !892, file: !3, line: 890, column: 45)
!897 = !DILocation(line: 892, column: 5, scope: !896, inlinedAt: !883)
!898 = !DILocation(line: 483, column: 5, scope: !899)
!899 = distinct !DILexicalBlock(scope: !900, file: !3, line: 483, column: 5)
!900 = distinct !DILexicalBlock(scope: !815, file: !3, line: 483, column: 5)
!901 = !DILocation(line: 483, column: 5, scope: !900)
!902 = !DILocation(line: 483, column: 5, scope: !903)
!903 = distinct !DILexicalBlock(scope: !899, file: !3, line: 483, column: 5)
!904 = !DILocation(line: 485, column: 3, scope: !816)
!905 = !DILocation(line: 0, scope: !809)
!906 = !DILocation(line: 487, column: 1, scope: !809)
!907 = distinct !DISubprogram(name: "netif_set_netmask", scope: !3, file: !3, line: 560, type: !762, isLocal: false, isDefinition: true, scopeLine: 561, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !908)
!908 = !{!909, !910, !911, !912, !913}
!909 = !DILocalVariable(name: "netif", arg: 1, scope: !907, file: !3, line: 560, type: !98)
!910 = !DILocalVariable(name: "netmask", arg: 2, scope: !907, file: !3, line: 560, type: !57)
!911 = !DILocalVariable(name: "old_nm_val", scope: !907, file: !3, line: 563, type: !66)
!912 = !DILocalVariable(name: "old_nm", scope: !907, file: !3, line: 564, type: !597)
!913 = !DILocalVariable(name: "args", scope: !914, file: !3, line: 579, type: !191)
!914 = distinct !DILexicalBlock(scope: !915, file: !3, line: 577, column: 53)
!915 = distinct !DILexicalBlock(scope: !907, file: !3, line: 577, column: 7)
!916 = !DILocation(line: 560, column: 33, scope: !907)
!917 = !DILocation(line: 560, column: 58, scope: !907)
!918 = !DILocation(line: 563, column: 3, scope: !907)
!919 = !DILocation(line: 564, column: 14, scope: !907)
!920 = !DILocation(line: 570, column: 3, scope: !921)
!921 = distinct !DILexicalBlock(scope: !922, file: !3, line: 570, column: 3)
!922 = distinct !DILexicalBlock(scope: !907, file: !3, line: 570, column: 3)
!923 = !DILocation(line: 570, column: 3, scope: !922)
!924 = !DILocation(line: 570, column: 3, scope: !925)
!925 = distinct !DILexicalBlock(scope: !926, file: !3, line: 570, column: 3)
!926 = distinct !DILexicalBlock(scope: !921, file: !3, line: 570, column: 3)
!927 = !DILocation(line: 570, column: 3, scope: !928)
!928 = distinct !DILexicalBlock(scope: !929, file: !3, line: 570, column: 3)
!929 = distinct !DILexicalBlock(scope: !930, file: !3, line: 570, column: 3)
!930 = distinct !DILexicalBlock(scope: !925, file: !3, line: 570, column: 3)
!931 = !DILocation(line: 573, column: 15, scope: !932)
!932 = distinct !DILexicalBlock(scope: !907, file: !3, line: 573, column: 7)
!933 = !DILocation(line: 573, column: 7, scope: !907)
!934 = !DILocation(line: 563, column: 13, scope: !907)
!935 = !DILocation(line: 523, column: 36, scope: !638, inlinedAt: !936)
!936 = distinct !DILocation(line: 577, column: 7, scope: !915)
!937 = !DILocation(line: 523, column: 61, scope: !638, inlinedAt: !936)
!938 = !DILocation(line: 523, column: 81, scope: !638, inlinedAt: !936)
!939 = !DILocation(line: 526, column: 7, scope: !650, inlinedAt: !936)
!940 = !DILocation(line: 526, column: 7, scope: !638, inlinedAt: !936)
!941 = !DILocation(line: 529, column: 5, scope: !653, inlinedAt: !936)
!942 = !DILocation(line: 529, column: 5, scope: !657, inlinedAt: !936)
!943 = !DILocation(line: 529, column: 5, scope: !659, inlinedAt: !936)
!944 = !DILocation(line: 529, column: 5, scope: !654, inlinedAt: !936)
!945 = !DILocation(line: 529, column: 5, scope: !660, inlinedAt: !936)
!946 = !DILocation(line: 535, column: 5, scope: !655, inlinedAt: !936)
!947 = !DILocation(line: 536, column: 5, scope: !668, inlinedAt: !936)
!948 = !DILocation(line: 579, column: 5, scope: !914)
!949 = !DILocation(line: 580, column: 23, scope: !914)
!950 = !DILocation(line: 580, column: 35, scope: !914)
!951 = !DILocation(line: 579, column: 31, scope: !914)
!952 = !DILocation(line: 1784, column: 41, scope: !542, inlinedAt: !953)
!953 = distinct !DILocation(line: 581, column: 5, scope: !914)
!954 = !DILocation(line: 1784, column: 67, scope: !542, inlinedAt: !953)
!955 = !DILocation(line: 1784, column: 108, scope: !542, inlinedAt: !953)
!956 = !DILocation(line: 1786, column: 25, scope: !542, inlinedAt: !953)
!957 = !DILocation(line: 0, scope: !553, inlinedAt: !953)
!958 = !DILocation(line: 1790, column: 19, scope: !542, inlinedAt: !953)
!959 = !DILocation(line: 1790, column: 3, scope: !542, inlinedAt: !953)
!960 = !DILocation(line: 1791, column: 15, scope: !553, inlinedAt: !953)
!961 = !DILocation(line: 1791, column: 5, scope: !553, inlinedAt: !953)
!962 = !DILocation(line: 1792, column: 26, scope: !553, inlinedAt: !953)
!963 = !DILocation(line: 583, column: 3, scope: !915)
!964 = !DILocation(line: 583, column: 3, scope: !914)
!965 = !DILocation(line: 584, column: 1, scope: !907)
!966 = distinct !DISubprogram(name: "netif_set_gw", scope: !3, file: !3, line: 621, type: !762, isLocal: false, isDefinition: true, scopeLine: 622, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !967)
!967 = !{!968, !969, !970, !971, !972}
!968 = !DILocalVariable(name: "netif", arg: 1, scope: !966, file: !3, line: 621, type: !98)
!969 = !DILocalVariable(name: "gw", arg: 2, scope: !966, file: !3, line: 621, type: !57)
!970 = !DILocalVariable(name: "old_gw_val", scope: !966, file: !3, line: 624, type: !66)
!971 = !DILocalVariable(name: "old_gw", scope: !966, file: !3, line: 625, type: !597)
!972 = !DILocalVariable(name: "args", scope: !973, file: !3, line: 640, type: !191)
!973 = distinct !DILexicalBlock(scope: !974, file: !3, line: 638, column: 43)
!974 = distinct !DILexicalBlock(scope: !966, file: !3, line: 638, column: 7)
!975 = !DILocation(line: 621, column: 28, scope: !966)
!976 = !DILocation(line: 621, column: 53, scope: !966)
!977 = !DILocation(line: 624, column: 3, scope: !966)
!978 = !DILocation(line: 625, column: 14, scope: !966)
!979 = !DILocation(line: 631, column: 3, scope: !980)
!980 = distinct !DILexicalBlock(scope: !981, file: !3, line: 631, column: 3)
!981 = distinct !DILexicalBlock(scope: !966, file: !3, line: 631, column: 3)
!982 = !DILocation(line: 631, column: 3, scope: !981)
!983 = !DILocation(line: 631, column: 3, scope: !984)
!984 = distinct !DILexicalBlock(scope: !985, file: !3, line: 631, column: 3)
!985 = distinct !DILexicalBlock(scope: !980, file: !3, line: 631, column: 3)
!986 = !DILocation(line: 631, column: 3, scope: !987)
!987 = distinct !DILexicalBlock(scope: !988, file: !3, line: 631, column: 3)
!988 = distinct !DILexicalBlock(scope: !989, file: !3, line: 631, column: 3)
!989 = distinct !DILexicalBlock(scope: !984, file: !3, line: 631, column: 3)
!990 = !DILocation(line: 634, column: 10, scope: !991)
!991 = distinct !DILexicalBlock(scope: !966, file: !3, line: 634, column: 7)
!992 = !DILocation(line: 634, column: 7, scope: !966)
!993 = !DILocation(line: 624, column: 13, scope: !966)
!994 = !DILocation(line: 587, column: 31, scope: !677, inlinedAt: !995)
!995 = distinct !DILocation(line: 638, column: 7, scope: !974)
!996 = !DILocation(line: 587, column: 56, scope: !677, inlinedAt: !995)
!997 = !DILocation(line: 587, column: 71, scope: !677, inlinedAt: !995)
!998 = !DILocation(line: 590, column: 7, scope: !687, inlinedAt: !995)
!999 = !DILocation(line: 590, column: 7, scope: !677, inlinedAt: !995)
!1000 = !DILocation(line: 593, column: 5, scope: !690, inlinedAt: !995)
!1001 = !DILocation(line: 593, column: 5, scope: !694, inlinedAt: !995)
!1002 = !DILocation(line: 593, column: 5, scope: !696, inlinedAt: !995)
!1003 = !DILocation(line: 593, column: 5, scope: !691, inlinedAt: !995)
!1004 = !DILocation(line: 593, column: 5, scope: !697, inlinedAt: !995)
!1005 = !DILocation(line: 598, column: 5, scope: !692, inlinedAt: !995)
!1006 = !DILocation(line: 599, column: 5, scope: !705, inlinedAt: !995)
!1007 = !DILocation(line: 640, column: 5, scope: !973)
!1008 = !DILocation(line: 641, column: 23, scope: !973)
!1009 = !DILocation(line: 641, column: 30, scope: !973)
!1010 = !DILocation(line: 640, column: 31, scope: !973)
!1011 = !DILocation(line: 1784, column: 41, scope: !542, inlinedAt: !1012)
!1012 = distinct !DILocation(line: 642, column: 5, scope: !973)
!1013 = !DILocation(line: 1784, column: 67, scope: !542, inlinedAt: !1012)
!1014 = !DILocation(line: 1784, column: 108, scope: !542, inlinedAt: !1012)
!1015 = !DILocation(line: 1786, column: 25, scope: !542, inlinedAt: !1012)
!1016 = !DILocation(line: 0, scope: !553, inlinedAt: !1012)
!1017 = !DILocation(line: 1790, column: 19, scope: !542, inlinedAt: !1012)
!1018 = !DILocation(line: 1790, column: 3, scope: !542, inlinedAt: !1012)
!1019 = !DILocation(line: 1791, column: 15, scope: !553, inlinedAt: !1012)
!1020 = !DILocation(line: 1791, column: 5, scope: !553, inlinedAt: !1012)
!1021 = !DILocation(line: 1792, column: 26, scope: !553, inlinedAt: !1012)
!1022 = !DILocation(line: 644, column: 3, scope: !974)
!1023 = !DILocation(line: 644, column: 3, scope: !973)
!1024 = !DILocation(line: 645, column: 1, scope: !966)
!1025 = distinct !DISubprogram(name: "netif_remove", scope: !3, file: !3, line: 737, type: !158, isLocal: false, isDefinition: true, scopeLine: 738, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1026)
!1026 = !{!1027, !1028, !1029}
!1027 = !DILocalVariable(name: "netif", arg: 1, scope: !1025, file: !3, line: 737, type: !98)
!1028 = !DILocalVariable(name: "i", scope: !1025, file: !3, line: 740, type: !26)
!1029 = !DILocalVariable(name: "tmp_netif", scope: !1030, file: !3, line: 793, type: !98)
!1030 = distinct !DILexicalBlock(scope: !1031, file: !3, line: 791, column: 10)
!1031 = distinct !DILexicalBlock(scope: !1025, file: !3, line: 789, column: 7)
!1032 = !DILocation(line: 737, column: 28, scope: !1025)
!1033 = !DILocation(line: 745, column: 13, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1025, file: !3, line: 745, column: 7)
!1035 = !DILocation(line: 745, column: 7, scope: !1025)
!1036 = !DILocation(line: 1784, column: 41, scope: !542, inlinedAt: !1037)
!1037 = distinct !DILocation(line: 749, column: 3, scope: !1025)
!1038 = !DILocation(line: 1784, column: 67, scope: !542, inlinedAt: !1037)
!1039 = !DILocation(line: 1784, column: 108, scope: !542, inlinedAt: !1037)
!1040 = !DILocation(line: 1786, column: 25, scope: !542, inlinedAt: !1037)
!1041 = !DILocation(line: 0, scope: !553, inlinedAt: !1037)
!1042 = !DILocation(line: 1790, column: 19, scope: !542, inlinedAt: !1037)
!1043 = !DILocation(line: 1790, column: 3, scope: !542, inlinedAt: !1037)
!1044 = !DILocation(line: 1791, column: 15, scope: !553, inlinedAt: !1037)
!1045 = !DILocation(line: 1791, column: 5, scope: !553, inlinedAt: !1037)
!1046 = !DILocation(line: 1792, column: 26, scope: !553, inlinedAt: !1037)
!1047 = !DILocation(line: 752, column: 8, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1025, file: !3, line: 752, column: 7)
!1049 = !DILocation(line: 752, column: 7, scope: !1025)
!1050 = !DILocation(line: 442, column: 43, scope: !863, inlinedAt: !1051)
!1051 = distinct !DILocation(line: 753, column: 5, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 752, column: 52)
!1053 = !DILocation(line: 442, column: 70, scope: !863, inlinedAt: !1051)
!1054 = !DILocation(line: 445, column: 3, scope: !863, inlinedAt: !1051)
!1055 = !DILocation(line: 448, column: 3, scope: !863, inlinedAt: !1051)
!1056 = !DILocation(line: 754, column: 3, scope: !1052)
!1057 = !DILocation(line: 740, column: 7, scope: !1025)
!1058 = !DILocation(line: 766, column: 9, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 766, column: 9)
!1060 = distinct !DILexicalBlock(scope: !1061, file: !3, line: 765, column: 49)
!1061 = distinct !DILexicalBlock(scope: !1062, file: !3, line: 765, column: 3)
!1062 = distinct !DILexicalBlock(scope: !1025, file: !3, line: 765, column: 3)
!1063 = !DILocation(line: 766, column: 9, scope: !1060)
!1064 = !DILocation(line: 767, column: 32, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 766, column: 59)
!1066 = !DILocation(line: 442, column: 43, scope: !863, inlinedAt: !1067)
!1067 = distinct !DILocation(line: 767, column: 7, scope: !1065)
!1068 = !DILocation(line: 442, column: 70, scope: !863, inlinedAt: !1067)
!1069 = !DILocation(line: 445, column: 3, scope: !863, inlinedAt: !1067)
!1070 = !DILocation(line: 448, column: 3, scope: !863, inlinedAt: !1067)
!1071 = !DILocation(line: 768, column: 5, scope: !1065)
!1072 = !DILocalVariable(name: "netif", arg: 1, scope: !1073, file: !3, line: 919, type: !98)
!1073 = distinct !DISubprogram(name: "netif_set_down", scope: !3, file: !3, line: 919, type: !158, isLocal: false, isDefinition: true, scopeLine: 920, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1074)
!1074 = !{!1072, !1075}
!1075 = !DILocalVariable(name: "args", scope: !1076, file: !3, line: 928, type: !191)
!1076 = distinct !DILexicalBlock(scope: !1077, file: !3, line: 927, column: 5)
!1077 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 925, column: 37)
!1078 = distinct !DILexicalBlock(scope: !1073, file: !3, line: 925, column: 7)
!1079 = !DILocation(line: 919, column: 30, scope: !1073, inlinedAt: !1080)
!1080 = distinct !DILocation(line: 777, column: 5, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 775, column: 27)
!1082 = distinct !DILexicalBlock(scope: !1025, file: !3, line: 775, column: 7)
!1083 = !DILocation(line: 928, column: 7, scope: !1076, inlinedAt: !1080)
!1084 = !DILocation(line: 929, column: 33, scope: !1076, inlinedAt: !1080)
!1085 = !DILocation(line: 928, column: 33, scope: !1076, inlinedAt: !1080)
!1086 = !DILocation(line: 1784, column: 41, scope: !542, inlinedAt: !1087)
!1087 = distinct !DILocation(line: 930, column: 7, scope: !1076, inlinedAt: !1080)
!1088 = !DILocation(line: 1784, column: 67, scope: !542, inlinedAt: !1087)
!1089 = !DILocation(line: 1784, column: 108, scope: !542, inlinedAt: !1087)
!1090 = !DILocation(line: 1786, column: 25, scope: !542, inlinedAt: !1087)
!1091 = !DILocation(line: 0, scope: !553, inlinedAt: !1087)
!1092 = !DILocation(line: 1790, column: 19, scope: !542, inlinedAt: !1087)
!1093 = !DILocation(line: 1790, column: 3, scope: !542, inlinedAt: !1087)
!1094 = !DILocation(line: 1791, column: 15, scope: !553, inlinedAt: !1087)
!1095 = !DILocation(line: 1791, column: 5, scope: !553, inlinedAt: !1087)
!1096 = !DILocation(line: 1792, column: 26, scope: !553, inlinedAt: !1087)
!1097 = !DILocation(line: 934, column: 5, scope: !1098, inlinedAt: !1080)
!1098 = distinct !DILexicalBlock(scope: !1077, file: !3, line: 934, column: 5)
!1099 = !DILocation(line: 931, column: 5, scope: !1077, inlinedAt: !1080)
!1100 = !DILocation(line: 938, column: 22, scope: !1101, inlinedAt: !1080)
!1101 = distinct !DILexicalBlock(scope: !1077, file: !3, line: 938, column: 9)
!1102 = !DILocation(line: 938, column: 9, scope: !1077, inlinedAt: !1080)
!1103 = !DILocation(line: 939, column: 7, scope: !1104, inlinedAt: !1080)
!1104 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 938, column: 43)
!1105 = !DILocation(line: 940, column: 5, scope: !1104, inlinedAt: !1080)
!1106 = !DILocation(line: 944, column: 5, scope: !1077, inlinedAt: !1080)
!1107 = !DILocation(line: 947, column: 5, scope: !1108, inlinedAt: !1080)
!1108 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 947, column: 5)
!1109 = distinct !DILexicalBlock(scope: !1077, file: !3, line: 947, column: 5)
!1110 = !DILocation(line: 947, column: 5, scope: !1109, inlinedAt: !1080)
!1111 = !DILocation(line: 947, column: 5, scope: !1112, inlinedAt: !1080)
!1112 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 947, column: 5)
!1113 = !DILocation(line: 783, column: 7, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1025, file: !3, line: 783, column: 7)
!1115 = !DILocation(line: 783, column: 21, scope: !1114)
!1116 = !DILocation(line: 783, column: 7, scope: !1025)
!1117 = !DILocalVariable(name: "netif", arg: 1, scope: !1118, file: !3, line: 822, type: !98)
!1118 = distinct !DISubprogram(name: "netif_set_default", scope: !3, file: !3, line: 822, type: !158, isLocal: false, isDefinition: true, scopeLine: 823, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1119)
!1119 = !{!1117}
!1120 = !DILocation(line: 822, column: 33, scope: !1118, inlinedAt: !1121)
!1121 = distinct !DILocation(line: 785, column: 5, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 783, column: 31)
!1123 = !DILocation(line: 833, column: 17, scope: !1118, inlinedAt: !1121)
!1124 = !DILocation(line: 786, column: 3, scope: !1122)
!1125 = !DILocation(line: 789, column: 7, scope: !1031)
!1126 = !DILocation(line: 789, column: 18, scope: !1031)
!1127 = !DILocation(line: 789, column: 7, scope: !1025)
!1128 = !DILocation(line: 790, column: 25, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1031, file: !3, line: 789, column: 28)
!1130 = !DILocation(line: 790, column: 16, scope: !1129)
!1131 = !DILocation(line: 791, column: 3, scope: !1129)
!1132 = !DILocation(line: 794, column: 5, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 794, column: 5)
!1134 = !DILocation(line: 793, column: 19, scope: !1030)
!1135 = !DILocation(line: 795, column: 22, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 795, column: 11)
!1137 = distinct !DILexicalBlock(scope: !1138, file: !3, line: 794, column: 30)
!1138 = distinct !DILexicalBlock(scope: !1133, file: !3, line: 794, column: 5)
!1139 = !DILocation(line: 795, column: 27, scope: !1136)
!1140 = !DILocation(line: 795, column: 11, scope: !1137)
!1141 = distinct !{!1141, !1132, !1142}
!1142 = !DILocation(line: 799, column: 5, scope: !1133)
!1143 = !DILocation(line: 796, column: 34, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 795, column: 37)
!1145 = !DILocation(line: 796, column: 25, scope: !1144)
!1146 = !DILocation(line: 807, column: 14, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1025, file: !3, line: 807, column: 7)
!1148 = !{!291, !292, i64 224}
!1149 = !DILocation(line: 807, column: 7, scope: !1147)
!1150 = !DILocation(line: 807, column: 7, scope: !1025)
!1151 = !DILocation(line: 808, column: 5, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1147, file: !3, line: 807, column: 31)
!1153 = !DILocation(line: 809, column: 3, scope: !1152)
!1154 = !DILocation(line: 812, column: 1, scope: !1025)
!1155 = !DILocation(line: 772, column: 3, scope: !1025)
!1156 = !DILocation(line: 775, column: 7, scope: !1082)
!1157 = !DILocation(line: 775, column: 7, scope: !1025)
!1158 = !DILocation(line: 919, column: 30, scope: !1073)
!1159 = !DILocation(line: 923, column: 3, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1161, file: !3, line: 923, column: 3)
!1161 = distinct !DILexicalBlock(scope: !1073, file: !3, line: 923, column: 3)
!1162 = !DILocation(line: 923, column: 3, scope: !1161)
!1163 = !DILocation(line: 923, column: 3, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 923, column: 3)
!1165 = distinct !DILexicalBlock(scope: !1160, file: !3, line: 923, column: 3)
!1166 = !DILocation(line: 923, column: 3, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 923, column: 3)
!1168 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 923, column: 3)
!1169 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 923, column: 3)
!1170 = !DILocation(line: 925, column: 14, scope: !1078)
!1171 = !DILocation(line: 925, column: 20, scope: !1078)
!1172 = !DILocation(line: 925, column: 7, scope: !1073)
!1173 = !DILocation(line: 928, column: 7, scope: !1076)
!1174 = !DILocation(line: 929, column: 33, scope: !1076)
!1175 = !DILocation(line: 928, column: 33, scope: !1076)
!1176 = !DILocation(line: 1784, column: 41, scope: !542, inlinedAt: !1177)
!1177 = distinct !DILocation(line: 930, column: 7, scope: !1076)
!1178 = !DILocation(line: 1784, column: 67, scope: !542, inlinedAt: !1177)
!1179 = !DILocation(line: 1784, column: 108, scope: !542, inlinedAt: !1177)
!1180 = !DILocation(line: 1786, column: 25, scope: !542, inlinedAt: !1177)
!1181 = !DILocation(line: 0, scope: !553, inlinedAt: !1177)
!1182 = !DILocation(line: 1790, column: 19, scope: !542, inlinedAt: !1177)
!1183 = !DILocation(line: 1790, column: 3, scope: !542, inlinedAt: !1177)
!1184 = !DILocation(line: 1791, column: 15, scope: !553, inlinedAt: !1177)
!1185 = !DILocation(line: 1791, column: 5, scope: !553, inlinedAt: !1177)
!1186 = !DILocation(line: 1792, column: 26, scope: !553, inlinedAt: !1177)
!1187 = !DILocation(line: 934, column: 5, scope: !1098)
!1188 = !DILocation(line: 931, column: 5, scope: !1077)
!1189 = !DILocation(line: 938, column: 22, scope: !1101)
!1190 = !DILocation(line: 938, column: 9, scope: !1077)
!1191 = !DILocation(line: 939, column: 7, scope: !1104)
!1192 = !DILocation(line: 940, column: 5, scope: !1104)
!1193 = !DILocation(line: 944, column: 5, scope: !1077)
!1194 = !DILocation(line: 947, column: 5, scope: !1108)
!1195 = !DILocation(line: 947, column: 5, scope: !1109)
!1196 = !DILocation(line: 947, column: 5, scope: !1112)
!1197 = !DILocation(line: 949, column: 1, scope: !1073)
!1198 = !DILocation(line: 822, column: 33, scope: !1118)
!1199 = !DILocation(line: 833, column: 17, scope: !1118)
!1200 = !DILocation(line: 836, column: 1, scope: !1118)
!1201 = distinct !DISubprogram(name: "netif_set_up", scope: !3, file: !3, line: 844, type: !158, isLocal: false, isDefinition: true, scopeLine: 845, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1202)
!1202 = !{!1203, !1204}
!1203 = !DILocalVariable(name: "netif", arg: 1, scope: !1201, file: !3, line: 844, type: !98)
!1204 = !DILocalVariable(name: "args", scope: !1205, file: !3, line: 859, type: !191)
!1205 = distinct !DILexicalBlock(scope: !1206, file: !3, line: 858, column: 5)
!1206 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 850, column: 40)
!1207 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 850, column: 7)
!1208 = !DILocation(line: 844, column: 28, scope: !1201)
!1209 = !DILocation(line: 848, column: 3, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1211, file: !3, line: 848, column: 3)
!1211 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 848, column: 3)
!1212 = !DILocation(line: 848, column: 3, scope: !1211)
!1213 = !DILocation(line: 848, column: 3, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 848, column: 3)
!1215 = distinct !DILexicalBlock(scope: !1210, file: !3, line: 848, column: 3)
!1216 = !DILocation(line: 848, column: 3, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 848, column: 3)
!1218 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 848, column: 3)
!1219 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 848, column: 3)
!1220 = !DILocation(line: 850, column: 16, scope: !1207)
!1221 = !DILocation(line: 850, column: 22, scope: !1207)
!1222 = !DILocation(line: 850, column: 7, scope: !1201)
!1223 = !DILocation(line: 851, column: 5, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1206, file: !3, line: 851, column: 5)
!1225 = !DILocation(line: 855, column: 5, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1227, file: !3, line: 855, column: 5)
!1227 = distinct !DILexicalBlock(scope: !1206, file: !3, line: 855, column: 5)
!1228 = !DILocation(line: 855, column: 5, scope: !1227)
!1229 = !DILocation(line: 855, column: 5, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1226, file: !3, line: 855, column: 5)
!1231 = !DILocation(line: 859, column: 7, scope: !1205)
!1232 = !DILocation(line: 860, column: 33, scope: !1205)
!1233 = !DILocation(line: 859, column: 33, scope: !1205)
!1234 = !DILocation(line: 1784, column: 41, scope: !542, inlinedAt: !1235)
!1235 = distinct !DILocation(line: 861, column: 7, scope: !1205)
!1236 = !DILocation(line: 1784, column: 67, scope: !542, inlinedAt: !1235)
!1237 = !DILocation(line: 1784, column: 108, scope: !542, inlinedAt: !1235)
!1238 = !DILocation(line: 1786, column: 25, scope: !542, inlinedAt: !1235)
!1239 = !DILocation(line: 0, scope: !553, inlinedAt: !1235)
!1240 = !DILocation(line: 1790, column: 19, scope: !542, inlinedAt: !1235)
!1241 = !DILocation(line: 1790, column: 3, scope: !542, inlinedAt: !1235)
!1242 = !DILocation(line: 1791, column: 15, scope: !553, inlinedAt: !1235)
!1243 = !DILocation(line: 1791, column: 5, scope: !553, inlinedAt: !1235)
!1244 = !DILocation(line: 1792, column: 26, scope: !553, inlinedAt: !1235)
!1245 = !DILocation(line: 862, column: 5, scope: !1206)
!1246 = !DILocation(line: 875, column: 35, scope: !877, inlinedAt: !1247)
!1247 = distinct !DILocation(line: 865, column: 5, scope: !1206)
!1248 = !DILocation(line: 875, column: 47, scope: !877, inlinedAt: !1247)
!1249 = !DILocation(line: 880, column: 16, scope: !886, inlinedAt: !1247)
!1250 = !DILocation(line: 880, column: 9, scope: !886, inlinedAt: !1247)
!1251 = !DILocation(line: 880, column: 44, scope: !886, inlinedAt: !1247)
!1252 = !DILocation(line: 887, column: 8, scope: !890, inlinedAt: !1247)
!1253 = !DILocation(line: 890, column: 22, scope: !892, inlinedAt: !1247)
!1254 = !DILocation(line: 886, column: 7, scope: !877, inlinedAt: !1247)
!1255 = !DILocation(line: 891, column: 7, scope: !896, inlinedAt: !1247)
!1256 = !DILocation(line: 892, column: 5, scope: !896, inlinedAt: !1247)
!1257 = !DILocation(line: 908, column: 5, scope: !1258, inlinedAt: !1247)
!1258 = distinct !DILexicalBlock(scope: !1259, file: !3, line: 905, column: 45)
!1259 = distinct !DILexicalBlock(scope: !877, file: !3, line: 905, column: 7)
!1260 = !DILocation(line: 910, column: 3, scope: !1258, inlinedAt: !1247)
!1261 = !DILocation(line: 867, column: 5, scope: !1206)
!1262 = !DILocation(line: 869, column: 3, scope: !1206)
!1263 = !DILocation(line: 870, column: 1, scope: !1201)
!1264 = distinct !DISubprogram(name: "netif_set_status_callback", scope: !3, file: !3, line: 957, type: !1265, isLocal: false, isDefinition: true, scopeLine: 958, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1267)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{null, !98, !156}
!1267 = !{!1268, !1269}
!1268 = !DILocalVariable(name: "netif", arg: 1, scope: !1264, file: !3, line: 957, type: !98)
!1269 = !DILocalVariable(name: "status_callback", arg: 2, scope: !1264, file: !3, line: 957, type: !156)
!1270 = !DILocation(line: 957, column: 41, scope: !1264)
!1271 = !DILocation(line: 957, column: 73, scope: !1264)
!1272 = !DILocation(line: 961, column: 7, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1264, file: !3, line: 961, column: 7)
!1274 = !DILocation(line: 961, column: 7, scope: !1264)
!1275 = !DILocation(line: 962, column: 12, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 961, column: 14)
!1277 = !DILocation(line: 962, column: 28, scope: !1276)
!1278 = !DILocation(line: 963, column: 3, scope: !1276)
!1279 = !DILocation(line: 964, column: 1, scope: !1264)
!1280 = distinct !DISubprogram(name: "netif_set_remove_callback", scope: !3, file: !3, line: 973, type: !1265, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1281)
!1281 = !{!1282, !1283}
!1282 = !DILocalVariable(name: "netif", arg: 1, scope: !1280, file: !3, line: 973, type: !98)
!1283 = !DILocalVariable(name: "remove_callback", arg: 2, scope: !1280, file: !3, line: 973, type: !156)
!1284 = !DILocation(line: 973, column: 41, scope: !1280)
!1285 = !DILocation(line: 973, column: 73, scope: !1280)
!1286 = !DILocation(line: 977, column: 7, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1280, file: !3, line: 977, column: 7)
!1288 = !DILocation(line: 977, column: 7, scope: !1280)
!1289 = !DILocation(line: 978, column: 12, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1287, file: !3, line: 977, column: 14)
!1291 = !DILocation(line: 978, column: 28, scope: !1290)
!1292 = !DILocation(line: 979, column: 3, scope: !1290)
!1293 = !DILocation(line: 980, column: 1, scope: !1280)
!1294 = distinct !DISubprogram(name: "netif_set_link_up", scope: !3, file: !3, line: 988, type: !158, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1295)
!1295 = !{!1296, !1297}
!1296 = !DILocalVariable(name: "netif", arg: 1, scope: !1294, file: !3, line: 988, type: !98)
!1297 = !DILocalVariable(name: "args", scope: !1298, file: !3, line: 1013, type: !191)
!1298 = distinct !DILexicalBlock(scope: !1299, file: !3, line: 1012, column: 5)
!1299 = distinct !DILexicalBlock(scope: !1300, file: !3, line: 994, column: 45)
!1300 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 994, column: 7)
!1301 = !DILocation(line: 988, column: 33, scope: !1294)
!1302 = !DILocation(line: 992, column: 3, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1304, file: !3, line: 992, column: 3)
!1304 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 992, column: 3)
!1305 = !DILocation(line: 992, column: 3, scope: !1304)
!1306 = !DILocation(line: 992, column: 3, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 992, column: 3)
!1308 = distinct !DILexicalBlock(scope: !1303, file: !3, line: 992, column: 3)
!1309 = !DILocation(line: 992, column: 3, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1311, file: !3, line: 992, column: 3)
!1311 = distinct !DILexicalBlock(scope: !1312, file: !3, line: 992, column: 3)
!1312 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 992, column: 3)
!1313 = !DILocation(line: 994, column: 16, scope: !1300)
!1314 = !DILocation(line: 994, column: 22, scope: !1300)
!1315 = !DILocation(line: 994, column: 7, scope: !1294)
!1316 = !DILocation(line: 995, column: 5, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1299, file: !3, line: 995, column: 5)
!1318 = !DILocation(line: 875, column: 35, scope: !877, inlinedAt: !1319)
!1319 = distinct !DILocation(line: 1005, column: 5, scope: !1299)
!1320 = !DILocation(line: 875, column: 47, scope: !877, inlinedAt: !1319)
!1321 = !DILocation(line: 880, column: 9, scope: !886, inlinedAt: !1319)
!1322 = !DILocation(line: 880, column: 44, scope: !886, inlinedAt: !1319)
!1323 = !DILocation(line: 887, column: 8, scope: !890, inlinedAt: !1319)
!1324 = !DILocation(line: 890, column: 22, scope: !892, inlinedAt: !1319)
!1325 = !DILocation(line: 886, column: 7, scope: !877, inlinedAt: !1319)
!1326 = !DILocation(line: 891, column: 7, scope: !896, inlinedAt: !1319)
!1327 = !DILocation(line: 892, column: 5, scope: !896, inlinedAt: !1319)
!1328 = !DILocation(line: 908, column: 5, scope: !1258, inlinedAt: !1319)
!1329 = !DILocation(line: 910, column: 3, scope: !1258, inlinedAt: !1319)
!1330 = !DILocation(line: 1007, column: 5, scope: !1299)
!1331 = !DILocation(line: 1013, column: 7, scope: !1298)
!1332 = !DILocation(line: 1014, column: 31, scope: !1298)
!1333 = !DILocation(line: 1013, column: 33, scope: !1298)
!1334 = !DILocation(line: 1784, column: 41, scope: !542, inlinedAt: !1335)
!1335 = distinct !DILocation(line: 1015, column: 7, scope: !1298)
!1336 = !DILocation(line: 1784, column: 67, scope: !542, inlinedAt: !1335)
!1337 = !DILocation(line: 1784, column: 108, scope: !542, inlinedAt: !1335)
!1338 = !DILocation(line: 1786, column: 25, scope: !542, inlinedAt: !1335)
!1339 = !DILocation(line: 0, scope: !553, inlinedAt: !1335)
!1340 = !DILocation(line: 1790, column: 19, scope: !542, inlinedAt: !1335)
!1341 = !DILocation(line: 1790, column: 3, scope: !542, inlinedAt: !1335)
!1342 = !DILocation(line: 1791, column: 15, scope: !553, inlinedAt: !1335)
!1343 = !DILocation(line: 1791, column: 5, scope: !553, inlinedAt: !1335)
!1344 = !DILocation(line: 1792, column: 26, scope: !553, inlinedAt: !1335)
!1345 = !DILocation(line: 1016, column: 5, scope: !1299)
!1346 = !DILocation(line: 1018, column: 3, scope: !1299)
!1347 = !DILocation(line: 1019, column: 1, scope: !1294)
!1348 = distinct !DISubprogram(name: "netif_set_link_down", scope: !3, file: !3, line: 1026, type: !158, isLocal: false, isDefinition: true, scopeLine: 1027, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1349)
!1349 = !{!1350, !1351}
!1350 = !DILocalVariable(name: "netif", arg: 1, scope: !1348, file: !3, line: 1026, type: !98)
!1351 = !DILocalVariable(name: "args", scope: !1352, file: !3, line: 1037, type: !191)
!1352 = distinct !DILexicalBlock(scope: !1353, file: !3, line: 1036, column: 5)
!1353 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 1032, column: 42)
!1354 = distinct !DILexicalBlock(scope: !1348, file: !3, line: 1032, column: 7)
!1355 = !DILocation(line: 1026, column: 35, scope: !1348)
!1356 = !DILocation(line: 1030, column: 3, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1358, file: !3, line: 1030, column: 3)
!1358 = distinct !DILexicalBlock(scope: !1348, file: !3, line: 1030, column: 3)
!1359 = !DILocation(line: 1030, column: 3, scope: !1358)
!1360 = !DILocation(line: 1030, column: 3, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1362, file: !3, line: 1030, column: 3)
!1362 = distinct !DILexicalBlock(scope: !1357, file: !3, line: 1030, column: 3)
!1363 = !DILocation(line: 1030, column: 3, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1365, file: !3, line: 1030, column: 3)
!1365 = distinct !DILexicalBlock(scope: !1366, file: !3, line: 1030, column: 3)
!1366 = distinct !DILexicalBlock(scope: !1361, file: !3, line: 1030, column: 3)
!1367 = !DILocation(line: 1032, column: 14, scope: !1354)
!1368 = !DILocation(line: 1032, column: 20, scope: !1354)
!1369 = !DILocation(line: 1032, column: 7, scope: !1348)
!1370 = !DILocation(line: 1033, column: 5, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1353, file: !3, line: 1033, column: 5)
!1372 = !DILocation(line: 1037, column: 7, scope: !1352)
!1373 = !DILocation(line: 1038, column: 31, scope: !1352)
!1374 = !DILocation(line: 1037, column: 33, scope: !1352)
!1375 = !DILocation(line: 1784, column: 41, scope: !542, inlinedAt: !1376)
!1376 = distinct !DILocation(line: 1039, column: 7, scope: !1352)
!1377 = !DILocation(line: 1784, column: 67, scope: !542, inlinedAt: !1376)
!1378 = !DILocation(line: 1784, column: 108, scope: !542, inlinedAt: !1376)
!1379 = !DILocation(line: 1786, column: 25, scope: !542, inlinedAt: !1376)
!1380 = !DILocation(line: 0, scope: !553, inlinedAt: !1376)
!1381 = !DILocation(line: 1790, column: 19, scope: !542, inlinedAt: !1376)
!1382 = !DILocation(line: 1790, column: 3, scope: !542, inlinedAt: !1376)
!1383 = !DILocation(line: 1791, column: 15, scope: !553, inlinedAt: !1376)
!1384 = !DILocation(line: 1791, column: 5, scope: !553, inlinedAt: !1376)
!1385 = !DILocation(line: 1792, column: 26, scope: !553, inlinedAt: !1376)
!1386 = !DILocation(line: 1040, column: 5, scope: !1353)
!1387 = !DILocation(line: 1042, column: 3, scope: !1353)
!1388 = !DILocation(line: 1043, column: 1, scope: !1348)
!1389 = distinct !DISubprogram(name: "netif_ip6_addr_set", scope: !3, file: !3, line: 1314, type: !1390, isLocal: false, isDefinition: true, scopeLine: 1315, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1392)
!1390 = !DISubroutineType(types: !1391)
!1391 = !{null, !98, !120, !84}
!1392 = !{!1393, !1394, !1395}
!1393 = !DILocalVariable(name: "netif", arg: 1, scope: !1389, file: !3, line: 1314, type: !98)
!1394 = !DILocalVariable(name: "addr_idx", arg: 2, scope: !1389, file: !3, line: 1314, type: !120)
!1395 = !DILocalVariable(name: "addr6", arg: 3, scope: !1389, file: !3, line: 1314, type: !84)
!1396 = !DILocation(line: 1314, column: 34, scope: !1389)
!1397 = !DILocation(line: 1314, column: 46, scope: !1389)
!1398 = !DILocation(line: 1314, column: 74, scope: !1389)
!1399 = !DILocation(line: 1318, column: 3, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1401, file: !3, line: 1318, column: 3)
!1401 = distinct !DILexicalBlock(scope: !1389, file: !3, line: 1318, column: 3)
!1402 = !DILocation(line: 1318, column: 3, scope: !1401)
!1403 = !DILocation(line: 1318, column: 3, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1405, file: !3, line: 1318, column: 3)
!1405 = distinct !DILexicalBlock(scope: !1400, file: !3, line: 1318, column: 3)
!1406 = !DILocation(line: 1318, column: 3, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 1318, column: 3)
!1408 = distinct !DILexicalBlock(scope: !1409, file: !3, line: 1318, column: 3)
!1409 = distinct !DILexicalBlock(scope: !1404, file: !3, line: 1318, column: 3)
!1410 = !DILocation(line: 1319, column: 3, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1412, file: !3, line: 1319, column: 3)
!1412 = distinct !DILexicalBlock(scope: !1389, file: !3, line: 1319, column: 3)
!1413 = !DILocation(line: 1319, column: 3, scope: !1412)
!1414 = !DILocation(line: 1319, column: 3, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1416, file: !3, line: 1319, column: 3)
!1416 = distinct !DILexicalBlock(scope: !1411, file: !3, line: 1319, column: 3)
!1417 = !DILocation(line: 1319, column: 3, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1419, file: !3, line: 1319, column: 3)
!1419 = distinct !DILexicalBlock(scope: !1420, file: !3, line: 1319, column: 3)
!1420 = distinct !DILexicalBlock(scope: !1415, file: !3, line: 1319, column: 3)
!1421 = !DILocation(line: 1321, column: 45, scope: !1389)
!1422 = !DILocation(line: 1321, column: 61, scope: !1389)
!1423 = !DILocation(line: 1322, column: 28, scope: !1389)
!1424 = !DILocation(line: 1322, column: 44, scope: !1389)
!1425 = !DILocation(line: 1321, column: 3, scope: !1389)
!1426 = !DILocation(line: 1323, column: 1, scope: !1389)
!1427 = distinct !DISubprogram(name: "netif_ip6_addr_set_parts", scope: !3, file: !3, line: 1336, type: !1428, isLocal: false, isDefinition: true, scopeLine: 1337, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1430)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{null, !98, !120, !54, !54, !54, !54}
!1430 = !{!1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439}
!1431 = !DILocalVariable(name: "netif", arg: 1, scope: !1427, file: !3, line: 1336, type: !98)
!1432 = !DILocalVariable(name: "addr_idx", arg: 2, scope: !1427, file: !3, line: 1336, type: !120)
!1433 = !DILocalVariable(name: "i0", arg: 3, scope: !1427, file: !3, line: 1336, type: !54)
!1434 = !DILocalVariable(name: "i1", arg: 4, scope: !1427, file: !3, line: 1336, type: !54)
!1435 = !DILocalVariable(name: "i2", arg: 5, scope: !1427, file: !3, line: 1336, type: !54)
!1436 = !DILocalVariable(name: "i3", arg: 6, scope: !1427, file: !3, line: 1336, type: !54)
!1437 = !DILocalVariable(name: "old_addr", scope: !1427, file: !3, line: 1338, type: !66)
!1438 = !DILocalVariable(name: "new_ipaddr", scope: !1427, file: !3, line: 1339, type: !66)
!1439 = !DILocalVariable(name: "args", scope: !1440, file: !3, line: 1369, type: !191)
!1440 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 1368, column: 5)
!1441 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 1349, column: 85)
!1442 = distinct !DILexicalBlock(scope: !1427, file: !3, line: 1348, column: 7)
!1443 = !DILocation(line: 1336, column: 40, scope: !1427)
!1444 = !DILocation(line: 1336, column: 52, scope: !1427)
!1445 = !DILocation(line: 1336, column: 68, scope: !1427)
!1446 = !DILocation(line: 1336, column: 78, scope: !1427)
!1447 = !DILocation(line: 1336, column: 88, scope: !1427)
!1448 = !DILocation(line: 1336, column: 98, scope: !1427)
!1449 = !DILocation(line: 1338, column: 3, scope: !1427)
!1450 = !DILocation(line: 1339, column: 3, scope: !1427)
!1451 = !DILocation(line: 1341, column: 3, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 1341, column: 3)
!1453 = distinct !DILexicalBlock(scope: !1427, file: !3, line: 1341, column: 3)
!1454 = !DILocation(line: 1341, column: 3, scope: !1453)
!1455 = !DILocation(line: 1341, column: 3, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 1341, column: 3)
!1457 = distinct !DILexicalBlock(scope: !1452, file: !3, line: 1341, column: 3)
!1458 = !DILocation(line: 1341, column: 3, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1460, file: !3, line: 1341, column: 3)
!1460 = distinct !DILexicalBlock(scope: !1461, file: !3, line: 1341, column: 3)
!1461 = distinct !DILexicalBlock(scope: !1456, file: !3, line: 1341, column: 3)
!1462 = !DILocation(line: 1342, column: 3, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1464, file: !3, line: 1342, column: 3)
!1464 = distinct !DILexicalBlock(scope: !1427, file: !3, line: 1342, column: 3)
!1465 = !DILocation(line: 1342, column: 3, scope: !1464)
!1466 = !DILocation(line: 1342, column: 3, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1468, file: !3, line: 1342, column: 3)
!1468 = distinct !DILexicalBlock(scope: !1463, file: !3, line: 1342, column: 3)
!1469 = !DILocation(line: 1342, column: 3, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 1342, column: 3)
!1471 = distinct !DILexicalBlock(scope: !1472, file: !3, line: 1342, column: 3)
!1472 = distinct !DILexicalBlock(scope: !1467, file: !3, line: 1342, column: 3)
!1473 = !DILocation(line: 1344, column: 3, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1427, file: !3, line: 1344, column: 3)
!1475 = !DILocation(line: 1345, column: 3, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1427, file: !3, line: 1345, column: 3)
!1477 = !DILocation(line: 1348, column: 37, scope: !1442)
!1478 = !DILocation(line: 1348, column: 77, scope: !1442)
!1479 = !DILocation(line: 1348, column: 44, scope: !1442)
!1480 = !DILocation(line: 1349, column: 37, scope: !1442)
!1481 = !DILocation(line: 1349, column: 77, scope: !1442)
!1482 = !DILocation(line: 1352, column: 5, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1484, file: !3, line: 1352, column: 5)
!1484 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 1352, column: 5)
!1485 = !DILocation(line: 1352, column: 5, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1484, file: !3, line: 1352, column: 5)
!1487 = !DILocation(line: 1353, column: 5, scope: !1441)
!1488 = !DILocation(line: 1355, column: 9, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 1355, column: 9)
!1490 = !DILocation(line: 1355, column: 9, scope: !1441)
!1491 = !DILocation(line: 1360, column: 5, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1493, file: !3, line: 1360, column: 5)
!1493 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 1360, column: 5)
!1494 = !DILocation(line: 1360, column: 5, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1496, file: !3, line: 1360, column: 5)
!1496 = distinct !DILexicalBlock(scope: !1497, file: !3, line: 1360, column: 5)
!1497 = distinct !DILexicalBlock(scope: !1493, file: !3, line: 1360, column: 5)
!1498 = !DILocation(line: 1360, column: 5, scope: !1493)
!1499 = !DILocation(line: 1339, column: 13, scope: !1427)
!1500 = !DILocation(line: 442, column: 43, scope: !863, inlinedAt: !1501)
!1501 = distinct !DILocation(line: 1356, column: 7, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1489, file: !3, line: 1355, column: 66)
!1503 = !DILocation(line: 442, column: 70, scope: !863, inlinedAt: !1501)
!1504 = !DILocation(line: 445, column: 3, scope: !863, inlinedAt: !1501)
!1505 = !DILocation(line: 448, column: 3, scope: !863, inlinedAt: !1501)
!1506 = !DILocation(line: 1360, column: 5, scope: !1497)
!1507 = !DILocation(line: 1360, column: 5, scope: !1496)
!1508 = !DILocation(line: 1360, column: 5, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 1360, column: 5)
!1510 = distinct !DILexicalBlock(scope: !1497, file: !3, line: 1360, column: 5)
!1511 = !DILocation(line: 1362, column: 9, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 1362, column: 9)
!1513 = !DILocation(line: 1362, column: 9, scope: !1441)
!1514 = !DILocation(line: 875, column: 35, scope: !877, inlinedAt: !1515)
!1515 = distinct !DILocation(line: 1363, column: 7, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1512, file: !3, line: 1362, column: 66)
!1517 = !DILocation(line: 875, column: 47, scope: !877, inlinedAt: !1515)
!1518 = !DILocation(line: 880, column: 16, scope: !886, inlinedAt: !1515)
!1519 = !DILocation(line: 880, column: 44, scope: !886, inlinedAt: !1515)
!1520 = !DILocation(line: 908, column: 5, scope: !1258, inlinedAt: !1515)
!1521 = !DILocation(line: 910, column: 3, scope: !1258, inlinedAt: !1515)
!1522 = !DILocation(line: 1364, column: 7, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1524, file: !3, line: 1364, column: 7)
!1524 = distinct !DILexicalBlock(scope: !1516, file: !3, line: 1364, column: 7)
!1525 = !DILocation(line: 1364, column: 7, scope: !1524)
!1526 = !DILocation(line: 1364, column: 7, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1523, file: !3, line: 1364, column: 7)
!1528 = !DILocation(line: 1369, column: 7, scope: !1440)
!1529 = !DILocation(line: 1370, column: 33, scope: !1440)
!1530 = !DILocation(line: 1371, column: 21, scope: !1440)
!1531 = !DILocation(line: 1371, column: 33, scope: !1440)
!1532 = !DILocation(line: 1369, column: 33, scope: !1440)
!1533 = !DILocation(line: 1784, column: 41, scope: !542, inlinedAt: !1534)
!1534 = distinct !DILocation(line: 1372, column: 7, scope: !1440)
!1535 = !DILocation(line: 1784, column: 67, scope: !542, inlinedAt: !1534)
!1536 = !DILocation(line: 1784, column: 108, scope: !542, inlinedAt: !1534)
!1537 = !DILocation(line: 1786, column: 25, scope: !542, inlinedAt: !1534)
!1538 = !DILocation(line: 0, scope: !553, inlinedAt: !1534)
!1539 = !DILocation(line: 1790, column: 19, scope: !542, inlinedAt: !1534)
!1540 = !DILocation(line: 1790, column: 3, scope: !542, inlinedAt: !1534)
!1541 = !DILocation(line: 1791, column: 15, scope: !553, inlinedAt: !1534)
!1542 = !DILocation(line: 1791, column: 5, scope: !553, inlinedAt: !1534)
!1543 = !DILocation(line: 1792, column: 26, scope: !553, inlinedAt: !1534)
!1544 = !DILocation(line: 1373, column: 5, scope: !1441)
!1545 = !DILocation(line: 1375, column: 3, scope: !1441)
!1546 = !DILocation(line: 1380, column: 1, scope: !1427)
!1547 = distinct !DISubprogram(name: "netif_ip6_addr_set_state", scope: !3, file: !3, line: 1393, type: !1548, isLocal: false, isDefinition: true, scopeLine: 1394, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1550)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{null, !98, !120, !47}
!1550 = !{!1551, !1552, !1553, !1554, !1555, !1558, !1559}
!1551 = !DILocalVariable(name: "netif", arg: 1, scope: !1547, file: !3, line: 1393, type: !98)
!1552 = !DILocalVariable(name: "addr_idx", arg: 2, scope: !1547, file: !3, line: 1393, type: !120)
!1553 = !DILocalVariable(name: "state", arg: 3, scope: !1547, file: !3, line: 1393, type: !47)
!1554 = !DILocalVariable(name: "old_state", scope: !1547, file: !3, line: 1395, type: !47)
!1555 = !DILocalVariable(name: "old_valid", scope: !1556, file: !3, line: 1403, type: !47)
!1556 = distinct !DILexicalBlock(scope: !1557, file: !3, line: 1402, column: 27)
!1557 = distinct !DILexicalBlock(scope: !1547, file: !3, line: 1402, column: 7)
!1558 = !DILocalVariable(name: "new_valid", scope: !1556, file: !3, line: 1404, type: !47)
!1559 = !DILocalVariable(name: "args", scope: !1560, file: !3, line: 1436, type: !191)
!1560 = distinct !DILexicalBlock(scope: !1556, file: !3, line: 1435, column: 5)
!1561 = !DILocation(line: 1393, column: 40, scope: !1547)
!1562 = !DILocation(line: 1393, column: 52, scope: !1547)
!1563 = !DILocation(line: 1393, column: 67, scope: !1547)
!1564 = !DILocation(line: 1397, column: 3, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1566, file: !3, line: 1397, column: 3)
!1566 = distinct !DILexicalBlock(scope: !1547, file: !3, line: 1397, column: 3)
!1567 = !DILocation(line: 1397, column: 3, scope: !1566)
!1568 = !DILocation(line: 1397, column: 3, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1570, file: !3, line: 1397, column: 3)
!1570 = distinct !DILexicalBlock(scope: !1565, file: !3, line: 1397, column: 3)
!1571 = !DILocation(line: 1397, column: 3, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1573, file: !3, line: 1397, column: 3)
!1573 = distinct !DILexicalBlock(scope: !1574, file: !3, line: 1397, column: 3)
!1574 = distinct !DILexicalBlock(scope: !1569, file: !3, line: 1397, column: 3)
!1575 = !DILocation(line: 1398, column: 3, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1577, file: !3, line: 1398, column: 3)
!1577 = distinct !DILexicalBlock(scope: !1547, file: !3, line: 1398, column: 3)
!1578 = !DILocation(line: 1398, column: 3, scope: !1577)
!1579 = !DILocation(line: 1398, column: 3, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1581, file: !3, line: 1398, column: 3)
!1581 = distinct !DILexicalBlock(scope: !1576, file: !3, line: 1398, column: 3)
!1582 = !DILocation(line: 1398, column: 3, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1584, file: !3, line: 1398, column: 3)
!1584 = distinct !DILexicalBlock(scope: !1585, file: !3, line: 1398, column: 3)
!1585 = distinct !DILexicalBlock(scope: !1580, file: !3, line: 1398, column: 3)
!1586 = !DILocation(line: 1400, column: 15, scope: !1547)
!1587 = !DILocation(line: 1395, column: 8, scope: !1547)
!1588 = !DILocation(line: 1402, column: 17, scope: !1557)
!1589 = !DILocation(line: 1402, column: 7, scope: !1547)
!1590 = !DILocation(line: 1403, column: 32, scope: !1556)
!1591 = !DILocation(line: 1403, column: 10, scope: !1556)
!1592 = !DILocation(line: 1404, column: 28, scope: !1556)
!1593 = !DILocation(line: 1404, column: 10, scope: !1556)
!1594 = !DILocation(line: 1409, column: 16, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1556, file: !3, line: 1409, column: 9)
!1596 = !DILocation(line: 1409, column: 22, scope: !1595)
!1597 = !DILocation(line: 1409, column: 9, scope: !1556)
!1598 = !DILocation(line: 1410, column: 7, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 1409, column: 41)
!1600 = !DILocation(line: 1411, column: 5, scope: !1599)
!1601 = !DILocation(line: 1414, column: 9, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1556, file: !3, line: 1414, column: 9)
!1603 = !DILocation(line: 1414, column: 23, scope: !1602)
!1604 = !DILocation(line: 1414, column: 19, scope: !1602)
!1605 = !DILocation(line: 1416, column: 32, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1602, file: !3, line: 1414, column: 34)
!1607 = !DILocation(line: 442, column: 43, scope: !863, inlinedAt: !1608)
!1608 = distinct !DILocation(line: 1416, column: 7, scope: !1606)
!1609 = !DILocation(line: 442, column: 70, scope: !863, inlinedAt: !1608)
!1610 = !DILocation(line: 445, column: 3, scope: !863, inlinedAt: !1608)
!1611 = !DILocation(line: 448, column: 3, scope: !863, inlinedAt: !1608)
!1612 = !DILocation(line: 1419, column: 37, scope: !1556)
!1613 = !DILocation(line: 1421, column: 20, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1556, file: !3, line: 1421, column: 9)
!1615 = !DILocation(line: 1421, column: 10, scope: !1614)
!1616 = !DILocation(line: 1421, column: 23, scope: !1614)
!1617 = !DILocation(line: 875, column: 35, scope: !877, inlinedAt: !1618)
!1618 = distinct !DILocation(line: 1426, column: 7, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1614, file: !3, line: 1421, column: 34)
!1620 = !DILocation(line: 875, column: 47, scope: !877, inlinedAt: !1618)
!1621 = !DILocation(line: 880, column: 16, scope: !886, inlinedAt: !1618)
!1622 = !DILocation(line: 880, column: 44, scope: !886, inlinedAt: !1618)
!1623 = !DILocation(line: 908, column: 5, scope: !1258, inlinedAt: !1618)
!1624 = !DILocation(line: 910, column: 3, scope: !1258, inlinedAt: !1618)
!1625 = !DILocation(line: 1428, column: 54, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1556, file: !3, line: 1428, column: 9)
!1627 = !DILocation(line: 1428, column: 9, scope: !1556)
!1628 = !DILocation(line: 1431, column: 7, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1630, file: !3, line: 1431, column: 7)
!1630 = distinct !DILexicalBlock(scope: !1631, file: !3, line: 1431, column: 7)
!1631 = distinct !DILexicalBlock(scope: !1626, file: !3, line: 1429, column: 55)
!1632 = !DILocation(line: 1431, column: 7, scope: !1630)
!1633 = !DILocation(line: 1431, column: 7, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1629, file: !3, line: 1431, column: 7)
!1635 = !DILocation(line: 1436, column: 7, scope: !1560)
!1636 = !DILocation(line: 1437, column: 12, scope: !1560)
!1637 = !DILocation(line: 1437, column: 47, scope: !1560)
!1638 = !DILocation(line: 1438, column: 36, scope: !1560)
!1639 = !DILocation(line: 1438, column: 47, scope: !1560)
!1640 = !DILocation(line: 1439, column: 49, scope: !1560)
!1641 = !DILocation(line: 1439, column: 36, scope: !1560)
!1642 = !DILocation(line: 1439, column: 47, scope: !1560)
!1643 = !DILocation(line: 1436, column: 33, scope: !1560)
!1644 = !DILocation(line: 1784, column: 41, scope: !542, inlinedAt: !1645)
!1645 = distinct !DILocation(line: 1440, column: 7, scope: !1560)
!1646 = !DILocation(line: 1784, column: 67, scope: !542, inlinedAt: !1645)
!1647 = !DILocation(line: 1784, column: 108, scope: !542, inlinedAt: !1645)
!1648 = !DILocation(line: 1786, column: 25, scope: !542, inlinedAt: !1645)
!1649 = !DILocation(line: 0, scope: !553, inlinedAt: !1645)
!1650 = !DILocation(line: 1790, column: 19, scope: !542, inlinedAt: !1645)
!1651 = !DILocation(line: 1790, column: 3, scope: !542, inlinedAt: !1645)
!1652 = !DILocation(line: 1791, column: 15, scope: !553, inlinedAt: !1645)
!1653 = !DILocation(line: 1791, column: 5, scope: !553, inlinedAt: !1645)
!1654 = !DILocation(line: 1792, column: 26, scope: !553, inlinedAt: !1645)
!1655 = !DILocation(line: 1441, column: 5, scope: !1556)
!1656 = !DILocation(line: 1443, column: 3, scope: !1556)
!1657 = !DILocation(line: 1447, column: 1, scope: !1547)
!1658 = distinct !DISubprogram(name: "netif_get_ip6_addr_match", scope: !3, file: !3, line: 1464, type: !1659, isLocal: false, isDefinition: true, scopeLine: 1465, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1661)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{!120, !98, !84}
!1661 = !{!1662, !1663, !1664}
!1662 = !DILocalVariable(name: "netif", arg: 1, scope: !1658, file: !3, line: 1464, type: !98)
!1663 = !DILocalVariable(name: "ip6addr", arg: 2, scope: !1658, file: !3, line: 1464, type: !84)
!1664 = !DILocalVariable(name: "i", scope: !1658, file: !3, line: 1466, type: !120)
!1665 = !DILocation(line: 1464, column: 40, scope: !1658)
!1666 = !DILocation(line: 1464, column: 65, scope: !1658)
!1667 = !DILocation(line: 1470, column: 3, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1669, file: !3, line: 1470, column: 3)
!1669 = distinct !DILexicalBlock(scope: !1658, file: !3, line: 1470, column: 3)
!1670 = !DILocation(line: 1470, column: 3, scope: !1669)
!1671 = !DILocation(line: 1470, column: 3, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1673, file: !3, line: 1470, column: 3)
!1673 = distinct !DILexicalBlock(scope: !1668, file: !3, line: 1470, column: 3)
!1674 = !DILocation(line: 1470, column: 3, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1676, file: !3, line: 1470, column: 3)
!1676 = distinct !DILexicalBlock(scope: !1677, file: !3, line: 1470, column: 3)
!1677 = distinct !DILexicalBlock(scope: !1672, file: !3, line: 1470, column: 3)
!1678 = !DILocation(line: 1471, column: 3, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1680, file: !3, line: 1471, column: 3)
!1680 = distinct !DILexicalBlock(scope: !1658, file: !3, line: 1471, column: 3)
!1681 = !DILocation(line: 1471, column: 3, scope: !1680)
!1682 = !DILocation(line: 1471, column: 3, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1684, file: !3, line: 1471, column: 3)
!1684 = distinct !DILexicalBlock(scope: !1679, file: !3, line: 1471, column: 3)
!1685 = !DILocation(line: 1471, column: 3, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1687, file: !3, line: 1471, column: 3)
!1687 = distinct !DILexicalBlock(scope: !1688, file: !3, line: 1471, column: 3)
!1688 = distinct !DILexicalBlock(scope: !1683, file: !3, line: 1471, column: 3)
!1689 = !DILocation(line: 1474, column: 7, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1658, file: !3, line: 1474, column: 7)
!1691 = !{!1692, !293, i64 16}
!1692 = !{!"ip6_addr", !293, i64 0, !293, i64 16}
!1693 = !DILocation(line: 1474, column: 34, scope: !1690)
!1694 = !DILocation(line: 1474, column: 38, scope: !1690)
!1695 = !DILocation(line: 1474, column: 7, scope: !1658)
!1696 = !DILocation(line: 1466, column: 8, scope: !1658)
!1697 = !DILocation(line: 1480, column: 10, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1699, file: !3, line: 1480, column: 9)
!1699 = distinct !DILexicalBlock(scope: !1700, file: !3, line: 1479, column: 49)
!1700 = distinct !DILexicalBlock(scope: !1701, file: !3, line: 1479, column: 3)
!1701 = distinct !DILexicalBlock(scope: !1658, file: !3, line: 1479, column: 3)
!1702 = !DILocation(line: 1480, column: 61, scope: !1698)
!1703 = !DILocation(line: 1481, column: 9, scope: !1698)
!1704 = !DILocation(line: 1480, column: 9, scope: !1699)
!1705 = !DILocation(line: 0, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1690, file: !3, line: 1474, column: 74)
!1707 = !DILocation(line: 1486, column: 1, scope: !1658)
!1708 = distinct !DISubprogram(name: "netif_create_ip6_linklocal_address", scope: !3, file: !3, line: 1497, type: !878, isLocal: false, isDefinition: true, scopeLine: 1498, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1709)
!1709 = !{!1710, !1711, !1712, !1713}
!1710 = !DILocalVariable(name: "netif", arg: 1, scope: !1708, file: !3, line: 1497, type: !98)
!1711 = !DILocalVariable(name: "from_mac_48bit", arg: 2, scope: !1708, file: !3, line: 1497, type: !47)
!1712 = !DILocalVariable(name: "i", scope: !1708, file: !3, line: 1499, type: !47)
!1713 = !DILocalVariable(name: "addr_index", scope: !1708, file: !3, line: 1499, type: !47)
!1714 = !DILocation(line: 1497, column: 50, scope: !1708)
!1715 = !DILocation(line: 1497, column: 62, scope: !1708)
!1716 = !DILocation(line: 1503, column: 3, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1718, file: !3, line: 1503, column: 3)
!1718 = distinct !DILexicalBlock(scope: !1708, file: !3, line: 1503, column: 3)
!1719 = !DILocation(line: 1503, column: 3, scope: !1718)
!1720 = !DILocation(line: 1503, column: 3, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1722, file: !3, line: 1503, column: 3)
!1722 = distinct !DILexicalBlock(scope: !1717, file: !3, line: 1503, column: 3)
!1723 = !DILocation(line: 1503, column: 3, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1725, file: !3, line: 1503, column: 3)
!1725 = distinct !DILexicalBlock(scope: !1726, file: !3, line: 1503, column: 3)
!1726 = distinct !DILexicalBlock(scope: !1721, file: !3, line: 1503, column: 3)
!1727 = !DILocation(line: 1506, column: 3, scope: !1708)
!1728 = !DILocation(line: 1506, column: 42, scope: !1708)
!1729 = !DILocation(line: 1507, column: 3, scope: !1708)
!1730 = !DILocation(line: 1507, column: 42, scope: !1708)
!1731 = !DILocation(line: 1510, column: 7, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1708, file: !3, line: 1510, column: 7)
!1733 = !DILocation(line: 1510, column: 7, scope: !1708)
!1734 = !DILocation(line: 1512, column: 67, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1732, file: !3, line: 1510, column: 23)
!1736 = !DILocation(line: 1512, column: 84, scope: !1735)
!1737 = !DILocation(line: 1512, column: 93, scope: !1735)
!1738 = !DILocation(line: 1513, column: 18, scope: !1735)
!1739 = !DILocation(line: 1513, column: 10, scope: !1735)
!1740 = !DILocation(line: 1513, column: 36, scope: !1735)
!1741 = !DILocation(line: 1514, column: 18, scope: !1735)
!1742 = !DILocation(line: 1514, column: 10, scope: !1735)
!1743 = !DILocation(line: 1514, column: 36, scope: !1735)
!1744 = !DILocation(line: 1513, column: 43, scope: !1735)
!1745 = !DILocation(line: 1514, column: 42, scope: !1735)
!1746 = !DILocation(line: 1512, column: 46, scope: !1735)
!1747 = !DILocation(line: 1512, column: 5, scope: !1735)
!1748 = !DILocation(line: 1512, column: 44, scope: !1735)
!1749 = !DILocation(line: 1517, column: 18, scope: !1735)
!1750 = !DILocation(line: 1517, column: 10, scope: !1735)
!1751 = !DILocation(line: 1517, column: 36, scope: !1735)
!1752 = !DILocation(line: 1518, column: 18, scope: !1735)
!1753 = !DILocation(line: 1518, column: 10, scope: !1735)
!1754 = !DILocation(line: 1518, column: 36, scope: !1735)
!1755 = !DILocation(line: 1519, column: 10, scope: !1735)
!1756 = !DILocation(line: 1519, column: 9, scope: !1735)
!1757 = !DILocation(line: 1518, column: 42, scope: !1735)
!1758 = !DILocation(line: 1516, column: 46, scope: !1735)
!1759 = !DILocation(line: 1516, column: 5, scope: !1735)
!1760 = !DILocation(line: 1516, column: 44, scope: !1735)
!1761 = !DILocation(line: 1520, column: 3, scope: !1735)
!1762 = !DILocation(line: 1522, column: 5, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1732, file: !3, line: 1520, column: 10)
!1764 = !DILocation(line: 1522, column: 44, scope: !1763)
!1765 = !DILocation(line: 1523, column: 5, scope: !1763)
!1766 = !DILocation(line: 1523, column: 44, scope: !1763)
!1767 = !DILocation(line: 1499, column: 11, scope: !1708)
!1768 = !DILocation(line: 1499, column: 8, scope: !1708)
!1769 = !DILocation(line: 1526, column: 40, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1771, file: !3, line: 1526, column: 5)
!1771 = distinct !DILexicalBlock(scope: !1763, file: !3, line: 1526, column: 5)
!1772 = !DILocation(line: 1526, column: 25, scope: !1770)
!1773 = !{!291, !293, i64 260}
!1774 = !DILocation(line: 1526, column: 31, scope: !1770)
!1775 = !DILocation(line: 1526, column: 5, scope: !1771)
!1776 = !DILocation(line: 1527, column: 13, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1778, file: !3, line: 1527, column: 11)
!1778 = distinct !DILexicalBlock(scope: !1770, file: !3, line: 1526, column: 58)
!1779 = !DILocation(line: 1527, column: 11, scope: !1778)
!1780 = !DILocation(line: 1530, column: 114, scope: !1778)
!1781 = !DILocation(line: 1530, column: 78, scope: !1778)
!1782 = !DILocation(line: 1530, column: 70, scope: !1778)
!1783 = !DILocation(line: 1530, column: 127, scope: !1778)
!1784 = !DILocation(line: 1530, column: 121, scope: !1778)
!1785 = !DILocation(line: 1530, column: 58, scope: !1778)
!1786 = !DILocation(line: 1530, column: 7, scope: !1778)
!1787 = !DILocation(line: 1530, column: 55, scope: !1778)
!1788 = !DILocation(line: 1526, column: 54, scope: !1770)
!1789 = !DILocation(line: 1526, column: 20, scope: !1770)
!1790 = distinct !{!1790, !1775, !1791}
!1791 = !DILocation(line: 1531, column: 5, scope: !1771)
!1792 = !DILocation(line: 1542, column: 3, scope: !1708)
!1793 = !DILocation(line: 1547, column: 3, scope: !1708)
!1794 = !DILocation(line: 1552, column: 1, scope: !1708)
!1795 = distinct !DISubprogram(name: "netif_add_ip6_address", scope: !3, file: !3, line: 1565, type: !1796, isLocal: false, isDefinition: true, scopeLine: 1566, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1799)
!1796 = !DISubroutineType(types: !1797)
!1797 = !{!119, !98, !84, !1798}
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!1799 = !{!1800, !1801, !1802, !1803}
!1800 = !DILocalVariable(name: "netif", arg: 1, scope: !1795, file: !3, line: 1565, type: !98)
!1801 = !DILocalVariable(name: "ip6addr", arg: 2, scope: !1795, file: !3, line: 1565, type: !84)
!1802 = !DILocalVariable(name: "chosen_idx", arg: 3, scope: !1795, file: !3, line: 1565, type: !1798)
!1803 = !DILocalVariable(name: "i", scope: !1795, file: !3, line: 1567, type: !120)
!1804 = !DILocation(line: 1565, column: 37, scope: !1795)
!1805 = !DILocation(line: 1565, column: 62, scope: !1795)
!1806 = !DILocation(line: 1565, column: 77, scope: !1795)
!1807 = !DILocation(line: 1571, column: 3, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1809, file: !3, line: 1571, column: 3)
!1809 = distinct !DILexicalBlock(scope: !1795, file: !3, line: 1571, column: 3)
!1810 = !DILocation(line: 1571, column: 3, scope: !1809)
!1811 = !DILocation(line: 1571, column: 3, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 1571, column: 3)
!1813 = distinct !DILexicalBlock(scope: !1808, file: !3, line: 1571, column: 3)
!1814 = !DILocation(line: 1571, column: 3, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1816, file: !3, line: 1571, column: 3)
!1816 = distinct !DILexicalBlock(scope: !1817, file: !3, line: 1571, column: 3)
!1817 = distinct !DILexicalBlock(scope: !1812, file: !3, line: 1571, column: 3)
!1818 = !DILocation(line: 1572, column: 3, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1820, file: !3, line: 1572, column: 3)
!1820 = distinct !DILexicalBlock(scope: !1795, file: !3, line: 1572, column: 3)
!1821 = !DILocation(line: 1572, column: 3, scope: !1820)
!1822 = !DILocation(line: 1572, column: 3, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1824, file: !3, line: 1572, column: 3)
!1824 = distinct !DILexicalBlock(scope: !1819, file: !3, line: 1572, column: 3)
!1825 = !DILocation(line: 1572, column: 3, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1827, file: !3, line: 1572, column: 3)
!1827 = distinct !DILexicalBlock(scope: !1828, file: !3, line: 1572, column: 3)
!1828 = distinct !DILexicalBlock(scope: !1823, file: !3, line: 1572, column: 3)
!1829 = !DILocation(line: 1574, column: 7, scope: !1795)
!1830 = !DILocation(line: 1567, column: 8, scope: !1795)
!1831 = !DILocation(line: 1575, column: 9, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1795, file: !3, line: 1575, column: 7)
!1833 = !DILocation(line: 1575, column: 7, scope: !1795)
!1834 = !DILocation(line: 1577, column: 20, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1836, file: !3, line: 1577, column: 9)
!1836 = distinct !DILexicalBlock(scope: !1832, file: !3, line: 1575, column: 15)
!1837 = !DILocation(line: 1577, column: 9, scope: !1836)
!1838 = !DILocation(line: 1578, column: 19, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1835, file: !3, line: 1577, column: 29)
!1840 = !DILocation(line: 1579, column: 5, scope: !1839)
!1841 = !DILocation(line: 1584, column: 12, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1795, file: !3, line: 1584, column: 3)
!1843 = !DILocation(line: 1585, column: 9, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1845, file: !3, line: 1585, column: 9)
!1845 = distinct !DILexicalBlock(scope: !1846, file: !3, line: 1584, column: 85)
!1846 = distinct !DILexicalBlock(scope: !1842, file: !3, line: 1584, column: 3)
!1847 = !DILocation(line: 1585, column: 9, scope: !1845)
!1848 = !DILocation(line: 1586, column: 7, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1850, file: !3, line: 1586, column: 7)
!1850 = distinct !DILexicalBlock(scope: !1851, file: !3, line: 1586, column: 7)
!1851 = distinct !DILexicalBlock(scope: !1844, file: !3, line: 1585, column: 61)
!1852 = !DILocation(line: 1586, column: 7, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1850, file: !3, line: 1586, column: 7)
!1854 = !DILocation(line: 1587, column: 7, scope: !1851)
!1855 = !DILocation(line: 1588, column: 7, scope: !1851)
!1856 = !DILocation(line: 1589, column: 22, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1851, file: !3, line: 1589, column: 11)
!1858 = !DILocation(line: 1589, column: 11, scope: !1851)
!1859 = !DILocation(line: 1590, column: 21, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1857, file: !3, line: 1589, column: 31)
!1861 = !DILocation(line: 1591, column: 7, scope: !1860)
!1862 = !DILocation(line: 1584, column: 81, scope: !1846)
!1863 = !DILocation(line: 1596, column: 18, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1795, file: !3, line: 1596, column: 7)
!1865 = !DILocation(line: 1596, column: 7, scope: !1795)
!1866 = !DILocation(line: 1597, column: 17, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1864, file: !3, line: 1596, column: 27)
!1868 = !DILocation(line: 1598, column: 3, scope: !1867)
!1869 = !DILocation(line: 0, scope: !1795)
!1870 = !DILocation(line: 1600, column: 1, scope: !1795)
!1871 = !DILocation(line: 1584, column: 53, scope: !1846)
!1872 = !DILocation(line: 1584, column: 3, scope: !1842)
!1873 = distinct !{!1873, !1872, !1874}
!1874 = !DILocation(line: 1594, column: 3, scope: !1842)
!1875 = distinct !DISubprogram(name: "netif_name_to_index", scope: !3, file: !3, line: 1637, type: !1876, isLocal: false, isDefinition: true, scopeLine: 1638, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1878)
!1876 = !DISubroutineType(types: !1877)
!1877 = !{!47, !231}
!1878 = !{!1879, !1880}
!1879 = !DILocalVariable(name: "name", arg: 1, scope: !1875, file: !3, line: 1637, type: !231)
!1880 = !DILocalVariable(name: "netif", scope: !1875, file: !3, line: 1639, type: !98)
!1881 = !DILocation(line: 1637, column: 33, scope: !1875)
!1882 = !DILocalVariable(name: "name", arg: 1, scope: !1883, file: !3, line: 1701, type: !231)
!1883 = distinct !DISubprogram(name: "netif_find", scope: !3, file: !3, line: 1701, type: !1884, isLocal: false, isDefinition: true, scopeLine: 1702, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1886)
!1884 = !DISubroutineType(types: !1885)
!1885 = !{!98, !231}
!1886 = !{!1882, !1887, !1888}
!1887 = !DILocalVariable(name: "netif", scope: !1883, file: !3, line: 1703, type: !98)
!1888 = !DILocalVariable(name: "num", scope: !1883, file: !3, line: 1704, type: !47)
!1889 = !DILocation(line: 1701, column: 24, scope: !1883, inlinedAt: !1890)
!1890 = distinct !DILocation(line: 1639, column: 25, scope: !1875)
!1891 = !DILocation(line: 1708, column: 12, scope: !1892, inlinedAt: !1890)
!1892 = distinct !DILexicalBlock(scope: !1883, file: !3, line: 1708, column: 7)
!1893 = !DILocation(line: 1708, column: 7, scope: !1883, inlinedAt: !1890)
!1894 = !DILocation(line: 1712, column: 21, scope: !1883, inlinedAt: !1890)
!1895 = !DILocation(line: 1712, column: 15, scope: !1883, inlinedAt: !1890)
!1896 = !DILocation(line: 1703, column: 17, scope: !1883, inlinedAt: !1890)
!1897 = !DILocation(line: 1717, column: 9, scope: !1898, inlinedAt: !1890)
!1898 = distinct !DILexicalBlock(scope: !1899, file: !3, line: 1715, column: 9)
!1899 = distinct !DILexicalBlock(scope: !1900, file: !3, line: 1714, column: 24)
!1900 = distinct !DILexicalBlock(scope: !1901, file: !3, line: 1714, column: 3)
!1901 = distinct !DILexicalBlock(scope: !1883, file: !3, line: 1714, column: 3)
!1902 = !DILocation(line: 1714, column: 3, scope: !1901, inlinedAt: !1890)
!1903 = !DILocation(line: 1714, column: 3, scope: !1900, inlinedAt: !1890)
!1904 = !DILocation(line: 1715, column: 23, scope: !1898, inlinedAt: !1890)
!1905 = !DILocation(line: 1715, column: 13, scope: !1898, inlinedAt: !1890)
!1906 = !DILocation(line: 1715, column: 27, scope: !1898, inlinedAt: !1890)
!1907 = !DILocation(line: 1716, column: 9, scope: !1898, inlinedAt: !1890)
!1908 = !DILocation(line: 1716, column: 20, scope: !1898, inlinedAt: !1890)
!1909 = !DILocation(line: 1716, column: 17, scope: !1898, inlinedAt: !1890)
!1910 = !DILocation(line: 1716, column: 35, scope: !1898, inlinedAt: !1890)
!1911 = !DILocation(line: 1717, column: 20, scope: !1898, inlinedAt: !1890)
!1912 = !DILocation(line: 1717, column: 17, scope: !1898, inlinedAt: !1890)
!1913 = !DILocation(line: 1715, column: 9, scope: !1899, inlinedAt: !1890)
!1914 = distinct !{!1914, !1915, !1916}
!1915 = !DILocation(line: 1714, column: 3, scope: !1901)
!1916 = !DILocation(line: 1721, column: 3, scope: !1901)
!1917 = !DILocation(line: 1639, column: 17, scope: !1875)
!1918 = !DILocation(line: 1641, column: 12, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1920, file: !3, line: 1640, column: 22)
!1920 = distinct !DILexicalBlock(scope: !1875, file: !3, line: 1640, column: 7)
!1921 = !DILocation(line: 1641, column: 5, scope: !1919)
!1922 = !DILocation(line: 0, scope: !1875)
!1923 = !DILocation(line: 1645, column: 1, scope: !1875)
!1924 = !DILocation(line: 1701, column: 24, scope: !1883)
!1925 = !DILocation(line: 1708, column: 12, scope: !1892)
!1926 = !DILocation(line: 1708, column: 7, scope: !1883)
!1927 = !DILocation(line: 1712, column: 21, scope: !1883)
!1928 = !DILocation(line: 1712, column: 15, scope: !1883)
!1929 = !DILocation(line: 1703, column: 17, scope: !1883)
!1930 = !DILocation(line: 1717, column: 9, scope: !1898)
!1931 = !DILocation(line: 1714, column: 3, scope: !1900)
!1932 = !DILocation(line: 1715, column: 23, scope: !1898)
!1933 = !DILocation(line: 1715, column: 13, scope: !1898)
!1934 = !DILocation(line: 1715, column: 27, scope: !1898)
!1935 = !DILocation(line: 1716, column: 9, scope: !1898)
!1936 = !DILocation(line: 1716, column: 20, scope: !1898)
!1937 = !DILocation(line: 1716, column: 17, scope: !1898)
!1938 = !DILocation(line: 1716, column: 35, scope: !1898)
!1939 = !DILocation(line: 1717, column: 20, scope: !1898)
!1940 = !DILocation(line: 1717, column: 17, scope: !1898)
!1941 = !DILocation(line: 1715, column: 9, scope: !1899)
!1942 = !DILocation(line: 0, scope: !1883)
!1943 = !DILocation(line: 1724, column: 1, scope: !1883)
!1944 = distinct !DISubprogram(name: "netif_index_to_name", scope: !3, file: !3, line: 1656, type: !1945, isLocal: false, isDefinition: true, scopeLine: 1657, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1948)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{!1947, !47, !1947}
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!1948 = !{!1949, !1950, !1951}
!1949 = !DILocalVariable(name: "idx", arg: 1, scope: !1944, file: !3, line: 1656, type: !47)
!1950 = !DILocalVariable(name: "name", arg: 2, scope: !1944, file: !3, line: 1656, type: !1947)
!1951 = !DILocalVariable(name: "netif", scope: !1944, file: !3, line: 1658, type: !98)
!1952 = !DILocation(line: 1656, column: 26, scope: !1944)
!1953 = !DILocation(line: 1656, column: 37, scope: !1944)
!1954 = !DILocalVariable(name: "idx", arg: 1, scope: !1955, file: !3, line: 1676, type: !47)
!1955 = distinct !DISubprogram(name: "netif_get_by_index", scope: !3, file: !3, line: 1676, type: !1956, isLocal: false, isDefinition: true, scopeLine: 1677, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1958)
!1956 = !DISubroutineType(types: !1957)
!1957 = !{!98, !47}
!1958 = !{!1954, !1959}
!1959 = !DILocalVariable(name: "netif", scope: !1955, file: !3, line: 1678, type: !98)
!1960 = !DILocation(line: 1676, column: 25, scope: !1955, inlinedAt: !1961)
!1961 = distinct !DILocation(line: 1658, column: 25, scope: !1944)
!1962 = !DILocation(line: 1682, column: 11, scope: !1963, inlinedAt: !1961)
!1963 = distinct !DILexicalBlock(scope: !1955, file: !3, line: 1682, column: 7)
!1964 = !DILocation(line: 1682, column: 7, scope: !1955, inlinedAt: !1961)
!1965 = !DILocation(line: 1683, column: 5, scope: !1966, inlinedAt: !1961)
!1966 = distinct !DILexicalBlock(scope: !1967, file: !3, line: 1683, column: 5)
!1967 = distinct !DILexicalBlock(scope: !1963, file: !3, line: 1682, column: 30)
!1968 = !DILocation(line: 1678, column: 17, scope: !1955, inlinedAt: !1961)
!1969 = !DILocation(line: 1683, column: 5, scope: !1970, inlinedAt: !1961)
!1970 = distinct !DILexicalBlock(scope: !1966, file: !3, line: 1683, column: 5)
!1971 = !DILocation(line: 1684, column: 18, scope: !1972, inlinedAt: !1961)
!1972 = distinct !DILexicalBlock(scope: !1973, file: !3, line: 1684, column: 11)
!1973 = distinct !DILexicalBlock(scope: !1970, file: !3, line: 1683, column: 26)
!1974 = !DILocation(line: 1684, column: 15, scope: !1972, inlinedAt: !1961)
!1975 = !DILocation(line: 1684, column: 11, scope: !1973, inlinedAt: !1961)
!1976 = distinct !{!1976, !1977, !1978}
!1977 = !DILocation(line: 1683, column: 5, scope: !1966)
!1978 = !DILocation(line: 1687, column: 5, scope: !1966)
!1979 = !DILocation(line: 1658, column: 17, scope: !1944)
!1980 = !DILocation(line: 1661, column: 15, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1982, file: !3, line: 1660, column: 22)
!1982 = distinct !DILexicalBlock(scope: !1944, file: !3, line: 1660, column: 7)
!1983 = !DILocation(line: 1661, column: 13, scope: !1981)
!1984 = !DILocation(line: 1662, column: 15, scope: !1981)
!1985 = !DILocation(line: 1662, column: 5, scope: !1981)
!1986 = !DILocation(line: 1662, column: 13, scope: !1981)
!1987 = !DILocation(line: 1663, column: 16, scope: !1981)
!1988 = !DILocation(line: 1663, column: 45, scope: !1981)
!1989 = !DILocation(line: 1663, column: 5, scope: !1981)
!1990 = !DILocation(line: 1664, column: 5, scope: !1981)
!1991 = !DILocation(line: 0, scope: !1944)
!1992 = !DILocation(line: 1667, column: 1, scope: !1944)
!1993 = !DILocation(line: 1676, column: 25, scope: !1955)
!1994 = !DILocation(line: 1682, column: 11, scope: !1963)
!1995 = !DILocation(line: 1682, column: 7, scope: !1955)
!1996 = !DILocation(line: 1678, column: 17, scope: !1955)
!1997 = !DILocation(line: 1683, column: 5, scope: !1970)
!1998 = !DILocation(line: 1684, column: 18, scope: !1972)
!1999 = !DILocation(line: 1684, column: 15, scope: !1972)
!2000 = !DILocation(line: 1684, column: 11, scope: !1973)
!2001 = !DILocation(line: 0, scope: !1955)
!2002 = !DILocation(line: 1691, column: 1, scope: !1955)
!2003 = distinct !DISubprogram(name: "netif_add_ext_callback", scope: !3, file: !3, line: 1734, type: !2004, isLocal: false, isDefinition: true, scopeLine: 1735, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2006)
!2004 = !DISubroutineType(types: !2005)
!2005 = !{null, !89, !94}
!2006 = !{!2007, !2008}
!2007 = !DILocalVariable(name: "callback", arg: 1, scope: !2003, file: !3, line: 1734, type: !89)
!2008 = !DILocalVariable(name: "fn", arg: 2, scope: !2003, file: !3, line: 1734, type: !94)
!2009 = !DILocation(line: 1734, column: 46, scope: !2003)
!2010 = !DILocation(line: 1734, column: 78, scope: !2003)
!2011 = !DILocation(line: 1737, column: 3, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !3, line: 1737, column: 3)
!2013 = distinct !DILexicalBlock(scope: !2003, file: !3, line: 1737, column: 3)
!2014 = !DILocation(line: 1737, column: 3, scope: !2013)
!2015 = !DILocation(line: 1737, column: 3, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !2017, file: !3, line: 1737, column: 3)
!2017 = distinct !DILexicalBlock(scope: !2012, file: !3, line: 1737, column: 3)
!2018 = !DILocation(line: 1737, column: 3, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !2020, file: !3, line: 1737, column: 3)
!2020 = distinct !DILexicalBlock(scope: !2021, file: !3, line: 1737, column: 3)
!2021 = distinct !DILexicalBlock(scope: !2016, file: !3, line: 1737, column: 3)
!2022 = !DILocation(line: 1738, column: 3, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !2024, file: !3, line: 1738, column: 3)
!2024 = distinct !DILexicalBlock(scope: !2003, file: !3, line: 1738, column: 3)
!2025 = !DILocation(line: 1738, column: 3, scope: !2024)
!2026 = !DILocation(line: 1738, column: 3, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !2028, file: !3, line: 1738, column: 3)
!2028 = distinct !DILexicalBlock(scope: !2023, file: !3, line: 1738, column: 3)
!2029 = !DILocation(line: 1738, column: 3, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !2031, file: !3, line: 1738, column: 3)
!2031 = distinct !DILexicalBlock(scope: !2032, file: !3, line: 1738, column: 3)
!2032 = distinct !DILexicalBlock(scope: !2027, file: !3, line: 1738, column: 3)
!2033 = !DILocation(line: 1740, column: 13, scope: !2003)
!2034 = !DILocation(line: 1740, column: 25, scope: !2003)
!2035 = !DILocation(line: 1741, column: 27, scope: !2003)
!2036 = !DILocation(line: 1741, column: 13, scope: !2003)
!2037 = !DILocation(line: 1741, column: 25, scope: !2003)
!2038 = !{!558, !292, i64 8}
!2039 = !DILocation(line: 1742, column: 25, scope: !2003)
!2040 = !DILocation(line: 1743, column: 1, scope: !2003)
!2041 = distinct !DISubprogram(name: "netif_remove_ext_callback", scope: !3, file: !3, line: 1751, type: !2042, isLocal: false, isDefinition: true, scopeLine: 1752, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2044)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{null, !89}
!2044 = !{!2045, !2046, !2047}
!2045 = !DILocalVariable(name: "callback", arg: 1, scope: !2041, file: !3, line: 1751, type: !89)
!2046 = !DILocalVariable(name: "last", scope: !2041, file: !3, line: 1753, type: !89)
!2047 = !DILocalVariable(name: "iter", scope: !2041, file: !3, line: 1753, type: !89)
!2048 = !DILocation(line: 1751, column: 49, scope: !2041)
!2049 = !DILocation(line: 1756, column: 3, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2051, file: !3, line: 1756, column: 3)
!2051 = distinct !DILexicalBlock(scope: !2041, file: !3, line: 1756, column: 3)
!2052 = !DILocation(line: 1756, column: 3, scope: !2051)
!2053 = !DILocation(line: 1756, column: 3, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2055, file: !3, line: 1756, column: 3)
!2055 = distinct !DILexicalBlock(scope: !2050, file: !3, line: 1756, column: 3)
!2056 = !DILocation(line: 1756, column: 3, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2058, file: !3, line: 1756, column: 3)
!2058 = distinct !DILexicalBlock(scope: !2059, file: !3, line: 1756, column: 3)
!2059 = distinct !DILexicalBlock(scope: !2054, file: !3, line: 1756, column: 3)
!2060 = !DILocation(line: 1758, column: 7, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2041, file: !3, line: 1758, column: 7)
!2062 = !DILocation(line: 1758, column: 20, scope: !2061)
!2063 = !DILocation(line: 1758, column: 7, scope: !2041)
!2064 = !DILocation(line: 1762, column: 16, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2041, file: !3, line: 1762, column: 7)
!2066 = !DILocation(line: 1762, column: 7, scope: !2041)
!2067 = !DILocation(line: 1763, column: 34, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2065, file: !3, line: 1762, column: 33)
!2069 = !DILocation(line: 1763, column: 18, scope: !2068)
!2070 = !DILocation(line: 1764, column: 3, scope: !2068)
!2071 = !DILocation(line: 0, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2073, file: !3, line: 1766, column: 5)
!2073 = distinct !DILexicalBlock(scope: !2074, file: !3, line: 1766, column: 5)
!2074 = distinct !DILexicalBlock(scope: !2065, file: !3, line: 1764, column: 10)
!2075 = !DILocation(line: 1753, column: 32, scope: !2041)
!2076 = !DILocation(line: 1753, column: 25, scope: !2041)
!2077 = !DILocation(line: 1766, column: 42, scope: !2072)
!2078 = !DILocation(line: 1766, column: 5, scope: !2073)
!2079 = !DILocation(line: 1767, column: 16, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2081, file: !3, line: 1767, column: 11)
!2081 = distinct !DILexicalBlock(scope: !2072, file: !3, line: 1766, column: 83)
!2082 = !DILocation(line: 1767, column: 11, scope: !2081)
!2083 = distinct !{!2083, !2078, !2084}
!2084 = !DILocation(line: 1773, column: 5, scope: !2073)
!2085 = !DILocation(line: 1769, column: 32, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !2080, file: !3, line: 1767, column: 29)
!2087 = !DILocation(line: 1769, column: 20, scope: !2086)
!2088 = !DILocation(line: 1770, column: 24, scope: !2086)
!2089 = !DILocation(line: 1771, column: 9, scope: !2086)
!2090 = !DILocation(line: 1775, column: 1, scope: !2041)
