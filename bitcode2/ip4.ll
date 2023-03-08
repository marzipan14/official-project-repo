; ModuleID = '/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/ipv4/ip4.c'
source_filename = "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/ipv4/ip4.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.netif = type { %struct.netif*, %struct.ip_addr, %struct.ip_addr, %struct.ip_addr, [3 x %struct.ip_addr], [3 x i8], [3 x i32], [3 x i32], i8 (%struct.pbuf*, %struct.netif*)*, i8 (%struct.netif*, %struct.pbuf*, %struct.ip4_addr*)*, i8 (%struct.netif*, %struct.pbuf*)*, i8 (%struct.netif*, %struct.pbuf*, %struct.ip6_addr*)*, {}*, {}*, i8*, [1 x i8*], i16, i16, i16, [6 x i8], i8, i8, [2 x i8], i8, i8, i8, i8 (%struct.netif*, %struct.ip6_addr*, i32)* }
%struct.ip_addr = type { %union.anon, i8 }
%union.anon = type { %struct.ip6_addr }
%struct.ip6_addr = type { [4 x i32], i8 }
%struct.pbuf = type { %struct.pbuf*, i8*, i16, i16, i8, i8, i8, i8 }
%struct.ip4_addr = type { i32 }
%struct.stats_ = type { %struct.stats_proto, %struct.stats_proto, %struct.stats_proto, %struct.stats_proto, %struct.stats_proto, %struct.stats_proto, %struct.stats_proto, %struct.stats_sys, %struct.stats_proto, %struct.stats_proto, %struct.stats_proto, %struct.stats_igmp, %struct.stats_proto }
%struct.stats_sys = type { %struct.stats_syselem, %struct.stats_syselem, %struct.stats_syselem }
%struct.stats_syselem = type { i16, i16, i16 }
%struct.stats_igmp = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.stats_proto = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.ip_globals = type { %struct.netif*, %struct.netif*, %struct.ip_hdr*, %struct.ip6_hdr*, i16, %struct.ip_addr, %struct.ip_addr }
%struct.ip_hdr = type { i8, i8, i16, i16, i16, i8, i8, i16, %struct.ip4_addr_packed, %struct.ip4_addr_packed }
%struct.ip4_addr_packed = type { i32 }
%struct.ip6_hdr = type { i32, i16, i8, i8, %struct.ip6_addr_packed, %struct.ip6_addr_packed }
%struct.ip6_addr_packed = type { [4 x i32] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@ip4_default_multicast_netif = internal unnamed_addr global %struct.netif* null, align 8, !dbg !0
@netif_list = external dso_local local_unnamed_addr global %struct.netif*, align 8
@netif_default = external dso_local local_unnamed_addr global %struct.netif*, align 8
@lwip_stats = external dso_local local_unnamed_addr global %struct.stats_, align 2
@ip_data = external dso_local local_unnamed_addr global %struct.ip_globals, align 8
@.str = private unnamed_addr constant [12 x i8] c"p->ref == 1\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Assertion failure: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"!(1)\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"check that first pbuf can hold struct ip_hdr\00", align 1
@ip_id = internal unnamed_addr global i16 0, align 2, !dbg !102
@ip_addr_any = external dso_local local_unnamed_addr constant %struct.ip_addr, align 4
@uk_pr_crit.__str = internal global [8 x i8] c"liblwip\00", section ".data_shared", align 1, !dbg !104
@uk_pr_crit.__str.4 = internal global [6 x i8] c"ip4.c\00", section ".data_shared", align 1, !dbg !131
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local void @ip4_set_default_multicast_netif(%struct.netif*) local_unnamed_addr #0 !dbg !241 {
  store %struct.netif* %0, %struct.netif** @ip4_default_multicast_netif, align 8, !dbg !245, !tbaa !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !250
  ret void, !dbg !250
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: noredzone nounwind
define dso_local %struct.netif* @ip4_route(%struct.ip4_addr* nocapture readonly) local_unnamed_addr #0 !dbg !251 {
  %2 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %0, i64 0, i32 0, !dbg !258
  %3 = load i32, i32* %2, align 4, !dbg !258, !tbaa !260
  %4 = and i32 %3, 240, !dbg !258
  %5 = icmp eq i32 %4, 224, !dbg !258
  %6 = load %struct.netif*, %struct.netif** @ip4_default_multicast_netif, align 8, !dbg !263
  %7 = icmp ne %struct.netif* %6, null, !dbg !263
  %8 = and i1 %5, %7, !dbg !264
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !264
  br i1 %8, label %65, label %9, !dbg !264

; <label>:9:                                      ; preds = %1
  %10 = load %struct.netif*, %struct.netif** @netif_list, align 8, !dbg !265, !tbaa !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !265
  %11 = icmp eq %struct.netif* %10, null, !dbg !268
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !265
  br i1 %11, label %43, label %12, !dbg !265

; <label>:12:                                     ; preds = %9, %39
  %13 = phi %struct.netif* [ %41, %39 ], [ %10, %9 ]
  %14 = getelementptr inbounds %struct.netif, %struct.netif* %13, i64 0, i32 21, !dbg !270
  %15 = load i8, i8* %14, align 1, !dbg !270, !tbaa !273
  %16 = zext i8 %15 to i32, !dbg !270
  %17 = and i32 %16, 1, !dbg !270
  %18 = icmp eq i32 %17, 0, !dbg !270
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !277
  br i1 %18, label %39, label %19, !dbg !277

; <label>:19:                                     ; preds = %12
  %20 = and i32 %16, 4, !dbg !278
  %21 = icmp eq i32 %20, 0, !dbg !278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !279
  br i1 %21, label %39, label %22, !dbg !279

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds %struct.netif, %struct.netif* %13, i64 0, i32 1, i32 0, i32 0, i32 0, i64 0, !dbg !280
  %24 = load i32, i32* %23, align 8, !dbg !280, !tbaa !281
  %25 = icmp eq i32 %24, 0, !dbg !280
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !282
  br i1 %25, label %39, label %26, !dbg !282

; <label>:26:                                     ; preds = %22
  %27 = getelementptr inbounds %struct.netif, %struct.netif* %13, i64 0, i32 2, i32 0, i32 0, i32 0, i64 0, !dbg !283
  %28 = load i32, i32* %27, align 8, !dbg !283, !tbaa !281
  %29 = xor i32 %24, %3, !dbg !283
  %30 = and i32 %28, %29, !dbg !283
  %31 = icmp eq i32 %30, 0, !dbg !283
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !286
  br i1 %31, label %65, label %32, !dbg !286

; <label>:32:                                     ; preds = %26
  %33 = and i32 %16, 2, !dbg !287
  %34 = icmp eq i32 %33, 0, !dbg !289
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !290
  br i1 %34, label %35, label %39, !dbg !290

; <label>:35:                                     ; preds = %32
  %36 = getelementptr inbounds %struct.netif, %struct.netif* %13, i64 0, i32 3, i32 0, i32 0, i32 0, i64 0, !dbg !291
  %37 = load i32, i32* %36, align 8, !dbg !291, !tbaa !281
  %38 = icmp eq i32 %3, %37, !dbg !291
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !292
  br i1 %38, label %65, label %39, !dbg !292

; <label>:39:                                     ; preds = %19, %12, %22, %35, %32
  %40 = getelementptr inbounds %struct.netif, %struct.netif* %13, i64 0, i32 0, !dbg !268
  %41 = load %struct.netif*, %struct.netif** %40, align 8, !dbg !268, !tbaa !293
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !268
  %42 = icmp eq %struct.netif* %41, null, !dbg !268
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !265
  br i1 %42, label %43, label %12, !dbg !265, !llvm.loop !294

; <label>:43:                                     ; preds = %39, %9
  %44 = load %struct.netif*, %struct.netif** @netif_default, align 8, !dbg !296, !tbaa !246
  %45 = icmp eq %struct.netif* %44, null, !dbg !298
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !299
  br i1 %45, label %62, label %46, !dbg !299

; <label>:46:                                     ; preds = %43
  %47 = getelementptr inbounds %struct.netif, %struct.netif* %44, i64 0, i32 21, !dbg !300
  %48 = load i8, i8* %47, align 1, !dbg !300, !tbaa !273
  %49 = zext i8 %48 to i32, !dbg !300
  %50 = and i32 %49, 1, !dbg !300
  %51 = icmp eq i32 %50, 0, !dbg !300
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !301
  br i1 %51, label %62, label %52, !dbg !301

; <label>:52:                                     ; preds = %46
  %53 = and i32 %49, 4, !dbg !302
  %54 = icmp eq i32 %53, 0, !dbg !302
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !303
  br i1 %54, label %62, label %55, !dbg !303

; <label>:55:                                     ; preds = %52
  %56 = getelementptr inbounds %struct.netif, %struct.netif* %44, i64 0, i32 1, i32 0, i32 0, i32 0, i64 0, !dbg !304
  %57 = load i32, i32* %56, align 8, !dbg !304, !tbaa !281
  %58 = icmp eq i32 %57, 0, !dbg !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !305
  br i1 %58, label %62, label %59, !dbg !305

; <label>:59:                                     ; preds = %55
  %60 = and i32 %3, 255, !dbg !306
  %61 = icmp eq i32 %60, 127, !dbg !306
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !307
  br i1 %61, label %62, label %65, !dbg !307

; <label>:62:                                     ; preds = %52, %46, %59, %55, %43
  %63 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 3, i32 7), align 2, !dbg !308, !tbaa !310
  %64 = add i16 %63, 1, !dbg !308
  store i16 %64, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 3, i32 7), align 2, !dbg !308, !tbaa !310
  br label %65, !dbg !316

; <label>:65:                                     ; preds = %35, %26, %59, %1, %62
  %66 = phi %struct.netif* [ null, %62 ], [ %6, %1 ], [ %44, %59 ], [ %13, %26 ], [ %13, %35 ], !dbg !317
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !318
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !320
  ret %struct.netif* %66, !dbg !320
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local signext i8 @ip4_input(%struct.pbuf*, %struct.netif*) local_unnamed_addr #0 !dbg !321 {
  %3 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 3, i32 1), align 2, !dbg !331, !tbaa !332
  %4 = add i16 %3, 1, !dbg !331
  store i16 %4, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 3, i32 1), align 2, !dbg !331, !tbaa !332
  %5 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 1, !dbg !333
  %6 = load i8*, i8** %5, align 8, !dbg !333, !tbaa !334
  %7 = load i8, i8* %6, align 1, !dbg !337, !tbaa !339
  %8 = and i8 %7, -16, !dbg !342
  %9 = icmp eq i8 %8, 64, !dbg !342
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !343
  br i1 %9, label %16, label %10, !dbg !343

; <label>:10:                                     ; preds = %2
  %11 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !344
  %12 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 3, i32 10), align 2, !dbg !346, !tbaa !347
  %13 = add i16 %12, 1, !dbg !346
  store i16 %13, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 3, i32 10), align 2, !dbg !346, !tbaa !347
  %14 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 3, i32 3), align 2, !dbg !348, !tbaa !349
  %15 = add i16 %14, 1, !dbg !348
  store i16 %15, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 3, i32 3), align 2, !dbg !348, !tbaa !349
  br label %187, !dbg !350

; <label>:16:                                     ; preds = %2
  %17 = shl i8 %7, 2, !dbg !351
  %18 = and i8 %17, 60, !dbg !351
  %19 = zext i8 %18 to i16, !dbg !351
  %20 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !353
  %21 = bitcast i8* %20 to i16*, !dbg !353
  %22 = load i16, i16* %21, align 1, !dbg !353, !tbaa !354
  %23 = tail call zeroext i16 @lwip_htons(i16 zeroext %22) #7, !dbg !353
  %24 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 2, !dbg !356
  %25 = load i16, i16* %24, align 8, !dbg !356, !tbaa !358
  %26 = icmp ult i16 %23, %25, !dbg !359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !360
  br i1 %26, label %27, label %28, !dbg !360

; <label>:27:                                     ; preds = %16
  tail call void @pbuf_realloc(%struct.pbuf* nonnull %0, i16 zeroext %23) #7, !dbg !361
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !363
  br label %28, !dbg !363

; <label>:28:                                     ; preds = %27, %16
  %29 = zext i8 %18 to i32, !dbg !364
  %30 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 3, !dbg !366
  %31 = load i16, i16* %30, align 2, !dbg !366, !tbaa !367
  %32 = zext i16 %31 to i32, !dbg !368
  %33 = icmp ugt i32 %29, %32, !dbg !369
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !370
  br i1 %33, label %39, label %34, !dbg !370

