; ModuleID = '/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/ipv4/icmp.c'
source_filename = "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/ipv4/icmp.c"
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
%struct.icmp_echo_hdr = type { i8, i8, i16, i16, i16 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@lwip_stats = external dso_local local_unnamed_addr global %struct.stats_, align 2
@ip_data = external dso_local global %struct.ip_globals, align 8
@.str = private unnamed_addr constant [53 x i8] c"icmp_input: moving r->payload to icmp header failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Assertion failure: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"!(1)\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"icmp_input: restoring original p->payload failed\0A\00", align 1
@uk_pr_crit.__str = internal global [8 x i8] c"liblwip\00", section ".data_shared", align 1, !dbg !0
@uk_pr_crit.__str.4 = internal global [7 x i8] c"icmp.c\00", section ".data_shared", align 1, !dbg !118
@.str.5 = private unnamed_addr constant [44 x i8] c"check that first pbuf can hold icmp message\00", align 1

; Function Attrs: noredzone nounwind
define dso_local void @icmp_input(%struct.pbuf*, %struct.netif*) local_unnamed_addr #0 !dbg !145 {
  %3 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 4, i32 1), align 2, !dbg !279, !tbaa !280
  %4 = add i16 %3, 1, !dbg !279
  store i16 %4, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 4, i32 1), align 2, !dbg !279, !tbaa !280
  %5 = load %struct.ip_hdr*, %struct.ip_hdr** getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 2), align 8, !dbg !289, !tbaa !290
  %6 = getelementptr inbounds %struct.ip_hdr, %struct.ip_hdr* %5, i64 0, i32 0, !dbg !295
  %7 = load i8, i8* %6, align 1, !dbg !295, !tbaa !296
  %8 = shl i8 %7, 2, !dbg !295
  %9 = and i8 %8, 60, !dbg !295
  %10 = zext i8 %9 to i16, !dbg !295
  %11 = icmp ult i8 %9, 20, !dbg !301
  br i1 %11, label %146, label %12, !dbg !303

; <label>:12:                                     ; preds = %2
  %13 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 3, !dbg !304
  %14 = load i16, i16* %13, align 2, !dbg !304, !tbaa !306
  %15 = icmp ult i16 %14, 4, !dbg !308
  br i1 %15, label %146, label %16, !dbg !309

; <label>:16:                                     ; preds = %12
  %17 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 1, !dbg !310
  %18 = load i8*, i8** %17, align 8, !dbg !310, !tbaa !311
  %19 = load i8, i8* %18, align 1, !dbg !312, !tbaa !313
  switch i8 %19, label %138 [
    i8 0, label %143
    i8 8, label %20
  ], !dbg !315

; <label>:20:                                     ; preds = %16
  %21 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !316, !tbaa !313
  %22 = and i32 %21, 240, !dbg !316
  %23 = icmp eq i32 %22, 224, !dbg !316
  br i1 %23, label %150, label %24, !dbg !318

; <label>:24:                                     ; preds = %20
  %25 = load %struct.netif*, %struct.netif** getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 0), align 8, !dbg !319, !tbaa !321
  %26 = tail call zeroext i8 @ip4_addr_isbroadcast_u32(i32 %21, %struct.netif* %25) #7, !dbg !319
  %27 = icmp eq i8 %26, 0, !dbg !319
  br i1 %27, label %28, label %150, !dbg !322

; <label>:28:                                     ; preds = %24
  %29 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 2, !dbg !323
  %30 = load i16, i16* %29, align 8, !dbg !323, !tbaa !325
  %31 = icmp ult i16 %30, 8, !dbg !326
  br i1 %31, label %146, label %32, !dbg !327

; <label>:32:                                     ; preds = %28
  %33 = icmp eq %struct.netif* %1, null, !dbg !328
  br i1 %33, label %39, label %34, !dbg !328

; <label>:34:                                     ; preds = %32
  %35 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 16, !dbg !328
  %36 = load i16, i16* %35, align 8, !dbg !328, !tbaa !330
  %37 = and i16 %36, 2048, !dbg !328
  %38 = icmp eq i16 %37, 0, !dbg !328
  br i1 %38, label %46, label %39, !dbg !332

; <label>:39:                                     ; preds = %34, %32
  %40 = tail call zeroext i16 @inet_chksum_pbuf(%struct.pbuf* nonnull %0) #7, !dbg !333
  %41 = icmp eq i16 %40, 0, !dbg !336
  br i1 %41, label %46, label %42, !dbg !337

; <label>:42:                                     ; preds = %39
  %43 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !338
  %44 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 4, i32 4), align 2, !dbg !340, !tbaa !341
  %45 = add i16 %44, 1, !dbg !340
  store i16 %45, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 4, i32 4), align 2, !dbg !340, !tbaa !341
  br label %154, !dbg !342

; <label>:46:                                     ; preds = %39, %34
  %47 = add nuw nsw i8 %9, 14, !dbg !343
  %48 = zext i8 %47 to i64, !dbg !344
  %49 = tail call zeroext i8 @pbuf_add_header(%struct.pbuf* nonnull %0, i64 %48) #7, !dbg !345
  %50 = icmp eq i8 %49, 0, !dbg !345
  br i1 %50, label %81, label %51, !dbg !346

; <label>:51:                                     ; preds = %46
  %52 = load i16, i16* %29, align 8, !dbg !347, !tbaa !325
  %53 = add i16 %52, %10, !dbg !348
  %54 = icmp ult i16 %53, %52, !dbg !350
  br i1 %54, label %150, label %55, !dbg !352

; <label>:55:                                     ; preds = %51
  %56 = tail call %struct.pbuf* @pbuf_alloc(i32 14, i16 zeroext %53, i32 640) #7, !dbg !353
  %57 = icmp eq %struct.pbuf* %56, null, !dbg !355
  br i1 %57, label %150, label %58, !dbg !357

; <label>:58:                                     ; preds = %55
  %59 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %56, i64 0, i32 3, !dbg !358
  %60 = load i16, i16* %59, align 2, !dbg !358, !tbaa !306
  %61 = zext i16 %60 to i64, !dbg !360
  %62 = zext i8 %9 to i64, !dbg !361
  %63 = add nuw nsw i64 %62, 8, !dbg !362
  %64 = icmp ugt i64 %63, %61, !dbg !363
  br i1 %64, label %65, label %67, !dbg !364

; <label>:65:                                     ; preds = %58
  %66 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %56) #7, !dbg !365
  br label %150, !dbg !367

; <label>:67:                                     ; preds = %58
  %68 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %56, i64 0, i32 1, !dbg !368
  %69 = load i8*, i8** %68, align 8, !dbg !368, !tbaa !311
  %70 = tail call i8* @memcpy(i8* %69, i8* %6, i64 %62) #7, !dbg !368
  %71 = tail call zeroext i8 @pbuf_remove_header(%struct.pbuf* nonnull %56, i64 %62) #7, !dbg !369
  %72 = icmp eq i8 %71, 0, !dbg !369
  br i1 %72, label %74, label %73, !dbg !371

; <label>:73:                                     ; preds = %67
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0)) #8, !dbg !372
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !378
  tail call void @ukplat_terminate(i32 3) #9, !dbg !378
  unreachable, !dbg !378

; <label>:74:                                     ; preds = %67
  %75 = tail call signext i8 @pbuf_copy(%struct.pbuf* nonnull %56, %struct.pbuf* nonnull %0) #7, !dbg !382
  %76 = icmp eq i8 %75, 0, !dbg !384
  br i1 %76, label %79, label %77, !dbg !385

; <label>:77:                                     ; preds = %74
  %78 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %56) #7, !dbg !386
  br label %150, !dbg !388

; <label>:79:                                     ; preds = %74
  %80 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !389
  br label %87

; <label>:81:                                     ; preds = %46
  %82 = tail call zeroext i8 @pbuf_remove_header(%struct.pbuf* nonnull %0, i64 %48) #7, !dbg !390
  %83 = icmp eq i8 %82, 0, !dbg !390
  br i1 %83, label %84, label %86, !dbg !393

