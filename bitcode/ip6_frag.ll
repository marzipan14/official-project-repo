; ModuleID = '/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/ipv6/ip6_frag.c'
source_filename = "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/ipv6/ip6_frag.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ip6_reassdata = type { %struct.ip6_reassdata*, %struct.pbuf*, %struct.ip6_hdr*, %struct.ip6_addr_packed, %struct.ip6_addr_packed, [16 x i8], i32, i16, i8, i8, i8, i8 }
%struct.pbuf = type { %struct.pbuf*, i8*, i16, i16, i8, i8, i8, i8 }
%struct.ip6_hdr = type { i32, i16, i8, i8, %struct.ip6_addr_packed, %struct.ip6_addr_packed }
%struct.ip6_addr_packed = type { [4 x i32] }
%struct.stats_ = type { %struct.stats_proto, %struct.stats_proto, %struct.stats_proto, %struct.stats_proto, %struct.stats_proto, %struct.stats_proto, %struct.stats_proto, %struct.stats_sys, %struct.stats_proto, %struct.stats_proto, %struct.stats_proto, %struct.stats_igmp, %struct.stats_proto }
%struct.stats_sys = type { %struct.stats_syselem, %struct.stats_syselem, %struct.stats_syselem }
%struct.stats_syselem = type { i16, i16, i16 }
%struct.stats_igmp = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.stats_proto = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.ip_globals = type { %struct.netif*, %struct.netif*, %struct.ip_hdr*, %struct.ip6_hdr*, i16, %struct.ip_addr, %struct.ip_addr }
%struct.netif = type { %struct.netif*, %struct.ip_addr, %struct.ip_addr, %struct.ip_addr, [3 x %struct.ip_addr], [3 x i8], [3 x i32], [3 x i32], i8 (%struct.pbuf*, %struct.netif*)*, i8 (%struct.netif*, %struct.pbuf*, %struct.ip4_addr*)*, i8 (%struct.netif*, %struct.pbuf*)*, i8 (%struct.netif*, %struct.pbuf*, %struct.ip6_addr*)*, void (%struct.netif*)*, void (%struct.netif*)*, i8*, [1 x i8*], i16, i16, i16, [6 x i8], i8, i8, [2 x i8], i8, i8, i8, i8 (%struct.netif*, %struct.ip6_addr*, i32)* }
%struct.ip4_addr = type { i32 }
%struct.ip6_addr = type { [4 x i32], i8 }
%struct.ip_hdr = type { i8, i8, i16, i16, i16, i8, i8, i16, %struct.ip4_addr_packed, %struct.ip4_addr_packed }
%struct.ip4_addr_packed = type { i32 }
%struct.ip_addr = type { %union.anon, i8 }
%union.anon = type { %struct.ip6_addr }
%struct.ip6_reass_helper = type <{ %struct.pbuf*, i16, i16 }>
%struct.ip6_frag_hdr = type { i8, i8, i16, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.pbuf_custom = type { %struct.pbuf, void (%struct.pbuf*)* }

@reassdatagrams = internal unnamed_addr global %struct.ip6_reassdata* null, align 8, !dbg !0
@lwip_stats = external dso_local local_unnamed_addr global %struct.stats_, align 2
@.str = private unnamed_addr constant [48 x i8] c"IPv6 fragment header does not fit in first pbuf\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Assertion failure: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"!(1)\00", align 1
@ip_data = external dso_local local_unnamed_addr global %struct.ip_globals, align 8
@.str.3 = private unnamed_addr constant [44 x i8] c"not a valid pbuf (ip6_input check missing?)\00", align 1
@ip6_reass_pbufcount = internal unnamed_addr global i16 0, align 2, !dbg !309
@.str.4 = private unnamed_addr constant [36 x i8] c"no room for struct ip6_reass_helper\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"check fragments don't overlap\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"sanity check linked list\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"ip6_reass_pbufcount >= clen\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"ip6_reass: moving p->payload to ip6 header failed\0A\00", align 1
@ip6_frag.identification = internal unnamed_addr global i32 0, align 4, !dbg !183
@.str.10 = private unnamed_addr constant [23 x i8] c"p->tot_len >= IP6_HLEN\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"this needs a pbuf in one piece!\00", align 1
@.str.12 = private unnamed_addr constant [56 x i8] c"ip6_reass_free: moving p->payload to ip6 header failed\0A\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"pbufs_freed + clen <= 0xffff\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"ip_reass_pbufcount >= clen\00", align 1
@uk_pr_crit.__str = internal global [8 x i8] c"liblwip\00", section ".data_shared", align 1, !dbg !311
@uk_pr_crit.__str.15 = internal global [11 x i8] c"ip6_frag.c\00", section ".data_shared", align 1, !dbg !335
@.str.17 = private unnamed_addr constant [12 x i8] c"pcr != NULL\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local void @ip6_reass_tmr() local_unnamed_addr #0 !dbg !344 {
  %1 = load %struct.ip6_reassdata*, %struct.ip6_reassdata** @reassdatagrams, align 8, !dbg !350, !tbaa !351
  %2 = icmp eq %struct.ip6_reassdata* %1, null, !dbg !356
  br i1 %2, label %18, label %3, !dbg !357

; <label>:3:                                      ; preds = %0, %15
  %4 = phi %struct.ip6_reassdata* [ %16, %15 ], [ %1, %0 ]
  %5 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %4, i64 0, i32 9, !dbg !358
  %6 = load i8, i8* %5, align 1, !dbg !358, !tbaa !361
  %7 = icmp eq i8 %6, 0, !dbg !366
  br i1 %7, label %12, label %8, !dbg !367

; <label>:8:                                      ; preds = %3
  %9 = add i8 %6, -1, !dbg !368
  store i8 %9, i8* %5, align 1, !dbg !368, !tbaa !361
  %10 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %4, i64 0, i32 0, !dbg !370
  %11 = load %struct.ip6_reassdata*, %struct.ip6_reassdata** %10, align 8, !dbg !370, !tbaa !371
  br label %15, !dbg !372

; <label>:12:                                     ; preds = %3
  %13 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %4, i64 0, i32 0, !dbg !374
  %14 = load %struct.ip6_reassdata*, %struct.ip6_reassdata** %13, align 8, !dbg !374, !tbaa !371
  tail call fastcc void @ip6_reass_free_complete_datagram(%struct.ip6_reassdata* nonnull %4) #7, !dbg !376
  br label %15

; <label>:15:                                     ; preds = %12, %8
  %16 = phi %struct.ip6_reassdata* [ %11, %8 ], [ %14, %12 ], !dbg !377
  %17 = icmp eq %struct.ip6_reassdata* %16, null, !dbg !356
  br i1 %17, label %18, label %3, !dbg !357, !llvm.loop !378

; <label>:18:                                     ; preds = %15, %0
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !380
  ret void, !dbg !380
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable

; Function Attrs: noredzone nounwind
define internal fastcc void @ip6_reass_free_complete_datagram(%struct.ip6_reassdata*) unnamed_addr #0 !dbg !381 {
  %2 = alloca %struct.ip6_addr, align 16
  %3 = alloca %struct.ip6_addr, align 16
  %4 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %0, i64 0, i32 1, !dbg !401
  %5 = load %struct.pbuf*, %struct.pbuf** %4, align 8, !dbg !401, !tbaa !402
  %6 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %5, i64 0, i32 1, !dbg !403
  %7 = bitcast i8** %6 to %struct.ip6_reass_helper**, !dbg !403
  %8 = load %struct.ip6_reass_helper*, %struct.ip6_reass_helper** %7, align 8, !dbg !403, !tbaa !404
  %9 = getelementptr inbounds %struct.ip6_reass_helper, %struct.ip6_reass_helper* %8, i64 0, i32 1, !dbg !407
  %10 = load i16, i16* %9, align 1, !dbg !407, !tbaa !408
  %11 = icmp eq i16 %10, 0, !dbg !410
  br i1 %11, label %12, label %49, !dbg !411

; <label>:12:                                     ; preds = %1
  %13 = bitcast %struct.ip6_reass_helper* %8 to i8*, !dbg !411
  %14 = bitcast %struct.ip6_reass_helper* %8 to i64*, !dbg !413
  %15 = load i64, i64* %14, align 1, !dbg !413, !tbaa !414
  %16 = bitcast %struct.pbuf** %4 to i64*, !dbg !415
  store i64 %15, i64* %16, align 8, !dbg !415, !tbaa !402
  %17 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %0, i64 0, i32 5, i64 0, !dbg !416
  %18 = tail call i8* @memcpy(i8* %13, i8* nonnull %17, i64 8) #8, !dbg !416
  %19 = bitcast i8** %6 to i64*, !dbg !417
  %20 = load i64, i64* %19, align 8, !dbg !417, !tbaa !404
  %21 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %0, i64 0, i32 2, !dbg !418
  %22 = bitcast %struct.ip6_hdr** %21 to i64*, !dbg !418
  %23 = load i64, i64* %22, align 8, !dbg !418, !tbaa !419
  %24 = sub i64 %20, %23, !dbg !420
  %25 = trunc i64 %24 to i16, !dbg !421
  %26 = tail call zeroext i8 @pbuf_header_force(%struct.pbuf* %5, i16 signext %25) #8, !dbg !422
  %27 = icmp eq i8 %26, 0, !dbg !422
  br i1 %27, label %29, label %28, !dbg !423

; <label>:28:                                     ; preds = %12
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.12, i64 0, i64 0)) #7, !dbg !424
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !430
  tail call void @ukplat_terminate(i32 3) #9, !dbg !430
  unreachable, !dbg !430

; <label>:29:                                     ; preds = %12
  %30 = bitcast %struct.ip6_addr* %2 to i8*, !dbg !434
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %30) #6, !dbg !434
  %31 = bitcast %struct.ip6_addr* %3 to i8*, !dbg !434
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %31) #6, !dbg !434
  %32 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %0, i64 0, i32 3, i32 0, i64 0, !dbg !435
  %33 = bitcast i32* %32 to <4 x i32>*, !dbg !435
  %34 = load <4 x i32>, <4 x i32>* %33, align 8, !dbg !435, !tbaa !437
  %35 = bitcast %struct.ip6_addr* %2 to <4 x i32>*, !dbg !435
  store <4 x i32> %34, <4 x i32>* %35, align 16, !dbg !435, !tbaa !437
  %36 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %2, i64 0, i32 1, !dbg !435
  %37 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %0, i64 0, i32 10, !dbg !438
  %38 = load i8, i8* %37, align 8, !dbg !438, !tbaa !439
  store i8 %38, i8* %36, align 16, !dbg !438, !tbaa !440
  %39 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %0, i64 0, i32 4, i32 0, i64 0, !dbg !442
  %40 = bitcast i32* %39 to <4 x i32>*, !dbg !442
  %41 = load <4 x i32>, <4 x i32>* %40, align 8, !dbg !442, !tbaa !437
  %42 = bitcast %struct.ip6_addr* %3 to <4 x i32>*, !dbg !442
  store <4 x i32> %41, <4 x i32>* %42, align 16, !dbg !442, !tbaa !437
  %43 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %3, i64 0, i32 1, !dbg !442
  %44 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %0, i64 0, i32 11, !dbg !444
  %45 = load i8, i8* %44, align 1, !dbg !444, !tbaa !445
  store i8 %45, i8* %43, align 16, !dbg !444, !tbaa !440
  call void @icmp6_time_exceeded_with_addrs(%struct.pbuf* nonnull %5, i32 1, %struct.ip6_addr* nonnull %2, %struct.ip6_addr* nonnull %3) #8, !dbg !448
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %31) #6, !dbg !449
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %30) #6, !dbg !449
  %46 = call zeroext i16 @pbuf_clen(%struct.pbuf* nonnull %5) #8, !dbg !450
  %47 = call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %5) #8, !dbg !452
  %48 = load %struct.pbuf*, %struct.pbuf** %4, align 8, !dbg !453, !tbaa !402
  br label %49, !dbg !454

; <label>:49:                                     ; preds = %29, %1
  %50 = phi %struct.pbuf* [ %48, %29 ], [ %5, %1 ], !dbg !453
  %51 = phi i16 [ %46, %29 ], [ 0, %1 ], !dbg !455
  %52 = icmp eq %struct.pbuf* %50, null, !dbg !456
  br i1 %52, label %73, label %53, !dbg !457

; <label>:53:                                     ; preds = %49, %67
  %54 = phi %struct.pbuf* [ %60, %67 ], [ %50, %49 ]
  %55 = phi i16 [ %68, %67 ], [ %51, %49 ]
  %56 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %54, i64 0, i32 1, !dbg !458
  %57 = bitcast i8** %56 to %struct.ip6_reass_helper**, !dbg !458
  %58 = load %struct.ip6_reass_helper*, %struct.ip6_reass_helper** %57, align 8, !dbg !458, !tbaa !404
  %59 = getelementptr inbounds %struct.ip6_reass_helper, %struct.ip6_reass_helper* %58, i64 0, i32 0, !dbg !460
  %60 = load %struct.pbuf*, %struct.pbuf** %59, align 1, !dbg !460, !tbaa !414
  %61 = call zeroext i16 @pbuf_clen(%struct.pbuf* nonnull %54) #8, !dbg !461
  %62 = zext i16 %55 to i32, !dbg !462
  %63 = zext i16 %61 to i32, !dbg !462
  %64 = add nuw nsw i32 %63, %62, !dbg !462
  %65 = icmp ult i32 %64, 65536, !dbg !462
  br i1 %65, label %67, label %66, !dbg !465

; <label>:66:                                     ; preds = %53
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0)) #7, !dbg !466
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !469
  call void @ukplat_terminate(i32 3) #9, !dbg !469
  unreachable, !dbg !469

; <label>:67:                                     ; preds = %53
  %68 = trunc i32 %64 to i16, !dbg !473
  %69 = call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %54) #8, !dbg !474
  %70 = icmp eq %struct.pbuf* %60, null, !dbg !456
  br i1 %70, label %71, label %53, !dbg !457, !llvm.loop !475

; <label>:71:                                     ; preds = %67
  %72 = trunc i32 %64 to i16, !dbg !473
  br label %73, !dbg !477

; <label>:73:                                     ; preds = %71, %49
  %74 = phi i16 [ %51, %49 ], [ %72, %71 ], !dbg !479
  %75 = load %struct.ip6_reassdata*, %struct.ip6_reassdata** @reassdatagrams, align 8, !dbg !477, !tbaa !351
  %76 = icmp eq %struct.ip6_reassdata* %75, %0, !dbg !480
  br i1 %76, label %77, label %80, !dbg !481

; <label>:77:                                     ; preds = %73
  %78 = bitcast %struct.ip6_reassdata* %0 to i64*, !dbg !482
  %79 = load i64, i64* %78, align 8, !dbg !482, !tbaa !371
  store i64 %79, i64* bitcast (%struct.ip6_reassdata** @reassdatagrams to i64*), align 8, !dbg !484, !tbaa !351
  br label %91, !dbg !485

; <label>:80:                                     ; preds = %73, %83
  %81 = phi %struct.ip6_reassdata* [ %85, %83 ], [ %75, %73 ], !dbg !486
  %82 = icmp eq %struct.ip6_reassdata* %81, null, !dbg !490
  br i1 %82, label %91, label %83, !dbg !491

; <label>:83:                                     ; preds = %80
  %84 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %81, i64 0, i32 0, !dbg !492
  %85 = load %struct.ip6_reassdata*, %struct.ip6_reassdata** %84, align 8, !dbg !492, !tbaa !371
  %86 = icmp eq %struct.ip6_reassdata* %85, %0, !dbg !494
  br i1 %86, label %87, label %80, !dbg !495, !llvm.loop !496

; <label>:87:                                     ; preds = %83
  %88 = bitcast %struct.ip6_reassdata* %0 to i64*, !dbg !498
  %89 = load i64, i64* %88, align 8, !dbg !498, !tbaa !371
  %90 = bitcast %struct.ip6_reassdata* %81 to i64*, !dbg !501
  store i64 %89, i64* %90, align 8, !dbg !501, !tbaa !371
  br label %91, !dbg !502

; <label>:91:                                     ; preds = %80, %87, %77
  %92 = bitcast %struct.ip6_reassdata* %0 to i8*, !dbg !503
  call void @memp_free(i32 13, i8* %92) #8, !dbg !504
  %93 = load i16, i16* @ip6_reass_pbufcount, align 2, !dbg !505, !tbaa !508
  %94 = icmp ult i16 %93, %74, !dbg !505
  br i1 %94, label %95, label %96, !dbg !509

; <label>:95:                                     ; preds = %91
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0)) #7, !dbg !510
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !513
  call void @ukplat_terminate(i32 3) #9, !dbg !513
  unreachable, !dbg !513

; <label>:96:                                     ; preds = %91
  %97 = sub i16 %93, %74, !dbg !517
  store i16 %97, i16* @ip6_reass_pbufcount, align 2, !dbg !518, !tbaa !508
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !519
  ret void, !dbg !519
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone nounwind
define dso_local %struct.pbuf* @ip6_reass(%struct.pbuf*) local_unnamed_addr #0 !dbg !520 {
  %2 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 10, i32 1), align 2, !dbg !564, !tbaa !565
  %3 = add i16 %2, 1, !dbg !564
  store i16 %3, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 10, i32 1), align 2, !dbg !564, !tbaa !565
  %4 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 3, !dbg !571
  %5 = load i16, i16* %4, align 2, !dbg !571, !tbaa !574
  %6 = icmp ugt i16 %5, 7, !dbg !571
  br i1 %6, label %8, label %7, !dbg !575

; <label>:7:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0)) #7, !dbg !576
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !579
  tail call void @ukplat_terminate(i32 3) #9, !dbg !579
  unreachable, !dbg !579

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 1, !dbg !583
  %10 = bitcast i8** %9 to %struct.ip6_frag_hdr**, !dbg !583
  %11 = load %struct.ip6_frag_hdr*, %struct.ip6_frag_hdr** %10, align 8, !dbg !583, !tbaa !404
  %12 = tail call zeroext i16 @pbuf_clen(%struct.pbuf* nonnull %0) #8, !dbg !585
  %13 = getelementptr inbounds %struct.ip6_frag_hdr, %struct.ip6_frag_hdr* %11, i64 0, i32 2, !dbg !587
  %14 = load i16, i16* %13, align 1, !dbg !587, !tbaa !588
  %15 = tail call zeroext i16 @lwip_htons(i16 zeroext %14) #8, !dbg !587
  %16 = load %struct.ip6_hdr*, %struct.ip6_hdr** getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 3), align 8, !dbg !591, !tbaa !592
  %17 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %16, i64 0, i32 1, !dbg !591
  %18 = load i16, i16* %17, align 1, !dbg !591, !tbaa !595
  %19 = tail call zeroext i16 @lwip_htons(i16 zeroext %18) #8, !dbg !591
  %20 = bitcast i8** %9 to i64*, !dbg !598
  %21 = load i64, i64* %20, align 8, !dbg !598, !tbaa !404
  %22 = load i64, i64* bitcast (%struct.ip6_hdr** getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 3) to i64*), align 8, !dbg !599, !tbaa !592
  %23 = sub i64 %21, %22, !dbg !600
  %24 = icmp slt i64 %23, 65536, !dbg !602
  br i1 %24, label %26, label %25, !dbg !605

; <label>:25:                                     ; preds = %8
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !606
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !609
  tail call void @ukplat_terminate(i32 3) #9, !dbg !609
  unreachable, !dbg !609

; <label>:26:                                     ; preds = %8
  %27 = icmp sgt i64 %23, 39, !dbg !613
  br i1 %27, label %29, label %28, !dbg !616

; <label>:28:                                     ; preds = %26
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !617
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !620
  tail call void @ukplat_terminate(i32 3) #9, !dbg !620
  unreachable, !dbg !620

; <label>:29:                                     ; preds = %26
  %30 = add nsw i64 %23, -32, !dbg !624
  %31 = zext i16 %19 to i64, !dbg !625
  %32 = icmp sgt i64 %30, %31, !dbg !627
  br i1 %32, label %479, label %33, !dbg !628

; <label>:33:                                     ; preds = %29
  %34 = trunc i64 %30 to i16, !dbg !629
  %35 = sub i16 %19, %34, !dbg !629
  %36 = and i16 %15, -8, !dbg !630
  %37 = xor i16 %35, -1, !dbg !632
  %38 = icmp ugt i16 %36, %37, !dbg !634
  br i1 %38, label %479, label %39, !dbg !635

; <label>:39:                                     ; preds = %33
  %40 = load %struct.ip6_reassdata*, %struct.ip6_reassdata** @reassdatagrams, align 8, !dbg !636, !tbaa !351
  %41 = icmp eq %struct.ip6_reassdata* %40, null, !dbg !641
  br i1 %41, label %108, label %42, !dbg !641

; <label>:42:                                     ; preds = %39
  %43 = getelementptr inbounds %struct.ip6_frag_hdr, %struct.ip6_frag_hdr* %11, i64 0, i32 3
  %44 = load i32, i32* %43, align 1, !tbaa !642
  %45 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 0), align 4
  %46 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 1), align 4
  %47 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 2), align 4
  %48 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 3), align 4
  %49 = load i8, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 1), align 4
  %50 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 0), align 4
  %51 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 1), align 4
  %52 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 2), align 4
  %53 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 3), align 4
  %54 = load i8, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 1), align 4
  br label %55, !dbg !641

