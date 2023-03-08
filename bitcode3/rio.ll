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
  ret void, !dbg !382
}

; Function Attrs: noredzone nounwind
define dso_local void @rioInitWithFdset(%struct._rio* nocapture, i32*, i32) local_unnamed_addr #0 !dbg !383 {
  %4 = bitcast %struct._rio* %0 to i8*, !dbg !394
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 bitcast ({ i64 (%struct._rio*, i8*, i64)*, i64 (%struct._rio*, i8*, i64)*, i64 (%struct._rio*)*, i32 (%struct._rio*)*, void (%struct._rio*, i8*, i64)*, i64, i64, i64, { %struct.anon, [24 x i8] } }* @rioFdsetIO to i8*), i64 104, i1 false), !dbg !394, !tbaa.struct !352
  %5 = sext i32 %2 to i64, !dbg !395
  %6 = shl nsw i64 %5, 2, !dbg !396
  %7 = tail call i8* @zmalloc(i64 %6) #7, !dbg !397
  %8 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, i32 0, !dbg !398
  %9 = bitcast %struct.anon.2* %8 to i8**, !dbg !399
  store i8* %7, i8** %9, align 8, !dbg !399, !tbaa !364
  %10 = tail call i8* @zmalloc(i64 %6) #7, !dbg !400
  %11 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, i32 0, i32 1, !dbg !401
  %12 = bitcast i32** %11 to i8**, !dbg !402
  store i8* %10, i8** %12, align 8, !dbg !402, !tbaa !364
  %13 = load i8*, i8** %9, align 8, !dbg !403, !tbaa !364
  %14 = bitcast i32* %1 to i8*, !dbg !404
  %15 = tail call i8* @memcpy(i8* %13, i8* %14, i64 %6) #7, !dbg !405
  %16 = icmp sgt i32 %2, 0, !dbg !407
  br i1 %16, label %17, label %52, !dbg !410

; <label>:17:                                     ; preds = %3
  %18 = zext i32 %2 to i64
  %19 = add nsw i64 %18, -1, !dbg !411
  %20 = and i64 %18, 3, !dbg !411
  %21 = icmp ult i64 %19, 3, !dbg !411
  br i1 %21, label %41, label %22, !dbg !411

; <label>:22:                                     ; preds = %17
  %23 = sub nsw i64 %18, %20, !dbg !411
  br label %24, !dbg !411

; <label>:24:                                     ; preds = %24, %22
  %25 = phi i64 [ 0, %22 ], [ %38, %24 ]
  %26 = phi i64 [ %23, %22 ], [ %39, %24 ]
  %27 = load i32*, i32** %11, align 8, !dbg !411, !tbaa !364
  %28 = getelementptr inbounds i32, i32* %27, i64 %25, !dbg !412
  store i32 0, i32* %28, align 4, !dbg !413, !tbaa !359
  %29 = or i64 %25, 1, !dbg !414
  %30 = load i32*, i32** %11, align 8, !dbg !411, !tbaa !364
  %31 = getelementptr inbounds i32, i32* %30, i64 %29, !dbg !412
  store i32 0, i32* %31, align 4, !dbg !413, !tbaa !359
  %32 = or i64 %25, 2, !dbg !414
  %33 = load i32*, i32** %11, align 8, !dbg !411, !tbaa !364
  %34 = getelementptr inbounds i32, i32* %33, i64 %32, !dbg !412
  store i32 0, i32* %34, align 4, !dbg !413, !tbaa !359
  %35 = or i64 %25, 3, !dbg !414
  %36 = load i32*, i32** %11, align 8, !dbg !411, !tbaa !364
  %37 = getelementptr inbounds i32, i32* %36, i64 %35, !dbg !412
  store i32 0, i32* %37, align 4, !dbg !413, !tbaa !359
  %38 = add nuw nsw i64 %25, 4, !dbg !414
  %39 = add i64 %26, -4, !dbg !410
  %40 = icmp eq i64 %39, 0, !dbg !410
  br i1 %40, label %41, label %24, !dbg !410, !llvm.loop !415

; <label>:41:                                     ; preds = %24, %17
  %42 = phi i64 [ 0, %17 ], [ %38, %24 ]
  %43 = icmp eq i64 %20, 0, !dbg !410
  br i1 %43, label %52, label %44, !dbg !410

; <label>:44:                                     ; preds = %41, %44
  %45 = phi i64 [ %49, %44 ], [ %42, %41 ]
  %46 = phi i64 [ %50, %44 ], [ %20, %41 ]
  %47 = load i32*, i32** %11, align 8, !dbg !411, !tbaa !364
  %48 = getelementptr inbounds i32, i32* %47, i64 %45, !dbg !412
  store i32 0, i32* %48, align 4, !dbg !413, !tbaa !359
  %49 = add nuw nsw i64 %45, 1, !dbg !414
  %50 = add i64 %46, -1, !dbg !410
  %51 = icmp eq i64 %50, 0, !dbg !410
  br i1 %51, label %52, label %44, !dbg !410, !llvm.loop !417

; <label>:52:                                     ; preds = %41, %44, %3
  %53 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, i32 0, i32 2, !dbg !419
  store i32 %2, i32* %53, align 8, !dbg !420, !tbaa !364
  %54 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, i32 0, i32 3, !dbg !421
  store i64 0, i64* %54, align 8, !dbg !422, !tbaa !364
  %55 = tail call i8* @sdsempty() #7, !dbg !423
  %56 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, i32 0, i32 4, !dbg !424
  store i8* %55, i8** %56, align 8, !dbg !425, !tbaa !364
  ret void, !dbg !426
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
define dso_local void @rioFreeFdset(%struct._rio* nocapture readonly) local_unnamed_addr #0 !dbg !427 {
  %2 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, i32 0, !dbg !433
  %3 = bitcast %struct.anon.2* %2 to i8**, !dbg !434
  %4 = load i8*, i8** %3, align 8, !dbg !434, !tbaa !364
  tail call void @zfree(i8* %4) #7, !dbg !435
  %5 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, i32 0, i32 1, !dbg !436
  %6 = bitcast i32** %5 to i8**, !dbg !436
  %7 = load i8*, i8** %6, align 8, !dbg !436, !tbaa !364
  tail call void @zfree(i8* %7) #7, !dbg !437
  %8 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, i32 0, i32 4, !dbg !438
  %9 = load i8*, i8** %8, align 8, !dbg !438, !tbaa !364
  tail call void @sdsfree(i8* %9) #7, !dbg !439
  ret void, !dbg !440
}

; Function Attrs: noredzone
declare dso_local void @zfree(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @sdsfree(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @rioGenericUpdateChecksum(%struct._rio* nocapture, i8*, i64) local_unnamed_addr #0 !dbg !441 {
  %4 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 5, !dbg !451
  %5 = load i64, i64* %4, align 8, !dbg !451, !tbaa !452
  %6 = tail call i64 @crc64(i64 %5, i8* %1, i64 %2) #7, !dbg !454
  store i64 %6, i64* %4, align 8, !dbg !455, !tbaa !452
  ret void, !dbg !456
}

; Function Attrs: noredzone
declare dso_local i64 @crc64(i64, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @rioSetAutoSync(%struct._rio* nocapture, i64) local_unnamed_addr #0 !dbg !457 {
  %3 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 0, !dbg !465
  %4 = load i64 (%struct._rio*, i8*, i64)*, i64 (%struct._rio*, i8*, i64)** %3, align 8, !dbg !465, !tbaa !466
  %5 = icmp eq i64 (%struct._rio*, i8*, i64)* %4, @rioFileRead, !dbg !465
  br i1 %5, label %7, label %6, !dbg !465

; <label>:6:                                      ; preds = %2
  tail call void @_serverAssert(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 303) #7, !dbg !465
  tail call void @_exit(i32 1) #8, !dbg !465
  unreachable, !dbg !465

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, i32 0, i32 2, !dbg !467
  %9 = bitcast i32* %8 to i64*, !dbg !467
  store i64 %1, i64* %9, align 8, !dbg !468, !tbaa !364
  ret void, !dbg !469
}

; Function Attrs: noredzone
declare dso_local void @_serverAssert(i8*, i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone noreturn
declare dso_local void @_exit(i32) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local i64 @rioWriteBulkCount(%struct._rio*, i8 signext, i64) local_unnamed_addr #0 !dbg !470 {
  %4 = alloca [128 x i8], align 16
  %5 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0, !dbg !485
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %5) #9, !dbg !485
  store i8 %1, i8* %5, align 16, !dbg !487, !tbaa !364
  %6 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 1, !dbg !488
  %7 = call i32 @ll2string(i8* nonnull %6, i64 127, i64 %2) #7, !dbg !489
  %8 = add nsw i32 %7, 1, !dbg !490
  %9 = add nsw i32 %7, 2, !dbg !492
  %10 = sext i32 %8 to i64, !dbg !493
  %11 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 %10, !dbg !493
  store i8 13, i8* %11, align 1, !dbg !494, !tbaa !364
  %12 = add nsw i32 %7, 3, !dbg !495
  %13 = sext i32 %9 to i64, !dbg !496
  %14 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 %13, !dbg !496
  store i8 10, i8* %14, align 1, !dbg !497, !tbaa !364
  %15 = sext i32 %12 to i64, !dbg !498
  %16 = icmp eq i32 %12, 0, !dbg !513
  br i1 %16, label %43, label %17, !dbg !513

; <label>:17:                                     ; preds = %3
  %18 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 7
  %19 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 4
  %20 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 1
  %21 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 6
  br label %22, !dbg !513

; <label>:22:                                     ; preds = %37, %17
  %23 = phi i64 [ %15, %17 ], [ %39, %37 ]
  %24 = phi i8* [ %5, %17 ], [ %38, %37 ]
  %25 = load i64, i64* %18, align 8, !dbg !514, !tbaa !515
  %26 = icmp ne i64 %25, 0, !dbg !516
  %27 = icmp ult i64 %25, %23, !dbg !517
  %28 = and i1 %26, %27, !dbg !518
  %29 = select i1 %28, i64 %25, i64 %23, !dbg !518
  %30 = load void (%struct._rio*, i8*, i64)*, void (%struct._rio*, i8*, i64)** %19, align 8, !dbg !520, !tbaa !522
  %31 = icmp eq void (%struct._rio*, i8*, i64)* %30, null, !dbg !523
  br i1 %31, label %33, label %32, !dbg !524

; <label>:32:                                     ; preds = %22
  call void %30(%struct._rio* nonnull %0, i8* %24, i64 %29) #7, !dbg !525
  br label %33, !dbg !525

; <label>:33:                                     ; preds = %32, %22
  %34 = load i64 (%struct._rio*, i8*, i64)*, i64 (%struct._rio*, i8*, i64)** %20, align 8, !dbg !526, !tbaa !528
  %35 = call i64 %34(%struct._rio* nonnull %0, i8* %24, i64 %29) #7, !dbg !529
  %36 = icmp eq i64 %35, 0, !dbg !530
  br i1 %36, label %43, label %37, !dbg !531

; <label>:37:                                     ; preds = %33
  %38 = getelementptr inbounds i8, i8* %24, i64 %29, !dbg !532
  %39 = sub i64 %23, %29, !dbg !533
  %40 = load i64, i64* %21, align 8, !dbg !534, !tbaa !535
  %41 = add i64 %40, %29, !dbg !534
  store i64 %41, i64* %21, align 8, !dbg !534, !tbaa !535
  %42 = icmp eq i64 %39, 0, !dbg !513
  br i1 %42, label %43, label %22, !dbg !513

; <label>:43:                                     ; preds = %37, %33, %3
  %44 = phi i64 [ 0, %3 ], [ %15, %37 ], [ 0, %33 ]
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %5) #9, !dbg !536
  ret i64 %44, !dbg !536
}

