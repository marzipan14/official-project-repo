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

; Function Attrs: noredzone nounwind
define dso_local %struct.__sFILE* @_open_memstream_r(%struct._reent*, i8**, i64*) local_unnamed_addr #0 !dbg !69 {
  %4 = tail call fastcc %struct.__sFILE* @internal_open_memstream_r(%struct._reent* %0, i8** %1, i64* %2, i32 -1) #4, !dbg !290
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
  br i1 %10, label %13, label %11, !dbg !316

; <label>:11:                                     ; preds = %4
  %12 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !317
  store i32 22, i32* %12, align 8, !dbg !319, !tbaa !320
  br label %74, !dbg !329

; <label>:13:                                     ; preds = %4
  %14 = tail call %struct.__sFILE* @__sfp(%struct._reent* %0) #5, !dbg !330
  %15 = icmp eq %struct.__sFILE* %14, null, !dbg !333
  br i1 %15, label %74, label %16, !dbg !334

; <label>:16:                                     ; preds = %13
  %17 = tail call i8* @malloc(i64 56) #5, !dbg !335
  %18 = icmp eq i8* %17, null, !dbg !337
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
  br label %74, !dbg !351

; <label>:25:                                     ; preds = %16
  %26 = load i64, i64* %2, align 8, !dbg !352, !tbaa !353
  %27 = getelementptr inbounds i8, i8* %17, i64 40, !dbg !354
  %28 = bitcast i8* %27 to i64*, !dbg !354
  %29 = icmp eq i32 %3, 1, !dbg !355
  %30 = shl i64 %26, 2, !dbg !357
  %31 = select i1 %29, i64 %30, i64 %26, !dbg !358
  store i64 %31, i64* %28, align 8, !dbg !359, !tbaa !360
  %32 = icmp ult i64 %31, 64, !dbg !362
  br i1 %32, label %35, label %33, !dbg !364

; <label>:33:                                     ; preds = %25
  %34 = icmp ugt i64 %31, 65536, !dbg !365
  br i1 %34, label %35, label %37, !dbg !367

; <label>:35:                                     ; preds = %33, %25
  %36 = phi i64 [ 64, %25 ], [ 65536, %33 ]
  store i64 %36, i64* %28, align 8, !dbg !368, !tbaa !360
  br label %37, !dbg !369

; <label>:37:                                     ; preds = %35, %33
  store i64 0, i64* %2, align 8, !dbg !369, !tbaa !353
  %38 = load i64, i64* %28, align 8, !dbg !370, !tbaa !360
  %39 = tail call i8* @malloc(i64 %38) #5, !dbg !370
  store i8* %39, i8** %1, align 8, !dbg !371, !tbaa !372
  %40 = icmp eq i8* %39, null, !dbg !373
  %41 = bitcast i8* %39 to i32*, !dbg !374
  br i1 %40, label %42, label %48, !dbg !374

; <label>:42:                                     ; preds = %37
  %43 = bitcast i32* %6 to i8*, !dbg !375
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %43) #6, !dbg !375
  %44 = call i32 @pthread_setcancelstate(i32 1, i32* nonnull %6) #5, !dbg !375
  call void @__sfp_lock_acquire() #5, !dbg !375
  %45 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %14, i64 0, i32 3, !dbg !376
  store i16 0, i16* %45, align 8, !dbg !377, !tbaa !342
  call void @__sfp_lock_release() #5, !dbg !378
  %46 = load i32, i32* %6, align 4, !dbg !378, !tbaa !349
  %47 = call i32 @pthread_setcancelstate(i32 %46, i32* nonnull %6) #5, !dbg !378
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %43) #6, !dbg !379
  call void @free(i8* nonnull %17) #5, !dbg !380
  br label %74, !dbg !381

; <label>:48:                                     ; preds = %37
  br i1 %29, label %49, label %50, !dbg !382

; <label>:49:                                     ; preds = %48
  store i32 0, i32* %41, align 4, !dbg !383, !tbaa !349
  br label %51, !dbg !385

; <label>:50:                                     ; preds = %48
  store i8 0, i8* %39, align 1, !dbg !386, !tbaa !387
  br label %51

; <label>:51:                                     ; preds = %50, %49
  %52 = bitcast i8* %17 to i8**, !dbg !388
  store i8* %17, i8** %52, align 8, !dbg !389, !tbaa !390
  %53 = getelementptr inbounds i8, i8* %17, i64 8, !dbg !391
  %54 = bitcast i8* %53 to i8***, !dbg !391
  store i8** %1, i8*** %54, align 8, !dbg !392, !tbaa !393
  %55 = getelementptr inbounds i8, i8* %17, i64 16, !dbg !394
  %56 = bitcast i8* %55 to i64**, !dbg !394
  store i64* %2, i64** %56, align 8, !dbg !395, !tbaa !396
  %57 = getelementptr inbounds i8, i8* %17, i64 24, !dbg !397
  %58 = bitcast i8* %57 to <2 x i64>*, !dbg !398
  store <2 x i64> zeroinitializer, <2 x i64>* %58, align 8, !dbg !398, !tbaa !353
  %59 = getelementptr inbounds i8, i8* %17, i64 48, !dbg !399
  %60 = bitcast i8* %59 to i32*, !dbg !400
  store i32 0, i32* %60, align 8, !dbg !401, !tbaa !387
  %61 = trunc i32 %3 to i8, !dbg !402
  %62 = getelementptr inbounds i8, i8* %17, i64 52, !dbg !403
  store i8 %61, i8* %62, align 4, !dbg !404, !tbaa !405
  %63 = bitcast i32* %7 to i8*, !dbg !406
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %63) #6, !dbg !406
  %64 = call i32 @pthread_setcancelstate(i32 1, i32* nonnull %7) #5, !dbg !406
  %65 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %14, i64 0, i32 4, !dbg !407
  store i16 -1, i16* %65, align 2, !dbg !408, !tbaa !409
  %66 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %14, i64 0, i32 3, !dbg !410
  store i16 8, i16* %66, align 8, !dbg !411, !tbaa !342
  %67 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %14, i64 0, i32 7, !dbg !412
  store i8* %17, i8** %67, align 8, !dbg !413, !tbaa !414
  %68 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %14, i64 0, i32 8, !dbg !415
  %69 = bitcast i64 (%struct._reent*, i8*, i8*, i32)** %68 to <2 x i64 (%struct._reent*, i8*, i8*, i32)*>*, !dbg !416
  store <2 x i64 (%struct._reent*, i8*, i8*, i32)*> <i64 (%struct._reent*, i8*, i8*, i32)* null, i64 (%struct._reent*, i8*, i8*, i32)* @memwriter>, <2 x i64 (%struct._reent*, i8*, i8*, i32)*>* %69, align 8, !dbg !416, !tbaa !372
  %70 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %14, i64 0, i32 10, !dbg !417
  store i64 (%struct._reent*, i8*, i64, i32)* @memseeker, i64 (%struct._reent*, i8*, i64, i32)** %70, align 8, !dbg !418, !tbaa !419
  %71 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %14, i64 0, i32 11, !dbg !420
  store i32 (%struct._reent*, i8*)* @memcloser, i32 (%struct._reent*, i8*)** %71, align 8, !dbg !421, !tbaa !422
  %72 = load i32, i32* %7, align 4, !dbg !423, !tbaa !349
  %73 = call i32 @pthread_setcancelstate(i32 %72, i32* nonnull %7) #5, !dbg !423
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %63) #6, !dbg !424
  br label %74, !dbg !425

