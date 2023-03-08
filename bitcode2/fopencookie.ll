; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fopencookie.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fopencookie.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i64, i32)*, i32 (%struct._reent*, i8*)*, %struct.__sbuf, i8*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64, %struct._reent*, i32, %struct._mbstate_t, i32 }
%struct.__sbuf = type { i8*, i32 }
%struct._mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct._reent = type { i32, %struct.__sFILE*, %struct.__sFILE*, %struct.__sFILE*, i32, [25 x i8], i32, %struct.__locale_t*, i32, void (%struct._reent*)*, %struct._Bigint*, i32, %struct._Bigint*, %struct._Bigint**, i32, i8*, %union.anon.0, %struct._atexit*, %struct._atexit, void (i32)**, %struct._glue, [3 x %struct.__sFILE] }
%struct.__locale_t = type opaque
%struct._Bigint = type { %struct._Bigint*, i32, i32, i32, i32, [1 x i32] }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { [30 x i8*], [30 x i32] }
%struct._atexit = type { %struct._atexit*, i32, [32 x void ()*], %struct._on_exit_args }
%struct._on_exit_args = type { [32 x i8*], [32 x i8*], i32, i32 }
%struct._glue = type { %struct._glue*, i32, %struct.__sFILE* }
%struct.cookie_io_functions_t = type { i64 (i8*, i8*, i64)*, i64 (i8*, i8*, i64)*, i32 (i8*, i64*, i32)*, i32 (i8*)* }

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local %struct.__sFILE* @_fopencookie_r(%struct._reent*, i8*, i8*, %struct.cookie_io_functions_t* byval nocapture readonly align 8) local_unnamed_addr #0 !dbg !281 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = bitcast i32* %5 to i8*, !dbg !307
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #4, !dbg !307
  %9 = call i32 @__sflags(%struct._reent* %0, i8* %2, i32* nonnull %5) #5, !dbg !309
  %10 = icmp eq i32 %9, 0, !dbg !312
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !313
  br i1 %10, label %67, label %11, !dbg !313

; <label>:11:                                     ; preds = %4
  %12 = and i32 %9, 20, !dbg !314
  %13 = icmp eq i32 %12, 0, !dbg !314
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !316
  br i1 %13, label %18, label %14, !dbg !316

; <label>:14:                                     ; preds = %11
  %15 = getelementptr inbounds %struct.cookie_io_functions_t, %struct.cookie_io_functions_t* %3, i64 0, i32 0, !dbg !317
  %16 = load i64 (i8*, i8*, i64)*, i64 (i8*, i8*, i64)** %15, align 8, !dbg !317, !tbaa !318
  %17 = icmp eq i64 (i8*, i8*, i64)* %16, null, !dbg !323
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !324
  br i1 %17, label %25, label %18, !dbg !324

; <label>:18:                                     ; preds = %14, %11
  %19 = and i32 %9, 24, !dbg !325
  %20 = icmp eq i32 %19, 0, !dbg !325
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !326
  br i1 %20, label %27, label %21, !dbg !326

; <label>:21:                                     ; preds = %18
  %22 = getelementptr inbounds %struct.cookie_io_functions_t, %struct.cookie_io_functions_t* %3, i64 0, i32 1, !dbg !327
  %23 = load i64 (i8*, i8*, i64)*, i64 (i8*, i8*, i64)** %22, align 8, !dbg !327, !tbaa !328
  %24 = icmp eq i64 (i8*, i8*, i64)* %23, null, !dbg !329
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !330
  br i1 %24, label %25, label %27, !dbg !330

; <label>:25:                                     ; preds = %14, %21
  %26 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !331
  store i32 22, i32* %26, align 8, !dbg !333, !tbaa !334
  br label %67, !dbg !340

; <label>:27:                                     ; preds = %21, %18
  %28 = call %struct.__sFILE* @__sfp(%struct._reent* %0) #5, !dbg !341
  %29 = icmp eq %struct.__sFILE* %28, null, !dbg !344
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !345
  br i1 %29, label %67, label %30, !dbg !345

; <label>:30:                                     ; preds = %27
  %31 = call i8* @malloc(i64 48) #5, !dbg !346
  %32 = icmp eq i8* %31, null, !dbg !347
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !348
  br i1 %32, label %33, label %39, !dbg !348

; <label>:33:                                     ; preds = %30
  %34 = bitcast i32* %6 to i8*, !dbg !349
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %34) #4, !dbg !349
  %35 = call i32 @pthread_setcancelstate(i32 1, i32* nonnull %6) #5, !dbg !349
  call void @__sfp_lock_acquire() #5, !dbg !349
  %36 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %28, i64 0, i32 3, !dbg !350
  store i16 0, i16* %36, align 8, !dbg !351, !tbaa !352
  call void @__sfp_lock_release() #5, !dbg !358
  %37 = load i32, i32* %6, align 4, !dbg !358, !tbaa !359
  %38 = call i32 @pthread_setcancelstate(i32 %37, i32* nonnull %6) #5, !dbg !358
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %34) #4, !dbg !360
  br label %67, !dbg !361

