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
  %55 = tail call i8* @sdsempty() #5, !dbg !423
  %56 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, i32 0, i32 4, !dbg !424
  store i8* %55, i8** %56, align 8, !dbg !425, !tbaa !364
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !426
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
  tail call void @zfree(i8* %4) #5, !dbg !435
  %5 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, i32 0, i32 1, !dbg !436
  %6 = bitcast i32** %5 to i8**, !dbg !436
  %7 = load i8*, i8** %6, align 8, !dbg !436, !tbaa !364
  tail call void @zfree(i8* %7) #5, !dbg !437
  %8 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, i32 0, i32 4, !dbg !438
  %9 = load i8*, i8** %8, align 8, !dbg !438, !tbaa !364
  tail call void @sdsfree(i8* %9) #5, !dbg !439
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !440
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
  %6 = tail call i64 @crc64(i64 %5, i8* %1, i64 %2) #5, !dbg !454
  store i64 %6, i64* %4, align 8, !dbg !455, !tbaa !452
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !456
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
  tail call void @_serverAssert(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 303) #5, !dbg !465
  tail call void @_exit(i32 1) #6, !dbg !465
  unreachable, !dbg !465

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, i32 0, i32 2, !dbg !467
  %9 = bitcast i32* %8 to i64*, !dbg !467
  store i64 %1, i64* %9, align 8, !dbg !468, !tbaa !364
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !469
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
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %5) #7, !dbg !485
  store i8 %1, i8* %5, align 16, !dbg !487, !tbaa !364
  %6 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 1, !dbg !488
  %7 = call i32 @ll2string(i8* nonnull %6, i64 127, i64 %2) #5, !dbg !489
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
  call void %30(%struct._rio* nonnull %0, i8* %24, i64 %29) #5, !dbg !525
  br label %33, !dbg !525

; <label>:33:                                     ; preds = %32, %22
  %34 = load i64 (%struct._rio*, i8*, i64)*, i64 (%struct._rio*, i8*, i64)** %20, align 8, !dbg !526, !tbaa !528
  %35 = call i64 %34(%struct._rio* nonnull %0, i8* %24, i64 %29) #5, !dbg !529
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

; <label>:43:                                     ; preds = %33, %37, %3
  %44 = phi i64 [ %15, %3 ], [ 0, %33 ], [ %15, %37 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !536
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %5) #7, !dbg !537
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !537
  ret i64 %44, !dbg !537
}

; Function Attrs: noredzone
declare dso_local i32 @ll2string(i8*, i64, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i64 @rioWriteBulkString(%struct._rio*, i8*, i64) local_unnamed_addr #0 !dbg !538 {
  %4 = alloca [128 x i8], align 16
  %5 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0, !dbg !555
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %5) #7, !dbg !555
  store i8 36, i8* %5, align 16, !dbg !556, !tbaa !364
  %6 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 1, !dbg !557
  %7 = call i32 @ll2string(i8* nonnull %6, i64 127, i64 %2) #5, !dbg !558
  %8 = add nsw i32 %7, 1, !dbg !559
  %9 = add nsw i32 %7, 2, !dbg !561
  %10 = sext i32 %8 to i64, !dbg !562
  %11 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 %10, !dbg !562
  store i8 13, i8* %11, align 1, !dbg !563, !tbaa !364
  %12 = add nsw i32 %7, 3, !dbg !564
  %13 = sext i32 %9 to i64, !dbg !565
  %14 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 %13, !dbg !565
  store i8 10, i8* %14, align 1, !dbg !566, !tbaa !364
  %15 = sext i32 %12 to i64, !dbg !567
  %16 = icmp eq i32 %12, 0, !dbg !572
  br i1 %16, label %17, label %18, !dbg !572

; <label>:17:                                     ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !573
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %5) #7, !dbg !574
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !574
  br label %96, !dbg !576

; <label>:18:                                     ; preds = %3
  %19 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 7
  %20 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 4
  %21 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 1
  %22 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 6
  br label %23, !dbg !572

; <label>:23:                                     ; preds = %38, %18
  %24 = phi i64 [ %15, %18 ], [ %40, %38 ]
  %25 = phi i8* [ %5, %18 ], [ %39, %38 ]
  %26 = load i64, i64* %19, align 8, !dbg !577, !tbaa !515
  %27 = icmp ne i64 %26, 0, !dbg !578
  %28 = icmp ult i64 %26, %24, !dbg !579
  %29 = and i1 %27, %28, !dbg !580
  %30 = select i1 %29, i64 %26, i64 %24, !dbg !580
  %31 = load void (%struct._rio*, i8*, i64)*, void (%struct._rio*, i8*, i64)** %20, align 8, !dbg !582, !tbaa !522
  %32 = icmp eq void (%struct._rio*, i8*, i64)* %31, null, !dbg !583
  br i1 %32, label %34, label %33, !dbg !584

; <label>:33:                                     ; preds = %23
  call void %31(%struct._rio* nonnull %0, i8* %25, i64 %30) #5, !dbg !585
  br label %34, !dbg !585

; <label>:34:                                     ; preds = %33, %23
  %35 = load i64 (%struct._rio*, i8*, i64)*, i64 (%struct._rio*, i8*, i64)** %21, align 8, !dbg !586, !tbaa !528
  %36 = call i64 %35(%struct._rio* nonnull %0, i8* %25, i64 %30) #5, !dbg !587
  %37 = icmp eq i64 %36, 0, !dbg !588
  br i1 %37, label %44, label %38, !dbg !589

; <label>:38:                                     ; preds = %34
  %39 = getelementptr inbounds i8, i8* %25, i64 %30, !dbg !590
  %40 = sub i64 %24, %30, !dbg !591
  %41 = load i64, i64* %22, align 8, !dbg !592, !tbaa !535
  %42 = add i64 %41, %30, !dbg !592
  store i64 %42, i64* %22, align 8, !dbg !592, !tbaa !535
  %43 = icmp eq i64 %40, 0, !dbg !572
  br i1 %43, label %45, label %23, !dbg !572

; <label>:44:                                     ; preds = %34
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !573
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %5) #7, !dbg !574
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !574
  br label %96, !dbg !576

; <label>:45:                                     ; preds = %38
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !573
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %5) #7, !dbg !574
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !574
  %46 = icmp eq i64 %2, 0, !dbg !593
  br i1 %46, label %70, label %47, !dbg !595

; <label>:47:                                     ; preds = %45, %63
  %48 = phi i64 [ %65, %63 ], [ %2, %45 ]
  %49 = phi i8* [ %64, %63 ], [ %1, %45 ]
  %50 = load i64, i64* %19, align 8, !dbg !599, !tbaa !515
  %51 = icmp ne i64 %50, 0, !dbg !600
  %52 = icmp ult i64 %50, %48, !dbg !601
  %53 = and i1 %51, %52, !dbg !602
  %54 = select i1 %53, i64 %50, i64 %48, !dbg !602
  %55 = load void (%struct._rio*, i8*, i64)*, void (%struct._rio*, i8*, i64)** %20, align 8, !dbg !604, !tbaa !522
  %56 = icmp eq void (%struct._rio*, i8*, i64)* %55, null, !dbg !605
  br i1 %56, label %58, label %57, !dbg !606

; <label>:57:                                     ; preds = %47
  call void %55(%struct._rio* nonnull %0, i8* %49, i64 %54) #5, !dbg !607
  br label %58, !dbg !607

; <label>:58:                                     ; preds = %57, %47
  %59 = load i64 (%struct._rio*, i8*, i64)*, i64 (%struct._rio*, i8*, i64)** %21, align 8, !dbg !608, !tbaa !528
  %60 = call i64 %59(%struct._rio* nonnull %0, i8* %49, i64 %54) #5, !dbg !609
  %61 = icmp eq i64 %60, 0, !dbg !610
  br i1 %61, label %62, label %63, !dbg !611

; <label>:62:                                     ; preds = %58
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !612
  br label %96, !dbg !613

; <label>:63:                                     ; preds = %58
  %64 = getelementptr inbounds i8, i8* %49, i64 %54, !dbg !614
  %65 = sub i64 %48, %54, !dbg !615
  %66 = load i64, i64* %22, align 8, !dbg !616, !tbaa !535
  %67 = add i64 %66, %54, !dbg !616
  store i64 %67, i64* %22, align 8, !dbg !616, !tbaa !535
  %68 = icmp eq i64 %65, 0, !dbg !617
  br i1 %68, label %69, label %47, !dbg !617

; <label>:69:                                     ; preds = %63
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !612
  br label %70

; <label>:70:                                     ; preds = %69, %45
  br label %71, !dbg !618