; <label>:74:                                     ; preds = %13, %51, %42, %19, %11
  %75 = phi %struct.__sFILE* [ null, %19 ], [ %14, %51 ], [ null, %42 ], [ null, %11 ], [ null, %13 ], !dbg !426
  ret %struct.__sFILE* %75, !dbg !427
}

; Function Attrs: noredzone nounwind
define dso_local %struct.__sFILE* @_open_wmemstream_r(%struct._reent*, i32**, i64*) local_unnamed_addr #0 !dbg !428 {
  %4 = bitcast i32** %1 to i8**, !dbg !436
  %5 = tail call fastcc %struct.__sFILE* @internal_open_memstream_r(%struct._reent* %0, i8** %4, i64* %2, i32 1) #4, !dbg !437
  ret %struct.__sFILE* %5, !dbg !438
}

; Function Attrs: noredzone nounwind
define dso_local %struct.__sFILE* @open_memstream(i8**, i64*) local_unnamed_addr #0 !dbg !439 {
  %3 = tail call %struct._reent* @__getreent() #5, !dbg !446
  %4 = tail call fastcc %struct.__sFILE* @internal_open_memstream_r(%struct._reent* %3, i8** %0, i64* %1, i32 -1) #5, !dbg !449
  ret %struct.__sFILE* %4, !dbg !450
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local %struct.__sFILE* @open_wmemstream(i32**, i64*) local_unnamed_addr #0 !dbg !451 {
  %3 = tail call %struct._reent* @__getreent() #5, !dbg !458
  %4 = bitcast i32** %0 to i8**, !dbg !461
  %5 = tail call fastcc %struct.__sFILE* @internal_open_memstream_r(%struct._reent* %3, i8** %4, i64* %1, i32 1) #5, !dbg !462
  ret %struct.__sFILE* %5, !dbg !463
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
define internal i64 @memwriter(%struct._reent* nocapture, i8* nocapture, i8*, i32) #0 !dbg !464 {
  %5 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !477
  %6 = bitcast i8* %5 to i8***, !dbg !477
  %7 = load i8**, i8*** %6, align 8, !dbg !477, !tbaa !393
  %8 = load i8*, i8** %7, align 8, !dbg !478, !tbaa !372
  %9 = getelementptr inbounds i8, i8* %1, i64 24, !dbg !480
  %10 = bitcast i8* %9 to i64*, !dbg !480
  %11 = load i64, i64* %10, align 8, !dbg !480, !tbaa !482
  %12 = sext i32 %3 to i64, !dbg !483
  %13 = add i64 %11, %12, !dbg !484
  %14 = icmp slt i64 %13, 0, !dbg !485
  br i1 %14, label %15, label %17, !dbg !486

; <label>:15:                                     ; preds = %4
  %16 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !487
  store i32 27, i32* %16, align 8, !dbg !489, !tbaa !320
  br label %80, !dbg !490

; <label>:17:                                     ; preds = %4
  %18 = getelementptr inbounds i8, i8* %1, i64 40, !dbg !491
  %19 = bitcast i8* %18 to i64*, !dbg !491
  %20 = load i64, i64* %19, align 8, !dbg !491, !tbaa !360
  %21 = icmp ult i64 %13, %20, !dbg !492
  br i1 %21, label %33, label %22, !dbg !493

; <label>:22:                                     ; preds = %17
  %23 = mul i64 %20, 3, !dbg !494
  %24 = lshr i64 %23, 1, !dbg !495
  %25 = add i64 %13, 1, !dbg !497
  %26 = icmp ult i64 %24, %25, !dbg !499
  %27 = select i1 %26, i64 %25, i64 %24, !dbg !500
  %28 = tail call i8* @realloc(i8* %8, i64 %27) #5, !dbg !501
  %29 = icmp eq i8* %28, null, !dbg !502
  br i1 %29, label %80, label %30, !dbg !504

; <label>:30:                                     ; preds = %22
  %31 = load i8**, i8*** %6, align 8, !dbg !505, !tbaa !393
  store i8* %28, i8** %31, align 8, !dbg !506, !tbaa !372
  store i64 %27, i64* %19, align 8, !dbg !507, !tbaa !360
  %32 = load i64, i64* %10, align 8, !dbg !508, !tbaa !482
  br label %33

; <label>:33:                                     ; preds = %30, %17
  %34 = phi i64 [ %11, %17 ], [ %32, %30 ], !dbg !508
  %35 = phi i8* [ %8, %17 ], [ %28, %30 ], !dbg !510
  %36 = getelementptr inbounds i8, i8* %1, i64 32, !dbg !511
  %37 = bitcast i8* %36 to i64*, !dbg !511
  %38 = load i64, i64* %37, align 8, !dbg !511, !tbaa !512
  %39 = icmp ugt i64 %34, %38, !dbg !513
  br i1 %39, label %40, label %45, !dbg !514

