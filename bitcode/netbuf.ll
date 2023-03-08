; ModuleID = '/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/api/netbuf.c'
source_filename = "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/api/netbuf.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.netbuf = type { %struct.pbuf*, %struct.pbuf*, %struct.ip_addr, i16 }
%struct.pbuf = type { %struct.pbuf*, i8*, i16, i16, i8, i8, i8, i8 }
%struct.ip_addr = type { %union.anon, i8 }
%union.anon = type { %struct.ip6_addr }
%struct.ip6_addr = type { [4 x i32], i8 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [26 x i8] c"netbuf_alloc: invalid buf\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Assertion failure: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"!(1)\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"check that first pbuf can hold size\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"netbuf_free: invalid buf\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"netbuf_ref: invalid buf\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"netbuf_chain: invalid head\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"netbuf_chain: invalid tail\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"netbuf_data: invalid buf\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"netbuf_data: invalid dataptr\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"netbuf_data: invalid len\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"netbuf_next: invalid buf\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"netbuf_first: invalid buf\00", align 1
@uk_pr_crit.__str = internal global [8 x i8] c"liblwip\00", section ".data_shared", align 1, !dbg !0
@uk_pr_crit.__str.13 = internal global [9 x i8] c"netbuf.c\00", section ".data_shared", align 1, !dbg !143
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local %struct.netbuf* @netbuf_new() local_unnamed_addr #0 !dbg !170 {
  %1 = tail call i8* @memp_malloc(i32 6) #7, !dbg !175
  %2 = bitcast i8* %1 to %struct.netbuf*, !dbg !176
  %3 = icmp eq i8* %1, null, !dbg !178
  br i1 %3, label %6, label %4, !dbg !180

; <label>:4:                                      ; preds = %0
  %5 = tail call i8* @memset(i8* nonnull %1, i32 0, i64 48) #7, !dbg !181
  br label %6, !dbg !183

; <label>:6:                                      ; preds = %0, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !184
  ret %struct.netbuf* %2, !dbg !184
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable

; Function Attrs: noredzone
declare dso_local i8* @memp_malloc(i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone nounwind
define dso_local void @netbuf_delete(%struct.netbuf*) local_unnamed_addr #0 !dbg !185 {
  %2 = icmp eq %struct.netbuf* %0, null, !dbg !191
  br i1 %2, label %12, label %3, !dbg !193

; <label>:3:                                      ; preds = %1
  %4 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %0, i64 0, i32 0, !dbg !194
  %5 = load %struct.pbuf*, %struct.pbuf** %4, align 8, !dbg !194, !tbaa !197
  %6 = icmp eq %struct.pbuf* %5, null, !dbg !204
  br i1 %6, label %10, label %7, !dbg !205

; <label>:7:                                      ; preds = %3
  %8 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %5) #7, !dbg !206
  %9 = bitcast %struct.netbuf* %0 to <2 x %struct.pbuf*>*, !dbg !208
  store <2 x %struct.pbuf*> zeroinitializer, <2 x %struct.pbuf*>* %9, align 8, !dbg !208, !tbaa !209
  br label %10, !dbg !210

; <label>:10:                                     ; preds = %3, %7
  %11 = bitcast %struct.netbuf* %0 to i8*, !dbg !211
  tail call void @memp_free(i32 6, i8* %11) #7, !dbg !212
  br label %12, !dbg !213

; <label>:12:                                     ; preds = %1, %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !214
  ret void, !dbg !214
}

; Function Attrs: noredzone
declare dso_local zeroext i8 @pbuf_free(%struct.pbuf*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @memp_free(i32, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i8* @netbuf_alloc(%struct.netbuf*, i16 zeroext) local_unnamed_addr #0 !dbg !215 {
  %3 = icmp eq %struct.netbuf* %0, null, !dbg !223
  br i1 %3, label %4, label %5, !dbg !226

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0)) #8, !dbg !227
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !230
  tail call void @ukplat_terminate(i32 3) #9, !dbg !230
  unreachable, !dbg !230

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %0, i64 0, i32 0, !dbg !234
  %7 = load %struct.pbuf*, %struct.pbuf** %6, align 8, !dbg !234, !tbaa !197
  %8 = icmp eq %struct.pbuf* %7, null, !dbg !236
  br i1 %8, label %11, label %9, !dbg !237

; <label>:9:                                      ; preds = %5
  %10 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %7) #7, !dbg !238
  br label %11, !dbg !240

; <label>:11:                                     ; preds = %5, %9
  %12 = tail call %struct.pbuf* @pbuf_alloc(i32 74, i16 zeroext %1, i32 640) #7, !dbg !241
  store %struct.pbuf* %12, %struct.pbuf** %6, align 8, !dbg !242, !tbaa !197
  %13 = icmp eq %struct.pbuf* %12, null, !dbg !243
  br i1 %13, label %23, label %14, !dbg !245

; <label>:14:                                     ; preds = %11
  %15 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %12, i64 0, i32 3, !dbg !246
  %16 = load i16, i16* %15, align 2, !dbg !246, !tbaa !249
  %17 = icmp ult i16 %16, %1, !dbg !246
  br i1 %17, label %18, label %19, !dbg !251

; <label>:18:                                     ; preds = %14
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !252
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !255
  tail call void @ukplat_terminate(i32 3) #9, !dbg !255
  unreachable, !dbg !255

; <label>:19:                                     ; preds = %14
  %20 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %0, i64 0, i32 1, !dbg !259
  store %struct.pbuf* %12, %struct.pbuf** %20, align 8, !dbg !260, !tbaa !261
  %21 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %12, i64 0, i32 1, !dbg !262
  %22 = load i8*, i8** %21, align 8, !dbg !262, !tbaa !263
  br label %23, !dbg !264

; <label>:23:                                     ; preds = %11, %19
  %24 = phi i8* [ %22, %19 ], [ null, %11 ], !dbg !265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !266
  ret i8* %24, !dbg !266
}

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8*, ...) unnamed_addr #4 !dbg !2 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !268
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #6, !dbg !268
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !270
  call void @llvm.va_start(i8* nonnull %3), !dbg !270
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @uk_pr_crit.__str.13, i64 0, i64 0), i32 198, i8* %0, %struct.__va_list_tag* nonnull %4) #7, !dbg !271
  call void @llvm.va_end(i8* nonnull %3), !dbg !274
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #6, !dbg !275
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !275
  ret void, !dbg !275
}

