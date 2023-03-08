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

; Function Attrs: noredzone nounwind
define dso_local signext i8 @ethernet_input(%struct.pbuf*, %struct.netif*) local_unnamed_addr #0 !dbg !105 {
  %3 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 3, !dbg !226
  %4 = load i16, i16* %3, align 2, !dbg !226, !tbaa !228
  %5 = icmp ult i16 %4, 15, !dbg !234
  br i1 %5, label %6, label %11, !dbg !235

; <label>:6:                                      ; preds = %2
  %7 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 8), align 2, !dbg !236, !tbaa !238
  %8 = add i16 %7, 1, !dbg !236
  store i16 %8, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 8), align 2, !dbg !236, !tbaa !238
  %9 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 3), align 2, !dbg !244, !tbaa !245
  %10 = add i16 %9, 1, !dbg !244
  store i16 %10, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 3), align 2, !dbg !244, !tbaa !245
  br label %95, !dbg !246

; <label>:11:                                     ; preds = %2
  %12 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 7, !dbg !247
  %13 = load i8, i8* %12, align 1, !dbg !247, !tbaa !249
  %14 = icmp eq i8 %13, 0, !dbg !250
  br i1 %14, label %15, label %19, !dbg !251

; <label>:15:                                     ; preds = %11
  %16 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 23, !dbg !252
  %17 = load i8, i8* %16, align 8, !dbg !252, !tbaa !254
  %18 = add i8 %17, 1, !dbg !252
  store i8 %18, i8* %12, align 1, !dbg !257, !tbaa !249
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
  br i1 %28, label %57, label %29, !dbg !271

; <label>:29:                                     ; preds = %19
  switch i8 %26, label %50 [
    i8 1, label %30
    i8 51, label %42
  ], !dbg !272

; <label>:30:                                     ; preds = %29
  %31 = getelementptr inbounds %struct.eth_hdr, %struct.eth_hdr* %22, i64 0, i32 0, i32 0, i64 1, !dbg !274
  %32 = load i8, i8* %31, align 1, !dbg !274, !tbaa !269
  %33 = icmp eq i8 %32, 0, !dbg !278
  br i1 %33, label %34, label %57, !dbg !279

; <label>:34:                                     ; preds = %30
  %35 = getelementptr inbounds %struct.eth_hdr, %struct.eth_hdr* %22, i64 0, i32 0, i32 0, i64 2, !dbg !280
  %36 = load i8, i8* %35, align 1, !dbg !280, !tbaa !269
  %37 = icmp eq i8 %36, 94, !dbg !281
  br i1 %37, label %38, label %57, !dbg !282

; <label>:38:                                     ; preds = %34
  %39 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 5, !dbg !283
  %40 = load i8, i8* %39, align 1, !dbg !285, !tbaa !286
  %41 = or i8 %40, 16, !dbg !285
  store i8 %41, i8* %39, align 1, !dbg !285, !tbaa !286
  br label %57, !dbg !287

; <label>:42:                                     ; preds = %29
  %43 = getelementptr inbounds %struct.eth_hdr, %struct.eth_hdr* %22, i64 0, i32 0, i32 0, i64 1, !dbg !288
  %44 = load i8, i8* %43, align 1, !dbg !288, !tbaa !269
  %45 = icmp eq i8 %44, 51, !dbg !290
  br i1 %45, label %46, label %50, !dbg !291

; <label>:46:                                     ; preds = %42
  %47 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 5, !dbg !292
  %48 = load i8, i8* %47, align 1, !dbg !294, !tbaa !286
  %49 = or i8 %48, 16, !dbg !294
  store i8 %49, i8* %47, align 1, !dbg !294, !tbaa !286
  br label %57, !dbg !295

; <label>:50:                                     ; preds = %29, %42
  %51 = tail call i32 @memcmp(i8* %25, i8* getelementptr inbounds (%struct.eth_addr, %struct.eth_addr* @ethbroadcast, i64 0, i32 0, i64 0), i64 6) #7, !dbg !296
  %52 = icmp eq i32 %51, 0, !dbg !296
  br i1 %52, label %53, label %57, !dbg !298

; <label>:53:                                     ; preds = %50
  %54 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 5, !dbg !299
  %55 = load i8, i8* %54, align 1, !dbg !301, !tbaa !286
  %56 = or i8 %55, 8, !dbg !301
  store i8 %56, i8* %54, align 1, !dbg !301, !tbaa !286
  br label %57, !dbg !302