; <label>:40:                                     ; preds = %33
  %41 = getelementptr inbounds i8, i8* %35, i64 %38, !dbg !515
  %42 = sub i64 %34, %38, !dbg !516
  %43 = tail call i8* @memset(i8* %41, i32 0, i64 %42) #5, !dbg !517
  %44 = load i64, i64* %10, align 8, !dbg !518, !tbaa !482
  br label %45, !dbg !517

; <label>:45:                                     ; preds = %40, %33
  %46 = phi i64 [ %44, %40 ], [ %34, %33 ], !dbg !518
  %47 = getelementptr inbounds i8, i8* %35, i64 %46, !dbg !519
  %48 = tail call i8* @memcpy(i8* %47, i8* %2, i64 %12) #5, !dbg !520
  %49 = load i64, i64* %10, align 8, !dbg !521, !tbaa !482
  %50 = add i64 %49, %12, !dbg !521
  store i64 %50, i64* %10, align 8, !dbg !521, !tbaa !482
  %51 = load i64, i64* %37, align 8, !dbg !522, !tbaa !512
  %52 = icmp ugt i64 %50, %51, !dbg !524
  br i1 %52, label %53, label %56, !dbg !525

; <label>:53:                                     ; preds = %45
  store i64 %50, i64* %37, align 8, !dbg !526, !tbaa !512
  %54 = getelementptr inbounds i8, i8* %35, i64 %50, !dbg !527
  %55 = getelementptr inbounds i8, i8* %1, i64 52, !dbg !528
  br label %69, !dbg !529

; <label>:56:                                     ; preds = %45
  %57 = getelementptr inbounds i8, i8* %1, i64 52, !dbg !530
  %58 = load i8, i8* %57, align 4, !dbg !530, !tbaa !405
  %59 = icmp sgt i8 %58, 0, !dbg !532
  %60 = getelementptr inbounds i8, i8* %35, i64 %50, !dbg !533
  br i1 %59, label %61, label %66, !dbg !534

; <label>:61:                                     ; preds = %56
  %62 = bitcast i8* %60 to i32*, !dbg !535
  %63 = load i32, i32* %62, align 4, !dbg !535, !tbaa !349
  %64 = getelementptr inbounds i8, i8* %1, i64 48, !dbg !536
  %65 = bitcast i8* %64 to i32*, !dbg !537
  store i32 %63, i32* %65, align 8, !dbg !538, !tbaa !387
  br label %69, !dbg !539

; <label>:66:                                     ; preds = %56
  %67 = load i8, i8* %60, align 1, !dbg !540, !tbaa !387
  %68 = getelementptr inbounds i8, i8* %1, i64 48, !dbg !541
  store i8 %67, i8* %68, align 8, !dbg !542, !tbaa !387
  br label %69

; <label>:69:                                     ; preds = %61, %66, %53
  %70 = phi i8* [ %57, %61 ], [ %57, %66 ], [ %55, %53 ], !dbg !528
  %71 = phi i8* [ %60, %61 ], [ %60, %66 ], [ %54, %53 ], !dbg !527
  store i8 0, i8* %71, align 1, !dbg !543, !tbaa !387
  %72 = load i8, i8* %70, align 4, !dbg !528, !tbaa !405
  %73 = icmp sgt i8 %72, 0, !dbg !544
  %74 = load i64, i64* %10, align 8, !dbg !510, !tbaa !482
  %75 = lshr i64 %74, 2, !dbg !545
  %76 = select i1 %73, i64 %75, i64 %74, !dbg !546
  %77 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !547
  %78 = bitcast i8* %77 to i64**, !dbg !547
  %79 = load i64*, i64** %78, align 8, !dbg !547, !tbaa !396
  store i64 %76, i64* %79, align 8, !dbg !548, !tbaa !353
  br label %80, !dbg !549

; <label>:80:                                     ; preds = %22, %69, %15
  %81 = phi i64 [ -1, %15 ], [ %12, %69 ], [ -1, %22 ]
  ret i64 %81, !dbg !550
}

; Function Attrs: noredzone nounwind
define internal i64 @memseeker(%struct._reent* nocapture, i8* nocapture, i64, i32) #0 !dbg !551 {
  switch i32 %3, label %12 [
    i32 1, label %6
    i32 2, label %5
  ], !dbg !561

; <label>:5:                                      ; preds = %4
  br label %6, !dbg !562

; <label>:6:                                      ; preds = %4, %5
  %7 = phi i64 [ 32, %5 ], [ 24, %4 ]
  %8 = getelementptr inbounds i8, i8* %1, i64 %7, !dbg !565
  %9 = bitcast i8* %8 to i64*, !dbg !565
  %10 = load i64, i64* %9, align 8, !dbg !565, !tbaa !353
  %11 = add i64 %10, %2, !dbg !565
  br label %12, !dbg !566

; <label>:12:                                     ; preds = %6, %4
  %13 = phi i64 [ %2, %4 ], [ %11, %6 ], !dbg !568
  %14 = icmp slt i64 %13, 0, !dbg !566
  br i1 %14, label %15, label %17, !dbg !569

; <label>:15:                                     ; preds = %12
  %16 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !570
  store i32 22, i32* %16, align 8, !dbg !572, !tbaa !320
  br label %93, !dbg !573

; <label>:17:                                     ; preds = %12
  %18 = getelementptr inbounds i8, i8* %1, i64 24, !dbg !574
  %19 = bitcast i8* %18 to i64*, !dbg !574
  %20 = load i64, i64* %19, align 8, !dbg !574, !tbaa !482
  %21 = getelementptr inbounds i8, i8* %1, i64 32, !dbg !578
  %22 = bitcast i8* %21 to i64*, !dbg !578
  %23 = load i64, i64* %22, align 8, !dbg !578, !tbaa !512
  %24 = icmp ult i64 %20, %23, !dbg !579
  %25 = getelementptr inbounds i8, i8* %1, i64 52, !dbg !580
  br i1 %24, label %26, label %51, !dbg !583