; <label>:39:                                     ; preds = %30
  %40 = bitcast i32* %7 to i8*, !dbg !363
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %40) #4, !dbg !363
  %41 = call i32 @pthread_setcancelstate(i32 1, i32* nonnull %7) #5, !dbg !363
  %42 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %28, i64 0, i32 4, !dbg !364
  store i16 -1, i16* %42, align 2, !dbg !365, !tbaa !366
  %43 = trunc i32 %9 to i16, !dbg !367
  %44 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %28, i64 0, i32 3, !dbg !368
  store i16 %43, i16* %44, align 8, !dbg !369, !tbaa !352
  %45 = bitcast i8* %31 to i8**, !dbg !370
  store i8* %1, i8** %45, align 8, !dbg !371, !tbaa !372
  %46 = getelementptr inbounds i8, i8* %31, i64 8, !dbg !374
  %47 = bitcast i8* %46 to %struct.__sFILE**, !dbg !374
  store %struct.__sFILE* %28, %struct.__sFILE** %47, align 8, !dbg !375, !tbaa !376
  %48 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %28, i64 0, i32 7, !dbg !377
  store i8* %31, i8** %48, align 8, !dbg !378, !tbaa !379
  %49 = getelementptr inbounds i8, i8* %31, i64 16, !dbg !380
  %50 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %28, i64 0, i32 8, !dbg !381
  %51 = bitcast %struct.cookie_io_functions_t* %3 to <2 x i64>*, !dbg !382
  %52 = load <2 x i64>, <2 x i64>* %51, align 8, !dbg !382, !tbaa !383
  %53 = bitcast i8* %49 to <2 x i64>*, !dbg !384
  store <2 x i64> %52, <2 x i64>* %53, align 8, !dbg !384, !tbaa !383
  %54 = bitcast i64 (%struct._reent*, i8*, i8*, i32)** %50 to <2 x i64 (%struct._reent*, i8*, i8*, i32)*>*, !dbg !385
  store <2 x i64 (%struct._reent*, i8*, i8*, i32)*> <i64 (%struct._reent*, i8*, i8*, i32)* @fcreader, i64 (%struct._reent*, i8*, i8*, i32)* @fcwriter>, <2 x i64 (%struct._reent*, i8*, i8*, i32)*>* %54, align 8, !dbg !385, !tbaa !383
  %55 = getelementptr inbounds %struct.cookie_io_functions_t, %struct.cookie_io_functions_t* %3, i64 0, i32 2, !dbg !386
  %56 = getelementptr inbounds i8, i8* %31, i64 32, !dbg !387
  %57 = bitcast i32 (i8*, i64*, i32)** %55 to <2 x i64>*, !dbg !386
  %58 = load <2 x i64>, <2 x i64>* %57, align 8, !dbg !386, !tbaa !383
  %59 = extractelement <2 x i64> %58, i32 0, !dbg !388
  %60 = icmp eq i64 %59, 0, !dbg !388
  %61 = select i1 %60, i64 (%struct._reent*, i8*, i64, i32)* null, i64 (%struct._reent*, i8*, i64, i32)* @fcseeker, !dbg !388
  %62 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %28, i64 0, i32 10, !dbg !389
  store i64 (%struct._reent*, i8*, i64, i32)* %61, i64 (%struct._reent*, i8*, i64, i32)** %62, align 8, !dbg !390, !tbaa !391
  %63 = bitcast i8* %56 to <2 x i64>*, !dbg !392
  store <2 x i64> %58, <2 x i64>* %63, align 8, !dbg !392, !tbaa !383
  %64 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %28, i64 0, i32 11, !dbg !393
  store i32 (%struct._reent*, i8*)* @fccloser, i32 (%struct._reent*, i8*)** %64, align 8, !dbg !394, !tbaa !395
  %65 = load i32, i32* %7, align 4, !dbg !396, !tbaa !359
  %66 = call i32 @pthread_setcancelstate(i32 %65, i32* nonnull %7) #5, !dbg !396
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %40) #4, !dbg !397
  br label %67, !dbg !398

