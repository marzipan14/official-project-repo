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
@.str = private unnamed_addr constant [19 x i8] c"bad valid lifetime\00", align 1
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
  switch i8 %8, label %1349 [
    i8 -120, label %9
    i8 -121, label %251
    i8 -122, label %494
    i8 -119, label %1091
    i8 2, label %1274
  ], !dbg !532

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 3, !dbg !533
  %11 = load i16, i16* %10, align 2, !dbg !533, !tbaa !535
  %12 = icmp ult i16 %11, 24, !dbg !536
  br i1 %12, label %13, label %19, !dbg !537

; <label>:13:                                     ; preds = %9
  %14 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !538
  %15 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 5), align 2, !dbg !540, !tbaa !541
  %16 = add i16 %15, 1, !dbg !540
  store i16 %16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 5), align 2, !dbg !540, !tbaa !541
  %17 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !542, !tbaa !543
  %18 = add i16 %17, 1, !dbg !542
  store i16 %18, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !542, !tbaa !543
  br label %1362

; <label>:19:                                     ; preds = %9
  %20 = getelementptr inbounds i8, i8* %7, i64 8, !dbg !545
  %21 = bitcast i8* %20 to i32*, !dbg !545
  %22 = load i32, i32* %21, align 1, !dbg !545, !tbaa !547
  %23 = getelementptr inbounds i8, i8* %7, i64 12, !dbg !545
  %24 = bitcast i8* %23 to i32*, !dbg !545
  %25 = load i32, i32* %24, align 1, !dbg !545, !tbaa !547
  %26 = getelementptr inbounds i8, i8* %7, i64 16, !dbg !545
  %27 = bitcast i8* %26 to i32*, !dbg !545
  %28 = load i32, i32* %27, align 1, !dbg !545, !tbaa !547
  %29 = getelementptr inbounds i8, i8* %7, i64 20, !dbg !545
  %30 = bitcast i8* %29 to i32*, !dbg !545
  %31 = load i32, i32* %30, align 1, !dbg !545, !tbaa !547
  %32 = and i32 %22, 49407, !dbg !549
  %33 = icmp eq i32 %32, 33022, !dbg !549
  br i1 %33, label %34, label %38, !dbg !549

; <label>:34:                                     ; preds = %19
  %35 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 23, !dbg !549
  %36 = load i8, i8* %35, align 8, !dbg !549, !tbaa !550
  %37 = add i8 %36, 1, !dbg !549
  br label %38, !dbg !549

; <label>:38:                                     ; preds = %19, %34
  %39 = phi i8 [ %37, %34 ], [ 0, %19 ]
  %40 = load %struct.ip6_hdr*, %struct.ip6_hdr** getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 3), align 8, !dbg !553, !tbaa !555
  %41 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %40, i64 0, i32 3, !dbg !553
  %42 = load i8, i8* %41, align 1, !dbg !553, !tbaa !557
  %43 = icmp eq i8 %42, -1, !dbg !560
  br i1 %43, label %44, label %51, !dbg !561

; <label>:44:                                     ; preds = %38
  %45 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !562
  %46 = load i8, i8* %45, align 1, !dbg !562, !tbaa !563
  %47 = icmp ne i8 %46, 0, !dbg !565
  %48 = and i32 %22, 255, !dbg !566
  %49 = icmp eq i32 %48, 255, !dbg !566
  %50 = or i1 %49, %47, !dbg !567
  br i1 %50, label %51, label %57, !dbg !567

; <label>:51:                                     ; preds = %44, %38
  %52 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !568
  %53 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 8), align 2, !dbg !570, !tbaa !571
  %54 = add i16 %53, 1, !dbg !570
  store i16 %54, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 8), align 2, !dbg !570, !tbaa !571
  %55 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !572, !tbaa !543
  %56 = add i16 %55, 1, !dbg !572
  store i16 %56, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !572, !tbaa !543
  br label %1362

; <label>:57:                                     ; preds = %44
  %58 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !573, !tbaa !530
  %59 = and i32 %58, 255, !dbg !573
  %60 = icmp eq i32 %59, 255, !dbg !573
  br i1 %60, label %61, label %168, !dbg !575

; <label>:61:                                     ; preds = %57
  %62 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 5, i64 0, !dbg !577
  %63 = load i8, i8* %62, align 1, !dbg !577, !tbaa !530
  switch i8 %63, label %64 [
    i8 0, label %106
    i8 64, label %106
  ], !dbg !583

; <label>:64:                                     ; preds = %61
  %65 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !584
  %66 = load i32, i32* %65, align 8, !dbg !584, !tbaa !530
  %67 = icmp eq i32 %22, %66, !dbg !584
  br i1 %67, label %68, label %106, !dbg !584

; <label>:68:                                     ; preds = %64
  %69 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !584
  %70 = load i32, i32* %69, align 4, !dbg !584, !tbaa !530
  %71 = icmp eq i32 %25, %70, !dbg !584
  br i1 %71, label %72, label %106, !dbg !584

; <label>:72:                                     ; preds = %68
  %73 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !584
  %74 = load i32, i32* %73, align 8, !dbg !584, !tbaa !530
  %75 = icmp eq i32 %28, %74, !dbg !584
  br i1 %75, label %76, label %106, !dbg !584

; <label>:76:                                     ; preds = %72
  %77 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !584
  %78 = load i32, i32* %77, align 4, !dbg !584, !tbaa !530
  %79 = icmp eq i32 %31, %78, !dbg !584
  br i1 %79, label %80, label %106, !dbg !584

; <label>:80:                                     ; preds = %76
  %81 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 0, i32 0, i32 0, i32 1, !dbg !584
  %82 = load i8, i8* %81, align 8, !dbg !584, !tbaa !530
  %83 = icmp eq i8 %39, %82, !dbg !584
  br i1 %83, label %86, label %106, !dbg !585

; <label>:84:                                     ; preds = %1379, %1402
  %85 = phi i8 [ 2, %1402 ], [ 1, %1379 ]
  tail call void @netif_ip6_addr_set_state(%struct.netif* nonnull %1, i8 signext %85, i8 zeroext 64) #7, !dbg !599
  br label %104, !dbg !600

; <label>:86:                                     ; preds = %80
  tail call void @netif_ip6_addr_set_state(%struct.netif* nonnull %1, i8 signext 0, i8 zeroext 64) #7, !dbg !599
  %87 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 5, i64 1, !dbg !602
  %88 = load i8, i8* %87, align 1, !dbg !602, !tbaa !530
  %89 = icmp eq i8 %88, 0, !dbg !602
  br i1 %89, label %95, label %90, !dbg !607

; <label>:90:                                     ; preds = %86
  %91 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 6, i64 1, !dbg !608
  %92 = load i32, i32* %91, align 4, !dbg !608, !tbaa !547
  %93 = icmp eq i32 %92, 0, !dbg !608
  br i1 %93, label %95, label %94, !dbg !609

; <label>:94:                                     ; preds = %90
  tail call void @netif_ip6_addr_set_state(%struct.netif* nonnull %1, i8 signext 1, i8 zeroext 64) #7, !dbg !610
  br label %95, !dbg !612

; <label>:95:                                     ; preds = %94, %90, %86
  %96 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 5, i64 2, !dbg !602
  %97 = load i8, i8* %96, align 1, !dbg !602, !tbaa !530
  %98 = icmp eq i8 %97, 0, !dbg !602
  br i1 %98, label %104, label %99, !dbg !607

; <label>:99:                                     ; preds = %95
  %100 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 6, i64 2, !dbg !608
  %101 = load i32, i32* %100, align 4, !dbg !608, !tbaa !547
  %102 = icmp eq i32 %101, 0, !dbg !608
  br i1 %102, label %104, label %103, !dbg !609

; <label>:103:                                    ; preds = %99
  tail call void @netif_ip6_addr_set_state(%struct.netif* nonnull %1, i8 signext 2, i8 zeroext 64) #7, !dbg !610
  br label %104, !dbg !612

; <label>:104:                                    ; preds = %84, %95, %99, %103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !613
  %105 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !614
  br label %1362

; <label>:106:                                    ; preds = %61, %61, %64, %68, %72, %76, %80
  %107 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 5, i64 1, !dbg !577
  %108 = load i8, i8* %107, align 1, !dbg !577, !tbaa !530
  switch i8 %108, label %1363 [
    i8 0, label %1383
    i8 64, label %1383
  ], !dbg !583

; <label>:109:                                    ; preds = %1406
  %110 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !615
  %111 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 5), align 2, !dbg !618, !tbaa !541
  %112 = add i16 %111, 1, !dbg !618
  store i16 %112, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 5), align 2, !dbg !618, !tbaa !541
  %113 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !619, !tbaa !543
  %114 = add i16 %113, 1, !dbg !619
  store i16 %114, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !619, !tbaa !543
  br label %1362

; <label>:115:                                    ; preds = %1406
  %116 = zext i16 %11 to i64, !dbg !620
  %117 = getelementptr inbounds i8, i8* %7, i64 25, !dbg !622
  %118 = load i8, i8* %117, align 1, !dbg !622, !tbaa !624
  %119 = zext i8 %118 to i64, !dbg !626
  %120 = shl nuw nsw i64 %119, 3, !dbg !627
  %121 = add nuw nsw i64 %120, 24, !dbg !628
  %122 = icmp ugt i64 %121, %116, !dbg !629
  br i1 %122, label %123, label %129, !dbg !630

; <label>:123:                                    ; preds = %115
  %124 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !631
  %125 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 5), align 2, !dbg !633, !tbaa !541
  %126 = add i16 %125, 1, !dbg !633
  store i16 %126, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 5), align 2, !dbg !633, !tbaa !541
  %127 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !634, !tbaa !543
  %128 = add i16 %127, 1, !dbg !634
  store i16 %128, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !634, !tbaa !543
  br label %1362

; <label>:129:                                    ; preds = %115, %150
  %130 = phi i64 [ %151, %150 ], [ 0, %115 ]
  %131 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %130, i32 0, i32 0, i64 0, !dbg !643
  %132 = load i32, i32* %131, align 8, !dbg !643, !tbaa !547
  %133 = icmp eq i32 %22, %132, !dbg !643
  br i1 %133, label %134, label %150, !dbg !643

; <label>:134:                                    ; preds = %129
  %135 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %130, i32 0, i32 0, i64 1, !dbg !643
  %136 = load i32, i32* %135, align 4, !dbg !643, !tbaa !547
  %137 = icmp eq i32 %25, %136, !dbg !643
  br i1 %137, label %138, label %150, !dbg !643

; <label>:138:                                    ; preds = %134
  %139 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %130, i32 0, i32 0, i64 2, !dbg !643
  %140 = load i32, i32* %139, align 8, !dbg !643, !tbaa !547
  %141 = icmp eq i32 %28, %140, !dbg !643
  br i1 %141, label %142, label %150, !dbg !643

; <label>:142:                                    ; preds = %138
  %143 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %130, i32 0, i32 0, i64 3, !dbg !643
  %144 = load i32, i32* %143, align 4, !dbg !643, !tbaa !547
  %145 = icmp eq i32 %31, %144, !dbg !643
  br i1 %145, label %146, label %150, !dbg !643

; <label>:146:                                    ; preds = %142
  %147 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %130, i32 0, i32 1, !dbg !643
  %148 = load i8, i8* %147, align 8, !dbg !643, !tbaa !648
  %149 = icmp eq i8 %39, %148, !dbg !643
  br i1 %149, label %154, label %150, !dbg !651

; <label>:150:                                    ; preds = %146, %142, %138, %134, %129
  %151 = add nuw nsw i64 %130, 1, !dbg !652
  %152 = icmp ult i64 %151, 10, !dbg !653
  br i1 %152, label %129, label %153, !dbg !654, !llvm.loop !655

; <label>:153:                                    ; preds = %150
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !658
  br label %1354

; <label>:154:                                    ; preds = %146
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !658
  %155 = getelementptr inbounds i8, i8* %7, i64 4, !dbg !659
  %156 = load i8, i8* %155, align 1, !dbg !659, !tbaa !663
  %157 = and i8 %156, 32, !dbg !664
  %158 = icmp eq i8 %157, 0, !dbg !664
  br i1 %158, label %1354, label %159, !dbg !665

; <label>:159:                                    ; preds = %154
  %160 = shl i64 %130, 56, !dbg !666
  %161 = ashr exact i64 %160, 56, !dbg !666
  %162 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %161, i32 2, i64 0, !dbg !666
  %163 = getelementptr inbounds i8, i8* %7, i64 26, !dbg !666
  %164 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 20, !dbg !666
  %165 = load i8, i8* %164, align 4, !dbg !666, !tbaa !668
  %166 = zext i8 %165 to i64, !dbg !666
  %167 = tail call i8* @memcpy(i8* nonnull %162, i8* nonnull %163, i64 %166) #7, !dbg !666
  br label %1354, !dbg !669

; <label>:168:                                    ; preds = %57, %189
  %169 = phi i64 [ %190, %189 ], [ 0, %57 ]
  %170 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %169, i32 0, i32 0, i64 0, !dbg !673
  %171 = load i32, i32* %170, align 8, !dbg !673, !tbaa !547
  %172 = icmp eq i32 %22, %171, !dbg !673
  br i1 %172, label %173, label %189, !dbg !673

; <label>:173:                                    ; preds = %168
  %174 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %169, i32 0, i32 0, i64 1, !dbg !673
  %175 = load i32, i32* %174, align 4, !dbg !673, !tbaa !547
  %176 = icmp eq i32 %25, %175, !dbg !673
  br i1 %176, label %177, label %189, !dbg !673

; <label>:177:                                    ; preds = %173
  %178 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %169, i32 0, i32 0, i64 2, !dbg !673
  %179 = load i32, i32* %178, align 8, !dbg !673, !tbaa !547
  %180 = icmp eq i32 %28, %179, !dbg !673
  br i1 %180, label %181, label %189, !dbg !673

; <label>:181:                                    ; preds = %177
  %182 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %169, i32 0, i32 0, i64 3, !dbg !673
  %183 = load i32, i32* %182, align 4, !dbg !673, !tbaa !547
  %184 = icmp eq i32 %31, %183, !dbg !673
  br i1 %184, label %185, label %189, !dbg !673

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %169, i32 0, i32 1, !dbg !673
  %187 = load i8, i8* %186, align 8, !dbg !673, !tbaa !648
  %188 = icmp eq i8 %39, %187, !dbg !673
  br i1 %188, label %193, label %189, !dbg !674

; <label>:189:                                    ; preds = %185, %181, %177, %173, %168
  %190 = add nuw nsw i64 %169, 1, !dbg !675
  %191 = icmp ult i64 %190, 10, !dbg !676
  br i1 %191, label %168, label %192, !dbg !677, !llvm.loop !655

; <label>:192:                                    ; preds = %189
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !678
  br label %196, !dbg !679

; <label>:193:                                    ; preds = %185
  %194 = trunc i64 %169 to i8, !dbg !674
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !678
  %195 = icmp slt i8 %194, 0, !dbg !680
  br i1 %195, label %196, label %198, !dbg !679

; <label>:196:                                    ; preds = %192, %193
  %197 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %0) #7, !dbg !682
  br label %1362

; <label>:198:                                    ; preds = %193
  %199 = getelementptr inbounds i8, i8* %7, i64 4, !dbg !684
  %200 = load i8, i8* %199, align 1, !dbg !684, !tbaa !663
  %201 = and i8 %200, 32, !dbg !686
  %202 = icmp eq i8 %201, 0, !dbg !686
  br i1 %202, label %203, label %209, !dbg !687

; <label>:203:                                    ; preds = %198
  %204 = shl i64 %169, 56, !dbg !688
  %205 = ashr exact i64 %204, 56, !dbg !688
  %206 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %205, i32 4, !dbg !689
  %207 = load i8, i8* %206, align 8, !dbg !689, !tbaa !690
  %208 = icmp eq i8 %207, 1, !dbg !691
  br i1 %208, label %209, label %241, !dbg !692

; <label>:209:                                    ; preds = %198, %203
  %210 = icmp ult i16 %11, 26, !dbg !693
  br i1 %210, label %211, label %217, !dbg !696

; <label>:211:                                    ; preds = %209
  %212 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %0) #7, !dbg !697
  %213 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 5), align 2, !dbg !699, !tbaa !541
  %214 = add i16 %213, 1, !dbg !699
  store i16 %214, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 5), align 2, !dbg !699, !tbaa !541
  %215 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !700, !tbaa !543
  %216 = add i16 %215, 1, !dbg !700
  store i16 %216, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !700, !tbaa !543
  br label %1362

; <label>:217:                                    ; preds = %209
  %218 = zext i16 %11 to i64, !dbg !701
  %219 = getelementptr inbounds i8, i8* %7, i64 25, !dbg !702
  %220 = load i8, i8* %219, align 1, !dbg !702, !tbaa !624
  %221 = zext i8 %220 to i64, !dbg !704
  %222 = shl nuw nsw i64 %221, 3, !dbg !705
  %223 = add nuw nsw i64 %222, 24, !dbg !706
  %224 = icmp ugt i64 %223, %218, !dbg !707
  br i1 %224, label %225, label %231, !dbg !708

; <label>:225:                                    ; preds = %217
  %226 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %0) #7, !dbg !709
  %227 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 5), align 2, !dbg !711, !tbaa !541
  %228 = add i16 %227, 1, !dbg !711
  store i16 %228, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 5), align 2, !dbg !711, !tbaa !541
  %229 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !712, !tbaa !543
  %230 = add i16 %229, 1, !dbg !712
  store i16 %230, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !712, !tbaa !543
  br label %1362

; <label>:231:                                    ; preds = %217
  %232 = shl i64 %169, 56, !dbg !713
  %233 = ashr exact i64 %232, 56, !dbg !713
  %234 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %233, i32 2, i64 0, !dbg !713
  %235 = getelementptr inbounds i8, i8* %7, i64 26, !dbg !713
  %236 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 20, !dbg !713
  %237 = load i8, i8* %236, align 4, !dbg !713, !tbaa !668
  %238 = zext i8 %237 to i64, !dbg !713
  %239 = tail call i8* @memcpy(i8* nonnull %234, i8* nonnull %235, i64 %238) #7, !dbg !713
  %240 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %233, i32 4, !dbg !714
  br label %241, !dbg !715

; <label>:241:                                    ; preds = %231, %203
  %242 = phi i8* [ %240, %231 ], [ %206, %203 ], !dbg !714
  %243 = phi i64 [ %233, %231 ], [ %205, %203 ], !dbg !716
  %244 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %243, i32 1, !dbg !717
  store %struct.netif* %1, %struct.netif** %244, align 8, !dbg !718, !tbaa !719
  store i8 2, i8* %242, align 8, !dbg !720, !tbaa !690
  %245 = load i32, i32* @reachable_time, align 4, !dbg !721, !tbaa !547
  %246 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %243, i32 6, i32 0, !dbg !722
  store i32 %245, i32* %246, align 4, !dbg !723, !tbaa !530
  %247 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %243, i32 3, !dbg !724
  %248 = load %struct.nd6_q_entry*, %struct.nd6_q_entry** %247, align 8, !dbg !724, !tbaa !726
  %249 = icmp eq %struct.nd6_q_entry* %248, null, !dbg !727
  br i1 %249, label %1354, label %250, !dbg !728

; <label>:250:                                    ; preds = %241
  tail call fastcc void @nd6_send_q(i8 signext %194) #8, !dbg !729
  br label %1354, !dbg !731

; <label>:251:                                    ; preds = %2
  %252 = bitcast %struct.ip6_addr* %3 to i8*, !dbg !732
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %252) #6, !dbg !732
  %253 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 3, !dbg !733
  %254 = load i16, i16* %253, align 2, !dbg !733, !tbaa !535
  %255 = icmp ult i16 %254, 24, !dbg !735
  br i1 %255, label %256, label %262, !dbg !736

; <label>:256:                                    ; preds = %251
  %257 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !737
  %258 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 5), align 2, !dbg !739, !tbaa !541
  %259 = add i16 %258, 1, !dbg !739
  store i16 %259, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 5), align 2, !dbg !739, !tbaa !541
  %260 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !740, !tbaa !543
  %261 = add i16 %260, 1, !dbg !740
  store i16 %261, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !740, !tbaa !543
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %252) #6, !dbg !741
  br label %1362

; <label>:262:                                    ; preds = %251
  %263 = getelementptr inbounds i8, i8* %7, i64 8, !dbg !743
  %264 = bitcast i8* %263 to <4 x i32>*, !dbg !743
  %265 = load <4 x i32>, <4 x i32>* %264, align 1, !dbg !743, !tbaa !547
  %266 = bitcast %struct.ip6_addr* %3 to <4 x i32>*, !dbg !743
  store <4 x i32> %265, <4 x i32>* %266, align 16, !dbg !743, !tbaa !547
  %267 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %3, i64 0, i32 1, !dbg !743
  store i8 0, i8* %267, align 16, !dbg !743, !tbaa !745
  %268 = extractelement <4 x i32> %265, i32 0, !dbg !746
  %269 = and i32 %268, 49407, !dbg !746
  %270 = icmp eq i32 %269, 33022, !dbg !746
  br i1 %270, label %271, label %275, !dbg !746

; <label>:271:                                    ; preds = %262
  %272 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 23, !dbg !746
  %273 = load i8, i8* %272, align 8, !dbg !746, !tbaa !550
  %274 = add i8 %273, 1, !dbg !746
  br label %275, !dbg !746

; <label>:275:                                    ; preds = %262, %271
  %276 = phi i8 [ %274, %271 ], [ 0, %262 ]
  store i8 %276, i8* %267, align 16, !dbg !746, !tbaa !745
  %277 = load %struct.ip6_hdr*, %struct.ip6_hdr** getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 3), align 8, !dbg !747, !tbaa !555
  %278 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %277, i64 0, i32 3, !dbg !747
  %279 = load i8, i8* %278, align 1, !dbg !747, !tbaa !557
  %280 = icmp eq i8 %279, -1, !dbg !749
  br i1 %280, label %281, label %288, !dbg !750

; <label>:281:                                    ; preds = %275
  %282 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !751
  %283 = load i8, i8* %282, align 1, !dbg !751, !tbaa !752
  %284 = icmp ne i8 %283, 0, !dbg !754
  %285 = and i32 %268, 255, !dbg !755
  %286 = icmp eq i32 %285, 255, !dbg !755
  %287 = or i1 %286, %284, !dbg !756
  br i1 %287, label %288, label %294, !dbg !756

; <label>:288:                                    ; preds = %281, %275
  %289 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !757
  %290 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 8), align 2, !dbg !759, !tbaa !571
  %291 = add i16 %290, 1, !dbg !759
  store i16 %291, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 8), align 2, !dbg !759, !tbaa !571
  %292 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !760, !tbaa !543
  %293 = add i16 %292, 1, !dbg !760
  store i16 %293, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !760, !tbaa !543
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %252) #6, !dbg !741
  br label %1362

; <label>:294:                                    ; preds = %281
  %295 = icmp ugt i16 %254, 25, !dbg !761
  br i1 %295, label %296, label %307, !dbg !763

; <label>:296:                                    ; preds = %294
  %297 = zext i16 %254 to i64, !dbg !764
  %298 = getelementptr inbounds i8, i8* %7, i64 24, !dbg !765
  %299 = bitcast i8* %298 to %struct.lladdr_option*, !dbg !767
  %300 = getelementptr inbounds i8, i8* %7, i64 25, !dbg !769
  %301 = load i8, i8* %300, align 1, !dbg !769, !tbaa !624
  %302 = zext i8 %301 to i64, !dbg !771
  %303 = shl nuw nsw i64 %302, 3, !dbg !772
  %304 = add nuw nsw i64 %303, 24, !dbg !773
  %305 = icmp ugt i64 %304, %297, !dbg !774
  %306 = select i1 %305, %struct.lladdr_option* null, %struct.lladdr_option* %299, !dbg !775
  br label %307, !dbg !775

; <label>:307:                                    ; preds = %296, %294
  %308 = phi %struct.lladdr_option* [ %306, %296 ], [ null, %294 ], !dbg !776
  %309 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 0), align 4
  %310 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 1), align 4
  %311 = or i32 %310, %309
  %312 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 2), align 4
  %313 = or i32 %311, %312
  %314 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 3), align 4
  %315 = or i32 %313, %314
  %316 = icmp eq i32 %315, 0
  %317 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 5, i64 0, !dbg !779
  %318 = load i8, i8* %317, align 1, !dbg !779, !tbaa !530
  %319 = zext i8 %318 to i32, !dbg !779
  %320 = and i32 %319, 16, !dbg !779
  %321 = icmp eq i32 %320, 0, !dbg !779
  br i1 %321, label %322, label %326, !dbg !784

; <label>:322:                                    ; preds = %307
  %323 = and i32 %319, 8, !dbg !785
  %324 = icmp ne i32 %323, 0, !dbg !785
  %325 = and i1 %324, %316, !dbg !786
  br i1 %325, label %326, label %349, !dbg !786

; <label>:326:                                    ; preds = %307, %322
  %327 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !787
  %328 = load i32, i32* %327, align 8, !dbg !787, !tbaa !530
  %329 = icmp eq i32 %268, %328, !dbg !787
  br i1 %329, label %330, label %349, !dbg !787

; <label>:330:                                    ; preds = %326
  %331 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !787
  %332 = load i32, i32* %331, align 4, !dbg !787, !tbaa !530
  %333 = extractelement <4 x i32> %265, i32 1, !dbg !787
  %334 = icmp eq i32 %333, %332, !dbg !787
  br i1 %334, label %335, label %349, !dbg !787

; <label>:335:                                    ; preds = %330
  %336 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !787
  %337 = load i32, i32* %336, align 8, !dbg !787, !tbaa !530
  %338 = extractelement <4 x i32> %265, i32 2, !dbg !787
  %339 = icmp eq i32 %338, %337, !dbg !787
  br i1 %339, label %340, label %349, !dbg !787

; <label>:340:                                    ; preds = %335
  %341 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !787
  %342 = load i32, i32* %341, align 4, !dbg !787, !tbaa !530
  %343 = extractelement <4 x i32> %265, i32 3, !dbg !787
  %344 = icmp eq i32 %343, %342, !dbg !787
  br i1 %344, label %345, label %349, !dbg !787

; <label>:345:                                    ; preds = %340
  %346 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 0, i32 0, i32 0, i32 1, !dbg !787
  %347 = load i8, i8* %346, align 8, !dbg !787, !tbaa !530
  %348 = icmp eq i8 %276, %347, !dbg !787
  br i1 %348, label %355, label %349, !dbg !788

; <label>:349:                                    ; preds = %322, %326, %330, %335, %340, %345
  %350 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 5, i64 1, !dbg !779
  %351 = load i8, i8* %350, align 1, !dbg !779, !tbaa !530
  %352 = zext i8 %351 to i32, !dbg !779
  %353 = and i32 %352, 16, !dbg !779
  %354 = icmp eq i32 %353, 0, !dbg !779
  br i1 %354, label %1408, label %1412, !dbg !784

; <label>:355:                                    ; preds = %1464, %1431, %345
  br i1 %316, label %356, label %418, !dbg !789

; <label>:356:                                    ; preds = %355
  %357 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 5, i64 1
  %358 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 5, i64 2
  %359 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 6, i64 1
  %360 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 6, i64 2
  %361 = extractelement <4 x i32> %265, i32 1
  %362 = extractelement <4 x i32> %265, i32 2
  %363 = extractelement <4 x i32> %265, i32 3
  br label %364, !dbg !791

; <label>:364:                                    ; preds = %415, %356
  %365 = phi i8 [ %318, %356 ], [ %417, %415 ], !dbg !794
  %366 = phi i64 [ 0, %356 ], [ %413, %415 ]
  %367 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 5, i64 %366, !dbg !794
  %368 = icmp eq i8 %365, 0, !dbg !794
  br i1 %368, label %412, label %369, !dbg !798

; <label>:369:                                    ; preds = %364
  %370 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 %366, i32 0, i32 0, !dbg !799
  %371 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %370, i64 0, i32 0, i64 0, !dbg !799
  %372 = load i32, i32* %371, align 8, !dbg !799, !tbaa !530
  %373 = icmp eq i32 %268, %372, !dbg !799
  br i1 %373, label %374, label %412, !dbg !799

; <label>:374:                                    ; preds = %369
  %375 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 %366, i32 0, i32 0, i32 0, i64 1, !dbg !799
  %376 = load i32, i32* %375, align 4, !dbg !799, !tbaa !530
  %377 = icmp eq i32 %361, %376, !dbg !799
  br i1 %377, label %378, label %412, !dbg !799

; <label>:378:                                    ; preds = %374
  %379 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 %366, i32 0, i32 0, i32 0, i64 2, !dbg !799
  %380 = load i32, i32* %379, align 8, !dbg !799, !tbaa !530
  %381 = icmp eq i32 %362, %380, !dbg !799
  br i1 %381, label %382, label %412, !dbg !799

; <label>:382:                                    ; preds = %378
  %383 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 %366, i32 0, i32 0, i32 0, i64 3, !dbg !799
  %384 = load i32, i32* %383, align 4, !dbg !799, !tbaa !530
  %385 = icmp eq i32 %363, %384, !dbg !799
  br i1 %385, label %386, label %412, !dbg !799

; <label>:386:                                    ; preds = %382
  %387 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 %366, i32 0, i32 0, i32 1, !dbg !799
  %388 = load i8, i8* %387, align 8, !dbg !799, !tbaa !530
  %389 = icmp eq i8 %276, %388, !dbg !799
  br i1 %389, label %390, label %412, !dbg !800

; <label>:390:                                    ; preds = %386
  tail call fastcc void @nd6_send_na(%struct.netif* nonnull %1, %struct.ip6_addr* nonnull %370, i8 zeroext 34) #8, !dbg !801
  %391 = load i8, i8* %367, align 1, !dbg !803, !tbaa !530
  %392 = and i8 %391, 8, !dbg !803
  %393 = icmp eq i8 %392, 0, !dbg !803
  br i1 %393, label %412, label %394, !dbg !805

; <label>:394:                                    ; preds = %390
  %395 = trunc i64 %366 to i8, !dbg !810
  tail call void @netif_ip6_addr_set_state(%struct.netif* nonnull %1, i8 signext %395, i8 zeroext 64) #7, !dbg !810
  %396 = icmp eq i64 %366, 0, !dbg !811
  br i1 %396, label %397, label %411, !dbg !812

; <label>:397:                                    ; preds = %394
  %398 = load i8, i8* %357, align 1, !dbg !814, !tbaa !530
  %399 = icmp eq i8 %398, 0, !dbg !814
  br i1 %399, label %404, label %400, !dbg !815

; <label>:400:                                    ; preds = %397
  %401 = load i32, i32* %359, align 4, !dbg !816, !tbaa !547
  %402 = icmp eq i32 %401, 0, !dbg !816
  br i1 %402, label %404, label %403, !dbg !817

; <label>:403:                                    ; preds = %400
  tail call void @netif_ip6_addr_set_state(%struct.netif* nonnull %1, i8 signext 1, i8 zeroext 64) #7, !dbg !818
  br label %404, !dbg !819

; <label>:404:                                    ; preds = %403, %400, %397
  %405 = load i8, i8* %358, align 1, !dbg !814, !tbaa !530
  %406 = icmp eq i8 %405, 0, !dbg !814
  br i1 %406, label %411, label %407, !dbg !815

; <label>:407:                                    ; preds = %404
  %408 = load i32, i32* %360, align 4, !dbg !816, !tbaa !547
  %409 = icmp eq i32 %408, 0, !dbg !816
  br i1 %409, label %411, label %410, !dbg !817

; <label>:410:                                    ; preds = %407
  tail call void @netif_ip6_addr_set_state(%struct.netif* nonnull %1, i8 signext 2, i8 zeroext 64) #7, !dbg !818
  br label %411, !dbg !819

; <label>:411:                                    ; preds = %394, %404, %407, %410
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !820
  br label %412, !dbg !821

; <label>:412:                                    ; preds = %390, %364, %369, %374, %378, %382, %386, %411
  %413 = add nuw nsw i64 %366, 1, !dbg !822
  %414 = icmp eq i64 %413, 3, !dbg !823
  br i1 %414, label %493, label %415, !dbg !791, !llvm.loop !824

; <label>:415:                                    ; preds = %412
  %416 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 5, i64 %413
  %417 = load i8, i8* %416, align 1, !dbg !794, !tbaa !530
  br label %364, !dbg !791

; <label>:418:                                    ; preds = %355
  %419 = icmp eq %struct.lladdr_option* %308, null, !dbg !826
  br i1 %419, label %422, label %420, !dbg !829

; <label>:420:                                    ; preds = %418
  %421 = load i8, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 1), align 4
  br label %428, !dbg !830

; <label>:422:                                    ; preds = %418
  %423 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !832
  %424 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 8), align 2, !dbg !834, !tbaa !571
  %425 = add i16 %424, 1, !dbg !834
  store i16 %425, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 8), align 2, !dbg !834, !tbaa !571
  %426 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !835, !tbaa !543
  %427 = add i16 %426, 1, !dbg !835
  store i16 %427, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !835, !tbaa !543
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %252) #6, !dbg !741
  br label %1362

; <label>:428:                                    ; preds = %420, %449
  %429 = phi i64 [ %450, %449 ], [ 0, %420 ]
  %430 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %429, i32 0, i32 0, i64 0, !dbg !830
  %431 = load i32, i32* %430, align 8, !dbg !830, !tbaa !547
  %432 = icmp eq i32 %309, %431, !dbg !830
  br i1 %432, label %433, label %449, !dbg !830

; <label>:433:                                    ; preds = %428
  %434 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %429, i32 0, i32 0, i64 1, !dbg !830
  %435 = load i32, i32* %434, align 4, !dbg !830, !tbaa !547
  %436 = icmp eq i32 %310, %435, !dbg !830
  br i1 %436, label %437, label %449, !dbg !830

; <label>:437:                                    ; preds = %433
  %438 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %429, i32 0, i32 0, i64 2, !dbg !830
  %439 = load i32, i32* %438, align 8, !dbg !830, !tbaa !547
  %440 = icmp eq i32 %312, %439, !dbg !830
  br i1 %440, label %441, label %449, !dbg !830

; <label>:441:                                    ; preds = %437
  %442 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %429, i32 0, i32 0, i64 3, !dbg !830
  %443 = load i32, i32* %442, align 4, !dbg !830, !tbaa !547
  %444 = icmp eq i32 %314, %443, !dbg !830
  br i1 %444, label %445, label %449, !dbg !830

; <label>:445:                                    ; preds = %441
  %446 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %429, i32 0, i32 1, !dbg !830
  %447 = load i8, i8* %446, align 8, !dbg !830, !tbaa !648
  %448 = icmp eq i8 %421, %447, !dbg !830
  br i1 %448, label %452, label %449, !dbg !837

; <label>:449:                                    ; preds = %445, %441, %437, %433, %428
  %450 = add nuw nsw i64 %429, 1, !dbg !838
  %451 = icmp ult i64 %450, 10, !dbg !839
  br i1 %451, label %428, label %466, !dbg !840, !llvm.loop !655

; <label>:452:                                    ; preds = %445
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !841
  %453 = shl i64 %429, 56, !dbg !842
  %454 = ashr exact i64 %453, 56, !dbg !842
  %455 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %454, i32 4, !dbg !846
  %456 = load i8, i8* %455, align 8, !dbg !846, !tbaa !690
  %457 = icmp eq i8 %456, 1, !dbg !847
  br i1 %457, label %458, label %492, !dbg !848

; <label>:458:                                    ; preds = %452
  %459 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %454, i32 1, !dbg !849
  store %struct.netif* %1, %struct.netif** %459, align 8, !dbg !851, !tbaa !719
  %460 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %454, i32 2, i64 0, !dbg !852
  %461 = getelementptr inbounds %struct.lladdr_option, %struct.lladdr_option* %308, i64 0, i32 2, i64 0, !dbg !852
  %462 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 20, !dbg !852
  %463 = load i8, i8* %462, align 4, !dbg !852, !tbaa !668
  %464 = zext i8 %463 to i64, !dbg !852
  %465 = tail call i8* @memcpy(i8* nonnull %460, i8* nonnull %461, i64 %464) #7, !dbg !852
  br label %488, !dbg !853

; <label>:466:                                    ; preds = %449
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !841
  %467 = tail call fastcc signext i8 @nd6_new_neighbor_cache_entry() #8, !dbg !854
  %468 = icmp slt i8 %467, 0, !dbg !856
  br i1 %468, label %469, label %473, !dbg !858

; <label>:469:                                    ; preds = %466
  %470 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %0) #7, !dbg !859
  %471 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 6), align 2, !dbg !861, !tbaa !862
  %472 = add i16 %471, 1, !dbg !861
  store i16 %472, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 6), align 2, !dbg !861, !tbaa !862
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %252) #6, !dbg !741
  br label %1362

; <label>:473:                                    ; preds = %466
  %474 = sext i8 %467 to i64, !dbg !863
  %475 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %474, i32 1, !dbg !864
  store %struct.netif* %1, %struct.netif** %475, align 8, !dbg !865, !tbaa !719
  %476 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %474, i32 2, i64 0, !dbg !866
  %477 = getelementptr inbounds %struct.lladdr_option, %struct.lladdr_option* %308, i64 0, i32 2, i64 0, !dbg !866
  %478 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 20, !dbg !866
  %479 = load i8, i8* %478, align 4, !dbg !866, !tbaa !668
  %480 = zext i8 %479 to i64, !dbg !866
  %481 = tail call i8* @memcpy(i8* nonnull %476, i8* nonnull %477, i64 %480) #7, !dbg !866
  %482 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %474, i32 0, i32 0, i64 0, !dbg !867
  %483 = load <4 x i32>, <4 x i32>* bitcast (i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 0) to <4 x i32>*), align 4, !dbg !867, !tbaa !530
  %484 = bitcast i32* %482 to <4 x i32>*, !dbg !867
  store <4 x i32> %483, <4 x i32>* %484, align 8, !dbg !867, !tbaa !547
  %485 = load i8, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 1), align 4, !dbg !867, !tbaa !530
  %486 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %474, i32 0, i32 1, !dbg !867
  store i8 %485, i8* %486, align 8, !dbg !867, !tbaa !648
  %487 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %474, i32 4, !dbg !869
  br label %488

; <label>:488:                                    ; preds = %473, %458
  %489 = phi i8* [ %455, %458 ], [ %487, %473 ]
  %490 = phi i64 [ %454, %458 ], [ %474, %473 ]
  store i8 4, i8* %489, align 8, !dbg !870, !tbaa !690
  %491 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %490, i32 6, i32 0, !dbg !870
  store i32 5, i32* %491, align 4, !dbg !870, !tbaa !530
  br label %492, !dbg !871

; <label>:492:                                    ; preds = %488, %452
  call fastcc void @nd6_send_na(%struct.netif* %1, %struct.ip6_addr* nonnull %3, i8 zeroext 96) #8, !dbg !871
  br label %493

; <label>:493:                                    ; preds = %412, %492
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %252) #6, !dbg !741
  br label %1354

; <label>:494:                                    ; preds = %2
  %495 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 3, !dbg !873
  %496 = load i16, i16* %495, align 2, !dbg !873, !tbaa !535
  %497 = icmp ult i16 %496, 16, !dbg !875
  br i1 %497, label %498, label %504, !dbg !876

; <label>:498:                                    ; preds = %494
  %499 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !877
  %500 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 5), align 2, !dbg !879, !tbaa !541
  %501 = add i16 %500, 1, !dbg !879
  store i16 %501, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 5), align 2, !dbg !879, !tbaa !541
  %502 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !880, !tbaa !543
  %503 = add i16 %502, 1, !dbg !880
  store i16 %503, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !880, !tbaa !543
  br label %1362, !dbg !881

; <label>:504:                                    ; preds = %494
  %505 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !883, !tbaa !530
  %506 = and i32 %505, 49407, !dbg !883
  %507 = icmp eq i32 %506, 33022, !dbg !883
  br i1 %507, label %508, label %517, !dbg !885

; <label>:508:                                    ; preds = %504
  %509 = load %struct.ip6_hdr*, %struct.ip6_hdr** getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 3), align 8, !dbg !886, !tbaa !555
  %510 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %509, i64 0, i32 3, !dbg !886
  %511 = load i8, i8* %510, align 1, !dbg !886, !tbaa !557
  %512 = icmp eq i8 %511, -1, !dbg !887
  br i1 %512, label %513, label %517, !dbg !888

; <label>:513:                                    ; preds = %508
  %514 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !889
  %515 = load i8, i8* %514, align 1, !dbg !889, !tbaa !890
  %516 = icmp eq i8 %515, 0, !dbg !892
  br i1 %516, label %523, label %517, !dbg !893

; <label>:517:                                    ; preds = %513, %508, %504
  %518 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !894
  %519 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 8), align 2, !dbg !896, !tbaa !571
  %520 = add i16 %519, 1, !dbg !896
  store i16 %520, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 8), align 2, !dbg !896, !tbaa !571
  %521 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !897, !tbaa !543
  %522 = add i16 %521, 1, !dbg !897
  store i16 %522, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !897, !tbaa !543
  br label %1362, !dbg !898

; <label>:523:                                    ; preds = %513
  %524 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 25, !dbg !899
  %525 = load i8, i8* %524, align 2, !dbg !899, !tbaa !901
  %526 = icmp ult i8 %525, 3, !dbg !902
  br i1 %526, label %532, label %527, !dbg !903

; <label>:527:                                    ; preds = %523
  %528 = tail call fastcc signext i8 @nd6_send_rs(%struct.netif* nonnull %1) #8, !dbg !904
  %529 = icmp ne i8 %528, 0, !dbg !905
  %530 = zext i1 %529 to i8, !dbg !906
  %531 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 0), align 4
  br label %532, !dbg !906

; <label>:532:                                    ; preds = %527, %523
  %533 = phi i32 [ %505, %523 ], [ %531, %527 ]
  %534 = phi i8 [ 0, %523 ], [ %530, %527 ]
  store i8 %534, i8* %524, align 2, !dbg !907, !tbaa !901
  %535 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 1), align 4
  %536 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 2), align 4
  %537 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 3), align 4
  %538 = load i8, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 1), align 4
  %539 = load %struct.nd6_neighbor_cache_entry*, %struct.nd6_neighbor_cache_entry** getelementptr inbounds ([3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 0, i32 0), align 16, !dbg !917, !tbaa !922
  %540 = icmp eq %struct.nd6_neighbor_cache_entry* %539, null, !dbg !924
  br i1 %540, label %565, label %541, !dbg !925

; <label>:541:                                    ; preds = %532
  %542 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %539, i64 0, i32 1, !dbg !926
  %543 = load %struct.netif*, %struct.netif** %542, align 8, !dbg !926, !tbaa !719
  %544 = icmp eq %struct.netif* %543, %1, !dbg !927
  br i1 %544, label %545, label %565, !dbg !928

; <label>:545:                                    ; preds = %541
  %546 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %539, i64 0, i32 0, i32 0, i64 0, !dbg !929
  %547 = load i32, i32* %546, align 8, !dbg !929, !tbaa !547
  %548 = icmp eq i32 %533, %547, !dbg !929
  br i1 %548, label %549, label %565, !dbg !929

; <label>:549:                                    ; preds = %545
  %550 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %539, i64 0, i32 0, i32 0, i64 1, !dbg !929
  %551 = load i32, i32* %550, align 4, !dbg !929, !tbaa !547
  %552 = icmp eq i32 %535, %551, !dbg !929
  br i1 %552, label %553, label %565, !dbg !929

; <label>:553:                                    ; preds = %549
  %554 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %539, i64 0, i32 0, i32 0, i64 2, !dbg !929
  %555 = load i32, i32* %554, align 8, !dbg !929, !tbaa !547
  %556 = icmp eq i32 %536, %555, !dbg !929
  br i1 %556, label %557, label %565, !dbg !929

; <label>:557:                                    ; preds = %553
  %558 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %539, i64 0, i32 0, i32 0, i64 3, !dbg !929
  %559 = load i32, i32* %558, align 4, !dbg !929, !tbaa !547
  %560 = icmp eq i32 %537, %559, !dbg !929
  br i1 %560, label %561, label %565, !dbg !929

; <label>:561:                                    ; preds = %557
  %562 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %539, i64 0, i32 0, i32 1, !dbg !929
  %563 = load i8, i8* %562, align 8, !dbg !929, !tbaa !648
  %564 = icmp eq i8 %538, %563, !dbg !929
  br i1 %564, label %697, label %565, !dbg !930

; <label>:565:                                    ; preds = %561, %557, %553, %549, %545, %541, %532
  %566 = load %struct.nd6_neighbor_cache_entry*, %struct.nd6_neighbor_cache_entry** getelementptr inbounds ([3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 1, i32 0), align 16, !dbg !917, !tbaa !922
  %567 = icmp eq %struct.nd6_neighbor_cache_entry* %566, null, !dbg !924
  br i1 %567, label %592, label %568, !dbg !925

; <label>:568:                                    ; preds = %565
  %569 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %566, i64 0, i32 1, !dbg !926
  %570 = load %struct.netif*, %struct.netif** %569, align 8, !dbg !926, !tbaa !719
  %571 = icmp eq %struct.netif* %570, %1, !dbg !927
  br i1 %571, label %572, label %592, !dbg !928

; <label>:572:                                    ; preds = %568
  %573 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %566, i64 0, i32 0, i32 0, i64 0, !dbg !929
  %574 = load i32, i32* %573, align 8, !dbg !929, !tbaa !547
  %575 = icmp eq i32 %533, %574, !dbg !929
  br i1 %575, label %576, label %592, !dbg !929

; <label>:576:                                    ; preds = %572
  %577 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %566, i64 0, i32 0, i32 0, i64 1, !dbg !929
  %578 = load i32, i32* %577, align 4, !dbg !929, !tbaa !547
  %579 = icmp eq i32 %535, %578, !dbg !929
  br i1 %579, label %580, label %592, !dbg !929

; <label>:580:                                    ; preds = %576
  %581 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %566, i64 0, i32 0, i32 0, i64 2, !dbg !929
  %582 = load i32, i32* %581, align 8, !dbg !929, !tbaa !547
  %583 = icmp eq i32 %536, %582, !dbg !929
  br i1 %583, label %584, label %592, !dbg !929

; <label>:584:                                    ; preds = %580
  %585 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %566, i64 0, i32 0, i32 0, i64 3, !dbg !929
  %586 = load i32, i32* %585, align 4, !dbg !929, !tbaa !547
  %587 = icmp eq i32 %537, %586, !dbg !929
  br i1 %587, label %588, label %592, !dbg !929

; <label>:588:                                    ; preds = %584
  %589 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %566, i64 0, i32 0, i32 1, !dbg !929
  %590 = load i8, i8* %589, align 8, !dbg !929, !tbaa !648
  %591 = icmp eq i8 %538, %590, !dbg !929
  br i1 %591, label %697, label %592, !dbg !930

; <label>:592:                                    ; preds = %588, %584, %580, %576, %572, %568, %565
  %593 = load %struct.nd6_neighbor_cache_entry*, %struct.nd6_neighbor_cache_entry** getelementptr inbounds ([3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 2, i32 0), align 16, !dbg !917, !tbaa !922
  %594 = icmp eq %struct.nd6_neighbor_cache_entry* %593, null, !dbg !924
  br i1 %594, label %619, label %595, !dbg !925

; <label>:595:                                    ; preds = %592
  %596 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %593, i64 0, i32 1, !dbg !926
  %597 = load %struct.netif*, %struct.netif** %596, align 8, !dbg !926, !tbaa !719
  %598 = icmp eq %struct.netif* %597, %1, !dbg !927
  br i1 %598, label %599, label %619, !dbg !928

; <label>:599:                                    ; preds = %595
  %600 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %593, i64 0, i32 0, i32 0, i64 0, !dbg !929
  %601 = load i32, i32* %600, align 8, !dbg !929, !tbaa !547
  %602 = icmp eq i32 %533, %601, !dbg !929
  br i1 %602, label %603, label %619, !dbg !929

; <label>:603:                                    ; preds = %599
  %604 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %593, i64 0, i32 0, i32 0, i64 1, !dbg !929
  %605 = load i32, i32* %604, align 4, !dbg !929, !tbaa !547
  %606 = icmp eq i32 %535, %605, !dbg !929
  br i1 %606, label %607, label %619, !dbg !929

; <label>:607:                                    ; preds = %603
  %608 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %593, i64 0, i32 0, i32 0, i64 2, !dbg !929
  %609 = load i32, i32* %608, align 8, !dbg !929, !tbaa !547
  %610 = icmp eq i32 %536, %609, !dbg !929
  br i1 %610, label %611, label %619, !dbg !929

; <label>:611:                                    ; preds = %607
  %612 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %593, i64 0, i32 0, i32 0, i64 3, !dbg !929
  %613 = load i32, i32* %612, align 4, !dbg !929, !tbaa !547
  %614 = icmp eq i32 %537, %613, !dbg !929
  br i1 %614, label %615, label %619, !dbg !929

; <label>:615:                                    ; preds = %611
  %616 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %593, i64 0, i32 0, i32 1, !dbg !929
  %617 = load i8, i8* %616, align 8, !dbg !929, !tbaa !648
  %618 = icmp eq i8 %538, %617, !dbg !929
  br i1 %618, label %697, label %619, !dbg !930

; <label>:619:                                    ; preds = %615, %611, %607, %603, %599, %595, %592
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !931
  br label %620, !dbg !946

; <label>:620:                                    ; preds = %641, %619
  %621 = phi i64 [ 0, %619 ], [ %642, %641 ]
  %622 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %621, i32 0, i32 0, i64 0, !dbg !947
  %623 = load i32, i32* %622, align 8, !dbg !947, !tbaa !547
  %624 = icmp eq i32 %533, %623, !dbg !947
  br i1 %624, label %625, label %641, !dbg !947

; <label>:625:                                    ; preds = %620
  %626 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %621, i32 0, i32 0, i64 1, !dbg !947
  %627 = load i32, i32* %626, align 4, !dbg !947, !tbaa !547
  %628 = icmp eq i32 %535, %627, !dbg !947
  br i1 %628, label %629, label %641, !dbg !947

; <label>:629:                                    ; preds = %625
  %630 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %621, i32 0, i32 0, i64 2, !dbg !947
  %631 = load i32, i32* %630, align 8, !dbg !947, !tbaa !547
  %632 = icmp eq i32 %536, %631, !dbg !947
  br i1 %632, label %633, label %641, !dbg !947

; <label>:633:                                    ; preds = %629
  %634 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %621, i32 0, i32 0, i64 3, !dbg !947
  %635 = load i32, i32* %634, align 4, !dbg !947, !tbaa !547
  %636 = icmp eq i32 %537, %635, !dbg !947
  br i1 %636, label %637, label %641, !dbg !947

; <label>:637:                                    ; preds = %633
  %638 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %621, i32 0, i32 1, !dbg !947
  %639 = load i8, i8* %638, align 8, !dbg !947, !tbaa !648
  %640 = icmp eq i8 %538, %639, !dbg !947
  br i1 %640, label %645, label %641, !dbg !948

; <label>:641:                                    ; preds = %637, %633, %629, %625, %620
  %642 = add nuw nsw i64 %621, 1, !dbg !949
  %643 = icmp ult i64 %642, 10, !dbg !950
  br i1 %643, label %620, label %644, !dbg !946, !llvm.loop !655

; <label>:644:                                    ; preds = %641
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !951
  br label %652, !dbg !952

; <label>:645:                                    ; preds = %637
  %646 = trunc i64 %621 to i8, !dbg !948
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !951
  %647 = icmp slt i8 %646, 0, !dbg !954
  br i1 %647, label %652, label %648, !dbg !952

; <label>:648:                                    ; preds = %645
  %649 = shl i64 %621, 56, !dbg !956
  %650 = ashr exact i64 %649, 56, !dbg !956
  %651 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %650, !dbg !956
  br label %668, !dbg !952

; <label>:652:                                    ; preds = %645, %644
  %653 = tail call fastcc signext i8 @nd6_new_neighbor_cache_entry() #7, !dbg !957
  %654 = icmp slt i8 %653, 0, !dbg !959
  br i1 %654, label %693, label %655, !dbg !961

; <label>:655:                                    ; preds = %652
  %656 = sext i8 %653 to i64, !dbg !962
  %657 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %656, !dbg !962
  %658 = load <4 x i32>, <4 x i32>* bitcast (i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 0) to <4 x i32>*), align 4, !dbg !962, !tbaa !547
  %659 = bitcast %struct.nd6_neighbor_cache_entry* %657 to <4 x i32>*, !dbg !962
  store <4 x i32> %658, <4 x i32>* %659, align 8, !dbg !962, !tbaa !547
  %660 = load i8, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 1), align 4, !dbg !962, !tbaa !745
  %661 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %656, i32 0, i32 1, !dbg !962
  store i8 %660, i8* %661, align 8, !dbg !962, !tbaa !648
  %662 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %656, i32 1, !dbg !964
  store %struct.netif* %1, %struct.netif** %662, align 8, !dbg !965, !tbaa !719
  %663 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %656, i32 3, !dbg !966
  store %struct.nd6_q_entry* null, %struct.nd6_q_entry** %663, align 8, !dbg !967, !tbaa !726
  %664 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %656, i32 4, !dbg !968
  store i8 1, i8* %664, align 8, !dbg !969, !tbaa !690
  %665 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %656, i32 6, i32 0, !dbg !970
  store i32 1, i32* %665, align 4, !dbg !971, !tbaa !530
  %666 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %657, i64 0, i32 0, !dbg !981
  tail call fastcc void @nd6_send_ns(%struct.netif* %1, %struct.ip6_addr* nonnull %666, i8 zeroext 1) #7, !dbg !982
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !983
  %667 = load %struct.nd6_neighbor_cache_entry*, %struct.nd6_neighbor_cache_entry** getelementptr inbounds ([3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 2, i32 0), align 16, !dbg !984, !tbaa !922
  br label %668, !dbg !989

; <label>:668:                                    ; preds = %655, %648
  %669 = phi %struct.nd6_neighbor_cache_entry* [ %593, %648 ], [ %667, %655 ], !dbg !984
  %670 = phi %struct.nd6_neighbor_cache_entry* [ %651, %648 ], [ %657, %655 ], !dbg !956
  %671 = phi i64 [ %650, %648 ], [ %656, %655 ], !dbg !956
  %672 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %671, i32 5, !dbg !990
  store i8 1, i8* %672, align 1, !dbg !991, !tbaa !992
  %673 = icmp eq %struct.nd6_neighbor_cache_entry* %669, %670, !dbg !995
  br i1 %673, label %697, label %674, !dbg !996

; <label>:674:                                    ; preds = %668
  %675 = load %struct.nd6_neighbor_cache_entry*, %struct.nd6_neighbor_cache_entry** getelementptr inbounds ([3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 1, i32 0), align 16, !dbg !984, !tbaa !922
  %676 = icmp eq %struct.nd6_neighbor_cache_entry* %675, %670, !dbg !995
  br i1 %676, label %697, label %682, !dbg !996

; <label>:677:                                    ; preds = %685
  %678 = zext i8 %691 to i64, !dbg !997
  %679 = getelementptr inbounds [3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 %678, i32 0, !dbg !1000
  store %struct.nd6_neighbor_cache_entry* %670, %struct.nd6_neighbor_cache_entry** %679, align 16, !dbg !1001, !tbaa !922
  %680 = zext i8 %691 to i64, !dbg !1002
  br label %697, !dbg !1002

; <label>:681:                                    ; preds = %685
  store i8 0, i8* %672, align 1, !dbg !1003, !tbaa !992
  br label %693, !dbg !1004

; <label>:682:                                    ; preds = %674
  %683 = load %struct.nd6_neighbor_cache_entry*, %struct.nd6_neighbor_cache_entry** getelementptr inbounds ([3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 0, i32 0), align 16, !dbg !984, !tbaa !922
  %684 = icmp eq %struct.nd6_neighbor_cache_entry* %683, %670, !dbg !995
  br i1 %684, label %697, label %685, !dbg !996

; <label>:685:                                    ; preds = %682
  %686 = icmp eq %struct.nd6_neighbor_cache_entry* %675, null, !dbg !1005
  %687 = icmp eq %struct.nd6_neighbor_cache_entry* %669, null, !dbg !1005
  %688 = select i1 %687, i8 2, i8 3, !dbg !1007
  %689 = select i1 %686, i8 1, i8 %688, !dbg !1007
  %690 = icmp eq %struct.nd6_neighbor_cache_entry* %683, null, !dbg !1005
  %691 = select i1 %690, i8 0, i8 %689, !dbg !1007
  %692 = icmp eq i8 %691, 3, !dbg !1008
  br i1 %692, label %681, label %677, !dbg !1009

; <label>:693:                                    ; preds = %652, %681
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1010
  %694 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %0) #7, !dbg !1011
  %695 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 6), align 2, !dbg !1014, !tbaa !862
  %696 = add i16 %695, 1, !dbg !1014
  store i16 %696, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 6), align 2, !dbg !1014, !tbaa !862
  br label %1362, !dbg !1015

; <label>:697:                                    ; preds = %682, %674, %668, %677, %561, %588, %615
  %698 = phi i64 [ 2, %615 ], [ 1, %588 ], [ 0, %561 ], [ 0, %682 ], [ 1, %674 ], [ 2, %668 ], [ %680, %677 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1016
  %699 = getelementptr inbounds i8, i8* %7, i64 6, !dbg !1017
  %700 = bitcast i8* %699 to i16*, !dbg !1017
  %701 = load i16, i16* %700, align 1, !dbg !1017, !tbaa !1018
  %702 = tail call zeroext i16 @lwip_htons(i16 zeroext %701) #7, !dbg !1019
  %703 = zext i16 %702 to i32, !dbg !1019
  %704 = getelementptr inbounds [3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 %698, i32 1, !dbg !1020
  store i32 %703, i32* %704, align 8, !dbg !1021, !tbaa !1022
  %705 = getelementptr inbounds i8, i8* %7, i64 12, !dbg !1023
  %706 = bitcast i8* %705 to i32*, !dbg !1023
  %707 = load i32, i32* %706, align 1, !dbg !1023, !tbaa !1025
  %708 = icmp eq i32 %707, 0, !dbg !1026
  br i1 %708, label %711, label %709, !dbg !1027

; <label>:709:                                    ; preds = %697
  %710 = tail call i32 @lwip_htonl(i32 %707) #7, !dbg !1028
  store i32 %710, i32* @retrans_timer, align 4, !dbg !1030, !tbaa !547
  br label %711, !dbg !1031

; <label>:711:                                    ; preds = %697, %709
  %712 = getelementptr inbounds i8, i8* %7, i64 8, !dbg !1032
  %713 = bitcast i8* %712 to i32*, !dbg !1032
  %714 = load i32, i32* %713, align 1, !dbg !1032, !tbaa !1034
  %715 = icmp eq i32 %714, 0, !dbg !1035
  br i1 %715, label %718, label %716, !dbg !1036

; <label>:716:                                    ; preds = %711
  %717 = tail call i32 @lwip_htonl(i32 %714) #7, !dbg !1037
  store i32 %717, i32* @reachable_time, align 4, !dbg !1039, !tbaa !547
  br label %718, !dbg !1040

; <label>:718:                                    ; preds = %711, %716
  %719 = getelementptr inbounds i8, i8* %7, i64 5, !dbg !1041
  %720 = load i8, i8* %719, align 1, !dbg !1041, !tbaa !1042
  %721 = getelementptr inbounds [3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 %698, i32 2, !dbg !1043
  store i8 %720, i8* %721, align 4, !dbg !1044, !tbaa !1045
  %722 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 2, !dbg !1047
  %723 = load i16, i16* %722, align 8, !dbg !1047, !tbaa !1048
  %724 = icmp ugt i16 %723, 17, !dbg !1049
  br i1 %724, label %725, label %1354, !dbg !1050

; <label>:725:                                    ; preds = %718
  %726 = getelementptr inbounds [3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 %698, i32 0
  %727 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 17
  %728 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 20
  %729 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 18
  %730 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 5, i64 1
  %731 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 5, i64 2
  %732 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 6, i64 1
  %733 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 24
  %734 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 6, i64 2
  %735 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 0
  %736 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 5, i64 0
  %737 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 0
  %738 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 1
  %739 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 2
  %740 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 3
  %741 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 1
  %742 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 1, i32 0, i32 0, i32 1
  %743 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 2, i32 0, i32 0, i32 1
  %744 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 2
  %745 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 2
  %746 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 3
  %747 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 3
  br label %748, !dbg !1050

; <label>:748:                                    ; preds = %725, %1084
  %749 = phi i32 [ 16, %725 ], [ %1088, %1084 ]
  %750 = phi i16 [ 16, %725 ], [ %1085, %1084 ]
  %751 = or i16 %750, 1, !dbg !1051
  %752 = tail call i32 @pbuf_try_get_at(%struct.pbuf* nonnull %0, i16 zeroext %751) #7, !dbg !1052
  %753 = icmp slt i32 %752, 1, !dbg !1054
  br i1 %753, label %1356, label %754, !dbg !1056

; <label>:754:                                    ; preds = %748
  %755 = trunc i32 %752 to i16, !dbg !1057
  %756 = and i16 %755, 255, !dbg !1057
  %757 = shl nuw nsw i16 %756, 3, !dbg !1057
  %758 = zext i16 %757 to i32, !dbg !1059
  %759 = load i16, i16* %722, align 8, !dbg !1061, !tbaa !1048
  %760 = zext i16 %759 to i32, !dbg !1062
  %761 = sub nsw i32 %760, %749, !dbg !1063
  %762 = icmp slt i32 %761, %758, !dbg !1064
  br i1 %762, label %1356, label %763, !dbg !1065

; <label>:763:                                    ; preds = %754
  %764 = load i16, i16* %495, align 2, !dbg !1066, !tbaa !535
  %765 = icmp eq i16 %764, %759, !dbg !1068
  br i1 %765, label %766, label %770, !dbg !1069

; <label>:766:                                    ; preds = %763
  %767 = load i8*, i8** %6, align 8, !dbg !1070, !tbaa !526
  %768 = zext i16 %750 to i64, !dbg !1072
  %769 = getelementptr inbounds i8, i8* %767, i64 %768, !dbg !1072
  br label %778, !dbg !1074

; <label>:770:                                    ; preds = %763
  %771 = icmp ugt i16 %756, 4, !dbg !1075
  br i1 %771, label %772, label %775, !dbg !1078

; <label>:772:                                    ; preds = %770
  %773 = tail call zeroext i8 @pbuf_get_at(%struct.pbuf* nonnull %0, i16 zeroext %750) #7, !dbg !1079
  %774 = icmp eq i8 %773, 25, !dbg !1082
  br i1 %774, label %775, label %1356, !dbg !1084

; <label>:775:                                    ; preds = %772, %770
  %776 = phi i16 [ %757, %770 ], [ 32, %772 ], !dbg !1085
  %777 = tail call zeroext i16 @pbuf_copy_partial(%struct.pbuf* nonnull %0, i8* getelementptr inbounds (%union.ra_options, %union.ra_options* @nd6_ra_buffer, i64 0, i32 0, i32 0), i16 zeroext %776, i16 zeroext %750) #7, !dbg !1086
  br label %778

; <label>:778:                                    ; preds = %775, %766
  %779 = phi i16 [ %757, %766 ], [ %777, %775 ], !dbg !1087
  %780 = phi i8* [ %769, %766 ], [ getelementptr inbounds (%union.ra_options, %union.ra_options* @nd6_ra_buffer, i64 0, i32 0, i32 0), %775 ], !dbg !1087
  %781 = load i8, i8* %780, align 1, !dbg !1088, !tbaa !530
  switch i8 %781, label %1081 [
    i8 1, label %782
    i8 5, label %801
    i8 3, label %821
    i8 24, label %1084
  ], !dbg !1089

; <label>:782:                                    ; preds = %778
  %783 = icmp ult i16 %779, 8, !dbg !1090
  br i1 %783, label %1356, label %784, !dbg !1092

; <label>:784:                                    ; preds = %782
  %785 = load %struct.nd6_neighbor_cache_entry*, %struct.nd6_neighbor_cache_entry** %726, align 16, !dbg !1094, !tbaa !922
  %786 = icmp eq %struct.nd6_neighbor_cache_entry* %785, null, !dbg !1096
  br i1 %786, label %1084, label %787, !dbg !1097

; <label>:787:                                    ; preds = %784
  %788 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %785, i64 0, i32 4, !dbg !1098
  %789 = load i8, i8* %788, align 8, !dbg !1098, !tbaa !690
  %790 = icmp eq i8 %789, 1, !dbg !1099
  br i1 %790, label %791, label %1084, !dbg !1100

; <label>:791:                                    ; preds = %787
  %792 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %785, i64 0, i32 2, i64 0, !dbg !1101
  %793 = getelementptr inbounds i8, i8* %780, i64 2, !dbg !1101
  %794 = load i8, i8* %728, align 4, !dbg !1101, !tbaa !668
  %795 = zext i8 %794 to i64, !dbg !1101
  %796 = tail call i8* @memcpy(i8* nonnull %792, i8* nonnull %793, i64 %795) #7, !dbg !1101
  %797 = load %struct.nd6_neighbor_cache_entry*, %struct.nd6_neighbor_cache_entry** %726, align 16, !dbg !1103, !tbaa !922
  %798 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %797, i64 0, i32 4, !dbg !1104
  store i8 2, i8* %798, align 8, !dbg !1105, !tbaa !690
  %799 = load i32, i32* @reachable_time, align 4, !dbg !1106, !tbaa !547
  %800 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %797, i64 0, i32 6, i32 0, !dbg !1107
  store i32 %799, i32* %800, align 4, !dbg !1108, !tbaa !530
  br label %1084, !dbg !1109

; <label>:801:                                    ; preds = %778
  %802 = icmp ult i16 %779, 8, !dbg !1110
  br i1 %802, label %1356, label %803, !dbg !1112

; <label>:803:                                    ; preds = %801
  %804 = getelementptr inbounds i8, i8* %780, i64 4, !dbg !1114
  %805 = bitcast i8* %804 to i32*, !dbg !1114
  %806 = load i32, i32* %805, align 1, !dbg !1114, !tbaa !1115
  %807 = tail call i32 @lwip_htonl(i32 %806) #7, !dbg !1117
  %808 = add i32 %807, -1280, !dbg !1119
  %809 = icmp ult i32 %808, 64256, !dbg !1119
  br i1 %809, label %810, label %1084, !dbg !1119

; <label>:810:                                    ; preds = %803
  %811 = load i16, i16* %727, align 2, !dbg !1121, !tbaa !1124
  %812 = icmp eq i16 %811, 0, !dbg !1125
  br i1 %812, label %819, label %813, !dbg !1126

; <label>:813:                                    ; preds = %810
  %814 = zext i16 %811 to i32, !dbg !1127
  %815 = and i32 %807, 65535, !dbg !1127
  %816 = icmp ugt i32 %815, %814, !dbg !1127
  %817 = select i1 %816, i32 %814, i32 %815, !dbg !1127
  %818 = trunc i32 %817 to i16, !dbg !1127
  store i16 %818, i16* %729, align 4, !dbg !1129, !tbaa !1130
  br label %1084, !dbg !1131

; <label>:819:                                    ; preds = %810
  %820 = trunc i32 %807 to i16, !dbg !1132
  store i16 %820, i16* %729, align 4, !dbg !1134, !tbaa !1130
  br label %1084

; <label>:821:                                    ; preds = %778
  %822 = icmp ult i16 %779, 32, !dbg !1135
  br i1 %822, label %1356, label %823, !dbg !1137

; <label>:823:                                    ; preds = %821
  %824 = getelementptr inbounds i8, i8* %780, i64 16, !dbg !1139
  %825 = bitcast i8* %824 to <4 x i32>*, !dbg !1139
  %826 = load <4 x i32>, <4 x i32>* %825, align 1, !dbg !1139, !tbaa !547
  %827 = extractelement <4 x i32> %826, i32 0, !dbg !1141
  %828 = and i32 %827, 49407, !dbg !1141
  %829 = icmp eq i32 %828, 33022, !dbg !1141
  br i1 %829, label %1084, label %830, !dbg !1141

; <label>:830:                                    ; preds = %823
  %831 = getelementptr inbounds i8, i8* %780, i64 3, !dbg !1142
  %832 = load i8, i8* %831, align 1, !dbg !1142, !tbaa !1143
  %833 = icmp slt i8 %832, 0, !dbg !1145
  br i1 %833, label %834, label %945, !dbg !1146

; <label>:834:                                    ; preds = %830
  %835 = getelementptr inbounds i8, i8* %780, i64 2, !dbg !1147
  %836 = load i8, i8* %835, align 1, !dbg !1147, !tbaa !1148
  %837 = icmp eq i8 %836, 64, !dbg !1149
  br i1 %837, label %838, label %945, !dbg !1150

; <label>:838:                                    ; preds = %834
  %839 = getelementptr inbounds i8, i8* %780, i64 4, !dbg !1151
  %840 = bitcast i8* %839 to i32*, !dbg !1151
  %841 = load i32, i32* %840, align 1, !dbg !1151, !tbaa !1152
  %842 = tail call i32 @lwip_htonl(i32 %841) #7, !dbg !1153
  %843 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 0, i32 0, i32 0, i64 0), align 16, !dbg !1165, !tbaa !547
  %844 = icmp eq i32 %843, %827, !dbg !1165
  %845 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 0, i32 0, i32 0, i64 1), align 4, !dbg !1165
  %846 = extractelement <4 x i32> %826, i32 1, !dbg !1165
  %847 = icmp eq i32 %845, %846, !dbg !1165
  %848 = and i1 %844, %847, !dbg !1165
  br i1 %848, label %849, label %855, !dbg !1165

; <label>:849:                                    ; preds = %838
  %850 = load i8, i8* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 0, i32 0, i32 1), align 16, !dbg !1165, !tbaa !1170
  %851 = icmp eq i8 %850, 0, !dbg !1165
  %852 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 0, i32 1), align 8, !dbg !1172
  %853 = icmp eq %struct.netif* %852, %1, !dbg !1173
  %854 = and i1 %851, %853, !dbg !1174
  br i1 %854, label %942, label %855, !dbg !1174

; <label>:855:                                    ; preds = %849, %838
  %856 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 1, i32 0, i32 0, i64 0), align 8, !dbg !1165, !tbaa !547
  %857 = icmp eq i32 %856, %827, !dbg !1165
  %858 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 1, i32 0, i32 0, i64 1), align 4, !dbg !1165
  %859 = icmp eq i32 %858, %846, !dbg !1165
  %860 = and i1 %857, %859, !dbg !1165
  br i1 %860, label %861, label %867, !dbg !1165

; <label>:861:                                    ; preds = %855
  %862 = load i8, i8* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 1, i32 0, i32 1), align 8, !dbg !1165, !tbaa !1170
  %863 = icmp eq i8 %862, 0, !dbg !1165
  %864 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 1, i32 1), align 8, !dbg !1172
  %865 = icmp eq %struct.netif* %864, %1, !dbg !1173
  %866 = and i1 %863, %865, !dbg !1174
  br i1 %866, label %942, label %867, !dbg !1174

; <label>:867:                                    ; preds = %861, %855
  %868 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 2, i32 0, i32 0, i64 0), align 16, !dbg !1165, !tbaa !547
  %869 = icmp eq i32 %868, %827, !dbg !1165
  %870 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 2, i32 0, i32 0, i64 1), align 4, !dbg !1165
  %871 = icmp eq i32 %870, %846, !dbg !1165
  %872 = and i1 %869, %871, !dbg !1165
  br i1 %872, label %873, label %879, !dbg !1165

; <label>:873:                                    ; preds = %867
  %874 = load i8, i8* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 2, i32 0, i32 1), align 16, !dbg !1165, !tbaa !1170
  %875 = icmp eq i8 %874, 0, !dbg !1165
  %876 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 2, i32 1), align 8, !dbg !1172
  %877 = icmp eq %struct.netif* %876, %1, !dbg !1173
  %878 = and i1 %875, %877, !dbg !1174
  br i1 %878, label %942, label %879, !dbg !1174

; <label>:879:                                    ; preds = %873, %867
  %880 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 3, i32 0, i32 0, i64 0), align 8, !dbg !1165, !tbaa !547
  %881 = icmp eq i32 %880, %827, !dbg !1165
  %882 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 3, i32 0, i32 0, i64 1), align 4, !dbg !1165
  %883 = icmp eq i32 %882, %846, !dbg !1165
  %884 = and i1 %881, %883, !dbg !1165
  br i1 %884, label %885, label %891, !dbg !1165

; <label>:885:                                    ; preds = %879
  %886 = load i8, i8* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 3, i32 0, i32 1), align 8, !dbg !1165, !tbaa !1170
  %887 = icmp eq i8 %886, 0, !dbg !1165
  %888 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 3, i32 1), align 8, !dbg !1172
  %889 = icmp eq %struct.netif* %888, %1, !dbg !1173
  %890 = and i1 %887, %889, !dbg !1174
  br i1 %890, label %942, label %891, !dbg !1174

; <label>:891:                                    ; preds = %885, %879
  %892 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 4, i32 0, i32 0, i64 0), align 16, !dbg !1165, !tbaa !547
  %893 = icmp eq i32 %892, %827, !dbg !1165
  %894 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 4, i32 0, i32 0, i64 1), align 4, !dbg !1165
  %895 = icmp eq i32 %894, %846, !dbg !1165
  %896 = and i1 %893, %895, !dbg !1165
  br i1 %896, label %897, label %903, !dbg !1165

; <label>:897:                                    ; preds = %891
  %898 = load i8, i8* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 4, i32 0, i32 1), align 16, !dbg !1165, !tbaa !1170
  %899 = icmp eq i8 %898, 0, !dbg !1165
  %900 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 4, i32 1), align 8, !dbg !1172
  %901 = icmp eq %struct.netif* %900, %1, !dbg !1173
  %902 = and i1 %899, %901, !dbg !1174
  br i1 %902, label %942, label %903, !dbg !1174

; <label>:903:                                    ; preds = %891, %897
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1175
  %904 = icmp eq i32 %842, 0, !dbg !1177
  br i1 %904, label %945, label %905, !dbg !1179

; <label>:905:                                    ; preds = %903
  %906 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 0, i32 1), align 8, !dbg !1190, !tbaa !1195
  %907 = icmp eq %struct.netif* %906, null, !dbg !1196
  %908 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 0, i32 2), align 16, !dbg !1197
  %909 = icmp eq i32 %908, 0, !dbg !1198
  %910 = or i1 %907, %909, !dbg !1199
  br i1 %910, label %911, label %917, !dbg !1199

; <label>:911:                                    ; preds = %905, %917, %923, %929, %935
  %912 = phi i64 [ 0, %905 ], [ 1, %917 ], [ 2, %923 ], [ 3, %929 ], [ 4, %935 ]
  %913 = phi %struct.netif** [ getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 0, i32 1), %905 ], [ getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 1, i32 1), %917 ], [ getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 2, i32 1), %923 ], [ getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 3, i32 1), %929 ], [ getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 4, i32 1), %935 ], !dbg !1190
  store %struct.netif* %1, %struct.netif** %913, align 8, !dbg !1200, !tbaa !1195
  %914 = getelementptr inbounds [5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 %912, i32 0, i32 0, i64 0, !dbg !1202
  %915 = bitcast i32* %914 to <4 x i32>*, !dbg !1202
  store <4 x i32> %826, <4 x i32>* %915, align 8, !dbg !1202
  %916 = getelementptr inbounds [5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 %912, i32 0, i32 1, !dbg !1202
  store i8 0, i8* %916, align 8, !dbg !1202, !tbaa !1170
  br label %942, !dbg !1204

; <label>:917:                                    ; preds = %905
  %918 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 1, i32 1), align 8, !dbg !1190, !tbaa !1195
  %919 = icmp eq %struct.netif* %918, null, !dbg !1196
  %920 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 1, i32 2), align 8, !dbg !1197
  %921 = icmp eq i32 %920, 0, !dbg !1198
  %922 = or i1 %919, %921, !dbg !1199
  br i1 %922, label %911, label %923, !dbg !1199

; <label>:923:                                    ; preds = %917
  %924 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 2, i32 1), align 8, !dbg !1190, !tbaa !1195
  %925 = icmp eq %struct.netif* %924, null, !dbg !1196
  %926 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 2, i32 2), align 16, !dbg !1197
  %927 = icmp eq i32 %926, 0, !dbg !1198
  %928 = or i1 %925, %927, !dbg !1199
  br i1 %928, label %911, label %929, !dbg !1199

; <label>:929:                                    ; preds = %923
  %930 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 3, i32 1), align 8, !dbg !1190, !tbaa !1195
  %931 = icmp eq %struct.netif* %930, null, !dbg !1196
  %932 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 3, i32 2), align 8, !dbg !1197
  %933 = icmp eq i32 %932, 0, !dbg !1198
  %934 = or i1 %931, %933, !dbg !1199
  br i1 %934, label %911, label %935, !dbg !1199

; <label>:935:                                    ; preds = %929
  %936 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 4, i32 1), align 8, !dbg !1190, !tbaa !1195
  %937 = icmp eq %struct.netif* %936, null, !dbg !1196
  %938 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 4, i32 2), align 16, !dbg !1197
  %939 = icmp eq i32 %938, 0, !dbg !1198
  %940 = or i1 %937, %939, !dbg !1199
  br i1 %940, label %911, label %941, !dbg !1199

; <label>:941:                                    ; preds = %935
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1205
  br label %945

; <label>:942:                                    ; preds = %849, %861, %873, %885, %897, %911
  %943 = phi i64 [ %912, %911 ], [ 4, %897 ], [ 3, %885 ], [ 2, %873 ], [ 1, %861 ], [ 0, %849 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1206
  %944 = getelementptr inbounds [5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 %943, i32 2, !dbg !1207
  store i32 %842, i32* %944, align 8, !dbg !1210, !tbaa !1211
  br label %945, !dbg !1212

; <label>:945:                                    ; preds = %903, %941, %942, %834, %830
  %946 = load i8, i8* %831, align 1, !dbg !1213, !tbaa !1143
  %947 = and i8 %946, 64, !dbg !1215
  %948 = icmp eq i8 %947, 0, !dbg !1215
  br i1 %948, label %1084, label %949, !dbg !1216

; <label>:949:                                    ; preds = %945
  %950 = getelementptr inbounds i8, i8* %780, i64 4, !dbg !1241
  %951 = bitcast i8* %950 to i32*, !dbg !1241
  %952 = load i32, i32* %951, align 1, !dbg !1241, !tbaa !1152
  %953 = tail call i32 @lwip_htonl(i32 %952) #7, !dbg !1242
  %954 = getelementptr inbounds i8, i8* %780, i64 8, !dbg !1244
  %955 = bitcast i8* %954 to i32*, !dbg !1244
  %956 = load i32, i32* %955, align 1, !dbg !1244, !tbaa !1245
  %957 = tail call i32 @lwip_htonl(i32 %956) #7, !dbg !1246
  %958 = icmp ugt i32 %957, %953, !dbg !1248
  br i1 %958, label %1080, label %959, !dbg !1250

; <label>:959:                                    ; preds = %949
  %960 = getelementptr inbounds i8, i8* %780, i64 2, !dbg !1251
  %961 = load i8, i8* %960, align 1, !dbg !1251, !tbaa !1148
  %962 = icmp eq i8 %961, 64, !dbg !1252
  br i1 %962, label %963, label %1080, !dbg !1253

; <label>:963:                                    ; preds = %959
  %964 = load i8, i8* %730, align 1, !dbg !1255, !tbaa !530
  %965 = icmp eq i8 %964, 0, !dbg !1257
  br i1 %965, label %1001, label %966, !dbg !1258

; <label>:966:                                    ; preds = %963
  %967 = load i32, i32* %732, align 4, !dbg !1259, !tbaa !547
  %968 = icmp eq i32 %967, 0, !dbg !1259
  br i1 %968, label %1001, label %969, !dbg !1260

; <label>:969:                                    ; preds = %966
  %970 = load i32, i32* %735, align 8, !dbg !1261, !tbaa !530
  %971 = icmp eq i32 %827, %970, !dbg !1261
  br i1 %971, label %972, label %1001, !dbg !1261

; <label>:972:                                    ; preds = %969
  %973 = load i32, i32* %738, align 4, !dbg !1261, !tbaa !530
  %974 = extractelement <4 x i32> %826, i32 1, !dbg !1261
  %975 = icmp eq i32 %974, %973, !dbg !1261
  br i1 %975, label %976, label %1001, !dbg !1261

; <label>:976:                                    ; preds = %972
  %977 = load i8, i8* %742, align 8, !dbg !1261, !tbaa !530
  %978 = icmp eq i8 %977, 0, !dbg !1261
  br i1 %978, label %979, label %1001, !dbg !1262

; <label>:979:                                    ; preds = %1072, %976
  %980 = phi i32* [ %734, %1072 ], [ %732, %976 ], !dbg !1263
  %981 = phi i32 [ %1063, %1072 ], [ %967, %976 ], !dbg !1263
  %982 = phi i8 [ 2, %1072 ], [ 1, %976 ]
  %983 = phi i64 [ 2, %1072 ], [ 1, %976 ], !dbg !1255
  %984 = phi i8 [ %1002, %1072 ], [ %964, %976 ], !dbg !1255
  %985 = icmp ugt i32 %953, 7200, !dbg !1265
  %986 = icmp ugt i32 %953, %981, !dbg !1267
  %987 = or i1 %985, %986, !dbg !1268
  br i1 %987, label %991, label %988, !dbg !1268

; <label>:988:                                    ; preds = %979
  %989 = icmp ugt i32 %981, 7200, !dbg !1269
  br i1 %989, label %990, label %994, !dbg !1271

; <label>:990:                                    ; preds = %988
  store i32 7200, i32* %980, align 4, !dbg !1272, !tbaa !547
  br label %994, !dbg !1272

; <label>:991:                                    ; preds = %979
  store i32 %953, i32* %980, align 4, !dbg !1277, !tbaa !547
  %992 = icmp eq i32 %953, 0, !dbg !1282
  br i1 %992, label %993, label %994, !dbg !1285

; <label>:993:                                    ; preds = %991
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0)) #7, !dbg !1286
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1289
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1289
  unreachable, !dbg !1289

; <label>:994:                                    ; preds = %991, %990, %988
  %995 = icmp ne i32 %957, 0, !dbg !1293
  %996 = icmp eq i8 %984, 16, !dbg !1295
  %997 = and i1 %995, %996, !dbg !1296
  br i1 %997, label %998, label %999, !dbg !1296

; <label>:998:                                    ; preds = %994
  tail call void @netif_ip6_addr_set_state(%struct.netif* nonnull %1, i8 signext %982, i8 zeroext 48) #7, !dbg !1297
  br label %999, !dbg !1299

; <label>:999:                                    ; preds = %998, %994
  %1000 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 7, i64 %983, !dbg !1300
  store i32 %957, i32* %1000, align 4, !dbg !1300, !tbaa !547
  br label %1080, !dbg !1300

; <label>:1001:                                   ; preds = %976, %972, %969, %966, %963
  %1002 = load i8, i8* %731, align 1, !dbg !1255, !tbaa !530
  %1003 = icmp eq i8 %1002, 0, !dbg !1257
  br i1 %1003, label %1075, label %1062, !dbg !1258

; <label>:1004:                                   ; preds = %1075
  %1005 = load i8, i8* %736, align 8, !dbg !1304, !tbaa !530
  switch i8 %1005, label %1006 [
    i8 0, label %1080
    i8 64, label %1080
  ], !dbg !1305

; <label>:1006:                                   ; preds = %1004
  %1007 = load i32, i32* %739, align 8, !dbg !1308, !tbaa !530
  %1008 = load i32, i32* %740, align 4, !dbg !1308, !tbaa !530
  br i1 %965, label %1025, label %1009, !dbg !1311

; <label>:1009:                                   ; preds = %1006
  %1010 = load i32, i32* %735, align 8, !dbg !1315, !tbaa !530
  %1011 = icmp eq i32 %827, %1010, !dbg !1315
  br i1 %1011, label %1012, label %1025, !dbg !1315

; <label>:1012:                                   ; preds = %1009
  %1013 = load i32, i32* %738, align 4, !dbg !1315, !tbaa !530
  %1014 = extractelement <4 x i32> %826, i32 1, !dbg !1315
  %1015 = icmp eq i32 %1014, %1013, !dbg !1315
  br i1 %1015, label %1016, label %1025, !dbg !1315

; <label>:1016:                                   ; preds = %1012
  %1017 = load i32, i32* %744, align 8, !dbg !1315, !tbaa !530
  %1018 = icmp eq i32 %1007, %1017, !dbg !1315
  br i1 %1018, label %1019, label %1025, !dbg !1315

; <label>:1019:                                   ; preds = %1016
  %1020 = load i32, i32* %746, align 4, !dbg !1315, !tbaa !530
  %1021 = icmp eq i32 %1008, %1020, !dbg !1315
  br i1 %1021, label %1022, label %1025, !dbg !1315

; <label>:1022:                                   ; preds = %1019
  %1023 = load i8, i8* %742, align 8, !dbg !1315, !tbaa !530
  %1024 = icmp eq i8 %1023, 0, !dbg !1315
  br i1 %1024, label %1080, label %1025, !dbg !1319

; <label>:1025:                                   ; preds = %1022, %1019, %1016, %1012, %1009, %1006
  %1026 = phi i8 [ 0, %1022 ], [ 0, %1019 ], [ 0, %1016 ], [ 0, %1012 ], [ 0, %1009 ], [ 1, %1006 ], !dbg !1320
  br i1 %1003, label %1057, label %1039, !dbg !1311

; <label>:1027:                                   ; preds = %1060, %1057, %1052
  %1028 = phi i8 [ 1, %1060 ], [ %1059, %1057 ], [ 1, %1052 ]
  %1029 = zext i8 %1028 to i64, !dbg !1321
  %1030 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 %1029, i32 0, i32 0, i32 0, i64 0, !dbg !1321
  store i32 %827, i32* %1030, align 8, !dbg !1321, !tbaa !530
  %1031 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 %1029, i32 0, i32 0, i32 0, i64 1, !dbg !1321
  %1032 = extractelement <4 x i32> %826, i32 1, !dbg !1321
  store i32 %1032, i32* %1031, align 4, !dbg !1321, !tbaa !530
  %1033 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 %1029, i32 0, i32 0, i32 0, i64 2, !dbg !1321
  store i32 %1007, i32* %1033, align 8, !dbg !1321, !tbaa !530
  %1034 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 %1029, i32 0, i32 0, i32 0, i64 3, !dbg !1321
  store i32 %1008, i32* %1034, align 4, !dbg !1321, !tbaa !530
  %1035 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 %1029, i32 0, i32 0, i32 1, !dbg !1321
  store i8 0, i8* %1035, align 8, !dbg !1321, !tbaa !530
  %1036 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 %1029, i32 1, !dbg !1324
  store i8 6, i8* %1036, align 4, !dbg !1324, !tbaa !1326
  %1037 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 6, i64 %1029, !dbg !1327
  store i32 %953, i32* %1037, align 4, !dbg !1327, !tbaa !547
  %1038 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 7, i64 %1029, !dbg !1331
  store i32 %957, i32* %1038, align 4, !dbg !1331, !tbaa !547
  tail call void @netif_ip6_addr_set_state(%struct.netif* nonnull %1, i8 signext %1028, i8 zeroext 8) #7, !dbg !1335
  br label %1080, !dbg !1336

; <label>:1039:                                   ; preds = %1025
  %1040 = load i32, i32* %737, align 8, !dbg !1315, !tbaa !530
  %1041 = icmp eq i32 %827, %1040, !dbg !1315
  br i1 %1041, label %1042, label %1060, !dbg !1315

; <label>:1042:                                   ; preds = %1039
  %1043 = load i32, i32* %741, align 4, !dbg !1315, !tbaa !530
  %1044 = extractelement <4 x i32> %826, i32 1, !dbg !1315
  %1045 = icmp eq i32 %1044, %1043, !dbg !1315
  br i1 %1045, label %1046, label %1060, !dbg !1315

; <label>:1046:                                   ; preds = %1042
  %1047 = load i32, i32* %745, align 8, !dbg !1315, !tbaa !530
  %1048 = icmp eq i32 %1007, %1047, !dbg !1315
  br i1 %1048, label %1049, label %1060, !dbg !1315

; <label>:1049:                                   ; preds = %1046
  %1050 = load i32, i32* %747, align 4, !dbg !1315, !tbaa !530
  %1051 = icmp eq i32 %1008, %1050, !dbg !1315
  br i1 %1051, label %1052, label %1060, !dbg !1315

; <label>:1052:                                   ; preds = %1049
  %1053 = load i8, i8* %743, align 8, !dbg !1315, !tbaa !530
  %1054 = icmp eq i8 %1053, 0, !dbg !1315
  %1055 = icmp eq i8 %1026, 0, !dbg !1337
  %1056 = or i1 %1055, %1054, !dbg !1319
  br i1 %1056, label %1080, label %1027, !dbg !1319

; <label>:1057:                                   ; preds = %1025
  %1058 = icmp eq i8 %1026, 0, !dbg !1339
  %1059 = select i1 %1058, i8 2, i8 1
  br label %1027

; <label>:1060:                                   ; preds = %1049, %1046, %1042, %1039
  %1061 = icmp eq i8 %1026, 0, !dbg !1337
  br i1 %1061, label %1080, label %1027, !dbg !1341

; <label>:1062:                                   ; preds = %1001
  %1063 = load i32, i32* %734, align 4, !dbg !1259, !tbaa !547
  %1064 = icmp eq i32 %1063, 0, !dbg !1259
  br i1 %1064, label %1075, label %1065, !dbg !1260

; <label>:1065:                                   ; preds = %1062
  %1066 = load i32, i32* %737, align 8, !dbg !1261, !tbaa !530
  %1067 = icmp eq i32 %827, %1066, !dbg !1261
  br i1 %1067, label %1068, label %1075, !dbg !1261

; <label>:1068:                                   ; preds = %1065
  %1069 = load i32, i32* %741, align 4, !dbg !1261, !tbaa !530
  %1070 = extractelement <4 x i32> %826, i32 1, !dbg !1261
  %1071 = icmp eq i32 %1070, %1069, !dbg !1261
  br i1 %1071, label %1072, label %1075, !dbg !1261

; <label>:1072:                                   ; preds = %1068
  %1073 = load i8, i8* %743, align 8, !dbg !1261, !tbaa !530
  %1074 = icmp eq i8 %1073, 0, !dbg !1261
  br i1 %1074, label %979, label %1075, !dbg !1262

; <label>:1075:                                   ; preds = %1072, %1068, %1065, %1062, %1001
  %1076 = load i8, i8* %733, align 1, !dbg !1342, !tbaa !1343
  %1077 = icmp eq i8 %1076, 0, !dbg !1344
  %1078 = icmp eq i32 %953, 0, !dbg !1345
  %1079 = or i1 %1078, %1077, !dbg !1346
  br i1 %1079, label %1080, label %1004, !dbg !1346

; <label>:1080:                                   ; preds = %949, %959, %999, %1004, %1004, %1022, %1027, %1052, %1060, %1075
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1336
  br label %1084, !dbg !1347

; <label>:1081:                                   ; preds = %778
  %1082 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 8), align 2, !dbg !1348, !tbaa !571
  %1083 = add i16 %1082, 1, !dbg !1348
  store i16 %1083, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 8), align 2, !dbg !1348, !tbaa !571
  br label %1084, !dbg !1349

; <label>:1084:                                   ; preds = %823, %1080, %945, %803, %819, %813, %787, %791, %784, %778, %1081
  %1085 = add i16 %757, %750, !dbg !1350
  %1086 = load i16, i16* %722, align 8, !dbg !1047, !tbaa !1048
  %1087 = zext i16 %1086 to i32, !dbg !1351
  %1088 = zext i16 %1085 to i32, !dbg !1352
  %1089 = sub nsw i32 %1087, %1088, !dbg !1353
  %1090 = icmp sgt i32 %1089, 1, !dbg !1049
  br i1 %1090, label %748, label %1354, !dbg !1050

; <label>:1091:                                   ; preds = %2
  %1092 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 3, !dbg !1354
  %1093 = load i16, i16* %1092, align 2, !dbg !1354, !tbaa !535
  %1094 = icmp ult i16 %1093, 40, !dbg !1356
  br i1 %1094, label %1095, label %1101, !dbg !1357

; <label>:1095:                                   ; preds = %1091
  %1096 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !1358
  %1097 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 5), align 2, !dbg !1360, !tbaa !541
  %1098 = add i16 %1097, 1, !dbg !1360
  store i16 %1098, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 5), align 2, !dbg !1360, !tbaa !541
  %1099 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !1361, !tbaa !543
  %1100 = add i16 %1099, 1, !dbg !1361
  store i16 %1100, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !1361, !tbaa !543
  br label %1362

; <label>:1101:                                   ; preds = %1091
  %1102 = getelementptr inbounds i8, i8* %7, i64 24, !dbg !1363
  %1103 = bitcast i8* %1102 to i32*, !dbg !1363
  %1104 = load i32, i32* %1103, align 1, !dbg !1363, !tbaa !547
  %1105 = getelementptr inbounds i8, i8* %7, i64 28, !dbg !1363
  %1106 = bitcast i8* %1105 to i32*, !dbg !1363
  %1107 = load i32, i32* %1106, align 1, !dbg !1363, !tbaa !547
  %1108 = getelementptr inbounds i8, i8* %7, i64 32, !dbg !1363
  %1109 = bitcast i8* %1108 to i32*, !dbg !1363
  %1110 = load i32, i32* %1109, align 1, !dbg !1363, !tbaa !547
  %1111 = getelementptr inbounds i8, i8* %7, i64 36, !dbg !1363
  %1112 = bitcast i8* %1111 to i32*, !dbg !1363
  %1113 = load i32, i32* %1112, align 1, !dbg !1363, !tbaa !547
  %1114 = and i32 %1104, 49407, !dbg !1365
  %1115 = icmp eq i32 %1114, 33022, !dbg !1365
  br i1 %1115, label %1116, label %1120, !dbg !1365

; <label>:1116:                                   ; preds = %1101
  %1117 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 23, !dbg !1365
  %1118 = load i8, i8* %1117, align 8, !dbg !1365, !tbaa !550
  %1119 = add i8 %1118, 1, !dbg !1365
  br label %1120, !dbg !1365

; <label>:1120:                                   ; preds = %1101, %1116
  %1121 = phi i8 [ %1119, %1116 ], [ 0, %1101 ]
  %1122 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !1366, !tbaa !530
  %1123 = and i32 %1122, 49407, !dbg !1366
  %1124 = icmp eq i32 %1123, 33022, !dbg !1366
  br i1 %1124, label %1125, label %1137, !dbg !1368

; <label>:1125:                                   ; preds = %1120
  %1126 = load %struct.ip6_hdr*, %struct.ip6_hdr** getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 3), align 8, !dbg !1369, !tbaa !555
  %1127 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %1126, i64 0, i32 3, !dbg !1369
  %1128 = load i8, i8* %1127, align 1, !dbg !1369, !tbaa !557
  %1129 = icmp eq i8 %1128, -1, !dbg !1370
  br i1 %1129, label %1130, label %1137, !dbg !1371

; <label>:1130:                                   ; preds = %1125
  %1131 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1372
  %1132 = load i8, i8* %1131, align 1, !dbg !1372, !tbaa !1373
  %1133 = icmp ne i8 %1132, 0, !dbg !1375
  %1134 = and i32 %1104, 255, !dbg !1376
  %1135 = icmp eq i32 %1134, 255, !dbg !1376
  %1136 = or i1 %1135, %1133, !dbg !1377
  br i1 %1136, label %1137, label %1143, !dbg !1377

; <label>:1137:                                   ; preds = %1130, %1125, %1120
  %1138 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !1378
  %1139 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 8), align 2, !dbg !1380, !tbaa !571
  %1140 = add i16 %1139, 1, !dbg !1380
  store i16 %1140, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 8), align 2, !dbg !1380, !tbaa !571
  %1141 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !1381, !tbaa !543
  %1142 = add i16 %1141, 1, !dbg !1381
  store i16 %1142, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !1381, !tbaa !543
  br label %1362

; <label>:1143:                                   ; preds = %1130
  %1144 = icmp ugt i16 %1093, 41, !dbg !1382
  br i1 %1144, label %1145, label %1156, !dbg !1384

; <label>:1145:                                   ; preds = %1143
  %1146 = zext i16 %1093 to i64, !dbg !1385
  %1147 = getelementptr inbounds i8, i8* %7, i64 40, !dbg !1386
  %1148 = bitcast i8* %1147 to %struct.lladdr_option*, !dbg !1388
  %1149 = getelementptr inbounds i8, i8* %7, i64 41, !dbg !1390
  %1150 = load i8, i8* %1149, align 1, !dbg !1390, !tbaa !624
  %1151 = zext i8 %1150 to i64, !dbg !1392
  %1152 = shl nuw nsw i64 %1151, 3, !dbg !1393
  %1153 = add nuw nsw i64 %1152, 40, !dbg !1394
  %1154 = icmp ugt i64 %1153, %1146, !dbg !1395
  %1155 = select i1 %1154, %struct.lladdr_option* null, %struct.lladdr_option* %1148, !dbg !1396
  br label %1156, !dbg !1396

; <label>:1156:                                   ; preds = %1145, %1143
  %1157 = phi %struct.lladdr_option* [ %1155, %1145 ], [ null, %1143 ], !dbg !1397
  br label %1158, !dbg !1409

; <label>:1158:                                   ; preds = %1179, %1156
  %1159 = phi i64 [ 0, %1156 ], [ %1180, %1179 ]
  %1160 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %1159, i32 0, i32 0, i64 0, !dbg !1411
  %1161 = load i32, i32* %1160, align 16, !dbg !1411, !tbaa !547
  %1162 = icmp eq i32 %1104, %1161, !dbg !1411
  br i1 %1162, label %1163, label %1179, !dbg !1411

; <label>:1163:                                   ; preds = %1158
  %1164 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %1159, i32 0, i32 0, i64 1, !dbg !1411
  %1165 = load i32, i32* %1164, align 4, !dbg !1411, !tbaa !547
  %1166 = icmp eq i32 %1107, %1165, !dbg !1411
  br i1 %1166, label %1167, label %1179, !dbg !1411

; <label>:1167:                                   ; preds = %1163
  %1168 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %1159, i32 0, i32 0, i64 2, !dbg !1411
  %1169 = load i32, i32* %1168, align 8, !dbg !1411, !tbaa !547
  %1170 = icmp eq i32 %1110, %1169, !dbg !1411
  br i1 %1170, label %1171, label %1179, !dbg !1411

; <label>:1171:                                   ; preds = %1167
  %1172 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %1159, i32 0, i32 0, i64 3, !dbg !1411
  %1173 = load i32, i32* %1172, align 4, !dbg !1411, !tbaa !547
  %1174 = icmp eq i32 %1113, %1173, !dbg !1411
  br i1 %1174, label %1175, label %1179, !dbg !1411

; <label>:1175:                                   ; preds = %1171
  %1176 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %1159, i32 0, i32 1, !dbg !1411
  %1177 = load i8, i8* %1176, align 16, !dbg !1411, !tbaa !1415
  %1178 = icmp eq i8 %1121, %1177, !dbg !1411
  br i1 %1178, label %1183, label %1179, !dbg !1417

; <label>:1179:                                   ; preds = %1175, %1171, %1167, %1163, %1158
  %1180 = add nuw nsw i64 %1159, 1, !dbg !1418
  %1181 = icmp ult i64 %1180, 10, !dbg !1419
  br i1 %1181, label %1158, label %1182, !dbg !1409, !llvm.loop !1420

; <label>:1182:                                   ; preds = %1179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1423
  br label %1186, !dbg !1425

; <label>:1183:                                   ; preds = %1175
  %1184 = trunc i64 %1159 to i16, !dbg !1417
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1423
  %1185 = icmp slt i16 %1184, 0, !dbg !1426
  br i1 %1185, label %1186, label %1188, !dbg !1425

; <label>:1186:                                   ; preds = %1182, %1183
  %1187 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %0) #7, !dbg !1428
  br label %1362

; <label>:1188:                                   ; preds = %1183
  %1189 = getelementptr inbounds i8, i8* %7, i64 8, !dbg !1430
  %1190 = bitcast i8* %1189 to <4 x i32>*, !dbg !1430
  %1191 = load <4 x i32>, <4 x i32>* %1190, align 1, !dbg !1430, !tbaa !547
  %1192 = extractelement <4 x i32> %1191, i32 0, !dbg !1432
  %1193 = and i32 %1192, 49407, !dbg !1432
  %1194 = icmp eq i32 %1193, 33022, !dbg !1432
  br i1 %1194, label %1195, label %1199, !dbg !1432

; <label>:1195:                                   ; preds = %1188
  %1196 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 23, !dbg !1432
  %1197 = load i8, i8* %1196, align 8, !dbg !1432, !tbaa !550
  %1198 = add i8 %1197, 1, !dbg !1432
  br label %1199, !dbg !1432

; <label>:1199:                                   ; preds = %1188, %1195
  %1200 = phi i8 [ %1198, %1195 ], [ 0, %1188 ]
  %1201 = shl i64 %1159, 48, !dbg !1433
  %1202 = ashr exact i64 %1201, 48, !dbg !1433
  %1203 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %1202, i32 1, i32 0, i64 0, !dbg !1433
  %1204 = bitcast i32* %1203 to <4 x i32>*, !dbg !1433
  store <4 x i32> %1191, <4 x i32>* %1204, align 4, !dbg !1433, !tbaa !547
  %1205 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %1202, i32 1, i32 1, !dbg !1433
  store i8 %1200, i8* %1205, align 4, !dbg !1433, !tbaa !1435
  %1206 = icmp eq %struct.lladdr_option* %1157, null, !dbg !1436
  br i1 %1206, label %1354, label %1207, !dbg !1438

; <label>:1207:                                   ; preds = %1199
  %1208 = getelementptr inbounds %struct.lladdr_option, %struct.lladdr_option* %1157, i64 0, i32 0, !dbg !1439
  %1209 = load i8, i8* %1208, align 1, !dbg !1439, !tbaa !1442
  %1210 = icmp eq i8 %1209, 2, !dbg !1443
  br i1 %1210, label %1211, label %1354, !dbg !1444

; <label>:1211:                                   ; preds = %1207
  %1212 = extractelement <4 x i32> %1191, i32 1
  %1213 = extractelement <4 x i32> %1191, i32 2
  %1214 = extractelement <4 x i32> %1191, i32 3
  br label %1215, !dbg !1445

; <label>:1215:                                   ; preds = %1211, %1236
  %1216 = phi i64 [ %1237, %1236 ], [ 0, %1211 ]
  %1217 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %1216, i32 0, i32 0, i64 0, !dbg !1445
  %1218 = load i32, i32* %1217, align 8, !dbg !1445, !tbaa !547
  %1219 = icmp eq i32 %1192, %1218, !dbg !1445
  br i1 %1219, label %1220, label %1236, !dbg !1445

; <label>:1220:                                   ; preds = %1215
  %1221 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %1216, i32 0, i32 0, i64 1, !dbg !1445
  %1222 = load i32, i32* %1221, align 4, !dbg !1445, !tbaa !547
  %1223 = icmp eq i32 %1212, %1222, !dbg !1445
  br i1 %1223, label %1224, label %1236, !dbg !1445

; <label>:1224:                                   ; preds = %1220
  %1225 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %1216, i32 0, i32 0, i64 2, !dbg !1445
  %1226 = load i32, i32* %1225, align 8, !dbg !1445, !tbaa !547
  %1227 = icmp eq i32 %1213, %1226, !dbg !1445
  br i1 %1227, label %1228, label %1236, !dbg !1445

; <label>:1228:                                   ; preds = %1224
  %1229 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %1216, i32 0, i32 0, i64 3, !dbg !1445
  %1230 = load i32, i32* %1229, align 4, !dbg !1445, !tbaa !547
  %1231 = icmp eq i32 %1214, %1230, !dbg !1445
  br i1 %1231, label %1232, label %1236, !dbg !1445

; <label>:1232:                                   ; preds = %1228
  %1233 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %1216, i32 0, i32 1, !dbg !1445
  %1234 = load i8, i8* %1233, align 8, !dbg !1445, !tbaa !648
  %1235 = icmp eq i8 %1200, %1234, !dbg !1445
  br i1 %1235, label %1240, label %1236, !dbg !1449

; <label>:1236:                                   ; preds = %1232, %1228, %1224, %1220, %1215
  %1237 = add nuw nsw i64 %1216, 1, !dbg !1450
  %1238 = icmp ult i64 %1237, 10, !dbg !1451
  br i1 %1238, label %1215, label %1239, !dbg !1452, !llvm.loop !655

; <label>:1239:                                   ; preds = %1236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1453
  br label %1243, !dbg !1454

; <label>:1240:                                   ; preds = %1232
  %1241 = trunc i64 %1216 to i8, !dbg !1449
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1453
  %1242 = icmp slt i8 %1241, 0, !dbg !1455
  br i1 %1242, label %1243, label %1260, !dbg !1454

; <label>:1243:                                   ; preds = %1239, %1240
  %1244 = tail call fastcc signext i8 @nd6_new_neighbor_cache_entry() #8, !dbg !1457
  %1245 = icmp sgt i8 %1244, -1, !dbg !1459
  br i1 %1245, label %1246, label %1354, !dbg !1461

; <label>:1246:                                   ; preds = %1243
  %1247 = sext i8 %1244 to i64, !dbg !1462
  %1248 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %1247, i32 1, !dbg !1464
  store %struct.netif* %1, %struct.netif** %1248, align 8, !dbg !1465, !tbaa !719
  %1249 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %1247, i32 2, i64 0, !dbg !1466
  %1250 = getelementptr inbounds %struct.lladdr_option, %struct.lladdr_option* %1157, i64 0, i32 2, i64 0, !dbg !1466
  %1251 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 20, !dbg !1466
  %1252 = load i8, i8* %1251, align 4, !dbg !1466, !tbaa !668
  %1253 = zext i8 %1252 to i64, !dbg !1466
  %1254 = tail call i8* @memcpy(i8* nonnull %1249, i8* nonnull %1250, i64 %1253) #7, !dbg !1466
  %1255 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %1247, i32 0, i32 0, i64 0, !dbg !1467
  %1256 = bitcast i32* %1255 to <4 x i32>*, !dbg !1467
  store <4 x i32> %1191, <4 x i32>* %1256, align 8, !dbg !1467, !tbaa !547
  %1257 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %1247, i32 0, i32 1, !dbg !1467
  store i8 %1200, i8* %1257, align 8, !dbg !1467, !tbaa !648
  %1258 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %1247, i32 4, !dbg !1469
  store i8 4, i8* %1258, align 8, !dbg !1470, !tbaa !690
  %1259 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %1247, i32 6, i32 0, !dbg !1471
  store i32 5, i32* %1259, align 4, !dbg !1472, !tbaa !530
  br label %1354, !dbg !1473

; <label>:1260:                                   ; preds = %1240
  %1261 = shl i64 %1216, 56
  %1262 = ashr exact i64 %1261, 56
  %1263 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %1262, i32 4
  %1264 = load i8, i8* %1263, align 8, !dbg !1476, !tbaa !690
  %1265 = icmp eq i8 %1264, 1, !dbg !1454
  br i1 %1265, label %1266, label %1354, !dbg !1473

; <label>:1266:                                   ; preds = %1260
  %1267 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %1262, i32 2, i64 0, !dbg !1478
  %1268 = getelementptr inbounds %struct.lladdr_option, %struct.lladdr_option* %1157, i64 0, i32 2, i64 0, !dbg !1478
  %1269 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 20, !dbg !1478
  %1270 = load i8, i8* %1269, align 4, !dbg !1478, !tbaa !668
  %1271 = zext i8 %1270 to i64, !dbg !1478
  %1272 = tail call i8* @memcpy(i8* nonnull %1267, i8* nonnull %1268, i64 %1271) #7, !dbg !1478
  store i8 4, i8* %1263, align 8, !dbg !1480, !tbaa !690
  %1273 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %1262, i32 6, i32 0, !dbg !1481
  store i32 5, i32* %1273, align 4, !dbg !1482, !tbaa !530
  br label %1354, !dbg !1483

; <label>:1274:                                   ; preds = %2
  %1275 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 3, !dbg !1484
  %1276 = load i16, i16* %1275, align 2, !dbg !1484, !tbaa !535
  %1277 = icmp ult i16 %1276, 48, !dbg !1486
  br i1 %1277, label %1278, label %1284, !dbg !1487

; <label>:1278:                                   ; preds = %1274
  %1279 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !1488
  %1280 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 5), align 2, !dbg !1490, !tbaa !541
  %1281 = add i16 %1280, 1, !dbg !1490
  store i16 %1281, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 5), align 2, !dbg !1490, !tbaa !541
  %1282 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !1491, !tbaa !543
  %1283 = add i16 %1282, 1, !dbg !1491
  store i16 %1283, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !1491, !tbaa !543
  br label %1362

; <label>:1284:                                   ; preds = %1274
  %1285 = getelementptr inbounds i8, i8* %7, i64 32, !dbg !1494
  %1286 = bitcast i8* %1285 to i32*, !dbg !1494
  %1287 = load i32, i32* %1286, align 1, !dbg !1494, !tbaa !547
  %1288 = getelementptr inbounds i8, i8* %7, i64 36, !dbg !1494
  %1289 = bitcast i8* %1288 to i32*, !dbg !1494
  %1290 = load i32, i32* %1289, align 1, !dbg !1494, !tbaa !547
  %1291 = getelementptr inbounds i8, i8* %7, i64 40, !dbg !1494
  %1292 = bitcast i8* %1291 to i32*, !dbg !1494
  %1293 = load i32, i32* %1292, align 1, !dbg !1494, !tbaa !547
  %1294 = getelementptr inbounds i8, i8* %7, i64 44, !dbg !1494
  %1295 = bitcast i8* %1294 to i32*, !dbg !1494
  %1296 = load i32, i32* %1295, align 1, !dbg !1494, !tbaa !547
  %1297 = and i32 %1287, 49407, !dbg !1496
  %1298 = icmp eq i32 %1297, 33022, !dbg !1496
  br i1 %1298, label %1302, label %1299, !dbg !1496

; <label>:1299:                                   ; preds = %1284
  %1300 = trunc i32 %1287 to i16, !dbg !1496
  %1301 = and i16 %1300, -28673, !dbg !1496
  switch i16 %1301, label %1306 [
    i16 511, label %1302
    i16 767, label %1302
  ], !dbg !1496

; <label>:1302:                                   ; preds = %1299, %1299, %1284
  %1303 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 23, !dbg !1496
  %1304 = load i8, i8* %1303, align 8, !dbg !1496, !tbaa !550
  %1305 = add i8 %1304, 1, !dbg !1496
  br label %1306, !dbg !1496

; <label>:1306:                                   ; preds = %1299, %1302
  %1307 = phi i8 [ %1305, %1302 ], [ 0, %1299 ]
  br label %1308, !dbg !1501

; <label>:1308:                                   ; preds = %1329, %1306
  %1309 = phi i64 [ 0, %1306 ], [ %1330, %1329 ]
  %1310 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %1309, i32 0, i32 0, i64 0, !dbg !1502
  %1311 = load i32, i32* %1310, align 16, !dbg !1502, !tbaa !547
  %1312 = icmp eq i32 %1287, %1311, !dbg !1502
  br i1 %1312, label %1313, label %1329, !dbg !1502

; <label>:1313:                                   ; preds = %1308
  %1314 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %1309, i32 0, i32 0, i64 1, !dbg !1502
  %1315 = load i32, i32* %1314, align 4, !dbg !1502, !tbaa !547
  %1316 = icmp eq i32 %1290, %1315, !dbg !1502
  br i1 %1316, label %1317, label %1329, !dbg !1502

; <label>:1317:                                   ; preds = %1313
  %1318 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %1309, i32 0, i32 0, i64 2, !dbg !1502
  %1319 = load i32, i32* %1318, align 8, !dbg !1502, !tbaa !547
  %1320 = icmp eq i32 %1293, %1319, !dbg !1502
  br i1 %1320, label %1321, label %1329, !dbg !1502

; <label>:1321:                                   ; preds = %1317
  %1322 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %1309, i32 0, i32 0, i64 3, !dbg !1502
  %1323 = load i32, i32* %1322, align 4, !dbg !1502, !tbaa !547
  %1324 = icmp eq i32 %1296, %1323, !dbg !1502
  br i1 %1324, label %1325, label %1329, !dbg !1502

; <label>:1325:                                   ; preds = %1321
  %1326 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %1309, i32 0, i32 1, !dbg !1502
  %1327 = load i8, i8* %1326, align 16, !dbg !1502, !tbaa !1415
  %1328 = icmp eq i8 %1307, %1327, !dbg !1502
  br i1 %1328, label %1333, label %1329, !dbg !1503

; <label>:1329:                                   ; preds = %1325, %1321, %1317, %1313, %1308
  %1330 = add nuw nsw i64 %1309, 1, !dbg !1504
  %1331 = icmp ult i64 %1330, 10, !dbg !1505
  br i1 %1331, label %1308, label %1332, !dbg !1501, !llvm.loop !1420

; <label>:1332:                                   ; preds = %1329
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1506
  br label %1336, !dbg !1507

; <label>:1333:                                   ; preds = %1325
  %1334 = trunc i64 %1309 to i16, !dbg !1503
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1506
  %1335 = icmp slt i16 %1334, 0, !dbg !1508
  br i1 %1335, label %1336, label %1338, !dbg !1507

; <label>:1336:                                   ; preds = %1332, %1333
  %1337 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %0) #7, !dbg !1510
  br label %1362

; <label>:1338:                                   ; preds = %1333
  %1339 = getelementptr inbounds i8, i8* %7, i64 4, !dbg !1512
  %1340 = bitcast i8* %1339 to i32*, !dbg !1512
  %1341 = load i32, i32* %1340, align 1, !dbg !1512, !tbaa !1513
  %1342 = tail call i32 @lwip_htonl(i32 %1341) #7, !dbg !1515
  %1343 = icmp ult i32 %1342, 65535, !dbg !1517
  %1344 = select i1 %1343, i32 %1342, i32 65535, !dbg !1517
  %1345 = trunc i32 %1344 to i16, !dbg !1518
  %1346 = shl i64 %1309, 48, !dbg !1519
  %1347 = ashr exact i64 %1346, 48, !dbg !1519
  %1348 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %1347, i32 2, !dbg !1520
  store i16 %1345, i16* %1348, align 8, !dbg !1521, !tbaa !1522
  br label %1354

; <label>:1349:                                   ; preds = %2
  %1350 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 8), align 2, !dbg !1523, !tbaa !571
  %1351 = add i16 %1350, 1, !dbg !1523
  store i16 %1351, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 8), align 2, !dbg !1523, !tbaa !571
  %1352 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !1524, !tbaa !543
  %1353 = add i16 %1352, 1, !dbg !1524
  store i16 %1353, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !1524, !tbaa !543
  br label %1354, !dbg !1525

; <label>:1354:                                   ; preds = %1084, %1246, %718, %1199, %1207, %1260, %1266, %1243, %154, %241, %250, %159, %153, %1338, %493, %1349
  %1355 = call zeroext i8 @pbuf_free(%struct.pbuf* %0) #7, !dbg !1526
  br label %1362, !dbg !1527

; <label>:1356:                                   ; preds = %821, %801, %782, %772, %754, %748
  %1357 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 5), align 2, !dbg !1528, !tbaa !541
  %1358 = add i16 %1357, 1, !dbg !1528
  store i16 %1358, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 5), align 2, !dbg !1528, !tbaa !541
  %1359 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !1529, !tbaa !543
  %1360 = add i16 %1359, 1, !dbg !1529
  store i16 %1360, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !1529, !tbaa !543
  %1361 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %0) #7, !dbg !1530
  br label %1362, !dbg !1531

; <label>:1362:                                   ; preds = %693, %517, %498, %1336, %1278, %1186, %1137, %1095, %1468, %469, %422, %288, %256, %225, %211, %196, %123, %109, %104, %51, %13, %1356, %1354
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1531
  ret void, !dbg !1531

; <label>:1363:                                   ; preds = %106
  %1364 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 0, !dbg !584
  %1365 = load i32, i32* %1364, align 8, !dbg !584, !tbaa !530
  %1366 = icmp eq i32 %22, %1365, !dbg !584
  br i1 %1366, label %1367, label %1383, !dbg !584

; <label>:1367:                                   ; preds = %1363
  %1368 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 1, !dbg !584
  %1369 = load i32, i32* %1368, align 4, !dbg !584, !tbaa !530
  %1370 = icmp eq i32 %25, %1369, !dbg !584
  br i1 %1370, label %1371, label %1383, !dbg !584

; <label>:1371:                                   ; preds = %1367
  %1372 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 2, !dbg !584
  %1373 = load i32, i32* %1372, align 8, !dbg !584, !tbaa !530
  %1374 = icmp eq i32 %28, %1373, !dbg !584
  br i1 %1374, label %1375, label %1383, !dbg !584

; <label>:1375:                                   ; preds = %1371
  %1376 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 3, !dbg !584
  %1377 = load i32, i32* %1376, align 4, !dbg !584, !tbaa !530
  %1378 = icmp eq i32 %31, %1377, !dbg !584
  br i1 %1378, label %1379, label %1383, !dbg !584

; <label>:1379:                                   ; preds = %1375
  %1380 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 1, i32 0, i32 0, i32 1, !dbg !584
  %1381 = load i8, i8* %1380, align 8, !dbg !584, !tbaa !530
  %1382 = icmp eq i8 %39, %1381, !dbg !584
  br i1 %1382, label %84, label %1383, !dbg !585

; <label>:1383:                                   ; preds = %1379, %1375, %1371, %1367, %1363, %106, %106
  %1384 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 5, i64 2, !dbg !577
  %1385 = load i8, i8* %1384, align 1, !dbg !577, !tbaa !530
  switch i8 %1385, label %1386 [
    i8 0, label %1406
    i8 64, label %1406
  ], !dbg !583

; <label>:1386:                                   ; preds = %1383
  %1387 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 0, !dbg !584
  %1388 = load i32, i32* %1387, align 8, !dbg !584, !tbaa !530
  %1389 = icmp eq i32 %22, %1388, !dbg !584
  br i1 %1389, label %1390, label %1406, !dbg !584

; <label>:1390:                                   ; preds = %1386
  %1391 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 1, !dbg !584
  %1392 = load i32, i32* %1391, align 4, !dbg !584, !tbaa !530
  %1393 = icmp eq i32 %25, %1392, !dbg !584
  br i1 %1393, label %1394, label %1406, !dbg !584

; <label>:1394:                                   ; preds = %1390
  %1395 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 2, !dbg !584
  %1396 = load i32, i32* %1395, align 8, !dbg !584, !tbaa !530
  %1397 = icmp eq i32 %28, %1396, !dbg !584
  br i1 %1397, label %1398, label %1406, !dbg !584

; <label>:1398:                                   ; preds = %1394
  %1399 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 3, !dbg !584
  %1400 = load i32, i32* %1399, align 4, !dbg !584, !tbaa !530
  %1401 = icmp eq i32 %31, %1400, !dbg !584
  br i1 %1401, label %1402, label %1406, !dbg !584

; <label>:1402:                                   ; preds = %1398
  %1403 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 2, i32 0, i32 0, i32 1, !dbg !584
  %1404 = load i8, i8* %1403, align 8, !dbg !584, !tbaa !530
  %1405 = icmp eq i8 %39, %1404, !dbg !584
  br i1 %1405, label %84, label %1406, !dbg !585

; <label>:1406:                                   ; preds = %1402, %1398, %1394, %1390, %1386, %1383, %1383
  %1407 = icmp ult i16 %11, 26, !dbg !1532
  br i1 %1407, label %109, label %115, !dbg !1533

; <label>:1408:                                   ; preds = %349
  %1409 = and i32 %352, 8, !dbg !785
  %1410 = icmp ne i32 %1409, 0, !dbg !785
  %1411 = and i1 %1410, %316, !dbg !786
  br i1 %1411, label %1412, label %1435, !dbg !786

; <label>:1412:                                   ; preds = %1408, %349
  %1413 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 0, !dbg !787
  %1414 = load i32, i32* %1413, align 8, !dbg !787, !tbaa !530
  %1415 = icmp eq i32 %268, %1414, !dbg !787
  br i1 %1415, label %1416, label %1435, !dbg !787

; <label>:1416:                                   ; preds = %1412
  %1417 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 1, !dbg !787
  %1418 = load i32, i32* %1417, align 4, !dbg !787, !tbaa !530
  %1419 = extractelement <4 x i32> %265, i32 1, !dbg !787
  %1420 = icmp eq i32 %1419, %1418, !dbg !787
  br i1 %1420, label %1421, label %1435, !dbg !787

; <label>:1421:                                   ; preds = %1416
  %1422 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 2, !dbg !787
  %1423 = load i32, i32* %1422, align 8, !dbg !787, !tbaa !530
  %1424 = extractelement <4 x i32> %265, i32 2, !dbg !787
  %1425 = icmp eq i32 %1424, %1423, !dbg !787
  br i1 %1425, label %1426, label %1435, !dbg !787

; <label>:1426:                                   ; preds = %1421
  %1427 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 3, !dbg !787
  %1428 = load i32, i32* %1427, align 4, !dbg !787, !tbaa !530
  %1429 = extractelement <4 x i32> %265, i32 3, !dbg !787
  %1430 = icmp eq i32 %1429, %1428, !dbg !787
  br i1 %1430, label %1431, label %1435, !dbg !787

; <label>:1431:                                   ; preds = %1426
  %1432 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 1, i32 0, i32 0, i32 1, !dbg !787
  %1433 = load i8, i8* %1432, align 8, !dbg !787, !tbaa !530
  %1434 = icmp eq i8 %276, %1433, !dbg !787
  br i1 %1434, label %355, label %1435, !dbg !788

; <label>:1435:                                   ; preds = %1431, %1426, %1421, %1416, %1412, %1408
  %1436 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 5, i64 2, !dbg !779
  %1437 = load i8, i8* %1436, align 1, !dbg !779, !tbaa !530
  %1438 = zext i8 %1437 to i32, !dbg !779
  %1439 = and i32 %1438, 16, !dbg !779
  %1440 = icmp eq i32 %1439, 0, !dbg !779
  br i1 %1440, label %1441, label %1445, !dbg !784

; <label>:1441:                                   ; preds = %1435
  %1442 = and i32 %1438, 8, !dbg !785
  %1443 = icmp ne i32 %1442, 0, !dbg !785
  %1444 = and i1 %1443, %316, !dbg !786
  br i1 %1444, label %1445, label %1468, !dbg !786

; <label>:1445:                                   ; preds = %1441, %1435
  %1446 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 0, !dbg !787
  %1447 = load i32, i32* %1446, align 8, !dbg !787, !tbaa !530
  %1448 = icmp eq i32 %268, %1447, !dbg !787
  br i1 %1448, label %1449, label %1468, !dbg !787

; <label>:1449:                                   ; preds = %1445
  %1450 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 1, !dbg !787
  %1451 = load i32, i32* %1450, align 4, !dbg !787, !tbaa !530
  %1452 = extractelement <4 x i32> %265, i32 1, !dbg !787
  %1453 = icmp eq i32 %1452, %1451, !dbg !787
  br i1 %1453, label %1454, label %1468, !dbg !787

; <label>:1454:                                   ; preds = %1449
  %1455 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 2, !dbg !787
  %1456 = load i32, i32* %1455, align 8, !dbg !787, !tbaa !530
  %1457 = extractelement <4 x i32> %265, i32 2, !dbg !787
  %1458 = icmp eq i32 %1457, %1456, !dbg !787
  br i1 %1458, label %1459, label %1468, !dbg !787

; <label>:1459:                                   ; preds = %1454
  %1460 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 3, !dbg !787
  %1461 = load i32, i32* %1460, align 4, !dbg !787, !tbaa !530
  %1462 = extractelement <4 x i32> %265, i32 3, !dbg !787
  %1463 = icmp eq i32 %1462, %1461, !dbg !787
  br i1 %1463, label %1464, label %1468, !dbg !787

; <label>:1464:                                   ; preds = %1459
  %1465 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 2, i32 0, i32 0, i32 1, !dbg !787
  %1466 = load i8, i8* %1465, align 8, !dbg !787, !tbaa !530
  %1467 = icmp eq i8 %276, %1466, !dbg !787
  br i1 %1467, label %355, label %1468, !dbg !788

; <label>:1468:                                   ; preds = %1464, %1459, %1454, %1449, %1445, %1441
  %1469 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !1534
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %252) #6, !dbg !741
  br label %1362
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local zeroext i8 @pbuf_free(%struct.pbuf*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc void @nd6_send_q(i8 signext) unnamed_addr #0 !dbg !1537 {
  %2 = alloca %struct.ip6_addr, align 16
  %3 = bitcast %struct.ip6_addr* %2 to i8*, !dbg !1546
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %3) #6, !dbg !1546
  %4 = icmp ugt i8 %0, 9, !dbg !1547
  br i1 %4, label %51, label %5, !dbg !1547

; <label>:5:                                      ; preds = %1
  %6 = sext i8 %0 to i64, !dbg !1549
  %7 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %6, i32 3, !dbg !1550
  %8 = load %struct.nd6_q_entry*, %struct.nd6_q_entry** %7, align 8, !dbg !1550, !tbaa !726
  %9 = icmp eq %struct.nd6_q_entry* %8, null, !dbg !1551
  br i1 %9, label %51, label %10, !dbg !1552

; <label>:10:                                     ; preds = %5
  %11 = bitcast %struct.nd6_q_entry** %7 to i64*
  %12 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %2, i64 0, i32 1
  %13 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %6, i32 1
  %14 = bitcast %struct.ip6_addr* %2 to <4 x i32>*
  br label %15, !dbg !1552

; <label>:15:                                     ; preds = %10, %40
  %16 = phi %struct.nd6_q_entry* [ %8, %10 ], [ %49, %40 ]
  %17 = bitcast %struct.nd6_q_entry* %16 to i64*, !dbg !1554
  %18 = load i64, i64* %17, align 8, !dbg !1554, !tbaa !1556
  store i64 %18, i64* %11, align 8, !dbg !1558, !tbaa !726
  %19 = getelementptr inbounds %struct.nd6_q_entry, %struct.nd6_q_entry* %16, i64 0, i32 1, !dbg !1559
  %20 = load %struct.pbuf*, %struct.pbuf** %19, align 8, !dbg !1559, !tbaa !1560
  %21 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %20, i64 0, i32 1, !dbg !1561
  %22 = bitcast i8** %21 to %struct.ip6_hdr**, !dbg !1561
  %23 = load %struct.ip6_hdr*, %struct.ip6_hdr** %22, align 8, !dbg !1561, !tbaa !526
  %24 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %23, i64 0, i32 5, i32 0, i64 0, !dbg !1563
  %25 = bitcast i32* %24 to <4 x i32>*, !dbg !1563
  %26 = load <4 x i32>, <4 x i32>* %25, align 1, !dbg !1563, !tbaa !547
  store <4 x i32> %26, <4 x i32>* %14, align 16, !dbg !1563, !tbaa !547
  store i8 0, i8* %12, align 16, !dbg !1563, !tbaa !745
  %27 = extractelement <4 x i32> %26, i32 0, !dbg !1565
  %28 = and i32 %27, 49407, !dbg !1565
  %29 = icmp eq i32 %28, 33022, !dbg !1565
  br i1 %29, label %35, label %30, !dbg !1565

; <label>:30:                                     ; preds = %15
  %31 = trunc i32 %27 to i16, !dbg !1565
  %32 = and i16 %31, -28673, !dbg !1565
  switch i16 %32, label %33 [
    i16 511, label %35
    i16 767, label %35
  ], !dbg !1565

; <label>:33:                                     ; preds = %30
  %34 = load %struct.netif*, %struct.netif** %13, align 8, !dbg !1566, !tbaa !719
  br label %40, !dbg !1565

; <label>:35:                                     ; preds = %30, %30, %15
  %36 = load %struct.netif*, %struct.netif** %13, align 8, !dbg !1565, !tbaa !719
  %37 = getelementptr inbounds %struct.netif, %struct.netif* %36, i64 0, i32 23, !dbg !1565
  %38 = load i8, i8* %37, align 8, !dbg !1565, !tbaa !550
  %39 = add i8 %38, 1, !dbg !1565
  br label %40, !dbg !1565

; <label>:40:                                     ; preds = %33, %35
  %41 = phi %struct.netif* [ %36, %35 ], [ %34, %33 ], !dbg !1566
  %42 = phi i8 [ %39, %35 ], [ 0, %33 ], !dbg !1565
  store i8 %42, i8* %12, align 16, !dbg !1565, !tbaa !745
  %43 = getelementptr inbounds %struct.netif, %struct.netif* %41, i64 0, i32 11, !dbg !1567
  %44 = load i8 (%struct.netif*, %struct.pbuf*, %struct.ip6_addr*)*, i8 (%struct.netif*, %struct.pbuf*, %struct.ip6_addr*)** %43, align 8, !dbg !1567, !tbaa !1568
  %45 = call signext i8 %44(%struct.netif* %41, %struct.pbuf* %20, %struct.ip6_addr* nonnull %2) #7, !dbg !1570
  %46 = load %struct.pbuf*, %struct.pbuf** %19, align 8, !dbg !1571, !tbaa !1560
  %47 = call zeroext i8 @pbuf_free(%struct.pbuf* %46) #7, !dbg !1572
  %48 = bitcast %struct.nd6_q_entry* %16 to i8*, !dbg !1573
  call void @memp_free(i32 12, i8* %48) #7, !dbg !1574
  %49 = load %struct.nd6_q_entry*, %struct.nd6_q_entry** %7, align 8, !dbg !1550, !tbaa !726
  %50 = icmp eq %struct.nd6_q_entry* %49, null, !dbg !1551
  br i1 %50, label %51, label %15, !dbg !1552, !llvm.loop !1575

; <label>:51:                                     ; preds = %40, %5, %1
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %3) #6, !dbg !1577
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1577
  ret void, !dbg !1577
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define internal fastcc void @nd6_send_na(%struct.netif*, %struct.ip6_addr*, i8 zeroext) unnamed_addr #0 !dbg !1578 {
  %4 = icmp eq %struct.ip6_addr* %1, null, !dbg !1594
  br i1 %4, label %5, label %6, !dbg !1597

; <label>:5:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !1598
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1601
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1601
  unreachable, !dbg !1601

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 20, !dbg !1606
  %8 = load i8, i8* %7, align 4, !dbg !1606, !tbaa !668
  %9 = zext i8 %8 to i16, !dbg !1607
  %10 = add nuw nsw i16 %9, 2, !dbg !1608
  %11 = lshr i16 %10, 3, !dbg !1609
  %12 = add i8 %8, 2, !dbg !1610
  %13 = and i8 %12, 7, !dbg !1610
  %14 = icmp ne i8 %13, 0, !dbg !1611
  %15 = zext i1 %14 to i16, !dbg !1611
  %16 = add nuw nsw i16 %11, %15, !dbg !1612
  %17 = shl nuw nsw i16 %16, 3, !dbg !1614
  %18 = add nuw nsw i16 %17, 24, !dbg !1615
  %19 = tail call %struct.pbuf* @pbuf_alloc(i32 54, i16 zeroext %18, i32 640) #7, !dbg !1616
  %20 = icmp eq %struct.pbuf* %19, null, !dbg !1618
  br i1 %20, label %21, label %24, !dbg !1620

; <label>:21:                                     ; preds = %6
  %22 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 6), align 2, !dbg !1621, !tbaa !862
  %23 = add i16 %22, 1, !dbg !1621
  store i16 %23, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 6), align 2, !dbg !1621, !tbaa !862
  br label %89, !dbg !1623

; <label>:24:                                     ; preds = %6
  %25 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %19, i64 0, i32 1, !dbg !1624
  %26 = load i8*, i8** %25, align 8, !dbg !1624, !tbaa !526
  %27 = getelementptr inbounds i8, i8* %26, i64 24, !dbg !1626
  store i8 -120, i8* %26, align 1, !dbg !1628, !tbaa !1629
  %28 = getelementptr inbounds i8, i8* %26, i64 1, !dbg !1630
  store i8 0, i8* %28, align 1, !dbg !1631, !tbaa !563
  %29 = getelementptr inbounds i8, i8* %26, i64 2, !dbg !1632
  %30 = bitcast i8* %29 to i16*, !dbg !1632
  store i16 0, i16* %30, align 1, !dbg !1633, !tbaa !1634
  %31 = zext i8 %2 to i32, !dbg !1635
  %32 = and i8 %2, -16, !dbg !1636
  %33 = getelementptr inbounds i8, i8* %26, i64 4, !dbg !1637
  store i8 %32, i8* %33, align 1, !dbg !1638, !tbaa !663
  %34 = getelementptr inbounds i8, i8* %26, i64 5, !dbg !1639
  store i8 0, i8* %34, align 1, !dbg !1640, !tbaa !530
  %35 = getelementptr inbounds i8, i8* %26, i64 6, !dbg !1641
  store i8 0, i8* %35, align 1, !dbg !1642, !tbaa !530
  %36 = getelementptr inbounds i8, i8* %26, i64 7, !dbg !1643
  store i8 0, i8* %36, align 1, !dbg !1644, !tbaa !530
  %37 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 0, !dbg !1645
  %38 = load i32, i32* %37, align 4, !dbg !1645, !tbaa !547
  %39 = getelementptr inbounds i8, i8* %26, i64 8, !dbg !1645
  %40 = bitcast i8* %39 to i32*, !dbg !1645
  store i32 %38, i32* %40, align 1, !dbg !1645, !tbaa !547
  %41 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 1, !dbg !1645
  %42 = load i32, i32* %41, align 4, !dbg !1645, !tbaa !547
  %43 = getelementptr inbounds i8, i8* %26, i64 12, !dbg !1645
  %44 = bitcast i8* %43 to i32*, !dbg !1645
  store i32 %42, i32* %44, align 1, !dbg !1645, !tbaa !547
  %45 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 2, !dbg !1645
  %46 = load i32, i32* %45, align 4, !dbg !1645, !tbaa !547
  %47 = getelementptr inbounds i8, i8* %26, i64 16, !dbg !1645
  %48 = bitcast i8* %47 to i32*, !dbg !1645
  store i32 %46, i32* %48, align 1, !dbg !1645, !tbaa !547
  %49 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 3, !dbg !1645
  %50 = load i32, i32* %49, align 4, !dbg !1645, !tbaa !547
  %51 = getelementptr inbounds i8, i8* %26, i64 20, !dbg !1645
  %52 = bitcast i8* %51 to i32*, !dbg !1645
  store i32 %50, i32* %52, align 1, !dbg !1645, !tbaa !547
  store i8 2, i8* %27, align 1, !dbg !1647, !tbaa !1442
  %53 = trunc i16 %16 to i8, !dbg !1648
  %54 = getelementptr inbounds i8, i8* %26, i64 25, !dbg !1649
  store i8 %53, i8* %54, align 1, !dbg !1650, !tbaa !624
  %55 = getelementptr inbounds i8, i8* %26, i64 26, !dbg !1651
  %56 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 0, !dbg !1651
  %57 = load i8, i8* %7, align 4, !dbg !1651, !tbaa !668
  %58 = zext i8 %57 to i64, !dbg !1651
  %59 = tail call i8* @memcpy(i8* nonnull %55, i8* nonnull %56, i64 %58) #7, !dbg !1651
  %60 = and i32 %31, 1, !dbg !1652
  %61 = icmp eq i32 %60, 0, !dbg !1652
  br i1 %61, label %65, label %62, !dbg !1654

; <label>:62:                                     ; preds = %24
  store i32 767, i32* getelementptr inbounds (%struct.ip6_addr, %struct.ip6_addr* @multicast_address, i64 0, i32 0, i64 0), align 4, !dbg !1655, !tbaa !547
  store i32 0, i32* getelementptr inbounds (%struct.ip6_addr, %struct.ip6_addr* @multicast_address, i64 0, i32 0, i64 1), align 4, !dbg !1655, !tbaa !547
  store i32 16777216, i32* getelementptr inbounds (%struct.ip6_addr, %struct.ip6_addr* @multicast_address, i64 0, i32 0, i64 2), align 4, !dbg !1655, !tbaa !547
  %63 = load i32, i32* %49, align 4, !dbg !1655, !tbaa !547
  %64 = or i32 %63, 255, !dbg !1655
  br label %69, !dbg !1659

; <label>:65:                                     ; preds = %24
  %66 = and i32 %31, 2, !dbg !1660
  %67 = icmp eq i32 %66, 0, !dbg !1660
  br i1 %67, label %74, label %68, !dbg !1662

; <label>:68:                                     ; preds = %65
  store i32 767, i32* getelementptr inbounds (%struct.ip6_addr, %struct.ip6_addr* @multicast_address, i64 0, i32 0, i64 0), align 4, !dbg !1663, !tbaa !547
  store i32 0, i32* getelementptr inbounds (%struct.ip6_addr, %struct.ip6_addr* @multicast_address, i64 0, i32 0, i64 1), align 4, !dbg !1663, !tbaa !547
  store i32 0, i32* getelementptr inbounds (%struct.ip6_addr, %struct.ip6_addr* @multicast_address, i64 0, i32 0, i64 2), align 4, !dbg !1663, !tbaa !547
  br label %69, !dbg !1666

; <label>:69:                                     ; preds = %68, %62
  %70 = phi i32 [ %64, %62 ], [ 16777216, %68 ]
  store i32 %70, i32* getelementptr inbounds (%struct.ip6_addr, %struct.ip6_addr* @multicast_address, i64 0, i32 0, i64 3), align 4, !dbg !1667, !tbaa !547
  %71 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 23, !dbg !1668
  %72 = load i8, i8* %71, align 8, !dbg !1668, !tbaa !550
  %73 = add i8 %72, 1, !dbg !1668
  store i8 %73, i8* getelementptr inbounds (%struct.ip6_addr, %struct.ip6_addr* @multicast_address, i64 0, i32 1), align 4, !dbg !1668, !tbaa !745
  br label %74, !dbg !1669

; <label>:74:                                     ; preds = %69, %65
  %75 = phi %struct.ip6_addr* [ getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0), %65 ], [ @multicast_address, %69 ], !dbg !1671
  %76 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 16, !dbg !1669
  %77 = load i16, i16* %76, align 8, !dbg !1669, !tbaa !1673
  %78 = and i16 %77, 16, !dbg !1669
  %79 = icmp eq i16 %78, 0, !dbg !1669
  br i1 %79, label %84, label %80, !dbg !1674

; <label>:80:                                     ; preds = %74
  %81 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %19, i64 0, i32 3, !dbg !1675
  %82 = load i16, i16* %81, align 2, !dbg !1675, !tbaa !535
  %83 = tail call zeroext i16 @ip6_chksum_pseudo(%struct.pbuf* nonnull %19, i8 zeroext 58, i16 zeroext %82, %struct.ip6_addr* nonnull %1, %struct.ip6_addr* %75) #7, !dbg !1677
  store i16 %83, i16* %30, align 1, !dbg !1678, !tbaa !1634
  br label %84, !dbg !1679

; <label>:84:                                     ; preds = %74, %80
  %85 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 0), align 2, !dbg !1680, !tbaa !1681
  %86 = add i16 %85, 1, !dbg !1680
  store i16 %86, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 0), align 2, !dbg !1680, !tbaa !1681
  %87 = tail call signext i8 @ip6_output_if(%struct.pbuf* nonnull %19, %struct.ip6_addr* nonnull %1, %struct.ip6_addr* %75, i8 zeroext -1, i8 zeroext 0, i8 zeroext 58, %struct.netif* nonnull %0) #7, !dbg !1682
  %88 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %19) #7, !dbg !1683
  br label %89, !dbg !1684

; <label>:89:                                     ; preds = %84, %21
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1684
  ret void, !dbg !1684
}

; Function Attrs: noredzone nounwind
define internal fastcc signext i8 @nd6_new_neighbor_cache_entry() unnamed_addr #0 !dbg !1685 {
  %1 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 0, i32 4), align 16, !dbg !1693, !tbaa !690
  %2 = icmp eq i8 %1, 0, !dbg !1698
  br i1 %2, label %167, label %3, !dbg !1699

; <label>:3:                                      ; preds = %0
  %4 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 1, i32 4), align 8, !dbg !1693, !tbaa !690
  %5 = icmp eq i8 %4, 0, !dbg !1698
  br i1 %5, label %167, label %517, !dbg !1699

; <label>:6:                                      ; preds = %507, %502, %497, %492, %487, %482, %477, %472, %21, %541
  %7 = phi i8 [ 0, %541 ], [ 1, %21 ], [ 2, %472 ], [ 3, %477 ], [ 4, %482 ], [ 5, %487 ], [ 6, %492 ], [ 7, %497 ], [ 8, %502 ], [ 9, %507 ]
  %8 = phi i64 [ 0, %541 ], [ 1, %21 ], [ 2, %472 ], [ 3, %477 ], [ 4, %482 ], [ 5, %487 ], [ 6, %492 ], [ 7, %497 ], [ 8, %502 ], [ 9, %507 ], !dbg !1700
  %9 = phi i8* [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 0, i32 4), %541 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 1, i32 4), %21 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 2, i32 4), %472 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 3, i32 4), %477 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 4, i32 4), %482 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 5, i32 4), %487 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 6, i32 4), %492 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 7, i32 4), %497 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 8, i32 4), %502 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 9, i32 4), %507 ], !dbg !1705
  %10 = phi i8* [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 0, i32 5), %541 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 1, i32 5), %21 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 2, i32 5), %472 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 3, i32 5), %477 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 4, i32 5), %482 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 5, i32 5), %487 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 6, i32 5), %492 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 7, i32 5), %497 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 8, i32 5), %502 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 9, i32 5), %507 ], !dbg !1706
  %11 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %8, i32 3, !dbg !1713
  %12 = load %struct.nd6_q_entry*, %struct.nd6_q_entry** %11, align 8, !dbg !1713, !tbaa !726
  %13 = icmp eq %struct.nd6_q_entry* %12, null, !dbg !1715
  br i1 %13, label %15, label %14, !dbg !1716

; <label>:14:                                     ; preds = %6
  tail call fastcc void @nd6_free_q(%struct.nd6_q_entry* nonnull %12) #7, !dbg !1717
  store %struct.nd6_q_entry* null, %struct.nd6_q_entry** %11, align 8, !dbg !1719, !tbaa !726
  br label %15, !dbg !1720

; <label>:15:                                     ; preds = %6, %14
  store i8 0, i8* %9, align 8, !dbg !1721, !tbaa !690
  store i8 0, i8* %10, align 1, !dbg !1722, !tbaa !992
  %16 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %8, i32 1, !dbg !1723
  store %struct.netif* null, %struct.netif** %16, align 8, !dbg !1724, !tbaa !719
  %17 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %8, i32 6, i32 0, !dbg !1725
  store i32 0, i32* %17, align 4, !dbg !1726, !tbaa !530
  %18 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %8, i32 0, i32 0, i64 0, !dbg !1727
  %19 = bitcast i32* %18 to <4 x i32>*, !dbg !1727
  store <4 x i32> zeroinitializer, <4 x i32>* %19, align 8, !dbg !1727, !tbaa !547
  %20 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %8, i32 0, i32 1, !dbg !1727
  store i8 0, i8* %20, align 8, !dbg !1727, !tbaa !648
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1729
  br label %167, !dbg !1730

; <label>:21:                                     ; preds = %541
  %22 = icmp eq i8 %4, 3, !dbg !1731
  %23 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 1, i32 5), align 1, !dbg !1706
  %24 = icmp eq i8 %23, 0, !dbg !1732
  %25 = and i1 %22, %24, !dbg !1733
  br i1 %25, label %6, label %472, !dbg !1733

; <label>:26:                                     ; preds = %462, %457, %452, %447, %442, %437, %432, %427, %41, %512
  %27 = phi i8 [ 0, %512 ], [ 1, %41 ], [ 2, %427 ], [ 3, %432 ], [ 4, %437 ], [ 5, %442 ], [ 6, %447 ], [ 7, %452 ], [ 8, %457 ], [ 9, %462 ]
  %28 = phi i64 [ 0, %512 ], [ 1, %41 ], [ 2, %427 ], [ 3, %432 ], [ 4, %437 ], [ 5, %442 ], [ 6, %447 ], [ 7, %452 ], [ 8, %457 ], [ 9, %462 ], !dbg !1734
  %29 = phi i8* [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 0, i32 4), %512 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 1, i32 4), %41 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 2, i32 4), %427 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 3, i32 4), %432 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 4, i32 4), %437 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 5, i32 4), %442 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 6, i32 4), %447 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 7, i32 4), %452 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 8, i32 4), %457 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 9, i32 4), %462 ], !dbg !1739
  %30 = phi i8* [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 0, i32 5), %512 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 1, i32 5), %41 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 2, i32 5), %427 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 3, i32 5), %432 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 4, i32 5), %437 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 5, i32 5), %442 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 6, i32 5), %447 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 7, i32 5), %452 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 8, i32 5), %457 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 9, i32 5), %462 ], !dbg !1740
  %31 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %28, i32 3, !dbg !1744
  %32 = load %struct.nd6_q_entry*, %struct.nd6_q_entry** %31, align 8, !dbg !1744, !tbaa !726
  %33 = icmp eq %struct.nd6_q_entry* %32, null, !dbg !1745
  br i1 %33, label %35, label %34, !dbg !1746

; <label>:34:                                     ; preds = %26
  tail call fastcc void @nd6_free_q(%struct.nd6_q_entry* nonnull %32) #7, !dbg !1747
  store %struct.nd6_q_entry* null, %struct.nd6_q_entry** %31, align 8, !dbg !1748, !tbaa !726
  br label %35, !dbg !1749

; <label>:35:                                     ; preds = %26, %34
  store i8 0, i8* %29, align 8, !dbg !1750, !tbaa !690
  store i8 0, i8* %30, align 1, !dbg !1751, !tbaa !992
  %36 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %28, i32 1, !dbg !1752
  store %struct.netif* null, %struct.netif** %36, align 8, !dbg !1753, !tbaa !719
  %37 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %28, i32 6, i32 0, !dbg !1754
  store i32 0, i32* %37, align 4, !dbg !1755, !tbaa !530
  %38 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %28, i32 0, i32 0, i64 0, !dbg !1756
  %39 = bitcast i32* %38 to <4 x i32>*, !dbg !1756
  store <4 x i32> zeroinitializer, <4 x i32>* %39, align 8, !dbg !1756, !tbaa !547
  %40 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %28, i32 0, i32 1, !dbg !1756
  store i8 0, i8* %40, align 8, !dbg !1756, !tbaa !648
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1757
  br label %167, !dbg !1758

; <label>:41:                                     ; preds = %512
  %42 = icmp eq i8 %4, 5, !dbg !1759
  %43 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 1, i32 5), align 1, !dbg !1740
  %44 = icmp eq i8 %43, 0, !dbg !1760
  %45 = and i1 %42, %44, !dbg !1761
  br i1 %45, label %26, label %427, !dbg !1761

; <label>:46:                                     ; preds = %406, %401, %396, %391, %386, %381, %376, %371, %61, %467
  %47 = phi i8 [ 0, %467 ], [ 1, %61 ], [ 2, %371 ], [ 3, %376 ], [ 4, %381 ], [ 5, %386 ], [ 6, %391 ], [ 7, %396 ], [ 8, %401 ], [ 9, %406 ]
  %48 = phi i64 [ 0, %467 ], [ 1, %61 ], [ 2, %371 ], [ 3, %376 ], [ 4, %381 ], [ 5, %386 ], [ 6, %391 ], [ 7, %396 ], [ 8, %401 ], [ 9, %406 ], !dbg !1762
  %49 = phi i8* [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 0, i32 4), %467 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 1, i32 4), %61 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 2, i32 4), %371 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 3, i32 4), %376 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 4, i32 4), %381 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 5, i32 4), %386 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 6, i32 4), %391 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 7, i32 4), %396 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 8, i32 4), %401 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 9, i32 4), %406 ], !dbg !1767
  %50 = phi i8* [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 0, i32 5), %467 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 1, i32 5), %61 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 2, i32 5), %371 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 3, i32 5), %376 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 4, i32 5), %381 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 5, i32 5), %386 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 6, i32 5), %391 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 7, i32 5), %396 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 8, i32 5), %401 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 9, i32 5), %406 ], !dbg !1768
  %51 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %48, i32 3, !dbg !1772
  %52 = load %struct.nd6_q_entry*, %struct.nd6_q_entry** %51, align 8, !dbg !1772, !tbaa !726
  %53 = icmp eq %struct.nd6_q_entry* %52, null, !dbg !1773
  br i1 %53, label %55, label %54, !dbg !1774

; <label>:54:                                     ; preds = %46
  tail call fastcc void @nd6_free_q(%struct.nd6_q_entry* nonnull %52) #7, !dbg !1775
  store %struct.nd6_q_entry* null, %struct.nd6_q_entry** %51, align 8, !dbg !1776, !tbaa !726
  br label %55, !dbg !1777

; <label>:55:                                     ; preds = %46, %54
  store i8 0, i8* %49, align 8, !dbg !1778, !tbaa !690
  store i8 0, i8* %50, align 1, !dbg !1779, !tbaa !992
  %56 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %48, i32 1, !dbg !1780
  store %struct.netif* null, %struct.netif** %56, align 8, !dbg !1781, !tbaa !719
  %57 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %48, i32 6, i32 0, !dbg !1782
  store i32 0, i32* %57, align 4, !dbg !1783, !tbaa !530
  %58 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %48, i32 0, i32 0, i64 0, !dbg !1784
  %59 = bitcast i32* %58 to <4 x i32>*, !dbg !1784
  store <4 x i32> zeroinitializer, <4 x i32>* %59, align 8, !dbg !1784, !tbaa !547
  %60 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %48, i32 0, i32 1, !dbg !1784
  store i8 0, i8* %60, align 8, !dbg !1784, !tbaa !648
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1785
  br label %167, !dbg !1786

; <label>:61:                                     ; preds = %467
  %62 = icmp eq i8 %4, 4, !dbg !1787
  %63 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 1, i32 5), align 1, !dbg !1768
  %64 = icmp eq i8 %63, 0, !dbg !1788
  %65 = and i1 %62, %64, !dbg !1789
  br i1 %65, label %46, label %371, !dbg !1789

; <label>:66:                                     ; preds = %359, %369
  %67 = phi i8 [ %360, %369 ], [ 9, %359 ]
  %68 = sext i8 %67 to i64, !dbg !1794
  %69 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %68, i32 5, !dbg !1796
  %70 = load i8, i8* %69, align 1, !dbg !1796, !tbaa !992
  %71 = icmp eq i8 %70, 0, !dbg !1794
  br i1 %71, label %72, label %84, !dbg !1797

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %68, i32 3, !dbg !1798
  %74 = load %struct.nd6_q_entry*, %struct.nd6_q_entry** %73, align 8, !dbg !1798, !tbaa !726
  %75 = icmp eq %struct.nd6_q_entry* %74, null, !dbg !1799
  br i1 %75, label %77, label %76, !dbg !1800

; <label>:76:                                     ; preds = %72
  tail call fastcc void @nd6_free_q(%struct.nd6_q_entry* nonnull %74) #7, !dbg !1801
  store %struct.nd6_q_entry* null, %struct.nd6_q_entry** %73, align 8, !dbg !1802, !tbaa !726
  br label %77, !dbg !1803

; <label>:77:                                     ; preds = %76, %72
  %78 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %68, i32 4, !dbg !1804
  store i8 0, i8* %78, align 8, !dbg !1805, !tbaa !690
  store i8 0, i8* %69, align 1, !dbg !1806, !tbaa !992
  %79 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %68, i32 1, !dbg !1807
  store %struct.netif* null, %struct.netif** %79, align 8, !dbg !1808, !tbaa !719
  %80 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %68, i32 6, i32 0, !dbg !1809
  store i32 0, i32* %80, align 4, !dbg !1810, !tbaa !530
  %81 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %68, i32 0, i32 0, i64 0, !dbg !1811
  %82 = bitcast i32* %81 to <4 x i32>*, !dbg !1811
  store <4 x i32> zeroinitializer, <4 x i32>* %82, align 8, !dbg !1811, !tbaa !547
  %83 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %68, i32 0, i32 1, !dbg !1811
  store i8 0, i8* %83, align 8, !dbg !1811, !tbaa !648
  br label %84, !dbg !1811

; <label>:84:                                     ; preds = %66, %77
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1812
  br label %167, !dbg !1813

; <label>:85:                                     ; preds = %369, %107
  %86 = phi i64 [ %110, %107 ], [ 0, %369 ]
  %87 = phi i32 [ %109, %107 ], [ 0, %369 ]
  %88 = phi i8 [ %108, %107 ], [ -1, %369 ]
  %89 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %86, i32 3, !dbg !1816
  %90 = load %struct.nd6_q_entry*, %struct.nd6_q_entry** %89, align 8, !dbg !1816, !tbaa !726
  %91 = icmp eq %struct.nd6_q_entry* %90, null, !dbg !1821
  br i1 %91, label %92, label %107, !dbg !1822

; <label>:92:                                     ; preds = %85
  %93 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %86, i32 4, !dbg !1823
  %94 = load i8, i8* %93, align 8, !dbg !1823, !tbaa !690
  %95 = icmp eq i8 %94, 1, !dbg !1824
  br i1 %95, label %96, label %107, !dbg !1825

; <label>:96:                                     ; preds = %92
  %97 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %86, i32 5, !dbg !1826
  %98 = load i8, i8* %97, align 1, !dbg !1826, !tbaa !992
  %99 = icmp eq i8 %98, 0, !dbg !1827
  br i1 %99, label %100, label %107, !dbg !1828

; <label>:100:                                    ; preds = %96
  %101 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %86, i32 6, i32 0, !dbg !1829
  %102 = load i32, i32* %101, align 4, !dbg !1829, !tbaa !530
  %103 = icmp ult i32 %102, %87, !dbg !1832
  %104 = trunc i64 %86 to i8, !dbg !1833
  %105 = select i1 %103, i8 %88, i8 %104, !dbg !1833
  %106 = select i1 %103, i32 %87, i32 %102, !dbg !1833
  br label %107, !dbg !1833

; <label>:107:                                    ; preds = %100, %96, %85, %92
  %108 = phi i8 [ %88, %96 ], [ %88, %92 ], [ %88, %85 ], [ %105, %100 ], !dbg !1834
  %109 = phi i32 [ %87, %96 ], [ %87, %92 ], [ %87, %85 ], [ %106, %100 ], !dbg !1834
  %110 = add nuw nsw i64 %86, 1, !dbg !1835
  %111 = icmp eq i64 %110, 10, !dbg !1836
  br i1 %111, label %112, label %85, !dbg !1837, !llvm.loop !1838

; <label>:112:                                    ; preds = %107
  %113 = icmp sgt i8 %108, -1, !dbg !1840
  br i1 %113, label %128, label %114, !dbg !1842

; <label>:114:                                    ; preds = %112
  %115 = icmp eq i8 %1, 1, !dbg !1843
  %116 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 0, i32 5), align 1, !dbg !1848
  %117 = icmp eq i8 %116, 0, !dbg !1849
  %118 = and i1 %115, %117, !dbg !1850
  %119 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 0, i32 6, i32 0), align 4, !dbg !1851
  %120 = and i1 %115, %117, !dbg !1850
  %121 = xor i1 %120, true, !dbg !1850
  %122 = sext i1 %121 to i8, !dbg !1850
  %123 = select i1 %118, i32 %119, i32 0, !dbg !1850
  %124 = icmp eq i8 %4, 1, !dbg !1843
  %125 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 1, i32 5), align 1, !dbg !1848
  %126 = icmp eq i8 %125, 0, !dbg !1849
  %127 = and i1 %124, %126, !dbg !1850
  br i1 %127, label %169, label %174, !dbg !1850

; <label>:128:                                    ; preds = %112
  %129 = icmp ugt i8 %108, 9, !dbg !1857
  br i1 %129, label %147, label %130, !dbg !1857

; <label>:130:                                    ; preds = %128
  %131 = sext i8 %108 to i64, !dbg !1859
  %132 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %131, i32 5, !dbg !1860
  %133 = load i8, i8* %132, align 1, !dbg !1860, !tbaa !992
  %134 = icmp eq i8 %133, 0, !dbg !1859
  br i1 %134, label %135, label %147, !dbg !1861

; <label>:135:                                    ; preds = %130
  %136 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %131, i32 3, !dbg !1862
  %137 = load %struct.nd6_q_entry*, %struct.nd6_q_entry** %136, align 8, !dbg !1862, !tbaa !726
  %138 = icmp eq %struct.nd6_q_entry* %137, null, !dbg !1863
  br i1 %138, label %140, label %139, !dbg !1864

; <label>:139:                                    ; preds = %135
  tail call fastcc void @nd6_free_q(%struct.nd6_q_entry* nonnull %137) #7, !dbg !1865
  store %struct.nd6_q_entry* null, %struct.nd6_q_entry** %136, align 8, !dbg !1866, !tbaa !726
  br label %140, !dbg !1867

; <label>:140:                                    ; preds = %139, %135
  %141 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %131, i32 4, !dbg !1868
  store i8 0, i8* %141, align 8, !dbg !1869, !tbaa !690
  store i8 0, i8* %132, align 1, !dbg !1870, !tbaa !992
  %142 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %131, i32 1, !dbg !1871
  store %struct.netif* null, %struct.netif** %142, align 8, !dbg !1872, !tbaa !719
  %143 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %131, i32 6, i32 0, !dbg !1873
  store i32 0, i32* %143, align 4, !dbg !1874, !tbaa !530
  %144 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %131, i32 0, i32 0, i64 0, !dbg !1875
  %145 = bitcast i32* %144 to <4 x i32>*, !dbg !1875
  store <4 x i32> zeroinitializer, <4 x i32>* %145, align 8, !dbg !1875, !tbaa !547
  %146 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %131, i32 0, i32 1, !dbg !1875
  store i8 0, i8* %146, align 8, !dbg !1875, !tbaa !648
  br label %147, !dbg !1875

; <label>:147:                                    ; preds = %128, %130, %140
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1876
  br label %167, !dbg !1877

; <label>:148:                                    ; preds = %258, %268
  %149 = phi i8 [ %259, %268 ], [ 9, %258 ]
  %150 = sext i8 %149 to i64, !dbg !1882
  %151 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %150, i32 5, !dbg !1883
  %152 = load i8, i8* %151, align 1, !dbg !1883, !tbaa !992
  %153 = icmp eq i8 %152, 0, !dbg !1882
  br i1 %153, label %154, label %166, !dbg !1884

; <label>:154:                                    ; preds = %148
  %155 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %150, i32 3, !dbg !1885
  %156 = load %struct.nd6_q_entry*, %struct.nd6_q_entry** %155, align 8, !dbg !1885, !tbaa !726
  %157 = icmp eq %struct.nd6_q_entry* %156, null, !dbg !1886
  br i1 %157, label %159, label %158, !dbg !1887

; <label>:158:                                    ; preds = %154
  tail call fastcc void @nd6_free_q(%struct.nd6_q_entry* nonnull %156) #7, !dbg !1888
  store %struct.nd6_q_entry* null, %struct.nd6_q_entry** %155, align 8, !dbg !1889, !tbaa !726
  br label %159, !dbg !1890

; <label>:159:                                    ; preds = %158, %154
  %160 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %150, i32 4, !dbg !1891
  store i8 0, i8* %160, align 8, !dbg !1892, !tbaa !690
  store i8 0, i8* %151, align 1, !dbg !1893, !tbaa !992
  %161 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %150, i32 1, !dbg !1894
  store %struct.netif* null, %struct.netif** %161, align 8, !dbg !1895, !tbaa !719
  %162 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %150, i32 6, i32 0, !dbg !1896
  store i32 0, i32* %162, align 4, !dbg !1897, !tbaa !530
  %163 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %150, i32 0, i32 0, i64 0, !dbg !1898
  %164 = bitcast i32* %163 to <4 x i32>*, !dbg !1898
  store <4 x i32> zeroinitializer, <4 x i32>* %164, align 8, !dbg !1898, !tbaa !547
  %165 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %150, i32 0, i32 1, !dbg !1898
  store i8 0, i8* %165, align 8, !dbg !1898, !tbaa !648
  br label %166, !dbg !1898

; <label>:166:                                    ; preds = %148, %159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1899
  br label %167, !dbg !1900

; <label>:167:                                    ; preds = %0, %3, %517, %520, %523, %526, %529, %532, %535, %538, %268, %166, %147, %84, %55, %35, %15
  %168 = phi i8 [ %7, %15 ], [ %27, %35 ], [ %47, %55 ], [ %67, %84 ], [ %108, %147 ], [ %149, %166 ], [ -1, %268 ], [ 0, %0 ], [ 1, %3 ], [ 2, %517 ], [ 3, %520 ], [ 4, %523 ], [ 5, %526 ], [ 6, %529 ], [ 7, %532 ], [ 8, %535 ], [ 9, %538 ], !dbg !1834
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1901
  ret i8 %168, !dbg !1901

; <label>:169:                                    ; preds = %114
  %170 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 1, i32 6, i32 0), align 4, !dbg !1851, !tbaa !530
  %171 = icmp ult i32 %170, %123, !dbg !1902
  %172 = select i1 %171, i8 %122, i8 1, !dbg !1903
  %173 = select i1 %171, i32 %123, i32 %170, !dbg !1903
  br label %174, !dbg !1903

; <label>:174:                                    ; preds = %169, %114
  %175 = phi i8 [ %122, %114 ], [ %172, %169 ], !dbg !1834
  %176 = phi i32 [ %123, %114 ], [ %173, %169 ], !dbg !1834
  %177 = icmp eq i8 %518, 1, !dbg !1843
  %178 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 2, i32 5), align 1, !dbg !1848
  %179 = icmp eq i8 %178, 0, !dbg !1849
  %180 = and i1 %177, %179, !dbg !1850
  br i1 %180, label %181, label %186, !dbg !1850

; <label>:181:                                    ; preds = %174
  %182 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 2, i32 6, i32 0), align 4, !dbg !1851, !tbaa !530
  %183 = icmp ult i32 %182, %176, !dbg !1902
  %184 = select i1 %183, i8 %175, i8 2, !dbg !1903
  %185 = select i1 %183, i32 %176, i32 %182, !dbg !1903
  br label %186, !dbg !1903

; <label>:186:                                    ; preds = %181, %174
  %187 = phi i8 [ %175, %174 ], [ %184, %181 ], !dbg !1834
  %188 = phi i32 [ %176, %174 ], [ %185, %181 ], !dbg !1834
  %189 = icmp eq i8 %521, 1, !dbg !1843
  %190 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 3, i32 5), align 1, !dbg !1848
  %191 = icmp eq i8 %190, 0, !dbg !1849
  %192 = and i1 %189, %191, !dbg !1850
  br i1 %192, label %193, label %198, !dbg !1850

; <label>:193:                                    ; preds = %186
  %194 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 3, i32 6, i32 0), align 4, !dbg !1851, !tbaa !530
  %195 = icmp ult i32 %194, %188, !dbg !1902
  %196 = select i1 %195, i8 %187, i8 3, !dbg !1903
  %197 = select i1 %195, i32 %188, i32 %194, !dbg !1903
  br label %198, !dbg !1903

; <label>:198:                                    ; preds = %193, %186
  %199 = phi i8 [ %187, %186 ], [ %196, %193 ], !dbg !1834
  %200 = phi i32 [ %188, %186 ], [ %197, %193 ], !dbg !1834
  %201 = icmp eq i8 %524, 1, !dbg !1843
  %202 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 4, i32 5), align 1, !dbg !1848
  %203 = icmp eq i8 %202, 0, !dbg !1849
  %204 = and i1 %201, %203, !dbg !1850
  br i1 %204, label %205, label %210, !dbg !1850

; <label>:205:                                    ; preds = %198
  %206 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 4, i32 6, i32 0), align 4, !dbg !1851, !tbaa !530
  %207 = icmp ult i32 %206, %200, !dbg !1902
  %208 = select i1 %207, i8 %199, i8 4, !dbg !1903
  %209 = select i1 %207, i32 %200, i32 %206, !dbg !1903
  br label %210, !dbg !1903

; <label>:210:                                    ; preds = %205, %198
  %211 = phi i8 [ %199, %198 ], [ %208, %205 ], !dbg !1834
  %212 = phi i32 [ %200, %198 ], [ %209, %205 ], !dbg !1834
  %213 = icmp eq i8 %527, 1, !dbg !1843
  %214 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 5, i32 5), align 1, !dbg !1848
  %215 = icmp eq i8 %214, 0, !dbg !1849
  %216 = and i1 %213, %215, !dbg !1850
  br i1 %216, label %217, label %222, !dbg !1850

; <label>:217:                                    ; preds = %210
  %218 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 5, i32 6, i32 0), align 4, !dbg !1851, !tbaa !530
  %219 = icmp ult i32 %218, %212, !dbg !1902
  %220 = select i1 %219, i8 %211, i8 5, !dbg !1903
  %221 = select i1 %219, i32 %212, i32 %218, !dbg !1903
  br label %222, !dbg !1903

; <label>:222:                                    ; preds = %217, %210
  %223 = phi i8 [ %211, %210 ], [ %220, %217 ], !dbg !1834
  %224 = phi i32 [ %212, %210 ], [ %221, %217 ], !dbg !1834
  %225 = icmp eq i8 %530, 1, !dbg !1843
  %226 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 6, i32 5), align 1, !dbg !1848
  %227 = icmp eq i8 %226, 0, !dbg !1849
  %228 = and i1 %225, %227, !dbg !1850
  br i1 %228, label %229, label %234, !dbg !1850

; <label>:229:                                    ; preds = %222
  %230 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 6, i32 6, i32 0), align 4, !dbg !1851, !tbaa !530
  %231 = icmp ult i32 %230, %224, !dbg !1902
  %232 = select i1 %231, i8 %223, i8 6, !dbg !1903
  %233 = select i1 %231, i32 %224, i32 %230, !dbg !1903
  br label %234, !dbg !1903

; <label>:234:                                    ; preds = %229, %222
  %235 = phi i8 [ %223, %222 ], [ %232, %229 ], !dbg !1834
  %236 = phi i32 [ %224, %222 ], [ %233, %229 ], !dbg !1834
  %237 = icmp eq i8 %533, 1, !dbg !1843
  %238 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 7, i32 5), align 1, !dbg !1848
  %239 = icmp eq i8 %238, 0, !dbg !1849
  %240 = and i1 %237, %239, !dbg !1850
  br i1 %240, label %241, label %246, !dbg !1850

; <label>:241:                                    ; preds = %234
  %242 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 7, i32 6, i32 0), align 4, !dbg !1851, !tbaa !530
  %243 = icmp ult i32 %242, %236, !dbg !1902
  %244 = select i1 %243, i8 %235, i8 7, !dbg !1903
  %245 = select i1 %243, i32 %236, i32 %242, !dbg !1903
  br label %246, !dbg !1903

; <label>:246:                                    ; preds = %241, %234
  %247 = phi i8 [ %235, %234 ], [ %244, %241 ], !dbg !1834
  %248 = phi i32 [ %236, %234 ], [ %245, %241 ], !dbg !1834
  %249 = icmp eq i8 %536, 1, !dbg !1843
  %250 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 8, i32 5), align 1, !dbg !1848
  %251 = icmp eq i8 %250, 0, !dbg !1849
  %252 = and i1 %249, %251, !dbg !1850
  br i1 %252, label %253, label %258, !dbg !1850

; <label>:253:                                    ; preds = %246
  %254 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 8, i32 6, i32 0), align 4, !dbg !1851, !tbaa !530
  %255 = icmp ult i32 %254, %248, !dbg !1902
  %256 = select i1 %255, i8 %247, i8 8, !dbg !1903
  %257 = select i1 %255, i32 %248, i32 %254, !dbg !1903
  br label %258, !dbg !1903

; <label>:258:                                    ; preds = %253, %246
  %259 = phi i8 [ %247, %246 ], [ %256, %253 ], !dbg !1834
  %260 = phi i32 [ %248, %246 ], [ %257, %253 ], !dbg !1834
  %261 = icmp ne i8 %539, 1, !dbg !1843
  %262 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 9, i32 5), align 1, !dbg !1848
  %263 = icmp ne i8 %262, 0, !dbg !1849
  %264 = or i1 %263, %261, !dbg !1850
  %265 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 9, i32 6, i32 0), align 4, !dbg !1851
  %266 = icmp ult i32 %265, %260, !dbg !1902
  %267 = or i1 %264, %266, !dbg !1850
  br i1 %267, label %268, label %148, !dbg !1850

; <label>:268:                                    ; preds = %258
  %269 = icmp sgt i8 %259, -1, !dbg !1904
  br i1 %269, label %148, label %167, !dbg !1905

; <label>:270:                                    ; preds = %411
  %271 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 1, i32 6, i32 0), align 4, !dbg !1906, !tbaa !530
  %272 = icmp ult i32 %271, %422, !dbg !1913
  %273 = select i1 %272, i8 1, i8 %421, !dbg !1914
  %274 = select i1 %272, i32 %271, i32 %422, !dbg !1914
  br label %275, !dbg !1914

; <label>:275:                                    ; preds = %270, %411
  %276 = phi i8 [ %421, %411 ], [ %273, %270 ], !dbg !1834
  %277 = phi i32 [ %422, %411 ], [ %274, %270 ], !dbg !1834
  %278 = icmp eq i8 %518, 2, !dbg !1915
  %279 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 2, i32 5), align 1, !dbg !1916
  %280 = icmp eq i8 %279, 0, !dbg !1917
  %281 = and i1 %278, %280, !dbg !1918
  br i1 %281, label %282, label %287, !dbg !1918

; <label>:282:                                    ; preds = %275
  %283 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 2, i32 6, i32 0), align 4, !dbg !1906, !tbaa !530
  %284 = icmp ult i32 %283, %277, !dbg !1913
  %285 = select i1 %284, i8 2, i8 %276, !dbg !1914
  %286 = select i1 %284, i32 %283, i32 %277, !dbg !1914
  br label %287, !dbg !1914

; <label>:287:                                    ; preds = %282, %275
  %288 = phi i8 [ %276, %275 ], [ %285, %282 ], !dbg !1834
  %289 = phi i32 [ %277, %275 ], [ %286, %282 ], !dbg !1834
  %290 = icmp eq i8 %521, 2, !dbg !1915
  %291 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 3, i32 5), align 1, !dbg !1916
  %292 = icmp eq i8 %291, 0, !dbg !1917
  %293 = and i1 %290, %292, !dbg !1918
  br i1 %293, label %294, label %299, !dbg !1918

; <label>:294:                                    ; preds = %287
  %295 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 3, i32 6, i32 0), align 4, !dbg !1906, !tbaa !530
  %296 = icmp ult i32 %295, %289, !dbg !1913
  %297 = select i1 %296, i8 3, i8 %288, !dbg !1914
  %298 = select i1 %296, i32 %295, i32 %289, !dbg !1914
  br label %299, !dbg !1914

; <label>:299:                                    ; preds = %294, %287
  %300 = phi i8 [ %288, %287 ], [ %297, %294 ], !dbg !1834
  %301 = phi i32 [ %289, %287 ], [ %298, %294 ], !dbg !1834
  %302 = icmp eq i8 %524, 2, !dbg !1915
  %303 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 4, i32 5), align 1, !dbg !1916
  %304 = icmp eq i8 %303, 0, !dbg !1917
  %305 = and i1 %302, %304, !dbg !1918
  br i1 %305, label %306, label %311, !dbg !1918

; <label>:306:                                    ; preds = %299
  %307 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 4, i32 6, i32 0), align 4, !dbg !1906, !tbaa !530
  %308 = icmp ult i32 %307, %301, !dbg !1913
  %309 = select i1 %308, i8 4, i8 %300, !dbg !1914
  %310 = select i1 %308, i32 %307, i32 %301, !dbg !1914
  br label %311, !dbg !1914

; <label>:311:                                    ; preds = %306, %299
  %312 = phi i8 [ %300, %299 ], [ %309, %306 ], !dbg !1834
  %313 = phi i32 [ %301, %299 ], [ %310, %306 ], !dbg !1834
  %314 = icmp eq i8 %527, 2, !dbg !1915
  %315 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 5, i32 5), align 1, !dbg !1916
  %316 = icmp eq i8 %315, 0, !dbg !1917
  %317 = and i1 %314, %316, !dbg !1918
  br i1 %317, label %318, label %323, !dbg !1918

; <label>:318:                                    ; preds = %311
  %319 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 5, i32 6, i32 0), align 4, !dbg !1906, !tbaa !530
  %320 = icmp ult i32 %319, %313, !dbg !1913
  %321 = select i1 %320, i8 5, i8 %312, !dbg !1914
  %322 = select i1 %320, i32 %319, i32 %313, !dbg !1914
  br label %323, !dbg !1914

; <label>:323:                                    ; preds = %318, %311
  %324 = phi i8 [ %312, %311 ], [ %321, %318 ], !dbg !1834
  %325 = phi i32 [ %313, %311 ], [ %322, %318 ], !dbg !1834
  %326 = icmp eq i8 %530, 2, !dbg !1915
  %327 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 6, i32 5), align 1, !dbg !1916
  %328 = icmp eq i8 %327, 0, !dbg !1917
  %329 = and i1 %326, %328, !dbg !1918
  br i1 %329, label %330, label %335, !dbg !1918

; <label>:330:                                    ; preds = %323
  %331 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 6, i32 6, i32 0), align 4, !dbg !1906, !tbaa !530
  %332 = icmp ult i32 %331, %325, !dbg !1913
  %333 = select i1 %332, i8 6, i8 %324, !dbg !1914
  %334 = select i1 %332, i32 %331, i32 %325, !dbg !1914
  br label %335, !dbg !1914

; <label>:335:                                    ; preds = %330, %323
  %336 = phi i8 [ %324, %323 ], [ %333, %330 ], !dbg !1834
  %337 = phi i32 [ %325, %323 ], [ %334, %330 ], !dbg !1834
  %338 = icmp eq i8 %533, 2, !dbg !1915
  %339 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 7, i32 5), align 1, !dbg !1916
  %340 = icmp eq i8 %339, 0, !dbg !1917
  %341 = and i1 %338, %340, !dbg !1918
  br i1 %341, label %342, label %347, !dbg !1918

; <label>:342:                                    ; preds = %335
  %343 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 7, i32 6, i32 0), align 4, !dbg !1906, !tbaa !530
  %344 = icmp ult i32 %343, %337, !dbg !1913
  %345 = select i1 %344, i8 7, i8 %336, !dbg !1914
  %346 = select i1 %344, i32 %343, i32 %337, !dbg !1914
  br label %347, !dbg !1914

; <label>:347:                                    ; preds = %342, %335
  %348 = phi i8 [ %336, %335 ], [ %345, %342 ], !dbg !1834
  %349 = phi i32 [ %337, %335 ], [ %346, %342 ], !dbg !1834
  %350 = icmp eq i8 %536, 2, !dbg !1915
  %351 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 8, i32 5), align 1, !dbg !1916
  %352 = icmp eq i8 %351, 0, !dbg !1917
  %353 = and i1 %350, %352, !dbg !1918
  br i1 %353, label %354, label %359, !dbg !1918

; <label>:354:                                    ; preds = %347
  %355 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 8, i32 6, i32 0), align 4, !dbg !1906, !tbaa !530
  %356 = icmp ult i32 %355, %349, !dbg !1913
  %357 = select i1 %356, i8 8, i8 %348, !dbg !1914
  %358 = select i1 %356, i32 %355, i32 %349, !dbg !1914
  br label %359, !dbg !1914

; <label>:359:                                    ; preds = %354, %347
  %360 = phi i8 [ %348, %347 ], [ %357, %354 ], !dbg !1834
  %361 = phi i32 [ %349, %347 ], [ %358, %354 ], !dbg !1834
  %362 = icmp eq i8 %539, 2, !dbg !1915
  %363 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 9, i32 5), align 1, !dbg !1916
  %364 = icmp eq i8 %363, 0, !dbg !1917
  %365 = and i1 %362, %364, !dbg !1918
  %366 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 9, i32 6, i32 0), align 4, !dbg !1906
  %367 = icmp ult i32 %366, %361, !dbg !1913
  %368 = and i1 %365, %367, !dbg !1918
  br i1 %368, label %66, label %369, !dbg !1918

; <label>:369:                                    ; preds = %359
  %370 = icmp sgt i8 %360, -1, !dbg !1919
  br i1 %370, label %66, label %85, !dbg !1920

; <label>:371:                                    ; preds = %61
  %372 = icmp eq i8 %518, 4, !dbg !1787
  %373 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 2, i32 5), align 1, !dbg !1768
  %374 = icmp eq i8 %373, 0, !dbg !1788
  %375 = and i1 %372, %374, !dbg !1789
  br i1 %375, label %46, label %376, !dbg !1789

; <label>:376:                                    ; preds = %371
  %377 = icmp eq i8 %521, 4, !dbg !1787
  %378 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 3, i32 5), align 1, !dbg !1768
  %379 = icmp eq i8 %378, 0, !dbg !1788
  %380 = and i1 %377, %379, !dbg !1789
  br i1 %380, label %46, label %381, !dbg !1789

; <label>:381:                                    ; preds = %376
  %382 = icmp eq i8 %524, 4, !dbg !1787
  %383 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 4, i32 5), align 1, !dbg !1768
  %384 = icmp eq i8 %383, 0, !dbg !1788
  %385 = and i1 %382, %384, !dbg !1789
  br i1 %385, label %46, label %386, !dbg !1789

; <label>:386:                                    ; preds = %381
  %387 = icmp eq i8 %527, 4, !dbg !1787
  %388 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 5, i32 5), align 1, !dbg !1768
  %389 = icmp eq i8 %388, 0, !dbg !1788
  %390 = and i1 %387, %389, !dbg !1789
  br i1 %390, label %46, label %391, !dbg !1789

; <label>:391:                                    ; preds = %386
  %392 = icmp eq i8 %530, 4, !dbg !1787
  %393 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 6, i32 5), align 1, !dbg !1768
  %394 = icmp eq i8 %393, 0, !dbg !1788
  %395 = and i1 %392, %394, !dbg !1789
  br i1 %395, label %46, label %396, !dbg !1789

; <label>:396:                                    ; preds = %391
  %397 = icmp eq i8 %533, 4, !dbg !1787
  %398 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 7, i32 5), align 1, !dbg !1768
  %399 = icmp eq i8 %398, 0, !dbg !1788
  %400 = and i1 %397, %399, !dbg !1789
  br i1 %400, label %46, label %401, !dbg !1789

; <label>:401:                                    ; preds = %396
  %402 = icmp eq i8 %536, 4, !dbg !1787
  %403 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 8, i32 5), align 1, !dbg !1768
  %404 = icmp eq i8 %403, 0, !dbg !1788
  %405 = and i1 %402, %404, !dbg !1789
  br i1 %405, label %46, label %406, !dbg !1789

; <label>:406:                                    ; preds = %401
  %407 = icmp eq i8 %539, 4, !dbg !1787
  %408 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 9, i32 5), align 1, !dbg !1768
  %409 = icmp eq i8 %408, 0, !dbg !1788
  %410 = and i1 %407, %409, !dbg !1789
  br i1 %410, label %46, label %411, !dbg !1789

; <label>:411:                                    ; preds = %406
  %412 = icmp eq i8 %1, 2, !dbg !1915
  %413 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 0, i32 5), align 1, !dbg !1916
  %414 = icmp eq i8 %413, 0, !dbg !1917
  %415 = and i1 %412, %414, !dbg !1918
  %416 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 0, i32 6, i32 0), align 4, !dbg !1906
  %417 = icmp eq i32 %416, -1, !dbg !1913
  %418 = and i1 %412, %414, !dbg !1918
  %419 = xor i1 %418, true, !dbg !1918
  %420 = or i1 %417, %419, !dbg !1918
  %421 = sext i1 %420 to i8, !dbg !1918
  %422 = select i1 %415, i32 %416, i32 -1, !dbg !1918
  %423 = icmp eq i8 %4, 2, !dbg !1915
  %424 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 1, i32 5), align 1, !dbg !1916
  %425 = icmp eq i8 %424, 0, !dbg !1917
  %426 = and i1 %423, %425, !dbg !1918
  br i1 %426, label %270, label %275, !dbg !1918

; <label>:427:                                    ; preds = %41
  %428 = icmp eq i8 %518, 5, !dbg !1759
  %429 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 2, i32 5), align 1, !dbg !1740
  %430 = icmp eq i8 %429, 0, !dbg !1760
  %431 = and i1 %428, %430, !dbg !1761
  br i1 %431, label %26, label %432, !dbg !1761

; <label>:432:                                    ; preds = %427
  %433 = icmp eq i8 %521, 5, !dbg !1759
  %434 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 3, i32 5), align 1, !dbg !1740
  %435 = icmp eq i8 %434, 0, !dbg !1760
  %436 = and i1 %433, %435, !dbg !1761
  br i1 %436, label %26, label %437, !dbg !1761

; <label>:437:                                    ; preds = %432
  %438 = icmp eq i8 %524, 5, !dbg !1759
  %439 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 4, i32 5), align 1, !dbg !1740
  %440 = icmp eq i8 %439, 0, !dbg !1760
  %441 = and i1 %438, %440, !dbg !1761
  br i1 %441, label %26, label %442, !dbg !1761

; <label>:442:                                    ; preds = %437
  %443 = icmp eq i8 %527, 5, !dbg !1759
  %444 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 5, i32 5), align 1, !dbg !1740
  %445 = icmp eq i8 %444, 0, !dbg !1760
  %446 = and i1 %443, %445, !dbg !1761
  br i1 %446, label %26, label %447, !dbg !1761

; <label>:447:                                    ; preds = %442
  %448 = icmp eq i8 %530, 5, !dbg !1759
  %449 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 6, i32 5), align 1, !dbg !1740
  %450 = icmp eq i8 %449, 0, !dbg !1760
  %451 = and i1 %448, %450, !dbg !1761
  br i1 %451, label %26, label %452, !dbg !1761

; <label>:452:                                    ; preds = %447
  %453 = icmp eq i8 %533, 5, !dbg !1759
  %454 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 7, i32 5), align 1, !dbg !1740
  %455 = icmp eq i8 %454, 0, !dbg !1760
  %456 = and i1 %453, %455, !dbg !1761
  br i1 %456, label %26, label %457, !dbg !1761

; <label>:457:                                    ; preds = %452
  %458 = icmp eq i8 %536, 5, !dbg !1759
  %459 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 8, i32 5), align 1, !dbg !1740
  %460 = icmp eq i8 %459, 0, !dbg !1760
  %461 = and i1 %458, %460, !dbg !1761
  br i1 %461, label %26, label %462, !dbg !1761

; <label>:462:                                    ; preds = %457
  %463 = icmp eq i8 %539, 5, !dbg !1759
  %464 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 9, i32 5), align 1, !dbg !1740
  %465 = icmp eq i8 %464, 0, !dbg !1760
  %466 = and i1 %463, %465, !dbg !1761
  br i1 %466, label %26, label %467, !dbg !1761

; <label>:467:                                    ; preds = %462
  %468 = icmp eq i8 %1, 4, !dbg !1787
  %469 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 0, i32 5), align 1, !dbg !1768
  %470 = icmp eq i8 %469, 0, !dbg !1788
  %471 = and i1 %468, %470, !dbg !1789
  br i1 %471, label %46, label %61, !dbg !1789

; <label>:472:                                    ; preds = %21
  %473 = icmp eq i8 %518, 3, !dbg !1731
  %474 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 2, i32 5), align 1, !dbg !1706
  %475 = icmp eq i8 %474, 0, !dbg !1732
  %476 = and i1 %473, %475, !dbg !1733
  br i1 %476, label %6, label %477, !dbg !1733

; <label>:477:                                    ; preds = %472
  %478 = icmp eq i8 %521, 3, !dbg !1731
  %479 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 3, i32 5), align 1, !dbg !1706
  %480 = icmp eq i8 %479, 0, !dbg !1732
  %481 = and i1 %478, %480, !dbg !1733
  br i1 %481, label %6, label %482, !dbg !1733

; <label>:482:                                    ; preds = %477
  %483 = icmp eq i8 %524, 3, !dbg !1731
  %484 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 4, i32 5), align 1, !dbg !1706
  %485 = icmp eq i8 %484, 0, !dbg !1732
  %486 = and i1 %483, %485, !dbg !1733
  br i1 %486, label %6, label %487, !dbg !1733

; <label>:487:                                    ; preds = %482
  %488 = icmp eq i8 %527, 3, !dbg !1731
  %489 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 5, i32 5), align 1, !dbg !1706
  %490 = icmp eq i8 %489, 0, !dbg !1732
  %491 = and i1 %488, %490, !dbg !1733
  br i1 %491, label %6, label %492, !dbg !1733

; <label>:492:                                    ; preds = %487
  %493 = icmp eq i8 %530, 3, !dbg !1731
  %494 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 6, i32 5), align 1, !dbg !1706
  %495 = icmp eq i8 %494, 0, !dbg !1732
  %496 = and i1 %493, %495, !dbg !1733
  br i1 %496, label %6, label %497, !dbg !1733

; <label>:497:                                    ; preds = %492
  %498 = icmp eq i8 %533, 3, !dbg !1731
  %499 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 7, i32 5), align 1, !dbg !1706
  %500 = icmp eq i8 %499, 0, !dbg !1732
  %501 = and i1 %498, %500, !dbg !1733
  br i1 %501, label %6, label %502, !dbg !1733

; <label>:502:                                    ; preds = %497
  %503 = icmp eq i8 %536, 3, !dbg !1731
  %504 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 8, i32 5), align 1, !dbg !1706
  %505 = icmp eq i8 %504, 0, !dbg !1732
  %506 = and i1 %503, %505, !dbg !1733
  br i1 %506, label %6, label %507, !dbg !1733

; <label>:507:                                    ; preds = %502
  %508 = icmp eq i8 %539, 3, !dbg !1731
  %509 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 9, i32 5), align 1, !dbg !1706
  %510 = icmp eq i8 %509, 0, !dbg !1732
  %511 = and i1 %508, %510, !dbg !1733
  br i1 %511, label %6, label %512, !dbg !1733

; <label>:512:                                    ; preds = %507
  %513 = icmp eq i8 %1, 5, !dbg !1759
  %514 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 0, i32 5), align 1, !dbg !1740
  %515 = icmp eq i8 %514, 0, !dbg !1760
  %516 = and i1 %513, %515, !dbg !1761
  br i1 %516, label %26, label %41, !dbg !1761

; <label>:517:                                    ; preds = %3
  %518 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 2, i32 4), align 16, !dbg !1693, !tbaa !690
  %519 = icmp eq i8 %518, 0, !dbg !1698
  br i1 %519, label %167, label %520, !dbg !1699

; <label>:520:                                    ; preds = %517
  %521 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 3, i32 4), align 8, !dbg !1693, !tbaa !690
  %522 = icmp eq i8 %521, 0, !dbg !1698
  br i1 %522, label %167, label %523, !dbg !1699

; <label>:523:                                    ; preds = %520
  %524 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 4, i32 4), align 16, !dbg !1693, !tbaa !690
  %525 = icmp eq i8 %524, 0, !dbg !1698
  br i1 %525, label %167, label %526, !dbg !1699

; <label>:526:                                    ; preds = %523
  %527 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 5, i32 4), align 8, !dbg !1693, !tbaa !690
  %528 = icmp eq i8 %527, 0, !dbg !1698
  br i1 %528, label %167, label %529, !dbg !1699

; <label>:529:                                    ; preds = %526
  %530 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 6, i32 4), align 16, !dbg !1693, !tbaa !690
  %531 = icmp eq i8 %530, 0, !dbg !1698
  br i1 %531, label %167, label %532, !dbg !1699

; <label>:532:                                    ; preds = %529
  %533 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 7, i32 4), align 8, !dbg !1693, !tbaa !690
  %534 = icmp eq i8 %533, 0, !dbg !1698
  br i1 %534, label %167, label %535, !dbg !1699

; <label>:535:                                    ; preds = %532
  %536 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 8, i32 4), align 16, !dbg !1693, !tbaa !690
  %537 = icmp eq i8 %536, 0, !dbg !1698
  br i1 %537, label %167, label %538, !dbg !1699

; <label>:538:                                    ; preds = %535
  %539 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 9, i32 4), align 8, !dbg !1693, !tbaa !690
  %540 = icmp eq i8 %539, 0, !dbg !1698
  br i1 %540, label %167, label %541, !dbg !1699

; <label>:541:                                    ; preds = %538
  %542 = icmp eq i8 %1, 3, !dbg !1731
  %543 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 0, i32 5), align 1, !dbg !1706
  %544 = icmp eq i8 %543, 0, !dbg !1732
  %545 = and i1 %542, %544, !dbg !1733
  br i1 %545, label %6, label %21, !dbg !1733
}

; Function Attrs: noredzone nounwind
define internal fastcc signext i8 @nd6_send_rs(%struct.netif*) unnamed_addr #0 !dbg !1921 {
  %2 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 0, !dbg !1934
  %3 = load i8, i8* %2, align 8, !dbg !1934, !tbaa !530
  %4 = and i8 %3, 16, !dbg !1934
  %5 = icmp eq i8 %4, 0, !dbg !1934
  %6 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, !dbg !1936
  %7 = select i1 %5, %struct.ip6_addr* getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip6_addr_any, i64 0, i32 0, i32 0), %struct.ip6_addr* %6, !dbg !1939
  store <4 x i32> <i32 767, i32 0, i32 0, i32 33554432>, <4 x i32>* bitcast (%struct.ip6_addr* @multicast_address to <4 x i32>*), align 16, !dbg !1940, !tbaa !547
  %8 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 23, !dbg !1942
  %9 = load i8, i8* %8, align 8, !dbg !1942, !tbaa !550
  %10 = add i8 %9, 1, !dbg !1942
  store i8 %10, i8* getelementptr inbounds (%struct.ip6_addr, %struct.ip6_addr* @multicast_address, i64 0, i32 1), align 16, !dbg !1942, !tbaa !745
  %11 = icmp ne %struct.ip6_addr* %7, getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip6_addr_any, i64 0, i32 0, i32 0), !dbg !1943
  br i1 %11, label %12, label %23, !dbg !1945

; <label>:12:                                     ; preds = %1
  %13 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 20, !dbg !1946
  %14 = load i8, i8* %13, align 4, !dbg !1946, !tbaa !668
  %15 = zext i8 %14 to i16, !dbg !1948
  %16 = add nuw nsw i16 %15, 2, !dbg !1949
  %17 = lshr i16 %16, 3, !dbg !1950
  %18 = add i8 %14, 2, !dbg !1951
  %19 = and i8 %18, 7, !dbg !1951
  %20 = icmp ne i8 %19, 0, !dbg !1952
  %21 = zext i1 %20 to i16, !dbg !1952
  %22 = add nuw nsw i16 %17, %21, !dbg !1953
  br label %23, !dbg !1954

; <label>:23:                                     ; preds = %12, %1
  %24 = phi i16 [ %22, %12 ], [ 0, %1 ], !dbg !1955
  %25 = shl nsw i16 %24, 3, !dbg !1956
  %26 = add nsw i16 %25, 8, !dbg !1957
  %27 = tail call %struct.pbuf* @pbuf_alloc(i32 54, i16 zeroext %26, i32 640) #7, !dbg !1958
  %28 = icmp eq %struct.pbuf* %27, null, !dbg !1960
  br i1 %28, label %29, label %32, !dbg !1962

; <label>:29:                                     ; preds = %23
  %30 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 6), align 2, !dbg !1963, !tbaa !862
  %31 = add i16 %30, 1, !dbg !1963
  store i16 %31, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 6), align 2, !dbg !1963, !tbaa !862
  br label %67, !dbg !1965

; <label>:32:                                     ; preds = %23
  %33 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %27, i64 0, i32 1, !dbg !1966
  %34 = bitcast i8** %33 to %struct.rs_header**, !dbg !1966
  %35 = load %struct.rs_header*, %struct.rs_header** %34, align 8, !dbg !1966, !tbaa !526
  %36 = getelementptr inbounds %struct.rs_header, %struct.rs_header* %35, i64 0, i32 0, !dbg !1968
  store i8 -123, i8* %36, align 1, !dbg !1969, !tbaa !1970
  %37 = getelementptr inbounds %struct.rs_header, %struct.rs_header* %35, i64 0, i32 1, !dbg !1972
  store i8 0, i8* %37, align 1, !dbg !1973, !tbaa !1974
  %38 = getelementptr inbounds %struct.rs_header, %struct.rs_header* %35, i64 0, i32 2, !dbg !1975
  store i16 0, i16* %38, align 1, !dbg !1976, !tbaa !1977
  %39 = getelementptr inbounds %struct.rs_header, %struct.rs_header* %35, i64 0, i32 3, !dbg !1978
  store i32 0, i32* %39, align 1, !dbg !1979, !tbaa !1980
  %40 = getelementptr inbounds %struct.rs_header, %struct.rs_header* %35, i64 0, i32 0, !dbg !1981
  br i1 %11, label %41, label %51, !dbg !1981

; <label>:41:                                     ; preds = %32
  %42 = getelementptr inbounds %struct.rs_header, %struct.rs_header* %35, i64 1, i32 0, !dbg !1982
  store i8 1, i8* %42, align 1, !dbg !1986, !tbaa !1442
  %43 = trunc i16 %24 to i8, !dbg !1987
  %44 = getelementptr inbounds i8, i8* %40, i64 9, !dbg !1988
  store i8 %43, i8* %44, align 1, !dbg !1989, !tbaa !624
  %45 = getelementptr inbounds i8, i8* %40, i64 10, !dbg !1990
  %46 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 0, !dbg !1990
  %47 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 20, !dbg !1990
  %48 = load i8, i8* %47, align 4, !dbg !1990, !tbaa !668
  %49 = zext i8 %48 to i64, !dbg !1990
  %50 = tail call i8* @memcpy(i8* nonnull %45, i8* nonnull %46, i64 %49) #7, !dbg !1990
  br label %51, !dbg !1991

; <label>:51:                                     ; preds = %32, %41
  %52 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 16, !dbg !1992
  %53 = load i16, i16* %52, align 8, !dbg !1992, !tbaa !1673
  %54 = and i16 %53, 16, !dbg !1992
  %55 = icmp eq i16 %54, 0, !dbg !1992
  br i1 %55, label %60, label %56, !dbg !1994

; <label>:56:                                     ; preds = %51
  %57 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %27, i64 0, i32 3, !dbg !1995
  %58 = load i16, i16* %57, align 2, !dbg !1995, !tbaa !535
  %59 = tail call zeroext i16 @ip6_chksum_pseudo(%struct.pbuf* nonnull %27, i8 zeroext 58, i16 zeroext %58, %struct.ip6_addr* %7, %struct.ip6_addr* nonnull @multicast_address) #7, !dbg !1997
  store i16 %59, i16* %38, align 1, !dbg !1998, !tbaa !1977
  br label %60, !dbg !1999

; <label>:60:                                     ; preds = %51, %56
  %61 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 0), align 2, !dbg !2000, !tbaa !1681
  %62 = add i16 %61, 1, !dbg !2000
  store i16 %62, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 0), align 2, !dbg !2000, !tbaa !1681
  %63 = icmp eq %struct.ip6_addr* %7, getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip6_addr_any, i64 0, i32 0, i32 0), !dbg !2001
  %64 = select i1 %63, %struct.ip6_addr* null, %struct.ip6_addr* %7, !dbg !2002
  %65 = tail call signext i8 @ip6_output_if(%struct.pbuf* nonnull %27, %struct.ip6_addr* %64, %struct.ip6_addr* nonnull @multicast_address, i8 zeroext -1, i8 zeroext 0, i8 zeroext 58, %struct.netif* nonnull %0) #7, !dbg !2003
  %66 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %27) #7, !dbg !2005
  br label %67, !dbg !2006

; <label>:67:                                     ; preds = %60, %29
  %68 = phi i8 [ -2, %29 ], [ %65, %60 ], !dbg !1955
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2007
  ret i8 %68, !dbg !2007
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
define dso_local void @nd6_tmr() local_unnamed_addr #0 !dbg !2008 {
  br label %1, !dbg !2033

; <label>:1:                                      ; preds = %76, %0
  %2 = phi i64 [ 0, %0 ], [ %77, %76 ]
  %3 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %2, !dbg !2035
  %4 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %2, i32 4, !dbg !2038
  %5 = load i8, i8* %4, align 8, !dbg !2038, !tbaa !690
  switch i8 %5, label %76 [
    i8 1, label %6
    i8 2, label %29
    i8 3, label %42
    i8 4, label %46
    i8 5, label %53
  ], !dbg !2039

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %2, i32 6, i32 0, !dbg !2040
  %8 = load i32, i32* %7, align 4, !dbg !2040, !tbaa !530
  %9 = icmp ugt i32 %8, 2, !dbg !2043
  br i1 %9, label %10, label %24, !dbg !2044

; <label>:10:                                     ; preds = %6
  %11 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %2, i32 5, !dbg !2045
  %12 = load i8, i8* %11, align 1, !dbg !2045, !tbaa !992
  %13 = icmp eq i8 %12, 0, !dbg !2046
  br i1 %13, label %14, label %24, !dbg !2047

; <label>:14:                                     ; preds = %10
  %15 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %2, i32 3, !dbg !2051
  %16 = load %struct.nd6_q_entry*, %struct.nd6_q_entry** %15, align 8, !dbg !2051, !tbaa !726
  %17 = icmp eq %struct.nd6_q_entry* %16, null, !dbg !2052
  br i1 %17, label %19, label %18, !dbg !2053

; <label>:18:                                     ; preds = %14
  tail call fastcc void @nd6_free_q(%struct.nd6_q_entry* nonnull %16) #7, !dbg !2054
  store %struct.nd6_q_entry* null, %struct.nd6_q_entry** %15, align 8, !dbg !2055, !tbaa !726
  br label %19, !dbg !2056

; <label>:19:                                     ; preds = %14, %18
  store i8 0, i8* %4, align 8, !dbg !2057, !tbaa !690
  store i8 0, i8* %11, align 1, !dbg !2058, !tbaa !992
  %20 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %2, i32 1, !dbg !2059
  store %struct.netif* null, %struct.netif** %20, align 8, !dbg !2060, !tbaa !719
  store i32 0, i32* %7, align 4, !dbg !2061, !tbaa !530
  %21 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %2, i32 0, i32 0, i64 0, !dbg !2062
  %22 = bitcast i32* %21 to <4 x i32>*, !dbg !2062
  store <4 x i32> zeroinitializer, <4 x i32>* %22, align 8, !dbg !2062, !tbaa !547
  %23 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %2, i32 0, i32 1, !dbg !2062
  store i8 0, i8* %23, align 8, !dbg !2062, !tbaa !648
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2063
  br label %76, !dbg !2064

; <label>:24:                                     ; preds = %10, %6
  %25 = add i32 %8, 1, !dbg !2065
  store i32 %25, i32* %7, align 4, !dbg !2065, !tbaa !530
  %26 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %2, i32 1, !dbg !2070
  %27 = load %struct.netif*, %struct.netif** %26, align 8, !dbg !2070, !tbaa !719
  %28 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %3, i64 0, i32 0, !dbg !2071
  tail call fastcc void @nd6_send_ns(%struct.netif* %27, %struct.ip6_addr* nonnull %28, i8 zeroext 1) #7, !dbg !2072
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2073
  br label %76

; <label>:29:                                     ; preds = %1
  %30 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %2, i32 3, !dbg !2074
  %31 = load %struct.nd6_q_entry*, %struct.nd6_q_entry** %30, align 8, !dbg !2074, !tbaa !726
  %32 = icmp eq %struct.nd6_q_entry* %31, null, !dbg !2076
  br i1 %32, label %35, label %33, !dbg !2077

; <label>:33:                                     ; preds = %29
  %34 = trunc i64 %2 to i8, !dbg !2078
  tail call fastcc void @nd6_send_q(i8 signext %34) #8, !dbg !2078
  br label %35, !dbg !2080

; <label>:35:                                     ; preds = %29, %33
  %36 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %2, i32 6, i32 0, !dbg !2081
  %37 = load i32, i32* %36, align 4, !dbg !2081, !tbaa !530
  %38 = icmp ult i32 %37, 1001, !dbg !2083
  br i1 %38, label %39, label %40, !dbg !2084

; <label>:39:                                     ; preds = %35
  store i8 3, i8* %4, align 8, !dbg !2085, !tbaa !690
  store i32 0, i32* %36, align 4, !dbg !2087, !tbaa !530
  br label %76, !dbg !2088

; <label>:40:                                     ; preds = %35
  %41 = add i32 %37, -1000, !dbg !2089
  store i32 %41, i32* %36, align 4, !dbg !2089, !tbaa !530
  br label %76

; <label>:42:                                     ; preds = %1
  %43 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %2, i32 6, i32 0, !dbg !2091
  %44 = load i32, i32* %43, align 4, !dbg !2092, !tbaa !530
  %45 = add i32 %44, 1, !dbg !2092
  store i32 %45, i32* %43, align 4, !dbg !2092, !tbaa !530
  br label %76, !dbg !2093

; <label>:46:                                     ; preds = %1
  %47 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %2, i32 6, i32 0, !dbg !2094
  %48 = load i32, i32* %47, align 4, !dbg !2094, !tbaa !530
  %49 = icmp ult i32 %48, 2, !dbg !2096
  br i1 %49, label %50, label %51, !dbg !2097

; <label>:50:                                     ; preds = %46
  store i8 5, i8* %4, align 8, !dbg !2098, !tbaa !690
  store i32 0, i32* %47, align 4, !dbg !2100, !tbaa !530
  br label %76, !dbg !2101

; <label>:51:                                     ; preds = %46
  %52 = add i32 %48, -1, !dbg !2102
  store i32 %52, i32* %47, align 4, !dbg !2102, !tbaa !530
  br label %76

; <label>:53:                                     ; preds = %1
  %54 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %2, i32 6, i32 0, !dbg !2104
  %55 = load i32, i32* %54, align 4, !dbg !2104, !tbaa !530
  %56 = icmp ugt i32 %55, 2, !dbg !2106
  br i1 %56, label %57, label %71, !dbg !2107

; <label>:57:                                     ; preds = %53
  %58 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %2, i32 5, !dbg !2108
  %59 = load i8, i8* %58, align 1, !dbg !2108, !tbaa !992
  %60 = icmp eq i8 %59, 0, !dbg !2109
  br i1 %60, label %61, label %71, !dbg !2110

; <label>:61:                                     ; preds = %57
  %62 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %2, i32 3, !dbg !2114
  %63 = load %struct.nd6_q_entry*, %struct.nd6_q_entry** %62, align 8, !dbg !2114, !tbaa !726
  %64 = icmp eq %struct.nd6_q_entry* %63, null, !dbg !2115
  br i1 %64, label %66, label %65, !dbg !2116

; <label>:65:                                     ; preds = %61
  tail call fastcc void @nd6_free_q(%struct.nd6_q_entry* nonnull %63) #7, !dbg !2117
  store %struct.nd6_q_entry* null, %struct.nd6_q_entry** %62, align 8, !dbg !2118, !tbaa !726
  br label %66, !dbg !2119

; <label>:66:                                     ; preds = %61, %65
  store i8 0, i8* %4, align 8, !dbg !2120, !tbaa !690
  store i8 0, i8* %58, align 1, !dbg !2121, !tbaa !992
  %67 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %2, i32 1, !dbg !2122
  store %struct.netif* null, %struct.netif** %67, align 8, !dbg !2123, !tbaa !719
  store i32 0, i32* %54, align 4, !dbg !2124, !tbaa !530
  %68 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %2, i32 0, i32 0, i64 0, !dbg !2125
  %69 = bitcast i32* %68 to <4 x i32>*, !dbg !2125
  store <4 x i32> zeroinitializer, <4 x i32>* %69, align 8, !dbg !2125, !tbaa !547
  %70 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %2, i32 0, i32 1, !dbg !2125
  store i8 0, i8* %70, align 8, !dbg !2125, !tbaa !648
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2126
  br label %76, !dbg !2127

; <label>:71:                                     ; preds = %57, %53
  %72 = add i32 %55, 1, !dbg !2128
  store i32 %72, i32* %54, align 4, !dbg !2128, !tbaa !530
  %73 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %2, i32 1, !dbg !2133
  %74 = load %struct.netif*, %struct.netif** %73, align 8, !dbg !2133, !tbaa !719
  %75 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %3, i64 0, i32 0, !dbg !2134
  tail call fastcc void @nd6_send_ns(%struct.netif* %74, %struct.ip6_addr* nonnull %75, i8 zeroext 0) #7, !dbg !2135
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2136
  br label %76

; <label>:76:                                     ; preds = %42, %24, %19, %40, %39, %51, %50, %71, %66, %1
  %77 = add nuw nsw i64 %2, 1, !dbg !2137
  %78 = icmp eq i64 %77, 10, !dbg !2138
  br i1 %78, label %79, label %1, !dbg !2033, !llvm.loop !2139

; <label>:79:                                     ; preds = %76
  %80 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 0, i32 3), align 4, !dbg !2141, !tbaa !2145
  %81 = add i32 %80, 1, !dbg !2141
  store i32 %81, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 0, i32 3), align 4, !dbg !2141, !tbaa !2145
  %82 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 1, i32 3), align 4, !dbg !2141, !tbaa !2145
  %83 = add i32 %82, 1, !dbg !2141
  store i32 %83, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 1, i32 3), align 4, !dbg !2141, !tbaa !2145
  %84 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 2, i32 3), align 4, !dbg !2141, !tbaa !2145
  %85 = add i32 %84, 1, !dbg !2141
  store i32 %85, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 2, i32 3), align 4, !dbg !2141, !tbaa !2145
  %86 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 3, i32 3), align 4, !dbg !2141, !tbaa !2145
  %87 = add i32 %86, 1, !dbg !2141
  store i32 %87, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 3, i32 3), align 4, !dbg !2141, !tbaa !2145
  %88 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 4, i32 3), align 4, !dbg !2141, !tbaa !2145
  %89 = add i32 %88, 1, !dbg !2141
  store i32 %89, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 4, i32 3), align 4, !dbg !2141, !tbaa !2145
  %90 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 5, i32 3), align 4, !dbg !2141, !tbaa !2145
  %91 = add i32 %90, 1, !dbg !2141
  store i32 %91, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 5, i32 3), align 4, !dbg !2141, !tbaa !2145
  %92 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 6, i32 3), align 4, !dbg !2141, !tbaa !2145
  %93 = add i32 %92, 1, !dbg !2141
  store i32 %93, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 6, i32 3), align 4, !dbg !2141, !tbaa !2145
  %94 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 7, i32 3), align 4, !dbg !2141, !tbaa !2145
  %95 = add i32 %94, 1, !dbg !2141
  store i32 %95, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 7, i32 3), align 4, !dbg !2141, !tbaa !2145
  %96 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 8, i32 3), align 4, !dbg !2141, !tbaa !2145
  %97 = add i32 %96, 1, !dbg !2141
  store i32 %97, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 8, i32 3), align 4, !dbg !2141, !tbaa !2145
  %98 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 9, i32 3), align 4, !dbg !2141, !tbaa !2145
  %99 = add i32 %98, 1, !dbg !2141
  store i32 %99, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 9, i32 3), align 4, !dbg !2141, !tbaa !2145
  br label %100, !dbg !2146

; <label>:100:                                    ; preds = %153, %79
  %101 = phi i64 [ 0, %79 ], [ %154, %153 ]
  %102 = getelementptr inbounds [3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 %101, i32 0, !dbg !2147
  %103 = load %struct.nd6_neighbor_cache_entry*, %struct.nd6_neighbor_cache_entry** %102, align 16, !dbg !2147, !tbaa !922
  %104 = icmp eq %struct.nd6_neighbor_cache_entry* %103, null, !dbg !2148
  br i1 %104, label %153, label %105, !dbg !2149

; <label>:105:                                    ; preds = %100
  %106 = getelementptr inbounds [3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 %101, i32 1, !dbg !2150
  %107 = load i32, i32* %106, align 8, !dbg !2150, !tbaa !1022
  %108 = icmp ult i32 %107, 2, !dbg !2151
  br i1 %108, label %109, label %151, !dbg !2152

; <label>:109:                                    ; preds = %105
  %110 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %103, i64 0, i32 0, i32 0, i64 0
  %111 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %103, i64 0, i32 0, i32 0, i64 1
  %112 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %103, i64 0, i32 0, i32 0, i64 2
  %113 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %103, i64 0, i32 0, i32 0, i64 3
  %114 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %103, i64 0, i32 0, i32 1
  br label %115, !dbg !2154

; <label>:115:                                    ; preds = %145, %109
  %116 = phi i64 [ 0, %109 ], [ %146, %145 ]
  %117 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %116, i32 1, i32 0, i64 0, !dbg !2156
  %118 = load i32, i32* %117, align 4, !dbg !2156, !tbaa !547
  %119 = load i32, i32* %110, align 8, !dbg !2156, !tbaa !547
  %120 = icmp eq i32 %118, %119, !dbg !2156
  br i1 %120, label %121, label %145, !dbg !2156

; <label>:121:                                    ; preds = %115
  %122 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %116, i32 1, i32 0, i64 1, !dbg !2156
  %123 = load i32, i32* %122, align 4, !dbg !2156, !tbaa !547
  %124 = load i32, i32* %111, align 4, !dbg !2156, !tbaa !547
  %125 = icmp eq i32 %123, %124, !dbg !2156
  br i1 %125, label %126, label %145, !dbg !2156

; <label>:126:                                    ; preds = %121
  %127 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %116, i32 1, i32 0, i64 2, !dbg !2156
  %128 = load i32, i32* %127, align 4, !dbg !2156, !tbaa !547
  %129 = load i32, i32* %112, align 8, !dbg !2156, !tbaa !547
  %130 = icmp eq i32 %128, %129, !dbg !2156
  br i1 %130, label %131, label %145, !dbg !2156

; <label>:131:                                    ; preds = %126
  %132 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %116, i32 1, i32 0, i64 3, !dbg !2156
  %133 = load i32, i32* %132, align 4, !dbg !2156, !tbaa !547
  %134 = load i32, i32* %113, align 4, !dbg !2156, !tbaa !547
  %135 = icmp eq i32 %133, %134, !dbg !2156
  br i1 %135, label %136, label %145, !dbg !2156

; <label>:136:                                    ; preds = %131
  %137 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %116, i32 1, i32 1, !dbg !2156
  %138 = load i8, i8* %137, align 4, !dbg !2156, !tbaa !1435
  %139 = load i8, i8* %114, align 8, !dbg !2156, !tbaa !648
  %140 = icmp eq i8 %138, %139, !dbg !2156
  br i1 %140, label %141, label %145, !dbg !2160

; <label>:141:                                    ; preds = %136
  %142 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %116, i32 0, i32 0, i64 0, !dbg !2161
  %143 = bitcast i32* %142 to <4 x i32>*, !dbg !2161
  store <4 x i32> zeroinitializer, <4 x i32>* %143, align 16, !dbg !2161, !tbaa !547
  %144 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %116, i32 0, i32 1, !dbg !2161
  store i8 0, i8* %144, align 16, !dbg !2161, !tbaa !1415
  br label %145, !dbg !2164

; <label>:145:                                    ; preds = %115, %121, %126, %131, %136, %141
  %146 = add nuw nsw i64 %116, 1, !dbg !2165
  %147 = icmp eq i64 %146, 10, !dbg !2166
  br i1 %147, label %148, label %115, !dbg !2154, !llvm.loop !2167

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %103, i64 0, i32 5, !dbg !2169
  store i8 0, i8* %149, align 1, !dbg !2170, !tbaa !992
  store %struct.nd6_neighbor_cache_entry* null, %struct.nd6_neighbor_cache_entry** %102, align 16, !dbg !2171, !tbaa !922
  store i32 0, i32* %106, align 8, !dbg !2172, !tbaa !1022
  %150 = getelementptr inbounds [3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 %101, i32 2, !dbg !2173
  store i8 0, i8* %150, align 4, !dbg !2174, !tbaa !1045
  br label %153, !dbg !2175

; <label>:151:                                    ; preds = %105
  %152 = add i32 %107, -1, !dbg !2176
  store i32 %152, i32* %106, align 8, !dbg !2176, !tbaa !1022
  br label %153

; <label>:153:                                    ; preds = %100, %151, %148
  %154 = add nuw nsw i64 %101, 1, !dbg !2178
  %155 = icmp eq i64 %154, 3, !dbg !2179
  br i1 %155, label %156, label %100, !dbg !2180, !llvm.loop !2181

; <label>:156:                                    ; preds = %153
  %157 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 0, i32 1), align 8, !dbg !2183, !tbaa !1195
  %158 = icmp eq %struct.netif* %157, null, !dbg !2188
  br i1 %158, label %165, label %159, !dbg !2189

; <label>:159:                                    ; preds = %156
  %160 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 0, i32 2), align 16, !dbg !2190, !tbaa !1211
  %161 = icmp ult i32 %160, 2, !dbg !2193
  br i1 %161, label %162, label %163, !dbg !2194

; <label>:162:                                    ; preds = %159
  store i32 0, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 0, i32 2), align 16, !dbg !2195, !tbaa !1211
  store %struct.netif* null, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 0, i32 1), align 8, !dbg !2197, !tbaa !1195
  br label %165, !dbg !2198

; <label>:163:                                    ; preds = %159
  %164 = add i32 %160, -1, !dbg !2199
  store i32 %164, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 0, i32 2), align 16, !dbg !2199, !tbaa !1211
  br label %165

; <label>:165:                                    ; preds = %156, %163, %162
  %166 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 1, i32 1), align 8, !dbg !2183, !tbaa !1195
  %167 = icmp eq %struct.netif* %166, null, !dbg !2188
  br i1 %167, label %269, label %263, !dbg !2189

; <label>:168:                                    ; preds = %296, %227
  %169 = phi %struct.netif* [ %229, %227 ], [ %297, %296 ]
  %170 = getelementptr inbounds %struct.netif, %struct.netif* %169, i64 0, i32 21
  br label %171, !dbg !2201

; <label>:171:                                    ; preds = %224, %168
  %172 = phi i64 [ 0, %168 ], [ %225, %224 ]
  %173 = getelementptr inbounds %struct.netif, %struct.netif* %169, i64 0, i32 5, i64 %172, !dbg !2202
  %174 = load i8, i8* %173, align 1, !dbg !2202, !tbaa !530
  %175 = icmp eq i8 %174, 0, !dbg !2204
  br i1 %175, label %196, label %176, !dbg !2205

; <label>:176:                                    ; preds = %171
  %177 = getelementptr inbounds %struct.netif, %struct.netif* %169, i64 0, i32 6, i64 %172, !dbg !2206
  %178 = load i32, i32* %177, align 4, !dbg !2206, !tbaa !547
  switch i32 %178, label %182 [
    i32 0, label %196
    i32 1, label %179
    i32 -1, label %184
  ], !dbg !2207

; <label>:179:                                    ; preds = %176
  store i32 0, i32* %177, align 4, !dbg !2208, !tbaa !547
  %180 = getelementptr inbounds %struct.netif, %struct.netif* %169, i64 0, i32 7, i64 %172, !dbg !2214
  store i32 0, i32* %180, align 4, !dbg !2214, !tbaa !547
  %181 = trunc i64 %172 to i8, !dbg !2218
  tail call void @netif_ip6_addr_set_state(%struct.netif* nonnull %169, i8 signext %181, i8 zeroext 0) #7, !dbg !2218
  br label %196, !dbg !2219

; <label>:182:                                    ; preds = %176
  %183 = add i32 %178, -1, !dbg !2220
  store i32 %183, i32* %177, align 4, !dbg !2225, !tbaa !547
  br label %184, !dbg !2225

; <label>:184:                                    ; preds = %176, %182
  %185 = getelementptr inbounds %struct.netif, %struct.netif* %169, i64 0, i32 7, i64 %172, !dbg !2229
  %186 = load i32, i32* %185, align 4, !dbg !2229, !tbaa !547
  %187 = icmp ult i32 %186, 2, !dbg !2230
  br i1 %187, label %188, label %192, !dbg !2232

; <label>:188:                                    ; preds = %184
  store i32 0, i32* %185, align 4, !dbg !2233, !tbaa !547
  %189 = icmp eq i8 %174, 48, !dbg !2238
  br i1 %189, label %190, label %196, !dbg !2240

; <label>:190:                                    ; preds = %188
  %191 = trunc i64 %172 to i8, !dbg !2241
  tail call void @netif_ip6_addr_set_state(%struct.netif* nonnull %169, i8 signext %191, i8 zeroext 16) #7, !dbg !2241
  br label %196, !dbg !2241

; <label>:192:                                    ; preds = %184
  %193 = icmp eq i32 %186, -1, !dbg !2242
  br i1 %193, label %196, label %194, !dbg !2244

; <label>:194:                                    ; preds = %192
  %195 = add i32 %186, -1, !dbg !2245
  store i32 %195, i32* %185, align 4, !dbg !2247, !tbaa !547
  br label %196, !dbg !2247

; <label>:196:                                    ; preds = %176, %179, %192, %194, %188, %190, %171
  %197 = load i8, i8* %173, align 1, !dbg !2251, !tbaa !530
  %198 = zext i8 %197 to i32, !dbg !2252
  %199 = and i32 %198, 8, !dbg !2252
  %200 = icmp eq i32 %199, 0, !dbg !2252
  br i1 %200, label %224, label %201, !dbg !2254

; <label>:201:                                    ; preds = %196
  %202 = and i32 %198, 7, !dbg !2255
  %203 = icmp eq i32 %202, 0, !dbg !2258
  br i1 %203, label %216, label %204, !dbg !2259

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds %struct.netif, %struct.netif* %169, i64 0, i32 6, i64 %172, !dbg !2260
  %206 = load i32, i32* %205, align 4, !dbg !2260, !tbaa !547
  %207 = icmp eq i32 %206, 0, !dbg !2260
  br i1 %207, label %213, label %208, !dbg !2263

; <label>:208:                                    ; preds = %204
  %209 = getelementptr inbounds %struct.netif, %struct.netif* %169, i64 0, i32 7, i64 %172, !dbg !2264
  %210 = load i32, i32* %209, align 4, !dbg !2264, !tbaa !547
  %211 = icmp eq i32 %210, 0, !dbg !2265
  %212 = select i1 %211, i8 16, i8 48, !dbg !2266
  br label %213, !dbg !2266

; <label>:213:                                    ; preds = %208, %204
  %214 = phi i8 [ 48, %204 ], [ %212, %208 ], !dbg !2267
  %215 = trunc i64 %172 to i8, !dbg !2268
  tail call void @netif_ip6_addr_set_state(%struct.netif* nonnull %169, i8 signext %215, i8 zeroext %214) #7, !dbg !2268
  br label %224, !dbg !2269

; <label>:216:                                    ; preds = %201
  %217 = load i8, i8* %170, align 1, !dbg !2270, !tbaa !2272
  %218 = and i8 %217, 5, !dbg !2273
  %219 = icmp eq i8 %218, 5, !dbg !2273
  br i1 %219, label %220, label %224, !dbg !2273

; <label>:220:                                    ; preds = %216
  %221 = add i8 %197, 1, !dbg !2274
  %222 = trunc i64 %172 to i8, !dbg !2276
  tail call void @netif_ip6_addr_set_state(%struct.netif* nonnull %169, i8 signext %222, i8 zeroext %221) #7, !dbg !2276
  %223 = getelementptr inbounds %struct.netif, %struct.netif* %169, i64 0, i32 4, i64 %172, i32 0, i32 0, !dbg !2277
  tail call fastcc void @nd6_send_ns(%struct.netif* nonnull %169, %struct.ip6_addr* nonnull %223, i8 zeroext 5) #8, !dbg !2278
  br label %224, !dbg !2279

; <label>:224:                                    ; preds = %216, %196, %213, %220
  %225 = add nuw nsw i64 %172, 1, !dbg !2280
  %226 = icmp eq i64 %225, 3, !dbg !2281
  br i1 %226, label %227, label %171, !dbg !2201, !llvm.loop !2282

; <label>:227:                                    ; preds = %224
  %228 = getelementptr inbounds %struct.netif, %struct.netif* %169, i64 0, i32 0, !dbg !2284
  %229 = load %struct.netif*, %struct.netif** %228, align 8, !dbg !2286, !tbaa !2287
  %230 = icmp eq %struct.netif* %229, null, !dbg !2284
  br i1 %230, label %231, label %168, !dbg !2286, !llvm.loop !2288

; <label>:231:                                    ; preds = %227, %296
  %232 = load i8, i8* @nd6_tmr_rs_reduction, align 1, !dbg !2290, !tbaa !530
  %233 = icmp eq i8 %232, 0, !dbg !2290
  br i1 %233, label %234, label %260, !dbg !2292

; <label>:234:                                    ; preds = %231
  store i8 3, i8* @nd6_tmr_rs_reduction, align 1, !dbg !2293, !tbaa !530
  %235 = load %struct.netif*, %struct.netif** @netif_list, align 8, !dbg !2295, !tbaa !2287
  %236 = icmp eq %struct.netif* %235, null, !dbg !2297
  br i1 %236, label %262, label %237, !dbg !2295

; <label>:237:                                    ; preds = %234, %256
  %238 = phi %struct.netif* [ %258, %256 ], [ %235, %234 ]
  %239 = getelementptr inbounds %struct.netif, %struct.netif* %238, i64 0, i32 25, !dbg !2299
  %240 = load i8, i8* %239, align 2, !dbg !2299, !tbaa !901
  %241 = icmp eq i8 %240, 0, !dbg !2302
  br i1 %241, label %256, label %242, !dbg !2303

; <label>:242:                                    ; preds = %237
  %243 = getelementptr inbounds %struct.netif, %struct.netif* %238, i64 0, i32 21, !dbg !2304
  %244 = load i8, i8* %243, align 1, !dbg !2304, !tbaa !2272
  %245 = and i8 %244, 5, !dbg !2305
  %246 = icmp eq i8 %245, 5, !dbg !2305
  br i1 %246, label %247, label %256, !dbg !2305

; <label>:247:                                    ; preds = %242
  %248 = getelementptr inbounds %struct.netif, %struct.netif* %238, i64 0, i32 5, i64 0, !dbg !2306
  %249 = load i8, i8* %248, align 8, !dbg !2306, !tbaa !530
  switch i8 %249, label %250 [
    i8 0, label %256
    i8 64, label %256
  ], !dbg !2307

; <label>:250:                                    ; preds = %247
  %251 = tail call fastcc signext i8 @nd6_send_rs(%struct.netif* nonnull %238) #8, !dbg !2308
  %252 = icmp eq i8 %251, 0, !dbg !2311
  br i1 %252, label %253, label %256, !dbg !2312

; <label>:253:                                    ; preds = %250
  %254 = load i8, i8* %239, align 2, !dbg !2313, !tbaa !901
  %255 = add i8 %254, -1, !dbg !2313
  store i8 %255, i8* %239, align 2, !dbg !2313, !tbaa !901
  br label %256, !dbg !2315

; <label>:256:                                    ; preds = %242, %247, %247, %237, %253, %250
  %257 = getelementptr inbounds %struct.netif, %struct.netif* %238, i64 0, i32 0, !dbg !2297
  %258 = load %struct.netif*, %struct.netif** %257, align 8, !dbg !2295, !tbaa !2287
  %259 = icmp eq %struct.netif* %258, null, !dbg !2297
  br i1 %259, label %262, label %237, !dbg !2295, !llvm.loop !2316

; <label>:260:                                    ; preds = %231
  %261 = add i8 %232, -1, !dbg !2318
  store i8 %261, i8* @nd6_tmr_rs_reduction, align 1, !dbg !2318, !tbaa !530
  br label %262

; <label>:262:                                    ; preds = %256, %234, %260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2320
  ret void, !dbg !2320

; <label>:263:                                    ; preds = %165
  %264 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 1, i32 2), align 8, !dbg !2190, !tbaa !1211
  %265 = icmp ult i32 %264, 2, !dbg !2193
  br i1 %265, label %268, label %266, !dbg !2194

; <label>:266:                                    ; preds = %263
  %267 = add i32 %264, -1, !dbg !2199
  store i32 %267, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 1, i32 2), align 8, !dbg !2199, !tbaa !1211
  br label %269

; <label>:268:                                    ; preds = %263
  store i32 0, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 1, i32 2), align 8, !dbg !2195, !tbaa !1211
  store %struct.netif* null, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 1, i32 1), align 8, !dbg !2197, !tbaa !1195
  br label %269, !dbg !2198

; <label>:269:                                    ; preds = %268, %266, %165
  %270 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 2, i32 1), align 8, !dbg !2183, !tbaa !1195
  %271 = icmp eq %struct.netif* %270, null, !dbg !2188
  br i1 %271, label %278, label %272, !dbg !2189

; <label>:272:                                    ; preds = %269
  %273 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 2, i32 2), align 16, !dbg !2190, !tbaa !1211
  %274 = icmp ult i32 %273, 2, !dbg !2193
  br i1 %274, label %277, label %275, !dbg !2194

; <label>:275:                                    ; preds = %272
  %276 = add i32 %273, -1, !dbg !2199
  store i32 %276, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 2, i32 2), align 16, !dbg !2199, !tbaa !1211
  br label %278

; <label>:277:                                    ; preds = %272
  store i32 0, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 2, i32 2), align 16, !dbg !2195, !tbaa !1211
  store %struct.netif* null, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 2, i32 1), align 8, !dbg !2197, !tbaa !1195
  br label %278, !dbg !2198

; <label>:278:                                    ; preds = %277, %275, %269
  %279 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 3, i32 1), align 8, !dbg !2183, !tbaa !1195
  %280 = icmp eq %struct.netif* %279, null, !dbg !2188
  br i1 %280, label %287, label %281, !dbg !2189

; <label>:281:                                    ; preds = %278
  %282 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 3, i32 2), align 8, !dbg !2190, !tbaa !1211
  %283 = icmp ult i32 %282, 2, !dbg !2193
  br i1 %283, label %286, label %284, !dbg !2194

; <label>:284:                                    ; preds = %281
  %285 = add i32 %282, -1, !dbg !2199
  store i32 %285, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 3, i32 2), align 8, !dbg !2199, !tbaa !1211
  br label %287

; <label>:286:                                    ; preds = %281
  store i32 0, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 3, i32 2), align 8, !dbg !2195, !tbaa !1211
  store %struct.netif* null, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 3, i32 1), align 8, !dbg !2197, !tbaa !1195
  br label %287, !dbg !2198

; <label>:287:                                    ; preds = %286, %284, %278
  %288 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 4, i32 1), align 8, !dbg !2183, !tbaa !1195
  %289 = icmp eq %struct.netif* %288, null, !dbg !2188
  br i1 %289, label %296, label %290, !dbg !2189

; <label>:290:                                    ; preds = %287
  %291 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 4, i32 2), align 16, !dbg !2190, !tbaa !1211
  %292 = icmp ult i32 %291, 2, !dbg !2193
  br i1 %292, label %295, label %293, !dbg !2194

; <label>:293:                                    ; preds = %290
  %294 = add i32 %291, -1, !dbg !2199
  store i32 %294, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 4, i32 2), align 16, !dbg !2199, !tbaa !1211
  br label %296

; <label>:295:                                    ; preds = %290
  store i32 0, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 4, i32 2), align 16, !dbg !2195, !tbaa !1211
  store %struct.netif* null, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 4, i32 1), align 8, !dbg !2197, !tbaa !1195
  br label %296, !dbg !2198

; <label>:296:                                    ; preds = %295, %293, %287
  %297 = load %struct.netif*, %struct.netif** @netif_list, align 8, !dbg !2286, !tbaa !2287
  %298 = icmp eq %struct.netif* %297, null, !dbg !2284
  br i1 %298, label %231, label %168, !dbg !2286
}

; Function Attrs: noredzone
declare dso_local void @netif_ip6_addr_set_state(%struct.netif*, i8 signext, i8 zeroext) local_unnamed_addr #3

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8*, ...) unnamed_addr #4 !dbg !416 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !2322
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #6, !dbg !2322
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !2324
  call void @llvm.va_start(i8* nonnull %3), !dbg !2324
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @uk_pr_crit.__str.4, i64 0, i64 0), i32 198, i8* %0, %struct.__va_list_tag* nonnull %4) #7, !dbg !2325
  call void @llvm.va_end(i8* nonnull %3), !dbg !2328
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #6, !dbg !2329
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2329
  ret void, !dbg !2329
}

; Function Attrs: noredzone noreturn
declare dso_local void @ukplat_terminate(i32) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define internal fastcc void @nd6_send_ns(%struct.netif*, %struct.ip6_addr*, i8 zeroext) unnamed_addr #0 !dbg !2330 {
  %4 = icmp eq %struct.ip6_addr* %1, null, !dbg !2345
  br i1 %4, label %5, label %6, !dbg !2348

; <label>:5:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !2349
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2352
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2352
  unreachable, !dbg !2352

; <label>:6:                                      ; preds = %3
  %7 = zext i8 %2 to i32, !dbg !2356
  %8 = and i32 %7, 4, !dbg !2358
  %9 = icmp eq i32 %8, 0, !dbg !2358
  br i1 %9, label %10, label %22, !dbg !2359

; <label>:10:                                     ; preds = %6
  %11 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 0, !dbg !2360
  %12 = load i8, i8* %11, align 8, !dbg !2360, !tbaa !530
  %13 = and i8 %12, 16, !dbg !2360
  %14 = icmp eq i8 %13, 0, !dbg !2360
  br i1 %14, label %22, label %15, !dbg !2361

; <label>:15:                                     ; preds = %10
  %16 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, !dbg !2362
  %17 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 20, !dbg !2365
  %18 = load i8, i8* %17, align 4, !dbg !2365, !tbaa !668
  %19 = zext i8 %18 to i16, !dbg !2366
  %20 = add nuw nsw i16 %19, 9, !dbg !2367
  %21 = lshr i16 %20, 3, !dbg !2368
  br label %22, !dbg !2370

; <label>:22:                                     ; preds = %6, %10, %15
  %23 = phi %struct.ip6_addr* [ %16, %15 ], [ getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip6_addr_any, i64 0, i32 0, i32 0), %10 ], [ getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip6_addr_any, i64 0, i32 0, i32 0), %6 ], !dbg !2371
  %24 = phi i16 [ %21, %15 ], [ 0, %10 ], [ 0, %6 ], !dbg !2371
  %25 = shl nuw nsw i16 %24, 3, !dbg !2372
  %26 = add nuw nsw i16 %25, 24, !dbg !2373
  %27 = tail call %struct.pbuf* @pbuf_alloc(i32 54, i16 zeroext %26, i32 640) #7, !dbg !2374
  %28 = icmp eq %struct.pbuf* %27, null, !dbg !2376
  br i1 %28, label %29, label %32, !dbg !2378

; <label>:29:                                     ; preds = %22
  %30 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 6), align 2, !dbg !2379, !tbaa !862
  %31 = add i16 %30, 1, !dbg !2379
  store i16 %31, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 6), align 2, !dbg !2379, !tbaa !862
  br label %94, !dbg !2381

; <label>:32:                                     ; preds = %22
  %33 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %27, i64 0, i32 1, !dbg !2382
  %34 = bitcast i8** %33 to %struct.ns_header**, !dbg !2382
  %35 = load %struct.ns_header*, %struct.ns_header** %34, align 8, !dbg !2382, !tbaa !526
  %36 = getelementptr inbounds %struct.ns_header, %struct.ns_header* %35, i64 0, i32 0, !dbg !2384
  store i8 -121, i8* %36, align 1, !dbg !2385, !tbaa !2386
  %37 = getelementptr inbounds %struct.ns_header, %struct.ns_header* %35, i64 0, i32 1, !dbg !2387
  store i8 0, i8* %37, align 1, !dbg !2388, !tbaa !752
  %38 = getelementptr inbounds %struct.ns_header, %struct.ns_header* %35, i64 0, i32 2, !dbg !2389
  store i16 0, i16* %38, align 1, !dbg !2390, !tbaa !2391
  %39 = getelementptr inbounds %struct.ns_header, %struct.ns_header* %35, i64 0, i32 3, !dbg !2392
  store i32 0, i32* %39, align 1, !dbg !2393, !tbaa !2394
  %40 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 0, !dbg !2395
  %41 = load i32, i32* %40, align 4, !dbg !2395, !tbaa !547
  %42 = getelementptr inbounds %struct.ns_header, %struct.ns_header* %35, i64 0, i32 4, i32 0, i64 0, !dbg !2395
  store i32 %41, i32* %42, align 1, !dbg !2395, !tbaa !547
  %43 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 1, !dbg !2395
  %44 = load i32, i32* %43, align 4, !dbg !2395, !tbaa !547
  %45 = getelementptr inbounds %struct.ns_header, %struct.ns_header* %35, i64 0, i32 4, i32 0, i64 1, !dbg !2395
  store i32 %44, i32* %45, align 1, !dbg !2395, !tbaa !547
  %46 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 2, !dbg !2395
  %47 = load i32, i32* %46, align 4, !dbg !2395, !tbaa !547
  %48 = getelementptr inbounds %struct.ns_header, %struct.ns_header* %35, i64 0, i32 4, i32 0, i64 2, !dbg !2395
  store i32 %47, i32* %48, align 1, !dbg !2395, !tbaa !547
  %49 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 3, !dbg !2395
  %50 = load i32, i32* %49, align 4, !dbg !2395, !tbaa !547
  %51 = getelementptr inbounds %struct.ns_header, %struct.ns_header* %35, i64 0, i32 4, i32 0, i64 3, !dbg !2395
  store i32 %50, i32* %51, align 1, !dbg !2395, !tbaa !547
  %52 = icmp eq i16 %24, 0, !dbg !2397
  %53 = getelementptr inbounds %struct.ns_header, %struct.ns_header* %35, i64 0, i32 0, !dbg !2398
  br i1 %52, label %64, label %54, !dbg !2398

; <label>:54:                                     ; preds = %32
  %55 = getelementptr inbounds %struct.ns_header, %struct.ns_header* %35, i64 1, i32 0, !dbg !2399
  store i8 1, i8* %55, align 1, !dbg !2401, !tbaa !1442
  %56 = trunc i16 %24 to i8, !dbg !2402
  %57 = getelementptr inbounds i8, i8* %53, i64 25, !dbg !2403
  store i8 %56, i8* %57, align 1, !dbg !2404, !tbaa !624
  %58 = getelementptr inbounds i8, i8* %53, i64 26, !dbg !2405
  %59 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 0, !dbg !2405
  %60 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 20, !dbg !2405
  %61 = load i8, i8* %60, align 4, !dbg !2405, !tbaa !668
  %62 = zext i8 %61 to i64, !dbg !2405
  %63 = tail call i8* @memcpy(i8* nonnull %58, i8* nonnull %59, i64 %62) #7, !dbg !2405
  br label %64, !dbg !2406

; <label>:64:                                     ; preds = %32, %54
  %65 = and i32 %7, 1, !dbg !2407
  %66 = icmp eq i32 %65, 0, !dbg !2407
  br i1 %66, label %73, label %67, !dbg !2409

; <label>:67:                                     ; preds = %64
  store i32 767, i32* getelementptr inbounds (%struct.ip6_addr, %struct.ip6_addr* @multicast_address, i64 0, i32 0, i64 0), align 16, !dbg !2410, !tbaa !547
  store i32 0, i32* getelementptr inbounds (%struct.ip6_addr, %struct.ip6_addr* @multicast_address, i64 0, i32 0, i64 1), align 4, !dbg !2410, !tbaa !547
  store i32 16777216, i32* getelementptr inbounds (%struct.ip6_addr, %struct.ip6_addr* @multicast_address, i64 0, i32 0, i64 2), align 8, !dbg !2410, !tbaa !547
  %68 = load i32, i32* %49, align 4, !dbg !2410, !tbaa !547
  %69 = or i32 %68, 255, !dbg !2410
  store i32 %69, i32* getelementptr inbounds (%struct.ip6_addr, %struct.ip6_addr* @multicast_address, i64 0, i32 0, i64 3), align 4, !dbg !2410, !tbaa !547
  %70 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 23, !dbg !2413
  %71 = load i8, i8* %70, align 8, !dbg !2413, !tbaa !550
  %72 = add i8 %71, 1, !dbg !2413
  store i8 %72, i8* getelementptr inbounds (%struct.ip6_addr, %struct.ip6_addr* @multicast_address, i64 0, i32 1), align 16, !dbg !2413, !tbaa !745
  br label %75, !dbg !2414

; <label>:73:                                     ; preds = %64
  %74 = icmp eq %struct.netif* %0, null, !dbg !2414
  br i1 %74, label %81, label %75, !dbg !2414

; <label>:75:                                     ; preds = %67, %73
  %76 = phi %struct.ip6_addr* [ @multicast_address, %67 ], [ %1, %73 ]
  %77 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 16, !dbg !2414
  %78 = load i16, i16* %77, align 8, !dbg !2414, !tbaa !1673
  %79 = and i16 %78, 16, !dbg !2414
  %80 = icmp eq i16 %79, 0, !dbg !2414
  br i1 %80, label %86, label %81, !dbg !2416

; <label>:81:                                     ; preds = %75, %73
  %82 = phi %struct.ip6_addr* [ %76, %75 ], [ %1, %73 ]
  %83 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %27, i64 0, i32 3, !dbg !2417
  %84 = load i16, i16* %83, align 2, !dbg !2417, !tbaa !535
  %85 = tail call zeroext i16 @ip6_chksum_pseudo(%struct.pbuf* nonnull %27, i8 zeroext 58, i16 zeroext %84, %struct.ip6_addr* %23, %struct.ip6_addr* %82) #7, !dbg !2419
  store i16 %85, i16* %38, align 1, !dbg !2420, !tbaa !2391
  br label %86, !dbg !2421

; <label>:86:                                     ; preds = %75, %81
  %87 = phi %struct.ip6_addr* [ %76, %75 ], [ %82, %81 ]
  %88 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 0), align 2, !dbg !2422, !tbaa !1681
  %89 = add i16 %88, 1, !dbg !2422
  store i16 %89, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 0), align 2, !dbg !2422, !tbaa !1681
  %90 = icmp eq %struct.ip6_addr* %23, getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip6_addr_any, i64 0, i32 0, i32 0), !dbg !2423
  %91 = select i1 %90, %struct.ip6_addr* null, %struct.ip6_addr* %23, !dbg !2424
  %92 = tail call signext i8 @ip6_output_if(%struct.pbuf* nonnull %27, %struct.ip6_addr* %91, %struct.ip6_addr* %87, i8 zeroext -1, i8 zeroext 0, i8 zeroext 58, %struct.netif* %0) #7, !dbg !2425
  %93 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %27) #7, !dbg !2426
  br label %94, !dbg !2427

; <label>:94:                                     ; preds = %86, %29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2427
  ret void, !dbg !2427
}

; Function Attrs: noredzone nounwind
define dso_local void @nd6_clear_destination_cache() local_unnamed_addr #0 !dbg !2428 {
  store <4 x i32> zeroinitializer, <4 x i32>* bitcast ([10 x %struct.nd6_destination_cache_entry]* @destination_cache to <4 x i32>*), align 16, !dbg !2432, !tbaa !547
  store i8 0, i8* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 0, i32 0, i32 1), align 16, !dbg !2432, !tbaa !1415
  store <4 x i32> zeroinitializer, <4 x i32>* bitcast (i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 1, i32 0, i32 0, i64 0) to <4 x i32>*), align 16, !dbg !2432, !tbaa !547
  store i8 0, i8* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 1, i32 0, i32 1), align 16, !dbg !2432, !tbaa !1415
  store <4 x i32> zeroinitializer, <4 x i32>* bitcast (i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 2, i32 0, i32 0, i64 0) to <4 x i32>*), align 16, !dbg !2432, !tbaa !547
  store i8 0, i8* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 2, i32 0, i32 1), align 16, !dbg !2432, !tbaa !1415
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 3, i32 0, i32 0, i64 0), align 16, !dbg !2432, !tbaa !547
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 3, i32 0, i32 0, i64 1), align 4, !dbg !2432, !tbaa !547
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 3, i32 0, i32 0, i64 2), align 8, !dbg !2432, !tbaa !547
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 3, i32 0, i32 0, i64 3), align 4, !dbg !2432, !tbaa !547
  store i8 0, i8* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 3, i32 0, i32 1), align 16, !dbg !2432, !tbaa !1415
  store <4 x i32> zeroinitializer, <4 x i32>* bitcast (i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 4, i32 0, i32 0, i64 0) to <4 x i32>*), align 16, !dbg !2432, !tbaa !547
  store i8 0, i8* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 4, i32 0, i32 1), align 16, !dbg !2432, !tbaa !1415
  store <4 x i32> zeroinitializer, <4 x i32>* bitcast (i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 5, i32 0, i32 0, i64 0) to <4 x i32>*), align 16, !dbg !2432, !tbaa !547
  store i8 0, i8* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 5, i32 0, i32 1), align 16, !dbg !2432, !tbaa !1415
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 6, i32 0, i32 0, i64 0), align 16, !dbg !2432, !tbaa !547
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 6, i32 0, i32 0, i64 1), align 4, !dbg !2432, !tbaa !547
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 6, i32 0, i32 0, i64 2), align 8, !dbg !2432, !tbaa !547
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 6, i32 0, i32 0, i64 3), align 4, !dbg !2432, !tbaa !547
  store i8 0, i8* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 6, i32 0, i32 1), align 16, !dbg !2432, !tbaa !1415
  store <4 x i32> zeroinitializer, <4 x i32>* bitcast (i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 7, i32 0, i32 0, i64 0) to <4 x i32>*), align 16, !dbg !2432, !tbaa !547
  store i8 0, i8* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 7, i32 0, i32 1), align 16, !dbg !2432, !tbaa !1415
  store <4 x i32> zeroinitializer, <4 x i32>* bitcast (i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 8, i32 0, i32 0, i64 0) to <4 x i32>*), align 16, !dbg !2432, !tbaa !547
  store i8 0, i8* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 8, i32 0, i32 1), align 16, !dbg !2432, !tbaa !1415
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 9, i32 0, i32 0, i64 0), align 16, !dbg !2432, !tbaa !547
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 9, i32 0, i32 0, i64 1), align 4, !dbg !2432, !tbaa !547
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 9, i32 0, i32 0, i64 2), align 8, !dbg !2432, !tbaa !547
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 9, i32 0, i32 0, i64 3), align 4, !dbg !2432, !tbaa !547
  store i8 0, i8* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 9, i32 0, i32 1), align 16, !dbg !2432, !tbaa !1415
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2437
  ret void, !dbg !2437
}

; Function Attrs: noredzone nounwind
define dso_local %struct.netif* @nd6_find_route(%struct.ip6_addr* nocapture readonly) local_unnamed_addr #0 !dbg !2438 {
  %2 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 0
  %3 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 1
  %4 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 1
  %5 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 0, i32 1), align 8, !dbg !2447, !tbaa !1195
  %6 = icmp eq %struct.netif* %5, null, !dbg !2452
  br i1 %6, label %24, label %7, !dbg !2454

; <label>:7:                                      ; preds = %1
  %8 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 0, i32 0, i32 0, i64 0), align 16, !dbg !2455, !tbaa !547
  %9 = load i32, i32* %2, align 4, !dbg !2455, !tbaa !547
  %10 = icmp eq i32 %8, %9, !dbg !2455
  br i1 %10, label %11, label %24, !dbg !2455

; <label>:11:                                     ; preds = %7
  %12 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 0, i32 0, i32 0, i64 1), align 4, !dbg !2455, !tbaa !547
  %13 = load i32, i32* %3, align 4, !dbg !2455, !tbaa !547
  %14 = icmp eq i32 %12, %13, !dbg !2455
  br i1 %14, label %15, label %24, !dbg !2455

; <label>:15:                                     ; preds = %11
  %16 = load i8, i8* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 0, i32 0, i32 1), align 16, !dbg !2455, !tbaa !1170
  %17 = load i8, i8* %4, align 4, !dbg !2455, !tbaa !745
  %18 = icmp eq i8 %16, %17, !dbg !2455
  br i1 %18, label %19, label %24, !dbg !2456

; <label>:19:                                     ; preds = %15
  %20 = getelementptr inbounds %struct.netif, %struct.netif* %5, i64 0, i32 21, !dbg !2457
  %21 = load i8, i8* %20, align 1, !dbg !2457, !tbaa !2272
  %22 = and i8 %21, 5, !dbg !2458
  %23 = icmp eq i8 %22, 5, !dbg !2458
  br i1 %23, label %36, label %24, !dbg !2458

; <label>:24:                                     ; preds = %19, %1, %7, %11, %15
  %25 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 1, i32 1), align 8, !dbg !2447, !tbaa !1195
  %26 = icmp eq %struct.netif* %25, null, !dbg !2452
  br i1 %26, label %55, label %38, !dbg !2454

; <label>:27:                                     ; preds = %115
  %28 = sext i8 %116 to i64, !dbg !2459
  %29 = getelementptr inbounds [3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 %28, i32 0, !dbg !2459
  %30 = load %struct.nd6_neighbor_cache_entry*, %struct.nd6_neighbor_cache_entry** %29, align 16, !dbg !2459, !tbaa !922
  %31 = icmp eq %struct.nd6_neighbor_cache_entry* %30, null, !dbg !2459
  br i1 %31, label %32, label %33, !dbg !2464

; <label>:32:                                     ; preds = %27
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !2465
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2468
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2468
  unreachable, !dbg !2468

; <label>:33:                                     ; preds = %27
  %34 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %30, i64 0, i32 1, !dbg !2472
  %35 = load %struct.netif*, %struct.netif** %34, align 8, !dbg !2472, !tbaa !719
  br label %36, !dbg !2473

; <label>:36:                                     ; preds = %19, %50, %70, %90, %110, %115, %33
  %37 = phi %struct.netif* [ %35, %33 ], [ null, %115 ], [ %5, %19 ], [ %25, %50 ], [ %56, %70 ], [ %76, %90 ], [ %96, %110 ], !dbg !2474
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2475
  ret %struct.netif* %37, !dbg !2475

; <label>:38:                                     ; preds = %24
  %39 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 1, i32 0, i32 0, i64 0), align 8, !dbg !2455, !tbaa !547
  %40 = load i32, i32* %2, align 4, !dbg !2455, !tbaa !547
  %41 = icmp eq i32 %39, %40, !dbg !2455
  br i1 %41, label %42, label %55, !dbg !2455

; <label>:42:                                     ; preds = %38
  %43 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 1, i32 0, i32 0, i64 1), align 4, !dbg !2455, !tbaa !547
  %44 = load i32, i32* %3, align 4, !dbg !2455, !tbaa !547
  %45 = icmp eq i32 %43, %44, !dbg !2455
  br i1 %45, label %46, label %55, !dbg !2455

; <label>:46:                                     ; preds = %42
  %47 = load i8, i8* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 1, i32 0, i32 1), align 8, !dbg !2455, !tbaa !1170
  %48 = load i8, i8* %4, align 4, !dbg !2455, !tbaa !745
  %49 = icmp eq i8 %47, %48, !dbg !2455
  br i1 %49, label %50, label %55, !dbg !2456

; <label>:50:                                     ; preds = %46
  %51 = getelementptr inbounds %struct.netif, %struct.netif* %25, i64 0, i32 21, !dbg !2457
  %52 = load i8, i8* %51, align 1, !dbg !2457, !tbaa !2272
  %53 = and i8 %52, 5, !dbg !2458
  %54 = icmp eq i8 %53, 5, !dbg !2458
  br i1 %54, label %36, label %55, !dbg !2458

; <label>:55:                                     ; preds = %50, %46, %42, %38, %24
  %56 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 2, i32 1), align 8, !dbg !2447, !tbaa !1195
  %57 = icmp eq %struct.netif* %56, null, !dbg !2452
  br i1 %57, label %75, label %58, !dbg !2454

; <label>:58:                                     ; preds = %55
  %59 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 2, i32 0, i32 0, i64 0), align 16, !dbg !2455, !tbaa !547
  %60 = load i32, i32* %2, align 4, !dbg !2455, !tbaa !547
  %61 = icmp eq i32 %59, %60, !dbg !2455
  br i1 %61, label %62, label %75, !dbg !2455

; <label>:62:                                     ; preds = %58
  %63 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 2, i32 0, i32 0, i64 1), align 4, !dbg !2455, !tbaa !547
  %64 = load i32, i32* %3, align 4, !dbg !2455, !tbaa !547
  %65 = icmp eq i32 %63, %64, !dbg !2455
  br i1 %65, label %66, label %75, !dbg !2455

; <label>:66:                                     ; preds = %62
  %67 = load i8, i8* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 2, i32 0, i32 1), align 16, !dbg !2455, !tbaa !1170
  %68 = load i8, i8* %4, align 4, !dbg !2455, !tbaa !745
  %69 = icmp eq i8 %67, %68, !dbg !2455
  br i1 %69, label %70, label %75, !dbg !2456

; <label>:70:                                     ; preds = %66
  %71 = getelementptr inbounds %struct.netif, %struct.netif* %56, i64 0, i32 21, !dbg !2457
  %72 = load i8, i8* %71, align 1, !dbg !2457, !tbaa !2272
  %73 = and i8 %72, 5, !dbg !2458
  %74 = icmp eq i8 %73, 5, !dbg !2458
  br i1 %74, label %36, label %75, !dbg !2458

; <label>:75:                                     ; preds = %70, %66, %62, %58, %55
  %76 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 3, i32 1), align 8, !dbg !2447, !tbaa !1195
  %77 = icmp eq %struct.netif* %76, null, !dbg !2452
  br i1 %77, label %95, label %78, !dbg !2454

; <label>:78:                                     ; preds = %75
  %79 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 3, i32 0, i32 0, i64 0), align 8, !dbg !2455, !tbaa !547
  %80 = load i32, i32* %2, align 4, !dbg !2455, !tbaa !547
  %81 = icmp eq i32 %79, %80, !dbg !2455
  br i1 %81, label %82, label %95, !dbg !2455

; <label>:82:                                     ; preds = %78
  %83 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 3, i32 0, i32 0, i64 1), align 4, !dbg !2455, !tbaa !547
  %84 = load i32, i32* %3, align 4, !dbg !2455, !tbaa !547
  %85 = icmp eq i32 %83, %84, !dbg !2455
  br i1 %85, label %86, label %95, !dbg !2455

; <label>:86:                                     ; preds = %82
  %87 = load i8, i8* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 3, i32 0, i32 1), align 8, !dbg !2455, !tbaa !1170
  %88 = load i8, i8* %4, align 4, !dbg !2455, !tbaa !745
  %89 = icmp eq i8 %87, %88, !dbg !2455
  br i1 %89, label %90, label %95, !dbg !2456

; <label>:90:                                     ; preds = %86
  %91 = getelementptr inbounds %struct.netif, %struct.netif* %76, i64 0, i32 21, !dbg !2457
  %92 = load i8, i8* %91, align 1, !dbg !2457, !tbaa !2272
  %93 = and i8 %92, 5, !dbg !2458
  %94 = icmp eq i8 %93, 5, !dbg !2458
  br i1 %94, label %36, label %95, !dbg !2458

; <label>:95:                                     ; preds = %90, %86, %82, %78, %75
  %96 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 4, i32 1), align 8, !dbg !2447, !tbaa !1195
  %97 = icmp eq %struct.netif* %96, null, !dbg !2452
  br i1 %97, label %115, label %98, !dbg !2454

; <label>:98:                                     ; preds = %95
  %99 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 4, i32 0, i32 0, i64 0), align 16, !dbg !2455, !tbaa !547
  %100 = load i32, i32* %2, align 4, !dbg !2455, !tbaa !547
  %101 = icmp eq i32 %99, %100, !dbg !2455
  br i1 %101, label %102, label %115, !dbg !2455

; <label>:102:                                    ; preds = %98
  %103 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 4, i32 0, i32 0, i64 1), align 4, !dbg !2455, !tbaa !547
  %104 = load i32, i32* %3, align 4, !dbg !2455, !tbaa !547
  %105 = icmp eq i32 %103, %104, !dbg !2455
  br i1 %105, label %106, label %115, !dbg !2455

; <label>:106:                                    ; preds = %102
  %107 = load i8, i8* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 4, i32 0, i32 1), align 16, !dbg !2455, !tbaa !1170
  %108 = load i8, i8* %4, align 4, !dbg !2455, !tbaa !745
  %109 = icmp eq i8 %107, %108, !dbg !2455
  br i1 %109, label %110, label %115, !dbg !2456

; <label>:110:                                    ; preds = %106
  %111 = getelementptr inbounds %struct.netif, %struct.netif* %96, i64 0, i32 21, !dbg !2457
  %112 = load i8, i8* %111, align 1, !dbg !2457, !tbaa !2272
  %113 = and i8 %112, 5, !dbg !2458
  %114 = icmp eq i8 %113, 5, !dbg !2458
  br i1 %114, label %36, label %115, !dbg !2458

; <label>:115:                                    ; preds = %110, %106, %102, %98, %95
  %116 = tail call fastcc signext i8 @nd6_select_router(%struct.netif* null) #8, !dbg !2476
  %117 = icmp sgt i8 %116, -1, !dbg !2477
  br i1 %117, label %27, label %36, !dbg !2478
}

; Function Attrs: noredzone nounwind
define internal fastcc signext i8 @nd6_select_router(%struct.netif* readnone) unnamed_addr #0 !dbg !443 {
  %2 = icmp eq %struct.netif* %0, null
  %3 = load %struct.nd6_neighbor_cache_entry*, %struct.nd6_neighbor_cache_entry** getelementptr inbounds ([3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 0, i32 0), align 16, !dbg !2483, !tbaa !922
  %4 = icmp eq %struct.nd6_neighbor_cache_entry* %3, null, !dbg !2488
  br i1 %4, label %21, label %5, !dbg !2489

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %3, i64 0, i32 1, !dbg !2490
  %7 = load %struct.netif*, %struct.netif** %6, align 8, !dbg !2490, !tbaa !719
  %8 = icmp eq %struct.netif* %7, null, !dbg !2493
  br i1 %8, label %21, label %9, !dbg !2495

; <label>:9:                                      ; preds = %5
  br i1 %2, label %12, label %10, !dbg !2496

; <label>:10:                                     ; preds = %9
  %11 = icmp eq %struct.netif* %7, %0, !dbg !2497
  br i1 %11, label %17, label %21, !dbg !2498

; <label>:12:                                     ; preds = %9
  %13 = getelementptr inbounds %struct.netif, %struct.netif* %7, i64 0, i32 21, !dbg !2499
  %14 = load i8, i8* %13, align 1, !dbg !2499, !tbaa !2272
  %15 = and i8 %14, 5, !dbg !2500
  %16 = icmp eq i8 %15, 5, !dbg !2500
  br i1 %16, label %17, label %21, !dbg !2500

; <label>:17:                                     ; preds = %12, %10
  %18 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %3, i64 0, i32 4, !dbg !2501
  %19 = load i8, i8* %18, align 8, !dbg !2501, !tbaa !690
  switch i8 %19, label %20 [
    i8 1, label %21
    i8 2, label %57
  ], !dbg !2504

; <label>:20:                                     ; preds = %17
  br label %21, !dbg !2505

; <label>:21:                                     ; preds = %12, %20, %17, %5, %1, %10
  %22 = phi i8 [ -1, %17 ], [ -1, %10 ], [ -1, %12 ], [ -1, %5 ], [ -1, %1 ], [ 0, %20 ], !dbg !2508
  %23 = load %struct.nd6_neighbor_cache_entry*, %struct.nd6_neighbor_cache_entry** getelementptr inbounds ([3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 1, i32 0), align 16, !dbg !2483, !tbaa !922
  %24 = icmp eq %struct.nd6_neighbor_cache_entry* %23, null, !dbg !2488
  br i1 %24, label %110, label %92, !dbg !2489

; <label>:25:                                     ; preds = %132
  %26 = load i8, i8* @nd6_select_router.last_router, align 1, !dbg !2508, !tbaa !530
  br i1 %2, label %27, label %31, !dbg !2509

; <label>:27:                                     ; preds = %25
  %28 = add i8 %26, 1, !dbg !2511
  %29 = icmp sgt i8 %28, 2, !dbg !2512
  %30 = select i1 %29, i8 0, i8 %28, !dbg !2513
  store i8 %30, i8* @nd6_select_router.last_router, align 1, !dbg !2514
  br label %31, !dbg !2513

; <label>:31:                                     ; preds = %25, %27
  %32 = phi i8 [ %30, %27 ], [ %26, %25 ], !dbg !2516
  %33 = sext i8 %32 to i64, !dbg !2518
  %34 = getelementptr inbounds [3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 %33, i32 0, !dbg !2523
  %35 = load %struct.nd6_neighbor_cache_entry*, %struct.nd6_neighbor_cache_entry** %34, align 16, !dbg !2523, !tbaa !922
  %36 = icmp eq %struct.nd6_neighbor_cache_entry* %35, null, !dbg !2524
  br i1 %36, label %49, label %37, !dbg !2525

; <label>:37:                                     ; preds = %31
  %38 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %35, i64 0, i32 1, !dbg !2526
  %39 = load %struct.netif*, %struct.netif** %38, align 8, !dbg !2526, !tbaa !719
  %40 = icmp eq %struct.netif* %39, null, !dbg !2528
  br i1 %40, label %49, label %41, !dbg !2530

; <label>:41:                                     ; preds = %37
  br i1 %2, label %44, label %42, !dbg !2531

; <label>:42:                                     ; preds = %41
  %43 = icmp eq %struct.netif* %39, %0, !dbg !2532
  br i1 %43, label %57, label %49, !dbg !2533

; <label>:44:                                     ; preds = %41
  %45 = getelementptr inbounds %struct.netif, %struct.netif* %39, i64 0, i32 21, !dbg !2534
  %46 = load i8, i8* %45, align 1, !dbg !2534, !tbaa !2272
  %47 = and i8 %46, 5, !dbg !2535
  %48 = icmp eq i8 %47, 5, !dbg !2535
  br i1 %48, label %57, label %49, !dbg !2535

; <label>:49:                                     ; preds = %44, %37, %31, %42
  %50 = add i8 %32, 1, !dbg !2536
  %51 = icmp sgt i8 %50, 2, !dbg !2538
  %52 = select i1 %51, i8 0, i8 %50, !dbg !2539
  %53 = sext i8 %52 to i64, !dbg !2518
  %54 = getelementptr inbounds [3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 %53, i32 0, !dbg !2523
  %55 = load %struct.nd6_neighbor_cache_entry*, %struct.nd6_neighbor_cache_entry** %54, align 16, !dbg !2523, !tbaa !922
  %56 = icmp eq %struct.nd6_neighbor_cache_entry* %55, null, !dbg !2524
  br i1 %56, label %71, label %59, !dbg !2525

; <label>:57:                                     ; preds = %129, %17, %104, %126, %44, %42, %64, %66, %84, %86, %91, %132
  %58 = phi i8 [ %111, %132 ], [ %32, %44 ], [ %32, %42 ], [ %52, %64 ], [ %52, %66 ], [ %74, %84 ], [ %74, %86 ], [ -1, %91 ], [ 0, %17 ], [ 1, %104 ], [ %128, %126 ], [ %131, %129 ], !dbg !2508
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2540
  ret i8 %58, !dbg !2540

; <label>:59:                                     ; preds = %49
  %60 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %55, i64 0, i32 1, !dbg !2526
  %61 = load %struct.netif*, %struct.netif** %60, align 8, !dbg !2526, !tbaa !719
  %62 = icmp eq %struct.netif* %61, null, !dbg !2528
  br i1 %62, label %71, label %63, !dbg !2530

; <label>:63:                                     ; preds = %59
  br i1 %2, label %66, label %64, !dbg !2531

; <label>:64:                                     ; preds = %63
  %65 = icmp eq %struct.netif* %61, %0, !dbg !2532
  br i1 %65, label %57, label %71, !dbg !2533

; <label>:66:                                     ; preds = %63
  %67 = getelementptr inbounds %struct.netif, %struct.netif* %61, i64 0, i32 21, !dbg !2534
  %68 = load i8, i8* %67, align 1, !dbg !2534, !tbaa !2272
  %69 = and i8 %68, 5, !dbg !2535
  %70 = icmp eq i8 %69, 5, !dbg !2535
  br i1 %70, label %57, label %71, !dbg !2535

; <label>:71:                                     ; preds = %66, %64, %59, %49
  %72 = add i8 %52, 1, !dbg !2536
  %73 = icmp sgt i8 %72, 2, !dbg !2538
  %74 = select i1 %73, i8 0, i8 %72, !dbg !2539
  %75 = sext i8 %74 to i64, !dbg !2518
  %76 = getelementptr inbounds [3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 %75, i32 0, !dbg !2523
  %77 = load %struct.nd6_neighbor_cache_entry*, %struct.nd6_neighbor_cache_entry** %76, align 16, !dbg !2523, !tbaa !922
  %78 = icmp eq %struct.nd6_neighbor_cache_entry* %77, null, !dbg !2524
  br i1 %78, label %91, label %79, !dbg !2525

; <label>:79:                                     ; preds = %71
  %80 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %77, i64 0, i32 1, !dbg !2526
  %81 = load %struct.netif*, %struct.netif** %80, align 8, !dbg !2526, !tbaa !719
  %82 = icmp eq %struct.netif* %81, null, !dbg !2528
  br i1 %82, label %91, label %83, !dbg !2530

; <label>:83:                                     ; preds = %79
  br i1 %2, label %86, label %84, !dbg !2531

; <label>:84:                                     ; preds = %83
  %85 = icmp eq %struct.netif* %81, %0, !dbg !2532
  br i1 %85, label %57, label %91, !dbg !2533

; <label>:86:                                     ; preds = %83
  %87 = getelementptr inbounds %struct.netif, %struct.netif* %81, i64 0, i32 21, !dbg !2534
  %88 = load i8, i8* %87, align 1, !dbg !2534, !tbaa !2272
  %89 = and i8 %88, 5, !dbg !2535
  %90 = icmp eq i8 %89, 5, !dbg !2535
  br i1 %90, label %57, label %91, !dbg !2535

; <label>:91:                                     ; preds = %86, %84, %79, %71
  br label %57

; <label>:92:                                     ; preds = %21
  %93 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %23, i64 0, i32 1, !dbg !2490
  %94 = load %struct.netif*, %struct.netif** %93, align 8, !dbg !2490, !tbaa !719
  %95 = icmp eq %struct.netif* %94, null, !dbg !2493
  br i1 %95, label %110, label %96, !dbg !2495

; <label>:96:                                     ; preds = %92
  br i1 %2, label %99, label %97, !dbg !2496

; <label>:97:                                     ; preds = %96
  %98 = icmp eq %struct.netif* %94, %0, !dbg !2497
  br i1 %98, label %104, label %110, !dbg !2498

; <label>:99:                                     ; preds = %96
  %100 = getelementptr inbounds %struct.netif, %struct.netif* %94, i64 0, i32 21, !dbg !2499
  %101 = load i8, i8* %100, align 1, !dbg !2499, !tbaa !2272
  %102 = and i8 %101, 5, !dbg !2500
  %103 = icmp eq i8 %102, 5, !dbg !2500
  br i1 %103, label %104, label %110, !dbg !2500

; <label>:104:                                    ; preds = %99, %97
  %105 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %23, i64 0, i32 4, !dbg !2501
  %106 = load i8, i8* %105, align 8, !dbg !2501, !tbaa !690
  switch i8 %106, label %107 [
    i8 1, label %110
    i8 2, label %57
  ], !dbg !2504

; <label>:107:                                    ; preds = %104
  %108 = icmp slt i8 %22, 0, !dbg !2541
  %109 = select i1 %108, i8 1, i8 %22, !dbg !2505
  br label %110, !dbg !2505

; <label>:110:                                    ; preds = %107, %104, %99, %97, %92, %21
  %111 = phi i8 [ %22, %104 ], [ %22, %97 ], [ %22, %99 ], [ %22, %92 ], [ %22, %21 ], [ %109, %107 ], !dbg !2508
  %112 = load %struct.nd6_neighbor_cache_entry*, %struct.nd6_neighbor_cache_entry** getelementptr inbounds ([3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 2, i32 0), align 16, !dbg !2483, !tbaa !922
  %113 = icmp eq %struct.nd6_neighbor_cache_entry* %112, null, !dbg !2488
  br i1 %113, label %132, label %114, !dbg !2489

; <label>:114:                                    ; preds = %110
  %115 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %112, i64 0, i32 1, !dbg !2490
  %116 = load %struct.netif*, %struct.netif** %115, align 8, !dbg !2490, !tbaa !719
  %117 = icmp eq %struct.netif* %116, null, !dbg !2493
  br i1 %117, label %132, label %118, !dbg !2495

; <label>:118:                                    ; preds = %114
  br i1 %2, label %121, label %119, !dbg !2496

; <label>:119:                                    ; preds = %118
  %120 = icmp eq %struct.netif* %116, %0, !dbg !2497
  br i1 %120, label %126, label %132, !dbg !2498

; <label>:121:                                    ; preds = %118
  %122 = getelementptr inbounds %struct.netif, %struct.netif* %116, i64 0, i32 21, !dbg !2499
  %123 = load i8, i8* %122, align 1, !dbg !2499, !tbaa !2272
  %124 = and i8 %123, 5, !dbg !2500
  %125 = icmp eq i8 %124, 5, !dbg !2500
  br i1 %125, label %126, label %132, !dbg !2500

; <label>:126:                                    ; preds = %121, %119
  %127 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %112, i64 0, i32 4, !dbg !2501
  %128 = load i8, i8* %127, align 8, !dbg !2501, !tbaa !690
  switch i8 %128, label %129 [
    i8 1, label %132
    i8 2, label %57
  ], !dbg !2504

; <label>:129:                                    ; preds = %126
  %130 = icmp slt i8 %111, 0, !dbg !2541
  %131 = select i1 %130, i8 2, i8 %111
  br label %57

; <label>:132:                                    ; preds = %126, %121, %119, %114, %110
  %133 = icmp sgt i8 %111, -1, !dbg !2543
  br i1 %133, label %57, label %25, !dbg !2545
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @nd6_get_next_hop_addr_or_queue(%struct.netif*, %struct.pbuf*, %struct.ip6_addr* readonly, i8** nocapture) local_unnamed_addr #0 !dbg !2546 {
  %5 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %2, i64 0, i32 0, i64 0, !dbg !2571
  %6 = load i32, i32* %5, align 4, !dbg !2571, !tbaa !547
  %7 = load i8, i8* @nd6_cached_destination_index, align 1, !dbg !2571, !tbaa !530
  %8 = zext i8 %7 to i64, !dbg !2571
  %9 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %8, i32 0, i32 0, i64 0, !dbg !2571
  %10 = load i32, i32* %9, align 16, !dbg !2571, !tbaa !547
  %11 = icmp eq i32 %6, %10, !dbg !2571
  %12 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %2, i64 0, i32 0, i64 1
  br i1 %11, label %13, label %39, !dbg !2571

; <label>:13:                                     ; preds = %4
  %14 = load i32, i32* %12, align 4, !dbg !2571, !tbaa !547
  %15 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %8, i32 0, i32 0, i64 1, !dbg !2571
  %16 = load i32, i32* %15, align 4, !dbg !2571, !tbaa !547
  %17 = icmp eq i32 %14, %16, !dbg !2571
  br i1 %17, label %18, label %39, !dbg !2571

; <label>:18:                                     ; preds = %13
  %19 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %2, i64 0, i32 0, i64 2, !dbg !2571
  %20 = load i32, i32* %19, align 4, !dbg !2571, !tbaa !547
  %21 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %8, i32 0, i32 0, i64 2, !dbg !2571
  %22 = load i32, i32* %21, align 8, !dbg !2571, !tbaa !547
  %23 = icmp eq i32 %20, %22, !dbg !2571
  br i1 %23, label %24, label %39, !dbg !2571

; <label>:24:                                     ; preds = %18
  %25 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %2, i64 0, i32 0, i64 3, !dbg !2571
  %26 = load i32, i32* %25, align 4, !dbg !2571, !tbaa !547
  %27 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %8, i32 0, i32 0, i64 3, !dbg !2571
  %28 = load i32, i32* %27, align 4, !dbg !2571, !tbaa !547
  %29 = icmp eq i32 %26, %28, !dbg !2571
  br i1 %29, label %30, label %39, !dbg !2571

; <label>:30:                                     ; preds = %24
  %31 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %2, i64 0, i32 1, !dbg !2571
  %32 = load i8, i8* %31, align 4, !dbg !2571, !tbaa !745
  %33 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %8, i32 0, i32 1, !dbg !2571
  %34 = load i8, i8* %33, align 16, !dbg !2571, !tbaa !1415
  %35 = icmp eq i8 %32, %34, !dbg !2571
  br i1 %35, label %36, label %39, !dbg !2573

; <label>:36:                                     ; preds = %30
  %37 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 11), align 2, !dbg !2574, !tbaa !2576
  %38 = add i16 %37, 1, !dbg !2574
  store i16 %38, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 11), align 2, !dbg !2574, !tbaa !2576
  br label %419, !dbg !2577

; <label>:39:                                     ; preds = %30, %24, %18, %13, %4
  %40 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %2, i64 0, i32 1, !dbg !2582
  %41 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %2, i64 0, i32 0, i64 2
  %42 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %2, i64 0, i32 0, i64 3
  br label %43, !dbg !2583

; <label>:43:                                     ; preds = %68, %39
  %44 = phi i64 [ 0, %39 ], [ %69, %68 ]
  %45 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %44, i32 0, i32 0, i64 0, !dbg !2582
  %46 = load i32, i32* %45, align 16, !dbg !2582, !tbaa !547
  %47 = icmp eq i32 %6, %46, !dbg !2582
  br i1 %47, label %48, label %68, !dbg !2582

; <label>:48:                                     ; preds = %43
  %49 = load i32, i32* %12, align 4, !dbg !2582, !tbaa !547
  %50 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %44, i32 0, i32 0, i64 1, !dbg !2582
  %51 = load i32, i32* %50, align 4, !dbg !2582, !tbaa !547
  %52 = icmp eq i32 %49, %51, !dbg !2582
  br i1 %52, label %53, label %68, !dbg !2582

; <label>:53:                                     ; preds = %48
  %54 = load i32, i32* %41, align 4, !dbg !2582, !tbaa !547
  %55 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %44, i32 0, i32 0, i64 2, !dbg !2582
  %56 = load i32, i32* %55, align 8, !dbg !2582, !tbaa !547
  %57 = icmp eq i32 %54, %56, !dbg !2582
  br i1 %57, label %58, label %68, !dbg !2582

; <label>:58:                                     ; preds = %53
  %59 = load i32, i32* %42, align 4, !dbg !2582, !tbaa !547
  %60 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %44, i32 0, i32 0, i64 3, !dbg !2582
  %61 = load i32, i32* %60, align 4, !dbg !2582, !tbaa !547
  %62 = icmp eq i32 %59, %61, !dbg !2582
  br i1 %62, label %63, label %68, !dbg !2582

; <label>:63:                                     ; preds = %58
  %64 = load i8, i8* %40, align 4, !dbg !2582, !tbaa !745
  %65 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %44, i32 0, i32 1, !dbg !2582
  %66 = load i8, i8* %65, align 16, !dbg !2582, !tbaa !1415
  %67 = icmp eq i8 %64, %66, !dbg !2582
  br i1 %67, label %71, label %68, !dbg !2584

; <label>:68:                                     ; preds = %63, %58, %53, %48, %43
  %69 = add nuw nsw i64 %44, 1, !dbg !2585
  %70 = icmp ult i64 %69, 10, !dbg !2586
  br i1 %70, label %43, label %78, !dbg !2583, !llvm.loop !1420

; <label>:71:                                     ; preds = %63
  %72 = trunc i64 %44 to i16, !dbg !2584
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2587
  %73 = icmp ult i16 %72, 127, !dbg !2589
  br i1 %73, label %75, label %74, !dbg !2594

; <label>:74:                                     ; preds = %71
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0)) #7, !dbg !2595
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2598
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2598
  unreachable, !dbg !2598

; <label>:75:                                     ; preds = %71
  %76 = trunc i64 %44 to i8, !dbg !2602
  store i8 %76, i8* @nd6_cached_destination_index, align 1, !dbg !2603, !tbaa !530
  %77 = and i64 %44, 255, !dbg !2604
  br label %419, !dbg !2606

; <label>:78:                                     ; preds = %68
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2587
  %79 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 0, i32 0, i32 0, i64 0), align 16, !dbg !2617, !tbaa !547
  %80 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 0, i32 0, i32 0, i64 1), align 4, !dbg !2617
  %81 = or i32 %80, %79, !dbg !2617
  %82 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 0, i32 0, i32 0, i64 2), align 8, !dbg !2617
  %83 = or i32 %81, %82, !dbg !2617
  %84 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 0, i32 0, i32 0, i64 3), align 4, !dbg !2617
  %85 = or i32 %83, %84, !dbg !2617
  %86 = icmp eq i32 %85, 0, !dbg !2617
  br i1 %86, label %199, label %87, !dbg !2617

; <label>:87:                                     ; preds = %78
  %88 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 1, i32 0, i32 0, i64 0), align 16, !dbg !2617, !tbaa !547
  %89 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 1, i32 0, i32 0, i64 1), align 4, !dbg !2617
  %90 = or i32 %89, %88, !dbg !2617
  %91 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 1, i32 0, i32 0, i64 2), align 8, !dbg !2617
  %92 = or i32 %90, %91, !dbg !2617
  %93 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 1, i32 0, i32 0, i64 3), align 4, !dbg !2617
  %94 = or i32 %92, %93, !dbg !2617
  %95 = icmp eq i32 %94, 0, !dbg !2617
  br i1 %95, label %199, label %96, !dbg !2617

; <label>:96:                                     ; preds = %87
  %97 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 2, i32 0, i32 0, i64 0), align 16, !dbg !2617, !tbaa !547
  %98 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 2, i32 0, i32 0, i64 1), align 4, !dbg !2617
  %99 = or i32 %98, %97, !dbg !2617
  %100 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 2, i32 0, i32 0, i64 2), align 8, !dbg !2617
  %101 = or i32 %99, %100, !dbg !2617
  %102 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 2, i32 0, i32 0, i64 3), align 4, !dbg !2617
  %103 = or i32 %101, %102, !dbg !2617
  %104 = icmp eq i32 %103, 0, !dbg !2617
  br i1 %104, label %199, label %105, !dbg !2617

; <label>:105:                                    ; preds = %96
  %106 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 3, i32 0, i32 0, i64 0), align 16, !dbg !2617, !tbaa !547
  %107 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 3, i32 0, i32 0, i64 1), align 4, !dbg !2617
  %108 = or i32 %107, %106, !dbg !2617
  %109 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 3, i32 0, i32 0, i64 2), align 8, !dbg !2617
  %110 = or i32 %108, %109, !dbg !2617
  %111 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 3, i32 0, i32 0, i64 3), align 4, !dbg !2617
  %112 = or i32 %110, %111, !dbg !2617
  %113 = icmp eq i32 %112, 0, !dbg !2617
  br i1 %113, label %199, label %114, !dbg !2617

; <label>:114:                                    ; preds = %105
  %115 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 4, i32 0, i32 0, i64 0), align 16, !dbg !2617, !tbaa !547
  %116 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 4, i32 0, i32 0, i64 1), align 4, !dbg !2617
  %117 = or i32 %116, %115, !dbg !2617
  %118 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 4, i32 0, i32 0, i64 2), align 8, !dbg !2617
  %119 = or i32 %117, %118, !dbg !2617
  %120 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 4, i32 0, i32 0, i64 3), align 4, !dbg !2617
  %121 = or i32 %119, %120, !dbg !2617
  %122 = icmp eq i32 %121, 0, !dbg !2617
  br i1 %122, label %199, label %123, !dbg !2617

; <label>:123:                                    ; preds = %114
  %124 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 5, i32 0, i32 0, i64 0), align 16, !dbg !2617, !tbaa !547
  %125 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 5, i32 0, i32 0, i64 1), align 4, !dbg !2617
  %126 = or i32 %125, %124, !dbg !2617
  %127 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 5, i32 0, i32 0, i64 2), align 8, !dbg !2617
  %128 = or i32 %126, %127, !dbg !2617
  %129 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 5, i32 0, i32 0, i64 3), align 4, !dbg !2617
  %130 = or i32 %128, %129, !dbg !2617
  %131 = icmp eq i32 %130, 0, !dbg !2617
  br i1 %131, label %199, label %132, !dbg !2617

; <label>:132:                                    ; preds = %123
  %133 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 6, i32 0, i32 0, i64 0), align 16, !dbg !2617, !tbaa !547
  %134 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 6, i32 0, i32 0, i64 1), align 4, !dbg !2617
  %135 = or i32 %134, %133, !dbg !2617
  %136 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 6, i32 0, i32 0, i64 2), align 8, !dbg !2617
  %137 = or i32 %135, %136, !dbg !2617
  %138 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 6, i32 0, i32 0, i64 3), align 4, !dbg !2617
  %139 = or i32 %137, %138, !dbg !2617
  %140 = icmp eq i32 %139, 0, !dbg !2617
  br i1 %140, label %199, label %141, !dbg !2617

; <label>:141:                                    ; preds = %132
  %142 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 7, i32 0, i32 0, i64 0), align 16, !dbg !2617, !tbaa !547
  %143 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 7, i32 0, i32 0, i64 1), align 4, !dbg !2617
  %144 = or i32 %143, %142, !dbg !2617
  %145 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 7, i32 0, i32 0, i64 2), align 8, !dbg !2617
  %146 = or i32 %144, %145, !dbg !2617
  %147 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 7, i32 0, i32 0, i64 3), align 4, !dbg !2617
  %148 = or i32 %146, %147, !dbg !2617
  %149 = icmp eq i32 %148, 0, !dbg !2617
  br i1 %149, label %199, label %150, !dbg !2617

; <label>:150:                                    ; preds = %141
  %151 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 8, i32 0, i32 0, i64 0), align 16, !dbg !2617, !tbaa !547
  %152 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 8, i32 0, i32 0, i64 1), align 4, !dbg !2617
  %153 = or i32 %152, %151, !dbg !2617
  %154 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 8, i32 0, i32 0, i64 2), align 8, !dbg !2617
  %155 = or i32 %153, %154, !dbg !2617
  %156 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 8, i32 0, i32 0, i64 3), align 4, !dbg !2617
  %157 = or i32 %155, %156, !dbg !2617
  %158 = icmp eq i32 %157, 0, !dbg !2617
  br i1 %158, label %199, label %159, !dbg !2617

; <label>:159:                                    ; preds = %150
  %160 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 9, i32 0, i32 0, i64 0), align 16, !dbg !2617, !tbaa !547
  %161 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 9, i32 0, i32 0, i64 1), align 4, !dbg !2617
  %162 = or i32 %161, %160, !dbg !2617
  %163 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 9, i32 0, i32 0, i64 2), align 8, !dbg !2617
  %164 = or i32 %162, %163, !dbg !2617
  %165 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 9, i32 0, i32 0, i64 3), align 4, !dbg !2617
  %166 = or i32 %164, %165, !dbg !2617
  %167 = icmp eq i32 %166, 0, !dbg !2617
  br i1 %167, label %199, label %168, !dbg !2617

; <label>:168:                                    ; preds = %159
  %169 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 0, i32 3), align 4, !dbg !2623, !tbaa !2145
  %170 = icmp eq i32 %169, 0, !dbg !2628
  %171 = select i1 %170, i8 9, i8 0, !dbg !2629
  %172 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 1, i32 3), align 4, !dbg !2623, !tbaa !2145
  %173 = icmp eq i32 %172, 0, !dbg !2628
  %174 = select i1 %173, i8 %171, i8 1, !dbg !2629
  %175 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 2, i32 3), align 4, !dbg !2623, !tbaa !2145
  %176 = icmp eq i32 %175, 0, !dbg !2628
  %177 = select i1 %176, i8 %174, i8 2, !dbg !2629
  %178 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 3, i32 3), align 4, !dbg !2623, !tbaa !2145
  %179 = icmp eq i32 %178, 0, !dbg !2628
  %180 = select i1 %179, i8 %177, i8 3, !dbg !2629
  %181 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 4, i32 3), align 4, !dbg !2623, !tbaa !2145
  %182 = icmp eq i32 %181, 0, !dbg !2628
  %183 = select i1 %182, i8 %180, i8 4, !dbg !2629
  %184 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 5, i32 3), align 4, !dbg !2623, !tbaa !2145
  %185 = icmp eq i32 %184, 0, !dbg !2628
  %186 = select i1 %185, i8 %183, i8 5, !dbg !2629
  %187 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 6, i32 3), align 4, !dbg !2623, !tbaa !2145
  %188 = icmp eq i32 %187, 0, !dbg !2628
  %189 = select i1 %188, i8 %186, i8 6, !dbg !2629
  %190 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 7, i32 3), align 4, !dbg !2623, !tbaa !2145
  %191 = icmp eq i32 %190, 0, !dbg !2628
  %192 = select i1 %191, i8 %189, i8 7, !dbg !2629
  %193 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 8, i32 3), align 4, !dbg !2623, !tbaa !2145
  %194 = icmp eq i32 %193, 0, !dbg !2628
  %195 = select i1 %194, i8 %192, i8 8, !dbg !2629
  %196 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 9, i32 3), align 4, !dbg !2623, !tbaa !2145
  %197 = icmp eq i32 %196, 0, !dbg !2628
  %198 = select i1 %197, i8 %195, i8 9, !dbg !2629
  br label %199, !dbg !2630

; <label>:199:                                    ; preds = %168, %159, %150, %141, %132, %123, %114, %105, %96, %87, %78
  %200 = phi i8 [ %198, %168 ], [ 0, %78 ], [ 1, %87 ], [ 2, %96 ], [ 3, %105 ], [ 4, %114 ], [ 5, %123 ], [ 6, %132 ], [ 7, %141 ], [ 8, %150 ], [ 9, %159 ], !dbg !2631
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2630
  store i8 %200, i8* @nd6_cached_destination_index, align 1, !dbg !2632, !tbaa !530
  %201 = icmp eq %struct.ip6_addr* %2, null, !dbg !2635
  %202 = zext i8 %200 to i64, !dbg !2635
  %203 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %202, i32 0, i32 0, i64 0, !dbg !2635
  br i1 %201, label %204, label %208, !dbg !2635

; <label>:204:                                    ; preds = %199
  %205 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %202, i32 0, i32 0, i64 1, !dbg !2635
  %206 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %202, i32 0, i32 0, i64 3, !dbg !2635
  %207 = bitcast i32* %203 to <4 x i32>*, !dbg !2635
  store <4 x i32> zeroinitializer, <4 x i32>* %207, align 16, !dbg !2635, !tbaa !547
  br label %216, !dbg !2635

; <label>:208:                                    ; preds = %199
  store i32 %6, i32* %203, align 16, !dbg !2635, !tbaa !547
  %209 = load i32, i32* %12, align 4, !dbg !2635, !tbaa !547
  %210 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %202, i32 0, i32 0, i64 1, !dbg !2635
  store i32 %209, i32* %210, align 4, !dbg !2635, !tbaa !547
  %211 = load i32, i32* %41, align 4, !dbg !2635, !tbaa !547
  %212 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %202, i32 0, i32 0, i64 2, !dbg !2635
  store i32 %211, i32* %212, align 8, !dbg !2635, !tbaa !547
  %213 = load i32, i32* %42, align 4, !dbg !2635, !tbaa !547
  %214 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %202, i32 0, i32 0, i64 3, !dbg !2635
  store i32 %213, i32* %214, align 4, !dbg !2635, !tbaa !547
  %215 = load i8, i8* %40, align 4, !dbg !2635, !tbaa !745
  br label %216, !dbg !2635

; <label>:216:                                    ; preds = %208, %204
  %217 = phi i32 [ %211, %208 ], [ 0, %204 ]
  %218 = phi i32 [ %6, %208 ], [ 0, %204 ]
  %219 = phi i32* [ %214, %208 ], [ %206, %204 ]
  %220 = phi i32* [ %210, %208 ], [ %205, %204 ]
  %221 = phi i8 [ %215, %208 ], [ 0, %204 ]
  %222 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %202, i32 0, i32 1, !dbg !2635
  store i8 %221, i8* %222, align 16, !dbg !2635, !tbaa !1415
  %223 = load i32, i32* %5, align 4, !dbg !2637, !tbaa !547
  %224 = and i32 %223, 49407, !dbg !2637
  %225 = icmp eq i32 %224, 33022, !dbg !2637
  br i1 %225, label %381, label %226, !dbg !2639

; <label>:226:                                    ; preds = %216
  %227 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 0, i32 1), align 8, !dbg !2651, !tbaa !1195
  %228 = icmp eq %struct.netif* %227, %0, !dbg !2656
  %229 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 0, i32 2), align 16, !dbg !2657
  %230 = icmp ne i32 %229, 0, !dbg !2658
  %231 = and i1 %228, %230, !dbg !2659
  %232 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 0, i32 0, i32 0, i64 0), align 16, !dbg !2660
  %233 = icmp eq i32 %223, %232, !dbg !2660
  %234 = and i1 %231, %233, !dbg !2659
  br i1 %234, label %235, label %243, !dbg !2659

; <label>:235:                                    ; preds = %226
  %236 = load i32, i32* %12, align 4, !dbg !2660, !tbaa !547
  %237 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 0, i32 0, i32 0, i64 1), align 4, !dbg !2660, !tbaa !547
  %238 = icmp eq i32 %236, %237, !dbg !2660
  br i1 %238, label %239, label %243, !dbg !2660

; <label>:239:                                    ; preds = %235
  %240 = load i8, i8* %40, align 4, !dbg !2660, !tbaa !745
  %241 = load i8, i8* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 0, i32 0, i32 1), align 16, !dbg !2660, !tbaa !1170
  %242 = icmp eq i8 %240, %241, !dbg !2660
  br i1 %242, label %380, label %243, !dbg !2661

; <label>:243:                                    ; preds = %239, %235, %226
  %244 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 1, i32 1), align 8, !dbg !2651, !tbaa !1195
  %245 = icmp eq %struct.netif* %244, %0, !dbg !2656
  %246 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 1, i32 2), align 8, !dbg !2657
  %247 = icmp ne i32 %246, 0, !dbg !2658
  %248 = and i1 %245, %247, !dbg !2659
  %249 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 1, i32 0, i32 0, i64 0), align 8, !dbg !2660
  %250 = icmp eq i32 %223, %249, !dbg !2660
  %251 = and i1 %248, %250, !dbg !2659
  br i1 %251, label %316, label %324, !dbg !2659

; <label>:252:                                    ; preds = %375
  %253 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 6, i64 0, !dbg !2662
  %254 = load i32, i32* %253, align 4, !dbg !2662, !tbaa !547
  %255 = icmp eq i32 %254, 0, !dbg !2662
  br i1 %255, label %256, label %270, !dbg !2667

; <label>:256:                                    ; preds = %252
  %257 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !2668
  %258 = load i32, i32* %257, align 8, !dbg !2668, !tbaa !530
  %259 = icmp eq i32 %223, %258, !dbg !2668
  br i1 %259, label %260, label %270, !dbg !2668

; <label>:260:                                    ; preds = %256
  %261 = load i32, i32* %12, align 4, !dbg !2668, !tbaa !547
  %262 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !2668
  %263 = load i32, i32* %262, align 4, !dbg !2668, !tbaa !530
  %264 = icmp eq i32 %261, %263, !dbg !2668
  br i1 %264, label %265, label %270, !dbg !2668

; <label>:265:                                    ; preds = %260
  %266 = load i8, i8* %40, align 4, !dbg !2668, !tbaa !745
  %267 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, i32 1, !dbg !2668
  %268 = load i8, i8* %267, align 8, !dbg !2668, !tbaa !530
  %269 = icmp eq i8 %266, %268, !dbg !2668
  br i1 %269, label %380, label %270, !dbg !2669

; <label>:270:                                    ; preds = %375, %265, %260, %256, %252
  %271 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 1, !dbg !2670
  %272 = load i8, i8* %271, align 1, !dbg !2670, !tbaa !530
  %273 = and i8 %272, 16, !dbg !2670
  %274 = icmp eq i8 %273, 0, !dbg !2670
  br i1 %274, label %293, label %275, !dbg !2671

; <label>:275:                                    ; preds = %270
  %276 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 6, i64 1, !dbg !2662
  %277 = load i32, i32* %276, align 4, !dbg !2662, !tbaa !547
  %278 = icmp eq i32 %277, 0, !dbg !2662
  br i1 %278, label %279, label %293, !dbg !2667

; <label>:279:                                    ; preds = %275
  %280 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 0, !dbg !2668
  %281 = load i32, i32* %280, align 8, !dbg !2668, !tbaa !530
  %282 = icmp eq i32 %223, %281, !dbg !2668
  br i1 %282, label %283, label %293, !dbg !2668

; <label>:283:                                    ; preds = %279
  %284 = load i32, i32* %12, align 4, !dbg !2668, !tbaa !547
  %285 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 1, !dbg !2668
  %286 = load i32, i32* %285, align 4, !dbg !2668, !tbaa !530
  %287 = icmp eq i32 %284, %286, !dbg !2668
  br i1 %287, label %288, label %293, !dbg !2668

; <label>:288:                                    ; preds = %283
  %289 = load i8, i8* %40, align 4, !dbg !2668, !tbaa !745
  %290 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 1, i32 0, i32 0, i32 1, !dbg !2668
  %291 = load i8, i8* %290, align 8, !dbg !2668, !tbaa !530
  %292 = icmp eq i8 %289, %291, !dbg !2668
  br i1 %292, label %380, label %293, !dbg !2669

; <label>:293:                                    ; preds = %288, %283, %279, %275, %270
  %294 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 2, !dbg !2670
  %295 = load i8, i8* %294, align 1, !dbg !2670, !tbaa !530
  %296 = and i8 %295, 16, !dbg !2670
  %297 = icmp eq i8 %296, 0, !dbg !2670
  br i1 %297, label %392, label %298, !dbg !2671

; <label>:298:                                    ; preds = %293
  %299 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 6, i64 2, !dbg !2662
  %300 = load i32, i32* %299, align 4, !dbg !2662, !tbaa !547
  %301 = icmp eq i32 %300, 0, !dbg !2662
  br i1 %301, label %302, label %392, !dbg !2667

; <label>:302:                                    ; preds = %298
  %303 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 0, !dbg !2668
  %304 = load i32, i32* %303, align 8, !dbg !2668, !tbaa !530
  %305 = icmp eq i32 %223, %304, !dbg !2668
  br i1 %305, label %306, label %392, !dbg !2668

; <label>:306:                                    ; preds = %302
  %307 = load i32, i32* %12, align 4, !dbg !2668, !tbaa !547
  %308 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 1, !dbg !2668
  %309 = load i32, i32* %308, align 4, !dbg !2668, !tbaa !530
  %310 = icmp eq i32 %307, %309, !dbg !2668
  br i1 %310, label %311, label %392, !dbg !2668

; <label>:311:                                    ; preds = %306
  %312 = load i8, i8* %40, align 4, !dbg !2668, !tbaa !745
  %313 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 2, i32 0, i32 0, i32 1, !dbg !2668
  %314 = load i8, i8* %313, align 8, !dbg !2668, !tbaa !530
  %315 = icmp eq i8 %312, %314, !dbg !2668
  br i1 %315, label %380, label %392, !dbg !2669

; <label>:316:                                    ; preds = %243
  %317 = load i32, i32* %12, align 4, !dbg !2660, !tbaa !547
  %318 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 1, i32 0, i32 0, i64 1), align 4, !dbg !2660, !tbaa !547
  %319 = icmp eq i32 %317, %318, !dbg !2660
  br i1 %319, label %320, label %324, !dbg !2660

; <label>:320:                                    ; preds = %316
  %321 = load i8, i8* %40, align 4, !dbg !2660, !tbaa !745
  %322 = load i8, i8* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 1, i32 0, i32 1), align 8, !dbg !2660, !tbaa !1170
  %323 = icmp eq i8 %321, %322, !dbg !2660
  br i1 %323, label %380, label %324, !dbg !2661

; <label>:324:                                    ; preds = %320, %316, %243
  %325 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 2, i32 1), align 8, !dbg !2651, !tbaa !1195
  %326 = icmp eq %struct.netif* %325, %0, !dbg !2656
  %327 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 2, i32 2), align 16, !dbg !2657
  %328 = icmp ne i32 %327, 0, !dbg !2658
  %329 = and i1 %326, %328, !dbg !2659
  %330 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 2, i32 0, i32 0, i64 0), align 16, !dbg !2660
  %331 = icmp eq i32 %223, %330, !dbg !2660
  %332 = and i1 %329, %331, !dbg !2659
  br i1 %332, label %333, label %341, !dbg !2659

; <label>:333:                                    ; preds = %324
  %334 = load i32, i32* %12, align 4, !dbg !2660, !tbaa !547
  %335 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 2, i32 0, i32 0, i64 1), align 4, !dbg !2660, !tbaa !547
  %336 = icmp eq i32 %334, %335, !dbg !2660
  br i1 %336, label %337, label %341, !dbg !2660

; <label>:337:                                    ; preds = %333
  %338 = load i8, i8* %40, align 4, !dbg !2660, !tbaa !745
  %339 = load i8, i8* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 2, i32 0, i32 1), align 16, !dbg !2660, !tbaa !1170
  %340 = icmp eq i8 %338, %339, !dbg !2660
  br i1 %340, label %380, label %341, !dbg !2661

; <label>:341:                                    ; preds = %337, %333, %324
  %342 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 3, i32 1), align 8, !dbg !2651, !tbaa !1195
  %343 = icmp eq %struct.netif* %342, %0, !dbg !2656
  %344 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 3, i32 2), align 8, !dbg !2657
  %345 = icmp ne i32 %344, 0, !dbg !2658
  %346 = and i1 %343, %345, !dbg !2659
  %347 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 3, i32 0, i32 0, i64 0), align 8, !dbg !2660
  %348 = icmp eq i32 %223, %347, !dbg !2660
  %349 = and i1 %346, %348, !dbg !2659
  br i1 %349, label %350, label %358, !dbg !2659

; <label>:350:                                    ; preds = %341
  %351 = load i32, i32* %12, align 4, !dbg !2660, !tbaa !547
  %352 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 3, i32 0, i32 0, i64 1), align 4, !dbg !2660, !tbaa !547
  %353 = icmp eq i32 %351, %352, !dbg !2660
  br i1 %353, label %354, label %358, !dbg !2660

; <label>:354:                                    ; preds = %350
  %355 = load i8, i8* %40, align 4, !dbg !2660, !tbaa !745
  %356 = load i8, i8* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 3, i32 0, i32 1), align 8, !dbg !2660, !tbaa !1170
  %357 = icmp eq i8 %355, %356, !dbg !2660
  br i1 %357, label %380, label %358, !dbg !2661

; <label>:358:                                    ; preds = %354, %350, %341
  %359 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 4, i32 1), align 8, !dbg !2651, !tbaa !1195
  %360 = icmp eq %struct.netif* %359, %0, !dbg !2656
  %361 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 4, i32 2), align 16, !dbg !2657
  %362 = icmp ne i32 %361, 0, !dbg !2658
  %363 = and i1 %360, %362, !dbg !2659
  %364 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 4, i32 0, i32 0, i64 0), align 16, !dbg !2660
  %365 = icmp eq i32 %223, %364, !dbg !2660
  %366 = and i1 %363, %365, !dbg !2659
  br i1 %366, label %367, label %375, !dbg !2659

; <label>:367:                                    ; preds = %358
  %368 = load i32, i32* %12, align 4, !dbg !2660, !tbaa !547
  %369 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 4, i32 0, i32 0, i64 1), align 4, !dbg !2660, !tbaa !547
  %370 = icmp eq i32 %368, %369, !dbg !2660
  br i1 %370, label %371, label %375, !dbg !2660

; <label>:371:                                    ; preds = %367
  %372 = load i8, i8* %40, align 4, !dbg !2660, !tbaa !745
  %373 = load i8, i8* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 4, i32 0, i32 1), align 16, !dbg !2660, !tbaa !1170
  %374 = icmp eq i8 %372, %373, !dbg !2660
  br i1 %374, label %380, label %375, !dbg !2661

; <label>:375:                                    ; preds = %371, %367, %358
  %376 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 0, !dbg !2670
  %377 = load i8, i8* %376, align 1, !dbg !2670, !tbaa !530
  %378 = and i8 %377, 16, !dbg !2670
  %379 = icmp eq i8 %378, 0, !dbg !2670
  br i1 %379, label %270, label %252, !dbg !2671

; <label>:380:                                    ; preds = %371, %354, %337, %320, %311, %288, %265, %239
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2672
  br label %381, !dbg !2673

; <label>:381:                                    ; preds = %380, %216
  %382 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 18, !dbg !2674
  %383 = load i16, i16* %382, align 4, !dbg !2674, !tbaa !1130
  %384 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %202, i32 2, !dbg !2676
  store i16 %383, i16* %384, align 8, !dbg !2677, !tbaa !1522
  %385 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %202, i32 1, i32 0, i64 0, !dbg !2678
  store i32 %218, i32* %385, align 4, !dbg !2678, !tbaa !547
  %386 = load i32, i32* %220, align 4, !dbg !2678, !tbaa !547
  %387 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %202, i32 1, i32 0, i64 1, !dbg !2678
  store i32 %386, i32* %387, align 4, !dbg !2678, !tbaa !547
  %388 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %202, i32 1, i32 0, i64 2, !dbg !2678
  store i32 %217, i32* %388, align 4, !dbg !2678, !tbaa !547
  %389 = load i32, i32* %219, align 4, !dbg !2678, !tbaa !547
  %390 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %202, i32 1, i32 0, i64 3, !dbg !2678
  store i32 %389, i32* %390, align 4, !dbg !2678, !tbaa !547
  %391 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %202, i32 1, i32 1, !dbg !2678
  store i8 %221, i8* %391, align 4, !dbg !2678, !tbaa !1435
  br label %419, !dbg !2680

; <label>:392:                                    ; preds = %311, %306, %302, %298, %293
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2672
  %393 = tail call fastcc signext i8 @nd6_select_router(%struct.netif* nonnull %0) #7, !dbg !2681
  %394 = icmp slt i8 %393, 0, !dbg !2684
  br i1 %394, label %395, label %397, !dbg !2686

; <label>:395:                                    ; preds = %392
  store i32 0, i32* %203, align 16, !dbg !2687, !tbaa !547
  store i32 0, i32* %220, align 4, !dbg !2687, !tbaa !547
  %396 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %202, i32 0, i32 0, i64 2, !dbg !2687
  store i32 0, i32* %396, align 8, !dbg !2687, !tbaa !547
  store i32 0, i32* %219, align 4, !dbg !2687, !tbaa !547
  store i8 0, i8* %222, align 16, !dbg !2687, !tbaa !1415
  br label %513, !dbg !2690

; <label>:397:                                    ; preds = %392
  %398 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 18, !dbg !2691
  %399 = load i16, i16* %398, align 4, !dbg !2691, !tbaa !1130
  %400 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %202, i32 2, !dbg !2692
  store i16 %399, i16* %400, align 8, !dbg !2693, !tbaa !1522
  %401 = sext i8 %393 to i64, !dbg !2694
  %402 = getelementptr inbounds [3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 %401, i32 0, !dbg !2694
  %403 = load %struct.nd6_neighbor_cache_entry*, %struct.nd6_neighbor_cache_entry** %402, align 16, !dbg !2694, !tbaa !922
  %404 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %403, i64 0, i32 0, i32 0, i64 0, !dbg !2694
  %405 = load i32, i32* %404, align 8, !dbg !2694, !tbaa !547
  %406 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %202, i32 1, i32 0, i64 0, !dbg !2694
  store i32 %405, i32* %406, align 4, !dbg !2694, !tbaa !547
  %407 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %403, i64 0, i32 0, i32 0, i64 1, !dbg !2694
  %408 = load i32, i32* %407, align 4, !dbg !2694, !tbaa !547
  %409 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %202, i32 1, i32 0, i64 1, !dbg !2694
  store i32 %408, i32* %409, align 4, !dbg !2694, !tbaa !547
  %410 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %403, i64 0, i32 0, i32 0, i64 2, !dbg !2694
  %411 = load i32, i32* %410, align 8, !dbg !2694, !tbaa !547
  %412 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %202, i32 1, i32 0, i64 2, !dbg !2694
  store i32 %411, i32* %412, align 4, !dbg !2694, !tbaa !547
  %413 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %403, i64 0, i32 0, i32 0, i64 3, !dbg !2694
  %414 = load i32, i32* %413, align 4, !dbg !2694, !tbaa !547
  %415 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %202, i32 1, i32 0, i64 3, !dbg !2694
  store i32 %414, i32* %415, align 4, !dbg !2694, !tbaa !547
  %416 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %403, i64 0, i32 0, i32 1, !dbg !2694
  %417 = load i8, i8* %416, align 8, !dbg !2694, !tbaa !648
  %418 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %202, i32 1, i32 1, !dbg !2694
  store i8 %417, i8* %418, align 4, !dbg !2694, !tbaa !1435
  br label %419

; <label>:419:                                    ; preds = %397, %381, %75, %36
  %420 = phi i64 [ %77, %75 ], [ %202, %397 ], [ %202, %381 ], [ %8, %36 ], !dbg !2604
  %421 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %420, i32 1, i32 0, i64 0, !dbg !2604
  %422 = load i32, i32* %421, align 4, !dbg !2604, !tbaa !547
  %423 = load i8, i8* @nd6_cached_neighbor_index, align 1, !dbg !2604, !tbaa !530
  %424 = zext i8 %423 to i64, !dbg !2604
  %425 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %424, i32 0, i32 0, i64 0, !dbg !2604
  %426 = load i32, i32* %425, align 8, !dbg !2604, !tbaa !547
  %427 = icmp eq i32 %422, %426, !dbg !2604
  %428 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %420, i32 1, i32 0, i64 1
  br i1 %427, label %429, label %455, !dbg !2604

; <label>:429:                                    ; preds = %419
  %430 = load i32, i32* %428, align 4, !dbg !2604, !tbaa !547
  %431 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %424, i32 0, i32 0, i64 1, !dbg !2604
  %432 = load i32, i32* %431, align 4, !dbg !2604, !tbaa !547
  %433 = icmp eq i32 %430, %432, !dbg !2604
  br i1 %433, label %434, label %455, !dbg !2604

; <label>:434:                                    ; preds = %429
  %435 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %420, i32 1, i32 0, i64 2, !dbg !2604
  %436 = load i32, i32* %435, align 4, !dbg !2604, !tbaa !547
  %437 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %424, i32 0, i32 0, i64 2, !dbg !2604
  %438 = load i32, i32* %437, align 8, !dbg !2604, !tbaa !547
  %439 = icmp eq i32 %436, %438, !dbg !2604
  br i1 %439, label %440, label %455, !dbg !2604

; <label>:440:                                    ; preds = %434
  %441 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %420, i32 1, i32 0, i64 3, !dbg !2604
  %442 = load i32, i32* %441, align 4, !dbg !2604, !tbaa !547
  %443 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %424, i32 0, i32 0, i64 3, !dbg !2604
  %444 = load i32, i32* %443, align 4, !dbg !2604, !tbaa !547
  %445 = icmp eq i32 %442, %444, !dbg !2604
  br i1 %445, label %446, label %455, !dbg !2604

; <label>:446:                                    ; preds = %440
  %447 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %420, i32 1, i32 1, !dbg !2604
  %448 = load i8, i8* %447, align 4, !dbg !2604, !tbaa !1435
  %449 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %424, i32 0, i32 1, !dbg !2604
  %450 = load i8, i8* %449, align 8, !dbg !2604, !tbaa !648
  %451 = icmp eq i8 %448, %450, !dbg !2604
  br i1 %451, label %452, label %455, !dbg !2696

; <label>:452:                                    ; preds = %446
  %453 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 11), align 2, !dbg !2697, !tbaa !2576
  %454 = add i16 %453, 1, !dbg !2697
  store i16 %454, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 11), align 2, !dbg !2697, !tbaa !2576
  br label %515, !dbg !2699

; <label>:455:                                    ; preds = %446, %440, %434, %429, %419
  %456 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %420, i32 1, i32 1, !dbg !2703
  %457 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %420, i32 1, i32 0, i64 2
  %458 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %420, i32 1, i32 0, i64 3
  br label %459, !dbg !2704

; <label>:459:                                    ; preds = %484, %455
  %460 = phi i64 [ 0, %455 ], [ %485, %484 ]
  %461 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %460, i32 0, i32 0, i64 0, !dbg !2703
  %462 = load i32, i32* %461, align 8, !dbg !2703, !tbaa !547
  %463 = icmp eq i32 %422, %462, !dbg !2703
  br i1 %463, label %464, label %484, !dbg !2703

; <label>:464:                                    ; preds = %459
  %465 = load i32, i32* %428, align 4, !dbg !2703, !tbaa !547
  %466 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %460, i32 0, i32 0, i64 1, !dbg !2703
  %467 = load i32, i32* %466, align 4, !dbg !2703, !tbaa !547
  %468 = icmp eq i32 %465, %467, !dbg !2703
  br i1 %468, label %469, label %484, !dbg !2703

; <label>:469:                                    ; preds = %464
  %470 = load i32, i32* %457, align 4, !dbg !2703, !tbaa !547
  %471 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %460, i32 0, i32 0, i64 2, !dbg !2703
  %472 = load i32, i32* %471, align 8, !dbg !2703, !tbaa !547
  %473 = icmp eq i32 %470, %472, !dbg !2703
  br i1 %473, label %474, label %484, !dbg !2703

; <label>:474:                                    ; preds = %469
  %475 = load i32, i32* %458, align 4, !dbg !2703, !tbaa !547
  %476 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %460, i32 0, i32 0, i64 3, !dbg !2703
  %477 = load i32, i32* %476, align 4, !dbg !2703, !tbaa !547
  %478 = icmp eq i32 %475, %477, !dbg !2703
  br i1 %478, label %479, label %484, !dbg !2703

; <label>:479:                                    ; preds = %474
  %480 = load i8, i8* %456, align 4, !dbg !2703, !tbaa !745
  %481 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %460, i32 0, i32 1, !dbg !2703
  %482 = load i8, i8* %481, align 8, !dbg !2703, !tbaa !648
  %483 = icmp eq i8 %480, %482, !dbg !2703
  br i1 %483, label %487, label %484, !dbg !2705

; <label>:484:                                    ; preds = %479, %474, %469, %464, %459
  %485 = add nuw nsw i64 %460, 1, !dbg !2706
  %486 = icmp ult i64 %485, 10, !dbg !2707
  br i1 %486, label %459, label %490, !dbg !2704, !llvm.loop !655

; <label>:487:                                    ; preds = %479
  %488 = trunc i64 %460 to i8, !dbg !2705
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2708
  store i8 %488, i8* @nd6_cached_neighbor_index, align 1, !dbg !2709, !tbaa !530
  %489 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %420, i32 3, !dbg !2712
  store i32 0, i32* %489, align 4, !dbg !2713, !tbaa !2145
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2714
  br label %520, !dbg !2716

; <label>:490:                                    ; preds = %484
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2708
  %491 = tail call fastcc signext i8 @nd6_new_neighbor_cache_entry() #7, !dbg !2717
  %492 = icmp sgt i8 %491, -1, !dbg !2719
  br i1 %492, label %493, label %513, !dbg !2721

; <label>:493:                                    ; preds = %490
  store i8 %491, i8* @nd6_cached_neighbor_index, align 1, !dbg !2722, !tbaa !530
  %494 = load i8, i8* @nd6_cached_destination_index, align 1, !dbg !2724, !tbaa !530
  %495 = zext i8 %494 to i64, !dbg !2724
  %496 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %495, i32 1, i32 0, i64 0, !dbg !2724
  %497 = sext i8 %491 to i64, !dbg !2724
  %498 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %497, !dbg !2724
  %499 = bitcast i32* %496 to <4 x i32>*, !dbg !2724
  %500 = load <4 x i32>, <4 x i32>* %499, align 4, !dbg !2724, !tbaa !547
  %501 = bitcast %struct.nd6_neighbor_cache_entry* %498 to <4 x i32>*, !dbg !2724
  store <4 x i32> %500, <4 x i32>* %501, align 8, !dbg !2724, !tbaa !547
  %502 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %495, i32 1, i32 1, !dbg !2724
  %503 = load i8, i8* %502, align 4, !dbg !2724, !tbaa !1435
  %504 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %497, i32 0, i32 1, !dbg !2724
  store i8 %503, i8* %504, align 8, !dbg !2724, !tbaa !648
  %505 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %497, i32 5, !dbg !2726
  store i8 0, i8* %505, align 1, !dbg !2727, !tbaa !992
  %506 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %497, i32 1, !dbg !2728
  store %struct.netif* %0, %struct.netif** %506, align 8, !dbg !2729, !tbaa !719
  %507 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %497, i32 4, !dbg !2730
  store i8 1, i8* %507, align 8, !dbg !2731, !tbaa !690
  %508 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %497, i32 6, i32 0, !dbg !2732
  store i32 1, i32* %508, align 4, !dbg !2733, !tbaa !530
  %509 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %498, i64 0, i32 0, !dbg !2737
  tail call fastcc void @nd6_send_ns(%struct.netif* %0, %struct.ip6_addr* nonnull %509, i8 zeroext 1) #7, !dbg !2738
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2739
  %510 = load i8, i8* @nd6_cached_destination_index, align 1, !dbg !2740, !tbaa !530
  %511 = load i8, i8* @nd6_cached_neighbor_index, align 1, !dbg !2741, !tbaa !530
  %512 = zext i8 %510 to i64, !dbg !2742
  br label %515

; <label>:513:                                    ; preds = %395, %490
  %514 = phi i8 [ -1, %490 ], [ -4, %395 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2714
  br label %597, !dbg !2716

; <label>:515:                                    ; preds = %452, %493
  %516 = phi i64 [ %512, %493 ], [ %420, %452 ], !dbg !2742
  %517 = phi i8 [ %511, %493 ], [ %423, %452 ], !dbg !2741
  %518 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %516, i32 3, !dbg !2712
  store i32 0, i32* %518, align 4, !dbg !2713, !tbaa !2145
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2714
  %519 = icmp slt i8 %517, 0, !dbg !2743
  br i1 %519, label %597, label %520, !dbg !2716

; <label>:520:                                    ; preds = %487, %515
  %521 = phi i8 [ %488, %487 ], [ %517, %515 ]
  %522 = sext i8 %521 to i64, !dbg !2745
  %523 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %522, i32 4, !dbg !2747
  %524 = load i8, i8* %523, align 8, !dbg !2747, !tbaa !690
  switch i8 %524, label %529 [
    i8 3, label %525
    i8 2, label %527
    i8 4, label %527
    i8 5, label %527
  ], !dbg !2748

; <label>:525:                                    ; preds = %520
  store i8 4, i8* %523, align 8, !dbg !2749, !tbaa !690
  %526 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %522, i32 6, i32 0, !dbg !2751
  store i32 5, i32* %526, align 4, !dbg !2752, !tbaa !530
  br label %527, !dbg !2753

; <label>:527:                                    ; preds = %520, %520, %520, %525
  %528 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %522, i32 2, i64 0, !dbg !2755
  store i8* %528, i8** %3, align 8, !dbg !2757, !tbaa !2287
  br label %597, !dbg !2758

; <label>:529:                                    ; preds = %520
  store i8* null, i8** %3, align 8, !dbg !2759, !tbaa !2287
  %530 = icmp ugt i8 %521, 9, !dbg !2776
  br i1 %530, label %595, label %531, !dbg !2776

; <label>:531:                                    ; preds = %529
  %532 = icmp eq %struct.pbuf* %1, null, !dbg !2779
  br i1 %532, label %533, label %534, !dbg !2779

; <label>:533:                                    ; preds = %531
  tail call void @pbuf_ref(%struct.pbuf* null) #7, !dbg !2780
  br label %595, !dbg !2783

; <label>:534:                                    ; preds = %531, %540
  %535 = phi %struct.pbuf* [ %542, %540 ], [ %1, %531 ]
  %536 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %535, i64 0, i32 4, !dbg !2784
  %537 = load i8, i8* %536, align 4, !dbg !2784, !tbaa !2787
  %538 = and i8 %537, 64, !dbg !2784
  %539 = icmp eq i8 %538, 0, !dbg !2784
  br i1 %539, label %540, label %544, !dbg !2788

; <label>:540:                                    ; preds = %534
  %541 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %535, i64 0, i32 0, !dbg !2789
  %542 = load %struct.pbuf*, %struct.pbuf** %541, align 8, !dbg !2789, !tbaa !2790
  %543 = icmp eq %struct.pbuf* %542, null, !dbg !2779
  br i1 %543, label %559, label %534, !dbg !2779, !llvm.loop !2791

; <label>:544:                                    ; preds = %534
  %545 = tail call %struct.pbuf* @pbuf_clone(i32 14, i32 640, %struct.pbuf* nonnull %1) #7, !dbg !2794
  %546 = icmp eq %struct.pbuf* %545, null, !dbg !2796
  br i1 %546, label %547, label %560, !dbg !2797

; <label>:547:                                    ; preds = %544
  %548 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %522, i32 3
  %549 = bitcast %struct.nd6_q_entry** %548 to i64*
  br label %550, !dbg !2797

; <label>:550:                                    ; preds = %553, %547
  %551 = load %struct.nd6_q_entry*, %struct.nd6_q_entry** %548, align 8, !dbg !2798, !tbaa !726
  %552 = icmp eq %struct.nd6_q_entry* %551, null, !dbg !2799
  br i1 %552, label %595, label %553, !dbg !2800

; <label>:553:                                    ; preds = %550
  %554 = getelementptr inbounds %struct.nd6_q_entry, %struct.nd6_q_entry* %551, i64 0, i32 0, !dbg !2802
  %555 = bitcast %struct.nd6_q_entry* %551 to i64*, !dbg !2802
  %556 = load i64, i64* %555, align 8, !dbg !2802, !tbaa !1556
  store i64 %556, i64* %549, align 8, !dbg !2804, !tbaa !726
  store %struct.nd6_q_entry* null, %struct.nd6_q_entry** %554, align 8, !dbg !2805, !tbaa !1556
  tail call fastcc void @nd6_free_q(%struct.nd6_q_entry* nonnull %551) #7, !dbg !2806
  %557 = tail call %struct.pbuf* @pbuf_clone(i32 14, i32 640, %struct.pbuf* nonnull %1) #7, !dbg !2807
  %558 = icmp eq %struct.pbuf* %557, null, !dbg !2796
  br i1 %558, label %550, label %560, !dbg !2797, !llvm.loop !2808

; <label>:559:                                    ; preds = %540
  tail call void @pbuf_ref(%struct.pbuf* nonnull %1) #7, !dbg !2780
  br label %560, !dbg !2783

; <label>:560:                                    ; preds = %553, %559, %544
  %561 = phi %struct.pbuf* [ %1, %559 ], [ %545, %544 ], [ %557, %553 ]
  %562 = tail call i8* @memp_malloc(i32 12) #7, !dbg !2811
  %563 = bitcast i8* %562 to %struct.nd6_q_entry*, !dbg !2814
  %564 = icmp eq i8* %562, null, !dbg !2816
  br i1 %564, label %565, label %576, !dbg !2818

; <label>:565:                                    ; preds = %560
  %566 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %522, i32 3, !dbg !2819
  %567 = load %struct.nd6_q_entry*, %struct.nd6_q_entry** %566, align 8, !dbg !2819, !tbaa !726
  %568 = icmp eq %struct.nd6_q_entry* %567, null, !dbg !2820
  br i1 %568, label %576, label %569, !dbg !2821

; <label>:569:                                    ; preds = %565
  %570 = getelementptr inbounds %struct.nd6_q_entry, %struct.nd6_q_entry* %567, i64 0, i32 0, !dbg !2822
  %571 = bitcast %struct.nd6_q_entry* %567 to i64*, !dbg !2822
  %572 = load i64, i64* %571, align 8, !dbg !2822, !tbaa !1556
  %573 = bitcast %struct.nd6_q_entry** %566 to i64*, !dbg !2824
  store i64 %572, i64* %573, align 8, !dbg !2824, !tbaa !726
  store %struct.nd6_q_entry* null, %struct.nd6_q_entry** %570, align 8, !dbg !2825, !tbaa !1556
  tail call fastcc void @nd6_free_q(%struct.nd6_q_entry* nonnull %567) #7, !dbg !2826
  %574 = tail call i8* @memp_malloc(i32 12) #7, !dbg !2827
  %575 = bitcast i8* %574 to %struct.nd6_q_entry*, !dbg !2828
  br label %576, !dbg !2829

; <label>:576:                                    ; preds = %569, %565, %560
  %577 = phi %struct.nd6_q_entry* [ %575, %569 ], [ %563, %565 ], [ %563, %560 ], !dbg !2830
  %578 = icmp eq %struct.nd6_q_entry* %577, null, !dbg !2831
  br i1 %578, label %593, label %579, !dbg !2833

; <label>:579:                                    ; preds = %576
  %580 = getelementptr inbounds %struct.nd6_q_entry, %struct.nd6_q_entry* %577, i64 0, i32 0, !dbg !2834
  store %struct.nd6_q_entry* null, %struct.nd6_q_entry** %580, align 8, !dbg !2836, !tbaa !1556
  %581 = getelementptr inbounds %struct.nd6_q_entry, %struct.nd6_q_entry* %577, i64 0, i32 1, !dbg !2837
  store %struct.pbuf* %561, %struct.pbuf** %581, align 8, !dbg !2838, !tbaa !1560
  %582 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %522, i32 3, !dbg !2839
  %583 = load %struct.nd6_q_entry*, %struct.nd6_q_entry** %582, align 8, !dbg !2839, !tbaa !726
  %584 = icmp eq %struct.nd6_q_entry* %583, null, !dbg !2841
  br i1 %584, label %592, label %585, !dbg !2842

; <label>:585:                                    ; preds = %579, %585
  %586 = phi %struct.nd6_q_entry* [ %588, %585 ], [ %583, %579 ], !dbg !2843
  %587 = getelementptr inbounds %struct.nd6_q_entry, %struct.nd6_q_entry* %586, i64 0, i32 0, !dbg !2846
  %588 = load %struct.nd6_q_entry*, %struct.nd6_q_entry** %587, align 8, !dbg !2846, !tbaa !1556
  %589 = icmp eq %struct.nd6_q_entry* %588, null, !dbg !2847
  br i1 %589, label %590, label %585, !dbg !2848, !llvm.loop !2849

; <label>:590:                                    ; preds = %585
  %591 = getelementptr inbounds %struct.nd6_q_entry, %struct.nd6_q_entry* %586, i64 0, i32 0, !dbg !2846
  store %struct.nd6_q_entry* %577, %struct.nd6_q_entry** %591, align 8, !dbg !2852, !tbaa !1556
  br label %595, !dbg !2853

; <label>:592:                                    ; preds = %579
  store %struct.nd6_q_entry* %577, %struct.nd6_q_entry** %582, align 8, !dbg !2854, !tbaa !726
  br label %595

; <label>:593:                                    ; preds = %576
  %594 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %561) #7, !dbg !2856
  br label %595

; <label>:595:                                    ; preds = %550, %529, %533, %590, %592, %593
  %596 = phi i8 [ -16, %529 ], [ -1, %593 ], [ 0, %592 ], [ 0, %590 ], [ -1, %533 ], [ -1, %550 ], !dbg !2858
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2859
  br label %597, !dbg !2860

; <label>:597:                                    ; preds = %513, %515, %595, %527
  %598 = phi i8 [ 0, %527 ], [ %596, %595 ], [ %517, %515 ], [ %514, %513 ], !dbg !2861
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2862
  ret i8 %598, !dbg !2862
}

; Function Attrs: noredzone nounwind
define dso_local zeroext i16 @nd6_get_destination_mtu(%struct.ip6_addr* nocapture readonly, %struct.netif* readonly) local_unnamed_addr #0 !dbg !2863 {
  %3 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 1, !dbg !2875
  %4 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 0
  %5 = load i32, i32* %4, align 4, !tbaa !547
  %6 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 1
  %7 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 2
  %8 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 3
  br label %9, !dbg !2876

; <label>:9:                                      ; preds = %34, %2
  %10 = phi i64 [ 0, %2 ], [ %35, %34 ]
  %11 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %10, i32 0, i32 0, i64 0, !dbg !2875
  %12 = load i32, i32* %11, align 16, !dbg !2875, !tbaa !547
  %13 = icmp eq i32 %5, %12, !dbg !2875
  br i1 %13, label %14, label %34, !dbg !2875

; <label>:14:                                     ; preds = %9
  %15 = load i32, i32* %6, align 4, !dbg !2875, !tbaa !547
  %16 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %10, i32 0, i32 0, i64 1, !dbg !2875
  %17 = load i32, i32* %16, align 4, !dbg !2875, !tbaa !547
  %18 = icmp eq i32 %15, %17, !dbg !2875
  br i1 %18, label %19, label %34, !dbg !2875

; <label>:19:                                     ; preds = %14
  %20 = load i32, i32* %7, align 4, !dbg !2875, !tbaa !547
  %21 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %10, i32 0, i32 0, i64 2, !dbg !2875
  %22 = load i32, i32* %21, align 8, !dbg !2875, !tbaa !547
  %23 = icmp eq i32 %20, %22, !dbg !2875
  br i1 %23, label %24, label %34, !dbg !2875

; <label>:24:                                     ; preds = %19
  %25 = load i32, i32* %8, align 4, !dbg !2875, !tbaa !547
  %26 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %10, i32 0, i32 0, i64 3, !dbg !2875
  %27 = load i32, i32* %26, align 4, !dbg !2875, !tbaa !547
  %28 = icmp eq i32 %25, %27, !dbg !2875
  br i1 %28, label %29, label %34, !dbg !2875

; <label>:29:                                     ; preds = %24
  %30 = load i8, i8* %3, align 4, !dbg !2875, !tbaa !745
  %31 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %10, i32 0, i32 1, !dbg !2875
  %32 = load i8, i8* %31, align 16, !dbg !2875, !tbaa !1415
  %33 = icmp eq i8 %30, %32, !dbg !2875
  br i1 %33, label %38, label %34, !dbg !2877

; <label>:34:                                     ; preds = %29, %24, %19, %14, %9
  %35 = add nuw nsw i64 %10, 1, !dbg !2878
  %36 = icmp ult i64 %35, 10, !dbg !2879
  br i1 %36, label %9, label %37, !dbg !2876, !llvm.loop !1420

; <label>:37:                                     ; preds = %34
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2880
  br label %44

; <label>:38:                                     ; preds = %29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2880
  %39 = shl i64 %10, 48, !dbg !2882
  %40 = ashr exact i64 %39, 48, !dbg !2882
  %41 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %40, i32 2, !dbg !2886
  %42 = load i16, i16* %41, align 8, !dbg !2886, !tbaa !1522
  %43 = icmp eq i16 %42, 0, !dbg !2887
  br i1 %43, label %44, label %49, !dbg !2888

; <label>:44:                                     ; preds = %37, %38
  %45 = icmp eq %struct.netif* %1, null, !dbg !2889
  br i1 %45, label %49, label %46, !dbg !2891

; <label>:46:                                     ; preds = %44
  %47 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 18, !dbg !2892
  %48 = load i16, i16* %47, align 4, !dbg !2892, !tbaa !1130
  br label %49, !dbg !2894

; <label>:49:                                     ; preds = %44, %38, %46
  %50 = phi i16 [ %48, %46 ], [ %42, %38 ], [ 1280, %44 ], !dbg !2895
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2896
  ret i16 %50, !dbg !2896
}

; Function Attrs: noredzone nounwind
define dso_local void @nd6_reachability_hint(%struct.ip6_addr* nocapture readonly) local_unnamed_addr #0 !dbg !2897 {
  %2 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 0, !dbg !2905
  %3 = load i32, i32* %2, align 4, !dbg !2905, !tbaa !547
  %4 = load i8, i8* @nd6_cached_destination_index, align 1, !dbg !2905, !tbaa !530
  %5 = zext i8 %4 to i64, !dbg !2905
  %6 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %5, i32 0, i32 0, i64 0, !dbg !2905
  %7 = load i32, i32* %6, align 16, !dbg !2905, !tbaa !547
  %8 = icmp eq i32 %3, %7, !dbg !2905
  %9 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 1
  br i1 %8, label %10, label %36, !dbg !2905

; <label>:10:                                     ; preds = %1
  %11 = load i32, i32* %9, align 4, !dbg !2905, !tbaa !547
  %12 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %5, i32 0, i32 0, i64 1, !dbg !2905
  %13 = load i32, i32* %12, align 4, !dbg !2905, !tbaa !547
  %14 = icmp eq i32 %11, %13, !dbg !2905
  br i1 %14, label %15, label %36, !dbg !2905

; <label>:15:                                     ; preds = %10
  %16 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 2, !dbg !2905
  %17 = load i32, i32* %16, align 4, !dbg !2905, !tbaa !547
  %18 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %5, i32 0, i32 0, i64 2, !dbg !2905
  %19 = load i32, i32* %18, align 8, !dbg !2905, !tbaa !547
  %20 = icmp eq i32 %17, %19, !dbg !2905
  br i1 %20, label %21, label %36, !dbg !2905

; <label>:21:                                     ; preds = %15
  %22 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 3, !dbg !2905
  %23 = load i32, i32* %22, align 4, !dbg !2905, !tbaa !547
  %24 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %5, i32 0, i32 0, i64 3, !dbg !2905
  %25 = load i32, i32* %24, align 4, !dbg !2905, !tbaa !547
  %26 = icmp eq i32 %23, %25, !dbg !2905
  br i1 %26, label %27, label %36, !dbg !2905

; <label>:27:                                     ; preds = %21
  %28 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 1, !dbg !2905
  %29 = load i8, i8* %28, align 4, !dbg !2905, !tbaa !745
  %30 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %5, i32 0, i32 1, !dbg !2905
  %31 = load i8, i8* %30, align 16, !dbg !2905, !tbaa !1415
  %32 = icmp eq i8 %29, %31, !dbg !2905
  br i1 %32, label %33, label %36, !dbg !2907

; <label>:33:                                     ; preds = %27
  %34 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 11), align 2, !dbg !2908, !tbaa !2576
  %35 = add i16 %34, 1, !dbg !2908
  store i16 %35, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 11), align 2, !dbg !2908, !tbaa !2576
  br label %72, !dbg !2911

; <label>:36:                                     ; preds = %1, %27, %21, %15, %10
  %37 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 1, !dbg !2916
  %38 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 2
  %39 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 3
  br label %40, !dbg !2917

; <label>:40:                                     ; preds = %65, %36
  %41 = phi i64 [ 0, %36 ], [ %66, %65 ]
  %42 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %41, i32 0, i32 0, i64 0, !dbg !2916
  %43 = load i32, i32* %42, align 16, !dbg !2916, !tbaa !547
  %44 = icmp eq i32 %3, %43, !dbg !2916
  br i1 %44, label %45, label %65, !dbg !2916

; <label>:45:                                     ; preds = %40
  %46 = load i32, i32* %9, align 4, !dbg !2916, !tbaa !547
  %47 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %41, i32 0, i32 0, i64 1, !dbg !2916
  %48 = load i32, i32* %47, align 4, !dbg !2916, !tbaa !547
  %49 = icmp eq i32 %46, %48, !dbg !2916
  br i1 %49, label %50, label %65, !dbg !2916

; <label>:50:                                     ; preds = %45
  %51 = load i32, i32* %38, align 4, !dbg !2916, !tbaa !547
  %52 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %41, i32 0, i32 0, i64 2, !dbg !2916
  %53 = load i32, i32* %52, align 8, !dbg !2916, !tbaa !547
  %54 = icmp eq i32 %51, %53, !dbg !2916
  br i1 %54, label %55, label %65, !dbg !2916

; <label>:55:                                     ; preds = %50
  %56 = load i32, i32* %39, align 4, !dbg !2916, !tbaa !547
  %57 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %41, i32 0, i32 0, i64 3, !dbg !2916
  %58 = load i32, i32* %57, align 4, !dbg !2916, !tbaa !547
  %59 = icmp eq i32 %56, %58, !dbg !2916
  br i1 %59, label %60, label %65, !dbg !2916

; <label>:60:                                     ; preds = %55
  %61 = load i8, i8* %37, align 4, !dbg !2916, !tbaa !745
  %62 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %41, i32 0, i32 1, !dbg !2916
  %63 = load i8, i8* %62, align 16, !dbg !2916, !tbaa !1415
  %64 = icmp eq i8 %61, %63, !dbg !2916
  br i1 %64, label %69, label %65, !dbg !2918

; <label>:65:                                     ; preds = %60, %55, %50, %45, %40
  %66 = add nuw nsw i64 %41, 1, !dbg !2919
  %67 = icmp ult i64 %66, 10, !dbg !2920
  br i1 %67, label %40, label %68, !dbg !2917, !llvm.loop !1420

; <label>:68:                                     ; preds = %65
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2921
  br label %157, !dbg !2911

; <label>:69:                                     ; preds = %60
  %70 = trunc i64 %41 to i16, !dbg !2918
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2921
  %71 = icmp slt i16 %70, 0, !dbg !2922
  br i1 %71, label %157, label %72, !dbg !2911

; <label>:72:                                     ; preds = %33, %69
  %73 = phi i64 [ %5, %33 ], [ %41, %69 ]
  %74 = shl i64 %73, 48, !dbg !2924
  %75 = ashr exact i64 %74, 48, !dbg !2924
  %76 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %75, i32 1, i32 0, i64 0, !dbg !2924
  %77 = load i32, i32* %76, align 4, !dbg !2924, !tbaa !547
  %78 = load i8, i8* @nd6_cached_neighbor_index, align 1, !dbg !2924, !tbaa !530
  %79 = zext i8 %78 to i64, !dbg !2924
  %80 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %79, i32 0, i32 0, i64 0, !dbg !2924
  %81 = load i32, i32* %80, align 8, !dbg !2924, !tbaa !547
  %82 = icmp eq i32 %77, %81, !dbg !2924
  %83 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %75, i32 1, i32 0, i64 1
  br i1 %82, label %84, label %110, !dbg !2924

; <label>:84:                                     ; preds = %72
  %85 = load i32, i32* %83, align 4, !dbg !2924, !tbaa !547
  %86 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %79, i32 0, i32 0, i64 1, !dbg !2924
  %87 = load i32, i32* %86, align 4, !dbg !2924, !tbaa !547
  %88 = icmp eq i32 %85, %87, !dbg !2924
  br i1 %88, label %89, label %110, !dbg !2924

; <label>:89:                                     ; preds = %84
  %90 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %75, i32 1, i32 0, i64 2, !dbg !2924
  %91 = load i32, i32* %90, align 4, !dbg !2924, !tbaa !547
  %92 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %79, i32 0, i32 0, i64 2, !dbg !2924
  %93 = load i32, i32* %92, align 8, !dbg !2924, !tbaa !547
  %94 = icmp eq i32 %91, %93, !dbg !2924
  br i1 %94, label %95, label %110, !dbg !2924

; <label>:95:                                     ; preds = %89
  %96 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %75, i32 1, i32 0, i64 3, !dbg !2924
  %97 = load i32, i32* %96, align 4, !dbg !2924, !tbaa !547
  %98 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %79, i32 0, i32 0, i64 3, !dbg !2924
  %99 = load i32, i32* %98, align 4, !dbg !2924, !tbaa !547
  %100 = icmp eq i32 %97, %99, !dbg !2924
  br i1 %100, label %101, label %110, !dbg !2924

; <label>:101:                                    ; preds = %95
  %102 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %75, i32 1, i32 1, !dbg !2924
  %103 = load i8, i8* %102, align 4, !dbg !2924, !tbaa !1435
  %104 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %79, i32 0, i32 1, !dbg !2924
  %105 = load i8, i8* %104, align 8, !dbg !2924, !tbaa !648
  %106 = icmp eq i8 %103, %105, !dbg !2924
  br i1 %106, label %107, label %110, !dbg !2926

; <label>:107:                                    ; preds = %101
  %108 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 11), align 2, !dbg !2928, !tbaa !2576
  %109 = add i16 %108, 1, !dbg !2928
  store i16 %109, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 11), align 2, !dbg !2928, !tbaa !2576
  br label %146, !dbg !2930

; <label>:110:                                    ; preds = %72, %101, %95, %89, %84
  %111 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %75, i32 1, i32 1, !dbg !2934
  %112 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %75, i32 1, i32 0, i64 2
  %113 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %75, i32 1, i32 0, i64 3
  br label %114, !dbg !2935

; <label>:114:                                    ; preds = %139, %110
  %115 = phi i64 [ 0, %110 ], [ %140, %139 ]
  %116 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %115, i32 0, i32 0, i64 0, !dbg !2934
  %117 = load i32, i32* %116, align 8, !dbg !2934, !tbaa !547
  %118 = icmp eq i32 %77, %117, !dbg !2934
  br i1 %118, label %119, label %139, !dbg !2934

; <label>:119:                                    ; preds = %114
  %120 = load i32, i32* %83, align 4, !dbg !2934, !tbaa !547
  %121 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %115, i32 0, i32 0, i64 1, !dbg !2934
  %122 = load i32, i32* %121, align 4, !dbg !2934, !tbaa !547
  %123 = icmp eq i32 %120, %122, !dbg !2934
  br i1 %123, label %124, label %139, !dbg !2934

; <label>:124:                                    ; preds = %119
  %125 = load i32, i32* %112, align 4, !dbg !2934, !tbaa !547
  %126 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %115, i32 0, i32 0, i64 2, !dbg !2934
  %127 = load i32, i32* %126, align 8, !dbg !2934, !tbaa !547
  %128 = icmp eq i32 %125, %127, !dbg !2934
  br i1 %128, label %129, label %139, !dbg !2934

; <label>:129:                                    ; preds = %124
  %130 = load i32, i32* %113, align 4, !dbg !2934, !tbaa !547
  %131 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %115, i32 0, i32 0, i64 3, !dbg !2934
  %132 = load i32, i32* %131, align 4, !dbg !2934, !tbaa !547
  %133 = icmp eq i32 %130, %132, !dbg !2934
  br i1 %133, label %134, label %139, !dbg !2934

; <label>:134:                                    ; preds = %129
  %135 = load i8, i8* %111, align 4, !dbg !2934, !tbaa !745
  %136 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %115, i32 0, i32 1, !dbg !2934
  %137 = load i8, i8* %136, align 8, !dbg !2934, !tbaa !648
  %138 = icmp eq i8 %135, %137, !dbg !2934
  br i1 %138, label %142, label %139, !dbg !2936

; <label>:139:                                    ; preds = %134, %129, %124, %119, %114
  %140 = add nuw nsw i64 %115, 1, !dbg !2937
  %141 = icmp ult i64 %140, 10, !dbg !2938
  br i1 %141, label %114, label %144, !dbg !2935, !llvm.loop !655

; <label>:142:                                    ; preds = %134
  %143 = trunc i64 %115 to i8, !dbg !2936
  br label %144, !dbg !2939

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i8 [ %143, %142 ], [ -1, %139 ], !dbg !2940
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2939
  br label %146

; <label>:146:                                    ; preds = %144, %107
  %147 = phi i8 [ %78, %107 ], [ %145, %144 ], !dbg !2941
  %148 = icmp slt i8 %147, 0, !dbg !2942
  br i1 %148, label %157, label %149, !dbg !2944

; <label>:149:                                    ; preds = %146
  %150 = sext i8 %147 to i64, !dbg !2945
  %151 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %150, i32 4, !dbg !2947
  %152 = load i8, i8* %151, align 8, !dbg !2947, !tbaa !690
  %153 = icmp ult i8 %152, 2, !dbg !2948
  br i1 %153, label %157, label %154, !dbg !2948

; <label>:154:                                    ; preds = %149
  store i8 2, i8* %151, align 8, !dbg !2949, !tbaa !690
  %155 = load i32, i32* @reachable_time, align 4, !dbg !2950, !tbaa !547
  %156 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %150, i32 6, i32 0, !dbg !2951
  store i32 %155, i32* %156, align 4, !dbg !2952, !tbaa !530
  br label %157, !dbg !2953

; <label>:157:                                    ; preds = %68, %149, %146, %69, %154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2953
  ret void, !dbg !2953
}

; Function Attrs: noredzone nounwind
define dso_local void @nd6_cleanup_netif(%struct.netif* readnone) local_unnamed_addr #0 !dbg !2954 {
  %2 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 0, i32 1), align 8, !dbg !2961, !tbaa !1195
  %3 = icmp eq %struct.netif* %2, %0, !dbg !2966
  br i1 %3, label %4, label %5, !dbg !2967

; <label>:4:                                      ; preds = %1
  store %struct.netif* null, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 0, i32 1), align 8, !dbg !2968, !tbaa !1195
  br label %5, !dbg !2970

; <label>:5:                                      ; preds = %1, %4
  %6 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 1, i32 1), align 8, !dbg !2961, !tbaa !1195
  %7 = icmp eq %struct.netif* %6, %0, !dbg !2966
  br i1 %7, label %42, label %43, !dbg !2967

; <label>:8:                                      ; preds = %54, %33
  %9 = phi i64 [ %34, %33 ], [ 0, %54 ]
  %10 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %9, !dbg !2971
  %11 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %9, i32 1, !dbg !2976
  %12 = load %struct.netif*, %struct.netif** %11, align 8, !dbg !2976, !tbaa !719
  %13 = icmp eq %struct.netif* %12, %0, !dbg !2977
  br i1 %13, label %14, label %33, !dbg !2978

; <label>:14:                                     ; preds = %8
  %15 = load %struct.nd6_neighbor_cache_entry*, %struct.nd6_neighbor_cache_entry** getelementptr inbounds ([3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 0, i32 0), align 16, !dbg !2980, !tbaa !922
  %16 = icmp eq %struct.nd6_neighbor_cache_entry* %15, %10, !dbg !2986
  br i1 %16, label %17, label %18, !dbg !2987

; <label>:17:                                     ; preds = %14
  store %struct.nd6_neighbor_cache_entry* null, %struct.nd6_neighbor_cache_entry** getelementptr inbounds ([3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 0, i32 0), align 16, !dbg !2988, !tbaa !922
  store i8 0, i8* getelementptr inbounds ([3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 0, i32 2), align 4, !dbg !2990, !tbaa !1045
  br label %18, !dbg !2991

; <label>:18:                                     ; preds = %14, %17
  %19 = load %struct.nd6_neighbor_cache_entry*, %struct.nd6_neighbor_cache_entry** getelementptr inbounds ([3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 1, i32 0), align 16, !dbg !2980, !tbaa !922
  %20 = icmp eq %struct.nd6_neighbor_cache_entry* %19, %10, !dbg !2986
  br i1 %20, label %37, label %38, !dbg !2987

; <label>:21:                                     ; preds = %38, %41
  %22 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %9, i32 5, !dbg !2992
  store i8 0, i8* %22, align 1, !dbg !2993, !tbaa !992
  %23 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %9, i32 3, !dbg !2996
  %24 = load %struct.nd6_q_entry*, %struct.nd6_q_entry** %23, align 8, !dbg !2996, !tbaa !726
  %25 = icmp eq %struct.nd6_q_entry* %24, null, !dbg !2997
  br i1 %25, label %27, label %26, !dbg !2998

; <label>:26:                                     ; preds = %21
  tail call fastcc void @nd6_free_q(%struct.nd6_q_entry* nonnull %24) #7, !dbg !2999
  store %struct.nd6_q_entry* null, %struct.nd6_q_entry** %23, align 8, !dbg !3000, !tbaa !726
  br label %27, !dbg !3001

; <label>:27:                                     ; preds = %21, %26
  %28 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %9, i32 4, !dbg !3002
  store i8 0, i8* %28, align 8, !dbg !3003, !tbaa !690
  store i8 0, i8* %22, align 1, !dbg !3004, !tbaa !992
  store %struct.netif* null, %struct.netif** %11, align 8, !dbg !3005, !tbaa !719
  %29 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %9, i32 6, i32 0, !dbg !3006
  store i32 0, i32* %29, align 4, !dbg !3007, !tbaa !530
  %30 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %9, i32 0, i32 0, i64 0, !dbg !3008
  %31 = bitcast i32* %30 to <4 x i32>*, !dbg !3008
  store <4 x i32> zeroinitializer, <4 x i32>* %31, align 8, !dbg !3008, !tbaa !547
  %32 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %9, i32 0, i32 1, !dbg !3008
  store i8 0, i8* %32, align 8, !dbg !3008, !tbaa !648
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3009
  br label %33, !dbg !3010

; <label>:33:                                     ; preds = %8, %27
  %34 = add nuw nsw i64 %9, 1, !dbg !3011
  %35 = icmp eq i64 %34, 10, !dbg !3012
  br i1 %35, label %36, label %8, !dbg !3013, !llvm.loop !3014

; <label>:36:                                     ; preds = %33
  store <4 x i32> zeroinitializer, <4 x i32>* bitcast ([10 x %struct.nd6_destination_cache_entry]* @destination_cache to <4 x i32>*), align 16, !dbg !3018, !tbaa !547
  store i8 0, i8* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 0, i32 0, i32 1), align 16, !dbg !3018, !tbaa !1415
  store <4 x i32> zeroinitializer, <4 x i32>* bitcast (i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 1, i32 0, i32 0, i64 0) to <4 x i32>*), align 16, !dbg !3018, !tbaa !547
  store i8 0, i8* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 1, i32 0, i32 1), align 16, !dbg !3018, !tbaa !1415
  store <4 x i32> zeroinitializer, <4 x i32>* bitcast (i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 2, i32 0, i32 0, i64 0) to <4 x i32>*), align 16, !dbg !3018, !tbaa !547
  store i8 0, i8* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 2, i32 0, i32 1), align 16, !dbg !3018, !tbaa !1415
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 3, i32 0, i32 0, i64 0), align 16, !dbg !3018, !tbaa !547
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 3, i32 0, i32 0, i64 1), align 4, !dbg !3018, !tbaa !547
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 3, i32 0, i32 0, i64 2), align 8, !dbg !3018, !tbaa !547
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 3, i32 0, i32 0, i64 3), align 4, !dbg !3018, !tbaa !547
  store i8 0, i8* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 3, i32 0, i32 1), align 16, !dbg !3018, !tbaa !1415
  store <4 x i32> zeroinitializer, <4 x i32>* bitcast (i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 4, i32 0, i32 0, i64 0) to <4 x i32>*), align 16, !dbg !3018, !tbaa !547
  store i8 0, i8* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 4, i32 0, i32 1), align 16, !dbg !3018, !tbaa !1415
  store <4 x i32> zeroinitializer, <4 x i32>* bitcast (i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 5, i32 0, i32 0, i64 0) to <4 x i32>*), align 16, !dbg !3018, !tbaa !547
  store i8 0, i8* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 5, i32 0, i32 1), align 16, !dbg !3018, !tbaa !1415
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 6, i32 0, i32 0, i64 0), align 16, !dbg !3018, !tbaa !547
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 6, i32 0, i32 0, i64 1), align 4, !dbg !3018, !tbaa !547
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 6, i32 0, i32 0, i64 2), align 8, !dbg !3018, !tbaa !547
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 6, i32 0, i32 0, i64 3), align 4, !dbg !3018, !tbaa !547
  store i8 0, i8* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 6, i32 0, i32 1), align 16, !dbg !3018, !tbaa !1415
  store <4 x i32> zeroinitializer, <4 x i32>* bitcast (i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 7, i32 0, i32 0, i64 0) to <4 x i32>*), align 16, !dbg !3018, !tbaa !547
  store i8 0, i8* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 7, i32 0, i32 1), align 16, !dbg !3018, !tbaa !1415
  store <4 x i32> zeroinitializer, <4 x i32>* bitcast (i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 8, i32 0, i32 0, i64 0) to <4 x i32>*), align 16, !dbg !3018, !tbaa !547
  store i8 0, i8* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 8, i32 0, i32 1), align 16, !dbg !3018, !tbaa !1415
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 9, i32 0, i32 0, i64 0), align 16, !dbg !3018, !tbaa !547
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 9, i32 0, i32 0, i64 1), align 4, !dbg !3018, !tbaa !547
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 9, i32 0, i32 0, i64 2), align 8, !dbg !3018, !tbaa !547
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 9, i32 0, i32 0, i64 3), align 4, !dbg !3018, !tbaa !547
  store i8 0, i8* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 9, i32 0, i32 1), align 16, !dbg !3018, !tbaa !1415
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3019
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3020
  ret void, !dbg !3020

; <label>:37:                                     ; preds = %18
  store %struct.nd6_neighbor_cache_entry* null, %struct.nd6_neighbor_cache_entry** getelementptr inbounds ([3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 1, i32 0), align 16, !dbg !2988, !tbaa !922
  store i8 0, i8* getelementptr inbounds ([3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 1, i32 2), align 4, !dbg !2990, !tbaa !1045
  br label %38, !dbg !2991

; <label>:38:                                     ; preds = %37, %18
  %39 = load %struct.nd6_neighbor_cache_entry*, %struct.nd6_neighbor_cache_entry** getelementptr inbounds ([3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 2, i32 0), align 16, !dbg !2980, !tbaa !922
  %40 = icmp eq %struct.nd6_neighbor_cache_entry* %39, %10, !dbg !2986
  br i1 %40, label %41, label %21, !dbg !2987

; <label>:41:                                     ; preds = %38
  store %struct.nd6_neighbor_cache_entry* null, %struct.nd6_neighbor_cache_entry** getelementptr inbounds ([3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 2, i32 0), align 16, !dbg !2988, !tbaa !922
  store i8 0, i8* getelementptr inbounds ([3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 2, i32 2), align 4, !dbg !2990, !tbaa !1045
  br label %21, !dbg !2991

; <label>:42:                                     ; preds = %5
  store %struct.netif* null, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 1, i32 1), align 8, !dbg !2968, !tbaa !1195
  br label %43, !dbg !2970

; <label>:43:                                     ; preds = %42, %5
  %44 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 2, i32 1), align 8, !dbg !2961, !tbaa !1195
  %45 = icmp eq %struct.netif* %44, %0, !dbg !2966
  br i1 %45, label %46, label %47, !dbg !2967

; <label>:46:                                     ; preds = %43
  store %struct.netif* null, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 2, i32 1), align 8, !dbg !2968, !tbaa !1195
  br label %47, !dbg !2970

; <label>:47:                                     ; preds = %46, %43
  %48 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 3, i32 1), align 8, !dbg !2961, !tbaa !1195
  %49 = icmp eq %struct.netif* %48, %0, !dbg !2966
  br i1 %49, label %50, label %51, !dbg !2967

; <label>:50:                                     ; preds = %47
  store %struct.netif* null, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 3, i32 1), align 8, !dbg !2968, !tbaa !1195
  br label %51, !dbg !2970

; <label>:51:                                     ; preds = %50, %47
  %52 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 4, i32 1), align 8, !dbg !2961, !tbaa !1195
  %53 = icmp eq %struct.netif* %52, %0, !dbg !2966
  br i1 %53, label %55, label %54, !dbg !2967

; <label>:54:                                     ; preds = %55, %51
  br label %8, !dbg !2971

; <label>:55:                                     ; preds = %51
  store %struct.netif* null, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 4, i32 1), align 8, !dbg !2968, !tbaa !1195
  br label %54, !dbg !2970
}

; Function Attrs: noredzone nounwind
define dso_local void @nd6_adjust_mld_membership(%struct.netif*, i8 signext, i8 zeroext) local_unnamed_addr #0 !dbg !3021 {
  %4 = sext i8 %1 to i64, !dbg !3034
  %5 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 %4, !dbg !3034
  %6 = load i8, i8* %5, align 1, !dbg !3034, !tbaa !530
  switch i8 %6, label %7 [
    i8 0, label %10
    i8 64, label %10
  ], !dbg !3036

; <label>:7:                                      ; preds = %3
  %8 = icmp ne i8 %6, 8, !dbg !3037
  %9 = zext i1 %8 to i32
  br label %10

; <label>:10:                                     ; preds = %3, %3, %7
  %11 = phi i32 [ 0, %3 ], [ %9, %7 ], [ 0, %3 ]
  switch i8 %2, label %12 [
    i8 0, label %15
    i8 64, label %15
  ], !dbg !3038

; <label>:12:                                     ; preds = %10
  %13 = icmp ne i8 %2, 8, !dbg !3039
  %14 = zext i1 %13 to i8
  br label %15

; <label>:15:                                     ; preds = %10, %10, %12
  %16 = phi i8 [ 0, %10 ], [ %14, %12 ], [ 0, %10 ]
  %17 = zext i8 %16 to i32, !dbg !3041
  %18 = icmp eq i32 %11, %17, !dbg !3043
  br i1 %18, label %31, label %19, !dbg !3044

; <label>:19:                                     ; preds = %15
  store i32 767, i32* getelementptr inbounds (%struct.ip6_addr, %struct.ip6_addr* @multicast_address, i64 0, i32 0, i64 0), align 16, !dbg !3045, !tbaa !547
  store i32 0, i32* getelementptr inbounds (%struct.ip6_addr, %struct.ip6_addr* @multicast_address, i64 0, i32 0, i64 1), align 4, !dbg !3045, !tbaa !547
  store i32 16777216, i32* getelementptr inbounds (%struct.ip6_addr, %struct.ip6_addr* @multicast_address, i64 0, i32 0, i64 2), align 8, !dbg !3045, !tbaa !547
  %20 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 %4, i32 0, i32 0, i32 0, i64 3, !dbg !3045
  %21 = load i32, i32* %20, align 4, !dbg !3045, !tbaa !530
  %22 = or i32 %21, 255, !dbg !3045
  store i32 %22, i32* getelementptr inbounds (%struct.ip6_addr, %struct.ip6_addr* @multicast_address, i64 0, i32 0, i64 3), align 4, !dbg !3045, !tbaa !547
  %23 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 23, !dbg !3048
  %24 = load i8, i8* %23, align 8, !dbg !3048, !tbaa !550
  %25 = add i8 %24, 1, !dbg !3048
  store i8 %25, i8* getelementptr inbounds (%struct.ip6_addr, %struct.ip6_addr* @multicast_address, i64 0, i32 1), align 16, !dbg !3048, !tbaa !745
  %26 = icmp eq i8 %16, 0, !dbg !3049
  br i1 %26, label %29, label %27, !dbg !3051

; <label>:27:                                     ; preds = %19
  %28 = tail call signext i8 @mld6_joingroup_netif(%struct.netif* nonnull %0, %struct.ip6_addr* nonnull @multicast_address) #7, !dbg !3052
  br label %31, !dbg !3054

; <label>:29:                                     ; preds = %19
  %30 = tail call signext i8 @mld6_leavegroup_netif(%struct.netif* nonnull %0, %struct.ip6_addr* nonnull @multicast_address) #7, !dbg !3055
  br label %31

; <label>:31:                                     ; preds = %15, %27, %29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3057
  ret void, !dbg !3057
}

; Function Attrs: noredzone
declare dso_local signext i8 @mld6_joingroup_netif(%struct.netif*, %struct.ip6_addr*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local signext i8 @mld6_leavegroup_netif(%struct.netif*, %struct.ip6_addr*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @nd6_restart_netif(%struct.netif* nocapture) local_unnamed_addr #0 !dbg !3058 {
  %2 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 25, !dbg !3062
  store i8 3, i8* %2, align 2, !dbg !3063, !tbaa !901
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3064
  ret void, !dbg !3064
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
define internal fastcc void @nd6_free_q(%struct.nd6_q_entry*) unnamed_addr #0 !dbg !3065 {
  %2 = icmp eq %struct.nd6_q_entry* %0, null, !dbg !3072
  br i1 %2, label %3, label %4, !dbg !3075

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0)) #8, !dbg !3076
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !3079
  tail call void @ukplat_terminate(i32 3) #9, !dbg !3079
  unreachable, !dbg !3079

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.nd6_q_entry, %struct.nd6_q_entry* %0, i64 0, i32 1, !dbg !3083
  %6 = load %struct.pbuf*, %struct.pbuf** %5, align 8, !dbg !3083, !tbaa !1560
  %7 = icmp eq %struct.pbuf* %6, null, !dbg !3083
  br i1 %7, label %8, label %10, !dbg !3086

; <label>:8:                                      ; preds = %4
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0)) #8, !dbg !3087
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !3090
  tail call void @ukplat_terminate(i32 3) #9, !dbg !3090
  unreachable, !dbg !3090

; <label>:9:                                      ; preds = %18
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0)) #8, !dbg !3094
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !3100
  tail call void @ukplat_terminate(i32 3) #9, !dbg !3100
  unreachable, !dbg !3100

; <label>:10:                                     ; preds = %4, %18
  %11 = phi %struct.nd6_q_entry* [ %14, %18 ], [ %0, %4 ]
  %12 = phi %struct.pbuf* [ %20, %18 ], [ %6, %4 ]
  %13 = getelementptr inbounds %struct.nd6_q_entry, %struct.nd6_q_entry* %11, i64 0, i32 0, !dbg !3104
  %14 = load %struct.nd6_q_entry*, %struct.nd6_q_entry** %13, align 8, !dbg !3104, !tbaa !1556
  %15 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %12) #7, !dbg !3105
  %16 = bitcast %struct.nd6_q_entry* %11 to i8*, !dbg !3106
  tail call void @memp_free(i32 12, i8* %16) #7, !dbg !3107
  %17 = icmp eq %struct.nd6_q_entry* %14, null, !dbg !3108
  br i1 %17, label %22, label %18, !dbg !3108, !llvm.loop !3109

; <label>:18:                                     ; preds = %10
  %19 = getelementptr inbounds %struct.nd6_q_entry, %struct.nd6_q_entry* %14, i64 0, i32 1
  %20 = load %struct.pbuf*, %struct.pbuf** %19, align 8, !dbg !3111, !tbaa !1560
  %21 = icmp eq %struct.pbuf* %20, null, !dbg !3111
  br i1 %21, label %9, label %10, !dbg !3113

; <label>:22:                                     ; preds = %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3114
  ret void, !dbg !3114
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
!544 = !DILocation(line: 299, column: 23, scope: !471)
!545 = !DILocation(line: 315, column: 5, scope: !546)
!546 = distinct !DILexicalBlock(scope: !471, file: !3, line: 315, column: 5)
!547 = !{!548, !548, i64 0}
!548 = !{!"int", !520, i64 0}
!549 = !DILocation(line: 316, column: 5, scope: !471)
!550 = !{!551, !520, i64 264}
!551 = !{!"netif", !528, i64 0, !552, i64 8, !552, i64 32, !552, i64 56, !520, i64 80, !520, i64 152, !520, i64 156, !520, i64 168, !528, i64 184, !528, i64 192, !528, i64 200, !528, i64 208, !528, i64 216, !528, i64 224, !528, i64 232, !520, i64 240, !519, i64 248, !519, i64 250, !519, i64 252, !520, i64 254, !520, i64 260, !520, i64 261, !520, i64 262, !520, i64 264, !520, i64 265, !520, i64 266, !528, i64 272}
!552 = !{!"ip_addr", !520, i64 0, !520, i64 20}
!553 = !DILocation(line: 319, column: 9, scope: !554)
!554 = distinct !DILexicalBlock(scope: !471, file: !3, line: 319, column: 9)
!555 = !{!556, !528, i64 24}
!556 = !{!"ip_globals", !528, i64 0, !528, i64 8, !528, i64 16, !528, i64 24, !519, i64 32, !552, i64 36, !552, i64 60}
!557 = !{!558, !520, i64 7}
!558 = !{!"ip6_hdr", !548, i64 0, !519, i64 4, !520, i64 6, !520, i64 7, !559, i64 8, !559, i64 24}
!559 = !{!"ip6_addr_packed", !520, i64 0}
!560 = !DILocation(line: 319, column: 43, scope: !554)
!561 = !DILocation(line: 319, column: 57, scope: !554)
!562 = !DILocation(line: 319, column: 68, scope: !554)
!563 = !{!564, !520, i64 1}
!564 = !{!"na_header", !520, i64 0, !520, i64 1, !519, i64 2, !520, i64 4, !520, i64 5, !559, i64 8}
!565 = !DILocation(line: 319, column: 73, scope: !554)
!566 = !DILocation(line: 320, column: 9, scope: !554)
!567 = !DILocation(line: 319, column: 78, scope: !554)
!568 = !DILocation(line: 321, column: 7, scope: !569)
!569 = distinct !DILexicalBlock(scope: !554, file: !3, line: 320, column: 48)
!570 = !DILocation(line: 322, column: 7, scope: !569)
!571 = !{!517, !519, i64 302}
!572 = !DILocation(line: 323, column: 7, scope: !569)
!573 = !DILocation(line: 331, column: 9, scope: !574)
!574 = distinct !DILexicalBlock(scope: !471, file: !3, line: 331, column: 9)
!575 = !DILocation(line: 331, column: 9, scope: !471)
!576 = !DILocation(line: 290, column: 8, scope: !457)
!577 = !DILocation(line: 339, column: 14, scope: !578)
!578 = distinct !DILexicalBlock(scope: !579, file: !3, line: 339, column: 13)
!579 = distinct !DILexicalBlock(scope: !580, file: !3, line: 338, column: 53)
!580 = distinct !DILexicalBlock(scope: !581, file: !3, line: 338, column: 7)
!581 = distinct !DILexicalBlock(scope: !582, file: !3, line: 338, column: 7)
!582 = distinct !DILexicalBlock(scope: !574, file: !3, line: 331, column: 56)
!583 = !DILocation(line: 339, column: 63, scope: !578)
!584 = !DILocation(line: 341, column: 13, scope: !578)
!585 = !DILocation(line: 339, column: 13, scope: !579)
!586 = !DILocalVariable(name: "netif", arg: 1, scope: !587, file: !3, line: 147, type: !274)
!587 = distinct !DISubprogram(name: "nd6_duplicate_addr_detected", scope: !3, file: !3, line: 147, type: !588, isLocal: true, isDefinition: true, scopeLine: 148, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !590)
!588 = !DISubroutineType(types: !589)
!589 = !{null, !274, !307}
!590 = !{!586, !591, !592}
!591 = !DILocalVariable(name: "addr_idx", arg: 2, scope: !587, file: !3, line: 147, type: !307)
!592 = !DILocalVariable(name: "i", scope: !593, file: !3, line: 164, type: !307)
!593 = distinct !DILexicalBlock(scope: !594, file: !3, line: 163, column: 22)
!594 = distinct !DILexicalBlock(scope: !587, file: !3, line: 163, column: 7)
!595 = !DILocation(line: 147, column: 43, scope: !587, inlinedAt: !596)
!596 = distinct !DILocation(line: 343, column: 11, scope: !597)
!597 = distinct !DILexicalBlock(scope: !578, file: !3, line: 341, column: 68)
!598 = !DILocation(line: 147, column: 55, scope: !587, inlinedAt: !596)
!599 = !DILocation(line: 155, column: 3, scope: !587, inlinedAt: !596)
!600 = !DILocation(line: 163, column: 7, scope: !587, inlinedAt: !596)
!601 = !DILocation(line: 164, column: 10, scope: !593, inlinedAt: !596)
!602 = !DILocation(line: 166, column: 12, scope: !603, inlinedAt: !596)
!603 = distinct !DILexicalBlock(scope: !604, file: !3, line: 166, column: 11)
!604 = distinct !DILexicalBlock(scope: !605, file: !3, line: 165, column: 51)
!605 = distinct !DILexicalBlock(scope: !606, file: !3, line: 165, column: 5)
!606 = distinct !DILexicalBlock(scope: !593, file: !3, line: 165, column: 5)
!607 = !DILocation(line: 166, column: 63, scope: !603, inlinedAt: !596)
!608 = !DILocation(line: 167, column: 12, scope: !603, inlinedAt: !596)
!609 = !DILocation(line: 166, column: 11, scope: !604, inlinedAt: !596)
!610 = !DILocation(line: 168, column: 9, scope: !611, inlinedAt: !596)
!611 = distinct !DILexicalBlock(scope: !603, file: !3, line: 167, column: 47)
!612 = !DILocation(line: 169, column: 7, scope: !611, inlinedAt: !596)
!613 = !DILocation(line: 173, column: 1, scope: !587, inlinedAt: !596)
!614 = !DILocation(line: 345, column: 11, scope: !597)
!615 = !DILocation(line: 354, column: 9, scope: !616)
!616 = distinct !DILexicalBlock(scope: !617, file: !3, line: 352, column: 52)
!617 = distinct !DILexicalBlock(scope: !582, file: !3, line: 352, column: 11)
!618 = !DILocation(line: 355, column: 9, scope: !616)
!619 = !DILocation(line: 356, column: 9, scope: !616)
!620 = !DILocation(line: 352, column: 11, scope: !617)
!621 = !DILocation(line: 300, column: 27, scope: !471)
!622 = !DILocation(line: 362, column: 61, scope: !623)
!623 = distinct !DILexicalBlock(scope: !582, file: !3, line: 362, column: 11)
!624 = !{!625, !520, i64 1}
!625 = !{!"lladdr_option", !520, i64 0, !520, i64 1, !520, i64 2}
!626 = !DILocation(line: 362, column: 49, scope: !623)
!627 = !DILocation(line: 362, column: 68, scope: !623)
!628 = !DILocation(line: 362, column: 46, scope: !623)
!629 = !DILocation(line: 362, column: 18, scope: !623)
!630 = !DILocation(line: 362, column: 11, scope: !582)
!631 = !DILocation(line: 364, column: 9, scope: !632)
!632 = distinct !DILexicalBlock(scope: !623, file: !3, line: 362, column: 76)
!633 = !DILocation(line: 365, column: 9, scope: !632)
!634 = !DILocation(line: 366, column: 9, scope: !632)
!635 = !DILocalVariable(name: "i", scope: !636, file: !3, line: 1403, type: !307)
!636 = distinct !DISubprogram(name: "nd6_find_neighbor_cache_entry", scope: !3, file: !3, line: 1401, type: !637, isLocal: true, isDefinition: true, scopeLine: 1402, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !639)
!637 = !DISubroutineType(types: !638)
!638 = !{!307, !162}
!639 = !{!640, !635}
!640 = !DILocalVariable(name: "ip6addr", arg: 1, scope: !636, file: !3, line: 1401, type: !162)
!641 = !DILocation(line: 1403, column: 8, scope: !636, inlinedAt: !642)
!642 = distinct !DILocation(line: 371, column: 11, scope: !582)
!643 = !DILocation(line: 1405, column: 9, scope: !644, inlinedAt: !642)
!644 = distinct !DILexicalBlock(scope: !645, file: !3, line: 1405, column: 9)
!645 = distinct !DILexicalBlock(scope: !646, file: !3, line: 1404, column: 48)
!646 = distinct !DILexicalBlock(scope: !647, file: !3, line: 1404, column: 3)
!647 = distinct !DILexicalBlock(scope: !636, file: !3, line: 1404, column: 3)
!648 = !{!649, !520, i64 16}
!649 = !{!"nd6_neighbor_cache_entry", !650, i64 0, !528, i64 24, !520, i64 32, !528, i64 40, !520, i64 48, !520, i64 49, !520, i64 52}
!650 = !{!"ip6_addr", !520, i64 0, !520, i64 16}
!651 = !DILocation(line: 1405, column: 9, scope: !645, inlinedAt: !642)
!652 = !DILocation(line: 1404, column: 44, scope: !646, inlinedAt: !642)
!653 = !DILocation(line: 1404, column: 17, scope: !646, inlinedAt: !642)
!654 = !DILocation(line: 1404, column: 3, scope: !647, inlinedAt: !642)
!655 = distinct !{!655, !656, !657}
!656 = !DILocation(line: 1404, column: 3, scope: !647)
!657 = !DILocation(line: 1408, column: 3, scope: !647)
!658 = !DILocation(line: 1410, column: 1, scope: !636, inlinedAt: !642)
!659 = !DILocation(line: 373, column: 21, scope: !660)
!660 = distinct !DILexicalBlock(scope: !661, file: !3, line: 373, column: 13)
!661 = distinct !DILexicalBlock(scope: !662, file: !3, line: 372, column: 19)
!662 = distinct !DILexicalBlock(scope: !582, file: !3, line: 372, column: 11)
!663 = !{!564, !520, i64 4}
!664 = !DILocation(line: 373, column: 27, scope: !660)
!665 = !DILocation(line: 373, column: 13, scope: !661)
!666 = !DILocation(line: 374, column: 11, scope: !667)
!667 = distinct !DILexicalBlock(scope: !660, file: !3, line: 373, column: 48)
!668 = !{!551, !520, i64 260}
!669 = !DILocation(line: 375, column: 9, scope: !667)
!670 = !DILocation(line: 1403, column: 8, scope: !636, inlinedAt: !671)
!671 = distinct !DILocation(line: 383, column: 11, scope: !672)
!672 = distinct !DILexicalBlock(scope: !574, file: !3, line: 377, column: 12)
!673 = !DILocation(line: 1405, column: 9, scope: !644, inlinedAt: !671)
!674 = !DILocation(line: 1405, column: 9, scope: !645, inlinedAt: !671)
!675 = !DILocation(line: 1404, column: 44, scope: !646, inlinedAt: !671)
!676 = !DILocation(line: 1404, column: 17, scope: !646, inlinedAt: !671)
!677 = !DILocation(line: 1404, column: 3, scope: !647, inlinedAt: !671)
!678 = !DILocation(line: 1410, column: 1, scope: !636, inlinedAt: !671)
!679 = !DILocation(line: 384, column: 11, scope: !672)
!680 = !DILocation(line: 384, column: 13, scope: !681)
!681 = distinct !DILexicalBlock(scope: !672, file: !3, line: 384, column: 11)
!682 = !DILocation(line: 386, column: 9, scope: !683)
!683 = distinct !DILexicalBlock(scope: !681, file: !3, line: 384, column: 18)
!684 = !DILocation(line: 391, column: 20, scope: !685)
!685 = distinct !DILexicalBlock(scope: !672, file: !3, line: 391, column: 11)
!686 = !DILocation(line: 391, column: 26, scope: !685)
!687 = !DILocation(line: 391, column: 47, scope: !685)
!688 = !DILocation(line: 392, column: 12, scope: !685)
!689 = !DILocation(line: 392, column: 30, scope: !685)
!690 = !{!649, !520, i64 48}
!691 = !DILocation(line: 392, column: 36, scope: !685)
!692 = !DILocation(line: 391, column: 11, scope: !672)
!693 = !DILocation(line: 394, column: 20, scope: !694)
!694 = distinct !DILexicalBlock(scope: !695, file: !3, line: 394, column: 13)
!695 = distinct !DILexicalBlock(scope: !685, file: !3, line: 392, column: 56)
!696 = !DILocation(line: 394, column: 13, scope: !695)
!697 = !DILocation(line: 396, column: 11, scope: !698)
!698 = distinct !DILexicalBlock(scope: !694, file: !3, line: 394, column: 54)
!699 = !DILocation(line: 397, column: 11, scope: !698)
!700 = !DILocation(line: 398, column: 11, scope: !698)
!701 = !DILocation(line: 394, column: 13, scope: !694)
!702 = !DILocation(line: 404, column: 63, scope: !703)
!703 = distinct !DILexicalBlock(scope: !695, file: !3, line: 404, column: 13)
!704 = !DILocation(line: 404, column: 51, scope: !703)
!705 = !DILocation(line: 404, column: 70, scope: !703)
!706 = !DILocation(line: 404, column: 48, scope: !703)
!707 = !DILocation(line: 404, column: 20, scope: !703)
!708 = !DILocation(line: 404, column: 13, scope: !695)
!709 = !DILocation(line: 406, column: 11, scope: !710)
!710 = distinct !DILexicalBlock(scope: !703, file: !3, line: 404, column: 78)
!711 = !DILocation(line: 407, column: 11, scope: !710)
!712 = !DILocation(line: 408, column: 11, scope: !710)
!713 = !DILocation(line: 412, column: 9, scope: !695)
!714 = !DILocation(line: 416, column: 25, scope: !672)
!715 = !DILocation(line: 413, column: 7, scope: !695)
!716 = !DILocation(line: 415, column: 7, scope: !672)
!717 = !DILocation(line: 415, column: 25, scope: !672)
!718 = !DILocation(line: 415, column: 31, scope: !672)
!719 = !{!649, !528, i64 24}
!720 = !DILocation(line: 416, column: 31, scope: !672)
!721 = !DILocation(line: 417, column: 50, scope: !672)
!722 = !DILocation(line: 417, column: 33, scope: !672)
!723 = !DILocation(line: 417, column: 48, scope: !672)
!724 = !DILocation(line: 420, column: 29, scope: !725)
!725 = distinct !DILexicalBlock(scope: !672, file: !3, line: 420, column: 11)
!726 = !{!649, !528, i64 40}
!727 = !DILocation(line: 420, column: 31, scope: !725)
!728 = !DILocation(line: 420, column: 11, scope: !672)
!729 = !DILocation(line: 421, column: 9, scope: !730)
!730 = distinct !DILexicalBlock(scope: !725, file: !3, line: 420, column: 40)
!731 = !DILocation(line: 422, column: 7, scope: !730)
!732 = !DILocation(line: 431, column: 5, scope: !476)
!733 = !DILocation(line: 435, column: 12, scope: !734)
!734 = distinct !DILexicalBlock(scope: !476, file: !3, line: 435, column: 9)
!735 = !DILocation(line: 435, column: 16, scope: !734)
!736 = !DILocation(line: 435, column: 9, scope: !476)
!737 = !DILocation(line: 437, column: 7, scope: !738)
!738 = distinct !DILexicalBlock(scope: !734, file: !3, line: 435, column: 44)
!739 = !DILocation(line: 438, column: 7, scope: !738)
!740 = !DILocation(line: 439, column: 7, scope: !738)
!741 = !DILocation(line: 553, column: 3, scope: !472)
!742 = !DILocation(line: 429, column: 23, scope: !476)
!743 = !DILocation(line: 446, column: 5, scope: !744)
!744 = distinct !DILexicalBlock(scope: !476, file: !3, line: 446, column: 5)
!745 = !{!650, !520, i64 16}
!746 = !DILocation(line: 447, column: 5, scope: !476)
!747 = !DILocation(line: 450, column: 9, scope: !748)
!748 = distinct !DILexicalBlock(scope: !476, file: !3, line: 450, column: 9)
!749 = !DILocation(line: 450, column: 43, scope: !748)
!750 = !DILocation(line: 450, column: 57, scope: !748)
!751 = !DILocation(line: 450, column: 68, scope: !748)
!752 = !{!753, !520, i64 1}
!753 = !{!"ns_header", !520, i64 0, !520, i64 1, !519, i64 2, !548, i64 4, !559, i64 8}
!754 = !DILocation(line: 450, column: 73, scope: !748)
!755 = !DILocation(line: 451, column: 8, scope: !748)
!756 = !DILocation(line: 450, column: 78, scope: !748)
!757 = !DILocation(line: 452, column: 7, scope: !758)
!758 = distinct !DILexicalBlock(scope: !748, file: !3, line: 451, column: 47)
!759 = !DILocation(line: 453, column: 7, scope: !758)
!760 = !DILocation(line: 454, column: 7, scope: !758)
!761 = !DILocation(line: 463, column: 16, scope: !762)
!762 = distinct !DILexicalBlock(scope: !476, file: !3, line: 463, column: 9)
!763 = !DILocation(line: 463, column: 9, scope: !476)
!764 = !DILocation(line: 463, column: 9, scope: !762)
!765 = !DILocation(line: 464, column: 63, scope: !766)
!766 = distinct !DILexicalBlock(scope: !762, file: !3, line: 463, column: 51)
!767 = !DILocation(line: 464, column: 20, scope: !766)
!768 = !DILocation(line: 430, column: 27, scope: !476)
!769 = !DILocation(line: 465, column: 61, scope: !770)
!770 = distinct !DILexicalBlock(scope: !766, file: !3, line: 465, column: 11)
!771 = !DILocation(line: 465, column: 49, scope: !770)
!772 = !DILocation(line: 465, column: 68, scope: !770)
!773 = !DILocation(line: 465, column: 46, scope: !770)
!774 = !DILocation(line: 465, column: 18, scope: !770)
!775 = !DILocation(line: 465, column: 11, scope: !766)
!776 = !DILocation(line: 0, scope: !777)
!777 = distinct !DILexicalBlock(scope: !762, file: !3, line: 468, column: 12)
!778 = !DILocation(line: 432, column: 10, scope: !476)
!779 = !DILocation(line: 475, column: 12, scope: !780)
!780 = distinct !DILexicalBlock(scope: !781, file: !3, line: 475, column: 11)
!781 = distinct !DILexicalBlock(scope: !782, file: !3, line: 474, column: 51)
!782 = distinct !DILexicalBlock(scope: !783, file: !3, line: 474, column: 5)
!783 = distinct !DILexicalBlock(scope: !476, file: !3, line: 474, column: 5)
!784 = !DILocation(line: 475, column: 59, scope: !780)
!785 = !DILocation(line: 476, column: 13, scope: !780)
!786 = !DILocation(line: 476, column: 64, scope: !780)
!787 = !DILocation(line: 478, column: 11, scope: !780)
!788 = !DILocation(line: 475, column: 11, scope: !781)
!789 = !DILocation(line: 491, column: 9, scope: !790)
!790 = distinct !DILexicalBlock(scope: !476, file: !3, line: 491, column: 9)
!791 = !DILocation(line: 493, column: 7, scope: !792)
!792 = distinct !DILexicalBlock(scope: !793, file: !3, line: 493, column: 7)
!793 = distinct !DILexicalBlock(scope: !790, file: !3, line: 491, column: 49)
!794 = !DILocation(line: 494, column: 14, scope: !795)
!795 = distinct !DILexicalBlock(scope: !796, file: !3, line: 494, column: 13)
!796 = distinct !DILexicalBlock(scope: !797, file: !3, line: 493, column: 53)
!797 = distinct !DILexicalBlock(scope: !792, file: !3, line: 493, column: 7)
!798 = !DILocation(line: 494, column: 63, scope: !795)
!799 = !DILocation(line: 495, column: 13, scope: !795)
!800 = !DILocation(line: 494, column: 13, scope: !796)
!801 = !DILocation(line: 497, column: 11, scope: !802)
!802 = distinct !DILexicalBlock(scope: !795, file: !3, line: 495, column: 68)
!803 = !DILocation(line: 498, column: 15, scope: !804)
!804 = distinct !DILexicalBlock(scope: !802, file: !3, line: 498, column: 15)
!805 = !DILocation(line: 498, column: 15, scope: !802)
!806 = !DILocation(line: 147, column: 43, scope: !587, inlinedAt: !807)
!807 = distinct !DILocation(line: 500, column: 13, scope: !808)
!808 = distinct !DILexicalBlock(scope: !804, file: !3, line: 498, column: 67)
!809 = !DILocation(line: 147, column: 55, scope: !587, inlinedAt: !807)
!810 = !DILocation(line: 155, column: 3, scope: !587, inlinedAt: !807)
!811 = !DILocation(line: 163, column: 16, scope: !594, inlinedAt: !807)
!812 = !DILocation(line: 163, column: 7, scope: !587, inlinedAt: !807)
!813 = !DILocation(line: 164, column: 10, scope: !593, inlinedAt: !807)
!814 = !DILocation(line: 166, column: 12, scope: !603, inlinedAt: !807)
!815 = !DILocation(line: 166, column: 63, scope: !603, inlinedAt: !807)
!816 = !DILocation(line: 167, column: 12, scope: !603, inlinedAt: !807)
!817 = !DILocation(line: 166, column: 11, scope: !604, inlinedAt: !807)
!818 = !DILocation(line: 168, column: 9, scope: !611, inlinedAt: !807)
!819 = !DILocation(line: 169, column: 7, scope: !611, inlinedAt: !807)
!820 = !DILocation(line: 173, column: 1, scope: !587, inlinedAt: !807)
!821 = !DILocation(line: 501, column: 11, scope: !808)
!822 = !DILocation(line: 493, column: 48, scope: !797)
!823 = !DILocation(line: 493, column: 21, scope: !797)
!824 = distinct !{!824, !791, !825}
!825 = !DILocation(line: 503, column: 7, scope: !792)
!826 = !DILocation(line: 507, column: 22, scope: !827)
!827 = distinct !DILexicalBlock(scope: !828, file: !3, line: 507, column: 11)
!828 = distinct !DILexicalBlock(scope: !790, file: !3, line: 504, column: 12)
!829 = !DILocation(line: 507, column: 11, scope: !828)
!830 = !DILocation(line: 1405, column: 9, scope: !644, inlinedAt: !831)
!831 = distinct !DILocation(line: 515, column: 11, scope: !828)
!832 = !DILocation(line: 509, column: 9, scope: !833)
!833 = distinct !DILexicalBlock(scope: !827, file: !3, line: 507, column: 31)
!834 = !DILocation(line: 510, column: 9, scope: !833)
!835 = !DILocation(line: 511, column: 9, scope: !833)
!836 = !DILocation(line: 1403, column: 8, scope: !636, inlinedAt: !831)
!837 = !DILocation(line: 1405, column: 9, scope: !645, inlinedAt: !831)
!838 = !DILocation(line: 1404, column: 44, scope: !646, inlinedAt: !831)
!839 = !DILocation(line: 1404, column: 17, scope: !646, inlinedAt: !831)
!840 = !DILocation(line: 1404, column: 3, scope: !647, inlinedAt: !831)
!841 = !DILocation(line: 1410, column: 1, scope: !636, inlinedAt: !831)
!842 = !DILocation(line: 518, column: 13, scope: !843)
!843 = distinct !DILexicalBlock(scope: !844, file: !3, line: 518, column: 13)
!844 = distinct !DILexicalBlock(scope: !845, file: !3, line: 516, column: 18)
!845 = distinct !DILexicalBlock(scope: !828, file: !3, line: 516, column: 11)
!846 = !DILocation(line: 518, column: 31, scope: !843)
!847 = !DILocation(line: 518, column: 37, scope: !843)
!848 = !DILocation(line: 518, column: 13, scope: !844)
!849 = !DILocation(line: 519, column: 29, scope: !850)
!850 = distinct !DILexicalBlock(scope: !843, file: !3, line: 518, column: 56)
!851 = !DILocation(line: 519, column: 35, scope: !850)
!852 = !DILocation(line: 520, column: 11, scope: !850)
!853 = !DILocation(line: 525, column: 9, scope: !850)
!854 = !DILocation(line: 530, column: 13, scope: !855)
!855 = distinct !DILexicalBlock(scope: !845, file: !3, line: 526, column: 14)
!856 = !DILocation(line: 531, column: 15, scope: !857)
!857 = distinct !DILexicalBlock(scope: !855, file: !3, line: 531, column: 13)
!858 = !DILocation(line: 531, column: 13, scope: !855)
!859 = !DILocation(line: 534, column: 11, scope: !860)
!860 = distinct !DILexicalBlock(scope: !857, file: !3, line: 531, column: 20)
!861 = !DILocation(line: 535, column: 11, scope: !860)
!862 = !{!517, !519, i64 298}
!863 = !DILocation(line: 538, column: 9, scope: !855)
!864 = !DILocation(line: 538, column: 27, scope: !855)
!865 = !DILocation(line: 538, column: 33, scope: !855)
!866 = !DILocation(line: 539, column: 9, scope: !855)
!867 = !DILocation(line: 540, column: 9, scope: !868)
!868 = distinct !DILexicalBlock(scope: !855, file: !3, line: 540, column: 9)
!869 = !DILocation(line: 544, column: 27, scope: !855)
!870 = !DILocation(line: 0, scope: !855)
!871 = !DILocation(line: 549, column: 7, scope: !828)
!872 = !DILocation(line: 431, column: 16, scope: !476)
!873 = !DILocation(line: 565, column: 12, scope: !874)
!874 = distinct !DILexicalBlock(scope: !481, file: !3, line: 565, column: 9)
!875 = !DILocation(line: 565, column: 16, scope: !874)
!876 = !DILocation(line: 565, column: 9, scope: !481)
!877 = !DILocation(line: 567, column: 7, scope: !878)
!878 = distinct !DILexicalBlock(scope: !874, file: !3, line: 565, column: 44)
!879 = !DILocation(line: 568, column: 7, scope: !878)
!880 = !DILocation(line: 569, column: 7, scope: !878)
!881 = !DILocation(line: 570, column: 7, scope: !878)
!882 = !DILocation(line: 556, column: 23, scope: !481)
!883 = !DILocation(line: 576, column: 10, scope: !884)
!884 = distinct !DILexicalBlock(scope: !481, file: !3, line: 576, column: 9)
!885 = !DILocation(line: 576, column: 55, scope: !884)
!886 = !DILocation(line: 577, column: 9, scope: !884)
!887 = !DILocation(line: 577, column: 43, scope: !884)
!888 = !DILocation(line: 577, column: 57, scope: !884)
!889 = !DILocation(line: 577, column: 68, scope: !884)
!890 = !{!891, !520, i64 1}
!891 = !{!"ra_header", !520, i64 0, !520, i64 1, !519, i64 2, !520, i64 4, !520, i64 5, !519, i64 6, !548, i64 8, !548, i64 12}
!892 = !DILocation(line: 577, column: 73, scope: !884)
!893 = !DILocation(line: 576, column: 9, scope: !481)
!894 = !DILocation(line: 578, column: 7, scope: !895)
!895 = distinct !DILexicalBlock(scope: !884, file: !3, line: 577, column: 79)
!896 = !DILocation(line: 579, column: 7, scope: !895)
!897 = !DILocation(line: 580, column: 7, scope: !895)
!898 = !DILocation(line: 581, column: 7, scope: !895)
!899 = !DILocation(line: 589, column: 15, scope: !900)
!900 = distinct !DILexicalBlock(scope: !481, file: !3, line: 589, column: 9)
!901 = !{!551, !520, i64 266}
!902 = !DILocation(line: 589, column: 24, scope: !900)
!903 = !DILocation(line: 589, column: 58, scope: !900)
!904 = !DILocation(line: 590, column: 10, scope: !900)
!905 = !DILocation(line: 590, column: 27, scope: !900)
!906 = !DILocation(line: 589, column: 9, scope: !481)
!907 = !DILocation(line: 0, scope: !908)
!908 = distinct !DILexicalBlock(scope: !900, file: !3, line: 590, column: 39)
!909 = !DILocalVariable(name: "netif", arg: 2, scope: !910, file: !3, line: 1778, type: !274)
!910 = distinct !DISubprogram(name: "nd6_get_router", scope: !3, file: !3, line: 1778, type: !444, isLocal: true, isDefinition: true, scopeLine: 1779, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !911)
!911 = !{!912, !909, !913}
!912 = !DILocalVariable(name: "router_addr", arg: 1, scope: !910, file: !3, line: 1778, type: !162)
!913 = !DILocalVariable(name: "i", scope: !910, file: !3, line: 1780, type: !307)
!914 = !DILocation(line: 1778, column: 61, scope: !910, inlinedAt: !915)
!915 = distinct !DILocation(line: 598, column: 9, scope: !481)
!916 = !DILocation(line: 1780, column: 8, scope: !910, inlinedAt: !915)
!917 = !DILocation(line: 1786, column: 33, scope: !918, inlinedAt: !915)
!918 = distinct !DILexicalBlock(scope: !919, file: !3, line: 1786, column: 9)
!919 = distinct !DILexicalBlock(scope: !920, file: !3, line: 1785, column: 46)
!920 = distinct !DILexicalBlock(scope: !921, file: !3, line: 1785, column: 3)
!921 = distinct !DILexicalBlock(scope: !910, file: !3, line: 1785, column: 3)
!922 = !{!923, !528, i64 0}
!923 = !{!"nd6_router_list_entry", !528, i64 0, !548, i64 8, !520, i64 12}
!924 = !DILocation(line: 1786, column: 48, scope: !918, inlinedAt: !915)
!925 = !DILocation(line: 1786, column: 57, scope: !918, inlinedAt: !915)
!926 = !DILocation(line: 1787, column: 76, scope: !918, inlinedAt: !915)
!927 = !DILocation(line: 1787, column: 34, scope: !918, inlinedAt: !915)
!928 = !DILocation(line: 1787, column: 10, scope: !918, inlinedAt: !915)
!929 = !DILocation(line: 1788, column: 9, scope: !918, inlinedAt: !915)
!930 = !DILocation(line: 1786, column: 9, scope: !919, inlinedAt: !915)
!931 = !DILocation(line: 1795, column: 1, scope: !910, inlinedAt: !915)
!932 = !DILocalVariable(name: "netif", arg: 2, scope: !933, file: !3, line: 1805, type: !274)
!933 = distinct !DISubprogram(name: "nd6_new_router", scope: !3, file: !3, line: 1805, type: !444, isLocal: true, isDefinition: true, scopeLine: 1806, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !934)
!934 = !{!935, !932, !936, !937, !938}
!935 = !DILocalVariable(name: "router_addr", arg: 1, scope: !933, file: !3, line: 1805, type: !162)
!936 = !DILocalVariable(name: "router_index", scope: !933, file: !3, line: 1807, type: !307)
!937 = !DILocalVariable(name: "free_router_index", scope: !933, file: !3, line: 1808, type: !307)
!938 = !DILocalVariable(name: "neighbor_index", scope: !933, file: !3, line: 1809, type: !307)
!939 = !DILocation(line: 1805, column: 61, scope: !933, inlinedAt: !940)
!940 = distinct !DILocation(line: 601, column: 11, scope: !941)
!941 = distinct !DILexicalBlock(scope: !942, file: !3, line: 599, column: 16)
!942 = distinct !DILexicalBlock(scope: !481, file: !3, line: 599, column: 9)
!943 = !DILocation(line: 1401, column: 49, scope: !636, inlinedAt: !944)
!944 = distinct !DILocation(line: 1814, column: 20, scope: !933, inlinedAt: !940)
!945 = !DILocation(line: 1403, column: 8, scope: !636, inlinedAt: !944)
!946 = !DILocation(line: 1404, column: 3, scope: !647, inlinedAt: !944)
!947 = !DILocation(line: 1405, column: 9, scope: !644, inlinedAt: !944)
!948 = !DILocation(line: 1405, column: 9, scope: !645, inlinedAt: !944)
!949 = !DILocation(line: 1404, column: 44, scope: !646, inlinedAt: !944)
!950 = !DILocation(line: 1404, column: 17, scope: !646, inlinedAt: !944)
!951 = !DILocation(line: 1410, column: 1, scope: !636, inlinedAt: !944)
!952 = !DILocation(line: 1815, column: 7, scope: !933, inlinedAt: !940)
!953 = !DILocation(line: 1809, column: 8, scope: !933, inlinedAt: !940)
!954 = !DILocation(line: 1815, column: 22, scope: !955, inlinedAt: !940)
!955 = distinct !DILexicalBlock(scope: !933, file: !3, line: 1815, column: 7)
!956 = !DILocation(line: 1831, column: 3, scope: !933, inlinedAt: !940)
!957 = !DILocation(line: 1817, column: 22, scope: !958, inlinedAt: !940)
!958 = distinct !DILexicalBlock(scope: !955, file: !3, line: 1815, column: 27)
!959 = !DILocation(line: 1818, column: 24, scope: !960, inlinedAt: !940)
!960 = distinct !DILexicalBlock(scope: !958, file: !3, line: 1818, column: 9)
!961 = !DILocation(line: 1818, column: 9, scope: !958, inlinedAt: !940)
!962 = !DILocation(line: 1822, column: 5, scope: !963, inlinedAt: !940)
!963 = distinct !DILexicalBlock(scope: !958, file: !3, line: 1822, column: 5)
!964 = !DILocation(line: 1823, column: 36, scope: !958, inlinedAt: !940)
!965 = !DILocation(line: 1823, column: 42, scope: !958, inlinedAt: !940)
!966 = !DILocation(line: 1824, column: 36, scope: !958, inlinedAt: !940)
!967 = !DILocation(line: 1824, column: 38, scope: !958, inlinedAt: !940)
!968 = !DILocation(line: 1825, column: 36, scope: !958, inlinedAt: !940)
!969 = !DILocation(line: 1825, column: 42, scope: !958, inlinedAt: !940)
!970 = !DILocation(line: 1826, column: 44, scope: !958, inlinedAt: !940)
!971 = !DILocation(line: 1826, column: 56, scope: !958, inlinedAt: !940)
!972 = !DILocalVariable(name: "entry", arg: 1, scope: !973, file: !3, line: 1168, type: !396)
!973 = distinct !DISubprogram(name: "nd6_send_neighbor_cache_probe", scope: !3, file: !3, line: 1168, type: !974, isLocal: true, isDefinition: true, scopeLine: 1169, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !976)
!974 = !DISubroutineType(types: !975)
!975 = !{null, !396, !117}
!976 = !{!972, !977}
!977 = !DILocalVariable(name: "flags", arg: 2, scope: !973, file: !3, line: 1168, type: !117)
!978 = !DILocation(line: 1168, column: 64, scope: !973, inlinedAt: !979)
!979 = distinct !DILocation(line: 1827, column: 5, scope: !958, inlinedAt: !940)
!980 = !DILocation(line: 1168, column: 76, scope: !973, inlinedAt: !979)
!981 = !DILocation(line: 1170, column: 37, scope: !973, inlinedAt: !979)
!982 = !DILocation(line: 1170, column: 3, scope: !973, inlinedAt: !979)
!983 = !DILocation(line: 1171, column: 1, scope: !973, inlinedAt: !979)
!984 = !DILocation(line: 1838, column: 42, scope: !985, inlinedAt: !940)
!985 = distinct !DILexicalBlock(scope: !986, file: !3, line: 1838, column: 8)
!986 = distinct !DILexicalBlock(scope: !987, file: !3, line: 1835, column: 84)
!987 = distinct !DILexicalBlock(scope: !988, file: !3, line: 1835, column: 3)
!988 = distinct !DILexicalBlock(scope: !933, file: !3, line: 1835, column: 3)
!989 = !DILocation(line: 1828, column: 3, scope: !958, inlinedAt: !940)
!990 = !DILocation(line: 1831, column: 34, scope: !933, inlinedAt: !940)
!991 = !DILocation(line: 1831, column: 43, scope: !933, inlinedAt: !940)
!992 = !{!649, !520, i64 49}
!993 = !DILocation(line: 1808, column: 8, scope: !933, inlinedAt: !940)
!994 = !DILocation(line: 1807, column: 8, scope: !933, inlinedAt: !940)
!995 = !DILocation(line: 1838, column: 57, scope: !985, inlinedAt: !940)
!996 = !DILocation(line: 1838, column: 8, scope: !986, inlinedAt: !940)
!997 = !DILocation(line: 1847, column: 5, scope: !998, inlinedAt: !940)
!998 = distinct !DILexicalBlock(scope: !999, file: !3, line: 1846, column: 49)
!999 = distinct !DILexicalBlock(scope: !933, file: !3, line: 1846, column: 7)
!1000 = !DILocation(line: 1847, column: 44, scope: !998, inlinedAt: !940)
!1001 = !DILocation(line: 1847, column: 59, scope: !998, inlinedAt: !940)
!1002 = !DILocation(line: 1848, column: 5, scope: !998, inlinedAt: !940)
!1003 = !DILocation(line: 1854, column: 43, scope: !933, inlinedAt: !940)
!1004 = !DILocation(line: 1857, column: 3, scope: !933, inlinedAt: !940)
!1005 = !DILocation(line: 1841, column: 58, scope: !1006, inlinedAt: !940)
!1006 = distinct !DILexicalBlock(scope: !986, file: !3, line: 1841, column: 9)
!1007 = !DILocation(line: 1841, column: 9, scope: !986, inlinedAt: !940)
!1008 = !DILocation(line: 1846, column: 25, scope: !999, inlinedAt: !940)
!1009 = !DILocation(line: 1846, column: 7, scope: !933, inlinedAt: !940)
!1010 = !DILocation(line: 1858, column: 1, scope: !933, inlinedAt: !940)
!1011 = !DILocation(line: 606, column: 7, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1013, file: !3, line: 604, column: 16)
!1013 = distinct !DILexicalBlock(scope: !481, file: !3, line: 604, column: 9)
!1014 = !DILocation(line: 607, column: 7, scope: !1012)
!1015 = !DILocation(line: 608, column: 7, scope: !1012)
!1016 = !DILocation(line: 0, scope: !481)
!1017 = !DILocation(line: 612, column: 68, scope: !481)
!1018 = !{!891, !519, i64 6}
!1019 = !DILocation(line: 612, column: 49, scope: !481)
!1020 = !DILocation(line: 612, column: 28, scope: !481)
!1021 = !DILocation(line: 612, column: 47, scope: !481)
!1022 = !{!923, !548, i64 8}
!1023 = !DILocation(line: 616, column: 17, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !481, file: !3, line: 616, column: 9)
!1025 = !{!891, !548, i64 12}
!1026 = !DILocation(line: 616, column: 31, scope: !1024)
!1027 = !DILocation(line: 616, column: 9, scope: !481)
!1028 = !DILocation(line: 617, column: 23, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 616, column: 36)
!1030 = !DILocation(line: 617, column: 21, scope: !1029)
!1031 = !DILocation(line: 618, column: 5, scope: !1029)
!1032 = !DILocation(line: 619, column: 17, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !481, file: !3, line: 619, column: 9)
!1034 = !{!891, !548, i64 8}
!1035 = !DILocation(line: 619, column: 32, scope: !1033)
!1036 = !DILocation(line: 619, column: 9, scope: !481)
!1037 = !DILocation(line: 620, column: 24, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 619, column: 37)
!1039 = !DILocation(line: 620, column: 22, scope: !1038)
!1040 = !DILocation(line: 621, column: 5, scope: !1038)
!1041 = !DILocation(line: 628, column: 44, scope: !481)
!1042 = !{!891, !520, i64 5}
!1043 = !DILocation(line: 628, column: 28, scope: !481)
!1044 = !DILocation(line: 628, column: 34, scope: !481)
!1045 = !{!923, !520, i64 12}
!1046 = !DILocation(line: 558, column: 11, scope: !481)
!1047 = !DILocation(line: 640, column: 16, scope: !481)
!1048 = !{!527, !519, i64 16}
!1049 = !DILocation(line: 640, column: 34, scope: !481)
!1050 = !DILocation(line: 640, column: 5, scope: !481)
!1051 = !DILocation(line: 643, column: 51, scope: !485)
!1052 = !DILocation(line: 643, column: 25, scope: !485)
!1053 = !DILocation(line: 643, column: 11, scope: !485)
!1054 = !DILocation(line: 644, column: 23, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !485, file: !3, line: 644, column: 11)
!1056 = !DILocation(line: 644, column: 11, scope: !485)
!1057 = !DILocation(line: 648, column: 20, scope: !485)
!1058 = !DILocation(line: 642, column: 13, scope: !485)
!1059 = !DILocation(line: 649, column: 11, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !485, file: !3, line: 649, column: 11)
!1061 = !DILocation(line: 649, column: 27, scope: !1060)
!1062 = !DILocation(line: 649, column: 24, scope: !1060)
!1063 = !DILocation(line: 649, column: 35, scope: !1060)
!1064 = !DILocation(line: 649, column: 22, scope: !1060)
!1065 = !DILocation(line: 649, column: 11, scope: !485)
!1066 = !DILocation(line: 653, column: 14, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !485, file: !3, line: 653, column: 11)
!1068 = !DILocation(line: 653, column: 18, scope: !1067)
!1069 = !DILocation(line: 653, column: 11, scope: !485)
!1070 = !DILocation(line: 655, column: 30, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 653, column: 33)
!1072 = !DILocation(line: 655, column: 19, scope: !1071)
!1073 = !DILocation(line: 557, column: 11, scope: !481)
!1074 = !DILocation(line: 656, column: 7, scope: !1071)
!1075 = !DILocation(line: 658, column: 24, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1077, file: !3, line: 658, column: 13)
!1077 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 656, column: 14)
!1078 = !DILocation(line: 658, column: 13, scope: !1077)
!1079 = !DILocation(line: 659, column: 25, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 658, column: 49)
!1081 = !DILocation(line: 641, column: 12, scope: !485)
!1082 = !DILocation(line: 661, column: 27, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 661, column: 15)
!1084 = !DILocation(line: 661, column: 15, scope: !1080)
!1085 = !DILocation(line: 0, scope: !485)
!1086 = !DILocation(line: 668, column: 22, scope: !1077)
!1087 = !DILocation(line: 0, scope: !1077)
!1088 = !DILocation(line: 670, column: 21, scope: !485)
!1089 = !DILocation(line: 671, column: 7, scope: !485)
!1090 = !DILocation(line: 675, column: 24, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !489, file: !3, line: 675, column: 13)
!1092 = !DILocation(line: 675, column: 13, scope: !489)
!1093 = !DILocation(line: 674, column: 31, scope: !489)
!1094 = !DILocation(line: 679, column: 37, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !489, file: !3, line: 679, column: 13)
!1096 = !DILocation(line: 679, column: 52, scope: !1095)
!1097 = !DILocation(line: 679, column: 61, scope: !1095)
!1098 = !DILocation(line: 680, column: 53, scope: !1095)
!1099 = !DILocation(line: 680, column: 59, scope: !1095)
!1100 = !DILocation(line: 679, column: 13, scope: !489)
!1101 = !DILocation(line: 681, column: 11, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 680, column: 79)
!1103 = !DILocation(line: 682, column: 34, scope: !1102)
!1104 = !DILocation(line: 682, column: 50, scope: !1102)
!1105 = !DILocation(line: 682, column: 56, scope: !1102)
!1106 = !DILocation(line: 683, column: 75, scope: !1102)
!1107 = !DILocation(line: 683, column: 58, scope: !1102)
!1108 = !DILocation(line: 683, column: 73, scope: !1102)
!1109 = !DILocation(line: 684, column: 9, scope: !1102)
!1110 = !DILocation(line: 691, column: 24, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !492, file: !3, line: 691, column: 13)
!1112 = !DILocation(line: 691, column: 13, scope: !492)
!1113 = !DILocation(line: 689, column: 28, scope: !492)
!1114 = !DILocation(line: 695, column: 37, scope: !492)
!1115 = !{!1116, !548, i64 4}
!1116 = !{!"mtu_option", !520, i64 0, !520, i64 1, !519, i64 2, !548, i64 4}
!1117 = !DILocation(line: 695, column: 17, scope: !492)
!1118 = !DILocation(line: 690, column: 15, scope: !492)
!1119 = !DILocation(line: 696, column: 29, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !492, file: !3, line: 696, column: 13)
!1121 = !DILocation(line: 698, column: 20, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 698, column: 15)
!1123 = distinct !DILexicalBlock(scope: !1120, file: !3, line: 696, column: 51)
!1124 = !{!551, !519, i64 250}
!1125 = !DILocation(line: 698, column: 15, scope: !1122)
!1126 = !DILocation(line: 698, column: 15, scope: !1123)
!1127 = !DILocation(line: 700, column: 25, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 698, column: 25)
!1129 = !DILocation(line: 700, column: 23, scope: !1128)
!1130 = !{!551, !519, i64 252}
!1131 = !DILocation(line: 701, column: 11, scope: !1128)
!1132 = !DILocation(line: 702, column: 25, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 701, column: 18)
!1134 = !DILocation(line: 702, column: 23, scope: !1133)
!1135 = !DILocation(line: 712, column: 24, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !495, file: !3, line: 712, column: 13)
!1137 = !DILocation(line: 712, column: 13, scope: !495)
!1138 = !DILocation(line: 710, column: 31, scope: !495)
!1139 = !DILocation(line: 719, column: 9, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !495, file: !3, line: 719, column: 9)
!1141 = !DILocation(line: 720, column: 9, scope: !495)
!1142 = !DILocation(line: 723, column: 28, scope: !499)
!1143 = !{!1144, !520, i64 3}
!1144 = !{!"prefix_option", !520, i64 0, !520, i64 1, !520, i64 2, !520, i64 3, !548, i64 4, !548, i64 8, !520, i64 12, !520, i64 15, !559, i64 16}
!1145 = !DILocation(line: 723, column: 34, scope: !499)
!1146 = !DILocation(line: 723, column: 61, scope: !499)
!1147 = !DILocation(line: 724, column: 28, scope: !499)
!1148 = !{!1144, !520, i64 2}
!1149 = !DILocation(line: 724, column: 42, scope: !499)
!1150 = !DILocation(line: 723, column: 15, scope: !500)
!1151 = !DILocation(line: 729, column: 49, scope: !498)
!1152 = !{!1144, !548, i64 4}
!1153 = !DILocation(line: 729, column: 26, scope: !498)
!1154 = !DILocation(line: 726, column: 19, scope: !498)
!1155 = !DILocation(line: 711, column: 20, scope: !495)
!1156 = !DILocalVariable(name: "prefix", arg: 1, scope: !1157, file: !3, line: 1868, type: !162)
!1157 = distinct !DISubprogram(name: "nd6_get_onlink_prefix", scope: !3, file: !3, line: 1868, type: !444, isLocal: true, isDefinition: true, scopeLine: 1869, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1158)
!1158 = !{!1156, !1159, !1160}
!1159 = !DILocalVariable(name: "netif", arg: 2, scope: !1157, file: !3, line: 1868, type: !274)
!1160 = !DILocalVariable(name: "i", scope: !1157, file: !3, line: 1870, type: !307)
!1161 = !DILocation(line: 1868, column: 41, scope: !1157, inlinedAt: !1162)
!1162 = distinct !DILocation(line: 732, column: 22, scope: !498)
!1163 = !DILocation(line: 1868, column: 63, scope: !1157, inlinedAt: !1162)
!1164 = !DILocation(line: 1870, column: 8, scope: !1157, inlinedAt: !1162)
!1165 = !DILocation(line: 1874, column: 10, scope: !1166, inlinedAt: !1162)
!1166 = distinct !DILexicalBlock(scope: !1167, file: !3, line: 1874, column: 9)
!1167 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 1873, column: 47)
!1168 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 1873, column: 3)
!1169 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 1873, column: 3)
!1170 = !{!1171, !520, i64 16}
!1171 = !{!"nd6_prefix_list_entry", !650, i64 0, !528, i64 24, !548, i64 32}
!1172 = !DILocation(line: 1875, column: 25, scope: !1166, inlinedAt: !1162)
!1173 = !DILocation(line: 1875, column: 31, scope: !1166, inlinedAt: !1162)
!1174 = !DILocation(line: 1874, column: 61, scope: !1166, inlinedAt: !1162)
!1175 = !DILocation(line: 1882, column: 1, scope: !1157, inlinedAt: !1162)
!1176 = !DILocation(line: 727, column: 18, scope: !498)
!1177 = !DILocation(line: 733, column: 42, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !498, file: !3, line: 733, column: 17)
!1179 = !DILocation(line: 733, column: 28, scope: !1178)
!1180 = !DILocalVariable(name: "prefix", arg: 1, scope: !1181, file: !3, line: 1892, type: !162)
!1181 = distinct !DISubprogram(name: "nd6_new_onlink_prefix", scope: !3, file: !3, line: 1892, type: !444, isLocal: true, isDefinition: true, scopeLine: 1893, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1182)
!1182 = !{!1180, !1183, !1184}
!1183 = !DILocalVariable(name: "netif", arg: 2, scope: !1181, file: !3, line: 1892, type: !274)
!1184 = !DILocalVariable(name: "i", scope: !1181, file: !3, line: 1894, type: !307)
!1185 = !DILocation(line: 1892, column: 41, scope: !1181, inlinedAt: !1186)
!1186 = distinct !DILocation(line: 735, column: 24, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 733, column: 47)
!1188 = !DILocation(line: 1892, column: 63, scope: !1181, inlinedAt: !1186)
!1189 = !DILocation(line: 1894, column: 8, scope: !1181, inlinedAt: !1186)
!1190 = !DILocation(line: 1898, column: 25, scope: !1191, inlinedAt: !1186)
!1191 = distinct !DILexicalBlock(scope: !1192, file: !3, line: 1898, column: 9)
!1192 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 1897, column: 47)
!1193 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 1897, column: 3)
!1194 = distinct !DILexicalBlock(scope: !1181, file: !3, line: 1897, column: 3)
!1195 = !{!1171, !528, i64 24}
!1196 = !DILocation(line: 1898, column: 31, scope: !1191, inlinedAt: !1186)
!1197 = !DILocation(line: 1899, column: 25, scope: !1191, inlinedAt: !1186)
!1198 = !DILocation(line: 1899, column: 44, scope: !1191, inlinedAt: !1186)
!1199 = !DILocation(line: 1898, column: 40, scope: !1191, inlinedAt: !1186)
!1200 = !DILocation(line: 1901, column: 28, scope: !1201, inlinedAt: !1186)
!1201 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 1899, column: 51)
!1202 = !DILocation(line: 1902, column: 7, scope: !1203, inlinedAt: !1186)
!1203 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 1902, column: 7)
!1204 = !DILocation(line: 737, column: 17, scope: !498)
!1205 = !DILocation(line: 1909, column: 1, scope: !1181, inlinedAt: !1186)
!1206 = !DILocation(line: 0, scope: !498)
!1207 = !DILocation(line: 738, column: 35, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1209, file: !3, line: 737, column: 30)
!1209 = distinct !DILexicalBlock(scope: !498, file: !3, line: 737, column: 17)
!1210 = !DILocation(line: 738, column: 54, scope: !1208)
!1211 = !{!1171, !548, i64 32}
!1212 = !DILocation(line: 739, column: 13, scope: !1208)
!1213 = !DILocation(line: 742, column: 27, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !500, file: !3, line: 742, column: 15)
!1215 = !DILocation(line: 742, column: 33, scope: !1214)
!1216 = !DILocation(line: 742, column: 15, scope: !500)
!1217 = !DILocalVariable(name: "netif", arg: 1, scope: !1218, file: !3, line: 186, type: !274)
!1218 = distinct !DISubprogram(name: "nd6_process_autoconfig_prefix", scope: !3, file: !3, line: 186, type: !1219, isLocal: true, isDefinition: true, scopeLine: 188, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1221)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{null, !274, !206, !162}
!1221 = !{!1217, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230}
!1222 = !DILocalVariable(name: "prefix_opt", arg: 2, scope: !1218, file: !3, line: 187, type: !206)
!1223 = !DILocalVariable(name: "prefix_addr", arg: 3, scope: !1218, file: !3, line: 187, type: !162)
!1224 = !DILocalVariable(name: "ip6addr", scope: !1218, file: !3, line: 189, type: !164)
!1225 = !DILocalVariable(name: "valid_life", scope: !1218, file: !3, line: 190, type: !147)
!1226 = !DILocalVariable(name: "pref_life", scope: !1218, file: !3, line: 190, type: !147)
!1227 = !DILocalVariable(name: "addr_state", scope: !1218, file: !3, line: 191, type: !117)
!1228 = !DILocalVariable(name: "i", scope: !1218, file: !3, line: 192, type: !307)
!1229 = !DILocalVariable(name: "free_idx", scope: !1218, file: !3, line: 192, type: !307)
!1230 = !DILocalVariable(name: "remaining_life", scope: !1231, file: !3, line: 216, type: !147)
!1231 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 213, column: 65)
!1232 = distinct !DILexicalBlock(scope: !1233, file: !3, line: 212, column: 9)
!1233 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 210, column: 49)
!1234 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 210, column: 3)
!1235 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 210, column: 3)
!1236 = !DILocation(line: 186, column: 45, scope: !1218, inlinedAt: !1237)
!1237 = distinct !DILocation(line: 744, column: 13, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 742, column: 63)
!1239 = !DILocation(line: 187, column: 25, scope: !1218, inlinedAt: !1237)
!1240 = !DILocation(line: 187, column: 55, scope: !1218, inlinedAt: !1237)
!1241 = !DILocation(line: 196, column: 39, scope: !1218, inlinedAt: !1237)
!1242 = !DILocation(line: 196, column: 16, scope: !1218, inlinedAt: !1237)
!1243 = !DILocation(line: 190, column: 9, scope: !1218, inlinedAt: !1237)
!1244 = !DILocation(line: 197, column: 38, scope: !1218, inlinedAt: !1237)
!1245 = !{!1144, !548, i64 8}
!1246 = !DILocation(line: 197, column: 15, scope: !1218, inlinedAt: !1237)
!1247 = !DILocation(line: 190, column: 21, scope: !1218, inlinedAt: !1237)
!1248 = !DILocation(line: 198, column: 17, scope: !1249, inlinedAt: !1237)
!1249 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 198, column: 7)
!1250 = !DILocation(line: 198, column: 30, scope: !1249, inlinedAt: !1237)
!1251 = !DILocation(line: 198, column: 45, scope: !1249, inlinedAt: !1237)
!1252 = !DILocation(line: 198, column: 59, scope: !1249, inlinedAt: !1237)
!1253 = !DILocation(line: 198, column: 7, scope: !1218, inlinedAt: !1237)
!1254 = !DILocation(line: 192, column: 8, scope: !1218, inlinedAt: !1237)
!1255 = !DILocation(line: 211, column: 18, scope: !1233, inlinedAt: !1237)
!1256 = !DILocation(line: 191, column: 8, scope: !1218, inlinedAt: !1237)
!1257 = !DILocation(line: 212, column: 10, scope: !1232, inlinedAt: !1237)
!1258 = !DILocation(line: 212, column: 41, scope: !1232, inlinedAt: !1237)
!1259 = !DILocation(line: 212, column: 45, scope: !1232, inlinedAt: !1237)
!1260 = !DILocation(line: 212, column: 79, scope: !1232, inlinedAt: !1237)
!1261 = !DILocation(line: 213, column: 9, scope: !1232, inlinedAt: !1237)
!1262 = !DILocation(line: 212, column: 9, scope: !1233, inlinedAt: !1237)
!1263 = !DILocation(line: 216, column: 30, scope: !1231, inlinedAt: !1237)
!1264 = !DILocation(line: 216, column: 13, scope: !1231, inlinedAt: !1237)
!1265 = !DILocation(line: 217, column: 22, scope: !1266, inlinedAt: !1237)
!1266 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 217, column: 11)
!1267 = !DILocation(line: 217, column: 47, scope: !1266, inlinedAt: !1237)
!1268 = !DILocation(line: 217, column: 33, scope: !1266, inlinedAt: !1237)
!1269 = !DILocation(line: 219, column: 33, scope: !1270, inlinedAt: !1237)
!1270 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 219, column: 18)
!1271 = !DILocation(line: 219, column: 18, scope: !1266, inlinedAt: !1237)
!1272 = !DILocation(line: 220, column: 9, scope: !1273, inlinedAt: !1237)
!1273 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 220, column: 9)
!1274 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 220, column: 9)
!1275 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 220, column: 9)
!1276 = distinct !DILexicalBlock(scope: !1270, file: !3, line: 219, column: 45)
!1277 = !DILocation(line: 218, column: 9, scope: !1278, inlinedAt: !1237)
!1278 = distinct !DILexicalBlock(scope: !1279, file: !3, line: 218, column: 9)
!1279 = distinct !DILexicalBlock(scope: !1280, file: !3, line: 218, column: 9)
!1280 = distinct !DILexicalBlock(scope: !1281, file: !3, line: 218, column: 9)
!1281 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 217, column: 65)
!1282 = !DILocation(line: 222, column: 7, scope: !1283, inlinedAt: !1237)
!1283 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 222, column: 7)
!1284 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 222, column: 7)
!1285 = !DILocation(line: 222, column: 7, scope: !1284, inlinedAt: !1237)
!1286 = !DILocation(line: 222, column: 7, scope: !1287, inlinedAt: !1237)
!1287 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 222, column: 7)
!1288 = distinct !DILexicalBlock(scope: !1283, file: !3, line: 222, column: 7)
!1289 = !DILocation(line: 222, column: 7, scope: !1290, inlinedAt: !1237)
!1290 = distinct !DILexicalBlock(scope: !1291, file: !3, line: 222, column: 7)
!1291 = distinct !DILexicalBlock(scope: !1292, file: !3, line: 222, column: 7)
!1292 = distinct !DILexicalBlock(scope: !1287, file: !3, line: 222, column: 7)
!1293 = !DILocation(line: 226, column: 21, scope: !1294, inlinedAt: !1237)
!1294 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 226, column: 11)
!1295 = !DILocation(line: 226, column: 39, scope: !1294, inlinedAt: !1237)
!1296 = !DILocation(line: 226, column: 25, scope: !1294, inlinedAt: !1237)
!1297 = !DILocation(line: 227, column: 9, scope: !1298, inlinedAt: !1237)
!1298 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 226, column: 63)
!1299 = !DILocation(line: 228, column: 7, scope: !1298, inlinedAt: !1237)
!1300 = !DILocation(line: 229, column: 7, scope: !1301, inlinedAt: !1237)
!1301 = distinct !DILexicalBlock(scope: !1302, file: !3, line: 229, column: 7)
!1302 = distinct !DILexicalBlock(scope: !1303, file: !3, line: 229, column: 7)
!1303 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 229, column: 7)
!1304 = !DILocation(line: 243, column: 16, scope: !1218, inlinedAt: !1237)
!1305 = !DILocation(line: 245, column: 38, scope: !1306, inlinedAt: !1237)
!1306 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 244, column: 7)
!1307 = !DILocation(line: 189, column: 14, scope: !1218, inlinedAt: !1237)
!1308 = !DILocation(line: 254, column: 3, scope: !1309, inlinedAt: !1237)
!1309 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 254, column: 3)
!1310 = !DILocation(line: 192, column: 11, scope: !1218, inlinedAt: !1237)
!1311 = !DILocation(line: 260, column: 9, scope: !1312, inlinedAt: !1237)
!1312 = distinct !DILexicalBlock(scope: !1313, file: !3, line: 259, column: 49)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !3, line: 259, column: 3)
!1314 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 259, column: 3)
!1315 = !DILocation(line: 261, column: 11, scope: !1316, inlinedAt: !1237)
!1316 = distinct !DILexicalBlock(scope: !1317, file: !3, line: 261, column: 11)
!1317 = distinct !DILexicalBlock(scope: !1318, file: !3, line: 260, column: 62)
!1318 = distinct !DILexicalBlock(scope: !1312, file: !3, line: 260, column: 9)
!1319 = !DILocation(line: 261, column: 11, scope: !1317, inlinedAt: !1237)
!1320 = !DILocation(line: 0, scope: !1218, inlinedAt: !1237)
!1321 = !DILocation(line: 273, column: 3, scope: !1322, inlinedAt: !1237)
!1322 = distinct !DILexicalBlock(scope: !1323, file: !3, line: 273, column: 3)
!1323 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 273, column: 3)
!1324 = !DILocation(line: 273, column: 3, scope: !1325, inlinedAt: !1237)
!1325 = distinct !DILexicalBlock(scope: !1323, file: !3, line: 273, column: 3)
!1326 = !{!552, !520, i64 20}
!1327 = !DILocation(line: 274, column: 3, scope: !1328, inlinedAt: !1237)
!1328 = distinct !DILexicalBlock(scope: !1329, file: !3, line: 274, column: 3)
!1329 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 274, column: 3)
!1330 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 274, column: 3)
!1331 = !DILocation(line: 275, column: 3, scope: !1332, inlinedAt: !1237)
!1332 = distinct !DILexicalBlock(scope: !1333, file: !3, line: 275, column: 3)
!1333 = distinct !DILexicalBlock(scope: !1334, file: !3, line: 275, column: 3)
!1334 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 275, column: 3)
!1335 = !DILocation(line: 276, column: 3, scope: !1218, inlinedAt: !1237)
!1336 = !DILocation(line: 277, column: 1, scope: !1218, inlinedAt: !1237)
!1337 = !DILocation(line: 268, column: 16, scope: !1338, inlinedAt: !1237)
!1338 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 268, column: 7)
!1339 = !DILocation(line: 264, column: 25, scope: !1340, inlinedAt: !1237)
!1340 = distinct !DILexicalBlock(scope: !1318, file: !3, line: 264, column: 16)
!1341 = !DILocation(line: 268, column: 7, scope: !1218, inlinedAt: !1237)
!1342 = !DILocation(line: 244, column: 15, scope: !1306, inlinedAt: !1237)
!1343 = !{!551, !520, i64 265}
!1344 = !DILocation(line: 244, column: 8, scope: !1306, inlinedAt: !1237)
!1345 = !DILocation(line: 244, column: 52, scope: !1306, inlinedAt: !1237)
!1346 = !DILocation(line: 244, column: 38, scope: !1306, inlinedAt: !1237)
!1347 = !DILocation(line: 745, column: 11, scope: !1238)
!1348 = !DILocation(line: 797, column: 9, scope: !490)
!1349 = !DILocation(line: 798, column: 9, scope: !490)
!1350 = !DILocation(line: 801, column: 14, scope: !485)
!1351 = !DILocation(line: 640, column: 13, scope: !481)
!1352 = !DILocation(line: 640, column: 26, scope: !481)
!1353 = !DILocation(line: 640, column: 24, scope: !481)
!1354 = !DILocation(line: 813, column: 12, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !504, file: !3, line: 813, column: 9)
!1356 = !DILocation(line: 813, column: 16, scope: !1355)
!1357 = !DILocation(line: 813, column: 9, scope: !504)
!1358 = !DILocation(line: 815, column: 7, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 813, column: 50)
!1360 = !DILocation(line: 816, column: 7, scope: !1359)
!1361 = !DILocation(line: 817, column: 7, scope: !1359)
!1362 = !DILocation(line: 808, column: 29, scope: !504)
!1363 = !DILocation(line: 824, column: 5, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !504, file: !3, line: 824, column: 5)
!1365 = !DILocation(line: 825, column: 5, scope: !504)
!1366 = !DILocation(line: 828, column: 10, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !504, file: !3, line: 828, column: 9)
!1368 = !DILocation(line: 828, column: 55, scope: !1367)
!1369 = !DILocation(line: 829, column: 9, scope: !1367)
!1370 = !DILocation(line: 829, column: 43, scope: !1367)
!1371 = !DILocation(line: 829, column: 57, scope: !1367)
!1372 = !DILocation(line: 830, column: 20, scope: !1367)
!1373 = !{!1374, !520, i64 1}
!1374 = !{!"redirect_header", !520, i64 0, !520, i64 1, !519, i64 2, !548, i64 4, !559, i64 8, !559, i64 24}
!1375 = !DILocation(line: 830, column: 25, scope: !1367)
!1376 = !DILocation(line: 830, column: 33, scope: !1367)
!1377 = !DILocation(line: 830, column: 30, scope: !1367)
!1378 = !DILocation(line: 831, column: 7, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1367, file: !3, line: 830, column: 77)
!1380 = !DILocation(line: 832, column: 7, scope: !1379)
!1381 = !DILocation(line: 833, column: 7, scope: !1379)
!1382 = !DILocation(line: 841, column: 16, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !504, file: !3, line: 841, column: 9)
!1384 = !DILocation(line: 841, column: 9, scope: !504)
!1385 = !DILocation(line: 841, column: 9, scope: !1383)
!1386 = !DILocation(line: 842, column: 63, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1383, file: !3, line: 841, column: 57)
!1388 = !DILocation(line: 842, column: 20, scope: !1387)
!1389 = !DILocation(line: 809, column: 27, scope: !504)
!1390 = !DILocation(line: 843, column: 67, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1387, file: !3, line: 843, column: 11)
!1392 = !DILocation(line: 843, column: 55, scope: !1391)
!1393 = !DILocation(line: 843, column: 74, scope: !1391)
!1394 = !DILocation(line: 843, column: 52, scope: !1391)
!1395 = !DILocation(line: 843, column: 18, scope: !1391)
!1396 = !DILocation(line: 843, column: 11, scope: !1387)
!1397 = !DILocation(line: 0, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1383, file: !3, line: 846, column: 12)
!1399 = !DILocation(line: 810, column: 16, scope: !504)
!1400 = !DILocalVariable(name: "ip6addr", arg: 1, scope: !1401, file: !3, line: 1560, type: !162)
!1401 = distinct !DISubprogram(name: "nd6_find_destination_cache_entry", scope: !3, file: !3, line: 1560, type: !1402, isLocal: true, isDefinition: true, scopeLine: 1561, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1404)
!1402 = !DISubroutineType(types: !1403)
!1403 = !{!466, !162}
!1404 = !{!1400, !1405}
!1405 = !DILocalVariable(name: "i", scope: !1401, file: !3, line: 1562, type: !466)
!1406 = !DILocation(line: 1560, column: 52, scope: !1401, inlinedAt: !1407)
!1407 = distinct !DILocation(line: 851, column: 16, scope: !504)
!1408 = !DILocation(line: 1562, column: 9, scope: !1401, inlinedAt: !1407)
!1409 = !DILocation(line: 1566, column: 3, scope: !1410, inlinedAt: !1407)
!1410 = distinct !DILexicalBlock(scope: !1401, file: !3, line: 1566, column: 3)
!1411 = !DILocation(line: 1567, column: 9, scope: !1412, inlinedAt: !1407)
!1412 = distinct !DILexicalBlock(scope: !1413, file: !3, line: 1567, column: 9)
!1413 = distinct !DILexicalBlock(scope: !1414, file: !3, line: 1566, column: 51)
!1414 = distinct !DILexicalBlock(scope: !1410, file: !3, line: 1566, column: 3)
!1415 = !{!1416, !520, i64 16}
!1416 = !{!"nd6_destination_cache_entry", !650, i64 0, !650, i64 20, !519, i64 40, !548, i64 44}
!1417 = !DILocation(line: 1567, column: 9, scope: !1413, inlinedAt: !1407)
!1418 = !DILocation(line: 1566, column: 47, scope: !1414, inlinedAt: !1407)
!1419 = !DILocation(line: 1566, column: 17, scope: !1414, inlinedAt: !1407)
!1420 = distinct !{!1420, !1421, !1422}
!1421 = !DILocation(line: 1566, column: 3, scope: !1410)
!1422 = !DILocation(line: 1570, column: 3, scope: !1410)
!1423 = !DILocation(line: 1572, column: 1, scope: !1401, inlinedAt: !1407)
!1424 = !DILocation(line: 291, column: 9, scope: !457)
!1425 = !DILocation(line: 852, column: 9, scope: !504)
!1426 = !DILocation(line: 852, column: 18, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !504, file: !3, line: 852, column: 9)
!1428 = !DILocation(line: 854, column: 7, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1427, file: !3, line: 852, column: 23)
!1430 = !DILocation(line: 859, column: 5, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !504, file: !3, line: 859, column: 5)
!1432 = !DILocation(line: 860, column: 5, scope: !504)
!1433 = !DILocation(line: 863, column: 5, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !504, file: !3, line: 863, column: 5)
!1435 = !{!1416, !520, i64 36}
!1436 = !DILocation(line: 866, column: 20, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !504, file: !3, line: 866, column: 9)
!1438 = !DILocation(line: 866, column: 9, scope: !504)
!1439 = !DILocation(line: 867, column: 23, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 867, column: 11)
!1441 = distinct !DILexicalBlock(scope: !1437, file: !3, line: 866, column: 29)
!1442 = !{!625, !520, i64 0}
!1443 = !DILocation(line: 867, column: 28, scope: !1440)
!1444 = !DILocation(line: 867, column: 11, scope: !1441)
!1445 = !DILocation(line: 1405, column: 9, scope: !644, inlinedAt: !1446)
!1446 = distinct !DILocation(line: 868, column: 13, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1440, file: !3, line: 867, column: 62)
!1448 = !DILocation(line: 1403, column: 8, scope: !636, inlinedAt: !1446)
!1449 = !DILocation(line: 1405, column: 9, scope: !645, inlinedAt: !1446)
!1450 = !DILocation(line: 1404, column: 44, scope: !646, inlinedAt: !1446)
!1451 = !DILocation(line: 1404, column: 17, scope: !646, inlinedAt: !1446)
!1452 = !DILocation(line: 1404, column: 3, scope: !647, inlinedAt: !1446)
!1453 = !DILocation(line: 1410, column: 1, scope: !636, inlinedAt: !1446)
!1454 = !DILocation(line: 869, column: 13, scope: !1447)
!1455 = !DILocation(line: 869, column: 15, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 869, column: 13)
!1457 = !DILocation(line: 870, column: 15, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1456, file: !3, line: 869, column: 20)
!1459 = !DILocation(line: 871, column: 17, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1458, file: !3, line: 871, column: 15)
!1461 = !DILocation(line: 871, column: 15, scope: !1458)
!1462 = !DILocation(line: 872, column: 13, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1460, file: !3, line: 871, column: 23)
!1464 = !DILocation(line: 872, column: 31, scope: !1463)
!1465 = !DILocation(line: 872, column: 37, scope: !1463)
!1466 = !DILocation(line: 873, column: 13, scope: !1463)
!1467 = !DILocation(line: 874, column: 13, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1463, file: !3, line: 874, column: 13)
!1469 = !DILocation(line: 878, column: 31, scope: !1463)
!1470 = !DILocation(line: 878, column: 37, scope: !1463)
!1471 = !DILocation(line: 879, column: 39, scope: !1463)
!1472 = !DILocation(line: 879, column: 50, scope: !1463)
!1473 = !DILocation(line: 883, column: 15, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 882, column: 21)
!1475 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 882, column: 13)
!1476 = !DILocation(line: 883, column: 33, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1474, file: !3, line: 883, column: 15)
!1478 = !DILocation(line: 884, column: 13, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1477, file: !3, line: 883, column: 58)
!1480 = !DILocation(line: 887, column: 37, scope: !1479)
!1481 = !DILocation(line: 888, column: 39, scope: !1479)
!1482 = !DILocation(line: 888, column: 50, scope: !1479)
!1483 = !DILocation(line: 889, column: 11, scope: !1479)
!1484 = !DILocation(line: 903, column: 12, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !509, file: !3, line: 903, column: 9)
!1486 = !DILocation(line: 903, column: 16, scope: !1485)
!1487 = !DILocation(line: 903, column: 9, scope: !509)
!1488 = !DILocation(line: 905, column: 7, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1485, file: !3, line: 903, column: 57)
!1490 = !DILocation(line: 906, column: 7, scope: !1489)
!1491 = !DILocation(line: 907, column: 7, scope: !1489)
!1492 = !DILocation(line: 897, column: 23, scope: !509)
!1493 = !DILocation(line: 898, column: 21, scope: !509)
!1494 = !DILocation(line: 915, column: 5, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !509, file: !3, line: 915, column: 5)
!1496 = !DILocation(line: 916, column: 5, scope: !509)
!1497 = !DILocation(line: 900, column: 16, scope: !509)
!1498 = !DILocation(line: 1560, column: 52, scope: !1401, inlinedAt: !1499)
!1499 = distinct !DILocation(line: 919, column: 16, scope: !509)
!1500 = !DILocation(line: 1562, column: 9, scope: !1401, inlinedAt: !1499)
!1501 = !DILocation(line: 1566, column: 3, scope: !1410, inlinedAt: !1499)
!1502 = !DILocation(line: 1567, column: 9, scope: !1412, inlinedAt: !1499)
!1503 = !DILocation(line: 1567, column: 9, scope: !1413, inlinedAt: !1499)
!1504 = !DILocation(line: 1566, column: 47, scope: !1414, inlinedAt: !1499)
!1505 = !DILocation(line: 1566, column: 17, scope: !1414, inlinedAt: !1499)
!1506 = !DILocation(line: 1572, column: 1, scope: !1401, inlinedAt: !1499)
!1507 = !DILocation(line: 920, column: 9, scope: !509)
!1508 = !DILocation(line: 920, column: 18, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !509, file: !3, line: 920, column: 9)
!1510 = !DILocation(line: 922, column: 7, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1509, file: !3, line: 920, column: 23)
!1512 = !DILocation(line: 927, column: 33, scope: !509)
!1513 = !{!1514, !548, i64 4}
!1514 = !{!"icmp6_hdr", !520, i64 0, !520, i64 1, !519, i64 2, !548, i64 4}
!1515 = !DILocation(line: 927, column: 12, scope: !509)
!1516 = !DILocation(line: 899, column: 11, scope: !509)
!1517 = !DILocation(line: 928, column: 47, scope: !509)
!1518 = !DILocation(line: 928, column: 40, scope: !509)
!1519 = !DILocation(line: 928, column: 5, scope: !509)
!1520 = !DILocation(line: 928, column: 33, scope: !509)
!1521 = !DILocation(line: 928, column: 38, scope: !509)
!1522 = !{!1416, !519, i64 40}
!1523 = !DILocation(line: 934, column: 5, scope: !472)
!1524 = !DILocation(line: 935, column: 5, scope: !472)
!1525 = !DILocation(line: 936, column: 5, scope: !472)
!1526 = !DILocation(line: 939, column: 3, scope: !457)
!1527 = !DILocation(line: 940, column: 3, scope: !457)
!1528 = !DILocation(line: 942, column: 3, scope: !457)
!1529 = !DILocation(line: 943, column: 3, scope: !457)
!1530 = !DILocation(line: 944, column: 3, scope: !457)
!1531 = !DILocation(line: 945, column: 1, scope: !457)
!1532 = !DILocation(line: 352, column: 18, scope: !617)
!1533 = !DILocation(line: 352, column: 11, scope: !582)
!1534 = !DILocation(line: 486, column: 7, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1536, file: !3, line: 485, column: 20)
!1536 = distinct !DILexicalBlock(scope: !476, file: !3, line: 485, column: 9)
!1537 = distinct !DISubprogram(name: "nd6_send_q", scope: !3, file: !3, line: 2176, type: !1538, isLocal: true, isDefinition: true, scopeLine: 2177, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1540)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{null, !307}
!1540 = !{!1541, !1542, !1543, !1544}
!1541 = !DILocalVariable(name: "i", arg: 1, scope: !1537, file: !3, line: 2176, type: !307)
!1542 = !DILocalVariable(name: "ip6hdr", scope: !1537, file: !3, line: 2178, type: !234)
!1543 = !DILocalVariable(name: "dest", scope: !1537, file: !3, line: 2179, type: !164)
!1544 = !DILocalVariable(name: "q", scope: !1537, file: !3, line: 2181, type: !248)
!1545 = !DILocation(line: 2176, column: 17, scope: !1537)
!1546 = !DILocation(line: 2179, column: 3, scope: !1537)
!1547 = !DILocation(line: 2184, column: 15, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1537, file: !3, line: 2184, column: 7)
!1549 = !DILocation(line: 2189, column: 10, scope: !1537)
!1550 = !DILocation(line: 2189, column: 28, scope: !1537)
!1551 = !DILocation(line: 2189, column: 30, scope: !1537)
!1552 = !DILocation(line: 2189, column: 3, scope: !1537)
!1553 = !DILocation(line: 2181, column: 23, scope: !1537)
!1554 = !DILocation(line: 2193, column: 30, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1537, file: !3, line: 2189, column: 39)
!1556 = !{!1557, !528, i64 0}
!1557 = !{!"nd6_q_entry", !528, i64 0, !528, i64 8}
!1558 = !DILocation(line: 2193, column: 25, scope: !1555)
!1559 = !DILocation(line: 2195, column: 36, scope: !1555)
!1560 = !{!1557, !528, i64 8}
!1561 = !DILocation(line: 2195, column: 39, scope: !1555)
!1562 = !DILocation(line: 2178, column: 19, scope: !1537)
!1563 = !DILocation(line: 2197, column: 5, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1555, file: !3, line: 2197, column: 5)
!1565 = !DILocation(line: 2199, column: 5, scope: !1555)
!1566 = !DILocation(line: 2201, column: 24, scope: !1555)
!1567 = !DILocation(line: 2201, column: 32, scope: !1555)
!1568 = !{!551, !528, i64 208}
!1569 = !DILocation(line: 2179, column: 14, scope: !1537)
!1570 = !DILocation(line: 2201, column: 5, scope: !1555)
!1571 = !DILocation(line: 2203, column: 18, scope: !1555)
!1572 = !DILocation(line: 2203, column: 5, scope: !1555)
!1573 = !DILocation(line: 2205, column: 31, scope: !1555)
!1574 = !DILocation(line: 2205, column: 5, scope: !1555)
!1575 = distinct !{!1575, !1552, !1576}
!1576 = !DILocation(line: 2206, column: 3, scope: !1537)
!1577 = !DILocation(line: 2222, column: 1, scope: !1537)
!1578 = distinct !DISubprogram(name: "nd6_send_na", scope: !3, file: !3, line: 1254, type: !1579, isLocal: true, isDefinition: true, scopeLine: 1255, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1581)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{null, !274, !162, !117}
!1581 = !{!1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590}
!1582 = !DILocalVariable(name: "netif", arg: 1, scope: !1578, file: !3, line: 1254, type: !274)
!1583 = !DILocalVariable(name: "target_addr", arg: 2, scope: !1578, file: !3, line: 1254, type: !162)
!1584 = !DILocalVariable(name: "flags", arg: 3, scope: !1578, file: !3, line: 1254, type: !117)
!1585 = !DILocalVariable(name: "na_hdr", scope: !1578, file: !3, line: 1256, type: !124)
!1586 = !DILocalVariable(name: "lladdr_opt", scope: !1578, file: !3, line: 1257, type: !170)
!1587 = !DILocalVariable(name: "p", scope: !1578, file: !3, line: 1258, type: !253)
!1588 = !DILocalVariable(name: "src_addr", scope: !1578, file: !3, line: 1259, type: !162)
!1589 = !DILocalVariable(name: "dest_addr", scope: !1578, file: !3, line: 1260, type: !162)
!1590 = !DILocalVariable(name: "lladdr_opt_len", scope: !1578, file: !3, line: 1261, type: !131)
!1591 = !DILocation(line: 1254, column: 27, scope: !1578)
!1592 = !DILocation(line: 1254, column: 52, scope: !1578)
!1593 = !DILocation(line: 1254, column: 70, scope: !1578)
!1594 = !DILocation(line: 1263, column: 3, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1596, file: !3, line: 1263, column: 3)
!1596 = distinct !DILexicalBlock(scope: !1578, file: !3, line: 1263, column: 3)
!1597 = !DILocation(line: 1263, column: 3, scope: !1596)
!1598 = !DILocation(line: 1263, column: 3, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1600, file: !3, line: 1263, column: 3)
!1600 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 1263, column: 3)
!1601 = !DILocation(line: 1263, column: 3, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1603, file: !3, line: 1263, column: 3)
!1603 = distinct !DILexicalBlock(scope: !1604, file: !3, line: 1263, column: 3)
!1604 = distinct !DILexicalBlock(scope: !1599, file: !3, line: 1263, column: 3)
!1605 = !DILocation(line: 1259, column: 21, scope: !1578)
!1606 = !DILocation(line: 1271, column: 29, scope: !1578)
!1607 = !DILocation(line: 1271, column: 22, scope: !1578)
!1608 = !DILocation(line: 1271, column: 40, scope: !1578)
!1609 = !DILocation(line: 1271, column: 45, scope: !1578)
!1610 = !DILocation(line: 1271, column: 79, scope: !1578)
!1611 = !DILocation(line: 1271, column: 54, scope: !1578)
!1612 = !DILocation(line: 1271, column: 51, scope: !1578)
!1613 = !DILocation(line: 1261, column: 9, scope: !1578)
!1614 = !DILocation(line: 1272, column: 70, scope: !1578)
!1615 = !DILocation(line: 1272, column: 52, scope: !1578)
!1616 = !DILocation(line: 1272, column: 7, scope: !1578)
!1617 = !DILocation(line: 1258, column: 16, scope: !1578)
!1618 = !DILocation(line: 1273, column: 9, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1578, file: !3, line: 1273, column: 7)
!1620 = !DILocation(line: 1273, column: 7, scope: !1578)
!1621 = !DILocation(line: 1274, column: 5, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1619, file: !3, line: 1273, column: 18)
!1623 = !DILocation(line: 1275, column: 5, scope: !1622)
!1624 = !DILocation(line: 1279, column: 35, scope: !1578)
!1625 = !DILocation(line: 1256, column: 21, scope: !1578)
!1626 = !DILocation(line: 1280, column: 59, scope: !1578)
!1627 = !DILocation(line: 1257, column: 25, scope: !1578)
!1628 = !DILocation(line: 1282, column: 16, scope: !1578)
!1629 = !{!564, !520, i64 0}
!1630 = !DILocation(line: 1283, column: 11, scope: !1578)
!1631 = !DILocation(line: 1283, column: 16, scope: !1578)
!1632 = !DILocation(line: 1284, column: 11, scope: !1578)
!1633 = !DILocation(line: 1284, column: 18, scope: !1578)
!1634 = !{!564, !519, i64 2}
!1635 = !DILocation(line: 1285, column: 19, scope: !1578)
!1636 = !DILocation(line: 1285, column: 25, scope: !1578)
!1637 = !DILocation(line: 1285, column: 11, scope: !1578)
!1638 = !DILocation(line: 1285, column: 17, scope: !1578)
!1639 = !DILocation(line: 1286, column: 11, scope: !1578)
!1640 = !DILocation(line: 1286, column: 23, scope: !1578)
!1641 = !DILocation(line: 1287, column: 3, scope: !1578)
!1642 = !DILocation(line: 1287, column: 23, scope: !1578)
!1643 = !DILocation(line: 1288, column: 3, scope: !1578)
!1644 = !DILocation(line: 1288, column: 23, scope: !1578)
!1645 = !DILocation(line: 1289, column: 3, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1578, file: !3, line: 1289, column: 3)
!1647 = !DILocation(line: 1291, column: 20, scope: !1578)
!1648 = !DILocation(line: 1292, column: 24, scope: !1578)
!1649 = !DILocation(line: 1292, column: 15, scope: !1578)
!1650 = !DILocation(line: 1292, column: 22, scope: !1578)
!1651 = !DILocation(line: 1293, column: 3, scope: !1578)
!1652 = !DILocation(line: 1296, column: 13, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1578, file: !3, line: 1296, column: 7)
!1654 = !DILocation(line: 1296, column: 7, scope: !1578)
!1655 = !DILocation(line: 1297, column: 5, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1657, file: !3, line: 1297, column: 5)
!1657 = distinct !DILexicalBlock(scope: !1653, file: !3, line: 1296, column: 45)
!1658 = !DILocation(line: 1260, column: 21, scope: !1578)
!1659 = !DILocation(line: 1300, column: 3, scope: !1657)
!1660 = !DILocation(line: 1300, column: 20, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1653, file: !3, line: 1300, column: 14)
!1662 = !DILocation(line: 1300, column: 14, scope: !1653)
!1663 = !DILocation(line: 1301, column: 5, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1665, file: !3, line: 1301, column: 5)
!1665 = distinct !DILexicalBlock(scope: !1661, file: !3, line: 1300, column: 51)
!1666 = !DILocation(line: 1304, column: 3, scope: !1665)
!1667 = !DILocation(line: 0, scope: !1664)
!1668 = !DILocation(line: 0, scope: !1665)
!1669 = !DILocation(line: 1309, column: 3, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1578, file: !3, line: 1309, column: 3)
!1671 = !DILocation(line: 0, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1661, file: !3, line: 1304, column: 10)
!1673 = !{!551, !519, i64 248}
!1674 = !DILocation(line: 1309, column: 3, scope: !1578)
!1675 = !DILocation(line: 1310, column: 63, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1670, file: !3, line: 1309, column: 63)
!1677 = !DILocation(line: 1310, column: 22, scope: !1676)
!1678 = !DILocation(line: 1310, column: 20, scope: !1676)
!1679 = !DILocation(line: 1312, column: 3, scope: !1676)
!1680 = !DILocation(line: 1316, column: 3, scope: !1578)
!1681 = !{!517, !519, i64 286}
!1682 = !DILocation(line: 1317, column: 3, scope: !1578)
!1683 = !DILocation(line: 1319, column: 3, scope: !1578)
!1684 = !DILocation(line: 1320, column: 1, scope: !1578)
!1685 = distinct !DISubprogram(name: "nd6_new_neighbor_cache_entry", scope: !3, file: !3, line: 1422, type: !1686, isLocal: true, isDefinition: true, scopeLine: 1423, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1688)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{!307}
!1688 = !{!1689, !1690, !1691}
!1689 = !DILocalVariable(name: "i", scope: !1685, file: !3, line: 1424, type: !307)
!1690 = !DILocalVariable(name: "j", scope: !1685, file: !3, line: 1425, type: !307)
!1691 = !DILocalVariable(name: "time", scope: !1685, file: !3, line: 1426, type: !147)
!1692 = !DILocation(line: 1424, column: 8, scope: !1685)
!1693 = !DILocation(line: 1431, column: 27, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1695, file: !3, line: 1431, column: 9)
!1695 = distinct !DILexicalBlock(scope: !1696, file: !3, line: 1430, column: 48)
!1696 = distinct !DILexicalBlock(scope: !1697, file: !3, line: 1430, column: 3)
!1697 = distinct !DILexicalBlock(scope: !1685, file: !3, line: 1430, column: 3)
!1698 = !DILocation(line: 1431, column: 33, scope: !1694)
!1699 = !DILocation(line: 1431, column: 9, scope: !1695)
!1700 = !DILocation(line: 1440, column: 10, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1702, file: !3, line: 1440, column: 9)
!1702 = distinct !DILexicalBlock(scope: !1703, file: !3, line: 1439, column: 48)
!1703 = distinct !DILexicalBlock(scope: !1704, file: !3, line: 1439, column: 3)
!1704 = distinct !DILexicalBlock(scope: !1685, file: !3, line: 1439, column: 3)
!1705 = !DILocation(line: 1440, column: 28, scope: !1701)
!1706 = !DILocation(line: 1441, column: 29, scope: !1701)
!1707 = !DILocalVariable(name: "i", arg: 1, scope: !1708, file: !3, line: 1529, type: !307)
!1708 = distinct !DISubprogram(name: "nd6_free_neighbor_cache_entry", scope: !3, file: !3, line: 1529, type: !1538, isLocal: true, isDefinition: true, scopeLine: 1530, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1709)
!1709 = !{!1707}
!1710 = !DILocation(line: 1529, column: 36, scope: !1708, inlinedAt: !1711)
!1711 = distinct !DILocation(line: 1442, column: 7, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1701, file: !3, line: 1441, column: 40)
!1713 = !DILocation(line: 1540, column: 25, scope: !1714, inlinedAt: !1711)
!1714 = distinct !DILexicalBlock(scope: !1708, file: !3, line: 1540, column: 7)
!1715 = !DILocation(line: 1540, column: 27, scope: !1714, inlinedAt: !1711)
!1716 = !DILocation(line: 1540, column: 7, scope: !1708, inlinedAt: !1711)
!1717 = !DILocation(line: 1541, column: 5, scope: !1718, inlinedAt: !1711)
!1718 = distinct !DILexicalBlock(scope: !1714, file: !3, line: 1540, column: 36)
!1719 = !DILocation(line: 1542, column: 25, scope: !1718, inlinedAt: !1711)
!1720 = !DILocation(line: 1543, column: 3, scope: !1718, inlinedAt: !1711)
!1721 = !DILocation(line: 1545, column: 27, scope: !1708, inlinedAt: !1711)
!1722 = !DILocation(line: 1546, column: 30, scope: !1708, inlinedAt: !1711)
!1723 = !DILocation(line: 1547, column: 21, scope: !1708, inlinedAt: !1711)
!1724 = !DILocation(line: 1547, column: 27, scope: !1708, inlinedAt: !1711)
!1725 = !DILocation(line: 1548, column: 29, scope: !1708, inlinedAt: !1711)
!1726 = !DILocation(line: 1548, column: 44, scope: !1708, inlinedAt: !1711)
!1727 = !DILocation(line: 1549, column: 3, scope: !1728, inlinedAt: !1711)
!1728 = distinct !DILexicalBlock(scope: !1708, file: !3, line: 1549, column: 3)
!1729 = !DILocation(line: 1550, column: 1, scope: !1708, inlinedAt: !1711)
!1730 = !DILocation(line: 1443, column: 7, scope: !1712)
!1731 = !DILocation(line: 1440, column: 34, scope: !1701)
!1732 = !DILocation(line: 1441, column: 11, scope: !1701)
!1733 = !DILocation(line: 1440, column: 48, scope: !1701)
!1734 = !DILocation(line: 1449, column: 10, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1736, file: !3, line: 1449, column: 9)
!1736 = distinct !DILexicalBlock(scope: !1737, file: !3, line: 1448, column: 48)
!1737 = distinct !DILexicalBlock(scope: !1738, file: !3, line: 1448, column: 3)
!1738 = distinct !DILexicalBlock(scope: !1685, file: !3, line: 1448, column: 3)
!1739 = !DILocation(line: 1449, column: 28, scope: !1735)
!1740 = !DILocation(line: 1450, column: 29, scope: !1735)
!1741 = !DILocation(line: 1529, column: 36, scope: !1708, inlinedAt: !1742)
!1742 = distinct !DILocation(line: 1451, column: 7, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1735, file: !3, line: 1450, column: 40)
!1744 = !DILocation(line: 1540, column: 25, scope: !1714, inlinedAt: !1742)
!1745 = !DILocation(line: 1540, column: 27, scope: !1714, inlinedAt: !1742)
!1746 = !DILocation(line: 1540, column: 7, scope: !1708, inlinedAt: !1742)
!1747 = !DILocation(line: 1541, column: 5, scope: !1718, inlinedAt: !1742)
!1748 = !DILocation(line: 1542, column: 25, scope: !1718, inlinedAt: !1742)
!1749 = !DILocation(line: 1543, column: 3, scope: !1718, inlinedAt: !1742)
!1750 = !DILocation(line: 1545, column: 27, scope: !1708, inlinedAt: !1742)
!1751 = !DILocation(line: 1546, column: 30, scope: !1708, inlinedAt: !1742)
!1752 = !DILocation(line: 1547, column: 21, scope: !1708, inlinedAt: !1742)
!1753 = !DILocation(line: 1547, column: 27, scope: !1708, inlinedAt: !1742)
!1754 = !DILocation(line: 1548, column: 29, scope: !1708, inlinedAt: !1742)
!1755 = !DILocation(line: 1548, column: 44, scope: !1708, inlinedAt: !1742)
!1756 = !DILocation(line: 1549, column: 3, scope: !1728, inlinedAt: !1742)
!1757 = !DILocation(line: 1550, column: 1, scope: !1708, inlinedAt: !1742)
!1758 = !DILocation(line: 1452, column: 7, scope: !1743)
!1759 = !DILocation(line: 1449, column: 34, scope: !1735)
!1760 = !DILocation(line: 1450, column: 11, scope: !1735)
!1761 = !DILocation(line: 1449, column: 48, scope: !1735)
!1762 = !DILocation(line: 1458, column: 10, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1764, file: !3, line: 1458, column: 9)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !3, line: 1457, column: 48)
!1765 = distinct !DILexicalBlock(scope: !1766, file: !3, line: 1457, column: 3)
!1766 = distinct !DILexicalBlock(scope: !1685, file: !3, line: 1457, column: 3)
!1767 = !DILocation(line: 1458, column: 28, scope: !1763)
!1768 = !DILocation(line: 1459, column: 29, scope: !1763)
!1769 = !DILocation(line: 1529, column: 36, scope: !1708, inlinedAt: !1770)
!1770 = distinct !DILocation(line: 1460, column: 7, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1763, file: !3, line: 1459, column: 40)
!1772 = !DILocation(line: 1540, column: 25, scope: !1714, inlinedAt: !1770)
!1773 = !DILocation(line: 1540, column: 27, scope: !1714, inlinedAt: !1770)
!1774 = !DILocation(line: 1540, column: 7, scope: !1708, inlinedAt: !1770)
!1775 = !DILocation(line: 1541, column: 5, scope: !1718, inlinedAt: !1770)
!1776 = !DILocation(line: 1542, column: 25, scope: !1718, inlinedAt: !1770)
!1777 = !DILocation(line: 1543, column: 3, scope: !1718, inlinedAt: !1770)
!1778 = !DILocation(line: 1545, column: 27, scope: !1708, inlinedAt: !1770)
!1779 = !DILocation(line: 1546, column: 30, scope: !1708, inlinedAt: !1770)
!1780 = !DILocation(line: 1547, column: 21, scope: !1708, inlinedAt: !1770)
!1781 = !DILocation(line: 1547, column: 27, scope: !1708, inlinedAt: !1770)
!1782 = !DILocation(line: 1548, column: 29, scope: !1708, inlinedAt: !1770)
!1783 = !DILocation(line: 1548, column: 44, scope: !1708, inlinedAt: !1770)
!1784 = !DILocation(line: 1549, column: 3, scope: !1728, inlinedAt: !1770)
!1785 = !DILocation(line: 1550, column: 1, scope: !1708, inlinedAt: !1770)
!1786 = !DILocation(line: 1461, column: 7, scope: !1771)
!1787 = !DILocation(line: 1458, column: 34, scope: !1763)
!1788 = !DILocation(line: 1459, column: 11, scope: !1763)
!1789 = !DILocation(line: 1458, column: 48, scope: !1763)
!1790 = !DILocation(line: 1529, column: 36, scope: !1708, inlinedAt: !1791)
!1791 = distinct !DILocation(line: 1478, column: 5, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1793, file: !3, line: 1477, column: 15)
!1793 = distinct !DILexicalBlock(scope: !1685, file: !3, line: 1477, column: 7)
!1794 = !DILocation(line: 1534, column: 7, scope: !1795, inlinedAt: !1791)
!1795 = distinct !DILexicalBlock(scope: !1708, file: !3, line: 1534, column: 7)
!1796 = !DILocation(line: 1534, column: 25, scope: !1795, inlinedAt: !1791)
!1797 = !DILocation(line: 1534, column: 7, scope: !1708, inlinedAt: !1791)
!1798 = !DILocation(line: 1540, column: 25, scope: !1714, inlinedAt: !1791)
!1799 = !DILocation(line: 1540, column: 27, scope: !1714, inlinedAt: !1791)
!1800 = !DILocation(line: 1540, column: 7, scope: !1708, inlinedAt: !1791)
!1801 = !DILocation(line: 1541, column: 5, scope: !1718, inlinedAt: !1791)
!1802 = !DILocation(line: 1542, column: 25, scope: !1718, inlinedAt: !1791)
!1803 = !DILocation(line: 1543, column: 3, scope: !1718, inlinedAt: !1791)
!1804 = !DILocation(line: 1545, column: 21, scope: !1708, inlinedAt: !1791)
!1805 = !DILocation(line: 1545, column: 27, scope: !1708, inlinedAt: !1791)
!1806 = !DILocation(line: 1546, column: 30, scope: !1708, inlinedAt: !1791)
!1807 = !DILocation(line: 1547, column: 21, scope: !1708, inlinedAt: !1791)
!1808 = !DILocation(line: 1547, column: 27, scope: !1708, inlinedAt: !1791)
!1809 = !DILocation(line: 1548, column: 29, scope: !1708, inlinedAt: !1791)
!1810 = !DILocation(line: 1548, column: 44, scope: !1708, inlinedAt: !1791)
!1811 = !DILocation(line: 1549, column: 3, scope: !1728, inlinedAt: !1791)
!1812 = !DILocation(line: 1550, column: 1, scope: !1708, inlinedAt: !1791)
!1813 = !DILocation(line: 1479, column: 5, scope: !1792)
!1814 = !DILocation(line: 1426, column: 9, scope: !1685)
!1815 = !DILocation(line: 1425, column: 8, scope: !1685)
!1816 = !DILocation(line: 1487, column: 28, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1818, file: !3, line: 1487, column: 9)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !3, line: 1485, column: 48)
!1819 = distinct !DILexicalBlock(scope: !1820, file: !3, line: 1485, column: 3)
!1820 = distinct !DILexicalBlock(scope: !1685, file: !3, line: 1485, column: 3)
!1821 = !DILocation(line: 1487, column: 30, scope: !1817)
!1822 = !DILocation(line: 1487, column: 39, scope: !1817)
!1823 = !DILocation(line: 1488, column: 28, scope: !1817)
!1824 = !DILocation(line: 1488, column: 34, scope: !1817)
!1825 = !DILocation(line: 1488, column: 53, scope: !1817)
!1826 = !DILocation(line: 1489, column: 29, scope: !1817)
!1827 = !DILocation(line: 1489, column: 11, scope: !1817)
!1828 = !DILocation(line: 1487, column: 9, scope: !1818)
!1829 = !DILocation(line: 1490, column: 37, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1831, file: !3, line: 1490, column: 11)
!1831 = distinct !DILexicalBlock(scope: !1817, file: !3, line: 1489, column: 40)
!1832 = !DILocation(line: 1490, column: 49, scope: !1830)
!1833 = !DILocation(line: 1490, column: 11, scope: !1831)
!1834 = !DILocation(line: 0, scope: !1685)
!1835 = !DILocation(line: 1485, column: 44, scope: !1819)
!1836 = !DILocation(line: 1485, column: 17, scope: !1819)
!1837 = !DILocation(line: 1485, column: 3, scope: !1820)
!1838 = distinct !{!1838, !1837, !1839}
!1839 = !DILocation(line: 1495, column: 3, scope: !1820)
!1840 = !DILocation(line: 1496, column: 9, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1685, file: !3, line: 1496, column: 7)
!1842 = !DILocation(line: 1496, column: 7, scope: !1685)
!1843 = !DILocation(line: 1505, column: 34, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1845, file: !3, line: 1505, column: 9)
!1845 = distinct !DILexicalBlock(scope: !1846, file: !3, line: 1504, column: 48)
!1846 = distinct !DILexicalBlock(scope: !1847, file: !3, line: 1504, column: 3)
!1847 = distinct !DILexicalBlock(scope: !1685, file: !3, line: 1504, column: 3)
!1848 = !DILocation(line: 1506, column: 29, scope: !1844)
!1849 = !DILocation(line: 1506, column: 11, scope: !1844)
!1850 = !DILocation(line: 1505, column: 53, scope: !1844)
!1851 = !DILocation(line: 1507, column: 37, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1853, file: !3, line: 1507, column: 11)
!1853 = distinct !DILexicalBlock(scope: !1844, file: !3, line: 1506, column: 40)
!1854 = !DILocation(line: 1529, column: 36, scope: !1708, inlinedAt: !1855)
!1855 = distinct !DILocation(line: 1497, column: 5, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1841, file: !3, line: 1496, column: 15)
!1857 = !DILocation(line: 1531, column: 15, scope: !1858, inlinedAt: !1855)
!1858 = distinct !DILexicalBlock(scope: !1708, file: !3, line: 1531, column: 7)
!1859 = !DILocation(line: 1534, column: 7, scope: !1795, inlinedAt: !1855)
!1860 = !DILocation(line: 1534, column: 25, scope: !1795, inlinedAt: !1855)
!1861 = !DILocation(line: 1534, column: 7, scope: !1708, inlinedAt: !1855)
!1862 = !DILocation(line: 1540, column: 25, scope: !1714, inlinedAt: !1855)
!1863 = !DILocation(line: 1540, column: 27, scope: !1714, inlinedAt: !1855)
!1864 = !DILocation(line: 1540, column: 7, scope: !1708, inlinedAt: !1855)
!1865 = !DILocation(line: 1541, column: 5, scope: !1718, inlinedAt: !1855)
!1866 = !DILocation(line: 1542, column: 25, scope: !1718, inlinedAt: !1855)
!1867 = !DILocation(line: 1543, column: 3, scope: !1718, inlinedAt: !1855)
!1868 = !DILocation(line: 1545, column: 21, scope: !1708, inlinedAt: !1855)
!1869 = !DILocation(line: 1545, column: 27, scope: !1708, inlinedAt: !1855)
!1870 = !DILocation(line: 1546, column: 30, scope: !1708, inlinedAt: !1855)
!1871 = !DILocation(line: 1547, column: 21, scope: !1708, inlinedAt: !1855)
!1872 = !DILocation(line: 1547, column: 27, scope: !1708, inlinedAt: !1855)
!1873 = !DILocation(line: 1548, column: 29, scope: !1708, inlinedAt: !1855)
!1874 = !DILocation(line: 1548, column: 44, scope: !1708, inlinedAt: !1855)
!1875 = !DILocation(line: 1549, column: 3, scope: !1728, inlinedAt: !1855)
!1876 = !DILocation(line: 1550, column: 1, scope: !1708, inlinedAt: !1855)
!1877 = !DILocation(line: 1498, column: 5, scope: !1856)
!1878 = !DILocation(line: 1529, column: 36, scope: !1708, inlinedAt: !1879)
!1879 = distinct !DILocation(line: 1514, column: 5, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1881, file: !3, line: 1513, column: 15)
!1881 = distinct !DILexicalBlock(scope: !1685, file: !3, line: 1513, column: 7)
!1882 = !DILocation(line: 1534, column: 7, scope: !1795, inlinedAt: !1879)
!1883 = !DILocation(line: 1534, column: 25, scope: !1795, inlinedAt: !1879)
!1884 = !DILocation(line: 1534, column: 7, scope: !1708, inlinedAt: !1879)
!1885 = !DILocation(line: 1540, column: 25, scope: !1714, inlinedAt: !1879)
!1886 = !DILocation(line: 1540, column: 27, scope: !1714, inlinedAt: !1879)
!1887 = !DILocation(line: 1540, column: 7, scope: !1708, inlinedAt: !1879)
!1888 = !DILocation(line: 1541, column: 5, scope: !1718, inlinedAt: !1879)
!1889 = !DILocation(line: 1542, column: 25, scope: !1718, inlinedAt: !1879)
!1890 = !DILocation(line: 1543, column: 3, scope: !1718, inlinedAt: !1879)
!1891 = !DILocation(line: 1545, column: 21, scope: !1708, inlinedAt: !1879)
!1892 = !DILocation(line: 1545, column: 27, scope: !1708, inlinedAt: !1879)
!1893 = !DILocation(line: 1546, column: 30, scope: !1708, inlinedAt: !1879)
!1894 = !DILocation(line: 1547, column: 21, scope: !1708, inlinedAt: !1879)
!1895 = !DILocation(line: 1547, column: 27, scope: !1708, inlinedAt: !1879)
!1896 = !DILocation(line: 1548, column: 29, scope: !1708, inlinedAt: !1879)
!1897 = !DILocation(line: 1548, column: 44, scope: !1708, inlinedAt: !1879)
!1898 = !DILocation(line: 1549, column: 3, scope: !1728, inlinedAt: !1879)
!1899 = !DILocation(line: 1550, column: 1, scope: !1708, inlinedAt: !1879)
!1900 = !DILocation(line: 1515, column: 5, scope: !1880)
!1901 = !DILocation(line: 1520, column: 1, scope: !1685)
!1902 = !DILocation(line: 1507, column: 49, scope: !1852)
!1903 = !DILocation(line: 1507, column: 11, scope: !1853)
!1904 = !DILocation(line: 1513, column: 9, scope: !1881)
!1905 = !DILocation(line: 1513, column: 7, scope: !1685)
!1906 = !DILocation(line: 1471, column: 37, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1908, file: !3, line: 1471, column: 11)
!1908 = distinct !DILexicalBlock(scope: !1909, file: !3, line: 1470, column: 40)
!1909 = distinct !DILexicalBlock(scope: !1910, file: !3, line: 1469, column: 9)
!1910 = distinct !DILexicalBlock(scope: !1911, file: !3, line: 1468, column: 48)
!1911 = distinct !DILexicalBlock(scope: !1912, file: !3, line: 1468, column: 3)
!1912 = distinct !DILexicalBlock(scope: !1685, file: !3, line: 1468, column: 3)
!1913 = !DILocation(line: 1471, column: 52, scope: !1907)
!1914 = !DILocation(line: 1471, column: 11, scope: !1908)
!1915 = !DILocation(line: 1469, column: 34, scope: !1909)
!1916 = !DILocation(line: 1470, column: 29, scope: !1909)
!1917 = !DILocation(line: 1470, column: 11, scope: !1909)
!1918 = !DILocation(line: 1469, column: 52, scope: !1909)
!1919 = !DILocation(line: 1477, column: 9, scope: !1793)
!1920 = !DILocation(line: 1477, column: 7, scope: !1685)
!1921 = distinct !DISubprogram(name: "nd6_send_rs", scope: !3, file: !3, line: 1329, type: !1922, isLocal: true, isDefinition: true, scopeLine: 1330, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1924)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{!306, !274}
!1924 = !{!1925, !1926, !1927, !1928, !1929, !1930, !1931}
!1925 = !DILocalVariable(name: "netif", arg: 1, scope: !1921, file: !3, line: 1329, type: !274)
!1926 = !DILocalVariable(name: "rs_hdr", scope: !1921, file: !3, line: 1331, type: !235)
!1927 = !DILocalVariable(name: "lladdr_opt", scope: !1921, file: !3, line: 1332, type: !170)
!1928 = !DILocalVariable(name: "p", scope: !1921, file: !3, line: 1333, type: !253)
!1929 = !DILocalVariable(name: "src_addr", scope: !1921, file: !3, line: 1334, type: !162)
!1930 = !DILocalVariable(name: "err", scope: !1921, file: !3, line: 1335, type: !306)
!1931 = !DILocalVariable(name: "lladdr_opt_len", scope: !1921, file: !3, line: 1336, type: !131)
!1932 = !DILocation(line: 1329, column: 27, scope: !1921)
!1933 = !DILocation(line: 1336, column: 9, scope: !1921)
!1934 = !DILocation(line: 1339, column: 7, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1921, file: !3, line: 1339, column: 7)
!1936 = !DILocation(line: 1340, column: 16, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1935, file: !3, line: 1339, column: 57)
!1938 = !DILocation(line: 1334, column: 21, scope: !1921)
!1939 = !DILocation(line: 1339, column: 7, scope: !1921)
!1940 = !DILocation(line: 1346, column: 3, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1921, file: !3, line: 1346, column: 3)
!1942 = !DILocation(line: 1347, column: 3, scope: !1921)
!1943 = !DILocation(line: 1350, column: 16, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1921, file: !3, line: 1350, column: 7)
!1945 = !DILocation(line: 1350, column: 7, scope: !1921)
!1946 = !DILocation(line: 1351, column: 31, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1944, file: !3, line: 1350, column: 34)
!1948 = !DILocation(line: 1351, column: 24, scope: !1947)
!1949 = !DILocation(line: 1351, column: 42, scope: !1947)
!1950 = !DILocation(line: 1351, column: 47, scope: !1947)
!1951 = !DILocation(line: 1351, column: 81, scope: !1947)
!1952 = !DILocation(line: 1351, column: 56, scope: !1947)
!1953 = !DILocation(line: 1351, column: 53, scope: !1947)
!1954 = !DILocation(line: 1352, column: 3, scope: !1947)
!1955 = !DILocation(line: 0, scope: !1921)
!1956 = !DILocation(line: 1353, column: 70, scope: !1921)
!1957 = !DILocation(line: 1353, column: 52, scope: !1921)
!1958 = !DILocation(line: 1353, column: 7, scope: !1921)
!1959 = !DILocation(line: 1333, column: 16, scope: !1921)
!1960 = !DILocation(line: 1354, column: 9, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1921, file: !3, line: 1354, column: 7)
!1962 = !DILocation(line: 1354, column: 7, scope: !1921)
!1963 = !DILocation(line: 1355, column: 5, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1961, file: !3, line: 1354, column: 18)
!1965 = !DILocation(line: 1356, column: 5, scope: !1964)
!1966 = !DILocation(line: 1360, column: 35, scope: !1921)
!1967 = !DILocation(line: 1331, column: 21, scope: !1921)
!1968 = !DILocation(line: 1362, column: 11, scope: !1921)
!1969 = !DILocation(line: 1362, column: 16, scope: !1921)
!1970 = !{!1971, !520, i64 0}
!1971 = !{!"rs_header", !520, i64 0, !520, i64 1, !519, i64 2, !548, i64 4}
!1972 = !DILocation(line: 1363, column: 11, scope: !1921)
!1973 = !DILocation(line: 1363, column: 16, scope: !1921)
!1974 = !{!1971, !520, i64 1}
!1975 = !DILocation(line: 1364, column: 11, scope: !1921)
!1976 = !DILocation(line: 1364, column: 18, scope: !1921)
!1977 = !{!1971, !519, i64 2}
!1978 = !DILocation(line: 1365, column: 11, scope: !1921)
!1979 = !DILocation(line: 1365, column: 20, scope: !1921)
!1980 = !{!1971, !548, i64 4}
!1981 = !DILocation(line: 1367, column: 7, scope: !1921)
!1982 = !DILocation(line: 1369, column: 61, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1984, file: !3, line: 1367, column: 34)
!1984 = distinct !DILexicalBlock(scope: !1921, file: !3, line: 1367, column: 7)
!1985 = !DILocation(line: 1332, column: 25, scope: !1921)
!1986 = !DILocation(line: 1370, column: 22, scope: !1983)
!1987 = !DILocation(line: 1371, column: 26, scope: !1983)
!1988 = !DILocation(line: 1371, column: 17, scope: !1983)
!1989 = !DILocation(line: 1371, column: 24, scope: !1983)
!1990 = !DILocation(line: 1372, column: 5, scope: !1983)
!1991 = !DILocation(line: 1373, column: 3, scope: !1983)
!1992 = !DILocation(line: 1376, column: 3, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1921, file: !3, line: 1376, column: 3)
!1994 = !DILocation(line: 1376, column: 3, scope: !1921)
!1995 = !DILocation(line: 1377, column: 63, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1993, file: !3, line: 1376, column: 63)
!1997 = !DILocation(line: 1377, column: 22, scope: !1996)
!1998 = !DILocation(line: 1377, column: 20, scope: !1996)
!1999 = !DILocation(line: 1379, column: 3, scope: !1996)
!2000 = !DILocation(line: 1383, column: 3, scope: !1921)
!2001 = !DILocation(line: 1385, column: 36, scope: !1921)
!2002 = !DILocation(line: 1385, column: 26, scope: !1921)
!2003 = !DILocation(line: 1385, column: 9, scope: !1921)
!2004 = !DILocation(line: 1335, column: 9, scope: !1921)
!2005 = !DILocation(line: 1387, column: 3, scope: !1921)
!2006 = !DILocation(line: 1389, column: 3, scope: !1921)
!2007 = !DILocation(line: 1390, column: 1, scope: !1921)
!2008 = distinct !DISubprogram(name: "nd6_tmr", scope: !3, file: !3, line: 959, type: !2009, isLocal: false, isDefinition: true, scopeLine: 960, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2011)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{null}
!2011 = !{!2012, !2013, !2014, !2022, !2029}
!2012 = !DILocalVariable(name: "i", scope: !2008, file: !3, line: 961, type: !307)
!2013 = !DILocalVariable(name: "netif", scope: !2008, file: !3, line: 962, type: !274)
!2014 = !DILocalVariable(name: "j", scope: !2015, file: !3, line: 1033, type: !307)
!2015 = distinct !DILexicalBlock(scope: !2016, file: !3, line: 1030, column: 81)
!2016 = distinct !DILexicalBlock(scope: !2017, file: !3, line: 1030, column: 11)
!2017 = distinct !DILexicalBlock(scope: !2018, file: !3, line: 1028, column: 56)
!2018 = distinct !DILexicalBlock(scope: !2019, file: !3, line: 1028, column: 9)
!2019 = distinct !DILexicalBlock(scope: !2020, file: !3, line: 1027, column: 46)
!2020 = distinct !DILexicalBlock(scope: !2021, file: !3, line: 1027, column: 3)
!2021 = distinct !DILexicalBlock(scope: !2008, file: !3, line: 1027, column: 3)
!2022 = !DILocalVariable(name: "addr_state", scope: !2023, file: !3, line: 1066, type: !117)
!2023 = distinct !DILexicalBlock(scope: !2024, file: !3, line: 1065, column: 51)
!2024 = distinct !DILexicalBlock(scope: !2025, file: !3, line: 1065, column: 5)
!2025 = distinct !DILexicalBlock(scope: !2026, file: !3, line: 1065, column: 5)
!2026 = distinct !DILexicalBlock(scope: !2027, file: !3, line: 1064, column: 24)
!2027 = distinct !DILexicalBlock(scope: !2028, file: !3, line: 1064, column: 3)
!2028 = distinct !DILexicalBlock(scope: !2008, file: !3, line: 1064, column: 3)
!2029 = !DILocalVariable(name: "life", scope: !2030, file: !3, line: 1085, type: !147)
!2030 = distinct !DILexicalBlock(scope: !2031, file: !3, line: 1084, column: 47)
!2031 = distinct !DILexicalBlock(scope: !2023, file: !3, line: 1083, column: 11)
!2032 = !DILocation(line: 961, column: 8, scope: !2008)
!2033 = !DILocation(line: 965, column: 3, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !2008, file: !3, line: 965, column: 3)
!2035 = !DILocation(line: 966, column: 13, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2037, file: !3, line: 965, column: 48)
!2037 = distinct !DILexicalBlock(scope: !2034, file: !3, line: 965, column: 3)
!2038 = !DILocation(line: 966, column: 31, scope: !2036)
!2039 = !DILocation(line: 966, column: 5, scope: !2036)
!2040 = !DILocation(line: 968, column: 38, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2042, file: !3, line: 968, column: 11)
!2042 = distinct !DILexicalBlock(scope: !2036, file: !3, line: 966, column: 38)
!2043 = !DILocation(line: 968, column: 50, scope: !2041)
!2044 = !DILocation(line: 968, column: 85, scope: !2041)
!2045 = !DILocation(line: 969, column: 31, scope: !2041)
!2046 = !DILocation(line: 969, column: 13, scope: !2041)
!2047 = !DILocation(line: 968, column: 11, scope: !2042)
!2048 = !DILocation(line: 1529, column: 36, scope: !1708, inlinedAt: !2049)
!2049 = distinct !DILocation(line: 971, column: 9, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2041, file: !3, line: 969, column: 42)
!2051 = !DILocation(line: 1540, column: 25, scope: !1714, inlinedAt: !2049)
!2052 = !DILocation(line: 1540, column: 27, scope: !1714, inlinedAt: !2049)
!2053 = !DILocation(line: 1540, column: 7, scope: !1708, inlinedAt: !2049)
!2054 = !DILocation(line: 1541, column: 5, scope: !1718, inlinedAt: !2049)
!2055 = !DILocation(line: 1542, column: 25, scope: !1718, inlinedAt: !2049)
!2056 = !DILocation(line: 1543, column: 3, scope: !1718, inlinedAt: !2049)
!2057 = !DILocation(line: 1545, column: 27, scope: !1708, inlinedAt: !2049)
!2058 = !DILocation(line: 1546, column: 30, scope: !1708, inlinedAt: !2049)
!2059 = !DILocation(line: 1547, column: 21, scope: !1708, inlinedAt: !2049)
!2060 = !DILocation(line: 1547, column: 27, scope: !1708, inlinedAt: !2049)
!2061 = !DILocation(line: 1548, column: 44, scope: !1708, inlinedAt: !2049)
!2062 = !DILocation(line: 1549, column: 3, scope: !1728, inlinedAt: !2049)
!2063 = !DILocation(line: 1550, column: 1, scope: !1708, inlinedAt: !2049)
!2064 = !DILocation(line: 972, column: 7, scope: !2050)
!2065 = !DILocation(line: 974, column: 46, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2041, file: !3, line: 972, column: 14)
!2067 = !DILocation(line: 1168, column: 64, scope: !973, inlinedAt: !2068)
!2068 = distinct !DILocation(line: 975, column: 9, scope: !2066)
!2069 = !DILocation(line: 1168, column: 76, scope: !973, inlinedAt: !2068)
!2070 = !DILocation(line: 1170, column: 22, scope: !973, inlinedAt: !2068)
!2071 = !DILocation(line: 1170, column: 37, scope: !973, inlinedAt: !2068)
!2072 = !DILocation(line: 1170, column: 3, scope: !973, inlinedAt: !2068)
!2073 = !DILocation(line: 1171, column: 1, scope: !973, inlinedAt: !2068)
!2074 = !DILocation(line: 980, column: 29, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2042, file: !3, line: 980, column: 11)
!2076 = !DILocation(line: 980, column: 31, scope: !2075)
!2077 = !DILocation(line: 980, column: 11, scope: !2042)
!2078 = !DILocation(line: 981, column: 9, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2075, file: !3, line: 980, column: 40)
!2080 = !DILocation(line: 982, column: 7, scope: !2079)
!2081 = !DILocation(line: 983, column: 37, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2042, file: !3, line: 983, column: 11)
!2083 = !DILocation(line: 983, column: 52, scope: !2082)
!2084 = !DILocation(line: 983, column: 11, scope: !2042)
!2085 = !DILocation(line: 985, column: 33, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !2082, file: !3, line: 983, column: 73)
!2087 = !DILocation(line: 986, column: 46, scope: !2086)
!2088 = !DILocation(line: 987, column: 7, scope: !2086)
!2089 = !DILocation(line: 988, column: 50, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2082, file: !3, line: 987, column: 14)
!2091 = !DILocation(line: 992, column: 33, scope: !2042)
!2092 = !DILocation(line: 992, column: 43, scope: !2042)
!2093 = !DILocation(line: 993, column: 7, scope: !2042)
!2094 = !DILocation(line: 995, column: 37, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2042, file: !3, line: 995, column: 11)
!2096 = !DILocation(line: 995, column: 48, scope: !2095)
!2097 = !DILocation(line: 995, column: 11, scope: !2042)
!2098 = !DILocation(line: 997, column: 33, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2095, file: !3, line: 995, column: 54)
!2100 = !DILocation(line: 998, column: 47, scope: !2099)
!2101 = !DILocation(line: 999, column: 7, scope: !2099)
!2102 = !DILocation(line: 1000, column: 45, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2095, file: !3, line: 999, column: 14)
!2104 = !DILocation(line: 1004, column: 38, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2042, file: !3, line: 1004, column: 11)
!2106 = !DILocation(line: 1004, column: 50, scope: !2105)
!2107 = !DILocation(line: 1004, column: 85, scope: !2105)
!2108 = !DILocation(line: 1005, column: 31, scope: !2105)
!2109 = !DILocation(line: 1005, column: 13, scope: !2105)
!2110 = !DILocation(line: 1004, column: 11, scope: !2042)
!2111 = !DILocation(line: 1529, column: 36, scope: !1708, inlinedAt: !2112)
!2112 = distinct !DILocation(line: 1007, column: 9, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2105, file: !3, line: 1005, column: 42)
!2114 = !DILocation(line: 1540, column: 25, scope: !1714, inlinedAt: !2112)
!2115 = !DILocation(line: 1540, column: 27, scope: !1714, inlinedAt: !2112)
!2116 = !DILocation(line: 1540, column: 7, scope: !1708, inlinedAt: !2112)
!2117 = !DILocation(line: 1541, column: 5, scope: !1718, inlinedAt: !2112)
!2118 = !DILocation(line: 1542, column: 25, scope: !1718, inlinedAt: !2112)
!2119 = !DILocation(line: 1543, column: 3, scope: !1718, inlinedAt: !2112)
!2120 = !DILocation(line: 1545, column: 27, scope: !1708, inlinedAt: !2112)
!2121 = !DILocation(line: 1546, column: 30, scope: !1708, inlinedAt: !2112)
!2122 = !DILocation(line: 1547, column: 21, scope: !1708, inlinedAt: !2112)
!2123 = !DILocation(line: 1547, column: 27, scope: !1708, inlinedAt: !2112)
!2124 = !DILocation(line: 1548, column: 44, scope: !1708, inlinedAt: !2112)
!2125 = !DILocation(line: 1549, column: 3, scope: !1728, inlinedAt: !2112)
!2126 = !DILocation(line: 1550, column: 1, scope: !1708, inlinedAt: !2112)
!2127 = !DILocation(line: 1008, column: 7, scope: !2113)
!2128 = !DILocation(line: 1010, column: 46, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2105, file: !3, line: 1008, column: 14)
!2130 = !DILocation(line: 1168, column: 64, scope: !973, inlinedAt: !2131)
!2131 = distinct !DILocation(line: 1011, column: 9, scope: !2129)
!2132 = !DILocation(line: 1168, column: 76, scope: !973, inlinedAt: !2131)
!2133 = !DILocation(line: 1170, column: 22, scope: !973, inlinedAt: !2131)
!2134 = !DILocation(line: 1170, column: 37, scope: !973, inlinedAt: !2131)
!2135 = !DILocation(line: 1170, column: 3, scope: !973, inlinedAt: !2131)
!2136 = !DILocation(line: 1171, column: 1, scope: !973, inlinedAt: !2131)
!2137 = !DILocation(line: 965, column: 44, scope: !2037)
!2138 = !DILocation(line: 965, column: 17, scope: !2037)
!2139 = distinct !{!2139, !2033, !2140}
!2140 = !DILocation(line: 1019, column: 3, scope: !2034)
!2141 = !DILocation(line: 1023, column: 29, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2143, file: !3, line: 1022, column: 51)
!2143 = distinct !DILexicalBlock(scope: !2144, file: !3, line: 1022, column: 3)
!2144 = distinct !DILexicalBlock(scope: !2008, file: !3, line: 1022, column: 3)
!2145 = !{!1416, !548, i64 44}
!2146 = !DILocation(line: 1028, column: 9, scope: !2018)
!2147 = !DILocation(line: 1028, column: 32, scope: !2018)
!2148 = !DILocation(line: 1028, column: 47, scope: !2018)
!2149 = !DILocation(line: 1028, column: 9, scope: !2019)
!2150 = !DILocation(line: 1030, column: 34, scope: !2016)
!2151 = !DILocation(line: 1030, column: 53, scope: !2016)
!2152 = !DILocation(line: 1030, column: 11, scope: !2017)
!2153 = !DILocation(line: 1033, column: 14, scope: !2015)
!2154 = !DILocation(line: 1034, column: 9, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2015, file: !3, line: 1034, column: 9)
!2156 = !DILocation(line: 1035, column: 15, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2158, file: !3, line: 1035, column: 15)
!2158 = distinct !DILexicalBlock(scope: !2159, file: !3, line: 1034, column: 57)
!2159 = distinct !DILexicalBlock(scope: !2155, file: !3, line: 1034, column: 9)
!2160 = !DILocation(line: 1035, column: 15, scope: !2158)
!2161 = !DILocation(line: 1037, column: 14, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2163, file: !3, line: 1037, column: 14)
!2163 = distinct !DILexicalBlock(scope: !2157, file: !3, line: 1036, column: 75)
!2164 = !DILocation(line: 1038, column: 11, scope: !2163)
!2165 = !DILocation(line: 1034, column: 53, scope: !2159)
!2166 = !DILocation(line: 1034, column: 23, scope: !2159)
!2167 = distinct !{!2167, !2154, !2168}
!2168 = !DILocation(line: 1039, column: 9, scope: !2155)
!2169 = !DILocation(line: 1040, column: 48, scope: !2015)
!2170 = !DILocation(line: 1040, column: 57, scope: !2015)
!2171 = !DILocation(line: 1041, column: 47, scope: !2015)
!2172 = !DILocation(line: 1042, column: 51, scope: !2015)
!2173 = !DILocation(line: 1043, column: 32, scope: !2015)
!2174 = !DILocation(line: 1043, column: 38, scope: !2015)
!2175 = !DILocation(line: 1044, column: 7, scope: !2015)
!2176 = !DILocation(line: 1045, column: 51, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2016, file: !3, line: 1044, column: 14)
!2178 = !DILocation(line: 1027, column: 42, scope: !2020)
!2179 = !DILocation(line: 1027, column: 17, scope: !2020)
!2180 = !DILocation(line: 1027, column: 3, scope: !2021)
!2181 = distinct !{!2181, !2180, !2182}
!2182 = !DILocation(line: 1048, column: 3, scope: !2021)
!2183 = !DILocation(line: 1052, column: 24, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2185, file: !3, line: 1052, column: 9)
!2185 = distinct !DILexicalBlock(scope: !2186, file: !3, line: 1051, column: 47)
!2186 = distinct !DILexicalBlock(scope: !2187, file: !3, line: 1051, column: 3)
!2187 = distinct !DILexicalBlock(scope: !2008, file: !3, line: 1051, column: 3)
!2188 = !DILocation(line: 1052, column: 30, scope: !2184)
!2189 = !DILocation(line: 1052, column: 9, scope: !2185)
!2190 = !DILocation(line: 1053, column: 26, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2192, file: !3, line: 1053, column: 11)
!2192 = distinct !DILexicalBlock(scope: !2184, file: !3, line: 1052, column: 39)
!2193 = !DILocation(line: 1053, column: 45, scope: !2191)
!2194 = !DILocation(line: 1053, column: 11, scope: !2192)
!2195 = !DILocation(line: 1055, column: 43, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2191, file: !3, line: 1053, column: 73)
!2197 = !DILocation(line: 1056, column: 30, scope: !2196)
!2198 = !DILocation(line: 1057, column: 7, scope: !2196)
!2199 = !DILocation(line: 1058, column: 43, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2191, file: !3, line: 1057, column: 14)
!2201 = !DILocation(line: 1065, column: 5, scope: !2025)
!2202 = !DILocation(line: 1069, column: 20, scope: !2023)
!2203 = !DILocation(line: 1066, column: 12, scope: !2023)
!2204 = !DILocation(line: 1083, column: 12, scope: !2031)
!2205 = !DILocation(line: 1083, column: 43, scope: !2031)
!2206 = !DILocation(line: 1084, column: 12, scope: !2031)
!2207 = !DILocation(line: 1083, column: 11, scope: !2023)
!2208 = !DILocation(line: 1088, column: 11, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2210, file: !3, line: 1088, column: 11)
!2210 = distinct !DILexicalBlock(scope: !2211, file: !3, line: 1088, column: 11)
!2211 = distinct !DILexicalBlock(scope: !2212, file: !3, line: 1088, column: 11)
!2212 = distinct !DILexicalBlock(scope: !2213, file: !3, line: 1086, column: 46)
!2213 = distinct !DILexicalBlock(scope: !2030, file: !3, line: 1086, column: 13)
!2214 = !DILocation(line: 1089, column: 11, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2216, file: !3, line: 1089, column: 11)
!2216 = distinct !DILexicalBlock(scope: !2217, file: !3, line: 1089, column: 11)
!2217 = distinct !DILexicalBlock(scope: !2212, file: !3, line: 1089, column: 11)
!2218 = !DILocation(line: 1090, column: 11, scope: !2212)
!2219 = !DILocation(line: 1091, column: 9, scope: !2212)
!2220 = !DILocation(line: 1093, column: 18, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2222, file: !3, line: 1092, column: 48)
!2222 = distinct !DILexicalBlock(scope: !2223, file: !3, line: 1092, column: 15)
!2223 = distinct !DILexicalBlock(scope: !2213, file: !3, line: 1091, column: 16)
!2224 = !DILocation(line: 1085, column: 15, scope: !2030)
!2225 = !DILocation(line: 1095, column: 13, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2227, file: !3, line: 1095, column: 13)
!2227 = distinct !DILexicalBlock(scope: !2228, file: !3, line: 1095, column: 13)
!2228 = distinct !DILexicalBlock(scope: !2221, file: !3, line: 1095, column: 13)
!2229 = !DILocation(line: 1098, column: 18, scope: !2223)
!2230 = !DILocation(line: 1099, column: 20, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2223, file: !3, line: 1099, column: 15)
!2232 = !DILocation(line: 1099, column: 15, scope: !2223)
!2233 = !DILocation(line: 1102, column: 13, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2235, file: !3, line: 1102, column: 13)
!2235 = distinct !DILexicalBlock(scope: !2236, file: !3, line: 1102, column: 13)
!2236 = distinct !DILexicalBlock(scope: !2237, file: !3, line: 1102, column: 13)
!2237 = distinct !DILexicalBlock(scope: !2231, file: !3, line: 1099, column: 48)
!2238 = !DILocation(line: 1103, column: 28, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2237, file: !3, line: 1103, column: 17)
!2240 = !DILocation(line: 1103, column: 17, scope: !2237)
!2241 = !DILocation(line: 1104, column: 15, scope: !2239)
!2242 = !DILocation(line: 1105, column: 23, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2231, file: !3, line: 1105, column: 22)
!2244 = !DILocation(line: 1105, column: 22, scope: !2231)
!2245 = !DILocation(line: 1106, column: 18, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2243, file: !3, line: 1105, column: 55)
!2247 = !DILocation(line: 1107, column: 13, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2249, file: !3, line: 1107, column: 13)
!2249 = distinct !DILexicalBlock(scope: !2250, file: !3, line: 1107, column: 13)
!2250 = distinct !DILexicalBlock(scope: !2246, file: !3, line: 1107, column: 13)
!2251 = !DILocation(line: 1114, column: 20, scope: !2023)
!2252 = !DILocation(line: 1115, column: 11, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2023, file: !3, line: 1115, column: 11)
!2254 = !DILocation(line: 1115, column: 11, scope: !2023)
!2255 = !DILocation(line: 1116, column: 25, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2257, file: !3, line: 1116, column: 13)
!2257 = distinct !DILexicalBlock(scope: !2253, file: !3, line: 1115, column: 45)
!2258 = !DILocation(line: 1116, column: 58, scope: !2256)
!2259 = !DILocation(line: 1116, column: 13, scope: !2257)
!2260 = !DILocation(line: 1122, column: 16, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2262, file: !3, line: 1122, column: 15)
!2262 = distinct !DILexicalBlock(scope: !2256, file: !3, line: 1116, column: 92)
!2263 = !DILocation(line: 1122, column: 50, scope: !2261)
!2264 = !DILocation(line: 1123, column: 15, scope: !2261)
!2265 = !DILocation(line: 1123, column: 50, scope: !2261)
!2266 = !DILocation(line: 1122, column: 15, scope: !2262)
!2267 = !DILocation(line: 0, scope: !2262)
!2268 = !DILocation(line: 1127, column: 11, scope: !2262)
!2269 = !DILocation(line: 1128, column: 9, scope: !2262)
!2270 = !DILocation(line: 1128, column: 20, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2256, file: !3, line: 1128, column: 20)
!2272 = !{!551, !520, i64 261}
!2273 = !DILocation(line: 1128, column: 39, scope: !2271)
!2274 = !DILocation(line: 1130, column: 57, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2271, file: !3, line: 1128, column: 67)
!2276 = !DILocation(line: 1130, column: 11, scope: !2275)
!2277 = !DILocation(line: 1134, column: 30, scope: !2275)
!2278 = !DILocation(line: 1134, column: 11, scope: !2275)
!2279 = !DILocation(line: 1136, column: 9, scope: !2275)
!2280 = !DILocation(line: 1065, column: 46, scope: !2024)
!2281 = !DILocation(line: 1065, column: 19, scope: !2024)
!2282 = distinct !{!2282, !2201, !2283}
!2283 = !DILocation(line: 1138, column: 5, scope: !2025)
!2284 = !DILocation(line: 1064, column: 3, scope: !2027)
!2285 = !DILocation(line: 962, column: 17, scope: !2008)
!2286 = !DILocation(line: 1064, column: 3, scope: !2028)
!2287 = !{!528, !528, i64 0}
!2288 = distinct !{!2288, !2286, !2289}
!2289 = !DILocation(line: 1139, column: 3, scope: !2028)
!2290 = !DILocation(line: 1143, column: 8, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2008, file: !3, line: 1143, column: 7)
!2292 = !DILocation(line: 1143, column: 7, scope: !2008)
!2293 = !DILocation(line: 1144, column: 26, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2291, file: !3, line: 1143, column: 30)
!2295 = !DILocation(line: 1145, column: 5, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2294, file: !3, line: 1145, column: 5)
!2297 = !DILocation(line: 1145, column: 5, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2296, file: !3, line: 1145, column: 5)
!2299 = !DILocation(line: 1146, column: 19, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2301, file: !3, line: 1146, column: 11)
!2301 = distinct !DILexicalBlock(scope: !2298, file: !3, line: 1145, column: 26)
!2302 = !DILocation(line: 1146, column: 28, scope: !2300)
!2303 = !DILocation(line: 1146, column: 33, scope: !2300)
!2304 = !DILocation(line: 1146, column: 36, scope: !2300)
!2305 = !DILocation(line: 1146, column: 55, scope: !2300)
!2306 = !DILocation(line: 1148, column: 12, scope: !2300)
!2307 = !DILocation(line: 1148, column: 63, scope: !2300)
!2308 = !DILocation(line: 1150, column: 13, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2310, file: !3, line: 1150, column: 13)
!2310 = distinct !DILexicalBlock(scope: !2300, file: !3, line: 1149, column: 67)
!2311 = !DILocation(line: 1150, column: 32, scope: !2309)
!2312 = !DILocation(line: 1150, column: 13, scope: !2310)
!2313 = !DILocation(line: 1151, column: 26, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2309, file: !3, line: 1150, column: 43)
!2315 = !DILocation(line: 1152, column: 9, scope: !2314)
!2316 = distinct !{!2316, !2295, !2317}
!2317 = !DILocation(line: 1154, column: 5, scope: !2296)
!2318 = !DILocation(line: 1156, column: 25, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2291, file: !3, line: 1155, column: 10)
!2320 = !DILocation(line: 1160, column: 1, scope: !2008)
!2321 = !DILocation(line: 194, column: 43, scope: !416)
!2322 = !DILocation(line: 196, column: 2, scope: !416)
!2323 = !DILocation(line: 196, column: 10, scope: !416)
!2324 = !DILocation(line: 197, column: 2, scope: !416)
!2325 = !DILocation(line: 198, column: 2, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2327, file: !417, line: 198, column: 2)
!2327 = distinct !DILexicalBlock(scope: !416, file: !417, line: 198, column: 2)
!2328 = !DILocation(line: 199, column: 2, scope: !416)
!2329 = !DILocation(line: 200, column: 1, scope: !416)
!2330 = distinct !DISubprogram(name: "nd6_send_ns", scope: !3, file: !3, line: 1181, type: !1579, isLocal: true, isDefinition: true, scopeLine: 1182, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2331)
!2331 = !{!2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339}
!2332 = !DILocalVariable(name: "netif", arg: 1, scope: !2330, file: !3, line: 1181, type: !274)
!2333 = !DILocalVariable(name: "target_addr", arg: 2, scope: !2330, file: !3, line: 1181, type: !162)
!2334 = !DILocalVariable(name: "flags", arg: 3, scope: !2330, file: !3, line: 1181, type: !117)
!2335 = !DILocalVariable(name: "ns_hdr", scope: !2330, file: !3, line: 1183, type: !180)
!2336 = !DILocalVariable(name: "p", scope: !2330, file: !3, line: 1184, type: !253)
!2337 = !DILocalVariable(name: "src_addr", scope: !2330, file: !3, line: 1185, type: !162)
!2338 = !DILocalVariable(name: "lladdr_opt_len", scope: !2330, file: !3, line: 1186, type: !131)
!2339 = !DILocalVariable(name: "lladdr_opt", scope: !2340, file: !3, line: 1219, type: !170)
!2340 = distinct !DILexicalBlock(scope: !2341, file: !3, line: 1218, column: 28)
!2341 = distinct !DILexicalBlock(scope: !2330, file: !3, line: 1218, column: 7)
!2342 = !DILocation(line: 1181, column: 27, scope: !2330)
!2343 = !DILocation(line: 1181, column: 52, scope: !2330)
!2344 = !DILocation(line: 1181, column: 70, scope: !2330)
!2345 = !DILocation(line: 1188, column: 3, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2347, file: !3, line: 1188, column: 3)
!2347 = distinct !DILexicalBlock(scope: !2330, file: !3, line: 1188, column: 3)
!2348 = !DILocation(line: 1188, column: 3, scope: !2347)
!2349 = !DILocation(line: 1188, column: 3, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2351, file: !3, line: 1188, column: 3)
!2351 = distinct !DILexicalBlock(scope: !2346, file: !3, line: 1188, column: 3)
!2352 = !DILocation(line: 1188, column: 3, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2354, file: !3, line: 1188, column: 3)
!2354 = distinct !DILexicalBlock(scope: !2355, file: !3, line: 1188, column: 3)
!2355 = distinct !DILexicalBlock(scope: !2350, file: !3, line: 1188, column: 3)
!2356 = !DILocation(line: 1190, column: 9, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2330, file: !3, line: 1190, column: 7)
!2358 = !DILocation(line: 1190, column: 15, scope: !2357)
!2359 = !DILocation(line: 1190, column: 40, scope: !2357)
!2360 = !DILocation(line: 1191, column: 7, scope: !2357)
!2361 = !DILocation(line: 1190, column: 7, scope: !2330)
!2362 = !DILocation(line: 1193, column: 16, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2357, file: !3, line: 1191, column: 56)
!2364 = !DILocation(line: 1185, column: 21, scope: !2330)
!2365 = !DILocation(line: 1195, column: 31, scope: !2363)
!2366 = !DILocation(line: 1195, column: 24, scope: !2363)
!2367 = !DILocation(line: 1195, column: 47, scope: !2363)
!2368 = !DILocation(line: 1195, column: 52, scope: !2363)
!2369 = !DILocation(line: 1186, column: 9, scope: !2330)
!2370 = !DILocation(line: 1196, column: 3, scope: !2363)
!2371 = !DILocation(line: 0, scope: !2363)
!2372 = !DILocation(line: 1203, column: 70, scope: !2330)
!2373 = !DILocation(line: 1203, column: 52, scope: !2330)
!2374 = !DILocation(line: 1203, column: 7, scope: !2330)
!2375 = !DILocation(line: 1184, column: 16, scope: !2330)
!2376 = !DILocation(line: 1204, column: 9, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2330, file: !3, line: 1204, column: 7)
!2378 = !DILocation(line: 1204, column: 7, scope: !2330)
!2379 = !DILocation(line: 1205, column: 5, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2377, file: !3, line: 1204, column: 18)
!2381 = !DILocation(line: 1206, column: 5, scope: !2380)
!2382 = !DILocation(line: 1210, column: 35, scope: !2330)
!2383 = !DILocation(line: 1183, column: 21, scope: !2330)
!2384 = !DILocation(line: 1212, column: 11, scope: !2330)
!2385 = !DILocation(line: 1212, column: 16, scope: !2330)
!2386 = !{!753, !520, i64 0}
!2387 = !DILocation(line: 1213, column: 11, scope: !2330)
!2388 = !DILocation(line: 1213, column: 16, scope: !2330)
!2389 = !DILocation(line: 1214, column: 11, scope: !2330)
!2390 = !DILocation(line: 1214, column: 18, scope: !2330)
!2391 = !{!753, !519, i64 2}
!2392 = !DILocation(line: 1215, column: 11, scope: !2330)
!2393 = !DILocation(line: 1215, column: 20, scope: !2330)
!2394 = !{!753, !548, i64 4}
!2395 = !DILocation(line: 1216, column: 3, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !2330, file: !3, line: 1216, column: 3)
!2397 = !DILocation(line: 1218, column: 22, scope: !2341)
!2398 = !DILocation(line: 1218, column: 7, scope: !2330)
!2399 = !DILocation(line: 1219, column: 83, scope: !2340)
!2400 = !DILocation(line: 1219, column: 27, scope: !2340)
!2401 = !DILocation(line: 1220, column: 22, scope: !2340)
!2402 = !DILocation(line: 1221, column: 26, scope: !2340)
!2403 = !DILocation(line: 1221, column: 17, scope: !2340)
!2404 = !DILocation(line: 1221, column: 24, scope: !2340)
!2405 = !DILocation(line: 1222, column: 5, scope: !2340)
!2406 = !DILocation(line: 1223, column: 3, scope: !2340)
!2407 = !DILocation(line: 1226, column: 13, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2330, file: !3, line: 1226, column: 7)
!2409 = !DILocation(line: 1226, column: 7, scope: !2330)
!2410 = !DILocation(line: 1227, column: 5, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2412, file: !3, line: 1227, column: 5)
!2412 = distinct !DILexicalBlock(scope: !2408, file: !3, line: 1226, column: 45)
!2413 = !DILocation(line: 1228, column: 5, scope: !2412)
!2414 = !DILocation(line: 1233, column: 3, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2330, file: !3, line: 1233, column: 3)
!2416 = !DILocation(line: 1233, column: 3, scope: !2330)
!2417 = !DILocation(line: 1234, column: 63, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2415, file: !3, line: 1233, column: 63)
!2419 = !DILocation(line: 1234, column: 22, scope: !2418)
!2420 = !DILocation(line: 1234, column: 20, scope: !2418)
!2421 = !DILocation(line: 1236, column: 3, scope: !2418)
!2422 = !DILocation(line: 1240, column: 3, scope: !2330)
!2423 = !DILocation(line: 1241, column: 30, scope: !2330)
!2424 = !DILocation(line: 1241, column: 20, scope: !2330)
!2425 = !DILocation(line: 1241, column: 3, scope: !2330)
!2426 = !DILocation(line: 1243, column: 3, scope: !2330)
!2427 = !DILocation(line: 1244, column: 1, scope: !2330)
!2428 = distinct !DISubprogram(name: "nd6_clear_destination_cache", scope: !3, file: !3, line: 1613, type: !2009, isLocal: false, isDefinition: true, scopeLine: 1614, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2429)
!2429 = !{!2430}
!2430 = !DILocalVariable(name: "i", scope: !2428, file: !3, line: 1615, type: !22)
!2431 = !DILocation(line: 1615, column: 7, scope: !2428)
!2432 = !DILocation(line: 1618, column: 5, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2434, file: !3, line: 1618, column: 5)
!2434 = distinct !DILexicalBlock(scope: !2435, file: !3, line: 1617, column: 51)
!2435 = distinct !DILexicalBlock(scope: !2436, file: !3, line: 1617, column: 3)
!2436 = distinct !DILexicalBlock(scope: !2428, file: !3, line: 1617, column: 3)
!2437 = !DILocation(line: 1620, column: 1, scope: !2428)
!2438 = distinct !DISubprogram(name: "nd6_find_route", scope: !3, file: !3, line: 1742, type: !2439, isLocal: false, isDefinition: true, scopeLine: 1743, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2441)
!2439 = !DISubroutineType(types: !2440)
!2440 = !{!274, !162}
!2441 = !{!2442, !2443, !2444}
!2442 = !DILocalVariable(name: "ip6addr", arg: 1, scope: !2438, file: !3, line: 1742, type: !162)
!2443 = !DILocalVariable(name: "netif", scope: !2438, file: !3, line: 1744, type: !274)
!2444 = !DILocalVariable(name: "i", scope: !2438, file: !3, line: 1745, type: !307)
!2445 = !DILocation(line: 1742, column: 34, scope: !2438)
!2446 = !DILocation(line: 1745, column: 8, scope: !2438)
!2447 = !DILocation(line: 1752, column: 28, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2449, file: !3, line: 1751, column: 47)
!2449 = distinct !DILexicalBlock(scope: !2450, file: !3, line: 1751, column: 3)
!2450 = distinct !DILexicalBlock(scope: !2438, file: !3, line: 1751, column: 3)
!2451 = !DILocation(line: 1744, column: 17, scope: !2438)
!2452 = !DILocation(line: 1753, column: 16, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2448, file: !3, line: 1753, column: 9)
!2454 = !DILocation(line: 1753, column: 25, scope: !2453)
!2455 = !DILocation(line: 1753, column: 28, scope: !2453)
!2456 = !DILocation(line: 1753, column: 77, scope: !2453)
!2457 = !DILocation(line: 1754, column: 9, scope: !2453)
!2458 = !DILocation(line: 1754, column: 28, scope: !2453)
!2459 = !DILocation(line: 1762, column: 5, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2461, file: !3, line: 1762, column: 5)
!2461 = distinct !DILexicalBlock(scope: !2462, file: !3, line: 1762, column: 5)
!2462 = distinct !DILexicalBlock(scope: !2463, file: !3, line: 1761, column: 15)
!2463 = distinct !DILexicalBlock(scope: !2438, file: !3, line: 1761, column: 7)
!2464 = !DILocation(line: 1762, column: 5, scope: !2461)
!2465 = !DILocation(line: 1762, column: 5, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2467, file: !3, line: 1762, column: 5)
!2467 = distinct !DILexicalBlock(scope: !2460, file: !3, line: 1762, column: 5)
!2468 = !DILocation(line: 1762, column: 5, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2470, file: !3, line: 1762, column: 5)
!2470 = distinct !DILexicalBlock(scope: !2471, file: !3, line: 1762, column: 5)
!2471 = distinct !DILexicalBlock(scope: !2466, file: !3, line: 1762, column: 5)
!2472 = !DILocation(line: 1764, column: 51, scope: !2462)
!2473 = !DILocation(line: 1764, column: 5, scope: !2462)
!2474 = !DILocation(line: 0, scope: !2438)
!2475 = !DILocation(line: 1768, column: 1, scope: !2438)
!2476 = !DILocation(line: 1760, column: 7, scope: !2438)
!2477 = !DILocation(line: 1761, column: 9, scope: !2463)
!2478 = !DILocation(line: 1761, column: 7, scope: !2438)
!2479 = !DILocation(line: 1670, column: 37, scope: !443)
!2480 = !DILocation(line: 1670, column: 60, scope: !443)
!2481 = !DILocation(line: 1673, column: 14, scope: !443)
!2482 = !DILocation(line: 1673, column: 8, scope: !443)
!2483 = !DILocation(line: 1684, column: 32, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2485, file: !3, line: 1684, column: 9)
!2485 = distinct !DILexicalBlock(scope: !2486, file: !3, line: 1682, column: 46)
!2486 = distinct !DILexicalBlock(scope: !2487, file: !3, line: 1682, column: 3)
!2487 = distinct !DILexicalBlock(scope: !443, file: !3, line: 1682, column: 3)
!2488 = !DILocation(line: 1684, column: 47, scope: !2484)
!2489 = !DILocation(line: 1684, column: 9, scope: !2485)
!2490 = !DILocation(line: 1685, column: 61, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2484, file: !3, line: 1684, column: 56)
!2492 = !DILocation(line: 1672, column: 17, scope: !443)
!2493 = !DILocation(line: 1686, column: 25, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2491, file: !3, line: 1686, column: 11)
!2495 = !DILocation(line: 1686, column: 34, scope: !2494)
!2496 = !DILocation(line: 1686, column: 11, scope: !2491)
!2497 = !DILocation(line: 1686, column: 60, scope: !2494)
!2498 = !DILocation(line: 1686, column: 38, scope: !2494)
!2499 = !DILocation(line: 1687, column: 12, scope: !2494)
!2500 = !DILocation(line: 1687, column: 38, scope: !2494)
!2501 = !DILocation(line: 1691, column: 52, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2503, file: !3, line: 1691, column: 13)
!2503 = distinct !DILexicalBlock(scope: !2494, file: !3, line: 1687, column: 75)
!2504 = !DILocation(line: 1691, column: 13, scope: !2503)
!2505 = !DILocation(line: 1695, column: 22, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2507, file: !3, line: 1693, column: 15)
!2507 = distinct !DILexicalBlock(scope: !2502, file: !3, line: 1691, column: 77)
!2508 = !DILocation(line: 0, scope: !443)
!2509 = !DILocation(line: 1710, column: 23, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !443, file: !3, line: 1710, column: 7)
!2511 = !DILocation(line: 1710, column: 27, scope: !2510)
!2512 = !DILocation(line: 1710, column: 41, scope: !2510)
!2513 = !DILocation(line: 1710, column: 7, scope: !443)
!2514 = !DILocation(line: 0, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2510, file: !3, line: 1710, column: 67)
!2516 = !DILocation(line: 1713, column: 7, scope: !443)
!2517 = !DILocation(line: 1673, column: 11, scope: !443)
!2518 = !DILocation(line: 1715, column: 9, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2520, file: !3, line: 1715, column: 9)
!2520 = distinct !DILexicalBlock(scope: !2521, file: !3, line: 1714, column: 46)
!2521 = distinct !DILexicalBlock(scope: !2522, file: !3, line: 1714, column: 3)
!2522 = distinct !DILexicalBlock(scope: !443, file: !3, line: 1714, column: 3)
!2523 = !DILocation(line: 1715, column: 32, scope: !2519)
!2524 = !DILocation(line: 1715, column: 47, scope: !2519)
!2525 = !DILocation(line: 1715, column: 9, scope: !2520)
!2526 = !DILocation(line: 1716, column: 61, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2519, file: !3, line: 1715, column: 56)
!2528 = !DILocation(line: 1717, column: 25, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2527, file: !3, line: 1717, column: 11)
!2530 = !DILocation(line: 1717, column: 34, scope: !2529)
!2531 = !DILocation(line: 1717, column: 11, scope: !2527)
!2532 = !DILocation(line: 1717, column: 60, scope: !2529)
!2533 = !DILocation(line: 1717, column: 38, scope: !2529)
!2534 = !DILocation(line: 1718, column: 12, scope: !2529)
!2535 = !DILocation(line: 1718, column: 38, scope: !2529)
!2536 = !DILocation(line: 1722, column: 9, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2520, file: !3, line: 1722, column: 9)
!2538 = !DILocation(line: 1722, column: 13, scope: !2537)
!2539 = !DILocation(line: 1722, column: 9, scope: !2520)
!2540 = !DILocation(line: 1729, column: 1, scope: !443)
!2541 = !DILocation(line: 1695, column: 35, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2506, file: !3, line: 1695, column: 22)
!2543 = !DILocation(line: 1702, column: 20, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !443, file: !3, line: 1702, column: 7)
!2545 = !DILocation(line: 1702, column: 7, scope: !443)
!2546 = distinct !DISubprogram(name: "nd6_get_next_hop_addr_or_queue", scope: !3, file: !3, line: 2247, type: !2547, isLocal: false, isDefinition: true, scopeLine: 2248, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2552)
!2547 = !DISubroutineType(types: !2548)
!2548 = !{!306, !274, !253, !162, !2549}
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!2552 = !{!2553, !2554, !2555, !2556, !2557}
!2553 = !DILocalVariable(name: "netif", arg: 1, scope: !2546, file: !3, line: 2247, type: !274)
!2554 = !DILocalVariable(name: "q", arg: 2, scope: !2546, file: !3, line: 2247, type: !253)
!2555 = !DILocalVariable(name: "ip6addr", arg: 3, scope: !2546, file: !3, line: 2247, type: !162)
!2556 = !DILocalVariable(name: "hwaddrp", arg: 4, scope: !2546, file: !3, line: 2247, type: !2549)
!2557 = !DILocalVariable(name: "i", scope: !2546, file: !3, line: 2249, type: !307)
!2558 = !DILocation(line: 2247, column: 46, scope: !2546)
!2559 = !DILocation(line: 2247, column: 66, scope: !2546)
!2560 = !DILocation(line: 2247, column: 87, scope: !2546)
!2561 = !DILocation(line: 2247, column: 109, scope: !2546)
!2562 = !DILocalVariable(name: "ip6addr", arg: 1, scope: !2563, file: !3, line: 1924, type: !162)
!2563 = distinct !DISubprogram(name: "nd6_get_next_hop_entry", scope: !3, file: !3, line: 1924, type: !444, isLocal: true, isDefinition: true, scopeLine: 1925, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2564)
!2564 = !{!2562, !2565, !2566, !2567}
!2565 = !DILocalVariable(name: "netif", arg: 2, scope: !2563, file: !3, line: 1924, type: !274)
!2566 = !DILocalVariable(name: "i", scope: !2563, file: !3, line: 1929, type: !307)
!2567 = !DILocalVariable(name: "dst_idx", scope: !2563, file: !3, line: 1930, type: !466)
!2568 = !DILocation(line: 1924, column: 42, scope: !2563, inlinedAt: !2569)
!2569 = distinct !DILocation(line: 2252, column: 7, scope: !2546)
!2570 = !DILocation(line: 1924, column: 65, scope: !2563, inlinedAt: !2569)
!2571 = !DILocation(line: 1945, column: 7, scope: !2572, inlinedAt: !2569)
!2572 = distinct !DILexicalBlock(scope: !2563, file: !3, line: 1945, column: 7)
!2573 = !DILocation(line: 1945, column: 7, scope: !2563, inlinedAt: !2569)
!2574 = !DILocation(line: 1948, column: 5, scope: !2575, inlinedAt: !2569)
!2575 = distinct !DILexicalBlock(scope: !2572, file: !3, line: 1945, column: 99)
!2576 = !{!517, !519, i64 308}
!2577 = !DILocation(line: 1949, column: 3, scope: !2575, inlinedAt: !2569)
!2578 = !DILocation(line: 1560, column: 52, scope: !1401, inlinedAt: !2579)
!2579 = distinct !DILocation(line: 1951, column: 15, scope: !2580, inlinedAt: !2569)
!2580 = distinct !DILexicalBlock(scope: !2572, file: !3, line: 1949, column: 10)
!2581 = !DILocation(line: 1562, column: 9, scope: !1401, inlinedAt: !2579)
!2582 = !DILocation(line: 1567, column: 9, scope: !1412, inlinedAt: !2579)
!2583 = !DILocation(line: 1566, column: 3, scope: !1410, inlinedAt: !2579)
!2584 = !DILocation(line: 1567, column: 9, scope: !1413, inlinedAt: !2579)
!2585 = !DILocation(line: 1566, column: 47, scope: !1414, inlinedAt: !2579)
!2586 = !DILocation(line: 1566, column: 17, scope: !1414, inlinedAt: !2579)
!2587 = !DILocation(line: 1572, column: 1, scope: !1401, inlinedAt: !2579)
!2588 = !DILocation(line: 1930, column: 9, scope: !2563, inlinedAt: !2569)
!2589 = !DILocation(line: 1954, column: 7, scope: !2590, inlinedAt: !2569)
!2590 = distinct !DILexicalBlock(scope: !2591, file: !3, line: 1954, column: 7)
!2591 = distinct !DILexicalBlock(scope: !2592, file: !3, line: 1954, column: 7)
!2592 = distinct !DILexicalBlock(scope: !2593, file: !3, line: 1952, column: 23)
!2593 = distinct !DILexicalBlock(scope: !2580, file: !3, line: 1952, column: 9)
!2594 = !DILocation(line: 1954, column: 7, scope: !2591, inlinedAt: !2569)
!2595 = !DILocation(line: 1954, column: 7, scope: !2596, inlinedAt: !2569)
!2596 = distinct !DILexicalBlock(scope: !2597, file: !3, line: 1954, column: 7)
!2597 = distinct !DILexicalBlock(scope: !2590, file: !3, line: 1954, column: 7)
!2598 = !DILocation(line: 1954, column: 7, scope: !2599, inlinedAt: !2569)
!2599 = distinct !DILexicalBlock(scope: !2600, file: !3, line: 1954, column: 7)
!2600 = distinct !DILexicalBlock(scope: !2601, file: !3, line: 1954, column: 7)
!2601 = distinct !DILexicalBlock(scope: !2596, file: !3, line: 1954, column: 7)
!2602 = !DILocation(line: 1955, column: 38, scope: !2592, inlinedAt: !2569)
!2603 = !DILocation(line: 1955, column: 36, scope: !2592, inlinedAt: !2569)
!2604 = !DILocation(line: 2005, column: 7, scope: !2605, inlinedAt: !2569)
!2605 = distinct !DILexicalBlock(scope: !2563, file: !3, line: 2005, column: 7)
!2606 = !DILocation(line: 1956, column: 5, scope: !2592, inlinedAt: !2569)
!2607 = !DILocalVariable(name: "i", scope: !2608, file: !3, line: 1584, type: !466)
!2608 = distinct !DISubprogram(name: "nd6_new_destination_cache_entry", scope: !3, file: !3, line: 1582, type: !2609, isLocal: true, isDefinition: true, scopeLine: 1583, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2611)
!2609 = !DISubroutineType(types: !2610)
!2610 = !{!466}
!2611 = !{!2607, !2612, !2613}
!2612 = !DILocalVariable(name: "j", scope: !2608, file: !3, line: 1584, type: !466)
!2613 = !DILocalVariable(name: "age", scope: !2608, file: !3, line: 1585, type: !147)
!2614 = !DILocation(line: 1584, column: 9, scope: !2608, inlinedAt: !2615)
!2615 = distinct !DILocation(line: 1958, column: 17, scope: !2616, inlinedAt: !2569)
!2616 = distinct !DILexicalBlock(scope: !2593, file: !3, line: 1956, column: 12)
!2617 = !DILocation(line: 1589, column: 9, scope: !2618, inlinedAt: !2615)
!2618 = distinct !DILexicalBlock(scope: !2619, file: !3, line: 1589, column: 9)
!2619 = distinct !DILexicalBlock(scope: !2620, file: !3, line: 1588, column: 51)
!2620 = distinct !DILexicalBlock(scope: !2621, file: !3, line: 1588, column: 3)
!2621 = distinct !DILexicalBlock(scope: !2608, file: !3, line: 1588, column: 3)
!2622 = !DILocation(line: 1584, column: 12, scope: !2608, inlinedAt: !2615)
!2623 = !DILocation(line: 1598, column: 30, scope: !2624, inlinedAt: !2615)
!2624 = distinct !DILexicalBlock(scope: !2625, file: !3, line: 1598, column: 9)
!2625 = distinct !DILexicalBlock(scope: !2626, file: !3, line: 1597, column: 51)
!2626 = distinct !DILexicalBlock(scope: !2627, file: !3, line: 1597, column: 3)
!2627 = distinct !DILexicalBlock(scope: !2608, file: !3, line: 1597, column: 3)
!2628 = !DILocation(line: 1598, column: 34, scope: !2624, inlinedAt: !2615)
!2629 = !DILocation(line: 1598, column: 9, scope: !2625, inlinedAt: !2615)
!2630 = !DILocation(line: 1604, column: 1, scope: !2608, inlinedAt: !2615)
!2631 = !DILocation(line: 0, scope: !2608, inlinedAt: !2615)
!2632 = !DILocation(line: 1962, column: 38, scope: !2633, inlinedAt: !2569)
!2633 = distinct !DILexicalBlock(scope: !2634, file: !3, line: 1959, column: 25)
!2634 = distinct !DILexicalBlock(scope: !2616, file: !3, line: 1959, column: 11)
!2635 = !DILocation(line: 1969, column: 7, scope: !2636, inlinedAt: !2569)
!2636 = distinct !DILexicalBlock(scope: !2616, file: !3, line: 1969, column: 7)
!2637 = !DILocation(line: 1972, column: 11, scope: !2638, inlinedAt: !2569)
!2638 = distinct !DILexicalBlock(scope: !2616, file: !3, line: 1972, column: 11)
!2639 = !DILocation(line: 1972, column: 41, scope: !2638, inlinedAt: !2569)
!2640 = !DILocalVariable(name: "ip6addr", arg: 1, scope: !2641, file: !3, line: 1630, type: !162)
!2641 = distinct !DISubprogram(name: "nd6_is_prefix_in_netif", scope: !3, file: !3, line: 1630, type: !2642, isLocal: true, isDefinition: true, scopeLine: 1631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2644)
!2642 = !DISubroutineType(types: !2643)
!2643 = !{!22, !162, !274}
!2644 = !{!2640, !2645, !2646}
!2645 = !DILocalVariable(name: "netif", arg: 2, scope: !2641, file: !3, line: 1630, type: !274)
!2646 = !DILocalVariable(name: "i", scope: !2641, file: !3, line: 1632, type: !307)
!2647 = !DILocation(line: 1630, column: 42, scope: !2641, inlinedAt: !2648)
!2648 = distinct !DILocation(line: 1973, column: 11, scope: !2638, inlinedAt: !2569)
!2649 = !DILocation(line: 1630, column: 65, scope: !2641, inlinedAt: !2648)
!2650 = !DILocation(line: 1632, column: 8, scope: !2641, inlinedAt: !2648)
!2651 = !DILocation(line: 1636, column: 25, scope: !2652, inlinedAt: !2648)
!2652 = distinct !DILexicalBlock(scope: !2653, file: !3, line: 1636, column: 9)
!2653 = distinct !DILexicalBlock(scope: !2654, file: !3, line: 1635, column: 47)
!2654 = distinct !DILexicalBlock(scope: !2655, file: !3, line: 1635, column: 3)
!2655 = distinct !DILexicalBlock(scope: !2641, file: !3, line: 1635, column: 3)
!2656 = !DILocation(line: 1636, column: 31, scope: !2652, inlinedAt: !2648)
!2657 = !DILocation(line: 1637, column: 25, scope: !2652, inlinedAt: !2648)
!2658 = !DILocation(line: 1637, column: 44, scope: !2652, inlinedAt: !2648)
!2659 = !DILocation(line: 1636, column: 41, scope: !2652, inlinedAt: !2648)
!2660 = !DILocation(line: 1638, column: 9, scope: !2652, inlinedAt: !2648)
!2661 = !DILocation(line: 1636, column: 9, scope: !2653, inlinedAt: !2648)
!2662 = !DILocation(line: 1648, column: 9, scope: !2663, inlinedAt: !2648)
!2663 = distinct !DILexicalBlock(scope: !2664, file: !3, line: 1647, column: 9)
!2664 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 1646, column: 49)
!2665 = distinct !DILexicalBlock(scope: !2666, file: !3, line: 1646, column: 3)
!2666 = distinct !DILexicalBlock(scope: !2641, file: !3, line: 1646, column: 3)
!2667 = !DILocation(line: 1648, column: 43, scope: !2663, inlinedAt: !2648)
!2668 = !DILocation(line: 1649, column: 9, scope: !2663, inlinedAt: !2648)
!2669 = !DILocation(line: 1647, column: 9, scope: !2664, inlinedAt: !2648)
!2670 = !DILocation(line: 1647, column: 9, scope: !2663, inlinedAt: !2648)
!2671 = !DILocation(line: 1647, column: 58, scope: !2663, inlinedAt: !2648)
!2672 = !DILocation(line: 1654, column: 1, scope: !2641, inlinedAt: !2648)
!2673 = !DILocation(line: 1972, column: 11, scope: !2616, inlinedAt: !2569)
!2674 = !DILocation(line: 1975, column: 64, scope: !2675, inlinedAt: !2569)
!2675 = distinct !DILexicalBlock(scope: !2638, file: !3, line: 1973, column: 51)
!2676 = !DILocation(line: 1975, column: 57, scope: !2675, inlinedAt: !2569)
!2677 = !DILocation(line: 1975, column: 62, scope: !2675, inlinedAt: !2569)
!2678 = !DILocation(line: 1976, column: 9, scope: !2679, inlinedAt: !2569)
!2679 = distinct !DILexicalBlock(scope: !2675, file: !3, line: 1976, column: 9)
!2680 = !DILocation(line: 1983, column: 7, scope: !2675, inlinedAt: !2569)
!2681 = !DILocation(line: 1985, column: 13, scope: !2682, inlinedAt: !2569)
!2682 = distinct !DILexicalBlock(scope: !2638, file: !3, line: 1983, column: 14)
!2683 = !DILocation(line: 1929, column: 8, scope: !2563, inlinedAt: !2569)
!2684 = !DILocation(line: 1986, column: 15, scope: !2685, inlinedAt: !2569)
!2685 = distinct !DILexicalBlock(scope: !2682, file: !3, line: 1986, column: 13)
!2686 = !DILocation(line: 1986, column: 13, scope: !2682, inlinedAt: !2569)
!2687 = !DILocation(line: 1988, column: 11, scope: !2688, inlinedAt: !2569)
!2688 = distinct !DILexicalBlock(scope: !2689, file: !3, line: 1988, column: 11)
!2689 = distinct !DILexicalBlock(scope: !2685, file: !3, line: 1986, column: 20)
!2690 = !DILocation(line: 1989, column: 11, scope: !2689, inlinedAt: !2569)
!2691 = !DILocation(line: 1991, column: 64, scope: !2682, inlinedAt: !2569)
!2692 = !DILocation(line: 1991, column: 57, scope: !2682, inlinedAt: !2569)
!2693 = !DILocation(line: 1991, column: 62, scope: !2682, inlinedAt: !2569)
!2694 = !DILocation(line: 1992, column: 9, scope: !2695, inlinedAt: !2569)
!2695 = distinct !DILexicalBlock(scope: !2682, file: !3, line: 1992, column: 9)
!2696 = !DILocation(line: 2005, column: 7, scope: !2563, inlinedAt: !2569)
!2697 = !DILocation(line: 2009, column: 5, scope: !2698, inlinedAt: !2569)
!2698 = distinct !DILexicalBlock(scope: !2605, file: !3, line: 2006, column: 84)
!2699 = !DILocation(line: 2010, column: 3, scope: !2698, inlinedAt: !2569)
!2700 = !DILocation(line: 1403, column: 8, scope: !636, inlinedAt: !2701)
!2701 = distinct !DILocation(line: 2011, column: 9, scope: !2702, inlinedAt: !2569)
!2702 = distinct !DILexicalBlock(scope: !2605, file: !3, line: 2010, column: 10)
!2703 = !DILocation(line: 1405, column: 9, scope: !644, inlinedAt: !2701)
!2704 = !DILocation(line: 1404, column: 3, scope: !647, inlinedAt: !2701)
!2705 = !DILocation(line: 1405, column: 9, scope: !645, inlinedAt: !2701)
!2706 = !DILocation(line: 1404, column: 44, scope: !646, inlinedAt: !2701)
!2707 = !DILocation(line: 1404, column: 17, scope: !646, inlinedAt: !2701)
!2708 = !DILocation(line: 1410, column: 1, scope: !636, inlinedAt: !2701)
!2709 = !DILocation(line: 2014, column: 33, scope: !2710, inlinedAt: !2569)
!2710 = distinct !DILexicalBlock(scope: !2711, file: !3, line: 2012, column: 17)
!2711 = distinct !DILexicalBlock(scope: !2702, file: !3, line: 2012, column: 9)
!2712 = !DILocation(line: 2038, column: 51, scope: !2563, inlinedAt: !2569)
!2713 = !DILocation(line: 2038, column: 55, scope: !2563, inlinedAt: !2569)
!2714 = !DILocation(line: 2041, column: 1, scope: !2563, inlinedAt: !2569)
!2715 = !DILocation(line: 2249, column: 8, scope: !2546)
!2716 = !DILocation(line: 2253, column: 7, scope: !2546)
!2717 = !DILocation(line: 2017, column: 11, scope: !2718, inlinedAt: !2569)
!2718 = distinct !DILexicalBlock(scope: !2711, file: !3, line: 2015, column: 12)
!2719 = !DILocation(line: 2018, column: 13, scope: !2720, inlinedAt: !2569)
!2720 = distinct !DILexicalBlock(scope: !2718, file: !3, line: 2018, column: 11)
!2721 = !DILocation(line: 2018, column: 11, scope: !2718, inlinedAt: !2569)
!2722 = !DILocation(line: 2020, column: 35, scope: !2723, inlinedAt: !2569)
!2723 = distinct !DILexicalBlock(scope: !2720, file: !3, line: 2018, column: 19)
!2724 = !DILocation(line: 2027, column: 7, scope: !2725, inlinedAt: !2569)
!2725 = distinct !DILexicalBlock(scope: !2718, file: !3, line: 2027, column: 7)
!2726 = !DILocation(line: 2029, column: 25, scope: !2718, inlinedAt: !2569)
!2727 = !DILocation(line: 2029, column: 34, scope: !2718, inlinedAt: !2569)
!2728 = !DILocation(line: 2030, column: 25, scope: !2718, inlinedAt: !2569)
!2729 = !DILocation(line: 2030, column: 31, scope: !2718, inlinedAt: !2569)
!2730 = !DILocation(line: 2031, column: 25, scope: !2718, inlinedAt: !2569)
!2731 = !DILocation(line: 2031, column: 31, scope: !2718, inlinedAt: !2569)
!2732 = !DILocation(line: 2032, column: 33, scope: !2718, inlinedAt: !2569)
!2733 = !DILocation(line: 2032, column: 45, scope: !2718, inlinedAt: !2569)
!2734 = !DILocation(line: 1168, column: 64, scope: !973, inlinedAt: !2735)
!2735 = distinct !DILocation(line: 2033, column: 7, scope: !2718, inlinedAt: !2569)
!2736 = !DILocation(line: 1168, column: 76, scope: !973, inlinedAt: !2735)
!2737 = !DILocation(line: 1170, column: 37, scope: !973, inlinedAt: !2735)
!2738 = !DILocation(line: 1170, column: 3, scope: !973, inlinedAt: !2735)
!2739 = !DILocation(line: 1171, column: 1, scope: !973, inlinedAt: !2735)
!2740 = !DILocation(line: 2038, column: 21, scope: !2563, inlinedAt: !2569)
!2741 = !DILocation(line: 2040, column: 10, scope: !2563, inlinedAt: !2569)
!2742 = !DILocation(line: 2038, column: 3, scope: !2563, inlinedAt: !2569)
!2743 = !DILocation(line: 2253, column: 9, scope: !2744)
!2744 = distinct !DILexicalBlock(scope: !2546, file: !3, line: 2253, column: 7)
!2745 = !DILocation(line: 2259, column: 7, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !2546, file: !3, line: 2259, column: 7)
!2747 = !DILocation(line: 2259, column: 25, scope: !2746)
!2748 = !DILocation(line: 2259, column: 7, scope: !2546)
!2749 = !DILocation(line: 2261, column: 29, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2746, file: !3, line: 2259, column: 45)
!2751 = !DILocation(line: 2262, column: 31, scope: !2750)
!2752 = !DILocation(line: 2262, column: 42, scope: !2750)
!2753 = !DILocation(line: 2265, column: 50, scope: !2754)
!2754 = distinct !DILexicalBlock(scope: !2546, file: !3, line: 2265, column: 7)
!2755 = !DILocation(line: 2270, column: 16, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2754, file: !3, line: 2267, column: 47)
!2757 = !DILocation(line: 2270, column: 14, scope: !2756)
!2758 = !DILocation(line: 2271, column: 5, scope: !2756)
!2759 = !DILocation(line: 2275, column: 12, scope: !2546)
!2760 = !DILocalVariable(name: "neighbor_index", arg: 1, scope: !2761, file: !3, line: 2051, type: !307)
!2761 = distinct !DISubprogram(name: "nd6_queue_packet", scope: !3, file: !3, line: 2051, type: !2762, isLocal: true, isDefinition: true, scopeLine: 2052, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2764)
!2762 = !DISubroutineType(types: !2763)
!2763 = !{!306, !307, !253}
!2764 = !{!2760, !2765, !2766, !2767, !2768, !2769, !2770}
!2765 = !DILocalVariable(name: "q", arg: 2, scope: !2761, file: !3, line: 2051, type: !253)
!2766 = !DILocalVariable(name: "result", scope: !2761, file: !3, line: 2053, type: !306)
!2767 = !DILocalVariable(name: "p", scope: !2761, file: !3, line: 2054, type: !253)
!2768 = !DILocalVariable(name: "copy_needed", scope: !2761, file: !3, line: 2055, type: !22)
!2769 = !DILocalVariable(name: "new_entry", scope: !2761, file: !3, line: 2057, type: !248)
!2770 = !DILocalVariable(name: "r", scope: !2761, file: !3, line: 2057, type: !248)
!2771 = !DILocation(line: 2051, column: 23, scope: !2761, inlinedAt: !2772)
!2772 = distinct !DILocation(line: 2276, column: 10, scope: !2546)
!2773 = !DILocation(line: 2051, column: 52, scope: !2761, inlinedAt: !2772)
!2774 = !DILocation(line: 2053, column: 9, scope: !2761, inlinedAt: !2772)
!2775 = !DILocation(line: 2055, column: 7, scope: !2761, inlinedAt: !2772)
!2776 = !DILocation(line: 2060, column: 28, scope: !2777, inlinedAt: !2772)
!2777 = distinct !DILexicalBlock(scope: !2761, file: !3, line: 2060, column: 7)
!2778 = !DILocation(line: 2054, column: 16, scope: !2761, inlinedAt: !2772)
!2779 = !DILocation(line: 2067, column: 3, scope: !2761, inlinedAt: !2772)
!2780 = !DILocation(line: 2093, column: 5, scope: !2781, inlinedAt: !2772)
!2781 = distinct !DILexicalBlock(scope: !2782, file: !3, line: 2090, column: 10)
!2782 = distinct !DILexicalBlock(scope: !2761, file: !3, line: 2074, column: 7)
!2783 = !DILocation(line: 2096, column: 7, scope: !2761, inlinedAt: !2772)
!2784 = !DILocation(line: 2068, column: 9, scope: !2785, inlinedAt: !2772)
!2785 = distinct !DILexicalBlock(scope: !2786, file: !3, line: 2068, column: 9)
!2786 = distinct !DILexicalBlock(scope: !2761, file: !3, line: 2067, column: 13)
!2787 = !{!527, !520, i64 20}
!2788 = !DILocation(line: 2068, column: 9, scope: !2786, inlinedAt: !2772)
!2789 = !DILocation(line: 2072, column: 12, scope: !2786, inlinedAt: !2772)
!2790 = !{!527, !528, i64 0}
!2791 = distinct !{!2791, !2792, !2793}
!2792 = !DILocation(line: 2067, column: 3, scope: !2761)
!2793 = !DILocation(line: 2073, column: 3, scope: !2761)
!2794 = !DILocation(line: 2076, column: 9, scope: !2795, inlinedAt: !2772)
!2795 = distinct !DILexicalBlock(scope: !2782, file: !3, line: 2074, column: 20)
!2796 = !DILocation(line: 2077, column: 15, scope: !2795, inlinedAt: !2772)
!2797 = !DILocation(line: 2077, column: 24, scope: !2795, inlinedAt: !2772)
!2798 = !DILocation(line: 2077, column: 59, scope: !2795, inlinedAt: !2772)
!2799 = !DILocation(line: 2077, column: 61, scope: !2795, inlinedAt: !2772)
!2800 = !DILocation(line: 2077, column: 5, scope: !2795, inlinedAt: !2772)
!2801 = !DILocation(line: 2057, column: 35, scope: !2761, inlinedAt: !2772)
!2802 = !DILocation(line: 2081, column: 45, scope: !2803, inlinedAt: !2772)
!2803 = distinct !DILexicalBlock(scope: !2795, file: !3, line: 2077, column: 71)
!2804 = !DILocation(line: 2081, column: 40, scope: !2803, inlinedAt: !2772)
!2805 = !DILocation(line: 2082, column: 15, scope: !2803, inlinedAt: !2772)
!2806 = !DILocation(line: 2083, column: 7, scope: !2803, inlinedAt: !2772)
!2807 = !DILocation(line: 2088, column: 11, scope: !2803, inlinedAt: !2772)
!2808 = distinct !{!2808, !2809, !2810}
!2809 = !DILocation(line: 2077, column: 5, scope: !2795)
!2810 = !DILocation(line: 2089, column: 5, scope: !2795)
!2811 = !DILocation(line: 2100, column: 39, scope: !2812, inlinedAt: !2772)
!2812 = distinct !DILexicalBlock(scope: !2813, file: !3, line: 2096, column: 18)
!2813 = distinct !DILexicalBlock(scope: !2761, file: !3, line: 2096, column: 7)
!2814 = !DILocation(line: 2100, column: 17, scope: !2812, inlinedAt: !2772)
!2815 = !DILocation(line: 2057, column: 23, scope: !2761, inlinedAt: !2772)
!2816 = !DILocation(line: 2101, column: 20, scope: !2817, inlinedAt: !2772)
!2817 = distinct !DILexicalBlock(scope: !2812, file: !3, line: 2101, column: 9)
!2818 = !DILocation(line: 2101, column: 29, scope: !2817, inlinedAt: !2772)
!2819 = !DILocation(line: 2101, column: 64, scope: !2817, inlinedAt: !2772)
!2820 = !DILocation(line: 2101, column: 66, scope: !2817, inlinedAt: !2772)
!2821 = !DILocation(line: 2101, column: 9, scope: !2812, inlinedAt: !2772)
!2822 = !DILocation(line: 2104, column: 45, scope: !2823, inlinedAt: !2772)
!2823 = distinct !DILexicalBlock(scope: !2817, file: !3, line: 2101, column: 76)
!2824 = !DILocation(line: 2104, column: 40, scope: !2823, inlinedAt: !2772)
!2825 = !DILocation(line: 2105, column: 15, scope: !2823, inlinedAt: !2772)
!2826 = !DILocation(line: 2106, column: 7, scope: !2823, inlinedAt: !2772)
!2827 = !DILocation(line: 2107, column: 41, scope: !2823, inlinedAt: !2772)
!2828 = !DILocation(line: 2107, column: 19, scope: !2823, inlinedAt: !2772)
!2829 = !DILocation(line: 2108, column: 5, scope: !2823, inlinedAt: !2772)
!2830 = !DILocation(line: 0, scope: !2812, inlinedAt: !2772)
!2831 = !DILocation(line: 2109, column: 19, scope: !2832, inlinedAt: !2772)
!2832 = distinct !DILexicalBlock(scope: !2812, file: !3, line: 2109, column: 9)
!2833 = !DILocation(line: 2109, column: 9, scope: !2812, inlinedAt: !2772)
!2834 = !DILocation(line: 2110, column: 18, scope: !2835, inlinedAt: !2772)
!2835 = distinct !DILexicalBlock(scope: !2832, file: !3, line: 2109, column: 28)
!2836 = !DILocation(line: 2110, column: 23, scope: !2835, inlinedAt: !2772)
!2837 = !DILocation(line: 2111, column: 18, scope: !2835, inlinedAt: !2772)
!2838 = !DILocation(line: 2111, column: 20, scope: !2835, inlinedAt: !2772)
!2839 = !DILocation(line: 2112, column: 42, scope: !2840, inlinedAt: !2772)
!2840 = distinct !DILexicalBlock(scope: !2835, file: !3, line: 2112, column: 11)
!2841 = !DILocation(line: 2112, column: 44, scope: !2840, inlinedAt: !2772)
!2842 = !DILocation(line: 2112, column: 11, scope: !2835, inlinedAt: !2772)
!2843 = !DILocation(line: 0, scope: !2844, inlinedAt: !2772)
!2844 = distinct !DILexicalBlock(scope: !2845, file: !3, line: 2115, column: 33)
!2845 = distinct !DILexicalBlock(scope: !2840, file: !3, line: 2112, column: 53)
!2846 = !DILocation(line: 2115, column: 19, scope: !2845, inlinedAt: !2772)
!2847 = !DILocation(line: 2115, column: 24, scope: !2845, inlinedAt: !2772)
!2848 = !DILocation(line: 2115, column: 9, scope: !2845, inlinedAt: !2772)
!2849 = distinct !{!2849, !2850, !2851}
!2850 = !DILocation(line: 2115, column: 9, scope: !2845)
!2851 = !DILocation(line: 2117, column: 9, scope: !2845)
!2852 = !DILocation(line: 2118, column: 17, scope: !2845, inlinedAt: !2772)
!2853 = !DILocation(line: 2119, column: 7, scope: !2845, inlinedAt: !2772)
!2854 = !DILocation(line: 2121, column: 42, scope: !2855, inlinedAt: !2772)
!2855 = distinct !DILexicalBlock(scope: !2840, file: !3, line: 2119, column: 14)
!2856 = !DILocation(line: 2127, column: 7, scope: !2857, inlinedAt: !2772)
!2857 = distinct !DILexicalBlock(scope: !2832, file: !3, line: 2125, column: 12)
!2858 = !DILocation(line: 0, scope: !2761, inlinedAt: !2772)
!2859 = !DILocation(line: 2146, column: 1, scope: !2761, inlinedAt: !2772)
!2860 = !DILocation(line: 2276, column: 3, scope: !2546)
!2861 = !DILocation(line: 0, scope: !2546)
!2862 = !DILocation(line: 2277, column: 1, scope: !2546)
!2863 = distinct !DISubprogram(name: "nd6_get_destination_mtu", scope: !3, file: !3, line: 2288, type: !2864, isLocal: false, isDefinition: true, scopeLine: 2289, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2866)
!2864 = !DISubroutineType(types: !2865)
!2865 = !{!131, !162, !274}
!2866 = !{!2867, !2868, !2869}
!2867 = !DILocalVariable(name: "ip6addr", arg: 1, scope: !2863, file: !3, line: 2288, type: !162)
!2868 = !DILocalVariable(name: "netif", arg: 2, scope: !2863, file: !3, line: 2288, type: !274)
!2869 = !DILocalVariable(name: "i", scope: !2863, file: !3, line: 2290, type: !466)
!2870 = !DILocation(line: 2288, column: 43, scope: !2863)
!2871 = !DILocation(line: 2288, column: 66, scope: !2863)
!2872 = !DILocation(line: 1560, column: 52, scope: !1401, inlinedAt: !2873)
!2873 = distinct !DILocation(line: 2292, column: 7, scope: !2863)
!2874 = !DILocation(line: 1562, column: 9, scope: !1401, inlinedAt: !2873)
!2875 = !DILocation(line: 1567, column: 9, scope: !1412, inlinedAt: !2873)
!2876 = !DILocation(line: 1566, column: 3, scope: !1410, inlinedAt: !2873)
!2877 = !DILocation(line: 1567, column: 9, scope: !1413, inlinedAt: !2873)
!2878 = !DILocation(line: 1566, column: 47, scope: !1414, inlinedAt: !2873)
!2879 = !DILocation(line: 1566, column: 17, scope: !1414, inlinedAt: !2873)
!2880 = !DILocation(line: 1572, column: 1, scope: !1401, inlinedAt: !2873)
!2881 = !DILocation(line: 2290, column: 9, scope: !2863)
!2882 = !DILocation(line: 2294, column: 9, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2884, file: !3, line: 2294, column: 9)
!2884 = distinct !DILexicalBlock(scope: !2885, file: !3, line: 2293, column: 15)
!2885 = distinct !DILexicalBlock(scope: !2863, file: !3, line: 2293, column: 7)
!2886 = !DILocation(line: 2294, column: 30, scope: !2883)
!2887 = !DILocation(line: 2294, column: 35, scope: !2883)
!2888 = !DILocation(line: 2294, column: 9, scope: !2884)
!2889 = !DILocation(line: 2299, column: 13, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2863, file: !3, line: 2299, column: 7)
!2891 = !DILocation(line: 2299, column: 7, scope: !2863)
!2892 = !DILocation(line: 2300, column: 12, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !2890, file: !3, line: 2299, column: 22)
!2894 = !DILocation(line: 2300, column: 5, scope: !2893)
!2895 = !DILocation(line: 0, scope: !2863)
!2896 = !DILocation(line: 2304, column: 1, scope: !2863)
!2897 = distinct !DISubprogram(name: "nd6_reachability_hint", scope: !3, file: !3, line: 2318, type: !2898, isLocal: false, isDefinition: true, scopeLine: 2319, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2900)
!2898 = !DISubroutineType(types: !2899)
!2899 = !{null, !162}
!2900 = !{!2901, !2902, !2903}
!2901 = !DILocalVariable(name: "ip6addr", arg: 1, scope: !2897, file: !3, line: 2318, type: !162)
!2902 = !DILocalVariable(name: "i", scope: !2897, file: !3, line: 2320, type: !307)
!2903 = !DILocalVariable(name: "dst_idx", scope: !2897, file: !3, line: 2321, type: !466)
!2904 = !DILocation(line: 2318, column: 41, scope: !2897)
!2905 = !DILocation(line: 2324, column: 7, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2897, file: !3, line: 2324, column: 7)
!2907 = !DILocation(line: 2324, column: 7, scope: !2897)
!2908 = !DILocation(line: 2326, column: 5, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !2906, file: !3, line: 2324, column: 99)
!2910 = !DILocation(line: 2321, column: 9, scope: !2897)
!2911 = !DILocation(line: 2330, column: 7, scope: !2897)
!2912 = !DILocation(line: 1560, column: 52, scope: !1401, inlinedAt: !2913)
!2913 = distinct !DILocation(line: 2328, column: 15, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2906, file: !3, line: 2327, column: 10)
!2915 = !DILocation(line: 1562, column: 9, scope: !1401, inlinedAt: !2913)
!2916 = !DILocation(line: 1567, column: 9, scope: !1412, inlinedAt: !2913)
!2917 = !DILocation(line: 1566, column: 3, scope: !1410, inlinedAt: !2913)
!2918 = !DILocation(line: 1567, column: 9, scope: !1413, inlinedAt: !2913)
!2919 = !DILocation(line: 1566, column: 47, scope: !1414, inlinedAt: !2913)
!2920 = !DILocation(line: 1566, column: 17, scope: !1414, inlinedAt: !2913)
!2921 = !DILocation(line: 1572, column: 1, scope: !1401, inlinedAt: !2913)
!2922 = !DILocation(line: 2330, column: 15, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2897, file: !3, line: 2330, column: 7)
!2924 = !DILocation(line: 2335, column: 7, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2897, file: !3, line: 2335, column: 7)
!2926 = !DILocation(line: 2335, column: 7, scope: !2897)
!2927 = !DILocation(line: 2320, column: 8, scope: !2897)
!2928 = !DILocation(line: 2337, column: 5, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2925, file: !3, line: 2335, column: 129)
!2930 = !DILocation(line: 2338, column: 3, scope: !2929)
!2931 = !DILocation(line: 1403, column: 8, scope: !636, inlinedAt: !2932)
!2932 = distinct !DILocation(line: 2339, column: 9, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2925, file: !3, line: 2338, column: 10)
!2934 = !DILocation(line: 1405, column: 9, scope: !644, inlinedAt: !2932)
!2935 = !DILocation(line: 1404, column: 3, scope: !647, inlinedAt: !2932)
!2936 = !DILocation(line: 1405, column: 9, scope: !645, inlinedAt: !2932)
!2937 = !DILocation(line: 1404, column: 44, scope: !646, inlinedAt: !2932)
!2938 = !DILocation(line: 1404, column: 17, scope: !646, inlinedAt: !2932)
!2939 = !DILocation(line: 1410, column: 1, scope: !636, inlinedAt: !2932)
!2940 = !DILocation(line: 0, scope: !636, inlinedAt: !2932)
!2941 = !DILocation(line: 0, scope: !2933)
!2942 = !DILocation(line: 2341, column: 9, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2897, file: !3, line: 2341, column: 7)
!2944 = !DILocation(line: 2341, column: 7, scope: !2897)
!2945 = !DILocation(line: 2346, column: 7, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2897, file: !3, line: 2346, column: 7)
!2947 = !DILocation(line: 2346, column: 25, scope: !2946)
!2948 = !DILocation(line: 2346, column: 49, scope: !2946)
!2949 = !DILocation(line: 2351, column: 27, scope: !2897)
!2950 = !DILocation(line: 2352, column: 46, scope: !2897)
!2951 = !DILocation(line: 2352, column: 29, scope: !2897)
!2952 = !DILocation(line: 2352, column: 44, scope: !2897)
!2953 = !DILocation(line: 2353, column: 1, scope: !2897)
!2954 = distinct !DISubprogram(name: "nd6_cleanup_netif", scope: !3, file: !3, line: 2362, type: !331, isLocal: false, isDefinition: true, scopeLine: 2363, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2955)
!2955 = !{!2956, !2957, !2958}
!2956 = !DILocalVariable(name: "netif", arg: 1, scope: !2954, file: !3, line: 2362, type: !274)
!2957 = !DILocalVariable(name: "i", scope: !2954, file: !3, line: 2364, type: !117)
!2958 = !DILocalVariable(name: "router_index", scope: !2954, file: !3, line: 2365, type: !307)
!2959 = !DILocation(line: 2362, column: 33, scope: !2954)
!2960 = !DILocation(line: 2364, column: 8, scope: !2954)
!2961 = !DILocation(line: 2367, column: 24, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2963, file: !3, line: 2367, column: 9)
!2963 = distinct !DILexicalBlock(scope: !2964, file: !3, line: 2366, column: 47)
!2964 = distinct !DILexicalBlock(scope: !2965, file: !3, line: 2366, column: 3)
!2965 = distinct !DILexicalBlock(scope: !2954, file: !3, line: 2366, column: 3)
!2966 = !DILocation(line: 2367, column: 30, scope: !2962)
!2967 = !DILocation(line: 2367, column: 9, scope: !2963)
!2968 = !DILocation(line: 2368, column: 28, scope: !2969)
!2969 = distinct !DILexicalBlock(scope: !2962, file: !3, line: 2367, column: 40)
!2970 = !DILocation(line: 2369, column: 5, scope: !2969)
!2971 = !DILocation(line: 2372, column: 9, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2973, file: !3, line: 2372, column: 9)
!2973 = distinct !DILexicalBlock(scope: !2974, file: !3, line: 2371, column: 48)
!2974 = distinct !DILexicalBlock(scope: !2975, file: !3, line: 2371, column: 3)
!2975 = distinct !DILexicalBlock(scope: !2954, file: !3, line: 2371, column: 3)
!2976 = !DILocation(line: 2372, column: 27, scope: !2972)
!2977 = !DILocation(line: 2372, column: 33, scope: !2972)
!2978 = !DILocation(line: 2372, column: 9, scope: !2973)
!2979 = !DILocation(line: 2365, column: 8, scope: !2954)
!2980 = !DILocation(line: 2374, column: 47, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2982, file: !3, line: 2374, column: 13)
!2982 = distinct !DILexicalBlock(scope: !2983, file: !3, line: 2373, column: 83)
!2983 = distinct !DILexicalBlock(scope: !2984, file: !3, line: 2373, column: 7)
!2984 = distinct !DILexicalBlock(scope: !2985, file: !3, line: 2373, column: 7)
!2985 = distinct !DILexicalBlock(scope: !2972, file: !3, line: 2372, column: 43)
!2986 = !DILocation(line: 2374, column: 62, scope: !2981)
!2987 = !DILocation(line: 2374, column: 13, scope: !2982)
!2988 = !DILocation(line: 2375, column: 60, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2981, file: !3, line: 2374, column: 85)
!2990 = !DILocation(line: 2376, column: 51, scope: !2989)
!2991 = !DILocation(line: 2377, column: 9, scope: !2989)
!2992 = !DILocation(line: 2379, column: 25, scope: !2985)
!2993 = !DILocation(line: 2379, column: 34, scope: !2985)
!2994 = !DILocation(line: 1529, column: 36, scope: !1708, inlinedAt: !2995)
!2995 = distinct !DILocation(line: 2380, column: 7, scope: !2985)
!2996 = !DILocation(line: 1540, column: 25, scope: !1714, inlinedAt: !2995)
!2997 = !DILocation(line: 1540, column: 27, scope: !1714, inlinedAt: !2995)
!2998 = !DILocation(line: 1540, column: 7, scope: !1708, inlinedAt: !2995)
!2999 = !DILocation(line: 1541, column: 5, scope: !1718, inlinedAt: !2995)
!3000 = !DILocation(line: 1542, column: 25, scope: !1718, inlinedAt: !2995)
!3001 = !DILocation(line: 1543, column: 3, scope: !1718, inlinedAt: !2995)
!3002 = !DILocation(line: 1545, column: 21, scope: !1708, inlinedAt: !2995)
!3003 = !DILocation(line: 1545, column: 27, scope: !1708, inlinedAt: !2995)
!3004 = !DILocation(line: 1546, column: 30, scope: !1708, inlinedAt: !2995)
!3005 = !DILocation(line: 1547, column: 27, scope: !1708, inlinedAt: !2995)
!3006 = !DILocation(line: 1548, column: 29, scope: !1708, inlinedAt: !2995)
!3007 = !DILocation(line: 1548, column: 44, scope: !1708, inlinedAt: !2995)
!3008 = !DILocation(line: 1549, column: 3, scope: !1728, inlinedAt: !2995)
!3009 = !DILocation(line: 1550, column: 1, scope: !1708, inlinedAt: !2995)
!3010 = !DILocation(line: 2381, column: 5, scope: !2985)
!3011 = !DILocation(line: 2371, column: 44, scope: !2974)
!3012 = !DILocation(line: 2371, column: 17, scope: !2974)
!3013 = !DILocation(line: 2371, column: 3, scope: !2975)
!3014 = distinct !{!3014, !3013, !3015}
!3015 = !DILocation(line: 2382, column: 3, scope: !2975)
!3016 = !DILocation(line: 1615, column: 7, scope: !2428, inlinedAt: !3017)
!3017 = distinct !DILocation(line: 2386, column: 3, scope: !2954)
!3018 = !DILocation(line: 1618, column: 5, scope: !2433, inlinedAt: !3017)
!3019 = !DILocation(line: 1620, column: 1, scope: !2428, inlinedAt: !3017)
!3020 = !DILocation(line: 2387, column: 1, scope: !2954)
!3021 = distinct !DISubprogram(name: "nd6_adjust_mld_membership", scope: !3, file: !3, line: 2399, type: !3022, isLocal: false, isDefinition: true, scopeLine: 2400, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3024)
!3022 = !DISubroutineType(types: !3023)
!3023 = !{null, !274, !307, !117}
!3024 = !{!3025, !3026, !3027, !3028, !3029, !3030}
!3025 = !DILocalVariable(name: "netif", arg: 1, scope: !3021, file: !3, line: 2399, type: !274)
!3026 = !DILocalVariable(name: "addr_idx", arg: 2, scope: !3021, file: !3, line: 2399, type: !307)
!3027 = !DILocalVariable(name: "new_state", arg: 3, scope: !3021, file: !3, line: 2399, type: !117)
!3028 = !DILocalVariable(name: "old_state", scope: !3021, file: !3, line: 2401, type: !117)
!3029 = !DILocalVariable(name: "old_member", scope: !3021, file: !3, line: 2401, type: !117)
!3030 = !DILocalVariable(name: "new_member", scope: !3021, file: !3, line: 2401, type: !117)
!3031 = !DILocation(line: 2399, column: 41, scope: !3021)
!3032 = !DILocation(line: 2399, column: 53, scope: !3021)
!3033 = !DILocation(line: 2399, column: 68, scope: !3021)
!3034 = !DILocation(line: 2403, column: 15, scope: !3021)
!3035 = !DILocation(line: 2401, column: 8, scope: !3021)
!3036 = !DILocation(line: 2408, column: 47, scope: !3021)
!3037 = !DILocation(line: 2408, column: 96, scope: !3021)
!3038 = !DILocation(line: 2409, column: 47, scope: !3021)
!3039 = !DILocation(line: 2409, column: 96, scope: !3021)
!3040 = !DILocation(line: 2401, column: 31, scope: !3021)
!3041 = !DILocation(line: 2411, column: 21, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !3021, file: !3, line: 2411, column: 7)
!3043 = !DILocation(line: 2411, column: 18, scope: !3042)
!3044 = !DILocation(line: 2411, column: 7, scope: !3021)
!3045 = !DILocation(line: 2412, column: 5, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !3047, file: !3, line: 2412, column: 5)
!3047 = distinct !DILexicalBlock(scope: !3042, file: !3, line: 2411, column: 33)
!3048 = !DILocation(line: 2413, column: 5, scope: !3047)
!3049 = !DILocation(line: 2415, column: 9, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !3047, file: !3, line: 2415, column: 9)
!3051 = !DILocation(line: 2415, column: 9, scope: !3047)
!3052 = !DILocation(line: 2416, column: 7, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3050, file: !3, line: 2415, column: 21)
!3054 = !DILocation(line: 2417, column: 5, scope: !3053)
!3055 = !DILocation(line: 2418, column: 7, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !3050, file: !3, line: 2417, column: 12)
!3057 = !DILocation(line: 2421, column: 1, scope: !3021)
!3058 = distinct !DISubprogram(name: "nd6_restart_netif", scope: !3, file: !3, line: 2426, type: !331, isLocal: false, isDefinition: true, scopeLine: 2427, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3059)
!3059 = !{!3060}
!3060 = !DILocalVariable(name: "netif", arg: 1, scope: !3058, file: !3, line: 2426, type: !274)
!3061 = !DILocation(line: 2426, column: 33, scope: !3058)
!3062 = !DILocation(line: 2430, column: 10, scope: !3058)
!3063 = !DILocation(line: 2430, column: 19, scope: !3058)
!3064 = !DILocation(line: 2432, column: 1, scope: !3058)
!3065 = distinct !DISubprogram(name: "nd6_free_q", scope: !3, file: !3, line: 2155, type: !3066, isLocal: true, isDefinition: true, scopeLine: 2156, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3068)
!3066 = !DISubroutineType(types: !3067)
!3067 = !{null, !248}
!3068 = !{!3069, !3070}
!3069 = !DILocalVariable(name: "q", arg: 1, scope: !3065, file: !3, line: 2155, type: !248)
!3070 = !DILocalVariable(name: "r", scope: !3065, file: !3, line: 2157, type: !248)
!3071 = !DILocation(line: 2155, column: 32, scope: !3065)
!3072 = !DILocation(line: 2158, column: 3, scope: !3073)
!3073 = distinct !DILexicalBlock(scope: !3074, file: !3, line: 2158, column: 3)
!3074 = distinct !DILexicalBlock(scope: !3065, file: !3, line: 2158, column: 3)
!3075 = !DILocation(line: 2158, column: 3, scope: !3074)
!3076 = !DILocation(line: 2158, column: 3, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !3078, file: !3, line: 2158, column: 3)
!3078 = distinct !DILexicalBlock(scope: !3073, file: !3, line: 2158, column: 3)
!3079 = !DILocation(line: 2158, column: 3, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !3081, file: !3, line: 2158, column: 3)
!3081 = distinct !DILexicalBlock(scope: !3082, file: !3, line: 2158, column: 3)
!3082 = distinct !DILexicalBlock(scope: !3077, file: !3, line: 2158, column: 3)
!3083 = !DILocation(line: 2159, column: 3, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !3085, file: !3, line: 2159, column: 3)
!3085 = distinct !DILexicalBlock(scope: !3065, file: !3, line: 2159, column: 3)
!3086 = !DILocation(line: 2159, column: 3, scope: !3085)
!3087 = !DILocation(line: 2159, column: 3, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3089, file: !3, line: 2159, column: 3)
!3089 = distinct !DILexicalBlock(scope: !3084, file: !3, line: 2159, column: 3)
!3090 = !DILocation(line: 2159, column: 3, scope: !3091)
!3091 = distinct !DILexicalBlock(scope: !3092, file: !3, line: 2159, column: 3)
!3092 = distinct !DILexicalBlock(scope: !3093, file: !3, line: 2159, column: 3)
!3093 = distinct !DILexicalBlock(scope: !3088, file: !3, line: 2159, column: 3)
!3094 = !DILocation(line: 2163, column: 5, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !3096, file: !3, line: 2163, column: 5)
!3096 = distinct !DILexicalBlock(scope: !3097, file: !3, line: 2163, column: 5)
!3097 = distinct !DILexicalBlock(scope: !3098, file: !3, line: 2163, column: 5)
!3098 = distinct !DILexicalBlock(scope: !3099, file: !3, line: 2163, column: 5)
!3099 = distinct !DILexicalBlock(scope: !3065, file: !3, line: 2160, column: 13)
!3100 = !DILocation(line: 2163, column: 5, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !3102, file: !3, line: 2163, column: 5)
!3102 = distinct !DILexicalBlock(scope: !3103, file: !3, line: 2163, column: 5)
!3103 = distinct !DILexicalBlock(scope: !3095, file: !3, line: 2163, column: 5)
!3104 = !DILocation(line: 2162, column: 12, scope: !3099)
!3105 = !DILocation(line: 2164, column: 5, scope: !3099)
!3106 = !DILocation(line: 2165, column: 31, scope: !3099)
!3107 = !DILocation(line: 2165, column: 5, scope: !3099)
!3108 = !DILocation(line: 2160, column: 3, scope: !3065)
!3109 = distinct !{!3109, !3108, !3110}
!3110 = !DILocation(line: 2166, column: 3, scope: !3065)
!3111 = !DILocation(line: 2163, column: 5, scope: !3097)
!3112 = !DILocation(line: 2157, column: 23, scope: !3065)
!3113 = !DILocation(line: 2163, column: 5, scope: !3098)
!3114 = !DILocation(line: 2167, column: 1, scope: !3065)