; <label>:26:                                     ; preds = %17
  %27 = load i8, i8* %25, align 4, !dbg !584, !tbaa !405
  %28 = icmp sgt i8 %27, 0, !dbg !587
  %29 = getelementptr inbounds i8, i8* %1, i64 48, !dbg !588
  br i1 %28, label %30, label %39, !dbg !589

; <label>:30:                                     ; preds = %26
  %31 = bitcast i8* %29 to i32*, !dbg !590
  %32 = load i32, i32* %31, align 8, !dbg !590, !tbaa !387
  %33 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !591
  %34 = bitcast i8* %33 to i8***, !dbg !591
  %35 = load i8**, i8*** %34, align 8, !dbg !591, !tbaa !393
  %36 = load i8*, i8** %35, align 8, !dbg !592, !tbaa !372
  %37 = getelementptr inbounds i8, i8* %36, i64 %20, !dbg !593
  %38 = bitcast i8* %37 to i32*, !dbg !594
  store i32 %32, i32* %38, align 4, !dbg !595, !tbaa !349
  br label %48, !dbg !594

; <label>:39:                                     ; preds = %26
  %40 = load i8, i8* %29, align 8, !dbg !596, !tbaa !387
  %41 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !597
  %42 = bitcast i8* %41 to i8***, !dbg !597
  %43 = load i8**, i8*** %42, align 8, !dbg !597, !tbaa !393
  %44 = load i8*, i8** %43, align 8, !dbg !598, !tbaa !372
  %45 = getelementptr inbounds i8, i8* %44, i64 %20, !dbg !599
  store i8 %40, i8* %45, align 1, !dbg !600, !tbaa !387
  %46 = load i64, i64* %22, align 8, !dbg !601, !tbaa !512
  %47 = bitcast i8* %29 to i32*, !dbg !602
  br label %48

; <label>:48:                                     ; preds = %39, %30
  %49 = phi i32* [ %47, %39 ], [ %31, %30 ], !dbg !602
  %50 = phi i64 [ %46, %39 ], [ %23, %30 ], !dbg !601
  store i32 0, i32* %49, align 8, !dbg !603, !tbaa !387
  br label %51, !dbg !604

; <label>:51:                                     ; preds = %17, %48
  %52 = phi i64 [ %50, %48 ], [ %23, %17 ], !dbg !601
  store i64 %13, i64* %19, align 8, !dbg !605, !tbaa !482
  %53 = icmp ult i64 %13, %52, !dbg !606
  %54 = load i8, i8* %25, align 4, !dbg !580, !tbaa !405
  %55 = icmp sgt i8 %54, 0, !dbg !580
  br i1 %53, label %56, label %83, !dbg !607

; <label>:56:                                     ; preds = %51
  %57 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !608
  %58 = bitcast i8* %57 to i8***, !dbg !608
  %59 = load i8**, i8*** %58, align 8, !dbg !608, !tbaa !393
  %60 = load i8*, i8** %59, align 8, !dbg !608, !tbaa !372
  %61 = getelementptr inbounds i8, i8* %60, i64 %13, !dbg !608
  br i1 %55, label %62, label %74, !dbg !612

; <label>:62:                                     ; preds = %56
  %63 = bitcast i8* %61 to i32*, !dbg !613
  %64 = load i32, i32* %63, align 4, !dbg !613, !tbaa !349
  %65 = getelementptr inbounds i8, i8* %1, i64 48, !dbg !615
  %66 = bitcast i8* %65 to i32*, !dbg !616
  store i32 %64, i32* %66, align 8, !dbg !617, !tbaa !387
  %67 = load i8*, i8** %59, align 8, !dbg !618, !tbaa !372
  %68 = getelementptr inbounds i8, i8* %67, i64 %13, !dbg !619
  %69 = bitcast i8* %68 to i32*, !dbg !620
  store i32 0, i32* %69, align 4, !dbg !621, !tbaa !349
  %70 = lshr i64 %13, 2, !dbg !622
  %71 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !623
  %72 = bitcast i8* %71 to i64**, !dbg !623
  %73 = load i64*, i64** %72, align 8, !dbg !623, !tbaa !396
  store i64 %70, i64* %73, align 8, !dbg !624, !tbaa !353
  br label %93, !dbg !625

; <label>:74:                                     ; preds = %56
  %75 = load i8, i8* %61, align 1, !dbg !626, !tbaa !387
  %76 = getelementptr inbounds i8, i8* %1, i64 48, !dbg !627
  store i8 %75, i8* %76, align 8, !dbg !628, !tbaa !387
  %77 = load i8*, i8** %59, align 8, !dbg !629, !tbaa !372
  %78 = getelementptr inbounds i8, i8* %77, i64 %13, !dbg !630
  store i8 0, i8* %78, align 1, !dbg !631, !tbaa !387
  %79 = load i64, i64* %19, align 8, !dbg !632, !tbaa !482
  %80 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !633
  %81 = bitcast i8* %80 to i64**, !dbg !633
  %82 = load i64*, i64** %81, align 8, !dbg !633, !tbaa !396
  store i64 %79, i64* %82, align 8, !dbg !634, !tbaa !353
  br label %93

; <label>:83:                                     ; preds = %51
  br i1 %55, label %84, label %89, !dbg !635

; <label>:84:                                     ; preds = %83
  %85 = lshr i64 %52, 2, !dbg !636
  %86 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !637
  %87 = bitcast i8* %86 to i64**, !dbg !637
  %88 = load i64*, i64** %87, align 8, !dbg !637, !tbaa !396
  store i64 %85, i64* %88, align 8, !dbg !638, !tbaa !353
  br label %93, !dbg !639

; <label>:89:                                     ; preds = %83
  %90 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !640
  %91 = bitcast i8* %90 to i64**, !dbg !640
  %92 = load i64*, i64** %91, align 8, !dbg !640, !tbaa !396
  store i64 %52, i64* %92, align 8, !dbg !641, !tbaa !353
  br label %93

; <label>:93:                                     ; preds = %84, %89, %62, %74, %15
  %94 = phi i64 [ -1, %15 ], [ %13, %62 ], [ %13, %74 ], [ %13, %84 ], [ %13, %89 ], !dbg !565
  ret i64 %94, !dbg !642
}