; Function Attrs: noredzone noreturn
declare dso_local void @ukplat_terminate(i32) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local %struct.pbuf* @pbuf_alloc(i32, i16 zeroext, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @netbuf_free(%struct.netbuf*) local_unnamed_addr #0 !dbg !276 {
  %2 = icmp eq %struct.netbuf* %0, null, !dbg !280
  br i1 %2, label %3, label %4, !dbg !283

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !284
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !287
  tail call void @ukplat_terminate(i32 3) #9, !dbg !287
  unreachable, !dbg !287

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %0, i64 0, i32 0, !dbg !291
  %6 = load %struct.pbuf*, %struct.pbuf** %5, align 8, !dbg !291, !tbaa !197
  %7 = icmp eq %struct.pbuf* %6, null, !dbg !293
  br i1 %7, label %10, label %8, !dbg !294

; <label>:8:                                      ; preds = %4
  %9 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %6) #7, !dbg !295
  br label %10, !dbg !297

; <label>:10:                                     ; preds = %4, %8
  %11 = bitcast %struct.netbuf* %0 to <2 x %struct.pbuf*>*, !dbg !298
  store <2 x %struct.pbuf*> zeroinitializer, <2 x %struct.pbuf*>* %11, align 8, !dbg !298, !tbaa !209
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !299
  ret void, !dbg !299
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @netbuf_ref(%struct.netbuf*, i8*, i16 zeroext) local_unnamed_addr #0 !dbg !300 {
  %4 = icmp eq %struct.netbuf* %0, null, !dbg !315
  br i1 %4, label %5, label %6, !dbg !318

; <label>:5:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !319
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !322
  tail call void @ukplat_terminate(i32 3) #9, !dbg !322
  unreachable, !dbg !322

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %0, i64 0, i32 0, !dbg !326
  %8 = load %struct.pbuf*, %struct.pbuf** %7, align 8, !dbg !326, !tbaa !197
  %9 = icmp eq %struct.pbuf* %8, null, !dbg !328
  br i1 %9, label %12, label %10, !dbg !329

; <label>:10:                                     ; preds = %6
  %11 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %8) #7, !dbg !330
  br label %12, !dbg !332

; <label>:12:                                     ; preds = %6, %10
  %13 = tail call %struct.pbuf* @pbuf_alloc(i32 74, i16 zeroext 0, i32 65) #7, !dbg !333
  store %struct.pbuf* %13, %struct.pbuf** %7, align 8, !dbg !334, !tbaa !197
  %14 = icmp eq %struct.pbuf* %13, null, !dbg !335
  br i1 %14, label %15, label %17, !dbg !337

; <label>:15:                                     ; preds = %12
  %16 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %0, i64 0, i32 1, !dbg !338
  store %struct.pbuf* null, %struct.pbuf** %16, align 8, !dbg !340, !tbaa !261
  br label %24, !dbg !341

; <label>:17:                                     ; preds = %12
  %18 = ptrtoint %struct.pbuf* %13 to i64, !dbg !337
  %19 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %13, i64 0, i32 1, !dbg !342
  store i8* %1, i8** %19, align 8, !dbg !343, !tbaa !344
  %20 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %13, i64 0, i32 2, !dbg !346
  store i16 %2, i16* %20, align 8, !dbg !347, !tbaa !348
  %21 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %13, i64 0, i32 3, !dbg !349
  store i16 %2, i16* %21, align 2, !dbg !350, !tbaa !249
  %22 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %0, i64 0, i32 1, !dbg !351
  %23 = bitcast %struct.pbuf** %22 to i64*, !dbg !352
  store i64 %18, i64* %23, align 8, !dbg !352, !tbaa !261
  br label %24, !dbg !353

; <label>:24:                                     ; preds = %17, %15
  %25 = phi i8 [ -1, %15 ], [ 0, %17 ], !dbg !354
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !355
  ret i8 %25, !dbg !355
}

; Function Attrs: noredzone nounwind
define dso_local void @netbuf_chain(%struct.netbuf*, %struct.netbuf*) local_unnamed_addr #0 !dbg !356 {
  %3 = icmp eq %struct.netbuf* %0, null, !dbg !364
  br i1 %3, label %4, label %5, !dbg !367

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0)) #8, !dbg !368
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !371
  tail call void @ukplat_terminate(i32 3) #9, !dbg !371
  unreachable, !dbg !371

; <label>:5:                                      ; preds = %2
  %6 = icmp eq %struct.netbuf* %1, null, !dbg !375
  br i1 %6, label %7, label %8, !dbg !378

; <label>:7:                                      ; preds = %5
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0)) #8, !dbg !379
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !382
  tail call void @ukplat_terminate(i32 3) #9, !dbg !382
  unreachable, !dbg !382

; <label>:8:                                      ; preds = %5
  %9 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %0, i64 0, i32 0, !dbg !386
  %10 = load %struct.pbuf*, %struct.pbuf** %9, align 8, !dbg !386, !tbaa !197
  %11 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %1, i64 0, i32 0, !dbg !387
  %12 = load %struct.pbuf*, %struct.pbuf** %11, align 8, !dbg !387, !tbaa !197
  tail call void @pbuf_cat(%struct.pbuf* %10, %struct.pbuf* %12) #7, !dbg !388
  %13 = bitcast %struct.netbuf* %0 to i64*, !dbg !389
  %14 = load i64, i64* %13, align 8, !dbg !389, !tbaa !197
  %15 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %0, i64 0, i32 1, !dbg !390
  %16 = bitcast %struct.pbuf** %15 to i64*, !dbg !391
  store i64 %14, i64* %16, align 8, !dbg !391, !tbaa !261
  %17 = bitcast %struct.netbuf* %1 to i8*, !dbg !392
  tail call void @memp_free(i32 6, i8* %17) #7, !dbg !393
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !394
  ret void, !dbg !394
}

; Function Attrs: noredzone
declare dso_local void @pbuf_cat(%struct.pbuf*, %struct.pbuf*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local signext i8 @netbuf_data(%struct.netbuf* readonly, i8**, i16*) local_unnamed_addr #0 !dbg !395 {
  %4 = icmp eq %struct.netbuf* %0, null, !dbg !407
  br i1 %4, label %5, label %6, !dbg !410

; <label>:5:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0)) #8, !dbg !411
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !414
  tail call void @ukplat_terminate(i32 3) #9, !dbg !414
  unreachable, !dbg !414

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i8** %1, null, !dbg !418
  br i1 %7, label %8, label %9, !dbg !421

; <label>:8:                                      ; preds = %6
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0)) #8, !dbg !422
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !425
  tail call void @ukplat_terminate(i32 3) #9, !dbg !425
  unreachable, !dbg !425

