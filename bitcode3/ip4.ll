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

; Function Attrs: noredzone nounwind
define dso_local void @ip4_set_default_multicast_netif(%struct.netif*) local_unnamed_addr #0 !dbg !241 {
  store %struct.netif* %0, %struct.netif** @ip4_default_multicast_netif, align 8, !dbg !245, !tbaa !246
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
  br i1 %8, label %58, label %9, !dbg !264

; <label>:9:                                      ; preds = %1
  %10 = load %struct.netif*, %struct.netif** @netif_list, align 8, !dbg !265, !tbaa !246
  %11 = icmp eq %struct.netif* %10, null, !dbg !268
  br i1 %11, label %40, label %12, !dbg !265

; <label>:12:                                     ; preds = %9, %36
  %13 = phi %struct.netif* [ %38, %36 ], [ %10, %9 ]
  %14 = getelementptr inbounds %struct.netif, %struct.netif* %13, i64 0, i32 21, !dbg !270
  %15 = load i8, i8* %14, align 1, !dbg !270, !tbaa !273
  %16 = zext i8 %15 to i32, !dbg !270
  %17 = and i32 %16, 5, !dbg !277
  %18 = icmp eq i32 %17, 5, !dbg !277
  br i1 %18, label %19, label %36, !dbg !277

; <label>:19:                                     ; preds = %12
  %20 = getelementptr inbounds %struct.netif, %struct.netif* %13, i64 0, i32 1, i32 0, i32 0, i32 0, i64 0, !dbg !278
  %21 = load i32, i32* %20, align 8, !dbg !278, !tbaa !279
  %22 = icmp eq i32 %21, 0, !dbg !278
  br i1 %22, label %36, label %23, !dbg !280

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct.netif, %struct.netif* %13, i64 0, i32 2, i32 0, i32 0, i32 0, i64 0, !dbg !281
  %25 = load i32, i32* %24, align 8, !dbg !281, !tbaa !279
  %26 = xor i32 %21, %3, !dbg !281
  %27 = and i32 %25, %26, !dbg !281
  %28 = icmp eq i32 %27, 0, !dbg !281
  br i1 %28, label %58, label %29, !dbg !284

; <label>:29:                                     ; preds = %23
  %30 = and i32 %16, 2, !dbg !285
  %31 = icmp eq i32 %30, 0, !dbg !287
  br i1 %31, label %32, label %36, !dbg !288

; <label>:32:                                     ; preds = %29
  %33 = getelementptr inbounds %struct.netif, %struct.netif* %13, i64 0, i32 3, i32 0, i32 0, i32 0, i64 0, !dbg !289
  %34 = load i32, i32* %33, align 8, !dbg !289, !tbaa !279
  %35 = icmp eq i32 %3, %34, !dbg !289
  br i1 %35, label %58, label %36, !dbg !290

; <label>:36:                                     ; preds = %12, %19, %32, %29
  %37 = getelementptr inbounds %struct.netif, %struct.netif* %13, i64 0, i32 0, !dbg !268
  %38 = load %struct.netif*, %struct.netif** %37, align 8, !dbg !265, !tbaa !246
  %39 = icmp eq %struct.netif* %38, null, !dbg !268
  br i1 %39, label %40, label %12, !dbg !265, !llvm.loop !291

; <label>:40:                                     ; preds = %36, %9
  %41 = load %struct.netif*, %struct.netif** @netif_default, align 8, !dbg !293, !tbaa !246
  %42 = icmp eq %struct.netif* %41, null, !dbg !295
  br i1 %42, label %55, label %43, !dbg !296

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds %struct.netif, %struct.netif* %41, i64 0, i32 21, !dbg !297
  %45 = load i8, i8* %44, align 1, !dbg !297, !tbaa !273
  %46 = and i8 %45, 5, !dbg !298
  %47 = icmp eq i8 %46, 5, !dbg !298
  br i1 %47, label %48, label %55, !dbg !298

; <label>:48:                                     ; preds = %43
  %49 = getelementptr inbounds %struct.netif, %struct.netif* %41, i64 0, i32 1, i32 0, i32 0, i32 0, i64 0, !dbg !299
  %50 = load i32, i32* %49, align 8, !dbg !299, !tbaa !279
  %51 = icmp eq i32 %50, 0, !dbg !299
  %52 = and i32 %3, 255, !dbg !300
  %53 = icmp eq i32 %52, 127, !dbg !300
  %54 = or i1 %53, %51, !dbg !301
  br i1 %54, label %55, label %58, !dbg !301

; <label>:55:                                     ; preds = %43, %48, %40
  %56 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 3, i32 7), align 2, !dbg !302, !tbaa !304
  %57 = add i16 %56, 1, !dbg !302
  store i16 %57, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 3, i32 7), align 2, !dbg !302, !tbaa !304
  br label %58, !dbg !310

; <label>:58:                                     ; preds = %32, %23, %48, %1, %55
  %59 = phi %struct.netif* [ null, %55 ], [ %6, %1 ], [ %41, %48 ], [ %13, %23 ], [ %13, %32 ], !dbg !311
  ret %struct.netif* %59, !dbg !312
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local signext i8 @ip4_input(%struct.pbuf*, %struct.netif*) local_unnamed_addr #0 !dbg !313 {
  %3 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 3, i32 1), align 2, !dbg !323, !tbaa !324
  %4 = add i16 %3, 1, !dbg !323
  store i16 %4, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 3, i32 1), align 2, !dbg !323, !tbaa !324
  %5 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 1, !dbg !325
  %6 = load i8*, i8** %5, align 8, !dbg !325, !tbaa !326
  %7 = load i8, i8* %6, align 1, !dbg !329, !tbaa !331
  %8 = and i8 %7, -16, !dbg !334
  %9 = icmp eq i8 %8, 64, !dbg !334
  br i1 %9, label %16, label %10, !dbg !335

; <label>:10:                                     ; preds = %2
  %11 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !336
  %12 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 3, i32 10), align 2, !dbg !338, !tbaa !339
  %13 = add i16 %12, 1, !dbg !338
  store i16 %13, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 3, i32 10), align 2, !dbg !338, !tbaa !339
  %14 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 3, i32 3), align 2, !dbg !340, !tbaa !341
  %15 = add i16 %14, 1, !dbg !340
  store i16 %15, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 3, i32 3), align 2, !dbg !340, !tbaa !341
  br label %183, !dbg !342

; <label>:16:                                     ; preds = %2
  %17 = shl i8 %7, 2, !dbg !343
  %18 = and i8 %17, 60, !dbg !343
  %19 = zext i8 %18 to i16, !dbg !343
  %20 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !345
  %21 = bitcast i8* %20 to i16*, !dbg !345
  %22 = load i16, i16* %21, align 1, !dbg !345, !tbaa !346
  %23 = tail call zeroext i16 @lwip_htons(i16 zeroext %22) #7, !dbg !345
  %24 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 2, !dbg !348
  %25 = load i16, i16* %24, align 8, !dbg !348, !tbaa !350
  %26 = icmp ult i16 %23, %25, !dbg !351
  br i1 %26, label %27, label %28, !dbg !352

; <label>:27:                                     ; preds = %16
  tail call void @pbuf_realloc(%struct.pbuf* nonnull %0, i16 zeroext %23) #7, !dbg !353
  br label %28, !dbg !355

; <label>:28:                                     ; preds = %27, %16
  %29 = zext i8 %18 to i32, !dbg !356
  %30 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 3, !dbg !358
  %31 = load i16, i16* %30, align 2, !dbg !358, !tbaa !359
  %32 = zext i16 %31 to i32, !dbg !360
  %33 = icmp ugt i32 %29, %32, !dbg !361
  br i1 %33, label %39, label %34, !dbg !362

; <label>:34:                                     ; preds = %28
  %35 = load i16, i16* %24, align 8, !dbg !363, !tbaa !350
  %36 = icmp ugt i16 %23, %35, !dbg !364
  %37 = icmp ult i8 %18, 20, !dbg !365
  %38 = or i1 %37, %36, !dbg !366
  br i1 %38, label %39, label %45, !dbg !366

; <label>:39:                                     ; preds = %34, %28
  %40 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !367
  %41 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 3, i32 5), align 2, !dbg !369, !tbaa !370
  %42 = add i16 %41, 1, !dbg !369
  store i16 %42, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 3, i32 5), align 2, !dbg !369, !tbaa !370
  %43 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 3, i32 3), align 2, !dbg !371, !tbaa !341
  %44 = add i16 %43, 1, !dbg !371
  store i16 %44, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 3, i32 3), align 2, !dbg !371, !tbaa !341
  br label %183, !dbg !372

; <label>:45:                                     ; preds = %34
  %46 = icmp eq %struct.netif* %1, null, !dbg !373
  br i1 %46, label %52, label %47, !dbg !373

; <label>:47:                                     ; preds = %45
  %48 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 16, !dbg !373
  %49 = load i16, i16* %48, align 8, !dbg !373, !tbaa !375
  %50 = and i16 %49, 256, !dbg !373
  %51 = icmp eq i16 %50, 0, !dbg !373
  br i1 %51, label %61, label %52, !dbg !376

; <label>:52:                                     ; preds = %47, %45
  %53 = tail call zeroext i16 @inet_chksum(i8* nonnull %6, i16 zeroext %19) #7, !dbg !377
  %54 = icmp eq i16 %53, 0, !dbg !380
  br i1 %54, label %61, label %55, !dbg !381

; <label>:55:                                     ; preds = %52
  %56 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !382
  %57 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 3, i32 4), align 2, !dbg !384, !tbaa !385
  %58 = add i16 %57, 1, !dbg !384
  store i16 %58, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 3, i32 4), align 2, !dbg !384, !tbaa !385
  %59 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 3, i32 3), align 2, !dbg !386, !tbaa !341
  %60 = add i16 %59, 1, !dbg !386
  store i16 %60, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 3, i32 3), align 2, !dbg !386, !tbaa !341
  br label %183, !dbg !387