; Function Attrs: noredzone nounwind
define internal i32 @memcloser(%struct._reent* nocapture readnone, i8* nocapture readonly) #0 !dbg !643 {
  %3 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !651
  %4 = bitcast i8* %3 to i8***, !dbg !651
  %5 = load i8**, i8*** %4, align 8, !dbg !651, !tbaa !393
  %6 = load i8*, i8** %5, align 8, !dbg !651, !tbaa !372
  %7 = getelementptr inbounds i8, i8* %1, i64 52, !dbg !651
  %8 = load i8, i8* %7, align 4, !dbg !651, !tbaa !405
  %9 = icmp sgt i8 %8, 0, !dbg !651
  %10 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !651
  %11 = bitcast i8* %10 to i64**, !dbg !651
  %12 = load i64*, i64** %11, align 8, !dbg !651, !tbaa !396
  %13 = load i64, i64* %12, align 8, !dbg !651, !tbaa !353
  %14 = add i64 %13, 1, !dbg !651
  %15 = shl i64 %14, 2, !dbg !651
  %16 = select i1 %9, i64 %15, i64 %14, !dbg !651
  %17 = tail call i8* @realloc(i8* %6, i64 %16) #5, !dbg !651
  %18 = icmp eq i8* %17, null, !dbg !653
  br i1 %18, label %21, label %19, !dbg !655

; <label>:19:                                     ; preds = %2
  %20 = load i8**, i8*** %4, align 8, !dbg !656, !tbaa !393
  store i8* %17, i8** %20, align 8, !dbg !657, !tbaa !372
  br label %21, !dbg !658