; <label>:57:                                     ; preds = %19, %38, %34, %30, %50, %53, %46
  switch i16 %24, label %90 [
    i16 8, label %58
    i16 1544, label %68
    i16 -8826, label %82
  ], !dbg !303

; <label>:58:                                     ; preds = %57
  %59 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 21, !dbg !304
  %60 = load i8, i8* %59, align 1, !dbg !304, !tbaa !307
  %61 = and i8 %60, 8, !dbg !308
  %62 = icmp eq i8 %61, 0, !dbg !308
  br i1 %62, label %95, label %63, !dbg !309

; <label>:63:                                     ; preds = %58
  %64 = tail call zeroext i8 @pbuf_remove_header(%struct.pbuf* nonnull %0, i64 14) #7, !dbg !310
  %65 = icmp eq i8 %64, 0, !dbg !310
  br i1 %65, label %66, label %95, !dbg !312

; <label>:66:                                     ; preds = %63
  %67 = tail call signext i8 @ip4_input(%struct.pbuf* nonnull %0, %struct.netif* nonnull %1) #7, !dbg !313
  br label %97, !dbg !315

; <label>:68:                                     ; preds = %57
  %69 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 21, !dbg !316
  %70 = load i8, i8* %69, align 1, !dbg !316, !tbaa !307
  %71 = and i8 %70, 8, !dbg !318
  %72 = icmp eq i8 %71, 0, !dbg !318
  br i1 %72, label %95, label %73, !dbg !319

; <label>:73:                                     ; preds = %68
  %74 = tail call zeroext i8 @pbuf_remove_header(%struct.pbuf* nonnull %0, i64 14) #7, !dbg !320
  %75 = icmp eq i8 %74, 0, !dbg !320
  br i1 %75, label %81, label %76, !dbg !322

; <label>:76:                                     ; preds = %73
  %77 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 5), align 2, !dbg !323, !tbaa !325
  %78 = add i16 %77, 1, !dbg !323
  store i16 %78, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 5), align 2, !dbg !323, !tbaa !325
  %79 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 3), align 2, !dbg !326, !tbaa !245
  %80 = add i16 %79, 1, !dbg !326
  store i16 %80, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 3), align 2, !dbg !326, !tbaa !245
  br label %95, !dbg !327

; <label>:81:                                     ; preds = %73
  tail call void @etharp_input(%struct.pbuf* nonnull %0, %struct.netif* nonnull %1) #7, !dbg !328
  br label %97, !dbg !330

; <label>:82:                                     ; preds = %57
  %83 = load i16, i16* %3, align 2, !dbg !331, !tbaa !228
  %84 = icmp ult i16 %83, 14, !dbg !333
  br i1 %84, label %95, label %85, !dbg !334

; <label>:85:                                     ; preds = %82
  %86 = tail call zeroext i8 @pbuf_remove_header(%struct.pbuf* nonnull %0, i64 14) #7, !dbg !335
  %87 = icmp eq i8 %86, 0, !dbg !335
  br i1 %87, label %88, label %95, !dbg !336

; <label>:88:                                     ; preds = %85
  %89 = tail call signext i8 @ip6_input(%struct.pbuf* nonnull %0, %struct.netif* %1) #7, !dbg !337
  br label %97, !dbg !339

; <label>:90:                                     ; preds = %57
  %91 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 8), align 2, !dbg !340, !tbaa !238
  %92 = add i16 %91, 1, !dbg !340
  store i16 %92, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 8), align 2, !dbg !340, !tbaa !238
  %93 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 3), align 2, !dbg !341, !tbaa !245
  %94 = add i16 %93, 1, !dbg !341
  store i16 %94, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 3), align 2, !dbg !341, !tbaa !245
  br label %95, !dbg !342

; <label>:95:                                     ; preds = %63, %58, %68, %85, %82, %90, %76, %6
  %96 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !343
  br label %97, !dbg !344

; <label>:97:                                     ; preds = %66, %81, %88, %95
  ret i8 0, !dbg !345
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
define dso_local signext i8 @ethernet_output(%struct.netif*, %struct.pbuf*, %struct.eth_addr*, %struct.eth_addr*, i16 zeroext) local_unnamed_addr #0 !dbg !346 {
  %6 = tail call zeroext i16 @lwip_htons(i16 zeroext %4) #7, !dbg !363
  %7 = tail call zeroext i8 @pbuf_add_header(%struct.pbuf* %1, i64 14) #7, !dbg !365
  %8 = icmp eq i8 %7, 0, !dbg !368
  br i1 %8, label %9, label %28, !dbg !369