; <label>:34:                                     ; preds = %28
  %35 = load i16, i16* %24, align 8, !dbg !371, !tbaa !358
  %36 = icmp ugt i16 %23, %35, !dbg !372
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !373
  br i1 %36, label %39, label %37, !dbg !373

; <label>:37:                                     ; preds = %34
  %38 = icmp ult i8 %18, 20, !dbg !374
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !375
  br i1 %38, label %39, label %45, !dbg !375

; <label>:39:                                     ; preds = %37, %34, %28
  %40 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !376
  %41 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 3, i32 5), align 2, !dbg !378, !tbaa !379
  %42 = add i16 %41, 1, !dbg !378
  store i16 %42, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 3, i32 5), align 2, !dbg !378, !tbaa !379
  %43 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 3, i32 3), align 2, !dbg !380, !tbaa !349
  %44 = add i16 %43, 1, !dbg !380
  store i16 %44, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 3, i32 3), align 2, !dbg !380, !tbaa !349
  br label %187, !dbg !381

; <label>:45:                                     ; preds = %37
  %46 = icmp eq %struct.netif* %1, null, !dbg !382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !382
  br i1 %46, label %52, label %47, !dbg !382

; <label>:47:                                     ; preds = %45
  %48 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 16, !dbg !382
  %49 = load i16, i16* %48, align 8, !dbg !382, !tbaa !384
  %50 = and i16 %49, 256, !dbg !382
  %51 = icmp eq i16 %50, 0, !dbg !382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !385
  br i1 %51, label %61, label %52, !dbg !385

; <label>:52:                                     ; preds = %47, %45
  %53 = tail call zeroext i16 @inet_chksum(i8* nonnull %6, i16 zeroext %19) #7, !dbg !386
  %54 = icmp eq i16 %53, 0, !dbg !389
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !390
  br i1 %54, label %61, label %55, !dbg !390

; <label>:55:                                     ; preds = %52
  %56 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !391
  %57 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 3, i32 4), align 2, !dbg !393, !tbaa !394
  %58 = add i16 %57, 1, !dbg !393
  store i16 %58, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 3, i32 4), align 2, !dbg !393, !tbaa !394
  %59 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 3, i32 3), align 2, !dbg !395, !tbaa !349
  %60 = add i16 %59, 1, !dbg !395
  store i16 %60, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 3, i32 3), align 2, !dbg !395, !tbaa !349
  br label %187, !dbg !396

; <label>:61:                                     ; preds = %52, %47
  %62 = getelementptr inbounds i8, i8* %6, i64 16, !dbg !397
  %63 = bitcast i8* %62 to i32*, !dbg !397
  %64 = load i32, i32* %63, align 1, !dbg !397, !tbaa !399
  store i32 %64, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !397, !tbaa !281
  store i8 0, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 1), align 4, !dbg !400, !tbaa !402
  store i32 0, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 3), align 4, !dbg !404, !tbaa !281
  store i32 0, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 2), align 4, !dbg !404, !tbaa !281
  store i32 0, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 1), align 4, !dbg !404, !tbaa !281
  store i8 0, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 1), align 4, !dbg !404, !tbaa !281
  %65 = getelementptr inbounds i8, i8* %6, i64 12, !dbg !406
  %66 = bitcast i8* %65 to i32*, !dbg !406
  %67 = load i32, i32* %66, align 1, !dbg !406, !tbaa !408
  store i32 %67, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !406, !tbaa !281
  store i8 0, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 1), align 4, !dbg !409, !tbaa !411
  store i32 0, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 3), align 4, !dbg !412, !tbaa !281
  store i32 0, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 2), align 4, !dbg !412, !tbaa !281
  store i32 0, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 1), align 4, !dbg !412, !tbaa !281
  store i8 0, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 1), align 4, !dbg !412, !tbaa !281
  %68 = and i32 %64, 240, !dbg !414
  %69 = icmp eq i32 %68, 224, !dbg !414
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !416
  %70 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 21, !dbg !417
  %71 = load i8, i8* %70, align 1, !dbg !417, !tbaa !273
  %72 = and i8 %71, 1, !dbg !417
  %73 = icmp eq i8 %72, 0, !dbg !417
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !417
  br i1 %69, label %74, label %81, !dbg !416

; <label>:74:                                     ; preds = %61
  br i1 %73, label %80, label %75, !dbg !420

; <label>:75:                                     ; preds = %74
  %76 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 1, i32 0, i32 0, i32 0, i64 0, !dbg !423
  %77 = load i32, i32* %76, align 8, !dbg !423, !tbaa !281
  %78 = icmp eq i32 %77, 0, !dbg !423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !424
  br i1 %78, label %80, label %79, !dbg !424

; <label>:79:                                     ; preds = %75
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !426
  br label %125, !dbg !426

; <label>:80:                                     ; preds = %74, %75
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %125

; <label>:81:                                     ; preds = %61
  br i1 %73, label %94, label %82, !dbg !435

; <label>:82:                                     ; preds = %81
  %83 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 1, i32 0, i32 0, i32 0, i64 0, !dbg !437
  %84 = load i32, i32* %83, align 8, !dbg !437, !tbaa !281
  %85 = icmp eq i32 %84, 0, !dbg !437
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !438
  br i1 %85, label %94, label %86, !dbg !438

; <label>:86:                                     ; preds = %82
  %87 = icmp eq i32 %64, %84, !dbg !439
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !442
  br i1 %87, label %93, label %88, !dbg !442

; <label>:88:                                     ; preds = %86
  %89 = tail call zeroext i8 @ip4_addr_isbroadcast_u32(i32 %64, %struct.netif* nonnull %1) #7, !dbg !443
  %90 = icmp eq i8 %89, 0, !dbg !443
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !444
  br i1 %90, label %91, label %93, !dbg !444

; <label>:91:                                     ; preds = %88
  %92 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !445, !tbaa !281
  br label %94, !dbg !444

; <label>:93:                                     ; preds = %88, %86
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !448
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !450
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !451
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !452
  br label %125, !dbg !452

; <label>:94:                                     ; preds = %91, %81, %82
  %95 = phi i32 [ %92, %91 ], [ %64, %81 ], [ %64, %82 ], !dbg !445
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !454
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !450
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !451
  %96 = and i32 %95, 255, !dbg !445
  %97 = icmp eq i32 %96, 127, !dbg !445
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !455
  br i1 %97, label %125, label %98, !dbg !455

; <label>:98:                                     ; preds = %94
  %99 = load %struct.netif*, %struct.netif** @netif_list, align 8, !dbg !456, !tbaa !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !456
  %100 = icmp eq %struct.netif* %99, null, !dbg !459
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !456
  br i1 %100, label %125, label %101, !dbg !456

; <label>:101:                                    ; preds = %98, %121
  %102 = phi %struct.netif* [ %123, %121 ], [ %99, %98 ]
  %103 = icmp eq %struct.netif* %102, %1, !dbg !461
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !464
  br i1 %103, label %121, label %104, !dbg !464

; <label>:104:                                    ; preds = %101
  %105 = getelementptr inbounds %struct.netif, %struct.netif* %102, i64 0, i32 21, !dbg !468
  %106 = load i8, i8* %105, align 1, !dbg !468, !tbaa !273
  %107 = and i8 %106, 1, !dbg !468
  %108 = icmp eq i8 %107, 0, !dbg !468
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !469
  br i1 %108, label %119, label %109, !dbg !469

; <label>:109:                                    ; preds = %104
  %110 = getelementptr inbounds %struct.netif, %struct.netif* %102, i64 0, i32 1, i32 0, i32 0, i32 0, i64 0, !dbg !470
  %111 = load i32, i32* %110, align 8, !dbg !470, !tbaa !281
  %112 = icmp eq i32 %111, 0, !dbg !470
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !471
  br i1 %112, label %119, label %113, !dbg !471

; <label>:113:                                    ; preds = %109
  %114 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !472, !tbaa !281
  %115 = icmp eq i32 %114, %111, !dbg !472
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !473
  br i1 %115, label %120, label %116, !dbg !473

; <label>:116:                                    ; preds = %113
  %117 = tail call zeroext i8 @ip4_addr_isbroadcast_u32(i32 %114, %struct.netif* nonnull %102) #7, !dbg !474
  %118 = icmp eq i8 %117, 0, !dbg !474
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !475
  br i1 %118, label %119, label %120, !dbg !475

; <label>:119:                                    ; preds = %104, %109, %116
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !476
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !477
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !478
  br label %121, !dbg !478

; <label>:120:                                    ; preds = %113, %116
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !479
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !477
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !478
  br label %125, !dbg !478

; <label>:121:                                    ; preds = %119, %101
  %122 = getelementptr inbounds %struct.netif, %struct.netif* %102, i64 0, i32 0, !dbg !459
  %123 = load %struct.netif*, %struct.netif** %122, align 8, !dbg !459, !tbaa !293
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !459
  %124 = icmp eq %struct.netif* %123, null, !dbg !459
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !456
  br i1 %124, label %125, label %101, !dbg !456, !llvm.loop !480

; <label>:125:                                    ; preds = %121, %98, %120, %93, %94, %79, %80
  %126 = phi %struct.netif* [ null, %80 ], [ %1, %79 ], [ %1, %93 ], [ null, %94 ], [ %102, %120 ], [ null, %98 ], [ null, %121 ], !dbg !482
  %127 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !483, !tbaa !281
  %128 = tail call zeroext i8 @ip4_addr_isbroadcast_u32(i32 %127, %struct.netif* %1) #7, !dbg !483
  %129 = icmp eq i8 %128, 0, !dbg !486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !487
  br i1 %129, label %130, label %134, !dbg !487

; <label>:130:                                    ; preds = %125
  %131 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !488, !tbaa !281
  %132 = and i32 %131, 240, !dbg !488
  %133 = icmp eq i32 %132, 224, !dbg !488
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !489
  br i1 %133, label %134, label %138, !dbg !489

; <label>:134:                                    ; preds = %125, %130
  %135 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %0) #7, !dbg !490
  %136 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 3, i32 3), align 2, !dbg !492, !tbaa !349
  %137 = add i16 %136, 1, !dbg !492
  store i16 %137, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 3, i32 3), align 2, !dbg !492, !tbaa !349
  br label %187, !dbg !493

; <label>:138:                                    ; preds = %130
  %139 = icmp eq %struct.netif* %126, null, !dbg !494
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !496
  br i1 %139, label %140, label %144, !dbg !496

; <label>:140:                                    ; preds = %138
  %141 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 3, i32 3), align 2, !dbg !497, !tbaa !349
  %142 = add i16 %141, 1, !dbg !497
  store i16 %142, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 3, i32 3), align 2, !dbg !497, !tbaa !349
  %143 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %0) #7, !dbg !500
  br label %187, !dbg !501

; <label>:144:                                    ; preds = %138
  %145 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !502
  %146 = bitcast i8* %145 to i16*, !dbg !502
  %147 = load i16, i16* %146, align 1, !dbg !502, !tbaa !504
  %148 = and i16 %147, -193, !dbg !505
  %149 = icmp eq i16 %148, 0, !dbg !506
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !507
  br i1 %149, label %156, label %150, !dbg !507

; <label>:150:                                    ; preds = %144
  %151 = tail call %struct.pbuf* @ip4_reass(%struct.pbuf* %0) #7, !dbg !508
  %152 = icmp eq %struct.pbuf* %151, null, !dbg !510
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !512
  br i1 %152, label %187, label %153, !dbg !512

; <label>:153:                                    ; preds = %150
  %154 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %151, i64 0, i32 1, !dbg !513
  %155 = load i8*, i8** %154, align 8, !dbg !513, !tbaa !334
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !514
  br label %156, !dbg !514

