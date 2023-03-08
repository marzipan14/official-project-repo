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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !157
  %2 = icmp eq %struct.ip_reassdata* %1, null, !dbg !158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !157
  br i1 %2, label %21, label %3, !dbg !157

; <label>:3:                                      ; preds = %0, %17
  %4 = phi %struct.ip_reassdata* [ %19, %17 ], [ %1, %0 ]
  %5 = phi %struct.ip_reassdata* [ %18, %17 ], [ null, %0 ]
  %6 = getelementptr inbounds %struct.ip_reassdata, %struct.ip_reassdata* %4, i64 0, i32 5, !dbg !159
  %7 = load i8, i8* %6, align 1, !dbg !159, !tbaa !160
  %8 = icmp eq i8 %7, 0, !dbg !166
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !167
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !157
  %20 = icmp eq %struct.ip_reassdata* %19, null, !dbg !158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !157
  br i1 %20, label %21, label %3, !dbg !157, !llvm.loop !178

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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !200
  br i1 %3, label %4, label %5, !dbg !200

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !201
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !204
  tail call void @ukplat_terminate(i32 3) #8, !dbg !204
  unreachable

; <label>:5:                                      ; preds = %2
  %6 = icmp eq %struct.ip_reassdata* %1, null, !dbg !208
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !210
  br i1 %6, label %12, label %7, !dbg !210

; <label>:7:                                      ; preds = %5
  %8 = getelementptr inbounds %struct.ip_reassdata, %struct.ip_reassdata* %1, i64 0, i32 0, !dbg !211
  %9 = load %struct.ip_reassdata*, %struct.ip_reassdata** %8, align 8, !dbg !211, !tbaa !171
  %10 = icmp eq %struct.ip_reassdata* %9, %0, !dbg !211
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !215
  br i1 %10, label %12, label %11, !dbg !215

; <label>:11:                                     ; preds = %7
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0)) #7, !dbg !216
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !219
  tail call void @ukplat_terminate(i32 3) #8, !dbg !219
  unreachable

; <label>:12:                                     ; preds = %5, %7
  %13 = getelementptr inbounds %struct.ip_reassdata, %struct.ip_reassdata* %0, i64 0, i32 1, !dbg !223
  %14 = load %struct.pbuf*, %struct.pbuf** %13, align 8, !dbg !223, !tbaa !224
  %15 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %14, i64 0, i32 1, !dbg !225
  %16 = bitcast i8** %15 to %struct.ip_reass_helper**, !dbg !225
  %17 = load %struct.ip_reass_helper*, %struct.ip_reass_helper** %16, align 8, !dbg !225, !tbaa !226
  %18 = getelementptr inbounds %struct.ip_reass_helper, %struct.ip_reass_helper* %17, i64 0, i32 1, !dbg !229
  %19 = load i16, i16* %18, align 1, !dbg !229, !tbaa !231
  %20 = icmp eq i16 %19, 0, !dbg !233
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !234
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !244
  %29 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %14) #9, !dbg !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !247
  %30 = load %struct.pbuf*, %struct.pbuf** %13, align 8, !dbg !248, !tbaa !224
  br label %31, !dbg !247

; <label>:31:                                     ; preds = %21, %12
  %32 = phi %struct.pbuf* [ %30, %21 ], [ %14, %12 ], !dbg !248
  %33 = phi i16 [ %28, %21 ], [ 0, %12 ], !dbg !249
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !250
  %34 = icmp eq %struct.pbuf* %32, null, !dbg !251
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !250
  br i1 %34, label %55, label %35, !dbg !250

; <label>:35:                                     ; preds = %31, %49
  %36 = phi i16 [ %50, %49 ], [ %33, %31 ]
  %37 = phi %struct.pbuf* [ %42, %49 ], [ %32, %31 ]
  %38 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %37, i64 0, i32 1, !dbg !252
  %39 = bitcast i8** %38 to %struct.ip_reass_helper**, !dbg !252
  %40 = load %struct.ip_reass_helper*, %struct.ip_reass_helper** %39, align 8, !dbg !252, !tbaa !226
  %41 = getelementptr inbounds %struct.ip_reass_helper, %struct.ip_reass_helper* %40, i64 0, i32 0, !dbg !254
  %42 = load %struct.pbuf*, %struct.pbuf** %41, align 1, !dbg !254, !tbaa !238
  %43 = tail call zeroext i16 @pbuf_clen(%struct.pbuf* nonnull %37) #9, !dbg !255
  %44 = zext i16 %36 to i32, !dbg !256
  %45 = zext i16 %43 to i32, !dbg !256
  %46 = add nuw nsw i32 %45, %44, !dbg !256
  %47 = icmp ult i32 %46, 65536, !dbg !256
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !259
  br i1 %47, label %49, label %48, !dbg !259

; <label>:48:                                     ; preds = %35
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0)) #7, !dbg !260
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !263
  tail call void @ukplat_terminate(i32 3) #8, !dbg !263
  unreachable

; <label>:49:                                     ; preds = %35
  %50 = trunc i32 %46 to i16, !dbg !267
  %51 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %37) #9, !dbg !268
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !250
  %52 = icmp eq %struct.pbuf* %42, null, !dbg !251
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !250
  br i1 %52, label %53, label %35, !dbg !250, !llvm.loop !269

; <label>:53:                                     ; preds = %49
  %54 = trunc i32 %46 to i16, !dbg !267
  br label %55, !dbg !271

; <label>:55:                                     ; preds = %53, %31
  %56 = phi i16 [ %33, %31 ], [ %54, %53 ], !dbg !280
  %57 = load %struct.ip_reassdata*, %struct.ip_reassdata** @reassdatagrams, align 8, !dbg !271, !tbaa !152
  %58 = icmp eq %struct.ip_reassdata* %57, %0, !dbg !283
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !284
  br i1 %58, label %59, label %62, !dbg !284

; <label>:59:                                     ; preds = %55
  %60 = bitcast %struct.ip_reassdata* %0 to i64*, !dbg !285
  %61 = load i64, i64* %60, align 8, !dbg !285, !tbaa !171
  store i64 %61, i64* bitcast (%struct.ip_reassdata** @reassdatagrams to i64*), align 8, !dbg !287, !tbaa !152
  br label %68, !dbg !288

; <label>:62:                                     ; preds = %55
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !289
  br i1 %6, label %63, label %64, !dbg !289

; <label>:63:                                     ; preds = %62
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0)) #9, !dbg !292
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !296
  tail call void @ukplat_terminate(i32 3) #8, !dbg !296
  unreachable

; <label>:64:                                     ; preds = %62
  %65 = bitcast %struct.ip_reassdata* %0 to i64*, !dbg !300
  %66 = load i64, i64* %65, align 8, !dbg !300, !tbaa !171
  %67 = bitcast %struct.ip_reassdata* %1 to i64*, !dbg !301
  store i64 %66, i64* %67, align 8, !dbg !301, !tbaa !171
  br label %68

; <label>:68:                                     ; preds = %59, %64
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %69 = bitcast %struct.ip_reassdata* %0 to i8*, !dbg !302
  tail call void @memp_free(i32 4, i8* %69) #9, !dbg !303
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !304
  %70 = load i16, i16* @ip_reass_pbufcount, align 2, !dbg !305, !tbaa !308
  %71 = icmp ult i16 %70, %56, !dbg !305
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !309
  br i1 %71, label %72, label %73, !dbg !309

; <label>:72:                                     ; preds = %68
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0)) #7, !dbg !310
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !313
  tail call void @ukplat_terminate(i32 3) #8, !dbg !313
  unreachable

; <label>:73:                                     ; preds = %68
  %74 = zext i16 %56 to i32, !dbg !305
  %75 = sub i16 %70, %56, !dbg !317
  store i16 %75, i16* @ip_reass_pbufcount, align 2, !dbg !318, !tbaa !308
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !319
  ret i32 %74, !dbg !319
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone nounwind
define dso_local %struct.pbuf* @ip4_reass(%struct.pbuf*) local_unnamed_addr #0 !dbg !320 {
  %2 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 2, i32 1), align 2, !dbg !346, !tbaa !347
  %3 = add i16 %2, 1, !dbg !346
  store i16 %3, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 2, i32 1), align 2, !dbg !346, !tbaa !347
  %4 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 1, !dbg !353
  %5 = load i8*, i8** %4, align 8, !dbg !353, !tbaa !226
  %6 = bitcast i8* %5 to %struct.ip_hdr*, !dbg !354
  %7 = load i8, i8* %5, align 1, !dbg !356, !tbaa !358
  %8 = and i8 %7, 15, !dbg !356
  %9 = icmp eq i8 %8, 5, !dbg !359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !360
  br i1 %9, label %13, label %10, !dbg !360

; <label>:10:                                     ; preds = %1
  %11 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 2, i32 10), align 2, !dbg !361, !tbaa !363
  %12 = add i16 %11, 1, !dbg !361
  store i16 %12, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 2, i32 10), align 2, !dbg !361, !tbaa !363
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !364
  br label %365, !dbg !364

; <label>:13:                                     ; preds = %1
  %14 = getelementptr inbounds i8, i8* %5, i64 6, !dbg !365
  %15 = bitcast i8* %14 to i16*, !dbg !365
  %16 = load i16, i16* %15, align 1, !dbg !365, !tbaa !366
  %17 = tail call zeroext i16 @lwip_htons(i16 zeroext %16) #9, !dbg !365
  %18 = shl i16 %17, 3, !dbg !365
  %19 = getelementptr inbounds i8, i8* %5, i64 2, !dbg !368
  %20 = bitcast i8* %19 to i16*, !dbg !368
  %21 = load i16, i16* %20, align 1, !dbg !368, !tbaa !369
  %22 = tail call zeroext i16 @lwip_htons(i16 zeroext %21) #9, !dbg !368
  %23 = load i8, i8* %5, align 1, !dbg !371, !tbaa !358
  %24 = shl i8 %23, 2, !dbg !371
  %25 = and i8 %24, 60, !dbg !371
  %26 = zext i8 %25 to i32, !dbg !373
  %27 = zext i16 %22 to i32, !dbg !375
  %28 = icmp ult i32 %27, %26, !dbg !376
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !377
  br i1 %28, label %365, label %29, !dbg !377

; <label>:29:                                     ; preds = %13
  %30 = zext i8 %25 to i16, !dbg !378
  %31 = sub i16 %22, %30, !dbg !378
  %32 = tail call zeroext i16 @pbuf_clen(%struct.pbuf* nonnull %0) #9, !dbg !379
  %33 = load i16, i16* @ip_reass_pbufcount, align 2, !dbg !381, !tbaa !308
  %34 = zext i16 %33 to i32, !dbg !381
  %35 = zext i16 %32 to i32, !dbg !383
  %36 = add nuw nsw i32 %34, %35, !dbg !384
  %37 = icmp ugt i32 %36, 10, !dbg !385
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !386
  br i1 %37, label %38, label %49, !dbg !386

; <label>:38:                                     ; preds = %29
  %39 = tail call fastcc i32 @ip_reass_remove_oldest_datagram(%struct.ip_hdr* nonnull %6, i32 %35) #7, !dbg !387
  %40 = icmp eq i32 %39, 0, !dbg !387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !390
  br i1 %40, label %46, label %41, !dbg !390

; <label>:41:                                     ; preds = %38
  %42 = load i16, i16* @ip_reass_pbufcount, align 2, !dbg !391, !tbaa !308
  %43 = zext i16 %42 to i32, !dbg !391
  %44 = add nuw nsw i32 %43, %35, !dbg !392
  %45 = icmp ugt i32 %44, 10, !dbg !393
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !394
  br i1 %45, label %46, label %49, !dbg !394

; <label>:46:                                     ; preds = %38, %41
  %47 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 2, i32 6), align 2, !dbg !395, !tbaa !397
  %48 = add i16 %47, 1, !dbg !395
  store i16 %48, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 2, i32 6), align 2, !dbg !395, !tbaa !397
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !398
  br label %365, !dbg !398

; <label>:49:                                     ; preds = %41, %29
  %50 = load %struct.ip_reassdata*, %struct.ip_reassdata** @reassdatagrams, align 8, !dbg !399, !tbaa !152
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !402
  %51 = icmp eq %struct.ip_reassdata* %50, null, !dbg !403
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !405
  br i1 %51, label %79, label %52, !dbg !405

; <label>:52:                                     ; preds = %49
  %53 = getelementptr inbounds i8, i8* %5, i64 12
  %54 = bitcast i8* %53 to i32*
  %55 = load i32, i32* %54, align 1
  %56 = getelementptr inbounds i8, i8* %5, i64 16
  %57 = bitcast i8* %56 to i32*
  %58 = getelementptr inbounds i8, i8* %5, i64 4
  %59 = bitcast i8* %58 to i16*
  br label %60, !dbg !405

; <label>:60:                                     ; preds = %52, %75
  %61 = phi %struct.ip_reassdata* [ %50, %52 ], [ %77, %75 ]
  %62 = getelementptr inbounds %struct.ip_reassdata, %struct.ip_reassdata* %61, i64 0, i32 2, i32 8, i32 0, !dbg !406
  %63 = load i32, i32* %62, align 4, !dbg !406, !tbaa !409
  %64 = icmp eq i32 %63, %55, !dbg !406
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !406
  br i1 %64, label %65, label %75, !dbg !406

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds %struct.ip_reassdata, %struct.ip_reassdata* %61, i64 0, i32 2, i32 9, i32 0, !dbg !406
  %67 = load i32, i32* %66, align 8, !dbg !406, !tbaa !410
  %68 = load i32, i32* %57, align 1, !dbg !406, !tbaa !411
  %69 = icmp eq i32 %67, %68, !dbg !406
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !406
  br i1 %69, label %70, label %75, !dbg !406