; <label>:9:                                      ; preds = %5
  %10 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %1, i64 0, i32 1, !dbg !370
  %11 = bitcast i8** %10 to %struct.eth_hdr**, !dbg !370
  %12 = load %struct.eth_hdr*, %struct.eth_hdr** %11, align 8, !dbg !370, !tbaa !260
  %13 = getelementptr inbounds %struct.eth_hdr, %struct.eth_hdr* %12, i64 0, i32 2, !dbg !372
  store i16 %6, i16* %13, align 1, !dbg !373, !tbaa !263
  %14 = getelementptr inbounds %struct.eth_hdr, %struct.eth_hdr* %12, i64 0, i32 0, i32 0, i64 0, !dbg !374
  %15 = getelementptr inbounds %struct.eth_addr, %struct.eth_addr* %3, i64 0, i32 0, i64 0, !dbg !374
  %16 = tail call i8* @memcpy(i8* %14, i8* %15, i64 6) #7, !dbg !374
  %17 = getelementptr inbounds %struct.eth_hdr, %struct.eth_hdr* %12, i64 0, i32 1, i32 0, i64 0, !dbg !375
  %18 = getelementptr inbounds %struct.eth_addr, %struct.eth_addr* %2, i64 0, i32 0, i64 0, !dbg !375
  %19 = tail call i8* @memcpy(i8* nonnull %17, i8* %18, i64 6) #7, !dbg !375
  %20 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 20, !dbg !376
  %21 = load i8, i8* %20, align 4, !dbg !376, !tbaa !379
  %22 = icmp eq i8 %21, 6, !dbg !376
  br i1 %22, label %24, label %23, !dbg !380

; <label>:23:                                     ; preds = %9
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0)) #8, !dbg !381
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !384
  tail call void @ukplat_terminate(i32 3) #9, !dbg !384
  unreachable, !dbg !384

; <label>:24:                                     ; preds = %9
  %25 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 10, !dbg !388
  %26 = load i8 (%struct.netif*, %struct.pbuf*)*, i8 (%struct.netif*, %struct.pbuf*)** %25, align 8, !dbg !388, !tbaa !389
  %27 = tail call signext i8 %26(%struct.netif* nonnull %0, %struct.pbuf* nonnull %1) #7, !dbg !390
  br label %31, !dbg !391

; <label>:28:                                     ; preds = %5
  %29 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 0, i32 5), align 2, !dbg !392, !tbaa !393
  %30 = add i16 %29, 1, !dbg !392
  store i16 %30, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 0, i32 5), align 2, !dbg !392, !tbaa !393
  br label %31, !dbg !394

