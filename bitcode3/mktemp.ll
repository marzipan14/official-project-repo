; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/mktemp.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/mktemp.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._reent = type { i32, %struct.__sFILE*, %struct.__sFILE*, %struct.__sFILE*, i32, [25 x i8], i32, %struct.__locale_t*, i32, void (%struct._reent*)*, %struct._Bigint*, i32, %struct._Bigint*, %struct._Bigint**, i32, i8*, %union.anon.0, %struct._atexit*, %struct._atexit, void (i32)**, %struct._glue, [3 x %struct.__sFILE] }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i64, i32)*, i32 (%struct._reent*, i8*)*, %struct.__sbuf, i8*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64, %struct._reent*, i32, %struct._mbstate_t, i32 }
%struct.__sbuf = type { i8*, i32 }
%struct._mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__locale_t = type opaque
%struct._Bigint = type { %struct._Bigint*, i32, i32, i32, i32, [1 x i32] }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { [30 x i8*], [30 x i32] }
%struct._atexit = type { %struct._atexit*, i32, [32 x void ()*], %struct._on_exit_args }
%struct._on_exit_args = type { [32 x i8*], [32 x i8*], i32, i32 }
%struct._glue = type { %struct._glue*, i32, %struct.__sFILE* }
%struct.stat = type { i16, i16, i32, i16, i16, i16, i16, i64, %struct.timespec, %struct.timespec, %struct.timespec, i64, i64 }
%struct.timespec = type { i64, i64 }

; Function Attrs: noredzone nounwind
define dso_local i32 @_mkstemp_r(%struct._reent*, i8*) local_unnamed_addr #0 !dbg !14 {
  %3 = alloca i32, align 4
  %4 = bitcast i32* %3 to i8*, !dbg !237
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #4, !dbg !237
  %5 = call fastcc i32 @_gettemp(%struct._reent* %0, i8* %1, i32* nonnull %3, i32 0, i64 0, i32 0) #5, !dbg !239
  %6 = icmp eq i32 %5, 0, !dbg !239
  %7 = load i32, i32* %3, align 4, !dbg !240
  %8 = select i1 %6, i32 -1, i32 %7, !dbg !239
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #4, !dbg !241
  ret i32 %8, !dbg !242
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone nounwind
define internal fastcc i32 @_gettemp(%struct._reent*, i8*, i32*, i32, i64, i32) unnamed_addr #0 !dbg !243 {
  %7 = alloca %struct.stat, align 8
  %8 = bitcast %struct.stat* %7 to i8*, !dbg !304
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %8) #4, !dbg !304
  %9 = tail call i32 @_getpid_r(%struct._reent* %0) #6, !dbg !305
  br label %10, !dbg !308

; <label>:10:                                     ; preds = %10, %6
  %11 = phi i8* [ %1, %6 ], [ %14, %10 ], !dbg !310
  %12 = load i8, i8* %11, align 1, !dbg !312, !tbaa !313
  %13 = icmp eq i8 %12, 0, !dbg !316
  %14 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !317
  br i1 %13, label %15, label %10, !dbg !316, !llvm.loop !318

; <label>:15:                                     ; preds = %10
  %16 = ptrtoint i8* %11 to i64, !dbg !320
  %17 = ptrtoint i8* %1 to i64, !dbg !320
  %18 = sub i64 %16, %17, !dbg !320
  %19 = icmp ult i64 %18, %4, !dbg !322
  br i1 %19, label %20, label %22, !dbg !323

; <label>:20:                                     ; preds = %15
  %21 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !324
  store i32 22, i32* %21, align 8, !dbg !326, !tbaa !327
  br label %111, !dbg !334

; <label>:22:                                     ; preds = %15
  %23 = sub i64 0, %4, !dbg !335
  %24 = getelementptr inbounds i8, i8* %11, i64 %23, !dbg !335
  %25 = icmp ugt i8* %24, %1, !dbg !337
  br i1 %25, label %26, label %38, !dbg !338

; <label>:26:                                     ; preds = %22, %32
  %27 = phi i32 [ %36, %32 ], [ %9, %22 ]
  %28 = phi i8* [ %29, %32 ], [ %24, %22 ]
  %29 = getelementptr inbounds i8, i8* %28, i64 -1, !dbg !339
  %30 = load i8, i8* %29, align 1, !dbg !340, !tbaa !313
  %31 = icmp eq i8 %30, 88, !dbg !341
  br i1 %31, label %32, label %38, !dbg !342

; <label>:32:                                     ; preds = %26
  %33 = urem i32 %27, 10, !dbg !343
  %34 = trunc i32 %33 to i8, !dbg !345
  %35 = or i8 %34, 48, !dbg !345
  store i8 %35, i8* %29, align 1, !dbg !346, !tbaa !313
  %36 = udiv i32 %27, 10, !dbg !347
  %37 = icmp ugt i8* %29, %1, !dbg !337
  br i1 %37, label %26, label %38, !dbg !338, !llvm.loop !348

; <label>:38:                                     ; preds = %26, %32, %22
  %39 = phi i8* [ %24, %22 ], [ %29, %32 ], [ %29, %26 ], !dbg !350
  %40 = ptrtoint i8* %24 to i64, !dbg !351
  %41 = ptrtoint i8* %39 to i64, !dbg !351
  %42 = sub i64 %40, %41, !dbg !351
  %43 = icmp slt i64 %42, 6, !dbg !353
  br i1 %43, label %46, label %44, !dbg !354

; <label>:44:                                     ; preds = %38
  %45 = icmp ugt i8* %39, %1, !dbg !355
  br i1 %45, label %48, label %66, !dbg !360

; <label>:46:                                     ; preds = %38
  %47 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !361
  store i32 22, i32* %47, align 8, !dbg !363, !tbaa !327
  br label %111, !dbg !364

; <label>:48:                                     ; preds = %44, %63
  %49 = phi i8* [ %64, %63 ], [ %39, %44 ]
  %50 = load i8, i8* %49, align 1, !dbg !365, !tbaa !313
  %51 = icmp eq i8 %50, 47, !dbg !367
  br i1 %51, label %52, label %63, !dbg !368

; <label>:52:                                     ; preds = %48
  store i8 0, i8* %49, align 1, !dbg !369, !tbaa !313
  %53 = call i32 @_stat_r(%struct._reent* %0, i8* %1, %struct.stat* nonnull %7) #6, !dbg !372
  %54 = icmp eq i32 %53, 0, !dbg !372
  br i1 %54, label %55, label %111, !dbg !374

; <label>:55:                                     ; preds = %52
  %56 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 2, !dbg !375
  %57 = load i32, i32* %56, align 4, !dbg !375, !tbaa !377
  %58 = and i32 %57, 16384, !dbg !382
  %59 = icmp eq i32 %58, 0, !dbg !382
  br i1 %59, label %60, label %62, !dbg !383

; <label>:60:                                     ; preds = %55
  %61 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !384
  store i32 20, i32* %61, align 8, !dbg !386, !tbaa !327
  br label %111, !dbg !387

; <label>:62:                                     ; preds = %55
  store i8 47, i8* %49, align 1, !dbg !388, !tbaa !313
  br label %66, !dbg !389

; <label>:63:                                     ; preds = %48
  %64 = getelementptr inbounds i8, i8* %49, i64 -1, !dbg !390
  %65 = icmp ugt i8* %64, %1, !dbg !355
  br i1 %65, label %48, label %66, !dbg !360, !llvm.loop !391

; <label>:66:                                     ; preds = %63, %44, %62
  %67 = icmp eq i32 %3, 0, !dbg !394
  br i1 %67, label %68, label %74, !dbg !399

; <label>:68:                                     ; preds = %66
  %69 = icmp eq i32* %2, null
  %70 = getelementptr inbounds i8, i8* %39, i64 1
  %71 = icmp eq i8* %70, %24
  %72 = or i32 %5, 2562
  %73 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0
  br label %76, !dbg !399

; <label>:74:                                     ; preds = %66
  %75 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !400
  store i32 88, i32* %75, align 8, !dbg !402, !tbaa !327
  br label %111, !dbg !403

; <label>:76:                                     ; preds = %100, %68
  br i1 %69, label %84, label %77, !dbg !404

; <label>:77:                                     ; preds = %76
  %78 = call i32 @_open_r(%struct._reent* %0, i8* %1, i32 %72, i32 384) #6, !dbg !405
  store i32 %78, i32* %2, align 4, !dbg !409, !tbaa !410
  %79 = icmp sgt i32 %78, -1, !dbg !411
  br i1 %79, label %111, label %80, !dbg !412

; <label>:80:                                     ; preds = %77
  %81 = load i32, i32* %73, align 8, !dbg !413, !tbaa !327
  %82 = icmp ne i32 %81, 17, !dbg !415
  %83 = or i1 %82, %71, !dbg !416
  br i1 %83, label %111, label %92, !dbg !416

; <label>:84:                                     ; preds = %76
  %85 = call i32 @_stat_r(%struct._reent* %0, i8* %1, %struct.stat* nonnull %7) #6, !dbg !417
  %86 = icmp eq i32 %85, 0, !dbg !417
  br i1 %86, label %91, label %87, !dbg !419

; <label>:87:                                     ; preds = %84
  %88 = load i32, i32* %73, align 8, !dbg !420, !tbaa !327
  %89 = icmp eq i32 %88, 2, !dbg !421
  %90 = zext i1 %89 to i32, !dbg !422
  br label %111, !dbg !423

