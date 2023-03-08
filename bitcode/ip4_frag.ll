; ModuleID = '/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/ipv4/ip4_frag.c'
source_filename = "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/ipv4/ip4_frag.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ip_reassdata = type { %struct.ip_reassdata*, %struct.pbuf*, %struct.ip_hdr, i16, i8, i8 }
%struct.pbuf = type { %struct.pbuf*, i8*, i16, i16, i8, i8, i8, i8 }
%struct.ip_hdr = type { i8, i8, i16, i16, i16, i8, i8, i16, %struct.ip4_addr_packed, %struct.ip4_addr_packed }
%struct.ip4_addr_packed = type { i32 }
%struct.stats_ = type { %struct.stats_proto, %struct.stats_proto, %struct.stats_proto, %struct.stats_proto, %struct.stats_proto, %struct.stats_proto, %struct.stats_proto, %struct.stats_sys, %struct.stats_proto, %struct.stats_proto, %struct.stats_proto, %struct.stats_igmp, %struct.stats_proto }
%struct.stats_sys = type { %struct.stats_syselem, %struct.stats_syselem, %struct.stats_syselem }
%struct.stats_syselem = type { i16, i16, i16 }
%struct.stats_igmp = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.stats_proto = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.ip_globals = type { %struct.netif*, %struct.netif*, %struct.ip_hdr*, %struct.ip6_hdr*, i16, %struct.ip_addr, %struct.ip_addr }
%struct.netif = type { %struct.netif*, %struct.ip_addr, %struct.ip_addr, %struct.ip_addr, [3 x %struct.ip_addr], [3 x i8], [3 x i32], [3 x i32], i8 (%struct.pbuf*, %struct.netif*)*, i8 (%struct.netif*, %struct.pbuf*, %struct.ip4_addr*)*, i8 (%struct.netif*, %struct.pbuf*)*, i8 (%struct.netif*, %struct.pbuf*, %struct.ip6_addr*)*, void (%struct.netif*)*, void (%struct.netif*)*, i8*, [1 x i8*], i16, i16, i16, [6 x i8], i8, i8, [2 x i8], i8, i8, i8, i8 (%struct.netif*, %struct.ip6_addr*, i32)* }
%struct.ip4_addr = type { i32 }
%struct.ip6_addr = type { [4 x i32], i8 }
%struct.ip6_hdr = type { i32, i16, i8, i8, %struct.ip6_addr_packed, %struct.ip6_addr_packed }
%struct.ip6_addr_packed = type { [4 x i32] }
%struct.ip_addr = type { %union.anon, i8 }
%union.anon = type { %struct.ip6_addr }
%struct.ip_reass_helper = type <{ %struct.pbuf*, i16, i16 }>
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@reassdatagrams = internal unnamed_addr global %struct.ip_reassdata* null, align 8, !dbg !0
@lwip_stats = external dso_local local_unnamed_addr global %struct.stats_, align 2
@ip_reass_pbufcount = internal unnamed_addr global i16 0, align 2, !dbg !102
@ip_data = external dso_local local_unnamed_addr global %struct.ip_globals, align 8
@.str = private unnamed_addr constant [27 x i8] c"ip_reass_pbufcount >= clen\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Assertion failure: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"!(1)\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"ipr != NULL\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"not firstalthough just enqueued\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"prev != ipr\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"prev->next == ipr\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"pbufs_freed + clen <= 0xffff\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"ip_reass_pbufcount >= pbufs_freed\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"sanity check\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"sanity check linked list\00", align 1
@uk_pr_crit.__str = internal global [8 x i8] c"liblwip\00", section ".data_shared", align 1, !dbg !104
@uk_pr_crit.__str.14 = internal global [11 x i8] c"ip4_frag.c\00", section ".data_shared", align 1, !dbg !131
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local void @ip_reass_tmr() local_unnamed_addr #0 !dbg !140 {
  %1 = load %struct.ip_reassdata*, %struct.ip_reassdata** @reassdatagrams, align 8, !dbg !151, !tbaa !152
  %2 = icmp eq %struct.ip_reassdata* %1, null, !dbg !157
  br i1 %2, label %21, label %3, !dbg !158

; <label>:3:                                      ; preds = %0, %17
  %4 = phi %struct.ip_reassdata* [ %19, %17 ], [ %1, %0 ]
  %5 = phi %struct.ip_reassdata* [ %18, %17 ], [ null, %0 ]
  %6 = getelementptr inbounds %struct.ip_reassdata, %struct.ip_reassdata* %4, i64 0, i32 5, !dbg !159
  %7 = load i8, i8* %6, align 1, !dbg !159, !tbaa !160
  %8 = icmp eq i8 %7, 0, !dbg !166
  br i1 %8, label %13, label %9, !dbg !167

; <label>:9:                                      ; preds = %3
  %10 = add i8 %7, -1, !dbg !168
  store i8 %10, i8* %6, align 1, !dbg !168, !tbaa !160
  %11 = getelementptr inbounds %struct.ip_reassdata, %struct.ip_reassdata* %4, i64 0, i32 0, !dbg !170
  %12 = load %struct.ip_reassdata*, %struct.ip_reassdata** %11, align 8, !dbg !170, !tbaa !171
  br label %17, !dbg !172

; <label>:13:                                     ; preds = %3
  %14 = getelementptr inbounds %struct.ip_reassdata, %struct.ip_reassdata* %4, i64 0, i32 0, !dbg !174
  %15 = load %struct.ip_reassdata*, %struct.ip_reassdata** %14, align 8, !dbg !174, !tbaa !171
  %16 = tail call fastcc i32 @ip_reass_free_complete_datagram(%struct.ip_reassdata* nonnull %4, %struct.ip_reassdata* %5) #7, !dbg !175
  br label %17

; <label>:17:                                     ; preds = %13, %9
  %18 = phi %struct.ip_reassdata* [ %4, %9 ], [ %5, %13 ], !dbg !176
  %19 = phi %struct.ip_reassdata* [ %12, %9 ], [ %15, %13 ], !dbg !177
  %20 = icmp eq %struct.ip_reassdata* %19, null, !dbg !157
  br i1 %20, label %21, label %3, !dbg !158, !llvm.loop !178

; <label>:21:                                     ; preds = %17, %0
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !180
  ret void, !dbg !180
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable

; Function Attrs: noredzone nounwind
define internal fastcc i32 @ip_reass_free_complete_datagram(%struct.ip_reassdata*, %struct.ip_reassdata*) unnamed_addr #0 !dbg !181 {
  %3 = icmp eq %struct.ip_reassdata* %1, %0, !dbg !197
  br i1 %3, label %4, label %5, !dbg !200

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !201
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !204
  tail call void @ukplat_terminate(i32 3) #8, !dbg !204
  unreachable, !dbg !204

; <label>:5:                                      ; preds = %2
  %6 = icmp eq %struct.ip_reassdata* %1, null, !dbg !208
  br i1 %6, label %12, label %7, !dbg !210

; <label>:7:                                      ; preds = %5
  %8 = getelementptr inbounds %struct.ip_reassdata, %struct.ip_reassdata* %1, i64 0, i32 0, !dbg !211
  %9 = load %struct.ip_reassdata*, %struct.ip_reassdata** %8, align 8, !dbg !211, !tbaa !171
  %10 = icmp eq %struct.ip_reassdata* %9, %0, !dbg !211
  br i1 %10, label %12, label %11, !dbg !215

; <label>:11:                                     ; preds = %7
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0)) #7, !dbg !216
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !219
  tail call void @ukplat_terminate(i32 3) #8, !dbg !219
  unreachable, !dbg !219

; <label>:12:                                     ; preds = %5, %7
  %13 = getelementptr inbounds %struct.ip_reassdata, %struct.ip_reassdata* %0, i64 0, i32 1, !dbg !223
  %14 = load %struct.pbuf*, %struct.pbuf** %13, align 8, !dbg !223, !tbaa !224
  %15 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %14, i64 0, i32 1, !dbg !225
  %16 = bitcast i8** %15 to %struct.ip_reass_helper**, !dbg !225
  %17 = load %struct.ip_reass_helper*, %struct.ip_reass_helper** %16, align 8, !dbg !225, !tbaa !226
  %18 = getelementptr inbounds %struct.ip_reass_helper, %struct.ip_reass_helper* %17, i64 0, i32 1, !dbg !229
  %19 = load i16, i16* %18, align 1, !dbg !229, !tbaa !231
  %20 = icmp eq i16 %19, 0, !dbg !233
  br i1 %20, label %21, label %31, !dbg !234

; <label>:21:                                     ; preds = %12
  %22 = bitcast %struct.ip_reass_helper* %17 to i8*, !dbg !234
  %23 = bitcast %struct.ip_reass_helper* %17 to i64*, !dbg !236
  %24 = load i64, i64* %23, align 1, !dbg !236, !tbaa !238
  %25 = bitcast %struct.pbuf** %13 to i64*, !dbg !239
  store i64 %24, i64* %25, align 8, !dbg !239, !tbaa !224
  %26 = getelementptr inbounds %struct.ip_reassdata, %struct.ip_reassdata* %0, i64 0, i32 2, i32 0, !dbg !240
  %27 = tail call i8* @memcpy(i8* %22, i8* nonnull %26, i64 20) #9, !dbg !240
  tail call void @icmp_time_exceeded(%struct.pbuf* %14, i32 1) #9, !dbg !241
  %28 = tail call zeroext i16 @pbuf_clen(%struct.pbuf* %14) #9, !dbg !242
  %29 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %14) #9, !dbg !244
  %30 = load %struct.pbuf*, %struct.pbuf** %13, align 8, !dbg !245, !tbaa !224
  br label %31, !dbg !246

; <label>:31:                                     ; preds = %21, %12
  %32 = phi %struct.pbuf* [ %30, %21 ], [ %14, %12 ], !dbg !245
  %33 = phi i16 [ %28, %21 ], [ 0, %12 ], !dbg !247
  %34 = icmp eq %struct.pbuf* %32, null, !dbg !248
  br i1 %34, label %55, label %35, !dbg !249

; <label>:35:                                     ; preds = %31, %49
  %36 = phi i16 [ %50, %49 ], [ %33, %31 ]
  %37 = phi %struct.pbuf* [ %42, %49 ], [ %32, %31 ]
  %38 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %37, i64 0, i32 1, !dbg !250
  %39 = bitcast i8** %38 to %struct.ip_reass_helper**, !dbg !250
  %40 = load %struct.ip_reass_helper*, %struct.ip_reass_helper** %39, align 8, !dbg !250, !tbaa !226
  %41 = getelementptr inbounds %struct.ip_reass_helper, %struct.ip_reass_helper* %40, i64 0, i32 0, !dbg !252
  %42 = load %struct.pbuf*, %struct.pbuf** %41, align 1, !dbg !252, !tbaa !238
  %43 = tail call zeroext i16 @pbuf_clen(%struct.pbuf* nonnull %37) #9, !dbg !253
  %44 = zext i16 %36 to i32, !dbg !254
  %45 = zext i16 %43 to i32, !dbg !254
  %46 = add nuw nsw i32 %45, %44, !dbg !254
  %47 = icmp ult i32 %46, 65536, !dbg !254
  br i1 %47, label %49, label %48, !dbg !257

; <label>:48:                                     ; preds = %35
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0)) #7, !dbg !258
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !261
  tail call void @ukplat_terminate(i32 3) #8, !dbg !261
  unreachable, !dbg !261

; <label>:49:                                     ; preds = %35
  %50 = trunc i32 %46 to i16, !dbg !265
  %51 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %37) #9, !dbg !266
  %52 = icmp eq %struct.pbuf* %42, null, !dbg !248
  br i1 %52, label %53, label %35, !dbg !249, !llvm.loop !267

; <label>:53:                                     ; preds = %49
  %54 = trunc i32 %46 to i16, !dbg !265
  br label %55, !dbg !269

; <label>:55:                                     ; preds = %53, %31
  %56 = phi i16 [ %33, %31 ], [ %54, %53 ], !dbg !278
  %57 = load %struct.ip_reassdata*, %struct.ip_reassdata** @reassdatagrams, align 8, !dbg !269, !tbaa !152
  %58 = icmp eq %struct.ip_reassdata* %57, %0, !dbg !281
  br i1 %58, label %59, label %62, !dbg !282

; <label>:59:                                     ; preds = %55
  %60 = bitcast %struct.ip_reassdata* %0 to i64*, !dbg !283
  %61 = load i64, i64* %60, align 8, !dbg !283, !tbaa !171
  store i64 %61, i64* bitcast (%struct.ip_reassdata** @reassdatagrams to i64*), align 8, !dbg !285, !tbaa !152
  br label %68, !dbg !286

; <label>:62:                                     ; preds = %55
  br i1 %6, label %63, label %64, !dbg !287

; <label>:63:                                     ; preds = %62
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0)) #9, !dbg !290
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !294
  tail call void @ukplat_terminate(i32 3) #8, !dbg !294
  unreachable, !dbg !294

; <label>:64:                                     ; preds = %62
  %65 = bitcast %struct.ip_reassdata* %0 to i64*, !dbg !298
  %66 = load i64, i64* %65, align 8, !dbg !298, !tbaa !171
  %67 = bitcast %struct.ip_reassdata* %1 to i64*, !dbg !299
  store i64 %66, i64* %67, align 8, !dbg !299, !tbaa !171
  br label %68

; <label>:68:                                     ; preds = %59, %64
  %69 = bitcast %struct.ip_reassdata* %0 to i8*, !dbg !300
  tail call void @memp_free(i32 4, i8* %69) #9, !dbg !301
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !302
  %70 = load i16, i16* @ip_reass_pbufcount, align 2, !dbg !303, !tbaa !306
  %71 = icmp ult i16 %70, %56, !dbg !303
  br i1 %71, label %72, label %73, !dbg !307

; <label>:72:                                     ; preds = %68
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0)) #7, !dbg !308
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !311
  tail call void @ukplat_terminate(i32 3) #8, !dbg !311
  unreachable, !dbg !311

; <label>:73:                                     ; preds = %68
  %74 = zext i16 %56 to i32, !dbg !303
  %75 = sub i16 %70, %56, !dbg !315
  store i16 %75, i16* @ip_reass_pbufcount, align 2, !dbg !316, !tbaa !306
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !317
  ret i32 %74, !dbg !317
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone nounwind
define dso_local %struct.pbuf* @ip4_reass(%struct.pbuf*) local_unnamed_addr #0 !dbg !318 {
  %2 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 2, i32 1), align 2, !dbg !344, !tbaa !345
  %3 = add i16 %2, 1, !dbg !344
  store i16 %3, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 2, i32 1), align 2, !dbg !344, !tbaa !345
  %4 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 1, !dbg !351
  %5 = load i8*, i8** %4, align 8, !dbg !351, !tbaa !226
  %6 = load i8, i8* %5, align 1, !dbg !353, !tbaa !355
  %7 = and i8 %6, 15, !dbg !353
  %8 = icmp eq i8 %7, 5, !dbg !356
  br i1 %8, label %12, label %9, !dbg !357

; <label>:9:                                      ; preds = %1
  %10 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 2, i32 10), align 2, !dbg !358, !tbaa !360
  %11 = add i16 %10, 1, !dbg !358
  store i16 %11, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 2, i32 10), align 2, !dbg !358, !tbaa !360
  br label %474, !dbg !361

; <label>:12:                                     ; preds = %1
  %13 = getelementptr inbounds i8, i8* %5, i64 6, !dbg !362
  %14 = bitcast i8* %13 to i16*, !dbg !362
  %15 = load i16, i16* %14, align 1, !dbg !362, !tbaa !363
  %16 = tail call zeroext i16 @lwip_htons(i16 zeroext %15) #9, !dbg !362
  %17 = shl i16 %16, 3, !dbg !362
  %18 = getelementptr inbounds i8, i8* %5, i64 2, !dbg !365
  %19 = bitcast i8* %18 to i16*, !dbg !365
  %20 = load i16, i16* %19, align 1, !dbg !365, !tbaa !366
  %21 = tail call zeroext i16 @lwip_htons(i16 zeroext %20) #9, !dbg !365
  %22 = load i8, i8* %5, align 1, !dbg !368, !tbaa !355
  %23 = shl i8 %22, 2, !dbg !368
  %24 = and i8 %23, 60, !dbg !368
  %25 = zext i8 %24 to i32, !dbg !370
  %26 = zext i16 %21 to i32, !dbg !372
  %27 = icmp ult i32 %26, %25, !dbg !373
  br i1 %27, label %474, label %28, !dbg !374

; <label>:28:                                     ; preds = %12
  %29 = zext i8 %24 to i16, !dbg !375
  %30 = sub i16 %21, %29, !dbg !375
  %31 = tail call zeroext i16 @pbuf_clen(%struct.pbuf* nonnull %0) #9, !dbg !376
  %32 = load i16, i16* @ip_reass_pbufcount, align 2, !dbg !378, !tbaa !306
  %33 = zext i16 %32 to i32, !dbg !378
  %34 = zext i16 %31 to i32, !dbg !380
  %35 = add nuw nsw i32 %33, %34, !dbg !381
  %36 = icmp ugt i32 %35, 10, !dbg !382
  br i1 %36, label %37, label %108, !dbg !383