; Function Attrs: noredzone
declare dso_local i32 @ll2string(i8*, i64, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i64 @rioWriteBulkString(%struct._rio*, i8*, i64) local_unnamed_addr #0 !dbg !537 {
  %4 = alloca [128 x i8], align 16
  %5 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0, !dbg !554
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %5) #9, !dbg !554
  store i8 36, i8* %5, align 16, !dbg !555, !tbaa !364
  %6 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 1, !dbg !556
  %7 = call i32 @ll2string(i8* nonnull %6, i64 127, i64 %2) #7, !dbg !557
  %8 = add nsw i32 %7, 1, !dbg !558
  %9 = add nsw i32 %7, 2, !dbg !560
  %10 = sext i32 %8 to i64, !dbg !561
  %11 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 %10, !dbg !561
  store i8 13, i8* %11, align 1, !dbg !562, !tbaa !364
  %12 = add nsw i32 %7, 3, !dbg !563
  %13 = sext i32 %9 to i64, !dbg !564
  %14 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 %13, !dbg !564
  store i8 10, i8* %14, align 1, !dbg !565, !tbaa !364
  %15 = sext i32 %12 to i64, !dbg !566
  %16 = icmp eq i32 %12, 0, !dbg !571
  br i1 %16, label %43, label %17, !dbg !571

; <label>:17:                                     ; preds = %3
  %18 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 7
  %19 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 4
  %20 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 1
  %21 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 6
  br label %22, !dbg !571

; <label>:22:                                     ; preds = %37, %17
  %23 = phi i64 [ %15, %17 ], [ %39, %37 ]
  %24 = phi i8* [ %5, %17 ], [ %38, %37 ]
  %25 = load i64, i64* %18, align 8, !dbg !572, !tbaa !515
  %26 = icmp ne i64 %25, 0, !dbg !573
  %27 = icmp ult i64 %25, %23, !dbg !574
  %28 = and i1 %26, %27, !dbg !575
  %29 = select i1 %28, i64 %25, i64 %23, !dbg !575
  %30 = load void (%struct._rio*, i8*, i64)*, void (%struct._rio*, i8*, i64)** %19, align 8, !dbg !577, !tbaa !522
  %31 = icmp eq void (%struct._rio*, i8*, i64)* %30, null, !dbg !578
  br i1 %31, label %33, label %32, !dbg !579

; <label>:32:                                     ; preds = %22
  call void %30(%struct._rio* nonnull %0, i8* %24, i64 %29) #7, !dbg !580
  br label %33, !dbg !580

; <label>:33:                                     ; preds = %32, %22
  %34 = load i64 (%struct._rio*, i8*, i64)*, i64 (%struct._rio*, i8*, i64)** %20, align 8, !dbg !581, !tbaa !528
  %35 = call i64 %34(%struct._rio* nonnull %0, i8* %24, i64 %29) #7, !dbg !582
  %36 = icmp eq i64 %35, 0, !dbg !583
  br i1 %36, label %43, label %37, !dbg !584

; <label>:37:                                     ; preds = %33
  %38 = getelementptr inbounds i8, i8* %24, i64 %29, !dbg !585
  %39 = sub i64 %23, %29, !dbg !586
  %40 = load i64, i64* %21, align 8, !dbg !587, !tbaa !535
  %41 = add i64 %40, %29, !dbg !587
  store i64 %41, i64* %21, align 8, !dbg !587, !tbaa !535
  %42 = icmp eq i64 %39, 0, !dbg !571
  br i1 %42, label %44, label %22, !dbg !571

; <label>:43:                                     ; preds = %33, %3
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %5) #9, !dbg !588
  br label %92, !dbg !590

; <label>:44:                                     ; preds = %37
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %5) #9, !dbg !588
  %45 = icmp eq i64 %2, 0, !dbg !591
  br i1 %45, label %67, label %46, !dbg !593

; <label>:46:                                     ; preds = %44, %61
  %47 = phi i64 [ %63, %61 ], [ %2, %44 ]
  %48 = phi i8* [ %62, %61 ], [ %1, %44 ]
  %49 = load i64, i64* %18, align 8, !dbg !597, !tbaa !515
  %50 = icmp ne i64 %49, 0, !dbg !598
  %51 = icmp ult i64 %49, %47, !dbg !599
  %52 = and i1 %50, %51, !dbg !600
  %53 = select i1 %52, i64 %49, i64 %47, !dbg !600
  %54 = load void (%struct._rio*, i8*, i64)*, void (%struct._rio*, i8*, i64)** %19, align 8, !dbg !602, !tbaa !522
  %55 = icmp eq void (%struct._rio*, i8*, i64)* %54, null, !dbg !603
  br i1 %55, label %57, label %56, !dbg !604

; <label>:56:                                     ; preds = %46
  call void %54(%struct._rio* nonnull %0, i8* %48, i64 %53) #7, !dbg !605
  br label %57, !dbg !605

; <label>:57:                                     ; preds = %56, %46
  %58 = load i64 (%struct._rio*, i8*, i64)*, i64 (%struct._rio*, i8*, i64)** %20, align 8, !dbg !606, !tbaa !528
  %59 = call i64 %58(%struct._rio* nonnull %0, i8* %48, i64 %53) #7, !dbg !607
  %60 = icmp eq i64 %59, 0, !dbg !608
  br i1 %60, label %92, label %61, !dbg !609

; <label>:61:                                     ; preds = %57
  %62 = getelementptr inbounds i8, i8* %48, i64 %53, !dbg !610
  %63 = sub i64 %47, %53, !dbg !611
  %64 = load i64, i64* %21, align 8, !dbg !612, !tbaa !535
  %65 = add i64 %64, %53, !dbg !612
  store i64 %65, i64* %21, align 8, !dbg !612, !tbaa !535
  %66 = icmp eq i64 %63, 0, !dbg !613
  br i1 %66, label %67, label %46, !dbg !613

; <label>:67:                                     ; preds = %61, %44
  br label %68, !dbg !614

; <label>:68:                                     ; preds = %67, %83
  %69 = phi i64 [ %85, %83 ], [ 2, %67 ]
  %70 = phi i8* [ %84, %83 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %67 ]
  %71 = load i64, i64* %18, align 8, !dbg !614, !tbaa !515
  %72 = icmp ne i64 %71, 0, !dbg !619
  %73 = icmp ult i64 %71, %69, !dbg !620
  %74 = and i1 %72, %73, !dbg !621
  %75 = select i1 %74, i64 %71, i64 %69, !dbg !621
  %76 = load void (%struct._rio*, i8*, i64)*, void (%struct._rio*, i8*, i64)** %19, align 8, !dbg !623, !tbaa !522
  %77 = icmp eq void (%struct._rio*, i8*, i64)* %76, null, !dbg !624
  br i1 %77, label %79, label %78, !dbg !625

; <label>:78:                                     ; preds = %68
  call void %76(%struct._rio* nonnull %0, i8* %70, i64 %75) #7, !dbg !626
  br label %79, !dbg !626

; <label>:79:                                     ; preds = %78, %68
  %80 = load i64 (%struct._rio*, i8*, i64)*, i64 (%struct._rio*, i8*, i64)** %20, align 8, !dbg !627, !tbaa !528
  %81 = call i64 %80(%struct._rio* nonnull %0, i8* %70, i64 %75) #7, !dbg !628
  %82 = icmp eq i64 %81, 0, !dbg !629
  br i1 %82, label %92, label %83, !dbg !630

; <label>:83:                                     ; preds = %79
  %84 = getelementptr inbounds i8, i8* %70, i64 %75, !dbg !631
  %85 = sub i64 %69, %75, !dbg !632
  %86 = load i64, i64* %21, align 8, !dbg !633, !tbaa !535
  %87 = add i64 %86, %75, !dbg !633
  store i64 %87, i64* %21, align 8, !dbg !633, !tbaa !535
  %88 = icmp eq i64 %85, 0, !dbg !634
  br i1 %88, label %89, label %68, !dbg !634

; <label>:89:                                     ; preds = %83
  %90 = add i64 %2, 2, !dbg !635
  %91 = add i64 %90, %15, !dbg !636
  br label %92, !dbg !637

; <label>:92:                                     ; preds = %57, %79, %43, %89
  %93 = phi i64 [ %91, %89 ], [ 0, %43 ], [ 0, %79 ], [ 0, %57 ], !dbg !638
  ret i64 %93, !dbg !639
}

; Function Attrs: noredzone nounwind
define dso_local i64 @rioWriteBulkLongLong(%struct._rio*, i64) local_unnamed_addr #0 !dbg !640 {
  %3 = alloca [32 x i8], align 16
  %4 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0, !dbg !652
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #9, !dbg !652
  %5 = call i32 @ll2string(i8* nonnull %4, i64 32, i64 %1) #7, !dbg !654
  %6 = zext i32 %5 to i64, !dbg !656
  %7 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* nonnull %4, i64 %6) #10, !dbg !657
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #9, !dbg !658
  ret i64 %7, !dbg !659
}

; Function Attrs: noredzone nounwind
define dso_local i64 @rioWriteBulkDouble(%struct._rio*, double) local_unnamed_addr #0 !dbg !660 {
  %3 = alloca [128 x i8], align 16
  %4 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0, !dbg !671
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %4) #9, !dbg !671
  %5 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %4, i64 128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), double %1) #7, !dbg !673
  %6 = zext i32 %5 to i64, !dbg !675
  %7 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* nonnull %4, i64 %6) #10, !dbg !676
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %4) #9, !dbg !677
  ret i64 %7, !dbg !678
}

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i64 @rioBufferRead(%struct._rio* nocapture, i8*, i64) #0 !dbg !679 {
  %4 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, !dbg !689
  %5 = bitcast %union.anon* %4 to i8**, !dbg !691
  %6 = load i8*, i8** %5, align 8, !dbg !691, !tbaa !364
  %7 = getelementptr inbounds i8, i8* %6, i64 -1, !dbg !701
  %8 = load i8, i8* %7, align 1, !dbg !701, !tbaa !364
  %9 = trunc i8 %8 to i3, !dbg !703
  switch i3 %9, label %31 [
    i3 0, label %10
    i3 1, label %13
    i3 2, label %17
    i3 3, label %22
    i3 -4, label %27
  ], !dbg !703

; <label>:10:                                     ; preds = %3
  %11 = lshr i8 %8, 3, !dbg !704
  %12 = zext i8 %11 to i64, !dbg !704
  br label %31, !dbg !706

