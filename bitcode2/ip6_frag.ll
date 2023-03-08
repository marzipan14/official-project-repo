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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !356
  %2 = icmp eq %struct.ip6_reassdata* %1, null, !dbg !357
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !356
  br i1 %2, label %18, label %3, !dbg !356

; <label>:3:                                      ; preds = %0, %15
  %4 = phi %struct.ip6_reassdata* [ %16, %15 ], [ %1, %0 ]
  %5 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %4, i64 0, i32 9, !dbg !358
  %6 = load i8, i8* %5, align 1, !dbg !358, !tbaa !361
  %7 = icmp eq i8 %6, 0, !dbg !366
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !367
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !356
  %17 = icmp eq %struct.ip6_reassdata* %16, null, !dbg !357
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !356
  br i1 %17, label %18, label %3, !dbg !356, !llvm.loop !378

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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !411
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !423
  br i1 %27, label %29, label %28, !dbg !423

; <label>:28:                                     ; preds = %12
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.12, i64 0, i64 0)) #7, !dbg !424
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !430
  tail call void @ukplat_terminate(i32 3) #9, !dbg !430
  unreachable

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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !452
  %47 = call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %5) #8, !dbg !454
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !455
  %48 = load %struct.pbuf*, %struct.pbuf** %4, align 8, !dbg !456, !tbaa !402
  br label %49, !dbg !455

; <label>:49:                                     ; preds = %29, %1
  %50 = phi %struct.pbuf* [ %48, %29 ], [ %5, %1 ], !dbg !456
  %51 = phi i16 [ %46, %29 ], [ 0, %1 ], !dbg !457
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !458
  %52 = icmp eq %struct.pbuf* %50, null, !dbg !459
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !458
  br i1 %52, label %73, label %53, !dbg !458

; <label>:53:                                     ; preds = %49, %67
  %54 = phi %struct.pbuf* [ %60, %67 ], [ %50, %49 ]
  %55 = phi i16 [ %68, %67 ], [ %51, %49 ]
  %56 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %54, i64 0, i32 1, !dbg !460
  %57 = bitcast i8** %56 to %struct.ip6_reass_helper**, !dbg !460
  %58 = load %struct.ip6_reass_helper*, %struct.ip6_reass_helper** %57, align 8, !dbg !460, !tbaa !404
  %59 = getelementptr inbounds %struct.ip6_reass_helper, %struct.ip6_reass_helper* %58, i64 0, i32 0, !dbg !462
  %60 = load %struct.pbuf*, %struct.pbuf** %59, align 1, !dbg !462, !tbaa !414
  %61 = call zeroext i16 @pbuf_clen(%struct.pbuf* nonnull %54) #8, !dbg !463
  %62 = zext i16 %55 to i32, !dbg !464
  %63 = zext i16 %61 to i32, !dbg !464
  %64 = add nuw nsw i32 %63, %62, !dbg !464
  %65 = icmp ult i32 %64, 65536, !dbg !464
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !467
  br i1 %65, label %67, label %66, !dbg !467

; <label>:66:                                     ; preds = %53
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0)) #7, !dbg !468
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !471
  call void @ukplat_terminate(i32 3) #9, !dbg !471
  unreachable

; <label>:67:                                     ; preds = %53
  %68 = trunc i32 %64 to i16, !dbg !475
  %69 = call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %54) #8, !dbg !476
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !458
  %70 = icmp eq %struct.pbuf* %60, null, !dbg !459
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !458
  br i1 %70, label %71, label %53, !dbg !458, !llvm.loop !477

; <label>:71:                                     ; preds = %67
  %72 = trunc i32 %64 to i16, !dbg !475
  br label %73, !dbg !479

; <label>:73:                                     ; preds = %71, %49
  %74 = phi i16 [ %51, %49 ], [ %72, %71 ], !dbg !481
  %75 = load %struct.ip6_reassdata*, %struct.ip6_reassdata** @reassdatagrams, align 8, !dbg !479, !tbaa !351
  %76 = icmp eq %struct.ip6_reassdata* %75, %0, !dbg !482
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !483
  br i1 %76, label %77, label %80, !dbg !483

; <label>:77:                                     ; preds = %73
  %78 = bitcast %struct.ip6_reassdata* %0 to i64*, !dbg !484
  %79 = load i64, i64* %78, align 8, !dbg !484, !tbaa !371
  store i64 %79, i64* bitcast (%struct.ip6_reassdata** @reassdatagrams to i64*), align 8, !dbg !486, !tbaa !351
  br label %92, !dbg !487

; <label>:80:                                     ; preds = %73
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !489
  br label %81, !dbg !489

; <label>:81:                                     ; preds = %84, %80
  %82 = phi %struct.ip6_reassdata* [ %75, %80 ], [ %86, %84 ], !dbg !491
  %83 = icmp eq %struct.ip6_reassdata* %82, null, !dbg !493
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !489
  br i1 %83, label %92, label %84, !dbg !489

; <label>:84:                                     ; preds = %81
  %85 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %82, i64 0, i32 0, !dbg !494
  %86 = load %struct.ip6_reassdata*, %struct.ip6_reassdata** %85, align 8, !dbg !494, !tbaa !371
  %87 = icmp eq %struct.ip6_reassdata* %86, %0, !dbg !496
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !497
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !498
  br i1 %87, label %88, label %81, !dbg !497, !llvm.loop !499

; <label>:88:                                     ; preds = %84
  %89 = bitcast %struct.ip6_reassdata* %0 to i64*, !dbg !501
  %90 = load i64, i64* %89, align 8, !dbg !501, !tbaa !371
  %91 = bitcast %struct.ip6_reassdata* %82 to i64*, !dbg !504
  store i64 %90, i64* %91, align 8, !dbg !504, !tbaa !371
  br label %92, !dbg !505

; <label>:92:                                     ; preds = %81, %88, %77
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !506
  %93 = bitcast %struct.ip6_reassdata* %0 to i8*, !dbg !507
  call void @memp_free(i32 13, i8* %93) #8, !dbg !508
  %94 = load i16, i16* @ip6_reass_pbufcount, align 2, !dbg !509, !tbaa !512
  %95 = icmp ult i16 %94, %74, !dbg !509
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !513
  br i1 %95, label %96, label %97, !dbg !513

; <label>:96:                                     ; preds = %92
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0)) #7, !dbg !514
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !517
  call void @ukplat_terminate(i32 3) #9, !dbg !517
  unreachable

; <label>:97:                                     ; preds = %92
  %98 = sub i16 %94, %74, !dbg !521
  store i16 %98, i16* @ip6_reass_pbufcount, align 2, !dbg !522, !tbaa !512
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !523
  ret void, !dbg !523
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone nounwind
define dso_local %struct.pbuf* @ip6_reass(%struct.pbuf*) local_unnamed_addr #0 !dbg !524 {
  %2 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 10, i32 1), align 2, !dbg !568, !tbaa !569
  %3 = add i16 %2, 1, !dbg !568
  store i16 %3, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 10, i32 1), align 2, !dbg !568, !tbaa !569
  %4 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 3, !dbg !575
  %5 = load i16, i16* %4, align 2, !dbg !575, !tbaa !578
  %6 = icmp ugt i16 %5, 7, !dbg !575
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !579
  br i1 %6, label %8, label %7, !dbg !579

; <label>:7:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0)) #7, !dbg !580
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !583
  tail call void @ukplat_terminate(i32 3) #9, !dbg !583
  unreachable

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 1, !dbg !587
  %10 = bitcast i8** %9 to %struct.ip6_frag_hdr**, !dbg !587
  %11 = load %struct.ip6_frag_hdr*, %struct.ip6_frag_hdr** %10, align 8, !dbg !587, !tbaa !404
  %12 = tail call zeroext i16 @pbuf_clen(%struct.pbuf* nonnull %0) #8, !dbg !589
  %13 = getelementptr inbounds %struct.ip6_frag_hdr, %struct.ip6_frag_hdr* %11, i64 0, i32 2, !dbg !591
  %14 = load i16, i16* %13, align 1, !dbg !591, !tbaa !592
  %15 = tail call zeroext i16 @lwip_htons(i16 zeroext %14) #8, !dbg !591
  %16 = load %struct.ip6_hdr*, %struct.ip6_hdr** getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 3), align 8, !dbg !595, !tbaa !596
  %17 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %16, i64 0, i32 1, !dbg !595
  %18 = load i16, i16* %17, align 1, !dbg !595, !tbaa !599
  %19 = tail call zeroext i16 @lwip_htons(i16 zeroext %18) #8, !dbg !595
  %20 = bitcast i8** %9 to i64*, !dbg !602
  %21 = load i64, i64* %20, align 8, !dbg !602, !tbaa !404
  %22 = load i64, i64* bitcast (%struct.ip6_hdr** getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 3) to i64*), align 8, !dbg !603, !tbaa !596
  %23 = sub i64 %21, %22, !dbg !604
  %24 = icmp slt i64 %23, 65536, !dbg !606
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !609
  br i1 %24, label %26, label %25, !dbg !609

; <label>:25:                                     ; preds = %8
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !610
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !613
  tail call void @ukplat_terminate(i32 3) #9, !dbg !613
  unreachable

; <label>:26:                                     ; preds = %8
  %27 = icmp sgt i64 %23, 39, !dbg !617
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !620
  br i1 %27, label %29, label %28, !dbg !620

; <label>:28:                                     ; preds = %26
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !621
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !624
  tail call void @ukplat_terminate(i32 3) #9, !dbg !624
  unreachable

; <label>:29:                                     ; preds = %26
  %30 = add nsw i64 %23, -32, !dbg !628
  %31 = zext i16 %19 to i64, !dbg !629
  %32 = icmp sgt i64 %30, %31, !dbg !631
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !632
  br i1 %32, label %491, label %33, !dbg !632

; <label>:33:                                     ; preds = %29
  %34 = trunc i64 %30 to i16, !dbg !633
  %35 = sub i16 %19, %34, !dbg !633
  %36 = and i16 %15, -8, !dbg !634
  %37 = xor i16 %35, -1, !dbg !636
  %38 = icmp ugt i16 %36, %37, !dbg !638
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !639
  br i1 %38, label %491, label %39, !dbg !639

; <label>:39:                                     ; preds = %33
  %40 = load %struct.ip6_reassdata*, %struct.ip6_reassdata** @reassdatagrams, align 8, !dbg !640, !tbaa !351
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !644
  %41 = icmp eq %struct.ip6_reassdata* %40, null, !dbg !645
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !647
  br i1 %41, label %109, label %42, !dbg !647

; <label>:42:                                     ; preds = %39
  %43 = getelementptr inbounds %struct.ip6_frag_hdr, %struct.ip6_frag_hdr* %11, i64 0, i32 3
  %44 = load i32, i32* %43, align 1, !tbaa !648
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
  br label %55, !dbg !647

; <label>:55:                                     ; preds = %42, %101
  %56 = phi %struct.ip6_reassdata* [ %40, %42 ], [ %103, %101 ]
  %57 = phi %struct.ip6_reassdata* [ null, %42 ], [ %56, %101 ]
  %58 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %56, i64 0, i32 6, !dbg !649
  %59 = load i32, i32* %58, align 8, !dbg !649, !tbaa !652
  %60 = icmp eq i32 %44, %59, !dbg !653
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !654
  br i1 %60, label %61, label %101, !dbg !654

; <label>:61:                                     ; preds = %55
  %62 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %56, i64 0, i32 3, i32 0, i64 0, !dbg !655
  %63 = load i32, i32* %62, align 8, !dbg !655, !tbaa !437
  %64 = icmp eq i32 %45, %63, !dbg !655
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !655
  br i1 %64, label %65, label %101, !dbg !655

; <label>:65:                                     ; preds = %61
  %66 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %56, i64 0, i32 3, i32 0, i64 1, !dbg !655
  %67 = load i32, i32* %66, align 4, !dbg !655, !tbaa !437
  %68 = icmp eq i32 %46, %67, !dbg !655
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !655
  br i1 %68, label %69, label %101, !dbg !655

; <label>:69:                                     ; preds = %65
  %70 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %56, i64 0, i32 3, i32 0, i64 2, !dbg !655
  %71 = load i32, i32* %70, align 8, !dbg !655, !tbaa !437
  %72 = icmp eq i32 %47, %71, !dbg !655
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !655
  br i1 %72, label %73, label %101, !dbg !655

; <label>:73:                                     ; preds = %69
  %74 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %56, i64 0, i32 3, i32 0, i64 3, !dbg !655
  %75 = load i32, i32* %74, align 4, !dbg !655, !tbaa !437
  %76 = icmp eq i32 %48, %75, !dbg !655
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !655
  br i1 %76, label %77, label %101, !dbg !655

; <label>:77:                                     ; preds = %73
  %78 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %56, i64 0, i32 10, !dbg !655
  %79 = load i8, i8* %78, align 8, !dbg !655, !tbaa !439
  %80 = icmp eq i8 %49, %79, !dbg !655
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !656
  br i1 %80, label %81, label %101, !dbg !656

; <label>:81:                                     ; preds = %77
  %82 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %56, i64 0, i32 4, i32 0, i64 0, !dbg !657
  %83 = load i32, i32* %82, align 8, !dbg !657, !tbaa !437
  %84 = icmp eq i32 %50, %83, !dbg !657
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !657
  br i1 %84, label %85, label %101, !dbg !657

; <label>:85:                                     ; preds = %81
  %86 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %56, i64 0, i32 4, i32 0, i64 1, !dbg !657
  %87 = load i32, i32* %86, align 4, !dbg !657, !tbaa !437
  %88 = icmp eq i32 %51, %87, !dbg !657
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !657
  br i1 %88, label %89, label %101, !dbg !657

; <label>:89:                                     ; preds = %85
  %90 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %56, i64 0, i32 4, i32 0, i64 2, !dbg !657
  %91 = load i32, i32* %90, align 8, !dbg !657, !tbaa !437
  %92 = icmp eq i32 %52, %91, !dbg !657
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !657
  br i1 %92, label %93, label %101, !dbg !657

; <label>:93:                                     ; preds = %89
  %94 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %56, i64 0, i32 4, i32 0, i64 3, !dbg !657
  %95 = load i32, i32* %94, align 4, !dbg !657, !tbaa !437
  %96 = icmp eq i32 %53, %95, !dbg !657
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !657
  br i1 %96, label %97, label %101, !dbg !657

; <label>:97:                                     ; preds = %93
  %98 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %56, i64 0, i32 11, !dbg !657
  %99 = load i8, i8* %98, align 1, !dbg !657, !tbaa !445
  %100 = icmp eq i8 %54, %99, !dbg !657
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !658
  br i1 %100, label %105, label %101, !dbg !658

; <label>:101:                                    ; preds = %97, %93, %89, %85, %81, %77, %73, %69, %65, %61, %55
  %102 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %56, i64 0, i32 0, !dbg !659
  %103 = load %struct.ip6_reassdata*, %struct.ip6_reassdata** %102, align 8, !dbg !659, !tbaa !371
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !660
  %104 = icmp eq %struct.ip6_reassdata* %103, null, !dbg !645
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !647
  br i1 %104, label %109, label %55, !dbg !647, !llvm.loop !661

; <label>:105:                                    ; preds = %97
  %106 = bitcast %struct.ip6_reassdata* %56 to i8*, !dbg !642
  %107 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 10, i32 11), align 2, !dbg !663, !tbaa !665
  %108 = add i16 %107, 1, !dbg !663
  store i16 %108, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 10, i32 11), align 2, !dbg !663, !tbaa !665
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !666
  br label %198

; <label>:109:                                    ; preds = %101, %39
  %110 = phi %struct.ip6_reassdata* [ null, %39 ], [ %56, %101 ], !dbg !667
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !668
  %111 = tail call i8* @memp_malloc(i32 13) #8, !dbg !669
  %112 = bitcast i8* %111 to %struct.ip6_reassdata*, !dbg !672
  %113 = icmp eq i8* %111, null, !dbg !673
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !675
  br i1 %113, label %114, label %165, !dbg !675

; <label>:114:                                    ; preds = %109
  %115 = zext i16 %12 to i32, !dbg !676
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !689
  %116 = load %struct.ip6_reassdata*, %struct.ip6_reassdata** @reassdatagrams, align 8, !dbg !690, !tbaa !351
  br label %117, !dbg !689