; <label>:37:                                     ; preds = %28
  %38 = getelementptr inbounds i8, i8* %5, i64 12
  %39 = bitcast i8* %38 to i32*
  %40 = getelementptr inbounds i8, i8* %5, i64 16
  %41 = bitcast i8* %40 to i32*
  %42 = getelementptr inbounds i8, i8* %5, i64 4
  %43 = bitcast i8* %42 to i16*
  br label %44, !dbg !403

; <label>:44:                                     ; preds = %92, %37
  %45 = phi i32 [ 0, %37 ], [ %93, %92 ], !dbg !404
  %46 = load %struct.ip_reassdata*, %struct.ip_reassdata** @reassdatagrams, align 8, !dbg !413, !tbaa !152
  %47 = icmp eq %struct.ip_reassdata* %46, null, !dbg !415
  br i1 %47, label %97, label %48, !dbg !416

; <label>:48:                                     ; preds = %44
  %49 = load i32, i32* %39, align 1, !tbaa !417
  br label %50, !dbg !416

; <label>:50:                                     ; preds = %80, %48
  %51 = phi i32 [ 0, %48 ], [ %83, %80 ]
  %52 = phi %struct.ip_reassdata* [ null, %48 ], [ %82, %80 ]
  %53 = phi %struct.ip_reassdata* [ null, %48 ], [ %55, %80 ]
  %54 = phi %struct.ip_reassdata* [ null, %48 ], [ %81, %80 ]
  %55 = phi %struct.ip_reassdata* [ %46, %48 ], [ %85, %80 ]
  %56 = getelementptr inbounds %struct.ip_reassdata, %struct.ip_reassdata* %55, i64 0, i32 2, i32 8, i32 0, !dbg !418
  %57 = load i32, i32* %56, align 4, !dbg !418, !tbaa !420
  %58 = icmp eq i32 %57, %49, !dbg !418
  br i1 %58, label %59, label %69, !dbg !418

; <label>:59:                                     ; preds = %50
  %60 = getelementptr inbounds %struct.ip_reassdata, %struct.ip_reassdata* %55, i64 0, i32 2, i32 9, i32 0, !dbg !418
  %61 = load i32, i32* %60, align 8, !dbg !418, !tbaa !421
  %62 = load i32, i32* %41, align 1, !dbg !418, !tbaa !422
  %63 = icmp eq i32 %61, %62, !dbg !418
  br i1 %63, label %64, label %69, !dbg !418

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds %struct.ip_reassdata, %struct.ip_reassdata* %55, i64 0, i32 2, i32 3, !dbg !418
  %66 = load i16, i16* %65, align 4, !dbg !418, !tbaa !423
  %67 = load i16, i16* %43, align 1, !dbg !418, !tbaa !424
  %68 = icmp eq i16 %66, %67, !dbg !418
  br i1 %68, label %80, label %69, !dbg !425

; <label>:69:                                     ; preds = %64, %59, %50
  %70 = add nsw i32 %51, 1, !dbg !426
  %71 = icmp eq %struct.ip_reassdata* %54, null, !dbg !428
  br i1 %71, label %80, label %72, !dbg !430

; <label>:72:                                     ; preds = %69
  %73 = getelementptr inbounds %struct.ip_reassdata, %struct.ip_reassdata* %55, i64 0, i32 5, !dbg !431
  %74 = load i8, i8* %73, align 1, !dbg !431, !tbaa !160
  %75 = getelementptr inbounds %struct.ip_reassdata, %struct.ip_reassdata* %54, i64 0, i32 5, !dbg !433
  %76 = load i8, i8* %75, align 1, !dbg !433, !tbaa !160
  %77 = icmp ugt i8 %74, %76, !dbg !434
  %78 = select i1 %77, %struct.ip_reassdata* %54, %struct.ip_reassdata* %55, !dbg !435
  %79 = select i1 %77, %struct.ip_reassdata* %52, %struct.ip_reassdata* %53, !dbg !435
  br label %80, !dbg !435

; <label>:80:                                     ; preds = %72, %69, %64
  %81 = phi %struct.ip_reassdata* [ %54, %64 ], [ %55, %69 ], [ %78, %72 ], !dbg !436
  %82 = phi %struct.ip_reassdata* [ %52, %64 ], [ %53, %69 ], [ %79, %72 ], !dbg !436
  %83 = phi i32 [ %51, %64 ], [ %70, %69 ], [ %70, %72 ], !dbg !437
  %84 = getelementptr inbounds %struct.ip_reassdata, %struct.ip_reassdata* %55, i64 0, i32 0, !dbg !438
  %85 = load %struct.ip_reassdata*, %struct.ip_reassdata** %84, align 8, !dbg !438, !tbaa !152
  %86 = icmp eq %struct.ip_reassdata* %85, null, !dbg !440
  br i1 %86, label %87, label %50, !dbg !416, !llvm.loop !441

; <label>:87:                                     ; preds = %80
  %88 = icmp eq %struct.ip_reassdata* %81, null, !dbg !444
  br i1 %88, label %92, label %89, !dbg !445

; <label>:89:                                     ; preds = %87
  %90 = tail call fastcc i32 @ip_reass_free_complete_datagram(%struct.ip_reassdata* nonnull %81, %struct.ip_reassdata* %82) #9, !dbg !446
  %91 = add nsw i32 %90, %45, !dbg !448
  br label %92, !dbg !449

; <label>:92:                                     ; preds = %89, %87
  %93 = phi i32 [ %91, %89 ], [ %45, %87 ], !dbg !450
  %94 = icmp slt i32 %93, %34, !dbg !451
  %95 = icmp sgt i32 %83, 1, !dbg !452
  %96 = and i1 %95, %94, !dbg !453
  br i1 %96, label %44, label %97, !dbg !454, !llvm.loop !455

; <label>:97:                                     ; preds = %44, %92
  %98 = phi i32 [ %93, %92 ], [ %45, %44 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !458
  %99 = icmp eq i32 %98, 0, !dbg !459
  br i1 %99, label %105, label %100, !dbg !460

; <label>:100:                                    ; preds = %97
  %101 = load i16, i16* @ip_reass_pbufcount, align 2, !dbg !461, !tbaa !306
  %102 = zext i16 %101 to i32, !dbg !461
  %103 = add nuw nsw i32 %102, %34, !dbg !462
  %104 = icmp ugt i32 %103, 10, !dbg !463
  br i1 %104, label %105, label %108, !dbg !464

; <label>:105:                                    ; preds = %97, %100
  %106 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 2, i32 6), align 2, !dbg !465, !tbaa !467
  %107 = add i16 %106, 1, !dbg !465
  store i16 %107, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 2, i32 6), align 2, !dbg !465, !tbaa !467
  br label %474, !dbg !468

; <label>:108:                                    ; preds = %100, %28
  %109 = load %struct.ip_reassdata*, %struct.ip_reassdata** @reassdatagrams, align 8, !dbg !470, !tbaa !152
  %110 = icmp eq %struct.ip_reassdata* %109, null, !dbg !473
  br i1 %110, label %138, label %111, !dbg !473

; <label>:111:                                    ; preds = %108
  %112 = getelementptr inbounds i8, i8* %5, i64 12
  %113 = bitcast i8* %112 to i32*
  %114 = load i32, i32* %113, align 1, !tbaa !417
  %115 = getelementptr inbounds i8, i8* %5, i64 16
  %116 = bitcast i8* %115 to i32*
  %117 = getelementptr inbounds i8, i8* %5, i64 4
  %118 = bitcast i8* %117 to i16*
  br label %119, !dbg !473

; <label>:119:                                    ; preds = %111, %134
  %120 = phi %struct.ip_reassdata* [ %109, %111 ], [ %136, %134 ]
  %121 = getelementptr inbounds %struct.ip_reassdata, %struct.ip_reassdata* %120, i64 0, i32 2, i32 8, i32 0, !dbg !474
  %122 = load i32, i32* %121, align 4, !dbg !474, !tbaa !420
  %123 = icmp eq i32 %122, %114, !dbg !474
  br i1 %123, label %124, label %134, !dbg !474

; <label>:124:                                    ; preds = %119
  %125 = getelementptr inbounds %struct.ip_reassdata, %struct.ip_reassdata* %120, i64 0, i32 2, i32 9, i32 0, !dbg !474
  %126 = load i32, i32* %125, align 8, !dbg !474, !tbaa !421
  %127 = load i32, i32* %116, align 1, !dbg !474, !tbaa !422
  %128 = icmp eq i32 %126, %127, !dbg !474
  br i1 %128, label %129, label %134, !dbg !474

; <label>:129:                                    ; preds = %124
  %130 = getelementptr inbounds %struct.ip_reassdata, %struct.ip_reassdata* %120, i64 0, i32 2, i32 3, !dbg !474
  %131 = load i16, i16* %130, align 4, !dbg !474, !tbaa !423
  %132 = load i16, i16* %118, align 1, !dbg !474, !tbaa !424
  %133 = icmp eq i16 %131, %132, !dbg !474
  br i1 %133, label %225, label %134, !dbg !477

; <label>:134:                                    ; preds = %129, %124, %119
  %135 = getelementptr inbounds %struct.ip_reassdata, %struct.ip_reassdata* %120, i64 0, i32 0, !dbg !478
  %136 = load %struct.ip_reassdata*, %struct.ip_reassdata** %135, align 8, !dbg !470, !tbaa !152
  %137 = icmp eq %struct.ip_reassdata* %136, null, !dbg !473
  br i1 %137, label %138, label %119, !dbg !473, !llvm.loop !479

; <label>:138:                                    ; preds = %134, %108
  %139 = tail call i8* @memp_malloc(i32 4) #9, !dbg !493
  %140 = bitcast i8* %139 to %struct.ip_reassdata*, !dbg !494
  %141 = icmp eq i8* %139, null, !dbg !496
  br i1 %141, label %142, label %215, !dbg !498

; <label>:142:                                    ; preds = %138
  %143 = getelementptr inbounds i8, i8* %5, i64 12
  %144 = bitcast i8* %143 to i32*
  %145 = getelementptr inbounds i8, i8* %5, i64 16
  %146 = bitcast i8* %145 to i32*
  %147 = getelementptr inbounds i8, i8* %5, i64 4
  %148 = bitcast i8* %147 to i16*
  br label %149, !dbg !505

; <label>:149:                                    ; preds = %197, %142
  %150 = phi i32 [ 0, %142 ], [ %198, %197 ], !dbg !506
  %151 = load %struct.ip_reassdata*, %struct.ip_reassdata** @reassdatagrams, align 8, !dbg !512, !tbaa !152
  %152 = icmp eq %struct.ip_reassdata* %151, null, !dbg !513
  br i1 %152, label %202, label %153, !dbg !514

; <label>:153:                                    ; preds = %149
  %154 = load i32, i32* %144, align 1, !tbaa !417
  br label %155, !dbg !514

; <label>:155:                                    ; preds = %185, %153
  %156 = phi i32 [ 0, %153 ], [ %188, %185 ]
  %157 = phi %struct.ip_reassdata* [ null, %153 ], [ %187, %185 ]
  %158 = phi %struct.ip_reassdata* [ null, %153 ], [ %160, %185 ]
  %159 = phi %struct.ip_reassdata* [ null, %153 ], [ %186, %185 ]
  %160 = phi %struct.ip_reassdata* [ %151, %153 ], [ %190, %185 ]
  %161 = getelementptr inbounds %struct.ip_reassdata, %struct.ip_reassdata* %160, i64 0, i32 2, i32 8, i32 0, !dbg !515
  %162 = load i32, i32* %161, align 4, !dbg !515, !tbaa !420
  %163 = icmp eq i32 %162, %154, !dbg !515
  br i1 %163, label %164, label %174, !dbg !515

; <label>:164:                                    ; preds = %155
  %165 = getelementptr inbounds %struct.ip_reassdata, %struct.ip_reassdata* %160, i64 0, i32 2, i32 9, i32 0, !dbg !515
  %166 = load i32, i32* %165, align 8, !dbg !515, !tbaa !421
  %167 = load i32, i32* %146, align 1, !dbg !515, !tbaa !422
  %168 = icmp eq i32 %166, %167, !dbg !515
  br i1 %168, label %169, label %174, !dbg !515

; <label>:169:                                    ; preds = %164
  %170 = getelementptr inbounds %struct.ip_reassdata, %struct.ip_reassdata* %160, i64 0, i32 2, i32 3, !dbg !515
  %171 = load i16, i16* %170, align 4, !dbg !515, !tbaa !423
  %172 = load i16, i16* %148, align 1, !dbg !515, !tbaa !424
  %173 = icmp eq i16 %171, %172, !dbg !515
  br i1 %173, label %185, label %174, !dbg !516

; <label>:174:                                    ; preds = %169, %164, %155
  %175 = add nsw i32 %156, 1, !dbg !517
  %176 = icmp eq %struct.ip_reassdata* %159, null, !dbg !518
  br i1 %176, label %185, label %177, !dbg !519

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds %struct.ip_reassdata, %struct.ip_reassdata* %160, i64 0, i32 5, !dbg !520
  %179 = load i8, i8* %178, align 1, !dbg !520, !tbaa !160
  %180 = getelementptr inbounds %struct.ip_reassdata, %struct.ip_reassdata* %159, i64 0, i32 5, !dbg !521
  %181 = load i8, i8* %180, align 1, !dbg !521, !tbaa !160
  %182 = icmp ugt i8 %179, %181, !dbg !522
  %183 = select i1 %182, %struct.ip_reassdata* %159, %struct.ip_reassdata* %160, !dbg !523
  %184 = select i1 %182, %struct.ip_reassdata* %157, %struct.ip_reassdata* %158, !dbg !523
  br label %185, !dbg !523

; <label>:185:                                    ; preds = %177, %174, %169
  %186 = phi %struct.ip_reassdata* [ %159, %169 ], [ %160, %174 ], [ %183, %177 ], !dbg !524
  %187 = phi %struct.ip_reassdata* [ %157, %169 ], [ %158, %174 ], [ %184, %177 ], !dbg !524
  %188 = phi i32 [ %156, %169 ], [ %175, %174 ], [ %175, %177 ], !dbg !525
  %189 = getelementptr inbounds %struct.ip_reassdata, %struct.ip_reassdata* %160, i64 0, i32 0, !dbg !526
  %190 = load %struct.ip_reassdata*, %struct.ip_reassdata** %189, align 8, !dbg !526, !tbaa !152
  %191 = icmp eq %struct.ip_reassdata* %190, null, !dbg !527
  br i1 %191, label %192, label %155, !dbg !514, !llvm.loop !441

; <label>:192:                                    ; preds = %185
  %193 = icmp eq %struct.ip_reassdata* %186, null, !dbg !528
  br i1 %193, label %197, label %194, !dbg !529

; <label>:194:                                    ; preds = %192
  %195 = tail call fastcc i32 @ip_reass_free_complete_datagram(%struct.ip_reassdata* nonnull %186, %struct.ip_reassdata* %187) #9, !dbg !530
  %196 = add nsw i32 %195, %150, !dbg !532
  br label %197, !dbg !533

; <label>:197:                                    ; preds = %194, %192
  %198 = phi i32 [ %196, %194 ], [ %150, %192 ], !dbg !534
  %199 = icmp slt i32 %198, %34, !dbg !535
  %200 = icmp sgt i32 %188, 1, !dbg !536
  %201 = and i1 %200, %199, !dbg !537
  br i1 %201, label %149, label %202, !dbg !538, !llvm.loop !455

; <label>:202:                                    ; preds = %197, %149
  %203 = phi i32 [ %198, %197 ], [ %150, %149 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !539
  %204 = icmp slt i32 %203, %34, !dbg !540
  br i1 %204, label %208, label %205, !dbg !541

; <label>:205:                                    ; preds = %202
  %206 = tail call i8* @memp_malloc(i32 4) #9, !dbg !542
  %207 = bitcast i8* %206 to %struct.ip_reassdata*, !dbg !544
  br label %208, !dbg !545

; <label>:208:                                    ; preds = %205, %202
  %209 = phi i8* [ %206, %205 ], [ null, %202 ], !dbg !546
  %210 = phi %struct.ip_reassdata* [ %207, %205 ], [ %140, %202 ], !dbg !546
  %211 = icmp eq %struct.ip_reassdata* %210, null, !dbg !547
  br i1 %211, label %212, label %215, !dbg !549

; <label>:212:                                    ; preds = %208
  %213 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 2, i32 6), align 2, !dbg !550, !tbaa !467
  %214 = add i16 %213, 1, !dbg !550
  store i16 %214, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 2, i32 6), align 2, !dbg !550, !tbaa !467
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !552
  br label %474, !dbg !553

