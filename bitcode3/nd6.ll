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

; Function Attrs: noredzone nounwind
define dso_local void @nd6_input(%struct.pbuf*, %struct.netif*) local_unnamed_addr #0 !dbg !457 {
  %3 = alloca %struct.ip6_addr, align 16
  %4 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 1), align 2, !dbg !515, !tbaa !516
  %5 = add i16 %4, 1, !dbg !515
  store i16 %5, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 1), align 2, !dbg !515, !tbaa !516
  %6 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 1, !dbg !525
  %7 = load i8*, i8** %6, align 8, !dbg !525, !tbaa !526
  %8 = load i8, i8* %7, align 1, !dbg !529, !tbaa !530
  switch i8 %8, label %1340 [
    i8 -120, label %9
    i8 -121, label %249
    i8 -122, label %492
    i8 -119, label %1085
    i8 2, label %1266
  ], !dbg !532

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 3, !dbg !533
  %11 = load i16, i16* %10, align 2, !dbg !533, !tbaa !535
  %12 = icmp ult i16 %11, 24, !dbg !536
  br i1 %12, label %13, label %19, !dbg !537

; <label>:13:                                     ; preds = %9
  %14 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #8, !dbg !538
  %15 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 5), align 2, !dbg !540, !tbaa !541
  %16 = add i16 %15, 1, !dbg !540
  store i16 %16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 5), align 2, !dbg !540, !tbaa !541
  %17 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !542, !tbaa !543
  %18 = add i16 %17, 1, !dbg !542
  store i16 %18, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !542, !tbaa !543
  br label %1353

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
  %52 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #8, !dbg !568
  %53 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 8), align 2, !dbg !570, !tbaa !571
  %54 = add i16 %53, 1, !dbg !570
  store i16 %54, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 8), align 2, !dbg !570, !tbaa !571
  %55 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !572, !tbaa !543
  %56 = add i16 %55, 1, !dbg !572
  store i16 %56, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !572, !tbaa !543
  br label %1353

; <label>:57:                                     ; preds = %44
  %58 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !573, !tbaa !530
  %59 = and i32 %58, 255, !dbg !573
  %60 = icmp eq i32 %59, 255, !dbg !573
  br i1 %60, label %61, label %167, !dbg !575

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

; <label>:84:                                     ; preds = %1370, %1393
  %85 = phi i8 [ 2, %1393 ], [ 1, %1370 ]
  tail call void @netif_ip6_addr_set_state(%struct.netif* nonnull %1, i8 signext %85, i8 zeroext 64) #8, !dbg !599
  br label %104, !dbg !600

; <label>:86:                                     ; preds = %80
  tail call void @netif_ip6_addr_set_state(%struct.netif* nonnull %1, i8 signext 0, i8 zeroext 64) #8, !dbg !599
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
  tail call void @netif_ip6_addr_set_state(%struct.netif* nonnull %1, i8 signext 1, i8 zeroext 64) #8, !dbg !610
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
  tail call void @netif_ip6_addr_set_state(%struct.netif* nonnull %1, i8 signext 2, i8 zeroext 64) #8, !dbg !610
  br label %104, !dbg !612

; <label>:104:                                    ; preds = %84, %95, %99, %103
  %105 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #8, !dbg !613
  br label %1353

; <label>:106:                                    ; preds = %61, %61, %64, %68, %72, %76, %80
  %107 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 5, i64 1, !dbg !577
  %108 = load i8, i8* %107, align 1, !dbg !577, !tbaa !530
  switch i8 %108, label %1354 [
    i8 0, label %1374
    i8 64, label %1374
  ], !dbg !583

; <label>:109:                                    ; preds = %1397
  %110 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #8, !dbg !614
  %111 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 5), align 2, !dbg !617, !tbaa !541
  %112 = add i16 %111, 1, !dbg !617
  store i16 %112, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 5), align 2, !dbg !617, !tbaa !541
  %113 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !618, !tbaa !543
  %114 = add i16 %113, 1, !dbg !618
  store i16 %114, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !618, !tbaa !543
  br label %1353

; <label>:115:                                    ; preds = %1397
  %116 = zext i16 %11 to i64, !dbg !619
  %117 = getelementptr inbounds i8, i8* %7, i64 25, !dbg !621
  %118 = load i8, i8* %117, align 1, !dbg !621, !tbaa !623
  %119 = zext i8 %118 to i64, !dbg !625
  %120 = shl nuw nsw i64 %119, 3, !dbg !626
  %121 = add nuw nsw i64 %120, 24, !dbg !627
  %122 = icmp ugt i64 %121, %116, !dbg !628
  br i1 %122, label %123, label %129, !dbg !629

; <label>:123:                                    ; preds = %115
  %124 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #8, !dbg !630
  %125 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 5), align 2, !dbg !632, !tbaa !541
  %126 = add i16 %125, 1, !dbg !632
  store i16 %126, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 5), align 2, !dbg !632, !tbaa !541
  %127 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !633, !tbaa !543
  %128 = add i16 %127, 1, !dbg !633
  store i16 %128, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !633, !tbaa !543
  br label %1353

; <label>:129:                                    ; preds = %115, %150
  %130 = phi i64 [ %151, %150 ], [ 0, %115 ]
  %131 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %130, i32 0, i32 0, i64 0, !dbg !642
  %132 = load i32, i32* %131, align 8, !dbg !642, !tbaa !547
  %133 = icmp eq i32 %22, %132, !dbg !642
  br i1 %133, label %134, label %150, !dbg !642

; <label>:134:                                    ; preds = %129
  %135 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %130, i32 0, i32 0, i64 1, !dbg !642
  %136 = load i32, i32* %135, align 4, !dbg !642, !tbaa !547
  %137 = icmp eq i32 %25, %136, !dbg !642
  br i1 %137, label %138, label %150, !dbg !642

; <label>:138:                                    ; preds = %134
  %139 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %130, i32 0, i32 0, i64 2, !dbg !642
  %140 = load i32, i32* %139, align 8, !dbg !642, !tbaa !547
  %141 = icmp eq i32 %28, %140, !dbg !642
  br i1 %141, label %142, label %150, !dbg !642

; <label>:142:                                    ; preds = %138
  %143 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %130, i32 0, i32 0, i64 3, !dbg !642
  %144 = load i32, i32* %143, align 4, !dbg !642, !tbaa !547
  %145 = icmp eq i32 %31, %144, !dbg !642
  br i1 %145, label %146, label %150, !dbg !642

; <label>:146:                                    ; preds = %142
  %147 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %130, i32 0, i32 1, !dbg !642
  %148 = load i8, i8* %147, align 8, !dbg !642, !tbaa !647
  %149 = icmp eq i8 %39, %148, !dbg !642
  br i1 %149, label %153, label %150, !dbg !650

; <label>:150:                                    ; preds = %146, %142, %138, %134, %129
  %151 = add nuw nsw i64 %130, 1, !dbg !651
  %152 = icmp ult i64 %151, 10, !dbg !652
  br i1 %152, label %129, label %1345, !dbg !653, !llvm.loop !654

; <label>:153:                                    ; preds = %146
  %154 = getelementptr inbounds i8, i8* %7, i64 4, !dbg !657
  %155 = load i8, i8* %154, align 1, !dbg !657, !tbaa !661
  %156 = and i8 %155, 32, !dbg !662
  %157 = icmp eq i8 %156, 0, !dbg !662
  br i1 %157, label %1345, label %158, !dbg !663

; <label>:158:                                    ; preds = %153
  %159 = shl i64 %130, 56, !dbg !664
  %160 = ashr exact i64 %159, 56, !dbg !664
  %161 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %160, i32 2, i64 0, !dbg !664
  %162 = getelementptr inbounds i8, i8* %7, i64 26, !dbg !664
  %163 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 20, !dbg !664
  %164 = load i8, i8* %163, align 4, !dbg !664, !tbaa !666
  %165 = zext i8 %164 to i64, !dbg !664
  %166 = tail call i8* @memcpy(i8* nonnull %161, i8* nonnull %162, i64 %165) #8, !dbg !664
  br label %1345, !dbg !667

; <label>:167:                                    ; preds = %57, %188
  %168 = phi i64 [ %189, %188 ], [ 0, %57 ]
  %169 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %168, i32 0, i32 0, i64 0, !dbg !671
  %170 = load i32, i32* %169, align 8, !dbg !671, !tbaa !547
  %171 = icmp eq i32 %22, %170, !dbg !671
  br i1 %171, label %172, label %188, !dbg !671

; <label>:172:                                    ; preds = %167
  %173 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %168, i32 0, i32 0, i64 1, !dbg !671
  %174 = load i32, i32* %173, align 4, !dbg !671, !tbaa !547
  %175 = icmp eq i32 %25, %174, !dbg !671
  br i1 %175, label %176, label %188, !dbg !671

; <label>:176:                                    ; preds = %172
  %177 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %168, i32 0, i32 0, i64 2, !dbg !671
  %178 = load i32, i32* %177, align 8, !dbg !671, !tbaa !547
  %179 = icmp eq i32 %28, %178, !dbg !671
  br i1 %179, label %180, label %188, !dbg !671

; <label>:180:                                    ; preds = %176
  %181 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %168, i32 0, i32 0, i64 3, !dbg !671
  %182 = load i32, i32* %181, align 4, !dbg !671, !tbaa !547
  %183 = icmp eq i32 %31, %182, !dbg !671
  br i1 %183, label %184, label %188, !dbg !671

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %168, i32 0, i32 1, !dbg !671
  %186 = load i8, i8* %185, align 8, !dbg !671, !tbaa !647
  %187 = icmp eq i8 %39, %186, !dbg !671
  br i1 %187, label %191, label %188, !dbg !672

; <label>:188:                                    ; preds = %184, %180, %176, %172, %167
  %189 = add nuw nsw i64 %168, 1, !dbg !673
  %190 = icmp ult i64 %189, 10, !dbg !674
  br i1 %190, label %167, label %194, !dbg !675, !llvm.loop !654

; <label>:191:                                    ; preds = %184
  %192 = trunc i64 %168 to i8, !dbg !672
  %193 = icmp slt i8 %192, 0, !dbg !676
  br i1 %193, label %194, label %196, !dbg !678

; <label>:194:                                    ; preds = %188, %191
  %195 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %0) #8, !dbg !679
  br label %1353

; <label>:196:                                    ; preds = %191
  %197 = getelementptr inbounds i8, i8* %7, i64 4, !dbg !681
  %198 = load i8, i8* %197, align 1, !dbg !681, !tbaa !661
  %199 = and i8 %198, 32, !dbg !683
  %200 = icmp eq i8 %199, 0, !dbg !683
  br i1 %200, label %201, label %207, !dbg !684

; <label>:201:                                    ; preds = %196
  %202 = shl i64 %168, 56, !dbg !685
  %203 = ashr exact i64 %202, 56, !dbg !685
  %204 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %203, i32 4, !dbg !686
  %205 = load i8, i8* %204, align 8, !dbg !686, !tbaa !687
  %206 = icmp eq i8 %205, 1, !dbg !688
  br i1 %206, label %207, label %239, !dbg !689

; <label>:207:                                    ; preds = %196, %201
  %208 = icmp ult i16 %11, 26, !dbg !690
  br i1 %208, label %209, label %215, !dbg !693

; <label>:209:                                    ; preds = %207
  %210 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %0) #8, !dbg !694
  %211 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 5), align 2, !dbg !696, !tbaa !541
  %212 = add i16 %211, 1, !dbg !696
  store i16 %212, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 5), align 2, !dbg !696, !tbaa !541
  %213 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !697, !tbaa !543
  %214 = add i16 %213, 1, !dbg !697
  store i16 %214, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !697, !tbaa !543
  br label %1353

; <label>:215:                                    ; preds = %207
  %216 = zext i16 %11 to i64, !dbg !698
  %217 = getelementptr inbounds i8, i8* %7, i64 25, !dbg !699
  %218 = load i8, i8* %217, align 1, !dbg !699, !tbaa !623
  %219 = zext i8 %218 to i64, !dbg !701
  %220 = shl nuw nsw i64 %219, 3, !dbg !702
  %221 = add nuw nsw i64 %220, 24, !dbg !703
  %222 = icmp ugt i64 %221, %216, !dbg !704
  br i1 %222, label %223, label %229, !dbg !705

; <label>:223:                                    ; preds = %215
  %224 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %0) #8, !dbg !706
  %225 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 5), align 2, !dbg !708, !tbaa !541
  %226 = add i16 %225, 1, !dbg !708
  store i16 %226, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 5), align 2, !dbg !708, !tbaa !541
  %227 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !709, !tbaa !543
  %228 = add i16 %227, 1, !dbg !709
  store i16 %228, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !709, !tbaa !543
  br label %1353

; <label>:229:                                    ; preds = %215
  %230 = shl i64 %168, 56, !dbg !710
  %231 = ashr exact i64 %230, 56, !dbg !710
  %232 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %231, i32 2, i64 0, !dbg !710
  %233 = getelementptr inbounds i8, i8* %7, i64 26, !dbg !710
  %234 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 20, !dbg !710
  %235 = load i8, i8* %234, align 4, !dbg !710, !tbaa !666
  %236 = zext i8 %235 to i64, !dbg !710
  %237 = tail call i8* @memcpy(i8* nonnull %232, i8* nonnull %233, i64 %236) #8, !dbg !710
  %238 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %231, i32 4, !dbg !711
  br label %239, !dbg !712

; <label>:239:                                    ; preds = %229, %201
  %240 = phi i8* [ %238, %229 ], [ %204, %201 ], !dbg !711
  %241 = phi i64 [ %231, %229 ], [ %203, %201 ], !dbg !713
  %242 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %241, i32 1, !dbg !714
  store %struct.netif* %1, %struct.netif** %242, align 8, !dbg !715, !tbaa !716
  store i8 2, i8* %240, align 8, !dbg !717, !tbaa !687
  %243 = load i32, i32* @reachable_time, align 4, !dbg !718, !tbaa !547
  %244 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %241, i32 6, i32 0, !dbg !719
  store i32 %243, i32* %244, align 4, !dbg !720, !tbaa !530
  %245 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %241, i32 3, !dbg !721
  %246 = load %struct.nd6_q_entry*, %struct.nd6_q_entry** %245, align 8, !dbg !721, !tbaa !723
  %247 = icmp eq %struct.nd6_q_entry* %246, null, !dbg !724
  br i1 %247, label %1345, label %248, !dbg !725

; <label>:248:                                    ; preds = %239
  tail call fastcc void @nd6_send_q(i8 signext %192) #9, !dbg !726
  br label %1345, !dbg !728

; <label>:249:                                    ; preds = %2
  %250 = bitcast %struct.ip6_addr* %3 to i8*, !dbg !729
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %250) #7, !dbg !729
  %251 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 3, !dbg !730
  %252 = load i16, i16* %251, align 2, !dbg !730, !tbaa !535
  %253 = icmp ult i16 %252, 24, !dbg !732
  br i1 %253, label %254, label %260, !dbg !733

; <label>:254:                                    ; preds = %249
  %255 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #8, !dbg !734
  %256 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 5), align 2, !dbg !736, !tbaa !541
  %257 = add i16 %256, 1, !dbg !736
  store i16 %257, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 5), align 2, !dbg !736, !tbaa !541
  %258 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !737, !tbaa !543
  %259 = add i16 %258, 1, !dbg !737
  store i16 %259, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !737, !tbaa !543
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %250) #7, !dbg !738
  br label %1353

; <label>:260:                                    ; preds = %249
  %261 = getelementptr inbounds i8, i8* %7, i64 8, !dbg !740
  %262 = bitcast i8* %261 to <4 x i32>*, !dbg !740
  %263 = load <4 x i32>, <4 x i32>* %262, align 1, !dbg !740, !tbaa !547
  %264 = bitcast %struct.ip6_addr* %3 to <4 x i32>*, !dbg !740
  store <4 x i32> %263, <4 x i32>* %264, align 16, !dbg !740, !tbaa !547
  %265 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %3, i64 0, i32 1, !dbg !740
  store i8 0, i8* %265, align 16, !dbg !740, !tbaa !742
  %266 = extractelement <4 x i32> %263, i32 0, !dbg !743
  %267 = and i32 %266, 49407, !dbg !743
  %268 = icmp eq i32 %267, 33022, !dbg !743
  br i1 %268, label %269, label %273, !dbg !743

; <label>:269:                                    ; preds = %260
  %270 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 23, !dbg !743
  %271 = load i8, i8* %270, align 8, !dbg !743, !tbaa !550
  %272 = add i8 %271, 1, !dbg !743
  br label %273, !dbg !743

; <label>:273:                                    ; preds = %260, %269
  %274 = phi i8 [ %272, %269 ], [ 0, %260 ]
  store i8 %274, i8* %265, align 16, !dbg !743, !tbaa !742
  %275 = load %struct.ip6_hdr*, %struct.ip6_hdr** getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 3), align 8, !dbg !744, !tbaa !555
  %276 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %275, i64 0, i32 3, !dbg !744
  %277 = load i8, i8* %276, align 1, !dbg !744, !tbaa !557
  %278 = icmp eq i8 %277, -1, !dbg !746
  br i1 %278, label %279, label %286, !dbg !747

; <label>:279:                                    ; preds = %273
  %280 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !748
  %281 = load i8, i8* %280, align 1, !dbg !748, !tbaa !749
  %282 = icmp ne i8 %281, 0, !dbg !751
  %283 = and i32 %266, 255, !dbg !752
  %284 = icmp eq i32 %283, 255, !dbg !752
  %285 = or i1 %284, %282, !dbg !753
  br i1 %285, label %286, label %292, !dbg !753

; <label>:286:                                    ; preds = %279, %273
  %287 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #8, !dbg !754
  %288 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 8), align 2, !dbg !756, !tbaa !571
  %289 = add i16 %288, 1, !dbg !756
  store i16 %289, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 8), align 2, !dbg !756, !tbaa !571
  %290 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !757, !tbaa !543
  %291 = add i16 %290, 1, !dbg !757
  store i16 %291, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !757, !tbaa !543
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %250) #7, !dbg !738
  br label %1353

; <label>:292:                                    ; preds = %279
  %293 = icmp ugt i16 %252, 25, !dbg !758
  br i1 %293, label %294, label %305, !dbg !760

; <label>:294:                                    ; preds = %292
  %295 = zext i16 %252 to i64, !dbg !761
  %296 = getelementptr inbounds i8, i8* %7, i64 24, !dbg !762
  %297 = bitcast i8* %296 to %struct.lladdr_option*, !dbg !764
  %298 = getelementptr inbounds i8, i8* %7, i64 25, !dbg !766
  %299 = load i8, i8* %298, align 1, !dbg !766, !tbaa !623
  %300 = zext i8 %299 to i64, !dbg !768
  %301 = shl nuw nsw i64 %300, 3, !dbg !769
  %302 = add nuw nsw i64 %301, 24, !dbg !770
  %303 = icmp ugt i64 %302, %295, !dbg !771
  %304 = select i1 %303, %struct.lladdr_option* null, %struct.lladdr_option* %297, !dbg !772
  br label %305, !dbg !772

; <label>:305:                                    ; preds = %294, %292
  %306 = phi %struct.lladdr_option* [ %304, %294 ], [ null, %292 ], !dbg !773
  %307 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 0), align 4
  %308 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 1), align 4
  %309 = or i32 %308, %307
  %310 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 2), align 4
  %311 = or i32 %309, %310
  %312 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 3), align 4
  %313 = or i32 %311, %312
  %314 = icmp eq i32 %313, 0
  %315 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 5, i64 0, !dbg !776
  %316 = load i8, i8* %315, align 1, !dbg !776, !tbaa !530
  %317 = zext i8 %316 to i32, !dbg !776
  %318 = and i32 %317, 16, !dbg !776
  %319 = icmp eq i32 %318, 0, !dbg !776
  br i1 %319, label %320, label %324, !dbg !781

; <label>:320:                                    ; preds = %305
  %321 = and i32 %317, 8, !dbg !782
  %322 = icmp ne i32 %321, 0, !dbg !782
  %323 = and i1 %322, %314, !dbg !783
  br i1 %323, label %324, label %347, !dbg !783

; <label>:324:                                    ; preds = %305, %320
  %325 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !784
  %326 = load i32, i32* %325, align 8, !dbg !784, !tbaa !530
  %327 = icmp eq i32 %266, %326, !dbg !784
  br i1 %327, label %328, label %347, !dbg !784

; <label>:328:                                    ; preds = %324
  %329 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !784
  %330 = load i32, i32* %329, align 4, !dbg !784, !tbaa !530
  %331 = extractelement <4 x i32> %263, i32 1, !dbg !784
  %332 = icmp eq i32 %331, %330, !dbg !784
  br i1 %332, label %333, label %347, !dbg !784

; <label>:333:                                    ; preds = %328
  %334 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !784
  %335 = load i32, i32* %334, align 8, !dbg !784, !tbaa !530
  %336 = extractelement <4 x i32> %263, i32 2, !dbg !784
  %337 = icmp eq i32 %336, %335, !dbg !784
  br i1 %337, label %338, label %347, !dbg !784

; <label>:338:                                    ; preds = %333
  %339 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !784
  %340 = load i32, i32* %339, align 4, !dbg !784, !tbaa !530
  %341 = extractelement <4 x i32> %263, i32 3, !dbg !784
  %342 = icmp eq i32 %341, %340, !dbg !784
  br i1 %342, label %343, label %347, !dbg !784

; <label>:343:                                    ; preds = %338
  %344 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 0, i32 0, i32 0, i32 1, !dbg !784
  %345 = load i8, i8* %344, align 8, !dbg !784, !tbaa !530
  %346 = icmp eq i8 %274, %345, !dbg !784
  br i1 %346, label %353, label %347, !dbg !785

; <label>:347:                                    ; preds = %320, %324, %328, %333, %338, %343
  %348 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 5, i64 1, !dbg !776
  %349 = load i8, i8* %348, align 1, !dbg !776, !tbaa !530
  %350 = zext i8 %349 to i32, !dbg !776
  %351 = and i32 %350, 16, !dbg !776
  %352 = icmp eq i32 %351, 0, !dbg !776
  br i1 %352, label %1399, label %1403, !dbg !781

; <label>:353:                                    ; preds = %1455, %1422, %343
  br i1 %314, label %354, label %416, !dbg !786

; <label>:354:                                    ; preds = %353
  %355 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 5, i64 1
  %356 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 5, i64 2
  %357 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 6, i64 1
  %358 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 6, i64 2
  %359 = extractelement <4 x i32> %263, i32 1
  %360 = extractelement <4 x i32> %263, i32 2
  %361 = extractelement <4 x i32> %263, i32 3
  br label %362, !dbg !788

; <label>:362:                                    ; preds = %412, %354
  %363 = phi i8 [ %316, %354 ], [ %415, %412 ], !dbg !791
  %364 = phi i64 [ 0, %354 ], [ %413, %412 ]
  %365 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 5, i64 %364, !dbg !791
  %366 = icmp eq i8 %363, 0, !dbg !791
  br i1 %366, label %409, label %367, !dbg !795

; <label>:367:                                    ; preds = %362
  %368 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 %364, i32 0, i32 0, !dbg !796
  %369 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %368, i64 0, i32 0, i64 0, !dbg !796
  %370 = load i32, i32* %369, align 8, !dbg !796, !tbaa !530
  %371 = icmp eq i32 %266, %370, !dbg !796
  br i1 %371, label %372, label %409, !dbg !796

; <label>:372:                                    ; preds = %367
  %373 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 %364, i32 0, i32 0, i32 0, i64 1, !dbg !796
  %374 = load i32, i32* %373, align 4, !dbg !796, !tbaa !530
  %375 = icmp eq i32 %359, %374, !dbg !796
  br i1 %375, label %376, label %409, !dbg !796

; <label>:376:                                    ; preds = %372
  %377 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 %364, i32 0, i32 0, i32 0, i64 2, !dbg !796
  %378 = load i32, i32* %377, align 8, !dbg !796, !tbaa !530
  %379 = icmp eq i32 %360, %378, !dbg !796
  br i1 %379, label %380, label %409, !dbg !796

; <label>:380:                                    ; preds = %376
  %381 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 %364, i32 0, i32 0, i32 0, i64 3, !dbg !796
  %382 = load i32, i32* %381, align 4, !dbg !796, !tbaa !530
  %383 = icmp eq i32 %361, %382, !dbg !796
  br i1 %383, label %384, label %409, !dbg !796

; <label>:384:                                    ; preds = %380
  %385 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 %364, i32 0, i32 0, i32 1, !dbg !796
  %386 = load i8, i8* %385, align 8, !dbg !796, !tbaa !530
  %387 = icmp eq i8 %274, %386, !dbg !796
  br i1 %387, label %388, label %409, !dbg !797

; <label>:388:                                    ; preds = %384
  tail call fastcc void @nd6_send_na(%struct.netif* nonnull %1, %struct.ip6_addr* nonnull %368, i8 zeroext 34) #9, !dbg !798
  %389 = load i8, i8* %365, align 1, !dbg !800, !tbaa !530
  %390 = and i8 %389, 8, !dbg !800
  %391 = icmp eq i8 %390, 0, !dbg !800
  br i1 %391, label %409, label %392, !dbg !802

; <label>:392:                                    ; preds = %388
  %393 = trunc i64 %364 to i8, !dbg !807
  tail call void @netif_ip6_addr_set_state(%struct.netif* nonnull %1, i8 signext %393, i8 zeroext 64) #8, !dbg !807
  %394 = icmp eq i64 %364, 0, !dbg !808
  br i1 %394, label %395, label %409, !dbg !809

; <label>:395:                                    ; preds = %392
  %396 = load i8, i8* %355, align 1, !dbg !811, !tbaa !530
  %397 = icmp eq i8 %396, 0, !dbg !811
  br i1 %397, label %402, label %398, !dbg !812

; <label>:398:                                    ; preds = %395
  %399 = load i32, i32* %357, align 4, !dbg !813, !tbaa !547
  %400 = icmp eq i32 %399, 0, !dbg !813
  br i1 %400, label %402, label %401, !dbg !814

; <label>:401:                                    ; preds = %398
  tail call void @netif_ip6_addr_set_state(%struct.netif* nonnull %1, i8 signext 1, i8 zeroext 64) #8, !dbg !815
  br label %402, !dbg !816

; <label>:402:                                    ; preds = %401, %398, %395
  %403 = load i8, i8* %356, align 1, !dbg !811, !tbaa !530
  %404 = icmp eq i8 %403, 0, !dbg !811
  br i1 %404, label %412, label %405, !dbg !812

; <label>:405:                                    ; preds = %402
  %406 = load i32, i32* %358, align 4, !dbg !813, !tbaa !547
  %407 = icmp eq i32 %406, 0, !dbg !813
  br i1 %407, label %412, label %408, !dbg !814

; <label>:408:                                    ; preds = %405
  tail call void @netif_ip6_addr_set_state(%struct.netif* nonnull %1, i8 signext 2, i8 zeroext 64) #8, !dbg !815
  br label %412, !dbg !816

; <label>:409:                                    ; preds = %392, %388, %362, %367, %372, %376, %380, %384
  %410 = add nuw nsw i64 %364, 1, !dbg !817
  %411 = icmp eq i64 %410, 3, !dbg !818
  br i1 %411, label %491, label %412, !dbg !788, !llvm.loop !819

; <label>:412:                                    ; preds = %402, %405, %408, %409
  %413 = phi i64 [ %410, %409 ], [ 1, %408 ], [ 1, %405 ], [ 1, %402 ]
  %414 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 5, i64 %413
  %415 = load i8, i8* %414, align 1, !dbg !791, !tbaa !530
  br label %362, !dbg !788

; <label>:416:                                    ; preds = %353
  %417 = icmp eq %struct.lladdr_option* %306, null, !dbg !821
  br i1 %417, label %420, label %418, !dbg !824

; <label>:418:                                    ; preds = %416
  %419 = load i8, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 1), align 4
  br label %426, !dbg !825

; <label>:420:                                    ; preds = %416
  %421 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #8, !dbg !827
  %422 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 8), align 2, !dbg !829, !tbaa !571
  %423 = add i16 %422, 1, !dbg !829
  store i16 %423, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 8), align 2, !dbg !829, !tbaa !571
  %424 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !830, !tbaa !543
  %425 = add i16 %424, 1, !dbg !830
  store i16 %425, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !830, !tbaa !543
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %250) #7, !dbg !738
  br label %1353

; <label>:426:                                    ; preds = %418, %447
  %427 = phi i64 [ %448, %447 ], [ 0, %418 ]
  %428 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %427, i32 0, i32 0, i64 0, !dbg !825
  %429 = load i32, i32* %428, align 8, !dbg !825, !tbaa !547
  %430 = icmp eq i32 %307, %429, !dbg !825
  br i1 %430, label %431, label %447, !dbg !825

; <label>:431:                                    ; preds = %426
  %432 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %427, i32 0, i32 0, i64 1, !dbg !825
  %433 = load i32, i32* %432, align 4, !dbg !825, !tbaa !547
  %434 = icmp eq i32 %308, %433, !dbg !825
  br i1 %434, label %435, label %447, !dbg !825

; <label>:435:                                    ; preds = %431
  %436 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %427, i32 0, i32 0, i64 2, !dbg !825
  %437 = load i32, i32* %436, align 8, !dbg !825, !tbaa !547
  %438 = icmp eq i32 %310, %437, !dbg !825
  br i1 %438, label %439, label %447, !dbg !825

; <label>:439:                                    ; preds = %435
  %440 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %427, i32 0, i32 0, i64 3, !dbg !825
  %441 = load i32, i32* %440, align 4, !dbg !825, !tbaa !547
  %442 = icmp eq i32 %312, %441, !dbg !825
  br i1 %442, label %443, label %447, !dbg !825

; <label>:443:                                    ; preds = %439
  %444 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %427, i32 0, i32 1, !dbg !825
  %445 = load i8, i8* %444, align 8, !dbg !825, !tbaa !647
  %446 = icmp eq i8 %419, %445, !dbg !825
  br i1 %446, label %450, label %447, !dbg !832

; <label>:447:                                    ; preds = %443, %439, %435, %431, %426
  %448 = add nuw nsw i64 %427, 1, !dbg !833
  %449 = icmp ult i64 %448, 10, !dbg !834
  br i1 %449, label %426, label %464, !dbg !835, !llvm.loop !654

; <label>:450:                                    ; preds = %443
  %451 = shl i64 %427, 56, !dbg !836
  %452 = ashr exact i64 %451, 56, !dbg !836
  %453 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %452, i32 4, !dbg !840
  %454 = load i8, i8* %453, align 8, !dbg !840, !tbaa !687
  %455 = icmp eq i8 %454, 1, !dbg !841
  br i1 %455, label %456, label %490, !dbg !842

; <label>:456:                                    ; preds = %450
  %457 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %452, i32 1, !dbg !843
  store %struct.netif* %1, %struct.netif** %457, align 8, !dbg !845, !tbaa !716
  %458 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %452, i32 2, i64 0, !dbg !846
  %459 = getelementptr inbounds %struct.lladdr_option, %struct.lladdr_option* %306, i64 0, i32 2, i64 0, !dbg !846
  %460 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 20, !dbg !846
  %461 = load i8, i8* %460, align 4, !dbg !846, !tbaa !666
  %462 = zext i8 %461 to i64, !dbg !846
  %463 = tail call i8* @memcpy(i8* nonnull %458, i8* nonnull %459, i64 %462) #8, !dbg !846
  br label %486, !dbg !847

; <label>:464:                                    ; preds = %447
  %465 = tail call fastcc signext i8 @nd6_new_neighbor_cache_entry() #9, !dbg !848
  %466 = icmp slt i8 %465, 0, !dbg !850
  br i1 %466, label %467, label %471, !dbg !852

; <label>:467:                                    ; preds = %464
  %468 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %0) #8, !dbg !853
  %469 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 6), align 2, !dbg !855, !tbaa !856
  %470 = add i16 %469, 1, !dbg !855
  store i16 %470, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 6), align 2, !dbg !855, !tbaa !856
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %250) #7, !dbg !738
  br label %1353

; <label>:471:                                    ; preds = %464
  %472 = sext i8 %465 to i64, !dbg !857
  %473 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %472, i32 1, !dbg !858
  store %struct.netif* %1, %struct.netif** %473, align 8, !dbg !859, !tbaa !716
  %474 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %472, i32 2, i64 0, !dbg !860
  %475 = getelementptr inbounds %struct.lladdr_option, %struct.lladdr_option* %306, i64 0, i32 2, i64 0, !dbg !860
  %476 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 20, !dbg !860
  %477 = load i8, i8* %476, align 4, !dbg !860, !tbaa !666
  %478 = zext i8 %477 to i64, !dbg !860
  %479 = tail call i8* @memcpy(i8* nonnull %474, i8* nonnull %475, i64 %478) #8, !dbg !860
  %480 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %472, i32 0, i32 0, i64 0, !dbg !861
  %481 = load <4 x i32>, <4 x i32>* bitcast (i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 0) to <4 x i32>*), align 4, !dbg !861, !tbaa !530
  %482 = bitcast i32* %480 to <4 x i32>*, !dbg !861
  store <4 x i32> %481, <4 x i32>* %482, align 8, !dbg !861, !tbaa !547
  %483 = load i8, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 1), align 4, !dbg !861, !tbaa !530
  %484 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %472, i32 0, i32 1, !dbg !861
  store i8 %483, i8* %484, align 8, !dbg !861, !tbaa !647
  %485 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %472, i32 4, !dbg !863
  br label %486

; <label>:486:                                    ; preds = %471, %456
  %487 = phi i8* [ %453, %456 ], [ %485, %471 ]
  %488 = phi i64 [ %452, %456 ], [ %472, %471 ]
  store i8 4, i8* %487, align 8, !dbg !864, !tbaa !687
  %489 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %488, i32 6, i32 0, !dbg !864
  store i32 5, i32* %489, align 4, !dbg !864, !tbaa !530
  br label %490, !dbg !865

; <label>:490:                                    ; preds = %486, %450
  call fastcc void @nd6_send_na(%struct.netif* %1, %struct.ip6_addr* nonnull %3, i8 zeroext 96) #9, !dbg !865
  br label %491

; <label>:491:                                    ; preds = %409, %490
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %250) #7, !dbg !738
  br label %1345

; <label>:492:                                    ; preds = %2
  %493 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 3, !dbg !867
  %494 = load i16, i16* %493, align 2, !dbg !867, !tbaa !535
  %495 = icmp ult i16 %494, 16, !dbg !869
  br i1 %495, label %496, label %502, !dbg !870

; <label>:496:                                    ; preds = %492
  %497 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #8, !dbg !871
  %498 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 5), align 2, !dbg !873, !tbaa !541
  %499 = add i16 %498, 1, !dbg !873
  store i16 %499, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 5), align 2, !dbg !873, !tbaa !541
  %500 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !874, !tbaa !543
  %501 = add i16 %500, 1, !dbg !874
  store i16 %501, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !874, !tbaa !543
  br label %1353, !dbg !875

; <label>:502:                                    ; preds = %492
  %503 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !877, !tbaa !530
  %504 = and i32 %503, 49407, !dbg !877
  %505 = icmp eq i32 %504, 33022, !dbg !877
  br i1 %505, label %506, label %515, !dbg !879

; <label>:506:                                    ; preds = %502
  %507 = load %struct.ip6_hdr*, %struct.ip6_hdr** getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 3), align 8, !dbg !880, !tbaa !555
  %508 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %507, i64 0, i32 3, !dbg !880
  %509 = load i8, i8* %508, align 1, !dbg !880, !tbaa !557
  %510 = icmp eq i8 %509, -1, !dbg !881
  br i1 %510, label %511, label %515, !dbg !882

; <label>:511:                                    ; preds = %506
  %512 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !883
  %513 = load i8, i8* %512, align 1, !dbg !883, !tbaa !884
  %514 = icmp eq i8 %513, 0, !dbg !886
  br i1 %514, label %521, label %515, !dbg !887

; <label>:515:                                    ; preds = %511, %506, %502
  %516 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #8, !dbg !888
  %517 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 8), align 2, !dbg !890, !tbaa !571
  %518 = add i16 %517, 1, !dbg !890
  store i16 %518, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 8), align 2, !dbg !890, !tbaa !571
  %519 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !891, !tbaa !543
  %520 = add i16 %519, 1, !dbg !891
  store i16 %520, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !891, !tbaa !543
  br label %1353, !dbg !892

; <label>:521:                                    ; preds = %511
  %522 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 25, !dbg !893
  %523 = load i8, i8* %522, align 2, !dbg !893, !tbaa !895
  %524 = icmp ult i8 %523, 3, !dbg !896
  br i1 %524, label %530, label %525, !dbg !897

; <label>:525:                                    ; preds = %521
  %526 = tail call fastcc signext i8 @nd6_send_rs(%struct.netif* nonnull %1) #9, !dbg !898
  %527 = icmp ne i8 %526, 0, !dbg !899
  %528 = zext i1 %527 to i8, !dbg !900
  %529 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 0), align 4
  br label %530, !dbg !900

; <label>:530:                                    ; preds = %525, %521
  %531 = phi i32 [ %503, %521 ], [ %529, %525 ]
  %532 = phi i8 [ 0, %521 ], [ %528, %525 ]
  store i8 %532, i8* %522, align 2, !dbg !901, !tbaa !895
  %533 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 1), align 4
  %534 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 2), align 4
  %535 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 3), align 4
  %536 = load i8, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 1), align 4
  %537 = load %struct.nd6_neighbor_cache_entry*, %struct.nd6_neighbor_cache_entry** getelementptr inbounds ([3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 0, i32 0), align 16, !dbg !911, !tbaa !916
  %538 = icmp eq %struct.nd6_neighbor_cache_entry* %537, null, !dbg !918
  br i1 %538, label %563, label %539, !dbg !919

; <label>:539:                                    ; preds = %530
  %540 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %537, i64 0, i32 1, !dbg !920
  %541 = load %struct.netif*, %struct.netif** %540, align 8, !dbg !920, !tbaa !716
  %542 = icmp eq %struct.netif* %541, %1, !dbg !921
  br i1 %542, label %543, label %563, !dbg !922

; <label>:543:                                    ; preds = %539
  %544 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %537, i64 0, i32 0, i32 0, i64 0, !dbg !923
  %545 = load i32, i32* %544, align 8, !dbg !923, !tbaa !547
  %546 = icmp eq i32 %531, %545, !dbg !923
  br i1 %546, label %547, label %563, !dbg !923

; <label>:547:                                    ; preds = %543
  %548 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %537, i64 0, i32 0, i32 0, i64 1, !dbg !923
  %549 = load i32, i32* %548, align 4, !dbg !923, !tbaa !547
  %550 = icmp eq i32 %533, %549, !dbg !923
  br i1 %550, label %551, label %563, !dbg !923

; <label>:551:                                    ; preds = %547
  %552 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %537, i64 0, i32 0, i32 0, i64 2, !dbg !923
  %553 = load i32, i32* %552, align 8, !dbg !923, !tbaa !547
  %554 = icmp eq i32 %534, %553, !dbg !923
  br i1 %554, label %555, label %563, !dbg !923

; <label>:555:                                    ; preds = %551
  %556 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %537, i64 0, i32 0, i32 0, i64 3, !dbg !923
  %557 = load i32, i32* %556, align 4, !dbg !923, !tbaa !547
  %558 = icmp eq i32 %535, %557, !dbg !923
  br i1 %558, label %559, label %563, !dbg !923

; <label>:559:                                    ; preds = %555
  %560 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %537, i64 0, i32 0, i32 1, !dbg !923
  %561 = load i8, i8* %560, align 8, !dbg !923, !tbaa !647
  %562 = icmp eq i8 %536, %561, !dbg !923
  br i1 %562, label %693, label %563, !dbg !924

; <label>:563:                                    ; preds = %559, %555, %551, %547, %543, %539, %530
  %564 = load %struct.nd6_neighbor_cache_entry*, %struct.nd6_neighbor_cache_entry** getelementptr inbounds ([3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 1, i32 0), align 16, !dbg !911, !tbaa !916
  %565 = icmp eq %struct.nd6_neighbor_cache_entry* %564, null, !dbg !918
  br i1 %565, label %590, label %566, !dbg !919

; <label>:566:                                    ; preds = %563
  %567 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %564, i64 0, i32 1, !dbg !920
  %568 = load %struct.netif*, %struct.netif** %567, align 8, !dbg !920, !tbaa !716
  %569 = icmp eq %struct.netif* %568, %1, !dbg !921
  br i1 %569, label %570, label %590, !dbg !922

; <label>:570:                                    ; preds = %566
  %571 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %564, i64 0, i32 0, i32 0, i64 0, !dbg !923
  %572 = load i32, i32* %571, align 8, !dbg !923, !tbaa !547
  %573 = icmp eq i32 %531, %572, !dbg !923
  br i1 %573, label %574, label %590, !dbg !923

; <label>:574:                                    ; preds = %570
  %575 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %564, i64 0, i32 0, i32 0, i64 1, !dbg !923
  %576 = load i32, i32* %575, align 4, !dbg !923, !tbaa !547
  %577 = icmp eq i32 %533, %576, !dbg !923
  br i1 %577, label %578, label %590, !dbg !923

; <label>:578:                                    ; preds = %574
  %579 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %564, i64 0, i32 0, i32 0, i64 2, !dbg !923
  %580 = load i32, i32* %579, align 8, !dbg !923, !tbaa !547
  %581 = icmp eq i32 %534, %580, !dbg !923
  br i1 %581, label %582, label %590, !dbg !923

; <label>:582:                                    ; preds = %578
  %583 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %564, i64 0, i32 0, i32 0, i64 3, !dbg !923
  %584 = load i32, i32* %583, align 4, !dbg !923, !tbaa !547
  %585 = icmp eq i32 %535, %584, !dbg !923
  br i1 %585, label %586, label %590, !dbg !923

; <label>:586:                                    ; preds = %582
  %587 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %564, i64 0, i32 0, i32 1, !dbg !923
  %588 = load i8, i8* %587, align 8, !dbg !923, !tbaa !647
  %589 = icmp eq i8 %536, %588, !dbg !923
  br i1 %589, label %693, label %590, !dbg !924

; <label>:590:                                    ; preds = %586, %582, %578, %574, %570, %566, %563
  %591 = load %struct.nd6_neighbor_cache_entry*, %struct.nd6_neighbor_cache_entry** getelementptr inbounds ([3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 2, i32 0), align 16, !dbg !911, !tbaa !916
  %592 = icmp eq %struct.nd6_neighbor_cache_entry* %591, null, !dbg !918
  br i1 %592, label %617, label %593, !dbg !919

; <label>:593:                                    ; preds = %590
  %594 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %591, i64 0, i32 1, !dbg !920
  %595 = load %struct.netif*, %struct.netif** %594, align 8, !dbg !920, !tbaa !716
  %596 = icmp eq %struct.netif* %595, %1, !dbg !921
  br i1 %596, label %597, label %617, !dbg !922

; <label>:597:                                    ; preds = %593
  %598 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %591, i64 0, i32 0, i32 0, i64 0, !dbg !923
  %599 = load i32, i32* %598, align 8, !dbg !923, !tbaa !547
  %600 = icmp eq i32 %531, %599, !dbg !923
  br i1 %600, label %601, label %617, !dbg !923

; <label>:601:                                    ; preds = %597
  %602 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %591, i64 0, i32 0, i32 0, i64 1, !dbg !923
  %603 = load i32, i32* %602, align 4, !dbg !923, !tbaa !547
  %604 = icmp eq i32 %533, %603, !dbg !923
  br i1 %604, label %605, label %617, !dbg !923

; <label>:605:                                    ; preds = %601
  %606 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %591, i64 0, i32 0, i32 0, i64 2, !dbg !923
  %607 = load i32, i32* %606, align 8, !dbg !923, !tbaa !547
  %608 = icmp eq i32 %534, %607, !dbg !923
  br i1 %608, label %609, label %617, !dbg !923

; <label>:609:                                    ; preds = %605
  %610 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %591, i64 0, i32 0, i32 0, i64 3, !dbg !923
  %611 = load i32, i32* %610, align 4, !dbg !923, !tbaa !547
  %612 = icmp eq i32 %535, %611, !dbg !923
  br i1 %612, label %613, label %617, !dbg !923

; <label>:613:                                    ; preds = %609
  %614 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %591, i64 0, i32 0, i32 1, !dbg !923
  %615 = load i8, i8* %614, align 8, !dbg !923, !tbaa !647
  %616 = icmp eq i8 %536, %615, !dbg !923
  br i1 %616, label %693, label %617, !dbg !924

; <label>:617:                                    ; preds = %613, %609, %605, %601, %597, %593, %590
  br label %618, !dbg !925

; <label>:618:                                    ; preds = %617, %639
  %619 = phi i64 [ %640, %639 ], [ 0, %617 ]
  %620 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %619, i32 0, i32 0, i64 0, !dbg !925
  %621 = load i32, i32* %620, align 8, !dbg !925, !tbaa !547
  %622 = icmp eq i32 %531, %621, !dbg !925
  br i1 %622, label %623, label %639, !dbg !925

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %619, i32 0, i32 0, i64 1, !dbg !925
  %625 = load i32, i32* %624, align 4, !dbg !925, !tbaa !547
  %626 = icmp eq i32 %533, %625, !dbg !925
  br i1 %626, label %627, label %639, !dbg !925

; <label>:627:                                    ; preds = %623
  %628 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %619, i32 0, i32 0, i64 2, !dbg !925
  %629 = load i32, i32* %628, align 8, !dbg !925, !tbaa !547
  %630 = icmp eq i32 %534, %629, !dbg !925
  br i1 %630, label %631, label %639, !dbg !925

; <label>:631:                                    ; preds = %627
  %632 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %619, i32 0, i32 0, i64 3, !dbg !925
  %633 = load i32, i32* %632, align 4, !dbg !925, !tbaa !547
  %634 = icmp eq i32 %535, %633, !dbg !925
  br i1 %634, label %635, label %639, !dbg !925

; <label>:635:                                    ; preds = %631
  %636 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %619, i32 0, i32 1, !dbg !925
  %637 = load i8, i8* %636, align 8, !dbg !925, !tbaa !647
  %638 = icmp eq i8 %536, %637, !dbg !925
  br i1 %638, label %642, label %639, !dbg !938

; <label>:639:                                    ; preds = %635, %631, %627, %623, %618
  %640 = add nuw nsw i64 %619, 1, !dbg !939
  %641 = icmp ult i64 %640, 10, !dbg !940
  br i1 %641, label %618, label %649, !dbg !941, !llvm.loop !654

; <label>:642:                                    ; preds = %635
  %643 = trunc i64 %619 to i8, !dbg !938
  %644 = icmp slt i8 %643, 0, !dbg !943
  br i1 %644, label %649, label %645, !dbg !945

; <label>:645:                                    ; preds = %642
  %646 = shl i64 %619, 56, !dbg !946
  %647 = ashr exact i64 %646, 56, !dbg !946
  %648 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %647, !dbg !946
  br label %665, !dbg !945

; <label>:649:                                    ; preds = %639, %642
  %650 = tail call fastcc signext i8 @nd6_new_neighbor_cache_entry() #8, !dbg !947
  %651 = icmp slt i8 %650, 0, !dbg !949
  br i1 %651, label %689, label %652, !dbg !951

; <label>:652:                                    ; preds = %649
  %653 = sext i8 %650 to i64, !dbg !952
  %654 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %653, !dbg !952
  %655 = load <4 x i32>, <4 x i32>* bitcast (i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 0) to <4 x i32>*), align 4, !dbg !952, !tbaa !547
  %656 = bitcast %struct.nd6_neighbor_cache_entry* %654 to <4 x i32>*, !dbg !952
  store <4 x i32> %655, <4 x i32>* %656, align 8, !dbg !952, !tbaa !547
  %657 = load i8, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 1), align 4, !dbg !952, !tbaa !742
  %658 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %653, i32 0, i32 1, !dbg !952
  store i8 %657, i8* %658, align 8, !dbg !952, !tbaa !647
  %659 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %653, i32 1, !dbg !954
  store %struct.netif* %1, %struct.netif** %659, align 8, !dbg !955, !tbaa !716
  %660 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %653, i32 3, !dbg !956
  store %struct.nd6_q_entry* null, %struct.nd6_q_entry** %660, align 8, !dbg !957, !tbaa !723
  %661 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %653, i32 4, !dbg !958
  store i8 1, i8* %661, align 8, !dbg !959, !tbaa !687
  %662 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %653, i32 6, i32 0, !dbg !960
  store i32 1, i32* %662, align 4, !dbg !961, !tbaa !530
  %663 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %654, i64 0, i32 0, !dbg !971
  tail call fastcc void @nd6_send_ns(%struct.netif* %1, %struct.ip6_addr* nonnull %663, i8 zeroext 1) #8, !dbg !972
  %664 = load %struct.nd6_neighbor_cache_entry*, %struct.nd6_neighbor_cache_entry** getelementptr inbounds ([3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 2, i32 0), align 16, !dbg !973, !tbaa !916
  br label %665, !dbg !978

; <label>:665:                                    ; preds = %652, %645
  %666 = phi %struct.nd6_neighbor_cache_entry* [ %591, %645 ], [ %664, %652 ], !dbg !973
  %667 = phi %struct.nd6_neighbor_cache_entry* [ %648, %645 ], [ %654, %652 ], !dbg !946
  %668 = phi i64 [ %647, %645 ], [ %653, %652 ], !dbg !946
  %669 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %668, i32 5, !dbg !979
  store i8 1, i8* %669, align 1, !dbg !980, !tbaa !981
  %670 = icmp eq %struct.nd6_neighbor_cache_entry* %666, %667, !dbg !984
  br i1 %670, label %693, label %671, !dbg !985

; <label>:671:                                    ; preds = %665
  %672 = load %struct.nd6_neighbor_cache_entry*, %struct.nd6_neighbor_cache_entry** getelementptr inbounds ([3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 1, i32 0), align 16, !dbg !973, !tbaa !916
  %673 = icmp eq %struct.nd6_neighbor_cache_entry* %672, %667, !dbg !984
  br i1 %673, label %693, label %678, !dbg !985

; <label>:674:                                    ; preds = %681
  %675 = zext i8 %687 to i64, !dbg !986
  %676 = getelementptr inbounds [3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 %675, i32 0, !dbg !989
  store %struct.nd6_neighbor_cache_entry* %667, %struct.nd6_neighbor_cache_entry** %676, align 16, !dbg !990, !tbaa !916
  br label %693, !dbg !991

; <label>:677:                                    ; preds = %681
  store i8 0, i8* %669, align 1, !dbg !992, !tbaa !981
  br label %689, !dbg !993

; <label>:678:                                    ; preds = %671
  %679 = load %struct.nd6_neighbor_cache_entry*, %struct.nd6_neighbor_cache_entry** getelementptr inbounds ([3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 0, i32 0), align 16, !dbg !973, !tbaa !916
  %680 = icmp eq %struct.nd6_neighbor_cache_entry* %679, %667, !dbg !984
  br i1 %680, label %693, label %681, !dbg !985

; <label>:681:                                    ; preds = %678
  %682 = icmp eq %struct.nd6_neighbor_cache_entry* %672, null, !dbg !994
  %683 = icmp eq %struct.nd6_neighbor_cache_entry* %666, null, !dbg !994
  %684 = select i1 %683, i8 2, i8 3, !dbg !996
  %685 = select i1 %682, i8 1, i8 %684, !dbg !996
  %686 = icmp eq %struct.nd6_neighbor_cache_entry* %679, null, !dbg !994
  %687 = select i1 %686, i8 0, i8 %685, !dbg !996
  %688 = icmp eq i8 %687, 3, !dbg !997
  br i1 %688, label %677, label %674, !dbg !998

; <label>:689:                                    ; preds = %649, %677
  %690 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %0) #8, !dbg !999
  %691 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 6), align 2, !dbg !1002, !tbaa !856
  %692 = add i16 %691, 1, !dbg !1002
  store i16 %692, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 6), align 2, !dbg !1002, !tbaa !856
  br label %1353, !dbg !1003

; <label>:693:                                    ; preds = %613, %586, %559, %674, %665, %671, %678
  %694 = phi i64 [ 0, %678 ], [ 1, %671 ], [ 2, %665 ], [ %675, %674 ], [ 2, %613 ], [ 1, %586 ], [ 0, %559 ]
  %695 = getelementptr inbounds i8, i8* %7, i64 6, !dbg !1004
  %696 = bitcast i8* %695 to i16*, !dbg !1004
  %697 = load i16, i16* %696, align 1, !dbg !1004, !tbaa !1005
  %698 = tail call zeroext i16 @lwip_htons(i16 zeroext %697) #8, !dbg !1006
  %699 = zext i16 %698 to i32, !dbg !1006
  %700 = getelementptr inbounds [3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 %694, i32 1, !dbg !1007
  store i32 %699, i32* %700, align 8, !dbg !1008, !tbaa !1009
  %701 = getelementptr inbounds i8, i8* %7, i64 12, !dbg !1010
  %702 = bitcast i8* %701 to i32*, !dbg !1010
  %703 = load i32, i32* %702, align 1, !dbg !1010, !tbaa !1012
  %704 = icmp eq i32 %703, 0, !dbg !1013
  br i1 %704, label %707, label %705, !dbg !1014

; <label>:705:                                    ; preds = %693
  %706 = tail call i32 @lwip_htonl(i32 %703) #8, !dbg !1015
  store i32 %706, i32* @retrans_timer, align 4, !dbg !1017, !tbaa !547
  br label %707, !dbg !1018

; <label>:707:                                    ; preds = %693, %705
  %708 = getelementptr inbounds i8, i8* %7, i64 8, !dbg !1019
  %709 = bitcast i8* %708 to i32*, !dbg !1019
  %710 = load i32, i32* %709, align 1, !dbg !1019, !tbaa !1021
  %711 = icmp eq i32 %710, 0, !dbg !1022
  br i1 %711, label %714, label %712, !dbg !1023

; <label>:712:                                    ; preds = %707
  %713 = tail call i32 @lwip_htonl(i32 %710) #8, !dbg !1024
  store i32 %713, i32* @reachable_time, align 4, !dbg !1026, !tbaa !547
  br label %714, !dbg !1027

; <label>:714:                                    ; preds = %707, %712
  %715 = getelementptr inbounds i8, i8* %7, i64 5, !dbg !1028
  %716 = load i8, i8* %715, align 1, !dbg !1028, !tbaa !1029
  %717 = getelementptr inbounds [3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 %694, i32 2, !dbg !1030
  store i8 %716, i8* %717, align 4, !dbg !1031, !tbaa !1032
  %718 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 2, !dbg !1034
  %719 = load i16, i16* %718, align 8, !dbg !1034, !tbaa !1035
  %720 = icmp ugt i16 %719, 17, !dbg !1036
  br i1 %720, label %721, label %1345, !dbg !1037

; <label>:721:                                    ; preds = %714
  %722 = getelementptr inbounds [3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 %694, i32 0
  %723 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 17
  %724 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 20
  %725 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 18
  %726 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 5, i64 1
  %727 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 5, i64 2
  %728 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 6, i64 1
  %729 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 24
  %730 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 6, i64 2
  %731 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 0
  %732 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 5, i64 0
  %733 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 0
  %734 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 1
  %735 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 2
  %736 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 3
  %737 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 1
  %738 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 1, i32 0, i32 0, i32 1
  %739 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 2, i32 0, i32 0, i32 1
  %740 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 2
  %741 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 2
  %742 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 3
  %743 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 3
  br label %744, !dbg !1037

; <label>:744:                                    ; preds = %721, %1078
  %745 = phi i32 [ 16, %721 ], [ %1082, %1078 ]
  %746 = phi i16 [ 16, %721 ], [ %1079, %1078 ]
  %747 = or i16 %746, 1, !dbg !1038
  %748 = tail call i32 @pbuf_try_get_at(%struct.pbuf* nonnull %0, i16 zeroext %747) #8, !dbg !1039
  %749 = icmp slt i32 %748, 1, !dbg !1041
  br i1 %749, label %1347, label %750, !dbg !1043

; <label>:750:                                    ; preds = %744
  %751 = trunc i32 %748 to i16, !dbg !1044
  %752 = and i16 %751, 255, !dbg !1044
  %753 = shl nuw nsw i16 %752, 3, !dbg !1044
  %754 = zext i16 %753 to i32, !dbg !1046
  %755 = load i16, i16* %718, align 8, !dbg !1048, !tbaa !1035
  %756 = zext i16 %755 to i32, !dbg !1049
  %757 = sub nsw i32 %756, %745, !dbg !1050
  %758 = icmp slt i32 %757, %754, !dbg !1051
  br i1 %758, label %1347, label %759, !dbg !1052

; <label>:759:                                    ; preds = %750
  %760 = load i16, i16* %493, align 2, !dbg !1053, !tbaa !535
  %761 = icmp eq i16 %760, %755, !dbg !1055
  br i1 %761, label %762, label %766, !dbg !1056

; <label>:762:                                    ; preds = %759
  %763 = load i8*, i8** %6, align 8, !dbg !1057, !tbaa !526
  %764 = zext i16 %746 to i64, !dbg !1059
  %765 = getelementptr inbounds i8, i8* %763, i64 %764, !dbg !1059
  br label %774, !dbg !1061

; <label>:766:                                    ; preds = %759
  %767 = icmp ugt i16 %752, 4, !dbg !1062
  br i1 %767, label %768, label %771, !dbg !1065

; <label>:768:                                    ; preds = %766
  %769 = tail call zeroext i8 @pbuf_get_at(%struct.pbuf* nonnull %0, i16 zeroext %746) #8, !dbg !1066
  %770 = icmp eq i8 %769, 25, !dbg !1069
  br i1 %770, label %771, label %1347, !dbg !1071

; <label>:771:                                    ; preds = %768, %766
  %772 = phi i16 [ %753, %766 ], [ 32, %768 ], !dbg !1072
  %773 = tail call zeroext i16 @pbuf_copy_partial(%struct.pbuf* nonnull %0, i8* getelementptr inbounds (%union.ra_options, %union.ra_options* @nd6_ra_buffer, i64 0, i32 0, i32 0), i16 zeroext %772, i16 zeroext %746) #8, !dbg !1073
  br label %774

; <label>:774:                                    ; preds = %771, %762
  %775 = phi i16 [ %753, %762 ], [ %773, %771 ], !dbg !1074
  %776 = phi i8* [ %765, %762 ], [ getelementptr inbounds (%union.ra_options, %union.ra_options* @nd6_ra_buffer, i64 0, i32 0, i32 0), %771 ], !dbg !1074
  %777 = load i8, i8* %776, align 1, !dbg !1075, !tbaa !530
  switch i8 %777, label %1075 [
    i8 1, label %778
    i8 5, label %797
    i8 3, label %817
    i8 24, label %1078
  ], !dbg !1076

; <label>:778:                                    ; preds = %774
  %779 = icmp ult i16 %775, 8, !dbg !1077
  br i1 %779, label %1347, label %780, !dbg !1079

; <label>:780:                                    ; preds = %778
  %781 = load %struct.nd6_neighbor_cache_entry*, %struct.nd6_neighbor_cache_entry** %722, align 16, !dbg !1081, !tbaa !916
  %782 = icmp eq %struct.nd6_neighbor_cache_entry* %781, null, !dbg !1083
  br i1 %782, label %1078, label %783, !dbg !1084

; <label>:783:                                    ; preds = %780
  %784 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %781, i64 0, i32 4, !dbg !1085
  %785 = load i8, i8* %784, align 8, !dbg !1085, !tbaa !687
  %786 = icmp eq i8 %785, 1, !dbg !1086
  br i1 %786, label %787, label %1078, !dbg !1087

; <label>:787:                                    ; preds = %783
  %788 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %781, i64 0, i32 2, i64 0, !dbg !1088
  %789 = getelementptr inbounds i8, i8* %776, i64 2, !dbg !1088
  %790 = load i8, i8* %724, align 4, !dbg !1088, !tbaa !666
  %791 = zext i8 %790 to i64, !dbg !1088
  %792 = tail call i8* @memcpy(i8* nonnull %788, i8* nonnull %789, i64 %791) #8, !dbg !1088
  %793 = load %struct.nd6_neighbor_cache_entry*, %struct.nd6_neighbor_cache_entry** %722, align 16, !dbg !1090, !tbaa !916
  %794 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %793, i64 0, i32 4, !dbg !1091
  store i8 2, i8* %794, align 8, !dbg !1092, !tbaa !687
  %795 = load i32, i32* @reachable_time, align 4, !dbg !1093, !tbaa !547
  %796 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %793, i64 0, i32 6, i32 0, !dbg !1094
  store i32 %795, i32* %796, align 4, !dbg !1095, !tbaa !530
  br label %1078, !dbg !1096

; <label>:797:                                    ; preds = %774
  %798 = icmp ult i16 %775, 8, !dbg !1097
  br i1 %798, label %1347, label %799, !dbg !1099

; <label>:799:                                    ; preds = %797
  %800 = getelementptr inbounds i8, i8* %776, i64 4, !dbg !1101
  %801 = bitcast i8* %800 to i32*, !dbg !1101
  %802 = load i32, i32* %801, align 1, !dbg !1101, !tbaa !1102
  %803 = tail call i32 @lwip_htonl(i32 %802) #8, !dbg !1104
  %804 = add i32 %803, -1280, !dbg !1106
  %805 = icmp ult i32 %804, 64256, !dbg !1106
  br i1 %805, label %806, label %1078, !dbg !1106

; <label>:806:                                    ; preds = %799
  %807 = load i16, i16* %723, align 2, !dbg !1108, !tbaa !1111
  %808 = icmp eq i16 %807, 0, !dbg !1112
  br i1 %808, label %815, label %809, !dbg !1113

; <label>:809:                                    ; preds = %806
  %810 = zext i16 %807 to i32, !dbg !1114
  %811 = and i32 %803, 65535, !dbg !1114
  %812 = icmp ugt i32 %811, %810, !dbg !1114
  %813 = select i1 %812, i32 %810, i32 %811, !dbg !1114
  %814 = trunc i32 %813 to i16, !dbg !1114
  store i16 %814, i16* %725, align 4, !dbg !1116, !tbaa !1117
  br label %1078, !dbg !1118

; <label>:815:                                    ; preds = %806
  %816 = trunc i32 %803 to i16, !dbg !1119
  store i16 %816, i16* %725, align 4, !dbg !1121, !tbaa !1117
  br label %1078

; <label>:817:                                    ; preds = %774
  %818 = icmp ult i16 %775, 32, !dbg !1122
  br i1 %818, label %1347, label %819, !dbg !1124

; <label>:819:                                    ; preds = %817
  %820 = getelementptr inbounds i8, i8* %776, i64 16, !dbg !1126
  %821 = bitcast i8* %820 to <4 x i32>*, !dbg !1126
  %822 = load <4 x i32>, <4 x i32>* %821, align 1, !dbg !1126, !tbaa !547
  %823 = extractelement <4 x i32> %822, i32 0, !dbg !1128
  %824 = and i32 %823, 49407, !dbg !1128
  %825 = icmp eq i32 %824, 33022, !dbg !1128
  br i1 %825, label %1078, label %826, !dbg !1128

; <label>:826:                                    ; preds = %819
  %827 = getelementptr inbounds i8, i8* %776, i64 3, !dbg !1129
  %828 = load i8, i8* %827, align 1, !dbg !1129, !tbaa !1130
  %829 = icmp slt i8 %828, 0, !dbg !1132
  br i1 %829, label %830, label %940, !dbg !1133

; <label>:830:                                    ; preds = %826
  %831 = getelementptr inbounds i8, i8* %776, i64 2, !dbg !1134
  %832 = load i8, i8* %831, align 1, !dbg !1134, !tbaa !1135
  %833 = icmp eq i8 %832, 64, !dbg !1136
  br i1 %833, label %834, label %940, !dbg !1137

; <label>:834:                                    ; preds = %830
  %835 = getelementptr inbounds i8, i8* %776, i64 4, !dbg !1138
  %836 = bitcast i8* %835 to i32*, !dbg !1138
  %837 = load i32, i32* %836, align 1, !dbg !1138, !tbaa !1139
  %838 = tail call i32 @lwip_htonl(i32 %837) #8, !dbg !1140
  %839 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 0, i32 0, i32 0, i64 0), align 16, !dbg !1152, !tbaa !547
  %840 = icmp eq i32 %839, %823, !dbg !1152
  %841 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 0, i32 0, i32 0, i64 1), align 4, !dbg !1152
  %842 = extractelement <4 x i32> %822, i32 1, !dbg !1152
  %843 = icmp eq i32 %841, %842, !dbg !1152
  %844 = and i1 %840, %843, !dbg !1152
  br i1 %844, label %845, label %851, !dbg !1152

; <label>:845:                                    ; preds = %834
  %846 = load i8, i8* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 0, i32 0, i32 1), align 16, !dbg !1152, !tbaa !1157
  %847 = icmp eq i8 %846, 0, !dbg !1152
  %848 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 0, i32 1), align 8, !dbg !1159
  %849 = icmp eq %struct.netif* %848, %1, !dbg !1160
  %850 = and i1 %847, %849, !dbg !1161
  br i1 %850, label %937, label %851, !dbg !1161

; <label>:851:                                    ; preds = %845, %834
  %852 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 1, i32 0, i32 0, i64 0), align 8, !dbg !1152, !tbaa !547
  %853 = icmp eq i32 %852, %823, !dbg !1152
  %854 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 1, i32 0, i32 0, i64 1), align 4, !dbg !1152
  %855 = icmp eq i32 %854, %842, !dbg !1152
  %856 = and i1 %853, %855, !dbg !1152
  br i1 %856, label %857, label %863, !dbg !1152

; <label>:857:                                    ; preds = %851
  %858 = load i8, i8* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 1, i32 0, i32 1), align 8, !dbg !1152, !tbaa !1157
  %859 = icmp eq i8 %858, 0, !dbg !1152
  %860 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 1, i32 1), align 8, !dbg !1159
  %861 = icmp eq %struct.netif* %860, %1, !dbg !1160
  %862 = and i1 %859, %861, !dbg !1161
  br i1 %862, label %937, label %863, !dbg !1161

; <label>:863:                                    ; preds = %857, %851
  %864 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 2, i32 0, i32 0, i64 0), align 16, !dbg !1152, !tbaa !547
  %865 = icmp eq i32 %864, %823, !dbg !1152
  %866 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 2, i32 0, i32 0, i64 1), align 4, !dbg !1152
  %867 = icmp eq i32 %866, %842, !dbg !1152
  %868 = and i1 %865, %867, !dbg !1152
  br i1 %868, label %869, label %875, !dbg !1152

; <label>:869:                                    ; preds = %863
  %870 = load i8, i8* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 2, i32 0, i32 1), align 16, !dbg !1152, !tbaa !1157
  %871 = icmp eq i8 %870, 0, !dbg !1152
  %872 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 2, i32 1), align 8, !dbg !1159
  %873 = icmp eq %struct.netif* %872, %1, !dbg !1160
  %874 = and i1 %871, %873, !dbg !1161
  br i1 %874, label %937, label %875, !dbg !1161

; <label>:875:                                    ; preds = %869, %863
  %876 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 3, i32 0, i32 0, i64 0), align 8, !dbg !1152, !tbaa !547
  %877 = icmp eq i32 %876, %823, !dbg !1152
  %878 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 3, i32 0, i32 0, i64 1), align 4, !dbg !1152
  %879 = icmp eq i32 %878, %842, !dbg !1152
  %880 = and i1 %877, %879, !dbg !1152
  br i1 %880, label %881, label %887, !dbg !1152

; <label>:881:                                    ; preds = %875
  %882 = load i8, i8* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 3, i32 0, i32 1), align 8, !dbg !1152, !tbaa !1157
  %883 = icmp eq i8 %882, 0, !dbg !1152
  %884 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 3, i32 1), align 8, !dbg !1159
  %885 = icmp eq %struct.netif* %884, %1, !dbg !1160
  %886 = and i1 %883, %885, !dbg !1161
  br i1 %886, label %937, label %887, !dbg !1161

; <label>:887:                                    ; preds = %881, %875
  %888 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 4, i32 0, i32 0, i64 0), align 16, !dbg !1152, !tbaa !547
  %889 = icmp eq i32 %888, %823, !dbg !1152
  %890 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 4, i32 0, i32 0, i64 1), align 4, !dbg !1152
  %891 = icmp eq i32 %890, %842, !dbg !1152
  %892 = and i1 %889, %891, !dbg !1152
  br i1 %892, label %893, label %899, !dbg !1152

; <label>:893:                                    ; preds = %887
  %894 = load i8, i8* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 4, i32 0, i32 1), align 16, !dbg !1152, !tbaa !1157
  %895 = icmp eq i8 %894, 0, !dbg !1152
  %896 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 4, i32 1), align 8, !dbg !1159
  %897 = icmp eq %struct.netif* %896, %1, !dbg !1160
  %898 = and i1 %895, %897, !dbg !1161
  br i1 %898, label %937, label %899, !dbg !1161

; <label>:899:                                    ; preds = %887, %893
  %900 = icmp eq i32 %838, 0, !dbg !1163
  br i1 %900, label %940, label %901, !dbg !1165

; <label>:901:                                    ; preds = %899
  %902 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 0, i32 1), align 8, !dbg !1176, !tbaa !1181
  %903 = icmp eq %struct.netif* %902, null, !dbg !1182
  %904 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 0, i32 2), align 16, !dbg !1183
  %905 = icmp eq i32 %904, 0, !dbg !1184
  %906 = or i1 %903, %905, !dbg !1185
  br i1 %906, label %907, label %913, !dbg !1185

; <label>:907:                                    ; preds = %931, %925, %919, %913, %901
  %908 = phi i64 [ 0, %901 ], [ 1, %913 ], [ 2, %919 ], [ 3, %925 ], [ 4, %931 ]
  %909 = phi %struct.netif** [ getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 0, i32 1), %901 ], [ getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 1, i32 1), %913 ], [ getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 2, i32 1), %919 ], [ getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 3, i32 1), %925 ], [ getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 4, i32 1), %931 ], !dbg !1176
  store %struct.netif* %1, %struct.netif** %909, align 8, !dbg !1186, !tbaa !1181
  %910 = getelementptr inbounds [5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 %908, i32 0, i32 0, i64 0, !dbg !1188
  %911 = bitcast i32* %910 to <4 x i32>*, !dbg !1188
  store <4 x i32> %822, <4 x i32>* %911, align 8, !dbg !1188
  %912 = getelementptr inbounds [5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 %908, i32 0, i32 1, !dbg !1188
  store i8 0, i8* %912, align 8, !dbg !1188, !tbaa !1157
  br label %937, !dbg !1190

; <label>:913:                                    ; preds = %901
  %914 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 1, i32 1), align 8, !dbg !1176, !tbaa !1181
  %915 = icmp eq %struct.netif* %914, null, !dbg !1182
  %916 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 1, i32 2), align 8, !dbg !1183
  %917 = icmp eq i32 %916, 0, !dbg !1184
  %918 = or i1 %915, %917, !dbg !1185
  br i1 %918, label %907, label %919, !dbg !1185

; <label>:919:                                    ; preds = %913
  %920 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 2, i32 1), align 8, !dbg !1176, !tbaa !1181
  %921 = icmp eq %struct.netif* %920, null, !dbg !1182
  %922 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 2, i32 2), align 16, !dbg !1183
  %923 = icmp eq i32 %922, 0, !dbg !1184
  %924 = or i1 %921, %923, !dbg !1185
  br i1 %924, label %907, label %925, !dbg !1185

; <label>:925:                                    ; preds = %919
  %926 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 3, i32 1), align 8, !dbg !1176, !tbaa !1181
  %927 = icmp eq %struct.netif* %926, null, !dbg !1182
  %928 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 3, i32 2), align 8, !dbg !1183
  %929 = icmp eq i32 %928, 0, !dbg !1184
  %930 = or i1 %927, %929, !dbg !1185
  br i1 %930, label %907, label %931, !dbg !1185

; <label>:931:                                    ; preds = %925
  %932 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 4, i32 1), align 8, !dbg !1176, !tbaa !1181
  %933 = icmp eq %struct.netif* %932, null, !dbg !1182
  %934 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 4, i32 2), align 16, !dbg !1183
  %935 = icmp eq i32 %934, 0, !dbg !1184
  %936 = or i1 %933, %935, !dbg !1185
  br i1 %936, label %907, label %940, !dbg !1185

; <label>:937:                                    ; preds = %893, %881, %869, %857, %845, %907
  %938 = phi i64 [ %908, %907 ], [ 4, %893 ], [ 3, %881 ], [ 2, %869 ], [ 1, %857 ], [ 0, %845 ]
  %939 = getelementptr inbounds [5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 %938, i32 2, !dbg !1191
  store i32 %838, i32* %939, align 8, !dbg !1194, !tbaa !1195
  br label %940, !dbg !1196

; <label>:940:                                    ; preds = %899, %931, %937, %830, %826
  %941 = load i8, i8* %827, align 1, !dbg !1197, !tbaa !1130
  %942 = and i8 %941, 64, !dbg !1199
  %943 = icmp eq i8 %942, 0, !dbg !1199
  br i1 %943, label %1078, label %944, !dbg !1200

; <label>:944:                                    ; preds = %940
  %945 = getelementptr inbounds i8, i8* %776, i64 4, !dbg !1225
  %946 = bitcast i8* %945 to i32*, !dbg !1225
  %947 = load i32, i32* %946, align 1, !dbg !1225, !tbaa !1139
  %948 = tail call i32 @lwip_htonl(i32 %947) #8, !dbg !1226
  %949 = getelementptr inbounds i8, i8* %776, i64 8, !dbg !1228
  %950 = bitcast i8* %949 to i32*, !dbg !1228
  %951 = load i32, i32* %950, align 1, !dbg !1228, !tbaa !1229
  %952 = tail call i32 @lwip_htonl(i32 %951) #8, !dbg !1230
  %953 = icmp ugt i32 %952, %948, !dbg !1232
  br i1 %953, label %1078, label %954, !dbg !1234

; <label>:954:                                    ; preds = %944
  %955 = getelementptr inbounds i8, i8* %776, i64 2, !dbg !1235
  %956 = load i8, i8* %955, align 1, !dbg !1235, !tbaa !1135
  %957 = icmp eq i8 %956, 64, !dbg !1236
  br i1 %957, label %958, label %1078, !dbg !1237

; <label>:958:                                    ; preds = %954
  %959 = load i8, i8* %726, align 1, !dbg !1239, !tbaa !530
  %960 = icmp eq i8 %959, 0, !dbg !1241
  br i1 %960, label %996, label %961, !dbg !1242

; <label>:961:                                    ; preds = %958
  %962 = load i32, i32* %728, align 4, !dbg !1243, !tbaa !547
  %963 = icmp eq i32 %962, 0, !dbg !1243
  br i1 %963, label %996, label %964, !dbg !1244

; <label>:964:                                    ; preds = %961
  %965 = load i32, i32* %731, align 8, !dbg !1245, !tbaa !530
  %966 = icmp eq i32 %823, %965, !dbg !1245
  br i1 %966, label %967, label %996, !dbg !1245

; <label>:967:                                    ; preds = %964
  %968 = load i32, i32* %734, align 4, !dbg !1245, !tbaa !530
  %969 = extractelement <4 x i32> %822, i32 1, !dbg !1245
  %970 = icmp eq i32 %969, %968, !dbg !1245
  br i1 %970, label %971, label %996, !dbg !1245

; <label>:971:                                    ; preds = %967
  %972 = load i8, i8* %738, align 8, !dbg !1245, !tbaa !530
  %973 = icmp eq i8 %972, 0, !dbg !1245
  br i1 %973, label %974, label %996, !dbg !1246

; <label>:974:                                    ; preds = %1067, %971
  %975 = phi i32* [ %730, %1067 ], [ %728, %971 ], !dbg !1247
  %976 = phi i32 [ %1058, %1067 ], [ %962, %971 ], !dbg !1247
  %977 = phi i8 [ 2, %1067 ], [ 1, %971 ]
  %978 = phi i64 [ 2, %1067 ], [ 1, %971 ], !dbg !1239
  %979 = phi i8 [ %997, %1067 ], [ %959, %971 ], !dbg !1239
  %980 = icmp ugt i32 %948, 7200, !dbg !1249
  %981 = icmp ugt i32 %948, %976, !dbg !1251
  %982 = or i1 %980, %981, !dbg !1252
  br i1 %982, label %986, label %983, !dbg !1252

; <label>:983:                                    ; preds = %974
  %984 = icmp ugt i32 %976, 7200, !dbg !1253
  br i1 %984, label %985, label %989, !dbg !1255

; <label>:985:                                    ; preds = %983
  store i32 7200, i32* %975, align 4, !dbg !1256, !tbaa !547
  br label %989, !dbg !1256

; <label>:986:                                    ; preds = %974
  store i32 %948, i32* %975, align 4, !dbg !1261, !tbaa !547
  %987 = icmp eq i32 %948, 0, !dbg !1266
  br i1 %987, label %988, label %989, !dbg !1269

; <label>:988:                                    ; preds = %986
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0)) #8, !dbg !1270
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1273
  tail call void @ukplat_terminate(i32 3) #10, !dbg !1273
  unreachable, !dbg !1273

; <label>:989:                                    ; preds = %986, %985, %983
  %990 = icmp ne i32 %952, 0, !dbg !1277
  %991 = icmp eq i8 %979, 16, !dbg !1279
  %992 = and i1 %990, %991, !dbg !1280
  br i1 %992, label %993, label %994, !dbg !1280

; <label>:993:                                    ; preds = %989
  tail call void @netif_ip6_addr_set_state(%struct.netif* nonnull %1, i8 signext %977, i8 zeroext 48) #8, !dbg !1281
  br label %994, !dbg !1283

; <label>:994:                                    ; preds = %993, %989
  %995 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 7, i64 %978, !dbg !1284
  store i32 %952, i32* %995, align 4, !dbg !1284, !tbaa !547
  br label %1078, !dbg !1284

; <label>:996:                                    ; preds = %971, %967, %964, %961, %958
  %997 = load i8, i8* %727, align 1, !dbg !1239, !tbaa !530
  %998 = icmp eq i8 %997, 0, !dbg !1241
  br i1 %998, label %1070, label %1057, !dbg !1242

; <label>:999:                                    ; preds = %1070
  %1000 = load i8, i8* %732, align 8, !dbg !1288, !tbaa !530
  switch i8 %1000, label %1001 [
    i8 0, label %1078
    i8 64, label %1078
  ], !dbg !1289

; <label>:1001:                                   ; preds = %999
  %1002 = load i32, i32* %735, align 8, !dbg !1292, !tbaa !530
  %1003 = load i32, i32* %736, align 4, !dbg !1292, !tbaa !530
  br i1 %960, label %1020, label %1004, !dbg !1295

; <label>:1004:                                   ; preds = %1001
  %1005 = load i32, i32* %731, align 8, !dbg !1299, !tbaa !530
  %1006 = icmp eq i32 %823, %1005, !dbg !1299
  br i1 %1006, label %1007, label %1020, !dbg !1299

; <label>:1007:                                   ; preds = %1004
  %1008 = load i32, i32* %734, align 4, !dbg !1299, !tbaa !530
  %1009 = extractelement <4 x i32> %822, i32 1, !dbg !1299
  %1010 = icmp eq i32 %1009, %1008, !dbg !1299
  br i1 %1010, label %1011, label %1020, !dbg !1299

; <label>:1011:                                   ; preds = %1007
  %1012 = load i32, i32* %740, align 8, !dbg !1299, !tbaa !530
  %1013 = icmp eq i32 %1002, %1012, !dbg !1299
  br i1 %1013, label %1014, label %1020, !dbg !1299

; <label>:1014:                                   ; preds = %1011
  %1015 = load i32, i32* %742, align 4, !dbg !1299, !tbaa !530
  %1016 = icmp eq i32 %1003, %1015, !dbg !1299
  br i1 %1016, label %1017, label %1020, !dbg !1299

; <label>:1017:                                   ; preds = %1014
  %1018 = load i8, i8* %738, align 8, !dbg !1299, !tbaa !530
  %1019 = icmp eq i8 %1018, 0, !dbg !1299
  br i1 %1019, label %1078, label %1020, !dbg !1303

; <label>:1020:                                   ; preds = %1017, %1014, %1011, %1007, %1004, %1001
  %1021 = phi i8 [ 0, %1017 ], [ 0, %1014 ], [ 0, %1011 ], [ 0, %1007 ], [ 0, %1004 ], [ 1, %1001 ], !dbg !1304
  br i1 %998, label %1052, label %1034, !dbg !1295

; <label>:1022:                                   ; preds = %1055, %1052, %1047
  %1023 = phi i8 [ 1, %1055 ], [ %1054, %1052 ], [ 1, %1047 ]
  %1024 = zext i8 %1023 to i64, !dbg !1305
  %1025 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 %1024, i32 0, i32 0, i32 0, i64 0, !dbg !1305
  store i32 %823, i32* %1025, align 8, !dbg !1305, !tbaa !530
  %1026 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 %1024, i32 0, i32 0, i32 0, i64 1, !dbg !1305
  %1027 = extractelement <4 x i32> %822, i32 1, !dbg !1305
  store i32 %1027, i32* %1026, align 4, !dbg !1305, !tbaa !530
  %1028 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 %1024, i32 0, i32 0, i32 0, i64 2, !dbg !1305
  store i32 %1002, i32* %1028, align 8, !dbg !1305, !tbaa !530
  %1029 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 %1024, i32 0, i32 0, i32 0, i64 3, !dbg !1305
  store i32 %1003, i32* %1029, align 4, !dbg !1305, !tbaa !530
  %1030 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 %1024, i32 0, i32 0, i32 1, !dbg !1305
  store i8 0, i8* %1030, align 8, !dbg !1305, !tbaa !530
  %1031 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 %1024, i32 1, !dbg !1308
  store i8 6, i8* %1031, align 4, !dbg !1308, !tbaa !1310
  %1032 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 6, i64 %1024, !dbg !1311
  store i32 %948, i32* %1032, align 4, !dbg !1311, !tbaa !547
  %1033 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 7, i64 %1024, !dbg !1315
  store i32 %952, i32* %1033, align 4, !dbg !1315, !tbaa !547
  tail call void @netif_ip6_addr_set_state(%struct.netif* nonnull %1, i8 signext %1023, i8 zeroext 8) #8, !dbg !1319
  br label %1078, !dbg !1320

; <label>:1034:                                   ; preds = %1020
  %1035 = load i32, i32* %733, align 8, !dbg !1299, !tbaa !530
  %1036 = icmp eq i32 %823, %1035, !dbg !1299
  br i1 %1036, label %1037, label %1055, !dbg !1299

; <label>:1037:                                   ; preds = %1034
  %1038 = load i32, i32* %737, align 4, !dbg !1299, !tbaa !530
  %1039 = extractelement <4 x i32> %822, i32 1, !dbg !1299
  %1040 = icmp eq i32 %1039, %1038, !dbg !1299
  br i1 %1040, label %1041, label %1055, !dbg !1299

; <label>:1041:                                   ; preds = %1037
  %1042 = load i32, i32* %741, align 8, !dbg !1299, !tbaa !530
  %1043 = icmp eq i32 %1002, %1042, !dbg !1299
  br i1 %1043, label %1044, label %1055, !dbg !1299

; <label>:1044:                                   ; preds = %1041
  %1045 = load i32, i32* %743, align 4, !dbg !1299, !tbaa !530
  %1046 = icmp eq i32 %1003, %1045, !dbg !1299
  br i1 %1046, label %1047, label %1055, !dbg !1299

; <label>:1047:                                   ; preds = %1044
  %1048 = load i8, i8* %739, align 8, !dbg !1299, !tbaa !530
  %1049 = icmp eq i8 %1048, 0, !dbg !1299
  %1050 = icmp eq i8 %1021, 0, !dbg !1321
  %1051 = or i1 %1050, %1049, !dbg !1303
  br i1 %1051, label %1078, label %1022, !dbg !1303

; <label>:1052:                                   ; preds = %1020
  %1053 = icmp eq i8 %1021, 0, !dbg !1323
  %1054 = select i1 %1053, i8 2, i8 1
  br label %1022

; <label>:1055:                                   ; preds = %1044, %1041, %1037, %1034
  %1056 = icmp eq i8 %1021, 0, !dbg !1321
  br i1 %1056, label %1078, label %1022, !dbg !1325

; <label>:1057:                                   ; preds = %996
  %1058 = load i32, i32* %730, align 4, !dbg !1243, !tbaa !547
  %1059 = icmp eq i32 %1058, 0, !dbg !1243
  br i1 %1059, label %1070, label %1060, !dbg !1244

; <label>:1060:                                   ; preds = %1057
  %1061 = load i32, i32* %733, align 8, !dbg !1245, !tbaa !530
  %1062 = icmp eq i32 %823, %1061, !dbg !1245
  br i1 %1062, label %1063, label %1070, !dbg !1245

; <label>:1063:                                   ; preds = %1060
  %1064 = load i32, i32* %737, align 4, !dbg !1245, !tbaa !530
  %1065 = extractelement <4 x i32> %822, i32 1, !dbg !1245
  %1066 = icmp eq i32 %1065, %1064, !dbg !1245
  br i1 %1066, label %1067, label %1070, !dbg !1245

; <label>:1067:                                   ; preds = %1063
  %1068 = load i8, i8* %739, align 8, !dbg !1245, !tbaa !530
  %1069 = icmp eq i8 %1068, 0, !dbg !1245
  br i1 %1069, label %974, label %1070, !dbg !1246

; <label>:1070:                                   ; preds = %1067, %1063, %1060, %1057, %996
  %1071 = load i8, i8* %729, align 1, !dbg !1326, !tbaa !1327
  %1072 = icmp eq i8 %1071, 0, !dbg !1328
  %1073 = icmp eq i32 %948, 0, !dbg !1329
  %1074 = or i1 %1073, %1072, !dbg !1330
  br i1 %1074, label %1078, label %999, !dbg !1330

; <label>:1075:                                   ; preds = %774
  %1076 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 8), align 2, !dbg !1331, !tbaa !571
  %1077 = add i16 %1076, 1, !dbg !1331
  store i16 %1077, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 8), align 2, !dbg !1331, !tbaa !571
  br label %1078, !dbg !1332

; <label>:1078:                                   ; preds = %819, %1070, %1055, %1047, %1022, %1017, %999, %999, %994, %954, %944, %940, %799, %815, %809, %783, %787, %780, %774, %1075
  %1079 = add i16 %753, %746, !dbg !1333
  %1080 = load i16, i16* %718, align 8, !dbg !1034, !tbaa !1035
  %1081 = zext i16 %1080 to i32, !dbg !1334
  %1082 = zext i16 %1079 to i32, !dbg !1335
  %1083 = sub nsw i32 %1081, %1082, !dbg !1336
  %1084 = icmp sgt i32 %1083, 1, !dbg !1036
  br i1 %1084, label %744, label %1345, !dbg !1037

; <label>:1085:                                   ; preds = %2
  %1086 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 3, !dbg !1337
  %1087 = load i16, i16* %1086, align 2, !dbg !1337, !tbaa !535
  %1088 = icmp ult i16 %1087, 40, !dbg !1339
  br i1 %1088, label %1089, label %1095, !dbg !1340

; <label>:1089:                                   ; preds = %1085
  %1090 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #8, !dbg !1341
  %1091 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 5), align 2, !dbg !1343, !tbaa !541
  %1092 = add i16 %1091, 1, !dbg !1343
  store i16 %1092, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 5), align 2, !dbg !1343, !tbaa !541
  %1093 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !1344, !tbaa !543
  %1094 = add i16 %1093, 1, !dbg !1344
  store i16 %1094, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !1344, !tbaa !543
  br label %1353

; <label>:1095:                                   ; preds = %1085
  %1096 = getelementptr inbounds i8, i8* %7, i64 24, !dbg !1346
  %1097 = bitcast i8* %1096 to i32*, !dbg !1346
  %1098 = load i32, i32* %1097, align 1, !dbg !1346, !tbaa !547
  %1099 = getelementptr inbounds i8, i8* %7, i64 28, !dbg !1346
  %1100 = bitcast i8* %1099 to i32*, !dbg !1346
  %1101 = load i32, i32* %1100, align 1, !dbg !1346, !tbaa !547
  %1102 = getelementptr inbounds i8, i8* %7, i64 32, !dbg !1346
  %1103 = bitcast i8* %1102 to i32*, !dbg !1346
  %1104 = load i32, i32* %1103, align 1, !dbg !1346, !tbaa !547
  %1105 = getelementptr inbounds i8, i8* %7, i64 36, !dbg !1346
  %1106 = bitcast i8* %1105 to i32*, !dbg !1346
  %1107 = load i32, i32* %1106, align 1, !dbg !1346, !tbaa !547
  %1108 = and i32 %1098, 49407, !dbg !1348
  %1109 = icmp eq i32 %1108, 33022, !dbg !1348
  br i1 %1109, label %1110, label %1114, !dbg !1348

; <label>:1110:                                   ; preds = %1095
  %1111 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 23, !dbg !1348
  %1112 = load i8, i8* %1111, align 8, !dbg !1348, !tbaa !550
  %1113 = add i8 %1112, 1, !dbg !1348
  br label %1114, !dbg !1348

; <label>:1114:                                   ; preds = %1095, %1110
  %1115 = phi i8 [ %1113, %1110 ], [ 0, %1095 ]
  %1116 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !1349, !tbaa !530
  %1117 = and i32 %1116, 49407, !dbg !1349
  %1118 = icmp eq i32 %1117, 33022, !dbg !1349
  br i1 %1118, label %1119, label %1131, !dbg !1351

; <label>:1119:                                   ; preds = %1114
  %1120 = load %struct.ip6_hdr*, %struct.ip6_hdr** getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 3), align 8, !dbg !1352, !tbaa !555
  %1121 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %1120, i64 0, i32 3, !dbg !1352
  %1122 = load i8, i8* %1121, align 1, !dbg !1352, !tbaa !557
  %1123 = icmp eq i8 %1122, -1, !dbg !1353
  br i1 %1123, label %1124, label %1131, !dbg !1354

; <label>:1124:                                   ; preds = %1119
  %1125 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1355
  %1126 = load i8, i8* %1125, align 1, !dbg !1355, !tbaa !1356
  %1127 = icmp ne i8 %1126, 0, !dbg !1358
  %1128 = and i32 %1098, 255, !dbg !1359
  %1129 = icmp eq i32 %1128, 255, !dbg !1359
  %1130 = or i1 %1129, %1127, !dbg !1360
  br i1 %1130, label %1131, label %1137, !dbg !1360

; <label>:1131:                                   ; preds = %1124, %1119, %1114
  %1132 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #8, !dbg !1361
  %1133 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 8), align 2, !dbg !1363, !tbaa !571
  %1134 = add i16 %1133, 1, !dbg !1363
  store i16 %1134, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 8), align 2, !dbg !1363, !tbaa !571
  %1135 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !1364, !tbaa !543
  %1136 = add i16 %1135, 1, !dbg !1364
  store i16 %1136, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !1364, !tbaa !543
  br label %1353

; <label>:1137:                                   ; preds = %1124
  %1138 = icmp ugt i16 %1087, 41, !dbg !1365
  br i1 %1138, label %1139, label %1150, !dbg !1367

; <label>:1139:                                   ; preds = %1137
  %1140 = zext i16 %1087 to i64, !dbg !1368
  %1141 = getelementptr inbounds i8, i8* %7, i64 40, !dbg !1369
  %1142 = bitcast i8* %1141 to %struct.lladdr_option*, !dbg !1371
  %1143 = getelementptr inbounds i8, i8* %7, i64 41, !dbg !1373
  %1144 = load i8, i8* %1143, align 1, !dbg !1373, !tbaa !623
  %1145 = zext i8 %1144 to i64, !dbg !1375
  %1146 = shl nuw nsw i64 %1145, 3, !dbg !1376
  %1147 = add nuw nsw i64 %1146, 40, !dbg !1377
  %1148 = icmp ugt i64 %1147, %1140, !dbg !1378
  %1149 = select i1 %1148, %struct.lladdr_option* null, %struct.lladdr_option* %1142, !dbg !1379
  br label %1150, !dbg !1379

; <label>:1150:                                   ; preds = %1139, %1137
  %1151 = phi %struct.lladdr_option* [ %1149, %1139 ], [ null, %1137 ], !dbg !1380
  br label %1152, !dbg !1392

; <label>:1152:                                   ; preds = %1173, %1150
  %1153 = phi i64 [ 0, %1150 ], [ %1174, %1173 ]
  %1154 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %1153, i32 0, i32 0, i64 0, !dbg !1394
  %1155 = load i32, i32* %1154, align 16, !dbg !1394, !tbaa !547
  %1156 = icmp eq i32 %1098, %1155, !dbg !1394
  br i1 %1156, label %1157, label %1173, !dbg !1394

; <label>:1157:                                   ; preds = %1152
  %1158 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %1153, i32 0, i32 0, i64 1, !dbg !1394
  %1159 = load i32, i32* %1158, align 4, !dbg !1394, !tbaa !547
  %1160 = icmp eq i32 %1101, %1159, !dbg !1394
  br i1 %1160, label %1161, label %1173, !dbg !1394

; <label>:1161:                                   ; preds = %1157
  %1162 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %1153, i32 0, i32 0, i64 2, !dbg !1394
  %1163 = load i32, i32* %1162, align 8, !dbg !1394, !tbaa !547
  %1164 = icmp eq i32 %1104, %1163, !dbg !1394
  br i1 %1164, label %1165, label %1173, !dbg !1394

; <label>:1165:                                   ; preds = %1161
  %1166 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %1153, i32 0, i32 0, i64 3, !dbg !1394
  %1167 = load i32, i32* %1166, align 4, !dbg !1394, !tbaa !547
  %1168 = icmp eq i32 %1107, %1167, !dbg !1394
  br i1 %1168, label %1169, label %1173, !dbg !1394

; <label>:1169:                                   ; preds = %1165
  %1170 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %1153, i32 0, i32 1, !dbg !1394
  %1171 = load i8, i8* %1170, align 16, !dbg !1394, !tbaa !1398
  %1172 = icmp eq i8 %1115, %1171, !dbg !1394
  br i1 %1172, label %1176, label %1173, !dbg !1400

; <label>:1173:                                   ; preds = %1169, %1165, %1161, %1157, %1152
  %1174 = add nuw nsw i64 %1153, 1, !dbg !1401
  %1175 = icmp ult i64 %1174, 10, !dbg !1402
  br i1 %1175, label %1152, label %1179, !dbg !1392, !llvm.loop !1403

; <label>:1176:                                   ; preds = %1169
  %1177 = trunc i64 %1153 to i16, !dbg !1400
  %1178 = icmp slt i16 %1177, 0, !dbg !1407
  br i1 %1178, label %1179, label %1181, !dbg !1409

; <label>:1179:                                   ; preds = %1173, %1176
  %1180 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %0) #8, !dbg !1410
  br label %1353

; <label>:1181:                                   ; preds = %1176
  %1182 = getelementptr inbounds i8, i8* %7, i64 8, !dbg !1412
  %1183 = bitcast i8* %1182 to <4 x i32>*, !dbg !1412
  %1184 = load <4 x i32>, <4 x i32>* %1183, align 1, !dbg !1412, !tbaa !547
  %1185 = extractelement <4 x i32> %1184, i32 0, !dbg !1414
  %1186 = and i32 %1185, 49407, !dbg !1414
  %1187 = icmp eq i32 %1186, 33022, !dbg !1414
  br i1 %1187, label %1188, label %1192, !dbg !1414

; <label>:1188:                                   ; preds = %1181
  %1189 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 23, !dbg !1414
  %1190 = load i8, i8* %1189, align 8, !dbg !1414, !tbaa !550
  %1191 = add i8 %1190, 1, !dbg !1414
  br label %1192, !dbg !1414

; <label>:1192:                                   ; preds = %1181, %1188
  %1193 = phi i8 [ %1191, %1188 ], [ 0, %1181 ]
  %1194 = shl i64 %1153, 48, !dbg !1415
  %1195 = ashr exact i64 %1194, 48, !dbg !1415
  %1196 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %1195, i32 1, i32 0, i64 0, !dbg !1415
  %1197 = bitcast i32* %1196 to <4 x i32>*, !dbg !1415
  store <4 x i32> %1184, <4 x i32>* %1197, align 4, !dbg !1415, !tbaa !547
  %1198 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %1195, i32 1, i32 1, !dbg !1415
  store i8 %1193, i8* %1198, align 4, !dbg !1415, !tbaa !1417
  %1199 = icmp eq %struct.lladdr_option* %1151, null, !dbg !1418
  br i1 %1199, label %1345, label %1200, !dbg !1420

; <label>:1200:                                   ; preds = %1192
  %1201 = getelementptr inbounds %struct.lladdr_option, %struct.lladdr_option* %1151, i64 0, i32 0, !dbg !1421
  %1202 = load i8, i8* %1201, align 1, !dbg !1421, !tbaa !1424
  %1203 = icmp eq i8 %1202, 2, !dbg !1425
  br i1 %1203, label %1204, label %1345, !dbg !1426

; <label>:1204:                                   ; preds = %1200
  %1205 = extractelement <4 x i32> %1184, i32 1
  %1206 = extractelement <4 x i32> %1184, i32 2
  %1207 = extractelement <4 x i32> %1184, i32 3
  br label %1208, !dbg !1427

; <label>:1208:                                   ; preds = %1204, %1229
  %1209 = phi i64 [ %1230, %1229 ], [ 0, %1204 ]
  %1210 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %1209, i32 0, i32 0, i64 0, !dbg !1427
  %1211 = load i32, i32* %1210, align 8, !dbg !1427, !tbaa !547
  %1212 = icmp eq i32 %1185, %1211, !dbg !1427
  br i1 %1212, label %1213, label %1229, !dbg !1427

; <label>:1213:                                   ; preds = %1208
  %1214 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %1209, i32 0, i32 0, i64 1, !dbg !1427
  %1215 = load i32, i32* %1214, align 4, !dbg !1427, !tbaa !547
  %1216 = icmp eq i32 %1205, %1215, !dbg !1427
  br i1 %1216, label %1217, label %1229, !dbg !1427

; <label>:1217:                                   ; preds = %1213
  %1218 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %1209, i32 0, i32 0, i64 2, !dbg !1427
  %1219 = load i32, i32* %1218, align 8, !dbg !1427, !tbaa !547
  %1220 = icmp eq i32 %1206, %1219, !dbg !1427
  br i1 %1220, label %1221, label %1229, !dbg !1427

; <label>:1221:                                   ; preds = %1217
  %1222 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %1209, i32 0, i32 0, i64 3, !dbg !1427
  %1223 = load i32, i32* %1222, align 4, !dbg !1427, !tbaa !547
  %1224 = icmp eq i32 %1207, %1223, !dbg !1427
  br i1 %1224, label %1225, label %1229, !dbg !1427

; <label>:1225:                                   ; preds = %1221
  %1226 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %1209, i32 0, i32 1, !dbg !1427
  %1227 = load i8, i8* %1226, align 8, !dbg !1427, !tbaa !647
  %1228 = icmp eq i8 %1193, %1227, !dbg !1427
  br i1 %1228, label %1232, label %1229, !dbg !1431

; <label>:1229:                                   ; preds = %1225, %1221, %1217, %1213, %1208
  %1230 = add nuw nsw i64 %1209, 1, !dbg !1432
  %1231 = icmp ult i64 %1230, 10, !dbg !1433
  br i1 %1231, label %1208, label %1235, !dbg !1434, !llvm.loop !654

; <label>:1232:                                   ; preds = %1225
  %1233 = trunc i64 %1209 to i8, !dbg !1431
  %1234 = icmp slt i8 %1233, 0, !dbg !1435
  br i1 %1234, label %1235, label %1252, !dbg !1437

; <label>:1235:                                   ; preds = %1229, %1232
  %1236 = tail call fastcc signext i8 @nd6_new_neighbor_cache_entry() #9, !dbg !1438
  %1237 = icmp sgt i8 %1236, -1, !dbg !1440
  br i1 %1237, label %1238, label %1345, !dbg !1442

; <label>:1238:                                   ; preds = %1235
  %1239 = sext i8 %1236 to i64, !dbg !1443
  %1240 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %1239, i32 1, !dbg !1445
  store %struct.netif* %1, %struct.netif** %1240, align 8, !dbg !1446, !tbaa !716
  %1241 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %1239, i32 2, i64 0, !dbg !1447
  %1242 = getelementptr inbounds %struct.lladdr_option, %struct.lladdr_option* %1151, i64 0, i32 2, i64 0, !dbg !1447
  %1243 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 20, !dbg !1447
  %1244 = load i8, i8* %1243, align 4, !dbg !1447, !tbaa !666
  %1245 = zext i8 %1244 to i64, !dbg !1447
  %1246 = tail call i8* @memcpy(i8* nonnull %1241, i8* nonnull %1242, i64 %1245) #8, !dbg !1447
  %1247 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %1239, i32 0, i32 0, i64 0, !dbg !1448
  %1248 = bitcast i32* %1247 to <4 x i32>*, !dbg !1448
  store <4 x i32> %1184, <4 x i32>* %1248, align 8, !dbg !1448, !tbaa !547
  %1249 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %1239, i32 0, i32 1, !dbg !1448
  store i8 %1193, i8* %1249, align 8, !dbg !1448, !tbaa !647
  %1250 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %1239, i32 4, !dbg !1450
  store i8 4, i8* %1250, align 8, !dbg !1451, !tbaa !687
  %1251 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %1239, i32 6, i32 0, !dbg !1452
  store i32 5, i32* %1251, align 4, !dbg !1453, !tbaa !530
  br label %1345, !dbg !1454

; <label>:1252:                                   ; preds = %1232
  %1253 = shl i64 %1209, 56
  %1254 = ashr exact i64 %1253, 56
  %1255 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %1254, i32 4
  %1256 = load i8, i8* %1255, align 8, !dbg !1457, !tbaa !687
  %1257 = icmp eq i8 %1256, 1, !dbg !1437
  br i1 %1257, label %1258, label %1345, !dbg !1454

; <label>:1258:                                   ; preds = %1252
  %1259 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %1254, i32 2, i64 0, !dbg !1459
  %1260 = getelementptr inbounds %struct.lladdr_option, %struct.lladdr_option* %1151, i64 0, i32 2, i64 0, !dbg !1459
  %1261 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 20, !dbg !1459
  %1262 = load i8, i8* %1261, align 4, !dbg !1459, !tbaa !666
  %1263 = zext i8 %1262 to i64, !dbg !1459
  %1264 = tail call i8* @memcpy(i8* nonnull %1259, i8* nonnull %1260, i64 %1263) #8, !dbg !1459
  store i8 4, i8* %1255, align 8, !dbg !1461, !tbaa !687
  %1265 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %1254, i32 6, i32 0, !dbg !1462
  store i32 5, i32* %1265, align 4, !dbg !1463, !tbaa !530
  br label %1345, !dbg !1464

; <label>:1266:                                   ; preds = %2
  %1267 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 3, !dbg !1465
  %1268 = load i16, i16* %1267, align 2, !dbg !1465, !tbaa !535
  %1269 = icmp ult i16 %1268, 48, !dbg !1467
  br i1 %1269, label %1270, label %1276, !dbg !1468

; <label>:1270:                                   ; preds = %1266
  %1271 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #8, !dbg !1469
  %1272 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 5), align 2, !dbg !1471, !tbaa !541
  %1273 = add i16 %1272, 1, !dbg !1471
  store i16 %1273, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 5), align 2, !dbg !1471, !tbaa !541
  %1274 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !1472, !tbaa !543
  %1275 = add i16 %1274, 1, !dbg !1472
  store i16 %1275, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !1472, !tbaa !543
  br label %1353

; <label>:1276:                                   ; preds = %1266
  %1277 = getelementptr inbounds i8, i8* %7, i64 32, !dbg !1475
  %1278 = bitcast i8* %1277 to i32*, !dbg !1475
  %1279 = load i32, i32* %1278, align 1, !dbg !1475, !tbaa !547
  %1280 = getelementptr inbounds i8, i8* %7, i64 36, !dbg !1475
  %1281 = bitcast i8* %1280 to i32*, !dbg !1475
  %1282 = load i32, i32* %1281, align 1, !dbg !1475, !tbaa !547
  %1283 = getelementptr inbounds i8, i8* %7, i64 40, !dbg !1475
  %1284 = bitcast i8* %1283 to i32*, !dbg !1475
  %1285 = load i32, i32* %1284, align 1, !dbg !1475, !tbaa !547
  %1286 = getelementptr inbounds i8, i8* %7, i64 44, !dbg !1475
  %1287 = bitcast i8* %1286 to i32*, !dbg !1475
  %1288 = load i32, i32* %1287, align 1, !dbg !1475, !tbaa !547
  %1289 = and i32 %1279, 49407, !dbg !1477
  %1290 = icmp eq i32 %1289, 33022, !dbg !1477
  br i1 %1290, label %1294, label %1291, !dbg !1477

; <label>:1291:                                   ; preds = %1276
  %1292 = trunc i32 %1279 to i16, !dbg !1477
  %1293 = and i16 %1292, -28673, !dbg !1477
  switch i16 %1293, label %1298 [
    i16 511, label %1294
    i16 767, label %1294
  ], !dbg !1477

; <label>:1294:                                   ; preds = %1291, %1291, %1276
  %1295 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 23, !dbg !1477
  %1296 = load i8, i8* %1295, align 8, !dbg !1477, !tbaa !550
  %1297 = add i8 %1296, 1, !dbg !1477
  br label %1298, !dbg !1477

; <label>:1298:                                   ; preds = %1291, %1294
  %1299 = phi i8 [ %1297, %1294 ], [ 0, %1291 ]
  br label %1300, !dbg !1482

; <label>:1300:                                   ; preds = %1321, %1298
  %1301 = phi i64 [ 0, %1298 ], [ %1322, %1321 ]
  %1302 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %1301, i32 0, i32 0, i64 0, !dbg !1483
  %1303 = load i32, i32* %1302, align 16, !dbg !1483, !tbaa !547
  %1304 = icmp eq i32 %1279, %1303, !dbg !1483
  br i1 %1304, label %1305, label %1321, !dbg !1483

; <label>:1305:                                   ; preds = %1300
  %1306 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %1301, i32 0, i32 0, i64 1, !dbg !1483
  %1307 = load i32, i32* %1306, align 4, !dbg !1483, !tbaa !547
  %1308 = icmp eq i32 %1282, %1307, !dbg !1483
  br i1 %1308, label %1309, label %1321, !dbg !1483

; <label>:1309:                                   ; preds = %1305
  %1310 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %1301, i32 0, i32 0, i64 2, !dbg !1483
  %1311 = load i32, i32* %1310, align 8, !dbg !1483, !tbaa !547
  %1312 = icmp eq i32 %1285, %1311, !dbg !1483
  br i1 %1312, label %1313, label %1321, !dbg !1483

; <label>:1313:                                   ; preds = %1309
  %1314 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %1301, i32 0, i32 0, i64 3, !dbg !1483
  %1315 = load i32, i32* %1314, align 4, !dbg !1483, !tbaa !547
  %1316 = icmp eq i32 %1288, %1315, !dbg !1483
  br i1 %1316, label %1317, label %1321, !dbg !1483

; <label>:1317:                                   ; preds = %1313
  %1318 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %1301, i32 0, i32 1, !dbg !1483
  %1319 = load i8, i8* %1318, align 16, !dbg !1483, !tbaa !1398
  %1320 = icmp eq i8 %1299, %1319, !dbg !1483
  br i1 %1320, label %1324, label %1321, !dbg !1484

; <label>:1321:                                   ; preds = %1317, %1313, %1309, %1305, %1300
  %1322 = add nuw nsw i64 %1301, 1, !dbg !1485
  %1323 = icmp ult i64 %1322, 10, !dbg !1486
  br i1 %1323, label %1300, label %1327, !dbg !1482, !llvm.loop !1403

; <label>:1324:                                   ; preds = %1317
  %1325 = trunc i64 %1301 to i16, !dbg !1484
  %1326 = icmp slt i16 %1325, 0, !dbg !1487
  br i1 %1326, label %1327, label %1329, !dbg !1489

; <label>:1327:                                   ; preds = %1321, %1324
  %1328 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %0) #8, !dbg !1490
  br label %1353

; <label>:1329:                                   ; preds = %1324
  %1330 = getelementptr inbounds i8, i8* %7, i64 4, !dbg !1492
  %1331 = bitcast i8* %1330 to i32*, !dbg !1492
  %1332 = load i32, i32* %1331, align 1, !dbg !1492, !tbaa !1493
  %1333 = tail call i32 @lwip_htonl(i32 %1332) #8, !dbg !1495
  %1334 = icmp ult i32 %1333, 65535, !dbg !1497
  %1335 = select i1 %1334, i32 %1333, i32 65535, !dbg !1497
  %1336 = trunc i32 %1335 to i16, !dbg !1498
  %1337 = shl i64 %1301, 48, !dbg !1499
  %1338 = ashr exact i64 %1337, 48, !dbg !1499
  %1339 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %1338, i32 2, !dbg !1500
  store i16 %1336, i16* %1339, align 8, !dbg !1501, !tbaa !1502
  br label %1345

; <label>:1340:                                   ; preds = %2
  %1341 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 8), align 2, !dbg !1503, !tbaa !571
  %1342 = add i16 %1341, 1, !dbg !1503
  store i16 %1342, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 8), align 2, !dbg !1503, !tbaa !571
  %1343 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !1504, !tbaa !543
  %1344 = add i16 %1343, 1, !dbg !1504
  store i16 %1344, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !1504, !tbaa !543
  br label %1345, !dbg !1505

; <label>:1345:                                   ; preds = %1078, %150, %1238, %714, %1192, %1200, %1252, %1258, %1235, %153, %239, %248, %158, %1329, %491, %1340
  %1346 = call zeroext i8 @pbuf_free(%struct.pbuf* %0) #8, !dbg !1506
  br label %1353, !dbg !1507

; <label>:1347:                                   ; preds = %817, %797, %778, %768, %750, %744
  %1348 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 5), align 2, !dbg !1508, !tbaa !541
  %1349 = add i16 %1348, 1, !dbg !1508
  store i16 %1349, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 5), align 2, !dbg !1508, !tbaa !541
  %1350 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !1509, !tbaa !543
  %1351 = add i16 %1350, 1, !dbg !1509
  store i16 %1351, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 3), align 2, !dbg !1509, !tbaa !543
  %1352 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %0) #8, !dbg !1510
  br label %1353, !dbg !1511

; <label>:1353:                                   ; preds = %689, %515, %496, %1327, %1270, %1179, %1131, %1089, %1459, %467, %420, %286, %254, %223, %209, %194, %123, %109, %104, %51, %13, %1347, %1345
  ret void, !dbg !1511

; <label>:1354:                                   ; preds = %106
  %1355 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 0, !dbg !584
  %1356 = load i32, i32* %1355, align 8, !dbg !584, !tbaa !530
  %1357 = icmp eq i32 %22, %1356, !dbg !584
  br i1 %1357, label %1358, label %1374, !dbg !584

; <label>:1358:                                   ; preds = %1354
  %1359 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 1, !dbg !584
  %1360 = load i32, i32* %1359, align 4, !dbg !584, !tbaa !530
  %1361 = icmp eq i32 %25, %1360, !dbg !584
  br i1 %1361, label %1362, label %1374, !dbg !584

; <label>:1362:                                   ; preds = %1358
  %1363 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 2, !dbg !584
  %1364 = load i32, i32* %1363, align 8, !dbg !584, !tbaa !530
  %1365 = icmp eq i32 %28, %1364, !dbg !584
  br i1 %1365, label %1366, label %1374, !dbg !584

; <label>:1366:                                   ; preds = %1362
  %1367 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 3, !dbg !584
  %1368 = load i32, i32* %1367, align 4, !dbg !584, !tbaa !530
  %1369 = icmp eq i32 %31, %1368, !dbg !584
  br i1 %1369, label %1370, label %1374, !dbg !584

; <label>:1370:                                   ; preds = %1366
  %1371 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 1, i32 0, i32 0, i32 1, !dbg !584
  %1372 = load i8, i8* %1371, align 8, !dbg !584, !tbaa !530
  %1373 = icmp eq i8 %39, %1372, !dbg !584
  br i1 %1373, label %84, label %1374, !dbg !585

; <label>:1374:                                   ; preds = %1370, %1366, %1362, %1358, %1354, %106, %106
  %1375 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 5, i64 2, !dbg !577
  %1376 = load i8, i8* %1375, align 1, !dbg !577, !tbaa !530
  switch i8 %1376, label %1377 [
    i8 0, label %1397
    i8 64, label %1397
  ], !dbg !583

; <label>:1377:                                   ; preds = %1374
  %1378 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 0, !dbg !584
  %1379 = load i32, i32* %1378, align 8, !dbg !584, !tbaa !530
  %1380 = icmp eq i32 %22, %1379, !dbg !584
  br i1 %1380, label %1381, label %1397, !dbg !584

; <label>:1381:                                   ; preds = %1377
  %1382 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 1, !dbg !584
  %1383 = load i32, i32* %1382, align 4, !dbg !584, !tbaa !530
  %1384 = icmp eq i32 %25, %1383, !dbg !584
  br i1 %1384, label %1385, label %1397, !dbg !584

; <label>:1385:                                   ; preds = %1381
  %1386 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 2, !dbg !584
  %1387 = load i32, i32* %1386, align 8, !dbg !584, !tbaa !530
  %1388 = icmp eq i32 %28, %1387, !dbg !584
  br i1 %1388, label %1389, label %1397, !dbg !584

; <label>:1389:                                   ; preds = %1385
  %1390 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 3, !dbg !584
  %1391 = load i32, i32* %1390, align 4, !dbg !584, !tbaa !530
  %1392 = icmp eq i32 %31, %1391, !dbg !584
  br i1 %1392, label %1393, label %1397, !dbg !584

; <label>:1393:                                   ; preds = %1389
  %1394 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 2, i32 0, i32 0, i32 1, !dbg !584
  %1395 = load i8, i8* %1394, align 8, !dbg !584, !tbaa !530
  %1396 = icmp eq i8 %39, %1395, !dbg !584
  br i1 %1396, label %84, label %1397, !dbg !585

; <label>:1397:                                   ; preds = %1393, %1389, %1385, %1381, %1377, %1374, %1374
  %1398 = icmp ult i16 %11, 26, !dbg !1512
  br i1 %1398, label %109, label %115, !dbg !1513

; <label>:1399:                                   ; preds = %347
  %1400 = and i32 %350, 8, !dbg !782
  %1401 = icmp ne i32 %1400, 0, !dbg !782
  %1402 = and i1 %1401, %314, !dbg !783
  br i1 %1402, label %1403, label %1426, !dbg !783

; <label>:1403:                                   ; preds = %1399, %347
  %1404 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 0, !dbg !784
  %1405 = load i32, i32* %1404, align 8, !dbg !784, !tbaa !530
  %1406 = icmp eq i32 %266, %1405, !dbg !784
  br i1 %1406, label %1407, label %1426, !dbg !784

; <label>:1407:                                   ; preds = %1403
  %1408 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 1, !dbg !784
  %1409 = load i32, i32* %1408, align 4, !dbg !784, !tbaa !530
  %1410 = extractelement <4 x i32> %263, i32 1, !dbg !784
  %1411 = icmp eq i32 %1410, %1409, !dbg !784
  br i1 %1411, label %1412, label %1426, !dbg !784

; <label>:1412:                                   ; preds = %1407
  %1413 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 2, !dbg !784
  %1414 = load i32, i32* %1413, align 8, !dbg !784, !tbaa !530
  %1415 = extractelement <4 x i32> %263, i32 2, !dbg !784
  %1416 = icmp eq i32 %1415, %1414, !dbg !784
  br i1 %1416, label %1417, label %1426, !dbg !784

; <label>:1417:                                   ; preds = %1412
  %1418 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 3, !dbg !784
  %1419 = load i32, i32* %1418, align 4, !dbg !784, !tbaa !530
  %1420 = extractelement <4 x i32> %263, i32 3, !dbg !784
  %1421 = icmp eq i32 %1420, %1419, !dbg !784
  br i1 %1421, label %1422, label %1426, !dbg !784

; <label>:1422:                                   ; preds = %1417
  %1423 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 1, i32 0, i32 0, i32 1, !dbg !784
  %1424 = load i8, i8* %1423, align 8, !dbg !784, !tbaa !530
  %1425 = icmp eq i8 %274, %1424, !dbg !784
  br i1 %1425, label %353, label %1426, !dbg !785

; <label>:1426:                                   ; preds = %1422, %1417, %1412, %1407, %1403, %1399
  %1427 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 5, i64 2, !dbg !776
  %1428 = load i8, i8* %1427, align 1, !dbg !776, !tbaa !530
  %1429 = zext i8 %1428 to i32, !dbg !776
  %1430 = and i32 %1429, 16, !dbg !776
  %1431 = icmp eq i32 %1430, 0, !dbg !776
  br i1 %1431, label %1432, label %1436, !dbg !781

; <label>:1432:                                   ; preds = %1426
  %1433 = and i32 %1429, 8, !dbg !782
  %1434 = icmp ne i32 %1433, 0, !dbg !782
  %1435 = and i1 %1434, %314, !dbg !783
  br i1 %1435, label %1436, label %1459, !dbg !783

; <label>:1436:                                   ; preds = %1432, %1426
  %1437 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 0, !dbg !784
  %1438 = load i32, i32* %1437, align 8, !dbg !784, !tbaa !530
  %1439 = icmp eq i32 %266, %1438, !dbg !784
  br i1 %1439, label %1440, label %1459, !dbg !784

; <label>:1440:                                   ; preds = %1436
  %1441 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 1, !dbg !784
  %1442 = load i32, i32* %1441, align 4, !dbg !784, !tbaa !530
  %1443 = extractelement <4 x i32> %263, i32 1, !dbg !784
  %1444 = icmp eq i32 %1443, %1442, !dbg !784
  br i1 %1444, label %1445, label %1459, !dbg !784

; <label>:1445:                                   ; preds = %1440
  %1446 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 2, !dbg !784
  %1447 = load i32, i32* %1446, align 8, !dbg !784, !tbaa !530
  %1448 = extractelement <4 x i32> %263, i32 2, !dbg !784
  %1449 = icmp eq i32 %1448, %1447, !dbg !784
  br i1 %1449, label %1450, label %1459, !dbg !784

; <label>:1450:                                   ; preds = %1445
  %1451 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 3, !dbg !784
  %1452 = load i32, i32* %1451, align 4, !dbg !784, !tbaa !530
  %1453 = extractelement <4 x i32> %263, i32 3, !dbg !784
  %1454 = icmp eq i32 %1453, %1452, !dbg !784
  br i1 %1454, label %1455, label %1459, !dbg !784

; <label>:1455:                                   ; preds = %1450
  %1456 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 4, i64 2, i32 0, i32 0, i32 1, !dbg !784
  %1457 = load i8, i8* %1456, align 8, !dbg !784, !tbaa !530
  %1458 = icmp eq i8 %274, %1457, !dbg !784
  br i1 %1458, label %353, label %1459, !dbg !785

; <label>:1459:                                   ; preds = %1455, %1450, %1445, %1440, %1436, %1432
  %1460 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #8, !dbg !1514
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %250) #7, !dbg !738
  br label %1353
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local zeroext i8 @pbuf_free(%struct.pbuf*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc void @nd6_send_q(i8 signext) unnamed_addr #0 !dbg !1517 {
  %2 = alloca %struct.ip6_addr, align 16
  %3 = bitcast %struct.ip6_addr* %2 to i8*, !dbg !1526
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %3) #7, !dbg !1526
  %4 = icmp ugt i8 %0, 9, !dbg !1527
  br i1 %4, label %51, label %5, !dbg !1527

; <label>:5:                                      ; preds = %1
  %6 = sext i8 %0 to i64, !dbg !1529
  %7 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %6, i32 3, !dbg !1530
  %8 = load %struct.nd6_q_entry*, %struct.nd6_q_entry** %7, align 8, !dbg !1530, !tbaa !723
  %9 = icmp eq %struct.nd6_q_entry* %8, null, !dbg !1531
  br i1 %9, label %51, label %10, !dbg !1532

; <label>:10:                                     ; preds = %5
  %11 = bitcast %struct.nd6_q_entry** %7 to i64*
  %12 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %2, i64 0, i32 1
  %13 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %6, i32 1
  %14 = bitcast %struct.ip6_addr* %2 to <4 x i32>*
  br label %15, !dbg !1532

; <label>:15:                                     ; preds = %10, %40
  %16 = phi %struct.nd6_q_entry* [ %8, %10 ], [ %49, %40 ]
  %17 = bitcast %struct.nd6_q_entry* %16 to i64*, !dbg !1534
  %18 = load i64, i64* %17, align 8, !dbg !1534, !tbaa !1536
  store i64 %18, i64* %11, align 8, !dbg !1538, !tbaa !723
  %19 = getelementptr inbounds %struct.nd6_q_entry, %struct.nd6_q_entry* %16, i64 0, i32 1, !dbg !1539
  %20 = load %struct.pbuf*, %struct.pbuf** %19, align 8, !dbg !1539, !tbaa !1540
  %21 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %20, i64 0, i32 1, !dbg !1541
  %22 = bitcast i8** %21 to %struct.ip6_hdr**, !dbg !1541
  %23 = load %struct.ip6_hdr*, %struct.ip6_hdr** %22, align 8, !dbg !1541, !tbaa !526
  %24 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %23, i64 0, i32 5, i32 0, i64 0, !dbg !1543
  %25 = bitcast i32* %24 to <4 x i32>*, !dbg !1543
  %26 = load <4 x i32>, <4 x i32>* %25, align 1, !dbg !1543, !tbaa !547
  store <4 x i32> %26, <4 x i32>* %14, align 16, !dbg !1543, !tbaa !547
  store i8 0, i8* %12, align 16, !dbg !1543, !tbaa !742
  %27 = extractelement <4 x i32> %26, i32 0, !dbg !1545
  %28 = and i32 %27, 49407, !dbg !1545
  %29 = icmp eq i32 %28, 33022, !dbg !1545
  br i1 %29, label %35, label %30, !dbg !1545

; <label>:30:                                     ; preds = %15
  %31 = trunc i32 %27 to i16, !dbg !1545
  %32 = and i16 %31, -28673, !dbg !1545
  switch i16 %32, label %33 [
    i16 511, label %35
    i16 767, label %35
  ], !dbg !1545

; <label>:33:                                     ; preds = %30
  %34 = load %struct.netif*, %struct.netif** %13, align 8, !dbg !1546, !tbaa !716
  br label %40, !dbg !1545

; <label>:35:                                     ; preds = %30, %30, %15
  %36 = load %struct.netif*, %struct.netif** %13, align 8, !dbg !1545, !tbaa !716
  %37 = getelementptr inbounds %struct.netif, %struct.netif* %36, i64 0, i32 23, !dbg !1545
  %38 = load i8, i8* %37, align 8, !dbg !1545, !tbaa !550
  %39 = add i8 %38, 1, !dbg !1545
  br label %40, !dbg !1545

; <label>:40:                                     ; preds = %33, %35
  %41 = phi %struct.netif* [ %36, %35 ], [ %34, %33 ], !dbg !1546
  %42 = phi i8 [ %39, %35 ], [ 0, %33 ], !dbg !1545
  store i8 %42, i8* %12, align 16, !dbg !1545, !tbaa !742
  %43 = getelementptr inbounds %struct.netif, %struct.netif* %41, i64 0, i32 11, !dbg !1547
  %44 = load i8 (%struct.netif*, %struct.pbuf*, %struct.ip6_addr*)*, i8 (%struct.netif*, %struct.pbuf*, %struct.ip6_addr*)** %43, align 8, !dbg !1547, !tbaa !1548
  %45 = call signext i8 %44(%struct.netif* %41, %struct.pbuf* %20, %struct.ip6_addr* nonnull %2) #8, !dbg !1550
  %46 = load %struct.pbuf*, %struct.pbuf** %19, align 8, !dbg !1551, !tbaa !1540
  %47 = call zeroext i8 @pbuf_free(%struct.pbuf* %46) #8, !dbg !1552
  %48 = bitcast %struct.nd6_q_entry* %16 to i8*, !dbg !1553
  call void @memp_free(i32 12, i8* %48) #8, !dbg !1554
  %49 = load %struct.nd6_q_entry*, %struct.nd6_q_entry** %7, align 8, !dbg !1530, !tbaa !723
  %50 = icmp eq %struct.nd6_q_entry* %49, null, !dbg !1531
  br i1 %50, label %51, label %15, !dbg !1532, !llvm.loop !1555

; <label>:51:                                     ; preds = %40, %5, %1
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %3) #7, !dbg !1557
  ret void, !dbg !1557
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define internal fastcc void @nd6_send_na(%struct.netif*, %struct.ip6_addr*, i8 zeroext) unnamed_addr #0 !dbg !1558 {
  %4 = icmp eq %struct.ip6_addr* %1, null, !dbg !1574
  br i1 %4, label %5, label %6, !dbg !1577

; <label>:5:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0)) #9, !dbg !1578
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1581
  tail call void @ukplat_terminate(i32 3) #10, !dbg !1581
  unreachable, !dbg !1581

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 20, !dbg !1586
  %8 = load i8, i8* %7, align 4, !dbg !1586, !tbaa !666
  %9 = zext i8 %8 to i16, !dbg !1587
  %10 = add nuw nsw i16 %9, 2, !dbg !1588
  %11 = lshr i16 %10, 3, !dbg !1589
  %12 = add i8 %8, 2, !dbg !1590
  %13 = and i8 %12, 7, !dbg !1590
  %14 = icmp ne i8 %13, 0, !dbg !1591
  %15 = zext i1 %14 to i16, !dbg !1591
  %16 = add nuw nsw i16 %11, %15, !dbg !1592
  %17 = shl nuw nsw i16 %16, 3, !dbg !1594
  %18 = add nuw nsw i16 %17, 24, !dbg !1595
  %19 = tail call %struct.pbuf* @pbuf_alloc(i32 54, i16 zeroext %18, i32 640) #8, !dbg !1596
  %20 = icmp eq %struct.pbuf* %19, null, !dbg !1598
  br i1 %20, label %21, label %24, !dbg !1600

; <label>:21:                                     ; preds = %6
  %22 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 6), align 2, !dbg !1601, !tbaa !856
  %23 = add i16 %22, 1, !dbg !1601
  store i16 %23, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 6), align 2, !dbg !1601, !tbaa !856
  br label %89, !dbg !1603

; <label>:24:                                     ; preds = %6
  %25 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %19, i64 0, i32 1, !dbg !1604
  %26 = load i8*, i8** %25, align 8, !dbg !1604, !tbaa !526
  %27 = getelementptr inbounds i8, i8* %26, i64 24, !dbg !1606
  store i8 -120, i8* %26, align 1, !dbg !1608, !tbaa !1609
  %28 = getelementptr inbounds i8, i8* %26, i64 1, !dbg !1610
  store i8 0, i8* %28, align 1, !dbg !1611, !tbaa !563
  %29 = getelementptr inbounds i8, i8* %26, i64 2, !dbg !1612
  %30 = bitcast i8* %29 to i16*, !dbg !1612
  store i16 0, i16* %30, align 1, !dbg !1613, !tbaa !1614
  %31 = zext i8 %2 to i32, !dbg !1615
  %32 = and i8 %2, -16, !dbg !1616
  %33 = getelementptr inbounds i8, i8* %26, i64 4, !dbg !1617
  store i8 %32, i8* %33, align 1, !dbg !1618, !tbaa !661
  %34 = getelementptr inbounds i8, i8* %26, i64 5, !dbg !1619
  store i8 0, i8* %34, align 1, !dbg !1620, !tbaa !530
  %35 = getelementptr inbounds i8, i8* %26, i64 6, !dbg !1621
  store i8 0, i8* %35, align 1, !dbg !1622, !tbaa !530
  %36 = getelementptr inbounds i8, i8* %26, i64 7, !dbg !1623
  store i8 0, i8* %36, align 1, !dbg !1624, !tbaa !530
  %37 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 0, !dbg !1625
  %38 = load i32, i32* %37, align 4, !dbg !1625, !tbaa !547
  %39 = getelementptr inbounds i8, i8* %26, i64 8, !dbg !1625
  %40 = bitcast i8* %39 to i32*, !dbg !1625
  store i32 %38, i32* %40, align 1, !dbg !1625, !tbaa !547
  %41 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 1, !dbg !1625
  %42 = load i32, i32* %41, align 4, !dbg !1625, !tbaa !547
  %43 = getelementptr inbounds i8, i8* %26, i64 12, !dbg !1625
  %44 = bitcast i8* %43 to i32*, !dbg !1625
  store i32 %42, i32* %44, align 1, !dbg !1625, !tbaa !547
  %45 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 2, !dbg !1625
  %46 = load i32, i32* %45, align 4, !dbg !1625, !tbaa !547
  %47 = getelementptr inbounds i8, i8* %26, i64 16, !dbg !1625
  %48 = bitcast i8* %47 to i32*, !dbg !1625
  store i32 %46, i32* %48, align 1, !dbg !1625, !tbaa !547
  %49 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 3, !dbg !1625
  %50 = load i32, i32* %49, align 4, !dbg !1625, !tbaa !547
  %51 = getelementptr inbounds i8, i8* %26, i64 20, !dbg !1625
  %52 = bitcast i8* %51 to i32*, !dbg !1625
  store i32 %50, i32* %52, align 1, !dbg !1625, !tbaa !547
  store i8 2, i8* %27, align 1, !dbg !1627, !tbaa !1424
  %53 = trunc i16 %16 to i8, !dbg !1628
  %54 = getelementptr inbounds i8, i8* %26, i64 25, !dbg !1629
  store i8 %53, i8* %54, align 1, !dbg !1630, !tbaa !623
  %55 = getelementptr inbounds i8, i8* %26, i64 26, !dbg !1631
  %56 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 0, !dbg !1631
  %57 = load i8, i8* %7, align 4, !dbg !1631, !tbaa !666
  %58 = zext i8 %57 to i64, !dbg !1631
  %59 = tail call i8* @memcpy(i8* nonnull %55, i8* nonnull %56, i64 %58) #8, !dbg !1631
  %60 = and i32 %31, 1, !dbg !1632
  %61 = icmp eq i32 %60, 0, !dbg !1632
  br i1 %61, label %65, label %62, !dbg !1634

; <label>:62:                                     ; preds = %24
  store i32 767, i32* getelementptr inbounds (%struct.ip6_addr, %struct.ip6_addr* @multicast_address, i64 0, i32 0, i64 0), align 4, !dbg !1635, !tbaa !547
  store i32 0, i32* getelementptr inbounds (%struct.ip6_addr, %struct.ip6_addr* @multicast_address, i64 0, i32 0, i64 1), align 4, !dbg !1635, !tbaa !547
  store i32 16777216, i32* getelementptr inbounds (%struct.ip6_addr, %struct.ip6_addr* @multicast_address, i64 0, i32 0, i64 2), align 4, !dbg !1635, !tbaa !547
  %63 = load i32, i32* %49, align 4, !dbg !1635, !tbaa !547
  %64 = or i32 %63, 255, !dbg !1635
  br label %69, !dbg !1639

; <label>:65:                                     ; preds = %24
  %66 = and i32 %31, 2, !dbg !1640
  %67 = icmp eq i32 %66, 0, !dbg !1640
  br i1 %67, label %74, label %68, !dbg !1642

; <label>:68:                                     ; preds = %65
  store i32 767, i32* getelementptr inbounds (%struct.ip6_addr, %struct.ip6_addr* @multicast_address, i64 0, i32 0, i64 0), align 4, !dbg !1643, !tbaa !547
  store i32 0, i32* getelementptr inbounds (%struct.ip6_addr, %struct.ip6_addr* @multicast_address, i64 0, i32 0, i64 1), align 4, !dbg !1643, !tbaa !547
  store i32 0, i32* getelementptr inbounds (%struct.ip6_addr, %struct.ip6_addr* @multicast_address, i64 0, i32 0, i64 2), align 4, !dbg !1643, !tbaa !547
  br label %69, !dbg !1646

; <label>:69:                                     ; preds = %68, %62
  %70 = phi i32 [ %64, %62 ], [ 16777216, %68 ]
  store i32 %70, i32* getelementptr inbounds (%struct.ip6_addr, %struct.ip6_addr* @multicast_address, i64 0, i32 0, i64 3), align 4, !dbg !1647, !tbaa !547
  %71 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 23, !dbg !1648
  %72 = load i8, i8* %71, align 8, !dbg !1648, !tbaa !550
  %73 = add i8 %72, 1, !dbg !1648
  store i8 %73, i8* getelementptr inbounds (%struct.ip6_addr, %struct.ip6_addr* @multicast_address, i64 0, i32 1), align 4, !dbg !1648, !tbaa !742
  br label %74, !dbg !1649

; <label>:74:                                     ; preds = %69, %65
  %75 = phi %struct.ip6_addr* [ getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0), %65 ], [ @multicast_address, %69 ], !dbg !1651
  %76 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 16, !dbg !1649
  %77 = load i16, i16* %76, align 8, !dbg !1649, !tbaa !1653
  %78 = and i16 %77, 16, !dbg !1649
  %79 = icmp eq i16 %78, 0, !dbg !1649
  br i1 %79, label %84, label %80, !dbg !1654

; <label>:80:                                     ; preds = %74
  %81 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %19, i64 0, i32 3, !dbg !1655
  %82 = load i16, i16* %81, align 2, !dbg !1655, !tbaa !535
  %83 = tail call zeroext i16 @ip6_chksum_pseudo(%struct.pbuf* nonnull %19, i8 zeroext 58, i16 zeroext %82, %struct.ip6_addr* nonnull %1, %struct.ip6_addr* %75) #8, !dbg !1657
  store i16 %83, i16* %30, align 1, !dbg !1658, !tbaa !1614
  br label %84, !dbg !1659

; <label>:84:                                     ; preds = %74, %80
  %85 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 0), align 2, !dbg !1660, !tbaa !1661
  %86 = add i16 %85, 1, !dbg !1660
  store i16 %86, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 0), align 2, !dbg !1660, !tbaa !1661
  %87 = tail call signext i8 @ip6_output_if(%struct.pbuf* nonnull %19, %struct.ip6_addr* nonnull %1, %struct.ip6_addr* %75, i8 zeroext -1, i8 zeroext 0, i8 zeroext 58, %struct.netif* nonnull %0) #8, !dbg !1662
  %88 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %19) #8, !dbg !1663
  br label %89, !dbg !1664

; <label>:89:                                     ; preds = %84, %21
  ret void, !dbg !1664
}

; Function Attrs: noredzone nounwind
define internal fastcc signext i8 @nd6_new_neighbor_cache_entry() unnamed_addr #0 !dbg !1665 {
  %1 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 0, i32 4), align 16, !dbg !1673, !tbaa !687
  %2 = icmp eq i8 %1, 0, !dbg !1678
  br i1 %2, label %164, label %3, !dbg !1679

; <label>:3:                                      ; preds = %0
  %4 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 1, i32 4), align 8, !dbg !1673, !tbaa !687
  %5 = icmp eq i8 %4, 0, !dbg !1678
  br i1 %5, label %164, label %514, !dbg !1679

; <label>:6:                                      ; preds = %504, %499, %494, %489, %484, %479, %474, %469, %21, %538
  %7 = phi i8 [ 0, %538 ], [ 1, %21 ], [ 2, %469 ], [ 3, %474 ], [ 4, %479 ], [ 5, %484 ], [ 6, %489 ], [ 7, %494 ], [ 8, %499 ], [ 9, %504 ]
  %8 = phi i64 [ 0, %538 ], [ 1, %21 ], [ 2, %469 ], [ 3, %474 ], [ 4, %479 ], [ 5, %484 ], [ 6, %489 ], [ 7, %494 ], [ 8, %499 ], [ 9, %504 ], !dbg !1680
  %9 = phi i8* [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 0, i32 4), %538 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 1, i32 4), %21 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 2, i32 4), %469 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 3, i32 4), %474 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 4, i32 4), %479 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 5, i32 4), %484 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 6, i32 4), %489 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 7, i32 4), %494 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 8, i32 4), %499 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 9, i32 4), %504 ], !dbg !1685
  %10 = phi i8* [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 0, i32 5), %538 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 1, i32 5), %21 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 2, i32 5), %469 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 3, i32 5), %474 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 4, i32 5), %479 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 5, i32 5), %484 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 6, i32 5), %489 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 7, i32 5), %494 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 8, i32 5), %499 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 9, i32 5), %504 ], !dbg !1686
  %11 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %8, i32 3, !dbg !1693
  %12 = load %struct.nd6_q_entry*, %struct.nd6_q_entry** %11, align 8, !dbg !1693, !tbaa !723
  %13 = icmp eq %struct.nd6_q_entry* %12, null, !dbg !1695
  br i1 %13, label %15, label %14, !dbg !1696

; <label>:14:                                     ; preds = %6
  tail call fastcc void @nd6_free_q(%struct.nd6_q_entry* nonnull %12) #8, !dbg !1697
  store %struct.nd6_q_entry* null, %struct.nd6_q_entry** %11, align 8, !dbg !1699, !tbaa !723
  br label %15, !dbg !1700

; <label>:15:                                     ; preds = %14, %6
  store i8 0, i8* %9, align 8, !dbg !1701, !tbaa !687
  store i8 0, i8* %10, align 1, !dbg !1702, !tbaa !981
  %16 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %8, i32 1, !dbg !1703
  store %struct.netif* null, %struct.netif** %16, align 8, !dbg !1704, !tbaa !716
  %17 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %8, i32 6, i32 0, !dbg !1705
  store i32 0, i32* %17, align 4, !dbg !1706, !tbaa !530
  %18 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %8, i32 0, i32 0, i64 0, !dbg !1707
  %19 = bitcast i32* %18 to <4 x i32>*, !dbg !1707
  store <4 x i32> zeroinitializer, <4 x i32>* %19, align 8, !dbg !1707, !tbaa !547
  %20 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %8, i32 0, i32 1, !dbg !1707
  store i8 0, i8* %20, align 8, !dbg !1707, !tbaa !647
  br label %164, !dbg !1707

; <label>:21:                                     ; preds = %538
  %22 = icmp eq i8 %4, 3, !dbg !1709
  %23 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 1, i32 5), align 1, !dbg !1686
  %24 = icmp eq i8 %23, 0, !dbg !1710
  %25 = and i1 %22, %24, !dbg !1711
  br i1 %25, label %6, label %469, !dbg !1711

; <label>:26:                                     ; preds = %459, %454, %449, %444, %439, %434, %429, %424, %41, %509
  %27 = phi i8 [ 0, %509 ], [ 1, %41 ], [ 2, %424 ], [ 3, %429 ], [ 4, %434 ], [ 5, %439 ], [ 6, %444 ], [ 7, %449 ], [ 8, %454 ], [ 9, %459 ]
  %28 = phi i64 [ 0, %509 ], [ 1, %41 ], [ 2, %424 ], [ 3, %429 ], [ 4, %434 ], [ 5, %439 ], [ 6, %444 ], [ 7, %449 ], [ 8, %454 ], [ 9, %459 ], !dbg !1712
  %29 = phi i8* [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 0, i32 4), %509 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 1, i32 4), %41 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 2, i32 4), %424 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 3, i32 4), %429 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 4, i32 4), %434 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 5, i32 4), %439 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 6, i32 4), %444 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 7, i32 4), %449 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 8, i32 4), %454 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 9, i32 4), %459 ], !dbg !1717
  %30 = phi i8* [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 0, i32 5), %509 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 1, i32 5), %41 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 2, i32 5), %424 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 3, i32 5), %429 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 4, i32 5), %434 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 5, i32 5), %439 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 6, i32 5), %444 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 7, i32 5), %449 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 8, i32 5), %454 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 9, i32 5), %459 ], !dbg !1718
  %31 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %28, i32 3, !dbg !1722
  %32 = load %struct.nd6_q_entry*, %struct.nd6_q_entry** %31, align 8, !dbg !1722, !tbaa !723
  %33 = icmp eq %struct.nd6_q_entry* %32, null, !dbg !1723
  br i1 %33, label %35, label %34, !dbg !1724

; <label>:34:                                     ; preds = %26
  tail call fastcc void @nd6_free_q(%struct.nd6_q_entry* nonnull %32) #8, !dbg !1725
  store %struct.nd6_q_entry* null, %struct.nd6_q_entry** %31, align 8, !dbg !1726, !tbaa !723
  br label %35, !dbg !1727

; <label>:35:                                     ; preds = %34, %26
  store i8 0, i8* %29, align 8, !dbg !1728, !tbaa !687
  store i8 0, i8* %30, align 1, !dbg !1729, !tbaa !981
  %36 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %28, i32 1, !dbg !1730
  store %struct.netif* null, %struct.netif** %36, align 8, !dbg !1731, !tbaa !716
  %37 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %28, i32 6, i32 0, !dbg !1732
  store i32 0, i32* %37, align 4, !dbg !1733, !tbaa !530
  %38 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %28, i32 0, i32 0, i64 0, !dbg !1734
  %39 = bitcast i32* %38 to <4 x i32>*, !dbg !1734
  store <4 x i32> zeroinitializer, <4 x i32>* %39, align 8, !dbg !1734, !tbaa !547
  %40 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %28, i32 0, i32 1, !dbg !1734
  store i8 0, i8* %40, align 8, !dbg !1734, !tbaa !647
  br label %164, !dbg !1734

; <label>:41:                                     ; preds = %509
  %42 = icmp eq i8 %4, 5, !dbg !1735
  %43 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 1, i32 5), align 1, !dbg !1718
  %44 = icmp eq i8 %43, 0, !dbg !1736
  %45 = and i1 %42, %44, !dbg !1737
  br i1 %45, label %26, label %424, !dbg !1737

; <label>:46:                                     ; preds = %403, %398, %393, %388, %383, %378, %373, %368, %61, %464
  %47 = phi i8 [ 0, %464 ], [ 1, %61 ], [ 2, %368 ], [ 3, %373 ], [ 4, %378 ], [ 5, %383 ], [ 6, %388 ], [ 7, %393 ], [ 8, %398 ], [ 9, %403 ]
  %48 = phi i64 [ 0, %464 ], [ 1, %61 ], [ 2, %368 ], [ 3, %373 ], [ 4, %378 ], [ 5, %383 ], [ 6, %388 ], [ 7, %393 ], [ 8, %398 ], [ 9, %403 ], !dbg !1738
  %49 = phi i8* [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 0, i32 4), %464 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 1, i32 4), %61 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 2, i32 4), %368 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 3, i32 4), %373 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 4, i32 4), %378 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 5, i32 4), %383 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 6, i32 4), %388 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 7, i32 4), %393 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 8, i32 4), %398 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 9, i32 4), %403 ], !dbg !1743
  %50 = phi i8* [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 0, i32 5), %464 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 1, i32 5), %61 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 2, i32 5), %368 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 3, i32 5), %373 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 4, i32 5), %378 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 5, i32 5), %383 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 6, i32 5), %388 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 7, i32 5), %393 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 8, i32 5), %398 ], [ getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 9, i32 5), %403 ], !dbg !1744
  %51 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %48, i32 3, !dbg !1748
  %52 = load %struct.nd6_q_entry*, %struct.nd6_q_entry** %51, align 8, !dbg !1748, !tbaa !723
  %53 = icmp eq %struct.nd6_q_entry* %52, null, !dbg !1749
  br i1 %53, label %55, label %54, !dbg !1750

; <label>:54:                                     ; preds = %46
  tail call fastcc void @nd6_free_q(%struct.nd6_q_entry* nonnull %52) #8, !dbg !1751
  store %struct.nd6_q_entry* null, %struct.nd6_q_entry** %51, align 8, !dbg !1752, !tbaa !723
  br label %55, !dbg !1753

; <label>:55:                                     ; preds = %54, %46
  store i8 0, i8* %49, align 8, !dbg !1754, !tbaa !687
  store i8 0, i8* %50, align 1, !dbg !1755, !tbaa !981
  %56 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %48, i32 1, !dbg !1756
  store %struct.netif* null, %struct.netif** %56, align 8, !dbg !1757, !tbaa !716
  %57 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %48, i32 6, i32 0, !dbg !1758
  store i32 0, i32* %57, align 4, !dbg !1759, !tbaa !530
  %58 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %48, i32 0, i32 0, i64 0, !dbg !1760
  %59 = bitcast i32* %58 to <4 x i32>*, !dbg !1760
  store <4 x i32> zeroinitializer, <4 x i32>* %59, align 8, !dbg !1760, !tbaa !547
  %60 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %48, i32 0, i32 1, !dbg !1760
  store i8 0, i8* %60, align 8, !dbg !1760, !tbaa !647
  br label %164, !dbg !1760

; <label>:61:                                     ; preds = %464
  %62 = icmp eq i8 %4, 4, !dbg !1761
  %63 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 1, i32 5), align 1, !dbg !1744
  %64 = icmp eq i8 %63, 0, !dbg !1762
  %65 = and i1 %62, %64, !dbg !1763
  br i1 %65, label %46, label %368, !dbg !1763

; <label>:66:                                     ; preds = %356, %366
  %67 = phi i8 [ %357, %366 ], [ 9, %356 ]
  %68 = sext i8 %67 to i64, !dbg !1768
  %69 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %68, i32 5, !dbg !1770
  %70 = load i8, i8* %69, align 1, !dbg !1770, !tbaa !981
  %71 = icmp eq i8 %70, 0, !dbg !1768
  br i1 %71, label %72, label %164, !dbg !1771

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %68, i32 3, !dbg !1772
  %74 = load %struct.nd6_q_entry*, %struct.nd6_q_entry** %73, align 8, !dbg !1772, !tbaa !723
  %75 = icmp eq %struct.nd6_q_entry* %74, null, !dbg !1773
  br i1 %75, label %77, label %76, !dbg !1774

; <label>:76:                                     ; preds = %72
  tail call fastcc void @nd6_free_q(%struct.nd6_q_entry* nonnull %74) #8, !dbg !1775
  store %struct.nd6_q_entry* null, %struct.nd6_q_entry** %73, align 8, !dbg !1776, !tbaa !723
  br label %77, !dbg !1777

; <label>:77:                                     ; preds = %76, %72
  %78 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %68, i32 4, !dbg !1778
  store i8 0, i8* %78, align 8, !dbg !1779, !tbaa !687
  store i8 0, i8* %69, align 1, !dbg !1780, !tbaa !981
  %79 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %68, i32 1, !dbg !1781
  store %struct.netif* null, %struct.netif** %79, align 8, !dbg !1782, !tbaa !716
  %80 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %68, i32 6, i32 0, !dbg !1783
  store i32 0, i32* %80, align 4, !dbg !1784, !tbaa !530
  %81 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %68, i32 0, i32 0, i64 0, !dbg !1785
  %82 = bitcast i32* %81 to <4 x i32>*, !dbg !1785
  store <4 x i32> zeroinitializer, <4 x i32>* %82, align 8, !dbg !1785, !tbaa !547
  %83 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %68, i32 0, i32 1, !dbg !1785
  store i8 0, i8* %83, align 8, !dbg !1785, !tbaa !647
  br label %164, !dbg !1785

; <label>:84:                                     ; preds = %366, %106
  %85 = phi i64 [ %109, %106 ], [ 0, %366 ]
  %86 = phi i32 [ %108, %106 ], [ 0, %366 ]
  %87 = phi i8 [ %107, %106 ], [ -1, %366 ]
  %88 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %85, i32 3, !dbg !1788
  %89 = load %struct.nd6_q_entry*, %struct.nd6_q_entry** %88, align 8, !dbg !1788, !tbaa !723
  %90 = icmp eq %struct.nd6_q_entry* %89, null, !dbg !1793
  br i1 %90, label %91, label %106, !dbg !1794

; <label>:91:                                     ; preds = %84
  %92 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %85, i32 4, !dbg !1795
  %93 = load i8, i8* %92, align 8, !dbg !1795, !tbaa !687
  %94 = icmp eq i8 %93, 1, !dbg !1796
  br i1 %94, label %95, label %106, !dbg !1797

; <label>:95:                                     ; preds = %91
  %96 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %85, i32 5, !dbg !1798
  %97 = load i8, i8* %96, align 1, !dbg !1798, !tbaa !981
  %98 = icmp eq i8 %97, 0, !dbg !1799
  br i1 %98, label %99, label %106, !dbg !1800

; <label>:99:                                     ; preds = %95
  %100 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %85, i32 6, i32 0, !dbg !1801
  %101 = load i32, i32* %100, align 4, !dbg !1801, !tbaa !530
  %102 = icmp ult i32 %101, %86, !dbg !1804
  %103 = trunc i64 %85 to i8, !dbg !1805
  %104 = select i1 %102, i8 %87, i8 %103, !dbg !1805
  %105 = select i1 %102, i32 %86, i32 %101, !dbg !1805
  br label %106, !dbg !1805

; <label>:106:                                    ; preds = %99, %95, %84, %91
  %107 = phi i8 [ %87, %95 ], [ %87, %91 ], [ %87, %84 ], [ %104, %99 ], !dbg !1806
  %108 = phi i32 [ %86, %95 ], [ %86, %91 ], [ %86, %84 ], [ %105, %99 ], !dbg !1806
  %109 = add nuw nsw i64 %85, 1, !dbg !1807
  %110 = icmp eq i64 %109, 10, !dbg !1808
  br i1 %110, label %111, label %84, !dbg !1809, !llvm.loop !1810

; <label>:111:                                    ; preds = %106
  %112 = icmp sgt i8 %107, -1, !dbg !1812
  br i1 %112, label %127, label %113, !dbg !1814

; <label>:113:                                    ; preds = %111
  %114 = icmp eq i8 %1, 1, !dbg !1815
  %115 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 0, i32 5), align 1, !dbg !1820
  %116 = icmp eq i8 %115, 0, !dbg !1821
  %117 = and i1 %114, %116, !dbg !1822
  %118 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 0, i32 6, i32 0), align 4, !dbg !1823
  %119 = and i1 %114, %116, !dbg !1822
  %120 = xor i1 %119, true, !dbg !1822
  %121 = sext i1 %120 to i8, !dbg !1822
  %122 = select i1 %117, i32 %118, i32 0, !dbg !1822
  %123 = icmp eq i8 %4, 1, !dbg !1815
  %124 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 1, i32 5), align 1, !dbg !1820
  %125 = icmp eq i8 %124, 0, !dbg !1821
  %126 = and i1 %123, %125, !dbg !1822
  br i1 %126, label %166, label %171, !dbg !1822

; <label>:127:                                    ; preds = %111
  %128 = icmp ugt i8 %107, 9, !dbg !1829
  br i1 %128, label %164, label %129, !dbg !1829

; <label>:129:                                    ; preds = %127
  %130 = sext i8 %107 to i64, !dbg !1831
  %131 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %130, i32 5, !dbg !1832
  %132 = load i8, i8* %131, align 1, !dbg !1832, !tbaa !981
  %133 = icmp eq i8 %132, 0, !dbg !1831
  br i1 %133, label %134, label %164, !dbg !1833

; <label>:134:                                    ; preds = %129
  %135 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %130, i32 3, !dbg !1834
  %136 = load %struct.nd6_q_entry*, %struct.nd6_q_entry** %135, align 8, !dbg !1834, !tbaa !723
  %137 = icmp eq %struct.nd6_q_entry* %136, null, !dbg !1835
  br i1 %137, label %139, label %138, !dbg !1836

; <label>:138:                                    ; preds = %134
  tail call fastcc void @nd6_free_q(%struct.nd6_q_entry* nonnull %136) #8, !dbg !1837
  store %struct.nd6_q_entry* null, %struct.nd6_q_entry** %135, align 8, !dbg !1838, !tbaa !723
  br label %139, !dbg !1839

; <label>:139:                                    ; preds = %138, %134
  %140 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %130, i32 4, !dbg !1840
  store i8 0, i8* %140, align 8, !dbg !1841, !tbaa !687
  store i8 0, i8* %131, align 1, !dbg !1842, !tbaa !981
  %141 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %130, i32 1, !dbg !1843
  store %struct.netif* null, %struct.netif** %141, align 8, !dbg !1844, !tbaa !716
  %142 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %130, i32 6, i32 0, !dbg !1845
  store i32 0, i32* %142, align 4, !dbg !1846, !tbaa !530
  %143 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %130, i32 0, i32 0, i64 0, !dbg !1847
  %144 = bitcast i32* %143 to <4 x i32>*, !dbg !1847
  store <4 x i32> zeroinitializer, <4 x i32>* %144, align 8, !dbg !1847, !tbaa !547
  %145 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %130, i32 0, i32 1, !dbg !1847
  store i8 0, i8* %145, align 8, !dbg !1847, !tbaa !647
  br label %164, !dbg !1847

; <label>:146:                                    ; preds = %255, %265
  %147 = phi i8 [ %256, %265 ], [ 9, %255 ]
  %148 = sext i8 %147 to i64, !dbg !1852
  %149 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %148, i32 5, !dbg !1853
  %150 = load i8, i8* %149, align 1, !dbg !1853, !tbaa !981
  %151 = icmp eq i8 %150, 0, !dbg !1852
  br i1 %151, label %152, label %164, !dbg !1854

; <label>:152:                                    ; preds = %146
  %153 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %148, i32 3, !dbg !1855
  %154 = load %struct.nd6_q_entry*, %struct.nd6_q_entry** %153, align 8, !dbg !1855, !tbaa !723
  %155 = icmp eq %struct.nd6_q_entry* %154, null, !dbg !1856
  br i1 %155, label %157, label %156, !dbg !1857

; <label>:156:                                    ; preds = %152
  tail call fastcc void @nd6_free_q(%struct.nd6_q_entry* nonnull %154) #8, !dbg !1858
  store %struct.nd6_q_entry* null, %struct.nd6_q_entry** %153, align 8, !dbg !1859, !tbaa !723
  br label %157, !dbg !1860

; <label>:157:                                    ; preds = %156, %152
  %158 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %148, i32 4, !dbg !1861
  store i8 0, i8* %158, align 8, !dbg !1862, !tbaa !687
  store i8 0, i8* %149, align 1, !dbg !1863, !tbaa !981
  %159 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %148, i32 1, !dbg !1864
  store %struct.netif* null, %struct.netif** %159, align 8, !dbg !1865, !tbaa !716
  %160 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %148, i32 6, i32 0, !dbg !1866
  store i32 0, i32* %160, align 4, !dbg !1867, !tbaa !530
  %161 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %148, i32 0, i32 0, i64 0, !dbg !1868
  %162 = bitcast i32* %161 to <4 x i32>*, !dbg !1868
  store <4 x i32> zeroinitializer, <4 x i32>* %162, align 8, !dbg !1868, !tbaa !547
  %163 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %148, i32 0, i32 1, !dbg !1868
  store i8 0, i8* %163, align 8, !dbg !1868, !tbaa !647
  br label %164, !dbg !1868

; <label>:164:                                    ; preds = %0, %3, %514, %517, %520, %523, %526, %529, %532, %535, %157, %146, %139, %129, %127, %77, %66, %55, %35, %15, %265
  %165 = phi i8 [ -1, %265 ], [ %7, %15 ], [ %27, %35 ], [ %47, %55 ], [ %67, %66 ], [ %67, %77 ], [ %107, %127 ], [ %107, %129 ], [ %107, %139 ], [ %147, %146 ], [ %147, %157 ], [ 0, %0 ], [ 1, %3 ], [ 2, %514 ], [ 3, %517 ], [ 4, %520 ], [ 5, %523 ], [ 6, %526 ], [ 7, %529 ], [ 8, %532 ], [ 9, %535 ], !dbg !1806
  ret i8 %165, !dbg !1869

; <label>:166:                                    ; preds = %113
  %167 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 1, i32 6, i32 0), align 4, !dbg !1823, !tbaa !530
  %168 = icmp ult i32 %167, %122, !dbg !1870
  %169 = select i1 %168, i8 %121, i8 1, !dbg !1871
  %170 = select i1 %168, i32 %122, i32 %167, !dbg !1871
  br label %171, !dbg !1871

; <label>:171:                                    ; preds = %166, %113
  %172 = phi i8 [ %121, %113 ], [ %169, %166 ], !dbg !1806
  %173 = phi i32 [ %122, %113 ], [ %170, %166 ], !dbg !1806
  %174 = icmp eq i8 %515, 1, !dbg !1815
  %175 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 2, i32 5), align 1, !dbg !1820
  %176 = icmp eq i8 %175, 0, !dbg !1821
  %177 = and i1 %174, %176, !dbg !1822
  br i1 %177, label %178, label %183, !dbg !1822

; <label>:178:                                    ; preds = %171
  %179 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 2, i32 6, i32 0), align 4, !dbg !1823, !tbaa !530
  %180 = icmp ult i32 %179, %173, !dbg !1870
  %181 = select i1 %180, i8 %172, i8 2, !dbg !1871
  %182 = select i1 %180, i32 %173, i32 %179, !dbg !1871
  br label %183, !dbg !1871

; <label>:183:                                    ; preds = %178, %171
  %184 = phi i8 [ %172, %171 ], [ %181, %178 ], !dbg !1806
  %185 = phi i32 [ %173, %171 ], [ %182, %178 ], !dbg !1806
  %186 = icmp eq i8 %518, 1, !dbg !1815
  %187 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 3, i32 5), align 1, !dbg !1820
  %188 = icmp eq i8 %187, 0, !dbg !1821
  %189 = and i1 %186, %188, !dbg !1822
  br i1 %189, label %190, label %195, !dbg !1822

; <label>:190:                                    ; preds = %183
  %191 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 3, i32 6, i32 0), align 4, !dbg !1823, !tbaa !530
  %192 = icmp ult i32 %191, %185, !dbg !1870
  %193 = select i1 %192, i8 %184, i8 3, !dbg !1871
  %194 = select i1 %192, i32 %185, i32 %191, !dbg !1871
  br label %195, !dbg !1871

; <label>:195:                                    ; preds = %190, %183
  %196 = phi i8 [ %184, %183 ], [ %193, %190 ], !dbg !1806
  %197 = phi i32 [ %185, %183 ], [ %194, %190 ], !dbg !1806
  %198 = icmp eq i8 %521, 1, !dbg !1815
  %199 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 4, i32 5), align 1, !dbg !1820
  %200 = icmp eq i8 %199, 0, !dbg !1821
  %201 = and i1 %198, %200, !dbg !1822
  br i1 %201, label %202, label %207, !dbg !1822

; <label>:202:                                    ; preds = %195
  %203 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 4, i32 6, i32 0), align 4, !dbg !1823, !tbaa !530
  %204 = icmp ult i32 %203, %197, !dbg !1870
  %205 = select i1 %204, i8 %196, i8 4, !dbg !1871
  %206 = select i1 %204, i32 %197, i32 %203, !dbg !1871
  br label %207, !dbg !1871

; <label>:207:                                    ; preds = %202, %195
  %208 = phi i8 [ %196, %195 ], [ %205, %202 ], !dbg !1806
  %209 = phi i32 [ %197, %195 ], [ %206, %202 ], !dbg !1806
  %210 = icmp eq i8 %524, 1, !dbg !1815
  %211 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 5, i32 5), align 1, !dbg !1820
  %212 = icmp eq i8 %211, 0, !dbg !1821
  %213 = and i1 %210, %212, !dbg !1822
  br i1 %213, label %214, label %219, !dbg !1822

; <label>:214:                                    ; preds = %207
  %215 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 5, i32 6, i32 0), align 4, !dbg !1823, !tbaa !530
  %216 = icmp ult i32 %215, %209, !dbg !1870
  %217 = select i1 %216, i8 %208, i8 5, !dbg !1871
  %218 = select i1 %216, i32 %209, i32 %215, !dbg !1871
  br label %219, !dbg !1871

; <label>:219:                                    ; preds = %214, %207
  %220 = phi i8 [ %208, %207 ], [ %217, %214 ], !dbg !1806
  %221 = phi i32 [ %209, %207 ], [ %218, %214 ], !dbg !1806
  %222 = icmp eq i8 %527, 1, !dbg !1815
  %223 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 6, i32 5), align 1, !dbg !1820
  %224 = icmp eq i8 %223, 0, !dbg !1821
  %225 = and i1 %222, %224, !dbg !1822
  br i1 %225, label %226, label %231, !dbg !1822

; <label>:226:                                    ; preds = %219
  %227 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 6, i32 6, i32 0), align 4, !dbg !1823, !tbaa !530
  %228 = icmp ult i32 %227, %221, !dbg !1870
  %229 = select i1 %228, i8 %220, i8 6, !dbg !1871
  %230 = select i1 %228, i32 %221, i32 %227, !dbg !1871
  br label %231, !dbg !1871

; <label>:231:                                    ; preds = %226, %219
  %232 = phi i8 [ %220, %219 ], [ %229, %226 ], !dbg !1806
  %233 = phi i32 [ %221, %219 ], [ %230, %226 ], !dbg !1806
  %234 = icmp eq i8 %530, 1, !dbg !1815
  %235 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 7, i32 5), align 1, !dbg !1820
  %236 = icmp eq i8 %235, 0, !dbg !1821
  %237 = and i1 %234, %236, !dbg !1822
  br i1 %237, label %238, label %243, !dbg !1822

; <label>:238:                                    ; preds = %231
  %239 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 7, i32 6, i32 0), align 4, !dbg !1823, !tbaa !530
  %240 = icmp ult i32 %239, %233, !dbg !1870
  %241 = select i1 %240, i8 %232, i8 7, !dbg !1871
  %242 = select i1 %240, i32 %233, i32 %239, !dbg !1871
  br label %243, !dbg !1871

; <label>:243:                                    ; preds = %238, %231
  %244 = phi i8 [ %232, %231 ], [ %241, %238 ], !dbg !1806
  %245 = phi i32 [ %233, %231 ], [ %242, %238 ], !dbg !1806
  %246 = icmp eq i8 %533, 1, !dbg !1815
  %247 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 8, i32 5), align 1, !dbg !1820
  %248 = icmp eq i8 %247, 0, !dbg !1821
  %249 = and i1 %246, %248, !dbg !1822
  br i1 %249, label %250, label %255, !dbg !1822

; <label>:250:                                    ; preds = %243
  %251 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 8, i32 6, i32 0), align 4, !dbg !1823, !tbaa !530
  %252 = icmp ult i32 %251, %245, !dbg !1870
  %253 = select i1 %252, i8 %244, i8 8, !dbg !1871
  %254 = select i1 %252, i32 %245, i32 %251, !dbg !1871
  br label %255, !dbg !1871

; <label>:255:                                    ; preds = %250, %243
  %256 = phi i8 [ %244, %243 ], [ %253, %250 ], !dbg !1806
  %257 = phi i32 [ %245, %243 ], [ %254, %250 ], !dbg !1806
  %258 = icmp ne i8 %536, 1, !dbg !1815
  %259 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 9, i32 5), align 1, !dbg !1820
  %260 = icmp ne i8 %259, 0, !dbg !1821
  %261 = or i1 %260, %258, !dbg !1822
  %262 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 9, i32 6, i32 0), align 4, !dbg !1823
  %263 = icmp ult i32 %262, %257, !dbg !1870
  %264 = or i1 %261, %263, !dbg !1822
  br i1 %264, label %265, label %146, !dbg !1822

; <label>:265:                                    ; preds = %255
  %266 = icmp sgt i8 %256, -1, !dbg !1872
  br i1 %266, label %146, label %164, !dbg !1873

; <label>:267:                                    ; preds = %408
  %268 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 1, i32 6, i32 0), align 4, !dbg !1874, !tbaa !530
  %269 = icmp ult i32 %268, %419, !dbg !1881
  %270 = select i1 %269, i8 1, i8 %418, !dbg !1882
  %271 = select i1 %269, i32 %268, i32 %419, !dbg !1882
  br label %272, !dbg !1882

; <label>:272:                                    ; preds = %267, %408
  %273 = phi i8 [ %418, %408 ], [ %270, %267 ], !dbg !1806
  %274 = phi i32 [ %419, %408 ], [ %271, %267 ], !dbg !1806
  %275 = icmp eq i8 %515, 2, !dbg !1883
  %276 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 2, i32 5), align 1, !dbg !1884
  %277 = icmp eq i8 %276, 0, !dbg !1885
  %278 = and i1 %275, %277, !dbg !1886
  br i1 %278, label %279, label %284, !dbg !1886

; <label>:279:                                    ; preds = %272
  %280 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 2, i32 6, i32 0), align 4, !dbg !1874, !tbaa !530
  %281 = icmp ult i32 %280, %274, !dbg !1881
  %282 = select i1 %281, i8 2, i8 %273, !dbg !1882
  %283 = select i1 %281, i32 %280, i32 %274, !dbg !1882
  br label %284, !dbg !1882

; <label>:284:                                    ; preds = %279, %272
  %285 = phi i8 [ %273, %272 ], [ %282, %279 ], !dbg !1806
  %286 = phi i32 [ %274, %272 ], [ %283, %279 ], !dbg !1806
  %287 = icmp eq i8 %518, 2, !dbg !1883
  %288 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 3, i32 5), align 1, !dbg !1884
  %289 = icmp eq i8 %288, 0, !dbg !1885
  %290 = and i1 %287, %289, !dbg !1886
  br i1 %290, label %291, label %296, !dbg !1886

; <label>:291:                                    ; preds = %284
  %292 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 3, i32 6, i32 0), align 4, !dbg !1874, !tbaa !530
  %293 = icmp ult i32 %292, %286, !dbg !1881
  %294 = select i1 %293, i8 3, i8 %285, !dbg !1882
  %295 = select i1 %293, i32 %292, i32 %286, !dbg !1882
  br label %296, !dbg !1882

; <label>:296:                                    ; preds = %291, %284
  %297 = phi i8 [ %285, %284 ], [ %294, %291 ], !dbg !1806
  %298 = phi i32 [ %286, %284 ], [ %295, %291 ], !dbg !1806
  %299 = icmp eq i8 %521, 2, !dbg !1883
  %300 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 4, i32 5), align 1, !dbg !1884
  %301 = icmp eq i8 %300, 0, !dbg !1885
  %302 = and i1 %299, %301, !dbg !1886
  br i1 %302, label %303, label %308, !dbg !1886

; <label>:303:                                    ; preds = %296
  %304 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 4, i32 6, i32 0), align 4, !dbg !1874, !tbaa !530
  %305 = icmp ult i32 %304, %298, !dbg !1881
  %306 = select i1 %305, i8 4, i8 %297, !dbg !1882
  %307 = select i1 %305, i32 %304, i32 %298, !dbg !1882
  br label %308, !dbg !1882

; <label>:308:                                    ; preds = %303, %296
  %309 = phi i8 [ %297, %296 ], [ %306, %303 ], !dbg !1806
  %310 = phi i32 [ %298, %296 ], [ %307, %303 ], !dbg !1806
  %311 = icmp eq i8 %524, 2, !dbg !1883
  %312 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 5, i32 5), align 1, !dbg !1884
  %313 = icmp eq i8 %312, 0, !dbg !1885
  %314 = and i1 %311, %313, !dbg !1886
  br i1 %314, label %315, label %320, !dbg !1886

; <label>:315:                                    ; preds = %308
  %316 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 5, i32 6, i32 0), align 4, !dbg !1874, !tbaa !530
  %317 = icmp ult i32 %316, %310, !dbg !1881
  %318 = select i1 %317, i8 5, i8 %309, !dbg !1882
  %319 = select i1 %317, i32 %316, i32 %310, !dbg !1882
  br label %320, !dbg !1882

; <label>:320:                                    ; preds = %315, %308
  %321 = phi i8 [ %309, %308 ], [ %318, %315 ], !dbg !1806
  %322 = phi i32 [ %310, %308 ], [ %319, %315 ], !dbg !1806
  %323 = icmp eq i8 %527, 2, !dbg !1883
  %324 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 6, i32 5), align 1, !dbg !1884
  %325 = icmp eq i8 %324, 0, !dbg !1885
  %326 = and i1 %323, %325, !dbg !1886
  br i1 %326, label %327, label %332, !dbg !1886

; <label>:327:                                    ; preds = %320
  %328 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 6, i32 6, i32 0), align 4, !dbg !1874, !tbaa !530
  %329 = icmp ult i32 %328, %322, !dbg !1881
  %330 = select i1 %329, i8 6, i8 %321, !dbg !1882
  %331 = select i1 %329, i32 %328, i32 %322, !dbg !1882
  br label %332, !dbg !1882

; <label>:332:                                    ; preds = %327, %320
  %333 = phi i8 [ %321, %320 ], [ %330, %327 ], !dbg !1806
  %334 = phi i32 [ %322, %320 ], [ %331, %327 ], !dbg !1806
  %335 = icmp eq i8 %530, 2, !dbg !1883
  %336 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 7, i32 5), align 1, !dbg !1884
  %337 = icmp eq i8 %336, 0, !dbg !1885
  %338 = and i1 %335, %337, !dbg !1886
  br i1 %338, label %339, label %344, !dbg !1886

; <label>:339:                                    ; preds = %332
  %340 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 7, i32 6, i32 0), align 4, !dbg !1874, !tbaa !530
  %341 = icmp ult i32 %340, %334, !dbg !1881
  %342 = select i1 %341, i8 7, i8 %333, !dbg !1882
  %343 = select i1 %341, i32 %340, i32 %334, !dbg !1882
  br label %344, !dbg !1882

; <label>:344:                                    ; preds = %339, %332
  %345 = phi i8 [ %333, %332 ], [ %342, %339 ], !dbg !1806
  %346 = phi i32 [ %334, %332 ], [ %343, %339 ], !dbg !1806
  %347 = icmp eq i8 %533, 2, !dbg !1883
  %348 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 8, i32 5), align 1, !dbg !1884
  %349 = icmp eq i8 %348, 0, !dbg !1885
  %350 = and i1 %347, %349, !dbg !1886
  br i1 %350, label %351, label %356, !dbg !1886

; <label>:351:                                    ; preds = %344
  %352 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 8, i32 6, i32 0), align 4, !dbg !1874, !tbaa !530
  %353 = icmp ult i32 %352, %346, !dbg !1881
  %354 = select i1 %353, i8 8, i8 %345, !dbg !1882
  %355 = select i1 %353, i32 %352, i32 %346, !dbg !1882
  br label %356, !dbg !1882

; <label>:356:                                    ; preds = %351, %344
  %357 = phi i8 [ %345, %344 ], [ %354, %351 ], !dbg !1806
  %358 = phi i32 [ %346, %344 ], [ %355, %351 ], !dbg !1806
  %359 = icmp eq i8 %536, 2, !dbg !1883
  %360 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 9, i32 5), align 1, !dbg !1884
  %361 = icmp eq i8 %360, 0, !dbg !1885
  %362 = and i1 %359, %361, !dbg !1886
  %363 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 9, i32 6, i32 0), align 4, !dbg !1874
  %364 = icmp ult i32 %363, %358, !dbg !1881
  %365 = and i1 %362, %364, !dbg !1886
  br i1 %365, label %66, label %366, !dbg !1886

; <label>:366:                                    ; preds = %356
  %367 = icmp sgt i8 %357, -1, !dbg !1887
  br i1 %367, label %66, label %84, !dbg !1888

; <label>:368:                                    ; preds = %61
  %369 = icmp eq i8 %515, 4, !dbg !1761
  %370 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 2, i32 5), align 1, !dbg !1744
  %371 = icmp eq i8 %370, 0, !dbg !1762
  %372 = and i1 %369, %371, !dbg !1763
  br i1 %372, label %46, label %373, !dbg !1763

; <label>:373:                                    ; preds = %368
  %374 = icmp eq i8 %518, 4, !dbg !1761
  %375 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 3, i32 5), align 1, !dbg !1744
  %376 = icmp eq i8 %375, 0, !dbg !1762
  %377 = and i1 %374, %376, !dbg !1763
  br i1 %377, label %46, label %378, !dbg !1763

; <label>:378:                                    ; preds = %373
  %379 = icmp eq i8 %521, 4, !dbg !1761
  %380 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 4, i32 5), align 1, !dbg !1744
  %381 = icmp eq i8 %380, 0, !dbg !1762
  %382 = and i1 %379, %381, !dbg !1763
  br i1 %382, label %46, label %383, !dbg !1763

; <label>:383:                                    ; preds = %378
  %384 = icmp eq i8 %524, 4, !dbg !1761
  %385 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 5, i32 5), align 1, !dbg !1744
  %386 = icmp eq i8 %385, 0, !dbg !1762
  %387 = and i1 %384, %386, !dbg !1763
  br i1 %387, label %46, label %388, !dbg !1763

; <label>:388:                                    ; preds = %383
  %389 = icmp eq i8 %527, 4, !dbg !1761
  %390 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 6, i32 5), align 1, !dbg !1744
  %391 = icmp eq i8 %390, 0, !dbg !1762
  %392 = and i1 %389, %391, !dbg !1763
  br i1 %392, label %46, label %393, !dbg !1763

; <label>:393:                                    ; preds = %388
  %394 = icmp eq i8 %530, 4, !dbg !1761
  %395 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 7, i32 5), align 1, !dbg !1744
  %396 = icmp eq i8 %395, 0, !dbg !1762
  %397 = and i1 %394, %396, !dbg !1763
  br i1 %397, label %46, label %398, !dbg !1763

; <label>:398:                                    ; preds = %393
  %399 = icmp eq i8 %533, 4, !dbg !1761
  %400 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 8, i32 5), align 1, !dbg !1744
  %401 = icmp eq i8 %400, 0, !dbg !1762
  %402 = and i1 %399, %401, !dbg !1763
  br i1 %402, label %46, label %403, !dbg !1763

; <label>:403:                                    ; preds = %398
  %404 = icmp eq i8 %536, 4, !dbg !1761
  %405 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 9, i32 5), align 1, !dbg !1744
  %406 = icmp eq i8 %405, 0, !dbg !1762
  %407 = and i1 %404, %406, !dbg !1763
  br i1 %407, label %46, label %408, !dbg !1763

; <label>:408:                                    ; preds = %403
  %409 = icmp eq i8 %1, 2, !dbg !1883
  %410 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 0, i32 5), align 1, !dbg !1884
  %411 = icmp eq i8 %410, 0, !dbg !1885
  %412 = and i1 %409, %411, !dbg !1886
  %413 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 0, i32 6, i32 0), align 4, !dbg !1874
  %414 = icmp eq i32 %413, -1, !dbg !1881
  %415 = and i1 %409, %411, !dbg !1886
  %416 = xor i1 %415, true, !dbg !1886
  %417 = or i1 %414, %416, !dbg !1886
  %418 = sext i1 %417 to i8, !dbg !1886
  %419 = select i1 %412, i32 %413, i32 -1, !dbg !1886
  %420 = icmp eq i8 %4, 2, !dbg !1883
  %421 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 1, i32 5), align 1, !dbg !1884
  %422 = icmp eq i8 %421, 0, !dbg !1885
  %423 = and i1 %420, %422, !dbg !1886
  br i1 %423, label %267, label %272, !dbg !1886

; <label>:424:                                    ; preds = %41
  %425 = icmp eq i8 %515, 5, !dbg !1735
  %426 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 2, i32 5), align 1, !dbg !1718
  %427 = icmp eq i8 %426, 0, !dbg !1736
  %428 = and i1 %425, %427, !dbg !1737
  br i1 %428, label %26, label %429, !dbg !1737

; <label>:429:                                    ; preds = %424
  %430 = icmp eq i8 %518, 5, !dbg !1735
  %431 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 3, i32 5), align 1, !dbg !1718
  %432 = icmp eq i8 %431, 0, !dbg !1736
  %433 = and i1 %430, %432, !dbg !1737
  br i1 %433, label %26, label %434, !dbg !1737

; <label>:434:                                    ; preds = %429
  %435 = icmp eq i8 %521, 5, !dbg !1735
  %436 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 4, i32 5), align 1, !dbg !1718
  %437 = icmp eq i8 %436, 0, !dbg !1736
  %438 = and i1 %435, %437, !dbg !1737
  br i1 %438, label %26, label %439, !dbg !1737

; <label>:439:                                    ; preds = %434
  %440 = icmp eq i8 %524, 5, !dbg !1735
  %441 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 5, i32 5), align 1, !dbg !1718
  %442 = icmp eq i8 %441, 0, !dbg !1736
  %443 = and i1 %440, %442, !dbg !1737
  br i1 %443, label %26, label %444, !dbg !1737

; <label>:444:                                    ; preds = %439
  %445 = icmp eq i8 %527, 5, !dbg !1735
  %446 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 6, i32 5), align 1, !dbg !1718
  %447 = icmp eq i8 %446, 0, !dbg !1736
  %448 = and i1 %445, %447, !dbg !1737
  br i1 %448, label %26, label %449, !dbg !1737

; <label>:449:                                    ; preds = %444
  %450 = icmp eq i8 %530, 5, !dbg !1735
  %451 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 7, i32 5), align 1, !dbg !1718
  %452 = icmp eq i8 %451, 0, !dbg !1736
  %453 = and i1 %450, %452, !dbg !1737
  br i1 %453, label %26, label %454, !dbg !1737

; <label>:454:                                    ; preds = %449
  %455 = icmp eq i8 %533, 5, !dbg !1735
  %456 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 8, i32 5), align 1, !dbg !1718
  %457 = icmp eq i8 %456, 0, !dbg !1736
  %458 = and i1 %455, %457, !dbg !1737
  br i1 %458, label %26, label %459, !dbg !1737

; <label>:459:                                    ; preds = %454
  %460 = icmp eq i8 %536, 5, !dbg !1735
  %461 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 9, i32 5), align 1, !dbg !1718
  %462 = icmp eq i8 %461, 0, !dbg !1736
  %463 = and i1 %460, %462, !dbg !1737
  br i1 %463, label %26, label %464, !dbg !1737

; <label>:464:                                    ; preds = %459
  %465 = icmp eq i8 %1, 4, !dbg !1761
  %466 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 0, i32 5), align 1, !dbg !1744
  %467 = icmp eq i8 %466, 0, !dbg !1762
  %468 = and i1 %465, %467, !dbg !1763
  br i1 %468, label %46, label %61, !dbg !1763

; <label>:469:                                    ; preds = %21
  %470 = icmp eq i8 %515, 3, !dbg !1709
  %471 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 2, i32 5), align 1, !dbg !1686
  %472 = icmp eq i8 %471, 0, !dbg !1710
  %473 = and i1 %470, %472, !dbg !1711
  br i1 %473, label %6, label %474, !dbg !1711

; <label>:474:                                    ; preds = %469
  %475 = icmp eq i8 %518, 3, !dbg !1709
  %476 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 3, i32 5), align 1, !dbg !1686
  %477 = icmp eq i8 %476, 0, !dbg !1710
  %478 = and i1 %475, %477, !dbg !1711
  br i1 %478, label %6, label %479, !dbg !1711

; <label>:479:                                    ; preds = %474
  %480 = icmp eq i8 %521, 3, !dbg !1709
  %481 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 4, i32 5), align 1, !dbg !1686
  %482 = icmp eq i8 %481, 0, !dbg !1710
  %483 = and i1 %480, %482, !dbg !1711
  br i1 %483, label %6, label %484, !dbg !1711

; <label>:484:                                    ; preds = %479
  %485 = icmp eq i8 %524, 3, !dbg !1709
  %486 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 5, i32 5), align 1, !dbg !1686
  %487 = icmp eq i8 %486, 0, !dbg !1710
  %488 = and i1 %485, %487, !dbg !1711
  br i1 %488, label %6, label %489, !dbg !1711

; <label>:489:                                    ; preds = %484
  %490 = icmp eq i8 %527, 3, !dbg !1709
  %491 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 6, i32 5), align 1, !dbg !1686
  %492 = icmp eq i8 %491, 0, !dbg !1710
  %493 = and i1 %490, %492, !dbg !1711
  br i1 %493, label %6, label %494, !dbg !1711

; <label>:494:                                    ; preds = %489
  %495 = icmp eq i8 %530, 3, !dbg !1709
  %496 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 7, i32 5), align 1, !dbg !1686
  %497 = icmp eq i8 %496, 0, !dbg !1710
  %498 = and i1 %495, %497, !dbg !1711
  br i1 %498, label %6, label %499, !dbg !1711

; <label>:499:                                    ; preds = %494
  %500 = icmp eq i8 %533, 3, !dbg !1709
  %501 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 8, i32 5), align 1, !dbg !1686
  %502 = icmp eq i8 %501, 0, !dbg !1710
  %503 = and i1 %500, %502, !dbg !1711
  br i1 %503, label %6, label %504, !dbg !1711

; <label>:504:                                    ; preds = %499
  %505 = icmp eq i8 %536, 3, !dbg !1709
  %506 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 9, i32 5), align 1, !dbg !1686
  %507 = icmp eq i8 %506, 0, !dbg !1710
  %508 = and i1 %505, %507, !dbg !1711
  br i1 %508, label %6, label %509, !dbg !1711

; <label>:509:                                    ; preds = %504
  %510 = icmp eq i8 %1, 5, !dbg !1735
  %511 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 0, i32 5), align 1, !dbg !1718
  %512 = icmp eq i8 %511, 0, !dbg !1736
  %513 = and i1 %510, %512, !dbg !1737
  br i1 %513, label %26, label %41, !dbg !1737

; <label>:514:                                    ; preds = %3
  %515 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 2, i32 4), align 16, !dbg !1673, !tbaa !687
  %516 = icmp eq i8 %515, 0, !dbg !1678
  br i1 %516, label %164, label %517, !dbg !1679

; <label>:517:                                    ; preds = %514
  %518 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 3, i32 4), align 8, !dbg !1673, !tbaa !687
  %519 = icmp eq i8 %518, 0, !dbg !1678
  br i1 %519, label %164, label %520, !dbg !1679

; <label>:520:                                    ; preds = %517
  %521 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 4, i32 4), align 16, !dbg !1673, !tbaa !687
  %522 = icmp eq i8 %521, 0, !dbg !1678
  br i1 %522, label %164, label %523, !dbg !1679

; <label>:523:                                    ; preds = %520
  %524 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 5, i32 4), align 8, !dbg !1673, !tbaa !687
  %525 = icmp eq i8 %524, 0, !dbg !1678
  br i1 %525, label %164, label %526, !dbg !1679

; <label>:526:                                    ; preds = %523
  %527 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 6, i32 4), align 16, !dbg !1673, !tbaa !687
  %528 = icmp eq i8 %527, 0, !dbg !1678
  br i1 %528, label %164, label %529, !dbg !1679

; <label>:529:                                    ; preds = %526
  %530 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 7, i32 4), align 8, !dbg !1673, !tbaa !687
  %531 = icmp eq i8 %530, 0, !dbg !1678
  br i1 %531, label %164, label %532, !dbg !1679

; <label>:532:                                    ; preds = %529
  %533 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 8, i32 4), align 16, !dbg !1673, !tbaa !687
  %534 = icmp eq i8 %533, 0, !dbg !1678
  br i1 %534, label %164, label %535, !dbg !1679

; <label>:535:                                    ; preds = %532
  %536 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 9, i32 4), align 8, !dbg !1673, !tbaa !687
  %537 = icmp eq i8 %536, 0, !dbg !1678
  br i1 %537, label %164, label %538, !dbg !1679

; <label>:538:                                    ; preds = %535
  %539 = icmp eq i8 %1, 3, !dbg !1709
  %540 = load i8, i8* getelementptr inbounds ([10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 0, i32 5), align 1, !dbg !1686
  %541 = icmp eq i8 %540, 0, !dbg !1710
  %542 = and i1 %539, %541, !dbg !1711
  br i1 %542, label %6, label %21, !dbg !1711
}

; Function Attrs: noredzone nounwind
define internal fastcc signext i8 @nd6_send_rs(%struct.netif*) unnamed_addr #0 !dbg !1889 {
  %2 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 0, !dbg !1902
  %3 = load i8, i8* %2, align 8, !dbg !1902, !tbaa !530
  %4 = and i8 %3, 16, !dbg !1902
  %5 = icmp eq i8 %4, 0, !dbg !1902
  %6 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, !dbg !1904
  %7 = select i1 %5, %struct.ip6_addr* getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip6_addr_any, i64 0, i32 0, i32 0), %struct.ip6_addr* %6, !dbg !1907
  store <4 x i32> <i32 767, i32 0, i32 0, i32 33554432>, <4 x i32>* bitcast (%struct.ip6_addr* @multicast_address to <4 x i32>*), align 16, !dbg !1908, !tbaa !547
  %8 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 23, !dbg !1910
  %9 = load i8, i8* %8, align 8, !dbg !1910, !tbaa !550
  %10 = add i8 %9, 1, !dbg !1910
  store i8 %10, i8* getelementptr inbounds (%struct.ip6_addr, %struct.ip6_addr* @multicast_address, i64 0, i32 1), align 16, !dbg !1910, !tbaa !742
  %11 = icmp ne %struct.ip6_addr* %7, getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip6_addr_any, i64 0, i32 0, i32 0), !dbg !1911
  br i1 %11, label %12, label %23, !dbg !1913

; <label>:12:                                     ; preds = %1
  %13 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 20, !dbg !1914
  %14 = load i8, i8* %13, align 4, !dbg !1914, !tbaa !666
  %15 = zext i8 %14 to i16, !dbg !1916
  %16 = add nuw nsw i16 %15, 2, !dbg !1917
  %17 = lshr i16 %16, 3, !dbg !1918
  %18 = add i8 %14, 2, !dbg !1919
  %19 = and i8 %18, 7, !dbg !1919
  %20 = icmp ne i8 %19, 0, !dbg !1920
  %21 = zext i1 %20 to i16, !dbg !1920
  %22 = add nuw nsw i16 %17, %21, !dbg !1921
  br label %23, !dbg !1922

; <label>:23:                                     ; preds = %12, %1
  %24 = phi i16 [ %22, %12 ], [ 0, %1 ], !dbg !1923
  %25 = shl nsw i16 %24, 3, !dbg !1924
  %26 = add nsw i16 %25, 8, !dbg !1925
  %27 = tail call %struct.pbuf* @pbuf_alloc(i32 54, i16 zeroext %26, i32 640) #8, !dbg !1926
  %28 = icmp eq %struct.pbuf* %27, null, !dbg !1928
  br i1 %28, label %29, label %32, !dbg !1930

; <label>:29:                                     ; preds = %23
  %30 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 6), align 2, !dbg !1931, !tbaa !856
  %31 = add i16 %30, 1, !dbg !1931
  store i16 %31, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 6), align 2, !dbg !1931, !tbaa !856
  br label %67, !dbg !1933

; <label>:32:                                     ; preds = %23
  %33 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %27, i64 0, i32 1, !dbg !1934
  %34 = bitcast i8** %33 to %struct.rs_header**, !dbg !1934
  %35 = load %struct.rs_header*, %struct.rs_header** %34, align 8, !dbg !1934, !tbaa !526
  %36 = getelementptr inbounds %struct.rs_header, %struct.rs_header* %35, i64 0, i32 0, !dbg !1936
  store i8 -123, i8* %36, align 1, !dbg !1937, !tbaa !1938
  %37 = getelementptr inbounds %struct.rs_header, %struct.rs_header* %35, i64 0, i32 1, !dbg !1940
  store i8 0, i8* %37, align 1, !dbg !1941, !tbaa !1942
  %38 = getelementptr inbounds %struct.rs_header, %struct.rs_header* %35, i64 0, i32 2, !dbg !1943
  store i16 0, i16* %38, align 1, !dbg !1944, !tbaa !1945
  %39 = getelementptr inbounds %struct.rs_header, %struct.rs_header* %35, i64 0, i32 3, !dbg !1946
  store i32 0, i32* %39, align 1, !dbg !1947, !tbaa !1948
  %40 = getelementptr inbounds %struct.rs_header, %struct.rs_header* %35, i64 0, i32 0, !dbg !1949
  br i1 %11, label %41, label %51, !dbg !1949

; <label>:41:                                     ; preds = %32
  %42 = getelementptr inbounds %struct.rs_header, %struct.rs_header* %35, i64 1, i32 0, !dbg !1950
  store i8 1, i8* %42, align 1, !dbg !1954, !tbaa !1424
  %43 = trunc i16 %24 to i8, !dbg !1955
  %44 = getelementptr inbounds i8, i8* %40, i64 9, !dbg !1956
  store i8 %43, i8* %44, align 1, !dbg !1957, !tbaa !623
  %45 = getelementptr inbounds i8, i8* %40, i64 10, !dbg !1958
  %46 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 0, !dbg !1958
  %47 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 20, !dbg !1958
  %48 = load i8, i8* %47, align 4, !dbg !1958, !tbaa !666
  %49 = zext i8 %48 to i64, !dbg !1958
  %50 = tail call i8* @memcpy(i8* nonnull %45, i8* nonnull %46, i64 %49) #8, !dbg !1958
  br label %51, !dbg !1959

; <label>:51:                                     ; preds = %32, %41
  %52 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 16, !dbg !1960
  %53 = load i16, i16* %52, align 8, !dbg !1960, !tbaa !1653
  %54 = and i16 %53, 16, !dbg !1960
  %55 = icmp eq i16 %54, 0, !dbg !1960
  br i1 %55, label %60, label %56, !dbg !1962

; <label>:56:                                     ; preds = %51
  %57 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %27, i64 0, i32 3, !dbg !1963
  %58 = load i16, i16* %57, align 2, !dbg !1963, !tbaa !535
  %59 = tail call zeroext i16 @ip6_chksum_pseudo(%struct.pbuf* nonnull %27, i8 zeroext 58, i16 zeroext %58, %struct.ip6_addr* %7, %struct.ip6_addr* nonnull @multicast_address) #8, !dbg !1965
  store i16 %59, i16* %38, align 1, !dbg !1966, !tbaa !1945
  br label %60, !dbg !1967

; <label>:60:                                     ; preds = %51, %56
  %61 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 0), align 2, !dbg !1968, !tbaa !1661
  %62 = add i16 %61, 1, !dbg !1968
  store i16 %62, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 0), align 2, !dbg !1968, !tbaa !1661
  %63 = icmp eq %struct.ip6_addr* %7, getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip6_addr_any, i64 0, i32 0, i32 0), !dbg !1969
  %64 = select i1 %63, %struct.ip6_addr* null, %struct.ip6_addr* %7, !dbg !1970
  %65 = tail call signext i8 @ip6_output_if(%struct.pbuf* nonnull %27, %struct.ip6_addr* %64, %struct.ip6_addr* nonnull @multicast_address, i8 zeroext -1, i8 zeroext 0, i8 zeroext 58, %struct.netif* nonnull %0) #8, !dbg !1971
  %66 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %27) #8, !dbg !1973
  br label %67, !dbg !1974

; <label>:67:                                     ; preds = %60, %29
  %68 = phi i8 [ -2, %29 ], [ %65, %60 ], !dbg !1923
  ret i8 %68, !dbg !1975
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
define dso_local void @nd6_tmr() local_unnamed_addr #0 !dbg !1976 {
  br label %1, !dbg !2001

; <label>:1:                                      ; preds = %76, %0
  %2 = phi i64 [ 0, %0 ], [ %77, %76 ]
  %3 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %2, !dbg !2003
  %4 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %2, i32 4, !dbg !2006
  %5 = load i8, i8* %4, align 8, !dbg !2006, !tbaa !687
  switch i8 %5, label %76 [
    i8 1, label %6
    i8 2, label %29
    i8 3, label %42
    i8 4, label %46
    i8 5, label %53
  ], !dbg !2007

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %2, i32 6, i32 0, !dbg !2008
  %8 = load i32, i32* %7, align 4, !dbg !2008, !tbaa !530
  %9 = icmp ugt i32 %8, 2, !dbg !2011
  br i1 %9, label %10, label %24, !dbg !2012

; <label>:10:                                     ; preds = %6
  %11 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %2, i32 5, !dbg !2013
  %12 = load i8, i8* %11, align 1, !dbg !2013, !tbaa !981
  %13 = icmp eq i8 %12, 0, !dbg !2014
  br i1 %13, label %14, label %24, !dbg !2015

; <label>:14:                                     ; preds = %10
  %15 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %2, i32 3, !dbg !2019
  %16 = load %struct.nd6_q_entry*, %struct.nd6_q_entry** %15, align 8, !dbg !2019, !tbaa !723
  %17 = icmp eq %struct.nd6_q_entry* %16, null, !dbg !2020
  br i1 %17, label %19, label %18, !dbg !2021

; <label>:18:                                     ; preds = %14
  tail call fastcc void @nd6_free_q(%struct.nd6_q_entry* nonnull %16) #8, !dbg !2022
  store %struct.nd6_q_entry* null, %struct.nd6_q_entry** %15, align 8, !dbg !2023, !tbaa !723
  br label %19, !dbg !2024

; <label>:19:                                     ; preds = %18, %14
  store i8 0, i8* %4, align 8, !dbg !2025, !tbaa !687
  store i8 0, i8* %11, align 1, !dbg !2026, !tbaa !981
  %20 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %2, i32 1, !dbg !2027
  store %struct.netif* null, %struct.netif** %20, align 8, !dbg !2028, !tbaa !716
  store i32 0, i32* %7, align 4, !dbg !2029, !tbaa !530
  %21 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %2, i32 0, i32 0, i64 0, !dbg !2030
  %22 = bitcast i32* %21 to <4 x i32>*, !dbg !2030
  store <4 x i32> zeroinitializer, <4 x i32>* %22, align 8, !dbg !2030, !tbaa !547
  %23 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %2, i32 0, i32 1, !dbg !2030
  store i8 0, i8* %23, align 8, !dbg !2030, !tbaa !647
  br label %76, !dbg !2030

; <label>:24:                                     ; preds = %10, %6
  %25 = add i32 %8, 1, !dbg !2031
  store i32 %25, i32* %7, align 4, !dbg !2031, !tbaa !530
  %26 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %2, i32 1, !dbg !2036
  %27 = load %struct.netif*, %struct.netif** %26, align 8, !dbg !2036, !tbaa !716
  %28 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %3, i64 0, i32 0, !dbg !2037
  tail call fastcc void @nd6_send_ns(%struct.netif* %27, %struct.ip6_addr* nonnull %28, i8 zeroext 1) #8, !dbg !2038
  br label %76

; <label>:29:                                     ; preds = %1
  %30 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %2, i32 3, !dbg !2039
  %31 = load %struct.nd6_q_entry*, %struct.nd6_q_entry** %30, align 8, !dbg !2039, !tbaa !723
  %32 = icmp eq %struct.nd6_q_entry* %31, null, !dbg !2041
  br i1 %32, label %35, label %33, !dbg !2042

; <label>:33:                                     ; preds = %29
  %34 = trunc i64 %2 to i8, !dbg !2043
  tail call fastcc void @nd6_send_q(i8 signext %34) #9, !dbg !2043
  br label %35, !dbg !2045

; <label>:35:                                     ; preds = %29, %33
  %36 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %2, i32 6, i32 0, !dbg !2046
  %37 = load i32, i32* %36, align 4, !dbg !2046, !tbaa !530
  %38 = icmp ult i32 %37, 1001, !dbg !2048
  br i1 %38, label %39, label %40, !dbg !2049

; <label>:39:                                     ; preds = %35
  store i8 3, i8* %4, align 8, !dbg !2050, !tbaa !687
  store i32 0, i32* %36, align 4, !dbg !2052, !tbaa !530
  br label %76, !dbg !2053

; <label>:40:                                     ; preds = %35
  %41 = add i32 %37, -1000, !dbg !2054
  store i32 %41, i32* %36, align 4, !dbg !2054, !tbaa !530
  br label %76

; <label>:42:                                     ; preds = %1
  %43 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %2, i32 6, i32 0, !dbg !2056
  %44 = load i32, i32* %43, align 4, !dbg !2057, !tbaa !530
  %45 = add i32 %44, 1, !dbg !2057
  store i32 %45, i32* %43, align 4, !dbg !2057, !tbaa !530
  br label %76, !dbg !2058

; <label>:46:                                     ; preds = %1
  %47 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %2, i32 6, i32 0, !dbg !2059
  %48 = load i32, i32* %47, align 4, !dbg !2059, !tbaa !530
  %49 = icmp ult i32 %48, 2, !dbg !2061
  br i1 %49, label %50, label %51, !dbg !2062

; <label>:50:                                     ; preds = %46
  store i8 5, i8* %4, align 8, !dbg !2063, !tbaa !687
  store i32 0, i32* %47, align 4, !dbg !2065, !tbaa !530
  br label %76, !dbg !2066

; <label>:51:                                     ; preds = %46
  %52 = add i32 %48, -1, !dbg !2067
  store i32 %52, i32* %47, align 4, !dbg !2067, !tbaa !530
  br label %76

; <label>:53:                                     ; preds = %1
  %54 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %2, i32 6, i32 0, !dbg !2069
  %55 = load i32, i32* %54, align 4, !dbg !2069, !tbaa !530
  %56 = icmp ugt i32 %55, 2, !dbg !2071
  br i1 %56, label %57, label %71, !dbg !2072

; <label>:57:                                     ; preds = %53
  %58 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %2, i32 5, !dbg !2073
  %59 = load i8, i8* %58, align 1, !dbg !2073, !tbaa !981
  %60 = icmp eq i8 %59, 0, !dbg !2074
  br i1 %60, label %61, label %71, !dbg !2075

; <label>:61:                                     ; preds = %57
  %62 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %2, i32 3, !dbg !2079
  %63 = load %struct.nd6_q_entry*, %struct.nd6_q_entry** %62, align 8, !dbg !2079, !tbaa !723
  %64 = icmp eq %struct.nd6_q_entry* %63, null, !dbg !2080
  br i1 %64, label %66, label %65, !dbg !2081

; <label>:65:                                     ; preds = %61
  tail call fastcc void @nd6_free_q(%struct.nd6_q_entry* nonnull %63) #8, !dbg !2082
  store %struct.nd6_q_entry* null, %struct.nd6_q_entry** %62, align 8, !dbg !2083, !tbaa !723
  br label %66, !dbg !2084

; <label>:66:                                     ; preds = %65, %61
  store i8 0, i8* %4, align 8, !dbg !2085, !tbaa !687
  store i8 0, i8* %58, align 1, !dbg !2086, !tbaa !981
  %67 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %2, i32 1, !dbg !2087
  store %struct.netif* null, %struct.netif** %67, align 8, !dbg !2088, !tbaa !716
  store i32 0, i32* %54, align 4, !dbg !2089, !tbaa !530
  %68 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %2, i32 0, i32 0, i64 0, !dbg !2090
  %69 = bitcast i32* %68 to <4 x i32>*, !dbg !2090
  store <4 x i32> zeroinitializer, <4 x i32>* %69, align 8, !dbg !2090, !tbaa !547
  %70 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %2, i32 0, i32 1, !dbg !2090
  store i8 0, i8* %70, align 8, !dbg !2090, !tbaa !647
  br label %76, !dbg !2090

; <label>:71:                                     ; preds = %57, %53
  %72 = add i32 %55, 1, !dbg !2091
  store i32 %72, i32* %54, align 4, !dbg !2091, !tbaa !530
  %73 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %2, i32 1, !dbg !2096
  %74 = load %struct.netif*, %struct.netif** %73, align 8, !dbg !2096, !tbaa !716
  %75 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %3, i64 0, i32 0, !dbg !2097
  tail call fastcc void @nd6_send_ns(%struct.netif* %74, %struct.ip6_addr* nonnull %75, i8 zeroext 0) #8, !dbg !2098
  br label %76

; <label>:76:                                     ; preds = %66, %19, %42, %24, %40, %39, %51, %50, %71, %1
  %77 = add nuw nsw i64 %2, 1, !dbg !2099
  %78 = icmp eq i64 %77, 10, !dbg !2100
  br i1 %78, label %79, label %1, !dbg !2001, !llvm.loop !2101

; <label>:79:                                     ; preds = %76
  %80 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 0, i32 3), align 4, !dbg !2103, !tbaa !2107
  %81 = add i32 %80, 1, !dbg !2103
  store i32 %81, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 0, i32 3), align 4, !dbg !2103, !tbaa !2107
  %82 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 1, i32 3), align 4, !dbg !2103, !tbaa !2107
  %83 = add i32 %82, 1, !dbg !2103
  store i32 %83, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 1, i32 3), align 4, !dbg !2103, !tbaa !2107
  %84 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 2, i32 3), align 4, !dbg !2103, !tbaa !2107
  %85 = add i32 %84, 1, !dbg !2103
  store i32 %85, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 2, i32 3), align 4, !dbg !2103, !tbaa !2107
  %86 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 3, i32 3), align 4, !dbg !2103, !tbaa !2107
  %87 = add i32 %86, 1, !dbg !2103
  store i32 %87, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 3, i32 3), align 4, !dbg !2103, !tbaa !2107
  %88 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 4, i32 3), align 4, !dbg !2103, !tbaa !2107
  %89 = add i32 %88, 1, !dbg !2103
  store i32 %89, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 4, i32 3), align 4, !dbg !2103, !tbaa !2107
  %90 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 5, i32 3), align 4, !dbg !2103, !tbaa !2107
  %91 = add i32 %90, 1, !dbg !2103
  store i32 %91, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 5, i32 3), align 4, !dbg !2103, !tbaa !2107
  %92 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 6, i32 3), align 4, !dbg !2103, !tbaa !2107
  %93 = add i32 %92, 1, !dbg !2103
  store i32 %93, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 6, i32 3), align 4, !dbg !2103, !tbaa !2107
  %94 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 7, i32 3), align 4, !dbg !2103, !tbaa !2107
  %95 = add i32 %94, 1, !dbg !2103
  store i32 %95, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 7, i32 3), align 4, !dbg !2103, !tbaa !2107
  %96 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 8, i32 3), align 4, !dbg !2103, !tbaa !2107
  %97 = add i32 %96, 1, !dbg !2103
  store i32 %97, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 8, i32 3), align 4, !dbg !2103, !tbaa !2107
  %98 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 9, i32 3), align 4, !dbg !2103, !tbaa !2107
  %99 = add i32 %98, 1, !dbg !2103
  store i32 %99, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 9, i32 3), align 4, !dbg !2103, !tbaa !2107
  br label %100, !dbg !2108

; <label>:100:                                    ; preds = %153, %79
  %101 = phi i64 [ 0, %79 ], [ %154, %153 ]
  %102 = getelementptr inbounds [3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 %101, i32 0, !dbg !2109
  %103 = load %struct.nd6_neighbor_cache_entry*, %struct.nd6_neighbor_cache_entry** %102, align 16, !dbg !2109, !tbaa !916
  %104 = icmp eq %struct.nd6_neighbor_cache_entry* %103, null, !dbg !2110
  br i1 %104, label %153, label %105, !dbg !2111

; <label>:105:                                    ; preds = %100
  %106 = getelementptr inbounds [3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 %101, i32 1, !dbg !2112
  %107 = load i32, i32* %106, align 8, !dbg !2112, !tbaa !1009
  %108 = icmp ult i32 %107, 2, !dbg !2113
  br i1 %108, label %109, label %151, !dbg !2114

; <label>:109:                                    ; preds = %105
  %110 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %103, i64 0, i32 0, i32 0, i64 0
  %111 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %103, i64 0, i32 0, i32 0, i64 1
  %112 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %103, i64 0, i32 0, i32 0, i64 2
  %113 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %103, i64 0, i32 0, i32 0, i64 3
  %114 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %103, i64 0, i32 0, i32 1
  br label %115, !dbg !2116

; <label>:115:                                    ; preds = %145, %109
  %116 = phi i64 [ 0, %109 ], [ %146, %145 ]
  %117 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %116, i32 1, i32 0, i64 0, !dbg !2118
  %118 = load i32, i32* %117, align 4, !dbg !2118, !tbaa !547
  %119 = load i32, i32* %110, align 8, !dbg !2118, !tbaa !547
  %120 = icmp eq i32 %118, %119, !dbg !2118
  br i1 %120, label %121, label %145, !dbg !2118

; <label>:121:                                    ; preds = %115
  %122 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %116, i32 1, i32 0, i64 1, !dbg !2118
  %123 = load i32, i32* %122, align 4, !dbg !2118, !tbaa !547
  %124 = load i32, i32* %111, align 4, !dbg !2118, !tbaa !547
  %125 = icmp eq i32 %123, %124, !dbg !2118
  br i1 %125, label %126, label %145, !dbg !2118

; <label>:126:                                    ; preds = %121
  %127 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %116, i32 1, i32 0, i64 2, !dbg !2118
  %128 = load i32, i32* %127, align 4, !dbg !2118, !tbaa !547
  %129 = load i32, i32* %112, align 8, !dbg !2118, !tbaa !547
  %130 = icmp eq i32 %128, %129, !dbg !2118
  br i1 %130, label %131, label %145, !dbg !2118

; <label>:131:                                    ; preds = %126
  %132 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %116, i32 1, i32 0, i64 3, !dbg !2118
  %133 = load i32, i32* %132, align 4, !dbg !2118, !tbaa !547
  %134 = load i32, i32* %113, align 4, !dbg !2118, !tbaa !547
  %135 = icmp eq i32 %133, %134, !dbg !2118
  br i1 %135, label %136, label %145, !dbg !2118

; <label>:136:                                    ; preds = %131
  %137 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %116, i32 1, i32 1, !dbg !2118
  %138 = load i8, i8* %137, align 4, !dbg !2118, !tbaa !1417
  %139 = load i8, i8* %114, align 8, !dbg !2118, !tbaa !647
  %140 = icmp eq i8 %138, %139, !dbg !2118
  br i1 %140, label %141, label %145, !dbg !2122

; <label>:141:                                    ; preds = %136
  %142 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %116, i32 0, i32 0, i64 0, !dbg !2123
  %143 = bitcast i32* %142 to <4 x i32>*, !dbg !2123
  store <4 x i32> zeroinitializer, <4 x i32>* %143, align 16, !dbg !2123, !tbaa !547
  %144 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %116, i32 0, i32 1, !dbg !2123
  store i8 0, i8* %144, align 16, !dbg !2123, !tbaa !1398
  br label %145, !dbg !2126

; <label>:145:                                    ; preds = %115, %121, %126, %131, %136, %141
  %146 = add nuw nsw i64 %116, 1, !dbg !2127
  %147 = icmp eq i64 %146, 10, !dbg !2128
  br i1 %147, label %148, label %115, !dbg !2116, !llvm.loop !2129

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %103, i64 0, i32 5, !dbg !2131
  store i8 0, i8* %149, align 1, !dbg !2132, !tbaa !981
  store %struct.nd6_neighbor_cache_entry* null, %struct.nd6_neighbor_cache_entry** %102, align 16, !dbg !2133, !tbaa !916
  store i32 0, i32* %106, align 8, !dbg !2134, !tbaa !1009
  %150 = getelementptr inbounds [3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 %101, i32 2, !dbg !2135
  store i8 0, i8* %150, align 4, !dbg !2136, !tbaa !1032
  br label %153, !dbg !2137

; <label>:151:                                    ; preds = %105
  %152 = add i32 %107, -1, !dbg !2138
  store i32 %152, i32* %106, align 8, !dbg !2138, !tbaa !1009
  br label %153

; <label>:153:                                    ; preds = %100, %151, %148
  %154 = add nuw nsw i64 %101, 1, !dbg !2140
  %155 = icmp eq i64 %154, 3, !dbg !2141
  br i1 %155, label %156, label %100, !dbg !2142, !llvm.loop !2143

; <label>:156:                                    ; preds = %153
  %157 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 0, i32 1), align 8, !dbg !2145, !tbaa !1181
  %158 = icmp eq %struct.netif* %157, null, !dbg !2150
  br i1 %158, label %165, label %159, !dbg !2151

; <label>:159:                                    ; preds = %156
  %160 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 0, i32 2), align 16, !dbg !2152, !tbaa !1195
  %161 = icmp ult i32 %160, 2, !dbg !2155
  br i1 %161, label %162, label %163, !dbg !2156

; <label>:162:                                    ; preds = %159
  store i32 0, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 0, i32 2), align 16, !dbg !2157, !tbaa !1195
  store %struct.netif* null, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 0, i32 1), align 8, !dbg !2159, !tbaa !1181
  br label %165, !dbg !2160

; <label>:163:                                    ; preds = %159
  %164 = add i32 %160, -1, !dbg !2161
  store i32 %164, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 0, i32 2), align 16, !dbg !2161, !tbaa !1195
  br label %165

; <label>:165:                                    ; preds = %156, %163, %162
  %166 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 1, i32 1), align 8, !dbg !2145, !tbaa !1181
  %167 = icmp eq %struct.netif* %166, null, !dbg !2150
  br i1 %167, label %269, label %263, !dbg !2151

; <label>:168:                                    ; preds = %296, %227
  %169 = phi %struct.netif* [ %229, %227 ], [ %297, %296 ]
  %170 = getelementptr inbounds %struct.netif, %struct.netif* %169, i64 0, i32 21
  br label %171, !dbg !2163

; <label>:171:                                    ; preds = %224, %168
  %172 = phi i64 [ 0, %168 ], [ %225, %224 ]
  %173 = getelementptr inbounds %struct.netif, %struct.netif* %169, i64 0, i32 5, i64 %172, !dbg !2164
  %174 = load i8, i8* %173, align 1, !dbg !2164, !tbaa !530
  %175 = icmp eq i8 %174, 0, !dbg !2166
  br i1 %175, label %196, label %176, !dbg !2167

; <label>:176:                                    ; preds = %171
  %177 = getelementptr inbounds %struct.netif, %struct.netif* %169, i64 0, i32 6, i64 %172, !dbg !2168
  %178 = load i32, i32* %177, align 4, !dbg !2168, !tbaa !547
  switch i32 %178, label %182 [
    i32 0, label %196
    i32 1, label %179
    i32 -1, label %184
  ], !dbg !2169

; <label>:179:                                    ; preds = %176
  store i32 0, i32* %177, align 4, !dbg !2170, !tbaa !547
  %180 = getelementptr inbounds %struct.netif, %struct.netif* %169, i64 0, i32 7, i64 %172, !dbg !2176
  store i32 0, i32* %180, align 4, !dbg !2176, !tbaa !547
  %181 = trunc i64 %172 to i8, !dbg !2180
  tail call void @netif_ip6_addr_set_state(%struct.netif* nonnull %169, i8 signext %181, i8 zeroext 0) #8, !dbg !2180
  br label %196, !dbg !2181

; <label>:182:                                    ; preds = %176
  %183 = add i32 %178, -1, !dbg !2182
  store i32 %183, i32* %177, align 4, !dbg !2187, !tbaa !547
  br label %184, !dbg !2187

; <label>:184:                                    ; preds = %176, %182
  %185 = getelementptr inbounds %struct.netif, %struct.netif* %169, i64 0, i32 7, i64 %172, !dbg !2191
  %186 = load i32, i32* %185, align 4, !dbg !2191, !tbaa !547
  %187 = icmp ult i32 %186, 2, !dbg !2192
  br i1 %187, label %188, label %192, !dbg !2194

; <label>:188:                                    ; preds = %184
  store i32 0, i32* %185, align 4, !dbg !2195, !tbaa !547
  %189 = icmp eq i8 %174, 48, !dbg !2200
  br i1 %189, label %190, label %196, !dbg !2202

; <label>:190:                                    ; preds = %188
  %191 = trunc i64 %172 to i8, !dbg !2203
  tail call void @netif_ip6_addr_set_state(%struct.netif* nonnull %169, i8 signext %191, i8 zeroext 16) #8, !dbg !2203
  br label %196, !dbg !2203

; <label>:192:                                    ; preds = %184
  %193 = icmp eq i32 %186, -1, !dbg !2204
  br i1 %193, label %196, label %194, !dbg !2206

; <label>:194:                                    ; preds = %192
  %195 = add i32 %186, -1, !dbg !2207
  store i32 %195, i32* %185, align 4, !dbg !2209, !tbaa !547
  br label %196, !dbg !2209

; <label>:196:                                    ; preds = %176, %179, %192, %194, %188, %190, %171
  %197 = load i8, i8* %173, align 1, !dbg !2213, !tbaa !530
  %198 = zext i8 %197 to i32, !dbg !2214
  %199 = and i32 %198, 8, !dbg !2214
  %200 = icmp eq i32 %199, 0, !dbg !2214
  br i1 %200, label %224, label %201, !dbg !2216

; <label>:201:                                    ; preds = %196
  %202 = and i32 %198, 7, !dbg !2217
  %203 = icmp eq i32 %202, 0, !dbg !2220
  br i1 %203, label %216, label %204, !dbg !2221

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds %struct.netif, %struct.netif* %169, i64 0, i32 6, i64 %172, !dbg !2222
  %206 = load i32, i32* %205, align 4, !dbg !2222, !tbaa !547
  %207 = icmp eq i32 %206, 0, !dbg !2222
  br i1 %207, label %213, label %208, !dbg !2225

; <label>:208:                                    ; preds = %204
  %209 = getelementptr inbounds %struct.netif, %struct.netif* %169, i64 0, i32 7, i64 %172, !dbg !2226
  %210 = load i32, i32* %209, align 4, !dbg !2226, !tbaa !547
  %211 = icmp eq i32 %210, 0, !dbg !2227
  %212 = select i1 %211, i8 16, i8 48, !dbg !2228
  br label %213, !dbg !2228

; <label>:213:                                    ; preds = %208, %204
  %214 = phi i8 [ 48, %204 ], [ %212, %208 ], !dbg !2229
  %215 = trunc i64 %172 to i8, !dbg !2230
  tail call void @netif_ip6_addr_set_state(%struct.netif* nonnull %169, i8 signext %215, i8 zeroext %214) #8, !dbg !2230
  br label %224, !dbg !2231

; <label>:216:                                    ; preds = %201
  %217 = load i8, i8* %170, align 1, !dbg !2232, !tbaa !2234
  %218 = and i8 %217, 5, !dbg !2235
  %219 = icmp eq i8 %218, 5, !dbg !2235
  br i1 %219, label %220, label %224, !dbg !2235

; <label>:220:                                    ; preds = %216
  %221 = add i8 %197, 1, !dbg !2236
  %222 = trunc i64 %172 to i8, !dbg !2238
  tail call void @netif_ip6_addr_set_state(%struct.netif* nonnull %169, i8 signext %222, i8 zeroext %221) #8, !dbg !2238
  %223 = getelementptr inbounds %struct.netif, %struct.netif* %169, i64 0, i32 4, i64 %172, i32 0, i32 0, !dbg !2239
  tail call fastcc void @nd6_send_ns(%struct.netif* nonnull %169, %struct.ip6_addr* nonnull %223, i8 zeroext 5) #9, !dbg !2240
  br label %224, !dbg !2241

; <label>:224:                                    ; preds = %216, %196, %213, %220
  %225 = add nuw nsw i64 %172, 1, !dbg !2242
  %226 = icmp eq i64 %225, 3, !dbg !2243
  br i1 %226, label %227, label %171, !dbg !2163, !llvm.loop !2244

; <label>:227:                                    ; preds = %224
  %228 = getelementptr inbounds %struct.netif, %struct.netif* %169, i64 0, i32 0, !dbg !2246
  %229 = load %struct.netif*, %struct.netif** %228, align 8, !dbg !2248, !tbaa !2249
  %230 = icmp eq %struct.netif* %229, null, !dbg !2246
  br i1 %230, label %231, label %168, !dbg !2248, !llvm.loop !2250

; <label>:231:                                    ; preds = %227, %296
  %232 = load i8, i8* @nd6_tmr_rs_reduction, align 1, !dbg !2252, !tbaa !530
  %233 = icmp eq i8 %232, 0, !dbg !2252
  br i1 %233, label %234, label %260, !dbg !2254

; <label>:234:                                    ; preds = %231
  store i8 3, i8* @nd6_tmr_rs_reduction, align 1, !dbg !2255, !tbaa !530
  %235 = load %struct.netif*, %struct.netif** @netif_list, align 8, !dbg !2257, !tbaa !2249
  %236 = icmp eq %struct.netif* %235, null, !dbg !2259
  br i1 %236, label %262, label %237, !dbg !2257

; <label>:237:                                    ; preds = %234, %256
  %238 = phi %struct.netif* [ %258, %256 ], [ %235, %234 ]
  %239 = getelementptr inbounds %struct.netif, %struct.netif* %238, i64 0, i32 25, !dbg !2261
  %240 = load i8, i8* %239, align 2, !dbg !2261, !tbaa !895
  %241 = icmp eq i8 %240, 0, !dbg !2264
  br i1 %241, label %256, label %242, !dbg !2265

; <label>:242:                                    ; preds = %237
  %243 = getelementptr inbounds %struct.netif, %struct.netif* %238, i64 0, i32 21, !dbg !2266
  %244 = load i8, i8* %243, align 1, !dbg !2266, !tbaa !2234
  %245 = and i8 %244, 5, !dbg !2267
  %246 = icmp eq i8 %245, 5, !dbg !2267
  br i1 %246, label %247, label %256, !dbg !2267

; <label>:247:                                    ; preds = %242
  %248 = getelementptr inbounds %struct.netif, %struct.netif* %238, i64 0, i32 5, i64 0, !dbg !2268
  %249 = load i8, i8* %248, align 8, !dbg !2268, !tbaa !530
  switch i8 %249, label %250 [
    i8 0, label %256
    i8 64, label %256
  ], !dbg !2269

; <label>:250:                                    ; preds = %247
  %251 = tail call fastcc signext i8 @nd6_send_rs(%struct.netif* nonnull %238) #9, !dbg !2270
  %252 = icmp eq i8 %251, 0, !dbg !2273
  br i1 %252, label %253, label %256, !dbg !2274

; <label>:253:                                    ; preds = %250
  %254 = load i8, i8* %239, align 2, !dbg !2275, !tbaa !895
  %255 = add i8 %254, -1, !dbg !2275
  store i8 %255, i8* %239, align 2, !dbg !2275, !tbaa !895
  br label %256, !dbg !2277

; <label>:256:                                    ; preds = %242, %247, %247, %237, %253, %250
  %257 = getelementptr inbounds %struct.netif, %struct.netif* %238, i64 0, i32 0, !dbg !2259
  %258 = load %struct.netif*, %struct.netif** %257, align 8, !dbg !2257, !tbaa !2249
  %259 = icmp eq %struct.netif* %258, null, !dbg !2259
  br i1 %259, label %262, label %237, !dbg !2257, !llvm.loop !2278

; <label>:260:                                    ; preds = %231
  %261 = add i8 %232, -1, !dbg !2280
  store i8 %261, i8* @nd6_tmr_rs_reduction, align 1, !dbg !2280, !tbaa !530
  br label %262

; <label>:262:                                    ; preds = %256, %234, %260
  ret void, !dbg !2282

; <label>:263:                                    ; preds = %165
  %264 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 1, i32 2), align 8, !dbg !2152, !tbaa !1195
  %265 = icmp ult i32 %264, 2, !dbg !2155
  br i1 %265, label %268, label %266, !dbg !2156

; <label>:266:                                    ; preds = %263
  %267 = add i32 %264, -1, !dbg !2161
  store i32 %267, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 1, i32 2), align 8, !dbg !2161, !tbaa !1195
  br label %269

; <label>:268:                                    ; preds = %263
  store i32 0, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 1, i32 2), align 8, !dbg !2157, !tbaa !1195
  store %struct.netif* null, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 1, i32 1), align 8, !dbg !2159, !tbaa !1181
  br label %269, !dbg !2160

; <label>:269:                                    ; preds = %268, %266, %165
  %270 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 2, i32 1), align 8, !dbg !2145, !tbaa !1181
  %271 = icmp eq %struct.netif* %270, null, !dbg !2150
  br i1 %271, label %278, label %272, !dbg !2151

; <label>:272:                                    ; preds = %269
  %273 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 2, i32 2), align 16, !dbg !2152, !tbaa !1195
  %274 = icmp ult i32 %273, 2, !dbg !2155
  br i1 %274, label %277, label %275, !dbg !2156

; <label>:275:                                    ; preds = %272
  %276 = add i32 %273, -1, !dbg !2161
  store i32 %276, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 2, i32 2), align 16, !dbg !2161, !tbaa !1195
  br label %278

; <label>:277:                                    ; preds = %272
  store i32 0, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 2, i32 2), align 16, !dbg !2157, !tbaa !1195
  store %struct.netif* null, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 2, i32 1), align 8, !dbg !2159, !tbaa !1181
  br label %278, !dbg !2160

; <label>:278:                                    ; preds = %277, %275, %269
  %279 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 3, i32 1), align 8, !dbg !2145, !tbaa !1181
  %280 = icmp eq %struct.netif* %279, null, !dbg !2150
  br i1 %280, label %287, label %281, !dbg !2151

; <label>:281:                                    ; preds = %278
  %282 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 3, i32 2), align 8, !dbg !2152, !tbaa !1195
  %283 = icmp ult i32 %282, 2, !dbg !2155
  br i1 %283, label %286, label %284, !dbg !2156

; <label>:284:                                    ; preds = %281
  %285 = add i32 %282, -1, !dbg !2161
  store i32 %285, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 3, i32 2), align 8, !dbg !2161, !tbaa !1195
  br label %287

; <label>:286:                                    ; preds = %281
  store i32 0, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 3, i32 2), align 8, !dbg !2157, !tbaa !1195
  store %struct.netif* null, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 3, i32 1), align 8, !dbg !2159, !tbaa !1181
  br label %287, !dbg !2160

; <label>:287:                                    ; preds = %286, %284, %278
  %288 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 4, i32 1), align 8, !dbg !2145, !tbaa !1181
  %289 = icmp eq %struct.netif* %288, null, !dbg !2150
  br i1 %289, label %296, label %290, !dbg !2151

; <label>:290:                                    ; preds = %287
  %291 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 4, i32 2), align 16, !dbg !2152, !tbaa !1195
  %292 = icmp ult i32 %291, 2, !dbg !2155
  br i1 %292, label %295, label %293, !dbg !2156

; <label>:293:                                    ; preds = %290
  %294 = add i32 %291, -1, !dbg !2161
  store i32 %294, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 4, i32 2), align 16, !dbg !2161, !tbaa !1195
  br label %296

; <label>:295:                                    ; preds = %290
  store i32 0, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 4, i32 2), align 16, !dbg !2157, !tbaa !1195
  store %struct.netif* null, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 4, i32 1), align 8, !dbg !2159, !tbaa !1181
  br label %296, !dbg !2160

; <label>:296:                                    ; preds = %295, %293, %287
  %297 = load %struct.netif*, %struct.netif** @netif_list, align 8, !dbg !2248, !tbaa !2249
  %298 = icmp eq %struct.netif* %297, null, !dbg !2246
  br i1 %298, label %231, label %168, !dbg !2248
}

; Function Attrs: noredzone
declare dso_local void @netif_ip6_addr_set_state(%struct.netif*, i8 signext, i8 zeroext) local_unnamed_addr #3

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8*, ...) unnamed_addr #4 !dbg !416 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !2284
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #7, !dbg !2284
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !2286
  call void @llvm.va_start(i8* nonnull %3), !dbg !2286
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @uk_pr_crit.__str.4, i64 0, i64 0), i32 198, i8* %0, %struct.__va_list_tag* nonnull %4) #8, !dbg !2287
  call void @llvm.va_end(i8* nonnull %3), !dbg !2290
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #7, !dbg !2291
  ret void, !dbg !2291
}

; Function Attrs: noredzone noreturn
declare dso_local void @ukplat_terminate(i32) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define internal fastcc void @nd6_send_ns(%struct.netif*, %struct.ip6_addr*, i8 zeroext) unnamed_addr #0 !dbg !2292 {
  %4 = icmp eq %struct.ip6_addr* %1, null, !dbg !2307
  br i1 %4, label %5, label %6, !dbg !2310

; <label>:5:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0)) #9, !dbg !2311
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !2314
  tail call void @ukplat_terminate(i32 3) #10, !dbg !2314
  unreachable, !dbg !2314

; <label>:6:                                      ; preds = %3
  %7 = zext i8 %2 to i32, !dbg !2318
  %8 = and i32 %7, 4, !dbg !2320
  %9 = icmp eq i32 %8, 0, !dbg !2320
  br i1 %9, label %10, label %22, !dbg !2321

; <label>:10:                                     ; preds = %6
  %11 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 0, !dbg !2322
  %12 = load i8, i8* %11, align 8, !dbg !2322, !tbaa !530
  %13 = and i8 %12, 16, !dbg !2322
  %14 = icmp eq i8 %13, 0, !dbg !2322
  br i1 %14, label %22, label %15, !dbg !2323

; <label>:15:                                     ; preds = %10
  %16 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, !dbg !2324
  %17 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 20, !dbg !2327
  %18 = load i8, i8* %17, align 4, !dbg !2327, !tbaa !666
  %19 = zext i8 %18 to i16, !dbg !2328
  %20 = add nuw nsw i16 %19, 9, !dbg !2329
  %21 = lshr i16 %20, 3, !dbg !2330
  br label %22, !dbg !2332

; <label>:22:                                     ; preds = %6, %10, %15
  %23 = phi %struct.ip6_addr* [ %16, %15 ], [ getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip6_addr_any, i64 0, i32 0, i32 0), %10 ], [ getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip6_addr_any, i64 0, i32 0, i32 0), %6 ], !dbg !2333
  %24 = phi i16 [ %21, %15 ], [ 0, %10 ], [ 0, %6 ], !dbg !2333
  %25 = shl nuw nsw i16 %24, 3, !dbg !2334
  %26 = add nuw nsw i16 %25, 24, !dbg !2335
  %27 = tail call %struct.pbuf* @pbuf_alloc(i32 54, i16 zeroext %26, i32 640) #8, !dbg !2336
  %28 = icmp eq %struct.pbuf* %27, null, !dbg !2338
  br i1 %28, label %29, label %32, !dbg !2340

; <label>:29:                                     ; preds = %22
  %30 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 6), align 2, !dbg !2341, !tbaa !856
  %31 = add i16 %30, 1, !dbg !2341
  store i16 %31, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 6), align 2, !dbg !2341, !tbaa !856
  br label %94, !dbg !2343

; <label>:32:                                     ; preds = %22
  %33 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %27, i64 0, i32 1, !dbg !2344
  %34 = bitcast i8** %33 to %struct.ns_header**, !dbg !2344
  %35 = load %struct.ns_header*, %struct.ns_header** %34, align 8, !dbg !2344, !tbaa !526
  %36 = getelementptr inbounds %struct.ns_header, %struct.ns_header* %35, i64 0, i32 0, !dbg !2346
  store i8 -121, i8* %36, align 1, !dbg !2347, !tbaa !2348
  %37 = getelementptr inbounds %struct.ns_header, %struct.ns_header* %35, i64 0, i32 1, !dbg !2349
  store i8 0, i8* %37, align 1, !dbg !2350, !tbaa !749
  %38 = getelementptr inbounds %struct.ns_header, %struct.ns_header* %35, i64 0, i32 2, !dbg !2351
  store i16 0, i16* %38, align 1, !dbg !2352, !tbaa !2353
  %39 = getelementptr inbounds %struct.ns_header, %struct.ns_header* %35, i64 0, i32 3, !dbg !2354
  store i32 0, i32* %39, align 1, !dbg !2355, !tbaa !2356
  %40 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 0, !dbg !2357
  %41 = load i32, i32* %40, align 4, !dbg !2357, !tbaa !547
  %42 = getelementptr inbounds %struct.ns_header, %struct.ns_header* %35, i64 0, i32 4, i32 0, i64 0, !dbg !2357
  store i32 %41, i32* %42, align 1, !dbg !2357, !tbaa !547
  %43 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 1, !dbg !2357
  %44 = load i32, i32* %43, align 4, !dbg !2357, !tbaa !547
  %45 = getelementptr inbounds %struct.ns_header, %struct.ns_header* %35, i64 0, i32 4, i32 0, i64 1, !dbg !2357
  store i32 %44, i32* %45, align 1, !dbg !2357, !tbaa !547
  %46 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 2, !dbg !2357
  %47 = load i32, i32* %46, align 4, !dbg !2357, !tbaa !547
  %48 = getelementptr inbounds %struct.ns_header, %struct.ns_header* %35, i64 0, i32 4, i32 0, i64 2, !dbg !2357
  store i32 %47, i32* %48, align 1, !dbg !2357, !tbaa !547
  %49 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 3, !dbg !2357
  %50 = load i32, i32* %49, align 4, !dbg !2357, !tbaa !547
  %51 = getelementptr inbounds %struct.ns_header, %struct.ns_header* %35, i64 0, i32 4, i32 0, i64 3, !dbg !2357
  store i32 %50, i32* %51, align 1, !dbg !2357, !tbaa !547
  %52 = icmp eq i16 %24, 0, !dbg !2359
  %53 = getelementptr inbounds %struct.ns_header, %struct.ns_header* %35, i64 0, i32 0, !dbg !2360
  br i1 %52, label %64, label %54, !dbg !2360

; <label>:54:                                     ; preds = %32
  %55 = getelementptr inbounds %struct.ns_header, %struct.ns_header* %35, i64 1, i32 0, !dbg !2361
  store i8 1, i8* %55, align 1, !dbg !2363, !tbaa !1424
  %56 = trunc i16 %24 to i8, !dbg !2364
  %57 = getelementptr inbounds i8, i8* %53, i64 25, !dbg !2365
  store i8 %56, i8* %57, align 1, !dbg !2366, !tbaa !623
  %58 = getelementptr inbounds i8, i8* %53, i64 26, !dbg !2367
  %59 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 0, !dbg !2367
  %60 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 20, !dbg !2367
  %61 = load i8, i8* %60, align 4, !dbg !2367, !tbaa !666
  %62 = zext i8 %61 to i64, !dbg !2367
  %63 = tail call i8* @memcpy(i8* nonnull %58, i8* nonnull %59, i64 %62) #8, !dbg !2367
  br label %64, !dbg !2368

; <label>:64:                                     ; preds = %32, %54
  %65 = and i32 %7, 1, !dbg !2369
  %66 = icmp eq i32 %65, 0, !dbg !2369
  br i1 %66, label %73, label %67, !dbg !2371

; <label>:67:                                     ; preds = %64
  store i32 767, i32* getelementptr inbounds (%struct.ip6_addr, %struct.ip6_addr* @multicast_address, i64 0, i32 0, i64 0), align 16, !dbg !2372, !tbaa !547
  store i32 0, i32* getelementptr inbounds (%struct.ip6_addr, %struct.ip6_addr* @multicast_address, i64 0, i32 0, i64 1), align 4, !dbg !2372, !tbaa !547
  store i32 16777216, i32* getelementptr inbounds (%struct.ip6_addr, %struct.ip6_addr* @multicast_address, i64 0, i32 0, i64 2), align 8, !dbg !2372, !tbaa !547
  %68 = load i32, i32* %49, align 4, !dbg !2372, !tbaa !547
  %69 = or i32 %68, 255, !dbg !2372
  store i32 %69, i32* getelementptr inbounds (%struct.ip6_addr, %struct.ip6_addr* @multicast_address, i64 0, i32 0, i64 3), align 4, !dbg !2372, !tbaa !547
  %70 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 23, !dbg !2375
  %71 = load i8, i8* %70, align 8, !dbg !2375, !tbaa !550
  %72 = add i8 %71, 1, !dbg !2375
  store i8 %72, i8* getelementptr inbounds (%struct.ip6_addr, %struct.ip6_addr* @multicast_address, i64 0, i32 1), align 16, !dbg !2375, !tbaa !742
  br label %75, !dbg !2376

; <label>:73:                                     ; preds = %64
  %74 = icmp eq %struct.netif* %0, null, !dbg !2376
  br i1 %74, label %81, label %75, !dbg !2376

; <label>:75:                                     ; preds = %67, %73
  %76 = phi %struct.ip6_addr* [ @multicast_address, %67 ], [ %1, %73 ]
  %77 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 16, !dbg !2376
  %78 = load i16, i16* %77, align 8, !dbg !2376, !tbaa !1653
  %79 = and i16 %78, 16, !dbg !2376
  %80 = icmp eq i16 %79, 0, !dbg !2376
  br i1 %80, label %86, label %81, !dbg !2378

; <label>:81:                                     ; preds = %75, %73
  %82 = phi %struct.ip6_addr* [ %76, %75 ], [ %1, %73 ]
  %83 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %27, i64 0, i32 3, !dbg !2379
  %84 = load i16, i16* %83, align 2, !dbg !2379, !tbaa !535
  %85 = tail call zeroext i16 @ip6_chksum_pseudo(%struct.pbuf* nonnull %27, i8 zeroext 58, i16 zeroext %84, %struct.ip6_addr* %23, %struct.ip6_addr* %82) #8, !dbg !2381
  store i16 %85, i16* %38, align 1, !dbg !2382, !tbaa !2353
  br label %86, !dbg !2383

; <label>:86:                                     ; preds = %75, %81
  %87 = phi %struct.ip6_addr* [ %76, %75 ], [ %82, %81 ]
  %88 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 0), align 2, !dbg !2384, !tbaa !1661
  %89 = add i16 %88, 1, !dbg !2384
  store i16 %89, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 0), align 2, !dbg !2384, !tbaa !1661
  %90 = icmp eq %struct.ip6_addr* %23, getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip6_addr_any, i64 0, i32 0, i32 0), !dbg !2385
  %91 = select i1 %90, %struct.ip6_addr* null, %struct.ip6_addr* %23, !dbg !2386
  %92 = tail call signext i8 @ip6_output_if(%struct.pbuf* nonnull %27, %struct.ip6_addr* %91, %struct.ip6_addr* %87, i8 zeroext -1, i8 zeroext 0, i8 zeroext 58, %struct.netif* %0) #8, !dbg !2387
  %93 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %27) #8, !dbg !2388
  br label %94, !dbg !2389

; <label>:94:                                     ; preds = %86, %29
  ret void, !dbg !2389
}

; Function Attrs: noredzone nounwind
define dso_local void @nd6_clear_destination_cache() local_unnamed_addr #0 !dbg !2390 {
  store <4 x i32> zeroinitializer, <4 x i32>* bitcast ([10 x %struct.nd6_destination_cache_entry]* @destination_cache to <4 x i32>*), align 16, !dbg !2394, !tbaa !547
  store i8 0, i8* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 0, i32 0, i32 1), align 16, !dbg !2394, !tbaa !1398
  store <4 x i32> zeroinitializer, <4 x i32>* bitcast (i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 1, i32 0, i32 0, i64 0) to <4 x i32>*), align 16, !dbg !2394, !tbaa !547
  store i8 0, i8* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 1, i32 0, i32 1), align 16, !dbg !2394, !tbaa !1398
  store <4 x i32> zeroinitializer, <4 x i32>* bitcast (i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 2, i32 0, i32 0, i64 0) to <4 x i32>*), align 16, !dbg !2394, !tbaa !547
  store i8 0, i8* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 2, i32 0, i32 1), align 16, !dbg !2394, !tbaa !1398
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 3, i32 0, i32 0, i64 0), align 16, !dbg !2394, !tbaa !547
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 3, i32 0, i32 0, i64 1), align 4, !dbg !2394, !tbaa !547
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 3, i32 0, i32 0, i64 2), align 8, !dbg !2394, !tbaa !547
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 3, i32 0, i32 0, i64 3), align 4, !dbg !2394, !tbaa !547
  store i8 0, i8* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 3, i32 0, i32 1), align 16, !dbg !2394, !tbaa !1398
  store <4 x i32> zeroinitializer, <4 x i32>* bitcast (i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 4, i32 0, i32 0, i64 0) to <4 x i32>*), align 16, !dbg !2394, !tbaa !547
  store i8 0, i8* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 4, i32 0, i32 1), align 16, !dbg !2394, !tbaa !1398
  store <4 x i32> zeroinitializer, <4 x i32>* bitcast (i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 5, i32 0, i32 0, i64 0) to <4 x i32>*), align 16, !dbg !2394, !tbaa !547
  store i8 0, i8* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 5, i32 0, i32 1), align 16, !dbg !2394, !tbaa !1398
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 6, i32 0, i32 0, i64 0), align 16, !dbg !2394, !tbaa !547
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 6, i32 0, i32 0, i64 1), align 4, !dbg !2394, !tbaa !547
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 6, i32 0, i32 0, i64 2), align 8, !dbg !2394, !tbaa !547
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 6, i32 0, i32 0, i64 3), align 4, !dbg !2394, !tbaa !547
  store i8 0, i8* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 6, i32 0, i32 1), align 16, !dbg !2394, !tbaa !1398
  store <4 x i32> zeroinitializer, <4 x i32>* bitcast (i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 7, i32 0, i32 0, i64 0) to <4 x i32>*), align 16, !dbg !2394, !tbaa !547
  store i8 0, i8* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 7, i32 0, i32 1), align 16, !dbg !2394, !tbaa !1398
  store <4 x i32> zeroinitializer, <4 x i32>* bitcast (i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 8, i32 0, i32 0, i64 0) to <4 x i32>*), align 16, !dbg !2394, !tbaa !547
  store i8 0, i8* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 8, i32 0, i32 1), align 16, !dbg !2394, !tbaa !1398
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 9, i32 0, i32 0, i64 0), align 16, !dbg !2394, !tbaa !547
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 9, i32 0, i32 0, i64 1), align 4, !dbg !2394, !tbaa !547
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 9, i32 0, i32 0, i64 2), align 8, !dbg !2394, !tbaa !547
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 9, i32 0, i32 0, i64 3), align 4, !dbg !2394, !tbaa !547
  store i8 0, i8* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 9, i32 0, i32 1), align 16, !dbg !2394, !tbaa !1398
  ret void, !dbg !2399
}

; Function Attrs: noredzone nounwind
define dso_local %struct.netif* @nd6_find_route(%struct.ip6_addr* nocapture readonly) local_unnamed_addr #0 !dbg !2400 {
  %2 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 0
  %3 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 1
  %4 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 1
  %5 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 0, i32 1), align 8, !dbg !2409, !tbaa !1181
  %6 = icmp eq %struct.netif* %5, null, !dbg !2414
  br i1 %6, label %24, label %7, !dbg !2416

; <label>:7:                                      ; preds = %1
  %8 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 0, i32 0, i32 0, i64 0), align 16, !dbg !2417, !tbaa !547
  %9 = load i32, i32* %2, align 4, !dbg !2417, !tbaa !547
  %10 = icmp eq i32 %8, %9, !dbg !2417
  br i1 %10, label %11, label %24, !dbg !2417

; <label>:11:                                     ; preds = %7
  %12 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 0, i32 0, i32 0, i64 1), align 4, !dbg !2417, !tbaa !547
  %13 = load i32, i32* %3, align 4, !dbg !2417, !tbaa !547
  %14 = icmp eq i32 %12, %13, !dbg !2417
  br i1 %14, label %15, label %24, !dbg !2417

; <label>:15:                                     ; preds = %11
  %16 = load i8, i8* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 0, i32 0, i32 1), align 16, !dbg !2417, !tbaa !1157
  %17 = load i8, i8* %4, align 4, !dbg !2417, !tbaa !742
  %18 = icmp eq i8 %16, %17, !dbg !2417
  br i1 %18, label %19, label %24, !dbg !2418

; <label>:19:                                     ; preds = %15
  %20 = getelementptr inbounds %struct.netif, %struct.netif* %5, i64 0, i32 21, !dbg !2419
  %21 = load i8, i8* %20, align 1, !dbg !2419, !tbaa !2234
  %22 = and i8 %21, 5, !dbg !2420
  %23 = icmp eq i8 %22, 5, !dbg !2420
  br i1 %23, label %36, label %24, !dbg !2420

; <label>:24:                                     ; preds = %19, %1, %7, %11, %15
  %25 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 1, i32 1), align 8, !dbg !2409, !tbaa !1181
  %26 = icmp eq %struct.netif* %25, null, !dbg !2414
  br i1 %26, label %55, label %38, !dbg !2416

; <label>:27:                                     ; preds = %115
  %28 = sext i8 %116 to i64, !dbg !2421
  %29 = getelementptr inbounds [3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 %28, i32 0, !dbg !2421
  %30 = load %struct.nd6_neighbor_cache_entry*, %struct.nd6_neighbor_cache_entry** %29, align 16, !dbg !2421, !tbaa !916
  %31 = icmp eq %struct.nd6_neighbor_cache_entry* %30, null, !dbg !2421
  br i1 %31, label %32, label %33, !dbg !2426

; <label>:32:                                     ; preds = %27
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0)) #9, !dbg !2427
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !2430
  tail call void @ukplat_terminate(i32 3) #10, !dbg !2430
  unreachable, !dbg !2430

; <label>:33:                                     ; preds = %27
  %34 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %30, i64 0, i32 1, !dbg !2434
  %35 = load %struct.netif*, %struct.netif** %34, align 8, !dbg !2434, !tbaa !716
  br label %36, !dbg !2435

; <label>:36:                                     ; preds = %19, %50, %70, %90, %110, %115, %33
  %37 = phi %struct.netif* [ %35, %33 ], [ null, %115 ], [ %5, %19 ], [ %25, %50 ], [ %56, %70 ], [ %76, %90 ], [ %96, %110 ], !dbg !2436
  ret %struct.netif* %37, !dbg !2437

; <label>:38:                                     ; preds = %24
  %39 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 1, i32 0, i32 0, i64 0), align 8, !dbg !2417, !tbaa !547
  %40 = load i32, i32* %2, align 4, !dbg !2417, !tbaa !547
  %41 = icmp eq i32 %39, %40, !dbg !2417
  br i1 %41, label %42, label %55, !dbg !2417

; <label>:42:                                     ; preds = %38
  %43 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 1, i32 0, i32 0, i64 1), align 4, !dbg !2417, !tbaa !547
  %44 = load i32, i32* %3, align 4, !dbg !2417, !tbaa !547
  %45 = icmp eq i32 %43, %44, !dbg !2417
  br i1 %45, label %46, label %55, !dbg !2417

; <label>:46:                                     ; preds = %42
  %47 = load i8, i8* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 1, i32 0, i32 1), align 8, !dbg !2417, !tbaa !1157
  %48 = load i8, i8* %4, align 4, !dbg !2417, !tbaa !742
  %49 = icmp eq i8 %47, %48, !dbg !2417
  br i1 %49, label %50, label %55, !dbg !2418

; <label>:50:                                     ; preds = %46
  %51 = getelementptr inbounds %struct.netif, %struct.netif* %25, i64 0, i32 21, !dbg !2419
  %52 = load i8, i8* %51, align 1, !dbg !2419, !tbaa !2234
  %53 = and i8 %52, 5, !dbg !2420
  %54 = icmp eq i8 %53, 5, !dbg !2420
  br i1 %54, label %36, label %55, !dbg !2420

; <label>:55:                                     ; preds = %50, %46, %42, %38, %24
  %56 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 2, i32 1), align 8, !dbg !2409, !tbaa !1181
  %57 = icmp eq %struct.netif* %56, null, !dbg !2414
  br i1 %57, label %75, label %58, !dbg !2416

; <label>:58:                                     ; preds = %55
  %59 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 2, i32 0, i32 0, i64 0), align 16, !dbg !2417, !tbaa !547
  %60 = load i32, i32* %2, align 4, !dbg !2417, !tbaa !547
  %61 = icmp eq i32 %59, %60, !dbg !2417
  br i1 %61, label %62, label %75, !dbg !2417

; <label>:62:                                     ; preds = %58
  %63 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 2, i32 0, i32 0, i64 1), align 4, !dbg !2417, !tbaa !547
  %64 = load i32, i32* %3, align 4, !dbg !2417, !tbaa !547
  %65 = icmp eq i32 %63, %64, !dbg !2417
  br i1 %65, label %66, label %75, !dbg !2417

; <label>:66:                                     ; preds = %62
  %67 = load i8, i8* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 2, i32 0, i32 1), align 16, !dbg !2417, !tbaa !1157
  %68 = load i8, i8* %4, align 4, !dbg !2417, !tbaa !742
  %69 = icmp eq i8 %67, %68, !dbg !2417
  br i1 %69, label %70, label %75, !dbg !2418

; <label>:70:                                     ; preds = %66
  %71 = getelementptr inbounds %struct.netif, %struct.netif* %56, i64 0, i32 21, !dbg !2419
  %72 = load i8, i8* %71, align 1, !dbg !2419, !tbaa !2234
  %73 = and i8 %72, 5, !dbg !2420
  %74 = icmp eq i8 %73, 5, !dbg !2420
  br i1 %74, label %36, label %75, !dbg !2420

; <label>:75:                                     ; preds = %70, %66, %62, %58, %55
  %76 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 3, i32 1), align 8, !dbg !2409, !tbaa !1181
  %77 = icmp eq %struct.netif* %76, null, !dbg !2414
  br i1 %77, label %95, label %78, !dbg !2416

; <label>:78:                                     ; preds = %75
  %79 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 3, i32 0, i32 0, i64 0), align 8, !dbg !2417, !tbaa !547
  %80 = load i32, i32* %2, align 4, !dbg !2417, !tbaa !547
  %81 = icmp eq i32 %79, %80, !dbg !2417
  br i1 %81, label %82, label %95, !dbg !2417

; <label>:82:                                     ; preds = %78
  %83 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 3, i32 0, i32 0, i64 1), align 4, !dbg !2417, !tbaa !547
  %84 = load i32, i32* %3, align 4, !dbg !2417, !tbaa !547
  %85 = icmp eq i32 %83, %84, !dbg !2417
  br i1 %85, label %86, label %95, !dbg !2417

; <label>:86:                                     ; preds = %82
  %87 = load i8, i8* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 3, i32 0, i32 1), align 8, !dbg !2417, !tbaa !1157
  %88 = load i8, i8* %4, align 4, !dbg !2417, !tbaa !742
  %89 = icmp eq i8 %87, %88, !dbg !2417
  br i1 %89, label %90, label %95, !dbg !2418

; <label>:90:                                     ; preds = %86
  %91 = getelementptr inbounds %struct.netif, %struct.netif* %76, i64 0, i32 21, !dbg !2419
  %92 = load i8, i8* %91, align 1, !dbg !2419, !tbaa !2234
  %93 = and i8 %92, 5, !dbg !2420
  %94 = icmp eq i8 %93, 5, !dbg !2420
  br i1 %94, label %36, label %95, !dbg !2420

; <label>:95:                                     ; preds = %90, %86, %82, %78, %75
  %96 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 4, i32 1), align 8, !dbg !2409, !tbaa !1181
  %97 = icmp eq %struct.netif* %96, null, !dbg !2414
  br i1 %97, label %115, label %98, !dbg !2416

; <label>:98:                                     ; preds = %95
  %99 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 4, i32 0, i32 0, i64 0), align 16, !dbg !2417, !tbaa !547
  %100 = load i32, i32* %2, align 4, !dbg !2417, !tbaa !547
  %101 = icmp eq i32 %99, %100, !dbg !2417
  br i1 %101, label %102, label %115, !dbg !2417

; <label>:102:                                    ; preds = %98
  %103 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 4, i32 0, i32 0, i64 1), align 4, !dbg !2417, !tbaa !547
  %104 = load i32, i32* %3, align 4, !dbg !2417, !tbaa !547
  %105 = icmp eq i32 %103, %104, !dbg !2417
  br i1 %105, label %106, label %115, !dbg !2417

; <label>:106:                                    ; preds = %102
  %107 = load i8, i8* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 4, i32 0, i32 1), align 16, !dbg !2417, !tbaa !1157
  %108 = load i8, i8* %4, align 4, !dbg !2417, !tbaa !742
  %109 = icmp eq i8 %107, %108, !dbg !2417
  br i1 %109, label %110, label %115, !dbg !2418

; <label>:110:                                    ; preds = %106
  %111 = getelementptr inbounds %struct.netif, %struct.netif* %96, i64 0, i32 21, !dbg !2419
  %112 = load i8, i8* %111, align 1, !dbg !2419, !tbaa !2234
  %113 = and i8 %112, 5, !dbg !2420
  %114 = icmp eq i8 %113, 5, !dbg !2420
  br i1 %114, label %36, label %115, !dbg !2420

; <label>:115:                                    ; preds = %110, %106, %102, %98, %95
  %116 = tail call fastcc signext i8 @nd6_select_router(%struct.netif* null) #9, !dbg !2438
  %117 = icmp sgt i8 %116, -1, !dbg !2439
  br i1 %117, label %27, label %36, !dbg !2440
}

; Function Attrs: noredzone nounwind
define internal fastcc signext i8 @nd6_select_router(%struct.netif* readnone) unnamed_addr #0 !dbg !443 {
  %2 = icmp eq %struct.netif* %0, null
  %3 = load %struct.nd6_neighbor_cache_entry*, %struct.nd6_neighbor_cache_entry** getelementptr inbounds ([3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 0, i32 0), align 16, !dbg !2445, !tbaa !916
  %4 = icmp eq %struct.nd6_neighbor_cache_entry* %3, null, !dbg !2450
  br i1 %4, label %21, label %5, !dbg !2451

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %3, i64 0, i32 1, !dbg !2452
  %7 = load %struct.netif*, %struct.netif** %6, align 8, !dbg !2452, !tbaa !716
  %8 = icmp eq %struct.netif* %7, null, !dbg !2455
  br i1 %8, label %21, label %9, !dbg !2457

; <label>:9:                                      ; preds = %5
  br i1 %2, label %12, label %10, !dbg !2458

; <label>:10:                                     ; preds = %9
  %11 = icmp eq %struct.netif* %7, %0, !dbg !2459
  br i1 %11, label %17, label %21, !dbg !2460

; <label>:12:                                     ; preds = %9
  %13 = getelementptr inbounds %struct.netif, %struct.netif* %7, i64 0, i32 21, !dbg !2461
  %14 = load i8, i8* %13, align 1, !dbg !2461, !tbaa !2234
  %15 = and i8 %14, 5, !dbg !2462
  %16 = icmp eq i8 %15, 5, !dbg !2462
  br i1 %16, label %17, label %21, !dbg !2462

; <label>:17:                                     ; preds = %12, %10
  %18 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %3, i64 0, i32 4, !dbg !2463
  %19 = load i8, i8* %18, align 8, !dbg !2463, !tbaa !687
  switch i8 %19, label %20 [
    i8 1, label %21
    i8 2, label %57
  ], !dbg !2466

; <label>:20:                                     ; preds = %17
  br label %21, !dbg !2467

; <label>:21:                                     ; preds = %12, %20, %17, %5, %1, %10
  %22 = phi i8 [ -1, %17 ], [ -1, %10 ], [ -1, %12 ], [ -1, %5 ], [ -1, %1 ], [ 0, %20 ], !dbg !2470
  %23 = load %struct.nd6_neighbor_cache_entry*, %struct.nd6_neighbor_cache_entry** getelementptr inbounds ([3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 1, i32 0), align 16, !dbg !2445, !tbaa !916
  %24 = icmp eq %struct.nd6_neighbor_cache_entry* %23, null, !dbg !2450
  br i1 %24, label %110, label %92, !dbg !2451

; <label>:25:                                     ; preds = %132
  %26 = load i8, i8* @nd6_select_router.last_router, align 1, !dbg !2470, !tbaa !530
  br i1 %2, label %27, label %31, !dbg !2471

; <label>:27:                                     ; preds = %25
  %28 = add i8 %26, 1, !dbg !2473
  %29 = icmp sgt i8 %28, 2, !dbg !2474
  %30 = select i1 %29, i8 0, i8 %28, !dbg !2475
  store i8 %30, i8* @nd6_select_router.last_router, align 1, !dbg !2476
  br label %31, !dbg !2475

; <label>:31:                                     ; preds = %25, %27
  %32 = phi i8 [ %30, %27 ], [ %26, %25 ], !dbg !2478
  %33 = sext i8 %32 to i64, !dbg !2480
  %34 = getelementptr inbounds [3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 %33, i32 0, !dbg !2485
  %35 = load %struct.nd6_neighbor_cache_entry*, %struct.nd6_neighbor_cache_entry** %34, align 16, !dbg !2485, !tbaa !916
  %36 = icmp eq %struct.nd6_neighbor_cache_entry* %35, null, !dbg !2486
  br i1 %36, label %49, label %37, !dbg !2487

; <label>:37:                                     ; preds = %31
  %38 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %35, i64 0, i32 1, !dbg !2488
  %39 = load %struct.netif*, %struct.netif** %38, align 8, !dbg !2488, !tbaa !716
  %40 = icmp eq %struct.netif* %39, null, !dbg !2490
  br i1 %40, label %49, label %41, !dbg !2492

; <label>:41:                                     ; preds = %37
  br i1 %2, label %44, label %42, !dbg !2493

; <label>:42:                                     ; preds = %41
  %43 = icmp eq %struct.netif* %39, %0, !dbg !2494
  br i1 %43, label %57, label %49, !dbg !2495

; <label>:44:                                     ; preds = %41
  %45 = getelementptr inbounds %struct.netif, %struct.netif* %39, i64 0, i32 21, !dbg !2496
  %46 = load i8, i8* %45, align 1, !dbg !2496, !tbaa !2234
  %47 = and i8 %46, 5, !dbg !2497
  %48 = icmp eq i8 %47, 5, !dbg !2497
  br i1 %48, label %57, label %49, !dbg !2497

; <label>:49:                                     ; preds = %44, %37, %31, %42
  %50 = add i8 %32, 1, !dbg !2498
  %51 = icmp sgt i8 %50, 2, !dbg !2500
  %52 = select i1 %51, i8 0, i8 %50, !dbg !2501
  %53 = sext i8 %52 to i64, !dbg !2480
  %54 = getelementptr inbounds [3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 %53, i32 0, !dbg !2485
  %55 = load %struct.nd6_neighbor_cache_entry*, %struct.nd6_neighbor_cache_entry** %54, align 16, !dbg !2485, !tbaa !916
  %56 = icmp eq %struct.nd6_neighbor_cache_entry* %55, null, !dbg !2486
  br i1 %56, label %71, label %59, !dbg !2487

; <label>:57:                                     ; preds = %17, %104, %126, %44, %42, %64, %66, %84, %86, %91, %132
  %58 = phi i8 [ %111, %132 ], [ %32, %44 ], [ %32, %42 ], [ %52, %64 ], [ %52, %66 ], [ %74, %84 ], [ %74, %86 ], [ -1, %91 ], [ 0, %17 ], [ 1, %104 ], [ %128, %126 ], !dbg !2470
  ret i8 %58, !dbg !2502

; <label>:59:                                     ; preds = %49
  %60 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %55, i64 0, i32 1, !dbg !2488
  %61 = load %struct.netif*, %struct.netif** %60, align 8, !dbg !2488, !tbaa !716
  %62 = icmp eq %struct.netif* %61, null, !dbg !2490
  br i1 %62, label %71, label %63, !dbg !2492

; <label>:63:                                     ; preds = %59
  br i1 %2, label %66, label %64, !dbg !2493

; <label>:64:                                     ; preds = %63
  %65 = icmp eq %struct.netif* %61, %0, !dbg !2494
  br i1 %65, label %57, label %71, !dbg !2495

; <label>:66:                                     ; preds = %63
  %67 = getelementptr inbounds %struct.netif, %struct.netif* %61, i64 0, i32 21, !dbg !2496
  %68 = load i8, i8* %67, align 1, !dbg !2496, !tbaa !2234
  %69 = and i8 %68, 5, !dbg !2497
  %70 = icmp eq i8 %69, 5, !dbg !2497
  br i1 %70, label %57, label %71, !dbg !2497

; <label>:71:                                     ; preds = %66, %64, %59, %49
  %72 = add i8 %52, 1, !dbg !2498
  %73 = icmp sgt i8 %72, 2, !dbg !2500
  %74 = select i1 %73, i8 0, i8 %72, !dbg !2501
  %75 = sext i8 %74 to i64, !dbg !2480
  %76 = getelementptr inbounds [3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 %75, i32 0, !dbg !2485
  %77 = load %struct.nd6_neighbor_cache_entry*, %struct.nd6_neighbor_cache_entry** %76, align 16, !dbg !2485, !tbaa !916
  %78 = icmp eq %struct.nd6_neighbor_cache_entry* %77, null, !dbg !2486
  br i1 %78, label %91, label %79, !dbg !2487

; <label>:79:                                     ; preds = %71
  %80 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %77, i64 0, i32 1, !dbg !2488
  %81 = load %struct.netif*, %struct.netif** %80, align 8, !dbg !2488, !tbaa !716
  %82 = icmp eq %struct.netif* %81, null, !dbg !2490
  br i1 %82, label %91, label %83, !dbg !2492

; <label>:83:                                     ; preds = %79
  br i1 %2, label %86, label %84, !dbg !2493

; <label>:84:                                     ; preds = %83
  %85 = icmp eq %struct.netif* %81, %0, !dbg !2494
  br i1 %85, label %57, label %91, !dbg !2495

; <label>:86:                                     ; preds = %83
  %87 = getelementptr inbounds %struct.netif, %struct.netif* %81, i64 0, i32 21, !dbg !2496
  %88 = load i8, i8* %87, align 1, !dbg !2496, !tbaa !2234
  %89 = and i8 %88, 5, !dbg !2497
  %90 = icmp eq i8 %89, 5, !dbg !2497
  br i1 %90, label %57, label %91, !dbg !2497

; <label>:91:                                     ; preds = %86, %84, %79, %71
  br label %57

; <label>:92:                                     ; preds = %21
  %93 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %23, i64 0, i32 1, !dbg !2452
  %94 = load %struct.netif*, %struct.netif** %93, align 8, !dbg !2452, !tbaa !716
  %95 = icmp eq %struct.netif* %94, null, !dbg !2455
  br i1 %95, label %110, label %96, !dbg !2457

; <label>:96:                                     ; preds = %92
  br i1 %2, label %99, label %97, !dbg !2458

; <label>:97:                                     ; preds = %96
  %98 = icmp eq %struct.netif* %94, %0, !dbg !2459
  br i1 %98, label %104, label %110, !dbg !2460

; <label>:99:                                     ; preds = %96
  %100 = getelementptr inbounds %struct.netif, %struct.netif* %94, i64 0, i32 21, !dbg !2461
  %101 = load i8, i8* %100, align 1, !dbg !2461, !tbaa !2234
  %102 = and i8 %101, 5, !dbg !2462
  %103 = icmp eq i8 %102, 5, !dbg !2462
  br i1 %103, label %104, label %110, !dbg !2462

; <label>:104:                                    ; preds = %99, %97
  %105 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %23, i64 0, i32 4, !dbg !2463
  %106 = load i8, i8* %105, align 8, !dbg !2463, !tbaa !687
  switch i8 %106, label %107 [
    i8 1, label %110
    i8 2, label %57
  ], !dbg !2466

; <label>:107:                                    ; preds = %104
  %108 = icmp slt i8 %22, 0, !dbg !2503
  %109 = select i1 %108, i8 1, i8 %22, !dbg !2467
  br label %110, !dbg !2467

; <label>:110:                                    ; preds = %107, %104, %99, %97, %92, %21
  %111 = phi i8 [ %22, %104 ], [ %22, %97 ], [ %22, %99 ], [ %22, %92 ], [ %22, %21 ], [ %109, %107 ], !dbg !2470
  %112 = load %struct.nd6_neighbor_cache_entry*, %struct.nd6_neighbor_cache_entry** getelementptr inbounds ([3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 2, i32 0), align 16, !dbg !2445, !tbaa !916
  %113 = icmp eq %struct.nd6_neighbor_cache_entry* %112, null, !dbg !2450
  br i1 %113, label %132, label %114, !dbg !2451

; <label>:114:                                    ; preds = %110
  %115 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %112, i64 0, i32 1, !dbg !2452
  %116 = load %struct.netif*, %struct.netif** %115, align 8, !dbg !2452, !tbaa !716
  %117 = icmp eq %struct.netif* %116, null, !dbg !2455
  br i1 %117, label %132, label %118, !dbg !2457

; <label>:118:                                    ; preds = %114
  br i1 %2, label %121, label %119, !dbg !2458

; <label>:119:                                    ; preds = %118
  %120 = icmp eq %struct.netif* %116, %0, !dbg !2459
  br i1 %120, label %126, label %132, !dbg !2460

; <label>:121:                                    ; preds = %118
  %122 = getelementptr inbounds %struct.netif, %struct.netif* %116, i64 0, i32 21, !dbg !2461
  %123 = load i8, i8* %122, align 1, !dbg !2461, !tbaa !2234
  %124 = and i8 %123, 5, !dbg !2462
  %125 = icmp eq i8 %124, 5, !dbg !2462
  br i1 %125, label %126, label %132, !dbg !2462

; <label>:126:                                    ; preds = %121, %119
  %127 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %112, i64 0, i32 4, !dbg !2463
  %128 = load i8, i8* %127, align 8, !dbg !2463, !tbaa !687
  switch i8 %128, label %129 [
    i8 1, label %132
    i8 2, label %57
  ], !dbg !2466

; <label>:129:                                    ; preds = %126
  %130 = icmp slt i8 %111, 0, !dbg !2503
  %131 = select i1 %130, i8 2, i8 %111
  ret i8 %131

; <label>:132:                                    ; preds = %126, %121, %119, %114, %110
  %133 = icmp sgt i8 %111, -1, !dbg !2505
  br i1 %133, label %57, label %25, !dbg !2507
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @nd6_get_next_hop_addr_or_queue(%struct.netif*, %struct.pbuf*, %struct.ip6_addr* readonly, i8** nocapture) local_unnamed_addr #0 !dbg !2508 {
  %5 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %2, i64 0, i32 0, i64 0, !dbg !2533
  %6 = load i32, i32* %5, align 4, !dbg !2533, !tbaa !547
  %7 = load i8, i8* @nd6_cached_destination_index, align 1, !dbg !2533, !tbaa !530
  %8 = zext i8 %7 to i64, !dbg !2533
  %9 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %8, i32 0, i32 0, i64 0, !dbg !2533
  %10 = load i32, i32* %9, align 16, !dbg !2533, !tbaa !547
  %11 = icmp eq i32 %6, %10, !dbg !2533
  %12 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %2, i64 0, i32 0, i64 1
  br i1 %11, label %13, label %39, !dbg !2533

; <label>:13:                                     ; preds = %4
  %14 = load i32, i32* %12, align 4, !dbg !2533, !tbaa !547
  %15 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %8, i32 0, i32 0, i64 1, !dbg !2533
  %16 = load i32, i32* %15, align 4, !dbg !2533, !tbaa !547
  %17 = icmp eq i32 %14, %16, !dbg !2533
  br i1 %17, label %18, label %39, !dbg !2533

; <label>:18:                                     ; preds = %13
  %19 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %2, i64 0, i32 0, i64 2, !dbg !2533
  %20 = load i32, i32* %19, align 4, !dbg !2533, !tbaa !547
  %21 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %8, i32 0, i32 0, i64 2, !dbg !2533
  %22 = load i32, i32* %21, align 8, !dbg !2533, !tbaa !547
  %23 = icmp eq i32 %20, %22, !dbg !2533
  br i1 %23, label %24, label %39, !dbg !2533

; <label>:24:                                     ; preds = %18
  %25 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %2, i64 0, i32 0, i64 3, !dbg !2533
  %26 = load i32, i32* %25, align 4, !dbg !2533, !tbaa !547
  %27 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %8, i32 0, i32 0, i64 3, !dbg !2533
  %28 = load i32, i32* %27, align 4, !dbg !2533, !tbaa !547
  %29 = icmp eq i32 %26, %28, !dbg !2533
  br i1 %29, label %30, label %39, !dbg !2533

; <label>:30:                                     ; preds = %24
  %31 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %2, i64 0, i32 1, !dbg !2533
  %32 = load i8, i8* %31, align 4, !dbg !2533, !tbaa !742
  %33 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %8, i32 0, i32 1, !dbg !2533
  %34 = load i8, i8* %33, align 16, !dbg !2533, !tbaa !1398
  %35 = icmp eq i8 %32, %34, !dbg !2533
  br i1 %35, label %36, label %39, !dbg !2535

; <label>:36:                                     ; preds = %30
  %37 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 11), align 2, !dbg !2536, !tbaa !2538
  %38 = add i16 %37, 1, !dbg !2536
  store i16 %38, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 11), align 2, !dbg !2536, !tbaa !2538
  br label %418, !dbg !2539

; <label>:39:                                     ; preds = %30, %24, %18, %13, %4
  %40 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %2, i64 0, i32 1, !dbg !2544
  %41 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %2, i64 0, i32 0, i64 2
  %42 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %2, i64 0, i32 0, i64 3
  br label %43, !dbg !2545

; <label>:43:                                     ; preds = %68, %39
  %44 = phi i64 [ 0, %39 ], [ %69, %68 ]
  %45 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %44, i32 0, i32 0, i64 0, !dbg !2544
  %46 = load i32, i32* %45, align 16, !dbg !2544, !tbaa !547
  %47 = icmp eq i32 %6, %46, !dbg !2544
  br i1 %47, label %48, label %68, !dbg !2544

; <label>:48:                                     ; preds = %43
  %49 = load i32, i32* %12, align 4, !dbg !2544, !tbaa !547
  %50 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %44, i32 0, i32 0, i64 1, !dbg !2544
  %51 = load i32, i32* %50, align 4, !dbg !2544, !tbaa !547
  %52 = icmp eq i32 %49, %51, !dbg !2544
  br i1 %52, label %53, label %68, !dbg !2544

; <label>:53:                                     ; preds = %48
  %54 = load i32, i32* %41, align 4, !dbg !2544, !tbaa !547
  %55 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %44, i32 0, i32 0, i64 2, !dbg !2544
  %56 = load i32, i32* %55, align 8, !dbg !2544, !tbaa !547
  %57 = icmp eq i32 %54, %56, !dbg !2544
  br i1 %57, label %58, label %68, !dbg !2544

; <label>:58:                                     ; preds = %53
  %59 = load i32, i32* %42, align 4, !dbg !2544, !tbaa !547
  %60 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %44, i32 0, i32 0, i64 3, !dbg !2544
  %61 = load i32, i32* %60, align 4, !dbg !2544, !tbaa !547
  %62 = icmp eq i32 %59, %61, !dbg !2544
  br i1 %62, label %63, label %68, !dbg !2544

; <label>:63:                                     ; preds = %58
  %64 = load i8, i8* %40, align 4, !dbg !2544, !tbaa !742
  %65 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %44, i32 0, i32 1, !dbg !2544
  %66 = load i8, i8* %65, align 16, !dbg !2544, !tbaa !1398
  %67 = icmp eq i8 %64, %66, !dbg !2544
  br i1 %67, label %71, label %68, !dbg !2546

; <label>:68:                                     ; preds = %63, %58, %53, %48, %43
  %69 = add nuw nsw i64 %44, 1, !dbg !2547
  %70 = icmp ult i64 %69, 10, !dbg !2548
  br i1 %70, label %43, label %78, !dbg !2545, !llvm.loop !1403

; <label>:71:                                     ; preds = %63
  %72 = trunc i64 %44 to i16, !dbg !2546
  %73 = icmp ult i16 %72, 127, !dbg !2550
  br i1 %73, label %75, label %74, !dbg !2555

; <label>:74:                                     ; preds = %71
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0)) #8, !dbg !2556
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2559
  tail call void @ukplat_terminate(i32 3) #10, !dbg !2559
  unreachable, !dbg !2559

; <label>:75:                                     ; preds = %71
  %76 = trunc i64 %44 to i8, !dbg !2563
  store i8 %76, i8* @nd6_cached_destination_index, align 1, !dbg !2564, !tbaa !530
  %77 = and i64 %44, 255, !dbg !2565
  br label %418, !dbg !2567

; <label>:78:                                     ; preds = %68
  %79 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 0, i32 0, i32 0, i64 0), align 16, !dbg !2578, !tbaa !547
  %80 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 0, i32 0, i32 0, i64 1), align 4, !dbg !2578
  %81 = or i32 %80, %79, !dbg !2578
  %82 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 0, i32 0, i32 0, i64 2), align 8, !dbg !2578
  %83 = or i32 %81, %82, !dbg !2578
  %84 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 0, i32 0, i32 0, i64 3), align 4, !dbg !2578
  %85 = or i32 %83, %84, !dbg !2578
  %86 = icmp eq i32 %85, 0, !dbg !2578
  br i1 %86, label %199, label %87, !dbg !2578

; <label>:87:                                     ; preds = %78
  %88 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 1, i32 0, i32 0, i64 0), align 16, !dbg !2578, !tbaa !547
  %89 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 1, i32 0, i32 0, i64 1), align 4, !dbg !2578
  %90 = or i32 %89, %88, !dbg !2578
  %91 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 1, i32 0, i32 0, i64 2), align 8, !dbg !2578
  %92 = or i32 %90, %91, !dbg !2578
  %93 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 1, i32 0, i32 0, i64 3), align 4, !dbg !2578
  %94 = or i32 %92, %93, !dbg !2578
  %95 = icmp eq i32 %94, 0, !dbg !2578
  br i1 %95, label %199, label %96, !dbg !2578

; <label>:96:                                     ; preds = %87
  %97 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 2, i32 0, i32 0, i64 0), align 16, !dbg !2578, !tbaa !547
  %98 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 2, i32 0, i32 0, i64 1), align 4, !dbg !2578
  %99 = or i32 %98, %97, !dbg !2578
  %100 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 2, i32 0, i32 0, i64 2), align 8, !dbg !2578
  %101 = or i32 %99, %100, !dbg !2578
  %102 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 2, i32 0, i32 0, i64 3), align 4, !dbg !2578
  %103 = or i32 %101, %102, !dbg !2578
  %104 = icmp eq i32 %103, 0, !dbg !2578
  br i1 %104, label %199, label %105, !dbg !2578

; <label>:105:                                    ; preds = %96
  %106 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 3, i32 0, i32 0, i64 0), align 16, !dbg !2578, !tbaa !547
  %107 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 3, i32 0, i32 0, i64 1), align 4, !dbg !2578
  %108 = or i32 %107, %106, !dbg !2578
  %109 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 3, i32 0, i32 0, i64 2), align 8, !dbg !2578
  %110 = or i32 %108, %109, !dbg !2578
  %111 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 3, i32 0, i32 0, i64 3), align 4, !dbg !2578
  %112 = or i32 %110, %111, !dbg !2578
  %113 = icmp eq i32 %112, 0, !dbg !2578
  br i1 %113, label %199, label %114, !dbg !2578

; <label>:114:                                    ; preds = %105
  %115 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 4, i32 0, i32 0, i64 0), align 16, !dbg !2578, !tbaa !547
  %116 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 4, i32 0, i32 0, i64 1), align 4, !dbg !2578
  %117 = or i32 %116, %115, !dbg !2578
  %118 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 4, i32 0, i32 0, i64 2), align 8, !dbg !2578
  %119 = or i32 %117, %118, !dbg !2578
  %120 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 4, i32 0, i32 0, i64 3), align 4, !dbg !2578
  %121 = or i32 %119, %120, !dbg !2578
  %122 = icmp eq i32 %121, 0, !dbg !2578
  br i1 %122, label %199, label %123, !dbg !2578

; <label>:123:                                    ; preds = %114
  %124 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 5, i32 0, i32 0, i64 0), align 16, !dbg !2578, !tbaa !547
  %125 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 5, i32 0, i32 0, i64 1), align 4, !dbg !2578
  %126 = or i32 %125, %124, !dbg !2578
  %127 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 5, i32 0, i32 0, i64 2), align 8, !dbg !2578
  %128 = or i32 %126, %127, !dbg !2578
  %129 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 5, i32 0, i32 0, i64 3), align 4, !dbg !2578
  %130 = or i32 %128, %129, !dbg !2578
  %131 = icmp eq i32 %130, 0, !dbg !2578
  br i1 %131, label %199, label %132, !dbg !2578

; <label>:132:                                    ; preds = %123
  %133 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 6, i32 0, i32 0, i64 0), align 16, !dbg !2578, !tbaa !547
  %134 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 6, i32 0, i32 0, i64 1), align 4, !dbg !2578
  %135 = or i32 %134, %133, !dbg !2578
  %136 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 6, i32 0, i32 0, i64 2), align 8, !dbg !2578
  %137 = or i32 %135, %136, !dbg !2578
  %138 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 6, i32 0, i32 0, i64 3), align 4, !dbg !2578
  %139 = or i32 %137, %138, !dbg !2578
  %140 = icmp eq i32 %139, 0, !dbg !2578
  br i1 %140, label %199, label %141, !dbg !2578

; <label>:141:                                    ; preds = %132
  %142 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 7, i32 0, i32 0, i64 0), align 16, !dbg !2578, !tbaa !547
  %143 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 7, i32 0, i32 0, i64 1), align 4, !dbg !2578
  %144 = or i32 %143, %142, !dbg !2578
  %145 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 7, i32 0, i32 0, i64 2), align 8, !dbg !2578
  %146 = or i32 %144, %145, !dbg !2578
  %147 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 7, i32 0, i32 0, i64 3), align 4, !dbg !2578
  %148 = or i32 %146, %147, !dbg !2578
  %149 = icmp eq i32 %148, 0, !dbg !2578
  br i1 %149, label %199, label %150, !dbg !2578

; <label>:150:                                    ; preds = %141
  %151 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 8, i32 0, i32 0, i64 0), align 16, !dbg !2578, !tbaa !547
  %152 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 8, i32 0, i32 0, i64 1), align 4, !dbg !2578
  %153 = or i32 %152, %151, !dbg !2578
  %154 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 8, i32 0, i32 0, i64 2), align 8, !dbg !2578
  %155 = or i32 %153, %154, !dbg !2578
  %156 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 8, i32 0, i32 0, i64 3), align 4, !dbg !2578
  %157 = or i32 %155, %156, !dbg !2578
  %158 = icmp eq i32 %157, 0, !dbg !2578
  br i1 %158, label %199, label %159, !dbg !2578

; <label>:159:                                    ; preds = %150
  %160 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 9, i32 0, i32 0, i64 0), align 16, !dbg !2578, !tbaa !547
  %161 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 9, i32 0, i32 0, i64 1), align 4, !dbg !2578
  %162 = or i32 %161, %160, !dbg !2578
  %163 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 9, i32 0, i32 0, i64 2), align 8, !dbg !2578
  %164 = or i32 %162, %163, !dbg !2578
  %165 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 9, i32 0, i32 0, i64 3), align 4, !dbg !2578
  %166 = or i32 %164, %165, !dbg !2578
  %167 = icmp eq i32 %166, 0, !dbg !2578
  br i1 %167, label %199, label %168, !dbg !2578

; <label>:168:                                    ; preds = %159
  %169 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 0, i32 3), align 4, !dbg !2584, !tbaa !2107
  %170 = icmp eq i32 %169, 0, !dbg !2589
  %171 = select i1 %170, i8 9, i8 0, !dbg !2590
  %172 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 1, i32 3), align 4, !dbg !2584, !tbaa !2107
  %173 = icmp eq i32 %172, 0, !dbg !2589
  %174 = select i1 %173, i8 %171, i8 1, !dbg !2590
  %175 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 2, i32 3), align 4, !dbg !2584, !tbaa !2107
  %176 = icmp eq i32 %175, 0, !dbg !2589
  %177 = select i1 %176, i8 %174, i8 2, !dbg !2590
  %178 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 3, i32 3), align 4, !dbg !2584, !tbaa !2107
  %179 = icmp eq i32 %178, 0, !dbg !2589
  %180 = select i1 %179, i8 %177, i8 3, !dbg !2590
  %181 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 4, i32 3), align 4, !dbg !2584, !tbaa !2107
  %182 = icmp eq i32 %181, 0, !dbg !2589
  %183 = select i1 %182, i8 %180, i8 4, !dbg !2590
  %184 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 5, i32 3), align 4, !dbg !2584, !tbaa !2107
  %185 = icmp eq i32 %184, 0, !dbg !2589
  %186 = select i1 %185, i8 %183, i8 5, !dbg !2590
  %187 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 6, i32 3), align 4, !dbg !2584, !tbaa !2107
  %188 = icmp eq i32 %187, 0, !dbg !2589
  %189 = select i1 %188, i8 %186, i8 6, !dbg !2590
  %190 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 7, i32 3), align 4, !dbg !2584, !tbaa !2107
  %191 = icmp eq i32 %190, 0, !dbg !2589
  %192 = select i1 %191, i8 %189, i8 7, !dbg !2590
  %193 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 8, i32 3), align 4, !dbg !2584, !tbaa !2107
  %194 = icmp eq i32 %193, 0, !dbg !2589
  %195 = select i1 %194, i8 %192, i8 8, !dbg !2590
  %196 = load i32, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 9, i32 3), align 4, !dbg !2584, !tbaa !2107
  %197 = icmp eq i32 %196, 0, !dbg !2589
  %198 = select i1 %197, i8 %195, i8 9, !dbg !2590
  br label %199, !dbg !2591

; <label>:199:                                    ; preds = %168, %159, %150, %141, %132, %123, %114, %105, %96, %87, %78
  %200 = phi i8 [ %198, %168 ], [ 0, %78 ], [ 1, %87 ], [ 2, %96 ], [ 3, %105 ], [ 4, %114 ], [ 5, %123 ], [ 6, %132 ], [ 7, %141 ], [ 8, %150 ], [ 9, %159 ], !dbg !2592
  store i8 %200, i8* @nd6_cached_destination_index, align 1, !dbg !2593, !tbaa !530
  %201 = icmp eq %struct.ip6_addr* %2, null, !dbg !2596
  %202 = zext i8 %200 to i64, !dbg !2596
  %203 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %202, i32 0, i32 0, i64 0, !dbg !2596
  br i1 %201, label %204, label %208, !dbg !2596

; <label>:204:                                    ; preds = %199
  %205 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %202, i32 0, i32 0, i64 1, !dbg !2596
  %206 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %202, i32 0, i32 0, i64 3, !dbg !2596
  %207 = bitcast i32* %203 to <4 x i32>*, !dbg !2596
  store <4 x i32> zeroinitializer, <4 x i32>* %207, align 16, !dbg !2596, !tbaa !547
  br label %216, !dbg !2596

; <label>:208:                                    ; preds = %199
  store i32 %6, i32* %203, align 16, !dbg !2596, !tbaa !547
  %209 = load i32, i32* %12, align 4, !dbg !2596, !tbaa !547
  %210 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %202, i32 0, i32 0, i64 1, !dbg !2596
  store i32 %209, i32* %210, align 4, !dbg !2596, !tbaa !547
  %211 = load i32, i32* %41, align 4, !dbg !2596, !tbaa !547
  %212 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %202, i32 0, i32 0, i64 2, !dbg !2596
  store i32 %211, i32* %212, align 8, !dbg !2596, !tbaa !547
  %213 = load i32, i32* %42, align 4, !dbg !2596, !tbaa !547
  %214 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %202, i32 0, i32 0, i64 3, !dbg !2596
  store i32 %213, i32* %214, align 4, !dbg !2596, !tbaa !547
  %215 = load i8, i8* %40, align 4, !dbg !2596, !tbaa !742
  br label %216, !dbg !2596

; <label>:216:                                    ; preds = %208, %204
  %217 = phi i32 [ %211, %208 ], [ 0, %204 ]
  %218 = phi i32 [ %6, %208 ], [ 0, %204 ]
  %219 = phi i32* [ %214, %208 ], [ %206, %204 ]
  %220 = phi i32* [ %210, %208 ], [ %205, %204 ]
  %221 = phi i8 [ %215, %208 ], [ 0, %204 ]
  %222 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %202, i32 0, i32 1, !dbg !2596
  store i8 %221, i8* %222, align 16, !dbg !2596, !tbaa !1398
  %223 = load i32, i32* %5, align 4, !dbg !2598, !tbaa !547
  %224 = and i32 %223, 49407, !dbg !2598
  %225 = icmp eq i32 %224, 33022, !dbg !2598
  br i1 %225, label %380, label %226, !dbg !2600

; <label>:226:                                    ; preds = %216
  %227 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 0, i32 1), align 8, !dbg !2612, !tbaa !1181
  %228 = icmp eq %struct.netif* %227, %0, !dbg !2617
  %229 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 0, i32 2), align 16, !dbg !2618
  %230 = icmp ne i32 %229, 0, !dbg !2619
  %231 = and i1 %228, %230, !dbg !2620
  %232 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 0, i32 0, i32 0, i64 0), align 16, !dbg !2621
  %233 = icmp eq i32 %223, %232, !dbg !2621
  %234 = and i1 %231, %233, !dbg !2620
  br i1 %234, label %235, label %243, !dbg !2620

; <label>:235:                                    ; preds = %226
  %236 = load i32, i32* %12, align 4, !dbg !2621, !tbaa !547
  %237 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 0, i32 0, i32 0, i64 1), align 4, !dbg !2621, !tbaa !547
  %238 = icmp eq i32 %236, %237, !dbg !2621
  br i1 %238, label %239, label %243, !dbg !2621

; <label>:239:                                    ; preds = %235
  %240 = load i8, i8* %40, align 4, !dbg !2621, !tbaa !742
  %241 = load i8, i8* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 0, i32 0, i32 1), align 16, !dbg !2621, !tbaa !1157
  %242 = icmp eq i8 %240, %241, !dbg !2621
  br i1 %242, label %380, label %243, !dbg !2622

; <label>:243:                                    ; preds = %239, %235, %226
  %244 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 1, i32 1), align 8, !dbg !2612, !tbaa !1181
  %245 = icmp eq %struct.netif* %244, %0, !dbg !2617
  %246 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 1, i32 2), align 8, !dbg !2618
  %247 = icmp ne i32 %246, 0, !dbg !2619
  %248 = and i1 %245, %247, !dbg !2620
  %249 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 1, i32 0, i32 0, i64 0), align 8, !dbg !2621
  %250 = icmp eq i32 %223, %249, !dbg !2621
  %251 = and i1 %248, %250, !dbg !2620
  br i1 %251, label %316, label %324, !dbg !2620

; <label>:252:                                    ; preds = %375
  %253 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 6, i64 0, !dbg !2623
  %254 = load i32, i32* %253, align 4, !dbg !2623, !tbaa !547
  %255 = icmp eq i32 %254, 0, !dbg !2623
  br i1 %255, label %256, label %270, !dbg !2628

; <label>:256:                                    ; preds = %252
  %257 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !2629
  %258 = load i32, i32* %257, align 8, !dbg !2629, !tbaa !530
  %259 = icmp eq i32 %223, %258, !dbg !2629
  br i1 %259, label %260, label %270, !dbg !2629

; <label>:260:                                    ; preds = %256
  %261 = load i32, i32* %12, align 4, !dbg !2629, !tbaa !547
  %262 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !2629
  %263 = load i32, i32* %262, align 4, !dbg !2629, !tbaa !530
  %264 = icmp eq i32 %261, %263, !dbg !2629
  br i1 %264, label %265, label %270, !dbg !2629

; <label>:265:                                    ; preds = %260
  %266 = load i8, i8* %40, align 4, !dbg !2629, !tbaa !742
  %267 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, i32 1, !dbg !2629
  %268 = load i8, i8* %267, align 8, !dbg !2629, !tbaa !530
  %269 = icmp eq i8 %266, %268, !dbg !2629
  br i1 %269, label %380, label %270, !dbg !2630

; <label>:270:                                    ; preds = %375, %265, %260, %256, %252
  %271 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 1, !dbg !2631
  %272 = load i8, i8* %271, align 1, !dbg !2631, !tbaa !530
  %273 = and i8 %272, 16, !dbg !2631
  %274 = icmp eq i8 %273, 0, !dbg !2631
  br i1 %274, label %293, label %275, !dbg !2632

; <label>:275:                                    ; preds = %270
  %276 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 6, i64 1, !dbg !2623
  %277 = load i32, i32* %276, align 4, !dbg !2623, !tbaa !547
  %278 = icmp eq i32 %277, 0, !dbg !2623
  br i1 %278, label %279, label %293, !dbg !2628

; <label>:279:                                    ; preds = %275
  %280 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 0, !dbg !2629
  %281 = load i32, i32* %280, align 8, !dbg !2629, !tbaa !530
  %282 = icmp eq i32 %223, %281, !dbg !2629
  br i1 %282, label %283, label %293, !dbg !2629

; <label>:283:                                    ; preds = %279
  %284 = load i32, i32* %12, align 4, !dbg !2629, !tbaa !547
  %285 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 1, !dbg !2629
  %286 = load i32, i32* %285, align 4, !dbg !2629, !tbaa !530
  %287 = icmp eq i32 %284, %286, !dbg !2629
  br i1 %287, label %288, label %293, !dbg !2629

; <label>:288:                                    ; preds = %283
  %289 = load i8, i8* %40, align 4, !dbg !2629, !tbaa !742
  %290 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 1, i32 0, i32 0, i32 1, !dbg !2629
  %291 = load i8, i8* %290, align 8, !dbg !2629, !tbaa !530
  %292 = icmp eq i8 %289, %291, !dbg !2629
  br i1 %292, label %380, label %293, !dbg !2630

; <label>:293:                                    ; preds = %288, %283, %279, %275, %270
  %294 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 2, !dbg !2631
  %295 = load i8, i8* %294, align 1, !dbg !2631, !tbaa !530
  %296 = and i8 %295, 16, !dbg !2631
  %297 = icmp eq i8 %296, 0, !dbg !2631
  br i1 %297, label %391, label %298, !dbg !2632

; <label>:298:                                    ; preds = %293
  %299 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 6, i64 2, !dbg !2623
  %300 = load i32, i32* %299, align 4, !dbg !2623, !tbaa !547
  %301 = icmp eq i32 %300, 0, !dbg !2623
  br i1 %301, label %302, label %391, !dbg !2628

; <label>:302:                                    ; preds = %298
  %303 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 0, !dbg !2629
  %304 = load i32, i32* %303, align 8, !dbg !2629, !tbaa !530
  %305 = icmp eq i32 %223, %304, !dbg !2629
  br i1 %305, label %306, label %391, !dbg !2629

; <label>:306:                                    ; preds = %302
  %307 = load i32, i32* %12, align 4, !dbg !2629, !tbaa !547
  %308 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 1, !dbg !2629
  %309 = load i32, i32* %308, align 4, !dbg !2629, !tbaa !530
  %310 = icmp eq i32 %307, %309, !dbg !2629
  br i1 %310, label %311, label %391, !dbg !2629

; <label>:311:                                    ; preds = %306
  %312 = load i8, i8* %40, align 4, !dbg !2629, !tbaa !742
  %313 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 2, i32 0, i32 0, i32 1, !dbg !2629
  %314 = load i8, i8* %313, align 8, !dbg !2629, !tbaa !530
  %315 = icmp eq i8 %312, %314, !dbg !2629
  br i1 %315, label %380, label %391, !dbg !2630

; <label>:316:                                    ; preds = %243
  %317 = load i32, i32* %12, align 4, !dbg !2621, !tbaa !547
  %318 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 1, i32 0, i32 0, i64 1), align 4, !dbg !2621, !tbaa !547
  %319 = icmp eq i32 %317, %318, !dbg !2621
  br i1 %319, label %320, label %324, !dbg !2621

; <label>:320:                                    ; preds = %316
  %321 = load i8, i8* %40, align 4, !dbg !2621, !tbaa !742
  %322 = load i8, i8* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 1, i32 0, i32 1), align 8, !dbg !2621, !tbaa !1157
  %323 = icmp eq i8 %321, %322, !dbg !2621
  br i1 %323, label %380, label %324, !dbg !2622

; <label>:324:                                    ; preds = %320, %316, %243
  %325 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 2, i32 1), align 8, !dbg !2612, !tbaa !1181
  %326 = icmp eq %struct.netif* %325, %0, !dbg !2617
  %327 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 2, i32 2), align 16, !dbg !2618
  %328 = icmp ne i32 %327, 0, !dbg !2619
  %329 = and i1 %326, %328, !dbg !2620
  %330 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 2, i32 0, i32 0, i64 0), align 16, !dbg !2621
  %331 = icmp eq i32 %223, %330, !dbg !2621
  %332 = and i1 %329, %331, !dbg !2620
  br i1 %332, label %333, label %341, !dbg !2620

; <label>:333:                                    ; preds = %324
  %334 = load i32, i32* %12, align 4, !dbg !2621, !tbaa !547
  %335 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 2, i32 0, i32 0, i64 1), align 4, !dbg !2621, !tbaa !547
  %336 = icmp eq i32 %334, %335, !dbg !2621
  br i1 %336, label %337, label %341, !dbg !2621

; <label>:337:                                    ; preds = %333
  %338 = load i8, i8* %40, align 4, !dbg !2621, !tbaa !742
  %339 = load i8, i8* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 2, i32 0, i32 1), align 16, !dbg !2621, !tbaa !1157
  %340 = icmp eq i8 %338, %339, !dbg !2621
  br i1 %340, label %380, label %341, !dbg !2622

; <label>:341:                                    ; preds = %337, %333, %324
  %342 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 3, i32 1), align 8, !dbg !2612, !tbaa !1181
  %343 = icmp eq %struct.netif* %342, %0, !dbg !2617
  %344 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 3, i32 2), align 8, !dbg !2618
  %345 = icmp ne i32 %344, 0, !dbg !2619
  %346 = and i1 %343, %345, !dbg !2620
  %347 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 3, i32 0, i32 0, i64 0), align 8, !dbg !2621
  %348 = icmp eq i32 %223, %347, !dbg !2621
  %349 = and i1 %346, %348, !dbg !2620
  br i1 %349, label %350, label %358, !dbg !2620

; <label>:350:                                    ; preds = %341
  %351 = load i32, i32* %12, align 4, !dbg !2621, !tbaa !547
  %352 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 3, i32 0, i32 0, i64 1), align 4, !dbg !2621, !tbaa !547
  %353 = icmp eq i32 %351, %352, !dbg !2621
  br i1 %353, label %354, label %358, !dbg !2621

; <label>:354:                                    ; preds = %350
  %355 = load i8, i8* %40, align 4, !dbg !2621, !tbaa !742
  %356 = load i8, i8* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 3, i32 0, i32 1), align 8, !dbg !2621, !tbaa !1157
  %357 = icmp eq i8 %355, %356, !dbg !2621
  br i1 %357, label %380, label %358, !dbg !2622

; <label>:358:                                    ; preds = %354, %350, %341
  %359 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 4, i32 1), align 8, !dbg !2612, !tbaa !1181
  %360 = icmp eq %struct.netif* %359, %0, !dbg !2617
  %361 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 4, i32 2), align 16, !dbg !2618
  %362 = icmp ne i32 %361, 0, !dbg !2619
  %363 = and i1 %360, %362, !dbg !2620
  %364 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 4, i32 0, i32 0, i64 0), align 16, !dbg !2621
  %365 = icmp eq i32 %223, %364, !dbg !2621
  %366 = and i1 %363, %365, !dbg !2620
  br i1 %366, label %367, label %375, !dbg !2620

; <label>:367:                                    ; preds = %358
  %368 = load i32, i32* %12, align 4, !dbg !2621, !tbaa !547
  %369 = load i32, i32* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 4, i32 0, i32 0, i64 1), align 4, !dbg !2621, !tbaa !547
  %370 = icmp eq i32 %368, %369, !dbg !2621
  br i1 %370, label %371, label %375, !dbg !2621

; <label>:371:                                    ; preds = %367
  %372 = load i8, i8* %40, align 4, !dbg !2621, !tbaa !742
  %373 = load i8, i8* getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 4, i32 0, i32 1), align 16, !dbg !2621, !tbaa !1157
  %374 = icmp eq i8 %372, %373, !dbg !2621
  br i1 %374, label %380, label %375, !dbg !2622

; <label>:375:                                    ; preds = %371, %367, %358
  %376 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 0, !dbg !2631
  %377 = load i8, i8* %376, align 1, !dbg !2631, !tbaa !530
  %378 = and i8 %377, 16, !dbg !2631
  %379 = icmp eq i8 %378, 0, !dbg !2631
  br i1 %379, label %270, label %252, !dbg !2632

; <label>:380:                                    ; preds = %371, %354, %337, %320, %311, %288, %265, %239, %216
  %381 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 18, !dbg !2633
  %382 = load i16, i16* %381, align 4, !dbg !2633, !tbaa !1117
  %383 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %202, i32 2, !dbg !2635
  store i16 %382, i16* %383, align 8, !dbg !2636, !tbaa !1502
  %384 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %202, i32 1, i32 0, i64 0, !dbg !2637
  store i32 %218, i32* %384, align 4, !dbg !2637, !tbaa !547
  %385 = load i32, i32* %220, align 4, !dbg !2637, !tbaa !547
  %386 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %202, i32 1, i32 0, i64 1, !dbg !2637
  store i32 %385, i32* %386, align 4, !dbg !2637, !tbaa !547
  %387 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %202, i32 1, i32 0, i64 2, !dbg !2637
  store i32 %217, i32* %387, align 4, !dbg !2637, !tbaa !547
  %388 = load i32, i32* %219, align 4, !dbg !2637, !tbaa !547
  %389 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %202, i32 1, i32 0, i64 3, !dbg !2637
  store i32 %388, i32* %389, align 4, !dbg !2637, !tbaa !547
  %390 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %202, i32 1, i32 1, !dbg !2637
  store i8 %221, i8* %390, align 4, !dbg !2637, !tbaa !1417
  br label %418, !dbg !2639

; <label>:391:                                    ; preds = %311, %306, %302, %298, %293
  %392 = tail call fastcc signext i8 @nd6_select_router(%struct.netif* nonnull %0) #8, !dbg !2640
  %393 = icmp slt i8 %392, 0, !dbg !2643
  br i1 %393, label %394, label %396, !dbg !2645

; <label>:394:                                    ; preds = %391
  store i32 0, i32* %203, align 16, !dbg !2646, !tbaa !547
  store i32 0, i32* %220, align 4, !dbg !2646, !tbaa !547
  %395 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %202, i32 0, i32 0, i64 2, !dbg !2646
  store i32 0, i32* %395, align 8, !dbg !2646, !tbaa !547
  store i32 0, i32* %219, align 4, !dbg !2646, !tbaa !547
  store i8 0, i8* %222, align 16, !dbg !2646, !tbaa !1398
  br label %592, !dbg !2649

; <label>:396:                                    ; preds = %391
  %397 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 18, !dbg !2650
  %398 = load i16, i16* %397, align 4, !dbg !2650, !tbaa !1117
  %399 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %202, i32 2, !dbg !2651
  store i16 %398, i16* %399, align 8, !dbg !2652, !tbaa !1502
  %400 = sext i8 %392 to i64, !dbg !2653
  %401 = getelementptr inbounds [3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 %400, i32 0, !dbg !2653
  %402 = load %struct.nd6_neighbor_cache_entry*, %struct.nd6_neighbor_cache_entry** %401, align 16, !dbg !2653, !tbaa !916
  %403 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %402, i64 0, i32 0, i32 0, i64 0, !dbg !2653
  %404 = load i32, i32* %403, align 8, !dbg !2653, !tbaa !547
  %405 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %202, i32 1, i32 0, i64 0, !dbg !2653
  store i32 %404, i32* %405, align 4, !dbg !2653, !tbaa !547
  %406 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %402, i64 0, i32 0, i32 0, i64 1, !dbg !2653
  %407 = load i32, i32* %406, align 4, !dbg !2653, !tbaa !547
  %408 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %202, i32 1, i32 0, i64 1, !dbg !2653
  store i32 %407, i32* %408, align 4, !dbg !2653, !tbaa !547
  %409 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %402, i64 0, i32 0, i32 0, i64 2, !dbg !2653
  %410 = load i32, i32* %409, align 8, !dbg !2653, !tbaa !547
  %411 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %202, i32 1, i32 0, i64 2, !dbg !2653
  store i32 %410, i32* %411, align 4, !dbg !2653, !tbaa !547
  %412 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %402, i64 0, i32 0, i32 0, i64 3, !dbg !2653
  %413 = load i32, i32* %412, align 4, !dbg !2653, !tbaa !547
  %414 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %202, i32 1, i32 0, i64 3, !dbg !2653
  store i32 %413, i32* %414, align 4, !dbg !2653, !tbaa !547
  %415 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %402, i64 0, i32 0, i32 1, !dbg !2653
  %416 = load i8, i8* %415, align 8, !dbg !2653, !tbaa !647
  %417 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %202, i32 1, i32 1, !dbg !2653
  store i8 %416, i8* %417, align 4, !dbg !2653, !tbaa !1417
  br label %418

; <label>:418:                                    ; preds = %396, %380, %75, %36
  %419 = phi i64 [ %77, %75 ], [ %202, %396 ], [ %202, %380 ], [ %8, %36 ], !dbg !2565
  %420 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %419, i32 1, i32 0, i64 0, !dbg !2565
  %421 = load i32, i32* %420, align 4, !dbg !2565, !tbaa !547
  %422 = load i8, i8* @nd6_cached_neighbor_index, align 1, !dbg !2565, !tbaa !530
  %423 = zext i8 %422 to i64, !dbg !2565
  %424 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %423, i32 0, i32 0, i64 0, !dbg !2565
  %425 = load i32, i32* %424, align 8, !dbg !2565, !tbaa !547
  %426 = icmp eq i32 %421, %425, !dbg !2565
  %427 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %419, i32 1, i32 0, i64 1
  br i1 %426, label %428, label %454, !dbg !2565

; <label>:428:                                    ; preds = %418
  %429 = load i32, i32* %427, align 4, !dbg !2565, !tbaa !547
  %430 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %423, i32 0, i32 0, i64 1, !dbg !2565
  %431 = load i32, i32* %430, align 4, !dbg !2565, !tbaa !547
  %432 = icmp eq i32 %429, %431, !dbg !2565
  br i1 %432, label %433, label %454, !dbg !2565

; <label>:433:                                    ; preds = %428
  %434 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %419, i32 1, i32 0, i64 2, !dbg !2565
  %435 = load i32, i32* %434, align 4, !dbg !2565, !tbaa !547
  %436 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %423, i32 0, i32 0, i64 2, !dbg !2565
  %437 = load i32, i32* %436, align 8, !dbg !2565, !tbaa !547
  %438 = icmp eq i32 %435, %437, !dbg !2565
  br i1 %438, label %439, label %454, !dbg !2565

; <label>:439:                                    ; preds = %433
  %440 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %419, i32 1, i32 0, i64 3, !dbg !2565
  %441 = load i32, i32* %440, align 4, !dbg !2565, !tbaa !547
  %442 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %423, i32 0, i32 0, i64 3, !dbg !2565
  %443 = load i32, i32* %442, align 4, !dbg !2565, !tbaa !547
  %444 = icmp eq i32 %441, %443, !dbg !2565
  br i1 %444, label %445, label %454, !dbg !2565

; <label>:445:                                    ; preds = %439
  %446 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %419, i32 1, i32 1, !dbg !2565
  %447 = load i8, i8* %446, align 4, !dbg !2565, !tbaa !1417
  %448 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %423, i32 0, i32 1, !dbg !2565
  %449 = load i8, i8* %448, align 8, !dbg !2565, !tbaa !647
  %450 = icmp eq i8 %447, %449, !dbg !2565
  br i1 %450, label %451, label %454, !dbg !2655

; <label>:451:                                    ; preds = %445
  %452 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 11), align 2, !dbg !2656, !tbaa !2538
  %453 = add i16 %452, 1, !dbg !2656
  store i16 %453, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 11), align 2, !dbg !2656, !tbaa !2538
  br label %512, !dbg !2658

; <label>:454:                                    ; preds = %445, %439, %433, %428, %418
  %455 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %419, i32 1, i32 1, !dbg !2662
  %456 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %419, i32 1, i32 0, i64 2
  %457 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %419, i32 1, i32 0, i64 3
  br label %458, !dbg !2663

; <label>:458:                                    ; preds = %483, %454
  %459 = phi i64 [ 0, %454 ], [ %484, %483 ]
  %460 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %459, i32 0, i32 0, i64 0, !dbg !2662
  %461 = load i32, i32* %460, align 8, !dbg !2662, !tbaa !547
  %462 = icmp eq i32 %421, %461, !dbg !2662
  br i1 %462, label %463, label %483, !dbg !2662

; <label>:463:                                    ; preds = %458
  %464 = load i32, i32* %427, align 4, !dbg !2662, !tbaa !547
  %465 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %459, i32 0, i32 0, i64 1, !dbg !2662
  %466 = load i32, i32* %465, align 4, !dbg !2662, !tbaa !547
  %467 = icmp eq i32 %464, %466, !dbg !2662
  br i1 %467, label %468, label %483, !dbg !2662

; <label>:468:                                    ; preds = %463
  %469 = load i32, i32* %456, align 4, !dbg !2662, !tbaa !547
  %470 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %459, i32 0, i32 0, i64 2, !dbg !2662
  %471 = load i32, i32* %470, align 8, !dbg !2662, !tbaa !547
  %472 = icmp eq i32 %469, %471, !dbg !2662
  br i1 %472, label %473, label %483, !dbg !2662

; <label>:473:                                    ; preds = %468
  %474 = load i32, i32* %457, align 4, !dbg !2662, !tbaa !547
  %475 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %459, i32 0, i32 0, i64 3, !dbg !2662
  %476 = load i32, i32* %475, align 4, !dbg !2662, !tbaa !547
  %477 = icmp eq i32 %474, %476, !dbg !2662
  br i1 %477, label %478, label %483, !dbg !2662

; <label>:478:                                    ; preds = %473
  %479 = load i8, i8* %455, align 4, !dbg !2662, !tbaa !742
  %480 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %459, i32 0, i32 1, !dbg !2662
  %481 = load i8, i8* %480, align 8, !dbg !2662, !tbaa !647
  %482 = icmp eq i8 %479, %481, !dbg !2662
  br i1 %482, label %486, label %483, !dbg !2664

; <label>:483:                                    ; preds = %478, %473, %468, %463, %458
  %484 = add nuw nsw i64 %459, 1, !dbg !2665
  %485 = icmp ult i64 %484, 10, !dbg !2666
  br i1 %485, label %458, label %489, !dbg !2663, !llvm.loop !654

; <label>:486:                                    ; preds = %478
  %487 = trunc i64 %459 to i8, !dbg !2664
  store i8 %487, i8* @nd6_cached_neighbor_index, align 1, !dbg !2667, !tbaa !530
  %488 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %419, i32 3, !dbg !2670
  store i32 0, i32* %488, align 4, !dbg !2671, !tbaa !2107
  br label %517, !dbg !2673

; <label>:489:                                    ; preds = %483
  %490 = tail call fastcc signext i8 @nd6_new_neighbor_cache_entry() #8, !dbg !2674
  %491 = icmp sgt i8 %490, -1, !dbg !2676
  br i1 %491, label %492, label %592, !dbg !2678

; <label>:492:                                    ; preds = %489
  store i8 %490, i8* @nd6_cached_neighbor_index, align 1, !dbg !2679, !tbaa !530
  %493 = load i8, i8* @nd6_cached_destination_index, align 1, !dbg !2681, !tbaa !530
  %494 = zext i8 %493 to i64, !dbg !2681
  %495 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %494, i32 1, i32 0, i64 0, !dbg !2681
  %496 = sext i8 %490 to i64, !dbg !2681
  %497 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %496, !dbg !2681
  %498 = bitcast i32* %495 to <4 x i32>*, !dbg !2681
  %499 = load <4 x i32>, <4 x i32>* %498, align 4, !dbg !2681, !tbaa !547
  %500 = bitcast %struct.nd6_neighbor_cache_entry* %497 to <4 x i32>*, !dbg !2681
  store <4 x i32> %499, <4 x i32>* %500, align 8, !dbg !2681, !tbaa !547
  %501 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %494, i32 1, i32 1, !dbg !2681
  %502 = load i8, i8* %501, align 4, !dbg !2681, !tbaa !1417
  %503 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %496, i32 0, i32 1, !dbg !2681
  store i8 %502, i8* %503, align 8, !dbg !2681, !tbaa !647
  %504 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %496, i32 5, !dbg !2683
  store i8 0, i8* %504, align 1, !dbg !2684, !tbaa !981
  %505 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %496, i32 1, !dbg !2685
  store %struct.netif* %0, %struct.netif** %505, align 8, !dbg !2686, !tbaa !716
  %506 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %496, i32 4, !dbg !2687
  store i8 1, i8* %506, align 8, !dbg !2688, !tbaa !687
  %507 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %496, i32 6, i32 0, !dbg !2689
  store i32 1, i32* %507, align 4, !dbg !2690, !tbaa !530
  %508 = getelementptr inbounds %struct.nd6_neighbor_cache_entry, %struct.nd6_neighbor_cache_entry* %497, i64 0, i32 0, !dbg !2694
  tail call fastcc void @nd6_send_ns(%struct.netif* %0, %struct.ip6_addr* nonnull %508, i8 zeroext 1) #8, !dbg !2695
  %509 = load i8, i8* @nd6_cached_destination_index, align 1, !dbg !2696, !tbaa !530
  %510 = load i8, i8* @nd6_cached_neighbor_index, align 1, !dbg !2697, !tbaa !530
  %511 = zext i8 %509 to i64, !dbg !2698
  br label %512

; <label>:512:                                    ; preds = %451, %492
  %513 = phi i64 [ %511, %492 ], [ %419, %451 ], !dbg !2698
  %514 = phi i8 [ %510, %492 ], [ %422, %451 ], !dbg !2697
  %515 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %513, i32 3, !dbg !2670
  store i32 0, i32* %515, align 4, !dbg !2671, !tbaa !2107
  %516 = icmp slt i8 %514, 0, !dbg !2699
  br i1 %516, label %592, label %517, !dbg !2673

; <label>:517:                                    ; preds = %486, %512
  %518 = phi i8 [ %487, %486 ], [ %514, %512 ]
  %519 = sext i8 %518 to i64, !dbg !2701
  %520 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %519, i32 4, !dbg !2703
  %521 = load i8, i8* %520, align 8, !dbg !2703, !tbaa !687
  switch i8 %521, label %526 [
    i8 3, label %522
    i8 2, label %524
    i8 4, label %524
    i8 5, label %524
  ], !dbg !2704

; <label>:522:                                    ; preds = %517
  store i8 4, i8* %520, align 8, !dbg !2705, !tbaa !687
  %523 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %519, i32 6, i32 0, !dbg !2707
  store i32 5, i32* %523, align 4, !dbg !2708, !tbaa !530
  br label %524, !dbg !2709

; <label>:524:                                    ; preds = %517, %517, %517, %522
  %525 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %519, i32 2, i64 0, !dbg !2711
  store i8* %525, i8** %3, align 8, !dbg !2713, !tbaa !2249
  br label %592, !dbg !2714

; <label>:526:                                    ; preds = %517
  store i8* null, i8** %3, align 8, !dbg !2715, !tbaa !2249
  %527 = icmp ugt i8 %518, 9, !dbg !2732
  br i1 %527, label %592, label %528, !dbg !2732

; <label>:528:                                    ; preds = %526
  %529 = icmp eq %struct.pbuf* %1, null, !dbg !2735
  br i1 %529, label %530, label %531, !dbg !2735

; <label>:530:                                    ; preds = %528
  tail call void @pbuf_ref(%struct.pbuf* null) #8, !dbg !2736
  br label %592, !dbg !2739

; <label>:531:                                    ; preds = %528, %537
  %532 = phi %struct.pbuf* [ %539, %537 ], [ %1, %528 ]
  %533 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %532, i64 0, i32 4, !dbg !2740
  %534 = load i8, i8* %533, align 4, !dbg !2740, !tbaa !2743
  %535 = and i8 %534, 64, !dbg !2740
  %536 = icmp eq i8 %535, 0, !dbg !2740
  br i1 %536, label %537, label %541, !dbg !2744

; <label>:537:                                    ; preds = %531
  %538 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %532, i64 0, i32 0, !dbg !2745
  %539 = load %struct.pbuf*, %struct.pbuf** %538, align 8, !dbg !2745, !tbaa !2746
  %540 = icmp eq %struct.pbuf* %539, null, !dbg !2735
  br i1 %540, label %556, label %531, !dbg !2735, !llvm.loop !2747

; <label>:541:                                    ; preds = %531
  %542 = tail call %struct.pbuf* @pbuf_clone(i32 14, i32 640, %struct.pbuf* nonnull %1) #8, !dbg !2750
  %543 = icmp eq %struct.pbuf* %542, null, !dbg !2752
  br i1 %543, label %544, label %557, !dbg !2753

; <label>:544:                                    ; preds = %541
  %545 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %519, i32 3
  %546 = bitcast %struct.nd6_q_entry** %545 to i64*
  br label %547, !dbg !2753

; <label>:547:                                    ; preds = %550, %544
  %548 = load %struct.nd6_q_entry*, %struct.nd6_q_entry** %545, align 8, !dbg !2754, !tbaa !723
  %549 = icmp eq %struct.nd6_q_entry* %548, null, !dbg !2755
  br i1 %549, label %592, label %550, !dbg !2756

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds %struct.nd6_q_entry, %struct.nd6_q_entry* %548, i64 0, i32 0, !dbg !2758
  %552 = bitcast %struct.nd6_q_entry* %548 to i64*, !dbg !2758
  %553 = load i64, i64* %552, align 8, !dbg !2758, !tbaa !1536
  store i64 %553, i64* %546, align 8, !dbg !2760, !tbaa !723
  store %struct.nd6_q_entry* null, %struct.nd6_q_entry** %551, align 8, !dbg !2761, !tbaa !1536
  tail call fastcc void @nd6_free_q(%struct.nd6_q_entry* nonnull %548) #8, !dbg !2762
  %554 = tail call %struct.pbuf* @pbuf_clone(i32 14, i32 640, %struct.pbuf* nonnull %1) #8, !dbg !2763
  %555 = icmp eq %struct.pbuf* %554, null, !dbg !2752
  br i1 %555, label %547, label %557, !dbg !2753, !llvm.loop !2764

; <label>:556:                                    ; preds = %537
  tail call void @pbuf_ref(%struct.pbuf* nonnull %1) #8, !dbg !2736
  br label %557, !dbg !2739

; <label>:557:                                    ; preds = %550, %556, %541
  %558 = phi %struct.pbuf* [ %1, %556 ], [ %542, %541 ], [ %554, %550 ]
  %559 = tail call i8* @memp_malloc(i32 12) #8, !dbg !2767
  %560 = bitcast i8* %559 to %struct.nd6_q_entry*, !dbg !2770
  %561 = icmp eq i8* %559, null, !dbg !2772
  br i1 %561, label %562, label %573, !dbg !2774

; <label>:562:                                    ; preds = %557
  %563 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %519, i32 3, !dbg !2775
  %564 = load %struct.nd6_q_entry*, %struct.nd6_q_entry** %563, align 8, !dbg !2775, !tbaa !723
  %565 = icmp eq %struct.nd6_q_entry* %564, null, !dbg !2776
  br i1 %565, label %573, label %566, !dbg !2777

; <label>:566:                                    ; preds = %562
  %567 = getelementptr inbounds %struct.nd6_q_entry, %struct.nd6_q_entry* %564, i64 0, i32 0, !dbg !2778
  %568 = bitcast %struct.nd6_q_entry* %564 to i64*, !dbg !2778
  %569 = load i64, i64* %568, align 8, !dbg !2778, !tbaa !1536
  %570 = bitcast %struct.nd6_q_entry** %563 to i64*, !dbg !2780
  store i64 %569, i64* %570, align 8, !dbg !2780, !tbaa !723
  store %struct.nd6_q_entry* null, %struct.nd6_q_entry** %567, align 8, !dbg !2781, !tbaa !1536
  tail call fastcc void @nd6_free_q(%struct.nd6_q_entry* nonnull %564) #8, !dbg !2782
  %571 = tail call i8* @memp_malloc(i32 12) #8, !dbg !2783
  %572 = bitcast i8* %571 to %struct.nd6_q_entry*, !dbg !2784
  br label %573, !dbg !2785

; <label>:573:                                    ; preds = %566, %562, %557
  %574 = phi %struct.nd6_q_entry* [ %572, %566 ], [ %560, %562 ], [ %560, %557 ], !dbg !2786
  %575 = icmp eq %struct.nd6_q_entry* %574, null, !dbg !2787
  br i1 %575, label %590, label %576, !dbg !2789

; <label>:576:                                    ; preds = %573
  %577 = getelementptr inbounds %struct.nd6_q_entry, %struct.nd6_q_entry* %574, i64 0, i32 0, !dbg !2790
  store %struct.nd6_q_entry* null, %struct.nd6_q_entry** %577, align 8, !dbg !2792, !tbaa !1536
  %578 = getelementptr inbounds %struct.nd6_q_entry, %struct.nd6_q_entry* %574, i64 0, i32 1, !dbg !2793
  store %struct.pbuf* %558, %struct.pbuf** %578, align 8, !dbg !2794, !tbaa !1540
  %579 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %519, i32 3, !dbg !2795
  %580 = load %struct.nd6_q_entry*, %struct.nd6_q_entry** %579, align 8, !dbg !2795, !tbaa !723
  %581 = icmp eq %struct.nd6_q_entry* %580, null, !dbg !2797
  br i1 %581, label %589, label %582, !dbg !2798

; <label>:582:                                    ; preds = %576, %582
  %583 = phi %struct.nd6_q_entry* [ %585, %582 ], [ %580, %576 ], !dbg !2799
  %584 = getelementptr inbounds %struct.nd6_q_entry, %struct.nd6_q_entry* %583, i64 0, i32 0, !dbg !2802
  %585 = load %struct.nd6_q_entry*, %struct.nd6_q_entry** %584, align 8, !dbg !2802, !tbaa !1536
  %586 = icmp eq %struct.nd6_q_entry* %585, null, !dbg !2803
  br i1 %586, label %587, label %582, !dbg !2804, !llvm.loop !2805

; <label>:587:                                    ; preds = %582
  %588 = getelementptr inbounds %struct.nd6_q_entry, %struct.nd6_q_entry* %583, i64 0, i32 0, !dbg !2802
  store %struct.nd6_q_entry* %574, %struct.nd6_q_entry** %588, align 8, !dbg !2808, !tbaa !1536
  br label %592, !dbg !2809

; <label>:589:                                    ; preds = %576
  store %struct.nd6_q_entry* %574, %struct.nd6_q_entry** %579, align 8, !dbg !2810, !tbaa !723
  br label %592

; <label>:590:                                    ; preds = %573
  %591 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %558) #8, !dbg !2812
  br label %592

; <label>:592:                                    ; preds = %547, %489, %394, %590, %589, %587, %530, %526, %512, %524
  %593 = phi i8 [ 0, %524 ], [ %514, %512 ], [ -16, %526 ], [ -1, %590 ], [ 0, %589 ], [ 0, %587 ], [ -1, %530 ], [ -1, %489 ], [ -4, %394 ], [ -1, %547 ], !dbg !2814
  ret i8 %593, !dbg !2815
}

; Function Attrs: noredzone nounwind readonly
define dso_local zeroext i16 @nd6_get_destination_mtu(%struct.ip6_addr* nocapture readonly, %struct.netif* readonly) local_unnamed_addr #6 !dbg !2816 {
  %3 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 1, !dbg !2828
  %4 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 0
  %5 = load i32, i32* %4, align 4, !tbaa !547
  %6 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 1
  %7 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 2
  %8 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 3
  br label %9, !dbg !2829

; <label>:9:                                      ; preds = %34, %2
  %10 = phi i64 [ 0, %2 ], [ %35, %34 ]
  %11 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %10, i32 0, i32 0, i64 0, !dbg !2828
  %12 = load i32, i32* %11, align 16, !dbg !2828, !tbaa !547
  %13 = icmp eq i32 %5, %12, !dbg !2828
  br i1 %13, label %14, label %34, !dbg !2828

; <label>:14:                                     ; preds = %9
  %15 = load i32, i32* %6, align 4, !dbg !2828, !tbaa !547
  %16 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %10, i32 0, i32 0, i64 1, !dbg !2828
  %17 = load i32, i32* %16, align 4, !dbg !2828, !tbaa !547
  %18 = icmp eq i32 %15, %17, !dbg !2828
  br i1 %18, label %19, label %34, !dbg !2828

; <label>:19:                                     ; preds = %14
  %20 = load i32, i32* %7, align 4, !dbg !2828, !tbaa !547
  %21 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %10, i32 0, i32 0, i64 2, !dbg !2828
  %22 = load i32, i32* %21, align 8, !dbg !2828, !tbaa !547
  %23 = icmp eq i32 %20, %22, !dbg !2828
  br i1 %23, label %24, label %34, !dbg !2828

; <label>:24:                                     ; preds = %19
  %25 = load i32, i32* %8, align 4, !dbg !2828, !tbaa !547
  %26 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %10, i32 0, i32 0, i64 3, !dbg !2828
  %27 = load i32, i32* %26, align 4, !dbg !2828, !tbaa !547
  %28 = icmp eq i32 %25, %27, !dbg !2828
  br i1 %28, label %29, label %34, !dbg !2828

; <label>:29:                                     ; preds = %24
  %30 = load i8, i8* %3, align 4, !dbg !2828, !tbaa !742
  %31 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %10, i32 0, i32 1, !dbg !2828
  %32 = load i8, i8* %31, align 16, !dbg !2828, !tbaa !1398
  %33 = icmp eq i8 %30, %32, !dbg !2828
  br i1 %33, label %37, label %34, !dbg !2830

; <label>:34:                                     ; preds = %29, %24, %19, %14, %9
  %35 = add nuw nsw i64 %10, 1, !dbg !2831
  %36 = icmp ult i64 %35, 10, !dbg !2832
  br i1 %36, label %9, label %43, !dbg !2829, !llvm.loop !1403

; <label>:37:                                     ; preds = %29
  %38 = shl i64 %10, 48, !dbg !2833
  %39 = ashr exact i64 %38, 48, !dbg !2833
  %40 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %39, i32 2, !dbg !2837
  %41 = load i16, i16* %40, align 8, !dbg !2837, !tbaa !1502
  %42 = icmp eq i16 %41, 0, !dbg !2838
  br i1 %42, label %43, label %48, !dbg !2839

; <label>:43:                                     ; preds = %34, %37
  %44 = icmp eq %struct.netif* %1, null, !dbg !2840
  br i1 %44, label %48, label %45, !dbg !2842

; <label>:45:                                     ; preds = %43
  %46 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 18, !dbg !2843
  %47 = load i16, i16* %46, align 4, !dbg !2843, !tbaa !1117
  br label %48, !dbg !2845

; <label>:48:                                     ; preds = %43, %37, %45
  %49 = phi i16 [ %47, %45 ], [ %41, %37 ], [ 1280, %43 ], !dbg !2846
  ret i16 %49, !dbg !2847
}

; Function Attrs: noredzone nounwind
define dso_local void @nd6_reachability_hint(%struct.ip6_addr* nocapture readonly) local_unnamed_addr #0 !dbg !2848 {
  %2 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 0, !dbg !2856
  %3 = load i32, i32* %2, align 4, !dbg !2856, !tbaa !547
  %4 = load i8, i8* @nd6_cached_destination_index, align 1, !dbg !2856, !tbaa !530
  %5 = zext i8 %4 to i64, !dbg !2856
  %6 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %5, i32 0, i32 0, i64 0, !dbg !2856
  %7 = load i32, i32* %6, align 16, !dbg !2856, !tbaa !547
  %8 = icmp eq i32 %3, %7, !dbg !2856
  %9 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 1
  br i1 %8, label %10, label %36, !dbg !2856

; <label>:10:                                     ; preds = %1
  %11 = load i32, i32* %9, align 4, !dbg !2856, !tbaa !547
  %12 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %5, i32 0, i32 0, i64 1, !dbg !2856
  %13 = load i32, i32* %12, align 4, !dbg !2856, !tbaa !547
  %14 = icmp eq i32 %11, %13, !dbg !2856
  br i1 %14, label %15, label %36, !dbg !2856

; <label>:15:                                     ; preds = %10
  %16 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 2, !dbg !2856
  %17 = load i32, i32* %16, align 4, !dbg !2856, !tbaa !547
  %18 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %5, i32 0, i32 0, i64 2, !dbg !2856
  %19 = load i32, i32* %18, align 8, !dbg !2856, !tbaa !547
  %20 = icmp eq i32 %17, %19, !dbg !2856
  br i1 %20, label %21, label %36, !dbg !2856

; <label>:21:                                     ; preds = %15
  %22 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 3, !dbg !2856
  %23 = load i32, i32* %22, align 4, !dbg !2856, !tbaa !547
  %24 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %5, i32 0, i32 0, i64 3, !dbg !2856
  %25 = load i32, i32* %24, align 4, !dbg !2856, !tbaa !547
  %26 = icmp eq i32 %23, %25, !dbg !2856
  br i1 %26, label %27, label %36, !dbg !2856

; <label>:27:                                     ; preds = %21
  %28 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 1, !dbg !2856
  %29 = load i8, i8* %28, align 4, !dbg !2856, !tbaa !742
  %30 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %5, i32 0, i32 1, !dbg !2856
  %31 = load i8, i8* %30, align 16, !dbg !2856, !tbaa !1398
  %32 = icmp eq i8 %29, %31, !dbg !2856
  br i1 %32, label %33, label %36, !dbg !2858

; <label>:33:                                     ; preds = %27
  %34 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 11), align 2, !dbg !2859, !tbaa !2538
  %35 = add i16 %34, 1, !dbg !2859
  store i16 %35, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 11), align 2, !dbg !2859, !tbaa !2538
  br label %68, !dbg !2861

; <label>:36:                                     ; preds = %1, %27, %21, %15, %10
  %37 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 1, !dbg !2866
  %38 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 2
  %39 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 3
  br label %40, !dbg !2867

; <label>:40:                                     ; preds = %65, %36
  %41 = phi i64 [ 0, %36 ], [ %66, %65 ]
  %42 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %41, i32 0, i32 0, i64 0, !dbg !2866
  %43 = load i32, i32* %42, align 16, !dbg !2866, !tbaa !547
  %44 = icmp eq i32 %3, %43, !dbg !2866
  br i1 %44, label %45, label %65, !dbg !2866

; <label>:45:                                     ; preds = %40
  %46 = load i32, i32* %9, align 4, !dbg !2866, !tbaa !547
  %47 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %41, i32 0, i32 0, i64 1, !dbg !2866
  %48 = load i32, i32* %47, align 4, !dbg !2866, !tbaa !547
  %49 = icmp eq i32 %46, %48, !dbg !2866
  br i1 %49, label %50, label %65, !dbg !2866

; <label>:50:                                     ; preds = %45
  %51 = load i32, i32* %38, align 4, !dbg !2866, !tbaa !547
  %52 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %41, i32 0, i32 0, i64 2, !dbg !2866
  %53 = load i32, i32* %52, align 8, !dbg !2866, !tbaa !547
  %54 = icmp eq i32 %51, %53, !dbg !2866
  br i1 %54, label %55, label %65, !dbg !2866

; <label>:55:                                     ; preds = %50
  %56 = load i32, i32* %39, align 4, !dbg !2866, !tbaa !547
  %57 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %41, i32 0, i32 0, i64 3, !dbg !2866
  %58 = load i32, i32* %57, align 4, !dbg !2866, !tbaa !547
  %59 = icmp eq i32 %56, %58, !dbg !2866
  br i1 %59, label %60, label %65, !dbg !2866

; <label>:60:                                     ; preds = %55
  %61 = load i8, i8* %37, align 4, !dbg !2866, !tbaa !742
  %62 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %41, i32 0, i32 1, !dbg !2866
  %63 = load i8, i8* %62, align 16, !dbg !2866, !tbaa !1398
  %64 = icmp eq i8 %61, %63, !dbg !2866
  br i1 %64, label %68, label %65, !dbg !2868

; <label>:65:                                     ; preds = %60, %55, %50, %45, %40
  %66 = add nuw nsw i64 %41, 1, !dbg !2869
  %67 = icmp ult i64 %66, 10, !dbg !2870
  br i1 %67, label %40, label %150, !dbg !2867, !llvm.loop !1403

; <label>:68:                                     ; preds = %60, %33
  %69 = phi i64 [ %5, %33 ], [ %41, %60 ]
  %70 = shl i64 %69, 48, !dbg !2871
  %71 = ashr exact i64 %70, 48, !dbg !2871
  %72 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %71, i32 1, i32 0, i64 0, !dbg !2871
  %73 = load i32, i32* %72, align 4, !dbg !2871, !tbaa !547
  %74 = load i8, i8* @nd6_cached_neighbor_index, align 1, !dbg !2871, !tbaa !530
  %75 = zext i8 %74 to i64, !dbg !2871
  %76 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %75, i32 0, i32 0, i64 0, !dbg !2871
  %77 = load i32, i32* %76, align 8, !dbg !2871, !tbaa !547
  %78 = icmp eq i32 %73, %77, !dbg !2871
  %79 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %71, i32 1, i32 0, i64 1
  br i1 %78, label %80, label %103, !dbg !2871

; <label>:80:                                     ; preds = %68
  %81 = load i32, i32* %79, align 4, !dbg !2871, !tbaa !547
  %82 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %75, i32 0, i32 0, i64 1, !dbg !2871
  %83 = load i32, i32* %82, align 4, !dbg !2871, !tbaa !547
  %84 = icmp eq i32 %81, %83, !dbg !2871
  br i1 %84, label %85, label %103, !dbg !2871

; <label>:85:                                     ; preds = %80
  %86 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %71, i32 1, i32 0, i64 2, !dbg !2871
  %87 = load i32, i32* %86, align 4, !dbg !2871, !tbaa !547
  %88 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %75, i32 0, i32 0, i64 2, !dbg !2871
  %89 = load i32, i32* %88, align 8, !dbg !2871, !tbaa !547
  %90 = icmp eq i32 %87, %89, !dbg !2871
  br i1 %90, label %91, label %103, !dbg !2871

; <label>:91:                                     ; preds = %85
  %92 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %71, i32 1, i32 0, i64 3, !dbg !2871
  %93 = load i32, i32* %92, align 4, !dbg !2871, !tbaa !547
  %94 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %75, i32 0, i32 0, i64 3, !dbg !2871
  %95 = load i32, i32* %94, align 4, !dbg !2871, !tbaa !547
  %96 = icmp eq i32 %93, %95, !dbg !2871
  br i1 %96, label %97, label %103, !dbg !2871

; <label>:97:                                     ; preds = %91
  %98 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %71, i32 1, i32 1, !dbg !2871
  %99 = load i8, i8* %98, align 4, !dbg !2871, !tbaa !1417
  %100 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %75, i32 0, i32 1, !dbg !2871
  %101 = load i8, i8* %100, align 8, !dbg !2871, !tbaa !647
  %102 = icmp eq i8 %99, %101, !dbg !2871
  br i1 %102, label %137, label %103, !dbg !2873

; <label>:103:                                    ; preds = %68, %97, %91, %85, %80
  %104 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %71, i32 1, i32 1, !dbg !2877
  %105 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %71, i32 1, i32 0, i64 2
  %106 = getelementptr inbounds [10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 %71, i32 1, i32 0, i64 3
  br label %107, !dbg !2878

; <label>:107:                                    ; preds = %132, %103
  %108 = phi i64 [ 0, %103 ], [ %133, %132 ]
  %109 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %108, i32 0, i32 0, i64 0, !dbg !2877
  %110 = load i32, i32* %109, align 8, !dbg !2877, !tbaa !547
  %111 = icmp eq i32 %73, %110, !dbg !2877
  br i1 %111, label %112, label %132, !dbg !2877

; <label>:112:                                    ; preds = %107
  %113 = load i32, i32* %79, align 4, !dbg !2877, !tbaa !547
  %114 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %108, i32 0, i32 0, i64 1, !dbg !2877
  %115 = load i32, i32* %114, align 4, !dbg !2877, !tbaa !547
  %116 = icmp eq i32 %113, %115, !dbg !2877
  br i1 %116, label %117, label %132, !dbg !2877

; <label>:117:                                    ; preds = %112
  %118 = load i32, i32* %105, align 4, !dbg !2877, !tbaa !547
  %119 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %108, i32 0, i32 0, i64 2, !dbg !2877
  %120 = load i32, i32* %119, align 8, !dbg !2877, !tbaa !547
  %121 = icmp eq i32 %118, %120, !dbg !2877
  br i1 %121, label %122, label %132, !dbg !2877

; <label>:122:                                    ; preds = %117
  %123 = load i32, i32* %106, align 4, !dbg !2877, !tbaa !547
  %124 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %108, i32 0, i32 0, i64 3, !dbg !2877
  %125 = load i32, i32* %124, align 4, !dbg !2877, !tbaa !547
  %126 = icmp eq i32 %123, %125, !dbg !2877
  br i1 %126, label %127, label %132, !dbg !2877

; <label>:127:                                    ; preds = %122
  %128 = load i8, i8* %104, align 4, !dbg !2877, !tbaa !742
  %129 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %108, i32 0, i32 1, !dbg !2877
  %130 = load i8, i8* %129, align 8, !dbg !2877, !tbaa !647
  %131 = icmp eq i8 %128, %130, !dbg !2877
  br i1 %131, label %135, label %132, !dbg !2879

; <label>:132:                                    ; preds = %127, %122, %117, %112, %107
  %133 = add nuw nsw i64 %108, 1, !dbg !2880
  %134 = icmp ult i64 %133, 10, !dbg !2881
  br i1 %134, label %107, label %150, !dbg !2878, !llvm.loop !654

; <label>:135:                                    ; preds = %127
  %136 = trunc i64 %108 to i8, !dbg !2879
  br label %141, !dbg !2883

; <label>:137:                                    ; preds = %97
  %138 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 11), align 2, !dbg !2884, !tbaa !2538
  %139 = add i16 %138, 1, !dbg !2884
  store i16 %139, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 12, i32 11), align 2, !dbg !2884, !tbaa !2538
  %140 = icmp slt i8 %74, 0, !dbg !2886
  br i1 %140, label %150, label %141, !dbg !2883

; <label>:141:                                    ; preds = %135, %137
  %142 = phi i8 [ %136, %135 ], [ %74, %137 ]
  %143 = sext i8 %142 to i64, !dbg !2888
  %144 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %143, i32 4, !dbg !2890
  %145 = load i8, i8* %144, align 8, !dbg !2890, !tbaa !687
  %146 = icmp ult i8 %145, 2, !dbg !2891
  br i1 %146, label %150, label %147, !dbg !2891

; <label>:147:                                    ; preds = %141
  store i8 2, i8* %144, align 8, !dbg !2892, !tbaa !687
  %148 = load i32, i32* @reachable_time, align 4, !dbg !2893, !tbaa !547
  %149 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %143, i32 6, i32 0, !dbg !2894
  store i32 %148, i32* %149, align 4, !dbg !2895, !tbaa !530
  br label %150, !dbg !2896

; <label>:150:                                    ; preds = %65, %132, %141, %137, %147
  ret void, !dbg !2896
}

; Function Attrs: noredzone nounwind
define dso_local void @nd6_cleanup_netif(%struct.netif* readnone) local_unnamed_addr #0 !dbg !2897 {
  %2 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 0, i32 1), align 8, !dbg !2904, !tbaa !1181
  %3 = icmp eq %struct.netif* %2, %0, !dbg !2909
  br i1 %3, label %4, label %5, !dbg !2910

; <label>:4:                                      ; preds = %1
  store %struct.netif* null, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 0, i32 1), align 8, !dbg !2911, !tbaa !1181
  br label %5, !dbg !2913

; <label>:5:                                      ; preds = %1, %4
  %6 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 1, i32 1), align 8, !dbg !2904, !tbaa !1181
  %7 = icmp eq %struct.netif* %6, %0, !dbg !2909
  br i1 %7, label %42, label %43, !dbg !2910

; <label>:8:                                      ; preds = %54, %33
  %9 = phi i64 [ %34, %33 ], [ 0, %54 ]
  %10 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %9, !dbg !2914
  %11 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %9, i32 1, !dbg !2919
  %12 = load %struct.netif*, %struct.netif** %11, align 8, !dbg !2919, !tbaa !716
  %13 = icmp eq %struct.netif* %12, %0, !dbg !2920
  br i1 %13, label %14, label %33, !dbg !2921

; <label>:14:                                     ; preds = %8
  %15 = load %struct.nd6_neighbor_cache_entry*, %struct.nd6_neighbor_cache_entry** getelementptr inbounds ([3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 0, i32 0), align 16, !dbg !2923, !tbaa !916
  %16 = icmp eq %struct.nd6_neighbor_cache_entry* %15, %10, !dbg !2929
  br i1 %16, label %17, label %18, !dbg !2930

; <label>:17:                                     ; preds = %14
  store %struct.nd6_neighbor_cache_entry* null, %struct.nd6_neighbor_cache_entry** getelementptr inbounds ([3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 0, i32 0), align 16, !dbg !2931, !tbaa !916
  store i8 0, i8* getelementptr inbounds ([3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 0, i32 2), align 4, !dbg !2933, !tbaa !1032
  br label %18, !dbg !2934

; <label>:18:                                     ; preds = %14, %17
  %19 = load %struct.nd6_neighbor_cache_entry*, %struct.nd6_neighbor_cache_entry** getelementptr inbounds ([3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 1, i32 0), align 16, !dbg !2923, !tbaa !916
  %20 = icmp eq %struct.nd6_neighbor_cache_entry* %19, %10, !dbg !2929
  br i1 %20, label %37, label %38, !dbg !2930

; <label>:21:                                     ; preds = %38, %41
  %22 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %9, i32 5, !dbg !2935
  store i8 0, i8* %22, align 1, !dbg !2936, !tbaa !981
  %23 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %9, i32 3, !dbg !2939
  %24 = load %struct.nd6_q_entry*, %struct.nd6_q_entry** %23, align 8, !dbg !2939, !tbaa !723
  %25 = icmp eq %struct.nd6_q_entry* %24, null, !dbg !2940
  br i1 %25, label %27, label %26, !dbg !2941

; <label>:26:                                     ; preds = %21
  tail call fastcc void @nd6_free_q(%struct.nd6_q_entry* nonnull %24) #8, !dbg !2942
  store %struct.nd6_q_entry* null, %struct.nd6_q_entry** %23, align 8, !dbg !2943, !tbaa !723
  br label %27, !dbg !2944

; <label>:27:                                     ; preds = %26, %21
  %28 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %9, i32 4, !dbg !2945
  store i8 0, i8* %28, align 8, !dbg !2946, !tbaa !687
  store i8 0, i8* %22, align 1, !dbg !2947, !tbaa !981
  store %struct.netif* null, %struct.netif** %11, align 8, !dbg !2948, !tbaa !716
  %29 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %9, i32 6, i32 0, !dbg !2949
  store i32 0, i32* %29, align 4, !dbg !2950, !tbaa !530
  %30 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %9, i32 0, i32 0, i64 0, !dbg !2951
  %31 = bitcast i32* %30 to <4 x i32>*, !dbg !2951
  store <4 x i32> zeroinitializer, <4 x i32>* %31, align 8, !dbg !2951, !tbaa !547
  %32 = getelementptr inbounds [10 x %struct.nd6_neighbor_cache_entry], [10 x %struct.nd6_neighbor_cache_entry]* @neighbor_cache, i64 0, i64 %9, i32 0, i32 1, !dbg !2951
  store i8 0, i8* %32, align 8, !dbg !2951, !tbaa !647
  br label %33, !dbg !2951

; <label>:33:                                     ; preds = %27, %8
  %34 = add nuw nsw i64 %9, 1, !dbg !2952
  %35 = icmp eq i64 %34, 10, !dbg !2953
  br i1 %35, label %36, label %8, !dbg !2954, !llvm.loop !2955

; <label>:36:                                     ; preds = %33
  store <4 x i32> zeroinitializer, <4 x i32>* bitcast ([10 x %struct.nd6_destination_cache_entry]* @destination_cache to <4 x i32>*), align 16, !dbg !2959, !tbaa !547
  store i8 0, i8* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 0, i32 0, i32 1), align 16, !dbg !2959, !tbaa !1398
  store <4 x i32> zeroinitializer, <4 x i32>* bitcast (i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 1, i32 0, i32 0, i64 0) to <4 x i32>*), align 16, !dbg !2959, !tbaa !547
  store i8 0, i8* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 1, i32 0, i32 1), align 16, !dbg !2959, !tbaa !1398
  store <4 x i32> zeroinitializer, <4 x i32>* bitcast (i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 2, i32 0, i32 0, i64 0) to <4 x i32>*), align 16, !dbg !2959, !tbaa !547
  store i8 0, i8* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 2, i32 0, i32 1), align 16, !dbg !2959, !tbaa !1398
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 3, i32 0, i32 0, i64 0), align 16, !dbg !2959, !tbaa !547
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 3, i32 0, i32 0, i64 1), align 4, !dbg !2959, !tbaa !547
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 3, i32 0, i32 0, i64 2), align 8, !dbg !2959, !tbaa !547
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 3, i32 0, i32 0, i64 3), align 4, !dbg !2959, !tbaa !547
  store i8 0, i8* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 3, i32 0, i32 1), align 16, !dbg !2959, !tbaa !1398
  store <4 x i32> zeroinitializer, <4 x i32>* bitcast (i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 4, i32 0, i32 0, i64 0) to <4 x i32>*), align 16, !dbg !2959, !tbaa !547
  store i8 0, i8* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 4, i32 0, i32 1), align 16, !dbg !2959, !tbaa !1398
  store <4 x i32> zeroinitializer, <4 x i32>* bitcast (i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 5, i32 0, i32 0, i64 0) to <4 x i32>*), align 16, !dbg !2959, !tbaa !547
  store i8 0, i8* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 5, i32 0, i32 1), align 16, !dbg !2959, !tbaa !1398
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 6, i32 0, i32 0, i64 0), align 16, !dbg !2959, !tbaa !547
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 6, i32 0, i32 0, i64 1), align 4, !dbg !2959, !tbaa !547
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 6, i32 0, i32 0, i64 2), align 8, !dbg !2959, !tbaa !547
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 6, i32 0, i32 0, i64 3), align 4, !dbg !2959, !tbaa !547
  store i8 0, i8* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 6, i32 0, i32 1), align 16, !dbg !2959, !tbaa !1398
  store <4 x i32> zeroinitializer, <4 x i32>* bitcast (i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 7, i32 0, i32 0, i64 0) to <4 x i32>*), align 16, !dbg !2959, !tbaa !547
  store i8 0, i8* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 7, i32 0, i32 1), align 16, !dbg !2959, !tbaa !1398
  store <4 x i32> zeroinitializer, <4 x i32>* bitcast (i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 8, i32 0, i32 0, i64 0) to <4 x i32>*), align 16, !dbg !2959, !tbaa !547
  store i8 0, i8* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 8, i32 0, i32 1), align 16, !dbg !2959, !tbaa !1398
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 9, i32 0, i32 0, i64 0), align 16, !dbg !2959, !tbaa !547
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 9, i32 0, i32 0, i64 1), align 4, !dbg !2959, !tbaa !547
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 9, i32 0, i32 0, i64 2), align 8, !dbg !2959, !tbaa !547
  store i32 0, i32* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 9, i32 0, i32 0, i64 3), align 4, !dbg !2959, !tbaa !547
  store i8 0, i8* getelementptr inbounds ([10 x %struct.nd6_destination_cache_entry], [10 x %struct.nd6_destination_cache_entry]* @destination_cache, i64 0, i64 9, i32 0, i32 1), align 16, !dbg !2959, !tbaa !1398
  ret void, !dbg !2960

; <label>:37:                                     ; preds = %18
  store %struct.nd6_neighbor_cache_entry* null, %struct.nd6_neighbor_cache_entry** getelementptr inbounds ([3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 1, i32 0), align 16, !dbg !2931, !tbaa !916
  store i8 0, i8* getelementptr inbounds ([3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 1, i32 2), align 4, !dbg !2933, !tbaa !1032
  br label %38, !dbg !2934

; <label>:38:                                     ; preds = %37, %18
  %39 = load %struct.nd6_neighbor_cache_entry*, %struct.nd6_neighbor_cache_entry** getelementptr inbounds ([3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 2, i32 0), align 16, !dbg !2923, !tbaa !916
  %40 = icmp eq %struct.nd6_neighbor_cache_entry* %39, %10, !dbg !2929
  br i1 %40, label %41, label %21, !dbg !2930

; <label>:41:                                     ; preds = %38
  store %struct.nd6_neighbor_cache_entry* null, %struct.nd6_neighbor_cache_entry** getelementptr inbounds ([3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 2, i32 0), align 16, !dbg !2931, !tbaa !916
  store i8 0, i8* getelementptr inbounds ([3 x %struct.nd6_router_list_entry], [3 x %struct.nd6_router_list_entry]* @default_router_list, i64 0, i64 2, i32 2), align 4, !dbg !2933, !tbaa !1032
  br label %21, !dbg !2934

; <label>:42:                                     ; preds = %5
  store %struct.netif* null, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 1, i32 1), align 8, !dbg !2911, !tbaa !1181
  br label %43, !dbg !2913

; <label>:43:                                     ; preds = %42, %5
  %44 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 2, i32 1), align 8, !dbg !2904, !tbaa !1181
  %45 = icmp eq %struct.netif* %44, %0, !dbg !2909
  br i1 %45, label %46, label %47, !dbg !2910

; <label>:46:                                     ; preds = %43
  store %struct.netif* null, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 2, i32 1), align 8, !dbg !2911, !tbaa !1181
  br label %47, !dbg !2913

; <label>:47:                                     ; preds = %46, %43
  %48 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 3, i32 1), align 8, !dbg !2904, !tbaa !1181
  %49 = icmp eq %struct.netif* %48, %0, !dbg !2909
  br i1 %49, label %50, label %51, !dbg !2910

; <label>:50:                                     ; preds = %47
  store %struct.netif* null, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 3, i32 1), align 8, !dbg !2911, !tbaa !1181
  br label %51, !dbg !2913

; <label>:51:                                     ; preds = %50, %47
  %52 = load %struct.netif*, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 4, i32 1), align 8, !dbg !2904, !tbaa !1181
  %53 = icmp eq %struct.netif* %52, %0, !dbg !2909
  br i1 %53, label %55, label %54, !dbg !2910

; <label>:54:                                     ; preds = %55, %51
  br label %8, !dbg !2914

; <label>:55:                                     ; preds = %51
  store %struct.netif* null, %struct.netif** getelementptr inbounds ([5 x %struct.nd6_prefix_list_entry], [5 x %struct.nd6_prefix_list_entry]* @prefix_list, i64 0, i64 4, i32 1), align 8, !dbg !2911, !tbaa !1181
  br label %54, !dbg !2913
}

; Function Attrs: noredzone nounwind
define dso_local void @nd6_adjust_mld_membership(%struct.netif*, i8 signext, i8 zeroext) local_unnamed_addr #0 !dbg !2961 {
  %4 = sext i8 %1 to i64, !dbg !2974
  %5 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 %4, !dbg !2974
  %6 = load i8, i8* %5, align 1, !dbg !2974, !tbaa !530
  switch i8 %6, label %7 [
    i8 0, label %10
    i8 64, label %10
  ], !dbg !2976

; <label>:7:                                      ; preds = %3
  %8 = icmp ne i8 %6, 8, !dbg !2977
  %9 = zext i1 %8 to i32
  br label %10

; <label>:10:                                     ; preds = %3, %3, %7
  %11 = phi i32 [ 0, %3 ], [ %9, %7 ], [ 0, %3 ]
  switch i8 %2, label %12 [
    i8 0, label %15
    i8 64, label %15
  ], !dbg !2978

; <label>:12:                                     ; preds = %10
  %13 = icmp ne i8 %2, 8, !dbg !2979
  %14 = zext i1 %13 to i8
  br label %15

; <label>:15:                                     ; preds = %10, %10, %12
  %16 = phi i8 [ 0, %10 ], [ %14, %12 ], [ 0, %10 ]
  %17 = zext i8 %16 to i32, !dbg !2981
  %18 = icmp eq i32 %11, %17, !dbg !2983
  br i1 %18, label %31, label %19, !dbg !2984

; <label>:19:                                     ; preds = %15
  store i32 767, i32* getelementptr inbounds (%struct.ip6_addr, %struct.ip6_addr* @multicast_address, i64 0, i32 0, i64 0), align 16, !dbg !2985, !tbaa !547
  store i32 0, i32* getelementptr inbounds (%struct.ip6_addr, %struct.ip6_addr* @multicast_address, i64 0, i32 0, i64 1), align 4, !dbg !2985, !tbaa !547
  store i32 16777216, i32* getelementptr inbounds (%struct.ip6_addr, %struct.ip6_addr* @multicast_address, i64 0, i32 0, i64 2), align 8, !dbg !2985, !tbaa !547
  %20 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 %4, i32 0, i32 0, i32 0, i64 3, !dbg !2985
  %21 = load i32, i32* %20, align 4, !dbg !2985, !tbaa !530
  %22 = or i32 %21, 255, !dbg !2985
  store i32 %22, i32* getelementptr inbounds (%struct.ip6_addr, %struct.ip6_addr* @multicast_address, i64 0, i32 0, i64 3), align 4, !dbg !2985, !tbaa !547
  %23 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 23, !dbg !2988
  %24 = load i8, i8* %23, align 8, !dbg !2988, !tbaa !550
  %25 = add i8 %24, 1, !dbg !2988
  store i8 %25, i8* getelementptr inbounds (%struct.ip6_addr, %struct.ip6_addr* @multicast_address, i64 0, i32 1), align 16, !dbg !2988, !tbaa !742
  %26 = icmp eq i8 %16, 0, !dbg !2989
  br i1 %26, label %29, label %27, !dbg !2991

; <label>:27:                                     ; preds = %19
  %28 = tail call signext i8 @mld6_joingroup_netif(%struct.netif* nonnull %0, %struct.ip6_addr* nonnull @multicast_address) #8, !dbg !2992
  br label %31, !dbg !2994

; <label>:29:                                     ; preds = %19
  %30 = tail call signext i8 @mld6_leavegroup_netif(%struct.netif* nonnull %0, %struct.ip6_addr* nonnull @multicast_address) #8, !dbg !2995
  br label %31

; <label>:31:                                     ; preds = %15, %27, %29
  ret void, !dbg !2997
}

; Function Attrs: noredzone
declare dso_local signext i8 @mld6_joingroup_netif(%struct.netif*, %struct.ip6_addr*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local signext i8 @mld6_leavegroup_netif(%struct.netif*, %struct.ip6_addr*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @nd6_restart_netif(%struct.netif* nocapture) local_unnamed_addr #0 !dbg !2998 {
  %2 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 25, !dbg !3002
  store i8 3, i8* %2, align 2, !dbg !3003, !tbaa !895
  ret void, !dbg !3004
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #7

; Function Attrs: noredzone
declare dso_local void @_uk_vprintk(i32, i8*, i8*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #7

; Function Attrs: noredzone
declare dso_local %struct.pbuf* @pbuf_alloc(i32, i16 zeroext, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local zeroext i16 @ip6_chksum_pseudo(%struct.pbuf*, i8 zeroext, i16 zeroext, %struct.ip6_addr*, %struct.ip6_addr*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local signext i8 @ip6_output_if(%struct.pbuf*, %struct.ip6_addr*, %struct.ip6_addr*, i8 zeroext, i8 zeroext, i8 zeroext, %struct.netif*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc void @nd6_free_q(%struct.nd6_q_entry*) unnamed_addr #0 !dbg !3005 {
  %2 = icmp eq %struct.nd6_q_entry* %0, null, !dbg !3012
  br i1 %2, label %3, label %4, !dbg !3015

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0)) #9, !dbg !3016
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !3019
  tail call void @ukplat_terminate(i32 3) #10, !dbg !3019
  unreachable, !dbg !3019

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.nd6_q_entry, %struct.nd6_q_entry* %0, i64 0, i32 1, !dbg !3023
  %6 = load %struct.pbuf*, %struct.pbuf** %5, align 8, !dbg !3023, !tbaa !1540
  %7 = icmp eq %struct.pbuf* %6, null, !dbg !3023
  br i1 %7, label %8, label %10, !dbg !3026

; <label>:8:                                      ; preds = %4
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0)) #9, !dbg !3027
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !3030
  tail call void @ukplat_terminate(i32 3) #10, !dbg !3030
  unreachable, !dbg !3030

; <label>:9:                                      ; preds = %18
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0)) #9, !dbg !3034
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !3040
  tail call void @ukplat_terminate(i32 3) #10, !dbg !3040
  unreachable, !dbg !3040

; <label>:10:                                     ; preds = %4, %18
  %11 = phi %struct.nd6_q_entry* [ %14, %18 ], [ %0, %4 ]
  %12 = phi %struct.pbuf* [ %20, %18 ], [ %6, %4 ]
  %13 = getelementptr inbounds %struct.nd6_q_entry, %struct.nd6_q_entry* %11, i64 0, i32 0, !dbg !3044
  %14 = load %struct.nd6_q_entry*, %struct.nd6_q_entry** %13, align 8, !dbg !3044, !tbaa !1536
  %15 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %12) #8, !dbg !3045
  %16 = bitcast %struct.nd6_q_entry* %11 to i8*, !dbg !3046
  tail call void @memp_free(i32 12, i8* %16) #8, !dbg !3047
  %17 = icmp eq %struct.nd6_q_entry* %14, null, !dbg !3048
  br i1 %17, label %22, label %18, !dbg !3048, !llvm.loop !3049

; <label>:18:                                     ; preds = %10
  %19 = getelementptr inbounds %struct.nd6_q_entry, %struct.nd6_q_entry* %14, i64 0, i32 1
  %20 = load %struct.pbuf*, %struct.pbuf** %19, align 8, !dbg !3051, !tbaa !1540
  %21 = icmp eq %struct.pbuf* %20, null, !dbg !3051
  br i1 %21, label %9, label %10, !dbg !3053

; <label>:22:                                     ; preds = %10
  ret void, !dbg !3054
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
attributes #6 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin noredzone nounwind }
attributes #9 = { nobuiltin noredzone }
attributes #10 = { nobuiltin noredzone noreturn nounwind }

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
!613 = !DILocation(line: 345, column: 11, scope: !597)
!614 = !DILocation(line: 354, column: 9, scope: !615)
!615 = distinct !DILexicalBlock(scope: !616, file: !3, line: 352, column: 52)
!616 = distinct !DILexicalBlock(scope: !582, file: !3, line: 352, column: 11)
!617 = !DILocation(line: 355, column: 9, scope: !615)
!618 = !DILocation(line: 356, column: 9, scope: !615)
!619 = !DILocation(line: 352, column: 11, scope: !616)
!620 = !DILocation(line: 300, column: 27, scope: !471)
!621 = !DILocation(line: 362, column: 61, scope: !622)
!622 = distinct !DILexicalBlock(scope: !582, file: !3, line: 362, column: 11)
!623 = !{!624, !520, i64 1}
!624 = !{!"lladdr_option", !520, i64 0, !520, i64 1, !520, i64 2}
!625 = !DILocation(line: 362, column: 49, scope: !622)
!626 = !DILocation(line: 362, column: 68, scope: !622)
!627 = !DILocation(line: 362, column: 46, scope: !622)
!628 = !DILocation(line: 362, column: 18, scope: !622)
!629 = !DILocation(line: 362, column: 11, scope: !582)
!630 = !DILocation(line: 364, column: 9, scope: !631)
!631 = distinct !DILexicalBlock(scope: !622, file: !3, line: 362, column: 76)
!632 = !DILocation(line: 365, column: 9, scope: !631)
!633 = !DILocation(line: 366, column: 9, scope: !631)
!634 = !DILocalVariable(name: "i", scope: !635, file: !3, line: 1403, type: !307)
!635 = distinct !DISubprogram(name: "nd6_find_neighbor_cache_entry", scope: !3, file: !3, line: 1401, type: !636, isLocal: true, isDefinition: true, scopeLine: 1402, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !638)
!636 = !DISubroutineType(types: !637)
!637 = !{!307, !162}
!638 = !{!639, !634}
!639 = !DILocalVariable(name: "ip6addr", arg: 1, scope: !635, file: !3, line: 1401, type: !162)
!640 = !DILocation(line: 1403, column: 8, scope: !635, inlinedAt: !641)
!641 = distinct !DILocation(line: 371, column: 11, scope: !582)
!642 = !DILocation(line: 1405, column: 9, scope: !643, inlinedAt: !641)
!643 = distinct !DILexicalBlock(scope: !644, file: !3, line: 1405, column: 9)
!644 = distinct !DILexicalBlock(scope: !645, file: !3, line: 1404, column: 48)
!645 = distinct !DILexicalBlock(scope: !646, file: !3, line: 1404, column: 3)
!646 = distinct !DILexicalBlock(scope: !635, file: !3, line: 1404, column: 3)
!647 = !{!648, !520, i64 16}
!648 = !{!"nd6_neighbor_cache_entry", !649, i64 0, !528, i64 24, !520, i64 32, !528, i64 40, !520, i64 48, !520, i64 49, !520, i64 52}
!649 = !{!"ip6_addr", !520, i64 0, !520, i64 16}
!650 = !DILocation(line: 1405, column: 9, scope: !644, inlinedAt: !641)
!651 = !DILocation(line: 1404, column: 44, scope: !645, inlinedAt: !641)
!652 = !DILocation(line: 1404, column: 17, scope: !645, inlinedAt: !641)
!653 = !DILocation(line: 1404, column: 3, scope: !646, inlinedAt: !641)
!654 = distinct !{!654, !655, !656}
!655 = !DILocation(line: 1404, column: 3, scope: !646)
!656 = !DILocation(line: 1408, column: 3, scope: !646)
!657 = !DILocation(line: 373, column: 21, scope: !658)
!658 = distinct !DILexicalBlock(scope: !659, file: !3, line: 373, column: 13)
!659 = distinct !DILexicalBlock(scope: !660, file: !3, line: 372, column: 19)
!660 = distinct !DILexicalBlock(scope: !582, file: !3, line: 372, column: 11)
!661 = !{!564, !520, i64 4}
!662 = !DILocation(line: 373, column: 27, scope: !658)
!663 = !DILocation(line: 373, column: 13, scope: !659)
!664 = !DILocation(line: 374, column: 11, scope: !665)
!665 = distinct !DILexicalBlock(scope: !658, file: !3, line: 373, column: 48)
!666 = !{!551, !520, i64 260}
!667 = !DILocation(line: 375, column: 9, scope: !665)
!668 = !DILocation(line: 1403, column: 8, scope: !635, inlinedAt: !669)
!669 = distinct !DILocation(line: 383, column: 11, scope: !670)
!670 = distinct !DILexicalBlock(scope: !574, file: !3, line: 377, column: 12)
!671 = !DILocation(line: 1405, column: 9, scope: !643, inlinedAt: !669)
!672 = !DILocation(line: 1405, column: 9, scope: !644, inlinedAt: !669)
!673 = !DILocation(line: 1404, column: 44, scope: !645, inlinedAt: !669)
!674 = !DILocation(line: 1404, column: 17, scope: !645, inlinedAt: !669)
!675 = !DILocation(line: 1404, column: 3, scope: !646, inlinedAt: !669)
!676 = !DILocation(line: 384, column: 13, scope: !677)
!677 = distinct !DILexicalBlock(scope: !670, file: !3, line: 384, column: 11)
!678 = !DILocation(line: 384, column: 11, scope: !670)
!679 = !DILocation(line: 386, column: 9, scope: !680)
!680 = distinct !DILexicalBlock(scope: !677, file: !3, line: 384, column: 18)
!681 = !DILocation(line: 391, column: 20, scope: !682)
!682 = distinct !DILexicalBlock(scope: !670, file: !3, line: 391, column: 11)
!683 = !DILocation(line: 391, column: 26, scope: !682)
!684 = !DILocation(line: 391, column: 47, scope: !682)
!685 = !DILocation(line: 392, column: 12, scope: !682)
!686 = !DILocation(line: 392, column: 30, scope: !682)
!687 = !{!648, !520, i64 48}
!688 = !DILocation(line: 392, column: 36, scope: !682)
!689 = !DILocation(line: 391, column: 11, scope: !670)
!690 = !DILocation(line: 394, column: 20, scope: !691)
!691 = distinct !DILexicalBlock(scope: !692, file: !3, line: 394, column: 13)
!692 = distinct !DILexicalBlock(scope: !682, file: !3, line: 392, column: 56)
!693 = !DILocation(line: 394, column: 13, scope: !692)
!694 = !DILocation(line: 396, column: 11, scope: !695)
!695 = distinct !DILexicalBlock(scope: !691, file: !3, line: 394, column: 54)
!696 = !DILocation(line: 397, column: 11, scope: !695)
!697 = !DILocation(line: 398, column: 11, scope: !695)
!698 = !DILocation(line: 394, column: 13, scope: !691)
!699 = !DILocation(line: 404, column: 63, scope: !700)
!700 = distinct !DILexicalBlock(scope: !692, file: !3, line: 404, column: 13)
!701 = !DILocation(line: 404, column: 51, scope: !700)
!702 = !DILocation(line: 404, column: 70, scope: !700)
!703 = !DILocation(line: 404, column: 48, scope: !700)
!704 = !DILocation(line: 404, column: 20, scope: !700)
!705 = !DILocation(line: 404, column: 13, scope: !692)
!706 = !DILocation(line: 406, column: 11, scope: !707)
!707 = distinct !DILexicalBlock(scope: !700, file: !3, line: 404, column: 78)
!708 = !DILocation(line: 407, column: 11, scope: !707)
!709 = !DILocation(line: 408, column: 11, scope: !707)
!710 = !DILocation(line: 412, column: 9, scope: !692)
!711 = !DILocation(line: 416, column: 25, scope: !670)
!712 = !DILocation(line: 413, column: 7, scope: !692)
!713 = !DILocation(line: 415, column: 7, scope: !670)
!714 = !DILocation(line: 415, column: 25, scope: !670)
!715 = !DILocation(line: 415, column: 31, scope: !670)
!716 = !{!648, !528, i64 24}
!717 = !DILocation(line: 416, column: 31, scope: !670)
!718 = !DILocation(line: 417, column: 50, scope: !670)
!719 = !DILocation(line: 417, column: 33, scope: !670)
!720 = !DILocation(line: 417, column: 48, scope: !670)
!721 = !DILocation(line: 420, column: 29, scope: !722)
!722 = distinct !DILexicalBlock(scope: !670, file: !3, line: 420, column: 11)
!723 = !{!648, !528, i64 40}
!724 = !DILocation(line: 420, column: 31, scope: !722)
!725 = !DILocation(line: 420, column: 11, scope: !670)
!726 = !DILocation(line: 421, column: 9, scope: !727)
!727 = distinct !DILexicalBlock(scope: !722, file: !3, line: 420, column: 40)
!728 = !DILocation(line: 422, column: 7, scope: !727)
!729 = !DILocation(line: 431, column: 5, scope: !476)
!730 = !DILocation(line: 435, column: 12, scope: !731)
!731 = distinct !DILexicalBlock(scope: !476, file: !3, line: 435, column: 9)
!732 = !DILocation(line: 435, column: 16, scope: !731)
!733 = !DILocation(line: 435, column: 9, scope: !476)
!734 = !DILocation(line: 437, column: 7, scope: !735)
!735 = distinct !DILexicalBlock(scope: !731, file: !3, line: 435, column: 44)
!736 = !DILocation(line: 438, column: 7, scope: !735)
!737 = !DILocation(line: 439, column: 7, scope: !735)
!738 = !DILocation(line: 553, column: 3, scope: !472)
!739 = !DILocation(line: 429, column: 23, scope: !476)
!740 = !DILocation(line: 446, column: 5, scope: !741)
!741 = distinct !DILexicalBlock(scope: !476, file: !3, line: 446, column: 5)
!742 = !{!649, !520, i64 16}
!743 = !DILocation(line: 447, column: 5, scope: !476)
!744 = !DILocation(line: 450, column: 9, scope: !745)
!745 = distinct !DILexicalBlock(scope: !476, file: !3, line: 450, column: 9)
!746 = !DILocation(line: 450, column: 43, scope: !745)
!747 = !DILocation(line: 450, column: 57, scope: !745)
!748 = !DILocation(line: 450, column: 68, scope: !745)
!749 = !{!750, !520, i64 1}
!750 = !{!"ns_header", !520, i64 0, !520, i64 1, !519, i64 2, !548, i64 4, !559, i64 8}
!751 = !DILocation(line: 450, column: 73, scope: !745)
!752 = !DILocation(line: 451, column: 8, scope: !745)
!753 = !DILocation(line: 450, column: 78, scope: !745)
!754 = !DILocation(line: 452, column: 7, scope: !755)
!755 = distinct !DILexicalBlock(scope: !745, file: !3, line: 451, column: 47)
!756 = !DILocation(line: 453, column: 7, scope: !755)
!757 = !DILocation(line: 454, column: 7, scope: !755)
!758 = !DILocation(line: 463, column: 16, scope: !759)
!759 = distinct !DILexicalBlock(scope: !476, file: !3, line: 463, column: 9)
!760 = !DILocation(line: 463, column: 9, scope: !476)
!761 = !DILocation(line: 463, column: 9, scope: !759)
!762 = !DILocation(line: 464, column: 63, scope: !763)
!763 = distinct !DILexicalBlock(scope: !759, file: !3, line: 463, column: 51)
!764 = !DILocation(line: 464, column: 20, scope: !763)
!765 = !DILocation(line: 430, column: 27, scope: !476)
!766 = !DILocation(line: 465, column: 61, scope: !767)
!767 = distinct !DILexicalBlock(scope: !763, file: !3, line: 465, column: 11)
!768 = !DILocation(line: 465, column: 49, scope: !767)
!769 = !DILocation(line: 465, column: 68, scope: !767)
!770 = !DILocation(line: 465, column: 46, scope: !767)
!771 = !DILocation(line: 465, column: 18, scope: !767)
!772 = !DILocation(line: 465, column: 11, scope: !763)
!773 = !DILocation(line: 0, scope: !774)
!774 = distinct !DILexicalBlock(scope: !759, file: !3, line: 468, column: 12)
!775 = !DILocation(line: 432, column: 10, scope: !476)
!776 = !DILocation(line: 475, column: 12, scope: !777)
!777 = distinct !DILexicalBlock(scope: !778, file: !3, line: 475, column: 11)
!778 = distinct !DILexicalBlock(scope: !779, file: !3, line: 474, column: 51)
!779 = distinct !DILexicalBlock(scope: !780, file: !3, line: 474, column: 5)
!780 = distinct !DILexicalBlock(scope: !476, file: !3, line: 474, column: 5)
!781 = !DILocation(line: 475, column: 59, scope: !777)
!782 = !DILocation(line: 476, column: 13, scope: !777)
!783 = !DILocation(line: 476, column: 64, scope: !777)
!784 = !DILocation(line: 478, column: 11, scope: !777)
!785 = !DILocation(line: 475, column: 11, scope: !778)
!786 = !DILocation(line: 491, column: 9, scope: !787)
!787 = distinct !DILexicalBlock(scope: !476, file: !3, line: 491, column: 9)
!788 = !DILocation(line: 493, column: 7, scope: !789)
!789 = distinct !DILexicalBlock(scope: !790, file: !3, line: 493, column: 7)
!790 = distinct !DILexicalBlock(scope: !787, file: !3, line: 491, column: 49)
!791 = !DILocation(line: 494, column: 14, scope: !792)
!792 = distinct !DILexicalBlock(scope: !793, file: !3, line: 494, column: 13)
!793 = distinct !DILexicalBlock(scope: !794, file: !3, line: 493, column: 53)
!794 = distinct !DILexicalBlock(scope: !789, file: !3, line: 493, column: 7)
!795 = !DILocation(line: 494, column: 63, scope: !792)
!796 = !DILocation(line: 495, column: 13, scope: !792)
!797 = !DILocation(line: 494, column: 13, scope: !793)
!798 = !DILocation(line: 497, column: 11, scope: !799)
!799 = distinct !DILexicalBlock(scope: !792, file: !3, line: 495, column: 68)
!800 = !DILocation(line: 498, column: 15, scope: !801)
!801 = distinct !DILexicalBlock(scope: !799, file: !3, line: 498, column: 15)
!802 = !DILocation(line: 498, column: 15, scope: !799)
!803 = !DILocation(line: 147, column: 43, scope: !587, inlinedAt: !804)
!804 = distinct !DILocation(line: 500, column: 13, scope: !805)
!805 = distinct !DILexicalBlock(scope: !801, file: !3, line: 498, column: 67)
!806 = !DILocation(line: 147, column: 55, scope: !587, inlinedAt: !804)
!807 = !DILocation(line: 155, column: 3, scope: !587, inlinedAt: !804)
!808 = !DILocation(line: 163, column: 16, scope: !594, inlinedAt: !804)
!809 = !DILocation(line: 163, column: 7, scope: !587, inlinedAt: !804)
!810 = !DILocation(line: 164, column: 10, scope: !593, inlinedAt: !804)
!811 = !DILocation(line: 166, column: 12, scope: !603, inlinedAt: !804)
!812 = !DILocation(line: 166, column: 63, scope: !603, inlinedAt: !804)
!813 = !DILocation(line: 167, column: 12, scope: !603, inlinedAt: !804)
!814 = !DILocation(line: 166, column: 11, scope: !604, inlinedAt: !804)
!815 = !DILocation(line: 168, column: 9, scope: !611, inlinedAt: !804)
!816 = !DILocation(line: 169, column: 7, scope: !611, inlinedAt: !804)
!817 = !DILocation(line: 493, column: 48, scope: !794)
!818 = !DILocation(line: 493, column: 21, scope: !794)
!819 = distinct !{!819, !788, !820}
!820 = !DILocation(line: 503, column: 7, scope: !789)
!821 = !DILocation(line: 507, column: 22, scope: !822)
!822 = distinct !DILexicalBlock(scope: !823, file: !3, line: 507, column: 11)
!823 = distinct !DILexicalBlock(scope: !787, file: !3, line: 504, column: 12)
!824 = !DILocation(line: 507, column: 11, scope: !823)
!825 = !DILocation(line: 1405, column: 9, scope: !643, inlinedAt: !826)
!826 = distinct !DILocation(line: 515, column: 11, scope: !823)
!827 = !DILocation(line: 509, column: 9, scope: !828)
!828 = distinct !DILexicalBlock(scope: !822, file: !3, line: 507, column: 31)
!829 = !DILocation(line: 510, column: 9, scope: !828)
!830 = !DILocation(line: 511, column: 9, scope: !828)
!831 = !DILocation(line: 1403, column: 8, scope: !635, inlinedAt: !826)
!832 = !DILocation(line: 1405, column: 9, scope: !644, inlinedAt: !826)
!833 = !DILocation(line: 1404, column: 44, scope: !645, inlinedAt: !826)
!834 = !DILocation(line: 1404, column: 17, scope: !645, inlinedAt: !826)
!835 = !DILocation(line: 1404, column: 3, scope: !646, inlinedAt: !826)
!836 = !DILocation(line: 518, column: 13, scope: !837)
!837 = distinct !DILexicalBlock(scope: !838, file: !3, line: 518, column: 13)
!838 = distinct !DILexicalBlock(scope: !839, file: !3, line: 516, column: 18)
!839 = distinct !DILexicalBlock(scope: !823, file: !3, line: 516, column: 11)
!840 = !DILocation(line: 518, column: 31, scope: !837)
!841 = !DILocation(line: 518, column: 37, scope: !837)
!842 = !DILocation(line: 518, column: 13, scope: !838)
!843 = !DILocation(line: 519, column: 29, scope: !844)
!844 = distinct !DILexicalBlock(scope: !837, file: !3, line: 518, column: 56)
!845 = !DILocation(line: 519, column: 35, scope: !844)
!846 = !DILocation(line: 520, column: 11, scope: !844)
!847 = !DILocation(line: 525, column: 9, scope: !844)
!848 = !DILocation(line: 530, column: 13, scope: !849)
!849 = distinct !DILexicalBlock(scope: !839, file: !3, line: 526, column: 14)
!850 = !DILocation(line: 531, column: 15, scope: !851)
!851 = distinct !DILexicalBlock(scope: !849, file: !3, line: 531, column: 13)
!852 = !DILocation(line: 531, column: 13, scope: !849)
!853 = !DILocation(line: 534, column: 11, scope: !854)
!854 = distinct !DILexicalBlock(scope: !851, file: !3, line: 531, column: 20)
!855 = !DILocation(line: 535, column: 11, scope: !854)
!856 = !{!517, !519, i64 298}
!857 = !DILocation(line: 538, column: 9, scope: !849)
!858 = !DILocation(line: 538, column: 27, scope: !849)
!859 = !DILocation(line: 538, column: 33, scope: !849)
!860 = !DILocation(line: 539, column: 9, scope: !849)
!861 = !DILocation(line: 540, column: 9, scope: !862)
!862 = distinct !DILexicalBlock(scope: !849, file: !3, line: 540, column: 9)
!863 = !DILocation(line: 544, column: 27, scope: !849)
!864 = !DILocation(line: 0, scope: !849)
!865 = !DILocation(line: 549, column: 7, scope: !823)
!866 = !DILocation(line: 431, column: 16, scope: !476)
!867 = !DILocation(line: 565, column: 12, scope: !868)
!868 = distinct !DILexicalBlock(scope: !481, file: !3, line: 565, column: 9)
!869 = !DILocation(line: 565, column: 16, scope: !868)
!870 = !DILocation(line: 565, column: 9, scope: !481)
!871 = !DILocation(line: 567, column: 7, scope: !872)
!872 = distinct !DILexicalBlock(scope: !868, file: !3, line: 565, column: 44)
!873 = !DILocation(line: 568, column: 7, scope: !872)
!874 = !DILocation(line: 569, column: 7, scope: !872)
!875 = !DILocation(line: 570, column: 7, scope: !872)
!876 = !DILocation(line: 556, column: 23, scope: !481)
!877 = !DILocation(line: 576, column: 10, scope: !878)
!878 = distinct !DILexicalBlock(scope: !481, file: !3, line: 576, column: 9)
!879 = !DILocation(line: 576, column: 55, scope: !878)
!880 = !DILocation(line: 577, column: 9, scope: !878)
!881 = !DILocation(line: 577, column: 43, scope: !878)
!882 = !DILocation(line: 577, column: 57, scope: !878)
!883 = !DILocation(line: 577, column: 68, scope: !878)
!884 = !{!885, !520, i64 1}
!885 = !{!"ra_header", !520, i64 0, !520, i64 1, !519, i64 2, !520, i64 4, !520, i64 5, !519, i64 6, !548, i64 8, !548, i64 12}
!886 = !DILocation(line: 577, column: 73, scope: !878)
!887 = !DILocation(line: 576, column: 9, scope: !481)
!888 = !DILocation(line: 578, column: 7, scope: !889)
!889 = distinct !DILexicalBlock(scope: !878, file: !3, line: 577, column: 79)
!890 = !DILocation(line: 579, column: 7, scope: !889)
!891 = !DILocation(line: 580, column: 7, scope: !889)
!892 = !DILocation(line: 581, column: 7, scope: !889)
!893 = !DILocation(line: 589, column: 15, scope: !894)
!894 = distinct !DILexicalBlock(scope: !481, file: !3, line: 589, column: 9)
!895 = !{!551, !520, i64 266}
!896 = !DILocation(line: 589, column: 24, scope: !894)
!897 = !DILocation(line: 589, column: 58, scope: !894)
!898 = !DILocation(line: 590, column: 10, scope: !894)
!899 = !DILocation(line: 590, column: 27, scope: !894)
!900 = !DILocation(line: 589, column: 9, scope: !481)
!901 = !DILocation(line: 0, scope: !902)
!902 = distinct !DILexicalBlock(scope: !894, file: !3, line: 590, column: 39)
!903 = !DILocalVariable(name: "netif", arg: 2, scope: !904, file: !3, line: 1778, type: !274)
!904 = distinct !DISubprogram(name: "nd6_get_router", scope: !3, file: !3, line: 1778, type: !444, isLocal: true, isDefinition: true, scopeLine: 1779, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !905)
!905 = !{!906, !903, !907}
!906 = !DILocalVariable(name: "router_addr", arg: 1, scope: !904, file: !3, line: 1778, type: !162)
!907 = !DILocalVariable(name: "i", scope: !904, file: !3, line: 1780, type: !307)
!908 = !DILocation(line: 1778, column: 61, scope: !904, inlinedAt: !909)
!909 = distinct !DILocation(line: 598, column: 9, scope: !481)
!910 = !DILocation(line: 1780, column: 8, scope: !904, inlinedAt: !909)
!911 = !DILocation(line: 1786, column: 33, scope: !912, inlinedAt: !909)
!912 = distinct !DILexicalBlock(scope: !913, file: !3, line: 1786, column: 9)
!913 = distinct !DILexicalBlock(scope: !914, file: !3, line: 1785, column: 46)
!914 = distinct !DILexicalBlock(scope: !915, file: !3, line: 1785, column: 3)
!915 = distinct !DILexicalBlock(scope: !904, file: !3, line: 1785, column: 3)
!916 = !{!917, !528, i64 0}
!917 = !{!"nd6_router_list_entry", !528, i64 0, !548, i64 8, !520, i64 12}
!918 = !DILocation(line: 1786, column: 48, scope: !912, inlinedAt: !909)
!919 = !DILocation(line: 1786, column: 57, scope: !912, inlinedAt: !909)
!920 = !DILocation(line: 1787, column: 76, scope: !912, inlinedAt: !909)
!921 = !DILocation(line: 1787, column: 34, scope: !912, inlinedAt: !909)
!922 = !DILocation(line: 1787, column: 10, scope: !912, inlinedAt: !909)
!923 = !DILocation(line: 1788, column: 9, scope: !912, inlinedAt: !909)
!924 = !DILocation(line: 1786, column: 9, scope: !913, inlinedAt: !909)
!925 = !DILocation(line: 1405, column: 9, scope: !643, inlinedAt: !926)
!926 = distinct !DILocation(line: 1814, column: 20, scope: !927, inlinedAt: !934)
!927 = distinct !DISubprogram(name: "nd6_new_router", scope: !3, file: !3, line: 1805, type: !444, isLocal: true, isDefinition: true, scopeLine: 1806, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !928)
!928 = !{!929, !930, !931, !932, !933}
!929 = !DILocalVariable(name: "router_addr", arg: 1, scope: !927, file: !3, line: 1805, type: !162)
!930 = !DILocalVariable(name: "netif", arg: 2, scope: !927, file: !3, line: 1805, type: !274)
!931 = !DILocalVariable(name: "router_index", scope: !927, file: !3, line: 1807, type: !307)
!932 = !DILocalVariable(name: "free_router_index", scope: !927, file: !3, line: 1808, type: !307)
!933 = !DILocalVariable(name: "neighbor_index", scope: !927, file: !3, line: 1809, type: !307)
!934 = distinct !DILocation(line: 601, column: 11, scope: !935)
!935 = distinct !DILexicalBlock(scope: !936, file: !3, line: 599, column: 16)
!936 = distinct !DILexicalBlock(scope: !481, file: !3, line: 599, column: 9)
!937 = !DILocation(line: 1403, column: 8, scope: !635, inlinedAt: !926)
!938 = !DILocation(line: 1405, column: 9, scope: !644, inlinedAt: !926)
!939 = !DILocation(line: 1404, column: 44, scope: !645, inlinedAt: !926)
!940 = !DILocation(line: 1404, column: 17, scope: !645, inlinedAt: !926)
!941 = !DILocation(line: 1404, column: 3, scope: !646, inlinedAt: !926)
!942 = !DILocation(line: 1809, column: 8, scope: !927, inlinedAt: !934)
!943 = !DILocation(line: 1815, column: 22, scope: !944, inlinedAt: !934)
!944 = distinct !DILexicalBlock(scope: !927, file: !3, line: 1815, column: 7)
!945 = !DILocation(line: 1815, column: 7, scope: !927, inlinedAt: !934)
!946 = !DILocation(line: 1831, column: 3, scope: !927, inlinedAt: !934)
!947 = !DILocation(line: 1817, column: 22, scope: !948, inlinedAt: !934)
!948 = distinct !DILexicalBlock(scope: !944, file: !3, line: 1815, column: 27)
!949 = !DILocation(line: 1818, column: 24, scope: !950, inlinedAt: !934)
!950 = distinct !DILexicalBlock(scope: !948, file: !3, line: 1818, column: 9)
!951 = !DILocation(line: 1818, column: 9, scope: !948, inlinedAt: !934)
!952 = !DILocation(line: 1822, column: 5, scope: !953, inlinedAt: !934)
!953 = distinct !DILexicalBlock(scope: !948, file: !3, line: 1822, column: 5)
!954 = !DILocation(line: 1823, column: 36, scope: !948, inlinedAt: !934)
!955 = !DILocation(line: 1823, column: 42, scope: !948, inlinedAt: !934)
!956 = !DILocation(line: 1824, column: 36, scope: !948, inlinedAt: !934)
!957 = !DILocation(line: 1824, column: 38, scope: !948, inlinedAt: !934)
!958 = !DILocation(line: 1825, column: 36, scope: !948, inlinedAt: !934)
!959 = !DILocation(line: 1825, column: 42, scope: !948, inlinedAt: !934)
!960 = !DILocation(line: 1826, column: 44, scope: !948, inlinedAt: !934)
!961 = !DILocation(line: 1826, column: 56, scope: !948, inlinedAt: !934)
!962 = !DILocalVariable(name: "entry", arg: 1, scope: !963, file: !3, line: 1168, type: !396)
!963 = distinct !DISubprogram(name: "nd6_send_neighbor_cache_probe", scope: !3, file: !3, line: 1168, type: !964, isLocal: true, isDefinition: true, scopeLine: 1169, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !966)
!964 = !DISubroutineType(types: !965)
!965 = !{null, !396, !117}
!966 = !{!962, !967}
!967 = !DILocalVariable(name: "flags", arg: 2, scope: !963, file: !3, line: 1168, type: !117)
!968 = !DILocation(line: 1168, column: 64, scope: !963, inlinedAt: !969)
!969 = distinct !DILocation(line: 1827, column: 5, scope: !948, inlinedAt: !934)
!970 = !DILocation(line: 1168, column: 76, scope: !963, inlinedAt: !969)
!971 = !DILocation(line: 1170, column: 37, scope: !963, inlinedAt: !969)
!972 = !DILocation(line: 1170, column: 3, scope: !963, inlinedAt: !969)
!973 = !DILocation(line: 1838, column: 42, scope: !974, inlinedAt: !934)
!974 = distinct !DILexicalBlock(scope: !975, file: !3, line: 1838, column: 8)
!975 = distinct !DILexicalBlock(scope: !976, file: !3, line: 1835, column: 84)
!976 = distinct !DILexicalBlock(scope: !977, file: !3, line: 1835, column: 3)
!977 = distinct !DILexicalBlock(scope: !927, file: !3, line: 1835, column: 3)
!978 = !DILocation(line: 1828, column: 3, scope: !948, inlinedAt: !934)
!979 = !DILocation(line: 1831, column: 34, scope: !927, inlinedAt: !934)
!980 = !DILocation(line: 1831, column: 43, scope: !927, inlinedAt: !934)
!981 = !{!648, !520, i64 49}
!982 = !DILocation(line: 1808, column: 8, scope: !927, inlinedAt: !934)
!983 = !DILocation(line: 1807, column: 8, scope: !927, inlinedAt: !934)
!984 = !DILocation(line: 1838, column: 57, scope: !974, inlinedAt: !934)
!985 = !DILocation(line: 1838, column: 8, scope: !975, inlinedAt: !934)
!986 = !DILocation(line: 1847, column: 5, scope: !987, inlinedAt: !934)
!987 = distinct !DILexicalBlock(scope: !988, file: !3, line: 1846, column: 49)
!988 = distinct !DILexicalBlock(scope: !927, file: !3, line: 1846, column: 7)
!989 = !DILocation(line: 1847, column: 44, scope: !987, inlinedAt: !934)
!990 = !DILocation(line: 1847, column: 59, scope: !987, inlinedAt: !934)
!991 = !DILocation(line: 1848, column: 5, scope: !987, inlinedAt: !934)
!992 = !DILocation(line: 1854, column: 43, scope: !927, inlinedAt: !934)
!993 = !DILocation(line: 1857, column: 3, scope: !927, inlinedAt: !934)
!994 = !DILocation(line: 1841, column: 58, scope: !995, inlinedAt: !934)
!995 = distinct !DILexicalBlock(scope: !975, file: !3, line: 1841, column: 9)
!996 = !DILocation(line: 1841, column: 9, scope: !975, inlinedAt: !934)
!997 = !DILocation(line: 1846, column: 25, scope: !988, inlinedAt: !934)
!998 = !DILocation(line: 1846, column: 7, scope: !927, inlinedAt: !934)
!999 = !DILocation(line: 606, column: 7, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 604, column: 16)
!1001 = distinct !DILexicalBlock(scope: !481, file: !3, line: 604, column: 9)
!1002 = !DILocation(line: 607, column: 7, scope: !1000)
!1003 = !DILocation(line: 608, column: 7, scope: !1000)
!1004 = !DILocation(line: 612, column: 68, scope: !481)
!1005 = !{!885, !519, i64 6}
!1006 = !DILocation(line: 612, column: 49, scope: !481)
!1007 = !DILocation(line: 612, column: 28, scope: !481)
!1008 = !DILocation(line: 612, column: 47, scope: !481)
!1009 = !{!917, !548, i64 8}
!1010 = !DILocation(line: 616, column: 17, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !481, file: !3, line: 616, column: 9)
!1012 = !{!885, !548, i64 12}
!1013 = !DILocation(line: 616, column: 31, scope: !1011)
!1014 = !DILocation(line: 616, column: 9, scope: !481)
!1015 = !DILocation(line: 617, column: 23, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 616, column: 36)
!1017 = !DILocation(line: 617, column: 21, scope: !1016)
!1018 = !DILocation(line: 618, column: 5, scope: !1016)
!1019 = !DILocation(line: 619, column: 17, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !481, file: !3, line: 619, column: 9)
!1021 = !{!885, !548, i64 8}
!1022 = !DILocation(line: 619, column: 32, scope: !1020)
!1023 = !DILocation(line: 619, column: 9, scope: !481)
!1024 = !DILocation(line: 620, column: 24, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1020, file: !3, line: 619, column: 37)
!1026 = !DILocation(line: 620, column: 22, scope: !1025)
!1027 = !DILocation(line: 621, column: 5, scope: !1025)
!1028 = !DILocation(line: 628, column: 44, scope: !481)
!1029 = !{!885, !520, i64 5}
!1030 = !DILocation(line: 628, column: 28, scope: !481)
!1031 = !DILocation(line: 628, column: 34, scope: !481)
!1032 = !{!917, !520, i64 12}
!1033 = !DILocation(line: 558, column: 11, scope: !481)
!1034 = !DILocation(line: 640, column: 16, scope: !481)
!1035 = !{!527, !519, i64 16}
!1036 = !DILocation(line: 640, column: 34, scope: !481)
!1037 = !DILocation(line: 640, column: 5, scope: !481)
!1038 = !DILocation(line: 643, column: 51, scope: !485)
!1039 = !DILocation(line: 643, column: 25, scope: !485)
!1040 = !DILocation(line: 643, column: 11, scope: !485)
!1041 = !DILocation(line: 644, column: 23, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !485, file: !3, line: 644, column: 11)
!1043 = !DILocation(line: 644, column: 11, scope: !485)
!1044 = !DILocation(line: 648, column: 20, scope: !485)
!1045 = !DILocation(line: 642, column: 13, scope: !485)
!1046 = !DILocation(line: 649, column: 11, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !485, file: !3, line: 649, column: 11)
!1048 = !DILocation(line: 649, column: 27, scope: !1047)
!1049 = !DILocation(line: 649, column: 24, scope: !1047)
!1050 = !DILocation(line: 649, column: 35, scope: !1047)
!1051 = !DILocation(line: 649, column: 22, scope: !1047)
!1052 = !DILocation(line: 649, column: 11, scope: !485)
!1053 = !DILocation(line: 653, column: 14, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !485, file: !3, line: 653, column: 11)
!1055 = !DILocation(line: 653, column: 18, scope: !1054)
!1056 = !DILocation(line: 653, column: 11, scope: !485)
!1057 = !DILocation(line: 655, column: 30, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1054, file: !3, line: 653, column: 33)
!1059 = !DILocation(line: 655, column: 19, scope: !1058)
!1060 = !DILocation(line: 557, column: 11, scope: !481)
!1061 = !DILocation(line: 656, column: 7, scope: !1058)
!1062 = !DILocation(line: 658, column: 24, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 658, column: 13)
!1064 = distinct !DILexicalBlock(scope: !1054, file: !3, line: 656, column: 14)
!1065 = !DILocation(line: 658, column: 13, scope: !1064)
!1066 = !DILocation(line: 659, column: 25, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1063, file: !3, line: 658, column: 49)
!1068 = !DILocation(line: 641, column: 12, scope: !485)
!1069 = !DILocation(line: 661, column: 27, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 661, column: 15)
!1071 = !DILocation(line: 661, column: 15, scope: !1067)
!1072 = !DILocation(line: 0, scope: !485)
!1073 = !DILocation(line: 668, column: 22, scope: !1064)
!1074 = !DILocation(line: 0, scope: !1064)
!1075 = !DILocation(line: 670, column: 21, scope: !485)
!1076 = !DILocation(line: 671, column: 7, scope: !485)
!1077 = !DILocation(line: 675, column: 24, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !489, file: !3, line: 675, column: 13)
!1079 = !DILocation(line: 675, column: 13, scope: !489)
!1080 = !DILocation(line: 674, column: 31, scope: !489)
!1081 = !DILocation(line: 679, column: 37, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !489, file: !3, line: 679, column: 13)
!1083 = !DILocation(line: 679, column: 52, scope: !1082)
!1084 = !DILocation(line: 679, column: 61, scope: !1082)
!1085 = !DILocation(line: 680, column: 53, scope: !1082)
!1086 = !DILocation(line: 680, column: 59, scope: !1082)
!1087 = !DILocation(line: 679, column: 13, scope: !489)
!1088 = !DILocation(line: 681, column: 11, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 680, column: 79)
!1090 = !DILocation(line: 682, column: 34, scope: !1089)
!1091 = !DILocation(line: 682, column: 50, scope: !1089)
!1092 = !DILocation(line: 682, column: 56, scope: !1089)
!1093 = !DILocation(line: 683, column: 75, scope: !1089)
!1094 = !DILocation(line: 683, column: 58, scope: !1089)
!1095 = !DILocation(line: 683, column: 73, scope: !1089)
!1096 = !DILocation(line: 684, column: 9, scope: !1089)
!1097 = !DILocation(line: 691, column: 24, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !492, file: !3, line: 691, column: 13)
!1099 = !DILocation(line: 691, column: 13, scope: !492)
!1100 = !DILocation(line: 689, column: 28, scope: !492)
!1101 = !DILocation(line: 695, column: 37, scope: !492)
!1102 = !{!1103, !548, i64 4}
!1103 = !{!"mtu_option", !520, i64 0, !520, i64 1, !519, i64 2, !548, i64 4}
!1104 = !DILocation(line: 695, column: 17, scope: !492)
!1105 = !DILocation(line: 690, column: 15, scope: !492)
!1106 = !DILocation(line: 696, column: 29, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !492, file: !3, line: 696, column: 13)
!1108 = !DILocation(line: 698, column: 20, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1110, file: !3, line: 698, column: 15)
!1110 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 696, column: 51)
!1111 = !{!551, !519, i64 250}
!1112 = !DILocation(line: 698, column: 15, scope: !1109)
!1113 = !DILocation(line: 698, column: 15, scope: !1110)
!1114 = !DILocation(line: 700, column: 25, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 698, column: 25)
!1116 = !DILocation(line: 700, column: 23, scope: !1115)
!1117 = !{!551, !519, i64 252}
!1118 = !DILocation(line: 701, column: 11, scope: !1115)
!1119 = !DILocation(line: 702, column: 25, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 701, column: 18)
!1121 = !DILocation(line: 702, column: 23, scope: !1120)
!1122 = !DILocation(line: 712, column: 24, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !495, file: !3, line: 712, column: 13)
!1124 = !DILocation(line: 712, column: 13, scope: !495)
!1125 = !DILocation(line: 710, column: 31, scope: !495)
!1126 = !DILocation(line: 719, column: 9, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !495, file: !3, line: 719, column: 9)
!1128 = !DILocation(line: 720, column: 9, scope: !495)
!1129 = !DILocation(line: 723, column: 28, scope: !499)
!1130 = !{!1131, !520, i64 3}
!1131 = !{!"prefix_option", !520, i64 0, !520, i64 1, !520, i64 2, !520, i64 3, !548, i64 4, !548, i64 8, !520, i64 12, !520, i64 15, !559, i64 16}
!1132 = !DILocation(line: 723, column: 34, scope: !499)
!1133 = !DILocation(line: 723, column: 61, scope: !499)
!1134 = !DILocation(line: 724, column: 28, scope: !499)
!1135 = !{!1131, !520, i64 2}
!1136 = !DILocation(line: 724, column: 42, scope: !499)
!1137 = !DILocation(line: 723, column: 15, scope: !500)
!1138 = !DILocation(line: 729, column: 49, scope: !498)
!1139 = !{!1131, !548, i64 4}
!1140 = !DILocation(line: 729, column: 26, scope: !498)
!1141 = !DILocation(line: 726, column: 19, scope: !498)
!1142 = !DILocation(line: 711, column: 20, scope: !495)
!1143 = !DILocalVariable(name: "prefix", arg: 1, scope: !1144, file: !3, line: 1868, type: !162)
!1144 = distinct !DISubprogram(name: "nd6_get_onlink_prefix", scope: !3, file: !3, line: 1868, type: !444, isLocal: true, isDefinition: true, scopeLine: 1869, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1145)
!1145 = !{!1143, !1146, !1147}
!1146 = !DILocalVariable(name: "netif", arg: 2, scope: !1144, file: !3, line: 1868, type: !274)
!1147 = !DILocalVariable(name: "i", scope: !1144, file: !3, line: 1870, type: !307)
!1148 = !DILocation(line: 1868, column: 41, scope: !1144, inlinedAt: !1149)
!1149 = distinct !DILocation(line: 732, column: 22, scope: !498)
!1150 = !DILocation(line: 1868, column: 63, scope: !1144, inlinedAt: !1149)
!1151 = !DILocation(line: 1870, column: 8, scope: !1144, inlinedAt: !1149)
!1152 = !DILocation(line: 1874, column: 10, scope: !1153, inlinedAt: !1149)
!1153 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 1874, column: 9)
!1154 = distinct !DILexicalBlock(scope: !1155, file: !3, line: 1873, column: 47)
!1155 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 1873, column: 3)
!1156 = distinct !DILexicalBlock(scope: !1144, file: !3, line: 1873, column: 3)
!1157 = !{!1158, !520, i64 16}
!1158 = !{!"nd6_prefix_list_entry", !649, i64 0, !528, i64 24, !548, i64 32}
!1159 = !DILocation(line: 1875, column: 25, scope: !1153, inlinedAt: !1149)
!1160 = !DILocation(line: 1875, column: 31, scope: !1153, inlinedAt: !1149)
!1161 = !DILocation(line: 1874, column: 61, scope: !1153, inlinedAt: !1149)
!1162 = !DILocation(line: 727, column: 18, scope: !498)
!1163 = !DILocation(line: 733, column: 42, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !498, file: !3, line: 733, column: 17)
!1165 = !DILocation(line: 733, column: 28, scope: !1164)
!1166 = !DILocalVariable(name: "prefix", arg: 1, scope: !1167, file: !3, line: 1892, type: !162)
!1167 = distinct !DISubprogram(name: "nd6_new_onlink_prefix", scope: !3, file: !3, line: 1892, type: !444, isLocal: true, isDefinition: true, scopeLine: 1893, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1168)
!1168 = !{!1166, !1169, !1170}
!1169 = !DILocalVariable(name: "netif", arg: 2, scope: !1167, file: !3, line: 1892, type: !274)
!1170 = !DILocalVariable(name: "i", scope: !1167, file: !3, line: 1894, type: !307)
!1171 = !DILocation(line: 1892, column: 41, scope: !1167, inlinedAt: !1172)
!1172 = distinct !DILocation(line: 735, column: 24, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 733, column: 47)
!1174 = !DILocation(line: 1892, column: 63, scope: !1167, inlinedAt: !1172)
!1175 = !DILocation(line: 1894, column: 8, scope: !1167, inlinedAt: !1172)
!1176 = !DILocation(line: 1898, column: 25, scope: !1177, inlinedAt: !1172)
!1177 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 1898, column: 9)
!1178 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 1897, column: 47)
!1179 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 1897, column: 3)
!1180 = distinct !DILexicalBlock(scope: !1167, file: !3, line: 1897, column: 3)
!1181 = !{!1158, !528, i64 24}
!1182 = !DILocation(line: 1898, column: 31, scope: !1177, inlinedAt: !1172)
!1183 = !DILocation(line: 1899, column: 25, scope: !1177, inlinedAt: !1172)
!1184 = !DILocation(line: 1899, column: 44, scope: !1177, inlinedAt: !1172)
!1185 = !DILocation(line: 1898, column: 40, scope: !1177, inlinedAt: !1172)
!1186 = !DILocation(line: 1901, column: 28, scope: !1187, inlinedAt: !1172)
!1187 = distinct !DILexicalBlock(scope: !1177, file: !3, line: 1899, column: 51)
!1188 = !DILocation(line: 1902, column: 7, scope: !1189, inlinedAt: !1172)
!1189 = distinct !DILexicalBlock(scope: !1187, file: !3, line: 1902, column: 7)
!1190 = !DILocation(line: 1903, column: 7, scope: !1187, inlinedAt: !1172)
!1191 = !DILocation(line: 738, column: 35, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 737, column: 30)
!1193 = distinct !DILexicalBlock(scope: !498, file: !3, line: 737, column: 17)
!1194 = !DILocation(line: 738, column: 54, scope: !1192)
!1195 = !{!1158, !548, i64 32}
!1196 = !DILocation(line: 739, column: 13, scope: !1192)
!1197 = !DILocation(line: 742, column: 27, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !500, file: !3, line: 742, column: 15)
!1199 = !DILocation(line: 742, column: 33, scope: !1198)
!1200 = !DILocation(line: 742, column: 15, scope: !500)
!1201 = !DILocalVariable(name: "netif", arg: 1, scope: !1202, file: !3, line: 186, type: !274)
!1202 = distinct !DISubprogram(name: "nd6_process_autoconfig_prefix", scope: !3, file: !3, line: 186, type: !1203, isLocal: true, isDefinition: true, scopeLine: 188, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1205)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{null, !274, !206, !162}
!1205 = !{!1201, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214}
!1206 = !DILocalVariable(name: "prefix_opt", arg: 2, scope: !1202, file: !3, line: 187, type: !206)
!1207 = !DILocalVariable(name: "prefix_addr", arg: 3, scope: !1202, file: !3, line: 187, type: !162)
!1208 = !DILocalVariable(name: "ip6addr", scope: !1202, file: !3, line: 189, type: !164)
!1209 = !DILocalVariable(name: "valid_life", scope: !1202, file: !3, line: 190, type: !147)
!1210 = !DILocalVariable(name: "pref_life", scope: !1202, file: !3, line: 190, type: !147)
!1211 = !DILocalVariable(name: "addr_state", scope: !1202, file: !3, line: 191, type: !117)
!1212 = !DILocalVariable(name: "i", scope: !1202, file: !3, line: 192, type: !307)
!1213 = !DILocalVariable(name: "free_idx", scope: !1202, file: !3, line: 192, type: !307)
!1214 = !DILocalVariable(name: "remaining_life", scope: !1215, file: !3, line: 216, type: !147)
!1215 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 213, column: 65)
!1216 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 212, column: 9)
!1217 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 210, column: 49)
!1218 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 210, column: 3)
!1219 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 210, column: 3)
!1220 = !DILocation(line: 186, column: 45, scope: !1202, inlinedAt: !1221)
!1221 = distinct !DILocation(line: 744, column: 13, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 742, column: 63)
!1223 = !DILocation(line: 187, column: 25, scope: !1202, inlinedAt: !1221)
!1224 = !DILocation(line: 187, column: 55, scope: !1202, inlinedAt: !1221)
!1225 = !DILocation(line: 196, column: 39, scope: !1202, inlinedAt: !1221)
!1226 = !DILocation(line: 196, column: 16, scope: !1202, inlinedAt: !1221)
!1227 = !DILocation(line: 190, column: 9, scope: !1202, inlinedAt: !1221)
!1228 = !DILocation(line: 197, column: 38, scope: !1202, inlinedAt: !1221)
!1229 = !{!1131, !548, i64 8}
!1230 = !DILocation(line: 197, column: 15, scope: !1202, inlinedAt: !1221)
!1231 = !DILocation(line: 190, column: 21, scope: !1202, inlinedAt: !1221)
!1232 = !DILocation(line: 198, column: 17, scope: !1233, inlinedAt: !1221)
!1233 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 198, column: 7)
!1234 = !DILocation(line: 198, column: 30, scope: !1233, inlinedAt: !1221)
!1235 = !DILocation(line: 198, column: 45, scope: !1233, inlinedAt: !1221)
!1236 = !DILocation(line: 198, column: 59, scope: !1233, inlinedAt: !1221)
!1237 = !DILocation(line: 198, column: 7, scope: !1202, inlinedAt: !1221)
!1238 = !DILocation(line: 192, column: 8, scope: !1202, inlinedAt: !1221)
!1239 = !DILocation(line: 211, column: 18, scope: !1217, inlinedAt: !1221)
!1240 = !DILocation(line: 191, column: 8, scope: !1202, inlinedAt: !1221)
!1241 = !DILocation(line: 212, column: 10, scope: !1216, inlinedAt: !1221)
!1242 = !DILocation(line: 212, column: 41, scope: !1216, inlinedAt: !1221)
!1243 = !DILocation(line: 212, column: 45, scope: !1216, inlinedAt: !1221)
!1244 = !DILocation(line: 212, column: 79, scope: !1216, inlinedAt: !1221)
!1245 = !DILocation(line: 213, column: 9, scope: !1216, inlinedAt: !1221)
!1246 = !DILocation(line: 212, column: 9, scope: !1217, inlinedAt: !1221)
!1247 = !DILocation(line: 216, column: 30, scope: !1215, inlinedAt: !1221)
!1248 = !DILocation(line: 216, column: 13, scope: !1215, inlinedAt: !1221)
!1249 = !DILocation(line: 217, column: 22, scope: !1250, inlinedAt: !1221)
!1250 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 217, column: 11)
!1251 = !DILocation(line: 217, column: 47, scope: !1250, inlinedAt: !1221)
!1252 = !DILocation(line: 217, column: 33, scope: !1250, inlinedAt: !1221)
!1253 = !DILocation(line: 219, column: 33, scope: !1254, inlinedAt: !1221)
!1254 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 219, column: 18)
!1255 = !DILocation(line: 219, column: 18, scope: !1250, inlinedAt: !1221)
!1256 = !DILocation(line: 220, column: 9, scope: !1257, inlinedAt: !1221)
!1257 = distinct !DILexicalBlock(scope: !1258, file: !3, line: 220, column: 9)
!1258 = distinct !DILexicalBlock(scope: !1259, file: !3, line: 220, column: 9)
!1259 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 220, column: 9)
!1260 = distinct !DILexicalBlock(scope: !1254, file: !3, line: 219, column: 45)
!1261 = !DILocation(line: 218, column: 9, scope: !1262, inlinedAt: !1221)
!1262 = distinct !DILexicalBlock(scope: !1263, file: !3, line: 218, column: 9)
!1263 = distinct !DILexicalBlock(scope: !1264, file: !3, line: 218, column: 9)
!1264 = distinct !DILexicalBlock(scope: !1265, file: !3, line: 218, column: 9)
!1265 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 217, column: 65)
!1266 = !DILocation(line: 222, column: 7, scope: !1267, inlinedAt: !1221)
!1267 = distinct !DILexicalBlock(scope: !1268, file: !3, line: 222, column: 7)
!1268 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 222, column: 7)
!1269 = !DILocation(line: 222, column: 7, scope: !1268, inlinedAt: !1221)
!1270 = !DILocation(line: 222, column: 7, scope: !1271, inlinedAt: !1221)
!1271 = distinct !DILexicalBlock(scope: !1272, file: !3, line: 222, column: 7)
!1272 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 222, column: 7)
!1273 = !DILocation(line: 222, column: 7, scope: !1274, inlinedAt: !1221)
!1274 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 222, column: 7)
!1275 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 222, column: 7)
!1276 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 222, column: 7)
!1277 = !DILocation(line: 226, column: 21, scope: !1278, inlinedAt: !1221)
!1278 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 226, column: 11)
!1279 = !DILocation(line: 226, column: 39, scope: !1278, inlinedAt: !1221)
!1280 = !DILocation(line: 226, column: 25, scope: !1278, inlinedAt: !1221)
!1281 = !DILocation(line: 227, column: 9, scope: !1282, inlinedAt: !1221)
!1282 = distinct !DILexicalBlock(scope: !1278, file: !3, line: 226, column: 63)
!1283 = !DILocation(line: 228, column: 7, scope: !1282, inlinedAt: !1221)
!1284 = !DILocation(line: 229, column: 7, scope: !1285, inlinedAt: !1221)
!1285 = distinct !DILexicalBlock(scope: !1286, file: !3, line: 229, column: 7)
!1286 = distinct !DILexicalBlock(scope: !1287, file: !3, line: 229, column: 7)
!1287 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 229, column: 7)
!1288 = !DILocation(line: 243, column: 16, scope: !1202, inlinedAt: !1221)
!1289 = !DILocation(line: 245, column: 38, scope: !1290, inlinedAt: !1221)
!1290 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 244, column: 7)
!1291 = !DILocation(line: 189, column: 14, scope: !1202, inlinedAt: !1221)
!1292 = !DILocation(line: 254, column: 3, scope: !1293, inlinedAt: !1221)
!1293 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 254, column: 3)
!1294 = !DILocation(line: 192, column: 11, scope: !1202, inlinedAt: !1221)
!1295 = !DILocation(line: 260, column: 9, scope: !1296, inlinedAt: !1221)
!1296 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 259, column: 49)
!1297 = distinct !DILexicalBlock(scope: !1298, file: !3, line: 259, column: 3)
!1298 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 259, column: 3)
!1299 = !DILocation(line: 261, column: 11, scope: !1300, inlinedAt: !1221)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !3, line: 261, column: 11)
!1301 = distinct !DILexicalBlock(scope: !1302, file: !3, line: 260, column: 62)
!1302 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 260, column: 9)
!1303 = !DILocation(line: 261, column: 11, scope: !1301, inlinedAt: !1221)
!1304 = !DILocation(line: 0, scope: !1202, inlinedAt: !1221)
!1305 = !DILocation(line: 273, column: 3, scope: !1306, inlinedAt: !1221)
!1306 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 273, column: 3)
!1307 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 273, column: 3)
!1308 = !DILocation(line: 273, column: 3, scope: !1309, inlinedAt: !1221)
!1309 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 273, column: 3)
!1310 = !{!552, !520, i64 20}
!1311 = !DILocation(line: 274, column: 3, scope: !1312, inlinedAt: !1221)
!1312 = distinct !DILexicalBlock(scope: !1313, file: !3, line: 274, column: 3)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !3, line: 274, column: 3)
!1314 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 274, column: 3)
!1315 = !DILocation(line: 275, column: 3, scope: !1316, inlinedAt: !1221)
!1316 = distinct !DILexicalBlock(scope: !1317, file: !3, line: 275, column: 3)
!1317 = distinct !DILexicalBlock(scope: !1318, file: !3, line: 275, column: 3)
!1318 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 275, column: 3)
!1319 = !DILocation(line: 276, column: 3, scope: !1202, inlinedAt: !1221)
!1320 = !DILocation(line: 277, column: 1, scope: !1202, inlinedAt: !1221)
!1321 = !DILocation(line: 268, column: 16, scope: !1322, inlinedAt: !1221)
!1322 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 268, column: 7)
!1323 = !DILocation(line: 264, column: 25, scope: !1324, inlinedAt: !1221)
!1324 = distinct !DILexicalBlock(scope: !1302, file: !3, line: 264, column: 16)
!1325 = !DILocation(line: 268, column: 7, scope: !1202, inlinedAt: !1221)
!1326 = !DILocation(line: 244, column: 15, scope: !1290, inlinedAt: !1221)
!1327 = !{!551, !520, i64 265}
!1328 = !DILocation(line: 244, column: 8, scope: !1290, inlinedAt: !1221)
!1329 = !DILocation(line: 244, column: 52, scope: !1290, inlinedAt: !1221)
!1330 = !DILocation(line: 244, column: 38, scope: !1290, inlinedAt: !1221)
!1331 = !DILocation(line: 797, column: 9, scope: !490)
!1332 = !DILocation(line: 798, column: 9, scope: !490)
!1333 = !DILocation(line: 801, column: 14, scope: !485)
!1334 = !DILocation(line: 640, column: 13, scope: !481)
!1335 = !DILocation(line: 640, column: 26, scope: !481)
!1336 = !DILocation(line: 640, column: 24, scope: !481)
!1337 = !DILocation(line: 813, column: 12, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !504, file: !3, line: 813, column: 9)
!1339 = !DILocation(line: 813, column: 16, scope: !1338)
!1340 = !DILocation(line: 813, column: 9, scope: !504)
!1341 = !DILocation(line: 815, column: 7, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 813, column: 50)
!1343 = !DILocation(line: 816, column: 7, scope: !1342)
!1344 = !DILocation(line: 817, column: 7, scope: !1342)
!1345 = !DILocation(line: 808, column: 29, scope: !504)
!1346 = !DILocation(line: 824, column: 5, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !504, file: !3, line: 824, column: 5)
!1348 = !DILocation(line: 825, column: 5, scope: !504)
!1349 = !DILocation(line: 828, column: 10, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !504, file: !3, line: 828, column: 9)
!1351 = !DILocation(line: 828, column: 55, scope: !1350)
!1352 = !DILocation(line: 829, column: 9, scope: !1350)
!1353 = !DILocation(line: 829, column: 43, scope: !1350)
!1354 = !DILocation(line: 829, column: 57, scope: !1350)
!1355 = !DILocation(line: 830, column: 20, scope: !1350)
!1356 = !{!1357, !520, i64 1}
!1357 = !{!"redirect_header", !520, i64 0, !520, i64 1, !519, i64 2, !548, i64 4, !559, i64 8, !559, i64 24}
!1358 = !DILocation(line: 830, column: 25, scope: !1350)
!1359 = !DILocation(line: 830, column: 33, scope: !1350)
!1360 = !DILocation(line: 830, column: 30, scope: !1350)
!1361 = !DILocation(line: 831, column: 7, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1350, file: !3, line: 830, column: 77)
!1363 = !DILocation(line: 832, column: 7, scope: !1362)
!1364 = !DILocation(line: 833, column: 7, scope: !1362)
!1365 = !DILocation(line: 841, column: 16, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !504, file: !3, line: 841, column: 9)
!1367 = !DILocation(line: 841, column: 9, scope: !504)
!1368 = !DILocation(line: 841, column: 9, scope: !1366)
!1369 = !DILocation(line: 842, column: 63, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1366, file: !3, line: 841, column: 57)
!1371 = !DILocation(line: 842, column: 20, scope: !1370)
!1372 = !DILocation(line: 809, column: 27, scope: !504)
!1373 = !DILocation(line: 843, column: 67, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 843, column: 11)
!1375 = !DILocation(line: 843, column: 55, scope: !1374)
!1376 = !DILocation(line: 843, column: 74, scope: !1374)
!1377 = !DILocation(line: 843, column: 52, scope: !1374)
!1378 = !DILocation(line: 843, column: 18, scope: !1374)
!1379 = !DILocation(line: 843, column: 11, scope: !1370)
!1380 = !DILocation(line: 0, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1366, file: !3, line: 846, column: 12)
!1382 = !DILocation(line: 810, column: 16, scope: !504)
!1383 = !DILocalVariable(name: "ip6addr", arg: 1, scope: !1384, file: !3, line: 1560, type: !162)
!1384 = distinct !DISubprogram(name: "nd6_find_destination_cache_entry", scope: !3, file: !3, line: 1560, type: !1385, isLocal: true, isDefinition: true, scopeLine: 1561, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1387)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{!466, !162}
!1387 = !{!1383, !1388}
!1388 = !DILocalVariable(name: "i", scope: !1384, file: !3, line: 1562, type: !466)
!1389 = !DILocation(line: 1560, column: 52, scope: !1384, inlinedAt: !1390)
!1390 = distinct !DILocation(line: 851, column: 16, scope: !504)
!1391 = !DILocation(line: 1562, column: 9, scope: !1384, inlinedAt: !1390)
!1392 = !DILocation(line: 1566, column: 3, scope: !1393, inlinedAt: !1390)
!1393 = distinct !DILexicalBlock(scope: !1384, file: !3, line: 1566, column: 3)
!1394 = !DILocation(line: 1567, column: 9, scope: !1395, inlinedAt: !1390)
!1395 = distinct !DILexicalBlock(scope: !1396, file: !3, line: 1567, column: 9)
!1396 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 1566, column: 51)
!1397 = distinct !DILexicalBlock(scope: !1393, file: !3, line: 1566, column: 3)
!1398 = !{!1399, !520, i64 16}
!1399 = !{!"nd6_destination_cache_entry", !649, i64 0, !649, i64 20, !519, i64 40, !548, i64 44}
!1400 = !DILocation(line: 1567, column: 9, scope: !1396, inlinedAt: !1390)
!1401 = !DILocation(line: 1566, column: 47, scope: !1397, inlinedAt: !1390)
!1402 = !DILocation(line: 1566, column: 17, scope: !1397, inlinedAt: !1390)
!1403 = distinct !{!1403, !1404, !1405}
!1404 = !DILocation(line: 1566, column: 3, scope: !1393)
!1405 = !DILocation(line: 1570, column: 3, scope: !1393)
!1406 = !DILocation(line: 291, column: 9, scope: !457)
!1407 = !DILocation(line: 852, column: 18, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !504, file: !3, line: 852, column: 9)
!1409 = !DILocation(line: 852, column: 9, scope: !504)
!1410 = !DILocation(line: 854, column: 7, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 852, column: 23)
!1412 = !DILocation(line: 859, column: 5, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !504, file: !3, line: 859, column: 5)
!1414 = !DILocation(line: 860, column: 5, scope: !504)
!1415 = !DILocation(line: 863, column: 5, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !504, file: !3, line: 863, column: 5)
!1417 = !{!1399, !520, i64 36}
!1418 = !DILocation(line: 866, column: 20, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !504, file: !3, line: 866, column: 9)
!1420 = !DILocation(line: 866, column: 9, scope: !504)
!1421 = !DILocation(line: 867, column: 23, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 867, column: 11)
!1423 = distinct !DILexicalBlock(scope: !1419, file: !3, line: 866, column: 29)
!1424 = !{!624, !520, i64 0}
!1425 = !DILocation(line: 867, column: 28, scope: !1422)
!1426 = !DILocation(line: 867, column: 11, scope: !1423)
!1427 = !DILocation(line: 1405, column: 9, scope: !643, inlinedAt: !1428)
!1428 = distinct !DILocation(line: 868, column: 13, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 867, column: 62)
!1430 = !DILocation(line: 1403, column: 8, scope: !635, inlinedAt: !1428)
!1431 = !DILocation(line: 1405, column: 9, scope: !644, inlinedAt: !1428)
!1432 = !DILocation(line: 1404, column: 44, scope: !645, inlinedAt: !1428)
!1433 = !DILocation(line: 1404, column: 17, scope: !645, inlinedAt: !1428)
!1434 = !DILocation(line: 1404, column: 3, scope: !646, inlinedAt: !1428)
!1435 = !DILocation(line: 869, column: 15, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1429, file: !3, line: 869, column: 13)
!1437 = !DILocation(line: 869, column: 13, scope: !1429)
!1438 = !DILocation(line: 870, column: 15, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1436, file: !3, line: 869, column: 20)
!1440 = !DILocation(line: 871, column: 17, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1439, file: !3, line: 871, column: 15)
!1442 = !DILocation(line: 871, column: 15, scope: !1439)
!1443 = !DILocation(line: 872, column: 13, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 871, column: 23)
!1445 = !DILocation(line: 872, column: 31, scope: !1444)
!1446 = !DILocation(line: 872, column: 37, scope: !1444)
!1447 = !DILocation(line: 873, column: 13, scope: !1444)
!1448 = !DILocation(line: 874, column: 13, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1444, file: !3, line: 874, column: 13)
!1450 = !DILocation(line: 878, column: 31, scope: !1444)
!1451 = !DILocation(line: 878, column: 37, scope: !1444)
!1452 = !DILocation(line: 879, column: 39, scope: !1444)
!1453 = !DILocation(line: 879, column: 50, scope: !1444)
!1454 = !DILocation(line: 883, column: 15, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1456, file: !3, line: 882, column: 21)
!1456 = distinct !DILexicalBlock(scope: !1429, file: !3, line: 882, column: 13)
!1457 = !DILocation(line: 883, column: 33, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1455, file: !3, line: 883, column: 15)
!1459 = !DILocation(line: 884, column: 13, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1458, file: !3, line: 883, column: 58)
!1461 = !DILocation(line: 887, column: 37, scope: !1460)
!1462 = !DILocation(line: 888, column: 39, scope: !1460)
!1463 = !DILocation(line: 888, column: 50, scope: !1460)
!1464 = !DILocation(line: 889, column: 11, scope: !1460)
!1465 = !DILocation(line: 903, column: 12, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !509, file: !3, line: 903, column: 9)
!1467 = !DILocation(line: 903, column: 16, scope: !1466)
!1468 = !DILocation(line: 903, column: 9, scope: !509)
!1469 = !DILocation(line: 905, column: 7, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1466, file: !3, line: 903, column: 57)
!1471 = !DILocation(line: 906, column: 7, scope: !1470)
!1472 = !DILocation(line: 907, column: 7, scope: !1470)
!1473 = !DILocation(line: 897, column: 23, scope: !509)
!1474 = !DILocation(line: 898, column: 21, scope: !509)
!1475 = !DILocation(line: 915, column: 5, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !509, file: !3, line: 915, column: 5)
!1477 = !DILocation(line: 916, column: 5, scope: !509)
!1478 = !DILocation(line: 900, column: 16, scope: !509)
!1479 = !DILocation(line: 1560, column: 52, scope: !1384, inlinedAt: !1480)
!1480 = distinct !DILocation(line: 919, column: 16, scope: !509)
!1481 = !DILocation(line: 1562, column: 9, scope: !1384, inlinedAt: !1480)
!1482 = !DILocation(line: 1566, column: 3, scope: !1393, inlinedAt: !1480)
!1483 = !DILocation(line: 1567, column: 9, scope: !1395, inlinedAt: !1480)
!1484 = !DILocation(line: 1567, column: 9, scope: !1396, inlinedAt: !1480)
!1485 = !DILocation(line: 1566, column: 47, scope: !1397, inlinedAt: !1480)
!1486 = !DILocation(line: 1566, column: 17, scope: !1397, inlinedAt: !1480)
!1487 = !DILocation(line: 920, column: 18, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !509, file: !3, line: 920, column: 9)
!1489 = !DILocation(line: 920, column: 9, scope: !509)
!1490 = !DILocation(line: 922, column: 7, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 920, column: 23)
!1492 = !DILocation(line: 927, column: 33, scope: !509)
!1493 = !{!1494, !548, i64 4}
!1494 = !{!"icmp6_hdr", !520, i64 0, !520, i64 1, !519, i64 2, !548, i64 4}
!1495 = !DILocation(line: 927, column: 12, scope: !509)
!1496 = !DILocation(line: 899, column: 11, scope: !509)
!1497 = !DILocation(line: 928, column: 47, scope: !509)
!1498 = !DILocation(line: 928, column: 40, scope: !509)
!1499 = !DILocation(line: 928, column: 5, scope: !509)
!1500 = !DILocation(line: 928, column: 33, scope: !509)
!1501 = !DILocation(line: 928, column: 38, scope: !509)
!1502 = !{!1399, !519, i64 40}
!1503 = !DILocation(line: 934, column: 5, scope: !472)
!1504 = !DILocation(line: 935, column: 5, scope: !472)
!1505 = !DILocation(line: 936, column: 5, scope: !472)
!1506 = !DILocation(line: 939, column: 3, scope: !457)
!1507 = !DILocation(line: 940, column: 3, scope: !457)
!1508 = !DILocation(line: 942, column: 3, scope: !457)
!1509 = !DILocation(line: 943, column: 3, scope: !457)
!1510 = !DILocation(line: 944, column: 3, scope: !457)
!1511 = !DILocation(line: 945, column: 1, scope: !457)
!1512 = !DILocation(line: 352, column: 18, scope: !616)
!1513 = !DILocation(line: 352, column: 11, scope: !582)
!1514 = !DILocation(line: 486, column: 7, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1516, file: !3, line: 485, column: 20)
!1516 = distinct !DILexicalBlock(scope: !476, file: !3, line: 485, column: 9)
!1517 = distinct !DISubprogram(name: "nd6_send_q", scope: !3, file: !3, line: 2176, type: !1518, isLocal: true, isDefinition: true, scopeLine: 2177, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1520)
!1518 = !DISubroutineType(types: !1519)
!1519 = !{null, !307}
!1520 = !{!1521, !1522, !1523, !1524}
!1521 = !DILocalVariable(name: "i", arg: 1, scope: !1517, file: !3, line: 2176, type: !307)
!1522 = !DILocalVariable(name: "ip6hdr", scope: !1517, file: !3, line: 2178, type: !234)
!1523 = !DILocalVariable(name: "dest", scope: !1517, file: !3, line: 2179, type: !164)
!1524 = !DILocalVariable(name: "q", scope: !1517, file: !3, line: 2181, type: !248)
!1525 = !DILocation(line: 2176, column: 17, scope: !1517)
!1526 = !DILocation(line: 2179, column: 3, scope: !1517)
!1527 = !DILocation(line: 2184, column: 15, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1517, file: !3, line: 2184, column: 7)
!1529 = !DILocation(line: 2189, column: 10, scope: !1517)
!1530 = !DILocation(line: 2189, column: 28, scope: !1517)
!1531 = !DILocation(line: 2189, column: 30, scope: !1517)
!1532 = !DILocation(line: 2189, column: 3, scope: !1517)
!1533 = !DILocation(line: 2181, column: 23, scope: !1517)
!1534 = !DILocation(line: 2193, column: 30, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1517, file: !3, line: 2189, column: 39)
!1536 = !{!1537, !528, i64 0}
!1537 = !{!"nd6_q_entry", !528, i64 0, !528, i64 8}
!1538 = !DILocation(line: 2193, column: 25, scope: !1535)
!1539 = !DILocation(line: 2195, column: 36, scope: !1535)
!1540 = !{!1537, !528, i64 8}
!1541 = !DILocation(line: 2195, column: 39, scope: !1535)
!1542 = !DILocation(line: 2178, column: 19, scope: !1517)
!1543 = !DILocation(line: 2197, column: 5, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 2197, column: 5)
!1545 = !DILocation(line: 2199, column: 5, scope: !1535)
!1546 = !DILocation(line: 2201, column: 24, scope: !1535)
!1547 = !DILocation(line: 2201, column: 32, scope: !1535)
!1548 = !{!551, !528, i64 208}
!1549 = !DILocation(line: 2179, column: 14, scope: !1517)
!1550 = !DILocation(line: 2201, column: 5, scope: !1535)
!1551 = !DILocation(line: 2203, column: 18, scope: !1535)
!1552 = !DILocation(line: 2203, column: 5, scope: !1535)
!1553 = !DILocation(line: 2205, column: 31, scope: !1535)
!1554 = !DILocation(line: 2205, column: 5, scope: !1535)
!1555 = distinct !{!1555, !1532, !1556}
!1556 = !DILocation(line: 2206, column: 3, scope: !1517)
!1557 = !DILocation(line: 2222, column: 1, scope: !1517)
!1558 = distinct !DISubprogram(name: "nd6_send_na", scope: !3, file: !3, line: 1254, type: !1559, isLocal: true, isDefinition: true, scopeLine: 1255, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1561)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{null, !274, !162, !117}
!1561 = !{!1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570}
!1562 = !DILocalVariable(name: "netif", arg: 1, scope: !1558, file: !3, line: 1254, type: !274)
!1563 = !DILocalVariable(name: "target_addr", arg: 2, scope: !1558, file: !3, line: 1254, type: !162)
!1564 = !DILocalVariable(name: "flags", arg: 3, scope: !1558, file: !3, line: 1254, type: !117)
!1565 = !DILocalVariable(name: "na_hdr", scope: !1558, file: !3, line: 1256, type: !124)
!1566 = !DILocalVariable(name: "lladdr_opt", scope: !1558, file: !3, line: 1257, type: !170)
!1567 = !DILocalVariable(name: "p", scope: !1558, file: !3, line: 1258, type: !253)
!1568 = !DILocalVariable(name: "src_addr", scope: !1558, file: !3, line: 1259, type: !162)
!1569 = !DILocalVariable(name: "dest_addr", scope: !1558, file: !3, line: 1260, type: !162)
!1570 = !DILocalVariable(name: "lladdr_opt_len", scope: !1558, file: !3, line: 1261, type: !131)
!1571 = !DILocation(line: 1254, column: 27, scope: !1558)
!1572 = !DILocation(line: 1254, column: 52, scope: !1558)
!1573 = !DILocation(line: 1254, column: 70, scope: !1558)
!1574 = !DILocation(line: 1263, column: 3, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1576, file: !3, line: 1263, column: 3)
!1576 = distinct !DILexicalBlock(scope: !1558, file: !3, line: 1263, column: 3)
!1577 = !DILocation(line: 1263, column: 3, scope: !1576)
!1578 = !DILocation(line: 1263, column: 3, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1580, file: !3, line: 1263, column: 3)
!1580 = distinct !DILexicalBlock(scope: !1575, file: !3, line: 1263, column: 3)
!1581 = !DILocation(line: 1263, column: 3, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1583, file: !3, line: 1263, column: 3)
!1583 = distinct !DILexicalBlock(scope: !1584, file: !3, line: 1263, column: 3)
!1584 = distinct !DILexicalBlock(scope: !1579, file: !3, line: 1263, column: 3)
!1585 = !DILocation(line: 1259, column: 21, scope: !1558)
!1586 = !DILocation(line: 1271, column: 29, scope: !1558)
!1587 = !DILocation(line: 1271, column: 22, scope: !1558)
!1588 = !DILocation(line: 1271, column: 40, scope: !1558)
!1589 = !DILocation(line: 1271, column: 45, scope: !1558)
!1590 = !DILocation(line: 1271, column: 79, scope: !1558)
!1591 = !DILocation(line: 1271, column: 54, scope: !1558)
!1592 = !DILocation(line: 1271, column: 51, scope: !1558)
!1593 = !DILocation(line: 1261, column: 9, scope: !1558)
!1594 = !DILocation(line: 1272, column: 70, scope: !1558)
!1595 = !DILocation(line: 1272, column: 52, scope: !1558)
!1596 = !DILocation(line: 1272, column: 7, scope: !1558)
!1597 = !DILocation(line: 1258, column: 16, scope: !1558)
!1598 = !DILocation(line: 1273, column: 9, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1558, file: !3, line: 1273, column: 7)
!1600 = !DILocation(line: 1273, column: 7, scope: !1558)
!1601 = !DILocation(line: 1274, column: 5, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1599, file: !3, line: 1273, column: 18)
!1603 = !DILocation(line: 1275, column: 5, scope: !1602)
!1604 = !DILocation(line: 1279, column: 35, scope: !1558)
!1605 = !DILocation(line: 1256, column: 21, scope: !1558)
!1606 = !DILocation(line: 1280, column: 59, scope: !1558)
!1607 = !DILocation(line: 1257, column: 25, scope: !1558)
!1608 = !DILocation(line: 1282, column: 16, scope: !1558)
!1609 = !{!564, !520, i64 0}
!1610 = !DILocation(line: 1283, column: 11, scope: !1558)
!1611 = !DILocation(line: 1283, column: 16, scope: !1558)
!1612 = !DILocation(line: 1284, column: 11, scope: !1558)
!1613 = !DILocation(line: 1284, column: 18, scope: !1558)
!1614 = !{!564, !519, i64 2}
!1615 = !DILocation(line: 1285, column: 19, scope: !1558)
!1616 = !DILocation(line: 1285, column: 25, scope: !1558)
!1617 = !DILocation(line: 1285, column: 11, scope: !1558)
!1618 = !DILocation(line: 1285, column: 17, scope: !1558)
!1619 = !DILocation(line: 1286, column: 11, scope: !1558)
!1620 = !DILocation(line: 1286, column: 23, scope: !1558)
!1621 = !DILocation(line: 1287, column: 3, scope: !1558)
!1622 = !DILocation(line: 1287, column: 23, scope: !1558)
!1623 = !DILocation(line: 1288, column: 3, scope: !1558)
!1624 = !DILocation(line: 1288, column: 23, scope: !1558)
!1625 = !DILocation(line: 1289, column: 3, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1558, file: !3, line: 1289, column: 3)
!1627 = !DILocation(line: 1291, column: 20, scope: !1558)
!1628 = !DILocation(line: 1292, column: 24, scope: !1558)
!1629 = !DILocation(line: 1292, column: 15, scope: !1558)
!1630 = !DILocation(line: 1292, column: 22, scope: !1558)
!1631 = !DILocation(line: 1293, column: 3, scope: !1558)
!1632 = !DILocation(line: 1296, column: 13, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1558, file: !3, line: 1296, column: 7)
!1634 = !DILocation(line: 1296, column: 7, scope: !1558)
!1635 = !DILocation(line: 1297, column: 5, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1637, file: !3, line: 1297, column: 5)
!1637 = distinct !DILexicalBlock(scope: !1633, file: !3, line: 1296, column: 45)
!1638 = !DILocation(line: 1260, column: 21, scope: !1558)
!1639 = !DILocation(line: 1300, column: 3, scope: !1637)
!1640 = !DILocation(line: 1300, column: 20, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1633, file: !3, line: 1300, column: 14)
!1642 = !DILocation(line: 1300, column: 14, scope: !1633)
!1643 = !DILocation(line: 1301, column: 5, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1645, file: !3, line: 1301, column: 5)
!1645 = distinct !DILexicalBlock(scope: !1641, file: !3, line: 1300, column: 51)
!1646 = !DILocation(line: 1304, column: 3, scope: !1645)
!1647 = !DILocation(line: 0, scope: !1644)
!1648 = !DILocation(line: 0, scope: !1645)
!1649 = !DILocation(line: 1309, column: 3, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1558, file: !3, line: 1309, column: 3)
!1651 = !DILocation(line: 0, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1641, file: !3, line: 1304, column: 10)
!1653 = !{!551, !519, i64 248}
!1654 = !DILocation(line: 1309, column: 3, scope: !1558)
!1655 = !DILocation(line: 1310, column: 63, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1650, file: !3, line: 1309, column: 63)
!1657 = !DILocation(line: 1310, column: 22, scope: !1656)
!1658 = !DILocation(line: 1310, column: 20, scope: !1656)
!1659 = !DILocation(line: 1312, column: 3, scope: !1656)
!1660 = !DILocation(line: 1316, column: 3, scope: !1558)
!1661 = !{!517, !519, i64 286}
!1662 = !DILocation(line: 1317, column: 3, scope: !1558)
!1663 = !DILocation(line: 1319, column: 3, scope: !1558)
!1664 = !DILocation(line: 1320, column: 1, scope: !1558)
!1665 = distinct !DISubprogram(name: "nd6_new_neighbor_cache_entry", scope: !3, file: !3, line: 1422, type: !1666, isLocal: true, isDefinition: true, scopeLine: 1423, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1668)
!1666 = !DISubroutineType(types: !1667)
!1667 = !{!307}
!1668 = !{!1669, !1670, !1671}
!1669 = !DILocalVariable(name: "i", scope: !1665, file: !3, line: 1424, type: !307)
!1670 = !DILocalVariable(name: "j", scope: !1665, file: !3, line: 1425, type: !307)
!1671 = !DILocalVariable(name: "time", scope: !1665, file: !3, line: 1426, type: !147)
!1672 = !DILocation(line: 1424, column: 8, scope: !1665)
!1673 = !DILocation(line: 1431, column: 27, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1675, file: !3, line: 1431, column: 9)
!1675 = distinct !DILexicalBlock(scope: !1676, file: !3, line: 1430, column: 48)
!1676 = distinct !DILexicalBlock(scope: !1677, file: !3, line: 1430, column: 3)
!1677 = distinct !DILexicalBlock(scope: !1665, file: !3, line: 1430, column: 3)
!1678 = !DILocation(line: 1431, column: 33, scope: !1674)
!1679 = !DILocation(line: 1431, column: 9, scope: !1675)
!1680 = !DILocation(line: 1440, column: 10, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1682, file: !3, line: 1440, column: 9)
!1682 = distinct !DILexicalBlock(scope: !1683, file: !3, line: 1439, column: 48)
!1683 = distinct !DILexicalBlock(scope: !1684, file: !3, line: 1439, column: 3)
!1684 = distinct !DILexicalBlock(scope: !1665, file: !3, line: 1439, column: 3)
!1685 = !DILocation(line: 1440, column: 28, scope: !1681)
!1686 = !DILocation(line: 1441, column: 29, scope: !1681)
!1687 = !DILocalVariable(name: "i", arg: 1, scope: !1688, file: !3, line: 1529, type: !307)
!1688 = distinct !DISubprogram(name: "nd6_free_neighbor_cache_entry", scope: !3, file: !3, line: 1529, type: !1518, isLocal: true, isDefinition: true, scopeLine: 1530, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1689)
!1689 = !{!1687}
!1690 = !DILocation(line: 1529, column: 36, scope: !1688, inlinedAt: !1691)
!1691 = distinct !DILocation(line: 1442, column: 7, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1681, file: !3, line: 1441, column: 40)
!1693 = !DILocation(line: 1540, column: 25, scope: !1694, inlinedAt: !1691)
!1694 = distinct !DILexicalBlock(scope: !1688, file: !3, line: 1540, column: 7)
!1695 = !DILocation(line: 1540, column: 27, scope: !1694, inlinedAt: !1691)
!1696 = !DILocation(line: 1540, column: 7, scope: !1688, inlinedAt: !1691)
!1697 = !DILocation(line: 1541, column: 5, scope: !1698, inlinedAt: !1691)
!1698 = distinct !DILexicalBlock(scope: !1694, file: !3, line: 1540, column: 36)
!1699 = !DILocation(line: 1542, column: 25, scope: !1698, inlinedAt: !1691)
!1700 = !DILocation(line: 1543, column: 3, scope: !1698, inlinedAt: !1691)
!1701 = !DILocation(line: 1545, column: 27, scope: !1688, inlinedAt: !1691)
!1702 = !DILocation(line: 1546, column: 30, scope: !1688, inlinedAt: !1691)
!1703 = !DILocation(line: 1547, column: 21, scope: !1688, inlinedAt: !1691)
!1704 = !DILocation(line: 1547, column: 27, scope: !1688, inlinedAt: !1691)
!1705 = !DILocation(line: 1548, column: 29, scope: !1688, inlinedAt: !1691)
!1706 = !DILocation(line: 1548, column: 44, scope: !1688, inlinedAt: !1691)
!1707 = !DILocation(line: 1549, column: 3, scope: !1708, inlinedAt: !1691)
!1708 = distinct !DILexicalBlock(scope: !1688, file: !3, line: 1549, column: 3)
!1709 = !DILocation(line: 1440, column: 34, scope: !1681)
!1710 = !DILocation(line: 1441, column: 11, scope: !1681)
!1711 = !DILocation(line: 1440, column: 48, scope: !1681)
!1712 = !DILocation(line: 1449, column: 10, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1714, file: !3, line: 1449, column: 9)
!1714 = distinct !DILexicalBlock(scope: !1715, file: !3, line: 1448, column: 48)
!1715 = distinct !DILexicalBlock(scope: !1716, file: !3, line: 1448, column: 3)
!1716 = distinct !DILexicalBlock(scope: !1665, file: !3, line: 1448, column: 3)
!1717 = !DILocation(line: 1449, column: 28, scope: !1713)
!1718 = !DILocation(line: 1450, column: 29, scope: !1713)
!1719 = !DILocation(line: 1529, column: 36, scope: !1688, inlinedAt: !1720)
!1720 = distinct !DILocation(line: 1451, column: 7, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1713, file: !3, line: 1450, column: 40)
!1722 = !DILocation(line: 1540, column: 25, scope: !1694, inlinedAt: !1720)
!1723 = !DILocation(line: 1540, column: 27, scope: !1694, inlinedAt: !1720)
!1724 = !DILocation(line: 1540, column: 7, scope: !1688, inlinedAt: !1720)
!1725 = !DILocation(line: 1541, column: 5, scope: !1698, inlinedAt: !1720)
!1726 = !DILocation(line: 1542, column: 25, scope: !1698, inlinedAt: !1720)
!1727 = !DILocation(line: 1543, column: 3, scope: !1698, inlinedAt: !1720)
!1728 = !DILocation(line: 1545, column: 27, scope: !1688, inlinedAt: !1720)
!1729 = !DILocation(line: 1546, column: 30, scope: !1688, inlinedAt: !1720)
!1730 = !DILocation(line: 1547, column: 21, scope: !1688, inlinedAt: !1720)
!1731 = !DILocation(line: 1547, column: 27, scope: !1688, inlinedAt: !1720)
!1732 = !DILocation(line: 1548, column: 29, scope: !1688, inlinedAt: !1720)
!1733 = !DILocation(line: 1548, column: 44, scope: !1688, inlinedAt: !1720)
!1734 = !DILocation(line: 1549, column: 3, scope: !1708, inlinedAt: !1720)
!1735 = !DILocation(line: 1449, column: 34, scope: !1713)
!1736 = !DILocation(line: 1450, column: 11, scope: !1713)
!1737 = !DILocation(line: 1449, column: 48, scope: !1713)
!1738 = !DILocation(line: 1458, column: 10, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1740, file: !3, line: 1458, column: 9)
!1740 = distinct !DILexicalBlock(scope: !1741, file: !3, line: 1457, column: 48)
!1741 = distinct !DILexicalBlock(scope: !1742, file: !3, line: 1457, column: 3)
!1742 = distinct !DILexicalBlock(scope: !1665, file: !3, line: 1457, column: 3)
!1743 = !DILocation(line: 1458, column: 28, scope: !1739)
!1744 = !DILocation(line: 1459, column: 29, scope: !1739)
!1745 = !DILocation(line: 1529, column: 36, scope: !1688, inlinedAt: !1746)
!1746 = distinct !DILocation(line: 1460, column: 7, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1739, file: !3, line: 1459, column: 40)
!1748 = !DILocation(line: 1540, column: 25, scope: !1694, inlinedAt: !1746)
!1749 = !DILocation(line: 1540, column: 27, scope: !1694, inlinedAt: !1746)
!1750 = !DILocation(line: 1540, column: 7, scope: !1688, inlinedAt: !1746)
!1751 = !DILocation(line: 1541, column: 5, scope: !1698, inlinedAt: !1746)
!1752 = !DILocation(line: 1542, column: 25, scope: !1698, inlinedAt: !1746)
!1753 = !DILocation(line: 1543, column: 3, scope: !1698, inlinedAt: !1746)
!1754 = !DILocation(line: 1545, column: 27, scope: !1688, inlinedAt: !1746)
!1755 = !DILocation(line: 1546, column: 30, scope: !1688, inlinedAt: !1746)
!1756 = !DILocation(line: 1547, column: 21, scope: !1688, inlinedAt: !1746)
!1757 = !DILocation(line: 1547, column: 27, scope: !1688, inlinedAt: !1746)
!1758 = !DILocation(line: 1548, column: 29, scope: !1688, inlinedAt: !1746)
!1759 = !DILocation(line: 1548, column: 44, scope: !1688, inlinedAt: !1746)
!1760 = !DILocation(line: 1549, column: 3, scope: !1708, inlinedAt: !1746)
!1761 = !DILocation(line: 1458, column: 34, scope: !1739)
!1762 = !DILocation(line: 1459, column: 11, scope: !1739)
!1763 = !DILocation(line: 1458, column: 48, scope: !1739)
!1764 = !DILocation(line: 1529, column: 36, scope: !1688, inlinedAt: !1765)
!1765 = distinct !DILocation(line: 1478, column: 5, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1767, file: !3, line: 1477, column: 15)
!1767 = distinct !DILexicalBlock(scope: !1665, file: !3, line: 1477, column: 7)
!1768 = !DILocation(line: 1534, column: 7, scope: !1769, inlinedAt: !1765)
!1769 = distinct !DILexicalBlock(scope: !1688, file: !3, line: 1534, column: 7)
!1770 = !DILocation(line: 1534, column: 25, scope: !1769, inlinedAt: !1765)
!1771 = !DILocation(line: 1534, column: 7, scope: !1688, inlinedAt: !1765)
!1772 = !DILocation(line: 1540, column: 25, scope: !1694, inlinedAt: !1765)
!1773 = !DILocation(line: 1540, column: 27, scope: !1694, inlinedAt: !1765)
!1774 = !DILocation(line: 1540, column: 7, scope: !1688, inlinedAt: !1765)
!1775 = !DILocation(line: 1541, column: 5, scope: !1698, inlinedAt: !1765)
!1776 = !DILocation(line: 1542, column: 25, scope: !1698, inlinedAt: !1765)
!1777 = !DILocation(line: 1543, column: 3, scope: !1698, inlinedAt: !1765)
!1778 = !DILocation(line: 1545, column: 21, scope: !1688, inlinedAt: !1765)
!1779 = !DILocation(line: 1545, column: 27, scope: !1688, inlinedAt: !1765)
!1780 = !DILocation(line: 1546, column: 30, scope: !1688, inlinedAt: !1765)
!1781 = !DILocation(line: 1547, column: 21, scope: !1688, inlinedAt: !1765)
!1782 = !DILocation(line: 1547, column: 27, scope: !1688, inlinedAt: !1765)
!1783 = !DILocation(line: 1548, column: 29, scope: !1688, inlinedAt: !1765)
!1784 = !DILocation(line: 1548, column: 44, scope: !1688, inlinedAt: !1765)
!1785 = !DILocation(line: 1549, column: 3, scope: !1708, inlinedAt: !1765)
!1786 = !DILocation(line: 1426, column: 9, scope: !1665)
!1787 = !DILocation(line: 1425, column: 8, scope: !1665)
!1788 = !DILocation(line: 1487, column: 28, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1790, file: !3, line: 1487, column: 9)
!1790 = distinct !DILexicalBlock(scope: !1791, file: !3, line: 1485, column: 48)
!1791 = distinct !DILexicalBlock(scope: !1792, file: !3, line: 1485, column: 3)
!1792 = distinct !DILexicalBlock(scope: !1665, file: !3, line: 1485, column: 3)
!1793 = !DILocation(line: 1487, column: 30, scope: !1789)
!1794 = !DILocation(line: 1487, column: 39, scope: !1789)
!1795 = !DILocation(line: 1488, column: 28, scope: !1789)
!1796 = !DILocation(line: 1488, column: 34, scope: !1789)
!1797 = !DILocation(line: 1488, column: 53, scope: !1789)
!1798 = !DILocation(line: 1489, column: 29, scope: !1789)
!1799 = !DILocation(line: 1489, column: 11, scope: !1789)
!1800 = !DILocation(line: 1487, column: 9, scope: !1790)
!1801 = !DILocation(line: 1490, column: 37, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !3, line: 1490, column: 11)
!1803 = distinct !DILexicalBlock(scope: !1789, file: !3, line: 1489, column: 40)
!1804 = !DILocation(line: 1490, column: 49, scope: !1802)
!1805 = !DILocation(line: 1490, column: 11, scope: !1803)
!1806 = !DILocation(line: 0, scope: !1665)
!1807 = !DILocation(line: 1485, column: 44, scope: !1791)
!1808 = !DILocation(line: 1485, column: 17, scope: !1791)
!1809 = !DILocation(line: 1485, column: 3, scope: !1792)
!1810 = distinct !{!1810, !1809, !1811}
!1811 = !DILocation(line: 1495, column: 3, scope: !1792)
!1812 = !DILocation(line: 1496, column: 9, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1665, file: !3, line: 1496, column: 7)
!1814 = !DILocation(line: 1496, column: 7, scope: !1665)
!1815 = !DILocation(line: 1505, column: 34, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1817, file: !3, line: 1505, column: 9)
!1817 = distinct !DILexicalBlock(scope: !1818, file: !3, line: 1504, column: 48)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !3, line: 1504, column: 3)
!1819 = distinct !DILexicalBlock(scope: !1665, file: !3, line: 1504, column: 3)
!1820 = !DILocation(line: 1506, column: 29, scope: !1816)
!1821 = !DILocation(line: 1506, column: 11, scope: !1816)
!1822 = !DILocation(line: 1505, column: 53, scope: !1816)
!1823 = !DILocation(line: 1507, column: 37, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1825, file: !3, line: 1507, column: 11)
!1825 = distinct !DILexicalBlock(scope: !1816, file: !3, line: 1506, column: 40)
!1826 = !DILocation(line: 1529, column: 36, scope: !1688, inlinedAt: !1827)
!1827 = distinct !DILocation(line: 1497, column: 5, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 1496, column: 15)
!1829 = !DILocation(line: 1531, column: 15, scope: !1830, inlinedAt: !1827)
!1830 = distinct !DILexicalBlock(scope: !1688, file: !3, line: 1531, column: 7)
!1831 = !DILocation(line: 1534, column: 7, scope: !1769, inlinedAt: !1827)
!1832 = !DILocation(line: 1534, column: 25, scope: !1769, inlinedAt: !1827)
!1833 = !DILocation(line: 1534, column: 7, scope: !1688, inlinedAt: !1827)
!1834 = !DILocation(line: 1540, column: 25, scope: !1694, inlinedAt: !1827)
!1835 = !DILocation(line: 1540, column: 27, scope: !1694, inlinedAt: !1827)
!1836 = !DILocation(line: 1540, column: 7, scope: !1688, inlinedAt: !1827)
!1837 = !DILocation(line: 1541, column: 5, scope: !1698, inlinedAt: !1827)
!1838 = !DILocation(line: 1542, column: 25, scope: !1698, inlinedAt: !1827)
!1839 = !DILocation(line: 1543, column: 3, scope: !1698, inlinedAt: !1827)
!1840 = !DILocation(line: 1545, column: 21, scope: !1688, inlinedAt: !1827)
!1841 = !DILocation(line: 1545, column: 27, scope: !1688, inlinedAt: !1827)
!1842 = !DILocation(line: 1546, column: 30, scope: !1688, inlinedAt: !1827)
!1843 = !DILocation(line: 1547, column: 21, scope: !1688, inlinedAt: !1827)
!1844 = !DILocation(line: 1547, column: 27, scope: !1688, inlinedAt: !1827)
!1845 = !DILocation(line: 1548, column: 29, scope: !1688, inlinedAt: !1827)
!1846 = !DILocation(line: 1548, column: 44, scope: !1688, inlinedAt: !1827)
!1847 = !DILocation(line: 1549, column: 3, scope: !1708, inlinedAt: !1827)
!1848 = !DILocation(line: 1529, column: 36, scope: !1688, inlinedAt: !1849)
!1849 = distinct !DILocation(line: 1514, column: 5, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1851, file: !3, line: 1513, column: 15)
!1851 = distinct !DILexicalBlock(scope: !1665, file: !3, line: 1513, column: 7)
!1852 = !DILocation(line: 1534, column: 7, scope: !1769, inlinedAt: !1849)
!1853 = !DILocation(line: 1534, column: 25, scope: !1769, inlinedAt: !1849)
!1854 = !DILocation(line: 1534, column: 7, scope: !1688, inlinedAt: !1849)
!1855 = !DILocation(line: 1540, column: 25, scope: !1694, inlinedAt: !1849)
!1856 = !DILocation(line: 1540, column: 27, scope: !1694, inlinedAt: !1849)
!1857 = !DILocation(line: 1540, column: 7, scope: !1688, inlinedAt: !1849)
!1858 = !DILocation(line: 1541, column: 5, scope: !1698, inlinedAt: !1849)
!1859 = !DILocation(line: 1542, column: 25, scope: !1698, inlinedAt: !1849)
!1860 = !DILocation(line: 1543, column: 3, scope: !1698, inlinedAt: !1849)
!1861 = !DILocation(line: 1545, column: 21, scope: !1688, inlinedAt: !1849)
!1862 = !DILocation(line: 1545, column: 27, scope: !1688, inlinedAt: !1849)
!1863 = !DILocation(line: 1546, column: 30, scope: !1688, inlinedAt: !1849)
!1864 = !DILocation(line: 1547, column: 21, scope: !1688, inlinedAt: !1849)
!1865 = !DILocation(line: 1547, column: 27, scope: !1688, inlinedAt: !1849)
!1866 = !DILocation(line: 1548, column: 29, scope: !1688, inlinedAt: !1849)
!1867 = !DILocation(line: 1548, column: 44, scope: !1688, inlinedAt: !1849)
!1868 = !DILocation(line: 1549, column: 3, scope: !1708, inlinedAt: !1849)
!1869 = !DILocation(line: 1520, column: 1, scope: !1665)
!1870 = !DILocation(line: 1507, column: 49, scope: !1824)
!1871 = !DILocation(line: 1507, column: 11, scope: !1825)
!1872 = !DILocation(line: 1513, column: 9, scope: !1851)
!1873 = !DILocation(line: 1513, column: 7, scope: !1665)
!1874 = !DILocation(line: 1471, column: 37, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1876, file: !3, line: 1471, column: 11)
!1876 = distinct !DILexicalBlock(scope: !1877, file: !3, line: 1470, column: 40)
!1877 = distinct !DILexicalBlock(scope: !1878, file: !3, line: 1469, column: 9)
!1878 = distinct !DILexicalBlock(scope: !1879, file: !3, line: 1468, column: 48)
!1879 = distinct !DILexicalBlock(scope: !1880, file: !3, line: 1468, column: 3)
!1880 = distinct !DILexicalBlock(scope: !1665, file: !3, line: 1468, column: 3)
!1881 = !DILocation(line: 1471, column: 52, scope: !1875)
!1882 = !DILocation(line: 1471, column: 11, scope: !1876)
!1883 = !DILocation(line: 1469, column: 34, scope: !1877)
!1884 = !DILocation(line: 1470, column: 29, scope: !1877)
!1885 = !DILocation(line: 1470, column: 11, scope: !1877)
!1886 = !DILocation(line: 1469, column: 52, scope: !1877)
!1887 = !DILocation(line: 1477, column: 9, scope: !1767)
!1888 = !DILocation(line: 1477, column: 7, scope: !1665)
!1889 = distinct !DISubprogram(name: "nd6_send_rs", scope: !3, file: !3, line: 1329, type: !1890, isLocal: true, isDefinition: true, scopeLine: 1330, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1892)
!1890 = !DISubroutineType(types: !1891)
!1891 = !{!306, !274}
!1892 = !{!1893, !1894, !1895, !1896, !1897, !1898, !1899}
!1893 = !DILocalVariable(name: "netif", arg: 1, scope: !1889, file: !3, line: 1329, type: !274)
!1894 = !DILocalVariable(name: "rs_hdr", scope: !1889, file: !3, line: 1331, type: !235)
!1895 = !DILocalVariable(name: "lladdr_opt", scope: !1889, file: !3, line: 1332, type: !170)
!1896 = !DILocalVariable(name: "p", scope: !1889, file: !3, line: 1333, type: !253)
!1897 = !DILocalVariable(name: "src_addr", scope: !1889, file: !3, line: 1334, type: !162)
!1898 = !DILocalVariable(name: "err", scope: !1889, file: !3, line: 1335, type: !306)
!1899 = !DILocalVariable(name: "lladdr_opt_len", scope: !1889, file: !3, line: 1336, type: !131)
!1900 = !DILocation(line: 1329, column: 27, scope: !1889)
!1901 = !DILocation(line: 1336, column: 9, scope: !1889)
!1902 = !DILocation(line: 1339, column: 7, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1889, file: !3, line: 1339, column: 7)
!1904 = !DILocation(line: 1340, column: 16, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1903, file: !3, line: 1339, column: 57)
!1906 = !DILocation(line: 1334, column: 21, scope: !1889)
!1907 = !DILocation(line: 1339, column: 7, scope: !1889)
!1908 = !DILocation(line: 1346, column: 3, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1889, file: !3, line: 1346, column: 3)
!1910 = !DILocation(line: 1347, column: 3, scope: !1889)
!1911 = !DILocation(line: 1350, column: 16, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1889, file: !3, line: 1350, column: 7)
!1913 = !DILocation(line: 1350, column: 7, scope: !1889)
!1914 = !DILocation(line: 1351, column: 31, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1912, file: !3, line: 1350, column: 34)
!1916 = !DILocation(line: 1351, column: 24, scope: !1915)
!1917 = !DILocation(line: 1351, column: 42, scope: !1915)
!1918 = !DILocation(line: 1351, column: 47, scope: !1915)
!1919 = !DILocation(line: 1351, column: 81, scope: !1915)
!1920 = !DILocation(line: 1351, column: 56, scope: !1915)
!1921 = !DILocation(line: 1351, column: 53, scope: !1915)
!1922 = !DILocation(line: 1352, column: 3, scope: !1915)
!1923 = !DILocation(line: 0, scope: !1889)
!1924 = !DILocation(line: 1353, column: 70, scope: !1889)
!1925 = !DILocation(line: 1353, column: 52, scope: !1889)
!1926 = !DILocation(line: 1353, column: 7, scope: !1889)
!1927 = !DILocation(line: 1333, column: 16, scope: !1889)
!1928 = !DILocation(line: 1354, column: 9, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1889, file: !3, line: 1354, column: 7)
!1930 = !DILocation(line: 1354, column: 7, scope: !1889)
!1931 = !DILocation(line: 1355, column: 5, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1929, file: !3, line: 1354, column: 18)
!1933 = !DILocation(line: 1356, column: 5, scope: !1932)
!1934 = !DILocation(line: 1360, column: 35, scope: !1889)
!1935 = !DILocation(line: 1331, column: 21, scope: !1889)
!1936 = !DILocation(line: 1362, column: 11, scope: !1889)
!1937 = !DILocation(line: 1362, column: 16, scope: !1889)
!1938 = !{!1939, !520, i64 0}
!1939 = !{!"rs_header", !520, i64 0, !520, i64 1, !519, i64 2, !548, i64 4}
!1940 = !DILocation(line: 1363, column: 11, scope: !1889)
!1941 = !DILocation(line: 1363, column: 16, scope: !1889)
!1942 = !{!1939, !520, i64 1}
!1943 = !DILocation(line: 1364, column: 11, scope: !1889)
!1944 = !DILocation(line: 1364, column: 18, scope: !1889)
!1945 = !{!1939, !519, i64 2}
!1946 = !DILocation(line: 1365, column: 11, scope: !1889)
!1947 = !DILocation(line: 1365, column: 20, scope: !1889)
!1948 = !{!1939, !548, i64 4}
!1949 = !DILocation(line: 1367, column: 7, scope: !1889)
!1950 = !DILocation(line: 1369, column: 61, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !3, line: 1367, column: 34)
!1952 = distinct !DILexicalBlock(scope: !1889, file: !3, line: 1367, column: 7)
!1953 = !DILocation(line: 1332, column: 25, scope: !1889)
!1954 = !DILocation(line: 1370, column: 22, scope: !1951)
!1955 = !DILocation(line: 1371, column: 26, scope: !1951)
!1956 = !DILocation(line: 1371, column: 17, scope: !1951)
!1957 = !DILocation(line: 1371, column: 24, scope: !1951)
!1958 = !DILocation(line: 1372, column: 5, scope: !1951)
!1959 = !DILocation(line: 1373, column: 3, scope: !1951)
!1960 = !DILocation(line: 1376, column: 3, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1889, file: !3, line: 1376, column: 3)
!1962 = !DILocation(line: 1376, column: 3, scope: !1889)
!1963 = !DILocation(line: 1377, column: 63, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1961, file: !3, line: 1376, column: 63)
!1965 = !DILocation(line: 1377, column: 22, scope: !1964)
!1966 = !DILocation(line: 1377, column: 20, scope: !1964)
!1967 = !DILocation(line: 1379, column: 3, scope: !1964)
!1968 = !DILocation(line: 1383, column: 3, scope: !1889)
!1969 = !DILocation(line: 1385, column: 36, scope: !1889)
!1970 = !DILocation(line: 1385, column: 26, scope: !1889)
!1971 = !DILocation(line: 1385, column: 9, scope: !1889)
!1972 = !DILocation(line: 1335, column: 9, scope: !1889)
!1973 = !DILocation(line: 1387, column: 3, scope: !1889)
!1974 = !DILocation(line: 1389, column: 3, scope: !1889)
!1975 = !DILocation(line: 1390, column: 1, scope: !1889)
!1976 = distinct !DISubprogram(name: "nd6_tmr", scope: !3, file: !3, line: 959, type: !1977, isLocal: false, isDefinition: true, scopeLine: 960, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1979)
!1977 = !DISubroutineType(types: !1978)
!1978 = !{null}
!1979 = !{!1980, !1981, !1982, !1990, !1997}
!1980 = !DILocalVariable(name: "i", scope: !1976, file: !3, line: 961, type: !307)
!1981 = !DILocalVariable(name: "netif", scope: !1976, file: !3, line: 962, type: !274)
!1982 = !DILocalVariable(name: "j", scope: !1983, file: !3, line: 1033, type: !307)
!1983 = distinct !DILexicalBlock(scope: !1984, file: !3, line: 1030, column: 81)
!1984 = distinct !DILexicalBlock(scope: !1985, file: !3, line: 1030, column: 11)
!1985 = distinct !DILexicalBlock(scope: !1986, file: !3, line: 1028, column: 56)
!1986 = distinct !DILexicalBlock(scope: !1987, file: !3, line: 1028, column: 9)
!1987 = distinct !DILexicalBlock(scope: !1988, file: !3, line: 1027, column: 46)
!1988 = distinct !DILexicalBlock(scope: !1989, file: !3, line: 1027, column: 3)
!1989 = distinct !DILexicalBlock(scope: !1976, file: !3, line: 1027, column: 3)
!1990 = !DILocalVariable(name: "addr_state", scope: !1991, file: !3, line: 1066, type: !117)
!1991 = distinct !DILexicalBlock(scope: !1992, file: !3, line: 1065, column: 51)
!1992 = distinct !DILexicalBlock(scope: !1993, file: !3, line: 1065, column: 5)
!1993 = distinct !DILexicalBlock(scope: !1994, file: !3, line: 1065, column: 5)
!1994 = distinct !DILexicalBlock(scope: !1995, file: !3, line: 1064, column: 24)
!1995 = distinct !DILexicalBlock(scope: !1996, file: !3, line: 1064, column: 3)
!1996 = distinct !DILexicalBlock(scope: !1976, file: !3, line: 1064, column: 3)
!1997 = !DILocalVariable(name: "life", scope: !1998, file: !3, line: 1085, type: !147)
!1998 = distinct !DILexicalBlock(scope: !1999, file: !3, line: 1084, column: 47)
!1999 = distinct !DILexicalBlock(scope: !1991, file: !3, line: 1083, column: 11)
!2000 = !DILocation(line: 961, column: 8, scope: !1976)
!2001 = !DILocation(line: 965, column: 3, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !1976, file: !3, line: 965, column: 3)
!2003 = !DILocation(line: 966, column: 13, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !3, line: 965, column: 48)
!2005 = distinct !DILexicalBlock(scope: !2002, file: !3, line: 965, column: 3)
!2006 = !DILocation(line: 966, column: 31, scope: !2004)
!2007 = !DILocation(line: 966, column: 5, scope: !2004)
!2008 = !DILocation(line: 968, column: 38, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !2010, file: !3, line: 968, column: 11)
!2010 = distinct !DILexicalBlock(scope: !2004, file: !3, line: 966, column: 38)
!2011 = !DILocation(line: 968, column: 50, scope: !2009)
!2012 = !DILocation(line: 968, column: 85, scope: !2009)
!2013 = !DILocation(line: 969, column: 31, scope: !2009)
!2014 = !DILocation(line: 969, column: 13, scope: !2009)
!2015 = !DILocation(line: 968, column: 11, scope: !2010)
!2016 = !DILocation(line: 1529, column: 36, scope: !1688, inlinedAt: !2017)
!2017 = distinct !DILocation(line: 971, column: 9, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !2009, file: !3, line: 969, column: 42)
!2019 = !DILocation(line: 1540, column: 25, scope: !1694, inlinedAt: !2017)
!2020 = !DILocation(line: 1540, column: 27, scope: !1694, inlinedAt: !2017)
!2021 = !DILocation(line: 1540, column: 7, scope: !1688, inlinedAt: !2017)
!2022 = !DILocation(line: 1541, column: 5, scope: !1698, inlinedAt: !2017)
!2023 = !DILocation(line: 1542, column: 25, scope: !1698, inlinedAt: !2017)
!2024 = !DILocation(line: 1543, column: 3, scope: !1698, inlinedAt: !2017)
!2025 = !DILocation(line: 1545, column: 27, scope: !1688, inlinedAt: !2017)
!2026 = !DILocation(line: 1546, column: 30, scope: !1688, inlinedAt: !2017)
!2027 = !DILocation(line: 1547, column: 21, scope: !1688, inlinedAt: !2017)
!2028 = !DILocation(line: 1547, column: 27, scope: !1688, inlinedAt: !2017)
!2029 = !DILocation(line: 1548, column: 44, scope: !1688, inlinedAt: !2017)
!2030 = !DILocation(line: 1549, column: 3, scope: !1708, inlinedAt: !2017)
!2031 = !DILocation(line: 974, column: 46, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !2009, file: !3, line: 972, column: 14)
!2033 = !DILocation(line: 1168, column: 64, scope: !963, inlinedAt: !2034)
!2034 = distinct !DILocation(line: 975, column: 9, scope: !2032)
!2035 = !DILocation(line: 1168, column: 76, scope: !963, inlinedAt: !2034)
!2036 = !DILocation(line: 1170, column: 22, scope: !963, inlinedAt: !2034)
!2037 = !DILocation(line: 1170, column: 37, scope: !963, inlinedAt: !2034)
!2038 = !DILocation(line: 1170, column: 3, scope: !963, inlinedAt: !2034)
!2039 = !DILocation(line: 980, column: 29, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2010, file: !3, line: 980, column: 11)
!2041 = !DILocation(line: 980, column: 31, scope: !2040)
!2042 = !DILocation(line: 980, column: 11, scope: !2010)
!2043 = !DILocation(line: 981, column: 9, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2040, file: !3, line: 980, column: 40)
!2045 = !DILocation(line: 982, column: 7, scope: !2044)
!2046 = !DILocation(line: 983, column: 37, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2010, file: !3, line: 983, column: 11)
!2048 = !DILocation(line: 983, column: 52, scope: !2047)
!2049 = !DILocation(line: 983, column: 11, scope: !2010)
!2050 = !DILocation(line: 985, column: 33, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2047, file: !3, line: 983, column: 73)
!2052 = !DILocation(line: 986, column: 46, scope: !2051)
!2053 = !DILocation(line: 987, column: 7, scope: !2051)
!2054 = !DILocation(line: 988, column: 50, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2047, file: !3, line: 987, column: 14)
!2056 = !DILocation(line: 992, column: 33, scope: !2010)
!2057 = !DILocation(line: 992, column: 43, scope: !2010)
!2058 = !DILocation(line: 993, column: 7, scope: !2010)
!2059 = !DILocation(line: 995, column: 37, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2010, file: !3, line: 995, column: 11)
!2061 = !DILocation(line: 995, column: 48, scope: !2060)
!2062 = !DILocation(line: 995, column: 11, scope: !2010)
!2063 = !DILocation(line: 997, column: 33, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !2060, file: !3, line: 995, column: 54)
!2065 = !DILocation(line: 998, column: 47, scope: !2064)
!2066 = !DILocation(line: 999, column: 7, scope: !2064)
!2067 = !DILocation(line: 1000, column: 45, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2060, file: !3, line: 999, column: 14)
!2069 = !DILocation(line: 1004, column: 38, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2010, file: !3, line: 1004, column: 11)
!2071 = !DILocation(line: 1004, column: 50, scope: !2070)
!2072 = !DILocation(line: 1004, column: 85, scope: !2070)
!2073 = !DILocation(line: 1005, column: 31, scope: !2070)
!2074 = !DILocation(line: 1005, column: 13, scope: !2070)
!2075 = !DILocation(line: 1004, column: 11, scope: !2010)
!2076 = !DILocation(line: 1529, column: 36, scope: !1688, inlinedAt: !2077)
!2077 = distinct !DILocation(line: 1007, column: 9, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2070, file: !3, line: 1005, column: 42)
!2079 = !DILocation(line: 1540, column: 25, scope: !1694, inlinedAt: !2077)
!2080 = !DILocation(line: 1540, column: 27, scope: !1694, inlinedAt: !2077)
!2081 = !DILocation(line: 1540, column: 7, scope: !1688, inlinedAt: !2077)
!2082 = !DILocation(line: 1541, column: 5, scope: !1698, inlinedAt: !2077)
!2083 = !DILocation(line: 1542, column: 25, scope: !1698, inlinedAt: !2077)
!2084 = !DILocation(line: 1543, column: 3, scope: !1698, inlinedAt: !2077)
!2085 = !DILocation(line: 1545, column: 27, scope: !1688, inlinedAt: !2077)
!2086 = !DILocation(line: 1546, column: 30, scope: !1688, inlinedAt: !2077)
!2087 = !DILocation(line: 1547, column: 21, scope: !1688, inlinedAt: !2077)
!2088 = !DILocation(line: 1547, column: 27, scope: !1688, inlinedAt: !2077)
!2089 = !DILocation(line: 1548, column: 44, scope: !1688, inlinedAt: !2077)
!2090 = !DILocation(line: 1549, column: 3, scope: !1708, inlinedAt: !2077)
!2091 = !DILocation(line: 1010, column: 46, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2070, file: !3, line: 1008, column: 14)
!2093 = !DILocation(line: 1168, column: 64, scope: !963, inlinedAt: !2094)
!2094 = distinct !DILocation(line: 1011, column: 9, scope: !2092)
!2095 = !DILocation(line: 1168, column: 76, scope: !963, inlinedAt: !2094)
!2096 = !DILocation(line: 1170, column: 22, scope: !963, inlinedAt: !2094)
!2097 = !DILocation(line: 1170, column: 37, scope: !963, inlinedAt: !2094)
!2098 = !DILocation(line: 1170, column: 3, scope: !963, inlinedAt: !2094)
!2099 = !DILocation(line: 965, column: 44, scope: !2005)
!2100 = !DILocation(line: 965, column: 17, scope: !2005)
!2101 = distinct !{!2101, !2001, !2102}
!2102 = !DILocation(line: 1019, column: 3, scope: !2002)
!2103 = !DILocation(line: 1023, column: 29, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2105, file: !3, line: 1022, column: 51)
!2105 = distinct !DILexicalBlock(scope: !2106, file: !3, line: 1022, column: 3)
!2106 = distinct !DILexicalBlock(scope: !1976, file: !3, line: 1022, column: 3)
!2107 = !{!1399, !548, i64 44}
!2108 = !DILocation(line: 1028, column: 9, scope: !1986)
!2109 = !DILocation(line: 1028, column: 32, scope: !1986)
!2110 = !DILocation(line: 1028, column: 47, scope: !1986)
!2111 = !DILocation(line: 1028, column: 9, scope: !1987)
!2112 = !DILocation(line: 1030, column: 34, scope: !1984)
!2113 = !DILocation(line: 1030, column: 53, scope: !1984)
!2114 = !DILocation(line: 1030, column: 11, scope: !1985)
!2115 = !DILocation(line: 1033, column: 14, scope: !1983)
!2116 = !DILocation(line: 1034, column: 9, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !1983, file: !3, line: 1034, column: 9)
!2118 = !DILocation(line: 1035, column: 15, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2120, file: !3, line: 1035, column: 15)
!2120 = distinct !DILexicalBlock(scope: !2121, file: !3, line: 1034, column: 57)
!2121 = distinct !DILexicalBlock(scope: !2117, file: !3, line: 1034, column: 9)
!2122 = !DILocation(line: 1035, column: 15, scope: !2120)
!2123 = !DILocation(line: 1037, column: 14, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2125, file: !3, line: 1037, column: 14)
!2125 = distinct !DILexicalBlock(scope: !2119, file: !3, line: 1036, column: 75)
!2126 = !DILocation(line: 1038, column: 11, scope: !2125)
!2127 = !DILocation(line: 1034, column: 53, scope: !2121)
!2128 = !DILocation(line: 1034, column: 23, scope: !2121)
!2129 = distinct !{!2129, !2116, !2130}
!2130 = !DILocation(line: 1039, column: 9, scope: !2117)
!2131 = !DILocation(line: 1040, column: 48, scope: !1983)
!2132 = !DILocation(line: 1040, column: 57, scope: !1983)
!2133 = !DILocation(line: 1041, column: 47, scope: !1983)
!2134 = !DILocation(line: 1042, column: 51, scope: !1983)
!2135 = !DILocation(line: 1043, column: 32, scope: !1983)
!2136 = !DILocation(line: 1043, column: 38, scope: !1983)
!2137 = !DILocation(line: 1044, column: 7, scope: !1983)
!2138 = !DILocation(line: 1045, column: 51, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !1984, file: !3, line: 1044, column: 14)
!2140 = !DILocation(line: 1027, column: 42, scope: !1988)
!2141 = !DILocation(line: 1027, column: 17, scope: !1988)
!2142 = !DILocation(line: 1027, column: 3, scope: !1989)
!2143 = distinct !{!2143, !2142, !2144}
!2144 = !DILocation(line: 1048, column: 3, scope: !1989)
!2145 = !DILocation(line: 1052, column: 24, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2147, file: !3, line: 1052, column: 9)
!2147 = distinct !DILexicalBlock(scope: !2148, file: !3, line: 1051, column: 47)
!2148 = distinct !DILexicalBlock(scope: !2149, file: !3, line: 1051, column: 3)
!2149 = distinct !DILexicalBlock(scope: !1976, file: !3, line: 1051, column: 3)
!2150 = !DILocation(line: 1052, column: 30, scope: !2146)
!2151 = !DILocation(line: 1052, column: 9, scope: !2147)
!2152 = !DILocation(line: 1053, column: 26, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2154, file: !3, line: 1053, column: 11)
!2154 = distinct !DILexicalBlock(scope: !2146, file: !3, line: 1052, column: 39)
!2155 = !DILocation(line: 1053, column: 45, scope: !2153)
!2156 = !DILocation(line: 1053, column: 11, scope: !2154)
!2157 = !DILocation(line: 1055, column: 43, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2153, file: !3, line: 1053, column: 73)
!2159 = !DILocation(line: 1056, column: 30, scope: !2158)
!2160 = !DILocation(line: 1057, column: 7, scope: !2158)
!2161 = !DILocation(line: 1058, column: 43, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2153, file: !3, line: 1057, column: 14)
!2163 = !DILocation(line: 1065, column: 5, scope: !1993)
!2164 = !DILocation(line: 1069, column: 20, scope: !1991)
!2165 = !DILocation(line: 1066, column: 12, scope: !1991)
!2166 = !DILocation(line: 1083, column: 12, scope: !1999)
!2167 = !DILocation(line: 1083, column: 43, scope: !1999)
!2168 = !DILocation(line: 1084, column: 12, scope: !1999)
!2169 = !DILocation(line: 1083, column: 11, scope: !1991)
!2170 = !DILocation(line: 1088, column: 11, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2172, file: !3, line: 1088, column: 11)
!2172 = distinct !DILexicalBlock(scope: !2173, file: !3, line: 1088, column: 11)
!2173 = distinct !DILexicalBlock(scope: !2174, file: !3, line: 1088, column: 11)
!2174 = distinct !DILexicalBlock(scope: !2175, file: !3, line: 1086, column: 46)
!2175 = distinct !DILexicalBlock(scope: !1998, file: !3, line: 1086, column: 13)
!2176 = !DILocation(line: 1089, column: 11, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2178, file: !3, line: 1089, column: 11)
!2178 = distinct !DILexicalBlock(scope: !2179, file: !3, line: 1089, column: 11)
!2179 = distinct !DILexicalBlock(scope: !2174, file: !3, line: 1089, column: 11)
!2180 = !DILocation(line: 1090, column: 11, scope: !2174)
!2181 = !DILocation(line: 1091, column: 9, scope: !2174)
!2182 = !DILocation(line: 1093, column: 18, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2184, file: !3, line: 1092, column: 48)
!2184 = distinct !DILexicalBlock(scope: !2185, file: !3, line: 1092, column: 15)
!2185 = distinct !DILexicalBlock(scope: !2175, file: !3, line: 1091, column: 16)
!2186 = !DILocation(line: 1085, column: 15, scope: !1998)
!2187 = !DILocation(line: 1095, column: 13, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2189, file: !3, line: 1095, column: 13)
!2189 = distinct !DILexicalBlock(scope: !2190, file: !3, line: 1095, column: 13)
!2190 = distinct !DILexicalBlock(scope: !2183, file: !3, line: 1095, column: 13)
!2191 = !DILocation(line: 1098, column: 18, scope: !2185)
!2192 = !DILocation(line: 1099, column: 20, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2185, file: !3, line: 1099, column: 15)
!2194 = !DILocation(line: 1099, column: 15, scope: !2185)
!2195 = !DILocation(line: 1102, column: 13, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2197, file: !3, line: 1102, column: 13)
!2197 = distinct !DILexicalBlock(scope: !2198, file: !3, line: 1102, column: 13)
!2198 = distinct !DILexicalBlock(scope: !2199, file: !3, line: 1102, column: 13)
!2199 = distinct !DILexicalBlock(scope: !2193, file: !3, line: 1099, column: 48)
!2200 = !DILocation(line: 1103, column: 28, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2199, file: !3, line: 1103, column: 17)
!2202 = !DILocation(line: 1103, column: 17, scope: !2199)
!2203 = !DILocation(line: 1104, column: 15, scope: !2201)
!2204 = !DILocation(line: 1105, column: 23, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2193, file: !3, line: 1105, column: 22)
!2206 = !DILocation(line: 1105, column: 22, scope: !2193)
!2207 = !DILocation(line: 1106, column: 18, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2205, file: !3, line: 1105, column: 55)
!2209 = !DILocation(line: 1107, column: 13, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2211, file: !3, line: 1107, column: 13)
!2211 = distinct !DILexicalBlock(scope: !2212, file: !3, line: 1107, column: 13)
!2212 = distinct !DILexicalBlock(scope: !2208, file: !3, line: 1107, column: 13)
!2213 = !DILocation(line: 1114, column: 20, scope: !1991)
!2214 = !DILocation(line: 1115, column: 11, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !1991, file: !3, line: 1115, column: 11)
!2216 = !DILocation(line: 1115, column: 11, scope: !1991)
!2217 = !DILocation(line: 1116, column: 25, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2219, file: !3, line: 1116, column: 13)
!2219 = distinct !DILexicalBlock(scope: !2215, file: !3, line: 1115, column: 45)
!2220 = !DILocation(line: 1116, column: 58, scope: !2218)
!2221 = !DILocation(line: 1116, column: 13, scope: !2219)
!2222 = !DILocation(line: 1122, column: 16, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2224, file: !3, line: 1122, column: 15)
!2224 = distinct !DILexicalBlock(scope: !2218, file: !3, line: 1116, column: 92)
!2225 = !DILocation(line: 1122, column: 50, scope: !2223)
!2226 = !DILocation(line: 1123, column: 15, scope: !2223)
!2227 = !DILocation(line: 1123, column: 50, scope: !2223)
!2228 = !DILocation(line: 1122, column: 15, scope: !2224)
!2229 = !DILocation(line: 0, scope: !2224)
!2230 = !DILocation(line: 1127, column: 11, scope: !2224)
!2231 = !DILocation(line: 1128, column: 9, scope: !2224)
!2232 = !DILocation(line: 1128, column: 20, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2218, file: !3, line: 1128, column: 20)
!2234 = !{!551, !520, i64 261}
!2235 = !DILocation(line: 1128, column: 39, scope: !2233)
!2236 = !DILocation(line: 1130, column: 57, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2233, file: !3, line: 1128, column: 67)
!2238 = !DILocation(line: 1130, column: 11, scope: !2237)
!2239 = !DILocation(line: 1134, column: 30, scope: !2237)
!2240 = !DILocation(line: 1134, column: 11, scope: !2237)
!2241 = !DILocation(line: 1136, column: 9, scope: !2237)
!2242 = !DILocation(line: 1065, column: 46, scope: !1992)
!2243 = !DILocation(line: 1065, column: 19, scope: !1992)
!2244 = distinct !{!2244, !2163, !2245}
!2245 = !DILocation(line: 1138, column: 5, scope: !1993)
!2246 = !DILocation(line: 1064, column: 3, scope: !1995)
!2247 = !DILocation(line: 962, column: 17, scope: !1976)
!2248 = !DILocation(line: 1064, column: 3, scope: !1996)
!2249 = !{!528, !528, i64 0}
!2250 = distinct !{!2250, !2248, !2251}
!2251 = !DILocation(line: 1139, column: 3, scope: !1996)
!2252 = !DILocation(line: 1143, column: 8, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !1976, file: !3, line: 1143, column: 7)
!2254 = !DILocation(line: 1143, column: 7, scope: !1976)
!2255 = !DILocation(line: 1144, column: 26, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2253, file: !3, line: 1143, column: 30)
!2257 = !DILocation(line: 1145, column: 5, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2256, file: !3, line: 1145, column: 5)
!2259 = !DILocation(line: 1145, column: 5, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2258, file: !3, line: 1145, column: 5)
!2261 = !DILocation(line: 1146, column: 19, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2263, file: !3, line: 1146, column: 11)
!2263 = distinct !DILexicalBlock(scope: !2260, file: !3, line: 1145, column: 26)
!2264 = !DILocation(line: 1146, column: 28, scope: !2262)
!2265 = !DILocation(line: 1146, column: 33, scope: !2262)
!2266 = !DILocation(line: 1146, column: 36, scope: !2262)
!2267 = !DILocation(line: 1146, column: 55, scope: !2262)
!2268 = !DILocation(line: 1148, column: 12, scope: !2262)
!2269 = !DILocation(line: 1148, column: 63, scope: !2262)
!2270 = !DILocation(line: 1150, column: 13, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2272, file: !3, line: 1150, column: 13)
!2272 = distinct !DILexicalBlock(scope: !2262, file: !3, line: 1149, column: 67)
!2273 = !DILocation(line: 1150, column: 32, scope: !2271)
!2274 = !DILocation(line: 1150, column: 13, scope: !2272)
!2275 = !DILocation(line: 1151, column: 26, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2271, file: !3, line: 1150, column: 43)
!2277 = !DILocation(line: 1152, column: 9, scope: !2276)
!2278 = distinct !{!2278, !2257, !2279}
!2279 = !DILocation(line: 1154, column: 5, scope: !2258)
!2280 = !DILocation(line: 1156, column: 25, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2253, file: !3, line: 1155, column: 10)
!2282 = !DILocation(line: 1160, column: 1, scope: !1976)
!2283 = !DILocation(line: 194, column: 43, scope: !416)
!2284 = !DILocation(line: 196, column: 2, scope: !416)
!2285 = !DILocation(line: 196, column: 10, scope: !416)
!2286 = !DILocation(line: 197, column: 2, scope: !416)
!2287 = !DILocation(line: 198, column: 2, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2289, file: !417, line: 198, column: 2)
!2289 = distinct !DILexicalBlock(scope: !416, file: !417, line: 198, column: 2)
!2290 = !DILocation(line: 199, column: 2, scope: !416)
!2291 = !DILocation(line: 200, column: 1, scope: !416)
!2292 = distinct !DISubprogram(name: "nd6_send_ns", scope: !3, file: !3, line: 1181, type: !1559, isLocal: true, isDefinition: true, scopeLine: 1182, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2293)
!2293 = !{!2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301}
!2294 = !DILocalVariable(name: "netif", arg: 1, scope: !2292, file: !3, line: 1181, type: !274)
!2295 = !DILocalVariable(name: "target_addr", arg: 2, scope: !2292, file: !3, line: 1181, type: !162)
!2296 = !DILocalVariable(name: "flags", arg: 3, scope: !2292, file: !3, line: 1181, type: !117)
!2297 = !DILocalVariable(name: "ns_hdr", scope: !2292, file: !3, line: 1183, type: !180)
!2298 = !DILocalVariable(name: "p", scope: !2292, file: !3, line: 1184, type: !253)
!2299 = !DILocalVariable(name: "src_addr", scope: !2292, file: !3, line: 1185, type: !162)
!2300 = !DILocalVariable(name: "lladdr_opt_len", scope: !2292, file: !3, line: 1186, type: !131)
!2301 = !DILocalVariable(name: "lladdr_opt", scope: !2302, file: !3, line: 1219, type: !170)
!2302 = distinct !DILexicalBlock(scope: !2303, file: !3, line: 1218, column: 28)
!2303 = distinct !DILexicalBlock(scope: !2292, file: !3, line: 1218, column: 7)
!2304 = !DILocation(line: 1181, column: 27, scope: !2292)
!2305 = !DILocation(line: 1181, column: 52, scope: !2292)
!2306 = !DILocation(line: 1181, column: 70, scope: !2292)
!2307 = !DILocation(line: 1188, column: 3, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2309, file: !3, line: 1188, column: 3)
!2309 = distinct !DILexicalBlock(scope: !2292, file: !3, line: 1188, column: 3)
!2310 = !DILocation(line: 1188, column: 3, scope: !2309)
!2311 = !DILocation(line: 1188, column: 3, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2313, file: !3, line: 1188, column: 3)
!2313 = distinct !DILexicalBlock(scope: !2308, file: !3, line: 1188, column: 3)
!2314 = !DILocation(line: 1188, column: 3, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2316, file: !3, line: 1188, column: 3)
!2316 = distinct !DILexicalBlock(scope: !2317, file: !3, line: 1188, column: 3)
!2317 = distinct !DILexicalBlock(scope: !2312, file: !3, line: 1188, column: 3)
!2318 = !DILocation(line: 1190, column: 9, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2292, file: !3, line: 1190, column: 7)
!2320 = !DILocation(line: 1190, column: 15, scope: !2319)
!2321 = !DILocation(line: 1190, column: 40, scope: !2319)
!2322 = !DILocation(line: 1191, column: 7, scope: !2319)
!2323 = !DILocation(line: 1190, column: 7, scope: !2292)
!2324 = !DILocation(line: 1193, column: 16, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2319, file: !3, line: 1191, column: 56)
!2326 = !DILocation(line: 1185, column: 21, scope: !2292)
!2327 = !DILocation(line: 1195, column: 31, scope: !2325)
!2328 = !DILocation(line: 1195, column: 24, scope: !2325)
!2329 = !DILocation(line: 1195, column: 47, scope: !2325)
!2330 = !DILocation(line: 1195, column: 52, scope: !2325)
!2331 = !DILocation(line: 1186, column: 9, scope: !2292)
!2332 = !DILocation(line: 1196, column: 3, scope: !2325)
!2333 = !DILocation(line: 0, scope: !2325)
!2334 = !DILocation(line: 1203, column: 70, scope: !2292)
!2335 = !DILocation(line: 1203, column: 52, scope: !2292)
!2336 = !DILocation(line: 1203, column: 7, scope: !2292)
!2337 = !DILocation(line: 1184, column: 16, scope: !2292)
!2338 = !DILocation(line: 1204, column: 9, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2292, file: !3, line: 1204, column: 7)
!2340 = !DILocation(line: 1204, column: 7, scope: !2292)
!2341 = !DILocation(line: 1205, column: 5, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2339, file: !3, line: 1204, column: 18)
!2343 = !DILocation(line: 1206, column: 5, scope: !2342)
!2344 = !DILocation(line: 1210, column: 35, scope: !2292)
!2345 = !DILocation(line: 1183, column: 21, scope: !2292)
!2346 = !DILocation(line: 1212, column: 11, scope: !2292)
!2347 = !DILocation(line: 1212, column: 16, scope: !2292)
!2348 = !{!750, !520, i64 0}
!2349 = !DILocation(line: 1213, column: 11, scope: !2292)
!2350 = !DILocation(line: 1213, column: 16, scope: !2292)
!2351 = !DILocation(line: 1214, column: 11, scope: !2292)
!2352 = !DILocation(line: 1214, column: 18, scope: !2292)
!2353 = !{!750, !519, i64 2}
!2354 = !DILocation(line: 1215, column: 11, scope: !2292)
!2355 = !DILocation(line: 1215, column: 20, scope: !2292)
!2356 = !{!750, !548, i64 4}
!2357 = !DILocation(line: 1216, column: 3, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2292, file: !3, line: 1216, column: 3)
!2359 = !DILocation(line: 1218, column: 22, scope: !2303)
!2360 = !DILocation(line: 1218, column: 7, scope: !2292)
!2361 = !DILocation(line: 1219, column: 83, scope: !2302)
!2362 = !DILocation(line: 1219, column: 27, scope: !2302)
!2363 = !DILocation(line: 1220, column: 22, scope: !2302)
!2364 = !DILocation(line: 1221, column: 26, scope: !2302)
!2365 = !DILocation(line: 1221, column: 17, scope: !2302)
!2366 = !DILocation(line: 1221, column: 24, scope: !2302)
!2367 = !DILocation(line: 1222, column: 5, scope: !2302)
!2368 = !DILocation(line: 1223, column: 3, scope: !2302)
!2369 = !DILocation(line: 1226, column: 13, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2292, file: !3, line: 1226, column: 7)
!2371 = !DILocation(line: 1226, column: 7, scope: !2292)
!2372 = !DILocation(line: 1227, column: 5, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2374, file: !3, line: 1227, column: 5)
!2374 = distinct !DILexicalBlock(scope: !2370, file: !3, line: 1226, column: 45)
!2375 = !DILocation(line: 1228, column: 5, scope: !2374)
!2376 = !DILocation(line: 1233, column: 3, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2292, file: !3, line: 1233, column: 3)
!2378 = !DILocation(line: 1233, column: 3, scope: !2292)
!2379 = !DILocation(line: 1234, column: 63, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2377, file: !3, line: 1233, column: 63)
!2381 = !DILocation(line: 1234, column: 22, scope: !2380)
!2382 = !DILocation(line: 1234, column: 20, scope: !2380)
!2383 = !DILocation(line: 1236, column: 3, scope: !2380)
!2384 = !DILocation(line: 1240, column: 3, scope: !2292)
!2385 = !DILocation(line: 1241, column: 30, scope: !2292)
!2386 = !DILocation(line: 1241, column: 20, scope: !2292)
!2387 = !DILocation(line: 1241, column: 3, scope: !2292)
!2388 = !DILocation(line: 1243, column: 3, scope: !2292)
!2389 = !DILocation(line: 1244, column: 1, scope: !2292)
!2390 = distinct !DISubprogram(name: "nd6_clear_destination_cache", scope: !3, file: !3, line: 1613, type: !1977, isLocal: false, isDefinition: true, scopeLine: 1614, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2391)
!2391 = !{!2392}
!2392 = !DILocalVariable(name: "i", scope: !2390, file: !3, line: 1615, type: !22)
!2393 = !DILocation(line: 1615, column: 7, scope: !2390)
!2394 = !DILocation(line: 1618, column: 5, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2396, file: !3, line: 1618, column: 5)
!2396 = distinct !DILexicalBlock(scope: !2397, file: !3, line: 1617, column: 51)
!2397 = distinct !DILexicalBlock(scope: !2398, file: !3, line: 1617, column: 3)
!2398 = distinct !DILexicalBlock(scope: !2390, file: !3, line: 1617, column: 3)
!2399 = !DILocation(line: 1620, column: 1, scope: !2390)
!2400 = distinct !DISubprogram(name: "nd6_find_route", scope: !3, file: !3, line: 1742, type: !2401, isLocal: false, isDefinition: true, scopeLine: 1743, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2403)
!2401 = !DISubroutineType(types: !2402)
!2402 = !{!274, !162}
!2403 = !{!2404, !2405, !2406}
!2404 = !DILocalVariable(name: "ip6addr", arg: 1, scope: !2400, file: !3, line: 1742, type: !162)
!2405 = !DILocalVariable(name: "netif", scope: !2400, file: !3, line: 1744, type: !274)
!2406 = !DILocalVariable(name: "i", scope: !2400, file: !3, line: 1745, type: !307)
!2407 = !DILocation(line: 1742, column: 34, scope: !2400)
!2408 = !DILocation(line: 1745, column: 8, scope: !2400)
!2409 = !DILocation(line: 1752, column: 28, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2411, file: !3, line: 1751, column: 47)
!2411 = distinct !DILexicalBlock(scope: !2412, file: !3, line: 1751, column: 3)
!2412 = distinct !DILexicalBlock(scope: !2400, file: !3, line: 1751, column: 3)
!2413 = !DILocation(line: 1744, column: 17, scope: !2400)
!2414 = !DILocation(line: 1753, column: 16, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2410, file: !3, line: 1753, column: 9)
!2416 = !DILocation(line: 1753, column: 25, scope: !2415)
!2417 = !DILocation(line: 1753, column: 28, scope: !2415)
!2418 = !DILocation(line: 1753, column: 77, scope: !2415)
!2419 = !DILocation(line: 1754, column: 9, scope: !2415)
!2420 = !DILocation(line: 1754, column: 28, scope: !2415)
!2421 = !DILocation(line: 1762, column: 5, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2423, file: !3, line: 1762, column: 5)
!2423 = distinct !DILexicalBlock(scope: !2424, file: !3, line: 1762, column: 5)
!2424 = distinct !DILexicalBlock(scope: !2425, file: !3, line: 1761, column: 15)
!2425 = distinct !DILexicalBlock(scope: !2400, file: !3, line: 1761, column: 7)
!2426 = !DILocation(line: 1762, column: 5, scope: !2423)
!2427 = !DILocation(line: 1762, column: 5, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2429, file: !3, line: 1762, column: 5)
!2429 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 1762, column: 5)
!2430 = !DILocation(line: 1762, column: 5, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2432, file: !3, line: 1762, column: 5)
!2432 = distinct !DILexicalBlock(scope: !2433, file: !3, line: 1762, column: 5)
!2433 = distinct !DILexicalBlock(scope: !2428, file: !3, line: 1762, column: 5)
!2434 = !DILocation(line: 1764, column: 51, scope: !2424)
!2435 = !DILocation(line: 1764, column: 5, scope: !2424)
!2436 = !DILocation(line: 0, scope: !2400)
!2437 = !DILocation(line: 1768, column: 1, scope: !2400)
!2438 = !DILocation(line: 1760, column: 7, scope: !2400)
!2439 = !DILocation(line: 1761, column: 9, scope: !2425)
!2440 = !DILocation(line: 1761, column: 7, scope: !2400)
!2441 = !DILocation(line: 1670, column: 37, scope: !443)
!2442 = !DILocation(line: 1670, column: 60, scope: !443)
!2443 = !DILocation(line: 1673, column: 14, scope: !443)
!2444 = !DILocation(line: 1673, column: 8, scope: !443)
!2445 = !DILocation(line: 1684, column: 32, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2447, file: !3, line: 1684, column: 9)
!2447 = distinct !DILexicalBlock(scope: !2448, file: !3, line: 1682, column: 46)
!2448 = distinct !DILexicalBlock(scope: !2449, file: !3, line: 1682, column: 3)
!2449 = distinct !DILexicalBlock(scope: !443, file: !3, line: 1682, column: 3)
!2450 = !DILocation(line: 1684, column: 47, scope: !2446)
!2451 = !DILocation(line: 1684, column: 9, scope: !2447)
!2452 = !DILocation(line: 1685, column: 61, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2446, file: !3, line: 1684, column: 56)
!2454 = !DILocation(line: 1672, column: 17, scope: !443)
!2455 = !DILocation(line: 1686, column: 25, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2453, file: !3, line: 1686, column: 11)
!2457 = !DILocation(line: 1686, column: 34, scope: !2456)
!2458 = !DILocation(line: 1686, column: 11, scope: !2453)
!2459 = !DILocation(line: 1686, column: 60, scope: !2456)
!2460 = !DILocation(line: 1686, column: 38, scope: !2456)
!2461 = !DILocation(line: 1687, column: 12, scope: !2456)
!2462 = !DILocation(line: 1687, column: 38, scope: !2456)
!2463 = !DILocation(line: 1691, column: 52, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2465, file: !3, line: 1691, column: 13)
!2465 = distinct !DILexicalBlock(scope: !2456, file: !3, line: 1687, column: 75)
!2466 = !DILocation(line: 1691, column: 13, scope: !2465)
!2467 = !DILocation(line: 1695, column: 22, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2469, file: !3, line: 1693, column: 15)
!2469 = distinct !DILexicalBlock(scope: !2464, file: !3, line: 1691, column: 77)
!2470 = !DILocation(line: 0, scope: !443)
!2471 = !DILocation(line: 1710, column: 23, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !443, file: !3, line: 1710, column: 7)
!2473 = !DILocation(line: 1710, column: 27, scope: !2472)
!2474 = !DILocation(line: 1710, column: 41, scope: !2472)
!2475 = !DILocation(line: 1710, column: 7, scope: !443)
!2476 = !DILocation(line: 0, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2472, file: !3, line: 1710, column: 67)
!2478 = !DILocation(line: 1713, column: 7, scope: !443)
!2479 = !DILocation(line: 1673, column: 11, scope: !443)
!2480 = !DILocation(line: 1715, column: 9, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 1715, column: 9)
!2482 = distinct !DILexicalBlock(scope: !2483, file: !3, line: 1714, column: 46)
!2483 = distinct !DILexicalBlock(scope: !2484, file: !3, line: 1714, column: 3)
!2484 = distinct !DILexicalBlock(scope: !443, file: !3, line: 1714, column: 3)
!2485 = !DILocation(line: 1715, column: 32, scope: !2481)
!2486 = !DILocation(line: 1715, column: 47, scope: !2481)
!2487 = !DILocation(line: 1715, column: 9, scope: !2482)
!2488 = !DILocation(line: 1716, column: 61, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2481, file: !3, line: 1715, column: 56)
!2490 = !DILocation(line: 1717, column: 25, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2489, file: !3, line: 1717, column: 11)
!2492 = !DILocation(line: 1717, column: 34, scope: !2491)
!2493 = !DILocation(line: 1717, column: 11, scope: !2489)
!2494 = !DILocation(line: 1717, column: 60, scope: !2491)
!2495 = !DILocation(line: 1717, column: 38, scope: !2491)
!2496 = !DILocation(line: 1718, column: 12, scope: !2491)
!2497 = !DILocation(line: 1718, column: 38, scope: !2491)
!2498 = !DILocation(line: 1722, column: 9, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 1722, column: 9)
!2500 = !DILocation(line: 1722, column: 13, scope: !2499)
!2501 = !DILocation(line: 1722, column: 9, scope: !2482)
!2502 = !DILocation(line: 1729, column: 1, scope: !443)
!2503 = !DILocation(line: 1695, column: 35, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2468, file: !3, line: 1695, column: 22)
!2505 = !DILocation(line: 1702, column: 20, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !443, file: !3, line: 1702, column: 7)
!2507 = !DILocation(line: 1702, column: 7, scope: !443)
!2508 = distinct !DISubprogram(name: "nd6_get_next_hop_addr_or_queue", scope: !3, file: !3, line: 2247, type: !2509, isLocal: false, isDefinition: true, scopeLine: 2248, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2514)
!2509 = !DISubroutineType(types: !2510)
!2510 = !{!306, !274, !253, !162, !2511}
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!2514 = !{!2515, !2516, !2517, !2518, !2519}
!2515 = !DILocalVariable(name: "netif", arg: 1, scope: !2508, file: !3, line: 2247, type: !274)
!2516 = !DILocalVariable(name: "q", arg: 2, scope: !2508, file: !3, line: 2247, type: !253)
!2517 = !DILocalVariable(name: "ip6addr", arg: 3, scope: !2508, file: !3, line: 2247, type: !162)
!2518 = !DILocalVariable(name: "hwaddrp", arg: 4, scope: !2508, file: !3, line: 2247, type: !2511)
!2519 = !DILocalVariable(name: "i", scope: !2508, file: !3, line: 2249, type: !307)
!2520 = !DILocation(line: 2247, column: 46, scope: !2508)
!2521 = !DILocation(line: 2247, column: 66, scope: !2508)
!2522 = !DILocation(line: 2247, column: 87, scope: !2508)
!2523 = !DILocation(line: 2247, column: 109, scope: !2508)
!2524 = !DILocalVariable(name: "ip6addr", arg: 1, scope: !2525, file: !3, line: 1924, type: !162)
!2525 = distinct !DISubprogram(name: "nd6_get_next_hop_entry", scope: !3, file: !3, line: 1924, type: !444, isLocal: true, isDefinition: true, scopeLine: 1925, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2526)
!2526 = !{!2524, !2527, !2528, !2529}
!2527 = !DILocalVariable(name: "netif", arg: 2, scope: !2525, file: !3, line: 1924, type: !274)
!2528 = !DILocalVariable(name: "i", scope: !2525, file: !3, line: 1929, type: !307)
!2529 = !DILocalVariable(name: "dst_idx", scope: !2525, file: !3, line: 1930, type: !466)
!2530 = !DILocation(line: 1924, column: 42, scope: !2525, inlinedAt: !2531)
!2531 = distinct !DILocation(line: 2252, column: 7, scope: !2508)
!2532 = !DILocation(line: 1924, column: 65, scope: !2525, inlinedAt: !2531)
!2533 = !DILocation(line: 1945, column: 7, scope: !2534, inlinedAt: !2531)
!2534 = distinct !DILexicalBlock(scope: !2525, file: !3, line: 1945, column: 7)
!2535 = !DILocation(line: 1945, column: 7, scope: !2525, inlinedAt: !2531)
!2536 = !DILocation(line: 1948, column: 5, scope: !2537, inlinedAt: !2531)
!2537 = distinct !DILexicalBlock(scope: !2534, file: !3, line: 1945, column: 99)
!2538 = !{!517, !519, i64 308}
!2539 = !DILocation(line: 1949, column: 3, scope: !2537, inlinedAt: !2531)
!2540 = !DILocation(line: 1560, column: 52, scope: !1384, inlinedAt: !2541)
!2541 = distinct !DILocation(line: 1951, column: 15, scope: !2542, inlinedAt: !2531)
!2542 = distinct !DILexicalBlock(scope: !2534, file: !3, line: 1949, column: 10)
!2543 = !DILocation(line: 1562, column: 9, scope: !1384, inlinedAt: !2541)
!2544 = !DILocation(line: 1567, column: 9, scope: !1395, inlinedAt: !2541)
!2545 = !DILocation(line: 1566, column: 3, scope: !1393, inlinedAt: !2541)
!2546 = !DILocation(line: 1567, column: 9, scope: !1396, inlinedAt: !2541)
!2547 = !DILocation(line: 1566, column: 47, scope: !1397, inlinedAt: !2541)
!2548 = !DILocation(line: 1566, column: 17, scope: !1397, inlinedAt: !2541)
!2549 = !DILocation(line: 1930, column: 9, scope: !2525, inlinedAt: !2531)
!2550 = !DILocation(line: 1954, column: 7, scope: !2551, inlinedAt: !2531)
!2551 = distinct !DILexicalBlock(scope: !2552, file: !3, line: 1954, column: 7)
!2552 = distinct !DILexicalBlock(scope: !2553, file: !3, line: 1954, column: 7)
!2553 = distinct !DILexicalBlock(scope: !2554, file: !3, line: 1952, column: 23)
!2554 = distinct !DILexicalBlock(scope: !2542, file: !3, line: 1952, column: 9)
!2555 = !DILocation(line: 1954, column: 7, scope: !2552, inlinedAt: !2531)
!2556 = !DILocation(line: 1954, column: 7, scope: !2557, inlinedAt: !2531)
!2557 = distinct !DILexicalBlock(scope: !2558, file: !3, line: 1954, column: 7)
!2558 = distinct !DILexicalBlock(scope: !2551, file: !3, line: 1954, column: 7)
!2559 = !DILocation(line: 1954, column: 7, scope: !2560, inlinedAt: !2531)
!2560 = distinct !DILexicalBlock(scope: !2561, file: !3, line: 1954, column: 7)
!2561 = distinct !DILexicalBlock(scope: !2562, file: !3, line: 1954, column: 7)
!2562 = distinct !DILexicalBlock(scope: !2557, file: !3, line: 1954, column: 7)
!2563 = !DILocation(line: 1955, column: 38, scope: !2553, inlinedAt: !2531)
!2564 = !DILocation(line: 1955, column: 36, scope: !2553, inlinedAt: !2531)
!2565 = !DILocation(line: 2005, column: 7, scope: !2566, inlinedAt: !2531)
!2566 = distinct !DILexicalBlock(scope: !2525, file: !3, line: 2005, column: 7)
!2567 = !DILocation(line: 1956, column: 5, scope: !2553, inlinedAt: !2531)
!2568 = !DILocalVariable(name: "i", scope: !2569, file: !3, line: 1584, type: !466)
!2569 = distinct !DISubprogram(name: "nd6_new_destination_cache_entry", scope: !3, file: !3, line: 1582, type: !2570, isLocal: true, isDefinition: true, scopeLine: 1583, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2572)
!2570 = !DISubroutineType(types: !2571)
!2571 = !{!466}
!2572 = !{!2568, !2573, !2574}
!2573 = !DILocalVariable(name: "j", scope: !2569, file: !3, line: 1584, type: !466)
!2574 = !DILocalVariable(name: "age", scope: !2569, file: !3, line: 1585, type: !147)
!2575 = !DILocation(line: 1584, column: 9, scope: !2569, inlinedAt: !2576)
!2576 = distinct !DILocation(line: 1958, column: 17, scope: !2577, inlinedAt: !2531)
!2577 = distinct !DILexicalBlock(scope: !2554, file: !3, line: 1956, column: 12)
!2578 = !DILocation(line: 1589, column: 9, scope: !2579, inlinedAt: !2576)
!2579 = distinct !DILexicalBlock(scope: !2580, file: !3, line: 1589, column: 9)
!2580 = distinct !DILexicalBlock(scope: !2581, file: !3, line: 1588, column: 51)
!2581 = distinct !DILexicalBlock(scope: !2582, file: !3, line: 1588, column: 3)
!2582 = distinct !DILexicalBlock(scope: !2569, file: !3, line: 1588, column: 3)
!2583 = !DILocation(line: 1584, column: 12, scope: !2569, inlinedAt: !2576)
!2584 = !DILocation(line: 1598, column: 30, scope: !2585, inlinedAt: !2576)
!2585 = distinct !DILexicalBlock(scope: !2586, file: !3, line: 1598, column: 9)
!2586 = distinct !DILexicalBlock(scope: !2587, file: !3, line: 1597, column: 51)
!2587 = distinct !DILexicalBlock(scope: !2588, file: !3, line: 1597, column: 3)
!2588 = distinct !DILexicalBlock(scope: !2569, file: !3, line: 1597, column: 3)
!2589 = !DILocation(line: 1598, column: 34, scope: !2585, inlinedAt: !2576)
!2590 = !DILocation(line: 1598, column: 9, scope: !2586, inlinedAt: !2576)
!2591 = !DILocation(line: 1604, column: 1, scope: !2569, inlinedAt: !2576)
!2592 = !DILocation(line: 0, scope: !2569, inlinedAt: !2576)
!2593 = !DILocation(line: 1962, column: 38, scope: !2594, inlinedAt: !2531)
!2594 = distinct !DILexicalBlock(scope: !2595, file: !3, line: 1959, column: 25)
!2595 = distinct !DILexicalBlock(scope: !2577, file: !3, line: 1959, column: 11)
!2596 = !DILocation(line: 1969, column: 7, scope: !2597, inlinedAt: !2531)
!2597 = distinct !DILexicalBlock(scope: !2577, file: !3, line: 1969, column: 7)
!2598 = !DILocation(line: 1972, column: 11, scope: !2599, inlinedAt: !2531)
!2599 = distinct !DILexicalBlock(scope: !2577, file: !3, line: 1972, column: 11)
!2600 = !DILocation(line: 1972, column: 41, scope: !2599, inlinedAt: !2531)
!2601 = !DILocalVariable(name: "ip6addr", arg: 1, scope: !2602, file: !3, line: 1630, type: !162)
!2602 = distinct !DISubprogram(name: "nd6_is_prefix_in_netif", scope: !3, file: !3, line: 1630, type: !2603, isLocal: true, isDefinition: true, scopeLine: 1631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2605)
!2603 = !DISubroutineType(types: !2604)
!2604 = !{!22, !162, !274}
!2605 = !{!2601, !2606, !2607}
!2606 = !DILocalVariable(name: "netif", arg: 2, scope: !2602, file: !3, line: 1630, type: !274)
!2607 = !DILocalVariable(name: "i", scope: !2602, file: !3, line: 1632, type: !307)
!2608 = !DILocation(line: 1630, column: 42, scope: !2602, inlinedAt: !2609)
!2609 = distinct !DILocation(line: 1973, column: 11, scope: !2599, inlinedAt: !2531)
!2610 = !DILocation(line: 1630, column: 65, scope: !2602, inlinedAt: !2609)
!2611 = !DILocation(line: 1632, column: 8, scope: !2602, inlinedAt: !2609)
!2612 = !DILocation(line: 1636, column: 25, scope: !2613, inlinedAt: !2609)
!2613 = distinct !DILexicalBlock(scope: !2614, file: !3, line: 1636, column: 9)
!2614 = distinct !DILexicalBlock(scope: !2615, file: !3, line: 1635, column: 47)
!2615 = distinct !DILexicalBlock(scope: !2616, file: !3, line: 1635, column: 3)
!2616 = distinct !DILexicalBlock(scope: !2602, file: !3, line: 1635, column: 3)
!2617 = !DILocation(line: 1636, column: 31, scope: !2613, inlinedAt: !2609)
!2618 = !DILocation(line: 1637, column: 25, scope: !2613, inlinedAt: !2609)
!2619 = !DILocation(line: 1637, column: 44, scope: !2613, inlinedAt: !2609)
!2620 = !DILocation(line: 1636, column: 41, scope: !2613, inlinedAt: !2609)
!2621 = !DILocation(line: 1638, column: 9, scope: !2613, inlinedAt: !2609)
!2622 = !DILocation(line: 1636, column: 9, scope: !2614, inlinedAt: !2609)
!2623 = !DILocation(line: 1648, column: 9, scope: !2624, inlinedAt: !2609)
!2624 = distinct !DILexicalBlock(scope: !2625, file: !3, line: 1647, column: 9)
!2625 = distinct !DILexicalBlock(scope: !2626, file: !3, line: 1646, column: 49)
!2626 = distinct !DILexicalBlock(scope: !2627, file: !3, line: 1646, column: 3)
!2627 = distinct !DILexicalBlock(scope: !2602, file: !3, line: 1646, column: 3)
!2628 = !DILocation(line: 1648, column: 43, scope: !2624, inlinedAt: !2609)
!2629 = !DILocation(line: 1649, column: 9, scope: !2624, inlinedAt: !2609)
!2630 = !DILocation(line: 1647, column: 9, scope: !2625, inlinedAt: !2609)
!2631 = !DILocation(line: 1647, column: 9, scope: !2624, inlinedAt: !2609)
!2632 = !DILocation(line: 1647, column: 58, scope: !2624, inlinedAt: !2609)
!2633 = !DILocation(line: 1975, column: 64, scope: !2634, inlinedAt: !2531)
!2634 = distinct !DILexicalBlock(scope: !2599, file: !3, line: 1973, column: 51)
!2635 = !DILocation(line: 1975, column: 57, scope: !2634, inlinedAt: !2531)
!2636 = !DILocation(line: 1975, column: 62, scope: !2634, inlinedAt: !2531)
!2637 = !DILocation(line: 1976, column: 9, scope: !2638, inlinedAt: !2531)
!2638 = distinct !DILexicalBlock(scope: !2634, file: !3, line: 1976, column: 9)
!2639 = !DILocation(line: 1983, column: 7, scope: !2634, inlinedAt: !2531)
!2640 = !DILocation(line: 1985, column: 13, scope: !2641, inlinedAt: !2531)
!2641 = distinct !DILexicalBlock(scope: !2599, file: !3, line: 1983, column: 14)
!2642 = !DILocation(line: 1929, column: 8, scope: !2525, inlinedAt: !2531)
!2643 = !DILocation(line: 1986, column: 15, scope: !2644, inlinedAt: !2531)
!2644 = distinct !DILexicalBlock(scope: !2641, file: !3, line: 1986, column: 13)
!2645 = !DILocation(line: 1986, column: 13, scope: !2641, inlinedAt: !2531)
!2646 = !DILocation(line: 1988, column: 11, scope: !2647, inlinedAt: !2531)
!2647 = distinct !DILexicalBlock(scope: !2648, file: !3, line: 1988, column: 11)
!2648 = distinct !DILexicalBlock(scope: !2644, file: !3, line: 1986, column: 20)
!2649 = !DILocation(line: 1989, column: 11, scope: !2648, inlinedAt: !2531)
!2650 = !DILocation(line: 1991, column: 64, scope: !2641, inlinedAt: !2531)
!2651 = !DILocation(line: 1991, column: 57, scope: !2641, inlinedAt: !2531)
!2652 = !DILocation(line: 1991, column: 62, scope: !2641, inlinedAt: !2531)
!2653 = !DILocation(line: 1992, column: 9, scope: !2654, inlinedAt: !2531)
!2654 = distinct !DILexicalBlock(scope: !2641, file: !3, line: 1992, column: 9)
!2655 = !DILocation(line: 2005, column: 7, scope: !2525, inlinedAt: !2531)
!2656 = !DILocation(line: 2009, column: 5, scope: !2657, inlinedAt: !2531)
!2657 = distinct !DILexicalBlock(scope: !2566, file: !3, line: 2006, column: 84)
!2658 = !DILocation(line: 2010, column: 3, scope: !2657, inlinedAt: !2531)
!2659 = !DILocation(line: 1403, column: 8, scope: !635, inlinedAt: !2660)
!2660 = distinct !DILocation(line: 2011, column: 9, scope: !2661, inlinedAt: !2531)
!2661 = distinct !DILexicalBlock(scope: !2566, file: !3, line: 2010, column: 10)
!2662 = !DILocation(line: 1405, column: 9, scope: !643, inlinedAt: !2660)
!2663 = !DILocation(line: 1404, column: 3, scope: !646, inlinedAt: !2660)
!2664 = !DILocation(line: 1405, column: 9, scope: !644, inlinedAt: !2660)
!2665 = !DILocation(line: 1404, column: 44, scope: !645, inlinedAt: !2660)
!2666 = !DILocation(line: 1404, column: 17, scope: !645, inlinedAt: !2660)
!2667 = !DILocation(line: 2014, column: 33, scope: !2668, inlinedAt: !2531)
!2668 = distinct !DILexicalBlock(scope: !2669, file: !3, line: 2012, column: 17)
!2669 = distinct !DILexicalBlock(scope: !2661, file: !3, line: 2012, column: 9)
!2670 = !DILocation(line: 2038, column: 51, scope: !2525, inlinedAt: !2531)
!2671 = !DILocation(line: 2038, column: 55, scope: !2525, inlinedAt: !2531)
!2672 = !DILocation(line: 2249, column: 8, scope: !2508)
!2673 = !DILocation(line: 2253, column: 7, scope: !2508)
!2674 = !DILocation(line: 2017, column: 11, scope: !2675, inlinedAt: !2531)
!2675 = distinct !DILexicalBlock(scope: !2669, file: !3, line: 2015, column: 12)
!2676 = !DILocation(line: 2018, column: 13, scope: !2677, inlinedAt: !2531)
!2677 = distinct !DILexicalBlock(scope: !2675, file: !3, line: 2018, column: 11)
!2678 = !DILocation(line: 2018, column: 11, scope: !2675, inlinedAt: !2531)
!2679 = !DILocation(line: 2020, column: 35, scope: !2680, inlinedAt: !2531)
!2680 = distinct !DILexicalBlock(scope: !2677, file: !3, line: 2018, column: 19)
!2681 = !DILocation(line: 2027, column: 7, scope: !2682, inlinedAt: !2531)
!2682 = distinct !DILexicalBlock(scope: !2675, file: !3, line: 2027, column: 7)
!2683 = !DILocation(line: 2029, column: 25, scope: !2675, inlinedAt: !2531)
!2684 = !DILocation(line: 2029, column: 34, scope: !2675, inlinedAt: !2531)
!2685 = !DILocation(line: 2030, column: 25, scope: !2675, inlinedAt: !2531)
!2686 = !DILocation(line: 2030, column: 31, scope: !2675, inlinedAt: !2531)
!2687 = !DILocation(line: 2031, column: 25, scope: !2675, inlinedAt: !2531)
!2688 = !DILocation(line: 2031, column: 31, scope: !2675, inlinedAt: !2531)
!2689 = !DILocation(line: 2032, column: 33, scope: !2675, inlinedAt: !2531)
!2690 = !DILocation(line: 2032, column: 45, scope: !2675, inlinedAt: !2531)
!2691 = !DILocation(line: 1168, column: 64, scope: !963, inlinedAt: !2692)
!2692 = distinct !DILocation(line: 2033, column: 7, scope: !2675, inlinedAt: !2531)
!2693 = !DILocation(line: 1168, column: 76, scope: !963, inlinedAt: !2692)
!2694 = !DILocation(line: 1170, column: 37, scope: !963, inlinedAt: !2692)
!2695 = !DILocation(line: 1170, column: 3, scope: !963, inlinedAt: !2692)
!2696 = !DILocation(line: 2038, column: 21, scope: !2525, inlinedAt: !2531)
!2697 = !DILocation(line: 2040, column: 10, scope: !2525, inlinedAt: !2531)
!2698 = !DILocation(line: 2038, column: 3, scope: !2525, inlinedAt: !2531)
!2699 = !DILocation(line: 2253, column: 9, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2508, file: !3, line: 2253, column: 7)
!2701 = !DILocation(line: 2259, column: 7, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2508, file: !3, line: 2259, column: 7)
!2703 = !DILocation(line: 2259, column: 25, scope: !2702)
!2704 = !DILocation(line: 2259, column: 7, scope: !2508)
!2705 = !DILocation(line: 2261, column: 29, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2702, file: !3, line: 2259, column: 45)
!2707 = !DILocation(line: 2262, column: 31, scope: !2706)
!2708 = !DILocation(line: 2262, column: 42, scope: !2706)
!2709 = !DILocation(line: 2265, column: 50, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2508, file: !3, line: 2265, column: 7)
!2711 = !DILocation(line: 2270, column: 16, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2710, file: !3, line: 2267, column: 47)
!2713 = !DILocation(line: 2270, column: 14, scope: !2712)
!2714 = !DILocation(line: 2271, column: 5, scope: !2712)
!2715 = !DILocation(line: 2275, column: 12, scope: !2508)
!2716 = !DILocalVariable(name: "neighbor_index", arg: 1, scope: !2717, file: !3, line: 2051, type: !307)
!2717 = distinct !DISubprogram(name: "nd6_queue_packet", scope: !3, file: !3, line: 2051, type: !2718, isLocal: true, isDefinition: true, scopeLine: 2052, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2720)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{!306, !307, !253}
!2720 = !{!2716, !2721, !2722, !2723, !2724, !2725, !2726}
!2721 = !DILocalVariable(name: "q", arg: 2, scope: !2717, file: !3, line: 2051, type: !253)
!2722 = !DILocalVariable(name: "result", scope: !2717, file: !3, line: 2053, type: !306)
!2723 = !DILocalVariable(name: "p", scope: !2717, file: !3, line: 2054, type: !253)
!2724 = !DILocalVariable(name: "copy_needed", scope: !2717, file: !3, line: 2055, type: !22)
!2725 = !DILocalVariable(name: "new_entry", scope: !2717, file: !3, line: 2057, type: !248)
!2726 = !DILocalVariable(name: "r", scope: !2717, file: !3, line: 2057, type: !248)
!2727 = !DILocation(line: 2051, column: 23, scope: !2717, inlinedAt: !2728)
!2728 = distinct !DILocation(line: 2276, column: 10, scope: !2508)
!2729 = !DILocation(line: 2051, column: 52, scope: !2717, inlinedAt: !2728)
!2730 = !DILocation(line: 2053, column: 9, scope: !2717, inlinedAt: !2728)
!2731 = !DILocation(line: 2055, column: 7, scope: !2717, inlinedAt: !2728)
!2732 = !DILocation(line: 2060, column: 28, scope: !2733, inlinedAt: !2728)
!2733 = distinct !DILexicalBlock(scope: !2717, file: !3, line: 2060, column: 7)
!2734 = !DILocation(line: 2054, column: 16, scope: !2717, inlinedAt: !2728)
!2735 = !DILocation(line: 2067, column: 3, scope: !2717, inlinedAt: !2728)
!2736 = !DILocation(line: 2093, column: 5, scope: !2737, inlinedAt: !2728)
!2737 = distinct !DILexicalBlock(scope: !2738, file: !3, line: 2090, column: 10)
!2738 = distinct !DILexicalBlock(scope: !2717, file: !3, line: 2074, column: 7)
!2739 = !DILocation(line: 2096, column: 7, scope: !2717, inlinedAt: !2728)
!2740 = !DILocation(line: 2068, column: 9, scope: !2741, inlinedAt: !2728)
!2741 = distinct !DILexicalBlock(scope: !2742, file: !3, line: 2068, column: 9)
!2742 = distinct !DILexicalBlock(scope: !2717, file: !3, line: 2067, column: 13)
!2743 = !{!527, !520, i64 20}
!2744 = !DILocation(line: 2068, column: 9, scope: !2742, inlinedAt: !2728)
!2745 = !DILocation(line: 2072, column: 12, scope: !2742, inlinedAt: !2728)
!2746 = !{!527, !528, i64 0}
!2747 = distinct !{!2747, !2748, !2749}
!2748 = !DILocation(line: 2067, column: 3, scope: !2717)
!2749 = !DILocation(line: 2073, column: 3, scope: !2717)
!2750 = !DILocation(line: 2076, column: 9, scope: !2751, inlinedAt: !2728)
!2751 = distinct !DILexicalBlock(scope: !2738, file: !3, line: 2074, column: 20)
!2752 = !DILocation(line: 2077, column: 15, scope: !2751, inlinedAt: !2728)
!2753 = !DILocation(line: 2077, column: 24, scope: !2751, inlinedAt: !2728)
!2754 = !DILocation(line: 2077, column: 59, scope: !2751, inlinedAt: !2728)
!2755 = !DILocation(line: 2077, column: 61, scope: !2751, inlinedAt: !2728)
!2756 = !DILocation(line: 2077, column: 5, scope: !2751, inlinedAt: !2728)
!2757 = !DILocation(line: 2057, column: 35, scope: !2717, inlinedAt: !2728)
!2758 = !DILocation(line: 2081, column: 45, scope: !2759, inlinedAt: !2728)
!2759 = distinct !DILexicalBlock(scope: !2751, file: !3, line: 2077, column: 71)
!2760 = !DILocation(line: 2081, column: 40, scope: !2759, inlinedAt: !2728)
!2761 = !DILocation(line: 2082, column: 15, scope: !2759, inlinedAt: !2728)
!2762 = !DILocation(line: 2083, column: 7, scope: !2759, inlinedAt: !2728)
!2763 = !DILocation(line: 2088, column: 11, scope: !2759, inlinedAt: !2728)
!2764 = distinct !{!2764, !2765, !2766}
!2765 = !DILocation(line: 2077, column: 5, scope: !2751)
!2766 = !DILocation(line: 2089, column: 5, scope: !2751)
!2767 = !DILocation(line: 2100, column: 39, scope: !2768, inlinedAt: !2728)
!2768 = distinct !DILexicalBlock(scope: !2769, file: !3, line: 2096, column: 18)
!2769 = distinct !DILexicalBlock(scope: !2717, file: !3, line: 2096, column: 7)
!2770 = !DILocation(line: 2100, column: 17, scope: !2768, inlinedAt: !2728)
!2771 = !DILocation(line: 2057, column: 23, scope: !2717, inlinedAt: !2728)
!2772 = !DILocation(line: 2101, column: 20, scope: !2773, inlinedAt: !2728)
!2773 = distinct !DILexicalBlock(scope: !2768, file: !3, line: 2101, column: 9)
!2774 = !DILocation(line: 2101, column: 29, scope: !2773, inlinedAt: !2728)
!2775 = !DILocation(line: 2101, column: 64, scope: !2773, inlinedAt: !2728)
!2776 = !DILocation(line: 2101, column: 66, scope: !2773, inlinedAt: !2728)
!2777 = !DILocation(line: 2101, column: 9, scope: !2768, inlinedAt: !2728)
!2778 = !DILocation(line: 2104, column: 45, scope: !2779, inlinedAt: !2728)
!2779 = distinct !DILexicalBlock(scope: !2773, file: !3, line: 2101, column: 76)
!2780 = !DILocation(line: 2104, column: 40, scope: !2779, inlinedAt: !2728)
!2781 = !DILocation(line: 2105, column: 15, scope: !2779, inlinedAt: !2728)
!2782 = !DILocation(line: 2106, column: 7, scope: !2779, inlinedAt: !2728)
!2783 = !DILocation(line: 2107, column: 41, scope: !2779, inlinedAt: !2728)
!2784 = !DILocation(line: 2107, column: 19, scope: !2779, inlinedAt: !2728)
!2785 = !DILocation(line: 2108, column: 5, scope: !2779, inlinedAt: !2728)
!2786 = !DILocation(line: 0, scope: !2768, inlinedAt: !2728)
!2787 = !DILocation(line: 2109, column: 19, scope: !2788, inlinedAt: !2728)
!2788 = distinct !DILexicalBlock(scope: !2768, file: !3, line: 2109, column: 9)
!2789 = !DILocation(line: 2109, column: 9, scope: !2768, inlinedAt: !2728)
!2790 = !DILocation(line: 2110, column: 18, scope: !2791, inlinedAt: !2728)
!2791 = distinct !DILexicalBlock(scope: !2788, file: !3, line: 2109, column: 28)
!2792 = !DILocation(line: 2110, column: 23, scope: !2791, inlinedAt: !2728)
!2793 = !DILocation(line: 2111, column: 18, scope: !2791, inlinedAt: !2728)
!2794 = !DILocation(line: 2111, column: 20, scope: !2791, inlinedAt: !2728)
!2795 = !DILocation(line: 2112, column: 42, scope: !2796, inlinedAt: !2728)
!2796 = distinct !DILexicalBlock(scope: !2791, file: !3, line: 2112, column: 11)
!2797 = !DILocation(line: 2112, column: 44, scope: !2796, inlinedAt: !2728)
!2798 = !DILocation(line: 2112, column: 11, scope: !2791, inlinedAt: !2728)
!2799 = !DILocation(line: 0, scope: !2800, inlinedAt: !2728)
!2800 = distinct !DILexicalBlock(scope: !2801, file: !3, line: 2115, column: 33)
!2801 = distinct !DILexicalBlock(scope: !2796, file: !3, line: 2112, column: 53)
!2802 = !DILocation(line: 2115, column: 19, scope: !2801, inlinedAt: !2728)
!2803 = !DILocation(line: 2115, column: 24, scope: !2801, inlinedAt: !2728)
!2804 = !DILocation(line: 2115, column: 9, scope: !2801, inlinedAt: !2728)
!2805 = distinct !{!2805, !2806, !2807}
!2806 = !DILocation(line: 2115, column: 9, scope: !2801)
!2807 = !DILocation(line: 2117, column: 9, scope: !2801)
!2808 = !DILocation(line: 2118, column: 17, scope: !2801, inlinedAt: !2728)
!2809 = !DILocation(line: 2119, column: 7, scope: !2801, inlinedAt: !2728)
!2810 = !DILocation(line: 2121, column: 42, scope: !2811, inlinedAt: !2728)
!2811 = distinct !DILexicalBlock(scope: !2796, file: !3, line: 2119, column: 14)
!2812 = !DILocation(line: 2127, column: 7, scope: !2813, inlinedAt: !2728)
!2813 = distinct !DILexicalBlock(scope: !2788, file: !3, line: 2125, column: 12)
!2814 = !DILocation(line: 0, scope: !2508)
!2815 = !DILocation(line: 2277, column: 1, scope: !2508)
!2816 = distinct !DISubprogram(name: "nd6_get_destination_mtu", scope: !3, file: !3, line: 2288, type: !2817, isLocal: false, isDefinition: true, scopeLine: 2289, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2819)
!2817 = !DISubroutineType(types: !2818)
!2818 = !{!131, !162, !274}
!2819 = !{!2820, !2821, !2822}
!2820 = !DILocalVariable(name: "ip6addr", arg: 1, scope: !2816, file: !3, line: 2288, type: !162)
!2821 = !DILocalVariable(name: "netif", arg: 2, scope: !2816, file: !3, line: 2288, type: !274)
!2822 = !DILocalVariable(name: "i", scope: !2816, file: !3, line: 2290, type: !466)
!2823 = !DILocation(line: 2288, column: 43, scope: !2816)
!2824 = !DILocation(line: 2288, column: 66, scope: !2816)
!2825 = !DILocation(line: 1560, column: 52, scope: !1384, inlinedAt: !2826)
!2826 = distinct !DILocation(line: 2292, column: 7, scope: !2816)
!2827 = !DILocation(line: 1562, column: 9, scope: !1384, inlinedAt: !2826)
!2828 = !DILocation(line: 1567, column: 9, scope: !1395, inlinedAt: !2826)
!2829 = !DILocation(line: 1566, column: 3, scope: !1393, inlinedAt: !2826)
!2830 = !DILocation(line: 1567, column: 9, scope: !1396, inlinedAt: !2826)
!2831 = !DILocation(line: 1566, column: 47, scope: !1397, inlinedAt: !2826)
!2832 = !DILocation(line: 1566, column: 17, scope: !1397, inlinedAt: !2826)
!2833 = !DILocation(line: 2294, column: 9, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2835, file: !3, line: 2294, column: 9)
!2835 = distinct !DILexicalBlock(scope: !2836, file: !3, line: 2293, column: 15)
!2836 = distinct !DILexicalBlock(scope: !2816, file: !3, line: 2293, column: 7)
!2837 = !DILocation(line: 2294, column: 30, scope: !2834)
!2838 = !DILocation(line: 2294, column: 35, scope: !2834)
!2839 = !DILocation(line: 2294, column: 9, scope: !2835)
!2840 = !DILocation(line: 2299, column: 13, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2816, file: !3, line: 2299, column: 7)
!2842 = !DILocation(line: 2299, column: 7, scope: !2816)
!2843 = !DILocation(line: 2300, column: 12, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2841, file: !3, line: 2299, column: 22)
!2845 = !DILocation(line: 2300, column: 5, scope: !2844)
!2846 = !DILocation(line: 0, scope: !2816)
!2847 = !DILocation(line: 2304, column: 1, scope: !2816)
!2848 = distinct !DISubprogram(name: "nd6_reachability_hint", scope: !3, file: !3, line: 2318, type: !2849, isLocal: false, isDefinition: true, scopeLine: 2319, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2851)
!2849 = !DISubroutineType(types: !2850)
!2850 = !{null, !162}
!2851 = !{!2852, !2853, !2854}
!2852 = !DILocalVariable(name: "ip6addr", arg: 1, scope: !2848, file: !3, line: 2318, type: !162)
!2853 = !DILocalVariable(name: "i", scope: !2848, file: !3, line: 2320, type: !307)
!2854 = !DILocalVariable(name: "dst_idx", scope: !2848, file: !3, line: 2321, type: !466)
!2855 = !DILocation(line: 2318, column: 41, scope: !2848)
!2856 = !DILocation(line: 2324, column: 7, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2848, file: !3, line: 2324, column: 7)
!2858 = !DILocation(line: 2324, column: 7, scope: !2848)
!2859 = !DILocation(line: 2326, column: 5, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2857, file: !3, line: 2324, column: 99)
!2861 = !DILocation(line: 2327, column: 3, scope: !2860)
!2862 = !DILocation(line: 1560, column: 52, scope: !1384, inlinedAt: !2863)
!2863 = distinct !DILocation(line: 2328, column: 15, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2857, file: !3, line: 2327, column: 10)
!2865 = !DILocation(line: 1562, column: 9, scope: !1384, inlinedAt: !2863)
!2866 = !DILocation(line: 1567, column: 9, scope: !1395, inlinedAt: !2863)
!2867 = !DILocation(line: 1566, column: 3, scope: !1393, inlinedAt: !2863)
!2868 = !DILocation(line: 1567, column: 9, scope: !1396, inlinedAt: !2863)
!2869 = !DILocation(line: 1566, column: 47, scope: !1397, inlinedAt: !2863)
!2870 = !DILocation(line: 1566, column: 17, scope: !1397, inlinedAt: !2863)
!2871 = !DILocation(line: 2335, column: 7, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !2848, file: !3, line: 2335, column: 7)
!2873 = !DILocation(line: 2335, column: 7, scope: !2848)
!2874 = !DILocation(line: 1403, column: 8, scope: !635, inlinedAt: !2875)
!2875 = distinct !DILocation(line: 2339, column: 9, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2872, file: !3, line: 2338, column: 10)
!2877 = !DILocation(line: 1405, column: 9, scope: !643, inlinedAt: !2875)
!2878 = !DILocation(line: 1404, column: 3, scope: !646, inlinedAt: !2875)
!2879 = !DILocation(line: 1405, column: 9, scope: !644, inlinedAt: !2875)
!2880 = !DILocation(line: 1404, column: 44, scope: !645, inlinedAt: !2875)
!2881 = !DILocation(line: 1404, column: 17, scope: !645, inlinedAt: !2875)
!2882 = !DILocation(line: 2320, column: 8, scope: !2848)
!2883 = !DILocation(line: 2341, column: 7, scope: !2848)
!2884 = !DILocation(line: 2337, column: 5, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2872, file: !3, line: 2335, column: 129)
!2886 = !DILocation(line: 2341, column: 9, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2848, file: !3, line: 2341, column: 7)
!2888 = !DILocation(line: 2346, column: 7, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2848, file: !3, line: 2346, column: 7)
!2890 = !DILocation(line: 2346, column: 25, scope: !2889)
!2891 = !DILocation(line: 2346, column: 49, scope: !2889)
!2892 = !DILocation(line: 2351, column: 27, scope: !2848)
!2893 = !DILocation(line: 2352, column: 46, scope: !2848)
!2894 = !DILocation(line: 2352, column: 29, scope: !2848)
!2895 = !DILocation(line: 2352, column: 44, scope: !2848)
!2896 = !DILocation(line: 2353, column: 1, scope: !2848)
!2897 = distinct !DISubprogram(name: "nd6_cleanup_netif", scope: !3, file: !3, line: 2362, type: !331, isLocal: false, isDefinition: true, scopeLine: 2363, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2898)
!2898 = !{!2899, !2900, !2901}
!2899 = !DILocalVariable(name: "netif", arg: 1, scope: !2897, file: !3, line: 2362, type: !274)
!2900 = !DILocalVariable(name: "i", scope: !2897, file: !3, line: 2364, type: !117)
!2901 = !DILocalVariable(name: "router_index", scope: !2897, file: !3, line: 2365, type: !307)
!2902 = !DILocation(line: 2362, column: 33, scope: !2897)
!2903 = !DILocation(line: 2364, column: 8, scope: !2897)
!2904 = !DILocation(line: 2367, column: 24, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2906, file: !3, line: 2367, column: 9)
!2906 = distinct !DILexicalBlock(scope: !2907, file: !3, line: 2366, column: 47)
!2907 = distinct !DILexicalBlock(scope: !2908, file: !3, line: 2366, column: 3)
!2908 = distinct !DILexicalBlock(scope: !2897, file: !3, line: 2366, column: 3)
!2909 = !DILocation(line: 2367, column: 30, scope: !2905)
!2910 = !DILocation(line: 2367, column: 9, scope: !2906)
!2911 = !DILocation(line: 2368, column: 28, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2905, file: !3, line: 2367, column: 40)
!2913 = !DILocation(line: 2369, column: 5, scope: !2912)
!2914 = !DILocation(line: 2372, column: 9, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2916, file: !3, line: 2372, column: 9)
!2916 = distinct !DILexicalBlock(scope: !2917, file: !3, line: 2371, column: 48)
!2917 = distinct !DILexicalBlock(scope: !2918, file: !3, line: 2371, column: 3)
!2918 = distinct !DILexicalBlock(scope: !2897, file: !3, line: 2371, column: 3)
!2919 = !DILocation(line: 2372, column: 27, scope: !2915)
!2920 = !DILocation(line: 2372, column: 33, scope: !2915)
!2921 = !DILocation(line: 2372, column: 9, scope: !2916)
!2922 = !DILocation(line: 2365, column: 8, scope: !2897)
!2923 = !DILocation(line: 2374, column: 47, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2925, file: !3, line: 2374, column: 13)
!2925 = distinct !DILexicalBlock(scope: !2926, file: !3, line: 2373, column: 83)
!2926 = distinct !DILexicalBlock(scope: !2927, file: !3, line: 2373, column: 7)
!2927 = distinct !DILexicalBlock(scope: !2928, file: !3, line: 2373, column: 7)
!2928 = distinct !DILexicalBlock(scope: !2915, file: !3, line: 2372, column: 43)
!2929 = !DILocation(line: 2374, column: 62, scope: !2924)
!2930 = !DILocation(line: 2374, column: 13, scope: !2925)
!2931 = !DILocation(line: 2375, column: 60, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2924, file: !3, line: 2374, column: 85)
!2933 = !DILocation(line: 2376, column: 51, scope: !2932)
!2934 = !DILocation(line: 2377, column: 9, scope: !2932)
!2935 = !DILocation(line: 2379, column: 25, scope: !2928)
!2936 = !DILocation(line: 2379, column: 34, scope: !2928)
!2937 = !DILocation(line: 1529, column: 36, scope: !1688, inlinedAt: !2938)
!2938 = distinct !DILocation(line: 2380, column: 7, scope: !2928)
!2939 = !DILocation(line: 1540, column: 25, scope: !1694, inlinedAt: !2938)
!2940 = !DILocation(line: 1540, column: 27, scope: !1694, inlinedAt: !2938)
!2941 = !DILocation(line: 1540, column: 7, scope: !1688, inlinedAt: !2938)
!2942 = !DILocation(line: 1541, column: 5, scope: !1698, inlinedAt: !2938)
!2943 = !DILocation(line: 1542, column: 25, scope: !1698, inlinedAt: !2938)
!2944 = !DILocation(line: 1543, column: 3, scope: !1698, inlinedAt: !2938)
!2945 = !DILocation(line: 1545, column: 21, scope: !1688, inlinedAt: !2938)
!2946 = !DILocation(line: 1545, column: 27, scope: !1688, inlinedAt: !2938)
!2947 = !DILocation(line: 1546, column: 30, scope: !1688, inlinedAt: !2938)
!2948 = !DILocation(line: 1547, column: 27, scope: !1688, inlinedAt: !2938)
!2949 = !DILocation(line: 1548, column: 29, scope: !1688, inlinedAt: !2938)
!2950 = !DILocation(line: 1548, column: 44, scope: !1688, inlinedAt: !2938)
!2951 = !DILocation(line: 1549, column: 3, scope: !1708, inlinedAt: !2938)
!2952 = !DILocation(line: 2371, column: 44, scope: !2917)
!2953 = !DILocation(line: 2371, column: 17, scope: !2917)
!2954 = !DILocation(line: 2371, column: 3, scope: !2918)
!2955 = distinct !{!2955, !2954, !2956}
!2956 = !DILocation(line: 2382, column: 3, scope: !2918)
!2957 = !DILocation(line: 1615, column: 7, scope: !2390, inlinedAt: !2958)
!2958 = distinct !DILocation(line: 2386, column: 3, scope: !2897)
!2959 = !DILocation(line: 1618, column: 5, scope: !2395, inlinedAt: !2958)
!2960 = !DILocation(line: 2387, column: 1, scope: !2897)
!2961 = distinct !DISubprogram(name: "nd6_adjust_mld_membership", scope: !3, file: !3, line: 2399, type: !2962, isLocal: false, isDefinition: true, scopeLine: 2400, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2964)
!2962 = !DISubroutineType(types: !2963)
!2963 = !{null, !274, !307, !117}
!2964 = !{!2965, !2966, !2967, !2968, !2969, !2970}
!2965 = !DILocalVariable(name: "netif", arg: 1, scope: !2961, file: !3, line: 2399, type: !274)
!2966 = !DILocalVariable(name: "addr_idx", arg: 2, scope: !2961, file: !3, line: 2399, type: !307)
!2967 = !DILocalVariable(name: "new_state", arg: 3, scope: !2961, file: !3, line: 2399, type: !117)
!2968 = !DILocalVariable(name: "old_state", scope: !2961, file: !3, line: 2401, type: !117)
!2969 = !DILocalVariable(name: "old_member", scope: !2961, file: !3, line: 2401, type: !117)
!2970 = !DILocalVariable(name: "new_member", scope: !2961, file: !3, line: 2401, type: !117)
!2971 = !DILocation(line: 2399, column: 41, scope: !2961)
!2972 = !DILocation(line: 2399, column: 53, scope: !2961)
!2973 = !DILocation(line: 2399, column: 68, scope: !2961)
!2974 = !DILocation(line: 2403, column: 15, scope: !2961)
!2975 = !DILocation(line: 2401, column: 8, scope: !2961)
!2976 = !DILocation(line: 2408, column: 47, scope: !2961)
!2977 = !DILocation(line: 2408, column: 96, scope: !2961)
!2978 = !DILocation(line: 2409, column: 47, scope: !2961)
!2979 = !DILocation(line: 2409, column: 96, scope: !2961)
!2980 = !DILocation(line: 2401, column: 31, scope: !2961)
!2981 = !DILocation(line: 2411, column: 21, scope: !2982)
!2982 = distinct !DILexicalBlock(scope: !2961, file: !3, line: 2411, column: 7)
!2983 = !DILocation(line: 2411, column: 18, scope: !2982)
!2984 = !DILocation(line: 2411, column: 7, scope: !2961)
!2985 = !DILocation(line: 2412, column: 5, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2987, file: !3, line: 2412, column: 5)
!2987 = distinct !DILexicalBlock(scope: !2982, file: !3, line: 2411, column: 33)
!2988 = !DILocation(line: 2413, column: 5, scope: !2987)
!2989 = !DILocation(line: 2415, column: 9, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2987, file: !3, line: 2415, column: 9)
!2991 = !DILocation(line: 2415, column: 9, scope: !2987)
!2992 = !DILocation(line: 2416, column: 7, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2990, file: !3, line: 2415, column: 21)
!2994 = !DILocation(line: 2417, column: 5, scope: !2993)
!2995 = !DILocation(line: 2418, column: 7, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2990, file: !3, line: 2417, column: 12)
!2997 = !DILocation(line: 2421, column: 1, scope: !2961)
!2998 = distinct !DISubprogram(name: "nd6_restart_netif", scope: !3, file: !3, line: 2426, type: !331, isLocal: false, isDefinition: true, scopeLine: 2427, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2999)
!2999 = !{!3000}
!3000 = !DILocalVariable(name: "netif", arg: 1, scope: !2998, file: !3, line: 2426, type: !274)
!3001 = !DILocation(line: 2426, column: 33, scope: !2998)
!3002 = !DILocation(line: 2430, column: 10, scope: !2998)
!3003 = !DILocation(line: 2430, column: 19, scope: !2998)
!3004 = !DILocation(line: 2432, column: 1, scope: !2998)
!3005 = distinct !DISubprogram(name: "nd6_free_q", scope: !3, file: !3, line: 2155, type: !3006, isLocal: true, isDefinition: true, scopeLine: 2156, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3008)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{null, !248}
!3008 = !{!3009, !3010}
!3009 = !DILocalVariable(name: "q", arg: 1, scope: !3005, file: !3, line: 2155, type: !248)
!3010 = !DILocalVariable(name: "r", scope: !3005, file: !3, line: 2157, type: !248)
!3011 = !DILocation(line: 2155, column: 32, scope: !3005)
!3012 = !DILocation(line: 2158, column: 3, scope: !3013)
!3013 = distinct !DILexicalBlock(scope: !3014, file: !3, line: 2158, column: 3)
!3014 = distinct !DILexicalBlock(scope: !3005, file: !3, line: 2158, column: 3)
!3015 = !DILocation(line: 2158, column: 3, scope: !3014)
!3016 = !DILocation(line: 2158, column: 3, scope: !3017)
!3017 = distinct !DILexicalBlock(scope: !3018, file: !3, line: 2158, column: 3)
!3018 = distinct !DILexicalBlock(scope: !3013, file: !3, line: 2158, column: 3)
!3019 = !DILocation(line: 2158, column: 3, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !3021, file: !3, line: 2158, column: 3)
!3021 = distinct !DILexicalBlock(scope: !3022, file: !3, line: 2158, column: 3)
!3022 = distinct !DILexicalBlock(scope: !3017, file: !3, line: 2158, column: 3)
!3023 = !DILocation(line: 2159, column: 3, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !3025, file: !3, line: 2159, column: 3)
!3025 = distinct !DILexicalBlock(scope: !3005, file: !3, line: 2159, column: 3)
!3026 = !DILocation(line: 2159, column: 3, scope: !3025)
!3027 = !DILocation(line: 2159, column: 3, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !3029, file: !3, line: 2159, column: 3)
!3029 = distinct !DILexicalBlock(scope: !3024, file: !3, line: 2159, column: 3)
!3030 = !DILocation(line: 2159, column: 3, scope: !3031)
!3031 = distinct !DILexicalBlock(scope: !3032, file: !3, line: 2159, column: 3)
!3032 = distinct !DILexicalBlock(scope: !3033, file: !3, line: 2159, column: 3)
!3033 = distinct !DILexicalBlock(scope: !3028, file: !3, line: 2159, column: 3)
!3034 = !DILocation(line: 2163, column: 5, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !3036, file: !3, line: 2163, column: 5)
!3036 = distinct !DILexicalBlock(scope: !3037, file: !3, line: 2163, column: 5)
!3037 = distinct !DILexicalBlock(scope: !3038, file: !3, line: 2163, column: 5)
!3038 = distinct !DILexicalBlock(scope: !3039, file: !3, line: 2163, column: 5)
!3039 = distinct !DILexicalBlock(scope: !3005, file: !3, line: 2160, column: 13)
!3040 = !DILocation(line: 2163, column: 5, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !3042, file: !3, line: 2163, column: 5)
!3042 = distinct !DILexicalBlock(scope: !3043, file: !3, line: 2163, column: 5)
!3043 = distinct !DILexicalBlock(scope: !3035, file: !3, line: 2163, column: 5)
!3044 = !DILocation(line: 2162, column: 12, scope: !3039)
!3045 = !DILocation(line: 2164, column: 5, scope: !3039)
!3046 = !DILocation(line: 2165, column: 31, scope: !3039)
!3047 = !DILocation(line: 2165, column: 5, scope: !3039)
!3048 = !DILocation(line: 2160, column: 3, scope: !3005)
!3049 = distinct !{!3049, !3048, !3050}
!3050 = !DILocation(line: 2166, column: 3, scope: !3005)
!3051 = !DILocation(line: 2163, column: 5, scope: !3037)
!3052 = !DILocation(line: 2157, column: 23, scope: !3005)
!3053 = !DILocation(line: 2163, column: 5, scope: !3038)
!3054 = !DILocation(line: 2167, column: 1, scope: !3005)
