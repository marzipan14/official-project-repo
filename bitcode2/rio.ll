; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/rio.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/rio.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._rio = type { i64 (%struct._rio*, i8*, i64)*, i64 (%struct._rio*, i8*, i64)*, i64 (%struct._rio*)*, i32 (%struct._rio*)*, void (%struct._rio*, i8*, i64)*, i64, i64, i64, %union.anon }
%union.anon = type { %struct.anon.2 }
%struct.anon.2 = type { i32*, i32*, i32, i64, i8* }
%struct.anon = type { i8*, i64 }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i64, i32)*, i32 (%struct._reent*, i8*)*, %struct.__sbuf, i8*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64, %struct._reent*, i32, %struct._mbstate_t, i32 }
%struct.__sbuf = type { i8*, i32 }
%struct._reent = type { i32, %struct.__sFILE*, %struct.__sFILE*, %struct.__sFILE*, i32, [25 x i8], i32, %struct.__locale_t*, i32, void (%struct._reent*)*, %struct._Bigint*, i32, %struct._Bigint*, %struct._Bigint**, i32, i8*, %union.anon.3, %struct._atexit*, %struct._atexit, void (i32)**, %struct._glue, [3 x %struct.__sFILE] }
%struct.__locale_t = type opaque
%struct._Bigint = type { %struct._Bigint*, i32, i32, i32, i32, [1 x i32] }
%union.anon.3 = type { %struct.anon.5 }
%struct.anon.5 = type { [30 x i8*], [30 x i32] }
%struct._atexit = type { %struct._atexit*, i32, [32 x void ()*], %struct._on_exit_args }
%struct._on_exit_args = type { [32 x i8*], [32 x i8*], i32, i32 }
%struct._glue = type { %struct._glue*, i32, %struct.__sFILE* }
%struct._mbstate_t = type { i32, %union.anon.1 }
%union.anon.1 = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"r->read == rioFileIO.read\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/rio.c\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%.17g\00", align 1
@rioBufferIO = internal unnamed_addr constant { i64 (%struct._rio*, i8*, i64)*, i64 (%struct._rio*, i8*, i64)*, i64 (%struct._rio*)*, i32 (%struct._rio*)*, void (%struct._rio*, i8*, i64)*, i64, i64, i64, { %struct.anon, [24 x i8] } } { i64 (%struct._rio*, i8*, i64)* @rioBufferRead, i64 (%struct._rio*, i8*, i64)* @rioBufferWrite, i64 (%struct._rio*)* @rioBufferTell, i32 (%struct._rio*)* @rioBufferFlush, void (%struct._rio*, i8*, i64)* null, i64 0, i64 0, i64 0, { %struct.anon, [24 x i8] } { %struct.anon zeroinitializer, [24 x i8] undef } }, align 8, !dbg !0
@rioFileIO = internal unnamed_addr constant { i64 (%struct._rio*, i8*, i64)*, i64 (%struct._rio*, i8*, i64)*, i64 (%struct._rio*)*, i32 (%struct._rio*)*, void (%struct._rio*, i8*, i64)*, i64, i64, i64, { %struct.anon, [24 x i8] } } { i64 (%struct._rio*, i8*, i64)* @rioFileRead, i64 (%struct._rio*, i8*, i64)* @rioFileWrite, i64 (%struct._rio*)* @rioFileTell, i32 (%struct._rio*)* @rioFileFlush, void (%struct._rio*, i8*, i64)* null, i64 0, i64 0, i64 0, { %struct.anon, [24 x i8] } { %struct.anon zeroinitializer, [24 x i8] undef } }, align 8, !dbg !57
@rioFdsetIO = internal unnamed_addr constant { i64 (%struct._rio*, i8*, i64)*, i64 (%struct._rio*, i8*, i64)*, i64 (%struct._rio*)*, i32 (%struct._rio*)*, void (%struct._rio*, i8*, i64)*, i64, i64, i64, { %struct.anon, [24 x i8] } } { i64 (%struct._rio*, i8*, i64)* @rioFdsetRead, i64 (%struct._rio*, i8*, i64)* @rioFdsetWrite, i64 (%struct._rio*)* @rioFdsetTell, i32 (%struct._rio*)* @rioFdsetFlush, void (%struct._rio*, i8*, i64)* null, i64 0, i64 0, i64 0, { %struct.anon, [24 x i8] } { %struct.anon zeroinitializer, [24 x i8] undef } }, align 8, !dbg !336
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local void @rioInitWithBuffer(%struct._rio* nocapture, i8*) local_unnamed_addr #0 !dbg !342 {
  %3 = bitcast %struct._rio* %0 to i8*, !dbg !351
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 bitcast ({ i64 (%struct._rio*, i8*, i64)*, i64 (%struct._rio*, i8*, i64)*, i64 (%struct._rio*)*, i32 (%struct._rio*)*, void (%struct._rio*, i8*, i64)*, i64, i64, i64, { %struct.anon, [24 x i8] } }* @rioBufferIO to i8*), i64 104, i1 false), !dbg !351, !tbaa.struct !352
  %4 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, !dbg !361
  %5 = bitcast %union.anon* %4 to i8**, !dbg !362
  store i8* %1, i8** %5, align 8, !dbg !363, !tbaa !364
  %6 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, i32 0, i32 1, !dbg !365
  %7 = bitcast i32** %6 to i64*, !dbg !365
  store i64 0, i64* %7, align 8, !dbg !366, !tbaa !364
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !367
  ret void, !dbg !367
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #2

; Function Attrs: noredzone nounwind
define dso_local void @rioInitWithFile(%struct._rio* nocapture, %struct.__sFILE*) local_unnamed_addr #0 !dbg !368 {
  %3 = bitcast %struct._rio* %0 to i8*, !dbg !376
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 bitcast ({ i64 (%struct._rio*, i8*, i64)*, i64 (%struct._rio*, i8*, i64)*, i64 (%struct._rio*)*, i32 (%struct._rio*)*, void (%struct._rio*, i8*, i64)*, i64, i64, i64, { %struct.anon, [24 x i8] } }* @rioFileIO to i8*), i64 104, i1 false), !dbg !376, !tbaa.struct !352
  %4 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, !dbg !377
  %5 = bitcast %union.anon* %4 to %struct.__sFILE**, !dbg !378
  store %struct.__sFILE* %1, %struct.__sFILE** %5, align 8, !dbg !379, !tbaa !364
  %6 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, i32 0, i32 1, !dbg !380
  %7 = bitcast i32** %6 to <2 x i64>*, !dbg !381
  store <2 x i64> zeroinitializer, <2 x i64>* %7, align 8, !dbg !381, !tbaa !364
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !382
  ret void, !dbg !382
}

; Function Attrs: noredzone nounwind
define dso_local void @rioInitWithFdset(%struct._rio* nocapture, i32*, i32) local_unnamed_addr #0 !dbg !383 {
  %4 = bitcast %struct._rio* %0 to i8*, !dbg !394
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 bitcast ({ i64 (%struct._rio*, i8*, i64)*, i64 (%struct._rio*, i8*, i64)*, i64 (%struct._rio*)*, i32 (%struct._rio*)*, void (%struct._rio*, i8*, i64)*, i64, i64, i64, { %struct.anon, [24 x i8] } }* @rioFdsetIO to i8*), i64 104, i1 false), !dbg !394, !tbaa.struct !352
  %5 = sext i32 %2 to i64, !dbg !395
  %6 = shl nsw i64 %5, 2, !dbg !396
  %7 = tail call i8* @zmalloc(i64 %6) #5, !dbg !397
  %8 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, i32 0, !dbg !398
  %9 = bitcast %struct.anon.2* %8 to i8**, !dbg !399
  store i8* %7, i8** %9, align 8, !dbg !399, !tbaa !364
  %10 = tail call i8* @zmalloc(i64 %6) #5, !dbg !400
  %11 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, i32 0, i32 1, !dbg !401
  %12 = bitcast i32** %11 to i8**, !dbg !402
  store i8* %10, i8** %12, align 8, !dbg !402, !tbaa !364
  %13 = load i8*, i8** %9, align 8, !dbg !403, !tbaa !364
  %14 = bitcast i32* %1 to i8*, !dbg !404
  %15 = tail call i8* @memcpy(i8* %13, i8* %14, i64 %6) #5, !dbg !405
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !407
  %16 = icmp sgt i32 %2, 0, !dbg !409
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !411
  br i1 %16, label %17, label %52, !dbg !411

; <label>:17:                                     ; preds = %3
  %18 = zext i32 %2 to i64
  %19 = add nsw i64 %18, -1, !dbg !412
  %20 = and i64 %18, 3, !dbg !412
  %21 = icmp ult i64 %19, 3, !dbg !412
  br i1 %21, label %41, label %22, !dbg !412

; <label>:22:                                     ; preds = %17
  %23 = sub nsw i64 %18, %20, !dbg !412
  br label %24, !dbg !412

; <label>:24:                                     ; preds = %24, %22
  %25 = phi i64 [ 0, %22 ], [ %38, %24 ]
  %26 = phi i64 [ %23, %22 ], [ %39, %24 ]
  %27 = load i32*, i32** %11, align 8, !dbg !412, !tbaa !364
  %28 = getelementptr inbounds i32, i32* %27, i64 %25, !dbg !413
  store i32 0, i32* %28, align 4, !dbg !414, !tbaa !359
  %29 = or i64 %25, 1, !dbg !415
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !416
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !411
  %30 = load i32*, i32** %11, align 8, !dbg !412, !tbaa !364
  %31 = getelementptr inbounds i32, i32* %30, i64 %29, !dbg !413
  store i32 0, i32* %31, align 4, !dbg !414, !tbaa !359
  %32 = or i64 %25, 2, !dbg !415
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !416
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !411
  %33 = load i32*, i32** %11, align 8, !dbg !412, !tbaa !364
  %34 = getelementptr inbounds i32, i32* %33, i64 %32, !dbg !413
  store i32 0, i32* %34, align 4, !dbg !414, !tbaa !359
  %35 = or i64 %25, 3, !dbg !415
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !416
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !411
  %36 = load i32*, i32** %11, align 8, !dbg !412, !tbaa !364
  %37 = getelementptr inbounds i32, i32* %36, i64 %35, !dbg !413
  store i32 0, i32* %37, align 4, !dbg !414, !tbaa !359
  %38 = add nuw nsw i64 %25, 4, !dbg !415
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !416
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !411
  %39 = add i64 %26, -4, !dbg !411
  %40 = icmp eq i64 %39, 0, !dbg !411
  br i1 %40, label %41, label %24, !dbg !411, !llvm.loop !417

; <label>:41:                                     ; preds = %24, %17
  %42 = phi i64 [ 0, %17 ], [ %38, %24 ]
  %43 = icmp eq i64 %20, 0, !dbg !411
  br i1 %43, label %52, label %44, !dbg !411

; <label>:44:                                     ; preds = %41, %44
  %45 = phi i64 [ %49, %44 ], [ %42, %41 ]
  %46 = phi i64 [ %50, %44 ], [ %20, %41 ]
  %47 = load i32*, i32** %11, align 8, !dbg !412, !tbaa !364
  %48 = getelementptr inbounds i32, i32* %47, i64 %45, !dbg !413
  store i32 0, i32* %48, align 4, !dbg !414, !tbaa !359
  %49 = add nuw nsw i64 %45, 1, !dbg !415
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !416
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !411
  %50 = add i64 %46, -1, !dbg !411
  %51 = icmp eq i64 %50, 0, !dbg !411
  br i1 %51, label %52, label %44, !dbg !411, !llvm.loop !419

; <label>:52:                                     ; preds = %41, %44, %3
  %53 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, i32 0, i32 2, !dbg !421
  store i32 %2, i32* %53, align 8, !dbg !422, !tbaa !364
  %54 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, i32 0, i32 3, !dbg !423
  store i64 0, i64* %54, align 8, !dbg !424, !tbaa !364
  %55 = tail call i8* @sdsempty() #5, !dbg !425
  %56 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, i32 0, i32 4, !dbg !426
  store i8* %55, i8** %56, align 8, !dbg !427, !tbaa !364
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !428
  ret void, !dbg !428
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i8* @zmalloc(i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdsempty() local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local void @rioFreeFdset(%struct._rio* nocapture readonly) local_unnamed_addr #0 !dbg !429 {
  %2 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, i32 0, !dbg !435
  %3 = bitcast %struct.anon.2* %2 to i8**, !dbg !436
  %4 = load i8*, i8** %3, align 8, !dbg !436, !tbaa !364
  tail call void @zfree(i8* %4) #5, !dbg !437
  %5 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, i32 0, i32 1, !dbg !438
  %6 = bitcast i32** %5 to i8**, !dbg !438
  %7 = load i8*, i8** %6, align 8, !dbg !438, !tbaa !364
  tail call void @zfree(i8* %7) #5, !dbg !439
  %8 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, i32 0, i32 4, !dbg !440
  %9 = load i8*, i8** %8, align 8, !dbg !440, !tbaa !364
  tail call void @sdsfree(i8* %9) #5, !dbg !441
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !442
  ret void, !dbg !442
}