; <label>:117:                                    ; preds = %143, %114
  %118 = phi %struct.ip6_reassdata* [ %144, %143 ], [ %116, %114 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !694
  %119 = icmp eq %struct.ip6_reassdata* %118, null, !dbg !695
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !694
  br i1 %119, label %136, label %120, !dbg !694

; <label>:120:                                    ; preds = %117, %131
  %121 = phi %struct.ip6_reassdata* [ %132, %131 ], [ %118, %117 ]
  %122 = phi %struct.ip6_reassdata* [ %134, %131 ], [ %118, %117 ]
  %123 = icmp eq %struct.ip6_reassdata* %122, %112, !dbg !696
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !699
  br i1 %123, label %131, label %124, !dbg !699

; <label>:124:                                    ; preds = %120
  %125 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %122, i64 0, i32 9, !dbg !700
  %126 = load i8, i8* %125, align 1, !dbg !700, !tbaa !361
  %127 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %121, i64 0, i32 9, !dbg !703
  %128 = load i8, i8* %127, align 1, !dbg !703, !tbaa !361
  %129 = icmp ugt i8 %126, %128, !dbg !704
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !705
  br i1 %129, label %131, label %130, !dbg !705

; <label>:130:                                    ; preds = %124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !706
  br label %131, !dbg !706

; <label>:131:                                    ; preds = %130, %124, %120
  %132 = phi %struct.ip6_reassdata* [ %122, %130 ], [ %121, %124 ], [ %121, %120 ], !dbg !708
  %133 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %122, i64 0, i32 0, !dbg !709
  %134 = load %struct.ip6_reassdata*, %struct.ip6_reassdata** %133, align 8, !dbg !709, !tbaa !371
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !694
  %135 = icmp eq %struct.ip6_reassdata* %134, null, !dbg !695
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !694
  br i1 %135, label %136, label %120, !dbg !694, !llvm.loop !710

; <label>:136:                                    ; preds = %131, %117
  %137 = phi %struct.ip6_reassdata* [ null, %117 ], [ %132, %131 ], !dbg !713
  %138 = icmp eq %struct.ip6_reassdata* %137, %112, !dbg !714
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !716
  br i1 %138, label %151, label %139, !dbg !716

; <label>:139:                                    ; preds = %136
  %140 = icmp eq %struct.ip6_reassdata* %137, null, !dbg !717
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !719
  br i1 %140, label %143, label %141, !dbg !719

; <label>:141:                                    ; preds = %139
  tail call fastcc void @ip6_reass_free_complete_datagram(%struct.ip6_reassdata* nonnull %137) #8, !dbg !720
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !722
  %142 = load %struct.ip6_reassdata*, %struct.ip6_reassdata** @reassdatagrams, align 8, !dbg !723
  br label %143, !dbg !722

; <label>:143:                                    ; preds = %141, %139
  %144 = phi %struct.ip6_reassdata* [ %118, %139 ], [ %142, %141 ], !dbg !723
  %145 = load i16, i16* @ip6_reass_pbufcount, align 2, !dbg !724, !tbaa !512
  %146 = zext i16 %145 to i32, !dbg !724
  %147 = add nuw nsw i32 %146, %115, !dbg !725
  %148 = icmp ugt i32 %147, 10, !dbg !726
  %149 = icmp ne %struct.ip6_reassdata* %144, null, !dbg !727
  %150 = and i1 %149, %148, !dbg !728
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !729
  br i1 %150, label %117, label %151, !dbg !729, !llvm.loop !730

; <label>:151:                                    ; preds = %143, %136
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !733
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !734
  %152 = tail call i8* @memp_malloc(i32 13) #8, !dbg !735
  %153 = bitcast i8* %152 to %struct.ip6_reassdata*, !dbg !736
  %154 = icmp eq i8* %152, null, !dbg !737
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !739
  br i1 %154, label %491, label %155, !dbg !739

; <label>:155:                                    ; preds = %151
  %156 = load %struct.ip6_reassdata*, %struct.ip6_reassdata** @reassdatagrams, align 8, !dbg !740, !tbaa !351
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !743
  %157 = icmp eq %struct.ip6_reassdata* %156, null, !dbg !744
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !746
  br i1 %157, label %165, label %158, !dbg !746

; <label>:158:                                    ; preds = %155, %163
  %159 = phi %struct.ip6_reassdata* [ %161, %163 ], [ %156, %155 ]
  %160 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %159, i64 0, i32 0, !dbg !747
  %161 = load %struct.ip6_reassdata*, %struct.ip6_reassdata** %160, align 8, !dbg !747, !tbaa !371
  %162 = icmp eq %struct.ip6_reassdata* %161, %153, !dbg !750
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !751
  br i1 %162, label %165, label %163, !dbg !751

; <label>:163:                                    ; preds = %158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !752
  %164 = icmp eq %struct.ip6_reassdata* %161, null, !dbg !744
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !746
  br i1 %164, label %165, label %158, !dbg !746, !llvm.loop !753

; <label>:165:                                    ; preds = %158, %163, %155, %109
  %166 = phi %struct.ip6_reassdata* [ %110, %109 ], [ null, %155 ], [ %159, %158 ], [ null, %163 ], !dbg !755
  %167 = phi i8* [ %111, %109 ], [ %152, %155 ], [ %152, %163 ], [ %152, %158 ], !dbg !756
  %168 = phi %struct.ip6_reassdata* [ %112, %109 ], [ %153, %155 ], [ %153, %163 ], [ %153, %158 ], !dbg !756
  %169 = tail call i8* @memset(i8* %167, i32 0, i64 88) #8, !dbg !757
  %170 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %168, i64 0, i32 9, !dbg !758
  store i8 60, i8* %170, align 1, !dbg !759, !tbaa !361
  %171 = load i64, i64* bitcast (%struct.ip6_reassdata** @reassdatagrams to i64*), align 8, !dbg !760, !tbaa !351
  %172 = bitcast %struct.ip6_reassdata* %168 to i64*, !dbg !761
  store i64 %171, i64* %172, align 8, !dbg !761, !tbaa !371
  store i8* %167, i8** bitcast (%struct.ip6_reassdata** @reassdatagrams to i8**), align 8, !dbg !762, !tbaa !351
  %173 = load i64, i64* bitcast (%struct.ip6_hdr** getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 3) to i64*), align 8, !dbg !763, !tbaa !596
  %174 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %168, i64 0, i32 2, !dbg !764
  %175 = bitcast %struct.ip6_hdr** %174 to i64*, !dbg !765
  store i64 %173, i64* %175, align 8, !dbg !765, !tbaa !419
  %176 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %168, i64 0, i32 3, !dbg !766
  %177 = bitcast %struct.ip6_addr_packed* %176 to i8*, !dbg !766
  %178 = inttoptr i64 %173 to %struct.ip6_hdr*, !dbg !766
  %179 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %178, i64 0, i32 4, !dbg !766
  %180 = bitcast %struct.ip6_addr_packed* %179 to i8*, !dbg !766
  %181 = tail call i8* @memcpy(i8* nonnull %177, i8* nonnull %180, i64 16) #8, !dbg !766
  %182 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %168, i64 0, i32 4, !dbg !767
  %183 = bitcast %struct.ip6_addr_packed* %182 to i8*, !dbg !767
  %184 = load %struct.ip6_hdr*, %struct.ip6_hdr** getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 3), align 8, !dbg !767, !tbaa !596
  %185 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %184, i64 0, i32 5, !dbg !767
  %186 = bitcast %struct.ip6_addr_packed* %185 to i8*, !dbg !767
  %187 = tail call i8* @memcpy(i8* nonnull %183, i8* nonnull %186, i64 16) #8, !dbg !767
  %188 = load i8, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 1), align 4, !dbg !768, !tbaa !769
  %189 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %168, i64 0, i32 10, !dbg !770
  store i8 %188, i8* %189, align 8, !dbg !771, !tbaa !439
  %190 = load i8, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 1), align 4, !dbg !772, !tbaa !769
  %191 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %168, i64 0, i32 11, !dbg !773
  store i8 %190, i8* %191, align 1, !dbg !774, !tbaa !445
  %192 = getelementptr inbounds %struct.ip6_frag_hdr, %struct.ip6_frag_hdr* %11, i64 0, i32 3, !dbg !775
  %193 = load i32, i32* %192, align 1, !dbg !775, !tbaa !648
  %194 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %168, i64 0, i32 6, !dbg !776
  store i32 %193, i32* %194, align 8, !dbg !777, !tbaa !652
  %195 = getelementptr inbounds %struct.ip6_frag_hdr, %struct.ip6_frag_hdr* %11, i64 0, i32 0, !dbg !778
  %196 = load i8, i8* %195, align 1, !dbg !778, !tbaa !779
  %197 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %168, i64 0, i32 8, !dbg !780
  store i8 %196, i8* %197, align 2, !dbg !781, !tbaa !782
  br label %198, !dbg !783

; <label>:198:                                    ; preds = %105, %165
  %199 = phi %struct.ip6_reassdata* [ %166, %165 ], [ %57, %105 ], !dbg !755
  %200 = phi i8* [ %167, %165 ], [ %106, %105 ], !dbg !755
  %201 = phi %struct.ip6_reassdata* [ %168, %165 ], [ %56, %105 ], !dbg !755
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !756
  %202 = load i16, i16* @ip6_reass_pbufcount, align 2, !dbg !784, !tbaa !512
  %203 = zext i16 %202 to i32, !dbg !784
  %204 = zext i16 %12 to i32, !dbg !786
  %205 = add nuw nsw i32 %203, %204, !dbg !787
  %206 = icmp ugt i32 %205, 10, !dbg !788
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !789
  br i1 %206, label %207, label %262, !dbg !789

; <label>:207:                                    ; preds = %198
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !794
  %208 = load %struct.ip6_reassdata*, %struct.ip6_reassdata** @reassdatagrams, align 8, !dbg !795, !tbaa !351
  br label %209, !dbg !794