; <label>:70:                                     ; preds = %65
  %71 = getelementptr inbounds %struct.ip_reassdata, %struct.ip_reassdata* %61, i64 0, i32 2, i32 3, !dbg !406
  %72 = load i16, i16* %71, align 4, !dbg !406, !tbaa !412
  %73 = load i16, i16* %59, align 1, !dbg !406, !tbaa !413
  %74 = icmp eq i16 %72, %73, !dbg !406
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !414
  br i1 %74, label %106, label %75, !dbg !414

; <label>:75:                                     ; preds = %70, %65, %60
  %76 = getelementptr inbounds %struct.ip_reassdata, %struct.ip_reassdata* %61, i64 0, i32 0, !dbg !415
  %77 = load %struct.ip_reassdata*, %struct.ip_reassdata** %76, align 8, !dbg !415, !tbaa !171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !416
  %78 = icmp eq %struct.ip_reassdata* %77, null, !dbg !403
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !405
  br i1 %78, label %79, label %60, !dbg !405, !llvm.loop !417

; <label>:79:                                     ; preds = %75, %49
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !419
  %80 = tail call i8* @memp_malloc(i32 4) #9, !dbg !432
  %81 = bitcast i8* %80 to %struct.ip_reassdata*, !dbg !433
  %82 = icmp eq i8* %80, null, !dbg !435
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !437
  br i1 %82, label %83, label %96, !dbg !437

; <label>:83:                                     ; preds = %79
  %84 = tail call fastcc i32 @ip_reass_remove_oldest_datagram(%struct.ip_hdr* nonnull %6, i32 %35) #9, !dbg !438
  %85 = icmp slt i32 %84, %35, !dbg !441
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !442
  br i1 %85, label %89, label %86, !dbg !442

; <label>:86:                                     ; preds = %83
  %87 = tail call i8* @memp_malloc(i32 4) #9, !dbg !443
  %88 = bitcast i8* %87 to %struct.ip_reassdata*, !dbg !445
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !446
  br label %89, !dbg !446

; <label>:89:                                     ; preds = %86, %83
  %90 = phi i8* [ %87, %86 ], [ null, %83 ], !dbg !447
  %91 = phi %struct.ip_reassdata* [ %88, %86 ], [ %81, %83 ], !dbg !447
  %92 = icmp eq %struct.ip_reassdata* %91, null, !dbg !448
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !450
  br i1 %92, label %93, label %96, !dbg !450

; <label>:93:                                     ; preds = %89
  %94 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 2, i32 6), align 2, !dbg !451, !tbaa !397
  %95 = add i16 %94, 1, !dbg !451
  store i16 %95, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 2, i32 6), align 2, !dbg !451, !tbaa !397
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !453
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !454
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !455
  br label %365, !dbg !455

; <label>:96:                                     ; preds = %79, %89
  %97 = phi i8* [ %90, %89 ], [ %80, %79 ], !dbg !447
  %98 = phi %struct.ip_reassdata* [ %91, %89 ], [ %81, %79 ], !dbg !447
  %99 = tail call i8* @memset(i8* %97, i32 0, i64 40) #9, !dbg !456
  %100 = getelementptr inbounds %struct.ip_reassdata, %struct.ip_reassdata* %98, i64 0, i32 5, !dbg !457
  store i8 15, i8* %100, align 1, !dbg !458, !tbaa !160
  %101 = load i64, i64* bitcast (%struct.ip_reassdata** @reassdatagrams to i64*), align 8, !dbg !459, !tbaa !152
  %102 = bitcast %struct.ip_reassdata* %98 to i64*, !dbg !460
  store i64 %101, i64* %102, align 8, !dbg !460, !tbaa !171
  store i8* %97, i8** bitcast (%struct.ip_reassdata** @reassdatagrams to i8**), align 8, !dbg !461, !tbaa !152
  %103 = getelementptr inbounds %struct.ip_reassdata, %struct.ip_reassdata* %98, i64 0, i32 2, i32 0, !dbg !462
  %104 = tail call i8* @memcpy(i8* nonnull %103, i8* %5, i64 20) #9, !dbg !462
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !463
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !454
  %105 = icmp eq %struct.ip_reassdata* %98, null, !dbg !464
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !455
  br i1 %105, label %365, label %123, !dbg !455

; <label>:106:                                    ; preds = %70
  %107 = bitcast %struct.ip_reassdata* %61 to i8*, !dbg !466
  %108 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 2, i32 11), align 2, !dbg !467, !tbaa !469
  %109 = add i16 %108, 1, !dbg !467
  store i16 %109, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 2, i32 11), align 2, !dbg !467, !tbaa !469
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !470
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !419
  %110 = load i16, i16* %15, align 1, !dbg !471, !tbaa !366
  %111 = tail call zeroext i16 @lwip_htons(i16 zeroext %110) #9, !dbg !471
  %112 = and i16 %111, 8191, !dbg !474
  %113 = icmp eq i16 %112, 0, !dbg !475
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !476
  br i1 %113, label %114, label %123, !dbg !476

; <label>:114:                                    ; preds = %106
  %115 = getelementptr inbounds %struct.ip_reassdata, %struct.ip_reassdata* %61, i64 0, i32 2, i32 4, !dbg !477
  %116 = load i16, i16* %115, align 2, !dbg !477, !tbaa !478
  %117 = tail call zeroext i16 @lwip_htons(i16 zeroext %116) #9, !dbg !477
  %118 = and i16 %117, 8191, !dbg !479
  %119 = icmp eq i16 %118, 0, !dbg !480
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !481
  br i1 %119, label %123, label %120, !dbg !481

; <label>:120:                                    ; preds = %114
  %121 = getelementptr inbounds %struct.ip_reassdata, %struct.ip_reassdata* %61, i64 0, i32 2, i32 0, !dbg !482
  %122 = tail call i8* @memcpy(i8* nonnull %121, i8* nonnull %5, i64 20) #9, !dbg !482
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !484
  br label %123, !dbg !484

; <label>:123:                                    ; preds = %114, %106, %120, %96
  %124 = phi i8* [ %97, %96 ], [ %107, %120 ], [ %107, %114 ], [ %107, %106 ], !dbg !485
  %125 = phi %struct.ip_reassdata* [ %98, %96 ], [ %61, %120 ], [ %61, %114 ], [ %61, %106 ], !dbg !485
  %126 = load i16, i16* %15, align 1, !dbg !486, !tbaa !366
  %127 = and i16 %126, 32, !dbg !487
  %128 = icmp eq i16 %127, 0, !dbg !488
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !489
  br i1 %128, label %129, label %135, !dbg !489

; <label>:129:                                    ; preds = %123
  %130 = add i16 %31, %18, !dbg !490
  %131 = icmp ult i16 %130, %18, !dbg !492
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !494
  br i1 %131, label %352, label %132, !dbg !494

; <label>:132:                                    ; preds = %129
  %133 = icmp ugt i16 %130, -21, !dbg !495
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !496
  br i1 %133, label %352, label %134, !dbg !496

; <label>:134:                                    ; preds = %132
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !497
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %135

; <label>:135:                                    ; preds = %134, %123
  %136 = bitcast i8** %4 to %struct.ip_hdr**, !dbg !519
  %137 = load %struct.ip_hdr*, %struct.ip_hdr** %136, align 8, !dbg !519, !tbaa !226
  %138 = getelementptr inbounds %struct.ip_hdr, %struct.ip_hdr* %137, i64 0, i32 2, !dbg !521
  %139 = load i16, i16* %138, align 1, !dbg !521, !tbaa !369
  %140 = tail call zeroext i16 @lwip_htons(i16 zeroext %139) #9, !dbg !521
  %141 = getelementptr inbounds %struct.ip_hdr, %struct.ip_hdr* %137, i64 0, i32 0, !dbg !523
  %142 = load i8, i8* %141, align 1, !dbg !523, !tbaa !358
  %143 = shl i8 %142, 2, !dbg !523
  %144 = and i8 %143, 60, !dbg !523
  %145 = zext i8 %144 to i32, !dbg !525
  %146 = zext i16 %140 to i32, !dbg !527
  %147 = icmp ult i32 %146, %145, !dbg !528
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !529
  br i1 %147, label %348, label %148, !dbg !529

; <label>:148:                                    ; preds = %135
  %149 = zext i8 %144 to i16, !dbg !530
  %150 = sub i16 %140, %149, !dbg !530
  %151 = getelementptr inbounds %struct.ip_hdr, %struct.ip_hdr* %137, i64 0, i32 4, !dbg !531
  %152 = load i16, i16* %151, align 1, !dbg !531, !tbaa !366
  %153 = tail call zeroext i16 @lwip_htons(i16 zeroext %152) #9, !dbg !531
  %154 = shl i16 %153, 3, !dbg !531
  %155 = bitcast i8** %4 to %struct.ip_reass_helper**, !dbg !533
  %156 = load %struct.ip_reass_helper*, %struct.ip_reass_helper** %155, align 8, !dbg !533, !tbaa !226
  %157 = getelementptr inbounds %struct.ip_reass_helper, %struct.ip_reass_helper* %156, i64 0, i32 0, !dbg !535
  store %struct.pbuf* null, %struct.pbuf** %157, align 1, !dbg !536, !tbaa !238
  %158 = getelementptr inbounds %struct.ip_reass_helper, %struct.ip_reass_helper* %156, i64 0, i32 1, !dbg !537
  store i16 %154, i16* %158, align 1, !dbg !538, !tbaa !231
  %159 = add i16 %154, %150, !dbg !539
  %160 = getelementptr inbounds %struct.ip_reass_helper, %struct.ip_reass_helper* %156, i64 0, i32 2, !dbg !540
  store i16 %159, i16* %160, align 1, !dbg !541, !tbaa !542
  %161 = icmp ult i16 %159, %154, !dbg !543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !545
  br i1 %161, label %348, label %162, !dbg !545

; <label>:162:                                    ; preds = %148
  %163 = getelementptr inbounds %struct.ip_reassdata, %struct.ip_reassdata* %125, i64 0, i32 1, !dbg !546
  %164 = load %struct.pbuf*, %struct.pbuf** %163, align 8, !dbg !546, !tbaa !224
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !549
  %165 = icmp eq %struct.pbuf* %164, null, !dbg !550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !552
  br i1 %165, label %214, label %166, !dbg !552

; <label>:166:                                    ; preds = %162, %203
  %167 = phi i32 [ %204, %203 ], [ 1, %162 ]
  %168 = phi %struct.ip_reass_helper* [ %172, %203 ], [ null, %162 ]
  %169 = phi %struct.pbuf* [ %206, %203 ], [ %164, %162 ]
  %170 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %169, i64 0, i32 1, !dbg !553
  %171 = bitcast i8** %170 to %struct.ip_reass_helper**, !dbg !553
  %172 = load %struct.ip_reass_helper*, %struct.ip_reass_helper** %171, align 8, !dbg !553, !tbaa !226
  %173 = getelementptr inbounds %struct.ip_reass_helper, %struct.ip_reass_helper* %172, i64 0, i32 1, !dbg !556
  %174 = load i16, i16* %173, align 1, !dbg !556, !tbaa !231
  %175 = icmp ult i16 %154, %174, !dbg !558
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !559
  br i1 %175, label %176, label %190, !dbg !559

; <label>:176:                                    ; preds = %166
  store %struct.pbuf* %169, %struct.pbuf** %157, align 1, !dbg !560, !tbaa !238
  %177 = icmp eq %struct.ip_reass_helper* %168, null, !dbg !562
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !564
  br i1 %177, label %187, label %178, !dbg !564

; <label>:178:                                    ; preds = %176
  %179 = getelementptr inbounds %struct.ip_reass_helper, %struct.ip_reass_helper* %168, i64 0, i32 2, !dbg !565
  %180 = load i16, i16* %179, align 1, !dbg !565, !tbaa !542
  %181 = icmp ult i16 %154, %180, !dbg !568
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !569
  br i1 %181, label %349, label %182, !dbg !569

; <label>:182:                                    ; preds = %178
  %183 = icmp ugt i16 %159, %174, !dbg !570
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !571
  br i1 %183, label %349, label %184, !dbg !571

; <label>:184:                                    ; preds = %182
  %185 = getelementptr inbounds %struct.ip_reass_helper, %struct.ip_reass_helper* %168, i64 0, i32 0, !dbg !572
  store %struct.pbuf* %0, %struct.pbuf** %185, align 1, !dbg !573, !tbaa !238
  %186 = icmp eq i16 %180, %154, !dbg !574
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !576
  br i1 %186, label %215, label %208, !dbg !576

; <label>:187:                                    ; preds = %176
  %188 = icmp ugt i16 %159, %174, !dbg !577
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !580
  br i1 %188, label %349, label %189, !dbg !580

; <label>:189:                                    ; preds = %187
  store %struct.pbuf* %0, %struct.pbuf** %163, align 8, !dbg !581, !tbaa !224
  br label %208

; <label>:190:                                    ; preds = %166
  %191 = icmp eq i16 %154, %174, !dbg !582
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !584
  br i1 %191, label %349, label %192, !dbg !584

; <label>:192:                                    ; preds = %190
  %193 = getelementptr inbounds %struct.ip_reass_helper, %struct.ip_reass_helper* %172, i64 0, i32 2, !dbg !585
  %194 = load i16, i16* %193, align 1, !dbg !585, !tbaa !542
  %195 = icmp ult i16 %154, %194, !dbg !587
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !588
  br i1 %195, label %349, label %196, !dbg !588