; <label>:67:                                     ; preds = %27, %4, %39, %33, %25
  %68 = phi %struct.__sFILE* [ null, %33 ], [ %28, %39 ], [ null, %25 ], [ null, %4 ], [ null, %27 ], !dbg !399
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !400
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #4, !dbg !401
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !401
  ret %struct.__sFILE* %68, !dbg !401
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i32 @__sflags(%struct._reent*, i8*, i32*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.__sFILE* @__sfp(%struct._reent*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @malloc(i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @pthread_setcancelstate(i32, i32*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @__sfp_lock_acquire() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @__sfp_lock_release() local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define internal i64 @fcreader(%struct._reent* nocapture, i8* nocapture readonly, i8*, i32) #0 !dbg !402 {
  %5 = tail call i32* @__errno() #5, !dbg !412
  store i32 0, i32* %5, align 4, !dbg !413, !tbaa !359
  %6 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !414
  %7 = bitcast i8* %6 to i64 (i8*, i8*, i64)**, !dbg !414
  %8 = load i64 (i8*, i8*, i64)*, i64 (i8*, i8*, i64)** %7, align 8, !dbg !414, !tbaa !416
  %9 = bitcast i8* %1 to i8**, !dbg !417
  %10 = load i8*, i8** %9, align 8, !dbg !417, !tbaa !372
  %11 = sext i32 %3 to i64, !dbg !418
  %12 = tail call i64 %8(i8* %10, i8* %2, i64 %11) #5, !dbg !419
  %13 = trunc i64 %12 to i32, !dbg !419
  %14 = icmp slt i32 %13, 0, !dbg !421
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !422
  br i1 %14, label %15, label %23, !dbg !422

; <label>:15:                                     ; preds = %4
  %16 = tail call i32* @__errno() #5, !dbg !423
  %17 = load i32, i32* %16, align 4, !dbg !423, !tbaa !359
  %18 = icmp eq i32 %17, 0, !dbg !423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !424
  br i1 %18, label %23, label %19, !dbg !424

; <label>:19:                                     ; preds = %15
  %20 = tail call i32* @__errno() #5, !dbg !425
  %21 = load i32, i32* %20, align 4, !dbg !425, !tbaa !359
  %22 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !426
  store i32 %21, i32* %22, align 8, !dbg !427, !tbaa !334
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !428
  br label %23, !dbg !428

; <label>:23:                                     ; preds = %15, %19, %4
  %24 = shl i64 %12, 32, !dbg !429
  %25 = ashr exact i64 %24, 32, !dbg !429
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !430
  ret i64 %25, !dbg !430
}

; Function Attrs: noredzone nounwind
define internal i64 @fcwriter(%struct._reent*, i8*, i8*, i32) #0 !dbg !431 {
  %5 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !441
  %6 = bitcast i8* %5 to %struct.__sFILE**, !dbg !441
  %7 = load %struct.__sFILE*, %struct.__sFILE** %6, align 8, !dbg !441, !tbaa !376
  %8 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %7, i64 0, i32 3, !dbg !443
  %9 = load i16, i16* %8, align 8, !dbg !443, !tbaa !352
  %10 = and i16 %9, 256, !dbg !444
  %11 = icmp eq i16 %10, 0, !dbg !444
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !445
  br i1 %11, label %18, label %12, !dbg !445

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %7, i64 0, i32 10, !dbg !446
  %14 = load i64 (%struct._reent*, i8*, i64, i32)*, i64 (%struct._reent*, i8*, i64, i32)** %13, align 8, !dbg !446, !tbaa !391
  %15 = icmp eq i64 (%struct._reent*, i8*, i64, i32)* %14, null, !dbg !447
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !448
  br i1 %15, label %18, label %16, !dbg !448

; <label>:16:                                     ; preds = %12
  %17 = tail call i64 %14(%struct._reent* %0, i8* nonnull %1, i64 0, i32 2) #5, !dbg !449
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !451
  br label %18, !dbg !451

; <label>:18:                                     ; preds = %12, %4, %16
  %19 = tail call i32* @__errno() #5, !dbg !452
  store i32 0, i32* %19, align 4, !dbg !453, !tbaa !359
  %20 = getelementptr inbounds i8, i8* %1, i64 24, !dbg !454
  %21 = bitcast i8* %20 to i64 (i8*, i8*, i64)**, !dbg !454
  %22 = load i64 (i8*, i8*, i64)*, i64 (i8*, i8*, i64)** %21, align 8, !dbg !454, !tbaa !456
  %23 = bitcast i8* %1 to i8**, !dbg !457
  %24 = load i8*, i8** %23, align 8, !dbg !457, !tbaa !372
  %25 = sext i32 %3 to i64, !dbg !458
  %26 = tail call i64 %22(i8* %24, i8* %2, i64 %25) #5, !dbg !459
  %27 = trunc i64 %26 to i32, !dbg !459
  %28 = icmp slt i32 %27, 0, !dbg !461
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !462
  br i1 %28, label %29, label %37, !dbg !462

; <label>:29:                                     ; preds = %18
  %30 = tail call i32* @__errno() #5, !dbg !463
  %31 = load i32, i32* %30, align 4, !dbg !463, !tbaa !359
  %32 = icmp eq i32 %31, 0, !dbg !463
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !464
  br i1 %32, label %37, label %33, !dbg !464

; <label>:33:                                     ; preds = %29
  %34 = tail call i32* @__errno() #5, !dbg !465
  %35 = load i32, i32* %34, align 4, !dbg !465, !tbaa !359
  %36 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !466
  store i32 %35, i32* %36, align 8, !dbg !467, !tbaa !334
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !468
  br label %37, !dbg !468

; <label>:37:                                     ; preds = %29, %33, %18
  %38 = shl i64 %26, 32, !dbg !469
  %39 = ashr exact i64 %38, 32, !dbg !469
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !470
  ret i64 %39, !dbg !470
}

; Function Attrs: noredzone nounwind
define internal i64 @fcseeker(%struct._reent* nocapture, i8* nocapture readonly, i64, i32) #0 !dbg !471 {
  %5 = alloca i64, align 8
  %6 = bitcast i64* %5 to i8*, !dbg !481
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #4, !dbg !481
  store i64 %2, i64* %5, align 8, !dbg !482, !tbaa !483
  %7 = tail call i32* @__errno() #5, !dbg !484
  store i32 0, i32* %7, align 4, !dbg !485, !tbaa !359
  %8 = getelementptr inbounds i8, i8* %1, i64 32, !dbg !486
  %9 = bitcast i8* %8 to i32 (i8*, i64*, i32)**, !dbg !486
  %10 = load i32 (i8*, i64*, i32)*, i32 (i8*, i64*, i32)** %9, align 8, !dbg !486, !tbaa !488
  %11 = bitcast i8* %1 to i8**, !dbg !489
  %12 = load i8*, i8** %11, align 8, !dbg !489, !tbaa !372
  %13 = call i32 %10(i8* %12, i64* nonnull %5, i32 %3) #5, !dbg !490
  %14 = icmp slt i32 %13, 0, !dbg !491
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !492
  br i1 %14, label %15, label %23, !dbg !492

; <label>:15:                                     ; preds = %4
  %16 = call i32* @__errno() #5, !dbg !493
  %17 = load i32, i32* %16, align 4, !dbg !493, !tbaa !359
  %18 = icmp eq i32 %17, 0, !dbg !493
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !494
  br i1 %18, label %23, label %19, !dbg !494

; <label>:19:                                     ; preds = %15
  %20 = call i32* @__errno() #5, !dbg !495
  %21 = load i32, i32* %20, align 4, !dbg !495, !tbaa !359
  %22 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !496
  store i32 %21, i32* %22, align 8, !dbg !497, !tbaa !334
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !498
  br label %23, !dbg !498

; <label>:23:                                     ; preds = %15, %19, %4
  %24 = load i64, i64* %5, align 8, !dbg !499, !tbaa !483
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #4, !dbg !500
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !501
  ret i64 %24, !dbg !501
}

; Function Attrs: noredzone nounwind
define internal i32 @fccloser(%struct._reent* nocapture, i8*) #0 !dbg !502 {
  %3 = getelementptr inbounds i8, i8* %1, i64 40, !dbg !510
  %4 = bitcast i8* %3 to i32 (i8*)**, !dbg !510
  %5 = load i32 (i8*)*, i32 (i8*)** %4, align 8, !dbg !510, !tbaa !512
  %6 = icmp eq i32 (i8*)* %5, null, !dbg !513
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !514
  br i1 %6, label %22, label %7, !dbg !514

; <label>:7:                                      ; preds = %2
  %8 = tail call i32* @__errno() #5, !dbg !516
  store i32 0, i32* %8, align 4, !dbg !518, !tbaa !359
  %9 = load i32 (i8*)*, i32 (i8*)** %4, align 8, !dbg !519, !tbaa !512
  %10 = bitcast i8* %1 to i8**, !dbg !521
  %11 = load i8*, i8** %10, align 8, !dbg !521, !tbaa !372
  %12 = tail call i32 %9(i8* %11) #5, !dbg !522
  %13 = icmp slt i32 %12, 0, !dbg !523
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !524
  br i1 %13, label %14, label %22, !dbg !524

; <label>:14:                                     ; preds = %7
  %15 = tail call i32* @__errno() #5, !dbg !525
  %16 = load i32, i32* %15, align 4, !dbg !525, !tbaa !359
  %17 = icmp eq i32 %16, 0, !dbg !525
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !526
  br i1 %17, label %22, label %18, !dbg !526

; <label>:18:                                     ; preds = %14
  %19 = tail call i32* @__errno() #5, !dbg !527
  %20 = load i32, i32* %19, align 4, !dbg !527, !tbaa !359
  %21 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !528
  store i32 %20, i32* %21, align 8, !dbg !529, !tbaa !334
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !530
  br label %22, !dbg !530

; <label>:22:                                     ; preds = %14, %2, %7, %18
  %23 = phi i32 [ %12, %18 ], [ %12, %14 ], [ %12, %7 ], [ 0, %2 ], !dbg !531
  tail call void @free(i8* nonnull %1) #5, !dbg !532
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !533
  ret i32 %23, !dbg !533
}

; Function Attrs: noredzone nounwind
define dso_local %struct.__sFILE* @fopencookie(i8*, i8*, %struct.cookie_io_functions_t* byval nocapture readonly align 8) local_unnamed_addr #0 !dbg !534 {
  %4 = tail call %struct._reent* @__getreent() #5, !dbg !542
  %5 = call %struct.__sFILE* @_fopencookie_r(%struct._reent* %4, i8* %0, i8* %1, %struct.cookie_io_functions_t* byval nonnull align 8 %2) #6, !dbg !543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !544
  ret %struct.__sFILE* %5, !dbg !544
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }
attributes #6 = { nobuiltin noredzone }