; <label>:9:                                      ; preds = %6
  %10 = icmp eq i16* %2, null, !dbg !429
  br i1 %10, label %11, label %12, !dbg !432

; <label>:11:                                     ; preds = %9
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0)) #8, !dbg !433
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !436
  tail call void @ukplat_terminate(i32 3) #9, !dbg !436
  unreachable, !dbg !436

; <label>:12:                                     ; preds = %9
  %13 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %0, i64 0, i32 1, !dbg !440
  %14 = load %struct.pbuf*, %struct.pbuf** %13, align 8, !dbg !440, !tbaa !261
  %15 = icmp eq %struct.pbuf* %14, null, !dbg !442
  br i1 %15, label %24, label %16, !dbg !443

; <label>:16:                                     ; preds = %12
  %17 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %14, i64 0, i32 1, !dbg !444
  %18 = bitcast i8** %17 to i64*, !dbg !444
  %19 = load i64, i64* %18, align 8, !dbg !444, !tbaa !263
  %20 = bitcast i8** %1 to i64*, !dbg !445
  store i64 %19, i64* %20, align 8, !dbg !445, !tbaa !209
  %21 = load %struct.pbuf*, %struct.pbuf** %13, align 8, !dbg !446, !tbaa !261
  %22 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %21, i64 0, i32 3, !dbg !447
  %23 = load i16, i16* %22, align 2, !dbg !447, !tbaa !249
  store i16 %23, i16* %2, align 2, !dbg !448, !tbaa !449
  br label %24, !dbg !450

; <label>:24:                                     ; preds = %12, %16
  %25 = phi i8 [ 0, %16 ], [ -2, %12 ], !dbg !451
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !452
  ret i8 %25, !dbg !452
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @netbuf_next(%struct.netbuf*) local_unnamed_addr #0 !dbg !453 {
  %2 = icmp eq %struct.netbuf* %0, null, !dbg !459
  br i1 %2, label %3, label %4, !dbg !462

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0)) #8, !dbg !463
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !466
  tail call void @ukplat_terminate(i32 3) #9, !dbg !466
  unreachable, !dbg !466

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %0, i64 0, i32 1, !dbg !470
  %6 = load %struct.pbuf*, %struct.pbuf** %5, align 8, !dbg !470, !tbaa !261
  %7 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %6, i64 0, i32 0, !dbg !472
  %8 = load %struct.pbuf*, %struct.pbuf** %7, align 8, !dbg !472, !tbaa !473
  %9 = icmp eq %struct.pbuf* %8, null, !dbg !474
  br i1 %9, label %15, label %10, !dbg !475

; <label>:10:                                     ; preds = %4
  store %struct.pbuf* %8, %struct.pbuf** %5, align 8, !dbg !476, !tbaa !261
  %11 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %8, i64 0, i32 0, !dbg !477
  %12 = load %struct.pbuf*, %struct.pbuf** %11, align 8, !dbg !477, !tbaa !473
  %13 = icmp eq %struct.pbuf* %12, null, !dbg !479
  %14 = zext i1 %13 to i8, !dbg !480
  br label %15, !dbg !480

; <label>:15:                                     ; preds = %10, %4
  %16 = phi i8 [ -1, %4 ], [ %14, %10 ], !dbg !482
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !483
  ret i8 %16, !dbg !483
}

; Function Attrs: noredzone nounwind
define dso_local void @netbuf_first(%struct.netbuf*) local_unnamed_addr #0 !dbg !484 {
  %2 = icmp eq %struct.netbuf* %0, null, !dbg !488
  br i1 %2, label %3, label %4, !dbg !491

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0)) #8, !dbg !492
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !495
  tail call void @ukplat_terminate(i32 3) #9, !dbg !495
  unreachable, !dbg !495

; <label>:4:                                      ; preds = %1
  %5 = bitcast %struct.netbuf* %0 to i64*, !dbg !499
  %6 = load i64, i64* %5, align 8, !dbg !499, !tbaa !197
  %7 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %0, i64 0, i32 1, !dbg !500
  %8 = bitcast %struct.pbuf** %7 to i64*, !dbg !501
  store i64 %6, i64* %8, align 8, !dbg !501, !tbaa !261
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !502
  ret void, !dbg !502
}

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
attributes #7 = { nobuiltin noredzone nounwind }
attributes #8 = { nobuiltin noredzone }
attributes #9 = { nobuiltin noredzone noreturn nounwind }