; <label>:196:                                    ; preds = %192
  %197 = icmp eq %struct.ip_reass_helper* %168, null, !dbg !589
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !592
  br i1 %197, label %203, label %198, !dbg !592

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds %struct.ip_reass_helper, %struct.ip_reass_helper* %168, i64 0, i32 2, !dbg !593
  %200 = load i16, i16* %199, align 1, !dbg !593, !tbaa !542
  %201 = icmp eq i16 %200, %174, !dbg !596
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !597
  br i1 %201, label %203, label %202, !dbg !597

; <label>:202:                                    ; preds = %198
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !598
  br label %203, !dbg !598

; <label>:203:                                    ; preds = %202, %198, %196
  %204 = phi i32 [ 0, %202 ], [ %167, %198 ], [ %167, %196 ], !dbg !600
  %205 = getelementptr inbounds %struct.ip_reass_helper, %struct.ip_reass_helper* %172, i64 0, i32 0, !dbg !601
  %206 = load %struct.pbuf*, %struct.pbuf** %205, align 1, !dbg !601, !tbaa !238
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !602
  %207 = icmp eq %struct.pbuf* %206, null, !dbg !550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !552
  br i1 %207, label %211, label %166, !dbg !552, !llvm.loop !603

; <label>:208:                                    ; preds = %184, %189
  %209 = phi %struct.pbuf* [ %0, %189 ], [ %164, %184 ]
  %210 = phi i32 [ %167, %189 ], [ 0, %184 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %215, !dbg !606

; <label>:211:                                    ; preds = %203
  %212 = getelementptr inbounds %struct.ip_reass_helper, %struct.ip_reass_helper* %172, i64 0, i32 0, !dbg !601
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !606
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !610
  store %struct.pbuf* %0, %struct.pbuf** %212, align 1, !dbg !614, !tbaa !238
  %213 = icmp eq i16 %194, %154, !dbg !615
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !617
  br i1 %213, label %218, label %215, !dbg !617

; <label>:214:                                    ; preds = %162
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !606
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !618
  store %struct.pbuf* %0, %struct.pbuf** %163, align 8, !dbg !621, !tbaa !224
  br label %215

; <label>:215:                                    ; preds = %211, %184, %208, %214
  %216 = phi %struct.pbuf* [ %0, %214 ], [ %164, %184 ], [ %209, %208 ], [ %164, %211 ]
  %217 = phi i32 [ 1, %214 ], [ %167, %184 ], [ %210, %208 ], [ 0, %211 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %218, !dbg !622

; <label>:218:                                    ; preds = %215, %211
  %219 = phi %struct.pbuf* [ %164, %211 ], [ %216, %215 ]
  %220 = phi i32 [ %204, %211 ], [ %217, %215 ], !dbg !624
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !622
  br i1 %128, label %226, label %221, !dbg !622

; <label>:221:                                    ; preds = %218
  %222 = getelementptr inbounds %struct.ip_reassdata, %struct.ip_reassdata* %125, i64 0, i32 4, !dbg !626
  %223 = load i8, i8* %222, align 2, !dbg !626, !tbaa !627
  %224 = and i8 %223, 1, !dbg !628
  %225 = icmp eq i8 %224, 0, !dbg !629
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !630
  br i1 %225, label %266, label %226, !dbg !630

; <label>:226:                                    ; preds = %218, %221
  %227 = icmp eq i32 %220, 0, !dbg !631
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !634
  br i1 %227, label %271, label %228, !dbg !634

; <label>:228:                                    ; preds = %226
  %229 = icmp eq %struct.pbuf* %219, null, !dbg !635
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !638
  br i1 %229, label %269, label %230, !dbg !638

; <label>:230:                                    ; preds = %228
  %231 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %219, i64 0, i32 1, !dbg !639
  %232 = bitcast i8** %231 to %struct.ip_reass_helper**, !dbg !639
  %233 = load %struct.ip_reass_helper*, %struct.ip_reass_helper** %232, align 8, !dbg !639, !tbaa !226
  %234 = getelementptr inbounds %struct.ip_reass_helper, %struct.ip_reass_helper* %233, i64 0, i32 1, !dbg !640
  %235 = load i16, i16* %234, align 1, !dbg !640, !tbaa !231
  %236 = icmp eq i16 %235, 0, !dbg !641
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !642
  br i1 %236, label %237, label %269, !dbg !642

; <label>:237:                                    ; preds = %230
  %238 = load %struct.pbuf*, %struct.pbuf** %157, align 1, !dbg !643, !tbaa !238
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !645
  %239 = icmp eq %struct.pbuf* %238, null, !dbg !646
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !645
  br i1 %239, label %262, label %240, !dbg !645

; <label>:240:                                    ; preds = %237
  %241 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %238, i64 0, i32 1, !dbg !647
  %242 = bitcast i8** %241 to %struct.ip_reass_helper**, !dbg !647
  %243 = load %struct.ip_reass_helper*, %struct.ip_reass_helper** %242, align 8, !dbg !647, !tbaa !226
  %244 = getelementptr inbounds %struct.ip_reass_helper, %struct.ip_reass_helper* %243, i64 0, i32 1, !dbg !649
  %245 = load i16, i16* %244, align 1, !dbg !649, !tbaa !231
  %246 = icmp eq i16 %159, %245, !dbg !651
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !652
  br i1 %246, label %248, label %247, !dbg !652

; <label>:247:                                    ; preds = %253, %240
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !653
  br label %269, !dbg !655

; <label>:248:                                    ; preds = %240, %253
  %249 = phi %struct.ip_reass_helper* [ %258, %253 ], [ %243, %240 ]
  %250 = getelementptr inbounds %struct.ip_reass_helper, %struct.ip_reass_helper* %249, i64 0, i32 0, !dbg !656
  %251 = load %struct.pbuf*, %struct.pbuf** %250, align 1, !dbg !656, !tbaa !238
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !645
  %252 = icmp eq %struct.pbuf* %251, null, !dbg !646
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !645
  br i1 %252, label %262, label %253, !dbg !645, !llvm.loop !657

; <label>:253:                                    ; preds = %248
  %254 = getelementptr inbounds %struct.ip_reass_helper, %struct.ip_reass_helper* %249, i64 0, i32 2
  %255 = load i16, i16* %254, align 1, !dbg !660, !tbaa !542
  %256 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %251, i64 0, i32 1, !dbg !647
  %257 = bitcast i8** %256 to %struct.ip_reass_helper**, !dbg !647
  %258 = load %struct.ip_reass_helper*, %struct.ip_reass_helper** %257, align 8, !dbg !647, !tbaa !226
  %259 = getelementptr inbounds %struct.ip_reass_helper, %struct.ip_reass_helper* %258, i64 0, i32 1, !dbg !649
  %260 = load i16, i16* %259, align 1, !dbg !649, !tbaa !231
  %261 = icmp eq i16 %255, %260, !dbg !651
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !652
  br i1 %261, label %248, label %247, !dbg !652

; <label>:262:                                    ; preds = %248, %237
  %263 = phi %struct.ip_reass_helper* [ %156, %237 ], [ %249, %248 ], !dbg !661
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !655
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !662
  %264 = icmp eq %struct.ip_reass_helper* %233, %263, !dbg !666
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !669
  br i1 %264, label %265, label %269, !dbg !669

; <label>:265:                                    ; preds = %262
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0)) #9, !dbg !670
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !673
  tail call void @ukplat_terminate(i32 3) #8, !dbg !673
  unreachable

; <label>:266:                                    ; preds = %221
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !677
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !678
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !679
  %267 = load i16, i16* @ip_reass_pbufcount, align 2, !dbg !680, !tbaa !308
  %268 = add i16 %267, %32, !dbg !681
  store i16 %268, i16* @ip_reass_pbufcount, align 2, !dbg !682, !tbaa !308
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !683
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !684
  br label %369, !dbg !684

; <label>:269:                                    ; preds = %262, %228, %230, %247
  %270 = phi i32 [ 0, %247 ], [ 0, %230 ], [ 0, %228 ], [ %220, %262 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !685
  br label %271, !dbg !686

; <label>:271:                                    ; preds = %269, %226
  %272 = phi i32 [ 0, %226 ], [ %270, %269 ], !dbg !687
  %273 = icmp eq i32 %272, 0, !dbg !686
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !689
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !678
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !679
  %274 = load i16, i16* @ip_reass_pbufcount, align 2, !dbg !680, !tbaa !308
  %275 = add i16 %274, %32, !dbg !681
  store i16 %275, i16* @ip_reass_pbufcount, align 2, !dbg !682, !tbaa !308
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !683
  br i1 %128, label %276, label %282, !dbg !683

; <label>:276:                                    ; preds = %271
  %277 = add i16 %31, %18, !dbg !690
  %278 = getelementptr inbounds %struct.ip_reassdata, %struct.ip_reassdata* %125, i64 0, i32 3, !dbg !692
  store i16 %277, i16* %278, align 4, !dbg !693, !tbaa !694
  %279 = getelementptr inbounds %struct.ip_reassdata, %struct.ip_reassdata* %125, i64 0, i32 4, !dbg !695
  %280 = load i8, i8* %279, align 2, !dbg !696, !tbaa !627
  %281 = or i8 %280, 1, !dbg !696
  store i8 %281, i8* %279, align 2, !dbg !696, !tbaa !627
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !697
  br label %282, !dbg !697

; <label>:282:                                    ; preds = %276, %271
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !684
  br i1 %273, label %369, label %283, !dbg !684

; <label>:283:                                    ; preds = %282
  %284 = getelementptr inbounds %struct.ip_reassdata, %struct.ip_reassdata* %125, i64 0, i32 3, !dbg !698
  %285 = load i16, i16* %284, align 4, !dbg !698, !tbaa !694
  %286 = add i16 %285, 20, !dbg !699
  %287 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %219, i64 0, i32 1, !dbg !701
  %288 = load i8*, i8** %287, align 8, !dbg !701, !tbaa !226
  %289 = bitcast i8* %288 to %struct.pbuf**, !dbg !702
  %290 = load %struct.pbuf*, %struct.pbuf** %289, align 1, !dbg !702, !tbaa !238
  %291 = getelementptr inbounds %struct.ip_reassdata, %struct.ip_reassdata* %125, i64 0, i32 2, i32 0, !dbg !704
  %292 = tail call i8* @memcpy(i8* %288, i8* nonnull %291, i64 20) #9, !dbg !704
  %293 = tail call zeroext i16 @lwip_htons(i16 zeroext %286) #9, !dbg !705
  %294 = getelementptr inbounds i8, i8* %288, i64 2, !dbg !705
  %295 = bitcast i8* %294 to i16*, !dbg !705
  store i16 %293, i16* %295, align 1, !dbg !705, !tbaa !369
  %296 = getelementptr inbounds i8, i8* %288, i64 6, !dbg !706
  %297 = bitcast i8* %296 to i16*, !dbg !706
  store i16 0, i16* %297, align 1, !dbg !706, !tbaa !366
  %298 = getelementptr inbounds i8, i8* %288, i64 10, !dbg !707
  %299 = bitcast i8* %298 to i16*, !dbg !707
  store i16 0, i16* %299, align 1, !dbg !707, !tbaa !708
  %300 = load %struct.netif*, %struct.netif** getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 1), align 8, !dbg !709, !tbaa !711
  %301 = icmp eq %struct.netif* %300, null, !dbg !709
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !709
  br i1 %301, label %307, label %302, !dbg !709

; <label>:302:                                    ; preds = %283
  %303 = getelementptr inbounds %struct.netif, %struct.netif* %300, i64 0, i32 16, !dbg !709
  %304 = load i16, i16* %303, align 8, !dbg !709, !tbaa !714
  %305 = and i16 %304, 1, !dbg !709
  %306 = icmp eq i16 %305, 0, !dbg !709
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !716
  br i1 %306, label %309, label %307, !dbg !716

; <label>:307:                                    ; preds = %302, %283
  %308 = tail call zeroext i16 @inet_chksum(i8* %288, i16 zeroext 20) #9, !dbg !717
  store i16 %308, i16* %299, align 1, !dbg !717, !tbaa !708
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !719
  br label %309, !dbg !719

; <label>:309:                                    ; preds = %302, %307
  %310 = load %struct.pbuf*, %struct.pbuf** %163, align 8, !dbg !720, !tbaa !224
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !721
  %311 = icmp eq %struct.pbuf* %290, null, !dbg !722
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !721
  br i1 %311, label %321, label %312, !dbg !721

; <label>:312:                                    ; preds = %309, %312
  %313 = phi %struct.pbuf* [ %319, %312 ], [ %290, %309 ]
  %314 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %313, i64 0, i32 1, !dbg !723
  %315 = bitcast i8** %314 to %struct.ip_reass_helper**, !dbg !723
  %316 = load %struct.ip_reass_helper*, %struct.ip_reass_helper** %315, align 8, !dbg !723, !tbaa !226
  %317 = tail call zeroext i8 @pbuf_remove_header(%struct.pbuf* nonnull %313, i64 20) #9, !dbg !726
  tail call void @pbuf_cat(%struct.pbuf* %310, %struct.pbuf* nonnull %313) #9, !dbg !727
  %318 = getelementptr inbounds %struct.ip_reass_helper, %struct.ip_reass_helper* %316, i64 0, i32 0, !dbg !728
  %319 = load %struct.pbuf*, %struct.pbuf** %318, align 1, !dbg !728, !tbaa !238
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !721
  %320 = icmp eq %struct.pbuf* %319, null, !dbg !722
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !721
  br i1 %320, label %321, label %312, !dbg !721, !llvm.loop !729

