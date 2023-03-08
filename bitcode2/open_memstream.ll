; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/open_memstream.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/open_memstream.c"
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

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local %struct.__sFILE* @_open_memstream_r(%struct._reent*, i8**, i64*) local_unnamed_addr #0 !dbg !69 {
  %4 = tail call fastcc %struct.__sFILE* @internal_open_memstream_r(%struct._reent* %0, i8** %1, i64* %2, i32 -1) #4, !dbg !290
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !291
  ret %struct.__sFILE* %4, !dbg !291
}

; Function Attrs: noredzone nounwind
define internal fastcc %struct.__sFILE* @internal_open_memstream_r(%struct._reent*, i8**, i64*, i32) unnamed_addr #0 !dbg !292 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = icmp ne i8** %1, null, !dbg !313
  %9 = icmp ne i64* %2, null, !dbg !315
  %10 = and i1 %8, %9, !dbg !316
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !316
  br i1 %10, label %13, label %11, !dbg !316

; <label>:11:                                     ; preds = %4
  %12 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !317
  store i32 22, i32* %12, align 8, !dbg !319, !tbaa !320
  br label %76, !dbg !329

; <label>:13:                                     ; preds = %4
  %14 = tail call %struct.__sFILE* @__sfp(%struct._reent* %0) #5, !dbg !330
  %15 = icmp eq %struct.__sFILE* %14, null, !dbg !333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !334
  br i1 %15, label %76, label %16, !dbg !334

; <label>:16:                                     ; preds = %13
  %17 = tail call i8* @malloc(i64 56) #5, !dbg !335
  %18 = icmp eq i8* %17, null, !dbg !337
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !338
  br i1 %18, label %19, label %25, !dbg !338

; <label>:19:                                     ; preds = %16
  %20 = bitcast i32* %5 to i8*, !dbg !339
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %20) #6, !dbg !339
  %21 = call i32 @pthread_setcancelstate(i32 1, i32* nonnull %5) #5, !dbg !339
  call void @__sfp_lock_acquire() #5, !dbg !339
  %22 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %14, i64 0, i32 3, !dbg !340
  store i16 0, i16* %22, align 8, !dbg !341, !tbaa !342
  call void @__sfp_lock_release() #5, !dbg !348
  %23 = load i32, i32* %5, align 4, !dbg !348, !tbaa !349
  %24 = call i32 @pthread_setcancelstate(i32 %23, i32* nonnull %5) #5, !dbg !348
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %20) #6, !dbg !350
  br label %76, !dbg !351

; <label>:25:                                     ; preds = %16
  %26 = load i64, i64* %2, align 8, !dbg !352, !tbaa !353
  %27 = getelementptr inbounds i8, i8* %17, i64 40, !dbg !354
  %28 = bitcast i8* %27 to i64*, !dbg !354
  store i64 %26, i64* %28, align 8, !dbg !355, !tbaa !356
  %29 = icmp eq i32 %3, 1, !dbg !358
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !360
  br i1 %29, label %30, label %32, !dbg !360

; <label>:30:                                     ; preds = %25
  %31 = shl i64 %26, 2, !dbg !361
  store i64 %31, i64* %28, align 8, !dbg !361, !tbaa !356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !362
  br label %32, !dbg !362

; <label>:32:                                     ; preds = %30, %25
  %33 = phi i64 [ %31, %30 ], [ %26, %25 ], !dbg !363
  %34 = icmp ult i64 %33, 64, !dbg !365
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !366
  br i1 %34, label %37, label %35, !dbg !366

; <label>:35:                                     ; preds = %32
  %36 = icmp ugt i64 %33, 65536, !dbg !367
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !369
  br i1 %36, label %37, label %39, !dbg !369

; <label>:37:                                     ; preds = %35, %32
  %38 = phi i64 [ 64, %32 ], [ 65536, %35 ]
  store i64 %38, i64* %28, align 8, !dbg !370, !tbaa !356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !370
  br label %39, !dbg !371

; <label>:39:                                     ; preds = %37, %35
  store i64 0, i64* %2, align 8, !dbg !371, !tbaa !353
  %40 = load i64, i64* %28, align 8, !dbg !372, !tbaa !356
  %41 = tail call i8* @malloc(i64 %40) #5, !dbg !372
  store i8* %41, i8** %1, align 8, !dbg !373, !tbaa !374
  %42 = icmp eq i8* %41, null, !dbg !375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !376
  %43 = bitcast i8* %41 to i32*, !dbg !376
  br i1 %42, label %44, label %50, !dbg !376

; <label>:44:                                     ; preds = %39
  %45 = bitcast i32* %6 to i8*, !dbg !377
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %45) #6, !dbg !377
  %46 = call i32 @pthread_setcancelstate(i32 1, i32* nonnull %6) #5, !dbg !377
  call void @__sfp_lock_acquire() #5, !dbg !377
  %47 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %14, i64 0, i32 3, !dbg !378
  store i16 0, i16* %47, align 8, !dbg !379, !tbaa !342
  call void @__sfp_lock_release() #5, !dbg !380
  %48 = load i32, i32* %6, align 4, !dbg !380, !tbaa !349
  %49 = call i32 @pthread_setcancelstate(i32 %48, i32* nonnull %6) #5, !dbg !380
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %45) #6, !dbg !381
  call void @free(i8* nonnull %17) #5, !dbg !382
  br label %76, !dbg !383

; <label>:50:                                     ; preds = %39
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !384
  br i1 %29, label %51, label %52, !dbg !384

; <label>:51:                                     ; preds = %50
  store i32 0, i32* %43, align 4, !dbg !385, !tbaa !349
  br label %53, !dbg !387

; <label>:52:                                     ; preds = %50
  store i8 0, i8* %41, align 1, !dbg !388, !tbaa !389
  br label %53

; <label>:53:                                     ; preds = %52, %51
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %54 = bitcast i8* %17 to i8**, !dbg !390
  store i8* %17, i8** %54, align 8, !dbg !391, !tbaa !392
  %55 = getelementptr inbounds i8, i8* %17, i64 8, !dbg !393
  %56 = bitcast i8* %55 to i8***, !dbg !393
  store i8** %1, i8*** %56, align 8, !dbg !394, !tbaa !395
  %57 = getelementptr inbounds i8, i8* %17, i64 16, !dbg !396
  %58 = bitcast i8* %57 to i64**, !dbg !396
  store i64* %2, i64** %58, align 8, !dbg !397, !tbaa !398
  %59 = getelementptr inbounds i8, i8* %17, i64 24, !dbg !399
  %60 = bitcast i8* %59 to <2 x i64>*, !dbg !400
  store <2 x i64> zeroinitializer, <2 x i64>* %60, align 8, !dbg !400, !tbaa !353
  %61 = getelementptr inbounds i8, i8* %17, i64 48, !dbg !401
  %62 = bitcast i8* %61 to i32*, !dbg !402
  store i32 0, i32* %62, align 8, !dbg !403, !tbaa !389
  %63 = trunc i32 %3 to i8, !dbg !404
  %64 = getelementptr inbounds i8, i8* %17, i64 52, !dbg !405
  store i8 %63, i8* %64, align 4, !dbg !406, !tbaa !407
  %65 = bitcast i32* %7 to i8*, !dbg !408
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %65) #6, !dbg !408
  %66 = call i32 @pthread_setcancelstate(i32 1, i32* nonnull %7) #5, !dbg !408
  %67 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %14, i64 0, i32 4, !dbg !409
  store i16 -1, i16* %67, align 2, !dbg !410, !tbaa !411
  %68 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %14, i64 0, i32 3, !dbg !412
  store i16 8, i16* %68, align 8, !dbg !413, !tbaa !342
  %69 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %14, i64 0, i32 7, !dbg !414
  store i8* %17, i8** %69, align 8, !dbg !415, !tbaa !416
  %70 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %14, i64 0, i32 8, !dbg !417
  %71 = bitcast i64 (%struct._reent*, i8*, i8*, i32)** %70 to <2 x i64 (%struct._reent*, i8*, i8*, i32)*>*, !dbg !418
  store <2 x i64 (%struct._reent*, i8*, i8*, i32)*> <i64 (%struct._reent*, i8*, i8*, i32)* null, i64 (%struct._reent*, i8*, i8*, i32)* @memwriter>, <2 x i64 (%struct._reent*, i8*, i8*, i32)*>* %71, align 8, !dbg !418, !tbaa !374
  %72 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %14, i64 0, i32 10, !dbg !419
  store i64 (%struct._reent*, i8*, i64, i32)* @memseeker, i64 (%struct._reent*, i8*, i64, i32)** %72, align 8, !dbg !420, !tbaa !421
  %73 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %14, i64 0, i32 11, !dbg !422
  store i32 (%struct._reent*, i8*)* @memcloser, i32 (%struct._reent*, i8*)** %73, align 8, !dbg !423, !tbaa !424
  %74 = load i32, i32* %7, align 4, !dbg !425, !tbaa !349
  %75 = call i32 @pthread_setcancelstate(i32 %74, i32* nonnull %7) #5, !dbg !425
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %65) #6, !dbg !426
  br label %76, !dbg !427