; Function Attrs: noredzone
declare dso_local void @zfree(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @sdsfree(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @rioGenericUpdateChecksum(%struct._rio* nocapture, i8*, i64) local_unnamed_addr #0 !dbg !443 {
  %4 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 5, !dbg !453
  %5 = load i64, i64* %4, align 8, !dbg !453, !tbaa !454
  %6 = tail call i64 @crc64(i64 %5, i8* %1, i64 %2) #5, !dbg !456
  store i64 %6, i64* %4, align 8, !dbg !457, !tbaa !454
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !458
  ret void, !dbg !458
}

; Function Attrs: noredzone
declare dso_local i64 @crc64(i64, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @rioSetAutoSync(%struct._rio* nocapture, i64) local_unnamed_addr #0 !dbg !459 {
  %3 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 0, !dbg !467
  %4 = load i64 (%struct._rio*, i8*, i64)*, i64 (%struct._rio*, i8*, i64)** %3, align 8, !dbg !467, !tbaa !468
  %5 = icmp eq i64 (%struct._rio*, i8*, i64)* %4, @rioFileRead, !dbg !467
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !467
  br i1 %5, label %7, label %6, !dbg !467

; <label>:6:                                      ; preds = %2
  tail call void @_serverAssert(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 303) #5, !dbg !467
  tail call void @_exit(i32 1) #6, !dbg !467
  unreachable

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, i32 0, i32 2, !dbg !469
  %9 = bitcast i32* %8 to i64*, !dbg !469
  store i64 %1, i64* %9, align 8, !dbg !470, !tbaa !364
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !471
  ret void, !dbg !471
}

; Function Attrs: noredzone
declare dso_local void @_serverAssert(i8*, i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone noreturn
declare dso_local void @_exit(i32) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local i64 @rioWriteBulkCount(%struct._rio*, i8 signext, i64) local_unnamed_addr #0 !dbg !472 {
  %4 = alloca [128 x i8], align 16
  %5 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0, !dbg !487
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %5) #7, !dbg !487
  store i8 %1, i8* %5, align 16, !dbg !489, !tbaa !364
  %6 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 1, !dbg !490
  %7 = call i32 @ll2string(i8* nonnull %6, i64 127, i64 %2) #5, !dbg !491
  %8 = add nsw i32 %7, 1, !dbg !492
  %9 = add nsw i32 %7, 2, !dbg !494
  %10 = sext i32 %8 to i64, !dbg !495
  %11 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 %10, !dbg !495
  store i8 13, i8* %11, align 1, !dbg !496, !tbaa !364
  %12 = add nsw i32 %7, 3, !dbg !497
  %13 = sext i32 %9 to i64, !dbg !498
  %14 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 %13, !dbg !498
  store i8 10, i8* %14, align 1, !dbg !499, !tbaa !364
  %15 = sext i32 %12 to i64, !dbg !500
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !515
  %16 = icmp eq i32 %12, 0, !dbg !515
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !515
  br i1 %16, label %46, label %17, !dbg !515

; <label>:17:                                     ; preds = %3
  %18 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 7
  %19 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 4
  %20 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 1
  %21 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 6
  br label %22, !dbg !515

; <label>:22:                                     ; preds = %39, %17
  %23 = phi i64 [ %15, %17 ], [ %41, %39 ]
  %24 = phi i8* [ %5, %17 ], [ %40, %39 ]
  %25 = load i64, i64* %18, align 8, !dbg !516, !tbaa !517
  %26 = icmp eq i64 %25, 0, !dbg !518
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !519
  br i1 %26, label %29, label %27, !dbg !519

; <label>:27:                                     ; preds = %22
  %28 = icmp ult i64 %25, %23, !dbg !520
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !521
  br i1 %28, label %30, label %29, !dbg !521

; <label>:29:                                     ; preds = %27, %22
  br label %30, !dbg !521

; <label>:30:                                     ; preds = %27, %29
  %31 = phi i64 [ %23, %29 ], [ %25, %27 ], !dbg !521
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !521
  %32 = load void (%struct._rio*, i8*, i64)*, void (%struct._rio*, i8*, i64)** %19, align 8, !dbg !523, !tbaa !525
  %33 = icmp eq void (%struct._rio*, i8*, i64)* %32, null, !dbg !526
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !527
  br i1 %33, label %35, label %34, !dbg !527

; <label>:34:                                     ; preds = %30
  call void %32(%struct._rio* nonnull %0, i8* %24, i64 %31) #5, !dbg !528
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !528
  br label %35, !dbg !528

; <label>:35:                                     ; preds = %34, %30
  %36 = load i64 (%struct._rio*, i8*, i64)*, i64 (%struct._rio*, i8*, i64)** %20, align 8, !dbg !529, !tbaa !531
  %37 = call i64 %36(%struct._rio* nonnull %0, i8* %24, i64 %31) #5, !dbg !532
  %38 = icmp eq i64 %37, 0, !dbg !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !534
  br i1 %38, label %45, label %39, !dbg !534

; <label>:39:                                     ; preds = %35
  %40 = getelementptr inbounds i8, i8* %24, i64 %31, !dbg !535
  %41 = sub i64 %23, %31, !dbg !536
  %42 = load i64, i64* %21, align 8, !dbg !537, !tbaa !538
  %43 = add i64 %42, %31, !dbg !537
  store i64 %43, i64* %21, align 8, !dbg !537, !tbaa !538
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !539
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %44 = icmp eq i64 %41, 0, !dbg !515
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !515
  br i1 %44, label %46, label %22, !dbg !515

; <label>:45:                                     ; preds = %35
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !540
  br label %46, !dbg !541

; <label>:46:                                     ; preds = %39, %3, %45
  %47 = phi i64 [ 0, %45 ], [ %15, %3 ], [ %15, %39 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !542
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !544
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %5) #7, !dbg !545
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !545
  ret i64 %47, !dbg !545
}

; Function Attrs: noredzone
declare dso_local i32 @ll2string(i8*, i64, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i64 @rioWriteBulkString(%struct._rio*, i8*, i64) local_unnamed_addr #0 !dbg !546 {
  %4 = tail call i64 @rioWriteBulkCount(%struct._rio* %0, i8 signext 36, i64 %2) #8, !dbg !557
  %5 = icmp eq i64 %4, 0, !dbg !560
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !561
  br i1 %5, label %75, label %6, !dbg !561

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !562
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !564
  br i1 %7, label %8, label %13, !dbg !564

; <label>:8:                                      ; preds = %6
  %9 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 7
  %10 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 4
  %11 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 1
  %12 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 6
  br label %43, !dbg !564

; <label>:13:                                     ; preds = %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !569
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !569
  %14 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 7
  %15 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 4
  %16 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 1
  %17 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 6
  br label %18, !dbg !569

; <label>:18:                                     ; preds = %35, %13
  %19 = phi i64 [ %2, %13 ], [ %37, %35 ]
  %20 = phi i8* [ %1, %13 ], [ %36, %35 ]
  %21 = load i64, i64* %14, align 8, !dbg !570, !tbaa !517
  %22 = icmp eq i64 %21, 0, !dbg !571
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !572
  br i1 %22, label %25, label %23, !dbg !572

; <label>:23:                                     ; preds = %18
  %24 = icmp ult i64 %21, %19, !dbg !573
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !574
  br i1 %24, label %26, label %25, !dbg !574

; <label>:25:                                     ; preds = %23, %18
  br label %26, !dbg !574

; <label>:26:                                     ; preds = %23, %25
  %27 = phi i64 [ %19, %25 ], [ %21, %23 ], !dbg !574
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !574
  %28 = load void (%struct._rio*, i8*, i64)*, void (%struct._rio*, i8*, i64)** %15, align 8, !dbg !576, !tbaa !525
  %29 = icmp eq void (%struct._rio*, i8*, i64)* %28, null, !dbg !577
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !578
  br i1 %29, label %31, label %30, !dbg !578

; <label>:30:                                     ; preds = %26
  tail call void %28(%struct._rio* nonnull %0, i8* %20, i64 %27) #5, !dbg !579
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !579
  br label %31, !dbg !579

; <label>:31:                                     ; preds = %30, %26
  %32 = load i64 (%struct._rio*, i8*, i64)*, i64 (%struct._rio*, i8*, i64)** %16, align 8, !dbg !580, !tbaa !531
  %33 = tail call i64 %32(%struct._rio* nonnull %0, i8* %20, i64 %27) #5, !dbg !581
  %34 = icmp eq i64 %33, 0, !dbg !582
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !583
  br i1 %34, label %42, label %35, !dbg !583

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %20, i64 %27, !dbg !584
  %37 = sub i64 %19, %27, !dbg !585
  %38 = load i64, i64* %17, align 8, !dbg !586, !tbaa !538
  %39 = add i64 %38, %27, !dbg !586
  store i64 %39, i64* %17, align 8, !dbg !586, !tbaa !538
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !587
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %40 = icmp eq i64 %37, 0, !dbg !569
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !569
  br i1 %40, label %41, label %18, !dbg !569

; <label>:41:                                     ; preds = %35
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !588
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !589
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !590
  br label %43, !dbg !590

; <label>:42:                                     ; preds = %31
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !591
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !589
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !590
  br label %75, !dbg !592

; <label>:43:                                     ; preds = %8, %41
  %44 = phi i64* [ %12, %8 ], [ %17, %41 ]
  %45 = phi i64 (%struct._rio*, i8*, i64)** [ %11, %8 ], [ %16, %41 ]
  %46 = phi void (%struct._rio*, i8*, i64)** [ %10, %8 ], [ %15, %41 ]
  %47 = phi i64* [ %9, %8 ], [ %14, %41 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !598
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !598
  br label %48, !dbg !598

; <label>:48:                                     ; preds = %65, %43
  %49 = phi i64 [ 2, %43 ], [ %67, %65 ]
  %50 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %43 ], [ %66, %65 ]
  %51 = load i64, i64* %47, align 8, !dbg !599, !tbaa !517
  %52 = icmp eq i64 %51, 0, !dbg !600
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !601
  br i1 %52, label %55, label %53, !dbg !601

; <label>:53:                                     ; preds = %48
  %54 = icmp ult i64 %51, %49, !dbg !602
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !603
  br i1 %54, label %56, label %55, !dbg !603

; <label>:55:                                     ; preds = %53, %48
  br label %56, !dbg !603

; <label>:56:                                     ; preds = %53, %55
  %57 = phi i64 [ %49, %55 ], [ %51, %53 ], !dbg !603
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !603
  %58 = load void (%struct._rio*, i8*, i64)*, void (%struct._rio*, i8*, i64)** %46, align 8, !dbg !605, !tbaa !525
  %59 = icmp eq void (%struct._rio*, i8*, i64)* %58, null, !dbg !606
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !607
  br i1 %59, label %61, label %60, !dbg !607

; <label>:60:                                     ; preds = %56
  tail call void %58(%struct._rio* nonnull %0, i8* %50, i64 %57) #5, !dbg !608
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !608
  br label %61, !dbg !608

; <label>:61:                                     ; preds = %60, %56
  %62 = load i64 (%struct._rio*, i8*, i64)*, i64 (%struct._rio*, i8*, i64)** %45, align 8, !dbg !609, !tbaa !531
  %63 = tail call i64 %62(%struct._rio* nonnull %0, i8* %50, i64 %57) #5, !dbg !610
  %64 = icmp eq i64 %63, 0, !dbg !611
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !612
  br i1 %64, label %71, label %65, !dbg !612

; <label>:65:                                     ; preds = %61
  %66 = getelementptr inbounds i8, i8* %50, i64 %57, !dbg !613
  %67 = sub i64 %49, %57, !dbg !614
  %68 = load i64, i64* %44, align 8, !dbg !615, !tbaa !538
  %69 = add i64 %68, %57, !dbg !615
  store i64 %69, i64* %44, align 8, !dbg !615, !tbaa !538
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !616
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %70 = icmp eq i64 %67, 0, !dbg !598
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !598
  br i1 %70, label %72, label %48, !dbg !598

; <label>:71:                                     ; preds = %61
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !617
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !618
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !619
  br label %75, !dbg !620

; <label>:72:                                     ; preds = %65
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !618
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !619
  %73 = add i64 %2, 2, !dbg !622
  %74 = add i64 %73, %4, !dbg !623
  br label %75, !dbg !624

; <label>:75:                                     ; preds = %3, %72, %71, %42
  %76 = phi i64 [ 0, %42 ], [ 0, %71 ], [ %74, %72 ], [ 0, %3 ], !dbg !625
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !626
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !627
  ret i64 %76, !dbg !627
}

; Function Attrs: noredzone nounwind
define dso_local i64 @rioWriteBulkLongLong(%struct._rio*, i64) local_unnamed_addr #0 !dbg !628 {
  %3 = alloca [32 x i8], align 16
  %4 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0, !dbg !640
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #7, !dbg !640
  %5 = call i32 @ll2string(i8* nonnull %4, i64 32, i64 %1) #5, !dbg !642
  %6 = zext i32 %5 to i64, !dbg !644
  %7 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* nonnull %4, i64 %6) #8, !dbg !645
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #7, !dbg !646
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !647
  ret i64 %7, !dbg !647
}

; Function Attrs: noredzone nounwind
define dso_local i64 @rioWriteBulkDouble(%struct._rio*, double) local_unnamed_addr #0 !dbg !648 {
  %3 = alloca [128 x i8], align 16
  %4 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0, !dbg !659
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %4) #7, !dbg !659
  %5 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %4, i64 128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), double %1) #5, !dbg !661
  %6 = zext i32 %5 to i64, !dbg !663
  %7 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* nonnull %4, i64 %6) #8, !dbg !664
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %4) #7, !dbg !665
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !666
  ret i64 %7, !dbg !666
}

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i64 @rioBufferRead(%struct._rio* nocapture, i8*, i64) #0 !dbg !667 {
  %4 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, !dbg !677
  %5 = bitcast %union.anon* %4 to i8**, !dbg !679
  %6 = load i8*, i8** %5, align 8, !dbg !679, !tbaa !364
  %7 = getelementptr inbounds i8, i8* %6, i64 -1, !dbg !689
  %8 = load i8, i8* %7, align 1, !dbg !689, !tbaa !364
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !691
  %9 = trunc i8 %8 to i3, !dbg !691
  switch i3 %9, label %31 [
    i3 0, label %10
    i3 1, label %13
    i3 2, label %17
    i3 3, label %22
    i3 -4, label %27
  ], !dbg !691

; <label>:10:                                     ; preds = %3
  %11 = lshr i8 %8, 3, !dbg !692
  %12 = zext i8 %11 to i64, !dbg !692
  br label %31, !dbg !694

; <label>:13:                                     ; preds = %3
  %14 = getelementptr inbounds i8, i8* %6, i64 -3, !dbg !695
  %15 = load i8, i8* %14, align 1, !dbg !696, !tbaa !364
  %16 = zext i8 %15 to i64, !dbg !695
  br label %31, !dbg !697

; <label>:17:                                     ; preds = %3
  %18 = getelementptr inbounds i8, i8* %6, i64 -5, !dbg !698
  %19 = bitcast i8* %18 to i16*, !dbg !699
  %20 = load i16, i16* %19, align 1, !dbg !699, !tbaa !700
  %21 = zext i16 %20 to i64, !dbg !698
  br label %31, !dbg !702

; <label>:22:                                     ; preds = %3
  %23 = getelementptr inbounds i8, i8* %6, i64 -9, !dbg !703
  %24 = bitcast i8* %23 to i32*, !dbg !704
  %25 = load i32, i32* %24, align 1, !dbg !704, !tbaa !359
  %26 = zext i32 %25 to i64, !dbg !703
  br label %31, !dbg !705

; <label>:27:                                     ; preds = %3
  %28 = getelementptr inbounds i8, i8* %6, i64 -17, !dbg !706
  %29 = bitcast i8* %28 to i64*, !dbg !707
  %30 = load i64, i64* %29, align 1, !dbg !707, !tbaa !357
  br label %31, !dbg !708

; <label>:31:                                     ; preds = %3, %10, %13, %17, %22, %27
  %32 = phi i64 [ %30, %27 ], [ %26, %22 ], [ %21, %17 ], [ %16, %13 ], [ %12, %10 ], [ 0, %3 ], !dbg !709
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !710
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !711
  %33 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, i32 0, i32 1, !dbg !712
  %34 = bitcast i32** %33 to i64*, !dbg !712
  %35 = load i64, i64* %34, align 8, !dbg !712, !tbaa !364
  %36 = sub i64 %32, %35, !dbg !713
  %37 = icmp ult i64 %36, %2, !dbg !714
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !715
  br i1 %37, label %43, label %38, !dbg !715

