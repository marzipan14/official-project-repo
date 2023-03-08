; ModuleID = '/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/netif/ethernet.c'
source_filename = "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/netif/ethernet.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.eth_addr = type { [6 x i8] }
%struct.stats_ = type { %struct.stats_proto, %struct.stats_proto, %struct.stats_proto, %struct.stats_proto, %struct.stats_proto, %struct.stats_proto, %struct.stats_proto, %struct.stats_sys, %struct.stats_proto, %struct.stats_proto, %struct.stats_proto, %struct.stats_igmp, %struct.stats_proto }
%struct.stats_sys = type { %struct.stats_syselem, %struct.stats_syselem, %struct.stats_syselem }
%struct.stats_syselem = type { i16, i16, i16 }
%struct.stats_igmp = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.stats_proto = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.pbuf = type { %struct.pbuf*, i8*, i16, i16, i8, i8, i8, i8 }
%struct.netif = type { %struct.netif*, %struct.ip_addr, %struct.ip_addr, %struct.ip_addr, [3 x %struct.ip_addr], [3 x i8], [3 x i32], [3 x i32], {}*, i8 (%struct.netif*, %struct.pbuf*, %struct.ip4_addr*)*, i8 (%struct.netif*, %struct.pbuf*)*, i8 (%struct.netif*, %struct.pbuf*, %struct.ip6_addr*)*, void (%struct.netif*)*, void (%struct.netif*)*, i8*, [1 x i8*], i16, i16, i16, [6 x i8], i8, i8, [2 x i8], i8, i8, i8, i8 (%struct.netif*, %struct.ip6_addr*, i32)* }
%struct.ip_addr = type { %union.anon, i8 }
%union.anon = type { %struct.ip6_addr }
%struct.ip6_addr = type { [4 x i32], i8 }
%struct.ip4_addr = type { i32 }
%struct.eth_hdr = type { %struct.eth_addr, %struct.eth_addr, i16 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@ethbroadcast = dso_local constant %struct.eth_addr { [6 x i8] c"\FF\FF\FF\FF\FF\FF" }, align 1, !dbg !0
@ethzero = dso_local local_unnamed_addr constant %struct.eth_addr zeroinitializer, align 1, !dbg !65
@lwip_stats = external dso_local local_unnamed_addr global %struct.stats_, align 2
@.str = private unnamed_addr constant [49 x i8] c"netif->hwaddr_len must be 6 for ethernet_output!\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Assertion failure: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"!(1)\00", align 1
@uk_pr_crit.__str = internal global [8 x i8] c"liblwip\00", section ".data_shared", align 1, !dbg !68
@uk_pr_crit.__str.3 = internal global [11 x i8] c"ethernet.c\00", section ".data_shared", align 1, !dbg !96
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local signext i8 @ethernet_input(%struct.pbuf*, %struct.netif*) local_unnamed_addr #0 !dbg !105 {
  %3 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 3, !dbg !226
  %4 = load i16, i16* %3, align 2, !dbg !226, !tbaa !228
  %5 = icmp ult i16 %4, 15, !dbg !234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !235
  br i1 %5, label %6, label %11, !dbg !235

; <label>:6:                                      ; preds = %2
  %7 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 8), align 2, !dbg !236, !tbaa !238
  %8 = add i16 %7, 1, !dbg !236
  store i16 %8, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 8), align 2, !dbg !236, !tbaa !238
  %9 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 3), align 2, !dbg !244, !tbaa !245
  %10 = add i16 %9, 1, !dbg !244
  store i16 %10, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 3), align 2, !dbg !244, !tbaa !245
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !246
  br label %99, !dbg !246

; <label>:11:                                     ; preds = %2
  %12 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 7, !dbg !247
  %13 = load i8, i8* %12, align 1, !dbg !247, !tbaa !249
  %14 = icmp eq i8 %13, 0, !dbg !250
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !251
  br i1 %14, label %15, label %19, !dbg !251

; <label>:15:                                     ; preds = %11
  %16 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 23, !dbg !252
  %17 = load i8, i8* %16, align 8, !dbg !252, !tbaa !254
  %18 = add i8 %17, 1, !dbg !252
  store i8 %18, i8* %12, align 1, !dbg !257, !tbaa !249
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !258
  br label %19, !dbg !258

; <label>:19:                                     ; preds = %15, %11
  %20 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 1, !dbg !259
  %21 = bitcast i8** %20 to %struct.eth_hdr**, !dbg !259
  %22 = load %struct.eth_hdr*, %struct.eth_hdr** %21, align 8, !dbg !259, !tbaa !260
  %23 = getelementptr inbounds %struct.eth_hdr, %struct.eth_hdr* %22, i64 0, i32 2, !dbg !262
  %24 = load i16, i16* %23, align 1, !dbg !262, !tbaa !263
  %25 = getelementptr inbounds %struct.eth_hdr, %struct.eth_hdr* %22, i64 0, i32 0, i32 0, i64 0, !dbg !267
  %26 = load i8, i8* %25, align 1, !dbg !267, !tbaa !269
  %27 = and i8 %26, 1, !dbg !270
  %28 = icmp eq i8 %27, 0, !dbg !270
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !271
  br i1 %28, label %60, label %29, !dbg !271

; <label>:29:                                     ; preds = %19
  %30 = icmp eq i8 %26, 1, !dbg !272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !275
  br i1 %30, label %31, label %43, !dbg !275