; <label>:76:                                     ; preds = %13, %53, %44, %19, %11
  %77 = phi %struct.__sFILE* [ null, %19 ], [ %14, %53 ], [ null, %44 ], [ null, %11 ], [ null, %13 ], !dbg !428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !429
  ret %struct.__sFILE* %77, !dbg !429
}

; Function Attrs: noredzone nounwind
define dso_local %struct.__sFILE* @_open_wmemstream_r(%struct._reent*, i32**, i64*) local_unnamed_addr #0 !dbg !430 {
  %4 = bitcast i32** %1 to i8**, !dbg !438
  %5 = tail call fastcc %struct.__sFILE* @internal_open_memstream_r(%struct._reent* %0, i8** %4, i64* %2, i32 1) #4, !dbg !439
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !440
  ret %struct.__sFILE* %5, !dbg !440
}

; Function Attrs: noredzone nounwind
define dso_local %struct.__sFILE* @open_memstream(i8**, i64*) local_unnamed_addr #0 !dbg !441 {
  %3 = tail call %struct._reent* @__getreent() #5, !dbg !448
  %4 = tail call fastcc %struct.__sFILE* @internal_open_memstream_r(%struct._reent* %3, i8** %0, i64* %1, i32 -1) #5, !dbg !451
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !452
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !453
  ret %struct.__sFILE* %4, !dbg !453
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local %struct.__sFILE* @open_wmemstream(i32**, i64*) local_unnamed_addr #0 !dbg !454 {
  %3 = tail call %struct._reent* @__getreent() #5, !dbg !461
  %4 = bitcast i32** %0 to i8**, !dbg !464
  %5 = tail call fastcc %struct.__sFILE* @internal_open_memstream_r(%struct._reent* %3, i8** %4, i64* %1, i32 1) #5, !dbg !465
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !466
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !467
  ret %struct.__sFILE* %5, !dbg !467
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local %struct.__sFILE* @__sfp(%struct._reent*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @malloc(i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @pthread_setcancelstate(i32, i32*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @__sfp_lock_acquire() local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @__sfp_lock_release() local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define internal i64 @memwriter(%struct._reent* nocapture, i8* nocapture, i8*, i32) #0 !dbg !468 {
  %5 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !481
  %6 = bitcast i8* %5 to i8***, !dbg !481
  %7 = load i8**, i8*** %6, align 8, !dbg !481, !tbaa !395
  %8 = load i8*, i8** %7, align 8, !dbg !482, !tbaa !374
  %9 = getelementptr inbounds i8, i8* %1, i64 24, !dbg !484
  %10 = bitcast i8* %9 to i64*, !dbg !484
  %11 = load i64, i64* %10, align 8, !dbg !484, !tbaa !486
  %12 = sext i32 %3 to i64, !dbg !487
  %13 = add i64 %11, %12, !dbg !488
  %14 = icmp slt i64 %13, 0, !dbg !489
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !490
  br i1 %14, label %15, label %17, !dbg !490

; <label>:15:                                     ; preds = %4
  %16 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !491
  store i32 27, i32* %16, align 8, !dbg !493, !tbaa !320
  br label %83, !dbg !494

; <label>:17:                                     ; preds = %4
  %18 = getelementptr inbounds i8, i8* %1, i64 40, !dbg !495
  %19 = bitcast i8* %18 to i64*, !dbg !495
  %20 = load i64, i64* %19, align 8, !dbg !495, !tbaa !356
  %21 = icmp ult i64 %13, %20, !dbg !496
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !497
  br i1 %21, label %36, label %22, !dbg !497

; <label>:22:                                     ; preds = %17
  %23 = mul i64 %20, 3, !dbg !498
  %24 = lshr i64 %23, 1, !dbg !499
  %25 = add i64 %13, 1, !dbg !501
  %26 = icmp ult i64 %24, %25, !dbg !503
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !504
  br i1 %26, label %27, label %28, !dbg !504

; <label>:27:                                     ; preds = %22
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !505
  br label %28, !dbg !505

; <label>:28:                                     ; preds = %27, %22
  %29 = phi i64 [ %25, %27 ], [ %24, %22 ], !dbg !506
  %30 = tail call i8* @realloc(i8* %8, i64 %29) #5, !dbg !507
  %31 = icmp eq i8* %30, null, !dbg !508
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !510
  br i1 %31, label %32, label %33, !dbg !510

; <label>:32:                                     ; preds = %28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !511
  br label %83

; <label>:33:                                     ; preds = %28
  %34 = load i8**, i8*** %6, align 8, !dbg !512, !tbaa !395
  store i8* %30, i8** %34, align 8, !dbg !513, !tbaa !374
  store i64 %29, i64* %19, align 8, !dbg !514, !tbaa !356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !515
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %35 = load i64, i64* %10, align 8, !dbg !516, !tbaa !486
  br label %36

; <label>:36:                                     ; preds = %33, %17
  %37 = phi i64 [ %11, %17 ], [ %35, %33 ], !dbg !516
  %38 = phi i8* [ %8, %17 ], [ %30, %33 ], !dbg !518
  %39 = getelementptr inbounds i8, i8* %1, i64 32, !dbg !519
  %40 = bitcast i8* %39 to i64*, !dbg !519
  %41 = load i64, i64* %40, align 8, !dbg !519, !tbaa !520
  %42 = icmp ugt i64 %37, %41, !dbg !521
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !522
  br i1 %42, label %43, label %48, !dbg !522

; <label>:43:                                     ; preds = %36
  %44 = getelementptr inbounds i8, i8* %38, i64 %41, !dbg !523
  %45 = sub i64 %37, %41, !dbg !524
  %46 = tail call i8* @memset(i8* %44, i32 0, i64 %45) #5, !dbg !525
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !525
  %47 = load i64, i64* %10, align 8, !dbg !526, !tbaa !486
  br label %48, !dbg !525

; <label>:48:                                     ; preds = %43, %36
  %49 = phi i64 [ %47, %43 ], [ %37, %36 ], !dbg !526
  %50 = getelementptr inbounds i8, i8* %38, i64 %49, !dbg !527
  %51 = tail call i8* @memcpy(i8* %50, i8* %2, i64 %12) #5, !dbg !528
  %52 = load i64, i64* %10, align 8, !dbg !529, !tbaa !486
  %53 = add i64 %52, %12, !dbg !529
  store i64 %53, i64* %10, align 8, !dbg !529, !tbaa !486
  %54 = load i64, i64* %40, align 8, !dbg !530, !tbaa !520
  %55 = icmp ugt i64 %53, %54, !dbg !532
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !533
  br i1 %55, label %56, label %59, !dbg !533

; <label>:56:                                     ; preds = %48
  store i64 %53, i64* %40, align 8, !dbg !534, !tbaa !520
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !535
  %57 = getelementptr inbounds i8, i8* %38, i64 %53, !dbg !536
  %58 = getelementptr inbounds i8, i8* %1, i64 52, !dbg !537
  br label %72, !dbg !535

; <label>:59:                                     ; preds = %48
  %60 = getelementptr inbounds i8, i8* %1, i64 52, !dbg !538
  %61 = load i8, i8* %60, align 4, !dbg !538, !tbaa !407
  %62 = icmp sgt i8 %61, 0, !dbg !540
  %63 = getelementptr inbounds i8, i8* %38, i64 %53, !dbg !541
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !542
  br i1 %62, label %64, label %69, !dbg !542

; <label>:64:                                     ; preds = %59
  %65 = bitcast i8* %63 to i32*, !dbg !543
  %66 = load i32, i32* %65, align 4, !dbg !543, !tbaa !349
  %67 = getelementptr inbounds i8, i8* %1, i64 48, !dbg !544
  %68 = bitcast i8* %67 to i32*, !dbg !545
  store i32 %66, i32* %68, align 8, !dbg !546, !tbaa !389
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !547
  br label %72, !dbg !547

; <label>:69:                                     ; preds = %59
  %70 = load i8, i8* %63, align 1, !dbg !548, !tbaa !389
  %71 = getelementptr inbounds i8, i8* %1, i64 48, !dbg !549
  store i8 %70, i8* %71, align 8, !dbg !550, !tbaa !389
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %72

; <label>:72:                                     ; preds = %64, %69, %56
  %73 = phi i8* [ %60, %64 ], [ %60, %69 ], [ %58, %56 ], !dbg !537
  %74 = phi i8* [ %63, %64 ], [ %63, %69 ], [ %57, %56 ], !dbg !536
  store i8 0, i8* %74, align 1, !dbg !551, !tbaa !389
  %75 = load i8, i8* %73, align 4, !dbg !537, !tbaa !407
  %76 = icmp sgt i8 %75, 0, !dbg !552
  %77 = load i64, i64* %10, align 8, !dbg !518, !tbaa !486
  %78 = lshr i64 %77, 2, !dbg !553
  %79 = select i1 %76, i64 %78, i64 %77, !dbg !554
  %80 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !555
  %81 = bitcast i8* %80 to i64**, !dbg !555
  %82 = load i64*, i64** %81, align 8, !dbg !555, !tbaa !398
  store i64 %79, i64* %82, align 8, !dbg !556, !tbaa !353
  br label %83, !dbg !557

; <label>:83:                                     ; preds = %32, %72, %15
  %84 = phi i64 [ -1, %15 ], [ %12, %72 ], [ -1, %32 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !558
  ret i64 %84, !dbg !558
}

; Function Attrs: noredzone nounwind
define internal i64 @memseeker(%struct._reent* nocapture, i8* nocapture, i64, i32) #0 !dbg !559 {
  %5 = icmp eq i32 %3, 1, !dbg !569
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !571
  br i1 %5, label %8, label %6, !dbg !571

; <label>:6:                                      ; preds = %4
  %7 = icmp eq i32 %3, 2, !dbg !572
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !574
  br i1 %7, label %8, label %14, !dbg !574

; <label>:8:                                      ; preds = %6, %4
  %9 = phi i64 [ 24, %4 ], [ 32, %6 ]
  %10 = getelementptr inbounds i8, i8* %1, i64 %9, !dbg !575
  %11 = bitcast i8* %10 to i64*, !dbg !575
  %12 = load i64, i64* %11, align 8, !dbg !575, !tbaa !353
  %13 = add i64 %12, %2, !dbg !575
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !575
  br label %14, !dbg !576

; <label>:14:                                     ; preds = %8, %6
  %15 = phi i64 [ %2, %6 ], [ %13, %8 ], !dbg !578
  %16 = icmp slt i64 %15, 0, !dbg !576
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !579
  br i1 %16, label %17, label %19, !dbg !579

; <label>:17:                                     ; preds = %14
  %18 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !580
  store i32 22, i32* %18, align 8, !dbg !582, !tbaa !320
  br label %95, !dbg !583

; <label>:19:                                     ; preds = %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !584
  %20 = getelementptr inbounds i8, i8* %1, i64 24, !dbg !585
  %21 = bitcast i8* %20 to i64*, !dbg !585
  %22 = load i64, i64* %21, align 8, !dbg !585, !tbaa !486
  %23 = getelementptr inbounds i8, i8* %1, i64 32, !dbg !589
  %24 = bitcast i8* %23 to i64*, !dbg !589
  %25 = load i64, i64* %24, align 8, !dbg !589, !tbaa !520
  %26 = icmp ult i64 %22, %25, !dbg !590
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !591
  %27 = getelementptr inbounds i8, i8* %1, i64 52, !dbg !592
  br i1 %26, label %28, label %53, !dbg !591

; <label>:28:                                     ; preds = %19
  %29 = load i8, i8* %27, align 4, !dbg !595, !tbaa !407
  %30 = icmp sgt i8 %29, 0, !dbg !598
  %31 = getelementptr inbounds i8, i8* %1, i64 48, !dbg !599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !600
  br i1 %30, label %32, label %41, !dbg !600

; <label>:32:                                     ; preds = %28
  %33 = bitcast i8* %31 to i32*, !dbg !601
  %34 = load i32, i32* %33, align 8, !dbg !601, !tbaa !389
  %35 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !602
  %36 = bitcast i8* %35 to i8***, !dbg !602
  %37 = load i8**, i8*** %36, align 8, !dbg !602, !tbaa !395
  %38 = load i8*, i8** %37, align 8, !dbg !603, !tbaa !374
  %39 = getelementptr inbounds i8, i8* %38, i64 %22, !dbg !604
  %40 = bitcast i8* %39 to i32*, !dbg !605
  store i32 %34, i32* %40, align 4, !dbg !606, !tbaa !349
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !605
  br label %50, !dbg !605

; <label>:41:                                     ; preds = %28
  %42 = load i8, i8* %31, align 8, !dbg !607, !tbaa !389
  %43 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !608
  %44 = bitcast i8* %43 to i8***, !dbg !608
  %45 = load i8**, i8*** %44, align 8, !dbg !608, !tbaa !395
  %46 = load i8*, i8** %45, align 8, !dbg !609, !tbaa !374
  %47 = getelementptr inbounds i8, i8* %46, i64 %22, !dbg !610
  store i8 %42, i8* %47, align 1, !dbg !611, !tbaa !389
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %48 = load i64, i64* %24, align 8, !dbg !612, !tbaa !520
  %49 = bitcast i8* %31 to i32*, !dbg !613
  br label %50

; <label>:50:                                     ; preds = %41, %32
  %51 = phi i32* [ %49, %41 ], [ %33, %32 ], !dbg !613
  %52 = phi i64 [ %48, %41 ], [ %25, %32 ], !dbg !612
  store i32 0, i32* %51, align 8, !dbg !614, !tbaa !389
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !615
  br label %53, !dbg !615

; <label>:53:                                     ; preds = %19, %50
  %54 = phi i64 [ %52, %50 ], [ %25, %19 ], !dbg !612
  store i64 %15, i64* %21, align 8, !dbg !616, !tbaa !486
  %55 = icmp ult i64 %15, %54, !dbg !617
  %56 = load i8, i8* %27, align 4, !dbg !592, !tbaa !407
  %57 = icmp sgt i8 %56, 0, !dbg !592
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !618
  br i1 %55, label %58, label %85, !dbg !618

; <label>:58:                                     ; preds = %53
  %59 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !619
  %60 = bitcast i8* %59 to i8***, !dbg !619
  %61 = load i8**, i8*** %60, align 8, !dbg !619, !tbaa !395
  %62 = load i8*, i8** %61, align 8, !dbg !619, !tbaa !374
  %63 = getelementptr inbounds i8, i8* %62, i64 %15, !dbg !619
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !623
  br i1 %57, label %64, label %76, !dbg !623

; <label>:64:                                     ; preds = %58
  %65 = bitcast i8* %63 to i32*, !dbg !624
  %66 = load i32, i32* %65, align 4, !dbg !624, !tbaa !349
  %67 = getelementptr inbounds i8, i8* %1, i64 48, !dbg !626
  %68 = bitcast i8* %67 to i32*, !dbg !627
  store i32 %66, i32* %68, align 8, !dbg !628, !tbaa !389
  %69 = load i8*, i8** %61, align 8, !dbg !629, !tbaa !374
  %70 = getelementptr inbounds i8, i8* %69, i64 %15, !dbg !630
  %71 = bitcast i8* %70 to i32*, !dbg !631
  store i32 0, i32* %71, align 4, !dbg !632, !tbaa !349
  %72 = lshr i64 %15, 2, !dbg !633
  %73 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !634
  %74 = bitcast i8* %73 to i64**, !dbg !634
  %75 = load i64*, i64** %74, align 8, !dbg !634, !tbaa !398
  store i64 %72, i64* %75, align 8, !dbg !635, !tbaa !353
  br label %95, !dbg !636

; <label>:76:                                     ; preds = %58
  %77 = load i8, i8* %63, align 1, !dbg !637, !tbaa !389
  %78 = getelementptr inbounds i8, i8* %1, i64 48, !dbg !638
  store i8 %77, i8* %78, align 8, !dbg !639, !tbaa !389
  %79 = load i8*, i8** %61, align 8, !dbg !640, !tbaa !374
  %80 = getelementptr inbounds i8, i8* %79, i64 %15, !dbg !641
  store i8 0, i8* %80, align 1, !dbg !642, !tbaa !389
  %81 = load i64, i64* %21, align 8, !dbg !643, !tbaa !486
  %82 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !644
  %83 = bitcast i8* %82 to i64**, !dbg !644
  %84 = load i64*, i64** %83, align 8, !dbg !644, !tbaa !398
  store i64 %81, i64* %84, align 8, !dbg !645, !tbaa !353
  br label %95

; <label>:85:                                     ; preds = %53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !646
  br i1 %57, label %86, label %91, !dbg !646

; <label>:86:                                     ; preds = %85
  %87 = lshr i64 %54, 2, !dbg !647
  %88 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !648
  %89 = bitcast i8* %88 to i64**, !dbg !648
  %90 = load i64*, i64** %89, align 8, !dbg !648, !tbaa !398
  store i64 %87, i64* %90, align 8, !dbg !649, !tbaa !353
  br label %95, !dbg !650

; <label>:91:                                     ; preds = %85
  %92 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !651
  %93 = bitcast i8* %92 to i64**, !dbg !651
  %94 = load i64*, i64** %93, align 8, !dbg !651, !tbaa !398
  store i64 %54, i64* %94, align 8, !dbg !652, !tbaa !353
  br label %95

; <label>:95:                                     ; preds = %86, %91, %64, %76, %17
  %96 = phi i64 [ -1, %17 ], [ %15, %64 ], [ %15, %76 ], [ %15, %86 ], [ %15, %91 ], !dbg !575
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !653
  ret i64 %96, !dbg !653
}

; Function Attrs: noredzone nounwind
define internal i32 @memcloser(%struct._reent* nocapture readnone, i8* nocapture readonly) #0 !dbg !654 {
  %3 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !662
  %4 = bitcast i8* %3 to i8***, !dbg !662
  %5 = load i8**, i8*** %4, align 8, !dbg !662, !tbaa !395
  %6 = load i8*, i8** %5, align 8, !dbg !662, !tbaa !374
  %7 = getelementptr inbounds i8, i8* %1, i64 52, !dbg !662
  %8 = load i8, i8* %7, align 4, !dbg !662, !tbaa !407
  %9 = icmp sgt i8 %8, 0, !dbg !662
  %10 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !662
  %11 = bitcast i8* %10 to i64**, !dbg !662
  %12 = load i64*, i64** %11, align 8, !dbg !662, !tbaa !398
  %13 = load i64, i64* %12, align 8, !dbg !662, !tbaa !353
  %14 = add i64 %13, 1, !dbg !662
  %15 = shl i64 %14, 2, !dbg !662
  %16 = select i1 %9, i64 %15, i64 %14, !dbg !662
  %17 = tail call i8* @realloc(i8* %6, i64 %16) #5, !dbg !662
  %18 = icmp eq i8* %17, null, !dbg !664
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !666
  br i1 %18, label %21, label %19, !dbg !666

; <label>:19:                                     ; preds = %2
  %20 = load i8**, i8*** %4, align 8, !dbg !667, !tbaa !395
  store i8* %17, i8** %20, align 8, !dbg !668, !tbaa !374
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !669
  br label %21, !dbg !669

; <label>:21:                                     ; preds = %2, %19
  %22 = bitcast i8* %1 to i8**, !dbg !670
  %23 = load i8*, i8** %22, align 8, !dbg !670, !tbaa !392
  tail call void @free(i8* %23) #5, !dbg !670
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !671
  ret i32 0, !dbg !671
}

; Function Attrs: noredzone
declare dso_local i8* @realloc(i8*, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nobuiltin noredzone }
attributes #5 = { nobuiltin noredzone nounwind }
attributes #6 = { nounwind }

!llvm.module.flags = !{!65, !66, !67}
!llvm.ident = !{!68}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !21)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/open_memstream.c", directory: "/root/.unikraft/apps/redis/build")
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
!21 = !{!22, !25, !26, !55, !50, !57, !56, !61, !34, !64}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "memstream", file: !1, line: 91, baseType: !28)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "memstream", file: !1, line: 79, size: 448, elements: !29)
!29 = !{!30, !31, !32, !39, !40, !41, !42, !49}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "storage", scope: !28, file: !1, line: 80, baseType: !25, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "pbuf", scope: !28, file: !1, line: 81, baseType: !22, size: 64, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "psize", scope: !28, file: !1, line: 82, baseType: !33, size: 64, offset: 128)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !35, line: 40, baseType: !36)
!35 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !37, line: 129, baseType: !38)
!37 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!38 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !28, file: !1, line: 83, baseType: !34, size: 64, offset: 192)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "eof", scope: !28, file: !1, line: 84, baseType: !34, size: 64, offset: 256)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !28, file: !1, line: 85, baseType: !34, size: 64, offset: 320)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "saved", scope: !28, file: !1, line: 89, baseType: !43, size: 32, offset: 384)
!43 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !28, file: !1, line: 86, size: 32, elements: !44)
!44 = !{!45, !46}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !43, file: !1, line: 87, baseType: !24, size: 8)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "w", scope: !43, file: !1, line: 88, baseType: !47, size: 32)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !48, line: 83, baseType: !5)
!48 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!49 = !DIDerivedType(tag: DW_TAG_member, name: "wide", scope: !28, file: !1, line: 90, baseType: !50, size: 8, offset: 416)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !51, line: 20, baseType: !52)
!51 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !53, line: 41, baseType: !54)
!53 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!54 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !58, line: 200, baseType: !59)
!58 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !37, line: 145, baseType: !60)
!60 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !58, line: 173, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !37, line: 100, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !37, line: 44, baseType: !60)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !37, line: 114, baseType: !60)
!65 = !{i32 2, !"Dwarf Version", i32 4}
!66 = !{i32 2, !"Debug Info Version", i32 3}
!67 = !{i32 1, !"wchar_size", i32 4}
!68 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!69 = distinct !DISubprogram(name: "_open_memstream_r", scope: !1, file: !1, line: 381, type: !70, isLocal: false, isDefinition: true, scopeLine: 385, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !285)
!70 = !DISubroutineType(types: !71)
!71 = !{!72, !98, !22, !33}
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !74, line: 66, baseType: !75)
!74 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !76, line: 287, baseType: !77)
!76 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !76, line: 181, size: 1408, elements: !78)
!78 = !{!79, !82, !83, !84, !86, !87, !92, !93, !94, !254, !260, !264, !268, !269, !270, !271, !273, !275, !276, !277, !278, !279, !283, !284}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !77, file: !76, line: 182, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !77, file: !76, line: 183, baseType: !5, size: 32, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !77, file: !76, line: 184, baseType: !5, size: 32, offset: 96)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !77, file: !76, line: 185, baseType: !85, size: 16, offset: 128)
!85 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !77, file: !76, line: 186, baseType: !85, size: 16, offset: 144)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !77, file: !76, line: 187, baseType: !88, size: 128, offset: 192)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !76, line: 117, size: 128, elements: !89)
!89 = !{!90, !91}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !88, file: !76, line: 118, baseType: !80, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !88, file: !76, line: 119, baseType: !5, size: 32, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !77, file: !76, line: 188, baseType: !5, size: 32, offset: 320)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !77, file: !76, line: 195, baseType: !25, size: 64, offset: 384)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !77, file: !76, line: 197, baseType: !95, size: 64, offset: 448)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DISubroutineType(types: !97)
!97 = !{!59, !98, !25, !23, !5}
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !76, line: 569, size: 14912, elements: !100)
!100 = !{!101, !102, !104, !105, !106, !107, !111, !112, !115, !116, !120, !135, !136, !137, !139, !140, !141, !218, !239, !240, !245, !252}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !99, file: !76, line: 571, baseType: !5, size: 32)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !99, file: !76, line: 576, baseType: !103, size: 64, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !99, file: !76, line: 576, baseType: !103, size: 64, offset: 128)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !99, file: !76, line: 576, baseType: !103, size: 64, offset: 192)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !99, file: !76, line: 578, baseType: !5, size: 32, offset: 256)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !99, file: !76, line: 579, baseType: !108, size: 200, offset: 288)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 200, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 25)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !99, file: !76, line: 582, baseType: !5, size: 32, offset: 512)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !99, file: !76, line: 583, baseType: !113, size: 64, offset: 576)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !76, line: 40, flags: DIFlagFwdDecl)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !99, file: !76, line: 585, baseType: !5, size: 32, offset: 640)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !99, file: !76, line: 587, baseType: !117, size: 64, offset: 704)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DISubroutineType(types: !119)
!119 = !{null, !98}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !99, file: !76, line: 590, baseType: !121, size: 64, offset: 768)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !76, line: 47, size: 256, elements: !123)
!123 = !{!124, !125, !126, !127, !128, !129}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !122, file: !76, line: 49, baseType: !121, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !122, file: !76, line: 50, baseType: !5, size: 32, offset: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !122, file: !76, line: 50, baseType: !5, size: 32, offset: 96)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !122, file: !76, line: 50, baseType: !5, size: 32, offset: 128)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !122, file: !76, line: 50, baseType: !5, size: 32, offset: 160)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !122, file: !76, line: 51, baseType: !130, size: 32, offset: 192)
!130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 32, elements: !133)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !76, line: 25, baseType: !132)
!132 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!133 = !{!134}
!134 = !DISubrange(count: 1)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !99, file: !76, line: 591, baseType: !5, size: 32, offset: 832)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !99, file: !76, line: 592, baseType: !121, size: 64, offset: 896)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !99, file: !76, line: 593, baseType: !138, size: 64, offset: 960)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !99, file: !76, line: 596, baseType: !5, size: 32, offset: 1024)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !99, file: !76, line: 597, baseType: !23, size: 64, offset: 1088)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !99, file: !76, line: 632, baseType: !142, size: 2880, offset: 1152)
!142 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !99, file: !76, line: 599, size: 2880, elements: !143)
!143 = !{!144, !209}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !142, file: !76, line: 622, baseType: !145, size: 1728)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !142, file: !76, line: 601, size: 1728, elements: !146)
!146 = !{!147, !148, !149, !153, !165, !166, !168, !178, !192, !193, !194, !198, !202, !203, !204, !205, !206, !207, !208}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !145, file: !76, line: 603, baseType: !132, size: 32)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !145, file: !76, line: 604, baseType: !23, size: 64, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !145, file: !76, line: 605, baseType: !150, size: 208, offset: 128)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 208, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 26)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !145, file: !76, line: 606, baseType: !154, size: 288, offset: 352)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !76, line: 55, size: 288, elements: !155)
!155 = !{!156, !157, !158, !159, !160, !161, !162, !163, !164}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !154, file: !76, line: 57, baseType: !5, size: 32)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !154, file: !76, line: 58, baseType: !5, size: 32, offset: 32)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !154, file: !76, line: 59, baseType: !5, size: 32, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !154, file: !76, line: 60, baseType: !5, size: 32, offset: 96)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !154, file: !76, line: 61, baseType: !5, size: 32, offset: 128)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !154, file: !76, line: 62, baseType: !5, size: 32, offset: 160)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !154, file: !76, line: 63, baseType: !5, size: 32, offset: 192)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !154, file: !76, line: 64, baseType: !5, size: 32, offset: 224)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !154, file: !76, line: 65, baseType: !5, size: 32, offset: 256)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !145, file: !76, line: 607, baseType: !5, size: 32, offset: 640)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !145, file: !76, line: 608, baseType: !167, size: 64, offset: 704)
!167 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !145, file: !76, line: 609, baseType: !169, size: 112, offset: 768)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !76, line: 319, size: 112, elements: !170)
!170 = !{!171, !176, !177}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !169, file: !76, line: 320, baseType: !172, size: 48)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 48, elements: !174)
!173 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!174 = !{!175}
!175 = !DISubrange(count: 3)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !169, file: !76, line: 321, baseType: !172, size: 48, offset: 48)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !169, file: !76, line: 322, baseType: !173, size: 16, offset: 96)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !145, file: !76, line: 610, baseType: !179, size: 64, offset: 896)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !37, line: 171, baseType: !180)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !37, line: 163, size: 64, elements: !181)
!181 = !{!182, !183}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !180, file: !37, line: 165, baseType: !5, size: 32)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !180, file: !37, line: 170, baseType: !184, size: 32, offset: 32)
!184 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !180, file: !37, line: 166, size: 32, elements: !185)
!185 = !{!186, !188}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !184, file: !37, line: 168, baseType: !187, size: 32)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !48, line: 124, baseType: !132)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !184, file: !37, line: 169, baseType: !189, size: 32)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 32, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 4)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !145, file: !76, line: 611, baseType: !179, size: 64, offset: 960)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !145, file: !76, line: 612, baseType: !179, size: 64, offset: 1024)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !145, file: !76, line: 613, baseType: !195, size: 64, offset: 1088)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 64, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 8)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !145, file: !76, line: 614, baseType: !199, size: 192, offset: 1152)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 192, elements: !200)
!200 = !{!201}
!201 = !DISubrange(count: 24)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !145, file: !76, line: 615, baseType: !5, size: 32, offset: 1344)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !145, file: !76, line: 616, baseType: !179, size: 64, offset: 1376)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !145, file: !76, line: 617, baseType: !179, size: 64, offset: 1440)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !145, file: !76, line: 618, baseType: !179, size: 64, offset: 1504)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !145, file: !76, line: 619, baseType: !179, size: 64, offset: 1568)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !145, file: !76, line: 620, baseType: !179, size: 64, offset: 1632)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !145, file: !76, line: 621, baseType: !5, size: 32, offset: 1696)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !142, file: !76, line: 631, baseType: !210, size: 2880)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !142, file: !76, line: 626, size: 2880, elements: !211)
!211 = !{!212, !216}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !210, file: !76, line: 629, baseType: !213, size: 1920)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 1920, elements: !214)
!214 = !{!215}
!215 = !DISubrange(count: 30)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !210, file: !76, line: 630, baseType: !217, size: 960, offset: 1920)
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 960, elements: !214)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !99, file: !76, line: 636, baseType: !219, size: 64, offset: 4032)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !76, line: 93, size: 6336, elements: !221)
!221 = !{!222, !223, !224, !231}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !220, file: !76, line: 94, baseType: !219, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !220, file: !76, line: 95, baseType: !5, size: 32, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !220, file: !76, line: 97, baseType: !225, size: 2048, offset: 128)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 2048, elements: !229)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{null}
!229 = !{!230}
!230 = !DISubrange(count: 32)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !220, file: !76, line: 98, baseType: !232, size: 4160, offset: 2176)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !76, line: 74, size: 4160, elements: !233)
!233 = !{!234, !236, !237, !238}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !232, file: !76, line: 75, baseType: !235, size: 2048)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 2048, elements: !229)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !232, file: !76, line: 76, baseType: !235, size: 2048, offset: 2048)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !232, file: !76, line: 78, baseType: !131, size: 32, offset: 4096)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !232, file: !76, line: 81, baseType: !131, size: 32, offset: 4128)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !99, file: !76, line: 637, baseType: !220, size: 6336, offset: 4096)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !99, file: !76, line: 641, baseType: !241, size: 64, offset: 10432)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DISubroutineType(types: !244)
!244 = !{null, !5}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !99, file: !76, line: 646, baseType: !246, size: 192, offset: 10496)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !76, line: 291, size: 192, elements: !247)
!247 = !{!248, !250, !251}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !246, file: !76, line: 293, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !246, file: !76, line: 294, baseType: !5, size: 32, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !246, file: !76, line: 295, baseType: !103, size: 64, offset: 128)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !99, file: !76, line: 648, baseType: !253, size: 4224, offset: 10688)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 4224, elements: !174)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !77, file: !76, line: 199, baseType: !255, size: 64, offset: 512)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DISubroutineType(types: !257)
!257 = !{!59, !98, !25, !258, !5}
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !77, file: !76, line: 202, baseType: !261, size: 64, offset: 576)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DISubroutineType(types: !263)
!263 = !{!64, !98, !25, !64, !5}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !77, file: !76, line: 203, baseType: !265, size: 64, offset: 640)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{!5, !98, !25}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !77, file: !76, line: 206, baseType: !88, size: 128, offset: 704)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !77, file: !76, line: 207, baseType: !80, size: 64, offset: 832)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !77, file: !76, line: 208, baseType: !5, size: 32, offset: 896)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !77, file: !76, line: 211, baseType: !272, size: 24, offset: 928)
!272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 24, elements: !174)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !77, file: !76, line: 212, baseType: !274, size: 8, offset: 952)
!274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 8, elements: !133)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !77, file: !76, line: 215, baseType: !88, size: 128, offset: 960)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !77, file: !76, line: 218, baseType: !5, size: 32, offset: 1088)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !77, file: !76, line: 219, baseType: !63, size: 64, offset: 1152)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !77, file: !76, line: 222, baseType: !98, size: 64, offset: 1216)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !77, file: !76, line: 226, baseType: !280, size: 32, offset: 1280)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !37, line: 175, baseType: !281)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !282, line: 12, baseType: !5)
!282 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !77, file: !76, line: 228, baseType: !179, size: 64, offset: 1312)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !77, file: !76, line: 229, baseType: !5, size: 32, offset: 1376)
!285 = !{!286, !287, !288}
!286 = !DILocalVariable(name: "ptr", arg: 1, scope: !69, file: !1, line: 381, type: !98)
!287 = !DILocalVariable(name: "buf", arg: 2, scope: !69, file: !1, line: 381, type: !22)
!288 = !DILocalVariable(name: "size", arg: 3, scope: !69, file: !1, line: 381, type: !33)
!289 = !DILocation(line: 381, column: 1, scope: !69)
!290 = !DILocation(line: 386, column: 10, scope: !69)
!291 = !DILocation(line: 386, column: 3, scope: !69)
!292 = distinct !DISubprogram(name: "internal_open_memstream_r", scope: !1, file: !1, line: 298, type: !293, isLocal: true, isDefinition: true, scopeLine: 303, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !295)
!293 = !DISubroutineType(types: !294)
!294 = !{!72, !98, !22, !33, !5}
!295 = !{!296, !297, !298, !299, !300, !301, !302, !306, !310}
!296 = !DILocalVariable(name: "ptr", arg: 1, scope: !292, file: !1, line: 298, type: !98)
!297 = !DILocalVariable(name: "buf", arg: 2, scope: !292, file: !1, line: 298, type: !22)
!298 = !DILocalVariable(name: "size", arg: 3, scope: !292, file: !1, line: 298, type: !33)
!299 = !DILocalVariable(name: "wide", arg: 4, scope: !292, file: !1, line: 298, type: !5)
!300 = !DILocalVariable(name: "fp", scope: !292, file: !1, line: 304, type: !72)
!301 = !DILocalVariable(name: "c", scope: !292, file: !1, line: 305, type: !26)
!302 = !DILocalVariable(name: "__oldsfpcancel", scope: !303, file: !1, line: 316, type: !5)
!303 = distinct !DILexicalBlock(scope: !304, file: !1, line: 316, column: 7)
!304 = distinct !DILexicalBlock(scope: !305, file: !1, line: 315, column: 5)
!305 = distinct !DILexicalBlock(scope: !292, file: !1, line: 314, column: 7)
!306 = !DILocalVariable(name: "__oldsfpcancel", scope: !307, file: !1, line: 341, type: !5)
!307 = distinct !DILexicalBlock(scope: !308, file: !1, line: 341, column: 7)
!308 = distinct !DILexicalBlock(scope: !309, file: !1, line: 340, column: 5)
!309 = distinct !DILexicalBlock(scope: !292, file: !1, line: 339, column: 7)
!310 = !DILocalVariable(name: "__oldfpcancel", scope: !311, file: !1, line: 363, type: !5)
!311 = distinct !DILexicalBlock(scope: !292, file: !1, line: 363, column: 3)
!312 = !DILocation(line: 298, column: 1, scope: !292)
!313 = !DILocation(line: 307, column: 8, scope: !314)
!314 = distinct !DILexicalBlock(scope: !292, file: !1, line: 307, column: 7)
!315 = !DILocation(line: 307, column: 16, scope: !314)
!316 = !DILocation(line: 307, column: 12, scope: !314)
!317 = !DILocation(line: 309, column: 12, scope: !318)
!318 = distinct !DILexicalBlock(scope: !314, file: !1, line: 308, column: 5)
!319 = !DILocation(line: 309, column: 19, scope: !318)
!320 = !{!321, !322, i64 0}
!321 = !{!"_reent", !322, i64 0, !325, i64 8, !325, i64 16, !325, i64 24, !322, i64 32, !323, i64 36, !322, i64 64, !325, i64 72, !322, i64 80, !325, i64 88, !325, i64 96, !322, i64 104, !325, i64 112, !325, i64 120, !322, i64 128, !325, i64 136, !323, i64 144, !325, i64 504, !326, i64 512, !325, i64 1304, !328, i64 1312, !323, i64 1336}
!322 = !{!"int", !323, i64 0}
!323 = !{!"omnipotent char", !324, i64 0}
!324 = !{!"Simple C/C++ TBAA"}
!325 = !{!"any pointer", !323, i64 0}
!326 = !{!"_atexit", !325, i64 0, !322, i64 8, !323, i64 16, !327, i64 272}
!327 = !{!"_on_exit_args", !323, i64 0, !323, i64 256, !322, i64 512, !322, i64 516}
!328 = !{!"_glue", !325, i64 0, !322, i64 8, !325, i64 16}
!329 = !DILocation(line: 310, column: 7, scope: !318)
!330 = !DILocation(line: 312, column: 13, scope: !331)
!331 = distinct !DILexicalBlock(scope: !292, file: !1, line: 312, column: 7)
!332 = !DILocation(line: 304, column: 9, scope: !292)
!333 = !DILocation(line: 312, column: 26, scope: !331)
!334 = !DILocation(line: 312, column: 7, scope: !292)
!335 = !DILocation(line: 314, column: 26, scope: !305)
!336 = !DILocation(line: 305, column: 14, scope: !292)
!337 = !DILocation(line: 314, column: 54, scope: !305)
!338 = !DILocation(line: 314, column: 7, scope: !292)
!339 = !DILocation(line: 316, column: 7, scope: !303)
!340 = !DILocation(line: 317, column: 11, scope: !303)
!341 = !DILocation(line: 317, column: 18, scope: !303)
!342 = !{!343, !344, i64 16}
!343 = !{!"__sFILE", !325, i64 0, !322, i64 8, !322, i64 12, !344, i64 16, !344, i64 18, !345, i64 24, !322, i64 40, !325, i64 48, !325, i64 56, !325, i64 64, !325, i64 72, !325, i64 80, !345, i64 88, !325, i64 104, !322, i64 112, !323, i64 116, !323, i64 119, !345, i64 120, !322, i64 136, !346, i64 144, !325, i64 152, !322, i64 160, !347, i64 164, !322, i64 172}
!344 = !{!"short", !323, i64 0}
!345 = !{!"__sbuf", !325, i64 0, !322, i64 8}
!346 = !{!"long", !323, i64 0}
!347 = !{!"", !322, i64 0, !323, i64 4}
!348 = !DILocation(line: 321, column: 7, scope: !303)
!349 = !{!322, !322, i64 0}
!350 = !DILocation(line: 321, column: 7, scope: !304)
!351 = !DILocation(line: 322, column: 7, scope: !304)
!352 = !DILocation(line: 328, column: 12, scope: !292)
!353 = !{!346, !346, i64 0}
!354 = !DILocation(line: 328, column: 6, scope: !292)
!355 = !DILocation(line: 328, column: 10, scope: !292)
!356 = !{!357, !346, i64 40}
!357 = !{!"memstream", !325, i64 0, !325, i64 8, !325, i64 16, !346, i64 24, !346, i64 32, !346, i64 40, !323, i64 48, !323, i64 52}
!358 = !DILocation(line: 329, column: 12, scope: !359)
!359 = distinct !DILexicalBlock(scope: !292, file: !1, line: 329, column: 7)
!360 = !DILocation(line: 329, column: 7, scope: !292)
!361 = !DILocation(line: 330, column: 12, scope: !359)
!362 = !DILocation(line: 330, column: 5, scope: !359)
!363 = !DILocation(line: 331, column: 10, scope: !364)
!364 = distinct !DILexicalBlock(scope: !292, file: !1, line: 331, column: 7)
!365 = !DILocation(line: 331, column: 14, scope: !364)
!366 = !DILocation(line: 331, column: 7, scope: !292)
!367 = !DILocation(line: 334, column: 19, scope: !368)
!368 = distinct !DILexicalBlock(scope: !364, file: !1, line: 334, column: 12)
!369 = !DILocation(line: 334, column: 12, scope: !364)
!370 = !DILocation(line: 0, scope: !364)
!371 = !DILocation(line: 337, column: 9, scope: !292)
!372 = !DILocation(line: 338, column: 10, scope: !292)
!373 = !DILocation(line: 338, column: 8, scope: !292)
!374 = !{!325, !325, i64 0}
!375 = !DILocation(line: 339, column: 8, scope: !309)
!376 = !DILocation(line: 339, column: 7, scope: !292)
!377 = !DILocation(line: 341, column: 7, scope: !307)
!378 = !DILocation(line: 342, column: 11, scope: !307)
!379 = !DILocation(line: 342, column: 18, scope: !307)
!380 = !DILocation(line: 346, column: 7, scope: !307)
!381 = !DILocation(line: 346, column: 7, scope: !308)
!382 = !DILocation(line: 347, column: 7, scope: !308)
!383 = !DILocation(line: 348, column: 7, scope: !308)
!384 = !DILocation(line: 350, column: 7, scope: !292)
!385 = !DILocation(line: 351, column: 25, scope: !386)
!386 = distinct !DILexicalBlock(scope: !292, file: !1, line: 350, column: 7)
!387 = !DILocation(line: 351, column: 5, scope: !386)
!388 = !DILocation(line: 353, column: 11, scope: !386)
!389 = !{!323, !323, i64 0}
!390 = !DILocation(line: 355, column: 6, scope: !292)
!391 = !DILocation(line: 355, column: 14, scope: !292)
!392 = !{!357, !325, i64 0}
!393 = !DILocation(line: 356, column: 6, scope: !292)
!394 = !DILocation(line: 356, column: 11, scope: !292)
!395 = !{!357, !325, i64 8}
!396 = !DILocation(line: 357, column: 6, scope: !292)
!397 = !DILocation(line: 357, column: 12, scope: !292)
!398 = !{!357, !325, i64 16}
!399 = !DILocation(line: 358, column: 6, scope: !292)
!400 = !DILocation(line: 358, column: 10, scope: !292)
!401 = !DILocation(line: 360, column: 6, scope: !292)
!402 = !DILocation(line: 360, column: 12, scope: !292)
!403 = !DILocation(line: 360, column: 14, scope: !292)
!404 = !DILocation(line: 361, column: 13, scope: !292)
!405 = !DILocation(line: 361, column: 6, scope: !292)
!406 = !DILocation(line: 361, column: 11, scope: !292)
!407 = !{!357, !323, i64 52}
!408 = !DILocation(line: 363, column: 3, scope: !311)
!409 = !DILocation(line: 364, column: 7, scope: !311)
!410 = !DILocation(line: 364, column: 13, scope: !311)
!411 = !{!343, !344, i64 18}
!412 = !DILocation(line: 365, column: 7, scope: !311)
!413 = !DILocation(line: 365, column: 14, scope: !311)
!414 = !DILocation(line: 366, column: 7, scope: !311)
!415 = !DILocation(line: 366, column: 15, scope: !311)
!416 = !{!343, !325, i64 48}
!417 = !DILocation(line: 367, column: 7, scope: !311)
!418 = !DILocation(line: 367, column: 13, scope: !311)
!419 = !DILocation(line: 369, column: 7, scope: !311)
!420 = !DILocation(line: 369, column: 13, scope: !311)
!421 = !{!343, !325, i64 72}
!422 = !DILocation(line: 374, column: 7, scope: !311)
!423 = !DILocation(line: 374, column: 14, scope: !311)
!424 = !{!343, !325, i64 80}
!425 = !DILocation(line: 376, column: 3, scope: !311)
!426 = !DILocation(line: 376, column: 3, scope: !292)
!427 = !DILocation(line: 377, column: 3, scope: !292)
!428 = !DILocation(line: 0, scope: !318)
!429 = !DILocation(line: 378, column: 1, scope: !292)
!430 = distinct !DISubprogram(name: "_open_wmemstream_r", scope: !1, file: !1, line: 390, type: !431, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !433)
!431 = !DISubroutineType(types: !432)
!432 = !{!103, !98, !55, !33}
!433 = !{!434, !435, !436}
!434 = !DILocalVariable(name: "ptr", arg: 1, scope: !430, file: !1, line: 390, type: !98)
!435 = !DILocalVariable(name: "buf", arg: 2, scope: !430, file: !1, line: 390, type: !55)
!436 = !DILocalVariable(name: "size", arg: 3, scope: !430, file: !1, line: 390, type: !33)
!437 = !DILocation(line: 390, column: 1, scope: !430)
!438 = !DILocation(line: 395, column: 42, scope: !430)
!439 = !DILocation(line: 395, column: 10, scope: !430)
!440 = !DILocation(line: 395, column: 3, scope: !430)
!441 = distinct !DISubprogram(name: "open_memstream", scope: !1, file: !1, line: 400, type: !442, isLocal: false, isDefinition: true, scopeLine: 403, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !444)
!442 = !DISubroutineType(types: !443)
!443 = !{!72, !22, !33}
!444 = !{!445, !446}
!445 = !DILocalVariable(name: "buf", arg: 1, scope: !441, file: !1, line: 400, type: !22)
!446 = !DILocalVariable(name: "size", arg: 2, scope: !441, file: !1, line: 400, type: !33)
!447 = !DILocation(line: 400, column: 1, scope: !441)
!448 = !DILocation(line: 404, column: 29, scope: !441)
!449 = !DILocation(line: 381, column: 1, scope: !69, inlinedAt: !450)
!450 = distinct !DILocation(line: 404, column: 10, scope: !441)
!451 = !DILocation(line: 386, column: 10, scope: !69, inlinedAt: !450)
!452 = !DILocation(line: 386, column: 3, scope: !69, inlinedAt: !450)
!453 = !DILocation(line: 404, column: 3, scope: !441)
!454 = distinct !DISubprogram(name: "open_wmemstream", scope: !1, file: !1, line: 408, type: !455, isLocal: false, isDefinition: true, scopeLine: 411, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !457)
!455 = !DISubroutineType(types: !456)
!456 = !{!103, !55, !33}
!457 = !{!458, !459}
!458 = !DILocalVariable(name: "buf", arg: 1, scope: !454, file: !1, line: 408, type: !55)
!459 = !DILocalVariable(name: "size", arg: 2, scope: !454, file: !1, line: 408, type: !33)
!460 = !DILocation(line: 408, column: 1, scope: !454)
!461 = !DILocation(line: 412, column: 30, scope: !454)
!462 = !DILocation(line: 390, column: 1, scope: !430, inlinedAt: !463)
!463 = distinct !DILocation(line: 412, column: 10, scope: !454)
!464 = !DILocation(line: 395, column: 42, scope: !430, inlinedAt: !463)
!465 = !DILocation(line: 395, column: 10, scope: !430, inlinedAt: !463)
!466 = !DILocation(line: 395, column: 3, scope: !430, inlinedAt: !463)
!467 = !DILocation(line: 412, column: 3, scope: !454)
!468 = distinct !DISubprogram(name: "memwriter", scope: !1, file: !1, line: 96, type: !256, isLocal: true, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !469)
!469 = !{!470, !471, !472, !473, !474, !475, !476}
!470 = !DILocalVariable(name: "ptr", arg: 1, scope: !468, file: !1, line: 96, type: !98)
!471 = !DILocalVariable(name: "cookie", arg: 2, scope: !468, file: !1, line: 96, type: !25)
!472 = !DILocalVariable(name: "buf", arg: 3, scope: !468, file: !1, line: 96, type: !258)
!473 = !DILocalVariable(name: "n", arg: 4, scope: !468, file: !1, line: 96, type: !5)
!474 = !DILocalVariable(name: "c", scope: !468, file: !1, line: 102, type: !26)
!475 = !DILocalVariable(name: "cbuf", scope: !468, file: !1, line: 103, type: !23)
!476 = !DILocalVariable(name: "newsize", scope: !477, file: !1, line: 119, type: !34)
!477 = distinct !DILexicalBlock(scope: !478, file: !1, line: 118, column: 5)
!478 = distinct !DILexicalBlock(scope: !468, file: !1, line: 117, column: 7)
!479 = !DILocation(line: 96, column: 1, scope: !468)
!480 = !DILocation(line: 102, column: 14, scope: !468)
!481 = !DILocation(line: 103, column: 20, scope: !468)
!482 = !DILocation(line: 103, column: 16, scope: !468)
!483 = !DILocation(line: 103, column: 9, scope: !468)
!484 = !DILocation(line: 107, column: 58, scope: !485)
!485 = distinct !DILexicalBlock(scope: !468, file: !1, line: 107, column: 7)
!486 = !{!357, !346, i64 24}
!487 = !DILocation(line: 107, column: 64, scope: !485)
!488 = !DILocation(line: 107, column: 62, scope: !485)
!489 = !DILocation(line: 107, column: 67, scope: !485)
!490 = !DILocation(line: 107, column: 7, scope: !468)
!491 = !DILocation(line: 109, column: 12, scope: !492)
!492 = distinct !DILexicalBlock(scope: !485, file: !1, line: 108, column: 5)
!493 = !DILocation(line: 109, column: 19, scope: !492)
!494 = !DILocation(line: 110, column: 7, scope: !492)
!495 = !DILocation(line: 117, column: 24, scope: !478)
!496 = !DILocation(line: 117, column: 18, scope: !478)
!497 = !DILocation(line: 117, column: 7, scope: !468)
!498 = !DILocation(line: 119, column: 31, scope: !477)
!499 = !DILocation(line: 119, column: 35, scope: !477)
!500 = !DILocation(line: 119, column: 14, scope: !477)
!501 = !DILocation(line: 120, column: 32, scope: !502)
!502 = distinct !DILexicalBlock(scope: !477, file: !1, line: 120, column: 11)
!503 = !DILocation(line: 120, column: 19, scope: !502)
!504 = !DILocation(line: 120, column: 11, scope: !477)
!505 = !DILocation(line: 121, column: 2, scope: !502)
!506 = !DILocation(line: 0, scope: !477)
!507 = !DILocation(line: 122, column: 14, scope: !477)
!508 = !DILocation(line: 123, column: 13, scope: !509)
!509 = distinct !DILexicalBlock(scope: !477, file: !1, line: 123, column: 11)
!510 = !DILocation(line: 123, column: 11, scope: !477)
!511 = !DILocation(line: 124, column: 2, scope: !509)
!512 = !DILocation(line: 125, column: 11, scope: !477)
!513 = !DILocation(line: 125, column: 16, scope: !477)
!514 = !DILocation(line: 126, column: 14, scope: !477)
!515 = !DILocation(line: 127, column: 5, scope: !478)
!516 = !DILocation(line: 130, column: 10, scope: !517)
!517 = distinct !DILexicalBlock(scope: !468, file: !1, line: 130, column: 7)
!518 = !DILocation(line: 0, scope: !468)
!519 = !DILocation(line: 130, column: 19, scope: !517)
!520 = !{!357, !346, i64 32}
!521 = !DILocation(line: 130, column: 14, scope: !517)
!522 = !DILocation(line: 130, column: 7, scope: !468)
!523 = !DILocation(line: 131, column: 18, scope: !517)
!524 = !DILocation(line: 131, column: 41, scope: !517)
!525 = !DILocation(line: 131, column: 5, scope: !517)
!526 = !DILocation(line: 132, column: 21, scope: !468)
!527 = !DILocation(line: 132, column: 16, scope: !468)
!528 = !DILocation(line: 132, column: 3, scope: !468)
!529 = !DILocation(line: 133, column: 10, scope: !468)
!530 = !DILocation(line: 136, column: 19, scope: !531)
!531 = distinct !DILexicalBlock(scope: !468, file: !1, line: 136, column: 7)
!532 = !DILocation(line: 136, column: 14, scope: !531)
!533 = !DILocation(line: 136, column: 7, scope: !468)
!534 = !DILocation(line: 137, column: 12, scope: !531)
!535 = !DILocation(line: 137, column: 5, scope: !531)
!536 = !DILocation(line: 142, column: 3, scope: !468)
!537 = !DILocation(line: 143, column: 19, scope: !468)
!538 = !DILocation(line: 138, column: 15, scope: !539)
!539 = distinct !DILexicalBlock(scope: !531, file: !1, line: 138, column: 12)
!540 = !DILocation(line: 138, column: 20, scope: !539)
!541 = !DILocation(line: 0, scope: !539)
!542 = !DILocation(line: 138, column: 12, scope: !531)
!543 = !DILocation(line: 139, column: 18, scope: !539)
!544 = !DILocation(line: 139, column: 8, scope: !539)
!545 = !DILocation(line: 139, column: 14, scope: !539)
!546 = !DILocation(line: 139, column: 16, scope: !539)
!547 = !DILocation(line: 139, column: 5, scope: !539)
!548 = !DILocation(line: 141, column: 18, scope: !539)
!549 = !DILocation(line: 141, column: 8, scope: !539)
!550 = !DILocation(line: 141, column: 16, scope: !539)
!551 = !DILocation(line: 142, column: 16, scope: !468)
!552 = !DILocation(line: 143, column: 24, scope: !468)
!553 = !DILocation(line: 143, column: 38, scope: !468)
!554 = !DILocation(line: 143, column: 15, scope: !468)
!555 = !DILocation(line: 143, column: 7, scope: !468)
!556 = !DILocation(line: 143, column: 13, scope: !468)
!557 = !DILocation(line: 144, column: 3, scope: !468)
!558 = !DILocation(line: 145, column: 1, scope: !468)
!559 = distinct !DISubprogram(name: "memseeker", scope: !1, file: !1, line: 150, type: !262, isLocal: true, isDefinition: true, scopeLine: 155, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !560)
!560 = !{!561, !562, !563, !564, !565, !566}
!561 = !DILocalVariable(name: "ptr", arg: 1, scope: !559, file: !1, line: 150, type: !98)
!562 = !DILocalVariable(name: "cookie", arg: 2, scope: !559, file: !1, line: 150, type: !25)
!563 = !DILocalVariable(name: "pos", arg: 3, scope: !559, file: !1, line: 150, type: !64)
!564 = !DILocalVariable(name: "whence", arg: 4, scope: !559, file: !1, line: 150, type: !5)
!565 = !DILocalVariable(name: "c", scope: !559, file: !1, line: 156, type: !26)
!566 = !DILocalVariable(name: "offset", scope: !559, file: !1, line: 157, type: !61)
!567 = !DILocation(line: 150, column: 1, scope: !559)
!568 = !DILocation(line: 157, column: 9, scope: !559)
!569 = !DILocation(line: 159, column: 14, scope: !570)
!570 = distinct !DILexicalBlock(scope: !559, file: !1, line: 159, column: 7)
!571 = !DILocation(line: 159, column: 7, scope: !559)
!572 = !DILocation(line: 161, column: 19, scope: !573)
!573 = distinct !DILexicalBlock(scope: !570, file: !1, line: 161, column: 12)
!574 = !DILocation(line: 161, column: 12, scope: !570)
!575 = !DILocation(line: 0, scope: !570)
!576 = !DILocation(line: 163, column: 14, scope: !577)
!577 = distinct !DILexicalBlock(scope: !559, file: !1, line: 163, column: 7)
!578 = !DILocation(line: 0, scope: !559)
!579 = !DILocation(line: 163, column: 7, scope: !559)
!580 = !DILocation(line: 165, column: 12, scope: !581)
!581 = distinct !DILexicalBlock(scope: !577, file: !1, line: 164, column: 5)
!582 = !DILocation(line: 165, column: 19, scope: !581)
!583 = !DILocation(line: 167, column: 5, scope: !581)
!584 = !DILocation(line: 168, column: 12, scope: !577)
!585 = !DILocation(line: 182, column: 14, scope: !586)
!586 = distinct !DILexicalBlock(scope: !587, file: !1, line: 182, column: 11)
!587 = distinct !DILexicalBlock(scope: !588, file: !1, line: 181, column: 5)
!588 = distinct !DILexicalBlock(scope: !577, file: !1, line: 168, column: 12)
!589 = !DILocation(line: 182, column: 23, scope: !586)
!590 = !DILocation(line: 182, column: 18, scope: !586)
!591 = !DILocation(line: 182, column: 11, scope: !587)
!592 = !DILocation(line: 0, scope: !593)
!593 = distinct !DILexicalBlock(scope: !594, file: !1, line: 206, column: 16)
!594 = distinct !DILexicalBlock(scope: !587, file: !1, line: 191, column: 11)
!595 = !DILocation(line: 184, column: 11, scope: !596)
!596 = distinct !DILexicalBlock(scope: !597, file: !1, line: 184, column: 8)
!597 = distinct !DILexicalBlock(scope: !586, file: !1, line: 183, column: 2)
!598 = !DILocation(line: 184, column: 16, scope: !596)
!599 = !DILocation(line: 0, scope: !596)
!600 = !DILocation(line: 184, column: 8, scope: !597)
!601 = !DILocation(line: 185, column: 51, scope: !596)
!602 = !DILocation(line: 185, column: 24, scope: !596)
!603 = !DILocation(line: 185, column: 20, scope: !596)
!604 = !DILocation(line: 185, column: 30, scope: !596)
!605 = !DILocation(line: 185, column: 6, scope: !596)
!606 = !DILocation(line: 185, column: 40, scope: !596)
!607 = !DILocation(line: 187, column: 36, scope: !596)
!608 = !DILocation(line: 187, column: 11, scope: !596)
!609 = !DILocation(line: 187, column: 7, scope: !596)
!610 = !DILocation(line: 187, column: 6, scope: !596)
!611 = !DILocation(line: 187, column: 25, scope: !596)
!612 = !DILocation(line: 191, column: 23, scope: !594)
!613 = !DILocation(line: 188, column: 13, scope: !597)
!614 = !DILocation(line: 188, column: 15, scope: !597)
!615 = !DILocation(line: 189, column: 2, scope: !597)
!616 = !DILocation(line: 190, column: 14, scope: !587)
!617 = !DILocation(line: 191, column: 18, scope: !594)
!618 = !DILocation(line: 191, column: 11, scope: !587)
!619 = !DILocation(line: 0, scope: !620)
!620 = distinct !DILexicalBlock(scope: !621, file: !1, line: 200, column: 6)
!621 = distinct !DILexicalBlock(scope: !622, file: !1, line: 193, column: 8)
!622 = distinct !DILexicalBlock(scope: !594, file: !1, line: 192, column: 2)
!623 = !DILocation(line: 193, column: 8, scope: !622)
!624 = !DILocation(line: 195, column: 21, scope: !625)
!625 = distinct !DILexicalBlock(scope: !621, file: !1, line: 194, column: 6)
!626 = !DILocation(line: 195, column: 11, scope: !625)
!627 = !DILocation(line: 195, column: 17, scope: !625)
!628 = !DILocation(line: 195, column: 19, scope: !625)
!629 = !DILocation(line: 196, column: 22, scope: !625)
!630 = !DILocation(line: 196, column: 32, scope: !625)
!631 = !DILocation(line: 196, column: 8, scope: !625)
!632 = !DILocation(line: 196, column: 42, scope: !625)
!633 = !DILocation(line: 197, column: 27, scope: !625)
!634 = !DILocation(line: 197, column: 12, scope: !625)
!635 = !DILocation(line: 197, column: 18, scope: !625)
!636 = !DILocation(line: 198, column: 6, scope: !625)
!637 = !DILocation(line: 201, column: 21, scope: !620)
!638 = !DILocation(line: 201, column: 11, scope: !620)
!639 = !DILocation(line: 201, column: 19, scope: !620)
!640 = !DILocation(line: 202, column: 9, scope: !620)
!641 = !DILocation(line: 202, column: 8, scope: !620)
!642 = !DILocation(line: 202, column: 27, scope: !620)
!643 = !DILocation(line: 203, column: 23, scope: !620)
!644 = !DILocation(line: 203, column: 12, scope: !620)
!645 = !DILocation(line: 203, column: 18, scope: !620)
!646 = !DILocation(line: 206, column: 16, scope: !594)
!647 = !DILocation(line: 207, column: 21, scope: !593)
!648 = !DILocation(line: 207, column: 6, scope: !593)
!649 = !DILocation(line: 207, column: 12, scope: !593)
!650 = !DILocation(line: 207, column: 2, scope: !593)
!651 = !DILocation(line: 209, column: 6, scope: !593)
!652 = !DILocation(line: 209, column: 12, scope: !593)
!653 = !DILocation(line: 211, column: 3, scope: !559)
!654 = distinct !DISubprogram(name: "memcloser", scope: !1, file: !1, line: 278, type: !266, isLocal: true, isDefinition: true, scopeLine: 281, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !655)
!655 = !{!656, !657, !658, !659}
!656 = !DILocalVariable(name: "ptr", arg: 1, scope: !654, file: !1, line: 278, type: !98)
!657 = !DILocalVariable(name: "cookie", arg: 2, scope: !654, file: !1, line: 278, type: !25)
!658 = !DILocalVariable(name: "c", scope: !654, file: !1, line: 282, type: !26)
!659 = !DILocalVariable(name: "buf", scope: !654, file: !1, line: 283, type: !23)
!660 = !DILocation(line: 278, column: 1, scope: !654)
!661 = !DILocation(line: 282, column: 14, scope: !654)
!662 = !DILocation(line: 286, column: 9, scope: !654)
!663 = !DILocation(line: 283, column: 9, scope: !654)
!664 = !DILocation(line: 289, column: 7, scope: !665)
!665 = distinct !DILexicalBlock(scope: !654, file: !1, line: 289, column: 7)
!666 = !DILocation(line: 289, column: 7, scope: !654)
!667 = !DILocation(line: 290, column: 9, scope: !665)
!668 = !DILocation(line: 290, column: 14, scope: !665)
!669 = !DILocation(line: 290, column: 5, scope: !665)
!670 = !DILocation(line: 291, column: 3, scope: !654)
!671 = !DILocation(line: 292, column: 3, scope: !654)