; <label>:215:                                    ; preds = %138, %208
  %216 = phi i8* [ %209, %208 ], [ %139, %138 ], !dbg !546
  %217 = phi %struct.ip_reassdata* [ %210, %208 ], [ %140, %138 ], !dbg !546
  %218 = tail call i8* @memset(i8* %216, i32 0, i64 40) #9, !dbg !554
  %219 = getelementptr inbounds %struct.ip_reassdata, %struct.ip_reassdata* %217, i64 0, i32 5, !dbg !555
  store i8 15, i8* %219, align 1, !dbg !556, !tbaa !160
  %220 = load i64, i64* bitcast (%struct.ip_reassdata** @reassdatagrams to i64*), align 8, !dbg !557, !tbaa !152
  %221 = bitcast %struct.ip_reassdata* %217 to i64*, !dbg !558
  store i64 %220, i64* %221, align 8, !dbg !558, !tbaa !171
  store i8* %216, i8** bitcast (%struct.ip_reassdata** @reassdatagrams to i8**), align 8, !dbg !559, !tbaa !152
  %222 = getelementptr inbounds %struct.ip_reassdata, %struct.ip_reassdata* %217, i64 0, i32 2, i32 0, !dbg !560
  %223 = tail call i8* @memcpy(i8* nonnull %222, i8* %5, i64 20) #9, !dbg !560
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !552
  %224 = icmp eq %struct.ip_reassdata* %217, null, !dbg !561
  br i1 %224, label %474, label %241, !dbg !553

; <label>:225:                                    ; preds = %129
  %226 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 2, i32 11), align 2, !dbg !563, !tbaa !565
  %227 = add i16 %226, 1, !dbg !563
  store i16 %227, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 2, i32 11), align 2, !dbg !563, !tbaa !565
  %228 = load i16, i16* %14, align 1, !dbg !566, !tbaa !363
  %229 = tail call zeroext i16 @lwip_htons(i16 zeroext %228) #9, !dbg !566
  %230 = and i16 %229, 8191, !dbg !569
  %231 = icmp eq i16 %230, 0, !dbg !570
  br i1 %231, label %232, label %241, !dbg !571

; <label>:232:                                    ; preds = %225
  %233 = getelementptr inbounds %struct.ip_reassdata, %struct.ip_reassdata* %120, i64 0, i32 2, i32 4, !dbg !572
  %234 = load i16, i16* %233, align 2, !dbg !572, !tbaa !573
  %235 = tail call zeroext i16 @lwip_htons(i16 zeroext %234) #9, !dbg !572
  %236 = and i16 %235, 8191, !dbg !574
  %237 = icmp eq i16 %236, 0, !dbg !575
  br i1 %237, label %241, label %238, !dbg !576

; <label>:238:                                    ; preds = %232
  %239 = getelementptr inbounds %struct.ip_reassdata, %struct.ip_reassdata* %120, i64 0, i32 2, i32 0, !dbg !577
  %240 = tail call i8* @memcpy(i8* nonnull %239, i8* nonnull %5, i64 20) #9, !dbg !577
  br label %241, !dbg !579

; <label>:241:                                    ; preds = %232, %225, %238, %215
  %242 = phi %struct.ip_reassdata* [ %217, %215 ], [ %120, %238 ], [ %120, %232 ], [ %120, %225 ], !dbg !580
  %243 = load i16, i16* %14, align 1, !dbg !581, !tbaa !363
  %244 = and i16 %243, 32, !dbg !582
  %245 = icmp eq i16 %244, 0, !dbg !583
  br i1 %245, label %246, label %251, !dbg !584

; <label>:246:                                    ; preds = %241
  %247 = add i16 %30, %17, !dbg !585
  %248 = icmp ult i16 %247, %17, !dbg !587
  %249 = icmp ugt i16 %247, -21, !dbg !589
  %250 = or i1 %248, %249, !dbg !590
  br i1 %250, label %462, label %251

; <label>:251:                                    ; preds = %246, %241
  %252 = bitcast i8** %4 to %struct.ip_hdr**, !dbg !612
  %253 = load %struct.ip_hdr*, %struct.ip_hdr** %252, align 8, !dbg !612, !tbaa !226
  %254 = getelementptr inbounds %struct.ip_hdr, %struct.ip_hdr* %253, i64 0, i32 2, !dbg !614
  %255 = load i16, i16* %254, align 1, !dbg !614, !tbaa !366
  %256 = tail call zeroext i16 @lwip_htons(i16 zeroext %255) #9, !dbg !614
  %257 = getelementptr inbounds %struct.ip_hdr, %struct.ip_hdr* %253, i64 0, i32 0, !dbg !616
  %258 = load i8, i8* %257, align 1, !dbg !616, !tbaa !355
  %259 = shl i8 %258, 2, !dbg !616
  %260 = and i8 %259, 60, !dbg !616
  %261 = zext i8 %260 to i32, !dbg !618
  %262 = zext i16 %256 to i32, !dbg !620
  %263 = icmp ult i32 %262, %261, !dbg !621
  br i1 %263, label %458, label %264, !dbg !622

; <label>:264:                                    ; preds = %251
  %265 = zext i8 %260 to i16, !dbg !623
  %266 = sub i16 %256, %265, !dbg !623
  %267 = getelementptr inbounds %struct.ip_hdr, %struct.ip_hdr* %253, i64 0, i32 4, !dbg !624
  %268 = load i16, i16* %267, align 1, !dbg !624, !tbaa !363
  %269 = tail call zeroext i16 @lwip_htons(i16 zeroext %268) #9, !dbg !624
  %270 = shl i16 %269, 3, !dbg !624
  %271 = bitcast i8** %4 to %struct.ip_reass_helper**, !dbg !626
  %272 = load %struct.ip_reass_helper*, %struct.ip_reass_helper** %271, align 8, !dbg !626, !tbaa !226
  %273 = getelementptr inbounds %struct.ip_reass_helper, %struct.ip_reass_helper* %272, i64 0, i32 0, !dbg !628
  store %struct.pbuf* null, %struct.pbuf** %273, align 1, !dbg !629, !tbaa !238
  %274 = getelementptr inbounds %struct.ip_reass_helper, %struct.ip_reass_helper* %272, i64 0, i32 1, !dbg !630
  store i16 %270, i16* %274, align 1, !dbg !631, !tbaa !231
  %275 = add i16 %270, %266, !dbg !632
  %276 = getelementptr inbounds %struct.ip_reass_helper, %struct.ip_reass_helper* %272, i64 0, i32 2, !dbg !633
  store i16 %275, i16* %276, align 1, !dbg !634, !tbaa !635
  %277 = icmp ult i16 %275, %270, !dbg !636
  br i1 %277, label %458, label %278, !dbg !638

; <label>:278:                                    ; preds = %264
  %279 = getelementptr inbounds %struct.ip_reassdata, %struct.ip_reassdata* %242, i64 0, i32 1, !dbg !639
  %280 = load %struct.pbuf*, %struct.pbuf** %279, align 1, !dbg !642, !tbaa !152
  %281 = icmp eq %struct.pbuf* %280, null, !dbg !645
  br i1 %281, label %329, label %282, !dbg !646

; <label>:282:                                    ; preds = %278, %320
  %283 = phi %struct.pbuf* [ %323, %320 ], [ %280, %278 ]
  %284 = phi i32 [ %321, %320 ], [ 1, %278 ]
  %285 = phi %struct.ip_reass_helper* [ %288, %320 ], [ null, %278 ]
  %286 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %283, i64 0, i32 1, !dbg !647
  %287 = bitcast i8** %286 to %struct.ip_reass_helper**, !dbg !647
  %288 = load %struct.ip_reass_helper*, %struct.ip_reass_helper** %287, align 8, !dbg !647, !tbaa !226
  %289 = getelementptr inbounds %struct.ip_reass_helper, %struct.ip_reass_helper* %288, i64 0, i32 1, !dbg !649
  %290 = load i16, i16* %289, align 1, !dbg !649, !tbaa !231
  %291 = icmp ult i16 %270, %290, !dbg !651
  br i1 %291, label %292, label %307, !dbg !652

; <label>:292:                                    ; preds = %282
  store %struct.pbuf* %283, %struct.pbuf** %273, align 1, !dbg !653, !tbaa !238
  %293 = icmp eq %struct.ip_reass_helper* %285, null, !dbg !655
  br i1 %293, label %304, label %294, !dbg !657

; <label>:294:                                    ; preds = %292
  %295 = getelementptr inbounds %struct.ip_reass_helper, %struct.ip_reass_helper* %285, i64 0, i32 2, !dbg !658
  %296 = load i16, i16* %295, align 1, !dbg !658, !tbaa !635
  %297 = icmp ult i16 %270, %296, !dbg !661
  %298 = icmp ugt i16 %275, %290, !dbg !662
  %299 = or i1 %298, %297, !dbg !663
  br i1 %299, label %459, label %300, !dbg !663

; <label>:300:                                    ; preds = %294
  %301 = getelementptr inbounds %struct.ip_reass_helper, %struct.ip_reass_helper* %285, i64 0, i32 0, !dbg !664
  store %struct.pbuf* %0, %struct.pbuf** %301, align 1, !dbg !665, !tbaa !238
  %302 = icmp eq i16 %296, %270, !dbg !666
  %303 = select i1 %302, i32 %284, i32 0, !dbg !668
  br label %330, !dbg !668

; <label>:304:                                    ; preds = %292
  %305 = icmp ugt i16 %275, %290, !dbg !669
  br i1 %305, label %459, label %306, !dbg !672

; <label>:306:                                    ; preds = %304
  store %struct.pbuf* %0, %struct.pbuf** %279, align 8, !dbg !673, !tbaa !224
  br label %330

; <label>:307:                                    ; preds = %282
  %308 = icmp eq i16 %270, %290, !dbg !674
  br i1 %308, label %459, label %309, !dbg !676

; <label>:309:                                    ; preds = %307
  %310 = getelementptr inbounds %struct.ip_reass_helper, %struct.ip_reass_helper* %288, i64 0, i32 2, !dbg !677
  %311 = load i16, i16* %310, align 1, !dbg !677, !tbaa !635
  %312 = icmp ult i16 %270, %311, !dbg !679
  br i1 %312, label %459, label %313, !dbg !680

; <label>:313:                                    ; preds = %309
  %314 = icmp eq %struct.ip_reass_helper* %285, null, !dbg !681
  br i1 %314, label %320, label %315, !dbg !684

; <label>:315:                                    ; preds = %313
  %316 = getelementptr inbounds %struct.ip_reass_helper, %struct.ip_reass_helper* %285, i64 0, i32 2, !dbg !685
  %317 = load i16, i16* %316, align 1, !dbg !685, !tbaa !635
  %318 = icmp eq i16 %317, %290, !dbg !688
  %319 = select i1 %318, i32 %284, i32 0, !dbg !689
  br label %320, !dbg !689

; <label>:320:                                    ; preds = %315, %313
  %321 = phi i32 [ %284, %313 ], [ %319, %315 ], !dbg !690
  %322 = getelementptr inbounds %struct.ip_reass_helper, %struct.ip_reass_helper* %288, i64 0, i32 0, !dbg !691
  %323 = load %struct.pbuf*, %struct.pbuf** %322, align 1, !dbg !642, !tbaa !152
  %324 = icmp eq %struct.pbuf* %323, null, !dbg !645
  br i1 %324, label %325, label %282, !dbg !646, !llvm.loop !692

; <label>:325:                                    ; preds = %320
  %326 = getelementptr inbounds %struct.ip_reass_helper, %struct.ip_reass_helper* %288, i64 0, i32 0, !dbg !691
  store %struct.pbuf* %0, %struct.pbuf** %326, align 1, !dbg !695, !tbaa !238
  %327 = icmp eq i16 %311, %270, !dbg !700
  %328 = select i1 %327, i32 %321, i32 0, !dbg !702
  br label %330, !dbg !702

; <label>:329:                                    ; preds = %278
  store %struct.pbuf* %0, %struct.pbuf** %279, align 8, !dbg !703, !tbaa !224
  br label %330

; <label>:330:                                    ; preds = %329, %325, %306, %300
  %331 = phi %struct.pbuf* [ %0, %329 ], [ %280, %325 ], [ %280, %300 ], [ %0, %306 ]
  %332 = phi i32 [ 1, %329 ], [ %328, %325 ], [ %303, %300 ], [ %284, %306 ], !dbg !705
  br i1 %245, label %341, label %333, !dbg !707

; <label>:333:                                    ; preds = %330
  %334 = getelementptr inbounds %struct.ip_reassdata, %struct.ip_reassdata* %242, i64 0, i32 4, !dbg !709
  %335 = load i8, i8* %334, align 2, !dbg !709, !tbaa !710
  %336 = and i8 %335, 1, !dbg !711
  %337 = icmp eq i8 %336, 0, !dbg !712
  br i1 %337, label %338, label %341, !dbg !713

; <label>:338:                                    ; preds = %333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !714
  %339 = load i16, i16* @ip_reass_pbufcount, align 2, !dbg !715, !tbaa !306
  %340 = add i16 %339, %31, !dbg !716
  store i16 %340, i16* @ip_reass_pbufcount, align 2, !dbg !717, !tbaa !306
  br label %478, !dbg !718

; <label>:341:                                    ; preds = %330, %333
  %342 = icmp eq i32 %332, 0, !dbg !719
  br i1 %342, label %381, label %343, !dbg !722

; <label>:343:                                    ; preds = %341
  %344 = load %struct.pbuf*, %struct.pbuf** %279, align 8, !dbg !723, !tbaa !224
  %345 = icmp eq %struct.pbuf* %344, null, !dbg !726
  br i1 %345, label %381, label %346, !dbg !727

; <label>:346:                                    ; preds = %343
  %347 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %344, i64 0, i32 1, !dbg !728
  %348 = bitcast i8** %347 to %struct.ip_reass_helper**, !dbg !728
  %349 = load %struct.ip_reass_helper*, %struct.ip_reass_helper** %348, align 8, !dbg !728, !tbaa !226
  %350 = getelementptr inbounds %struct.ip_reass_helper, %struct.ip_reass_helper* %349, i64 0, i32 1, !dbg !729
  %351 = load i16, i16* %350, align 1, !dbg !729, !tbaa !231
  %352 = icmp eq i16 %351, 0, !dbg !730
  br i1 %352, label %353, label %381, !dbg !731

; <label>:353:                                    ; preds = %346
  %354 = load %struct.pbuf*, %struct.pbuf** %273, align 1, !dbg !732, !tbaa !238
  %355 = icmp eq %struct.pbuf* %354, null, !dbg !735
  br i1 %355, label %377, label %356, !dbg !736

; <label>:356:                                    ; preds = %353
  %357 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %354, i64 0, i32 1, !dbg !737
  %358 = bitcast i8** %357 to %struct.ip_reass_helper**, !dbg !737
  %359 = load %struct.ip_reass_helper*, %struct.ip_reass_helper** %358, align 8, !dbg !737, !tbaa !226
  %360 = getelementptr inbounds %struct.ip_reass_helper, %struct.ip_reass_helper* %359, i64 0, i32 1, !dbg !738
  %361 = load i16, i16* %360, align 1, !dbg !738, !tbaa !231
  %362 = icmp eq i16 %275, %361, !dbg !740
  br i1 %362, label %363, label %381, !dbg !741

; <label>:363:                                    ; preds = %356, %368
  %364 = phi %struct.ip_reass_helper* [ %373, %368 ], [ %359, %356 ]
  %365 = getelementptr inbounds %struct.ip_reass_helper, %struct.ip_reass_helper* %364, i64 0, i32 0, !dbg !742
  %366 = load %struct.pbuf*, %struct.pbuf** %365, align 1, !dbg !732, !tbaa !238
  %367 = icmp eq %struct.pbuf* %366, null, !dbg !735
  br i1 %367, label %377, label %368, !dbg !736, !llvm.loop !743

; <label>:368:                                    ; preds = %363
  %369 = getelementptr inbounds %struct.ip_reass_helper, %struct.ip_reass_helper* %364, i64 0, i32 2
  %370 = load i16, i16* %369, align 1, !dbg !746, !tbaa !635
  %371 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %366, i64 0, i32 1, !dbg !737
  %372 = bitcast i8** %371 to %struct.ip_reass_helper**, !dbg !737
  %373 = load %struct.ip_reass_helper*, %struct.ip_reass_helper** %372, align 8, !dbg !737, !tbaa !226
  %374 = getelementptr inbounds %struct.ip_reass_helper, %struct.ip_reass_helper* %373, i64 0, i32 1, !dbg !738
  %375 = load i16, i16* %374, align 1, !dbg !738, !tbaa !231
  %376 = icmp eq i16 %370, %375, !dbg !740
  br i1 %376, label %363, label %381, !dbg !741

; <label>:377:                                    ; preds = %363, %353
  %378 = phi %struct.ip_reass_helper* [ %272, %353 ], [ %364, %363 ], !dbg !732
  %379 = icmp eq %struct.ip_reass_helper* %349, %378, !dbg !747
  br i1 %379, label %380, label %381, !dbg !752