; <label>:156:                                    ; preds = %144, %153
  %157 = phi i8* [ %155, %153 ], [ %6, %144 ]
  %158 = phi %struct.pbuf* [ %151, %153 ], [ %0, %144 ]
  store %struct.netif* %126, %struct.netif** getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 0), align 8, !dbg !515, !tbaa !516
  store %struct.netif* %1, %struct.netif** getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 1), align 8, !dbg !517, !tbaa !518
  store i8* %157, i8** bitcast (%struct.ip_hdr** getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 2) to i8**), align 8, !dbg !519, !tbaa !520
  %159 = load i8, i8* %157, align 1, !dbg !521, !tbaa !339
  %160 = shl i8 %159, 2, !dbg !521
  %161 = and i8 %160, 60, !dbg !521
  %162 = zext i8 %161 to i16, !dbg !521
  store i16 %162, i16* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 4), align 8, !dbg !522, !tbaa !523
  %163 = zext i8 %18 to i64, !dbg !524
  %164 = tail call zeroext i8 @pbuf_remove_header(%struct.pbuf* %158, i64 %163) #7, !dbg !526
  %165 = getelementptr inbounds i8, i8* %157, i64 9, !dbg !527
  %166 = load i8, i8* %165, align 1, !dbg !527, !tbaa !528
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !529
  switch i8 %166, label %170 [
    i8 17, label %167
    i8 6, label %168
    i8 1, label %169
  ], !dbg !529

; <label>:167:                                    ; preds = %156
  tail call void @udp_input(%struct.pbuf* %158, %struct.netif* %1) #7, !dbg !530
  br label %186, !dbg !532

; <label>:168:                                    ; preds = %156
  tail call void @tcp_input(%struct.pbuf* %158, %struct.netif* %1) #7, !dbg !533
  br label %186, !dbg !534

; <label>:169:                                    ; preds = %156
  tail call void @icmp_input(%struct.pbuf* %158, %struct.netif* %1) #7, !dbg !535
  br label %186, !dbg !536

; <label>:170:                                    ; preds = %156
  %171 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !537, !tbaa !281
  %172 = tail call zeroext i8 @ip4_addr_isbroadcast_u32(i32 %171, %struct.netif* nonnull %126) #7, !dbg !537
  %173 = icmp eq i8 %172, 0, !dbg !537
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !540
  br i1 %173, label %174, label %180, !dbg !540

; <label>:174:                                    ; preds = %170
  %175 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !541, !tbaa !281
  %176 = and i32 %175, 240, !dbg !541
  %177 = icmp eq i32 %176, 224, !dbg !541
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !542
  br i1 %177, label %180, label %178, !dbg !542

; <label>:178:                                    ; preds = %174
  %179 = tail call zeroext i8 @pbuf_header_force(%struct.pbuf* %158, i16 signext %19) #7, !dbg !543
  tail call void @icmp_dest_unreach(%struct.pbuf* %158, i32 2) #7, !dbg !545
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !546
  br label %180, !dbg !546

; <label>:180:                                    ; preds = %170, %178, %174
  %181 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 3, i32 8), align 2, !dbg !547, !tbaa !548
  %182 = add i16 %181, 1, !dbg !547
  store i16 %182, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 3, i32 8), align 2, !dbg !547, !tbaa !548
  %183 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 3, i32 3), align 2, !dbg !549, !tbaa !349
  %184 = add i16 %183, 1, !dbg !549
  store i16 %184, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 3, i32 3), align 2, !dbg !549, !tbaa !349
  %185 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %158) #7, !dbg !550
  br label %186, !dbg !551

; <label>:186:                                    ; preds = %180, %169, %168, %167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !552
  store <2 x %struct.netif*> zeroinitializer, <2 x %struct.netif*>* bitcast (%struct.ip_globals* @ip_data to <2 x %struct.netif*>*), align 8, !dbg !553, !tbaa !246
  store %struct.ip_hdr* null, %struct.ip_hdr** getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 2), align 8, !dbg !554, !tbaa !520
  store i16 0, i16* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 4), align 8, !dbg !555, !tbaa !523
  store i32 0, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !556, !tbaa !281
  store i32 0, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !557, !tbaa !281
  br label %187, !dbg !558

; <label>:187:                                    ; preds = %150, %186, %140, %134, %55, %39, %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !559
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !560
  ret i8 0, !dbg !560
}

; Function Attrs: noredzone
declare dso_local zeroext i8 @pbuf_free(%struct.pbuf*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local zeroext i16 @lwip_htons(i16 zeroext) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @pbuf_realloc(%struct.pbuf*, i16 zeroext) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local zeroext i16 @inet_chksum(i8*, i16 zeroext) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local zeroext i8 @ip4_addr_isbroadcast_u32(i32, %struct.netif*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.pbuf* @ip4_reass(%struct.pbuf*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local zeroext i8 @pbuf_remove_header(%struct.pbuf*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @udp_input(%struct.pbuf*, %struct.netif*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @tcp_input(%struct.pbuf*, %struct.netif*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @icmp_input(%struct.pbuf*, %struct.netif*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local zeroext i8 @pbuf_header_force(%struct.pbuf*, i16 signext) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @icmp_dest_unreach(%struct.pbuf*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local signext i8 @ip4_output_if(%struct.pbuf*, %struct.ip4_addr* readonly, %struct.ip4_addr*, i8 zeroext, i8 zeroext, i8 zeroext, %struct.netif*) local_unnamed_addr #0 !dbg !561 {
  %8 = icmp eq %struct.ip4_addr* %2, null, !dbg !581
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !583
  br i1 %8, label %18, label %9, !dbg !583

; <label>:9:                                      ; preds = %7
  %10 = icmp eq %struct.ip4_addr* %1, null, !dbg !584
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !584
  br i1 %10, label %15, label %11, !dbg !584

; <label>:11:                                     ; preds = %9
  %12 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %1, i64 0, i32 0, !dbg !584
  %13 = load i32, i32* %12, align 4, !dbg !584, !tbaa !260
  %14 = icmp eq i32 %13, 0, !dbg !584
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !587
  br i1 %14, label %15, label %18, !dbg !587

; <label>:15:                                     ; preds = %11, %9
  %16 = getelementptr inbounds %struct.netif, %struct.netif* %6, i64 0, i32 1, i32 0, !dbg !588
  %17 = bitcast %union.anon* %16 to %struct.ip4_addr*, !dbg !588
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !590
  br label %18, !dbg !590

; <label>:18:                                     ; preds = %7, %11, %15
  %19 = phi %struct.ip4_addr* [ %17, %15 ], [ %1, %11 ], [ %1, %7 ], !dbg !591
  %20 = tail call signext i8 @ip4_output_if_src(%struct.pbuf* %0, %struct.ip4_addr* %19, %struct.ip4_addr* %2, i8 zeroext %3, i8 zeroext %4, i8 zeroext %5, %struct.netif* %6) #8, !dbg !592
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !593
  ret i8 %20, !dbg !593
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @ip4_output_if_src(%struct.pbuf*, %struct.ip4_addr* readonly, %struct.ip4_addr*, i8 zeroext, i8 zeroext, i8 zeroext, %struct.netif*) local_unnamed_addr #0 !dbg !594 {
  %8 = alloca %struct.ip4_addr, align 4
  %9 = bitcast %struct.ip4_addr* %8 to i8*, !dbg !615
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #6, !dbg !615
  %10 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 6, !dbg !616
  %11 = load i8, i8* %10, align 2, !dbg !616, !tbaa !619
  %12 = icmp eq i8 %11, 1, !dbg !616
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !620
  br i1 %12, label %14, label %13, !dbg !620

; <label>:13:                                     ; preds = %7
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0)) #8, !dbg !621
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !624
  tail call void @ukplat_terminate(i32 3) #9, !dbg !624
  unreachable

; <label>:14:                                     ; preds = %7
  %15 = icmp eq %struct.ip4_addr* %2, null, !dbg !628
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !629
  br i1 %15, label %67, label %16, !dbg !629

; <label>:16:                                     ; preds = %14
  %17 = tail call zeroext i8 @pbuf_add_header(%struct.pbuf* nonnull %0, i64 20) #7, !dbg !631
  %18 = icmp eq i8 %17, 0, !dbg !631
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !633
  br i1 %18, label %22, label %19, !dbg !633

; <label>:19:                                     ; preds = %16
  %20 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 3, i32 10), align 2, !dbg !634, !tbaa !347
  %21 = add i16 %20, 1, !dbg !634
  store i16 %21, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 3, i32 10), align 2, !dbg !634, !tbaa !347
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !636
  br label %88

; <label>:22:                                     ; preds = %16
  %23 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 1, !dbg !637
  %24 = load i8*, i8** %23, align 8, !dbg !637, !tbaa !334
  %25 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 3, !dbg !639
  %26 = load i16, i16* %25, align 2, !dbg !639, !tbaa !367
  %27 = icmp ugt i16 %26, 19, !dbg !639
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !642
  br i1 %27, label %29, label %28, !dbg !642

; <label>:28:                                     ; preds = %22
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !643
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !646
  tail call void @ukplat_terminate(i32 3) #9, !dbg !646
  unreachable

; <label>:29:                                     ; preds = %22
  %30 = getelementptr inbounds i8, i8* %24, i64 8, !dbg !650
  store i8 %3, i8* %30, align 1, !dbg !650, !tbaa !651
  %31 = getelementptr inbounds i8, i8* %24, i64 9, !dbg !652
  store i8 %5, i8* %31, align 1, !dbg !652, !tbaa !528
  %32 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %2, i64 0, i32 0, !dbg !653
  %33 = load i32, i32* %32, align 4, !dbg !653, !tbaa !260
  %34 = getelementptr inbounds i8, i8* %24, i64 16, !dbg !653
  %35 = bitcast i8* %34 to i32*, !dbg !653
  store i32 %33, i32* %35, align 1, !dbg !653, !tbaa !399
  store i8 69, i8* %24, align 1, !dbg !654, !tbaa !339
  %36 = getelementptr inbounds i8, i8* %24, i64 1, !dbg !655
  store i8 %4, i8* %36, align 1, !dbg !655, !tbaa !656
  %37 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 2, !dbg !657
  %38 = load i16, i16* %37, align 8, !dbg !657, !tbaa !358
  %39 = tail call zeroext i16 @lwip_htons(i16 zeroext %38) #7, !dbg !657
  %40 = getelementptr inbounds i8, i8* %24, i64 2, !dbg !657
  %41 = bitcast i8* %40 to i16*, !dbg !657
  store i16 %39, i16* %41, align 1, !dbg !657, !tbaa !354
  %42 = getelementptr inbounds i8, i8* %24, i64 6, !dbg !658
  %43 = bitcast i8* %42 to i16*, !dbg !658
  store i16 0, i16* %43, align 1, !dbg !658, !tbaa !504
  %44 = load i16, i16* @ip_id, align 2, !dbg !659, !tbaa !660
  %45 = tail call zeroext i16 @lwip_htons(i16 zeroext %44) #7, !dbg !659
  %46 = getelementptr inbounds i8, i8* %24, i64 4, !dbg !659
  %47 = bitcast i8* %46 to i16*, !dbg !659
  store i16 %45, i16* %47, align 1, !dbg !659, !tbaa !661
  %48 = load i16, i16* @ip_id, align 2, !dbg !662, !tbaa !660
  %49 = add i16 %48, 1, !dbg !662
  store i16 %49, i16* @ip_id, align 2, !dbg !662, !tbaa !660
  %50 = icmp eq %struct.ip4_addr* %1, null, !dbg !663
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !665
  %51 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %1, i64 0, i32 0, !dbg !666
  %52 = select i1 %50, i32* getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip_addr_any, i64 0, i32 0, i32 0, i32 0, i64 0), i32* %51, !dbg !665
  %53 = load i32, i32* %52, align 4, !dbg !668, !tbaa !281
  %54 = getelementptr inbounds i8, i8* %24, i64 12, !dbg !668
  %55 = bitcast i8* %54 to i32*, !dbg !668
  store i32 %53, i32* %55, align 1, !dbg !668, !tbaa !408
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %56 = getelementptr inbounds i8, i8* %24, i64 10, !dbg !670
  %57 = bitcast i8* %56 to i16*, !dbg !670
  store i16 0, i16* %57, align 1, !dbg !670, !tbaa !671
  %58 = icmp eq %struct.netif* %6, null, !dbg !672
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !672
  br i1 %58, label %64, label %59, !dbg !672

; <label>:59:                                     ; preds = %29
  %60 = getelementptr inbounds %struct.netif, %struct.netif* %6, i64 0, i32 16, !dbg !672
  %61 = load i16, i16* %60, align 8, !dbg !672, !tbaa !384
  %62 = and i16 %61, 1, !dbg !672
  %63 = icmp eq i16 %62, 0, !dbg !672
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !674
  br i1 %63, label %66, label %64, !dbg !674

; <label>:64:                                     ; preds = %59, %29
  %65 = tail call zeroext i16 @inet_chksum(i8* nonnull %24, i16 zeroext 20) #7, !dbg !675
  store i16 %65, i16* %57, align 1, !dbg !675, !tbaa !671
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !677
  br label %66, !dbg !677

; <label>:66:                                     ; preds = %59, %64
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !678
  br label %81

; <label>:67:                                     ; preds = %14
  %68 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 3, !dbg !679
  %69 = load i16, i16* %68, align 2, !dbg !679, !tbaa !367
  %70 = icmp ult i16 %69, 20, !dbg !682
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !683
  br i1 %70, label %71, label %74, !dbg !683

; <label>:71:                                     ; preds = %67
  %72 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 3, i32 10), align 2, !dbg !684, !tbaa !347
  %73 = add i16 %72, 1, !dbg !684
  store i16 %73, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 3, i32 10), align 2, !dbg !684, !tbaa !347
  br label %88, !dbg !686

; <label>:74:                                     ; preds = %67
  %75 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 1, !dbg !687
  %76 = bitcast i8** %75 to %struct.ip_hdr**, !dbg !687
  %77 = load %struct.ip_hdr*, %struct.ip_hdr** %76, align 8, !dbg !687, !tbaa !334
  %78 = getelementptr inbounds %struct.ip_hdr, %struct.ip_hdr* %77, i64 0, i32 9, i32 0, !dbg !688
  %79 = load i32, i32* %78, align 1, !dbg !688, !tbaa !399
  %80 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %8, i64 0, i32 0, !dbg !688
  store i32 %79, i32* %80, align 4, !dbg !688, !tbaa !260
  br label %81

; <label>:81:                                     ; preds = %66, %74
  %82 = phi %struct.ip4_addr* [ %2, %66 ], [ %8, %74 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %83 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 3, i32 0), align 2, !dbg !689, !tbaa !690
  %84 = add i16 %83, 1, !dbg !689
  store i16 %84, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 3, i32 0), align 2, !dbg !689, !tbaa !690
  %85 = getelementptr inbounds %struct.netif, %struct.netif* %6, i64 0, i32 9, !dbg !691
  %86 = load i8 (%struct.netif*, %struct.pbuf*, %struct.ip4_addr*)*, i8 (%struct.netif*, %struct.pbuf*, %struct.ip4_addr*)** %85, align 8, !dbg !691, !tbaa !692
  %87 = call signext i8 %86(%struct.netif* %6, %struct.pbuf* nonnull %0, %struct.ip4_addr* nonnull %82) #7, !dbg !693
  br label %88, !dbg !694