; <label>:38:                                     ; preds = %31
  %39 = getelementptr inbounds i8, i8* %6, i64 %35, !dbg !716
  %40 = tail call i8* @memcpy(i8* %1, i8* %39, i64 %2) #5, !dbg !717
  %41 = load i64, i64* %34, align 8, !dbg !718, !tbaa !364
  %42 = add i64 %41, %2, !dbg !718
  store i64 %42, i64* %34, align 8, !dbg !718, !tbaa !364
  br label %43, !dbg !719

; <label>:43:                                     ; preds = %31, %38
  %44 = phi i64 [ 1, %38 ], [ 0, %31 ], !dbg !720
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !710
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !721
  ret i64 %44, !dbg !721
}

; Function Attrs: noredzone nounwind
define internal i64 @rioBufferWrite(%struct._rio* nocapture, i8*, i64) #0 !dbg !722 {
  %4 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, !dbg !730
  %5 = bitcast %union.anon* %4 to i8**, !dbg !731
  %6 = load i8*, i8** %5, align 8, !dbg !731, !tbaa !364
  %7 = tail call i8* @sdscatlen(i8* %6, i8* %1, i64 %2) #5, !dbg !732
  store i8* %7, i8** %5, align 8, !dbg !733, !tbaa !364
  %8 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, i32 0, i32 1, !dbg !734
  %9 = bitcast i32** %8 to i64*, !dbg !734
  %10 = load i64, i64* %9, align 8, !dbg !735, !tbaa !364
  %11 = add i64 %10, %2, !dbg !735
  store i64 %11, i64* %9, align 8, !dbg !735, !tbaa !364
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !736
  ret i64 1, !dbg !736
}

; Function Attrs: noredzone nounwind
define internal i64 @rioBufferTell(%struct._rio* nocapture readonly) #0 !dbg !737 {
  %2 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, i32 0, i32 1, !dbg !743
  %3 = bitcast i32** %2 to i64*, !dbg !743
  %4 = load i64, i64* %3, align 8, !dbg !743, !tbaa !364
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !744
  ret i64 %4, !dbg !744
}

; Function Attrs: noredzone nounwind
define internal i32 @rioBufferFlush(%struct._rio* nocapture readnone) #0 !dbg !745 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !751
  ret i32 1, !dbg !751
}

; Function Attrs: noredzone
declare dso_local i8* @sdscatlen(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i64 @rioFileRead(%struct._rio* nocapture readonly, i8*, i64) #0 !dbg !752 {
  %4 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, !dbg !760
  %5 = bitcast %union.anon* %4 to %struct.__sFILE**, !dbg !761
  %6 = load %struct.__sFILE*, %struct.__sFILE** %5, align 8, !dbg !761, !tbaa !364
  %7 = tail call i64 @fread(i8* %1, i64 %2, i64 1, %struct.__sFILE* %6) #5, !dbg !762
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !763
  ret i64 %7, !dbg !763
}

; Function Attrs: noredzone nounwind
define internal i64 @rioFileWrite(%struct._rio* nocapture, i8*, i64) #0 !dbg !764 {
  %4 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, !dbg !773
  %5 = bitcast %union.anon* %4 to %struct.__sFILE**, !dbg !774
  %6 = load %struct.__sFILE*, %struct.__sFILE** %5, align 8, !dbg !774, !tbaa !364
  %7 = tail call i64 @fwrite(i8* %1, i64 %2, i64 1, %struct.__sFILE* %6) #5, !dbg !775
  %8 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, i32 0, i32 1, !dbg !777
  %9 = bitcast i32** %8 to i64*, !dbg !777
  %10 = load i64, i64* %9, align 8, !dbg !778, !tbaa !364
  %11 = add i64 %10, %2, !dbg !778
  store i64 %11, i64* %9, align 8, !dbg !778, !tbaa !364
  %12 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, i32 0, i32 2, !dbg !779
  %13 = bitcast i32* %12 to i64*, !dbg !779
  %14 = load i64, i64* %13, align 8, !dbg !779, !tbaa !364
  %15 = icmp eq i64 %14, 0, !dbg !781
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !782
  br i1 %15, label %24, label %16, !dbg !782

; <label>:16:                                     ; preds = %3
  %17 = icmp slt i64 %11, %14, !dbg !783
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !784
  br i1 %17, label %24, label %18, !dbg !784

; <label>:18:                                     ; preds = %16
  %19 = load %struct.__sFILE*, %struct.__sFILE** %5, align 8, !dbg !785, !tbaa !364
  %20 = tail call i32 @fflush(%struct.__sFILE* %19) #5, !dbg !787
  %21 = load %struct.__sFILE*, %struct.__sFILE** %5, align 8, !dbg !788, !tbaa !364
  %22 = tail call i32 @fileno(%struct.__sFILE* %21) #5, !dbg !789
  %23 = tail call i32 @fsync(i32 %22) #5, !dbg !790
  store i64 0, i64* %9, align 8, !dbg !791, !tbaa !364
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !792
  br label %24, !dbg !792

; <label>:24:                                     ; preds = %16, %3, %18
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !793
  ret i64 %7, !dbg !793
}

; Function Attrs: noredzone nounwind
define internal i64 @rioFileTell(%struct._rio* nocapture readonly) #0 !dbg !794 {
  %2 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, !dbg !798
  %3 = bitcast %union.anon* %2 to %struct.__sFILE**, !dbg !799
  %4 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8, !dbg !799, !tbaa !364
  %5 = tail call i64 @ftello(%struct.__sFILE* %4) #5, !dbg !800
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !801
  ret i64 %5, !dbg !801
}

; Function Attrs: noredzone nounwind
define internal i32 @rioFileFlush(%struct._rio* nocapture readonly) #0 !dbg !802 {
  %2 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, !dbg !806
  %3 = bitcast %union.anon* %2 to %struct.__sFILE**, !dbg !807
  %4 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8, !dbg !807, !tbaa !364
  %5 = tail call i32 @fflush(%struct.__sFILE* %4) #5, !dbg !808
  %6 = icmp eq i32 %5, 0, !dbg !809
  %7 = zext i1 %6 to i32, !dbg !810
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !811
  ret i32 %7, !dbg !811
}