; <label>:61:                                     ; preds = %52, %47
  %62 = getelementptr inbounds i8, i8* %6, i64 16, !dbg !388
  %63 = bitcast i8* %62 to i32*, !dbg !388
  %64 = load i32, i32* %63, align 1, !dbg !388, !tbaa !390
  store i32 %64, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !388, !tbaa !279
  store i8 0, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 1), align 4, !dbg !391, !tbaa !393
  store i32 0, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 3), align 4, !dbg !395, !tbaa !279
  store i32 0, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 2), align 4, !dbg !395, !tbaa !279
  store i32 0, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 1), align 4, !dbg !395, !tbaa !279
  store i8 0, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 1), align 4, !dbg !395, !tbaa !279
  %65 = getelementptr inbounds i8, i8* %6, i64 12, !dbg !397
  %66 = bitcast i8* %65 to i32*, !dbg !397
  %67 = load i32, i32* %66, align 1, !dbg !397, !tbaa !399
  store i32 %67, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !397, !tbaa !279
  store i8 0, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 1), align 4, !dbg !400, !tbaa !402
  store i32 0, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 3), align 4, !dbg !403, !tbaa !279
  store i32 0, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 2), align 4, !dbg !403, !tbaa !279
  store i32 0, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 1), align 4, !dbg !403, !tbaa !279
  store i8 0, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 1), align 4, !dbg !403, !tbaa !279
  %68 = and i32 %64, 240, !dbg !405
  %69 = icmp eq i32 %68, 224, !dbg !405
  %70 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 21, !dbg !407
  %71 = load i8, i8* %70, align 1, !dbg !407, !tbaa !273
  %72 = and i8 %71, 1, !dbg !407
  %73 = icmp eq i8 %72, 0, !dbg !407
  br i1 %69, label %74, label %80, !dbg !410

; <label>:74:                                     ; preds = %61
  br i1 %73, label %79, label %75, !dbg !411

; <label>:75:                                     ; preds = %74
  %76 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 1, i32 0, i32 0, i32 0, i64 0, !dbg !414
  %77 = load i32, i32* %76, align 8, !dbg !414, !tbaa !279
  %78 = icmp eq i32 %77, 0, !dbg !414
  br i1 %78, label %79, label %121, !dbg !415

; <label>:79:                                     ; preds = %74, %75
  br label %121

; <label>:80:                                     ; preds = %61
  br i1 %73, label %92, label %81, !dbg !424

; <label>:81:                                     ; preds = %80
  %82 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 1, i32 0, i32 0, i32 0, i64 0, !dbg !426
  %83 = load i32, i32* %82, align 8, !dbg !426, !tbaa !279
  %84 = icmp eq i32 %83, 0, !dbg !426
  br i1 %84, label %92, label %85, !dbg !427

; <label>:85:                                     ; preds = %81
  %86 = icmp eq i32 %64, %83, !dbg !428
  br i1 %86, label %121, label %87, !dbg !431

; <label>:87:                                     ; preds = %85
  %88 = tail call zeroext i8 @ip4_addr_isbroadcast_u32(i32 %64, %struct.netif* nonnull %1) #7, !dbg !432
  %89 = icmp eq i8 %88, 0, !dbg !432
  br i1 %89, label %90, label %121, !dbg !433

; <label>:90:                                     ; preds = %87
  %91 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !434, !tbaa !279
  br label %92, !dbg !433

; <label>:92:                                     ; preds = %90, %81, %80
  %93 = phi i32 [ %91, %90 ], [ %64, %81 ], [ %64, %80 ], !dbg !434
  %94 = and i32 %93, 255, !dbg !434
  %95 = icmp eq i32 %94, 127, !dbg !434
  br i1 %95, label %121, label %96, !dbg !437

; <label>:96:                                     ; preds = %92
  %97 = load %struct.netif*, %struct.netif** @netif_list, align 8, !dbg !438, !tbaa !246
  %98 = icmp eq %struct.netif* %97, null, !dbg !441
  br i1 %98, label %121, label %99, !dbg !438

; <label>:99:                                     ; preds = %96, %117
  %100 = phi %struct.netif* [ %119, %117 ], [ %97, %96 ]
  %101 = icmp eq %struct.netif* %100, %1, !dbg !443
  br i1 %101, label %117, label %102, !dbg !446

; <label>:102:                                    ; preds = %99
  %103 = getelementptr inbounds %struct.netif, %struct.netif* %100, i64 0, i32 21, !dbg !450
  %104 = load i8, i8* %103, align 1, !dbg !450, !tbaa !273
  %105 = and i8 %104, 1, !dbg !450
  %106 = icmp eq i8 %105, 0, !dbg !450
  br i1 %106, label %117, label %107, !dbg !451

; <label>:107:                                    ; preds = %102
  %108 = getelementptr inbounds %struct.netif, %struct.netif* %100, i64 0, i32 1, i32 0, i32 0, i32 0, i64 0, !dbg !452
  %109 = load i32, i32* %108, align 8, !dbg !452, !tbaa !279
  %110 = icmp eq i32 %109, 0, !dbg !452
  br i1 %110, label %117, label %111, !dbg !453

; <label>:111:                                    ; preds = %107
  %112 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !454, !tbaa !279
  %113 = icmp eq i32 %112, %109, !dbg !454
  br i1 %113, label %121, label %114, !dbg !455

; <label>:114:                                    ; preds = %111
  %115 = tail call zeroext i8 @ip4_addr_isbroadcast_u32(i32 %112, %struct.netif* nonnull %100) #7, !dbg !456
  %116 = icmp eq i8 %115, 0, !dbg !456
  br i1 %116, label %117, label %121, !dbg !457

; <label>:117:                                    ; preds = %114, %107, %102, %99
  %118 = getelementptr inbounds %struct.netif, %struct.netif* %100, i64 0, i32 0, !dbg !441
  %119 = load %struct.netif*, %struct.netif** %118, align 8, !dbg !438, !tbaa !246
  %120 = icmp eq %struct.netif* %119, null, !dbg !441
  br i1 %120, label %121, label %99, !dbg !438, !llvm.loop !458

; <label>:121:                                    ; preds = %117, %114, %111, %96, %85, %87, %75, %92, %79
  %122 = phi %struct.netif* [ null, %79 ], [ null, %92 ], [ %1, %75 ], [ %1, %87 ], [ %1, %85 ], [ null, %96 ], [ null, %117 ], [ %100, %114 ], [ %100, %111 ], !dbg !460
  %123 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !461, !tbaa !279
  %124 = tail call zeroext i8 @ip4_addr_isbroadcast_u32(i32 %123, %struct.netif* %1) #7, !dbg !461
  %125 = icmp eq i8 %124, 0, !dbg !464
  br i1 %125, label %126, label %130, !dbg !465

; <label>:126:                                    ; preds = %121
  %127 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !466, !tbaa !279
  %128 = and i32 %127, 240, !dbg !466
  %129 = icmp eq i32 %128, 224, !dbg !466
  br i1 %129, label %130, label %134, !dbg !467

; <label>:130:                                    ; preds = %121, %126
  %131 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %0) #7, !dbg !468
  %132 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 3, i32 3), align 2, !dbg !470, !tbaa !341
  %133 = add i16 %132, 1, !dbg !470
  store i16 %133, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 3, i32 3), align 2, !dbg !470, !tbaa !341
  br label %183, !dbg !471

; <label>:134:                                    ; preds = %126
  %135 = icmp eq %struct.netif* %122, null, !dbg !472
  br i1 %135, label %136, label %140, !dbg !474

; <label>:136:                                    ; preds = %134
  %137 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 3, i32 3), align 2, !dbg !475, !tbaa !341
  %138 = add i16 %137, 1, !dbg !475
  store i16 %138, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 3, i32 3), align 2, !dbg !475, !tbaa !341
  %139 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %0) #7, !dbg !478
  br label %183, !dbg !479

; <label>:140:                                    ; preds = %134
  %141 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !480
  %142 = bitcast i8* %141 to i16*, !dbg !480
  %143 = load i16, i16* %142, align 1, !dbg !480, !tbaa !482
  %144 = and i16 %143, -193, !dbg !483
  %145 = icmp eq i16 %144, 0, !dbg !484
  br i1 %145, label %152, label %146, !dbg !485

; <label>:146:                                    ; preds = %140
  %147 = tail call %struct.pbuf* @ip4_reass(%struct.pbuf* %0) #7, !dbg !486
  %148 = icmp eq %struct.pbuf* %147, null, !dbg !488
  br i1 %148, label %183, label %149, !dbg !490

; <label>:149:                                    ; preds = %146
  %150 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %147, i64 0, i32 1, !dbg !491
  %151 = load i8*, i8** %150, align 8, !dbg !491, !tbaa !326
  br label %152, !dbg !492

; <label>:152:                                    ; preds = %140, %149
  %153 = phi i8* [ %151, %149 ], [ %6, %140 ]
  %154 = phi %struct.pbuf* [ %147, %149 ], [ %0, %140 ]
  store %struct.netif* %122, %struct.netif** getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 0), align 8, !dbg !493, !tbaa !494
  store %struct.netif* %1, %struct.netif** getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 1), align 8, !dbg !495, !tbaa !496
  store i8* %153, i8** bitcast (%struct.ip_hdr** getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 2) to i8**), align 8, !dbg !497, !tbaa !498
  %155 = load i8, i8* %153, align 1, !dbg !499, !tbaa !331
  %156 = shl i8 %155, 2, !dbg !499
  %157 = and i8 %156, 60, !dbg !499
  %158 = zext i8 %157 to i16, !dbg !499
  store i16 %158, i16* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 4), align 8, !dbg !500, !tbaa !501
  %159 = zext i8 %18 to i64, !dbg !502
  %160 = tail call zeroext i8 @pbuf_remove_header(%struct.pbuf* %154, i64 %159) #7, !dbg !504
  %161 = getelementptr inbounds i8, i8* %153, i64 9, !dbg !505
  %162 = load i8, i8* %161, align 1, !dbg !505, !tbaa !506
  switch i8 %162, label %166 [
    i8 17, label %163
    i8 6, label %164
    i8 1, label %165
  ], !dbg !507