; <label>:71:                                     ; preds = %70, %87
  %72 = phi i64 [ %89, %87 ], [ 2, %70 ]
  %73 = phi i8* [ %88, %87 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %70 ]
  %74 = load i64, i64* %19, align 8, !dbg !618, !tbaa !515
  %75 = icmp ne i64 %74, 0, !dbg !623
  %76 = icmp ult i64 %74, %72, !dbg !624
  %77 = and i1 %75, %76, !dbg !625
  %78 = select i1 %77, i64 %74, i64 %72, !dbg !625
  %79 = load void (%struct._rio*, i8*, i64)*, void (%struct._rio*, i8*, i64)** %20, align 8, !dbg !627, !tbaa !522
  %80 = icmp eq void (%struct._rio*, i8*, i64)* %79, null, !dbg !628
  br i1 %80, label %82, label %81, !dbg !629

; <label>:81:                                     ; preds = %71
  call void %79(%struct._rio* nonnull %0, i8* %73, i64 %78) #5, !dbg !630
  br label %82, !dbg !630

; <label>:82:                                     ; preds = %81, %71
  %83 = load i64 (%struct._rio*, i8*, i64)*, i64 (%struct._rio*, i8*, i64)** %21, align 8, !dbg !631, !tbaa !528
  %84 = call i64 %83(%struct._rio* nonnull %0, i8* %73, i64 %78) #5, !dbg !632
  %85 = icmp eq i64 %84, 0, !dbg !633
  br i1 %85, label %86, label %87, !dbg !634

; <label>:86:                                     ; preds = %82
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !635
  br label %96, !dbg !636

; <label>:87:                                     ; preds = %82
  %88 = getelementptr inbounds i8, i8* %73, i64 %78, !dbg !637
  %89 = sub i64 %72, %78, !dbg !638
  %90 = load i64, i64* %22, align 8, !dbg !639, !tbaa !535
  %91 = add i64 %90, %78, !dbg !639
  store i64 %91, i64* %22, align 8, !dbg !639, !tbaa !535
  %92 = icmp eq i64 %89, 0, !dbg !640
  br i1 %92, label %93, label %71, !dbg !640

; <label>:93:                                     ; preds = %87
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !635
  %94 = add i64 %2, 2, !dbg !641
  %95 = add i64 %94, %15, !dbg !642
  br label %96, !dbg !643

; <label>:96:                                     ; preds = %86, %62, %17, %44, %93
  %97 = phi i64 [ %95, %93 ], [ 0, %44 ], [ 0, %17 ], [ 0, %62 ], [ 0, %86 ], !dbg !644
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !645
  ret i64 %97, !dbg !645
}

; Function Attrs: noredzone nounwind
define dso_local i64 @rioWriteBulkLongLong(%struct._rio*, i64) local_unnamed_addr #0 !dbg !646 {
  %3 = alloca [32 x i8], align 16
  %4 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0, !dbg !658
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #7, !dbg !658
  %5 = call i32 @ll2string(i8* nonnull %4, i64 32, i64 %1) #5, !dbg !660
  %6 = zext i32 %5 to i64, !dbg !662
  %7 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* nonnull %4, i64 %6) #8, !dbg !663
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #7, !dbg !664
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !665
  ret i64 %7, !dbg !665
}

; Function Attrs: noredzone nounwind
define dso_local i64 @rioWriteBulkDouble(%struct._rio*, double) local_unnamed_addr #0 !dbg !666 {
  %3 = alloca [128 x i8], align 16
  %4 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0, !dbg !677
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %4) #7, !dbg !677
  %5 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %4, i64 128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), double %1) #5, !dbg !679
  %6 = zext i32 %5 to i64, !dbg !681
  %7 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* nonnull %4, i64 %6) #8, !dbg !682
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %4) #7, !dbg !683
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !684
  ret i64 %7, !dbg !684
}

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i64 @rioBufferRead(%struct._rio* nocapture, i8*, i64) #0 !dbg !685 {
  %4 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, !dbg !695
  %5 = bitcast %union.anon* %4 to i8**, !dbg !697
  %6 = load i8*, i8** %5, align 8, !dbg !697, !tbaa !364
  %7 = getelementptr inbounds i8, i8* %6, i64 -1, !dbg !707
  %8 = load i8, i8* %7, align 1, !dbg !707, !tbaa !364
  %9 = trunc i8 %8 to i3, !dbg !709
  switch i3 %9, label %31 [
    i3 0, label %10
    i3 1, label %13
    i3 2, label %17
    i3 3, label %22
    i3 -4, label %27
  ], !dbg !709

; <label>:10:                                     ; preds = %3
  %11 = lshr i8 %8, 3, !dbg !710
  %12 = zext i8 %11 to i64, !dbg !710
  br label %31, !dbg !712

; <label>:13:                                     ; preds = %3
  %14 = getelementptr inbounds i8, i8* %6, i64 -3, !dbg !713
  %15 = load i8, i8* %14, align 1, !dbg !714, !tbaa !364
  %16 = zext i8 %15 to i64, !dbg !713
  br label %31, !dbg !715

; <label>:17:                                     ; preds = %3
  %18 = getelementptr inbounds i8, i8* %6, i64 -5, !dbg !716
  %19 = bitcast i8* %18 to i16*, !dbg !717
  %20 = load i16, i16* %19, align 1, !dbg !717, !tbaa !718
  %21 = zext i16 %20 to i64, !dbg !716
  br label %31, !dbg !720

; <label>:22:                                     ; preds = %3
  %23 = getelementptr inbounds i8, i8* %6, i64 -9, !dbg !721
  %24 = bitcast i8* %23 to i32*, !dbg !722
  %25 = load i32, i32* %24, align 1, !dbg !722, !tbaa !359
  %26 = zext i32 %25 to i64, !dbg !721
  br label %31, !dbg !723

; <label>:27:                                     ; preds = %3
  %28 = getelementptr inbounds i8, i8* %6, i64 -17, !dbg !724
  %29 = bitcast i8* %28 to i64*, !dbg !725
  %30 = load i64, i64* %29, align 1, !dbg !725, !tbaa !357
  br label %31, !dbg !726

; <label>:31:                                     ; preds = %3, %10, %13, %17, %22, %27
  %32 = phi i64 [ %30, %27 ], [ %26, %22 ], [ %21, %17 ], [ %16, %13 ], [ %12, %10 ], [ 0, %3 ], !dbg !727
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !728
  %33 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, i32 0, i32 1, !dbg !729
  %34 = bitcast i32** %33 to i64*, !dbg !729
  %35 = load i64, i64* %34, align 8, !dbg !729, !tbaa !364
  %36 = sub i64 %32, %35, !dbg !730
  %37 = icmp ult i64 %36, %2, !dbg !731
  br i1 %37, label %43, label %38, !dbg !732

; <label>:38:                                     ; preds = %31
  %39 = getelementptr inbounds i8, i8* %6, i64 %35, !dbg !733
  %40 = tail call i8* @memcpy(i8* %1, i8* %39, i64 %2) #5, !dbg !734
  %41 = load i64, i64* %34, align 8, !dbg !735, !tbaa !364
  %42 = add i64 %41, %2, !dbg !735
  store i64 %42, i64* %34, align 8, !dbg !735, !tbaa !364
  br label %43, !dbg !736

; <label>:43:                                     ; preds = %31, %38
  %44 = phi i64 [ 1, %38 ], [ 0, %31 ], !dbg !737
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !738
  ret i64 %44, !dbg !738
}

; Function Attrs: noredzone nounwind
define internal i64 @rioBufferWrite(%struct._rio* nocapture, i8*, i64) #0 !dbg !739 {
  %4 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, !dbg !747
  %5 = bitcast %union.anon* %4 to i8**, !dbg !748
  %6 = load i8*, i8** %5, align 8, !dbg !748, !tbaa !364
  %7 = tail call i8* @sdscatlen(i8* %6, i8* %1, i64 %2) #5, !dbg !749
  store i8* %7, i8** %5, align 8, !dbg !750, !tbaa !364
  %8 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, i32 0, i32 1, !dbg !751
  %9 = bitcast i32** %8 to i64*, !dbg !751
  %10 = load i64, i64* %9, align 8, !dbg !752, !tbaa !364
  %11 = add i64 %10, %2, !dbg !752
  store i64 %11, i64* %9, align 8, !dbg !752, !tbaa !364
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !753
  ret i64 1, !dbg !753
}

; Function Attrs: noredzone nounwind
define internal i64 @rioBufferTell(%struct._rio* nocapture readonly) #0 !dbg !754 {
  %2 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, i32 0, i32 1, !dbg !760
  %3 = bitcast i32** %2 to i64*, !dbg !760
  %4 = load i64, i64* %3, align 8, !dbg !760, !tbaa !364
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !761
  ret i64 %4, !dbg !761
}

; Function Attrs: noredzone nounwind
define internal i32 @rioBufferFlush(%struct._rio* nocapture readnone) #0 !dbg !762 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !768
  ret i32 1, !dbg !768
}