; <label>:13:                                     ; preds = %3
  %14 = getelementptr inbounds i8, i8* %6, i64 -3, !dbg !707
  %15 = load i8, i8* %14, align 1, !dbg !708, !tbaa !364
  %16 = zext i8 %15 to i64, !dbg !707
  br label %31, !dbg !709

; <label>:17:                                     ; preds = %3
  %18 = getelementptr inbounds i8, i8* %6, i64 -5, !dbg !710
  %19 = bitcast i8* %18 to i16*, !dbg !711
  %20 = load i16, i16* %19, align 1, !dbg !711, !tbaa !712
  %21 = zext i16 %20 to i64, !dbg !710
  br label %31, !dbg !714

; <label>:22:                                     ; preds = %3
  %23 = getelementptr inbounds i8, i8* %6, i64 -9, !dbg !715
  %24 = bitcast i8* %23 to i32*, !dbg !716
  %25 = load i32, i32* %24, align 1, !dbg !716, !tbaa !359
  %26 = zext i32 %25 to i64, !dbg !715
  br label %31, !dbg !717

; <label>:27:                                     ; preds = %3
  %28 = getelementptr inbounds i8, i8* %6, i64 -17, !dbg !718
  %29 = bitcast i8* %28 to i64*, !dbg !719
  %30 = load i64, i64* %29, align 1, !dbg !719, !tbaa !357
  br label %31, !dbg !720

; <label>:31:                                     ; preds = %3, %10, %13, %17, %22, %27
  %32 = phi i64 [ %30, %27 ], [ %26, %22 ], [ %21, %17 ], [ %16, %13 ], [ %12, %10 ], [ 0, %3 ], !dbg !721
  %33 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, i32 0, i32 1, !dbg !722
  %34 = bitcast i32** %33 to i64*, !dbg !722
  %35 = load i64, i64* %34, align 8, !dbg !722, !tbaa !364
  %36 = sub i64 %32, %35, !dbg !723
  %37 = icmp ult i64 %36, %2, !dbg !724
  br i1 %37, label %43, label %38, !dbg !725

; <label>:38:                                     ; preds = %31
  %39 = getelementptr inbounds i8, i8* %6, i64 %35, !dbg !726
  %40 = tail call i8* @memcpy(i8* %1, i8* %39, i64 %2) #7, !dbg !727
  %41 = load i64, i64* %34, align 8, !dbg !728, !tbaa !364
  %42 = add i64 %41, %2, !dbg !728
  store i64 %42, i64* %34, align 8, !dbg !728, !tbaa !364
  br label %43, !dbg !729

; <label>:43:                                     ; preds = %31, %38
  %44 = phi i64 [ 1, %38 ], [ 0, %31 ], !dbg !730
  ret i64 %44, !dbg !731
}

; Function Attrs: noredzone nounwind
define internal i64 @rioBufferWrite(%struct._rio* nocapture, i8*, i64) #0 !dbg !732 {
  %4 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, !dbg !740
  %5 = bitcast %union.anon* %4 to i8**, !dbg !741
  %6 = load i8*, i8** %5, align 8, !dbg !741, !tbaa !364
  %7 = tail call i8* @sdscatlen(i8* %6, i8* %1, i64 %2) #7, !dbg !742
  store i8* %7, i8** %5, align 8, !dbg !743, !tbaa !364
  %8 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, i32 0, i32 1, !dbg !744
  %9 = bitcast i32** %8 to i64*, !dbg !744
  %10 = load i64, i64* %9, align 8, !dbg !745, !tbaa !364
  %11 = add i64 %10, %2, !dbg !745
  store i64 %11, i64* %9, align 8, !dbg !745, !tbaa !364
  ret i64 1, !dbg !746
}

; Function Attrs: noredzone nounwind readonly
define internal i64 @rioBufferTell(%struct._rio* nocapture readonly) #5 !dbg !747 {
  %2 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, i32 0, i32 1, !dbg !753
  %3 = bitcast i32** %2 to i64*, !dbg !753
  %4 = load i64, i64* %3, align 8, !dbg !753, !tbaa !364
  ret i64 %4, !dbg !754
}

; Function Attrs: noredzone nounwind readnone
define internal i32 @rioBufferFlush(%struct._rio* nocapture readnone) #6 !dbg !755 {
  ret i32 1, !dbg !761
}

; Function Attrs: noredzone
declare dso_local i8* @sdscatlen(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i64 @rioFileRead(%struct._rio* nocapture readonly, i8*, i64) #0 !dbg !762 {
  %4 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, !dbg !770
  %5 = bitcast %union.anon* %4 to %struct.__sFILE**, !dbg !771
  %6 = load %struct.__sFILE*, %struct.__sFILE** %5, align 8, !dbg !771, !tbaa !364
  %7 = tail call i64 @fread(i8* %1, i64 %2, i64 1, %struct.__sFILE* %6) #7, !dbg !772
  ret i64 %7, !dbg !773
}

; Function Attrs: noredzone nounwind
define internal i64 @rioFileWrite(%struct._rio* nocapture, i8*, i64) #0 !dbg !774 {
  %4 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, !dbg !783
  %5 = bitcast %union.anon* %4 to %struct.__sFILE**, !dbg !784
  %6 = load %struct.__sFILE*, %struct.__sFILE** %5, align 8, !dbg !784, !tbaa !364
  %7 = tail call i64 @fwrite(i8* %1, i64 %2, i64 1, %struct.__sFILE* %6) #7, !dbg !785
  %8 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, i32 0, i32 1, !dbg !787
  %9 = bitcast i32** %8 to i64*, !dbg !787
  %10 = load i64, i64* %9, align 8, !dbg !788, !tbaa !364
  %11 = add i64 %10, %2, !dbg !788
  store i64 %11, i64* %9, align 8, !dbg !788, !tbaa !364
  %12 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, i32 0, i32 2, !dbg !789
  %13 = bitcast i32* %12 to i64*, !dbg !789
  %14 = load i64, i64* %13, align 8, !dbg !789, !tbaa !364
  %15 = icmp eq i64 %14, 0, !dbg !791
  %16 = icmp slt i64 %11, %14, !dbg !792
  %17 = or i1 %15, %16, !dbg !793
  br i1 %17, label %24, label %18, !dbg !793

; <label>:18:                                     ; preds = %3
  %19 = load %struct.__sFILE*, %struct.__sFILE** %5, align 8, !dbg !794, !tbaa !364
  %20 = tail call i32 @fflush(%struct.__sFILE* %19) #7, !dbg !796
  %21 = load %struct.__sFILE*, %struct.__sFILE** %5, align 8, !dbg !797, !tbaa !364
  %22 = tail call i32 @fileno(%struct.__sFILE* %21) #7, !dbg !798
  %23 = tail call i32 @fsync(i32 %22) #7, !dbg !799
  store i64 0, i64* %9, align 8, !dbg !800, !tbaa !364
  br label %24, !dbg !801

; <label>:24:                                     ; preds = %3, %18
  ret i64 %7, !dbg !802
}

; Function Attrs: noredzone nounwind
define internal i64 @rioFileTell(%struct._rio* nocapture readonly) #0 !dbg !803 {
  %2 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, !dbg !807
  %3 = bitcast %union.anon* %2 to %struct.__sFILE**, !dbg !808
  %4 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8, !dbg !808, !tbaa !364
  %5 = tail call i64 @ftello(%struct.__sFILE* %4) #7, !dbg !809
  ret i64 %5, !dbg !810
}

; Function Attrs: noredzone nounwind
define internal i32 @rioFileFlush(%struct._rio* nocapture readonly) #0 !dbg !811 {
  %2 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, !dbg !815
  %3 = bitcast %union.anon* %2 to %struct.__sFILE**, !dbg !816
  %4 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8, !dbg !816, !tbaa !364
  %5 = tail call i32 @fflush(%struct.__sFILE* %4) #7, !dbg !817
  %6 = icmp eq i32 %5, 0, !dbg !818
  %7 = zext i1 %6 to i32, !dbg !819
  ret i32 %7, !dbg !820
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

; Function Attrs: noredzone nounwind readnone
define internal i64 @rioFdsetRead(%struct._rio* nocapture readnone, i8* nocapture readnone, i64) #6 !dbg !821 {
  ret i64 0, !dbg !829
}

; Function Attrs: noredzone nounwind
define internal i64 @rioFdsetWrite(%struct._rio* nocapture, i8*, i64) #0 !dbg !830 {
  %4 = icmp eq i8* %1, null, !dbg !851
  %5 = icmp eq i64 %2, 0, !dbg !852
  %6 = and i1 %4, %5, !dbg !853
  br i1 %5, label %32, label %7, !dbg !854

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, i32 0, i32 4, !dbg !855
  %9 = load i8*, i8** %8, align 8, !dbg !855, !tbaa !364
  %10 = tail call i8* @sdscatlen(i8* %9, i8* %1, i64 %2) #7, !dbg !858
  store i8* %10, i8** %8, align 8, !dbg !859, !tbaa !364
  %11 = getelementptr inbounds i8, i8* %10, i64 -1, !dbg !863
  %12 = load i8, i8* %11, align 1, !dbg !863, !tbaa !364
  %13 = trunc i8 %12 to i3, !dbg !865
  switch i3 %13, label %137 [
    i3 -4, label %24
    i3 3, label %19
    i3 2, label %14
  ], !dbg !865

; <label>:14:                                     ; preds = %7
  %15 = getelementptr inbounds i8, i8* %10, i64 -5, !dbg !866
  %16 = bitcast i8* %15 to i16*, !dbg !867
  %17 = load i16, i16* %16, align 1, !dbg !867, !tbaa !712
  %18 = zext i16 %17 to i64, !dbg !866
  br label %28, !dbg !868

; <label>:19:                                     ; preds = %7
  %20 = getelementptr inbounds i8, i8* %10, i64 -9, !dbg !869
  %21 = bitcast i8* %20 to i32*, !dbg !870
  %22 = load i32, i32* %21, align 1, !dbg !870, !tbaa !359
  %23 = zext i32 %22 to i64, !dbg !869
  br label %28, !dbg !871

; <label>:24:                                     ; preds = %7
  %25 = getelementptr inbounds i8, i8* %10, i64 -17, !dbg !872
  %26 = bitcast i8* %25 to i64*, !dbg !873
  %27 = load i64, i64* %26, align 1, !dbg !873, !tbaa !357
  br label %28, !dbg !874

; <label>:28:                                     ; preds = %14, %19, %24
  %29 = phi i64 [ %27, %24 ], [ %23, %19 ], [ %18, %14 ], !dbg !875
  %30 = icmp ugt i64 %29, 16384, !dbg !876
  %31 = or i1 %6, %30, !dbg !877
  br i1 %31, label %38, label %137, !dbg !877

; <label>:32:                                     ; preds = %3
  br i1 %6, label %33, label %137, !dbg !878

; <label>:33:                                     ; preds = %32
  %34 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, i32 0, i32 4
  %35 = load i8*, i8** %34, align 8, !dbg !879, !tbaa !364
  %36 = getelementptr inbounds i8, i8* %35, i64 -1
  %37 = load i8, i8* %36, align 1, !dbg !882, !tbaa !364
  br label %38, !dbg !878