; <label>:163:                                    ; preds = %152
  tail call void @udp_input(%struct.pbuf* %154, %struct.netif* %1) #7, !dbg !508
  br label %182, !dbg !510

; <label>:164:                                    ; preds = %152
  tail call void @tcp_input(%struct.pbuf* %154, %struct.netif* %1) #7, !dbg !511
  br label %182, !dbg !512

; <label>:165:                                    ; preds = %152
  tail call void @icmp_input(%struct.pbuf* %154, %struct.netif* %1) #7, !dbg !513
  br label %182, !dbg !514

; <label>:166:                                    ; preds = %152
  %167 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !515, !tbaa !279
  %168 = tail call zeroext i8 @ip4_addr_isbroadcast_u32(i32 %167, %struct.netif* nonnull %122) #7, !dbg !515
  %169 = icmp eq i8 %168, 0, !dbg !515
  br i1 %169, label %170, label %176, !dbg !518

; <label>:170:                                    ; preds = %166
  %171 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !519, !tbaa !279
  %172 = and i32 %171, 240, !dbg !519
  %173 = icmp eq i32 %172, 224, !dbg !519
  br i1 %173, label %176, label %174, !dbg !520

; <label>:174:                                    ; preds = %170
  %175 = tail call zeroext i8 @pbuf_header_force(%struct.pbuf* %154, i16 signext %19) #7, !dbg !521
  tail call void @icmp_dest_unreach(%struct.pbuf* %154, i32 2) #7, !dbg !523
  br label %176, !dbg !524

; <label>:176:                                    ; preds = %166, %174, %170
  %177 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 3, i32 8), align 2, !dbg !525, !tbaa !526
  %178 = add i16 %177, 1, !dbg !525
  store i16 %178, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 3, i32 8), align 2, !dbg !525, !tbaa !526
  %179 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 3, i32 3), align 2, !dbg !527, !tbaa !341
  %180 = add i16 %179, 1, !dbg !527
  store i16 %180, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 3, i32 3), align 2, !dbg !527, !tbaa !341
  %181 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %154) #7, !dbg !528
  br label %182, !dbg !529

; <label>:182:                                    ; preds = %176, %165, %164, %163
  store <2 x %struct.netif*> zeroinitializer, <2 x %struct.netif*>* bitcast (%struct.ip_globals* @ip_data to <2 x %struct.netif*>*), align 8, !dbg !530, !tbaa !246
  store %struct.ip_hdr* null, %struct.ip_hdr** getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 2), align 8, !dbg !531, !tbaa !498
  store i16 0, i16* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 4), align 8, !dbg !532, !tbaa !501
  store i32 0, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !533, !tbaa !279
  store i32 0, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !534, !tbaa !279
  br label %183, !dbg !535

; <label>:183:                                    ; preds = %146, %182, %136, %130, %55, %39, %10
  ret i8 0, !dbg !536
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
define dso_local signext i8 @ip4_output_if(%struct.pbuf*, %struct.ip4_addr* readonly, %struct.ip4_addr*, i8 zeroext, i8 zeroext, i8 zeroext, %struct.netif*) local_unnamed_addr #0 !dbg !537 {
  %8 = icmp eq %struct.ip4_addr* %2, null, !dbg !557
  br i1 %8, label %18, label %9, !dbg !559

; <label>:9:                                      ; preds = %7
  %10 = icmp eq %struct.ip4_addr* %1, null, !dbg !560
  br i1 %10, label %15, label %11, !dbg !560

; <label>:11:                                     ; preds = %9
  %12 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %1, i64 0, i32 0, !dbg !560
  %13 = load i32, i32* %12, align 4, !dbg !560, !tbaa !260
  %14 = icmp eq i32 %13, 0, !dbg !560
  br i1 %14, label %15, label %18, !dbg !563

; <label>:15:                                     ; preds = %11, %9
  %16 = getelementptr inbounds %struct.netif, %struct.netif* %6, i64 0, i32 1, i32 0, !dbg !564
  %17 = bitcast %union.anon* %16 to %struct.ip4_addr*, !dbg !564
  br label %18, !dbg !566

; <label>:18:                                     ; preds = %7, %11, %15
  %19 = phi %struct.ip4_addr* [ %17, %15 ], [ %1, %11 ], [ %1, %7 ], !dbg !567
  %20 = tail call signext i8 @ip4_output_if_src(%struct.pbuf* %0, %struct.ip4_addr* %19, %struct.ip4_addr* %2, i8 zeroext %3, i8 zeroext %4, i8 zeroext %5, %struct.netif* %6) #8, !dbg !568
  ret i8 %20, !dbg !569
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @ip4_output_if_src(%struct.pbuf*, %struct.ip4_addr* readonly, %struct.ip4_addr*, i8 zeroext, i8 zeroext, i8 zeroext, %struct.netif*) local_unnamed_addr #0 !dbg !570 {
  %8 = alloca %struct.ip4_addr, align 4
  %9 = bitcast %struct.ip4_addr* %8 to i8*, !dbg !591
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #6, !dbg !591
  %10 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 6, !dbg !592
  %11 = load i8, i8* %10, align 2, !dbg !592, !tbaa !595
  %12 = icmp eq i8 %11, 1, !dbg !592
  br i1 %12, label %14, label %13, !dbg !596

; <label>:13:                                     ; preds = %7
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0)) #8, !dbg !597
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !600
  tail call void @ukplat_terminate(i32 3) #9, !dbg !600
  unreachable, !dbg !600

; <label>:14:                                     ; preds = %7
  %15 = icmp eq %struct.ip4_addr* %2, null, !dbg !604
  br i1 %15, label %66, label %16, !dbg !605

; <label>:16:                                     ; preds = %14
  %17 = tail call zeroext i8 @pbuf_add_header(%struct.pbuf* nonnull %0, i64 20) #7, !dbg !607
  %18 = icmp eq i8 %17, 0, !dbg !607
  br i1 %18, label %22, label %19, !dbg !609

; <label>:19:                                     ; preds = %16
  %20 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 3, i32 10), align 2, !dbg !610, !tbaa !339
  %21 = add i16 %20, 1, !dbg !610
  store i16 %21, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 3, i32 10), align 2, !dbg !610, !tbaa !339
  br label %87

; <label>:22:                                     ; preds = %16
  %23 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 1, !dbg !612
  %24 = load i8*, i8** %23, align 8, !dbg !612, !tbaa !326
  %25 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 3, !dbg !614
  %26 = load i16, i16* %25, align 2, !dbg !614, !tbaa !359
  %27 = icmp ugt i16 %26, 19, !dbg !614
  br i1 %27, label %29, label %28, !dbg !617

; <label>:28:                                     ; preds = %22
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !618
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !621
  tail call void @ukplat_terminate(i32 3) #9, !dbg !621
  unreachable, !dbg !621

; <label>:29:                                     ; preds = %22
  %30 = getelementptr inbounds i8, i8* %24, i64 8, !dbg !625
  store i8 %3, i8* %30, align 1, !dbg !625, !tbaa !626
  %31 = getelementptr inbounds i8, i8* %24, i64 9, !dbg !627
  store i8 %5, i8* %31, align 1, !dbg !627, !tbaa !506
  %32 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %2, i64 0, i32 0, !dbg !628
  %33 = load i32, i32* %32, align 4, !dbg !628, !tbaa !260
  %34 = getelementptr inbounds i8, i8* %24, i64 16, !dbg !628
  %35 = bitcast i8* %34 to i32*, !dbg !628
  store i32 %33, i32* %35, align 1, !dbg !628, !tbaa !390
  store i8 69, i8* %24, align 1, !dbg !629, !tbaa !331
  %36 = getelementptr inbounds i8, i8* %24, i64 1, !dbg !630
  store i8 %4, i8* %36, align 1, !dbg !630, !tbaa !631
  %37 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 2, !dbg !632
  %38 = load i16, i16* %37, align 8, !dbg !632, !tbaa !350
  %39 = tail call zeroext i16 @lwip_htons(i16 zeroext %38) #7, !dbg !632
  %40 = getelementptr inbounds i8, i8* %24, i64 2, !dbg !632
  %41 = bitcast i8* %40 to i16*, !dbg !632
  store i16 %39, i16* %41, align 1, !dbg !632, !tbaa !346
  %42 = getelementptr inbounds i8, i8* %24, i64 6, !dbg !633
  %43 = bitcast i8* %42 to i16*, !dbg !633
  store i16 0, i16* %43, align 1, !dbg !633, !tbaa !482
  %44 = load i16, i16* @ip_id, align 2, !dbg !634, !tbaa !635
  %45 = tail call zeroext i16 @lwip_htons(i16 zeroext %44) #7, !dbg !634
  %46 = getelementptr inbounds i8, i8* %24, i64 4, !dbg !634
  %47 = bitcast i8* %46 to i16*, !dbg !634
  store i16 %45, i16* %47, align 1, !dbg !634, !tbaa !636
  %48 = load i16, i16* @ip_id, align 2, !dbg !637, !tbaa !635
  %49 = add i16 %48, 1, !dbg !637
  store i16 %49, i16* @ip_id, align 2, !dbg !637, !tbaa !635
  %50 = icmp eq %struct.ip4_addr* %1, null, !dbg !638
  %51 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %1, i64 0, i32 0, !dbg !640
  %52 = select i1 %50, i32* getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip_addr_any, i64 0, i32 0, i32 0, i32 0, i64 0), i32* %51, !dbg !642
  %53 = load i32, i32* %52, align 4, !dbg !643, !tbaa !279
  %54 = getelementptr inbounds i8, i8* %24, i64 12, !dbg !643
  %55 = bitcast i8* %54 to i32*, !dbg !643
  store i32 %53, i32* %55, align 1, !dbg !643, !tbaa !399
  %56 = getelementptr inbounds i8, i8* %24, i64 10, !dbg !645
  %57 = bitcast i8* %56 to i16*, !dbg !645
  store i16 0, i16* %57, align 1, !dbg !645, !tbaa !646
  %58 = icmp eq %struct.netif* %6, null, !dbg !647
  br i1 %58, label %64, label %59, !dbg !647