; <label>:31:                                     ; preds = %29
  %32 = getelementptr inbounds %struct.eth_hdr, %struct.eth_hdr* %22, i64 0, i32 0, i32 0, i64 1, !dbg !276
  %33 = load i8, i8* %32, align 1, !dbg !276, !tbaa !269
  %34 = icmp eq i8 %33, 0, !dbg !279
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !280
  br i1 %34, label %35, label %60, !dbg !280

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds %struct.eth_hdr, %struct.eth_hdr* %22, i64 0, i32 0, i32 0, i64 2, !dbg !281
  %37 = load i8, i8* %36, align 1, !dbg !281, !tbaa !269
  %38 = icmp eq i8 %37, 94, !dbg !282
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !283
  br i1 %38, label %39, label %60, !dbg !283

; <label>:39:                                     ; preds = %35
  %40 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 5, !dbg !284
  %41 = load i8, i8* %40, align 1, !dbg !286, !tbaa !287
  %42 = or i8 %41, 16, !dbg !286
  store i8 %42, i8* %40, align 1, !dbg !286, !tbaa !287
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !288
  br label %60, !dbg !288

; <label>:43:                                     ; preds = %29
  %44 = icmp eq i8 %26, 51, !dbg !289
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !291
  br i1 %44, label %45, label %53, !dbg !291

; <label>:45:                                     ; preds = %43
  %46 = getelementptr inbounds %struct.eth_hdr, %struct.eth_hdr* %22, i64 0, i32 0, i32 0, i64 1, !dbg !292
  %47 = load i8, i8* %46, align 1, !dbg !292, !tbaa !269
  %48 = icmp eq i8 %47, 51, !dbg !293
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !294
  br i1 %48, label %49, label %53, !dbg !294

; <label>:49:                                     ; preds = %45
  %50 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 5, !dbg !295
  %51 = load i8, i8* %50, align 1, !dbg !297, !tbaa !287
  %52 = or i8 %51, 16, !dbg !297
  store i8 %52, i8* %50, align 1, !dbg !297, !tbaa !287
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !298
  br label %60, !dbg !298

; <label>:53:                                     ; preds = %45, %43
  %54 = tail call i32 @memcmp(i8* %25, i8* getelementptr inbounds (%struct.eth_addr, %struct.eth_addr* @ethbroadcast, i64 0, i32 0, i64 0), i64 6) #7, !dbg !299
  %55 = icmp eq i32 %54, 0, !dbg !299
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !301
  br i1 %55, label %56, label %60, !dbg !301

; <label>:56:                                     ; preds = %53
  %57 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 5, !dbg !302
  %58 = load i8, i8* %57, align 1, !dbg !304, !tbaa !287
  %59 = or i8 %58, 8, !dbg !304
  store i8 %59, i8* %57, align 1, !dbg !304, !tbaa !287
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !305
  br label %60, !dbg !305

; <label>:60:                                     ; preds = %19, %39, %35, %31, %53, %56, %49
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !306
  switch i16 %24, label %93 [
    i16 8, label %61
    i16 1544, label %71
    i16 -8826, label %85
  ], !dbg !306

; <label>:61:                                     ; preds = %60
  %62 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 21, !dbg !307
  %63 = load i8, i8* %62, align 1, !dbg !307, !tbaa !310
  %64 = and i8 %63, 8, !dbg !311
  %65 = icmp eq i8 %64, 0, !dbg !311
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !312
  br i1 %65, label %99, label %66, !dbg !312

; <label>:66:                                     ; preds = %61
  %67 = tail call zeroext i8 @pbuf_remove_header(%struct.pbuf* nonnull %0, i64 14) #7, !dbg !313
  %68 = icmp eq i8 %67, 0, !dbg !313
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !315
  br i1 %68, label %69, label %99, !dbg !315

; <label>:69:                                     ; preds = %66
  %70 = tail call signext i8 @ip4_input(%struct.pbuf* nonnull %0, %struct.netif* nonnull %1) #7, !dbg !316
  br label %98, !dbg !318

; <label>:71:                                     ; preds = %60
  %72 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 21, !dbg !319
  %73 = load i8, i8* %72, align 1, !dbg !319, !tbaa !310
  %74 = and i8 %73, 8, !dbg !321
  %75 = icmp eq i8 %74, 0, !dbg !321
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !322
  br i1 %75, label %99, label %76, !dbg !322

; <label>:76:                                     ; preds = %71
  %77 = tail call zeroext i8 @pbuf_remove_header(%struct.pbuf* nonnull %0, i64 14) #7, !dbg !323
  %78 = icmp eq i8 %77, 0, !dbg !323
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !325
  br i1 %78, label %84, label %79, !dbg !325

; <label>:79:                                     ; preds = %76
  %80 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 5), align 2, !dbg !326, !tbaa !328
  %81 = add i16 %80, 1, !dbg !326
  store i16 %81, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 5), align 2, !dbg !326, !tbaa !328
  %82 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 3), align 2, !dbg !329, !tbaa !245
  %83 = add i16 %82, 1, !dbg !329
  store i16 %83, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 3), align 2, !dbg !329, !tbaa !245
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !330
  br label %99, !dbg !330

; <label>:84:                                     ; preds = %76
  tail call void @etharp_input(%struct.pbuf* nonnull %0, %struct.netif* nonnull %1) #7, !dbg !331
  br label %98, !dbg !333