; <label>:38:                                     ; preds = %33, %28
  %39 = phi i8 [ %37, %33 ], [ %12, %28 ], !dbg !882
  %40 = phi i8* [ %35, %33 ], [ %10, %28 ], !dbg !879
  %41 = trunc i8 %39 to i3, !dbg !886
  switch i3 %41, label %134 [
    i3 0, label %42
    i3 1, label %45
    i3 2, label %49
    i3 3, label %54
    i3 -4, label %59
  ], !dbg !886

; <label>:42:                                     ; preds = %38
  %43 = lshr i8 %39, 3, !dbg !887
  %44 = zext i8 %43 to i64, !dbg !887
  br label %63, !dbg !888

; <label>:45:                                     ; preds = %38
  %46 = getelementptr inbounds i8, i8* %40, i64 -3, !dbg !889
  %47 = load i8, i8* %46, align 1, !dbg !890, !tbaa !364
  %48 = zext i8 %47 to i64, !dbg !889
  br label %63, !dbg !891

; <label>:49:                                     ; preds = %38
  %50 = getelementptr inbounds i8, i8* %40, i64 -5, !dbg !892
  %51 = bitcast i8* %50 to i16*, !dbg !893
  %52 = load i16, i16* %51, align 1, !dbg !893, !tbaa !712
  %53 = zext i16 %52 to i64, !dbg !892
  br label %63, !dbg !894

; <label>:54:                                     ; preds = %38
  %55 = getelementptr inbounds i8, i8* %40, i64 -9, !dbg !895
  %56 = bitcast i8* %55 to i32*, !dbg !896
  %57 = load i32, i32* %56, align 1, !dbg !896, !tbaa !359
  %58 = zext i32 %57 to i64, !dbg !895
  br label %63, !dbg !897

; <label>:59:                                     ; preds = %38
  %60 = getelementptr inbounds i8, i8* %40, i64 -17, !dbg !898
  %61 = bitcast i8* %60 to i64*, !dbg !899
  %62 = load i64, i64* %61, align 1, !dbg !899, !tbaa !357
  br label %63, !dbg !900

; <label>:63:                                     ; preds = %59, %54, %49, %45, %42
  %64 = phi i64 [ %44, %42 ], [ %48, %45 ], [ %53, %49 ], [ %58, %54 ], [ %62, %59 ], !dbg !901
  %65 = icmp eq i64 %64, 0, !dbg !902
  br i1 %65, label %134, label %66, !dbg !902

; <label>:66:                                     ; preds = %63
  %67 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, i32 0, i32 2
  %68 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, i32 0, i32 1
  %69 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, i32 0, i32 0
  %70 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, i32 0, i32 3
  %71 = load i32, i32* %67, align 8, !dbg !903, !tbaa !364
  br label %72, !dbg !902

; <label>:72:                                     ; preds = %66, %128
  %73 = phi i32 [ %71, %66 ], [ %125, %128 ], !dbg !903
  %74 = phi i8* [ %40, %66 ], [ %129, %128 ]
  %75 = phi i64 [ %64, %66 ], [ %130, %128 ]
  %76 = icmp ult i64 %75, 1024, !dbg !904
  %77 = select i1 %76, i64 %75, i64 1024, !dbg !905
  %78 = icmp sgt i32 %73, 0, !dbg !909
  br i1 %78, label %79, label %124, !dbg !910

; <label>:79:                                     ; preds = %72, %118
  %80 = phi i64 [ %120, %118 ], [ 0, %72 ]
  %81 = phi i32 [ %119, %118 ], [ 0, %72 ]
  %82 = load i32*, i32** %68, align 8, !dbg !911, !tbaa !364
  %83 = getelementptr inbounds i32, i32* %82, i64 %80, !dbg !913
  %84 = load i32, i32* %83, align 4, !dbg !913, !tbaa !359
  %85 = icmp eq i32 %84, 0, !dbg !914
  br i1 %85, label %88, label %86, !dbg !915

; <label>:86:                                     ; preds = %79
  %87 = add nsw i32 %81, 1, !dbg !916
  br label %118, !dbg !918

; <label>:88:                                     ; preds = %79, %105
  %89 = phi i64 [ %106, %105 ], [ 0, %79 ]
  %90 = load i32*, i32** %69, align 8, !dbg !920, !tbaa !364
  %91 = getelementptr inbounds i32, i32* %90, i64 %80, !dbg !922
  %92 = load i32, i32* %91, align 4, !dbg !922, !tbaa !359
  %93 = getelementptr inbounds i8, i8* %74, i64 %89, !dbg !923
  %94 = sub i64 %77, %89, !dbg !924
  %95 = tail call i64 @write(i32 %92, i8* %93, i64 %94) #7, !dbg !925
  %96 = icmp slt i64 %95, 1, !dbg !927
  br i1 %96, label %97, label %105, !dbg !929

; <label>:97:                                     ; preds = %88
  %98 = icmp eq i64 %95, -1, !dbg !930
  br i1 %98, label %99, label %108, !dbg !933

; <label>:99:                                     ; preds = %97
  %100 = tail call i32* @__errno() #7, !dbg !934
  %101 = load i32, i32* %100, align 4, !dbg !934, !tbaa !359
  %102 = icmp eq i32 %101, 11, !dbg !935
  br i1 %102, label %103, label %108, !dbg !936

; <label>:103:                                    ; preds = %99
  %104 = tail call i32* @__errno() #7, !dbg !937
  store i32 116, i32* %104, align 4, !dbg !938, !tbaa !359
  br label %108, !dbg !937

; <label>:105:                                    ; preds = %88
  %106 = add i64 %95, %89, !dbg !939
  %107 = icmp eq i64 %77, %106, !dbg !940
  br i1 %107, label %118, label %88, !dbg !941, !llvm.loop !942

; <label>:108:                                    ; preds = %103, %99, %97
  %109 = tail call i32* @__errno() #7, !dbg !944
  %110 = load i32, i32* %109, align 4, !dbg !944, !tbaa !359
  %111 = load i32*, i32** %68, align 8, !dbg !947, !tbaa !364
  %112 = getelementptr inbounds i32, i32* %111, i64 %80, !dbg !948
  store i32 %110, i32* %112, align 4, !dbg !949, !tbaa !359
  %113 = load i32*, i32** %68, align 8, !dbg !950, !tbaa !364
  %114 = getelementptr inbounds i32, i32* %113, i64 %80, !dbg !952
  %115 = load i32, i32* %114, align 4, !dbg !952, !tbaa !359
  %116 = icmp eq i32 %115, 0, !dbg !953
  br i1 %116, label %117, label %118, !dbg !954

; <label>:117:                                    ; preds = %108
  store i32 5, i32* %114, align 4, !dbg !955, !tbaa !359
  br label %118, !dbg !956

; <label>:118:                                    ; preds = %105, %117, %108, %86
  %119 = phi i32 [ %87, %86 ], [ %81, %108 ], [ %81, %117 ], [ %81, %105 ], !dbg !957
  %120 = add nuw nsw i64 %80, 1, !dbg !958
  %121 = load i32, i32* %67, align 8, !dbg !903, !tbaa !364
  %122 = sext i32 %121 to i64, !dbg !909
  %123 = icmp slt i64 %120, %122, !dbg !909
  br i1 %123, label %79, label %124, !dbg !910, !llvm.loop !959

; <label>:124:                                    ; preds = %118, %72
  %125 = phi i32 [ %73, %72 ], [ %121, %118 ]
  %126 = phi i32 [ 0, %72 ], [ %119, %118 ], !dbg !961
  %127 = icmp eq i32 %126, %125, !dbg !962
  br i1 %127, label %137, label %128, !dbg !964

; <label>:128:                                    ; preds = %124
  %129 = getelementptr inbounds i8, i8* %74, i64 %77, !dbg !965
  %130 = sub i64 %75, %77, !dbg !966
  %131 = load i64, i64* %70, align 8, !dbg !967, !tbaa !364
  %132 = add i64 %131, %77, !dbg !967
  store i64 %132, i64* %70, align 8, !dbg !967, !tbaa !364
  %133 = icmp eq i64 %130, 0, !dbg !902
  br i1 %133, label %134, label %72, !dbg !902

; <label>:134:                                    ; preds = %128, %63, %38
  %135 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, i32 0, i32 4, !dbg !968
  %136 = load i8*, i8** %135, align 8, !dbg !968, !tbaa !364
  tail call void @sdsclear(i8* %136) #7, !dbg !970
  br label %137, !dbg !970

; <label>:137:                                    ; preds = %124, %7, %32, %28, %134
  %138 = phi i64 [ 1, %134 ], [ 1, %28 ], [ 1, %32 ], [ 1, %7 ], [ 0, %124 ], !dbg !971
  ret i64 %138, !dbg !972
}

; Function Attrs: noredzone nounwind readonly
define internal i64 @rioFdsetTell(%struct._rio* nocapture readonly) #5 !dbg !973 {
  %2 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, i32 0, i32 3, !dbg !977
  %3 = load i64, i64* %2, align 8, !dbg !977, !tbaa !364
  ret i64 %3, !dbg !978
}