; <label>:59:                                     ; preds = %29
  %60 = getelementptr inbounds %struct.netif, %struct.netif* %6, i64 0, i32 16, !dbg !647
  %61 = load i16, i16* %60, align 8, !dbg !647, !tbaa !375
  %62 = and i16 %61, 1, !dbg !647
  %63 = icmp eq i16 %62, 0, !dbg !647
  br i1 %63, label %80, label %64, !dbg !649

; <label>:64:                                     ; preds = %59, %29
  %65 = tail call zeroext i16 @inet_chksum(i8* nonnull %24, i16 zeroext 20) #7, !dbg !650
  store i16 %65, i16* %57, align 1, !dbg !650, !tbaa !646
  br label %80, !dbg !652

; <label>:66:                                     ; preds = %14
  %67 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 3, !dbg !653
  %68 = load i16, i16* %67, align 2, !dbg !653, !tbaa !359
  %69 = icmp ult i16 %68, 20, !dbg !656
  br i1 %69, label %70, label %73, !dbg !657

; <label>:70:                                     ; preds = %66
  %71 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 3, i32 10), align 2, !dbg !658, !tbaa !339
  %72 = add i16 %71, 1, !dbg !658
  store i16 %72, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 3, i32 10), align 2, !dbg !658, !tbaa !339
  br label %87, !dbg !660

; <label>:73:                                     ; preds = %66
  %74 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 1, !dbg !661
  %75 = bitcast i8** %74 to %struct.ip_hdr**, !dbg !661
  %76 = load %struct.ip_hdr*, %struct.ip_hdr** %75, align 8, !dbg !661, !tbaa !326
  %77 = getelementptr inbounds %struct.ip_hdr, %struct.ip_hdr* %76, i64 0, i32 9, i32 0, !dbg !662
  %78 = load i32, i32* %77, align 1, !dbg !662, !tbaa !390
  %79 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %8, i64 0, i32 0, !dbg !662
  store i32 %78, i32* %79, align 4, !dbg !662, !tbaa !260
  br label %80

; <label>:80:                                     ; preds = %59, %64, %73
  %81 = phi %struct.ip4_addr* [ %8, %73 ], [ %2, %64 ], [ %2, %59 ]
  %82 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 3, i32 0), align 2, !dbg !663, !tbaa !664
  %83 = add i16 %82, 1, !dbg !663
  store i16 %83, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 3, i32 0), align 2, !dbg !663, !tbaa !664
  %84 = getelementptr inbounds %struct.netif, %struct.netif* %6, i64 0, i32 9, !dbg !665
  %85 = load i8 (%struct.netif*, %struct.pbuf*, %struct.ip4_addr*)*, i8 (%struct.netif*, %struct.pbuf*, %struct.ip4_addr*)** %84, align 8, !dbg !665, !tbaa !666
  %86 = call signext i8 %85(%struct.netif* %6, %struct.pbuf* nonnull %0, %struct.ip4_addr* nonnull %81) #7, !dbg !667
  br label %87, !dbg !668

; <label>:87:                                     ; preds = %19, %80, %70
  %88 = phi i8 [ %86, %80 ], [ -2, %70 ], [ -2, %19 ], !dbg !669
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #6, !dbg !670
  ret i8 %88, !dbg !670
}

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8*, ...) unnamed_addr #4 !dbg !106 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !672
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #6, !dbg !672
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !674
  call void @llvm.va_start(i8* nonnull %3), !dbg !674
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @uk_pr_crit.__str.4, i64 0, i64 0), i32 198, i8* %0, %struct.__va_list_tag* nonnull %4) #7, !dbg !675
  call void @llvm.va_end(i8* nonnull %3), !dbg !678
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #6, !dbg !679
  ret void, !dbg !679
}

; Function Attrs: noredzone noreturn
declare dso_local void @ukplat_terminate(i32) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local zeroext i8 @pbuf_add_header(%struct.pbuf*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local signext i8 @ip4_output(%struct.pbuf*, %struct.ip4_addr* readonly, %struct.ip4_addr*, i8 zeroext, i8 zeroext, i8 zeroext) local_unnamed_addr #0 !dbg !680 {
  %7 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 6, !dbg !697
  %8 = load i8, i8* %7, align 2, !dbg !697, !tbaa !595
  %9 = icmp eq i8 %8, 1, !dbg !697
  br i1 %9, label %11, label %10, !dbg !700

; <label>:10:                                     ; preds = %6
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0)) #8, !dbg !701
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !704
  tail call void @ukplat_terminate(i32 3) #9, !dbg !704
  unreachable, !dbg !704

; <label>:11:                                     ; preds = %6
  %12 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %2, i64 0, i32 0, !dbg !711
  %13 = load i32, i32* %12, align 4, !dbg !711, !tbaa !260
  %14 = and i32 %13, 240, !dbg !711
  %15 = icmp eq i32 %14, 224, !dbg !711
  %16 = load %struct.netif*, %struct.netif** @ip4_default_multicast_netif, align 8, !dbg !712
  %17 = icmp ne %struct.netif* %16, null, !dbg !712
  %18 = and i1 %15, %17, !dbg !713
  br i1 %18, label %71, label %19, !dbg !713

; <label>:19:                                     ; preds = %11
  %20 = load %struct.netif*, %struct.netif** @netif_list, align 8, !dbg !714, !tbaa !246
  %21 = icmp eq %struct.netif* %20, null, !dbg !716
  br i1 %21, label %50, label %22, !dbg !714

; <label>:22:                                     ; preds = %19, %46
  %23 = phi %struct.netif* [ %48, %46 ], [ %20, %19 ]
  %24 = getelementptr inbounds %struct.netif, %struct.netif* %23, i64 0, i32 21, !dbg !717
  %25 = load i8, i8* %24, align 1, !dbg !717, !tbaa !273
  %26 = zext i8 %25 to i32, !dbg !717
  %27 = and i32 %26, 5, !dbg !718
  %28 = icmp eq i32 %27, 5, !dbg !718
  br i1 %28, label %29, label %46, !dbg !718

; <label>:29:                                     ; preds = %22
  %30 = getelementptr inbounds %struct.netif, %struct.netif* %23, i64 0, i32 1, i32 0, i32 0, i32 0, i64 0, !dbg !719
  %31 = load i32, i32* %30, align 8, !dbg !719, !tbaa !279
  %32 = icmp eq i32 %31, 0, !dbg !719
  br i1 %32, label %46, label %33, !dbg !720

; <label>:33:                                     ; preds = %29
  %34 = getelementptr inbounds %struct.netif, %struct.netif* %23, i64 0, i32 2, i32 0, i32 0, i32 0, i64 0, !dbg !721
  %35 = load i32, i32* %34, align 8, !dbg !721, !tbaa !279
  %36 = xor i32 %31, %13, !dbg !721
  %37 = and i32 %35, %36, !dbg !721
  %38 = icmp eq i32 %37, 0, !dbg !721
  br i1 %38, label %68, label %39, !dbg !722

; <label>:39:                                     ; preds = %33
  %40 = and i32 %26, 2, !dbg !723
  %41 = icmp eq i32 %40, 0, !dbg !724
  br i1 %41, label %42, label %46, !dbg !725

; <label>:42:                                     ; preds = %39
  %43 = getelementptr inbounds %struct.netif, %struct.netif* %23, i64 0, i32 3, i32 0, i32 0, i32 0, i64 0, !dbg !726
  %44 = load i32, i32* %43, align 8, !dbg !726, !tbaa !279
  %45 = icmp eq i32 %13, %44, !dbg !726
  br i1 %45, label %68, label %46, !dbg !727

; <label>:46:                                     ; preds = %42, %39, %29, %22
  %47 = getelementptr inbounds %struct.netif, %struct.netif* %23, i64 0, i32 0, !dbg !716
  %48 = load %struct.netif*, %struct.netif** %47, align 8, !dbg !714, !tbaa !246
  %49 = icmp eq %struct.netif* %48, null, !dbg !716
  br i1 %49, label %50, label %22, !dbg !714, !llvm.loop !291

; <label>:50:                                     ; preds = %46, %19
  %51 = load %struct.netif*, %struct.netif** @netif_default, align 8, !dbg !728, !tbaa !246
  %52 = icmp eq %struct.netif* %51, null, !dbg !729
  br i1 %52, label %65, label %53, !dbg !730

; <label>:53:                                     ; preds = %50
  %54 = getelementptr inbounds %struct.netif, %struct.netif* %51, i64 0, i32 21, !dbg !731
  %55 = load i8, i8* %54, align 1, !dbg !731, !tbaa !273
  %56 = and i8 %55, 5, !dbg !732
  %57 = icmp eq i8 %56, 5, !dbg !732
  br i1 %57, label %58, label %65, !dbg !732

; <label>:58:                                     ; preds = %53
  %59 = getelementptr inbounds %struct.netif, %struct.netif* %51, i64 0, i32 1, i32 0, i32 0, i32 0, i64 0, !dbg !733
  %60 = load i32, i32* %59, align 8, !dbg !733, !tbaa !279
  %61 = icmp eq i32 %60, 0, !dbg !733
  %62 = and i32 %13, 255, !dbg !734
  %63 = icmp eq i32 %62, 127, !dbg !734
  %64 = or i1 %63, %61, !dbg !735
  br i1 %64, label %65, label %68, !dbg !735

; <label>:65:                                     ; preds = %58, %53, %50
  %66 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 3, i32 7), align 2, !dbg !736, !tbaa !304
  %67 = add i16 %66, 2, !dbg !738
  store i16 %67, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 3, i32 7), align 2, !dbg !738, !tbaa !304
  br label %85, !dbg !740

; <label>:68:                                     ; preds = %33, %42, %58
  %69 = phi %struct.netif* [ %51, %58 ], [ %23, %42 ], [ %23, %33 ]
  %70 = icmp eq %struct.ip4_addr* %2, null, !dbg !750
  br i1 %70, label %81, label %71, !dbg !751

; <label>:71:                                     ; preds = %11, %68
  %72 = phi %struct.netif* [ %69, %68 ], [ %16, %11 ]
  %73 = icmp eq %struct.ip4_addr* %1, null, !dbg !752
  br i1 %73, label %78, label %74, !dbg !752