!llvm.module.flags = !{!277, !278, !279}
!llvm.ident = !{!280}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !21)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fopencookie.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 435, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread.h", directory: "/root/.unikraft/apps/redis/build")
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20}
!7 = !DIEnumerator(name: "PTHREAD_CREATE_JOINABLE", value: 0)
!8 = !DIEnumerator(name: "PTHREAD_CREATE_DETACHED", value: 1)
!9 = !DIEnumerator(name: "PTHREAD_INHERIT_SCHED", value: 0)
!10 = !DIEnumerator(name: "PTHREAD_EXPLICIT_SCHED", value: 1)
!11 = !DIEnumerator(name: "PTHREAD_SCOPE_PROCESS", value: 0)
!12 = !DIEnumerator(name: "PTHREAD_SCOPE_SYSTEM", value: 1)
!13 = !DIEnumerator(name: "PTHREAD_SCOPE_PROCESS_VFPU", value: 2)
!14 = !DIEnumerator(name: "PTHREAD_CANCEL_ENABLE", value: 0)
!15 = !DIEnumerator(name: "PTHREAD_CANCEL_DISABLE", value: 1)
!16 = !DIEnumerator(name: "PTHREAD_CANCEL_ASYNCHRONOUS", value: 0)
!17 = !DIEnumerator(name: "PTHREAD_CANCEL_DEFERRED", value: 1)
!18 = !DIEnumerator(name: "PTHREAD_PROCESS_PRIVATE", value: 0)
!19 = !DIEnumerator(name: "PTHREAD_PROCESS_SHARED", value: 1)
!20 = !DIEnumerator(name: "PTHREAD_BARRIER_SERIAL_THREAD", value: -1)
!21 = !{!22, !23, !270, !227}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "fccookie", file: !1, line: 98, baseType: !25)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fccookie", file: !1, line: 91, size: 384, elements: !26)
!26 = !{!27, !28, !250, !259, !264, !272}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "cookie", scope: !25, file: !1, line: 92, baseType: !22, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !25, file: !1, line: 93, baseType: !29, size: 64, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !31, line: 66, baseType: !32)
!31 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !33, line: 287, baseType: !34)
!33 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !33, line: 181, size: 1408, elements: !35)
!35 = !{!36, !39, !40, !41, !43, !44, !49, !50, !51, !217, !223, !228, !232, !233, !234, !235, !237, !239, !240, !241, !243, !244, !248, !249}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !34, file: !33, line: 182, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !34, file: !33, line: 183, baseType: !5, size: 32, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !34, file: !33, line: 184, baseType: !5, size: 32, offset: 96)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !34, file: !33, line: 185, baseType: !42, size: 16, offset: 128)
!42 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !34, file: !33, line: 186, baseType: !42, size: 16, offset: 144)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !34, file: !33, line: 187, baseType: !45, size: 128, offset: 192)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !33, line: 117, size: 128, elements: !46)
!46 = !{!47, !48}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !45, file: !33, line: 118, baseType: !37, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !45, file: !33, line: 119, baseType: !5, size: 32, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !34, file: !33, line: 188, baseType: !5, size: 32, offset: 320)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !34, file: !33, line: 195, baseType: !22, size: 64, offset: 384)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !34, file: !33, line: 197, baseType: !52, size: 64, offset: 448)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DISubroutineType(types: !54)
!54 = !{!55, !58, !22, !102, !5}
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !56, line: 145, baseType: !57)
!56 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!57 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !33, line: 569, size: 14912, elements: !60)
!60 = !{!61, !62, !64, !65, !66, !67, !72, !73, !76, !77, !81, !96, !97, !98, !100, !101, !103, !181, !202, !203, !208, !215}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !59, file: !33, line: 571, baseType: !5, size: 32)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !59, file: !33, line: 576, baseType: !63, size: 64, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !59, file: !33, line: 576, baseType: !63, size: 64, offset: 128)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !59, file: !33, line: 576, baseType: !63, size: 64, offset: 192)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !59, file: !33, line: 578, baseType: !5, size: 32, offset: 256)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !59, file: !33, line: 579, baseType: !68, size: 200, offset: 288)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 200, elements: !70)
!69 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!70 = !{!71}
!71 = !DISubrange(count: 25)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !59, file: !33, line: 582, baseType: !5, size: 32, offset: 512)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !59, file: !33, line: 583, baseType: !74, size: 64, offset: 576)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !33, line: 40, flags: DIFlagFwdDecl)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !59, file: !33, line: 585, baseType: !5, size: 32, offset: 640)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !59, file: !33, line: 587, baseType: !78, size: 64, offset: 704)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DISubroutineType(types: !80)
!80 = !{null, !58}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !59, file: !33, line: 590, baseType: !82, size: 64, offset: 768)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !33, line: 47, size: 256, elements: !84)
!84 = !{!85, !86, !87, !88, !89, !90}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !83, file: !33, line: 49, baseType: !82, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !83, file: !33, line: 50, baseType: !5, size: 32, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !83, file: !33, line: 50, baseType: !5, size: 32, offset: 96)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !83, file: !33, line: 50, baseType: !5, size: 32, offset: 128)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !83, file: !33, line: 50, baseType: !5, size: 32, offset: 160)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !83, file: !33, line: 51, baseType: !91, size: 32, offset: 192)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 32, elements: !94)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !33, line: 25, baseType: !93)
!93 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!94 = !{!95}
!95 = !DISubrange(count: 1)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !59, file: !33, line: 591, baseType: !5, size: 32, offset: 832)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !59, file: !33, line: 592, baseType: !82, size: 64, offset: 896)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !59, file: !33, line: 593, baseType: !99, size: 64, offset: 960)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !59, file: !33, line: 596, baseType: !5, size: 32, offset: 1024)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !59, file: !33, line: 597, baseType: !102, size: 64, offset: 1088)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !59, file: !33, line: 632, baseType: !104, size: 2880, offset: 1152)
!104 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !59, file: !33, line: 599, size: 2880, elements: !105)
!105 = !{!106, !172}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !104, file: !33, line: 622, baseType: !107, size: 1728)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !104, file: !33, line: 601, size: 1728, elements: !108)
!108 = !{!109, !110, !111, !115, !127, !128, !130, !140, !155, !156, !157, !161, !165, !166, !167, !168, !169, !170, !171}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !107, file: !33, line: 603, baseType: !93, size: 32)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !107, file: !33, line: 604, baseType: !102, size: 64, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !107, file: !33, line: 605, baseType: !112, size: 208, offset: 128)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 208, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 26)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !107, file: !33, line: 606, baseType: !116, size: 288, offset: 352)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !33, line: 55, size: 288, elements: !117)
!117 = !{!118, !119, !120, !121, !122, !123, !124, !125, !126}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !116, file: !33, line: 57, baseType: !5, size: 32)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !116, file: !33, line: 58, baseType: !5, size: 32, offset: 32)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !116, file: !33, line: 59, baseType: !5, size: 32, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !116, file: !33, line: 60, baseType: !5, size: 32, offset: 96)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !116, file: !33, line: 61, baseType: !5, size: 32, offset: 128)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !116, file: !33, line: 62, baseType: !5, size: 32, offset: 160)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !116, file: !33, line: 63, baseType: !5, size: 32, offset: 192)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !116, file: !33, line: 64, baseType: !5, size: 32, offset: 224)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !116, file: !33, line: 65, baseType: !5, size: 32, offset: 256)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !107, file: !33, line: 607, baseType: !5, size: 32, offset: 640)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !107, file: !33, line: 608, baseType: !129, size: 64, offset: 704)
!129 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !107, file: !33, line: 609, baseType: !131, size: 112, offset: 768)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !33, line: 319, size: 112, elements: !132)
!132 = !{!133, !138, !139}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !131, file: !33, line: 320, baseType: !134, size: 48)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 48, elements: !136)
!135 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!136 = !{!137}
!137 = !DISubrange(count: 3)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !131, file: !33, line: 321, baseType: !134, size: 48, offset: 48)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !131, file: !33, line: 322, baseType: !135, size: 16, offset: 96)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !107, file: !33, line: 610, baseType: !141, size: 64, offset: 896)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !56, line: 171, baseType: !142)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !56, line: 163, size: 64, elements: !143)
!143 = !{!144, !145}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !142, file: !56, line: 165, baseType: !5, size: 32)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !142, file: !56, line: 170, baseType: !146, size: 32, offset: 32)
!146 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !142, file: !56, line: 166, size: 32, elements: !147)
!147 = !{!148, !151}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !146, file: !56, line: 168, baseType: !149, size: 32)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !150, line: 124, baseType: !93)
!150 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!151 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !146, file: !56, line: 169, baseType: !152, size: 32)
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 32, elements: !153)
!153 = !{!154}
!154 = !DISubrange(count: 4)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !107, file: !33, line: 611, baseType: !141, size: 64, offset: 960)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !107, file: !33, line: 612, baseType: !141, size: 64, offset: 1024)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !107, file: !33, line: 613, baseType: !158, size: 64, offset: 1088)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 64, elements: !159)
!159 = !{!160}
!160 = !DISubrange(count: 8)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !107, file: !33, line: 614, baseType: !162, size: 192, offset: 1152)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 192, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 24)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !107, file: !33, line: 615, baseType: !5, size: 32, offset: 1344)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !107, file: !33, line: 616, baseType: !141, size: 64, offset: 1376)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !107, file: !33, line: 617, baseType: !141, size: 64, offset: 1440)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !107, file: !33, line: 618, baseType: !141, size: 64, offset: 1504)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !107, file: !33, line: 619, baseType: !141, size: 64, offset: 1568)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !107, file: !33, line: 620, baseType: !141, size: 64, offset: 1632)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !107, file: !33, line: 621, baseType: !5, size: 32, offset: 1696)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !104, file: !33, line: 631, baseType: !173, size: 2880)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !104, file: !33, line: 626, size: 2880, elements: !174)
!174 = !{!175, !179}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !173, file: !33, line: 629, baseType: !176, size: 1920)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 1920, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 30)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !173, file: !33, line: 630, baseType: !180, size: 960, offset: 1920)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 960, elements: !177)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !59, file: !33, line: 636, baseType: !182, size: 64, offset: 4032)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !33, line: 93, size: 6336, elements: !184)
!184 = !{!185, !186, !187, !194}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !183, file: !33, line: 94, baseType: !182, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !183, file: !33, line: 95, baseType: !5, size: 32, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !183, file: !33, line: 97, baseType: !188, size: 2048, offset: 128)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 2048, elements: !192)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{null}
!192 = !{!193}
!193 = !DISubrange(count: 32)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !183, file: !33, line: 98, baseType: !195, size: 4160, offset: 2176)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !33, line: 74, size: 4160, elements: !196)
!196 = !{!197, !199, !200, !201}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !195, file: !33, line: 75, baseType: !198, size: 2048)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 2048, elements: !192)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !195, file: !33, line: 76, baseType: !198, size: 2048, offset: 2048)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !195, file: !33, line: 78, baseType: !92, size: 32, offset: 4096)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !195, file: !33, line: 81, baseType: !92, size: 32, offset: 4128)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !59, file: !33, line: 637, baseType: !183, size: 6336, offset: 4096)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !59, file: !33, line: 641, baseType: !204, size: 64, offset: 10432)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DISubroutineType(types: !207)
!207 = !{null, !5}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !59, file: !33, line: 646, baseType: !209, size: 192, offset: 10496)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !33, line: 291, size: 192, elements: !210)
!210 = !{!211, !213, !214}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !209, file: !33, line: 293, baseType: !212, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !209, file: !33, line: 294, baseType: !5, size: 32, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !209, file: !33, line: 295, baseType: !63, size: 64, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !59, file: !33, line: 648, baseType: !216, size: 4224, offset: 10688)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 4224, elements: !136)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !34, file: !33, line: 199, baseType: !218, size: 64, offset: 512)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{!55, !58, !22, !221, !5}
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !34, file: !33, line: 202, baseType: !224, size: 64, offset: 576)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DISubroutineType(types: !226)
!226 = !{!227, !58, !22, !227, !5}
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !56, line: 114, baseType: !57)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !34, file: !33, line: 203, baseType: !229, size: 64, offset: 640)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{!5, !58, !22}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !34, file: !33, line: 206, baseType: !45, size: 128, offset: 704)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !34, file: !33, line: 207, baseType: !37, size: 64, offset: 832)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !34, file: !33, line: 208, baseType: !5, size: 32, offset: 896)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !34, file: !33, line: 211, baseType: !236, size: 24, offset: 928)
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 24, elements: !136)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !34, file: !33, line: 212, baseType: !238, size: 8, offset: 952)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 8, elements: !94)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !34, file: !33, line: 215, baseType: !45, size: 128, offset: 960)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !34, file: !33, line: 218, baseType: !5, size: 32, offset: 1088)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !34, file: !33, line: 219, baseType: !242, size: 64, offset: 1152)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !56, line: 44, baseType: !57)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !34, file: !33, line: 222, baseType: !58, size: 64, offset: 1216)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !34, file: !33, line: 226, baseType: !245, size: 32, offset: 1280)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !56, line: 175, baseType: !246)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !247, line: 12, baseType: !5)
!247 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !34, file: !33, line: 228, baseType: !141, size: 64, offset: 1312)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !34, file: !33, line: 229, baseType: !5, size: 32, offset: 1376)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "readfn", scope: !25, file: !1, line: 94, baseType: !251, size: 64, offset: 128)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "cookie_read_function_t", file: !31, line: 624, baseType: !253)
!253 = !DISubroutineType(types: !254)
!254 = !{!255, !22, !102, !257}
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !256, line: 200, baseType: !55)
!256 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !150, line: 58, baseType: !258)
!258 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "writefn", scope: !25, file: !1, line: 95, baseType: !260, size: 64, offset: 192)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "cookie_write_function_t", file: !31, line: 625, baseType: !262)
!262 = !DISubroutineType(types: !263)
!263 = !{!255, !22, !221, !257}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "seekfn", scope: !25, file: !1, line: 96, baseType: !265, size: 64, offset: 256)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "cookie_seek_function_t", file: !31, line: 631, baseType: !267)
!267 = !DISubroutineType(types: !268)
!268 = !{!5, !22, !269, !5}
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !256, line: 173, baseType: !271)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !56, line: 100, baseType: !242)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "closefn", scope: !25, file: !1, line: 97, baseType: !273, size: 64, offset: 320)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "cookie_close_function_t", file: !31, line: 633, baseType: !275)
!275 = !DISubroutineType(types: !276)
!276 = !{!5, !22}
!277 = !{i32 2, !"Dwarf Version", i32 4}
!278 = !{i32 2, !"Debug Info Version", i32 3}
!279 = !{i32 1, !"wchar_size", i32 4}
!280 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!281 = distinct !DISubprogram(name: "_fopencookie_r", scope: !1, file: !1, line: 200, type: !282, isLocal: false, isDefinition: true, scopeLine: 205, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !291)
!282 = !DISubroutineType(types: !283)
!283 = !{!29, !58, !22, !221, !284}
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "cookie_io_functions_t", file: !31, line: 642, baseType: !285)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !31, line: 634, size: 256, elements: !286)
!286 = !{!287, !288, !289, !290}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !285, file: !31, line: 638, baseType: !251, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !285, file: !31, line: 639, baseType: !260, size: 64, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "seek", scope: !285, file: !31, line: 640, baseType: !265, size: 64, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !285, file: !31, line: 641, baseType: !273, size: 64, offset: 192)
!291 = !{!292, !293, !294, !295, !296, !297, !298, !299, !300, !304}
!292 = !DILocalVariable(name: "ptr", arg: 1, scope: !281, file: !1, line: 200, type: !58)
!293 = !DILocalVariable(name: "cookie", arg: 2, scope: !281, file: !1, line: 200, type: !22)
!294 = !DILocalVariable(name: "mode", arg: 3, scope: !281, file: !1, line: 200, type: !221)
!295 = !DILocalVariable(name: "functions", arg: 4, scope: !281, file: !1, line: 200, type: !284)
!296 = !DILocalVariable(name: "fp", scope: !281, file: !1, line: 206, type: !29)
!297 = !DILocalVariable(name: "c", scope: !281, file: !1, line: 207, type: !23)
!298 = !DILocalVariable(name: "flags", scope: !281, file: !1, line: 208, type: !5)
!299 = !DILocalVariable(name: "dummy", scope: !281, file: !1, line: 209, type: !5)
!300 = !DILocalVariable(name: "__oldsfpcancel", scope: !301, file: !1, line: 223, type: !5)
!301 = distinct !DILexicalBlock(scope: !302, file: !1, line: 223, column: 7)
!302 = distinct !DILexicalBlock(scope: !303, file: !1, line: 222, column: 5)
!303 = distinct !DILexicalBlock(scope: !281, file: !1, line: 221, column: 7)
!304 = !DILocalVariable(name: "__oldfpcancel", scope: !305, file: !1, line: 232, type: !5)
!305 = distinct !DILexicalBlock(scope: !281, file: !1, line: 232, column: 3)
!306 = !DILocation(line: 200, column: 1, scope: !281)
!307 = !DILocation(line: 209, column: 3, scope: !281)
!308 = !DILocation(line: 209, column: 7, scope: !281)
!309 = !DILocation(line: 211, column: 16, scope: !310)
!310 = distinct !DILexicalBlock(scope: !281, file: !1, line: 211, column: 7)
!311 = !DILocation(line: 208, column: 7, scope: !281)
!312 = !DILocation(line: 211, column: 46, scope: !310)
!313 = !DILocation(line: 211, column: 7, scope: !281)
!314 = !DILocation(line: 213, column: 15, scope: !315)
!315 = distinct !DILexicalBlock(scope: !281, file: !1, line: 213, column: 7)
!316 = !DILocation(line: 213, column: 34, scope: !315)
!317 = !DILocation(line: 213, column: 48, scope: !315)
!318 = !{!319, !320, i64 0}
!319 = !{!"", !320, i64 0, !320, i64 8, !320, i64 16, !320, i64 24}
!320 = !{!"any pointer", !321, i64 0}
!321 = !{!"omnipotent char", !322, i64 0}
!322 = !{!"Simple C/C++ TBAA"}
!323 = !DILocation(line: 213, column: 38, scope: !315)
!324 = !DILocation(line: 214, column: 7, scope: !315)
!325 = !DILocation(line: 214, column: 18, scope: !315)
!326 = !DILocation(line: 214, column: 37, scope: !315)
!327 = !DILocation(line: 214, column: 51, scope: !315)
!328 = !{!319, !320, i64 8}
!329 = !DILocation(line: 214, column: 41, scope: !315)
!330 = !DILocation(line: 213, column: 7, scope: !281)
!331 = !DILocation(line: 216, column: 12, scope: !332)
!332 = distinct !DILexicalBlock(scope: !315, file: !1, line: 215, column: 5)
!333 = !DILocation(line: 216, column: 19, scope: !332)
!334 = !{!335, !336, i64 0}
!335 = !{!"_reent", !336, i64 0, !320, i64 8, !320, i64 16, !320, i64 24, !336, i64 32, !321, i64 36, !336, i64 64, !320, i64 72, !336, i64 80, !320, i64 88, !320, i64 96, !336, i64 104, !320, i64 112, !320, i64 120, !336, i64 128, !320, i64 136, !321, i64 144, !320, i64 504, !337, i64 512, !320, i64 1304, !339, i64 1312, !321, i64 1336}
!336 = !{!"int", !321, i64 0}
!337 = !{!"_atexit", !320, i64 0, !336, i64 8, !321, i64 16, !338, i64 272}
!338 = !{!"_on_exit_args", !321, i64 0, !321, i64 256, !336, i64 512, !336, i64 516}
!339 = !{!"_glue", !320, i64 0, !336, i64 8, !320, i64 16}
!340 = !DILocation(line: 217, column: 7, scope: !332)
!341 = !DILocation(line: 219, column: 13, scope: !342)
!342 = distinct !DILexicalBlock(scope: !281, file: !1, line: 219, column: 7)
!343 = !DILocation(line: 206, column: 9, scope: !281)
!344 = !DILocation(line: 219, column: 26, scope: !342)
!345 = !DILocation(line: 219, column: 7, scope: !281)
!346 = !DILocation(line: 221, column: 25, scope: !303)
!347 = !DILocation(line: 221, column: 53, scope: !303)
!348 = !DILocation(line: 221, column: 7, scope: !281)
!349 = !DILocation(line: 223, column: 7, scope: !301)
!350 = !DILocation(line: 224, column: 11, scope: !301)
!351 = !DILocation(line: 224, column: 18, scope: !301)
!352 = !{!353, !354, i64 16}
!353 = !{!"__sFILE", !320, i64 0, !336, i64 8, !336, i64 12, !354, i64 16, !354, i64 18, !355, i64 24, !336, i64 40, !320, i64 48, !320, i64 56, !320, i64 64, !320, i64 72, !320, i64 80, !355, i64 88, !320, i64 104, !336, i64 112, !321, i64 116, !321, i64 119, !355, i64 120, !336, i64 136, !356, i64 144, !320, i64 152, !336, i64 160, !357, i64 164, !336, i64 172}
!354 = !{!"short", !321, i64 0}
!355 = !{!"__sbuf", !320, i64 0, !336, i64 8}
!356 = !{!"long", !321, i64 0}
!357 = !{!"", !336, i64 0, !321, i64 4}
!358 = !DILocation(line: 228, column: 7, scope: !301)
!359 = !{!336, !336, i64 0}
!360 = !DILocation(line: 228, column: 7, scope: !302)
!361 = !DILocation(line: 229, column: 7, scope: !302)
!362 = !DILocation(line: 207, column: 13, scope: !281)
!363 = !DILocation(line: 232, column: 3, scope: !305)
!364 = !DILocation(line: 233, column: 7, scope: !305)
!365 = !DILocation(line: 233, column: 13, scope: !305)
!366 = !{!353, !354, i64 18}
!367 = !DILocation(line: 234, column: 16, scope: !305)
!368 = !DILocation(line: 234, column: 7, scope: !305)
!369 = !DILocation(line: 234, column: 14, scope: !305)
!370 = !DILocation(line: 235, column: 6, scope: !305)
!371 = !DILocation(line: 235, column: 13, scope: !305)
!372 = !{!373, !320, i64 0}
!373 = !{!"fccookie", !320, i64 0, !320, i64 8, !320, i64 16, !320, i64 24, !320, i64 32, !320, i64 40}
!374 = !DILocation(line: 236, column: 6, scope: !305)
!375 = !DILocation(line: 236, column: 9, scope: !305)
!376 = !{!373, !320, i64 8}
!377 = !DILocation(line: 237, column: 7, scope: !305)
!378 = !DILocation(line: 237, column: 15, scope: !305)
!379 = !{!353, !320, i64 48}
!380 = !DILocation(line: 238, column: 6, scope: !305)
!381 = !DILocation(line: 239, column: 7, scope: !305)
!382 = !DILocation(line: 238, column: 25, scope: !305)
!383 = !{!320, !320, i64 0}
!384 = !DILocation(line: 238, column: 13, scope: !305)
!385 = !DILocation(line: 239, column: 13, scope: !305)
!386 = !DILocation(line: 242, column: 25, scope: !305)
!387 = !DILocation(line: 242, column: 6, scope: !305)
!388 = !DILocation(line: 243, column: 15, scope: !305)
!389 = !DILocation(line: 243, column: 7, scope: !305)
!390 = !DILocation(line: 243, column: 13, scope: !305)
!391 = !{!353, !320, i64 72}
!392 = !DILocation(line: 242, column: 13, scope: !305)
!393 = !DILocation(line: 249, column: 7, scope: !305)
!394 = !DILocation(line: 249, column: 14, scope: !305)
!395 = !{!353, !320, i64 80}
!396 = !DILocation(line: 250, column: 3, scope: !305)
!397 = !DILocation(line: 250, column: 3, scope: !281)
!398 = !DILocation(line: 251, column: 3, scope: !281)
!399 = !DILocation(line: 0, scope: !332)
!400 = !DILocation(line: 0, scope: !310)
!401 = !DILocation(line: 252, column: 1, scope: !281)
!402 = distinct !DISubprogram(name: "fcreader", scope: !1, file: !1, line: 101, type: !53, isLocal: true, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !403)
!403 = !{!404, !405, !406, !407, !408, !409}
!404 = !DILocalVariable(name: "ptr", arg: 1, scope: !402, file: !1, line: 101, type: !58)
!405 = !DILocalVariable(name: "cookie", arg: 2, scope: !402, file: !1, line: 101, type: !22)
!406 = !DILocalVariable(name: "buf", arg: 3, scope: !402, file: !1, line: 101, type: !102)
!407 = !DILocalVariable(name: "n", arg: 4, scope: !402, file: !1, line: 101, type: !5)
!408 = !DILocalVariable(name: "result", scope: !402, file: !1, line: 107, type: !5)
!409 = !DILocalVariable(name: "c", scope: !402, file: !1, line: 108, type: !23)
!410 = !DILocation(line: 101, column: 1, scope: !402)
!411 = !DILocation(line: 108, column: 13, scope: !402)
!412 = !DILocation(line: 109, column: 3, scope: !402)
!413 = !DILocation(line: 109, column: 9, scope: !402)
!414 = !DILocation(line: 110, column: 20, scope: !415)
!415 = distinct !DILexicalBlock(scope: !402, file: !1, line: 110, column: 7)
!416 = !{!373, !320, i64 16}
!417 = !DILocation(line: 110, column: 31, scope: !415)
!418 = !DILocation(line: 110, column: 44, scope: !415)
!419 = !DILocation(line: 110, column: 17, scope: !415)
!420 = !DILocation(line: 107, column: 7, scope: !402)
!421 = !DILocation(line: 110, column: 48, scope: !415)
!422 = !DILocation(line: 110, column: 52, scope: !415)
!423 = !DILocation(line: 110, column: 55, scope: !415)
!424 = !DILocation(line: 110, column: 7, scope: !402)
!425 = !DILocation(line: 111, column: 19, scope: !415)
!426 = !DILocation(line: 111, column: 10, scope: !415)
!427 = !DILocation(line: 111, column: 17, scope: !415)
!428 = !DILocation(line: 111, column: 5, scope: !415)
!429 = !DILocation(line: 112, column: 10, scope: !402)
!430 = !DILocation(line: 112, column: 3, scope: !402)
!431 = distinct !DISubprogram(name: "fcwriter", scope: !1, file: !1, line: 116, type: !219, isLocal: true, isDefinition: true, scopeLine: 121, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !432)
!432 = !{!433, !434, !435, !436, !437, !438}
!433 = !DILocalVariable(name: "ptr", arg: 1, scope: !431, file: !1, line: 116, type: !58)
!434 = !DILocalVariable(name: "cookie", arg: 2, scope: !431, file: !1, line: 116, type: !22)
!435 = !DILocalVariable(name: "buf", arg: 3, scope: !431, file: !1, line: 116, type: !221)
!436 = !DILocalVariable(name: "n", arg: 4, scope: !431, file: !1, line: 116, type: !5)
!437 = !DILocalVariable(name: "result", scope: !431, file: !1, line: 122, type: !5)
!438 = !DILocalVariable(name: "c", scope: !431, file: !1, line: 123, type: !23)
!439 = !DILocation(line: 116, column: 1, scope: !431)
!440 = !DILocation(line: 123, column: 13, scope: !431)
!441 = !DILocation(line: 124, column: 10, scope: !442)
!442 = distinct !DILexicalBlock(scope: !431, file: !1, line: 124, column: 7)
!443 = !DILocation(line: 124, column: 14, scope: !442)
!444 = !DILocation(line: 124, column: 21, scope: !442)
!445 = !DILocation(line: 124, column: 30, scope: !442)
!446 = !DILocation(line: 124, column: 40, scope: !442)
!447 = !DILocation(line: 124, column: 33, scope: !442)
!448 = !DILocation(line: 124, column: 7, scope: !431)
!449 = !DILocation(line: 129, column: 7, scope: !450)
!450 = distinct !DILexicalBlock(scope: !442, file: !1, line: 125, column: 5)
!451 = !DILocation(line: 131, column: 5, scope: !450)
!452 = !DILocation(line: 132, column: 3, scope: !431)
!453 = !DILocation(line: 132, column: 9, scope: !431)
!454 = !DILocation(line: 133, column: 20, scope: !455)
!455 = distinct !DILexicalBlock(scope: !431, file: !1, line: 133, column: 7)
!456 = !{!373, !320, i64 24}
!457 = !DILocation(line: 133, column: 32, scope: !455)
!458 = !DILocation(line: 133, column: 45, scope: !455)
!459 = !DILocation(line: 133, column: 17, scope: !455)
!460 = !DILocation(line: 122, column: 7, scope: !431)
!461 = !DILocation(line: 133, column: 49, scope: !455)
!462 = !DILocation(line: 133, column: 53, scope: !455)
!463 = !DILocation(line: 133, column: 56, scope: !455)
!464 = !DILocation(line: 133, column: 7, scope: !431)
!465 = !DILocation(line: 134, column: 19, scope: !455)
!466 = !DILocation(line: 134, column: 10, scope: !455)
!467 = !DILocation(line: 134, column: 17, scope: !455)
!468 = !DILocation(line: 134, column: 5, scope: !455)
!469 = !DILocation(line: 135, column: 10, scope: !431)
!470 = !DILocation(line: 135, column: 3, scope: !431)
!471 = distinct !DISubprogram(name: "fcseeker", scope: !1, file: !1, line: 139, type: !225, isLocal: true, isDefinition: true, scopeLine: 144, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !472)
!472 = !{!473, !474, !475, !476, !477, !478}
!473 = !DILocalVariable(name: "ptr", arg: 1, scope: !471, file: !1, line: 139, type: !58)
!474 = !DILocalVariable(name: "cookie", arg: 2, scope: !471, file: !1, line: 139, type: !22)
!475 = !DILocalVariable(name: "pos", arg: 3, scope: !471, file: !1, line: 139, type: !227)
!476 = !DILocalVariable(name: "whence", arg: 4, scope: !471, file: !1, line: 139, type: !5)
!477 = !DILocalVariable(name: "c", scope: !471, file: !1, line: 145, type: !23)
!478 = !DILocalVariable(name: "offset", scope: !471, file: !1, line: 147, type: !270)
!479 = !DILocation(line: 139, column: 1, scope: !471)
!480 = !DILocation(line: 145, column: 13, scope: !471)
!481 = !DILocation(line: 147, column: 3, scope: !471)
!482 = !DILocation(line: 147, column: 9, scope: !471)
!483 = !{!356, !356, i64 0}
!484 = !DILocation(line: 152, column: 3, scope: !471)
!485 = !DILocation(line: 152, column: 9, scope: !471)
!486 = !DILocation(line: 153, column: 10, scope: !487)
!487 = distinct !DILexicalBlock(scope: !471, file: !1, line: 153, column: 7)
!488 = !{!373, !320, i64 32}
!489 = !DILocation(line: 153, column: 21, scope: !487)
!490 = !DILocation(line: 153, column: 7, scope: !487)
!491 = !DILocation(line: 153, column: 46, scope: !487)
!492 = !DILocation(line: 153, column: 50, scope: !487)
!493 = !DILocation(line: 153, column: 53, scope: !487)
!494 = !DILocation(line: 153, column: 7, scope: !471)
!495 = !DILocation(line: 154, column: 19, scope: !487)
!496 = !DILocation(line: 154, column: 10, scope: !487)
!497 = !DILocation(line: 154, column: 17, scope: !487)
!498 = !DILocation(line: 154, column: 5, scope: !487)
!499 = !DILocation(line: 162, column: 20, scope: !471)
!500 = !DILocation(line: 163, column: 1, scope: !471)
!501 = !DILocation(line: 162, column: 3, scope: !471)
!502 = distinct !DISubprogram(name: "fccloser", scope: !1, file: !1, line: 183, type: !230, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !503)
!503 = !{!504, !505, !506, !507}
!504 = !DILocalVariable(name: "ptr", arg: 1, scope: !502, file: !1, line: 183, type: !58)
!505 = !DILocalVariable(name: "cookie", arg: 2, scope: !502, file: !1, line: 183, type: !22)
!506 = !DILocalVariable(name: "result", scope: !502, file: !1, line: 187, type: !5)
!507 = !DILocalVariable(name: "c", scope: !502, file: !1, line: 188, type: !23)
!508 = !DILocation(line: 183, column: 1, scope: !502)
!509 = !DILocation(line: 187, column: 7, scope: !502)
!510 = !DILocation(line: 189, column: 10, scope: !511)
!511 = distinct !DILexicalBlock(scope: !502, file: !1, line: 189, column: 7)
!512 = !{!373, !320, i64 40}
!513 = !DILocation(line: 189, column: 7, scope: !511)
!514 = !DILocation(line: 189, column: 7, scope: !502)
!515 = !DILocation(line: 188, column: 13, scope: !502)
!516 = !DILocation(line: 191, column: 7, scope: !517)
!517 = distinct !DILexicalBlock(scope: !511, file: !1, line: 190, column: 5)
!518 = !DILocation(line: 191, column: 13, scope: !517)
!519 = !DILocation(line: 192, column: 24, scope: !520)
!520 = distinct !DILexicalBlock(scope: !517, file: !1, line: 192, column: 11)
!521 = !DILocation(line: 192, column: 36, scope: !520)
!522 = !DILocation(line: 192, column: 21, scope: !520)
!523 = !DILocation(line: 192, column: 45, scope: !520)
!524 = !DILocation(line: 192, column: 49, scope: !520)
!525 = !DILocation(line: 192, column: 52, scope: !520)
!526 = !DILocation(line: 192, column: 11, scope: !517)
!527 = !DILocation(line: 193, column: 16, scope: !520)
!528 = !DILocation(line: 193, column: 7, scope: !520)
!529 = !DILocation(line: 193, column: 14, scope: !520)
!530 = !DILocation(line: 193, column: 2, scope: !520)
!531 = !DILocation(line: 0, scope: !502)
!532 = !DILocation(line: 195, column: 3, scope: !502)
!533 = !DILocation(line: 196, column: 3, scope: !502)
!534 = distinct !DISubprogram(name: "fopencookie", scope: !1, file: !1, line: 256, type: !535, isLocal: false, isDefinition: true, scopeLine: 260, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !537)
!535 = !DISubroutineType(types: !536)
!536 = !{!29, !22, !221, !284}
!537 = !{!538, !539, !540}
!538 = !DILocalVariable(name: "cookie", arg: 1, scope: !534, file: !1, line: 256, type: !22)
!539 = !DILocalVariable(name: "mode", arg: 2, scope: !534, file: !1, line: 256, type: !221)
!540 = !DILocalVariable(name: "functions", arg: 3, scope: !534, file: !1, line: 256, type: !284)
!541 = !DILocation(line: 256, column: 1, scope: !534)
!542 = !DILocation(line: 261, column: 26, scope: !534)
!543 = !DILocation(line: 261, column: 10, scope: !534)
!544 = !DILocation(line: 261, column: 3, scope: !534)