; <label>:21:                                     ; preds = %2, %19
  %22 = bitcast i8* %1 to i8**, !dbg !659
  %23 = load i8*, i8** %22, align 8, !dbg !659, !tbaa !390
  tail call void @free(i8* %23) #5, !dbg !659
  ret i32 0, !dbg !660
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
!355 = !DILocation(line: 329, column: 12, scope: !356)
!356 = distinct !DILexicalBlock(scope: !292, file: !1, line: 329, column: 7)
!357 = !DILocation(line: 330, column: 12, scope: !356)
!358 = !DILocation(line: 329, column: 7, scope: !292)
!359 = !DILocation(line: 0, scope: !292)
!360 = !{!361, !346, i64 40}
!361 = !{!"memstream", !325, i64 0, !325, i64 8, !325, i64 16, !346, i64 24, !346, i64 32, !346, i64 40, !323, i64 48, !323, i64 52}
!362 = !DILocation(line: 331, column: 14, scope: !363)
!363 = distinct !DILexicalBlock(scope: !292, file: !1, line: 331, column: 7)
!364 = !DILocation(line: 331, column: 7, scope: !292)
!365 = !DILocation(line: 334, column: 19, scope: !366)
!366 = distinct !DILexicalBlock(scope: !363, file: !1, line: 334, column: 12)
!367 = !DILocation(line: 334, column: 12, scope: !363)
!368 = !DILocation(line: 0, scope: !363)
!369 = !DILocation(line: 337, column: 9, scope: !292)
!370 = !DILocation(line: 338, column: 10, scope: !292)
!371 = !DILocation(line: 338, column: 8, scope: !292)
!372 = !{!325, !325, i64 0}
!373 = !DILocation(line: 339, column: 8, scope: !309)
!374 = !DILocation(line: 339, column: 7, scope: !292)
!375 = !DILocation(line: 341, column: 7, scope: !307)
!376 = !DILocation(line: 342, column: 11, scope: !307)
!377 = !DILocation(line: 342, column: 18, scope: !307)
!378 = !DILocation(line: 346, column: 7, scope: !307)
!379 = !DILocation(line: 346, column: 7, scope: !308)
!380 = !DILocation(line: 347, column: 7, scope: !308)
!381 = !DILocation(line: 348, column: 7, scope: !308)
!382 = !DILocation(line: 350, column: 7, scope: !292)
!383 = !DILocation(line: 351, column: 25, scope: !384)
!384 = distinct !DILexicalBlock(scope: !292, file: !1, line: 350, column: 7)
!385 = !DILocation(line: 351, column: 5, scope: !384)
!386 = !DILocation(line: 353, column: 11, scope: !384)
!387 = !{!323, !323, i64 0}
!388 = !DILocation(line: 355, column: 6, scope: !292)
!389 = !DILocation(line: 355, column: 14, scope: !292)
!390 = !{!361, !325, i64 0}
!391 = !DILocation(line: 356, column: 6, scope: !292)
!392 = !DILocation(line: 356, column: 11, scope: !292)
!393 = !{!361, !325, i64 8}
!394 = !DILocation(line: 357, column: 6, scope: !292)
!395 = !DILocation(line: 357, column: 12, scope: !292)
!396 = !{!361, !325, i64 16}
!397 = !DILocation(line: 358, column: 6, scope: !292)
!398 = !DILocation(line: 358, column: 10, scope: !292)
!399 = !DILocation(line: 360, column: 6, scope: !292)
!400 = !DILocation(line: 360, column: 12, scope: !292)
!401 = !DILocation(line: 360, column: 14, scope: !292)
!402 = !DILocation(line: 361, column: 13, scope: !292)
!403 = !DILocation(line: 361, column: 6, scope: !292)
!404 = !DILocation(line: 361, column: 11, scope: !292)
!405 = !{!361, !323, i64 52}
!406 = !DILocation(line: 363, column: 3, scope: !311)
!407 = !DILocation(line: 364, column: 7, scope: !311)
!408 = !DILocation(line: 364, column: 13, scope: !311)
!409 = !{!343, !344, i64 18}
!410 = !DILocation(line: 365, column: 7, scope: !311)
!411 = !DILocation(line: 365, column: 14, scope: !311)
!412 = !DILocation(line: 366, column: 7, scope: !311)
!413 = !DILocation(line: 366, column: 15, scope: !311)
!414 = !{!343, !325, i64 48}
!415 = !DILocation(line: 367, column: 7, scope: !311)
!416 = !DILocation(line: 367, column: 13, scope: !311)
!417 = !DILocation(line: 369, column: 7, scope: !311)
!418 = !DILocation(line: 369, column: 13, scope: !311)
!419 = !{!343, !325, i64 72}
!420 = !DILocation(line: 374, column: 7, scope: !311)
!421 = !DILocation(line: 374, column: 14, scope: !311)
!422 = !{!343, !325, i64 80}
!423 = !DILocation(line: 376, column: 3, scope: !311)
!424 = !DILocation(line: 376, column: 3, scope: !292)
!425 = !DILocation(line: 377, column: 3, scope: !292)
!426 = !DILocation(line: 0, scope: !318)
!427 = !DILocation(line: 378, column: 1, scope: !292)
!428 = distinct !DISubprogram(name: "_open_wmemstream_r", scope: !1, file: !1, line: 390, type: !429, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !431)
!429 = !DISubroutineType(types: !430)
!430 = !{!103, !98, !55, !33}
!431 = !{!432, !433, !434}
!432 = !DILocalVariable(name: "ptr", arg: 1, scope: !428, file: !1, line: 390, type: !98)
!433 = !DILocalVariable(name: "buf", arg: 2, scope: !428, file: !1, line: 390, type: !55)
!434 = !DILocalVariable(name: "size", arg: 3, scope: !428, file: !1, line: 390, type: !33)
!435 = !DILocation(line: 390, column: 1, scope: !428)
!436 = !DILocation(line: 395, column: 42, scope: !428)
!437 = !DILocation(line: 395, column: 10, scope: !428)
!438 = !DILocation(line: 395, column: 3, scope: !428)
!439 = distinct !DISubprogram(name: "open_memstream", scope: !1, file: !1, line: 400, type: !440, isLocal: false, isDefinition: true, scopeLine: 403, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !442)
!440 = !DISubroutineType(types: !441)
!441 = !{!72, !22, !33}
!442 = !{!443, !444}
!443 = !DILocalVariable(name: "buf", arg: 1, scope: !439, file: !1, line: 400, type: !22)
!444 = !DILocalVariable(name: "size", arg: 2, scope: !439, file: !1, line: 400, type: !33)
!445 = !DILocation(line: 400, column: 1, scope: !439)
!446 = !DILocation(line: 404, column: 29, scope: !439)
!447 = !DILocation(line: 381, column: 1, scope: !69, inlinedAt: !448)
!448 = distinct !DILocation(line: 404, column: 10, scope: !439)
!449 = !DILocation(line: 386, column: 10, scope: !69, inlinedAt: !448)
!450 = !DILocation(line: 404, column: 3, scope: !439)
!451 = distinct !DISubprogram(name: "open_wmemstream", scope: !1, file: !1, line: 408, type: !452, isLocal: false, isDefinition: true, scopeLine: 411, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !454)
!452 = !DISubroutineType(types: !453)
!453 = !{!103, !55, !33}
!454 = !{!455, !456}
!455 = !DILocalVariable(name: "buf", arg: 1, scope: !451, file: !1, line: 408, type: !55)
!456 = !DILocalVariable(name: "size", arg: 2, scope: !451, file: !1, line: 408, type: !33)
!457 = !DILocation(line: 408, column: 1, scope: !451)
!458 = !DILocation(line: 412, column: 30, scope: !451)
!459 = !DILocation(line: 390, column: 1, scope: !428, inlinedAt: !460)
!460 = distinct !DILocation(line: 412, column: 10, scope: !451)
!461 = !DILocation(line: 395, column: 42, scope: !428, inlinedAt: !460)
!462 = !DILocation(line: 395, column: 10, scope: !428, inlinedAt: !460)
!463 = !DILocation(line: 412, column: 3, scope: !451)
!464 = distinct !DISubprogram(name: "memwriter", scope: !1, file: !1, line: 96, type: !256, isLocal: true, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !465)
!465 = !{!466, !467, !468, !469, !470, !471, !472}
!466 = !DILocalVariable(name: "ptr", arg: 1, scope: !464, file: !1, line: 96, type: !98)
!467 = !DILocalVariable(name: "cookie", arg: 2, scope: !464, file: !1, line: 96, type: !25)
!468 = !DILocalVariable(name: "buf", arg: 3, scope: !464, file: !1, line: 96, type: !258)
!469 = !DILocalVariable(name: "n", arg: 4, scope: !464, file: !1, line: 96, type: !5)
!470 = !DILocalVariable(name: "c", scope: !464, file: !1, line: 102, type: !26)
!471 = !DILocalVariable(name: "cbuf", scope: !464, file: !1, line: 103, type: !23)
!472 = !DILocalVariable(name: "newsize", scope: !473, file: !1, line: 119, type: !34)
!473 = distinct !DILexicalBlock(scope: !474, file: !1, line: 118, column: 5)
!474 = distinct !DILexicalBlock(scope: !464, file: !1, line: 117, column: 7)
!475 = !DILocation(line: 96, column: 1, scope: !464)
!476 = !DILocation(line: 102, column: 14, scope: !464)
!477 = !DILocation(line: 103, column: 20, scope: !464)
!478 = !DILocation(line: 103, column: 16, scope: !464)
!479 = !DILocation(line: 103, column: 9, scope: !464)
!480 = !DILocation(line: 107, column: 58, scope: !481)
!481 = distinct !DILexicalBlock(scope: !464, file: !1, line: 107, column: 7)
!482 = !{!361, !346, i64 24}
!483 = !DILocation(line: 107, column: 64, scope: !481)
!484 = !DILocation(line: 107, column: 62, scope: !481)
!485 = !DILocation(line: 107, column: 67, scope: !481)
!486 = !DILocation(line: 107, column: 7, scope: !464)
!487 = !DILocation(line: 109, column: 12, scope: !488)
!488 = distinct !DILexicalBlock(scope: !481, file: !1, line: 108, column: 5)
!489 = !DILocation(line: 109, column: 19, scope: !488)
!490 = !DILocation(line: 110, column: 7, scope: !488)
!491 = !DILocation(line: 117, column: 24, scope: !474)
!492 = !DILocation(line: 117, column: 18, scope: !474)
!493 = !DILocation(line: 117, column: 7, scope: !464)
!494 = !DILocation(line: 119, column: 31, scope: !473)
!495 = !DILocation(line: 119, column: 35, scope: !473)
!496 = !DILocation(line: 119, column: 14, scope: !473)
!497 = !DILocation(line: 120, column: 32, scope: !498)
!498 = distinct !DILexicalBlock(scope: !473, file: !1, line: 120, column: 11)
!499 = !DILocation(line: 120, column: 19, scope: !498)
!500 = !DILocation(line: 120, column: 11, scope: !473)
!501 = !DILocation(line: 122, column: 14, scope: !473)
!502 = !DILocation(line: 123, column: 13, scope: !503)
!503 = distinct !DILexicalBlock(scope: !473, file: !1, line: 123, column: 11)
!504 = !DILocation(line: 123, column: 11, scope: !473)
!505 = !DILocation(line: 125, column: 11, scope: !473)
!506 = !DILocation(line: 125, column: 16, scope: !473)
!507 = !DILocation(line: 126, column: 14, scope: !473)
!508 = !DILocation(line: 130, column: 10, scope: !509)
!509 = distinct !DILexicalBlock(scope: !464, file: !1, line: 130, column: 7)
!510 = !DILocation(line: 0, scope: !464)
!511 = !DILocation(line: 130, column: 19, scope: !509)
!512 = !{!361, !346, i64 32}
!513 = !DILocation(line: 130, column: 14, scope: !509)
!514 = !DILocation(line: 130, column: 7, scope: !464)
!515 = !DILocation(line: 131, column: 18, scope: !509)
!516 = !DILocation(line: 131, column: 41, scope: !509)
!517 = !DILocation(line: 131, column: 5, scope: !509)
!518 = !DILocation(line: 132, column: 21, scope: !464)
!519 = !DILocation(line: 132, column: 16, scope: !464)
!520 = !DILocation(line: 132, column: 3, scope: !464)
!521 = !DILocation(line: 133, column: 10, scope: !464)
!522 = !DILocation(line: 136, column: 19, scope: !523)
!523 = distinct !DILexicalBlock(scope: !464, file: !1, line: 136, column: 7)
!524 = !DILocation(line: 136, column: 14, scope: !523)
!525 = !DILocation(line: 136, column: 7, scope: !464)
!526 = !DILocation(line: 137, column: 12, scope: !523)
!527 = !DILocation(line: 142, column: 3, scope: !464)
!528 = !DILocation(line: 143, column: 19, scope: !464)
!529 = !DILocation(line: 137, column: 5, scope: !523)
!530 = !DILocation(line: 138, column: 15, scope: !531)
!531 = distinct !DILexicalBlock(scope: !523, file: !1, line: 138, column: 12)
!532 = !DILocation(line: 138, column: 20, scope: !531)
!533 = !DILocation(line: 0, scope: !531)
!534 = !DILocation(line: 138, column: 12, scope: !523)
!535 = !DILocation(line: 139, column: 18, scope: !531)
!536 = !DILocation(line: 139, column: 8, scope: !531)
!537 = !DILocation(line: 139, column: 14, scope: !531)
!538 = !DILocation(line: 139, column: 16, scope: !531)
!539 = !DILocation(line: 139, column: 5, scope: !531)
!540 = !DILocation(line: 141, column: 18, scope: !531)
!541 = !DILocation(line: 141, column: 8, scope: !531)
!542 = !DILocation(line: 141, column: 16, scope: !531)
!543 = !DILocation(line: 142, column: 16, scope: !464)
!544 = !DILocation(line: 143, column: 24, scope: !464)
!545 = !DILocation(line: 143, column: 38, scope: !464)
!546 = !DILocation(line: 143, column: 15, scope: !464)
!547 = !DILocation(line: 143, column: 7, scope: !464)
!548 = !DILocation(line: 143, column: 13, scope: !464)
!549 = !DILocation(line: 144, column: 3, scope: !464)
!550 = !DILocation(line: 145, column: 1, scope: !464)
!551 = distinct !DISubprogram(name: "memseeker", scope: !1, file: !1, line: 150, type: !262, isLocal: true, isDefinition: true, scopeLine: 155, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !552)
!552 = !{!553, !554, !555, !556, !557, !558}
!553 = !DILocalVariable(name: "ptr", arg: 1, scope: !551, file: !1, line: 150, type: !98)
!554 = !DILocalVariable(name: "cookie", arg: 2, scope: !551, file: !1, line: 150, type: !25)
!555 = !DILocalVariable(name: "pos", arg: 3, scope: !551, file: !1, line: 150, type: !64)
!556 = !DILocalVariable(name: "whence", arg: 4, scope: !551, file: !1, line: 150, type: !5)
!557 = !DILocalVariable(name: "c", scope: !551, file: !1, line: 156, type: !26)
!558 = !DILocalVariable(name: "offset", scope: !551, file: !1, line: 157, type: !61)
!559 = !DILocation(line: 150, column: 1, scope: !551)
!560 = !DILocation(line: 157, column: 9, scope: !551)
!561 = !DILocation(line: 159, column: 7, scope: !551)
!562 = !DILocation(line: 162, column: 5, scope: !563)
!563 = distinct !DILexicalBlock(scope: !564, file: !1, line: 161, column: 12)
!564 = distinct !DILexicalBlock(scope: !551, file: !1, line: 159, column: 7)
!565 = !DILocation(line: 0, scope: !564)
!566 = !DILocation(line: 163, column: 14, scope: !567)
!567 = distinct !DILexicalBlock(scope: !551, file: !1, line: 163, column: 7)
!568 = !DILocation(line: 0, scope: !551)
!569 = !DILocation(line: 163, column: 7, scope: !551)
!570 = !DILocation(line: 165, column: 12, scope: !571)
!571 = distinct !DILexicalBlock(scope: !567, file: !1, line: 164, column: 5)
!572 = !DILocation(line: 165, column: 19, scope: !571)
!573 = !DILocation(line: 167, column: 5, scope: !571)
!574 = !DILocation(line: 182, column: 14, scope: !575)
!575 = distinct !DILexicalBlock(scope: !576, file: !1, line: 182, column: 11)
!576 = distinct !DILexicalBlock(scope: !577, file: !1, line: 181, column: 5)
!577 = distinct !DILexicalBlock(scope: !567, file: !1, line: 168, column: 12)
!578 = !DILocation(line: 182, column: 23, scope: !575)
!579 = !DILocation(line: 182, column: 18, scope: !575)
!580 = !DILocation(line: 0, scope: !581)
!581 = distinct !DILexicalBlock(scope: !582, file: !1, line: 206, column: 16)
!582 = distinct !DILexicalBlock(scope: !576, file: !1, line: 191, column: 11)
!583 = !DILocation(line: 182, column: 11, scope: !576)
!584 = !DILocation(line: 184, column: 11, scope: !585)
!585 = distinct !DILexicalBlock(scope: !586, file: !1, line: 184, column: 8)
!586 = distinct !DILexicalBlock(scope: !575, file: !1, line: 183, column: 2)
!587 = !DILocation(line: 184, column: 16, scope: !585)
!588 = !DILocation(line: 0, scope: !585)
!589 = !DILocation(line: 184, column: 8, scope: !586)
!590 = !DILocation(line: 185, column: 51, scope: !585)
!591 = !DILocation(line: 185, column: 24, scope: !585)
!592 = !DILocation(line: 185, column: 20, scope: !585)
!593 = !DILocation(line: 185, column: 30, scope: !585)
!594 = !DILocation(line: 185, column: 6, scope: !585)
!595 = !DILocation(line: 185, column: 40, scope: !585)
!596 = !DILocation(line: 187, column: 36, scope: !585)
!597 = !DILocation(line: 187, column: 11, scope: !585)
!598 = !DILocation(line: 187, column: 7, scope: !585)
!599 = !DILocation(line: 187, column: 6, scope: !585)
!600 = !DILocation(line: 187, column: 25, scope: !585)
!601 = !DILocation(line: 191, column: 23, scope: !582)
!602 = !DILocation(line: 188, column: 13, scope: !586)
!603 = !DILocation(line: 188, column: 15, scope: !586)
!604 = !DILocation(line: 189, column: 2, scope: !586)
!605 = !DILocation(line: 190, column: 14, scope: !576)
!606 = !DILocation(line: 191, column: 18, scope: !582)
!607 = !DILocation(line: 191, column: 11, scope: !576)
!608 = !DILocation(line: 0, scope: !609)
!609 = distinct !DILexicalBlock(scope: !610, file: !1, line: 200, column: 6)
!610 = distinct !DILexicalBlock(scope: !611, file: !1, line: 193, column: 8)
!611 = distinct !DILexicalBlock(scope: !582, file: !1, line: 192, column: 2)
!612 = !DILocation(line: 193, column: 8, scope: !611)
!613 = !DILocation(line: 195, column: 21, scope: !614)
!614 = distinct !DILexicalBlock(scope: !610, file: !1, line: 194, column: 6)
!615 = !DILocation(line: 195, column: 11, scope: !614)
!616 = !DILocation(line: 195, column: 17, scope: !614)
!617 = !DILocation(line: 195, column: 19, scope: !614)
!618 = !DILocation(line: 196, column: 22, scope: !614)
!619 = !DILocation(line: 196, column: 32, scope: !614)
!620 = !DILocation(line: 196, column: 8, scope: !614)
!621 = !DILocation(line: 196, column: 42, scope: !614)
!622 = !DILocation(line: 197, column: 27, scope: !614)
!623 = !DILocation(line: 197, column: 12, scope: !614)
!624 = !DILocation(line: 197, column: 18, scope: !614)
!625 = !DILocation(line: 198, column: 6, scope: !614)
!626 = !DILocation(line: 201, column: 21, scope: !609)
!627 = !DILocation(line: 201, column: 11, scope: !609)
!628 = !DILocation(line: 201, column: 19, scope: !609)
!629 = !DILocation(line: 202, column: 9, scope: !609)
!630 = !DILocation(line: 202, column: 8, scope: !609)
!631 = !DILocation(line: 202, column: 27, scope: !609)
!632 = !DILocation(line: 203, column: 23, scope: !609)
!633 = !DILocation(line: 203, column: 12, scope: !609)
!634 = !DILocation(line: 203, column: 18, scope: !609)
!635 = !DILocation(line: 206, column: 16, scope: !582)
!636 = !DILocation(line: 207, column: 21, scope: !581)
!637 = !DILocation(line: 207, column: 6, scope: !581)
!638 = !DILocation(line: 207, column: 12, scope: !581)
!639 = !DILocation(line: 207, column: 2, scope: !581)
!640 = !DILocation(line: 209, column: 6, scope: !581)
!641 = !DILocation(line: 209, column: 12, scope: !581)
!642 = !DILocation(line: 211, column: 3, scope: !551)
!643 = distinct !DISubprogram(name: "memcloser", scope: !1, file: !1, line: 278, type: !266, isLocal: true, isDefinition: true, scopeLine: 281, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !644)
!644 = !{!645, !646, !647, !648}
!645 = !DILocalVariable(name: "ptr", arg: 1, scope: !643, file: !1, line: 278, type: !98)
!646 = !DILocalVariable(name: "cookie", arg: 2, scope: !643, file: !1, line: 278, type: !25)
!647 = !DILocalVariable(name: "c", scope: !643, file: !1, line: 282, type: !26)
!648 = !DILocalVariable(name: "buf", scope: !643, file: !1, line: 283, type: !23)
!649 = !DILocation(line: 278, column: 1, scope: !643)
!650 = !DILocation(line: 282, column: 14, scope: !643)
!651 = !DILocation(line: 286, column: 9, scope: !643)
!652 = !DILocation(line: 283, column: 9, scope: !643)
!653 = !DILocation(line: 289, column: 7, scope: !654)
!654 = distinct !DILexicalBlock(scope: !643, file: !1, line: 289, column: 7)
!655 = !DILocation(line: 289, column: 7, scope: !643)
!656 = !DILocation(line: 290, column: 9, scope: !654)
!657 = !DILocation(line: 290, column: 14, scope: !654)
!658 = !DILocation(line: 290, column: 5, scope: !654)
!659 = !DILocation(line: 291, column: 3, scope: !643)
!660 = !DILocation(line: 292, column: 3, scope: !643)