; <label>:209:                                    ; preds = %240, %207
  %210 = phi i16 [ %241, %240 ], [ %202, %207 ]
  %211 = phi %struct.ip6_reassdata* [ %242, %240 ], [ %208, %207 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !798
  %212 = icmp eq %struct.ip6_reassdata* %211, null, !dbg !799
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !798
  br i1 %212, label %229, label %213, !dbg !798

; <label>:213:                                    ; preds = %209, %224
  %214 = phi %struct.ip6_reassdata* [ %225, %224 ], [ %211, %209 ]
  %215 = phi %struct.ip6_reassdata* [ %227, %224 ], [ %211, %209 ]
  %216 = icmp eq %struct.ip6_reassdata* %215, %201, !dbg !800
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !801
  br i1 %216, label %224, label %217, !dbg !801

; <label>:217:                                    ; preds = %213
  %218 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %215, i64 0, i32 9, !dbg !802
  %219 = load i8, i8* %218, align 1, !dbg !802, !tbaa !361
  %220 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %214, i64 0, i32 9, !dbg !803
  %221 = load i8, i8* %220, align 1, !dbg !803, !tbaa !361
  %222 = icmp ugt i8 %219, %221, !dbg !804
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !805
  br i1 %222, label %224, label %223, !dbg !805

; <label>:223:                                    ; preds = %217
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !806
  br label %224, !dbg !806

; <label>:224:                                    ; preds = %223, %217, %213
  %225 = phi %struct.ip6_reassdata* [ %215, %223 ], [ %214, %217 ], [ %214, %213 ], !dbg !807
  %226 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %215, i64 0, i32 0, !dbg !808
  %227 = load %struct.ip6_reassdata*, %struct.ip6_reassdata** %226, align 8, !dbg !808, !tbaa !371
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !798
  %228 = icmp eq %struct.ip6_reassdata* %227, null, !dbg !799
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !798
  br i1 %228, label %229, label %213, !dbg !798, !llvm.loop !710

; <label>:229:                                    ; preds = %224, %209
  %230 = phi %struct.ip6_reassdata* [ null, %209 ], [ %225, %224 ], !dbg !809
  %231 = icmp eq %struct.ip6_reassdata* %230, %201, !dbg !810
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !811
  br i1 %231, label %232, label %235, !dbg !811

; <label>:232:                                    ; preds = %229
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !812
  %233 = zext i16 %210 to i32, !dbg !814
  %234 = add nuw nsw i32 %233, %204, !dbg !816
  br label %249, !dbg !812

; <label>:235:                                    ; preds = %229
  %236 = icmp eq %struct.ip6_reassdata* %230, null, !dbg !817
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !818
  br i1 %236, label %240, label %237, !dbg !818

; <label>:237:                                    ; preds = %235
  tail call fastcc void @ip6_reass_free_complete_datagram(%struct.ip6_reassdata* nonnull %230) #8, !dbg !819
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !820
  %238 = load %struct.ip6_reassdata*, %struct.ip6_reassdata** @reassdatagrams, align 8, !dbg !821
  %239 = load i16, i16* @ip6_reass_pbufcount, align 2, !dbg !822, !tbaa !512
  br label %240, !dbg !820

; <label>:240:                                    ; preds = %237, %235
  %241 = phi i16 [ %210, %235 ], [ %239, %237 ], !dbg !822
  %242 = phi %struct.ip6_reassdata* [ %211, %235 ], [ %238, %237 ], !dbg !821
  %243 = zext i16 %241 to i32, !dbg !822
  %244 = add nuw nsw i32 %243, %204, !dbg !823
  %245 = icmp ugt i32 %244, 10, !dbg !824
  %246 = icmp ne %struct.ip6_reassdata* %242, null, !dbg !825
  %247 = and i1 %246, %245, !dbg !826
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !827
  br i1 %247, label %209, label %248, !dbg !827, !llvm.loop !730

; <label>:248:                                    ; preds = %240
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !828
  br label %249, !dbg !828

; <label>:249:                                    ; preds = %232, %248
  %250 = phi i32 [ %234, %232 ], [ %244, %248 ], !dbg !816
  %251 = phi %struct.ip6_reassdata* [ %211, %232 ], [ %242, %248 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !828
  %252 = icmp ult i32 %250, 11, !dbg !829
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !830
  br i1 %252, label %253, label %491, !dbg !830

; <label>:253:                                    ; preds = %249
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !831
  %254 = icmp eq %struct.ip6_reassdata* %251, null, !dbg !834
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !836
  br i1 %254, label %262, label %255, !dbg !836

; <label>:255:                                    ; preds = %253, %260
  %256 = phi %struct.ip6_reassdata* [ %258, %260 ], [ %251, %253 ]
  %257 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %256, i64 0, i32 0, !dbg !837
  %258 = load %struct.ip6_reassdata*, %struct.ip6_reassdata** %257, align 8, !dbg !837, !tbaa !371
  %259 = icmp eq %struct.ip6_reassdata* %258, %201, !dbg !840
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !841
  br i1 %259, label %262, label %260, !dbg !841

; <label>:260:                                    ; preds = %255
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !842
  %261 = icmp eq %struct.ip6_reassdata* %258, null, !dbg !834
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !836
  br i1 %261, label %262, label %255, !dbg !836, !llvm.loop !843

; <label>:262:                                    ; preds = %255, %260, %253, %198
  %263 = phi %struct.ip6_reassdata* [ %199, %198 ], [ null, %253 ], [ %256, %255 ], [ null, %260 ], !dbg !845
  %264 = tail call zeroext i8 @pbuf_header_force(%struct.pbuf* %0, i16 signext 4) #8, !dbg !846
  %265 = icmp eq i8 %264, 0, !dbg !848
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !851
  br i1 %265, label %267, label %266, !dbg !851

; <label>:266:                                    ; preds = %262
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !852
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !855
  tail call void @ukplat_terminate(i32 3) #9, !dbg !855
  unreachable

; <label>:267:                                    ; preds = %262
  %268 = bitcast i8** %9 to %struct.ip6_reass_helper**, !dbg !859
  %269 = load %struct.ip6_reass_helper*, %struct.ip6_reass_helper** %268, align 8, !dbg !859, !tbaa !404
  %270 = add i16 %35, %36, !dbg !862
  %271 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %201, i64 0, i32 1, !dbg !864
  %272 = load %struct.pbuf*, %struct.pbuf** %271, align 8, !dbg !864, !tbaa !402
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !867
  %273 = icmp eq %struct.pbuf* %272, null, !dbg !868
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !870
  %274 = bitcast %struct.ip6_reass_helper* %269 to i8*, !dbg !870
  br i1 %273, label %323, label %275, !dbg !870

; <label>:275:                                    ; preds = %267, %309
  %276 = phi %struct.pbuf* [ %312, %309 ], [ %272, %267 ]
  %277 = phi i8 [ %310, %309 ], [ 1, %267 ]
  %278 = phi %struct.ip6_reass_helper* [ %281, %309 ], [ null, %267 ]
  %279 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %276, i64 0, i32 1, !dbg !871
  %280 = bitcast i8** %279 to %struct.ip6_reass_helper**, !dbg !871
  %281 = load %struct.ip6_reass_helper*, %struct.ip6_reass_helper** %280, align 8, !dbg !871, !tbaa !404
  %282 = getelementptr inbounds %struct.ip6_reass_helper, %struct.ip6_reass_helper* %281, i64 0, i32 1, !dbg !874
  %283 = load i16, i16* %282, align 1, !dbg !874, !tbaa !408
  %284 = icmp ult i16 %36, %283, !dbg !876
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !877
  br i1 %284, label %285, label %296, !dbg !877

; <label>:285:                                    ; preds = %275
  %286 = icmp ugt i16 %270, %283, !dbg !878
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !881
  br i1 %286, label %491, label %287, !dbg !881

; <label>:287:                                    ; preds = %285
  %288 = icmp eq %struct.ip6_reass_helper* %278, null, !dbg !882
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !884
  br i1 %288, label %295, label %289, !dbg !884

; <label>:289:                                    ; preds = %287
  %290 = getelementptr inbounds %struct.ip6_reass_helper, %struct.ip6_reass_helper* %278, i64 0, i32 2, !dbg !885
  %291 = load i16, i16* %290, align 1, !dbg !885, !tbaa !888
  %292 = icmp ult i16 %36, %291, !dbg !889
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !890
  br i1 %292, label %491, label %293, !dbg !890

; <label>:293:                                    ; preds = %289
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !891
  %294 = getelementptr inbounds %struct.ip6_reass_helper, %struct.ip6_reass_helper* %278, i64 0, i32 0, !dbg !892
  store %struct.pbuf* %0, %struct.pbuf** %294, align 1, !dbg !895, !tbaa !414
  br label %314, !dbg !896

; <label>:295:                                    ; preds = %287
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !891
  store %struct.pbuf* %0, %struct.pbuf** %271, align 8, !dbg !897, !tbaa !402
  br label %314

; <label>:296:                                    ; preds = %275
  %297 = icmp eq i16 %36, %283, !dbg !899
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !901
  br i1 %297, label %495, label %298, !dbg !901

; <label>:298:                                    ; preds = %296
  %299 = getelementptr inbounds %struct.ip6_reass_helper, %struct.ip6_reass_helper* %281, i64 0, i32 2, !dbg !902
  %300 = load i16, i16* %299, align 1, !dbg !902, !tbaa !888
  %301 = icmp ult i16 %36, %300, !dbg !904
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !905
  br i1 %301, label %491, label %302, !dbg !905

; <label>:302:                                    ; preds = %298
  %303 = icmp eq %struct.ip6_reass_helper* %278, null, !dbg !906
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !909
  br i1 %303, label %309, label %304, !dbg !909

; <label>:304:                                    ; preds = %302
  %305 = getelementptr inbounds %struct.ip6_reass_helper, %struct.ip6_reass_helper* %278, i64 0, i32 2, !dbg !910
  %306 = load i16, i16* %305, align 1, !dbg !910, !tbaa !888
  %307 = icmp eq i16 %306, %283, !dbg !913
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !914
  br i1 %307, label %309, label %308, !dbg !914

; <label>:308:                                    ; preds = %304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !915
  br label %309, !dbg !915

; <label>:309:                                    ; preds = %304, %302, %308
  %310 = phi i8 [ 0, %308 ], [ %277, %304 ], [ %277, %302 ], !dbg !917
  %311 = getelementptr inbounds %struct.ip6_reass_helper, %struct.ip6_reass_helper* %281, i64 0, i32 0, !dbg !918
  %312 = load %struct.pbuf*, %struct.pbuf** %311, align 1, !dbg !918, !tbaa !414
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !919
  %313 = icmp eq %struct.pbuf* %312, null, !dbg !868
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !870
  br i1 %313, label %315, label %275, !dbg !870, !llvm.loop !920

; <label>:314:                                    ; preds = %293, %295
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %324, !dbg !922

; <label>:315:                                    ; preds = %309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !922
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !923
  %316 = getelementptr inbounds %struct.ip6_reass_helper, %struct.ip6_reass_helper* %281, i64 0, i32 2, !dbg !926
  %317 = load i16, i16* %316, align 1, !dbg !926, !tbaa !888
  %318 = icmp ugt i16 %317, %36, !dbg !926
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !931
  br i1 %318, label %319, label %320, !dbg !931

; <label>:319:                                    ; preds = %315
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !932
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !935
  tail call void @ukplat_terminate(i32 3) #9, !dbg !935
  unreachable

; <label>:320:                                    ; preds = %315
  %321 = getelementptr inbounds %struct.ip6_reass_helper, %struct.ip6_reass_helper* %281, i64 0, i32 0, !dbg !939
  store %struct.pbuf* %0, %struct.pbuf** %321, align 1, !dbg !940, !tbaa !414
  %322 = icmp eq i16 %317, %36, !dbg !941
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !943
  br i1 %322, label %327, label %324, !dbg !943

; <label>:323:                                    ; preds = %267
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !922
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !923
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !944
  store %struct.pbuf* %0, %struct.pbuf** %271, align 8, !dbg !947, !tbaa !402
  br label %324

; <label>:324:                                    ; preds = %320, %323, %314
  %325 = phi %struct.pbuf* [ %276, %314 ], [ null, %323 ], [ null, %320 ]
  %326 = phi i8 [ %277, %314 ], [ 1, %323 ], [ 0, %320 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %327, !dbg !948

; <label>:327:                                    ; preds = %324, %320
  %328 = phi %struct.pbuf* [ null, %320 ], [ %325, %324 ]
  %329 = phi i8 [ %310, %320 ], [ %326, %324 ], !dbg !917
  %330 = load i16, i16* @ip6_reass_pbufcount, align 2, !dbg !948, !tbaa !512
  %331 = add i16 %330, %12, !dbg !949
  store i16 %331, i16* @ip6_reass_pbufcount, align 2, !dbg !950, !tbaa !512
  %332 = icmp eq i16 %36, 0, !dbg !951
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !953
  br i1 %332, label %333, label %339, !dbg !953

; <label>:333:                                    ; preds = %327
  %334 = load i64, i64* bitcast (%struct.ip6_hdr** getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 3) to i64*), align 8, !dbg !954, !tbaa !596
  %335 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %201, i64 0, i32 2, !dbg !956
  %336 = bitcast %struct.ip6_hdr** %335 to i64*, !dbg !957
  store i64 %334, i64* %336, align 8, !dbg !957, !tbaa !419
  %337 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %201, i64 0, i32 5, i64 0, !dbg !958
  %338 = tail call i8* @memcpy(i8* nonnull %337, i8* %274, i64 12) #8, !dbg !958
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !959
  br label %339, !dbg !959

; <label>:339:                                    ; preds = %333, %327
  %340 = getelementptr inbounds %struct.ip6_reass_helper, %struct.ip6_reass_helper* %269, i64 0, i32 0, !dbg !960
  store %struct.pbuf* %328, %struct.pbuf** %340, align 1, !dbg !961, !tbaa !414
  %341 = getelementptr inbounds %struct.ip6_reass_helper, %struct.ip6_reass_helper* %269, i64 0, i32 1, !dbg !962
  store i16 %36, i16* %341, align 1, !dbg !963, !tbaa !408
  %342 = getelementptr inbounds %struct.ip6_reass_helper, %struct.ip6_reass_helper* %269, i64 0, i32 2, !dbg !964
  store i16 %270, i16* %342, align 1, !dbg !965, !tbaa !888
  %343 = and i16 %15, 1, !dbg !966
  %344 = icmp eq i16 %343, 0, !dbg !968
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !969
  br i1 %344, label %345, label %347, !dbg !969

; <label>:345:                                    ; preds = %339
  %346 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %201, i64 0, i32 7, !dbg !970
  store i16 %270, i16* %346, align 4, !dbg !972, !tbaa !973
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !974
  br label %347, !dbg !974

; <label>:347:                                    ; preds = %345, %339
  %348 = load %struct.pbuf*, %struct.pbuf** %271, align 8, !dbg !975, !tbaa !402
  %349 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %348, i64 0, i32 1, !dbg !976
  %350 = bitcast i8** %349 to %struct.ip6_reass_helper**, !dbg !976
  %351 = load %struct.ip6_reass_helper*, %struct.ip6_reass_helper** %350, align 8, !dbg !976, !tbaa !404
  %352 = getelementptr inbounds %struct.ip6_reass_helper, %struct.ip6_reass_helper* %351, i64 0, i32 1, !dbg !977
  %353 = load i16, i16* %352, align 1, !dbg !977, !tbaa !408
  %354 = icmp eq i16 %353, 0, !dbg !979
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !980
  %355 = bitcast %struct.ip6_reass_helper* %351 to i8*, !dbg !980
  br i1 %354, label %357, label %356, !dbg !980

; <label>:356:                                    ; preds = %347
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !981
  br label %357, !dbg !981

; <label>:357:                                    ; preds = %347, %356
  %358 = phi i8 [ 0, %356 ], [ %329, %347 ], !dbg !983
  %359 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %201, i64 0, i32 7, !dbg !985
  %360 = load i16, i16* %359, align 4, !dbg !985, !tbaa !973
  %361 = icmp eq i16 %360, 0, !dbg !987
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !988
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !917
  br i1 %361, label %362, label %363, !dbg !988

; <label>:362:                                    ; preds = %357
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !989
  br label %490, !dbg !990

; <label>:363:                                    ; preds = %357
  %364 = icmp ne %struct.pbuf* %328, null, !dbg !991
  %365 = icmp ne i8 %358, 0, !dbg !992
  %366 = and i1 %365, %364, !dbg !992
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !989
  br i1 %366, label %367, label %388, !dbg !989

; <label>:367:                                    ; preds = %363
  %368 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %328, i64 0, i32 1, !dbg !993
  %369 = bitcast i8** %368 to %struct.ip6_reass_helper**, !dbg !993
  %370 = load %struct.ip6_reass_helper*, %struct.ip6_reass_helper** %369, align 8, !dbg !993, !tbaa !404
  %371 = getelementptr inbounds %struct.ip6_reass_helper, %struct.ip6_reass_helper* %370, i64 0, i32 1, !dbg !995
  %372 = load i16, i16* %371, align 1, !dbg !995, !tbaa !408
  %373 = icmp eq i16 %270, %372, !dbg !997
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !998
  br i1 %373, label %374, label %490, !dbg !998

; <label>:374:                                    ; preds = %367, %379
  %375 = phi %struct.ip6_reass_helper* [ %384, %379 ], [ %370, %367 ]
  %376 = getelementptr inbounds %struct.ip6_reass_helper, %struct.ip6_reass_helper* %375, i64 0, i32 0, !dbg !999
  %377 = load %struct.pbuf*, %struct.pbuf** %376, align 1, !dbg !999, !tbaa !414
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !989
  %378 = icmp eq %struct.pbuf* %377, null, !dbg !991
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !989
  br i1 %378, label %388, label %379, !dbg !989, !llvm.loop !1000

; <label>:379:                                    ; preds = %374
  %380 = getelementptr inbounds %struct.ip6_reass_helper, %struct.ip6_reass_helper* %375, i64 0, i32 2
  %381 = load i16, i16* %380, align 1, !dbg !1002, !tbaa !888
  %382 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %377, i64 0, i32 1, !dbg !993
  %383 = bitcast i8** %382 to %struct.ip6_reass_helper**, !dbg !993
  %384 = load %struct.ip6_reass_helper*, %struct.ip6_reass_helper** %383, align 8, !dbg !993, !tbaa !404
  %385 = getelementptr inbounds %struct.ip6_reass_helper, %struct.ip6_reass_helper* %384, i64 0, i32 1, !dbg !995
  %386 = load i16, i16* %385, align 1, !dbg !995, !tbaa !408
  %387 = icmp eq i16 %381, %386, !dbg !997
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !998
  br i1 %387, label %374, label %490, !dbg !998

; <label>:388:                                    ; preds = %374, %363
  %389 = icmp eq i8 %358, 0, !dbg !1003
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !990
  br i1 %389, label %499, label %390, !dbg !990

; <label>:390:                                    ; preds = %388
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1004
  %391 = icmp eq %struct.ip6_reass_helper* %351, null, !dbg !1005
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1004
  br i1 %391, label %413, label %392, !dbg !1004

; <label>:392:                                    ; preds = %390, %406
  %393 = phi %struct.ip6_reass_helper* [ %400, %406 ], [ %351, %390 ]
  %394 = getelementptr inbounds %struct.ip6_reass_helper, %struct.ip6_reass_helper* %393, i64 0, i32 0, !dbg !1006
  %395 = load %struct.pbuf*, %struct.pbuf** %394, align 1, !dbg !1006, !tbaa !414
  %396 = icmp eq %struct.pbuf* %395, null, !dbg !1007
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1008
  br i1 %396, label %405, label %397, !dbg !1008

; <label>:397:                                    ; preds = %392
  %398 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %395, i64 0, i32 1, !dbg !1009
  %399 = bitcast i8** %398 to %struct.ip6_reass_helper**, !dbg !1009
  %400 = load %struct.ip6_reass_helper*, %struct.ip6_reass_helper** %399, align 8, !dbg !1009, !tbaa !404
  %401 = tail call zeroext i8 @pbuf_remove_header(%struct.pbuf* nonnull %395, i64 8) #8, !dbg !1010
  %402 = tail call zeroext i8 @pbuf_remove_header(%struct.pbuf* nonnull %395, i64 4) #8, !dbg !1011
  %403 = icmp eq i8 %402, 0, !dbg !1013
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1016
  br i1 %403, label %406, label %404, !dbg !1016

; <label>:404:                                    ; preds = %397
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !1017
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1020
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1020
  unreachable

; <label>:405:                                    ; preds = %392
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1004
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1004
  br label %409, !dbg !1004

; <label>:406:                                    ; preds = %397
  %407 = load %struct.pbuf*, %struct.pbuf** %271, align 8, !dbg !1024, !tbaa !402
  tail call void @pbuf_cat(%struct.pbuf* %407, %struct.pbuf* nonnull %395) #8, !dbg !1025
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1004
  %408 = icmp eq %struct.ip6_reass_helper* %400, null, !dbg !1005
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1004
  br i1 %408, label %409, label %392, !dbg !1004, !llvm.loop !1027

; <label>:409:                                    ; preds = %406, %405
  %410 = load %struct.pbuf*, %struct.pbuf** %271, align 8, !dbg !1029, !tbaa !402
  %411 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %410, i64 0, i32 1
  %412 = load i8*, i8** %411, align 8, !dbg !1030, !tbaa !404
  br label %413, !dbg !1029

; <label>:413:                                    ; preds = %409, %390
  %414 = phi i8** [ %411, %409 ], [ %349, %390 ], !dbg !1030
  %415 = phi i8* [ %412, %409 ], [ %355, %390 ], !dbg !1030
  %416 = phi %struct.pbuf* [ %410, %409 ], [ %348, %390 ], !dbg !1029
  %417 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %201, i64 0, i32 5, i64 0, !dbg !1030
  %418 = tail call i8* @memcpy(i8* %415, i8* nonnull %417, i64 4) #8, !dbg !1030
  %419 = tail call zeroext i8 @pbuf_remove_header(%struct.pbuf* %416, i64 4) #8, !dbg !1031
  %420 = icmp eq i8 %419, 0, !dbg !1033
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1036
  br i1 %420, label %422, label %421, !dbg !1036

; <label>:421:                                    ; preds = %413
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !1037
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1040
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1040
  unreachable

; <label>:422:                                    ; preds = %413
  %423 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %201, i64 0, i32 2, !dbg !1044
  %424 = bitcast %struct.ip6_hdr** %423 to i8**, !dbg !1044
  %425 = load i8*, i8** %424, align 8, !dbg !1044, !tbaa !419
  %426 = getelementptr inbounds i8, i8* %425, i64 8, !dbg !1044
  %427 = bitcast i8** %414 to i64*, !dbg !1044
  %428 = load i64, i64* %427, align 8, !dbg !1044, !tbaa !404
  %429 = ptrtoint i8* %425 to i64, !dbg !1044
  %430 = sub i64 %428, %429, !dbg !1044
  %431 = tail call i8* @memmove(i8* nonnull %426, i8* %425, i64 %430) #8, !dbg !1044
  %432 = load i8*, i8** %424, align 8, !dbg !1045, !tbaa !419
  %433 = getelementptr inbounds i8, i8* %432, i64 8, !dbg !1046
  %434 = load i16, i16* %359, align 4, !dbg !1048, !tbaa !973
  %435 = load i64, i64* %427, align 8, !dbg !1049, !tbaa !404
  %436 = ptrtoint i8* %433 to i64, !dbg !1050
  %437 = sub i64 %435, %436, !dbg !1050
  %438 = trunc i64 %437 to i16, !dbg !1051
  %439 = add i16 %434, -40, !dbg !1051
  %440 = add i16 %439, %438, !dbg !1051
  store i16 %440, i16* %359, align 4, !dbg !1052, !tbaa !973
  %441 = tail call zeroext i16 @lwip_htons(i16 zeroext %440) #8, !dbg !1053
  %442 = getelementptr inbounds i8, i8* %432, i64 12, !dbg !1054
  %443 = bitcast i8* %442 to i16*, !dbg !1054
  store i16 %441, i16* %443, align 1, !dbg !1055, !tbaa !599
  %444 = getelementptr inbounds i8, i8* %432, i64 14, !dbg !1056
  %445 = load i8, i8* %444, align 1, !dbg !1056, !tbaa !1057
  %446 = icmp eq i8 %445, 44, !dbg !1058
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1059
  br i1 %446, label %461, label %447, !dbg !1059

; <label>:447:                                    ; preds = %422
  %448 = getelementptr inbounds i8, i8* %432, i64 48, !dbg !1060
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1062
  %449 = load i8, i8* %448, align 1, !dbg !1063, !tbaa !769
  %450 = icmp eq i8 %449, 44, !dbg !1064
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1062
  br i1 %450, label %461, label %451, !dbg !1062

; <label>:451:                                    ; preds = %447, %451
  %452 = phi i8* [ %458, %451 ], [ %448, %447 ]
  %453 = getelementptr inbounds i8, i8* %452, i64 1, !dbg !1065
  %454 = load i8, i8* %453, align 1, !dbg !1065, !tbaa !769
  %455 = zext i8 %454 to i64, !dbg !1065
  %456 = shl nuw nsw i64 %455, 3, !dbg !1067
  %457 = add nuw nsw i64 %456, 8, !dbg !1067
  %458 = getelementptr inbounds i8, i8* %452, i64 %457, !dbg !1068
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1062
  %459 = load i8, i8* %458, align 1, !dbg !1063, !tbaa !769
  %460 = icmp eq i8 %459, 44, !dbg !1064
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1062
  br i1 %460, label %461, label %451, !dbg !1062, !llvm.loop !1069

; <label>:461:                                    ; preds = %451, %447, %422
  %462 = phi i8* [ %444, %422 ], [ %448, %447 ], [ %458, %451 ]
  %463 = getelementptr inbounds %struct.ip6_reassdata, %struct.ip6_reassdata* %201, i64 0, i32 8, !dbg !1071
  %464 = load i8, i8* %463, align 2, !dbg !1071, !tbaa !782
  store i8 %464, i8* %462, align 1, !dbg !1071, !tbaa !769
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %465 = load %struct.ip6_reassdata*, %struct.ip6_reassdata** @reassdatagrams, align 8, !dbg !1073, !tbaa !351
  %466 = icmp eq %struct.ip6_reassdata* %465, %201, !dbg !1075
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1076
  br i1 %466, label %467, label %470, !dbg !1076

; <label>:467:                                    ; preds = %461
  %468 = bitcast %struct.ip6_reassdata* %201 to i64*, !dbg !1077
  %469 = load i64, i64* %468, align 8, !dbg !1077, !tbaa !371
  store i64 %469, i64* bitcast (%struct.ip6_reassdata** @reassdatagrams to i64*), align 8, !dbg !1079, !tbaa !351
  br label %477, !dbg !1080

; <label>:470:                                    ; preds = %461
  %471 = icmp eq %struct.ip6_reassdata* %263, null, !dbg !1081
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1085
  br i1 %471, label %472, label %473, !dbg !1085

; <label>:472:                                    ; preds = %470
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0)) #7, !dbg !1086
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1089
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1089
  unreachable