!llvm.module.flags = !{!166, !167, !168}
!llvm.ident = !{!169}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__str", scope: !2, file: !3, line: 198, type: !163, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "uk_pr_crit", scope: !3, file: !3, line: 194, type: !4, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !148)
!3 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukdebug/include/uk/print.h", directory: "/root/.unikraft/apps/redis/build")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6, null}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !76, globals: !142)
!10 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/api/netbuf.c", directory: "/root/.unikraft/apps/redis/build")
!11 = !{!12, !34, !41, !49, !55}
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !13, line: 52, baseType: !14, size: 32, elements: !15)
!13 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/memp.h", directory: "/root/.unikraft/apps/redis/build")
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
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
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ukplat_gstate", file: !35, line: 68, baseType: !14, size: 32, elements: !36)
!35 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/bootstrap.h", directory: "/root/.unikraft/apps/redis/build")
!36 = !{!37, !38, !39, !40}
!37 = !DIEnumerator(name: "UKPLAT_HALT", value: 0, isUnsigned: true)
!38 = !DIEnumerator(name: "UKPLAT_RESTART", value: 1, isUnsigned: true)
!39 = !DIEnumerator(name: "UKPLAT_SUSPEND", value: 2, isUnsigned: true)
!40 = !DIEnumerator(name: "UKPLAT_CRASH", value: 3, isUnsigned: true)
!41 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !42, line: 89, baseType: !14, size: 32, elements: !43)
!42 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/pbuf.h", directory: "/root/.unikraft/apps/redis/build")
!43 = !{!44, !45, !46, !47, !48}
!44 = !DIEnumerator(name: "PBUF_TRANSPORT", value: 74, isUnsigned: true)
!45 = !DIEnumerator(name: "PBUF_IP", value: 54, isUnsigned: true)
!46 = !DIEnumerator(name: "PBUF_LINK", value: 14, isUnsigned: true)
!47 = !DIEnumerator(name: "PBUF_RAW_TX", value: 0, isUnsigned: true)
!48 = !DIEnumerator(name: "PBUF_RAW", value: 0, isUnsigned: true)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !42, line: 145, baseType: !14, size: 32, elements: !50)
!50 = !{!51, !52, !53, !54}
!51 = !DIEnumerator(name: "PBUF_RAM", value: 640, isUnsigned: true)
!52 = !DIEnumerator(name: "PBUF_ROM", value: 1, isUnsigned: true)
!53 = !DIEnumerator(name: "PBUF_REF", value: 65, isUnsigned: true)
!54 = !DIEnumerator(name: "PBUF_POOL", value: 386, isUnsigned: true)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !56, line: 53, baseType: !57, size: 32, elements: !58)
!56 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/err.h", directory: "/root/.unikraft/apps/redis/build")
!57 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!58 = !{!59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75}
!59 = !DIEnumerator(name: "ERR_OK", value: 0)
!60 = !DIEnumerator(name: "ERR_MEM", value: -1)
!61 = !DIEnumerator(name: "ERR_BUF", value: -2)
!62 = !DIEnumerator(name: "ERR_TIMEOUT", value: -3)
!63 = !DIEnumerator(name: "ERR_RTE", value: -4)
!64 = !DIEnumerator(name: "ERR_INPROGRESS", value: -5)
!65 = !DIEnumerator(name: "ERR_VAL", value: -6)
!66 = !DIEnumerator(name: "ERR_WOULDBLOCK", value: -7)
!67 = !DIEnumerator(name: "ERR_USE", value: -8)
!68 = !DIEnumerator(name: "ERR_ALREADY", value: -9)
!69 = !DIEnumerator(name: "ERR_ISCONN", value: -10)
!70 = !DIEnumerator(name: "ERR_CONN", value: -11)
!71 = !DIEnumerator(name: "ERR_IF", value: -12)
!72 = !DIEnumerator(name: "ERR_ABRT", value: -13)
!73 = !DIEnumerator(name: "ERR_RST", value: -14)
!74 = !DIEnumerator(name: "ERR_CLSD", value: -15)
!75 = !DIEnumerator(name: "ERR_ARG", value: -16)
!76 = !{!77, !87, !135}
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netbuf", file: !79, line: 60, size: 384, elements: !80)
!79 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/netbuf.h", directory: "/root/.unikraft/apps/redis/build")
!80 = !{!81, !105, !106, !134}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !78, file: !79, line: 61, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pbuf", file: !42, line: 186, size: 192, elements: !84)
!84 = !{!85, !86, !88, !96, !97, !102, !103, !104}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !83, file: !42, line: 188, baseType: !82, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !83, file: !42, line: 191, baseType: !87, size: 64, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "tot_len", scope: !83, file: !42, line: 200, baseType: !89, size: 16, offset: 128)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16_t", file: !90, line: 127, baseType: !91)
!90 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/arch.h", directory: "/root/.unikraft/apps/redis/build")
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !92, line: 36, baseType: !93)
!92 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !94, line: 57, baseType: !95)
!94 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!95 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !83, file: !42, line: 203, baseType: !89, size: 16, offset: 144)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "type_internal", scope: !83, file: !42, line: 208, baseType: !98, size: 8, offset: 160)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8_t", file: !90, line: 125, baseType: !99)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !92, line: 24, baseType: !100)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !94, line: 43, baseType: !101)
!101 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !83, file: !42, line: 211, baseType: !98, size: 8, offset: 168)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !83, file: !42, line: 218, baseType: !98, size: 8, offset: 176)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "if_idx", scope: !83, file: !42, line: 221, baseType: !98, size: 8, offset: 184)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !78, file: !79, line: 61, baseType: !82, size: 64, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !78, file: !79, line: 62, baseType: !107, size: 192, offset: 128)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_addr_t", file: !108, line: 76, baseType: !109)
!108 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip_addr.h", directory: "/root/.unikraft/apps/redis/build")
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_addr", file: !108, line: 69, size: 192, elements: !110)
!110 = !{!111, !133}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "u_addr", scope: !109, file: !108, line: 73, baseType: !112, size: 160)
!112 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !109, file: !108, line: 70, size: 160, elements: !113)
!113 = !{!114, !127}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "ip6", scope: !112, file: !108, line: 71, baseType: !115, size: 160)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip6_addr_t", file: !116, line: 67, baseType: !117)
!116 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip6_addr.h", directory: "/root/.unikraft/apps/redis/build")
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip6_addr", file: !116, line: 59, size: 160, elements: !118)
!118 = !{!119, !126}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !117, file: !116, line: 60, baseType: !120, size: 128)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 128, elements: !124)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32_t", file: !90, line: 129, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !92, line: 48, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !94, line: 79, baseType: !14)
!124 = !{!125}
!125 = !DISubrange(count: 4)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "zone", scope: !117, file: !116, line: 62, baseType: !98, size: 8, offset: 128)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "ip4", scope: !112, file: !108, line: 72, baseType: !128, size: 32)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip4_addr_t", file: !129, line: 57, baseType: !130)
!129 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip4_addr.h", directory: "/root/.unikraft/apps/redis/build")
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip4_addr", file: !129, line: 51, size: 32, elements: !131)
!131 = !{!132}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !130, file: !129, line: 52, baseType: !121, size: 32)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !109, file: !108, line: 75, baseType: !98, size: 8, offset: 160)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !78, file: !79, line: 63, baseType: !89, size: 16, offset: 320)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pbuf_rom", file: !42, line: 229, size: 128, elements: !137)
!137 = !{!138, !139}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !136, file: !42, line: 231, baseType: !82, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !136, file: !42, line: 234, baseType: !140, size: 64, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!142 = !{!0, !143}
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(name: "__str", scope: !2, file: !3, line: 198, type: !145, isLocal: true, isDefinition: true)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 72, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 9)
!148 = !{!149, !150}
!149 = !DILocalVariable(name: "fmt", arg: 1, scope: !2, file: !3, line: 194, type: !6)
!150 = !DILocalVariable(name: "argp", scope: !2, file: !3, line: 196, type: !151)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !152, line: 32, baseType: !153)
!152 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !10, line: 196, baseType: !154)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 192, elements: !161)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !10, line: 196, size: 192, elements: !156)
!156 = !{!157, !158, !159, !160}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !155, file: !10, line: 196, baseType: !14, size: 32)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !155, file: !10, line: 196, baseType: !14, size: 32, offset: 32)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !155, file: !10, line: 196, baseType: !87, size: 64, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !155, file: !10, line: 196, baseType: !87, size: 64, offset: 128)
!161 = !{!162}
!162 = !DISubrange(count: 1)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 64, elements: !164)
!164 = !{!165}
!165 = !DISubrange(count: 8)
!166 = !{i32 2, !"Dwarf Version", i32 4}
!167 = !{i32 2, !"Debug Info Version", i32 3}
!168 = !{i32 1, !"wchar_size", i32 4}
!169 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!170 = distinct !DISubprogram(name: "netbuf_new", scope: !10, file: !10, line: 63, type: !171, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !173)
!171 = !DISubroutineType(types: !172)
!172 = !{!77}
!173 = !{!174}
!174 = !DILocalVariable(name: "buf", scope: !170, file: !10, line: 65, type: !77)
!175 = !DILocation(line: 67, column: 26, scope: !170)
!176 = !DILocation(line: 67, column: 9, scope: !170)
!177 = !DILocation(line: 65, column: 18, scope: !170)
!178 = !DILocation(line: 68, column: 11, scope: !179)
!179 = distinct !DILexicalBlock(scope: !170, file: !10, line: 68, column: 7)
!180 = !DILocation(line: 68, column: 7, scope: !170)
!181 = !DILocation(line: 69, column: 5, scope: !182)
!182 = distinct !DILexicalBlock(scope: !179, file: !10, line: 68, column: 20)
!183 = !DILocation(line: 70, column: 3, scope: !182)
!184 = !DILocation(line: 71, column: 3, scope: !170)
!185 = distinct !DISubprogram(name: "netbuf_delete", scope: !10, file: !10, line: 81, type: !186, isLocal: false, isDefinition: true, scopeLine: 82, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !188)
!186 = !DISubroutineType(types: !187)
!187 = !{null, !77}
!188 = !{!189}
!189 = !DILocalVariable(name: "buf", arg: 1, scope: !185, file: !10, line: 81, type: !77)
!190 = !DILocation(line: 81, column: 30, scope: !185)
!191 = !DILocation(line: 83, column: 11, scope: !192)
!192 = distinct !DILexicalBlock(scope: !185, file: !10, line: 83, column: 7)
!193 = !DILocation(line: 83, column: 7, scope: !185)
!194 = !DILocation(line: 84, column: 14, scope: !195)
!195 = distinct !DILexicalBlock(scope: !196, file: !10, line: 84, column: 9)
!196 = distinct !DILexicalBlock(scope: !192, file: !10, line: 83, column: 20)
!197 = !{!198, !199, i64 0}
!198 = !{!"netbuf", !199, i64 0, !199, i64 8, !202, i64 16, !203, i64 40}
!199 = !{!"any pointer", !200, i64 0}
!200 = !{!"omnipotent char", !201, i64 0}
!201 = !{!"Simple C/C++ TBAA"}
!202 = !{!"ip_addr", !200, i64 0, !200, i64 20}
!203 = !{!"short", !200, i64 0}
!204 = !DILocation(line: 84, column: 16, scope: !195)
!205 = !DILocation(line: 84, column: 9, scope: !196)
!206 = !DILocation(line: 85, column: 7, scope: !207)
!207 = distinct !DILexicalBlock(scope: !195, file: !10, line: 84, column: 25)
!208 = !DILocation(line: 86, column: 14, scope: !207)
!209 = !{!199, !199, i64 0}
!210 = !DILocation(line: 87, column: 5, scope: !207)
!211 = !DILocation(line: 88, column: 28, scope: !196)
!212 = !DILocation(line: 88, column: 5, scope: !196)
!213 = !DILocation(line: 89, column: 3, scope: !196)
!214 = !DILocation(line: 90, column: 1, scope: !185)
!215 = distinct !DISubprogram(name: "netbuf_alloc", scope: !10, file: !10, line: 102, type: !216, isLocal: false, isDefinition: true, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !218)
!216 = !DISubroutineType(types: !217)
!217 = !{!87, !77, !89}
!218 = !{!219, !220}
!219 = !DILocalVariable(name: "buf", arg: 1, scope: !215, file: !10, line: 102, type: !77)
!220 = !DILocalVariable(name: "size", arg: 2, scope: !215, file: !10, line: 102, type: !89)
!221 = !DILocation(line: 102, column: 29, scope: !215)
!222 = !DILocation(line: 102, column: 40, scope: !215)
!223 = !DILocation(line: 104, column: 3, scope: !224)
!224 = distinct !DILexicalBlock(scope: !225, file: !10, line: 104, column: 3)
!225 = distinct !DILexicalBlock(scope: !215, file: !10, line: 104, column: 3)
!226 = !DILocation(line: 104, column: 3, scope: !225)
!227 = !DILocation(line: 104, column: 3, scope: !228)
!228 = distinct !DILexicalBlock(scope: !229, file: !10, line: 104, column: 3)
!229 = distinct !DILexicalBlock(scope: !224, file: !10, line: 104, column: 3)
!230 = !DILocation(line: 104, column: 3, scope: !231)
!231 = distinct !DILexicalBlock(scope: !232, file: !10, line: 104, column: 3)
!232 = distinct !DILexicalBlock(scope: !233, file: !10, line: 104, column: 3)
!233 = distinct !DILexicalBlock(scope: !228, file: !10, line: 104, column: 3)
!234 = !DILocation(line: 107, column: 12, scope: !235)
!235 = distinct !DILexicalBlock(scope: !215, file: !10, line: 107, column: 7)
!236 = !DILocation(line: 107, column: 14, scope: !235)
!237 = !DILocation(line: 107, column: 7, scope: !215)
!238 = !DILocation(line: 108, column: 5, scope: !239)
!239 = distinct !DILexicalBlock(scope: !235, file: !10, line: 107, column: 23)
!240 = !DILocation(line: 109, column: 3, scope: !239)
!241 = !DILocation(line: 110, column: 12, scope: !215)
!242 = !DILocation(line: 110, column: 10, scope: !215)
!243 = !DILocation(line: 111, column: 14, scope: !244)
!244 = distinct !DILexicalBlock(scope: !215, file: !10, line: 111, column: 7)
!245 = !DILocation(line: 111, column: 7, scope: !215)
!246 = !DILocation(line: 114, column: 3, scope: !247)
!247 = distinct !DILexicalBlock(scope: !248, file: !10, line: 114, column: 3)
!248 = distinct !DILexicalBlock(scope: !215, file: !10, line: 114, column: 3)
!249 = !{!250, !203, i64 18}
!250 = !{!"pbuf", !199, i64 0, !199, i64 8, !203, i64 16, !203, i64 18, !200, i64 20, !200, i64 21, !200, i64 22, !200, i64 23}
!251 = !DILocation(line: 114, column: 3, scope: !248)
!252 = !DILocation(line: 114, column: 3, scope: !253)
!253 = distinct !DILexicalBlock(scope: !254, file: !10, line: 114, column: 3)
!254 = distinct !DILexicalBlock(scope: !247, file: !10, line: 114, column: 3)
!255 = !DILocation(line: 114, column: 3, scope: !256)
!256 = distinct !DILexicalBlock(scope: !257, file: !10, line: 114, column: 3)
!257 = distinct !DILexicalBlock(scope: !258, file: !10, line: 114, column: 3)
!258 = distinct !DILexicalBlock(scope: !253, file: !10, line: 114, column: 3)
!259 = !DILocation(line: 116, column: 8, scope: !215)
!260 = !DILocation(line: 116, column: 12, scope: !215)
!261 = !{!198, !199, i64 8}
!262 = !DILocation(line: 117, column: 18, scope: !215)
!263 = !{!250, !199, i64 8}
!264 = !DILocation(line: 117, column: 3, scope: !215)
!265 = !DILocation(line: 0, scope: !215)
!266 = !DILocation(line: 118, column: 1, scope: !215)
!267 = !DILocation(line: 194, column: 43, scope: !2)
!268 = !DILocation(line: 196, column: 2, scope: !2)
!269 = !DILocation(line: 196, column: 10, scope: !2)
!270 = !DILocation(line: 197, column: 2, scope: !2)
!271 = !DILocation(line: 198, column: 2, scope: !272)
!272 = distinct !DILexicalBlock(scope: !273, file: !3, line: 198, column: 2)
!273 = distinct !DILexicalBlock(scope: !2, file: !3, line: 198, column: 2)
!274 = !DILocation(line: 199, column: 2, scope: !2)
!275 = !DILocation(line: 200, column: 1, scope: !2)
!276 = distinct !DISubprogram(name: "netbuf_free", scope: !10, file: !10, line: 127, type: !186, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !277)
!277 = !{!278}
!278 = !DILocalVariable(name: "buf", arg: 1, scope: !276, file: !10, line: 127, type: !77)
!279 = !DILocation(line: 127, column: 28, scope: !276)
!280 = !DILocation(line: 129, column: 3, scope: !281)
!281 = distinct !DILexicalBlock(scope: !282, file: !10, line: 129, column: 3)
!282 = distinct !DILexicalBlock(scope: !276, file: !10, line: 129, column: 3)
!283 = !DILocation(line: 129, column: 3, scope: !282)
!284 = !DILocation(line: 129, column: 3, scope: !285)
!285 = distinct !DILexicalBlock(scope: !286, file: !10, line: 129, column: 3)
!286 = distinct !DILexicalBlock(scope: !281, file: !10, line: 129, column: 3)
!287 = !DILocation(line: 129, column: 3, scope: !288)
!288 = distinct !DILexicalBlock(scope: !289, file: !10, line: 129, column: 3)
!289 = distinct !DILexicalBlock(scope: !290, file: !10, line: 129, column: 3)
!290 = distinct !DILexicalBlock(scope: !285, file: !10, line: 129, column: 3)
!291 = !DILocation(line: 130, column: 12, scope: !292)
!292 = distinct !DILexicalBlock(scope: !276, file: !10, line: 130, column: 7)
!293 = !DILocation(line: 130, column: 14, scope: !292)
!294 = !DILocation(line: 130, column: 7, scope: !276)
!295 = !DILocation(line: 131, column: 5, scope: !296)
!296 = distinct !DILexicalBlock(scope: !292, file: !10, line: 130, column: 23)
!297 = !DILocation(line: 132, column: 3, scope: !296)
!298 = !DILocation(line: 133, column: 10, scope: !276)
!299 = !DILocation(line: 138, column: 1, scope: !276)
!300 = distinct !DISubprogram(name: "netbuf_ref", scope: !10, file: !10, line: 151, type: !301, isLocal: false, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !308)
!301 = !DISubroutineType(types: !302)
!302 = !{!303, !77, !140, !89}
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "err_t", file: !56, line: 96, baseType: !304)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8_t", file: !90, line: 126, baseType: !305)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !92, line: 20, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !94, line: 41, baseType: !307)
!307 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!308 = !{!309, !310, !311}
!309 = !DILocalVariable(name: "buf", arg: 1, scope: !300, file: !10, line: 151, type: !77)
!310 = !DILocalVariable(name: "dataptr", arg: 2, scope: !300, file: !10, line: 151, type: !140)
!311 = !DILocalVariable(name: "size", arg: 3, scope: !300, file: !10, line: 151, type: !89)
!312 = !DILocation(line: 151, column: 27, scope: !300)
!313 = !DILocation(line: 151, column: 44, scope: !300)
!314 = !DILocation(line: 151, column: 59, scope: !300)
!315 = !DILocation(line: 153, column: 3, scope: !316)
!316 = distinct !DILexicalBlock(scope: !317, file: !10, line: 153, column: 3)
!317 = distinct !DILexicalBlock(scope: !300, file: !10, line: 153, column: 3)
!318 = !DILocation(line: 153, column: 3, scope: !317)
!319 = !DILocation(line: 153, column: 3, scope: !320)
!320 = distinct !DILexicalBlock(scope: !321, file: !10, line: 153, column: 3)
!321 = distinct !DILexicalBlock(scope: !316, file: !10, line: 153, column: 3)
!322 = !DILocation(line: 153, column: 3, scope: !323)
!323 = distinct !DILexicalBlock(scope: !324, file: !10, line: 153, column: 3)
!324 = distinct !DILexicalBlock(scope: !325, file: !10, line: 153, column: 3)
!325 = distinct !DILexicalBlock(scope: !320, file: !10, line: 153, column: 3)
!326 = !DILocation(line: 154, column: 12, scope: !327)
!327 = distinct !DILexicalBlock(scope: !300, file: !10, line: 154, column: 7)
!328 = !DILocation(line: 154, column: 14, scope: !327)
!329 = !DILocation(line: 154, column: 7, scope: !300)
!330 = !DILocation(line: 155, column: 5, scope: !331)
!331 = distinct !DILexicalBlock(scope: !327, file: !10, line: 154, column: 23)
!332 = !DILocation(line: 156, column: 3, scope: !331)
!333 = !DILocation(line: 157, column: 12, scope: !300)
!334 = !DILocation(line: 157, column: 10, scope: !300)
!335 = !DILocation(line: 158, column: 14, scope: !336)
!336 = distinct !DILexicalBlock(scope: !300, file: !10, line: 158, column: 7)
!337 = !DILocation(line: 158, column: 7, scope: !300)
!338 = !DILocation(line: 159, column: 10, scope: !339)
!339 = distinct !DILexicalBlock(scope: !336, file: !10, line: 158, column: 23)
!340 = !DILocation(line: 159, column: 14, scope: !339)
!341 = !DILocation(line: 160, column: 5, scope: !339)
!342 = !DILocation(line: 162, column: 32, scope: !300)
!343 = !DILocation(line: 162, column: 40, scope: !300)
!344 = !{!345, !199, i64 8}
!345 = !{!"pbuf_rom", !199, i64 0, !199, i64 8}
!346 = !DILocation(line: 163, column: 25, scope: !300)
!347 = !DILocation(line: 163, column: 33, scope: !300)
!348 = !{!250, !203, i64 16}
!349 = !DILocation(line: 163, column: 11, scope: !300)
!350 = !DILocation(line: 163, column: 15, scope: !300)
!351 = !DILocation(line: 164, column: 8, scope: !300)
!352 = !DILocation(line: 164, column: 12, scope: !300)
!353 = !DILocation(line: 165, column: 3, scope: !300)
!354 = !DILocation(line: 0, scope: !300)
!355 = !DILocation(line: 166, column: 1, scope: !300)
!356 = distinct !DISubprogram(name: "netbuf_chain", scope: !10, file: !10, line: 176, type: !357, isLocal: false, isDefinition: true, scopeLine: 177, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !359)
!357 = !DISubroutineType(types: !358)
!358 = !{null, !77, !77}
!359 = !{!360, !361}
!360 = !DILocalVariable(name: "head", arg: 1, scope: !356, file: !10, line: 176, type: !77)
!361 = !DILocalVariable(name: "tail", arg: 2, scope: !356, file: !10, line: 176, type: !77)
!362 = !DILocation(line: 176, column: 29, scope: !356)
!363 = !DILocation(line: 176, column: 50, scope: !356)
!364 = !DILocation(line: 178, column: 3, scope: !365)
!365 = distinct !DILexicalBlock(scope: !366, file: !10, line: 178, column: 3)
!366 = distinct !DILexicalBlock(scope: !356, file: !10, line: 178, column: 3)
!367 = !DILocation(line: 178, column: 3, scope: !366)
!368 = !DILocation(line: 178, column: 3, scope: !369)
!369 = distinct !DILexicalBlock(scope: !370, file: !10, line: 178, column: 3)
!370 = distinct !DILexicalBlock(scope: !365, file: !10, line: 178, column: 3)
!371 = !DILocation(line: 178, column: 3, scope: !372)
!372 = distinct !DILexicalBlock(scope: !373, file: !10, line: 178, column: 3)
!373 = distinct !DILexicalBlock(scope: !374, file: !10, line: 178, column: 3)
!374 = distinct !DILexicalBlock(scope: !369, file: !10, line: 178, column: 3)
!375 = !DILocation(line: 179, column: 3, scope: !376)
!376 = distinct !DILexicalBlock(scope: !377, file: !10, line: 179, column: 3)
!377 = distinct !DILexicalBlock(scope: !356, file: !10, line: 179, column: 3)
!378 = !DILocation(line: 179, column: 3, scope: !377)
!379 = !DILocation(line: 179, column: 3, scope: !380)
!380 = distinct !DILexicalBlock(scope: !381, file: !10, line: 179, column: 3)
!381 = distinct !DILexicalBlock(scope: !376, file: !10, line: 179, column: 3)
!382 = !DILocation(line: 179, column: 3, scope: !383)
!383 = distinct !DILexicalBlock(scope: !384, file: !10, line: 179, column: 3)
!384 = distinct !DILexicalBlock(scope: !385, file: !10, line: 179, column: 3)
!385 = distinct !DILexicalBlock(scope: !380, file: !10, line: 179, column: 3)
!386 = !DILocation(line: 180, column: 18, scope: !356)
!387 = !DILocation(line: 180, column: 27, scope: !356)
!388 = !DILocation(line: 180, column: 3, scope: !356)
!389 = !DILocation(line: 181, column: 21, scope: !356)
!390 = !DILocation(line: 181, column: 9, scope: !356)
!391 = !DILocation(line: 181, column: 13, scope: !356)
!392 = !DILocation(line: 182, column: 26, scope: !356)
!393 = !DILocation(line: 182, column: 3, scope: !356)
!394 = !DILocation(line: 183, column: 1, scope: !356)
!395 = distinct !DISubprogram(name: "netbuf_data", scope: !10, file: !10, line: 196, type: !396, isLocal: false, isDefinition: true, scopeLine: 197, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !400)
!396 = !DISubroutineType(types: !397)
!397 = !{!303, !77, !398, !399}
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!400 = !{!401, !402, !403}
!401 = !DILocalVariable(name: "buf", arg: 1, scope: !395, file: !10, line: 196, type: !77)
!402 = !DILocalVariable(name: "dataptr", arg: 2, scope: !395, file: !10, line: 196, type: !398)
!403 = !DILocalVariable(name: "len", arg: 3, scope: !395, file: !10, line: 196, type: !399)
!404 = !DILocation(line: 196, column: 28, scope: !395)
!405 = !DILocation(line: 196, column: 40, scope: !395)
!406 = !DILocation(line: 196, column: 56, scope: !395)
!407 = !DILocation(line: 198, column: 3, scope: !408)
!408 = distinct !DILexicalBlock(scope: !409, file: !10, line: 198, column: 3)
!409 = distinct !DILexicalBlock(scope: !395, file: !10, line: 198, column: 3)
!410 = !DILocation(line: 198, column: 3, scope: !409)
!411 = !DILocation(line: 198, column: 3, scope: !412)
!412 = distinct !DILexicalBlock(scope: !413, file: !10, line: 198, column: 3)
!413 = distinct !DILexicalBlock(scope: !408, file: !10, line: 198, column: 3)
!414 = !DILocation(line: 198, column: 3, scope: !415)
!415 = distinct !DILexicalBlock(scope: !416, file: !10, line: 198, column: 3)
!416 = distinct !DILexicalBlock(scope: !417, file: !10, line: 198, column: 3)
!417 = distinct !DILexicalBlock(scope: !412, file: !10, line: 198, column: 3)
!418 = !DILocation(line: 199, column: 3, scope: !419)
!419 = distinct !DILexicalBlock(scope: !420, file: !10, line: 199, column: 3)
!420 = distinct !DILexicalBlock(scope: !395, file: !10, line: 199, column: 3)
!421 = !DILocation(line: 199, column: 3, scope: !420)
!422 = !DILocation(line: 199, column: 3, scope: !423)
!423 = distinct !DILexicalBlock(scope: !424, file: !10, line: 199, column: 3)
!424 = distinct !DILexicalBlock(scope: !419, file: !10, line: 199, column: 3)
!425 = !DILocation(line: 199, column: 3, scope: !426)
!426 = distinct !DILexicalBlock(scope: !427, file: !10, line: 199, column: 3)
!427 = distinct !DILexicalBlock(scope: !428, file: !10, line: 199, column: 3)
!428 = distinct !DILexicalBlock(scope: !423, file: !10, line: 199, column: 3)
!429 = !DILocation(line: 200, column: 3, scope: !430)
!430 = distinct !DILexicalBlock(scope: !431, file: !10, line: 200, column: 3)
!431 = distinct !DILexicalBlock(scope: !395, file: !10, line: 200, column: 3)
!432 = !DILocation(line: 200, column: 3, scope: !431)
!433 = !DILocation(line: 200, column: 3, scope: !434)
!434 = distinct !DILexicalBlock(scope: !435, file: !10, line: 200, column: 3)
!435 = distinct !DILexicalBlock(scope: !430, file: !10, line: 200, column: 3)
!436 = !DILocation(line: 200, column: 3, scope: !437)
!437 = distinct !DILexicalBlock(scope: !438, file: !10, line: 200, column: 3)
!438 = distinct !DILexicalBlock(scope: !439, file: !10, line: 200, column: 3)
!439 = distinct !DILexicalBlock(scope: !434, file: !10, line: 200, column: 3)
!440 = !DILocation(line: 202, column: 12, scope: !441)
!441 = distinct !DILexicalBlock(scope: !395, file: !10, line: 202, column: 7)
!442 = !DILocation(line: 202, column: 16, scope: !441)
!443 = !DILocation(line: 202, column: 7, scope: !395)
!444 = !DILocation(line: 205, column: 24, scope: !395)
!445 = !DILocation(line: 205, column: 12, scope: !395)
!446 = !DILocation(line: 206, column: 15, scope: !395)
!447 = !DILocation(line: 206, column: 20, scope: !395)
!448 = !DILocation(line: 206, column: 8, scope: !395)
!449 = !{!203, !203, i64 0}
!450 = !DILocation(line: 207, column: 3, scope: !395)
!451 = !DILocation(line: 0, scope: !395)
!452 = !DILocation(line: 208, column: 1, scope: !395)
!453 = distinct !DISubprogram(name: "netbuf_next", scope: !10, file: !10, line: 222, type: !454, isLocal: false, isDefinition: true, scopeLine: 223, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !456)
!454 = !DISubroutineType(types: !455)
!455 = !{!304, !77}
!456 = !{!457}
!457 = !DILocalVariable(name: "buf", arg: 1, scope: !453, file: !10, line: 222, type: !77)
!458 = !DILocation(line: 222, column: 28, scope: !453)
!459 = !DILocation(line: 224, column: 3, scope: !460)
!460 = distinct !DILexicalBlock(scope: !461, file: !10, line: 224, column: 3)
!461 = distinct !DILexicalBlock(scope: !453, file: !10, line: 224, column: 3)
!462 = !DILocation(line: 224, column: 3, scope: !461)
!463 = !DILocation(line: 224, column: 3, scope: !464)
!464 = distinct !DILexicalBlock(scope: !465, file: !10, line: 224, column: 3)
!465 = distinct !DILexicalBlock(scope: !460, file: !10, line: 224, column: 3)
!466 = !DILocation(line: 224, column: 3, scope: !467)
!467 = distinct !DILexicalBlock(scope: !468, file: !10, line: 224, column: 3)
!468 = distinct !DILexicalBlock(scope: !469, file: !10, line: 224, column: 3)
!469 = distinct !DILexicalBlock(scope: !464, file: !10, line: 224, column: 3)
!470 = !DILocation(line: 225, column: 12, scope: !471)
!471 = distinct !DILexicalBlock(scope: !453, file: !10, line: 225, column: 7)
!472 = !DILocation(line: 225, column: 17, scope: !471)
!473 = !{!250, !199, i64 0}
!474 = !DILocation(line: 225, column: 22, scope: !471)
!475 = !DILocation(line: 225, column: 7, scope: !453)
!476 = !DILocation(line: 228, column: 12, scope: !453)
!477 = !DILocation(line: 229, column: 17, scope: !478)
!478 = distinct !DILexicalBlock(scope: !453, file: !10, line: 229, column: 7)
!479 = !DILocation(line: 229, column: 22, scope: !478)
!480 = !DILocation(line: 230, column: 5, scope: !481)
!481 = distinct !DILexicalBlock(scope: !478, file: !10, line: 229, column: 31)
!482 = !DILocation(line: 0, scope: !453)
!483 = !DILocation(line: 233, column: 1, scope: !453)
!484 = distinct !DISubprogram(name: "netbuf_first", scope: !10, file: !10, line: 244, type: !186, isLocal: false, isDefinition: true, scopeLine: 245, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !485)
!485 = !{!486}
!486 = !DILocalVariable(name: "buf", arg: 1, scope: !484, file: !10, line: 244, type: !77)
!487 = !DILocation(line: 244, column: 29, scope: !484)
!488 = !DILocation(line: 246, column: 3, scope: !489)
!489 = distinct !DILexicalBlock(scope: !490, file: !10, line: 246, column: 3)
!490 = distinct !DILexicalBlock(scope: !484, file: !10, line: 246, column: 3)
!491 = !DILocation(line: 246, column: 3, scope: !490)
!492 = !DILocation(line: 246, column: 3, scope: !493)
!493 = distinct !DILexicalBlock(scope: !494, file: !10, line: 246, column: 3)
!494 = distinct !DILexicalBlock(scope: !489, file: !10, line: 246, column: 3)
!495 = !DILocation(line: 246, column: 3, scope: !496)
!496 = distinct !DILexicalBlock(scope: !497, file: !10, line: 246, column: 3)
!497 = distinct !DILexicalBlock(scope: !498, file: !10, line: 246, column: 3)
!498 = distinct !DILexicalBlock(scope: !493, file: !10, line: 246, column: 3)
!499 = !DILocation(line: 247, column: 19, scope: !484)
!500 = !DILocation(line: 247, column: 8, scope: !484)
!501 = !DILocation(line: 247, column: 12, scope: !484)
!502 = !DILocation(line: 248, column: 1, scope: !484)