; Function Attrs: noredzone
declare dso_local i8* @sdscatlen(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i64 @rioFileRead(%struct._rio* nocapture readonly, i8*, i64) #0 !dbg !769 {
  %4 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, !dbg !777
  %5 = bitcast %union.anon* %4 to %struct.__sFILE**, !dbg !778
  %6 = load %struct.__sFILE*, %struct.__sFILE** %5, align 8, !dbg !778, !tbaa !364
  %7 = tail call i64 @fread(i8* %1, i64 %2, i64 1, %struct.__sFILE* %6) #5, !dbg !779
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !780
  ret i64 %7, !dbg !780
}

; Function Attrs: noredzone nounwind
define internal i64 @rioFileWrite(%struct._rio* nocapture, i8*, i64) #0 !dbg !781 {
  %4 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, !dbg !790
  %5 = bitcast %union.anon* %4 to %struct.__sFILE**, !dbg !791
  %6 = load %struct.__sFILE*, %struct.__sFILE** %5, align 8, !dbg !791, !tbaa !364
  %7 = tail call i64 @fwrite(i8* %1, i64 %2, i64 1, %struct.__sFILE* %6) #5, !dbg !792
  %8 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, i32 0, i32 1, !dbg !794
  %9 = bitcast i32** %8 to i64*, !dbg !794
  %10 = load i64, i64* %9, align 8, !dbg !795, !tbaa !364
  %11 = add i64 %10, %2, !dbg !795
  store i64 %11, i64* %9, align 8, !dbg !795, !tbaa !364
  %12 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, i32 0, i32 2, !dbg !796
  %13 = bitcast i32* %12 to i64*, !dbg !796
  %14 = load i64, i64* %13, align 8, !dbg !796, !tbaa !364
  %15 = icmp eq i64 %14, 0, !dbg !798
  %16 = icmp slt i64 %11, %14, !dbg !799
  %17 = or i1 %15, %16, !dbg !800
  br i1 %17, label %24, label %18, !dbg !800

; <label>:18:                                     ; preds = %3
  %19 = load %struct.__sFILE*, %struct.__sFILE** %5, align 8, !dbg !801, !tbaa !364
  %20 = tail call i32 @fflush(%struct.__sFILE* %19) #5, !dbg !803
  %21 = load %struct.__sFILE*, %struct.__sFILE** %5, align 8, !dbg !804, !tbaa !364
  %22 = tail call i32 @fileno(%struct.__sFILE* %21) #5, !dbg !805
  %23 = tail call i32 @fsync(i32 %22) #5, !dbg !806
  store i64 0, i64* %9, align 8, !dbg !807, !tbaa !364
  br label %24, !dbg !808

; <label>:24:                                     ; preds = %3, %18
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !809
  ret i64 %7, !dbg !809
}

; Function Attrs: noredzone nounwind
define internal i64 @rioFileTell(%struct._rio* nocapture readonly) #0 !dbg !810 {
  %2 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, !dbg !814
  %3 = bitcast %union.anon* %2 to %struct.__sFILE**, !dbg !815
  %4 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8, !dbg !815, !tbaa !364
  %5 = tail call i64 @ftello(%struct.__sFILE* %4) #5, !dbg !816
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !817
  ret i64 %5, !dbg !817
}

; Function Attrs: noredzone nounwind
define internal i32 @rioFileFlush(%struct._rio* nocapture readonly) #0 !dbg !818 {
  %2 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, !dbg !822
  %3 = bitcast %union.anon* %2 to %struct.__sFILE**, !dbg !823
  %4 = load %struct.__sFILE*, %struct.__sFILE** %3, align 8, !dbg !823, !tbaa !364
  %5 = tail call i32 @fflush(%struct.__sFILE* %4) #5, !dbg !824
  %6 = icmp eq i32 %5, 0, !dbg !825
  %7 = zext i1 %6 to i32, !dbg !826
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !827
  ret i32 %7, !dbg !827
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
define internal i64 @rioFdsetRead(%struct._rio* nocapture readnone, i8* nocapture readnone, i64) #0 !dbg !828 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !836
  ret i64 0, !dbg !836
}

; Function Attrs: noredzone nounwind
define internal i64 @rioFdsetWrite(%struct._rio* nocapture, i8*, i64) #0 !dbg !837 {
  %4 = icmp eq i8* %1, null, !dbg !858
  %5 = icmp eq i64 %2, 0, !dbg !859
  %6 = and i1 %4, %5, !dbg !860
  br i1 %5, label %33, label %7, !dbg !861

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, i32 0, i32 4, !dbg !862
  %9 = load i8*, i8** %8, align 8, !dbg !862, !tbaa !364
  %10 = tail call i8* @sdscatlen(i8* %9, i8* %1, i64 %2) #5, !dbg !865
  store i8* %10, i8** %8, align 8, !dbg !866, !tbaa !364
  %11 = getelementptr inbounds i8, i8* %10, i64 -1, !dbg !870
  %12 = load i8, i8* %11, align 1, !dbg !870, !tbaa !364
  %13 = trunc i8 %12 to i3, !dbg !872
  switch i3 %13, label %28 [
    i3 -4, label %24
    i3 3, label %19
    i3 2, label %14
  ], !dbg !872

; <label>:14:                                     ; preds = %7
  %15 = getelementptr inbounds i8, i8* %10, i64 -5, !dbg !873
  %16 = bitcast i8* %15 to i16*, !dbg !874
  %17 = load i16, i16* %16, align 1, !dbg !874, !tbaa !718
  %18 = zext i16 %17 to i64, !dbg !873
  br label %29, !dbg !875

; <label>:19:                                     ; preds = %7
  %20 = getelementptr inbounds i8, i8* %10, i64 -9, !dbg !876
  %21 = bitcast i8* %20 to i32*, !dbg !877
  %22 = load i32, i32* %21, align 1, !dbg !877, !tbaa !359
  %23 = zext i32 %22 to i64, !dbg !876
  br label %29, !dbg !878

; <label>:24:                                     ; preds = %7
  %25 = getelementptr inbounds i8, i8* %10, i64 -17, !dbg !879
  %26 = bitcast i8* %25 to i64*, !dbg !880
  %27 = load i64, i64* %26, align 1, !dbg !880, !tbaa !357
  br label %29, !dbg !881

; <label>:28:                                     ; preds = %7
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !882
  br label %139, !dbg !883

; <label>:29:                                     ; preds = %14, %19, %24
  %30 = phi i64 [ %27, %24 ], [ %23, %19 ], [ %18, %14 ], !dbg !884
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !882
  %31 = icmp ugt i64 %30, 16384, !dbg !885
  %32 = or i1 %6, %31, !dbg !886
  br i1 %32, label %39, label %139, !dbg !886

; <label>:33:                                     ; preds = %3
  br i1 %6, label %34, label %139, !dbg !883

; <label>:34:                                     ; preds = %33
  %35 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, i32 0, i32 4
  %36 = load i8*, i8** %35, align 8, !dbg !887, !tbaa !364
  %37 = getelementptr inbounds i8, i8* %36, i64 -1
  %38 = load i8, i8* %37, align 1, !dbg !890, !tbaa !364
  br label %39, !dbg !883

; <label>:39:                                     ; preds = %34, %29
  %40 = phi i8 [ %38, %34 ], [ %12, %29 ], !dbg !890
  %41 = phi i8* [ %36, %34 ], [ %10, %29 ], !dbg !887
  %42 = trunc i8 %40 to i3, !dbg !894
  switch i3 %42, label %43 [
    i3 0, label %44
    i3 1, label %47
    i3 2, label %51
    i3 3, label %56
    i3 -4, label %61
  ], !dbg !894

; <label>:43:                                     ; preds = %39
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !895
  br label %136, !dbg !896

; <label>:44:                                     ; preds = %39
  %45 = lshr i8 %40, 3, !dbg !897
  %46 = zext i8 %45 to i64, !dbg !897
  br label %65, !dbg !898

; <label>:47:                                     ; preds = %39
  %48 = getelementptr inbounds i8, i8* %41, i64 -3, !dbg !899
  %49 = load i8, i8* %48, align 1, !dbg !900, !tbaa !364
  %50 = zext i8 %49 to i64, !dbg !899
  br label %65, !dbg !901

; <label>:51:                                     ; preds = %39
  %52 = getelementptr inbounds i8, i8* %41, i64 -5, !dbg !902
  %53 = bitcast i8* %52 to i16*, !dbg !903
  %54 = load i16, i16* %53, align 1, !dbg !903, !tbaa !718
  %55 = zext i16 %54 to i64, !dbg !902
  br label %65, !dbg !904

; <label>:56:                                     ; preds = %39
  %57 = getelementptr inbounds i8, i8* %41, i64 -9, !dbg !905
  %58 = bitcast i8* %57 to i32*, !dbg !906
  %59 = load i32, i32* %58, align 1, !dbg !906, !tbaa !359
  %60 = zext i32 %59 to i64, !dbg !905
  br label %65, !dbg !907

; <label>:61:                                     ; preds = %39
  %62 = getelementptr inbounds i8, i8* %41, i64 -17, !dbg !908
  %63 = bitcast i8* %62 to i64*, !dbg !909
  %64 = load i64, i64* %63, align 1, !dbg !909, !tbaa !357
  br label %65, !dbg !910