; <label>:91:                                     ; preds = %84
  br i1 %71, label %111, label %92, !dbg !424

; <label>:92:                                     ; preds = %91, %80
  br label %93, !dbg !428

; <label>:93:                                     ; preds = %92, %97
  %94 = phi i8* [ %98, %97 ], [ %70, %92 ]
  %95 = load i8, i8* %94, align 1, !dbg !428, !tbaa !313
  %96 = icmp eq i8 %95, 122, !dbg !430
  br i1 %96, label %97, label %100, !dbg !431

; <label>:97:                                     ; preds = %93
  store i8 97, i8* %94, align 1, !dbg !432, !tbaa !313
  %98 = getelementptr inbounds i8, i8* %94, i64 1, !dbg !433
  %99 = icmp eq i8* %98, %24, !dbg !434
  br i1 %99, label %111, label %93, !dbg !424, !llvm.loop !436

; <label>:100:                                    ; preds = %93
  %101 = call i8* @__locale_ctype_ptr() #6, !dbg !439
  %102 = getelementptr inbounds i8, i8* %101, i64 1, !dbg !439
  %103 = load i8, i8* %94, align 1, !dbg !439, !tbaa !313
  %104 = zext i8 %103 to i64, !dbg !439
  %105 = getelementptr inbounds i8, i8* %102, i64 %104, !dbg !439
  %106 = load i8, i8* %105, align 1, !dbg !439, !tbaa !313
  %107 = and i8 %106, 4, !dbg !439
  %108 = icmp eq i8 %107, 0, !dbg !439
  %109 = add i8 %103, 1, !dbg !442
  %110 = select i1 %108, i8 %109, i8 97, !dbg !443
  store i8 %110, i8* %94, align 1, !dbg !444, !tbaa !313
  br label %76, !dbg !399

; <label>:111:                                    ; preds = %80, %77, %91, %97, %52, %87, %74, %60, %46, %20
  %112 = phi i32 [ 0, %20 ], [ 0, %46 ], [ 0, %74 ], [ %90, %87 ], [ 0, %60 ], [ 0, %52 ], [ 0, %97 ], [ 0, %91 ], [ 0, %80 ], [ 1, %77 ], !dbg !445
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %8) #4, !dbg !446
  ret i32 %112, !dbg !446
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone nounwind
define dso_local i8* @_mkdtemp_r(%struct._reent*, i8*) local_unnamed_addr #0 !dbg !447 {
  %3 = alloca %struct.stat, align 8
  %4 = bitcast %struct.stat* %3 to i8*, !dbg !456
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %4) #4, !dbg !456
  %5 = tail call i32 @_getpid_r(%struct._reent* %0) #6, !dbg !457
  br label %6, !dbg !460

; <label>:6:                                      ; preds = %6, %2
  %7 = phi i8* [ %1, %2 ], [ %10, %6 ], !dbg !461
  %8 = load i8, i8* %7, align 1, !dbg !462, !tbaa !313
  %9 = icmp eq i8 %8, 0, !dbg !463
  %10 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !464
  br i1 %9, label %11, label %6, !dbg !463, !llvm.loop !318

; <label>:11:                                     ; preds = %6
  %12 = ptrtoint i8* %7 to i64, !dbg !465
  %13 = icmp ugt i8* %7, %1, !dbg !467
  br i1 %13, label %14, label %29, !dbg !468

; <label>:14:                                     ; preds = %11, %20
  %15 = phi i32 [ %24, %20 ], [ %5, %11 ]
  %16 = phi i8* [ %17, %20 ], [ %7, %11 ]
  %17 = getelementptr inbounds i8, i8* %16, i64 -1, !dbg !469
  %18 = load i8, i8* %17, align 1, !dbg !470, !tbaa !313
  %19 = icmp eq i8 %18, 88, !dbg !471
  br i1 %19, label %20, label %26, !dbg !472

; <label>:20:                                     ; preds = %14
  %21 = urem i32 %15, 10, !dbg !473
  %22 = trunc i32 %21 to i8, !dbg !474
  %23 = or i8 %22, 48, !dbg !474
  store i8 %23, i8* %17, align 1, !dbg !475, !tbaa !313
  %24 = udiv i32 %15, 10, !dbg !476
  %25 = icmp ugt i8* %17, %1, !dbg !467
  br i1 %25, label %14, label %26, !dbg !468, !llvm.loop !348

; <label>:26:                                     ; preds = %14, %20
  %27 = phi i8 [ %18, %14 ], [ %23, %20 ]
  %28 = ptrtoint i8* %17 to i64, !dbg !477
  br label %29, !dbg !477

; <label>:29:                                     ; preds = %26, %11
  %30 = phi i64 [ %28, %26 ], [ %12, %11 ], !dbg !477
  %31 = phi i8 [ %27, %26 ], [ 0, %11 ]
  %32 = phi i8* [ %17, %26 ], [ %7, %11 ], !dbg !478
  %33 = sub i64 %12, %30, !dbg !477
  %34 = icmp slt i64 %33, 6, !dbg !479
  br i1 %34, label %56, label %35, !dbg !480

; <label>:35:                                     ; preds = %29
  %36 = icmp ugt i8* %32, %1, !dbg !481
  br i1 %36, label %37, label %56, !dbg !482

; <label>:37:                                     ; preds = %35
  %38 = icmp eq i8 %31, 47, !dbg !483
  br i1 %38, label %39, label %49, !dbg !484

; <label>:39:                                     ; preds = %53, %37
  %40 = phi i8* [ %32, %37 ], [ %51, %53 ]
  store i8 0, i8* %40, align 1, !dbg !485, !tbaa !313
  %41 = call i32 @_stat_r(%struct._reent* %0, i8* %1, %struct.stat* nonnull %3) #6, !dbg !487
  %42 = icmp eq i32 %41, 0, !dbg !487
  br i1 %42, label %43, label %59, !dbg !488

; <label>:43:                                     ; preds = %39
  %44 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 2, !dbg !489
  %45 = load i32, i32* %44, align 4, !dbg !489, !tbaa !377
  %46 = and i32 %45, 16384, !dbg !490
  %47 = icmp eq i32 %46, 0, !dbg !490
  br i1 %47, label %56, label %48, !dbg !491

; <label>:48:                                     ; preds = %43
  store i8 47, i8* %40, align 1, !dbg !492, !tbaa !313
  br label %56, !dbg !493

; <label>:49:                                     ; preds = %37, %53
  %50 = phi i8* [ %51, %53 ], [ %32, %37 ]
  %51 = getelementptr inbounds i8, i8* %50, i64 -1, !dbg !494
  %52 = icmp ugt i8* %51, %1, !dbg !481
  br i1 %52, label %53, label %56, !dbg !482, !llvm.loop !391

; <label>:53:                                     ; preds = %49
  %54 = load i8, i8* %51, align 1, !dbg !495, !tbaa !313
  %55 = icmp eq i8 %54, 47, !dbg !483
  br i1 %55, label %39, label %49, !dbg !484

; <label>:56:                                     ; preds = %49, %35, %48, %43, %29
  %57 = phi i32 [ 22, %29 ], [ 20, %43 ], [ 88, %48 ], [ 88, %35 ], [ 88, %49 ]
  %58 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !496
  store i32 %57, i32* %58, align 8, !dbg !496, !tbaa !327
  br label %59, !dbg !497

; <label>:59:                                     ; preds = %56, %39
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %4) #4, !dbg !497
  ret i8* null, !dbg !498
}

; Function Attrs: noredzone nounwind
define dso_local i32 @_mkstemps_r(%struct._reent*, i8*, i32) local_unnamed_addr #0 !dbg !499 {
  %4 = alloca i32, align 4
  %5 = bitcast i32* %4 to i8*, !dbg !508
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #4, !dbg !508
  %6 = sext i32 %2 to i64, !dbg !509
  %7 = call fastcc i32 @_gettemp(%struct._reent* %0, i8* %1, i32* nonnull %4, i32 0, i64 %6, i32 0) #5, !dbg !511
  %8 = icmp eq i32 %7, 0, !dbg !511
  %9 = load i32, i32* %4, align 4, !dbg !512
  %10 = select i1 %8, i32 -1, i32 %9, !dbg !511
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #4, !dbg !513
  ret i32 %10, !dbg !514
}

; Function Attrs: noredzone nounwind
define dso_local i32 @_mkostemp_r(%struct._reent*, i8*, i32) local_unnamed_addr #0 !dbg !515 {
  %4 = alloca i32, align 4
  %5 = bitcast i32* %4 to i8*, !dbg !522
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #4, !dbg !522
  %6 = and i32 %2, -4, !dbg !523
  %7 = call fastcc i32 @_gettemp(%struct._reent* %0, i8* %1, i32* nonnull %4, i32 0, i64 0, i32 %6) #5, !dbg !525
  %8 = icmp eq i32 %7, 0, !dbg !525
  %9 = load i32, i32* %4, align 4, !dbg !526
  %10 = select i1 %8, i32 -1, i32 %9, !dbg !525
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #4, !dbg !527
  ret i32 %10, !dbg !528
}

; Function Attrs: noredzone nounwind
define dso_local i32 @_mkostemps_r(%struct._reent*, i8*, i32, i32) local_unnamed_addr #0 !dbg !529 {
  %5 = alloca i32, align 4
  %6 = bitcast i32* %5 to i8*, !dbg !539
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #4, !dbg !539
  %7 = sext i32 %2 to i64, !dbg !540
  %8 = and i32 %3, -4, !dbg !541
  %9 = call fastcc i32 @_gettemp(%struct._reent* %0, i8* %1, i32* nonnull %5, i32 0, i64 %7, i32 %8) #5, !dbg !543
  %10 = icmp eq i32 %9, 0, !dbg !543
  %11 = load i32, i32* %5, align 4, !dbg !544
  %12 = select i1 %10, i32 -1, i32 %11, !dbg !543
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #4, !dbg !545
  ret i32 %12, !dbg !546
}