; Function Attrs: noredzone nounwind
define internal i32 @rioFdsetFlush(%struct._rio* nocapture) #0 !dbg !979 {
  %2 = tail call i64 @rioFdsetWrite(%struct._rio* %0, i8* null, i64 0) #10, !dbg !983
  %3 = trunc i64 %2 to i32, !dbg !983
  ret i32 %3, !dbg !984
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
attributes #5 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noredzone nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin noredzone nounwind }
attributes #8 = { nobuiltin noredzone noreturn nounwind }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin noredzone }

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
!407 = !DILocation(line: 273, column: 19, scope: !408)
!408 = distinct !DILexicalBlock(scope: !409, file: !3, line: 273, column: 5)
!409 = distinct !DILexicalBlock(scope: !383, file: !3, line: 273, column: 5)
!410 = !DILocation(line: 273, column: 5, scope: !409)
!411 = !DILocation(line: 273, column: 46, scope: !408)
!412 = !DILocation(line: 273, column: 34, scope: !408)
!413 = !DILocation(line: 273, column: 55, scope: !408)
!414 = !DILocation(line: 273, column: 30, scope: !408)
!415 = distinct !{!415, !410, !416}
!416 = !DILocation(line: 273, column: 57, scope: !409)
!417 = distinct !{!417, !418}
!418 = !{!"llvm.loop.unroll.disable"}
!419 = !DILocation(line: 274, column: 17, scope: !383)
!420 = !DILocation(line: 274, column: 24, scope: !383)
!421 = !DILocation(line: 275, column: 17, scope: !383)
!422 = !DILocation(line: 275, column: 21, scope: !383)
!423 = !DILocation(line: 276, column: 23, scope: !383)
!424 = !DILocation(line: 276, column: 17, scope: !383)
!425 = !DILocation(line: 276, column: 21, scope: !383)
!426 = !DILocation(line: 277, column: 1, scope: !383)
!427 = distinct !DISubprogram(name: "rioFreeFdset", scope: !3, file: !3, line: 280, type: !428, isLocal: false, isDefinition: true, scopeLine: 280, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !430)
!428 = !DISubroutineType(types: !429)
!429 = !{null, !345}
!430 = !{!431}
!431 = !DILocalVariable(name: "r", arg: 1, scope: !427, file: !3, line: 280, type: !345)
!432 = !DILocation(line: 280, column: 24, scope: !427)
!433 = !DILocation(line: 281, column: 17, scope: !427)
!434 = !DILocation(line: 281, column: 23, scope: !427)
!435 = !DILocation(line: 281, column: 5, scope: !427)
!436 = !DILocation(line: 282, column: 23, scope: !427)
!437 = !DILocation(line: 282, column: 5, scope: !427)
!438 = !DILocation(line: 283, column: 25, scope: !427)
!439 = !DILocation(line: 283, column: 5, scope: !427)
!440 = !DILocation(line: 284, column: 1, scope: !427)
!441 = distinct !DISubprogram(name: "rioGenericUpdateChecksum", scope: !3, file: !3, line: 290, type: !442, isLocal: false, isDefinition: true, scopeLine: 290, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !444)
!442 = !DISubroutineType(types: !443)
!443 = !{null, !345, !77, !68}
!444 = !{!445, !446, !447}
!445 = !DILocalVariable(name: "r", arg: 1, scope: !441, file: !3, line: 290, type: !345)
!446 = !DILocalVariable(name: "buf", arg: 2, scope: !441, file: !3, line: 290, type: !77)
!447 = !DILocalVariable(name: "len", arg: 3, scope: !441, file: !3, line: 290, type: !68)
!448 = !DILocation(line: 290, column: 36, scope: !441)
!449 = !DILocation(line: 290, column: 51, scope: !441)
!450 = !DILocation(line: 290, column: 63, scope: !441)
!451 = !DILocation(line: 291, column: 25, scope: !441)
!452 = !{!453, !358, i64 40}
!453 = !{!"_rio", !354, i64 0, !354, i64 8, !354, i64 16, !354, i64 24, !354, i64 32, !358, i64 40, !358, i64 48, !358, i64 56, !355, i64 64}
!454 = !DILocation(line: 291, column: 16, scope: !441)
!455 = !DILocation(line: 291, column: 14, scope: !441)
!456 = !DILocation(line: 292, column: 1, scope: !441)
!457 = distinct !DISubprogram(name: "rioSetAutoSync", scope: !3, file: !3, line: 302, type: !458, isLocal: false, isDefinition: true, scopeLine: 302, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !460)
!458 = !DISubroutineType(types: !459)
!459 = !{null, !345, !83}
!460 = !{!461, !462}
!461 = !DILocalVariable(name: "r", arg: 1, scope: !457, file: !3, line: 302, type: !345)
!462 = !DILocalVariable(name: "bytes", arg: 2, scope: !457, file: !3, line: 302, type: !83)
!463 = !DILocation(line: 302, column: 26, scope: !457)
!464 = !DILocation(line: 302, column: 35, scope: !457)
!465 = !DILocation(line: 303, column: 5, scope: !457)
!466 = !{!453, !354, i64 0}
!467 = !DILocation(line: 304, column: 16, scope: !457)
!468 = !DILocation(line: 304, column: 25, scope: !457)
!469 = !DILocation(line: 305, column: 1, scope: !457)
!470 = distinct !DISubprogram(name: "rioWriteBulkCount", scope: !3, file: !3, line: 313, type: !471, isLocal: false, isDefinition: true, scopeLine: 313, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !473)
!471 = !DISubroutineType(types: !472)
!472 = !{!68, !345, !20, !87}
!473 = !{!474, !475, !476, !477, !481}
!474 = !DILocalVariable(name: "r", arg: 1, scope: !470, file: !3, line: 313, type: !345)
!475 = !DILocalVariable(name: "prefix", arg: 2, scope: !470, file: !3, line: 313, type: !20)
!476 = !DILocalVariable(name: "count", arg: 3, scope: !470, file: !3, line: 313, type: !87)
!477 = !DILocalVariable(name: "cbuf", scope: !470, file: !3, line: 314, type: !478)
!478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 1024, elements: !479)
!479 = !{!480}
!480 = !DISubrange(count: 128)
!481 = !DILocalVariable(name: "clen", scope: !470, file: !3, line: 315, type: !92)
!482 = !DILocation(line: 313, column: 31, scope: !470)
!483 = !DILocation(line: 313, column: 39, scope: !470)
!484 = !DILocation(line: 313, column: 52, scope: !470)
!485 = !DILocation(line: 314, column: 5, scope: !470)
!486 = !DILocation(line: 314, column: 10, scope: !470)
!487 = !DILocation(line: 317, column: 13, scope: !470)
!488 = !DILocation(line: 318, column: 28, scope: !470)
!489 = !DILocation(line: 318, column: 14, scope: !470)
!490 = !DILocation(line: 318, column: 13, scope: !470)
!491 = !DILocation(line: 315, column: 9, scope: !470)
!492 = !DILocation(line: 319, column: 14, scope: !470)
!493 = !DILocation(line: 319, column: 5, scope: !470)
!494 = !DILocation(line: 319, column: 18, scope: !470)
!495 = !DILocation(line: 320, column: 14, scope: !470)
!496 = !DILocation(line: 320, column: 5, scope: !470)
!497 = !DILocation(line: 320, column: 18, scope: !470)
!498 = !DILocation(line: 321, column: 25, scope: !499)
!499 = distinct !DILexicalBlock(scope: !470, file: !3, line: 321, column: 9)
!500 = !DILocalVariable(name: "r", arg: 1, scope: !501, file: !61, line: 93, type: !345)
!501 = distinct !DISubprogram(name: "rioWrite", scope: !61, file: !61, line: 93, type: !502, isLocal: true, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !504)
!502 = !DISubroutineType(types: !503)
!503 = !{!68, !345, !77, !68}
!504 = !{!500, !505, !506, !507}
!505 = !DILocalVariable(name: "buf", arg: 2, scope: !501, file: !61, line: 93, type: !77)
!506 = !DILocalVariable(name: "len", arg: 3, scope: !501, file: !61, line: 93, type: !68)
!507 = !DILocalVariable(name: "bytes_to_write", scope: !508, file: !61, line: 95, type: !68)
!508 = distinct !DILexicalBlock(scope: !501, file: !61, line: 94, column: 17)
!509 = !DILocation(line: 93, column: 36, scope: !501, inlinedAt: !510)
!510 = distinct !DILocation(line: 321, column: 9, scope: !499)
!511 = !DILocation(line: 93, column: 51, scope: !501, inlinedAt: !510)
!512 = !DILocation(line: 93, column: 63, scope: !501, inlinedAt: !510)
!513 = !DILocation(line: 94, column: 5, scope: !501, inlinedAt: !510)
!514 = !DILocation(line: 95, column: 37, scope: !508, inlinedAt: !510)
!515 = !{!453, !358, i64 56}
!516 = !DILocation(line: 95, column: 34, scope: !508, inlinedAt: !510)
!517 = !DILocation(line: 95, column: 85, scope: !508, inlinedAt: !510)
!518 = !DILocation(line: 95, column: 58, scope: !508, inlinedAt: !510)
!519 = !DILocation(line: 95, column: 16, scope: !508, inlinedAt: !510)
!520 = !DILocation(line: 96, column: 16, scope: !521, inlinedAt: !510)
!521 = distinct !DILexicalBlock(scope: !508, file: !61, line: 96, column: 13)
!522 = !{!453, !354, i64 32}
!523 = !DILocation(line: 96, column: 13, scope: !521, inlinedAt: !510)
!524 = !DILocation(line: 96, column: 13, scope: !508, inlinedAt: !510)
!525 = !DILocation(line: 96, column: 30, scope: !521, inlinedAt: !510)
!526 = !DILocation(line: 97, column: 16, scope: !527, inlinedAt: !510)
!527 = distinct !DILexicalBlock(scope: !508, file: !61, line: 97, column: 13)
!528 = !{!453, !354, i64 8}
!529 = !DILocation(line: 97, column: 13, scope: !527, inlinedAt: !510)
!530 = !DILocation(line: 97, column: 44, scope: !527, inlinedAt: !510)
!531 = !DILocation(line: 97, column: 13, scope: !508, inlinedAt: !510)
!532 = !DILocation(line: 99, column: 26, scope: !508, inlinedAt: !510)
!533 = !DILocation(line: 100, column: 13, scope: !508, inlinedAt: !510)
!534 = !DILocation(line: 101, column: 28, scope: !508, inlinedAt: !510)
!535 = !{!453, !358, i64 48}
!536 = !DILocation(line: 323, column: 1, scope: !470)
!537 = distinct !DISubprogram(name: "rioWriteBulkString", scope: !3, file: !3, line: 326, type: !538, isLocal: false, isDefinition: true, scopeLine: 326, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !540)
!538 = !DISubroutineType(types: !539)
!539 = !{!68, !345, !297, !68}
!540 = !{!541, !542, !543, !544}
!541 = !DILocalVariable(name: "r", arg: 1, scope: !537, file: !3, line: 326, type: !345)
!542 = !DILocalVariable(name: "buf", arg: 2, scope: !537, file: !3, line: 326, type: !297)
!543 = !DILocalVariable(name: "len", arg: 3, scope: !537, file: !3, line: 326, type: !68)
!544 = !DILocalVariable(name: "nwritten", scope: !537, file: !3, line: 327, type: !68)
!545 = !DILocation(line: 314, column: 10, scope: !470, inlinedAt: !546)
!546 = distinct !DILocation(line: 329, column: 21, scope: !547)
!547 = distinct !DILexicalBlock(scope: !537, file: !3, line: 329, column: 9)
!548 = !DILocation(line: 326, column: 32, scope: !537)
!549 = !DILocation(line: 326, column: 47, scope: !537)
!550 = !DILocation(line: 326, column: 59, scope: !537)
!551 = !DILocation(line: 313, column: 31, scope: !470, inlinedAt: !546)
!552 = !DILocation(line: 313, column: 39, scope: !470, inlinedAt: !546)
!553 = !DILocation(line: 313, column: 52, scope: !470, inlinedAt: !546)
!554 = !DILocation(line: 314, column: 5, scope: !470, inlinedAt: !546)
!555 = !DILocation(line: 317, column: 13, scope: !470, inlinedAt: !546)
!556 = !DILocation(line: 318, column: 28, scope: !470, inlinedAt: !546)
!557 = !DILocation(line: 318, column: 14, scope: !470, inlinedAt: !546)
!558 = !DILocation(line: 318, column: 13, scope: !470, inlinedAt: !546)
!559 = !DILocation(line: 315, column: 9, scope: !470, inlinedAt: !546)
!560 = !DILocation(line: 319, column: 14, scope: !470, inlinedAt: !546)
!561 = !DILocation(line: 319, column: 5, scope: !470, inlinedAt: !546)
!562 = !DILocation(line: 319, column: 18, scope: !470, inlinedAt: !546)
!563 = !DILocation(line: 320, column: 14, scope: !470, inlinedAt: !546)
!564 = !DILocation(line: 320, column: 5, scope: !470, inlinedAt: !546)
!565 = !DILocation(line: 320, column: 18, scope: !470, inlinedAt: !546)
!566 = !DILocation(line: 321, column: 25, scope: !499, inlinedAt: !546)
!567 = !DILocation(line: 93, column: 36, scope: !501, inlinedAt: !568)
!568 = distinct !DILocation(line: 321, column: 9, scope: !499, inlinedAt: !546)
!569 = !DILocation(line: 93, column: 51, scope: !501, inlinedAt: !568)
!570 = !DILocation(line: 93, column: 63, scope: !501, inlinedAt: !568)
!571 = !DILocation(line: 94, column: 5, scope: !501, inlinedAt: !568)
!572 = !DILocation(line: 95, column: 37, scope: !508, inlinedAt: !568)
!573 = !DILocation(line: 95, column: 34, scope: !508, inlinedAt: !568)
!574 = !DILocation(line: 95, column: 85, scope: !508, inlinedAt: !568)
!575 = !DILocation(line: 95, column: 58, scope: !508, inlinedAt: !568)
!576 = !DILocation(line: 95, column: 16, scope: !508, inlinedAt: !568)
!577 = !DILocation(line: 96, column: 16, scope: !521, inlinedAt: !568)
!578 = !DILocation(line: 96, column: 13, scope: !521, inlinedAt: !568)
!579 = !DILocation(line: 96, column: 13, scope: !508, inlinedAt: !568)
!580 = !DILocation(line: 96, column: 30, scope: !521, inlinedAt: !568)
!581 = !DILocation(line: 97, column: 16, scope: !527, inlinedAt: !568)
!582 = !DILocation(line: 97, column: 13, scope: !527, inlinedAt: !568)
!583 = !DILocation(line: 97, column: 44, scope: !527, inlinedAt: !568)
!584 = !DILocation(line: 97, column: 13, scope: !508, inlinedAt: !568)
!585 = !DILocation(line: 99, column: 26, scope: !508, inlinedAt: !568)
!586 = !DILocation(line: 100, column: 13, scope: !508, inlinedAt: !568)
!587 = !DILocation(line: 101, column: 28, scope: !508, inlinedAt: !568)
!588 = !DILocation(line: 323, column: 1, scope: !470, inlinedAt: !546)
!589 = !DILocation(line: 327, column: 12, scope: !537)
!590 = !DILocation(line: 329, column: 9, scope: !537)
!591 = !DILocation(line: 330, column: 13, scope: !592)
!592 = distinct !DILexicalBlock(scope: !537, file: !3, line: 330, column: 9)
!593 = !DILocation(line: 330, column: 17, scope: !592)
!594 = !DILocation(line: 93, column: 63, scope: !501, inlinedAt: !595)
!595 = distinct !DILocation(line: 330, column: 20, scope: !592)
!596 = !DILocation(line: 93, column: 51, scope: !501, inlinedAt: !595)
!597 = !DILocation(line: 95, column: 37, scope: !508, inlinedAt: !595)
!598 = !DILocation(line: 95, column: 34, scope: !508, inlinedAt: !595)
!599 = !DILocation(line: 95, column: 85, scope: !508, inlinedAt: !595)
!600 = !DILocation(line: 95, column: 58, scope: !508, inlinedAt: !595)
!601 = !DILocation(line: 95, column: 16, scope: !508, inlinedAt: !595)
!602 = !DILocation(line: 96, column: 16, scope: !521, inlinedAt: !595)
!603 = !DILocation(line: 96, column: 13, scope: !521, inlinedAt: !595)
!604 = !DILocation(line: 96, column: 13, scope: !508, inlinedAt: !595)
!605 = !DILocation(line: 96, column: 30, scope: !521, inlinedAt: !595)
!606 = !DILocation(line: 97, column: 16, scope: !527, inlinedAt: !595)
!607 = !DILocation(line: 97, column: 13, scope: !527, inlinedAt: !595)
!608 = !DILocation(line: 97, column: 44, scope: !527, inlinedAt: !595)
!609 = !DILocation(line: 97, column: 13, scope: !508, inlinedAt: !595)
!610 = !DILocation(line: 99, column: 26, scope: !508, inlinedAt: !595)
!611 = !DILocation(line: 100, column: 13, scope: !508, inlinedAt: !595)
!612 = !DILocation(line: 101, column: 28, scope: !508, inlinedAt: !595)
!613 = !DILocation(line: 94, column: 5, scope: !501, inlinedAt: !595)
!614 = !DILocation(line: 95, column: 37, scope: !508, inlinedAt: !615)
!615 = distinct !DILocation(line: 331, column: 9, scope: !616)
!616 = distinct !DILexicalBlock(scope: !537, file: !3, line: 331, column: 9)
!617 = !DILocation(line: 93, column: 63, scope: !501, inlinedAt: !615)
!618 = !DILocation(line: 93, column: 51, scope: !501, inlinedAt: !615)
!619 = !DILocation(line: 95, column: 34, scope: !508, inlinedAt: !615)
!620 = !DILocation(line: 95, column: 85, scope: !508, inlinedAt: !615)
!621 = !DILocation(line: 95, column: 58, scope: !508, inlinedAt: !615)
!622 = !DILocation(line: 95, column: 16, scope: !508, inlinedAt: !615)
!623 = !DILocation(line: 96, column: 16, scope: !521, inlinedAt: !615)
!624 = !DILocation(line: 96, column: 13, scope: !521, inlinedAt: !615)
!625 = !DILocation(line: 96, column: 13, scope: !508, inlinedAt: !615)
!626 = !DILocation(line: 96, column: 30, scope: !521, inlinedAt: !615)
!627 = !DILocation(line: 97, column: 16, scope: !527, inlinedAt: !615)
!628 = !DILocation(line: 97, column: 13, scope: !527, inlinedAt: !615)
!629 = !DILocation(line: 97, column: 44, scope: !527, inlinedAt: !615)
!630 = !DILocation(line: 97, column: 13, scope: !508, inlinedAt: !615)
!631 = !DILocation(line: 99, column: 26, scope: !508, inlinedAt: !615)
!632 = !DILocation(line: 100, column: 13, scope: !508, inlinedAt: !615)
!633 = !DILocation(line: 101, column: 28, scope: !508, inlinedAt: !615)
!634 = !DILocation(line: 94, column: 5, scope: !501, inlinedAt: !615)
!635 = !DILocation(line: 332, column: 20, scope: !537)
!636 = !DILocation(line: 332, column: 24, scope: !537)
!637 = !DILocation(line: 332, column: 5, scope: !537)
!638 = !DILocation(line: 0, scope: !537)
!639 = !DILocation(line: 333, column: 1, scope: !537)
!640 = distinct !DISubprogram(name: "rioWriteBulkLongLong", scope: !3, file: !3, line: 336, type: !641, isLocal: false, isDefinition: true, scopeLine: 336, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !644)
!641 = !DISubroutineType(types: !642)
!642 = !{!68, !345, !643}
!643 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!644 = !{!645, !646, !647, !649}
!645 = !DILocalVariable(name: "r", arg: 1, scope: !640, file: !3, line: 336, type: !345)
!646 = !DILocalVariable(name: "l", arg: 2, scope: !640, file: !3, line: 336, type: !643)
!647 = !DILocalVariable(name: "lbuf", scope: !640, file: !3, line: 337, type: !648)
!648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 256, elements: !268)
!649 = !DILocalVariable(name: "llen", scope: !640, file: !3, line: 338, type: !39)
!650 = !DILocation(line: 336, column: 34, scope: !640)
!651 = !DILocation(line: 336, column: 47, scope: !640)
!652 = !DILocation(line: 337, column: 5, scope: !640)
!653 = !DILocation(line: 337, column: 10, scope: !640)
!654 = !DILocation(line: 340, column: 12, scope: !640)
!655 = !DILocation(line: 338, column: 18, scope: !640)
!656 = !DILocation(line: 341, column: 38, scope: !640)
!657 = !DILocation(line: 341, column: 12, scope: !640)
!658 = !DILocation(line: 342, column: 1, scope: !640)
!659 = !DILocation(line: 341, column: 5, scope: !640)
!660 = distinct !DISubprogram(name: "rioWriteBulkDouble", scope: !3, file: !3, line: 345, type: !661, isLocal: false, isDefinition: true, scopeLine: 345, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !664)
!661 = !DISubroutineType(types: !662)
!662 = !{!68, !345, !663}
!663 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!664 = !{!665, !666, !667, !668}
!665 = !DILocalVariable(name: "r", arg: 1, scope: !660, file: !3, line: 345, type: !345)
!666 = !DILocalVariable(name: "d", arg: 2, scope: !660, file: !3, line: 345, type: !663)
!667 = !DILocalVariable(name: "dbuf", scope: !660, file: !3, line: 346, type: !478)
!668 = !DILocalVariable(name: "dlen", scope: !660, file: !3, line: 347, type: !39)
!669 = !DILocation(line: 345, column: 32, scope: !660)
!670 = !DILocation(line: 345, column: 42, scope: !660)
!671 = !DILocation(line: 346, column: 5, scope: !660)
!672 = !DILocation(line: 346, column: 10, scope: !660)
!673 = !DILocation(line: 349, column: 12, scope: !660)
!674 = !DILocation(line: 347, column: 18, scope: !660)
!675 = !DILocation(line: 350, column: 38, scope: !660)
!676 = !DILocation(line: 350, column: 12, scope: !660)
!677 = !DILocation(line: 351, column: 1, scope: !660)
!678 = !DILocation(line: 350, column: 5, scope: !660)
!679 = distinct !DISubprogram(name: "rioBufferRead", scope: !3, file: !3, line: 68, type: !680, isLocal: true, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !682)
!680 = !DISubroutineType(types: !681)
!681 = !{!68, !345, !55, !68}
!682 = !{!683, !684, !685}
!683 = !DILocalVariable(name: "r", arg: 1, scope: !679, file: !3, line: 68, type: !345)
!684 = !DILocalVariable(name: "buf", arg: 2, scope: !679, file: !3, line: 68, type: !55)
!685 = !DILocalVariable(name: "len", arg: 3, scope: !679, file: !3, line: 68, type: !68)
!686 = !DILocation(line: 68, column: 34, scope: !679)
!687 = !DILocation(line: 68, column: 43, scope: !679)
!688 = !DILocation(line: 68, column: 55, scope: !679)
!689 = !DILocation(line: 69, column: 19, scope: !690)
!690 = distinct !DILexicalBlock(scope: !679, file: !3, line: 69, column: 9)
!691 = !DILocation(line: 69, column: 29, scope: !690)
!692 = !DILocalVariable(name: "s", arg: 1, scope: !693, file: !8, line: 87, type: !696)
!693 = distinct !DISubprogram(name: "sdslen", scope: !8, file: !8, line: 87, type: !694, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !697)
!694 = !DISubroutineType(types: !695)
!695 = !{!68, !696}
!696 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!697 = !{!692, !698}
!698 = !DILocalVariable(name: "flags", scope: !693, file: !8, line: 88, type: !15)
!699 = !DILocation(line: 87, column: 39, scope: !693, inlinedAt: !700)
!700 = distinct !DILocation(line: 69, column: 9, scope: !690)
!701 = !DILocation(line: 88, column: 27, scope: !693, inlinedAt: !700)
!702 = !DILocation(line: 88, column: 19, scope: !693, inlinedAt: !700)
!703 = !DILocation(line: 89, column: 5, scope: !693, inlinedAt: !700)
!704 = !DILocation(line: 91, column: 20, scope: !705, inlinedAt: !700)
!705 = distinct !DILexicalBlock(scope: !693, file: !8, line: 89, column: 33)
!706 = !DILocation(line: 91, column: 13, scope: !705, inlinedAt: !700)
!707 = !DILocation(line: 93, column: 20, scope: !705, inlinedAt: !700)
!708 = !DILocation(line: 93, column: 34, scope: !705, inlinedAt: !700)
!709 = !DILocation(line: 93, column: 13, scope: !705, inlinedAt: !700)
!710 = !DILocation(line: 95, column: 20, scope: !705, inlinedAt: !700)
!711 = !DILocation(line: 95, column: 35, scope: !705, inlinedAt: !700)
!712 = !{!713, !713, i64 0}
!713 = !{!"short", !355, i64 0}
!714 = !DILocation(line: 95, column: 13, scope: !705, inlinedAt: !700)
!715 = !DILocation(line: 97, column: 20, scope: !705, inlinedAt: !700)
!716 = !DILocation(line: 97, column: 35, scope: !705, inlinedAt: !700)
!717 = !DILocation(line: 97, column: 13, scope: !705, inlinedAt: !700)
!718 = !DILocation(line: 99, column: 20, scope: !705, inlinedAt: !700)
!719 = !DILocation(line: 99, column: 35, scope: !705, inlinedAt: !700)
!720 = !DILocation(line: 99, column: 13, scope: !705, inlinedAt: !700)
!721 = !DILocation(line: 0, scope: !705, inlinedAt: !700)
!722 = !DILocation(line: 69, column: 47, scope: !690)
!723 = !DILocation(line: 69, column: 33, scope: !690)
!724 = !DILocation(line: 69, column: 51, scope: !690)
!725 = !DILocation(line: 69, column: 9, scope: !679)
!726 = !DILocation(line: 71, column: 32, scope: !679)
!727 = !DILocation(line: 71, column: 5, scope: !679)
!728 = !DILocation(line: 72, column: 22, scope: !679)
!729 = !DILocation(line: 73, column: 5, scope: !679)
!730 = !DILocation(line: 0, scope: !679)
!731 = !DILocation(line: 74, column: 1, scope: !679)
!732 = distinct !DISubprogram(name: "rioBufferWrite", scope: !3, file: !3, line: 61, type: !502, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !733)
!733 = !{!734, !735, !736}
!734 = !DILocalVariable(name: "r", arg: 1, scope: !732, file: !3, line: 61, type: !345)
!735 = !DILocalVariable(name: "buf", arg: 2, scope: !732, file: !3, line: 61, type: !77)
!736 = !DILocalVariable(name: "len", arg: 3, scope: !732, file: !3, line: 61, type: !68)
!737 = !DILocation(line: 61, column: 35, scope: !732)
!738 = !DILocation(line: 61, column: 50, scope: !732)
!739 = !DILocation(line: 61, column: 62, scope: !732)
!740 = !DILocation(line: 62, column: 37, scope: !732)
!741 = !DILocation(line: 62, column: 47, scope: !732)
!742 = !DILocation(line: 62, column: 24, scope: !732)
!743 = !DILocation(line: 62, column: 22, scope: !732)
!744 = !DILocation(line: 63, column: 18, scope: !732)
!745 = !DILocation(line: 63, column: 22, scope: !732)
!746 = !DILocation(line: 64, column: 5, scope: !732)
!747 = distinct !DISubprogram(name: "rioBufferTell", scope: !3, file: !3, line: 77, type: !748, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !750)
!748 = !DISubroutineType(types: !749)
!749 = !{!83, !345}
!750 = !{!751}
!751 = !DILocalVariable(name: "r", arg: 1, scope: !747, file: !3, line: 77, type: !345)
!752 = !DILocation(line: 77, column: 33, scope: !747)
!753 = !DILocation(line: 78, column: 25, scope: !747)
!754 = !DILocation(line: 78, column: 5, scope: !747)
!755 = distinct !DISubprogram(name: "rioBufferFlush", scope: !3, file: !3, line: 83, type: !756, isLocal: true, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !758)
!756 = !DISubroutineType(types: !757)
!757 = !{!92, !345}
!758 = !{!759}
!759 = !DILocalVariable(name: "r", arg: 1, scope: !755, file: !3, line: 83, type: !345)
!760 = !DILocation(line: 83, column: 32, scope: !755)
!761 = !DILocation(line: 85, column: 5, scope: !755)
!762 = distinct !DISubprogram(name: "rioFileRead", scope: !3, file: !3, line: 126, type: !680, isLocal: true, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !763)
!763 = !{!764, !765, !766}
!764 = !DILocalVariable(name: "r", arg: 1, scope: !762, file: !3, line: 126, type: !345)
!765 = !DILocalVariable(name: "buf", arg: 2, scope: !762, file: !3, line: 126, type: !55)
!766 = !DILocalVariable(name: "len", arg: 3, scope: !762, file: !3, line: 126, type: !68)
!767 = !DILocation(line: 126, column: 32, scope: !762)
!768 = !DILocation(line: 126, column: 41, scope: !762)
!769 = !DILocation(line: 126, column: 53, scope: !762)
!770 = !DILocation(line: 127, column: 31, scope: !762)
!771 = !DILocation(line: 127, column: 39, scope: !762)
!772 = !DILocation(line: 127, column: 12, scope: !762)
!773 = !DILocation(line: 127, column: 5, scope: !762)
!774 = distinct !DISubprogram(name: "rioFileWrite", scope: !3, file: !3, line: 109, type: !502, isLocal: true, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !775)
!775 = !{!776, !777, !778, !779}
!776 = !DILocalVariable(name: "r", arg: 1, scope: !774, file: !3, line: 109, type: !345)
!777 = !DILocalVariable(name: "buf", arg: 2, scope: !774, file: !3, line: 109, type: !77)
!778 = !DILocalVariable(name: "len", arg: 3, scope: !774, file: !3, line: 109, type: !68)
!779 = !DILocalVariable(name: "retval", scope: !774, file: !3, line: 110, type: !68)
!780 = !DILocation(line: 109, column: 33, scope: !774)
!781 = !DILocation(line: 109, column: 48, scope: !774)
!782 = !DILocation(line: 109, column: 60, scope: !774)
!783 = !DILocation(line: 112, column: 34, scope: !774)
!784 = !DILocation(line: 112, column: 42, scope: !774)
!785 = !DILocation(line: 112, column: 14, scope: !774)
!786 = !DILocation(line: 110, column: 12, scope: !774)
!787 = !DILocation(line: 113, column: 16, scope: !774)
!788 = !DILocation(line: 113, column: 25, scope: !774)
!789 = !DILocation(line: 115, column: 20, scope: !790)
!790 = distinct !DILexicalBlock(scope: !774, file: !3, line: 115, column: 9)
!791 = !DILocation(line: 115, column: 9, scope: !790)
!792 = !DILocation(line: 116, column: 29, scope: !790)
!793 = !DILocation(line: 115, column: 29, scope: !790)
!794 = !DILocation(line: 118, column: 27, scope: !795)
!795 = distinct !DILexicalBlock(scope: !790, file: !3, line: 117, column: 5)
!796 = !DILocation(line: 118, column: 9, scope: !795)
!797 = !DILocation(line: 119, column: 39, scope: !795)
!798 = !DILocation(line: 119, column: 21, scope: !795)
!799 = !DILocation(line: 119, column: 9, scope: !795)
!800 = !DILocation(line: 120, column: 29, scope: !795)
!801 = !DILocation(line: 121, column: 5, scope: !795)
!802 = !DILocation(line: 122, column: 5, scope: !774)
!803 = distinct !DISubprogram(name: "rioFileTell", scope: !3, file: !3, line: 131, type: !748, isLocal: true, isDefinition: true, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !804)
!804 = !{!805}
!805 = !DILocalVariable(name: "r", arg: 1, scope: !803, file: !3, line: 131, type: !345)
!806 = !DILocation(line: 131, column: 31, scope: !803)
!807 = !DILocation(line: 132, column: 22, scope: !803)
!808 = !DILocation(line: 132, column: 30, scope: !803)
!809 = !DILocation(line: 132, column: 12, scope: !803)
!810 = !DILocation(line: 132, column: 5, scope: !803)
!811 = distinct !DISubprogram(name: "rioFileFlush", scope: !3, file: !3, line: 137, type: !756, isLocal: true, isDefinition: true, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !812)
!812 = !{!813}
!813 = !DILocalVariable(name: "r", arg: 1, scope: !811, file: !3, line: 137, type: !345)
!814 = !DILocation(line: 137, column: 30, scope: !811)
!815 = !DILocation(line: 138, column: 23, scope: !811)
!816 = !DILocation(line: 138, column: 31, scope: !811)
!817 = !DILocation(line: 138, column: 13, scope: !811)
!818 = !DILocation(line: 138, column: 35, scope: !811)
!819 = !DILocation(line: 138, column: 12, scope: !811)
!820 = !DILocation(line: 138, column: 5, scope: !811)
!821 = distinct !DISubprogram(name: "rioFdsetRead", scope: !3, file: !3, line: 234, type: !680, isLocal: true, isDefinition: true, scopeLine: 234, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !822)
!822 = !{!823, !824, !825}
!823 = !DILocalVariable(name: "r", arg: 1, scope: !821, file: !3, line: 234, type: !345)
!824 = !DILocalVariable(name: "buf", arg: 2, scope: !821, file: !3, line: 234, type: !55)
!825 = !DILocalVariable(name: "len", arg: 3, scope: !821, file: !3, line: 234, type: !68)
!826 = !DILocation(line: 234, column: 33, scope: !821)
!827 = !DILocation(line: 234, column: 42, scope: !821)
!828 = !DILocation(line: 234, column: 54, scope: !821)
!829 = !DILocation(line: 238, column: 5, scope: !821)
!830 = distinct !DISubprogram(name: "rioFdsetWrite", scope: !3, file: !3, line: 169, type: !502, isLocal: true, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !831)
!831 = !{!832, !833, !834, !835, !837, !838, !839, !840, !842, !843}
!832 = !DILocalVariable(name: "r", arg: 1, scope: !830, file: !3, line: 169, type: !345)
!833 = !DILocalVariable(name: "buf", arg: 2, scope: !830, file: !3, line: 169, type: !77)
!834 = !DILocalVariable(name: "len", arg: 3, scope: !830, file: !3, line: 169, type: !68)
!835 = !DILocalVariable(name: "retval", scope: !830, file: !3, line: 170, type: !836)
!836 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !84, line: 200, baseType: !137)
!837 = !DILocalVariable(name: "j", scope: !830, file: !3, line: 171, type: !92)
!838 = !DILocalVariable(name: "p", scope: !830, file: !3, line: 172, type: !54)
!839 = !DILocalVariable(name: "doflush", scope: !830, file: !3, line: 173, type: !92)
!840 = !DILocalVariable(name: "count", scope: !841, file: !3, line: 192, type: !68)
!841 = distinct !DILexicalBlock(scope: !830, file: !3, line: 191, column: 16)
!842 = !DILocalVariable(name: "broken", scope: !841, file: !3, line: 193, type: !92)
!843 = !DILocalVariable(name: "nwritten", scope: !844, file: !3, line: 203, type: !68)
!844 = distinct !DILexicalBlock(scope: !845, file: !3, line: 194, column: 50)
!845 = distinct !DILexicalBlock(scope: !846, file: !3, line: 194, column: 9)
!846 = distinct !DILexicalBlock(scope: !841, file: !3, line: 194, column: 9)
!847 = !DILocation(line: 169, column: 34, scope: !830)
!848 = !DILocation(line: 169, column: 49, scope: !830)
!849 = !DILocation(line: 169, column: 61, scope: !830)
!850 = !DILocation(line: 172, column: 20, scope: !830)
!851 = !DILocation(line: 173, column: 24, scope: !830)
!852 = !DILocation(line: 173, column: 39, scope: !830)
!853 = !DILocation(line: 173, column: 32, scope: !830)
!854 = !DILocation(line: 177, column: 9, scope: !830)
!855 = !DILocation(line: 178, column: 49, scope: !856)
!856 = distinct !DILexicalBlock(scope: !857, file: !3, line: 177, column: 14)
!857 = distinct !DILexicalBlock(scope: !830, file: !3, line: 177, column: 9)
!858 = !DILocation(line: 178, column: 27, scope: !856)
!859 = !DILocation(line: 178, column: 25, scope: !856)
!860 = !DILocation(line: 87, column: 39, scope: !693, inlinedAt: !861)
!861 = distinct !DILocation(line: 180, column: 13, scope: !862)
!862 = distinct !DILexicalBlock(scope: !856, file: !3, line: 180, column: 13)
!863 = !DILocation(line: 88, column: 27, scope: !693, inlinedAt: !861)
!864 = !DILocation(line: 88, column: 19, scope: !693, inlinedAt: !861)
!865 = !DILocation(line: 89, column: 5, scope: !693, inlinedAt: !861)
!866 = !DILocation(line: 95, column: 20, scope: !705, inlinedAt: !861)
!867 = !DILocation(line: 95, column: 35, scope: !705, inlinedAt: !861)
!868 = !DILocation(line: 95, column: 13, scope: !705, inlinedAt: !861)
!869 = !DILocation(line: 97, column: 20, scope: !705, inlinedAt: !861)
!870 = !DILocation(line: 97, column: 35, scope: !705, inlinedAt: !861)
!871 = !DILocation(line: 97, column: 13, scope: !705, inlinedAt: !861)
!872 = !DILocation(line: 99, column: 20, scope: !705, inlinedAt: !861)
!873 = !DILocation(line: 99, column: 35, scope: !705, inlinedAt: !861)
!874 = !DILocation(line: 99, column: 13, scope: !705, inlinedAt: !861)
!875 = !DILocation(line: 0, scope: !705, inlinedAt: !861)
!876 = !DILocation(line: 180, column: 37, scope: !862)
!877 = !DILocation(line: 180, column: 13, scope: !856)
!878 = !DILocation(line: 183, column: 9, scope: !830)
!879 = !DILocation(line: 184, column: 42, scope: !880)
!880 = distinct !DILexicalBlock(scope: !881, file: !3, line: 183, column: 18)
!881 = distinct !DILexicalBlock(scope: !830, file: !3, line: 183, column: 9)
!882 = !DILocation(line: 88, column: 27, scope: !693, inlinedAt: !883)
!883 = distinct !DILocation(line: 185, column: 15, scope: !880)
!884 = !DILocation(line: 87, column: 39, scope: !693, inlinedAt: !883)
!885 = !DILocation(line: 88, column: 19, scope: !693, inlinedAt: !883)
!886 = !DILocation(line: 89, column: 5, scope: !693, inlinedAt: !883)
!887 = !DILocation(line: 91, column: 20, scope: !705, inlinedAt: !883)
!888 = !DILocation(line: 91, column: 13, scope: !705, inlinedAt: !883)
!889 = !DILocation(line: 93, column: 20, scope: !705, inlinedAt: !883)
!890 = !DILocation(line: 93, column: 34, scope: !705, inlinedAt: !883)
!891 = !DILocation(line: 93, column: 13, scope: !705, inlinedAt: !883)
!892 = !DILocation(line: 95, column: 20, scope: !705, inlinedAt: !883)
!893 = !DILocation(line: 95, column: 35, scope: !705, inlinedAt: !883)
!894 = !DILocation(line: 95, column: 13, scope: !705, inlinedAt: !883)
!895 = !DILocation(line: 97, column: 20, scope: !705, inlinedAt: !883)
!896 = !DILocation(line: 97, column: 35, scope: !705, inlinedAt: !883)
!897 = !DILocation(line: 97, column: 13, scope: !705, inlinedAt: !883)
!898 = !DILocation(line: 99, column: 20, scope: !705, inlinedAt: !883)
!899 = !DILocation(line: 99, column: 35, scope: !705, inlinedAt: !883)
!900 = !DILocation(line: 99, column: 13, scope: !705, inlinedAt: !883)
!901 = !DILocation(line: 0, scope: !856)
!902 = !DILocation(line: 191, column: 5, scope: !830)
!903 = !DILocation(line: 194, column: 37, scope: !845)
!904 = !DILocation(line: 192, column: 28, scope: !841)
!905 = !DILocation(line: 192, column: 24, scope: !841)
!906 = !DILocation(line: 192, column: 16, scope: !841)
!907 = !DILocation(line: 193, column: 13, scope: !841)
!908 = !DILocation(line: 171, column: 9, scope: !830)
!909 = !DILocation(line: 194, column: 23, scope: !845)
!910 = !DILocation(line: 194, column: 9, scope: !846)
!911 = !DILocation(line: 195, column: 29, scope: !912)
!912 = distinct !DILexicalBlock(scope: !844, file: !3, line: 195, column: 17)
!913 = !DILocation(line: 195, column: 17, scope: !912)
!914 = !DILocation(line: 195, column: 38, scope: !912)
!915 = !DILocation(line: 195, column: 17, scope: !844)
!916 = !DILocation(line: 197, column: 23, scope: !917)
!917 = distinct !DILexicalBlock(scope: !912, file: !3, line: 195, column: 44)
!918 = !DILocation(line: 198, column: 17, scope: !917)
!919 = !DILocation(line: 203, column: 20, scope: !844)
!920 = !DILocation(line: 205, column: 44, scope: !921)
!921 = distinct !DILexicalBlock(scope: !844, file: !3, line: 204, column: 38)
!922 = !DILocation(line: 205, column: 32, scope: !921)
!923 = !DILocation(line: 205, column: 52, scope: !921)
!924 = !DILocation(line: 205, column: 67, scope: !921)
!925 = !DILocation(line: 205, column: 26, scope: !921)
!926 = !DILocation(line: 170, column: 13, scope: !830)
!927 = !DILocation(line: 206, column: 28, scope: !928)
!928 = distinct !DILexicalBlock(scope: !921, file: !3, line: 206, column: 21)
!929 = !DILocation(line: 206, column: 21, scope: !921)
!930 = !DILocation(line: 211, column: 32, scope: !931)
!931 = distinct !DILexicalBlock(scope: !932, file: !3, line: 211, column: 25)
!932 = distinct !DILexicalBlock(scope: !928, file: !3, line: 206, column: 34)
!933 = !DILocation(line: 211, column: 38, scope: !931)
!934 = !DILocation(line: 211, column: 41, scope: !931)
!935 = !DILocation(line: 211, column: 47, scope: !931)
!936 = !DILocation(line: 211, column: 25, scope: !932)
!937 = !DILocation(line: 211, column: 63, scope: !931)
!938 = !DILocation(line: 211, column: 69, scope: !931)
!939 = !DILocation(line: 214, column: 26, scope: !921)
!940 = !DILocation(line: 204, column: 28, scope: !844)
!941 = !DILocation(line: 204, column: 13, scope: !844)
!942 = distinct !{!942, !941, !943}
!943 = !DILocation(line: 215, column: 13, scope: !844)
!944 = !DILocation(line: 219, column: 40, scope: !945)
!945 = distinct !DILexicalBlock(scope: !946, file: !3, line: 217, column: 36)
!946 = distinct !DILexicalBlock(scope: !844, file: !3, line: 217, column: 17)
!947 = !DILocation(line: 219, column: 29, scope: !945)
!948 = !DILocation(line: 219, column: 17, scope: !945)
!949 = !DILocation(line: 219, column: 38, scope: !945)
!950 = !DILocation(line: 220, column: 33, scope: !951)
!951 = distinct !DILexicalBlock(scope: !945, file: !3, line: 220, column: 21)
!952 = !DILocation(line: 220, column: 21, scope: !951)
!953 = !DILocation(line: 220, column: 42, scope: !951)
!954 = !DILocation(line: 220, column: 21, scope: !945)
!955 = !DILocation(line: 220, column: 69, scope: !951)
!956 = !DILocation(line: 220, column: 48, scope: !951)
!957 = !DILocation(line: 0, scope: !841)
!958 = !DILocation(line: 194, column: 46, scope: !845)
!959 = distinct !{!959, !910, !960}
!960 = !DILocation(line: 222, column: 9, scope: !846)
!961 = !DILocation(line: 0, scope: !917)
!962 = !DILocation(line: 223, column: 20, scope: !963)
!963 = distinct !DILexicalBlock(scope: !841, file: !3, line: 223, column: 13)
!964 = !DILocation(line: 223, column: 13, scope: !841)
!965 = !DILocation(line: 224, column: 11, scope: !841)
!966 = !DILocation(line: 225, column: 13, scope: !841)
!967 = !DILocation(line: 226, column: 25, scope: !841)
!968 = !DILocation(line: 229, column: 39, scope: !969)
!969 = distinct !DILexicalBlock(scope: !830, file: !3, line: 229, column: 9)
!970 = !DILocation(line: 229, column: 18, scope: !969)
!971 = !DILocation(line: 0, scope: !830)
!972 = !DILocation(line: 231, column: 1, scope: !830)
!973 = distinct !DISubprogram(name: "rioFdsetTell", scope: !3, file: !3, line: 242, type: !748, isLocal: true, isDefinition: true, scopeLine: 242, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !974)
!974 = !{!975}
!975 = !DILocalVariable(name: "r", arg: 1, scope: !973, file: !3, line: 242, type: !345)
!976 = !DILocation(line: 242, column: 32, scope: !973)
!977 = !DILocation(line: 243, column: 24, scope: !973)
!978 = !DILocation(line: 243, column: 5, scope: !973)
!979 = distinct !DISubprogram(name: "rioFdsetFlush", scope: !3, file: !3, line: 248, type: !756, isLocal: true, isDefinition: true, scopeLine: 248, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !980)
!980 = !{!981}
!981 = !DILocalVariable(name: "r", arg: 1, scope: !979, file: !3, line: 248, type: !345)
!982 = !DILocation(line: 248, column: 31, scope: !979)
!983 = !DILocation(line: 251, column: 12, scope: !979)
!984 = !DILocation(line: 251, column: 5, scope: !979)