; <label>:74:                                     ; preds = %71
  %75 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %1, i64 0, i32 0, !dbg !752
  %76 = load i32, i32* %75, align 4, !dbg !752, !tbaa !260
  %77 = icmp eq i32 %76, 0, !dbg !752
  br i1 %77, label %78, label %81, !dbg !753

; <label>:78:                                     ; preds = %74, %71
  %79 = getelementptr inbounds %struct.netif, %struct.netif* %72, i64 0, i32 1, i32 0, !dbg !754
  %80 = bitcast %union.anon* %79 to %struct.ip4_addr*, !dbg !754
  br label %81, !dbg !755

; <label>:81:                                     ; preds = %68, %74, %78
  %82 = phi %struct.netif* [ %72, %78 ], [ %72, %74 ], [ %69, %68 ]
  %83 = phi %struct.ip4_addr* [ %80, %78 ], [ %1, %74 ], [ %1, %68 ], !dbg !756
  %84 = tail call signext i8 @ip4_output_if_src(%struct.pbuf* %0, %struct.ip4_addr* %83, %struct.ip4_addr* %2, i8 zeroext %3, i8 zeroext %4, i8 zeroext %5, %struct.netif* nonnull %82) #7, !dbg !757
  br label %85, !dbg !758

; <label>:85:                                     ; preds = %81, %65
  %86 = phi i8 [ -4, %65 ], [ %84, %81 ], !dbg !759
  ret i8 %86, !dbg !760
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
!278 = !DILocation(line: 172, column: 59, scope: !271)
!279 = !{!248, !248, i64 0}
!280 = !DILocation(line: 172, column: 9, scope: !272)
!281 = !DILocation(line: 174, column: 11, scope: !282)
!282 = distinct !DILexicalBlock(scope: !283, file: !3, line: 174, column: 11)
!283 = distinct !DILexicalBlock(scope: !271, file: !3, line: 172, column: 103)
!284 = !DILocation(line: 174, column: 11, scope: !283)
!285 = !DILocation(line: 179, column: 26, scope: !286)
!286 = distinct !DILexicalBlock(scope: !283, file: !3, line: 179, column: 11)
!287 = !DILocation(line: 179, column: 50, scope: !286)
!288 = !DILocation(line: 179, column: 56, scope: !286)
!289 = !DILocation(line: 179, column: 59, scope: !286)
!290 = !DILocation(line: 179, column: 11, scope: !283)
!291 = distinct !{!291, !265, !292}
!292 = !DILocation(line: 184, column: 3, scope: !266)
!293 = !DILocation(line: 216, column: 8, scope: !294)
!294 = distinct !DILexicalBlock(scope: !251, file: !3, line: 216, column: 7)
!295 = !DILocation(line: 216, column: 22, scope: !294)
!296 = !DILocation(line: 216, column: 31, scope: !294)
!297 = !DILocation(line: 216, column: 35, scope: !294)
!298 = !DILocation(line: 216, column: 62, scope: !294)
!299 = !DILocation(line: 217, column: 7, scope: !294)
!300 = !DILocation(line: 217, column: 61, scope: !294)
!301 = !DILocation(line: 217, column: 58, scope: !294)
!302 = !DILocation(line: 222, column: 5, scope: !303)
!303 = distinct !DILexicalBlock(scope: !294, file: !3, line: 217, column: 88)
!304 = !{!305, !276, i64 86}
!305 = !{!"stats_", !306, i64 0, !306, i64 24, !306, i64 48, !306, i64 72, !306, i64 96, !306, i64 120, !306, i64 144, !307, i64 168, !306, i64 186, !306, i64 210, !306, i64 234, !309, i64 258, !306, i64 286}
!306 = !{!"stats_proto", !276, i64 0, !276, i64 2, !276, i64 4, !276, i64 6, !276, i64 8, !276, i64 10, !276, i64 12, !276, i64 14, !276, i64 16, !276, i64 18, !276, i64 20, !276, i64 22}
!307 = !{!"stats_sys", !308, i64 0, !308, i64 6, !308, i64 12}
!308 = !{!"stats_syselem", !276, i64 0, !276, i64 2, !276, i64 4}
!309 = !{!"stats_igmp", !276, i64 0, !276, i64 2, !276, i64 4, !276, i64 6, !276, i64 8, !276, i64 10, !276, i64 12, !276, i64 14, !276, i64 16, !276, i64 18, !276, i64 20, !276, i64 22, !276, i64 24, !276, i64 26}
!310 = !DILocation(line: 224, column: 5, scope: !303)
!311 = !DILocation(line: 0, scope: !251)
!312 = !DILocation(line: 228, column: 1, scope: !251)
!313 = distinct !DISubprogram(name: "ip4_input", scope: !3, file: !3, line: 426, type: !173, isLocal: false, isDefinition: true, scopeLine: 427, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !314)
!314 = !{!315, !316, !317, !318, !319, !320}
!315 = !DILocalVariable(name: "p", arg: 1, scope: !313, file: !3, line: 426, type: !180)
!316 = !DILocalVariable(name: "inp", arg: 2, scope: !313, file: !3, line: 426, type: !136)
!317 = !DILocalVariable(name: "iphdr", scope: !313, file: !3, line: 428, type: !95)
!318 = !DILocalVariable(name: "netif", scope: !313, file: !3, line: 429, type: !136)
!319 = !DILocalVariable(name: "iphdr_hlen", scope: !313, file: !3, line: 430, type: !80)
!320 = !DILocalVariable(name: "iphdr_len", scope: !313, file: !3, line: 431, type: !80)
!321 = !DILocation(line: 426, column: 24, scope: !313)
!322 = !DILocation(line: 426, column: 41, scope: !313)
!323 = !DILocation(line: 441, column: 3, scope: !313)
!324 = !{!305, !276, i64 74}
!325 = !DILocation(line: 445, column: 31, scope: !313)
!326 = !{!327, !247, i64 8}
!327 = !{!"pbuf", !247, i64 0, !247, i64 8, !276, i64 16, !276, i64 18, !248, i64 20, !248, i64 21, !248, i64 22, !248, i64 23}
!328 = !DILocation(line: 428, column: 24, scope: !313)
!329 = !DILocation(line: 446, column: 7, scope: !330)
!330 = distinct !DILexicalBlock(scope: !313, file: !3, line: 446, column: 7)
!331 = !{!332, !248, i64 0}
!332 = !{!"ip_hdr", !248, i64 0, !248, i64 1, !276, i64 2, !276, i64 4, !276, i64 6, !248, i64 8, !248, i64 9, !276, i64 10, !333, i64 12, !333, i64 16}
!333 = !{!"ip4_addr_packed", !262, i64 0}
!334 = !DILocation(line: 446, column: 20, scope: !330)
!335 = !DILocation(line: 446, column: 7, scope: !313)
!336 = !DILocation(line: 449, column: 5, scope: !337)
!337 = distinct !DILexicalBlock(scope: !330, file: !3, line: 446, column: 26)
!338 = !DILocation(line: 450, column: 5, scope: !337)
!339 = !{!305, !276, i64 92}
!340 = !DILocation(line: 451, column: 5, scope: !337)
!341 = !{!305, !276, i64 78}
!342 = !DILocation(line: 453, column: 5, scope: !337)
!343 = !DILocation(line: 464, column: 16, scope: !313)
!344 = !DILocation(line: 430, column: 9, scope: !313)
!345 = !DILocation(line: 466, column: 15, scope: !313)
!346 = !{!332, !276, i64 2}
!347 = !DILocation(line: 431, column: 9, scope: !313)
!348 = !DILocation(line: 469, column: 22, scope: !349)
!349 = distinct !DILexicalBlock(scope: !313, file: !3, line: 469, column: 7)
!350 = !{!327, !276, i64 16}
!351 = !DILocation(line: 469, column: 17, scope: !349)
!352 = !DILocation(line: 469, column: 7, scope: !313)
!353 = !DILocation(line: 470, column: 5, scope: !354)
!354 = distinct !DILexicalBlock(scope: !349, file: !3, line: 469, column: 31)
!355 = !DILocation(line: 471, column: 3, scope: !354)
!356 = !DILocation(line: 474, column: 8, scope: !357)
!357 = distinct !DILexicalBlock(scope: !313, file: !3, line: 474, column: 7)
!358 = !DILocation(line: 474, column: 24, scope: !357)
!359 = !{!327, !276, i64 18}
!360 = !DILocation(line: 474, column: 21, scope: !357)
!361 = !DILocation(line: 474, column: 19, scope: !357)
!362 = !DILocation(line: 474, column: 29, scope: !357)
!363 = !DILocation(line: 474, column: 48, scope: !357)
!364 = !DILocation(line: 474, column: 43, scope: !357)
!365 = !DILocation(line: 474, column: 72, scope: !357)
!366 = !DILocation(line: 474, column: 57, scope: !357)
!367 = !DILocation(line: 490, column: 5, scope: !368)
!368 = distinct !DILexicalBlock(scope: !357, file: !3, line: 474, column: 84)
!369 = !DILocation(line: 491, column: 5, scope: !368)
!370 = !{!305, !276, i64 82}
!371 = !DILocation(line: 492, column: 5, scope: !368)
!372 = !DILocation(line: 494, column: 5, scope: !368)
!373 = !DILocation(line: 499, column: 3, scope: !374)
!374 = distinct !DILexicalBlock(scope: !313, file: !3, line: 499, column: 3)
!375 = !{!274, !276, i64 248}
!376 = !DILocation(line: 499, column: 3, scope: !313)
!377 = !DILocation(line: 500, column: 9, scope: !378)
!378 = distinct !DILexicalBlock(scope: !379, file: !3, line: 500, column: 9)
!379 = distinct !DILexicalBlock(scope: !374, file: !3, line: 499, column: 60)
!380 = !DILocation(line: 500, column: 40, scope: !378)
!381 = !DILocation(line: 500, column: 9, scope: !379)
!382 = !DILocation(line: 505, column: 7, scope: !383)
!383 = distinct !DILexicalBlock(scope: !378, file: !3, line: 500, column: 46)
!384 = !DILocation(line: 506, column: 7, scope: !383)
!385 = !{!305, !276, i64 80}
!386 = !DILocation(line: 507, column: 7, scope: !383)
!387 = !DILocation(line: 509, column: 7, scope: !383)
!388 = !DILocation(line: 515, column: 3, scope: !389)
!389 = distinct !DILexicalBlock(scope: !313, file: !3, line: 515, column: 3)
!390 = !{!332, !262, i64 16}
!391 = !DILocation(line: 515, column: 3, scope: !392)
!392 = distinct !DILexicalBlock(scope: !389, file: !3, line: 515, column: 3)
!393 = !{!394, !248, i64 80}
!394 = !{!"ip_globals", !247, i64 0, !247, i64 8, !247, i64 16, !247, i64 24, !276, i64 32, !275, i64 36, !275, i64 60}
!395 = !DILocation(line: 515, column: 3, scope: !396)
!396 = distinct !DILexicalBlock(scope: !389, file: !3, line: 515, column: 3)
!397 = !DILocation(line: 516, column: 3, scope: !398)
!398 = distinct !DILexicalBlock(scope: !313, file: !3, line: 516, column: 3)
!399 = !{!332, !262, i64 12}
!400 = !DILocation(line: 516, column: 3, scope: !401)
!401 = distinct !DILexicalBlock(scope: !398, file: !3, line: 516, column: 3)
!402 = !{!394, !248, i64 56}
!403 = !DILocation(line: 516, column: 3, scope: !404)
!404 = distinct !DILexicalBlock(scope: !398, file: !3, line: 516, column: 3)
!405 = !DILocation(line: 519, column: 7, scope: !406)
!406 = distinct !DILexicalBlock(scope: !313, file: !3, line: 519, column: 7)
!407 = !DILocation(line: 0, scope: !408)
!408 = distinct !DILexicalBlock(scope: !409, file: !3, line: 543, column: 9)
!409 = distinct !DILexicalBlock(scope: !406, file: !3, line: 540, column: 10)
!410 = !DILocation(line: 519, column: 7, scope: !313)
!411 = !DILocation(line: 534, column: 28, scope: !412)
!412 = distinct !DILexicalBlock(scope: !413, file: !3, line: 534, column: 9)
!413 = distinct !DILexicalBlock(scope: !406, file: !3, line: 519, column: 54)
!414 = !DILocation(line: 534, column: 33, scope: !412)
!415 = !DILocation(line: 534, column: 9, scope: !413)
!416 = !DILocation(line: 429, column: 17, scope: !313)
!417 = !DILocalVariable(name: "netif", arg: 1, scope: !418, file: !3, line: 374, type: !136)
!418 = distinct !DISubprogram(name: "ip4_input_accept", scope: !3, file: !3, line: 374, type: !419, isLocal: true, isDefinition: true, scopeLine: 375, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !421)
!419 = !DISubroutineType(types: !420)
!420 = !{!13, !136}
!421 = !{!417}
!422 = !DILocation(line: 374, column: 32, scope: !418, inlinedAt: !423)
!423 = distinct !DILocation(line: 543, column: 9, scope: !408)
!424 = !DILocation(line: 383, column: 28, scope: !425, inlinedAt: !423)
!425 = distinct !DILexicalBlock(scope: !418, file: !3, line: 383, column: 7)
!426 = !DILocation(line: 383, column: 33, scope: !425, inlinedAt: !423)
!427 = !DILocation(line: 383, column: 7, scope: !418, inlinedAt: !423)
!428 = !DILocation(line: 385, column: 9, scope: !429, inlinedAt: !423)
!429 = distinct !DILexicalBlock(scope: !430, file: !3, line: 385, column: 9)
!430 = distinct !DILexicalBlock(scope: !425, file: !3, line: 383, column: 78)
!431 = !DILocation(line: 385, column: 70, scope: !429, inlinedAt: !423)
!432 = !DILocation(line: 387, column: 9, scope: !429, inlinedAt: !423)
!433 = !DILocation(line: 385, column: 9, scope: !430, inlinedAt: !423)
!434 = !DILocation(line: 551, column: 12, scope: !435)
!435 = distinct !DILexicalBlock(scope: !436, file: !3, line: 551, column: 11)
!436 = distinct !DILexicalBlock(scope: !408, file: !3, line: 545, column: 12)
!437 = !DILocation(line: 551, column: 11, scope: !436)
!438 = !DILocation(line: 555, column: 9, scope: !439)
!439 = distinct !DILexicalBlock(scope: !440, file: !3, line: 555, column: 9)
!440 = distinct !DILexicalBlock(scope: !435, file: !3, line: 553, column: 7)
!441 = !DILocation(line: 555, column: 9, scope: !442)
!442 = distinct !DILexicalBlock(scope: !439, file: !3, line: 555, column: 9)
!443 = !DILocation(line: 556, column: 21, scope: !444)
!444 = distinct !DILexicalBlock(scope: !445, file: !3, line: 556, column: 15)
!445 = distinct !DILexicalBlock(scope: !442, file: !3, line: 555, column: 30)
!446 = !DILocation(line: 556, column: 15, scope: !445)
!447 = !DILocation(line: 374, column: 32, scope: !418, inlinedAt: !448)
!448 = distinct !DILocation(line: 560, column: 15, scope: !449)
!449 = distinct !DILexicalBlock(scope: !445, file: !3, line: 560, column: 15)
!450 = !DILocation(line: 383, column: 8, scope: !425, inlinedAt: !448)
!451 = !DILocation(line: 383, column: 28, scope: !425, inlinedAt: !448)
!452 = !DILocation(line: 383, column: 33, scope: !425, inlinedAt: !448)
!453 = !DILocation(line: 383, column: 7, scope: !418, inlinedAt: !448)
!454 = !DILocation(line: 385, column: 9, scope: !429, inlinedAt: !448)
!455 = !DILocation(line: 385, column: 70, scope: !429, inlinedAt: !448)
!456 = !DILocation(line: 387, column: 9, scope: !429, inlinedAt: !448)
!457 = !DILocation(line: 385, column: 9, scope: !430, inlinedAt: !448)
!458 = distinct !{!458, !438, !459}
!459 = !DILocation(line: 563, column: 9, scope: !439)
!460 = !DILocation(line: 0, scope: !439)
!461 = !DILocation(line: 604, column: 10, scope: !462)
!462 = distinct !DILexicalBlock(scope: !463, file: !3, line: 604, column: 9)
!463 = distinct !DILexicalBlock(scope: !313, file: !3, line: 603, column: 3)
!464 = !DILocation(line: 604, column: 9, scope: !462)
!465 = !DILocation(line: 604, column: 61, scope: !462)
!466 = !DILocation(line: 605, column: 10, scope: !462)
!467 = !DILocation(line: 604, column: 9, scope: !463)
!468 = !DILocation(line: 609, column: 7, scope: !469)
!469 = distinct !DILexicalBlock(scope: !462, file: !3, line: 605, column: 57)
!470 = !DILocation(line: 610, column: 7, scope: !469)
!471 = !DILocation(line: 613, column: 7, scope: !469)
!472 = !DILocation(line: 618, column: 13, scope: !473)
!473 = distinct !DILexicalBlock(scope: !313, file: !3, line: 618, column: 7)
!474 = !DILocation(line: 618, column: 7, scope: !313)
!475 = !DILocation(line: 629, column: 7, scope: !476)
!476 = distinct !DILexicalBlock(scope: !477, file: !3, line: 628, column: 5)
!477 = distinct !DILexicalBlock(scope: !473, file: !3, line: 618, column: 22)
!478 = !DILocation(line: 633, column: 5, scope: !477)
!479 = !DILocation(line: 634, column: 5, scope: !477)
!480 = !DILocation(line: 637, column: 8, scope: !481)
!481 = distinct !DILexicalBlock(scope: !313, file: !3, line: 637, column: 7)
!482 = !{!332, !276, i64 6}
!483 = !DILocation(line: 637, column: 26, scope: !481)
!484 = !DILocation(line: 637, column: 58, scope: !481)
!485 = !DILocation(line: 637, column: 7, scope: !313)
!486 = !DILocation(line: 642, column: 9, scope: !487)
!487 = distinct !DILexicalBlock(scope: !481, file: !3, line: 637, column: 64)
!488 = !DILocation(line: 644, column: 11, scope: !489)
!489 = distinct !DILexicalBlock(scope: !487, file: !3, line: 644, column: 9)
!490 = !DILocation(line: 644, column: 9, scope: !487)
!491 = !DILocation(line: 647, column: 39, scope: !487)
!492 = !DILocation(line: 658, column: 3, scope: !487)
!493 = !DILocation(line: 683, column: 25, scope: !313)
!494 = !{!394, !247, i64 0}
!495 = !DILocation(line: 684, column: 31, scope: !313)
!496 = !{!394, !247, i64 8}
!497 = !DILocation(line: 685, column: 30, scope: !313)
!498 = !{!394, !247, i64 16}
!499 = !DILocation(line: 686, column: 39, scope: !313)
!500 = !DILocation(line: 686, column: 37, scope: !313)
!501 = !{!394, !276, i64 32}
!502 = !DILocation(line: 694, column: 27, scope: !503)
!503 = distinct !DILexicalBlock(scope: !313, file: !3, line: 693, column: 3)
!504 = !DILocation(line: 694, column: 5, scope: !503)
!505 = !DILocation(line: 696, column: 13, scope: !503)
!506 = !{!332, !248, i64 9}
!507 = !DILocation(line: 696, column: 5, scope: !503)
!508 = !DILocation(line: 703, column: 9, scope: !509)
!509 = distinct !DILexicalBlock(scope: !503, file: !3, line: 696, column: 31)
!510 = !DILocation(line: 704, column: 9, scope: !509)
!511 = !DILocation(line: 709, column: 9, scope: !509)
!512 = !DILocation(line: 710, column: 9, scope: !509)
!513 = !DILocation(line: 715, column: 9, scope: !509)
!514 = !DILocation(line: 716, column: 9, scope: !509)
!515 = !DILocation(line: 732, column: 16, scope: !516)
!516 = distinct !DILexicalBlock(scope: !517, file: !3, line: 732, column: 15)
!517 = distinct !DILexicalBlock(scope: !509, file: !3, line: 729, column: 9)
!518 = !DILocation(line: 732, column: 69, scope: !516)
!519 = !DILocation(line: 733, column: 16, scope: !516)
!520 = !DILocation(line: 732, column: 15, scope: !517)
!521 = !DILocation(line: 734, column: 13, scope: !522)
!522 = distinct !DILexicalBlock(scope: !516, file: !3, line: 733, column: 63)
!523 = !DILocation(line: 735, column: 13, scope: !522)
!524 = !DILocation(line: 736, column: 11, scope: !522)
!525 = !DILocation(line: 741, column: 11, scope: !517)
!526 = !{!305, !276, i64 88}
!527 = !DILocation(line: 742, column: 11, scope: !517)
!528 = !DILocation(line: 745, column: 9, scope: !509)
!529 = !DILocation(line: 746, column: 9, scope: !509)
!530 = !DILocation(line: 751, column: 25, scope: !313)
!531 = !DILocation(line: 753, column: 30, scope: !313)
!532 = !DILocation(line: 754, column: 37, scope: !313)
!533 = !DILocation(line: 755, column: 3, scope: !313)
!534 = !DILocation(line: 756, column: 3, scope: !313)
!535 = !DILocation(line: 758, column: 3, scope: !313)
!536 = !DILocation(line: 759, column: 1, scope: !313)
!537 = distinct !DISubprogram(name: "ip4_output_if", scope: !3, file: !3, line: 787, type: !538, isLocal: false, isDefinition: true, scopeLine: 790, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !540)
!538 = !DISubroutineType(types: !539)
!539 = !{!175, !180, !66, !66, !62, !62, !62, !136}
!540 = !{!541, !542, !543, !544, !545, !546, !547, !548}
!541 = !DILocalVariable(name: "p", arg: 1, scope: !537, file: !3, line: 787, type: !180)
!542 = !DILocalVariable(name: "src", arg: 2, scope: !537, file: !3, line: 787, type: !66)
!543 = !DILocalVariable(name: "dest", arg: 3, scope: !537, file: !3, line: 787, type: !66)
!544 = !DILocalVariable(name: "ttl", arg: 4, scope: !537, file: !3, line: 788, type: !62)
!545 = !DILocalVariable(name: "tos", arg: 5, scope: !537, file: !3, line: 788, type: !62)
!546 = !DILocalVariable(name: "proto", arg: 6, scope: !537, file: !3, line: 789, type: !62)
!547 = !DILocalVariable(name: "netif", arg: 7, scope: !537, file: !3, line: 789, type: !136)
!548 = !DILocalVariable(name: "src_used", scope: !537, file: !3, line: 807, type: !66)
!549 = !DILocation(line: 787, column: 28, scope: !537)
!550 = !DILocation(line: 787, column: 49, scope: !537)
!551 = !DILocation(line: 787, column: 72, scope: !537)
!552 = !DILocation(line: 788, column: 20, scope: !537)
!553 = !DILocation(line: 788, column: 30, scope: !537)
!554 = !DILocation(line: 789, column: 20, scope: !537)
!555 = !DILocation(line: 789, column: 41, scope: !537)
!556 = !DILocation(line: 807, column: 21, scope: !537)
!557 = !DILocation(line: 808, column: 12, scope: !558)
!558 = distinct !DILexicalBlock(scope: !537, file: !3, line: 808, column: 7)
!559 = !DILocation(line: 808, column: 7, scope: !537)
!560 = !DILocation(line: 809, column: 9, scope: !561)
!561 = distinct !DILexicalBlock(scope: !562, file: !3, line: 809, column: 9)
!562 = distinct !DILexicalBlock(scope: !558, file: !3, line: 808, column: 32)
!563 = !DILocation(line: 809, column: 9, scope: !562)
!564 = !DILocation(line: 810, column: 18, scope: !565)
!565 = distinct !DILexicalBlock(scope: !561, file: !3, line: 809, column: 30)
!566 = !DILocation(line: 811, column: 5, scope: !565)
!567 = !DILocation(line: 0, scope: !537)
!568 = !DILocation(line: 818, column: 10, scope: !537)
!569 = !DILocation(line: 818, column: 3, scope: !537)
!570 = distinct !DISubprogram(name: "ip4_output_if_src", scope: !3, file: !3, line: 827, type: !538, isLocal: false, isDefinition: true, scopeLine: 830, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !571)
!571 = !{!572, !573, !574, !575, !576, !577, !578, !579, !580, !581}
!572 = !DILocalVariable(name: "p", arg: 1, scope: !570, file: !3, line: 827, type: !180)
!573 = !DILocalVariable(name: "src", arg: 2, scope: !570, file: !3, line: 827, type: !66)
!574 = !DILocalVariable(name: "dest", arg: 3, scope: !570, file: !3, line: 827, type: !66)
!575 = !DILocalVariable(name: "ttl", arg: 4, scope: !570, file: !3, line: 828, type: !62)
!576 = !DILocalVariable(name: "tos", arg: 5, scope: !570, file: !3, line: 828, type: !62)
!577 = !DILocalVariable(name: "proto", arg: 6, scope: !570, file: !3, line: 829, type: !62)
!578 = !DILocalVariable(name: "netif", arg: 7, scope: !570, file: !3, line: 829, type: !136)
!579 = !DILocalVariable(name: "iphdr", scope: !570, file: !3, line: 845, type: !73)
!580 = !DILocalVariable(name: "dest_addr", scope: !570, file: !3, line: 846, type: !68)
!581 = !DILocalVariable(name: "ip_hlen", scope: !582, file: !3, line: 858, type: !80)
!582 = distinct !DILexicalBlock(scope: !583, file: !3, line: 857, column: 32)
!583 = distinct !DILexicalBlock(scope: !570, file: !3, line: 857, column: 7)
!584 = !DILocation(line: 827, column: 32, scope: !570)
!585 = !DILocation(line: 827, column: 53, scope: !570)
!586 = !DILocation(line: 827, column: 76, scope: !570)
!587 = !DILocation(line: 828, column: 24, scope: !570)
!588 = !DILocation(line: 828, column: 34, scope: !570)
!589 = !DILocation(line: 829, column: 24, scope: !570)
!590 = !DILocation(line: 829, column: 45, scope: !570)
!591 = !DILocation(line: 846, column: 3, scope: !570)
!592 = !DILocation(line: 852, column: 3, scope: !593)
!593 = distinct !DILexicalBlock(scope: !594, file: !3, line: 852, column: 3)
!594 = distinct !DILexicalBlock(scope: !570, file: !3, line: 852, column: 3)
!595 = !{!327, !248, i64 22}
!596 = !DILocation(line: 852, column: 3, scope: !594)
!597 = !DILocation(line: 852, column: 3, scope: !598)
!598 = distinct !DILexicalBlock(scope: !599, file: !3, line: 852, column: 3)
!599 = distinct !DILexicalBlock(scope: !593, file: !3, line: 852, column: 3)
!600 = !DILocation(line: 852, column: 3, scope: !601)
!601 = distinct !DILexicalBlock(scope: !602, file: !3, line: 852, column: 3)
!602 = distinct !DILexicalBlock(scope: !603, file: !3, line: 852, column: 3)
!603 = distinct !DILexicalBlock(scope: !598, file: !3, line: 852, column: 3)
!604 = !DILocation(line: 857, column: 12, scope: !583)
!605 = !DILocation(line: 857, column: 7, scope: !570)
!606 = !DILocation(line: 858, column: 11, scope: !582)
!607 = !DILocation(line: 895, column: 9, scope: !608)
!608 = distinct !DILexicalBlock(scope: !582, file: !3, line: 895, column: 9)
!609 = !DILocation(line: 895, column: 9, scope: !582)
!610 = !DILocation(line: 898, column: 7, scope: !611)
!611 = distinct !DILexicalBlock(scope: !608, file: !3, line: 895, column: 38)
!612 = !DILocation(line: 903, column: 33, scope: !582)
!613 = !DILocation(line: 845, column: 18, scope: !570)
!614 = !DILocation(line: 904, column: 5, scope: !615)
!615 = distinct !DILexicalBlock(scope: !616, file: !3, line: 904, column: 5)
!616 = distinct !DILexicalBlock(scope: !582, file: !3, line: 904, column: 5)
!617 = !DILocation(line: 904, column: 5, scope: !616)
!618 = !DILocation(line: 904, column: 5, scope: !619)
!619 = distinct !DILexicalBlock(scope: !620, file: !3, line: 904, column: 5)
!620 = distinct !DILexicalBlock(scope: !615, file: !3, line: 904, column: 5)
!621 = !DILocation(line: 904, column: 5, scope: !622)
!622 = distinct !DILexicalBlock(scope: !623, file: !3, line: 904, column: 5)
!623 = distinct !DILexicalBlock(scope: !624, file: !3, line: 904, column: 5)
!624 = distinct !DILexicalBlock(scope: !619, file: !3, line: 904, column: 5)
!625 = !DILocation(line: 907, column: 5, scope: !582)
!626 = !{!332, !248, i64 8}
!627 = !DILocation(line: 908, column: 5, scope: !582)
!628 = !DILocation(line: 914, column: 5, scope: !582)
!629 = !DILocation(line: 920, column: 5, scope: !582)
!630 = !DILocation(line: 921, column: 5, scope: !582)
!631 = !{!332, !248, i64 1}
!632 = !DILocation(line: 925, column: 5, scope: !582)
!633 = !DILocation(line: 929, column: 5, scope: !582)
!634 = !DILocation(line: 930, column: 5, scope: !582)
!635 = !{!276, !276, i64 0}
!636 = !{!332, !276, i64 4}
!637 = !DILocation(line: 934, column: 5, scope: !582)
!638 = !DILocation(line: 936, column: 13, scope: !639)
!639 = distinct !DILexicalBlock(scope: !582, file: !3, line: 936, column: 9)
!640 = !DILocation(line: 940, column: 7, scope: !641)
!641 = distinct !DILexicalBlock(scope: !639, file: !3, line: 938, column: 12)
!642 = !DILocation(line: 936, column: 9, scope: !582)
!643 = !DILocation(line: 0, scope: !644)
!644 = distinct !DILexicalBlock(scope: !639, file: !3, line: 936, column: 22)
!645 = !DILocation(line: 958, column: 5, scope: !582)
!646 = !{!332, !276, i64 10}
!647 = !DILocation(line: 960, column: 5, scope: !648)
!648 = distinct !DILexicalBlock(scope: !582, file: !3, line: 960, column: 5)
!649 = !DILocation(line: 960, column: 5, scope: !582)
!650 = !DILocation(line: 961, column: 7, scope: !651)
!651 = distinct !DILexicalBlock(scope: !648, file: !3, line: 960, column: 62)
!652 = !DILocation(line: 962, column: 5, scope: !651)
!653 = !DILocation(line: 967, column: 12, scope: !654)
!654 = distinct !DILexicalBlock(scope: !655, file: !3, line: 967, column: 9)
!655 = distinct !DILexicalBlock(scope: !583, file: !3, line: 965, column: 10)
!656 = !DILocation(line: 967, column: 16, scope: !654)
!657 = !DILocation(line: 967, column: 9, scope: !655)
!658 = !DILocation(line: 969, column: 7, scope: !659)
!659 = distinct !DILexicalBlock(scope: !654, file: !3, line: 967, column: 27)
!660 = !DILocation(line: 971, column: 7, scope: !659)
!661 = !DILocation(line: 973, column: 33, scope: !655)
!662 = !DILocation(line: 974, column: 5, scope: !655)
!663 = !DILocation(line: 978, column: 3, scope: !570)
!664 = !{!305, !276, i64 72}
!665 = !DILocation(line: 1007, column: 17, scope: !570)
!666 = !{!274, !247, i64 192}
!667 = !DILocation(line: 1007, column: 10, scope: !570)
!668 = !DILocation(line: 1007, column: 3, scope: !570)
!669 = !DILocation(line: 0, scope: !659)
!670 = !DILocation(line: 1008, column: 1, scope: !570)
!671 = !DILocation(line: 194, column: 43, scope: !106)
!672 = !DILocation(line: 196, column: 2, scope: !106)
!673 = !DILocation(line: 196, column: 10, scope: !106)
!674 = !DILocation(line: 197, column: 2, scope: !106)
!675 = !DILocation(line: 198, column: 2, scope: !676)
!676 = distinct !DILexicalBlock(scope: !677, file: !107, line: 198, column: 2)
!677 = distinct !DILexicalBlock(scope: !106, file: !107, line: 198, column: 2)
!678 = !DILocation(line: 199, column: 2, scope: !106)
!679 = !DILocation(line: 200, column: 1, scope: !106)
!680 = distinct !DISubprogram(name: "ip4_output", scope: !3, file: !3, line: 1028, type: !681, isLocal: false, isDefinition: true, scopeLine: 1030, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !683)
!681 = !DISubroutineType(types: !682)
!682 = !{!175, !180, !66, !66, !62, !62, !62}
!683 = !{!684, !685, !686, !687, !688, !689, !690}
!684 = !DILocalVariable(name: "p", arg: 1, scope: !680, file: !3, line: 1028, type: !180)
!685 = !DILocalVariable(name: "src", arg: 2, scope: !680, file: !3, line: 1028, type: !66)
!686 = !DILocalVariable(name: "dest", arg: 3, scope: !680, file: !3, line: 1028, type: !66)
!687 = !DILocalVariable(name: "ttl", arg: 4, scope: !680, file: !3, line: 1029, type: !62)
!688 = !DILocalVariable(name: "tos", arg: 5, scope: !680, file: !3, line: 1029, type: !62)
!689 = !DILocalVariable(name: "proto", arg: 6, scope: !680, file: !3, line: 1029, type: !62)
!690 = !DILocalVariable(name: "netif", scope: !680, file: !3, line: 1031, type: !136)
!691 = !DILocation(line: 1028, column: 25, scope: !680)
!692 = !DILocation(line: 1028, column: 46, scope: !680)
!693 = !DILocation(line: 1028, column: 69, scope: !680)
!694 = !DILocation(line: 1029, column: 17, scope: !680)
!695 = !DILocation(line: 1029, column: 27, scope: !680)
!696 = !DILocation(line: 1029, column: 37, scope: !680)
!697 = !DILocation(line: 1033, column: 3, scope: !698)
!698 = distinct !DILexicalBlock(scope: !699, file: !3, line: 1033, column: 3)
!699 = distinct !DILexicalBlock(scope: !680, file: !3, line: 1033, column: 3)
!700 = !DILocation(line: 1033, column: 3, scope: !699)
!701 = !DILocation(line: 1033, column: 3, scope: !702)
!702 = distinct !DILexicalBlock(scope: !703, file: !3, line: 1033, column: 3)
!703 = distinct !DILexicalBlock(scope: !698, file: !3, line: 1033, column: 3)
!704 = !DILocation(line: 1033, column: 3, scope: !705)
!705 = distinct !DILexicalBlock(scope: !706, file: !3, line: 1033, column: 3)
!706 = distinct !DILexicalBlock(scope: !707, file: !3, line: 1033, column: 3)
!707 = distinct !DILexicalBlock(scope: !702, file: !3, line: 1033, column: 3)
!708 = !DILocation(line: 152, column: 29, scope: !251, inlinedAt: !709)
!709 = distinct !DILocation(line: 1035, column: 16, scope: !710)
!710 = distinct !DILexicalBlock(scope: !680, file: !3, line: 1035, column: 7)
!711 = !DILocation(line: 161, column: 7, scope: !259, inlinedAt: !709)
!712 = !DILocation(line: 161, column: 37, scope: !259, inlinedAt: !709)
!713 = !DILocation(line: 161, column: 34, scope: !259, inlinedAt: !709)
!714 = !DILocation(line: 170, column: 3, scope: !266, inlinedAt: !709)
!715 = !DILocation(line: 155, column: 17, scope: !251, inlinedAt: !709)
!716 = !DILocation(line: 170, column: 3, scope: !269, inlinedAt: !709)
!717 = !DILocation(line: 172, column: 9, scope: !271, inlinedAt: !709)
!718 = !DILocation(line: 172, column: 28, scope: !271, inlinedAt: !709)
!719 = !DILocation(line: 172, column: 59, scope: !271, inlinedAt: !709)
!720 = !DILocation(line: 172, column: 9, scope: !272, inlinedAt: !709)
!721 = !DILocation(line: 174, column: 11, scope: !282, inlinedAt: !709)
!722 = !DILocation(line: 174, column: 11, scope: !283, inlinedAt: !709)
!723 = !DILocation(line: 179, column: 26, scope: !286, inlinedAt: !709)
!724 = !DILocation(line: 179, column: 50, scope: !286, inlinedAt: !709)
!725 = !DILocation(line: 179, column: 56, scope: !286, inlinedAt: !709)
!726 = !DILocation(line: 179, column: 59, scope: !286, inlinedAt: !709)
!727 = !DILocation(line: 179, column: 11, scope: !283, inlinedAt: !709)
!728 = !DILocation(line: 216, column: 8, scope: !294, inlinedAt: !709)
!729 = !DILocation(line: 216, column: 22, scope: !294, inlinedAt: !709)
!730 = !DILocation(line: 216, column: 31, scope: !294, inlinedAt: !709)
!731 = !DILocation(line: 216, column: 35, scope: !294, inlinedAt: !709)
!732 = !DILocation(line: 216, column: 62, scope: !294, inlinedAt: !709)
!733 = !DILocation(line: 217, column: 7, scope: !294, inlinedAt: !709)
!734 = !DILocation(line: 217, column: 61, scope: !294, inlinedAt: !709)
!735 = !DILocation(line: 217, column: 58, scope: !294, inlinedAt: !709)
!736 = !DILocation(line: 222, column: 5, scope: !303, inlinedAt: !709)
!737 = !DILocation(line: 1031, column: 17, scope: !680)
!738 = !DILocation(line: 1038, column: 5, scope: !739)
!739 = distinct !DILexicalBlock(scope: !710, file: !3, line: 1035, column: 51)
!740 = !DILocation(line: 1039, column: 5, scope: !739)
!741 = !DILocation(line: 787, column: 28, scope: !537, inlinedAt: !742)
!742 = distinct !DILocation(line: 1042, column: 10, scope: !680)
!743 = !DILocation(line: 787, column: 49, scope: !537, inlinedAt: !742)
!744 = !DILocation(line: 787, column: 72, scope: !537, inlinedAt: !742)
!745 = !DILocation(line: 788, column: 20, scope: !537, inlinedAt: !742)
!746 = !DILocation(line: 788, column: 30, scope: !537, inlinedAt: !742)
!747 = !DILocation(line: 789, column: 20, scope: !537, inlinedAt: !742)
!748 = !DILocation(line: 789, column: 41, scope: !537, inlinedAt: !742)
!749 = !DILocation(line: 807, column: 21, scope: !537, inlinedAt: !742)
!750 = !DILocation(line: 808, column: 12, scope: !558, inlinedAt: !742)
!751 = !DILocation(line: 808, column: 7, scope: !537, inlinedAt: !742)
!752 = !DILocation(line: 809, column: 9, scope: !561, inlinedAt: !742)
!753 = !DILocation(line: 809, column: 9, scope: !562, inlinedAt: !742)
!754 = !DILocation(line: 810, column: 18, scope: !565, inlinedAt: !742)
!755 = !DILocation(line: 811, column: 5, scope: !565, inlinedAt: !742)
!756 = !DILocation(line: 0, scope: !537, inlinedAt: !742)
!757 = !DILocation(line: 818, column: 10, scope: !537, inlinedAt: !742)
!758 = !DILocation(line: 1042, column: 3, scope: !680)
!759 = !DILocation(line: 0, scope: !680)
!760 = !DILocation(line: 1043, column: 1, scope: !680)