; Function Attrs: noredzone nounwind
define dso_local i8* @_mktemp_r(%struct._reent*, i8*) local_unnamed_addr #0 !dbg !547 {
  %3 = tail call fastcc i32 @_gettemp(%struct._reent* %0, i8* %1, i32* null, i32 0, i64 0, i32 0) #5, !dbg !552
  %4 = icmp eq i32 %3, 0, !dbg !552
  %5 = select i1 %4, i8* null, i8* %1, !dbg !552
  ret i8* %5, !dbg !553
}

; Function Attrs: noredzone nounwind
define dso_local i32 @mkstemp(i8*) local_unnamed_addr #0 !dbg !554 {
  %2 = alloca i32, align 4
  %3 = bitcast i32* %2 to i8*, !dbg !561
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #4, !dbg !561
  %4 = tail call %struct._reent* @__getreent() #6, !dbg !562
  %5 = call fastcc i32 @_gettemp(%struct._reent* %4, i8* %0, i32* nonnull %2, i32 0, i64 0, i32 0) #5, !dbg !564
  %6 = icmp eq i32 %5, 0, !dbg !564
  %7 = load i32, i32* %2, align 4, !dbg !565
  %8 = select i1 %6, i32 -1, i32 %7, !dbg !564
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #4, !dbg !566
  ret i32 %8, !dbg !567
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i8* @mkdtemp(i8*) local_unnamed_addr #0 !dbg !568 {
  %2 = alloca %struct.stat, align 8
  %3 = tail call %struct._reent* @__getreent() #6, !dbg !574
  %4 = bitcast %struct.stat* %2 to i8*, !dbg !577
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %4) #4, !dbg !577
  %5 = tail call i32 @_getpid_r(%struct._reent* %3) #6, !dbg !578
  br label %6, !dbg !581

; <label>:6:                                      ; preds = %6, %1
  %7 = phi i8* [ %0, %1 ], [ %10, %6 ], !dbg !582
  %8 = load i8, i8* %7, align 1, !dbg !583, !tbaa !313
  %9 = icmp eq i8 %8, 0, !dbg !584
  %10 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !585
  br i1 %9, label %11, label %6, !dbg !584, !llvm.loop !318

; <label>:11:                                     ; preds = %6
  %12 = ptrtoint i8* %7 to i64, !dbg !586
  %13 = icmp ugt i8* %7, %0, !dbg !588
  br i1 %13, label %14, label %29, !dbg !589

; <label>:14:                                     ; preds = %11, %20
  %15 = phi i32 [ %24, %20 ], [ %5, %11 ]
  %16 = phi i8* [ %17, %20 ], [ %7, %11 ]
  %17 = getelementptr inbounds i8, i8* %16, i64 -1, !dbg !590
  %18 = load i8, i8* %17, align 1, !dbg !591, !tbaa !313
  %19 = icmp eq i8 %18, 88, !dbg !592
  br i1 %19, label %20, label %26, !dbg !593

; <label>:20:                                     ; preds = %14
  %21 = urem i32 %15, 10, !dbg !594
  %22 = trunc i32 %21 to i8, !dbg !595
  %23 = or i8 %22, 48, !dbg !595
  store i8 %23, i8* %17, align 1, !dbg !596, !tbaa !313
  %24 = udiv i32 %15, 10, !dbg !597
  %25 = icmp ugt i8* %17, %0, !dbg !588
  br i1 %25, label %14, label %26, !dbg !589, !llvm.loop !348

; <label>:26:                                     ; preds = %14, %20
  %27 = phi i8 [ %18, %14 ], [ %23, %20 ]
  %28 = ptrtoint i8* %17 to i64, !dbg !598
  br label %29, !dbg !598

; <label>:29:                                     ; preds = %26, %11
  %30 = phi i64 [ %28, %26 ], [ %12, %11 ], !dbg !598
  %31 = phi i8 [ %27, %26 ], [ 0, %11 ]
  %32 = phi i8* [ %17, %26 ], [ %7, %11 ], !dbg !599
  %33 = sub i64 %12, %30, !dbg !598
  %34 = icmp slt i64 %33, 6, !dbg !600
  br i1 %34, label %56, label %35, !dbg !601

; <label>:35:                                     ; preds = %29
  %36 = icmp ugt i8* %32, %0, !dbg !602
  br i1 %36, label %37, label %56, !dbg !603

; <label>:37:                                     ; preds = %35
  %38 = icmp eq i8 %31, 47, !dbg !604
  br i1 %38, label %39, label %49, !dbg !605

; <label>:39:                                     ; preds = %53, %37
  %40 = phi i8* [ %32, %37 ], [ %51, %53 ]
  store i8 0, i8* %40, align 1, !dbg !606, !tbaa !313
  %41 = call i32 @_stat_r(%struct._reent* %3, i8* %0, %struct.stat* nonnull %2) #6, !dbg !608
  %42 = icmp eq i32 %41, 0, !dbg !608
  br i1 %42, label %43, label %59, !dbg !609

; <label>:43:                                     ; preds = %39
  %44 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 2, !dbg !610
  %45 = load i32, i32* %44, align 4, !dbg !610, !tbaa !377
  %46 = and i32 %45, 16384, !dbg !611
  %47 = icmp eq i32 %46, 0, !dbg !611
  br i1 %47, label %56, label %48, !dbg !612

; <label>:48:                                     ; preds = %43
  store i8 47, i8* %40, align 1, !dbg !613, !tbaa !313
  br label %56, !dbg !614

; <label>:49:                                     ; preds = %37, %53
  %50 = phi i8* [ %51, %53 ], [ %32, %37 ]
  %51 = getelementptr inbounds i8, i8* %50, i64 -1, !dbg !615
  %52 = icmp ugt i8* %51, %0, !dbg !602
  br i1 %52, label %53, label %56, !dbg !603, !llvm.loop !391

; <label>:53:                                     ; preds = %49
  %54 = load i8, i8* %51, align 1, !dbg !616, !tbaa !313
  %55 = icmp eq i8 %54, 47, !dbg !604
  br i1 %55, label %39, label %49, !dbg !605

; <label>:56:                                     ; preds = %49, %35, %48, %43, %29
  %57 = phi i32 [ 22, %29 ], [ 20, %43 ], [ 88, %48 ], [ 88, %35 ], [ 88, %49 ]
  %58 = getelementptr inbounds %struct._reent, %struct._reent* %3, i64 0, i32 0, !dbg !617
  store i32 %57, i32* %58, align 8, !dbg !617, !tbaa !327
  br label %59, !dbg !618

; <label>:59:                                     ; preds = %56, %39
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %4) #4, !dbg !618
  ret i8* null, !dbg !619
}

; Function Attrs: noredzone nounwind
define dso_local i32 @mkstemps(i8*, i32) local_unnamed_addr #0 !dbg !620 {
  %3 = alloca i32, align 4
  %4 = bitcast i32* %3 to i8*, !dbg !628
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #4, !dbg !628
  %5 = tail call %struct._reent* @__getreent() #6, !dbg !629
  %6 = sext i32 %1 to i64, !dbg !630
  %7 = call fastcc i32 @_gettemp(%struct._reent* %5, i8* %0, i32* nonnull %3, i32 0, i64 %6, i32 0) #5, !dbg !632
  %8 = icmp eq i32 %7, 0, !dbg !632
  %9 = load i32, i32* %3, align 4, !dbg !633
  %10 = select i1 %8, i32 -1, i32 %9, !dbg !632
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #4, !dbg !634
  ret i32 %10, !dbg !635
}

; Function Attrs: noredzone nounwind
define dso_local i32 @mkostemp(i8*, i32) local_unnamed_addr #0 !dbg !636 {
  %3 = alloca i32, align 4
  %4 = bitcast i32* %3 to i8*, !dbg !642
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #4, !dbg !642
  %5 = tail call %struct._reent* @__getreent() #6, !dbg !643
  %6 = and i32 %1, -4, !dbg !644
  %7 = call fastcc i32 @_gettemp(%struct._reent* %5, i8* %0, i32* nonnull %3, i32 0, i64 0, i32 %6) #5, !dbg !646
  %8 = icmp eq i32 %7, 0, !dbg !646
  %9 = load i32, i32* %3, align 4, !dbg !647
  %10 = select i1 %8, i32 -1, i32 %9, !dbg !646
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #4, !dbg !648
  ret i32 %10, !dbg !649
}

; Function Attrs: noredzone nounwind
define dso_local i32 @mkostemps(i8*, i32, i32) local_unnamed_addr #0 !dbg !650 {
  %4 = alloca i32, align 4
  %5 = bitcast i32* %4 to i8*, !dbg !659
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #4, !dbg !659
  %6 = tail call %struct._reent* @__getreent() #6, !dbg !660
  %7 = sext i32 %1 to i64, !dbg !661
  %8 = and i32 %2, -4, !dbg !662
  %9 = call fastcc i32 @_gettemp(%struct._reent* %6, i8* %0, i32* nonnull %4, i32 0, i64 %7, i32 %8) #5, !dbg !664
  %10 = icmp eq i32 %9, 0, !dbg !664
  %11 = load i32, i32* %4, align 4, !dbg !665
  %12 = select i1 %10, i32 -1, i32 %11, !dbg !664
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #4, !dbg !666
  ret i32 %12, !dbg !667
}