; <label>:55:                                     ; preds = %42, %104
  %56 = phi %struct.ip6_reassdata* [ %40, %42 ], [ %106, %104 ]
  %57 = phi %struct.ip6_reassdata* [ null, %42 ], [ %56, %104 ]
  %58 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %56, i64 0, i32 6, !dbg !643
  %59 = load i32, i32* %58, align 8, !dbg !643, !tbaa !646
  %60 = icmp eq i32 %44, %59, !dbg !647
  br i1 %60, label %61, label %104, !dbg !648

; <label>:61:                                     ; preds = %55
  %62 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %56, i64 0, i32 3, i32 0, i64 0, !dbg !649
  %63 = load i32, i32* %62, align 8, !dbg !649, !tbaa !437
  %64 = icmp eq i32 %45, %63, !dbg !649
  br i1 %64, label %65, label %104, !dbg !649

; <label>:65:                                     ; preds = %61
  %66 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %56, i64 0, i32 3, i32 0, i64 1, !dbg !649
  %67 = load i32, i32* %66, align 4, !dbg !649, !tbaa !437
  %68 = icmp eq i32 %46, %67, !dbg !649
  br i1 %68, label %69, label %104, !dbg !649

; <label>:69:                                     ; preds = %65
  %70 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %56, i64 0, i32 3, i32 0, i64 2, !dbg !649
  %71 = load i32, i32* %70, align 8, !dbg !649, !tbaa !437
  %72 = icmp eq i32 %47, %71, !dbg !649
  br i1 %72, label %73, label %104, !dbg !649

; <label>:73:                                     ; preds = %69
  %74 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %56, i64 0, i32 3, i32 0, i64 3, !dbg !649
  %75 = load i32, i32* %74, align 4, !dbg !649, !tbaa !437
  %76 = icmp eq i32 %48, %75, !dbg !649
  br i1 %76, label %77, label %104, !dbg !649

; <label>:77:                                     ; preds = %73
  %78 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %56, i64 0, i32 10, !dbg !649
  %79 = load i8, i8* %78, align 8, !dbg !649, !tbaa !439
  %80 = icmp eq i8 %49, %79, !dbg !649
  br i1 %80, label %81, label %104, !dbg !650

; <label>:81:                                     ; preds = %77
  %82 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %56, i64 0, i32 4, i32 0, i64 0, !dbg !651
  %83 = load i32, i32* %82, align 8, !dbg !651, !tbaa !437
  %84 = icmp eq i32 %50, %83, !dbg !651
  br i1 %84, label %85, label %104, !dbg !651

; <label>:85:                                     ; preds = %81
  %86 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %56, i64 0, i32 4, i32 0, i64 1, !dbg !651
  %87 = load i32, i32* %86, align 4, !dbg !651, !tbaa !437
  %88 = icmp eq i32 %51, %87, !dbg !651
  br i1 %88, label %89, label %104, !dbg !651

; <label>:89:                                     ; preds = %85
  %90 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %56, i64 0, i32 4, i32 0, i64 2, !dbg !651
  %91 = load i32, i32* %90, align 8, !dbg !651, !tbaa !437
  %92 = icmp eq i32 %52, %91, !dbg !651
  br i1 %92, label %93, label %104, !dbg !651

; <label>:93:                                     ; preds = %89
  %94 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %56, i64 0, i32 4, i32 0, i64 3, !dbg !651
  %95 = load i32, i32* %94, align 4, !dbg !651, !tbaa !437
  %96 = icmp eq i32 %53, %95, !dbg !651
  br i1 %96, label %97, label %104, !dbg !651

; <label>:97:                                     ; preds = %93
  %98 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %56, i64 0, i32 11, !dbg !651
  %99 = load i8, i8* %98, align 1, !dbg !651, !tbaa !445
  %100 = icmp eq i8 %54, %99, !dbg !651
  br i1 %100, label %101, label %104, !dbg !652

; <label>:101:                                    ; preds = %97
  %102 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 10, i32 11), align 2, !dbg !653, !tbaa !655
  %103 = add i16 %102, 1, !dbg !653
  store i16 %103, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 10, i32 11), align 2, !dbg !653, !tbaa !655
  br label %196

; <label>:104:                                    ; preds = %97, %93, %89, %85, %81, %77, %73, %69, %65, %61, %55
  %105 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %56, i64 0, i32 0, !dbg !656
  %106 = load %struct.ip6_reassdata*, %struct.ip6_reassdata** %105, align 8, !dbg !636, !tbaa !351
  %107 = icmp eq %struct.ip6_reassdata* %106, null, !dbg !641
  br i1 %107, label %108, label %55, !dbg !641, !llvm.loop !657

; <label>:108:                                    ; preds = %104, %39
  %109 = phi %struct.ip6_reassdata* [ null, %39 ], [ %56, %104 ], !dbg !659
  %110 = tail call i8* @memp_malloc(i32 13) #8, !dbg !660
  %111 = bitcast i8* %110 to %struct.ip6_reassdata*, !dbg !663
  %112 = icmp eq i8* %110, null, !dbg !664
  br i1 %112, label %113, label %163, !dbg !666

; <label>:113:                                    ; preds = %108
  %114 = zext i16 %12 to i32, !dbg !667
  %115 = load %struct.ip6_reassdata*, %struct.ip6_reassdata** @reassdatagrams, align 8, !dbg !680, !tbaa !351
  br label %116, !dbg !682

; <label>:116:                                    ; preds = %142, %113
  %117 = phi %struct.ip6_reassdata* [ %143, %142 ], [ %115, %113 ]
  %118 = icmp eq %struct.ip6_reassdata* %117, null, !dbg !685
  br i1 %118, label %135, label %119, !dbg !686

; <label>:119:                                    ; preds = %116, %130
  %120 = phi %struct.ip6_reassdata* [ %131, %130 ], [ %117, %116 ]
  %121 = phi %struct.ip6_reassdata* [ %133, %130 ], [ %117, %116 ]
  %122 = icmp eq %struct.ip6_reassdata* %121, %111, !dbg !687
  br i1 %122, label %130, label %123, !dbg !690

; <label>:123:                                    ; preds = %119
  %124 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %121, i64 0, i32 9, !dbg !691
  %125 = load i8, i8* %124, align 1, !dbg !691, !tbaa !361
  %126 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %120, i64 0, i32 9, !dbg !694
  %127 = load i8, i8* %126, align 1, !dbg !694, !tbaa !361
  %128 = icmp ugt i8 %125, %127, !dbg !695
  %129 = select i1 %128, %struct.ip6_reassdata* %120, %struct.ip6_reassdata* %121, !dbg !696
  br label %130, !dbg !696

; <label>:130:                                    ; preds = %123, %119
  %131 = phi %struct.ip6_reassdata* [ %120, %119 ], [ %129, %123 ], !dbg !697
  %132 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %121, i64 0, i32 0, !dbg !698
  %133 = load %struct.ip6_reassdata*, %struct.ip6_reassdata** %132, align 8, !dbg !698, !tbaa !371
  %134 = icmp eq %struct.ip6_reassdata* %133, null, !dbg !685
  br i1 %134, label %135, label %119, !dbg !686, !llvm.loop !699

; <label>:135:                                    ; preds = %130, %116
  %136 = phi %struct.ip6_reassdata* [ null, %116 ], [ %131, %130 ], !dbg !702
  %137 = icmp eq %struct.ip6_reassdata* %136, %111, !dbg !704
  br i1 %137, label %150, label %138, !dbg !706

; <label>:138:                                    ; preds = %135
  %139 = icmp eq %struct.ip6_reassdata* %136, null, !dbg !707
  br i1 %139, label %142, label %140, !dbg !709

; <label>:140:                                    ; preds = %138
  tail call fastcc void @ip6_reass_free_complete_datagram(%struct.ip6_reassdata* nonnull %136) #8, !dbg !710
  %141 = load %struct.ip6_reassdata*, %struct.ip6_reassdata** @reassdatagrams, align 8, !dbg !712
  br label %142, !dbg !713

; <label>:142:                                    ; preds = %140, %138
  %143 = phi %struct.ip6_reassdata* [ %117, %138 ], [ %141, %140 ], !dbg !712
  %144 = load i16, i16* @ip6_reass_pbufcount, align 2, !dbg !714, !tbaa !508
  %145 = zext i16 %144 to i32, !dbg !714
  %146 = add nuw nsw i32 %145, %114, !dbg !715
  %147 = icmp ugt i32 %146, 10, !dbg !716
  %148 = icmp ne %struct.ip6_reassdata* %143, null, !dbg !717
  %149 = and i1 %148, %147, !dbg !718
  br i1 %149, label %116, label %150, !dbg !719, !llvm.loop !720

; <label>:150:                                    ; preds = %135, %142
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !723
  %151 = tail call i8* @memp_malloc(i32 13) #8, !dbg !724
  %152 = bitcast i8* %151 to %struct.ip6_reassdata*, !dbg !725
  %153 = icmp eq i8* %151, null, !dbg !726
  br i1 %153, label %479, label %154, !dbg !728

; <label>:154:                                    ; preds = %150
  %155 = load %struct.ip6_reassdata*, %struct.ip6_reassdata** @reassdatagrams, align 8, !dbg !729, !tbaa !351
  br label %156, !dbg !732

; <label>:156:                                    ; preds = %159, %154
  %157 = phi %struct.ip6_reassdata* [ %155, %154 ], [ %161, %159 ], !dbg !733
  %158 = icmp eq %struct.ip6_reassdata* %157, null, !dbg !735
  br i1 %158, label %163, label %159, !dbg !736

; <label>:159:                                    ; preds = %156
  %160 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %157, i64 0, i32 0, !dbg !737
  %161 = load %struct.ip6_reassdata*, %struct.ip6_reassdata** %160, align 8, !dbg !737, !tbaa !371
  %162 = icmp eq %struct.ip6_reassdata* %161, %152, !dbg !740
  br i1 %162, label %163, label %156, !dbg !741, !llvm.loop !742

; <label>:163:                                    ; preds = %156, %159, %108
  %164 = phi %struct.ip6_reassdata* [ %109, %108 ], [ null, %156 ], [ %157, %159 ], !dbg !744
  %165 = phi i8* [ %110, %108 ], [ %151, %159 ], [ %151, %156 ], !dbg !745
  %166 = phi %struct.ip6_reassdata* [ %111, %108 ], [ %152, %159 ], [ %152, %156 ], !dbg !745
  %167 = tail call i8* @memset(i8* %165, i32 0, i64 88) #8, !dbg !746
  %168 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %166, i64 0, i32 9, !dbg !747
  store i8 60, i8* %168, align 1, !dbg !748, !tbaa !361
  %169 = load i64, i64* bitcast (%struct.ip6_reassdata** @reassdatagrams to i64*), align 8, !dbg !749, !tbaa !351
  %170 = bitcast %struct.ip6_reassdata* %166 to i64*, !dbg !750
  store i64 %169, i64* %170, align 8, !dbg !750, !tbaa !371
  store i8* %165, i8** bitcast (%struct.ip6_reassdata** @reassdatagrams to i8**), align 8, !dbg !751, !tbaa !351
  %171 = load i64, i64* bitcast (%struct.ip6_hdr** getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 3) to i64*), align 8, !dbg !752, !tbaa !592
  %172 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %166, i64 0, i32 2, !dbg !753
  %173 = bitcast %struct.ip6_hdr** %172 to i64*, !dbg !754
  store i64 %171, i64* %173, align 8, !dbg !754, !tbaa !419
  %174 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %166, i64 0, i32 3, !dbg !755
  %175 = bitcast %struct.ip6_addr_packed* %174 to i8*, !dbg !755
  %176 = inttoptr i64 %171 to %struct.ip6_hdr*, !dbg !755
  %177 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %176, i64 0, i32 4, !dbg !755
  %178 = bitcast %struct.ip6_addr_packed* %177 to i8*, !dbg !755
  %179 = tail call i8* @memcpy(i8* nonnull %175, i8* nonnull %178, i64 16) #8, !dbg !755
  %180 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %166, i64 0, i32 4, !dbg !756
  %181 = bitcast %struct.ip6_addr_packed* %180 to i8*, !dbg !756
  %182 = load %struct.ip6_hdr*, %struct.ip6_hdr** getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 3), align 8, !dbg !756, !tbaa !592
  %183 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %182, i64 0, i32 5, !dbg !756
  %184 = bitcast %struct.ip6_addr_packed* %183 to i8*, !dbg !756
  %185 = tail call i8* @memcpy(i8* nonnull %181, i8* nonnull %184, i64 16) #8, !dbg !756
  %186 = load i8, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 1), align 4, !dbg !757, !tbaa !758
  %187 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %166, i64 0, i32 10, !dbg !759
  store i8 %186, i8* %187, align 8, !dbg !760, !tbaa !439
  %188 = load i8, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 1), align 4, !dbg !761, !tbaa !758
  %189 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %166, i64 0, i32 11, !dbg !762
  store i8 %188, i8* %189, align 1, !dbg !763, !tbaa !445
  %190 = getelementptr inbounds %struct.ip6_frag_hdr, %struct.ip6_frag_hdr* %11, i64 0, i32 3, !dbg !764
  %191 = load i32, i32* %190, align 1, !dbg !764, !tbaa !642
  %192 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %166, i64 0, i32 6, !dbg !765
  store i32 %191, i32* %192, align 8, !dbg !766, !tbaa !646
  %193 = getelementptr inbounds %struct.ip6_frag_hdr, %struct.ip6_frag_hdr* %11, i64 0, i32 0, !dbg !767
  %194 = load i8, i8* %193, align 1, !dbg !767, !tbaa !768
  %195 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %166, i64 0, i32 8, !dbg !769
  store i8 %194, i8* %195, align 2, !dbg !770, !tbaa !771
  br label %196, !dbg !772

; <label>:196:                                    ; preds = %101, %163
  %197 = phi %struct.ip6_reassdata* [ %164, %163 ], [ %57, %101 ], !dbg !744
  %198 = phi %struct.ip6_reassdata* [ %166, %163 ], [ %56, %101 ], !dbg !744
  %199 = load i16, i16* @ip6_reass_pbufcount, align 2, !dbg !773, !tbaa !508
  %200 = zext i16 %199 to i32, !dbg !773
  %201 = zext i16 %12 to i32, !dbg !775
  %202 = add nuw nsw i32 %200, %201, !dbg !776
  %203 = icmp ugt i32 %202, 10, !dbg !777
  br i1 %203, label %204, label %256, !dbg !778

; <label>:204:                                    ; preds = %196
  %205 = load %struct.ip6_reassdata*, %struct.ip6_reassdata** @reassdatagrams, align 8, !dbg !783, !tbaa !351
  br label %206, !dbg !784

; <label>:206:                                    ; preds = %237, %204
  %207 = phi i16 [ %238, %237 ], [ %199, %204 ]
  %208 = phi %struct.ip6_reassdata* [ %239, %237 ], [ %205, %204 ]
  %209 = icmp eq %struct.ip6_reassdata* %208, null, !dbg !787
  br i1 %209, label %226, label %210, !dbg !788

; <label>:210:                                    ; preds = %206, %221
  %211 = phi %struct.ip6_reassdata* [ %222, %221 ], [ %208, %206 ]
  %212 = phi %struct.ip6_reassdata* [ %224, %221 ], [ %208, %206 ]
  %213 = icmp eq %struct.ip6_reassdata* %212, %198, !dbg !789
  br i1 %213, label %221, label %214, !dbg !790

; <label>:214:                                    ; preds = %210
  %215 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %212, i64 0, i32 9, !dbg !791
  %216 = load i8, i8* %215, align 1, !dbg !791, !tbaa !361
  %217 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %211, i64 0, i32 9, !dbg !792
  %218 = load i8, i8* %217, align 1, !dbg !792, !tbaa !361
  %219 = icmp ugt i8 %216, %218, !dbg !793
  %220 = select i1 %219, %struct.ip6_reassdata* %211, %struct.ip6_reassdata* %212, !dbg !794
  br label %221, !dbg !794

; <label>:221:                                    ; preds = %214, %210
  %222 = phi %struct.ip6_reassdata* [ %211, %210 ], [ %220, %214 ], !dbg !795
  %223 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %212, i64 0, i32 0, !dbg !796
  %224 = load %struct.ip6_reassdata*, %struct.ip6_reassdata** %223, align 8, !dbg !796, !tbaa !371
  %225 = icmp eq %struct.ip6_reassdata* %224, null, !dbg !787
  br i1 %225, label %226, label %210, !dbg !788, !llvm.loop !699

; <label>:226:                                    ; preds = %221, %206
  %227 = phi %struct.ip6_reassdata* [ null, %206 ], [ %222, %221 ], !dbg !797
  %228 = icmp eq %struct.ip6_reassdata* %227, %198, !dbg !798
  br i1 %228, label %229, label %232, !dbg !799

; <label>:229:                                    ; preds = %226
  %230 = zext i16 %207 to i32, !dbg !800
  %231 = add nuw nsw i32 %230, %201, !dbg !802
  br label %245, !dbg !799

; <label>:232:                                    ; preds = %226
  %233 = icmp eq %struct.ip6_reassdata* %227, null, !dbg !803
  br i1 %233, label %237, label %234, !dbg !804

; <label>:234:                                    ; preds = %232
  tail call fastcc void @ip6_reass_free_complete_datagram(%struct.ip6_reassdata* nonnull %227) #8, !dbg !805
  %235 = load %struct.ip6_reassdata*, %struct.ip6_reassdata** @reassdatagrams, align 8, !dbg !806
  %236 = load i16, i16* @ip6_reass_pbufcount, align 2, !dbg !807, !tbaa !508
  br label %237, !dbg !808

; <label>:237:                                    ; preds = %234, %232
  %238 = phi i16 [ %207, %232 ], [ %236, %234 ], !dbg !807
  %239 = phi %struct.ip6_reassdata* [ %208, %232 ], [ %235, %234 ], !dbg !806
  %240 = zext i16 %238 to i32, !dbg !807
  %241 = add nuw nsw i32 %240, %201, !dbg !809
  %242 = icmp ugt i32 %241, 10, !dbg !810
  %243 = icmp ne %struct.ip6_reassdata* %239, null, !dbg !811
  %244 = and i1 %243, %242, !dbg !812
  br i1 %244, label %206, label %245, !dbg !813, !llvm.loop !720