; <label>:321:                                    ; preds = %312, %309
  %322 = load %struct.ip_reassdata*, %struct.ip_reassdata** @reassdatagrams, align 8, !dbg !731, !tbaa !152
  %323 = icmp eq %struct.ip_reassdata* %125, %322, !dbg !733
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !734
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !735
  br i1 %323, label %333, label %324, !dbg !734

; <label>:324:                                    ; preds = %321
  %325 = icmp eq %struct.ip_reassdata* %322, null, !dbg !739
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !741
  br i1 %325, label %336, label %326, !dbg !741

; <label>:326:                                    ; preds = %324, %331
  %327 = phi %struct.ip_reassdata* [ %329, %331 ], [ %322, %324 ]
  %328 = getelementptr inbounds %struct.ip_reassdata, %struct.ip_reassdata* %327, i64 0, i32 0, !dbg !742
  %329 = load %struct.ip_reassdata*, %struct.ip_reassdata** %328, align 8, !dbg !742, !tbaa !171
  %330 = icmp eq %struct.ip_reassdata* %329, %125, !dbg !745
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !746
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !747
  br i1 %330, label %337, label %331, !dbg !746

; <label>:331:                                    ; preds = %326
  %332 = icmp eq %struct.ip_reassdata* %329, null, !dbg !739
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !741
  br i1 %332, label %336, label %326, !dbg !741, !llvm.loop !748

; <label>:333:                                    ; preds = %321
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !753
  %334 = bitcast %struct.ip_reassdata* %125 to i64*, !dbg !754
  %335 = load i64, i64* %334, align 8, !dbg !754, !tbaa !171
  store i64 %335, i64* bitcast (%struct.ip_reassdata** @reassdatagrams to i64*), align 8, !dbg !755, !tbaa !152
  br label %341, !dbg !756

; <label>:336:                                    ; preds = %331, %324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !753
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !757
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0)) #9, !dbg !758
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !759
  tail call void @ukplat_terminate(i32 3) #8, !dbg !759
  unreachable

; <label>:337:                                    ; preds = %326
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !757
  %338 = bitcast %struct.ip_reassdata* %125 to i64*, !dbg !760
  %339 = load i64, i64* %338, align 8, !dbg !760, !tbaa !171
  %340 = bitcast %struct.ip_reassdata* %327 to i64*, !dbg !761
  store i64 %339, i64* %340, align 8, !dbg !761, !tbaa !171
  br label %341

; <label>:341:                                    ; preds = %333, %337
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  tail call void @memp_free(i32 4, i8* %124) #9, !dbg !762
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !763
  %342 = tail call zeroext i16 @pbuf_clen(%struct.pbuf* %310) #9, !dbg !764
  %343 = load i16, i16* @ip_reass_pbufcount, align 2, !dbg !765, !tbaa !308
  %344 = icmp ult i16 %343, %342, !dbg !765
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !768
  br i1 %344, label %345, label %346, !dbg !768

; <label>:345:                                    ; preds = %341
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0)) #7, !dbg !769
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !772
  tail call void @ukplat_terminate(i32 3) #8, !dbg !772
  unreachable

; <label>:346:                                    ; preds = %341
  %347 = sub i16 %343, %342, !dbg !776
  store i16 %347, i16* @ip_reass_pbufcount, align 2, !dbg !777, !tbaa !308
  br label %369

; <label>:348:                                    ; preds = %148, %135
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !685
  br label %352, !dbg !778

; <label>:349:                                    ; preds = %192, %190, %187, %178, %182
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !685
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !678
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !679
  %350 = icmp eq %struct.ip_reassdata* %125, null, !dbg !780
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !778
  br i1 %350, label %351, label %353, !dbg !778

; <label>:351:                                    ; preds = %349
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !782
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !785
  tail call void @ukplat_terminate(i32 3) #8, !dbg !785
  unreachable

; <label>:352:                                    ; preds = %129, %132, %348
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !789
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !778
  br label %353, !dbg !791

; <label>:353:                                    ; preds = %352, %349
  %354 = getelementptr inbounds %struct.ip_reassdata, %struct.ip_reassdata* %125, i64 0, i32 1, !dbg !791
  %355 = load %struct.pbuf*, %struct.pbuf** %354, align 8, !dbg !791, !tbaa !224
  %356 = icmp eq %struct.pbuf* %355, null, !dbg !793
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !794
  br i1 %356, label %357, label %365, !dbg !794

; <label>:357:                                    ; preds = %353
  %358 = load %struct.ip_reassdata*, %struct.ip_reassdata** @reassdatagrams, align 8, !dbg !795, !tbaa !152
  %359 = icmp eq %struct.ip_reassdata* %125, %358, !dbg !795
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !799
  br i1 %359, label %361, label %360, !dbg !799

; <label>:360:                                    ; preds = %357
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !800
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !803
  tail call void @ukplat_terminate(i32 3) #8, !dbg !803
  unreachable

; <label>:361:                                    ; preds = %357
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !810
  %362 = bitcast %struct.ip_reassdata* %125 to i64*, !dbg !811
  %363 = load i64, i64* %362, align 8, !dbg !811, !tbaa !171
  store i64 %363, i64* bitcast (%struct.ip_reassdata** @reassdatagrams to i64*), align 8, !dbg !812, !tbaa !152
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !813
  %364 = bitcast %struct.ip_reassdata* %125 to i8*, !dbg !814
  tail call void @memp_free(i32 4, i8* %364) #9, !dbg !815
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !816
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !817
  br label %365, !dbg !817

; <label>:365:                                    ; preds = %93, %353, %361, %96, %13, %46, %10
  %366 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 2, i32 3), align 2, !dbg !818, !tbaa !819
  %367 = add i16 %366, 1, !dbg !818
  store i16 %367, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 2, i32 3), align 2, !dbg !818, !tbaa !819
  %368 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %0) #9, !dbg !820
  br label %369, !dbg !821

; <label>:369:                                    ; preds = %266, %282, %365, %346
  %370 = phi %struct.pbuf* [ null, %365 ], [ %310, %346 ], [ null, %282 ], [ null, %266 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !822
  ret %struct.pbuf* %370, !dbg !822
}