; <label>:85:                                     ; preds = %60
  %86 = load i16, i16* %3, align 2, !dbg !334, !tbaa !228
  %87 = icmp ult i16 %86, 14, !dbg !336
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !337
  br i1 %87, label %99, label %88, !dbg !337

; <label>:88:                                     ; preds = %85
  %89 = tail call zeroext i8 @pbuf_remove_header(%struct.pbuf* nonnull %0, i64 14) #7, !dbg !338
  %90 = icmp eq i8 %89, 0, !dbg !338
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !339
  br i1 %90, label %91, label %99, !dbg !339

; <label>:91:                                     ; preds = %88
  %92 = tail call signext i8 @ip6_input(%struct.pbuf* nonnull %0, %struct.netif* %1) #7, !dbg !340
  br label %98, !dbg !342

; <label>:93:                                     ; preds = %60
  %94 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 8), align 2, !dbg !343, !tbaa !238
  %95 = add i16 %94, 1, !dbg !343
  store i16 %95, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 8), align 2, !dbg !343, !tbaa !238
  %96 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 3), align 2, !dbg !344, !tbaa !245
  %97 = add i16 %96, 1, !dbg !344
  store i16 %97, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 3), align 2, !dbg !344, !tbaa !245
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !345
  br label %99, !dbg !345

; <label>:98:                                     ; preds = %91, %84, %69
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !346
  br label %101, !dbg !347

; <label>:99:                                     ; preds = %66, %61, %71, %88, %85, %93, %79, %6
  %100 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !348
  br label %101, !dbg !349

; <label>:101:                                    ; preds = %99, %98
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !350
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !351
  ret i8 0, !dbg !351
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i32 @memcmp(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local zeroext i8 @pbuf_remove_header(%struct.pbuf*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local signext i8 @ip4_input(%struct.pbuf*, %struct.netif*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @etharp_input(%struct.pbuf*, %struct.netif*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local signext i8 @ip6_input(%struct.pbuf*, %struct.netif*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local zeroext i8 @pbuf_free(%struct.pbuf*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local signext i8 @ethernet_output(%struct.netif*, %struct.pbuf*, %struct.eth_addr*, %struct.eth_addr*, i16 zeroext) local_unnamed_addr #0 !dbg !352 {
  %6 = tail call zeroext i16 @lwip_htons(i16 zeroext %4) #7, !dbg !369
  %7 = tail call zeroext i8 @pbuf_add_header(%struct.pbuf* %1, i64 14) #7, !dbg !371
  %8 = icmp eq i8 %7, 0, !dbg !374
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !375
  br i1 %8, label %9, label %28, !dbg !375

; <label>:9:                                      ; preds = %5
  %10 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %1, i64 0, i32 1, !dbg !376
  %11 = bitcast i8** %10 to %struct.eth_hdr**, !dbg !376
  %12 = load %struct.eth_hdr*, %struct.eth_hdr** %11, align 8, !dbg !376, !tbaa !260
  %13 = getelementptr inbounds %struct.eth_hdr, %struct.eth_hdr* %12, i64 0, i32 2, !dbg !378
  store i16 %6, i16* %13, align 1, !dbg !379, !tbaa !263
  %14 = getelementptr inbounds %struct.eth_hdr, %struct.eth_hdr* %12, i64 0, i32 0, i32 0, i64 0, !dbg !380
  %15 = getelementptr inbounds %struct.eth_addr, %struct.eth_addr* %3, i64 0, i32 0, i64 0, !dbg !380
  %16 = tail call i8* @memcpy(i8* %14, i8* %15, i64 6) #7, !dbg !380
  %17 = getelementptr inbounds %struct.eth_hdr, %struct.eth_hdr* %12, i64 0, i32 1, i32 0, i64 0, !dbg !381
  %18 = getelementptr inbounds %struct.eth_addr, %struct.eth_addr* %2, i64 0, i32 0, i64 0, !dbg !381
  %19 = tail call i8* @memcpy(i8* nonnull %17, i8* %18, i64 6) #7, !dbg !381
  %20 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 20, !dbg !382
  %21 = load i8, i8* %20, align 4, !dbg !382, !tbaa !385
  %22 = icmp eq i8 %21, 6, !dbg !382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !386
  br i1 %22, label %24, label %23, !dbg !386

; <label>:23:                                     ; preds = %9
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0)) #8, !dbg !387
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !390
  tail call void @ukplat_terminate(i32 3) #9, !dbg !390
  unreachable

; <label>:24:                                     ; preds = %9
  %25 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 10, !dbg !394
  %26 = load i8 (%struct.netif*, %struct.pbuf*)*, i8 (%struct.netif*, %struct.pbuf*)** %25, align 8, !dbg !394, !tbaa !395
  %27 = tail call signext i8 %26(%struct.netif* nonnull %0, %struct.pbuf* nonnull %1) #7, !dbg !396
  br label %31, !dbg !397

; <label>:28:                                     ; preds = %5
  %29 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 0, i32 5), align 2, !dbg !398, !tbaa !399
  %30 = add i16 %29, 1, !dbg !398
  store i16 %30, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 0, i32 5), align 2, !dbg !398, !tbaa !399
  br label %31, !dbg !400

; <label>:31:                                     ; preds = %28, %24
  %32 = phi i8 [ -2, %28 ], [ %27, %24 ], !dbg !401
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !401
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !402
  ret i8 %32, !dbg !402
}

; Function Attrs: noredzone
declare dso_local zeroext i16 @lwip_htons(i16 zeroext) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local zeroext i8 @pbuf_add_header(%struct.pbuf*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8*, ...) unnamed_addr #4 !dbg !70 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !404
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #6, !dbg !404
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !406
  call void @llvm.va_start(i8* nonnull %3), !dbg !406
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @uk_pr_crit.__str.3, i64 0, i64 0), i32 198, i8* %0, %struct.__va_list_tag* nonnull %4) #7, !dbg !407
  call void @llvm.va_end(i8* nonnull %3), !dbg !410
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #6, !dbg !411
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !411
  ret void, !dbg !411
}