; <label>:245:                                    ; preds = %237, %229
  %246 = phi i32 [ %231, %229 ], [ %241, %237 ], !dbg !802
  %247 = phi %struct.ip6_reassdata* [ %208, %229 ], [ %239, %237 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !814
  %248 = icmp ult i32 %246, 11, !dbg !815
  br i1 %248, label %249, label %479, !dbg !816

; <label>:249:                                    ; preds = %245, %252
  %250 = phi %struct.ip6_reassdata* [ %254, %252 ], [ %247, %245 ], !dbg !817
  %251 = icmp eq %struct.ip6_reassdata* %250, null, !dbg !821
  br i1 %251, label %256, label %252, !dbg !822

; <label>:252:                                    ; preds = %249
  %253 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %250, i64 0, i32 0, !dbg !823
  %254 = load %struct.ip6_reassdata*, %struct.ip6_reassdata** %253, align 8, !dbg !823, !tbaa !371
  %255 = icmp eq %struct.ip6_reassdata* %254, %198, !dbg !826
  br i1 %255, label %256, label %249, !dbg !827, !llvm.loop !828

; <label>:256:                                    ; preds = %249, %252, %196
  %257 = phi %struct.ip6_reassdata* [ %197, %196 ], [ null, %249 ], [ %250, %252 ], !dbg !830
  %258 = tail call zeroext i8 @pbuf_header_force(%struct.pbuf* %0, i16 signext 4) #8, !dbg !831
  %259 = icmp eq i8 %258, 0, !dbg !833
  br i1 %259, label %261, label %260, !dbg !836

; <label>:260:                                    ; preds = %256
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !837
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !840
  tail call void @ukplat_terminate(i32 3) #9, !dbg !840
  unreachable, !dbg !840

; <label>:261:                                    ; preds = %256
  %262 = bitcast i8** %9 to %struct.ip6_reass_helper**, !dbg !844
  %263 = load %struct.ip6_reass_helper*, %struct.ip6_reass_helper** %262, align 8, !dbg !844, !tbaa !404
  %264 = add i16 %35, %36, !dbg !847
  %265 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %198, i64 0, i32 1, !dbg !849
  %266 = load %struct.pbuf*, %struct.pbuf** %265, align 1, !dbg !852, !tbaa !351
  %267 = icmp eq %struct.pbuf* %266, null, !dbg !855
  %268 = bitcast %struct.ip6_reass_helper* %263 to i8*, !dbg !856
  br i1 %267, label %317, label %269, !dbg !856

; <label>:269:                                    ; preds = %261, %303
  %270 = phi %struct.pbuf* [ %306, %303 ], [ %266, %261 ]
  %271 = phi i8 [ %304, %303 ], [ 1, %261 ]
  %272 = phi %struct.ip6_reass_helper* [ %275, %303 ], [ null, %261 ]
  %273 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %270, i64 0, i32 1, !dbg !857
  %274 = bitcast i8** %273 to %struct.ip6_reass_helper**, !dbg !857
  %275 = load %struct.ip6_reass_helper*, %struct.ip6_reass_helper** %274, align 8, !dbg !857, !tbaa !404
  %276 = getelementptr inbounds %struct.ip6_reass_helper, %struct.ip6_reass_helper* %275, i64 0, i32 1, !dbg !859
  %277 = load i16, i16* %276, align 1, !dbg !859, !tbaa !408
  %278 = icmp ult i16 %36, %277, !dbg !861
  br i1 %278, label %279, label %290, !dbg !862

; <label>:279:                                    ; preds = %269
  %280 = icmp ugt i16 %264, %277, !dbg !863
  br i1 %280, label %479, label %281, !dbg !866

; <label>:281:                                    ; preds = %279
  %282 = icmp eq %struct.ip6_reass_helper* %272, null, !dbg !867
  br i1 %282, label %289, label %283, !dbg !869

; <label>:283:                                    ; preds = %281
  %284 = getelementptr inbounds %struct.ip6_reass_helper, %struct.ip6_reass_helper* %272, i64 0, i32 2, !dbg !870
  %285 = load i16, i16* %284, align 1, !dbg !870, !tbaa !873
  %286 = icmp ult i16 %36, %285, !dbg !874
  br i1 %286, label %479, label %287, !dbg !875

; <label>:287:                                    ; preds = %283
  %288 = getelementptr inbounds %struct.ip6_reass_helper, %struct.ip6_reass_helper* %272, i64 0, i32 0, !dbg !876
  store %struct.pbuf* %0, %struct.pbuf** %288, align 1, !dbg !879, !tbaa !414
  br label %318, !dbg !880

; <label>:289:                                    ; preds = %281
  store %struct.pbuf* %0, %struct.pbuf** %265, align 8, !dbg !881, !tbaa !402
  br label %318

; <label>:290:                                    ; preds = %269
  %291 = icmp eq i16 %36, %277, !dbg !883
  br i1 %291, label %483, label %292, !dbg !885

; <label>:292:                                    ; preds = %290
  %293 = getelementptr inbounds %struct.ip6_reass_helper, %struct.ip6_reass_helper* %275, i64 0, i32 2, !dbg !886
  %294 = load i16, i16* %293, align 1, !dbg !886, !tbaa !873
  %295 = icmp ult i16 %36, %294, !dbg !888
  br i1 %295, label %479, label %296, !dbg !889

; <label>:296:                                    ; preds = %292
  %297 = icmp eq %struct.ip6_reass_helper* %272, null, !dbg !890
  br i1 %297, label %303, label %298, !dbg !893

; <label>:298:                                    ; preds = %296
  %299 = getelementptr inbounds %struct.ip6_reass_helper, %struct.ip6_reass_helper* %272, i64 0, i32 2, !dbg !894
  %300 = load i16, i16* %299, align 1, !dbg !894, !tbaa !873
  %301 = icmp eq i16 %300, %277, !dbg !897
  %302 = select i1 %301, i8 %271, i8 0, !dbg !898
  br label %303, !dbg !898

; <label>:303:                                    ; preds = %298, %296
  %304 = phi i8 [ %271, %296 ], [ %302, %298 ], !dbg !899
  %305 = getelementptr inbounds %struct.ip6_reass_helper, %struct.ip6_reass_helper* %275, i64 0, i32 0, !dbg !900
  %306 = load %struct.pbuf*, %struct.pbuf** %305, align 1, !dbg !852, !tbaa !351
  %307 = icmp eq %struct.pbuf* %306, null, !dbg !855
  br i1 %307, label %308, label %269, !dbg !856, !llvm.loop !901

; <label>:308:                                    ; preds = %303
  %309 = getelementptr inbounds %struct.ip6_reass_helper, %struct.ip6_reass_helper* %275, i64 0, i32 2, !dbg !903
  %310 = load i16, i16* %309, align 1, !dbg !903, !tbaa !873
  %311 = icmp ugt i16 %310, %36, !dbg !903
  br i1 %311, label %312, label %313, !dbg !910

; <label>:312:                                    ; preds = %308
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !911
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !914
  tail call void @ukplat_terminate(i32 3) #9, !dbg !914
  unreachable, !dbg !914

; <label>:313:                                    ; preds = %308
  %314 = getelementptr inbounds %struct.ip6_reass_helper, %struct.ip6_reass_helper* %275, i64 0, i32 0, !dbg !918
  store %struct.pbuf* %0, %struct.pbuf** %314, align 1, !dbg !919, !tbaa !414
  %315 = icmp eq i16 %310, %36, !dbg !920
  %316 = select i1 %315, i8 %304, i8 0, !dbg !922
  br label %318, !dbg !922

; <label>:317:                                    ; preds = %261
  store %struct.pbuf* %0, %struct.pbuf** %265, align 8, !dbg !923, !tbaa !402
  br label %318

; <label>:318:                                    ; preds = %289, %287, %313, %317
  %319 = phi %struct.pbuf* [ null, %317 ], [ null, %313 ], [ %270, %287 ], [ %270, %289 ]
  %320 = phi i8 [ 1, %317 ], [ %316, %313 ], [ %271, %287 ], [ %271, %289 ], !dbg !899
  %321 = load i16, i16* @ip6_reass_pbufcount, align 2, !dbg !925, !tbaa !508
  %322 = add i16 %321, %12, !dbg !926
  store i16 %322, i16* @ip6_reass_pbufcount, align 2, !dbg !927, !tbaa !508
  %323 = icmp eq i16 %36, 0, !dbg !928
  br i1 %323, label %324, label %330, !dbg !930

; <label>:324:                                    ; preds = %318
  %325 = load i64, i64* bitcast (%struct.ip6_hdr** getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 3) to i64*), align 8, !dbg !931, !tbaa !592
  %326 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %198, i64 0, i32 2, !dbg !933
  %327 = bitcast %struct.ip6_hdr** %326 to i64*, !dbg !934
  store i64 %325, i64* %327, align 8, !dbg !934, !tbaa !419
  %328 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %198, i64 0, i32 5, i64 0, !dbg !935
  %329 = tail call i8* @memcpy(i8* nonnull %328, i8* %268, i64 12) #8, !dbg !935
  br label %330, !dbg !936

; <label>:330:                                    ; preds = %324, %318
  %331 = getelementptr inbounds %struct.ip6_reass_helper, %struct.ip6_reass_helper* %263, i64 0, i32 0, !dbg !937
  store %struct.pbuf* %319, %struct.pbuf** %331, align 1, !dbg !938, !tbaa !414
  %332 = getelementptr inbounds %struct.ip6_reass_helper, %struct.ip6_reass_helper* %263, i64 0, i32 1, !dbg !939
  store i16 %36, i16* %332, align 1, !dbg !940, !tbaa !408
  %333 = getelementptr inbounds %struct.ip6_reass_helper, %struct.ip6_reass_helper* %263, i64 0, i32 2, !dbg !941
  store i16 %264, i16* %333, align 1, !dbg !942, !tbaa !873
  %334 = and i16 %15, 1, !dbg !943
  %335 = icmp eq i16 %334, 0, !dbg !945
  %336 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %198, i64 0, i32 7
  br i1 %335, label %339, label %337, !dbg !946

; <label>:337:                                    ; preds = %330
  %338 = load i16, i16* %336, align 4, !dbg !947, !tbaa !949
  br label %340, !dbg !946

; <label>:339:                                    ; preds = %330
  store i16 %264, i16* %336, align 4, !dbg !950, !tbaa !949
  br label %340, !dbg !952

; <label>:340:                                    ; preds = %337, %339
  %341 = phi i16 [ %338, %337 ], [ %264, %339 ], !dbg !947
  %342 = load %struct.pbuf*, %struct.pbuf** %265, align 8, !dbg !953, !tbaa !402
  %343 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %342, i64 0, i32 1, !dbg !954
  %344 = bitcast i8** %343 to %struct.ip6_reass_helper**, !dbg !954
  %345 = load %struct.ip6_reass_helper*, %struct.ip6_reass_helper** %344, align 8, !dbg !954, !tbaa !404
  %346 = getelementptr inbounds %struct.ip6_reass_helper, %struct.ip6_reass_helper* %345, i64 0, i32 1, !dbg !955
  %347 = load i16, i16* %346, align 1, !dbg !955, !tbaa !408
  %348 = icmp eq i16 %347, 0, !dbg !957
  %349 = select i1 %348, i8 %320, i8 0, !dbg !958
  %350 = icmp eq i16 %341, 0, !dbg !959
  %351 = select i1 %350, i8 0, i8 %349, !dbg !960
  %352 = icmp ne %struct.pbuf* %319, null, !dbg !961
  %353 = icmp ne i8 %351, 0, !dbg !962
  %354 = and i1 %353, %352, !dbg !962
  %355 = bitcast %struct.ip6_reass_helper* %345 to i8*, !dbg !963
  br i1 %354, label %356, label %377, !dbg !963

; <label>:356:                                    ; preds = %340
  %357 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %319, i64 0, i32 1, !dbg !964
  %358 = bitcast i8** %357 to %struct.ip6_reass_helper**, !dbg !964
  %359 = load %struct.ip6_reass_helper*, %struct.ip6_reass_helper** %358, align 8, !dbg !964, !tbaa !404
  %360 = getelementptr inbounds %struct.ip6_reass_helper, %struct.ip6_reass_helper* %359, i64 0, i32 1, !dbg !966
  %361 = load i16, i16* %360, align 1, !dbg !966, !tbaa !408
  %362 = icmp eq i16 %264, %361, !dbg !968
  br i1 %362, label %363, label %487, !dbg !969

; <label>:363:                                    ; preds = %356, %368
  %364 = phi %struct.ip6_reass_helper* [ %373, %368 ], [ %359, %356 ]
  %365 = getelementptr inbounds %struct.ip6_reass_helper, %struct.ip6_reass_helper* %364, i64 0, i32 0, !dbg !970
  %366 = load %struct.pbuf*, %struct.pbuf** %365, align 1, !dbg !971, !tbaa !414
  %367 = icmp eq %struct.pbuf* %366, null, !dbg !961
  br i1 %367, label %377, label %368, !dbg !963, !llvm.loop !972

; <label>:368:                                    ; preds = %363
  %369 = getelementptr inbounds %struct.ip6_reass_helper, %struct.ip6_reass_helper* %364, i64 0, i32 2
  %370 = load i16, i16* %369, align 1, !dbg !974, !tbaa !873
  %371 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %366, i64 0, i32 1, !dbg !964
  %372 = bitcast i8** %371 to %struct.ip6_reass_helper**, !dbg !964
  %373 = load %struct.ip6_reass_helper*, %struct.ip6_reass_helper** %372, align 8, !dbg !964, !tbaa !404
  %374 = getelementptr inbounds %struct.ip6_reass_helper, %struct.ip6_reass_helper* %373, i64 0, i32 1, !dbg !966
  %375 = load i16, i16* %374, align 1, !dbg !966, !tbaa !408
  %376 = icmp eq i16 %370, %375, !dbg !968
  br i1 %376, label %363, label %487, !dbg !969

; <label>:377:                                    ; preds = %363, %340
  %378 = icmp eq i8 %351, 0, !dbg !975
  br i1 %378, label %487, label %379, !dbg !976

; <label>:379:                                    ; preds = %377
  %380 = icmp eq %struct.ip6_reass_helper* %345, null, !dbg !977
  br i1 %380, label %401, label %381, !dbg !978

; <label>:381:                                    ; preds = %379, %394
  %382 = phi %struct.ip6_reass_helper* [ %389, %394 ], [ %345, %379 ]
  %383 = getelementptr inbounds %struct.ip6_reass_helper, %struct.ip6_reass_helper* %382, i64 0, i32 0, !dbg !979
  %384 = load %struct.pbuf*, %struct.pbuf** %383, align 1, !dbg !979, !tbaa !414
  %385 = icmp eq %struct.pbuf* %384, null, !dbg !980
  br i1 %385, label %397, label %386, !dbg !981

; <label>:386:                                    ; preds = %381
  %387 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %384, i64 0, i32 1, !dbg !982
  %388 = bitcast i8** %387 to %struct.ip6_reass_helper**, !dbg !982
  %389 = load %struct.ip6_reass_helper*, %struct.ip6_reass_helper** %388, align 8, !dbg !982, !tbaa !404
  %390 = tail call zeroext i8 @pbuf_remove_header(%struct.pbuf* nonnull %384, i64 8) #8, !dbg !983
  %391 = tail call zeroext i8 @pbuf_remove_header(%struct.pbuf* nonnull %384, i64 4) #8, !dbg !984
  %392 = icmp eq i8 %391, 0, !dbg !986
  br i1 %392, label %394, label %393, !dbg !989

; <label>:393:                                    ; preds = %386
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !990
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !993
  tail call void @ukplat_terminate(i32 3) #9, !dbg !993
  unreachable, !dbg !993

; <label>:394:                                    ; preds = %386
  %395 = load %struct.pbuf*, %struct.pbuf** %265, align 8, !dbg !997, !tbaa !402
  tail call void @pbuf_cat(%struct.pbuf* %395, %struct.pbuf* nonnull %384) #8, !dbg !998
  %396 = icmp eq %struct.ip6_reass_helper* %389, null, !dbg !977
  br i1 %396, label %397, label %381, !dbg !978, !llvm.loop !999

; <label>:397:                                    ; preds = %381, %394
  %398 = load %struct.pbuf*, %struct.pbuf** %265, align 8, !dbg !1001, !tbaa !402
  %399 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %398, i64 0, i32 1
  %400 = load i8*, i8** %399, align 8, !dbg !1002, !tbaa !404
  br label %401, !dbg !1001

; <label>:401:                                    ; preds = %397, %379
  %402 = phi i8** [ %399, %397 ], [ %343, %379 ], !dbg !1002
  %403 = phi i8* [ %400, %397 ], [ %355, %379 ], !dbg !1002
  %404 = phi %struct.pbuf* [ %398, %397 ], [ %342, %379 ], !dbg !1001
  %405 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %198, i64 0, i32 5, i64 0, !dbg !1002
  %406 = tail call i8* @memcpy(i8* %403, i8* nonnull %405, i64 4) #8, !dbg !1002
  %407 = tail call zeroext i8 @pbuf_remove_header(%struct.pbuf* %404, i64 4) #8, !dbg !1003
  %408 = icmp eq i8 %407, 0, !dbg !1005
  br i1 %408, label %410, label %409, !dbg !1008

; <label>:409:                                    ; preds = %401
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !1009
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1012
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1012
  unreachable, !dbg !1012

; <label>:410:                                    ; preds = %401
  %411 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %198, i64 0, i32 2, !dbg !1016
  %412 = bitcast %struct.ip6_hdr** %411 to i8**, !dbg !1016
  %413 = load i8*, i8** %412, align 8, !dbg !1016, !tbaa !419
  %414 = getelementptr inbounds i8, i8* %413, i64 8, !dbg !1016
  %415 = bitcast i8** %402 to i64*, !dbg !1016
  %416 = load i64, i64* %415, align 8, !dbg !1016, !tbaa !404
  %417 = ptrtoint i8* %413 to i64, !dbg !1016
  %418 = sub i64 %416, %417, !dbg !1016
  %419 = tail call i8* @memmove(i8* nonnull %414, i8* %413, i64 %418) #8, !dbg !1016
  %420 = load i8*, i8** %412, align 8, !dbg !1017, !tbaa !419
  %421 = getelementptr inbounds i8, i8* %420, i64 8, !dbg !1018
  %422 = load i16, i16* %336, align 4, !dbg !1020, !tbaa !949
  %423 = load i64, i64* %415, align 8, !dbg !1021, !tbaa !404
  %424 = ptrtoint i8* %421 to i64, !dbg !1022
  %425 = sub i64 %423, %424, !dbg !1022
  %426 = trunc i64 %425 to i16, !dbg !1023
  %427 = add i16 %422, -40, !dbg !1023
  %428 = add i16 %427, %426, !dbg !1023
  store i16 %428, i16* %336, align 4, !dbg !1024, !tbaa !949
  %429 = tail call zeroext i16 @lwip_htons(i16 zeroext %428) #8, !dbg !1025
  %430 = getelementptr inbounds i8, i8* %420, i64 12, !dbg !1026
  %431 = bitcast i8* %430 to i16*, !dbg !1026
  store i16 %429, i16* %431, align 1, !dbg !1027, !tbaa !595
  %432 = getelementptr inbounds i8, i8* %420, i64 14, !dbg !1028
  %433 = load i8, i8* %432, align 1, !dbg !1028, !tbaa !1029
  %434 = icmp eq i8 %433, 44, !dbg !1030
  br i1 %434, label %449, label %435, !dbg !1031

; <label>:435:                                    ; preds = %410
  %436 = getelementptr inbounds i8, i8* %420, i64 48, !dbg !1032
  %437 = load i8, i8* %436, align 1, !dbg !1034, !tbaa !758
  %438 = icmp eq i8 %437, 44, !dbg !1035
  br i1 %438, label %449, label %439, !dbg !1036

; <label>:439:                                    ; preds = %435, %439
  %440 = phi i8* [ %446, %439 ], [ %436, %435 ]
  %441 = getelementptr inbounds i8, i8* %440, i64 1, !dbg !1037
  %442 = load i8, i8* %441, align 1, !dbg !1037, !tbaa !758
  %443 = zext i8 %442 to i64, !dbg !1037
  %444 = shl nuw nsw i64 %443, 3, !dbg !1039
  %445 = add nuw nsw i64 %444, 8, !dbg !1039
  %446 = getelementptr inbounds i8, i8* %440, i64 %445, !dbg !1040
  %447 = load i8, i8* %446, align 1, !dbg !1034, !tbaa !758
  %448 = icmp eq i8 %447, 44, !dbg !1035
  br i1 %448, label %449, label %439, !dbg !1036, !llvm.loop !1041

; <label>:449:                                    ; preds = %439, %435, %410
  %450 = phi i8* [ %432, %410 ], [ %436, %435 ], [ %446, %439 ]
  %451 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %198, i64 0, i32 8, !dbg !1043
  %452 = load i8, i8* %451, align 2, !dbg !1043, !tbaa !771
  store i8 %452, i8* %450, align 1, !dbg !1043, !tbaa !758
  %453 = load %struct.ip6_reassdata*, %struct.ip6_reassdata** @reassdatagrams, align 8, !dbg !1045, !tbaa !351
  %454 = icmp eq %struct.ip6_reassdata* %453, %198, !dbg !1047
  br i1 %454, label %455, label %458, !dbg !1048

; <label>:455:                                    ; preds = %449
  %456 = bitcast %struct.ip6_reassdata* %198 to i64*, !dbg !1049
  %457 = load i64, i64* %456, align 8, !dbg !1049, !tbaa !371
  store i64 %457, i64* bitcast (%struct.ip6_reassdata** @reassdatagrams to i64*), align 8, !dbg !1051, !tbaa !351
  br label %465, !dbg !1052

; <label>:458:                                    ; preds = %449
  %459 = icmp eq %struct.ip6_reassdata* %257, null, !dbg !1053
  br i1 %459, label %460, label %461, !dbg !1057

; <label>:460:                                    ; preds = %458
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0)) #7, !dbg !1058
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1061
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1061
  unreachable, !dbg !1061

; <label>:461:                                    ; preds = %458
  %462 = bitcast %struct.ip6_reassdata* %198 to i64*, !dbg !1065
  %463 = load i64, i64* %462, align 8, !dbg !1065, !tbaa !371
  %464 = bitcast %struct.ip6_reassdata* %257 to i64*, !dbg !1066
  store i64 %463, i64* %464, align 8, !dbg !1066, !tbaa !371
  br label %465

; <label>:465:                                    ; preds = %461, %455
  %466 = bitcast %struct.ip6_reassdata* %198 to i8*, !dbg !1067
  tail call void @memp_free(i32 13, i8* %466) #8, !dbg !1068
  %467 = tail call zeroext i16 @pbuf_clen(%struct.pbuf* %404) #8, !dbg !1069
  %468 = load i16, i16* @ip6_reass_pbufcount, align 2, !dbg !1070, !tbaa !508
  %469 = icmp ult i16 %468, %467, !dbg !1070
  br i1 %469, label %470, label %471, !dbg !1073

; <label>:470:                                    ; preds = %465
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0)) #7, !dbg !1074
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1077
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1077
  unreachable, !dbg !1077

; <label>:471:                                    ; preds = %465
  %472 = sub i16 %468, %467, !dbg !1081
  store i16 %472, i16* @ip6_reass_pbufcount, align 2, !dbg !1082, !tbaa !508
  %473 = load i64, i64* %415, align 8, !dbg !1083, !tbaa !404
  %474 = sub i64 %473, %424, !dbg !1085
  %475 = trunc i64 %474 to i16, !dbg !1086
  %476 = tail call zeroext i8 @pbuf_header_force(%struct.pbuf* %404, i16 signext %475) #8, !dbg !1087
  %477 = icmp eq i8 %476, 0, !dbg !1087
  br i1 %477, label %487, label %478, !dbg !1088

; <label>:478:                                    ; preds = %471
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0)) #7, !dbg !1089
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1095
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1095
  unreachable, !dbg !1095

; <label>:479:                                    ; preds = %292, %283, %279, %245, %150, %33, %29
  %480 = phi i16* [ getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 10, i32 8), %29 ], [ getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 10, i32 8), %33 ], [ getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 10, i32 6), %150 ], [ getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 10, i32 6), %245 ], [ getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 10, i32 8), %279 ], [ getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 10, i32 8), %283 ], [ getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 10, i32 8), %292 ]
  %481 = load i16, i16* %480, align 2, !dbg !1099, !tbaa !508
  %482 = add i16 %481, 1, !dbg !1099
  store i16 %482, i16* %480, align 2, !dbg !1099, !tbaa !508
  br label %483, !dbg !1101