; <label>:473:                                    ; preds = %470
  %474 = bitcast %struct.ip6_reassdata* %201 to i64*, !dbg !1093
  %475 = load i64, i64* %474, align 8, !dbg !1093, !tbaa !371
  %476 = bitcast %struct.ip6_reassdata* %263 to i64*, !dbg !1094
  store i64 %475, i64* %476, align 8, !dbg !1094, !tbaa !371
  br label %477

; <label>:477:                                    ; preds = %473, %467
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  tail call void @memp_free(i32 13, i8* %200) #8, !dbg !1095
  %478 = tail call zeroext i16 @pbuf_clen(%struct.pbuf* %416) #8, !dbg !1096
  %479 = load i16, i16* @ip6_reass_pbufcount, align 2, !dbg !1097, !tbaa !512
  %480 = icmp ult i16 %479, %478, !dbg !1097
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1100
  br i1 %480, label %481, label %482, !dbg !1100

; <label>:481:                                    ; preds = %477
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0)) #7, !dbg !1101
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1104
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1104
  unreachable

; <label>:482:                                    ; preds = %477
  %483 = sub i16 %479, %478, !dbg !1108
  store i16 %483, i16* @ip6_reass_pbufcount, align 2, !dbg !1109, !tbaa !512
  %484 = load i64, i64* %427, align 8, !dbg !1110, !tbaa !404
  %485 = sub i64 %484, %436, !dbg !1112
  %486 = trunc i64 %485 to i16, !dbg !1113
  %487 = tail call zeroext i8 @pbuf_header_force(%struct.pbuf* %416, i16 signext %486) #8, !dbg !1114
  %488 = icmp eq i8 %487, 0, !dbg !1114
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1115
  br i1 %488, label %499, label %489, !dbg !1115

; <label>:489:                                    ; preds = %482
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0)) #7, !dbg !1116
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1122
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1122
  unreachable

; <label>:490:                                    ; preds = %379, %367, %362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !990
  br label %499, !dbg !1128

; <label>:491:                                    ; preds = %298, %289, %285, %249, %151, %33, %29
  %492 = phi i16* [ getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 10, i32 8), %29 ], [ getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 10, i32 8), %33 ], [ getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 10, i32 6), %151 ], [ getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 10, i32 6), %249 ], [ getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 10, i32 8), %285 ], [ getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 10, i32 8), %289 ], [ getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 10, i32 8), %298 ]
  %493 = load i16, i16* %492, align 2, !dbg !1129, !tbaa !512
  %494 = add i16 %493, 1, !dbg !1129
  store i16 %494, i16* %492, align 2, !dbg !1129, !tbaa !512
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1129
  br label %495, !dbg !1131

; <label>:495:                                    ; preds = %296, %491
  %496 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 10, i32 3), align 2, !dbg !1131, !tbaa !1132
  %497 = add i16 %496, 1, !dbg !1131
  store i16 %497, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 10, i32 3), align 2, !dbg !1131, !tbaa !1132
  %498 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %0) #8, !dbg !1133
  br label %499, !dbg !1134

; <label>:499:                                    ; preds = %388, %490, %482, %495
  %500 = phi %struct.pbuf* [ null, %495 ], [ %416, %482 ], [ null, %490 ], [ null, %388 ], !dbg !917
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1135
  ret %struct.pbuf* %500, !dbg !1135
}

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8*, ...) unnamed_addr #3 !dbg !313 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !1137
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #6, !dbg !1137
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !1139
  call void @llvm.va_start(i8* nonnull %3), !dbg !1139
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @uk_pr_crit.__str.15, i64 0, i64 0), i32 198, i8* %0, %struct.__va_list_tag* nonnull %4) #8, !dbg !1140
  call void @llvm.va_end(i8* nonnull %3), !dbg !1143
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #6, !dbg !1144
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1144
  ret void, !dbg !1144
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
  %4 = tail call zeroext i16 @nd6_get_destination_mtu(%struct.ip6_addr* %2, %struct.netif* %1) #8, !dbg !1149
  %5 = add i16 %4, -48, !dbg !1151
  %6 = and i16 %5, -8, !dbg !1151
  %7 = load i32, i32* @ip6_frag.identification, align 4, !dbg !1155, !tbaa !437
  %8 = add i32 %7, 1, !dbg !1155
  store i32 %8, i32* @ip6_frag.identification, align 4, !dbg !1155, !tbaa !437
  %9 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 1, !dbg !1156
  %10 = load i8*, i8** %9, align 8, !dbg !1156, !tbaa !404
  %11 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 2, !dbg !1158
  %12 = load i16, i16* %11, align 8, !dbg !1158, !tbaa !1161
  %13 = icmp ugt i16 %12, 39, !dbg !1158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1162
  br i1 %13, label %15, label %14, !dbg !1162

; <label>:14:                                     ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0)) #7, !dbg !1163
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1166
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1166
  unreachable

; <label>:15:                                     ; preds = %3
  %16 = add i16 %12, -40, !dbg !1170
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1172
  %17 = icmp eq i16 %16, 0, !dbg !1172
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1172
  br i1 %17, label %129, label %18, !dbg !1172

; <label>:18:                                     ; preds = %15
  %19 = getelementptr inbounds i8, i8* %10, i64 6
  %20 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 11
  br label %21, !dbg !1172

; <label>:21:                                     ; preds = %18, %98
  %22 = phi i16 [ 40, %18 ], [ %99, %98 ]
  %23 = phi %struct.pbuf* [ %0, %18 ], [ %100, %98 ]
  %24 = phi i32 [ 0, %18 ], [ %127, %98 ]
  %25 = phi i16 [ 0, %18 ], [ %99, %98 ]
  %26 = phi i16 [ %16, %18 ], [ %126, %98 ]
  %27 = icmp ugt i16 %26, %6, !dbg !1173
  %28 = icmp ult i16 %26, %6, !dbg !1174
  %29 = select i1 %28, i16 %26, i16 %6, !dbg !1174
  %30 = tail call %struct.pbuf* @pbuf_alloc(i32 14, i16 zeroext 48, i32 640) #8, !dbg !1176
  %31 = icmp eq %struct.pbuf* %30, null, !dbg !1178
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1180
  br i1 %31, label %32, label %35, !dbg !1180

; <label>:32:                                     ; preds = %21
  %33 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 10, i32 6), align 2, !dbg !1181, !tbaa !1183
  %34 = add i16 %33, 1, !dbg !1181
  store i16 %34, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 10, i32 6), align 2, !dbg !1181, !tbaa !1183
  br label %129, !dbg !1184

; <label>:35:                                     ; preds = %21
  %36 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %23, i64 0, i32 3, !dbg !1185
  %37 = load i16, i16* %36, align 2, !dbg !1185, !tbaa !578
  %38 = icmp ugt i16 %37, 39, !dbg !1185
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1188
  br i1 %38, label %40, label %39, !dbg !1188

; <label>:39:                                     ; preds = %35
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0)) #7, !dbg !1189
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1192
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1192
  unreachable

; <label>:40:                                     ; preds = %35
  %41 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %30, i64 0, i32 1, !dbg !1196
  %42 = load i8*, i8** %41, align 8, !dbg !1196, !tbaa !404
  %43 = tail call i8* @memcpy(i8* %42, i8* %10, i64 40) #8, !dbg !1196
  %44 = load i8*, i8** %41, align 8, !dbg !1197, !tbaa !404
  %45 = getelementptr inbounds i8, i8* %44, i64 40, !dbg !1199
  %46 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %23, i64 0, i32 1, !dbg !1201
  %47 = load i8*, i8** %46, align 8, !dbg !1201, !tbaa !404
  %48 = zext i16 %22 to i64, !dbg !1202
  %49 = getelementptr inbounds i8, i8* %47, i64 %48, !dbg !1202
  store i8* %49, i8** %46, align 8, !dbg !1203, !tbaa !404
  %50 = load i16, i16* %36, align 2, !dbg !1204, !tbaa !578
  %51 = sub i16 %50, %22, !dbg !1205
  store i16 %51, i16* %36, align 2, !dbg !1206, !tbaa !578
  %52 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %23, i64 0, i32 2, !dbg !1207
  %53 = load i16, i16* %52, align 8, !dbg !1207, !tbaa !1161
  %54 = sub i16 %53, %22, !dbg !1208
  store i16 %54, i16* %52, align 8, !dbg !1209, !tbaa !1161
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1211
  %55 = icmp eq i16 %29, 0, !dbg !1211
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1211
  br i1 %55, label %98, label %56, !dbg !1211

; <label>:56:                                     ; preds = %40, %92
  %57 = phi i16 [ %96, %92 ], [ %51, %40 ], !dbg !1212
  %58 = phi %struct.pbuf* [ %93, %92 ], [ %23, %40 ]
  %59 = phi i16 [ %94, %92 ], [ %29, %40 ]
  %60 = icmp ult i16 %59, %57, !dbg !1213
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1214
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1214
  %61 = select i1 %60, i16 %59, i16 %57, !dbg !1214
  %62 = icmp eq i16 %61, 0, !dbg !1215
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1217
  br i1 %62, label %63, label %66, !dbg !1217

; <label>:63:                                     ; preds = %56
  %64 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %58, i64 0, i32 0, !dbg !1218
  %65 = load %struct.pbuf*, %struct.pbuf** %64, align 8, !dbg !1218, !tbaa !1220
  br label %92, !dbg !1211

; <label>:66:                                     ; preds = %56
  %67 = tail call i8* @memp_malloc(i32 5) #8, !dbg !1221
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1227
  %68 = icmp eq i8* %67, null, !dbg !1229
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1231
  br i1 %68, label %69, label %71, !dbg !1231

; <label>:69:                                     ; preds = %66
  %70 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %30) #8, !dbg !1232
  br label %86, !dbg !1234

; <label>:71:                                     ; preds = %66
  %72 = bitcast i8* %67 to %struct.pbuf_custom*, !dbg !1235
  %73 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %58, i64 0, i32 1, !dbg !1236
  %74 = load i8*, i8** %73, align 8, !dbg !1236, !tbaa !404
  %75 = tail call %struct.pbuf* @pbuf_alloced_custom(i32 0, i16 zeroext %61, i32 65, %struct.pbuf_custom* nonnull %72, i8* %74, i16 zeroext %61) #8, !dbg !1237
  %76 = icmp eq %struct.pbuf* %75, null, !dbg !1239
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1241
  br i1 %76, label %77, label %79, !dbg !1241

; <label>:77:                                     ; preds = %71
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1250
  tail call void @memp_free(i32 5, i8* nonnull %67) #8, !dbg !1252
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1253
  %78 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %30) #8, !dbg !1254
  br label %86, !dbg !1255

; <label>:79:                                     ; preds = %71
  tail call void @pbuf_ref(%struct.pbuf* nonnull %58) #8, !dbg !1256
  %80 = getelementptr inbounds i8, i8* %67, i64 32, !dbg !1257
  %81 = bitcast i8* %80 to %struct.pbuf**, !dbg !1257
  store %struct.pbuf* %58, %struct.pbuf** %81, align 8, !dbg !1258, !tbaa !1259
  %82 = getelementptr inbounds i8, i8* %67, i64 24, !dbg !1262
  %83 = bitcast i8* %82 to void (%struct.pbuf*)**, !dbg !1262
  store void (%struct.pbuf*)* @ip6_frag_free_pbuf_custom, void (%struct.pbuf*)** %83, align 8, !dbg !1263, !tbaa !1264
  tail call void @pbuf_cat(%struct.pbuf* nonnull %30, %struct.pbuf* nonnull %75) #8, !dbg !1265
  %84 = sub i16 %59, %61, !dbg !1266
  %85 = icmp eq i16 %84, 0, !dbg !1267
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1269
  br i1 %85, label %97, label %89, !dbg !1269

; <label>:86:                                     ; preds = %69, %77
  %87 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 10, i32 6), align 2, !dbg !1270, !tbaa !1183
  %88 = add i16 %87, 1, !dbg !1270
  store i16 %88, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 10, i32 6), align 2, !dbg !1270, !tbaa !1183
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1270
  br label %129

; <label>:89:                                     ; preds = %79
  %90 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %58, i64 0, i32 0, !dbg !1271
  %91 = load %struct.pbuf*, %struct.pbuf** %90, align 8, !dbg !1271, !tbaa !1220
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1273
  br label %92

; <label>:92:                                     ; preds = %89, %63
  %93 = phi %struct.pbuf* [ %65, %63 ], [ %91, %89 ]
  %94 = phi i16 [ %59, %63 ], [ %84, %89 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1274
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1211
  %95 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %93, i64 0, i32 3
  %96 = load i16, i16* %95, align 2, !dbg !1212, !tbaa !578
  br label %56, !dbg !1211

; <label>:97:                                     ; preds = %79
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1275
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1211
  br label %98, !dbg !1276

; <label>:98:                                     ; preds = %97, %40
  %99 = phi i16 [ %25, %40 ], [ %61, %97 ], !dbg !1277
  %100 = phi %struct.pbuf* [ %23, %40 ], [ %58, %97 ]
  %101 = load i8, i8* %19, align 1, !dbg !1276, !tbaa !1057
  store i8 %101, i8* %45, align 1, !dbg !1278, !tbaa !779
  %102 = getelementptr inbounds i8, i8* %44, i64 41, !dbg !1279
  store i8 0, i8* %102, align 1, !dbg !1280, !tbaa !1281
  %103 = and i32 %24, 65535, !dbg !1282
  %104 = and i32 %24, 65528, !dbg !1283
  %105 = zext i1 %27 to i32, !dbg !1284
  %106 = or i32 %104, %105, !dbg !1285
  %107 = trunc i32 %106 to i16, !dbg !1286
  %108 = tail call zeroext i16 @lwip_htons(i16 zeroext %107) #8, !dbg !1287
  %109 = getelementptr inbounds i8, i8* %44, i64 42, !dbg !1288
  %110 = bitcast i8* %109 to i16*, !dbg !1288
  store i16 %108, i16* %110, align 1, !dbg !1289, !tbaa !592
  %111 = load i32, i32* @ip6_frag.identification, align 4, !dbg !1290, !tbaa !437
  %112 = tail call i32 @lwip_htonl(i32 %111) #8, !dbg !1291
  %113 = getelementptr inbounds i8, i8* %44, i64 44, !dbg !1292
  %114 = bitcast i8* %113 to i32*, !dbg !1292
  store i32 %112, i32* %114, align 1, !dbg !1293, !tbaa !648
  %115 = getelementptr inbounds i8, i8* %44, i64 6, !dbg !1294
  store i8 44, i8* %115, align 1, !dbg !1294, !tbaa !1057
  %116 = zext i16 %29 to i32, !dbg !1295
  %117 = add i16 %29, 8, !dbg !1295
  %118 = tail call zeroext i16 @lwip_htons(i16 zeroext %117) #8, !dbg !1295
  %119 = getelementptr inbounds i8, i8* %44, i64 4, !dbg !1295
  %120 = bitcast i8* %119 to i16*, !dbg !1295
  store i16 %118, i16* %120, align 1, !dbg !1295, !tbaa !599
  %121 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 10, i32 0), align 2, !dbg !1296, !tbaa !1297
  %122 = add i16 %121, 1, !dbg !1296
  store i16 %122, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 10, i32 0), align 2, !dbg !1296, !tbaa !1297
  %123 = load i8 (%struct.netif*, %struct.pbuf*, %struct.ip6_addr*)*, i8 (%struct.netif*, %struct.pbuf*, %struct.ip6_addr*)** %20, align 8, !dbg !1298, !tbaa !1299
  %124 = tail call signext i8 %123(%struct.netif* %1, %struct.pbuf* nonnull %30, %struct.ip6_addr* %2) #8, !dbg !1301
  %125 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %30) #8, !dbg !1302
  %126 = sub i16 %26, %29, !dbg !1303
  %127 = add nuw nsw i32 %103, %116, !dbg !1304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1172
  %128 = icmp eq i16 %126, 0, !dbg !1172
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1172
  br i1 %128, label %129, label %21, !dbg !1172, !llvm.loop !1305