; Function Attrs: noredzone
declare dso_local i64 @fread(i8*, i64, i64, %struct.__sFILE*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @fwrite(i8*, i64, i64, %struct.__sFILE*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @fflush(%struct.__sFILE*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @fsync(i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @fileno(%struct.__sFILE*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @ftello(%struct.__sFILE*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i64 @rioFdsetRead(%struct._rio* nocapture readnone, i8* nocapture readnone, i64) #0 !dbg !812 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !820
  ret i64 0, !dbg !820
}

; Function Attrs: noredzone nounwind
define internal i64 @rioFdsetWrite(%struct._rio* nocapture, i8*, i64) #0 !dbg !821 {
  %4 = icmp eq i64 %2, 0, !dbg !842
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !843
  br i1 %4, label %32, label %5, !dbg !843

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, i32 0, i32 4, !dbg !844
  %7 = load i8*, i8** %6, align 8, !dbg !844, !tbaa !364
  %8 = tail call i8* @sdscatlen(i8* %7, i8* %1, i64 %2) #5, !dbg !847
  store i8* %8, i8** %6, align 8, !dbg !848, !tbaa !364
  %9 = getelementptr inbounds i8, i8* %8, i64 -1, !dbg !852
  %10 = load i8, i8* %9, align 1, !dbg !852, !tbaa !364
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !854
  %11 = trunc i8 %10 to i3, !dbg !854
  switch i3 %11, label %26 [
    i3 -4, label %22
    i3 3, label %17
    i3 2, label %12
  ], !dbg !854

; <label>:12:                                     ; preds = %5
  %13 = getelementptr inbounds i8, i8* %8, i64 -5, !dbg !855
  %14 = bitcast i8* %13 to i16*, !dbg !856
  %15 = load i16, i16* %14, align 1, !dbg !856, !tbaa !700
  %16 = zext i16 %15 to i64, !dbg !855
  br label %27, !dbg !857

; <label>:17:                                     ; preds = %5
  %18 = getelementptr inbounds i8, i8* %8, i64 -9, !dbg !858
  %19 = bitcast i8* %18 to i32*, !dbg !859
  %20 = load i32, i32* %19, align 1, !dbg !859, !tbaa !359
  %21 = zext i32 %20 to i64, !dbg !858
  br label %27, !dbg !860

; <label>:22:                                     ; preds = %5
  %23 = getelementptr inbounds i8, i8* %8, i64 -17, !dbg !861
  %24 = bitcast i8* %23 to i64*, !dbg !862
  %25 = load i64, i64* %24, align 1, !dbg !862, !tbaa !357
  br label %27, !dbg !863

; <label>:26:                                     ; preds = %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !864
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !865
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !866
  br label %31, !dbg !866

; <label>:27:                                     ; preds = %12, %17, %22
  %28 = phi i64 [ %25, %22 ], [ %21, %17 ], [ %16, %12 ], !dbg !867
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !864
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !865
  %29 = icmp ugt i64 %28, 16384, !dbg !868
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !866
  br i1 %29, label %30, label %31, !dbg !866

; <label>:30:                                     ; preds = %27
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !870
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !871
  br label %40, !dbg !871

; <label>:31:                                     ; preds = %26, %27
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !871
  br label %144, !dbg !871

; <label>:32:                                     ; preds = %3
  %33 = icmp eq i8* %1, null, !dbg !872
  %34 = and i1 %33, %4, !dbg !873
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !871
  br i1 %34, label %35, label %144, !dbg !871

; <label>:35:                                     ; preds = %32
  %36 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, i32 0, i32 4
  %37 = load i8*, i8** %36, align 8, !dbg !874, !tbaa !364
  %38 = getelementptr inbounds i8, i8* %37, i64 -1
  %39 = load i8, i8* %38, align 1, !dbg !877, !tbaa !364
  br label %40, !dbg !871

; <label>:40:                                     ; preds = %35, %30
  %41 = phi i8 [ %39, %35 ], [ %10, %30 ], !dbg !877
  %42 = phi i8* [ %37, %35 ], [ %8, %30 ], !dbg !874
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !881
  %43 = trunc i8 %41 to i3, !dbg !881
  switch i3 %43, label %65 [
    i3 0, label %44
    i3 1, label %47
    i3 2, label %51
    i3 3, label %56
    i3 -4, label %61
  ], !dbg !881

; <label>:44:                                     ; preds = %40
  %45 = lshr i8 %41, 3, !dbg !882
  %46 = zext i8 %45 to i64, !dbg !882
  br label %66, !dbg !883

; <label>:47:                                     ; preds = %40
  %48 = getelementptr inbounds i8, i8* %42, i64 -3, !dbg !884
  %49 = load i8, i8* %48, align 1, !dbg !885, !tbaa !364
  %50 = zext i8 %49 to i64, !dbg !884
  br label %66, !dbg !886

; <label>:51:                                     ; preds = %40
  %52 = getelementptr inbounds i8, i8* %42, i64 -5, !dbg !887
  %53 = bitcast i8* %52 to i16*, !dbg !888
  %54 = load i16, i16* %53, align 1, !dbg !888, !tbaa !700
  %55 = zext i16 %54 to i64, !dbg !887
  br label %66, !dbg !889

; <label>:56:                                     ; preds = %40
  %57 = getelementptr inbounds i8, i8* %42, i64 -9, !dbg !890
  %58 = bitcast i8* %57 to i32*, !dbg !891
  %59 = load i32, i32* %58, align 1, !dbg !891, !tbaa !359
  %60 = zext i32 %59 to i64, !dbg !890
  br label %66, !dbg !892

; <label>:61:                                     ; preds = %40
  %62 = getelementptr inbounds i8, i8* %42, i64 -17, !dbg !893
  %63 = bitcast i8* %62 to i64*, !dbg !894
  %64 = load i64, i64* %63, align 1, !dbg !894, !tbaa !357
  br label %66, !dbg !895

; <label>:65:                                     ; preds = %40
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !896
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !897
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !898
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !899
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !899
  br label %145, !dbg !899

; <label>:66:                                     ; preds = %61, %56, %51, %47, %44
  %67 = phi i64 [ %64, %61 ], [ %60, %56 ], [ %55, %51 ], [ %50, %47 ], [ %46, %44 ], !dbg !900
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !901
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !897
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !898
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !899
  %68 = icmp eq i64 %67, 0, !dbg !899
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !899
  br i1 %68, label %145, label %69, !dbg !899

; <label>:69:                                     ; preds = %66
  %70 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, i32 0, i32 2
  %71 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, i32 0, i32 1
  %72 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, i32 0, i32 0
  %73 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, i32 0, i32 3
  %74 = load i32, i32* %70, align 8, !dbg !902, !tbaa !364
  br label %75, !dbg !899

; <label>:75:                                     ; preds = %69, %138
  %76 = phi i32 [ %74, %69 ], [ %134, %138 ]
  %77 = phi i32 [ %74, %69 ], [ %135, %138 ], !dbg !902
  %78 = phi i8* [ %42, %69 ], [ %139, %138 ]
  %79 = phi i64 [ %67, %69 ], [ %140, %138 ]
  %80 = icmp ult i64 %79, 1024, !dbg !903
  %81 = select i1 %80, i64 %79, i64 1024, !dbg !904
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !908
  %82 = icmp sgt i32 %77, 0, !dbg !909
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !910
  br i1 %82, label %83, label %133, !dbg !910

; <label>:83:                                     ; preds = %75, %127
  %84 = phi i32 [ %128, %127 ], [ %76, %75 ]
  %85 = phi i64 [ %130, %127 ], [ 0, %75 ]
  %86 = phi i32 [ %129, %127 ], [ 0, %75 ]
  %87 = load i32*, i32** %71, align 8, !dbg !911, !tbaa !364
  %88 = getelementptr inbounds i32, i32* %87, i64 %85, !dbg !913
  %89 = load i32, i32* %88, align 4, !dbg !913, !tbaa !359
  %90 = icmp eq i32 %89, 0, !dbg !914
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !915
  br i1 %90, label %93, label %91, !dbg !915

; <label>:91:                                     ; preds = %83
  %92 = add nsw i32 %86, 1, !dbg !916
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !918
  br label %127, !dbg !918

; <label>:93:                                     ; preds = %83
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !920
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !920
  br label %94, !dbg !921

; <label>:94:                                     ; preds = %93, %111
  %95 = phi i64 [ %112, %111 ], [ 0, %93 ]
  %96 = load i32*, i32** %72, align 8, !dbg !921, !tbaa !364
  %97 = getelementptr inbounds i32, i32* %96, i64 %85, !dbg !923
  %98 = load i32, i32* %97, align 4, !dbg !923, !tbaa !359
  %99 = getelementptr inbounds i8, i8* %78, i64 %95, !dbg !924
  %100 = sub i64 %81, %95, !dbg !925
  %101 = tail call i64 @write(i32 %98, i8* %99, i64 %100) #5, !dbg !926
  %102 = icmp slt i64 %101, 1, !dbg !928
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !930
  br i1 %102, label %103, label %111, !dbg !930

; <label>:103:                                    ; preds = %94
  %104 = icmp eq i64 %101, -1, !dbg !931
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !934
  br i1 %104, label %105, label %114, !dbg !934

; <label>:105:                                    ; preds = %103
  %106 = tail call i32* @__errno() #5, !dbg !935
  %107 = load i32, i32* %106, align 4, !dbg !935, !tbaa !359
  %108 = icmp eq i32 %107, 11, !dbg !936
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !937
  br i1 %108, label %109, label %114, !dbg !937

; <label>:109:                                    ; preds = %105
  %110 = tail call i32* @__errno() #5, !dbg !938
  store i32 116, i32* %110, align 4, !dbg !939, !tbaa !359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !938
  br label %114, !dbg !938

; <label>:111:                                    ; preds = %94
  %112 = add i64 %101, %95, !dbg !940
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !920
  %113 = icmp eq i64 %81, %112, !dbg !941
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !920
  br i1 %113, label %124, label %94, !dbg !920, !llvm.loop !942

; <label>:114:                                    ; preds = %109, %105, %103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !944
  %115 = tail call i32* @__errno() #5, !dbg !945
  %116 = load i32, i32* %115, align 4, !dbg !945, !tbaa !359
  %117 = load i32*, i32** %71, align 8, !dbg !948, !tbaa !364
  %118 = getelementptr inbounds i32, i32* %117, i64 %85, !dbg !949
  store i32 %116, i32* %118, align 4, !dbg !950, !tbaa !359
  %119 = load i32*, i32** %71, align 8, !dbg !951, !tbaa !364
  %120 = getelementptr inbounds i32, i32* %119, i64 %85, !dbg !953
  %121 = load i32, i32* %120, align 4, !dbg !953, !tbaa !359
  %122 = icmp eq i32 %121, 0, !dbg !954
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !955
  br i1 %122, label %123, label %125, !dbg !955

; <label>:123:                                    ; preds = %114
  store i32 5, i32* %120, align 4, !dbg !956, !tbaa !359
  br label %124, !dbg !957

; <label>:124:                                    ; preds = %111, %123
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !958
  br label %125, !dbg !959

; <label>:125:                                    ; preds = %124, %114
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !959
  %126 = load i32, i32* %70, align 8, !dbg !902, !tbaa !364
  br label %127, !dbg !959

; <label>:127:                                    ; preds = %125, %91
  %128 = phi i32 [ %84, %91 ], [ %126, %125 ], !dbg !902
  %129 = phi i32 [ %92, %91 ], [ %86, %125 ], !dbg !960
  %130 = add nuw nsw i64 %85, 1, !dbg !961
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !962
  %131 = sext i32 %128 to i64, !dbg !909
  %132 = icmp slt i64 %130, %131, !dbg !909
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !910
  br i1 %132, label %83, label %133, !dbg !910, !llvm.loop !963

; <label>:133:                                    ; preds = %127, %75
  %134 = phi i32 [ %76, %75 ], [ %128, %127 ]
  %135 = phi i32 [ %77, %75 ], [ %128, %127 ]
  %136 = phi i32 [ 0, %75 ], [ %129, %127 ], !dbg !965
  %137 = icmp eq i32 %136, %135, !dbg !966
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !968
  br i1 %137, label %148, label %138, !dbg !968

; <label>:138:                                    ; preds = %133
  %139 = getelementptr inbounds i8, i8* %78, i64 %81, !dbg !969
  %140 = sub i64 %79, %81, !dbg !970
  %141 = load i64, i64* %73, align 8, !dbg !971, !tbaa !364
  %142 = add i64 %141, %81, !dbg !971
  store i64 %142, i64* %73, align 8, !dbg !971, !tbaa !364
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !972
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %143 = icmp eq i64 %140, 0, !dbg !899
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !899
  br i1 %143, label %145, label %75, !dbg !899

; <label>:144:                                    ; preds = %32, %31
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !899
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !899
  br label %148, !dbg !973

; <label>:145:                                    ; preds = %138, %66, %65
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !973
  %146 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, i32 0, i32 4, !dbg !974
  %147 = load i8*, i8** %146, align 8, !dbg !974, !tbaa !364
  tail call void @sdsclear(i8* %147) #5, !dbg !976
  br label %148, !dbg !976

; <label>:148:                                    ; preds = %133, %145, %144
  %149 = phi i64 [ 1, %144 ], [ 1, %145 ], [ 0, %133 ], !dbg !977
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !978
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !979
  ret i64 %149, !dbg !979
}

; Function Attrs: noredzone nounwind
define internal i64 @rioFdsetTell(%struct._rio* nocapture readonly) #0 !dbg !980 {
  %2 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, i32 0, i32 3, !dbg !984
  %3 = load i64, i64* %2, align 8, !dbg !984, !tbaa !364
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !985
  ret i64 %3, !dbg !985
}

; Function Attrs: noredzone nounwind
define internal i32 @rioFdsetFlush(%struct._rio* nocapture) #0 !dbg !986 {
  %2 = tail call i64 @rioFdsetWrite(%struct._rio* %0, i8* null, i64 0) #8, !dbg !990
  %3 = trunc i64 %2 to i32, !dbg !990
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !991
  ret i32 %3, !dbg !991
}

; Function Attrs: noredzone
declare dso_local i64 @write(i32, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @sdsclear(i8*) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin noredzone nounwind }
attributes #6 = { nobuiltin noredzone noreturn nounwind }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin noredzone }

!llvm.module.flags = !{!338, !339, !340}
!llvm.ident = !{!341}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "rioBufferIO", scope: !2, file: !3, line: 88, type: !59, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !56)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/rio.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6, !23, !33, !43, !53, !54, !55}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr8", file: !8, line: 51, size: 24, elements: !9)
!8 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/sds.h", directory: "/root/.unikraft/apps/redis/build")
!9 = !{!10, !16, !17, !18}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !7, file: !8, line: 52, baseType: !11, size: 8)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !12, line: 24, baseType: !13)
!12 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !14, line: 43, baseType: !15)
!14 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!15 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !7, file: !8, line: 53, baseType: !11, size: 8, offset: 8)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !7, file: !8, line: 54, baseType: !15, size: 8, offset: 16)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !7, file: !8, line: 55, baseType: !19, offset: 24)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, elements: !21)
!20 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!21 = !{!22}
!22 = !DISubrange(count: -1)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr16", file: !8, line: 57, size: 40, elements: !25)
!25 = !{!26, !30, !31, !32}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !24, file: !8, line: 58, baseType: !27, size: 16)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !12, line: 36, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !14, line: 57, baseType: !29)
!29 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !24, file: !8, line: 59, baseType: !27, size: 16, offset: 16)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !24, file: !8, line: 60, baseType: !15, size: 8, offset: 32)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !24, file: !8, line: 61, baseType: !19, offset: 40)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr32", file: !8, line: 63, size: 72, elements: !35)
!35 = !{!36, !40, !41, !42}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !34, file: !8, line: 64, baseType: !37, size: 32)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !12, line: 48, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !14, line: 79, baseType: !39)
!39 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !34, file: !8, line: 65, baseType: !37, size: 32, offset: 32)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !34, file: !8, line: 66, baseType: !15, size: 8, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !34, file: !8, line: 67, baseType: !19, offset: 72)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr64", file: !8, line: 69, size: 136, elements: !45)
!45 = !{!46, !50, !51, !52}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !44, file: !8, line: 70, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !12, line: 60, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !14, line: 105, baseType: !49)
!49 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !44, file: !8, line: 71, baseType: !47, size: 64, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !44, file: !8, line: 72, baseType: !15, size: 8, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !44, file: !8, line: 73, baseType: !19, offset: 136)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!56 = !{!0, !57, !336}
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(name: "rioFileIO", scope: !2, file: !3, line: 141, type: !59, isLocal: true, isDefinition: true)
!59 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "rio", file: !61, line: 87, baseType: !62)
!61 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/rio.h", directory: "/root/.unikraft/apps/redis/build")
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rio", file: !61, line: 39, size: 832, elements: !63)
!63 = !{!64, !73, !79, !88, !93, !97, !98, !99, !100}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !62, file: !61, line: 43, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DISubroutineType(types: !67)
!67 = !{!68, !72, !55, !68}
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !69, line: 40, baseType: !70)
!69 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !71, line: 129, baseType: !49)
!71 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !62, file: !61, line: 44, baseType: !74, size: 64, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DISubroutineType(types: !76)
!76 = !{!68, !72, !77, !68}
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "tell", scope: !62, file: !61, line: 45, baseType: !80, size: 64, offset: 128)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DISubroutineType(types: !82)
!82 = !{!83, !72}
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !84, line: 173, baseType: !85)
!84 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !71, line: 100, baseType: !86)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !71, line: 44, baseType: !87)
!87 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !62, file: !61, line: 46, baseType: !89, size: 64, offset: 192)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DISubroutineType(types: !91)
!91 = !{!92, !72}
!92 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "update_cksum", scope: !62, file: !61, line: 52, baseType: !94, size: 64, offset: 256)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DISubroutineType(types: !96)
!96 = !{null, !72, !77, !68}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "cksum", scope: !62, file: !61, line: 55, baseType: !47, size: 64, offset: 320)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "processed_bytes", scope: !62, file: !61, line: 58, baseType: !68, size: 64, offset: 384)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "max_processing_chunk", scope: !62, file: !61, line: 61, baseType: !68, size: 64, offset: 448)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !62, file: !61, line: 84, baseType: !101, size: 320, offset: 512)
!101 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !62, file: !61, line: 64, size: 320, elements: !102)
!102 = !{!103, !109, !327}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !101, file: !61, line: 69, baseType: !104, size: 128)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !101, file: !61, line: 66, size: 128, elements: !105)
!105 = !{!106, !108}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !104, file: !61, line: 67, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !8, line: 43, baseType: !53)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !104, file: !61, line: 68, baseType: !83, size: 64, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !101, file: !61, line: 75, baseType: !110, size: 192)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !101, file: !61, line: 71, size: 192, elements: !111)
!111 = !{!112, !325, !326}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !110, file: !61, line: 72, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !115, line: 66, baseType: !116)
!115 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !117, line: 287, baseType: !118)
!117 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !117, line: 181, size: 1408, elements: !119)
!119 = !{!120, !121, !122, !123, !125, !126, !131, !132, !133, !293, !299, !304, !308, !309, !310, !311, !313, !315, !316, !317, !318, !319, !323, !324}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !118, file: !117, line: 182, baseType: !54, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !118, file: !117, line: 183, baseType: !92, size: 32, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !118, file: !117, line: 184, baseType: !92, size: 32, offset: 96)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !118, file: !117, line: 185, baseType: !124, size: 16, offset: 128)
!124 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !118, file: !117, line: 186, baseType: !124, size: 16, offset: 144)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !118, file: !117, line: 187, baseType: !127, size: 128, offset: 192)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !117, line: 117, size: 128, elements: !128)
!128 = !{!129, !130}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !127, file: !117, line: 118, baseType: !54, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !127, file: !117, line: 119, baseType: !92, size: 32, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !118, file: !117, line: 188, baseType: !92, size: 32, offset: 320)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !118, file: !117, line: 195, baseType: !55, size: 64, offset: 384)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !118, file: !117, line: 197, baseType: !134, size: 64, offset: 448)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{!137, !138, !55, !53, !92}
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !71, line: 145, baseType: !87)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !117, line: 569, size: 14912, elements: !140)
!140 = !{!141, !142, !144, !145, !146, !147, !151, !152, !155, !156, !160, !174, !175, !176, !178, !179, !180, !257, !278, !279, !284, !291}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !139, file: !117, line: 571, baseType: !92, size: 32)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !139, file: !117, line: 576, baseType: !143, size: 64, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !139, file: !117, line: 576, baseType: !143, size: 64, offset: 128)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !139, file: !117, line: 576, baseType: !143, size: 64, offset: 192)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !139, file: !117, line: 578, baseType: !92, size: 32, offset: 256)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !139, file: !117, line: 579, baseType: !148, size: 200, offset: 288)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 200, elements: !149)
!149 = !{!150}
!150 = !DISubrange(count: 25)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !139, file: !117, line: 582, baseType: !92, size: 32, offset: 512)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !139, file: !117, line: 583, baseType: !153, size: 64, offset: 576)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !117, line: 40, flags: DIFlagFwdDecl)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !139, file: !117, line: 585, baseType: !92, size: 32, offset: 640)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !139, file: !117, line: 587, baseType: !157, size: 64, offset: 704)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DISubroutineType(types: !159)
!159 = !{null, !138}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !139, file: !117, line: 590, baseType: !161, size: 64, offset: 768)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !117, line: 47, size: 256, elements: !163)
!163 = !{!164, !165, !166, !167, !168, !169}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !162, file: !117, line: 49, baseType: !161, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !162, file: !117, line: 50, baseType: !92, size: 32, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !162, file: !117, line: 50, baseType: !92, size: 32, offset: 96)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !162, file: !117, line: 50, baseType: !92, size: 32, offset: 128)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !162, file: !117, line: 50, baseType: !92, size: 32, offset: 160)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !162, file: !117, line: 51, baseType: !170, size: 32, offset: 192)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 32, elements: !172)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !117, line: 25, baseType: !39)
!172 = !{!173}
!173 = !DISubrange(count: 1)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !139, file: !117, line: 591, baseType: !92, size: 32, offset: 832)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !139, file: !117, line: 592, baseType: !161, size: 64, offset: 896)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !139, file: !117, line: 593, baseType: !177, size: 64, offset: 960)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !139, file: !117, line: 596, baseType: !92, size: 32, offset: 1024)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !139, file: !117, line: 597, baseType: !53, size: 64, offset: 1088)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !139, file: !117, line: 632, baseType: !181, size: 2880, offset: 1152)
!181 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !139, file: !117, line: 599, size: 2880, elements: !182)
!182 = !{!183, !248}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !181, file: !117, line: 622, baseType: !184, size: 1728)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !181, file: !117, line: 601, size: 1728, elements: !185)
!185 = !{!186, !187, !188, !192, !204, !205, !207, !216, !231, !232, !233, !237, !241, !242, !243, !244, !245, !246, !247}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !184, file: !117, line: 603, baseType: !39, size: 32)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !184, file: !117, line: 604, baseType: !53, size: 64, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !184, file: !117, line: 605, baseType: !189, size: 208, offset: 128)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 208, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 26)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !184, file: !117, line: 606, baseType: !193, size: 288, offset: 352)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !117, line: 55, size: 288, elements: !194)
!194 = !{!195, !196, !197, !198, !199, !200, !201, !202, !203}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !193, file: !117, line: 57, baseType: !92, size: 32)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !193, file: !117, line: 58, baseType: !92, size: 32, offset: 32)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !193, file: !117, line: 59, baseType: !92, size: 32, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !193, file: !117, line: 60, baseType: !92, size: 32, offset: 96)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !193, file: !117, line: 61, baseType: !92, size: 32, offset: 128)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !193, file: !117, line: 62, baseType: !92, size: 32, offset: 160)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !193, file: !117, line: 63, baseType: !92, size: 32, offset: 192)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !193, file: !117, line: 64, baseType: !92, size: 32, offset: 224)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !193, file: !117, line: 65, baseType: !92, size: 32, offset: 256)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !184, file: !117, line: 607, baseType: !92, size: 32, offset: 640)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !184, file: !117, line: 608, baseType: !206, size: 64, offset: 704)
!206 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !184, file: !117, line: 609, baseType: !208, size: 112, offset: 768)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !117, line: 319, size: 112, elements: !209)
!209 = !{!210, !214, !215}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !208, file: !117, line: 320, baseType: !211, size: 48)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 48, elements: !212)
!212 = !{!213}
!213 = !DISubrange(count: 3)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !208, file: !117, line: 321, baseType: !211, size: 48, offset: 48)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !208, file: !117, line: 322, baseType: !29, size: 16, offset: 96)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !184, file: !117, line: 610, baseType: !217, size: 64, offset: 896)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !71, line: 171, baseType: !218)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 163, size: 64, elements: !219)
!219 = !{!220, !221}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !218, file: !71, line: 165, baseType: !92, size: 32)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !218, file: !71, line: 170, baseType: !222, size: 32, offset: 32)
!222 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !218, file: !71, line: 166, size: 32, elements: !223)
!223 = !{!224, !227}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !222, file: !71, line: 168, baseType: !225, size: 32)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !226, line: 124, baseType: !39)
!226 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!227 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !222, file: !71, line: 169, baseType: !228, size: 32)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 32, elements: !229)
!229 = !{!230}
!230 = !DISubrange(count: 4)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !184, file: !117, line: 611, baseType: !217, size: 64, offset: 960)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !184, file: !117, line: 612, baseType: !217, size: 64, offset: 1024)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !184, file: !117, line: 613, baseType: !234, size: 64, offset: 1088)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 64, elements: !235)
!235 = !{!236}
!236 = !DISubrange(count: 8)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !184, file: !117, line: 614, baseType: !238, size: 192, offset: 1152)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 192, elements: !239)
!239 = !{!240}
!240 = !DISubrange(count: 24)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !184, file: !117, line: 615, baseType: !92, size: 32, offset: 1344)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !184, file: !117, line: 616, baseType: !217, size: 64, offset: 1376)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !184, file: !117, line: 617, baseType: !217, size: 64, offset: 1440)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !184, file: !117, line: 618, baseType: !217, size: 64, offset: 1504)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !184, file: !117, line: 619, baseType: !217, size: 64, offset: 1568)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !184, file: !117, line: 620, baseType: !217, size: 64, offset: 1632)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !184, file: !117, line: 621, baseType: !92, size: 32, offset: 1696)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !181, file: !117, line: 631, baseType: !249, size: 2880)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !181, file: !117, line: 626, size: 2880, elements: !250)
!250 = !{!251, !255}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !249, file: !117, line: 629, baseType: !252, size: 1920)
!252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 1920, elements: !253)
!253 = !{!254}
!254 = !DISubrange(count: 30)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !249, file: !117, line: 630, baseType: !256, size: 960, offset: 1920)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 960, elements: !253)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !139, file: !117, line: 636, baseType: !258, size: 64, offset: 4032)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !117, line: 93, size: 6336, elements: !260)
!260 = !{!261, !262, !263, !270}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !259, file: !117, line: 94, baseType: !258, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !259, file: !117, line: 95, baseType: !92, size: 32, offset: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !259, file: !117, line: 97, baseType: !264, size: 2048, offset: 128)
!264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 2048, elements: !268)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{null}
!268 = !{!269}
!269 = !DISubrange(count: 32)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !259, file: !117, line: 98, baseType: !271, size: 4160, offset: 2176)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !117, line: 74, size: 4160, elements: !272)
!272 = !{!273, !275, !276, !277}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !271, file: !117, line: 75, baseType: !274, size: 2048)
!274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 2048, elements: !268)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !271, file: !117, line: 76, baseType: !274, size: 2048, offset: 2048)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !271, file: !117, line: 78, baseType: !171, size: 32, offset: 4096)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !271, file: !117, line: 81, baseType: !171, size: 32, offset: 4128)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !139, file: !117, line: 637, baseType: !259, size: 6336, offset: 4096)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !139, file: !117, line: 641, baseType: !280, size: 64, offset: 10432)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{null, !92}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !139, file: !117, line: 646, baseType: !285, size: 192, offset: 10496)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !117, line: 291, size: 192, elements: !286)
!286 = !{!287, !289, !290}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !285, file: !117, line: 293, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !285, file: !117, line: 294, baseType: !92, size: 32, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !285, file: !117, line: 295, baseType: !143, size: 64, offset: 128)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !139, file: !117, line: 648, baseType: !292, size: 4224, offset: 10688)
!292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 4224, elements: !212)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !118, file: !117, line: 199, baseType: !294, size: 64, offset: 512)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DISubroutineType(types: !296)
!296 = !{!137, !138, !55, !297, !92}
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !118, file: !117, line: 202, baseType: !300, size: 64, offset: 576)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{!303, !138, !55, !303, !92}
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !71, line: 114, baseType: !87)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !118, file: !117, line: 203, baseType: !305, size: 64, offset: 640)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DISubroutineType(types: !307)
!307 = !{!92, !138, !55}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !118, file: !117, line: 206, baseType: !127, size: 128, offset: 704)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !118, file: !117, line: 207, baseType: !54, size: 64, offset: 832)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !118, file: !117, line: 208, baseType: !92, size: 32, offset: 896)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !118, file: !117, line: 211, baseType: !312, size: 24, offset: 928)
!312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 24, elements: !212)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !118, file: !117, line: 212, baseType: !314, size: 8, offset: 952)
!314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 8, elements: !172)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !118, file: !117, line: 215, baseType: !127, size: 128, offset: 960)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !118, file: !117, line: 218, baseType: !92, size: 32, offset: 1088)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !118, file: !117, line: 219, baseType: !86, size: 64, offset: 1152)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !118, file: !117, line: 222, baseType: !138, size: 64, offset: 1216)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !118, file: !117, line: 226, baseType: !320, size: 32, offset: 1280)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !71, line: 175, baseType: !321)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !322, line: 12, baseType: !92)
!322 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!323 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !118, file: !117, line: 228, baseType: !217, size: 64, offset: 1312)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !118, file: !117, line: 229, baseType: !92, size: 32, offset: 1376)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "buffered", scope: !110, file: !61, line: 73, baseType: !83, size: 64, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "autosync", scope: !110, file: !61, line: 74, baseType: !83, size: 64, offset: 128)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "fdset", scope: !101, file: !61, line: 83, baseType: !328, size: 320)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !101, file: !61, line: 77, size: 320, elements: !329)
!329 = !{!330, !332, !333, !334, !335}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "fds", scope: !328, file: !61, line: 78, baseType: !331, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !328, file: !61, line: 79, baseType: !331, size: 64, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "numfds", scope: !328, file: !61, line: 80, baseType: !92, size: 32, offset: 128)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !328, file: !61, line: 81, baseType: !83, size: 64, offset: 192)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !328, file: !61, line: 82, baseType: !107, size: 64, offset: 256)
!336 = !DIGlobalVariableExpression(var: !337, expr: !DIExpression())
!337 = distinct !DIGlobalVariable(name: "rioFdsetIO", scope: !2, file: !3, line: 254, type: !59, isLocal: true, isDefinition: true)
!338 = !{i32 2, !"Dwarf Version", i32 4}
!339 = !{i32 2, !"Debug Info Version", i32 3}
!340 = !{i32 1, !"wchar_size", i32 4}
!341 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!342 = distinct !DISubprogram(name: "rioInitWithBuffer", scope: !3, file: !3, line: 100, type: !343, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !346)
!343 = !DISubroutineType(types: !344)
!344 = !{null, !345, !107}
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!346 = !{!347, !348}
!347 = !DILocalVariable(name: "r", arg: 1, scope: !342, file: !3, line: 100, type: !345)
!348 = !DILocalVariable(name: "s", arg: 2, scope: !342, file: !3, line: 100, type: !107)
!349 = !DILocation(line: 100, column: 29, scope: !342)
!350 = !DILocation(line: 100, column: 36, scope: !342)
!351 = !DILocation(line: 101, column: 10, scope: !342)
!352 = !{i64 0, i64 8, !353, i64 8, i64 8, !353, i64 16, i64 8, !353, i64 24, i64 8, !353, i64 32, i64 8, !353, i64 40, i64 8, !357, i64 48, i64 8, !357, i64 56, i64 8, !357, i64 64, i64 8, !353, i64 72, i64 8, !357, i64 64, i64 8, !353, i64 72, i64 8, !357, i64 80, i64 8, !357, i64 64, i64 8, !353, i64 72, i64 8, !353, i64 80, i64 4, !359, i64 88, i64 8, !357, i64 96, i64 8, !353}
!353 = !{!354, !354, i64 0}
!354 = !{!"any pointer", !355, i64 0}
!355 = !{!"omnipotent char", !356, i64 0}
!356 = !{!"Simple C/C++ TBAA"}
!357 = !{!358, !358, i64 0}
!358 = !{!"long", !355, i64 0}
!359 = !{!360, !360, i64 0}
!360 = !{!"int", !355, i64 0}
!361 = !DILocation(line: 102, column: 8, scope: !342)
!362 = !DILocation(line: 102, column: 18, scope: !342)
!363 = !DILocation(line: 102, column: 22, scope: !342)
!364 = !{!355, !355, i64 0}
!365 = !DILocation(line: 103, column: 18, scope: !342)
!366 = !DILocation(line: 103, column: 22, scope: !342)
!367 = !DILocation(line: 104, column: 1, scope: !342)
!368 = distinct !DISubprogram(name: "rioInitWithFile", scope: !3, file: !3, line: 153, type: !369, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !371)
!369 = !DISubroutineType(types: !370)
!370 = !{null, !345, !113}
!371 = !{!372, !373}
!372 = !DILocalVariable(name: "r", arg: 1, scope: !368, file: !3, line: 153, type: !345)
!373 = !DILocalVariable(name: "fp", arg: 2, scope: !368, file: !3, line: 153, type: !113)
!374 = !DILocation(line: 153, column: 27, scope: !368)
!375 = !DILocation(line: 153, column: 36, scope: !368)
!376 = !DILocation(line: 154, column: 10, scope: !368)
!377 = !DILocation(line: 155, column: 8, scope: !368)
!378 = !DILocation(line: 155, column: 16, scope: !368)
!379 = !DILocation(line: 155, column: 19, scope: !368)
!380 = !DILocation(line: 156, column: 16, scope: !368)
!381 = !DILocation(line: 156, column: 25, scope: !368)
!382 = !DILocation(line: 158, column: 1, scope: !368)
!383 = distinct !DISubprogram(name: "rioInitWithFdset", scope: !3, file: !3, line: 266, type: !384, isLocal: false, isDefinition: true, scopeLine: 266, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !386)
!384 = !DISubroutineType(types: !385)
!385 = !{null, !345, !331, !92}
!386 = !{!387, !388, !389, !390}
!387 = !DILocalVariable(name: "r", arg: 1, scope: !383, file: !3, line: 266, type: !345)
!388 = !DILocalVariable(name: "fds", arg: 2, scope: !383, file: !3, line: 266, type: !331)
!389 = !DILocalVariable(name: "numfds", arg: 3, scope: !383, file: !3, line: 266, type: !92)
!390 = !DILocalVariable(name: "j", scope: !383, file: !3, line: 267, type: !92)
!391 = !DILocation(line: 266, column: 28, scope: !383)
!392 = !DILocation(line: 266, column: 36, scope: !383)
!393 = !DILocation(line: 266, column: 45, scope: !383)
!394 = !DILocation(line: 269, column: 10, scope: !383)
!395 = !DILocation(line: 270, column: 43, scope: !383)
!396 = !DILocation(line: 270, column: 42, scope: !383)
!397 = !DILocation(line: 270, column: 23, scope: !383)
!398 = !DILocation(line: 270, column: 11, scope: !383)
!399 = !DILocation(line: 270, column: 21, scope: !383)
!400 = !DILocation(line: 271, column: 25, scope: !383)
!401 = !DILocation(line: 271, column: 17, scope: !383)
!402 = !DILocation(line: 271, column: 23, scope: !383)
!403 = !DILocation(line: 272, column: 24, scope: !383)
!404 = !DILocation(line: 272, column: 28, scope: !383)
!405 = !DILocation(line: 272, column: 5, scope: !383)
!406 = !DILocation(line: 267, column: 9, scope: !383)
!407 = !DILocation(line: 273, column: 10, scope: !408)
!408 = distinct !DILexicalBlock(scope: !383, file: !3, line: 273, column: 5)
!409 = !DILocation(line: 273, column: 19, scope: !410)
!410 = distinct !DILexicalBlock(scope: !408, file: !3, line: 273, column: 5)
!411 = !DILocation(line: 273, column: 5, scope: !408)
!412 = !DILocation(line: 273, column: 46, scope: !410)
!413 = !DILocation(line: 273, column: 34, scope: !410)
!414 = !DILocation(line: 273, column: 55, scope: !410)
!415 = !DILocation(line: 273, column: 30, scope: !410)
!416 = !DILocation(line: 273, column: 5, scope: !410)
!417 = distinct !{!417, !411, !418}
!418 = !DILocation(line: 273, column: 57, scope: !408)
!419 = distinct !{!419, !420}
!420 = !{!"llvm.loop.unroll.disable"}
!421 = !DILocation(line: 274, column: 17, scope: !383)
!422 = !DILocation(line: 274, column: 24, scope: !383)
!423 = !DILocation(line: 275, column: 17, scope: !383)
!424 = !DILocation(line: 275, column: 21, scope: !383)
!425 = !DILocation(line: 276, column: 23, scope: !383)
!426 = !DILocation(line: 276, column: 17, scope: !383)
!427 = !DILocation(line: 276, column: 21, scope: !383)
!428 = !DILocation(line: 277, column: 1, scope: !383)
!429 = distinct !DISubprogram(name: "rioFreeFdset", scope: !3, file: !3, line: 280, type: !430, isLocal: false, isDefinition: true, scopeLine: 280, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !432)
!430 = !DISubroutineType(types: !431)
!431 = !{null, !345}
!432 = !{!433}
!433 = !DILocalVariable(name: "r", arg: 1, scope: !429, file: !3, line: 280, type: !345)
!434 = !DILocation(line: 280, column: 24, scope: !429)
!435 = !DILocation(line: 281, column: 17, scope: !429)
!436 = !DILocation(line: 281, column: 23, scope: !429)
!437 = !DILocation(line: 281, column: 5, scope: !429)
!438 = !DILocation(line: 282, column: 23, scope: !429)
!439 = !DILocation(line: 282, column: 5, scope: !429)
!440 = !DILocation(line: 283, column: 25, scope: !429)
!441 = !DILocation(line: 283, column: 5, scope: !429)
!442 = !DILocation(line: 284, column: 1, scope: !429)
!443 = distinct !DISubprogram(name: "rioGenericUpdateChecksum", scope: !3, file: !3, line: 290, type: !444, isLocal: false, isDefinition: true, scopeLine: 290, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !446)
!444 = !DISubroutineType(types: !445)
!445 = !{null, !345, !77, !68}
!446 = !{!447, !448, !449}
!447 = !DILocalVariable(name: "r", arg: 1, scope: !443, file: !3, line: 290, type: !345)
!448 = !DILocalVariable(name: "buf", arg: 2, scope: !443, file: !3, line: 290, type: !77)
!449 = !DILocalVariable(name: "len", arg: 3, scope: !443, file: !3, line: 290, type: !68)
!450 = !DILocation(line: 290, column: 36, scope: !443)
!451 = !DILocation(line: 290, column: 51, scope: !443)
!452 = !DILocation(line: 290, column: 63, scope: !443)
!453 = !DILocation(line: 291, column: 25, scope: !443)
!454 = !{!455, !358, i64 40}
!455 = !{!"_rio", !354, i64 0, !354, i64 8, !354, i64 16, !354, i64 24, !354, i64 32, !358, i64 40, !358, i64 48, !358, i64 56, !355, i64 64}
!456 = !DILocation(line: 291, column: 16, scope: !443)
!457 = !DILocation(line: 291, column: 14, scope: !443)
!458 = !DILocation(line: 292, column: 1, scope: !443)
!459 = distinct !DISubprogram(name: "rioSetAutoSync", scope: !3, file: !3, line: 302, type: !460, isLocal: false, isDefinition: true, scopeLine: 302, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !462)
!460 = !DISubroutineType(types: !461)
!461 = !{null, !345, !83}
!462 = !{!463, !464}
!463 = !DILocalVariable(name: "r", arg: 1, scope: !459, file: !3, line: 302, type: !345)
!464 = !DILocalVariable(name: "bytes", arg: 2, scope: !459, file: !3, line: 302, type: !83)
!465 = !DILocation(line: 302, column: 26, scope: !459)
!466 = !DILocation(line: 302, column: 35, scope: !459)
!467 = !DILocation(line: 303, column: 5, scope: !459)
!468 = !{!455, !354, i64 0}
!469 = !DILocation(line: 304, column: 16, scope: !459)
!470 = !DILocation(line: 304, column: 25, scope: !459)
!471 = !DILocation(line: 305, column: 1, scope: !459)
!472 = distinct !DISubprogram(name: "rioWriteBulkCount", scope: !3, file: !3, line: 313, type: !473, isLocal: false, isDefinition: true, scopeLine: 313, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !475)
!473 = !DISubroutineType(types: !474)
!474 = !{!68, !345, !20, !87}
!475 = !{!476, !477, !478, !479, !483}
!476 = !DILocalVariable(name: "r", arg: 1, scope: !472, file: !3, line: 313, type: !345)
!477 = !DILocalVariable(name: "prefix", arg: 2, scope: !472, file: !3, line: 313, type: !20)
!478 = !DILocalVariable(name: "count", arg: 3, scope: !472, file: !3, line: 313, type: !87)
!479 = !DILocalVariable(name: "cbuf", scope: !472, file: !3, line: 314, type: !480)
!480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 1024, elements: !481)
!481 = !{!482}
!482 = !DISubrange(count: 128)
!483 = !DILocalVariable(name: "clen", scope: !472, file: !3, line: 315, type: !92)
!484 = !DILocation(line: 313, column: 31, scope: !472)
!485 = !DILocation(line: 313, column: 39, scope: !472)
!486 = !DILocation(line: 313, column: 52, scope: !472)
!487 = !DILocation(line: 314, column: 5, scope: !472)
!488 = !DILocation(line: 314, column: 10, scope: !472)
!489 = !DILocation(line: 317, column: 13, scope: !472)
!490 = !DILocation(line: 318, column: 28, scope: !472)
!491 = !DILocation(line: 318, column: 14, scope: !472)
!492 = !DILocation(line: 318, column: 13, scope: !472)
!493 = !DILocation(line: 315, column: 9, scope: !472)
!494 = !DILocation(line: 319, column: 14, scope: !472)
!495 = !DILocation(line: 319, column: 5, scope: !472)
!496 = !DILocation(line: 319, column: 18, scope: !472)
!497 = !DILocation(line: 320, column: 14, scope: !472)
!498 = !DILocation(line: 320, column: 5, scope: !472)
!499 = !DILocation(line: 320, column: 18, scope: !472)
!500 = !DILocation(line: 321, column: 25, scope: !501)
!501 = distinct !DILexicalBlock(scope: !472, file: !3, line: 321, column: 9)
!502 = !DILocalVariable(name: "r", arg: 1, scope: !503, file: !61, line: 93, type: !345)
!503 = distinct !DISubprogram(name: "rioWrite", scope: !61, file: !61, line: 93, type: !504, isLocal: true, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !506)
!504 = !DISubroutineType(types: !505)
!505 = !{!68, !345, !77, !68}
!506 = !{!502, !507, !508, !509}
!507 = !DILocalVariable(name: "buf", arg: 2, scope: !503, file: !61, line: 93, type: !77)
!508 = !DILocalVariable(name: "len", arg: 3, scope: !503, file: !61, line: 93, type: !68)
!509 = !DILocalVariable(name: "bytes_to_write", scope: !510, file: !61, line: 95, type: !68)
!510 = distinct !DILexicalBlock(scope: !503, file: !61, line: 94, column: 17)
!511 = !DILocation(line: 93, column: 36, scope: !503, inlinedAt: !512)
!512 = distinct !DILocation(line: 321, column: 9, scope: !501)
!513 = !DILocation(line: 93, column: 51, scope: !503, inlinedAt: !512)
!514 = !DILocation(line: 93, column: 63, scope: !503, inlinedAt: !512)
!515 = !DILocation(line: 94, column: 5, scope: !503, inlinedAt: !512)
!516 = !DILocation(line: 95, column: 37, scope: !510, inlinedAt: !512)
!517 = !{!455, !358, i64 56}
!518 = !DILocation(line: 95, column: 34, scope: !510, inlinedAt: !512)
!519 = !DILocation(line: 95, column: 58, scope: !510, inlinedAt: !512)
!520 = !DILocation(line: 95, column: 85, scope: !510, inlinedAt: !512)
!521 = !DILocation(line: 95, column: 33, scope: !510, inlinedAt: !512)
!522 = !DILocation(line: 95, column: 16, scope: !510, inlinedAt: !512)
!523 = !DILocation(line: 96, column: 16, scope: !524, inlinedAt: !512)
!524 = distinct !DILexicalBlock(scope: !510, file: !61, line: 96, column: 13)
!525 = !{!455, !354, i64 32}
!526 = !DILocation(line: 96, column: 13, scope: !524, inlinedAt: !512)
!527 = !DILocation(line: 96, column: 13, scope: !510, inlinedAt: !512)
!528 = !DILocation(line: 96, column: 30, scope: !524, inlinedAt: !512)
!529 = !DILocation(line: 97, column: 16, scope: !530, inlinedAt: !512)
!530 = distinct !DILexicalBlock(scope: !510, file: !61, line: 97, column: 13)
!531 = !{!455, !354, i64 8}
!532 = !DILocation(line: 97, column: 13, scope: !530, inlinedAt: !512)
!533 = !DILocation(line: 97, column: 44, scope: !530, inlinedAt: !512)
!534 = !DILocation(line: 97, column: 13, scope: !510, inlinedAt: !512)
!535 = !DILocation(line: 99, column: 26, scope: !510, inlinedAt: !512)
!536 = !DILocation(line: 100, column: 13, scope: !510, inlinedAt: !512)
!537 = !DILocation(line: 101, column: 28, scope: !510, inlinedAt: !512)
!538 = !{!455, !358, i64 48}
!539 = !DILocation(line: 102, column: 5, scope: !503, inlinedAt: !512)
!540 = !DILocation(line: 98, column: 13, scope: !530, inlinedAt: !512)
!541 = !DILocation(line: 321, column: 37, scope: !501)
!542 = !DILocation(line: 104, column: 1, scope: !503, inlinedAt: !512)
!543 = !DILocation(line: 321, column: 9, scope: !472)
!544 = !DILocation(line: 0, scope: !472)
!545 = !DILocation(line: 323, column: 1, scope: !472)
!546 = distinct !DISubprogram(name: "rioWriteBulkString", scope: !3, file: !3, line: 326, type: !547, isLocal: false, isDefinition: true, scopeLine: 326, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !549)
!547 = !DISubroutineType(types: !548)
!548 = !{!68, !345, !297, !68}
!549 = !{!550, !551, !552, !553}
!550 = !DILocalVariable(name: "r", arg: 1, scope: !546, file: !3, line: 326, type: !345)
!551 = !DILocalVariable(name: "buf", arg: 2, scope: !546, file: !3, line: 326, type: !297)
!552 = !DILocalVariable(name: "len", arg: 3, scope: !546, file: !3, line: 326, type: !68)
!553 = !DILocalVariable(name: "nwritten", scope: !546, file: !3, line: 327, type: !68)
!554 = !DILocation(line: 326, column: 32, scope: !546)
!555 = !DILocation(line: 326, column: 47, scope: !546)
!556 = !DILocation(line: 326, column: 59, scope: !546)
!557 = !DILocation(line: 329, column: 21, scope: !558)
!558 = distinct !DILexicalBlock(scope: !546, file: !3, line: 329, column: 9)
!559 = !DILocation(line: 327, column: 12, scope: !546)
!560 = !DILocation(line: 329, column: 51, scope: !558)
!561 = !DILocation(line: 329, column: 9, scope: !546)
!562 = !DILocation(line: 330, column: 13, scope: !563)
!563 = distinct !DILexicalBlock(scope: !546, file: !3, line: 330, column: 9)
!564 = !DILocation(line: 330, column: 17, scope: !563)
!565 = !DILocation(line: 93, column: 36, scope: !503, inlinedAt: !566)
!566 = distinct !DILocation(line: 330, column: 20, scope: !563)
!567 = !DILocation(line: 93, column: 51, scope: !503, inlinedAt: !566)
!568 = !DILocation(line: 93, column: 63, scope: !503, inlinedAt: !566)
!569 = !DILocation(line: 94, column: 5, scope: !503, inlinedAt: !566)
!570 = !DILocation(line: 95, column: 37, scope: !510, inlinedAt: !566)
!571 = !DILocation(line: 95, column: 34, scope: !510, inlinedAt: !566)
!572 = !DILocation(line: 95, column: 58, scope: !510, inlinedAt: !566)
!573 = !DILocation(line: 95, column: 85, scope: !510, inlinedAt: !566)
!574 = !DILocation(line: 95, column: 33, scope: !510, inlinedAt: !566)
!575 = !DILocation(line: 95, column: 16, scope: !510, inlinedAt: !566)
!576 = !DILocation(line: 96, column: 16, scope: !524, inlinedAt: !566)
!577 = !DILocation(line: 96, column: 13, scope: !524, inlinedAt: !566)
!578 = !DILocation(line: 96, column: 13, scope: !510, inlinedAt: !566)
!579 = !DILocation(line: 96, column: 30, scope: !524, inlinedAt: !566)
!580 = !DILocation(line: 97, column: 16, scope: !530, inlinedAt: !566)
!581 = !DILocation(line: 97, column: 13, scope: !530, inlinedAt: !566)
!582 = !DILocation(line: 97, column: 44, scope: !530, inlinedAt: !566)
!583 = !DILocation(line: 97, column: 13, scope: !510, inlinedAt: !566)
!584 = !DILocation(line: 99, column: 26, scope: !510, inlinedAt: !566)
!585 = !DILocation(line: 100, column: 13, scope: !510, inlinedAt: !566)
!586 = !DILocation(line: 101, column: 28, scope: !510, inlinedAt: !566)
!587 = !DILocation(line: 102, column: 5, scope: !503, inlinedAt: !566)
!588 = !DILocation(line: 103, column: 5, scope: !503, inlinedAt: !566)
!589 = !DILocation(line: 104, column: 1, scope: !503, inlinedAt: !566)
!590 = !DILocation(line: 330, column: 9, scope: !546)
!591 = !DILocation(line: 98, column: 13, scope: !530, inlinedAt: !566)
!592 = !DILocation(line: 330, column: 46, scope: !563)
!593 = !DILocation(line: 93, column: 36, scope: !503, inlinedAt: !594)
!594 = distinct !DILocation(line: 331, column: 9, scope: !595)
!595 = distinct !DILexicalBlock(scope: !546, file: !3, line: 331, column: 9)
!596 = !DILocation(line: 93, column: 51, scope: !503, inlinedAt: !594)
!597 = !DILocation(line: 93, column: 63, scope: !503, inlinedAt: !594)
!598 = !DILocation(line: 94, column: 5, scope: !503, inlinedAt: !594)
!599 = !DILocation(line: 95, column: 37, scope: !510, inlinedAt: !594)
!600 = !DILocation(line: 95, column: 34, scope: !510, inlinedAt: !594)
!601 = !DILocation(line: 95, column: 58, scope: !510, inlinedAt: !594)
!602 = !DILocation(line: 95, column: 85, scope: !510, inlinedAt: !594)
!603 = !DILocation(line: 95, column: 33, scope: !510, inlinedAt: !594)
!604 = !DILocation(line: 95, column: 16, scope: !510, inlinedAt: !594)
!605 = !DILocation(line: 96, column: 16, scope: !524, inlinedAt: !594)
!606 = !DILocation(line: 96, column: 13, scope: !524, inlinedAt: !594)
!607 = !DILocation(line: 96, column: 13, scope: !510, inlinedAt: !594)
!608 = !DILocation(line: 96, column: 30, scope: !524, inlinedAt: !594)
!609 = !DILocation(line: 97, column: 16, scope: !530, inlinedAt: !594)
!610 = !DILocation(line: 97, column: 13, scope: !530, inlinedAt: !594)
!611 = !DILocation(line: 97, column: 44, scope: !530, inlinedAt: !594)
!612 = !DILocation(line: 97, column: 13, scope: !510, inlinedAt: !594)
!613 = !DILocation(line: 99, column: 26, scope: !510, inlinedAt: !594)
!614 = !DILocation(line: 100, column: 13, scope: !510, inlinedAt: !594)
!615 = !DILocation(line: 101, column: 28, scope: !510, inlinedAt: !594)
!616 = !DILocation(line: 102, column: 5, scope: !503, inlinedAt: !594)
!617 = !DILocation(line: 98, column: 13, scope: !530, inlinedAt: !594)
!618 = !DILocation(line: 104, column: 1, scope: !503, inlinedAt: !594)
!619 = !DILocation(line: 331, column: 9, scope: !546)
!620 = !DILocation(line: 331, column: 36, scope: !595)
!621 = !DILocation(line: 103, column: 5, scope: !503, inlinedAt: !594)
!622 = !DILocation(line: 332, column: 20, scope: !546)
!623 = !DILocation(line: 332, column: 24, scope: !546)
!624 = !DILocation(line: 332, column: 5, scope: !546)
!625 = !DILocation(line: 0, scope: !546)
!626 = !DILocation(line: 0, scope: !558)
!627 = !DILocation(line: 333, column: 1, scope: !546)
!628 = distinct !DISubprogram(name: "rioWriteBulkLongLong", scope: !3, file: !3, line: 336, type: !629, isLocal: false, isDefinition: true, scopeLine: 336, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !632)
!629 = !DISubroutineType(types: !630)
!630 = !{!68, !345, !631}
!631 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!632 = !{!633, !634, !635, !637}
!633 = !DILocalVariable(name: "r", arg: 1, scope: !628, file: !3, line: 336, type: !345)
!634 = !DILocalVariable(name: "l", arg: 2, scope: !628, file: !3, line: 336, type: !631)
!635 = !DILocalVariable(name: "lbuf", scope: !628, file: !3, line: 337, type: !636)
!636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 256, elements: !268)
!637 = !DILocalVariable(name: "llen", scope: !628, file: !3, line: 338, type: !39)
!638 = !DILocation(line: 336, column: 34, scope: !628)
!639 = !DILocation(line: 336, column: 47, scope: !628)
!640 = !DILocation(line: 337, column: 5, scope: !628)
!641 = !DILocation(line: 337, column: 10, scope: !628)
!642 = !DILocation(line: 340, column: 12, scope: !628)
!643 = !DILocation(line: 338, column: 18, scope: !628)
!644 = !DILocation(line: 341, column: 38, scope: !628)
!645 = !DILocation(line: 341, column: 12, scope: !628)
!646 = !DILocation(line: 342, column: 1, scope: !628)
!647 = !DILocation(line: 341, column: 5, scope: !628)
!648 = distinct !DISubprogram(name: "rioWriteBulkDouble", scope: !3, file: !3, line: 345, type: !649, isLocal: false, isDefinition: true, scopeLine: 345, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !652)
!649 = !DISubroutineType(types: !650)
!650 = !{!68, !345, !651}
!651 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!652 = !{!653, !654, !655, !656}
!653 = !DILocalVariable(name: "r", arg: 1, scope: !648, file: !3, line: 345, type: !345)
!654 = !DILocalVariable(name: "d", arg: 2, scope: !648, file: !3, line: 345, type: !651)
!655 = !DILocalVariable(name: "dbuf", scope: !648, file: !3, line: 346, type: !480)
!656 = !DILocalVariable(name: "dlen", scope: !648, file: !3, line: 347, type: !39)
!657 = !DILocation(line: 345, column: 32, scope: !648)
!658 = !DILocation(line: 345, column: 42, scope: !648)
!659 = !DILocation(line: 346, column: 5, scope: !648)
!660 = !DILocation(line: 346, column: 10, scope: !648)
!661 = !DILocation(line: 349, column: 12, scope: !648)
!662 = !DILocation(line: 347, column: 18, scope: !648)
!663 = !DILocation(line: 350, column: 38, scope: !648)
!664 = !DILocation(line: 350, column: 12, scope: !648)
!665 = !DILocation(line: 351, column: 1, scope: !648)
!666 = !DILocation(line: 350, column: 5, scope: !648)
!667 = distinct !DISubprogram(name: "rioBufferRead", scope: !3, file: !3, line: 68, type: !668, isLocal: true, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !670)
!668 = !DISubroutineType(types: !669)
!669 = !{!68, !345, !55, !68}
!670 = !{!671, !672, !673}
!671 = !DILocalVariable(name: "r", arg: 1, scope: !667, file: !3, line: 68, type: !345)
!672 = !DILocalVariable(name: "buf", arg: 2, scope: !667, file: !3, line: 68, type: !55)
!673 = !DILocalVariable(name: "len", arg: 3, scope: !667, file: !3, line: 68, type: !68)
!674 = !DILocation(line: 68, column: 34, scope: !667)
!675 = !DILocation(line: 68, column: 43, scope: !667)
!676 = !DILocation(line: 68, column: 55, scope: !667)
!677 = !DILocation(line: 69, column: 19, scope: !678)
!678 = distinct !DILexicalBlock(scope: !667, file: !3, line: 69, column: 9)
!679 = !DILocation(line: 69, column: 29, scope: !678)
!680 = !DILocalVariable(name: "s", arg: 1, scope: !681, file: !8, line: 87, type: !684)
!681 = distinct !DISubprogram(name: "sdslen", scope: !8, file: !8, line: 87, type: !682, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !685)
!682 = !DISubroutineType(types: !683)
!683 = !{!68, !684}
!684 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!685 = !{!680, !686}
!686 = !DILocalVariable(name: "flags", scope: !681, file: !8, line: 88, type: !15)
!687 = !DILocation(line: 87, column: 39, scope: !681, inlinedAt: !688)
!688 = distinct !DILocation(line: 69, column: 9, scope: !678)
!689 = !DILocation(line: 88, column: 27, scope: !681, inlinedAt: !688)
!690 = !DILocation(line: 88, column: 19, scope: !681, inlinedAt: !688)
!691 = !DILocation(line: 89, column: 5, scope: !681, inlinedAt: !688)
!692 = !DILocation(line: 91, column: 20, scope: !693, inlinedAt: !688)
!693 = distinct !DILexicalBlock(scope: !681, file: !8, line: 89, column: 33)
!694 = !DILocation(line: 91, column: 13, scope: !693, inlinedAt: !688)
!695 = !DILocation(line: 93, column: 20, scope: !693, inlinedAt: !688)
!696 = !DILocation(line: 93, column: 34, scope: !693, inlinedAt: !688)
!697 = !DILocation(line: 93, column: 13, scope: !693, inlinedAt: !688)
!698 = !DILocation(line: 95, column: 20, scope: !693, inlinedAt: !688)
!699 = !DILocation(line: 95, column: 35, scope: !693, inlinedAt: !688)
!700 = !{!701, !701, i64 0}
!701 = !{!"short", !355, i64 0}
!702 = !DILocation(line: 95, column: 13, scope: !693, inlinedAt: !688)
!703 = !DILocation(line: 97, column: 20, scope: !693, inlinedAt: !688)
!704 = !DILocation(line: 97, column: 35, scope: !693, inlinedAt: !688)
!705 = !DILocation(line: 97, column: 13, scope: !693, inlinedAt: !688)
!706 = !DILocation(line: 99, column: 20, scope: !693, inlinedAt: !688)
!707 = !DILocation(line: 99, column: 35, scope: !693, inlinedAt: !688)
!708 = !DILocation(line: 99, column: 13, scope: !693, inlinedAt: !688)
!709 = !DILocation(line: 0, scope: !693, inlinedAt: !688)
!710 = !DILocation(line: 0, scope: !678)
!711 = !DILocation(line: 102, column: 1, scope: !681, inlinedAt: !688)
!712 = !DILocation(line: 69, column: 47, scope: !678)
!713 = !DILocation(line: 69, column: 33, scope: !678)
!714 = !DILocation(line: 69, column: 51, scope: !678)
!715 = !DILocation(line: 69, column: 9, scope: !667)
!716 = !DILocation(line: 71, column: 32, scope: !667)
!717 = !DILocation(line: 71, column: 5, scope: !667)
!718 = !DILocation(line: 72, column: 22, scope: !667)
!719 = !DILocation(line: 73, column: 5, scope: !667)
!720 = !DILocation(line: 0, scope: !667)
!721 = !DILocation(line: 74, column: 1, scope: !667)
!722 = distinct !DISubprogram(name: "rioBufferWrite", scope: !3, file: !3, line: 61, type: !504, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !723)
!723 = !{!724, !725, !726}
!724 = !DILocalVariable(name: "r", arg: 1, scope: !722, file: !3, line: 61, type: !345)
!725 = !DILocalVariable(name: "buf", arg: 2, scope: !722, file: !3, line: 61, type: !77)
!726 = !DILocalVariable(name: "len", arg: 3, scope: !722, file: !3, line: 61, type: !68)
!727 = !DILocation(line: 61, column: 35, scope: !722)
!728 = !DILocation(line: 61, column: 50, scope: !722)
!729 = !DILocation(line: 61, column: 62, scope: !722)
!730 = !DILocation(line: 62, column: 37, scope: !722)
!731 = !DILocation(line: 62, column: 47, scope: !722)
!732 = !DILocation(line: 62, column: 24, scope: !722)
!733 = !DILocation(line: 62, column: 22, scope: !722)
!734 = !DILocation(line: 63, column: 18, scope: !722)
!735 = !DILocation(line: 63, column: 22, scope: !722)
!736 = !DILocation(line: 64, column: 5, scope: !722)
!737 = distinct !DISubprogram(name: "rioBufferTell", scope: !3, file: !3, line: 77, type: !738, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !740)
!738 = !DISubroutineType(types: !739)
!739 = !{!83, !345}
!740 = !{!741}
!741 = !DILocalVariable(name: "r", arg: 1, scope: !737, file: !3, line: 77, type: !345)
!742 = !DILocation(line: 77, column: 33, scope: !737)
!743 = !DILocation(line: 78, column: 25, scope: !737)
!744 = !DILocation(line: 78, column: 5, scope: !737)
!745 = distinct !DISubprogram(name: "rioBufferFlush", scope: !3, file: !3, line: 83, type: !746, isLocal: true, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !748)
!746 = !DISubroutineType(types: !747)
!747 = !{!92, !345}
!748 = !{!749}
!749 = !DILocalVariable(name: "r", arg: 1, scope: !745, file: !3, line: 83, type: !345)
!750 = !DILocation(line: 83, column: 32, scope: !745)
!751 = !DILocation(line: 85, column: 5, scope: !745)
!752 = distinct !DISubprogram(name: "rioFileRead", scope: !3, file: !3, line: 126, type: !668, isLocal: true, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !753)
!753 = !{!754, !755, !756}
!754 = !DILocalVariable(name: "r", arg: 1, scope: !752, file: !3, line: 126, type: !345)
!755 = !DILocalVariable(name: "buf", arg: 2, scope: !752, file: !3, line: 126, type: !55)
!756 = !DILocalVariable(name: "len", arg: 3, scope: !752, file: !3, line: 126, type: !68)
!757 = !DILocation(line: 126, column: 32, scope: !752)
!758 = !DILocation(line: 126, column: 41, scope: !752)
!759 = !DILocation(line: 126, column: 53, scope: !752)
!760 = !DILocation(line: 127, column: 31, scope: !752)
!761 = !DILocation(line: 127, column: 39, scope: !752)
!762 = !DILocation(line: 127, column: 12, scope: !752)
!763 = !DILocation(line: 127, column: 5, scope: !752)
!764 = distinct !DISubprogram(name: "rioFileWrite", scope: !3, file: !3, line: 109, type: !504, isLocal: true, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !765)
!765 = !{!766, !767, !768, !769}
!766 = !DILocalVariable(name: "r", arg: 1, scope: !764, file: !3, line: 109, type: !345)
!767 = !DILocalVariable(name: "buf", arg: 2, scope: !764, file: !3, line: 109, type: !77)
!768 = !DILocalVariable(name: "len", arg: 3, scope: !764, file: !3, line: 109, type: !68)
!769 = !DILocalVariable(name: "retval", scope: !764, file: !3, line: 110, type: !68)
!770 = !DILocation(line: 109, column: 33, scope: !764)
!771 = !DILocation(line: 109, column: 48, scope: !764)
!772 = !DILocation(line: 109, column: 60, scope: !764)
!773 = !DILocation(line: 112, column: 34, scope: !764)
!774 = !DILocation(line: 112, column: 42, scope: !764)
!775 = !DILocation(line: 112, column: 14, scope: !764)
!776 = !DILocation(line: 110, column: 12, scope: !764)
!777 = !DILocation(line: 113, column: 16, scope: !764)
!778 = !DILocation(line: 113, column: 25, scope: !764)
!779 = !DILocation(line: 115, column: 20, scope: !780)
!780 = distinct !DILexicalBlock(scope: !764, file: !3, line: 115, column: 9)
!781 = !DILocation(line: 115, column: 9, scope: !780)
!782 = !DILocation(line: 115, column: 29, scope: !780)
!783 = !DILocation(line: 116, column: 29, scope: !780)
!784 = !DILocation(line: 115, column: 9, scope: !764)
!785 = !DILocation(line: 118, column: 27, scope: !786)
!786 = distinct !DILexicalBlock(scope: !780, file: !3, line: 117, column: 5)
!787 = !DILocation(line: 118, column: 9, scope: !786)
!788 = !DILocation(line: 119, column: 39, scope: !786)
!789 = !DILocation(line: 119, column: 21, scope: !786)
!790 = !DILocation(line: 119, column: 9, scope: !786)
!791 = !DILocation(line: 120, column: 29, scope: !786)
!792 = !DILocation(line: 121, column: 5, scope: !786)
!793 = !DILocation(line: 122, column: 5, scope: !764)
!794 = distinct !DISubprogram(name: "rioFileTell", scope: !3, file: !3, line: 131, type: !738, isLocal: true, isDefinition: true, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !795)
!795 = !{!796}
!796 = !DILocalVariable(name: "r", arg: 1, scope: !794, file: !3, line: 131, type: !345)
!797 = !DILocation(line: 131, column: 31, scope: !794)
!798 = !DILocation(line: 132, column: 22, scope: !794)
!799 = !DILocation(line: 132, column: 30, scope: !794)
!800 = !DILocation(line: 132, column: 12, scope: !794)
!801 = !DILocation(line: 132, column: 5, scope: !794)
!802 = distinct !DISubprogram(name: "rioFileFlush", scope: !3, file: !3, line: 137, type: !746, isLocal: true, isDefinition: true, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !803)
!803 = !{!804}
!804 = !DILocalVariable(name: "r", arg: 1, scope: !802, file: !3, line: 137, type: !345)
!805 = !DILocation(line: 137, column: 30, scope: !802)
!806 = !DILocation(line: 138, column: 23, scope: !802)
!807 = !DILocation(line: 138, column: 31, scope: !802)
!808 = !DILocation(line: 138, column: 13, scope: !802)
!809 = !DILocation(line: 138, column: 35, scope: !802)
!810 = !DILocation(line: 138, column: 12, scope: !802)
!811 = !DILocation(line: 138, column: 5, scope: !802)
!812 = distinct !DISubprogram(name: "rioFdsetRead", scope: !3, file: !3, line: 234, type: !668, isLocal: true, isDefinition: true, scopeLine: 234, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !813)
!813 = !{!814, !815, !816}
!814 = !DILocalVariable(name: "r", arg: 1, scope: !812, file: !3, line: 234, type: !345)
!815 = !DILocalVariable(name: "buf", arg: 2, scope: !812, file: !3, line: 234, type: !55)
!816 = !DILocalVariable(name: "len", arg: 3, scope: !812, file: !3, line: 234, type: !68)
!817 = !DILocation(line: 234, column: 33, scope: !812)
!818 = !DILocation(line: 234, column: 42, scope: !812)
!819 = !DILocation(line: 234, column: 54, scope: !812)
!820 = !DILocation(line: 238, column: 5, scope: !812)
!821 = distinct !DISubprogram(name: "rioFdsetWrite", scope: !3, file: !3, line: 169, type: !504, isLocal: true, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !822)
!822 = !{!823, !824, !825, !826, !828, !829, !830, !831, !833, !834}
!823 = !DILocalVariable(name: "r", arg: 1, scope: !821, file: !3, line: 169, type: !345)
!824 = !DILocalVariable(name: "buf", arg: 2, scope: !821, file: !3, line: 169, type: !77)
!825 = !DILocalVariable(name: "len", arg: 3, scope: !821, file: !3, line: 169, type: !68)
!826 = !DILocalVariable(name: "retval", scope: !821, file: !3, line: 170, type: !827)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !84, line: 200, baseType: !137)
!828 = !DILocalVariable(name: "j", scope: !821, file: !3, line: 171, type: !92)
!829 = !DILocalVariable(name: "p", scope: !821, file: !3, line: 172, type: !54)
!830 = !DILocalVariable(name: "doflush", scope: !821, file: !3, line: 173, type: !92)
!831 = !DILocalVariable(name: "count", scope: !832, file: !3, line: 192, type: !68)
!832 = distinct !DILexicalBlock(scope: !821, file: !3, line: 191, column: 16)
!833 = !DILocalVariable(name: "broken", scope: !832, file: !3, line: 193, type: !92)
!834 = !DILocalVariable(name: "nwritten", scope: !835, file: !3, line: 203, type: !68)
!835 = distinct !DILexicalBlock(scope: !836, file: !3, line: 194, column: 50)
!836 = distinct !DILexicalBlock(scope: !837, file: !3, line: 194, column: 9)
!837 = distinct !DILexicalBlock(scope: !832, file: !3, line: 194, column: 9)
!838 = !DILocation(line: 169, column: 34, scope: !821)
!839 = !DILocation(line: 169, column: 49, scope: !821)
!840 = !DILocation(line: 169, column: 61, scope: !821)
!841 = !DILocation(line: 172, column: 20, scope: !821)
!842 = !DILocation(line: 173, column: 39, scope: !821)
!843 = !DILocation(line: 177, column: 9, scope: !821)
!844 = !DILocation(line: 178, column: 49, scope: !845)
!845 = distinct !DILexicalBlock(scope: !846, file: !3, line: 177, column: 14)
!846 = distinct !DILexicalBlock(scope: !821, file: !3, line: 177, column: 9)
!847 = !DILocation(line: 178, column: 27, scope: !845)
!848 = !DILocation(line: 178, column: 25, scope: !845)
!849 = !DILocation(line: 87, column: 39, scope: !681, inlinedAt: !850)
!850 = distinct !DILocation(line: 180, column: 13, scope: !851)
!851 = distinct !DILexicalBlock(scope: !845, file: !3, line: 180, column: 13)
!852 = !DILocation(line: 88, column: 27, scope: !681, inlinedAt: !850)
!853 = !DILocation(line: 88, column: 19, scope: !681, inlinedAt: !850)
!854 = !DILocation(line: 89, column: 5, scope: !681, inlinedAt: !850)
!855 = !DILocation(line: 95, column: 20, scope: !693, inlinedAt: !850)
!856 = !DILocation(line: 95, column: 35, scope: !693, inlinedAt: !850)
!857 = !DILocation(line: 95, column: 13, scope: !693, inlinedAt: !850)
!858 = !DILocation(line: 97, column: 20, scope: !693, inlinedAt: !850)
!859 = !DILocation(line: 97, column: 35, scope: !693, inlinedAt: !850)
!860 = !DILocation(line: 97, column: 13, scope: !693, inlinedAt: !850)
!861 = !DILocation(line: 99, column: 20, scope: !693, inlinedAt: !850)
!862 = !DILocation(line: 99, column: 35, scope: !693, inlinedAt: !850)
!863 = !DILocation(line: 99, column: 13, scope: !693, inlinedAt: !850)
!864 = !DILocation(line: 0, scope: !851)
!865 = !DILocation(line: 102, column: 1, scope: !681, inlinedAt: !850)
!866 = !DILocation(line: 180, column: 13, scope: !845)
!867 = !DILocation(line: 0, scope: !693, inlinedAt: !850)
!868 = !DILocation(line: 180, column: 37, scope: !851)
!869 = !DILocation(line: 173, column: 9, scope: !821)
!870 = !DILocation(line: 180, column: 56, scope: !851)
!871 = !DILocation(line: 183, column: 9, scope: !821)
!872 = !DILocation(line: 173, column: 24, scope: !821)
!873 = !DILocation(line: 173, column: 32, scope: !821)
!874 = !DILocation(line: 184, column: 42, scope: !875)
!875 = distinct !DILexicalBlock(scope: !876, file: !3, line: 183, column: 18)
!876 = distinct !DILexicalBlock(scope: !821, file: !3, line: 183, column: 9)
!877 = !DILocation(line: 88, column: 27, scope: !681, inlinedAt: !878)
!878 = distinct !DILocation(line: 185, column: 15, scope: !875)
!879 = !DILocation(line: 87, column: 39, scope: !681, inlinedAt: !878)
!880 = !DILocation(line: 88, column: 19, scope: !681, inlinedAt: !878)
!881 = !DILocation(line: 89, column: 5, scope: !681, inlinedAt: !878)
!882 = !DILocation(line: 91, column: 20, scope: !693, inlinedAt: !878)
!883 = !DILocation(line: 91, column: 13, scope: !693, inlinedAt: !878)
!884 = !DILocation(line: 93, column: 20, scope: !693, inlinedAt: !878)
!885 = !DILocation(line: 93, column: 34, scope: !693, inlinedAt: !878)
!886 = !DILocation(line: 93, column: 13, scope: !693, inlinedAt: !878)
!887 = !DILocation(line: 95, column: 20, scope: !693, inlinedAt: !878)
!888 = !DILocation(line: 95, column: 35, scope: !693, inlinedAt: !878)
!889 = !DILocation(line: 95, column: 13, scope: !693, inlinedAt: !878)
!890 = !DILocation(line: 97, column: 20, scope: !693, inlinedAt: !878)
!891 = !DILocation(line: 97, column: 35, scope: !693, inlinedAt: !878)
!892 = !DILocation(line: 97, column: 13, scope: !693, inlinedAt: !878)
!893 = !DILocation(line: 99, column: 20, scope: !693, inlinedAt: !878)
!894 = !DILocation(line: 99, column: 35, scope: !693, inlinedAt: !878)
!895 = !DILocation(line: 99, column: 13, scope: !693, inlinedAt: !878)
!896 = !DILocation(line: 101, column: 5, scope: !681, inlinedAt: !878)
!897 = !DILocation(line: 102, column: 1, scope: !681, inlinedAt: !878)
!898 = !DILocation(line: 186, column: 5, scope: !875)
!899 = !DILocation(line: 191, column: 5, scope: !821)
!900 = !DILocation(line: 0, scope: !693, inlinedAt: !878)
!901 = !DILocation(line: 0, scope: !875)
!902 = !DILocation(line: 194, column: 37, scope: !836)
!903 = !DILocation(line: 192, column: 28, scope: !832)
!904 = !DILocation(line: 192, column: 24, scope: !832)
!905 = !DILocation(line: 192, column: 16, scope: !832)
!906 = !DILocation(line: 193, column: 13, scope: !832)
!907 = !DILocation(line: 171, column: 9, scope: !821)
!908 = !DILocation(line: 194, column: 14, scope: !837)
!909 = !DILocation(line: 194, column: 23, scope: !836)
!910 = !DILocation(line: 194, column: 9, scope: !837)
!911 = !DILocation(line: 195, column: 29, scope: !912)
!912 = distinct !DILexicalBlock(scope: !835, file: !3, line: 195, column: 17)
!913 = !DILocation(line: 195, column: 17, scope: !912)
!914 = !DILocation(line: 195, column: 38, scope: !912)
!915 = !DILocation(line: 195, column: 17, scope: !835)
!916 = !DILocation(line: 197, column: 23, scope: !917)
!917 = distinct !DILexicalBlock(scope: !912, file: !3, line: 195, column: 44)
!918 = !DILocation(line: 198, column: 17, scope: !917)
!919 = !DILocation(line: 203, column: 20, scope: !835)
!920 = !DILocation(line: 204, column: 13, scope: !835)
!921 = !DILocation(line: 205, column: 44, scope: !922)
!922 = distinct !DILexicalBlock(scope: !835, file: !3, line: 204, column: 38)
!923 = !DILocation(line: 205, column: 32, scope: !922)
!924 = !DILocation(line: 205, column: 52, scope: !922)
!925 = !DILocation(line: 205, column: 67, scope: !922)
!926 = !DILocation(line: 205, column: 26, scope: !922)
!927 = !DILocation(line: 170, column: 13, scope: !821)
!928 = !DILocation(line: 206, column: 28, scope: !929)
!929 = distinct !DILexicalBlock(scope: !922, file: !3, line: 206, column: 21)
!930 = !DILocation(line: 206, column: 21, scope: !922)
!931 = !DILocation(line: 211, column: 32, scope: !932)
!932 = distinct !DILexicalBlock(scope: !933, file: !3, line: 211, column: 25)
!933 = distinct !DILexicalBlock(scope: !929, file: !3, line: 206, column: 34)
!934 = !DILocation(line: 211, column: 38, scope: !932)
!935 = !DILocation(line: 211, column: 41, scope: !932)
!936 = !DILocation(line: 211, column: 47, scope: !932)
!937 = !DILocation(line: 211, column: 25, scope: !933)
!938 = !DILocation(line: 211, column: 63, scope: !932)
!939 = !DILocation(line: 211, column: 69, scope: !932)
!940 = !DILocation(line: 214, column: 26, scope: !922)
!941 = !DILocation(line: 204, column: 28, scope: !835)
!942 = distinct !{!942, !920, !943}
!943 = !DILocation(line: 215, column: 13, scope: !835)
!944 = !DILocation(line: 217, column: 17, scope: !835)
!945 = !DILocation(line: 219, column: 40, scope: !946)
!946 = distinct !DILexicalBlock(scope: !947, file: !3, line: 217, column: 36)
!947 = distinct !DILexicalBlock(scope: !835, file: !3, line: 217, column: 17)
!948 = !DILocation(line: 219, column: 29, scope: !946)
!949 = !DILocation(line: 219, column: 17, scope: !946)
!950 = !DILocation(line: 219, column: 38, scope: !946)
!951 = !DILocation(line: 220, column: 33, scope: !952)
!952 = distinct !DILexicalBlock(scope: !946, file: !3, line: 220, column: 21)
!953 = !DILocation(line: 220, column: 21, scope: !952)
!954 = !DILocation(line: 220, column: 42, scope: !952)
!955 = !DILocation(line: 220, column: 21, scope: !946)
!956 = !DILocation(line: 220, column: 69, scope: !952)
!957 = !DILocation(line: 220, column: 48, scope: !952)
!958 = !DILocation(line: 0, scope: !952)
!959 = !DILocation(line: 222, column: 9, scope: !835)
!960 = !DILocation(line: 0, scope: !832)
!961 = !DILocation(line: 194, column: 46, scope: !836)
!962 = !DILocation(line: 194, column: 9, scope: !836)
!963 = distinct !{!963, !910, !964}
!964 = !DILocation(line: 222, column: 9, scope: !837)
!965 = !DILocation(line: 0, scope: !917)
!966 = !DILocation(line: 223, column: 20, scope: !967)
!967 = distinct !DILexicalBlock(scope: !832, file: !3, line: 223, column: 13)
!968 = !DILocation(line: 223, column: 13, scope: !832)
!969 = !DILocation(line: 224, column: 11, scope: !832)
!970 = !DILocation(line: 225, column: 13, scope: !832)
!971 = !DILocation(line: 226, column: 25, scope: !832)
!972 = !DILocation(line: 227, column: 5, scope: !821)
!973 = !DILocation(line: 229, column: 9, scope: !821)
!974 = !DILocation(line: 229, column: 39, scope: !975)
!975 = distinct !DILexicalBlock(scope: !821, file: !3, line: 229, column: 9)
!976 = !DILocation(line: 229, column: 18, scope: !975)
!977 = !DILocation(line: 0, scope: !821)
!978 = !DILocation(line: 0, scope: !975)
!979 = !DILocation(line: 231, column: 1, scope: !821)
!980 = distinct !DISubprogram(name: "rioFdsetTell", scope: !3, file: !3, line: 242, type: !738, isLocal: true, isDefinition: true, scopeLine: 242, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !981)
!981 = !{!982}
!982 = !DILocalVariable(name: "r", arg: 1, scope: !980, file: !3, line: 242, type: !345)
!983 = !DILocation(line: 242, column: 32, scope: !980)
!984 = !DILocation(line: 243, column: 24, scope: !980)
!985 = !DILocation(line: 243, column: 5, scope: !980)
!986 = distinct !DISubprogram(name: "rioFdsetFlush", scope: !3, file: !3, line: 248, type: !746, isLocal: true, isDefinition: true, scopeLine: 248, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !987)
!987 = !{!988}
!988 = !DILocalVariable(name: "r", arg: 1, scope: !986, file: !3, line: 248, type: !345)
!989 = !DILocation(line: 248, column: 31, scope: !986)
!990 = !DILocation(line: 251, column: 12, scope: !986)
!991 = !DILocation(line: 251, column: 5, scope: !986)