; <label>:88:                                     ; preds = %19, %81, %71
  %89 = phi i8 [ %87, %81 ], [ -2, %71 ], [ -2, %19 ], !dbg !695
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #6, !dbg !696
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !696
  ret i8 %89, !dbg !696
}

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8*, ...) unnamed_addr #4 !dbg !106 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !698
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #6, !dbg !698
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !700
  call void @llvm.va_start(i8* nonnull %3), !dbg !700
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @uk_pr_crit.__str.4, i64 0, i64 0), i32 198, i8* %0, %struct.__va_list_tag* nonnull %4) #7, !dbg !701
  call void @llvm.va_end(i8* nonnull %3), !dbg !704
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #6, !dbg !705
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !705
  ret void, !dbg !705
}

; Function Attrs: noredzone noreturn
declare dso_local void @ukplat_terminate(i32) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local zeroext i8 @pbuf_add_header(%struct.pbuf*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local signext i8 @ip4_output(%struct.pbuf*, %struct.ip4_addr* readonly, %struct.ip4_addr*, i8 zeroext, i8 zeroext, i8 zeroext) local_unnamed_addr #0 !dbg !706 {
  %7 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 6, !dbg !723
  %8 = load i8, i8* %7, align 2, !dbg !723, !tbaa !619
  %9 = icmp eq i8 %8, 1, !dbg !723
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !726
  br i1 %9, label %11, label %10, !dbg !726

; <label>:10:                                     ; preds = %6
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0)) #8, !dbg !727
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !730
  tail call void @ukplat_terminate(i32 3) #9, !dbg !730
  unreachable

; <label>:11:                                     ; preds = %6
  %12 = tail call %struct.netif* @ip4_route(%struct.ip4_addr* %2) #8, !dbg !734
  %13 = icmp eq %struct.netif* %12, null, !dbg !737
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !738
  br i1 %13, label %14, label %17, !dbg !738

; <label>:14:                                     ; preds = %11
  %15 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 3, i32 7), align 2, !dbg !739, !tbaa !310
  %16 = add i16 %15, 1, !dbg !739
  store i16 %16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 3, i32 7), align 2, !dbg !739, !tbaa !310
  br label %31, !dbg !741

; <label>:17:                                     ; preds = %11
  %18 = icmp eq %struct.ip4_addr* %2, null, !dbg !751
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !752
  br i1 %18, label %28, label %19, !dbg !752

; <label>:19:                                     ; preds = %17
  %20 = icmp eq %struct.ip4_addr* %1, null, !dbg !753
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !753
  br i1 %20, label %25, label %21, !dbg !753

; <label>:21:                                     ; preds = %19
  %22 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %1, i64 0, i32 0, !dbg !753
  %23 = load i32, i32* %22, align 4, !dbg !753, !tbaa !260
  %24 = icmp eq i32 %23, 0, !dbg !753
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !754
  br i1 %24, label %25, label %28, !dbg !754

; <label>:25:                                     ; preds = %21, %19
  %26 = getelementptr inbounds %struct.netif, %struct.netif* %12, i64 0, i32 1, i32 0, !dbg !755
  %27 = bitcast %union.anon* %26 to %struct.ip4_addr*, !dbg !755
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !756
  br label %28, !dbg !756

; <label>:28:                                     ; preds = %17, %21, %25
  %29 = phi %struct.ip4_addr* [ %27, %25 ], [ %1, %21 ], [ %1, %17 ], !dbg !757
  %30 = tail call signext i8 @ip4_output_if_src(%struct.pbuf* nonnull %0, %struct.ip4_addr* %29, %struct.ip4_addr* %2, i8 zeroext %3, i8 zeroext %4, i8 zeroext %5, %struct.netif* nonnull %12) #7, !dbg !758
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !759
  br label %31, !dbg !760

; <label>:31:                                     ; preds = %28, %14
  %32 = phi i8 [ -4, %14 ], [ %30, %28 ], !dbg !761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !762
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !763
  ret i8 %32, !dbg !763
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