; <label>:380:                                    ; preds = %377
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0)) #9, !dbg !753
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !756
  tail call void @ukplat_terminate(i32 3) #8, !dbg !756
  unreachable, !dbg !756

; <label>:381:                                    ; preds = %368, %341, %343, %346, %377, %356
  %382 = phi %struct.pbuf* [ %331, %341 ], [ %344, %346 ], [ null, %343 ], [ %344, %377 ], [ %344, %356 ], [ %344, %368 ]
  %383 = phi i32 [ 0, %341 ], [ 0, %346 ], [ 0, %343 ], [ %332, %377 ], [ 0, %356 ], [ 0, %368 ], !dbg !760
  %384 = icmp eq i32 %383, 0, !dbg !762
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !714
  %385 = load i16, i16* @ip_reass_pbufcount, align 2, !dbg !715, !tbaa !306
  %386 = add i16 %385, %31, !dbg !716
  store i16 %386, i16* @ip_reass_pbufcount, align 2, !dbg !717, !tbaa !306
  br i1 %245, label %387, label %393, !dbg !763

; <label>:387:                                    ; preds = %381
  %388 = add i16 %30, %17, !dbg !764
  %389 = getelementptr inbounds %struct.ip_reassdata, %struct.ip_reassdata* %242, i64 0, i32 3, !dbg !766
  store i16 %388, i16* %389, align 4, !dbg !767, !tbaa !768
  %390 = getelementptr inbounds %struct.ip_reassdata, %struct.ip_reassdata* %242, i64 0, i32 4, !dbg !769
  %391 = load i8, i8* %390, align 2, !dbg !770, !tbaa !710
  %392 = or i8 %391, 1, !dbg !770
  store i8 %392, i8* %390, align 2, !dbg !770, !tbaa !710
  br label %393, !dbg !771

; <label>:393:                                    ; preds = %387, %381
  br i1 %384, label %478, label %394, !dbg !718

; <label>:394:                                    ; preds = %393
  %395 = getelementptr inbounds %struct.ip_reassdata, %struct.ip_reassdata* %242, i64 0, i32 3, !dbg !772
  %396 = load i16, i16* %395, align 4, !dbg !772, !tbaa !768
  %397 = add i16 %396, 20, !dbg !773
  %398 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %382, i64 0, i32 1, !dbg !775
  %399 = load i8*, i8** %398, align 8, !dbg !775, !tbaa !226
  %400 = bitcast i8* %399 to %struct.pbuf**, !dbg !776
  %401 = load %struct.pbuf*, %struct.pbuf** %400, align 1, !dbg !776, !tbaa !238
  %402 = getelementptr inbounds %struct.ip_reassdata, %struct.ip_reassdata* %242, i64 0, i32 2, i32 0, !dbg !778
  %403 = tail call i8* @memcpy(i8* %399, i8* nonnull %402, i64 20) #9, !dbg !778
  %404 = tail call zeroext i16 @lwip_htons(i16 zeroext %397) #9, !dbg !779
  %405 = getelementptr inbounds i8, i8* %399, i64 2, !dbg !779
  %406 = bitcast i8* %405 to i16*, !dbg !779
  store i16 %404, i16* %406, align 1, !dbg !779, !tbaa !366
  %407 = getelementptr inbounds i8, i8* %399, i64 6, !dbg !780
  %408 = bitcast i8* %407 to i16*, !dbg !780
  store i16 0, i16* %408, align 1, !dbg !780, !tbaa !363
  %409 = getelementptr inbounds i8, i8* %399, i64 10, !dbg !781
  %410 = bitcast i8* %409 to i16*, !dbg !781
  store i16 0, i16* %410, align 1, !dbg !781, !tbaa !782
  %411 = load %struct.netif*, %struct.netif** getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 1), align 8, !dbg !783, !tbaa !785
  %412 = icmp eq %struct.netif* %411, null, !dbg !783
  br i1 %412, label %418, label %413, !dbg !783

; <label>:413:                                    ; preds = %394
  %414 = getelementptr inbounds %struct.netif, %struct.netif* %411, i64 0, i32 16, !dbg !783
  %415 = load i16, i16* %414, align 8, !dbg !783, !tbaa !788
  %416 = and i16 %415, 1, !dbg !783
  %417 = icmp eq i16 %416, 0, !dbg !783
  br i1 %417, label %420, label %418, !dbg !790

; <label>:418:                                    ; preds = %413, %394
  %419 = tail call zeroext i16 @inet_chksum(i8* %399, i16 zeroext 20) #9, !dbg !791
  store i16 %419, i16* %410, align 1, !dbg !791, !tbaa !782
  br label %420, !dbg !793

; <label>:420:                                    ; preds = %413, %418
  %421 = load %struct.pbuf*, %struct.pbuf** %279, align 8, !dbg !794, !tbaa !224
  %422 = icmp eq %struct.pbuf* %401, null, !dbg !795
  br i1 %422, label %432, label %423, !dbg !796

; <label>:423:                                    ; preds = %420, %423
  %424 = phi %struct.pbuf* [ %430, %423 ], [ %401, %420 ]
  %425 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %424, i64 0, i32 1, !dbg !797
  %426 = bitcast i8** %425 to %struct.ip_reass_helper**, !dbg !797
  %427 = load %struct.ip_reass_helper*, %struct.ip_reass_helper** %426, align 8, !dbg !797, !tbaa !226
  %428 = tail call zeroext i8 @pbuf_remove_header(%struct.pbuf* nonnull %424, i64 20) #9, !dbg !800
  tail call void @pbuf_cat(%struct.pbuf* %421, %struct.pbuf* nonnull %424) #9, !dbg !801
  %429 = getelementptr inbounds %struct.ip_reass_helper, %struct.ip_reass_helper* %427, i64 0, i32 0, !dbg !802
  %430 = load %struct.pbuf*, %struct.pbuf** %429, align 1, !dbg !802, !tbaa !238
  %431 = icmp eq %struct.pbuf* %430, null, !dbg !795
  br i1 %431, label %432, label %423, !dbg !796, !llvm.loop !803

; <label>:432:                                    ; preds = %423, %420
  %433 = load %struct.ip_reassdata*, %struct.ip_reassdata** @reassdatagrams, align 8, !dbg !805, !tbaa !152
  %434 = icmp eq %struct.ip_reassdata* %242, %433, !dbg !807
  br i1 %434, label %442, label %435, !dbg !808

; <label>:435:                                    ; preds = %432, %438
  %436 = phi %struct.ip_reassdata* [ %440, %438 ], [ %433, %432 ], !dbg !809
  %437 = icmp eq %struct.ip_reassdata* %436, null, !dbg !814
  br i1 %437, label %445, label %438, !dbg !815

; <label>:438:                                    ; preds = %435
  %439 = getelementptr inbounds %struct.ip_reassdata, %struct.ip_reassdata* %436, i64 0, i32 0, !dbg !816
  %440 = load %struct.ip_reassdata*, %struct.ip_reassdata** %439, align 8, !dbg !816, !tbaa !171
  %441 = icmp eq %struct.ip_reassdata* %440, %242, !dbg !819
  br i1 %441, label %446, label %435, !dbg !820, !llvm.loop !821

; <label>:442:                                    ; preds = %432
  %443 = bitcast %struct.ip_reassdata* %242 to i64*, !dbg !823
  %444 = load i64, i64* %443, align 8, !dbg !823, !tbaa !171
  store i64 %444, i64* bitcast (%struct.ip_reassdata** @reassdatagrams to i64*), align 8, !dbg !825, !tbaa !152
  br label %450, !dbg !826

; <label>:445:                                    ; preds = %435
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0)) #9, !dbg !828
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !829
  tail call void @ukplat_terminate(i32 3) #8, !dbg !829
  unreachable, !dbg !829

; <label>:446:                                    ; preds = %438
  %447 = bitcast %struct.ip_reassdata* %242 to i64*, !dbg !831
  %448 = load i64, i64* %447, align 8, !dbg !831, !tbaa !171
  %449 = bitcast %struct.ip_reassdata* %436 to i64*, !dbg !832
  store i64 %448, i64* %449, align 8, !dbg !832, !tbaa !171
  br label %450

; <label>:450:                                    ; preds = %442, %446
  %451 = bitcast %struct.ip_reassdata* %242 to i8*, !dbg !833
  tail call void @memp_free(i32 4, i8* %451) #9, !dbg !834
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !835
  %452 = tail call zeroext i16 @pbuf_clen(%struct.pbuf* %421) #9, !dbg !836
  %453 = load i16, i16* @ip_reass_pbufcount, align 2, !dbg !837, !tbaa !306
  %454 = icmp ult i16 %453, %452, !dbg !837
  br i1 %454, label %455, label %456, !dbg !840

; <label>:455:                                    ; preds = %450
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0)) #7, !dbg !841
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !844
  tail call void @ukplat_terminate(i32 3) #8, !dbg !844
  unreachable, !dbg !844

; <label>:456:                                    ; preds = %450
  %457 = sub i16 %453, %452, !dbg !848
  store i16 %457, i16* @ip_reass_pbufcount, align 2, !dbg !849, !tbaa !306
  br label %478

; <label>:458:                                    ; preds = %251, %264
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !714
  br label %462, !dbg !850

; <label>:459:                                    ; preds = %307, %309, %294, %304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !714
  %460 = icmp eq %struct.ip_reassdata* %242, null, !dbg !852
  br i1 %460, label %461, label %462, !dbg !850

; <label>:461:                                    ; preds = %459
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !854
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !857
  tail call void @ukplat_terminate(i32 3) #8, !dbg !857
  unreachable, !dbg !857

; <label>:462:                                    ; preds = %246, %458, %459
  %463 = getelementptr inbounds %struct.ip_reassdata, %struct.ip_reassdata* %242, i64 0, i32 1, !dbg !861
  %464 = load %struct.pbuf*, %struct.pbuf** %463, align 8, !dbg !861, !tbaa !224
  %465 = icmp eq %struct.pbuf* %464, null, !dbg !863
  br i1 %465, label %466, label %474, !dbg !864

; <label>:466:                                    ; preds = %462
  %467 = load %struct.ip_reassdata*, %struct.ip_reassdata** @reassdatagrams, align 8, !dbg !865, !tbaa !152
  %468 = icmp eq %struct.ip_reassdata* %242, %467, !dbg !865
  br i1 %468, label %470, label %469, !dbg !869

; <label>:469:                                    ; preds = %466
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !870
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !873
  tail call void @ukplat_terminate(i32 3) #8, !dbg !873
  unreachable, !dbg !873

; <label>:470:                                    ; preds = %466
  %471 = bitcast %struct.ip_reassdata* %242 to i64*, !dbg !880
  %472 = load i64, i64* %471, align 8, !dbg !880, !tbaa !171
  store i64 %472, i64* bitcast (%struct.ip_reassdata** @reassdatagrams to i64*), align 8, !dbg !881, !tbaa !152
  %473 = bitcast %struct.ip_reassdata* %242 to i8*, !dbg !882
  tail call void @memp_free(i32 4, i8* %473) #9, !dbg !883
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !884
  br label %474, !dbg !885

; <label>:474:                                    ; preds = %212, %462, %470, %215, %12, %105, %9
  %475 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 2, i32 3), align 2, !dbg !886, !tbaa !887
  %476 = add i16 %475, 1, !dbg !886
  store i16 %476, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 2, i32 3), align 2, !dbg !886, !tbaa !887
  %477 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %0) #9, !dbg !888
  br label %478, !dbg !889

; <label>:478:                                    ; preds = %393, %338, %474, %456
  %479 = phi %struct.pbuf* [ null, %474 ], [ %421, %456 ], [ null, %393 ], [ null, %338 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !890
  ret %struct.pbuf* %479, !dbg !890
}

; Function Attrs: noredzone
declare dso_local zeroext i16 @lwip_htons(i16 zeroext) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local zeroext i16 @pbuf_clen(%struct.pbuf*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local zeroext i16 @inet_chksum(i8*, i16 zeroext) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local zeroext i8 @pbuf_remove_header(%struct.pbuf*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @pbuf_cat(%struct.pbuf*, %struct.pbuf*) local_unnamed_addr #3

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8*, ...) unnamed_addr #4 !dbg !106 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !892
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #6, !dbg !892
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !894
  call void @llvm.va_start(i8* nonnull %3), !dbg !894
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @uk_pr_crit.__str.14, i64 0, i64 0), i32 198, i8* %0, %struct.__va_list_tag* nonnull %4) #9, !dbg !895
  call void @llvm.va_end(i8* nonnull %3), !dbg !898
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #6, !dbg !899
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !899
  ret void, !dbg !899
}