; Function Attrs: noredzone
declare dso_local zeroext i16 @lwip_htons(i16 zeroext) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local zeroext i16 @pbuf_clen(%struct.pbuf*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc i32 @ip_reass_remove_oldest_datagram(%struct.ip_hdr* nocapture readonly, i32) unnamed_addr #0 !dbg !823 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !839
  %3 = getelementptr inbounds %struct.ip_hdr, %struct.ip_hdr* %0, i64 0, i32 8, i32 0
  %4 = getelementptr inbounds %struct.ip_hdr, %struct.ip_hdr* %0, i64 0, i32 9, i32 0
  %5 = getelementptr inbounds %struct.ip_hdr, %struct.ip_hdr* %0, i64 0, i32 3
  br label %6, !dbg !839

; <label>:6:                                      ; preds = %56, %2
  %7 = phi i32 [ 0, %2 ], [ %57, %56 ], !dbg !840
  %8 = load %struct.ip_reassdata*, %struct.ip_reassdata** @reassdatagrams, align 8, !dbg !848, !tbaa !152
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !850
  %9 = icmp eq %struct.ip_reassdata* %8, null, !dbg !851
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !850
  br i1 %9, label %10, label %11, !dbg !850

; <label>:10:                                     ; preds = %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !852
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !853
  br label %61, !dbg !853

; <label>:11:                                     ; preds = %6
  %12 = load i32, i32* %3, align 1
  br label %13, !dbg !850

; <label>:13:                                     ; preds = %50, %11
  %14 = phi i32 [ 0, %11 ], [ %46, %50 ]
  %15 = phi %struct.ip_reassdata* [ %8, %11 ], [ %48, %50 ]
  %16 = phi %struct.ip_reassdata* [ null, %11 ], [ %45, %50 ]
  %17 = phi %struct.ip_reassdata* [ null, %11 ], [ %15, %50 ]
  %18 = phi %struct.ip_reassdata* [ null, %11 ], [ %44, %50 ]
  %19 = getelementptr inbounds %struct.ip_reassdata, %struct.ip_reassdata* %15, i64 0, i32 2, i32 8, i32 0, !dbg !854
  %20 = load i32, i32* %19, align 4, !dbg !854, !tbaa !409
  %21 = icmp eq i32 %20, %12, !dbg !854
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !854
  br i1 %21, label %22, label %32, !dbg !854

; <label>:22:                                     ; preds = %13
  %23 = getelementptr inbounds %struct.ip_reassdata, %struct.ip_reassdata* %15, i64 0, i32 2, i32 9, i32 0, !dbg !854
  %24 = load i32, i32* %23, align 8, !dbg !854, !tbaa !410
  %25 = load i32, i32* %4, align 1, !dbg !854, !tbaa !411
  %26 = icmp eq i32 %24, %25, !dbg !854
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !854
  br i1 %26, label %27, label %32, !dbg !854

; <label>:27:                                     ; preds = %22
  %28 = getelementptr inbounds %struct.ip_reassdata, %struct.ip_reassdata* %15, i64 0, i32 2, i32 3, !dbg !854
  %29 = load i16, i16* %28, align 4, !dbg !854, !tbaa !412
  %30 = load i16, i16* %5, align 1, !dbg !854, !tbaa !413
  %31 = icmp eq i16 %29, %30, !dbg !854
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !857
  br i1 %31, label %43, label %32, !dbg !857

; <label>:32:                                     ; preds = %13, %22, %27
  %33 = add nsw i32 %14, 1, !dbg !858
  %34 = icmp eq %struct.ip_reassdata* %18, null, !dbg !860
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !862
  br i1 %34, label %35, label %36, !dbg !862

; <label>:35:                                     ; preds = %32
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !863
  br label %43, !dbg !863

; <label>:36:                                     ; preds = %32
  %37 = getelementptr inbounds %struct.ip_reassdata, %struct.ip_reassdata* %15, i64 0, i32 5, !dbg !865
  %38 = load i8, i8* %37, align 1, !dbg !865, !tbaa !160
  %39 = getelementptr inbounds %struct.ip_reassdata, %struct.ip_reassdata* %18, i64 0, i32 5, !dbg !867
  %40 = load i8, i8* %39, align 1, !dbg !867, !tbaa !160
  %41 = icmp ugt i8 %38, %40, !dbg !868
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !869
  br i1 %41, label %43, label %42, !dbg !869

; <label>:42:                                     ; preds = %36
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !870
  br label %43, !dbg !870

; <label>:43:                                     ; preds = %36, %35, %42, %27
  %44 = phi %struct.ip_reassdata* [ %18, %27 ], [ %15, %35 ], [ %15, %42 ], [ %18, %36 ], !dbg !872
  %45 = phi %struct.ip_reassdata* [ %16, %27 ], [ %17, %35 ], [ %17, %42 ], [ %16, %36 ], !dbg !872
  %46 = phi i32 [ %14, %27 ], [ %33, %35 ], [ %33, %42 ], [ %33, %36 ], !dbg !873
  %47 = getelementptr inbounds %struct.ip_reassdata, %struct.ip_reassdata* %15, i64 0, i32 0, !dbg !874
  %48 = load %struct.ip_reassdata*, %struct.ip_reassdata** %47, align 8, !dbg !874, !tbaa !171
  %49 = icmp eq %struct.ip_reassdata* %48, null, !dbg !876
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !877
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !878
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !850
  br i1 %49, label %51, label %50, !dbg !877

; <label>:50:                                     ; preds = %43
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !850
  br label %13

; <label>:51:                                     ; preds = %43
  %52 = icmp eq %struct.ip_reassdata* %44, null, !dbg !880
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !852
  br i1 %52, label %56, label %53, !dbg !852

; <label>:53:                                     ; preds = %51
  %54 = tail call fastcc i32 @ip_reass_free_complete_datagram(%struct.ip_reassdata* nonnull %44, %struct.ip_reassdata* %45) #7, !dbg !881
  %55 = add nsw i32 %54, %7, !dbg !883
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !884
  br label %56, !dbg !884

; <label>:56:                                     ; preds = %51, %53
  %57 = phi i32 [ %55, %53 ], [ %7, %51 ], !dbg !885
  %58 = icmp slt i32 %57, %1, !dbg !886
  %59 = icmp sgt i32 %46, 1, !dbg !887
  %60 = and i1 %59, %58, !dbg !888
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !853
  br i1 %60, label %6, label %61, !dbg !853, !llvm.loop !889

; <label>:61:                                     ; preds = %56, %10
  %62 = phi i32 [ %7, %10 ], [ %57, %56 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !891
  ret i32 %62, !dbg !891
}

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
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !893
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #6, !dbg !893
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !895
  call void @llvm.va_start(i8* nonnull %3), !dbg !895
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @uk_pr_crit.__str.14, i64 0, i64 0), i32 198, i8* %0, %struct.__va_list_tag* nonnull %4) #9, !dbg !896
  call void @llvm.va_end(i8* nonnull %3), !dbg !899
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #6, !dbg !900
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !900
  ret void, !dbg !900
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
!157 = !DILocation(line: 133, column: 3, scope: !140)
!158 = !DILocation(line: 133, column: 12, scope: !140)
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
!178 = distinct !{!178, !157, !179}
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
!244 = !DILocation(line: 188, column: 5, scope: !245)
!245 = distinct !DILexicalBlock(scope: !237, file: !3, line: 188, column: 5)
!246 = !DILocation(line: 190, column: 5, scope: !237)
!247 = !DILocation(line: 191, column: 3, scope: !237)
!248 = !DILocation(line: 196, column: 12, scope: !181)
!249 = !DILocation(line: 0, scope: !181)
!250 = !DILocation(line: 197, column: 3, scope: !181)
!251 = !DILocation(line: 197, column: 12, scope: !181)
!252 = !DILocation(line: 199, column: 41, scope: !193)
!253 = !DILocation(line: 198, column: 18, scope: !193)
!254 = !DILocation(line: 202, column: 15, scope: !193)
!255 = !DILocation(line: 203, column: 12, scope: !193)
!256 = !DILocation(line: 204, column: 5, scope: !257)
!257 = distinct !DILexicalBlock(scope: !258, file: !3, line: 204, column: 5)
!258 = distinct !DILexicalBlock(scope: !193, file: !3, line: 204, column: 5)
!259 = !DILocation(line: 204, column: 5, scope: !258)
!260 = !DILocation(line: 204, column: 5, scope: !261)
!261 = distinct !DILexicalBlock(scope: !262, file: !3, line: 204, column: 5)
!262 = distinct !DILexicalBlock(scope: !257, file: !3, line: 204, column: 5)
!263 = !DILocation(line: 204, column: 5, scope: !264)
!264 = distinct !DILexicalBlock(scope: !265, file: !3, line: 204, column: 5)
!265 = distinct !DILexicalBlock(scope: !266, file: !3, line: 204, column: 5)
!266 = distinct !DILexicalBlock(scope: !261, file: !3, line: 204, column: 5)
!267 = !DILocation(line: 205, column: 19, scope: !193)
!268 = !DILocation(line: 206, column: 5, scope: !193)
!269 = distinct !{!269, !250, !270}
!270 = !DILocation(line: 207, column: 3, scope: !181)
!271 = !DILocation(line: 320, column: 7, scope: !272, inlinedAt: !279)
!272 = distinct !DILexicalBlock(scope: !273, file: !3, line: 320, column: 7)
!273 = distinct !DISubprogram(name: "ip_reass_dequeue_datagram", scope: !3, file: !3, line: 317, type: !274, isLocal: true, isDefinition: true, scopeLine: 318, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !276)
!274 = !DISubroutineType(types: !275)
!275 = !{null, !91, !91}
!276 = !{!277, !278}
!277 = !DILocalVariable(name: "ipr", arg: 1, scope: !273, file: !3, line: 317, type: !91)
!278 = !DILocalVariable(name: "prev", arg: 2, scope: !273, file: !3, line: 317, type: !91)
!279 = distinct !DILocation(line: 209, column: 3, scope: !181)
!280 = !DILocation(line: 0, scope: !193)
!281 = !DILocation(line: 317, column: 48, scope: !273, inlinedAt: !279)
!282 = !DILocation(line: 317, column: 74, scope: !273, inlinedAt: !279)
!283 = !DILocation(line: 320, column: 22, scope: !272, inlinedAt: !279)
!284 = !DILocation(line: 320, column: 7, scope: !273, inlinedAt: !279)
!285 = !DILocation(line: 322, column: 27, scope: !286, inlinedAt: !279)
!286 = distinct !DILexicalBlock(scope: !272, file: !3, line: 320, column: 30)
!287 = !DILocation(line: 322, column: 20, scope: !286, inlinedAt: !279)
!288 = !DILocation(line: 323, column: 3, scope: !286, inlinedAt: !279)
!289 = !DILocation(line: 325, column: 5, scope: !290, inlinedAt: !279)
!290 = distinct !DILexicalBlock(scope: !291, file: !3, line: 325, column: 5)
!291 = distinct !DILexicalBlock(scope: !272, file: !3, line: 323, column: 10)
!292 = !DILocation(line: 325, column: 5, scope: !293, inlinedAt: !279)
!293 = distinct !DILexicalBlock(scope: !294, file: !3, line: 325, column: 5)
!294 = distinct !DILexicalBlock(scope: !295, file: !3, line: 325, column: 5)
!295 = distinct !DILexicalBlock(scope: !290, file: !3, line: 325, column: 5)
!296 = !DILocation(line: 325, column: 5, scope: !297, inlinedAt: !279)
!297 = distinct !DILexicalBlock(scope: !298, file: !3, line: 325, column: 5)
!298 = distinct !DILexicalBlock(scope: !299, file: !3, line: 325, column: 5)
!299 = distinct !DILexicalBlock(scope: !293, file: !3, line: 325, column: 5)
!300 = !DILocation(line: 326, column: 23, scope: !291, inlinedAt: !279)
!301 = !DILocation(line: 326, column: 16, scope: !291, inlinedAt: !279)
!302 = !DILocation(line: 330, column: 29, scope: !273, inlinedAt: !279)
!303 = !DILocation(line: 330, column: 3, scope: !273, inlinedAt: !279)
!304 = !DILocation(line: 331, column: 1, scope: !273, inlinedAt: !279)
!305 = !DILocation(line: 210, column: 3, scope: !306)
!306 = distinct !DILexicalBlock(scope: !307, file: !3, line: 210, column: 3)
!307 = distinct !DILexicalBlock(scope: !181, file: !3, line: 210, column: 3)
!308 = !{!163, !163, i64 0}
!309 = !DILocation(line: 210, column: 3, scope: !307)
!310 = !DILocation(line: 210, column: 3, scope: !311)
!311 = distinct !DILexicalBlock(scope: !312, file: !3, line: 210, column: 3)
!312 = distinct !DILexicalBlock(scope: !306, file: !3, line: 210, column: 3)
!313 = !DILocation(line: 210, column: 3, scope: !314)
!314 = distinct !DILexicalBlock(scope: !315, file: !3, line: 210, column: 3)
!315 = distinct !DILexicalBlock(scope: !316, file: !3, line: 210, column: 3)
!316 = distinct !DILexicalBlock(scope: !311, file: !3, line: 210, column: 3)
!317 = !DILocation(line: 211, column: 51, scope: !181)
!318 = !DILocation(line: 211, column: 22, scope: !181)
!319 = !DILocation(line: 213, column: 3, scope: !181)
!320 = distinct !DISubprogram(name: "ip4_reass", scope: !3, file: !3, line: 503, type: !321, isLocal: false, isDefinition: true, scopeLine: 504, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !323)
!321 = !DISubroutineType(types: !322)
!322 = !{!77, !77}
!323 = !{!324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !338, !341, !344}
!324 = !DILocalVariable(name: "p", arg: 1, scope: !320, file: !3, line: 503, type: !77)
!325 = !DILocalVariable(name: "r", scope: !320, file: !3, line: 505, type: !77)
!326 = !DILocalVariable(name: "fraghdr", scope: !320, file: !3, line: 506, type: !41)
!327 = !DILocalVariable(name: "ipr", scope: !320, file: !3, line: 507, type: !91)
!328 = !DILocalVariable(name: "iprh", scope: !320, file: !3, line: 508, type: !73)
!329 = !DILocalVariable(name: "offset", scope: !320, file: !3, line: 509, type: !55)
!330 = !DILocalVariable(name: "len", scope: !320, file: !3, line: 509, type: !55)
!331 = !DILocalVariable(name: "clen", scope: !320, file: !3, line: 509, type: !55)
!332 = !DILocalVariable(name: "hlen", scope: !320, file: !3, line: 510, type: !46)
!333 = !DILocalVariable(name: "valid", scope: !320, file: !3, line: 511, type: !184)
!334 = !DILocalVariable(name: "is_last", scope: !320, file: !3, line: 512, type: !184)
!335 = !DILocalVariable(name: "datagram_len", scope: !336, file: !3, line: 590, type: !55)
!336 = distinct !DILexicalBlock(scope: !337, file: !3, line: 589, column: 16)
!337 = distinct !DILexicalBlock(scope: !320, file: !3, line: 589, column: 7)
!338 = !DILocalVariable(name: "datagram_len", scope: !339, file: !3, line: 609, type: !55)
!339 = distinct !DILexicalBlock(scope: !340, file: !3, line: 608, column: 16)
!340 = distinct !DILexicalBlock(scope: !320, file: !3, line: 608, column: 7)
!341 = !DILocalVariable(name: "ipr_prev", scope: !342, file: !3, line: 618, type: !91)
!342 = distinct !DILexicalBlock(scope: !343, file: !3, line: 617, column: 53)
!343 = distinct !DILexicalBlock(scope: !320, file: !3, line: 617, column: 7)
!344 = !DILocalVariable(name: "datagram_len", scope: !342, file: !3, line: 621, type: !55)
!345 = !DILocation(line: 503, column: 24, scope: !320)
!346 = !DILocation(line: 514, column: 3, scope: !320)
!347 = !{!348, !163, i64 50}
!348 = !{!"stats_", !349, i64 0, !349, i64 24, !349, i64 48, !349, i64 72, !349, i64 96, !349, i64 120, !349, i64 144, !350, i64 168, !349, i64 186, !349, i64 210, !349, i64 234, !352, i64 258, !349, i64 286}
!349 = !{!"stats_proto", !163, i64 0, !163, i64 2, !163, i64 4, !163, i64 6, !163, i64 8, !163, i64 10, !163, i64 12, !163, i64 14, !163, i64 16, !163, i64 18, !163, i64 20, !163, i64 22}
!350 = !{!"stats_sys", !351, i64 0, !351, i64 6, !351, i64 12}
!351 = !{!"stats_syselem", !163, i64 0, !163, i64 2, !163, i64 4}
!352 = !{!"stats_igmp", !163, i64 0, !163, i64 2, !163, i64 4, !163, i64 6, !163, i64 8, !163, i64 10, !163, i64 12, !163, i64 14, !163, i64 16, !163, i64 18, !163, i64 20, !163, i64 22, !163, i64 24, !163, i64 26}
!353 = !DILocation(line: 517, column: 33, scope: !320)
!354 = !DILocation(line: 517, column: 13, scope: !320)
!355 = !DILocation(line: 506, column: 18, scope: !320)
!356 = !DILocation(line: 519, column: 7, scope: !357)
!357 = distinct !DILexicalBlock(scope: !320, file: !3, line: 519, column: 7)
!358 = !{!162, !154, i64 0}
!359 = !DILocation(line: 519, column: 29, scope: !357)
!360 = !DILocation(line: 519, column: 7, scope: !320)
!361 = !DILocation(line: 521, column: 5, scope: !362)
!362 = distinct !DILexicalBlock(scope: !357, file: !3, line: 519, column: 41)
!363 = !{!348, !163, i64 68}
!364 = !DILocation(line: 522, column: 5, scope: !362)
!365 = !DILocation(line: 525, column: 12, scope: !320)
!366 = !{!162, !163, i64 6}
!367 = !DILocation(line: 509, column: 9, scope: !320)
!368 = !DILocation(line: 526, column: 9, scope: !320)
!369 = !{!162, !163, i64 2}
!370 = !DILocation(line: 509, column: 17, scope: !320)
!371 = !DILocation(line: 527, column: 10, scope: !320)
!372 = !DILocation(line: 510, column: 8, scope: !320)
!373 = !DILocation(line: 528, column: 7, scope: !374)
!374 = distinct !DILexicalBlock(scope: !320, file: !3, line: 528, column: 7)
!375 = !DILocation(line: 528, column: 14, scope: !374)
!376 = !DILocation(line: 528, column: 12, scope: !374)
!377 = !DILocation(line: 528, column: 7, scope: !320)
!378 = !DILocation(line: 532, column: 9, scope: !320)
!379 = !DILocation(line: 535, column: 10, scope: !320)
!380 = !DILocation(line: 509, column: 22, scope: !320)
!381 = !DILocation(line: 536, column: 8, scope: !382)
!382 = distinct !DILexicalBlock(scope: !320, file: !3, line: 536, column: 7)
!383 = !DILocation(line: 536, column: 29, scope: !382)
!384 = !DILocation(line: 536, column: 27, scope: !382)
!385 = !DILocation(line: 536, column: 35, scope: !382)
!386 = !DILocation(line: 536, column: 7, scope: !320)
!387 = !DILocation(line: 538, column: 10, scope: !388)
!388 = distinct !DILexicalBlock(scope: !389, file: !3, line: 538, column: 9)
!389 = distinct !DILexicalBlock(scope: !382, file: !3, line: 536, column: 57)
!390 = !DILocation(line: 538, column: 57, scope: !388)
!391 = !DILocation(line: 539, column: 11, scope: !388)
!392 = !DILocation(line: 539, column: 30, scope: !388)
!393 = !DILocation(line: 539, column: 38, scope: !388)
!394 = !DILocation(line: 538, column: 9, scope: !389)
!395 = !DILocation(line: 545, column: 7, scope: !396)
!396 = distinct !DILexicalBlock(scope: !388, file: !3, line: 541, column: 5)
!397 = !{!348, !163, i64 60}
!398 = !DILocation(line: 548, column: 7, scope: !396)
!399 = !DILocation(line: 554, column: 14, scope: !400)
!400 = distinct !DILexicalBlock(scope: !320, file: !3, line: 554, column: 3)
!401 = !DILocation(line: 507, column: 24, scope: !320)
!402 = !DILocation(line: 554, column: 8, scope: !400)
!403 = !DILocation(line: 554, column: 34, scope: !404)
!404 = distinct !DILexicalBlock(scope: !400, file: !3, line: 554, column: 3)
!405 = !DILocation(line: 554, column: 3, scope: !400)
!406 = !DILocation(line: 558, column: 9, scope: !407)
!407 = distinct !DILexicalBlock(scope: !408, file: !3, line: 558, column: 9)
!408 = distinct !DILexicalBlock(scope: !404, file: !3, line: 554, column: 60)
!409 = !{!161, !165, i64 28}
!410 = !{!161, !165, i64 32}
!411 = !{!162, !165, i64 16}
!412 = !{!161, !163, i64 20}
!413 = !{!162, !163, i64 4}
!414 = !DILocation(line: 558, column: 9, scope: !408)
!415 = !DILocation(line: 554, column: 54, scope: !404)
!416 = !DILocation(line: 554, column: 3, scope: !404)
!417 = distinct !{!417, !405, !418}
!418 = !DILocation(line: 564, column: 3, scope: !400)
!419 = !DILocation(line: 566, column: 7, scope: !320)
!420 = !DILocalVariable(name: "fraghdr", arg: 1, scope: !421, file: !3, line: 278, type: !41)
!421 = distinct !DISubprogram(name: "ip_reass_enqueue_new_datagram", scope: !3, file: !3, line: 278, type: !422, isLocal: true, isDefinition: true, scopeLine: 279, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !424)
!422 = !DISubroutineType(types: !423)
!423 = !{!91, !41, !184}
!424 = !{!420, !425, !426}
!425 = !DILocalVariable(name: "clen", arg: 2, scope: !421, file: !3, line: 278, type: !184)
!426 = !DILocalVariable(name: "ipr", scope: !421, file: !3, line: 280, type: !91)
!427 = !DILocation(line: 278, column: 46, scope: !421, inlinedAt: !428)
!428 = distinct !DILocation(line: 568, column: 11, scope: !429)
!429 = distinct !DILexicalBlock(scope: !430, file: !3, line: 566, column: 20)
!430 = distinct !DILexicalBlock(scope: !320, file: !3, line: 566, column: 7)
!431 = !DILocation(line: 278, column: 59, scope: !421, inlinedAt: !428)
!432 = !DILocation(line: 286, column: 32, scope: !421, inlinedAt: !428)
!433 = !DILocation(line: 286, column: 9, scope: !421, inlinedAt: !428)
!434 = !DILocation(line: 280, column: 24, scope: !421, inlinedAt: !428)
!435 = !DILocation(line: 287, column: 11, scope: !436, inlinedAt: !428)
!436 = distinct !DILexicalBlock(scope: !421, file: !3, line: 287, column: 7)
!437 = !DILocation(line: 287, column: 7, scope: !421, inlinedAt: !428)
!438 = !DILocation(line: 289, column: 9, scope: !439, inlinedAt: !428)
!439 = distinct !DILexicalBlock(scope: !440, file: !3, line: 289, column: 9)
!440 = distinct !DILexicalBlock(scope: !436, file: !3, line: 287, column: 20)
!441 = !DILocation(line: 289, column: 56, scope: !439, inlinedAt: !428)
!442 = !DILocation(line: 289, column: 9, scope: !440, inlinedAt: !428)
!443 = !DILocation(line: 290, column: 36, scope: !444, inlinedAt: !428)
!444 = distinct !DILexicalBlock(scope: !439, file: !3, line: 289, column: 65)
!445 = !DILocation(line: 290, column: 13, scope: !444, inlinedAt: !428)
!446 = !DILocation(line: 291, column: 5, scope: !444, inlinedAt: !428)
!447 = !DILocation(line: 0, scope: !421, inlinedAt: !428)
!448 = !DILocation(line: 292, column: 13, scope: !449, inlinedAt: !428)
!449 = distinct !DILexicalBlock(scope: !440, file: !3, line: 292, column: 9)
!450 = !DILocation(line: 292, column: 9, scope: !440, inlinedAt: !428)
!451 = !DILocation(line: 295, column: 7, scope: !452, inlinedAt: !428)
!452 = distinct !DILexicalBlock(scope: !449, file: !3, line: 294, column: 5)
!453 = !DILocation(line: 297, column: 7, scope: !452, inlinedAt: !428)
!454 = !DILocation(line: 310, column: 1, scope: !421, inlinedAt: !428)
!455 = !DILocation(line: 570, column: 9, scope: !429)
!456 = !DILocation(line: 300, column: 3, scope: !421, inlinedAt: !428)
!457 = !DILocation(line: 301, column: 8, scope: !421, inlinedAt: !428)
!458 = !DILocation(line: 301, column: 14, scope: !421, inlinedAt: !428)
!459 = !DILocation(line: 304, column: 15, scope: !421, inlinedAt: !428)
!460 = !DILocation(line: 304, column: 13, scope: !421, inlinedAt: !428)
!461 = !DILocation(line: 305, column: 18, scope: !421, inlinedAt: !428)
!462 = !DILocation(line: 308, column: 3, scope: !421, inlinedAt: !428)
!463 = !DILocation(line: 309, column: 3, scope: !421, inlinedAt: !428)
!464 = !DILocation(line: 570, column: 13, scope: !465)
!465 = distinct !DILexicalBlock(scope: !429, file: !3, line: 570, column: 9)
!466 = !DILocation(line: 0, scope: !404)
!467 = !DILocation(line: 561, column: 7, scope: !468)
!468 = distinct !DILexicalBlock(scope: !407, file: !3, line: 558, column: 58)
!469 = !{!348, !163, i64 70}
!470 = !DILocation(line: 562, column: 7, scope: !468)
!471 = !DILocation(line: 574, column: 11, scope: !472)
!472 = distinct !DILexicalBlock(scope: !473, file: !3, line: 574, column: 9)
!473 = distinct !DILexicalBlock(scope: !430, file: !3, line: 573, column: 10)
!474 = !DILocation(line: 574, column: 43, scope: !472)
!475 = !DILocation(line: 574, column: 57, scope: !472)
!476 = !DILocation(line: 574, column: 63, scope: !472)
!477 = !DILocation(line: 575, column: 11, scope: !472)
!478 = !{!161, !163, i64 22}
!479 = !DILocation(line: 575, column: 47, scope: !472)
!480 = !DILocation(line: 575, column: 61, scope: !472)
!481 = !DILocation(line: 574, column: 9, scope: !473)
!482 = !DILocation(line: 580, column: 7, scope: !483)
!483 = distinct !DILexicalBlock(scope: !472, file: !3, line: 575, column: 68)
!484 = !DILocation(line: 581, column: 5, scope: !483)
!485 = !DILocation(line: 0, scope: !400)
!486 = !DILocation(line: 588, column: 14, scope: !320)
!487 = !DILocation(line: 588, column: 34, scope: !320)
!488 = !DILocation(line: 588, column: 53, scope: !320)
!489 = !DILocation(line: 589, column: 7, scope: !320)
!490 = !DILocation(line: 590, column: 41, scope: !336)
!491 = !DILocation(line: 590, column: 11, scope: !336)
!492 = !DILocation(line: 591, column: 23, scope: !493)
!493 = distinct !DILexicalBlock(scope: !336, file: !3, line: 591, column: 9)
!494 = !DILocation(line: 591, column: 33, scope: !493)
!495 = !DILocation(line: 591, column: 50, scope: !493)
!496 = !DILocation(line: 591, column: 9, scope: !336)
!497 = !DILocation(line: 595, column: 3, scope: !337)
!498 = !DILocalVariable(name: "ipr", arg: 1, scope: !499, file: !3, line: 344, type: !91)
!499 = distinct !DISubprogram(name: "ip_reass_chain_frag_into_datagram_and_validate", scope: !3, file: !3, line: 344, type: !500, isLocal: true, isDefinition: true, scopeLine: 345, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !502)
!500 = !DISubroutineType(types: !501)
!501 = !{!184, !91, !77, !184}
!502 = !{!498, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513}
!503 = !DILocalVariable(name: "new_p", arg: 2, scope: !499, file: !3, line: 344, type: !77)
!504 = !DILocalVariable(name: "is_last", arg: 3, scope: !499, file: !3, line: 344, type: !184)
!505 = !DILocalVariable(name: "iprh", scope: !499, file: !3, line: 346, type: !73)
!506 = !DILocalVariable(name: "iprh_tmp", scope: !499, file: !3, line: 346, type: !73)
!507 = !DILocalVariable(name: "iprh_prev", scope: !499, file: !3, line: 346, type: !73)
!508 = !DILocalVariable(name: "q", scope: !499, file: !3, line: 347, type: !77)
!509 = !DILocalVariable(name: "offset", scope: !499, file: !3, line: 348, type: !55)
!510 = !DILocalVariable(name: "len", scope: !499, file: !3, line: 348, type: !55)
!511 = !DILocalVariable(name: "hlen", scope: !499, file: !3, line: 349, type: !46)
!512 = !DILocalVariable(name: "fraghdr", scope: !499, file: !3, line: 350, type: !41)
!513 = !DILocalVariable(name: "valid", scope: !499, file: !3, line: 351, type: !184)
!514 = !DILocation(line: 344, column: 69, scope: !499, inlinedAt: !515)
!515 = distinct !DILocation(line: 598, column: 11, scope: !320)
!516 = !DILocation(line: 344, column: 87, scope: !499, inlinedAt: !515)
!517 = !DILocation(line: 346, column: 45, scope: !499, inlinedAt: !515)
!518 = !DILocation(line: 351, column: 7, scope: !499, inlinedAt: !515)
!519 = !DILocation(line: 354, column: 37, scope: !499, inlinedAt: !515)
!520 = !DILocation(line: 350, column: 18, scope: !499, inlinedAt: !515)
!521 = !DILocation(line: 355, column: 9, scope: !499, inlinedAt: !515)
!522 = !DILocation(line: 348, column: 17, scope: !499, inlinedAt: !515)
!523 = !DILocation(line: 356, column: 10, scope: !499, inlinedAt: !515)
!524 = !DILocation(line: 349, column: 8, scope: !499, inlinedAt: !515)
!525 = !DILocation(line: 357, column: 7, scope: !526, inlinedAt: !515)
!526 = distinct !DILexicalBlock(scope: !499, file: !3, line: 357, column: 7)
!527 = !DILocation(line: 357, column: 14, scope: !526, inlinedAt: !515)
!528 = !DILocation(line: 357, column: 12, scope: !526, inlinedAt: !515)
!529 = !DILocation(line: 357, column: 7, scope: !499, inlinedAt: !515)
!530 = !DILocation(line: 361, column: 9, scope: !499, inlinedAt: !515)
!531 = !DILocation(line: 362, column: 12, scope: !499, inlinedAt: !515)
!532 = !DILocation(line: 348, column: 9, scope: !499, inlinedAt: !515)
!533 = !DILocation(line: 369, column: 43, scope: !499, inlinedAt: !515)
!534 = !DILocation(line: 346, column: 27, scope: !499, inlinedAt: !515)
!535 = !DILocation(line: 370, column: 9, scope: !499, inlinedAt: !515)
!536 = !DILocation(line: 370, column: 19, scope: !499, inlinedAt: !515)
!537 = !DILocation(line: 371, column: 9, scope: !499, inlinedAt: !515)
!538 = !DILocation(line: 371, column: 15, scope: !499, inlinedAt: !515)
!539 = !DILocation(line: 372, column: 30, scope: !499, inlinedAt: !515)
!540 = !DILocation(line: 372, column: 9, scope: !499, inlinedAt: !515)
!541 = !DILocation(line: 372, column: 13, scope: !499, inlinedAt: !515)
!542 = !{!232, !163, i64 10}
!543 = !DILocation(line: 373, column: 17, scope: !544, inlinedAt: !515)
!544 = distinct !DILexicalBlock(scope: !499, file: !3, line: 373, column: 7)
!545 = !DILocation(line: 373, column: 7, scope: !499, inlinedAt: !515)
!546 = !DILocation(line: 380, column: 17, scope: !547, inlinedAt: !515)
!547 = distinct !DILexicalBlock(scope: !499, file: !3, line: 380, column: 3)
!548 = !DILocation(line: 347, column: 16, scope: !499, inlinedAt: !515)
!549 = !DILocation(line: 380, column: 8, scope: !547, inlinedAt: !515)
!550 = !DILocation(line: 380, column: 22, scope: !551, inlinedAt: !515)
!551 = distinct !DILexicalBlock(scope: !547, file: !3, line: 380, column: 3)
!552 = !DILocation(line: 380, column: 3, scope: !547, inlinedAt: !515)
!553 = !DILocation(line: 381, column: 45, scope: !554, inlinedAt: !515)
!554 = distinct !DILexicalBlock(scope: !551, file: !3, line: 380, column: 32)
!555 = !DILocation(line: 346, column: 34, scope: !499, inlinedAt: !515)
!556 = !DILocation(line: 382, column: 33, scope: !557, inlinedAt: !515)
!557 = distinct !DILexicalBlock(scope: !554, file: !3, line: 382, column: 9)
!558 = !DILocation(line: 382, column: 21, scope: !557, inlinedAt: !515)
!559 = !DILocation(line: 382, column: 9, scope: !554, inlinedAt: !515)
!560 = !DILocation(line: 384, column: 23, scope: !561, inlinedAt: !515)
!561 = distinct !DILexicalBlock(scope: !557, file: !3, line: 382, column: 40)
!562 = !DILocation(line: 385, column: 21, scope: !563, inlinedAt: !515)
!563 = distinct !DILexicalBlock(scope: !561, file: !3, line: 385, column: 11)
!564 = !DILocation(line: 385, column: 11, scope: !561, inlinedAt: !515)
!565 = !DILocation(line: 388, column: 39, scope: !566, inlinedAt: !515)
!566 = distinct !DILexicalBlock(scope: !567, file: !3, line: 388, column: 13)
!567 = distinct !DILexicalBlock(scope: !563, file: !3, line: 385, column: 30)
!568 = !DILocation(line: 388, column: 26, scope: !566, inlinedAt: !515)
!569 = !DILocation(line: 388, column: 44, scope: !566, inlinedAt: !515)
!570 = !DILocation(line: 388, column: 58, scope: !566, inlinedAt: !515)
!571 = !DILocation(line: 388, column: 13, scope: !567, inlinedAt: !515)
!572 = !DILocation(line: 393, column: 20, scope: !567, inlinedAt: !515)
!573 = !DILocation(line: 393, column: 30, scope: !567, inlinedAt: !515)
!574 = !DILocation(line: 394, column: 28, scope: !575, inlinedAt: !515)
!575 = distinct !DILexicalBlock(scope: !567, file: !3, line: 394, column: 13)
!576 = !DILocation(line: 394, column: 13, scope: !567, inlinedAt: !515)
!577 = !DILocation(line: 401, column: 23, scope: !578, inlinedAt: !515)
!578 = distinct !DILexicalBlock(scope: !579, file: !3, line: 401, column: 13)
!579 = distinct !DILexicalBlock(scope: !563, file: !3, line: 399, column: 14)
!580 = !DILocation(line: 401, column: 13, scope: !579, inlinedAt: !515)
!581 = !DILocation(line: 407, column: 16, scope: !579, inlinedAt: !515)
!582 = !DILocation(line: 410, column: 28, scope: !583, inlinedAt: !515)
!583 = distinct !DILexicalBlock(scope: !557, file: !3, line: 410, column: 16)
!584 = !DILocation(line: 410, column: 16, scope: !557, inlinedAt: !515)
!585 = !DILocation(line: 414, column: 40, scope: !586, inlinedAt: !515)
!586 = distinct !DILexicalBlock(scope: !583, file: !3, line: 414, column: 16)
!587 = !DILocation(line: 414, column: 28, scope: !586, inlinedAt: !515)
!588 = !DILocation(line: 414, column: 16, scope: !583, inlinedAt: !515)
!589 = !DILocation(line: 420, column: 21, scope: !590, inlinedAt: !515)
!590 = distinct !DILexicalBlock(scope: !591, file: !3, line: 420, column: 11)
!591 = distinct !DILexicalBlock(scope: !586, file: !3, line: 418, column: 12)
!592 = !DILocation(line: 420, column: 11, scope: !591, inlinedAt: !515)
!593 = !DILocation(line: 421, column: 24, scope: !594, inlinedAt: !515)
!594 = distinct !DILexicalBlock(scope: !595, file: !3, line: 421, column: 13)
!595 = distinct !DILexicalBlock(scope: !590, file: !3, line: 420, column: 30)
!596 = !DILocation(line: 421, column: 28, scope: !594, inlinedAt: !515)
!597 = !DILocation(line: 421, column: 13, scope: !595, inlinedAt: !515)
!598 = !DILocation(line: 425, column: 9, scope: !599, inlinedAt: !515)
!599 = distinct !DILexicalBlock(scope: !594, file: !3, line: 421, column: 48)
!600 = !DILocation(line: 0, scope: !499, inlinedAt: !515)
!601 = !DILocation(line: 428, column: 19, scope: !554, inlinedAt: !515)
!602 = !DILocation(line: 380, column: 3, scope: !551, inlinedAt: !515)
!603 = distinct !{!603, !604, !605}
!604 = !DILocation(line: 380, column: 3, scope: !547)
!605 = !DILocation(line: 430, column: 3, scope: !547)
!606 = !DILocation(line: 433, column: 7, scope: !499, inlinedAt: !515)
!607 = !DILocation(line: 434, column: 9, scope: !608, inlinedAt: !515)
!608 = distinct !DILexicalBlock(scope: !609, file: !3, line: 433, column: 18)
!609 = distinct !DILexicalBlock(scope: !499, file: !3, line: 433, column: 7)
!610 = !DILocation(line: 438, column: 7, scope: !611, inlinedAt: !515)
!611 = distinct !DILexicalBlock(scope: !612, file: !3, line: 438, column: 7)
!612 = distinct !DILexicalBlock(scope: !613, file: !3, line: 434, column: 28)
!613 = distinct !DILexicalBlock(scope: !608, file: !3, line: 434, column: 9)
!614 = !DILocation(line: 440, column: 28, scope: !612, inlinedAt: !515)
!615 = !DILocation(line: 441, column: 26, scope: !616, inlinedAt: !515)
!616 = distinct !DILexicalBlock(scope: !612, file: !3, line: 441, column: 11)
!617 = !DILocation(line: 441, column: 11, scope: !612, inlinedAt: !515)
!618 = !DILocation(line: 446, column: 7, scope: !619, inlinedAt: !515)
!619 = distinct !DILexicalBlock(scope: !620, file: !3, line: 446, column: 7)
!620 = distinct !DILexicalBlock(scope: !613, file: !3, line: 444, column: 12)
!621 = !DILocation(line: 450, column: 14, scope: !620, inlinedAt: !515)
!622 = !DILocation(line: 456, column: 15, scope: !623, inlinedAt: !515)
!623 = distinct !DILexicalBlock(scope: !499, file: !3, line: 456, column: 7)
!624 = !DILocation(line: 0, scope: !625, inlinedAt: !515)
!625 = distinct !DILexicalBlock(scope: !575, file: !3, line: 394, column: 44)
!626 = !DILocation(line: 456, column: 25, scope: !623, inlinedAt: !515)
!627 = !{!161, !154, i64 38}
!628 = !DILocation(line: 456, column: 31, scope: !623, inlinedAt: !515)
!629 = !DILocation(line: 456, column: 57, scope: !623, inlinedAt: !515)
!630 = !DILocation(line: 456, column: 7, scope: !499, inlinedAt: !515)
!631 = !DILocation(line: 458, column: 9, scope: !632, inlinedAt: !515)
!632 = distinct !DILexicalBlock(scope: !633, file: !3, line: 458, column: 9)
!633 = distinct !DILexicalBlock(scope: !623, file: !3, line: 456, column: 64)
!634 = !DILocation(line: 458, column: 9, scope: !633, inlinedAt: !515)
!635 = !DILocation(line: 461, column: 19, scope: !636, inlinedAt: !515)
!636 = distinct !DILexicalBlock(scope: !637, file: !3, line: 461, column: 11)
!637 = distinct !DILexicalBlock(scope: !632, file: !3, line: 458, column: 16)
!638 = !DILocation(line: 461, column: 28, scope: !636, inlinedAt: !515)
!639 = !DILocation(line: 461, column: 67, scope: !636, inlinedAt: !515)
!640 = !DILocation(line: 461, column: 77, scope: !636, inlinedAt: !515)
!641 = !DILocation(line: 461, column: 83, scope: !636, inlinedAt: !515)
!642 = !DILocation(line: 461, column: 11, scope: !637, inlinedAt: !515)
!643 = !DILocation(line: 466, column: 19, scope: !644, inlinedAt: !515)
!644 = distinct !DILexicalBlock(scope: !636, file: !3, line: 463, column: 14)
!645 = !DILocation(line: 467, column: 9, scope: !644, inlinedAt: !515)
!646 = !DILocation(line: 467, column: 18, scope: !644, inlinedAt: !515)
!647 = !DILocation(line: 468, column: 47, scope: !648, inlinedAt: !515)
!648 = distinct !DILexicalBlock(scope: !644, file: !3, line: 467, column: 27)
!649 = !DILocation(line: 469, column: 39, scope: !650, inlinedAt: !515)
!650 = distinct !DILexicalBlock(scope: !648, file: !3, line: 469, column: 15)
!651 = !DILocation(line: 469, column: 30, scope: !650, inlinedAt: !515)
!652 = !DILocation(line: 469, column: 15, scope: !648, inlinedAt: !515)
!653 = !DILocation(line: 471, column: 13, scope: !654, inlinedAt: !515)
!654 = distinct !DILexicalBlock(scope: !650, file: !3, line: 469, column: 46)
!655 = !DILocation(line: 478, column: 13, scope: !644, inlinedAt: !515)
!656 = !DILocation(line: 474, column: 21, scope: !648, inlinedAt: !515)
!657 = distinct !{!657, !658, !659}
!658 = !DILocation(line: 467, column: 9, scope: !644)
!659 = !DILocation(line: 475, column: 9, scope: !644)
!660 = !DILocation(line: 469, column: 26, scope: !650, inlinedAt: !515)
!661 = !DILocation(line: 0, scope: !648, inlinedAt: !515)
!662 = !DILocation(line: 479, column: 11, scope: !663, inlinedAt: !515)
!663 = distinct !DILexicalBlock(scope: !664, file: !3, line: 479, column: 11)
!664 = distinct !DILexicalBlock(scope: !665, file: !3, line: 478, column: 20)
!665 = distinct !DILexicalBlock(scope: !644, file: !3, line: 478, column: 13)
!666 = !DILocation(line: 480, column: 11, scope: !667, inlinedAt: !515)
!667 = distinct !DILexicalBlock(scope: !668, file: !3, line: 480, column: 11)
!668 = distinct !DILexicalBlock(scope: !664, file: !3, line: 480, column: 11)
!669 = !DILocation(line: 480, column: 11, scope: !668, inlinedAt: !515)
!670 = !DILocation(line: 480, column: 11, scope: !671, inlinedAt: !515)
!671 = distinct !DILexicalBlock(scope: !672, file: !3, line: 480, column: 11)
!672 = distinct !DILexicalBlock(scope: !667, file: !3, line: 480, column: 11)
!673 = !DILocation(line: 480, column: 11, scope: !674, inlinedAt: !515)
!674 = distinct !DILexicalBlock(scope: !675, file: !3, line: 480, column: 11)
!675 = distinct !DILexicalBlock(scope: !676, file: !3, line: 480, column: 11)
!676 = distinct !DILexicalBlock(scope: !671, file: !3, line: 480, column: 11)
!677 = !DILocation(line: 493, column: 3, scope: !499, inlinedAt: !515)
!678 = !DILocation(line: 494, column: 1, scope: !499, inlinedAt: !515)
!679 = !DILocation(line: 599, column: 7, scope: !320)
!680 = !DILocation(line: 607, column: 32, scope: !320)
!681 = !DILocation(line: 607, column: 51, scope: !320)
!682 = !DILocation(line: 607, column: 22, scope: !320)
!683 = !DILocation(line: 608, column: 7, scope: !320)
!684 = !DILocation(line: 617, column: 7, scope: !320)
!685 = !DILocation(line: 0, scope: !320)
!686 = !DILocation(line: 490, column: 12, scope: !633, inlinedAt: !515)
!687 = !DILocation(line: 0, scope: !688, inlinedAt: !515)
!688 = distinct !DILexicalBlock(scope: !616, file: !3, line: 441, column: 42)
!689 = !DILocation(line: 490, column: 5, scope: !633, inlinedAt: !515)
!690 = !DILocation(line: 609, column: 41, scope: !339)
!691 = !DILocation(line: 609, column: 11, scope: !339)
!692 = !DILocation(line: 610, column: 10, scope: !339)
!693 = !DILocation(line: 610, column: 23, scope: !339)
!694 = !{!161, !163, i64 36}
!695 = !DILocation(line: 611, column: 10, scope: !339)
!696 = !DILocation(line: 611, column: 16, scope: !339)
!697 = !DILocation(line: 615, column: 3, scope: !339)
!698 = !DILocation(line: 621, column: 39, scope: !342)
!699 = !DILocation(line: 621, column: 52, scope: !342)
!700 = !DILocation(line: 621, column: 11, scope: !342)
!701 = !DILocation(line: 624, column: 44, scope: !342)
!702 = !DILocation(line: 624, column: 54, scope: !342)
!703 = !DILocation(line: 505, column: 16, scope: !320)
!704 = !DILocation(line: 628, column: 5, scope: !342)
!705 = !DILocation(line: 629, column: 5, scope: !342)
!706 = !DILocation(line: 630, column: 5, scope: !342)
!707 = !DILocation(line: 631, column: 5, scope: !342)
!708 = !{!162, !163, i64 10}
!709 = !DILocation(line: 634, column: 5, scope: !710)
!710 = distinct !DILexicalBlock(scope: !342, file: !3, line: 634, column: 5)
!711 = !{!712, !153, i64 8}
!712 = !{!"ip_globals", !153, i64 0, !153, i64 8, !153, i64 16, !153, i64 24, !163, i64 32, !713, i64 36, !713, i64 60}
!713 = !{!"ip_addr", !154, i64 0, !154, i64 20}
!714 = !{!715, !163, i64 248}
!715 = !{!"netif", !153, i64 0, !713, i64 8, !713, i64 32, !713, i64 56, !154, i64 80, !154, i64 152, !154, i64 156, !154, i64 168, !153, i64 184, !153, i64 192, !153, i64 200, !153, i64 208, !153, i64 216, !153, i64 224, !153, i64 232, !154, i64 240, !163, i64 248, !163, i64 250, !163, i64 252, !154, i64 254, !154, i64 260, !154, i64 261, !154, i64 262, !154, i64 264, !154, i64 265, !154, i64 266, !153, i64 272}
!716 = !DILocation(line: 634, column: 5, scope: !342)
!717 = !DILocation(line: 635, column: 7, scope: !718)
!718 = distinct !DILexicalBlock(scope: !710, file: !3, line: 634, column: 81)
!719 = !DILocation(line: 636, column: 5, scope: !718)
!720 = !DILocation(line: 639, column: 14, scope: !342)
!721 = !DILocation(line: 642, column: 5, scope: !342)
!722 = !DILocation(line: 642, column: 14, scope: !342)
!723 = !DILocation(line: 643, column: 43, scope: !724)
!724 = distinct !DILexicalBlock(scope: !342, file: !3, line: 642, column: 23)
!725 = !DILocation(line: 508, column: 27, scope: !320)
!726 = !DILocation(line: 646, column: 7, scope: !724)
!727 = !DILocation(line: 647, column: 7, scope: !724)
!728 = !DILocation(line: 648, column: 17, scope: !724)
!729 = distinct !{!729, !721, !730}
!730 = !DILocation(line: 649, column: 5, scope: !342)
!731 = !DILocation(line: 652, column: 16, scope: !732)
!732 = distinct !DILexicalBlock(scope: !342, file: !3, line: 652, column: 9)
!733 = !DILocation(line: 652, column: 13, scope: !732)
!734 = !DILocation(line: 652, column: 9, scope: !342)
!735 = !DILocation(line: 0, scope: !736)
!736 = distinct !DILexicalBlock(scope: !737, file: !3, line: 655, column: 7)
!737 = distinct !DILexicalBlock(scope: !732, file: !3, line: 654, column: 12)
!738 = !DILocation(line: 618, column: 26, scope: !342)
!739 = !DILocation(line: 655, column: 48, scope: !740)
!740 = distinct !DILexicalBlock(scope: !736, file: !3, line: 655, column: 7)
!741 = !DILocation(line: 655, column: 7, scope: !736)
!742 = !DILocation(line: 656, column: 23, scope: !743)
!743 = distinct !DILexicalBlock(scope: !744, file: !3, line: 656, column: 13)
!744 = distinct !DILexicalBlock(scope: !740, file: !3, line: 655, column: 84)
!745 = !DILocation(line: 656, column: 28, scope: !743)
!746 = !DILocation(line: 656, column: 13, scope: !744)
!747 = !DILocation(line: 0, scope: !740)
!748 = distinct !{!748, !741, !749}
!749 = !DILocation(line: 659, column: 7, scope: !736)
!750 = !DILocation(line: 317, column: 48, scope: !273, inlinedAt: !751)
!751 = distinct !DILocation(line: 663, column: 5, scope: !342)
!752 = !DILocation(line: 317, column: 74, scope: !273, inlinedAt: !751)
!753 = !DILocation(line: 320, column: 7, scope: !273, inlinedAt: !751)
!754 = !DILocation(line: 322, column: 27, scope: !286, inlinedAt: !751)
!755 = !DILocation(line: 322, column: 20, scope: !286, inlinedAt: !751)
!756 = !DILocation(line: 323, column: 3, scope: !286, inlinedAt: !751)
!757 = !DILocation(line: 325, column: 5, scope: !290, inlinedAt: !751)
!758 = !DILocation(line: 325, column: 5, scope: !293, inlinedAt: !751)
!759 = !DILocation(line: 325, column: 5, scope: !297, inlinedAt: !751)
!760 = !DILocation(line: 326, column: 23, scope: !291, inlinedAt: !751)
!761 = !DILocation(line: 326, column: 16, scope: !291, inlinedAt: !751)
!762 = !DILocation(line: 330, column: 3, scope: !273, inlinedAt: !751)
!763 = !DILocation(line: 331, column: 1, scope: !273, inlinedAt: !751)
!764 = !DILocation(line: 666, column: 12, scope: !342)
!765 = !DILocation(line: 667, column: 5, scope: !766)
!766 = distinct !DILexicalBlock(scope: !767, file: !3, line: 667, column: 5)
!767 = distinct !DILexicalBlock(scope: !342, file: !3, line: 667, column: 5)
!768 = !DILocation(line: 667, column: 5, scope: !767)
!769 = !DILocation(line: 667, column: 5, scope: !770)
!770 = distinct !DILexicalBlock(scope: !771, file: !3, line: 667, column: 5)
!771 = distinct !DILexicalBlock(scope: !766, file: !3, line: 667, column: 5)
!772 = !DILocation(line: 667, column: 5, scope: !773)
!773 = distinct !DILexicalBlock(scope: !774, file: !3, line: 667, column: 5)
!774 = distinct !DILexicalBlock(scope: !775, file: !3, line: 667, column: 5)
!775 = distinct !DILexicalBlock(scope: !770, file: !3, line: 667, column: 5)
!776 = !DILocation(line: 668, column: 53, scope: !342)
!777 = !DILocation(line: 668, column: 24, scope: !342)
!778 = !DILocation(line: 680, column: 3, scope: !779)
!779 = distinct !DILexicalBlock(scope: !320, file: !3, line: 680, column: 3)
!780 = !DILocation(line: 680, column: 3, scope: !781)
!781 = distinct !DILexicalBlock(scope: !779, file: !3, line: 680, column: 3)
!782 = !DILocation(line: 680, column: 3, scope: !783)
!783 = distinct !DILexicalBlock(scope: !784, file: !3, line: 680, column: 3)
!784 = distinct !DILexicalBlock(scope: !781, file: !3, line: 680, column: 3)
!785 = !DILocation(line: 680, column: 3, scope: !786)
!786 = distinct !DILexicalBlock(scope: !787, file: !3, line: 680, column: 3)
!787 = distinct !DILexicalBlock(scope: !788, file: !3, line: 680, column: 3)
!788 = distinct !DILexicalBlock(scope: !783, file: !3, line: 680, column: 3)
!789 = !DILocation(line: 0, scope: !790)
!790 = distinct !DILexicalBlock(scope: !493, file: !3, line: 591, column: 73)
!791 = !DILocation(line: 681, column: 12, scope: !792)
!792 = distinct !DILexicalBlock(scope: !320, file: !3, line: 681, column: 7)
!793 = !DILocation(line: 681, column: 14, scope: !792)
!794 = !DILocation(line: 681, column: 7, scope: !320)
!795 = !DILocation(line: 683, column: 5, scope: !796)
!796 = distinct !DILexicalBlock(scope: !797, file: !3, line: 683, column: 5)
!797 = distinct !DILexicalBlock(scope: !798, file: !3, line: 683, column: 5)
!798 = distinct !DILexicalBlock(scope: !792, file: !3, line: 681, column: 23)
!799 = !DILocation(line: 683, column: 5, scope: !797)
!800 = !DILocation(line: 683, column: 5, scope: !801)
!801 = distinct !DILexicalBlock(scope: !802, file: !3, line: 683, column: 5)
!802 = distinct !DILexicalBlock(scope: !796, file: !3, line: 683, column: 5)
!803 = !DILocation(line: 683, column: 5, scope: !804)
!804 = distinct !DILexicalBlock(scope: !805, file: !3, line: 683, column: 5)
!805 = distinct !DILexicalBlock(scope: !806, file: !3, line: 683, column: 5)
!806 = distinct !DILexicalBlock(scope: !801, file: !3, line: 683, column: 5)
!807 = !DILocation(line: 317, column: 48, scope: !273, inlinedAt: !808)
!808 = distinct !DILocation(line: 684, column: 5, scope: !798)
!809 = !DILocation(line: 317, column: 74, scope: !273, inlinedAt: !808)
!810 = !DILocation(line: 320, column: 7, scope: !273, inlinedAt: !808)
!811 = !DILocation(line: 322, column: 27, scope: !286, inlinedAt: !808)
!812 = !DILocation(line: 322, column: 20, scope: !286, inlinedAt: !808)
!813 = !DILocation(line: 323, column: 3, scope: !286, inlinedAt: !808)
!814 = !DILocation(line: 330, column: 29, scope: !273, inlinedAt: !808)
!815 = !DILocation(line: 330, column: 3, scope: !273, inlinedAt: !808)
!816 = !DILocation(line: 331, column: 1, scope: !273, inlinedAt: !808)
!817 = !DILocation(line: 685, column: 3, scope: !798)
!818 = !DILocation(line: 689, column: 3, scope: !320)
!819 = !{!348, !163, i64 54}
!820 = !DILocation(line: 690, column: 3, scope: !320)
!821 = !DILocation(line: 691, column: 3, scope: !320)
!822 = !DILocation(line: 692, column: 1, scope: !320)
!823 = distinct !DISubprogram(name: "ip_reass_remove_oldest_datagram", scope: !3, file: !3, line: 227, type: !824, isLocal: true, isDefinition: true, scopeLine: 228, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !826)
!824 = !DISubroutineType(types: !825)
!825 = !{!184, !41, !184}
!826 = !{!827, !828, !829, !830, !831, !832, !833, !834, !835}
!827 = !DILocalVariable(name: "fraghdr", arg: 1, scope: !823, file: !3, line: 227, type: !41)
!828 = !DILocalVariable(name: "pbufs_needed", arg: 2, scope: !823, file: !3, line: 227, type: !184)
!829 = !DILocalVariable(name: "r", scope: !823, file: !3, line: 232, type: !91)
!830 = !DILocalVariable(name: "oldest", scope: !823, file: !3, line: 232, type: !91)
!831 = !DILocalVariable(name: "prev", scope: !823, file: !3, line: 232, type: !91)
!832 = !DILocalVariable(name: "oldest_prev", scope: !823, file: !3, line: 232, type: !91)
!833 = !DILocalVariable(name: "pbufs_freed", scope: !823, file: !3, line: 233, type: !184)
!834 = !DILocalVariable(name: "pbufs_freed_current", scope: !823, file: !3, line: 233, type: !184)
!835 = !DILocalVariable(name: "other_datagrams", scope: !823, file: !3, line: 234, type: !184)
!836 = !DILocation(line: 227, column: 48, scope: !823)
!837 = !DILocation(line: 227, column: 61, scope: !823)
!838 = !DILocation(line: 233, column: 7, scope: !823)
!839 = !DILocation(line: 238, column: 3, scope: !823)
!840 = !DILocation(line: 0, scope: !841)
!841 = distinct !DILexicalBlock(scope: !842, file: !3, line: 262, column: 25)
!842 = distinct !DILexicalBlock(scope: !843, file: !3, line: 262, column: 9)
!843 = distinct !DILexicalBlock(scope: !823, file: !3, line: 238, column: 6)
!844 = !DILocation(line: 232, column: 28, scope: !823)
!845 = !DILocation(line: 232, column: 37, scope: !823)
!846 = !DILocation(line: 232, column: 44, scope: !823)
!847 = !DILocation(line: 234, column: 7, scope: !823)
!848 = !DILocation(line: 243, column: 9, scope: !843)
!849 = !DILocation(line: 232, column: 24, scope: !823)
!850 = !DILocation(line: 244, column: 5, scope: !843)
!851 = !DILocation(line: 244, column: 14, scope: !843)
!852 = !DILocation(line: 262, column: 9, scope: !843)
!853 = !DILocation(line: 266, column: 3, scope: !843)
!854 = !DILocation(line: 245, column: 12, scope: !855)
!855 = distinct !DILexicalBlock(scope: !856, file: !3, line: 245, column: 11)
!856 = distinct !DILexicalBlock(scope: !843, file: !3, line: 244, column: 23)
!857 = !DILocation(line: 245, column: 11, scope: !856)
!858 = !DILocation(line: 247, column: 24, scope: !859)
!859 = distinct !DILexicalBlock(scope: !855, file: !3, line: 245, column: 59)
!860 = !DILocation(line: 248, column: 20, scope: !861)
!861 = distinct !DILexicalBlock(scope: !859, file: !3, line: 248, column: 13)
!862 = !DILocation(line: 248, column: 13, scope: !859)
!863 = !DILocation(line: 251, column: 9, scope: !864)
!864 = distinct !DILexicalBlock(scope: !861, file: !3, line: 248, column: 29)
!865 = !DILocation(line: 251, column: 23, scope: !866)
!866 = distinct !DILexicalBlock(scope: !861, file: !3, line: 251, column: 20)
!867 = !DILocation(line: 251, column: 40, scope: !866)
!868 = !DILocation(line: 251, column: 29, scope: !866)
!869 = !DILocation(line: 251, column: 20, scope: !861)
!870 = !DILocation(line: 255, column: 9, scope: !871)
!871 = distinct !DILexicalBlock(scope: !866, file: !3, line: 251, column: 47)
!872 = !DILocation(line: 0, scope: !843)
!873 = !DILocation(line: 0, scope: !859)
!874 = !DILocation(line: 257, column: 14, scope: !875)
!875 = distinct !DILexicalBlock(scope: !856, file: !3, line: 257, column: 11)
!876 = !DILocation(line: 257, column: 19, scope: !875)
!877 = !DILocation(line: 257, column: 11, scope: !856)
!878 = !DILocation(line: 0, scope: !879)
!879 = distinct !DILexicalBlock(scope: !875, file: !3, line: 257, column: 28)
!880 = !DILocation(line: 262, column: 16, scope: !842)
!881 = !DILocation(line: 263, column: 29, scope: !841)
!882 = !DILocation(line: 233, column: 24, scope: !823)
!883 = !DILocation(line: 264, column: 19, scope: !841)
!884 = !DILocation(line: 265, column: 5, scope: !841)
!885 = !DILocation(line: 0, scope: !823)
!886 = !DILocation(line: 266, column: 25, scope: !823)
!887 = !DILocation(line: 266, column: 61, scope: !823)
!888 = !DILocation(line: 266, column: 41, scope: !823)
!889 = distinct !{!889, !839, !890}
!890 = !DILocation(line: 266, column: 65, scope: !823)
!891 = !DILocation(line: 267, column: 3, scope: !823)
!892 = !DILocation(line: 194, column: 43, scope: !106)
!893 = !DILocation(line: 196, column: 2, scope: !106)
!894 = !DILocation(line: 196, column: 10, scope: !106)
!895 = !DILocation(line: 197, column: 2, scope: !106)
!896 = !DILocation(line: 198, column: 2, scope: !897)
!897 = distinct !DILexicalBlock(scope: !898, file: !107, line: 198, column: 2)
!898 = distinct !DILexicalBlock(scope: !106, file: !107, line: 198, column: 2)
!899 = !DILocation(line: 199, column: 2, scope: !106)
!900 = !DILocation(line: 200, column: 1, scope: !106)