; <label>:65:                                     ; preds = %61, %56, %51, %47, %44
  %66 = phi i64 [ %64, %61 ], [ %60, %56 ], [ %55, %51 ], [ %50, %47 ], [ %46, %44 ], !dbg !911
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !895
  %67 = icmp eq i64 %66, 0, !dbg !896
  br i1 %67, label %136, label %68, !dbg !896

; <label>:68:                                     ; preds = %65
  %69 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, i32 0, i32 2
  %70 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, i32 0, i32 1
  %71 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, i32 0, i32 0
  %72 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, i32 0, i32 3
  %73 = load i32, i32* %69, align 8, !dbg !912, !tbaa !364
  br label %74, !dbg !896

; <label>:74:                                     ; preds = %68, %130
  %75 = phi i32 [ %73, %68 ], [ %127, %130 ], !dbg !912
  %76 = phi i8* [ %41, %68 ], [ %131, %130 ]
  %77 = phi i64 [ %66, %68 ], [ %132, %130 ]
  %78 = icmp ult i64 %77, 1024, !dbg !913
  %79 = select i1 %78, i64 %77, i64 1024, !dbg !914
  %80 = icmp sgt i32 %75, 0, !dbg !918
  br i1 %80, label %81, label %126, !dbg !919

; <label>:81:                                     ; preds = %74, %120
  %82 = phi i64 [ %122, %120 ], [ 0, %74 ]
  %83 = phi i32 [ %121, %120 ], [ 0, %74 ]
  %84 = load i32*, i32** %70, align 8, !dbg !920, !tbaa !364
  %85 = getelementptr inbounds i32, i32* %84, i64 %82, !dbg !922
  %86 = load i32, i32* %85, align 4, !dbg !922, !tbaa !359
  %87 = icmp eq i32 %86, 0, !dbg !923
  br i1 %87, label %90, label %88, !dbg !924

; <label>:88:                                     ; preds = %81
  %89 = add nsw i32 %83, 1, !dbg !925
  br label %120, !dbg !927

; <label>:90:                                     ; preds = %81, %107
  %91 = phi i64 [ %108, %107 ], [ 0, %81 ]
  %92 = load i32*, i32** %71, align 8, !dbg !929, !tbaa !364
  %93 = getelementptr inbounds i32, i32* %92, i64 %82, !dbg !931
  %94 = load i32, i32* %93, align 4, !dbg !931, !tbaa !359
  %95 = getelementptr inbounds i8, i8* %76, i64 %91, !dbg !932
  %96 = sub i64 %79, %91, !dbg !933
  %97 = tail call i64 @write(i32 %94, i8* %95, i64 %96) #5, !dbg !934
  %98 = icmp slt i64 %97, 1, !dbg !936
  br i1 %98, label %99, label %107, !dbg !938

; <label>:99:                                     ; preds = %90
  %100 = icmp eq i64 %97, -1, !dbg !939
  br i1 %100, label %101, label %110, !dbg !942

; <label>:101:                                    ; preds = %99
  %102 = tail call i32* @__errno() #5, !dbg !943
  %103 = load i32, i32* %102, align 4, !dbg !943, !tbaa !359
  %104 = icmp eq i32 %103, 11, !dbg !944
  br i1 %104, label %105, label %110, !dbg !945

; <label>:105:                                    ; preds = %101
  %106 = tail call i32* @__errno() #5, !dbg !946
  store i32 116, i32* %106, align 4, !dbg !947, !tbaa !359
  br label %110, !dbg !946

; <label>:107:                                    ; preds = %90
  %108 = add i64 %97, %91, !dbg !948
  %109 = icmp eq i64 %79, %108, !dbg !949
  br i1 %109, label %120, label %90, !dbg !950, !llvm.loop !951

; <label>:110:                                    ; preds = %105, %101, %99
  %111 = tail call i32* @__errno() #5, !dbg !953
  %112 = load i32, i32* %111, align 4, !dbg !953, !tbaa !359
  %113 = load i32*, i32** %70, align 8, !dbg !956, !tbaa !364
  %114 = getelementptr inbounds i32, i32* %113, i64 %82, !dbg !957
  store i32 %112, i32* %114, align 4, !dbg !958, !tbaa !359
  %115 = load i32*, i32** %70, align 8, !dbg !959, !tbaa !364
  %116 = getelementptr inbounds i32, i32* %115, i64 %82, !dbg !961
  %117 = load i32, i32* %116, align 4, !dbg !961, !tbaa !359
  %118 = icmp eq i32 %117, 0, !dbg !962
  br i1 %118, label %119, label %120, !dbg !963

; <label>:119:                                    ; preds = %110
  store i32 5, i32* %116, align 4, !dbg !964, !tbaa !359
  br label %120, !dbg !965

; <label>:120:                                    ; preds = %107, %119, %110, %88
  %121 = phi i32 [ %89, %88 ], [ %83, %110 ], [ %83, %119 ], [ %83, %107 ], !dbg !966
  %122 = add nuw nsw i64 %82, 1, !dbg !967
  %123 = load i32, i32* %69, align 8, !dbg !912, !tbaa !364
  %124 = sext i32 %123 to i64, !dbg !918
  %125 = icmp slt i64 %122, %124, !dbg !918
  br i1 %125, label %81, label %126, !dbg !919, !llvm.loop !968

; <label>:126:                                    ; preds = %120, %74
  %127 = phi i32 [ %75, %74 ], [ %123, %120 ]
  %128 = phi i32 [ 0, %74 ], [ %121, %120 ], !dbg !970
  %129 = icmp eq i32 %128, %127, !dbg !971
  br i1 %129, label %139, label %130, !dbg !973

; <label>:130:                                    ; preds = %126
  %131 = getelementptr inbounds i8, i8* %76, i64 %79, !dbg !974
  %132 = sub i64 %77, %79, !dbg !975
  %133 = load i64, i64* %72, align 8, !dbg !976, !tbaa !364
  %134 = add i64 %133, %79, !dbg !976
  store i64 %134, i64* %72, align 8, !dbg !976, !tbaa !364
  %135 = icmp eq i64 %132, 0, !dbg !896
  br i1 %135, label %136, label %74, !dbg !896

; <label>:136:                                    ; preds = %130, %65, %43
  %137 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, i32 0, i32 4, !dbg !977
  %138 = load i8*, i8** %137, align 8, !dbg !977, !tbaa !364
  tail call void @sdsclear(i8* %138) #5, !dbg !979
  br label %139, !dbg !979

; <label>:139:                                    ; preds = %126, %28, %29, %33, %136
  %140 = phi i64 [ 1, %136 ], [ 1, %33 ], [ 1, %29 ], [ 1, %28 ], [ 0, %126 ], !dbg !980
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !981
  ret i64 %140, !dbg !981
}

; Function Attrs: noredzone nounwind
define internal i64 @rioFdsetTell(%struct._rio* nocapture readonly) #0 !dbg !982 {
  %2 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 8, i32 0, i32 3, !dbg !986
  %3 = load i64, i64* %2, align 8, !dbg !986, !tbaa !364
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !987
  ret i64 %3, !dbg !987
}