; <label>:84:                                     ; preds = %81
  %85 = zext i8 %9 to i64, !dbg !394
  br label %87, !dbg !393

; <label>:86:                                     ; preds = %81
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !395
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !401
  tail call void @ukplat_terminate(i32 3) #9, !dbg !401
  unreachable, !dbg !401

; <label>:87:                                     ; preds = %84, %79
  %88 = phi i64 [ %85, %84 ], [ %62, %79 ], !dbg !394
  %89 = phi i8** [ %17, %84 ], [ %68, %79 ], !dbg !405
  %90 = phi %struct.pbuf* [ %0, %84 ], [ %56, %79 ]
  %91 = bitcast i8** %89 to %struct.icmp_echo_hdr**, !dbg !405
  %92 = load %struct.icmp_echo_hdr*, %struct.icmp_echo_hdr** %91, align 8, !dbg !405, !tbaa !311
  %93 = tail call zeroext i8 @pbuf_add_header(%struct.pbuf* nonnull %90, i64 %88) #7, !dbg !407
  %94 = icmp eq i8 %93, 0, !dbg !407
  br i1 %94, label %95, label %143, !dbg !408

; <label>:95:                                     ; preds = %87
  %96 = load i8*, i8** %89, align 8, !dbg !409, !tbaa !311
  %97 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !411, !tbaa !412
  %98 = getelementptr inbounds i8, i8* %96, i64 12, !dbg !411
  %99 = bitcast i8* %98 to i32*, !dbg !411
  store i32 %97, i32* %99, align 1, !dbg !411, !tbaa !414
  %100 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !415, !tbaa !313
  %101 = getelementptr inbounds i8, i8* %96, i64 16, !dbg !415
  %102 = bitcast i8* %101 to i32*, !dbg !415
  store i32 %100, i32* %102, align 1, !dbg !415, !tbaa !416
  %103 = getelementptr inbounds %struct.icmp_echo_hdr, %struct.icmp_echo_hdr* %92, i64 0, i32 0, !dbg !417
  store i8 0, i8* %103, align 1, !dbg !417, !tbaa !418
  br i1 %33, label %109, label %104, !dbg !420

; <label>:104:                                    ; preds = %95
  %105 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 16, !dbg !420
  %106 = load i16, i16* %105, align 8, !dbg !420, !tbaa !330
  %107 = and i16 %106, 8, !dbg !420
  %108 = icmp eq i16 %107, 0, !dbg !420
  br i1 %108, label %121, label %109, !dbg !422

; <label>:109:                                    ; preds = %104, %95
  %110 = getelementptr inbounds %struct.icmp_echo_hdr, %struct.icmp_echo_hdr* %92, i64 0, i32 2, !dbg !423
  %111 = load i16, i16* %110, align 1, !dbg !423, !tbaa !426
  %112 = icmp ugt i16 %111, -9, !dbg !427
  %113 = select i1 %112, i16 9, i16 8, !dbg !428
  %114 = add i16 %111, %113, !dbg !428
  store i16 %114, i16* %110, align 1, !dbg !429, !tbaa !426
  %115 = getelementptr inbounds i8, i8* %96, i64 8, !dbg !431
  store i8 -1, i8* %115, align 1, !dbg !431, !tbaa !432
  %116 = getelementptr inbounds i8, i8* %96, i64 10, !dbg !433
  %117 = bitcast i8* %116 to i16*, !dbg !433
  store i16 0, i16* %117, align 1, !dbg !433, !tbaa !434
  br i1 %33, label %131, label %118, !dbg !435

; <label>:118:                                    ; preds = %109
  %119 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 16
  %120 = load i16, i16* %119, align 8, !dbg !435, !tbaa !330
  br label %126, !dbg !435

; <label>:121:                                    ; preds = %104
  %122 = getelementptr inbounds %struct.icmp_echo_hdr, %struct.icmp_echo_hdr* %92, i64 0, i32 2, !dbg !437
  store i16 0, i16* %122, align 1, !dbg !439, !tbaa !426
  %123 = getelementptr inbounds i8, i8* %96, i64 8, !dbg !431
  store i8 -1, i8* %123, align 1, !dbg !431, !tbaa !432
  %124 = getelementptr inbounds i8, i8* %96, i64 10, !dbg !433
  %125 = bitcast i8* %124 to i16*, !dbg !433
  store i16 0, i16* %125, align 1, !dbg !433, !tbaa !434
  br label %126, !dbg !435

; <label>:126:                                    ; preds = %118, %121
  %127 = phi i16 [ %106, %121 ], [ %120, %118 ], !dbg !435
  %128 = phi i16* [ %125, %121 ], [ %117, %118 ]
  %129 = and i16 %127, 1, !dbg !435
  %130 = icmp eq i16 %129, 0, !dbg !435
  br i1 %130, label %134, label %131, !dbg !440

; <label>:131:                                    ; preds = %126, %109
  %132 = phi i16* [ %128, %126 ], [ %117, %109 ]
  %133 = tail call zeroext i16 @inet_chksum(i8* nonnull %96, i16 zeroext %10) #7, !dbg !441
  store i16 %133, i16* %132, align 1, !dbg !441, !tbaa !434
  br label %134, !dbg !443

; <label>:134:                                    ; preds = %126, %131
  %135 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 4, i32 0), align 2, !dbg !444, !tbaa !445
  %136 = add i16 %135, 1, !dbg !444
  store i16 %136, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 4, i32 0), align 2, !dbg !444, !tbaa !445
  %137 = tail call signext i8 @ip4_output_if(%struct.pbuf* nonnull %90, %struct.ip4_addr* bitcast (%union.anon* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0) to %struct.ip4_addr*), %struct.ip4_addr* null, i8 zeroext -1, i8 zeroext 0, i8 zeroext 1, %struct.netif* %1) #7, !dbg !446
  br label %143

; <label>:138:                                    ; preds = %16
  %139 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 4, i32 8), align 2, !dbg !448, !tbaa !449
  %140 = add i16 %139, 1, !dbg !448
  store i16 %140, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 4, i32 8), align 2, !dbg !448, !tbaa !449
  %141 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 4, i32 3), align 2, !dbg !450, !tbaa !451
  %142 = add i16 %141, 1, !dbg !450
  store i16 %142, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 4, i32 3), align 2, !dbg !450, !tbaa !451
  br label %143, !dbg !452

; <label>:143:                                    ; preds = %16, %87, %134, %138
  %144 = phi %struct.pbuf* [ %0, %138 ], [ %90, %87 ], [ %90, %134 ], [ %0, %16 ]
  %145 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %144) #7, !dbg !453
  br label %154, !dbg !454

; <label>:146:                                    ; preds = %28, %12, %2
  %147 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %0) #7, !dbg !455
  %148 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 4, i32 5), align 2, !dbg !456, !tbaa !457
  %149 = add i16 %148, 1, !dbg !456
  store i16 %149, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 4, i32 5), align 2, !dbg !456, !tbaa !457
  br label %154, !dbg !458

; <label>:150:                                    ; preds = %55, %51, %77, %65, %24, %20
  %151 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !459
  %152 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 4, i32 10), align 2, !dbg !460, !tbaa !461
  %153 = add i16 %152, 1, !dbg !460
  store i16 %153, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 4, i32 10), align 2, !dbg !460, !tbaa !461
  br label %154, !dbg !462