; <label>:483:                                    ; preds = %290, %479
  %484 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 10, i32 3), align 2, !dbg !1101, !tbaa !1102
  %485 = add i16 %484, 1, !dbg !1101
  store i16 %485, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 10, i32 3), align 2, !dbg !1101, !tbaa !1102
  %486 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %0) #8, !dbg !1103
  br label %487, !dbg !1104

; <label>:487:                                    ; preds = %368, %356, %377, %471, %483
  %488 = phi %struct.pbuf* [ null, %483 ], [ %404, %471 ], [ null, %377 ], [ null, %356 ], [ null, %368 ], !dbg !899
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1105
  ret %struct.pbuf* %488, !dbg !1105
}

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8*, ...) unnamed_addr #3 !dbg !313 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !1107
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #6, !dbg !1107
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !1109
  call void @llvm.va_start(i8* nonnull %3), !dbg !1109
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @uk_pr_crit.__str.15, i64 0, i64 0), i32 198, i8* %0, %struct.__va_list_tag* nonnull %4) #8, !dbg !1110
  call void @llvm.va_end(i8* nonnull %3), !dbg !1113
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #6, !dbg !1114
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1114
  ret void, !dbg !1114
}

; Function Attrs: noredzone noreturn
declare dso_local void @ukplat_terminate(i32) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local zeroext i16 @pbuf_clen(%struct.pbuf*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local zeroext i16 @lwip_htons(i16 zeroext) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local i8* @memp_malloc(i32) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local zeroext i8 @pbuf_header_force(%struct.pbuf*, i16 signext) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local zeroext i8 @pbuf_remove_header(%struct.pbuf*, i64) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @pbuf_cat(%struct.pbuf*, %struct.pbuf*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local i8* @memmove(i8*, i8*, i64) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @memp_free(i32, i8*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local zeroext i8 @pbuf_free(%struct.pbuf*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local signext i8 @ip6_frag(%struct.pbuf*, %struct.netif*, %struct.ip6_addr*) local_unnamed_addr #0 !dbg !185 {
  %4 = tail call zeroext i16 @nd6_get_destination_mtu(%struct.ip6_addr* %2, %struct.netif* %1) #8, !dbg !1119
  %5 = add i16 %4, -48, !dbg !1121
  %6 = and i16 %5, -8, !dbg !1121
  %7 = load i32, i32* @ip6_frag.identification, align 4, !dbg !1125, !tbaa !437
  %8 = add i32 %7, 1, !dbg !1125
  store i32 %8, i32* @ip6_frag.identification, align 4, !dbg !1125, !tbaa !437
  %9 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 1, !dbg !1126
  %10 = load i8*, i8** %9, align 8, !dbg !1126, !tbaa !404
  %11 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 2, !dbg !1128
  %12 = load i16, i16* %11, align 8, !dbg !1128, !tbaa !1131
  %13 = icmp ugt i16 %12, 39, !dbg !1128
  br i1 %13, label %15, label %14, !dbg !1132

; <label>:14:                                     ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0)) #7, !dbg !1133
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1136
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1136
  unreachable, !dbg !1136

; <label>:15:                                     ; preds = %3
  %16 = add i16 %12, -40, !dbg !1140
  %17 = icmp eq i16 %16, 0, !dbg !1142
  br i1 %17, label %124, label %18, !dbg !1142

; <label>:18:                                     ; preds = %15
  %19 = getelementptr inbounds i8, i8* %10, i64 6
  %20 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 11
  br label %21, !dbg !1142

; <label>:21:                                     ; preds = %18, %93
  %22 = phi i16 [ 40, %18 ], [ %94, %93 ]
  %23 = phi %struct.pbuf* [ %0, %18 ], [ %95, %93 ]
  %24 = phi i32 [ 0, %18 ], [ %122, %93 ]
  %25 = phi i16 [ 0, %18 ], [ %94, %93 ]
  %26 = phi i16 [ %16, %18 ], [ %121, %93 ]
  %27 = icmp ugt i16 %26, %6, !dbg !1143
  %28 = icmp ult i16 %26, %6, !dbg !1144
  %29 = select i1 %28, i16 %26, i16 %6, !dbg !1144
  %30 = tail call %struct.pbuf* @pbuf_alloc(i32 14, i16 zeroext 48, i32 640) #8, !dbg !1146
  %31 = icmp eq %struct.pbuf* %30, null, !dbg !1148
  br i1 %31, label %32, label %35, !dbg !1150

; <label>:32:                                     ; preds = %21
  %33 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 10, i32 6), align 2, !dbg !1151, !tbaa !1153
  %34 = add i16 %33, 1, !dbg !1151
  store i16 %34, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 10, i32 6), align 2, !dbg !1151, !tbaa !1153
  br label %124, !dbg !1154

; <label>:35:                                     ; preds = %21
  %36 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %23, i64 0, i32 3, !dbg !1155
  %37 = load i16, i16* %36, align 2, !dbg !1155, !tbaa !574
  %38 = icmp ugt i16 %37, 39, !dbg !1155
  br i1 %38, label %40, label %39, !dbg !1158

; <label>:39:                                     ; preds = %35
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0)) #7, !dbg !1159
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1162
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1162
  unreachable, !dbg !1162

; <label>:40:                                     ; preds = %35
  %41 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %30, i64 0, i32 1, !dbg !1166
  %42 = load i8*, i8** %41, align 8, !dbg !1166, !tbaa !404
  %43 = tail call i8* @memcpy(i8* %42, i8* %10, i64 40) #8, !dbg !1166
  %44 = load i8*, i8** %41, align 8, !dbg !1167, !tbaa !404
  %45 = getelementptr inbounds i8, i8* %44, i64 40, !dbg !1169
  %46 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %23, i64 0, i32 1, !dbg !1171
  %47 = load i8*, i8** %46, align 8, !dbg !1171, !tbaa !404
  %48 = zext i16 %22 to i64, !dbg !1172
  %49 = getelementptr inbounds i8, i8* %47, i64 %48, !dbg !1172
  store i8* %49, i8** %46, align 8, !dbg !1173, !tbaa !404
  %50 = load i16, i16* %36, align 2, !dbg !1174, !tbaa !574
  %51 = sub i16 %50, %22, !dbg !1175
  store i16 %51, i16* %36, align 2, !dbg !1176, !tbaa !574
  %52 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %23, i64 0, i32 2, !dbg !1177
  %53 = load i16, i16* %52, align 8, !dbg !1177, !tbaa !1131
  %54 = sub i16 %53, %22, !dbg !1178
  store i16 %54, i16* %52, align 8, !dbg !1179, !tbaa !1131
  %55 = icmp eq i16 %29, 0, !dbg !1181
  br i1 %55, label %93, label %56, !dbg !1181

; <label>:56:                                     ; preds = %40, %87
  %57 = phi i16 [ %92, %87 ], [ %51, %40 ], !dbg !1182
  %58 = phi %struct.pbuf* [ %90, %87 ], [ %23, %40 ]
  %59 = phi i16 [ %88, %87 ], [ %29, %40 ]
  %60 = icmp ult i16 %59, %57, !dbg !1183
  %61 = select i1 %60, i16 %59, i16 %57, !dbg !1184
  %62 = icmp eq i16 %61, 0, !dbg !1185
  br i1 %62, label %87, label %63, !dbg !1187, !llvm.loop !1188

; <label>:63:                                     ; preds = %56
  %64 = tail call i8* @memp_malloc(i32 5) #8, !dbg !1190
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1196
  %65 = icmp eq i8* %64, null, !dbg !1198
  br i1 %65, label %66, label %70, !dbg !1200

; <label>:66:                                     ; preds = %63
  %67 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %30) #8, !dbg !1201
  %68 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 10, i32 6), align 2, !dbg !1203, !tbaa !1153
  %69 = add i16 %68, 1, !dbg !1203
  store i16 %69, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 10, i32 6), align 2, !dbg !1203, !tbaa !1153
  br label %124, !dbg !1204

; <label>:70:                                     ; preds = %63
  %71 = bitcast i8* %64 to %struct.pbuf_custom*, !dbg !1205
  %72 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %58, i64 0, i32 1, !dbg !1206
  %73 = load i8*, i8** %72, align 8, !dbg !1206, !tbaa !404
  %74 = tail call %struct.pbuf* @pbuf_alloced_custom(i32 0, i16 zeroext %61, i32 65, %struct.pbuf_custom* nonnull %71, i8* %73, i16 zeroext %61) #8, !dbg !1207
  %75 = icmp eq %struct.pbuf* %74, null, !dbg !1209
  br i1 %75, label %76, label %80, !dbg !1211

; <label>:76:                                     ; preds = %70
  tail call void @memp_free(i32 5, i8* nonnull %64) #8, !dbg !1220
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1221
  %77 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %30) #8, !dbg !1222
  %78 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 10, i32 6), align 2, !dbg !1223, !tbaa !1153
  %79 = add i16 %78, 1, !dbg !1223
  store i16 %79, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 10, i32 6), align 2, !dbg !1223, !tbaa !1153
  br label %124, !dbg !1224

; <label>:80:                                     ; preds = %70
  tail call void @pbuf_ref(%struct.pbuf* nonnull %58) #8, !dbg !1225
  %81 = getelementptr inbounds i8, i8* %64, i64 32, !dbg !1226
  %82 = bitcast i8* %81 to %struct.pbuf**, !dbg !1226
  store %struct.pbuf* %58, %struct.pbuf** %82, align 8, !dbg !1227, !tbaa !1228
  %83 = getelementptr inbounds i8, i8* %64, i64 24, !dbg !1231
  %84 = bitcast i8* %83 to void (%struct.pbuf*)**, !dbg !1231
  store void (%struct.pbuf*)* @ip6_frag_free_pbuf_custom, void (%struct.pbuf*)** %84, align 8, !dbg !1232, !tbaa !1233
  tail call void @pbuf_cat(%struct.pbuf* nonnull %30, %struct.pbuf* nonnull %74) #8, !dbg !1234
  %85 = sub i16 %59, %61, !dbg !1235
  %86 = icmp eq i16 %85, 0, !dbg !1236
  br i1 %86, label %93, label %87, !dbg !1238

; <label>:87:                                     ; preds = %80, %56
  %88 = phi i16 [ %59, %56 ], [ %85, %80 ]
  %89 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %58, i64 0, i32 0, !dbg !1239
  %90 = load %struct.pbuf*, %struct.pbuf** %89, align 8, !dbg !1239, !tbaa !1241
  %91 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %90, i64 0, i32 3
  %92 = load i16, i16* %91, align 2, !dbg !1182, !tbaa !574
  br label %56, !dbg !1181

; <label>:93:                                     ; preds = %80, %40
  %94 = phi i16 [ %25, %40 ], [ %61, %80 ], !dbg !1242
  %95 = phi %struct.pbuf* [ %23, %40 ], [ %58, %80 ]
  %96 = load i8, i8* %19, align 1, !dbg !1243, !tbaa !1029
  store i8 %96, i8* %45, align 1, !dbg !1244, !tbaa !768
  %97 = getelementptr inbounds i8, i8* %44, i64 41, !dbg !1245
  store i8 0, i8* %97, align 1, !dbg !1246, !tbaa !1247
  %98 = and i32 %24, 65535, !dbg !1248
  %99 = and i32 %24, 65528, !dbg !1249
  %100 = zext i1 %27 to i32, !dbg !1250
  %101 = or i32 %99, %100, !dbg !1251
  %102 = trunc i32 %101 to i16, !dbg !1252
  %103 = tail call zeroext i16 @lwip_htons(i16 zeroext %102) #8, !dbg !1253
  %104 = getelementptr inbounds i8, i8* %44, i64 42, !dbg !1254
  %105 = bitcast i8* %104 to i16*, !dbg !1254
  store i16 %103, i16* %105, align 1, !dbg !1255, !tbaa !588
  %106 = load i32, i32* @ip6_frag.identification, align 4, !dbg !1256, !tbaa !437
  %107 = tail call i32 @lwip_htonl(i32 %106) #8, !dbg !1257
  %108 = getelementptr inbounds i8, i8* %44, i64 44, !dbg !1258
  %109 = bitcast i8* %108 to i32*, !dbg !1258
  store i32 %107, i32* %109, align 1, !dbg !1259, !tbaa !642
  %110 = getelementptr inbounds i8, i8* %44, i64 6, !dbg !1260
  store i8 44, i8* %110, align 1, !dbg !1260, !tbaa !1029
  %111 = zext i16 %29 to i32, !dbg !1261
  %112 = add i16 %29, 8, !dbg !1261
  %113 = tail call zeroext i16 @lwip_htons(i16 zeroext %112) #8, !dbg !1261
  %114 = getelementptr inbounds i8, i8* %44, i64 4, !dbg !1261
  %115 = bitcast i8* %114 to i16*, !dbg !1261
  store i16 %113, i16* %115, align 1, !dbg !1261, !tbaa !595
  %116 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 10, i32 0), align 2, !dbg !1262, !tbaa !1263
  %117 = add i16 %116, 1, !dbg !1262
  store i16 %117, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 10, i32 0), align 2, !dbg !1262, !tbaa !1263
  %118 = load i8 (%struct.netif*, %struct.pbuf*, %struct.ip6_addr*)*, i8 (%struct.netif*, %struct.pbuf*, %struct.ip6_addr*)** %20, align 8, !dbg !1264, !tbaa !1265
  %119 = tail call signext i8 %118(%struct.netif* %1, %struct.pbuf* nonnull %30, %struct.ip6_addr* %2) #8, !dbg !1267
  %120 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %30) #8, !dbg !1268
  %121 = sub i16 %26, %29, !dbg !1269
  %122 = add nuw nsw i32 %98, %111, !dbg !1270
  %123 = icmp eq i16 %121, 0, !dbg !1142
  br i1 %123, label %124, label %21, !dbg !1142, !llvm.loop !1271

; <label>:124:                                    ; preds = %93, %15, %76, %66, %32
  %125 = phi i8 [ -1, %32 ], [ -1, %66 ], [ -1, %76 ], [ 0, %15 ], [ 0, %93 ], !dbg !1273
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1274
  ret i8 %125, !dbg !1274
}

; Function Attrs: noredzone
declare dso_local zeroext i16 @nd6_get_destination_mtu(%struct.ip6_addr*, %struct.netif*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local %struct.pbuf* @pbuf_alloc(i32, i16 zeroext, i32) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local %struct.pbuf* @pbuf_alloced_custom(i32, i16 zeroext, i32, %struct.pbuf_custom*, i8*, i16 zeroext) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @pbuf_ref(%struct.pbuf*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define internal void @ip6_frag_free_pbuf_custom(%struct.pbuf*) #0 !dbg !1275 {
  %2 = icmp eq %struct.pbuf* %0, null, !dbg !1281
  br i1 %2, label %3, label %4, !dbg !1284

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0)) #7, !dbg !1285
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1288
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1288
  unreachable, !dbg !1288

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 1, i32 1, !dbg !1292
  %6 = bitcast i8** %5 to %struct.pbuf**, !dbg !1292
  %7 = load %struct.pbuf*, %struct.pbuf** %6, align 8, !dbg !1292, !tbaa !1228
  %8 = icmp eq %struct.pbuf* %7, null, !dbg !1294
  br i1 %8, label %11, label %9, !dbg !1295

; <label>:9:                                      ; preds = %4
  %10 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %7) #8, !dbg !1296
  br label %11, !dbg !1298

; <label>:11:                                     ; preds = %9, %4
  %12 = bitcast %struct.pbuf* %0 to i8*, !dbg !1301
  tail call void @memp_free(i32 5, i8* %12) #8, !dbg !1302
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1303
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1304
  ret void, !dbg !1304
}

; Function Attrs: noredzone
declare dso_local i32 @lwip_htonl(i32) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @icmp6_time_exceeded_with_addrs(%struct.pbuf*, i32, %struct.ip6_addr*, %struct.ip6_addr*) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

