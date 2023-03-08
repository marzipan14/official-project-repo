; ModuleID = '/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/ipv6/nd6.c'
source_filename = "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/ipv6/nd6.c"
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
%struct.nd6_neighbor_cache_entry = type { %struct.ip6_addr, %struct.netif*, [6 x i8], %struct.nd6_q_entry*, i8, i8, %union.anon.0 }
%struct.nd6_q_entry = type { %struct.nd6_q_entry*, %struct.pbuf* }
%union.anon.0 = type { i32 }
%struct.nd6_router_list_entry = type { %struct.nd6_neighbor_cache_entry*, i32, i8 }
%union.ra_options = type { %struct.prefix_option }
%struct.prefix_option = type { i8, i8, i8, i8, i32, i32, [3 x i8], i8, %struct.ip6_addr_packed }
%struct.nd6_prefix_list_entry = type { %struct.ip6_addr, %struct.netif*, i32 }
%struct.nd6_destination_cache_entry = type { %struct.ip6_addr, %struct.ip6_addr, i16, i32 }
%struct.lladdr_option = type { i8, i8, [6 x i8] }
%struct.rs_header = type { i8, i8, i16, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.ns_header = type { i8, i8, i16, i32, %struct.ip6_addr_packed }

@reachable_time = dso_local local_unnamed_addr global i32 30000, align 4, !dbg !0
@retrans_timer = dso_local local_unnamed_addr global i32 1000, align 4, !dbg !265
@lwip_stats = external dso_local local_unnamed_addr global %struct.stats_, align 2
@ip_data = external dso_local global %struct.ip_globals, align 8
@neighbor_cache = common dso_local global [10 x %struct.nd6_neighbor_cache_entry] zeroinitializer, align 16, !dbg !267
@default_router_list = common dso_local local_unnamed_addr global [3 x %struct.nd6_router_list_entry] zeroinitializer, align 16, !dbg !390
@nd6_ra_buffer = internal global %union.ra_options zeroinitializer, align 1, !dbg !407
@prefix_list = common dso_local local_unnamed_addr global [5 x %struct.nd6_prefix_list_entry] zeroinitializer, align 16, !dbg !380
@destination_cache = common dso_local local_unnamed_addr global [10 x %struct.nd6_destination_cache_entry] zeroinitializer, align 16, !dbg !371
@netif_list = external dso_local local_unnamed_addr global %struct.netif*, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Assertion failure: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"!(1)\00", align 1
@nd6_tmr_rs_reduction = internal unnamed_addr global i8 0, align 1, !dbg !405
@.str.3 = private unnamed_addr constant [43 x i8] c"selected router must have a neighbor entry\00", align 1
@nd6_cached_destination_index = internal unnamed_addr global i8 0, align 1, !dbg !401
@nd6_cached_neighbor_index = internal unnamed_addr global i8 0, align 1, !dbg !399
@multicast_address = internal global %struct.ip6_addr zeroinitializer, align 16, !dbg !403
@uk_pr_crit.__str = internal global [8 x i8] c"liblwip\00", section ".data_shared", align 1, !dbg !414
@uk_pr_crit.__str.4 = internal global [6 x i8] c"nd6.c\00", section ".data_shared", align 1, !dbg !438
@.str.5 = private unnamed_addr constant [27 x i8] c"target address is required\00", align 1
@ip6_addr_any = external dso_local constant %struct.ip_addr, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"q != NULL\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"q->p != NULL\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"r->p != NULL\00", align 1
@nd6_select_router.last_router = internal unnamed_addr global i8 0, align 1, !dbg !441
@.str.9 = private unnamed_addr constant [14 x i8] c"type overflow\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local void @nd6_input(%struct.pbuf*, %struct.netif*) local_unnamed_addr #0 !dbg !457 {
  %3 = alloca %struct.ip6_addr, align 16
  %4 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 1), align 2, !dbg !515, !tbaa !516
  %5 = add i16 %4, 1, !dbg !515
  store i16 %5, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 1), align 2, !dbg !515, !tbaa !516
  %6 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 1, !dbg !525
  %7 = load i8*, i8** %6, align 8, !dbg !525, !tbaa !526
  %8 = load i8, i8* %7, align 1, !dbg !529, !tbaa !530
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !532
  switch i8 %8, label %1344 [
    i8 -120, label %9
    i8 -121, label %239
    i8 -122, label %456
    i8 -119, label %1081
    i8 2, label %1266
  ], !dbg !532

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 3, !dbg !533
  %11 = load i16, i16* %10, align 2, !dbg !533, !tbaa !535
  %12 = icmp ult i16 %11, 24, !dbg !536
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !537
  br i1 %12, label %13, label %19, !dbg !537

; <label>:13:                                     ; preds = %9
  %14 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !538
  %15 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 5), align 2, !dbg !540, !tbaa !541
  %16 = add i16 %15, 1, !dbg !540
  store i16 %16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 5), align 2, !dbg !540, !tbaa !541
  %17 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !542, !tbaa !543
  %18 = add i16 %17, 1, !dbg !542
  store i16 %18, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !542, !tbaa !543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !544
  br label %1358

; <label>:19:                                     ; preds = %9
  %20 = getelementptr inbounds i8, i8* %7, i64 8, !dbg !546
  %21 = bitcast i8* %20 to i32*, !dbg !546
  %22 = load i32, i32* %21, align 1, !dbg !546, !tbaa !548
  %23 = getelementptr inbounds i8, i8* %7, i64 12, !dbg !546
  %24 = bitcast i8* %23 to i32*, !dbg !546
  %25 = load i32, i32* %24, align 1, !dbg !546, !tbaa !548
  %26 = getelementptr inbounds i8, i8* %7, i64 16, !dbg !546
  %27 = bitcast i8* %26 to i32*, !dbg !546
  %28 = load i32, i32* %27, align 1, !dbg !546, !tbaa !548
  %29 = getelementptr inbounds i8, i8* %7, i64 20, !dbg !546
  %30 = bitcast i8* %29 to i32*, !dbg !546
  %31 = load i32, i32* %30, align 1, !dbg !546, !tbaa !548
  %32 = and i32 %22, 49407, !dbg !550
  %33 = icmp eq i32 %32, 33022, !dbg !550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !550
  br i1 %33, label %34, label %38, !dbg !550

; <label>:34:                                     ; preds = %19
  %35 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 23, !dbg !550
  %36 = load i8, i8* %35, align 8, !dbg !550, !tbaa !551
  %37 = add i8 %36, 1, !dbg !550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !550
  br label %38, !dbg !550

; <label>:38:                                     ; preds = %19, %34
  %39 = phi i8 [ %37, %34 ], [ 0, %19 ]
  %40 = load %struct.ip6_hdr*, %struct.ip6_hdr** getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 3), align 8, !dbg !554, !tbaa !556
  %41 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %40, i64 0, i32 3, !dbg !554
  %42 = load i8, i8* %41, align 1, !dbg !554, !tbaa !558
  %43 = icmp eq i8 %42, -1, !dbg !561
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !562
  br i1 %43, label %44, label %51, !dbg !562

; <label>:44:                                     ; preds = %38
  %45 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !563
  %46 = load i8, i8* %45, align 1, !dbg !563, !tbaa !564
  %47 = icmp eq i8 %46, 0, !dbg !566
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !567
  br i1 %47, label %48, label %51, !dbg !567

; <label>:48:                                     ; preds = %44
  %49 = and i32 %22, 255, !dbg !568
  %50 = icmp eq i32 %49, 255, !dbg !568
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !569
  br i1 %50, label %51, label %57, !dbg !569

; <label>:51:                                     ; preds = %44, %38, %48
  %52 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !570
  %53 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 8), align 2, !dbg !572, !tbaa !573
  %54 = add i16 %53, 1, !dbg !572
  store i16 %54, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 8), align 2, !dbg !572, !tbaa !573
  %55 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !574, !tbaa !543
  %56 = add i16 %55, 1, !dbg !574
  store i16 %56, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !574, !tbaa !543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !575
  br label %1358

; <label>:57:                                     ; preds = %48
  %58 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !576, !tbaa !530
  %59 = and i32 %58, 255, !dbg !576
  %60 = icmp eq i32 %59, 255, !dbg !576
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !578
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !579
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !579
  br i1 %60, label %61, label %154, !dbg !578

; <label>:61:                                     ; preds = %57
  %62 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 5, i64 0, !dbg !582
  %63 = load i8, i8* %62, align 1, !dbg !582, !tbaa !530
  %64 = icmp eq i8 %63, 0, !dbg !582
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !588
  br i1 %64, label %90, label %65, !dbg !588

; <label>:65:                                     ; preds = %61
  %66 = icmp eq i8 %63, 64, !dbg !589
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !590
  br i1 %66, label %90, label %67, !dbg !590

; <label>:67:                                     ; preds = %65
  %68 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !591
  %69 = load i32, i32* %68, align 8, !dbg !591, !tbaa !530
  %70 = icmp eq i32 %22, %69, !dbg !591
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !591
  br i1 %70, label %71, label %90, !dbg !591

; <label>:71:                                     ; preds = %67
  %72 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !591
  %73 = load i32, i32* %72, align 4, !dbg !591, !tbaa !530
  %74 = icmp eq i32 %25, %73, !dbg !591
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !591
  br i1 %74, label %75, label %90, !dbg !591

; <label>:75:                                     ; preds = %71
  %76 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !591
  %77 = load i32, i32* %76, align 8, !dbg !591, !tbaa !530
  %78 = icmp eq i32 %28, %77, !dbg !591
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !591
  br i1 %78, label %79, label %90, !dbg !591

; <label>:79:                                     ; preds = %75
  %80 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !591
  %81 = load i32, i32* %80, align 4, !dbg !591, !tbaa !530
  %82 = icmp eq i32 %31, %81, !dbg !591
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !591
  br i1 %82, label %83, label %90, !dbg !591

; <label>:83:                                     ; preds = %79
  %84 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 0, i32 0, i32 0, i32 1, !dbg !591
  %85 = load i8, i8* %84, align 8, !dbg !591, !tbaa !530
  %86 = icmp eq i8 %39, %85, !dbg !591
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !592
  br i1 %86, label %87, label %90, !dbg !592

; <label>:87:                                     ; preds = %1403, %1377, %83
  %88 = phi i8 [ 0, %83 ], [ 1, %1377 ], [ 2, %1403 ]
  tail call fastcc void @nd6_duplicate_addr_detected(%struct.netif* nonnull %1, i8 signext %88) #8, !dbg !593
  %89 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !595
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !596
  br label %1358

; <label>:90:                                     ; preds = %61, %65, %67, %71, %75, %79, %83
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !597
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !598
  %91 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 5, i64 1, !dbg !582
  %92 = load i8, i8* %91, align 1, !dbg !582, !tbaa !530
  %93 = icmp eq i8 %92, 0, !dbg !582
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !588
  br i1 %93, label %1381, label %1359, !dbg !588

; <label>:94:                                     ; preds = %1407
  %95 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !599
  %96 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 5), align 2, !dbg !602, !tbaa !541
  %97 = add i16 %96, 1, !dbg !602
  store i16 %97, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 5), align 2, !dbg !602, !tbaa !541
  %98 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !603, !tbaa !543
  %99 = add i16 %98, 1, !dbg !603
  store i16 %99, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !603, !tbaa !543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !604
  br label %1358

; <label>:100:                                    ; preds = %1407
  %101 = zext i16 %11 to i64, !dbg !605
  %102 = getelementptr inbounds i8, i8* %7, i64 25, !dbg !607
  %103 = load i8, i8* %102, align 1, !dbg !607, !tbaa !609
  %104 = zext i8 %103 to i64, !dbg !611
  %105 = shl nuw nsw i64 %104, 3, !dbg !612
  %106 = add nuw nsw i64 %105, 24, !dbg !613
  %107 = icmp ugt i64 %106, %101, !dbg !614
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !615
  br i1 %107, label %108, label %114, !dbg !615

; <label>:108:                                    ; preds = %100
  %109 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !616
  %110 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 5), align 2, !dbg !618, !tbaa !541
  %111 = add i16 %110, 1, !dbg !618
  store i16 %111, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 5), align 2, !dbg !618, !tbaa !541
  %112 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !619, !tbaa !543
  %113 = add i16 %112, 1, !dbg !619
  store i16 %113, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !619, !tbaa !543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !620
  br label %1358

; <label>:114:                                    ; preds = %100
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !631
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !633
  br label %115, !dbg !633

; <label>:115:                                    ; preds = %136, %114
  %116 = phi i64 [ 0, %114 ], [ %137, %136 ]
  %117 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %116, i32 0, i32 0, i64 0, !dbg !634
  %118 = load i32, i32* %117, align 8, !dbg !634, !tbaa !548
  %119 = icmp eq i32 %22, %118, !dbg !634
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !634
  br i1 %119, label %120, label %136, !dbg !634

; <label>:120:                                    ; preds = %115
  %121 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %116, i32 0, i32 0, i64 1, !dbg !634
  %122 = load i32, i32* %121, align 4, !dbg !634, !tbaa !548
  %123 = icmp eq i32 %25, %122, !dbg !634
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !634
  br i1 %123, label %124, label %136, !dbg !634

; <label>:124:                                    ; preds = %120
  %125 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %116, i32 0, i32 0, i64 2, !dbg !634
  %126 = load i32, i32* %125, align 8, !dbg !634, !tbaa !548
  %127 = icmp eq i32 %28, %126, !dbg !634
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !634
  br i1 %127, label %128, label %136, !dbg !634

; <label>:128:                                    ; preds = %124
  %129 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %116, i32 0, i32 0, i64 3, !dbg !634
  %130 = load i32, i32* %129, align 4, !dbg !634, !tbaa !548
  %131 = icmp eq i32 %31, %130, !dbg !634
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !634
  br i1 %131, label %132, label %136, !dbg !634

; <label>:132:                                    ; preds = %128
  %133 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %116, i32 0, i32 1, !dbg !634
  %134 = load i8, i8* %133, align 8, !dbg !634, !tbaa !638
  %135 = icmp eq i8 %39, %134, !dbg !634
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !641
  br i1 %135, label %140, label %136, !dbg !641

; <label>:136:                                    ; preds = %132, %128, %124, %120, %115
  %137 = add nuw nsw i64 %116, 1, !dbg !642
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !643
  %138 = icmp ult i64 %137, 10, !dbg !644
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !633
  br i1 %138, label %115, label %139, !dbg !633, !llvm.loop !645

; <label>:139:                                    ; preds = %136
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !648
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !649
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !650
  br label %237, !dbg !650

; <label>:140:                                    ; preds = %132
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !651
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !649
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !650
  %141 = getelementptr inbounds i8, i8* %7, i64 4, !dbg !653
  %142 = load i8, i8* %141, align 1, !dbg !653, !tbaa !657
  %143 = and i8 %142, 32, !dbg !658
  %144 = icmp eq i8 %143, 0, !dbg !658
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !659
  br i1 %144, label %237, label %145, !dbg !659

; <label>:145:                                    ; preds = %140
  %146 = shl i64 %116, 56, !dbg !660
  %147 = ashr exact i64 %146, 56, !dbg !660
  %148 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %147, i32 2, i64 0, !dbg !660
  %149 = getelementptr inbounds i8, i8* %7, i64 26, !dbg !660
  %150 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 20, !dbg !660
  %151 = load i8, i8* %150, align 4, !dbg !660, !tbaa !662
  %152 = zext i8 %151 to i64, !dbg !660
  %153 = tail call i8* @memcpy(i8* nonnull %148, i8* nonnull %149, i64 %152) #7, !dbg !660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !663
  br label %237, !dbg !663

; <label>:154:                                    ; preds = %57, %175
  %155 = phi i64 [ %176, %175 ], [ 0, %57 ]
  %156 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %155, i32 0, i32 0, i64 0, !dbg !666
  %157 = load i32, i32* %156, align 8, !dbg !666, !tbaa !548
  %158 = icmp eq i32 %22, %157, !dbg !666
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !666
  br i1 %158, label %159, label %175, !dbg !666

; <label>:159:                                    ; preds = %154
  %160 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %155, i32 0, i32 0, i64 1, !dbg !666
  %161 = load i32, i32* %160, align 4, !dbg !666, !tbaa !548
  %162 = icmp eq i32 %25, %161, !dbg !666
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !666
  br i1 %162, label %163, label %175, !dbg !666

; <label>:163:                                    ; preds = %159
  %164 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %155, i32 0, i32 0, i64 2, !dbg !666
  %165 = load i32, i32* %164, align 8, !dbg !666, !tbaa !548
  %166 = icmp eq i32 %28, %165, !dbg !666
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !666
  br i1 %166, label %167, label %175, !dbg !666

; <label>:167:                                    ; preds = %163
  %168 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %155, i32 0, i32 0, i64 3, !dbg !666
  %169 = load i32, i32* %168, align 4, !dbg !666, !tbaa !548
  %170 = icmp eq i32 %31, %169, !dbg !666
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !666
  br i1 %170, label %171, label %175, !dbg !666

; <label>:171:                                    ; preds = %167
  %172 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %155, i32 0, i32 1, !dbg !666
  %173 = load i8, i8* %172, align 8, !dbg !666, !tbaa !638
  %174 = icmp eq i8 %39, %173, !dbg !666
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !667
  br i1 %174, label %179, label %175, !dbg !667

; <label>:175:                                    ; preds = %171, %167, %163, %159, %154
  %176 = add nuw nsw i64 %155, 1, !dbg !668
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !669
  %177 = icmp ult i64 %176, 10, !dbg !670
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !671
  br i1 %177, label %154, label %178, !dbg !671, !llvm.loop !645

; <label>:178:                                    ; preds = %175
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !672
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !673
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !674
  br label %182, !dbg !674

; <label>:179:                                    ; preds = %171
  %180 = trunc i64 %155 to i8, !dbg !664
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !675
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !673
  %181 = icmp slt i8 %180, 0, !dbg !676
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !674
  br i1 %181, label %182, label %184, !dbg !674

; <label>:182:                                    ; preds = %178, %179
  %183 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %0) #7, !dbg !678
  br label %238, !dbg !680

; <label>:184:                                    ; preds = %179
  %185 = getelementptr inbounds i8, i8* %7, i64 4, !dbg !681
  %186 = load i8, i8* %185, align 1, !dbg !681, !tbaa !657
  %187 = and i8 %186, 32, !dbg !683
  %188 = icmp eq i8 %187, 0, !dbg !683
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !684
  br i1 %188, label %189, label %195, !dbg !684

; <label>:189:                                    ; preds = %184
  %190 = shl i64 %155, 56, !dbg !685
  %191 = ashr exact i64 %190, 56, !dbg !685
  %192 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %191, i32 4, !dbg !686
  %193 = load i8, i8* %192, align 8, !dbg !686, !tbaa !687
  %194 = icmp eq i8 %193, 1, !dbg !688
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !689
  br i1 %194, label %195, label %227, !dbg !689

; <label>:195:                                    ; preds = %184, %189
  %196 = icmp ult i16 %11, 26, !dbg !690
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !693
  br i1 %196, label %197, label %203, !dbg !693

; <label>:197:                                    ; preds = %195
  %198 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %0) #7, !dbg !694
  %199 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 5), align 2, !dbg !696, !tbaa !541
  %200 = add i16 %199, 1, !dbg !696
  store i16 %200, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 5), align 2, !dbg !696, !tbaa !541
  %201 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !697, !tbaa !543
  %202 = add i16 %201, 1, !dbg !697
  store i16 %202, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !697, !tbaa !543
  br label %238, !dbg !698

; <label>:203:                                    ; preds = %195
  %204 = zext i16 %11 to i64, !dbg !699
  %205 = getelementptr inbounds i8, i8* %7, i64 25, !dbg !700
  %206 = load i8, i8* %205, align 1, !dbg !700, !tbaa !609
  %207 = zext i8 %206 to i64, !dbg !702
  %208 = shl nuw nsw i64 %207, 3, !dbg !703
  %209 = add nuw nsw i64 %208, 24, !dbg !704
  %210 = icmp ugt i64 %209, %204, !dbg !705
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !706
  br i1 %210, label %211, label %217, !dbg !706

; <label>:211:                                    ; preds = %203
  %212 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %0) #7, !dbg !707
  %213 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 5), align 2, !dbg !709, !tbaa !541
  %214 = add i16 %213, 1, !dbg !709
  store i16 %214, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 5), align 2, !dbg !709, !tbaa !541
  %215 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !710, !tbaa !543
  %216 = add i16 %215, 1, !dbg !710
  store i16 %216, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !710, !tbaa !543
  br label %238, !dbg !711

; <label>:217:                                    ; preds = %203
  %218 = shl i64 %155, 56, !dbg !712
  %219 = ashr exact i64 %218, 56, !dbg !712
  %220 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %219, i32 2, i64 0, !dbg !712
  %221 = getelementptr inbounds i8, i8* %7, i64 26, !dbg !712
  %222 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 20, !dbg !712
  %223 = load i8, i8* %222, align 4, !dbg !712, !tbaa !662
  %224 = zext i8 %223 to i64, !dbg !712
  %225 = tail call i8* @memcpy(i8* nonnull %220, i8* nonnull %221, i64 %224) #7, !dbg !712
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !713
  %226 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %219, i32 4, !dbg !714
  br label %227, !dbg !713

; <label>:227:                                    ; preds = %217, %189
  %228 = phi i8* [ %226, %217 ], [ %192, %189 ], !dbg !714
  %229 = phi i64 [ %219, %217 ], [ %191, %189 ], !dbg !715
  %230 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %229, i32 1, !dbg !716
  store %struct.netif* %1, %struct.netif** %230, align 8, !dbg !717, !tbaa !718
  store i8 2, i8* %228, align 8, !dbg !719, !tbaa !687
  %231 = load i32, i32* @reachable_time, align 4, !dbg !720, !tbaa !548
  %232 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %229, i32 6, i32 0, !dbg !721
  store i32 %231, i32* %232, align 4, !dbg !722, !tbaa !530
  %233 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %229, i32 3, !dbg !723
  %234 = load %struct.nd6_q_entry*, %struct.nd6_q_entry** %233, align 8, !dbg !723, !tbaa !725
  %235 = icmp eq %struct.nd6_q_entry* %234, null, !dbg !726
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !727
  br i1 %235, label %237, label %236, !dbg !727

; <label>:236:                                    ; preds = %227
  tail call fastcc void @nd6_send_q(i8 signext %180) #8, !dbg !728
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !730
  br label %237, !dbg !730

; <label>:237:                                    ; preds = %139, %140, %227, %236, %145
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !731
  br label %1349

; <label>:238:                                    ; preds = %211, %197, %182
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !732
  br label %1358

; <label>:239:                                    ; preds = %2
  %240 = bitcast %struct.ip6_addr* %3 to i8*, !dbg !733
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %240) #6, !dbg !733
  %241 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 3, !dbg !734
  %242 = load i16, i16* %241, align 2, !dbg !734, !tbaa !535
  %243 = icmp ult i16 %242, 24, !dbg !736
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !737
  br i1 %243, label %244, label %250, !dbg !737

; <label>:244:                                    ; preds = %239
  %245 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !738
  %246 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 5), align 2, !dbg !740, !tbaa !541
  %247 = add i16 %246, 1, !dbg !740
  store i16 %247, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 5), align 2, !dbg !740, !tbaa !541
  %248 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !741, !tbaa !543
  %249 = add i16 %248, 1, !dbg !741
  store i16 %249, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !741, !tbaa !543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !742
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %240) #6, !dbg !743
  br label %1358

; <label>:250:                                    ; preds = %239
  %251 = getelementptr inbounds i8, i8* %7, i64 8, !dbg !745
  %252 = bitcast i8* %251 to <4 x i32>*, !dbg !745
  %253 = load <4 x i32>, <4 x i32>* %252, align 1, !dbg !745, !tbaa !548
  %254 = bitcast %struct.ip6_addr* %3 to <4 x i32>*, !dbg !745
  store <4 x i32> %253, <4 x i32>* %254, align 16, !dbg !745, !tbaa !548
  %255 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %3, i64 0, i32 1, !dbg !745
  store i8 0, i8* %255, align 16, !dbg !745, !tbaa !747
  %256 = extractelement <4 x i32> %253, i32 0, !dbg !748
  %257 = and i32 %256, 49407, !dbg !748
  %258 = icmp eq i32 %257, 33022, !dbg !748
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !748
  br i1 %258, label %259, label %263, !dbg !748

; <label>:259:                                    ; preds = %250
  %260 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 23, !dbg !748
  %261 = load i8, i8* %260, align 8, !dbg !748, !tbaa !551
  %262 = add i8 %261, 1, !dbg !748
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !748
  br label %263, !dbg !748

; <label>:263:                                    ; preds = %250, %259
  %264 = phi i8 [ %262, %259 ], [ 0, %250 ]
  store i8 %264, i8* %255, align 16, !dbg !748, !tbaa !747
  %265 = load %struct.ip6_hdr*, %struct.ip6_hdr** getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 3), align 8, !dbg !749, !tbaa !556
  %266 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %265, i64 0, i32 3, !dbg !749
  %267 = load i8, i8* %266, align 1, !dbg !749, !tbaa !558
  %268 = icmp eq i8 %267, -1, !dbg !751
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !752
  br i1 %268, label %269, label %276, !dbg !752

; <label>:269:                                    ; preds = %263
  %270 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !753
  %271 = load i8, i8* %270, align 1, !dbg !753, !tbaa !754
  %272 = icmp eq i8 %271, 0, !dbg !756
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !757
  br i1 %272, label %273, label %276, !dbg !757

; <label>:273:                                    ; preds = %269
  %274 = and i32 %256, 255, !dbg !758
  %275 = icmp eq i32 %274, 255, !dbg !758
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !759
  br i1 %275, label %276, label %282, !dbg !759

; <label>:276:                                    ; preds = %269, %263, %273
  %277 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !760
  %278 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 8), align 2, !dbg !762, !tbaa !573
  %279 = add i16 %278, 1, !dbg !762
  store i16 %279, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 8), align 2, !dbg !762, !tbaa !573
  %280 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !763, !tbaa !543
  %281 = add i16 %280, 1, !dbg !763
  store i16 %281, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !763, !tbaa !543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !764
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %240) #6, !dbg !743
  br label %1358

; <label>:282:                                    ; preds = %273
  %283 = icmp ugt i16 %242, 25, !dbg !765
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !767
  br i1 %283, label %284, label %294, !dbg !767

; <label>:284:                                    ; preds = %282
  %285 = zext i16 %242 to i64, !dbg !768
  %286 = getelementptr inbounds i8, i8* %7, i64 24, !dbg !769
  %287 = bitcast i8* %286 to %struct.lladdr_option*, !dbg !771
  %288 = getelementptr inbounds i8, i8* %7, i64 25, !dbg !773
  %289 = load i8, i8* %288, align 1, !dbg !773, !tbaa !609
  %290 = zext i8 %289 to i64, !dbg !775
  %291 = shl nuw nsw i64 %290, 3, !dbg !776
  %292 = add nuw nsw i64 %291, 24, !dbg !777
  %293 = icmp ugt i64 %292, %285, !dbg !778
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !779
  br i1 %293, label %294, label %295, !dbg !779

; <label>:294:                                    ; preds = %282, %284
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %295, !dbg !780

; <label>:295:                                    ; preds = %294, %284
  %296 = phi %struct.lladdr_option* [ %287, %284 ], [ null, %294 ], !dbg !782
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !780
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !785
  %297 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 0), align 4
  %298 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 1), align 4
  %299 = or i32 %298, %297
  %300 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 2), align 4
  %301 = or i32 %299, %300
  %302 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 3), align 4
  %303 = or i32 %301, %302
  %304 = icmp eq i32 %303, 0
  %305 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 5, i64 0, !dbg !786
  %306 = load i8, i8* %305, align 1, !dbg !786, !tbaa !530
  %307 = zext i8 %306 to i32, !dbg !786
  %308 = and i32 %307, 16, !dbg !786
  %309 = icmp eq i32 %308, 0, !dbg !786
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !790
  br i1 %309, label %310, label %314, !dbg !790

; <label>:310:                                    ; preds = %295
  %311 = and i32 %307, 8, !dbg !791
  %312 = icmp ne i32 %311, 0, !dbg !791
  %313 = and i1 %312, %304, !dbg !792
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !792
  br i1 %313, label %314, label %338, !dbg !792

; <label>:314:                                    ; preds = %295, %310
  %315 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !793
  %316 = load i32, i32* %315, align 8, !dbg !793, !tbaa !530
  %317 = icmp eq i32 %256, %316, !dbg !793
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !793
  br i1 %317, label %318, label %338, !dbg !793

; <label>:318:                                    ; preds = %314
  %319 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !793
  %320 = load i32, i32* %319, align 4, !dbg !793, !tbaa !530
  %321 = extractelement <4 x i32> %253, i32 1, !dbg !793
  %322 = icmp eq i32 %321, %320, !dbg !793
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !793
  br i1 %322, label %323, label %338, !dbg !793

; <label>:323:                                    ; preds = %318
  %324 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !793
  %325 = load i32, i32* %324, align 8, !dbg !793, !tbaa !530
  %326 = extractelement <4 x i32> %253, i32 2, !dbg !793
  %327 = icmp eq i32 %326, %325, !dbg !793
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !793
  br i1 %327, label %328, label %338, !dbg !793

; <label>:328:                                    ; preds = %323
  %329 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !793
  %330 = load i32, i32* %329, align 4, !dbg !793, !tbaa !530
  %331 = extractelement <4 x i32> %253, i32 3, !dbg !793
  %332 = icmp eq i32 %331, %330, !dbg !793
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !793
  br i1 %332, label %333, label %338, !dbg !793

; <label>:333:                                    ; preds = %328
  %334 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 0, i32 0, i32 0, i32 1, !dbg !793
  %335 = load i8, i8* %334, align 8, !dbg !793, !tbaa !530
  %336 = icmp eq i8 %264, %335, !dbg !793
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !794
  br i1 %336, label %337, label %338, !dbg !794

; <label>:337:                                    ; preds = %1528, %1495, %333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !795
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !797
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !798
  br i1 %304, label %344, label %379, !dbg !798

; <label>:338:                                    ; preds = %310, %314, %318, %323, %328, %333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !800
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !785
  %339 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 5, i64 1, !dbg !786
  %340 = load i8, i8* %339, align 1, !dbg !786, !tbaa !530
  %341 = zext i8 %340 to i32, !dbg !786
  %342 = and i32 %341, 16, !dbg !786
  %343 = icmp eq i32 %342, 0, !dbg !786
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !790
  br i1 %343, label %1472, label %1476, !dbg !790

; <label>:344:                                    ; preds = %337
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !801
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !804
  %345 = icmp eq i8 %306, 0, !dbg !805
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !809
  br i1 %345, label %375, label %346, !dbg !809

; <label>:346:                                    ; preds = %344
  %347 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 0, i32 0, i32 0, !dbg !810
  %348 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %347, i64 0, i32 0, i64 0, !dbg !810
  %349 = load i32, i32* %348, align 8, !dbg !810, !tbaa !530
  %350 = icmp eq i32 %256, %349, !dbg !810
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !810
  br i1 %350, label %351, label %375, !dbg !810

; <label>:351:                                    ; preds = %346
  %352 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !810
  %353 = load i32, i32* %352, align 4, !dbg !810, !tbaa !530
  %354 = extractelement <4 x i32> %253, i32 1, !dbg !810
  %355 = icmp eq i32 %354, %353, !dbg !810
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !810
  br i1 %355, label %356, label %375, !dbg !810

; <label>:356:                                    ; preds = %351
  %357 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !810
  %358 = load i32, i32* %357, align 8, !dbg !810, !tbaa !530
  %359 = extractelement <4 x i32> %253, i32 2, !dbg !810
  %360 = icmp eq i32 %359, %358, !dbg !810
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !810
  br i1 %360, label %361, label %375, !dbg !810

; <label>:361:                                    ; preds = %356
  %362 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !810
  %363 = load i32, i32* %362, align 4, !dbg !810, !tbaa !530
  %364 = extractelement <4 x i32> %253, i32 3, !dbg !810
  %365 = icmp eq i32 %364, %363, !dbg !810
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !810
  br i1 %365, label %366, label %375, !dbg !810

; <label>:366:                                    ; preds = %361
  %367 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 0, i32 0, i32 0, i32 1, !dbg !810
  %368 = load i8, i8* %367, align 8, !dbg !810, !tbaa !530
  %369 = icmp eq i8 %264, %368, !dbg !810
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !811
  br i1 %369, label %370, label %375, !dbg !811

; <label>:370:                                    ; preds = %366
  tail call fastcc void @nd6_send_na(%struct.netif* nonnull %1, %struct.ip6_addr* nonnull %347, i8 zeroext 34) #8, !dbg !812
  %371 = load i8, i8* %305, align 1, !dbg !814, !tbaa !530
  %372 = and i8 %371, 8, !dbg !814
  %373 = icmp eq i8 %372, 0, !dbg !814
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !816
  br i1 %373, label %375, label %374, !dbg !816

; <label>:374:                                    ; preds = %370
  tail call fastcc void @nd6_duplicate_addr_detected(%struct.netif* nonnull %1, i8 signext 0) #8, !dbg !817
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !819
  br label %375, !dbg !819

; <label>:375:                                    ; preds = %370, %344, %346, %351, %356, %361, %366, %374
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !820
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !804
  %376 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 5, i64 1, !dbg !805
  %377 = load i8, i8* %376, align 1, !dbg !805, !tbaa !530
  %378 = icmp eq i8 %377, 0, !dbg !805
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !809
  br i1 %378, label %1438, label %1409, !dbg !809

; <label>:379:                                    ; preds = %337
  %380 = icmp eq %struct.lladdr_option* %296, null, !dbg !821
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !824
  br i1 %380, label %381, label %387, !dbg !824

; <label>:381:                                    ; preds = %379
  %382 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !825
  %383 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 8), align 2, !dbg !827, !tbaa !573
  %384 = add i16 %383, 1, !dbg !827
  store i16 %384, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 8), align 2, !dbg !827, !tbaa !573
  %385 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !828, !tbaa !543
  %386 = add i16 %385, 1, !dbg !828
  store i16 %386, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !828, !tbaa !543
  br label %455, !dbg !829

; <label>:387:                                    ; preds = %379
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !833
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !834
  %388 = load i8, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 1), align 4
  br label %389, !dbg !834

; <label>:389:                                    ; preds = %410, %387
  %390 = phi i64 [ 0, %387 ], [ %411, %410 ]
  %391 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %390, i32 0, i32 0, i64 0, !dbg !835
  %392 = load i32, i32* %391, align 8, !dbg !835, !tbaa !548
  %393 = icmp eq i32 %297, %392, !dbg !835
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !835
  br i1 %393, label %394, label %410, !dbg !835

; <label>:394:                                    ; preds = %389
  %395 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %390, i32 0, i32 0, i64 1, !dbg !835
  %396 = load i32, i32* %395, align 4, !dbg !835, !tbaa !548
  %397 = icmp eq i32 %298, %396, !dbg !835
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !835
  br i1 %397, label %398, label %410, !dbg !835

; <label>:398:                                    ; preds = %394
  %399 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %390, i32 0, i32 0, i64 2, !dbg !835
  %400 = load i32, i32* %399, align 8, !dbg !835, !tbaa !548
  %401 = icmp eq i32 %300, %400, !dbg !835
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !835
  br i1 %401, label %402, label %410, !dbg !835

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %390, i32 0, i32 0, i64 3, !dbg !835
  %404 = load i32, i32* %403, align 4, !dbg !835, !tbaa !548
  %405 = icmp eq i32 %302, %404, !dbg !835
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !835
  br i1 %405, label %406, label %410, !dbg !835

; <label>:406:                                    ; preds = %402
  %407 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %390, i32 0, i32 1, !dbg !835
  %408 = load i8, i8* %407, align 8, !dbg !835, !tbaa !638
  %409 = icmp eq i8 %388, %408, !dbg !835
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !836
  br i1 %409, label %413, label %410, !dbg !836

; <label>:410:                                    ; preds = %406, %402, %398, %394, %389
  %411 = add nuw nsw i64 %390, 1, !dbg !837
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !838
  %412 = icmp ult i64 %411, 10, !dbg !839
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !834
  br i1 %412, label %389, label %427, !dbg !834, !llvm.loop !645

; <label>:413:                                    ; preds = %406
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !840
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !841
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !842
  %414 = shl i64 %390, 56, !dbg !843
  %415 = ashr exact i64 %414, 56, !dbg !843
  %416 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %415, i32 4, !dbg !847
  %417 = load i8, i8* %416, align 8, !dbg !847, !tbaa !687
  %418 = icmp eq i8 %417, 1, !dbg !848
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !849
  br i1 %418, label %419, label %453, !dbg !849

; <label>:419:                                    ; preds = %413
  %420 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %415, i32 1, !dbg !850
  store %struct.netif* %1, %struct.netif** %420, align 8, !dbg !852, !tbaa !718
  %421 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %415, i32 2, i64 0, !dbg !853
  %422 = getelementptr inbounds %struct.lladdr_option, %struct.lladdr_option* %296, i64 0, i32 2, i64 0, !dbg !853
  %423 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 20, !dbg !853
  %424 = load i8, i8* %423, align 4, !dbg !853, !tbaa !662
  %425 = zext i8 %424 to i64, !dbg !853
  %426 = tail call i8* @memcpy(i8* nonnull %421, i8* nonnull %422, i64 %425) #7, !dbg !853
  br label %449, !dbg !854

; <label>:427:                                    ; preds = %410
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !855
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !841
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !842
  %428 = tail call fastcc signext i8 @nd6_new_neighbor_cache_entry() #8, !dbg !856
  %429 = icmp slt i8 %428, 0, !dbg !858
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !860
  br i1 %429, label %430, label %434, !dbg !860

; <label>:430:                                    ; preds = %427
  %431 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %0) #7, !dbg !861
  %432 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 6), align 2, !dbg !863, !tbaa !864
  %433 = add i16 %432, 1, !dbg !863
  store i16 %433, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 6), align 2, !dbg !863, !tbaa !864
  br label %455, !dbg !865

; <label>:434:                                    ; preds = %427
  %435 = sext i8 %428 to i64, !dbg !866
  %436 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %435, i32 1, !dbg !867
  store %struct.netif* %1, %struct.netif** %436, align 8, !dbg !868, !tbaa !718
  %437 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %435, i32 2, i64 0, !dbg !869
  %438 = getelementptr inbounds %struct.lladdr_option, %struct.lladdr_option* %296, i64 0, i32 2, i64 0, !dbg !869
  %439 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 20, !dbg !869
  %440 = load i8, i8* %439, align 4, !dbg !869, !tbaa !662
  %441 = zext i8 %440 to i64, !dbg !869
  %442 = tail call i8* @memcpy(i8* nonnull %437, i8* nonnull %438, i64 %441) #7, !dbg !869
  %443 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %435, i32 0, i32 0, i64 0, !dbg !870
  %444 = load <4 x i32>, <4 x i32>* bitcast (i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 0) to <4 x i32>*), align 4, !dbg !870, !tbaa !530
  %445 = bitcast i32* %443 to <4 x i32>*, !dbg !870
  store <4 x i32> %444, <4 x i32>* %445, align 8, !dbg !870, !tbaa !548
  %446 = load i8, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 1), align 4, !dbg !870, !tbaa !530
  %447 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %435, i32 0, i32 1, !dbg !870
  store i8 %446, i8* %447, align 8, !dbg !870, !tbaa !638
  %448 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %435, i32 4, !dbg !872
  br label %449

; <label>:449:                                    ; preds = %434, %419
  %450 = phi i8* [ %416, %419 ], [ %448, %434 ]
  %451 = phi i64 [ %415, %419 ], [ %435, %434 ]
  store i8 4, i8* %450, align 8, !dbg !873, !tbaa !687
  %452 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %451, i32 6, i32 0, !dbg !873
  store i32 5, i32* %452, align 4, !dbg !873, !tbaa !530
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %453, !dbg !874

; <label>:453:                                    ; preds = %449, %413
  call fastcc void @nd6_send_na(%struct.netif* %1, %struct.ip6_addr* nonnull %3, i8 zeroext 96) #8, !dbg !874
  br label %454

; <label>:454:                                    ; preds = %1471, %453
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !876
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %240) #6, !dbg !743
  br label %1349

; <label>:455:                                    ; preds = %430, %381, %1532
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !877
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %240) #6, !dbg !743
  br label %1358

; <label>:456:                                    ; preds = %2
  %457 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 3, !dbg !880
  %458 = load i16, i16* %457, align 2, !dbg !880, !tbaa !535
  %459 = icmp ult i16 %458, 16, !dbg !882
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !883
  br i1 %459, label %460, label %464, !dbg !883

; <label>:460:                                    ; preds = %456
  %461 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !884
  %462 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 5), align 2, !dbg !886, !tbaa !541
  %463 = add i16 %462, 1, !dbg !886
  store i16 %463, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 5), align 2, !dbg !886, !tbaa !541
  br label %1077, !dbg !887

; <label>:464:                                    ; preds = %456
  %465 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !889, !tbaa !530
  %466 = and i32 %465, 49407, !dbg !889
  %467 = icmp eq i32 %466, 33022, !dbg !889
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !891
  br i1 %467, label %468, label %477, !dbg !891

; <label>:468:                                    ; preds = %464
  %469 = load %struct.ip6_hdr*, %struct.ip6_hdr** getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 3), align 8, !dbg !892, !tbaa !556
  %470 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %469, i64 0, i32 3, !dbg !892
  %471 = load i8, i8* %470, align 1, !dbg !892, !tbaa !558
  %472 = icmp eq i8 %471, -1, !dbg !893
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !894
  br i1 %472, label %473, label %477, !dbg !894

; <label>:473:                                    ; preds = %468
  %474 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !895
  %475 = load i8, i8* %474, align 1, !dbg !895, !tbaa !896
  %476 = icmp eq i8 %475, 0, !dbg !898
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !899
  br i1 %476, label %481, label %477, !dbg !899

; <label>:477:                                    ; preds = %473, %468, %464
  %478 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !900
  %479 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 8), align 2, !dbg !902, !tbaa !573
  %480 = add i16 %479, 1, !dbg !902
  store i16 %480, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 8), align 2, !dbg !902, !tbaa !573
  br label %1077, !dbg !903

; <label>:481:                                    ; preds = %473
  %482 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 25, !dbg !904
  %483 = load i8, i8* %482, align 2, !dbg !904, !tbaa !906
  %484 = icmp ult i8 %483, 3, !dbg !907
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !908
  br i1 %484, label %489, label %485, !dbg !908

; <label>:485:                                    ; preds = %481
  %486 = tail call fastcc signext i8 @nd6_send_rs(%struct.netif* nonnull %1) #8, !dbg !909
  %487 = icmp ne i8 %486, 0, !dbg !910
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !911
  %488 = zext i1 %487 to i8, !dbg !911
  br label %489, !dbg !911

; <label>:489:                                    ; preds = %485, %481
  %490 = phi i8 [ 0, %481 ], [ %488, %485 ]
  store i8 %490, i8* %482, align 2, !dbg !912, !tbaa !906
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !922
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !924
  %491 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 0), align 4
  %492 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 1), align 4
  %493 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 2), align 4
  %494 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 3), align 4
  %495 = load i8, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 1), align 4
  %496 = load %struct.nd6_neighbor_cache_entry*, %struct.nd6_neighbor_cache_entry** getelementptr inbounds ([3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 0, i32 0), align 16, !dbg !925, !tbaa !929
  %497 = icmp eq %struct.nd6_neighbor_cache_entry* %496, null, !dbg !931
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !932
  br i1 %497, label %522, label %498, !dbg !932

; <label>:498:                                    ; preds = %489
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !933
  %499 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %496, i64 0, i32 1, !dbg !934
  %500 = load %struct.netif*, %struct.netif** %499, align 8, !dbg !934, !tbaa !718
  %501 = icmp eq %struct.netif* %500, %1, !dbg !935
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !936
  br i1 %501, label %502, label %522, !dbg !936

; <label>:502:                                    ; preds = %498
  %503 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %496, i64 0, i32 0, i32 0, i64 0, !dbg !937
  %504 = load i32, i32* %503, align 8, !dbg !937, !tbaa !548
  %505 = icmp eq i32 %491, %504, !dbg !937
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !937
  br i1 %505, label %506, label %522, !dbg !937

; <label>:506:                                    ; preds = %502
  %507 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %496, i64 0, i32 0, i32 0, i64 1, !dbg !937
  %508 = load i32, i32* %507, align 4, !dbg !937, !tbaa !548
  %509 = icmp eq i32 %492, %508, !dbg !937
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !937
  br i1 %509, label %510, label %522, !dbg !937

; <label>:510:                                    ; preds = %506
  %511 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %496, i64 0, i32 0, i32 0, i64 2, !dbg !937
  %512 = load i32, i32* %511, align 8, !dbg !937, !tbaa !548
  %513 = icmp eq i32 %493, %512, !dbg !937
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !937
  br i1 %513, label %514, label %522, !dbg !937

; <label>:514:                                    ; preds = %510
  %515 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %496, i64 0, i32 0, i32 0, i64 3, !dbg !937
  %516 = load i32, i32* %515, align 4, !dbg !937, !tbaa !548
  %517 = icmp eq i32 %494, %516, !dbg !937
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !937
  br i1 %517, label %518, label %522, !dbg !937

; <label>:518:                                    ; preds = %514
  %519 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %496, i64 0, i32 0, i32 1, !dbg !937
  %520 = load i8, i8* %519, align 8, !dbg !937, !tbaa !638
  %521 = icmp eq i8 %495, %520, !dbg !937
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !938
  br i1 %521, label %663, label %522, !dbg !938

; <label>:522:                                    ; preds = %518, %514, %510, %506, %502, %498, %489
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !939
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !924
  %523 = load %struct.nd6_neighbor_cache_entry*, %struct.nd6_neighbor_cache_entry** getelementptr inbounds ([3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 1, i32 0), align 16, !dbg !925, !tbaa !929
  %524 = icmp eq %struct.nd6_neighbor_cache_entry* %523, null, !dbg !931
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !932
  br i1 %524, label %549, label %525, !dbg !932

; <label>:525:                                    ; preds = %522
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !933
  %526 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %523, i64 0, i32 1, !dbg !934
  %527 = load %struct.netif*, %struct.netif** %526, align 8, !dbg !934, !tbaa !718
  %528 = icmp eq %struct.netif* %527, %1, !dbg !935
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !936
  br i1 %528, label %529, label %549, !dbg !936

; <label>:529:                                    ; preds = %525
  %530 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %523, i64 0, i32 0, i32 0, i64 0, !dbg !937
  %531 = load i32, i32* %530, align 8, !dbg !937, !tbaa !548
  %532 = icmp eq i32 %491, %531, !dbg !937
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !937
  br i1 %532, label %533, label %549, !dbg !937

; <label>:533:                                    ; preds = %529
  %534 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %523, i64 0, i32 0, i32 0, i64 1, !dbg !937
  %535 = load i32, i32* %534, align 4, !dbg !937, !tbaa !548
  %536 = icmp eq i32 %492, %535, !dbg !937
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !937
  br i1 %536, label %537, label %549, !dbg !937

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %523, i64 0, i32 0, i32 0, i64 2, !dbg !937
  %539 = load i32, i32* %538, align 8, !dbg !937, !tbaa !548
  %540 = icmp eq i32 %493, %539, !dbg !937
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !937
  br i1 %540, label %541, label %549, !dbg !937

; <label>:541:                                    ; preds = %537
  %542 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %523, i64 0, i32 0, i32 0, i64 3, !dbg !937
  %543 = load i32, i32* %542, align 4, !dbg !937, !tbaa !548
  %544 = icmp eq i32 %494, %543, !dbg !937
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !937
  br i1 %544, label %545, label %549, !dbg !937

; <label>:545:                                    ; preds = %541
  %546 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %523, i64 0, i32 0, i32 1, !dbg !937
  %547 = load i8, i8* %546, align 8, !dbg !937, !tbaa !638
  %548 = icmp eq i8 %495, %547, !dbg !937
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !938
  br i1 %548, label %663, label %549, !dbg !938

; <label>:549:                                    ; preds = %545, %541, %537, %533, %529, %525, %522
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !939
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !924
  %550 = load %struct.nd6_neighbor_cache_entry*, %struct.nd6_neighbor_cache_entry** getelementptr inbounds ([3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 2, i32 0), align 16, !dbg !925, !tbaa !929
  %551 = icmp eq %struct.nd6_neighbor_cache_entry* %550, null, !dbg !931
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !932
  br i1 %551, label %576, label %552, !dbg !932

; <label>:552:                                    ; preds = %549
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !933
  %553 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %550, i64 0, i32 1, !dbg !934
  %554 = load %struct.netif*, %struct.netif** %553, align 8, !dbg !934, !tbaa !718
  %555 = icmp eq %struct.netif* %554, %1, !dbg !935
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !936
  br i1 %555, label %556, label %576, !dbg !936

; <label>:556:                                    ; preds = %552
  %557 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %550, i64 0, i32 0, i32 0, i64 0, !dbg !937
  %558 = load i32, i32* %557, align 8, !dbg !937, !tbaa !548
  %559 = icmp eq i32 %491, %558, !dbg !937
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !937
  br i1 %559, label %560, label %576, !dbg !937

; <label>:560:                                    ; preds = %556
  %561 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %550, i64 0, i32 0, i32 0, i64 1, !dbg !937
  %562 = load i32, i32* %561, align 4, !dbg !937, !tbaa !548
  %563 = icmp eq i32 %492, %562, !dbg !937
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !937
  br i1 %563, label %564, label %576, !dbg !937

; <label>:564:                                    ; preds = %560
  %565 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %550, i64 0, i32 0, i32 0, i64 2, !dbg !937
  %566 = load i32, i32* %565, align 8, !dbg !937, !tbaa !548
  %567 = icmp eq i32 %493, %566, !dbg !937
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !937
  br i1 %567, label %568, label %576, !dbg !937

; <label>:568:                                    ; preds = %564
  %569 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %550, i64 0, i32 0, i32 0, i64 3, !dbg !937
  %570 = load i32, i32* %569, align 4, !dbg !937, !tbaa !548
  %571 = icmp eq i32 %494, %570, !dbg !937
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !937
  br i1 %571, label %572, label %576, !dbg !937

; <label>:572:                                    ; preds = %568
  %573 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %550, i64 0, i32 0, i32 1, !dbg !937
  %574 = load i8, i8* %573, align 8, !dbg !937, !tbaa !638
  %575 = icmp eq i8 %495, %574, !dbg !937
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !938
  br i1 %575, label %663, label %576, !dbg !938

; <label>:576:                                    ; preds = %549, %552, %556, %560, %564, %568, %572
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !939
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !924
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !940
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !941
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !942
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !957
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !958
  br label %577, !dbg !958

; <label>:577:                                    ; preds = %598, %576
  %578 = phi i64 [ 0, %576 ], [ %599, %598 ]
  %579 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %578, i32 0, i32 0, i64 0, !dbg !959
  %580 = load i32, i32* %579, align 8, !dbg !959, !tbaa !548
  %581 = icmp eq i32 %491, %580, !dbg !959
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !959
  br i1 %581, label %582, label %598, !dbg !959

; <label>:582:                                    ; preds = %577
  %583 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %578, i32 0, i32 0, i64 1, !dbg !959
  %584 = load i32, i32* %583, align 4, !dbg !959, !tbaa !548
  %585 = icmp eq i32 %492, %584, !dbg !959
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !959
  br i1 %585, label %586, label %598, !dbg !959

; <label>:586:                                    ; preds = %582
  %587 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %578, i32 0, i32 0, i64 2, !dbg !959
  %588 = load i32, i32* %587, align 8, !dbg !959, !tbaa !548
  %589 = icmp eq i32 %493, %588, !dbg !959
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !959
  br i1 %589, label %590, label %598, !dbg !959

; <label>:590:                                    ; preds = %586
  %591 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %578, i32 0, i32 0, i64 3, !dbg !959
  %592 = load i32, i32* %591, align 4, !dbg !959, !tbaa !548
  %593 = icmp eq i32 %494, %592, !dbg !959
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !959
  br i1 %593, label %594, label %598, !dbg !959

; <label>:594:                                    ; preds = %590
  %595 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %578, i32 0, i32 1, !dbg !959
  %596 = load i8, i8* %595, align 8, !dbg !959, !tbaa !638
  %597 = icmp eq i8 %495, %596, !dbg !959
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !960
  br i1 %597, label %602, label %598, !dbg !960

; <label>:598:                                    ; preds = %594, %590, %586, %582, %577
  %599 = add nuw nsw i64 %578, 1, !dbg !961
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !962
  %600 = icmp ult i64 %599, 10, !dbg !963
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !958
  br i1 %600, label %577, label %601, !dbg !958, !llvm.loop !645

; <label>:601:                                    ; preds = %598
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !964
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !965
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !966
  br label %609, !dbg !966

; <label>:602:                                    ; preds = %594
  %603 = trunc i64 %578 to i8, !dbg !956
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !967
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !965
  %604 = icmp slt i8 %603, 0, !dbg !969
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !966
  br i1 %604, label %609, label %605, !dbg !966

; <label>:605:                                    ; preds = %602
  %606 = shl i64 %578, 56, !dbg !971
  %607 = ashr exact i64 %606, 56, !dbg !971
  %608 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %607, !dbg !971
  br label %631, !dbg !966

; <label>:609:                                    ; preds = %602, %601
  %610 = tail call fastcc signext i8 @nd6_new_neighbor_cache_entry() #7, !dbg !972
  %611 = icmp slt i8 %610, 0, !dbg !974
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !976
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !977
  br i1 %611, label %661, label %612, !dbg !976

; <label>:612:                                    ; preds = %609
  %613 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !979, !tbaa !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !979
  %614 = sext i8 %610 to i64, !dbg !979
  %615 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %614, !dbg !979
  %616 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %615, i64 0, i32 0, i32 0, i64 0, !dbg !979
  store i32 %613, i32* %616, align 8, !dbg !979, !tbaa !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !979
  %617 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 1), align 4, !dbg !979, !tbaa !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !979
  %618 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %614, i32 0, i32 0, i64 1, !dbg !979
  store i32 %617, i32* %618, align 4, !dbg !979, !tbaa !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !979
  %619 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 2), align 4, !dbg !979, !tbaa !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !979
  %620 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %614, i32 0, i32 0, i64 2, !dbg !979
  store i32 %619, i32* %620, align 8, !dbg !979, !tbaa !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !979
  %621 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 3), align 4, !dbg !979, !tbaa !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !979
  %622 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %614, i32 0, i32 0, i64 3, !dbg !979
  store i32 %621, i32* %622, align 4, !dbg !979, !tbaa !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !979
  %623 = load i8, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 1), align 4, !dbg !979, !tbaa !747
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !979
  %624 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %614, i32 0, i32 1, !dbg !979
  store i8 %623, i8* %624, align 8, !dbg !979, !tbaa !638
  %625 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %614, i32 1, !dbg !980
  store %struct.netif* %1, %struct.netif** %625, align 8, !dbg !981, !tbaa !718
  %626 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %614, i32 3, !dbg !982
  store %struct.nd6_q_entry* null, %struct.nd6_q_entry** %626, align 8, !dbg !983, !tbaa !725
  %627 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %614, i32 4, !dbg !984
  store i8 1, i8* %627, align 8, !dbg !985, !tbaa !687
  %628 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %614, i32 6, i32 0, !dbg !986
  store i32 1, i32* %628, align 4, !dbg !987, !tbaa !530
  %629 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %615, i64 0, i32 0, !dbg !997
  tail call fastcc void @nd6_send_ns(%struct.netif* %1, %struct.ip6_addr* nonnull %629, i8 zeroext 1) #7, !dbg !998
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !999
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1000
  %630 = load %struct.nd6_neighbor_cache_entry*, %struct.nd6_neighbor_cache_entry** getelementptr inbounds ([3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 2, i32 0), align 16, !dbg !1001, !tbaa !929
  br label %631, !dbg !1000

; <label>:631:                                    ; preds = %612, %605
  %632 = phi %struct.nd6_neighbor_cache_entry* [ %550, %605 ], [ %630, %612 ], !dbg !1001
  %633 = phi %struct.nd6_neighbor_cache_entry* [ %608, %605 ], [ %615, %612 ], !dbg !971
  %634 = phi i64 [ %607, %605 ], [ %614, %612 ], !dbg !971
  %635 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %634, i32 5, !dbg !1006
  store i8 1, i8* %635, align 1, !dbg !1007, !tbaa !1008
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1011
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1012
  %636 = icmp eq %struct.nd6_neighbor_cache_entry* %632, %633, !dbg !1013
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1014
  br i1 %636, label %663, label %637, !dbg !1014

; <label>:637:                                    ; preds = %631
  %638 = icmp eq %struct.nd6_neighbor_cache_entry* %632, null, !dbg !1015
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1017
  br i1 %638, label %639, label %640, !dbg !1017

; <label>:639:                                    ; preds = %637
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1018
  br label %640, !dbg !1018

; <label>:640:                                    ; preds = %639, %637
  %641 = phi i8 [ 2, %639 ], [ 3, %637 ], !dbg !1020
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1021
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1012
  %642 = load %struct.nd6_neighbor_cache_entry*, %struct.nd6_neighbor_cache_entry** getelementptr inbounds ([3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 1, i32 0), align 16, !dbg !1001, !tbaa !929
  %643 = icmp eq %struct.nd6_neighbor_cache_entry* %642, %633, !dbg !1013
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1014
  br i1 %643, label %663, label %649, !dbg !1014

; <label>:644:                                    ; preds = %659, %658
  %645 = phi i8 [ 0, %658 ], [ %653, %659 ]
  %646 = sext i8 %645 to i64, !dbg !1022
  %647 = getelementptr inbounds [3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 %646, i32 0, !dbg !1025
  store %struct.nd6_neighbor_cache_entry* %633, %struct.nd6_neighbor_cache_entry** %647, align 16, !dbg !1026, !tbaa !929
  br label %663, !dbg !1027

; <label>:648:                                    ; preds = %659
  store i8 0, i8* %635, align 1, !dbg !1028, !tbaa !1008
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1029
  br label %661, !dbg !1029

; <label>:649:                                    ; preds = %640
  %650 = icmp eq %struct.nd6_neighbor_cache_entry* %642, null, !dbg !1015
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1017
  br i1 %650, label %651, label %652, !dbg !1017

; <label>:651:                                    ; preds = %649
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1018
  br label %652, !dbg !1018

; <label>:652:                                    ; preds = %651, %649
  %653 = phi i8 [ 1, %651 ], [ %641, %649 ], !dbg !1020
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1021
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1012
  %654 = load %struct.nd6_neighbor_cache_entry*, %struct.nd6_neighbor_cache_entry** getelementptr inbounds ([3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 0, i32 0), align 16, !dbg !1001, !tbaa !929
  %655 = icmp eq %struct.nd6_neighbor_cache_entry* %654, %633, !dbg !1013
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1014
  br i1 %655, label %663, label %656, !dbg !1014

; <label>:656:                                    ; preds = %652
  %657 = icmp eq %struct.nd6_neighbor_cache_entry* %654, null, !dbg !1015
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1017
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1030
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1021
  br i1 %657, label %658, label %659, !dbg !1017

; <label>:658:                                    ; preds = %656
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1012
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1031
  br label %644, !dbg !1031

; <label>:659:                                    ; preds = %656
  %660 = icmp slt i8 %653, 3, !dbg !1032
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1031
  br i1 %660, label %644, label %648, !dbg !1031

; <label>:661:                                    ; preds = %648, %609
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1033
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1034
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1035
  %662 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %0) #7, !dbg !1036
  br label %1077, !dbg !1039

; <label>:663:                                    ; preds = %644, %652, %640, %631, %518, %545, %572
  %664 = phi i8 [ 0, %518 ], [ 1, %545 ], [ 2, %572 ], [ %645, %644 ], [ 2, %631 ], [ 1, %640 ], [ 0, %652 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1040
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1040
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1040
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1035
  %665 = getelementptr inbounds i8, i8* %7, i64 6, !dbg !1041
  %666 = bitcast i8* %665 to i16*, !dbg !1041
  %667 = load i16, i16* %666, align 1, !dbg !1041, !tbaa !1042
  %668 = tail call zeroext i16 @lwip_htons(i16 zeroext %667) #7, !dbg !1043
  %669 = zext i16 %668 to i32, !dbg !1043
  %670 = sext i8 %664 to i64, !dbg !1044
  %671 = getelementptr inbounds [3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 %670, i32 1, !dbg !1045
  store i32 %669, i32* %671, align 8, !dbg !1046, !tbaa !1047
  %672 = getelementptr inbounds i8, i8* %7, i64 12, !dbg !1048
  %673 = bitcast i8* %672 to i32*, !dbg !1048
  %674 = load i32, i32* %673, align 1, !dbg !1048, !tbaa !1050
  %675 = icmp eq i32 %674, 0, !dbg !1051
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1052
  br i1 %675, label %678, label %676, !dbg !1052

; <label>:676:                                    ; preds = %663
  %677 = tail call i32 @lwip_htonl(i32 %674) #7, !dbg !1053
  store i32 %677, i32* @retrans_timer, align 4, !dbg !1055, !tbaa !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1056
  br label %678, !dbg !1056

; <label>:678:                                    ; preds = %663, %676
  %679 = getelementptr inbounds i8, i8* %7, i64 8, !dbg !1057
  %680 = bitcast i8* %679 to i32*, !dbg !1057
  %681 = load i32, i32* %680, align 1, !dbg !1057, !tbaa !1059
  %682 = icmp eq i32 %681, 0, !dbg !1060
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1061
  br i1 %682, label %685, label %683, !dbg !1061

; <label>:683:                                    ; preds = %678
  %684 = tail call i32 @lwip_htonl(i32 %681) #7, !dbg !1062
  store i32 %684, i32* @reachable_time, align 4, !dbg !1064, !tbaa !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1065
  br label %685, !dbg !1065

; <label>:685:                                    ; preds = %678, %683
  %686 = getelementptr inbounds i8, i8* %7, i64 5, !dbg !1066
  %687 = load i8, i8* %686, align 1, !dbg !1066, !tbaa !1067
  %688 = getelementptr inbounds [3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 %670, i32 2, !dbg !1068
  store i8 %687, i8* %688, align 4, !dbg !1069, !tbaa !1070
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1072
  %689 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 2, !dbg !1073
  %690 = load i16, i16* %689, align 8, !dbg !1073, !tbaa !1074
  %691 = icmp ugt i16 %690, 17, !dbg !1075
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1072
  br i1 %691, label %692, label %1076, !dbg !1072

; <label>:692:                                    ; preds = %685
  %693 = getelementptr inbounds [3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 %670, i32 0
  %694 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 17
  %695 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 20
  %696 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 18
  %697 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 5, i64 1
  %698 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 5, i64 2
  %699 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 6, i64 1
  %700 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 5, i64 0
  %701 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 24
  %702 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 6, i64 2
  %703 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 0
  %704 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 0
  %705 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 1
  %706 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 1
  %707 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 1, i32 0, i32 0, i32 1
  %708 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 2
  %709 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 3
  %710 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 2, i32 0, i32 0, i32 1
  %711 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 2
  %712 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 2
  %713 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 3
  %714 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 3
  br label %715, !dbg !1072

; <label>:715:                                    ; preds = %692, %1069
  %716 = phi i32 [ 16, %692 ], [ %1073, %1069 ]
  %717 = phi i16 [ 16, %692 ], [ %1070, %1069 ]
  %718 = or i16 %717, 1, !dbg !1076
  %719 = tail call i32 @pbuf_try_get_at(%struct.pbuf* nonnull %0, i16 zeroext %718) #7, !dbg !1077
  %720 = icmp slt i32 %719, 1, !dbg !1079
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1081
  br i1 %720, label %1351, label %721, !dbg !1081

; <label>:721:                                    ; preds = %715
  %722 = trunc i32 %719 to i16, !dbg !1082
  %723 = and i16 %722, 255, !dbg !1082
  %724 = shl nuw nsw i16 %723, 3, !dbg !1082
  %725 = zext i16 %724 to i32, !dbg !1084
  %726 = load i16, i16* %689, align 8, !dbg !1086, !tbaa !1074
  %727 = zext i16 %726 to i32, !dbg !1087
  %728 = sub nsw i32 %727, %716, !dbg !1088
  %729 = icmp slt i32 %728, %725, !dbg !1089
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1090
  br i1 %729, label %1351, label %730, !dbg !1090

; <label>:730:                                    ; preds = %721
  %731 = load i16, i16* %457, align 2, !dbg !1091, !tbaa !535
  %732 = icmp eq i16 %731, %726, !dbg !1093
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1094
  br i1 %732, label %733, label %737, !dbg !1094

; <label>:733:                                    ; preds = %730
  %734 = load i8*, i8** %6, align 8, !dbg !1095, !tbaa !526
  %735 = zext i16 %717 to i64, !dbg !1097
  %736 = getelementptr inbounds i8, i8* %734, i64 %735, !dbg !1097
  br label %745, !dbg !1099

; <label>:737:                                    ; preds = %730
  %738 = icmp ugt i16 %723, 4, !dbg !1100
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1103
  br i1 %738, label %739, label %742, !dbg !1103

; <label>:739:                                    ; preds = %737
  %740 = tail call zeroext i8 @pbuf_get_at(%struct.pbuf* nonnull %0, i16 zeroext %717) #7, !dbg !1104
  %741 = icmp eq i8 %740, 25, !dbg !1107
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1109
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1110
  br i1 %741, label %742, label %1352, !dbg !1109

; <label>:742:                                    ; preds = %739, %737
  %743 = phi i16 [ %724, %737 ], [ 32, %739 ], !dbg !1112
  %744 = tail call zeroext i16 @pbuf_copy_partial(%struct.pbuf* nonnull %0, i8* getelementptr inbounds (%union.ra_options, %union.ra_options* @nd6_ra_buffer, i64 0, i32 0, i32 0), i16 zeroext %743, i16 zeroext %717) #7, !dbg !1113
  br label %745

; <label>:745:                                    ; preds = %742, %733
  %746 = phi i16 [ %724, %733 ], [ %744, %742 ], !dbg !1114
  %747 = phi i8* [ %736, %733 ], [ getelementptr inbounds (%union.ra_options, %union.ra_options* @nd6_ra_buffer, i64 0, i32 0, i32 0), %742 ], !dbg !1114
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %748 = load i8, i8* %747, align 1, !dbg !1115, !tbaa !530
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1116
  switch i8 %748, label %1065 [
    i8 1, label %749
    i8 5, label %770
    i8 3, label %792
    i8 24, label %1069
  ], !dbg !1116

; <label>:749:                                    ; preds = %745
  %750 = icmp ult i16 %746, 8, !dbg !1117
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1119
  br i1 %750, label %769, label %751, !dbg !1119

; <label>:751:                                    ; preds = %749
  %752 = load %struct.nd6_neighbor_cache_entry*, %struct.nd6_neighbor_cache_entry** %693, align 16, !dbg !1121, !tbaa !929
  %753 = icmp eq %struct.nd6_neighbor_cache_entry* %752, null, !dbg !1123
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1124
  br i1 %753, label %768, label %754, !dbg !1124

; <label>:754:                                    ; preds = %751
  %755 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %752, i64 0, i32 4, !dbg !1125
  %756 = load i8, i8* %755, align 8, !dbg !1125, !tbaa !687
  %757 = icmp eq i8 %756, 1, !dbg !1126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1127
  br i1 %757, label %758, label %768, !dbg !1127

; <label>:758:                                    ; preds = %754
  %759 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %752, i64 0, i32 2, i64 0, !dbg !1128
  %760 = getelementptr inbounds i8, i8* %747, i64 2, !dbg !1128
  %761 = load i8, i8* %695, align 4, !dbg !1128, !tbaa !662
  %762 = zext i8 %761 to i64, !dbg !1128
  %763 = tail call i8* @memcpy(i8* nonnull %759, i8* nonnull %760, i64 %762) #7, !dbg !1128
  %764 = load %struct.nd6_neighbor_cache_entry*, %struct.nd6_neighbor_cache_entry** %693, align 16, !dbg !1130, !tbaa !929
  %765 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %764, i64 0, i32 4, !dbg !1131
  store i8 2, i8* %765, align 8, !dbg !1132, !tbaa !687
  %766 = load i32, i32* @reachable_time, align 4, !dbg !1133, !tbaa !548
  %767 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %764, i64 0, i32 6, i32 0, !dbg !1134
  store i32 %766, i32* %767, align 4, !dbg !1135, !tbaa !530
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1136
  br label %768, !dbg !1136

; <label>:768:                                    ; preds = %754, %758, %751
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1137
  br label %1068

; <label>:769:                                    ; preds = %749
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1138
  br label %1351

; <label>:770:                                    ; preds = %745
  %771 = icmp ult i16 %746, 8, !dbg !1140
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1142
  br i1 %771, label %791, label %772, !dbg !1142

; <label>:772:                                    ; preds = %770
  %773 = getelementptr inbounds i8, i8* %747, i64 4, !dbg !1144
  %774 = bitcast i8* %773 to i32*, !dbg !1144
  %775 = load i32, i32* %774, align 1, !dbg !1144, !tbaa !1145
  %776 = tail call i32 @lwip_htonl(i32 %775) #7, !dbg !1147
  %777 = add i32 %776, -1280, !dbg !1149
  %778 = icmp ult i32 %777, 64256, !dbg !1149
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1149
  br i1 %778, label %779, label %790, !dbg !1149

; <label>:779:                                    ; preds = %772
  %780 = load i16, i16* %694, align 2, !dbg !1151, !tbaa !1154
  %781 = icmp eq i16 %780, 0, !dbg !1155
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1156
  br i1 %781, label %787, label %782, !dbg !1156

; <label>:782:                                    ; preds = %779
  %783 = zext i16 %780 to i32, !dbg !1157
  %784 = and i32 %776, 65535, !dbg !1157
  %785 = icmp ugt i32 %784, %783, !dbg !1157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1157
  %786 = select i1 %785, i32 %783, i32 %784, !dbg !1157
  br label %787, !dbg !1159

; <label>:787:                                    ; preds = %779, %782
  %788 = phi i32 [ %786, %782 ], [ %776, %779 ]
  %789 = trunc i32 %788 to i16, !dbg !1160
  store i16 %789, i16* %696, align 4, !dbg !1160, !tbaa !1161
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %790, !dbg !1162

; <label>:790:                                    ; preds = %787, %772
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1162
  br label %1068

; <label>:791:                                    ; preds = %770
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1163
  br label %1351

; <label>:792:                                    ; preds = %745
  %793 = icmp ult i16 %746, 32, !dbg !1165
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1167
  br i1 %793, label %1064, label %794, !dbg !1167

; <label>:794:                                    ; preds = %792
  %795 = getelementptr inbounds i8, i8* %747, i64 16, !dbg !1169
  %796 = bitcast i8* %795 to i32*, !dbg !1169
  %797 = load i32, i32* %796, align 1, !dbg !1169, !tbaa !548
  %798 = getelementptr inbounds i8, i8* %747, i64 20, !dbg !1169
  %799 = bitcast i8* %798 to i32*, !dbg !1169
  %800 = load i32, i32* %799, align 1, !dbg !1169, !tbaa !548
  %801 = getelementptr inbounds i8, i8* %747, i64 24, !dbg !1169
  %802 = bitcast i8* %801 to i32*, !dbg !1169
  %803 = load i32, i32* %802, align 1, !dbg !1169, !tbaa !548
  %804 = getelementptr inbounds i8, i8* %747, i64 28, !dbg !1169
  %805 = bitcast i8* %804 to i32*, !dbg !1169
  %806 = load i32, i32* %805, align 1, !dbg !1169, !tbaa !548
  %807 = and i32 %797, 49407, !dbg !1171
  %808 = icmp eq i32 %807, 33022, !dbg !1171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1172
  br i1 %808, label %1062, label %809, !dbg !1171

; <label>:809:                                    ; preds = %794
  %810 = getelementptr inbounds i8, i8* %747, i64 3, !dbg !1173
  %811 = load i8, i8* %810, align 1, !dbg !1173, !tbaa !1174
  %812 = icmp slt i8 %811, 0, !dbg !1176
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1177
  br i1 %812, label %813, label %928, !dbg !1177

; <label>:813:                                    ; preds = %809
  %814 = getelementptr inbounds i8, i8* %747, i64 2, !dbg !1178
  %815 = load i8, i8* %814, align 1, !dbg !1178, !tbaa !1179
  %816 = icmp eq i8 %815, 64, !dbg !1180
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1181
  br i1 %816, label %817, label %928, !dbg !1181

; <label>:817:                                    ; preds = %813
  %818 = getelementptr inbounds i8, i8* %747, i64 4, !dbg !1182
  %819 = bitcast i8* %818 to i32*, !dbg !1182
  %820 = load i32, i32* %819, align 1, !dbg !1182, !tbaa !1183
  %821 = tail call i32 @lwip_htonl(i32 %820) #7, !dbg !1184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1196
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1198
  %822 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 0, i32 0, i32 0, i64 0), align 16, !dbg !1199, !tbaa !548
  %823 = icmp eq i32 %822, %797, !dbg !1199
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1199
  br i1 %823, label %824, label %833, !dbg !1199

; <label>:824:                                    ; preds = %817
  %825 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 0, i32 0, i32 0, i64 1), align 4, !dbg !1199, !tbaa !548
  %826 = icmp eq i32 %825, %800, !dbg !1199
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1199
  br i1 %826, label %827, label %833, !dbg !1199

; <label>:827:                                    ; preds = %824
  %828 = load i8, i8* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 0, i32 0, i32 1), align 16, !dbg !1199, !tbaa !1203
  %829 = icmp eq i8 %828, 0, !dbg !1199
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1205
  br i1 %829, label %830, label %833, !dbg !1205

; <label>:830:                                    ; preds = %827
  %831 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 0, i32 1), align 8, !dbg !1206, !tbaa !1207
  %832 = icmp eq %struct.netif* %831, %1, !dbg !1208
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1209
  br i1 %832, label %922, label %833, !dbg !1209

; <label>:833:                                    ; preds = %830, %827, %824, %817
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1210
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1198
  %834 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 1, i32 0, i32 0, i64 0), align 8, !dbg !1199, !tbaa !548
  %835 = icmp eq i32 %834, %797, !dbg !1199
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1199
  br i1 %835, label %836, label %845, !dbg !1199

; <label>:836:                                    ; preds = %833
  %837 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 1, i32 0, i32 0, i64 1), align 4, !dbg !1199, !tbaa !548
  %838 = icmp eq i32 %837, %800, !dbg !1199
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1199
  br i1 %838, label %839, label %845, !dbg !1199

; <label>:839:                                    ; preds = %836
  %840 = load i8, i8* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 1, i32 0, i32 1), align 8, !dbg !1199, !tbaa !1203
  %841 = icmp eq i8 %840, 0, !dbg !1199
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1205
  br i1 %841, label %842, label %845, !dbg !1205

; <label>:842:                                    ; preds = %839
  %843 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 1, i32 1), align 8, !dbg !1206, !tbaa !1207
  %844 = icmp eq %struct.netif* %843, %1, !dbg !1208
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1209
  br i1 %844, label %922, label %845, !dbg !1209

; <label>:845:                                    ; preds = %842, %839, %836, %833
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1210
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1198
  %846 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 2, i32 0, i32 0, i64 0), align 16, !dbg !1199, !tbaa !548
  %847 = icmp eq i32 %846, %797, !dbg !1199
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1199
  br i1 %847, label %848, label %857, !dbg !1199

; <label>:848:                                    ; preds = %845
  %849 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 2, i32 0, i32 0, i64 1), align 4, !dbg !1199, !tbaa !548
  %850 = icmp eq i32 %849, %800, !dbg !1199
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1199
  br i1 %850, label %851, label %857, !dbg !1199

; <label>:851:                                    ; preds = %848
  %852 = load i8, i8* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 2, i32 0, i32 1), align 16, !dbg !1199, !tbaa !1203
  %853 = icmp eq i8 %852, 0, !dbg !1199
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1205
  br i1 %853, label %854, label %857, !dbg !1205

; <label>:854:                                    ; preds = %851
  %855 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 2, i32 1), align 8, !dbg !1206, !tbaa !1207
  %856 = icmp eq %struct.netif* %855, %1, !dbg !1208
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1209
  br i1 %856, label %922, label %857, !dbg !1209

; <label>:857:                                    ; preds = %854, %851, %848, %845
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1210
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1198
  %858 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 3, i32 0, i32 0, i64 0), align 8, !dbg !1199, !tbaa !548
  %859 = icmp eq i32 %858, %797, !dbg !1199
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1199
  br i1 %859, label %860, label %869, !dbg !1199

; <label>:860:                                    ; preds = %857
  %861 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 3, i32 0, i32 0, i64 1), align 4, !dbg !1199, !tbaa !548
  %862 = icmp eq i32 %861, %800, !dbg !1199
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1199
  br i1 %862, label %863, label %869, !dbg !1199

; <label>:863:                                    ; preds = %860
  %864 = load i8, i8* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 3, i32 0, i32 1), align 8, !dbg !1199, !tbaa !1203
  %865 = icmp eq i8 %864, 0, !dbg !1199
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1205
  br i1 %865, label %866, label %869, !dbg !1205

; <label>:866:                                    ; preds = %863
  %867 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 3, i32 1), align 8, !dbg !1206, !tbaa !1207
  %868 = icmp eq %struct.netif* %867, %1, !dbg !1208
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1209
  br i1 %868, label %922, label %869, !dbg !1209

; <label>:869:                                    ; preds = %866, %863, %860, %857
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1210
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1198
  %870 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 4, i32 0, i32 0, i64 0), align 16, !dbg !1199, !tbaa !548
  %871 = icmp eq i32 %870, %797, !dbg !1199
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1199
  br i1 %871, label %872, label %881, !dbg !1199

; <label>:872:                                    ; preds = %869
  %873 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 4, i32 0, i32 0, i64 1), align 4, !dbg !1199, !tbaa !548
  %874 = icmp eq i32 %873, %800, !dbg !1199
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1199
  br i1 %874, label %875, label %881, !dbg !1199

; <label>:875:                                    ; preds = %872
  %876 = load i8, i8* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 4, i32 0, i32 1), align 16, !dbg !1199, !tbaa !1203
  %877 = icmp eq i8 %876, 0, !dbg !1199
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1205
  br i1 %877, label %878, label %881, !dbg !1205

; <label>:878:                                    ; preds = %875
  %879 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 4, i32 1), align 8, !dbg !1206, !tbaa !1207
  %880 = icmp eq %struct.netif* %879, %1, !dbg !1208
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1209
  br i1 %880, label %922, label %881, !dbg !1209

; <label>:881:                                    ; preds = %869, %872, %875, %878
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1210
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1198
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1211
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1212
  %882 = icmp eq i32 %821, 0, !dbg !1214
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1216
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1217
  br i1 %882, label %926, label %883, !dbg !1216

; <label>:883:                                    ; preds = %881
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1228
  %884 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 0, i32 1), align 8, !dbg !1230, !tbaa !1207
  %885 = icmp eq %struct.netif* %884, null, !dbg !1234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1235
  br i1 %885, label %889, label %886, !dbg !1235

; <label>:886:                                    ; preds = %883
  %887 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 0, i32 2), align 16, !dbg !1236, !tbaa !1237
  %888 = icmp eq i32 %887, 0, !dbg !1238
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1239
  br i1 %888, label %889, label %897, !dbg !1239

; <label>:889:                                    ; preds = %883, %886, %897, %900, %903, %906, %909, %912, %915, %918
  %890 = phi i64 [ 0, %886 ], [ 0, %883 ], [ 1, %897 ], [ 1, %900 ], [ 2, %903 ], [ 2, %906 ], [ 3, %909 ], [ 3, %912 ], [ 4, %915 ], [ 4, %918 ]
  %891 = phi %struct.netif** [ getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 0, i32 1), %886 ], [ getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 0, i32 1), %883 ], [ getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 1, i32 1), %897 ], [ getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 1, i32 1), %900 ], [ getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 2, i32 1), %903 ], [ getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 2, i32 1), %906 ], [ getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 3, i32 1), %909 ], [ getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 3, i32 1), %912 ], [ getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 4, i32 1), %915 ], [ getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 4, i32 1), %918 ], !dbg !1230
  store %struct.netif* %1, %struct.netif** %891, align 8, !dbg !1240, !tbaa !1207
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1242
  %892 = getelementptr inbounds [5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 %890, i32 0, i32 0, i64 0, !dbg !1242
  store i32 %797, i32* %892, align 8, !dbg !1242, !tbaa !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1242
  %893 = getelementptr inbounds [5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 %890, i32 0, i32 0, i64 1, !dbg !1242
  store i32 %800, i32* %893, align 4, !dbg !1242, !tbaa !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1242
  %894 = getelementptr inbounds [5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 %890, i32 0, i32 0, i64 2, !dbg !1242
  store i32 %803, i32* %894, align 8, !dbg !1242, !tbaa !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1242
  %895 = getelementptr inbounds [5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 %890, i32 0, i32 0, i64 3, !dbg !1242
  store i32 %806, i32* %895, align 4, !dbg !1242
  %896 = getelementptr inbounds [5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 %890, i32 0, i32 1, !dbg !1242
  store i8 0, i8* %896, align 8, !dbg !1242, !tbaa !1203
  br label %922, !dbg !1244

; <label>:897:                                    ; preds = %886
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1245
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1228
  %898 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 1, i32 1), align 8, !dbg !1230, !tbaa !1207
  %899 = icmp eq %struct.netif* %898, null, !dbg !1234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1235
  br i1 %899, label %889, label %900, !dbg !1235

; <label>:900:                                    ; preds = %897
  %901 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 1, i32 2), align 8, !dbg !1236, !tbaa !1237
  %902 = icmp eq i32 %901, 0, !dbg !1238
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1239
  br i1 %902, label %889, label %903, !dbg !1239

; <label>:903:                                    ; preds = %900
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1245
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1228
  %904 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 2, i32 1), align 8, !dbg !1230, !tbaa !1207
  %905 = icmp eq %struct.netif* %904, null, !dbg !1234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1235
  br i1 %905, label %889, label %906, !dbg !1235

; <label>:906:                                    ; preds = %903
  %907 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 2, i32 2), align 16, !dbg !1236, !tbaa !1237
  %908 = icmp eq i32 %907, 0, !dbg !1238
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1239
  br i1 %908, label %889, label %909, !dbg !1239

; <label>:909:                                    ; preds = %906
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1245
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1228
  %910 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 3, i32 1), align 8, !dbg !1230, !tbaa !1207
  %911 = icmp eq %struct.netif* %910, null, !dbg !1234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1235
  br i1 %911, label %889, label %912, !dbg !1235

; <label>:912:                                    ; preds = %909
  %913 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 3, i32 2), align 8, !dbg !1236, !tbaa !1237
  %914 = icmp eq i32 %913, 0, !dbg !1238
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1239
  br i1 %914, label %889, label %915, !dbg !1239

; <label>:915:                                    ; preds = %912
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1245
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1228
  %916 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 4, i32 1), align 8, !dbg !1230, !tbaa !1207
  %917 = icmp eq %struct.netif* %916, null, !dbg !1234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1235
  br i1 %917, label %889, label %918, !dbg !1235

; <label>:918:                                    ; preds = %915
  %919 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 4, i32 2), align 16, !dbg !1236, !tbaa !1237
  %920 = icmp eq i32 %919, 0, !dbg !1238
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1239
  br i1 %920, label %889, label %921, !dbg !1239

; <label>:921:                                    ; preds = %918
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1245
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1228
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1247
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1248
  br label %925, !dbg !1244

; <label>:922:                                    ; preds = %830, %842, %854, %866, %878, %889
  %923 = phi i64 [ %890, %889 ], [ 0, %830 ], [ 1, %842 ], [ 2, %854 ], [ 3, %866 ], [ 4, %878 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1217
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1217
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1249
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1244
  %924 = getelementptr inbounds [5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 %923, i32 2, !dbg !1250
  store i32 %821, i32* %924, align 8, !dbg !1253, !tbaa !1237
  br label %925, !dbg !1254

; <label>:925:                                    ; preds = %922, %921
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1255
  br label %926, !dbg !1256

; <label>:926:                                    ; preds = %925, %881
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1256
  %927 = load i8, i8* %810, align 1, !dbg !1257, !tbaa !1174
  br label %928, !dbg !1256

; <label>:928:                                    ; preds = %926, %813, %809
  %929 = phi i8 [ %927, %926 ], [ %811, %813 ], [ %811, %809 ], !dbg !1257
  %930 = and i8 %929, 64, !dbg !1259
  %931 = icmp eq i8 %930, 0, !dbg !1259
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1260
  br i1 %931, label %1063, label %932, !dbg !1260

; <label>:932:                                    ; preds = %928
  %933 = getelementptr inbounds i8, i8* %747, i64 4, !dbg !1285
  %934 = bitcast i8* %933 to i32*, !dbg !1285
  %935 = load i32, i32* %934, align 1, !dbg !1285, !tbaa !1183
  %936 = tail call i32 @lwip_htonl(i32 %935) #7, !dbg !1286
  %937 = getelementptr inbounds i8, i8* %747, i64 8, !dbg !1288
  %938 = bitcast i8* %937 to i32*, !dbg !1288
  %939 = load i32, i32* %938, align 1, !dbg !1288, !tbaa !1289
  %940 = tail call i32 @lwip_htonl(i32 %939) #7, !dbg !1290
  %941 = icmp ugt i32 %940, %936, !dbg !1292
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1294
  br i1 %941, label %1061, label %942, !dbg !1294

; <label>:942:                                    ; preds = %932
  %943 = getelementptr inbounds i8, i8* %747, i64 2, !dbg !1295
  %944 = load i8, i8* %943, align 1, !dbg !1295, !tbaa !1179
  %945 = icmp eq i8 %944, 64, !dbg !1296
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1297
  br i1 %945, label %946, label %1061, !dbg !1297

; <label>:946:                                    ; preds = %942
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1299
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1300
  %947 = load i8, i8* %697, align 1, !dbg !1301, !tbaa !530
  %948 = icmp eq i8 %947, 0, !dbg !1303
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1304
  br i1 %948, label %982, label %949, !dbg !1304

; <label>:949:                                    ; preds = %946
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1305
  %950 = load i32, i32* %699, align 4, !dbg !1305, !tbaa !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1305
  %951 = icmp eq i32 %950, 0, !dbg !1305
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1306
  br i1 %951, label %982, label %952, !dbg !1306

; <label>:952:                                    ; preds = %949
  %953 = load i32, i32* %703, align 8, !dbg !1307, !tbaa !530
  %954 = icmp eq i32 %797, %953, !dbg !1307
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1307
  br i1 %954, label %955, label %982, !dbg !1307

; <label>:955:                                    ; preds = %952
  %956 = load i32, i32* %705, align 4, !dbg !1307, !tbaa !530
  %957 = icmp eq i32 %800, %956, !dbg !1307
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1307
  br i1 %957, label %958, label %982, !dbg !1307

; <label>:958:                                    ; preds = %955
  %959 = load i8, i8* %707, align 8, !dbg !1307, !tbaa !530
  %960 = icmp eq i8 %959, 0, !dbg !1307
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1308
  br i1 %960, label %961, label %982, !dbg !1308

; <label>:961:                                    ; preds = %1052, %958
  %962 = phi i32* [ %702, %1052 ], [ %699, %958 ], !dbg !1309
  %963 = phi i32 [ %1044, %1052 ], [ %950, %958 ], !dbg !1309
  %964 = phi i8 [ 2, %1052 ], [ 1, %958 ]
  %965 = phi i64 [ 2, %1052 ], [ 1, %958 ], !dbg !1301
  %966 = phi i8 [ %983, %1052 ], [ %947, %958 ], !dbg !1301
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1309
  %967 = icmp ugt i32 %936, 7200, !dbg !1311
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1313
  br i1 %967, label %970, label %968, !dbg !1313

; <label>:968:                                    ; preds = %961
  %969 = icmp ugt i32 %936, %963, !dbg !1314
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1315
  br i1 %969, label %970, label %971, !dbg !1315

; <label>:970:                                    ; preds = %968, %961
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1316
  br label %973, !dbg !1319

; <label>:971:                                    ; preds = %968
  %972 = icmp ugt i32 %963, 7200, !dbg !1322
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1324
  br i1 %972, label %973, label %975, !dbg !1324

; <label>:973:                                    ; preds = %971, %970
  %974 = phi i32 [ %936, %970 ], [ 7200, %971 ]
  store i32 %974, i32* %962, align 4, !dbg !1325, !tbaa !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1325
  br label %975, !dbg !1326

; <label>:975:                                    ; preds = %973, %971
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1326
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1326
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1329
  %976 = icmp eq i32 %940, 0, !dbg !1330
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1332
  br i1 %976, label %980, label %977, !dbg !1332

; <label>:977:                                    ; preds = %975
  %978 = icmp eq i8 %966, 16, !dbg !1333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1334
  br i1 %978, label %979, label %980, !dbg !1334

; <label>:979:                                    ; preds = %977
  tail call void @netif_ip6_addr_set_state(%struct.netif* nonnull %1, i8 signext %964, i8 zeroext 48) #7, !dbg !1335
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1337
  br label %980, !dbg !1337

; <label>:980:                                    ; preds = %979, %977, %975
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1338
  %981 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 7, i64 %965, !dbg !1340
  store i32 %940, i32* %981, align 4, !dbg !1340, !tbaa !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1340
  br label %1061

; <label>:982:                                    ; preds = %958, %955, %952, %949, %946
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1343
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1300
  %983 = load i8, i8* %698, align 1, !dbg !1301, !tbaa !530
  %984 = icmp eq i8 %983, 0, !dbg !1303
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1304
  br i1 %984, label %1055, label %1043, !dbg !1304

; <label>:985:                                    ; preds = %1055
  %986 = icmp eq i8 %1056, 0, !dbg !1344
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1346
  br i1 %986, label %1061, label %987, !dbg !1346

; <label>:987:                                    ; preds = %985
  %988 = icmp eq i8 %1056, 64, !dbg !1347
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1348
  br i1 %988, label %1061, label %989, !dbg !1348

; <label>:989:                                    ; preds = %987
  %990 = load i32, i32* %708, align 8, !dbg !1350, !tbaa !530
  %991 = load i32, i32* %709, align 4, !dbg !1350, !tbaa !530
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1352
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1354
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1357
  br i1 %948, label %1007, label %992, !dbg !1357

; <label>:992:                                    ; preds = %989
  %993 = load i32, i32* %703, align 8, !dbg !1360, !tbaa !530
  %994 = icmp eq i32 %797, %993, !dbg !1360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1360
  br i1 %994, label %995, label %1008, !dbg !1360

; <label>:995:                                    ; preds = %992
  %996 = load i32, i32* %705, align 4, !dbg !1360, !tbaa !530
  %997 = icmp eq i32 %800, %996, !dbg !1360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1360
  br i1 %997, label %998, label %1008, !dbg !1360

; <label>:998:                                    ; preds = %995
  %999 = load i32, i32* %711, align 8, !dbg !1360, !tbaa !530
  %1000 = icmp eq i32 %990, %999, !dbg !1360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1360
  br i1 %1000, label %1001, label %1008, !dbg !1360

; <label>:1001:                                   ; preds = %998
  %1002 = load i32, i32* %713, align 4, !dbg !1360, !tbaa !530
  %1003 = icmp eq i32 %991, %1002, !dbg !1360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1360
  br i1 %1003, label %1004, label %1008, !dbg !1360

; <label>:1004:                                   ; preds = %1001
  %1005 = load i8, i8* %707, align 8, !dbg !1360, !tbaa !530
  %1006 = icmp eq i8 %1005, 0, !dbg !1360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1364
  br i1 %1006, label %1061, label %1008, !dbg !1364

; <label>:1007:                                   ; preds = %989
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1365
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1366
  br label %1008, !dbg !1366

; <label>:1008:                                   ; preds = %1007, %1004, %1001, %998, %995, %992
  %1009 = phi i8 [ 1, %1007 ], [ 0, %1004 ], [ 0, %1001 ], [ 0, %998 ], [ 0, %995 ], [ 0, %992 ], !dbg !1369
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1370
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1357
  br i1 %984, label %1036, label %1021, !dbg !1357

; <label>:1010:                                   ; preds = %1041, %1039
  %1011 = phi i8 [ %1040, %1039 ], [ 1, %1041 ]
  %1012 = sext i8 %1011 to i64, !dbg !1371
  %1013 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 %1012, i32 0, i32 0, i32 0, i64 0, !dbg !1371
  store i32 %797, i32* %1013, align 8, !dbg !1371, !tbaa !530
  %1014 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 %1012, i32 0, i32 0, i32 0, i64 1, !dbg !1371
  store i32 %800, i32* %1014, align 4, !dbg !1371, !tbaa !530
  %1015 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 %1012, i32 0, i32 0, i32 0, i64 2, !dbg !1371
  store i32 %990, i32* %1015, align 8, !dbg !1371, !tbaa !530
  %1016 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 %1012, i32 0, i32 0, i32 0, i64 3, !dbg !1371
  store i32 %991, i32* %1016, align 4, !dbg !1371, !tbaa !530
  %1017 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 %1012, i32 0, i32 0, i32 1, !dbg !1371
  store i8 0, i8* %1017, align 8, !dbg !1371, !tbaa !530
  %1018 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 %1012, i32 1, !dbg !1374
  store i8 6, i8* %1018, align 4, !dbg !1374, !tbaa !1376
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1377
  %1019 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 6, i64 %1012, !dbg !1379
  store i32 %936, i32* %1019, align 4, !dbg !1379, !tbaa !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1379
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1382
  %1020 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 7, i64 %1012, !dbg !1384
  store i32 %940, i32* %1020, align 4, !dbg !1384, !tbaa !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1384
  tail call void @netif_ip6_addr_set_state(%struct.netif* nonnull %1, i8 signext %1011, i8 zeroext 8) #7, !dbg !1387
  br label %1061, !dbg !1388

; <label>:1021:                                   ; preds = %1008
  %1022 = load i32, i32* %704, align 8, !dbg !1360, !tbaa !530
  %1023 = icmp eq i32 %797, %1022, !dbg !1360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1360
  br i1 %1023, label %1024, label %1041, !dbg !1360

; <label>:1024:                                   ; preds = %1021
  %1025 = load i32, i32* %706, align 4, !dbg !1360, !tbaa !530
  %1026 = icmp eq i32 %800, %1025, !dbg !1360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1360
  br i1 %1026, label %1027, label %1041, !dbg !1360

; <label>:1027:                                   ; preds = %1024
  %1028 = load i32, i32* %712, align 8, !dbg !1360, !tbaa !530
  %1029 = icmp eq i32 %990, %1028, !dbg !1360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1360
  br i1 %1029, label %1030, label %1041, !dbg !1360

; <label>:1030:                                   ; preds = %1027
  %1031 = load i32, i32* %714, align 4, !dbg !1360, !tbaa !530
  %1032 = icmp eq i32 %991, %1031, !dbg !1360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1360
  br i1 %1032, label %1033, label %1041, !dbg !1360

; <label>:1033:                                   ; preds = %1030
  %1034 = load i8, i8* %710, align 8, !dbg !1360, !tbaa !530
  %1035 = icmp eq i8 %1034, 0, !dbg !1360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1364
  br i1 %1035, label %1061, label %1041, !dbg !1364

; <label>:1036:                                   ; preds = %1008
  %1037 = icmp eq i8 %1009, 0, !dbg !1389
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1365
  br i1 %1037, label %1038, label %1039, !dbg !1365

; <label>:1038:                                   ; preds = %1036
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1366
  br label %1039, !dbg !1366

; <label>:1039:                                   ; preds = %1038, %1036
  %1040 = phi i8 [ 1, %1036 ], [ 2, %1038 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1370
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1390
  br label %1010, !dbg !1390

; <label>:1041:                                   ; preds = %1033, %1030, %1027, %1024, %1021
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1370
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1356
  %1042 = icmp eq i8 %1009, 0, !dbg !1391
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1390
  br i1 %1042, label %1061, label %1010, !dbg !1390

; <label>:1043:                                   ; preds = %982
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1305
  %1044 = load i32, i32* %702, align 4, !dbg !1305, !tbaa !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1305
  %1045 = icmp eq i32 %1044, 0, !dbg !1305
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1306
  br i1 %1045, label %1055, label %1046, !dbg !1306

; <label>:1046:                                   ; preds = %1043
  %1047 = load i32, i32* %704, align 8, !dbg !1307, !tbaa !530
  %1048 = icmp eq i32 %797, %1047, !dbg !1307
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1307
  br i1 %1048, label %1049, label %1055, !dbg !1307

; <label>:1049:                                   ; preds = %1046
  %1050 = load i32, i32* %706, align 4, !dbg !1307, !tbaa !530
  %1051 = icmp eq i32 %800, %1050, !dbg !1307
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1307
  br i1 %1051, label %1052, label %1055, !dbg !1307

; <label>:1052:                                   ; preds = %1049
  %1053 = load i8, i8* %710, align 8, !dbg !1307, !tbaa !530
  %1054 = icmp eq i8 %1053, 0, !dbg !1307
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1308
  br i1 %1054, label %961, label %1055, !dbg !1308

; <label>:1055:                                   ; preds = %1052, %1049, %1046, %1043, %982
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1343
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1300
  %1056 = load i8, i8* %700, align 8, !dbg !1393, !tbaa !530
  %1057 = load i8, i8* %701, align 1, !dbg !1394, !tbaa !1395
  %1058 = icmp eq i8 %1057, 0, !dbg !1396
  %1059 = icmp eq i32 %936, 0, !dbg !1397
  %1060 = or i1 %1059, %1058, !dbg !1398
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1398
  br i1 %1060, label %1061, label %985, !dbg !1398

; <label>:1061:                                   ; preds = %1041, %1004, %1033, %985, %987, %1055, %932, %942, %980, %1010
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1388
  br label %1062, !dbg !1399

; <label>:1062:                                   ; preds = %794, %1061
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1172
  br label %1063, !dbg !1400

; <label>:1063:                                   ; preds = %1062, %928
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1400
  br label %1068

; <label>:1064:                                   ; preds = %792
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1401
  br label %1351

; <label>:1065:                                   ; preds = %745
  %1066 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 8), align 2, !dbg !1403, !tbaa !573
  %1067 = add i16 %1066, 1, !dbg !1403
  store i16 %1067, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 8), align 2, !dbg !1403, !tbaa !573
  br label %1068, !dbg !1404

; <label>:1068:                                   ; preds = %1063, %790, %768, %1065
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %1069, !dbg !1405

; <label>:1069:                                   ; preds = %1068, %745
  %1070 = add i16 %724, %717, !dbg !1405
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1406
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %1071 = load i16, i16* %689, align 8, !dbg !1073, !tbaa !1074
  %1072 = zext i16 %1071 to i32, !dbg !1407
  %1073 = zext i16 %1070 to i32, !dbg !1408
  %1074 = sub nsw i32 %1072, %1073, !dbg !1409
  %1075 = icmp sgt i32 %1074, 1, !dbg !1075
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1072
  br i1 %1075, label %715, label %1076, !dbg !1072

; <label>:1076:                                   ; preds = %1069, %685
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1410
  br label %1349

; <label>:1077:                                   ; preds = %460, %477, %661
  %1078 = phi i16* [ getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), %460 ], [ getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), %477 ], [ getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 6), %661 ]
  %1079 = load i16, i16* %1078, align 2, !dbg !1411, !tbaa !1412
  %1080 = add i16 %1079, 1, !dbg !1411
  store i16 %1080, i16* %1078, align 2, !dbg !1411, !tbaa !1412
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1411
  br label %1358

; <label>:1081:                                   ; preds = %2
  %1082 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 3, !dbg !1413
  %1083 = load i16, i16* %1082, align 2, !dbg !1413, !tbaa !535
  %1084 = icmp ult i16 %1083, 40, !dbg !1415
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1416
  br i1 %1084, label %1085, label %1091, !dbg !1416

; <label>:1085:                                   ; preds = %1081
  %1086 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !1417
  %1087 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 5), align 2, !dbg !1419, !tbaa !541
  %1088 = add i16 %1087, 1, !dbg !1419
  store i16 %1088, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 5), align 2, !dbg !1419, !tbaa !541
  %1089 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !1420, !tbaa !543
  %1090 = add i16 %1089, 1, !dbg !1420
  store i16 %1090, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !1420, !tbaa !543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1421
  br label %1358

; <label>:1091:                                   ; preds = %1081
  %1092 = getelementptr inbounds i8, i8* %7, i64 24, !dbg !1423
  %1093 = bitcast i8* %1092 to i32*, !dbg !1423
  %1094 = load i32, i32* %1093, align 1, !dbg !1423, !tbaa !548
  %1095 = getelementptr inbounds i8, i8* %7, i64 28, !dbg !1423
  %1096 = bitcast i8* %1095 to i32*, !dbg !1423
  %1097 = load i32, i32* %1096, align 1, !dbg !1423, !tbaa !548
  %1098 = getelementptr inbounds i8, i8* %7, i64 32, !dbg !1423
  %1099 = bitcast i8* %1098 to i32*, !dbg !1423
  %1100 = load i32, i32* %1099, align 1, !dbg !1423, !tbaa !548
  %1101 = getelementptr inbounds i8, i8* %7, i64 36, !dbg !1423
  %1102 = bitcast i8* %1101 to i32*, !dbg !1423
  %1103 = load i32, i32* %1102, align 1, !dbg !1423, !tbaa !548
  %1104 = and i32 %1094, 49407, !dbg !1425
  %1105 = icmp eq i32 %1104, 33022, !dbg !1425
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1425
  br i1 %1105, label %1106, label %1110, !dbg !1425

; <label>:1106:                                   ; preds = %1091
  %1107 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 23, !dbg !1425
  %1108 = load i8, i8* %1107, align 8, !dbg !1425, !tbaa !551
  %1109 = add i8 %1108, 1, !dbg !1425
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1425
  br label %1110, !dbg !1425

; <label>:1110:                                   ; preds = %1091, %1106
  %1111 = phi i8 [ %1109, %1106 ], [ 0, %1091 ]
  %1112 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !1426, !tbaa !530
  %1113 = and i32 %1112, 49407, !dbg !1426
  %1114 = icmp eq i32 %1113, 33022, !dbg !1426
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1428
  br i1 %1114, label %1115, label %1127, !dbg !1428

; <label>:1115:                                   ; preds = %1110
  %1116 = load %struct.ip6_hdr*, %struct.ip6_hdr** getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 3), align 8, !dbg !1429, !tbaa !556
  %1117 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %1116, i64 0, i32 3, !dbg !1429
  %1118 = load i8, i8* %1117, align 1, !dbg !1429, !tbaa !558
  %1119 = icmp eq i8 %1118, -1, !dbg !1430
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1431
  br i1 %1119, label %1120, label %1127, !dbg !1431

; <label>:1120:                                   ; preds = %1115
  %1121 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1432
  %1122 = load i8, i8* %1121, align 1, !dbg !1432, !tbaa !1433
  %1123 = icmp eq i8 %1122, 0, !dbg !1435
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1436
  br i1 %1123, label %1124, label %1127, !dbg !1436

; <label>:1124:                                   ; preds = %1120
  %1125 = and i32 %1094, 255, !dbg !1437
  %1126 = icmp eq i32 %1125, 255, !dbg !1437
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1438
  br i1 %1126, label %1127, label %1133, !dbg !1438

; <label>:1127:                                   ; preds = %1120, %1115, %1124, %1110
  %1128 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !1439
  %1129 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 8), align 2, !dbg !1441, !tbaa !573
  %1130 = add i16 %1129, 1, !dbg !1441
  store i16 %1130, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 8), align 2, !dbg !1441, !tbaa !573
  %1131 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !1442, !tbaa !543
  %1132 = add i16 %1131, 1, !dbg !1442
  store i16 %1132, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !1442, !tbaa !543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1443
  br label %1358

; <label>:1133:                                   ; preds = %1124
  %1134 = icmp ugt i16 %1083, 41, !dbg !1444
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1446
  br i1 %1134, label %1135, label %1145, !dbg !1446

; <label>:1135:                                   ; preds = %1133
  %1136 = zext i16 %1083 to i64, !dbg !1447
  %1137 = getelementptr inbounds i8, i8* %7, i64 40, !dbg !1448
  %1138 = bitcast i8* %1137 to %struct.lladdr_option*, !dbg !1450
  %1139 = getelementptr inbounds i8, i8* %7, i64 41, !dbg !1452
  %1140 = load i8, i8* %1139, align 1, !dbg !1452, !tbaa !609
  %1141 = zext i8 %1140 to i64, !dbg !1454
  %1142 = shl nuw nsw i64 %1141, 3, !dbg !1455
  %1143 = add nuw nsw i64 %1142, 40, !dbg !1456
  %1144 = icmp ugt i64 %1143, %1136, !dbg !1457
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1458
  br i1 %1144, label %1145, label %1146, !dbg !1458

; <label>:1145:                                   ; preds = %1133, %1135
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %1146, !dbg !1459

; <label>:1146:                                   ; preds = %1145, %1135
  %1147 = phi %struct.lladdr_option* [ %1138, %1135 ], [ null, %1145 ], !dbg !1468
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1459
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1473
  br label %1148, !dbg !1473

; <label>:1148:                                   ; preds = %1169, %1146
  %1149 = phi i64 [ 0, %1146 ], [ %1170, %1169 ]
  %1150 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %1149, i32 0, i32 0, i64 0, !dbg !1474
  %1151 = load i32, i32* %1150, align 16, !dbg !1474, !tbaa !548
  %1152 = icmp eq i32 %1094, %1151, !dbg !1474
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1474
  br i1 %1152, label %1153, label %1169, !dbg !1474

; <label>:1153:                                   ; preds = %1148
  %1154 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %1149, i32 0, i32 0, i64 1, !dbg !1474
  %1155 = load i32, i32* %1154, align 4, !dbg !1474, !tbaa !548
  %1156 = icmp eq i32 %1097, %1155, !dbg !1474
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1474
  br i1 %1156, label %1157, label %1169, !dbg !1474

; <label>:1157:                                   ; preds = %1153
  %1158 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %1149, i32 0, i32 0, i64 2, !dbg !1474
  %1159 = load i32, i32* %1158, align 8, !dbg !1474, !tbaa !548
  %1160 = icmp eq i32 %1100, %1159, !dbg !1474
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1474
  br i1 %1160, label %1161, label %1169, !dbg !1474

; <label>:1161:                                   ; preds = %1157
  %1162 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %1149, i32 0, i32 0, i64 3, !dbg !1474
  %1163 = load i32, i32* %1162, align 4, !dbg !1474, !tbaa !548
  %1164 = icmp eq i32 %1103, %1163, !dbg !1474
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1474
  br i1 %1164, label %1165, label %1169, !dbg !1474

; <label>:1165:                                   ; preds = %1161
  %1166 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %1149, i32 0, i32 1, !dbg !1474
  %1167 = load i8, i8* %1166, align 16, !dbg !1474, !tbaa !1478
  %1168 = icmp eq i8 %1111, %1167, !dbg !1474
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1480
  br i1 %1168, label %1173, label %1169, !dbg !1480

; <label>:1169:                                   ; preds = %1165, %1161, %1157, %1153, %1148
  %1170 = add nuw nsw i64 %1149, 1, !dbg !1481
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1482
  %1171 = icmp ult i64 %1170, 10, !dbg !1483
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1473
  br i1 %1171, label %1148, label %1172, !dbg !1473, !llvm.loop !1484

; <label>:1172:                                   ; preds = %1169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1487
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1488
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1490
  br label %1176, !dbg !1490

; <label>:1173:                                   ; preds = %1165
  %1174 = trunc i64 %1149 to i16, !dbg !1472
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1491
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1488
  %1175 = icmp slt i16 %1174, 0, !dbg !1493
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1490
  br i1 %1175, label %1176, label %1178, !dbg !1490

; <label>:1176:                                   ; preds = %1172, %1173
  %1177 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %0) #7, !dbg !1495
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1497
  br label %1358

; <label>:1178:                                   ; preds = %1173
  %1179 = getelementptr inbounds i8, i8* %7, i64 8, !dbg !1498
  %1180 = bitcast i8* %1179 to <4 x i32>*, !dbg !1498
  %1181 = load <4 x i32>, <4 x i32>* %1180, align 1, !dbg !1498, !tbaa !548
  %1182 = extractelement <4 x i32> %1181, i32 0, !dbg !1500
  %1183 = and i32 %1182, 49407, !dbg !1500
  %1184 = icmp eq i32 %1183, 33022, !dbg !1500
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1500
  br i1 %1184, label %1185, label %1189, !dbg !1500

; <label>:1185:                                   ; preds = %1178
  %1186 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 23, !dbg !1500
  %1187 = load i8, i8* %1186, align 8, !dbg !1500, !tbaa !551
  %1188 = add i8 %1187, 1, !dbg !1500
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1500
  br label %1189, !dbg !1500

; <label>:1189:                                   ; preds = %1178, %1185
  %1190 = phi i8 [ %1188, %1185 ], [ 0, %1178 ]
  %1191 = shl i64 %1149, 48, !dbg !1501
  %1192 = ashr exact i64 %1191, 48, !dbg !1501
  %1193 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %1192, i32 1, i32 0, i64 0, !dbg !1501
  %1194 = bitcast i32* %1193 to <4 x i32>*, !dbg !1501
  store <4 x i32> %1181, <4 x i32>* %1194, align 4, !dbg !1501, !tbaa !548
  %1195 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %1192, i32 1, i32 1, !dbg !1501
  store i8 %1190, i8* %1195, align 4, !dbg !1501, !tbaa !1503
  %1196 = icmp eq %struct.lladdr_option* %1147, null, !dbg !1504
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1506
  br i1 %1196, label %1265, label %1197, !dbg !1506

; <label>:1197:                                   ; preds = %1189
  %1198 = getelementptr inbounds %struct.lladdr_option, %struct.lladdr_option* %1147, i64 0, i32 0, !dbg !1507
  %1199 = load i8, i8* %1198, align 1, !dbg !1507, !tbaa !1510
  %1200 = icmp eq i8 %1199, 2, !dbg !1511
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1512
  br i1 %1200, label %1201, label %1265, !dbg !1512

; <label>:1201:                                   ; preds = %1197
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1518
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1519
  %1202 = extractelement <4 x i32> %1181, i32 1
  %1203 = extractelement <4 x i32> %1181, i32 2
  %1204 = extractelement <4 x i32> %1181, i32 3
  br label %1205, !dbg !1519

; <label>:1205:                                   ; preds = %1226, %1201
  %1206 = phi i64 [ 0, %1201 ], [ %1227, %1226 ]
  %1207 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %1206, i32 0, i32 0, i64 0, !dbg !1520
  %1208 = load i32, i32* %1207, align 8, !dbg !1520, !tbaa !548
  %1209 = icmp eq i32 %1182, %1208, !dbg !1520
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1520
  br i1 %1209, label %1210, label %1226, !dbg !1520

; <label>:1210:                                   ; preds = %1205
  %1211 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %1206, i32 0, i32 0, i64 1, !dbg !1520
  %1212 = load i32, i32* %1211, align 4, !dbg !1520, !tbaa !548
  %1213 = icmp eq i32 %1202, %1212, !dbg !1520
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1520
  br i1 %1213, label %1214, label %1226, !dbg !1520

; <label>:1214:                                   ; preds = %1210
  %1215 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %1206, i32 0, i32 0, i64 2, !dbg !1520
  %1216 = load i32, i32* %1215, align 8, !dbg !1520, !tbaa !548
  %1217 = icmp eq i32 %1203, %1216, !dbg !1520
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1520
  br i1 %1217, label %1218, label %1226, !dbg !1520

; <label>:1218:                                   ; preds = %1214
  %1219 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %1206, i32 0, i32 0, i64 3, !dbg !1520
  %1220 = load i32, i32* %1219, align 4, !dbg !1520, !tbaa !548
  %1221 = icmp eq i32 %1204, %1220, !dbg !1520
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1520
  br i1 %1221, label %1222, label %1226, !dbg !1520

; <label>:1222:                                   ; preds = %1218
  %1223 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %1206, i32 0, i32 1, !dbg !1520
  %1224 = load i8, i8* %1223, align 8, !dbg !1520, !tbaa !638
  %1225 = icmp eq i8 %1190, %1224, !dbg !1520
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1521
  br i1 %1225, label %1230, label %1226, !dbg !1521

; <label>:1226:                                   ; preds = %1222, %1218, %1214, %1210, %1205
  %1227 = add nuw nsw i64 %1206, 1, !dbg !1522
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1523
  %1228 = icmp ult i64 %1227, 10, !dbg !1524
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1519
  br i1 %1228, label %1205, label %1229, !dbg !1519, !llvm.loop !645

; <label>:1229:                                   ; preds = %1226
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1525
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1526
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1527
  br label %1233, !dbg !1527

; <label>:1230:                                   ; preds = %1222
  %1231 = trunc i64 %1206 to i8, !dbg !1517
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1528
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1526
  %1232 = icmp slt i8 %1231, 0, !dbg !1529
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1527
  br i1 %1232, label %1233, label %1251, !dbg !1527

; <label>:1233:                                   ; preds = %1229, %1230
  %1234 = tail call fastcc signext i8 @nd6_new_neighbor_cache_entry() #8, !dbg !1531
  %1235 = icmp sgt i8 %1234, -1, !dbg !1533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1535
  br i1 %1235, label %1236, label %1250, !dbg !1535

; <label>:1236:                                   ; preds = %1233
  %1237 = sext i8 %1234 to i64, !dbg !1536
  %1238 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %1237, i32 1, !dbg !1538
  store %struct.netif* %1, %struct.netif** %1238, align 8, !dbg !1539, !tbaa !718
  %1239 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %1237, i32 2, i64 0, !dbg !1540
  %1240 = getelementptr inbounds %struct.lladdr_option, %struct.lladdr_option* %1147, i64 0, i32 2, i64 0, !dbg !1540
  %1241 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 20, !dbg !1540
  %1242 = load i8, i8* %1241, align 4, !dbg !1540, !tbaa !662
  %1243 = zext i8 %1242 to i64, !dbg !1540
  %1244 = tail call i8* @memcpy(i8* nonnull %1239, i8* nonnull %1240, i64 %1243) #7, !dbg !1540
  %1245 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %1237, i32 0, i32 0, i64 0, !dbg !1541
  %1246 = bitcast i32* %1245 to <4 x i32>*, !dbg !1541
  store <4 x i32> %1181, <4 x i32>* %1246, align 8, !dbg !1541, !tbaa !548
  %1247 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %1237, i32 0, i32 1, !dbg !1541
  store i8 %1190, i8* %1247, align 8, !dbg !1541, !tbaa !638
  %1248 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %1237, i32 4, !dbg !1543
  store i8 4, i8* %1248, align 8, !dbg !1544, !tbaa !687
  %1249 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %1237, i32 6, i32 0, !dbg !1545
  store i32 5, i32* %1249, align 4, !dbg !1546, !tbaa !530
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1547
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1549
  br label %1265, !dbg !1549

; <label>:1250:                                   ; preds = %1233
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1548
  br label %1265

; <label>:1251:                                   ; preds = %1230
  %1252 = shl i64 %1206, 56
  %1253 = ashr exact i64 %1252, 56
  %1254 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %1253, i32 4
  %1255 = load i8, i8* %1254, align 8, !dbg !1552, !tbaa !687
  %1256 = icmp eq i8 %1255, 1, !dbg !1527
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1549
  br i1 %1256, label %1257, label %1265, !dbg !1549

; <label>:1257:                                   ; preds = %1251
  %1258 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %1253, i32 2, i64 0, !dbg !1554
  %1259 = getelementptr inbounds %struct.lladdr_option, %struct.lladdr_option* %1147, i64 0, i32 2, i64 0, !dbg !1554
  %1260 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 20, !dbg !1554
  %1261 = load i8, i8* %1260, align 4, !dbg !1554, !tbaa !662
  %1262 = zext i8 %1261 to i64, !dbg !1554
  %1263 = tail call i8* @memcpy(i8* nonnull %1258, i8* nonnull %1259, i64 %1262) #7, !dbg !1554
  store i8 4, i8* %1254, align 8, !dbg !1556, !tbaa !687
  %1264 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %1253, i32 6, i32 0, !dbg !1557
  store i32 5, i32* %1264, align 4, !dbg !1558, !tbaa !530
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1559
  br label %1265, !dbg !1559

; <label>:1265:                                   ; preds = %1236, %1250, %1189, %1197, %1251, %1257
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1560
  br label %1349

; <label>:1266:                                   ; preds = %2
  %1267 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 3, !dbg !1561
  %1268 = load i16, i16* %1267, align 2, !dbg !1561, !tbaa !535
  %1269 = icmp ult i16 %1268, 48, !dbg !1563
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1564
  br i1 %1269, label %1270, label %1276, !dbg !1564

; <label>:1270:                                   ; preds = %1266
  %1271 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !1565
  %1272 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 5), align 2, !dbg !1567, !tbaa !541
  %1273 = add i16 %1272, 1, !dbg !1567
  store i16 %1273, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 5), align 2, !dbg !1567, !tbaa !541
  %1274 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !1568, !tbaa !543
  %1275 = add i16 %1274, 1, !dbg !1568
  store i16 %1275, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !1568, !tbaa !543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1569
  br label %1358

; <label>:1276:                                   ; preds = %1266
  %1277 = getelementptr inbounds i8, i8* %7, i64 32, !dbg !1572
  %1278 = bitcast i8* %1277 to i32*, !dbg !1572
  %1279 = load i32, i32* %1278, align 1, !dbg !1572, !tbaa !548
  %1280 = getelementptr inbounds i8, i8* %7, i64 36, !dbg !1572
  %1281 = bitcast i8* %1280 to i32*, !dbg !1572
  %1282 = load i32, i32* %1281, align 1, !dbg !1572, !tbaa !548
  %1283 = getelementptr inbounds i8, i8* %7, i64 40, !dbg !1572
  %1284 = bitcast i8* %1283 to i32*, !dbg !1572
  %1285 = load i32, i32* %1284, align 1, !dbg !1572, !tbaa !548
  %1286 = getelementptr inbounds i8, i8* %7, i64 44, !dbg !1572
  %1287 = bitcast i8* %1286 to i32*, !dbg !1572
  %1288 = load i32, i32* %1287, align 1, !dbg !1572, !tbaa !548
  %1289 = zext i32 %1279 to i64, !dbg !1574
  %1290 = and i64 %1289, 49407, !dbg !1574
  %1291 = icmp eq i64 %1290, 33022, !dbg !1574
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1574
  br i1 %1291, label %1297, label %1292, !dbg !1574

; <label>:1292:                                   ; preds = %1276
  %1293 = and i64 %1289, 36863, !dbg !1574
  %1294 = icmp eq i64 %1293, 511, !dbg !1574
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1574
  br i1 %1294, label %1297, label %1295, !dbg !1574

; <label>:1295:                                   ; preds = %1292
  %1296 = icmp eq i64 %1293, 767, !dbg !1574
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1574
  br i1 %1296, label %1297, label %1301, !dbg !1574

; <label>:1297:                                   ; preds = %1295, %1292, %1276
  %1298 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 23, !dbg !1574
  %1299 = load i8, i8* %1298, align 8, !dbg !1574, !tbaa !551
  %1300 = add i8 %1299, 1, !dbg !1574
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1574
  br label %1301, !dbg !1574

; <label>:1301:                                   ; preds = %1295, %1297
  %1302 = phi i8 [ %1300, %1297 ], [ 0, %1295 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1579
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1580
  br label %1303, !dbg !1580

; <label>:1303:                                   ; preds = %1324, %1301
  %1304 = phi i64 [ 0, %1301 ], [ %1325, %1324 ]
  %1305 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %1304, i32 0, i32 0, i64 0, !dbg !1581
  %1306 = load i32, i32* %1305, align 16, !dbg !1581, !tbaa !548
  %1307 = icmp eq i32 %1279, %1306, !dbg !1581
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1581
  br i1 %1307, label %1308, label %1324, !dbg !1581

; <label>:1308:                                   ; preds = %1303
  %1309 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %1304, i32 0, i32 0, i64 1, !dbg !1581
  %1310 = load i32, i32* %1309, align 4, !dbg !1581, !tbaa !548
  %1311 = icmp eq i32 %1282, %1310, !dbg !1581
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1581
  br i1 %1311, label %1312, label %1324, !dbg !1581

; <label>:1312:                                   ; preds = %1308
  %1313 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %1304, i32 0, i32 0, i64 2, !dbg !1581
  %1314 = load i32, i32* %1313, align 8, !dbg !1581, !tbaa !548
  %1315 = icmp eq i32 %1285, %1314, !dbg !1581
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1581
  br i1 %1315, label %1316, label %1324, !dbg !1581

; <label>:1316:                                   ; preds = %1312
  %1317 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %1304, i32 0, i32 0, i64 3, !dbg !1581
  %1318 = load i32, i32* %1317, align 4, !dbg !1581, !tbaa !548
  %1319 = icmp eq i32 %1288, %1318, !dbg !1581
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1581
  br i1 %1319, label %1320, label %1324, !dbg !1581

; <label>:1320:                                   ; preds = %1316
  %1321 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %1304, i32 0, i32 1, !dbg !1581
  %1322 = load i8, i8* %1321, align 16, !dbg !1581, !tbaa !1478
  %1323 = icmp eq i8 %1302, %1322, !dbg !1581
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1582
  br i1 %1323, label %1328, label %1324, !dbg !1582

; <label>:1324:                                   ; preds = %1320, %1316, %1312, %1308, %1303
  %1325 = add nuw nsw i64 %1304, 1, !dbg !1583
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1584
  %1326 = icmp ult i64 %1325, 10, !dbg !1585
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1580
  br i1 %1326, label %1303, label %1327, !dbg !1580, !llvm.loop !1484

; <label>:1327:                                   ; preds = %1324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1586
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1587
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1588
  br label %1331, !dbg !1588

; <label>:1328:                                   ; preds = %1320
  %1329 = trunc i64 %1304 to i16, !dbg !1578
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1589
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1587
  %1330 = icmp slt i16 %1329, 0, !dbg !1590
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1588
  br i1 %1330, label %1331, label %1333, !dbg !1588

; <label>:1331:                                   ; preds = %1327, %1328
  %1332 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %0) #7, !dbg !1592
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1594
  br label %1358

; <label>:1333:                                   ; preds = %1328
  %1334 = getelementptr inbounds i8, i8* %7, i64 4, !dbg !1595
  %1335 = bitcast i8* %1334 to i32*, !dbg !1595
  %1336 = load i32, i32* %1335, align 1, !dbg !1595, !tbaa !1596
  %1337 = tail call i32 @lwip_htonl(i32 %1336) #7, !dbg !1598
  %1338 = icmp ult i32 %1337, 65535, !dbg !1600
  %1339 = select i1 %1338, i32 %1337, i32 65535, !dbg !1600
  %1340 = trunc i32 %1339 to i16, !dbg !1601
  %1341 = shl i64 %1304, 48, !dbg !1602
  %1342 = ashr exact i64 %1341, 48, !dbg !1602
  %1343 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %1342, i32 2, !dbg !1603
  store i16 %1340, i16* %1343, align 8, !dbg !1604, !tbaa !1605
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1606
  br label %1349

; <label>:1344:                                   ; preds = %2
  %1345 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 8), align 2, !dbg !1607, !tbaa !573
  %1346 = add i16 %1345, 1, !dbg !1607
  store i16 %1346, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 8), align 2, !dbg !1607, !tbaa !573
  %1347 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !1608, !tbaa !543
  %1348 = add i16 %1347, 1, !dbg !1608
  store i16 %1348, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !1608, !tbaa !543
  br label %1349, !dbg !1609

; <label>:1349:                                   ; preds = %1076, %1333, %1265, %454, %237, %1344
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %1350 = call zeroext i8 @pbuf_free(%struct.pbuf* %0) #7, !dbg !1610
  br label %1358, !dbg !1611

; <label>:1351:                                   ; preds = %721, %715, %1064, %791, %769
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %1352

; <label>:1352:                                   ; preds = %739, %1351
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %1353 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 5), align 2, !dbg !1612, !tbaa !541
  %1354 = add i16 %1353, 1, !dbg !1612
  store i16 %1354, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 5), align 2, !dbg !1612, !tbaa !541
  %1355 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !1613, !tbaa !543
  %1356 = add i16 %1355, 1, !dbg !1613
  store i16 %1356, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !1613, !tbaa !543
  %1357 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %0) #7, !dbg !1614
  br label %1358, !dbg !1615

; <label>:1358:                                   ; preds = %1077, %1331, %1270, %1176, %1127, %1085, %455, %276, %244, %238, %108, %94, %87, %51, %13, %1352, %1349
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1615
  ret void, !dbg !1615

; <label>:1359:                                   ; preds = %90
  %1360 = icmp eq i8 %92, 64, !dbg !589
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !590
  br i1 %1360, label %1381, label %1361, !dbg !590

; <label>:1361:                                   ; preds = %1359
  %1362 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 0, !dbg !591
  %1363 = load i32, i32* %1362, align 8, !dbg !591, !tbaa !530
  %1364 = icmp eq i32 %22, %1363, !dbg !591
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !591
  br i1 %1364, label %1365, label %1381, !dbg !591

; <label>:1365:                                   ; preds = %1361
  %1366 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 1, !dbg !591
  %1367 = load i32, i32* %1366, align 4, !dbg !591, !tbaa !530
  %1368 = icmp eq i32 %25, %1367, !dbg !591
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !591
  br i1 %1368, label %1369, label %1381, !dbg !591

; <label>:1369:                                   ; preds = %1365
  %1370 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 2, !dbg !591
  %1371 = load i32, i32* %1370, align 8, !dbg !591, !tbaa !530
  %1372 = icmp eq i32 %28, %1371, !dbg !591
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !591
  br i1 %1372, label %1373, label %1381, !dbg !591

; <label>:1373:                                   ; preds = %1369
  %1374 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 3, !dbg !591
  %1375 = load i32, i32* %1374, align 4, !dbg !591, !tbaa !530
  %1376 = icmp eq i32 %31, %1375, !dbg !591
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !591
  br i1 %1376, label %1377, label %1381, !dbg !591

; <label>:1377:                                   ; preds = %1373
  %1378 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 1, i32 0, i32 0, i32 1, !dbg !591
  %1379 = load i8, i8* %1378, align 8, !dbg !591, !tbaa !530
  %1380 = icmp eq i8 %39, %1379, !dbg !591
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !592
  br i1 %1380, label %87, label %1381, !dbg !592

; <label>:1381:                                   ; preds = %1377, %1373, %1369, %1365, %1361, %1359, %90
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !597
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !598
  %1382 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 5, i64 2, !dbg !582
  %1383 = load i8, i8* %1382, align 1, !dbg !582, !tbaa !530
  %1384 = icmp eq i8 %1383, 0, !dbg !582
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !588
  br i1 %1384, label %1407, label %1385, !dbg !588

; <label>:1385:                                   ; preds = %1381
  %1386 = icmp eq i8 %1383, 64, !dbg !589
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !590
  br i1 %1386, label %1407, label %1387, !dbg !590

; <label>:1387:                                   ; preds = %1385
  %1388 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 0, !dbg !591
  %1389 = load i32, i32* %1388, align 8, !dbg !591, !tbaa !530
  %1390 = icmp eq i32 %22, %1389, !dbg !591
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !591
  br i1 %1390, label %1391, label %1407, !dbg !591

; <label>:1391:                                   ; preds = %1387
  %1392 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 1, !dbg !591
  %1393 = load i32, i32* %1392, align 4, !dbg !591, !tbaa !530
  %1394 = icmp eq i32 %25, %1393, !dbg !591
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !591
  br i1 %1394, label %1395, label %1407, !dbg !591

; <label>:1395:                                   ; preds = %1391
  %1396 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 2, !dbg !591
  %1397 = load i32, i32* %1396, align 8, !dbg !591, !tbaa !530
  %1398 = icmp eq i32 %28, %1397, !dbg !591
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !591
  br i1 %1398, label %1399, label %1407, !dbg !591

; <label>:1399:                                   ; preds = %1395
  %1400 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 3, !dbg !591
  %1401 = load i32, i32* %1400, align 4, !dbg !591, !tbaa !530
  %1402 = icmp eq i32 %31, %1401, !dbg !591
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !591
  br i1 %1402, label %1403, label %1407, !dbg !591

; <label>:1403:                                   ; preds = %1399
  %1404 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 2, i32 0, i32 0, i32 1, !dbg !591
  %1405 = load i8, i8* %1404, align 8, !dbg !591, !tbaa !530
  %1406 = icmp eq i8 %39, %1405, !dbg !591
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !592
  br i1 %1406, label %87, label %1407, !dbg !592

; <label>:1407:                                   ; preds = %1403, %1399, %1395, %1391, %1387, %1385, %1381
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !597
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !598
  %1408 = icmp ult i16 %11, 26, !dbg !1616
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1617
  br i1 %1408, label %94, label %100, !dbg !1617

; <label>:1409:                                   ; preds = %375
  %1410 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 1, i32 0, i32 0, !dbg !810
  %1411 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1410, i64 0, i32 0, i64 0, !dbg !810
  %1412 = load i32, i32* %1411, align 8, !dbg !810, !tbaa !530
  %1413 = icmp eq i32 %256, %1412, !dbg !810
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !810
  br i1 %1413, label %1414, label %1438, !dbg !810

; <label>:1414:                                   ; preds = %1409
  %1415 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 1, !dbg !810
  %1416 = load i32, i32* %1415, align 4, !dbg !810, !tbaa !530
  %1417 = extractelement <4 x i32> %253, i32 1, !dbg !810
  %1418 = icmp eq i32 %1417, %1416, !dbg !810
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !810
  br i1 %1418, label %1419, label %1438, !dbg !810

; <label>:1419:                                   ; preds = %1414
  %1420 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 2, !dbg !810
  %1421 = load i32, i32* %1420, align 8, !dbg !810, !tbaa !530
  %1422 = extractelement <4 x i32> %253, i32 2, !dbg !810
  %1423 = icmp eq i32 %1422, %1421, !dbg !810
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !810
  br i1 %1423, label %1424, label %1438, !dbg !810

; <label>:1424:                                   ; preds = %1419
  %1425 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 3, !dbg !810
  %1426 = load i32, i32* %1425, align 4, !dbg !810, !tbaa !530
  %1427 = extractelement <4 x i32> %253, i32 3, !dbg !810
  %1428 = icmp eq i32 %1427, %1426, !dbg !810
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !810
  br i1 %1428, label %1429, label %1438, !dbg !810

; <label>:1429:                                   ; preds = %1424
  %1430 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 1, i32 0, i32 0, i32 1, !dbg !810
  %1431 = load i8, i8* %1430, align 8, !dbg !810, !tbaa !530
  %1432 = icmp eq i8 %264, %1431, !dbg !810
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !811
  br i1 %1432, label %1433, label %1438, !dbg !811

; <label>:1433:                                   ; preds = %1429
  tail call fastcc void @nd6_send_na(%struct.netif* nonnull %1, %struct.ip6_addr* nonnull %1410, i8 zeroext 34) #8, !dbg !812
  %1434 = load i8, i8* %376, align 1, !dbg !814, !tbaa !530
  %1435 = and i8 %1434, 8, !dbg !814
  %1436 = icmp eq i8 %1435, 0, !dbg !814
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !816
  br i1 %1436, label %1438, label %1437, !dbg !816

; <label>:1437:                                   ; preds = %1433
  tail call fastcc void @nd6_duplicate_addr_detected(%struct.netif* nonnull %1, i8 signext 1) #8, !dbg !817
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !819
  br label %1438, !dbg !819

; <label>:1438:                                   ; preds = %1437, %1433, %1429, %1424, %1419, %1414, %1409, %375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !820
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !804
  %1439 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 5, i64 2, !dbg !805
  %1440 = load i8, i8* %1439, align 1, !dbg !805, !tbaa !530
  %1441 = icmp eq i8 %1440, 0, !dbg !805
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !809
  br i1 %1441, label %1471, label %1442, !dbg !809

; <label>:1442:                                   ; preds = %1438
  %1443 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 2, i32 0, i32 0, !dbg !810
  %1444 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1443, i64 0, i32 0, i64 0, !dbg !810
  %1445 = load i32, i32* %1444, align 8, !dbg !810, !tbaa !530
  %1446 = icmp eq i32 %256, %1445, !dbg !810
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !810
  br i1 %1446, label %1447, label %1471, !dbg !810

; <label>:1447:                                   ; preds = %1442
  %1448 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 1, !dbg !810
  %1449 = load i32, i32* %1448, align 4, !dbg !810, !tbaa !530
  %1450 = extractelement <4 x i32> %253, i32 1, !dbg !810
  %1451 = icmp eq i32 %1450, %1449, !dbg !810
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !810
  br i1 %1451, label %1452, label %1471, !dbg !810

; <label>:1452:                                   ; preds = %1447
  %1453 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 2, !dbg !810
  %1454 = load i32, i32* %1453, align 8, !dbg !810, !tbaa !530
  %1455 = extractelement <4 x i32> %253, i32 2, !dbg !810
  %1456 = icmp eq i32 %1455, %1454, !dbg !810
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !810
  br i1 %1456, label %1457, label %1471, !dbg !810

; <label>:1457:                                   ; preds = %1452
  %1458 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 3, !dbg !810
  %1459 = load i32, i32* %1458, align 4, !dbg !810, !tbaa !530
  %1460 = extractelement <4 x i32> %253, i32 3, !dbg !810
  %1461 = icmp eq i32 %1460, %1459, !dbg !810
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !810
  br i1 %1461, label %1462, label %1471, !dbg !810

; <label>:1462:                                   ; preds = %1457
  %1463 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 2, i32 0, i32 0, i32 1, !dbg !810
  %1464 = load i8, i8* %1463, align 8, !dbg !810, !tbaa !530
  %1465 = icmp eq i8 %264, %1464, !dbg !810
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !811
  br i1 %1465, label %1466, label %1471, !dbg !811

; <label>:1466:                                   ; preds = %1462
  tail call fastcc void @nd6_send_na(%struct.netif* nonnull %1, %struct.ip6_addr* nonnull %1443, i8 zeroext 34) #8, !dbg !812
  %1467 = load i8, i8* %1439, align 1, !dbg !814, !tbaa !530
  %1468 = and i8 %1467, 8, !dbg !814
  %1469 = icmp eq i8 %1468, 0, !dbg !814
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !816
  br i1 %1469, label %1471, label %1470, !dbg !816

; <label>:1470:                                   ; preds = %1466
  tail call fastcc void @nd6_duplicate_addr_detected(%struct.netif* nonnull %1, i8 signext 2) #8, !dbg !817
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !819
  br label %1471, !dbg !819

; <label>:1471:                                   ; preds = %1470, %1466, %1462, %1457, %1452, %1447, %1442, %1438
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !820
  br label %454, !dbg !876

; <label>:1472:                                   ; preds = %338
  %1473 = and i32 %341, 8, !dbg !791
  %1474 = icmp ne i32 %1473, 0, !dbg !791
  %1475 = and i1 %1474, %304, !dbg !792
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !792
  br i1 %1475, label %1476, label %1499, !dbg !792

; <label>:1476:                                   ; preds = %1472, %338
  %1477 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 0, !dbg !793
  %1478 = load i32, i32* %1477, align 8, !dbg !793, !tbaa !530
  %1479 = icmp eq i32 %256, %1478, !dbg !793
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !793
  br i1 %1479, label %1480, label %1499, !dbg !793

; <label>:1480:                                   ; preds = %1476
  %1481 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 1, !dbg !793
  %1482 = load i32, i32* %1481, align 4, !dbg !793, !tbaa !530
  %1483 = extractelement <4 x i32> %253, i32 1, !dbg !793
  %1484 = icmp eq i32 %1483, %1482, !dbg !793
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !793
  br i1 %1484, label %1485, label %1499, !dbg !793

; <label>:1485:                                   ; preds = %1480
  %1486 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 2, !dbg !793
  %1487 = load i32, i32* %1486, align 8, !dbg !793, !tbaa !530
  %1488 = extractelement <4 x i32> %253, i32 2, !dbg !793
  %1489 = icmp eq i32 %1488, %1487, !dbg !793
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !793
  br i1 %1489, label %1490, label %1499, !dbg !793

; <label>:1490:                                   ; preds = %1485
  %1491 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 3, !dbg !793
  %1492 = load i32, i32* %1491, align 4, !dbg !793, !tbaa !530
  %1493 = extractelement <4 x i32> %253, i32 3, !dbg !793
  %1494 = icmp eq i32 %1493, %1492, !dbg !793
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !793
  br i1 %1494, label %1495, label %1499, !dbg !793

; <label>:1495:                                   ; preds = %1490
  %1496 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 1, i32 0, i32 0, i32 1, !dbg !793
  %1497 = load i8, i8* %1496, align 8, !dbg !793, !tbaa !530
  %1498 = icmp eq i8 %264, %1497, !dbg !793
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !794
  br i1 %1498, label %337, label %1499, !dbg !794

; <label>:1499:                                   ; preds = %1495, %1490, %1485, %1480, %1476, %1472
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !800
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !785
  %1500 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 5, i64 2, !dbg !786
  %1501 = load i8, i8* %1500, align 1, !dbg !786, !tbaa !530
  %1502 = zext i8 %1501 to i32, !dbg !786
  %1503 = and i32 %1502, 16, !dbg !786
  %1504 = icmp eq i32 %1503, 0, !dbg !786
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !790
  br i1 %1504, label %1505, label %1509, !dbg !790

; <label>:1505:                                   ; preds = %1499
  %1506 = and i32 %1502, 8, !dbg !791
  %1507 = icmp ne i32 %1506, 0, !dbg !791
  %1508 = and i1 %1507, %304, !dbg !792
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !792
  br i1 %1508, label %1509, label %1532, !dbg !792

; <label>:1509:                                   ; preds = %1505, %1499
  %1510 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 0, !dbg !793
  %1511 = load i32, i32* %1510, align 8, !dbg !793, !tbaa !530
  %1512 = icmp eq i32 %256, %1511, !dbg !793
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !793
  br i1 %1512, label %1513, label %1532, !dbg !793

; <label>:1513:                                   ; preds = %1509
  %1514 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 1, !dbg !793
  %1515 = load i32, i32* %1514, align 4, !dbg !793, !tbaa !530
  %1516 = extractelement <4 x i32> %253, i32 1, !dbg !793
  %1517 = icmp eq i32 %1516, %1515, !dbg !793
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !793
  br i1 %1517, label %1518, label %1532, !dbg !793

; <label>:1518:                                   ; preds = %1513
  %1519 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 2, !dbg !793
  %1520 = load i32, i32* %1519, align 8, !dbg !793, !tbaa !530
  %1521 = extractelement <4 x i32> %253, i32 2, !dbg !793
  %1522 = icmp eq i32 %1521, %1520, !dbg !793
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !793
  br i1 %1522, label %1523, label %1532, !dbg !793

; <label>:1523:                                   ; preds = %1518
  %1524 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 3, !dbg !793
  %1525 = load i32, i32* %1524, align 4, !dbg !793, !tbaa !530
  %1526 = extractelement <4 x i32> %253, i32 3, !dbg !793
  %1527 = icmp eq i32 %1526, %1525, !dbg !793
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !793
  br i1 %1527, label %1528, label %1532, !dbg !793

; <label>:1528:                                   ; preds = %1523
  %1529 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 2, i32 0, i32 0, i32 1, !dbg !793
  %1530 = load i8, i8* %1529, align 8, !dbg !793, !tbaa !530
  %1531 = icmp eq i8 %264, %1530, !dbg !793
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !794
  br i1 %1531, label %337, label %1532, !dbg !794

; <label>:1532:                                   ; preds = %1528, %1523, %1518, %1513, %1509, %1505
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !800
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !785
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !797
  %1533 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !1618
  br label %455, !dbg !1619
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local zeroext i8 @pbuf_free(%struct.pbuf*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc void @nd6_duplicate_addr_detected(%struct.netif*, i8 signext) unnamed_addr #0 !dbg !1620 {
  tail call void @netif_ip6_addr_set_state(%struct.netif* %0, i8 signext %1, i8 zeroext 64) #7, !dbg !1631
  %3 = icmp eq i8 %1, 0, !dbg !1632
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1633
  br i1 %3, label %4, label %17, !dbg !1633

; <label>:4:                                      ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1635
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1637
  %5 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 1, !dbg !1638
  %6 = load i8, i8* %5, align 1, !dbg !1638, !tbaa !530
  %7 = icmp eq i8 %6, 0, !dbg !1638
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1642
  br i1 %7, label %13, label %8, !dbg !1642

; <label>:8:                                      ; preds = %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1643
  %9 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 6, i64 1, !dbg !1643
  %10 = load i32, i32* %9, align 4, !dbg !1643, !tbaa !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1643
  %11 = icmp eq i32 %10, 0, !dbg !1643
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1644
  br i1 %11, label %13, label %12, !dbg !1644

; <label>:12:                                     ; preds = %8
  tail call void @netif_ip6_addr_set_state(%struct.netif* nonnull %0, i8 signext 1, i8 zeroext 64) #7, !dbg !1645
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1647
  br label %13, !dbg !1647

; <label>:13:                                     ; preds = %4, %8, %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1648
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1637
  %14 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 2, !dbg !1638
  %15 = load i8, i8* %14, align 1, !dbg !1638, !tbaa !530
  %16 = icmp eq i8 %15, 0, !dbg !1638
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1642
  br i1 %16, label %23, label %18, !dbg !1642

; <label>:17:                                     ; preds = %23, %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1649
  ret void, !dbg !1649

; <label>:18:                                     ; preds = %13
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1643
  %19 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 6, i64 2, !dbg !1643
  %20 = load i32, i32* %19, align 4, !dbg !1643, !tbaa !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1643
  %21 = icmp eq i32 %20, 0, !dbg !1643
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1644
  br i1 %21, label %23, label %22, !dbg !1644

; <label>:22:                                     ; preds = %18
  tail call void @netif_ip6_addr_set_state(%struct.netif* nonnull %0, i8 signext 2, i8 zeroext 64) #7, !dbg !1645
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1647
  br label %23, !dbg !1647

; <label>:23:                                     ; preds = %22, %18, %13
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1648
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1637
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1650
  br label %17, !dbg !1650
}

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc void @nd6_send_q(i8 signext) unnamed_addr #0 !dbg !1651 {
  %2 = alloca %struct.ip6_addr, align 16
  %3 = bitcast %struct.ip6_addr* %2 to i8*, !dbg !1660
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %3) #6, !dbg !1660
  %4 = icmp slt i8 %0, 0, !dbg !1661
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1663
  br i1 %4, label %56, label %5, !dbg !1663

; <label>:5:                                      ; preds = %1
  %6 = icmp sgt i8 %0, 9, !dbg !1664
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1665
  br i1 %6, label %56, label %7, !dbg !1665

; <label>:7:                                      ; preds = %5
  %8 = sext i8 %0 to i64, !dbg !1666
  %9 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %8, i32 3, !dbg !1667
  %10 = load %struct.nd6_q_entry*, %struct.nd6_q_entry** %9, align 8, !dbg !1667, !tbaa !725
  %11 = icmp eq %struct.nd6_q_entry* %10, null, !dbg !1668
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1669
  br i1 %11, label %56, label %12, !dbg !1669

; <label>:12:                                     ; preds = %7
  %13 = bitcast %struct.nd6_q_entry** %9 to i64*
  %14 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %2, i64 0, i32 1
  %15 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %8, i32 1
  %16 = bitcast %struct.ip6_addr* %2 to <4 x i32>*
  br label %17, !dbg !1669

; <label>:17:                                     ; preds = %12, %45
  %18 = phi %struct.nd6_q_entry* [ %10, %12 ], [ %54, %45 ]
  %19 = bitcast %struct.nd6_q_entry* %18 to i64*, !dbg !1671
  %20 = load i64, i64* %19, align 8, !dbg !1671, !tbaa !1673
  store i64 %20, i64* %13, align 8, !dbg !1675, !tbaa !725
  %21 = getelementptr inbounds %struct.nd6_q_entry, %struct.nd6_q_entry* %18, i64 0, i32 1, !dbg !1676
  %22 = load %struct.pbuf*, %struct.pbuf** %21, align 8, !dbg !1676, !tbaa !1677
  %23 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %22, i64 0, i32 1, !dbg !1678
  %24 = bitcast i8** %23 to %struct.ip6_hdr**, !dbg !1678
  %25 = load %struct.ip6_hdr*, %struct.ip6_hdr** %24, align 8, !dbg !1678, !tbaa !526
  %26 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %25, i64 0, i32 5, i32 0, i64 0, !dbg !1680
  %27 = bitcast i32* %26 to <4 x i32>*, !dbg !1680
  %28 = load <4 x i32>, <4 x i32>* %27, align 1, !dbg !1680, !tbaa !548
  store <4 x i32> %28, <4 x i32>* %16, align 16, !dbg !1680, !tbaa !548
  store i8 0, i8* %14, align 16, !dbg !1680, !tbaa !747
  %29 = extractelement <4 x i32> %28, i32 0, !dbg !1682
  %30 = zext i32 %29 to i64, !dbg !1682
  %31 = and i64 %30, 49407, !dbg !1682
  %32 = icmp eq i64 %31, 33022, !dbg !1682
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1682
  br i1 %32, label %40, label %33, !dbg !1682

; <label>:33:                                     ; preds = %17
  %34 = and i64 %30, 36863, !dbg !1682
  %35 = icmp eq i64 %34, 511, !dbg !1682
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1682
  br i1 %35, label %40, label %36, !dbg !1682

; <label>:36:                                     ; preds = %33
  %37 = icmp eq i64 %34, 767, !dbg !1682
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1682
  br i1 %37, label %40, label %38, !dbg !1682

; <label>:38:                                     ; preds = %36
  %39 = load %struct.netif*, %struct.netif** %15, align 8, !dbg !1683, !tbaa !718
  br label %45, !dbg !1682

; <label>:40:                                     ; preds = %36, %33, %17
  %41 = load %struct.netif*, %struct.netif** %15, align 8, !dbg !1682, !tbaa !718
  %42 = getelementptr inbounds %struct.netif, %struct.netif* %41, i64 0, i32 23, !dbg !1682
  %43 = load i8, i8* %42, align 8, !dbg !1682, !tbaa !551
  %44 = add i8 %43, 1, !dbg !1682
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1682
  br label %45, !dbg !1682

; <label>:45:                                     ; preds = %38, %40
  %46 = phi %struct.netif* [ %41, %40 ], [ %39, %38 ], !dbg !1683
  %47 = phi i8 [ %44, %40 ], [ 0, %38 ], !dbg !1682
  store i8 %47, i8* %14, align 16, !dbg !1682, !tbaa !747
  %48 = getelementptr inbounds %struct.netif, %struct.netif* %46, i64 0, i32 11, !dbg !1684
  %49 = load i8 (%struct.netif*, %struct.pbuf*, %struct.ip6_addr*)*, i8 (%struct.netif*, %struct.pbuf*, %struct.ip6_addr*)** %48, align 8, !dbg !1684, !tbaa !1685
  %50 = call signext i8 %49(%struct.netif* %46, %struct.pbuf* %22, %struct.ip6_addr* nonnull %2) #7, !dbg !1687
  %51 = load %struct.pbuf*, %struct.pbuf** %21, align 8, !dbg !1688, !tbaa !1677
  %52 = call zeroext i8 @pbuf_free(%struct.pbuf* %51) #7, !dbg !1689
  %53 = bitcast %struct.nd6_q_entry* %18 to i8*, !dbg !1690
  call void @memp_free(i32 12, i8* %53) #7, !dbg !1691
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1669
  %54 = load %struct.nd6_q_entry*, %struct.nd6_q_entry** %9, align 8, !dbg !1667, !tbaa !725
  %55 = icmp eq %struct.nd6_q_entry* %54, null, !dbg !1668
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1669
  br i1 %55, label %56, label %17, !dbg !1669, !llvm.loop !1692

; <label>:56:                                     ; preds = %45, %7, %1, %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1694
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %3) #6, !dbg !1696
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1696
  ret void, !dbg !1696
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define internal fastcc void @nd6_send_na(%struct.netif*, %struct.ip6_addr*, i8 zeroext) unnamed_addr #0 !dbg !1697 {
  %4 = icmp eq %struct.ip6_addr* %1, null, !dbg !1713
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1716
  br i1 %4, label %5, label %6, !dbg !1716

; <label>:5:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !1717
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1720
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1720
  unreachable

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 20, !dbg !1725
  %8 = load i8, i8* %7, align 4, !dbg !1725, !tbaa !662
  %9 = zext i8 %8 to i16, !dbg !1726
  %10 = add nuw nsw i16 %9, 2, !dbg !1727
  %11 = lshr i16 %10, 3, !dbg !1728
  %12 = add i8 %8, 2, !dbg !1729
  %13 = and i8 %12, 7, !dbg !1729
  %14 = icmp ne i8 %13, 0, !dbg !1730
  %15 = zext i1 %14 to i16, !dbg !1730
  %16 = add nuw nsw i16 %11, %15, !dbg !1731
  %17 = shl nuw nsw i16 %16, 3, !dbg !1733
  %18 = add nuw nsw i16 %17, 24, !dbg !1734
  %19 = tail call %struct.pbuf* @pbuf_alloc(i32 54, i16 zeroext %18, i32 640) #7, !dbg !1735
  %20 = icmp eq %struct.pbuf* %19, null, !dbg !1737
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1739
  br i1 %20, label %21, label %24, !dbg !1739

; <label>:21:                                     ; preds = %6
  %22 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 6), align 2, !dbg !1740, !tbaa !864
  %23 = add i16 %22, 1, !dbg !1740
  store i16 %23, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 6), align 2, !dbg !1740, !tbaa !864
  br label %89, !dbg !1742

; <label>:24:                                     ; preds = %6
  %25 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %19, i64 0, i32 1, !dbg !1743
  %26 = load i8*, i8** %25, align 8, !dbg !1743, !tbaa !526
  %27 = getelementptr inbounds i8, i8* %26, i64 24, !dbg !1745
  store i8 -120, i8* %26, align 1, !dbg !1747, !tbaa !1748
  %28 = getelementptr inbounds i8, i8* %26, i64 1, !dbg !1749
  store i8 0, i8* %28, align 1, !dbg !1750, !tbaa !564
  %29 = getelementptr inbounds i8, i8* %26, i64 2, !dbg !1751
  %30 = bitcast i8* %29 to i16*, !dbg !1751
  store i16 0, i16* %30, align 1, !dbg !1752, !tbaa !1753
  %31 = zext i8 %2 to i32, !dbg !1754
  %32 = and i8 %2, -16, !dbg !1755
  %33 = getelementptr inbounds i8, i8* %26, i64 4, !dbg !1756
  store i8 %32, i8* %33, align 1, !dbg !1757, !tbaa !657
  %34 = getelementptr inbounds i8, i8* %26, i64 5, !dbg !1758
  store i8 0, i8* %34, align 1, !dbg !1759, !tbaa !530
  %35 = getelementptr inbounds i8, i8* %26, i64 6, !dbg !1760
  store i8 0, i8* %35, align 1, !dbg !1761, !tbaa !530
  %36 = getelementptr inbounds i8, i8* %26, i64 7, !dbg !1762
  store i8 0, i8* %36, align 1, !dbg !1763, !tbaa !530
  %37 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 0, !dbg !1764
  %38 = load i32, i32* %37, align 4, !dbg !1764, !tbaa !548
  %39 = getelementptr inbounds i8, i8* %26, i64 8, !dbg !1764
  %40 = bitcast i8* %39 to i32*, !dbg !1764
  store i32 %38, i32* %40, align 1, !dbg !1764, !tbaa !548
  %41 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 1, !dbg !1764
  %42 = load i32, i32* %41, align 4, !dbg !1764, !tbaa !548
  %43 = getelementptr inbounds i8, i8* %26, i64 12, !dbg !1764
  %44 = bitcast i8* %43 to i32*, !dbg !1764
  store i32 %42, i32* %44, align 1, !dbg !1764, !tbaa !548
  %45 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 2, !dbg !1764
  %46 = load i32, i32* %45, align 4, !dbg !1764, !tbaa !548
  %47 = getelementptr inbounds i8, i8* %26, i64 16, !dbg !1764
  %48 = bitcast i8* %47 to i32*, !dbg !1764
  store i32 %46, i32* %48, align 1, !dbg !1764, !tbaa !548
  %49 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 3, !dbg !1764
  %50 = load i32, i32* %49, align 4, !dbg !1764, !tbaa !548
  %51 = getelementptr inbounds i8, i8* %26, i64 20, !dbg !1764
  %52 = bitcast i8* %51 to i32*, !dbg !1764
  store i32 %50, i32* %52, align 1, !dbg !1764, !tbaa !548
  store i8 2, i8* %27, align 1, !dbg !1766, !tbaa !1510
  %53 = trunc i16 %16 to i8, !dbg !1767
  %54 = getelementptr inbounds i8, i8* %26, i64 25, !dbg !1768
  store i8 %53, i8* %54, align 1, !dbg !1769, !tbaa !609
  %55 = getelementptr inbounds i8, i8* %26, i64 26, !dbg !1770
  %56 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 0, !dbg !1770
  %57 = load i8, i8* %7, align 4, !dbg !1770, !tbaa !662
  %58 = zext i8 %57 to i64, !dbg !1770
  %59 = tail call i8* @memcpy(i8* nonnull %55, i8* nonnull %56, i64 %58) #7, !dbg !1770
  %60 = and i32 %31, 1, !dbg !1771
  %61 = icmp eq i32 %60, 0, !dbg !1771
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1773
  br i1 %61, label %65, label %62, !dbg !1773

; <label>:62:                                     ; preds = %24
  store i32 767, i32* getelementptr inbounds (%struct.ip6_addr, %struct.ip6_addr* @multicast_address, i64 0, i32 0, i64 0), align 4, !dbg !1774, !tbaa !548
  store i32 0, i32* getelementptr inbounds (%struct.ip6_addr, %struct.ip6_addr* @multicast_address, i64 0, i32 0, i64 1), align 4, !dbg !1774, !tbaa !548
  store i32 16777216, i32* getelementptr inbounds (%struct.ip6_addr, %struct.ip6_addr* @multicast_address, i64 0, i32 0, i64 2), align 4, !dbg !1774, !tbaa !548
  %63 = load i32, i32* %49, align 4, !dbg !1774, !tbaa !548
  %64 = or i32 %63, 255, !dbg !1774
  br label %69, !dbg !1778

; <label>:65:                                     ; preds = %24
  %66 = and i32 %31, 2, !dbg !1779
  %67 = icmp eq i32 %66, 0, !dbg !1779
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1781
  br i1 %67, label %74, label %68, !dbg !1781

; <label>:68:                                     ; preds = %65
  store i32 767, i32* getelementptr inbounds (%struct.ip6_addr, %struct.ip6_addr* @multicast_address, i64 0, i32 0, i64 0), align 4, !dbg !1782, !tbaa !548
  store i32 0, i32* getelementptr inbounds (%struct.ip6_addr, %struct.ip6_addr* @multicast_address, i64 0, i32 0, i64 1), align 4, !dbg !1782, !tbaa !548
  store i32 0, i32* getelementptr inbounds (%struct.ip6_addr, %struct.ip6_addr* @multicast_address, i64 0, i32 0, i64 2), align 4, !dbg !1782, !tbaa !548
  br label %69, !dbg !1785

; <label>:69:                                     ; preds = %68, %62
  %70 = phi i32 [ %64, %62 ], [ 16777216, %68 ]
  store i32 %70, i32* getelementptr inbounds (%struct.ip6_addr, %struct.ip6_addr* @multicast_address, i64 0, i32 0, i64 3), align 4, !dbg !1786, !tbaa !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1787
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1787
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1787
  %71 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 23, !dbg !1787
  %72 = load i8, i8* %71, align 8, !dbg !1787, !tbaa !551
  %73 = add i8 %72, 1, !dbg !1787
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1787
  store i8 %73, i8* getelementptr inbounds (%struct.ip6_addr, %struct.ip6_addr* @multicast_address, i64 0, i32 1), align 4, !dbg !1787, !tbaa !747
  br label %74

; <label>:74:                                     ; preds = %69, %65
  %75 = phi %struct.ip6_addr* [ getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0), %65 ], [ @multicast_address, %69 ], !dbg !1788
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1790
  %76 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 16, !dbg !1790
  %77 = load i16, i16* %76, align 8, !dbg !1790, !tbaa !1792
  %78 = and i16 %77, 16, !dbg !1790
  %79 = icmp eq i16 %78, 0, !dbg !1790
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1793
  br i1 %79, label %84, label %80, !dbg !1793

; <label>:80:                                     ; preds = %74
  %81 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %19, i64 0, i32 3, !dbg !1794
  %82 = load i16, i16* %81, align 2, !dbg !1794, !tbaa !535
  %83 = tail call zeroext i16 @ip6_chksum_pseudo(%struct.pbuf* nonnull %19, i8 zeroext 58, i16 zeroext %82, %struct.ip6_addr* nonnull %1, %struct.ip6_addr* %75) #7, !dbg !1796
  store i16 %83, i16* %30, align 1, !dbg !1797, !tbaa !1753
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1798
  br label %84, !dbg !1798

; <label>:84:                                     ; preds = %74, %80
  %85 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 0), align 2, !dbg !1799, !tbaa !1800
  %86 = add i16 %85, 1, !dbg !1799
  store i16 %86, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 0), align 2, !dbg !1799, !tbaa !1800
  %87 = tail call signext i8 @ip6_output_if(%struct.pbuf* nonnull %19, %struct.ip6_addr* nonnull %1, %struct.ip6_addr* %75, i8 zeroext -1, i8 zeroext 0, i8 zeroext 58, %struct.netif* nonnull %0) #7, !dbg !1801
  %88 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %19) #7, !dbg !1802
  br label %89, !dbg !1803

; <label>:89:                                     ; preds = %84, %21
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1804
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1803
  ret void, !dbg !1803
}

; Function Attrs: noredzone nounwind
define internal fastcc signext i8 @nd6_new_neighbor_cache_entry() unnamed_addr #0 !dbg !1805 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1813
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1815
  %1 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 0, i32 4), align 16, !dbg !1816, !tbaa !687
  %2 = icmp eq i8 %1, 0, !dbg !1820
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1821
  br i1 %2, label %208, label %3, !dbg !1821

; <label>:3:                                      ; preds = %0
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1822
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1815
  %4 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 1, i32 4), align 8, !dbg !1816, !tbaa !687
  %5 = icmp eq i8 %4, 0, !dbg !1820
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1821
  br i1 %5, label %208, label %346, !dbg !1821

; <label>:6:                                      ; preds = %370
  %7 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 0, i32 5), align 1, !dbg !1823, !tbaa !1008
  %8 = icmp eq i8 %7, 0, !dbg !1828
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1829
  br i1 %8, label %9, label %24, !dbg !1829

; <label>:9:                                      ; preds = %6, %301, %306, %311, %316, %321, %326, %331, %336, %341
  %10 = phi i8 [ 0, %6 ], [ 1, %301 ], [ 2, %306 ], [ 3, %311 ], [ 4, %316 ], [ 5, %321 ], [ 6, %326 ], [ 7, %331 ], [ 8, %336 ], [ 9, %341 ]
  %11 = phi i64 [ 0, %6 ], [ 1, %301 ], [ 2, %306 ], [ 3, %311 ], [ 4, %316 ], [ 5, %321 ], [ 6, %326 ], [ 7, %331 ], [ 8, %336 ], [ 9, %341 ], !dbg !1830
  %12 = phi i8* [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 0, i32 4), %6 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 1, i32 4), %301 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 2, i32 4), %306 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 3, i32 4), %311 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 4, i32 4), %316 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 5, i32 4), %321 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 6, i32 4), %326 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 7, i32 4), %331 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 8, i32 4), %336 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 9, i32 4), %341 ], !dbg !1831
  %13 = phi i8* [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 0, i32 5), %6 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 1, i32 5), %301 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 2, i32 5), %306 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 3, i32 5), %311 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 4, i32 5), %316 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 5, i32 5), %321 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 6, i32 5), %326 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 7, i32 5), %331 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 8, i32 5), %336 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 9, i32 5), %341 ], !dbg !1823
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1838
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1840
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1841
  %14 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %11, i32 3, !dbg !1842
  %15 = load %struct.nd6_q_entry*, %struct.nd6_q_entry** %14, align 8, !dbg !1842, !tbaa !725
  %16 = icmp eq %struct.nd6_q_entry* %15, null, !dbg !1844
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1845
  br i1 %16, label %18, label %17, !dbg !1845

; <label>:17:                                     ; preds = %9
  tail call fastcc void @nd6_free_q(%struct.nd6_q_entry* nonnull %15) #7, !dbg !1846
  store %struct.nd6_q_entry* null, %struct.nd6_q_entry** %14, align 8, !dbg !1848, !tbaa !725
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1849
  br label %18, !dbg !1849

; <label>:18:                                     ; preds = %9, %17
  store i8 0, i8* %12, align 8, !dbg !1850, !tbaa !687
  store i8 0, i8* %13, align 1, !dbg !1851, !tbaa !1008
  %19 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %11, i32 1, !dbg !1852
  store %struct.netif* null, %struct.netif** %19, align 8, !dbg !1853, !tbaa !718
  %20 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %11, i32 6, i32 0, !dbg !1854
  store i32 0, i32* %20, align 4, !dbg !1855, !tbaa !530
  %21 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %11, i32 0, i32 0, i64 0, !dbg !1856
  %22 = bitcast i32* %21 to <4 x i32>*, !dbg !1856
  store <4 x i32> zeroinitializer, <4 x i32>* %22, align 8, !dbg !1856, !tbaa !548
  %23 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %11, i32 0, i32 1, !dbg !1856
  store i8 0, i8* %23, align 8, !dbg !1856, !tbaa !638
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1856
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1858
  br label %208, !dbg !1859

; <label>:24:                                     ; preds = %6, %370
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1860
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1861
  %25 = icmp eq i8 %4, 3, !dbg !1862
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1863
  br i1 %25, label %301, label %304, !dbg !1863

; <label>:26:                                     ; preds = %344
  %27 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 0, i32 5), align 1, !dbg !1864, !tbaa !1008
  %28 = icmp eq i8 %27, 0, !dbg !1869
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1870
  br i1 %28, label %29, label %44, !dbg !1870

; <label>:29:                                     ; preds = %26, %256, %261, %266, %271, %276, %281, %286, %291, %296
  %30 = phi i8 [ 0, %26 ], [ 1, %256 ], [ 2, %261 ], [ 3, %266 ], [ 4, %271 ], [ 5, %276 ], [ 6, %281 ], [ 7, %286 ], [ 8, %291 ], [ 9, %296 ]
  %31 = phi i64 [ 0, %26 ], [ 1, %256 ], [ 2, %261 ], [ 3, %266 ], [ 4, %271 ], [ 5, %276 ], [ 6, %281 ], [ 7, %286 ], [ 8, %291 ], [ 9, %296 ], !dbg !1871
  %32 = phi i8* [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 0, i32 4), %26 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 1, i32 4), %256 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 2, i32 4), %261 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 3, i32 4), %266 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 4, i32 4), %271 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 5, i32 4), %276 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 6, i32 4), %281 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 7, i32 4), %286 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 8, i32 4), %291 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 9, i32 4), %296 ], !dbg !1872
  %33 = phi i8* [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 0, i32 5), %26 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 1, i32 5), %256 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 2, i32 5), %261 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 3, i32 5), %266 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 4, i32 5), %271 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 5, i32 5), %276 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 6, i32 5), %281 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 7, i32 5), %286 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 8, i32 5), %291 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 9, i32 5), %296 ], !dbg !1864
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1876
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1877
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1878
  %34 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %31, i32 3, !dbg !1879
  %35 = load %struct.nd6_q_entry*, %struct.nd6_q_entry** %34, align 8, !dbg !1879, !tbaa !725
  %36 = icmp eq %struct.nd6_q_entry* %35, null, !dbg !1880
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1881
  br i1 %36, label %38, label %37, !dbg !1881

; <label>:37:                                     ; preds = %29
  tail call fastcc void @nd6_free_q(%struct.nd6_q_entry* nonnull %35) #7, !dbg !1882
  store %struct.nd6_q_entry* null, %struct.nd6_q_entry** %34, align 8, !dbg !1883, !tbaa !725
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1884
  br label %38, !dbg !1884

; <label>:38:                                     ; preds = %29, %37
  store i8 0, i8* %32, align 8, !dbg !1885, !tbaa !687
  store i8 0, i8* %33, align 1, !dbg !1886, !tbaa !1008
  %39 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %31, i32 1, !dbg !1887
  store %struct.netif* null, %struct.netif** %39, align 8, !dbg !1888, !tbaa !718
  %40 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %31, i32 6, i32 0, !dbg !1889
  store i32 0, i32* %40, align 4, !dbg !1890, !tbaa !530
  %41 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %31, i32 0, i32 0, i64 0, !dbg !1891
  %42 = bitcast i32* %41 to <4 x i32>*, !dbg !1891
  store <4 x i32> zeroinitializer, <4 x i32>* %42, align 8, !dbg !1891, !tbaa !548
  %43 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %31, i32 0, i32 1, !dbg !1891
  store i8 0, i8* %43, align 8, !dbg !1891, !tbaa !638
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1891
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1892
  br label %208, !dbg !1893

; <label>:44:                                     ; preds = %26, %344
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1894
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1895
  %45 = icmp eq i8 %4, 5, !dbg !1896
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1897
  br i1 %45, label %256, label %259, !dbg !1897

; <label>:46:                                     ; preds = %299
  %47 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 0, i32 5), align 1, !dbg !1898, !tbaa !1008
  %48 = icmp eq i8 %47, 0, !dbg !1903
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1904
  br i1 %48, label %49, label %64, !dbg !1904

; <label>:49:                                     ; preds = %46, %212, %217, %222, %227, %232, %237, %242, %247, %252
  %50 = phi i8 [ 0, %46 ], [ 1, %212 ], [ 2, %217 ], [ 3, %222 ], [ 4, %227 ], [ 5, %232 ], [ 6, %237 ], [ 7, %242 ], [ 8, %247 ], [ 9, %252 ]
  %51 = phi i64 [ 0, %46 ], [ 1, %212 ], [ 2, %217 ], [ 3, %222 ], [ 4, %227 ], [ 5, %232 ], [ 6, %237 ], [ 7, %242 ], [ 8, %247 ], [ 9, %252 ], !dbg !1905
  %52 = phi i8* [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 0, i32 4), %46 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 1, i32 4), %212 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 2, i32 4), %217 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 3, i32 4), %222 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 4, i32 4), %227 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 5, i32 4), %232 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 6, i32 4), %237 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 7, i32 4), %242 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 8, i32 4), %247 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 9, i32 4), %252 ], !dbg !1906
  %53 = phi i8* [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 0, i32 5), %46 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 1, i32 5), %212 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 2, i32 5), %217 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 3, i32 5), %222 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 4, i32 5), %227 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 5, i32 5), %232 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 6, i32 5), %237 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 7, i32 5), %242 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 8, i32 5), %247 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 9, i32 5), %252 ], !dbg !1898
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1910
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1911
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1912
  %54 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %51, i32 3, !dbg !1913
  %55 = load %struct.nd6_q_entry*, %struct.nd6_q_entry** %54, align 8, !dbg !1913, !tbaa !725
  %56 = icmp eq %struct.nd6_q_entry* %55, null, !dbg !1914
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1915
  br i1 %56, label %58, label %57, !dbg !1915

; <label>:57:                                     ; preds = %49
  tail call fastcc void @nd6_free_q(%struct.nd6_q_entry* nonnull %55) #7, !dbg !1916
  store %struct.nd6_q_entry* null, %struct.nd6_q_entry** %54, align 8, !dbg !1917, !tbaa !725
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1918
  br label %58, !dbg !1918

; <label>:58:                                     ; preds = %49, %57
  store i8 0, i8* %52, align 8, !dbg !1919, !tbaa !687
  store i8 0, i8* %53, align 1, !dbg !1920, !tbaa !1008
  %59 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %51, i32 1, !dbg !1921
  store %struct.netif* null, %struct.netif** %59, align 8, !dbg !1922, !tbaa !718
  %60 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %51, i32 6, i32 0, !dbg !1923
  store i32 0, i32* %60, align 4, !dbg !1924, !tbaa !530
  %61 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %51, i32 0, i32 0, i64 0, !dbg !1925
  %62 = bitcast i32* %61 to <4 x i32>*, !dbg !1925
  store <4 x i32> zeroinitializer, <4 x i32>* %62, align 8, !dbg !1925, !tbaa !548
  %63 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %51, i32 0, i32 1, !dbg !1925
  store i8 0, i8* %63, align 8, !dbg !1925, !tbaa !638
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1925
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1926
  br label %208, !dbg !1927

; <label>:64:                                     ; preds = %46, %299
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1928
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1929
  %65 = icmp eq i8 %4, 4, !dbg !1930
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1931
  br i1 %65, label %212, label %215, !dbg !1931

; <label>:66:                                     ; preds = %87, %255
  %67 = phi i8 [ %1, %255 ], [ %89, %87 ], !dbg !1932
  %68 = phi i64 [ 0, %255 ], [ %85, %87 ]
  %69 = phi i32 [ -1, %255 ], [ %84, %87 ]
  %70 = phi i8 [ -1, %255 ], [ %83, %87 ]
  %71 = icmp eq i8 %67, 2, !dbg !1939
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1940
  br i1 %71, label %72, label %82, !dbg !1940

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %68, i32 5, !dbg !1941
  %74 = load i8, i8* %73, align 1, !dbg !1941, !tbaa !1008
  %75 = icmp eq i8 %74, 0, !dbg !1942
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1943
  br i1 %75, label %76, label %82, !dbg !1943

; <label>:76:                                     ; preds = %72
  %77 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %68, i32 6, i32 0, !dbg !1944
  %78 = load i32, i32* %77, align 4, !dbg !1944, !tbaa !530
  %79 = icmp ult i32 %78, %69, !dbg !1947
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1948
  br i1 %79, label %80, label %82, !dbg !1948

; <label>:80:                                     ; preds = %76
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1949
  %81 = trunc i64 %68 to i8, !dbg !1949
  br label %82, !dbg !1949

; <label>:82:                                     ; preds = %72, %66, %80, %76
  %83 = phi i8 [ %70, %72 ], [ %81, %80 ], [ %70, %76 ], [ %70, %66 ], !dbg !1951
  %84 = phi i32 [ %69, %72 ], [ %78, %80 ], [ %69, %76 ], [ %69, %66 ], !dbg !1951
  %85 = add nuw nsw i64 %68, 1, !dbg !1952
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1953
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1954
  %86 = icmp eq i64 %85, 10, !dbg !1955
  br i1 %86, label %90, label %87, !dbg !1954, !llvm.loop !1956

; <label>:87:                                     ; preds = %82
  %88 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %85, i32 4
  %89 = load i8, i8* %88, align 8, !dbg !1932, !tbaa !687
  br label %66, !dbg !1954

; <label>:90:                                     ; preds = %82
  %91 = icmp sgt i8 %83, -1, !dbg !1958
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1960
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1961
  br i1 %91, label %93, label %92, !dbg !1960

; <label>:92:                                     ; preds = %90
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1963
  br label %113, !dbg !1963

; <label>:93:                                     ; preds = %90
  %94 = icmp sgt i8 %83, 9, !dbg !1967
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1968
  br i1 %94, label %112, label %95, !dbg !1968

; <label>:95:                                     ; preds = %93
  %96 = sext i8 %83 to i64, !dbg !1969
  %97 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %96, i32 5, !dbg !1971
  %98 = load i8, i8* %97, align 1, !dbg !1971, !tbaa !1008
  %99 = icmp eq i8 %98, 0, !dbg !1969
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1972
  br i1 %99, label %100, label %112, !dbg !1972

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %96, i32 3, !dbg !1973
  %102 = load %struct.nd6_q_entry*, %struct.nd6_q_entry** %101, align 8, !dbg !1973, !tbaa !725
  %103 = icmp eq %struct.nd6_q_entry* %102, null, !dbg !1974
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1975
  br i1 %103, label %105, label %104, !dbg !1975

; <label>:104:                                    ; preds = %100
  tail call fastcc void @nd6_free_q(%struct.nd6_q_entry* nonnull %102) #7, !dbg !1976
  store %struct.nd6_q_entry* null, %struct.nd6_q_entry** %101, align 8, !dbg !1977, !tbaa !725
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1978
  br label %105, !dbg !1978

; <label>:105:                                    ; preds = %104, %100
  %106 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %96, i32 4, !dbg !1979
  store i8 0, i8* %106, align 8, !dbg !1980, !tbaa !687
  store i8 0, i8* %97, align 1, !dbg !1981, !tbaa !1008
  %107 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %96, i32 1, !dbg !1982
  store %struct.netif* null, %struct.netif** %107, align 8, !dbg !1983, !tbaa !718
  %108 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %96, i32 6, i32 0, !dbg !1984
  store i32 0, i32* %108, align 4, !dbg !1985, !tbaa !530
  %109 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %96, i32 0, i32 0, i64 0, !dbg !1986
  %110 = bitcast i32* %109 to <4 x i32>*, !dbg !1986
  store <4 x i32> zeroinitializer, <4 x i32>* %110, align 8, !dbg !1986, !tbaa !548
  %111 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %96, i32 0, i32 1, !dbg !1986
  store i8 0, i8* %111, align 8, !dbg !1986, !tbaa !638
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1986
  br label %112, !dbg !1986

; <label>:112:                                    ; preds = %93, %95, %105
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1987
  br label %208, !dbg !1988

; <label>:113:                                    ; preds = %134, %92
  %114 = phi i64 [ 0, %92 ], [ %137, %134 ]
  %115 = phi i32 [ 0, %92 ], [ %136, %134 ]
  %116 = phi i8 [ -1, %92 ], [ %135, %134 ]
  %117 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %114, i32 3, !dbg !1989
  %118 = load %struct.nd6_q_entry*, %struct.nd6_q_entry** %117, align 8, !dbg !1989, !tbaa !725
  %119 = icmp eq %struct.nd6_q_entry* %118, null, !dbg !1993
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1994
  br i1 %119, label %120, label %134, !dbg !1994

; <label>:120:                                    ; preds = %113
  %121 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %114, i32 4, !dbg !1995
  %122 = load i8, i8* %121, align 8, !dbg !1995, !tbaa !687
  %123 = icmp eq i8 %122, 1, !dbg !1996
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1997
  br i1 %123, label %124, label %134, !dbg !1997

; <label>:124:                                    ; preds = %120
  %125 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %114, i32 5, !dbg !1998
  %126 = load i8, i8* %125, align 1, !dbg !1998, !tbaa !1008
  %127 = icmp eq i8 %126, 0, !dbg !1999
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2000
  br i1 %127, label %128, label %134, !dbg !2000

; <label>:128:                                    ; preds = %124
  %129 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %114, i32 6, i32 0, !dbg !2001
  %130 = load i32, i32* %129, align 4, !dbg !2001, !tbaa !530
  %131 = icmp ult i32 %130, %115, !dbg !2004
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2005
  br i1 %131, label %134, label %132, !dbg !2005

; <label>:132:                                    ; preds = %128
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2006
  %133 = trunc i64 %114 to i8, !dbg !2006
  br label %134, !dbg !2006

; <label>:134:                                    ; preds = %128, %124, %113, %120, %132
  %135 = phi i8 [ %116, %124 ], [ %133, %132 ], [ %116, %128 ], [ %116, %120 ], [ %116, %113 ], !dbg !1951
  %136 = phi i32 [ %115, %124 ], [ %130, %132 ], [ %115, %128 ], [ %115, %120 ], [ %115, %113 ], !dbg !1951
  %137 = add nuw nsw i64 %114, 1, !dbg !2008
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2009
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1963
  %138 = icmp eq i64 %137, 10, !dbg !2010
  br i1 %138, label %139, label %113, !dbg !1963, !llvm.loop !2011

; <label>:139:                                    ; preds = %134
  %140 = icmp sgt i8 %135, -1, !dbg !2013
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2015
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2016
  br i1 %140, label %142, label %141, !dbg !2015

; <label>:141:                                    ; preds = %139
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2018
  br label %162, !dbg !2018

; <label>:142:                                    ; preds = %139
  %143 = icmp sgt i8 %135, 9, !dbg !2022
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2023
  br i1 %143, label %161, label %144, !dbg !2023

; <label>:144:                                    ; preds = %142
  %145 = sext i8 %135 to i64, !dbg !2024
  %146 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %145, i32 5, !dbg !2025
  %147 = load i8, i8* %146, align 1, !dbg !2025, !tbaa !1008
  %148 = icmp eq i8 %147, 0, !dbg !2024
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2026
  br i1 %148, label %149, label %161, !dbg !2026

; <label>:149:                                    ; preds = %144
  %150 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %145, i32 3, !dbg !2027
  %151 = load %struct.nd6_q_entry*, %struct.nd6_q_entry** %150, align 8, !dbg !2027, !tbaa !725
  %152 = icmp eq %struct.nd6_q_entry* %151, null, !dbg !2028
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2029
  br i1 %152, label %154, label %153, !dbg !2029

; <label>:153:                                    ; preds = %149
  tail call fastcc void @nd6_free_q(%struct.nd6_q_entry* nonnull %151) #7, !dbg !2030
  store %struct.nd6_q_entry* null, %struct.nd6_q_entry** %150, align 8, !dbg !2031, !tbaa !725
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2032
  br label %154, !dbg !2032

; <label>:154:                                    ; preds = %153, %149
  %155 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %145, i32 4, !dbg !2033
  store i8 0, i8* %155, align 8, !dbg !2034, !tbaa !687
  store i8 0, i8* %146, align 1, !dbg !2035, !tbaa !1008
  %156 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %145, i32 1, !dbg !2036
  store %struct.netif* null, %struct.netif** %156, align 8, !dbg !2037, !tbaa !718
  %157 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %145, i32 6, i32 0, !dbg !2038
  store i32 0, i32* %157, align 4, !dbg !2039, !tbaa !530
  %158 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %145, i32 0, i32 0, i64 0, !dbg !2040
  %159 = bitcast i32* %158 to <4 x i32>*, !dbg !2040
  store <4 x i32> zeroinitializer, <4 x i32>* %159, align 8, !dbg !2040, !tbaa !548
  %160 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %145, i32 0, i32 1, !dbg !2040
  store i8 0, i8* %160, align 8, !dbg !2040, !tbaa !638
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2040
  br label %161, !dbg !2040

; <label>:161:                                    ; preds = %142, %144, %154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2041
  br label %208, !dbg !2042

; <label>:162:                                    ; preds = %183, %141
  %163 = phi i8 [ %1, %141 ], [ %185, %183 ], !dbg !2043
  %164 = phi i64 [ 0, %141 ], [ %181, %183 ]
  %165 = phi i32 [ 0, %141 ], [ %180, %183 ]
  %166 = phi i8 [ -1, %141 ], [ %179, %183 ]
  %167 = icmp eq i8 %163, 1, !dbg !2047
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2048
  br i1 %167, label %168, label %178, !dbg !2048

; <label>:168:                                    ; preds = %162
  %169 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %164, i32 5, !dbg !2049
  %170 = load i8, i8* %169, align 1, !dbg !2049, !tbaa !1008
  %171 = icmp eq i8 %170, 0, !dbg !2050
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2051
  br i1 %171, label %172, label %178, !dbg !2051

; <label>:172:                                    ; preds = %168
  %173 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %164, i32 6, i32 0, !dbg !2052
  %174 = load i32, i32* %173, align 4, !dbg !2052, !tbaa !530
  %175 = icmp ult i32 %174, %165, !dbg !2055
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2056
  br i1 %175, label %178, label %176, !dbg !2056

; <label>:176:                                    ; preds = %172
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2057
  %177 = trunc i64 %164 to i8, !dbg !2057
  br label %178, !dbg !2057

; <label>:178:                                    ; preds = %172, %168, %162, %176
  %179 = phi i8 [ %166, %168 ], [ %177, %176 ], [ %166, %172 ], [ %166, %162 ], !dbg !1951
  %180 = phi i32 [ %165, %168 ], [ %174, %176 ], [ %165, %172 ], [ %165, %162 ], !dbg !1951
  %181 = add nuw nsw i64 %164, 1, !dbg !2059
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2060
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2018
  %182 = icmp eq i64 %181, 10, !dbg !2061
  br i1 %182, label %186, label %183, !dbg !2018, !llvm.loop !2062

; <label>:183:                                    ; preds = %178
  %184 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %181, i32 4
  %185 = load i8, i8* %184, align 8, !dbg !2043, !tbaa !687
  br label %162, !dbg !2018

; <label>:186:                                    ; preds = %178
  %187 = icmp sgt i8 %179, -1, !dbg !2064
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2066
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1951
  br i1 %187, label %188, label %210, !dbg !2066

; <label>:188:                                    ; preds = %186
  %189 = icmp sgt i8 %179, 9, !dbg !2070
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2071
  br i1 %189, label %207, label %190, !dbg !2071

; <label>:190:                                    ; preds = %188
  %191 = sext i8 %179 to i64, !dbg !2072
  %192 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %191, i32 5, !dbg !2073
  %193 = load i8, i8* %192, align 1, !dbg !2073, !tbaa !1008
  %194 = icmp eq i8 %193, 0, !dbg !2072
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2074
  br i1 %194, label %195, label %207, !dbg !2074

; <label>:195:                                    ; preds = %190
  %196 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %191, i32 3, !dbg !2075
  %197 = load %struct.nd6_q_entry*, %struct.nd6_q_entry** %196, align 8, !dbg !2075, !tbaa !725
  %198 = icmp eq %struct.nd6_q_entry* %197, null, !dbg !2076
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2077
  br i1 %198, label %200, label %199, !dbg !2077

; <label>:199:                                    ; preds = %195
  tail call fastcc void @nd6_free_q(%struct.nd6_q_entry* nonnull %197) #7, !dbg !2078
  store %struct.nd6_q_entry* null, %struct.nd6_q_entry** %196, align 8, !dbg !2079, !tbaa !725
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2080
  br label %200, !dbg !2080

; <label>:200:                                    ; preds = %199, %195
  %201 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %191, i32 4, !dbg !2081
  store i8 0, i8* %201, align 8, !dbg !2082, !tbaa !687
  store i8 0, i8* %192, align 1, !dbg !2083, !tbaa !1008
  %202 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %191, i32 1, !dbg !2084
  store %struct.netif* null, %struct.netif** %202, align 8, !dbg !2085, !tbaa !718
  %203 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %191, i32 6, i32 0, !dbg !2086
  store i32 0, i32* %203, align 4, !dbg !2087, !tbaa !530
  %204 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %191, i32 0, i32 0, i64 0, !dbg !2088
  %205 = bitcast i32* %204 to <4 x i32>*, !dbg !2088
  store <4 x i32> zeroinitializer, <4 x i32>* %205, align 8, !dbg !2088, !tbaa !548
  %206 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %191, i32 0, i32 1, !dbg !2088
  store i8 0, i8* %206, align 8, !dbg !2088, !tbaa !638
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2088
  br label %207, !dbg !2088

; <label>:207:                                    ; preds = %188, %190, %200
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2089
  br label %208, !dbg !2090

; <label>:208:                                    ; preds = %0, %3, %346, %349, %352, %355, %358, %361, %364, %367, %18, %38, %58, %112, %161, %207
  %209 = phi i8 [ %179, %207 ], [ %135, %161 ], [ %83, %112 ], [ %50, %58 ], [ %30, %38 ], [ %10, %18 ], [ 0, %0 ], [ 1, %3 ], [ 2, %346 ], [ 3, %349 ], [ 4, %352 ], [ 5, %355 ], [ 6, %358 ], [ 7, %361 ], [ 8, %364 ], [ 9, %367 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2091
  br label %210, !dbg !2093

; <label>:210:                                    ; preds = %208, %186
  %211 = phi i8 [ -1, %186 ], [ %209, %208 ], !dbg !1951
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2093
  ret i8 %211, !dbg !2093

; <label>:212:                                    ; preds = %64
  %213 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 1, i32 5), align 1, !dbg !1898, !tbaa !1008
  %214 = icmp eq i8 %213, 0, !dbg !1903
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1904
  br i1 %214, label %49, label %215, !dbg !1904

; <label>:215:                                    ; preds = %212, %64
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1928
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1929
  %216 = icmp eq i8 %347, 4, !dbg !1930
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1931
  br i1 %216, label %217, label %220, !dbg !1931

; <label>:217:                                    ; preds = %215
  %218 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 2, i32 5), align 1, !dbg !1898, !tbaa !1008
  %219 = icmp eq i8 %218, 0, !dbg !1903
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1904
  br i1 %219, label %49, label %220, !dbg !1904

; <label>:220:                                    ; preds = %217, %215
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1928
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1929
  %221 = icmp eq i8 %350, 4, !dbg !1930
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1931
  br i1 %221, label %222, label %225, !dbg !1931

; <label>:222:                                    ; preds = %220
  %223 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 3, i32 5), align 1, !dbg !1898, !tbaa !1008
  %224 = icmp eq i8 %223, 0, !dbg !1903
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1904
  br i1 %224, label %49, label %225, !dbg !1904

; <label>:225:                                    ; preds = %222, %220
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1928
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1929
  %226 = icmp eq i8 %353, 4, !dbg !1930
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1931
  br i1 %226, label %227, label %230, !dbg !1931

; <label>:227:                                    ; preds = %225
  %228 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 4, i32 5), align 1, !dbg !1898, !tbaa !1008
  %229 = icmp eq i8 %228, 0, !dbg !1903
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1904
  br i1 %229, label %49, label %230, !dbg !1904

; <label>:230:                                    ; preds = %227, %225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1928
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1929
  %231 = icmp eq i8 %356, 4, !dbg !1930
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1931
  br i1 %231, label %232, label %235, !dbg !1931

; <label>:232:                                    ; preds = %230
  %233 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 5, i32 5), align 1, !dbg !1898, !tbaa !1008
  %234 = icmp eq i8 %233, 0, !dbg !1903
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1904
  br i1 %234, label %49, label %235, !dbg !1904

; <label>:235:                                    ; preds = %232, %230
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1928
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1929
  %236 = icmp eq i8 %359, 4, !dbg !1930
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1931
  br i1 %236, label %237, label %240, !dbg !1931

; <label>:237:                                    ; preds = %235
  %238 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 6, i32 5), align 1, !dbg !1898, !tbaa !1008
  %239 = icmp eq i8 %238, 0, !dbg !1903
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1904
  br i1 %239, label %49, label %240, !dbg !1904

; <label>:240:                                    ; preds = %237, %235
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1928
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1929
  %241 = icmp eq i8 %362, 4, !dbg !1930
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1931
  br i1 %241, label %242, label %245, !dbg !1931

; <label>:242:                                    ; preds = %240
  %243 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 7, i32 5), align 1, !dbg !1898, !tbaa !1008
  %244 = icmp eq i8 %243, 0, !dbg !1903
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1904
  br i1 %244, label %49, label %245, !dbg !1904

; <label>:245:                                    ; preds = %242, %240
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1928
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1929
  %246 = icmp eq i8 %365, 4, !dbg !1930
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1931
  br i1 %246, label %247, label %250, !dbg !1931

; <label>:247:                                    ; preds = %245
  %248 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 8, i32 5), align 1, !dbg !1898, !tbaa !1008
  %249 = icmp eq i8 %248, 0, !dbg !1903
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1904
  br i1 %249, label %49, label %250, !dbg !1904

; <label>:250:                                    ; preds = %247, %245
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1928
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1929
  %251 = icmp eq i8 %368, 4, !dbg !1930
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1931
  br i1 %251, label %252, label %255, !dbg !1931

; <label>:252:                                    ; preds = %250
  %253 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 9, i32 5), align 1, !dbg !1898, !tbaa !1008
  %254 = icmp eq i8 %253, 0, !dbg !1903
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1904
  br i1 %254, label %49, label %255, !dbg !1904

; <label>:255:                                    ; preds = %252, %250
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1928
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1929
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2094
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1954
  br label %66, !dbg !1954

; <label>:256:                                    ; preds = %44
  %257 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 1, i32 5), align 1, !dbg !1864, !tbaa !1008
  %258 = icmp eq i8 %257, 0, !dbg !1869
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1870
  br i1 %258, label %29, label %259, !dbg !1870

; <label>:259:                                    ; preds = %256, %44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1894
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1895
  %260 = icmp eq i8 %347, 5, !dbg !1896
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1897
  br i1 %260, label %261, label %264, !dbg !1897

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 2, i32 5), align 1, !dbg !1864, !tbaa !1008
  %263 = icmp eq i8 %262, 0, !dbg !1869
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1870
  br i1 %263, label %29, label %264, !dbg !1870

; <label>:264:                                    ; preds = %261, %259
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1894
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1895
  %265 = icmp eq i8 %350, 5, !dbg !1896
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1897
  br i1 %265, label %266, label %269, !dbg !1897

; <label>:266:                                    ; preds = %264
  %267 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 3, i32 5), align 1, !dbg !1864, !tbaa !1008
  %268 = icmp eq i8 %267, 0, !dbg !1869
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1870
  br i1 %268, label %29, label %269, !dbg !1870

; <label>:269:                                    ; preds = %266, %264
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1894
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1895
  %270 = icmp eq i8 %353, 5, !dbg !1896
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1897
  br i1 %270, label %271, label %274, !dbg !1897

; <label>:271:                                    ; preds = %269
  %272 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 4, i32 5), align 1, !dbg !1864, !tbaa !1008
  %273 = icmp eq i8 %272, 0, !dbg !1869
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1870
  br i1 %273, label %29, label %274, !dbg !1870

; <label>:274:                                    ; preds = %271, %269
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1894
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1895
  %275 = icmp eq i8 %356, 5, !dbg !1896
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1897
  br i1 %275, label %276, label %279, !dbg !1897

; <label>:276:                                    ; preds = %274
  %277 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 5, i32 5), align 1, !dbg !1864, !tbaa !1008
  %278 = icmp eq i8 %277, 0, !dbg !1869
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1870
  br i1 %278, label %29, label %279, !dbg !1870

; <label>:279:                                    ; preds = %276, %274
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1894
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1895
  %280 = icmp eq i8 %359, 5, !dbg !1896
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1897
  br i1 %280, label %281, label %284, !dbg !1897

; <label>:281:                                    ; preds = %279
  %282 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 6, i32 5), align 1, !dbg !1864, !tbaa !1008
  %283 = icmp eq i8 %282, 0, !dbg !1869
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1870
  br i1 %283, label %29, label %284, !dbg !1870

; <label>:284:                                    ; preds = %281, %279
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1894
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1895
  %285 = icmp eq i8 %362, 5, !dbg !1896
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1897
  br i1 %285, label %286, label %289, !dbg !1897

; <label>:286:                                    ; preds = %284
  %287 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 7, i32 5), align 1, !dbg !1864, !tbaa !1008
  %288 = icmp eq i8 %287, 0, !dbg !1869
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1870
  br i1 %288, label %29, label %289, !dbg !1870

; <label>:289:                                    ; preds = %286, %284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1894
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1895
  %290 = icmp eq i8 %365, 5, !dbg !1896
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1897
  br i1 %290, label %291, label %294, !dbg !1897

; <label>:291:                                    ; preds = %289
  %292 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 8, i32 5), align 1, !dbg !1864, !tbaa !1008
  %293 = icmp eq i8 %292, 0, !dbg !1869
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1870
  br i1 %293, label %29, label %294, !dbg !1870

; <label>:294:                                    ; preds = %291, %289
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1894
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1895
  %295 = icmp eq i8 %368, 5, !dbg !1896
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1897
  br i1 %295, label %296, label %299, !dbg !1897

; <label>:296:                                    ; preds = %294
  %297 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 9, i32 5), align 1, !dbg !1864, !tbaa !1008
  %298 = icmp eq i8 %297, 0, !dbg !1869
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1870
  br i1 %298, label %29, label %299, !dbg !1870

; <label>:299:                                    ; preds = %296, %294
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1894
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1895
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2095
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1929
  %300 = icmp eq i8 %1, 4, !dbg !1930
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1931
  br i1 %300, label %46, label %64, !dbg !1931

; <label>:301:                                    ; preds = %24
  %302 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 1, i32 5), align 1, !dbg !1823, !tbaa !1008
  %303 = icmp eq i8 %302, 0, !dbg !1828
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1829
  br i1 %303, label %9, label %304, !dbg !1829

; <label>:304:                                    ; preds = %301, %24
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1860
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1861
  %305 = icmp eq i8 %347, 3, !dbg !1862
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1863
  br i1 %305, label %306, label %309, !dbg !1863

; <label>:306:                                    ; preds = %304
  %307 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 2, i32 5), align 1, !dbg !1823, !tbaa !1008
  %308 = icmp eq i8 %307, 0, !dbg !1828
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1829
  br i1 %308, label %9, label %309, !dbg !1829

; <label>:309:                                    ; preds = %306, %304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1860
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1861
  %310 = icmp eq i8 %350, 3, !dbg !1862
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1863
  br i1 %310, label %311, label %314, !dbg !1863

; <label>:311:                                    ; preds = %309
  %312 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 3, i32 5), align 1, !dbg !1823, !tbaa !1008
  %313 = icmp eq i8 %312, 0, !dbg !1828
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1829
  br i1 %313, label %9, label %314, !dbg !1829

; <label>:314:                                    ; preds = %311, %309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1860
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1861
  %315 = icmp eq i8 %353, 3, !dbg !1862
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1863
  br i1 %315, label %316, label %319, !dbg !1863

; <label>:316:                                    ; preds = %314
  %317 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 4, i32 5), align 1, !dbg !1823, !tbaa !1008
  %318 = icmp eq i8 %317, 0, !dbg !1828
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1829
  br i1 %318, label %9, label %319, !dbg !1829

; <label>:319:                                    ; preds = %316, %314
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1860
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1861
  %320 = icmp eq i8 %356, 3, !dbg !1862
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1863
  br i1 %320, label %321, label %324, !dbg !1863

; <label>:321:                                    ; preds = %319
  %322 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 5, i32 5), align 1, !dbg !1823, !tbaa !1008
  %323 = icmp eq i8 %322, 0, !dbg !1828
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1829
  br i1 %323, label %9, label %324, !dbg !1829

; <label>:324:                                    ; preds = %321, %319
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1860
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1861
  %325 = icmp eq i8 %359, 3, !dbg !1862
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1863
  br i1 %325, label %326, label %329, !dbg !1863

; <label>:326:                                    ; preds = %324
  %327 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 6, i32 5), align 1, !dbg !1823, !tbaa !1008
  %328 = icmp eq i8 %327, 0, !dbg !1828
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1829
  br i1 %328, label %9, label %329, !dbg !1829

; <label>:329:                                    ; preds = %326, %324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1860
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1861
  %330 = icmp eq i8 %362, 3, !dbg !1862
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1863
  br i1 %330, label %331, label %334, !dbg !1863

; <label>:331:                                    ; preds = %329
  %332 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 7, i32 5), align 1, !dbg !1823, !tbaa !1008
  %333 = icmp eq i8 %332, 0, !dbg !1828
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1829
  br i1 %333, label %9, label %334, !dbg !1829

; <label>:334:                                    ; preds = %331, %329
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1860
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1861
  %335 = icmp eq i8 %365, 3, !dbg !1862
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1863
  br i1 %335, label %336, label %339, !dbg !1863

; <label>:336:                                    ; preds = %334
  %337 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 8, i32 5), align 1, !dbg !1823, !tbaa !1008
  %338 = icmp eq i8 %337, 0, !dbg !1828
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1829
  br i1 %338, label %9, label %339, !dbg !1829

; <label>:339:                                    ; preds = %336, %334
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1860
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1861
  %340 = icmp eq i8 %368, 3, !dbg !1862
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1863
  br i1 %340, label %341, label %344, !dbg !1863

; <label>:341:                                    ; preds = %339
  %342 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 9, i32 5), align 1, !dbg !1823, !tbaa !1008
  %343 = icmp eq i8 %342, 0, !dbg !1828
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1829
  br i1 %343, label %9, label %344, !dbg !1829

; <label>:344:                                    ; preds = %341, %339
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1860
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1861
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2096
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1895
  %345 = icmp eq i8 %1, 5, !dbg !1896
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1897
  br i1 %345, label %26, label %44, !dbg !1897

; <label>:346:                                    ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1822
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1815
  %347 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 2, i32 4), align 16, !dbg !1816, !tbaa !687
  %348 = icmp eq i8 %347, 0, !dbg !1820
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1821
  br i1 %348, label %208, label %349, !dbg !1821

; <label>:349:                                    ; preds = %346
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1822
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1815
  %350 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 3, i32 4), align 8, !dbg !1816, !tbaa !687
  %351 = icmp eq i8 %350, 0, !dbg !1820
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1821
  br i1 %351, label %208, label %352, !dbg !1821

; <label>:352:                                    ; preds = %349
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1822
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1815
  %353 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 4, i32 4), align 16, !dbg !1816, !tbaa !687
  %354 = icmp eq i8 %353, 0, !dbg !1820
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1821
  br i1 %354, label %208, label %355, !dbg !1821

; <label>:355:                                    ; preds = %352
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1822
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1815
  %356 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 5, i32 4), align 8, !dbg !1816, !tbaa !687
  %357 = icmp eq i8 %356, 0, !dbg !1820
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1821
  br i1 %357, label %208, label %358, !dbg !1821

; <label>:358:                                    ; preds = %355
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1822
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1815
  %359 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 6, i32 4), align 16, !dbg !1816, !tbaa !687
  %360 = icmp eq i8 %359, 0, !dbg !1820
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1821
  br i1 %360, label %208, label %361, !dbg !1821

; <label>:361:                                    ; preds = %358
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1822
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1815
  %362 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 7, i32 4), align 8, !dbg !1816, !tbaa !687
  %363 = icmp eq i8 %362, 0, !dbg !1820
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1821
  br i1 %363, label %208, label %364, !dbg !1821

; <label>:364:                                    ; preds = %361
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1822
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1815
  %365 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 8, i32 4), align 16, !dbg !1816, !tbaa !687
  %366 = icmp eq i8 %365, 0, !dbg !1820
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1821
  br i1 %366, label %208, label %367, !dbg !1821

; <label>:367:                                    ; preds = %364
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1822
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1815
  %368 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 9, i32 4), align 8, !dbg !1816, !tbaa !687
  %369 = icmp eq i8 %368, 0, !dbg !1820
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1821
  br i1 %369, label %208, label %370, !dbg !1821

; <label>:370:                                    ; preds = %367
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1822
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1815
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2097
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1861
  %371 = icmp eq i8 %1, 3, !dbg !1862
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1863
  br i1 %371, label %6, label %24, !dbg !1863
}

; Function Attrs: noredzone nounwind
define internal fastcc signext i8 @nd6_send_rs(%struct.netif*) unnamed_addr #0 !dbg !2098 {
  %2 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 0, !dbg !2111
  %3 = load i8, i8* %2, align 8, !dbg !2111, !tbaa !530
  %4 = and i8 %3, 16, !dbg !2111
  %5 = icmp eq i8 %4, 0, !dbg !2111
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2113
  %6 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, !dbg !2114
  %7 = select i1 %5, %struct.ip6_addr* getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip6_addr_any, i64 0, i32 0, i32 0), %struct.ip6_addr* %6, !dbg !2113
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store <4 x i32> <i32 767, i32 0, i32 0, i32 33554432>, <4 x i32>* bitcast (%struct.ip6_addr* @multicast_address to <4 x i32>*), align 16, !dbg !2117, !tbaa !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2119
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2119
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2119
  %8 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 23, !dbg !2119
  %9 = load i8, i8* %8, align 8, !dbg !2119, !tbaa !551
  %10 = add i8 %9, 1, !dbg !2119
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2119
  store i8 %10, i8* getelementptr inbounds (%struct.ip6_addr, %struct.ip6_addr* @multicast_address, i64 0, i32 1), align 16, !dbg !2119, !tbaa !747
  %11 = icmp ne %struct.ip6_addr* %7, getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip6_addr_any, i64 0, i32 0, i32 0), !dbg !2120
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2122
  br i1 %11, label %12, label %23, !dbg !2122

; <label>:12:                                     ; preds = %1
  %13 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 20, !dbg !2123
  %14 = load i8, i8* %13, align 4, !dbg !2123, !tbaa !662
  %15 = zext i8 %14 to i16, !dbg !2125
  %16 = add nuw nsw i16 %15, 2, !dbg !2126
  %17 = lshr i16 %16, 3, !dbg !2127
  %18 = add i8 %14, 2, !dbg !2128
  %19 = and i8 %18, 7, !dbg !2128
  %20 = icmp ne i8 %19, 0, !dbg !2129
  %21 = zext i1 %20 to i16, !dbg !2129
  %22 = add nuw nsw i16 %17, %21, !dbg !2130
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2131
  br label %23, !dbg !2131

; <label>:23:                                     ; preds = %12, %1
  %24 = phi i16 [ %22, %12 ], [ 0, %1 ], !dbg !2132
  %25 = shl nsw i16 %24, 3, !dbg !2133
  %26 = add nsw i16 %25, 8, !dbg !2134
  %27 = tail call %struct.pbuf* @pbuf_alloc(i32 54, i16 zeroext %26, i32 640) #7, !dbg !2135
  %28 = icmp eq %struct.pbuf* %27, null, !dbg !2137
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2139
  br i1 %28, label %29, label %32, !dbg !2139

; <label>:29:                                     ; preds = %23
  %30 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 6), align 2, !dbg !2140, !tbaa !864
  %31 = add i16 %30, 1, !dbg !2140
  store i16 %31, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 6), align 2, !dbg !2140, !tbaa !864
  br label %67, !dbg !2142

; <label>:32:                                     ; preds = %23
  %33 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %27, i64 0, i32 1, !dbg !2143
  %34 = bitcast i8** %33 to %struct.rs_header**, !dbg !2143
  %35 = load %struct.rs_header*, %struct.rs_header** %34, align 8, !dbg !2143, !tbaa !526
  %36 = getelementptr inbounds %struct.rs_header, %struct.rs_header* %35, i64 0, i32 0, !dbg !2145
  store i8 -123, i8* %36, align 1, !dbg !2146, !tbaa !2147
  %37 = getelementptr inbounds %struct.rs_header, %struct.rs_header* %35, i64 0, i32 1, !dbg !2149
  store i8 0, i8* %37, align 1, !dbg !2150, !tbaa !2151
  %38 = getelementptr inbounds %struct.rs_header, %struct.rs_header* %35, i64 0, i32 2, !dbg !2152
  store i16 0, i16* %38, align 1, !dbg !2153, !tbaa !2154
  %39 = getelementptr inbounds %struct.rs_header, %struct.rs_header* %35, i64 0, i32 3, !dbg !2155
  store i32 0, i32* %39, align 1, !dbg !2156, !tbaa !2157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2158
  %40 = getelementptr inbounds %struct.rs_header, %struct.rs_header* %35, i64 0, i32 0, !dbg !2158
  br i1 %11, label %41, label %51, !dbg !2158

; <label>:41:                                     ; preds = %32
  %42 = getelementptr inbounds %struct.rs_header, %struct.rs_header* %35, i64 1, i32 0, !dbg !2159
  store i8 1, i8* %42, align 1, !dbg !2163, !tbaa !1510
  %43 = trunc i16 %24 to i8, !dbg !2164
  %44 = getelementptr inbounds i8, i8* %40, i64 9, !dbg !2165
  store i8 %43, i8* %44, align 1, !dbg !2166, !tbaa !609
  %45 = getelementptr inbounds i8, i8* %40, i64 10, !dbg !2167
  %46 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 0, !dbg !2167
  %47 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 20, !dbg !2167
  %48 = load i8, i8* %47, align 4, !dbg !2167, !tbaa !662
  %49 = zext i8 %48 to i64, !dbg !2167
  %50 = tail call i8* @memcpy(i8* nonnull %45, i8* nonnull %46, i64 %49) #7, !dbg !2167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2168
  br label %51, !dbg !2168

; <label>:51:                                     ; preds = %32, %41
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2169
  %52 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 16, !dbg !2169
  %53 = load i16, i16* %52, align 8, !dbg !2169, !tbaa !1792
  %54 = and i16 %53, 16, !dbg !2169
  %55 = icmp eq i16 %54, 0, !dbg !2169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2171
  br i1 %55, label %60, label %56, !dbg !2171

; <label>:56:                                     ; preds = %51
  %57 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %27, i64 0, i32 3, !dbg !2172
  %58 = load i16, i16* %57, align 2, !dbg !2172, !tbaa !535
  %59 = tail call zeroext i16 @ip6_chksum_pseudo(%struct.pbuf* nonnull %27, i8 zeroext 58, i16 zeroext %58, %struct.ip6_addr* %7, %struct.ip6_addr* nonnull @multicast_address) #7, !dbg !2174
  store i16 %59, i16* %38, align 1, !dbg !2175, !tbaa !2154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2176
  br label %60, !dbg !2176

; <label>:60:                                     ; preds = %51, %56
  %61 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 0), align 2, !dbg !2177, !tbaa !1800
  %62 = add i16 %61, 1, !dbg !2177
  store i16 %62, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 0), align 2, !dbg !2177, !tbaa !1800
  %63 = icmp eq %struct.ip6_addr* %7, getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip6_addr_any, i64 0, i32 0, i32 0), !dbg !2178
  %64 = select i1 %63, %struct.ip6_addr* null, %struct.ip6_addr* %7, !dbg !2179
  %65 = tail call signext i8 @ip6_output_if(%struct.pbuf* nonnull %27, %struct.ip6_addr* %64, %struct.ip6_addr* nonnull @multicast_address, i8 zeroext -1, i8 zeroext 0, i8 zeroext 58, %struct.netif* nonnull %0) #7, !dbg !2180
  %66 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %27) #7, !dbg !2182
  br label %67, !dbg !2183

; <label>:67:                                     ; preds = %60, %29
  %68 = phi i8 [ -2, %29 ], [ %65, %60 ], !dbg !2132
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2185
  ret i8 %68, !dbg !2185
}

; Function Attrs: noredzone
declare dso_local zeroext i16 @lwip_htons(i16 zeroext) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @lwip_htonl(i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @pbuf_try_get_at(%struct.pbuf*, i16 zeroext) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local zeroext i8 @pbuf_get_at(%struct.pbuf*, i16 zeroext) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local zeroext i16 @pbuf_copy_partial(%struct.pbuf*, i8*, i16 zeroext, i16 zeroext) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @nd6_tmr() local_unnamed_addr #0 !dbg !2186 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2211
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2213
  br label %1, !dbg !2213

; <label>:1:                                      ; preds = %77, %0
  %2 = phi i64 [ 0, %0 ], [ %78, %77 ]
  %3 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %2, !dbg !2214
  %4 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %2, i32 4, !dbg !2217
  %5 = load i8, i8* %4, align 8, !dbg !2217, !tbaa !687
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2218
  switch i8 %5, label %77 [
    i8 1, label %6
    i8 2, label %29
    i8 3, label %42
    i8 4, label %46
    i8 5, label %53
  ], !dbg !2218

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %2, i32 6, i32 0, !dbg !2219
  %8 = load i32, i32* %7, align 4, !dbg !2219, !tbaa !530
  %9 = icmp ugt i32 %8, 2, !dbg !2222
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2223
  br i1 %9, label %10, label %24, !dbg !2223

; <label>:10:                                     ; preds = %6
  %11 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %2, i32 5, !dbg !2224
  %12 = load i8, i8* %11, align 1, !dbg !2224, !tbaa !1008
  %13 = icmp eq i8 %12, 0, !dbg !2225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2226
  br i1 %13, label %14, label %24, !dbg !2226

; <label>:14:                                     ; preds = %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2230
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2232
  %15 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %2, i32 3, !dbg !2233
  %16 = load %struct.nd6_q_entry*, %struct.nd6_q_entry** %15, align 8, !dbg !2233, !tbaa !725
  %17 = icmp eq %struct.nd6_q_entry* %16, null, !dbg !2234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2235
  br i1 %17, label %19, label %18, !dbg !2235

; <label>:18:                                     ; preds = %14
  tail call fastcc void @nd6_free_q(%struct.nd6_q_entry* nonnull %16) #7, !dbg !2236
  store %struct.nd6_q_entry* null, %struct.nd6_q_entry** %15, align 8, !dbg !2237, !tbaa !725
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2238
  br label %19, !dbg !2238

; <label>:19:                                     ; preds = %14, %18
  store i8 0, i8* %4, align 8, !dbg !2239, !tbaa !687
  store i8 0, i8* %11, align 1, !dbg !2240, !tbaa !1008
  %20 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %2, i32 1, !dbg !2241
  store %struct.netif* null, %struct.netif** %20, align 8, !dbg !2242, !tbaa !718
  store i32 0, i32* %7, align 4, !dbg !2243, !tbaa !530
  %21 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %2, i32 0, i32 0, i64 0, !dbg !2244
  %22 = bitcast i32* %21 to <4 x i32>*, !dbg !2244
  store <4 x i32> zeroinitializer, <4 x i32>* %22, align 8, !dbg !2244, !tbaa !548
  %23 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %2, i32 0, i32 1, !dbg !2244
  store i8 0, i8* %23, align 8, !dbg !2244, !tbaa !638
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2245
  br label %76, !dbg !2246

; <label>:24:                                     ; preds = %10, %6
  %25 = add i32 %8, 1, !dbg !2247
  store i32 %25, i32* %7, align 4, !dbg !2247, !tbaa !530
  %26 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %2, i32 1, !dbg !2252
  %27 = load %struct.netif*, %struct.netif** %26, align 8, !dbg !2252, !tbaa !718
  %28 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %3, i64 0, i32 0, !dbg !2253
  tail call fastcc void @nd6_send_ns(%struct.netif* %27, %struct.ip6_addr* nonnull %28, i8 zeroext 1) #7, !dbg !2254
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2255
  br label %76

; <label>:29:                                     ; preds = %1
  %30 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %2, i32 3, !dbg !2256
  %31 = load %struct.nd6_q_entry*, %struct.nd6_q_entry** %30, align 8, !dbg !2256, !tbaa !725
  %32 = icmp eq %struct.nd6_q_entry* %31, null, !dbg !2258
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2259
  br i1 %32, label %35, label %33, !dbg !2259

; <label>:33:                                     ; preds = %29
  %34 = trunc i64 %2 to i8, !dbg !2260
  tail call fastcc void @nd6_send_q(i8 signext %34) #8, !dbg !2260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2262
  br label %35, !dbg !2262

; <label>:35:                                     ; preds = %29, %33
  %36 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %2, i32 6, i32 0, !dbg !2263
  %37 = load i32, i32* %36, align 4, !dbg !2263, !tbaa !530
  %38 = icmp ult i32 %37, 1001, !dbg !2265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2266
  br i1 %38, label %39, label %40, !dbg !2266

; <label>:39:                                     ; preds = %35
  store i8 3, i8* %4, align 8, !dbg !2267, !tbaa !687
  store i32 0, i32* %36, align 4, !dbg !2269, !tbaa !530
  br label %76, !dbg !2270

; <label>:40:                                     ; preds = %35
  %41 = add i32 %37, -1000, !dbg !2271
  store i32 %41, i32* %36, align 4, !dbg !2271, !tbaa !530
  br label %76

; <label>:42:                                     ; preds = %1
  %43 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %2, i32 6, i32 0, !dbg !2273
  %44 = load i32, i32* %43, align 4, !dbg !2274, !tbaa !530
  %45 = add i32 %44, 1, !dbg !2274
  store i32 %45, i32* %43, align 4, !dbg !2274, !tbaa !530
  br label %76, !dbg !2275

; <label>:46:                                     ; preds = %1
  %47 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %2, i32 6, i32 0, !dbg !2276
  %48 = load i32, i32* %47, align 4, !dbg !2276, !tbaa !530
  %49 = icmp ult i32 %48, 2, !dbg !2278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2279
  br i1 %49, label %50, label %51, !dbg !2279

; <label>:50:                                     ; preds = %46
  store i8 5, i8* %4, align 8, !dbg !2280, !tbaa !687
  store i32 0, i32* %47, align 4, !dbg !2282, !tbaa !530
  br label %76, !dbg !2283

; <label>:51:                                     ; preds = %46
  %52 = add i32 %48, -1, !dbg !2284
  store i32 %52, i32* %47, align 4, !dbg !2284, !tbaa !530
  br label %76

; <label>:53:                                     ; preds = %1
  %54 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %2, i32 6, i32 0, !dbg !2286
  %55 = load i32, i32* %54, align 4, !dbg !2286, !tbaa !530
  %56 = icmp ugt i32 %55, 2, !dbg !2288
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2289
  br i1 %56, label %57, label %71, !dbg !2289

; <label>:57:                                     ; preds = %53
  %58 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %2, i32 5, !dbg !2290
  %59 = load i8, i8* %58, align 1, !dbg !2290, !tbaa !1008
  %60 = icmp eq i8 %59, 0, !dbg !2291
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2292
  br i1 %60, label %61, label %71, !dbg !2292

; <label>:61:                                     ; preds = %57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2296
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2297
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2298
  %62 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %2, i32 3, !dbg !2299
  %63 = load %struct.nd6_q_entry*, %struct.nd6_q_entry** %62, align 8, !dbg !2299, !tbaa !725
  %64 = icmp eq %struct.nd6_q_entry* %63, null, !dbg !2300
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2301
  br i1 %64, label %66, label %65, !dbg !2301

; <label>:65:                                     ; preds = %61
  tail call fastcc void @nd6_free_q(%struct.nd6_q_entry* nonnull %63) #7, !dbg !2302
  store %struct.nd6_q_entry* null, %struct.nd6_q_entry** %62, align 8, !dbg !2303, !tbaa !725
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2304
  br label %66, !dbg !2304

; <label>:66:                                     ; preds = %61, %65
  store i8 0, i8* %4, align 8, !dbg !2305, !tbaa !687
  store i8 0, i8* %58, align 1, !dbg !2306, !tbaa !1008
  %67 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %2, i32 1, !dbg !2307
  store %struct.netif* null, %struct.netif** %67, align 8, !dbg !2308, !tbaa !718
  store i32 0, i32* %54, align 4, !dbg !2309, !tbaa !530
  %68 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %2, i32 0, i32 0, i64 0, !dbg !2310
  %69 = bitcast i32* %68 to <4 x i32>*, !dbg !2310
  store <4 x i32> zeroinitializer, <4 x i32>* %69, align 8, !dbg !2310, !tbaa !548
  %70 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %2, i32 0, i32 1, !dbg !2310
  store i8 0, i8* %70, align 8, !dbg !2310, !tbaa !638
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2310
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2311
  br label %76, !dbg !2312

; <label>:71:                                     ; preds = %57, %53
  %72 = add i32 %55, 1, !dbg !2313
  store i32 %72, i32* %54, align 4, !dbg !2313, !tbaa !530
  %73 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %2, i32 1, !dbg !2318
  %74 = load %struct.netif*, %struct.netif** %73, align 8, !dbg !2318, !tbaa !718
  %75 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %3, i64 0, i32 0, !dbg !2319
  tail call fastcc void @nd6_send_ns(%struct.netif* %74, %struct.ip6_addr* nonnull %75, i8 zeroext 0) #7, !dbg !2320
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2321
  br label %76

; <label>:76:                                     ; preds = %66, %71, %50, %51, %39, %40, %19, %24, %42
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %77, !dbg !2322

; <label>:77:                                     ; preds = %76, %1
  %78 = add nuw nsw i64 %2, 1, !dbg !2322
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2323
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2213
  %79 = icmp eq i64 %78, 10, !dbg !2324
  br i1 %79, label %80, label %1, !dbg !2213, !llvm.loop !2325

; <label>:80:                                     ; preds = %77
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2327
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2329
  %81 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 0, i32 3), align 4, !dbg !2330, !tbaa !2333
  %82 = add i32 %81, 1, !dbg !2330
  store i32 %82, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 0, i32 3), align 4, !dbg !2330, !tbaa !2333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2334
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2329
  %83 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 1, i32 3), align 4, !dbg !2330, !tbaa !2333
  %84 = add i32 %83, 1, !dbg !2330
  store i32 %84, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 1, i32 3), align 4, !dbg !2330, !tbaa !2333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2334
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2329
  %85 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 2, i32 3), align 4, !dbg !2330, !tbaa !2333
  %86 = add i32 %85, 1, !dbg !2330
  store i32 %86, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 2, i32 3), align 4, !dbg !2330, !tbaa !2333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2334
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2329
  %87 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 3, i32 3), align 4, !dbg !2330, !tbaa !2333
  %88 = add i32 %87, 1, !dbg !2330
  store i32 %88, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 3, i32 3), align 4, !dbg !2330, !tbaa !2333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2334
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2329
  %89 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 4, i32 3), align 4, !dbg !2330, !tbaa !2333
  %90 = add i32 %89, 1, !dbg !2330
  store i32 %90, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 4, i32 3), align 4, !dbg !2330, !tbaa !2333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2334
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2329
  %91 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 5, i32 3), align 4, !dbg !2330, !tbaa !2333
  %92 = add i32 %91, 1, !dbg !2330
  store i32 %92, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 5, i32 3), align 4, !dbg !2330, !tbaa !2333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2334
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2329
  %93 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 6, i32 3), align 4, !dbg !2330, !tbaa !2333
  %94 = add i32 %93, 1, !dbg !2330
  store i32 %94, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 6, i32 3), align 4, !dbg !2330, !tbaa !2333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2334
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2329
  %95 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 7, i32 3), align 4, !dbg !2330, !tbaa !2333
  %96 = add i32 %95, 1, !dbg !2330
  store i32 %96, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 7, i32 3), align 4, !dbg !2330, !tbaa !2333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2334
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2329
  %97 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 8, i32 3), align 4, !dbg !2330, !tbaa !2333
  %98 = add i32 %97, 1, !dbg !2330
  store i32 %98, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 8, i32 3), align 4, !dbg !2330, !tbaa !2333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2334
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2329
  %99 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 9, i32 3), align 4, !dbg !2330, !tbaa !2333
  %100 = add i32 %99, 1, !dbg !2330
  store i32 %100, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 9, i32 3), align 4, !dbg !2330, !tbaa !2333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2334
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2329
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2335
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2336
  br label %101, !dbg !2336

; <label>:101:                                    ; preds = %155, %80
  %102 = phi i64 [ 0, %80 ], [ %156, %155 ]
  %103 = getelementptr inbounds [3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 %102, i32 0, !dbg !2337
  %104 = load %struct.nd6_neighbor_cache_entry*, %struct.nd6_neighbor_cache_entry** %103, align 16, !dbg !2337, !tbaa !929
  %105 = icmp eq %struct.nd6_neighbor_cache_entry* %104, null, !dbg !2338
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2339
  br i1 %105, label %155, label %106, !dbg !2339

; <label>:106:                                    ; preds = %101
  %107 = getelementptr inbounds [3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 %102, i32 1, !dbg !2340
  %108 = load i32, i32* %107, align 8, !dbg !2340, !tbaa !1047
  %109 = icmp ult i32 %108, 2, !dbg !2341
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2342
  br i1 %109, label %110, label %152, !dbg !2342

; <label>:110:                                    ; preds = %106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2344
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2346
  %111 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %104, i64 0, i32 0, i32 0, i64 0
  %112 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %104, i64 0, i32 0, i32 0, i64 1
  %113 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %104, i64 0, i32 0, i32 0, i64 2
  %114 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %104, i64 0, i32 0, i32 0, i64 3
  %115 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %104, i64 0, i32 0, i32 1
  br label %116, !dbg !2346

; <label>:116:                                    ; preds = %146, %110
  %117 = phi i64 [ 0, %110 ], [ %147, %146 ]
  %118 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %117, i32 1, i32 0, i64 0, !dbg !2347
  %119 = load i32, i32* %118, align 4, !dbg !2347, !tbaa !548
  %120 = load i32, i32* %111, align 8, !dbg !2347, !tbaa !548
  %121 = icmp eq i32 %119, %120, !dbg !2347
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2347
  br i1 %121, label %122, label %146, !dbg !2347

; <label>:122:                                    ; preds = %116
  %123 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %117, i32 1, i32 0, i64 1, !dbg !2347
  %124 = load i32, i32* %123, align 4, !dbg !2347, !tbaa !548
  %125 = load i32, i32* %112, align 4, !dbg !2347, !tbaa !548
  %126 = icmp eq i32 %124, %125, !dbg !2347
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2347
  br i1 %126, label %127, label %146, !dbg !2347

; <label>:127:                                    ; preds = %122
  %128 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %117, i32 1, i32 0, i64 2, !dbg !2347
  %129 = load i32, i32* %128, align 4, !dbg !2347, !tbaa !548
  %130 = load i32, i32* %113, align 8, !dbg !2347, !tbaa !548
  %131 = icmp eq i32 %129, %130, !dbg !2347
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2347
  br i1 %131, label %132, label %146, !dbg !2347

; <label>:132:                                    ; preds = %127
  %133 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %117, i32 1, i32 0, i64 3, !dbg !2347
  %134 = load i32, i32* %133, align 4, !dbg !2347, !tbaa !548
  %135 = load i32, i32* %114, align 4, !dbg !2347, !tbaa !548
  %136 = icmp eq i32 %134, %135, !dbg !2347
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2347
  br i1 %136, label %137, label %146, !dbg !2347

; <label>:137:                                    ; preds = %132
  %138 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %117, i32 1, i32 1, !dbg !2347
  %139 = load i8, i8* %138, align 4, !dbg !2347, !tbaa !1503
  %140 = load i8, i8* %115, align 8, !dbg !2347, !tbaa !638
  %141 = icmp eq i8 %139, %140, !dbg !2347
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2351
  br i1 %141, label %142, label %146, !dbg !2351

; <label>:142:                                    ; preds = %137
  %143 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %117, i32 0, i32 0, i64 0, !dbg !2352
  %144 = bitcast i32* %143 to <4 x i32>*, !dbg !2352
  store <4 x i32> zeroinitializer, <4 x i32>* %144, align 16, !dbg !2352, !tbaa !548
  %145 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %117, i32 0, i32 1, !dbg !2352
  store i8 0, i8* %145, align 16, !dbg !2352, !tbaa !1478
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2355
  br label %146, !dbg !2355

; <label>:146:                                    ; preds = %116, %122, %127, %132, %137, %142
  %147 = add nuw nsw i64 %117, 1, !dbg !2356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2357
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2346
  %148 = icmp eq i64 %147, 10, !dbg !2358
  br i1 %148, label %149, label %116, !dbg !2346, !llvm.loop !2359

; <label>:149:                                    ; preds = %146
  %150 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %104, i64 0, i32 5, !dbg !2361
  store i8 0, i8* %150, align 1, !dbg !2362, !tbaa !1008
  store %struct.nd6_neighbor_cache_entry* null, %struct.nd6_neighbor_cache_entry** %103, align 16, !dbg !2363, !tbaa !929
  store i32 0, i32* %107, align 8, !dbg !2364, !tbaa !1047
  %151 = getelementptr inbounds [3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 %102, i32 2, !dbg !2365
  store i8 0, i8* %151, align 4, !dbg !2366, !tbaa !1070
  br label %154, !dbg !2367

; <label>:152:                                    ; preds = %106
  %153 = add i32 %108, -1, !dbg !2368
  store i32 %153, i32* %107, align 8, !dbg !2368, !tbaa !1047
  br label %154

; <label>:154:                                    ; preds = %149, %152
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %155, !dbg !2370

; <label>:155:                                    ; preds = %154, %101
  %156 = add nuw nsw i64 %102, 1, !dbg !2370
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2371
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2336
  %157 = icmp eq i64 %156, 3, !dbg !2372
  br i1 %157, label %158, label %101, !dbg !2336, !llvm.loop !2373

; <label>:158:                                    ; preds = %155
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2377
  %159 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 0, i32 1), align 8, !dbg !2378, !tbaa !1207
  %160 = icmp eq %struct.netif* %159, null, !dbg !2382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2383
  br i1 %160, label %168, label %161, !dbg !2383

; <label>:161:                                    ; preds = %158
  %162 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 0, i32 2), align 16, !dbg !2384, !tbaa !1237
  %163 = icmp ult i32 %162, 2, !dbg !2387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2388
  br i1 %163, label %164, label %165, !dbg !2388

; <label>:164:                                    ; preds = %161
  store i32 0, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 0, i32 2), align 16, !dbg !2389, !tbaa !1237
  store %struct.netif* null, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 0, i32 1), align 8, !dbg !2391, !tbaa !1207
  br label %167, !dbg !2392

; <label>:165:                                    ; preds = %161
  %166 = add i32 %162, -1, !dbg !2393
  store i32 %166, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 0, i32 2), align 16, !dbg !2393, !tbaa !1237
  br label %167

; <label>:167:                                    ; preds = %164, %165
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %168, !dbg !2395

; <label>:168:                                    ; preds = %167, %158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2395
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2377
  %169 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 1, i32 1), align 8, !dbg !2378, !tbaa !1207
  %170 = icmp eq %struct.netif* %169, null, !dbg !2382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2383
  br i1 %170, label %291, label %284, !dbg !2383

; <label>:171:                                    ; preds = %321, %241
  %172 = phi %struct.netif* [ %243, %241 ], [ %322, %321 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2397
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2398
  %173 = getelementptr inbounds %struct.netif, %struct.netif* %172, i64 0, i32 21
  br label %174, !dbg !2398

; <label>:174:                                    ; preds = %238, %171
  %175 = phi i64 [ 0, %171 ], [ %239, %238 ]
  %176 = getelementptr inbounds %struct.netif, %struct.netif* %172, i64 0, i32 5, i64 %175, !dbg !2399
  %177 = load i8, i8* %176, align 1, !dbg !2399, !tbaa !530
  %178 = icmp eq i8 %177, 0, !dbg !2401
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2402
  br i1 %178, label %206, label %179, !dbg !2402

; <label>:179:                                    ; preds = %174
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2403
  %180 = getelementptr inbounds %struct.netif, %struct.netif* %172, i64 0, i32 6, i64 %175, !dbg !2403
  %181 = load i32, i32* %180, align 4, !dbg !2403, !tbaa !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2403
  %182 = icmp eq i32 %181, 0, !dbg !2403
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2404
  br i1 %182, label %206, label %183, !dbg !2404

; <label>:183:                                    ; preds = %179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2405
  %184 = load i32, i32* %180, align 4, !dbg !2405, !tbaa !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2405
  %185 = icmp ult i32 %184, 2, !dbg !2407
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2409
  br i1 %185, label %186, label %189, !dbg !2409

; <label>:186:                                    ; preds = %183
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2410
  store i32 0, i32* %180, align 4, !dbg !2413, !tbaa !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2413
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2416
  %187 = getelementptr inbounds %struct.netif, %struct.netif* %172, i64 0, i32 7, i64 %175, !dbg !2418
  store i32 0, i32* %187, align 4, !dbg !2418, !tbaa !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2418
  %188 = trunc i64 %175 to i8, !dbg !2421
  tail call void @netif_ip6_addr_set_state(%struct.netif* nonnull %172, i8 signext %188, i8 zeroext 0) #7, !dbg !2421
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2422
  br label %205, !dbg !2422

; <label>:189:                                    ; preds = %183
  %190 = icmp eq i32 %184, -1, !dbg !2423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2426
  br i1 %190, label %193, label %191, !dbg !2426

; <label>:191:                                    ; preds = %189
  %192 = add i32 %184, -1, !dbg !2427
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2429
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2431
  store i32 %192, i32* %180, align 4, !dbg !2433, !tbaa !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2433
  br label %193, !dbg !2433

; <label>:193:                                    ; preds = %191, %189
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2436
  %194 = getelementptr inbounds %struct.netif, %struct.netif* %172, i64 0, i32 7, i64 %175, !dbg !2436
  %195 = load i32, i32* %194, align 4, !dbg !2436, !tbaa !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2436
  %196 = icmp ult i32 %195, 2, !dbg !2437
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2439
  br i1 %196, label %197, label %201, !dbg !2439

; <label>:197:                                    ; preds = %193
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2440
  store i32 0, i32* %194, align 4, !dbg !2443, !tbaa !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2443
  %198 = icmp eq i8 %177, 48, !dbg !2446
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2448
  br i1 %198, label %199, label %205, !dbg !2448

; <label>:199:                                    ; preds = %197
  %200 = trunc i64 %175 to i8, !dbg !2449
  tail call void @netif_ip6_addr_set_state(%struct.netif* nonnull %172, i8 signext %200, i8 zeroext 16) #7, !dbg !2449
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2449
  br label %205, !dbg !2449

; <label>:201:                                    ; preds = %193
  %202 = icmp eq i32 %195, -1, !dbg !2450
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2452
  br i1 %202, label %205, label %203, !dbg !2452

; <label>:203:                                    ; preds = %201
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2453
  %204 = add i32 %195, -1, !dbg !2456
  store i32 %204, i32* %194, align 4, !dbg !2457, !tbaa !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2457
  br label %205, !dbg !2457

; <label>:205:                                    ; preds = %199, %197, %203, %201, %186
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2460
  br label %206, !dbg !2460

; <label>:206:                                    ; preds = %205, %179, %174
  %207 = load i8, i8* %176, align 1, !dbg !2461, !tbaa !530
  %208 = zext i8 %207 to i32, !dbg !2462
  %209 = and i32 %208, 8, !dbg !2462
  %210 = icmp eq i32 %209, 0, !dbg !2462
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2464
  br i1 %210, label %238, label %211, !dbg !2464

; <label>:211:                                    ; preds = %206
  %212 = and i32 %208, 7, !dbg !2465
  %213 = icmp eq i32 %212, 0, !dbg !2468
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2469
  br i1 %213, label %226, label %214, !dbg !2469

; <label>:214:                                    ; preds = %211
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2470
  %215 = getelementptr inbounds %struct.netif, %struct.netif* %172, i64 0, i32 6, i64 %175, !dbg !2470
  %216 = load i32, i32* %215, align 4, !dbg !2470, !tbaa !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2470
  %217 = icmp eq i32 %216, 0, !dbg !2470
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2473
  br i1 %217, label %223, label %218, !dbg !2473

; <label>:218:                                    ; preds = %214
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2474
  %219 = getelementptr inbounds %struct.netif, %struct.netif* %172, i64 0, i32 7, i64 %175, !dbg !2474
  %220 = load i32, i32* %219, align 4, !dbg !2474, !tbaa !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2474
  %221 = icmp eq i32 %220, 0, !dbg !2475
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2476
  br i1 %221, label %222, label %223, !dbg !2476

; <label>:222:                                    ; preds = %218
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2477
  br label %223, !dbg !2477

; <label>:223:                                    ; preds = %222, %218, %214
  %224 = phi i8 [ 48, %214 ], [ 16, %222 ], [ 48, %218 ], !dbg !2479
  %225 = trunc i64 %175 to i8, !dbg !2480
  tail call void @netif_ip6_addr_set_state(%struct.netif* nonnull %172, i8 signext %225, i8 zeroext %224) #7, !dbg !2480
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2481
  br label %238, !dbg !2481

; <label>:226:                                    ; preds = %211
  %227 = load i8, i8* %173, align 1, !dbg !2482, !tbaa !2484
  %228 = zext i8 %227 to i32, !dbg !2482
  %229 = and i32 %228, 1, !dbg !2482
  %230 = icmp eq i32 %229, 0, !dbg !2482
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2485
  br i1 %230, label %238, label %231, !dbg !2485

; <label>:231:                                    ; preds = %226
  %232 = and i32 %228, 4, !dbg !2486
  %233 = icmp eq i32 %232, 0, !dbg !2486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2487
  br i1 %233, label %238, label %234, !dbg !2487

; <label>:234:                                    ; preds = %231
  %235 = add i8 %207, 1, !dbg !2488
  %236 = trunc i64 %175 to i8, !dbg !2490
  tail call void @netif_ip6_addr_set_state(%struct.netif* nonnull %172, i8 signext %236, i8 zeroext %235) #7, !dbg !2490
  %237 = getelementptr inbounds %struct.netif, %struct.netif* %172, i64 0, i32 4, i64 %175, i32 0, i32 0, !dbg !2491
  tail call fastcc void @nd6_send_ns(%struct.netif* nonnull %172, %struct.ip6_addr* nonnull %237, i8 zeroext 5) #8, !dbg !2492
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2493
  br label %238, !dbg !2493

; <label>:238:                                    ; preds = %231, %226, %206, %223, %234
  %239 = add nuw nsw i64 %175, 1, !dbg !2494
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2495
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2398
  %240 = icmp eq i64 %239, 3, !dbg !2496
  br i1 %240, label %241, label %174, !dbg !2398, !llvm.loop !2497

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds %struct.netif, %struct.netif* %172, i64 0, i32 0, !dbg !2499
  %243 = load %struct.netif*, %struct.netif** %242, align 8, !dbg !2499, !tbaa !2500
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2499
  %244 = icmp eq %struct.netif* %243, null, !dbg !2499
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2501
  br i1 %244, label %245, label %171, !dbg !2501, !llvm.loop !2502

; <label>:245:                                    ; preds = %241, %321
  %246 = load i8, i8* @nd6_tmr_rs_reduction, align 1, !dbg !2504, !tbaa !530
  %247 = icmp eq i8 %246, 0, !dbg !2504
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2506
  br i1 %247, label %248, label %281, !dbg !2506

; <label>:248:                                    ; preds = %245
  store i8 3, i8* @nd6_tmr_rs_reduction, align 1, !dbg !2507, !tbaa !530
  %249 = load %struct.netif*, %struct.netif** @netif_list, align 8, !dbg !2509, !tbaa !2511
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2509
  %250 = icmp eq %struct.netif* %249, null, !dbg !2512
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2509
  br i1 %250, label %283, label %251, !dbg !2509

; <label>:251:                                    ; preds = %248, %277
  %252 = phi %struct.netif* [ %279, %277 ], [ %249, %248 ]
  %253 = getelementptr inbounds %struct.netif, %struct.netif* %252, i64 0, i32 25, !dbg !2514
  %254 = load i8, i8* %253, align 2, !dbg !2514, !tbaa !906
  %255 = icmp eq i8 %254, 0, !dbg !2517
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2518
  br i1 %255, label %277, label %256, !dbg !2518

; <label>:256:                                    ; preds = %251
  %257 = getelementptr inbounds %struct.netif, %struct.netif* %252, i64 0, i32 21, !dbg !2519
  %258 = load i8, i8* %257, align 1, !dbg !2519, !tbaa !2484
  %259 = zext i8 %258 to i32, !dbg !2519
  %260 = and i32 %259, 1, !dbg !2519
  %261 = icmp eq i32 %260, 0, !dbg !2519
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2520
  br i1 %261, label %277, label %262, !dbg !2520

; <label>:262:                                    ; preds = %256
  %263 = and i32 %259, 4, !dbg !2521
  %264 = icmp eq i32 %263, 0, !dbg !2521
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2522
  br i1 %264, label %277, label %265, !dbg !2522

; <label>:265:                                    ; preds = %262
  %266 = getelementptr inbounds %struct.netif, %struct.netif* %252, i64 0, i32 5, i64 0, !dbg !2523
  %267 = load i8, i8* %266, align 8, !dbg !2523, !tbaa !530
  %268 = icmp eq i8 %267, 0, !dbg !2523
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2524
  br i1 %268, label %277, label %269, !dbg !2524

; <label>:269:                                    ; preds = %265
  %270 = icmp eq i8 %267, 64, !dbg !2525
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2526
  br i1 %270, label %277, label %271, !dbg !2526

; <label>:271:                                    ; preds = %269
  %272 = tail call fastcc signext i8 @nd6_send_rs(%struct.netif* nonnull %252) #8, !dbg !2527
  %273 = icmp eq i8 %272, 0, !dbg !2530
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2531
  br i1 %273, label %274, label %277, !dbg !2531

; <label>:274:                                    ; preds = %271
  %275 = load i8, i8* %253, align 2, !dbg !2532, !tbaa !906
  %276 = add i8 %275, -1, !dbg !2532
  store i8 %276, i8* %253, align 2, !dbg !2532, !tbaa !906
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2534
  br label %277, !dbg !2534

; <label>:277:                                    ; preds = %262, %256, %251, %265, %269, %274, %271
  %278 = getelementptr inbounds %struct.netif, %struct.netif* %252, i64 0, i32 0, !dbg !2512
  %279 = load %struct.netif*, %struct.netif** %278, align 8, !dbg !2512, !tbaa !2500
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2512
  %280 = icmp eq %struct.netif* %279, null, !dbg !2512
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2509
  br i1 %280, label %283, label %251, !dbg !2509, !llvm.loop !2535

; <label>:281:                                    ; preds = %245
  %282 = add i8 %246, -1, !dbg !2537
  store i8 %282, i8* @nd6_tmr_rs_reduction, align 1, !dbg !2537, !tbaa !530
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %283

; <label>:283:                                    ; preds = %277, %248, %281
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2539
  ret void, !dbg !2539

; <label>:284:                                    ; preds = %168
  %285 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 1, i32 2), align 8, !dbg !2384, !tbaa !1237
  %286 = icmp ult i32 %285, 2, !dbg !2387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2388
  br i1 %286, label %289, label %287, !dbg !2388

; <label>:287:                                    ; preds = %284
  %288 = add i32 %285, -1, !dbg !2393
  store i32 %288, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 1, i32 2), align 8, !dbg !2393, !tbaa !1237
  br label %290

; <label>:289:                                    ; preds = %284
  store i32 0, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 1, i32 2), align 8, !dbg !2389, !tbaa !1237
  store %struct.netif* null, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 1, i32 1), align 8, !dbg !2391, !tbaa !1207
  br label %290, !dbg !2392

; <label>:290:                                    ; preds = %287, %289
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %291, !dbg !2395

; <label>:291:                                    ; preds = %290, %168
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2395
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2377
  %292 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 2, i32 1), align 8, !dbg !2378, !tbaa !1207
  %293 = icmp eq %struct.netif* %292, null, !dbg !2382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2383
  br i1 %293, label %301, label %294, !dbg !2383

; <label>:294:                                    ; preds = %291
  %295 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 2, i32 2), align 16, !dbg !2384, !tbaa !1237
  %296 = icmp ult i32 %295, 2, !dbg !2387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2388
  br i1 %296, label %299, label %297, !dbg !2388

; <label>:297:                                    ; preds = %294
  %298 = add i32 %295, -1, !dbg !2393
  store i32 %298, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 2, i32 2), align 16, !dbg !2393, !tbaa !1237
  br label %300

; <label>:299:                                    ; preds = %294
  store i32 0, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 2, i32 2), align 16, !dbg !2389, !tbaa !1237
  store %struct.netif* null, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 2, i32 1), align 8, !dbg !2391, !tbaa !1207
  br label %300, !dbg !2392

; <label>:300:                                    ; preds = %297, %299
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %301, !dbg !2395

; <label>:301:                                    ; preds = %300, %291
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2395
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2377
  %302 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 3, i32 1), align 8, !dbg !2378, !tbaa !1207
  %303 = icmp eq %struct.netif* %302, null, !dbg !2382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2383
  br i1 %303, label %311, label %304, !dbg !2383

; <label>:304:                                    ; preds = %301
  %305 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 3, i32 2), align 8, !dbg !2384, !tbaa !1237
  %306 = icmp ult i32 %305, 2, !dbg !2387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2388
  br i1 %306, label %309, label %307, !dbg !2388

; <label>:307:                                    ; preds = %304
  %308 = add i32 %305, -1, !dbg !2393
  store i32 %308, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 3, i32 2), align 8, !dbg !2393, !tbaa !1237
  br label %310

; <label>:309:                                    ; preds = %304
  store i32 0, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 3, i32 2), align 8, !dbg !2389, !tbaa !1237
  store %struct.netif* null, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 3, i32 1), align 8, !dbg !2391, !tbaa !1207
  br label %310, !dbg !2392

; <label>:310:                                    ; preds = %307, %309
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %311, !dbg !2395

; <label>:311:                                    ; preds = %310, %301
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2395
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2377
  %312 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 4, i32 1), align 8, !dbg !2378, !tbaa !1207
  %313 = icmp eq %struct.netif* %312, null, !dbg !2382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2383
  br i1 %313, label %321, label %314, !dbg !2383

; <label>:314:                                    ; preds = %311
  %315 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 4, i32 2), align 16, !dbg !2384, !tbaa !1237
  %316 = icmp ult i32 %315, 2, !dbg !2387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2388
  br i1 %316, label %319, label %317, !dbg !2388

; <label>:317:                                    ; preds = %314
  %318 = add i32 %315, -1, !dbg !2393
  store i32 %318, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 4, i32 2), align 16, !dbg !2393, !tbaa !1237
  br label %320

; <label>:319:                                    ; preds = %314
  store i32 0, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 4, i32 2), align 16, !dbg !2389, !tbaa !1237
  store %struct.netif* null, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 4, i32 1), align 8, !dbg !2391, !tbaa !1207
  br label %320, !dbg !2392

; <label>:320:                                    ; preds = %317, %319
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %321, !dbg !2395

; <label>:321:                                    ; preds = %320, %311
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2395
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2377
  %322 = load %struct.netif*, %struct.netif** @netif_list, align 8, !dbg !2501, !tbaa !2511
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2501
  %323 = icmp eq %struct.netif* %322, null, !dbg !2499
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2501
  br i1 %323, label %245, label %171, !dbg !2501
}

; Function Attrs: noredzone
declare dso_local void @netif_ip6_addr_set_state(%struct.netif*, i8 signext, i8 zeroext) local_unnamed_addr #3

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8*, ...) unnamed_addr #4 !dbg !416 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !2541
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #6, !dbg !2541
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !2543
  call void @llvm.va_start(i8* nonnull %3), !dbg !2543
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @uk_pr_crit.__str.4, i64 0, i64 0), i32 198, i8* %0, %struct.__va_list_tag* nonnull %4) #7, !dbg !2544
  call void @llvm.va_end(i8* nonnull %3), !dbg !2547
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #6, !dbg !2548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2548
  ret void, !dbg !2548
}

; Function Attrs: noredzone noreturn
declare dso_local void @ukplat_terminate(i32) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define internal fastcc void @nd6_send_ns(%struct.netif*, %struct.ip6_addr*, i8 zeroext) unnamed_addr #0 !dbg !2549 {
  %4 = icmp eq %struct.ip6_addr* %1, null, !dbg !2564
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2567
  br i1 %4, label %5, label %6, !dbg !2567

; <label>:5:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !2568
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2571
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2571
  unreachable

; <label>:6:                                      ; preds = %3
  %7 = zext i8 %2 to i32, !dbg !2575
  %8 = and i32 %7, 4, !dbg !2577
  %9 = icmp eq i32 %8, 0, !dbg !2577
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2578
  br i1 %9, label %10, label %22, !dbg !2578

; <label>:10:                                     ; preds = %6
  %11 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 0, !dbg !2579
  %12 = load i8, i8* %11, align 8, !dbg !2579, !tbaa !530
  %13 = and i8 %12, 16, !dbg !2579
  %14 = icmp eq i8 %13, 0, !dbg !2579
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2580
  br i1 %14, label %22, label %15, !dbg !2580

; <label>:15:                                     ; preds = %10
  %16 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, !dbg !2581
  %17 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 20, !dbg !2584
  %18 = load i8, i8* %17, align 4, !dbg !2584, !tbaa !662
  %19 = zext i8 %18 to i16, !dbg !2585
  %20 = add nuw nsw i16 %19, 9, !dbg !2586
  %21 = lshr i16 %20, 3, !dbg !2587
  br label %22, !dbg !2589

; <label>:22:                                     ; preds = %6, %10, %15
  %23 = phi %struct.ip6_addr* [ %16, %15 ], [ getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip6_addr_any, i64 0, i32 0, i32 0), %10 ], [ getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip6_addr_any, i64 0, i32 0, i32 0), %6 ], !dbg !2590
  %24 = phi i16 [ %21, %15 ], [ 0, %10 ], [ 0, %6 ], !dbg !2590
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %25 = shl nuw nsw i16 %24, 3, !dbg !2591
  %26 = add nuw nsw i16 %25, 24, !dbg !2592
  %27 = tail call %struct.pbuf* @pbuf_alloc(i32 54, i16 zeroext %26, i32 640) #7, !dbg !2593
  %28 = icmp eq %struct.pbuf* %27, null, !dbg !2595
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2597
  br i1 %28, label %29, label %32, !dbg !2597

; <label>:29:                                     ; preds = %22
  %30 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 6), align 2, !dbg !2598, !tbaa !864
  %31 = add i16 %30, 1, !dbg !2598
  store i16 %31, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 6), align 2, !dbg !2598, !tbaa !864
  br label %94, !dbg !2600

; <label>:32:                                     ; preds = %22
  %33 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %27, i64 0, i32 1, !dbg !2601
  %34 = bitcast i8** %33 to %struct.ns_header**, !dbg !2601
  %35 = load %struct.ns_header*, %struct.ns_header** %34, align 8, !dbg !2601, !tbaa !526
  %36 = getelementptr inbounds %struct.ns_header, %struct.ns_header* %35, i64 0, i32 0, !dbg !2603
  store i8 -121, i8* %36, align 1, !dbg !2604, !tbaa !2605
  %37 = getelementptr inbounds %struct.ns_header, %struct.ns_header* %35, i64 0, i32 1, !dbg !2606
  store i8 0, i8* %37, align 1, !dbg !2607, !tbaa !754
  %38 = getelementptr inbounds %struct.ns_header, %struct.ns_header* %35, i64 0, i32 2, !dbg !2608
  store i16 0, i16* %38, align 1, !dbg !2609, !tbaa !2610
  %39 = getelementptr inbounds %struct.ns_header, %struct.ns_header* %35, i64 0, i32 3, !dbg !2611
  store i32 0, i32* %39, align 1, !dbg !2612, !tbaa !2613
  %40 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 0, !dbg !2614
  %41 = load i32, i32* %40, align 4, !dbg !2614, !tbaa !548
  %42 = getelementptr inbounds %struct.ns_header, %struct.ns_header* %35, i64 0, i32 4, i32 0, i64 0, !dbg !2614
  store i32 %41, i32* %42, align 1, !dbg !2614, !tbaa !548
  %43 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 1, !dbg !2614
  %44 = load i32, i32* %43, align 4, !dbg !2614, !tbaa !548
  %45 = getelementptr inbounds %struct.ns_header, %struct.ns_header* %35, i64 0, i32 4, i32 0, i64 1, !dbg !2614
  store i32 %44, i32* %45, align 1, !dbg !2614, !tbaa !548
  %46 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 2, !dbg !2614
  %47 = load i32, i32* %46, align 4, !dbg !2614, !tbaa !548
  %48 = getelementptr inbounds %struct.ns_header, %struct.ns_header* %35, i64 0, i32 4, i32 0, i64 2, !dbg !2614
  store i32 %47, i32* %48, align 1, !dbg !2614, !tbaa !548
  %49 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 3, !dbg !2614
  %50 = load i32, i32* %49, align 4, !dbg !2614, !tbaa !548
  %51 = getelementptr inbounds %struct.ns_header, %struct.ns_header* %35, i64 0, i32 4, i32 0, i64 3, !dbg !2614
  store i32 %50, i32* %51, align 1, !dbg !2614, !tbaa !548
  %52 = icmp eq i16 %24, 0, !dbg !2616
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2617
  %53 = getelementptr inbounds %struct.ns_header, %struct.ns_header* %35, i64 0, i32 0, !dbg !2617
  br i1 %52, label %64, label %54, !dbg !2617

; <label>:54:                                     ; preds = %32
  %55 = getelementptr inbounds %struct.ns_header, %struct.ns_header* %35, i64 1, i32 0, !dbg !2618
  store i8 1, i8* %55, align 1, !dbg !2620, !tbaa !1510
  %56 = trunc i16 %24 to i8, !dbg !2621
  %57 = getelementptr inbounds i8, i8* %53, i64 25, !dbg !2622
  store i8 %56, i8* %57, align 1, !dbg !2623, !tbaa !609
  %58 = getelementptr inbounds i8, i8* %53, i64 26, !dbg !2624
  %59 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 0, !dbg !2624
  %60 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 20, !dbg !2624
  %61 = load i8, i8* %60, align 4, !dbg !2624, !tbaa !662
  %62 = zext i8 %61 to i64, !dbg !2624
  %63 = tail call i8* @memcpy(i8* nonnull %58, i8* nonnull %59, i64 %62) #7, !dbg !2624
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2625
  br label %64, !dbg !2625

; <label>:64:                                     ; preds = %32, %54
  %65 = and i32 %7, 1, !dbg !2626
  %66 = icmp eq i32 %65, 0, !dbg !2626
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2628
  br i1 %66, label %73, label %67, !dbg !2628

; <label>:67:                                     ; preds = %64
  store i32 767, i32* getelementptr inbounds (%struct.ip6_addr, %struct.ip6_addr* @multicast_address, i64 0, i32 0, i64 0), align 16, !dbg !2629, !tbaa !548
  store i32 0, i32* getelementptr inbounds (%struct.ip6_addr, %struct.ip6_addr* @multicast_address, i64 0, i32 0, i64 1), align 4, !dbg !2629, !tbaa !548
  store i32 16777216, i32* getelementptr inbounds (%struct.ip6_addr, %struct.ip6_addr* @multicast_address, i64 0, i32 0, i64 2), align 8, !dbg !2629, !tbaa !548
  %68 = load i32, i32* %49, align 4, !dbg !2629, !tbaa !548
  %69 = or i32 %68, 255, !dbg !2629
  store i32 %69, i32* getelementptr inbounds (%struct.ip6_addr, %struct.ip6_addr* @multicast_address, i64 0, i32 0, i64 3), align 4, !dbg !2629, !tbaa !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2632
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2632
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2632
  %70 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 23, !dbg !2632
  %71 = load i8, i8* %70, align 8, !dbg !2632, !tbaa !551
  %72 = add i8 %71, 1, !dbg !2632
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2632
  store i8 %72, i8* getelementptr inbounds (%struct.ip6_addr, %struct.ip6_addr* @multicast_address, i64 0, i32 1), align 16, !dbg !2632, !tbaa !747
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2633
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2634
  br label %75, !dbg !2634

; <label>:73:                                     ; preds = %64
  %74 = icmp eq %struct.netif* %0, null, !dbg !2634
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2634
  br i1 %74, label %81, label %75, !dbg !2634

; <label>:75:                                     ; preds = %67, %73
  %76 = phi %struct.ip6_addr* [ @multicast_address, %67 ], [ %1, %73 ]
  %77 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 16, !dbg !2634
  %78 = load i16, i16* %77, align 8, !dbg !2634, !tbaa !1792
  %79 = and i16 %78, 16, !dbg !2634
  %80 = icmp eq i16 %79, 0, !dbg !2634
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2636
  br i1 %80, label %86, label %81, !dbg !2636

; <label>:81:                                     ; preds = %75, %73
  %82 = phi %struct.ip6_addr* [ %76, %75 ], [ %1, %73 ]
  %83 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %27, i64 0, i32 3, !dbg !2637
  %84 = load i16, i16* %83, align 2, !dbg !2637, !tbaa !535
  %85 = tail call zeroext i16 @ip6_chksum_pseudo(%struct.pbuf* nonnull %27, i8 zeroext 58, i16 zeroext %84, %struct.ip6_addr* %23, %struct.ip6_addr* %82) #7, !dbg !2639
  store i16 %85, i16* %38, align 1, !dbg !2640, !tbaa !2610
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2641
  br label %86, !dbg !2641

; <label>:86:                                     ; preds = %75, %81
  %87 = phi %struct.ip6_addr* [ %76, %75 ], [ %82, %81 ]
  %88 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 0), align 2, !dbg !2642, !tbaa !1800
  %89 = add i16 %88, 1, !dbg !2642
  store i16 %89, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 0), align 2, !dbg !2642, !tbaa !1800
  %90 = icmp eq %struct.ip6_addr* %23, getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip6_addr_any, i64 0, i32 0, i32 0), !dbg !2643
  %91 = select i1 %90, %struct.ip6_addr* null, %struct.ip6_addr* %23, !dbg !2644
  %92 = tail call signext i8 @ip6_output_if(%struct.pbuf* nonnull %27, %struct.ip6_addr* %91, %struct.ip6_addr* %87, i8 zeroext -1, i8 zeroext 0, i8 zeroext 58, %struct.netif* %0) #7, !dbg !2645
  %93 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %27) #7, !dbg !2646
  br label %94, !dbg !2647

; <label>:94:                                     ; preds = %86, %29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2648
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2647
  ret void, !dbg !2647
}

; Function Attrs: noredzone nounwind
define dso_local void @nd6_clear_destination_cache() local_unnamed_addr #0 !dbg !2649 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2653
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2655
  store <4 x i32> zeroinitializer, <4 x i32>* bitcast ([10 x %struct.nd6_destination_cache_entry]* @destination_cache to <4 x i32>*), align 16, !dbg !2656, !tbaa !548
  store i8 0, i8* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 0, i32 0, i32 1), align 16, !dbg !2656, !tbaa !1478
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2655
  store <4 x i32> zeroinitializer, <4 x i32>* bitcast (i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 1, i32 0, i32 0, i64 0) to <4 x i32>*), align 16, !dbg !2656, !tbaa !548
  store i8 0, i8* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 1, i32 0, i32 1), align 16, !dbg !2656, !tbaa !1478
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2655
  store <4 x i32> zeroinitializer, <4 x i32>* bitcast (i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 2, i32 0, i32 0, i64 0) to <4 x i32>*), align 16, !dbg !2656, !tbaa !548
  store i8 0, i8* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 2, i32 0, i32 1), align 16, !dbg !2656, !tbaa !1478
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2655
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 3, i32 0, i32 0, i64 0), align 16, !dbg !2656, !tbaa !548
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 3, i32 0, i32 0, i64 1), align 4, !dbg !2656, !tbaa !548
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 3, i32 0, i32 0, i64 2), align 8, !dbg !2656, !tbaa !548
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 3, i32 0, i32 0, i64 3), align 4, !dbg !2656, !tbaa !548
  store i8 0, i8* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 3, i32 0, i32 1), align 16, !dbg !2656, !tbaa !1478
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2655
  store <4 x i32> zeroinitializer, <4 x i32>* bitcast (i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 4, i32 0, i32 0, i64 0) to <4 x i32>*), align 16, !dbg !2656, !tbaa !548
  store i8 0, i8* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 4, i32 0, i32 1), align 16, !dbg !2656, !tbaa !1478
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2655
  store <4 x i32> zeroinitializer, <4 x i32>* bitcast (i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 5, i32 0, i32 0, i64 0) to <4 x i32>*), align 16, !dbg !2656, !tbaa !548
  store i8 0, i8* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 5, i32 0, i32 1), align 16, !dbg !2656, !tbaa !1478
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2655
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 6, i32 0, i32 0, i64 0), align 16, !dbg !2656, !tbaa !548
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 6, i32 0, i32 0, i64 1), align 4, !dbg !2656, !tbaa !548
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 6, i32 0, i32 0, i64 2), align 8, !dbg !2656, !tbaa !548
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 6, i32 0, i32 0, i64 3), align 4, !dbg !2656, !tbaa !548
  store i8 0, i8* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 6, i32 0, i32 1), align 16, !dbg !2656, !tbaa !1478
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2655
  store <4 x i32> zeroinitializer, <4 x i32>* bitcast (i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 7, i32 0, i32 0, i64 0) to <4 x i32>*), align 16, !dbg !2656, !tbaa !548
  store i8 0, i8* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 7, i32 0, i32 1), align 16, !dbg !2656, !tbaa !1478
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2655
  store <4 x i32> zeroinitializer, <4 x i32>* bitcast (i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 8, i32 0, i32 0, i64 0) to <4 x i32>*), align 16, !dbg !2656, !tbaa !548
  store i8 0, i8* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 8, i32 0, i32 1), align 16, !dbg !2656, !tbaa !1478
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2655
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 9, i32 0, i32 0, i64 0), align 16, !dbg !2656, !tbaa !548
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 9, i32 0, i32 0, i64 1), align 4, !dbg !2656, !tbaa !548
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 9, i32 0, i32 0, i64 2), align 8, !dbg !2656, !tbaa !548
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 9, i32 0, i32 0, i64 3), align 4, !dbg !2656, !tbaa !548
  store i8 0, i8* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 9, i32 0, i32 1), align 16, !dbg !2656, !tbaa !1478
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2655
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2661
  ret void, !dbg !2661
}

; Function Attrs: noredzone nounwind
define dso_local %struct.netif* @nd6_find_route(%struct.ip6_addr* nocapture readonly) local_unnamed_addr #0 !dbg !2662 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2671
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2673
  %2 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 0
  %3 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 1
  %4 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 1
  br label %5, !dbg !2673

; <label>:5:                                      ; preds = %1, %34
  %6 = phi i64 [ 0, %1 ], [ %35, %34 ]
  %7 = getelementptr inbounds [5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 %6, i32 1, !dbg !2674
  %8 = load %struct.netif*, %struct.netif** %7, align 8, !dbg !2674, !tbaa !1207
  %9 = icmp eq %struct.netif* %8, null, !dbg !2678
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2680
  br i1 %9, label %34, label %10, !dbg !2680

; <label>:10:                                     ; preds = %5
  %11 = getelementptr inbounds [5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 %6, i32 0, i32 0, i64 0, !dbg !2681
  %12 = load i32, i32* %11, align 8, !dbg !2681, !tbaa !548
  %13 = load i32, i32* %2, align 4, !dbg !2681, !tbaa !548
  %14 = icmp eq i32 %12, %13, !dbg !2681
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2681
  br i1 %14, label %15, label %34, !dbg !2681

; <label>:15:                                     ; preds = %10
  %16 = getelementptr inbounds [5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 %6, i32 0, i32 0, i64 1, !dbg !2681
  %17 = load i32, i32* %16, align 4, !dbg !2681, !tbaa !548
  %18 = load i32, i32* %3, align 4, !dbg !2681, !tbaa !548
  %19 = icmp eq i32 %17, %18, !dbg !2681
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2681
  br i1 %19, label %20, label %34, !dbg !2681

; <label>:20:                                     ; preds = %15
  %21 = getelementptr inbounds [5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 %6, i32 0, i32 1, !dbg !2681
  %22 = load i8, i8* %21, align 8, !dbg !2681, !tbaa !1203
  %23 = load i8, i8* %4, align 4, !dbg !2681, !tbaa !747
  %24 = icmp eq i8 %22, %23, !dbg !2681
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2682
  br i1 %24, label %25, label %34, !dbg !2682

; <label>:25:                                     ; preds = %20
  %26 = getelementptr inbounds %struct.netif, %struct.netif* %8, i64 0, i32 21, !dbg !2683
  %27 = load i8, i8* %26, align 1, !dbg !2683, !tbaa !2484
  %28 = zext i8 %27 to i32, !dbg !2683
  %29 = and i32 %28, 1, !dbg !2683
  %30 = icmp eq i32 %29, 0, !dbg !2683
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2684
  br i1 %30, label %34, label %31, !dbg !2684

; <label>:31:                                     ; preds = %25
  %32 = and i32 %28, 4, !dbg !2685
  %33 = icmp eq i32 %32, 0, !dbg !2685
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2686
  br i1 %33, label %34, label %49, !dbg !2686

; <label>:34:                                     ; preds = %31, %25, %5, %10, %15, %20
  %35 = add nuw nsw i64 %6, 1, !dbg !2687
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2688
  %36 = icmp ult i64 %35, 5, !dbg !2689
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2673
  br i1 %36, label %5, label %37, !dbg !2673, !llvm.loop !2690

; <label>:37:                                     ; preds = %34
  %38 = tail call fastcc signext i8 @nd6_select_router(%struct.netif* null) #8, !dbg !2692
  %39 = icmp sgt i8 %38, -1, !dbg !2693
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2695
  br i1 %39, label %40, label %49, !dbg !2695

; <label>:40:                                     ; preds = %37
  %41 = sext i8 %38 to i64, !dbg !2696
  %42 = getelementptr inbounds [3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 %41, i32 0, !dbg !2696
  %43 = load %struct.nd6_neighbor_cache_entry*, %struct.nd6_neighbor_cache_entry** %42, align 16, !dbg !2696, !tbaa !929
  %44 = icmp eq %struct.nd6_neighbor_cache_entry* %43, null, !dbg !2696
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2700
  br i1 %44, label %45, label %46, !dbg !2700

; <label>:45:                                     ; preds = %40
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !2701
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2704
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2704
  unreachable

; <label>:46:                                     ; preds = %40
  %47 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %43, i64 0, i32 1, !dbg !2708
  %48 = load %struct.netif*, %struct.netif** %47, align 8, !dbg !2708, !tbaa !718
  br label %49, !dbg !2709

; <label>:49:                                     ; preds = %31, %37, %46
  %50 = phi %struct.netif* [ %48, %46 ], [ null, %37 ], [ %8, %31 ], !dbg !2710
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2711
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2713
  ret %struct.netif* %50, !dbg !2713
}

; Function Attrs: noredzone nounwind
define internal fastcc signext i8 @nd6_select_router(%struct.netif* readnone) unnamed_addr #0 !dbg !443 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2718
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2720
  %2 = icmp eq %struct.netif* %0, null
  %3 = load %struct.nd6_neighbor_cache_entry*, %struct.nd6_neighbor_cache_entry** getelementptr inbounds ([3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 0, i32 0), align 16, !dbg !2721, !tbaa !929
  %4 = icmp eq %struct.nd6_neighbor_cache_entry* %3, null, !dbg !2725
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2726
  br i1 %4, label %28, label %5, !dbg !2726

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %3, i64 0, i32 1, !dbg !2727
  %7 = load %struct.netif*, %struct.netif** %6, align 8, !dbg !2727, !tbaa !718
  %8 = icmp eq %struct.netif* %7, null, !dbg !2730
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2732
  br i1 %8, label %28, label %9, !dbg !2732

; <label>:9:                                      ; preds = %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2733
  br i1 %2, label %12, label %10, !dbg !2733

; <label>:10:                                     ; preds = %9
  %11 = icmp eq %struct.netif* %7, %0, !dbg !2734
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2735
  br i1 %11, label %21, label %28, !dbg !2735

; <label>:12:                                     ; preds = %9
  %13 = getelementptr inbounds %struct.netif, %struct.netif* %7, i64 0, i32 21, !dbg !2736
  %14 = load i8, i8* %13, align 1, !dbg !2736, !tbaa !2484
  %15 = zext i8 %14 to i32, !dbg !2736
  %16 = and i32 %15, 1, !dbg !2736
  %17 = icmp eq i32 %16, 0, !dbg !2736
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2737
  br i1 %17, label %28, label %18, !dbg !2737

; <label>:18:                                     ; preds = %12
  %19 = and i32 %15, 4, !dbg !2738
  %20 = icmp eq i32 %19, 0, !dbg !2738
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2733
  br i1 %20, label %28, label %21, !dbg !2733

; <label>:21:                                     ; preds = %18, %10
  %22 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %3, i64 0, i32 4, !dbg !2739
  %23 = load i8, i8* %22, align 8, !dbg !2739, !tbaa !687
  %24 = icmp eq i8 %23, 1, !dbg !2742
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2743
  br i1 %24, label %28, label %25, !dbg !2743

; <label>:25:                                     ; preds = %21
  %26 = icmp eq i8 %23, 2, !dbg !2744
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2747
  br i1 %26, label %68, label %27, !dbg !2747

; <label>:27:                                     ; preds = %25
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2748
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2749
  br label %28, !dbg !2749

; <label>:28:                                     ; preds = %21, %18, %12, %5, %1, %27, %10
  %29 = phi i8 [ 0, %27 ], [ -1, %21 ], [ -1, %10 ], [ -1, %18 ], [ -1, %12 ], [ -1, %5 ], [ -1, %1 ], !dbg !2752
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2753
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2720
  %30 = load %struct.nd6_neighbor_cache_entry*, %struct.nd6_neighbor_cache_entry** getelementptr inbounds ([3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 1, i32 0), align 16, !dbg !2721, !tbaa !929
  %31 = icmp eq %struct.nd6_neighbor_cache_entry* %30, null, !dbg !2725
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2726
  br i1 %31, label %136, label %111, !dbg !2726

; <label>:32:                                     ; preds = %167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2754
  %33 = load i8, i8* @nd6_select_router.last_router, align 1, !dbg !2752, !tbaa !530
  br i1 %2, label %34, label %38, !dbg !2754

; <label>:34:                                     ; preds = %32
  %35 = add i8 %33, 1, !dbg !2756
  %36 = icmp sgt i8 %35, 2, !dbg !2757
  %37 = select i1 %36, i8 0, i8 %35, !dbg !2758
  store i8 %37, i8* @nd6_select_router.last_router, align 1, !dbg !2759
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2758
  br label %38, !dbg !2758

; <label>:38:                                     ; preds = %32, %34
  %39 = phi i8 [ %37, %34 ], [ %33, %32 ], !dbg !2761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2763
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2765
  %40 = sext i8 %39 to i64, !dbg !2766
  %41 = getelementptr inbounds [3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 %40, i32 0, !dbg !2770
  %42 = load %struct.nd6_neighbor_cache_entry*, %struct.nd6_neighbor_cache_entry** %41, align 16, !dbg !2770, !tbaa !929
  %43 = icmp eq %struct.nd6_neighbor_cache_entry* %42, null, !dbg !2771
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2772
  br i1 %43, label %60, label %44, !dbg !2772

; <label>:44:                                     ; preds = %38
  %45 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %42, i64 0, i32 1, !dbg !2773
  %46 = load %struct.netif*, %struct.netif** %45, align 8, !dbg !2773, !tbaa !718
  %47 = icmp eq %struct.netif* %46, null, !dbg !2775
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2777
  br i1 %47, label %60, label %48, !dbg !2777

; <label>:48:                                     ; preds = %44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2778
  br i1 %2, label %51, label %49, !dbg !2778

; <label>:49:                                     ; preds = %48
  %50 = icmp eq %struct.netif* %46, %0, !dbg !2779
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2780
  br i1 %50, label %68, label %60, !dbg !2780

; <label>:51:                                     ; preds = %48
  %52 = getelementptr inbounds %struct.netif, %struct.netif* %46, i64 0, i32 21, !dbg !2781
  %53 = load i8, i8* %52, align 1, !dbg !2781, !tbaa !2484
  %54 = zext i8 %53 to i32, !dbg !2781
  %55 = and i32 %54, 1, !dbg !2781
  %56 = icmp eq i32 %55, 0, !dbg !2781
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2782
  br i1 %56, label %60, label %57, !dbg !2782

; <label>:57:                                     ; preds = %51
  %58 = and i32 %54, 4, !dbg !2783
  %59 = icmp eq i32 %58, 0, !dbg !2783
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2778
  br i1 %59, label %60, label %68, !dbg !2778

; <label>:60:                                     ; preds = %57, %51, %44, %38, %49
  %61 = add i8 %39, 1, !dbg !2784
  %62 = icmp sgt i8 %61, 2, !dbg !2786
  %63 = select i1 %62, i8 0, i8 %61, !dbg !2787
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2788
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2765
  %64 = sext i8 %63 to i64, !dbg !2766
  %65 = getelementptr inbounds [3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 %64, i32 0, !dbg !2770
  %66 = load %struct.nd6_neighbor_cache_entry*, %struct.nd6_neighbor_cache_entry** %65, align 16, !dbg !2770, !tbaa !929
  %67 = icmp eq %struct.nd6_neighbor_cache_entry* %66, null, !dbg !2771
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2772
  br i1 %67, label %86, label %70, !dbg !2772

; <label>:68:                                     ; preds = %49, %57, %75, %83, %99, %107, %167, %165, %25, %131, %160, %110
  %69 = phi i8 [ -1, %110 ], [ 0, %25 ], [ 1, %131 ], [ 2, %160 ], [ %166, %165 ], [ %137, %167 ], [ %39, %57 ], [ %39, %49 ], [ %63, %75 ], [ %63, %83 ], [ %89, %99 ], [ %89, %107 ], !dbg !2752
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2789
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2791
  ret i8 %69, !dbg !2791

; <label>:70:                                     ; preds = %60
  %71 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %66, i64 0, i32 1, !dbg !2773
  %72 = load %struct.netif*, %struct.netif** %71, align 8, !dbg !2773, !tbaa !718
  %73 = icmp eq %struct.netif* %72, null, !dbg !2775
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2777
  br i1 %73, label %86, label %74, !dbg !2777

; <label>:74:                                     ; preds = %70
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2778
  br i1 %2, label %77, label %75, !dbg !2778

; <label>:75:                                     ; preds = %74
  %76 = icmp eq %struct.netif* %72, %0, !dbg !2779
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2780
  br i1 %76, label %68, label %86, !dbg !2780

; <label>:77:                                     ; preds = %74
  %78 = getelementptr inbounds %struct.netif, %struct.netif* %72, i64 0, i32 21, !dbg !2781
  %79 = load i8, i8* %78, align 1, !dbg !2781, !tbaa !2484
  %80 = zext i8 %79 to i32, !dbg !2781
  %81 = and i32 %80, 1, !dbg !2781
  %82 = icmp eq i32 %81, 0, !dbg !2781
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2782
  br i1 %82, label %86, label %83, !dbg !2782

; <label>:83:                                     ; preds = %77
  %84 = and i32 %80, 4, !dbg !2783
  %85 = icmp eq i32 %84, 0, !dbg !2783
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2778
  br i1 %85, label %86, label %68, !dbg !2778

; <label>:86:                                     ; preds = %83, %77, %75, %70, %60
  %87 = add i8 %63, 1, !dbg !2784
  %88 = icmp sgt i8 %87, 2, !dbg !2786
  %89 = select i1 %88, i8 0, i8 %87, !dbg !2787
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2788
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2765
  %90 = sext i8 %89 to i64, !dbg !2766
  %91 = getelementptr inbounds [3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 %90, i32 0, !dbg !2770
  %92 = load %struct.nd6_neighbor_cache_entry*, %struct.nd6_neighbor_cache_entry** %91, align 16, !dbg !2770, !tbaa !929
  %93 = icmp eq %struct.nd6_neighbor_cache_entry* %92, null, !dbg !2771
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2772
  br i1 %93, label %110, label %94, !dbg !2772

; <label>:94:                                     ; preds = %86
  %95 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %92, i64 0, i32 1, !dbg !2773
  %96 = load %struct.netif*, %struct.netif** %95, align 8, !dbg !2773, !tbaa !718
  %97 = icmp eq %struct.netif* %96, null, !dbg !2775
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2777
  br i1 %97, label %110, label %98, !dbg !2777

; <label>:98:                                     ; preds = %94
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2778
  br i1 %2, label %101, label %99, !dbg !2778

; <label>:99:                                     ; preds = %98
  %100 = icmp eq %struct.netif* %96, %0, !dbg !2779
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2780
  br i1 %100, label %68, label %110, !dbg !2780

; <label>:101:                                    ; preds = %98
  %102 = getelementptr inbounds %struct.netif, %struct.netif* %96, i64 0, i32 21, !dbg !2781
  %103 = load i8, i8* %102, align 1, !dbg !2781, !tbaa !2484
  %104 = zext i8 %103 to i32, !dbg !2781
  %105 = and i32 %104, 1, !dbg !2781
  %106 = icmp eq i32 %105, 0, !dbg !2781
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2782
  br i1 %106, label %110, label %107, !dbg !2782

; <label>:107:                                    ; preds = %101
  %108 = and i32 %104, 4, !dbg !2783
  %109 = icmp eq i32 %108, 0, !dbg !2783
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2778
  br i1 %109, label %110, label %68, !dbg !2778

; <label>:110:                                    ; preds = %107, %101, %99, %94, %86
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2788
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2765
  br label %68, !dbg !2792

; <label>:111:                                    ; preds = %28
  %112 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %30, i64 0, i32 1, !dbg !2727
  %113 = load %struct.netif*, %struct.netif** %112, align 8, !dbg !2727, !tbaa !718
  %114 = icmp eq %struct.netif* %113, null, !dbg !2730
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2732
  br i1 %114, label %136, label %115, !dbg !2732

; <label>:115:                                    ; preds = %111
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2733
  br i1 %2, label %118, label %116, !dbg !2733

; <label>:116:                                    ; preds = %115
  %117 = icmp eq %struct.netif* %113, %0, !dbg !2734
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2735
  br i1 %117, label %127, label %136, !dbg !2735

; <label>:118:                                    ; preds = %115
  %119 = getelementptr inbounds %struct.netif, %struct.netif* %113, i64 0, i32 21, !dbg !2736
  %120 = load i8, i8* %119, align 1, !dbg !2736, !tbaa !2484
  %121 = zext i8 %120 to i32, !dbg !2736
  %122 = and i32 %121, 1, !dbg !2736
  %123 = icmp eq i32 %122, 0, !dbg !2736
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2737
  br i1 %123, label %136, label %124, !dbg !2737

; <label>:124:                                    ; preds = %118
  %125 = and i32 %121, 4, !dbg !2738
  %126 = icmp eq i32 %125, 0, !dbg !2738
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2733
  br i1 %126, label %136, label %127, !dbg !2733

; <label>:127:                                    ; preds = %124, %116
  %128 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %30, i64 0, i32 4, !dbg !2739
  %129 = load i8, i8* %128, align 8, !dbg !2739, !tbaa !687
  %130 = icmp eq i8 %129, 1, !dbg !2742
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2743
  br i1 %130, label %136, label %131, !dbg !2743

; <label>:131:                                    ; preds = %127
  %132 = icmp eq i8 %129, 2, !dbg !2744
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2747
  br i1 %132, label %68, label %133, !dbg !2747

; <label>:133:                                    ; preds = %131
  %134 = icmp slt i8 %29, 0, !dbg !2793
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2748
  br i1 %134, label %135, label %136, !dbg !2748

; <label>:135:                                    ; preds = %133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2749
  br label %136, !dbg !2749

; <label>:136:                                    ; preds = %135, %133, %127, %124, %118, %116, %111, %28
  %137 = phi i8 [ 1, %135 ], [ 0, %133 ], [ %29, %127 ], [ %29, %116 ], [ %29, %124 ], [ %29, %118 ], [ %29, %111 ], [ %29, %28 ], !dbg !2752
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2753
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2720
  %138 = load %struct.nd6_neighbor_cache_entry*, %struct.nd6_neighbor_cache_entry** getelementptr inbounds ([3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 2, i32 0), align 16, !dbg !2721, !tbaa !929
  %139 = icmp eq %struct.nd6_neighbor_cache_entry* %138, null, !dbg !2725
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2726
  br i1 %139, label %167, label %140, !dbg !2726

; <label>:140:                                    ; preds = %136
  %141 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %138, i64 0, i32 1, !dbg !2727
  %142 = load %struct.netif*, %struct.netif** %141, align 8, !dbg !2727, !tbaa !718
  %143 = icmp eq %struct.netif* %142, null, !dbg !2730
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2732
  br i1 %143, label %167, label %144, !dbg !2732

; <label>:144:                                    ; preds = %140
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2733
  br i1 %2, label %147, label %145, !dbg !2733

; <label>:145:                                    ; preds = %144
  %146 = icmp eq %struct.netif* %142, %0, !dbg !2734
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2735
  br i1 %146, label %156, label %167, !dbg !2735

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds %struct.netif, %struct.netif* %142, i64 0, i32 21, !dbg !2736
  %149 = load i8, i8* %148, align 1, !dbg !2736, !tbaa !2484
  %150 = zext i8 %149 to i32, !dbg !2736
  %151 = and i32 %150, 1, !dbg !2736
  %152 = icmp eq i32 %151, 0, !dbg !2736
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2737
  br i1 %152, label %167, label %153, !dbg !2737

; <label>:153:                                    ; preds = %147
  %154 = and i32 %150, 4, !dbg !2738
  %155 = icmp eq i32 %154, 0, !dbg !2738
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2733
  br i1 %155, label %167, label %156, !dbg !2733

; <label>:156:                                    ; preds = %153, %145
  %157 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %138, i64 0, i32 4, !dbg !2739
  %158 = load i8, i8* %157, align 8, !dbg !2739, !tbaa !687
  %159 = icmp eq i8 %158, 1, !dbg !2742
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2743
  br i1 %159, label %167, label %160, !dbg !2743

; <label>:160:                                    ; preds = %156
  %161 = icmp eq i8 %158, 2, !dbg !2744
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2747
  br i1 %161, label %68, label %162, !dbg !2747

; <label>:162:                                    ; preds = %160
  %163 = icmp slt i8 %137, 0, !dbg !2793
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2748
  br i1 %163, label %164, label %165, !dbg !2748

; <label>:164:                                    ; preds = %162
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2749
  br label %165, !dbg !2749

; <label>:165:                                    ; preds = %164, %162
  %166 = phi i8 [ %137, %162 ], [ 2, %164 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2753
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2720
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2794
  br label %68, !dbg !2794

; <label>:167:                                    ; preds = %156, %153, %147, %145, %140, %136
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2753
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2720
  %168 = icmp sgt i8 %137, -1, !dbg !2795
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2794
  br i1 %168, label %68, label %32, !dbg !2794
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @nd6_get_next_hop_addr_or_queue(%struct.netif*, %struct.pbuf*, %struct.ip6_addr* readonly, i8** nocapture) local_unnamed_addr #0 !dbg !2797 {
  %5 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %2, i64 0, i32 0, i64 0, !dbg !2822
  %6 = load i32, i32* %5, align 4, !dbg !2822, !tbaa !548
  %7 = load i8, i8* @nd6_cached_destination_index, align 1, !dbg !2822, !tbaa !530
  %8 = zext i8 %7 to i64, !dbg !2822
  %9 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %8, i32 0, i32 0, i64 0, !dbg !2822
  %10 = load i32, i32* %9, align 16, !dbg !2822, !tbaa !548
  %11 = icmp eq i32 %6, %10, !dbg !2822
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2822
  %12 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %2, i64 0, i32 0, i64 1
  br i1 %11, label %13, label %39, !dbg !2822

; <label>:13:                                     ; preds = %4
  %14 = load i32, i32* %12, align 4, !dbg !2822, !tbaa !548
  %15 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %8, i32 0, i32 0, i64 1, !dbg !2822
  %16 = load i32, i32* %15, align 4, !dbg !2822, !tbaa !548
  %17 = icmp eq i32 %14, %16, !dbg !2822
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2822
  br i1 %17, label %18, label %39, !dbg !2822

; <label>:18:                                     ; preds = %13
  %19 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %2, i64 0, i32 0, i64 2, !dbg !2822
  %20 = load i32, i32* %19, align 4, !dbg !2822, !tbaa !548
  %21 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %8, i32 0, i32 0, i64 2, !dbg !2822
  %22 = load i32, i32* %21, align 8, !dbg !2822, !tbaa !548
  %23 = icmp eq i32 %20, %22, !dbg !2822
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2822
  br i1 %23, label %24, label %39, !dbg !2822

; <label>:24:                                     ; preds = %18
  %25 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %2, i64 0, i32 0, i64 3, !dbg !2822
  %26 = load i32, i32* %25, align 4, !dbg !2822, !tbaa !548
  %27 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %8, i32 0, i32 0, i64 3, !dbg !2822
  %28 = load i32, i32* %27, align 4, !dbg !2822, !tbaa !548
  %29 = icmp eq i32 %26, %28, !dbg !2822
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2822
  br i1 %29, label %30, label %39, !dbg !2822

; <label>:30:                                     ; preds = %24
  %31 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %2, i64 0, i32 1, !dbg !2822
  %32 = load i8, i8* %31, align 4, !dbg !2822, !tbaa !747
  %33 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %8, i32 0, i32 1, !dbg !2822
  %34 = load i8, i8* %33, align 16, !dbg !2822, !tbaa !1478
  %35 = icmp eq i8 %32, %34, !dbg !2822
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2824
  br i1 %35, label %36, label %39, !dbg !2824

; <label>:36:                                     ; preds = %30
  %37 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 11), align 2, !dbg !2825, !tbaa !2827
  %38 = add i16 %37, 1, !dbg !2825
  store i16 %38, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 11), align 2, !dbg !2825, !tbaa !2827
  br label %375, !dbg !2828

; <label>:39:                                     ; preds = %30, %24, %18, %13, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2833
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2834
  %40 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %2, i64 0, i32 0, i64 2
  %41 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %2, i64 0, i32 0, i64 3
  %42 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %2, i64 0, i32 1
  br label %43, !dbg !2834

; <label>:43:                                     ; preds = %68, %39
  %44 = phi i64 [ 0, %39 ], [ %69, %68 ]
  %45 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %44, i32 0, i32 0, i64 0, !dbg !2835
  %46 = load i32, i32* %45, align 16, !dbg !2835, !tbaa !548
  %47 = icmp eq i32 %6, %46, !dbg !2835
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2835
  br i1 %47, label %48, label %68, !dbg !2835

; <label>:48:                                     ; preds = %43
  %49 = load i32, i32* %12, align 4, !dbg !2835, !tbaa !548
  %50 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %44, i32 0, i32 0, i64 1, !dbg !2835
  %51 = load i32, i32* %50, align 4, !dbg !2835, !tbaa !548
  %52 = icmp eq i32 %49, %51, !dbg !2835
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2835
  br i1 %52, label %53, label %68, !dbg !2835

; <label>:53:                                     ; preds = %48
  %54 = load i32, i32* %40, align 4, !dbg !2835, !tbaa !548
  %55 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %44, i32 0, i32 0, i64 2, !dbg !2835
  %56 = load i32, i32* %55, align 8, !dbg !2835, !tbaa !548
  %57 = icmp eq i32 %54, %56, !dbg !2835
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2835
  br i1 %57, label %58, label %68, !dbg !2835

; <label>:58:                                     ; preds = %53
  %59 = load i32, i32* %41, align 4, !dbg !2835, !tbaa !548
  %60 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %44, i32 0, i32 0, i64 3, !dbg !2835
  %61 = load i32, i32* %60, align 4, !dbg !2835, !tbaa !548
  %62 = icmp eq i32 %59, %61, !dbg !2835
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2835
  br i1 %62, label %63, label %68, !dbg !2835

; <label>:63:                                     ; preds = %58
  %64 = load i8, i8* %42, align 4, !dbg !2835, !tbaa !747
  %65 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %44, i32 0, i32 1, !dbg !2835
  %66 = load i8, i8* %65, align 16, !dbg !2835, !tbaa !1478
  %67 = icmp eq i8 %64, %66, !dbg !2835
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2836
  br i1 %67, label %71, label %68, !dbg !2836

; <label>:68:                                     ; preds = %63, %58, %53, %48, %43
  %69 = add nuw nsw i64 %44, 1, !dbg !2837
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2838
  %70 = icmp ult i64 %69, 10, !dbg !2839
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2834
  br i1 %70, label %43, label %77, !dbg !2834, !llvm.loop !1484

; <label>:71:                                     ; preds = %63
  %72 = trunc i64 %44 to i16, !dbg !2832
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2840
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2841
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2843
  %73 = icmp ult i16 %72, 127, !dbg !2844
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2849
  br i1 %73, label %75, label %74, !dbg !2849

; <label>:74:                                     ; preds = %71
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0)) #7, !dbg !2850
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2853
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2853
  unreachable

; <label>:75:                                     ; preds = %71
  %76 = trunc i64 %44 to i8, !dbg !2857
  store i8 %76, i8* @nd6_cached_destination_index, align 1, !dbg !2858, !tbaa !530
  br label %375, !dbg !2859

; <label>:77:                                     ; preds = %68
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2860
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2841
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2843
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2871
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2873
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2874
  br label %81, !dbg !2873

; <label>:78:                                     ; preds = %100
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2877
  %79 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 0, i32 3), align 4, !dbg !2878, !tbaa !2333
  %80 = icmp eq i32 %79, 0, !dbg !2882
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2883
  br i1 %80, label %104, label %103, !dbg !2883

; <label>:81:                                     ; preds = %100, %77
  %82 = phi i64 [ 0, %77 ], [ %101, %100 ]
  %83 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %82, i32 0, i32 0, i64 0, !dbg !2884
  %84 = load i32, i32* %83, align 16, !dbg !2884, !tbaa !548
  %85 = icmp eq i32 %84, 0, !dbg !2884
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2884
  br i1 %85, label %86, label %100, !dbg !2884

; <label>:86:                                     ; preds = %81
  %87 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %82, i32 0, i32 0, i64 1, !dbg !2884
  %88 = load i32, i32* %87, align 4, !dbg !2884, !tbaa !548
  %89 = icmp eq i32 %88, 0, !dbg !2884
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2884
  br i1 %89, label %90, label %100, !dbg !2884

; <label>:90:                                     ; preds = %86
  %91 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %82, i32 0, i32 0, i64 2, !dbg !2884
  %92 = load i32, i32* %91, align 8, !dbg !2884, !tbaa !548
  %93 = icmp eq i32 %92, 0, !dbg !2884
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2884
  br i1 %93, label %94, label %100, !dbg !2884

; <label>:94:                                     ; preds = %90
  %95 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %82, i32 0, i32 0, i64 3, !dbg !2884
  %96 = load i32, i32* %95, align 4, !dbg !2884, !tbaa !548
  %97 = icmp eq i32 %96, 0, !dbg !2884
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2888
  br i1 %97, label %98, label %100, !dbg !2888

; <label>:98:                                     ; preds = %94
  %99 = trunc i64 %82 to i8, !dbg !2868
  br label %151, !dbg !2889

; <label>:100:                                    ; preds = %94, %90, %86, %81
  %101 = add nuw nsw i64 %82, 1, !dbg !2891
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2892
  %102 = icmp ult i64 %101, 10, !dbg !2893
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2873
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2874
  br i1 %102, label %81, label %78, !dbg !2873, !llvm.loop !2894

; <label>:103:                                    ; preds = %78
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2897
  br label %104, !dbg !2897

; <label>:104:                                    ; preds = %103, %78
  %105 = phi i8 [ 0, %103 ], [ 9, %78 ], !dbg !2899
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2900
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2877
  %106 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 1, i32 3), align 4, !dbg !2878, !tbaa !2333
  %107 = icmp eq i32 %106, 0, !dbg !2882
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2883
  br i1 %107, label %109, label %108, !dbg !2883

; <label>:108:                                    ; preds = %104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2897
  br label %109, !dbg !2897

; <label>:109:                                    ; preds = %108, %104
  %110 = phi i8 [ 1, %108 ], [ %105, %104 ], !dbg !2899
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2900
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2877
  %111 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 2, i32 3), align 4, !dbg !2878, !tbaa !2333
  %112 = icmp eq i32 %111, 0, !dbg !2882
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2883
  br i1 %112, label %114, label %113, !dbg !2883

; <label>:113:                                    ; preds = %109
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2897
  br label %114, !dbg !2897

; <label>:114:                                    ; preds = %113, %109
  %115 = phi i8 [ 2, %113 ], [ %110, %109 ], !dbg !2899
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2900
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2877
  %116 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 3, i32 3), align 4, !dbg !2878, !tbaa !2333
  %117 = icmp eq i32 %116, 0, !dbg !2882
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2883
  br i1 %117, label %119, label %118, !dbg !2883

; <label>:118:                                    ; preds = %114
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2897
  br label %119, !dbg !2897

; <label>:119:                                    ; preds = %118, %114
  %120 = phi i8 [ 3, %118 ], [ %115, %114 ], !dbg !2899
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2900
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2877
  %121 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 4, i32 3), align 4, !dbg !2878, !tbaa !2333
  %122 = icmp eq i32 %121, 0, !dbg !2882
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2883
  br i1 %122, label %124, label %123, !dbg !2883

; <label>:123:                                    ; preds = %119
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2897
  br label %124, !dbg !2897

; <label>:124:                                    ; preds = %123, %119
  %125 = phi i8 [ 4, %123 ], [ %120, %119 ], !dbg !2899
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2900
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2877
  %126 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 5, i32 3), align 4, !dbg !2878, !tbaa !2333
  %127 = icmp eq i32 %126, 0, !dbg !2882
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2883
  br i1 %127, label %129, label %128, !dbg !2883

; <label>:128:                                    ; preds = %124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2897
  br label %129, !dbg !2897

; <label>:129:                                    ; preds = %128, %124
  %130 = phi i8 [ 5, %128 ], [ %125, %124 ], !dbg !2899
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2900
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2877
  %131 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 6, i32 3), align 4, !dbg !2878, !tbaa !2333
  %132 = icmp eq i32 %131, 0, !dbg !2882
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2883
  br i1 %132, label %134, label %133, !dbg !2883

; <label>:133:                                    ; preds = %129
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2897
  br label %134, !dbg !2897

; <label>:134:                                    ; preds = %133, %129
  %135 = phi i8 [ 6, %133 ], [ %130, %129 ], !dbg !2899
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2900
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2877
  %136 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 7, i32 3), align 4, !dbg !2878, !tbaa !2333
  %137 = icmp eq i32 %136, 0, !dbg !2882
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2883
  br i1 %137, label %139, label %138, !dbg !2883

; <label>:138:                                    ; preds = %134
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2897
  br label %139, !dbg !2897

; <label>:139:                                    ; preds = %138, %134
  %140 = phi i8 [ 7, %138 ], [ %135, %134 ], !dbg !2899
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2900
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2877
  %141 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 8, i32 3), align 4, !dbg !2878, !tbaa !2333
  %142 = icmp eq i32 %141, 0, !dbg !2882
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2883
  br i1 %142, label %144, label %143, !dbg !2883

; <label>:143:                                    ; preds = %139
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2897
  br label %144, !dbg !2897

; <label>:144:                                    ; preds = %143, %139
  %145 = phi i8 [ 8, %143 ], [ %140, %139 ], !dbg !2899
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2900
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2877
  %146 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 9, i32 3), align 4, !dbg !2878, !tbaa !2333
  %147 = icmp eq i32 %146, 0, !dbg !2882
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2883
  br i1 %147, label %149, label %148, !dbg !2883

; <label>:148:                                    ; preds = %144
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2897
  br label %149, !dbg !2897

; <label>:149:                                    ; preds = %148, %144
  %150 = phi i8 [ 9, %148 ], [ %145, %144 ], !dbg !2899
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2900
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2877
  br label %151, !dbg !2901

; <label>:151:                                    ; preds = %149, %98
  %152 = phi i8 [ %99, %98 ], [ %150, %149 ], !dbg !2899
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2902
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2903
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2904
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2905
  store i8 %152, i8* @nd6_cached_destination_index, align 1, !dbg !2909, !tbaa !530
  %153 = icmp eq %struct.ip6_addr* %2, null, !dbg !2910
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2910
  br i1 %153, label %154, label %160, !dbg !2910

; <label>:154:                                    ; preds = %151
  %155 = zext i8 %152 to i64, !dbg !2910
  %156 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %155, i32 0, i32 0, i64 0, !dbg !2910
  store i32 0, i32* %156, align 16, !dbg !2910, !tbaa !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2910
  %157 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %155, i32 0, i32 0, i64 1, !dbg !2910
  store i32 0, i32* %157, align 4, !dbg !2910, !tbaa !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2910
  %158 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %155, i32 0, i32 0, i64 2, !dbg !2910
  store i32 0, i32* %158, align 8, !dbg !2910, !tbaa !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2910
  %159 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %155, i32 0, i32 0, i64 3, !dbg !2910
  store i32 0, i32* %159, align 4, !dbg !2910, !tbaa !548
  br label %170, !dbg !2910

; <label>:160:                                    ; preds = %151
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2910
  %161 = zext i8 %152 to i64, !dbg !2910
  %162 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %161, i32 0, i32 0, i64 0, !dbg !2910
  store i32 %6, i32* %162, align 16, !dbg !2910, !tbaa !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2910
  %163 = load i32, i32* %12, align 4, !dbg !2910, !tbaa !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2910
  %164 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %161, i32 0, i32 0, i64 1, !dbg !2910
  store i32 %163, i32* %164, align 4, !dbg !2910, !tbaa !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2910
  %165 = load i32, i32* %40, align 4, !dbg !2910, !tbaa !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2910
  %166 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %161, i32 0, i32 0, i64 2, !dbg !2910
  store i32 %165, i32* %166, align 8, !dbg !2910, !tbaa !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2910
  %167 = load i32, i32* %41, align 4, !dbg !2910, !tbaa !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2910
  %168 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %161, i32 0, i32 0, i64 3, !dbg !2910
  store i32 %167, i32* %168, align 4, !dbg !2910, !tbaa !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2910
  %169 = load i8, i8* %42, align 4, !dbg !2910, !tbaa !747
  br label %170, !dbg !2910

; <label>:170:                                    ; preds = %160, %154
  %171 = phi i32 [ %165, %160 ], [ 0, %154 ]
  %172 = phi i32 [ %6, %160 ], [ 0, %154 ]
  %173 = phi i32* [ %168, %160 ], [ %159, %154 ]
  %174 = phi i64 [ %161, %160 ], [ %155, %154 ]
  %175 = phi i32* [ %164, %160 ], [ %157, %154 ]
  %176 = phi i8 [ %169, %160 ], [ 0, %154 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2910
  %177 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %174, i32 0, i32 1, !dbg !2910
  store i8 %176, i8* %177, align 16, !dbg !2910, !tbaa !1478
  %178 = load i32, i32* %5, align 4, !dbg !2912, !tbaa !548
  %179 = and i32 %178, 49407, !dbg !2912
  %180 = icmp eq i32 %179, 33022, !dbg !2912
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2914
  br i1 %180, label %336, label %181, !dbg !2914

; <label>:181:                                    ; preds = %170
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2926
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2928
  %182 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 0, i32 1), align 8, !dbg !2929, !tbaa !1207
  %183 = icmp eq %struct.netif* %182, %0, !dbg !2933
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2934
  br i1 %183, label %184, label %198, !dbg !2934

; <label>:184:                                    ; preds = %181
  %185 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 0, i32 2), align 16, !dbg !2935, !tbaa !1237
  %186 = icmp eq i32 %185, 0, !dbg !2936
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2937
  br i1 %186, label %198, label %187, !dbg !2937

; <label>:187:                                    ; preds = %184
  %188 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 0, i32 0, i32 0, i64 0), align 16, !dbg !2938, !tbaa !548
  %189 = icmp eq i32 %178, %188, !dbg !2938
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2938
  br i1 %189, label %190, label %198, !dbg !2938

; <label>:190:                                    ; preds = %187
  %191 = load i32, i32* %12, align 4, !dbg !2938, !tbaa !548
  %192 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 0, i32 0, i32 0, i64 1), align 4, !dbg !2938, !tbaa !548
  %193 = icmp eq i32 %191, %192, !dbg !2938
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2938
  br i1 %193, label %194, label %198, !dbg !2938

; <label>:194:                                    ; preds = %190
  %195 = load i8, i8* %42, align 4, !dbg !2938, !tbaa !747
  %196 = load i8, i8* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 0, i32 0, i32 1), align 16, !dbg !2938, !tbaa !1203
  %197 = icmp eq i8 %195, %196, !dbg !2938
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2939
  br i1 %197, label %335, label %198, !dbg !2939

; <label>:198:                                    ; preds = %194, %190, %187, %184, %181
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2940
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2928
  %199 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 1, i32 1), align 8, !dbg !2929, !tbaa !1207
  %200 = icmp eq %struct.netif* %199, %0, !dbg !2933
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2934
  br i1 %200, label %265, label %279, !dbg !2934

; <label>:201:                                    ; preds = %330
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2941
  %202 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 6, i64 0, !dbg !2941
  %203 = load i32, i32* %202, align 4, !dbg !2941, !tbaa !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2941
  %204 = icmp eq i32 %203, 0, !dbg !2941
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2946
  br i1 %204, label %205, label %219, !dbg !2946

; <label>:205:                                    ; preds = %201
  %206 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !2947
  %207 = load i32, i32* %206, align 8, !dbg !2947, !tbaa !530
  %208 = icmp eq i32 %178, %207, !dbg !2947
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2947
  br i1 %208, label %209, label %219, !dbg !2947

; <label>:209:                                    ; preds = %205
  %210 = load i32, i32* %12, align 4, !dbg !2947, !tbaa !548
  %211 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !2947
  %212 = load i32, i32* %211, align 4, !dbg !2947, !tbaa !530
  %213 = icmp eq i32 %210, %212, !dbg !2947
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2947
  br i1 %213, label %214, label %219, !dbg !2947

; <label>:214:                                    ; preds = %209
  %215 = load i8, i8* %42, align 4, !dbg !2947, !tbaa !747
  %216 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, i32 1, !dbg !2947
  %217 = load i8, i8* %216, align 8, !dbg !2947, !tbaa !530
  %218 = icmp eq i8 %215, %217, !dbg !2947
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2948
  br i1 %218, label %335, label %219, !dbg !2948

; <label>:219:                                    ; preds = %330, %214, %209, %205, %201
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2949
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2950
  %220 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 1, !dbg !2951
  %221 = load i8, i8* %220, align 1, !dbg !2951, !tbaa !530
  %222 = and i8 %221, 16, !dbg !2951
  %223 = icmp eq i8 %222, 0, !dbg !2951
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2952
  br i1 %223, label %242, label %224, !dbg !2952

; <label>:224:                                    ; preds = %219
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2941
  %225 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 6, i64 1, !dbg !2941
  %226 = load i32, i32* %225, align 4, !dbg !2941, !tbaa !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2941
  %227 = icmp eq i32 %226, 0, !dbg !2941
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2946
  br i1 %227, label %228, label %242, !dbg !2946

; <label>:228:                                    ; preds = %224
  %229 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 0, !dbg !2947
  %230 = load i32, i32* %229, align 8, !dbg !2947, !tbaa !530
  %231 = icmp eq i32 %178, %230, !dbg !2947
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2947
  br i1 %231, label %232, label %242, !dbg !2947

; <label>:232:                                    ; preds = %228
  %233 = load i32, i32* %12, align 4, !dbg !2947, !tbaa !548
  %234 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 1, !dbg !2947
  %235 = load i32, i32* %234, align 4, !dbg !2947, !tbaa !530
  %236 = icmp eq i32 %233, %235, !dbg !2947
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2947
  br i1 %236, label %237, label %242, !dbg !2947

; <label>:237:                                    ; preds = %232
  %238 = load i8, i8* %42, align 4, !dbg !2947, !tbaa !747
  %239 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 1, i32 0, i32 0, i32 1, !dbg !2947
  %240 = load i8, i8* %239, align 8, !dbg !2947, !tbaa !530
  %241 = icmp eq i8 %238, %240, !dbg !2947
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2948
  br i1 %241, label %335, label %242, !dbg !2948

; <label>:242:                                    ; preds = %237, %232, %228, %224, %219
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2949
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2950
  %243 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 2, !dbg !2951
  %244 = load i8, i8* %243, align 1, !dbg !2951, !tbaa !530
  %245 = and i8 %244, 16, !dbg !2951
  %246 = icmp eq i8 %245, 0, !dbg !2951
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2952
  br i1 %246, label %347, label %247, !dbg !2952

; <label>:247:                                    ; preds = %242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2941
  %248 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 6, i64 2, !dbg !2941
  %249 = load i32, i32* %248, align 4, !dbg !2941, !tbaa !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2941
  %250 = icmp eq i32 %249, 0, !dbg !2941
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2946
  br i1 %250, label %251, label %347, !dbg !2946

; <label>:251:                                    ; preds = %247
  %252 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 0, !dbg !2947
  %253 = load i32, i32* %252, align 8, !dbg !2947, !tbaa !530
  %254 = icmp eq i32 %178, %253, !dbg !2947
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2947
  br i1 %254, label %255, label %347, !dbg !2947

; <label>:255:                                    ; preds = %251
  %256 = load i32, i32* %12, align 4, !dbg !2947, !tbaa !548
  %257 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 1, !dbg !2947
  %258 = load i32, i32* %257, align 4, !dbg !2947, !tbaa !530
  %259 = icmp eq i32 %256, %258, !dbg !2947
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2947
  br i1 %259, label %260, label %347, !dbg !2947

; <label>:260:                                    ; preds = %255
  %261 = load i8, i8* %42, align 4, !dbg !2947, !tbaa !747
  %262 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 2, i32 0, i32 0, i32 1, !dbg !2947
  %263 = load i8, i8* %262, align 8, !dbg !2947, !tbaa !530
  %264 = icmp eq i8 %261, %263, !dbg !2947
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2948
  br i1 %264, label %335, label %347, !dbg !2948

; <label>:265:                                    ; preds = %198
  %266 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 1, i32 2), align 8, !dbg !2935, !tbaa !1237
  %267 = icmp eq i32 %266, 0, !dbg !2936
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2937
  br i1 %267, label %279, label %268, !dbg !2937

; <label>:268:                                    ; preds = %265
  %269 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 1, i32 0, i32 0, i64 0), align 8, !dbg !2938, !tbaa !548
  %270 = icmp eq i32 %178, %269, !dbg !2938
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2938
  br i1 %270, label %271, label %279, !dbg !2938

; <label>:271:                                    ; preds = %268
  %272 = load i32, i32* %12, align 4, !dbg !2938, !tbaa !548
  %273 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 1, i32 0, i32 0, i64 1), align 4, !dbg !2938, !tbaa !548
  %274 = icmp eq i32 %272, %273, !dbg !2938
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2938
  br i1 %274, label %275, label %279, !dbg !2938

; <label>:275:                                    ; preds = %271
  %276 = load i8, i8* %42, align 4, !dbg !2938, !tbaa !747
  %277 = load i8, i8* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 1, i32 0, i32 1), align 8, !dbg !2938, !tbaa !1203
  %278 = icmp eq i8 %276, %277, !dbg !2938
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2939
  br i1 %278, label %335, label %279, !dbg !2939

; <label>:279:                                    ; preds = %275, %271, %268, %265, %198
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2940
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2928
  %280 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 2, i32 1), align 8, !dbg !2929, !tbaa !1207
  %281 = icmp eq %struct.netif* %280, %0, !dbg !2933
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2934
  br i1 %281, label %282, label %296, !dbg !2934

; <label>:282:                                    ; preds = %279
  %283 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 2, i32 2), align 16, !dbg !2935, !tbaa !1237
  %284 = icmp eq i32 %283, 0, !dbg !2936
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2937
  br i1 %284, label %296, label %285, !dbg !2937

; <label>:285:                                    ; preds = %282
  %286 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 2, i32 0, i32 0, i64 0), align 16, !dbg !2938, !tbaa !548
  %287 = icmp eq i32 %178, %286, !dbg !2938
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2938
  br i1 %287, label %288, label %296, !dbg !2938

; <label>:288:                                    ; preds = %285
  %289 = load i32, i32* %12, align 4, !dbg !2938, !tbaa !548
  %290 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 2, i32 0, i32 0, i64 1), align 4, !dbg !2938, !tbaa !548
  %291 = icmp eq i32 %289, %290, !dbg !2938
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2938
  br i1 %291, label %292, label %296, !dbg !2938

; <label>:292:                                    ; preds = %288
  %293 = load i8, i8* %42, align 4, !dbg !2938, !tbaa !747
  %294 = load i8, i8* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 2, i32 0, i32 1), align 16, !dbg !2938, !tbaa !1203
  %295 = icmp eq i8 %293, %294, !dbg !2938
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2939
  br i1 %295, label %335, label %296, !dbg !2939

; <label>:296:                                    ; preds = %292, %288, %285, %282, %279
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2940
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2928
  %297 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 3, i32 1), align 8, !dbg !2929, !tbaa !1207
  %298 = icmp eq %struct.netif* %297, %0, !dbg !2933
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2934
  br i1 %298, label %299, label %313, !dbg !2934

; <label>:299:                                    ; preds = %296
  %300 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 3, i32 2), align 8, !dbg !2935, !tbaa !1237
  %301 = icmp eq i32 %300, 0, !dbg !2936
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2937
  br i1 %301, label %313, label %302, !dbg !2937

; <label>:302:                                    ; preds = %299
  %303 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 3, i32 0, i32 0, i64 0), align 8, !dbg !2938, !tbaa !548
  %304 = icmp eq i32 %178, %303, !dbg !2938
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2938
  br i1 %304, label %305, label %313, !dbg !2938

; <label>:305:                                    ; preds = %302
  %306 = load i32, i32* %12, align 4, !dbg !2938, !tbaa !548
  %307 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 3, i32 0, i32 0, i64 1), align 4, !dbg !2938, !tbaa !548
  %308 = icmp eq i32 %306, %307, !dbg !2938
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2938
  br i1 %308, label %309, label %313, !dbg !2938

; <label>:309:                                    ; preds = %305
  %310 = load i8, i8* %42, align 4, !dbg !2938, !tbaa !747
  %311 = load i8, i8* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 3, i32 0, i32 1), align 8, !dbg !2938, !tbaa !1203
  %312 = icmp eq i8 %310, %311, !dbg !2938
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2939
  br i1 %312, label %335, label %313, !dbg !2939

; <label>:313:                                    ; preds = %309, %305, %302, %299, %296
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2940
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2928
  %314 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 4, i32 1), align 8, !dbg !2929, !tbaa !1207
  %315 = icmp eq %struct.netif* %314, %0, !dbg !2933
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2934
  br i1 %315, label %316, label %330, !dbg !2934

; <label>:316:                                    ; preds = %313
  %317 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 4, i32 2), align 16, !dbg !2935, !tbaa !1237
  %318 = icmp eq i32 %317, 0, !dbg !2936
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2937
  br i1 %318, label %330, label %319, !dbg !2937

; <label>:319:                                    ; preds = %316
  %320 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 4, i32 0, i32 0, i64 0), align 16, !dbg !2938, !tbaa !548
  %321 = icmp eq i32 %178, %320, !dbg !2938
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2938
  br i1 %321, label %322, label %330, !dbg !2938

; <label>:322:                                    ; preds = %319
  %323 = load i32, i32* %12, align 4, !dbg !2938, !tbaa !548
  %324 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 4, i32 0, i32 0, i64 1), align 4, !dbg !2938, !tbaa !548
  %325 = icmp eq i32 %323, %324, !dbg !2938
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2938
  br i1 %325, label %326, label %330, !dbg !2938

; <label>:326:                                    ; preds = %322
  %327 = load i8, i8* %42, align 4, !dbg !2938, !tbaa !747
  %328 = load i8, i8* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 4, i32 0, i32 1), align 16, !dbg !2938, !tbaa !1203
  %329 = icmp eq i8 %327, %328, !dbg !2938
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2939
  br i1 %329, label %335, label %330, !dbg !2939

; <label>:330:                                    ; preds = %326, %322, %319, %316, %313
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2940
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2928
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2953
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2950
  %331 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 0, !dbg !2951
  %332 = load i8, i8* %331, align 1, !dbg !2951, !tbaa !530
  %333 = and i8 %332, 16, !dbg !2951
  %334 = icmp eq i8 %333, 0, !dbg !2951
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2952
  br i1 %334, label %219, label %201, !dbg !2952

; <label>:335:                                    ; preds = %214, %237, %260, %194, %275, %292, %309, %326
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2954
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2955
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2956
  br label %336, !dbg !2956

; <label>:336:                                    ; preds = %335, %170
  %337 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 18, !dbg !2957
  %338 = load i16, i16* %337, align 4, !dbg !2957, !tbaa !1161
  %339 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %174, i32 2, !dbg !2959
  store i16 %338, i16* %339, align 8, !dbg !2960, !tbaa !1605
  %340 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %174, i32 1, i32 0, i64 0, !dbg !2961
  store i32 %172, i32* %340, align 4, !dbg !2961, !tbaa !548
  %341 = load i32, i32* %175, align 4, !dbg !2961, !tbaa !548
  %342 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %174, i32 1, i32 0, i64 1, !dbg !2961
  store i32 %341, i32* %342, align 4, !dbg !2961, !tbaa !548
  %343 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %174, i32 1, i32 0, i64 2, !dbg !2961
  store i32 %171, i32* %343, align 4, !dbg !2961, !tbaa !548
  %344 = load i32, i32* %173, align 4, !dbg !2961, !tbaa !548
  %345 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %174, i32 1, i32 0, i64 3, !dbg !2961
  store i32 %344, i32* %345, align 4, !dbg !2961, !tbaa !548
  %346 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %174, i32 1, i32 1, !dbg !2961
  store i8 %176, i8* %346, align 4, !dbg !2961, !tbaa !1503
  br label %375, !dbg !2963

; <label>:347:                                    ; preds = %260, %255, %251, %247, %242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2949
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2950
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2964
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2955
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2956
  %348 = tail call fastcc signext i8 @nd6_select_router(%struct.netif* nonnull %0) #7, !dbg !2965
  %349 = icmp slt i8 %348, 0, !dbg !2968
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2970
  br i1 %349, label %350, label %353, !dbg !2970

; <label>:350:                                    ; preds = %347
  %351 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %174, i32 0, i32 0, i64 0, !dbg !2971
  store i32 0, i32* %351, align 16, !dbg !2971, !tbaa !548
  store i32 0, i32* %175, align 4, !dbg !2971, !tbaa !548
  %352 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %174, i32 0, i32 0, i64 2, !dbg !2971
  store i32 0, i32* %352, align 8, !dbg !2971, !tbaa !548
  store i32 0, i32* %173, align 4, !dbg !2971, !tbaa !548
  store i8 0, i8* %177, align 16, !dbg !2971, !tbaa !1478
  br label %470, !dbg !2974

; <label>:353:                                    ; preds = %347
  %354 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 18, !dbg !2975
  %355 = load i16, i16* %354, align 4, !dbg !2975, !tbaa !1161
  %356 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %174, i32 2, !dbg !2976
  store i16 %355, i16* %356, align 8, !dbg !2977, !tbaa !1605
  %357 = sext i8 %348 to i64, !dbg !2978
  %358 = getelementptr inbounds [3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 %357, i32 0, !dbg !2978
  %359 = load %struct.nd6_neighbor_cache_entry*, %struct.nd6_neighbor_cache_entry** %358, align 16, !dbg !2978, !tbaa !929
  %360 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %359, i64 0, i32 0, i32 0, i64 0, !dbg !2978
  %361 = load i32, i32* %360, align 8, !dbg !2978, !tbaa !548
  %362 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %174, i32 1, i32 0, i64 0, !dbg !2978
  store i32 %361, i32* %362, align 4, !dbg !2978, !tbaa !548
  %363 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %359, i64 0, i32 0, i32 0, i64 1, !dbg !2978
  %364 = load i32, i32* %363, align 4, !dbg !2978, !tbaa !548
  %365 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %174, i32 1, i32 0, i64 1, !dbg !2978
  store i32 %364, i32* %365, align 4, !dbg !2978, !tbaa !548
  %366 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %359, i64 0, i32 0, i32 0, i64 2, !dbg !2978
  %367 = load i32, i32* %366, align 8, !dbg !2978, !tbaa !548
  %368 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %174, i32 1, i32 0, i64 2, !dbg !2978
  store i32 %367, i32* %368, align 4, !dbg !2978, !tbaa !548
  %369 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %359, i64 0, i32 0, i32 0, i64 3, !dbg !2978
  %370 = load i32, i32* %369, align 4, !dbg !2978, !tbaa !548
  %371 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %174, i32 1, i32 0, i64 3, !dbg !2978
  store i32 %370, i32* %371, align 4, !dbg !2978, !tbaa !548
  %372 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %359, i64 0, i32 0, i32 1, !dbg !2978
  %373 = load i8, i8* %372, align 8, !dbg !2978, !tbaa !638
  %374 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %174, i32 1, i32 1, !dbg !2978
  store i8 %373, i8* %374, align 4, !dbg !2978, !tbaa !1503
  br label %375

; <label>:375:                                    ; preds = %353, %336, %75, %36
  %376 = phi i8 [ %76, %75 ], [ %152, %353 ], [ %152, %336 ], [ %7, %36 ], !dbg !2980
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %377 = zext i8 %376 to i64, !dbg !2980
  %378 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %377, i32 1, i32 0, i64 0, !dbg !2980
  %379 = load i32, i32* %378, align 4, !dbg !2980, !tbaa !548
  %380 = load i8, i8* @nd6_cached_neighbor_index, align 1, !dbg !2980, !tbaa !530
  %381 = zext i8 %380 to i64, !dbg !2980
  %382 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %381, i32 0, i32 0, i64 0, !dbg !2980
  %383 = load i32, i32* %382, align 8, !dbg !2980, !tbaa !548
  %384 = icmp eq i32 %379, %383, !dbg !2980
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2980
  %385 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %377, i32 1, i32 0, i64 1
  br i1 %384, label %386, label %412, !dbg !2980

; <label>:386:                                    ; preds = %375
  %387 = load i32, i32* %385, align 4, !dbg !2980, !tbaa !548
  %388 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %381, i32 0, i32 0, i64 1, !dbg !2980
  %389 = load i32, i32* %388, align 4, !dbg !2980, !tbaa !548
  %390 = icmp eq i32 %387, %389, !dbg !2980
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2980
  br i1 %390, label %391, label %412, !dbg !2980

; <label>:391:                                    ; preds = %386
  %392 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %377, i32 1, i32 0, i64 2, !dbg !2980
  %393 = load i32, i32* %392, align 4, !dbg !2980, !tbaa !548
  %394 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %381, i32 0, i32 0, i64 2, !dbg !2980
  %395 = load i32, i32* %394, align 8, !dbg !2980, !tbaa !548
  %396 = icmp eq i32 %393, %395, !dbg !2980
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2980
  br i1 %396, label %397, label %412, !dbg !2980

; <label>:397:                                    ; preds = %391
  %398 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %377, i32 1, i32 0, i64 3, !dbg !2980
  %399 = load i32, i32* %398, align 4, !dbg !2980, !tbaa !548
  %400 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %381, i32 0, i32 0, i64 3, !dbg !2980
  %401 = load i32, i32* %400, align 4, !dbg !2980, !tbaa !548
  %402 = icmp eq i32 %399, %401, !dbg !2980
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2980
  br i1 %402, label %403, label %412, !dbg !2980

; <label>:403:                                    ; preds = %397
  %404 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %377, i32 1, i32 1, !dbg !2980
  %405 = load i8, i8* %404, align 4, !dbg !2980, !tbaa !1503
  %406 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %381, i32 0, i32 1, !dbg !2980
  %407 = load i8, i8* %406, align 8, !dbg !2980, !tbaa !638
  %408 = icmp eq i8 %405, %407, !dbg !2980
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2982
  br i1 %408, label %409, label %412, !dbg !2982

; <label>:409:                                    ; preds = %403
  %410 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 11), align 2, !dbg !2983, !tbaa !2827
  %411 = add i16 %410, 1, !dbg !2983
  store i16 %411, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 11), align 2, !dbg !2983, !tbaa !2827
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2985
  br label %472, !dbg !2985

; <label>:412:                                    ; preds = %403, %397, %391, %386, %375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2989
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2990
  %413 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %377, i32 1, i32 0, i64 2
  %414 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %377, i32 1, i32 0, i64 3
  %415 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %377, i32 1, i32 1
  br label %416, !dbg !2990

; <label>:416:                                    ; preds = %441, %412
  %417 = phi i64 [ 0, %412 ], [ %442, %441 ]
  %418 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %417, i32 0, i32 0, i64 0, !dbg !2991
  %419 = load i32, i32* %418, align 8, !dbg !2991, !tbaa !548
  %420 = icmp eq i32 %379, %419, !dbg !2991
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2991
  br i1 %420, label %421, label %441, !dbg !2991

; <label>:421:                                    ; preds = %416
  %422 = load i32, i32* %385, align 4, !dbg !2991, !tbaa !548
  %423 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %417, i32 0, i32 0, i64 1, !dbg !2991
  %424 = load i32, i32* %423, align 4, !dbg !2991, !tbaa !548
  %425 = icmp eq i32 %422, %424, !dbg !2991
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2991
  br i1 %425, label %426, label %441, !dbg !2991

; <label>:426:                                    ; preds = %421
  %427 = load i32, i32* %413, align 4, !dbg !2991, !tbaa !548
  %428 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %417, i32 0, i32 0, i64 2, !dbg !2991
  %429 = load i32, i32* %428, align 8, !dbg !2991, !tbaa !548
  %430 = icmp eq i32 %427, %429, !dbg !2991
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2991
  br i1 %430, label %431, label %441, !dbg !2991

; <label>:431:                                    ; preds = %426
  %432 = load i32, i32* %414, align 4, !dbg !2991, !tbaa !548
  %433 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %417, i32 0, i32 0, i64 3, !dbg !2991
  %434 = load i32, i32* %433, align 4, !dbg !2991, !tbaa !548
  %435 = icmp eq i32 %432, %434, !dbg !2991
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2991
  br i1 %435, label %436, label %441, !dbg !2991

; <label>:436:                                    ; preds = %431
  %437 = load i8, i8* %415, align 4, !dbg !2991, !tbaa !747
  %438 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %417, i32 0, i32 1, !dbg !2991
  %439 = load i8, i8* %438, align 8, !dbg !2991, !tbaa !638
  %440 = icmp eq i8 %437, %439, !dbg !2991
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2992
  br i1 %440, label %444, label %441, !dbg !2992

; <label>:441:                                    ; preds = %436, %431, %426, %421, %416
  %442 = add nuw nsw i64 %417, 1, !dbg !2993
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2994
  %443 = icmp ult i64 %442, 10, !dbg !2995
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2990
  br i1 %443, label %416, label %447, !dbg !2990, !llvm.loop !645

; <label>:444:                                    ; preds = %436
  %445 = trunc i64 %417 to i8, !dbg !2986
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2996
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2997
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2998
  store i8 %445, i8* @nd6_cached_neighbor_index, align 1, !dbg !2999, !tbaa !530
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3002
  %446 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %377, i32 3, !dbg !3003
  store i32 0, i32* %446, align 4, !dbg !3004, !tbaa !2333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3005
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3006
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3008
  br label %477, !dbg !3008

; <label>:447:                                    ; preds = %441
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3009
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2997
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2998
  %448 = tail call fastcc signext i8 @nd6_new_neighbor_cache_entry() #7, !dbg !3010
  %449 = icmp sgt i8 %448, -1, !dbg !3012
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3014
  br i1 %449, label %450, label %470, !dbg !3014

; <label>:450:                                    ; preds = %447
  store i8 %448, i8* @nd6_cached_neighbor_index, align 1, !dbg !3015, !tbaa !530
  %451 = load i8, i8* @nd6_cached_destination_index, align 1, !dbg !3017, !tbaa !530
  %452 = zext i8 %451 to i64, !dbg !3017
  %453 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %452, i32 1, i32 0, i64 0, !dbg !3017
  %454 = sext i8 %448 to i64, !dbg !3017
  %455 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %454, !dbg !3017
  %456 = bitcast i32* %453 to <4 x i32>*, !dbg !3017
  %457 = load <4 x i32>, <4 x i32>* %456, align 4, !dbg !3017, !tbaa !548
  %458 = bitcast %struct.nd6_neighbor_cache_entry* %455 to <4 x i32>*, !dbg !3017
  store <4 x i32> %457, <4 x i32>* %458, align 8, !dbg !3017, !tbaa !548
  %459 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %452, i32 1, i32 1, !dbg !3017
  %460 = load i8, i8* %459, align 4, !dbg !3017, !tbaa !1503
  %461 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %454, i32 0, i32 1, !dbg !3017
  store i8 %460, i8* %461, align 8, !dbg !3017, !tbaa !638
  %462 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %454, i32 5, !dbg !3019
  store i8 0, i8* %462, align 1, !dbg !3020, !tbaa !1008
  %463 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %454, i32 1, !dbg !3021
  store %struct.netif* %0, %struct.netif** %463, align 8, !dbg !3022, !tbaa !718
  %464 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %454, i32 4, !dbg !3023
  store i8 1, i8* %464, align 8, !dbg !3024, !tbaa !687
  %465 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %454, i32 6, i32 0, !dbg !3025
  store i32 1, i32* %465, align 4, !dbg !3026, !tbaa !530
  %466 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %455, i64 0, i32 0, !dbg !3030
  tail call fastcc void @nd6_send_ns(%struct.netif* %0, %struct.ip6_addr* nonnull %466, i8 zeroext 1) #7, !dbg !3031
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3032
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %467 = load i8, i8* @nd6_cached_destination_index, align 1, !dbg !3033, !tbaa !530
  %468 = load i8, i8* @nd6_cached_neighbor_index, align 1, !dbg !3034, !tbaa !530
  %469 = zext i8 %467 to i64, !dbg !3035
  br label %472

; <label>:470:                                    ; preds = %447, %350
  %471 = phi i8 [ -4, %350 ], [ -1, %447 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3036
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3006
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3008
  br label %568, !dbg !3008

; <label>:472:                                    ; preds = %409, %450
  %473 = phi i64 [ %469, %450 ], [ %377, %409 ], !dbg !3035
  %474 = phi i8 [ %468, %450 ], [ %380, %409 ], !dbg !3034
  %475 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %473, i32 3, !dbg !3003
  store i32 0, i32* %475, align 4, !dbg !3004, !tbaa !2333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3005
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3006
  %476 = icmp slt i8 %474, 0, !dbg !3037
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3008
  br i1 %476, label %568, label %477, !dbg !3008

; <label>:477:                                    ; preds = %444, %472
  %478 = phi i8 [ %445, %444 ], [ %474, %472 ]
  %479 = sext i8 %478 to i64, !dbg !3039
  %480 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %479, i32 4, !dbg !3041
  %481 = load i8, i8* %480, align 8, !dbg !3041, !tbaa !687
  %482 = icmp eq i8 %481, 3, !dbg !3042
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3043
  br i1 %482, label %483, label %485, !dbg !3043

; <label>:483:                                    ; preds = %477
  store i8 4, i8* %480, align 8, !dbg !3044, !tbaa !687
  %484 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %479, i32 6, i32 0, !dbg !3046
  store i32 5, i32* %484, align 4, !dbg !3047, !tbaa !530
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3048
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3049
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3051
  br label %491, !dbg !3051

; <label>:485:                                    ; preds = %477
  %486 = icmp eq i8 %481, 2, !dbg !3052
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3049
  br i1 %486, label %491, label %487, !dbg !3049

; <label>:487:                                    ; preds = %485
  %488 = icmp eq i8 %481, 4, !dbg !3053
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3051
  br i1 %488, label %491, label %489, !dbg !3051

; <label>:489:                                    ; preds = %487
  %490 = icmp eq i8 %481, 5, !dbg !3054
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3055
  br i1 %490, label %491, label %493, !dbg !3055

; <label>:491:                                    ; preds = %483, %489, %487, %485
  %492 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %479, i32 2, i64 0, !dbg !3056
  store i8* %492, i8** %3, align 8, !dbg !3058, !tbaa !2511
  br label %568, !dbg !3059

; <label>:493:                                    ; preds = %489
  store i8* null, i8** %3, align 8, !dbg !3060, !tbaa !2511
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3077
  %494 = icmp sgt i8 %478, 9, !dbg !3079
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3080
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3036
  br i1 %494, label %566, label %495, !dbg !3080

; <label>:495:                                    ; preds = %493
  %496 = icmp eq %struct.pbuf* %1, null, !dbg !3082
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3082
  br i1 %496, label %563, label %497, !dbg !3082

; <label>:497:                                    ; preds = %495, %509
  %498 = phi %struct.pbuf* [ %511, %509 ], [ %1, %495 ]
  %499 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %498, i64 0, i32 4, !dbg !3083
  %500 = load i8, i8* %499, align 4, !dbg !3083, !tbaa !3086
  %501 = and i8 %500, 64, !dbg !3083
  %502 = icmp eq i8 %501, 0, !dbg !3083
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3087
  br i1 %502, label %509, label %503, !dbg !3087

; <label>:503:                                    ; preds = %497
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3088
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3090
  %504 = tail call %struct.pbuf* @pbuf_clone(i32 14, i32 640, %struct.pbuf* nonnull %1) #7, !dbg !3091
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3094
  %505 = icmp eq %struct.pbuf* %504, null, !dbg !3095
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3096
  br i1 %505, label %506, label %523, !dbg !3096

; <label>:506:                                    ; preds = %503
  %507 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %479, i32 3
  %508 = bitcast %struct.nd6_q_entry** %507 to i64*
  br label %513, !dbg !3096

; <label>:509:                                    ; preds = %497
  %510 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %498, i64 0, i32 0, !dbg !3097
  %511 = load %struct.pbuf*, %struct.pbuf** %510, align 8, !dbg !3097, !tbaa !3098
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3082
  %512 = icmp eq %struct.pbuf* %511, null, !dbg !3082
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3082
  br i1 %512, label %522, label %497, !dbg !3082, !llvm.loop !3099

; <label>:513:                                    ; preds = %516, %506
  %514 = load %struct.nd6_q_entry*, %struct.nd6_q_entry** %507, align 8, !dbg !3102, !tbaa !725
  %515 = icmp eq %struct.nd6_q_entry* %514, null, !dbg !3103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3094
  br i1 %515, label %564, label %516, !dbg !3094

; <label>:516:                                    ; preds = %513
  %517 = getelementptr inbounds %struct.nd6_q_entry, %struct.nd6_q_entry* %514, i64 0, i32 0, !dbg !3105
  %518 = bitcast %struct.nd6_q_entry* %514 to i64*, !dbg !3105
  %519 = load i64, i64* %518, align 8, !dbg !3105, !tbaa !1673
  store i64 %519, i64* %508, align 8, !dbg !3107, !tbaa !725
  store %struct.nd6_q_entry* null, %struct.nd6_q_entry** %517, align 8, !dbg !3108, !tbaa !1673
  tail call fastcc void @nd6_free_q(%struct.nd6_q_entry* nonnull %514) #7, !dbg !3109
  %520 = tail call %struct.pbuf* @pbuf_clone(i32 14, i32 640, %struct.pbuf* nonnull %1) #7, !dbg !3110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3094
  %521 = icmp eq %struct.pbuf* %520, null, !dbg !3095
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3096
  br i1 %521, label %513, label %523, !dbg !3096, !llvm.loop !3111

; <label>:522:                                    ; preds = %509
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3090
  tail call void @pbuf_ref(%struct.pbuf* nonnull %1) #7, !dbg !3114
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %523, !dbg !3116

; <label>:523:                                    ; preds = %516, %503, %522
  %524 = phi %struct.pbuf* [ %1, %522 ], [ %504, %503 ], [ %520, %516 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3116
  %525 = tail call i8* @memp_malloc(i32 12) #7, !dbg !3117
  %526 = bitcast i8* %525 to %struct.nd6_q_entry*, !dbg !3120
  %527 = icmp eq i8* %525, null, !dbg !3122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3124
  br i1 %527, label %528, label %539, !dbg !3124

; <label>:528:                                    ; preds = %523
  %529 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %479, i32 3, !dbg !3125
  %530 = load %struct.nd6_q_entry*, %struct.nd6_q_entry** %529, align 8, !dbg !3125, !tbaa !725
  %531 = icmp eq %struct.nd6_q_entry* %530, null, !dbg !3126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3127
  br i1 %531, label %539, label %532, !dbg !3127

; <label>:532:                                    ; preds = %528
  %533 = getelementptr inbounds %struct.nd6_q_entry, %struct.nd6_q_entry* %530, i64 0, i32 0, !dbg !3128
  %534 = bitcast %struct.nd6_q_entry* %530 to i64*, !dbg !3128
  %535 = load i64, i64* %534, align 8, !dbg !3128, !tbaa !1673
  %536 = bitcast %struct.nd6_q_entry** %529 to i64*, !dbg !3130
  store i64 %535, i64* %536, align 8, !dbg !3130, !tbaa !725
  store %struct.nd6_q_entry* null, %struct.nd6_q_entry** %533, align 8, !dbg !3131, !tbaa !1673
  tail call fastcc void @nd6_free_q(%struct.nd6_q_entry* nonnull %530) #7, !dbg !3132
  %537 = tail call i8* @memp_malloc(i32 12) #7, !dbg !3133
  %538 = bitcast i8* %537 to %struct.nd6_q_entry*, !dbg !3134
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3135
  br label %539, !dbg !3135

; <label>:539:                                    ; preds = %532, %528, %523
  %540 = phi %struct.nd6_q_entry* [ %538, %532 ], [ %526, %528 ], [ %526, %523 ], !dbg !3136
  %541 = icmp eq %struct.nd6_q_entry* %540, null, !dbg !3137
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3139
  br i1 %541, label %561, label %542, !dbg !3139

; <label>:542:                                    ; preds = %539
  %543 = getelementptr inbounds %struct.nd6_q_entry, %struct.nd6_q_entry* %540, i64 0, i32 0, !dbg !3140
  store %struct.nd6_q_entry* null, %struct.nd6_q_entry** %543, align 8, !dbg !3142, !tbaa !1673
  %544 = getelementptr inbounds %struct.nd6_q_entry, %struct.nd6_q_entry* %540, i64 0, i32 1, !dbg !3143
  store %struct.pbuf* %524, %struct.pbuf** %544, align 8, !dbg !3144, !tbaa !1677
  %545 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %479, i32 3, !dbg !3145
  %546 = load %struct.nd6_q_entry*, %struct.nd6_q_entry** %545, align 8, !dbg !3145, !tbaa !725
  %547 = icmp eq %struct.nd6_q_entry* %546, null, !dbg !3147
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3148
  br i1 %547, label %559, label %548, !dbg !3148

; <label>:548:                                    ; preds = %542
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3149
  %549 = getelementptr inbounds %struct.nd6_q_entry, %struct.nd6_q_entry* %546, i64 0, i32 0, !dbg !3151
  %550 = load %struct.nd6_q_entry*, %struct.nd6_q_entry** %549, align 8, !dbg !3151, !tbaa !1673
  %551 = icmp eq %struct.nd6_q_entry* %550, null, !dbg !3152
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3149
  br i1 %551, label %559, label %552, !dbg !3149

; <label>:552:                                    ; preds = %548, %552
  %553 = phi %struct.nd6_q_entry* [ %555, %552 ], [ %550, %548 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3149
  %554 = getelementptr inbounds %struct.nd6_q_entry, %struct.nd6_q_entry* %553, i64 0, i32 0, !dbg !3151
  %555 = load %struct.nd6_q_entry*, %struct.nd6_q_entry** %554, align 8, !dbg !3151, !tbaa !1673
  %556 = icmp eq %struct.nd6_q_entry* %555, null, !dbg !3152
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3149
  br i1 %556, label %557, label %552, !dbg !3149, !llvm.loop !3153

; <label>:557:                                    ; preds = %552
  %558 = getelementptr inbounds %struct.nd6_q_entry, %struct.nd6_q_entry* %553, i64 0, i32 0, !dbg !3151
  br label %559, !dbg !3156

; <label>:559:                                    ; preds = %542, %548, %557
  %560 = phi %struct.nd6_q_entry** [ %549, %548 ], [ %558, %557 ], [ %545, %542 ]
  store %struct.nd6_q_entry* %540, %struct.nd6_q_entry** %560, align 8, !dbg !3036, !tbaa !2511
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %564, !dbg !3157

; <label>:561:                                    ; preds = %539
  %562 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %524) #7, !dbg !3158
  br label %564

; <label>:563:                                    ; preds = %495
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3090
  tail call void @pbuf_ref(%struct.pbuf* null) #7, !dbg !3114
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %564

; <label>:564:                                    ; preds = %513, %563, %561, %559
  %565 = phi i8 [ 0, %559 ], [ -1, %561 ], [ -1, %563 ], [ -1, %513 ], !dbg !3160
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3161
  br label %566, !dbg !3161

; <label>:566:                                    ; preds = %493, %564
  %567 = phi i8 [ %565, %564 ], [ -16, %493 ], !dbg !3160
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3162
  br label %568, !dbg !3163

; <label>:568:                                    ; preds = %472, %470, %566, %491
  %569 = phi i8 [ 0, %491 ], [ %567, %566 ], [ %471, %470 ], [ %474, %472 ], !dbg !3036
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3164
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3166
  ret i8 %569, !dbg !3166
}

; Function Attrs: noredzone nounwind
define dso_local zeroext i16 @nd6_get_destination_mtu(%struct.ip6_addr* nocapture readonly, %struct.netif* readonly) local_unnamed_addr #0 !dbg !3167 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3180
  %3 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 0
  %4 = load i32, i32* %3, align 4, !tbaa !548
  %5 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 1
  %6 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 2
  %7 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 3
  %8 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 1
  br label %9, !dbg !3180

; <label>:9:                                      ; preds = %34, %2
  %10 = phi i64 [ 0, %2 ], [ %35, %34 ]
  %11 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %10, i32 0, i32 0, i64 0, !dbg !3181
  %12 = load i32, i32* %11, align 16, !dbg !3181, !tbaa !548
  %13 = icmp eq i32 %4, %12, !dbg !3181
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3181
  br i1 %13, label %14, label %34, !dbg !3181

; <label>:14:                                     ; preds = %9
  %15 = load i32, i32* %5, align 4, !dbg !3181, !tbaa !548
  %16 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %10, i32 0, i32 0, i64 1, !dbg !3181
  %17 = load i32, i32* %16, align 4, !dbg !3181, !tbaa !548
  %18 = icmp eq i32 %15, %17, !dbg !3181
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3181
  br i1 %18, label %19, label %34, !dbg !3181

; <label>:19:                                     ; preds = %14
  %20 = load i32, i32* %6, align 4, !dbg !3181, !tbaa !548
  %21 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %10, i32 0, i32 0, i64 2, !dbg !3181
  %22 = load i32, i32* %21, align 8, !dbg !3181, !tbaa !548
  %23 = icmp eq i32 %20, %22, !dbg !3181
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3181
  br i1 %23, label %24, label %34, !dbg !3181

; <label>:24:                                     ; preds = %19
  %25 = load i32, i32* %7, align 4, !dbg !3181, !tbaa !548
  %26 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %10, i32 0, i32 0, i64 3, !dbg !3181
  %27 = load i32, i32* %26, align 4, !dbg !3181, !tbaa !548
  %28 = icmp eq i32 %25, %27, !dbg !3181
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3181
  br i1 %28, label %29, label %34, !dbg !3181

; <label>:29:                                     ; preds = %24
  %30 = load i8, i8* %8, align 4, !dbg !3181, !tbaa !747
  %31 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %10, i32 0, i32 1, !dbg !3181
  %32 = load i8, i8* %31, align 16, !dbg !3181, !tbaa !1478
  %33 = icmp eq i8 %30, %32, !dbg !3181
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3182
  br i1 %33, label %38, label %34, !dbg !3182

; <label>:34:                                     ; preds = %29, %24, %19, %14, %9
  %35 = add nuw nsw i64 %10, 1, !dbg !3183
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3184
  %36 = icmp ult i64 %35, 10, !dbg !3185
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3180
  br i1 %36, label %9, label %37, !dbg !3180, !llvm.loop !1484

; <label>:37:                                     ; preds = %34
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3186
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3187
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3189
  br label %44, !dbg !3189

; <label>:38:                                     ; preds = %29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3190
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3187
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3189
  %39 = shl i64 %10, 48, !dbg !3191
  %40 = ashr exact i64 %39, 48, !dbg !3191
  %41 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %40, i32 2, !dbg !3195
  %42 = load i16, i16* %41, align 8, !dbg !3195, !tbaa !1605
  %43 = icmp eq i16 %42, 0, !dbg !3196
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3197
  br i1 %43, label %44, label %49, !dbg !3197

; <label>:44:                                     ; preds = %37, %38
  %45 = icmp eq %struct.netif* %1, null, !dbg !3198
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3200
  br i1 %45, label %49, label %46, !dbg !3200

; <label>:46:                                     ; preds = %44
  %47 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 18, !dbg !3201
  %48 = load i16, i16* %47, align 4, !dbg !3201, !tbaa !1161
  br label %49, !dbg !3203

; <label>:49:                                     ; preds = %44, %38, %46
  %50 = phi i16 [ %48, %46 ], [ %42, %38 ], [ 1280, %44 ], !dbg !3204
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3205
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3207
  ret i16 %50, !dbg !3207
}

; Function Attrs: noredzone nounwind
define dso_local void @nd6_reachability_hint(%struct.ip6_addr* nocapture readonly) local_unnamed_addr #0 !dbg !3208 {
  %2 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 0, !dbg !3216
  %3 = load i32, i32* %2, align 4, !dbg !3216, !tbaa !548
  %4 = load i8, i8* @nd6_cached_destination_index, align 1, !dbg !3216, !tbaa !530
  %5 = zext i8 %4 to i64, !dbg !3216
  %6 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %5, i32 0, i32 0, i64 0, !dbg !3216
  %7 = load i32, i32* %6, align 16, !dbg !3216, !tbaa !548
  %8 = icmp eq i32 %3, %7, !dbg !3216
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3216
  %9 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 1
  br i1 %8, label %10, label %36, !dbg !3216

; <label>:10:                                     ; preds = %1
  %11 = load i32, i32* %9, align 4, !dbg !3216, !tbaa !548
  %12 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %5, i32 0, i32 0, i64 1, !dbg !3216
  %13 = load i32, i32* %12, align 4, !dbg !3216, !tbaa !548
  %14 = icmp eq i32 %11, %13, !dbg !3216
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3216
  br i1 %14, label %15, label %36, !dbg !3216

; <label>:15:                                     ; preds = %10
  %16 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 2, !dbg !3216
  %17 = load i32, i32* %16, align 4, !dbg !3216, !tbaa !548
  %18 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %5, i32 0, i32 0, i64 2, !dbg !3216
  %19 = load i32, i32* %18, align 8, !dbg !3216, !tbaa !548
  %20 = icmp eq i32 %17, %19, !dbg !3216
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3216
  br i1 %20, label %21, label %36, !dbg !3216

; <label>:21:                                     ; preds = %15
  %22 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 3, !dbg !3216
  %23 = load i32, i32* %22, align 4, !dbg !3216, !tbaa !548
  %24 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %5, i32 0, i32 0, i64 3, !dbg !3216
  %25 = load i32, i32* %24, align 4, !dbg !3216, !tbaa !548
  %26 = icmp eq i32 %23, %25, !dbg !3216
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3216
  br i1 %26, label %27, label %36, !dbg !3216

; <label>:27:                                     ; preds = %21
  %28 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 1, !dbg !3216
  %29 = load i8, i8* %28, align 4, !dbg !3216, !tbaa !747
  %30 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %5, i32 0, i32 1, !dbg !3216
  %31 = load i8, i8* %30, align 16, !dbg !3216, !tbaa !1478
  %32 = icmp eq i8 %29, %31, !dbg !3216
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3218
  br i1 %32, label %33, label %36, !dbg !3218

; <label>:33:                                     ; preds = %27
  %34 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 11), align 2, !dbg !3219, !tbaa !2827
  %35 = add i16 %34, 1, !dbg !3219
  store i16 %35, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 11), align 2, !dbg !3219, !tbaa !2827
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3221
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3223
  br label %72, !dbg !3223

; <label>:36:                                     ; preds = %1, %27, %21, %15, %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3228
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3229
  %37 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 2
  %38 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 3
  %39 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 1
  br label %40, !dbg !3229

; <label>:40:                                     ; preds = %65, %36
  %41 = phi i64 [ 0, %36 ], [ %66, %65 ]
  %42 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %41, i32 0, i32 0, i64 0, !dbg !3230
  %43 = load i32, i32* %42, align 16, !dbg !3230, !tbaa !548
  %44 = icmp eq i32 %3, %43, !dbg !3230
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3230
  br i1 %44, label %45, label %65, !dbg !3230

; <label>:45:                                     ; preds = %40
  %46 = load i32, i32* %9, align 4, !dbg !3230, !tbaa !548
  %47 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %41, i32 0, i32 0, i64 1, !dbg !3230
  %48 = load i32, i32* %47, align 4, !dbg !3230, !tbaa !548
  %49 = icmp eq i32 %46, %48, !dbg !3230
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3230
  br i1 %49, label %50, label %65, !dbg !3230

; <label>:50:                                     ; preds = %45
  %51 = load i32, i32* %37, align 4, !dbg !3230, !tbaa !548
  %52 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %41, i32 0, i32 0, i64 2, !dbg !3230
  %53 = load i32, i32* %52, align 8, !dbg !3230, !tbaa !548
  %54 = icmp eq i32 %51, %53, !dbg !3230
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3230
  br i1 %54, label %55, label %65, !dbg !3230

; <label>:55:                                     ; preds = %50
  %56 = load i32, i32* %38, align 4, !dbg !3230, !tbaa !548
  %57 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %41, i32 0, i32 0, i64 3, !dbg !3230
  %58 = load i32, i32* %57, align 4, !dbg !3230, !tbaa !548
  %59 = icmp eq i32 %56, %58, !dbg !3230
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3230
  br i1 %59, label %60, label %65, !dbg !3230

; <label>:60:                                     ; preds = %55
  %61 = load i8, i8* %39, align 4, !dbg !3230, !tbaa !747
  %62 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %41, i32 0, i32 1, !dbg !3230
  %63 = load i8, i8* %62, align 16, !dbg !3230, !tbaa !1478
  %64 = icmp eq i8 %61, %63, !dbg !3230
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3231
  br i1 %64, label %69, label %65, !dbg !3231

; <label>:65:                                     ; preds = %60, %55, %50, %45, %40
  %66 = add nuw nsw i64 %41, 1, !dbg !3232
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3233
  %67 = icmp ult i64 %66, 10, !dbg !3234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3229
  br i1 %67, label %40, label %68, !dbg !3229, !llvm.loop !1484

; <label>:68:                                     ; preds = %65
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3235
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3236
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3223
  br label %159, !dbg !3223

; <label>:69:                                     ; preds = %60
  %70 = trunc i64 %41 to i16, !dbg !3227
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3237
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3236
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %71 = icmp slt i16 %70, 0, !dbg !3238
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3223
  br i1 %71, label %159, label %72, !dbg !3223

; <label>:72:                                     ; preds = %33, %69
  %73 = phi i64 [ %5, %33 ], [ %41, %69 ]
  %74 = shl i64 %73, 48, !dbg !3240
  %75 = ashr exact i64 %74, 48, !dbg !3240
  %76 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %75, i32 1, i32 0, i64 0, !dbg !3240
  %77 = load i32, i32* %76, align 4, !dbg !3240, !tbaa !548
  %78 = load i8, i8* @nd6_cached_neighbor_index, align 1, !dbg !3240, !tbaa !530
  %79 = zext i8 %78 to i64, !dbg !3240
  %80 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %79, i32 0, i32 0, i64 0, !dbg !3240
  %81 = load i32, i32* %80, align 8, !dbg !3240, !tbaa !548
  %82 = icmp eq i32 %77, %81, !dbg !3240
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3240
  %83 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %75, i32 1, i32 0, i64 1
  br i1 %82, label %84, label %110, !dbg !3240

; <label>:84:                                     ; preds = %72
  %85 = load i32, i32* %83, align 4, !dbg !3240, !tbaa !548
  %86 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %79, i32 0, i32 0, i64 1, !dbg !3240
  %87 = load i32, i32* %86, align 4, !dbg !3240, !tbaa !548
  %88 = icmp eq i32 %85, %87, !dbg !3240
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3240
  br i1 %88, label %89, label %110, !dbg !3240

; <label>:89:                                     ; preds = %84
  %90 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %75, i32 1, i32 0, i64 2, !dbg !3240
  %91 = load i32, i32* %90, align 4, !dbg !3240, !tbaa !548
  %92 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %79, i32 0, i32 0, i64 2, !dbg !3240
  %93 = load i32, i32* %92, align 8, !dbg !3240, !tbaa !548
  %94 = icmp eq i32 %91, %93, !dbg !3240
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3240
  br i1 %94, label %95, label %110, !dbg !3240

; <label>:95:                                     ; preds = %89
  %96 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %75, i32 1, i32 0, i64 3, !dbg !3240
  %97 = load i32, i32* %96, align 4, !dbg !3240, !tbaa !548
  %98 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %79, i32 0, i32 0, i64 3, !dbg !3240
  %99 = load i32, i32* %98, align 4, !dbg !3240, !tbaa !548
  %100 = icmp eq i32 %97, %99, !dbg !3240
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3240
  br i1 %100, label %101, label %110, !dbg !3240

; <label>:101:                                    ; preds = %95
  %102 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %75, i32 1, i32 1, !dbg !3240
  %103 = load i8, i8* %102, align 4, !dbg !3240, !tbaa !1503
  %104 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %79, i32 0, i32 1, !dbg !3240
  %105 = load i8, i8* %104, align 8, !dbg !3240, !tbaa !638
  %106 = icmp eq i8 %103, %105, !dbg !3240
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3242
  br i1 %106, label %107, label %110, !dbg !3242

; <label>:107:                                    ; preds = %101
  %108 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 11), align 2, !dbg !3244, !tbaa !2827
  %109 = add i16 %108, 1, !dbg !3244
  store i16 %109, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 11), align 2, !dbg !3244, !tbaa !2827
  br label %146, !dbg !3246

; <label>:110:                                    ; preds = %72, %101, %95, %89, %84
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3250
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3251
  %111 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %75, i32 1, i32 0, i64 2
  %112 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %75, i32 1, i32 0, i64 3
  %113 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %75, i32 1, i32 1
  br label %114, !dbg !3251

; <label>:114:                                    ; preds = %141, %110
  %115 = phi i64 [ 0, %110 ], [ %142, %141 ]
  %116 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %115, i32 0, i32 0, i64 0, !dbg !3252
  %117 = load i32, i32* %116, align 8, !dbg !3252, !tbaa !548
  %118 = icmp eq i32 %77, %117, !dbg !3252
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3252
  br i1 %118, label %119, label %141, !dbg !3252

; <label>:119:                                    ; preds = %114
  %120 = load i32, i32* %83, align 4, !dbg !3252, !tbaa !548
  %121 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %115, i32 0, i32 0, i64 1, !dbg !3252
  %122 = load i32, i32* %121, align 4, !dbg !3252, !tbaa !548
  %123 = icmp eq i32 %120, %122, !dbg !3252
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3252
  br i1 %123, label %124, label %141, !dbg !3252

; <label>:124:                                    ; preds = %119
  %125 = load i32, i32* %111, align 4, !dbg !3252, !tbaa !548
  %126 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %115, i32 0, i32 0, i64 2, !dbg !3252
  %127 = load i32, i32* %126, align 8, !dbg !3252, !tbaa !548
  %128 = icmp eq i32 %125, %127, !dbg !3252
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3252
  br i1 %128, label %129, label %141, !dbg !3252

; <label>:129:                                    ; preds = %124
  %130 = load i32, i32* %112, align 4, !dbg !3252, !tbaa !548
  %131 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %115, i32 0, i32 0, i64 3, !dbg !3252
  %132 = load i32, i32* %131, align 4, !dbg !3252, !tbaa !548
  %133 = icmp eq i32 %130, %132, !dbg !3252
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3252
  br i1 %133, label %134, label %141, !dbg !3252

; <label>:134:                                    ; preds = %129
  %135 = load i8, i8* %113, align 4, !dbg !3252, !tbaa !747
  %136 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %115, i32 0, i32 1, !dbg !3252
  %137 = load i8, i8* %136, align 8, !dbg !3252, !tbaa !638
  %138 = icmp eq i8 %135, %137, !dbg !3252
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3253
  br i1 %138, label %139, label %141, !dbg !3253

; <label>:139:                                    ; preds = %134
  %140 = trunc i64 %115 to i8, !dbg !3247
  br label %144, !dbg !3254

; <label>:141:                                    ; preds = %134, %129, %124, %119, %114
  %142 = add nuw nsw i64 %115, 1, !dbg !3255
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3256
  %143 = icmp ult i64 %142, 10, !dbg !3257
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3251
  br i1 %143, label %114, label %144, !dbg !3251, !llvm.loop !645

; <label>:144:                                    ; preds = %141, %139
  %145 = phi i8 [ %140, %139 ], [ -1, %141 ], !dbg !3258
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3259
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3260
  br label %146

; <label>:146:                                    ; preds = %144, %107
  %147 = phi i8 [ %78, %107 ], [ %145, %144 ], !dbg !3259
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %148 = icmp slt i8 %147, 0, !dbg !3261
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3263
  br i1 %148, label %159, label %149, !dbg !3263

; <label>:149:                                    ; preds = %146
  %150 = sext i8 %147 to i64, !dbg !3264
  %151 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %150, i32 4, !dbg !3266
  %152 = load i8, i8* %151, align 8, !dbg !3266, !tbaa !687
  %153 = icmp eq i8 %152, 1, !dbg !3267
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3268
  br i1 %153, label %159, label %154, !dbg !3268

; <label>:154:                                    ; preds = %149
  %155 = icmp eq i8 %152, 0, !dbg !3269
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3270
  br i1 %155, label %159, label %156, !dbg !3270

; <label>:156:                                    ; preds = %154
  store i8 2, i8* %151, align 8, !dbg !3271, !tbaa !687
  %157 = load i32, i32* @reachable_time, align 4, !dbg !3272, !tbaa !548
  %158 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %150, i32 6, i32 0, !dbg !3273
  store i32 %157, i32* %158, align 4, !dbg !3274, !tbaa !530
  br label %159, !dbg !3275

; <label>:159:                                    ; preds = %149, %154, %146, %69, %68, %156
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3276
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3275
  ret void, !dbg !3275
}

; Function Attrs: noredzone nounwind
define dso_local void @nd6_cleanup_netif(%struct.netif* readnone) local_unnamed_addr #0 !dbg !3278 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3285
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3287
  %2 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 0, i32 1), align 8, !dbg !3288, !tbaa !1207
  %3 = icmp eq %struct.netif* %2, %0, !dbg !3292
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3293
  br i1 %3, label %4, label %5, !dbg !3293

; <label>:4:                                      ; preds = %1
  store %struct.netif* null, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 0, i32 1), align 8, !dbg !3294, !tbaa !1207
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3296
  br label %5, !dbg !3296

; <label>:5:                                      ; preds = %1, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3297
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3287
  %6 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 1, i32 1), align 8, !dbg !3288, !tbaa !1207
  %7 = icmp eq %struct.netif* %6, %0, !dbg !3292
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3293
  br i1 %7, label %42, label %43, !dbg !3293

; <label>:8:                                      ; preds = %33, %55
  %9 = phi i64 [ 0, %55 ], [ %34, %33 ]
  %10 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %9, !dbg !3298
  %11 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %9, i32 1, !dbg !3303
  %12 = load %struct.netif*, %struct.netif** %11, align 8, !dbg !3303, !tbaa !718
  %13 = icmp eq %struct.netif* %12, %0, !dbg !3304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3305
  br i1 %13, label %14, label %33, !dbg !3305

; <label>:14:                                     ; preds = %8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3307
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3310
  %15 = load %struct.nd6_neighbor_cache_entry*, %struct.nd6_neighbor_cache_entry** getelementptr inbounds ([3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 0, i32 0), align 16, !dbg !3311, !tbaa !929
  %16 = icmp eq %struct.nd6_neighbor_cache_entry* %15, %10, !dbg !3315
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3316
  br i1 %16, label %17, label %18, !dbg !3316

; <label>:17:                                     ; preds = %14
  store %struct.nd6_neighbor_cache_entry* null, %struct.nd6_neighbor_cache_entry** getelementptr inbounds ([3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 0, i32 0), align 16, !dbg !3317, !tbaa !929
  store i8 0, i8* getelementptr inbounds ([3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 0, i32 2), align 4, !dbg !3319, !tbaa !1070
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3320
  br label %18, !dbg !3320

; <label>:18:                                     ; preds = %14, %17
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3321
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3310
  %19 = load %struct.nd6_neighbor_cache_entry*, %struct.nd6_neighbor_cache_entry** getelementptr inbounds ([3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 1, i32 0), align 16, !dbg !3311, !tbaa !929
  %20 = icmp eq %struct.nd6_neighbor_cache_entry* %19, %10, !dbg !3315
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3316
  br i1 %20, label %37, label %38, !dbg !3316

; <label>:21:                                     ; preds = %38, %41
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3321
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3310
  %22 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %9, i32 5, !dbg !3322
  store i8 0, i8* %22, align 1, !dbg !3323, !tbaa !1008
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3326
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3327
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3328
  %23 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %9, i32 3, !dbg !3329
  %24 = load %struct.nd6_q_entry*, %struct.nd6_q_entry** %23, align 8, !dbg !3329, !tbaa !725
  %25 = icmp eq %struct.nd6_q_entry* %24, null, !dbg !3330
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3331
  br i1 %25, label %27, label %26, !dbg !3331

; <label>:26:                                     ; preds = %21
  tail call fastcc void @nd6_free_q(%struct.nd6_q_entry* nonnull %24) #7, !dbg !3332
  store %struct.nd6_q_entry* null, %struct.nd6_q_entry** %23, align 8, !dbg !3333, !tbaa !725
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3334
  br label %27, !dbg !3334

; <label>:27:                                     ; preds = %21, %26
  %28 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %9, i32 4, !dbg !3335
  store i8 0, i8* %28, align 8, !dbg !3336, !tbaa !687
  store i8 0, i8* %22, align 1, !dbg !3337, !tbaa !1008
  store %struct.netif* null, %struct.netif** %11, align 8, !dbg !3338, !tbaa !718
  %29 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %9, i32 6, i32 0, !dbg !3339
  store i32 0, i32* %29, align 4, !dbg !3340, !tbaa !530
  %30 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %9, i32 0, i32 0, i64 0, !dbg !3341
  %31 = bitcast i32* %30 to <4 x i32>*, !dbg !3341
  store <4 x i32> zeroinitializer, <4 x i32>* %31, align 8, !dbg !3341, !tbaa !548
  %32 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %9, i32 0, i32 1, !dbg !3341
  store i8 0, i8* %32, align 8, !dbg !3341, !tbaa !638
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3341
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3342
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3343
  br label %33, !dbg !3343

; <label>:33:                                     ; preds = %8, %27
  %34 = add nuw nsw i64 %9, 1, !dbg !3344
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3345
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3346
  %35 = icmp eq i64 %34, 10, !dbg !3347
  br i1 %35, label %36, label %8, !dbg !3346, !llvm.loop !3348

; <label>:36:                                     ; preds = %33
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3352
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3353
  store <4 x i32> zeroinitializer, <4 x i32>* bitcast ([10 x %struct.nd6_destination_cache_entry]* @destination_cache to <4 x i32>*), align 16, !dbg !3354, !tbaa !548
  store i8 0, i8* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 0, i32 0, i32 1), align 16, !dbg !3354, !tbaa !1478
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3355
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3353
  store <4 x i32> zeroinitializer, <4 x i32>* bitcast (i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 1, i32 0, i32 0, i64 0) to <4 x i32>*), align 16, !dbg !3354, !tbaa !548
  store i8 0, i8* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 1, i32 0, i32 1), align 16, !dbg !3354, !tbaa !1478
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3355
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3353
  store <4 x i32> zeroinitializer, <4 x i32>* bitcast (i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 2, i32 0, i32 0, i64 0) to <4 x i32>*), align 16, !dbg !3354, !tbaa !548
  store i8 0, i8* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 2, i32 0, i32 1), align 16, !dbg !3354, !tbaa !1478
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3355
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3353
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 3, i32 0, i32 0, i64 0), align 16, !dbg !3354, !tbaa !548
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 3, i32 0, i32 0, i64 1), align 4, !dbg !3354, !tbaa !548
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 3, i32 0, i32 0, i64 2), align 8, !dbg !3354, !tbaa !548
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 3, i32 0, i32 0, i64 3), align 4, !dbg !3354, !tbaa !548
  store i8 0, i8* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 3, i32 0, i32 1), align 16, !dbg !3354, !tbaa !1478
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3355
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3353
  store <4 x i32> zeroinitializer, <4 x i32>* bitcast (i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 4, i32 0, i32 0, i64 0) to <4 x i32>*), align 16, !dbg !3354, !tbaa !548
  store i8 0, i8* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 4, i32 0, i32 1), align 16, !dbg !3354, !tbaa !1478
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3355
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3353
  store <4 x i32> zeroinitializer, <4 x i32>* bitcast (i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 5, i32 0, i32 0, i64 0) to <4 x i32>*), align 16, !dbg !3354, !tbaa !548
  store i8 0, i8* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 5, i32 0, i32 1), align 16, !dbg !3354, !tbaa !1478
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3355
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3353
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 6, i32 0, i32 0, i64 0), align 16, !dbg !3354, !tbaa !548
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 6, i32 0, i32 0, i64 1), align 4, !dbg !3354, !tbaa !548
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 6, i32 0, i32 0, i64 2), align 8, !dbg !3354, !tbaa !548
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 6, i32 0, i32 0, i64 3), align 4, !dbg !3354, !tbaa !548
  store i8 0, i8* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 6, i32 0, i32 1), align 16, !dbg !3354, !tbaa !1478
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3355
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3353
  store <4 x i32> zeroinitializer, <4 x i32>* bitcast (i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 7, i32 0, i32 0, i64 0) to <4 x i32>*), align 16, !dbg !3354, !tbaa !548
  store i8 0, i8* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 7, i32 0, i32 1), align 16, !dbg !3354, !tbaa !1478
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3355
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3353
  store <4 x i32> zeroinitializer, <4 x i32>* bitcast (i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 8, i32 0, i32 0, i64 0) to <4 x i32>*), align 16, !dbg !3354, !tbaa !548
  store i8 0, i8* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 8, i32 0, i32 1), align 16, !dbg !3354, !tbaa !1478
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3355
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3353
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 9, i32 0, i32 0, i64 0), align 16, !dbg !3354, !tbaa !548
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 9, i32 0, i32 0, i64 1), align 4, !dbg !3354, !tbaa !548
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 9, i32 0, i32 0, i64 2), align 8, !dbg !3354, !tbaa !548
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 9, i32 0, i32 0, i64 3), align 4, !dbg !3354, !tbaa !548
  store i8 0, i8* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 9, i32 0, i32 1), align 16, !dbg !3354, !tbaa !1478
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3355
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3353
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3357
  ret void, !dbg !3357

; <label>:37:                                     ; preds = %18
  store %struct.nd6_neighbor_cache_entry* null, %struct.nd6_neighbor_cache_entry** getelementptr inbounds ([3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 1, i32 0), align 16, !dbg !3317, !tbaa !929
  store i8 0, i8* getelementptr inbounds ([3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 1, i32 2), align 4, !dbg !3319, !tbaa !1070
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3320
  br label %38, !dbg !3320

; <label>:38:                                     ; preds = %37, %18
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3321
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3310
  %39 = load %struct.nd6_neighbor_cache_entry*, %struct.nd6_neighbor_cache_entry** getelementptr inbounds ([3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 2, i32 0), align 16, !dbg !3311, !tbaa !929
  %40 = icmp eq %struct.nd6_neighbor_cache_entry* %39, %10, !dbg !3315
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3316
  br i1 %40, label %41, label %21, !dbg !3316

; <label>:41:                                     ; preds = %38
  store %struct.nd6_neighbor_cache_entry* null, %struct.nd6_neighbor_cache_entry** getelementptr inbounds ([3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 2, i32 0), align 16, !dbg !3317, !tbaa !929
  store i8 0, i8* getelementptr inbounds ([3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 2, i32 2), align 4, !dbg !3319, !tbaa !1070
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3320
  br label %21, !dbg !3320

; <label>:42:                                     ; preds = %5
  store %struct.netif* null, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 1, i32 1), align 8, !dbg !3294, !tbaa !1207
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3296
  br label %43, !dbg !3296

; <label>:43:                                     ; preds = %42, %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3297
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3287
  %44 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 2, i32 1), align 8, !dbg !3288, !tbaa !1207
  %45 = icmp eq %struct.netif* %44, %0, !dbg !3292
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3293
  br i1 %45, label %46, label %47, !dbg !3293

; <label>:46:                                     ; preds = %43
  store %struct.netif* null, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 2, i32 1), align 8, !dbg !3294, !tbaa !1207
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3296
  br label %47, !dbg !3296

; <label>:47:                                     ; preds = %46, %43
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3297
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3287
  %48 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 3, i32 1), align 8, !dbg !3288, !tbaa !1207
  %49 = icmp eq %struct.netif* %48, %0, !dbg !3292
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3293
  br i1 %49, label %50, label %51, !dbg !3293

; <label>:50:                                     ; preds = %47
  store %struct.netif* null, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 3, i32 1), align 8, !dbg !3294, !tbaa !1207
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3296
  br label %51, !dbg !3296

; <label>:51:                                     ; preds = %50, %47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3297
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3287
  %52 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 4, i32 1), align 8, !dbg !3288, !tbaa !1207
  %53 = icmp eq %struct.netif* %52, %0, !dbg !3292
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3293
  br i1 %53, label %54, label %55, !dbg !3293

; <label>:54:                                     ; preds = %51
  store %struct.netif* null, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 4, i32 1), align 8, !dbg !3294, !tbaa !1207
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3296
  br label %55, !dbg !3296

; <label>:55:                                     ; preds = %54, %51
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3297
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3287
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3358
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3346
  br label %8, !dbg !3346
}

; Function Attrs: noredzone nounwind
define dso_local void @nd6_adjust_mld_membership(%struct.netif*, i8 signext, i8 zeroext) local_unnamed_addr #0 !dbg !3359 {
  %4 = sext i8 %1 to i64, !dbg !3372
  %5 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 %4, !dbg !3372
  %6 = load i8, i8* %5, align 1, !dbg !3372, !tbaa !530
  %7 = icmp eq i8 %6, 0, !dbg !3374
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3375
  br i1 %7, label %13, label %8, !dbg !3375

; <label>:8:                                      ; preds = %3
  %9 = icmp eq i8 %6, 64, !dbg !3376
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3377
  br i1 %9, label %13, label %10, !dbg !3377

; <label>:10:                                     ; preds = %8
  %11 = icmp ne i8 %6, 8, !dbg !3378
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %12 = zext i1 %11 to i32
  br label %13

; <label>:13:                                     ; preds = %8, %3, %10
  %14 = phi i32 [ 0, %8 ], [ 0, %3 ], [ %12, %10 ]
  %15 = icmp eq i8 %2, 0, !dbg !3379
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3380
  br i1 %15, label %21, label %16, !dbg !3380

; <label>:16:                                     ; preds = %13
  %17 = icmp eq i8 %2, 64, !dbg !3381
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3382
  br i1 %17, label %21, label %18, !dbg !3382

; <label>:18:                                     ; preds = %16
  %19 = icmp ne i8 %2, 8, !dbg !3383
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %20 = zext i1 %19 to i8
  br label %21

; <label>:21:                                     ; preds = %16, %13, %18
  %22 = phi i8 [ 0, %16 ], [ 0, %13 ], [ %20, %18 ]
  %23 = zext i8 %22 to i32, !dbg !3385
  %24 = icmp eq i32 %14, %23, !dbg !3387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3388
  br i1 %24, label %38, label %25, !dbg !3388

; <label>:25:                                     ; preds = %21
  store i32 767, i32* getelementptr inbounds (%struct.ip6_addr, %struct.ip6_addr* @multicast_address, i64 0, i32 0, i64 0), align 16, !dbg !3389, !tbaa !548
  store i32 0, i32* getelementptr inbounds (%struct.ip6_addr, %struct.ip6_addr* @multicast_address, i64 0, i32 0, i64 1), align 4, !dbg !3389, !tbaa !548
  store i32 16777216, i32* getelementptr inbounds (%struct.ip6_addr, %struct.ip6_addr* @multicast_address, i64 0, i32 0, i64 2), align 8, !dbg !3389, !tbaa !548
  %26 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 %4, i32 0, i32 0, i32 0, i64 3, !dbg !3389
  %27 = load i32, i32* %26, align 4, !dbg !3389, !tbaa !530
  %28 = or i32 %27, 255, !dbg !3389
  store i32 %28, i32* getelementptr inbounds (%struct.ip6_addr, %struct.ip6_addr* @multicast_address, i64 0, i32 0, i64 3), align 4, !dbg !3389, !tbaa !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3392
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3392
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3392
  %29 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 23, !dbg !3392
  %30 = load i8, i8* %29, align 8, !dbg !3392, !tbaa !551
  %31 = add i8 %30, 1, !dbg !3392
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3392
  store i8 %31, i8* getelementptr inbounds (%struct.ip6_addr, %struct.ip6_addr* @multicast_address, i64 0, i32 1), align 16, !dbg !3392, !tbaa !747
  %32 = icmp eq i8 %22, 0, !dbg !3393
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3395
  br i1 %32, label %35, label %33, !dbg !3395

; <label>:33:                                     ; preds = %25
  %34 = tail call signext i8 @mld6_joingroup_netif(%struct.netif* nonnull %0, %struct.ip6_addr* nonnull @multicast_address) #7, !dbg !3396
  br label %37, !dbg !3398

; <label>:35:                                     ; preds = %25
  %36 = tail call signext i8 @mld6_leavegroup_netif(%struct.netif* nonnull %0, %struct.ip6_addr* nonnull @multicast_address) #7, !dbg !3399
  br label %37

; <label>:37:                                     ; preds = %35, %33
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %38, !dbg !3401

; <label>:38:                                     ; preds = %37, %21
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3401
  ret void, !dbg !3401
}

; Function Attrs: noredzone
declare dso_local signext i8 @mld6_joingroup_netif(%struct.netif*, %struct.ip6_addr*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local signext i8 @mld6_leavegroup_netif(%struct.netif*, %struct.ip6_addr*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @nd6_restart_netif(%struct.netif* nocapture) local_unnamed_addr #0 !dbg !3402 {
  %2 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 25, !dbg !3406
  store i8 3, i8* %2, align 2, !dbg !3407, !tbaa !906
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3408
  ret void, !dbg !3408
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

; Function Attrs: noredzone
declare dso_local void @_uk_vprintk(i32, i8*, i8*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

; Function Attrs: noredzone
declare dso_local %struct.pbuf* @pbuf_alloc(i32, i16 zeroext, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local zeroext i16 @ip6_chksum_pseudo(%struct.pbuf*, i8 zeroext, i16 zeroext, %struct.ip6_addr*, %struct.ip6_addr*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local signext i8 @ip6_output_if(%struct.pbuf*, %struct.ip6_addr*, %struct.ip6_addr*, i8 zeroext, i8 zeroext, i8 zeroext, %struct.netif*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc void @nd6_free_q(%struct.nd6_q_entry*) unnamed_addr #0 !dbg !3409 {
  %2 = icmp eq %struct.nd6_q_entry* %0, null, !dbg !3416
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3419
  br i1 %2, label %3, label %4, !dbg !3419

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0)) #8, !dbg !3420
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !3423
  tail call void @ukplat_terminate(i32 3) #9, !dbg !3423
  unreachable

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.nd6_q_entry, %struct.nd6_q_entry* %0, i64 0, i32 1, !dbg !3427
  %6 = load %struct.pbuf*, %struct.pbuf** %5, align 8, !dbg !3427, !tbaa !1677
  %7 = icmp eq %struct.pbuf* %6, null, !dbg !3427
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3430
  br i1 %7, label %11, label %8, !dbg !3430

; <label>:8:                                      ; preds = %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3431
  %9 = getelementptr inbounds %struct.nd6_q_entry, %struct.nd6_q_entry* %0, i64 0, i32 0, !dbg !3433
  %10 = load %struct.nd6_q_entry*, %struct.nd6_q_entry** %9, align 8, !dbg !3433, !tbaa !1673
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3435
  br label %13, !dbg !3435

; <label>:11:                                     ; preds = %4
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0)) #8, !dbg !3437
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !3440
  tail call void @ukplat_terminate(i32 3) #9, !dbg !3440
  unreachable

; <label>:12:                                     ; preds = %20
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0)) #8, !dbg !3444
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !3448
  tail call void @ukplat_terminate(i32 3) #9, !dbg !3448
  unreachable

; <label>:13:                                     ; preds = %8, %20
  %14 = phi %struct.nd6_q_entry* [ %10, %8 ], [ %24, %20 ]
  %15 = phi %struct.nd6_q_entry* [ %0, %8 ], [ %14, %20 ]
  %16 = phi %struct.pbuf* [ %6, %8 ], [ %22, %20 ]
  %17 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %16) #7, !dbg !3452
  %18 = bitcast %struct.nd6_q_entry* %15 to i8*, !dbg !3453
  tail call void @memp_free(i32 12, i8* %18) #7, !dbg !3454
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3431
  %19 = icmp eq %struct.nd6_q_entry* %14, null, !dbg !3431
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3431
  br i1 %19, label %26, label %20, !dbg !3431, !llvm.loop !3455

; <label>:20:                                     ; preds = %13
  %21 = getelementptr inbounds %struct.nd6_q_entry, %struct.nd6_q_entry* %14, i64 0, i32 1
  %22 = load %struct.pbuf*, %struct.pbuf** %21, align 8, !dbg !3457, !tbaa !1677
  %23 = getelementptr inbounds %struct.nd6_q_entry, %struct.nd6_q_entry* %14, i64 0, i32 0, !dbg !3433
  %24 = load %struct.nd6_q_entry*, %struct.nd6_q_entry** %23, align 8, !dbg !3433, !tbaa !1673
  %25 = icmp eq %struct.pbuf* %22, null, !dbg !3457
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3435
  br i1 %25, label %12, label %13, !dbg !3435

; <label>:26:                                     ; preds = %13
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3458
  ret void, !dbg !3458
}

; Function Attrs: noredzone
declare dso_local void @memp_free(i32, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.pbuf* @pbuf_clone(i32, i32, %struct.pbuf*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @pbuf_ref(%struct.pbuf*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memp_malloc(i32) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin noredzone nounwind }
attributes #8 = { nobuiltin noredzone }
attributes #9 = { nobuiltin noredzone noreturn nounwind }

!llvm.module.flags = !{!453, !454, !455}
!llvm.ident = !{!456}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "reachable_time", scope: !2, file: !3, line: 83, type: !147, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !115, globals: !264)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/ipv6/nd6.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{!5, !11, !20, !41, !48, !54, !62, !68, !94}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "netif_mac_filter_action", file: !6, line: 156, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/netif.h", directory: "/root/.unikraft/apps/redis/build")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "NETIF_DEL_MAC_FILTER", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "NETIF_ADD_MAC_FILTER", value: 1, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "nd6_neighbor_cache_entry_state", file: !12, line: 112, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/priv/nd6_priv.h", directory: "/root/.unikraft/apps/redis/build")
!13 = !{!14, !15, !16, !17, !18, !19}
!14 = !DIEnumerator(name: "ND6_NO_ENTRY", value: 0, isUnsigned: true)
!15 = !DIEnumerator(name: "ND6_INCOMPLETE", value: 1, isUnsigned: true)
!16 = !DIEnumerator(name: "ND6_REACHABLE", value: 2, isUnsigned: true)
!17 = !DIEnumerator(name: "ND6_STALE", value: 3, isUnsigned: true)
!18 = !DIEnumerator(name: "ND6_DELAY", value: 4, isUnsigned: true)
!19 = !DIEnumerator(name: "ND6_PROBE", value: 5, isUnsigned: true)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 53, baseType: !22, size: 32, elements: !23)
!21 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/err.h", directory: "/root/.unikraft/apps/redis/build")
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !{!24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40}
!24 = !DIEnumerator(name: "ERR_OK", value: 0)
!25 = !DIEnumerator(name: "ERR_MEM", value: -1)
!26 = !DIEnumerator(name: "ERR_BUF", value: -2)
!27 = !DIEnumerator(name: "ERR_TIMEOUT", value: -3)
!28 = !DIEnumerator(name: "ERR_RTE", value: -4)
!29 = !DIEnumerator(name: "ERR_INPROGRESS", value: -5)
!30 = !DIEnumerator(name: "ERR_VAL", value: -6)
!31 = !DIEnumerator(name: "ERR_WOULDBLOCK", value: -7)
!32 = !DIEnumerator(name: "ERR_USE", value: -8)
!33 = !DIEnumerator(name: "ERR_ALREADY", value: -9)
!34 = !DIEnumerator(name: "ERR_ISCONN", value: -10)
!35 = !DIEnumerator(name: "ERR_CONN", value: -11)
!36 = !DIEnumerator(name: "ERR_IF", value: -12)
!37 = !DIEnumerator(name: "ERR_ABRT", value: -13)
!38 = !DIEnumerator(name: "ERR_RST", value: -14)
!39 = !DIEnumerator(name: "ERR_CLSD", value: -15)
!40 = !DIEnumerator(name: "ERR_ARG", value: -16)
!41 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ukplat_gstate", file: !42, line: 68, baseType: !7, size: 32, elements: !43)
!42 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/bootstrap.h", directory: "/root/.unikraft/apps/redis/build")
!43 = !{!44, !45, !46, !47}
!44 = !DIEnumerator(name: "UKPLAT_HALT", value: 0, isUnsigned: true)
!45 = !DIEnumerator(name: "UKPLAT_RESTART", value: 1, isUnsigned: true)
!46 = !DIEnumerator(name: "UKPLAT_SUSPEND", value: 2, isUnsigned: true)
!47 = !DIEnumerator(name: "UKPLAT_CRASH", value: 3, isUnsigned: true)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lwip_ip_addr_type", file: !49, line: 54, baseType: !7, size: 32, elements: !50)
!49 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip_addr.h", directory: "/root/.unikraft/apps/redis/build")
!50 = !{!51, !52, !53}
!51 = !DIEnumerator(name: "IPADDR_TYPE_V4", value: 0, isUnsigned: true)
!52 = !DIEnumerator(name: "IPADDR_TYPE_V6", value: 6, isUnsigned: true)
!53 = !DIEnumerator(name: "IPADDR_TYPE_ANY", value: 46, isUnsigned: true)
!54 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !55, line: 89, baseType: !7, size: 32, elements: !56)
!55 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/pbuf.h", directory: "/root/.unikraft/apps/redis/build")
!56 = !{!57, !58, !59, !60, !61}
!57 = !DIEnumerator(name: "PBUF_TRANSPORT", value: 74, isUnsigned: true)
!58 = !DIEnumerator(name: "PBUF_IP", value: 54, isUnsigned: true)
!59 = !DIEnumerator(name: "PBUF_LINK", value: 14, isUnsigned: true)
!60 = !DIEnumerator(name: "PBUF_RAW_TX", value: 0, isUnsigned: true)
!61 = !DIEnumerator(name: "PBUF_RAW", value: 0, isUnsigned: true)
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !55, line: 145, baseType: !7, size: 32, elements: !63)
!63 = !{!64, !65, !66, !67}
!64 = !DIEnumerator(name: "PBUF_RAM", value: 640, isUnsigned: true)
!65 = !DIEnumerator(name: "PBUF_ROM", value: 1, isUnsigned: true)
!66 = !DIEnumerator(name: "PBUF_REF", value: 65, isUnsigned: true)
!67 = !DIEnumerator(name: "PBUF_POOL", value: 386, isUnsigned: true)
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "icmp6_type", file: !69, line: 47, baseType: !7, size: 32, elements: !70)
!69 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/prot/icmp6.h", directory: "/root/.unikraft/apps/redis/build")
!70 = !{!71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93}
!71 = !DIEnumerator(name: "ICMP6_TYPE_DUR", value: 1, isUnsigned: true)
!72 = !DIEnumerator(name: "ICMP6_TYPE_PTB", value: 2, isUnsigned: true)
!73 = !DIEnumerator(name: "ICMP6_TYPE_TE", value: 3, isUnsigned: true)
!74 = !DIEnumerator(name: "ICMP6_TYPE_PP", value: 4, isUnsigned: true)
!75 = !DIEnumerator(name: "ICMP6_TYPE_PE1", value: 100, isUnsigned: true)
!76 = !DIEnumerator(name: "ICMP6_TYPE_PE2", value: 101, isUnsigned: true)
!77 = !DIEnumerator(name: "ICMP6_TYPE_RSV_ERR", value: 127, isUnsigned: true)
!78 = !DIEnumerator(name: "ICMP6_TYPE_EREQ", value: 128, isUnsigned: true)
!79 = !DIEnumerator(name: "ICMP6_TYPE_EREP", value: 129, isUnsigned: true)
!80 = !DIEnumerator(name: "ICMP6_TYPE_MLQ", value: 130, isUnsigned: true)
!81 = !DIEnumerator(name: "ICMP6_TYPE_MLR", value: 131, isUnsigned: true)
!82 = !DIEnumerator(name: "ICMP6_TYPE_MLD", value: 132, isUnsigned: true)
!83 = !DIEnumerator(name: "ICMP6_TYPE_RS", value: 133, isUnsigned: true)
!84 = !DIEnumerator(name: "ICMP6_TYPE_RA", value: 134, isUnsigned: true)
!85 = !DIEnumerator(name: "ICMP6_TYPE_NS", value: 135, isUnsigned: true)
!86 = !DIEnumerator(name: "ICMP6_TYPE_NA", value: 136, isUnsigned: true)
!87 = !DIEnumerator(name: "ICMP6_TYPE_RD", value: 137, isUnsigned: true)
!88 = !DIEnumerator(name: "ICMP6_TYPE_MRA", value: 151, isUnsigned: true)
!89 = !DIEnumerator(name: "ICMP6_TYPE_MRS", value: 152, isUnsigned: true)
!90 = !DIEnumerator(name: "ICMP6_TYPE_MRT", value: 153, isUnsigned: true)
!91 = !DIEnumerator(name: "ICMP6_TYPE_PE3", value: 200, isUnsigned: true)
!92 = !DIEnumerator(name: "ICMP6_TYPE_PE4", value: 201, isUnsigned: true)
!93 = !DIEnumerator(name: "ICMP6_TYPE_RSV_INF", value: 255, isUnsigned: true)
!94 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !95, line: 52, baseType: !7, size: 32, elements: !96)
!95 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/memp.h", directory: "/root/.unikraft/apps/redis/build")
!96 = !{!97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114}
!97 = !DIEnumerator(name: "MEMP_UDP_PCB", value: 0, isUnsigned: true)
!98 = !DIEnumerator(name: "MEMP_TCP_PCB", value: 1, isUnsigned: true)
!99 = !DIEnumerator(name: "MEMP_TCP_PCB_LISTEN", value: 2, isUnsigned: true)
!100 = !DIEnumerator(name: "MEMP_TCP_SEG", value: 3, isUnsigned: true)
!101 = !DIEnumerator(name: "MEMP_REASSDATA", value: 4, isUnsigned: true)
!102 = !DIEnumerator(name: "MEMP_FRAG_PBUF", value: 5, isUnsigned: true)
!103 = !DIEnumerator(name: "MEMP_NETBUF", value: 6, isUnsigned: true)
!104 = !DIEnumerator(name: "MEMP_NETCONN", value: 7, isUnsigned: true)
!105 = !DIEnumerator(name: "MEMP_TCPIP_MSG_API", value: 8, isUnsigned: true)
!106 = !DIEnumerator(name: "MEMP_TCPIP_MSG_INPKT", value: 9, isUnsigned: true)
!107 = !DIEnumerator(name: "MEMP_SYS_TIMEOUT", value: 10, isUnsigned: true)
!108 = !DIEnumerator(name: "MEMP_NETDB", value: 11, isUnsigned: true)
!109 = !DIEnumerator(name: "MEMP_ND6_QUEUE", value: 12, isUnsigned: true)
!110 = !DIEnumerator(name: "MEMP_IP6_REASSDATA", value: 13, isUnsigned: true)
!111 = !DIEnumerator(name: "MEMP_MLD6_GROUP", value: 14, isUnsigned: true)
!112 = !DIEnumerator(name: "MEMP_PBUF", value: 15, isUnsigned: true)
!113 = !DIEnumerator(name: "MEMP_PBUF_POOL", value: 16, isUnsigned: true)
!114 = !DIEnumerator(name: "MEMP_MAX", value: 17, isUnsigned: true)
!115 = !{!116, !124, !147, !117, !152, !162, !170, !179, !180, !188, !199, !131, !206, !218, !227, !234, !235, !242, !247, !248}
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8_t", file: !118, line: 125, baseType: !119)
!118 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/arch.h", directory: "/root/.unikraft/apps/redis/build")
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !120, line: 24, baseType: !121)
!120 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !122, line: 43, baseType: !123)
!122 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!123 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "na_header", file: !126, line: 71, size: 192, elements: !127)
!126 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/prot/nd6.h", directory: "/root/.unikraft/apps/redis/build")
!127 = !{!128, !129, !130, !135, !136, !140}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !125, file: !126, line: 72, baseType: !117, size: 8)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !125, file: !126, line: 73, baseType: !117, size: 8, offset: 8)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "chksum", scope: !125, file: !126, line: 74, baseType: !131, size: 16, offset: 16)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16_t", file: !118, line: 127, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !120, line: 36, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !122, line: 57, baseType: !134)
!134 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !125, file: !126, line: 75, baseType: !117, size: 8, offset: 32)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !125, file: !126, line: 76, baseType: !137, size: 24, offset: 40)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 24, elements: !138)
!138 = !{!139}
!139 = !DISubrange(count: 3)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "target_address", scope: !125, file: !126, line: 77, baseType: !141, size: 128, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip6_addr_p_t", file: !142, line: 60, baseType: !143)
!142 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/prot/ip6.h", directory: "/root/.unikraft/apps/redis/build")
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip6_addr_packed", file: !142, line: 53, size: 128, elements: !144)
!144 = !{!145}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !143, file: !142, line: 54, baseType: !146, size: 128)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 128, elements: !150)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32_t", file: !118, line: 129, baseType: !148)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !120, line: 48, baseType: !149)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !122, line: 79, baseType: !7)
!150 = !{!151}
!151 = !DISubrange(count: 4)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !154)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip6_hdr", file: !142, line: 80, size: 320, elements: !155)
!155 = !{!156, !157, !158, !159, !160, !161}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_v_tc_fl", scope: !154, file: !142, line: 82, baseType: !147, size: 32)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_plen", scope: !154, file: !142, line: 84, baseType: !131, size: 16, offset: 32)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_nexth", scope: !154, file: !142, line: 86, baseType: !117, size: 8, offset: 48)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_hoplim", scope: !154, file: !142, line: 88, baseType: !117, size: 8, offset: 56)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !154, file: !142, line: 90, baseType: !141, size: 128, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !154, file: !142, line: 91, baseType: !141, size: 128, offset: 192)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !164)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip6_addr_t", file: !165, line: 67, baseType: !166)
!165 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip6_addr.h", directory: "/root/.unikraft/apps/redis/build")
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip6_addr", file: !165, line: 59, size: 160, elements: !167)
!167 = !{!168, !169}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !166, file: !165, line: 60, baseType: !146, size: 128)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "zone", scope: !166, file: !165, line: 62, baseType: !117, size: 8, offset: 128)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lladdr_option", file: !126, line: 160, size: 64, elements: !172)
!172 = !{!173, !174, !175}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !171, file: !126, line: 161, baseType: !117, size: 8)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !171, file: !126, line: 162, baseType: !117, size: 8, offset: 8)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !171, file: !126, line: 163, baseType: !176, size: 48, offset: 16)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 48, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 6)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_header", file: !126, line: 53, size: 192, elements: !182)
!182 = !{!183, !184, !185, !186, !187}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !181, file: !126, line: 54, baseType: !117, size: 8)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !181, file: !126, line: 55, baseType: !117, size: 8, offset: 8)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "chksum", scope: !181, file: !126, line: 56, baseType: !131, size: 16, offset: 16)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !181, file: !126, line: 57, baseType: !147, size: 32, offset: 32)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "target_address", scope: !181, file: !126, line: 58, baseType: !141, size: 128, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ra_header", file: !126, line: 118, size: 128, elements: !190)
!190 = !{!191, !192, !193, !194, !195, !196, !197, !198}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !189, file: !126, line: 119, baseType: !117, size: 8)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !189, file: !126, line: 120, baseType: !117, size: 8, offset: 8)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "chksum", scope: !189, file: !126, line: 121, baseType: !131, size: 16, offset: 16)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "current_hop_limit", scope: !189, file: !126, line: 122, baseType: !117, size: 8, offset: 32)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !189, file: !126, line: 123, baseType: !117, size: 8, offset: 40)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "router_lifetime", scope: !189, file: !126, line: 124, baseType: !131, size: 16, offset: 48)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "reachable_time", scope: !189, file: !126, line: 125, baseType: !147, size: 32, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "retrans_timer", scope: !189, file: !126, line: 126, baseType: !147, size: 32, offset: 96)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtu_option", file: !126, line: 220, size: 64, elements: !201)
!201 = !{!202, !203, !204, !205}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !200, file: !126, line: 221, baseType: !117, size: 8)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !200, file: !126, line: 222, baseType: !117, size: 8, offset: 8)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !200, file: !126, line: 223, baseType: !131, size: 16, offset: 16)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !200, file: !126, line: 224, baseType: !147, size: 32, offset: 32)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prefix_option", file: !126, line: 180, size: 256, elements: !208)
!208 = !{!209, !210, !211, !212, !213, !214, !215, !216, !217}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !207, file: !126, line: 181, baseType: !117, size: 8)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !207, file: !126, line: 182, baseType: !117, size: 8, offset: 8)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "prefix_length", scope: !207, file: !126, line: 183, baseType: !117, size: 8, offset: 16)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !207, file: !126, line: 184, baseType: !117, size: 8, offset: 24)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "valid_lifetime", scope: !207, file: !126, line: 185, baseType: !147, size: 32, offset: 32)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "preferred_lifetime", scope: !207, file: !126, line: 186, baseType: !147, size: 32, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !207, file: !126, line: 187, baseType: !137, size: 24, offset: 96)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "site_prefix_length", scope: !207, file: !126, line: 188, baseType: !117, size: 8, offset: 120)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !207, file: !126, line: 189, baseType: !141, size: 128, offset: 128)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redirect_header", file: !126, line: 139, size: 320, elements: !220)
!220 = !{!221, !222, !223, !224, !225, !226}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !219, file: !126, line: 140, baseType: !117, size: 8)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !219, file: !126, line: 141, baseType: !117, size: 8, offset: 8)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "chksum", scope: !219, file: !126, line: 142, baseType: !131, size: 16, offset: 16)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !219, file: !126, line: 143, baseType: !147, size: 32, offset: 32)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "target_address", scope: !219, file: !126, line: 144, baseType: !141, size: 128, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "destination_address", scope: !219, file: !126, line: 145, baseType: !141, size: 128, offset: 192)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "icmp6_hdr", file: !69, line: 138, size: 64, elements: !229)
!229 = !{!230, !231, !232, !233}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !228, file: !69, line: 139, baseType: !117, size: 8)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !228, file: !69, line: 140, baseType: !117, size: 8, offset: 8)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "chksum", scope: !228, file: !69, line: 141, baseType: !131, size: 16, offset: 16)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !228, file: !69, line: 142, baseType: !147, size: 32, offset: 32)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rs_header", file: !126, line: 93, size: 64, elements: !237)
!237 = !{!238, !239, !240, !241}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !236, file: !126, line: 94, baseType: !117, size: 8)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !236, file: !126, line: 95, baseType: !117, size: 8, offset: 8)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "chksum", scope: !236, file: !126, line: 96, baseType: !131, size: 16, offset: 16)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !236, file: !126, line: 97, baseType: !147, size: 32, offset: 32)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !243, line: 40, baseType: !244)
!243 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !245, line: 129, baseType: !246)
!245 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!246 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_addr_idx_t", file: !6, line: 244, baseType: !117)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nd6_q_entry", file: !12, line: 64, size: 128, elements: !250)
!250 = !{!251, !252}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !249, file: !12, line: 65, baseType: !248, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !249, file: !12, line: 66, baseType: !253, size: 64, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pbuf", file: !55, line: 186, size: 192, elements: !255)
!255 = !{!256, !257, !258, !259, !260, !261, !262, !263}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !254, file: !55, line: 188, baseType: !253, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !254, file: !55, line: 191, baseType: !179, size: 64, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "tot_len", scope: !254, file: !55, line: 200, baseType: !131, size: 16, offset: 128)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !254, file: !55, line: 203, baseType: !131, size: 16, offset: 144)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "type_internal", scope: !254, file: !55, line: 208, baseType: !117, size: 8, offset: 160)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !254, file: !55, line: 211, baseType: !117, size: 8, offset: 168)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !254, file: !55, line: 218, baseType: !117, size: 8, offset: 176)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "if_idx", scope: !254, file: !55, line: 221, baseType: !117, size: 8, offset: 184)
!264 = !{!0, !265, !267, !371, !380, !390, !399, !401, !403, !405, !407, !414, !438, !441}
!265 = !DIGlobalVariableExpression(var: !266, expr: !DIExpression())
!266 = distinct !DIGlobalVariable(name: "retrans_timer", scope: !2, file: !3, line: 84, type: !147, isLocal: false, isDefinition: true)
!267 = !DIGlobalVariableExpression(var: !268, expr: !DIExpression())
!268 = distinct !DIGlobalVariable(name: "neighbor_cache", scope: !2, file: !3, line: 77, type: !269, isLocal: false, isDefinition: true)
!269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, size: 4480, elements: !369)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nd6_neighbor_cache_entry", file: !12, line: 71, size: 448, elements: !271)
!271 = !{!272, !273, !358, !359, !360, !361, !362}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "next_hop_address", scope: !270, file: !12, line: 72, baseType: !164, size: 160)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "netif", scope: !270, file: !12, line: 73, baseType: !274, size: 64, offset: 192)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netif", file: !6, line: 260, size: 2240, elements: !276)
!276 = !{!277, !278, !293, !294, !295, !297, !298, !300, !301, !311, !318, !323, !328, !333, !334, !335, !339, !340, !341, !342, !343, !344, !345, !350, !351, !352, !353}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !275, file: !6, line: 263, baseType: !274, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "ip_addr", scope: !275, file: !6, line: 268, baseType: !279, size: 192, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_addr_t", file: !49, line: 76, baseType: !280)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_addr", file: !49, line: 69, size: 192, elements: !281)
!281 = !{!282, !292}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "u_addr", scope: !280, file: !49, line: 73, baseType: !283, size: 160)
!283 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !280, file: !49, line: 70, size: 160, elements: !284)
!284 = !{!285, !286}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "ip6", scope: !283, file: !49, line: 71, baseType: !164, size: 160)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "ip4", scope: !283, file: !49, line: 72, baseType: !287, size: 32)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip4_addr_t", file: !288, line: 57, baseType: !289)
!288 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip4_addr.h", directory: "/root/.unikraft/apps/redis/build")
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip4_addr", file: !288, line: 51, size: 32, elements: !290)
!290 = !{!291}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !289, file: !288, line: 52, baseType: !147, size: 32)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !280, file: !49, line: 75, baseType: !117, size: 8, offset: 160)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "netmask", scope: !275, file: !6, line: 269, baseType: !279, size: 192, offset: 256)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "gw", scope: !275, file: !6, line: 270, baseType: !279, size: 192, offset: 448)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr", scope: !275, file: !6, line: 274, baseType: !296, size: 576, offset: 640)
!296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !279, size: 576, elements: !138)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_state", scope: !275, file: !6, line: 277, baseType: !137, size: 24, offset: 1216)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_valid_life", scope: !275, file: !6, line: 282, baseType: !299, size: 96, offset: 1248)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 96, elements: !138)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_pref_life", scope: !275, file: !6, line: 283, baseType: !299, size: 96, offset: 1344)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !275, file: !6, line: 288, baseType: !302, size: 64, offset: 1472)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_input_fn", file: !6, line: 178, baseType: !303)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DISubroutineType(types: !305)
!305 = !{!306, !253, !274}
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "err_t", file: !21, line: 96, baseType: !307)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8_t", file: !118, line: 126, baseType: !308)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !120, line: 20, baseType: !309)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !122, line: 41, baseType: !310)
!310 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !275, file: !6, line: 294, baseType: !312, size: 64, offset: 1536)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_output_fn", file: !6, line: 189, baseType: !313)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DISubroutineType(types: !315)
!315 = !{!306, !274, !253, !316}
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !287)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "linkoutput", scope: !275, file: !6, line: 299, baseType: !319, size: 64, offset: 1600)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_linkoutput_fn", file: !6, line: 212, baseType: !320)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{!306, !274, !253}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "output_ip6", scope: !275, file: !6, line: 305, baseType: !324, size: 64, offset: 1664)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_output_ip6_fn", file: !6, line: 202, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{!306, !274, !253, !162}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "status_callback", scope: !275, file: !6, line: 310, baseType: !329, size: 64, offset: 1728)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_status_callback_fn", file: !6, line: 214, baseType: !330)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{null, !274}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "remove_callback", scope: !275, file: !6, line: 319, baseType: !329, size: 64, offset: 1792)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !275, file: !6, line: 323, baseType: !179, size: 64, offset: 1856)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !275, file: !6, line: 325, baseType: !336, size: 64, offset: 1920)
!336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 64, elements: !337)
!337 = !{!338}
!338 = !DISubrange(count: 1)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "chksum_flags", scope: !275, file: !6, line: 332, baseType: !131, size: 16, offset: 1984)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !275, file: !6, line: 335, baseType: !131, size: 16, offset: 2000)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "mtu6", scope: !275, file: !6, line: 338, baseType: !131, size: 16, offset: 2016)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "hwaddr", scope: !275, file: !6, line: 341, baseType: !176, size: 48, offset: 2032)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "hwaddr_len", scope: !275, file: !6, line: 343, baseType: !117, size: 8, offset: 2080)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !275, file: !6, line: 345, baseType: !117, size: 8, offset: 2088)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !275, file: !6, line: 347, baseType: !346, size: 16, offset: 2096)
!346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 16, elements: !348)
!347 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!348 = !{!349}
!349 = !DISubrange(count: 2)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !275, file: !6, line: 350, baseType: !117, size: 8, offset: 2112)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_autoconfig_enabled", scope: !275, file: !6, line: 353, baseType: !117, size: 8, offset: 2120)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "rs_count", scope: !275, file: !6, line: 357, baseType: !117, size: 8, offset: 2128)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "mld_mac_filter", scope: !275, file: !6, line: 377, baseType: !354, size: 64, offset: 2176)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_mld_mac_filter_fn", file: !6, line: 222, baseType: !355)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{!306, !274, !162, !5}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "lladdr", scope: !270, file: !12, line: 74, baseType: !176, size: 48, offset: 256)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !270, file: !12, line: 78, baseType: !248, size: 64, offset: 320)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !270, file: !12, line: 83, baseType: !117, size: 8, offset: 384)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "isrouter", scope: !270, file: !12, line: 84, baseType: !117, size: 8, offset: 392)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !270, file: !12, line: 90, baseType: !363, size: 32, offset: 416)
!363 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !270, file: !12, line: 85, size: 32, elements: !364)
!364 = !{!365, !366, !367, !368}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "reachable_time", scope: !363, file: !12, line: 86, baseType: !147, size: 32)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "delay_time", scope: !363, file: !12, line: 87, baseType: !147, size: 32)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "probes_sent", scope: !363, file: !12, line: 88, baseType: !147, size: 32)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "stale_time", scope: !363, file: !12, line: 89, baseType: !147, size: 32)
!369 = !{!370}
!370 = !DISubrange(count: 10)
!371 = !DIGlobalVariableExpression(var: !372, expr: !DIExpression())
!372 = distinct !DIGlobalVariable(name: "destination_cache", scope: !2, file: !3, line: 78, type: !373, isLocal: false, isDefinition: true)
!373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !374, size: 3840, elements: !369)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nd6_destination_cache_entry", file: !12, line: 93, size: 384, elements: !375)
!375 = !{!376, !377, !378, !379}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "destination_addr", scope: !374, file: !12, line: 94, baseType: !164, size: 160)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "next_hop_addr", scope: !374, file: !12, line: 95, baseType: !164, size: 160, offset: 160)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "pmtu", scope: !374, file: !12, line: 96, baseType: !131, size: 16, offset: 320)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "age", scope: !374, file: !12, line: 97, baseType: !147, size: 32, offset: 352)
!380 = !DIGlobalVariableExpression(var: !381, expr: !DIExpression())
!381 = distinct !DIGlobalVariable(name: "prefix_list", scope: !2, file: !3, line: 79, type: !382, isLocal: false, isDefinition: true)
!382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !383, size: 1600, elements: !388)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nd6_prefix_list_entry", file: !12, line: 100, size: 320, elements: !384)
!384 = !{!385, !386, !387}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !383, file: !12, line: 101, baseType: !164, size: 160)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "netif", scope: !383, file: !12, line: 102, baseType: !274, size: 64, offset: 192)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "invalidation_timer", scope: !383, file: !12, line: 103, baseType: !147, size: 32, offset: 256)
!388 = !{!389}
!389 = !DISubrange(count: 5)
!390 = !DIGlobalVariableExpression(var: !391, expr: !DIExpression())
!391 = distinct !DIGlobalVariable(name: "default_router_list", scope: !2, file: !3, line: 80, type: !392, isLocal: false, isDefinition: true)
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !393, size: 384, elements: !138)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nd6_router_list_entry", file: !12, line: 106, size: 128, elements: !394)
!394 = !{!395, !397, !398}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "neighbor_entry", scope: !393, file: !12, line: 107, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "invalidation_timer", scope: !393, file: !12, line: 108, baseType: !147, size: 32, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !393, file: !12, line: 109, baseType: !117, size: 8, offset: 96)
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(name: "nd6_cached_neighbor_index", scope: !2, file: !3, line: 87, type: !117, isLocal: true, isDefinition: true)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression())
!402 = distinct !DIGlobalVariable(name: "nd6_cached_destination_index", scope: !2, file: !3, line: 88, type: !247, isLocal: true, isDefinition: true)
!403 = !DIGlobalVariableExpression(var: !404, expr: !DIExpression())
!404 = distinct !DIGlobalVariable(name: "multicast_address", scope: !2, file: !3, line: 91, type: !164, isLocal: true, isDefinition: true)
!405 = !DIGlobalVariableExpression(var: !406, expr: !DIExpression())
!406 = distinct !DIGlobalVariable(name: "nd6_tmr_rs_reduction", scope: !2, file: !3, line: 93, type: !117, isLocal: true, isDefinition: true)
!407 = !DIGlobalVariableExpression(var: !408, expr: !DIExpression())
!408 = distinct !DIGlobalVariable(name: "nd6_ra_buffer", scope: !2, file: !3, line: 104, type: !409, isLocal: true, isDefinition: true)
!409 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "ra_options", file: !3, line: 96, size: 256, elements: !410)
!410 = !{!411, !412, !413}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "lladdr", scope: !409, file: !3, line: 97, baseType: !171, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !409, file: !3, line: 98, baseType: !200, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !409, file: !3, line: 99, baseType: !207, size: 256)
!414 = !DIGlobalVariableExpression(var: !415, expr: !DIExpression())
!415 = distinct !DIGlobalVariable(name: "__str", scope: !416, file: !417, line: 198, type: !435, isLocal: true, isDefinition: true)
!416 = distinct !DISubprogram(name: "uk_pr_crit", scope: !417, file: !417, line: 194, type: !418, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !422)
!417 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukdebug/include/uk/print.h", directory: "/root/.unikraft/apps/redis/build")
!418 = !DISubroutineType(types: !419)
!419 = !{null, !420, null}
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !347)
!422 = !{!423, !424}
!423 = !DILocalVariable(name: "fmt", arg: 1, scope: !416, file: !417, line: 194, type: !420)
!424 = !DILocalVariable(name: "argp", scope: !416, file: !417, line: 196, type: !425)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !426, line: 32, baseType: !427)
!426 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 196, baseType: !428)
!428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !429, size: 192, elements: !337)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 196, size: 192, elements: !430)
!430 = !{!431, !432, !433, !434}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !429, file: !3, line: 196, baseType: !7, size: 32)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !429, file: !3, line: 196, baseType: !7, size: 32, offset: 32)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !429, file: !3, line: 196, baseType: !179, size: 64, offset: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !429, file: !3, line: 196, baseType: !179, size: 64, offset: 128)
!435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 64, elements: !436)
!436 = !{!437}
!437 = !DISubrange(count: 8)
!438 = !DIGlobalVariableExpression(var: !439, expr: !DIExpression())
!439 = distinct !DIGlobalVariable(name: "__str", scope: !416, file: !417, line: 198, type: !440, isLocal: true, isDefinition: true)
!440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 48, elements: !177)
!441 = !DIGlobalVariableExpression(var: !442, expr: !DIExpression())
!442 = distinct !DIGlobalVariable(name: "last_router", scope: !443, file: !3, line: 1674, type: !307, isLocal: true, isDefinition: true)
!443 = distinct !DISubprogram(name: "nd6_select_router", scope: !3, file: !3, line: 1670, type: !444, isLocal: true, isDefinition: true, scopeLine: 1671, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !446)
!444 = !DISubroutineType(types: !445)
!445 = !{!307, !162, !274}
!446 = !{!447, !448, !449, !450, !451, !452}
!447 = !DILocalVariable(name: "ip6addr", arg: 1, scope: !443, file: !3, line: 1670, type: !162)
!448 = !DILocalVariable(name: "netif", arg: 2, scope: !443, file: !3, line: 1670, type: !274)
!449 = !DILocalVariable(name: "router_netif", scope: !443, file: !3, line: 1672, type: !274)
!450 = !DILocalVariable(name: "i", scope: !443, file: !3, line: 1673, type: !307)
!451 = !DILocalVariable(name: "j", scope: !443, file: !3, line: 1673, type: !307)
!452 = !DILocalVariable(name: "valid_router", scope: !443, file: !3, line: 1673, type: !307)
!453 = !{i32 2, !"Dwarf Version", i32 4}
!454 = !{i32 2, !"Debug Info Version", i32 3}
!455 = !{i32 1, !"wchar_size", i32 4}
!456 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!457 = distinct !DISubprogram(name: "nd6_input", scope: !3, file: !3, line: 287, type: !458, isLocal: false, isDefinition: true, scopeLine: 288, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !460)
!458 = !DISubroutineType(types: !459)
!459 = !{null, !253, !274}
!460 = !{!461, !462, !463, !464, !465, !470, !473, !474, !475, !477, !478, !479, !480, !482, !483, !484, !486, !487, !488, !491, !493, !494, !496, !497, !502, !503, !505, !506, !507, !508, !510, !511, !512}
!461 = !DILocalVariable(name: "p", arg: 1, scope: !457, file: !3, line: 287, type: !253)
!462 = !DILocalVariable(name: "inp", arg: 2, scope: !457, file: !3, line: 287, type: !274)
!463 = !DILocalVariable(name: "msg_type", scope: !457, file: !3, line: 289, type: !117)
!464 = !DILocalVariable(name: "i", scope: !457, file: !3, line: 290, type: !307)
!465 = !DILocalVariable(name: "dest_idx", scope: !457, file: !3, line: 291, type: !466)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16_t", file: !118, line: 128, baseType: !467)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !120, line: 32, baseType: !468)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !122, line: 55, baseType: !469)
!469 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!470 = !DILocalVariable(name: "na_hdr", scope: !471, file: !3, line: 299, type: !124)
!471 = distinct !DILexicalBlock(scope: !472, file: !3, line: 298, column: 3)
!472 = distinct !DILexicalBlock(scope: !457, file: !3, line: 296, column: 21)
!473 = !DILocalVariable(name: "lladdr_opt", scope: !471, file: !3, line: 300, type: !170)
!474 = !DILocalVariable(name: "target_address", scope: !471, file: !3, line: 301, type: !164)
!475 = !DILocalVariable(name: "ns_hdr", scope: !476, file: !3, line: 429, type: !180)
!476 = distinct !DILexicalBlock(scope: !472, file: !3, line: 428, column: 3)
!477 = !DILocalVariable(name: "lladdr_opt", scope: !476, file: !3, line: 430, type: !170)
!478 = !DILocalVariable(name: "target_address", scope: !476, file: !3, line: 431, type: !164)
!479 = !DILocalVariable(name: "accepted", scope: !476, file: !3, line: 432, type: !117)
!480 = !DILocalVariable(name: "ra_hdr", scope: !481, file: !3, line: 556, type: !188)
!481 = distinct !DILexicalBlock(scope: !472, file: !3, line: 555, column: 3)
!482 = !DILocalVariable(name: "buffer", scope: !481, file: !3, line: 557, type: !116)
!483 = !DILocalVariable(name: "offset", scope: !481, file: !3, line: 558, type: !131)
!484 = !DILocalVariable(name: "option_type", scope: !485, file: !3, line: 641, type: !117)
!485 = distinct !DILexicalBlock(scope: !481, file: !3, line: 640, column: 40)
!486 = !DILocalVariable(name: "option_len", scope: !485, file: !3, line: 642, type: !131)
!487 = !DILocalVariable(name: "option_len8", scope: !485, file: !3, line: 643, type: !22)
!488 = !DILocalVariable(name: "lladdr_opt", scope: !489, file: !3, line: 674, type: !170)
!489 = distinct !DILexicalBlock(scope: !490, file: !3, line: 673, column: 7)
!490 = distinct !DILexicalBlock(scope: !485, file: !3, line: 671, column: 28)
!491 = !DILocalVariable(name: "mtu_opt", scope: !492, file: !3, line: 689, type: !199)
!492 = distinct !DILexicalBlock(scope: !490, file: !3, line: 688, column: 7)
!493 = !DILocalVariable(name: "mtu32", scope: !492, file: !3, line: 690, type: !147)
!494 = !DILocalVariable(name: "prefix_opt", scope: !495, file: !3, line: 710, type: !206)
!495 = distinct !DILexicalBlock(scope: !490, file: !3, line: 709, column: 7)
!496 = !DILocalVariable(name: "prefix_addr", scope: !495, file: !3, line: 711, type: !164)
!497 = !DILocalVariable(name: "valid_life", scope: !498, file: !3, line: 726, type: !147)
!498 = distinct !DILexicalBlock(scope: !499, file: !3, line: 724, column: 50)
!499 = distinct !DILexicalBlock(scope: !500, file: !3, line: 723, column: 15)
!500 = distinct !DILexicalBlock(scope: !501, file: !3, line: 722, column: 50)
!501 = distinct !DILexicalBlock(scope: !495, file: !3, line: 722, column: 13)
!502 = !DILocalVariable(name: "prefix", scope: !498, file: !3, line: 727, type: !307)
!503 = !DILocalVariable(name: "redir_hdr", scope: !504, file: !3, line: 808, type: !218)
!504 = distinct !DILexicalBlock(scope: !472, file: !3, line: 807, column: 3)
!505 = !DILocalVariable(name: "lladdr_opt", scope: !504, file: !3, line: 809, type: !170)
!506 = !DILocalVariable(name: "destination_address", scope: !504, file: !3, line: 810, type: !164)
!507 = !DILocalVariable(name: "target_address", scope: !504, file: !3, line: 810, type: !164)
!508 = !DILocalVariable(name: "icmp6hdr", scope: !509, file: !3, line: 897, type: !227)
!509 = distinct !DILexicalBlock(scope: !472, file: !3, line: 896, column: 3)
!510 = !DILocalVariable(name: "ip6hdr", scope: !509, file: !3, line: 898, type: !234)
!511 = !DILocalVariable(name: "pmtu", scope: !509, file: !3, line: 899, type: !147)
!512 = !DILocalVariable(name: "destination_address", scope: !509, file: !3, line: 900, type: !164)
!513 = !DILocation(line: 287, column: 24, scope: !457)
!514 = !DILocation(line: 287, column: 41, scope: !457)
!515 = !DILocation(line: 293, column: 3, scope: !457)
!516 = !{!517, !519, i64 288}
!517 = !{!"stats_", !518, i64 0, !518, i64 24, !518, i64 48, !518, i64 72, !518, i64 96, !518, i64 120, !518, i64 144, !522, i64 168, !518, i64 186, !518, i64 210, !518, i64 234, !524, i64 258, !518, i64 286}
!518 = !{!"stats_proto", !519, i64 0, !519, i64 2, !519, i64 4, !519, i64 6, !519, i64 8, !519, i64 10, !519, i64 12, !519, i64 14, !519, i64 16, !519, i64 18, !519, i64 20, !519, i64 22}
!519 = !{!"short", !520, i64 0}
!520 = !{!"omnipotent char", !521, i64 0}
!521 = !{!"Simple C/C++ TBAA"}
!522 = !{!"stats_sys", !523, i64 0, !523, i64 6, !523, i64 12}
!523 = !{!"stats_syselem", !519, i64 0, !519, i64 2, !519, i64 4}
!524 = !{!"stats_igmp", !519, i64 0, !519, i64 2, !519, i64 4, !519, i64 6, !519, i64 8, !519, i64 10, !519, i64 12, !519, i64 14, !519, i64 16, !519, i64 18, !519, i64 20, !519, i64 22, !519, i64 24, !519, i64 26}
!525 = !DILocation(line: 295, column: 27, scope: !457)
!526 = !{!527, !528, i64 8}
!527 = !{!"pbuf", !528, i64 0, !528, i64 8, !519, i64 16, !519, i64 18, !520, i64 20, !520, i64 21, !520, i64 22, !520, i64 23}
!528 = !{!"any pointer", !520, i64 0}
!529 = !DILocation(line: 295, column: 14, scope: !457)
!530 = !{!520, !520, i64 0}
!531 = !DILocation(line: 289, column: 8, scope: !457)
!532 = !DILocation(line: 296, column: 3, scope: !457)
!533 = !DILocation(line: 304, column: 12, scope: !534)
!534 = distinct !DILexicalBlock(scope: !471, file: !3, line: 304, column: 9)
!535 = !{!527, !519, i64 18}
!536 = !DILocation(line: 304, column: 16, scope: !534)
!537 = !DILocation(line: 304, column: 9, scope: !471)
!538 = !DILocation(line: 306, column: 7, scope: !539)
!539 = distinct !DILexicalBlock(scope: !534, file: !3, line: 304, column: 46)
!540 = !DILocation(line: 307, column: 7, scope: !539)
!541 = !{!517, !519, i64 296}
!542 = !DILocation(line: 308, column: 7, scope: !539)
!543 = !{!517, !519, i64 292}
!544 = !DILocation(line: 309, column: 7, scope: !539)
!545 = !DILocation(line: 299, column: 23, scope: !471)
!546 = !DILocation(line: 315, column: 5, scope: !547)
!547 = distinct !DILexicalBlock(scope: !471, file: !3, line: 315, column: 5)
!548 = !{!549, !549, i64 0}
!549 = !{!"int", !520, i64 0}
!550 = !DILocation(line: 316, column: 5, scope: !471)
!551 = !{!552, !520, i64 264}
!552 = !{!"netif", !528, i64 0, !553, i64 8, !553, i64 32, !553, i64 56, !520, i64 80, !520, i64 152, !520, i64 156, !520, i64 168, !528, i64 184, !528, i64 192, !528, i64 200, !528, i64 208, !528, i64 216, !528, i64 224, !528, i64 232, !520, i64 240, !519, i64 248, !519, i64 250, !519, i64 252, !520, i64 254, !520, i64 260, !520, i64 261, !520, i64 262, !520, i64 264, !520, i64 265, !520, i64 266, !528, i64 272}
!553 = !{!"ip_addr", !520, i64 0, !520, i64 20}
!554 = !DILocation(line: 319, column: 9, scope: !555)
!555 = distinct !DILexicalBlock(scope: !471, file: !3, line: 319, column: 9)
!556 = !{!557, !528, i64 24}
!557 = !{!"ip_globals", !528, i64 0, !528, i64 8, !528, i64 16, !528, i64 24, !519, i64 32, !553, i64 36, !553, i64 60}
!558 = !{!559, !520, i64 7}
!559 = !{!"ip6_hdr", !549, i64 0, !519, i64 4, !520, i64 6, !520, i64 7, !560, i64 8, !560, i64 24}
!560 = !{!"ip6_addr_packed", !520, i64 0}
!561 = !DILocation(line: 319, column: 43, scope: !555)
!562 = !DILocation(line: 319, column: 57, scope: !555)
!563 = !DILocation(line: 319, column: 68, scope: !555)
!564 = !{!565, !520, i64 1}
!565 = !{!"na_header", !520, i64 0, !520, i64 1, !519, i64 2, !520, i64 4, !520, i64 5, !560, i64 8}
!566 = !DILocation(line: 319, column: 73, scope: !555)
!567 = !DILocation(line: 319, column: 78, scope: !555)
!568 = !DILocation(line: 320, column: 9, scope: !555)
!569 = !DILocation(line: 319, column: 9, scope: !471)
!570 = !DILocation(line: 321, column: 7, scope: !571)
!571 = distinct !DILexicalBlock(scope: !555, file: !3, line: 320, column: 48)
!572 = !DILocation(line: 322, column: 7, scope: !571)
!573 = !{!517, !519, i64 302}
!574 = !DILocation(line: 323, column: 7, scope: !571)
!575 = !DILocation(line: 324, column: 7, scope: !571)
!576 = !DILocation(line: 331, column: 9, scope: !577)
!577 = distinct !DILexicalBlock(scope: !471, file: !3, line: 331, column: 9)
!578 = !DILocation(line: 331, column: 9, scope: !471)
!579 = !DILocation(line: 0, scope: !580)
!580 = distinct !DILexicalBlock(scope: !577, file: !3, line: 377, column: 12)
!581 = !DILocation(line: 290, column: 8, scope: !457)
!582 = !DILocation(line: 339, column: 14, scope: !583)
!583 = distinct !DILexicalBlock(scope: !584, file: !3, line: 339, column: 13)
!584 = distinct !DILexicalBlock(scope: !585, file: !3, line: 338, column: 53)
!585 = distinct !DILexicalBlock(scope: !586, file: !3, line: 338, column: 7)
!586 = distinct !DILexicalBlock(scope: !587, file: !3, line: 338, column: 7)
!587 = distinct !DILexicalBlock(scope: !577, file: !3, line: 331, column: 56)
!588 = !DILocation(line: 339, column: 63, scope: !583)
!589 = !DILocation(line: 340, column: 14, scope: !583)
!590 = !DILocation(line: 340, column: 66, scope: !583)
!591 = !DILocation(line: 341, column: 13, scope: !583)
!592 = !DILocation(line: 339, column: 13, scope: !584)
!593 = !DILocation(line: 343, column: 11, scope: !594)
!594 = distinct !DILexicalBlock(scope: !583, file: !3, line: 341, column: 68)
!595 = !DILocation(line: 345, column: 11, scope: !594)
!596 = !DILocation(line: 346, column: 11, scope: !594)
!597 = !DILocation(line: 338, column: 7, scope: !585)
!598 = !DILocation(line: 338, column: 7, scope: !586)
!599 = !DILocation(line: 354, column: 9, scope: !600)
!600 = distinct !DILexicalBlock(scope: !601, file: !3, line: 352, column: 52)
!601 = distinct !DILexicalBlock(scope: !587, file: !3, line: 352, column: 11)
!602 = !DILocation(line: 355, column: 9, scope: !600)
!603 = !DILocation(line: 356, column: 9, scope: !600)
!604 = !DILocation(line: 357, column: 9, scope: !600)
!605 = !DILocation(line: 352, column: 11, scope: !601)
!606 = !DILocation(line: 300, column: 27, scope: !471)
!607 = !DILocation(line: 362, column: 61, scope: !608)
!608 = distinct !DILexicalBlock(scope: !587, file: !3, line: 362, column: 11)
!609 = !{!610, !520, i64 1}
!610 = !{!"lladdr_option", !520, i64 0, !520, i64 1, !520, i64 2}
!611 = !DILocation(line: 362, column: 49, scope: !608)
!612 = !DILocation(line: 362, column: 68, scope: !608)
!613 = !DILocation(line: 362, column: 46, scope: !608)
!614 = !DILocation(line: 362, column: 18, scope: !608)
!615 = !DILocation(line: 362, column: 11, scope: !587)
!616 = !DILocation(line: 364, column: 9, scope: !617)
!617 = distinct !DILexicalBlock(scope: !608, file: !3, line: 362, column: 76)
!618 = !DILocation(line: 365, column: 9, scope: !617)
!619 = !DILocation(line: 366, column: 9, scope: !617)
!620 = !DILocation(line: 367, column: 9, scope: !617)
!621 = !DILocation(line: 301, column: 16, scope: !471)
!622 = !DILocalVariable(name: "ip6addr", arg: 1, scope: !623, file: !3, line: 1401, type: !162)
!623 = distinct !DISubprogram(name: "nd6_find_neighbor_cache_entry", scope: !3, file: !3, line: 1401, type: !624, isLocal: true, isDefinition: true, scopeLine: 1402, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !626)
!624 = !DISubroutineType(types: !625)
!625 = !{!307, !162}
!626 = !{!622, !627}
!627 = !DILocalVariable(name: "i", scope: !623, file: !3, line: 1403, type: !307)
!628 = !DILocation(line: 1401, column: 49, scope: !623, inlinedAt: !629)
!629 = distinct !DILocation(line: 371, column: 11, scope: !587)
!630 = !DILocation(line: 1403, column: 8, scope: !623, inlinedAt: !629)
!631 = !DILocation(line: 1404, column: 8, scope: !632, inlinedAt: !629)
!632 = distinct !DILexicalBlock(scope: !623, file: !3, line: 1404, column: 3)
!633 = !DILocation(line: 1404, column: 3, scope: !632, inlinedAt: !629)
!634 = !DILocation(line: 1405, column: 9, scope: !635, inlinedAt: !629)
!635 = distinct !DILexicalBlock(scope: !636, file: !3, line: 1405, column: 9)
!636 = distinct !DILexicalBlock(scope: !637, file: !3, line: 1404, column: 48)
!637 = distinct !DILexicalBlock(scope: !632, file: !3, line: 1404, column: 3)
!638 = !{!639, !520, i64 16}
!639 = !{!"nd6_neighbor_cache_entry", !640, i64 0, !528, i64 24, !520, i64 32, !528, i64 40, !520, i64 48, !520, i64 49, !520, i64 52}
!640 = !{!"ip6_addr", !520, i64 0, !520, i64 16}
!641 = !DILocation(line: 1405, column: 9, scope: !636, inlinedAt: !629)
!642 = !DILocation(line: 1404, column: 44, scope: !637, inlinedAt: !629)
!643 = !DILocation(line: 1404, column: 3, scope: !637, inlinedAt: !629)
!644 = !DILocation(line: 1404, column: 17, scope: !637, inlinedAt: !629)
!645 = distinct !{!645, !646, !647}
!646 = !DILocation(line: 1404, column: 3, scope: !632)
!647 = !DILocation(line: 1408, column: 3, scope: !632)
!648 = !DILocation(line: 1409, column: 3, scope: !623, inlinedAt: !629)
!649 = !DILocation(line: 1410, column: 1, scope: !623, inlinedAt: !629)
!650 = !DILocation(line: 372, column: 11, scope: !587)
!651 = !DILocation(line: 1406, column: 7, scope: !652, inlinedAt: !629)
!652 = distinct !DILexicalBlock(scope: !635, file: !3, line: 1405, column: 71)
!653 = !DILocation(line: 373, column: 21, scope: !654)
!654 = distinct !DILexicalBlock(scope: !655, file: !3, line: 373, column: 13)
!655 = distinct !DILexicalBlock(scope: !656, file: !3, line: 372, column: 19)
!656 = distinct !DILexicalBlock(scope: !587, file: !3, line: 372, column: 11)
!657 = !{!565, !520, i64 4}
!658 = !DILocation(line: 373, column: 27, scope: !654)
!659 = !DILocation(line: 373, column: 13, scope: !655)
!660 = !DILocation(line: 374, column: 11, scope: !661)
!661 = distinct !DILexicalBlock(scope: !654, file: !3, line: 373, column: 48)
!662 = !{!552, !520, i64 260}
!663 = !DILocation(line: 375, column: 9, scope: !661)
!664 = !DILocation(line: 1403, column: 8, scope: !623, inlinedAt: !665)
!665 = distinct !DILocation(line: 383, column: 11, scope: !580)
!666 = !DILocation(line: 1405, column: 9, scope: !635, inlinedAt: !665)
!667 = !DILocation(line: 1405, column: 9, scope: !636, inlinedAt: !665)
!668 = !DILocation(line: 1404, column: 44, scope: !637, inlinedAt: !665)
!669 = !DILocation(line: 1404, column: 3, scope: !637, inlinedAt: !665)
!670 = !DILocation(line: 1404, column: 17, scope: !637, inlinedAt: !665)
!671 = !DILocation(line: 1404, column: 3, scope: !632, inlinedAt: !665)
!672 = !DILocation(line: 1409, column: 3, scope: !623, inlinedAt: !665)
!673 = !DILocation(line: 1410, column: 1, scope: !623, inlinedAt: !665)
!674 = !DILocation(line: 384, column: 11, scope: !580)
!675 = !DILocation(line: 1406, column: 7, scope: !652, inlinedAt: !665)
!676 = !DILocation(line: 384, column: 13, scope: !677)
!677 = distinct !DILexicalBlock(scope: !580, file: !3, line: 384, column: 11)
!678 = !DILocation(line: 386, column: 9, scope: !679)
!679 = distinct !DILexicalBlock(scope: !677, file: !3, line: 384, column: 18)
!680 = !DILocation(line: 387, column: 9, scope: !679)
!681 = !DILocation(line: 391, column: 20, scope: !682)
!682 = distinct !DILexicalBlock(scope: !580, file: !3, line: 391, column: 11)
!683 = !DILocation(line: 391, column: 26, scope: !682)
!684 = !DILocation(line: 391, column: 47, scope: !682)
!685 = !DILocation(line: 392, column: 12, scope: !682)
!686 = !DILocation(line: 392, column: 30, scope: !682)
!687 = !{!639, !520, i64 48}
!688 = !DILocation(line: 392, column: 36, scope: !682)
!689 = !DILocation(line: 391, column: 11, scope: !580)
!690 = !DILocation(line: 394, column: 20, scope: !691)
!691 = distinct !DILexicalBlock(scope: !692, file: !3, line: 394, column: 13)
!692 = distinct !DILexicalBlock(scope: !682, file: !3, line: 392, column: 56)
!693 = !DILocation(line: 394, column: 13, scope: !692)
!694 = !DILocation(line: 396, column: 11, scope: !695)
!695 = distinct !DILexicalBlock(scope: !691, file: !3, line: 394, column: 54)
!696 = !DILocation(line: 397, column: 11, scope: !695)
!697 = !DILocation(line: 398, column: 11, scope: !695)
!698 = !DILocation(line: 399, column: 11, scope: !695)
!699 = !DILocation(line: 394, column: 13, scope: !691)
!700 = !DILocation(line: 404, column: 63, scope: !701)
!701 = distinct !DILexicalBlock(scope: !692, file: !3, line: 404, column: 13)
!702 = !DILocation(line: 404, column: 51, scope: !701)
!703 = !DILocation(line: 404, column: 70, scope: !701)
!704 = !DILocation(line: 404, column: 48, scope: !701)
!705 = !DILocation(line: 404, column: 20, scope: !701)
!706 = !DILocation(line: 404, column: 13, scope: !692)
!707 = !DILocation(line: 406, column: 11, scope: !708)
!708 = distinct !DILexicalBlock(scope: !701, file: !3, line: 404, column: 78)
!709 = !DILocation(line: 407, column: 11, scope: !708)
!710 = !DILocation(line: 408, column: 11, scope: !708)
!711 = !DILocation(line: 409, column: 11, scope: !708)
!712 = !DILocation(line: 412, column: 9, scope: !692)
!713 = !DILocation(line: 413, column: 7, scope: !692)
!714 = !DILocation(line: 416, column: 25, scope: !580)
!715 = !DILocation(line: 415, column: 7, scope: !580)
!716 = !DILocation(line: 415, column: 25, scope: !580)
!717 = !DILocation(line: 415, column: 31, scope: !580)
!718 = !{!639, !528, i64 24}
!719 = !DILocation(line: 416, column: 31, scope: !580)
!720 = !DILocation(line: 417, column: 50, scope: !580)
!721 = !DILocation(line: 417, column: 33, scope: !580)
!722 = !DILocation(line: 417, column: 48, scope: !580)
!723 = !DILocation(line: 420, column: 29, scope: !724)
!724 = distinct !DILexicalBlock(scope: !580, file: !3, line: 420, column: 11)
!725 = !{!639, !528, i64 40}
!726 = !DILocation(line: 420, column: 31, scope: !724)
!727 = !DILocation(line: 420, column: 11, scope: !580)
!728 = !DILocation(line: 421, column: 9, scope: !729)
!729 = distinct !DILexicalBlock(scope: !724, file: !3, line: 420, column: 40)
!730 = !DILocation(line: 422, column: 7, scope: !729)
!731 = !DILocation(line: 425, column: 5, scope: !471)
!732 = !DILocation(line: 0, scope: !679)
!733 = !DILocation(line: 431, column: 5, scope: !476)
!734 = !DILocation(line: 435, column: 12, scope: !735)
!735 = distinct !DILexicalBlock(scope: !476, file: !3, line: 435, column: 9)
!736 = !DILocation(line: 435, column: 16, scope: !735)
!737 = !DILocation(line: 435, column: 9, scope: !476)
!738 = !DILocation(line: 437, column: 7, scope: !739)
!739 = distinct !DILexicalBlock(scope: !735, file: !3, line: 435, column: 44)
!740 = !DILocation(line: 438, column: 7, scope: !739)
!741 = !DILocation(line: 439, column: 7, scope: !739)
!742 = !DILocation(line: 440, column: 7, scope: !739)
!743 = !DILocation(line: 553, column: 3, scope: !472)
!744 = !DILocation(line: 429, column: 23, scope: !476)
!745 = !DILocation(line: 446, column: 5, scope: !746)
!746 = distinct !DILexicalBlock(scope: !476, file: !3, line: 446, column: 5)
!747 = !{!640, !520, i64 16}
!748 = !DILocation(line: 447, column: 5, scope: !476)
!749 = !DILocation(line: 450, column: 9, scope: !750)
!750 = distinct !DILexicalBlock(scope: !476, file: !3, line: 450, column: 9)
!751 = !DILocation(line: 450, column: 43, scope: !750)
!752 = !DILocation(line: 450, column: 57, scope: !750)
!753 = !DILocation(line: 450, column: 68, scope: !750)
!754 = !{!755, !520, i64 1}
!755 = !{!"ns_header", !520, i64 0, !520, i64 1, !519, i64 2, !549, i64 4, !560, i64 8}
!756 = !DILocation(line: 450, column: 73, scope: !750)
!757 = !DILocation(line: 450, column: 78, scope: !750)
!758 = !DILocation(line: 451, column: 8, scope: !750)
!759 = !DILocation(line: 450, column: 9, scope: !476)
!760 = !DILocation(line: 452, column: 7, scope: !761)
!761 = distinct !DILexicalBlock(scope: !750, file: !3, line: 451, column: 47)
!762 = !DILocation(line: 453, column: 7, scope: !761)
!763 = !DILocation(line: 454, column: 7, scope: !761)
!764 = !DILocation(line: 455, column: 7, scope: !761)
!765 = !DILocation(line: 463, column: 16, scope: !766)
!766 = distinct !DILexicalBlock(scope: !476, file: !3, line: 463, column: 9)
!767 = !DILocation(line: 463, column: 9, scope: !476)
!768 = !DILocation(line: 463, column: 9, scope: !766)
!769 = !DILocation(line: 464, column: 63, scope: !770)
!770 = distinct !DILexicalBlock(scope: !766, file: !3, line: 463, column: 51)
!771 = !DILocation(line: 464, column: 20, scope: !770)
!772 = !DILocation(line: 430, column: 27, scope: !476)
!773 = !DILocation(line: 465, column: 61, scope: !774)
!774 = distinct !DILexicalBlock(scope: !770, file: !3, line: 465, column: 11)
!775 = !DILocation(line: 465, column: 49, scope: !774)
!776 = !DILocation(line: 465, column: 68, scope: !774)
!777 = !DILocation(line: 465, column: 46, scope: !774)
!778 = !DILocation(line: 465, column: 18, scope: !774)
!779 = !DILocation(line: 465, column: 11, scope: !770)
!780 = !DILocation(line: 474, column: 10, scope: !781)
!781 = distinct !DILexicalBlock(scope: !476, file: !3, line: 474, column: 5)
!782 = !DILocation(line: 0, scope: !783)
!783 = distinct !DILexicalBlock(scope: !766, file: !3, line: 468, column: 12)
!784 = !DILocation(line: 432, column: 10, scope: !476)
!785 = !DILocation(line: 474, column: 5, scope: !781)
!786 = !DILocation(line: 475, column: 12, scope: !787)
!787 = distinct !DILexicalBlock(scope: !788, file: !3, line: 475, column: 11)
!788 = distinct !DILexicalBlock(scope: !789, file: !3, line: 474, column: 51)
!789 = distinct !DILexicalBlock(scope: !781, file: !3, line: 474, column: 5)
!790 = !DILocation(line: 475, column: 59, scope: !787)
!791 = !DILocation(line: 476, column: 13, scope: !787)
!792 = !DILocation(line: 476, column: 64, scope: !787)
!793 = !DILocation(line: 478, column: 11, scope: !787)
!794 = !DILocation(line: 475, column: 11, scope: !788)
!795 = !DILocation(line: 480, column: 9, scope: !796)
!796 = distinct !DILexicalBlock(scope: !787, file: !3, line: 478, column: 66)
!797 = !DILocation(line: 485, column: 9, scope: !476)
!798 = !DILocation(line: 491, column: 9, scope: !799)
!799 = distinct !DILexicalBlock(scope: !476, file: !3, line: 491, column: 9)
!800 = !DILocation(line: 474, column: 5, scope: !789)
!801 = !DILocation(line: 493, column: 12, scope: !802)
!802 = distinct !DILexicalBlock(scope: !803, file: !3, line: 493, column: 7)
!803 = distinct !DILexicalBlock(scope: !799, file: !3, line: 491, column: 49)
!804 = !DILocation(line: 493, column: 7, scope: !802)
!805 = !DILocation(line: 494, column: 14, scope: !806)
!806 = distinct !DILexicalBlock(scope: !807, file: !3, line: 494, column: 13)
!807 = distinct !DILexicalBlock(scope: !808, file: !3, line: 493, column: 53)
!808 = distinct !DILexicalBlock(scope: !802, file: !3, line: 493, column: 7)
!809 = !DILocation(line: 494, column: 63, scope: !806)
!810 = !DILocation(line: 495, column: 13, scope: !806)
!811 = !DILocation(line: 494, column: 13, scope: !807)
!812 = !DILocation(line: 497, column: 11, scope: !813)
!813 = distinct !DILexicalBlock(scope: !806, file: !3, line: 495, column: 68)
!814 = !DILocation(line: 498, column: 15, scope: !815)
!815 = distinct !DILexicalBlock(scope: !813, file: !3, line: 498, column: 15)
!816 = !DILocation(line: 498, column: 15, scope: !813)
!817 = !DILocation(line: 500, column: 13, scope: !818)
!818 = distinct !DILexicalBlock(scope: !815, file: !3, line: 498, column: 67)
!819 = !DILocation(line: 501, column: 11, scope: !818)
!820 = !DILocation(line: 493, column: 7, scope: !808)
!821 = !DILocation(line: 507, column: 22, scope: !822)
!822 = distinct !DILexicalBlock(scope: !823, file: !3, line: 507, column: 11)
!823 = distinct !DILexicalBlock(scope: !799, file: !3, line: 504, column: 12)
!824 = !DILocation(line: 507, column: 11, scope: !823)
!825 = !DILocation(line: 509, column: 9, scope: !826)
!826 = distinct !DILexicalBlock(scope: !822, file: !3, line: 507, column: 31)
!827 = !DILocation(line: 510, column: 9, scope: !826)
!828 = !DILocation(line: 511, column: 9, scope: !826)
!829 = !DILocation(line: 512, column: 9, scope: !826)
!830 = !DILocation(line: 1401, column: 49, scope: !623, inlinedAt: !831)
!831 = distinct !DILocation(line: 515, column: 11, scope: !823)
!832 = !DILocation(line: 1403, column: 8, scope: !623, inlinedAt: !831)
!833 = !DILocation(line: 1404, column: 8, scope: !632, inlinedAt: !831)
!834 = !DILocation(line: 1404, column: 3, scope: !632, inlinedAt: !831)
!835 = !DILocation(line: 1405, column: 9, scope: !635, inlinedAt: !831)
!836 = !DILocation(line: 1405, column: 9, scope: !636, inlinedAt: !831)
!837 = !DILocation(line: 1404, column: 44, scope: !637, inlinedAt: !831)
!838 = !DILocation(line: 1404, column: 3, scope: !637, inlinedAt: !831)
!839 = !DILocation(line: 1404, column: 17, scope: !637, inlinedAt: !831)
!840 = !DILocation(line: 1406, column: 7, scope: !652, inlinedAt: !831)
!841 = !DILocation(line: 1410, column: 1, scope: !623, inlinedAt: !831)
!842 = !DILocation(line: 516, column: 11, scope: !823)
!843 = !DILocation(line: 518, column: 13, scope: !844)
!844 = distinct !DILexicalBlock(scope: !845, file: !3, line: 518, column: 13)
!845 = distinct !DILexicalBlock(scope: !846, file: !3, line: 516, column: 18)
!846 = distinct !DILexicalBlock(scope: !823, file: !3, line: 516, column: 11)
!847 = !DILocation(line: 518, column: 31, scope: !844)
!848 = !DILocation(line: 518, column: 37, scope: !844)
!849 = !DILocation(line: 518, column: 13, scope: !845)
!850 = !DILocation(line: 519, column: 29, scope: !851)
!851 = distinct !DILexicalBlock(scope: !844, file: !3, line: 518, column: 56)
!852 = !DILocation(line: 519, column: 35, scope: !851)
!853 = !DILocation(line: 520, column: 11, scope: !851)
!854 = !DILocation(line: 525, column: 9, scope: !851)
!855 = !DILocation(line: 1409, column: 3, scope: !623, inlinedAt: !831)
!856 = !DILocation(line: 530, column: 13, scope: !857)
!857 = distinct !DILexicalBlock(scope: !846, file: !3, line: 526, column: 14)
!858 = !DILocation(line: 531, column: 15, scope: !859)
!859 = distinct !DILexicalBlock(scope: !857, file: !3, line: 531, column: 13)
!860 = !DILocation(line: 531, column: 13, scope: !857)
!861 = !DILocation(line: 534, column: 11, scope: !862)
!862 = distinct !DILexicalBlock(scope: !859, file: !3, line: 531, column: 20)
!863 = !DILocation(line: 535, column: 11, scope: !862)
!864 = !{!517, !519, i64 298}
!865 = !DILocation(line: 536, column: 11, scope: !862)
!866 = !DILocation(line: 538, column: 9, scope: !857)
!867 = !DILocation(line: 538, column: 27, scope: !857)
!868 = !DILocation(line: 538, column: 33, scope: !857)
!869 = !DILocation(line: 539, column: 9, scope: !857)
!870 = !DILocation(line: 540, column: 9, scope: !871)
!871 = distinct !DILexicalBlock(scope: !857, file: !3, line: 540, column: 9)
!872 = !DILocation(line: 544, column: 27, scope: !857)
!873 = !DILocation(line: 0, scope: !857)
!874 = !DILocation(line: 549, column: 7, scope: !823)
!875 = !DILocation(line: 431, column: 16, scope: !476)
!876 = !DILocation(line: 552, column: 5, scope: !476)
!877 = !DILocation(line: 0, scope: !878)
!878 = distinct !DILexicalBlock(scope: !879, file: !3, line: 485, column: 20)
!879 = distinct !DILexicalBlock(scope: !476, file: !3, line: 485, column: 9)
!880 = !DILocation(line: 565, column: 12, scope: !881)
!881 = distinct !DILexicalBlock(scope: !481, file: !3, line: 565, column: 9)
!882 = !DILocation(line: 565, column: 16, scope: !881)
!883 = !DILocation(line: 565, column: 9, scope: !481)
!884 = !DILocation(line: 567, column: 7, scope: !885)
!885 = distinct !DILexicalBlock(scope: !881, file: !3, line: 565, column: 44)
!886 = !DILocation(line: 568, column: 7, scope: !885)
!887 = !DILocation(line: 570, column: 7, scope: !885)
!888 = !DILocation(line: 556, column: 23, scope: !481)
!889 = !DILocation(line: 576, column: 10, scope: !890)
!890 = distinct !DILexicalBlock(scope: !481, file: !3, line: 576, column: 9)
!891 = !DILocation(line: 576, column: 55, scope: !890)
!892 = !DILocation(line: 577, column: 9, scope: !890)
!893 = !DILocation(line: 577, column: 43, scope: !890)
!894 = !DILocation(line: 577, column: 57, scope: !890)
!895 = !DILocation(line: 577, column: 68, scope: !890)
!896 = !{!897, !520, i64 1}
!897 = !{!"ra_header", !520, i64 0, !520, i64 1, !519, i64 2, !520, i64 4, !520, i64 5, !519, i64 6, !549, i64 8, !549, i64 12}
!898 = !DILocation(line: 577, column: 73, scope: !890)
!899 = !DILocation(line: 576, column: 9, scope: !481)
!900 = !DILocation(line: 578, column: 7, scope: !901)
!901 = distinct !DILexicalBlock(scope: !890, file: !3, line: 577, column: 79)
!902 = !DILocation(line: 579, column: 7, scope: !901)
!903 = !DILocation(line: 581, column: 7, scope: !901)
!904 = !DILocation(line: 589, column: 15, scope: !905)
!905 = distinct !DILexicalBlock(scope: !481, file: !3, line: 589, column: 9)
!906 = !{!552, !520, i64 266}
!907 = !DILocation(line: 589, column: 24, scope: !905)
!908 = !DILocation(line: 589, column: 58, scope: !905)
!909 = !DILocation(line: 590, column: 10, scope: !905)
!910 = !DILocation(line: 590, column: 27, scope: !905)
!911 = !DILocation(line: 589, column: 9, scope: !481)
!912 = !DILocation(line: 0, scope: !913)
!913 = distinct !DILexicalBlock(scope: !905, file: !3, line: 590, column: 39)
!914 = !DILocalVariable(name: "netif", arg: 2, scope: !915, file: !3, line: 1778, type: !274)
!915 = distinct !DISubprogram(name: "nd6_get_router", scope: !3, file: !3, line: 1778, type: !444, isLocal: true, isDefinition: true, scopeLine: 1779, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !916)
!916 = !{!917, !914, !918}
!917 = !DILocalVariable(name: "router_addr", arg: 1, scope: !915, file: !3, line: 1778, type: !162)
!918 = !DILocalVariable(name: "i", scope: !915, file: !3, line: 1780, type: !307)
!919 = !DILocation(line: 1778, column: 61, scope: !915, inlinedAt: !920)
!920 = distinct !DILocation(line: 598, column: 9, scope: !481)
!921 = !DILocation(line: 1780, column: 8, scope: !915, inlinedAt: !920)
!922 = !DILocation(line: 1785, column: 8, scope: !923, inlinedAt: !920)
!923 = distinct !DILexicalBlock(scope: !915, file: !3, line: 1785, column: 3)
!924 = !DILocation(line: 1785, column: 3, scope: !923, inlinedAt: !920)
!925 = !DILocation(line: 1786, column: 33, scope: !926, inlinedAt: !920)
!926 = distinct !DILexicalBlock(scope: !927, file: !3, line: 1786, column: 9)
!927 = distinct !DILexicalBlock(scope: !928, file: !3, line: 1785, column: 46)
!928 = distinct !DILexicalBlock(scope: !923, file: !3, line: 1785, column: 3)
!929 = !{!930, !528, i64 0}
!930 = !{!"nd6_router_list_entry", !528, i64 0, !549, i64 8, !520, i64 12}
!931 = !DILocation(line: 1786, column: 48, scope: !926, inlinedAt: !920)
!932 = !DILocation(line: 1786, column: 57, scope: !926, inlinedAt: !920)
!933 = !DILocation(line: 1787, column: 87, scope: !926, inlinedAt: !920)
!934 = !DILocation(line: 1787, column: 76, scope: !926, inlinedAt: !920)
!935 = !DILocation(line: 1787, column: 34, scope: !926, inlinedAt: !920)
!936 = !DILocation(line: 1787, column: 10, scope: !926, inlinedAt: !920)
!937 = !DILocation(line: 1788, column: 9, scope: !926, inlinedAt: !920)
!938 = !DILocation(line: 1786, column: 9, scope: !927, inlinedAt: !920)
!939 = !DILocation(line: 1785, column: 3, scope: !928, inlinedAt: !920)
!940 = !DILocation(line: 1794, column: 3, scope: !915, inlinedAt: !920)
!941 = !DILocation(line: 1795, column: 1, scope: !915, inlinedAt: !920)
!942 = !DILocation(line: 599, column: 9, scope: !481)
!943 = !DILocalVariable(name: "netif", arg: 2, scope: !944, file: !3, line: 1805, type: !274)
!944 = distinct !DISubprogram(name: "nd6_new_router", scope: !3, file: !3, line: 1805, type: !444, isLocal: true, isDefinition: true, scopeLine: 1806, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !945)
!945 = !{!946, !943, !947, !948, !949}
!946 = !DILocalVariable(name: "router_addr", arg: 1, scope: !944, file: !3, line: 1805, type: !162)
!947 = !DILocalVariable(name: "router_index", scope: !944, file: !3, line: 1807, type: !307)
!948 = !DILocalVariable(name: "free_router_index", scope: !944, file: !3, line: 1808, type: !307)
!949 = !DILocalVariable(name: "neighbor_index", scope: !944, file: !3, line: 1809, type: !307)
!950 = !DILocation(line: 1805, column: 61, scope: !944, inlinedAt: !951)
!951 = distinct !DILocation(line: 601, column: 11, scope: !952)
!952 = distinct !DILexicalBlock(scope: !953, file: !3, line: 599, column: 16)
!953 = distinct !DILexicalBlock(scope: !481, file: !3, line: 599, column: 9)
!954 = !DILocation(line: 1401, column: 49, scope: !623, inlinedAt: !955)
!955 = distinct !DILocation(line: 1814, column: 20, scope: !944, inlinedAt: !951)
!956 = !DILocation(line: 1403, column: 8, scope: !623, inlinedAt: !955)
!957 = !DILocation(line: 1404, column: 8, scope: !632, inlinedAt: !955)
!958 = !DILocation(line: 1404, column: 3, scope: !632, inlinedAt: !955)
!959 = !DILocation(line: 1405, column: 9, scope: !635, inlinedAt: !955)
!960 = !DILocation(line: 1405, column: 9, scope: !636, inlinedAt: !955)
!961 = !DILocation(line: 1404, column: 44, scope: !637, inlinedAt: !955)
!962 = !DILocation(line: 1404, column: 3, scope: !637, inlinedAt: !955)
!963 = !DILocation(line: 1404, column: 17, scope: !637, inlinedAt: !955)
!964 = !DILocation(line: 1409, column: 3, scope: !623, inlinedAt: !955)
!965 = !DILocation(line: 1410, column: 1, scope: !623, inlinedAt: !955)
!966 = !DILocation(line: 1815, column: 7, scope: !944, inlinedAt: !951)
!967 = !DILocation(line: 1406, column: 7, scope: !652, inlinedAt: !955)
!968 = !DILocation(line: 1809, column: 8, scope: !944, inlinedAt: !951)
!969 = !DILocation(line: 1815, column: 22, scope: !970, inlinedAt: !951)
!970 = distinct !DILexicalBlock(scope: !944, file: !3, line: 1815, column: 7)
!971 = !DILocation(line: 1831, column: 3, scope: !944, inlinedAt: !951)
!972 = !DILocation(line: 1817, column: 22, scope: !973, inlinedAt: !951)
!973 = distinct !DILexicalBlock(scope: !970, file: !3, line: 1815, column: 27)
!974 = !DILocation(line: 1818, column: 24, scope: !975, inlinedAt: !951)
!975 = distinct !DILexicalBlock(scope: !973, file: !3, line: 1818, column: 9)
!976 = !DILocation(line: 1818, column: 9, scope: !973, inlinedAt: !951)
!977 = !DILocation(line: 0, scope: !978, inlinedAt: !951)
!978 = distinct !DILexicalBlock(scope: !973, file: !3, line: 1822, column: 5)
!979 = !DILocation(line: 1822, column: 5, scope: !978, inlinedAt: !951)
!980 = !DILocation(line: 1823, column: 36, scope: !973, inlinedAt: !951)
!981 = !DILocation(line: 1823, column: 42, scope: !973, inlinedAt: !951)
!982 = !DILocation(line: 1824, column: 36, scope: !973, inlinedAt: !951)
!983 = !DILocation(line: 1824, column: 38, scope: !973, inlinedAt: !951)
!984 = !DILocation(line: 1825, column: 36, scope: !973, inlinedAt: !951)
!985 = !DILocation(line: 1825, column: 42, scope: !973, inlinedAt: !951)
!986 = !DILocation(line: 1826, column: 44, scope: !973, inlinedAt: !951)
!987 = !DILocation(line: 1826, column: 56, scope: !973, inlinedAt: !951)
!988 = !DILocalVariable(name: "entry", arg: 1, scope: !989, file: !3, line: 1168, type: !396)
!989 = distinct !DISubprogram(name: "nd6_send_neighbor_cache_probe", scope: !3, file: !3, line: 1168, type: !990, isLocal: true, isDefinition: true, scopeLine: 1169, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !992)
!990 = !DISubroutineType(types: !991)
!991 = !{null, !396, !117}
!992 = !{!988, !993}
!993 = !DILocalVariable(name: "flags", arg: 2, scope: !989, file: !3, line: 1168, type: !117)
!994 = !DILocation(line: 1168, column: 64, scope: !989, inlinedAt: !995)
!995 = distinct !DILocation(line: 1827, column: 5, scope: !973, inlinedAt: !951)
!996 = !DILocation(line: 1168, column: 76, scope: !989, inlinedAt: !995)
!997 = !DILocation(line: 1170, column: 37, scope: !989, inlinedAt: !995)
!998 = !DILocation(line: 1170, column: 3, scope: !989, inlinedAt: !995)
!999 = !DILocation(line: 1171, column: 1, scope: !989, inlinedAt: !995)
!1000 = !DILocation(line: 1828, column: 3, scope: !973, inlinedAt: !951)
!1001 = !DILocation(line: 1838, column: 42, scope: !1002, inlinedAt: !951)
!1002 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 1838, column: 8)
!1003 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 1835, column: 84)
!1004 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 1835, column: 3)
!1005 = distinct !DILexicalBlock(scope: !944, file: !3, line: 1835, column: 3)
!1006 = !DILocation(line: 1831, column: 34, scope: !944, inlinedAt: !951)
!1007 = !DILocation(line: 1831, column: 43, scope: !944, inlinedAt: !951)
!1008 = !{!639, !520, i64 49}
!1009 = !DILocation(line: 1808, column: 8, scope: !944, inlinedAt: !951)
!1010 = !DILocation(line: 1807, column: 8, scope: !944, inlinedAt: !951)
!1011 = !DILocation(line: 1835, column: 8, scope: !1005, inlinedAt: !951)
!1012 = !DILocation(line: 1835, column: 3, scope: !1005, inlinedAt: !951)
!1013 = !DILocation(line: 1838, column: 57, scope: !1002, inlinedAt: !951)
!1014 = !DILocation(line: 1838, column: 8, scope: !1003, inlinedAt: !951)
!1015 = !DILocation(line: 1841, column: 58, scope: !1016, inlinedAt: !951)
!1016 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 1841, column: 9)
!1017 = !DILocation(line: 1841, column: 9, scope: !1003, inlinedAt: !951)
!1018 = !DILocation(line: 1844, column: 5, scope: !1019, inlinedAt: !951)
!1019 = distinct !DILexicalBlock(scope: !1016, file: !3, line: 1841, column: 67)
!1020 = !DILocation(line: 0, scope: !944, inlinedAt: !951)
!1021 = !DILocation(line: 1835, column: 3, scope: !1004, inlinedAt: !951)
!1022 = !DILocation(line: 1847, column: 5, scope: !1023, inlinedAt: !951)
!1023 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 1846, column: 49)
!1024 = distinct !DILexicalBlock(scope: !944, file: !3, line: 1846, column: 7)
!1025 = !DILocation(line: 1847, column: 44, scope: !1023, inlinedAt: !951)
!1026 = !DILocation(line: 1847, column: 59, scope: !1023, inlinedAt: !951)
!1027 = !DILocation(line: 1848, column: 5, scope: !1023, inlinedAt: !951)
!1028 = !DILocation(line: 1854, column: 43, scope: !944, inlinedAt: !951)
!1029 = !DILocation(line: 1857, column: 3, scope: !944, inlinedAt: !951)
!1030 = !DILocation(line: 0, scope: !1004, inlinedAt: !951)
!1031 = !DILocation(line: 1846, column: 7, scope: !944, inlinedAt: !951)
!1032 = !DILocation(line: 1846, column: 25, scope: !1024, inlinedAt: !951)
!1033 = !DILocation(line: 1858, column: 1, scope: !944, inlinedAt: !951)
!1034 = !DILocation(line: 602, column: 5, scope: !952)
!1035 = !DILocation(line: 604, column: 9, scope: !481)
!1036 = !DILocation(line: 606, column: 7, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 604, column: 16)
!1038 = distinct !DILexicalBlock(scope: !481, file: !3, line: 604, column: 9)
!1039 = !DILocation(line: 608, column: 7, scope: !1037)
!1040 = !DILocation(line: 0, scope: !481)
!1041 = !DILocation(line: 612, column: 68, scope: !481)
!1042 = !{!897, !519, i64 6}
!1043 = !DILocation(line: 612, column: 49, scope: !481)
!1044 = !DILocation(line: 612, column: 5, scope: !481)
!1045 = !DILocation(line: 612, column: 28, scope: !481)
!1046 = !DILocation(line: 612, column: 47, scope: !481)
!1047 = !{!930, !549, i64 8}
!1048 = !DILocation(line: 616, column: 17, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !481, file: !3, line: 616, column: 9)
!1050 = !{!897, !549, i64 12}
!1051 = !DILocation(line: 616, column: 31, scope: !1049)
!1052 = !DILocation(line: 616, column: 9, scope: !481)
!1053 = !DILocation(line: 617, column: 23, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1049, file: !3, line: 616, column: 36)
!1055 = !DILocation(line: 617, column: 21, scope: !1054)
!1056 = !DILocation(line: 618, column: 5, scope: !1054)
!1057 = !DILocation(line: 619, column: 17, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !481, file: !3, line: 619, column: 9)
!1059 = !{!897, !549, i64 8}
!1060 = !DILocation(line: 619, column: 32, scope: !1058)
!1061 = !DILocation(line: 619, column: 9, scope: !481)
!1062 = !DILocation(line: 620, column: 24, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1058, file: !3, line: 619, column: 37)
!1064 = !DILocation(line: 620, column: 22, scope: !1063)
!1065 = !DILocation(line: 621, column: 5, scope: !1063)
!1066 = !DILocation(line: 628, column: 44, scope: !481)
!1067 = !{!897, !520, i64 5}
!1068 = !DILocation(line: 628, column: 28, scope: !481)
!1069 = !DILocation(line: 628, column: 34, scope: !481)
!1070 = !{!930, !520, i64 12}
!1071 = !DILocation(line: 558, column: 11, scope: !481)
!1072 = !DILocation(line: 640, column: 5, scope: !481)
!1073 = !DILocation(line: 640, column: 16, scope: !481)
!1074 = !{!527, !519, i64 16}
!1075 = !DILocation(line: 640, column: 34, scope: !481)
!1076 = !DILocation(line: 643, column: 51, scope: !485)
!1077 = !DILocation(line: 643, column: 25, scope: !485)
!1078 = !DILocation(line: 643, column: 11, scope: !485)
!1079 = !DILocation(line: 644, column: 23, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !485, file: !3, line: 644, column: 11)
!1081 = !DILocation(line: 644, column: 11, scope: !485)
!1082 = !DILocation(line: 648, column: 20, scope: !485)
!1083 = !DILocation(line: 642, column: 13, scope: !485)
!1084 = !DILocation(line: 649, column: 11, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !485, file: !3, line: 649, column: 11)
!1086 = !DILocation(line: 649, column: 27, scope: !1085)
!1087 = !DILocation(line: 649, column: 24, scope: !1085)
!1088 = !DILocation(line: 649, column: 35, scope: !1085)
!1089 = !DILocation(line: 649, column: 22, scope: !1085)
!1090 = !DILocation(line: 649, column: 11, scope: !485)
!1091 = !DILocation(line: 653, column: 14, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !485, file: !3, line: 653, column: 11)
!1093 = !DILocation(line: 653, column: 18, scope: !1092)
!1094 = !DILocation(line: 653, column: 11, scope: !485)
!1095 = !DILocation(line: 655, column: 30, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 653, column: 33)
!1097 = !DILocation(line: 655, column: 19, scope: !1096)
!1098 = !DILocation(line: 557, column: 11, scope: !481)
!1099 = !DILocation(line: 656, column: 7, scope: !1096)
!1100 = !DILocation(line: 658, column: 24, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 658, column: 13)
!1102 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 656, column: 14)
!1103 = !DILocation(line: 658, column: 13, scope: !1102)
!1104 = !DILocation(line: 659, column: 25, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 658, column: 49)
!1106 = !DILocation(line: 641, column: 12, scope: !485)
!1107 = !DILocation(line: 661, column: 27, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 661, column: 15)
!1109 = !DILocation(line: 661, column: 15, scope: !1105)
!1110 = !DILocation(line: 0, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 661, column: 53)
!1112 = !DILocation(line: 0, scope: !485)
!1113 = !DILocation(line: 668, column: 22, scope: !1102)
!1114 = !DILocation(line: 0, scope: !1102)
!1115 = !DILocation(line: 670, column: 21, scope: !485)
!1116 = !DILocation(line: 671, column: 7, scope: !485)
!1117 = !DILocation(line: 675, column: 24, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !489, file: !3, line: 675, column: 13)
!1119 = !DILocation(line: 675, column: 13, scope: !489)
!1120 = !DILocation(line: 674, column: 31, scope: !489)
!1121 = !DILocation(line: 679, column: 37, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !489, file: !3, line: 679, column: 13)
!1123 = !DILocation(line: 679, column: 52, scope: !1122)
!1124 = !DILocation(line: 679, column: 61, scope: !1122)
!1125 = !DILocation(line: 680, column: 53, scope: !1122)
!1126 = !DILocation(line: 680, column: 59, scope: !1122)
!1127 = !DILocation(line: 679, column: 13, scope: !489)
!1128 = !DILocation(line: 681, column: 11, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 680, column: 79)
!1130 = !DILocation(line: 682, column: 34, scope: !1129)
!1131 = !DILocation(line: 682, column: 50, scope: !1129)
!1132 = !DILocation(line: 682, column: 56, scope: !1129)
!1133 = !DILocation(line: 683, column: 75, scope: !1129)
!1134 = !DILocation(line: 683, column: 58, scope: !1129)
!1135 = !DILocation(line: 683, column: 73, scope: !1129)
!1136 = !DILocation(line: 684, column: 9, scope: !1129)
!1137 = !DILocation(line: 685, column: 9, scope: !489)
!1138 = !DILocation(line: 676, column: 11, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1118, file: !3, line: 675, column: 56)
!1140 = !DILocation(line: 691, column: 24, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !492, file: !3, line: 691, column: 13)
!1142 = !DILocation(line: 691, column: 13, scope: !492)
!1143 = !DILocation(line: 689, column: 28, scope: !492)
!1144 = !DILocation(line: 695, column: 37, scope: !492)
!1145 = !{!1146, !549, i64 4}
!1146 = !{!"mtu_option", !520, i64 0, !520, i64 1, !519, i64 2, !549, i64 4}
!1147 = !DILocation(line: 695, column: 17, scope: !492)
!1148 = !DILocation(line: 690, column: 15, scope: !492)
!1149 = !DILocation(line: 696, column: 29, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !492, file: !3, line: 696, column: 13)
!1151 = !DILocation(line: 698, column: 20, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1153, file: !3, line: 698, column: 15)
!1153 = distinct !DILexicalBlock(scope: !1150, file: !3, line: 696, column: 51)
!1154 = !{!552, !519, i64 250}
!1155 = !DILocation(line: 698, column: 15, scope: !1152)
!1156 = !DILocation(line: 698, column: 15, scope: !1153)
!1157 = !DILocation(line: 700, column: 25, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1152, file: !3, line: 698, column: 25)
!1159 = !DILocation(line: 701, column: 11, scope: !1158)
!1160 = !DILocation(line: 0, scope: !1158)
!1161 = !{!552, !519, i64 252}
!1162 = !DILocation(line: 706, column: 9, scope: !492)
!1163 = !DILocation(line: 692, column: 11, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1141, file: !3, line: 691, column: 53)
!1165 = !DILocation(line: 712, column: 24, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !495, file: !3, line: 712, column: 13)
!1167 = !DILocation(line: 712, column: 13, scope: !495)
!1168 = !DILocation(line: 710, column: 31, scope: !495)
!1169 = !DILocation(line: 719, column: 9, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !495, file: !3, line: 719, column: 9)
!1171 = !DILocation(line: 720, column: 9, scope: !495)
!1172 = !DILocation(line: 0, scope: !495)
!1173 = !DILocation(line: 723, column: 28, scope: !499)
!1174 = !{!1175, !520, i64 3}
!1175 = !{!"prefix_option", !520, i64 0, !520, i64 1, !520, i64 2, !520, i64 3, !549, i64 4, !549, i64 8, !520, i64 12, !520, i64 15, !560, i64 16}
!1176 = !DILocation(line: 723, column: 34, scope: !499)
!1177 = !DILocation(line: 723, column: 61, scope: !499)
!1178 = !DILocation(line: 724, column: 28, scope: !499)
!1179 = !{!1175, !520, i64 2}
!1180 = !DILocation(line: 724, column: 42, scope: !499)
!1181 = !DILocation(line: 723, column: 15, scope: !500)
!1182 = !DILocation(line: 729, column: 49, scope: !498)
!1183 = !{!1175, !549, i64 4}
!1184 = !DILocation(line: 729, column: 26, scope: !498)
!1185 = !DILocation(line: 726, column: 19, scope: !498)
!1186 = !DILocation(line: 711, column: 20, scope: !495)
!1187 = !DILocalVariable(name: "prefix", arg: 1, scope: !1188, file: !3, line: 1868, type: !162)
!1188 = distinct !DISubprogram(name: "nd6_get_onlink_prefix", scope: !3, file: !3, line: 1868, type: !444, isLocal: true, isDefinition: true, scopeLine: 1869, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1189)
!1189 = !{!1187, !1190, !1191}
!1190 = !DILocalVariable(name: "netif", arg: 2, scope: !1188, file: !3, line: 1868, type: !274)
!1191 = !DILocalVariable(name: "i", scope: !1188, file: !3, line: 1870, type: !307)
!1192 = !DILocation(line: 1868, column: 41, scope: !1188, inlinedAt: !1193)
!1193 = distinct !DILocation(line: 732, column: 22, scope: !498)
!1194 = !DILocation(line: 1868, column: 63, scope: !1188, inlinedAt: !1193)
!1195 = !DILocation(line: 1870, column: 8, scope: !1188, inlinedAt: !1193)
!1196 = !DILocation(line: 1873, column: 8, scope: !1197, inlinedAt: !1193)
!1197 = distinct !DILexicalBlock(scope: !1188, file: !3, line: 1873, column: 3)
!1198 = !DILocation(line: 1873, column: 3, scope: !1197, inlinedAt: !1193)
!1199 = !DILocation(line: 1874, column: 10, scope: !1200, inlinedAt: !1193)
!1200 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 1874, column: 9)
!1201 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 1873, column: 47)
!1202 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 1873, column: 3)
!1203 = !{!1204, !520, i64 16}
!1204 = !{!"nd6_prefix_list_entry", !640, i64 0, !528, i64 24, !549, i64 32}
!1205 = !DILocation(line: 1874, column: 61, scope: !1200, inlinedAt: !1193)
!1206 = !DILocation(line: 1875, column: 25, scope: !1200, inlinedAt: !1193)
!1207 = !{!1204, !528, i64 24}
!1208 = !DILocation(line: 1875, column: 31, scope: !1200, inlinedAt: !1193)
!1209 = !DILocation(line: 1874, column: 9, scope: !1201, inlinedAt: !1193)
!1210 = !DILocation(line: 1873, column: 3, scope: !1202, inlinedAt: !1193)
!1211 = !DILocation(line: 1881, column: 3, scope: !1188, inlinedAt: !1193)
!1212 = !DILocation(line: 1882, column: 1, scope: !1188, inlinedAt: !1193)
!1213 = !DILocation(line: 727, column: 18, scope: !498)
!1214 = !DILocation(line: 733, column: 42, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !498, file: !3, line: 733, column: 17)
!1216 = !DILocation(line: 733, column: 28, scope: !1215)
!1217 = !DILocation(line: 0, scope: !498)
!1218 = !DILocalVariable(name: "prefix", arg: 1, scope: !1219, file: !3, line: 1892, type: !162)
!1219 = distinct !DISubprogram(name: "nd6_new_onlink_prefix", scope: !3, file: !3, line: 1892, type: !444, isLocal: true, isDefinition: true, scopeLine: 1893, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1220)
!1220 = !{!1218, !1221, !1222}
!1221 = !DILocalVariable(name: "netif", arg: 2, scope: !1219, file: !3, line: 1892, type: !274)
!1222 = !DILocalVariable(name: "i", scope: !1219, file: !3, line: 1894, type: !307)
!1223 = !DILocation(line: 1892, column: 41, scope: !1219, inlinedAt: !1224)
!1224 = distinct !DILocation(line: 735, column: 24, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 733, column: 47)
!1226 = !DILocation(line: 1892, column: 63, scope: !1219, inlinedAt: !1224)
!1227 = !DILocation(line: 1894, column: 8, scope: !1219, inlinedAt: !1224)
!1228 = !DILocation(line: 1897, column: 3, scope: !1229, inlinedAt: !1224)
!1229 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 1897, column: 3)
!1230 = !DILocation(line: 1898, column: 25, scope: !1231, inlinedAt: !1224)
!1231 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 1898, column: 9)
!1232 = distinct !DILexicalBlock(scope: !1233, file: !3, line: 1897, column: 47)
!1233 = distinct !DILexicalBlock(scope: !1229, file: !3, line: 1897, column: 3)
!1234 = !DILocation(line: 1898, column: 31, scope: !1231, inlinedAt: !1224)
!1235 = !DILocation(line: 1898, column: 40, scope: !1231, inlinedAt: !1224)
!1236 = !DILocation(line: 1899, column: 25, scope: !1231, inlinedAt: !1224)
!1237 = !{!1204, !549, i64 32}
!1238 = !DILocation(line: 1899, column: 44, scope: !1231, inlinedAt: !1224)
!1239 = !DILocation(line: 1898, column: 9, scope: !1232, inlinedAt: !1224)
!1240 = !DILocation(line: 1901, column: 28, scope: !1241, inlinedAt: !1224)
!1241 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 1899, column: 51)
!1242 = !DILocation(line: 1902, column: 7, scope: !1243, inlinedAt: !1224)
!1243 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 1902, column: 7)
!1244 = !DILocation(line: 737, column: 17, scope: !498)
!1245 = !DILocation(line: 1897, column: 3, scope: !1233, inlinedAt: !1224)
!1246 = !DILocation(line: 1908, column: 3, scope: !1219, inlinedAt: !1224)
!1247 = !DILocation(line: 1909, column: 1, scope: !1219, inlinedAt: !1224)
!1248 = !DILocation(line: 736, column: 13, scope: !1225)
!1249 = !DILocation(line: 0, scope: !1215)
!1250 = !DILocation(line: 738, column: 35, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 737, column: 30)
!1252 = distinct !DILexicalBlock(scope: !498, file: !3, line: 737, column: 17)
!1253 = !DILocation(line: 738, column: 54, scope: !1251)
!1254 = !DILocation(line: 739, column: 13, scope: !1251)
!1255 = !DILocation(line: 0, scope: !1251)
!1256 = !DILocation(line: 740, column: 11, scope: !498)
!1257 = !DILocation(line: 742, column: 27, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !500, file: !3, line: 742, column: 15)
!1259 = !DILocation(line: 742, column: 33, scope: !1258)
!1260 = !DILocation(line: 742, column: 15, scope: !500)
!1261 = !DILocalVariable(name: "netif", arg: 1, scope: !1262, file: !3, line: 186, type: !274)
!1262 = distinct !DISubprogram(name: "nd6_process_autoconfig_prefix", scope: !3, file: !3, line: 186, type: !1263, isLocal: true, isDefinition: true, scopeLine: 188, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1265)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{null, !274, !206, !162}
!1265 = !{!1261, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274}
!1266 = !DILocalVariable(name: "prefix_opt", arg: 2, scope: !1262, file: !3, line: 187, type: !206)
!1267 = !DILocalVariable(name: "prefix_addr", arg: 3, scope: !1262, file: !3, line: 187, type: !162)
!1268 = !DILocalVariable(name: "ip6addr", scope: !1262, file: !3, line: 189, type: !164)
!1269 = !DILocalVariable(name: "valid_life", scope: !1262, file: !3, line: 190, type: !147)
!1270 = !DILocalVariable(name: "pref_life", scope: !1262, file: !3, line: 190, type: !147)
!1271 = !DILocalVariable(name: "addr_state", scope: !1262, file: !3, line: 191, type: !117)
!1272 = !DILocalVariable(name: "i", scope: !1262, file: !3, line: 192, type: !307)
!1273 = !DILocalVariable(name: "free_idx", scope: !1262, file: !3, line: 192, type: !307)
!1274 = !DILocalVariable(name: "remaining_life", scope: !1275, file: !3, line: 216, type: !147)
!1275 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 213, column: 65)
!1276 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 212, column: 9)
!1277 = distinct !DILexicalBlock(scope: !1278, file: !3, line: 210, column: 49)
!1278 = distinct !DILexicalBlock(scope: !1279, file: !3, line: 210, column: 3)
!1279 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 210, column: 3)
!1280 = !DILocation(line: 186, column: 45, scope: !1262, inlinedAt: !1281)
!1281 = distinct !DILocation(line: 744, column: 13, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1258, file: !3, line: 742, column: 63)
!1283 = !DILocation(line: 187, column: 25, scope: !1262, inlinedAt: !1281)
!1284 = !DILocation(line: 187, column: 55, scope: !1262, inlinedAt: !1281)
!1285 = !DILocation(line: 196, column: 39, scope: !1262, inlinedAt: !1281)
!1286 = !DILocation(line: 196, column: 16, scope: !1262, inlinedAt: !1281)
!1287 = !DILocation(line: 190, column: 9, scope: !1262, inlinedAt: !1281)
!1288 = !DILocation(line: 197, column: 38, scope: !1262, inlinedAt: !1281)
!1289 = !{!1175, !549, i64 8}
!1290 = !DILocation(line: 197, column: 15, scope: !1262, inlinedAt: !1281)
!1291 = !DILocation(line: 190, column: 21, scope: !1262, inlinedAt: !1281)
!1292 = !DILocation(line: 198, column: 17, scope: !1293, inlinedAt: !1281)
!1293 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 198, column: 7)
!1294 = !DILocation(line: 198, column: 30, scope: !1293, inlinedAt: !1281)
!1295 = !DILocation(line: 198, column: 45, scope: !1293, inlinedAt: !1281)
!1296 = !DILocation(line: 198, column: 59, scope: !1293, inlinedAt: !1281)
!1297 = !DILocation(line: 198, column: 7, scope: !1262, inlinedAt: !1281)
!1298 = !DILocation(line: 192, column: 8, scope: !1262, inlinedAt: !1281)
!1299 = !DILocation(line: 210, column: 8, scope: !1279, inlinedAt: !1281)
!1300 = !DILocation(line: 210, column: 3, scope: !1279, inlinedAt: !1281)
!1301 = !DILocation(line: 211, column: 18, scope: !1277, inlinedAt: !1281)
!1302 = !DILocation(line: 191, column: 8, scope: !1262, inlinedAt: !1281)
!1303 = !DILocation(line: 212, column: 10, scope: !1276, inlinedAt: !1281)
!1304 = !DILocation(line: 212, column: 41, scope: !1276, inlinedAt: !1281)
!1305 = !DILocation(line: 212, column: 45, scope: !1276, inlinedAt: !1281)
!1306 = !DILocation(line: 212, column: 79, scope: !1276, inlinedAt: !1281)
!1307 = !DILocation(line: 213, column: 9, scope: !1276, inlinedAt: !1281)
!1308 = !DILocation(line: 212, column: 9, scope: !1277, inlinedAt: !1281)
!1309 = !DILocation(line: 216, column: 30, scope: !1275, inlinedAt: !1281)
!1310 = !DILocation(line: 216, column: 13, scope: !1275, inlinedAt: !1281)
!1311 = !DILocation(line: 217, column: 22, scope: !1312, inlinedAt: !1281)
!1312 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 217, column: 11)
!1313 = !DILocation(line: 217, column: 33, scope: !1312, inlinedAt: !1281)
!1314 = !DILocation(line: 217, column: 47, scope: !1312, inlinedAt: !1281)
!1315 = !DILocation(line: 217, column: 11, scope: !1275, inlinedAt: !1281)
!1316 = !DILocation(line: 218, column: 9, scope: !1317, inlinedAt: !1281)
!1317 = distinct !DILexicalBlock(scope: !1318, file: !3, line: 218, column: 9)
!1318 = distinct !DILexicalBlock(scope: !1312, file: !3, line: 217, column: 65)
!1319 = !DILocation(line: 218, column: 9, scope: !1320, inlinedAt: !1281)
!1320 = distinct !DILexicalBlock(scope: !1321, file: !3, line: 218, column: 9)
!1321 = distinct !DILexicalBlock(scope: !1317, file: !3, line: 218, column: 9)
!1322 = !DILocation(line: 219, column: 33, scope: !1323, inlinedAt: !1281)
!1323 = distinct !DILexicalBlock(scope: !1312, file: !3, line: 219, column: 18)
!1324 = !DILocation(line: 219, column: 18, scope: !1312, inlinedAt: !1281)
!1325 = !DILocation(line: 0, scope: !1282)
!1326 = !DILocation(line: 222, column: 7, scope: !1327, inlinedAt: !1281)
!1327 = distinct !DILexicalBlock(scope: !1328, file: !3, line: 222, column: 7)
!1328 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 222, column: 7)
!1329 = !DILocation(line: 222, column: 7, scope: !1328, inlinedAt: !1281)
!1330 = !DILocation(line: 226, column: 21, scope: !1331, inlinedAt: !1281)
!1331 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 226, column: 11)
!1332 = !DILocation(line: 226, column: 25, scope: !1331, inlinedAt: !1281)
!1333 = !DILocation(line: 226, column: 39, scope: !1331, inlinedAt: !1281)
!1334 = !DILocation(line: 226, column: 11, scope: !1275, inlinedAt: !1281)
!1335 = !DILocation(line: 227, column: 9, scope: !1336, inlinedAt: !1281)
!1336 = distinct !DILexicalBlock(scope: !1331, file: !3, line: 226, column: 63)
!1337 = !DILocation(line: 228, column: 7, scope: !1336, inlinedAt: !1281)
!1338 = !DILocation(line: 229, column: 7, scope: !1339, inlinedAt: !1281)
!1339 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 229, column: 7)
!1340 = !DILocation(line: 229, column: 7, scope: !1341, inlinedAt: !1281)
!1341 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 229, column: 7)
!1342 = distinct !DILexicalBlock(scope: !1339, file: !3, line: 229, column: 7)
!1343 = !DILocation(line: 210, column: 3, scope: !1278, inlinedAt: !1281)
!1344 = !DILocation(line: 245, column: 7, scope: !1345, inlinedAt: !1281)
!1345 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 244, column: 7)
!1346 = !DILocation(line: 245, column: 38, scope: !1345, inlinedAt: !1281)
!1347 = !DILocation(line: 245, column: 41, scope: !1345, inlinedAt: !1281)
!1348 = !DILocation(line: 244, column: 7, scope: !1262, inlinedAt: !1281)
!1349 = !DILocation(line: 189, column: 14, scope: !1262, inlinedAt: !1281)
!1350 = !DILocation(line: 254, column: 3, scope: !1351, inlinedAt: !1281)
!1351 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 254, column: 3)
!1352 = !DILocation(line: 256, column: 3, scope: !1262, inlinedAt: !1281)
!1353 = !DILocation(line: 192, column: 11, scope: !1262, inlinedAt: !1281)
!1354 = !DILocation(line: 259, column: 8, scope: !1355, inlinedAt: !1281)
!1355 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 259, column: 3)
!1356 = !DILocation(line: 259, column: 3, scope: !1355, inlinedAt: !1281)
!1357 = !DILocation(line: 260, column: 9, scope: !1358, inlinedAt: !1281)
!1358 = distinct !DILexicalBlock(scope: !1359, file: !3, line: 259, column: 49)
!1359 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 259, column: 3)
!1360 = !DILocation(line: 261, column: 11, scope: !1361, inlinedAt: !1281)
!1361 = distinct !DILexicalBlock(scope: !1362, file: !3, line: 261, column: 11)
!1362 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 260, column: 62)
!1363 = distinct !DILexicalBlock(scope: !1358, file: !3, line: 260, column: 9)
!1364 = !DILocation(line: 261, column: 11, scope: !1362, inlinedAt: !1281)
!1365 = !DILocation(line: 264, column: 16, scope: !1363, inlinedAt: !1281)
!1366 = !DILocation(line: 266, column: 5, scope: !1367, inlinedAt: !1281)
!1367 = distinct !DILexicalBlock(scope: !1368, file: !3, line: 264, column: 31)
!1368 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 264, column: 16)
!1369 = !DILocation(line: 0, scope: !1262, inlinedAt: !1281)
!1370 = !DILocation(line: 259, column: 3, scope: !1359, inlinedAt: !1281)
!1371 = !DILocation(line: 273, column: 3, scope: !1372, inlinedAt: !1281)
!1372 = distinct !DILexicalBlock(scope: !1373, file: !3, line: 273, column: 3)
!1373 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 273, column: 3)
!1374 = !DILocation(line: 273, column: 3, scope: !1375, inlinedAt: !1281)
!1375 = distinct !DILexicalBlock(scope: !1373, file: !3, line: 273, column: 3)
!1376 = !{!553, !520, i64 20}
!1377 = !DILocation(line: 274, column: 3, scope: !1378, inlinedAt: !1281)
!1378 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 274, column: 3)
!1379 = !DILocation(line: 274, column: 3, scope: !1380, inlinedAt: !1281)
!1380 = distinct !DILexicalBlock(scope: !1381, file: !3, line: 274, column: 3)
!1381 = distinct !DILexicalBlock(scope: !1378, file: !3, line: 274, column: 3)
!1382 = !DILocation(line: 275, column: 3, scope: !1383, inlinedAt: !1281)
!1383 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 275, column: 3)
!1384 = !DILocation(line: 275, column: 3, scope: !1385, inlinedAt: !1281)
!1385 = distinct !DILexicalBlock(scope: !1386, file: !3, line: 275, column: 3)
!1386 = distinct !DILexicalBlock(scope: !1383, file: !3, line: 275, column: 3)
!1387 = !DILocation(line: 276, column: 3, scope: !1262, inlinedAt: !1281)
!1388 = !DILocation(line: 277, column: 1, scope: !1262, inlinedAt: !1281)
!1389 = !DILocation(line: 264, column: 25, scope: !1368, inlinedAt: !1281)
!1390 = !DILocation(line: 268, column: 7, scope: !1262, inlinedAt: !1281)
!1391 = !DILocation(line: 268, column: 16, scope: !1392, inlinedAt: !1281)
!1392 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 268, column: 7)
!1393 = !DILocation(line: 243, column: 16, scope: !1262, inlinedAt: !1281)
!1394 = !DILocation(line: 244, column: 15, scope: !1345, inlinedAt: !1281)
!1395 = !{!552, !520, i64 265}
!1396 = !DILocation(line: 244, column: 8, scope: !1345, inlinedAt: !1281)
!1397 = !DILocation(line: 244, column: 52, scope: !1345, inlinedAt: !1281)
!1398 = !DILocation(line: 244, column: 38, scope: !1345, inlinedAt: !1281)
!1399 = !DILocation(line: 745, column: 11, scope: !1282)
!1400 = !DILocation(line: 749, column: 9, scope: !495)
!1401 = !DILocation(line: 713, column: 11, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1166, file: !3, line: 712, column: 56)
!1403 = !DILocation(line: 797, column: 9, scope: !490)
!1404 = !DILocation(line: 798, column: 9, scope: !490)
!1405 = !DILocation(line: 801, column: 14, scope: !485)
!1406 = !DILocation(line: 802, column: 5, scope: !481)
!1407 = !DILocation(line: 640, column: 13, scope: !481)
!1408 = !DILocation(line: 640, column: 26, scope: !481)
!1409 = !DILocation(line: 640, column: 24, scope: !481)
!1410 = !DILocation(line: 804, column: 5, scope: !481)
!1411 = !DILocation(line: 0, scope: !1037)
!1412 = !{!519, !519, i64 0}
!1413 = !DILocation(line: 813, column: 12, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !504, file: !3, line: 813, column: 9)
!1415 = !DILocation(line: 813, column: 16, scope: !1414)
!1416 = !DILocation(line: 813, column: 9, scope: !504)
!1417 = !DILocation(line: 815, column: 7, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1414, file: !3, line: 813, column: 50)
!1419 = !DILocation(line: 816, column: 7, scope: !1418)
!1420 = !DILocation(line: 817, column: 7, scope: !1418)
!1421 = !DILocation(line: 818, column: 7, scope: !1418)
!1422 = !DILocation(line: 808, column: 29, scope: !504)
!1423 = !DILocation(line: 824, column: 5, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !504, file: !3, line: 824, column: 5)
!1425 = !DILocation(line: 825, column: 5, scope: !504)
!1426 = !DILocation(line: 828, column: 10, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !504, file: !3, line: 828, column: 9)
!1428 = !DILocation(line: 828, column: 55, scope: !1427)
!1429 = !DILocation(line: 829, column: 9, scope: !1427)
!1430 = !DILocation(line: 829, column: 43, scope: !1427)
!1431 = !DILocation(line: 829, column: 57, scope: !1427)
!1432 = !DILocation(line: 830, column: 20, scope: !1427)
!1433 = !{!1434, !520, i64 1}
!1434 = !{!"redirect_header", !520, i64 0, !520, i64 1, !519, i64 2, !549, i64 4, !560, i64 8, !560, i64 24}
!1435 = !DILocation(line: 830, column: 25, scope: !1427)
!1436 = !DILocation(line: 830, column: 30, scope: !1427)
!1437 = !DILocation(line: 830, column: 33, scope: !1427)
!1438 = !DILocation(line: 828, column: 9, scope: !504)
!1439 = !DILocation(line: 831, column: 7, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1427, file: !3, line: 830, column: 77)
!1441 = !DILocation(line: 832, column: 7, scope: !1440)
!1442 = !DILocation(line: 833, column: 7, scope: !1440)
!1443 = !DILocation(line: 834, column: 7, scope: !1440)
!1444 = !DILocation(line: 841, column: 16, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !504, file: !3, line: 841, column: 9)
!1446 = !DILocation(line: 841, column: 9, scope: !504)
!1447 = !DILocation(line: 841, column: 9, scope: !1445)
!1448 = !DILocation(line: 842, column: 63, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1445, file: !3, line: 841, column: 57)
!1450 = !DILocation(line: 842, column: 20, scope: !1449)
!1451 = !DILocation(line: 809, column: 27, scope: !504)
!1452 = !DILocation(line: 843, column: 67, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1449, file: !3, line: 843, column: 11)
!1454 = !DILocation(line: 843, column: 55, scope: !1453)
!1455 = !DILocation(line: 843, column: 74, scope: !1453)
!1456 = !DILocation(line: 843, column: 52, scope: !1453)
!1457 = !DILocation(line: 843, column: 18, scope: !1453)
!1458 = !DILocation(line: 843, column: 11, scope: !1449)
!1459 = !DILocation(line: 1566, column: 8, scope: !1460, inlinedAt: !1467)
!1460 = distinct !DILexicalBlock(scope: !1461, file: !3, line: 1566, column: 3)
!1461 = distinct !DISubprogram(name: "nd6_find_destination_cache_entry", scope: !3, file: !3, line: 1560, type: !1462, isLocal: true, isDefinition: true, scopeLine: 1561, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1464)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!466, !162}
!1464 = !{!1465, !1466}
!1465 = !DILocalVariable(name: "ip6addr", arg: 1, scope: !1461, file: !3, line: 1560, type: !162)
!1466 = !DILocalVariable(name: "i", scope: !1461, file: !3, line: 1562, type: !466)
!1467 = distinct !DILocation(line: 851, column: 16, scope: !504)
!1468 = !DILocation(line: 0, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1445, file: !3, line: 846, column: 12)
!1470 = !DILocation(line: 810, column: 16, scope: !504)
!1471 = !DILocation(line: 1560, column: 52, scope: !1461, inlinedAt: !1467)
!1472 = !DILocation(line: 1562, column: 9, scope: !1461, inlinedAt: !1467)
!1473 = !DILocation(line: 1566, column: 3, scope: !1460, inlinedAt: !1467)
!1474 = !DILocation(line: 1567, column: 9, scope: !1475, inlinedAt: !1467)
!1475 = distinct !DILexicalBlock(scope: !1476, file: !3, line: 1567, column: 9)
!1476 = distinct !DILexicalBlock(scope: !1477, file: !3, line: 1566, column: 51)
!1477 = distinct !DILexicalBlock(scope: !1460, file: !3, line: 1566, column: 3)
!1478 = !{!1479, !520, i64 16}
!1479 = !{!"nd6_destination_cache_entry", !640, i64 0, !640, i64 20, !519, i64 40, !549, i64 44}
!1480 = !DILocation(line: 1567, column: 9, scope: !1476, inlinedAt: !1467)
!1481 = !DILocation(line: 1566, column: 47, scope: !1477, inlinedAt: !1467)
!1482 = !DILocation(line: 1566, column: 3, scope: !1477, inlinedAt: !1467)
!1483 = !DILocation(line: 1566, column: 17, scope: !1477, inlinedAt: !1467)
!1484 = distinct !{!1484, !1485, !1486}
!1485 = !DILocation(line: 1566, column: 3, scope: !1460)
!1486 = !DILocation(line: 1570, column: 3, scope: !1460)
!1487 = !DILocation(line: 1571, column: 3, scope: !1461, inlinedAt: !1467)
!1488 = !DILocation(line: 1572, column: 1, scope: !1461, inlinedAt: !1467)
!1489 = !DILocation(line: 291, column: 9, scope: !457)
!1490 = !DILocation(line: 852, column: 9, scope: !504)
!1491 = !DILocation(line: 1568, column: 7, scope: !1492, inlinedAt: !1467)
!1492 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 1567, column: 74)
!1493 = !DILocation(line: 852, column: 18, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !504, file: !3, line: 852, column: 9)
!1495 = !DILocation(line: 854, column: 7, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1494, file: !3, line: 852, column: 23)
!1497 = !DILocation(line: 855, column: 7, scope: !1496)
!1498 = !DILocation(line: 859, column: 5, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !504, file: !3, line: 859, column: 5)
!1500 = !DILocation(line: 860, column: 5, scope: !504)
!1501 = !DILocation(line: 863, column: 5, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !504, file: !3, line: 863, column: 5)
!1503 = !{!1479, !520, i64 36}
!1504 = !DILocation(line: 866, column: 20, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !504, file: !3, line: 866, column: 9)
!1506 = !DILocation(line: 866, column: 9, scope: !504)
!1507 = !DILocation(line: 867, column: 23, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1509, file: !3, line: 867, column: 11)
!1509 = distinct !DILexicalBlock(scope: !1505, file: !3, line: 866, column: 29)
!1510 = !{!610, !520, i64 0}
!1511 = !DILocation(line: 867, column: 28, scope: !1508)
!1512 = !DILocation(line: 867, column: 11, scope: !1509)
!1513 = !DILocation(line: 810, column: 37, scope: !504)
!1514 = !DILocation(line: 1401, column: 49, scope: !623, inlinedAt: !1515)
!1515 = distinct !DILocation(line: 868, column: 13, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1508, file: !3, line: 867, column: 62)
!1517 = !DILocation(line: 1403, column: 8, scope: !623, inlinedAt: !1515)
!1518 = !DILocation(line: 1404, column: 8, scope: !632, inlinedAt: !1515)
!1519 = !DILocation(line: 1404, column: 3, scope: !632, inlinedAt: !1515)
!1520 = !DILocation(line: 1405, column: 9, scope: !635, inlinedAt: !1515)
!1521 = !DILocation(line: 1405, column: 9, scope: !636, inlinedAt: !1515)
!1522 = !DILocation(line: 1404, column: 44, scope: !637, inlinedAt: !1515)
!1523 = !DILocation(line: 1404, column: 3, scope: !637, inlinedAt: !1515)
!1524 = !DILocation(line: 1404, column: 17, scope: !637, inlinedAt: !1515)
!1525 = !DILocation(line: 1409, column: 3, scope: !623, inlinedAt: !1515)
!1526 = !DILocation(line: 1410, column: 1, scope: !623, inlinedAt: !1515)
!1527 = !DILocation(line: 869, column: 13, scope: !1516)
!1528 = !DILocation(line: 1406, column: 7, scope: !652, inlinedAt: !1515)
!1529 = !DILocation(line: 869, column: 15, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1516, file: !3, line: 869, column: 13)
!1531 = !DILocation(line: 870, column: 15, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 869, column: 20)
!1533 = !DILocation(line: 871, column: 17, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1532, file: !3, line: 871, column: 15)
!1535 = !DILocation(line: 871, column: 15, scope: !1532)
!1536 = !DILocation(line: 872, column: 13, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1534, file: !3, line: 871, column: 23)
!1538 = !DILocation(line: 872, column: 31, scope: !1537)
!1539 = !DILocation(line: 872, column: 37, scope: !1537)
!1540 = !DILocation(line: 873, column: 13, scope: !1537)
!1541 = !DILocation(line: 874, column: 13, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1537, file: !3, line: 874, column: 13)
!1543 = !DILocation(line: 878, column: 31, scope: !1537)
!1544 = !DILocation(line: 878, column: 37, scope: !1537)
!1545 = !DILocation(line: 879, column: 39, scope: !1537)
!1546 = !DILocation(line: 879, column: 50, scope: !1537)
!1547 = !DILocation(line: 880, column: 11, scope: !1537)
!1548 = !DILocation(line: 882, column: 13, scope: !1516)
!1549 = !DILocation(line: 883, column: 15, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1551, file: !3, line: 882, column: 21)
!1551 = distinct !DILexicalBlock(scope: !1516, file: !3, line: 882, column: 13)
!1552 = !DILocation(line: 883, column: 33, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1550, file: !3, line: 883, column: 15)
!1554 = !DILocation(line: 884, column: 13, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1553, file: !3, line: 883, column: 58)
!1556 = !DILocation(line: 887, column: 37, scope: !1555)
!1557 = !DILocation(line: 888, column: 39, scope: !1555)
!1558 = !DILocation(line: 888, column: 50, scope: !1555)
!1559 = !DILocation(line: 889, column: 11, scope: !1555)
!1560 = !DILocation(line: 893, column: 5, scope: !504)
!1561 = !DILocation(line: 903, column: 12, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !509, file: !3, line: 903, column: 9)
!1563 = !DILocation(line: 903, column: 16, scope: !1562)
!1564 = !DILocation(line: 903, column: 9, scope: !509)
!1565 = !DILocation(line: 905, column: 7, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1562, file: !3, line: 903, column: 57)
!1567 = !DILocation(line: 906, column: 7, scope: !1566)
!1568 = !DILocation(line: 907, column: 7, scope: !1566)
!1569 = !DILocation(line: 908, column: 7, scope: !1566)
!1570 = !DILocation(line: 897, column: 23, scope: !509)
!1571 = !DILocation(line: 898, column: 21, scope: !509)
!1572 = !DILocation(line: 915, column: 5, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !509, file: !3, line: 915, column: 5)
!1574 = !DILocation(line: 916, column: 5, scope: !509)
!1575 = !DILocation(line: 900, column: 16, scope: !509)
!1576 = !DILocation(line: 1560, column: 52, scope: !1461, inlinedAt: !1577)
!1577 = distinct !DILocation(line: 919, column: 16, scope: !509)
!1578 = !DILocation(line: 1562, column: 9, scope: !1461, inlinedAt: !1577)
!1579 = !DILocation(line: 1566, column: 8, scope: !1460, inlinedAt: !1577)
!1580 = !DILocation(line: 1566, column: 3, scope: !1460, inlinedAt: !1577)
!1581 = !DILocation(line: 1567, column: 9, scope: !1475, inlinedAt: !1577)
!1582 = !DILocation(line: 1567, column: 9, scope: !1476, inlinedAt: !1577)
!1583 = !DILocation(line: 1566, column: 47, scope: !1477, inlinedAt: !1577)
!1584 = !DILocation(line: 1566, column: 3, scope: !1477, inlinedAt: !1577)
!1585 = !DILocation(line: 1566, column: 17, scope: !1477, inlinedAt: !1577)
!1586 = !DILocation(line: 1571, column: 3, scope: !1461, inlinedAt: !1577)
!1587 = !DILocation(line: 1572, column: 1, scope: !1461, inlinedAt: !1577)
!1588 = !DILocation(line: 920, column: 9, scope: !509)
!1589 = !DILocation(line: 1568, column: 7, scope: !1492, inlinedAt: !1577)
!1590 = !DILocation(line: 920, column: 18, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !509, file: !3, line: 920, column: 9)
!1592 = !DILocation(line: 922, column: 7, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1591, file: !3, line: 920, column: 23)
!1594 = !DILocation(line: 923, column: 7, scope: !1593)
!1595 = !DILocation(line: 927, column: 33, scope: !509)
!1596 = !{!1597, !549, i64 4}
!1597 = !{!"icmp6_hdr", !520, i64 0, !520, i64 1, !519, i64 2, !549, i64 4}
!1598 = !DILocation(line: 927, column: 12, scope: !509)
!1599 = !DILocation(line: 899, column: 11, scope: !509)
!1600 = !DILocation(line: 928, column: 47, scope: !509)
!1601 = !DILocation(line: 928, column: 40, scope: !509)
!1602 = !DILocation(line: 928, column: 5, scope: !509)
!1603 = !DILocation(line: 928, column: 33, scope: !509)
!1604 = !DILocation(line: 928, column: 38, scope: !509)
!1605 = !{!1479, !519, i64 40}
!1606 = !DILocation(line: 930, column: 5, scope: !509)
!1607 = !DILocation(line: 934, column: 5, scope: !472)
!1608 = !DILocation(line: 935, column: 5, scope: !472)
!1609 = !DILocation(line: 936, column: 5, scope: !472)
!1610 = !DILocation(line: 939, column: 3, scope: !457)
!1611 = !DILocation(line: 940, column: 3, scope: !457)
!1612 = !DILocation(line: 942, column: 3, scope: !457)
!1613 = !DILocation(line: 943, column: 3, scope: !457)
!1614 = !DILocation(line: 944, column: 3, scope: !457)
!1615 = !DILocation(line: 945, column: 1, scope: !457)
!1616 = !DILocation(line: 352, column: 18, scope: !601)
!1617 = !DILocation(line: 352, column: 11, scope: !587)
!1618 = !DILocation(line: 486, column: 7, scope: !878)
!1619 = !DILocation(line: 487, column: 7, scope: !878)
!1620 = distinct !DISubprogram(name: "nd6_duplicate_addr_detected", scope: !3, file: !3, line: 147, type: !1621, isLocal: true, isDefinition: true, scopeLine: 148, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1623)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{null, !274, !307}
!1623 = !{!1624, !1625, !1626}
!1624 = !DILocalVariable(name: "netif", arg: 1, scope: !1620, file: !3, line: 147, type: !274)
!1625 = !DILocalVariable(name: "addr_idx", arg: 2, scope: !1620, file: !3, line: 147, type: !307)
!1626 = !DILocalVariable(name: "i", scope: !1627, file: !3, line: 164, type: !307)
!1627 = distinct !DILexicalBlock(scope: !1628, file: !3, line: 163, column: 22)
!1628 = distinct !DILexicalBlock(scope: !1620, file: !3, line: 163, column: 7)
!1629 = !DILocation(line: 147, column: 43, scope: !1620)
!1630 = !DILocation(line: 147, column: 55, scope: !1620)
!1631 = !DILocation(line: 155, column: 3, scope: !1620)
!1632 = !DILocation(line: 163, column: 16, scope: !1628)
!1633 = !DILocation(line: 163, column: 7, scope: !1620)
!1634 = !DILocation(line: 164, column: 10, scope: !1627)
!1635 = !DILocation(line: 165, column: 10, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1627, file: !3, line: 165, column: 5)
!1637 = !DILocation(line: 165, column: 5, scope: !1636)
!1638 = !DILocation(line: 166, column: 12, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1640, file: !3, line: 166, column: 11)
!1640 = distinct !DILexicalBlock(scope: !1641, file: !3, line: 165, column: 51)
!1641 = distinct !DILexicalBlock(scope: !1636, file: !3, line: 165, column: 5)
!1642 = !DILocation(line: 166, column: 63, scope: !1639)
!1643 = !DILocation(line: 167, column: 12, scope: !1639)
!1644 = !DILocation(line: 166, column: 11, scope: !1640)
!1645 = !DILocation(line: 168, column: 9, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1639, file: !3, line: 167, column: 47)
!1647 = !DILocation(line: 169, column: 7, scope: !1646)
!1648 = !DILocation(line: 165, column: 5, scope: !1641)
!1649 = !DILocation(line: 173, column: 1, scope: !1620)
!1650 = !DILocation(line: 171, column: 3, scope: !1627)
!1651 = distinct !DISubprogram(name: "nd6_send_q", scope: !3, file: !3, line: 2176, type: !1652, isLocal: true, isDefinition: true, scopeLine: 2177, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1654)
!1652 = !DISubroutineType(types: !1653)
!1653 = !{null, !307}
!1654 = !{!1655, !1656, !1657, !1658}
!1655 = !DILocalVariable(name: "i", arg: 1, scope: !1651, file: !3, line: 2176, type: !307)
!1656 = !DILocalVariable(name: "ip6hdr", scope: !1651, file: !3, line: 2178, type: !234)
!1657 = !DILocalVariable(name: "dest", scope: !1651, file: !3, line: 2179, type: !164)
!1658 = !DILocalVariable(name: "q", scope: !1651, file: !3, line: 2181, type: !248)
!1659 = !DILocation(line: 2176, column: 17, scope: !1651)
!1660 = !DILocation(line: 2179, column: 3, scope: !1651)
!1661 = !DILocation(line: 2184, column: 10, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1651, file: !3, line: 2184, column: 7)
!1663 = !DILocation(line: 2184, column: 15, scope: !1662)
!1664 = !DILocation(line: 2184, column: 21, scope: !1662)
!1665 = !DILocation(line: 2184, column: 7, scope: !1651)
!1666 = !DILocation(line: 2189, column: 10, scope: !1651)
!1667 = !DILocation(line: 2189, column: 28, scope: !1651)
!1668 = !DILocation(line: 2189, column: 30, scope: !1651)
!1669 = !DILocation(line: 2189, column: 3, scope: !1651)
!1670 = !DILocation(line: 2181, column: 23, scope: !1651)
!1671 = !DILocation(line: 2193, column: 30, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1651, file: !3, line: 2189, column: 39)
!1673 = !{!1674, !528, i64 0}
!1674 = !{!"nd6_q_entry", !528, i64 0, !528, i64 8}
!1675 = !DILocation(line: 2193, column: 25, scope: !1672)
!1676 = !DILocation(line: 2195, column: 36, scope: !1672)
!1677 = !{!1674, !528, i64 8}
!1678 = !DILocation(line: 2195, column: 39, scope: !1672)
!1679 = !DILocation(line: 2178, column: 19, scope: !1651)
!1680 = !DILocation(line: 2197, column: 5, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1672, file: !3, line: 2197, column: 5)
!1682 = !DILocation(line: 2199, column: 5, scope: !1672)
!1683 = !DILocation(line: 2201, column: 24, scope: !1672)
!1684 = !DILocation(line: 2201, column: 32, scope: !1672)
!1685 = !{!552, !528, i64 208}
!1686 = !DILocation(line: 2179, column: 14, scope: !1651)
!1687 = !DILocation(line: 2201, column: 5, scope: !1672)
!1688 = !DILocation(line: 2203, column: 18, scope: !1672)
!1689 = !DILocation(line: 2203, column: 5, scope: !1672)
!1690 = !DILocation(line: 2205, column: 31, scope: !1672)
!1691 = !DILocation(line: 2205, column: 5, scope: !1672)
!1692 = distinct !{!1692, !1669, !1693}
!1693 = !DILocation(line: 2206, column: 3, scope: !1651)
!1694 = !DILocation(line: 0, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1662, file: !3, line: 2184, column: 49)
!1696 = !DILocation(line: 2222, column: 1, scope: !1651)
!1697 = distinct !DISubprogram(name: "nd6_send_na", scope: !3, file: !3, line: 1254, type: !1698, isLocal: true, isDefinition: true, scopeLine: 1255, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1700)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{null, !274, !162, !117}
!1700 = !{!1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709}
!1701 = !DILocalVariable(name: "netif", arg: 1, scope: !1697, file: !3, line: 1254, type: !274)
!1702 = !DILocalVariable(name: "target_addr", arg: 2, scope: !1697, file: !3, line: 1254, type: !162)
!1703 = !DILocalVariable(name: "flags", arg: 3, scope: !1697, file: !3, line: 1254, type: !117)
!1704 = !DILocalVariable(name: "na_hdr", scope: !1697, file: !3, line: 1256, type: !124)
!1705 = !DILocalVariable(name: "lladdr_opt", scope: !1697, file: !3, line: 1257, type: !170)
!1706 = !DILocalVariable(name: "p", scope: !1697, file: !3, line: 1258, type: !253)
!1707 = !DILocalVariable(name: "src_addr", scope: !1697, file: !3, line: 1259, type: !162)
!1708 = !DILocalVariable(name: "dest_addr", scope: !1697, file: !3, line: 1260, type: !162)
!1709 = !DILocalVariable(name: "lladdr_opt_len", scope: !1697, file: !3, line: 1261, type: !131)
!1710 = !DILocation(line: 1254, column: 27, scope: !1697)
!1711 = !DILocation(line: 1254, column: 52, scope: !1697)
!1712 = !DILocation(line: 1254, column: 70, scope: !1697)
!1713 = !DILocation(line: 1263, column: 3, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1715, file: !3, line: 1263, column: 3)
!1715 = distinct !DILexicalBlock(scope: !1697, file: !3, line: 1263, column: 3)
!1716 = !DILocation(line: 1263, column: 3, scope: !1715)
!1717 = !DILocation(line: 1263, column: 3, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1719, file: !3, line: 1263, column: 3)
!1719 = distinct !DILexicalBlock(scope: !1714, file: !3, line: 1263, column: 3)
!1720 = !DILocation(line: 1263, column: 3, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1722, file: !3, line: 1263, column: 3)
!1722 = distinct !DILexicalBlock(scope: !1723, file: !3, line: 1263, column: 3)
!1723 = distinct !DILexicalBlock(scope: !1718, file: !3, line: 1263, column: 3)
!1724 = !DILocation(line: 1259, column: 21, scope: !1697)
!1725 = !DILocation(line: 1271, column: 29, scope: !1697)
!1726 = !DILocation(line: 1271, column: 22, scope: !1697)
!1727 = !DILocation(line: 1271, column: 40, scope: !1697)
!1728 = !DILocation(line: 1271, column: 45, scope: !1697)
!1729 = !DILocation(line: 1271, column: 79, scope: !1697)
!1730 = !DILocation(line: 1271, column: 54, scope: !1697)
!1731 = !DILocation(line: 1271, column: 51, scope: !1697)
!1732 = !DILocation(line: 1261, column: 9, scope: !1697)
!1733 = !DILocation(line: 1272, column: 70, scope: !1697)
!1734 = !DILocation(line: 1272, column: 52, scope: !1697)
!1735 = !DILocation(line: 1272, column: 7, scope: !1697)
!1736 = !DILocation(line: 1258, column: 16, scope: !1697)
!1737 = !DILocation(line: 1273, column: 9, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1697, file: !3, line: 1273, column: 7)
!1739 = !DILocation(line: 1273, column: 7, scope: !1697)
!1740 = !DILocation(line: 1274, column: 5, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1738, file: !3, line: 1273, column: 18)
!1742 = !DILocation(line: 1275, column: 5, scope: !1741)
!1743 = !DILocation(line: 1279, column: 35, scope: !1697)
!1744 = !DILocation(line: 1256, column: 21, scope: !1697)
!1745 = !DILocation(line: 1280, column: 59, scope: !1697)
!1746 = !DILocation(line: 1257, column: 25, scope: !1697)
!1747 = !DILocation(line: 1282, column: 16, scope: !1697)
!1748 = !{!565, !520, i64 0}
!1749 = !DILocation(line: 1283, column: 11, scope: !1697)
!1750 = !DILocation(line: 1283, column: 16, scope: !1697)
!1751 = !DILocation(line: 1284, column: 11, scope: !1697)
!1752 = !DILocation(line: 1284, column: 18, scope: !1697)
!1753 = !{!565, !519, i64 2}
!1754 = !DILocation(line: 1285, column: 19, scope: !1697)
!1755 = !DILocation(line: 1285, column: 25, scope: !1697)
!1756 = !DILocation(line: 1285, column: 11, scope: !1697)
!1757 = !DILocation(line: 1285, column: 17, scope: !1697)
!1758 = !DILocation(line: 1286, column: 11, scope: !1697)
!1759 = !DILocation(line: 1286, column: 23, scope: !1697)
!1760 = !DILocation(line: 1287, column: 3, scope: !1697)
!1761 = !DILocation(line: 1287, column: 23, scope: !1697)
!1762 = !DILocation(line: 1288, column: 3, scope: !1697)
!1763 = !DILocation(line: 1288, column: 23, scope: !1697)
!1764 = !DILocation(line: 1289, column: 3, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1697, file: !3, line: 1289, column: 3)
!1766 = !DILocation(line: 1291, column: 20, scope: !1697)
!1767 = !DILocation(line: 1292, column: 24, scope: !1697)
!1768 = !DILocation(line: 1292, column: 15, scope: !1697)
!1769 = !DILocation(line: 1292, column: 22, scope: !1697)
!1770 = !DILocation(line: 1293, column: 3, scope: !1697)
!1771 = !DILocation(line: 1296, column: 13, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1697, file: !3, line: 1296, column: 7)
!1773 = !DILocation(line: 1296, column: 7, scope: !1697)
!1774 = !DILocation(line: 1297, column: 5, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1776, file: !3, line: 1297, column: 5)
!1776 = distinct !DILexicalBlock(scope: !1772, file: !3, line: 1296, column: 45)
!1777 = !DILocation(line: 1260, column: 21, scope: !1697)
!1778 = !DILocation(line: 1300, column: 3, scope: !1776)
!1779 = !DILocation(line: 1300, column: 20, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1772, file: !3, line: 1300, column: 14)
!1781 = !DILocation(line: 1300, column: 14, scope: !1772)
!1782 = !DILocation(line: 1301, column: 5, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1784, file: !3, line: 1301, column: 5)
!1784 = distinct !DILexicalBlock(scope: !1780, file: !3, line: 1300, column: 51)
!1785 = !DILocation(line: 1304, column: 3, scope: !1784)
!1786 = !DILocation(line: 0, scope: !1783)
!1787 = !DILocation(line: 0, scope: !1784)
!1788 = !DILocation(line: 0, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1780, file: !3, line: 1304, column: 10)
!1790 = !DILocation(line: 1309, column: 3, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1697, file: !3, line: 1309, column: 3)
!1792 = !{!552, !519, i64 248}
!1793 = !DILocation(line: 1309, column: 3, scope: !1697)
!1794 = !DILocation(line: 1310, column: 63, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1791, file: !3, line: 1309, column: 63)
!1796 = !DILocation(line: 1310, column: 22, scope: !1795)
!1797 = !DILocation(line: 1310, column: 20, scope: !1795)
!1798 = !DILocation(line: 1312, column: 3, scope: !1795)
!1799 = !DILocation(line: 1316, column: 3, scope: !1697)
!1800 = !{!517, !519, i64 286}
!1801 = !DILocation(line: 1317, column: 3, scope: !1697)
!1802 = !DILocation(line: 1319, column: 3, scope: !1697)
!1803 = !DILocation(line: 1320, column: 1, scope: !1697)
!1804 = !DILocation(line: 0, scope: !1741)
!1805 = distinct !DISubprogram(name: "nd6_new_neighbor_cache_entry", scope: !3, file: !3, line: 1422, type: !1806, isLocal: true, isDefinition: true, scopeLine: 1423, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1808)
!1806 = !DISubroutineType(types: !1807)
!1807 = !{!307}
!1808 = !{!1809, !1810, !1811}
!1809 = !DILocalVariable(name: "i", scope: !1805, file: !3, line: 1424, type: !307)
!1810 = !DILocalVariable(name: "j", scope: !1805, file: !3, line: 1425, type: !307)
!1811 = !DILocalVariable(name: "time", scope: !1805, file: !3, line: 1426, type: !147)
!1812 = !DILocation(line: 1424, column: 8, scope: !1805)
!1813 = !DILocation(line: 1430, column: 8, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1805, file: !3, line: 1430, column: 3)
!1815 = !DILocation(line: 1430, column: 3, scope: !1814)
!1816 = !DILocation(line: 1431, column: 27, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1818, file: !3, line: 1431, column: 9)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !3, line: 1430, column: 48)
!1819 = distinct !DILexicalBlock(scope: !1814, file: !3, line: 1430, column: 3)
!1820 = !DILocation(line: 1431, column: 33, scope: !1817)
!1821 = !DILocation(line: 1431, column: 9, scope: !1818)
!1822 = !DILocation(line: 1430, column: 3, scope: !1819)
!1823 = !DILocation(line: 1441, column: 29, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1825, file: !3, line: 1440, column: 9)
!1825 = distinct !DILexicalBlock(scope: !1826, file: !3, line: 1439, column: 48)
!1826 = distinct !DILexicalBlock(scope: !1827, file: !3, line: 1439, column: 3)
!1827 = distinct !DILexicalBlock(scope: !1805, file: !3, line: 1439, column: 3)
!1828 = !DILocation(line: 1441, column: 11, scope: !1824)
!1829 = !DILocation(line: 1440, column: 9, scope: !1825)
!1830 = !DILocation(line: 1440, column: 10, scope: !1824)
!1831 = !DILocation(line: 1440, column: 28, scope: !1824)
!1832 = !DILocalVariable(name: "i", arg: 1, scope: !1833, file: !3, line: 1529, type: !307)
!1833 = distinct !DISubprogram(name: "nd6_free_neighbor_cache_entry", scope: !3, file: !3, line: 1529, type: !1652, isLocal: true, isDefinition: true, scopeLine: 1530, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1834)
!1834 = !{!1832}
!1835 = !DILocation(line: 1529, column: 36, scope: !1833, inlinedAt: !1836)
!1836 = distinct !DILocation(line: 1442, column: 7, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1824, file: !3, line: 1441, column: 40)
!1838 = !DILocation(line: 1531, column: 15, scope: !1839, inlinedAt: !1836)
!1839 = distinct !DILexicalBlock(scope: !1833, file: !3, line: 1531, column: 7)
!1840 = !DILocation(line: 1531, column: 7, scope: !1833, inlinedAt: !1836)
!1841 = !DILocation(line: 1534, column: 7, scope: !1833, inlinedAt: !1836)
!1842 = !DILocation(line: 1540, column: 25, scope: !1843, inlinedAt: !1836)
!1843 = distinct !DILexicalBlock(scope: !1833, file: !3, line: 1540, column: 7)
!1844 = !DILocation(line: 1540, column: 27, scope: !1843, inlinedAt: !1836)
!1845 = !DILocation(line: 1540, column: 7, scope: !1833, inlinedAt: !1836)
!1846 = !DILocation(line: 1541, column: 5, scope: !1847, inlinedAt: !1836)
!1847 = distinct !DILexicalBlock(scope: !1843, file: !3, line: 1540, column: 36)
!1848 = !DILocation(line: 1542, column: 25, scope: !1847, inlinedAt: !1836)
!1849 = !DILocation(line: 1543, column: 3, scope: !1847, inlinedAt: !1836)
!1850 = !DILocation(line: 1545, column: 27, scope: !1833, inlinedAt: !1836)
!1851 = !DILocation(line: 1546, column: 30, scope: !1833, inlinedAt: !1836)
!1852 = !DILocation(line: 1547, column: 21, scope: !1833, inlinedAt: !1836)
!1853 = !DILocation(line: 1547, column: 27, scope: !1833, inlinedAt: !1836)
!1854 = !DILocation(line: 1548, column: 29, scope: !1833, inlinedAt: !1836)
!1855 = !DILocation(line: 1548, column: 44, scope: !1833, inlinedAt: !1836)
!1856 = !DILocation(line: 1549, column: 3, scope: !1857, inlinedAt: !1836)
!1857 = distinct !DILexicalBlock(scope: !1833, file: !3, line: 1549, column: 3)
!1858 = !DILocation(line: 1550, column: 1, scope: !1833, inlinedAt: !1836)
!1859 = !DILocation(line: 1443, column: 7, scope: !1837)
!1860 = !DILocation(line: 1439, column: 3, scope: !1826)
!1861 = !DILocation(line: 1439, column: 3, scope: !1827)
!1862 = !DILocation(line: 1440, column: 34, scope: !1824)
!1863 = !DILocation(line: 1440, column: 48, scope: !1824)
!1864 = !DILocation(line: 1450, column: 29, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1866, file: !3, line: 1449, column: 9)
!1866 = distinct !DILexicalBlock(scope: !1867, file: !3, line: 1448, column: 48)
!1867 = distinct !DILexicalBlock(scope: !1868, file: !3, line: 1448, column: 3)
!1868 = distinct !DILexicalBlock(scope: !1805, file: !3, line: 1448, column: 3)
!1869 = !DILocation(line: 1450, column: 11, scope: !1865)
!1870 = !DILocation(line: 1449, column: 9, scope: !1866)
!1871 = !DILocation(line: 1449, column: 10, scope: !1865)
!1872 = !DILocation(line: 1449, column: 28, scope: !1865)
!1873 = !DILocation(line: 1529, column: 36, scope: !1833, inlinedAt: !1874)
!1874 = distinct !DILocation(line: 1451, column: 7, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1865, file: !3, line: 1450, column: 40)
!1876 = !DILocation(line: 1531, column: 15, scope: !1839, inlinedAt: !1874)
!1877 = !DILocation(line: 1531, column: 7, scope: !1833, inlinedAt: !1874)
!1878 = !DILocation(line: 1534, column: 7, scope: !1833, inlinedAt: !1874)
!1879 = !DILocation(line: 1540, column: 25, scope: !1843, inlinedAt: !1874)
!1880 = !DILocation(line: 1540, column: 27, scope: !1843, inlinedAt: !1874)
!1881 = !DILocation(line: 1540, column: 7, scope: !1833, inlinedAt: !1874)
!1882 = !DILocation(line: 1541, column: 5, scope: !1847, inlinedAt: !1874)
!1883 = !DILocation(line: 1542, column: 25, scope: !1847, inlinedAt: !1874)
!1884 = !DILocation(line: 1543, column: 3, scope: !1847, inlinedAt: !1874)
!1885 = !DILocation(line: 1545, column: 27, scope: !1833, inlinedAt: !1874)
!1886 = !DILocation(line: 1546, column: 30, scope: !1833, inlinedAt: !1874)
!1887 = !DILocation(line: 1547, column: 21, scope: !1833, inlinedAt: !1874)
!1888 = !DILocation(line: 1547, column: 27, scope: !1833, inlinedAt: !1874)
!1889 = !DILocation(line: 1548, column: 29, scope: !1833, inlinedAt: !1874)
!1890 = !DILocation(line: 1548, column: 44, scope: !1833, inlinedAt: !1874)
!1891 = !DILocation(line: 1549, column: 3, scope: !1857, inlinedAt: !1874)
!1892 = !DILocation(line: 1550, column: 1, scope: !1833, inlinedAt: !1874)
!1893 = !DILocation(line: 1452, column: 7, scope: !1875)
!1894 = !DILocation(line: 1448, column: 3, scope: !1867)
!1895 = !DILocation(line: 1448, column: 3, scope: !1868)
!1896 = !DILocation(line: 1449, column: 34, scope: !1865)
!1897 = !DILocation(line: 1449, column: 48, scope: !1865)
!1898 = !DILocation(line: 1459, column: 29, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1900, file: !3, line: 1458, column: 9)
!1900 = distinct !DILexicalBlock(scope: !1901, file: !3, line: 1457, column: 48)
!1901 = distinct !DILexicalBlock(scope: !1902, file: !3, line: 1457, column: 3)
!1902 = distinct !DILexicalBlock(scope: !1805, file: !3, line: 1457, column: 3)
!1903 = !DILocation(line: 1459, column: 11, scope: !1899)
!1904 = !DILocation(line: 1458, column: 9, scope: !1900)
!1905 = !DILocation(line: 1458, column: 10, scope: !1899)
!1906 = !DILocation(line: 1458, column: 28, scope: !1899)
!1907 = !DILocation(line: 1529, column: 36, scope: !1833, inlinedAt: !1908)
!1908 = distinct !DILocation(line: 1460, column: 7, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1899, file: !3, line: 1459, column: 40)
!1910 = !DILocation(line: 1531, column: 15, scope: !1839, inlinedAt: !1908)
!1911 = !DILocation(line: 1531, column: 7, scope: !1833, inlinedAt: !1908)
!1912 = !DILocation(line: 1534, column: 7, scope: !1833, inlinedAt: !1908)
!1913 = !DILocation(line: 1540, column: 25, scope: !1843, inlinedAt: !1908)
!1914 = !DILocation(line: 1540, column: 27, scope: !1843, inlinedAt: !1908)
!1915 = !DILocation(line: 1540, column: 7, scope: !1833, inlinedAt: !1908)
!1916 = !DILocation(line: 1541, column: 5, scope: !1847, inlinedAt: !1908)
!1917 = !DILocation(line: 1542, column: 25, scope: !1847, inlinedAt: !1908)
!1918 = !DILocation(line: 1543, column: 3, scope: !1847, inlinedAt: !1908)
!1919 = !DILocation(line: 1545, column: 27, scope: !1833, inlinedAt: !1908)
!1920 = !DILocation(line: 1546, column: 30, scope: !1833, inlinedAt: !1908)
!1921 = !DILocation(line: 1547, column: 21, scope: !1833, inlinedAt: !1908)
!1922 = !DILocation(line: 1547, column: 27, scope: !1833, inlinedAt: !1908)
!1923 = !DILocation(line: 1548, column: 29, scope: !1833, inlinedAt: !1908)
!1924 = !DILocation(line: 1548, column: 44, scope: !1833, inlinedAt: !1908)
!1925 = !DILocation(line: 1549, column: 3, scope: !1857, inlinedAt: !1908)
!1926 = !DILocation(line: 1550, column: 1, scope: !1833, inlinedAt: !1908)
!1927 = !DILocation(line: 1461, column: 7, scope: !1909)
!1928 = !DILocation(line: 1457, column: 3, scope: !1901)
!1929 = !DILocation(line: 1457, column: 3, scope: !1902)
!1930 = !DILocation(line: 1458, column: 34, scope: !1899)
!1931 = !DILocation(line: 1458, column: 48, scope: !1899)
!1932 = !DILocation(line: 1469, column: 28, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1934, file: !3, line: 1469, column: 9)
!1934 = distinct !DILexicalBlock(scope: !1935, file: !3, line: 1468, column: 48)
!1935 = distinct !DILexicalBlock(scope: !1936, file: !3, line: 1468, column: 3)
!1936 = distinct !DILexicalBlock(scope: !1805, file: !3, line: 1468, column: 3)
!1937 = !DILocation(line: 1426, column: 9, scope: !1805)
!1938 = !DILocation(line: 1425, column: 8, scope: !1805)
!1939 = !DILocation(line: 1469, column: 34, scope: !1933)
!1940 = !DILocation(line: 1469, column: 52, scope: !1933)
!1941 = !DILocation(line: 1470, column: 29, scope: !1933)
!1942 = !DILocation(line: 1470, column: 11, scope: !1933)
!1943 = !DILocation(line: 1469, column: 9, scope: !1934)
!1944 = !DILocation(line: 1471, column: 37, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1946, file: !3, line: 1471, column: 11)
!1946 = distinct !DILexicalBlock(scope: !1933, file: !3, line: 1470, column: 40)
!1947 = !DILocation(line: 1471, column: 52, scope: !1945)
!1948 = !DILocation(line: 1471, column: 11, scope: !1946)
!1949 = !DILocation(line: 1474, column: 7, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1945, file: !3, line: 1471, column: 60)
!1951 = !DILocation(line: 0, scope: !1805)
!1952 = !DILocation(line: 1468, column: 44, scope: !1935)
!1953 = !DILocation(line: 1468, column: 3, scope: !1935)
!1954 = !DILocation(line: 1468, column: 3, scope: !1936)
!1955 = !DILocation(line: 1468, column: 17, scope: !1935)
!1956 = distinct !{!1956, !1954, !1957}
!1957 = !DILocation(line: 1476, column: 3, scope: !1936)
!1958 = !DILocation(line: 1477, column: 9, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1805, file: !3, line: 1477, column: 7)
!1960 = !DILocation(line: 1477, column: 7, scope: !1805)
!1961 = !DILocation(line: 0, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1805, file: !3, line: 1485, column: 3)
!1963 = !DILocation(line: 1485, column: 3, scope: !1962)
!1964 = !DILocation(line: 1529, column: 36, scope: !1833, inlinedAt: !1965)
!1965 = distinct !DILocation(line: 1478, column: 5, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1959, file: !3, line: 1477, column: 15)
!1967 = !DILocation(line: 1531, column: 21, scope: !1839, inlinedAt: !1965)
!1968 = !DILocation(line: 1531, column: 7, scope: !1833, inlinedAt: !1965)
!1969 = !DILocation(line: 1534, column: 7, scope: !1970, inlinedAt: !1965)
!1970 = distinct !DILexicalBlock(scope: !1833, file: !3, line: 1534, column: 7)
!1971 = !DILocation(line: 1534, column: 25, scope: !1970, inlinedAt: !1965)
!1972 = !DILocation(line: 1534, column: 7, scope: !1833, inlinedAt: !1965)
!1973 = !DILocation(line: 1540, column: 25, scope: !1843, inlinedAt: !1965)
!1974 = !DILocation(line: 1540, column: 27, scope: !1843, inlinedAt: !1965)
!1975 = !DILocation(line: 1540, column: 7, scope: !1833, inlinedAt: !1965)
!1976 = !DILocation(line: 1541, column: 5, scope: !1847, inlinedAt: !1965)
!1977 = !DILocation(line: 1542, column: 25, scope: !1847, inlinedAt: !1965)
!1978 = !DILocation(line: 1543, column: 3, scope: !1847, inlinedAt: !1965)
!1979 = !DILocation(line: 1545, column: 21, scope: !1833, inlinedAt: !1965)
!1980 = !DILocation(line: 1545, column: 27, scope: !1833, inlinedAt: !1965)
!1981 = !DILocation(line: 1546, column: 30, scope: !1833, inlinedAt: !1965)
!1982 = !DILocation(line: 1547, column: 21, scope: !1833, inlinedAt: !1965)
!1983 = !DILocation(line: 1547, column: 27, scope: !1833, inlinedAt: !1965)
!1984 = !DILocation(line: 1548, column: 29, scope: !1833, inlinedAt: !1965)
!1985 = !DILocation(line: 1548, column: 44, scope: !1833, inlinedAt: !1965)
!1986 = !DILocation(line: 1549, column: 3, scope: !1857, inlinedAt: !1965)
!1987 = !DILocation(line: 1550, column: 1, scope: !1833, inlinedAt: !1965)
!1988 = !DILocation(line: 1479, column: 5, scope: !1966)
!1989 = !DILocation(line: 1487, column: 28, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1991, file: !3, line: 1487, column: 9)
!1991 = distinct !DILexicalBlock(scope: !1992, file: !3, line: 1485, column: 48)
!1992 = distinct !DILexicalBlock(scope: !1962, file: !3, line: 1485, column: 3)
!1993 = !DILocation(line: 1487, column: 30, scope: !1990)
!1994 = !DILocation(line: 1487, column: 39, scope: !1990)
!1995 = !DILocation(line: 1488, column: 28, scope: !1990)
!1996 = !DILocation(line: 1488, column: 34, scope: !1990)
!1997 = !DILocation(line: 1488, column: 53, scope: !1990)
!1998 = !DILocation(line: 1489, column: 29, scope: !1990)
!1999 = !DILocation(line: 1489, column: 11, scope: !1990)
!2000 = !DILocation(line: 1487, column: 9, scope: !1991)
!2001 = !DILocation(line: 1490, column: 37, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !2003, file: !3, line: 1490, column: 11)
!2003 = distinct !DILexicalBlock(scope: !1990, file: !3, line: 1489, column: 40)
!2004 = !DILocation(line: 1490, column: 49, scope: !2002)
!2005 = !DILocation(line: 1490, column: 11, scope: !2003)
!2006 = !DILocation(line: 1493, column: 7, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !2002, file: !3, line: 1490, column: 58)
!2008 = !DILocation(line: 1485, column: 44, scope: !1992)
!2009 = !DILocation(line: 1485, column: 3, scope: !1992)
!2010 = !DILocation(line: 1485, column: 17, scope: !1992)
!2011 = distinct !{!2011, !1963, !2012}
!2012 = !DILocation(line: 1495, column: 3, scope: !1962)
!2013 = !DILocation(line: 1496, column: 9, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !1805, file: !3, line: 1496, column: 7)
!2015 = !DILocation(line: 1496, column: 7, scope: !1805)
!2016 = !DILocation(line: 0, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !1805, file: !3, line: 1504, column: 3)
!2018 = !DILocation(line: 1504, column: 3, scope: !2017)
!2019 = !DILocation(line: 1529, column: 36, scope: !1833, inlinedAt: !2020)
!2020 = distinct !DILocation(line: 1497, column: 5, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2014, file: !3, line: 1496, column: 15)
!2022 = !DILocation(line: 1531, column: 21, scope: !1839, inlinedAt: !2020)
!2023 = !DILocation(line: 1531, column: 7, scope: !1833, inlinedAt: !2020)
!2024 = !DILocation(line: 1534, column: 7, scope: !1970, inlinedAt: !2020)
!2025 = !DILocation(line: 1534, column: 25, scope: !1970, inlinedAt: !2020)
!2026 = !DILocation(line: 1534, column: 7, scope: !1833, inlinedAt: !2020)
!2027 = !DILocation(line: 1540, column: 25, scope: !1843, inlinedAt: !2020)
!2028 = !DILocation(line: 1540, column: 27, scope: !1843, inlinedAt: !2020)
!2029 = !DILocation(line: 1540, column: 7, scope: !1833, inlinedAt: !2020)
!2030 = !DILocation(line: 1541, column: 5, scope: !1847, inlinedAt: !2020)
!2031 = !DILocation(line: 1542, column: 25, scope: !1847, inlinedAt: !2020)
!2032 = !DILocation(line: 1543, column: 3, scope: !1847, inlinedAt: !2020)
!2033 = !DILocation(line: 1545, column: 21, scope: !1833, inlinedAt: !2020)
!2034 = !DILocation(line: 1545, column: 27, scope: !1833, inlinedAt: !2020)
!2035 = !DILocation(line: 1546, column: 30, scope: !1833, inlinedAt: !2020)
!2036 = !DILocation(line: 1547, column: 21, scope: !1833, inlinedAt: !2020)
!2037 = !DILocation(line: 1547, column: 27, scope: !1833, inlinedAt: !2020)
!2038 = !DILocation(line: 1548, column: 29, scope: !1833, inlinedAt: !2020)
!2039 = !DILocation(line: 1548, column: 44, scope: !1833, inlinedAt: !2020)
!2040 = !DILocation(line: 1549, column: 3, scope: !1857, inlinedAt: !2020)
!2041 = !DILocation(line: 1550, column: 1, scope: !1833, inlinedAt: !2020)
!2042 = !DILocation(line: 1498, column: 5, scope: !2021)
!2043 = !DILocation(line: 1505, column: 28, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2045, file: !3, line: 1505, column: 9)
!2045 = distinct !DILexicalBlock(scope: !2046, file: !3, line: 1504, column: 48)
!2046 = distinct !DILexicalBlock(scope: !2017, file: !3, line: 1504, column: 3)
!2047 = !DILocation(line: 1505, column: 34, scope: !2044)
!2048 = !DILocation(line: 1505, column: 53, scope: !2044)
!2049 = !DILocation(line: 1506, column: 29, scope: !2044)
!2050 = !DILocation(line: 1506, column: 11, scope: !2044)
!2051 = !DILocation(line: 1505, column: 9, scope: !2045)
!2052 = !DILocation(line: 1507, column: 37, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2054, file: !3, line: 1507, column: 11)
!2054 = distinct !DILexicalBlock(scope: !2044, file: !3, line: 1506, column: 40)
!2055 = !DILocation(line: 1507, column: 49, scope: !2053)
!2056 = !DILocation(line: 1507, column: 11, scope: !2054)
!2057 = !DILocation(line: 1510, column: 7, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2053, file: !3, line: 1507, column: 58)
!2059 = !DILocation(line: 1504, column: 44, scope: !2046)
!2060 = !DILocation(line: 1504, column: 3, scope: !2046)
!2061 = !DILocation(line: 1504, column: 17, scope: !2046)
!2062 = distinct !{!2062, !2018, !2063}
!2063 = !DILocation(line: 1512, column: 3, scope: !2017)
!2064 = !DILocation(line: 1513, column: 9, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !1805, file: !3, line: 1513, column: 7)
!2066 = !DILocation(line: 1513, column: 7, scope: !1805)
!2067 = !DILocation(line: 1529, column: 36, scope: !1833, inlinedAt: !2068)
!2068 = distinct !DILocation(line: 1514, column: 5, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2065, file: !3, line: 1513, column: 15)
!2070 = !DILocation(line: 1531, column: 21, scope: !1839, inlinedAt: !2068)
!2071 = !DILocation(line: 1531, column: 7, scope: !1833, inlinedAt: !2068)
!2072 = !DILocation(line: 1534, column: 7, scope: !1970, inlinedAt: !2068)
!2073 = !DILocation(line: 1534, column: 25, scope: !1970, inlinedAt: !2068)
!2074 = !DILocation(line: 1534, column: 7, scope: !1833, inlinedAt: !2068)
!2075 = !DILocation(line: 1540, column: 25, scope: !1843, inlinedAt: !2068)
!2076 = !DILocation(line: 1540, column: 27, scope: !1843, inlinedAt: !2068)
!2077 = !DILocation(line: 1540, column: 7, scope: !1833, inlinedAt: !2068)
!2078 = !DILocation(line: 1541, column: 5, scope: !1847, inlinedAt: !2068)
!2079 = !DILocation(line: 1542, column: 25, scope: !1847, inlinedAt: !2068)
!2080 = !DILocation(line: 1543, column: 3, scope: !1847, inlinedAt: !2068)
!2081 = !DILocation(line: 1545, column: 21, scope: !1833, inlinedAt: !2068)
!2082 = !DILocation(line: 1545, column: 27, scope: !1833, inlinedAt: !2068)
!2083 = !DILocation(line: 1546, column: 30, scope: !1833, inlinedAt: !2068)
!2084 = !DILocation(line: 1547, column: 21, scope: !1833, inlinedAt: !2068)
!2085 = !DILocation(line: 1547, column: 27, scope: !1833, inlinedAt: !2068)
!2086 = !DILocation(line: 1548, column: 29, scope: !1833, inlinedAt: !2068)
!2087 = !DILocation(line: 1548, column: 44, scope: !1833, inlinedAt: !2068)
!2088 = !DILocation(line: 1549, column: 3, scope: !1857, inlinedAt: !2068)
!2089 = !DILocation(line: 1550, column: 1, scope: !1833, inlinedAt: !2068)
!2090 = !DILocation(line: 1515, column: 5, scope: !2069)
!2091 = !DILocation(line: 0, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !1817, file: !3, line: 1431, column: 50)
!2093 = !DILocation(line: 1520, column: 1, scope: !1805)
!2094 = !DILocation(line: 1468, column: 8, scope: !1936)
!2095 = !DILocation(line: 1457, column: 8, scope: !1902)
!2096 = !DILocation(line: 1448, column: 8, scope: !1868)
!2097 = !DILocation(line: 1439, column: 8, scope: !1827)
!2098 = distinct !DISubprogram(name: "nd6_send_rs", scope: !3, file: !3, line: 1329, type: !2099, isLocal: true, isDefinition: true, scopeLine: 1330, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2101)
!2099 = !DISubroutineType(types: !2100)
!2100 = !{!306, !274}
!2101 = !{!2102, !2103, !2104, !2105, !2106, !2107, !2108}
!2102 = !DILocalVariable(name: "netif", arg: 1, scope: !2098, file: !3, line: 1329, type: !274)
!2103 = !DILocalVariable(name: "rs_hdr", scope: !2098, file: !3, line: 1331, type: !235)
!2104 = !DILocalVariable(name: "lladdr_opt", scope: !2098, file: !3, line: 1332, type: !170)
!2105 = !DILocalVariable(name: "p", scope: !2098, file: !3, line: 1333, type: !253)
!2106 = !DILocalVariable(name: "src_addr", scope: !2098, file: !3, line: 1334, type: !162)
!2107 = !DILocalVariable(name: "err", scope: !2098, file: !3, line: 1335, type: !306)
!2108 = !DILocalVariable(name: "lladdr_opt_len", scope: !2098, file: !3, line: 1336, type: !131)
!2109 = !DILocation(line: 1329, column: 27, scope: !2098)
!2110 = !DILocation(line: 1336, column: 9, scope: !2098)
!2111 = !DILocation(line: 1339, column: 7, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2098, file: !3, line: 1339, column: 7)
!2113 = !DILocation(line: 1339, column: 7, scope: !2098)
!2114 = !DILocation(line: 1340, column: 16, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2112, file: !3, line: 1339, column: 57)
!2116 = !DILocation(line: 1334, column: 21, scope: !2098)
!2117 = !DILocation(line: 1346, column: 3, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2098, file: !3, line: 1346, column: 3)
!2119 = !DILocation(line: 1347, column: 3, scope: !2098)
!2120 = !DILocation(line: 1350, column: 16, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2098, file: !3, line: 1350, column: 7)
!2122 = !DILocation(line: 1350, column: 7, scope: !2098)
!2123 = !DILocation(line: 1351, column: 31, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2121, file: !3, line: 1350, column: 34)
!2125 = !DILocation(line: 1351, column: 24, scope: !2124)
!2126 = !DILocation(line: 1351, column: 42, scope: !2124)
!2127 = !DILocation(line: 1351, column: 47, scope: !2124)
!2128 = !DILocation(line: 1351, column: 81, scope: !2124)
!2129 = !DILocation(line: 1351, column: 56, scope: !2124)
!2130 = !DILocation(line: 1351, column: 53, scope: !2124)
!2131 = !DILocation(line: 1352, column: 3, scope: !2124)
!2132 = !DILocation(line: 0, scope: !2098)
!2133 = !DILocation(line: 1353, column: 70, scope: !2098)
!2134 = !DILocation(line: 1353, column: 52, scope: !2098)
!2135 = !DILocation(line: 1353, column: 7, scope: !2098)
!2136 = !DILocation(line: 1333, column: 16, scope: !2098)
!2137 = !DILocation(line: 1354, column: 9, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2098, file: !3, line: 1354, column: 7)
!2139 = !DILocation(line: 1354, column: 7, scope: !2098)
!2140 = !DILocation(line: 1355, column: 5, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2138, file: !3, line: 1354, column: 18)
!2142 = !DILocation(line: 1356, column: 5, scope: !2141)
!2143 = !DILocation(line: 1360, column: 35, scope: !2098)
!2144 = !DILocation(line: 1331, column: 21, scope: !2098)
!2145 = !DILocation(line: 1362, column: 11, scope: !2098)
!2146 = !DILocation(line: 1362, column: 16, scope: !2098)
!2147 = !{!2148, !520, i64 0}
!2148 = !{!"rs_header", !520, i64 0, !520, i64 1, !519, i64 2, !549, i64 4}
!2149 = !DILocation(line: 1363, column: 11, scope: !2098)
!2150 = !DILocation(line: 1363, column: 16, scope: !2098)
!2151 = !{!2148, !520, i64 1}
!2152 = !DILocation(line: 1364, column: 11, scope: !2098)
!2153 = !DILocation(line: 1364, column: 18, scope: !2098)
!2154 = !{!2148, !519, i64 2}
!2155 = !DILocation(line: 1365, column: 11, scope: !2098)
!2156 = !DILocation(line: 1365, column: 20, scope: !2098)
!2157 = !{!2148, !549, i64 4}
!2158 = !DILocation(line: 1367, column: 7, scope: !2098)
!2159 = !DILocation(line: 1369, column: 61, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2161, file: !3, line: 1367, column: 34)
!2161 = distinct !DILexicalBlock(scope: !2098, file: !3, line: 1367, column: 7)
!2162 = !DILocation(line: 1332, column: 25, scope: !2098)
!2163 = !DILocation(line: 1370, column: 22, scope: !2160)
!2164 = !DILocation(line: 1371, column: 26, scope: !2160)
!2165 = !DILocation(line: 1371, column: 17, scope: !2160)
!2166 = !DILocation(line: 1371, column: 24, scope: !2160)
!2167 = !DILocation(line: 1372, column: 5, scope: !2160)
!2168 = !DILocation(line: 1373, column: 3, scope: !2160)
!2169 = !DILocation(line: 1376, column: 3, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2098, file: !3, line: 1376, column: 3)
!2171 = !DILocation(line: 1376, column: 3, scope: !2098)
!2172 = !DILocation(line: 1377, column: 63, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2170, file: !3, line: 1376, column: 63)
!2174 = !DILocation(line: 1377, column: 22, scope: !2173)
!2175 = !DILocation(line: 1377, column: 20, scope: !2173)
!2176 = !DILocation(line: 1379, column: 3, scope: !2173)
!2177 = !DILocation(line: 1383, column: 3, scope: !2098)
!2178 = !DILocation(line: 1385, column: 36, scope: !2098)
!2179 = !DILocation(line: 1385, column: 26, scope: !2098)
!2180 = !DILocation(line: 1385, column: 9, scope: !2098)
!2181 = !DILocation(line: 1335, column: 9, scope: !2098)
!2182 = !DILocation(line: 1387, column: 3, scope: !2098)
!2183 = !DILocation(line: 1389, column: 3, scope: !2098)
!2184 = !DILocation(line: 0, scope: !2141)
!2185 = !DILocation(line: 1390, column: 1, scope: !2098)
!2186 = distinct !DISubprogram(name: "nd6_tmr", scope: !3, file: !3, line: 959, type: !2187, isLocal: false, isDefinition: true, scopeLine: 960, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2189)
!2187 = !DISubroutineType(types: !2188)
!2188 = !{null}
!2189 = !{!2190, !2191, !2192, !2200, !2207}
!2190 = !DILocalVariable(name: "i", scope: !2186, file: !3, line: 961, type: !307)
!2191 = !DILocalVariable(name: "netif", scope: !2186, file: !3, line: 962, type: !274)
!2192 = !DILocalVariable(name: "j", scope: !2193, file: !3, line: 1033, type: !307)
!2193 = distinct !DILexicalBlock(scope: !2194, file: !3, line: 1030, column: 81)
!2194 = distinct !DILexicalBlock(scope: !2195, file: !3, line: 1030, column: 11)
!2195 = distinct !DILexicalBlock(scope: !2196, file: !3, line: 1028, column: 56)
!2196 = distinct !DILexicalBlock(scope: !2197, file: !3, line: 1028, column: 9)
!2197 = distinct !DILexicalBlock(scope: !2198, file: !3, line: 1027, column: 46)
!2198 = distinct !DILexicalBlock(scope: !2199, file: !3, line: 1027, column: 3)
!2199 = distinct !DILexicalBlock(scope: !2186, file: !3, line: 1027, column: 3)
!2200 = !DILocalVariable(name: "addr_state", scope: !2201, file: !3, line: 1066, type: !117)
!2201 = distinct !DILexicalBlock(scope: !2202, file: !3, line: 1065, column: 51)
!2202 = distinct !DILexicalBlock(scope: !2203, file: !3, line: 1065, column: 5)
!2203 = distinct !DILexicalBlock(scope: !2204, file: !3, line: 1065, column: 5)
!2204 = distinct !DILexicalBlock(scope: !2205, file: !3, line: 1064, column: 24)
!2205 = distinct !DILexicalBlock(scope: !2206, file: !3, line: 1064, column: 3)
!2206 = distinct !DILexicalBlock(scope: !2186, file: !3, line: 1064, column: 3)
!2207 = !DILocalVariable(name: "life", scope: !2208, file: !3, line: 1085, type: !147)
!2208 = distinct !DILexicalBlock(scope: !2209, file: !3, line: 1084, column: 47)
!2209 = distinct !DILexicalBlock(scope: !2201, file: !3, line: 1083, column: 11)
!2210 = !DILocation(line: 961, column: 8, scope: !2186)
!2211 = !DILocation(line: 965, column: 8, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2186, file: !3, line: 965, column: 3)
!2213 = !DILocation(line: 965, column: 3, scope: !2212)
!2214 = !DILocation(line: 966, column: 13, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2216, file: !3, line: 965, column: 48)
!2216 = distinct !DILexicalBlock(scope: !2212, file: !3, line: 965, column: 3)
!2217 = !DILocation(line: 966, column: 31, scope: !2215)
!2218 = !DILocation(line: 966, column: 5, scope: !2215)
!2219 = !DILocation(line: 968, column: 38, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2221, file: !3, line: 968, column: 11)
!2221 = distinct !DILexicalBlock(scope: !2215, file: !3, line: 966, column: 38)
!2222 = !DILocation(line: 968, column: 50, scope: !2220)
!2223 = !DILocation(line: 968, column: 85, scope: !2220)
!2224 = !DILocation(line: 969, column: 31, scope: !2220)
!2225 = !DILocation(line: 969, column: 13, scope: !2220)
!2226 = !DILocation(line: 968, column: 11, scope: !2221)
!2227 = !DILocation(line: 1529, column: 36, scope: !1833, inlinedAt: !2228)
!2228 = distinct !DILocation(line: 971, column: 9, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2220, file: !3, line: 969, column: 42)
!2230 = !DILocation(line: 1531, column: 15, scope: !1839, inlinedAt: !2228)
!2231 = !DILocation(line: 1531, column: 7, scope: !1833, inlinedAt: !2228)
!2232 = !DILocation(line: 1534, column: 7, scope: !1833, inlinedAt: !2228)
!2233 = !DILocation(line: 1540, column: 25, scope: !1843, inlinedAt: !2228)
!2234 = !DILocation(line: 1540, column: 27, scope: !1843, inlinedAt: !2228)
!2235 = !DILocation(line: 1540, column: 7, scope: !1833, inlinedAt: !2228)
!2236 = !DILocation(line: 1541, column: 5, scope: !1847, inlinedAt: !2228)
!2237 = !DILocation(line: 1542, column: 25, scope: !1847, inlinedAt: !2228)
!2238 = !DILocation(line: 1543, column: 3, scope: !1847, inlinedAt: !2228)
!2239 = !DILocation(line: 1545, column: 27, scope: !1833, inlinedAt: !2228)
!2240 = !DILocation(line: 1546, column: 30, scope: !1833, inlinedAt: !2228)
!2241 = !DILocation(line: 1547, column: 21, scope: !1833, inlinedAt: !2228)
!2242 = !DILocation(line: 1547, column: 27, scope: !1833, inlinedAt: !2228)
!2243 = !DILocation(line: 1548, column: 44, scope: !1833, inlinedAt: !2228)
!2244 = !DILocation(line: 1549, column: 3, scope: !1857, inlinedAt: !2228)
!2245 = !DILocation(line: 1550, column: 1, scope: !1833, inlinedAt: !2228)
!2246 = !DILocation(line: 972, column: 7, scope: !2229)
!2247 = !DILocation(line: 974, column: 46, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2220, file: !3, line: 972, column: 14)
!2249 = !DILocation(line: 1168, column: 64, scope: !989, inlinedAt: !2250)
!2250 = distinct !DILocation(line: 975, column: 9, scope: !2248)
!2251 = !DILocation(line: 1168, column: 76, scope: !989, inlinedAt: !2250)
!2252 = !DILocation(line: 1170, column: 22, scope: !989, inlinedAt: !2250)
!2253 = !DILocation(line: 1170, column: 37, scope: !989, inlinedAt: !2250)
!2254 = !DILocation(line: 1170, column: 3, scope: !989, inlinedAt: !2250)
!2255 = !DILocation(line: 1171, column: 1, scope: !989, inlinedAt: !2250)
!2256 = !DILocation(line: 980, column: 29, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2221, file: !3, line: 980, column: 11)
!2258 = !DILocation(line: 980, column: 31, scope: !2257)
!2259 = !DILocation(line: 980, column: 11, scope: !2221)
!2260 = !DILocation(line: 981, column: 9, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2257, file: !3, line: 980, column: 40)
!2262 = !DILocation(line: 982, column: 7, scope: !2261)
!2263 = !DILocation(line: 983, column: 37, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2221, file: !3, line: 983, column: 11)
!2265 = !DILocation(line: 983, column: 52, scope: !2264)
!2266 = !DILocation(line: 983, column: 11, scope: !2221)
!2267 = !DILocation(line: 985, column: 33, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2264, file: !3, line: 983, column: 73)
!2269 = !DILocation(line: 986, column: 46, scope: !2268)
!2270 = !DILocation(line: 987, column: 7, scope: !2268)
!2271 = !DILocation(line: 988, column: 50, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2264, file: !3, line: 987, column: 14)
!2273 = !DILocation(line: 992, column: 33, scope: !2221)
!2274 = !DILocation(line: 992, column: 43, scope: !2221)
!2275 = !DILocation(line: 993, column: 7, scope: !2221)
!2276 = !DILocation(line: 995, column: 37, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2221, file: !3, line: 995, column: 11)
!2278 = !DILocation(line: 995, column: 48, scope: !2277)
!2279 = !DILocation(line: 995, column: 11, scope: !2221)
!2280 = !DILocation(line: 997, column: 33, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2277, file: !3, line: 995, column: 54)
!2282 = !DILocation(line: 998, column: 47, scope: !2281)
!2283 = !DILocation(line: 999, column: 7, scope: !2281)
!2284 = !DILocation(line: 1000, column: 45, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2277, file: !3, line: 999, column: 14)
!2286 = !DILocation(line: 1004, column: 38, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2221, file: !3, line: 1004, column: 11)
!2288 = !DILocation(line: 1004, column: 50, scope: !2287)
!2289 = !DILocation(line: 1004, column: 85, scope: !2287)
!2290 = !DILocation(line: 1005, column: 31, scope: !2287)
!2291 = !DILocation(line: 1005, column: 13, scope: !2287)
!2292 = !DILocation(line: 1004, column: 11, scope: !2221)
!2293 = !DILocation(line: 1529, column: 36, scope: !1833, inlinedAt: !2294)
!2294 = distinct !DILocation(line: 1007, column: 9, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2287, file: !3, line: 1005, column: 42)
!2296 = !DILocation(line: 1531, column: 15, scope: !1839, inlinedAt: !2294)
!2297 = !DILocation(line: 1531, column: 7, scope: !1833, inlinedAt: !2294)
!2298 = !DILocation(line: 1534, column: 7, scope: !1833, inlinedAt: !2294)
!2299 = !DILocation(line: 1540, column: 25, scope: !1843, inlinedAt: !2294)
!2300 = !DILocation(line: 1540, column: 27, scope: !1843, inlinedAt: !2294)
!2301 = !DILocation(line: 1540, column: 7, scope: !1833, inlinedAt: !2294)
!2302 = !DILocation(line: 1541, column: 5, scope: !1847, inlinedAt: !2294)
!2303 = !DILocation(line: 1542, column: 25, scope: !1847, inlinedAt: !2294)
!2304 = !DILocation(line: 1543, column: 3, scope: !1847, inlinedAt: !2294)
!2305 = !DILocation(line: 1545, column: 27, scope: !1833, inlinedAt: !2294)
!2306 = !DILocation(line: 1546, column: 30, scope: !1833, inlinedAt: !2294)
!2307 = !DILocation(line: 1547, column: 21, scope: !1833, inlinedAt: !2294)
!2308 = !DILocation(line: 1547, column: 27, scope: !1833, inlinedAt: !2294)
!2309 = !DILocation(line: 1548, column: 44, scope: !1833, inlinedAt: !2294)
!2310 = !DILocation(line: 1549, column: 3, scope: !1857, inlinedAt: !2294)
!2311 = !DILocation(line: 1550, column: 1, scope: !1833, inlinedAt: !2294)
!2312 = !DILocation(line: 1008, column: 7, scope: !2295)
!2313 = !DILocation(line: 1010, column: 46, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2287, file: !3, line: 1008, column: 14)
!2315 = !DILocation(line: 1168, column: 64, scope: !989, inlinedAt: !2316)
!2316 = distinct !DILocation(line: 1011, column: 9, scope: !2314)
!2317 = !DILocation(line: 1168, column: 76, scope: !989, inlinedAt: !2316)
!2318 = !DILocation(line: 1170, column: 22, scope: !989, inlinedAt: !2316)
!2319 = !DILocation(line: 1170, column: 37, scope: !989, inlinedAt: !2316)
!2320 = !DILocation(line: 1170, column: 3, scope: !989, inlinedAt: !2316)
!2321 = !DILocation(line: 1171, column: 1, scope: !989, inlinedAt: !2316)
!2322 = !DILocation(line: 965, column: 44, scope: !2216)
!2323 = !DILocation(line: 965, column: 3, scope: !2216)
!2324 = !DILocation(line: 965, column: 17, scope: !2216)
!2325 = distinct !{!2325, !2213, !2326}
!2326 = !DILocation(line: 1019, column: 3, scope: !2212)
!2327 = !DILocation(line: 1022, column: 8, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2186, file: !3, line: 1022, column: 3)
!2329 = !DILocation(line: 1022, column: 3, scope: !2328)
!2330 = !DILocation(line: 1023, column: 29, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2332, file: !3, line: 1022, column: 51)
!2332 = distinct !DILexicalBlock(scope: !2328, file: !3, line: 1022, column: 3)
!2333 = !{!1479, !549, i64 44}
!2334 = !DILocation(line: 1022, column: 3, scope: !2332)
!2335 = !DILocation(line: 1027, column: 8, scope: !2199)
!2336 = !DILocation(line: 1027, column: 3, scope: !2199)
!2337 = !DILocation(line: 1028, column: 32, scope: !2196)
!2338 = !DILocation(line: 1028, column: 47, scope: !2196)
!2339 = !DILocation(line: 1028, column: 9, scope: !2197)
!2340 = !DILocation(line: 1030, column: 34, scope: !2194)
!2341 = !DILocation(line: 1030, column: 53, scope: !2194)
!2342 = !DILocation(line: 1030, column: 11, scope: !2195)
!2343 = !DILocation(line: 1033, column: 14, scope: !2193)
!2344 = !DILocation(line: 1034, column: 14, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2193, file: !3, line: 1034, column: 9)
!2346 = !DILocation(line: 1034, column: 9, scope: !2345)
!2347 = !DILocation(line: 1035, column: 15, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2349, file: !3, line: 1035, column: 15)
!2349 = distinct !DILexicalBlock(scope: !2350, file: !3, line: 1034, column: 57)
!2350 = distinct !DILexicalBlock(scope: !2345, file: !3, line: 1034, column: 9)
!2351 = !DILocation(line: 1035, column: 15, scope: !2349)
!2352 = !DILocation(line: 1037, column: 14, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2354, file: !3, line: 1037, column: 14)
!2354 = distinct !DILexicalBlock(scope: !2348, file: !3, line: 1036, column: 75)
!2355 = !DILocation(line: 1038, column: 11, scope: !2354)
!2356 = !DILocation(line: 1034, column: 53, scope: !2350)
!2357 = !DILocation(line: 1034, column: 9, scope: !2350)
!2358 = !DILocation(line: 1034, column: 23, scope: !2350)
!2359 = distinct !{!2359, !2346, !2360}
!2360 = !DILocation(line: 1039, column: 9, scope: !2345)
!2361 = !DILocation(line: 1040, column: 48, scope: !2193)
!2362 = !DILocation(line: 1040, column: 57, scope: !2193)
!2363 = !DILocation(line: 1041, column: 47, scope: !2193)
!2364 = !DILocation(line: 1042, column: 51, scope: !2193)
!2365 = !DILocation(line: 1043, column: 32, scope: !2193)
!2366 = !DILocation(line: 1043, column: 38, scope: !2193)
!2367 = !DILocation(line: 1044, column: 7, scope: !2193)
!2368 = !DILocation(line: 1045, column: 51, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2194, file: !3, line: 1044, column: 14)
!2370 = !DILocation(line: 1027, column: 42, scope: !2198)
!2371 = !DILocation(line: 1027, column: 3, scope: !2198)
!2372 = !DILocation(line: 1027, column: 17, scope: !2198)
!2373 = distinct !{!2373, !2336, !2374}
!2374 = !DILocation(line: 1048, column: 3, scope: !2199)
!2375 = !DILocation(line: 1051, column: 8, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2186, file: !3, line: 1051, column: 3)
!2377 = !DILocation(line: 1051, column: 3, scope: !2376)
!2378 = !DILocation(line: 1052, column: 24, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2380, file: !3, line: 1052, column: 9)
!2380 = distinct !DILexicalBlock(scope: !2381, file: !3, line: 1051, column: 47)
!2381 = distinct !DILexicalBlock(scope: !2376, file: !3, line: 1051, column: 3)
!2382 = !DILocation(line: 1052, column: 30, scope: !2379)
!2383 = !DILocation(line: 1052, column: 9, scope: !2380)
!2384 = !DILocation(line: 1053, column: 26, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2386, file: !3, line: 1053, column: 11)
!2386 = distinct !DILexicalBlock(scope: !2379, file: !3, line: 1052, column: 39)
!2387 = !DILocation(line: 1053, column: 45, scope: !2385)
!2388 = !DILocation(line: 1053, column: 11, scope: !2386)
!2389 = !DILocation(line: 1055, column: 43, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2385, file: !3, line: 1053, column: 73)
!2391 = !DILocation(line: 1056, column: 30, scope: !2390)
!2392 = !DILocation(line: 1057, column: 7, scope: !2390)
!2393 = !DILocation(line: 1058, column: 43, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2385, file: !3, line: 1057, column: 14)
!2395 = !DILocation(line: 1051, column: 3, scope: !2381)
!2396 = !DILocation(line: 962, column: 17, scope: !2186)
!2397 = !DILocation(line: 1065, column: 10, scope: !2203)
!2398 = !DILocation(line: 1065, column: 5, scope: !2203)
!2399 = !DILocation(line: 1069, column: 20, scope: !2201)
!2400 = !DILocation(line: 1066, column: 12, scope: !2201)
!2401 = !DILocation(line: 1083, column: 12, scope: !2209)
!2402 = !DILocation(line: 1083, column: 43, scope: !2209)
!2403 = !DILocation(line: 1084, column: 12, scope: !2209)
!2404 = !DILocation(line: 1083, column: 11, scope: !2201)
!2405 = !DILocation(line: 1085, column: 22, scope: !2208)
!2406 = !DILocation(line: 1085, column: 15, scope: !2208)
!2407 = !DILocation(line: 1086, column: 18, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2208, file: !3, line: 1086, column: 13)
!2409 = !DILocation(line: 1086, column: 13, scope: !2208)
!2410 = !DILocation(line: 1088, column: 11, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2412, file: !3, line: 1088, column: 11)
!2412 = distinct !DILexicalBlock(scope: !2408, file: !3, line: 1086, column: 46)
!2413 = !DILocation(line: 1088, column: 11, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2415, file: !3, line: 1088, column: 11)
!2415 = distinct !DILexicalBlock(scope: !2411, file: !3, line: 1088, column: 11)
!2416 = !DILocation(line: 1089, column: 11, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2412, file: !3, line: 1089, column: 11)
!2418 = !DILocation(line: 1089, column: 11, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2420, file: !3, line: 1089, column: 11)
!2420 = distinct !DILexicalBlock(scope: !2417, file: !3, line: 1089, column: 11)
!2421 = !DILocation(line: 1090, column: 11, scope: !2412)
!2422 = !DILocation(line: 1091, column: 9, scope: !2412)
!2423 = !DILocation(line: 1092, column: 16, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2425, file: !3, line: 1092, column: 15)
!2425 = distinct !DILexicalBlock(scope: !2408, file: !3, line: 1091, column: 16)
!2426 = !DILocation(line: 1092, column: 15, scope: !2425)
!2427 = !DILocation(line: 1093, column: 18, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2424, file: !3, line: 1092, column: 48)
!2429 = !DILocation(line: 1094, column: 13, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2428, file: !3, line: 1094, column: 13)
!2431 = !DILocation(line: 1095, column: 13, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2428, file: !3, line: 1095, column: 13)
!2433 = !DILocation(line: 1095, column: 13, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2435, file: !3, line: 1095, column: 13)
!2435 = distinct !DILexicalBlock(scope: !2432, file: !3, line: 1095, column: 13)
!2436 = !DILocation(line: 1098, column: 18, scope: !2425)
!2437 = !DILocation(line: 1099, column: 20, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2425, file: !3, line: 1099, column: 15)
!2439 = !DILocation(line: 1099, column: 15, scope: !2425)
!2440 = !DILocation(line: 1102, column: 13, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2442, file: !3, line: 1102, column: 13)
!2442 = distinct !DILexicalBlock(scope: !2438, file: !3, line: 1099, column: 48)
!2443 = !DILocation(line: 1102, column: 13, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2445, file: !3, line: 1102, column: 13)
!2445 = distinct !DILexicalBlock(scope: !2441, file: !3, line: 1102, column: 13)
!2446 = !DILocation(line: 1103, column: 28, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !2442, file: !3, line: 1103, column: 17)
!2448 = !DILocation(line: 1103, column: 17, scope: !2442)
!2449 = !DILocation(line: 1104, column: 15, scope: !2447)
!2450 = !DILocation(line: 1105, column: 23, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2438, file: !3, line: 1105, column: 22)
!2452 = !DILocation(line: 1105, column: 22, scope: !2438)
!2453 = !DILocation(line: 1107, column: 13, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2455, file: !3, line: 1107, column: 13)
!2455 = distinct !DILexicalBlock(scope: !2451, file: !3, line: 1105, column: 55)
!2456 = !DILocation(line: 1106, column: 18, scope: !2455)
!2457 = !DILocation(line: 1107, column: 13, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2459, file: !3, line: 1107, column: 13)
!2459 = distinct !DILexicalBlock(scope: !2454, file: !3, line: 1107, column: 13)
!2460 = !DILocation(line: 1110, column: 7, scope: !2208)
!2461 = !DILocation(line: 1114, column: 20, scope: !2201)
!2462 = !DILocation(line: 1115, column: 11, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2201, file: !3, line: 1115, column: 11)
!2464 = !DILocation(line: 1115, column: 11, scope: !2201)
!2465 = !DILocation(line: 1116, column: 25, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2467, file: !3, line: 1116, column: 13)
!2467 = distinct !DILexicalBlock(scope: !2463, file: !3, line: 1115, column: 45)
!2468 = !DILocation(line: 1116, column: 58, scope: !2466)
!2469 = !DILocation(line: 1116, column: 13, scope: !2467)
!2470 = !DILocation(line: 1122, column: 16, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2472, file: !3, line: 1122, column: 15)
!2472 = distinct !DILexicalBlock(scope: !2466, file: !3, line: 1116, column: 92)
!2473 = !DILocation(line: 1122, column: 50, scope: !2471)
!2474 = !DILocation(line: 1123, column: 15, scope: !2471)
!2475 = !DILocation(line: 1123, column: 50, scope: !2471)
!2476 = !DILocation(line: 1122, column: 15, scope: !2472)
!2477 = !DILocation(line: 1125, column: 11, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2471, file: !3, line: 1123, column: 56)
!2479 = !DILocation(line: 0, scope: !2472)
!2480 = !DILocation(line: 1127, column: 11, scope: !2472)
!2481 = !DILocation(line: 1128, column: 9, scope: !2472)
!2482 = !DILocation(line: 1128, column: 20, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2466, file: !3, line: 1128, column: 20)
!2484 = !{!552, !520, i64 261}
!2485 = !DILocation(line: 1128, column: 39, scope: !2483)
!2486 = !DILocation(line: 1128, column: 42, scope: !2483)
!2487 = !DILocation(line: 1128, column: 20, scope: !2466)
!2488 = !DILocation(line: 1130, column: 57, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2483, file: !3, line: 1128, column: 67)
!2490 = !DILocation(line: 1130, column: 11, scope: !2489)
!2491 = !DILocation(line: 1134, column: 30, scope: !2489)
!2492 = !DILocation(line: 1134, column: 11, scope: !2489)
!2493 = !DILocation(line: 1136, column: 9, scope: !2489)
!2494 = !DILocation(line: 1065, column: 46, scope: !2202)
!2495 = !DILocation(line: 1065, column: 5, scope: !2202)
!2496 = !DILocation(line: 1065, column: 19, scope: !2202)
!2497 = distinct !{!2497, !2398, !2498}
!2498 = !DILocation(line: 1138, column: 5, scope: !2203)
!2499 = !DILocation(line: 1064, column: 3, scope: !2205)
!2500 = !{!552, !528, i64 0}
!2501 = !DILocation(line: 1064, column: 3, scope: !2206)
!2502 = distinct !{!2502, !2501, !2503}
!2503 = !DILocation(line: 1139, column: 3, scope: !2206)
!2504 = !DILocation(line: 1143, column: 8, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2186, file: !3, line: 1143, column: 7)
!2506 = !DILocation(line: 1143, column: 7, scope: !2186)
!2507 = !DILocation(line: 1144, column: 26, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2505, file: !3, line: 1143, column: 30)
!2509 = !DILocation(line: 1145, column: 5, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2508, file: !3, line: 1145, column: 5)
!2511 = !{!528, !528, i64 0}
!2512 = !DILocation(line: 1145, column: 5, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2510, file: !3, line: 1145, column: 5)
!2514 = !DILocation(line: 1146, column: 19, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2516, file: !3, line: 1146, column: 11)
!2516 = distinct !DILexicalBlock(scope: !2513, file: !3, line: 1145, column: 26)
!2517 = !DILocation(line: 1146, column: 28, scope: !2515)
!2518 = !DILocation(line: 1146, column: 33, scope: !2515)
!2519 = !DILocation(line: 1146, column: 36, scope: !2515)
!2520 = !DILocation(line: 1146, column: 55, scope: !2515)
!2521 = !DILocation(line: 1147, column: 11, scope: !2515)
!2522 = !DILocation(line: 1147, column: 35, scope: !2515)
!2523 = !DILocation(line: 1148, column: 12, scope: !2515)
!2524 = !DILocation(line: 1148, column: 63, scope: !2515)
!2525 = !DILocation(line: 1149, column: 12, scope: !2515)
!2526 = !DILocation(line: 1146, column: 11, scope: !2516)
!2527 = !DILocation(line: 1150, column: 13, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2529, file: !3, line: 1150, column: 13)
!2529 = distinct !DILexicalBlock(scope: !2515, file: !3, line: 1149, column: 67)
!2530 = !DILocation(line: 1150, column: 32, scope: !2528)
!2531 = !DILocation(line: 1150, column: 13, scope: !2529)
!2532 = !DILocation(line: 1151, column: 26, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2528, file: !3, line: 1150, column: 43)
!2534 = !DILocation(line: 1152, column: 9, scope: !2533)
!2535 = distinct !{!2535, !2509, !2536}
!2536 = !DILocation(line: 1154, column: 5, scope: !2510)
!2537 = !DILocation(line: 1156, column: 25, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2505, file: !3, line: 1155, column: 10)
!2539 = !DILocation(line: 1160, column: 1, scope: !2186)
!2540 = !DILocation(line: 194, column: 43, scope: !416)
!2541 = !DILocation(line: 196, column: 2, scope: !416)
!2542 = !DILocation(line: 196, column: 10, scope: !416)
!2543 = !DILocation(line: 197, column: 2, scope: !416)
!2544 = !DILocation(line: 198, column: 2, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2546, file: !417, line: 198, column: 2)
!2546 = distinct !DILexicalBlock(scope: !416, file: !417, line: 198, column: 2)
!2547 = !DILocation(line: 199, column: 2, scope: !416)
!2548 = !DILocation(line: 200, column: 1, scope: !416)
!2549 = distinct !DISubprogram(name: "nd6_send_ns", scope: !3, file: !3, line: 1181, type: !1698, isLocal: true, isDefinition: true, scopeLine: 1182, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2550)
!2550 = !{!2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558}
!2551 = !DILocalVariable(name: "netif", arg: 1, scope: !2549, file: !3, line: 1181, type: !274)
!2552 = !DILocalVariable(name: "target_addr", arg: 2, scope: !2549, file: !3, line: 1181, type: !162)
!2553 = !DILocalVariable(name: "flags", arg: 3, scope: !2549, file: !3, line: 1181, type: !117)
!2554 = !DILocalVariable(name: "ns_hdr", scope: !2549, file: !3, line: 1183, type: !180)
!2555 = !DILocalVariable(name: "p", scope: !2549, file: !3, line: 1184, type: !253)
!2556 = !DILocalVariable(name: "src_addr", scope: !2549, file: !3, line: 1185, type: !162)
!2557 = !DILocalVariable(name: "lladdr_opt_len", scope: !2549, file: !3, line: 1186, type: !131)
!2558 = !DILocalVariable(name: "lladdr_opt", scope: !2559, file: !3, line: 1219, type: !170)
!2559 = distinct !DILexicalBlock(scope: !2560, file: !3, line: 1218, column: 28)
!2560 = distinct !DILexicalBlock(scope: !2549, file: !3, line: 1218, column: 7)
!2561 = !DILocation(line: 1181, column: 27, scope: !2549)
!2562 = !DILocation(line: 1181, column: 52, scope: !2549)
!2563 = !DILocation(line: 1181, column: 70, scope: !2549)
!2564 = !DILocation(line: 1188, column: 3, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2566, file: !3, line: 1188, column: 3)
!2566 = distinct !DILexicalBlock(scope: !2549, file: !3, line: 1188, column: 3)
!2567 = !DILocation(line: 1188, column: 3, scope: !2566)
!2568 = !DILocation(line: 1188, column: 3, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2570, file: !3, line: 1188, column: 3)
!2570 = distinct !DILexicalBlock(scope: !2565, file: !3, line: 1188, column: 3)
!2571 = !DILocation(line: 1188, column: 3, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2573, file: !3, line: 1188, column: 3)
!2573 = distinct !DILexicalBlock(scope: !2574, file: !3, line: 1188, column: 3)
!2574 = distinct !DILexicalBlock(scope: !2569, file: !3, line: 1188, column: 3)
!2575 = !DILocation(line: 1190, column: 9, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2549, file: !3, line: 1190, column: 7)
!2577 = !DILocation(line: 1190, column: 15, scope: !2576)
!2578 = !DILocation(line: 1190, column: 40, scope: !2576)
!2579 = !DILocation(line: 1191, column: 7, scope: !2576)
!2580 = !DILocation(line: 1190, column: 7, scope: !2549)
!2581 = !DILocation(line: 1193, column: 16, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2576, file: !3, line: 1191, column: 56)
!2583 = !DILocation(line: 1185, column: 21, scope: !2549)
!2584 = !DILocation(line: 1195, column: 31, scope: !2582)
!2585 = !DILocation(line: 1195, column: 24, scope: !2582)
!2586 = !DILocation(line: 1195, column: 47, scope: !2582)
!2587 = !DILocation(line: 1195, column: 52, scope: !2582)
!2588 = !DILocation(line: 1186, column: 9, scope: !2549)
!2589 = !DILocation(line: 1196, column: 3, scope: !2582)
!2590 = !DILocation(line: 0, scope: !2582)
!2591 = !DILocation(line: 1203, column: 70, scope: !2549)
!2592 = !DILocation(line: 1203, column: 52, scope: !2549)
!2593 = !DILocation(line: 1203, column: 7, scope: !2549)
!2594 = !DILocation(line: 1184, column: 16, scope: !2549)
!2595 = !DILocation(line: 1204, column: 9, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2549, file: !3, line: 1204, column: 7)
!2597 = !DILocation(line: 1204, column: 7, scope: !2549)
!2598 = !DILocation(line: 1205, column: 5, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2596, file: !3, line: 1204, column: 18)
!2600 = !DILocation(line: 1206, column: 5, scope: !2599)
!2601 = !DILocation(line: 1210, column: 35, scope: !2549)
!2602 = !DILocation(line: 1183, column: 21, scope: !2549)
!2603 = !DILocation(line: 1212, column: 11, scope: !2549)
!2604 = !DILocation(line: 1212, column: 16, scope: !2549)
!2605 = !{!755, !520, i64 0}
!2606 = !DILocation(line: 1213, column: 11, scope: !2549)
!2607 = !DILocation(line: 1213, column: 16, scope: !2549)
!2608 = !DILocation(line: 1214, column: 11, scope: !2549)
!2609 = !DILocation(line: 1214, column: 18, scope: !2549)
!2610 = !{!755, !519, i64 2}
!2611 = !DILocation(line: 1215, column: 11, scope: !2549)
!2612 = !DILocation(line: 1215, column: 20, scope: !2549)
!2613 = !{!755, !549, i64 4}
!2614 = !DILocation(line: 1216, column: 3, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2549, file: !3, line: 1216, column: 3)
!2616 = !DILocation(line: 1218, column: 22, scope: !2560)
!2617 = !DILocation(line: 1218, column: 7, scope: !2549)
!2618 = !DILocation(line: 1219, column: 83, scope: !2559)
!2619 = !DILocation(line: 1219, column: 27, scope: !2559)
!2620 = !DILocation(line: 1220, column: 22, scope: !2559)
!2621 = !DILocation(line: 1221, column: 26, scope: !2559)
!2622 = !DILocation(line: 1221, column: 17, scope: !2559)
!2623 = !DILocation(line: 1221, column: 24, scope: !2559)
!2624 = !DILocation(line: 1222, column: 5, scope: !2559)
!2625 = !DILocation(line: 1223, column: 3, scope: !2559)
!2626 = !DILocation(line: 1226, column: 13, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2549, file: !3, line: 1226, column: 7)
!2628 = !DILocation(line: 1226, column: 7, scope: !2549)
!2629 = !DILocation(line: 1227, column: 5, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2631, file: !3, line: 1227, column: 5)
!2631 = distinct !DILexicalBlock(scope: !2627, file: !3, line: 1226, column: 45)
!2632 = !DILocation(line: 1228, column: 5, scope: !2631)
!2633 = !DILocation(line: 1230, column: 3, scope: !2631)
!2634 = !DILocation(line: 1233, column: 3, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2549, file: !3, line: 1233, column: 3)
!2636 = !DILocation(line: 1233, column: 3, scope: !2549)
!2637 = !DILocation(line: 1234, column: 63, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2635, file: !3, line: 1233, column: 63)
!2639 = !DILocation(line: 1234, column: 22, scope: !2638)
!2640 = !DILocation(line: 1234, column: 20, scope: !2638)
!2641 = !DILocation(line: 1236, column: 3, scope: !2638)
!2642 = !DILocation(line: 1240, column: 3, scope: !2549)
!2643 = !DILocation(line: 1241, column: 30, scope: !2549)
!2644 = !DILocation(line: 1241, column: 20, scope: !2549)
!2645 = !DILocation(line: 1241, column: 3, scope: !2549)
!2646 = !DILocation(line: 1243, column: 3, scope: !2549)
!2647 = !DILocation(line: 1244, column: 1, scope: !2549)
!2648 = !DILocation(line: 0, scope: !2599)
!2649 = distinct !DISubprogram(name: "nd6_clear_destination_cache", scope: !3, file: !3, line: 1613, type: !2187, isLocal: false, isDefinition: true, scopeLine: 1614, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2650)
!2650 = !{!2651}
!2651 = !DILocalVariable(name: "i", scope: !2649, file: !3, line: 1615, type: !22)
!2652 = !DILocation(line: 1615, column: 7, scope: !2649)
!2653 = !DILocation(line: 1617, column: 8, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2649, file: !3, line: 1617, column: 3)
!2655 = !DILocation(line: 1617, column: 3, scope: !2654)
!2656 = !DILocation(line: 1618, column: 5, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2658, file: !3, line: 1618, column: 5)
!2658 = distinct !DILexicalBlock(scope: !2659, file: !3, line: 1617, column: 51)
!2659 = distinct !DILexicalBlock(scope: !2654, file: !3, line: 1617, column: 3)
!2660 = !DILocation(line: 1617, column: 3, scope: !2659)
!2661 = !DILocation(line: 1620, column: 1, scope: !2649)
!2662 = distinct !DISubprogram(name: "nd6_find_route", scope: !3, file: !3, line: 1742, type: !2663, isLocal: false, isDefinition: true, scopeLine: 1743, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2665)
!2663 = !DISubroutineType(types: !2664)
!2664 = !{!274, !162}
!2665 = !{!2666, !2667, !2668}
!2666 = !DILocalVariable(name: "ip6addr", arg: 1, scope: !2662, file: !3, line: 1742, type: !162)
!2667 = !DILocalVariable(name: "netif", scope: !2662, file: !3, line: 1744, type: !274)
!2668 = !DILocalVariable(name: "i", scope: !2662, file: !3, line: 1745, type: !307)
!2669 = !DILocation(line: 1742, column: 34, scope: !2662)
!2670 = !DILocation(line: 1745, column: 8, scope: !2662)
!2671 = !DILocation(line: 1751, column: 8, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2662, file: !3, line: 1751, column: 3)
!2673 = !DILocation(line: 1751, column: 3, scope: !2672)
!2674 = !DILocation(line: 1752, column: 28, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2676, file: !3, line: 1751, column: 47)
!2676 = distinct !DILexicalBlock(scope: !2672, file: !3, line: 1751, column: 3)
!2677 = !DILocation(line: 1744, column: 17, scope: !2662)
!2678 = !DILocation(line: 1753, column: 16, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2675, file: !3, line: 1753, column: 9)
!2680 = !DILocation(line: 1753, column: 25, scope: !2679)
!2681 = !DILocation(line: 1753, column: 28, scope: !2679)
!2682 = !DILocation(line: 1753, column: 77, scope: !2679)
!2683 = !DILocation(line: 1754, column: 9, scope: !2679)
!2684 = !DILocation(line: 1754, column: 28, scope: !2679)
!2685 = !DILocation(line: 1754, column: 31, scope: !2679)
!2686 = !DILocation(line: 1753, column: 9, scope: !2675)
!2687 = !DILocation(line: 1751, column: 42, scope: !2676)
!2688 = !DILocation(line: 1751, column: 3, scope: !2676)
!2689 = !DILocation(line: 1751, column: 17, scope: !2676)
!2690 = distinct !{!2690, !2673, !2691}
!2691 = !DILocation(line: 1757, column: 3, scope: !2672)
!2692 = !DILocation(line: 1760, column: 7, scope: !2662)
!2693 = !DILocation(line: 1761, column: 9, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2662, file: !3, line: 1761, column: 7)
!2695 = !DILocation(line: 1761, column: 7, scope: !2662)
!2696 = !DILocation(line: 1762, column: 5, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2698, file: !3, line: 1762, column: 5)
!2698 = distinct !DILexicalBlock(scope: !2699, file: !3, line: 1762, column: 5)
!2699 = distinct !DILexicalBlock(scope: !2694, file: !3, line: 1761, column: 15)
!2700 = !DILocation(line: 1762, column: 5, scope: !2698)
!2701 = !DILocation(line: 1762, column: 5, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2703, file: !3, line: 1762, column: 5)
!2703 = distinct !DILexicalBlock(scope: !2697, file: !3, line: 1762, column: 5)
!2704 = !DILocation(line: 1762, column: 5, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2706, file: !3, line: 1762, column: 5)
!2706 = distinct !DILexicalBlock(scope: !2707, file: !3, line: 1762, column: 5)
!2707 = distinct !DILexicalBlock(scope: !2702, file: !3, line: 1762, column: 5)
!2708 = !DILocation(line: 1764, column: 51, scope: !2699)
!2709 = !DILocation(line: 1764, column: 5, scope: !2699)
!2710 = !DILocation(line: 0, scope: !2662)
!2711 = !DILocation(line: 0, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2679, file: !3, line: 1754, column: 56)
!2713 = !DILocation(line: 1768, column: 1, scope: !2662)
!2714 = !DILocation(line: 1670, column: 37, scope: !443)
!2715 = !DILocation(line: 1670, column: 60, scope: !443)
!2716 = !DILocation(line: 1673, column: 14, scope: !443)
!2717 = !DILocation(line: 1673, column: 8, scope: !443)
!2718 = !DILocation(line: 1682, column: 8, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !443, file: !3, line: 1682, column: 3)
!2720 = !DILocation(line: 1682, column: 3, scope: !2719)
!2721 = !DILocation(line: 1684, column: 32, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2723, file: !3, line: 1684, column: 9)
!2723 = distinct !DILexicalBlock(scope: !2724, file: !3, line: 1682, column: 46)
!2724 = distinct !DILexicalBlock(scope: !2719, file: !3, line: 1682, column: 3)
!2725 = !DILocation(line: 1684, column: 47, scope: !2722)
!2726 = !DILocation(line: 1684, column: 9, scope: !2723)
!2727 = !DILocation(line: 1685, column: 61, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2722, file: !3, line: 1684, column: 56)
!2729 = !DILocation(line: 1672, column: 17, scope: !443)
!2730 = !DILocation(line: 1686, column: 25, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2728, file: !3, line: 1686, column: 11)
!2732 = !DILocation(line: 1686, column: 34, scope: !2731)
!2733 = !DILocation(line: 1686, column: 11, scope: !2728)
!2734 = !DILocation(line: 1686, column: 60, scope: !2731)
!2735 = !DILocation(line: 1686, column: 38, scope: !2731)
!2736 = !DILocation(line: 1687, column: 12, scope: !2731)
!2737 = !DILocation(line: 1687, column: 38, scope: !2731)
!2738 = !DILocation(line: 1687, column: 41, scope: !2731)
!2739 = !DILocation(line: 1691, column: 52, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2741, file: !3, line: 1691, column: 13)
!2741 = distinct !DILexicalBlock(scope: !2731, file: !3, line: 1687, column: 75)
!2742 = !DILocation(line: 1691, column: 58, scope: !2740)
!2743 = !DILocation(line: 1691, column: 13, scope: !2741)
!2744 = !DILocation(line: 1693, column: 60, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2746, file: !3, line: 1693, column: 15)
!2746 = distinct !DILexicalBlock(scope: !2740, file: !3, line: 1691, column: 77)
!2747 = !DILocation(line: 1693, column: 15, scope: !2746)
!2748 = !DILocation(line: 1695, column: 22, scope: !2745)
!2749 = !DILocation(line: 1697, column: 11, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2751, file: !3, line: 1695, column: 40)
!2751 = distinct !DILexicalBlock(scope: !2745, file: !3, line: 1695, column: 22)
!2752 = !DILocation(line: 0, scope: !443)
!2753 = !DILocation(line: 1682, column: 3, scope: !2724)
!2754 = !DILocation(line: 1710, column: 23, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !443, file: !3, line: 1710, column: 7)
!2756 = !DILocation(line: 1710, column: 27, scope: !2755)
!2757 = !DILocation(line: 1710, column: 41, scope: !2755)
!2758 = !DILocation(line: 1710, column: 7, scope: !443)
!2759 = !DILocation(line: 0, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2755, file: !3, line: 1710, column: 67)
!2761 = !DILocation(line: 1713, column: 7, scope: !443)
!2762 = !DILocation(line: 1673, column: 11, scope: !443)
!2763 = !DILocation(line: 1714, column: 8, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !443, file: !3, line: 1714, column: 3)
!2765 = !DILocation(line: 1714, column: 3, scope: !2764)
!2766 = !DILocation(line: 1715, column: 9, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2768, file: !3, line: 1715, column: 9)
!2768 = distinct !DILexicalBlock(scope: !2769, file: !3, line: 1714, column: 46)
!2769 = distinct !DILexicalBlock(scope: !2764, file: !3, line: 1714, column: 3)
!2770 = !DILocation(line: 1715, column: 32, scope: !2767)
!2771 = !DILocation(line: 1715, column: 47, scope: !2767)
!2772 = !DILocation(line: 1715, column: 9, scope: !2768)
!2773 = !DILocation(line: 1716, column: 61, scope: !2774)
!2774 = distinct !DILexicalBlock(scope: !2767, file: !3, line: 1715, column: 56)
!2775 = !DILocation(line: 1717, column: 25, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2774, file: !3, line: 1717, column: 11)
!2777 = !DILocation(line: 1717, column: 34, scope: !2776)
!2778 = !DILocation(line: 1717, column: 11, scope: !2774)
!2779 = !DILocation(line: 1717, column: 60, scope: !2776)
!2780 = !DILocation(line: 1717, column: 38, scope: !2776)
!2781 = !DILocation(line: 1718, column: 12, scope: !2776)
!2782 = !DILocation(line: 1718, column: 38, scope: !2776)
!2783 = !DILocation(line: 1718, column: 41, scope: !2776)
!2784 = !DILocation(line: 1722, column: 9, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2768, file: !3, line: 1722, column: 9)
!2786 = !DILocation(line: 1722, column: 13, scope: !2785)
!2787 = !DILocation(line: 1722, column: 9, scope: !2768)
!2788 = !DILocation(line: 1714, column: 3, scope: !2769)
!2789 = !DILocation(line: 0, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2745, file: !3, line: 1693, column: 78)
!2791 = !DILocation(line: 1729, column: 1, scope: !443)
!2792 = !DILocation(line: 1728, column: 3, scope: !443)
!2793 = !DILocation(line: 1695, column: 35, scope: !2751)
!2794 = !DILocation(line: 1702, column: 7, scope: !443)
!2795 = !DILocation(line: 1702, column: 20, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !443, file: !3, line: 1702, column: 7)
!2797 = distinct !DISubprogram(name: "nd6_get_next_hop_addr_or_queue", scope: !3, file: !3, line: 2247, type: !2798, isLocal: false, isDefinition: true, scopeLine: 2248, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2803)
!2798 = !DISubroutineType(types: !2799)
!2799 = !{!306, !274, !253, !162, !2800}
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!2803 = !{!2804, !2805, !2806, !2807, !2808}
!2804 = !DILocalVariable(name: "netif", arg: 1, scope: !2797, file: !3, line: 2247, type: !274)
!2805 = !DILocalVariable(name: "q", arg: 2, scope: !2797, file: !3, line: 2247, type: !253)
!2806 = !DILocalVariable(name: "ip6addr", arg: 3, scope: !2797, file: !3, line: 2247, type: !162)
!2807 = !DILocalVariable(name: "hwaddrp", arg: 4, scope: !2797, file: !3, line: 2247, type: !2800)
!2808 = !DILocalVariable(name: "i", scope: !2797, file: !3, line: 2249, type: !307)
!2809 = !DILocation(line: 2247, column: 46, scope: !2797)
!2810 = !DILocation(line: 2247, column: 66, scope: !2797)
!2811 = !DILocation(line: 2247, column: 87, scope: !2797)
!2812 = !DILocation(line: 2247, column: 109, scope: !2797)
!2813 = !DILocalVariable(name: "ip6addr", arg: 1, scope: !2814, file: !3, line: 1924, type: !162)
!2814 = distinct !DISubprogram(name: "nd6_get_next_hop_entry", scope: !3, file: !3, line: 1924, type: !444, isLocal: true, isDefinition: true, scopeLine: 1925, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2815)
!2815 = !{!2813, !2816, !2817, !2818}
!2816 = !DILocalVariable(name: "netif", arg: 2, scope: !2814, file: !3, line: 1924, type: !274)
!2817 = !DILocalVariable(name: "i", scope: !2814, file: !3, line: 1929, type: !307)
!2818 = !DILocalVariable(name: "dst_idx", scope: !2814, file: !3, line: 1930, type: !466)
!2819 = !DILocation(line: 1924, column: 42, scope: !2814, inlinedAt: !2820)
!2820 = distinct !DILocation(line: 2252, column: 7, scope: !2797)
!2821 = !DILocation(line: 1924, column: 65, scope: !2814, inlinedAt: !2820)
!2822 = !DILocation(line: 1945, column: 7, scope: !2823, inlinedAt: !2820)
!2823 = distinct !DILexicalBlock(scope: !2814, file: !3, line: 1945, column: 7)
!2824 = !DILocation(line: 1945, column: 7, scope: !2814, inlinedAt: !2820)
!2825 = !DILocation(line: 1948, column: 5, scope: !2826, inlinedAt: !2820)
!2826 = distinct !DILexicalBlock(scope: !2823, file: !3, line: 1945, column: 99)
!2827 = !{!517, !519, i64 308}
!2828 = !DILocation(line: 1949, column: 3, scope: !2826, inlinedAt: !2820)
!2829 = !DILocation(line: 1560, column: 52, scope: !1461, inlinedAt: !2830)
!2830 = distinct !DILocation(line: 1951, column: 15, scope: !2831, inlinedAt: !2820)
!2831 = distinct !DILexicalBlock(scope: !2823, file: !3, line: 1949, column: 10)
!2832 = !DILocation(line: 1562, column: 9, scope: !1461, inlinedAt: !2830)
!2833 = !DILocation(line: 1566, column: 8, scope: !1460, inlinedAt: !2830)
!2834 = !DILocation(line: 1566, column: 3, scope: !1460, inlinedAt: !2830)
!2835 = !DILocation(line: 1567, column: 9, scope: !1475, inlinedAt: !2830)
!2836 = !DILocation(line: 1567, column: 9, scope: !1476, inlinedAt: !2830)
!2837 = !DILocation(line: 1566, column: 47, scope: !1477, inlinedAt: !2830)
!2838 = !DILocation(line: 1566, column: 3, scope: !1477, inlinedAt: !2830)
!2839 = !DILocation(line: 1566, column: 17, scope: !1477, inlinedAt: !2830)
!2840 = !DILocation(line: 1568, column: 7, scope: !1492, inlinedAt: !2830)
!2841 = !DILocation(line: 1572, column: 1, scope: !1461, inlinedAt: !2830)
!2842 = !DILocation(line: 1930, column: 9, scope: !2814, inlinedAt: !2820)
!2843 = !DILocation(line: 1952, column: 9, scope: !2831, inlinedAt: !2820)
!2844 = !DILocation(line: 1954, column: 7, scope: !2845, inlinedAt: !2820)
!2845 = distinct !DILexicalBlock(scope: !2846, file: !3, line: 1954, column: 7)
!2846 = distinct !DILexicalBlock(scope: !2847, file: !3, line: 1954, column: 7)
!2847 = distinct !DILexicalBlock(scope: !2848, file: !3, line: 1952, column: 23)
!2848 = distinct !DILexicalBlock(scope: !2831, file: !3, line: 1952, column: 9)
!2849 = !DILocation(line: 1954, column: 7, scope: !2846, inlinedAt: !2820)
!2850 = !DILocation(line: 1954, column: 7, scope: !2851, inlinedAt: !2820)
!2851 = distinct !DILexicalBlock(scope: !2852, file: !3, line: 1954, column: 7)
!2852 = distinct !DILexicalBlock(scope: !2845, file: !3, line: 1954, column: 7)
!2853 = !DILocation(line: 1954, column: 7, scope: !2854, inlinedAt: !2820)
!2854 = distinct !DILexicalBlock(scope: !2855, file: !3, line: 1954, column: 7)
!2855 = distinct !DILexicalBlock(scope: !2856, file: !3, line: 1954, column: 7)
!2856 = distinct !DILexicalBlock(scope: !2851, file: !3, line: 1954, column: 7)
!2857 = !DILocation(line: 1955, column: 38, scope: !2847, inlinedAt: !2820)
!2858 = !DILocation(line: 1955, column: 36, scope: !2847, inlinedAt: !2820)
!2859 = !DILocation(line: 1956, column: 5, scope: !2847, inlinedAt: !2820)
!2860 = !DILocation(line: 1571, column: 3, scope: !1461, inlinedAt: !2830)
!2861 = !DILocalVariable(name: "i", scope: !2862, file: !3, line: 1584, type: !466)
!2862 = distinct !DISubprogram(name: "nd6_new_destination_cache_entry", scope: !3, file: !3, line: 1582, type: !2863, isLocal: true, isDefinition: true, scopeLine: 1583, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2865)
!2863 = !DISubroutineType(types: !2864)
!2864 = !{!466}
!2865 = !{!2861, !2866, !2867}
!2866 = !DILocalVariable(name: "j", scope: !2862, file: !3, line: 1584, type: !466)
!2867 = !DILocalVariable(name: "age", scope: !2862, file: !3, line: 1585, type: !147)
!2868 = !DILocation(line: 1584, column: 9, scope: !2862, inlinedAt: !2869)
!2869 = distinct !DILocation(line: 1958, column: 17, scope: !2870, inlinedAt: !2820)
!2870 = distinct !DILexicalBlock(scope: !2848, file: !3, line: 1956, column: 12)
!2871 = !DILocation(line: 1588, column: 8, scope: !2872, inlinedAt: !2869)
!2872 = distinct !DILexicalBlock(scope: !2862, file: !3, line: 1588, column: 3)
!2873 = !DILocation(line: 1588, column: 3, scope: !2872, inlinedAt: !2869)
!2874 = !DILocation(line: 0, scope: !2875, inlinedAt: !2869)
!2875 = distinct !DILexicalBlock(scope: !2862, file: !3, line: 1597, column: 3)
!2876 = !DILocation(line: 1584, column: 12, scope: !2862, inlinedAt: !2869)
!2877 = !DILocation(line: 1597, column: 3, scope: !2875, inlinedAt: !2869)
!2878 = !DILocation(line: 1598, column: 30, scope: !2879, inlinedAt: !2869)
!2879 = distinct !DILexicalBlock(scope: !2880, file: !3, line: 1598, column: 9)
!2880 = distinct !DILexicalBlock(scope: !2881, file: !3, line: 1597, column: 51)
!2881 = distinct !DILexicalBlock(scope: !2875, file: !3, line: 1597, column: 3)
!2882 = !DILocation(line: 1598, column: 34, scope: !2879, inlinedAt: !2869)
!2883 = !DILocation(line: 1598, column: 9, scope: !2880, inlinedAt: !2869)
!2884 = !DILocation(line: 1589, column: 9, scope: !2885, inlinedAt: !2869)
!2885 = distinct !DILexicalBlock(scope: !2886, file: !3, line: 1589, column: 9)
!2886 = distinct !DILexicalBlock(scope: !2887, file: !3, line: 1588, column: 51)
!2887 = distinct !DILexicalBlock(scope: !2872, file: !3, line: 1588, column: 3)
!2888 = !DILocation(line: 1589, column: 9, scope: !2886, inlinedAt: !2869)
!2889 = !DILocation(line: 1590, column: 7, scope: !2890, inlinedAt: !2869)
!2890 = distinct !DILexicalBlock(scope: !2885, file: !3, line: 1589, column: 67)
!2891 = !DILocation(line: 1588, column: 47, scope: !2887, inlinedAt: !2869)
!2892 = !DILocation(line: 1588, column: 3, scope: !2887, inlinedAt: !2869)
!2893 = !DILocation(line: 1588, column: 17, scope: !2887, inlinedAt: !2869)
!2894 = distinct !{!2894, !2895, !2896}
!2895 = !DILocation(line: 1588, column: 3, scope: !2872)
!2896 = !DILocation(line: 1592, column: 3, scope: !2872)
!2897 = !DILocation(line: 1600, column: 5, scope: !2898, inlinedAt: !2869)
!2898 = distinct !DILexicalBlock(scope: !2879, file: !3, line: 1598, column: 41)
!2899 = !DILocation(line: 0, scope: !2862, inlinedAt: !2869)
!2900 = !DILocation(line: 1597, column: 3, scope: !2881, inlinedAt: !2869)
!2901 = !DILocation(line: 1603, column: 3, scope: !2862, inlinedAt: !2869)
!2902 = !DILocation(line: 0, scope: !2870, inlinedAt: !2820)
!2903 = !DILocation(line: 1604, column: 1, scope: !2862, inlinedAt: !2869)
!2904 = !DILocation(line: 1959, column: 11, scope: !2870, inlinedAt: !2820)
!2905 = !DILocation(line: 1961, column: 9, scope: !2906, inlinedAt: !2820)
!2906 = distinct !DILexicalBlock(scope: !2907, file: !3, line: 1961, column: 9)
!2907 = distinct !DILexicalBlock(scope: !2908, file: !3, line: 1959, column: 25)
!2908 = distinct !DILexicalBlock(scope: !2870, file: !3, line: 1959, column: 11)
!2909 = !DILocation(line: 1962, column: 38, scope: !2907, inlinedAt: !2820)
!2910 = !DILocation(line: 1969, column: 7, scope: !2911, inlinedAt: !2820)
!2911 = distinct !DILexicalBlock(scope: !2870, file: !3, line: 1969, column: 7)
!2912 = !DILocation(line: 1972, column: 11, scope: !2913, inlinedAt: !2820)
!2913 = distinct !DILexicalBlock(scope: !2870, file: !3, line: 1972, column: 11)
!2914 = !DILocation(line: 1972, column: 41, scope: !2913, inlinedAt: !2820)
!2915 = !DILocalVariable(name: "ip6addr", arg: 1, scope: !2916, file: !3, line: 1630, type: !162)
!2916 = distinct !DISubprogram(name: "nd6_is_prefix_in_netif", scope: !3, file: !3, line: 1630, type: !2917, isLocal: true, isDefinition: true, scopeLine: 1631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2919)
!2917 = !DISubroutineType(types: !2918)
!2918 = !{!22, !162, !274}
!2919 = !{!2915, !2920, !2921}
!2920 = !DILocalVariable(name: "netif", arg: 2, scope: !2916, file: !3, line: 1630, type: !274)
!2921 = !DILocalVariable(name: "i", scope: !2916, file: !3, line: 1632, type: !307)
!2922 = !DILocation(line: 1630, column: 42, scope: !2916, inlinedAt: !2923)
!2923 = distinct !DILocation(line: 1973, column: 11, scope: !2913, inlinedAt: !2820)
!2924 = !DILocation(line: 1630, column: 65, scope: !2916, inlinedAt: !2923)
!2925 = !DILocation(line: 1632, column: 8, scope: !2916, inlinedAt: !2923)
!2926 = !DILocation(line: 1635, column: 8, scope: !2927, inlinedAt: !2923)
!2927 = distinct !DILexicalBlock(scope: !2916, file: !3, line: 1635, column: 3)
!2928 = !DILocation(line: 1635, column: 3, scope: !2927, inlinedAt: !2923)
!2929 = !DILocation(line: 1636, column: 25, scope: !2930, inlinedAt: !2923)
!2930 = distinct !DILexicalBlock(scope: !2931, file: !3, line: 1636, column: 9)
!2931 = distinct !DILexicalBlock(scope: !2932, file: !3, line: 1635, column: 47)
!2932 = distinct !DILexicalBlock(scope: !2927, file: !3, line: 1635, column: 3)
!2933 = !DILocation(line: 1636, column: 31, scope: !2930, inlinedAt: !2923)
!2934 = !DILocation(line: 1636, column: 41, scope: !2930, inlinedAt: !2923)
!2935 = !DILocation(line: 1637, column: 25, scope: !2930, inlinedAt: !2923)
!2936 = !DILocation(line: 1637, column: 44, scope: !2930, inlinedAt: !2923)
!2937 = !DILocation(line: 1637, column: 49, scope: !2930, inlinedAt: !2923)
!2938 = !DILocation(line: 1638, column: 9, scope: !2930, inlinedAt: !2923)
!2939 = !DILocation(line: 1636, column: 9, scope: !2931, inlinedAt: !2923)
!2940 = !DILocation(line: 1635, column: 3, scope: !2932, inlinedAt: !2923)
!2941 = !DILocation(line: 1648, column: 9, scope: !2942, inlinedAt: !2923)
!2942 = distinct !DILexicalBlock(scope: !2943, file: !3, line: 1647, column: 9)
!2943 = distinct !DILexicalBlock(scope: !2944, file: !3, line: 1646, column: 49)
!2944 = distinct !DILexicalBlock(scope: !2945, file: !3, line: 1646, column: 3)
!2945 = distinct !DILexicalBlock(scope: !2916, file: !3, line: 1646, column: 3)
!2946 = !DILocation(line: 1648, column: 43, scope: !2942, inlinedAt: !2923)
!2947 = !DILocation(line: 1649, column: 9, scope: !2942, inlinedAt: !2923)
!2948 = !DILocation(line: 1647, column: 9, scope: !2943, inlinedAt: !2923)
!2949 = !DILocation(line: 1646, column: 3, scope: !2944, inlinedAt: !2923)
!2950 = !DILocation(line: 1646, column: 3, scope: !2945, inlinedAt: !2923)
!2951 = !DILocation(line: 1647, column: 9, scope: !2942, inlinedAt: !2923)
!2952 = !DILocation(line: 1647, column: 58, scope: !2942, inlinedAt: !2923)
!2953 = !DILocation(line: 1646, column: 8, scope: !2945, inlinedAt: !2923)
!2954 = !DILocation(line: 0, scope: !2913, inlinedAt: !2820)
!2955 = !DILocation(line: 1654, column: 1, scope: !2916, inlinedAt: !2923)
!2956 = !DILocation(line: 1972, column: 11, scope: !2870, inlinedAt: !2820)
!2957 = !DILocation(line: 1975, column: 64, scope: !2958, inlinedAt: !2820)
!2958 = distinct !DILexicalBlock(scope: !2913, file: !3, line: 1973, column: 51)
!2959 = !DILocation(line: 1975, column: 57, scope: !2958, inlinedAt: !2820)
!2960 = !DILocation(line: 1975, column: 62, scope: !2958, inlinedAt: !2820)
!2961 = !DILocation(line: 1976, column: 9, scope: !2962, inlinedAt: !2820)
!2962 = distinct !DILexicalBlock(scope: !2958, file: !3, line: 1976, column: 9)
!2963 = !DILocation(line: 1983, column: 7, scope: !2958, inlinedAt: !2820)
!2964 = !DILocation(line: 1653, column: 3, scope: !2916, inlinedAt: !2923)
!2965 = !DILocation(line: 1985, column: 13, scope: !2966, inlinedAt: !2820)
!2966 = distinct !DILexicalBlock(scope: !2913, file: !3, line: 1983, column: 14)
!2967 = !DILocation(line: 1929, column: 8, scope: !2814, inlinedAt: !2820)
!2968 = !DILocation(line: 1986, column: 15, scope: !2969, inlinedAt: !2820)
!2969 = distinct !DILexicalBlock(scope: !2966, file: !3, line: 1986, column: 13)
!2970 = !DILocation(line: 1986, column: 13, scope: !2966, inlinedAt: !2820)
!2971 = !DILocation(line: 1988, column: 11, scope: !2972, inlinedAt: !2820)
!2972 = distinct !DILexicalBlock(scope: !2973, file: !3, line: 1988, column: 11)
!2973 = distinct !DILexicalBlock(scope: !2969, file: !3, line: 1986, column: 20)
!2974 = !DILocation(line: 1989, column: 11, scope: !2973, inlinedAt: !2820)
!2975 = !DILocation(line: 1991, column: 64, scope: !2966, inlinedAt: !2820)
!2976 = !DILocation(line: 1991, column: 57, scope: !2966, inlinedAt: !2820)
!2977 = !DILocation(line: 1991, column: 62, scope: !2966, inlinedAt: !2820)
!2978 = !DILocation(line: 1992, column: 9, scope: !2979, inlinedAt: !2820)
!2979 = distinct !DILexicalBlock(scope: !2966, file: !3, line: 1992, column: 9)
!2980 = !DILocation(line: 2005, column: 7, scope: !2981, inlinedAt: !2820)
!2981 = distinct !DILexicalBlock(scope: !2814, file: !3, line: 2005, column: 7)
!2982 = !DILocation(line: 2005, column: 7, scope: !2814, inlinedAt: !2820)
!2983 = !DILocation(line: 2009, column: 5, scope: !2984, inlinedAt: !2820)
!2984 = distinct !DILexicalBlock(scope: !2981, file: !3, line: 2006, column: 84)
!2985 = !DILocation(line: 2010, column: 3, scope: !2984, inlinedAt: !2820)
!2986 = !DILocation(line: 1403, column: 8, scope: !623, inlinedAt: !2987)
!2987 = distinct !DILocation(line: 2011, column: 9, scope: !2988, inlinedAt: !2820)
!2988 = distinct !DILexicalBlock(scope: !2981, file: !3, line: 2010, column: 10)
!2989 = !DILocation(line: 1404, column: 8, scope: !632, inlinedAt: !2987)
!2990 = !DILocation(line: 1404, column: 3, scope: !632, inlinedAt: !2987)
!2991 = !DILocation(line: 1405, column: 9, scope: !635, inlinedAt: !2987)
!2992 = !DILocation(line: 1405, column: 9, scope: !636, inlinedAt: !2987)
!2993 = !DILocation(line: 1404, column: 44, scope: !637, inlinedAt: !2987)
!2994 = !DILocation(line: 1404, column: 3, scope: !637, inlinedAt: !2987)
!2995 = !DILocation(line: 1404, column: 17, scope: !637, inlinedAt: !2987)
!2996 = !DILocation(line: 1406, column: 7, scope: !652, inlinedAt: !2987)
!2997 = !DILocation(line: 1410, column: 1, scope: !623, inlinedAt: !2987)
!2998 = !DILocation(line: 2012, column: 9, scope: !2988, inlinedAt: !2820)
!2999 = !DILocation(line: 2014, column: 33, scope: !3000, inlinedAt: !2820)
!3000 = distinct !DILexicalBlock(scope: !3001, file: !3, line: 2012, column: 17)
!3001 = distinct !DILexicalBlock(scope: !2988, file: !3, line: 2012, column: 9)
!3002 = !DILocation(line: 2015, column: 5, scope: !3000, inlinedAt: !2820)
!3003 = !DILocation(line: 2038, column: 51, scope: !2814, inlinedAt: !2820)
!3004 = !DILocation(line: 2038, column: 55, scope: !2814, inlinedAt: !2820)
!3005 = !DILocation(line: 2040, column: 3, scope: !2814, inlinedAt: !2820)
!3006 = !DILocation(line: 2041, column: 1, scope: !2814, inlinedAt: !2820)
!3007 = !DILocation(line: 2249, column: 8, scope: !2797)
!3008 = !DILocation(line: 2253, column: 7, scope: !2797)
!3009 = !DILocation(line: 1409, column: 3, scope: !623, inlinedAt: !2987)
!3010 = !DILocation(line: 2017, column: 11, scope: !3011, inlinedAt: !2820)
!3011 = distinct !DILexicalBlock(scope: !3001, file: !3, line: 2015, column: 12)
!3012 = !DILocation(line: 2018, column: 13, scope: !3013, inlinedAt: !2820)
!3013 = distinct !DILexicalBlock(scope: !3011, file: !3, line: 2018, column: 11)
!3014 = !DILocation(line: 2018, column: 11, scope: !3011, inlinedAt: !2820)
!3015 = !DILocation(line: 2020, column: 35, scope: !3016, inlinedAt: !2820)
!3016 = distinct !DILexicalBlock(scope: !3013, file: !3, line: 2018, column: 19)
!3017 = !DILocation(line: 2027, column: 7, scope: !3018, inlinedAt: !2820)
!3018 = distinct !DILexicalBlock(scope: !3011, file: !3, line: 2027, column: 7)
!3019 = !DILocation(line: 2029, column: 25, scope: !3011, inlinedAt: !2820)
!3020 = !DILocation(line: 2029, column: 34, scope: !3011, inlinedAt: !2820)
!3021 = !DILocation(line: 2030, column: 25, scope: !3011, inlinedAt: !2820)
!3022 = !DILocation(line: 2030, column: 31, scope: !3011, inlinedAt: !2820)
!3023 = !DILocation(line: 2031, column: 25, scope: !3011, inlinedAt: !2820)
!3024 = !DILocation(line: 2031, column: 31, scope: !3011, inlinedAt: !2820)
!3025 = !DILocation(line: 2032, column: 33, scope: !3011, inlinedAt: !2820)
!3026 = !DILocation(line: 2032, column: 45, scope: !3011, inlinedAt: !2820)
!3027 = !DILocation(line: 1168, column: 64, scope: !989, inlinedAt: !3028)
!3028 = distinct !DILocation(line: 2033, column: 7, scope: !3011, inlinedAt: !2820)
!3029 = !DILocation(line: 1168, column: 76, scope: !989, inlinedAt: !3028)
!3030 = !DILocation(line: 1170, column: 37, scope: !989, inlinedAt: !3028)
!3031 = !DILocation(line: 1170, column: 3, scope: !989, inlinedAt: !3028)
!3032 = !DILocation(line: 1171, column: 1, scope: !989, inlinedAt: !3028)
!3033 = !DILocation(line: 2038, column: 21, scope: !2814, inlinedAt: !2820)
!3034 = !DILocation(line: 2040, column: 10, scope: !2814, inlinedAt: !2820)
!3035 = !DILocation(line: 2038, column: 3, scope: !2814, inlinedAt: !2820)
!3036 = !DILocation(line: 0, scope: !2797)
!3037 = !DILocation(line: 2253, column: 9, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !2797, file: !3, line: 2253, column: 7)
!3039 = !DILocation(line: 2259, column: 7, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !2797, file: !3, line: 2259, column: 7)
!3041 = !DILocation(line: 2259, column: 25, scope: !3040)
!3042 = !DILocation(line: 2259, column: 31, scope: !3040)
!3043 = !DILocation(line: 2259, column: 7, scope: !2797)
!3044 = !DILocation(line: 2261, column: 29, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !3040, file: !3, line: 2259, column: 45)
!3046 = !DILocation(line: 2262, column: 31, scope: !3045)
!3047 = !DILocation(line: 2262, column: 42, scope: !3045)
!3048 = !DILocation(line: 2263, column: 3, scope: !3045)
!3049 = !DILocation(line: 2265, column: 50, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !2797, file: !3, line: 2265, column: 7)
!3051 = !DILocation(line: 2266, column: 46, scope: !3050)
!3052 = !DILocation(line: 2265, column: 32, scope: !3050)
!3053 = !DILocation(line: 2266, column: 32, scope: !3050)
!3054 = !DILocation(line: 2267, column: 32, scope: !3050)
!3055 = !DILocation(line: 2265, column: 7, scope: !2797)
!3056 = !DILocation(line: 2270, column: 16, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3050, file: !3, line: 2267, column: 47)
!3058 = !DILocation(line: 2270, column: 14, scope: !3057)
!3059 = !DILocation(line: 2271, column: 5, scope: !3057)
!3060 = !DILocation(line: 2275, column: 12, scope: !2797)
!3061 = !DILocalVariable(name: "neighbor_index", arg: 1, scope: !3062, file: !3, line: 2051, type: !307)
!3062 = distinct !DISubprogram(name: "nd6_queue_packet", scope: !3, file: !3, line: 2051, type: !3063, isLocal: true, isDefinition: true, scopeLine: 2052, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3065)
!3063 = !DISubroutineType(types: !3064)
!3064 = !{!306, !307, !253}
!3065 = !{!3061, !3066, !3067, !3068, !3069, !3070, !3071}
!3066 = !DILocalVariable(name: "q", arg: 2, scope: !3062, file: !3, line: 2051, type: !253)
!3067 = !DILocalVariable(name: "result", scope: !3062, file: !3, line: 2053, type: !306)
!3068 = !DILocalVariable(name: "p", scope: !3062, file: !3, line: 2054, type: !253)
!3069 = !DILocalVariable(name: "copy_needed", scope: !3062, file: !3, line: 2055, type: !22)
!3070 = !DILocalVariable(name: "new_entry", scope: !3062, file: !3, line: 2057, type: !248)
!3071 = !DILocalVariable(name: "r", scope: !3062, file: !3, line: 2057, type: !248)
!3072 = !DILocation(line: 2051, column: 23, scope: !3062, inlinedAt: !3073)
!3073 = distinct !DILocation(line: 2276, column: 10, scope: !2797)
!3074 = !DILocation(line: 2051, column: 52, scope: !3062, inlinedAt: !3073)
!3075 = !DILocation(line: 2053, column: 9, scope: !3062, inlinedAt: !3073)
!3076 = !DILocation(line: 2055, column: 7, scope: !3062, inlinedAt: !3073)
!3077 = !DILocation(line: 2060, column: 28, scope: !3078, inlinedAt: !3073)
!3078 = distinct !DILexicalBlock(scope: !3062, file: !3, line: 2060, column: 7)
!3079 = !DILocation(line: 2060, column: 47, scope: !3078, inlinedAt: !3073)
!3080 = !DILocation(line: 2060, column: 7, scope: !3062, inlinedAt: !3073)
!3081 = !DILocation(line: 2054, column: 16, scope: !3062, inlinedAt: !3073)
!3082 = !DILocation(line: 2067, column: 3, scope: !3062, inlinedAt: !3073)
!3083 = !DILocation(line: 2068, column: 9, scope: !3084, inlinedAt: !3073)
!3084 = distinct !DILexicalBlock(scope: !3085, file: !3, line: 2068, column: 9)
!3085 = distinct !DILexicalBlock(scope: !3062, file: !3, line: 2067, column: 13)
!3086 = !{!527, !520, i64 20}
!3087 = !DILocation(line: 2068, column: 9, scope: !3085, inlinedAt: !3073)
!3088 = !DILocation(line: 2070, column: 7, scope: !3089, inlinedAt: !3073)
!3089 = distinct !DILexicalBlock(scope: !3084, file: !3, line: 2068, column: 29)
!3090 = !DILocation(line: 2074, column: 7, scope: !3062, inlinedAt: !3073)
!3091 = !DILocation(line: 2076, column: 9, scope: !3092, inlinedAt: !3073)
!3092 = distinct !DILexicalBlock(scope: !3093, file: !3, line: 2074, column: 20)
!3093 = distinct !DILexicalBlock(scope: !3062, file: !3, line: 2074, column: 7)
!3094 = !DILocation(line: 2077, column: 5, scope: !3092, inlinedAt: !3073)
!3095 = !DILocation(line: 2077, column: 15, scope: !3092, inlinedAt: !3073)
!3096 = !DILocation(line: 2077, column: 24, scope: !3092, inlinedAt: !3073)
!3097 = !DILocation(line: 2072, column: 12, scope: !3085, inlinedAt: !3073)
!3098 = !{!527, !528, i64 0}
!3099 = distinct !{!3099, !3100, !3101}
!3100 = !DILocation(line: 2067, column: 3, scope: !3062)
!3101 = !DILocation(line: 2073, column: 3, scope: !3062)
!3102 = !DILocation(line: 2077, column: 59, scope: !3092, inlinedAt: !3073)
!3103 = !DILocation(line: 2077, column: 61, scope: !3092, inlinedAt: !3073)
!3104 = !DILocation(line: 2057, column: 35, scope: !3062, inlinedAt: !3073)
!3105 = !DILocation(line: 2081, column: 45, scope: !3106, inlinedAt: !3073)
!3106 = distinct !DILexicalBlock(scope: !3092, file: !3, line: 2077, column: 71)
!3107 = !DILocation(line: 2081, column: 40, scope: !3106, inlinedAt: !3073)
!3108 = !DILocation(line: 2082, column: 15, scope: !3106, inlinedAt: !3073)
!3109 = !DILocation(line: 2083, column: 7, scope: !3106, inlinedAt: !3073)
!3110 = !DILocation(line: 2088, column: 11, scope: !3106, inlinedAt: !3073)
!3111 = distinct !{!3111, !3112, !3113}
!3112 = !DILocation(line: 2077, column: 5, scope: !3092)
!3113 = !DILocation(line: 2089, column: 5, scope: !3092)
!3114 = !DILocation(line: 2093, column: 5, scope: !3115, inlinedAt: !3073)
!3115 = distinct !DILexicalBlock(scope: !3093, file: !3, line: 2090, column: 10)
!3116 = !DILocation(line: 2096, column: 7, scope: !3062, inlinedAt: !3073)
!3117 = !DILocation(line: 2100, column: 39, scope: !3118, inlinedAt: !3073)
!3118 = distinct !DILexicalBlock(scope: !3119, file: !3, line: 2096, column: 18)
!3119 = distinct !DILexicalBlock(scope: !3062, file: !3, line: 2096, column: 7)
!3120 = !DILocation(line: 2100, column: 17, scope: !3118, inlinedAt: !3073)
!3121 = !DILocation(line: 2057, column: 23, scope: !3062, inlinedAt: !3073)
!3122 = !DILocation(line: 2101, column: 20, scope: !3123, inlinedAt: !3073)
!3123 = distinct !DILexicalBlock(scope: !3118, file: !3, line: 2101, column: 9)
!3124 = !DILocation(line: 2101, column: 29, scope: !3123, inlinedAt: !3073)
!3125 = !DILocation(line: 2101, column: 64, scope: !3123, inlinedAt: !3073)
!3126 = !DILocation(line: 2101, column: 66, scope: !3123, inlinedAt: !3073)
!3127 = !DILocation(line: 2101, column: 9, scope: !3118, inlinedAt: !3073)
!3128 = !DILocation(line: 2104, column: 45, scope: !3129, inlinedAt: !3073)
!3129 = distinct !DILexicalBlock(scope: !3123, file: !3, line: 2101, column: 76)
!3130 = !DILocation(line: 2104, column: 40, scope: !3129, inlinedAt: !3073)
!3131 = !DILocation(line: 2105, column: 15, scope: !3129, inlinedAt: !3073)
!3132 = !DILocation(line: 2106, column: 7, scope: !3129, inlinedAt: !3073)
!3133 = !DILocation(line: 2107, column: 41, scope: !3129, inlinedAt: !3073)
!3134 = !DILocation(line: 2107, column: 19, scope: !3129, inlinedAt: !3073)
!3135 = !DILocation(line: 2108, column: 5, scope: !3129, inlinedAt: !3073)
!3136 = !DILocation(line: 0, scope: !3118, inlinedAt: !3073)
!3137 = !DILocation(line: 2109, column: 19, scope: !3138, inlinedAt: !3073)
!3138 = distinct !DILexicalBlock(scope: !3118, file: !3, line: 2109, column: 9)
!3139 = !DILocation(line: 2109, column: 9, scope: !3118, inlinedAt: !3073)
!3140 = !DILocation(line: 2110, column: 18, scope: !3141, inlinedAt: !3073)
!3141 = distinct !DILexicalBlock(scope: !3138, file: !3, line: 2109, column: 28)
!3142 = !DILocation(line: 2110, column: 23, scope: !3141, inlinedAt: !3073)
!3143 = !DILocation(line: 2111, column: 18, scope: !3141, inlinedAt: !3073)
!3144 = !DILocation(line: 2111, column: 20, scope: !3141, inlinedAt: !3073)
!3145 = !DILocation(line: 2112, column: 42, scope: !3146, inlinedAt: !3073)
!3146 = distinct !DILexicalBlock(scope: !3141, file: !3, line: 2112, column: 11)
!3147 = !DILocation(line: 2112, column: 44, scope: !3146, inlinedAt: !3073)
!3148 = !DILocation(line: 2112, column: 11, scope: !3141, inlinedAt: !3073)
!3149 = !DILocation(line: 2115, column: 9, scope: !3150, inlinedAt: !3073)
!3150 = distinct !DILexicalBlock(scope: !3146, file: !3, line: 2112, column: 53)
!3151 = !DILocation(line: 2115, column: 19, scope: !3150, inlinedAt: !3073)
!3152 = !DILocation(line: 2115, column: 24, scope: !3150, inlinedAt: !3073)
!3153 = distinct !{!3153, !3154, !3155}
!3154 = !DILocation(line: 2115, column: 9, scope: !3150)
!3155 = !DILocation(line: 2117, column: 9, scope: !3150)
!3156 = !DILocation(line: 2118, column: 17, scope: !3150, inlinedAt: !3073)
!3157 = !DILocation(line: 2125, column: 5, scope: !3141, inlinedAt: !3073)
!3158 = !DILocation(line: 2127, column: 7, scope: !3159, inlinedAt: !3073)
!3159 = distinct !DILexicalBlock(scope: !3138, file: !3, line: 2125, column: 12)
!3160 = !DILocation(line: 0, scope: !3062, inlinedAt: !3073)
!3161 = !DILocation(line: 2145, column: 3, scope: !3062, inlinedAt: !3073)
!3162 = !DILocation(line: 2146, column: 1, scope: !3062, inlinedAt: !3073)
!3163 = !DILocation(line: 2276, column: 3, scope: !2797)
!3164 = !DILocation(line: 0, scope: !3165)
!3165 = distinct !DILexicalBlock(scope: !3038, file: !3, line: 2253, column: 14)
!3166 = !DILocation(line: 2277, column: 1, scope: !2797)
!3167 = distinct !DISubprogram(name: "nd6_get_destination_mtu", scope: !3, file: !3, line: 2288, type: !3168, isLocal: false, isDefinition: true, scopeLine: 2289, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3170)
!3168 = !DISubroutineType(types: !3169)
!3169 = !{!131, !162, !274}
!3170 = !{!3171, !3172, !3173}
!3171 = !DILocalVariable(name: "ip6addr", arg: 1, scope: !3167, file: !3, line: 2288, type: !162)
!3172 = !DILocalVariable(name: "netif", arg: 2, scope: !3167, file: !3, line: 2288, type: !274)
!3173 = !DILocalVariable(name: "i", scope: !3167, file: !3, line: 2290, type: !466)
!3174 = !DILocation(line: 2288, column: 43, scope: !3167)
!3175 = !DILocation(line: 2288, column: 66, scope: !3167)
!3176 = !DILocation(line: 1560, column: 52, scope: !1461, inlinedAt: !3177)
!3177 = distinct !DILocation(line: 2292, column: 7, scope: !3167)
!3178 = !DILocation(line: 1562, column: 9, scope: !1461, inlinedAt: !3177)
!3179 = !DILocation(line: 1566, column: 8, scope: !1460, inlinedAt: !3177)
!3180 = !DILocation(line: 1566, column: 3, scope: !1460, inlinedAt: !3177)
!3181 = !DILocation(line: 1567, column: 9, scope: !1475, inlinedAt: !3177)
!3182 = !DILocation(line: 1567, column: 9, scope: !1476, inlinedAt: !3177)
!3183 = !DILocation(line: 1566, column: 47, scope: !1477, inlinedAt: !3177)
!3184 = !DILocation(line: 1566, column: 3, scope: !1477, inlinedAt: !3177)
!3185 = !DILocation(line: 1566, column: 17, scope: !1477, inlinedAt: !3177)
!3186 = !DILocation(line: 1571, column: 3, scope: !1461, inlinedAt: !3177)
!3187 = !DILocation(line: 1572, column: 1, scope: !1461, inlinedAt: !3177)
!3188 = !DILocation(line: 2290, column: 9, scope: !3167)
!3189 = !DILocation(line: 2293, column: 7, scope: !3167)
!3190 = !DILocation(line: 1568, column: 7, scope: !1492, inlinedAt: !3177)
!3191 = !DILocation(line: 2294, column: 9, scope: !3192)
!3192 = distinct !DILexicalBlock(scope: !3193, file: !3, line: 2294, column: 9)
!3193 = distinct !DILexicalBlock(scope: !3194, file: !3, line: 2293, column: 15)
!3194 = distinct !DILexicalBlock(scope: !3167, file: !3, line: 2293, column: 7)
!3195 = !DILocation(line: 2294, column: 30, scope: !3192)
!3196 = !DILocation(line: 2294, column: 35, scope: !3192)
!3197 = !DILocation(line: 2294, column: 9, scope: !3193)
!3198 = !DILocation(line: 2299, column: 13, scope: !3199)
!3199 = distinct !DILexicalBlock(scope: !3167, file: !3, line: 2299, column: 7)
!3200 = !DILocation(line: 2299, column: 7, scope: !3167)
!3201 = !DILocation(line: 2300, column: 12, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !3199, file: !3, line: 2299, column: 22)
!3203 = !DILocation(line: 2300, column: 5, scope: !3202)
!3204 = !DILocation(line: 0, scope: !3167)
!3205 = !DILocation(line: 0, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3192, file: !3, line: 2294, column: 40)
!3207 = !DILocation(line: 2304, column: 1, scope: !3167)
!3208 = distinct !DISubprogram(name: "nd6_reachability_hint", scope: !3, file: !3, line: 2318, type: !3209, isLocal: false, isDefinition: true, scopeLine: 2319, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3211)
!3209 = !DISubroutineType(types: !3210)
!3210 = !{null, !162}
!3211 = !{!3212, !3213, !3214}
!3212 = !DILocalVariable(name: "ip6addr", arg: 1, scope: !3208, file: !3, line: 2318, type: !162)
!3213 = !DILocalVariable(name: "i", scope: !3208, file: !3, line: 2320, type: !307)
!3214 = !DILocalVariable(name: "dst_idx", scope: !3208, file: !3, line: 2321, type: !466)
!3215 = !DILocation(line: 2318, column: 41, scope: !3208)
!3216 = !DILocation(line: 2324, column: 7, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3208, file: !3, line: 2324, column: 7)
!3218 = !DILocation(line: 2324, column: 7, scope: !3208)
!3219 = !DILocation(line: 2326, column: 5, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !3217, file: !3, line: 2324, column: 99)
!3221 = !DILocation(line: 2327, column: 3, scope: !3220)
!3222 = !DILocation(line: 2321, column: 9, scope: !3208)
!3223 = !DILocation(line: 2330, column: 7, scope: !3208)
!3224 = !DILocation(line: 1560, column: 52, scope: !1461, inlinedAt: !3225)
!3225 = distinct !DILocation(line: 2328, column: 15, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !3217, file: !3, line: 2327, column: 10)
!3227 = !DILocation(line: 1562, column: 9, scope: !1461, inlinedAt: !3225)
!3228 = !DILocation(line: 1566, column: 8, scope: !1460, inlinedAt: !3225)
!3229 = !DILocation(line: 1566, column: 3, scope: !1460, inlinedAt: !3225)
!3230 = !DILocation(line: 1567, column: 9, scope: !1475, inlinedAt: !3225)
!3231 = !DILocation(line: 1567, column: 9, scope: !1476, inlinedAt: !3225)
!3232 = !DILocation(line: 1566, column: 47, scope: !1477, inlinedAt: !3225)
!3233 = !DILocation(line: 1566, column: 3, scope: !1477, inlinedAt: !3225)
!3234 = !DILocation(line: 1566, column: 17, scope: !1477, inlinedAt: !3225)
!3235 = !DILocation(line: 1571, column: 3, scope: !1461, inlinedAt: !3225)
!3236 = !DILocation(line: 1572, column: 1, scope: !1461, inlinedAt: !3225)
!3237 = !DILocation(line: 1568, column: 7, scope: !1492, inlinedAt: !3225)
!3238 = !DILocation(line: 2330, column: 15, scope: !3239)
!3239 = distinct !DILexicalBlock(scope: !3208, file: !3, line: 2330, column: 7)
!3240 = !DILocation(line: 2335, column: 7, scope: !3241)
!3241 = distinct !DILexicalBlock(scope: !3208, file: !3, line: 2335, column: 7)
!3242 = !DILocation(line: 2335, column: 7, scope: !3208)
!3243 = !DILocation(line: 2320, column: 8, scope: !3208)
!3244 = !DILocation(line: 2337, column: 5, scope: !3245)
!3245 = distinct !DILexicalBlock(scope: !3241, file: !3, line: 2335, column: 129)
!3246 = !DILocation(line: 2338, column: 3, scope: !3245)
!3247 = !DILocation(line: 1403, column: 8, scope: !623, inlinedAt: !3248)
!3248 = distinct !DILocation(line: 2339, column: 9, scope: !3249)
!3249 = distinct !DILexicalBlock(scope: !3241, file: !3, line: 2338, column: 10)
!3250 = !DILocation(line: 1404, column: 8, scope: !632, inlinedAt: !3248)
!3251 = !DILocation(line: 1404, column: 3, scope: !632, inlinedAt: !3248)
!3252 = !DILocation(line: 1405, column: 9, scope: !635, inlinedAt: !3248)
!3253 = !DILocation(line: 1405, column: 9, scope: !636, inlinedAt: !3248)
!3254 = !DILocation(line: 1406, column: 7, scope: !652, inlinedAt: !3248)
!3255 = !DILocation(line: 1404, column: 44, scope: !637, inlinedAt: !3248)
!3256 = !DILocation(line: 1404, column: 3, scope: !637, inlinedAt: !3248)
!3257 = !DILocation(line: 1404, column: 17, scope: !637, inlinedAt: !3248)
!3258 = !DILocation(line: 0, scope: !623, inlinedAt: !3248)
!3259 = !DILocation(line: 0, scope: !3249)
!3260 = !DILocation(line: 1410, column: 1, scope: !623, inlinedAt: !3248)
!3261 = !DILocation(line: 2341, column: 9, scope: !3262)
!3262 = distinct !DILexicalBlock(scope: !3208, file: !3, line: 2341, column: 7)
!3263 = !DILocation(line: 2341, column: 7, scope: !3208)
!3264 = !DILocation(line: 2346, column: 7, scope: !3265)
!3265 = distinct !DILexicalBlock(scope: !3208, file: !3, line: 2346, column: 7)
!3266 = !DILocation(line: 2346, column: 25, scope: !3265)
!3267 = !DILocation(line: 2346, column: 31, scope: !3265)
!3268 = !DILocation(line: 2346, column: 49, scope: !3265)
!3269 = !DILocation(line: 2346, column: 76, scope: !3265)
!3270 = !DILocation(line: 2346, column: 7, scope: !3208)
!3271 = !DILocation(line: 2351, column: 27, scope: !3208)
!3272 = !DILocation(line: 2352, column: 46, scope: !3208)
!3273 = !DILocation(line: 2352, column: 29, scope: !3208)
!3274 = !DILocation(line: 2352, column: 44, scope: !3208)
!3275 = !DILocation(line: 2353, column: 1, scope: !3208)
!3276 = !DILocation(line: 0, scope: !3277)
!3277 = distinct !DILexicalBlock(scope: !3239, file: !3, line: 2330, column: 20)
!3278 = distinct !DISubprogram(name: "nd6_cleanup_netif", scope: !3, file: !3, line: 2362, type: !331, isLocal: false, isDefinition: true, scopeLine: 2363, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3279)
!3279 = !{!3280, !3281, !3282}
!3280 = !DILocalVariable(name: "netif", arg: 1, scope: !3278, file: !3, line: 2362, type: !274)
!3281 = !DILocalVariable(name: "i", scope: !3278, file: !3, line: 2364, type: !117)
!3282 = !DILocalVariable(name: "router_index", scope: !3278, file: !3, line: 2365, type: !307)
!3283 = !DILocation(line: 2362, column: 33, scope: !3278)
!3284 = !DILocation(line: 2364, column: 8, scope: !3278)
!3285 = !DILocation(line: 2366, column: 8, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3278, file: !3, line: 2366, column: 3)
!3287 = !DILocation(line: 2366, column: 3, scope: !3286)
!3288 = !DILocation(line: 2367, column: 24, scope: !3289)
!3289 = distinct !DILexicalBlock(scope: !3290, file: !3, line: 2367, column: 9)
!3290 = distinct !DILexicalBlock(scope: !3291, file: !3, line: 2366, column: 47)
!3291 = distinct !DILexicalBlock(scope: !3286, file: !3, line: 2366, column: 3)
!3292 = !DILocation(line: 2367, column: 30, scope: !3289)
!3293 = !DILocation(line: 2367, column: 9, scope: !3290)
!3294 = !DILocation(line: 2368, column: 28, scope: !3295)
!3295 = distinct !DILexicalBlock(scope: !3289, file: !3, line: 2367, column: 40)
!3296 = !DILocation(line: 2369, column: 5, scope: !3295)
!3297 = !DILocation(line: 2366, column: 3, scope: !3291)
!3298 = !DILocation(line: 2372, column: 9, scope: !3299)
!3299 = distinct !DILexicalBlock(scope: !3300, file: !3, line: 2372, column: 9)
!3300 = distinct !DILexicalBlock(scope: !3301, file: !3, line: 2371, column: 48)
!3301 = distinct !DILexicalBlock(scope: !3302, file: !3, line: 2371, column: 3)
!3302 = distinct !DILexicalBlock(scope: !3278, file: !3, line: 2371, column: 3)
!3303 = !DILocation(line: 2372, column: 27, scope: !3299)
!3304 = !DILocation(line: 2372, column: 33, scope: !3299)
!3305 = !DILocation(line: 2372, column: 9, scope: !3300)
!3306 = !DILocation(line: 2365, column: 8, scope: !3278)
!3307 = !DILocation(line: 2373, column: 12, scope: !3308)
!3308 = distinct !DILexicalBlock(scope: !3309, file: !3, line: 2373, column: 7)
!3309 = distinct !DILexicalBlock(scope: !3299, file: !3, line: 2372, column: 43)
!3310 = !DILocation(line: 2373, column: 7, scope: !3308)
!3311 = !DILocation(line: 2374, column: 47, scope: !3312)
!3312 = distinct !DILexicalBlock(scope: !3313, file: !3, line: 2374, column: 13)
!3313 = distinct !DILexicalBlock(scope: !3314, file: !3, line: 2373, column: 83)
!3314 = distinct !DILexicalBlock(scope: !3308, file: !3, line: 2373, column: 7)
!3315 = !DILocation(line: 2374, column: 62, scope: !3312)
!3316 = !DILocation(line: 2374, column: 13, scope: !3313)
!3317 = !DILocation(line: 2375, column: 60, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3312, file: !3, line: 2374, column: 85)
!3319 = !DILocation(line: 2376, column: 51, scope: !3318)
!3320 = !DILocation(line: 2377, column: 9, scope: !3318)
!3321 = !DILocation(line: 2373, column: 7, scope: !3314)
!3322 = !DILocation(line: 2379, column: 25, scope: !3309)
!3323 = !DILocation(line: 2379, column: 34, scope: !3309)
!3324 = !DILocation(line: 1529, column: 36, scope: !1833, inlinedAt: !3325)
!3325 = distinct !DILocation(line: 2380, column: 7, scope: !3309)
!3326 = !DILocation(line: 1531, column: 15, scope: !1839, inlinedAt: !3325)
!3327 = !DILocation(line: 1531, column: 7, scope: !1833, inlinedAt: !3325)
!3328 = !DILocation(line: 1534, column: 7, scope: !1833, inlinedAt: !3325)
!3329 = !DILocation(line: 1540, column: 25, scope: !1843, inlinedAt: !3325)
!3330 = !DILocation(line: 1540, column: 27, scope: !1843, inlinedAt: !3325)
!3331 = !DILocation(line: 1540, column: 7, scope: !1833, inlinedAt: !3325)
!3332 = !DILocation(line: 1541, column: 5, scope: !1847, inlinedAt: !3325)
!3333 = !DILocation(line: 1542, column: 25, scope: !1847, inlinedAt: !3325)
!3334 = !DILocation(line: 1543, column: 3, scope: !1847, inlinedAt: !3325)
!3335 = !DILocation(line: 1545, column: 21, scope: !1833, inlinedAt: !3325)
!3336 = !DILocation(line: 1545, column: 27, scope: !1833, inlinedAt: !3325)
!3337 = !DILocation(line: 1546, column: 30, scope: !1833, inlinedAt: !3325)
!3338 = !DILocation(line: 1547, column: 27, scope: !1833, inlinedAt: !3325)
!3339 = !DILocation(line: 1548, column: 29, scope: !1833, inlinedAt: !3325)
!3340 = !DILocation(line: 1548, column: 44, scope: !1833, inlinedAt: !3325)
!3341 = !DILocation(line: 1549, column: 3, scope: !1857, inlinedAt: !3325)
!3342 = !DILocation(line: 1550, column: 1, scope: !1833, inlinedAt: !3325)
!3343 = !DILocation(line: 2381, column: 5, scope: !3309)
!3344 = !DILocation(line: 2371, column: 44, scope: !3301)
!3345 = !DILocation(line: 2371, column: 3, scope: !3301)
!3346 = !DILocation(line: 2371, column: 3, scope: !3302)
!3347 = !DILocation(line: 2371, column: 17, scope: !3301)
!3348 = distinct !{!3348, !3346, !3349}
!3349 = !DILocation(line: 2382, column: 3, scope: !3302)
!3350 = !DILocation(line: 1615, column: 7, scope: !2649, inlinedAt: !3351)
!3351 = distinct !DILocation(line: 2386, column: 3, scope: !3278)
!3352 = !DILocation(line: 1617, column: 8, scope: !2654, inlinedAt: !3351)
!3353 = !DILocation(line: 1617, column: 3, scope: !2654, inlinedAt: !3351)
!3354 = !DILocation(line: 1618, column: 5, scope: !2657, inlinedAt: !3351)
!3355 = !DILocation(line: 1617, column: 3, scope: !2659, inlinedAt: !3351)
!3356 = !DILocation(line: 1620, column: 1, scope: !2649, inlinedAt: !3351)
!3357 = !DILocation(line: 2387, column: 1, scope: !3278)
!3358 = !DILocation(line: 2371, column: 8, scope: !3302)
!3359 = distinct !DISubprogram(name: "nd6_adjust_mld_membership", scope: !3, file: !3, line: 2399, type: !3360, isLocal: false, isDefinition: true, scopeLine: 2400, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3362)
!3360 = !DISubroutineType(types: !3361)
!3361 = !{null, !274, !307, !117}
!3362 = !{!3363, !3364, !3365, !3366, !3367, !3368}
!3363 = !DILocalVariable(name: "netif", arg: 1, scope: !3359, file: !3, line: 2399, type: !274)
!3364 = !DILocalVariable(name: "addr_idx", arg: 2, scope: !3359, file: !3, line: 2399, type: !307)
!3365 = !DILocalVariable(name: "new_state", arg: 3, scope: !3359, file: !3, line: 2399, type: !117)
!3366 = !DILocalVariable(name: "old_state", scope: !3359, file: !3, line: 2401, type: !117)
!3367 = !DILocalVariable(name: "old_member", scope: !3359, file: !3, line: 2401, type: !117)
!3368 = !DILocalVariable(name: "new_member", scope: !3359, file: !3, line: 2401, type: !117)
!3369 = !DILocation(line: 2399, column: 41, scope: !3359)
!3370 = !DILocation(line: 2399, column: 53, scope: !3359)
!3371 = !DILocation(line: 2399, column: 68, scope: !3359)
!3372 = !DILocation(line: 2403, column: 15, scope: !3359)
!3373 = !DILocation(line: 2401, column: 8, scope: !3359)
!3374 = !DILocation(line: 2408, column: 27, scope: !3359)
!3375 = !DILocation(line: 2408, column: 47, scope: !3359)
!3376 = !DILocation(line: 2408, column: 60, scope: !3359)
!3377 = !DILocation(line: 2408, column: 83, scope: !3359)
!3378 = !DILocation(line: 2408, column: 96, scope: !3359)
!3379 = !DILocation(line: 2409, column: 27, scope: !3359)
!3380 = !DILocation(line: 2409, column: 47, scope: !3359)
!3381 = !DILocation(line: 2409, column: 60, scope: !3359)
!3382 = !DILocation(line: 2409, column: 83, scope: !3359)
!3383 = !DILocation(line: 2409, column: 96, scope: !3359)
!3384 = !DILocation(line: 2401, column: 31, scope: !3359)
!3385 = !DILocation(line: 2411, column: 21, scope: !3386)
!3386 = distinct !DILexicalBlock(scope: !3359, file: !3, line: 2411, column: 7)
!3387 = !DILocation(line: 2411, column: 18, scope: !3386)
!3388 = !DILocation(line: 2411, column: 7, scope: !3359)
!3389 = !DILocation(line: 2412, column: 5, scope: !3390)
!3390 = distinct !DILexicalBlock(scope: !3391, file: !3, line: 2412, column: 5)
!3391 = distinct !DILexicalBlock(scope: !3386, file: !3, line: 2411, column: 33)
!3392 = !DILocation(line: 2413, column: 5, scope: !3391)
!3393 = !DILocation(line: 2415, column: 9, scope: !3394)
!3394 = distinct !DILexicalBlock(scope: !3391, file: !3, line: 2415, column: 9)
!3395 = !DILocation(line: 2415, column: 9, scope: !3391)
!3396 = !DILocation(line: 2416, column: 7, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !3394, file: !3, line: 2415, column: 21)
!3398 = !DILocation(line: 2417, column: 5, scope: !3397)
!3399 = !DILocation(line: 2418, column: 7, scope: !3400)
!3400 = distinct !DILexicalBlock(scope: !3394, file: !3, line: 2417, column: 12)
!3401 = !DILocation(line: 2421, column: 1, scope: !3359)
!3402 = distinct !DISubprogram(name: "nd6_restart_netif", scope: !3, file: !3, line: 2426, type: !331, isLocal: false, isDefinition: true, scopeLine: 2427, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3403)
!3403 = !{!3404}
!3404 = !DILocalVariable(name: "netif", arg: 1, scope: !3402, file: !3, line: 2426, type: !274)
!3405 = !DILocation(line: 2426, column: 33, scope: !3402)
!3406 = !DILocation(line: 2430, column: 10, scope: !3402)
!3407 = !DILocation(line: 2430, column: 19, scope: !3402)
!3408 = !DILocation(line: 2432, column: 1, scope: !3402)
!3409 = distinct !DISubprogram(name: "nd6_free_q", scope: !3, file: !3, line: 2155, type: !3410, isLocal: true, isDefinition: true, scopeLine: 2156, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3412)
!3410 = !DISubroutineType(types: !3411)
!3411 = !{null, !248}
!3412 = !{!3413, !3414}
!3413 = !DILocalVariable(name: "q", arg: 1, scope: !3409, file: !3, line: 2155, type: !248)
!3414 = !DILocalVariable(name: "r", scope: !3409, file: !3, line: 2157, type: !248)
!3415 = !DILocation(line: 2155, column: 32, scope: !3409)
!3416 = !DILocation(line: 2158, column: 3, scope: !3417)
!3417 = distinct !DILexicalBlock(scope: !3418, file: !3, line: 2158, column: 3)
!3418 = distinct !DILexicalBlock(scope: !3409, file: !3, line: 2158, column: 3)
!3419 = !DILocation(line: 2158, column: 3, scope: !3418)
!3420 = !DILocation(line: 2158, column: 3, scope: !3421)
!3421 = distinct !DILexicalBlock(scope: !3422, file: !3, line: 2158, column: 3)
!3422 = distinct !DILexicalBlock(scope: !3417, file: !3, line: 2158, column: 3)
!3423 = !DILocation(line: 2158, column: 3, scope: !3424)
!3424 = distinct !DILexicalBlock(scope: !3425, file: !3, line: 2158, column: 3)
!3425 = distinct !DILexicalBlock(scope: !3426, file: !3, line: 2158, column: 3)
!3426 = distinct !DILexicalBlock(scope: !3421, file: !3, line: 2158, column: 3)
!3427 = !DILocation(line: 2159, column: 3, scope: !3428)
!3428 = distinct !DILexicalBlock(scope: !3429, file: !3, line: 2159, column: 3)
!3429 = distinct !DILexicalBlock(scope: !3409, file: !3, line: 2159, column: 3)
!3430 = !DILocation(line: 2159, column: 3, scope: !3429)
!3431 = !DILocation(line: 2160, column: 3, scope: !3409)
!3432 = !DILocation(line: 2157, column: 23, scope: !3409)
!3433 = !DILocation(line: 2162, column: 12, scope: !3434)
!3434 = distinct !DILexicalBlock(scope: !3409, file: !3, line: 2160, column: 13)
!3435 = !DILocation(line: 2163, column: 5, scope: !3436)
!3436 = distinct !DILexicalBlock(scope: !3434, file: !3, line: 2163, column: 5)
!3437 = !DILocation(line: 2159, column: 3, scope: !3438)
!3438 = distinct !DILexicalBlock(scope: !3439, file: !3, line: 2159, column: 3)
!3439 = distinct !DILexicalBlock(scope: !3428, file: !3, line: 2159, column: 3)
!3440 = !DILocation(line: 2159, column: 3, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !3442, file: !3, line: 2159, column: 3)
!3442 = distinct !DILexicalBlock(scope: !3443, file: !3, line: 2159, column: 3)
!3443 = distinct !DILexicalBlock(scope: !3438, file: !3, line: 2159, column: 3)
!3444 = !DILocation(line: 2163, column: 5, scope: !3445)
!3445 = distinct !DILexicalBlock(scope: !3446, file: !3, line: 2163, column: 5)
!3446 = distinct !DILexicalBlock(scope: !3447, file: !3, line: 2163, column: 5)
!3447 = distinct !DILexicalBlock(scope: !3436, file: !3, line: 2163, column: 5)
!3448 = !DILocation(line: 2163, column: 5, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !3450, file: !3, line: 2163, column: 5)
!3450 = distinct !DILexicalBlock(scope: !3451, file: !3, line: 2163, column: 5)
!3451 = distinct !DILexicalBlock(scope: !3445, file: !3, line: 2163, column: 5)
!3452 = !DILocation(line: 2164, column: 5, scope: !3434)
!3453 = !DILocation(line: 2165, column: 31, scope: !3434)
!3454 = !DILocation(line: 2165, column: 5, scope: !3434)
!3455 = distinct !{!3455, !3431, !3456}
!3456 = !DILocation(line: 2166, column: 3, scope: !3409)
!3457 = !DILocation(line: 2163, column: 5, scope: !3447)
!3458 = !DILocation(line: 2167, column: 1, scope: !3409)