; Function Attrs: noredzone noreturn
declare dso_local void @ukplat_terminate(i32) local_unnamed_addr #5

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

!llvm.module.flags = !{!101, !102, !103}
!llvm.ident = !{!104}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ethbroadcast", scope: !2, file: !3, line: 63, type: !67, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !39, globals: !64)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/netif/ethernet.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{!5, !11, !32}
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
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ukplat_gstate", file: !33, line: 68, baseType: !7, size: 32, elements: !34)
!33 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/bootstrap.h", directory: "/root/.unikraft/apps/redis/build")
!34 = !{!35, !36, !37, !38}
!35 = !DIEnumerator(name: "UKPLAT_HALT", value: 0, isUnsigned: true)
!36 = !DIEnumerator(name: "UKPLAT_RESTART", value: 1, isUnsigned: true)
!37 = !DIEnumerator(name: "UKPLAT_SUSPEND", value: 2, isUnsigned: true)
!38 = !DIEnumerator(name: "UKPLAT_CRASH", value: 3, isUnsigned: true)
!39 = !{!40, !47}
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8_t", file: !41, line: 125, baseType: !42)
!41 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/arch.h", directory: "/root/.unikraft/apps/redis/build")
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !43, line: 24, baseType: !44)
!43 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !45, line: 43, baseType: !46)
!45 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!46 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eth_hdr", file: !49, line: 76, size: 112, elements: !50)
!49 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/prot/ethernet.h", directory: "/root/.unikraft/apps/redis/build")
!50 = !{!51, !58, !59}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !48, file: !49, line: 80, baseType: !52, size: 48)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eth_addr", file: !49, line: 60, size: 48, elements: !53)
!53 = !{!54}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !52, file: !49, line: 61, baseType: !55, size: 48)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 48, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 6)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !48, file: !49, line: 81, baseType: !52, size: 48, offset: 48)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !48, file: !49, line: 82, baseType: !60, size: 16, offset: 96)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16_t", file: !41, line: 127, baseType: !61)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !43, line: 36, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !45, line: 57, baseType: !63)
!63 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!64 = !{!0, !65, !68, !96}
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(name: "ethzero", scope: !2, file: !3, line: 64, type: !67, isLocal: false, isDefinition: true)
!67 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(name: "__str", scope: !70, file: !71, line: 198, type: !93, isLocal: true, isDefinition: true)
!70 = distinct !DISubprogram(name: "uk_pr_crit", scope: !71, file: !71, line: 194, type: !72, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !77)
!71 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukdebug/include/uk/print.h", directory: "/root/.unikraft/apps/redis/build")
!72 = !DISubroutineType(types: !73)
!73 = !{null, !74, null}
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!76 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!77 = !{!78, !79}
!78 = !DILocalVariable(name: "fmt", arg: 1, scope: !70, file: !71, line: 194, type: !74)
!79 = !DILocalVariable(name: "argp", scope: !70, file: !71, line: 196, type: !80)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !81, line: 32, baseType: !82)
!81 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 196, baseType: !83)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 192, elements: !91)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 196, size: 192, elements: !85)
!85 = !{!86, !87, !88, !90}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !84, file: !3, line: 196, baseType: !7, size: 32)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !84, file: !3, line: 196, baseType: !7, size: 32, offset: 32)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !84, file: !3, line: 196, baseType: !89, size: 64, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !84, file: !3, line: 196, baseType: !89, size: 64, offset: 128)
!91 = !{!92}
!92 = !DISubrange(count: 1)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 64, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 8)
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression())
!97 = distinct !DIGlobalVariable(name: "__str", scope: !70, file: !71, line: 198, type: !98, isLocal: true, isDefinition: true)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 88, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 11)
!101 = !{i32 2, !"Dwarf Version", i32 4}
!102 = !{i32 2, !"Debug Info Version", i32 3}
!103 = !{i32 1, !"wchar_size", i32 4}
!104 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!105 = distinct !DISubprogram(name: "ethernet_input", scope: !3, file: !3, line: 81, type: !106, isLocal: false, isDefinition: true, scopeLine: 82, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !217)
!106 = !DISubroutineType(types: !107)
!107 = !{!108, !113, !125}
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "err_t", file: !12, line: 96, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8_t", file: !41, line: 126, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !43, line: 20, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !45, line: 41, baseType: !112)
!112 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pbuf", file: !115, line: 186, size: 192, elements: !116)
!115 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/pbuf.h", directory: "/root/.unikraft/apps/redis/build")
!116 = !{!117, !118, !119, !120, !121, !122, !123, !124}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !114, file: !115, line: 188, baseType: !113, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !114, file: !115, line: 191, baseType: !89, size: 64, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "tot_len", scope: !114, file: !115, line: 200, baseType: !60, size: 16, offset: 128)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !114, file: !115, line: 203, baseType: !60, size: 16, offset: 144)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "type_internal", scope: !114, file: !115, line: 208, baseType: !40, size: 8, offset: 160)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !114, file: !115, line: 211, baseType: !40, size: 8, offset: 168)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !114, file: !115, line: 218, baseType: !40, size: 8, offset: 176)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "if_idx", scope: !114, file: !115, line: 221, baseType: !40, size: 8, offset: 184)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netif", file: !6, line: 260, size: 2240, elements: !127)
!127 = !{!128, !129, !157, !158, !159, !163, !165, !167, !168, !171, !178, !183, !190, !195, !196, !197, !199, !200, !201, !202, !203, !204, !205, !209, !210, !211, !212}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !126, file: !6, line: 263, baseType: !125, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "ip_addr", scope: !126, file: !6, line: 268, baseType: !130, size: 192, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_addr_t", file: !131, line: 76, baseType: !132)
!131 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip_addr.h", directory: "/root/.unikraft/apps/redis/build")
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_addr", file: !131, line: 69, size: 192, elements: !133)
!133 = !{!134, !156}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "u_addr", scope: !132, file: !131, line: 73, baseType: !135, size: 160)
!135 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !132, file: !131, line: 70, size: 160, elements: !136)
!136 = !{!137, !150}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "ip6", scope: !135, file: !131, line: 71, baseType: !138, size: 160)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip6_addr_t", file: !139, line: 67, baseType: !140)
!139 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip6_addr.h", directory: "/root/.unikraft/apps/redis/build")
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip6_addr", file: !139, line: 59, size: 160, elements: !141)
!141 = !{!142, !149}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !140, file: !139, line: 60, baseType: !143, size: 128)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 128, elements: !147)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32_t", file: !41, line: 129, baseType: !145)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !43, line: 48, baseType: !146)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !45, line: 79, baseType: !7)
!147 = !{!148}
!148 = !DISubrange(count: 4)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "zone", scope: !140, file: !139, line: 62, baseType: !40, size: 8, offset: 128)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "ip4", scope: !135, file: !131, line: 72, baseType: !151, size: 32)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip4_addr_t", file: !152, line: 57, baseType: !153)
!152 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip4_addr.h", directory: "/root/.unikraft/apps/redis/build")
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip4_addr", file: !152, line: 51, size: 32, elements: !154)
!154 = !{!155}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !153, file: !152, line: 52, baseType: !144, size: 32)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !132, file: !131, line: 75, baseType: !40, size: 8, offset: 160)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "netmask", scope: !126, file: !6, line: 269, baseType: !130, size: 192, offset: 256)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "gw", scope: !126, file: !6, line: 270, baseType: !130, size: 192, offset: 448)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr", scope: !126, file: !6, line: 274, baseType: !160, size: 576, offset: 640)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 576, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 3)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_state", scope: !126, file: !6, line: 277, baseType: !164, size: 24, offset: 1216)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 24, elements: !161)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_valid_life", scope: !126, file: !6, line: 282, baseType: !166, size: 96, offset: 1248)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 96, elements: !161)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_pref_life", scope: !126, file: !6, line: 283, baseType: !166, size: 96, offset: 1344)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !126, file: !6, line: 288, baseType: !169, size: 64, offset: 1472)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_input_fn", file: !6, line: 178, baseType: !170)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !126, file: !6, line: 294, baseType: !172, size: 64, offset: 1536)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_output_fn", file: !6, line: 189, baseType: !173)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DISubroutineType(types: !175)
!175 = !{!108, !125, !113, !176}
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "linkoutput", scope: !126, file: !6, line: 299, baseType: !179, size: 64, offset: 1600)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_linkoutput_fn", file: !6, line: 212, baseType: !180)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DISubroutineType(types: !182)
!182 = !{!108, !125, !113}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "output_ip6", scope: !126, file: !6, line: 305, baseType: !184, size: 64, offset: 1664)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_output_ip6_fn", file: !6, line: 202, baseType: !185)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DISubroutineType(types: !187)
!187 = !{!108, !125, !113, !188}
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "status_callback", scope: !126, file: !6, line: 310, baseType: !191, size: 64, offset: 1728)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_status_callback_fn", file: !6, line: 214, baseType: !192)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DISubroutineType(types: !194)
!194 = !{null, !125}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "remove_callback", scope: !126, file: !6, line: 319, baseType: !191, size: 64, offset: 1792)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !126, file: !6, line: 323, baseType: !89, size: 64, offset: 1856)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !126, file: !6, line: 325, baseType: !198, size: 64, offset: 1920)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 64, elements: !91)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "chksum_flags", scope: !126, file: !6, line: 332, baseType: !60, size: 16, offset: 1984)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !126, file: !6, line: 335, baseType: !60, size: 16, offset: 2000)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "mtu6", scope: !126, file: !6, line: 338, baseType: !60, size: 16, offset: 2016)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "hwaddr", scope: !126, file: !6, line: 341, baseType: !55, size: 48, offset: 2032)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "hwaddr_len", scope: !126, file: !6, line: 343, baseType: !40, size: 8, offset: 2080)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !126, file: !6, line: 345, baseType: !40, size: 8, offset: 2088)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !126, file: !6, line: 347, baseType: !206, size: 16, offset: 2096)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 16, elements: !207)
!207 = !{!208}
!208 = !DISubrange(count: 2)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !126, file: !6, line: 350, baseType: !40, size: 8, offset: 2112)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_autoconfig_enabled", scope: !126, file: !6, line: 353, baseType: !40, size: 8, offset: 2120)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "rs_count", scope: !126, file: !6, line: 357, baseType: !40, size: 8, offset: 2128)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "mld_mac_filter", scope: !126, file: !6, line: 377, baseType: !213, size: 64, offset: 2176)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_mld_mac_filter_fn", file: !6, line: 222, baseType: !214)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{!108, !125, !188, !5}
!217 = !{!218, !219, !220, !221, !222}
!218 = !DILocalVariable(name: "p", arg: 1, scope: !105, file: !3, line: 81, type: !113)
!219 = !DILocalVariable(name: "netif", arg: 2, scope: !105, file: !3, line: 81, type: !125)
!220 = !DILocalVariable(name: "ethhdr", scope: !105, file: !3, line: 83, type: !47)
!221 = !DILocalVariable(name: "type", scope: !105, file: !3, line: 84, type: !60)
!222 = !DILocalVariable(name: "next_hdr_offset", scope: !105, file: !3, line: 86, type: !60)
!223 = !DILocation(line: 81, column: 29, scope: !105)
!224 = !DILocation(line: 81, column: 46, scope: !105)
!225 = !DILocation(line: 86, column: 9, scope: !105)
!226 = !DILocation(line: 91, column: 10, scope: !227)
!227 = distinct !DILexicalBlock(scope: !105, file: !3, line: 91, column: 7)
!228 = !{!229, !233, i64 18}
!229 = !{!"pbuf", !230, i64 0, !230, i64 8, !233, i64 16, !233, i64 18, !231, i64 20, !231, i64 21, !231, i64 22, !231, i64 23}
!230 = !{!"any pointer", !231, i64 0}
!231 = !{!"omnipotent char", !232, i64 0}
!232 = !{!"Simple C/C++ TBAA"}
!233 = !{!"short", !231, i64 0}
!234 = !DILocation(line: 91, column: 14, scope: !227)
!235 = !DILocation(line: 91, column: 7, scope: !105)
!236 = !DILocation(line: 93, column: 5, scope: !237)
!237 = distinct !DILexicalBlock(scope: !227, file: !3, line: 91, column: 33)
!238 = !{!239, !233, i64 40}
!239 = !{!"stats_", !240, i64 0, !240, i64 24, !240, i64 48, !240, i64 72, !240, i64 96, !240, i64 120, !240, i64 144, !241, i64 168, !240, i64 186, !240, i64 210, !240, i64 234, !243, i64 258, !240, i64 286}
!240 = !{!"stats_proto", !233, i64 0, !233, i64 2, !233, i64 4, !233, i64 6, !233, i64 8, !233, i64 10, !233, i64 12, !233, i64 14, !233, i64 16, !233, i64 18, !233, i64 20, !233, i64 22}
!241 = !{!"stats_sys", !242, i64 0, !242, i64 6, !242, i64 12}
!242 = !{!"stats_syselem", !233, i64 0, !233, i64 2, !233, i64 4}
!243 = !{!"stats_igmp", !233, i64 0, !233, i64 2, !233, i64 4, !233, i64 6, !233, i64 8, !233, i64 10, !233, i64 12, !233, i64 14, !233, i64 16, !233, i64 18, !233, i64 20, !233, i64 22, !233, i64 24, !233, i64 26}
!244 = !DILocation(line: 94, column: 5, scope: !237)
!245 = !{!239, !233, i64 30}
!246 = !DILocation(line: 96, column: 5, scope: !237)
!247 = !DILocation(line: 99, column: 10, scope: !248)
!248 = distinct !DILexicalBlock(scope: !105, file: !3, line: 99, column: 7)
!249 = !{!229, !231, i64 23}
!250 = !DILocation(line: 99, column: 17, scope: !248)
!251 = !DILocation(line: 99, column: 7, scope: !105)
!252 = !DILocation(line: 100, column: 17, scope: !253)
!253 = distinct !DILexicalBlock(scope: !248, file: !3, line: 99, column: 36)
!254 = !{!255, !231, i64 264}
!255 = !{!"netif", !230, i64 0, !256, i64 8, !256, i64 32, !256, i64 56, !231, i64 80, !231, i64 152, !231, i64 156, !231, i64 168, !230, i64 184, !230, i64 192, !230, i64 200, !230, i64 208, !230, i64 216, !230, i64 224, !230, i64 232, !231, i64 240, !233, i64 248, !233, i64 250, !233, i64 252, !231, i64 254, !231, i64 260, !231, i64 261, !231, i64 262, !231, i64 264, !231, i64 265, !231, i64 266, !230, i64 272}
!256 = !{!"ip_addr", !231, i64 0, !231, i64 20}
!257 = !DILocation(line: 100, column: 15, scope: !253)
!258 = !DILocation(line: 101, column: 3, scope: !253)
!259 = !DILocation(line: 104, column: 33, scope: !105)
!260 = !{!229, !230, i64 8}
!261 = !DILocation(line: 83, column: 19, scope: !105)
!262 = !DILocation(line: 113, column: 18, scope: !105)
!263 = !{!264, !233, i64 12}
!264 = !{!"eth_hdr", !265, i64 0, !265, i64 6, !233, i64 12}
!265 = !{!"eth_addr", !231, i64 0}
!266 = !DILocation(line: 84, column: 9, scope: !105)
!267 = !DILocation(line: 146, column: 7, scope: !268)
!268 = distinct !DILexicalBlock(scope: !105, file: !3, line: 146, column: 7)
!269 = !{!231, !231, i64 0}
!270 = !DILocation(line: 146, column: 28, scope: !268)
!271 = !DILocation(line: 146, column: 7, scope: !105)
!272 = !DILocation(line: 148, column: 30, scope: !273)
!273 = distinct !DILexicalBlock(scope: !274, file: !3, line: 148, column: 9)
!274 = distinct !DILexicalBlock(scope: !268, file: !3, line: 146, column: 33)
!275 = !DILocation(line: 148, column: 9, scope: !274)
!276 = !DILocation(line: 150, column: 12, scope: !277)
!277 = distinct !DILexicalBlock(scope: !278, file: !3, line: 150, column: 11)
!278 = distinct !DILexicalBlock(scope: !273, file: !3, line: 148, column: 58)
!279 = !DILocation(line: 150, column: 33, scope: !277)
!280 = !DILocation(line: 150, column: 61, scope: !277)
!281 = !DILocation(line: 151, column: 12, scope: !277)
!282 = !DILocation(line: 151, column: 33, scope: !277)
!283 = !DILocation(line: 150, column: 11, scope: !278)
!284 = !DILocation(line: 153, column: 12, scope: !285)
!285 = distinct !DILexicalBlock(scope: !277, file: !3, line: 151, column: 62)
!286 = !DILocation(line: 153, column: 18, scope: !285)
!287 = !{!229, !231, i64 21}
!288 = !DILocation(line: 154, column: 7, scope: !285)
!289 = !DILocation(line: 158, column: 36, scope: !290)
!290 = distinct !DILexicalBlock(scope: !273, file: !3, line: 158, column: 14)
!291 = !DILocation(line: 158, column: 64, scope: !290)
!292 = !DILocation(line: 159, column: 15, scope: !290)
!293 = !DILocation(line: 159, column: 36, scope: !290)
!294 = !DILocation(line: 158, column: 14, scope: !273)
!295 = !DILocation(line: 161, column: 10, scope: !296)
!296 = distinct !DILexicalBlock(scope: !290, file: !3, line: 159, column: 65)
!297 = !DILocation(line: 161, column: 16, scope: !296)
!298 = !DILocation(line: 162, column: 5, scope: !296)
!299 = !DILocation(line: 164, column: 14, scope: !300)
!300 = distinct !DILexicalBlock(scope: !290, file: !3, line: 164, column: 14)
!301 = !DILocation(line: 164, column: 14, scope: !290)
!302 = !DILocation(line: 166, column: 10, scope: !303)
!303 = distinct !DILexicalBlock(scope: !300, file: !3, line: 164, column: 58)
!304 = !DILocation(line: 166, column: 16, scope: !303)
!305 = !DILocation(line: 167, column: 5, scope: !303)
!306 = !DILocation(line: 170, column: 3, scope: !105)
!307 = !DILocation(line: 174, column: 20, scope: !308)
!308 = distinct !DILexicalBlock(scope: !309, file: !3, line: 174, column: 11)
!309 = distinct !DILexicalBlock(scope: !105, file: !3, line: 170, column: 17)
!310 = !{!255, !231, i64 261}
!311 = !DILocation(line: 174, column: 26, scope: !308)
!312 = !DILocation(line: 174, column: 11, scope: !309)
!313 = !DILocation(line: 178, column: 11, scope: !314)
!314 = distinct !DILexicalBlock(scope: !309, file: !3, line: 178, column: 11)
!315 = !DILocation(line: 178, column: 11, scope: !309)
!316 = !DILocation(line: 186, column: 9, scope: !317)
!317 = distinct !DILexicalBlock(scope: !314, file: !3, line: 184, column: 14)
!318 = !DILocation(line: 188, column: 7, scope: !309)
!319 = !DILocation(line: 191, column: 20, scope: !320)
!320 = distinct !DILexicalBlock(scope: !309, file: !3, line: 191, column: 11)
!321 = !DILocation(line: 191, column: 26, scope: !320)
!322 = !DILocation(line: 191, column: 11, scope: !309)
!323 = !DILocation(line: 195, column: 11, scope: !324)
!324 = distinct !DILexicalBlock(scope: !309, file: !3, line: 195, column: 11)
!325 = !DILocation(line: 195, column: 11, scope: !309)
!326 = !DILocation(line: 200, column: 9, scope: !327)
!327 = distinct !DILexicalBlock(scope: !324, file: !3, line: 195, column: 51)
!328 = !{!239, !233, i64 34}
!329 = !DILocation(line: 201, column: 9, scope: !327)
!330 = !DILocation(line: 202, column: 9, scope: !327)
!331 = !DILocation(line: 205, column: 9, scope: !332)
!332 = distinct !DILexicalBlock(scope: !324, file: !3, line: 203, column: 14)
!333 = !DILocation(line: 207, column: 7, scope: !309)
!334 = !DILocation(line: 222, column: 15, scope: !335)
!335 = distinct !DILexicalBlock(scope: !309, file: !3, line: 222, column: 11)
!336 = !DILocation(line: 222, column: 19, scope: !335)
!337 = !DILocation(line: 222, column: 38, scope: !335)
!338 = !DILocation(line: 222, column: 41, scope: !335)
!339 = !DILocation(line: 222, column: 11, scope: !309)
!340 = !DILocation(line: 229, column: 9, scope: !341)
!341 = distinct !DILexicalBlock(scope: !335, file: !3, line: 227, column: 14)
!342 = !DILocation(line: 231, column: 7, scope: !309)
!343 = !DILocation(line: 240, column: 7, scope: !309)
!344 = !DILocation(line: 241, column: 7, scope: !309)
!345 = !DILocation(line: 243, column: 7, scope: !309)
!346 = !DILocation(line: 0, scope: !309)
!347 = !DILocation(line: 248, column: 3, scope: !105)
!348 = !DILocation(line: 251, column: 3, scope: !105)
!349 = !DILocation(line: 252, column: 3, scope: !105)
!350 = !DILocation(line: 0, scope: !105)
!351 = !DILocation(line: 253, column: 1, scope: !105)
!352 = distinct !DISubprogram(name: "ethernet_output", scope: !3, file: !3, line: 270, type: !353, isLocal: false, isDefinition: true, scopeLine: 272, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !356)
!353 = !DISubroutineType(types: !354)
!354 = !{!108, !125, !113, !355, !355, !60}
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!356 = !{!357, !358, !359, !360, !361, !362, !363}
!357 = !DILocalVariable(name: "netif", arg: 1, scope: !352, file: !3, line: 270, type: !125)
!358 = !DILocalVariable(name: "p", arg: 2, scope: !352, file: !3, line: 270, type: !113)
!359 = !DILocalVariable(name: "src", arg: 3, scope: !352, file: !3, line: 271, type: !355)
!360 = !DILocalVariable(name: "dst", arg: 4, scope: !352, file: !3, line: 271, type: !355)
!361 = !DILocalVariable(name: "eth_type", arg: 5, scope: !352, file: !3, line: 272, type: !60)
!362 = !DILocalVariable(name: "ethhdr", scope: !352, file: !3, line: 273, type: !47)
!363 = !DILocalVariable(name: "eth_type_be", scope: !352, file: !3, line: 274, type: !60)
!364 = !DILocation(line: 270, column: 32, scope: !352)
!365 = !DILocation(line: 270, column: 53, scope: !352)
!366 = !DILocation(line: 271, column: 41, scope: !352)
!367 = !DILocation(line: 271, column: 70, scope: !352)
!368 = !DILocation(line: 272, column: 23, scope: !352)
!369 = !DILocation(line: 274, column: 23, scope: !352)
!370 = !DILocation(line: 274, column: 9, scope: !352)
!371 = !DILocation(line: 294, column: 9, scope: !372)
!372 = distinct !DILexicalBlock(scope: !373, file: !3, line: 294, column: 9)
!373 = distinct !DILexicalBlock(scope: !352, file: !3, line: 293, column: 3)
!374 = !DILocation(line: 294, column: 44, scope: !372)
!375 = !DILocation(line: 294, column: 9, scope: !373)
!376 = !DILocation(line: 301, column: 33, scope: !352)
!377 = !DILocation(line: 273, column: 19, scope: !352)
!378 = !DILocation(line: 302, column: 11, scope: !352)
!379 = !DILocation(line: 302, column: 16, scope: !352)
!380 = !DILocation(line: 303, column: 3, scope: !352)
!381 = !DILocation(line: 304, column: 3, scope: !352)
!382 = !DILocation(line: 306, column: 3, scope: !383)
!383 = distinct !DILexicalBlock(scope: !384, file: !3, line: 306, column: 3)
!384 = distinct !DILexicalBlock(scope: !352, file: !3, line: 306, column: 3)
!385 = !{!255, !231, i64 260}
!386 = !DILocation(line: 306, column: 3, scope: !384)
!387 = !DILocation(line: 306, column: 3, scope: !388)
!388 = distinct !DILexicalBlock(scope: !389, file: !3, line: 306, column: 3)
!389 = distinct !DILexicalBlock(scope: !383, file: !3, line: 306, column: 3)
!390 = !DILocation(line: 306, column: 3, scope: !391)
!391 = distinct !DILexicalBlock(scope: !392, file: !3, line: 306, column: 3)
!392 = distinct !DILexicalBlock(scope: !393, file: !3, line: 306, column: 3)
!393 = distinct !DILexicalBlock(scope: !388, file: !3, line: 306, column: 3)
!394 = !DILocation(line: 312, column: 17, scope: !352)
!395 = !{!255, !230, i64 200}
!396 = !DILocation(line: 312, column: 10, scope: !352)
!397 = !DILocation(line: 312, column: 3, scope: !352)
!398 = !DILocation(line: 317, column: 3, scope: !352)
!399 = !{!239, !233, i64 10}
!400 = !DILocation(line: 318, column: 3, scope: !352)
!401 = !DILocation(line: 0, scope: !352)
!402 = !DILocation(line: 319, column: 1, scope: !352)
!403 = !DILocation(line: 194, column: 43, scope: !70)
!404 = !DILocation(line: 196, column: 2, scope: !70)
!405 = !DILocation(line: 196, column: 10, scope: !70)
!406 = !DILocation(line: 197, column: 2, scope: !70)
!407 = !DILocation(line: 198, column: 2, scope: !408)
!408 = distinct !DILexicalBlock(scope: !409, file: !71, line: 198, column: 2)
!409 = distinct !DILexicalBlock(scope: !70, file: !71, line: 198, column: 2)
!410 = !DILocation(line: 199, column: 2, scope: !70)
!411 = !DILocation(line: 200, column: 1, scope: !70)