; Function Attrs: noredzone nounwind
define dso_local i8* @mktemp(i8*) local_unnamed_addr #0 !dbg !668 {
  %2 = tail call %struct._reent* @__getreent() #6, !dbg !672
  %3 = tail call fastcc i32 @_gettemp(%struct._reent* %2, i8* %0, i32* null, i32 0, i64 0, i32 0) #5, !dbg !673
  %4 = icmp eq i32 %3, 0, !dbg !673
  %5 = select i1 %4, i8* null, i8* %0, !dbg !673
  ret i8* %5, !dbg !674
}

; Function Attrs: noredzone
declare dso_local i32 @_getpid_r(%struct._reent*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @_stat_r(%struct._reent*, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @_open_r(%struct._reent*, i8*, i32, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @__locale_ctype_ptr() local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone }
attributes #6 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/mktemp.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !6, !7, !5, !9}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!10 = !{i32 2, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!14 = distinct !DISubprogram(name: "_mkstemp_r", scope: !1, file: !1, line: 266, type: !15, isLocal: false, isDefinition: true, scopeLine: 269, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !232)
!15 = !DISubroutineType(types: !16)
!16 = !{!5, !17, !7}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !19, line: 569, size: 14912, elements: !20)
!19 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!20 = !{!21, !22, !100, !101, !102, !103, !107, !108, !111, !112, !116, !128, !129, !130, !132, !133, !134, !196, !217, !218, !223, !230}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !18, file: !19, line: 571, baseType: !5, size: 32)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !18, file: !19, line: 576, baseType: !23, size: 64, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !19, line: 287, baseType: !25)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !19, line: 181, size: 1408, elements: !26)
!26 = !{!27, !29, !30, !31, !33, !34, !39, !40, !41, !48, !54, !59, !63, !64, !65, !66, !70, !74, !75, !76, !78, !79, !83, !99}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !25, file: !19, line: 182, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !25, file: !19, line: 183, baseType: !5, size: 32, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !25, file: !19, line: 184, baseType: !5, size: 32, offset: 96)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !25, file: !19, line: 185, baseType: !32, size: 16, offset: 128)
!32 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !25, file: !19, line: 186, baseType: !32, size: 16, offset: 144)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !25, file: !19, line: 187, baseType: !35, size: 128, offset: 192)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !19, line: 117, size: 128, elements: !36)
!36 = !{!37, !38}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !35, file: !19, line: 118, baseType: !28, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !35, file: !19, line: 119, baseType: !5, size: 32, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !25, file: !19, line: 188, baseType: !5, size: 32, offset: 320)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !25, file: !19, line: 195, baseType: !6, size: 64, offset: 384)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !25, file: !19, line: 197, baseType: !42, size: 64, offset: 448)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DISubroutineType(types: !44)
!44 = !{!45, !17, !6, !7, !5}
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !46, line: 145, baseType: !47)
!46 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!47 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !25, file: !19, line: 199, baseType: !49, size: 64, offset: 512)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DISubroutineType(types: !51)
!51 = !{!45, !17, !6, !52, !5}
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !25, file: !19, line: 202, baseType: !55, size: 64, offset: 576)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DISubroutineType(types: !57)
!57 = !{!58, !17, !6, !58, !5}
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !46, line: 114, baseType: !47)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !25, file: !19, line: 203, baseType: !60, size: 64, offset: 640)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DISubroutineType(types: !62)
!62 = !{!5, !17, !6}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !25, file: !19, line: 206, baseType: !35, size: 128, offset: 704)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !25, file: !19, line: 207, baseType: !28, size: 64, offset: 832)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !25, file: !19, line: 208, baseType: !5, size: 32, offset: 896)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !25, file: !19, line: 211, baseType: !67, size: 24, offset: 928)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 24, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 3)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !25, file: !19, line: 212, baseType: !71, size: 8, offset: 952)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 8, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 1)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !25, file: !19, line: 215, baseType: !35, size: 128, offset: 960)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !25, file: !19, line: 218, baseType: !5, size: 32, offset: 1088)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !25, file: !19, line: 219, baseType: !77, size: 64, offset: 1152)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !46, line: 44, baseType: !47)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !25, file: !19, line: 222, baseType: !17, size: 64, offset: 1216)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !25, file: !19, line: 226, baseType: !80, size: 32, offset: 1280)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !46, line: 175, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !82, line: 12, baseType: !5)
!82 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !25, file: !19, line: 228, baseType: !84, size: 64, offset: 1312)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !46, line: 171, baseType: !85)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !46, line: 163, size: 64, elements: !86)
!86 = !{!87, !88}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !85, file: !46, line: 165, baseType: !5, size: 32)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !85, file: !46, line: 170, baseType: !89, size: 32, offset: 32)
!89 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !85, file: !46, line: 166, size: 32, elements: !90)
!90 = !{!91, !95}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !89, file: !46, line: 168, baseType: !92, size: 32)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !93, line: 124, baseType: !94)
!93 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!94 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !89, file: !46, line: 169, baseType: !96, size: 32)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 32, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 4)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !25, file: !19, line: 229, baseType: !5, size: 32, offset: 1376)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !18, file: !19, line: 576, baseType: !23, size: 64, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !18, file: !19, line: 576, baseType: !23, size: 64, offset: 192)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !18, file: !19, line: 578, baseType: !5, size: 32, offset: 256)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !18, file: !19, line: 579, baseType: !104, size: 200, offset: 288)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 200, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 25)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !18, file: !19, line: 582, baseType: !5, size: 32, offset: 512)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !18, file: !19, line: 583, baseType: !109, size: 64, offset: 576)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !19, line: 40, flags: DIFlagFwdDecl)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !18, file: !19, line: 585, baseType: !5, size: 32, offset: 640)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !18, file: !19, line: 587, baseType: !113, size: 64, offset: 704)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DISubroutineType(types: !115)
!115 = !{null, !17}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !18, file: !19, line: 590, baseType: !117, size: 64, offset: 768)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !19, line: 47, size: 256, elements: !119)
!119 = !{!120, !121, !122, !123, !124, !125}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !118, file: !19, line: 49, baseType: !117, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !118, file: !19, line: 50, baseType: !5, size: 32, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !118, file: !19, line: 50, baseType: !5, size: 32, offset: 96)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !118, file: !19, line: 50, baseType: !5, size: 32, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !118, file: !19, line: 50, baseType: !5, size: 32, offset: 160)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !118, file: !19, line: 51, baseType: !126, size: 32, offset: 192)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 32, elements: !72)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !19, line: 25, baseType: !94)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !18, file: !19, line: 591, baseType: !5, size: 32, offset: 832)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !18, file: !19, line: 592, baseType: !117, size: 64, offset: 896)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !18, file: !19, line: 593, baseType: !131, size: 64, offset: 960)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !18, file: !19, line: 596, baseType: !5, size: 32, offset: 1024)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !18, file: !19, line: 597, baseType: !7, size: 64, offset: 1088)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !18, file: !19, line: 632, baseType: !135, size: 2880, offset: 1152)
!135 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !18, file: !19, line: 599, size: 2880, elements: !136)
!136 = !{!137, !187}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !135, file: !19, line: 622, baseType: !138, size: 1728)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !135, file: !19, line: 601, size: 1728, elements: !139)
!139 = !{!140, !141, !142, !146, !158, !159, !161, !169, !170, !171, !172, !176, !180, !181, !182, !183, !184, !185, !186}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !138, file: !19, line: 603, baseType: !94, size: 32)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !138, file: !19, line: 604, baseType: !7, size: 64, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !138, file: !19, line: 605, baseType: !143, size: 208, offset: 128)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 208, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 26)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !138, file: !19, line: 606, baseType: !147, size: 288, offset: 352)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !19, line: 55, size: 288, elements: !148)
!148 = !{!149, !150, !151, !152, !153, !154, !155, !156, !157}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !147, file: !19, line: 57, baseType: !5, size: 32)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !147, file: !19, line: 58, baseType: !5, size: 32, offset: 32)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !147, file: !19, line: 59, baseType: !5, size: 32, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !147, file: !19, line: 60, baseType: !5, size: 32, offset: 96)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !147, file: !19, line: 61, baseType: !5, size: 32, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !147, file: !19, line: 62, baseType: !5, size: 32, offset: 160)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !147, file: !19, line: 63, baseType: !5, size: 32, offset: 192)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !147, file: !19, line: 64, baseType: !5, size: 32, offset: 224)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !147, file: !19, line: 65, baseType: !5, size: 32, offset: 256)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !138, file: !19, line: 607, baseType: !5, size: 32, offset: 640)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !138, file: !19, line: 608, baseType: !160, size: 64, offset: 704)
!160 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !138, file: !19, line: 609, baseType: !162, size: 112, offset: 768)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !19, line: 319, size: 112, elements: !163)
!163 = !{!164, !167, !168}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !162, file: !19, line: 320, baseType: !165, size: 48)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 48, elements: !68)
!166 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !162, file: !19, line: 321, baseType: !165, size: 48, offset: 48)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !162, file: !19, line: 322, baseType: !166, size: 16, offset: 96)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !138, file: !19, line: 610, baseType: !84, size: 64, offset: 896)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !138, file: !19, line: 611, baseType: !84, size: 64, offset: 960)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !138, file: !19, line: 612, baseType: !84, size: 64, offset: 1024)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !138, file: !19, line: 613, baseType: !173, size: 64, offset: 1088)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 64, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 8)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !138, file: !19, line: 614, baseType: !177, size: 192, offset: 1152)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 192, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 24)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !138, file: !19, line: 615, baseType: !5, size: 32, offset: 1344)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !138, file: !19, line: 616, baseType: !84, size: 64, offset: 1376)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !138, file: !19, line: 617, baseType: !84, size: 64, offset: 1440)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !138, file: !19, line: 618, baseType: !84, size: 64, offset: 1504)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !138, file: !19, line: 619, baseType: !84, size: 64, offset: 1568)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !138, file: !19, line: 620, baseType: !84, size: 64, offset: 1632)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !138, file: !19, line: 621, baseType: !5, size: 32, offset: 1696)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !135, file: !19, line: 631, baseType: !188, size: 2880)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !135, file: !19, line: 626, size: 2880, elements: !189)
!189 = !{!190, !194}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !188, file: !19, line: 629, baseType: !191, size: 1920)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 1920, elements: !192)
!192 = !{!193}
!193 = !DISubrange(count: 30)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !188, file: !19, line: 630, baseType: !195, size: 960, offset: 1920)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 960, elements: !192)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !18, file: !19, line: 636, baseType: !197, size: 64, offset: 4032)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !19, line: 93, size: 6336, elements: !199)
!199 = !{!200, !201, !202, !209}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !198, file: !19, line: 94, baseType: !197, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !198, file: !19, line: 95, baseType: !5, size: 32, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !198, file: !19, line: 97, baseType: !203, size: 2048, offset: 128)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 2048, elements: !207)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{null}
!207 = !{!208}
!208 = !DISubrange(count: 32)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !198, file: !19, line: 98, baseType: !210, size: 4160, offset: 2176)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !19, line: 74, size: 4160, elements: !211)
!211 = !{!212, !214, !215, !216}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !210, file: !19, line: 75, baseType: !213, size: 2048)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 2048, elements: !207)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !210, file: !19, line: 76, baseType: !213, size: 2048, offset: 2048)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !210, file: !19, line: 78, baseType: !127, size: 32, offset: 4096)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !210, file: !19, line: 81, baseType: !127, size: 32, offset: 4128)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !18, file: !19, line: 637, baseType: !198, size: 6336, offset: 4096)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !18, file: !19, line: 641, baseType: !219, size: 64, offset: 10432)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{null, !5}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !18, file: !19, line: 646, baseType: !224, size: 192, offset: 10496)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !19, line: 291, size: 192, elements: !225)
!225 = !{!226, !228, !229}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !224, file: !19, line: 293, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !224, file: !19, line: 294, baseType: !5, size: 32, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !224, file: !19, line: 295, baseType: !23, size: 64, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !18, file: !19, line: 648, baseType: !231, size: 4224, offset: 10688)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 4224, elements: !68)
!232 = !{!233, !234, !235}
!233 = !DILocalVariable(name: "ptr", arg: 1, scope: !14, file: !1, line: 266, type: !17)
!234 = !DILocalVariable(name: "path", arg: 2, scope: !14, file: !1, line: 266, type: !7)
!235 = !DILocalVariable(name: "fd", scope: !14, file: !1, line: 270, type: !5)
!236 = !DILocation(line: 266, column: 1, scope: !14)
!237 = !DILocation(line: 270, column: 3, scope: !14)
!238 = !DILocation(line: 270, column: 7, scope: !14)
!239 = !DILocation(line: 272, column: 11, scope: !14)
!240 = !DILocation(line: 272, column: 55, scope: !14)
!241 = !DILocation(line: 273, column: 1, scope: !14)
!242 = !DILocation(line: 272, column: 3, scope: !14)
!243 = distinct !DISubprogram(name: "_gettemp", scope: !1, file: !1, line: 142, type: !244, isLocal: true, isDefinition: true, scopeLine: 149, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !248)
!244 = !DISubroutineType(types: !245)
!245 = !{!5, !17, !7, !4, !5, !246, !5}
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !93, line: 58, baseType: !247)
!247 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!248 = !{!249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !302}
!249 = !DILocalVariable(name: "ptr", arg: 1, scope: !243, file: !1, line: 142, type: !17)
!250 = !DILocalVariable(name: "path", arg: 2, scope: !243, file: !1, line: 142, type: !7)
!251 = !DILocalVariable(name: "doopen", arg: 3, scope: !243, file: !1, line: 142, type: !4)
!252 = !DILocalVariable(name: "domkdir", arg: 4, scope: !243, file: !1, line: 142, type: !5)
!253 = !DILocalVariable(name: "suffixlen", arg: 5, scope: !243, file: !1, line: 142, type: !246)
!254 = !DILocalVariable(name: "flags", arg: 6, scope: !243, file: !1, line: 142, type: !5)
!255 = !DILocalVariable(name: "start", scope: !243, file: !1, line: 150, type: !7)
!256 = !DILocalVariable(name: "trv", scope: !243, file: !1, line: 150, type: !7)
!257 = !DILocalVariable(name: "end", scope: !243, file: !1, line: 151, type: !7)
!258 = !DILocalVariable(name: "sbuf", scope: !243, file: !1, line: 155, type: !259)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !260, line: 27, size: 704, elements: !261)
!260 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/stat.h", directory: "/root/.unikraft/apps/redis/build")
!261 = !{!262, !266, !269, !274, !277, !280, !283, !284, !287, !294, !295, !296, !299}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !259, file: !260, line: 29, baseType: !263, size: 16)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !264, line: 177, baseType: !265)
!264 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !46, line: 54, baseType: !32)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !259, file: !260, line: 30, baseType: !267, size: 16, offset: 16)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !264, line: 155, baseType: !268)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !46, line: 73, baseType: !166)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !259, file: !260, line: 31, baseType: !270, size: 32, offset: 32)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !264, line: 205, baseType: !271)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !46, line: 88, baseType: !272)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !273, line: 79, baseType: !94)
!273 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!274 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !259, file: !260, line: 32, baseType: !275, size: 16, offset: 64)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !264, line: 210, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !46, line: 210, baseType: !166)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !259, file: !260, line: 33, baseType: !278, size: 16, offset: 80)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !264, line: 181, baseType: !279)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !46, line: 58, baseType: !166)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !259, file: !260, line: 34, baseType: !281, size: 16, offset: 96)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !264, line: 185, baseType: !282)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !46, line: 61, baseType: !166)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !259, file: !260, line: 35, baseType: !263, size: 16, offset: 112)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !259, file: !260, line: 36, baseType: !285, size: 64, offset: 128)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !264, line: 173, baseType: !286)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !46, line: 100, baseType: !77)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !259, file: !260, line: 37, baseType: !288, size: 128, offset: 192)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !289, line: 52, size: 128, elements: !290)
!289 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!290 = !{!291, !293}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !288, file: !289, line: 53, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !289, line: 34, baseType: !47)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !288, file: !289, line: 54, baseType: !47, size: 64, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !259, file: !260, line: 38, baseType: !288, size: 128, offset: 320)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !259, file: !260, line: 39, baseType: !288, size: 128, offset: 448)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !259, file: !260, line: 40, baseType: !297, size: 64, offset: 576)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "blksize_t", file: !264, line: 118, baseType: !298)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !46, line: 32, baseType: !47)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !259, file: !260, line: 41, baseType: !300, size: 64, offset: 640)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !264, line: 113, baseType: !301)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !46, line: 28, baseType: !47)
!302 = !DILocalVariable(name: "pid", scope: !243, file: !1, line: 157, type: !94)
!303 = !DILocation(line: 142, column: 1, scope: !243)
!304 = !DILocation(line: 155, column: 3, scope: !243)
!305 = !DILocation(line: 159, column: 9, scope: !243)
!306 = !DILocation(line: 157, column: 16, scope: !243)
!307 = !DILocation(line: 150, column: 26, scope: !243)
!308 = !DILocation(line: 160, column: 8, scope: !309)
!309 = distinct !DILexicalBlock(scope: !243, file: !1, line: 160, column: 3)
!310 = !DILocation(line: 0, scope: !311)
!311 = distinct !DILexicalBlock(scope: !309, file: !1, line: 160, column: 3)
!312 = !DILocation(line: 160, column: 20, scope: !311)
!313 = !{!314, !314, i64 0}
!314 = !{!"omnipotent char", !315, i64 0}
!315 = !{!"Simple C/C++ TBAA"}
!316 = !DILocation(line: 160, column: 3, scope: !309)
!317 = !DILocation(line: 160, column: 26, scope: !311)
!318 = distinct !{!318, !316, !319}
!319 = !DILocation(line: 161, column: 5, scope: !309)
!320 = !DILocation(line: 162, column: 11, scope: !321)
!321 = distinct !DILexicalBlock(scope: !243, file: !1, line: 162, column: 7)
!322 = !DILocation(line: 162, column: 18, scope: !321)
!323 = !DILocation(line: 162, column: 7, scope: !243)
!324 = !DILocation(line: 164, column: 12, scope: !325)
!325 = distinct !DILexicalBlock(scope: !321, file: !1, line: 163, column: 5)
!326 = !DILocation(line: 164, column: 19, scope: !325)
!327 = !{!328, !329, i64 0}
!328 = !{!"_reent", !329, i64 0, !330, i64 8, !330, i64 16, !330, i64 24, !329, i64 32, !314, i64 36, !329, i64 64, !330, i64 72, !329, i64 80, !330, i64 88, !330, i64 96, !329, i64 104, !330, i64 112, !330, i64 120, !329, i64 128, !330, i64 136, !314, i64 144, !330, i64 504, !331, i64 512, !330, i64 1304, !333, i64 1312, !314, i64 1336}
!329 = !{!"int", !314, i64 0}
!330 = !{!"any pointer", !314, i64 0}
!331 = !{!"_atexit", !330, i64 0, !329, i64 8, !314, i64 16, !332, i64 272}
!332 = !{!"_on_exit_args", !314, i64 0, !314, i64 256, !329, i64 512, !329, i64 516}
!333 = !{!"_glue", !330, i64 0, !329, i64 8, !330, i64 16}
!334 = !DILocation(line: 165, column: 7, scope: !325)
!335 = !DILocation(line: 167, column: 7, scope: !243)
!336 = !DILocation(line: 151, column: 9, scope: !243)
!337 = !DILocation(line: 169, column: 15, scope: !243)
!338 = !DILocation(line: 169, column: 21, scope: !243)
!339 = !DILocation(line: 169, column: 25, scope: !243)
!340 = !DILocation(line: 169, column: 24, scope: !243)
!341 = !DILocation(line: 169, column: 31, scope: !243)
!342 = !DILocation(line: 169, column: 3, scope: !243)
!343 = !DILocation(line: 171, column: 19, scope: !344)
!344 = distinct !DILexicalBlock(scope: !243, file: !1, line: 170, column: 5)
!345 = !DILocation(line: 171, column: 14, scope: !344)
!346 = !DILocation(line: 171, column: 12, scope: !344)
!347 = !DILocation(line: 172, column: 11, scope: !344)
!348 = distinct !{!348, !342, !349}
!349 = !DILocation(line: 173, column: 5, scope: !243)
!350 = !DILocation(line: 0, scope: !243)
!351 = !DILocation(line: 174, column: 11, scope: !352)
!352 = distinct !DILexicalBlock(scope: !243, file: !1, line: 174, column: 7)
!353 = !DILocation(line: 174, column: 17, scope: !352)
!354 = !DILocation(line: 174, column: 7, scope: !243)
!355 = !DILocation(line: 187, column: 15, scope: !356)
!356 = distinct !DILexicalBlock(scope: !357, file: !1, line: 187, column: 11)
!357 = distinct !DILexicalBlock(scope: !358, file: !1, line: 186, column: 5)
!358 = distinct !DILexicalBlock(scope: !359, file: !1, line: 185, column: 3)
!359 = distinct !DILexicalBlock(scope: !243, file: !1, line: 185, column: 3)
!360 = !DILocation(line: 187, column: 11, scope: !357)
!361 = !DILocation(line: 176, column: 12, scope: !362)
!362 = distinct !DILexicalBlock(scope: !352, file: !1, line: 175, column: 5)
!363 = !DILocation(line: 176, column: 19, scope: !362)
!364 = !DILocation(line: 177, column: 7, scope: !362)
!365 = !DILocation(line: 189, column: 11, scope: !366)
!366 = distinct !DILexicalBlock(scope: !357, file: !1, line: 189, column: 11)
!367 = !DILocation(line: 189, column: 16, scope: !366)
!368 = !DILocation(line: 189, column: 11, scope: !357)
!369 = !DILocation(line: 191, column: 9, scope: !370)
!370 = distinct !DILexicalBlock(scope: !366, file: !1, line: 190, column: 2)
!371 = !DILocation(line: 155, column: 15, scope: !243)
!372 = !DILocation(line: 195, column: 8, scope: !373)
!373 = distinct !DILexicalBlock(scope: !370, file: !1, line: 195, column: 8)
!374 = !DILocation(line: 195, column: 8, scope: !370)
!375 = !DILocation(line: 198, column: 15, scope: !376)
!376 = distinct !DILexicalBlock(scope: !370, file: !1, line: 198, column: 8)
!377 = !{!378, !329, i64 4}
!378 = !{!"stat", !379, i64 0, !379, i64 2, !329, i64 4, !379, i64 8, !379, i64 10, !379, i64 12, !379, i64 14, !380, i64 16, !381, i64 24, !381, i64 40, !381, i64 56, !380, i64 72, !380, i64 80}
!379 = !{!"short", !314, i64 0}
!380 = !{!"long", !314, i64 0}
!381 = !{!"timespec", !380, i64 0, !380, i64 8}
!382 = !DILocation(line: 198, column: 23, scope: !376)
!383 = !DILocation(line: 198, column: 8, scope: !370)
!384 = !DILocation(line: 200, column: 13, scope: !385)
!385 = distinct !DILexicalBlock(scope: !376, file: !1, line: 199, column: 6)
!386 = !DILocation(line: 200, column: 20, scope: !385)
!387 = !DILocation(line: 201, column: 8, scope: !385)
!388 = !DILocation(line: 203, column: 9, scope: !370)
!389 = !DILocation(line: 204, column: 4, scope: !370)
!390 = !DILocation(line: 185, column: 26, scope: !358)
!391 = distinct !{!391, !392, !393}
!392 = !DILocation(line: 185, column: 3, scope: !359)
!393 = !DILocation(line: 206, column: 5, scope: !359)
!394 = !DILocation(line: 211, column: 11, scope: !395)
!395 = distinct !DILexicalBlock(scope: !396, file: !1, line: 211, column: 11)
!396 = distinct !DILexicalBlock(scope: !397, file: !1, line: 209, column: 5)
!397 = distinct !DILexicalBlock(scope: !398, file: !1, line: 208, column: 3)
!398 = distinct !DILexicalBlock(scope: !243, file: !1, line: 208, column: 3)
!399 = !DILocation(line: 211, column: 11, scope: !396)
!400 = !DILocation(line: 219, column: 9, scope: !401)
!401 = distinct !DILexicalBlock(scope: !395, file: !1, line: 212, column: 2)
!402 = !DILocation(line: 219, column: 16, scope: !401)
!403 = !DILocation(line: 220, column: 4, scope: !401)
!404 = !DILocation(line: 225, column: 11, scope: !395)
!405 = !DILocation(line: 227, column: 19, scope: !406)
!406 = distinct !DILexicalBlock(scope: !407, file: !1, line: 227, column: 8)
!407 = distinct !DILexicalBlock(scope: !408, file: !1, line: 226, column: 2)
!408 = distinct !DILexicalBlock(scope: !395, file: !1, line: 225, column: 11)
!409 = !DILocation(line: 227, column: 17, scope: !406)
!410 = !{!329, !329, i64 0}
!411 = !DILocation(line: 228, column: 14, scope: !406)
!412 = !DILocation(line: 227, column: 8, scope: !407)
!413 = !DILocation(line: 230, column: 13, scope: !414)
!414 = distinct !DILexicalBlock(scope: !407, file: !1, line: 230, column: 8)
!415 = !DILocation(line: 230, column: 20, scope: !414)
!416 = !DILocation(line: 230, column: 8, scope: !407)
!417 = !DILocation(line: 236, column: 16, scope: !418)
!418 = distinct !DILexicalBlock(scope: !408, file: !1, line: 236, column: 16)
!419 = !DILocation(line: 236, column: 16, scope: !408)
!420 = !DILocation(line: 238, column: 15, scope: !418)
!421 = !DILocation(line: 238, column: 22, scope: !418)
!422 = !DILocation(line: 238, column: 10, scope: !418)
!423 = !DILocation(line: 238, column: 2, scope: !418)
!424 = !DILocation(line: 243, column: 8, scope: !425)
!425 = distinct !DILexicalBlock(scope: !426, file: !1, line: 242, column: 2)
!426 = distinct !DILexicalBlock(scope: !427, file: !1, line: 241, column: 7)
!427 = distinct !DILexicalBlock(scope: !396, file: !1, line: 241, column: 7)
!428 = !DILocation(line: 245, column: 8, scope: !429)
!429 = distinct !DILexicalBlock(scope: !425, file: !1, line: 245, column: 8)
!430 = !DILocation(line: 245, column: 13, scope: !429)
!431 = !DILocation(line: 245, column: 8, scope: !425)
!432 = !DILocation(line: 246, column: 13, scope: !429)
!433 = !DILocation(line: 0, scope: !429)
!434 = !DILocation(line: 243, column: 12, scope: !435)
!435 = distinct !DILexicalBlock(scope: !425, file: !1, line: 243, column: 8)
!436 = distinct !{!436, !437, !438}
!437 = !DILocation(line: 241, column: 7, scope: !427)
!438 = !DILocation(line: 256, column: 2, scope: !427)
!439 = !DILocation(line: 250, column: 12, scope: !440)
!440 = distinct !DILexicalBlock(scope: !441, file: !1, line: 250, column: 12)
!441 = distinct !DILexicalBlock(scope: !429, file: !1, line: 248, column: 6)
!442 = !DILocation(line: 253, column: 3, scope: !440)
!443 = !DILocation(line: 250, column: 12, scope: !441)
!444 = !DILocation(line: 0, scope: !440)
!445 = !DILocation(line: 0, scope: !385)
!446 = !DILocation(line: 259, column: 1, scope: !243)
!447 = distinct !DISubprogram(name: "_mkdtemp_r", scope: !1, file: !1, line: 277, type: !448, isLocal: false, isDefinition: true, scopeLine: 280, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !450)
!448 = !DISubroutineType(types: !449)
!449 = !{!7, !17, !7}
!450 = !{!451, !452}
!451 = !DILocalVariable(name: "ptr", arg: 1, scope: !447, file: !1, line: 277, type: !17)
!452 = !DILocalVariable(name: "path", arg: 2, scope: !447, file: !1, line: 277, type: !7)
!453 = !DILocation(line: 277, column: 1, scope: !447)
!454 = !DILocation(line: 142, column: 1, scope: !243, inlinedAt: !455)
!455 = distinct !DILocation(line: 281, column: 11, scope: !447)
!456 = !DILocation(line: 155, column: 3, scope: !243, inlinedAt: !455)
!457 = !DILocation(line: 159, column: 9, scope: !243, inlinedAt: !455)
!458 = !DILocation(line: 157, column: 16, scope: !243, inlinedAt: !455)
!459 = !DILocation(line: 150, column: 26, scope: !243, inlinedAt: !455)
!460 = !DILocation(line: 160, column: 8, scope: !309, inlinedAt: !455)
!461 = !DILocation(line: 0, scope: !311, inlinedAt: !455)
!462 = !DILocation(line: 160, column: 20, scope: !311, inlinedAt: !455)
!463 = !DILocation(line: 160, column: 3, scope: !309, inlinedAt: !455)
!464 = !DILocation(line: 160, column: 26, scope: !311, inlinedAt: !455)
!465 = !DILocation(line: 162, column: 11, scope: !321, inlinedAt: !455)
!466 = !DILocation(line: 151, column: 9, scope: !243, inlinedAt: !455)
!467 = !DILocation(line: 169, column: 15, scope: !243, inlinedAt: !455)
!468 = !DILocation(line: 169, column: 21, scope: !243, inlinedAt: !455)
!469 = !DILocation(line: 169, column: 25, scope: !243, inlinedAt: !455)
!470 = !DILocation(line: 169, column: 24, scope: !243, inlinedAt: !455)
!471 = !DILocation(line: 169, column: 31, scope: !243, inlinedAt: !455)
!472 = !DILocation(line: 169, column: 3, scope: !243, inlinedAt: !455)
!473 = !DILocation(line: 171, column: 19, scope: !344, inlinedAt: !455)
!474 = !DILocation(line: 171, column: 14, scope: !344, inlinedAt: !455)
!475 = !DILocation(line: 171, column: 12, scope: !344, inlinedAt: !455)
!476 = !DILocation(line: 172, column: 11, scope: !344, inlinedAt: !455)
!477 = !DILocation(line: 174, column: 11, scope: !352, inlinedAt: !455)
!478 = !DILocation(line: 0, scope: !243, inlinedAt: !455)
!479 = !DILocation(line: 174, column: 17, scope: !352, inlinedAt: !455)
!480 = !DILocation(line: 174, column: 7, scope: !243, inlinedAt: !455)
!481 = !DILocation(line: 187, column: 15, scope: !356, inlinedAt: !455)
!482 = !DILocation(line: 187, column: 11, scope: !357, inlinedAt: !455)
!483 = !DILocation(line: 189, column: 16, scope: !366, inlinedAt: !455)
!484 = !DILocation(line: 189, column: 11, scope: !357, inlinedAt: !455)
!485 = !DILocation(line: 191, column: 9, scope: !370, inlinedAt: !455)
!486 = !DILocation(line: 155, column: 15, scope: !243, inlinedAt: !455)
!487 = !DILocation(line: 195, column: 8, scope: !373, inlinedAt: !455)
!488 = !DILocation(line: 195, column: 8, scope: !370, inlinedAt: !455)
!489 = !DILocation(line: 198, column: 15, scope: !376, inlinedAt: !455)
!490 = !DILocation(line: 198, column: 23, scope: !376, inlinedAt: !455)
!491 = !DILocation(line: 198, column: 8, scope: !370, inlinedAt: !455)
!492 = !DILocation(line: 203, column: 9, scope: !370, inlinedAt: !455)
!493 = !DILocation(line: 204, column: 4, scope: !370, inlinedAt: !455)
!494 = !DILocation(line: 185, column: 26, scope: !358, inlinedAt: !455)
!495 = !DILocation(line: 189, column: 11, scope: !366, inlinedAt: !455)
!496 = !DILocation(line: 0, scope: !447)
!497 = !DILocation(line: 259, column: 1, scope: !243, inlinedAt: !455)
!498 = !DILocation(line: 281, column: 3, scope: !447)
!499 = distinct !DISubprogram(name: "_mkstemps_r", scope: !1, file: !1, line: 285, type: !500, isLocal: false, isDefinition: true, scopeLine: 289, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !502)
!500 = !DISubroutineType(types: !501)
!501 = !{!5, !17, !7, !5}
!502 = !{!503, !504, !505, !506}
!503 = !DILocalVariable(name: "ptr", arg: 1, scope: !499, file: !1, line: 285, type: !17)
!504 = !DILocalVariable(name: "path", arg: 2, scope: !499, file: !1, line: 285, type: !7)
!505 = !DILocalVariable(name: "len", arg: 3, scope: !499, file: !1, line: 285, type: !5)
!506 = !DILocalVariable(name: "fd", scope: !499, file: !1, line: 290, type: !5)
!507 = !DILocation(line: 285, column: 1, scope: !499)
!508 = !DILocation(line: 290, column: 3, scope: !499)
!509 = !DILocation(line: 292, column: 40, scope: !499)
!510 = !DILocation(line: 290, column: 7, scope: !499)
!511 = !DILocation(line: 292, column: 11, scope: !499)
!512 = !DILocation(line: 292, column: 57, scope: !499)
!513 = !DILocation(line: 293, column: 1, scope: !499)
!514 = !DILocation(line: 292, column: 3, scope: !499)
!515 = distinct !DISubprogram(name: "_mkostemp_r", scope: !1, file: !1, line: 296, type: !500, isLocal: false, isDefinition: true, scopeLine: 300, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !516)
!516 = !{!517, !518, !519, !520}
!517 = !DILocalVariable(name: "ptr", arg: 1, scope: !515, file: !1, line: 296, type: !17)
!518 = !DILocalVariable(name: "path", arg: 2, scope: !515, file: !1, line: 296, type: !7)
!519 = !DILocalVariable(name: "flags", arg: 3, scope: !515, file: !1, line: 296, type: !5)
!520 = !DILocalVariable(name: "fd", scope: !515, file: !1, line: 301, type: !5)
!521 = !DILocation(line: 296, column: 1, scope: !515)
!522 = !DILocation(line: 301, column: 3, scope: !515)
!523 = !DILocation(line: 303, column: 49, scope: !515)
!524 = !DILocation(line: 301, column: 7, scope: !515)
!525 = !DILocation(line: 303, column: 11, scope: !515)
!526 = !DILocation(line: 303, column: 65, scope: !515)
!527 = !DILocation(line: 304, column: 1, scope: !515)
!528 = !DILocation(line: 303, column: 3, scope: !515)
!529 = distinct !DISubprogram(name: "_mkostemps_r", scope: !1, file: !1, line: 307, type: !530, isLocal: false, isDefinition: true, scopeLine: 312, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !532)
!530 = !DISubroutineType(types: !531)
!531 = !{!5, !17, !7, !5, !5}
!532 = !{!533, !534, !535, !536, !537}
!533 = !DILocalVariable(name: "ptr", arg: 1, scope: !529, file: !1, line: 307, type: !17)
!534 = !DILocalVariable(name: "path", arg: 2, scope: !529, file: !1, line: 307, type: !7)
!535 = !DILocalVariable(name: "len", arg: 3, scope: !529, file: !1, line: 307, type: !5)
!536 = !DILocalVariable(name: "flags", arg: 4, scope: !529, file: !1, line: 307, type: !5)
!537 = !DILocalVariable(name: "fd", scope: !529, file: !1, line: 313, type: !5)
!538 = !DILocation(line: 307, column: 1, scope: !529)
!539 = !DILocation(line: 313, column: 3, scope: !529)
!540 = !DILocation(line: 315, column: 40, scope: !529)
!541 = !DILocation(line: 315, column: 51, scope: !529)
!542 = !DILocation(line: 313, column: 7, scope: !529)
!543 = !DILocation(line: 315, column: 11, scope: !529)
!544 = !DILocation(line: 315, column: 67, scope: !529)
!545 = !DILocation(line: 316, column: 1, scope: !529)
!546 = !DILocation(line: 315, column: 3, scope: !529)
!547 = distinct !DISubprogram(name: "_mktemp_r", scope: !1, file: !1, line: 320, type: !448, isLocal: false, isDefinition: true, scopeLine: 323, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !548)
!548 = !{!549, !550}
!549 = !DILocalVariable(name: "ptr", arg: 1, scope: !547, file: !1, line: 320, type: !17)
!550 = !DILocalVariable(name: "path", arg: 2, scope: !547, file: !1, line: 320, type: !7)
!551 = !DILocation(line: 320, column: 1, scope: !547)
!552 = !DILocation(line: 324, column: 11, scope: !547)
!553 = !DILocation(line: 324, column: 3, scope: !547)
!554 = distinct !DISubprogram(name: "mkstemp", scope: !1, file: !1, line: 330, type: !555, isLocal: false, isDefinition: true, scopeLine: 332, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !557)
!555 = !DISubroutineType(types: !556)
!556 = !{!5, !7}
!557 = !{!558, !559}
!558 = !DILocalVariable(name: "path", arg: 1, scope: !554, file: !1, line: 330, type: !7)
!559 = !DILocalVariable(name: "fd", scope: !554, file: !1, line: 333, type: !5)
!560 = !DILocation(line: 330, column: 1, scope: !554)
!561 = !DILocation(line: 333, column: 3, scope: !554)
!562 = !DILocation(line: 335, column: 21, scope: !554)
!563 = !DILocation(line: 333, column: 7, scope: !554)
!564 = !DILocation(line: 335, column: 11, scope: !554)
!565 = !DILocation(line: 335, column: 58, scope: !554)
!566 = !DILocation(line: 336, column: 1, scope: !554)
!567 = !DILocation(line: 335, column: 3, scope: !554)
!568 = distinct !DISubprogram(name: "mkdtemp", scope: !1, file: !1, line: 340, type: !569, isLocal: false, isDefinition: true, scopeLine: 342, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !571)
!569 = !DISubroutineType(types: !570)
!570 = !{!7, !7}
!571 = !{!572}
!572 = !DILocalVariable(name: "path", arg: 1, scope: !568, file: !1, line: 340, type: !7)
!573 = !DILocation(line: 340, column: 1, scope: !568)
!574 = !DILocation(line: 343, column: 21, scope: !568)
!575 = !DILocation(line: 142, column: 1, scope: !243, inlinedAt: !576)
!576 = distinct !DILocation(line: 343, column: 11, scope: !568)
!577 = !DILocation(line: 155, column: 3, scope: !243, inlinedAt: !576)
!578 = !DILocation(line: 159, column: 9, scope: !243, inlinedAt: !576)
!579 = !DILocation(line: 157, column: 16, scope: !243, inlinedAt: !576)
!580 = !DILocation(line: 150, column: 26, scope: !243, inlinedAt: !576)
!581 = !DILocation(line: 160, column: 8, scope: !309, inlinedAt: !576)
!582 = !DILocation(line: 0, scope: !311, inlinedAt: !576)
!583 = !DILocation(line: 160, column: 20, scope: !311, inlinedAt: !576)
!584 = !DILocation(line: 160, column: 3, scope: !309, inlinedAt: !576)
!585 = !DILocation(line: 160, column: 26, scope: !311, inlinedAt: !576)
!586 = !DILocation(line: 162, column: 11, scope: !321, inlinedAt: !576)
!587 = !DILocation(line: 151, column: 9, scope: !243, inlinedAt: !576)
!588 = !DILocation(line: 169, column: 15, scope: !243, inlinedAt: !576)
!589 = !DILocation(line: 169, column: 21, scope: !243, inlinedAt: !576)
!590 = !DILocation(line: 169, column: 25, scope: !243, inlinedAt: !576)
!591 = !DILocation(line: 169, column: 24, scope: !243, inlinedAt: !576)
!592 = !DILocation(line: 169, column: 31, scope: !243, inlinedAt: !576)
!593 = !DILocation(line: 169, column: 3, scope: !243, inlinedAt: !576)
!594 = !DILocation(line: 171, column: 19, scope: !344, inlinedAt: !576)
!595 = !DILocation(line: 171, column: 14, scope: !344, inlinedAt: !576)
!596 = !DILocation(line: 171, column: 12, scope: !344, inlinedAt: !576)
!597 = !DILocation(line: 172, column: 11, scope: !344, inlinedAt: !576)
!598 = !DILocation(line: 174, column: 11, scope: !352, inlinedAt: !576)
!599 = !DILocation(line: 0, scope: !243, inlinedAt: !576)
!600 = !DILocation(line: 174, column: 17, scope: !352, inlinedAt: !576)
!601 = !DILocation(line: 174, column: 7, scope: !243, inlinedAt: !576)
!602 = !DILocation(line: 187, column: 15, scope: !356, inlinedAt: !576)
!603 = !DILocation(line: 187, column: 11, scope: !357, inlinedAt: !576)
!604 = !DILocation(line: 189, column: 16, scope: !366, inlinedAt: !576)
!605 = !DILocation(line: 189, column: 11, scope: !357, inlinedAt: !576)
!606 = !DILocation(line: 191, column: 9, scope: !370, inlinedAt: !576)
!607 = !DILocation(line: 155, column: 15, scope: !243, inlinedAt: !576)
!608 = !DILocation(line: 195, column: 8, scope: !373, inlinedAt: !576)
!609 = !DILocation(line: 195, column: 8, scope: !370, inlinedAt: !576)
!610 = !DILocation(line: 198, column: 15, scope: !376, inlinedAt: !576)
!611 = !DILocation(line: 198, column: 23, scope: !376, inlinedAt: !576)
!612 = !DILocation(line: 198, column: 8, scope: !370, inlinedAt: !576)
!613 = !DILocation(line: 203, column: 9, scope: !370, inlinedAt: !576)
!614 = !DILocation(line: 204, column: 4, scope: !370, inlinedAt: !576)
!615 = !DILocation(line: 185, column: 26, scope: !358, inlinedAt: !576)
!616 = !DILocation(line: 189, column: 11, scope: !366, inlinedAt: !576)
!617 = !DILocation(line: 0, scope: !568)
!618 = !DILocation(line: 259, column: 1, scope: !243, inlinedAt: !576)
!619 = !DILocation(line: 343, column: 3, scope: !568)
!620 = distinct !DISubprogram(name: "mkstemps", scope: !1, file: !1, line: 347, type: !621, isLocal: false, isDefinition: true, scopeLine: 350, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !623)
!621 = !DISubroutineType(types: !622)
!622 = !{!5, !7, !5}
!623 = !{!624, !625, !626}
!624 = !DILocalVariable(name: "path", arg: 1, scope: !620, file: !1, line: 347, type: !7)
!625 = !DILocalVariable(name: "len", arg: 2, scope: !620, file: !1, line: 347, type: !5)
!626 = !DILocalVariable(name: "fd", scope: !620, file: !1, line: 351, type: !5)
!627 = !DILocation(line: 347, column: 1, scope: !620)
!628 = !DILocation(line: 351, column: 3, scope: !620)
!629 = !DILocation(line: 353, column: 21, scope: !620)
!630 = !DILocation(line: 353, column: 43, scope: !620)
!631 = !DILocation(line: 351, column: 7, scope: !620)
!632 = !DILocation(line: 353, column: 11, scope: !620)
!633 = !DILocation(line: 353, column: 60, scope: !620)
!634 = !DILocation(line: 354, column: 1, scope: !620)
!635 = !DILocation(line: 353, column: 3, scope: !620)
!636 = distinct !DISubprogram(name: "mkostemp", scope: !1, file: !1, line: 357, type: !621, isLocal: false, isDefinition: true, scopeLine: 360, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !637)
!637 = !{!638, !639, !640}
!638 = !DILocalVariable(name: "path", arg: 1, scope: !636, file: !1, line: 357, type: !7)
!639 = !DILocalVariable(name: "flags", arg: 2, scope: !636, file: !1, line: 357, type: !5)
!640 = !DILocalVariable(name: "fd", scope: !636, file: !1, line: 361, type: !5)
!641 = !DILocation(line: 357, column: 1, scope: !636)
!642 = !DILocation(line: 361, column: 3, scope: !636)
!643 = !DILocation(line: 363, column: 21, scope: !636)
!644 = !DILocation(line: 363, column: 52, scope: !636)
!645 = !DILocation(line: 361, column: 7, scope: !636)
!646 = !DILocation(line: 363, column: 11, scope: !636)
!647 = !DILocation(line: 363, column: 68, scope: !636)
!648 = !DILocation(line: 364, column: 1, scope: !636)
!649 = !DILocation(line: 363, column: 3, scope: !636)
!650 = distinct !DISubprogram(name: "mkostemps", scope: !1, file: !1, line: 367, type: !651, isLocal: false, isDefinition: true, scopeLine: 371, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !653)
!651 = !DISubroutineType(types: !652)
!652 = !{!5, !7, !5, !5}
!653 = !{!654, !655, !656, !657}
!654 = !DILocalVariable(name: "path", arg: 1, scope: !650, file: !1, line: 367, type: !7)
!655 = !DILocalVariable(name: "len", arg: 2, scope: !650, file: !1, line: 367, type: !5)
!656 = !DILocalVariable(name: "flags", arg: 3, scope: !650, file: !1, line: 367, type: !5)
!657 = !DILocalVariable(name: "fd", scope: !650, file: !1, line: 372, type: !5)
!658 = !DILocation(line: 367, column: 1, scope: !650)
!659 = !DILocation(line: 372, column: 3, scope: !650)
!660 = !DILocation(line: 374, column: 21, scope: !650)
!661 = !DILocation(line: 374, column: 43, scope: !650)
!662 = !DILocation(line: 374, column: 54, scope: !650)
!663 = !DILocation(line: 372, column: 7, scope: !650)
!664 = !DILocation(line: 374, column: 11, scope: !650)
!665 = !DILocation(line: 374, column: 70, scope: !650)
!666 = !DILocation(line: 375, column: 1, scope: !650)
!667 = !DILocation(line: 374, column: 3, scope: !650)
!668 = distinct !DISubprogram(name: "mktemp", scope: !1, file: !1, line: 379, type: !569, isLocal: false, isDefinition: true, scopeLine: 381, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !669)
!669 = !{!670}
!670 = !DILocalVariable(name: "path", arg: 1, scope: !668, file: !1, line: 379, type: !7)
!671 = !DILocation(line: 379, column: 1, scope: !668)
!672 = !DILocation(line: 382, column: 21, scope: !668)
!673 = !DILocation(line: 382, column: 11, scope: !668)
!674 = !DILocation(line: 382, column: 3, scope: !668)