; Function Attrs: noredzone nounwind
define internal i32 @rioFdsetFlush(%struct._rio* nocapture) #0 !dbg !988 {
  %2 = tail call i64 @rioFdsetWrite(%struct._rio* %0, i8* null, i64 0) #8, !dbg !992
  %3 = trunc i64 %2 to i32, !dbg !992
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !993
  ret i32 %3, !dbg !993
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
!536 = !DILocation(line: 104, column: 1, scope: !501, inlinedAt: !510)
!537 = !DILocation(line: 323, column: 1, scope: !470)
!538 = distinct !DISubprogram(name: "rioWriteBulkString", scope: !3, file: !3, line: 326, type: !539, isLocal: false, isDefinition: true, scopeLine: 326, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !541)
!539 = !DISubroutineType(types: !540)
!540 = !{!68, !345, !297, !68}
!541 = !{!542, !543, !544, !545}
!542 = !DILocalVariable(name: "r", arg: 1, scope: !538, file: !3, line: 326, type: !345)
!543 = !DILocalVariable(name: "buf", arg: 2, scope: !538, file: !3, line: 326, type: !297)
!544 = !DILocalVariable(name: "len", arg: 3, scope: !538, file: !3, line: 326, type: !68)
!545 = !DILocalVariable(name: "nwritten", scope: !538, file: !3, line: 327, type: !68)
!546 = !DILocation(line: 314, column: 10, scope: !470, inlinedAt: !547)
!547 = distinct !DILocation(line: 329, column: 21, scope: !548)
!548 = distinct !DILexicalBlock(scope: !538, file: !3, line: 329, column: 9)
!549 = !DILocation(line: 326, column: 32, scope: !538)
!550 = !DILocation(line: 326, column: 47, scope: !538)
!551 = !DILocation(line: 326, column: 59, scope: !538)
!552 = !DILocation(line: 313, column: 31, scope: !470, inlinedAt: !547)
!553 = !DILocation(line: 313, column: 39, scope: !470, inlinedAt: !547)
!554 = !DILocation(line: 313, column: 52, scope: !470, inlinedAt: !547)
!555 = !DILocation(line: 314, column: 5, scope: !470, inlinedAt: !547)
!556 = !DILocation(line: 317, column: 13, scope: !470, inlinedAt: !547)
!557 = !DILocation(line: 318, column: 28, scope: !470, inlinedAt: !547)
!558 = !DILocation(line: 318, column: 14, scope: !470, inlinedAt: !547)
!559 = !DILocation(line: 318, column: 13, scope: !470, inlinedAt: !547)
!560 = !DILocation(line: 315, column: 9, scope: !470, inlinedAt: !547)
!561 = !DILocation(line: 319, column: 14, scope: !470, inlinedAt: !547)
!562 = !DILocation(line: 319, column: 5, scope: !470, inlinedAt: !547)
!563 = !DILocation(line: 319, column: 18, scope: !470, inlinedAt: !547)
!564 = !DILocation(line: 320, column: 14, scope: !470, inlinedAt: !547)
!565 = !DILocation(line: 320, column: 5, scope: !470, inlinedAt: !547)
!566 = !DILocation(line: 320, column: 18, scope: !470, inlinedAt: !547)
!567 = !DILocation(line: 321, column: 25, scope: !499, inlinedAt: !547)
!568 = !DILocation(line: 93, column: 36, scope: !501, inlinedAt: !569)
!569 = distinct !DILocation(line: 321, column: 9, scope: !499, inlinedAt: !547)
!570 = !DILocation(line: 93, column: 51, scope: !501, inlinedAt: !569)
!571 = !DILocation(line: 93, column: 63, scope: !501, inlinedAt: !569)
!572 = !DILocation(line: 94, column: 5, scope: !501, inlinedAt: !569)
!573 = !DILocation(line: 104, column: 1, scope: !501, inlinedAt: !569)
!574 = !DILocation(line: 323, column: 1, scope: !470, inlinedAt: !547)
!575 = !DILocation(line: 327, column: 12, scope: !538)
!576 = !DILocation(line: 329, column: 9, scope: !538)
!577 = !DILocation(line: 95, column: 37, scope: !508, inlinedAt: !569)
!578 = !DILocation(line: 95, column: 34, scope: !508, inlinedAt: !569)
!579 = !DILocation(line: 95, column: 85, scope: !508, inlinedAt: !569)
!580 = !DILocation(line: 95, column: 58, scope: !508, inlinedAt: !569)
!581 = !DILocation(line: 95, column: 16, scope: !508, inlinedAt: !569)
!582 = !DILocation(line: 96, column: 16, scope: !521, inlinedAt: !569)
!583 = !DILocation(line: 96, column: 13, scope: !521, inlinedAt: !569)
!584 = !DILocation(line: 96, column: 13, scope: !508, inlinedAt: !569)
!585 = !DILocation(line: 96, column: 30, scope: !521, inlinedAt: !569)
!586 = !DILocation(line: 97, column: 16, scope: !527, inlinedAt: !569)
!587 = !DILocation(line: 97, column: 13, scope: !527, inlinedAt: !569)
!588 = !DILocation(line: 97, column: 44, scope: !527, inlinedAt: !569)
!589 = !DILocation(line: 97, column: 13, scope: !508, inlinedAt: !569)
!590 = !DILocation(line: 99, column: 26, scope: !508, inlinedAt: !569)
!591 = !DILocation(line: 100, column: 13, scope: !508, inlinedAt: !569)
!592 = !DILocation(line: 101, column: 28, scope: !508, inlinedAt: !569)
!593 = !DILocation(line: 330, column: 13, scope: !594)
!594 = distinct !DILexicalBlock(scope: !538, file: !3, line: 330, column: 9)
!595 = !DILocation(line: 330, column: 17, scope: !594)
!596 = !DILocation(line: 93, column: 63, scope: !501, inlinedAt: !597)
!597 = distinct !DILocation(line: 330, column: 20, scope: !594)
!598 = !DILocation(line: 93, column: 51, scope: !501, inlinedAt: !597)
!599 = !DILocation(line: 95, column: 37, scope: !508, inlinedAt: !597)
!600 = !DILocation(line: 95, column: 34, scope: !508, inlinedAt: !597)
!601 = !DILocation(line: 95, column: 85, scope: !508, inlinedAt: !597)
!602 = !DILocation(line: 95, column: 58, scope: !508, inlinedAt: !597)
!603 = !DILocation(line: 95, column: 16, scope: !508, inlinedAt: !597)
!604 = !DILocation(line: 96, column: 16, scope: !521, inlinedAt: !597)
!605 = !DILocation(line: 96, column: 13, scope: !521, inlinedAt: !597)
!606 = !DILocation(line: 96, column: 13, scope: !508, inlinedAt: !597)
!607 = !DILocation(line: 96, column: 30, scope: !521, inlinedAt: !597)
!608 = !DILocation(line: 97, column: 16, scope: !527, inlinedAt: !597)
!609 = !DILocation(line: 97, column: 13, scope: !527, inlinedAt: !597)
!610 = !DILocation(line: 97, column: 44, scope: !527, inlinedAt: !597)
!611 = !DILocation(line: 97, column: 13, scope: !508, inlinedAt: !597)
!612 = !DILocation(line: 104, column: 1, scope: !501, inlinedAt: !597)
!613 = !DILocation(line: 330, column: 9, scope: !538)
!614 = !DILocation(line: 99, column: 26, scope: !508, inlinedAt: !597)
!615 = !DILocation(line: 100, column: 13, scope: !508, inlinedAt: !597)
!616 = !DILocation(line: 101, column: 28, scope: !508, inlinedAt: !597)
!617 = !DILocation(line: 94, column: 5, scope: !501, inlinedAt: !597)
!618 = !DILocation(line: 95, column: 37, scope: !508, inlinedAt: !619)
!619 = distinct !DILocation(line: 331, column: 9, scope: !620)
!620 = distinct !DILexicalBlock(scope: !538, file: !3, line: 331, column: 9)
!621 = !DILocation(line: 93, column: 63, scope: !501, inlinedAt: !619)
!622 = !DILocation(line: 93, column: 51, scope: !501, inlinedAt: !619)
!623 = !DILocation(line: 95, column: 34, scope: !508, inlinedAt: !619)
!624 = !DILocation(line: 95, column: 85, scope: !508, inlinedAt: !619)
!625 = !DILocation(line: 95, column: 58, scope: !508, inlinedAt: !619)
!626 = !DILocation(line: 95, column: 16, scope: !508, inlinedAt: !619)
!627 = !DILocation(line: 96, column: 16, scope: !521, inlinedAt: !619)
!628 = !DILocation(line: 96, column: 13, scope: !521, inlinedAt: !619)
!629 = !DILocation(line: 96, column: 13, scope: !508, inlinedAt: !619)
!630 = !DILocation(line: 96, column: 30, scope: !521, inlinedAt: !619)
!631 = !DILocation(line: 97, column: 16, scope: !527, inlinedAt: !619)
!632 = !DILocation(line: 97, column: 13, scope: !527, inlinedAt: !619)
!633 = !DILocation(line: 97, column: 44, scope: !527, inlinedAt: !619)
!634 = !DILocation(line: 97, column: 13, scope: !508, inlinedAt: !619)
!635 = !DILocation(line: 104, column: 1, scope: !501, inlinedAt: !619)
!636 = !DILocation(line: 331, column: 9, scope: !538)
!637 = !DILocation(line: 99, column: 26, scope: !508, inlinedAt: !619)
!638 = !DILocation(line: 100, column: 13, scope: !508, inlinedAt: !619)
!639 = !DILocation(line: 101, column: 28, scope: !508, inlinedAt: !619)
!640 = !DILocation(line: 94, column: 5, scope: !501, inlinedAt: !619)
!641 = !DILocation(line: 332, column: 20, scope: !538)
!642 = !DILocation(line: 332, column: 24, scope: !538)
!643 = !DILocation(line: 332, column: 5, scope: !538)
!644 = !DILocation(line: 0, scope: !538)
!645 = !DILocation(line: 333, column: 1, scope: !538)
!646 = distinct !DISubprogram(name: "rioWriteBulkLongLong", scope: !3, file: !3, line: 336, type: !647, isLocal: false, isDefinition: true, scopeLine: 336, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !650)
!647 = !DISubroutineType(types: !648)
!648 = !{!68, !345, !649}
!649 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!650 = !{!651, !652, !653, !655}
!651 = !DILocalVariable(name: "r", arg: 1, scope: !646, file: !3, line: 336, type: !345)
!652 = !DILocalVariable(name: "l", arg: 2, scope: !646, file: !3, line: 336, type: !649)
!653 = !DILocalVariable(name: "lbuf", scope: !646, file: !3, line: 337, type: !654)
!654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 256, elements: !268)
!655 = !DILocalVariable(name: "llen", scope: !646, file: !3, line: 338, type: !39)
!656 = !DILocation(line: 336, column: 34, scope: !646)
!657 = !DILocation(line: 336, column: 47, scope: !646)
!658 = !DILocation(line: 337, column: 5, scope: !646)
!659 = !DILocation(line: 337, column: 10, scope: !646)
!660 = !DILocation(line: 340, column: 12, scope: !646)
!661 = !DILocation(line: 338, column: 18, scope: !646)
!662 = !DILocation(line: 341, column: 38, scope: !646)
!663 = !DILocation(line: 341, column: 12, scope: !646)
!664 = !DILocation(line: 342, column: 1, scope: !646)
!665 = !DILocation(line: 341, column: 5, scope: !646)
!666 = distinct !DISubprogram(name: "rioWriteBulkDouble", scope: !3, file: !3, line: 345, type: !667, isLocal: false, isDefinition: true, scopeLine: 345, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !670)
!667 = !DISubroutineType(types: !668)
!668 = !{!68, !345, !669}
!669 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!670 = !{!671, !672, !673, !674}
!671 = !DILocalVariable(name: "r", arg: 1, scope: !666, file: !3, line: 345, type: !345)
!672 = !DILocalVariable(name: "d", arg: 2, scope: !666, file: !3, line: 345, type: !669)
!673 = !DILocalVariable(name: "dbuf", scope: !666, file: !3, line: 346, type: !478)
!674 = !DILocalVariable(name: "dlen", scope: !666, file: !3, line: 347, type: !39)
!675 = !DILocation(line: 345, column: 32, scope: !666)
!676 = !DILocation(line: 345, column: 42, scope: !666)
!677 = !DILocation(line: 346, column: 5, scope: !666)
!678 = !DILocation(line: 346, column: 10, scope: !666)
!679 = !DILocation(line: 349, column: 12, scope: !666)
!680 = !DILocation(line: 347, column: 18, scope: !666)
!681 = !DILocation(line: 350, column: 38, scope: !666)
!682 = !DILocation(line: 350, column: 12, scope: !666)
!683 = !DILocation(line: 351, column: 1, scope: !666)
!684 = !DILocation(line: 350, column: 5, scope: !666)
!685 = distinct !DISubprogram(name: "rioBufferRead", scope: !3, file: !3, line: 68, type: !686, isLocal: true, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !688)
!686 = !DISubroutineType(types: !687)
!687 = !{!68, !345, !55, !68}
!688 = !{!689, !690, !691}
!689 = !DILocalVariable(name: "r", arg: 1, scope: !685, file: !3, line: 68, type: !345)
!690 = !DILocalVariable(name: "buf", arg: 2, scope: !685, file: !3, line: 68, type: !55)
!691 = !DILocalVariable(name: "len", arg: 3, scope: !685, file: !3, line: 68, type: !68)
!692 = !DILocation(line: 68, column: 34, scope: !685)
!693 = !DILocation(line: 68, column: 43, scope: !685)
!694 = !DILocation(line: 68, column: 55, scope: !685)
!695 = !DILocation(line: 69, column: 19, scope: !696)
!696 = distinct !DILexicalBlock(scope: !685, file: !3, line: 69, column: 9)
!697 = !DILocation(line: 69, column: 29, scope: !696)
!698 = !DILocalVariable(name: "s", arg: 1, scope: !699, file: !8, line: 87, type: !702)
!699 = distinct !DISubprogram(name: "sdslen", scope: !8, file: !8, line: 87, type: !700, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !703)
!700 = !DISubroutineType(types: !701)
!701 = !{!68, !702}
!702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!703 = !{!698, !704}
!704 = !DILocalVariable(name: "flags", scope: !699, file: !8, line: 88, type: !15)
!705 = !DILocation(line: 87, column: 39, scope: !699, inlinedAt: !706)
!706 = distinct !DILocation(line: 69, column: 9, scope: !696)
!707 = !DILocation(line: 88, column: 27, scope: !699, inlinedAt: !706)
!708 = !DILocation(line: 88, column: 19, scope: !699, inlinedAt: !706)
!709 = !DILocation(line: 89, column: 5, scope: !699, inlinedAt: !706)
!710 = !DILocation(line: 91, column: 20, scope: !711, inlinedAt: !706)
!711 = distinct !DILexicalBlock(scope: !699, file: !8, line: 89, column: 33)
!712 = !DILocation(line: 91, column: 13, scope: !711, inlinedAt: !706)
!713 = !DILocation(line: 93, column: 20, scope: !711, inlinedAt: !706)
!714 = !DILocation(line: 93, column: 34, scope: !711, inlinedAt: !706)
!715 = !DILocation(line: 93, column: 13, scope: !711, inlinedAt: !706)
!716 = !DILocation(line: 95, column: 20, scope: !711, inlinedAt: !706)
!717 = !DILocation(line: 95, column: 35, scope: !711, inlinedAt: !706)
!718 = !{!719, !719, i64 0}
!719 = !{!"short", !355, i64 0}
!720 = !DILocation(line: 95, column: 13, scope: !711, inlinedAt: !706)
!721 = !DILocation(line: 97, column: 20, scope: !711, inlinedAt: !706)
!722 = !DILocation(line: 97, column: 35, scope: !711, inlinedAt: !706)
!723 = !DILocation(line: 97, column: 13, scope: !711, inlinedAt: !706)
!724 = !DILocation(line: 99, column: 20, scope: !711, inlinedAt: !706)
!725 = !DILocation(line: 99, column: 35, scope: !711, inlinedAt: !706)
!726 = !DILocation(line: 99, column: 13, scope: !711, inlinedAt: !706)
!727 = !DILocation(line: 0, scope: !711, inlinedAt: !706)
!728 = !DILocation(line: 102, column: 1, scope: !699, inlinedAt: !706)
!729 = !DILocation(line: 69, column: 47, scope: !696)
!730 = !DILocation(line: 69, column: 33, scope: !696)
!731 = !DILocation(line: 69, column: 51, scope: !696)
!732 = !DILocation(line: 69, column: 9, scope: !685)
!733 = !DILocation(line: 71, column: 32, scope: !685)
!734 = !DILocation(line: 71, column: 5, scope: !685)
!735 = !DILocation(line: 72, column: 22, scope: !685)
!736 = !DILocation(line: 73, column: 5, scope: !685)
!737 = !DILocation(line: 0, scope: !685)
!738 = !DILocation(line: 74, column: 1, scope: !685)
!739 = distinct !DISubprogram(name: "rioBufferWrite", scope: !3, file: !3, line: 61, type: !502, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !740)
!740 = !{!741, !742, !743}
!741 = !DILocalVariable(name: "r", arg: 1, scope: !739, file: !3, line: 61, type: !345)
!742 = !DILocalVariable(name: "buf", arg: 2, scope: !739, file: !3, line: 61, type: !77)
!743 = !DILocalVariable(name: "len", arg: 3, scope: !739, file: !3, line: 61, type: !68)
!744 = !DILocation(line: 61, column: 35, scope: !739)
!745 = !DILocation(line: 61, column: 50, scope: !739)
!746 = !DILocation(line: 61, column: 62, scope: !739)
!747 = !DILocation(line: 62, column: 37, scope: !739)
!748 = !DILocation(line: 62, column: 47, scope: !739)
!749 = !DILocation(line: 62, column: 24, scope: !739)
!750 = !DILocation(line: 62, column: 22, scope: !739)
!751 = !DILocation(line: 63, column: 18, scope: !739)
!752 = !DILocation(line: 63, column: 22, scope: !739)
!753 = !DILocation(line: 64, column: 5, scope: !739)
!754 = distinct !DISubprogram(name: "rioBufferTell", scope: !3, file: !3, line: 77, type: !755, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !757)
!755 = !DISubroutineType(types: !756)
!756 = !{!83, !345}
!757 = !{!758}
!758 = !DILocalVariable(name: "r", arg: 1, scope: !754, file: !3, line: 77, type: !345)
!759 = !DILocation(line: 77, column: 33, scope: !754)
!760 = !DILocation(line: 78, column: 25, scope: !754)
!761 = !DILocation(line: 78, column: 5, scope: !754)
!762 = distinct !DISubprogram(name: "rioBufferFlush", scope: !3, file: !3, line: 83, type: !763, isLocal: true, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !765)
!763 = !DISubroutineType(types: !764)
!764 = !{!92, !345}
!765 = !{!766}
!766 = !DILocalVariable(name: "r", arg: 1, scope: !762, file: !3, line: 83, type: !345)
!767 = !DILocation(line: 83, column: 32, scope: !762)
!768 = !DILocation(line: 85, column: 5, scope: !762)
!769 = distinct !DISubprogram(name: "rioFileRead", scope: !3, file: !3, line: 126, type: !686, isLocal: true, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !770)
!770 = !{!771, !772, !773}
!771 = !DILocalVariable(name: "r", arg: 1, scope: !769, file: !3, line: 126, type: !345)
!772 = !DILocalVariable(name: "buf", arg: 2, scope: !769, file: !3, line: 126, type: !55)
!773 = !DILocalVariable(name: "len", arg: 3, scope: !769, file: !3, line: 126, type: !68)
!774 = !DILocation(line: 126, column: 32, scope: !769)
!775 = !DILocation(line: 126, column: 41, scope: !769)
!776 = !DILocation(line: 126, column: 53, scope: !769)
!777 = !DILocation(line: 127, column: 31, scope: !769)
!778 = !DILocation(line: 127, column: 39, scope: !769)
!779 = !DILocation(line: 127, column: 12, scope: !769)
!780 = !DILocation(line: 127, column: 5, scope: !769)
!781 = distinct !DISubprogram(name: "rioFileWrite", scope: !3, file: !3, line: 109, type: !502, isLocal: true, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !782)
!782 = !{!783, !784, !785, !786}
!783 = !DILocalVariable(name: "r", arg: 1, scope: !781, file: !3, line: 109, type: !345)
!784 = !DILocalVariable(name: "buf", arg: 2, scope: !781, file: !3, line: 109, type: !77)
!785 = !DILocalVariable(name: "len", arg: 3, scope: !781, file: !3, line: 109, type: !68)
!786 = !DILocalVariable(name: "retval", scope: !781, file: !3, line: 110, type: !68)
!787 = !DILocation(line: 109, column: 33, scope: !781)
!788 = !DILocation(line: 109, column: 48, scope: !781)
!789 = !DILocation(line: 109, column: 60, scope: !781)
!790 = !DILocation(line: 112, column: 34, scope: !781)
!791 = !DILocation(line: 112, column: 42, scope: !781)
!792 = !DILocation(line: 112, column: 14, scope: !781)
!793 = !DILocation(line: 110, column: 12, scope: !781)
!794 = !DILocation(line: 113, column: 16, scope: !781)
!795 = !DILocation(line: 113, column: 25, scope: !781)
!796 = !DILocation(line: 115, column: 20, scope: !797)
!797 = distinct !DILexicalBlock(scope: !781, file: !3, line: 115, column: 9)
!798 = !DILocation(line: 115, column: 9, scope: !797)
!799 = !DILocation(line: 116, column: 29, scope: !797)
!800 = !DILocation(line: 115, column: 29, scope: !797)
!801 = !DILocation(line: 118, column: 27, scope: !802)
!802 = distinct !DILexicalBlock(scope: !797, file: !3, line: 117, column: 5)
!803 = !DILocation(line: 118, column: 9, scope: !802)
!804 = !DILocation(line: 119, column: 39, scope: !802)
!805 = !DILocation(line: 119, column: 21, scope: !802)
!806 = !DILocation(line: 119, column: 9, scope: !802)
!807 = !DILocation(line: 120, column: 29, scope: !802)
!808 = !DILocation(line: 121, column: 5, scope: !802)
!809 = !DILocation(line: 122, column: 5, scope: !781)
!810 = distinct !DISubprogram(name: "rioFileTell", scope: !3, file: !3, line: 131, type: !755, isLocal: true, isDefinition: true, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !811)
!811 = !{!812}
!812 = !DILocalVariable(name: "r", arg: 1, scope: !810, file: !3, line: 131, type: !345)
!813 = !DILocation(line: 131, column: 31, scope: !810)
!814 = !DILocation(line: 132, column: 22, scope: !810)
!815 = !DILocation(line: 132, column: 30, scope: !810)
!816 = !DILocation(line: 132, column: 12, scope: !810)
!817 = !DILocation(line: 132, column: 5, scope: !810)
!818 = distinct !DISubprogram(name: "rioFileFlush", scope: !3, file: !3, line: 137, type: !763, isLocal: true, isDefinition: true, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !819)
!819 = !{!820}
!820 = !DILocalVariable(name: "r", arg: 1, scope: !818, file: !3, line: 137, type: !345)
!821 = !DILocation(line: 137, column: 30, scope: !818)
!822 = !DILocation(line: 138, column: 23, scope: !818)
!823 = !DILocation(line: 138, column: 31, scope: !818)
!824 = !DILocation(line: 138, column: 13, scope: !818)
!825 = !DILocation(line: 138, column: 35, scope: !818)
!826 = !DILocation(line: 138, column: 12, scope: !818)
!827 = !DILocation(line: 138, column: 5, scope: !818)
!828 = distinct !DISubprogram(name: "rioFdsetRead", scope: !3, file: !3, line: 234, type: !686, isLocal: true, isDefinition: true, scopeLine: 234, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !829)
!829 = !{!830, !831, !832}
!830 = !DILocalVariable(name: "r", arg: 1, scope: !828, file: !3, line: 234, type: !345)
!831 = !DILocalVariable(name: "buf", arg: 2, scope: !828, file: !3, line: 234, type: !55)
!832 = !DILocalVariable(name: "len", arg: 3, scope: !828, file: !3, line: 234, type: !68)
!833 = !DILocation(line: 234, column: 33, scope: !828)
!834 = !DILocation(line: 234, column: 42, scope: !828)
!835 = !DILocation(line: 234, column: 54, scope: !828)
!836 = !DILocation(line: 238, column: 5, scope: !828)
!837 = distinct !DISubprogram(name: "rioFdsetWrite", scope: !3, file: !3, line: 169, type: !502, isLocal: true, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !838)
!838 = !{!839, !840, !841, !842, !844, !845, !846, !847, !849, !850}
!839 = !DILocalVariable(name: "r", arg: 1, scope: !837, file: !3, line: 169, type: !345)
!840 = !DILocalVariable(name: "buf", arg: 2, scope: !837, file: !3, line: 169, type: !77)
!841 = !DILocalVariable(name: "len", arg: 3, scope: !837, file: !3, line: 169, type: !68)
!842 = !DILocalVariable(name: "retval", scope: !837, file: !3, line: 170, type: !843)
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !84, line: 200, baseType: !137)
!844 = !DILocalVariable(name: "j", scope: !837, file: !3, line: 171, type: !92)
!845 = !DILocalVariable(name: "p", scope: !837, file: !3, line: 172, type: !54)
!846 = !DILocalVariable(name: "doflush", scope: !837, file: !3, line: 173, type: !92)
!847 = !DILocalVariable(name: "count", scope: !848, file: !3, line: 192, type: !68)
!848 = distinct !DILexicalBlock(scope: !837, file: !3, line: 191, column: 16)
!849 = !DILocalVariable(name: "broken", scope: !848, file: !3, line: 193, type: !92)
!850 = !DILocalVariable(name: "nwritten", scope: !851, file: !3, line: 203, type: !68)
!851 = distinct !DILexicalBlock(scope: !852, file: !3, line: 194, column: 50)
!852 = distinct !DILexicalBlock(scope: !853, file: !3, line: 194, column: 9)
!853 = distinct !DILexicalBlock(scope: !848, file: !3, line: 194, column: 9)
!854 = !DILocation(line: 169, column: 34, scope: !837)
!855 = !DILocation(line: 169, column: 49, scope: !837)
!856 = !DILocation(line: 169, column: 61, scope: !837)
!857 = !DILocation(line: 172, column: 20, scope: !837)
!858 = !DILocation(line: 173, column: 24, scope: !837)
!859 = !DILocation(line: 173, column: 39, scope: !837)
!860 = !DILocation(line: 173, column: 32, scope: !837)
!861 = !DILocation(line: 177, column: 9, scope: !837)
!862 = !DILocation(line: 178, column: 49, scope: !863)
!863 = distinct !DILexicalBlock(scope: !864, file: !3, line: 177, column: 14)
!864 = distinct !DILexicalBlock(scope: !837, file: !3, line: 177, column: 9)
!865 = !DILocation(line: 178, column: 27, scope: !863)
!866 = !DILocation(line: 178, column: 25, scope: !863)
!867 = !DILocation(line: 87, column: 39, scope: !699, inlinedAt: !868)
!868 = distinct !DILocation(line: 180, column: 13, scope: !869)
!869 = distinct !DILexicalBlock(scope: !863, file: !3, line: 180, column: 13)
!870 = !DILocation(line: 88, column: 27, scope: !699, inlinedAt: !868)
!871 = !DILocation(line: 88, column: 19, scope: !699, inlinedAt: !868)
!872 = !DILocation(line: 89, column: 5, scope: !699, inlinedAt: !868)
!873 = !DILocation(line: 95, column: 20, scope: !711, inlinedAt: !868)
!874 = !DILocation(line: 95, column: 35, scope: !711, inlinedAt: !868)
!875 = !DILocation(line: 95, column: 13, scope: !711, inlinedAt: !868)
!876 = !DILocation(line: 97, column: 20, scope: !711, inlinedAt: !868)
!877 = !DILocation(line: 97, column: 35, scope: !711, inlinedAt: !868)
!878 = !DILocation(line: 97, column: 13, scope: !711, inlinedAt: !868)
!879 = !DILocation(line: 99, column: 20, scope: !711, inlinedAt: !868)
!880 = !DILocation(line: 99, column: 35, scope: !711, inlinedAt: !868)
!881 = !DILocation(line: 99, column: 13, scope: !711, inlinedAt: !868)
!882 = !DILocation(line: 102, column: 1, scope: !699, inlinedAt: !868)
!883 = !DILocation(line: 183, column: 9, scope: !837)
!884 = !DILocation(line: 0, scope: !711, inlinedAt: !868)
!885 = !DILocation(line: 180, column: 37, scope: !869)
!886 = !DILocation(line: 180, column: 13, scope: !863)
!887 = !DILocation(line: 184, column: 42, scope: !888)
!888 = distinct !DILexicalBlock(scope: !889, file: !3, line: 183, column: 18)
!889 = distinct !DILexicalBlock(scope: !837, file: !3, line: 183, column: 9)
!890 = !DILocation(line: 88, column: 27, scope: !699, inlinedAt: !891)
!891 = distinct !DILocation(line: 185, column: 15, scope: !888)
!892 = !DILocation(line: 87, column: 39, scope: !699, inlinedAt: !891)
!893 = !DILocation(line: 88, column: 19, scope: !699, inlinedAt: !891)
!894 = !DILocation(line: 89, column: 5, scope: !699, inlinedAt: !891)
!895 = !DILocation(line: 102, column: 1, scope: !699, inlinedAt: !891)
!896 = !DILocation(line: 191, column: 5, scope: !837)
!897 = !DILocation(line: 91, column: 20, scope: !711, inlinedAt: !891)
!898 = !DILocation(line: 91, column: 13, scope: !711, inlinedAt: !891)
!899 = !DILocation(line: 93, column: 20, scope: !711, inlinedAt: !891)
!900 = !DILocation(line: 93, column: 34, scope: !711, inlinedAt: !891)
!901 = !DILocation(line: 93, column: 13, scope: !711, inlinedAt: !891)
!902 = !DILocation(line: 95, column: 20, scope: !711, inlinedAt: !891)
!903 = !DILocation(line: 95, column: 35, scope: !711, inlinedAt: !891)
!904 = !DILocation(line: 95, column: 13, scope: !711, inlinedAt: !891)
!905 = !DILocation(line: 97, column: 20, scope: !711, inlinedAt: !891)
!906 = !DILocation(line: 97, column: 35, scope: !711, inlinedAt: !891)
!907 = !DILocation(line: 97, column: 13, scope: !711, inlinedAt: !891)
!908 = !DILocation(line: 99, column: 20, scope: !711, inlinedAt: !891)
!909 = !DILocation(line: 99, column: 35, scope: !711, inlinedAt: !891)
!910 = !DILocation(line: 99, column: 13, scope: !711, inlinedAt: !891)
!911 = !DILocation(line: 0, scope: !711, inlinedAt: !891)
!912 = !DILocation(line: 194, column: 37, scope: !852)
!913 = !DILocation(line: 192, column: 28, scope: !848)
!914 = !DILocation(line: 192, column: 24, scope: !848)
!915 = !DILocation(line: 192, column: 16, scope: !848)
!916 = !DILocation(line: 193, column: 13, scope: !848)
!917 = !DILocation(line: 171, column: 9, scope: !837)
!918 = !DILocation(line: 194, column: 23, scope: !852)
!919 = !DILocation(line: 194, column: 9, scope: !853)
!920 = !DILocation(line: 195, column: 29, scope: !921)
!921 = distinct !DILexicalBlock(scope: !851, file: !3, line: 195, column: 17)
!922 = !DILocation(line: 195, column: 17, scope: !921)
!923 = !DILocation(line: 195, column: 38, scope: !921)
!924 = !DILocation(line: 195, column: 17, scope: !851)
!925 = !DILocation(line: 197, column: 23, scope: !926)
!926 = distinct !DILexicalBlock(scope: !921, file: !3, line: 195, column: 44)
!927 = !DILocation(line: 198, column: 17, scope: !926)
!928 = !DILocation(line: 203, column: 20, scope: !851)
!929 = !DILocation(line: 205, column: 44, scope: !930)
!930 = distinct !DILexicalBlock(scope: !851, file: !3, line: 204, column: 38)
!931 = !DILocation(line: 205, column: 32, scope: !930)
!932 = !DILocation(line: 205, column: 52, scope: !930)
!933 = !DILocation(line: 205, column: 67, scope: !930)
!934 = !DILocation(line: 205, column: 26, scope: !930)
!935 = !DILocation(line: 170, column: 13, scope: !837)
!936 = !DILocation(line: 206, column: 28, scope: !937)
!937 = distinct !DILexicalBlock(scope: !930, file: !3, line: 206, column: 21)
!938 = !DILocation(line: 206, column: 21, scope: !930)
!939 = !DILocation(line: 211, column: 32, scope: !940)
!940 = distinct !DILexicalBlock(scope: !941, file: !3, line: 211, column: 25)
!941 = distinct !DILexicalBlock(scope: !937, file: !3, line: 206, column: 34)
!942 = !DILocation(line: 211, column: 38, scope: !940)
!943 = !DILocation(line: 211, column: 41, scope: !940)
!944 = !DILocation(line: 211, column: 47, scope: !940)
!945 = !DILocation(line: 211, column: 25, scope: !941)
!946 = !DILocation(line: 211, column: 63, scope: !940)
!947 = !DILocation(line: 211, column: 69, scope: !940)
!948 = !DILocation(line: 214, column: 26, scope: !930)
!949 = !DILocation(line: 204, column: 28, scope: !851)
!950 = !DILocation(line: 204, column: 13, scope: !851)
!951 = distinct !{!951, !950, !952}
!952 = !DILocation(line: 215, column: 13, scope: !851)
!953 = !DILocation(line: 219, column: 40, scope: !954)
!954 = distinct !DILexicalBlock(scope: !955, file: !3, line: 217, column: 36)
!955 = distinct !DILexicalBlock(scope: !851, file: !3, line: 217, column: 17)
!956 = !DILocation(line: 219, column: 29, scope: !954)
!957 = !DILocation(line: 219, column: 17, scope: !954)
!958 = !DILocation(line: 219, column: 38, scope: !954)
!959 = !DILocation(line: 220, column: 33, scope: !960)
!960 = distinct !DILexicalBlock(scope: !954, file: !3, line: 220, column: 21)
!961 = !DILocation(line: 220, column: 21, scope: !960)
!962 = !DILocation(line: 220, column: 42, scope: !960)
!963 = !DILocation(line: 220, column: 21, scope: !954)
!964 = !DILocation(line: 220, column: 69, scope: !960)
!965 = !DILocation(line: 220, column: 48, scope: !960)
!966 = !DILocation(line: 0, scope: !848)
!967 = !DILocation(line: 194, column: 46, scope: !852)
!968 = distinct !{!968, !919, !969}
!969 = !DILocation(line: 222, column: 9, scope: !853)
!970 = !DILocation(line: 0, scope: !926)
!971 = !DILocation(line: 223, column: 20, scope: !972)
!972 = distinct !DILexicalBlock(scope: !848, file: !3, line: 223, column: 13)
!973 = !DILocation(line: 223, column: 13, scope: !848)
!974 = !DILocation(line: 224, column: 11, scope: !848)
!975 = !DILocation(line: 225, column: 13, scope: !848)
!976 = !DILocation(line: 226, column: 25, scope: !848)
!977 = !DILocation(line: 229, column: 39, scope: !978)
!978 = distinct !DILexicalBlock(scope: !837, file: !3, line: 229, column: 9)
!979 = !DILocation(line: 229, column: 18, scope: !978)
!980 = !DILocation(line: 0, scope: !837)
!981 = !DILocation(line: 231, column: 1, scope: !837)
!982 = distinct !DISubprogram(name: "rioFdsetTell", scope: !3, file: !3, line: 242, type: !755, isLocal: true, isDefinition: true, scopeLine: 242, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !983)
!983 = !{!984}
!984 = !DILocalVariable(name: "r", arg: 1, scope: !982, file: !3, line: 242, type: !345)
!985 = !DILocation(line: 242, column: 32, scope: !982)
!986 = !DILocation(line: 243, column: 24, scope: !982)
!987 = !DILocation(line: 243, column: 5, scope: !982)
!988 = distinct !DISubprogram(name: "rioFdsetFlush", scope: !3, file: !3, line: 248, type: !763, isLocal: true, isDefinition: true, scopeLine: 248, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !989)
!989 = !{!990}
!990 = !DILocalVariable(name: "r", arg: 1, scope: !988, file: !3, line: 248, type: !345)
!991 = !DILocation(line: 248, column: 31, scope: !988)
!992 = !DILocation(line: 251, column: 12, scope: !988)
!993 = !DILocation(line: 251, column: 5, scope: !988)