; <label>:154:                                    ; preds = %150, %146, %143, %42
  ret void, !dbg !463
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local zeroext i8 @ip4_addr_isbroadcast_u32(i32, %struct.netif*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local zeroext i16 @inet_chksum_pbuf(%struct.pbuf*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local zeroext i8 @pbuf_free(%struct.pbuf*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local zeroext i8 @pbuf_add_header(%struct.pbuf*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.pbuf* @pbuf_alloc(i32, i16 zeroext, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local zeroext i8 @pbuf_remove_header(%struct.pbuf*, i64) local_unnamed_addr #3

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8*, ...) unnamed_addr #4 !dbg !2 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !465
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #6, !dbg !465
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !467
  call void @llvm.va_start(i8* nonnull %3), !dbg !467
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @uk_pr_crit.__str.4, i64 0, i64 0), i32 198, i8* %0, %struct.__va_list_tag* nonnull %4) #7, !dbg !468
  call void @llvm.va_end(i8* nonnull %3), !dbg !471
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #6, !dbg !472
  ret void, !dbg !472
}

; Function Attrs: noredzone noreturn
declare dso_local void @ukplat_terminate(i32) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local signext i8 @pbuf_copy(%struct.pbuf*, %struct.pbuf*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local zeroext i16 @inet_chksum(i8*, i16 zeroext) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local signext i8 @ip4_output_if(%struct.pbuf*, %struct.ip4_addr*, %struct.ip4_addr*, i8 zeroext, i8 zeroext, i8 zeroext, %struct.netif*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @icmp_dest_unreach(%struct.pbuf* nocapture readonly, i32) local_unnamed_addr #0 !dbg !473 {
  %3 = trunc i32 %1 to i8, !dbg !481
  tail call fastcc void @icmp_send_response(%struct.pbuf* %0, i8 zeroext 3, i8 zeroext %3) #8, !dbg !482
  ret void, !dbg !483
}

; Function Attrs: noredzone nounwind
define internal fastcc void @icmp_send_response(%struct.pbuf* nocapture readonly, i8 zeroext, i8 zeroext) unnamed_addr #0 !dbg !484 {
  %4 = alloca %struct.ip4_addr, align 4
  %5 = bitcast %struct.ip4_addr* %4 to i8*, !dbg !499
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #6, !dbg !499
  %6 = tail call %struct.pbuf* @pbuf_alloc(i32 54, i16 zeroext 36, i32 640) #7, !dbg !500
  %7 = icmp eq %struct.pbuf* %6, null, !dbg !502
  br i1 %7, label %48, label %8, !dbg !504

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %6, i64 0, i32 3, !dbg !505
  %10 = load i16, i16* %9, align 2, !dbg !505, !tbaa !306
  %11 = icmp ugt i16 %10, 35, !dbg !505
  br i1 %11, label %13, label %12, !dbg !508

; <label>:12:                                     ; preds = %8
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !509
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !512
  tail call void @ukplat_terminate(i32 3) #9, !dbg !512
  unreachable, !dbg !512

; <label>:13:                                     ; preds = %8
  %14 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 1, !dbg !516
  %15 = bitcast i8** %14 to %struct.ip_hdr**, !dbg !516
  %16 = load %struct.ip_hdr*, %struct.ip_hdr** %15, align 8, !dbg !516, !tbaa !311
  %17 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %6, i64 0, i32 1, !dbg !518
  %18 = load i8*, i8** %17, align 8, !dbg !518, !tbaa !311
  store i8 %1, i8* %18, align 1, !dbg !519, !tbaa !418
  %19 = getelementptr inbounds i8, i8* %18, i64 1, !dbg !520
  store i8 %2, i8* %19, align 1, !dbg !521, !tbaa !522
  %20 = getelementptr inbounds i8, i8* %18, i64 4, !dbg !523
  %21 = bitcast i8* %20 to i16*, !dbg !523
  store i16 0, i16* %21, align 1, !dbg !524, !tbaa !525
  %22 = getelementptr inbounds i8, i8* %18, i64 6, !dbg !526
  %23 = bitcast i8* %22 to i16*, !dbg !526
  store i16 0, i16* %23, align 1, !dbg !527, !tbaa !528
  %24 = getelementptr inbounds i8, i8* %18, i64 8, !dbg !529
  %25 = getelementptr inbounds %struct.ip_hdr, %struct.ip_hdr* %16, i64 0, i32 0, !dbg !529
  %26 = tail call i8* @memcpy(i8* nonnull %24, i8* %25, i64 28) #7, !dbg !529
  %27 = getelementptr inbounds %struct.ip_hdr, %struct.ip_hdr* %16, i64 0, i32 8, i32 0, !dbg !530
  %28 = load i32, i32* %27, align 1, !dbg !530, !tbaa !414
  %29 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %4, i64 0, i32 0, !dbg !530
  store i32 %28, i32* %29, align 4, !dbg !530, !tbaa !412
  %30 = call %struct.netif* @ip4_route(%struct.ip4_addr* nonnull %4) #7, !dbg !532
  %31 = icmp eq %struct.netif* %30, null, !dbg !534
  br i1 %31, label %46, label %32, !dbg !536

; <label>:32:                                     ; preds = %13
  %33 = getelementptr inbounds i8, i8* %18, i64 2, !dbg !538
  %34 = bitcast i8* %33 to i16*, !dbg !538
  store i16 0, i16* %34, align 1, !dbg !540, !tbaa !426
  %35 = getelementptr inbounds %struct.netif, %struct.netif* %30, i64 0, i32 16, !dbg !541
  %36 = load i16, i16* %35, align 8, !dbg !541, !tbaa !330
  %37 = and i16 %36, 8, !dbg !541
  %38 = icmp eq i16 %37, 0, !dbg !541
  br i1 %38, label %42, label %39, !dbg !543

; <label>:39:                                     ; preds = %32
  %40 = load i16, i16* %9, align 2, !dbg !544, !tbaa !306
  %41 = call zeroext i16 @inet_chksum(i8* nonnull %18, i16 zeroext %40) #7, !dbg !546
  store i16 %41, i16* %34, align 1, !dbg !547, !tbaa !426
  br label %42, !dbg !548

; <label>:42:                                     ; preds = %32, %39
  %43 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 4, i32 0), align 2, !dbg !549, !tbaa !445
  %44 = add i16 %43, 1, !dbg !549
  store i16 %44, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 4, i32 0), align 2, !dbg !549, !tbaa !445
  %45 = call signext i8 @ip4_output_if(%struct.pbuf* nonnull %6, %struct.ip4_addr* null, %struct.ip4_addr* nonnull %4, i8 zeroext -1, i8 zeroext 0, i8 zeroext 1, %struct.netif* nonnull %30) #7, !dbg !550
  br label %46, !dbg !551

; <label>:46:                                     ; preds = %13, %42
  %47 = call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %6) #7, !dbg !552
  br label %48, !dbg !553

; <label>:48:                                     ; preds = %3, %46
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #6, !dbg !553
  ret void, !dbg !553
}

; Function Attrs: noredzone nounwind
define dso_local void @icmp_time_exceeded(%struct.pbuf* nocapture readonly, i32) local_unnamed_addr #0 !dbg !554 {
  %3 = trunc i32 %1 to i8, !dbg !562
  tail call fastcc void @icmp_send_response(%struct.pbuf* %0, i8 zeroext 11, i8 zeroext %3) #8, !dbg !563
  ret void, !dbg !564
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