; Function Attrs: noredzone
declare dso_local void @_uk_vprintk(i32, i8*, i8*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { inlinehint noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin noredzone }
attributes #8 = { nobuiltin noredzone nounwind }
attributes #9 = { nobuiltin noredzone noreturn nounwind }

!llvm.module.flags = !{!340, !341, !342}
!llvm.ident = !{!343}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "reassdatagrams", scope: !2, file: !3, line: 103, type: !123, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !79, globals: !182)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/ipv6/ip6_frag.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{!5, !13, !34, !39, !47, !53, !74}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ukplat_gstate", file: !6, line: 68, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/bootstrap.h", directory: "/root/.unikraft/apps/redis/build")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "UKPLAT_HALT", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "UKPLAT_RESTART", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "UKPLAT_SUSPEND", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "UKPLAT_CRASH", value: 3, isUnsigned: true)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 52, baseType: !7, size: 32, elements: !15)
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
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "netif_mac_filter_action", file: !35, line: 156, baseType: !7, size: 32, elements: !36)
!35 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/netif.h", directory: "/root/.unikraft/apps/redis/build")
!36 = !{!37, !38}
!37 = !DIEnumerator(name: "NETIF_DEL_MAC_FILTER", value: 0, isUnsigned: true)
!38 = !DIEnumerator(name: "NETIF_ADD_MAC_FILTER", value: 1, isUnsigned: true)
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !40, line: 89, baseType: !7, size: 32, elements: !41)
!40 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/pbuf.h", directory: "/root/.unikraft/apps/redis/build")
!41 = !{!42, !43, !44, !45, !46}
!42 = !DIEnumerator(name: "PBUF_TRANSPORT", value: 74, isUnsigned: true)
!43 = !DIEnumerator(name: "PBUF_IP", value: 54, isUnsigned: true)
!44 = !DIEnumerator(name: "PBUF_LINK", value: 14, isUnsigned: true)
!45 = !DIEnumerator(name: "PBUF_RAW_TX", value: 0, isUnsigned: true)
!46 = !DIEnumerator(name: "PBUF_RAW", value: 0, isUnsigned: true)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !40, line: 145, baseType: !7, size: 32, elements: !48)
!48 = !{!49, !50, !51, !52}
!49 = !DIEnumerator(name: "PBUF_RAM", value: 640, isUnsigned: true)
!50 = !DIEnumerator(name: "PBUF_ROM", value: 1, isUnsigned: true)
!51 = !DIEnumerator(name: "PBUF_REF", value: 65, isUnsigned: true)
!52 = !DIEnumerator(name: "PBUF_POOL", value: 386, isUnsigned: true)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !54, line: 53, baseType: !55, size: 32, elements: !56)
!54 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/err.h", directory: "/root/.unikraft/apps/redis/build")
!55 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!56 = !{!57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73}
!57 = !DIEnumerator(name: "ERR_OK", value: 0)
!58 = !DIEnumerator(name: "ERR_MEM", value: -1)
!59 = !DIEnumerator(name: "ERR_BUF", value: -2)
!60 = !DIEnumerator(name: "ERR_TIMEOUT", value: -3)
!61 = !DIEnumerator(name: "ERR_RTE", value: -4)
!62 = !DIEnumerator(name: "ERR_INPROGRESS", value: -5)
!63 = !DIEnumerator(name: "ERR_VAL", value: -6)
!64 = !DIEnumerator(name: "ERR_WOULDBLOCK", value: -7)
!65 = !DIEnumerator(name: "ERR_USE", value: -8)
!66 = !DIEnumerator(name: "ERR_ALREADY", value: -9)
!67 = !DIEnumerator(name: "ERR_ISCONN", value: -10)
!68 = !DIEnumerator(name: "ERR_CONN", value: -11)
!69 = !DIEnumerator(name: "ERR_IF", value: -12)
!70 = !DIEnumerator(name: "ERR_ABRT", value: -13)
!71 = !DIEnumerator(name: "ERR_RST", value: -14)
!72 = !DIEnumerator(name: "ERR_CLSD", value: -15)
!73 = !DIEnumerator(name: "ERR_ARG", value: -16)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "icmp6_te_code", file: !75, line: 116, baseType: !7, size: 32, elements: !76)
!75 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/prot/icmp6.h", directory: "/root/.unikraft/apps/redis/build")
!76 = !{!77, !78}
!77 = !DIEnumerator(name: "ICMP6_TE_HL", value: 0, isUnsigned: true)
!78 = !DIEnumerator(name: "ICMP6_TE_FRAG", value: 1, isUnsigned: true)
!79 = !{!80, !81, !103, !120, !121, !95, !123, !154, !158, !164, !141, !169}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip6_frag_hdr", file: !83, line: 211, size: 64, elements: !84)
!83 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/prot/ip6.h", directory: "/root/.unikraft/apps/redis/build")
!84 = !{!85, !93, !94, !99}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_nexth", scope: !82, file: !83, line: 213, baseType: !86, size: 8)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8_t", file: !87, line: 125, baseType: !88)
!87 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/arch.h", directory: "/root/.unikraft/apps/redis/build")
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !89, line: 24, baseType: !90)
!89 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !91, line: 43, baseType: !92)
!91 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!92 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !82, file: !83, line: 215, baseType: !86, size: 8, offset: 8)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_fragment_offset", scope: !82, file: !83, line: 217, baseType: !95, size: 16, offset: 16)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16_t", file: !87, line: 127, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !89, line: 36, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !91, line: 57, baseType: !98)
!98 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_identification", scope: !82, file: !83, line: 219, baseType: !100, size: 32, offset: 32)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32_t", file: !87, line: 129, baseType: !101)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !89, line: 48, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !91, line: 79, baseType: !7)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip6_hdr", file: !83, line: 80, size: 320, elements: !106)
!106 = !{!107, !108, !109, !110, !111, !119}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_v_tc_fl", scope: !105, file: !83, line: 82, baseType: !100, size: 32)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_plen", scope: !105, file: !83, line: 84, baseType: !95, size: 16, offset: 32)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_nexth", scope: !105, file: !83, line: 86, baseType: !86, size: 8, offset: 48)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_hoplim", scope: !105, file: !83, line: 88, baseType: !86, size: 8, offset: 56)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !105, file: !83, line: 90, baseType: !112, size: 128, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip6_addr_p_t", file: !83, line: 60, baseType: !113)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip6_addr_packed", file: !83, line: 53, size: 128, elements: !114)
!114 = !{!115}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !113, file: !83, line: 54, baseType: !116, size: 128)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 128, elements: !117)
!117 = !{!118}
!118 = !DISubrange(count: 4)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !105, file: !83, line: 91, baseType: !112, size: 128, offset: 192)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip6_reassdata", file: !125, line: 90, size: 704, elements: !126)
!125 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip6_frag.h", directory: "/root/.unikraft/apps/redis/build")
!126 = !{!127, !128, !140, !142, !143, !144, !148, !149, !150, !151, !152, !153}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !124, file: !125, line: 91, baseType: !123, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !124, file: !125, line: 92, baseType: !129, size: 64, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pbuf", file: !40, line: 186, size: 192, elements: !131)
!131 = !{!132, !133, !134, !135, !136, !137, !138, !139}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !130, file: !40, line: 188, baseType: !129, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !130, file: !40, line: 191, baseType: !80, size: 64, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "tot_len", scope: !130, file: !40, line: 200, baseType: !95, size: 16, offset: 128)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !130, file: !40, line: 203, baseType: !95, size: 16, offset: 144)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "type_internal", scope: !130, file: !40, line: 208, baseType: !86, size: 8, offset: 160)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !130, file: !40, line: 211, baseType: !86, size: 8, offset: 168)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !130, file: !40, line: 218, baseType: !86, size: 8, offset: 176)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "if_idx", scope: !130, file: !40, line: 221, baseType: !86, size: 8, offset: 184)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "iphdr", scope: !124, file: !125, line: 93, baseType: !141, size: 64, offset: 128)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !124, file: !125, line: 95, baseType: !112, size: 128, offset: 192)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !124, file: !125, line: 96, baseType: !112, size: 128, offset: 320)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "orig_hdr", scope: !124, file: !125, line: 99, baseType: !145, size: 128, offset: 448)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 128, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 16)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "identification", scope: !124, file: !125, line: 104, baseType: !100, size: 32, offset: 576)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "datagram_len", scope: !124, file: !125, line: 105, baseType: !95, size: 16, offset: 608)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "nexth", scope: !124, file: !125, line: 106, baseType: !86, size: 8, offset: 624)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !124, file: !125, line: 107, baseType: !86, size: 8, offset: 632)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "src_zone", scope: !124, file: !125, line: 109, baseType: !86, size: 8, offset: 640)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "dest_zone", scope: !124, file: !125, line: 110, baseType: !86, size: 8, offset: 648)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16_t", file: !87, line: 128, baseType: !155)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !89, line: 32, baseType: !156)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !91, line: 55, baseType: !157)
!157 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip6_reass_helper", file: !3, line: 92, size: 96, elements: !160)
!160 = !{!161, !162, !163}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "next_pbuf", scope: !159, file: !3, line: 93, baseType: !129, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !159, file: !3, line: 94, baseType: !95, size: 16, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !159, file: !3, line: 95, baseType: !95, size: 16, offset: 80)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !165, line: 40, baseType: !166)
!165 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !167, line: 129, baseType: !168)
!167 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!168 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pbuf_custom_ref", file: !125, line: 127, size: 320, elements: !171)
!171 = !{!172, !181}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "pc", scope: !170, file: !125, line: 129, baseType: !173, size: 256)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pbuf_custom", file: !40, line: 242, size: 256, elements: !174)
!174 = !{!175, !176}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "pbuf", scope: !173, file: !40, line: 244, baseType: !130, size: 192)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "custom_free_function", scope: !173, file: !40, line: 246, baseType: !177, size: 64, offset: 192)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "pbuf_free_custom_fn", file: !40, line: 239, baseType: !178)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DISubroutineType(types: !180)
!180 = !{null, !129}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "original", scope: !170, file: !125, line: 131, baseType: !129, size: 64, offset: 256)
!182 = !{!183, !0, !309, !311, !335}
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(name: "identification", scope: !185, file: !3, line: 731, type: !100, isLocal: true, isDefinition: true)
!185 = distinct !DISubprogram(name: "ip6_frag", scope: !3, file: !3, line: 720, type: !186, isLocal: false, isDefinition: true, scopeLine: 721, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !287)
!186 = !DISubroutineType(types: !187)
!187 = !{!188, !129, !193, !252}
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "err_t", file: !54, line: 96, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8_t", file: !87, line: 126, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !89, line: 20, baseType: !191)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !91, line: 41, baseType: !192)
!192 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netif", file: !35, line: 260, size: 2240, elements: !195)
!195 = !{!196, !197, !219, !220, !221, !225, !227, !229, !230, !235, !242, !247, !254, !259, !260, !261, !265, !266, !267, !268, !272, !273, !274, !279, !280, !281, !282}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !194, file: !35, line: 263, baseType: !193, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "ip_addr", scope: !194, file: !35, line: 268, baseType: !198, size: 192, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_addr_t", file: !199, line: 76, baseType: !200)
!199 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip_addr.h", directory: "/root/.unikraft/apps/redis/build")
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_addr", file: !199, line: 69, size: 192, elements: !201)
!201 = !{!202, !218}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "u_addr", scope: !200, file: !199, line: 73, baseType: !203, size: 160)
!203 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !200, file: !199, line: 70, size: 160, elements: !204)
!204 = !{!205, !212}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "ip6", scope: !203, file: !199, line: 71, baseType: !206, size: 160)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip6_addr_t", file: !207, line: 67, baseType: !208)
!207 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip6_addr.h", directory: "/root/.unikraft/apps/redis/build")
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip6_addr", file: !207, line: 59, size: 160, elements: !209)
!209 = !{!210, !211}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !208, file: !207, line: 60, baseType: !116, size: 128)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "zone", scope: !208, file: !207, line: 62, baseType: !86, size: 8, offset: 128)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "ip4", scope: !203, file: !199, line: 72, baseType: !213, size: 32)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip4_addr_t", file: !214, line: 57, baseType: !215)
!214 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip4_addr.h", directory: "/root/.unikraft/apps/redis/build")
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip4_addr", file: !214, line: 51, size: 32, elements: !216)
!216 = !{!217}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !215, file: !214, line: 52, baseType: !100, size: 32)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !200, file: !199, line: 75, baseType: !86, size: 8, offset: 160)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "netmask", scope: !194, file: !35, line: 269, baseType: !198, size: 192, offset: 256)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "gw", scope: !194, file: !35, line: 270, baseType: !198, size: 192, offset: 448)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr", scope: !194, file: !35, line: 274, baseType: !222, size: 576, offset: 640)
!222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 576, elements: !223)
!223 = !{!224}
!224 = !DISubrange(count: 3)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_state", scope: !194, file: !35, line: 277, baseType: !226, size: 24, offset: 1216)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 24, elements: !223)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_valid_life", scope: !194, file: !35, line: 282, baseType: !228, size: 96, offset: 1248)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 96, elements: !223)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_pref_life", scope: !194, file: !35, line: 283, baseType: !228, size: 96, offset: 1344)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !194, file: !35, line: 288, baseType: !231, size: 64, offset: 1472)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_input_fn", file: !35, line: 178, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!188, !129, !193}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !194, file: !35, line: 294, baseType: !236, size: 64, offset: 1536)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_output_fn", file: !35, line: 189, baseType: !237)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DISubroutineType(types: !239)
!239 = !{!188, !193, !129, !240}
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !213)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "linkoutput", scope: !194, file: !35, line: 299, baseType: !243, size: 64, offset: 1600)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_linkoutput_fn", file: !35, line: 212, baseType: !244)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{!188, !193, !129}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "output_ip6", scope: !194, file: !35, line: 305, baseType: !248, size: 64, offset: 1664)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_output_ip6_fn", file: !35, line: 202, baseType: !249)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DISubroutineType(types: !251)
!251 = !{!188, !193, !129, !252}
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !206)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "status_callback", scope: !194, file: !35, line: 310, baseType: !255, size: 64, offset: 1728)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_status_callback_fn", file: !35, line: 214, baseType: !256)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DISubroutineType(types: !258)
!258 = !{null, !193}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "remove_callback", scope: !194, file: !35, line: 319, baseType: !255, size: 64, offset: 1792)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !194, file: !35, line: 323, baseType: !80, size: 64, offset: 1856)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !194, file: !35, line: 325, baseType: !262, size: 64, offset: 1920)
!262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 64, elements: !263)
!263 = !{!264}
!264 = !DISubrange(count: 1)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "chksum_flags", scope: !194, file: !35, line: 332, baseType: !95, size: 16, offset: 1984)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !194, file: !35, line: 335, baseType: !95, size: 16, offset: 2000)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "mtu6", scope: !194, file: !35, line: 338, baseType: !95, size: 16, offset: 2016)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "hwaddr", scope: !194, file: !35, line: 341, baseType: !269, size: 48, offset: 2032)
!269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 48, elements: !270)
!270 = !{!271}
!271 = !DISubrange(count: 6)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "hwaddr_len", scope: !194, file: !35, line: 343, baseType: !86, size: 8, offset: 2080)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !194, file: !35, line: 345, baseType: !86, size: 8, offset: 2088)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !194, file: !35, line: 347, baseType: !275, size: 16, offset: 2096)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 16, elements: !277)
!276 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!277 = !{!278}
!278 = !DISubrange(count: 2)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !194, file: !35, line: 350, baseType: !86, size: 8, offset: 2112)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_autoconfig_enabled", scope: !194, file: !35, line: 353, baseType: !86, size: 8, offset: 2120)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "rs_count", scope: !194, file: !35, line: 357, baseType: !86, size: 8, offset: 2128)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "mld_mac_filter", scope: !194, file: !35, line: 377, baseType: !283, size: 64, offset: 2176)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_mld_mac_filter_fn", file: !35, line: 222, baseType: !284)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DISubroutineType(types: !286)
!286 = !{!188, !193, !252, !34}
!287 = !{!288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !302, !303, !304, !305, !306}
!288 = !DILocalVariable(name: "p", arg: 1, scope: !185, file: !3, line: 720, type: !129)
!289 = !DILocalVariable(name: "netif", arg: 2, scope: !185, file: !3, line: 720, type: !193)
!290 = !DILocalVariable(name: "dest", arg: 3, scope: !185, file: !3, line: 720, type: !252)
!291 = !DILocalVariable(name: "original_ip6hdr", scope: !185, file: !3, line: 722, type: !141)
!292 = !DILocalVariable(name: "ip6hdr", scope: !185, file: !3, line: 723, type: !141)
!293 = !DILocalVariable(name: "frag_hdr", scope: !185, file: !3, line: 724, type: !81)
!294 = !DILocalVariable(name: "rambuf", scope: !185, file: !3, line: 725, type: !129)
!295 = !DILocalVariable(name: "newpbuf", scope: !185, file: !3, line: 727, type: !129)
!296 = !DILocalVariable(name: "newpbuflen", scope: !185, file: !3, line: 728, type: !95)
!297 = !DILocalVariable(name: "left_to_copy", scope: !185, file: !3, line: 729, type: !95)
!298 = !DILocalVariable(name: "left", scope: !185, file: !3, line: 732, type: !95)
!299 = !DILocalVariable(name: "cop", scope: !185, file: !3, line: 732, type: !95)
!300 = !DILocalVariable(name: "mtu", scope: !185, file: !3, line: 733, type: !301)
!301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!302 = !DILocalVariable(name: "nfb", scope: !185, file: !3, line: 734, type: !301)
!303 = !DILocalVariable(name: "fragment_offset", scope: !185, file: !3, line: 735, type: !95)
!304 = !DILocalVariable(name: "last", scope: !185, file: !3, line: 736, type: !95)
!305 = !DILocalVariable(name: "poff", scope: !185, file: !3, line: 737, type: !95)
!306 = !DILocalVariable(name: "pcr", scope: !307, file: !3, line: 796, type: !169)
!307 = distinct !DILexicalBlock(scope: !308, file: !3, line: 795, column: 26)
!308 = distinct !DILexicalBlock(scope: !185, file: !3, line: 747, column: 16)
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(name: "ip6_reass_pbufcount", scope: !2, file: !3, line: 104, type: !95, isLocal: true, isDefinition: true)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(name: "__str", scope: !313, file: !314, line: 198, type: !332, isLocal: true, isDefinition: true)
!313 = distinct !DISubprogram(name: "uk_pr_crit", scope: !314, file: !314, line: 194, type: !315, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !319)
!314 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukdebug/include/uk/print.h", directory: "/root/.unikraft/apps/redis/build")
!315 = !DISubroutineType(types: !316)
!316 = !{null, !317, null}
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !276)
!319 = !{!320, !321}
!320 = !DILocalVariable(name: "fmt", arg: 1, scope: !313, file: !314, line: 194, type: !317)
!321 = !DILocalVariable(name: "argp", scope: !313, file: !314, line: 196, type: !322)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !323, line: 32, baseType: !324)
!323 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 196, baseType: !325)
!325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 192, elements: !263)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 196, size: 192, elements: !327)
!327 = !{!328, !329, !330, !331}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !326, file: !3, line: 196, baseType: !7, size: 32)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !326, file: !3, line: 196, baseType: !7, size: 32, offset: 32)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !326, file: !3, line: 196, baseType: !80, size: 64, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !326, file: !3, line: 196, baseType: !80, size: 64, offset: 128)
!332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 64, elements: !333)
!333 = !{!334}
!334 = !DISubrange(count: 8)
!335 = !DIGlobalVariableExpression(var: !336, expr: !DIExpression())
!336 = distinct !DIGlobalVariable(name: "__str", scope: !313, file: !314, line: 198, type: !337, isLocal: true, isDefinition: true)
!337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 88, elements: !338)
!338 = !{!339}
!339 = !DISubrange(count: 11)
!340 = !{i32 2, !"Dwarf Version", i32 4}
!341 = !{i32 2, !"Debug Info Version", i32 3}
!342 = !{i32 1, !"wchar_size", i32 4}
!343 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!344 = distinct !DISubprogram(name: "ip6_reass_tmr", scope: !3, file: !3, line: 113, type: !345, isLocal: false, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !347)
!345 = !DISubroutineType(types: !346)
!346 = !{null}
!347 = !{!348, !349}
!348 = !DILocalVariable(name: "r", scope: !344, file: !3, line: 115, type: !123)
!349 = !DILocalVariable(name: "tmp", scope: !344, file: !3, line: 115, type: !123)
!350 = !DILocation(line: 122, column: 7, scope: !344)
!351 = !{!352, !352, i64 0}
!352 = !{!"any pointer", !353, i64 0}
!353 = !{!"omnipotent char", !354, i64 0}
!354 = !{!"Simple C/C++ TBAA"}
!355 = !DILocation(line: 115, column: 25, scope: !344)
!356 = !DILocation(line: 123, column: 12, scope: !344)
!357 = !DILocation(line: 123, column: 3, scope: !344)
!358 = !DILocation(line: 126, column: 12, scope: !359)
!359 = distinct !DILexicalBlock(scope: !360, file: !3, line: 126, column: 9)
!360 = distinct !DILexicalBlock(scope: !344, file: !3, line: 123, column: 21)
!361 = !{!362, !353, i64 79}
!362 = !{!"ip6_reassdata", !352, i64 0, !352, i64 8, !352, i64 16, !363, i64 24, !363, i64 40, !353, i64 56, !364, i64 72, !365, i64 76, !353, i64 78, !353, i64 79, !353, i64 80, !353, i64 81}
!363 = !{!"ip6_addr_packed", !353, i64 0}
!364 = !{!"int", !353, i64 0}
!365 = !{!"short", !353, i64 0}
!366 = !DILocation(line: 126, column: 18, scope: !359)
!367 = !DILocation(line: 126, column: 9, scope: !360)
!368 = !DILocation(line: 127, column: 15, scope: !369)
!369 = distinct !DILexicalBlock(scope: !359, file: !3, line: 126, column: 23)
!370 = !DILocation(line: 128, column: 14, scope: !369)
!371 = !{!362, !352, i64 0}
!372 = !DILocation(line: 129, column: 5, scope: !369)
!373 = !DILocation(line: 115, column: 29, scope: !344)
!374 = !DILocation(line: 133, column: 14, scope: !375)
!375 = distinct !DILexicalBlock(scope: !359, file: !3, line: 129, column: 12)
!376 = !DILocation(line: 135, column: 7, scope: !375)
!377 = !DILocation(line: 0, scope: !375)
!378 = distinct !{!378, !357, !379}
!379 = !DILocation(line: 137, column: 4, scope: !344)
!380 = !DILocation(line: 138, column: 1, scope: !344)
!381 = distinct !DISubprogram(name: "ip6_reass_free_complete_datagram", scope: !3, file: !3, line: 148, type: !382, isLocal: true, isDefinition: true, scopeLine: 149, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !384)
!382 = !DISubroutineType(types: !383)
!383 = !{null, !123}
!384 = !{!385, !386, !387, !388, !389, !390, !391, !396, !397}
!385 = !DILocalVariable(name: "ipr", arg: 1, scope: !381, file: !3, line: 148, type: !123)
!386 = !DILocalVariable(name: "prev", scope: !381, file: !3, line: 150, type: !123)
!387 = !DILocalVariable(name: "pbufs_freed", scope: !381, file: !3, line: 151, type: !95)
!388 = !DILocalVariable(name: "clen", scope: !381, file: !3, line: 152, type: !95)
!389 = !DILocalVariable(name: "p", scope: !381, file: !3, line: 153, type: !129)
!390 = !DILocalVariable(name: "iprh", scope: !381, file: !3, line: 154, type: !158)
!391 = !DILocalVariable(name: "src_addr", scope: !392, file: !3, line: 174, type: !206)
!392 = distinct !DILexicalBlock(scope: !393, file: !3, line: 171, column: 10)
!393 = distinct !DILexicalBlock(scope: !394, file: !3, line: 168, column: 9)
!394 = distinct !DILexicalBlock(scope: !395, file: !3, line: 158, column: 25)
!395 = distinct !DILexicalBlock(scope: !381, file: !3, line: 158, column: 7)
!396 = !DILocalVariable(name: "dest_addr", scope: !392, file: !3, line: 174, type: !206)
!397 = !DILocalVariable(name: "pcur", scope: !398, file: !3, line: 193, type: !129)
!398 = distinct !DILexicalBlock(scope: !381, file: !3, line: 192, column: 21)
!399 = !DILocation(line: 148, column: 56, scope: !381)
!400 = !DILocation(line: 151, column: 9, scope: !381)
!401 = !DILocation(line: 157, column: 42, scope: !381)
!402 = !{!362, !352, i64 8}
!403 = !DILocation(line: 157, column: 45, scope: !381)
!404 = !{!405, !352, i64 8}
!405 = !{!"pbuf", !352, i64 0, !352, i64 8, !365, i64 16, !365, i64 18, !353, i64 20, !353, i64 21, !353, i64 22, !353, i64 23}
!406 = !DILocation(line: 154, column: 28, scope: !381)
!407 = !DILocation(line: 158, column: 13, scope: !395)
!408 = !{!409, !365, i64 8}
!409 = !{!"ip6_reass_helper", !352, i64 0, !365, i64 8, !365, i64 10}
!410 = !DILocation(line: 158, column: 19, scope: !395)
!411 = !DILocation(line: 158, column: 7, scope: !381)
!412 = !DILocation(line: 153, column: 16, scope: !381)
!413 = !DILocation(line: 162, column: 20, scope: !394)
!414 = !{!409, !352, i64 0}
!415 = !DILocation(line: 162, column: 12, scope: !394)
!416 = !DILocation(line: 165, column: 5, scope: !394)
!417 = !DILocation(line: 168, column: 48, scope: !393)
!418 = !DILocation(line: 168, column: 70, scope: !393)
!419 = !{!362, !352, i64 16}
!420 = !DILocation(line: 168, column: 56, scope: !393)
!421 = !DILocation(line: 168, column: 30, scope: !393)
!422 = !DILocation(line: 168, column: 9, scope: !393)
!423 = !DILocation(line: 168, column: 9, scope: !394)
!424 = !DILocation(line: 169, column: 7, scope: !425)
!425 = distinct !DILexicalBlock(scope: !426, file: !3, line: 169, column: 7)
!426 = distinct !DILexicalBlock(scope: !427, file: !3, line: 169, column: 7)
!427 = distinct !DILexicalBlock(scope: !428, file: !3, line: 169, column: 7)
!428 = distinct !DILexicalBlock(scope: !429, file: !3, line: 169, column: 7)
!429 = distinct !DILexicalBlock(scope: !393, file: !3, line: 168, column: 79)
!430 = !DILocation(line: 169, column: 7, scope: !431)
!431 = distinct !DILexicalBlock(scope: !432, file: !3, line: 169, column: 7)
!432 = distinct !DILexicalBlock(scope: !433, file: !3, line: 169, column: 7)
!433 = distinct !DILexicalBlock(scope: !425, file: !3, line: 169, column: 7)
!434 = !DILocation(line: 174, column: 7, scope: !392)
!435 = !DILocation(line: 175, column: 7, scope: !436)
!436 = distinct !DILexicalBlock(scope: !392, file: !3, line: 175, column: 7)
!437 = !{!364, !364, i64 0}
!438 = !DILocation(line: 176, column: 7, scope: !392)
!439 = !{!362, !353, i64 80}
!440 = !{!441, !353, i64 16}
!441 = !{!"ip6_addr", !353, i64 0, !353, i64 16}
!442 = !DILocation(line: 177, column: 7, scope: !443)
!443 = distinct !DILexicalBlock(scope: !392, file: !3, line: 177, column: 7)
!444 = !DILocation(line: 178, column: 7, scope: !392)
!445 = !{!362, !353, i64 81}
!446 = !DILocation(line: 174, column: 18, scope: !392)
!447 = !DILocation(line: 174, column: 28, scope: !392)
!448 = !DILocation(line: 180, column: 7, scope: !392)
!449 = !DILocation(line: 181, column: 5, scope: !393)
!450 = !DILocation(line: 182, column: 12, scope: !394)
!451 = !DILocation(line: 152, column: 9, scope: !381)
!452 = !DILocation(line: 185, column: 5, scope: !394)
!453 = !DILocation(line: 191, column: 12, scope: !381)
!454 = !DILocation(line: 186, column: 3, scope: !394)
!455 = !DILocation(line: 0, scope: !381)
!456 = !DILocation(line: 192, column: 12, scope: !381)
!457 = !DILocation(line: 192, column: 3, scope: !381)
!458 = !DILocation(line: 194, column: 42, scope: !398)
!459 = !DILocation(line: 193, column: 18, scope: !398)
!460 = !DILocation(line: 197, column: 15, scope: !398)
!461 = !DILocation(line: 198, column: 12, scope: !398)
!462 = !DILocation(line: 199, column: 5, scope: !463)
!463 = distinct !DILexicalBlock(scope: !464, file: !3, line: 199, column: 5)
!464 = distinct !DILexicalBlock(scope: !398, file: !3, line: 199, column: 5)
!465 = !DILocation(line: 199, column: 5, scope: !464)
!466 = !DILocation(line: 199, column: 5, scope: !467)
!467 = distinct !DILexicalBlock(scope: !468, file: !3, line: 199, column: 5)
!468 = distinct !DILexicalBlock(scope: !463, file: !3, line: 199, column: 5)
!469 = !DILocation(line: 199, column: 5, scope: !470)
!470 = distinct !DILexicalBlock(scope: !471, file: !3, line: 199, column: 5)
!471 = distinct !DILexicalBlock(scope: !472, file: !3, line: 199, column: 5)
!472 = distinct !DILexicalBlock(scope: !467, file: !3, line: 199, column: 5)
!473 = !DILocation(line: 200, column: 19, scope: !398)
!474 = !DILocation(line: 201, column: 5, scope: !398)
!475 = distinct !{!475, !457, !476}
!476 = !DILocation(line: 202, column: 3, scope: !381)
!477 = !DILocation(line: 205, column: 14, scope: !478)
!478 = distinct !DILexicalBlock(scope: !381, file: !3, line: 205, column: 7)
!479 = !DILocation(line: 0, scope: !398)
!480 = !DILocation(line: 205, column: 11, scope: !478)
!481 = !DILocation(line: 205, column: 7, scope: !381)
!482 = !DILocation(line: 206, column: 27, scope: !483)
!483 = distinct !DILexicalBlock(scope: !478, file: !3, line: 205, column: 30)
!484 = !DILocation(line: 206, column: 20, scope: !483)
!485 = !DILocation(line: 207, column: 3, scope: !483)
!486 = !DILocation(line: 0, scope: !487)
!487 = distinct !DILexicalBlock(scope: !488, file: !3, line: 209, column: 26)
!488 = distinct !DILexicalBlock(scope: !478, file: !3, line: 207, column: 10)
!489 = !DILocation(line: 150, column: 25, scope: !381)
!490 = !DILocation(line: 209, column: 17, scope: !488)
!491 = !DILocation(line: 209, column: 5, scope: !488)
!492 = !DILocation(line: 210, column: 17, scope: !493)
!493 = distinct !DILexicalBlock(scope: !487, file: !3, line: 210, column: 11)
!494 = !DILocation(line: 210, column: 22, scope: !493)
!495 = !DILocation(line: 210, column: 11, scope: !487)
!496 = distinct !{!496, !491, !497}
!497 = !DILocation(line: 214, column: 5, scope: !488)
!498 = !DILocation(line: 216, column: 25, scope: !499)
!499 = distinct !DILexicalBlock(scope: !500, file: !3, line: 215, column: 23)
!500 = distinct !DILexicalBlock(scope: !488, file: !3, line: 215, column: 9)
!501 = !DILocation(line: 216, column: 18, scope: !499)
!502 = !DILocation(line: 217, column: 5, scope: !499)
!503 = !DILocation(line: 219, column: 33, scope: !381)
!504 = !DILocation(line: 219, column: 3, scope: !381)
!505 = !DILocation(line: 222, column: 3, scope: !506)
!506 = distinct !DILexicalBlock(scope: !507, file: !3, line: 222, column: 3)
!507 = distinct !DILexicalBlock(scope: !381, file: !3, line: 222, column: 3)
!508 = !{!365, !365, i64 0}
!509 = !DILocation(line: 222, column: 3, scope: !507)
!510 = !DILocation(line: 222, column: 3, scope: !511)
!511 = distinct !DILexicalBlock(scope: !512, file: !3, line: 222, column: 3)
!512 = distinct !DILexicalBlock(scope: !506, file: !3, line: 222, column: 3)
!513 = !DILocation(line: 222, column: 3, scope: !514)
!514 = distinct !DILexicalBlock(scope: !515, file: !3, line: 222, column: 3)
!515 = distinct !DILexicalBlock(scope: !516, file: !3, line: 222, column: 3)
!516 = distinct !DILexicalBlock(scope: !511, file: !3, line: 222, column: 3)
!517 = !DILocation(line: 223, column: 53, scope: !381)
!518 = !DILocation(line: 223, column: 23, scope: !381)
!519 = !DILocation(line: 224, column: 1, scope: !381)
!520 = distinct !DISubprogram(name: "ip6_reass", scope: !3, file: !3, line: 272, type: !521, isLocal: false, isDefinition: true, scopeLine: 273, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !523)
!521 = !DISubroutineType(types: !522)
!522 = !{!129, !129}
!523 = !{!524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !539, !540, !541, !542, !543, !546, !549, !555, !558}
!524 = !DILocalVariable(name: "p", arg: 1, scope: !520, file: !3, line: 272, type: !129)
!525 = !DILocalVariable(name: "ipr", scope: !520, file: !3, line: 274, type: !123)
!526 = !DILocalVariable(name: "ipr_prev", scope: !520, file: !3, line: 274, type: !123)
!527 = !DILocalVariable(name: "iprh", scope: !520, file: !3, line: 275, type: !158)
!528 = !DILocalVariable(name: "iprh_tmp", scope: !520, file: !3, line: 275, type: !158)
!529 = !DILocalVariable(name: "iprh_prev", scope: !520, file: !3, line: 275, type: !158)
!530 = !DILocalVariable(name: "frag_hdr", scope: !520, file: !3, line: 276, type: !81)
!531 = !DILocalVariable(name: "offset", scope: !520, file: !3, line: 277, type: !95)
!532 = !DILocalVariable(name: "len", scope: !520, file: !3, line: 277, type: !95)
!533 = !DILocalVariable(name: "start", scope: !520, file: !3, line: 277, type: !95)
!534 = !DILocalVariable(name: "end", scope: !520, file: !3, line: 277, type: !95)
!535 = !DILocalVariable(name: "hdrdiff", scope: !520, file: !3, line: 278, type: !536)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !537, line: 49, baseType: !538)
!537 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!538 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!539 = !DILocalVariable(name: "clen", scope: !520, file: !3, line: 279, type: !95)
!540 = !DILocalVariable(name: "valid", scope: !520, file: !3, line: 280, type: !86)
!541 = !DILocalVariable(name: "q", scope: !520, file: !3, line: 281, type: !129)
!542 = !DILocalVariable(name: "next_pbuf", scope: !520, file: !3, line: 281, type: !129)
!543 = !DILocalVariable(name: "hdrerr", scope: !544, file: !3, line: 413, type: !86)
!544 = distinct !DILexicalBlock(scope: !545, file: !3, line: 410, column: 30)
!545 = distinct !DILexicalBlock(scope: !520, file: !3, line: 410, column: 7)
!546 = !DILocalVariable(name: "iphdr_ptr", scope: !547, file: !3, line: 554, type: !141)
!547 = distinct !DILexicalBlock(scope: !548, file: !3, line: 552, column: 14)
!548 = distinct !DILexicalBlock(scope: !520, file: !3, line: 552, column: 7)
!549 = !DILocalVariable(name: "hdrerr", scope: !550, file: !3, line: 569, type: !86)
!550 = distinct !DILexicalBlock(scope: !551, file: !3, line: 567, column: 36)
!551 = distinct !DILexicalBlock(scope: !552, file: !3, line: 567, column: 13)
!552 = distinct !DILexicalBlock(scope: !553, file: !3, line: 560, column: 30)
!553 = distinct !DILexicalBlock(scope: !554, file: !3, line: 560, column: 11)
!554 = distinct !DILexicalBlock(scope: !547, file: !3, line: 558, column: 26)
!555 = !DILocalVariable(name: "hdrerr", scope: !556, file: !3, line: 588, type: !86)
!556 = distinct !DILexicalBlock(scope: !557, file: !3, line: 587, column: 32)
!557 = distinct !DILexicalBlock(scope: !547, file: !3, line: 587, column: 9)
!558 = !DILocalVariable(name: "ptr", scope: !559, file: !3, line: 630, type: !120)
!559 = distinct !DILexicalBlock(scope: !560, file: !3, line: 629, column: 12)
!560 = distinct !DILexicalBlock(scope: !547, file: !3, line: 627, column: 9)
!561 = !DILocation(line: 272, column: 24, scope: !520)
!562 = !DILocation(line: 275, column: 46, scope: !520)
!563 = !DILocation(line: 280, column: 8, scope: !520)
!564 = !DILocation(line: 283, column: 3, scope: !520)
!565 = !{!566, !365, i64 236}
!566 = !{!"stats_", !567, i64 0, !567, i64 24, !567, i64 48, !567, i64 72, !567, i64 96, !567, i64 120, !567, i64 144, !568, i64 168, !567, i64 186, !567, i64 210, !567, i64 234, !570, i64 258, !567, i64 286}
!567 = !{!"stats_proto", !365, i64 0, !365, i64 2, !365, i64 4, !365, i64 6, !365, i64 8, !365, i64 10, !365, i64 12, !365, i64 14, !365, i64 16, !365, i64 18, !365, i64 20, !365, i64 22}
!568 = !{!"stats_sys", !569, i64 0, !569, i64 6, !569, i64 12}
!569 = !{!"stats_syselem", !365, i64 0, !365, i64 2, !365, i64 4}
!570 = !{!"stats_igmp", !365, i64 0, !365, i64 2, !365, i64 4, !365, i64 6, !365, i64 8, !365, i64 10, !365, i64 12, !365, i64 14, !365, i64 16, !365, i64 18, !365, i64 20, !365, i64 22, !365, i64 24, !365, i64 26}
!571 = !DILocation(line: 286, column: 3, scope: !572)
!572 = distinct !DILexicalBlock(scope: !573, file: !3, line: 286, column: 3)
!573 = distinct !DILexicalBlock(scope: !520, file: !3, line: 286, column: 3)
!574 = !{!405, !365, i64 18}
!575 = !DILocation(line: 286, column: 3, scope: !573)
!576 = !DILocation(line: 286, column: 3, scope: !577)
!577 = distinct !DILexicalBlock(scope: !578, file: !3, line: 286, column: 3)
!578 = distinct !DILexicalBlock(scope: !572, file: !3, line: 286, column: 3)
!579 = !DILocation(line: 286, column: 3, scope: !580)
!580 = distinct !DILexicalBlock(scope: !581, file: !3, line: 286, column: 3)
!581 = distinct !DILexicalBlock(scope: !582, file: !3, line: 286, column: 3)
!582 = distinct !DILexicalBlock(scope: !577, file: !3, line: 286, column: 3)
!583 = !DILocation(line: 289, column: 41, scope: !520)
!584 = !DILocation(line: 276, column: 24, scope: !520)
!585 = !DILocation(line: 291, column: 10, scope: !520)
!586 = !DILocation(line: 279, column: 9, scope: !520)
!587 = !DILocation(line: 293, column: 12, scope: !520)
!588 = !{!589, !365, i64 2}
!589 = !{!"ip6_frag_hdr", !353, i64 0, !353, i64 1, !365, i64 2, !364, i64 4}
!590 = !DILocation(line: 277, column: 9, scope: !520)
!591 = !DILocation(line: 298, column: 9, scope: !520)
!592 = !{!593, !352, i64 24}
!593 = !{!"ip_globals", !352, i64 0, !352, i64 8, !352, i64 16, !352, i64 24, !365, i64 32, !594, i64 36, !594, i64 60}
!594 = !{!"ip_addr", !353, i64 0, !353, i64 20}
!595 = !{!596, !365, i64 4}
!596 = !{!"ip6_hdr", !364, i64 0, !365, i64 4, !353, i64 6, !353, i64 7, !363, i64 8, !363, i64 24}
!597 = !DILocation(line: 277, column: 17, scope: !520)
!598 = !DILocation(line: 299, column: 23, scope: !520)
!599 = !DILocation(line: 299, column: 46, scope: !520)
!600 = !DILocation(line: 299, column: 31, scope: !520)
!601 = !DILocation(line: 278, column: 13, scope: !520)
!602 = !DILocation(line: 300, column: 3, scope: !603)
!603 = distinct !DILexicalBlock(scope: !604, file: !3, line: 300, column: 3)
!604 = distinct !DILexicalBlock(scope: !520, file: !3, line: 300, column: 3)
!605 = !DILocation(line: 300, column: 3, scope: !604)
!606 = !DILocation(line: 300, column: 3, scope: !607)
!607 = distinct !DILexicalBlock(scope: !608, file: !3, line: 300, column: 3)
!608 = distinct !DILexicalBlock(scope: !603, file: !3, line: 300, column: 3)
!609 = !DILocation(line: 300, column: 3, scope: !610)
!610 = distinct !DILexicalBlock(scope: !611, file: !3, line: 300, column: 3)
!611 = distinct !DILexicalBlock(scope: !612, file: !3, line: 300, column: 3)
!612 = distinct !DILexicalBlock(scope: !607, file: !3, line: 300, column: 3)
!613 = !DILocation(line: 301, column: 3, scope: !614)
!614 = distinct !DILexicalBlock(scope: !615, file: !3, line: 301, column: 3)
!615 = distinct !DILexicalBlock(scope: !520, file: !3, line: 301, column: 3)
!616 = !DILocation(line: 301, column: 3, scope: !615)
!617 = !DILocation(line: 301, column: 3, scope: !618)
!618 = distinct !DILexicalBlock(scope: !619, file: !3, line: 301, column: 3)
!619 = distinct !DILexicalBlock(scope: !614, file: !3, line: 301, column: 3)
!620 = !DILocation(line: 301, column: 3, scope: !621)
!621 = distinct !DILexicalBlock(scope: !622, file: !3, line: 301, column: 3)
!622 = distinct !DILexicalBlock(scope: !623, file: !3, line: 301, column: 3)
!623 = distinct !DILexicalBlock(scope: !618, file: !3, line: 301, column: 3)
!624 = !DILocation(line: 303, column: 11, scope: !520)
!625 = !DILocation(line: 304, column: 17, scope: !626)
!626 = distinct !DILexicalBlock(scope: !520, file: !3, line: 304, column: 7)
!627 = !DILocation(line: 304, column: 15, scope: !626)
!628 = !DILocation(line: 304, column: 7, scope: !520)
!629 = !DILocation(line: 308, column: 9, scope: !520)
!630 = !DILocation(line: 309, column: 19, scope: !520)
!631 = !DILocation(line: 277, column: 22, scope: !520)
!632 = !DILocation(line: 310, column: 23, scope: !633)
!633 = distinct !DILexicalBlock(scope: !520, file: !3, line: 310, column: 7)
!634 = !DILocation(line: 310, column: 13, scope: !633)
!635 = !DILocation(line: 310, column: 7, scope: !520)
!636 = !DILocation(line: 0, scope: !637)
!637 = distinct !DILexicalBlock(scope: !638, file: !3, line: 318, column: 3)
!638 = distinct !DILexicalBlock(scope: !520, file: !3, line: 318, column: 3)
!639 = !DILocation(line: 274, column: 25, scope: !520)
!640 = !DILocation(line: 274, column: 31, scope: !520)
!641 = !DILocation(line: 318, column: 3, scope: !638)
!642 = !{!589, !364, i64 4}
!643 = !DILocation(line: 322, column: 44, scope: !644)
!644 = distinct !DILexicalBlock(scope: !645, file: !3, line: 322, column: 9)
!645 = distinct !DILexicalBlock(scope: !637, file: !3, line: 318, column: 77)
!646 = !{!362, !364, i64 72}
!647 = !DILocation(line: 322, column: 36, scope: !644)
!648 = !DILocation(line: 322, column: 60, scope: !644)
!649 = !DILocation(line: 323, column: 9, scope: !644)
!650 = !DILocation(line: 323, column: 91, scope: !644)
!651 = !DILocation(line: 324, column: 9, scope: !644)
!652 = !DILocation(line: 322, column: 9, scope: !645)
!653 = !DILocation(line: 325, column: 7, scope: !654)
!654 = distinct !DILexicalBlock(scope: !644, file: !3, line: 324, column: 95)
!655 = !{!566, !365, i64 256}
!656 = !DILocation(line: 318, column: 71, scope: !637)
!657 = distinct !{!657, !641, !658}
!658 = !DILocation(line: 329, column: 3, scope: !638)
!659 = !DILocation(line: 0, scope: !645)
!660 = !DILocation(line: 333, column: 35, scope: !661)
!661 = distinct !DILexicalBlock(scope: !662, file: !3, line: 331, column: 20)
!662 = distinct !DILexicalBlock(scope: !520, file: !3, line: 331, column: 7)
!663 = !DILocation(line: 333, column: 11, scope: !661)
!664 = !DILocation(line: 334, column: 13, scope: !665)
!665 = distinct !DILexicalBlock(scope: !661, file: !3, line: 334, column: 9)
!666 = !DILocation(line: 334, column: 9, scope: !661)
!667 = !DILocation(line: 337, column: 45, scope: !668)
!668 = distinct !DILexicalBlock(scope: !665, file: !3, line: 334, column: 22)
!669 = !DILocalVariable(name: "ipr", arg: 1, scope: !670, file: !3, line: 236, type: !123)
!670 = distinct !DISubprogram(name: "ip6_reass_remove_oldest_datagram", scope: !3, file: !3, line: 236, type: !671, isLocal: true, isDefinition: true, scopeLine: 237, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !673)
!671 = !DISubroutineType(types: !672)
!672 = !{null, !123, !55}
!673 = !{!669, !674, !675, !676}
!674 = !DILocalVariable(name: "pbufs_needed", arg: 2, scope: !670, file: !3, line: 236, type: !55)
!675 = !DILocalVariable(name: "r", scope: !670, file: !3, line: 238, type: !123)
!676 = !DILocalVariable(name: "oldest", scope: !670, file: !3, line: 238, type: !123)
!677 = !DILocation(line: 236, column: 56, scope: !670, inlinedAt: !678)
!678 = distinct !DILocation(line: 337, column: 7, scope: !668)
!679 = !DILocation(line: 236, column: 65, scope: !670, inlinedAt: !678)
!680 = !DILocation(line: 243, column: 18, scope: !681, inlinedAt: !678)
!681 = distinct !DILexicalBlock(scope: !670, file: !3, line: 242, column: 6)
!682 = !DILocation(line: 242, column: 3, scope: !670, inlinedAt: !678)
!683 = !DILocation(line: 238, column: 29, scope: !670, inlinedAt: !678)
!684 = !DILocation(line: 238, column: 25, scope: !670, inlinedAt: !678)
!685 = !DILocation(line: 244, column: 14, scope: !681, inlinedAt: !678)
!686 = !DILocation(line: 244, column: 5, scope: !681, inlinedAt: !678)
!687 = !DILocation(line: 245, column: 13, scope: !688, inlinedAt: !678)
!688 = distinct !DILexicalBlock(scope: !689, file: !3, line: 245, column: 11)
!689 = distinct !DILexicalBlock(scope: !681, file: !3, line: 244, column: 23)
!690 = !DILocation(line: 245, column: 11, scope: !689, inlinedAt: !678)
!691 = !DILocation(line: 246, column: 16, scope: !692, inlinedAt: !678)
!692 = distinct !DILexicalBlock(scope: !693, file: !3, line: 246, column: 13)
!693 = distinct !DILexicalBlock(scope: !688, file: !3, line: 245, column: 21)
!694 = !DILocation(line: 246, column: 33, scope: !692, inlinedAt: !678)
!695 = !DILocation(line: 246, column: 22, scope: !692, inlinedAt: !678)
!696 = !DILocation(line: 246, column: 13, scope: !693, inlinedAt: !678)
!697 = !DILocation(line: 0, scope: !681, inlinedAt: !678)
!698 = !DILocation(line: 251, column: 14, scope: !689, inlinedAt: !678)
!699 = distinct !{!699, !700, !701}
!700 = !DILocation(line: 244, column: 5, scope: !681)
!701 = !DILocation(line: 252, column: 5, scope: !681)
!702 = !DILocation(line: 0, scope: !703, inlinedAt: !678)
!703 = distinct !DILexicalBlock(scope: !692, file: !3, line: 246, column: 40)
!704 = !DILocation(line: 253, column: 16, scope: !705, inlinedAt: !678)
!705 = distinct !DILexicalBlock(scope: !681, file: !3, line: 253, column: 9)
!706 = !DILocation(line: 253, column: 9, scope: !681, inlinedAt: !678)
!707 = !DILocation(line: 257, column: 16, scope: !708, inlinedAt: !678)
!708 = distinct !DILexicalBlock(scope: !681, file: !3, line: 257, column: 9)
!709 = !DILocation(line: 257, column: 9, scope: !681, inlinedAt: !678)
!710 = !DILocation(line: 258, column: 7, scope: !711, inlinedAt: !678)
!711 = distinct !DILexicalBlock(scope: !708, file: !3, line: 257, column: 25)
!712 = !DILocation(line: 260, column: 76, scope: !670, inlinedAt: !678)
!713 = !DILocation(line: 259, column: 5, scope: !711, inlinedAt: !678)
!714 = !DILocation(line: 260, column: 14, scope: !670, inlinedAt: !678)
!715 = !DILocation(line: 260, column: 34, scope: !670, inlinedAt: !678)
!716 = !DILocation(line: 260, column: 50, scope: !670, inlinedAt: !678)
!717 = !DILocation(line: 260, column: 91, scope: !670, inlinedAt: !678)
!718 = !DILocation(line: 260, column: 72, scope: !670, inlinedAt: !678)
!719 = !DILocation(line: 260, column: 3, scope: !681, inlinedAt: !678)
!720 = distinct !{!720, !721, !722}
!721 = !DILocation(line: 242, column: 3, scope: !670)
!722 = !DILocation(line: 260, column: 99, scope: !670)
!723 = !DILocation(line: 261, column: 1, scope: !670, inlinedAt: !678)
!724 = !DILocation(line: 338, column: 37, scope: !668)
!725 = !DILocation(line: 338, column: 13, scope: !668)
!726 = !DILocation(line: 339, column: 15, scope: !727)
!727 = distinct !DILexicalBlock(scope: !668, file: !3, line: 339, column: 11)
!728 = !DILocation(line: 339, column: 11, scope: !668)
!729 = !DILocation(line: 341, column: 25, scope: !730)
!730 = distinct !DILexicalBlock(scope: !731, file: !3, line: 341, column: 9)
!731 = distinct !DILexicalBlock(scope: !727, file: !3, line: 339, column: 24)
!732 = !DILocation(line: 341, column: 14, scope: !730)
!733 = !DILocation(line: 0, scope: !734)
!734 = distinct !DILexicalBlock(scope: !730, file: !3, line: 341, column: 9)
!735 = !DILocation(line: 341, column: 50, scope: !734)
!736 = !DILocation(line: 341, column: 9, scope: !730)
!737 = !DILocation(line: 342, column: 25, scope: !738)
!738 = distinct !DILexicalBlock(scope: !739, file: !3, line: 342, column: 15)
!739 = distinct !DILexicalBlock(scope: !734, file: !3, line: 341, column: 86)
!740 = !DILocation(line: 342, column: 30, scope: !738)
!741 = !DILocation(line: 342, column: 15, scope: !739)
!742 = distinct !{!742, !736, !743}
!743 = !DILocation(line: 345, column: 9, scope: !730)
!744 = !DILocation(line: 0, scope: !638)
!745 = !DILocation(line: 0, scope: !661)
!746 = !DILocation(line: 354, column: 5, scope: !661)
!747 = !DILocation(line: 355, column: 10, scope: !661)
!748 = !DILocation(line: 355, column: 16, scope: !661)
!749 = !DILocation(line: 358, column: 17, scope: !661)
!750 = !DILocation(line: 358, column: 15, scope: !661)
!751 = !DILocation(line: 359, column: 20, scope: !661)
!752 = !DILocation(line: 365, column: 26, scope: !661)
!753 = !DILocation(line: 365, column: 10, scope: !661)
!754 = !DILocation(line: 365, column: 16, scope: !661)
!755 = !DILocation(line: 367, column: 5, scope: !661)
!756 = !DILocation(line: 368, column: 5, scope: !661)
!757 = !DILocation(line: 377, column: 21, scope: !661)
!758 = !{!353, !353, i64 0}
!759 = !DILocation(line: 377, column: 10, scope: !661)
!760 = !DILocation(line: 377, column: 19, scope: !661)
!761 = !DILocation(line: 378, column: 22, scope: !661)
!762 = !DILocation(line: 378, column: 10, scope: !661)
!763 = !DILocation(line: 378, column: 20, scope: !661)
!764 = !DILocation(line: 381, column: 37, scope: !661)
!765 = !DILocation(line: 381, column: 10, scope: !661)
!766 = !DILocation(line: 381, column: 25, scope: !661)
!767 = !DILocation(line: 384, column: 28, scope: !661)
!768 = !{!589, !353, i64 0}
!769 = !DILocation(line: 384, column: 10, scope: !661)
!770 = !DILocation(line: 384, column: 16, scope: !661)
!771 = !{!362, !353, i64 78}
!772 = !DILocation(line: 385, column: 3, scope: !661)
!773 = !DILocation(line: 388, column: 8, scope: !774)
!774 = distinct !DILexicalBlock(scope: !520, file: !3, line: 388, column: 7)
!775 = !DILocation(line: 388, column: 30, scope: !774)
!776 = !DILocation(line: 388, column: 28, scope: !774)
!777 = !DILocation(line: 388, column: 36, scope: !774)
!778 = !DILocation(line: 388, column: 7, scope: !520)
!779 = !DILocation(line: 236, column: 56, scope: !670, inlinedAt: !780)
!780 = distinct !DILocation(line: 390, column: 5, scope: !781)
!781 = distinct !DILexicalBlock(scope: !774, file: !3, line: 388, column: 58)
!782 = !DILocation(line: 236, column: 65, scope: !670, inlinedAt: !780)
!783 = !DILocation(line: 243, column: 18, scope: !681, inlinedAt: !780)
!784 = !DILocation(line: 242, column: 3, scope: !670, inlinedAt: !780)
!785 = !DILocation(line: 238, column: 29, scope: !670, inlinedAt: !780)
!786 = !DILocation(line: 238, column: 25, scope: !670, inlinedAt: !780)
!787 = !DILocation(line: 244, column: 14, scope: !681, inlinedAt: !780)
!788 = !DILocation(line: 244, column: 5, scope: !681, inlinedAt: !780)
!789 = !DILocation(line: 245, column: 13, scope: !688, inlinedAt: !780)
!790 = !DILocation(line: 245, column: 11, scope: !689, inlinedAt: !780)
!791 = !DILocation(line: 246, column: 16, scope: !692, inlinedAt: !780)
!792 = !DILocation(line: 246, column: 33, scope: !692, inlinedAt: !780)
!793 = !DILocation(line: 246, column: 22, scope: !692, inlinedAt: !780)
!794 = !DILocation(line: 246, column: 13, scope: !693, inlinedAt: !780)
!795 = !DILocation(line: 0, scope: !681, inlinedAt: !780)
!796 = !DILocation(line: 251, column: 14, scope: !689, inlinedAt: !780)
!797 = !DILocation(line: 0, scope: !703, inlinedAt: !780)
!798 = !DILocation(line: 253, column: 16, scope: !705, inlinedAt: !780)
!799 = !DILocation(line: 253, column: 9, scope: !681, inlinedAt: !780)
!800 = !DILocation(line: 391, column: 10, scope: !801)
!801 = distinct !DILexicalBlock(scope: !781, file: !3, line: 391, column: 9)
!802 = !DILocation(line: 391, column: 30, scope: !801)
!803 = !DILocation(line: 257, column: 16, scope: !708, inlinedAt: !780)
!804 = !DILocation(line: 257, column: 9, scope: !681, inlinedAt: !780)
!805 = !DILocation(line: 258, column: 7, scope: !711, inlinedAt: !780)
!806 = !DILocation(line: 260, column: 76, scope: !670, inlinedAt: !780)
!807 = !DILocation(line: 260, column: 14, scope: !670, inlinedAt: !780)
!808 = !DILocation(line: 259, column: 5, scope: !711, inlinedAt: !780)
!809 = !DILocation(line: 260, column: 34, scope: !670, inlinedAt: !780)
!810 = !DILocation(line: 260, column: 50, scope: !670, inlinedAt: !780)
!811 = !DILocation(line: 260, column: 91, scope: !670, inlinedAt: !780)
!812 = !DILocation(line: 260, column: 72, scope: !670, inlinedAt: !780)
!813 = !DILocation(line: 260, column: 3, scope: !681, inlinedAt: !780)
!814 = !DILocation(line: 261, column: 1, scope: !670, inlinedAt: !780)
!815 = !DILocation(line: 391, column: 38, scope: !801)
!816 = !DILocation(line: 391, column: 9, scope: !781)
!817 = !DILocation(line: 0, scope: !818)
!818 = distinct !DILexicalBlock(scope: !819, file: !3, line: 393, column: 7)
!819 = distinct !DILexicalBlock(scope: !820, file: !3, line: 393, column: 7)
!820 = distinct !DILexicalBlock(scope: !801, file: !3, line: 391, column: 61)
!821 = !DILocation(line: 393, column: 48, scope: !818)
!822 = !DILocation(line: 393, column: 7, scope: !819)
!823 = !DILocation(line: 394, column: 23, scope: !824)
!824 = distinct !DILexicalBlock(scope: !825, file: !3, line: 394, column: 13)
!825 = distinct !DILexicalBlock(scope: !818, file: !3, line: 393, column: 84)
!826 = !DILocation(line: 394, column: 28, scope: !824)
!827 = !DILocation(line: 394, column: 13, scope: !825)
!828 = distinct !{!828, !822, !829}
!829 = !DILocation(line: 397, column: 7, scope: !819)
!830 = !DILocation(line: 0, scope: !730)
!831 = !DILocation(line: 413, column: 19, scope: !544)
!832 = !DILocation(line: 413, column: 10, scope: !544)
!833 = !DILocation(line: 415, column: 5, scope: !834)
!834 = distinct !DILexicalBlock(scope: !835, file: !3, line: 415, column: 5)
!835 = distinct !DILexicalBlock(scope: !544, file: !3, line: 415, column: 5)
!836 = !DILocation(line: 415, column: 5, scope: !835)
!837 = !DILocation(line: 415, column: 5, scope: !838)
!838 = distinct !DILexicalBlock(scope: !839, file: !3, line: 415, column: 5)
!839 = distinct !DILexicalBlock(scope: !834, file: !3, line: 415, column: 5)
!840 = !DILocation(line: 415, column: 5, scope: !841)
!841 = distinct !DILexicalBlock(scope: !842, file: !3, line: 415, column: 5)
!842 = distinct !DILexicalBlock(scope: !843, file: !3, line: 415, column: 5)
!843 = distinct !DILexicalBlock(scope: !838, file: !3, line: 415, column: 5)
!844 = !DILocation(line: 426, column: 40, scope: !520)
!845 = !DILocation(line: 275, column: 28, scope: !520)
!846 = !DILocation(line: 281, column: 20, scope: !520)
!847 = !DILocation(line: 428, column: 23, scope: !520)
!848 = !DILocation(line: 277, column: 29, scope: !520)
!849 = !DILocation(line: 433, column: 17, scope: !850)
!850 = distinct !DILexicalBlock(scope: !520, file: !3, line: 433, column: 3)
!851 = !DILocation(line: 281, column: 16, scope: !520)
!852 = !DILocation(line: 0, scope: !853)
!853 = distinct !DILexicalBlock(scope: !854, file: !3, line: 433, column: 32)
!854 = distinct !DILexicalBlock(scope: !850, file: !3, line: 433, column: 3)
!855 = !DILocation(line: 433, column: 22, scope: !854)
!856 = !DILocation(line: 433, column: 3, scope: !850)
!857 = !DILocation(line: 434, column: 45, scope: !853)
!858 = !DILocation(line: 275, column: 35, scope: !520)
!859 = !DILocation(line: 435, column: 27, scope: !860)
!860 = distinct !DILexicalBlock(scope: !853, file: !3, line: 435, column: 9)
!861 = !DILocation(line: 435, column: 15, scope: !860)
!862 = !DILocation(line: 435, column: 9, scope: !853)
!863 = !DILocation(line: 437, column: 15, scope: !864)
!864 = distinct !DILexicalBlock(scope: !865, file: !3, line: 437, column: 11)
!865 = distinct !DILexicalBlock(scope: !860, file: !3, line: 435, column: 34)
!866 = !DILocation(line: 437, column: 11, scope: !865)
!867 = !DILocation(line: 442, column: 21, scope: !868)
!868 = distinct !DILexicalBlock(scope: !865, file: !3, line: 442, column: 11)
!869 = !DILocation(line: 442, column: 11, scope: !865)
!870 = !DILocation(line: 443, column: 32, scope: !871)
!871 = distinct !DILexicalBlock(scope: !872, file: !3, line: 443, column: 13)
!872 = distinct !DILexicalBlock(scope: !868, file: !3, line: 442, column: 30)
!873 = !{!409, !365, i64 10}
!874 = !DILocation(line: 443, column: 19, scope: !871)
!875 = !DILocation(line: 443, column: 13, scope: !872)
!876 = !DILocation(line: 454, column: 20, scope: !877)
!877 = distinct !DILexicalBlock(scope: !878, file: !3, line: 452, column: 30)
!878 = distinct !DILexicalBlock(scope: !865, file: !3, line: 452, column: 11)
!879 = !DILocation(line: 454, column: 30, scope: !877)
!880 = !DILocation(line: 455, column: 7, scope: !877)
!881 = !DILocation(line: 457, column: 16, scope: !882)
!882 = distinct !DILexicalBlock(scope: !878, file: !3, line: 455, column: 14)
!883 = !DILocation(line: 460, column: 22, scope: !884)
!884 = distinct !DILexicalBlock(scope: !860, file: !3, line: 460, column: 16)
!885 = !DILocation(line: 460, column: 16, scope: !860)
!886 = !DILocation(line: 464, column: 34, scope: !887)
!887 = distinct !DILexicalBlock(scope: !884, file: !3, line: 464, column: 16)
!888 = !DILocation(line: 464, column: 22, scope: !887)
!889 = !DILocation(line: 464, column: 16, scope: !884)
!890 = !DILocation(line: 471, column: 21, scope: !891)
!891 = distinct !DILexicalBlock(scope: !892, file: !3, line: 471, column: 11)
!892 = distinct !DILexicalBlock(scope: !887, file: !3, line: 469, column: 12)
!893 = !DILocation(line: 471, column: 11, scope: !892)
!894 = !DILocation(line: 472, column: 24, scope: !895)
!895 = distinct !DILexicalBlock(scope: !896, file: !3, line: 472, column: 13)
!896 = distinct !DILexicalBlock(scope: !891, file: !3, line: 471, column: 30)
!897 = !DILocation(line: 472, column: 28, scope: !895)
!898 = !DILocation(line: 472, column: 13, scope: !896)
!899 = !DILocation(line: 0, scope: !520)
!900 = !DILocation(line: 479, column: 19, scope: !853)
!901 = distinct !{!901, !856, !902}
!902 = !DILocation(line: 481, column: 3, scope: !850)
!903 = !DILocation(line: 489, column: 7, scope: !904)
!904 = distinct !DILexicalBlock(scope: !905, file: !3, line: 489, column: 7)
!905 = distinct !DILexicalBlock(scope: !906, file: !3, line: 489, column: 7)
!906 = distinct !DILexicalBlock(scope: !907, file: !3, line: 485, column: 28)
!907 = distinct !DILexicalBlock(scope: !908, file: !3, line: 485, column: 9)
!908 = distinct !DILexicalBlock(scope: !909, file: !3, line: 484, column: 18)
!909 = distinct !DILexicalBlock(scope: !520, file: !3, line: 484, column: 7)
!910 = !DILocation(line: 489, column: 7, scope: !905)
!911 = !DILocation(line: 489, column: 7, scope: !912)
!912 = distinct !DILexicalBlock(scope: !913, file: !3, line: 489, column: 7)
!913 = distinct !DILexicalBlock(scope: !904, file: !3, line: 489, column: 7)
!914 = !DILocation(line: 489, column: 7, scope: !915)
!915 = distinct !DILexicalBlock(scope: !916, file: !3, line: 489, column: 7)
!916 = distinct !DILexicalBlock(scope: !917, file: !3, line: 489, column: 7)
!917 = distinct !DILexicalBlock(scope: !912, file: !3, line: 489, column: 7)
!918 = !DILocation(line: 491, column: 18, scope: !906)
!919 = !DILocation(line: 491, column: 28, scope: !906)
!920 = !DILocation(line: 492, column: 26, scope: !921)
!921 = distinct !DILexicalBlock(scope: !906, file: !3, line: 492, column: 11)
!922 = !DILocation(line: 492, column: 11, scope: !906)
!923 = !DILocation(line: 501, column: 14, scope: !924)
!924 = distinct !DILexicalBlock(scope: !907, file: !3, line: 495, column: 12)
!925 = !DILocation(line: 507, column: 33, scope: !520)
!926 = !DILocation(line: 507, column: 53, scope: !520)
!927 = !DILocation(line: 507, column: 23, scope: !520)
!928 = !DILocation(line: 510, column: 13, scope: !929)
!929 = distinct !DILexicalBlock(scope: !520, file: !3, line: 510, column: 7)
!930 = !DILocation(line: 510, column: 7, scope: !520)
!931 = !DILocation(line: 512, column: 26, scope: !932)
!932 = distinct !DILexicalBlock(scope: !929, file: !3, line: 510, column: 19)
!933 = !DILocation(line: 512, column: 10, scope: !932)
!934 = !DILocation(line: 512, column: 16, scope: !932)
!935 = !DILocation(line: 515, column: 5, scope: !932)
!936 = !DILocation(line: 519, column: 3, scope: !932)
!937 = !DILocation(line: 521, column: 9, scope: !520)
!938 = !DILocation(line: 521, column: 19, scope: !520)
!939 = !DILocation(line: 522, column: 9, scope: !520)
!940 = !DILocation(line: 522, column: 15, scope: !520)
!941 = !DILocation(line: 523, column: 9, scope: !520)
!942 = !DILocation(line: 523, column: 13, scope: !520)
!943 = !DILocation(line: 526, column: 15, scope: !944)
!944 = distinct !DILexicalBlock(scope: !520, file: !3, line: 526, column: 7)
!945 = !DILocation(line: 526, column: 37, scope: !944)
!946 = !DILocation(line: 526, column: 7, scope: !520)
!947 = !DILocation(line: 535, column: 12, scope: !948)
!948 = distinct !DILexicalBlock(scope: !520, file: !3, line: 535, column: 7)
!949 = !{!362, !365, i64 76}
!950 = !DILocation(line: 527, column: 23, scope: !951)
!951 = distinct !DILexicalBlock(scope: !944, file: !3, line: 526, column: 43)
!952 = !DILocation(line: 528, column: 3, scope: !951)
!953 = !DILocation(line: 531, column: 45, scope: !520)
!954 = !DILocation(line: 531, column: 48, scope: !520)
!955 = !DILocation(line: 532, column: 17, scope: !956)
!956 = distinct !DILexicalBlock(scope: !520, file: !3, line: 532, column: 7)
!957 = !DILocation(line: 532, column: 23, scope: !956)
!958 = !DILocation(line: 532, column: 7, scope: !520)
!959 = !DILocation(line: 535, column: 25, scope: !948)
!960 = !DILocation(line: 535, column: 7, scope: !520)
!961 = !DILocation(line: 542, column: 13, scope: !520)
!962 = !DILocation(line: 542, column: 22, scope: !520)
!963 = !DILocation(line: 542, column: 3, scope: !520)
!964 = !DILocation(line: 543, column: 41, scope: !965)
!965 = distinct !DILexicalBlock(scope: !520, file: !3, line: 542, column: 32)
!966 = !DILocation(line: 544, column: 33, scope: !967)
!967 = distinct !DILexicalBlock(scope: !965, file: !3, line: 544, column: 9)
!968 = !DILocation(line: 544, column: 24, scope: !967)
!969 = !DILocation(line: 544, column: 9, scope: !965)
!970 = !DILocation(line: 549, column: 15, scope: !965)
!971 = !DILocation(line: 0, scope: !965)
!972 = distinct !{!972, !963, !973}
!973 = !DILocation(line: 550, column: 3, scope: !520)
!974 = !DILocation(line: 544, column: 20, scope: !967)
!975 = !DILocation(line: 552, column: 7, scope: !548)
!976 = !DILocation(line: 552, column: 7, scope: !520)
!977 = !DILocation(line: 558, column: 17, scope: !547)
!978 = !DILocation(line: 558, column: 5, scope: !547)
!979 = !DILocation(line: 559, column: 25, scope: !554)
!980 = !DILocation(line: 560, column: 21, scope: !553)
!981 = !DILocation(line: 560, column: 11, scope: !554)
!982 = !DILocation(line: 562, column: 57, scope: !552)
!983 = !DILocation(line: 565, column: 9, scope: !552)
!984 = !DILocation(line: 569, column: 25, scope: !550)
!985 = !DILocation(line: 569, column: 16, scope: !550)
!986 = !DILocation(line: 571, column: 11, scope: !987)
!987 = distinct !DILexicalBlock(scope: !988, file: !3, line: 571, column: 11)
!988 = distinct !DILexicalBlock(scope: !550, file: !3, line: 571, column: 11)
!989 = !DILocation(line: 571, column: 11, scope: !988)
!990 = !DILocation(line: 571, column: 11, scope: !991)
!991 = distinct !DILexicalBlock(scope: !992, file: !3, line: 571, column: 11)
!992 = distinct !DILexicalBlock(scope: !987, file: !3, line: 571, column: 11)
!993 = !DILocation(line: 571, column: 11, scope: !994)
!994 = distinct !DILexicalBlock(scope: !995, file: !3, line: 571, column: 11)
!995 = distinct !DILexicalBlock(scope: !996, file: !3, line: 571, column: 11)
!996 = distinct !DILexicalBlock(scope: !991, file: !3, line: 571, column: 11)
!997 = !DILocation(line: 574, column: 23, scope: !552)
!998 = !DILocation(line: 574, column: 9, scope: !552)
!999 = distinct !{!999, !978, !1000}
!1000 = !DILocation(line: 581, column: 5, scope: !547)
!1001 = !DILocation(line: 584, column: 14, scope: !547)
!1002 = !DILocation(line: 592, column: 7, scope: !556)
!1003 = !DILocation(line: 594, column: 16, scope: !556)
!1004 = !DILocation(line: 588, column: 12, scope: !556)
!1005 = !DILocation(line: 596, column: 7, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 596, column: 7)
!1007 = distinct !DILexicalBlock(scope: !556, file: !3, line: 596, column: 7)
!1008 = !DILocation(line: 596, column: 7, scope: !1007)
!1009 = !DILocation(line: 596, column: 7, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 596, column: 7)
!1011 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 596, column: 7)
!1012 = !DILocation(line: 596, column: 7, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1014, file: !3, line: 596, column: 7)
!1014 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 596, column: 7)
!1015 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 596, column: 7)
!1016 = !DILocation(line: 609, column: 5, scope: !547)
!1017 = !DILocation(line: 613, column: 47, scope: !547)
!1018 = !DILocation(line: 613, column: 53, scope: !547)
!1019 = !DILocation(line: 554, column: 21, scope: !547)
!1020 = !DILocation(line: 617, column: 38, scope: !547)
!1021 = !DILocation(line: 617, column: 64, scope: !547)
!1022 = !DILocation(line: 617, column: 72, scope: !547)
!1023 = !DILocation(line: 617, column: 25, scope: !547)
!1024 = !DILocation(line: 617, column: 23, scope: !547)
!1025 = !DILocation(line: 621, column: 24, scope: !547)
!1026 = !DILocation(line: 621, column: 16, scope: !547)
!1027 = !DILocation(line: 621, column: 22, scope: !547)
!1028 = !DILocation(line: 627, column: 9, scope: !560)
!1029 = !{!596, !353, i64 6}
!1030 = !DILocation(line: 627, column: 31, scope: !560)
!1031 = !DILocation(line: 627, column: 9, scope: !547)
!1032 = !DILocation(line: 630, column: 37, scope: !559)
!1033 = !DILocation(line: 630, column: 13, scope: !559)
!1034 = !DILocation(line: 631, column: 14, scope: !559)
!1035 = !DILocation(line: 631, column: 19, scope: !559)
!1036 = !DILocation(line: 631, column: 7, scope: !559)
!1037 = !DILocation(line: 632, column: 25, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !559, file: !3, line: 631, column: 42)
!1039 = !DILocation(line: 632, column: 18, scope: !1038)
!1040 = !DILocation(line: 632, column: 13, scope: !1038)
!1041 = distinct !{!1041, !1036, !1042}
!1042 = !DILocation(line: 633, column: 7, scope: !559)
!1043 = !DILocation(line: 0, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !560, file: !3, line: 627, column: 54)
!1045 = !DILocation(line: 638, column: 9, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !547, file: !3, line: 638, column: 9)
!1047 = !DILocation(line: 638, column: 24, scope: !1046)
!1048 = !DILocation(line: 638, column: 9, scope: !547)
!1049 = !DILocation(line: 640, column: 29, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1046, file: !3, line: 638, column: 32)
!1051 = !DILocation(line: 640, column: 22, scope: !1050)
!1052 = !DILocation(line: 641, column: 5, scope: !1050)
!1053 = !DILocation(line: 643, column: 7, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 643, column: 7)
!1055 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 643, column: 7)
!1056 = distinct !DILexicalBlock(scope: !1046, file: !3, line: 641, column: 12)
!1057 = !DILocation(line: 643, column: 7, scope: !1055)
!1058 = !DILocation(line: 643, column: 7, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 643, column: 7)
!1060 = distinct !DILexicalBlock(scope: !1054, file: !3, line: 643, column: 7)
!1061 = !DILocation(line: 643, column: 7, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1063, file: !3, line: 643, column: 7)
!1063 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 643, column: 7)
!1064 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 643, column: 7)
!1065 = !DILocation(line: 644, column: 29, scope: !1056)
!1066 = !DILocation(line: 644, column: 22, scope: !1056)
!1067 = !DILocation(line: 646, column: 35, scope: !547)
!1068 = !DILocation(line: 646, column: 5, scope: !547)
!1069 = !DILocation(line: 649, column: 12, scope: !547)
!1070 = !DILocation(line: 650, column: 5, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1072, file: !3, line: 650, column: 5)
!1072 = distinct !DILexicalBlock(scope: !547, file: !3, line: 650, column: 5)
!1073 = !DILocation(line: 650, column: 5, scope: !1072)
!1074 = !DILocation(line: 650, column: 5, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 650, column: 5)
!1076 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 650, column: 5)
!1077 = !DILocation(line: 650, column: 5, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1079, file: !3, line: 650, column: 5)
!1079 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 650, column: 5)
!1080 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 650, column: 5)
!1081 = !DILocation(line: 651, column: 55, scope: !547)
!1082 = !DILocation(line: 651, column: 25, scope: !547)
!1083 = !DILocation(line: 654, column: 48, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !547, file: !3, line: 654, column: 9)
!1085 = !DILocation(line: 654, column: 56, scope: !1084)
!1086 = !DILocation(line: 654, column: 30, scope: !1084)
!1087 = !DILocation(line: 654, column: 9, scope: !1084)
!1088 = !DILocation(line: 654, column: 9, scope: !547)
!1089 = !DILocation(line: 655, column: 7, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1091, file: !3, line: 655, column: 7)
!1091 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 655, column: 7)
!1092 = distinct !DILexicalBlock(scope: !1093, file: !3, line: 655, column: 7)
!1093 = distinct !DILexicalBlock(scope: !1094, file: !3, line: 655, column: 7)
!1094 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 654, column: 78)
!1095 = !DILocation(line: 655, column: 7, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 655, column: 7)
!1097 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 655, column: 7)
!1098 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 655, column: 7)
!1099 = !DILocation(line: 0, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !626, file: !3, line: 304, column: 22)
!1101 = !DILocation(line: 667, column: 3, scope: !520)
!1102 = !{!566, !365, i64 240}
!1103 = !DILocation(line: 668, column: 3, scope: !520)
!1104 = !DILocation(line: 669, column: 3, scope: !520)
!1105 = !DILocation(line: 670, column: 1, scope: !520)
!1106 = !DILocation(line: 194, column: 43, scope: !313)
!1107 = !DILocation(line: 196, column: 2, scope: !313)
!1108 = !DILocation(line: 196, column: 10, scope: !313)
!1109 = !DILocation(line: 197, column: 2, scope: !313)
!1110 = !DILocation(line: 198, column: 2, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1112, file: !314, line: 198, column: 2)
!1112 = distinct !DILexicalBlock(scope: !313, file: !314, line: 198, column: 2)
!1113 = !DILocation(line: 199, column: 2, scope: !313)
!1114 = !DILocation(line: 200, column: 1, scope: !313)
!1115 = !DILocation(line: 720, column: 23, scope: !185)
!1116 = !DILocation(line: 720, column: 40, scope: !185)
!1117 = !DILocation(line: 720, column: 65, scope: !185)
!1118 = !DILocation(line: 728, column: 9, scope: !185)
!1119 = !DILocation(line: 733, column: 21, scope: !185)
!1120 = !DILocation(line: 733, column: 15, scope: !185)
!1121 = !DILocation(line: 734, column: 64, scope: !185)
!1122 = !DILocation(line: 734, column: 15, scope: !185)
!1123 = !DILocation(line: 735, column: 9, scope: !185)
!1124 = !DILocation(line: 737, column: 9, scope: !185)
!1125 = !DILocation(line: 739, column: 17, scope: !185)
!1126 = !DILocation(line: 741, column: 42, scope: !185)
!1127 = !DILocation(line: 722, column: 19, scope: !185)
!1128 = !DILocation(line: 744, column: 3, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1130, file: !3, line: 744, column: 3)
!1130 = distinct !DILexicalBlock(scope: !185, file: !3, line: 744, column: 3)
!1131 = !{!405, !365, i64 16}
!1132 = !DILocation(line: 744, column: 3, scope: !1130)
!1133 = !DILocation(line: 744, column: 3, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 744, column: 3)
!1135 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 744, column: 3)
!1136 = !DILocation(line: 744, column: 3, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1138, file: !3, line: 744, column: 3)
!1138 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 744, column: 3)
!1139 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 744, column: 3)
!1140 = !DILocation(line: 745, column: 29, scope: !185)
!1141 = !DILocation(line: 732, column: 9, scope: !185)
!1142 = !DILocation(line: 747, column: 3, scope: !185)
!1143 = !DILocation(line: 748, column: 18, scope: !308)
!1144 = !DILocation(line: 751, column: 11, scope: !308)
!1145 = !DILocation(line: 732, column: 15, scope: !185)
!1146 = !DILocation(line: 778, column: 14, scope: !308)
!1147 = !DILocation(line: 725, column: 16, scope: !185)
!1148 = !DILocation(line: 779, column: 16, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !308, file: !3, line: 779, column: 9)
!1150 = !DILocation(line: 779, column: 9, scope: !308)
!1151 = !DILocation(line: 780, column: 7, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 779, column: 25)
!1153 = !{!566, !365, i64 246}
!1154 = !DILocation(line: 781, column: 7, scope: !1152)
!1155 = !DILocation(line: 783, column: 5, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 783, column: 5)
!1157 = distinct !DILexicalBlock(scope: !308, file: !3, line: 783, column: 5)
!1158 = !DILocation(line: 783, column: 5, scope: !1157)
!1159 = !DILocation(line: 783, column: 5, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1161, file: !3, line: 783, column: 5)
!1161 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 783, column: 5)
!1162 = !DILocation(line: 783, column: 5, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 783, column: 5)
!1164 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 783, column: 5)
!1165 = distinct !DILexicalBlock(scope: !1160, file: !3, line: 783, column: 5)
!1166 = !DILocation(line: 785, column: 5, scope: !308)
!1167 = !DILocation(line: 786, column: 40, scope: !308)
!1168 = !DILocation(line: 723, column: 19, scope: !185)
!1169 = !DILocation(line: 787, column: 63, scope: !308)
!1170 = !DILocation(line: 724, column: 24, scope: !185)
!1171 = !DILocation(line: 790, column: 29, scope: !308)
!1172 = !DILocation(line: 790, column: 37, scope: !308)
!1173 = !DILocation(line: 790, column: 16, scope: !308)
!1174 = !DILocation(line: 791, column: 25, scope: !308)
!1175 = !DILocation(line: 791, column: 29, scope: !308)
!1176 = !DILocation(line: 791, column: 12, scope: !308)
!1177 = !DILocation(line: 792, column: 29, scope: !308)
!1178 = !DILocation(line: 792, column: 37, scope: !308)
!1179 = !DILocation(line: 792, column: 16, scope: !308)
!1180 = !DILocation(line: 729, column: 9, scope: !185)
!1181 = !DILocation(line: 795, column: 5, scope: !308)
!1182 = !DILocation(line: 797, column: 39, scope: !307)
!1183 = !DILocation(line: 797, column: 34, scope: !307)
!1184 = !DILocation(line: 797, column: 20, scope: !307)
!1185 = !DILocation(line: 799, column: 12, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !307, file: !3, line: 799, column: 11)
!1187 = !DILocation(line: 799, column: 11, scope: !307)
!1188 = distinct !{!1188, !1181, !1189}
!1189 = !DILocation(line: 829, column: 5, scope: !308)
!1190 = !DILocation(line: 681, column: 35, scope: !1191, inlinedAt: !1195)
!1191 = distinct !DISubprogram(name: "ip6_frag_alloc_pbuf_custom_ref", scope: !3, file: !3, line: 679, type: !1192, isLocal: true, isDefinition: true, scopeLine: 680, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1194)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{!169}
!1194 = !{}
!1195 = distinct !DILocation(line: 803, column: 13, scope: !307)
!1196 = !DILocation(line: 681, column: 3, scope: !1191, inlinedAt: !1195)
!1197 = !DILocation(line: 796, column: 31, scope: !307)
!1198 = !DILocation(line: 804, column: 15, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !307, file: !3, line: 804, column: 11)
!1200 = !DILocation(line: 804, column: 11, scope: !307)
!1201 = !DILocation(line: 805, column: 9, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 804, column: 24)
!1203 = !DILocation(line: 806, column: 9, scope: !1202)
!1204 = !DILocation(line: 807, column: 9, scope: !1202)
!1205 = !DILocation(line: 810, column: 75, scope: !307)
!1206 = !DILocation(line: 810, column: 82, scope: !307)
!1207 = !DILocation(line: 810, column: 17, scope: !307)
!1208 = !DILocation(line: 727, column: 16, scope: !185)
!1209 = !DILocation(line: 811, column: 19, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !307, file: !3, line: 811, column: 11)
!1211 = !DILocation(line: 811, column: 11, scope: !307)
!1212 = !DILocalVariable(name: "p", arg: 1, scope: !1213, file: !3, line: 686, type: !169)
!1213 = distinct !DISubprogram(name: "ip6_frag_free_pbuf_custom_ref", scope: !3, file: !3, line: 686, type: !1214, isLocal: true, isDefinition: true, scopeLine: 687, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1216)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{null, !169}
!1216 = !{!1212}
!1217 = !DILocation(line: 686, column: 55, scope: !1213, inlinedAt: !1218)
!1218 = distinct !DILocation(line: 812, column: 9, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1210, file: !3, line: 811, column: 28)
!1220 = !DILocation(line: 689, column: 3, scope: !1213, inlinedAt: !1218)
!1221 = !DILocation(line: 690, column: 1, scope: !1213, inlinedAt: !1218)
!1222 = !DILocation(line: 813, column: 9, scope: !1219)
!1223 = !DILocation(line: 814, column: 9, scope: !1219)
!1224 = !DILocation(line: 815, column: 9, scope: !1219)
!1225 = !DILocation(line: 817, column: 7, scope: !307)
!1226 = !DILocation(line: 818, column: 12, scope: !307)
!1227 = !DILocation(line: 818, column: 21, scope: !307)
!1228 = !{!1229, !352, i64 32}
!1229 = !{!"pbuf_custom_ref", !1230, i64 0, !352, i64 32}
!1230 = !{!"pbuf_custom", !405, i64 0, !352, i64 24}
!1231 = !DILocation(line: 819, column: 15, scope: !307)
!1232 = !DILocation(line: 819, column: 36, scope: !307)
!1233 = !{!1229, !352, i64 24}
!1234 = !DILocation(line: 824, column: 7, scope: !307)
!1235 = !DILocation(line: 825, column: 43, scope: !307)
!1236 = !DILocation(line: 826, column: 11, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !307, file: !3, line: 826, column: 11)
!1238 = !DILocation(line: 826, column: 11, scope: !307)
!1239 = !DILocation(line: 0, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 799, column: 24)
!1241 = !{!405, !352, i64 0}
!1242 = !DILocation(line: 0, scope: !307)
!1243 = !DILocation(line: 834, column: 41, scope: !308)
!1244 = !DILocation(line: 834, column: 22, scope: !308)
!1245 = !DILocation(line: 835, column: 15, scope: !308)
!1246 = !DILocation(line: 835, column: 24, scope: !308)
!1247 = !{!589, !353, i64 1}
!1248 = !DILocation(line: 836, column: 54, scope: !308)
!1249 = !DILocation(line: 836, column: 70, scope: !308)
!1250 = !DILocation(line: 836, column: 97, scope: !308)
!1251 = !DILocation(line: 836, column: 94, scope: !308)
!1252 = !DILocation(line: 836, column: 45, scope: !308)
!1253 = !DILocation(line: 836, column: 34, scope: !308)
!1254 = !DILocation(line: 836, column: 15, scope: !308)
!1255 = !DILocation(line: 836, column: 32, scope: !308)
!1256 = !DILocation(line: 837, column: 44, scope: !308)
!1257 = !DILocation(line: 837, column: 33, scope: !308)
!1258 = !DILocation(line: 837, column: 15, scope: !308)
!1259 = !DILocation(line: 837, column: 31, scope: !308)
!1260 = !DILocation(line: 839, column: 5, scope: !308)
!1261 = !DILocation(line: 840, column: 5, scope: !308)
!1262 = !DILocation(line: 845, column: 5, scope: !308)
!1263 = !{!566, !365, i64 234}
!1264 = !DILocation(line: 846, column: 12, scope: !308)
!1265 = !{!1266, !352, i64 208}
!1266 = !{!"netif", !352, i64 0, !594, i64 8, !594, i64 32, !594, i64 56, !353, i64 80, !353, i64 152, !353, i64 156, !353, i64 168, !352, i64 184, !352, i64 192, !352, i64 200, !352, i64 208, !352, i64 216, !352, i64 224, !352, i64 232, !353, i64 240, !365, i64 248, !365, i64 250, !365, i64 252, !353, i64 254, !353, i64 260, !353, i64 261, !353, i64 262, !353, i64 264, !353, i64 265, !353, i64 266, !352, i64 272}
!1267 = !DILocation(line: 846, column: 5, scope: !308)
!1268 = !DILocation(line: 855, column: 5, scope: !308)
!1269 = !DILocation(line: 856, column: 25, scope: !308)
!1270 = !DILocation(line: 857, column: 47, scope: !308)
!1271 = distinct !{!1271, !1142, !1272}
!1272 = !DILocation(line: 858, column: 3, scope: !185)
!1273 = !DILocation(line: 0, scope: !185)
!1274 = !DILocation(line: 860, column: 1, scope: !185)
!1275 = distinct !DISubprogram(name: "ip6_frag_free_pbuf_custom", scope: !3, file: !3, line: 695, type: !179, isLocal: true, isDefinition: true, scopeLine: 696, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1276)
!1276 = !{!1277, !1278}
!1277 = !DILocalVariable(name: "p", arg: 1, scope: !1275, file: !3, line: 695, type: !129)
!1278 = !DILocalVariable(name: "pcr", scope: !1275, file: !3, line: 697, type: !169)
!1279 = !DILocation(line: 695, column: 40, scope: !1275)
!1280 = !DILocation(line: 697, column: 27, scope: !1275)
!1281 = !DILocation(line: 698, column: 3, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1283, file: !3, line: 698, column: 3)
!1283 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 698, column: 3)
!1284 = !DILocation(line: 698, column: 3, scope: !1283)
!1285 = !DILocation(line: 698, column: 3, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1287, file: !3, line: 698, column: 3)
!1287 = distinct !DILexicalBlock(scope: !1282, file: !3, line: 698, column: 3)
!1288 = !DILocation(line: 698, column: 3, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 698, column: 3)
!1290 = distinct !DILexicalBlock(scope: !1291, file: !3, line: 698, column: 3)
!1291 = distinct !DILexicalBlock(scope: !1286, file: !3, line: 698, column: 3)
!1292 = !DILocation(line: 700, column: 12, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 700, column: 7)
!1294 = !DILocation(line: 700, column: 21, scope: !1293)
!1295 = !DILocation(line: 700, column: 7, scope: !1275)
!1296 = !DILocation(line: 701, column: 5, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1293, file: !3, line: 700, column: 30)
!1298 = !DILocation(line: 702, column: 3, scope: !1297)
!1299 = !DILocation(line: 686, column: 55, scope: !1213, inlinedAt: !1300)
!1300 = distinct !DILocation(line: 703, column: 3, scope: !1275)
!1301 = !DILocation(line: 689, column: 29, scope: !1213, inlinedAt: !1300)
!1302 = !DILocation(line: 689, column: 3, scope: !1213, inlinedAt: !1300)
!1303 = !DILocation(line: 690, column: 1, scope: !1213, inlinedAt: !1300)
!1304 = !DILocation(line: 704, column: 1, scope: !1275)