; Function Attrs: noredzone noreturn
declare dso_local void @ukplat_terminate(i32) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local zeroext i8 @pbuf_free(%struct.pbuf*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @icmp_time_exceeded(%struct.pbuf*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memp_malloc(i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @memp_free(i32, i8*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

; Function Attrs: noredzone
declare dso_local void @_uk_vprintk(i32, i8*, i8*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin noredzone }
attributes #8 = { nobuiltin noredzone noreturn nounwind }
attributes #9 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!136, !137, !138}
!llvm.ident = !{!139}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "reassdatagrams", scope: !2, file: !3, line: 114, type: !91, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !39, globals: !101)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/ipv4/ip4_frag.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{!5, !13, !18}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ukplat_gstate", file: !6, line: 68, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/bootstrap.h", directory: "/root/.unikraft/apps/redis/build")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "UKPLAT_HALT", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "UKPLAT_RESTART", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "UKPLAT_SUSPEND", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "UKPLAT_CRASH", value: 3, isUnsigned: true)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "icmp_te_type", file: !14, line: 71, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/icmp.h", directory: "/root/.unikraft/apps/redis/build")
!15 = !{!16, !17}
!16 = !DIEnumerator(name: "ICMP_TE_TTL", value: 0, isUnsigned: true)
!17 = !DIEnumerator(name: "ICMP_TE_FRAG", value: 1, isUnsigned: true)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !19, line: 52, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/memp.h", directory: "/root/.unikraft/apps/redis/build")
!20 = !{!21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38}
!21 = !DIEnumerator(name: "MEMP_UDP_PCB", value: 0, isUnsigned: true)
!22 = !DIEnumerator(name: "MEMP_TCP_PCB", value: 1, isUnsigned: true)
!23 = !DIEnumerator(name: "MEMP_TCP_PCB_LISTEN", value: 2, isUnsigned: true)
!24 = !DIEnumerator(name: "MEMP_TCP_SEG", value: 3, isUnsigned: true)
!25 = !DIEnumerator(name: "MEMP_REASSDATA", value: 4, isUnsigned: true)
!26 = !DIEnumerator(name: "MEMP_FRAG_PBUF", value: 5, isUnsigned: true)
!27 = !DIEnumerator(name: "MEMP_NETBUF", value: 6, isUnsigned: true)
!28 = !DIEnumerator(name: "MEMP_NETCONN", value: 7, isUnsigned: true)
!29 = !DIEnumerator(name: "MEMP_TCPIP_MSG_API", value: 8, isUnsigned: true)
!30 = !DIEnumerator(name: "MEMP_TCPIP_MSG_INPKT", value: 9, isUnsigned: true)
!31 = !DIEnumerator(name: "MEMP_SYS_TIMEOUT", value: 10, isUnsigned: true)
!32 = !DIEnumerator(name: "MEMP_NETDB", value: 11, isUnsigned: true)
!33 = !DIEnumerator(name: "MEMP_ND6_QUEUE", value: 12, isUnsigned: true)
!34 = !DIEnumerator(name: "MEMP_IP6_REASSDATA", value: 13, isUnsigned: true)
!35 = !DIEnumerator(name: "MEMP_MLD6_GROUP", value: 14, isUnsigned: true)
!36 = !DIEnumerator(name: "MEMP_PBUF", value: 15, isUnsigned: true)
!37 = !DIEnumerator(name: "MEMP_PBUF_POOL", value: 16, isUnsigned: true)
!38 = !DIEnumerator(name: "MEMP_MAX", value: 17, isUnsigned: true)
!39 = !{!40, !41, !46, !55, !73, !91}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_hdr", file: !43, line: 73, size: 160, elements: !44)
!43 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/prot/ip4.h", directory: "/root/.unikraft/apps/redis/build")
!44 = !{!45, !53, !54, !59, !60, !61, !62, !63, !64, !72}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_v_hl", scope: !42, file: !43, line: 75, baseType: !46, size: 8)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8_t", file: !47, line: 125, baseType: !48)
!47 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/arch.h", directory: "/root/.unikraft/apps/redis/build")
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !49, line: 24, baseType: !50)
!49 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !51, line: 43, baseType: !52)
!51 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!52 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_tos", scope: !42, file: !43, line: 77, baseType: !46, size: 8, offset: 8)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_len", scope: !42, file: !43, line: 79, baseType: !55, size: 16, offset: 16)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16_t", file: !47, line: 127, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !49, line: 36, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !51, line: 57, baseType: !58)
!58 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_id", scope: !42, file: !43, line: 81, baseType: !55, size: 16, offset: 32)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !42, file: !43, line: 83, baseType: !55, size: 16, offset: 48)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_ttl", scope: !42, file: !43, line: 89, baseType: !46, size: 8, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_proto", scope: !42, file: !43, line: 91, baseType: !46, size: 8, offset: 72)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_chksum", scope: !42, file: !43, line: 93, baseType: !55, size: 16, offset: 80)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !42, file: !43, line: 95, baseType: !65, size: 32, offset: 96)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip4_addr_p_t", file: !43, line: 61, baseType: !66)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip4_addr_packed", file: !43, line: 53, size: 32, elements: !67)
!67 = !{!68}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !66, file: !43, line: 54, baseType: !69, size: 32)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32_t", file: !47, line: 129, baseType: !70)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !49, line: 48, baseType: !71)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !51, line: 79, baseType: !7)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !42, file: !43, line: 96, baseType: !65, size: 32, offset: 128)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_reass_helper", file: !3, line: 98, size: 96, elements: !75)
!75 = !{!76, !89, !90}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "next_pbuf", scope: !74, file: !3, line: 99, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pbuf", file: !79, line: 186, size: 192, elements: !80)
!79 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/pbuf.h", directory: "/root/.unikraft/apps/redis/build")
!80 = !{!81, !82, !83, !84, !85, !86, !87, !88}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !78, file: !79, line: 188, baseType: !77, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !78, file: !79, line: 191, baseType: !40, size: 64, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "tot_len", scope: !78, file: !79, line: 200, baseType: !55, size: 16, offset: 128)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !78, file: !79, line: 203, baseType: !55, size: 16, offset: 144)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "type_internal", scope: !78, file: !79, line: 208, baseType: !46, size: 8, offset: 160)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !78, file: !79, line: 211, baseType: !46, size: 8, offset: 168)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !78, file: !79, line: 218, baseType: !46, size: 8, offset: 176)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "if_idx", scope: !78, file: !79, line: 221, baseType: !46, size: 8, offset: 184)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !74, file: !3, line: 100, baseType: !55, size: 16, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !74, file: !3, line: 101, baseType: !55, size: 16, offset: 80)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_reassdata", file: !93, line: 61, size: 320, elements: !94)
!93 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip4_frag.h", directory: "/root/.unikraft/apps/redis/build")
!94 = !{!95, !96, !97, !98, !99, !100}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !92, file: !93, line: 62, baseType: !91, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !92, file: !93, line: 63, baseType: !77, size: 64, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "iphdr", scope: !92, file: !93, line: 64, baseType: !42, size: 160, offset: 128)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "datagram_len", scope: !92, file: !93, line: 65, baseType: !55, size: 16, offset: 288)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !92, file: !93, line: 66, baseType: !46, size: 8, offset: 304)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !92, file: !93, line: 67, baseType: !46, size: 8, offset: 312)
!101 = !{!0, !102, !104, !131}
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(name: "ip_reass_pbufcount", scope: !2, file: !3, line: 115, type: !55, isLocal: true, isDefinition: true)
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
!124 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !120, file: !3, line: 196, baseType: !40, size: 64, offset: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !120, file: !3, line: 196, baseType: !40, size: 64, offset: 128)
!126 = !{!127}
!127 = !DISubrange(count: 1)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 64, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 8)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(name: "__str", scope: !106, file: !107, line: 198, type: !133, isLocal: true, isDefinition: true)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 88, elements: !134)
!134 = !{!135}
!135 = !DISubrange(count: 11)
!136 = !{i32 2, !"Dwarf Version", i32 4}
!137 = !{i32 2, !"Debug Info Version", i32 3}
!138 = !{i32 1, !"wchar_size", i32 4}
!139 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!140 = distinct !DISubprogram(name: "ip_reass_tmr", scope: !3, file: !3, line: 128, type: !141, isLocal: false, isDefinition: true, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !143)
!141 = !DISubroutineType(types: !142)
!142 = !{null}
!143 = !{!144, !145, !146}
!144 = !DILocalVariable(name: "r", scope: !140, file: !3, line: 130, type: !91)
!145 = !DILocalVariable(name: "prev", scope: !140, file: !3, line: 130, type: !91)
!146 = !DILocalVariable(name: "tmp", scope: !147, file: !3, line: 143, type: !91)
!147 = distinct !DILexicalBlock(scope: !148, file: !3, line: 141, column: 12)
!148 = distinct !DILexicalBlock(scope: !149, file: !3, line: 136, column: 9)
!149 = distinct !DILexicalBlock(scope: !140, file: !3, line: 133, column: 21)
!150 = !DILocation(line: 130, column: 28, scope: !140)
!151 = !DILocation(line: 132, column: 7, scope: !140)
!152 = !{!153, !153, i64 0}
!153 = !{!"any pointer", !154, i64 0}
!154 = !{!"omnipotent char", !155, i64 0}
!155 = !{!"Simple C/C++ TBAA"}
!156 = !DILocation(line: 130, column: 24, scope: !140)
!157 = !DILocation(line: 133, column: 12, scope: !140)
!158 = !DILocation(line: 133, column: 3, scope: !140)
!159 = !DILocation(line: 136, column: 12, scope: !148)
!160 = !{!161, !154, i64 39}
!161 = !{!"ip_reassdata", !153, i64 0, !153, i64 8, !162, i64 16, !163, i64 36, !154, i64 38, !154, i64 39}
!162 = !{!"ip_hdr", !154, i64 0, !154, i64 1, !163, i64 2, !163, i64 4, !163, i64 6, !154, i64 8, !154, i64 9, !163, i64 10, !164, i64 12, !164, i64 16}
!163 = !{!"short", !154, i64 0}
!164 = !{!"ip4_addr_packed", !165, i64 0}
!165 = !{!"int", !154, i64 0}
!166 = !DILocation(line: 136, column: 18, scope: !148)
!167 = !DILocation(line: 136, column: 9, scope: !149)
!168 = !DILocation(line: 137, column: 15, scope: !169)
!169 = distinct !DILexicalBlock(scope: !148, file: !3, line: 136, column: 23)
!170 = !DILocation(line: 140, column: 14, scope: !169)
!171 = !{!161, !153, i64 0}
!172 = !DILocation(line: 141, column: 5, scope: !169)
!173 = !DILocation(line: 143, column: 28, scope: !147)
!174 = !DILocation(line: 147, column: 14, scope: !147)
!175 = !DILocation(line: 149, column: 7, scope: !147)
!176 = !DILocation(line: 0, scope: !140)
!177 = !DILocation(line: 0, scope: !147)
!178 = distinct !{!178, !158, !179}
!179 = !DILocation(line: 151, column: 3, scope: !140)
!180 = !DILocation(line: 152, column: 1, scope: !140)
!181 = distinct !DISubprogram(name: "ip_reass_free_complete_datagram", scope: !3, file: !3, line: 164, type: !182, isLocal: true, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !185)
!182 = !DISubroutineType(types: !183)
!183 = !{!184, !91, !91}
!184 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!185 = !{!186, !187, !188, !189, !190, !191, !192}
!186 = !DILocalVariable(name: "ipr", arg: 1, scope: !181, file: !3, line: 164, type: !91)
!187 = !DILocalVariable(name: "prev", arg: 2, scope: !181, file: !3, line: 164, type: !91)
!188 = !DILocalVariable(name: "pbufs_freed", scope: !181, file: !3, line: 166, type: !55)
!189 = !DILocalVariable(name: "clen", scope: !181, file: !3, line: 167, type: !55)
!190 = !DILocalVariable(name: "p", scope: !181, file: !3, line: 168, type: !77)
!191 = !DILocalVariable(name: "iprh", scope: !181, file: !3, line: 169, type: !73)
!192 = !DILocalVariable(name: "pcur", scope: !193, file: !3, line: 198, type: !77)
!193 = distinct !DILexicalBlock(scope: !181, file: !3, line: 197, column: 21)
!194 = !DILocation(line: 164, column: 54, scope: !181)
!195 = !DILocation(line: 164, column: 80, scope: !181)
!196 = !DILocation(line: 166, column: 9, scope: !181)
!197 = !DILocation(line: 171, column: 3, scope: !198)
!198 = distinct !DILexicalBlock(scope: !199, file: !3, line: 171, column: 3)
!199 = distinct !DILexicalBlock(scope: !181, file: !3, line: 171, column: 3)
!200 = !DILocation(line: 171, column: 3, scope: !199)
!201 = !DILocation(line: 171, column: 3, scope: !202)
!202 = distinct !DILexicalBlock(scope: !203, file: !3, line: 171, column: 3)
!203 = distinct !DILexicalBlock(scope: !198, file: !3, line: 171, column: 3)
!204 = !DILocation(line: 171, column: 3, scope: !205)
!205 = distinct !DILexicalBlock(scope: !206, file: !3, line: 171, column: 3)
!206 = distinct !DILexicalBlock(scope: !207, file: !3, line: 171, column: 3)
!207 = distinct !DILexicalBlock(scope: !202, file: !3, line: 171, column: 3)
!208 = !DILocation(line: 172, column: 12, scope: !209)
!209 = distinct !DILexicalBlock(scope: !181, file: !3, line: 172, column: 7)
!210 = !DILocation(line: 172, column: 7, scope: !181)
!211 = !DILocation(line: 173, column: 5, scope: !212)
!212 = distinct !DILexicalBlock(scope: !213, file: !3, line: 173, column: 5)
!213 = distinct !DILexicalBlock(scope: !214, file: !3, line: 173, column: 5)
!214 = distinct !DILexicalBlock(scope: !209, file: !3, line: 172, column: 21)
!215 = !DILocation(line: 173, column: 5, scope: !213)
!216 = !DILocation(line: 173, column: 5, scope: !217)
!217 = distinct !DILexicalBlock(scope: !218, file: !3, line: 173, column: 5)
!218 = distinct !DILexicalBlock(scope: !212, file: !3, line: 173, column: 5)
!219 = !DILocation(line: 173, column: 5, scope: !220)
!220 = distinct !DILexicalBlock(scope: !221, file: !3, line: 173, column: 5)
!221 = distinct !DILexicalBlock(scope: !222, file: !3, line: 173, column: 5)
!222 = distinct !DILexicalBlock(scope: !217, file: !3, line: 173, column: 5)
!223 = !DILocation(line: 178, column: 41, scope: !181)
!224 = !{!161, !153, i64 8}
!225 = !DILocation(line: 178, column: 44, scope: !181)
!226 = !{!227, !153, i64 8}
!227 = !{!"pbuf", !153, i64 0, !153, i64 8, !163, i64 16, !163, i64 18, !154, i64 20, !154, i64 21, !154, i64 22, !154, i64 23}
!228 = !DILocation(line: 169, column: 27, scope: !181)
!229 = !DILocation(line: 179, column: 13, scope: !230)
!230 = distinct !DILexicalBlock(scope: !181, file: !3, line: 179, column: 7)
!231 = !{!232, !163, i64 8}
!232 = !{!"ip_reass_helper", !153, i64 0, !163, i64 8, !163, i64 10}
!233 = !DILocation(line: 179, column: 19, scope: !230)
!234 = !DILocation(line: 179, column: 7, scope: !181)
!235 = !DILocation(line: 168, column: 16, scope: !181)
!236 = !DILocation(line: 183, column: 20, scope: !237)
!237 = distinct !DILexicalBlock(scope: !230, file: !3, line: 179, column: 25)
!238 = !{!232, !153, i64 0}
!239 = !DILocation(line: 183, column: 12, scope: !237)
!240 = !DILocation(line: 185, column: 5, scope: !237)
!241 = !DILocation(line: 186, column: 5, scope: !237)
!242 = !DILocation(line: 187, column: 12, scope: !237)
!243 = !DILocation(line: 167, column: 9, scope: !181)
!244 = !DILocation(line: 190, column: 5, scope: !237)
!245 = !DILocation(line: 196, column: 12, scope: !181)
!246 = !DILocation(line: 191, column: 3, scope: !237)
!247 = !DILocation(line: 0, scope: !181)
!248 = !DILocation(line: 197, column: 12, scope: !181)
!249 = !DILocation(line: 197, column: 3, scope: !181)
!250 = !DILocation(line: 199, column: 41, scope: !193)
!251 = !DILocation(line: 198, column: 18, scope: !193)
!252 = !DILocation(line: 202, column: 15, scope: !193)
!253 = !DILocation(line: 203, column: 12, scope: !193)
!254 = !DILocation(line: 204, column: 5, scope: !255)
!255 = distinct !DILexicalBlock(scope: !256, file: !3, line: 204, column: 5)
!256 = distinct !DILexicalBlock(scope: !193, file: !3, line: 204, column: 5)
!257 = !DILocation(line: 204, column: 5, scope: !256)
!258 = !DILocation(line: 204, column: 5, scope: !259)
!259 = distinct !DILexicalBlock(scope: !260, file: !3, line: 204, column: 5)
!260 = distinct !DILexicalBlock(scope: !255, file: !3, line: 204, column: 5)
!261 = !DILocation(line: 204, column: 5, scope: !262)
!262 = distinct !DILexicalBlock(scope: !263, file: !3, line: 204, column: 5)
!263 = distinct !DILexicalBlock(scope: !264, file: !3, line: 204, column: 5)
!264 = distinct !DILexicalBlock(scope: !259, file: !3, line: 204, column: 5)
!265 = !DILocation(line: 205, column: 19, scope: !193)
!266 = !DILocation(line: 206, column: 5, scope: !193)
!267 = distinct !{!267, !249, !268}
!268 = !DILocation(line: 207, column: 3, scope: !181)
!269 = !DILocation(line: 320, column: 7, scope: !270, inlinedAt: !277)
!270 = distinct !DILexicalBlock(scope: !271, file: !3, line: 320, column: 7)
!271 = distinct !DISubprogram(name: "ip_reass_dequeue_datagram", scope: !3, file: !3, line: 317, type: !272, isLocal: true, isDefinition: true, scopeLine: 318, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !274)
!272 = !DISubroutineType(types: !273)
!273 = !{null, !91, !91}
!274 = !{!275, !276}
!275 = !DILocalVariable(name: "ipr", arg: 1, scope: !271, file: !3, line: 317, type: !91)
!276 = !DILocalVariable(name: "prev", arg: 2, scope: !271, file: !3, line: 317, type: !91)
!277 = distinct !DILocation(line: 209, column: 3, scope: !181)
!278 = !DILocation(line: 0, scope: !193)
!279 = !DILocation(line: 317, column: 48, scope: !271, inlinedAt: !277)
!280 = !DILocation(line: 317, column: 74, scope: !271, inlinedAt: !277)
!281 = !DILocation(line: 320, column: 22, scope: !270, inlinedAt: !277)
!282 = !DILocation(line: 320, column: 7, scope: !271, inlinedAt: !277)
!283 = !DILocation(line: 322, column: 27, scope: !284, inlinedAt: !277)
!284 = distinct !DILexicalBlock(scope: !270, file: !3, line: 320, column: 30)
!285 = !DILocation(line: 322, column: 20, scope: !284, inlinedAt: !277)
!286 = !DILocation(line: 323, column: 3, scope: !284, inlinedAt: !277)
!287 = !DILocation(line: 325, column: 5, scope: !288, inlinedAt: !277)
!288 = distinct !DILexicalBlock(scope: !289, file: !3, line: 325, column: 5)
!289 = distinct !DILexicalBlock(scope: !270, file: !3, line: 323, column: 10)
!290 = !DILocation(line: 325, column: 5, scope: !291, inlinedAt: !277)
!291 = distinct !DILexicalBlock(scope: !292, file: !3, line: 325, column: 5)
!292 = distinct !DILexicalBlock(scope: !293, file: !3, line: 325, column: 5)
!293 = distinct !DILexicalBlock(scope: !288, file: !3, line: 325, column: 5)
!294 = !DILocation(line: 325, column: 5, scope: !295, inlinedAt: !277)
!295 = distinct !DILexicalBlock(scope: !296, file: !3, line: 325, column: 5)
!296 = distinct !DILexicalBlock(scope: !297, file: !3, line: 325, column: 5)
!297 = distinct !DILexicalBlock(scope: !291, file: !3, line: 325, column: 5)
!298 = !DILocation(line: 326, column: 23, scope: !289, inlinedAt: !277)
!299 = !DILocation(line: 326, column: 16, scope: !289, inlinedAt: !277)
!300 = !DILocation(line: 330, column: 29, scope: !271, inlinedAt: !277)
!301 = !DILocation(line: 330, column: 3, scope: !271, inlinedAt: !277)
!302 = !DILocation(line: 331, column: 1, scope: !271, inlinedAt: !277)
!303 = !DILocation(line: 210, column: 3, scope: !304)
!304 = distinct !DILexicalBlock(scope: !305, file: !3, line: 210, column: 3)
!305 = distinct !DILexicalBlock(scope: !181, file: !3, line: 210, column: 3)
!306 = !{!163, !163, i64 0}
!307 = !DILocation(line: 210, column: 3, scope: !305)
!308 = !DILocation(line: 210, column: 3, scope: !309)
!309 = distinct !DILexicalBlock(scope: !310, file: !3, line: 210, column: 3)
!310 = distinct !DILexicalBlock(scope: !304, file: !3, line: 210, column: 3)
!311 = !DILocation(line: 210, column: 3, scope: !312)
!312 = distinct !DILexicalBlock(scope: !313, file: !3, line: 210, column: 3)
!313 = distinct !DILexicalBlock(scope: !314, file: !3, line: 210, column: 3)
!314 = distinct !DILexicalBlock(scope: !309, file: !3, line: 210, column: 3)
!315 = !DILocation(line: 211, column: 51, scope: !181)
!316 = !DILocation(line: 211, column: 22, scope: !181)
!317 = !DILocation(line: 213, column: 3, scope: !181)
!318 = distinct !DISubprogram(name: "ip4_reass", scope: !3, file: !3, line: 503, type: !319, isLocal: false, isDefinition: true, scopeLine: 504, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !321)
!319 = !DISubroutineType(types: !320)
!320 = !{!77, !77}
!321 = !{!322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !336, !339, !342}
!322 = !DILocalVariable(name: "p", arg: 1, scope: !318, file: !3, line: 503, type: !77)
!323 = !DILocalVariable(name: "r", scope: !318, file: !3, line: 505, type: !77)
!324 = !DILocalVariable(name: "fraghdr", scope: !318, file: !3, line: 506, type: !41)
!325 = !DILocalVariable(name: "ipr", scope: !318, file: !3, line: 507, type: !91)
!326 = !DILocalVariable(name: "iprh", scope: !318, file: !3, line: 508, type: !73)
!327 = !DILocalVariable(name: "offset", scope: !318, file: !3, line: 509, type: !55)
!328 = !DILocalVariable(name: "len", scope: !318, file: !3, line: 509, type: !55)
!329 = !DILocalVariable(name: "clen", scope: !318, file: !3, line: 509, type: !55)
!330 = !DILocalVariable(name: "hlen", scope: !318, file: !3, line: 510, type: !46)
!331 = !DILocalVariable(name: "valid", scope: !318, file: !3, line: 511, type: !184)
!332 = !DILocalVariable(name: "is_last", scope: !318, file: !3, line: 512, type: !184)
!333 = !DILocalVariable(name: "datagram_len", scope: !334, file: !3, line: 590, type: !55)
!334 = distinct !DILexicalBlock(scope: !335, file: !3, line: 589, column: 16)
!335 = distinct !DILexicalBlock(scope: !318, file: !3, line: 589, column: 7)
!336 = !DILocalVariable(name: "datagram_len", scope: !337, file: !3, line: 609, type: !55)
!337 = distinct !DILexicalBlock(scope: !338, file: !3, line: 608, column: 16)
!338 = distinct !DILexicalBlock(scope: !318, file: !3, line: 608, column: 7)
!339 = !DILocalVariable(name: "ipr_prev", scope: !340, file: !3, line: 618, type: !91)
!340 = distinct !DILexicalBlock(scope: !341, file: !3, line: 617, column: 53)
!341 = distinct !DILexicalBlock(scope: !318, file: !3, line: 617, column: 7)
!342 = !DILocalVariable(name: "datagram_len", scope: !340, file: !3, line: 621, type: !55)
!343 = !DILocation(line: 503, column: 24, scope: !318)
!344 = !DILocation(line: 514, column: 3, scope: !318)
!345 = !{!346, !163, i64 50}
!346 = !{!"stats_", !347, i64 0, !347, i64 24, !347, i64 48, !347, i64 72, !347, i64 96, !347, i64 120, !347, i64 144, !348, i64 168, !347, i64 186, !347, i64 210, !347, i64 234, !350, i64 258, !347, i64 286}
!347 = !{!"stats_proto", !163, i64 0, !163, i64 2, !163, i64 4, !163, i64 6, !163, i64 8, !163, i64 10, !163, i64 12, !163, i64 14, !163, i64 16, !163, i64 18, !163, i64 20, !163, i64 22}
!348 = !{!"stats_sys", !349, i64 0, !349, i64 6, !349, i64 12}
!349 = !{!"stats_syselem", !163, i64 0, !163, i64 2, !163, i64 4}
!350 = !{!"stats_igmp", !163, i64 0, !163, i64 2, !163, i64 4, !163, i64 6, !163, i64 8, !163, i64 10, !163, i64 12, !163, i64 14, !163, i64 16, !163, i64 18, !163, i64 20, !163, i64 22, !163, i64 24, !163, i64 26}
!351 = !DILocation(line: 517, column: 33, scope: !318)
!352 = !DILocation(line: 506, column: 18, scope: !318)
!353 = !DILocation(line: 519, column: 7, scope: !354)
!354 = distinct !DILexicalBlock(scope: !318, file: !3, line: 519, column: 7)
!355 = !{!162, !154, i64 0}
!356 = !DILocation(line: 519, column: 29, scope: !354)
!357 = !DILocation(line: 519, column: 7, scope: !318)
!358 = !DILocation(line: 521, column: 5, scope: !359)
!359 = distinct !DILexicalBlock(scope: !354, file: !3, line: 519, column: 41)
!360 = !{!346, !163, i64 68}
!361 = !DILocation(line: 522, column: 5, scope: !359)
!362 = !DILocation(line: 525, column: 12, scope: !318)
!363 = !{!162, !163, i64 6}
!364 = !DILocation(line: 509, column: 9, scope: !318)
!365 = !DILocation(line: 526, column: 9, scope: !318)
!366 = !{!162, !163, i64 2}
!367 = !DILocation(line: 509, column: 17, scope: !318)
!368 = !DILocation(line: 527, column: 10, scope: !318)
!369 = !DILocation(line: 510, column: 8, scope: !318)
!370 = !DILocation(line: 528, column: 7, scope: !371)
!371 = distinct !DILexicalBlock(scope: !318, file: !3, line: 528, column: 7)
!372 = !DILocation(line: 528, column: 14, scope: !371)
!373 = !DILocation(line: 528, column: 12, scope: !371)
!374 = !DILocation(line: 528, column: 7, scope: !318)
!375 = !DILocation(line: 532, column: 9, scope: !318)
!376 = !DILocation(line: 535, column: 10, scope: !318)
!377 = !DILocation(line: 509, column: 22, scope: !318)
!378 = !DILocation(line: 536, column: 8, scope: !379)
!379 = distinct !DILexicalBlock(scope: !318, file: !3, line: 536, column: 7)
!380 = !DILocation(line: 536, column: 29, scope: !379)
!381 = !DILocation(line: 536, column: 27, scope: !379)
!382 = !DILocation(line: 536, column: 35, scope: !379)
!383 = !DILocation(line: 536, column: 7, scope: !318)
!384 = !DILocalVariable(name: "fraghdr", arg: 1, scope: !385, file: !3, line: 227, type: !41)
!385 = distinct !DISubprogram(name: "ip_reass_remove_oldest_datagram", scope: !3, file: !3, line: 227, type: !386, isLocal: true, isDefinition: true, scopeLine: 228, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !388)
!386 = !DISubroutineType(types: !387)
!387 = !{!184, !41, !184}
!388 = !{!384, !389, !390, !391, !392, !393, !394, !395, !396}
!389 = !DILocalVariable(name: "pbufs_needed", arg: 2, scope: !385, file: !3, line: 227, type: !184)
!390 = !DILocalVariable(name: "r", scope: !385, file: !3, line: 232, type: !91)
!391 = !DILocalVariable(name: "oldest", scope: !385, file: !3, line: 232, type: !91)
!392 = !DILocalVariable(name: "prev", scope: !385, file: !3, line: 232, type: !91)
!393 = !DILocalVariable(name: "oldest_prev", scope: !385, file: !3, line: 232, type: !91)
!394 = !DILocalVariable(name: "pbufs_freed", scope: !385, file: !3, line: 233, type: !184)
!395 = !DILocalVariable(name: "pbufs_freed_current", scope: !385, file: !3, line: 233, type: !184)
!396 = !DILocalVariable(name: "other_datagrams", scope: !385, file: !3, line: 234, type: !184)
!397 = !DILocation(line: 227, column: 48, scope: !385, inlinedAt: !398)
!398 = distinct !DILocation(line: 538, column: 10, scope: !399)
!399 = distinct !DILexicalBlock(scope: !400, file: !3, line: 538, column: 9)
!400 = distinct !DILexicalBlock(scope: !379, file: !3, line: 536, column: 57)
!401 = !DILocation(line: 227, column: 61, scope: !385, inlinedAt: !398)
!402 = !DILocation(line: 233, column: 7, scope: !385, inlinedAt: !398)
!403 = !DILocation(line: 238, column: 3, scope: !385, inlinedAt: !398)
!404 = !DILocation(line: 0, scope: !405, inlinedAt: !398)
!405 = distinct !DILexicalBlock(scope: !406, file: !3, line: 262, column: 25)
!406 = distinct !DILexicalBlock(scope: !407, file: !3, line: 262, column: 9)
!407 = distinct !DILexicalBlock(scope: !385, file: !3, line: 238, column: 6)
!408 = !DILocation(line: 232, column: 28, scope: !385, inlinedAt: !398)
!409 = !DILocation(line: 232, column: 37, scope: !385, inlinedAt: !398)
!410 = !DILocation(line: 232, column: 44, scope: !385, inlinedAt: !398)
!411 = !DILocation(line: 234, column: 7, scope: !385, inlinedAt: !398)
!412 = !DILocation(line: 232, column: 24, scope: !385, inlinedAt: !398)
!413 = !DILocation(line: 0, scope: !414, inlinedAt: !398)
!414 = distinct !DILexicalBlock(scope: !407, file: !3, line: 244, column: 23)
!415 = !DILocation(line: 244, column: 14, scope: !407, inlinedAt: !398)
!416 = !DILocation(line: 244, column: 5, scope: !407, inlinedAt: !398)
!417 = !{!162, !165, i64 12}
!418 = !DILocation(line: 245, column: 12, scope: !419, inlinedAt: !398)
!419 = distinct !DILexicalBlock(scope: !414, file: !3, line: 245, column: 11)
!420 = !{!161, !165, i64 28}
!421 = !{!161, !165, i64 32}
!422 = !{!162, !165, i64 16}
!423 = !{!161, !163, i64 20}
!424 = !{!162, !163, i64 4}
!425 = !DILocation(line: 245, column: 11, scope: !414, inlinedAt: !398)
!426 = !DILocation(line: 247, column: 24, scope: !427, inlinedAt: !398)
!427 = distinct !DILexicalBlock(scope: !419, file: !3, line: 245, column: 59)
!428 = !DILocation(line: 248, column: 20, scope: !429, inlinedAt: !398)
!429 = distinct !DILexicalBlock(scope: !427, file: !3, line: 248, column: 13)
!430 = !DILocation(line: 248, column: 13, scope: !427, inlinedAt: !398)
!431 = !DILocation(line: 251, column: 23, scope: !432, inlinedAt: !398)
!432 = distinct !DILexicalBlock(scope: !429, file: !3, line: 251, column: 20)
!433 = !DILocation(line: 251, column: 40, scope: !432, inlinedAt: !398)
!434 = !DILocation(line: 251, column: 29, scope: !432, inlinedAt: !398)
!435 = !DILocation(line: 251, column: 20, scope: !429, inlinedAt: !398)
!436 = !DILocation(line: 0, scope: !407, inlinedAt: !398)
!437 = !DILocation(line: 0, scope: !427, inlinedAt: !398)
!438 = !DILocation(line: 257, column: 14, scope: !439, inlinedAt: !398)
!439 = distinct !DILexicalBlock(scope: !414, file: !3, line: 257, column: 11)
!440 = !DILocation(line: 257, column: 19, scope: !439, inlinedAt: !398)
!441 = distinct !{!441, !442, !443}
!442 = !DILocation(line: 244, column: 5, scope: !407)
!443 = !DILocation(line: 261, column: 5, scope: !407)
!444 = !DILocation(line: 262, column: 16, scope: !406, inlinedAt: !398)
!445 = !DILocation(line: 262, column: 9, scope: !407, inlinedAt: !398)
!446 = !DILocation(line: 263, column: 29, scope: !405, inlinedAt: !398)
!447 = !DILocation(line: 233, column: 24, scope: !385, inlinedAt: !398)
!448 = !DILocation(line: 264, column: 19, scope: !405, inlinedAt: !398)
!449 = !DILocation(line: 265, column: 5, scope: !405, inlinedAt: !398)
!450 = !DILocation(line: 0, scope: !385, inlinedAt: !398)
!451 = !DILocation(line: 266, column: 25, scope: !385, inlinedAt: !398)
!452 = !DILocation(line: 266, column: 61, scope: !385, inlinedAt: !398)
!453 = !DILocation(line: 266, column: 41, scope: !385, inlinedAt: !398)
!454 = !DILocation(line: 266, column: 3, scope: !407, inlinedAt: !398)
!455 = distinct !{!455, !456, !457}
!456 = !DILocation(line: 238, column: 3, scope: !385)
!457 = !DILocation(line: 266, column: 65, scope: !385)
!458 = !DILocation(line: 267, column: 3, scope: !385, inlinedAt: !398)
!459 = !DILocation(line: 538, column: 10, scope: !399)
!460 = !DILocation(line: 538, column: 57, scope: !399)
!461 = !DILocation(line: 539, column: 11, scope: !399)
!462 = !DILocation(line: 539, column: 30, scope: !399)
!463 = !DILocation(line: 539, column: 38, scope: !399)
!464 = !DILocation(line: 538, column: 9, scope: !400)
!465 = !DILocation(line: 545, column: 7, scope: !466)
!466 = distinct !DILexicalBlock(scope: !399, file: !3, line: 541, column: 5)
!467 = !{!346, !163, i64 60}
!468 = !DILocation(line: 548, column: 7, scope: !466)
!469 = !DILocation(line: 507, column: 24, scope: !318)
!470 = !DILocation(line: 0, scope: !471)
!471 = distinct !DILexicalBlock(scope: !472, file: !3, line: 554, column: 3)
!472 = distinct !DILexicalBlock(scope: !318, file: !3, line: 554, column: 3)
!473 = !DILocation(line: 554, column: 3, scope: !472)
!474 = !DILocation(line: 558, column: 9, scope: !475)
!475 = distinct !DILexicalBlock(scope: !476, file: !3, line: 558, column: 9)
!476 = distinct !DILexicalBlock(scope: !471, file: !3, line: 554, column: 60)
!477 = !DILocation(line: 558, column: 9, scope: !476)
!478 = !DILocation(line: 554, column: 54, scope: !471)
!479 = distinct !{!479, !473, !480}
!480 = !DILocation(line: 564, column: 3, scope: !472)
!481 = !DILocalVariable(name: "fraghdr", arg: 1, scope: !482, file: !3, line: 278, type: !41)
!482 = distinct !DISubprogram(name: "ip_reass_enqueue_new_datagram", scope: !3, file: !3, line: 278, type: !483, isLocal: true, isDefinition: true, scopeLine: 279, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !485)
!483 = !DISubroutineType(types: !484)
!484 = !{!91, !41, !184}
!485 = !{!481, !486, !487}
!486 = !DILocalVariable(name: "clen", arg: 2, scope: !482, file: !3, line: 278, type: !184)
!487 = !DILocalVariable(name: "ipr", scope: !482, file: !3, line: 280, type: !91)
!488 = !DILocation(line: 278, column: 46, scope: !482, inlinedAt: !489)
!489 = distinct !DILocation(line: 568, column: 11, scope: !490)
!490 = distinct !DILexicalBlock(scope: !491, file: !3, line: 566, column: 20)
!491 = distinct !DILexicalBlock(scope: !318, file: !3, line: 566, column: 7)
!492 = !DILocation(line: 278, column: 59, scope: !482, inlinedAt: !489)
!493 = !DILocation(line: 286, column: 32, scope: !482, inlinedAt: !489)
!494 = !DILocation(line: 286, column: 9, scope: !482, inlinedAt: !489)
!495 = !DILocation(line: 280, column: 24, scope: !482, inlinedAt: !489)
!496 = !DILocation(line: 287, column: 11, scope: !497, inlinedAt: !489)
!497 = distinct !DILexicalBlock(scope: !482, file: !3, line: 287, column: 7)
!498 = !DILocation(line: 287, column: 7, scope: !482, inlinedAt: !489)
!499 = !DILocation(line: 227, column: 48, scope: !385, inlinedAt: !500)
!500 = distinct !DILocation(line: 289, column: 9, scope: !501, inlinedAt: !489)
!501 = distinct !DILexicalBlock(scope: !502, file: !3, line: 289, column: 9)
!502 = distinct !DILexicalBlock(scope: !497, file: !3, line: 287, column: 20)
!503 = !DILocation(line: 227, column: 61, scope: !385, inlinedAt: !500)
!504 = !DILocation(line: 233, column: 7, scope: !385, inlinedAt: !500)
!505 = !DILocation(line: 238, column: 3, scope: !385, inlinedAt: !500)
!506 = !DILocation(line: 0, scope: !405, inlinedAt: !500)
!507 = !DILocation(line: 232, column: 28, scope: !385, inlinedAt: !500)
!508 = !DILocation(line: 232, column: 37, scope: !385, inlinedAt: !500)
!509 = !DILocation(line: 232, column: 44, scope: !385, inlinedAt: !500)
!510 = !DILocation(line: 234, column: 7, scope: !385, inlinedAt: !500)
!511 = !DILocation(line: 232, column: 24, scope: !385, inlinedAt: !500)
!512 = !DILocation(line: 0, scope: !414, inlinedAt: !500)
!513 = !DILocation(line: 244, column: 14, scope: !407, inlinedAt: !500)
!514 = !DILocation(line: 244, column: 5, scope: !407, inlinedAt: !500)
!515 = !DILocation(line: 245, column: 12, scope: !419, inlinedAt: !500)
!516 = !DILocation(line: 245, column: 11, scope: !414, inlinedAt: !500)
!517 = !DILocation(line: 247, column: 24, scope: !427, inlinedAt: !500)
!518 = !DILocation(line: 248, column: 20, scope: !429, inlinedAt: !500)
!519 = !DILocation(line: 248, column: 13, scope: !427, inlinedAt: !500)
!520 = !DILocation(line: 251, column: 23, scope: !432, inlinedAt: !500)
!521 = !DILocation(line: 251, column: 40, scope: !432, inlinedAt: !500)
!522 = !DILocation(line: 251, column: 29, scope: !432, inlinedAt: !500)
!523 = !DILocation(line: 251, column: 20, scope: !429, inlinedAt: !500)
!524 = !DILocation(line: 0, scope: !407, inlinedAt: !500)
!525 = !DILocation(line: 0, scope: !427, inlinedAt: !500)
!526 = !DILocation(line: 257, column: 14, scope: !439, inlinedAt: !500)
!527 = !DILocation(line: 257, column: 19, scope: !439, inlinedAt: !500)
!528 = !DILocation(line: 262, column: 16, scope: !406, inlinedAt: !500)
!529 = !DILocation(line: 262, column: 9, scope: !407, inlinedAt: !500)
!530 = !DILocation(line: 263, column: 29, scope: !405, inlinedAt: !500)
!531 = !DILocation(line: 233, column: 24, scope: !385, inlinedAt: !500)
!532 = !DILocation(line: 264, column: 19, scope: !405, inlinedAt: !500)
!533 = !DILocation(line: 265, column: 5, scope: !405, inlinedAt: !500)
!534 = !DILocation(line: 0, scope: !385, inlinedAt: !500)
!535 = !DILocation(line: 266, column: 25, scope: !385, inlinedAt: !500)
!536 = !DILocation(line: 266, column: 61, scope: !385, inlinedAt: !500)
!537 = !DILocation(line: 266, column: 41, scope: !385, inlinedAt: !500)
!538 = !DILocation(line: 266, column: 3, scope: !407, inlinedAt: !500)
!539 = !DILocation(line: 267, column: 3, scope: !385, inlinedAt: !500)
!540 = !DILocation(line: 289, column: 56, scope: !501, inlinedAt: !489)
!541 = !DILocation(line: 289, column: 9, scope: !502, inlinedAt: !489)
!542 = !DILocation(line: 290, column: 36, scope: !543, inlinedAt: !489)
!543 = distinct !DILexicalBlock(scope: !501, file: !3, line: 289, column: 65)
!544 = !DILocation(line: 290, column: 13, scope: !543, inlinedAt: !489)
!545 = !DILocation(line: 291, column: 5, scope: !543, inlinedAt: !489)
!546 = !DILocation(line: 0, scope: !482, inlinedAt: !489)
!547 = !DILocation(line: 292, column: 13, scope: !548, inlinedAt: !489)
!548 = distinct !DILexicalBlock(scope: !502, file: !3, line: 292, column: 9)
!549 = !DILocation(line: 292, column: 9, scope: !502, inlinedAt: !489)
!550 = !DILocation(line: 295, column: 7, scope: !551, inlinedAt: !489)
!551 = distinct !DILexicalBlock(scope: !548, file: !3, line: 294, column: 5)
!552 = !DILocation(line: 310, column: 1, scope: !482, inlinedAt: !489)
!553 = !DILocation(line: 570, column: 9, scope: !490)
!554 = !DILocation(line: 300, column: 3, scope: !482, inlinedAt: !489)
!555 = !DILocation(line: 301, column: 8, scope: !482, inlinedAt: !489)
!556 = !DILocation(line: 301, column: 14, scope: !482, inlinedAt: !489)
!557 = !DILocation(line: 304, column: 15, scope: !482, inlinedAt: !489)
!558 = !DILocation(line: 304, column: 13, scope: !482, inlinedAt: !489)
!559 = !DILocation(line: 305, column: 18, scope: !482, inlinedAt: !489)
!560 = !DILocation(line: 308, column: 3, scope: !482, inlinedAt: !489)
!561 = !DILocation(line: 570, column: 13, scope: !562)
!562 = distinct !DILexicalBlock(scope: !490, file: !3, line: 570, column: 9)
!563 = !DILocation(line: 561, column: 7, scope: !564)
!564 = distinct !DILexicalBlock(scope: !475, file: !3, line: 558, column: 58)
!565 = !{!346, !163, i64 70}
!566 = !DILocation(line: 574, column: 11, scope: !567)
!567 = distinct !DILexicalBlock(scope: !568, file: !3, line: 574, column: 9)
!568 = distinct !DILexicalBlock(scope: !491, file: !3, line: 573, column: 10)
!569 = !DILocation(line: 574, column: 43, scope: !567)
!570 = !DILocation(line: 574, column: 57, scope: !567)
!571 = !DILocation(line: 574, column: 63, scope: !567)
!572 = !DILocation(line: 575, column: 11, scope: !567)
!573 = !{!161, !163, i64 22}
!574 = !DILocation(line: 575, column: 47, scope: !567)
!575 = !DILocation(line: 575, column: 61, scope: !567)
!576 = !DILocation(line: 574, column: 9, scope: !568)
!577 = !DILocation(line: 580, column: 7, scope: !578)
!578 = distinct !DILexicalBlock(scope: !567, file: !3, line: 575, column: 68)
!579 = !DILocation(line: 581, column: 5, scope: !578)
!580 = !DILocation(line: 0, scope: !472)
!581 = !DILocation(line: 588, column: 14, scope: !318)
!582 = !DILocation(line: 588, column: 34, scope: !318)
!583 = !DILocation(line: 588, column: 53, scope: !318)
!584 = !DILocation(line: 589, column: 7, scope: !318)
!585 = !DILocation(line: 590, column: 41, scope: !334)
!586 = !DILocation(line: 590, column: 11, scope: !334)
!587 = !DILocation(line: 591, column: 23, scope: !588)
!588 = distinct !DILexicalBlock(scope: !334, file: !3, line: 591, column: 9)
!589 = !DILocation(line: 591, column: 50, scope: !588)
!590 = !DILocation(line: 591, column: 33, scope: !588)
!591 = !DILocalVariable(name: "ipr", arg: 1, scope: !592, file: !3, line: 344, type: !91)
!592 = distinct !DISubprogram(name: "ip_reass_chain_frag_into_datagram_and_validate", scope: !3, file: !3, line: 344, type: !593, isLocal: true, isDefinition: true, scopeLine: 345, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !595)
!593 = !DISubroutineType(types: !594)
!594 = !{!184, !91, !77, !184}
!595 = !{!591, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606}
!596 = !DILocalVariable(name: "new_p", arg: 2, scope: !592, file: !3, line: 344, type: !77)
!597 = !DILocalVariable(name: "is_last", arg: 3, scope: !592, file: !3, line: 344, type: !184)
!598 = !DILocalVariable(name: "iprh", scope: !592, file: !3, line: 346, type: !73)
!599 = !DILocalVariable(name: "iprh_tmp", scope: !592, file: !3, line: 346, type: !73)
!600 = !DILocalVariable(name: "iprh_prev", scope: !592, file: !3, line: 346, type: !73)
!601 = !DILocalVariable(name: "q", scope: !592, file: !3, line: 347, type: !77)
!602 = !DILocalVariable(name: "offset", scope: !592, file: !3, line: 348, type: !55)
!603 = !DILocalVariable(name: "len", scope: !592, file: !3, line: 348, type: !55)
!604 = !DILocalVariable(name: "hlen", scope: !592, file: !3, line: 349, type: !46)
!605 = !DILocalVariable(name: "fraghdr", scope: !592, file: !3, line: 350, type: !41)
!606 = !DILocalVariable(name: "valid", scope: !592, file: !3, line: 351, type: !184)
!607 = !DILocation(line: 344, column: 69, scope: !592, inlinedAt: !608)
!608 = distinct !DILocation(line: 598, column: 11, scope: !318)
!609 = !DILocation(line: 344, column: 87, scope: !592, inlinedAt: !608)
!610 = !DILocation(line: 346, column: 45, scope: !592, inlinedAt: !608)
!611 = !DILocation(line: 351, column: 7, scope: !592, inlinedAt: !608)
!612 = !DILocation(line: 354, column: 37, scope: !592, inlinedAt: !608)
!613 = !DILocation(line: 350, column: 18, scope: !592, inlinedAt: !608)
!614 = !DILocation(line: 355, column: 9, scope: !592, inlinedAt: !608)
!615 = !DILocation(line: 348, column: 17, scope: !592, inlinedAt: !608)
!616 = !DILocation(line: 356, column: 10, scope: !592, inlinedAt: !608)
!617 = !DILocation(line: 349, column: 8, scope: !592, inlinedAt: !608)
!618 = !DILocation(line: 357, column: 7, scope: !619, inlinedAt: !608)
!619 = distinct !DILexicalBlock(scope: !592, file: !3, line: 357, column: 7)
!620 = !DILocation(line: 357, column: 14, scope: !619, inlinedAt: !608)
!621 = !DILocation(line: 357, column: 12, scope: !619, inlinedAt: !608)
!622 = !DILocation(line: 357, column: 7, scope: !592, inlinedAt: !608)
!623 = !DILocation(line: 361, column: 9, scope: !592, inlinedAt: !608)
!624 = !DILocation(line: 362, column: 12, scope: !592, inlinedAt: !608)
!625 = !DILocation(line: 348, column: 9, scope: !592, inlinedAt: !608)
!626 = !DILocation(line: 369, column: 43, scope: !592, inlinedAt: !608)
!627 = !DILocation(line: 346, column: 27, scope: !592, inlinedAt: !608)
!628 = !DILocation(line: 370, column: 9, scope: !592, inlinedAt: !608)
!629 = !DILocation(line: 370, column: 19, scope: !592, inlinedAt: !608)
!630 = !DILocation(line: 371, column: 9, scope: !592, inlinedAt: !608)
!631 = !DILocation(line: 371, column: 15, scope: !592, inlinedAt: !608)
!632 = !DILocation(line: 372, column: 30, scope: !592, inlinedAt: !608)
!633 = !DILocation(line: 372, column: 9, scope: !592, inlinedAt: !608)
!634 = !DILocation(line: 372, column: 13, scope: !592, inlinedAt: !608)
!635 = !{!232, !163, i64 10}
!636 = !DILocation(line: 373, column: 17, scope: !637, inlinedAt: !608)
!637 = distinct !DILexicalBlock(scope: !592, file: !3, line: 373, column: 7)
!638 = !DILocation(line: 373, column: 7, scope: !592, inlinedAt: !608)
!639 = !DILocation(line: 380, column: 17, scope: !640, inlinedAt: !608)
!640 = distinct !DILexicalBlock(scope: !592, file: !3, line: 380, column: 3)
!641 = !DILocation(line: 347, column: 16, scope: !592, inlinedAt: !608)
!642 = !DILocation(line: 0, scope: !643, inlinedAt: !608)
!643 = distinct !DILexicalBlock(scope: !644, file: !3, line: 380, column: 32)
!644 = distinct !DILexicalBlock(scope: !640, file: !3, line: 380, column: 3)
!645 = !DILocation(line: 380, column: 22, scope: !644, inlinedAt: !608)
!646 = !DILocation(line: 380, column: 3, scope: !640, inlinedAt: !608)
!647 = !DILocation(line: 381, column: 45, scope: !643, inlinedAt: !608)
!648 = !DILocation(line: 346, column: 34, scope: !592, inlinedAt: !608)
!649 = !DILocation(line: 382, column: 33, scope: !650, inlinedAt: !608)
!650 = distinct !DILexicalBlock(scope: !643, file: !3, line: 382, column: 9)
!651 = !DILocation(line: 382, column: 21, scope: !650, inlinedAt: !608)
!652 = !DILocation(line: 382, column: 9, scope: !643, inlinedAt: !608)
!653 = !DILocation(line: 384, column: 23, scope: !654, inlinedAt: !608)
!654 = distinct !DILexicalBlock(scope: !650, file: !3, line: 382, column: 40)
!655 = !DILocation(line: 385, column: 21, scope: !656, inlinedAt: !608)
!656 = distinct !DILexicalBlock(scope: !654, file: !3, line: 385, column: 11)
!657 = !DILocation(line: 385, column: 11, scope: !654, inlinedAt: !608)
!658 = !DILocation(line: 388, column: 39, scope: !659, inlinedAt: !608)
!659 = distinct !DILexicalBlock(scope: !660, file: !3, line: 388, column: 13)
!660 = distinct !DILexicalBlock(scope: !656, file: !3, line: 385, column: 30)
!661 = !DILocation(line: 388, column: 26, scope: !659, inlinedAt: !608)
!662 = !DILocation(line: 388, column: 58, scope: !659, inlinedAt: !608)
!663 = !DILocation(line: 388, column: 44, scope: !659, inlinedAt: !608)
!664 = !DILocation(line: 393, column: 20, scope: !660, inlinedAt: !608)
!665 = !DILocation(line: 393, column: 30, scope: !660, inlinedAt: !608)
!666 = !DILocation(line: 394, column: 28, scope: !667, inlinedAt: !608)
!667 = distinct !DILexicalBlock(scope: !660, file: !3, line: 394, column: 13)
!668 = !DILocation(line: 394, column: 13, scope: !660, inlinedAt: !608)
!669 = !DILocation(line: 401, column: 23, scope: !670, inlinedAt: !608)
!670 = distinct !DILexicalBlock(scope: !671, file: !3, line: 401, column: 13)
!671 = distinct !DILexicalBlock(scope: !656, file: !3, line: 399, column: 14)
!672 = !DILocation(line: 401, column: 13, scope: !671, inlinedAt: !608)
!673 = !DILocation(line: 407, column: 16, scope: !671, inlinedAt: !608)
!674 = !DILocation(line: 410, column: 28, scope: !675, inlinedAt: !608)
!675 = distinct !DILexicalBlock(scope: !650, file: !3, line: 410, column: 16)
!676 = !DILocation(line: 410, column: 16, scope: !650, inlinedAt: !608)
!677 = !DILocation(line: 414, column: 40, scope: !678, inlinedAt: !608)
!678 = distinct !DILexicalBlock(scope: !675, file: !3, line: 414, column: 16)
!679 = !DILocation(line: 414, column: 28, scope: !678, inlinedAt: !608)
!680 = !DILocation(line: 414, column: 16, scope: !675, inlinedAt: !608)
!681 = !DILocation(line: 420, column: 21, scope: !682, inlinedAt: !608)
!682 = distinct !DILexicalBlock(scope: !683, file: !3, line: 420, column: 11)
!683 = distinct !DILexicalBlock(scope: !678, file: !3, line: 418, column: 12)
!684 = !DILocation(line: 420, column: 11, scope: !683, inlinedAt: !608)
!685 = !DILocation(line: 421, column: 24, scope: !686, inlinedAt: !608)
!686 = distinct !DILexicalBlock(scope: !687, file: !3, line: 421, column: 13)
!687 = distinct !DILexicalBlock(scope: !682, file: !3, line: 420, column: 30)
!688 = !DILocation(line: 421, column: 28, scope: !686, inlinedAt: !608)
!689 = !DILocation(line: 421, column: 13, scope: !687, inlinedAt: !608)
!690 = !DILocation(line: 0, scope: !592, inlinedAt: !608)
!691 = !DILocation(line: 428, column: 19, scope: !643, inlinedAt: !608)
!692 = distinct !{!692, !693, !694}
!693 = !DILocation(line: 380, column: 3, scope: !640)
!694 = !DILocation(line: 430, column: 3, scope: !640)
!695 = !DILocation(line: 440, column: 28, scope: !696, inlinedAt: !608)
!696 = distinct !DILexicalBlock(scope: !697, file: !3, line: 434, column: 28)
!697 = distinct !DILexicalBlock(scope: !698, file: !3, line: 434, column: 9)
!698 = distinct !DILexicalBlock(scope: !699, file: !3, line: 433, column: 18)
!699 = distinct !DILexicalBlock(scope: !592, file: !3, line: 433, column: 7)
!700 = !DILocation(line: 441, column: 26, scope: !701, inlinedAt: !608)
!701 = distinct !DILexicalBlock(scope: !696, file: !3, line: 441, column: 11)
!702 = !DILocation(line: 441, column: 11, scope: !696, inlinedAt: !608)
!703 = !DILocation(line: 450, column: 14, scope: !704, inlinedAt: !608)
!704 = distinct !DILexicalBlock(scope: !697, file: !3, line: 444, column: 12)
!705 = !DILocation(line: 0, scope: !706, inlinedAt: !608)
!706 = distinct !DILexicalBlock(scope: !667, file: !3, line: 394, column: 44)
!707 = !DILocation(line: 456, column: 15, scope: !708, inlinedAt: !608)
!708 = distinct !DILexicalBlock(scope: !592, file: !3, line: 456, column: 7)
!709 = !DILocation(line: 456, column: 25, scope: !708, inlinedAt: !608)
!710 = !{!161, !154, i64 38}
!711 = !DILocation(line: 456, column: 31, scope: !708, inlinedAt: !608)
!712 = !DILocation(line: 456, column: 57, scope: !708, inlinedAt: !608)
!713 = !DILocation(line: 456, column: 7, scope: !592, inlinedAt: !608)
!714 = !DILocation(line: 494, column: 1, scope: !592, inlinedAt: !608)
!715 = !DILocation(line: 607, column: 32, scope: !318)
!716 = !DILocation(line: 607, column: 51, scope: !318)
!717 = !DILocation(line: 607, column: 22, scope: !318)
!718 = !DILocation(line: 617, column: 7, scope: !318)
!719 = !DILocation(line: 458, column: 9, scope: !720, inlinedAt: !608)
!720 = distinct !DILexicalBlock(scope: !721, file: !3, line: 458, column: 9)
!721 = distinct !DILexicalBlock(scope: !708, file: !3, line: 456, column: 64)
!722 = !DILocation(line: 458, column: 9, scope: !721, inlinedAt: !608)
!723 = !DILocation(line: 461, column: 17, scope: !724, inlinedAt: !608)
!724 = distinct !DILexicalBlock(scope: !725, file: !3, line: 461, column: 11)
!725 = distinct !DILexicalBlock(scope: !720, file: !3, line: 458, column: 16)
!726 = !DILocation(line: 461, column: 19, scope: !724, inlinedAt: !608)
!727 = !DILocation(line: 461, column: 28, scope: !724, inlinedAt: !608)
!728 = !DILocation(line: 461, column: 67, scope: !724, inlinedAt: !608)
!729 = !DILocation(line: 461, column: 77, scope: !724, inlinedAt: !608)
!730 = !DILocation(line: 461, column: 83, scope: !724, inlinedAt: !608)
!731 = !DILocation(line: 461, column: 11, scope: !725, inlinedAt: !608)
!732 = !DILocation(line: 0, scope: !733, inlinedAt: !608)
!733 = distinct !DILexicalBlock(scope: !734, file: !3, line: 467, column: 27)
!734 = distinct !DILexicalBlock(scope: !724, file: !3, line: 463, column: 14)
!735 = !DILocation(line: 467, column: 18, scope: !734, inlinedAt: !608)
!736 = !DILocation(line: 467, column: 9, scope: !734, inlinedAt: !608)
!737 = !DILocation(line: 468, column: 47, scope: !733, inlinedAt: !608)
!738 = !DILocation(line: 469, column: 39, scope: !739, inlinedAt: !608)
!739 = distinct !DILexicalBlock(scope: !733, file: !3, line: 469, column: 15)
!740 = !DILocation(line: 469, column: 30, scope: !739, inlinedAt: !608)
!741 = !DILocation(line: 469, column: 15, scope: !733, inlinedAt: !608)
!742 = !DILocation(line: 474, column: 21, scope: !733, inlinedAt: !608)
!743 = distinct !{!743, !744, !745}
!744 = !DILocation(line: 467, column: 9, scope: !734)
!745 = !DILocation(line: 475, column: 9, scope: !734)
!746 = !DILocation(line: 469, column: 26, scope: !739, inlinedAt: !608)
!747 = !DILocation(line: 480, column: 11, scope: !748, inlinedAt: !608)
!748 = distinct !DILexicalBlock(scope: !749, file: !3, line: 480, column: 11)
!749 = distinct !DILexicalBlock(scope: !750, file: !3, line: 480, column: 11)
!750 = distinct !DILexicalBlock(scope: !751, file: !3, line: 478, column: 20)
!751 = distinct !DILexicalBlock(scope: !734, file: !3, line: 478, column: 13)
!752 = !DILocation(line: 480, column: 11, scope: !749, inlinedAt: !608)
!753 = !DILocation(line: 480, column: 11, scope: !754, inlinedAt: !608)
!754 = distinct !DILexicalBlock(scope: !755, file: !3, line: 480, column: 11)
!755 = distinct !DILexicalBlock(scope: !748, file: !3, line: 480, column: 11)
!756 = !DILocation(line: 480, column: 11, scope: !757, inlinedAt: !608)
!757 = distinct !DILexicalBlock(scope: !758, file: !3, line: 480, column: 11)
!758 = distinct !DILexicalBlock(scope: !759, file: !3, line: 480, column: 11)
!759 = distinct !DILexicalBlock(scope: !754, file: !3, line: 480, column: 11)
!760 = !DILocation(line: 0, scope: !761, inlinedAt: !608)
!761 = distinct !DILexicalBlock(scope: !701, file: !3, line: 441, column: 42)
!762 = !DILocation(line: 490, column: 12, scope: !721, inlinedAt: !608)
!763 = !DILocation(line: 608, column: 7, scope: !318)
!764 = !DILocation(line: 609, column: 41, scope: !337)
!765 = !DILocation(line: 609, column: 11, scope: !337)
!766 = !DILocation(line: 610, column: 10, scope: !337)
!767 = !DILocation(line: 610, column: 23, scope: !337)
!768 = !{!161, !163, i64 36}
!769 = !DILocation(line: 611, column: 10, scope: !337)
!770 = !DILocation(line: 611, column: 16, scope: !337)
!771 = !DILocation(line: 615, column: 3, scope: !337)
!772 = !DILocation(line: 621, column: 39, scope: !340)
!773 = !DILocation(line: 621, column: 52, scope: !340)
!774 = !DILocation(line: 621, column: 11, scope: !340)
!775 = !DILocation(line: 624, column: 44, scope: !340)
!776 = !DILocation(line: 624, column: 54, scope: !340)
!777 = !DILocation(line: 505, column: 16, scope: !318)
!778 = !DILocation(line: 628, column: 5, scope: !340)
!779 = !DILocation(line: 629, column: 5, scope: !340)
!780 = !DILocation(line: 630, column: 5, scope: !340)
!781 = !DILocation(line: 631, column: 5, scope: !340)
!782 = !{!162, !163, i64 10}
!783 = !DILocation(line: 634, column: 5, scope: !784)
!784 = distinct !DILexicalBlock(scope: !340, file: !3, line: 634, column: 5)
!785 = !{!786, !153, i64 8}
!786 = !{!"ip_globals", !153, i64 0, !153, i64 8, !153, i64 16, !153, i64 24, !163, i64 32, !787, i64 36, !787, i64 60}
!787 = !{!"ip_addr", !154, i64 0, !154, i64 20}
!788 = !{!789, !163, i64 248}
!789 = !{!"netif", !153, i64 0, !787, i64 8, !787, i64 32, !787, i64 56, !154, i64 80, !154, i64 152, !154, i64 156, !154, i64 168, !153, i64 184, !153, i64 192, !153, i64 200, !153, i64 208, !153, i64 216, !153, i64 224, !153, i64 232, !154, i64 240, !163, i64 248, !163, i64 250, !163, i64 252, !154, i64 254, !154, i64 260, !154, i64 261, !154, i64 262, !154, i64 264, !154, i64 265, !154, i64 266, !153, i64 272}
!790 = !DILocation(line: 634, column: 5, scope: !340)
!791 = !DILocation(line: 635, column: 7, scope: !792)
!792 = distinct !DILexicalBlock(scope: !784, file: !3, line: 634, column: 81)
!793 = !DILocation(line: 636, column: 5, scope: !792)
!794 = !DILocation(line: 639, column: 14, scope: !340)
!795 = !DILocation(line: 642, column: 14, scope: !340)
!796 = !DILocation(line: 642, column: 5, scope: !340)
!797 = !DILocation(line: 643, column: 43, scope: !798)
!798 = distinct !DILexicalBlock(scope: !340, file: !3, line: 642, column: 23)
!799 = !DILocation(line: 508, column: 27, scope: !318)
!800 = !DILocation(line: 646, column: 7, scope: !798)
!801 = !DILocation(line: 647, column: 7, scope: !798)
!802 = !DILocation(line: 648, column: 17, scope: !798)
!803 = distinct !{!803, !796, !804}
!804 = !DILocation(line: 649, column: 5, scope: !340)
!805 = !DILocation(line: 652, column: 16, scope: !806)
!806 = distinct !DILexicalBlock(scope: !340, file: !3, line: 652, column: 9)
!807 = !DILocation(line: 652, column: 13, scope: !806)
!808 = !DILocation(line: 652, column: 9, scope: !340)
!809 = !DILocation(line: 0, scope: !810)
!810 = distinct !DILexicalBlock(scope: !811, file: !3, line: 655, column: 7)
!811 = distinct !DILexicalBlock(scope: !812, file: !3, line: 655, column: 7)
!812 = distinct !DILexicalBlock(scope: !806, file: !3, line: 654, column: 12)
!813 = !DILocation(line: 618, column: 26, scope: !340)
!814 = !DILocation(line: 655, column: 48, scope: !810)
!815 = !DILocation(line: 655, column: 7, scope: !811)
!816 = !DILocation(line: 656, column: 23, scope: !817)
!817 = distinct !DILexicalBlock(scope: !818, file: !3, line: 656, column: 13)
!818 = distinct !DILexicalBlock(scope: !810, file: !3, line: 655, column: 84)
!819 = !DILocation(line: 656, column: 28, scope: !817)
!820 = !DILocation(line: 656, column: 13, scope: !818)
!821 = distinct !{!821, !815, !822}
!822 = !DILocation(line: 659, column: 7, scope: !811)
!823 = !DILocation(line: 322, column: 27, scope: !284, inlinedAt: !824)
!824 = distinct !DILocation(line: 663, column: 5, scope: !340)
!825 = !DILocation(line: 322, column: 20, scope: !284, inlinedAt: !824)
!826 = !DILocation(line: 323, column: 3, scope: !284, inlinedAt: !824)
!827 = !DILocation(line: 317, column: 48, scope: !271, inlinedAt: !824)
!828 = !DILocation(line: 325, column: 5, scope: !291, inlinedAt: !824)
!829 = !DILocation(line: 325, column: 5, scope: !295, inlinedAt: !824)
!830 = !DILocation(line: 317, column: 74, scope: !271, inlinedAt: !824)
!831 = !DILocation(line: 326, column: 23, scope: !289, inlinedAt: !824)
!832 = !DILocation(line: 326, column: 16, scope: !289, inlinedAt: !824)
!833 = !DILocation(line: 330, column: 29, scope: !271, inlinedAt: !824)
!834 = !DILocation(line: 330, column: 3, scope: !271, inlinedAt: !824)
!835 = !DILocation(line: 331, column: 1, scope: !271, inlinedAt: !824)
!836 = !DILocation(line: 666, column: 12, scope: !340)
!837 = !DILocation(line: 667, column: 5, scope: !838)
!838 = distinct !DILexicalBlock(scope: !839, file: !3, line: 667, column: 5)
!839 = distinct !DILexicalBlock(scope: !340, file: !3, line: 667, column: 5)
!840 = !DILocation(line: 667, column: 5, scope: !839)
!841 = !DILocation(line: 667, column: 5, scope: !842)
!842 = distinct !DILexicalBlock(scope: !843, file: !3, line: 667, column: 5)
!843 = distinct !DILexicalBlock(scope: !838, file: !3, line: 667, column: 5)
!844 = !DILocation(line: 667, column: 5, scope: !845)
!845 = distinct !DILexicalBlock(scope: !846, file: !3, line: 667, column: 5)
!846 = distinct !DILexicalBlock(scope: !847, file: !3, line: 667, column: 5)
!847 = distinct !DILexicalBlock(scope: !842, file: !3, line: 667, column: 5)
!848 = !DILocation(line: 668, column: 53, scope: !340)
!849 = !DILocation(line: 668, column: 24, scope: !340)
!850 = !DILocation(line: 680, column: 3, scope: !851)
!851 = distinct !DILexicalBlock(scope: !318, file: !3, line: 680, column: 3)
!852 = !DILocation(line: 680, column: 3, scope: !853)
!853 = distinct !DILexicalBlock(scope: !851, file: !3, line: 680, column: 3)
!854 = !DILocation(line: 680, column: 3, scope: !855)
!855 = distinct !DILexicalBlock(scope: !856, file: !3, line: 680, column: 3)
!856 = distinct !DILexicalBlock(scope: !853, file: !3, line: 680, column: 3)
!857 = !DILocation(line: 680, column: 3, scope: !858)
!858 = distinct !DILexicalBlock(scope: !859, file: !3, line: 680, column: 3)
!859 = distinct !DILexicalBlock(scope: !860, file: !3, line: 680, column: 3)
!860 = distinct !DILexicalBlock(scope: !855, file: !3, line: 680, column: 3)
!861 = !DILocation(line: 681, column: 12, scope: !862)
!862 = distinct !DILexicalBlock(scope: !318, file: !3, line: 681, column: 7)
!863 = !DILocation(line: 681, column: 14, scope: !862)
!864 = !DILocation(line: 681, column: 7, scope: !318)
!865 = !DILocation(line: 683, column: 5, scope: !866)
!866 = distinct !DILexicalBlock(scope: !867, file: !3, line: 683, column: 5)
!867 = distinct !DILexicalBlock(scope: !868, file: !3, line: 683, column: 5)
!868 = distinct !DILexicalBlock(scope: !862, file: !3, line: 681, column: 23)
!869 = !DILocation(line: 683, column: 5, scope: !867)
!870 = !DILocation(line: 683, column: 5, scope: !871)
!871 = distinct !DILexicalBlock(scope: !872, file: !3, line: 683, column: 5)
!872 = distinct !DILexicalBlock(scope: !866, file: !3, line: 683, column: 5)
!873 = !DILocation(line: 683, column: 5, scope: !874)
!874 = distinct !DILexicalBlock(scope: !875, file: !3, line: 683, column: 5)
!875 = distinct !DILexicalBlock(scope: !876, file: !3, line: 683, column: 5)
!876 = distinct !DILexicalBlock(scope: !871, file: !3, line: 683, column: 5)
!877 = !DILocation(line: 317, column: 48, scope: !271, inlinedAt: !878)
!878 = distinct !DILocation(line: 684, column: 5, scope: !868)
!879 = !DILocation(line: 317, column: 74, scope: !271, inlinedAt: !878)
!880 = !DILocation(line: 322, column: 27, scope: !284, inlinedAt: !878)
!881 = !DILocation(line: 322, column: 20, scope: !284, inlinedAt: !878)
!882 = !DILocation(line: 330, column: 29, scope: !271, inlinedAt: !878)
!883 = !DILocation(line: 330, column: 3, scope: !271, inlinedAt: !878)
!884 = !DILocation(line: 331, column: 1, scope: !271, inlinedAt: !878)
!885 = !DILocation(line: 685, column: 3, scope: !868)
!886 = !DILocation(line: 689, column: 3, scope: !318)
!887 = !{!346, !163, i64 54}
!888 = !DILocation(line: 690, column: 3, scope: !318)
!889 = !DILocation(line: 691, column: 3, scope: !318)
!890 = !DILocation(line: 692, column: 1, scope: !318)
!891 = !DILocation(line: 194, column: 43, scope: !106)
!892 = !DILocation(line: 196, column: 2, scope: !106)
!893 = !DILocation(line: 196, column: 10, scope: !106)
!894 = !DILocation(line: 197, column: 2, scope: !106)
!895 = !DILocation(line: 198, column: 2, scope: !896)
!896 = distinct !DILexicalBlock(scope: !897, file: !107, line: 198, column: 2)
!897 = distinct !DILexicalBlock(scope: !106, file: !107, line: 198, column: 2)
!898 = !DILocation(line: 199, column: 2, scope: !106)
!899 = !DILocation(line: 200, column: 1, scope: !106)