; <label>:129:                                    ; preds = %98, %15, %86, %32
  %130 = phi i8 [ -1, %32 ], [ -1, %86 ], [ 0, %15 ], [ 0, %98 ], !dbg !1307
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1308
  ret i8 %130, !dbg !1308
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
define internal void @ip6_frag_free_pbuf_custom(%struct.pbuf*) #0 !dbg !1309 {
  %2 = icmp eq %struct.pbuf* %0, null, !dbg !1315
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1318
  br i1 %2, label %3, label %4, !dbg !1318

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0)) #7, !dbg !1319
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1322
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1322
  unreachable

; <label>:4:                                      ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1326
  %5 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 1, i32 1, !dbg !1328
  %6 = bitcast i8** %5 to %struct.pbuf**, !dbg !1328
  %7 = load %struct.pbuf*, %struct.pbuf** %6, align 8, !dbg !1328, !tbaa !1259
  %8 = icmp eq %struct.pbuf* %7, null, !dbg !1330
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1331
  br i1 %8, label %11, label %9, !dbg !1331

; <label>:9:                                      ; preds = %4
  %10 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %7) #8, !dbg !1332
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1334
  br label %11, !dbg !1334

; <label>:11:                                     ; preds = %9, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1337
  %12 = bitcast %struct.pbuf* %0 to i8*, !dbg !1338
  tail call void @memp_free(i32 5, i8* %12) #8, !dbg !1339
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1340
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1341
  ret void, !dbg !1341
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
!356 = !DILocation(line: 123, column: 3, scope: !344)
!357 = !DILocation(line: 123, column: 12, scope: !344)
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
!378 = distinct !{!378, !356, !379}
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
!452 = !DILocation(line: 183, column: 5, scope: !453)
!453 = distinct !DILexicalBlock(scope: !394, file: !3, line: 183, column: 5)
!454 = !DILocation(line: 185, column: 5, scope: !394)
!455 = !DILocation(line: 186, column: 3, scope: !394)
!456 = !DILocation(line: 191, column: 12, scope: !381)
!457 = !DILocation(line: 0, scope: !381)
!458 = !DILocation(line: 192, column: 3, scope: !381)
!459 = !DILocation(line: 192, column: 12, scope: !381)
!460 = !DILocation(line: 194, column: 42, scope: !398)
!461 = !DILocation(line: 193, column: 18, scope: !398)
!462 = !DILocation(line: 197, column: 15, scope: !398)
!463 = !DILocation(line: 198, column: 12, scope: !398)
!464 = !DILocation(line: 199, column: 5, scope: !465)
!465 = distinct !DILexicalBlock(scope: !466, file: !3, line: 199, column: 5)
!466 = distinct !DILexicalBlock(scope: !398, file: !3, line: 199, column: 5)
!467 = !DILocation(line: 199, column: 5, scope: !466)
!468 = !DILocation(line: 199, column: 5, scope: !469)
!469 = distinct !DILexicalBlock(scope: !470, file: !3, line: 199, column: 5)
!470 = distinct !DILexicalBlock(scope: !465, file: !3, line: 199, column: 5)
!471 = !DILocation(line: 199, column: 5, scope: !472)
!472 = distinct !DILexicalBlock(scope: !473, file: !3, line: 199, column: 5)
!473 = distinct !DILexicalBlock(scope: !474, file: !3, line: 199, column: 5)
!474 = distinct !DILexicalBlock(scope: !469, file: !3, line: 199, column: 5)
!475 = !DILocation(line: 200, column: 19, scope: !398)
!476 = !DILocation(line: 201, column: 5, scope: !398)
!477 = distinct !{!477, !458, !478}
!478 = !DILocation(line: 202, column: 3, scope: !381)
!479 = !DILocation(line: 205, column: 14, scope: !480)
!480 = distinct !DILexicalBlock(scope: !381, file: !3, line: 205, column: 7)
!481 = !DILocation(line: 0, scope: !398)
!482 = !DILocation(line: 205, column: 11, scope: !480)
!483 = !DILocation(line: 205, column: 7, scope: !381)
!484 = !DILocation(line: 206, column: 27, scope: !485)
!485 = distinct !DILexicalBlock(scope: !480, file: !3, line: 205, column: 30)
!486 = !DILocation(line: 206, column: 20, scope: !485)
!487 = !DILocation(line: 207, column: 3, scope: !485)
!488 = !DILocation(line: 150, column: 25, scope: !381)
!489 = !DILocation(line: 209, column: 5, scope: !490)
!490 = distinct !DILexicalBlock(scope: !480, file: !3, line: 207, column: 10)
!491 = !DILocation(line: 0, scope: !492)
!492 = distinct !DILexicalBlock(scope: !490, file: !3, line: 209, column: 26)
!493 = !DILocation(line: 209, column: 17, scope: !490)
!494 = !DILocation(line: 210, column: 17, scope: !495)
!495 = distinct !DILexicalBlock(scope: !492, file: !3, line: 210, column: 11)
!496 = !DILocation(line: 210, column: 22, scope: !495)
!497 = !DILocation(line: 210, column: 11, scope: !492)
!498 = !DILocation(line: 0, scope: !490)
!499 = distinct !{!499, !489, !500}
!500 = !DILocation(line: 214, column: 5, scope: !490)
!501 = !DILocation(line: 216, column: 25, scope: !502)
!502 = distinct !DILexicalBlock(scope: !503, file: !3, line: 215, column: 23)
!503 = distinct !DILexicalBlock(scope: !490, file: !3, line: 215, column: 9)
!504 = !DILocation(line: 216, column: 18, scope: !502)
!505 = !DILocation(line: 217, column: 5, scope: !502)
!506 = !DILocation(line: 0, scope: !485)
!507 = !DILocation(line: 219, column: 33, scope: !381)
!508 = !DILocation(line: 219, column: 3, scope: !381)
!509 = !DILocation(line: 222, column: 3, scope: !510)
!510 = distinct !DILexicalBlock(scope: !511, file: !3, line: 222, column: 3)
!511 = distinct !DILexicalBlock(scope: !381, file: !3, line: 222, column: 3)
!512 = !{!365, !365, i64 0}
!513 = !DILocation(line: 222, column: 3, scope: !511)
!514 = !DILocation(line: 222, column: 3, scope: !515)
!515 = distinct !DILexicalBlock(scope: !516, file: !3, line: 222, column: 3)
!516 = distinct !DILexicalBlock(scope: !510, file: !3, line: 222, column: 3)
!517 = !DILocation(line: 222, column: 3, scope: !518)
!518 = distinct !DILexicalBlock(scope: !519, file: !3, line: 222, column: 3)
!519 = distinct !DILexicalBlock(scope: !520, file: !3, line: 222, column: 3)
!520 = distinct !DILexicalBlock(scope: !515, file: !3, line: 222, column: 3)
!521 = !DILocation(line: 223, column: 53, scope: !381)
!522 = !DILocation(line: 223, column: 23, scope: !381)
!523 = !DILocation(line: 224, column: 1, scope: !381)
!524 = distinct !DISubprogram(name: "ip6_reass", scope: !3, file: !3, line: 272, type: !525, isLocal: false, isDefinition: true, scopeLine: 273, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !527)
!525 = !DISubroutineType(types: !526)
!526 = !{!129, !129}
!527 = !{!528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !543, !544, !545, !546, !547, !550, !553, !559, !562}
!528 = !DILocalVariable(name: "p", arg: 1, scope: !524, file: !3, line: 272, type: !129)
!529 = !DILocalVariable(name: "ipr", scope: !524, file: !3, line: 274, type: !123)
!530 = !DILocalVariable(name: "ipr_prev", scope: !524, file: !3, line: 274, type: !123)
!531 = !DILocalVariable(name: "iprh", scope: !524, file: !3, line: 275, type: !158)
!532 = !DILocalVariable(name: "iprh_tmp", scope: !524, file: !3, line: 275, type: !158)
!533 = !DILocalVariable(name: "iprh_prev", scope: !524, file: !3, line: 275, type: !158)
!534 = !DILocalVariable(name: "frag_hdr", scope: !524, file: !3, line: 276, type: !81)
!535 = !DILocalVariable(name: "offset", scope: !524, file: !3, line: 277, type: !95)
!536 = !DILocalVariable(name: "len", scope: !524, file: !3, line: 277, type: !95)
!537 = !DILocalVariable(name: "start", scope: !524, file: !3, line: 277, type: !95)
!538 = !DILocalVariable(name: "end", scope: !524, file: !3, line: 277, type: !95)
!539 = !DILocalVariable(name: "hdrdiff", scope: !524, file: !3, line: 278, type: !540)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !541, line: 49, baseType: !542)
!541 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!542 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!543 = !DILocalVariable(name: "clen", scope: !524, file: !3, line: 279, type: !95)
!544 = !DILocalVariable(name: "valid", scope: !524, file: !3, line: 280, type: !86)
!545 = !DILocalVariable(name: "q", scope: !524, file: !3, line: 281, type: !129)
!546 = !DILocalVariable(name: "next_pbuf", scope: !524, file: !3, line: 281, type: !129)
!547 = !DILocalVariable(name: "hdrerr", scope: !548, file: !3, line: 413, type: !86)
!548 = distinct !DILexicalBlock(scope: !549, file: !3, line: 410, column: 30)
!549 = distinct !DILexicalBlock(scope: !524, file: !3, line: 410, column: 7)
!550 = !DILocalVariable(name: "iphdr_ptr", scope: !551, file: !3, line: 554, type: !141)
!551 = distinct !DILexicalBlock(scope: !552, file: !3, line: 552, column: 14)
!552 = distinct !DILexicalBlock(scope: !524, file: !3, line: 552, column: 7)
!553 = !DILocalVariable(name: "hdrerr", scope: !554, file: !3, line: 569, type: !86)
!554 = distinct !DILexicalBlock(scope: !555, file: !3, line: 567, column: 36)
!555 = distinct !DILexicalBlock(scope: !556, file: !3, line: 567, column: 13)
!556 = distinct !DILexicalBlock(scope: !557, file: !3, line: 560, column: 30)
!557 = distinct !DILexicalBlock(scope: !558, file: !3, line: 560, column: 11)
!558 = distinct !DILexicalBlock(scope: !551, file: !3, line: 558, column: 26)
!559 = !DILocalVariable(name: "hdrerr", scope: !560, file: !3, line: 588, type: !86)
!560 = distinct !DILexicalBlock(scope: !561, file: !3, line: 587, column: 32)
!561 = distinct !DILexicalBlock(scope: !551, file: !3, line: 587, column: 9)
!562 = !DILocalVariable(name: "ptr", scope: !563, file: !3, line: 630, type: !120)
!563 = distinct !DILexicalBlock(scope: !564, file: !3, line: 629, column: 12)
!564 = distinct !DILexicalBlock(scope: !551, file: !3, line: 627, column: 9)
!565 = !DILocation(line: 272, column: 24, scope: !524)
!566 = !DILocation(line: 275, column: 46, scope: !524)
!567 = !DILocation(line: 280, column: 8, scope: !524)
!568 = !DILocation(line: 283, column: 3, scope: !524)
!569 = !{!570, !365, i64 236}
!570 = !{!"stats_", !571, i64 0, !571, i64 24, !571, i64 48, !571, i64 72, !571, i64 96, !571, i64 120, !571, i64 144, !572, i64 168, !571, i64 186, !571, i64 210, !571, i64 234, !574, i64 258, !571, i64 286}
!571 = !{!"stats_proto", !365, i64 0, !365, i64 2, !365, i64 4, !365, i64 6, !365, i64 8, !365, i64 10, !365, i64 12, !365, i64 14, !365, i64 16, !365, i64 18, !365, i64 20, !365, i64 22}
!572 = !{!"stats_sys", !573, i64 0, !573, i64 6, !573, i64 12}
!573 = !{!"stats_syselem", !365, i64 0, !365, i64 2, !365, i64 4}
!574 = !{!"stats_igmp", !365, i64 0, !365, i64 2, !365, i64 4, !365, i64 6, !365, i64 8, !365, i64 10, !365, i64 12, !365, i64 14, !365, i64 16, !365, i64 18, !365, i64 20, !365, i64 22, !365, i64 24, !365, i64 26}
!575 = !DILocation(line: 286, column: 3, scope: !576)
!576 = distinct !DILexicalBlock(scope: !577, file: !3, line: 286, column: 3)
!577 = distinct !DILexicalBlock(scope: !524, file: !3, line: 286, column: 3)
!578 = !{!405, !365, i64 18}
!579 = !DILocation(line: 286, column: 3, scope: !577)
!580 = !DILocation(line: 286, column: 3, scope: !581)
!581 = distinct !DILexicalBlock(scope: !582, file: !3, line: 286, column: 3)
!582 = distinct !DILexicalBlock(scope: !576, file: !3, line: 286, column: 3)
!583 = !DILocation(line: 286, column: 3, scope: !584)
!584 = distinct !DILexicalBlock(scope: !585, file: !3, line: 286, column: 3)
!585 = distinct !DILexicalBlock(scope: !586, file: !3, line: 286, column: 3)
!586 = distinct !DILexicalBlock(scope: !581, file: !3, line: 286, column: 3)
!587 = !DILocation(line: 289, column: 41, scope: !524)
!588 = !DILocation(line: 276, column: 24, scope: !524)
!589 = !DILocation(line: 291, column: 10, scope: !524)
!590 = !DILocation(line: 279, column: 9, scope: !524)
!591 = !DILocation(line: 293, column: 12, scope: !524)
!592 = !{!593, !365, i64 2}
!593 = !{!"ip6_frag_hdr", !353, i64 0, !353, i64 1, !365, i64 2, !364, i64 4}
!594 = !DILocation(line: 277, column: 9, scope: !524)
!595 = !DILocation(line: 298, column: 9, scope: !524)
!596 = !{!597, !352, i64 24}
!597 = !{!"ip_globals", !352, i64 0, !352, i64 8, !352, i64 16, !352, i64 24, !365, i64 32, !598, i64 36, !598, i64 60}
!598 = !{!"ip_addr", !353, i64 0, !353, i64 20}
!599 = !{!600, !365, i64 4}
!600 = !{!"ip6_hdr", !364, i64 0, !365, i64 4, !353, i64 6, !353, i64 7, !363, i64 8, !363, i64 24}
!601 = !DILocation(line: 277, column: 17, scope: !524)
!602 = !DILocation(line: 299, column: 23, scope: !524)
!603 = !DILocation(line: 299, column: 46, scope: !524)
!604 = !DILocation(line: 299, column: 31, scope: !524)
!605 = !DILocation(line: 278, column: 13, scope: !524)
!606 = !DILocation(line: 300, column: 3, scope: !607)
!607 = distinct !DILexicalBlock(scope: !608, file: !3, line: 300, column: 3)
!608 = distinct !DILexicalBlock(scope: !524, file: !3, line: 300, column: 3)
!609 = !DILocation(line: 300, column: 3, scope: !608)
!610 = !DILocation(line: 300, column: 3, scope: !611)
!611 = distinct !DILexicalBlock(scope: !612, file: !3, line: 300, column: 3)
!612 = distinct !DILexicalBlock(scope: !607, file: !3, line: 300, column: 3)
!613 = !DILocation(line: 300, column: 3, scope: !614)
!614 = distinct !DILexicalBlock(scope: !615, file: !3, line: 300, column: 3)
!615 = distinct !DILexicalBlock(scope: !616, file: !3, line: 300, column: 3)
!616 = distinct !DILexicalBlock(scope: !611, file: !3, line: 300, column: 3)
!617 = !DILocation(line: 301, column: 3, scope: !618)
!618 = distinct !DILexicalBlock(scope: !619, file: !3, line: 301, column: 3)
!619 = distinct !DILexicalBlock(scope: !524, file: !3, line: 301, column: 3)
!620 = !DILocation(line: 301, column: 3, scope: !619)
!621 = !DILocation(line: 301, column: 3, scope: !622)
!622 = distinct !DILexicalBlock(scope: !623, file: !3, line: 301, column: 3)
!623 = distinct !DILexicalBlock(scope: !618, file: !3, line: 301, column: 3)
!624 = !DILocation(line: 301, column: 3, scope: !625)
!625 = distinct !DILexicalBlock(scope: !626, file: !3, line: 301, column: 3)
!626 = distinct !DILexicalBlock(scope: !627, file: !3, line: 301, column: 3)
!627 = distinct !DILexicalBlock(scope: !622, file: !3, line: 301, column: 3)
!628 = !DILocation(line: 303, column: 11, scope: !524)
!629 = !DILocation(line: 304, column: 17, scope: !630)
!630 = distinct !DILexicalBlock(scope: !524, file: !3, line: 304, column: 7)
!631 = !DILocation(line: 304, column: 15, scope: !630)
!632 = !DILocation(line: 304, column: 7, scope: !524)
!633 = !DILocation(line: 308, column: 9, scope: !524)
!634 = !DILocation(line: 309, column: 19, scope: !524)
!635 = !DILocation(line: 277, column: 22, scope: !524)
!636 = !DILocation(line: 310, column: 23, scope: !637)
!637 = distinct !DILexicalBlock(scope: !524, file: !3, line: 310, column: 7)
!638 = !DILocation(line: 310, column: 13, scope: !637)
!639 = !DILocation(line: 310, column: 7, scope: !524)
!640 = !DILocation(line: 318, column: 14, scope: !641)
!641 = distinct !DILexicalBlock(scope: !524, file: !3, line: 318, column: 3)
!642 = !DILocation(line: 274, column: 25, scope: !524)
!643 = !DILocation(line: 274, column: 31, scope: !524)
!644 = !DILocation(line: 318, column: 8, scope: !641)
!645 = !DILocation(line: 318, column: 51, scope: !646)
!646 = distinct !DILexicalBlock(scope: !641, file: !3, line: 318, column: 3)
!647 = !DILocation(line: 318, column: 3, scope: !641)
!648 = !{!593, !364, i64 4}
!649 = !DILocation(line: 322, column: 44, scope: !650)
!650 = distinct !DILexicalBlock(scope: !651, file: !3, line: 322, column: 9)
!651 = distinct !DILexicalBlock(scope: !646, file: !3, line: 318, column: 77)
!652 = !{!362, !364, i64 72}
!653 = !DILocation(line: 322, column: 36, scope: !650)
!654 = !DILocation(line: 322, column: 60, scope: !650)
!655 = !DILocation(line: 323, column: 9, scope: !650)
!656 = !DILocation(line: 323, column: 91, scope: !650)
!657 = !DILocation(line: 324, column: 9, scope: !650)
!658 = !DILocation(line: 322, column: 9, scope: !651)
!659 = !DILocation(line: 318, column: 71, scope: !646)
!660 = !DILocation(line: 318, column: 3, scope: !646)
!661 = distinct !{!661, !647, !662}
!662 = !DILocation(line: 329, column: 3, scope: !641)
!663 = !DILocation(line: 325, column: 7, scope: !664)
!664 = distinct !DILexicalBlock(scope: !650, file: !3, line: 324, column: 95)
!665 = !{!570, !365, i64 256}
!666 = !DILocation(line: 326, column: 7, scope: !664)
!667 = !DILocation(line: 0, scope: !651)
!668 = !DILocation(line: 331, column: 7, scope: !524)
!669 = !DILocation(line: 333, column: 35, scope: !670)
!670 = distinct !DILexicalBlock(scope: !671, file: !3, line: 331, column: 20)
!671 = distinct !DILexicalBlock(scope: !524, file: !3, line: 331, column: 7)
!672 = !DILocation(line: 333, column: 11, scope: !670)
!673 = !DILocation(line: 334, column: 13, scope: !674)
!674 = distinct !DILexicalBlock(scope: !670, file: !3, line: 334, column: 9)
!675 = !DILocation(line: 334, column: 9, scope: !670)
!676 = !DILocation(line: 337, column: 45, scope: !677)
!677 = distinct !DILexicalBlock(scope: !674, file: !3, line: 334, column: 22)
!678 = !DILocalVariable(name: "ipr", arg: 1, scope: !679, file: !3, line: 236, type: !123)
!679 = distinct !DISubprogram(name: "ip6_reass_remove_oldest_datagram", scope: !3, file: !3, line: 236, type: !680, isLocal: true, isDefinition: true, scopeLine: 237, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !682)
!680 = !DISubroutineType(types: !681)
!681 = !{null, !123, !55}
!682 = !{!678, !683, !684, !685}
!683 = !DILocalVariable(name: "pbufs_needed", arg: 2, scope: !679, file: !3, line: 236, type: !55)
!684 = !DILocalVariable(name: "r", scope: !679, file: !3, line: 238, type: !123)
!685 = !DILocalVariable(name: "oldest", scope: !679, file: !3, line: 238, type: !123)
!686 = !DILocation(line: 236, column: 56, scope: !679, inlinedAt: !687)
!687 = distinct !DILocation(line: 337, column: 7, scope: !677)
!688 = !DILocation(line: 236, column: 65, scope: !679, inlinedAt: !687)
!689 = !DILocation(line: 242, column: 3, scope: !679, inlinedAt: !687)
!690 = !DILocation(line: 243, column: 18, scope: !691, inlinedAt: !687)
!691 = distinct !DILexicalBlock(scope: !679, file: !3, line: 242, column: 6)
!692 = !DILocation(line: 238, column: 29, scope: !679, inlinedAt: !687)
!693 = !DILocation(line: 238, column: 25, scope: !679, inlinedAt: !687)
!694 = !DILocation(line: 244, column: 5, scope: !691, inlinedAt: !687)
!695 = !DILocation(line: 244, column: 14, scope: !691, inlinedAt: !687)
!696 = !DILocation(line: 245, column: 13, scope: !697, inlinedAt: !687)
!697 = distinct !DILexicalBlock(scope: !698, file: !3, line: 245, column: 11)
!698 = distinct !DILexicalBlock(scope: !691, file: !3, line: 244, column: 23)
!699 = !DILocation(line: 245, column: 11, scope: !698, inlinedAt: !687)
!700 = !DILocation(line: 246, column: 16, scope: !701, inlinedAt: !687)
!701 = distinct !DILexicalBlock(scope: !702, file: !3, line: 246, column: 13)
!702 = distinct !DILexicalBlock(scope: !697, file: !3, line: 245, column: 21)
!703 = !DILocation(line: 246, column: 33, scope: !701, inlinedAt: !687)
!704 = !DILocation(line: 246, column: 22, scope: !701, inlinedAt: !687)
!705 = !DILocation(line: 246, column: 13, scope: !702, inlinedAt: !687)
!706 = !DILocation(line: 249, column: 9, scope: !707, inlinedAt: !687)
!707 = distinct !DILexicalBlock(scope: !701, file: !3, line: 246, column: 40)
!708 = !DILocation(line: 0, scope: !691, inlinedAt: !687)
!709 = !DILocation(line: 251, column: 14, scope: !698, inlinedAt: !687)
!710 = distinct !{!710, !711, !712}
!711 = !DILocation(line: 244, column: 5, scope: !691)
!712 = !DILocation(line: 252, column: 5, scope: !691)
!713 = !DILocation(line: 0, scope: !707, inlinedAt: !687)
!714 = !DILocation(line: 253, column: 16, scope: !715, inlinedAt: !687)
!715 = distinct !DILexicalBlock(scope: !691, file: !3, line: 253, column: 9)
!716 = !DILocation(line: 253, column: 9, scope: !691, inlinedAt: !687)
!717 = !DILocation(line: 257, column: 16, scope: !718, inlinedAt: !687)
!718 = distinct !DILexicalBlock(scope: !691, file: !3, line: 257, column: 9)
!719 = !DILocation(line: 257, column: 9, scope: !691, inlinedAt: !687)
!720 = !DILocation(line: 258, column: 7, scope: !721, inlinedAt: !687)
!721 = distinct !DILexicalBlock(scope: !718, file: !3, line: 257, column: 25)
!722 = !DILocation(line: 259, column: 5, scope: !721, inlinedAt: !687)
!723 = !DILocation(line: 260, column: 76, scope: !679, inlinedAt: !687)
!724 = !DILocation(line: 260, column: 14, scope: !679, inlinedAt: !687)
!725 = !DILocation(line: 260, column: 34, scope: !679, inlinedAt: !687)
!726 = !DILocation(line: 260, column: 50, scope: !679, inlinedAt: !687)
!727 = !DILocation(line: 260, column: 91, scope: !679, inlinedAt: !687)
!728 = !DILocation(line: 260, column: 72, scope: !679, inlinedAt: !687)
!729 = !DILocation(line: 260, column: 3, scope: !691, inlinedAt: !687)
!730 = distinct !{!730, !731, !732}
!731 = !DILocation(line: 242, column: 3, scope: !679)
!732 = !DILocation(line: 260, column: 99, scope: !679)
!733 = !DILocation(line: 0, scope: !677)
!734 = !DILocation(line: 261, column: 1, scope: !679, inlinedAt: !687)
!735 = !DILocation(line: 338, column: 37, scope: !677)
!736 = !DILocation(line: 338, column: 13, scope: !677)
!737 = !DILocation(line: 339, column: 15, scope: !738)
!738 = distinct !DILexicalBlock(scope: !677, file: !3, line: 339, column: 11)
!739 = !DILocation(line: 339, column: 11, scope: !677)
!740 = !DILocation(line: 341, column: 25, scope: !741)
!741 = distinct !DILexicalBlock(scope: !742, file: !3, line: 341, column: 9)
!742 = distinct !DILexicalBlock(scope: !738, file: !3, line: 339, column: 24)
!743 = !DILocation(line: 341, column: 14, scope: !741)
!744 = !DILocation(line: 341, column: 50, scope: !745)
!745 = distinct !DILexicalBlock(scope: !741, file: !3, line: 341, column: 9)
!746 = !DILocation(line: 341, column: 9, scope: !741)
!747 = !DILocation(line: 342, column: 25, scope: !748)
!748 = distinct !DILexicalBlock(scope: !749, file: !3, line: 342, column: 15)
!749 = distinct !DILexicalBlock(scope: !745, file: !3, line: 341, column: 86)
!750 = !DILocation(line: 342, column: 30, scope: !748)
!751 = !DILocation(line: 342, column: 15, scope: !749)
!752 = !DILocation(line: 341, column: 9, scope: !745)
!753 = distinct !{!753, !746, !754}
!754 = !DILocation(line: 345, column: 9, scope: !741)
!755 = !DILocation(line: 0, scope: !641)
!756 = !DILocation(line: 0, scope: !670)
!757 = !DILocation(line: 354, column: 5, scope: !670)
!758 = !DILocation(line: 355, column: 10, scope: !670)
!759 = !DILocation(line: 355, column: 16, scope: !670)
!760 = !DILocation(line: 358, column: 17, scope: !670)
!761 = !DILocation(line: 358, column: 15, scope: !670)
!762 = !DILocation(line: 359, column: 20, scope: !670)
!763 = !DILocation(line: 365, column: 26, scope: !670)
!764 = !DILocation(line: 365, column: 10, scope: !670)
!765 = !DILocation(line: 365, column: 16, scope: !670)
!766 = !DILocation(line: 367, column: 5, scope: !670)
!767 = !DILocation(line: 368, column: 5, scope: !670)
!768 = !DILocation(line: 377, column: 21, scope: !670)
!769 = !{!353, !353, i64 0}
!770 = !DILocation(line: 377, column: 10, scope: !670)
!771 = !DILocation(line: 377, column: 19, scope: !670)
!772 = !DILocation(line: 378, column: 22, scope: !670)
!773 = !DILocation(line: 378, column: 10, scope: !670)
!774 = !DILocation(line: 378, column: 20, scope: !670)
!775 = !DILocation(line: 381, column: 37, scope: !670)
!776 = !DILocation(line: 381, column: 10, scope: !670)
!777 = !DILocation(line: 381, column: 25, scope: !670)
!778 = !DILocation(line: 384, column: 28, scope: !670)
!779 = !{!593, !353, i64 0}
!780 = !DILocation(line: 384, column: 10, scope: !670)
!781 = !DILocation(line: 384, column: 16, scope: !670)
!782 = !{!362, !353, i64 78}
!783 = !DILocation(line: 385, column: 3, scope: !670)
!784 = !DILocation(line: 388, column: 8, scope: !785)
!785 = distinct !DILexicalBlock(scope: !524, file: !3, line: 388, column: 7)
!786 = !DILocation(line: 388, column: 30, scope: !785)
!787 = !DILocation(line: 388, column: 28, scope: !785)
!788 = !DILocation(line: 388, column: 36, scope: !785)
!789 = !DILocation(line: 388, column: 7, scope: !524)
!790 = !DILocation(line: 236, column: 56, scope: !679, inlinedAt: !791)
!791 = distinct !DILocation(line: 390, column: 5, scope: !792)
!792 = distinct !DILexicalBlock(scope: !785, file: !3, line: 388, column: 58)
!793 = !DILocation(line: 236, column: 65, scope: !679, inlinedAt: !791)
!794 = !DILocation(line: 242, column: 3, scope: !679, inlinedAt: !791)
!795 = !DILocation(line: 243, column: 18, scope: !691, inlinedAt: !791)
!796 = !DILocation(line: 238, column: 29, scope: !679, inlinedAt: !791)
!797 = !DILocation(line: 238, column: 25, scope: !679, inlinedAt: !791)
!798 = !DILocation(line: 244, column: 5, scope: !691, inlinedAt: !791)
!799 = !DILocation(line: 244, column: 14, scope: !691, inlinedAt: !791)
!800 = !DILocation(line: 245, column: 13, scope: !697, inlinedAt: !791)
!801 = !DILocation(line: 245, column: 11, scope: !698, inlinedAt: !791)
!802 = !DILocation(line: 246, column: 16, scope: !701, inlinedAt: !791)
!803 = !DILocation(line: 246, column: 33, scope: !701, inlinedAt: !791)
!804 = !DILocation(line: 246, column: 22, scope: !701, inlinedAt: !791)
!805 = !DILocation(line: 246, column: 13, scope: !702, inlinedAt: !791)
!806 = !DILocation(line: 249, column: 9, scope: !707, inlinedAt: !791)
!807 = !DILocation(line: 0, scope: !691, inlinedAt: !791)
!808 = !DILocation(line: 251, column: 14, scope: !698, inlinedAt: !791)
!809 = !DILocation(line: 0, scope: !707, inlinedAt: !791)
!810 = !DILocation(line: 253, column: 16, scope: !715, inlinedAt: !791)
!811 = !DILocation(line: 253, column: 9, scope: !691, inlinedAt: !791)
!812 = !DILocation(line: 255, column: 7, scope: !813, inlinedAt: !791)
!813 = distinct !DILexicalBlock(scope: !715, file: !3, line: 253, column: 24)
!814 = !DILocation(line: 391, column: 10, scope: !815)
!815 = distinct !DILexicalBlock(scope: !792, file: !3, line: 391, column: 9)
!816 = !DILocation(line: 391, column: 30, scope: !815)
!817 = !DILocation(line: 257, column: 16, scope: !718, inlinedAt: !791)
!818 = !DILocation(line: 257, column: 9, scope: !691, inlinedAt: !791)
!819 = !DILocation(line: 258, column: 7, scope: !721, inlinedAt: !791)
!820 = !DILocation(line: 259, column: 5, scope: !721, inlinedAt: !791)
!821 = !DILocation(line: 260, column: 76, scope: !679, inlinedAt: !791)
!822 = !DILocation(line: 260, column: 14, scope: !679, inlinedAt: !791)
!823 = !DILocation(line: 260, column: 34, scope: !679, inlinedAt: !791)
!824 = !DILocation(line: 260, column: 50, scope: !679, inlinedAt: !791)
!825 = !DILocation(line: 260, column: 91, scope: !679, inlinedAt: !791)
!826 = !DILocation(line: 260, column: 72, scope: !679, inlinedAt: !791)
!827 = !DILocation(line: 260, column: 3, scope: !691, inlinedAt: !791)
!828 = !DILocation(line: 261, column: 1, scope: !679, inlinedAt: !791)
!829 = !DILocation(line: 391, column: 38, scope: !815)
!830 = !DILocation(line: 391, column: 9, scope: !792)
!831 = !DILocation(line: 393, column: 12, scope: !832)
!832 = distinct !DILexicalBlock(scope: !833, file: !3, line: 393, column: 7)
!833 = distinct !DILexicalBlock(scope: !815, file: !3, line: 391, column: 61)
!834 = !DILocation(line: 393, column: 48, scope: !835)
!835 = distinct !DILexicalBlock(scope: !832, file: !3, line: 393, column: 7)
!836 = !DILocation(line: 393, column: 7, scope: !832)
!837 = !DILocation(line: 394, column: 23, scope: !838)
!838 = distinct !DILexicalBlock(scope: !839, file: !3, line: 394, column: 13)
!839 = distinct !DILexicalBlock(scope: !835, file: !3, line: 393, column: 84)
!840 = !DILocation(line: 394, column: 28, scope: !838)
!841 = !DILocation(line: 394, column: 13, scope: !839)
!842 = !DILocation(line: 393, column: 7, scope: !835)
!843 = distinct !{!843, !836, !844}
!844 = !DILocation(line: 397, column: 7, scope: !832)
!845 = !DILocation(line: 0, scope: !741)
!846 = !DILocation(line: 413, column: 19, scope: !548)
!847 = !DILocation(line: 413, column: 10, scope: !548)
!848 = !DILocation(line: 415, column: 5, scope: !849)
!849 = distinct !DILexicalBlock(scope: !850, file: !3, line: 415, column: 5)
!850 = distinct !DILexicalBlock(scope: !548, file: !3, line: 415, column: 5)
!851 = !DILocation(line: 415, column: 5, scope: !850)
!852 = !DILocation(line: 415, column: 5, scope: !853)
!853 = distinct !DILexicalBlock(scope: !854, file: !3, line: 415, column: 5)
!854 = distinct !DILexicalBlock(scope: !849, file: !3, line: 415, column: 5)
!855 = !DILocation(line: 415, column: 5, scope: !856)
!856 = distinct !DILexicalBlock(scope: !857, file: !3, line: 415, column: 5)
!857 = distinct !DILexicalBlock(scope: !858, file: !3, line: 415, column: 5)
!858 = distinct !DILexicalBlock(scope: !853, file: !3, line: 415, column: 5)
!859 = !DILocation(line: 426, column: 40, scope: !524)
!860 = !DILocation(line: 275, column: 28, scope: !524)
!861 = !DILocation(line: 281, column: 20, scope: !524)
!862 = !DILocation(line: 428, column: 23, scope: !524)
!863 = !DILocation(line: 277, column: 29, scope: !524)
!864 = !DILocation(line: 433, column: 17, scope: !865)
!865 = distinct !DILexicalBlock(scope: !524, file: !3, line: 433, column: 3)
!866 = !DILocation(line: 281, column: 16, scope: !524)
!867 = !DILocation(line: 433, column: 8, scope: !865)
!868 = !DILocation(line: 433, column: 22, scope: !869)
!869 = distinct !DILexicalBlock(scope: !865, file: !3, line: 433, column: 3)
!870 = !DILocation(line: 433, column: 3, scope: !865)
!871 = !DILocation(line: 434, column: 45, scope: !872)
!872 = distinct !DILexicalBlock(scope: !869, file: !3, line: 433, column: 32)
!873 = !DILocation(line: 275, column: 35, scope: !524)
!874 = !DILocation(line: 435, column: 27, scope: !875)
!875 = distinct !DILexicalBlock(scope: !872, file: !3, line: 435, column: 9)
!876 = !DILocation(line: 435, column: 15, scope: !875)
!877 = !DILocation(line: 435, column: 9, scope: !872)
!878 = !DILocation(line: 437, column: 15, scope: !879)
!879 = distinct !DILexicalBlock(scope: !880, file: !3, line: 437, column: 11)
!880 = distinct !DILexicalBlock(scope: !875, file: !3, line: 435, column: 34)
!881 = !DILocation(line: 437, column: 11, scope: !880)
!882 = !DILocation(line: 442, column: 21, scope: !883)
!883 = distinct !DILexicalBlock(scope: !880, file: !3, line: 442, column: 11)
!884 = !DILocation(line: 442, column: 11, scope: !880)
!885 = !DILocation(line: 443, column: 32, scope: !886)
!886 = distinct !DILexicalBlock(scope: !887, file: !3, line: 443, column: 13)
!887 = distinct !DILexicalBlock(scope: !883, file: !3, line: 442, column: 30)
!888 = !{!409, !365, i64 10}
!889 = !DILocation(line: 443, column: 19, scope: !886)
!890 = !DILocation(line: 443, column: 13, scope: !887)
!891 = !DILocation(line: 452, column: 11, scope: !880)
!892 = !DILocation(line: 454, column: 20, scope: !893)
!893 = distinct !DILexicalBlock(scope: !894, file: !3, line: 452, column: 30)
!894 = distinct !DILexicalBlock(scope: !880, file: !3, line: 452, column: 11)
!895 = !DILocation(line: 454, column: 30, scope: !893)
!896 = !DILocation(line: 455, column: 7, scope: !893)
!897 = !DILocation(line: 457, column: 16, scope: !898)
!898 = distinct !DILexicalBlock(scope: !894, file: !3, line: 455, column: 14)
!899 = !DILocation(line: 460, column: 22, scope: !900)
!900 = distinct !DILexicalBlock(scope: !875, file: !3, line: 460, column: 16)
!901 = !DILocation(line: 460, column: 16, scope: !875)
!902 = !DILocation(line: 464, column: 34, scope: !903)
!903 = distinct !DILexicalBlock(scope: !900, file: !3, line: 464, column: 16)
!904 = !DILocation(line: 464, column: 22, scope: !903)
!905 = !DILocation(line: 464, column: 16, scope: !900)
!906 = !DILocation(line: 471, column: 21, scope: !907)
!907 = distinct !DILexicalBlock(scope: !908, file: !3, line: 471, column: 11)
!908 = distinct !DILexicalBlock(scope: !903, file: !3, line: 469, column: 12)
!909 = !DILocation(line: 471, column: 11, scope: !908)
!910 = !DILocation(line: 472, column: 24, scope: !911)
!911 = distinct !DILexicalBlock(scope: !912, file: !3, line: 472, column: 13)
!912 = distinct !DILexicalBlock(scope: !907, file: !3, line: 471, column: 30)
!913 = !DILocation(line: 472, column: 28, scope: !911)
!914 = !DILocation(line: 472, column: 13, scope: !912)
!915 = !DILocation(line: 476, column: 9, scope: !916)
!916 = distinct !DILexicalBlock(scope: !911, file: !3, line: 472, column: 48)
!917 = !DILocation(line: 0, scope: !524)
!918 = !DILocation(line: 479, column: 19, scope: !872)
!919 = !DILocation(line: 433, column: 3, scope: !869)
!920 = distinct !{!920, !870, !921}
!921 = !DILocation(line: 481, column: 3, scope: !865)
!922 = !DILocation(line: 484, column: 7, scope: !524)
!923 = !DILocation(line: 485, column: 9, scope: !924)
!924 = distinct !DILexicalBlock(scope: !925, file: !3, line: 484, column: 18)
!925 = distinct !DILexicalBlock(scope: !524, file: !3, line: 484, column: 7)
!926 = !DILocation(line: 489, column: 7, scope: !927)
!927 = distinct !DILexicalBlock(scope: !928, file: !3, line: 489, column: 7)
!928 = distinct !DILexicalBlock(scope: !929, file: !3, line: 489, column: 7)
!929 = distinct !DILexicalBlock(scope: !930, file: !3, line: 485, column: 28)
!930 = distinct !DILexicalBlock(scope: !924, file: !3, line: 485, column: 9)
!931 = !DILocation(line: 489, column: 7, scope: !928)
!932 = !DILocation(line: 489, column: 7, scope: !933)
!933 = distinct !DILexicalBlock(scope: !934, file: !3, line: 489, column: 7)
!934 = distinct !DILexicalBlock(scope: !927, file: !3, line: 489, column: 7)
!935 = !DILocation(line: 489, column: 7, scope: !936)
!936 = distinct !DILexicalBlock(scope: !937, file: !3, line: 489, column: 7)
!937 = distinct !DILexicalBlock(scope: !938, file: !3, line: 489, column: 7)
!938 = distinct !DILexicalBlock(scope: !933, file: !3, line: 489, column: 7)
!939 = !DILocation(line: 491, column: 18, scope: !929)
!940 = !DILocation(line: 491, column: 28, scope: !929)
!941 = !DILocation(line: 492, column: 26, scope: !942)
!942 = distinct !DILexicalBlock(scope: !929, file: !3, line: 492, column: 11)
!943 = !DILocation(line: 492, column: 11, scope: !929)
!944 = !DILocation(line: 497, column: 7, scope: !945)
!945 = distinct !DILexicalBlock(scope: !946, file: !3, line: 497, column: 7)
!946 = distinct !DILexicalBlock(scope: !930, file: !3, line: 495, column: 12)
!947 = !DILocation(line: 501, column: 14, scope: !946)
!948 = !DILocation(line: 507, column: 33, scope: !524)
!949 = !DILocation(line: 507, column: 53, scope: !524)
!950 = !DILocation(line: 507, column: 23, scope: !524)
!951 = !DILocation(line: 510, column: 13, scope: !952)
!952 = distinct !DILexicalBlock(scope: !524, file: !3, line: 510, column: 7)
!953 = !DILocation(line: 510, column: 7, scope: !524)
!954 = !DILocation(line: 512, column: 26, scope: !955)
!955 = distinct !DILexicalBlock(scope: !952, file: !3, line: 510, column: 19)
!956 = !DILocation(line: 512, column: 10, scope: !955)
!957 = !DILocation(line: 512, column: 16, scope: !955)
!958 = !DILocation(line: 515, column: 5, scope: !955)
!959 = !DILocation(line: 519, column: 3, scope: !955)
!960 = !DILocation(line: 521, column: 9, scope: !524)
!961 = !DILocation(line: 521, column: 19, scope: !524)
!962 = !DILocation(line: 522, column: 9, scope: !524)
!963 = !DILocation(line: 522, column: 15, scope: !524)
!964 = !DILocation(line: 523, column: 9, scope: !524)
!965 = !DILocation(line: 523, column: 13, scope: !524)
!966 = !DILocation(line: 526, column: 15, scope: !967)
!967 = distinct !DILexicalBlock(scope: !524, file: !3, line: 526, column: 7)
!968 = !DILocation(line: 526, column: 37, scope: !967)
!969 = !DILocation(line: 526, column: 7, scope: !524)
!970 = !DILocation(line: 527, column: 10, scope: !971)
!971 = distinct !DILexicalBlock(scope: !967, file: !3, line: 526, column: 43)
!972 = !DILocation(line: 527, column: 23, scope: !971)
!973 = !{!362, !365, i64 76}
!974 = !DILocation(line: 528, column: 3, scope: !971)
!975 = !DILocation(line: 531, column: 45, scope: !524)
!976 = !DILocation(line: 531, column: 48, scope: !524)
!977 = !DILocation(line: 532, column: 17, scope: !978)
!978 = distinct !DILexicalBlock(scope: !524, file: !3, line: 532, column: 7)
!979 = !DILocation(line: 532, column: 23, scope: !978)
!980 = !DILocation(line: 532, column: 7, scope: !524)
!981 = !DILocation(line: 534, column: 3, scope: !982)
!982 = distinct !DILexicalBlock(scope: !978, file: !3, line: 532, column: 29)
!983 = !DILocation(line: 0, scope: !984)
!984 = distinct !DILexicalBlock(scope: !942, file: !3, line: 492, column: 36)
!985 = !DILocation(line: 535, column: 12, scope: !986)
!986 = distinct !DILexicalBlock(scope: !524, file: !3, line: 535, column: 7)
!987 = !DILocation(line: 535, column: 25, scope: !986)
!988 = !DILocation(line: 535, column: 7, scope: !524)
!989 = !DILocation(line: 542, column: 3, scope: !524)
!990 = !DILocation(line: 552, column: 7, scope: !524)
!991 = !DILocation(line: 542, column: 13, scope: !524)
!992 = !DILocation(line: 542, column: 22, scope: !524)
!993 = !DILocation(line: 543, column: 41, scope: !994)
!994 = distinct !DILexicalBlock(scope: !524, file: !3, line: 542, column: 32)
!995 = !DILocation(line: 544, column: 33, scope: !996)
!996 = distinct !DILexicalBlock(scope: !994, file: !3, line: 544, column: 9)
!997 = !DILocation(line: 544, column: 24, scope: !996)
!998 = !DILocation(line: 544, column: 9, scope: !994)
!999 = !DILocation(line: 549, column: 15, scope: !994)
!1000 = distinct !{!1000, !989, !1001}
!1001 = !DILocation(line: 550, column: 3, scope: !524)
!1002 = !DILocation(line: 544, column: 20, scope: !996)
!1003 = !DILocation(line: 552, column: 7, scope: !552)
!1004 = !DILocation(line: 558, column: 5, scope: !551)
!1005 = !DILocation(line: 558, column: 17, scope: !551)
!1006 = !DILocation(line: 559, column: 25, scope: !558)
!1007 = !DILocation(line: 560, column: 21, scope: !557)
!1008 = !DILocation(line: 560, column: 11, scope: !558)
!1009 = !DILocation(line: 562, column: 57, scope: !556)
!1010 = !DILocation(line: 565, column: 9, scope: !556)
!1011 = !DILocation(line: 569, column: 25, scope: !554)
!1012 = !DILocation(line: 569, column: 16, scope: !554)
!1013 = !DILocation(line: 571, column: 11, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 571, column: 11)
!1015 = distinct !DILexicalBlock(scope: !554, file: !3, line: 571, column: 11)
!1016 = !DILocation(line: 571, column: 11, scope: !1015)
!1017 = !DILocation(line: 571, column: 11, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1019, file: !3, line: 571, column: 11)
!1019 = distinct !DILexicalBlock(scope: !1014, file: !3, line: 571, column: 11)
!1020 = !DILocation(line: 571, column: 11, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 571, column: 11)
!1022 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 571, column: 11)
!1023 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 571, column: 11)
!1024 = !DILocation(line: 574, column: 23, scope: !556)
!1025 = !DILocation(line: 574, column: 9, scope: !556)
!1026 = !DILocation(line: 575, column: 7, scope: !556)
!1027 = distinct !{!1027, !1004, !1028}
!1028 = !DILocation(line: 581, column: 5, scope: !551)
!1029 = !DILocation(line: 584, column: 14, scope: !551)
!1030 = !DILocation(line: 592, column: 7, scope: !560)
!1031 = !DILocation(line: 594, column: 16, scope: !560)
!1032 = !DILocation(line: 588, column: 12, scope: !560)
!1033 = !DILocation(line: 596, column: 7, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 596, column: 7)
!1035 = distinct !DILexicalBlock(scope: !560, file: !3, line: 596, column: 7)
!1036 = !DILocation(line: 596, column: 7, scope: !1035)
!1037 = !DILocation(line: 596, column: 7, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 596, column: 7)
!1039 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 596, column: 7)
!1040 = !DILocation(line: 596, column: 7, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 596, column: 7)
!1042 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 596, column: 7)
!1043 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 596, column: 7)
!1044 = !DILocation(line: 609, column: 5, scope: !551)
!1045 = !DILocation(line: 613, column: 47, scope: !551)
!1046 = !DILocation(line: 613, column: 53, scope: !551)
!1047 = !DILocation(line: 554, column: 21, scope: !551)
!1048 = !DILocation(line: 617, column: 38, scope: !551)
!1049 = !DILocation(line: 617, column: 64, scope: !551)
!1050 = !DILocation(line: 617, column: 72, scope: !551)
!1051 = !DILocation(line: 617, column: 25, scope: !551)
!1052 = !DILocation(line: 617, column: 23, scope: !551)
!1053 = !DILocation(line: 621, column: 24, scope: !551)
!1054 = !DILocation(line: 621, column: 16, scope: !551)
!1055 = !DILocation(line: 621, column: 22, scope: !551)
!1056 = !DILocation(line: 627, column: 9, scope: !564)
!1057 = !{!600, !353, i64 6}
!1058 = !DILocation(line: 627, column: 31, scope: !564)
!1059 = !DILocation(line: 627, column: 9, scope: !551)
!1060 = !DILocation(line: 630, column: 37, scope: !563)
!1061 = !DILocation(line: 630, column: 13, scope: !563)
!1062 = !DILocation(line: 631, column: 7, scope: !563)
!1063 = !DILocation(line: 631, column: 14, scope: !563)
!1064 = !DILocation(line: 631, column: 19, scope: !563)
!1065 = !DILocation(line: 632, column: 25, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !563, file: !3, line: 631, column: 42)
!1067 = !DILocation(line: 632, column: 18, scope: !1066)
!1068 = !DILocation(line: 632, column: 13, scope: !1066)
!1069 = distinct !{!1069, !1062, !1070}
!1070 = !DILocation(line: 633, column: 7, scope: !563)
!1071 = !DILocation(line: 0, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !564, file: !3, line: 627, column: 54)
!1073 = !DILocation(line: 638, column: 9, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !551, file: !3, line: 638, column: 9)
!1075 = !DILocation(line: 638, column: 24, scope: !1074)
!1076 = !DILocation(line: 638, column: 9, scope: !551)
!1077 = !DILocation(line: 640, column: 29, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 638, column: 32)
!1079 = !DILocation(line: 640, column: 22, scope: !1078)
!1080 = !DILocation(line: 641, column: 5, scope: !1078)
!1081 = !DILocation(line: 643, column: 7, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 643, column: 7)
!1083 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 643, column: 7)
!1084 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 641, column: 12)
!1085 = !DILocation(line: 643, column: 7, scope: !1083)
!1086 = !DILocation(line: 643, column: 7, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 643, column: 7)
!1088 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 643, column: 7)
!1089 = !DILocation(line: 643, column: 7, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1091, file: !3, line: 643, column: 7)
!1091 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 643, column: 7)
!1092 = distinct !DILexicalBlock(scope: !1087, file: !3, line: 643, column: 7)
!1093 = !DILocation(line: 644, column: 29, scope: !1084)
!1094 = !DILocation(line: 644, column: 22, scope: !1084)
!1095 = !DILocation(line: 646, column: 5, scope: !551)
!1096 = !DILocation(line: 649, column: 12, scope: !551)
!1097 = !DILocation(line: 650, column: 5, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 650, column: 5)
!1099 = distinct !DILexicalBlock(scope: !551, file: !3, line: 650, column: 5)
!1100 = !DILocation(line: 650, column: 5, scope: !1099)
!1101 = !DILocation(line: 650, column: 5, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 650, column: 5)
!1103 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 650, column: 5)
!1104 = !DILocation(line: 650, column: 5, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 650, column: 5)
!1106 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 650, column: 5)
!1107 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 650, column: 5)
!1108 = !DILocation(line: 651, column: 55, scope: !551)
!1109 = !DILocation(line: 651, column: 25, scope: !551)
!1110 = !DILocation(line: 654, column: 48, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !551, file: !3, line: 654, column: 9)
!1112 = !DILocation(line: 654, column: 56, scope: !1111)
!1113 = !DILocation(line: 654, column: 30, scope: !1111)
!1114 = !DILocation(line: 654, column: 9, scope: !1111)
!1115 = !DILocation(line: 654, column: 9, scope: !551)
!1116 = !DILocation(line: 655, column: 7, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1118, file: !3, line: 655, column: 7)
!1118 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 655, column: 7)
!1119 = distinct !DILexicalBlock(scope: !1120, file: !3, line: 655, column: 7)
!1120 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 655, column: 7)
!1121 = distinct !DILexicalBlock(scope: !1111, file: !3, line: 654, column: 78)
!1122 = !DILocation(line: 655, column: 7, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1124, file: !3, line: 655, column: 7)
!1124 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 655, column: 7)
!1125 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 655, column: 7)
!1126 = !DILocation(line: 0, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !996, file: !3, line: 544, column: 40)
!1128 = !DILocation(line: 664, column: 3, scope: !524)
!1129 = !DILocation(line: 0, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !630, file: !3, line: 304, column: 22)
!1131 = !DILocation(line: 667, column: 3, scope: !524)
!1132 = !{!570, !365, i64 240}
!1133 = !DILocation(line: 668, column: 3, scope: !524)
!1134 = !DILocation(line: 669, column: 3, scope: !524)
!1135 = !DILocation(line: 670, column: 1, scope: !524)
!1136 = !DILocation(line: 194, column: 43, scope: !313)
!1137 = !DILocation(line: 196, column: 2, scope: !313)
!1138 = !DILocation(line: 196, column: 10, scope: !313)
!1139 = !DILocation(line: 197, column: 2, scope: !313)
!1140 = !DILocation(line: 198, column: 2, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1142, file: !314, line: 198, column: 2)
!1142 = distinct !DILexicalBlock(scope: !313, file: !314, line: 198, column: 2)
!1143 = !DILocation(line: 199, column: 2, scope: !313)
!1144 = !DILocation(line: 200, column: 1, scope: !313)
!1145 = !DILocation(line: 720, column: 23, scope: !185)
!1146 = !DILocation(line: 720, column: 40, scope: !185)
!1147 = !DILocation(line: 720, column: 65, scope: !185)
!1148 = !DILocation(line: 728, column: 9, scope: !185)
!1149 = !DILocation(line: 733, column: 21, scope: !185)
!1150 = !DILocation(line: 733, column: 15, scope: !185)
!1151 = !DILocation(line: 734, column: 64, scope: !185)
!1152 = !DILocation(line: 734, column: 15, scope: !185)
!1153 = !DILocation(line: 735, column: 9, scope: !185)
!1154 = !DILocation(line: 737, column: 9, scope: !185)
!1155 = !DILocation(line: 739, column: 17, scope: !185)
!1156 = !DILocation(line: 741, column: 42, scope: !185)
!1157 = !DILocation(line: 722, column: 19, scope: !185)
!1158 = !DILocation(line: 744, column: 3, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1160, file: !3, line: 744, column: 3)
!1160 = distinct !DILexicalBlock(scope: !185, file: !3, line: 744, column: 3)
!1161 = !{!405, !365, i64 16}
!1162 = !DILocation(line: 744, column: 3, scope: !1160)
!1163 = !DILocation(line: 744, column: 3, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 744, column: 3)
!1165 = distinct !DILexicalBlock(scope: !1159, file: !3, line: 744, column: 3)
!1166 = !DILocation(line: 744, column: 3, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 744, column: 3)
!1168 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 744, column: 3)
!1169 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 744, column: 3)
!1170 = !DILocation(line: 745, column: 29, scope: !185)
!1171 = !DILocation(line: 732, column: 9, scope: !185)
!1172 = !DILocation(line: 747, column: 3, scope: !185)
!1173 = !DILocation(line: 748, column: 18, scope: !308)
!1174 = !DILocation(line: 751, column: 11, scope: !308)
!1175 = !DILocation(line: 732, column: 15, scope: !185)
!1176 = !DILocation(line: 778, column: 14, scope: !308)
!1177 = !DILocation(line: 725, column: 16, scope: !185)
!1178 = !DILocation(line: 779, column: 16, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !308, file: !3, line: 779, column: 9)
!1180 = !DILocation(line: 779, column: 9, scope: !308)
!1181 = !DILocation(line: 780, column: 7, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 779, column: 25)
!1183 = !{!570, !365, i64 246}
!1184 = !DILocation(line: 781, column: 7, scope: !1182)
!1185 = !DILocation(line: 783, column: 5, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1187, file: !3, line: 783, column: 5)
!1187 = distinct !DILexicalBlock(scope: !308, file: !3, line: 783, column: 5)
!1188 = !DILocation(line: 783, column: 5, scope: !1187)
!1189 = !DILocation(line: 783, column: 5, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 783, column: 5)
!1191 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 783, column: 5)
!1192 = !DILocation(line: 783, column: 5, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 783, column: 5)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 783, column: 5)
!1195 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 783, column: 5)
!1196 = !DILocation(line: 785, column: 5, scope: !308)
!1197 = !DILocation(line: 786, column: 40, scope: !308)
!1198 = !DILocation(line: 723, column: 19, scope: !185)
!1199 = !DILocation(line: 787, column: 63, scope: !308)
!1200 = !DILocation(line: 724, column: 24, scope: !185)
!1201 = !DILocation(line: 790, column: 29, scope: !308)
!1202 = !DILocation(line: 790, column: 37, scope: !308)
!1203 = !DILocation(line: 790, column: 16, scope: !308)
!1204 = !DILocation(line: 791, column: 25, scope: !308)
!1205 = !DILocation(line: 791, column: 29, scope: !308)
!1206 = !DILocation(line: 791, column: 12, scope: !308)
!1207 = !DILocation(line: 792, column: 29, scope: !308)
!1208 = !DILocation(line: 792, column: 37, scope: !308)
!1209 = !DILocation(line: 792, column: 16, scope: !308)
!1210 = !DILocation(line: 729, column: 9, scope: !185)
!1211 = !DILocation(line: 795, column: 5, scope: !308)
!1212 = !DILocation(line: 797, column: 39, scope: !307)
!1213 = !DILocation(line: 797, column: 34, scope: !307)
!1214 = !DILocation(line: 797, column: 20, scope: !307)
!1215 = !DILocation(line: 799, column: 12, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !307, file: !3, line: 799, column: 11)
!1217 = !DILocation(line: 799, column: 11, scope: !307)
!1218 = !DILocation(line: 800, column: 16, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 799, column: 24)
!1220 = !{!405, !352, i64 0}
!1221 = !DILocation(line: 681, column: 35, scope: !1222, inlinedAt: !1226)
!1222 = distinct !DISubprogram(name: "ip6_frag_alloc_pbuf_custom_ref", scope: !3, file: !3, line: 679, type: !1223, isLocal: true, isDefinition: true, scopeLine: 680, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1225)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{!169}
!1225 = !{}
!1226 = distinct !DILocation(line: 803, column: 13, scope: !307)
!1227 = !DILocation(line: 681, column: 3, scope: !1222, inlinedAt: !1226)
!1228 = !DILocation(line: 796, column: 31, scope: !307)
!1229 = !DILocation(line: 804, column: 15, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !307, file: !3, line: 804, column: 11)
!1231 = !DILocation(line: 804, column: 11, scope: !307)
!1232 = !DILocation(line: 805, column: 9, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 804, column: 24)
!1234 = !DILocation(line: 807, column: 9, scope: !1233)
!1235 = !DILocation(line: 810, column: 75, scope: !307)
!1236 = !DILocation(line: 810, column: 82, scope: !307)
!1237 = !DILocation(line: 810, column: 17, scope: !307)
!1238 = !DILocation(line: 727, column: 16, scope: !185)
!1239 = !DILocation(line: 811, column: 19, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !307, file: !3, line: 811, column: 11)
!1241 = !DILocation(line: 811, column: 11, scope: !307)
!1242 = !DILocalVariable(name: "p", arg: 1, scope: !1243, file: !3, line: 686, type: !169)
!1243 = distinct !DISubprogram(name: "ip6_frag_free_pbuf_custom_ref", scope: !3, file: !3, line: 686, type: !1244, isLocal: true, isDefinition: true, scopeLine: 687, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1246)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{null, !169}
!1246 = !{!1242}
!1247 = !DILocation(line: 686, column: 55, scope: !1243, inlinedAt: !1248)
!1248 = distinct !DILocation(line: 812, column: 9, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 811, column: 28)
!1250 = !DILocation(line: 688, column: 3, scope: !1251, inlinedAt: !1248)
!1251 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 688, column: 3)
!1252 = !DILocation(line: 689, column: 3, scope: !1243, inlinedAt: !1248)
!1253 = !DILocation(line: 690, column: 1, scope: !1243, inlinedAt: !1248)
!1254 = !DILocation(line: 813, column: 9, scope: !1249)
!1255 = !DILocation(line: 815, column: 9, scope: !1249)
!1256 = !DILocation(line: 817, column: 7, scope: !307)
!1257 = !DILocation(line: 818, column: 12, scope: !307)
!1258 = !DILocation(line: 818, column: 21, scope: !307)
!1259 = !{!1260, !352, i64 32}
!1260 = !{!"pbuf_custom_ref", !1261, i64 0, !352, i64 32}
!1261 = !{!"pbuf_custom", !405, i64 0, !352, i64 24}
!1262 = !DILocation(line: 819, column: 15, scope: !307)
!1263 = !DILocation(line: 819, column: 36, scope: !307)
!1264 = !{!1260, !352, i64 24}
!1265 = !DILocation(line: 824, column: 7, scope: !307)
!1266 = !DILocation(line: 825, column: 43, scope: !307)
!1267 = !DILocation(line: 826, column: 11, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !307, file: !3, line: 826, column: 11)
!1269 = !DILocation(line: 826, column: 11, scope: !307)
!1270 = !DILocation(line: 0, scope: !1249)
!1271 = !DILocation(line: 827, column: 16, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1268, file: !3, line: 826, column: 25)
!1273 = !DILocation(line: 828, column: 7, scope: !1272)
!1274 = !DILocation(line: 0, scope: !1219)
!1275 = !DILocation(line: 829, column: 5, scope: !308)
!1276 = !DILocation(line: 834, column: 41, scope: !308)
!1277 = !DILocation(line: 0, scope: !307)
!1278 = !DILocation(line: 834, column: 22, scope: !308)
!1279 = !DILocation(line: 835, column: 15, scope: !308)
!1280 = !DILocation(line: 835, column: 24, scope: !308)
!1281 = !{!593, !353, i64 1}
!1282 = !DILocation(line: 836, column: 54, scope: !308)
!1283 = !DILocation(line: 836, column: 70, scope: !308)
!1284 = !DILocation(line: 836, column: 97, scope: !308)
!1285 = !DILocation(line: 836, column: 94, scope: !308)
!1286 = !DILocation(line: 836, column: 45, scope: !308)
!1287 = !DILocation(line: 836, column: 34, scope: !308)
!1288 = !DILocation(line: 836, column: 15, scope: !308)
!1289 = !DILocation(line: 836, column: 32, scope: !308)
!1290 = !DILocation(line: 837, column: 44, scope: !308)
!1291 = !DILocation(line: 837, column: 33, scope: !308)
!1292 = !DILocation(line: 837, column: 15, scope: !308)
!1293 = !DILocation(line: 837, column: 31, scope: !308)
!1294 = !DILocation(line: 839, column: 5, scope: !308)
!1295 = !DILocation(line: 840, column: 5, scope: !308)
!1296 = !DILocation(line: 845, column: 5, scope: !308)
!1297 = !{!570, !365, i64 234}
!1298 = !DILocation(line: 846, column: 12, scope: !308)
!1299 = !{!1300, !352, i64 208}
!1300 = !{!"netif", !352, i64 0, !598, i64 8, !598, i64 32, !598, i64 56, !353, i64 80, !353, i64 152, !353, i64 156, !353, i64 168, !352, i64 184, !352, i64 192, !352, i64 200, !352, i64 208, !352, i64 216, !352, i64 224, !352, i64 232, !353, i64 240, !365, i64 248, !365, i64 250, !365, i64 252, !353, i64 254, !353, i64 260, !353, i64 261, !353, i64 262, !353, i64 264, !353, i64 265, !353, i64 266, !352, i64 272}
!1301 = !DILocation(line: 846, column: 5, scope: !308)
!1302 = !DILocation(line: 855, column: 5, scope: !308)
!1303 = !DILocation(line: 856, column: 25, scope: !308)
!1304 = !DILocation(line: 857, column: 47, scope: !308)
!1305 = distinct !{!1305, !1172, !1306}
!1306 = !DILocation(line: 858, column: 3, scope: !185)
!1307 = !DILocation(line: 0, scope: !185)
!1308 = !DILocation(line: 860, column: 1, scope: !185)
!1309 = distinct !DISubprogram(name: "ip6_frag_free_pbuf_custom", scope: !3, file: !3, line: 695, type: !179, isLocal: true, isDefinition: true, scopeLine: 696, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1310)
!1310 = !{!1311, !1312}
!1311 = !DILocalVariable(name: "p", arg: 1, scope: !1309, file: !3, line: 695, type: !129)
!1312 = !DILocalVariable(name: "pcr", scope: !1309, file: !3, line: 697, type: !169)
!1313 = !DILocation(line: 695, column: 40, scope: !1309)
!1314 = !DILocation(line: 697, column: 27, scope: !1309)
!1315 = !DILocation(line: 698, column: 3, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1317, file: !3, line: 698, column: 3)
!1317 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 698, column: 3)
!1318 = !DILocation(line: 698, column: 3, scope: !1317)
!1319 = !DILocation(line: 698, column: 3, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1321, file: !3, line: 698, column: 3)
!1321 = distinct !DILexicalBlock(scope: !1316, file: !3, line: 698, column: 3)
!1322 = !DILocation(line: 698, column: 3, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 698, column: 3)
!1324 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 698, column: 3)
!1325 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 698, column: 3)
!1326 = !DILocation(line: 699, column: 3, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 699, column: 3)
!1328 = !DILocation(line: 700, column: 12, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 700, column: 7)
!1330 = !DILocation(line: 700, column: 21, scope: !1329)
!1331 = !DILocation(line: 700, column: 7, scope: !1309)
!1332 = !DILocation(line: 701, column: 5, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1329, file: !3, line: 700, column: 30)
!1334 = !DILocation(line: 702, column: 3, scope: !1333)
!1335 = !DILocation(line: 686, column: 55, scope: !1243, inlinedAt: !1336)
!1336 = distinct !DILocation(line: 703, column: 3, scope: !1309)
!1337 = !DILocation(line: 688, column: 3, scope: !1251, inlinedAt: !1336)
!1338 = !DILocation(line: 689, column: 29, scope: !1243, inlinedAt: !1336)
!1339 = !DILocation(line: 689, column: 3, scope: !1243, inlinedAt: !1336)
!1340 = !DILocation(line: 690, column: 1, scope: !1243, inlinedAt: !1336)
!1341 = !DILocation(line: 704, column: 1, scope: !1309)