; <label>:31:                                     ; preds = %28, %24
  %32 = phi i8 [ -2, %28 ], [ %27, %24 ], !dbg !395
  ret i8 %32, !dbg !396
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
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !398
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #6, !dbg !398
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !400
  call void @llvm.va_start(i8* nonnull %3), !dbg !400
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @uk_pr_crit.__str.3, i64 0, i64 0), i32 198, i8* %0, %struct.__va_list_tag* nonnull %4) #7, !dbg !401
  call void @llvm.va_end(i8* nonnull %3), !dbg !404
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #6, !dbg !405
  ret void, !dbg !405
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
!272 = !DILocation(line: 148, column: 9, scope: !273)
!273 = distinct !DILexicalBlock(scope: !268, file: !3, line: 146, column: 33)
!274 = !DILocation(line: 150, column: 12, scope: !275)
!275 = distinct !DILexicalBlock(scope: !276, file: !3, line: 150, column: 11)
!276 = distinct !DILexicalBlock(scope: !277, file: !3, line: 148, column: 58)
!277 = distinct !DILexicalBlock(scope: !273, file: !3, line: 148, column: 9)
!278 = !DILocation(line: 150, column: 33, scope: !275)
!279 = !DILocation(line: 150, column: 61, scope: !275)
!280 = !DILocation(line: 151, column: 12, scope: !275)
!281 = !DILocation(line: 151, column: 33, scope: !275)
!282 = !DILocation(line: 150, column: 11, scope: !276)
!283 = !DILocation(line: 153, column: 12, scope: !284)
!284 = distinct !DILexicalBlock(scope: !275, file: !3, line: 151, column: 62)
!285 = !DILocation(line: 153, column: 18, scope: !284)
!286 = !{!229, !231, i64 21}
!287 = !DILocation(line: 154, column: 7, scope: !284)
!288 = !DILocation(line: 159, column: 15, scope: !289)
!289 = distinct !DILexicalBlock(scope: !277, file: !3, line: 158, column: 14)
!290 = !DILocation(line: 159, column: 36, scope: !289)
!291 = !DILocation(line: 158, column: 14, scope: !277)
!292 = !DILocation(line: 161, column: 10, scope: !293)
!293 = distinct !DILexicalBlock(scope: !289, file: !3, line: 159, column: 65)
!294 = !DILocation(line: 161, column: 16, scope: !293)
!295 = !DILocation(line: 162, column: 5, scope: !293)
!296 = !DILocation(line: 164, column: 14, scope: !297)
!297 = distinct !DILexicalBlock(scope: !289, file: !3, line: 164, column: 14)
!298 = !DILocation(line: 164, column: 14, scope: !289)
!299 = !DILocation(line: 166, column: 10, scope: !300)
!300 = distinct !DILexicalBlock(scope: !297, file: !3, line: 164, column: 58)
!301 = !DILocation(line: 166, column: 16, scope: !300)
!302 = !DILocation(line: 167, column: 5, scope: !300)
!303 = !DILocation(line: 170, column: 3, scope: !105)
!304 = !DILocation(line: 174, column: 20, scope: !305)
!305 = distinct !DILexicalBlock(scope: !306, file: !3, line: 174, column: 11)
!306 = distinct !DILexicalBlock(scope: !105, file: !3, line: 170, column: 17)
!307 = !{!255, !231, i64 261}
!308 = !DILocation(line: 174, column: 26, scope: !305)
!309 = !DILocation(line: 174, column: 11, scope: !306)
!310 = !DILocation(line: 178, column: 11, scope: !311)
!311 = distinct !DILexicalBlock(scope: !306, file: !3, line: 178, column: 11)
!312 = !DILocation(line: 178, column: 11, scope: !306)
!313 = !DILocation(line: 186, column: 9, scope: !314)
!314 = distinct !DILexicalBlock(scope: !311, file: !3, line: 184, column: 14)
!315 = !DILocation(line: 188, column: 7, scope: !306)
!316 = !DILocation(line: 191, column: 20, scope: !317)
!317 = distinct !DILexicalBlock(scope: !306, file: !3, line: 191, column: 11)
!318 = !DILocation(line: 191, column: 26, scope: !317)
!319 = !DILocation(line: 191, column: 11, scope: !306)
!320 = !DILocation(line: 195, column: 11, scope: !321)
!321 = distinct !DILexicalBlock(scope: !306, file: !3, line: 195, column: 11)
!322 = !DILocation(line: 195, column: 11, scope: !306)
!323 = !DILocation(line: 200, column: 9, scope: !324)
!324 = distinct !DILexicalBlock(scope: !321, file: !3, line: 195, column: 51)
!325 = !{!239, !233, i64 34}
!326 = !DILocation(line: 201, column: 9, scope: !324)
!327 = !DILocation(line: 202, column: 9, scope: !324)
!328 = !DILocation(line: 205, column: 9, scope: !329)
!329 = distinct !DILexicalBlock(scope: !321, file: !3, line: 203, column: 14)
!330 = !DILocation(line: 207, column: 7, scope: !306)
!331 = !DILocation(line: 222, column: 15, scope: !332)
!332 = distinct !DILexicalBlock(scope: !306, file: !3, line: 222, column: 11)
!333 = !DILocation(line: 222, column: 19, scope: !332)
!334 = !DILocation(line: 222, column: 38, scope: !332)
!335 = !DILocation(line: 222, column: 41, scope: !332)
!336 = !DILocation(line: 222, column: 11, scope: !306)
!337 = !DILocation(line: 229, column: 9, scope: !338)
!338 = distinct !DILexicalBlock(scope: !332, file: !3, line: 227, column: 14)
!339 = !DILocation(line: 231, column: 7, scope: !306)
!340 = !DILocation(line: 240, column: 7, scope: !306)
!341 = !DILocation(line: 241, column: 7, scope: !306)
!342 = !DILocation(line: 243, column: 7, scope: !306)
!343 = !DILocation(line: 251, column: 3, scope: !105)
!344 = !DILocation(line: 252, column: 3, scope: !105)
!345 = !DILocation(line: 253, column: 1, scope: !105)
!346 = distinct !DISubprogram(name: "ethernet_output", scope: !3, file: !3, line: 270, type: !347, isLocal: false, isDefinition: true, scopeLine: 272, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !350)
!347 = !DISubroutineType(types: !348)
!348 = !{!108, !125, !113, !349, !349, !60}
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!350 = !{!351, !352, !353, !354, !355, !356, !357}
!351 = !DILocalVariable(name: "netif", arg: 1, scope: !346, file: !3, line: 270, type: !125)
!352 = !DILocalVariable(name: "p", arg: 2, scope: !346, file: !3, line: 270, type: !113)
!353 = !DILocalVariable(name: "src", arg: 3, scope: !346, file: !3, line: 271, type: !349)
!354 = !DILocalVariable(name: "dst", arg: 4, scope: !346, file: !3, line: 271, type: !349)
!355 = !DILocalVariable(name: "eth_type", arg: 5, scope: !346, file: !3, line: 272, type: !60)
!356 = !DILocalVariable(name: "ethhdr", scope: !346, file: !3, line: 273, type: !47)
!357 = !DILocalVariable(name: "eth_type_be", scope: !346, file: !3, line: 274, type: !60)
!358 = !DILocation(line: 270, column: 32, scope: !346)
!359 = !DILocation(line: 270, column: 53, scope: !346)
!360 = !DILocation(line: 271, column: 41, scope: !346)
!361 = !DILocation(line: 271, column: 70, scope: !346)
!362 = !DILocation(line: 272, column: 23, scope: !346)
!363 = !DILocation(line: 274, column: 23, scope: !346)
!364 = !DILocation(line: 274, column: 9, scope: !346)
!365 = !DILocation(line: 294, column: 9, scope: !366)
!366 = distinct !DILexicalBlock(scope: !367, file: !3, line: 294, column: 9)
!367 = distinct !DILexicalBlock(scope: !346, file: !3, line: 293, column: 3)
!368 = !DILocation(line: 294, column: 44, scope: !366)
!369 = !DILocation(line: 294, column: 9, scope: !367)
!370 = !DILocation(line: 301, column: 33, scope: !346)
!371 = !DILocation(line: 273, column: 19, scope: !346)
!372 = !DILocation(line: 302, column: 11, scope: !346)
!373 = !DILocation(line: 302, column: 16, scope: !346)
!374 = !DILocation(line: 303, column: 3, scope: !346)
!375 = !DILocation(line: 304, column: 3, scope: !346)
!376 = !DILocation(line: 306, column: 3, scope: !377)
!377 = distinct !DILexicalBlock(scope: !378, file: !3, line: 306, column: 3)
!378 = distinct !DILexicalBlock(scope: !346, file: !3, line: 306, column: 3)
!379 = !{!255, !231, i64 260}
!380 = !DILocation(line: 306, column: 3, scope: !378)
!381 = !DILocation(line: 306, column: 3, scope: !382)
!382 = distinct !DILexicalBlock(scope: !383, file: !3, line: 306, column: 3)
!383 = distinct !DILexicalBlock(scope: !377, file: !3, line: 306, column: 3)
!384 = !DILocation(line: 306, column: 3, scope: !385)
!385 = distinct !DILexicalBlock(scope: !386, file: !3, line: 306, column: 3)
!386 = distinct !DILexicalBlock(scope: !387, file: !3, line: 306, column: 3)
!387 = distinct !DILexicalBlock(scope: !382, file: !3, line: 306, column: 3)
!388 = !DILocation(line: 312, column: 17, scope: !346)
!389 = !{!255, !230, i64 200}
!390 = !DILocation(line: 312, column: 10, scope: !346)
!391 = !DILocation(line: 312, column: 3, scope: !346)
!392 = !DILocation(line: 317, column: 3, scope: !346)
!393 = !{!239, !233, i64 10}
!394 = !DILocation(line: 318, column: 3, scope: !346)
!395 = !DILocation(line: 0, scope: !346)
!396 = !DILocation(line: 319, column: 1, scope: !346)
!397 = !DILocation(line: 194, column: 43, scope: !70)
!398 = !DILocation(line: 196, column: 2, scope: !70)
!399 = !DILocation(line: 196, column: 10, scope: !70)
!400 = !DILocation(line: 197, column: 2, scope: !70)
!401 = !DILocation(line: 198, column: 2, scope: !402)
!402 = distinct !DILexicalBlock(scope: !403, file: !71, line: 198, column: 2)
!403 = distinct !DILexicalBlock(scope: !70, file: !71, line: 198, column: 2)
!404 = !DILocation(line: 199, column: 2, scope: !70)
!405 = !DILocation(line: 200, column: 1, scope: !70)