; Function Attrs: noredzone
declare dso_local void @_uk_vprintk(i32, i8*, i8*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

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

!llvm.module.flags = !{!237, !238, !239}
!llvm.ident = !{!240}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ip4_default_multicast_netif", scope: !2, file: !3, line: 111, type: !136, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !54, globals: !101)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/ipv4/ip4.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{!5, !11, !32, !38, !47}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "netif_mac_filter_action", file: !6, line: 156, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/netif.h", directory: "/root/.unikraft/apps/redis/build")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "NETIF_DEL_MAC_FILTER", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "NETIF_ADD_MAC_FILTER", value: 1, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 53, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/err.h", directory: "/root/.unikraft/apps/redis/build")
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{!15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31}
!15 = !DIEnumerator(name: "ERR_OK", value: 0)
!16 = !DIEnumerator(name: "ERR_MEM", value: -1)
!17 = !DIEnumerator(name: "ERR_BUF", value: -2)
!18 = !DIEnumerator(name: "ERR_TIMEOUT", value: -3)
!19 = !DIEnumerator(name: "ERR_RTE", value: -4)
!20 = !DIEnumerator(name: "ERR_INPROGRESS", value: -5)
!21 = !DIEnumerator(name: "ERR_VAL", value: -6)
!22 = !DIEnumerator(name: "ERR_WOULDBLOCK", value: -7)
!23 = !DIEnumerator(name: "ERR_USE", value: -8)
!24 = !DIEnumerator(name: "ERR_ALREADY", value: -9)
!25 = !DIEnumerator(name: "ERR_ISCONN", value: -10)
!26 = !DIEnumerator(name: "ERR_CONN", value: -11)
!27 = !DIEnumerator(name: "ERR_IF", value: -12)
!28 = !DIEnumerator(name: "ERR_ABRT", value: -13)
!29 = !DIEnumerator(name: "ERR_RST", value: -14)
!30 = !DIEnumerator(name: "ERR_CLSD", value: -15)
!31 = !DIEnumerator(name: "ERR_ARG", value: -16)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lwip_ip_addr_type", file: !33, line: 54, baseType: !7, size: 32, elements: !34)
!33 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip_addr.h", directory: "/root/.unikraft/apps/redis/build")
!34 = !{!35, !36, !37}
!35 = !DIEnumerator(name: "IPADDR_TYPE_V4", value: 0, isUnsigned: true)
!36 = !DIEnumerator(name: "IPADDR_TYPE_V6", value: 6, isUnsigned: true)
!37 = !DIEnumerator(name: "IPADDR_TYPE_ANY", value: 46, isUnsigned: true)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "icmp_dur_type", file: !39, line: 55, baseType: !7, size: 32, elements: !40)
!39 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/icmp.h", directory: "/root/.unikraft/apps/redis/build")
!40 = !{!41, !42, !43, !44, !45, !46}
!41 = !DIEnumerator(name: "ICMP_DUR_NET", value: 0, isUnsigned: true)
!42 = !DIEnumerator(name: "ICMP_DUR_HOST", value: 1, isUnsigned: true)
!43 = !DIEnumerator(name: "ICMP_DUR_PROTO", value: 2, isUnsigned: true)
!44 = !DIEnumerator(name: "ICMP_DUR_PORT", value: 3, isUnsigned: true)
!45 = !DIEnumerator(name: "ICMP_DUR_FRAG", value: 4, isUnsigned: true)
!46 = !DIEnumerator(name: "ICMP_DUR_SR", value: 5, isUnsigned: true)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ukplat_gstate", file: !48, line: 68, baseType: !7, size: 32, elements: !49)
!48 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/bootstrap.h", directory: "/root/.unikraft/apps/redis/build")
!49 = !{!50, !51, !52, !53}
!50 = !DIEnumerator(name: "UKPLAT_HALT", value: 0, isUnsigned: true)
!51 = !DIEnumerator(name: "UKPLAT_RESTART", value: 1, isUnsigned: true)
!52 = !DIEnumerator(name: "UKPLAT_SUSPEND", value: 2, isUnsigned: true)
!53 = !DIEnumerator(name: "UKPLAT_CRASH", value: 3, isUnsigned: true)
!54 = !{!55, !61, !62, !66, !73, !80, !95, !97}
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32_t", file: !56, line: 129, baseType: !57)
!56 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/arch.h", directory: "/root/.unikraft/apps/redis/build")
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !58, line: 48, baseType: !59)
!58 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !60, line: 79, baseType: !7)
!60 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8_t", file: !56, line: 125, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !58, line: 24, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !60, line: 43, baseType: !65)
!65 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip4_addr_t", file: !69, line: 57, baseType: !70)
!69 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip4_addr.h", directory: "/root/.unikraft/apps/redis/build")
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip4_addr", file: !69, line: 51, size: 32, elements: !71)
!71 = !{!72}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !70, file: !69, line: 52, baseType: !55, size: 32)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_hdr", file: !75, line: 73, size: 160, elements: !76)
!75 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/prot/ip4.h", directory: "/root/.unikraft/apps/redis/build")
!76 = !{!77, !78, !79, !84, !85, !86, !87, !88, !89, !94}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_v_hl", scope: !74, file: !75, line: 75, baseType: !62, size: 8)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_tos", scope: !74, file: !75, line: 77, baseType: !62, size: 8, offset: 8)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_len", scope: !74, file: !75, line: 79, baseType: !80, size: 16, offset: 16)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16_t", file: !56, line: 127, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !58, line: 36, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !60, line: 57, baseType: !83)
!83 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_id", scope: !74, file: !75, line: 81, baseType: !80, size: 16, offset: 32)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !74, file: !75, line: 83, baseType: !80, size: 16, offset: 48)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_ttl", scope: !74, file: !75, line: 89, baseType: !62, size: 8, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_proto", scope: !74, file: !75, line: 91, baseType: !62, size: 8, offset: 72)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_chksum", scope: !74, file: !75, line: 93, baseType: !80, size: 16, offset: 80)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !74, file: !75, line: 95, baseType: !90, size: 32, offset: 96)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip4_addr_p_t", file: !75, line: 61, baseType: !91)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip4_addr_packed", file: !75, line: 53, size: 32, elements: !92)
!92 = !{!93}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !91, file: !75, line: 54, baseType: !55, size: 32)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !74, file: !75, line: 96, baseType: !90, size: 32, offset: 128)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16_t", file: !56, line: 128, baseType: !98)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !58, line: 32, baseType: !99)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !60, line: 55, baseType: !100)
!100 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!101 = !{!102, !0, !104, !131}
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(name: "ip_id", scope: !2, file: !3, line: 107, type: !80, isLocal: true, isDefinition: true)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(name: "__str", scope: !106, file: !107, line: 198, type: !128, isLocal: true, isDefinition: true)
!106 = distinct !DISubprogram(name: "uk_pr_crit", scope: !107, file: !107, line: 194, type: !108, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !113)
!107 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukdebug/include/uk/print.h", directory: "/root/.unikraft/apps/redis/build")
!108 = !DISubroutineType(types: !109)
!109 = !{null, !110, null}
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!112 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!113 = !{!114, !115}
!114 = !DILocalVariable(name: "fmt", arg: 1, scope: !106, file: !107, line: 194, type: !110)
!115 = !DILocalVariable(name: "argp", scope: !106, file: !107, line: 196, type: !116)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !117, line: 32, baseType: !118)
!117 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 196, baseType: !119)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 192, elements: !126)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 196, size: 192, elements: !121)
!121 = !{!122, !123, !124, !125}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !120, file: !3, line: 196, baseType: !7, size: 32)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !120, file: !3, line: 196, baseType: !7, size: 32, offset: 32)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !120, file: !3, line: 196, baseType: !61, size: 64, offset: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !120, file: !3, line: 196, baseType: !61, size: 64, offset: 128)
!126 = !{!127}
!127 = !DISubrange(count: 1)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 64, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 8)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(name: "__str", scope: !106, file: !107, line: 198, type: !133, isLocal: true, isDefinition: true)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 48, elements: !134)
!134 = !{!135}
!135 = !DISubrange(count: 6)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netif", file: !6, line: 260, size: 2240, elements: !138)
!138 = !{!139, !140, !159, !160, !161, !165, !167, !169, !170, !192, !197, !202, !209, !214, !215, !216, !218, !219, !220, !221, !223, !224, !225, !229, !230, !231, !232}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !137, file: !6, line: 263, baseType: !136, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "ip_addr", scope: !137, file: !6, line: 268, baseType: !141, size: 192, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_addr_t", file: !33, line: 76, baseType: !142)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_addr", file: !33, line: 69, size: 192, elements: !143)
!143 = !{!144, !158}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "u_addr", scope: !142, file: !33, line: 73, baseType: !145, size: 160)
!145 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !142, file: !33, line: 70, size: 160, elements: !146)
!146 = !{!147, !157}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "ip6", scope: !145, file: !33, line: 71, baseType: !148, size: 160)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip6_addr_t", file: !149, line: 67, baseType: !150)
!149 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip6_addr.h", directory: "/root/.unikraft/apps/redis/build")
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip6_addr", file: !149, line: 59, size: 160, elements: !151)
!151 = !{!152, !156}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !150, file: !149, line: 60, baseType: !153, size: 128)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 128, elements: !154)
!154 = !{!155}
!155 = !DISubrange(count: 4)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "zone", scope: !150, file: !149, line: 62, baseType: !62, size: 8, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "ip4", scope: !145, file: !33, line: 72, baseType: !68, size: 32)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !142, file: !33, line: 75, baseType: !62, size: 8, offset: 160)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "netmask", scope: !137, file: !6, line: 269, baseType: !141, size: 192, offset: 256)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "gw", scope: !137, file: !6, line: 270, baseType: !141, size: 192, offset: 448)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr", scope: !137, file: !6, line: 274, baseType: !162, size: 576, offset: 640)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 576, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 3)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_state", scope: !137, file: !6, line: 277, baseType: !166, size: 24, offset: 1216)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 24, elements: !163)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_valid_life", scope: !137, file: !6, line: 282, baseType: !168, size: 96, offset: 1248)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 96, elements: !163)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_pref_life", scope: !137, file: !6, line: 283, baseType: !168, size: 96, offset: 1344)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !137, file: !6, line: 288, baseType: !171, size: 64, offset: 1472)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_input_fn", file: !6, line: 178, baseType: !172)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DISubroutineType(types: !174)
!174 = !{!175, !180, !136}
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "err_t", file: !12, line: 96, baseType: !176)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8_t", file: !56, line: 126, baseType: !177)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !58, line: 20, baseType: !178)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !60, line: 41, baseType: !179)
!179 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pbuf", file: !182, line: 186, size: 192, elements: !183)
!182 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/pbuf.h", directory: "/root/.unikraft/apps/redis/build")
!183 = !{!184, !185, !186, !187, !188, !189, !190, !191}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !181, file: !182, line: 188, baseType: !180, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !181, file: !182, line: 191, baseType: !61, size: 64, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "tot_len", scope: !181, file: !182, line: 200, baseType: !80, size: 16, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !181, file: !182, line: 203, baseType: !80, size: 16, offset: 144)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "type_internal", scope: !181, file: !182, line: 208, baseType: !62, size: 8, offset: 160)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !181, file: !182, line: 211, baseType: !62, size: 8, offset: 168)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !181, file: !182, line: 218, baseType: !62, size: 8, offset: 176)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "if_idx", scope: !181, file: !182, line: 221, baseType: !62, size: 8, offset: 184)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !137, file: !6, line: 294, baseType: !193, size: 64, offset: 1536)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_output_fn", file: !6, line: 189, baseType: !194)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{!175, !136, !180, !66}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "linkoutput", scope: !137, file: !6, line: 299, baseType: !198, size: 64, offset: 1600)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_linkoutput_fn", file: !6, line: 212, baseType: !199)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DISubroutineType(types: !201)
!201 = !{!175, !136, !180}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "output_ip6", scope: !137, file: !6, line: 305, baseType: !203, size: 64, offset: 1664)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_output_ip6_fn", file: !6, line: 202, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{!175, !136, !180, !207}
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !148)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "status_callback", scope: !137, file: !6, line: 310, baseType: !210, size: 64, offset: 1728)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_status_callback_fn", file: !6, line: 214, baseType: !211)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DISubroutineType(types: !213)
!213 = !{null, !136}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "remove_callback", scope: !137, file: !6, line: 319, baseType: !210, size: 64, offset: 1792)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !137, file: !6, line: 323, baseType: !61, size: 64, offset: 1856)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !137, file: !6, line: 325, baseType: !217, size: 64, offset: 1920)
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 64, elements: !126)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "chksum_flags", scope: !137, file: !6, line: 332, baseType: !80, size: 16, offset: 1984)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !137, file: !6, line: 335, baseType: !80, size: 16, offset: 2000)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "mtu6", scope: !137, file: !6, line: 338, baseType: !80, size: 16, offset: 2016)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "hwaddr", scope: !137, file: !6, line: 341, baseType: !222, size: 48, offset: 2032)
!222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 48, elements: !134)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "hwaddr_len", scope: !137, file: !6, line: 343, baseType: !62, size: 8, offset: 2080)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !137, file: !6, line: 345, baseType: !62, size: 8, offset: 2088)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !137, file: !6, line: 347, baseType: !226, size: 16, offset: 2096)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 16, elements: !227)
!227 = !{!228}
!228 = !DISubrange(count: 2)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !137, file: !6, line: 350, baseType: !62, size: 8, offset: 2112)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_autoconfig_enabled", scope: !137, file: !6, line: 353, baseType: !62, size: 8, offset: 2120)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "rs_count", scope: !137, file: !6, line: 357, baseType: !62, size: 8, offset: 2128)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "mld_mac_filter", scope: !137, file: !6, line: 377, baseType: !233, size: 64, offset: 2176)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_mld_mac_filter_fn", file: !6, line: 222, baseType: !234)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DISubroutineType(types: !236)
!236 = !{!175, !136, !207, !5}
!237 = !{i32 2, !"Dwarf Version", i32 4}
!238 = !{i32 2, !"Debug Info Version", i32 3}
!239 = !{i32 1, !"wchar_size", i32 4}
!240 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!241 = distinct !DISubprogram(name: "ip4_set_default_multicast_netif", scope: !3, file: !3, line: 117, type: !212, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !242)
!242 = !{!243}
!243 = !DILocalVariable(name: "default_multicast_netif", arg: 1, scope: !241, file: !3, line: 117, type: !136)
!244 = !DILocation(line: 117, column: 47, scope: !241)
!245 = !DILocation(line: 119, column: 31, scope: !241)
!246 = !{!247, !247, i64 0}
!247 = !{!"any pointer", !248, i64 0}
!248 = !{!"omnipotent char", !249, i64 0}
!249 = !{!"Simple C/C++ TBAA"}
!250 = !DILocation(line: 120, column: 1, scope: !241)
!251 = distinct !DISubprogram(name: "ip4_route", scope: !3, file: !3, line: 152, type: !252, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !254)
!252 = !DISubroutineType(types: !253)
!253 = !{!136, !66}
!254 = !{!255, !256}
!255 = !DILocalVariable(name: "dest", arg: 1, scope: !251, file: !3, line: 152, type: !66)
!256 = !DILocalVariable(name: "netif", scope: !251, file: !3, line: 155, type: !136)
!257 = !DILocation(line: 152, column: 29, scope: !251)
!258 = !DILocation(line: 161, column: 7, scope: !259)
!259 = distinct !DILexicalBlock(scope: !251, file: !3, line: 161, column: 7)
!260 = !{!261, !262, i64 0}
!261 = !{!"ip4_addr", !262, i64 0}
!262 = !{!"int", !248, i64 0}
!263 = !DILocation(line: 161, column: 37, scope: !259)
!264 = !DILocation(line: 161, column: 34, scope: !259)
!265 = !DILocation(line: 170, column: 3, scope: !266)
!266 = distinct !DILexicalBlock(scope: !251, file: !3, line: 170, column: 3)
!267 = !DILocation(line: 155, column: 17, scope: !251)
!268 = !DILocation(line: 170, column: 3, scope: !269)
!269 = distinct !DILexicalBlock(scope: !266, file: !3, line: 170, column: 3)
!270 = !DILocation(line: 172, column: 9, scope: !271)
!271 = distinct !DILexicalBlock(scope: !272, file: !3, line: 172, column: 9)
!272 = distinct !DILexicalBlock(scope: !269, file: !3, line: 170, column: 24)
!273 = !{!274, !248, i64 261}
!274 = !{!"netif", !247, i64 0, !275, i64 8, !275, i64 32, !275, i64 56, !248, i64 80, !248, i64 152, !248, i64 156, !248, i64 168, !247, i64 184, !247, i64 192, !247, i64 200, !247, i64 208, !247, i64 216, !247, i64 224, !247, i64 232, !248, i64 240, !276, i64 248, !276, i64 250, !276, i64 252, !248, i64 254, !248, i64 260, !248, i64 261, !248, i64 262, !248, i64 264, !248, i64 265, !248, i64 266, !247, i64 272}
!275 = !{!"ip_addr", !248, i64 0, !248, i64 20}
!276 = !{!"short", !248, i64 0}
!277 = !DILocation(line: 172, column: 28, scope: !271)
!278 = !DILocation(line: 172, column: 31, scope: !271)
!279 = !DILocation(line: 172, column: 55, scope: !271)
!280 = !DILocation(line: 172, column: 59, scope: !271)
!281 = !{!248, !248, i64 0}
!282 = !DILocation(line: 172, column: 9, scope: !272)
!283 = !DILocation(line: 174, column: 11, scope: !284)
!284 = distinct !DILexicalBlock(scope: !285, file: !3, line: 174, column: 11)
!285 = distinct !DILexicalBlock(scope: !271, file: !3, line: 172, column: 103)
!286 = !DILocation(line: 174, column: 11, scope: !285)
!287 = !DILocation(line: 179, column: 26, scope: !288)
!288 = distinct !DILexicalBlock(scope: !285, file: !3, line: 179, column: 11)
!289 = !DILocation(line: 179, column: 50, scope: !288)
!290 = !DILocation(line: 179, column: 56, scope: !288)
!291 = !DILocation(line: 179, column: 59, scope: !288)
!292 = !DILocation(line: 179, column: 11, scope: !285)
!293 = !{!274, !247, i64 0}
!294 = distinct !{!294, !265, !295}
!295 = !DILocation(line: 184, column: 3, scope: !266)
!296 = !DILocation(line: 216, column: 8, scope: !297)
!297 = distinct !DILexicalBlock(scope: !251, file: !3, line: 216, column: 7)
!298 = !DILocation(line: 216, column: 22, scope: !297)
!299 = !DILocation(line: 216, column: 31, scope: !297)
!300 = !DILocation(line: 216, column: 35, scope: !297)
!301 = !DILocation(line: 216, column: 62, scope: !297)
!302 = !DILocation(line: 216, column: 66, scope: !297)
!303 = !DILocation(line: 216, column: 98, scope: !297)
!304 = !DILocation(line: 217, column: 7, scope: !297)
!305 = !DILocation(line: 217, column: 58, scope: !297)
!306 = !DILocation(line: 217, column: 61, scope: !297)
!307 = !DILocation(line: 216, column: 7, scope: !251)
!308 = !DILocation(line: 222, column: 5, scope: !309)
!309 = distinct !DILexicalBlock(scope: !297, file: !3, line: 217, column: 88)
!310 = !{!311, !276, i64 86}
!311 = !{!"stats_", !312, i64 0, !312, i64 24, !312, i64 48, !312, i64 72, !312, i64 96, !312, i64 120, !312, i64 144, !313, i64 168, !312, i64 186, !312, i64 210, !312, i64 234, !315, i64 258, !312, i64 286}
!312 = !{!"stats_proto", !276, i64 0, !276, i64 2, !276, i64 4, !276, i64 6, !276, i64 8, !276, i64 10, !276, i64 12, !276, i64 14, !276, i64 16, !276, i64 18, !276, i64 20, !276, i64 22}
!313 = !{!"stats_sys", !314, i64 0, !314, i64 6, !314, i64 12}
!314 = !{!"stats_syselem", !276, i64 0, !276, i64 2, !276, i64 4}
!315 = !{!"stats_igmp", !276, i64 0, !276, i64 2, !276, i64 4, !276, i64 6, !276, i64 8, !276, i64 10, !276, i64 12, !276, i64 14, !276, i64 16, !276, i64 18, !276, i64 20, !276, i64 22, !276, i64 24, !276, i64 26}
!316 = !DILocation(line: 224, column: 5, scope: !309)
!317 = !DILocation(line: 0, scope: !251)
!318 = !DILocation(line: 0, scope: !319)
!319 = distinct !DILexicalBlock(scope: !259, file: !3, line: 161, column: 66)
!320 = !DILocation(line: 228, column: 1, scope: !251)
!321 = distinct !DISubprogram(name: "ip4_input", scope: !3, file: !3, line: 426, type: !173, isLocal: false, isDefinition: true, scopeLine: 427, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !322)
!322 = !{!323, !324, !325, !326, !327, !328}
!323 = !DILocalVariable(name: "p", arg: 1, scope: !321, file: !3, line: 426, type: !180)
!324 = !DILocalVariable(name: "inp", arg: 2, scope: !321, file: !3, line: 426, type: !136)
!325 = !DILocalVariable(name: "iphdr", scope: !321, file: !3, line: 428, type: !95)
!326 = !DILocalVariable(name: "netif", scope: !321, file: !3, line: 429, type: !136)
!327 = !DILocalVariable(name: "iphdr_hlen", scope: !321, file: !3, line: 430, type: !80)
!328 = !DILocalVariable(name: "iphdr_len", scope: !321, file: !3, line: 431, type: !80)
!329 = !DILocation(line: 426, column: 24, scope: !321)
!330 = !DILocation(line: 426, column: 41, scope: !321)
!331 = !DILocation(line: 441, column: 3, scope: !321)
!332 = !{!311, !276, i64 74}
!333 = !DILocation(line: 445, column: 31, scope: !321)
!334 = !{!335, !247, i64 8}
!335 = !{!"pbuf", !247, i64 0, !247, i64 8, !276, i64 16, !276, i64 18, !248, i64 20, !248, i64 21, !248, i64 22, !248, i64 23}
!336 = !DILocation(line: 428, column: 24, scope: !321)
!337 = !DILocation(line: 446, column: 7, scope: !338)
!338 = distinct !DILexicalBlock(scope: !321, file: !3, line: 446, column: 7)
!339 = !{!340, !248, i64 0}
!340 = !{!"ip_hdr", !248, i64 0, !248, i64 1, !276, i64 2, !276, i64 4, !276, i64 6, !248, i64 8, !248, i64 9, !276, i64 10, !341, i64 12, !341, i64 16}
!341 = !{!"ip4_addr_packed", !262, i64 0}
!342 = !DILocation(line: 446, column: 20, scope: !338)
!343 = !DILocation(line: 446, column: 7, scope: !321)
!344 = !DILocation(line: 449, column: 5, scope: !345)
!345 = distinct !DILexicalBlock(scope: !338, file: !3, line: 446, column: 26)
!346 = !DILocation(line: 450, column: 5, scope: !345)
!347 = !{!311, !276, i64 92}
!348 = !DILocation(line: 451, column: 5, scope: !345)
!349 = !{!311, !276, i64 78}
!350 = !DILocation(line: 453, column: 5, scope: !345)
!351 = !DILocation(line: 464, column: 16, scope: !321)
!352 = !DILocation(line: 430, column: 9, scope: !321)
!353 = !DILocation(line: 466, column: 15, scope: !321)
!354 = !{!340, !276, i64 2}
!355 = !DILocation(line: 431, column: 9, scope: !321)
!356 = !DILocation(line: 469, column: 22, scope: !357)
!357 = distinct !DILexicalBlock(scope: !321, file: !3, line: 469, column: 7)
!358 = !{!335, !276, i64 16}
!359 = !DILocation(line: 469, column: 17, scope: !357)
!360 = !DILocation(line: 469, column: 7, scope: !321)
!361 = !DILocation(line: 470, column: 5, scope: !362)
!362 = distinct !DILexicalBlock(scope: !357, file: !3, line: 469, column: 31)
!363 = !DILocation(line: 471, column: 3, scope: !362)
!364 = !DILocation(line: 474, column: 8, scope: !365)
!365 = distinct !DILexicalBlock(scope: !321, file: !3, line: 474, column: 7)
!366 = !DILocation(line: 474, column: 24, scope: !365)
!367 = !{!335, !276, i64 18}
!368 = !DILocation(line: 474, column: 21, scope: !365)
!369 = !DILocation(line: 474, column: 19, scope: !365)
!370 = !DILocation(line: 474, column: 29, scope: !365)
!371 = !DILocation(line: 474, column: 48, scope: !365)
!372 = !DILocation(line: 474, column: 43, scope: !365)
!373 = !DILocation(line: 474, column: 57, scope: !365)
!374 = !DILocation(line: 474, column: 72, scope: !365)
!375 = !DILocation(line: 474, column: 7, scope: !321)
!376 = !DILocation(line: 490, column: 5, scope: !377)
!377 = distinct !DILexicalBlock(scope: !365, file: !3, line: 474, column: 84)
!378 = !DILocation(line: 491, column: 5, scope: !377)
!379 = !{!311, !276, i64 82}
!380 = !DILocation(line: 492, column: 5, scope: !377)
!381 = !DILocation(line: 494, column: 5, scope: !377)
!382 = !DILocation(line: 499, column: 3, scope: !383)
!383 = distinct !DILexicalBlock(scope: !321, file: !3, line: 499, column: 3)
!384 = !{!274, !276, i64 248}
!385 = !DILocation(line: 499, column: 3, scope: !321)
!386 = !DILocation(line: 500, column: 9, scope: !387)
!387 = distinct !DILexicalBlock(scope: !388, file: !3, line: 500, column: 9)
!388 = distinct !DILexicalBlock(scope: !383, file: !3, line: 499, column: 60)
!389 = !DILocation(line: 500, column: 40, scope: !387)
!390 = !DILocation(line: 500, column: 9, scope: !388)
!391 = !DILocation(line: 505, column: 7, scope: !392)
!392 = distinct !DILexicalBlock(scope: !387, file: !3, line: 500, column: 46)
!393 = !DILocation(line: 506, column: 7, scope: !392)
!394 = !{!311, !276, i64 80}
!395 = !DILocation(line: 507, column: 7, scope: !392)
!396 = !DILocation(line: 509, column: 7, scope: !392)
!397 = !DILocation(line: 515, column: 3, scope: !398)
!398 = distinct !DILexicalBlock(scope: !321, file: !3, line: 515, column: 3)
!399 = !{!340, !262, i64 16}
!400 = !DILocation(line: 515, column: 3, scope: !401)
!401 = distinct !DILexicalBlock(scope: !398, file: !3, line: 515, column: 3)
!402 = !{!403, !248, i64 80}
!403 = !{!"ip_globals", !247, i64 0, !247, i64 8, !247, i64 16, !247, i64 24, !276, i64 32, !275, i64 36, !275, i64 60}
!404 = !DILocation(line: 515, column: 3, scope: !405)
!405 = distinct !DILexicalBlock(scope: !398, file: !3, line: 515, column: 3)
!406 = !DILocation(line: 516, column: 3, scope: !407)
!407 = distinct !DILexicalBlock(scope: !321, file: !3, line: 516, column: 3)
!408 = !{!340, !262, i64 12}
!409 = !DILocation(line: 516, column: 3, scope: !410)
!410 = distinct !DILexicalBlock(scope: !407, file: !3, line: 516, column: 3)
!411 = !{!403, !248, i64 56}
!412 = !DILocation(line: 516, column: 3, scope: !413)
!413 = distinct !DILexicalBlock(scope: !407, file: !3, line: 516, column: 3)
!414 = !DILocation(line: 519, column: 7, scope: !415)
!415 = distinct !DILexicalBlock(scope: !321, file: !3, line: 519, column: 7)
!416 = !DILocation(line: 519, column: 7, scope: !321)
!417 = !DILocation(line: 0, scope: !418)
!418 = distinct !DILexicalBlock(scope: !419, file: !3, line: 543, column: 9)
!419 = distinct !DILexicalBlock(scope: !415, file: !3, line: 540, column: 10)
!420 = !DILocation(line: 534, column: 28, scope: !421)
!421 = distinct !DILexicalBlock(scope: !422, file: !3, line: 534, column: 9)
!422 = distinct !DILexicalBlock(scope: !415, file: !3, line: 519, column: 54)
!423 = !DILocation(line: 534, column: 33, scope: !421)
!424 = !DILocation(line: 534, column: 9, scope: !422)
!425 = !DILocation(line: 429, column: 17, scope: !321)
!426 = !DILocation(line: 536, column: 5, scope: !427)
!427 = distinct !DILexicalBlock(scope: !421, file: !3, line: 534, column: 76)
!428 = !DILocalVariable(name: "netif", arg: 1, scope: !429, file: !3, line: 374, type: !136)
!429 = distinct !DISubprogram(name: "ip4_input_accept", scope: !3, file: !3, line: 374, type: !430, isLocal: true, isDefinition: true, scopeLine: 375, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !432)
!430 = !DISubroutineType(types: !431)
!431 = !{!13, !136}
!432 = !{!428}
!433 = !DILocation(line: 374, column: 32, scope: !429, inlinedAt: !434)
!434 = distinct !DILocation(line: 543, column: 9, scope: !418)
!435 = !DILocation(line: 383, column: 28, scope: !436, inlinedAt: !434)
!436 = distinct !DILexicalBlock(scope: !429, file: !3, line: 383, column: 7)
!437 = !DILocation(line: 383, column: 33, scope: !436, inlinedAt: !434)
!438 = !DILocation(line: 383, column: 7, scope: !429, inlinedAt: !434)
!439 = !DILocation(line: 385, column: 9, scope: !440, inlinedAt: !434)
!440 = distinct !DILexicalBlock(scope: !441, file: !3, line: 385, column: 9)
!441 = distinct !DILexicalBlock(scope: !436, file: !3, line: 383, column: 78)
!442 = !DILocation(line: 385, column: 70, scope: !440, inlinedAt: !434)
!443 = !DILocation(line: 387, column: 9, scope: !440, inlinedAt: !434)
!444 = !DILocation(line: 385, column: 9, scope: !441, inlinedAt: !434)
!445 = !DILocation(line: 551, column: 12, scope: !446)
!446 = distinct !DILexicalBlock(scope: !447, file: !3, line: 551, column: 11)
!447 = distinct !DILexicalBlock(scope: !418, file: !3, line: 545, column: 12)
!448 = !DILocation(line: 395, column: 7, scope: !449, inlinedAt: !434)
!449 = distinct !DILexicalBlock(scope: !440, file: !3, line: 391, column: 10)
!450 = !DILocation(line: 409, column: 1, scope: !429, inlinedAt: !434)
!451 = !DILocation(line: 543, column: 9, scope: !419)
!452 = !DILocation(line: 545, column: 5, scope: !453)
!453 = distinct !DILexicalBlock(scope: !418, file: !3, line: 543, column: 32)
!454 = !DILocation(line: 408, column: 3, scope: !429, inlinedAt: !434)
!455 = !DILocation(line: 551, column: 11, scope: !447)
!456 = !DILocation(line: 555, column: 9, scope: !457)
!457 = distinct !DILexicalBlock(scope: !458, file: !3, line: 555, column: 9)
!458 = distinct !DILexicalBlock(scope: !446, file: !3, line: 553, column: 7)
!459 = !DILocation(line: 555, column: 9, scope: !460)
!460 = distinct !DILexicalBlock(scope: !457, file: !3, line: 555, column: 9)
!461 = !DILocation(line: 556, column: 21, scope: !462)
!462 = distinct !DILexicalBlock(scope: !463, file: !3, line: 556, column: 15)
!463 = distinct !DILexicalBlock(scope: !460, file: !3, line: 555, column: 30)
!464 = !DILocation(line: 556, column: 15, scope: !463)
!465 = !DILocation(line: 374, column: 32, scope: !429, inlinedAt: !466)
!466 = distinct !DILocation(line: 560, column: 15, scope: !467)
!467 = distinct !DILexicalBlock(scope: !463, file: !3, line: 560, column: 15)
!468 = !DILocation(line: 383, column: 8, scope: !436, inlinedAt: !466)
!469 = !DILocation(line: 383, column: 28, scope: !436, inlinedAt: !466)
!470 = !DILocation(line: 383, column: 33, scope: !436, inlinedAt: !466)
!471 = !DILocation(line: 383, column: 7, scope: !429, inlinedAt: !466)
!472 = !DILocation(line: 385, column: 9, scope: !440, inlinedAt: !466)
!473 = !DILocation(line: 385, column: 70, scope: !440, inlinedAt: !466)
!474 = !DILocation(line: 387, column: 9, scope: !440, inlinedAt: !466)
!475 = !DILocation(line: 385, column: 9, scope: !441, inlinedAt: !466)
!476 = !DILocation(line: 408, column: 3, scope: !429, inlinedAt: !466)
!477 = !DILocation(line: 409, column: 1, scope: !429, inlinedAt: !466)
!478 = !DILocation(line: 560, column: 15, scope: !463)
!479 = !DILocation(line: 395, column: 7, scope: !449, inlinedAt: !466)
!480 = distinct !{!480, !456, !481}
!481 = !DILocation(line: 563, column: 9, scope: !457)
!482 = !DILocation(line: 0, scope: !457)
!483 = !DILocation(line: 604, column: 10, scope: !484)
!484 = distinct !DILexicalBlock(scope: !485, file: !3, line: 604, column: 9)
!485 = distinct !DILexicalBlock(scope: !321, file: !3, line: 603, column: 3)
!486 = !DILocation(line: 604, column: 9, scope: !484)
!487 = !DILocation(line: 604, column: 61, scope: !484)
!488 = !DILocation(line: 605, column: 10, scope: !484)
!489 = !DILocation(line: 604, column: 9, scope: !485)
!490 = !DILocation(line: 609, column: 7, scope: !491)
!491 = distinct !DILexicalBlock(scope: !484, file: !3, line: 605, column: 57)
!492 = !DILocation(line: 610, column: 7, scope: !491)
!493 = !DILocation(line: 613, column: 7, scope: !491)
!494 = !DILocation(line: 618, column: 13, scope: !495)
!495 = distinct !DILexicalBlock(scope: !321, file: !3, line: 618, column: 7)
!496 = !DILocation(line: 618, column: 7, scope: !321)
!497 = !DILocation(line: 629, column: 7, scope: !498)
!498 = distinct !DILexicalBlock(scope: !499, file: !3, line: 628, column: 5)
!499 = distinct !DILexicalBlock(scope: !495, file: !3, line: 618, column: 22)
!500 = !DILocation(line: 633, column: 5, scope: !499)
!501 = !DILocation(line: 634, column: 5, scope: !499)
!502 = !DILocation(line: 637, column: 8, scope: !503)
!503 = distinct !DILexicalBlock(scope: !321, file: !3, line: 637, column: 7)
!504 = !{!340, !276, i64 6}
!505 = !DILocation(line: 637, column: 26, scope: !503)
!506 = !DILocation(line: 637, column: 58, scope: !503)
!507 = !DILocation(line: 637, column: 7, scope: !321)
!508 = !DILocation(line: 642, column: 9, scope: !509)
!509 = distinct !DILexicalBlock(scope: !503, file: !3, line: 637, column: 64)
!510 = !DILocation(line: 644, column: 11, scope: !511)
!511 = distinct !DILexicalBlock(scope: !509, file: !3, line: 644, column: 9)
!512 = !DILocation(line: 644, column: 9, scope: !509)
!513 = !DILocation(line: 647, column: 39, scope: !509)
!514 = !DILocation(line: 658, column: 3, scope: !509)
!515 = !DILocation(line: 683, column: 25, scope: !321)
!516 = !{!403, !247, i64 0}
!517 = !DILocation(line: 684, column: 31, scope: !321)
!518 = !{!403, !247, i64 8}
!519 = !DILocation(line: 685, column: 30, scope: !321)
!520 = !{!403, !247, i64 16}
!521 = !DILocation(line: 686, column: 39, scope: !321)
!522 = !DILocation(line: 686, column: 37, scope: !321)
!523 = !{!403, !276, i64 32}
!524 = !DILocation(line: 694, column: 27, scope: !525)
!525 = distinct !DILexicalBlock(scope: !321, file: !3, line: 693, column: 3)
!526 = !DILocation(line: 694, column: 5, scope: !525)
!527 = !DILocation(line: 696, column: 13, scope: !525)
!528 = !{!340, !248, i64 9}
!529 = !DILocation(line: 696, column: 5, scope: !525)
!530 = !DILocation(line: 703, column: 9, scope: !531)
!531 = distinct !DILexicalBlock(scope: !525, file: !3, line: 696, column: 31)
!532 = !DILocation(line: 704, column: 9, scope: !531)
!533 = !DILocation(line: 709, column: 9, scope: !531)
!534 = !DILocation(line: 710, column: 9, scope: !531)
!535 = !DILocation(line: 715, column: 9, scope: !531)
!536 = !DILocation(line: 716, column: 9, scope: !531)
!537 = !DILocation(line: 732, column: 16, scope: !538)
!538 = distinct !DILexicalBlock(scope: !539, file: !3, line: 732, column: 15)
!539 = distinct !DILexicalBlock(scope: !531, file: !3, line: 729, column: 9)
!540 = !DILocation(line: 732, column: 69, scope: !538)
!541 = !DILocation(line: 733, column: 16, scope: !538)
!542 = !DILocation(line: 732, column: 15, scope: !539)
!543 = !DILocation(line: 734, column: 13, scope: !544)
!544 = distinct !DILexicalBlock(scope: !538, file: !3, line: 733, column: 63)
!545 = !DILocation(line: 735, column: 13, scope: !544)
!546 = !DILocation(line: 736, column: 11, scope: !544)
!547 = !DILocation(line: 741, column: 11, scope: !539)
!548 = !{!311, !276, i64 88}
!549 = !DILocation(line: 742, column: 11, scope: !539)
!550 = !DILocation(line: 745, column: 9, scope: !531)
!551 = !DILocation(line: 746, column: 9, scope: !531)
!552 = !DILocation(line: 0, scope: !531)
!553 = !DILocation(line: 751, column: 25, scope: !321)
!554 = !DILocation(line: 753, column: 30, scope: !321)
!555 = !DILocation(line: 754, column: 37, scope: !321)
!556 = !DILocation(line: 755, column: 3, scope: !321)
!557 = !DILocation(line: 756, column: 3, scope: !321)
!558 = !DILocation(line: 758, column: 3, scope: !321)
!559 = !DILocation(line: 0, scope: !345)
!560 = !DILocation(line: 759, column: 1, scope: !321)
!561 = distinct !DISubprogram(name: "ip4_output_if", scope: !3, file: !3, line: 787, type: !562, isLocal: false, isDefinition: true, scopeLine: 790, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !564)
!562 = !DISubroutineType(types: !563)
!563 = !{!175, !180, !66, !66, !62, !62, !62, !136}
!564 = !{!565, !566, !567, !568, !569, !570, !571, !572}
!565 = !DILocalVariable(name: "p", arg: 1, scope: !561, file: !3, line: 787, type: !180)
!566 = !DILocalVariable(name: "src", arg: 2, scope: !561, file: !3, line: 787, type: !66)
!567 = !DILocalVariable(name: "dest", arg: 3, scope: !561, file: !3, line: 787, type: !66)
!568 = !DILocalVariable(name: "ttl", arg: 4, scope: !561, file: !3, line: 788, type: !62)
!569 = !DILocalVariable(name: "tos", arg: 5, scope: !561, file: !3, line: 788, type: !62)
!570 = !DILocalVariable(name: "proto", arg: 6, scope: !561, file: !3, line: 789, type: !62)
!571 = !DILocalVariable(name: "netif", arg: 7, scope: !561, file: !3, line: 789, type: !136)
!572 = !DILocalVariable(name: "src_used", scope: !561, file: !3, line: 807, type: !66)
!573 = !DILocation(line: 787, column: 28, scope: !561)
!574 = !DILocation(line: 787, column: 49, scope: !561)
!575 = !DILocation(line: 787, column: 72, scope: !561)
!576 = !DILocation(line: 788, column: 20, scope: !561)
!577 = !DILocation(line: 788, column: 30, scope: !561)
!578 = !DILocation(line: 789, column: 20, scope: !561)
!579 = !DILocation(line: 789, column: 41, scope: !561)
!580 = !DILocation(line: 807, column: 21, scope: !561)
!581 = !DILocation(line: 808, column: 12, scope: !582)
!582 = distinct !DILexicalBlock(scope: !561, file: !3, line: 808, column: 7)
!583 = !DILocation(line: 808, column: 7, scope: !561)
!584 = !DILocation(line: 809, column: 9, scope: !585)
!585 = distinct !DILexicalBlock(scope: !586, file: !3, line: 809, column: 9)
!586 = distinct !DILexicalBlock(scope: !582, file: !3, line: 808, column: 32)
!587 = !DILocation(line: 809, column: 9, scope: !586)
!588 = !DILocation(line: 810, column: 18, scope: !589)
!589 = distinct !DILexicalBlock(scope: !585, file: !3, line: 809, column: 30)
!590 = !DILocation(line: 811, column: 5, scope: !589)
!591 = !DILocation(line: 0, scope: !561)
!592 = !DILocation(line: 818, column: 10, scope: !561)
!593 = !DILocation(line: 818, column: 3, scope: !561)
!594 = distinct !DISubprogram(name: "ip4_output_if_src", scope: !3, file: !3, line: 827, type: !562, isLocal: false, isDefinition: true, scopeLine: 830, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !595)
!595 = !{!596, !597, !598, !599, !600, !601, !602, !603, !604, !605}
!596 = !DILocalVariable(name: "p", arg: 1, scope: !594, file: !3, line: 827, type: !180)
!597 = !DILocalVariable(name: "src", arg: 2, scope: !594, file: !3, line: 827, type: !66)
!598 = !DILocalVariable(name: "dest", arg: 3, scope: !594, file: !3, line: 827, type: !66)
!599 = !DILocalVariable(name: "ttl", arg: 4, scope: !594, file: !3, line: 828, type: !62)
!600 = !DILocalVariable(name: "tos", arg: 5, scope: !594, file: !3, line: 828, type: !62)
!601 = !DILocalVariable(name: "proto", arg: 6, scope: !594, file: !3, line: 829, type: !62)
!602 = !DILocalVariable(name: "netif", arg: 7, scope: !594, file: !3, line: 829, type: !136)
!603 = !DILocalVariable(name: "iphdr", scope: !594, file: !3, line: 845, type: !73)
!604 = !DILocalVariable(name: "dest_addr", scope: !594, file: !3, line: 846, type: !68)
!605 = !DILocalVariable(name: "ip_hlen", scope: !606, file: !3, line: 858, type: !80)
!606 = distinct !DILexicalBlock(scope: !607, file: !3, line: 857, column: 32)
!607 = distinct !DILexicalBlock(scope: !594, file: !3, line: 857, column: 7)
!608 = !DILocation(line: 827, column: 32, scope: !594)
!609 = !DILocation(line: 827, column: 53, scope: !594)
!610 = !DILocation(line: 827, column: 76, scope: !594)
!611 = !DILocation(line: 828, column: 24, scope: !594)
!612 = !DILocation(line: 828, column: 34, scope: !594)
!613 = !DILocation(line: 829, column: 24, scope: !594)
!614 = !DILocation(line: 829, column: 45, scope: !594)
!615 = !DILocation(line: 846, column: 3, scope: !594)
!616 = !DILocation(line: 852, column: 3, scope: !617)
!617 = distinct !DILexicalBlock(scope: !618, file: !3, line: 852, column: 3)
!618 = distinct !DILexicalBlock(scope: !594, file: !3, line: 852, column: 3)
!619 = !{!335, !248, i64 22}
!620 = !DILocation(line: 852, column: 3, scope: !618)
!621 = !DILocation(line: 852, column: 3, scope: !622)
!622 = distinct !DILexicalBlock(scope: !623, file: !3, line: 852, column: 3)
!623 = distinct !DILexicalBlock(scope: !617, file: !3, line: 852, column: 3)
!624 = !DILocation(line: 852, column: 3, scope: !625)
!625 = distinct !DILexicalBlock(scope: !626, file: !3, line: 852, column: 3)
!626 = distinct !DILexicalBlock(scope: !627, file: !3, line: 852, column: 3)
!627 = distinct !DILexicalBlock(scope: !622, file: !3, line: 852, column: 3)
!628 = !DILocation(line: 857, column: 12, scope: !607)
!629 = !DILocation(line: 857, column: 7, scope: !594)
!630 = !DILocation(line: 858, column: 11, scope: !606)
!631 = !DILocation(line: 895, column: 9, scope: !632)
!632 = distinct !DILexicalBlock(scope: !606, file: !3, line: 895, column: 9)
!633 = !DILocation(line: 895, column: 9, scope: !606)
!634 = !DILocation(line: 898, column: 7, scope: !635)
!635 = distinct !DILexicalBlock(scope: !632, file: !3, line: 895, column: 38)
!636 = !DILocation(line: 900, column: 7, scope: !635)
!637 = !DILocation(line: 903, column: 33, scope: !606)
!638 = !DILocation(line: 845, column: 18, scope: !594)
!639 = !DILocation(line: 904, column: 5, scope: !640)
!640 = distinct !DILexicalBlock(scope: !641, file: !3, line: 904, column: 5)
!641 = distinct !DILexicalBlock(scope: !606, file: !3, line: 904, column: 5)
!642 = !DILocation(line: 904, column: 5, scope: !641)
!643 = !DILocation(line: 904, column: 5, scope: !644)
!644 = distinct !DILexicalBlock(scope: !645, file: !3, line: 904, column: 5)
!645 = distinct !DILexicalBlock(scope: !640, file: !3, line: 904, column: 5)
!646 = !DILocation(line: 904, column: 5, scope: !647)
!647 = distinct !DILexicalBlock(scope: !648, file: !3, line: 904, column: 5)
!648 = distinct !DILexicalBlock(scope: !649, file: !3, line: 904, column: 5)
!649 = distinct !DILexicalBlock(scope: !644, file: !3, line: 904, column: 5)
!650 = !DILocation(line: 907, column: 5, scope: !606)
!651 = !{!340, !248, i64 8}
!652 = !DILocation(line: 908, column: 5, scope: !606)
!653 = !DILocation(line: 914, column: 5, scope: !606)
!654 = !DILocation(line: 920, column: 5, scope: !606)
!655 = !DILocation(line: 921, column: 5, scope: !606)
!656 = !{!340, !248, i64 1}
!657 = !DILocation(line: 925, column: 5, scope: !606)
!658 = !DILocation(line: 929, column: 5, scope: !606)
!659 = !DILocation(line: 930, column: 5, scope: !606)
!660 = !{!276, !276, i64 0}
!661 = !{!340, !276, i64 4}
!662 = !DILocation(line: 934, column: 5, scope: !606)
!663 = !DILocation(line: 936, column: 13, scope: !664)
!664 = distinct !DILexicalBlock(scope: !606, file: !3, line: 936, column: 9)
!665 = !DILocation(line: 936, column: 9, scope: !606)
!666 = !DILocation(line: 940, column: 7, scope: !667)
!667 = distinct !DILexicalBlock(scope: !664, file: !3, line: 938, column: 12)
!668 = !DILocation(line: 0, scope: !669)
!669 = distinct !DILexicalBlock(scope: !664, file: !3, line: 936, column: 22)
!670 = !DILocation(line: 958, column: 5, scope: !606)
!671 = !{!340, !276, i64 10}
!672 = !DILocation(line: 960, column: 5, scope: !673)
!673 = distinct !DILexicalBlock(scope: !606, file: !3, line: 960, column: 5)
!674 = !DILocation(line: 960, column: 5, scope: !606)
!675 = !DILocation(line: 961, column: 7, scope: !676)
!676 = distinct !DILexicalBlock(scope: !673, file: !3, line: 960, column: 62)
!677 = !DILocation(line: 962, column: 5, scope: !676)
!678 = !DILocation(line: 965, column: 3, scope: !607)
!679 = !DILocation(line: 967, column: 12, scope: !680)
!680 = distinct !DILexicalBlock(scope: !681, file: !3, line: 967, column: 9)
!681 = distinct !DILexicalBlock(scope: !607, file: !3, line: 965, column: 10)
!682 = !DILocation(line: 967, column: 16, scope: !680)
!683 = !DILocation(line: 967, column: 9, scope: !681)
!684 = !DILocation(line: 969, column: 7, scope: !685)
!685 = distinct !DILexicalBlock(scope: !680, file: !3, line: 967, column: 27)
!686 = !DILocation(line: 971, column: 7, scope: !685)
!687 = !DILocation(line: 973, column: 33, scope: !681)
!688 = !DILocation(line: 974, column: 5, scope: !681)
!689 = !DILocation(line: 978, column: 3, scope: !594)
!690 = !{!311, !276, i64 72}
!691 = !DILocation(line: 1007, column: 17, scope: !594)
!692 = !{!274, !247, i64 192}
!693 = !DILocation(line: 1007, column: 10, scope: !594)
!694 = !DILocation(line: 1007, column: 3, scope: !594)
!695 = !DILocation(line: 0, scope: !685)
!696 = !DILocation(line: 1008, column: 1, scope: !594)
!697 = !DILocation(line: 194, column: 43, scope: !106)
!698 = !DILocation(line: 196, column: 2, scope: !106)
!699 = !DILocation(line: 196, column: 10, scope: !106)
!700 = !DILocation(line: 197, column: 2, scope: !106)
!701 = !DILocation(line: 198, column: 2, scope: !702)
!702 = distinct !DILexicalBlock(scope: !703, file: !107, line: 198, column: 2)
!703 = distinct !DILexicalBlock(scope: !106, file: !107, line: 198, column: 2)
!704 = !DILocation(line: 199, column: 2, scope: !106)
!705 = !DILocation(line: 200, column: 1, scope: !106)
!706 = distinct !DISubprogram(name: "ip4_output", scope: !3, file: !3, line: 1028, type: !707, isLocal: false, isDefinition: true, scopeLine: 1030, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !709)
!707 = !DISubroutineType(types: !708)
!708 = !{!175, !180, !66, !66, !62, !62, !62}
!709 = !{!710, !711, !712, !713, !714, !715, !716}
!710 = !DILocalVariable(name: "p", arg: 1, scope: !706, file: !3, line: 1028, type: !180)
!711 = !DILocalVariable(name: "src", arg: 2, scope: !706, file: !3, line: 1028, type: !66)
!712 = !DILocalVariable(name: "dest", arg: 3, scope: !706, file: !3, line: 1028, type: !66)
!713 = !DILocalVariable(name: "ttl", arg: 4, scope: !706, file: !3, line: 1029, type: !62)
!714 = !DILocalVariable(name: "tos", arg: 5, scope: !706, file: !3, line: 1029, type: !62)
!715 = !DILocalVariable(name: "proto", arg: 6, scope: !706, file: !3, line: 1029, type: !62)
!716 = !DILocalVariable(name: "netif", scope: !706, file: !3, line: 1031, type: !136)
!717 = !DILocation(line: 1028, column: 25, scope: !706)
!718 = !DILocation(line: 1028, column: 46, scope: !706)
!719 = !DILocation(line: 1028, column: 69, scope: !706)
!720 = !DILocation(line: 1029, column: 17, scope: !706)
!721 = !DILocation(line: 1029, column: 27, scope: !706)
!722 = !DILocation(line: 1029, column: 37, scope: !706)
!723 = !DILocation(line: 1033, column: 3, scope: !724)
!724 = distinct !DILexicalBlock(scope: !725, file: !3, line: 1033, column: 3)
!725 = distinct !DILexicalBlock(scope: !706, file: !3, line: 1033, column: 3)
!726 = !DILocation(line: 1033, column: 3, scope: !725)
!727 = !DILocation(line: 1033, column: 3, scope: !728)
!728 = distinct !DILexicalBlock(scope: !729, file: !3, line: 1033, column: 3)
!729 = distinct !DILexicalBlock(scope: !724, file: !3, line: 1033, column: 3)
!730 = !DILocation(line: 1033, column: 3, scope: !731)
!731 = distinct !DILexicalBlock(scope: !732, file: !3, line: 1033, column: 3)
!732 = distinct !DILexicalBlock(scope: !733, file: !3, line: 1033, column: 3)
!733 = distinct !DILexicalBlock(scope: !728, file: !3, line: 1033, column: 3)
!734 = !DILocation(line: 1035, column: 16, scope: !735)
!735 = distinct !DILexicalBlock(scope: !706, file: !3, line: 1035, column: 7)
!736 = !DILocation(line: 1031, column: 17, scope: !706)
!737 = !DILocation(line: 1035, column: 42, scope: !735)
!738 = !DILocation(line: 1035, column: 7, scope: !706)
!739 = !DILocation(line: 1038, column: 5, scope: !740)
!740 = distinct !DILexicalBlock(scope: !735, file: !3, line: 1035, column: 51)
!741 = !DILocation(line: 1039, column: 5, scope: !740)
!742 = !DILocation(line: 787, column: 28, scope: !561, inlinedAt: !743)
!743 = distinct !DILocation(line: 1042, column: 10, scope: !706)
!744 = !DILocation(line: 787, column: 49, scope: !561, inlinedAt: !743)
!745 = !DILocation(line: 787, column: 72, scope: !561, inlinedAt: !743)
!746 = !DILocation(line: 788, column: 20, scope: !561, inlinedAt: !743)
!747 = !DILocation(line: 788, column: 30, scope: !561, inlinedAt: !743)
!748 = !DILocation(line: 789, column: 20, scope: !561, inlinedAt: !743)
!749 = !DILocation(line: 789, column: 41, scope: !561, inlinedAt: !743)
!750 = !DILocation(line: 807, column: 21, scope: !561, inlinedAt: !743)
!751 = !DILocation(line: 808, column: 12, scope: !582, inlinedAt: !743)
!752 = !DILocation(line: 808, column: 7, scope: !561, inlinedAt: !743)
!753 = !DILocation(line: 809, column: 9, scope: !585, inlinedAt: !743)
!754 = !DILocation(line: 809, column: 9, scope: !586, inlinedAt: !743)
!755 = !DILocation(line: 810, column: 18, scope: !589, inlinedAt: !743)
!756 = !DILocation(line: 811, column: 5, scope: !589, inlinedAt: !743)
!757 = !DILocation(line: 0, scope: !561, inlinedAt: !743)
!758 = !DILocation(line: 818, column: 10, scope: !561, inlinedAt: !743)
!759 = !DILocation(line: 818, column: 3, scope: !561, inlinedAt: !743)
!760 = !DILocation(line: 1042, column: 3, scope: !706)
!761 = !DILocation(line: 0, scope: !706)
!762 = !DILocation(line: 0, scope: !740)
!763 = !DILocation(line: 1043, column: 1, scope: !706)