; Function Attrs: noredzone
declare dso_local void @_uk_vprintk(i32, i8*, i8*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

; Function Attrs: noredzone
declare dso_local %struct.netif* @ip4_route(%struct.ip4_addr*) local_unnamed_addr #3

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

!llvm.module.flags = !{!141, !142, !143}
!llvm.ident = !{!144}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__str", scope: !2, file: !3, line: 198, type: !138, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "uk_pr_crit", scope: !3, file: !3, line: 194, type: !4, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !123)
!3 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukdebug/include/uk/print.h", directory: "/root/.unikraft/apps/redis/build")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6, null}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !73, globals: !117)
!10 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/ipv4/icmp.c", directory: "/root/.unikraft/apps/redis/build")
!11 = !{!12, !18, !26, !32, !39, !60, !69}
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "netif_mac_filter_action", file: !13, line: 156, baseType: !14, size: 32, elements: !15)
!13 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/netif.h", directory: "/root/.unikraft/apps/redis/build")
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !{!16, !17}
!16 = !DIEnumerator(name: "NETIF_DEL_MAC_FILTER", value: 0, isUnsigned: true)
!17 = !DIEnumerator(name: "NETIF_ADD_MAC_FILTER", value: 1, isUnsigned: true)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !19, line: 89, baseType: !14, size: 32, elements: !20)
!19 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/pbuf.h", directory: "/root/.unikraft/apps/redis/build")
!20 = !{!21, !22, !23, !24, !25}
!21 = !DIEnumerator(name: "PBUF_TRANSPORT", value: 74, isUnsigned: true)
!22 = !DIEnumerator(name: "PBUF_IP", value: 54, isUnsigned: true)
!23 = !DIEnumerator(name: "PBUF_LINK", value: 14, isUnsigned: true)
!24 = !DIEnumerator(name: "PBUF_RAW_TX", value: 0, isUnsigned: true)
!25 = !DIEnumerator(name: "PBUF_RAW", value: 0, isUnsigned: true)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !19, line: 145, baseType: !14, size: 32, elements: !27)
!27 = !{!28, !29, !30, !31}
!28 = !DIEnumerator(name: "PBUF_RAM", value: 640, isUnsigned: true)
!29 = !DIEnumerator(name: "PBUF_ROM", value: 1, isUnsigned: true)
!30 = !DIEnumerator(name: "PBUF_REF", value: 65, isUnsigned: true)
!31 = !DIEnumerator(name: "PBUF_POOL", value: 386, isUnsigned: true)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ukplat_gstate", file: !33, line: 68, baseType: !14, size: 32, elements: !34)
!33 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/bootstrap.h", directory: "/root/.unikraft/apps/redis/build")
!34 = !{!35, !36, !37, !38}
!35 = !DIEnumerator(name: "UKPLAT_HALT", value: 0, isUnsigned: true)
!36 = !DIEnumerator(name: "UKPLAT_RESTART", value: 1, isUnsigned: true)
!37 = !DIEnumerator(name: "UKPLAT_SUSPEND", value: 2, isUnsigned: true)
!38 = !DIEnumerator(name: "UKPLAT_CRASH", value: 3, isUnsigned: true)
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !40, line: 53, baseType: !41, size: 32, elements: !42)
!40 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/err.h", directory: "/root/.unikraft/apps/redis/build")
!41 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!42 = !{!43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59}
!43 = !DIEnumerator(name: "ERR_OK", value: 0)
!44 = !DIEnumerator(name: "ERR_MEM", value: -1)
!45 = !DIEnumerator(name: "ERR_BUF", value: -2)
!46 = !DIEnumerator(name: "ERR_TIMEOUT", value: -3)
!47 = !DIEnumerator(name: "ERR_RTE", value: -4)
!48 = !DIEnumerator(name: "ERR_INPROGRESS", value: -5)
!49 = !DIEnumerator(name: "ERR_VAL", value: -6)
!50 = !DIEnumerator(name: "ERR_WOULDBLOCK", value: -7)
!51 = !DIEnumerator(name: "ERR_USE", value: -8)
!52 = !DIEnumerator(name: "ERR_ALREADY", value: -9)
!53 = !DIEnumerator(name: "ERR_ISCONN", value: -10)
!54 = !DIEnumerator(name: "ERR_CONN", value: -11)
!55 = !DIEnumerator(name: "ERR_IF", value: -12)
!56 = !DIEnumerator(name: "ERR_ABRT", value: -13)
!57 = !DIEnumerator(name: "ERR_RST", value: -14)
!58 = !DIEnumerator(name: "ERR_CLSD", value: -15)
!59 = !DIEnumerator(name: "ERR_ARG", value: -16)
!60 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "icmp_dur_type", file: !61, line: 55, baseType: !14, size: 32, elements: !62)
!61 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/icmp.h", directory: "/root/.unikraft/apps/redis/build")
!62 = !{!63, !64, !65, !66, !67, !68}
!63 = !DIEnumerator(name: "ICMP_DUR_NET", value: 0, isUnsigned: true)
!64 = !DIEnumerator(name: "ICMP_DUR_HOST", value: 1, isUnsigned: true)
!65 = !DIEnumerator(name: "ICMP_DUR_PROTO", value: 2, isUnsigned: true)
!66 = !DIEnumerator(name: "ICMP_DUR_PORT", value: 3, isUnsigned: true)
!67 = !DIEnumerator(name: "ICMP_DUR_FRAG", value: 4, isUnsigned: true)
!68 = !DIEnumerator(name: "ICMP_DUR_SR", value: 5, isUnsigned: true)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "icmp_te_type", file: !61, line: 71, baseType: !14, size: 32, elements: !70)
!70 = !{!71, !72}
!71 = !DIEnumerator(name: "ICMP_TE_TTL", value: 0, isUnsigned: true)
!72 = !DIEnumerator(name: "ICMP_TE_FRAG", value: 1, isUnsigned: true)
!73 = !{!74, !81, !82, !85, !86, !90, !99}
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8_t", file: !75, line: 125, baseType: !76)
!75 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/arch.h", directory: "/root/.unikraft/apps/redis/build")
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !77, line: 24, baseType: !78)
!77 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !79, line: 43, baseType: !80)
!79 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!80 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32_t", file: !75, line: 129, baseType: !83)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !77, line: 48, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !79, line: 79, baseType: !14)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16_t", file: !75, line: 127, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !77, line: 36, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !79, line: 57, baseType: !89)
!89 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "icmp_echo_hdr", file: !92, line: 69, size: 64, elements: !93)
!92 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/prot/icmp.h", directory: "/root/.unikraft/apps/redis/build")
!93 = !{!94, !95, !96, !97, !98}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !91, file: !92, line: 70, baseType: !74, size: 8)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !91, file: !92, line: 71, baseType: !74, size: 8, offset: 8)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "chksum", scope: !91, file: !92, line: 72, baseType: !86, size: 16, offset: 16)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !91, file: !92, line: 73, baseType: !86, size: 16, offset: 32)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "seqno", scope: !91, file: !92, line: 74, baseType: !86, size: 16, offset: 48)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_hdr", file: !101, line: 73, size: 160, elements: !102)
!101 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/prot/ip4.h", directory: "/root/.unikraft/apps/redis/build")
!102 = !{!103, !104, !105, !106, !107, !108, !109, !110, !111, !116}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_v_hl", scope: !100, file: !101, line: 75, baseType: !74, size: 8)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_tos", scope: !100, file: !101, line: 77, baseType: !74, size: 8, offset: 8)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_len", scope: !100, file: !101, line: 79, baseType: !86, size: 16, offset: 16)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_id", scope: !100, file: !101, line: 81, baseType: !86, size: 16, offset: 32)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !100, file: !101, line: 83, baseType: !86, size: 16, offset: 48)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_ttl", scope: !100, file: !101, line: 89, baseType: !74, size: 8, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_proto", scope: !100, file: !101, line: 91, baseType: !74, size: 8, offset: 72)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_chksum", scope: !100, file: !101, line: 93, baseType: !86, size: 16, offset: 80)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !100, file: !101, line: 95, baseType: !112, size: 32, offset: 96)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip4_addr_p_t", file: !101, line: 61, baseType: !113)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip4_addr_packed", file: !101, line: 53, size: 32, elements: !114)
!114 = !{!115}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !113, file: !101, line: 54, baseType: !82, size: 32)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !100, file: !101, line: 96, baseType: !112, size: 32, offset: 128)
!117 = !{!0, !118}
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression())
!119 = distinct !DIGlobalVariable(name: "__str", scope: !2, file: !3, line: 198, type: !120, isLocal: true, isDefinition: true)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 56, elements: !121)
!121 = !{!122}
!122 = !DISubrange(count: 7)
!123 = !{!124, !125}
!124 = !DILocalVariable(name: "fmt", arg: 1, scope: !2, file: !3, line: 194, type: !6)
!125 = !DILocalVariable(name: "argp", scope: !2, file: !3, line: 196, type: !126)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !127, line: 32, baseType: !128)
!127 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !10, line: 196, baseType: !129)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 192, elements: !136)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !10, line: 196, size: 192, elements: !131)
!131 = !{!132, !133, !134, !135}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !130, file: !10, line: 196, baseType: !14, size: 32)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !130, file: !10, line: 196, baseType: !14, size: 32, offset: 32)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !130, file: !10, line: 196, baseType: !85, size: 64, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !130, file: !10, line: 196, baseType: !85, size: 64, offset: 128)
!136 = !{!137}
!137 = !DISubrange(count: 1)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 64, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 8)
!141 = !{i32 2, !"Dwarf Version", i32 4}
!142 = !{i32 2, !"Debug Info Version", i32 3}
!143 = !{i32 1, !"wchar_size", i32 4}
!144 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!145 = distinct !DISubprogram(name: "icmp_input", scope: !10, file: !10, line: 80, type: !146, isLocal: false, isDefinition: true, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !258)
!146 = !DISubroutineType(types: !147)
!147 = !{null, !148, !159}
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pbuf", file: !19, line: 186, size: 192, elements: !150)
!150 = !{!151, !152, !153, !154, !155, !156, !157, !158}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !149, file: !19, line: 188, baseType: !148, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !149, file: !19, line: 191, baseType: !85, size: 64, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "tot_len", scope: !149, file: !19, line: 200, baseType: !86, size: 16, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !149, file: !19, line: 203, baseType: !86, size: 16, offset: 144)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "type_internal", scope: !149, file: !19, line: 208, baseType: !74, size: 8, offset: 160)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !149, file: !19, line: 211, baseType: !74, size: 8, offset: 168)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !149, file: !19, line: 218, baseType: !74, size: 8, offset: 176)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "if_idx", scope: !149, file: !19, line: 221, baseType: !74, size: 8, offset: 184)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netif", file: !13, line: 260, size: 2240, elements: !161)
!161 = !{!162, !163, !188, !189, !190, !194, !196, !198, !199, !209, !216, !221, !228, !233, !234, !235, !237, !238, !239, !240, !244, !245, !246, !250, !251, !252, !253}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !160, file: !13, line: 263, baseType: !159, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "ip_addr", scope: !160, file: !13, line: 268, baseType: !164, size: 192, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_addr_t", file: !165, line: 76, baseType: !166)
!165 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip_addr.h", directory: "/root/.unikraft/apps/redis/build")
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_addr", file: !165, line: 69, size: 192, elements: !167)
!167 = !{!168, !187}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "u_addr", scope: !166, file: !165, line: 73, baseType: !169, size: 160)
!169 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !166, file: !165, line: 70, size: 160, elements: !170)
!170 = !{!171, !181}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "ip6", scope: !169, file: !165, line: 71, baseType: !172, size: 160)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip6_addr_t", file: !173, line: 67, baseType: !174)
!173 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip6_addr.h", directory: "/root/.unikraft/apps/redis/build")
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip6_addr", file: !173, line: 59, size: 160, elements: !175)
!175 = !{!176, !180}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !174, file: !173, line: 60, baseType: !177, size: 128)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 128, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 4)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "zone", scope: !174, file: !173, line: 62, baseType: !74, size: 8, offset: 128)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "ip4", scope: !169, file: !165, line: 72, baseType: !182, size: 32)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip4_addr_t", file: !183, line: 57, baseType: !184)
!183 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip4_addr.h", directory: "/root/.unikraft/apps/redis/build")
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip4_addr", file: !183, line: 51, size: 32, elements: !185)
!185 = !{!186}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !184, file: !183, line: 52, baseType: !82, size: 32)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !166, file: !165, line: 75, baseType: !74, size: 8, offset: 160)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "netmask", scope: !160, file: !13, line: 269, baseType: !164, size: 192, offset: 256)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "gw", scope: !160, file: !13, line: 270, baseType: !164, size: 192, offset: 448)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr", scope: !160, file: !13, line: 274, baseType: !191, size: 576, offset: 640)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 576, elements: !192)
!192 = !{!193}
!193 = !DISubrange(count: 3)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_state", scope: !160, file: !13, line: 277, baseType: !195, size: 24, offset: 1216)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 24, elements: !192)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_valid_life", scope: !160, file: !13, line: 282, baseType: !197, size: 96, offset: 1248)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 96, elements: !192)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_pref_life", scope: !160, file: !13, line: 283, baseType: !197, size: 96, offset: 1344)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !160, file: !13, line: 288, baseType: !200, size: 64, offset: 1472)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_input_fn", file: !13, line: 178, baseType: !201)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{!204, !148, !159}
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "err_t", file: !40, line: 96, baseType: !205)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8_t", file: !75, line: 126, baseType: !206)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !77, line: 20, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !79, line: 41, baseType: !208)
!208 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !160, file: !13, line: 294, baseType: !210, size: 64, offset: 1536)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_output_fn", file: !13, line: 189, baseType: !211)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DISubroutineType(types: !213)
!213 = !{!204, !159, !148, !214}
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !182)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "linkoutput", scope: !160, file: !13, line: 299, baseType: !217, size: 64, offset: 1600)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_linkoutput_fn", file: !13, line: 212, baseType: !218)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{!204, !159, !148}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "output_ip6", scope: !160, file: !13, line: 305, baseType: !222, size: 64, offset: 1664)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_output_ip6_fn", file: !13, line: 202, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{!204, !159, !148, !226}
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !172)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "status_callback", scope: !160, file: !13, line: 310, baseType: !229, size: 64, offset: 1728)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_status_callback_fn", file: !13, line: 214, baseType: !230)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DISubroutineType(types: !232)
!232 = !{null, !159}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "remove_callback", scope: !160, file: !13, line: 319, baseType: !229, size: 64, offset: 1792)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !160, file: !13, line: 323, baseType: !85, size: 64, offset: 1856)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !160, file: !13, line: 325, baseType: !236, size: 64, offset: 1920)
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 64, elements: !136)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "chksum_flags", scope: !160, file: !13, line: 332, baseType: !86, size: 16, offset: 1984)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !160, file: !13, line: 335, baseType: !86, size: 16, offset: 2000)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "mtu6", scope: !160, file: !13, line: 338, baseType: !86, size: 16, offset: 2016)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "hwaddr", scope: !160, file: !13, line: 341, baseType: !241, size: 48, offset: 2032)
!241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 48, elements: !242)
!242 = !{!243}
!243 = !DISubrange(count: 6)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "hwaddr_len", scope: !160, file: !13, line: 343, baseType: !74, size: 8, offset: 2080)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !160, file: !13, line: 345, baseType: !74, size: 8, offset: 2088)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !160, file: !13, line: 347, baseType: !247, size: 16, offset: 2096)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 16, elements: !248)
!248 = !{!249}
!249 = !DISubrange(count: 2)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !160, file: !13, line: 350, baseType: !74, size: 8, offset: 2112)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_autoconfig_enabled", scope: !160, file: !13, line: 353, baseType: !74, size: 8, offset: 2120)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "rs_count", scope: !160, file: !13, line: 357, baseType: !74, size: 8, offset: 2128)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "mld_mac_filter", scope: !160, file: !13, line: 377, baseType: !254, size: 64, offset: 2176)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_mld_mac_filter_fn", file: !13, line: 222, baseType: !255)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DISubroutineType(types: !257)
!257 = !{!204, !159, !226, !12}
!258 = !{!259, !260, !261, !262, !263, !266, !267, !268, !272, !273, !276}
!259 = !DILocalVariable(name: "p", arg: 1, scope: !145, file: !10, line: 80, type: !148)
!260 = !DILocalVariable(name: "inp", arg: 2, scope: !145, file: !10, line: 80, type: !159)
!261 = !DILocalVariable(name: "type", scope: !145, file: !10, line: 82, type: !74)
!262 = !DILocalVariable(name: "iecho", scope: !145, file: !10, line: 86, type: !90)
!263 = !DILocalVariable(name: "iphdr_in", scope: !145, file: !10, line: 87, type: !264)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!266 = !DILocalVariable(name: "hlen", scope: !145, file: !10, line: 88, type: !86)
!267 = !DILocalVariable(name: "src", scope: !145, file: !10, line: 89, type: !214)
!268 = !DILocalVariable(name: "r", scope: !269, file: !10, line: 161, type: !148)
!269 = distinct !DILexicalBlock(scope: !270, file: !10, line: 157, column: 85)
!270 = distinct !DILexicalBlock(scope: !271, file: !10, line: 157, column: 11)
!271 = distinct !DILexicalBlock(scope: !145, file: !10, line: 111, column: 17)
!272 = !DILocalVariable(name: "alloc_len", scope: !269, file: !10, line: 162, type: !86)
!273 = !DILocalVariable(name: "ret", scope: !274, file: !10, line: 211, type: !204)
!274 = distinct !DILexicalBlock(scope: !275, file: !10, line: 210, column: 14)
!275 = distinct !DILexicalBlock(scope: !271, file: !10, line: 208, column: 11)
!276 = !DILocalVariable(name: "iphdr", scope: !274, file: !10, line: 212, type: !99)
!277 = !DILocation(line: 80, column: 25, scope: !145)
!278 = !DILocation(line: 80, column: 42, scope: !145)
!279 = !DILocation(line: 91, column: 3, scope: !145)
!280 = !{!281, !283, i64 98}
!281 = !{!"stats_", !282, i64 0, !282, i64 24, !282, i64 48, !282, i64 72, !282, i64 96, !282, i64 120, !282, i64 144, !286, i64 168, !282, i64 186, !282, i64 210, !282, i64 234, !288, i64 258, !282, i64 286}
!282 = !{!"stats_proto", !283, i64 0, !283, i64 2, !283, i64 4, !283, i64 6, !283, i64 8, !283, i64 10, !283, i64 12, !283, i64 14, !283, i64 16, !283, i64 18, !283, i64 20, !283, i64 22}
!283 = !{!"short", !284, i64 0}
!284 = !{!"omnipotent char", !285, i64 0}
!285 = !{!"Simple C/C++ TBAA"}
!286 = !{!"stats_sys", !287, i64 0, !287, i64 6, !287, i64 12}
!287 = !{!"stats_syselem", !283, i64 0, !283, i64 2, !283, i64 4}
!288 = !{!"stats_igmp", !283, i64 0, !283, i64 2, !283, i64 4, !283, i64 6, !283, i64 8, !283, i64 10, !283, i64 12, !283, i64 14, !283, i64 16, !283, i64 18, !283, i64 20, !283, i64 22, !283, i64 24, !283, i64 26}
!289 = !DILocation(line: 94, column: 14, scope: !145)
!290 = !{!291, !292, i64 16}
!291 = !{!"ip_globals", !292, i64 0, !292, i64 8, !292, i64 16, !292, i64 24, !283, i64 32, !293, i64 36, !293, i64 60}
!292 = !{!"any pointer", !284, i64 0}
!293 = !{!"ip_addr", !284, i64 0, !284, i64 20}
!294 = !DILocation(line: 87, column: 24, scope: !145)
!295 = !DILocation(line: 95, column: 10, scope: !145)
!296 = !{!297, !284, i64 0}
!297 = !{!"ip_hdr", !284, i64 0, !284, i64 1, !283, i64 2, !283, i64 4, !283, i64 6, !284, i64 8, !284, i64 9, !283, i64 10, !298, i64 12, !298, i64 16}
!298 = !{!"ip4_addr_packed", !299, i64 0}
!299 = !{!"int", !284, i64 0}
!300 = !DILocation(line: 88, column: 9, scope: !145)
!301 = !DILocation(line: 96, column: 12, scope: !302)
!302 = distinct !DILexicalBlock(scope: !145, file: !10, line: 96, column: 7)
!303 = !DILocation(line: 96, column: 7, scope: !145)
!304 = !DILocation(line: 100, column: 10, scope: !305)
!305 = distinct !DILexicalBlock(scope: !145, file: !10, line: 100, column: 7)
!306 = !{!307, !283, i64 18}
!307 = !{!"pbuf", !292, i64 0, !292, i64 8, !283, i64 16, !283, i64 18, !284, i64 20, !284, i64 21, !284, i64 22, !284, i64 23}
!308 = !DILocation(line: 100, column: 14, scope: !305)
!309 = !DILocation(line: 100, column: 7, scope: !145)
!310 = !DILocation(line: 105, column: 23, scope: !145)
!311 = !{!307, !292, i64 8}
!312 = !DILocation(line: 105, column: 10, scope: !145)
!313 = !{!284, !284, i64 0}
!314 = !DILocation(line: 82, column: 8, scope: !145)
!315 = !DILocation(line: 111, column: 3, scope: !145)
!316 = !DILocation(line: 121, column: 11, scope: !317)
!317 = distinct !DILexicalBlock(scope: !271, file: !10, line: 121, column: 11)
!318 = !DILocation(line: 121, column: 11, scope: !271)
!319 = !DILocation(line: 131, column: 11, scope: !320)
!320 = distinct !DILexicalBlock(scope: !271, file: !10, line: 131, column: 11)
!321 = !{!291, !292, i64 0}
!322 = !DILocation(line: 131, column: 11, scope: !271)
!323 = !DILocation(line: 141, column: 14, scope: !324)
!324 = distinct !DILexicalBlock(scope: !271, file: !10, line: 141, column: 11)
!325 = !{!307, !283, i64 16}
!326 = !DILocation(line: 141, column: 22, scope: !324)
!327 = !DILocation(line: 141, column: 11, scope: !271)
!328 = !DILocation(line: 146, column: 7, scope: !329)
!329 = distinct !DILexicalBlock(scope: !271, file: !10, line: 146, column: 7)
!330 = !{!331, !283, i64 248}
!331 = !{!"netif", !292, i64 0, !293, i64 8, !293, i64 32, !293, i64 56, !284, i64 80, !284, i64 152, !284, i64 156, !284, i64 168, !292, i64 184, !292, i64 192, !292, i64 200, !292, i64 208, !292, i64 216, !292, i64 224, !292, i64 232, !284, i64 240, !283, i64 248, !283, i64 250, !283, i64 252, !284, i64 254, !284, i64 260, !284, i64 261, !284, i64 262, !284, i64 264, !284, i64 265, !284, i64 266, !292, i64 272}
!332 = !DILocation(line: 146, column: 7, scope: !271)
!333 = !DILocation(line: 147, column: 13, scope: !334)
!334 = distinct !DILexicalBlock(scope: !335, file: !10, line: 147, column: 13)
!335 = distinct !DILexicalBlock(scope: !329, file: !10, line: 146, column: 66)
!336 = !DILocation(line: 147, column: 33, scope: !334)
!337 = !DILocation(line: 147, column: 13, scope: !335)
!338 = !DILocation(line: 149, column: 11, scope: !339)
!339 = distinct !DILexicalBlock(scope: !334, file: !10, line: 147, column: 39)
!340 = !DILocation(line: 150, column: 11, scope: !339)
!341 = !{!281, !283, i64 104}
!342 = !DILocation(line: 152, column: 11, scope: !339)
!343 = !DILocation(line: 157, column: 35, scope: !270)
!344 = !DILocation(line: 157, column: 30, scope: !270)
!345 = !DILocation(line: 157, column: 11, scope: !270)
!346 = !DILocation(line: 157, column: 11, scope: !271)
!347 = !DILocation(line: 162, column: 38, scope: !269)
!348 = !DILocation(line: 162, column: 27, scope: !269)
!349 = !DILocation(line: 162, column: 15, scope: !269)
!350 = !DILocation(line: 163, column: 23, scope: !351)
!351 = distinct !DILexicalBlock(scope: !269, file: !10, line: 163, column: 13)
!352 = !DILocation(line: 163, column: 13, scope: !269)
!353 = !DILocation(line: 168, column: 13, scope: !269)
!354 = !DILocation(line: 161, column: 22, scope: !269)
!355 = !DILocation(line: 169, column: 15, scope: !356)
!356 = distinct !DILexicalBlock(scope: !269, file: !10, line: 169, column: 13)
!357 = !DILocation(line: 169, column: 13, scope: !269)
!358 = !DILocation(line: 173, column: 16, scope: !359)
!359 = distinct !DILexicalBlock(scope: !269, file: !10, line: 173, column: 13)
!360 = !DILocation(line: 173, column: 13, scope: !359)
!361 = !DILocation(line: 173, column: 22, scope: !359)
!362 = !DILocation(line: 173, column: 27, scope: !359)
!363 = !DILocation(line: 173, column: 20, scope: !359)
!364 = !DILocation(line: 173, column: 13, scope: !269)
!365 = !DILocation(line: 175, column: 11, scope: !366)
!366 = distinct !DILexicalBlock(scope: !359, file: !10, line: 173, column: 59)
!367 = !DILocation(line: 176, column: 11, scope: !366)
!368 = !DILocation(line: 179, column: 9, scope: !269)
!369 = !DILocation(line: 181, column: 13, scope: !370)
!370 = distinct !DILexicalBlock(scope: !269, file: !10, line: 181, column: 13)
!371 = !DILocation(line: 181, column: 13, scope: !269)
!372 = !DILocation(line: 182, column: 11, scope: !373)
!373 = distinct !DILexicalBlock(scope: !374, file: !10, line: 182, column: 11)
!374 = distinct !DILexicalBlock(scope: !375, file: !10, line: 182, column: 11)
!375 = distinct !DILexicalBlock(scope: !376, file: !10, line: 182, column: 11)
!376 = distinct !DILexicalBlock(scope: !377, file: !10, line: 182, column: 11)
!377 = distinct !DILexicalBlock(scope: !370, file: !10, line: 181, column: 42)
!378 = !DILocation(line: 182, column: 11, scope: !379)
!379 = distinct !DILexicalBlock(scope: !380, file: !10, line: 182, column: 11)
!380 = distinct !DILexicalBlock(scope: !381, file: !10, line: 182, column: 11)
!381 = distinct !DILexicalBlock(scope: !373, file: !10, line: 182, column: 11)
!382 = !DILocation(line: 187, column: 13, scope: !383)
!383 = distinct !DILexicalBlock(scope: !269, file: !10, line: 187, column: 13)
!384 = !DILocation(line: 187, column: 29, scope: !383)
!385 = !DILocation(line: 187, column: 13, scope: !269)
!386 = !DILocation(line: 189, column: 11, scope: !387)
!387 = distinct !DILexicalBlock(scope: !383, file: !10, line: 187, column: 40)
!388 = !DILocation(line: 190, column: 11, scope: !387)
!389 = !DILocation(line: 193, column: 9, scope: !269)
!390 = !DILocation(line: 198, column: 13, scope: !391)
!391 = distinct !DILexicalBlock(scope: !392, file: !10, line: 198, column: 13)
!392 = distinct !DILexicalBlock(scope: !270, file: !10, line: 196, column: 14)
!393 = !DILocation(line: 198, column: 13, scope: !392)
!394 = !DILocation(line: 208, column: 30, scope: !275)
!395 = !DILocation(line: 199, column: 11, scope: !396)
!396 = distinct !DILexicalBlock(scope: !397, file: !10, line: 199, column: 11)
!397 = distinct !DILexicalBlock(scope: !398, file: !10, line: 199, column: 11)
!398 = distinct !DILexicalBlock(scope: !399, file: !10, line: 199, column: 11)
!399 = distinct !DILexicalBlock(scope: !400, file: !10, line: 199, column: 11)
!400 = distinct !DILexicalBlock(scope: !391, file: !10, line: 198, column: 90)
!401 = !DILocation(line: 199, column: 11, scope: !402)
!402 = distinct !DILexicalBlock(scope: !403, file: !10, line: 199, column: 11)
!403 = distinct !DILexicalBlock(scope: !404, file: !10, line: 199, column: 11)
!404 = distinct !DILexicalBlock(scope: !396, file: !10, line: 199, column: 11)
!405 = !DILocation(line: 207, column: 42, scope: !271)
!406 = !DILocation(line: 86, column: 25, scope: !145)
!407 = !DILocation(line: 208, column: 11, scope: !275)
!408 = !DILocation(line: 208, column: 11, scope: !271)
!409 = !DILocation(line: 212, column: 52, scope: !274)
!410 = !DILocation(line: 212, column: 24, scope: !274)
!411 = !DILocation(line: 213, column: 9, scope: !274)
!412 = !{!413, !299, i64 0}
!413 = !{!"ip4_addr", !299, i64 0}
!414 = !{!297, !299, i64 12}
!415 = !DILocation(line: 214, column: 9, scope: !274)
!416 = !{!297, !299, i64 16}
!417 = !DILocation(line: 215, column: 9, scope: !274)
!418 = !{!419, !284, i64 0}
!419 = !{!"icmp_echo_hdr", !284, i64 0, !284, i64 1, !283, i64 2, !283, i64 4, !283, i64 6}
!420 = !DILocation(line: 217, column: 9, scope: !421)
!421 = distinct !DILexicalBlock(scope: !274, file: !10, line: 217, column: 9)
!422 = !DILocation(line: 217, column: 9, scope: !274)
!423 = !DILocation(line: 219, column: 22, scope: !424)
!424 = distinct !DILexicalBlock(scope: !425, file: !10, line: 219, column: 15)
!425 = distinct !DILexicalBlock(scope: !421, file: !10, line: 217, column: 66)
!426 = !{!419, !283, i64 2}
!427 = !DILocation(line: 219, column: 29, scope: !424)
!428 = !DILocation(line: 219, column: 15, scope: !425)
!429 = !DILocation(line: 0, scope: !430)
!430 = distinct !DILexicalBlock(scope: !424, file: !10, line: 219, column: 69)
!431 = !DILocation(line: 235, column: 9, scope: !274)
!432 = !{!297, !284, i64 8}
!433 = !DILocation(line: 236, column: 9, scope: !274)
!434 = !{!297, !283, i64 10}
!435 = !DILocation(line: 238, column: 9, scope: !436)
!436 = distinct !DILexicalBlock(scope: !274, file: !10, line: 238, column: 9)
!437 = !DILocation(line: 227, column: 18, scope: !438)
!438 = distinct !DILexicalBlock(scope: !421, file: !10, line: 226, column: 14)
!439 = !DILocation(line: 227, column: 25, scope: !438)
!440 = !DILocation(line: 238, column: 9, scope: !274)
!441 = !DILocation(line: 239, column: 11, scope: !442)
!442 = distinct !DILexicalBlock(scope: !436, file: !10, line: 238, column: 64)
!443 = !DILocation(line: 240, column: 9, scope: !442)
!444 = !DILocation(line: 243, column: 9, scope: !274)
!445 = !{!281, !283, i64 96}
!446 = !DILocation(line: 250, column: 15, scope: !274)
!447 = !DILocation(line: 211, column: 15, scope: !274)
!448 = !DILocation(line: 279, column: 7, scope: !271)
!449 = !{!281, !283, i64 112}
!450 = !DILocation(line: 280, column: 7, scope: !271)
!451 = !{!281, !283, i64 102}
!452 = !DILocation(line: 281, column: 3, scope: !271)
!453 = !DILocation(line: 282, column: 3, scope: !145)
!454 = !DILocation(line: 283, column: 3, scope: !145)
!455 = !DILocation(line: 285, column: 3, scope: !145)
!456 = !DILocation(line: 286, column: 3, scope: !145)
!457 = !{!281, !283, i64 106}
!458 = !DILocation(line: 288, column: 3, scope: !145)
!459 = !DILocation(line: 291, column: 3, scope: !145)
!460 = !DILocation(line: 292, column: 3, scope: !145)
!461 = !{!281, !283, i64 116}
!462 = !DILocation(line: 294, column: 3, scope: !145)
!463 = !DILocation(line: 296, column: 1, scope: !145)
!464 = !DILocation(line: 194, column: 43, scope: !2)
!465 = !DILocation(line: 196, column: 2, scope: !2)
!466 = !DILocation(line: 196, column: 10, scope: !2)
!467 = !DILocation(line: 197, column: 2, scope: !2)
!468 = !DILocation(line: 198, column: 2, scope: !469)
!469 = distinct !DILexicalBlock(scope: !470, file: !3, line: 198, column: 2)
!470 = distinct !DILexicalBlock(scope: !2, file: !3, line: 198, column: 2)
!471 = !DILocation(line: 199, column: 2, scope: !2)
!472 = !DILocation(line: 200, column: 1, scope: !2)
!473 = distinct !DISubprogram(name: "icmp_dest_unreach", scope: !10, file: !10, line: 308, type: !474, isLocal: false, isDefinition: true, scopeLine: 309, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !476)
!474 = !DISubroutineType(types: !475)
!475 = !{null, !148, !60}
!476 = !{!477, !478}
!477 = !DILocalVariable(name: "p", arg: 1, scope: !473, file: !10, line: 308, type: !148)
!478 = !DILocalVariable(name: "t", arg: 2, scope: !473, file: !10, line: 308, type: !60)
!479 = !DILocation(line: 308, column: 32, scope: !473)
!480 = !DILocation(line: 308, column: 54, scope: !473)
!481 = !DILocation(line: 311, column: 35, scope: !473)
!482 = !DILocation(line: 311, column: 3, scope: !473)
!483 = !DILocation(line: 312, column: 1, scope: !473)
!484 = distinct !DISubprogram(name: "icmp_send_response", scope: !10, file: !10, line: 340, type: !485, isLocal: true, isDefinition: true, scopeLine: 341, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !487)
!485 = !DISubroutineType(types: !486)
!486 = !{null, !148, !74, !74}
!487 = !{!488, !489, !490, !491, !492, !493, !494, !495}
!488 = !DILocalVariable(name: "p", arg: 1, scope: !484, file: !10, line: 340, type: !148)
!489 = !DILocalVariable(name: "type", arg: 2, scope: !484, file: !10, line: 340, type: !74)
!490 = !DILocalVariable(name: "code", arg: 3, scope: !484, file: !10, line: 340, type: !74)
!491 = !DILocalVariable(name: "q", scope: !484, file: !10, line: 342, type: !148)
!492 = !DILocalVariable(name: "iphdr", scope: !484, file: !10, line: 343, type: !99)
!493 = !DILocalVariable(name: "icmphdr", scope: !484, file: !10, line: 345, type: !90)
!494 = !DILocalVariable(name: "iphdr_src", scope: !484, file: !10, line: 346, type: !182)
!495 = !DILocalVariable(name: "netif", scope: !484, file: !10, line: 347, type: !159)
!496 = !DILocation(line: 340, column: 33, scope: !484)
!497 = !DILocation(line: 340, column: 41, scope: !484)
!498 = !DILocation(line: 340, column: 52, scope: !484)
!499 = !DILocation(line: 346, column: 3, scope: !484)
!500 = !DILocation(line: 353, column: 7, scope: !484)
!501 = !DILocation(line: 342, column: 16, scope: !484)
!502 = !DILocation(line: 355, column: 9, scope: !503)
!503 = distinct !DILexicalBlock(scope: !484, file: !10, line: 355, column: 7)
!504 = !DILocation(line: 355, column: 7, scope: !484)
!505 = !DILocation(line: 360, column: 3, scope: !506)
!506 = distinct !DILexicalBlock(scope: !507, file: !10, line: 360, column: 3)
!507 = distinct !DILexicalBlock(scope: !484, file: !10, line: 360, column: 3)
!508 = !DILocation(line: 360, column: 3, scope: !507)
!509 = !DILocation(line: 360, column: 3, scope: !510)
!510 = distinct !DILexicalBlock(scope: !511, file: !10, line: 360, column: 3)
!511 = distinct !DILexicalBlock(scope: !506, file: !10, line: 360, column: 3)
!512 = !DILocation(line: 360, column: 3, scope: !513)
!513 = distinct !DILexicalBlock(scope: !514, file: !10, line: 360, column: 3)
!514 = distinct !DILexicalBlock(scope: !515, file: !10, line: 360, column: 3)
!515 = distinct !DILexicalBlock(scope: !510, file: !10, line: 360, column: 3)
!516 = !DILocation(line: 363, column: 31, scope: !484)
!517 = !DILocation(line: 343, column: 18, scope: !484)
!518 = !DILocation(line: 370, column: 40, scope: !484)
!519 = !DILocation(line: 371, column: 17, scope: !484)
!520 = !DILocation(line: 372, column: 12, scope: !484)
!521 = !DILocation(line: 372, column: 17, scope: !484)
!522 = !{!419, !284, i64 1}
!523 = !DILocation(line: 373, column: 12, scope: !484)
!524 = !DILocation(line: 373, column: 15, scope: !484)
!525 = !{!419, !283, i64 4}
!526 = !DILocation(line: 374, column: 12, scope: !484)
!527 = !DILocation(line: 374, column: 18, scope: !484)
!528 = !{!419, !283, i64 6}
!529 = !DILocation(line: 377, column: 3, scope: !484)
!530 = !DILocation(line: 380, column: 3, scope: !484)
!531 = !DILocation(line: 346, column: 14, scope: !484)
!532 = !DILocation(line: 388, column: 11, scope: !484)
!533 = !DILocation(line: 347, column: 17, scope: !484)
!534 = !DILocation(line: 390, column: 13, scope: !535)
!535 = distinct !DILexicalBlock(scope: !484, file: !10, line: 390, column: 7)
!536 = !DILocation(line: 390, column: 7, scope: !484)
!537 = !DILocation(line: 345, column: 25, scope: !484)
!538 = !DILocation(line: 392, column: 14, scope: !539)
!539 = distinct !DILexicalBlock(scope: !535, file: !10, line: 390, column: 22)
!540 = !DILocation(line: 392, column: 21, scope: !539)
!541 = !DILocation(line: 394, column: 5, scope: !542)
!542 = distinct !DILexicalBlock(scope: !539, file: !10, line: 394, column: 5)
!543 = !DILocation(line: 394, column: 5, scope: !539)
!544 = !DILocation(line: 395, column: 49, scope: !545)
!545 = distinct !DILexicalBlock(scope: !542, file: !10, line: 394, column: 64)
!546 = !DILocation(line: 395, column: 25, scope: !545)
!547 = !DILocation(line: 395, column: 23, scope: !545)
!548 = !DILocation(line: 396, column: 5, scope: !545)
!549 = !DILocation(line: 398, column: 5, scope: !539)
!550 = !DILocation(line: 399, column: 5, scope: !539)
!551 = !DILocation(line: 400, column: 3, scope: !539)
!552 = !DILocation(line: 401, column: 3, scope: !484)
!553 = !DILocation(line: 402, column: 1, scope: !484)
!554 = distinct !DISubprogram(name: "icmp_time_exceeded", scope: !10, file: !10, line: 323, type: !555, isLocal: false, isDefinition: true, scopeLine: 324, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !557)
!555 = !DISubroutineType(types: !556)
!556 = !{null, !148, !69}
!557 = !{!558, !559}
!558 = !DILocalVariable(name: "p", arg: 1, scope: !554, file: !10, line: 323, type: !148)
!559 = !DILocalVariable(name: "t", arg: 2, scope: !554, file: !10, line: 323, type: !69)
!560 = !DILocation(line: 323, column: 33, scope: !554)
!561 = !DILocation(line: 323, column: 54, scope: !554)
!562 = !DILocation(line: 326, column: 34, scope: !554)
!563 = !DILocation(line: 326, column: 3, scope: !554)
!564 = !DILocation(line: 327, column: 1, scope: !554)
