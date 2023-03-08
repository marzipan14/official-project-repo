; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/mprec.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/mprec.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._Bigint = type { %struct._Bigint*, i32, i32, i32, i32, [1 x i32] }
%struct._reent = type { i32, %struct.__sFILE*, %struct.__sFILE*, %struct.__sFILE*, i32, [25 x i8], i32, %struct.__locale_t*, i32, void (%struct._reent*)*, %struct._Bigint*, i32, %struct._Bigint*, %struct._Bigint**, i32, i8*, %union.anon.0, %struct._atexit*, %struct._atexit, void (i32)**, %struct._glue, [3 x %struct.__sFILE] }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i64, i32)*, i32 (%struct._reent*, i8*)*, %struct.__sbuf, i8*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64, %struct._reent*, i32, %struct._mbstate_t, i32 }
%struct.__sbuf = type { i8*, i32 }
%struct._mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__locale_t = type { [7 x [32 x i8]], i32 (%struct._reent*, i8*, i32, %struct._mbstate_t*)*, i32 (%struct._reent*, i32*, i8*, i64, %struct._mbstate_t*)*, i32, i8*, %struct.lconv, [2 x i8], [32 x i8], [32 x i8] }
%struct.lconv = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { [30 x i8*], [30 x i32] }
%struct._atexit = type { %struct._atexit*, i32, [32 x void ()*], %struct._on_exit_args }
%struct._on_exit_args = type { [32 x i8*], [32 x i8*], i32, i32 }
%struct._glue = type { %struct._glue*, i32, %struct.__sFILE* }

@__pow5mult.p05 = internal unnamed_addr constant [3 x i32] [i32 5, i32 25, i32 125], align 4, !dbg !0
@__mprec_tens = dso_local local_unnamed_addr constant [25 x double] [double 1.000000e+00, double 1.000000e+01, double 1.000000e+02, double 1.000000e+03, double 1.000000e+04, double 1.000000e+05, double 1.000000e+06, double 1.000000e+07, double 1.000000e+08, double 1.000000e+09, double 1.000000e+10, double 1.000000e+11, double 1.000000e+12, double 1.000000e+13, double 1.000000e+14, double 1.000000e+15, double 1.000000e+16, double 1.000000e+17, double 1.000000e+18, double 1.000000e+19, double 1.000000e+20, double 1.000000e+21, double 1.000000e+22, double 0x44B52D02C7E14AF6, double 0x44EA784379D99DB4], align 16, !dbg !295
@__mprec_bigtens = dso_local local_unnamed_addr constant [5 x double] [double 1.000000e+16, double 1.000000e+32, double 1.000000e+64, double 1.000000e+128, double 1.000000e+256], align 16, !dbg !300
@__mprec_tinytens = dso_local local_unnamed_addr constant [5 x double] [double 0x3C9CD2B297D889BC, double 1.000000e-32, double 0x32A50FFD44F4A73D, double 1.000000e-128, double 0xAC8062864AC6F43], align 16, !dbg !305
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local %struct._Bigint* @_Balloc(%struct._reent* nocapture, i32) local_unnamed_addr #0 !dbg !321 {
  %3 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 13, !dbg !330
  %4 = load %struct._Bigint**, %struct._Bigint*** %3, align 8, !dbg !330, !tbaa !332
  %5 = icmp eq %struct._Bigint** %4, null, !dbg !341
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !342
  br i1 %5, label %6, label %11, !dbg !342

; <label>:6:                                      ; preds = %2
  %7 = tail call i8* @calloc(i64 8, i64 65) #4, !dbg !343
  %8 = bitcast %struct._Bigint*** %3 to i8**, !dbg !345
  store i8* %7, i8** %8, align 8, !dbg !345, !tbaa !332
  %9 = icmp eq i8* %7, null, !dbg !346
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !348
  %10 = bitcast i8* %7 to %struct._Bigint**, !dbg !348
  br i1 %9, label %39, label %11, !dbg !348

; <label>:11:                                     ; preds = %6, %2
  %12 = phi %struct._Bigint** [ %10, %6 ], [ %4, %2 ], !dbg !349
  %13 = sext i32 %1 to i64, !dbg !349
  %14 = getelementptr inbounds %struct._Bigint*, %struct._Bigint** %12, i64 %13, !dbg !349
  %15 = load %struct._Bigint*, %struct._Bigint** %14, align 8, !dbg !349, !tbaa !351
  %16 = icmp eq %struct._Bigint* %15, null, !dbg !353
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !354
  br i1 %16, label %21, label %17, !dbg !354

; <label>:17:                                     ; preds = %11
  %18 = bitcast %struct._Bigint* %15 to i64*, !dbg !355
  %19 = load i64, i64* %18, align 8, !dbg !355, !tbaa !357
  %20 = bitcast %struct._Bigint** %14 to i64*, !dbg !359
  store i64 %19, i64* %20, align 8, !dbg !359, !tbaa !351
  br label %35, !dbg !360

; <label>:21:                                     ; preds = %11
  %22 = shl i32 1, %1, !dbg !361
  %23 = add nsw i32 %22, -1, !dbg !364
  %24 = sext i32 %23 to i64, !dbg !364
  %25 = shl nsw i64 %24, 2, !dbg !364
  %26 = add nsw i64 %25, 32, !dbg !364
  %27 = tail call i8* @calloc(i64 1, i64 %26) #4, !dbg !364
  %28 = icmp eq i8* %27, null, !dbg !365
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !367
  br i1 %28, label %39, label %29, !dbg !367

; <label>:29:                                     ; preds = %21
  %30 = bitcast i8* %27 to %struct._Bigint*, !dbg !368
  %31 = getelementptr inbounds i8, i8* %27, i64 8, !dbg !369
  %32 = bitcast i8* %31 to i32*, !dbg !369
  store i32 %1, i32* %32, align 8, !dbg !370, !tbaa !371
  %33 = getelementptr inbounds i8, i8* %27, i64 12, !dbg !372
  %34 = bitcast i8* %33 to i32*, !dbg !372
  store i32 %22, i32* %34, align 4, !dbg !373, !tbaa !374
  br label %35

; <label>:35:                                     ; preds = %29, %17
  %36 = phi %struct._Bigint* [ %15, %17 ], [ %30, %29 ], !dbg !375
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %37 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %36, i64 0, i32 4, !dbg !376
  store i32 0, i32* %37, align 4, !dbg !377, !tbaa !378
  %38 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %36, i64 0, i32 3, !dbg !379
  store i32 0, i32* %38, align 8, !dbg !380, !tbaa !381
  br label %39, !dbg !382

; <label>:39:                                     ; preds = %21, %6, %35
  %40 = phi %struct._Bigint* [ %36, %35 ], [ null, %6 ], [ null, %21 ], !dbg !383
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !384
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !386
  ret %struct._Bigint* %40, !dbg !386
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone nounwind
define dso_local void @_Bfree(%struct._reent* nocapture readonly, %struct._Bigint*) local_unnamed_addr #0 !dbg !387 {
  %3 = icmp eq %struct._Bigint* %1, null, !dbg !394
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !396
  br i1 %3, label %14, label %4, !dbg !396

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 13, !dbg !397
  %6 = load %struct._Bigint**, %struct._Bigint*** %5, align 8, !dbg !397, !tbaa !332
  %7 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %1, i64 0, i32 1, !dbg !399
  %8 = load i32, i32* %7, align 8, !dbg !399, !tbaa !371
  %9 = sext i32 %8 to i64, !dbg !397
  %10 = getelementptr inbounds %struct._Bigint*, %struct._Bigint** %6, i64 %9, !dbg !397
  %11 = bitcast %struct._Bigint** %10 to i64*, !dbg !397
  %12 = load i64, i64* %11, align 8, !dbg !397, !tbaa !351
  %13 = bitcast %struct._Bigint* %1 to i64*, !dbg !400
  store i64 %12, i64* %13, align 8, !dbg !400, !tbaa !357
  store %struct._Bigint* %1, %struct._Bigint** %10, align 8, !dbg !401, !tbaa !351
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !402
  br label %14, !dbg !402

; <label>:14:                                     ; preds = %2, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !403
  ret void, !dbg !403
}

; Function Attrs: noredzone nounwind
define dso_local %struct._Bigint* @__multadd(%struct._reent* nocapture, %struct._Bigint*, i32, i32) local_unnamed_addr #0 !dbg !404 {
  %5 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %1, i64 0, i32 4, !dbg !421
  %6 = load i32, i32* %5, align 4, !dbg !421, !tbaa !378
  %7 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %1, i64 0, i32 5, i64 0, !dbg !423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !426
  br label %8, !dbg !426

; <label>:8:                                      ; preds = %8, %4
  %9 = phi i32* [ %7, %4 ], [ %24, %8 ], !dbg !427
  %10 = phi i32 [ 0, %4 ], [ %25, %8 ], !dbg !429
  %11 = phi i32 [ %3, %4 ], [ %20, %8 ]
  %12 = load i32, i32* %9, align 4, !dbg !430, !tbaa !431
  %13 = and i32 %12, 65535, !dbg !433
  %14 = mul i32 %13, %2, !dbg !434
  %15 = add i32 %14, %11, !dbg !435
  %16 = lshr i32 %12, 16, !dbg !437
  %17 = mul i32 %16, %2, !dbg !438
  %18 = lshr i32 %15, 16, !dbg !439
  %19 = add i32 %18, %17, !dbg !440
  %20 = lshr i32 %19, 16, !dbg !442
  %21 = shl i32 %19, 16, !dbg !443
  %22 = and i32 %15, 65535, !dbg !444
  %23 = or i32 %21, %22, !dbg !445
  %24 = getelementptr inbounds i32, i32* %9, i64 1, !dbg !446
  store i32 %23, i32* %9, align 4, !dbg !447, !tbaa !431
  %25 = add nuw nsw i32 %10, 1, !dbg !448
  %26 = icmp slt i32 %25, %6, !dbg !449
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !450
  br i1 %26, label %8, label %27, !dbg !450, !llvm.loop !451

; <label>:27:                                     ; preds = %8
  %28 = icmp eq i32 %20, 0, !dbg !453
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !455
  br i1 %28, label %98, label %29, !dbg !455

; <label>:29:                                     ; preds = %27
  %30 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %1, i64 0, i32 2, !dbg !456
  %31 = load i32, i32* %30, align 4, !dbg !456, !tbaa !374
  %32 = icmp slt i32 %6, %31, !dbg !459
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !460
  br i1 %32, label %92, label %33, !dbg !460

; <label>:33:                                     ; preds = %29
  %34 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %1, i64 0, i32 1, !dbg !461
  %35 = load i32, i32* %34, align 8, !dbg !461, !tbaa !371
  %36 = add nsw i32 %35, 1, !dbg !463
  %37 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 13, !dbg !466
  %38 = load %struct._Bigint**, %struct._Bigint*** %37, align 8, !dbg !466, !tbaa !332
  %39 = icmp eq %struct._Bigint** %38, null, !dbg !467
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !468
  br i1 %39, label %40, label %45, !dbg !468

; <label>:40:                                     ; preds = %33
  %41 = tail call i8* @calloc(i64 8, i64 65) #4, !dbg !469
  %42 = bitcast %struct._Bigint*** %37 to i8**, !dbg !470
  store i8* %41, i8** %42, align 8, !dbg !470, !tbaa !332
  %43 = icmp eq i8* %41, null, !dbg !471
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !472
  %44 = bitcast i8* %41 to %struct._Bigint**, !dbg !472
  br i1 %43, label %73, label %45, !dbg !472

; <label>:45:                                     ; preds = %40, %33
  %46 = phi %struct._Bigint** [ %44, %40 ], [ %38, %33 ], !dbg !473
  %47 = sext i32 %36 to i64, !dbg !473
  %48 = getelementptr inbounds %struct._Bigint*, %struct._Bigint** %46, i64 %47, !dbg !473
  %49 = load %struct._Bigint*, %struct._Bigint** %48, align 8, !dbg !473, !tbaa !351
  %50 = icmp eq %struct._Bigint* %49, null, !dbg !475
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !476
  br i1 %50, label %55, label %51, !dbg !476

; <label>:51:                                     ; preds = %45
  %52 = bitcast %struct._Bigint* %49 to i64*, !dbg !477
  %53 = load i64, i64* %52, align 8, !dbg !477, !tbaa !357
  %54 = bitcast %struct._Bigint** %48 to i64*, !dbg !478
  store i64 %53, i64* %54, align 8, !dbg !478, !tbaa !351
  br label %69, !dbg !479

; <label>:55:                                     ; preds = %45
  %56 = shl i32 1, %36, !dbg !480
  %57 = add nsw i32 %56, -1, !dbg !482
  %58 = sext i32 %57 to i64, !dbg !482
  %59 = shl nsw i64 %58, 2, !dbg !482
  %60 = add nsw i64 %59, 32, !dbg !482
  %61 = tail call i8* @calloc(i64 1, i64 %60) #4, !dbg !482
  %62 = icmp eq i8* %61, null, !dbg !483
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !484
  br i1 %62, label %73, label %63, !dbg !484

; <label>:63:                                     ; preds = %55
  %64 = bitcast i8* %61 to %struct._Bigint*, !dbg !485
  %65 = getelementptr inbounds i8, i8* %61, i64 8, !dbg !486
  %66 = bitcast i8* %65 to i32*, !dbg !486
  store i32 %36, i32* %66, align 8, !dbg !487, !tbaa !371
  %67 = getelementptr inbounds i8, i8* %61, i64 12, !dbg !488
  %68 = bitcast i8* %67 to i32*, !dbg !488
  store i32 %56, i32* %68, align 4, !dbg !489, !tbaa !374
  br label %69

; <label>:69:                                     ; preds = %63, %51
  %70 = phi %struct._Bigint* [ %49, %51 ], [ %64, %63 ], !dbg !490
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %71 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %70, i64 0, i32 4, !dbg !491
  store i32 0, i32* %71, align 4, !dbg !492, !tbaa !378
  %72 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %70, i64 0, i32 3, !dbg !493
  store i32 0, i32* %72, align 8, !dbg !494, !tbaa !381
  br label %73, !dbg !495

; <label>:73:                                     ; preds = %55, %40, %69
  %74 = phi %struct._Bigint* [ %70, %69 ], [ null, %40 ], [ null, %55 ], !dbg !496
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !497
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !498
  %75 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %74, i64 0, i32 3, !dbg !500
  %76 = bitcast i32* %75 to i8*, !dbg !500
  %77 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %1, i64 0, i32 3, !dbg !500
  %78 = bitcast i32* %77 to i8*, !dbg !500
  %79 = load i32, i32* %5, align 4, !dbg !500, !tbaa !378
  %80 = sext i32 %79 to i64, !dbg !500
  %81 = shl nsw i64 %80, 2, !dbg !500
  %82 = add nsw i64 %81, 8, !dbg !500
  %83 = tail call i8* @memcpy(i8* nonnull %76, i8* nonnull %78, i64 %82) #4, !dbg !500
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !503
  %84 = load %struct._Bigint**, %struct._Bigint*** %37, align 8, !dbg !504, !tbaa !332
  %85 = load i32, i32* %34, align 8, !dbg !505, !tbaa !371
  %86 = sext i32 %85 to i64, !dbg !504
  %87 = getelementptr inbounds %struct._Bigint*, %struct._Bigint** %84, i64 %86, !dbg !504
  %88 = bitcast %struct._Bigint** %87 to i64*, !dbg !504
  %89 = load i64, i64* %88, align 8, !dbg !504, !tbaa !351
  %90 = bitcast %struct._Bigint* %1 to i64*, !dbg !506
  store i64 %89, i64* %90, align 8, !dbg !506, !tbaa !357
  store %struct._Bigint* %1, %struct._Bigint** %87, align 8, !dbg !507, !tbaa !351
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !508
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !509
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !510
  %91 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %74, i64 0, i32 4, !dbg !511
  br label %92, !dbg !510

; <label>:92:                                     ; preds = %29, %73
  %93 = phi i32* [ %5, %29 ], [ %91, %73 ], !dbg !511
  %94 = phi %struct._Bigint* [ %1, %29 ], [ %74, %73 ]
  %95 = add nsw i32 %6, 1, !dbg !512
  %96 = sext i32 %6 to i64, !dbg !513
  %97 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %94, i64 0, i32 5, i64 %96, !dbg !513
  store i32 %20, i32* %97, align 4, !dbg !514, !tbaa !431
  store i32 %95, i32* %93, align 4, !dbg !515, !tbaa !378
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !516
  br label %98, !dbg !516

; <label>:98:                                     ; preds = %27, %92
  %99 = phi %struct._Bigint* [ %94, %92 ], [ %1, %27 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !517
  ret %struct._Bigint* %99, !dbg !517
}

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local %struct._Bigint* @__s2b(%struct._reent* nocapture, i8* nocapture readonly, i32, i32, i32) local_unnamed_addr #0 !dbg !518 {
  %6 = add nsw i32 %3, 8, !dbg !533
  %7 = sdiv i32 %6, 9, !dbg !534
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !538
  %8 = icmp sgt i32 %3, 9, !dbg !540
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !542
  br i1 %8, label %9, label %15, !dbg !542

; <label>:9:                                      ; preds = %5, %9
  %10 = phi i32 [ %12, %9 ], [ 1, %5 ]
  %11 = phi i32 [ %13, %9 ], [ 0, %5 ]
  %12 = shl i32 %10, 1, !dbg !543
  %13 = add nuw nsw i32 %11, 1, !dbg !544
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !545
  %14 = icmp sgt i32 %7, %12, !dbg !540
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !542
  br i1 %14, label %9, label %15, !dbg !542, !llvm.loop !546

; <label>:15:                                     ; preds = %9, %5
  %16 = phi i32 [ 0, %5 ], [ %13, %9 ], !dbg !548
  %17 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 13, !dbg !551
  %18 = load %struct._Bigint**, %struct._Bigint*** %17, align 8, !dbg !551, !tbaa !332
  %19 = icmp eq %struct._Bigint** %18, null, !dbg !552
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !553
  br i1 %19, label %20, label %25, !dbg !553

; <label>:20:                                     ; preds = %15
  %21 = tail call i8* @calloc(i64 8, i64 65) #4, !dbg !554
  %22 = bitcast %struct._Bigint*** %17 to i8**, !dbg !555
  store i8* %21, i8** %22, align 8, !dbg !555, !tbaa !332
  %23 = icmp eq i8* %21, null, !dbg !556
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !557
  %24 = bitcast i8* %21 to %struct._Bigint**, !dbg !557
  br i1 %23, label %53, label %25, !dbg !557

; <label>:25:                                     ; preds = %20, %15
  %26 = phi %struct._Bigint** [ %24, %20 ], [ %18, %15 ], !dbg !558
  %27 = zext i32 %16 to i64, !dbg !558
  %28 = getelementptr inbounds %struct._Bigint*, %struct._Bigint** %26, i64 %27, !dbg !558
  %29 = load %struct._Bigint*, %struct._Bigint** %28, align 8, !dbg !558, !tbaa !351
  %30 = icmp eq %struct._Bigint* %29, null, !dbg !560
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !561
  br i1 %30, label %35, label %31, !dbg !561

; <label>:31:                                     ; preds = %25
  %32 = bitcast %struct._Bigint* %29 to i64*, !dbg !562
  %33 = load i64, i64* %32, align 8, !dbg !562, !tbaa !357
  %34 = bitcast %struct._Bigint** %28 to i64*, !dbg !563
  store i64 %33, i64* %34, align 8, !dbg !563, !tbaa !351
  br label %49, !dbg !564

; <label>:35:                                     ; preds = %25
  %36 = shl i32 1, %16, !dbg !565
  %37 = add nsw i32 %36, -1, !dbg !567
  %38 = sext i32 %37 to i64, !dbg !567
  %39 = shl nsw i64 %38, 2, !dbg !567
  %40 = add nsw i64 %39, 32, !dbg !567
  %41 = tail call i8* @calloc(i64 1, i64 %40) #4, !dbg !567
  %42 = icmp eq i8* %41, null, !dbg !568
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !569
  br i1 %42, label %53, label %43, !dbg !569

; <label>:43:                                     ; preds = %35
  %44 = bitcast i8* %41 to %struct._Bigint*, !dbg !570
  %45 = getelementptr inbounds i8, i8* %41, i64 8, !dbg !571
  %46 = bitcast i8* %45 to i32*, !dbg !571
  store i32 %16, i32* %46, align 8, !dbg !572, !tbaa !371
  %47 = getelementptr inbounds i8, i8* %41, i64 12, !dbg !573
  %48 = bitcast i8* %47 to i32*, !dbg !573
  store i32 %36, i32* %48, align 4, !dbg !574, !tbaa !374
  br label %49

; <label>:49:                                     ; preds = %43, %31
  %50 = phi %struct._Bigint* [ %29, %31 ], [ %44, %43 ], !dbg !575
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %51 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %50, i64 0, i32 4, !dbg !576
  store i32 0, i32* %51, align 4, !dbg !577, !tbaa !378
  %52 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %50, i64 0, i32 3, !dbg !578
  store i32 0, i32* %52, align 8, !dbg !579, !tbaa !381
  br label %53, !dbg !580

; <label>:53:                                     ; preds = %35, %20, %49
  %54 = phi %struct._Bigint* [ %50, %49 ], [ null, %20 ], [ null, %35 ], !dbg !581
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !582
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !583
  %55 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %54, i64 0, i32 5, i64 0, !dbg !585
  store i32 %4, i32* %55, align 8, !dbg !586, !tbaa !431
  %56 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %54, i64 0, i32 4, !dbg !587
  store i32 1, i32* %56, align 4, !dbg !588, !tbaa !378
  %57 = icmp sgt i32 %2, 9, !dbg !590
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !592
  br i1 %57, label %58, label %77, !dbg !592

; <label>:58:                                     ; preds = %53
  %59 = getelementptr inbounds i8, i8* %1, i64 9, !dbg !593
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !595
  %60 = add i32 %2, -10, !dbg !595
  %61 = zext i32 %60 to i64, !dbg !595
  %62 = add nuw nsw i64 %61, 9, !dbg !595
  br label %63, !dbg !595

; <label>:63:                                     ; preds = %63, %58
  %64 = phi %struct._Bigint* [ %54, %58 ], [ %71, %63 ], !dbg !596
  %65 = phi i32 [ 9, %58 ], [ %72, %63 ], !dbg !596
  %66 = phi i8* [ %59, %58 ], [ %67, %63 ], !dbg !596
  %67 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !597
  %68 = load i8, i8* %66, align 1, !dbg !598, !tbaa !599
  %69 = sext i8 %68 to i32, !dbg !598
  %70 = add nsw i32 %69, -48, !dbg !600
  %71 = tail call %struct._Bigint* @__multadd(%struct._reent* %0, %struct._Bigint* %64, i32 10, i32 %70) #6, !dbg !601
  %72 = add nuw nsw i32 %65, 1, !dbg !602
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !603
  %73 = icmp eq i32 %72, %2, !dbg !604
  br i1 %73, label %74, label %63, !dbg !603, !llvm.loop !605

; <label>:74:                                     ; preds = %63
  %75 = getelementptr i8, i8* %1, i64 %62, !dbg !595
  %76 = getelementptr inbounds i8, i8* %75, i64 2, !dbg !607
  br label %79, !dbg !608

; <label>:77:                                     ; preds = %53
  %78 = getelementptr inbounds i8, i8* %1, i64 10, !dbg !609
  br label %79

; <label>:79:                                     ; preds = %77, %74
  %80 = phi %struct._Bigint* [ %71, %74 ], [ %54, %77 ], !dbg !582
  %81 = phi i32 [ %2, %74 ], [ 9, %77 ], !dbg !582
  %82 = phi i8* [ %76, %74 ], [ %78, %77 ], !dbg !610
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !611
  %83 = icmp slt i32 %81, %3, !dbg !612
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !615
  br i1 %83, label %84, label %95, !dbg !615

; <label>:84:                                     ; preds = %79, %84
  %85 = phi i8* [ %88, %84 ], [ %82, %79 ]
  %86 = phi i32 [ %93, %84 ], [ %81, %79 ]
  %87 = phi %struct._Bigint* [ %92, %84 ], [ %80, %79 ]
  %88 = getelementptr inbounds i8, i8* %85, i64 1, !dbg !616
  %89 = load i8, i8* %85, align 1, !dbg !617, !tbaa !599
  %90 = sext i8 %89 to i32, !dbg !617
  %91 = add nsw i32 %90, -48, !dbg !618
  %92 = tail call %struct._Bigint* @__multadd(%struct._reent* %0, %struct._Bigint* %87, i32 10, i32 %91) #6, !dbg !619
  %93 = add nuw nsw i32 %86, 1, !dbg !620
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !615
  %94 = icmp eq i32 %93, %3, !dbg !612
  br i1 %94, label %95, label %84, !dbg !615, !llvm.loop !622

; <label>:95:                                     ; preds = %84, %79
  %96 = phi %struct._Bigint* [ %80, %79 ], [ %92, %84 ], !dbg !624
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !625
  ret %struct._Bigint* %96, !dbg !625
}

; Function Attrs: noredzone nounwind
define dso_local i32 @__hi0bits(i32) local_unnamed_addr #0 !dbg !626 {
  %2 = icmp ugt i32 %0, 65535, !dbg !634
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !636
  br i1 %2, label %5, label %3, !dbg !636

; <label>:3:                                      ; preds = %1
  %4 = shl i32 %0, 16, !dbg !637
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !639
  br label %5, !dbg !639

; <label>:5:                                      ; preds = %3, %1
  %6 = phi i32 [ %0, %1 ], [ %4, %3 ]
  %7 = phi i32 [ 0, %1 ], [ 16, %3 ], !dbg !640
  %8 = icmp ugt i32 %6, 16777215, !dbg !641
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !643
  br i1 %8, label %12, label %9, !dbg !643

; <label>:9:                                      ; preds = %5
  %10 = or i32 %7, 8, !dbg !644
  %11 = shl i32 %6, 8, !dbg !646
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !647
  br label %12, !dbg !647

; <label>:12:                                     ; preds = %9, %5
  %13 = phi i32 [ %6, %5 ], [ %11, %9 ]
  %14 = phi i32 [ %7, %5 ], [ %10, %9 ], !dbg !648
  %15 = icmp ugt i32 %13, 268435455, !dbg !649
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !651
  br i1 %15, label %19, label %16, !dbg !651

; <label>:16:                                     ; preds = %12
  %17 = add nsw i32 %14, 4, !dbg !652
  %18 = shl i32 %13, 4, !dbg !654
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !655
  br label %19, !dbg !655

; <label>:19:                                     ; preds = %16, %12
  %20 = phi i32 [ %13, %12 ], [ %18, %16 ]
  %21 = phi i32 [ %14, %12 ], [ %17, %16 ], !dbg !656
  %22 = icmp ugt i32 %20, 1073741823, !dbg !657
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !659
  br i1 %22, label %26, label %23, !dbg !659

; <label>:23:                                     ; preds = %19
  %24 = add nsw i32 %21, 2, !dbg !660
  %25 = shl i32 %20, 2, !dbg !662
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !663
  br label %26, !dbg !663

; <label>:26:                                     ; preds = %23, %19
  %27 = phi i32 [ %20, %19 ], [ %25, %23 ]
  %28 = phi i32 [ %21, %19 ], [ %24, %23 ], !dbg !664
  %29 = icmp slt i32 %27, 0, !dbg !665
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !667
  br i1 %29, label %34, label %30, !dbg !667

; <label>:30:                                     ; preds = %26
  %31 = add nsw i32 %28, 1, !dbg !668
  %32 = and i32 %27, 1073741824, !dbg !670
  %33 = icmp eq i32 %32, 0, !dbg !670
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !672
  br i1 %33, label %36, label %34, !dbg !672

; <label>:34:                                     ; preds = %30, %26
  %35 = phi i32 [ %28, %26 ], [ %31, %30 ], !dbg !673
  br label %36, !dbg !674

; <label>:36:                                     ; preds = %30, %34
  %37 = phi i32 [ %35, %34 ], [ 32, %30 ], !dbg !675
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !675
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !676
  ret i32 %37, !dbg !676
}

; Function Attrs: noredzone nounwind
define dso_local i32 @__lo0bits(i32* nocapture) local_unnamed_addr #0 !dbg !677 {
  %2 = load i32, i32* %0, align 4, !dbg !685, !tbaa !431
  %3 = and i32 %2, 7, !dbg !687
  %4 = icmp eq i32 %3, 0, !dbg !687
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !689
  br i1 %4, label %15, label %5, !dbg !689

; <label>:5:                                      ; preds = %1
  %6 = and i32 %2, 1, !dbg !690
  %7 = icmp eq i32 %6, 0, !dbg !690
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !693
  br i1 %7, label %8, label %56, !dbg !693

; <label>:8:                                      ; preds = %5
  %9 = and i32 %2, 2, !dbg !694
  %10 = icmp eq i32 %9, 0, !dbg !694
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !696
  br i1 %10, label %13, label %11, !dbg !696

; <label>:11:                                     ; preds = %8
  %12 = lshr i32 %2, 1, !dbg !697
  store i32 %12, i32* %0, align 4, !dbg !699, !tbaa !431
  br label %56, !dbg !700

; <label>:13:                                     ; preds = %8
  %14 = lshr i32 %2, 2, !dbg !701
  store i32 %14, i32* %0, align 4, !dbg !702, !tbaa !431
  br label %56, !dbg !703

; <label>:15:                                     ; preds = %1
  %16 = and i32 %2, 65535, !dbg !705
  %17 = icmp eq i32 %16, 0, !dbg !705
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !707
  br i1 %17, label %18, label %20, !dbg !707

; <label>:18:                                     ; preds = %15
  %19 = lshr i32 %2, 16, !dbg !708
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !710
  br label %20, !dbg !710

; <label>:20:                                     ; preds = %15, %18
  %21 = phi i32 [ 0, %15 ], [ 16, %18 ], !dbg !711
  %22 = phi i32 [ %2, %15 ], [ %19, %18 ], !dbg !711
  %23 = and i32 %22, 255, !dbg !712
  %24 = icmp eq i32 %23, 0, !dbg !712
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !714
  br i1 %24, label %25, label %28, !dbg !714

; <label>:25:                                     ; preds = %20
  %26 = or i32 %21, 8, !dbg !715
  %27 = lshr i32 %22, 8, !dbg !717
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !718
  br label %28, !dbg !718

; <label>:28:                                     ; preds = %20, %25
  %29 = phi i32 [ %21, %20 ], [ %26, %25 ], !dbg !719
  %30 = phi i32 [ %22, %20 ], [ %27, %25 ], !dbg !719
  %31 = and i32 %30, 15, !dbg !720
  %32 = icmp eq i32 %31, 0, !dbg !720
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !722
  br i1 %32, label %33, label %36, !dbg !722

; <label>:33:                                     ; preds = %28
  %34 = add nsw i32 %29, 4, !dbg !723
  %35 = lshr i32 %30, 4, !dbg !725
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !726
  br label %36, !dbg !726

; <label>:36:                                     ; preds = %28, %33
  %37 = phi i32 [ %29, %28 ], [ %34, %33 ], !dbg !727
  %38 = phi i32 [ %30, %28 ], [ %35, %33 ], !dbg !727
  %39 = and i32 %38, 3, !dbg !728
  %40 = icmp eq i32 %39, 0, !dbg !728
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !730
  br i1 %40, label %41, label %44, !dbg !730

; <label>:41:                                     ; preds = %36
  %42 = add nsw i32 %37, 2, !dbg !731
  %43 = lshr i32 %38, 2, !dbg !733
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !734
  br label %44, !dbg !734

; <label>:44:                                     ; preds = %36, %41
  %45 = phi i32 [ %37, %36 ], [ %42, %41 ], !dbg !735
  %46 = phi i32 [ %38, %36 ], [ %43, %41 ], !dbg !735
  %47 = and i32 %46, 1, !dbg !736
  %48 = icmp eq i32 %47, 0, !dbg !736
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !738
  br i1 %48, label %49, label %53, !dbg !738

; <label>:49:                                     ; preds = %44
  %50 = add nsw i32 %45, 1, !dbg !739
  %51 = lshr i32 %46, 1, !dbg !741
  %52 = icmp eq i32 %51, 0, !dbg !742
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !744
  br i1 %52, label %56, label %53, !dbg !744

; <label>:53:                                     ; preds = %44, %49
  %54 = phi i32 [ %45, %44 ], [ %50, %49 ], !dbg !745
  %55 = phi i32 [ %46, %44 ], [ %51, %49 ], !dbg !745
  store i32 %55, i32* %0, align 4, !dbg !746, !tbaa !431
  br label %56, !dbg !747

; <label>:56:                                     ; preds = %49, %5, %53, %13, %11
  %57 = phi i32 [ 1, %11 ], [ 2, %13 ], [ %54, %53 ], [ 0, %5 ], [ 32, %49 ], !dbg !748
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !749
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !750
  ret i32 %57, !dbg !750
}

; Function Attrs: noredzone nounwind
define dso_local %struct._Bigint* @__i2b(%struct._reent* nocapture, i32) local_unnamed_addr #0 !dbg !751 {
  %3 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 13, !dbg !759
  %4 = load %struct._Bigint**, %struct._Bigint*** %3, align 8, !dbg !759, !tbaa !332
  %5 = icmp eq %struct._Bigint** %4, null, !dbg !760
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !761
  br i1 %5, label %6, label %11, !dbg !761

; <label>:6:                                      ; preds = %2
  %7 = tail call i8* @calloc(i64 8, i64 65) #4, !dbg !762
  %8 = bitcast %struct._Bigint*** %3 to i8**, !dbg !763
  store i8* %7, i8** %8, align 8, !dbg !763, !tbaa !332
  %9 = icmp eq i8* %7, null, !dbg !764
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !765
  %10 = bitcast i8* %7 to %struct._Bigint**, !dbg !765
  br i1 %9, label %33, label %11, !dbg !765

; <label>:11:                                     ; preds = %6, %2
  %12 = phi %struct._Bigint** [ %10, %6 ], [ %4, %2 ], !dbg !766
  %13 = getelementptr inbounds %struct._Bigint*, %struct._Bigint** %12, i64 1, !dbg !766
  %14 = load %struct._Bigint*, %struct._Bigint** %13, align 8, !dbg !766, !tbaa !351
  %15 = icmp eq %struct._Bigint* %14, null, !dbg !768
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !769
  br i1 %15, label %20, label %16, !dbg !769

; <label>:16:                                     ; preds = %11
  %17 = bitcast %struct._Bigint* %14 to i64*, !dbg !770
  %18 = load i64, i64* %17, align 8, !dbg !770, !tbaa !357
  %19 = bitcast %struct._Bigint** %13 to i64*, !dbg !771
  store i64 %18, i64* %19, align 8, !dbg !771, !tbaa !351
  br label %29, !dbg !772

; <label>:20:                                     ; preds = %11
  %21 = tail call i8* @calloc(i64 1, i64 36) #4, !dbg !774
  %22 = icmp eq i8* %21, null, !dbg !775
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !776
  br i1 %22, label %33, label %23, !dbg !776

; <label>:23:                                     ; preds = %20
  %24 = bitcast i8* %21 to %struct._Bigint*, !dbg !777
  %25 = getelementptr inbounds i8, i8* %21, i64 8, !dbg !778
  %26 = bitcast i8* %25 to i32*, !dbg !778
  store i32 1, i32* %26, align 8, !dbg !779, !tbaa !371
  %27 = getelementptr inbounds i8, i8* %21, i64 12, !dbg !780
  %28 = bitcast i8* %27 to i32*, !dbg !780
  store i32 2, i32* %28, align 4, !dbg !781, !tbaa !374
  br label %29

; <label>:29:                                     ; preds = %23, %16
  %30 = phi %struct._Bigint* [ %14, %16 ], [ %24, %23 ], !dbg !782
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %31 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %30, i64 0, i32 4, !dbg !783
  store i32 0, i32* %31, align 4, !dbg !784, !tbaa !378
  %32 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %30, i64 0, i32 3, !dbg !785
  store i32 0, i32* %32, align 8, !dbg !786, !tbaa !381
  br label %33, !dbg !787

; <label>:33:                                     ; preds = %20, %6, %29
  %34 = phi %struct._Bigint* [ %30, %29 ], [ null, %6 ], [ null, %20 ], !dbg !788
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !789
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !790
  %35 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %34, i64 0, i32 5, i64 0, !dbg !792
  store i32 %1, i32* %35, align 8, !dbg !793, !tbaa !431
  %36 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %34, i64 0, i32 4, !dbg !794
  store i32 1, i32* %36, align 4, !dbg !795, !tbaa !378
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !796
  ret %struct._Bigint* %34, !dbg !796
}

; Function Attrs: noredzone nounwind
define dso_local %struct._Bigint* @__multiply(%struct._reent* nocapture, %struct._Bigint* readonly, %struct._Bigint* readonly) local_unnamed_addr #0 !dbg !797 {
  %4 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %1, i64 0, i32 4, !dbg !821
  %5 = load i32, i32* %4, align 4, !dbg !821, !tbaa !378
  %6 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %2, i64 0, i32 4, !dbg !823
  %7 = load i32, i32* %6, align 4, !dbg !823, !tbaa !378
  %8 = icmp slt i32 %5, %7, !dbg !824
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !825
  br i1 %8, label %9, label %10, !dbg !825

; <label>:9:                                      ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !827
  br label %10, !dbg !827

; <label>:10:                                     ; preds = %9, %3
  %11 = phi i32 [ %5, %9 ], [ %7, %3 ], !dbg !829
  %12 = phi i32 [ %7, %9 ], [ %5, %3 ], !dbg !830
  %13 = phi %struct._Bigint* [ %1, %9 ], [ %2, %3 ]
  %14 = phi %struct._Bigint* [ %2, %9 ], [ %1, %3 ]
  %15 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %14, i64 0, i32 1, !dbg !831
  %16 = load i32, i32* %15, align 8, !dbg !831, !tbaa !371
  %17 = add nsw i32 %11, %12, !dbg !835
  %18 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %14, i64 0, i32 2, !dbg !837
  %19 = load i32, i32* %18, align 4, !dbg !837, !tbaa !374
  %20 = icmp sgt i32 %17, %19, !dbg !839
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !840
  br i1 %20, label %21, label %23, !dbg !840

; <label>:21:                                     ; preds = %10
  %22 = add nsw i32 %16, 1, !dbg !841
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !842
  br label %23, !dbg !842

; <label>:23:                                     ; preds = %21, %10
  %24 = phi i32 [ %22, %21 ], [ %16, %10 ], !dbg !843
  %25 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 13, !dbg !846
  %26 = load %struct._Bigint**, %struct._Bigint*** %25, align 8, !dbg !846, !tbaa !332
  %27 = icmp eq %struct._Bigint** %26, null, !dbg !847
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !848
  br i1 %27, label %28, label %33, !dbg !848

; <label>:28:                                     ; preds = %23
  %29 = tail call i8* @calloc(i64 8, i64 65) #4, !dbg !849
  %30 = bitcast %struct._Bigint*** %25 to i8**, !dbg !850
  store i8* %29, i8** %30, align 8, !dbg !850, !tbaa !332
  %31 = icmp eq i8* %29, null, !dbg !851
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !852
  %32 = bitcast i8* %29 to %struct._Bigint**, !dbg !852
  br i1 %31, label %61, label %33, !dbg !852

; <label>:33:                                     ; preds = %28, %23
  %34 = phi %struct._Bigint** [ %32, %28 ], [ %26, %23 ], !dbg !853
  %35 = sext i32 %24 to i64, !dbg !853
  %36 = getelementptr inbounds %struct._Bigint*, %struct._Bigint** %34, i64 %35, !dbg !853
  %37 = load %struct._Bigint*, %struct._Bigint** %36, align 8, !dbg !853, !tbaa !351
  %38 = icmp eq %struct._Bigint* %37, null, !dbg !855
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !856
  br i1 %38, label %43, label %39, !dbg !856

; <label>:39:                                     ; preds = %33
  %40 = bitcast %struct._Bigint* %37 to i64*, !dbg !857
  %41 = load i64, i64* %40, align 8, !dbg !857, !tbaa !357
  %42 = bitcast %struct._Bigint** %36 to i64*, !dbg !858
  store i64 %41, i64* %42, align 8, !dbg !858, !tbaa !351
  br label %57, !dbg !859

; <label>:43:                                     ; preds = %33
  %44 = shl i32 1, %24, !dbg !860
  %45 = add nsw i32 %44, -1, !dbg !862
  %46 = sext i32 %45 to i64, !dbg !862
  %47 = shl nsw i64 %46, 2, !dbg !862
  %48 = add nsw i64 %47, 32, !dbg !862
  %49 = tail call i8* @calloc(i64 1, i64 %48) #4, !dbg !862
  %50 = icmp eq i8* %49, null, !dbg !863
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !864
  br i1 %50, label %61, label %51, !dbg !864

; <label>:51:                                     ; preds = %43
  %52 = bitcast i8* %49 to %struct._Bigint*, !dbg !865
  %53 = getelementptr inbounds i8, i8* %49, i64 8, !dbg !866
  %54 = bitcast i8* %53 to i32*, !dbg !866
  store i32 %24, i32* %54, align 8, !dbg !867, !tbaa !371
  %55 = getelementptr inbounds i8, i8* %49, i64 12, !dbg !868
  %56 = bitcast i8* %55 to i32*, !dbg !868
  store i32 %44, i32* %56, align 4, !dbg !869, !tbaa !374
  br label %57

; <label>:57:                                     ; preds = %51, %39
  %58 = phi %struct._Bigint* [ %37, %39 ], [ %52, %51 ], !dbg !870
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %59 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %58, i64 0, i32 4, !dbg !871
  store i32 0, i32* %59, align 4, !dbg !872, !tbaa !378
  %60 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %58, i64 0, i32 3, !dbg !873
  store i32 0, i32* %60, align 8, !dbg !874, !tbaa !381
  br label %61, !dbg !875

; <label>:61:                                     ; preds = %43, %28, %57
  %62 = phi %struct._Bigint* [ %58, %57 ], [ null, %28 ], [ null, %43 ], !dbg !876
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !843
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !877
  %63 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %62, i64 0, i32 5, i64 0, !dbg !878
  %64 = sext i32 %17 to i64, !dbg !881
  %65 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %62, i64 0, i32 5, i64 %64, !dbg !881
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !883
  %66 = icmp sgt i32 %17, 0, !dbg !884
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !886
  br i1 %66, label %67, label %71, !dbg !886

; <label>:67:                                     ; preds = %61, %67
  %68 = phi i32* [ %69, %67 ], [ %63, %61 ]
  store i32 0, i32* %68, align 4, !dbg !887, !tbaa !431
  %69 = getelementptr inbounds i32, i32* %68, i64 1, !dbg !888
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !889
  %70 = icmp ult i32* %69, %65, !dbg !884
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !886
  br i1 %70, label %67, label %71, !dbg !886, !llvm.loop !890

; <label>:71:                                     ; preds = %67, %61
  %72 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %14, i64 0, i32 5, i64 0, !dbg !892
  %73 = sext i32 %12 to i64, !dbg !893
  %74 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %14, i64 0, i32 5, i64 %73, !dbg !893
  %75 = sext i32 %11 to i64, !dbg !895
  %76 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %13, i64 0, i32 5, i64 %75, !dbg !895
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !898
  %77 = icmp sgt i32 %11, 0, !dbg !899
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !902
  br i1 %77, label %78, label %151, !dbg !902

; <label>:78:                                     ; preds = %71
  %79 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %13, i64 0, i32 5, i64 0, !dbg !903
  br label %80, !dbg !905

; <label>:80:                                     ; preds = %78, %147
  %81 = phi i32* [ %149, %147 ], [ %63, %78 ]
  %82 = phi i32* [ %148, %147 ], [ %79, %78 ]
  %83 = load i32, i32* %82, align 4, !dbg !905, !tbaa !431
  %84 = and i32 %83, 65535, !dbg !908
  %85 = icmp eq i32 %84, 0, !dbg !910
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !911
  br i1 %85, label %113, label %86, !dbg !911

; <label>:86:                                     ; preds = %80
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !914
  br label %87, !dbg !914

; <label>:87:                                     ; preds = %87, %86
  %88 = phi i32 [ 0, %86 ], [ %105, %87 ], !dbg !916
  %89 = phi i32* [ %72, %86 ], [ %99, %87 ], !dbg !916
  %90 = phi i32* [ %81, %86 ], [ %109, %87 ], !dbg !916
  %91 = load i32, i32* %89, align 4, !dbg !918, !tbaa !431
  %92 = and i32 %91, 65535, !dbg !919
  %93 = mul nuw i32 %92, %84, !dbg !920
  %94 = load i32, i32* %90, align 4, !dbg !921, !tbaa !431
  %95 = and i32 %94, 65535, !dbg !922
  %96 = add nuw nsw i32 %95, %88, !dbg !923
  %97 = add i32 %96, %93, !dbg !924
  %98 = lshr i32 %97, 16, !dbg !926
  %99 = getelementptr inbounds i32, i32* %89, i64 1, !dbg !927
  %100 = lshr i32 %91, 16, !dbg !928
  %101 = mul nuw i32 %100, %84, !dbg !929
  %102 = lshr i32 %94, 16, !dbg !930
  %103 = add i32 %101, %102, !dbg !931
  %104 = add i32 %103, %98, !dbg !932
  %105 = lshr i32 %104, 16, !dbg !934
  %106 = shl i32 %104, 16, !dbg !935
  %107 = and i32 %97, 65535, !dbg !935
  %108 = or i32 %106, %107, !dbg !935
  %109 = getelementptr inbounds i32, i32* %90, i64 1, !dbg !935
  store i32 %108, i32* %90, align 4, !dbg !935, !tbaa !431
  %110 = icmp ult i32* %99, %74, !dbg !936
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !937
  br i1 %110, label %87, label %111, !dbg !937, !llvm.loop !938

; <label>:111:                                    ; preds = %87
  store i32 %105, i32* %109, align 4, !dbg !940, !tbaa !431
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !941
  %112 = load i32, i32* %82, align 4, !dbg !942, !tbaa !431
  br label %113, !dbg !941

; <label>:113:                                    ; preds = %80, %111
  %114 = phi i32 [ %83, %80 ], [ %112, %111 ], !dbg !942
  %115 = lshr i32 %114, 16, !dbg !944
  %116 = icmp eq i32 %115, 0, !dbg !945
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !946
  br i1 %116, label %147, label %117, !dbg !946

; <label>:117:                                    ; preds = %113
  %118 = load i32, i32* %81, align 4, !dbg !947, !tbaa !431
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !949
  br label %119, !dbg !949

; <label>:119:                                    ; preds = %119, %117
  %120 = phi i32 [ %118, %117 ], [ %140, %119 ], !dbg !950
  %121 = phi i32 [ 0, %117 ], [ %144, %119 ], !dbg !952
  %122 = phi i32* [ %72, %117 ], [ %136, %119 ], !dbg !952
  %123 = phi i32* [ %81, %117 ], [ %135, %119 ], !dbg !952
  %124 = phi i32 [ %118, %117 ], [ %143, %119 ], !dbg !952
  %125 = load i32, i32* %122, align 4, !dbg !953, !tbaa !431
  %126 = and i32 %125, 65535, !dbg !954
  %127 = mul nuw i32 %126, %115, !dbg !955
  %128 = lshr i32 %120, 16, !dbg !956
  %129 = add nuw nsw i32 %128, %121, !dbg !957
  %130 = add i32 %129, %127, !dbg !958
  %131 = lshr i32 %130, 16, !dbg !959
  %132 = shl i32 %130, 16, !dbg !960
  %133 = and i32 %124, 65535, !dbg !960
  %134 = or i32 %132, %133, !dbg !960
  %135 = getelementptr inbounds i32, i32* %123, i64 1, !dbg !960
  store i32 %134, i32* %123, align 4, !dbg !960, !tbaa !431
  %136 = getelementptr inbounds i32, i32* %122, i64 1, !dbg !961
  %137 = load i32, i32* %122, align 4, !dbg !962, !tbaa !431
  %138 = lshr i32 %137, 16, !dbg !963
  %139 = mul nuw i32 %138, %115, !dbg !964
  %140 = load i32, i32* %135, align 4, !dbg !965, !tbaa !431
  %141 = and i32 %140, 65535, !dbg !966
  %142 = add i32 %139, %141, !dbg !967
  %143 = add i32 %142, %131, !dbg !968
  %144 = lshr i32 %143, 16, !dbg !969
  %145 = icmp ult i32* %136, %74, !dbg !970
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !971
  br i1 %145, label %119, label %146, !dbg !971, !llvm.loop !972

; <label>:146:                                    ; preds = %119
  store i32 %143, i32* %135, align 4, !dbg !974, !tbaa !431
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !975
  br label %147, !dbg !975

; <label>:147:                                    ; preds = %113, %146
  %148 = getelementptr inbounds i32, i32* %82, i64 1, !dbg !976
  %149 = getelementptr inbounds i32, i32* %81, i64 1, !dbg !977
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !978
  %150 = icmp ult i32* %148, %76, !dbg !899
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !902
  br i1 %150, label %80, label %151, !dbg !902, !llvm.loop !979

; <label>:151:                                    ; preds = %147, %71
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !981
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !983
  br i1 %66, label %152, label %161, !dbg !983

; <label>:152:                                    ; preds = %151, %158
  %153 = phi i32* [ %155, %158 ], [ %65, %151 ]
  %154 = phi i32 [ %159, %158 ], [ %17, %151 ]
  %155 = getelementptr inbounds i32, i32* %153, i64 -1, !dbg !985
  %156 = load i32, i32* %155, align 4, !dbg !986, !tbaa !431
  %157 = icmp eq i32 %156, 0, !dbg !987
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !988
  br i1 %157, label %158, label %161, !dbg !988

; <label>:158:                                    ; preds = %152
  %159 = add nsw i32 %154, -1, !dbg !989
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !990
  %160 = icmp sgt i32 %154, 1, !dbg !991
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !983
  br i1 %160, label %152, label %161, !dbg !983, !llvm.loop !992

; <label>:161:                                    ; preds = %152, %158, %151
  %162 = phi i32 [ %17, %151 ], [ %159, %158 ], [ %154, %152 ], !dbg !994
  %163 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %62, i64 0, i32 4, !dbg !995
  store i32 %162, i32* %163, align 4, !dbg !996, !tbaa !378
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !997
  ret %struct._Bigint* %62, !dbg !997
}

; Function Attrs: noredzone nounwind
define dso_local %struct._Bigint* @__pow5mult(%struct._reent* nocapture, %struct._Bigint*, i32) local_unnamed_addr #0 !dbg !2 {
  %4 = and i32 %2, 3, !dbg !999
  %5 = icmp eq i32 %4, 0, !dbg !1002
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1003
  br i1 %5, label %12, label %6, !dbg !1003

; <label>:6:                                      ; preds = %3
  %7 = add nsw i32 %4, -1, !dbg !1004
  %8 = sext i32 %7 to i64, !dbg !1005
  %9 = getelementptr inbounds [3 x i32], [3 x i32]* @__pow5mult.p05, i64 0, i64 %8, !dbg !1005
  %10 = load i32, i32* %9, align 4, !dbg !1005, !tbaa !431
  %11 = tail call %struct._Bigint* @__multadd(%struct._reent* %0, %struct._Bigint* %1, i32 %10, i32 0) #6, !dbg !1006
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1007
  br label %12, !dbg !1007

; <label>:12:                                     ; preds = %3, %6
  %13 = phi %struct._Bigint* [ %11, %6 ], [ %1, %3 ]
  %14 = ashr i32 %2, 2, !dbg !1008
  %15 = icmp eq i32 %14, 0, !dbg !1008
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1010
  br i1 %15, label %90, label %16, !dbg !1010

; <label>:16:                                     ; preds = %12
  %17 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 12, !dbg !1011
  %18 = load %struct._Bigint*, %struct._Bigint** %17, align 8, !dbg !1011, !tbaa !1013
  %19 = icmp eq %struct._Bigint* %18, null, !dbg !1015
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1016
  %20 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 13
  br i1 %19, label %21, label %56, !dbg !1016

; <label>:21:                                     ; preds = %16
  %22 = load %struct._Bigint**, %struct._Bigint*** %20, align 8, !dbg !1022, !tbaa !332
  %23 = icmp eq %struct._Bigint** %22, null, !dbg !1023
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1024
  br i1 %23, label %24, label %29, !dbg !1024

; <label>:24:                                     ; preds = %21
  %25 = tail call i8* @calloc(i64 8, i64 65) #4, !dbg !1025
  %26 = bitcast %struct._Bigint*** %20 to i8**, !dbg !1026
  store i8* %25, i8** %26, align 8, !dbg !1026, !tbaa !332
  %27 = icmp eq i8* %25, null, !dbg !1027
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1028
  %28 = bitcast i8* %25 to %struct._Bigint**, !dbg !1028
  br i1 %27, label %51, label %29, !dbg !1028

; <label>:29:                                     ; preds = %24, %21
  %30 = phi %struct._Bigint** [ %28, %24 ], [ %22, %21 ], !dbg !1029
  %31 = getelementptr inbounds %struct._Bigint*, %struct._Bigint** %30, i64 1, !dbg !1029
  %32 = load %struct._Bigint*, %struct._Bigint** %31, align 8, !dbg !1029, !tbaa !351
  %33 = icmp eq %struct._Bigint* %32, null, !dbg !1031
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1032
  br i1 %33, label %38, label %34, !dbg !1032

; <label>:34:                                     ; preds = %29
  %35 = bitcast %struct._Bigint* %32 to i64*, !dbg !1033
  %36 = load i64, i64* %35, align 8, !dbg !1033, !tbaa !357
  %37 = bitcast %struct._Bigint** %31 to i64*, !dbg !1034
  store i64 %36, i64* %37, align 8, !dbg !1034, !tbaa !351
  br label %47, !dbg !1035

; <label>:38:                                     ; preds = %29
  %39 = tail call i8* @calloc(i64 1, i64 36) #4, !dbg !1037
  %40 = icmp eq i8* %39, null, !dbg !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1039
  br i1 %40, label %51, label %41, !dbg !1039

; <label>:41:                                     ; preds = %38
  %42 = bitcast i8* %39 to %struct._Bigint*, !dbg !1040
  %43 = getelementptr inbounds i8, i8* %39, i64 8, !dbg !1041
  %44 = bitcast i8* %43 to i32*, !dbg !1041
  store i32 1, i32* %44, align 8, !dbg !1042, !tbaa !371
  %45 = getelementptr inbounds i8, i8* %39, i64 12, !dbg !1043
  %46 = bitcast i8* %45 to i32*, !dbg !1043
  store i32 2, i32* %46, align 4, !dbg !1044, !tbaa !374
  br label %47

; <label>:47:                                     ; preds = %41, %34
  %48 = phi %struct._Bigint* [ %32, %34 ], [ %42, %41 ], !dbg !1045
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %49 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %48, i64 0, i32 4, !dbg !1046
  store i32 0, i32* %49, align 4, !dbg !1047, !tbaa !378
  %50 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %48, i64 0, i32 3, !dbg !1048
  store i32 0, i32* %50, align 8, !dbg !1049, !tbaa !381
  br label %51, !dbg !1050

; <label>:51:                                     ; preds = %38, %24, %47
  %52 = phi %struct._Bigint* [ %48, %47 ], [ null, %24 ], [ null, %38 ], !dbg !1051
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1052
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1053
  %53 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %52, i64 0, i32 5, i64 0, !dbg !1055
  store i32 625, i32* %53, align 8, !dbg !1056, !tbaa !431
  %54 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %52, i64 0, i32 4, !dbg !1057
  store i32 1, i32* %54, align 4, !dbg !1058, !tbaa !378
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1059
  store %struct._Bigint* %52, %struct._Bigint** %17, align 8, !dbg !1060, !tbaa !1013
  %55 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %52, i64 0, i32 0, !dbg !1061
  store %struct._Bigint* null, %struct._Bigint** %55, align 8, !dbg !1062, !tbaa !357
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1063
  br label %56, !dbg !1063

; <label>:56:                                     ; preds = %16, %51
  %57 = phi %struct._Bigint* [ %52, %51 ], [ %18, %16 ]
  br label %58, !dbg !1064

; <label>:58:                                     ; preds = %85, %56
  %59 = phi i32 [ %14, %56 ], [ %79, %85 ], !dbg !1067
  %60 = phi %struct._Bigint* [ %13, %56 ], [ %78, %85 ], !dbg !1070
  %61 = phi %struct._Bigint* [ %57, %56 ], [ %86, %85 ], !dbg !1073
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1064
  %62 = and i32 %59, 1, !dbg !1074
  %63 = icmp eq i32 %62, 0, !dbg !1074
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1075
  br i1 %63, label %77, label %64, !dbg !1075

; <label>:64:                                     ; preds = %58
  %65 = tail call %struct._Bigint* @__multiply(%struct._reent* %0, %struct._Bigint* %60, %struct._Bigint* %61) #6, !dbg !1076
  %66 = icmp eq %struct._Bigint* %60, null, !dbg !1080
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1081
  br i1 %66, label %76, label %67, !dbg !1081

; <label>:67:                                     ; preds = %64
  %68 = load %struct._Bigint**, %struct._Bigint*** %20, align 8, !dbg !1082, !tbaa !332
  %69 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %60, i64 0, i32 1, !dbg !1083
  %70 = load i32, i32* %69, align 8, !dbg !1083, !tbaa !371
  %71 = sext i32 %70 to i64, !dbg !1082
  %72 = getelementptr inbounds %struct._Bigint*, %struct._Bigint** %68, i64 %71, !dbg !1082
  %73 = bitcast %struct._Bigint** %72 to i64*, !dbg !1082
  %74 = load i64, i64* %73, align 8, !dbg !1082, !tbaa !351
  %75 = bitcast %struct._Bigint* %60 to i64*, !dbg !1084
  store i64 %74, i64* %75, align 8, !dbg !1084, !tbaa !357
  store %struct._Bigint* %60, %struct._Bigint** %72, align 8, !dbg !1085, !tbaa !351
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1086
  br label %76, !dbg !1086

; <label>:76:                                     ; preds = %64, %67
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1087
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1088
  br label %77, !dbg !1088

; <label>:77:                                     ; preds = %58, %76
  %78 = phi %struct._Bigint* [ %65, %76 ], [ %60, %58 ], !dbg !1089
  %79 = ashr i32 %59, 1, !dbg !1090
  %80 = icmp eq i32 %79, 0, !dbg !1090
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1091
  br i1 %80, label %90, label %81, !dbg !1091

; <label>:81:                                     ; preds = %77
  %82 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %61, i64 0, i32 0, !dbg !1092
  %83 = load %struct._Bigint*, %struct._Bigint** %82, align 8, !dbg !1092, !tbaa !357
  %84 = icmp eq %struct._Bigint* %83, null, !dbg !1095
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1096
  br i1 %84, label %87, label %85, !dbg !1096

; <label>:85:                                     ; preds = %81, %87
  %86 = phi %struct._Bigint* [ %83, %81 ], [ %88, %87 ]
  br label %58, !dbg !1064, !llvm.loop !1097

; <label>:87:                                     ; preds = %81
  %88 = tail call %struct._Bigint* @__multiply(%struct._reent* %0, %struct._Bigint* nonnull %61, %struct._Bigint* nonnull %61) #6, !dbg !1100
  store %struct._Bigint* %88, %struct._Bigint** %82, align 8, !dbg !1102, !tbaa !357
  %89 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %88, i64 0, i32 0, !dbg !1103
  store %struct._Bigint* null, %struct._Bigint** %89, align 8, !dbg !1104, !tbaa !357
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1105
  br label %85, !dbg !1105

; <label>:90:                                     ; preds = %77, %12
  %91 = phi %struct._Bigint* [ %13, %12 ], [ %78, %77 ], !dbg !1106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1107
  ret %struct._Bigint* %91, !dbg !1107
}

; Function Attrs: noredzone nounwind
define dso_local %struct._Bigint* @__lshift(%struct._reent* nocapture, %struct._Bigint*, i32) local_unnamed_addr #0 !dbg !1108 {
  %4 = ashr i32 %2, 5, !dbg !1123
  %5 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %1, i64 0, i32 1, !dbg !1125
  %6 = load i32, i32* %5, align 8, !dbg !1125, !tbaa !371
  %7 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %1, i64 0, i32 4, !dbg !1127
  %8 = load i32, i32* %7, align 4, !dbg !1127, !tbaa !378
  %9 = add nsw i32 %8, %4, !dbg !1128
  %10 = add nsw i32 %9, 1, !dbg !1129
  %11 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %1, i64 0, i32 2, !dbg !1131
  %12 = load i32, i32* %11, align 4, !dbg !1131, !tbaa !374
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1134
  %13 = icmp slt i32 %9, %12, !dbg !1135
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1137
  br i1 %13, label %20, label %14, !dbg !1137

; <label>:14:                                     ; preds = %3, %14
  %15 = phi i32 [ %18, %14 ], [ %12, %3 ]
  %16 = phi i32 [ %17, %14 ], [ %6, %3 ]
  %17 = add nsw i32 %16, 1, !dbg !1138
  %18 = shl i32 %15, 1, !dbg !1139
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1140
  %19 = icmp slt i32 %9, %18, !dbg !1135
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1137
  br i1 %19, label %20, label %14, !dbg !1137, !llvm.loop !1141

; <label>:20:                                     ; preds = %14, %3
  %21 = phi i32 [ %6, %3 ], [ %17, %14 ], !dbg !1143
  %22 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 13, !dbg !1146
  %23 = load %struct._Bigint**, %struct._Bigint*** %22, align 8, !dbg !1146, !tbaa !332
  %24 = icmp eq %struct._Bigint** %23, null, !dbg !1147
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1148
  br i1 %24, label %25, label %30, !dbg !1148

; <label>:25:                                     ; preds = %20
  %26 = tail call i8* @calloc(i64 8, i64 65) #4, !dbg !1149
  %27 = bitcast %struct._Bigint*** %22 to i8**, !dbg !1150
  store i8* %26, i8** %27, align 8, !dbg !1150, !tbaa !332
  %28 = icmp eq i8* %26, null, !dbg !1151
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1152
  %29 = bitcast i8* %26 to %struct._Bigint**, !dbg !1152
  br i1 %28, label %58, label %30, !dbg !1152

; <label>:30:                                     ; preds = %25, %20
  %31 = phi %struct._Bigint** [ %29, %25 ], [ %23, %20 ], !dbg !1153
  %32 = sext i32 %21 to i64, !dbg !1153
  %33 = getelementptr inbounds %struct._Bigint*, %struct._Bigint** %31, i64 %32, !dbg !1153
  %34 = load %struct._Bigint*, %struct._Bigint** %33, align 8, !dbg !1153, !tbaa !351
  %35 = icmp eq %struct._Bigint* %34, null, !dbg !1155
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1156
  br i1 %35, label %40, label %36, !dbg !1156

; <label>:36:                                     ; preds = %30
  %37 = bitcast %struct._Bigint* %34 to i64*, !dbg !1157
  %38 = load i64, i64* %37, align 8, !dbg !1157, !tbaa !357
  %39 = bitcast %struct._Bigint** %33 to i64*, !dbg !1158
  store i64 %38, i64* %39, align 8, !dbg !1158, !tbaa !351
  br label %54, !dbg !1159

; <label>:40:                                     ; preds = %30
  %41 = shl i32 1, %21, !dbg !1160
  %42 = add nsw i32 %41, -1, !dbg !1162
  %43 = sext i32 %42 to i64, !dbg !1162
  %44 = shl nsw i64 %43, 2, !dbg !1162
  %45 = add nsw i64 %44, 32, !dbg !1162
  %46 = tail call i8* @calloc(i64 1, i64 %45) #4, !dbg !1162
  %47 = icmp eq i8* %46, null, !dbg !1163
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1164
  br i1 %47, label %58, label %48, !dbg !1164

; <label>:48:                                     ; preds = %40
  %49 = bitcast i8* %46 to %struct._Bigint*, !dbg !1165
  %50 = getelementptr inbounds i8, i8* %46, i64 8, !dbg !1166
  %51 = bitcast i8* %50 to i32*, !dbg !1166
  store i32 %21, i32* %51, align 8, !dbg !1167, !tbaa !371
  %52 = getelementptr inbounds i8, i8* %46, i64 12, !dbg !1168
  %53 = bitcast i8* %52 to i32*, !dbg !1168
  store i32 %41, i32* %53, align 4, !dbg !1169, !tbaa !374
  br label %54

; <label>:54:                                     ; preds = %48, %36
  %55 = phi %struct._Bigint* [ %34, %36 ], [ %49, %48 ], !dbg !1170
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %56 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %55, i64 0, i32 4, !dbg !1171
  store i32 0, i32* %56, align 4, !dbg !1172, !tbaa !378
  %57 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %55, i64 0, i32 3, !dbg !1173
  store i32 0, i32* %57, align 8, !dbg !1174, !tbaa !381
  br label %58, !dbg !1175

; <label>:58:                                     ; preds = %40, %25, %54
  %59 = phi %struct._Bigint* [ %55, %54 ], [ null, %25 ], [ null, %40 ], !dbg !1176
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1177
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1178
  %60 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %59, i64 0, i32 5, i64 0, !dbg !1180
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1182
  %61 = icmp sgt i32 %2, 31, !dbg !1184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1186
  br i1 %61, label %62, label %68, !dbg !1186

; <label>:62:                                     ; preds = %58, %62
  %63 = phi i32* [ %65, %62 ], [ %60, %58 ]
  %64 = phi i32 [ %66, %62 ], [ 0, %58 ]
  %65 = getelementptr inbounds i32, i32* %63, i64 1, !dbg !1187
  store i32 0, i32* %63, align 4, !dbg !1188, !tbaa !431
  %66 = add nuw nsw i32 %64, 1, !dbg !1189
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1190
  %67 = icmp slt i32 %66, %4, !dbg !1184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1186
  br i1 %67, label %62, label %68, !dbg !1186, !llvm.loop !1191

; <label>:68:                                     ; preds = %62, %58
  %69 = phi i32* [ %60, %58 ], [ %65, %62 ], !dbg !1193
  %70 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %1, i64 0, i32 5, i64 0, !dbg !1194
  %71 = load i32, i32* %7, align 4, !dbg !1196, !tbaa !378
  %72 = sext i32 %71 to i64, !dbg !1197
  %73 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %1, i64 0, i32 5, i64 %72, !dbg !1197
  %74 = and i32 %2, 31, !dbg !1199
  %75 = icmp eq i32 %74, 0, !dbg !1199
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1201
  br i1 %75, label %94, label %76, !dbg !1201

; <label>:76:                                     ; preds = %68
  %77 = sub nsw i32 32, %74, !dbg !1202
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1205
  br label %78, !dbg !1205

; <label>:78:                                     ; preds = %78, %76
  %79 = phi i32* [ %70, %76 ], [ %86, %78 ], !dbg !1206
  %80 = phi i32* [ %69, %76 ], [ %85, %78 ], !dbg !1206
  %81 = phi i32 [ 0, %76 ], [ %88, %78 ], !dbg !1206
  %82 = load i32, i32* %79, align 4, !dbg !1208, !tbaa !431
  %83 = shl i32 %82, %74, !dbg !1209
  %84 = or i32 %83, %81, !dbg !1210
  %85 = getelementptr inbounds i32, i32* %80, i64 1, !dbg !1211
  store i32 %84, i32* %80, align 4, !dbg !1212, !tbaa !431
  %86 = getelementptr inbounds i32, i32* %79, i64 1, !dbg !1213
  %87 = load i32, i32* %79, align 4, !dbg !1214, !tbaa !431
  %88 = lshr i32 %87, %77, !dbg !1215
  %89 = icmp ult i32* %86, %73, !dbg !1216
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1217
  br i1 %89, label %78, label %90, !dbg !1217, !llvm.loop !1218

; <label>:90:                                     ; preds = %78
  store i32 %88, i32* %85, align 4, !dbg !1220, !tbaa !431
  %91 = icmp eq i32 %88, 0, !dbg !1222
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1223
  br i1 %91, label %101, label %92, !dbg !1223

; <label>:92:                                     ; preds = %90
  %93 = add nsw i32 %9, 2, !dbg !1224
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1224
  br label %101, !dbg !1224

; <label>:94:                                     ; preds = %68, %94
  %95 = phi i32* [ %97, %94 ], [ %70, %68 ], !dbg !1225
  %96 = phi i32* [ %99, %94 ], [ %69, %68 ], !dbg !1225
  %97 = getelementptr inbounds i32, i32* %95, i64 1, !dbg !1226
  %98 = load i32, i32* %95, align 4, !dbg !1227, !tbaa !431
  %99 = getelementptr inbounds i32, i32* %96, i64 1, !dbg !1228
  store i32 %98, i32* %96, align 4, !dbg !1229, !tbaa !431
  %100 = icmp ult i32* %97, %73, !dbg !1230
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1231
  br i1 %100, label %94, label %101, !dbg !1231, !llvm.loop !1232

; <label>:101:                                    ; preds = %94, %90, %92
  %102 = phi i32 [ %93, %92 ], [ %10, %90 ], [ %10, %94 ], !dbg !1177
  %103 = add nsw i32 %102, -1, !dbg !1235
  %104 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %59, i64 0, i32 4, !dbg !1236
  store i32 %103, i32* %104, align 4, !dbg !1237, !tbaa !378
  %105 = icmp eq %struct._Bigint* %1, null, !dbg !1240
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1241
  br i1 %105, label %114, label %106, !dbg !1241

; <label>:106:                                    ; preds = %101
  %107 = load %struct._Bigint**, %struct._Bigint*** %22, align 8, !dbg !1242, !tbaa !332
  %108 = load i32, i32* %5, align 8, !dbg !1243, !tbaa !371
  %109 = sext i32 %108 to i64, !dbg !1242
  %110 = getelementptr inbounds %struct._Bigint*, %struct._Bigint** %107, i64 %109, !dbg !1242
  %111 = bitcast %struct._Bigint** %110 to i64*, !dbg !1242
  %112 = load i64, i64* %111, align 8, !dbg !1242, !tbaa !351
  %113 = bitcast %struct._Bigint* %1 to i64*, !dbg !1244
  store i64 %112, i64* %113, align 8, !dbg !1244, !tbaa !357
  store %struct._Bigint* %1, %struct._Bigint** %110, align 8, !dbg !1245, !tbaa !351
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1246
  br label %114, !dbg !1246

; <label>:114:                                    ; preds = %101, %106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1247
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1248
  ret %struct._Bigint* %59, !dbg !1248
}

; Function Attrs: noredzone nounwind
define dso_local i32 @__mcmp(%struct._Bigint* readonly, %struct._Bigint* nocapture readonly) local_unnamed_addr #0 !dbg !1249 {
  %3 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %0, i64 0, i32 4, !dbg !1262
  %4 = load i32, i32* %3, align 4, !dbg !1262, !tbaa !378
  %5 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %1, i64 0, i32 4, !dbg !1264
  %6 = load i32, i32* %5, align 4, !dbg !1264, !tbaa !378
  %7 = sub nsw i32 %4, %6, !dbg !1266
  %8 = icmp eq i32 %7, 0, !dbg !1266
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1268
  br i1 %8, label %9, label %27, !dbg !1268

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %0, i64 0, i32 5, i64 0, !dbg !1269
  %11 = sext i32 %6 to i64, !dbg !1271
  %12 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %0, i64 0, i32 5, i64 %11, !dbg !1271
  %13 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %1, i64 0, i32 5, i64 %11, !dbg !1274
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1276
  br label %14, !dbg !1276

; <label>:14:                                     ; preds = %25, %9
  %15 = phi i32* [ %13, %9 ], [ %19, %25 ], !dbg !1277
  %16 = phi i32* [ %12, %9 ], [ %17, %25 ], !dbg !1277
  %17 = getelementptr inbounds i32, i32* %16, i64 -1, !dbg !1282
  %18 = load i32, i32* %17, align 4, !dbg !1283, !tbaa !431
  %19 = getelementptr inbounds i32, i32* %15, i64 -1, !dbg !1284
  %20 = load i32, i32* %19, align 4, !dbg !1285, !tbaa !431
  %21 = icmp eq i32 %18, %20, !dbg !1286
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1287
  br i1 %21, label %25, label %22, !dbg !1287

; <label>:22:                                     ; preds = %14
  %23 = icmp ult i32 %18, %20, !dbg !1288
  %24 = select i1 %23, i32 -1, i32 1, !dbg !1289
  br label %27, !dbg !1290

; <label>:25:                                     ; preds = %14
  %26 = icmp ugt i32* %17, %10, !dbg !1291
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1293
  br i1 %26, label %14, label %27, !dbg !1293, !llvm.loop !1294

; <label>:27:                                     ; preds = %25, %2, %22
  %28 = phi i32 [ %24, %22 ], [ %7, %2 ], [ 0, %25 ], !dbg !1297
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1298
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1299
  ret i32 %28, !dbg !1299
}

; Function Attrs: noredzone nounwind
define dso_local %struct._Bigint* @__mdiff(%struct._reent* nocapture, %struct._Bigint* readonly, %struct._Bigint* readonly) local_unnamed_addr #0 !dbg !1300 {
  %4 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %1, i64 0, i32 4, !dbg !1320
  %5 = load i32, i32* %4, align 4, !dbg !1320, !tbaa !378
  %6 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %2, i64 0, i32 4, !dbg !1322
  %7 = load i32, i32* %6, align 4, !dbg !1322, !tbaa !378
  %8 = sub nsw i32 %5, %7, !dbg !1324
  %9 = icmp eq i32 %8, 0, !dbg !1324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1325
  br i1 %9, label %10, label %62, !dbg !1325

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %1, i64 0, i32 5, i64 0, !dbg !1326
  %12 = sext i32 %7 to i64, !dbg !1328
  %13 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %1, i64 0, i32 5, i64 %12, !dbg !1328
  %14 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %2, i64 0, i32 5, i64 %12, !dbg !1331
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1333
  br label %15, !dbg !1333

; <label>:15:                                     ; preds = %26, %10
  %16 = phi i32* [ %14, %10 ], [ %20, %26 ], !dbg !1334
  %17 = phi i32* [ %13, %10 ], [ %18, %26 ], !dbg !1334
  %18 = getelementptr inbounds i32, i32* %17, i64 -1, !dbg !1335
  %19 = load i32, i32* %18, align 4, !dbg !1336, !tbaa !431
  %20 = getelementptr inbounds i32, i32* %16, i64 -1, !dbg !1337
  %21 = load i32, i32* %20, align 4, !dbg !1338, !tbaa !431
  %22 = icmp eq i32 %19, %21, !dbg !1339
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1340
  br i1 %22, label %26, label %23, !dbg !1340

; <label>:23:                                     ; preds = %15
  %24 = icmp ult i32 %19, %21, !dbg !1341
  %25 = select i1 %24, i32 -1, i32 1, !dbg !1342
  br label %62, !dbg !1343

; <label>:26:                                     ; preds = %15
  %27 = icmp ugt i32* %18, %11, !dbg !1344
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1345
  br i1 %27, label %15, label %28, !dbg !1345, !llvm.loop !1294

; <label>:28:                                     ; preds = %26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1346
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1347
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1349
  %29 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 13, !dbg !1354
  %30 = load %struct._Bigint**, %struct._Bigint*** %29, align 8, !dbg !1354, !tbaa !332
  %31 = icmp eq %struct._Bigint** %30, null, !dbg !1355
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1356
  br i1 %31, label %32, label %37, !dbg !1356

; <label>:32:                                     ; preds = %28
  %33 = tail call i8* @calloc(i64 8, i64 65) #4, !dbg !1357
  %34 = bitcast %struct._Bigint*** %29 to i8**, !dbg !1358
  store i8* %33, i8** %34, align 8, !dbg !1358, !tbaa !332
  %35 = icmp eq i8* %33, null, !dbg !1359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1360
  %36 = bitcast i8* %33 to %struct._Bigint**, !dbg !1360
  br i1 %35, label %58, label %37, !dbg !1360

; <label>:37:                                     ; preds = %32, %28
  %38 = phi %struct._Bigint** [ %36, %32 ], [ %30, %28 ], !dbg !1361
  %39 = load %struct._Bigint*, %struct._Bigint** %38, align 8, !dbg !1361, !tbaa !351
  %40 = icmp eq %struct._Bigint* %39, null, !dbg !1363
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1364
  br i1 %40, label %45, label %41, !dbg !1364

; <label>:41:                                     ; preds = %37
  %42 = bitcast %struct._Bigint* %39 to i64*, !dbg !1365
  %43 = load i64, i64* %42, align 8, !dbg !1365, !tbaa !357
  %44 = bitcast %struct._Bigint** %38 to i64*, !dbg !1366
  store i64 %43, i64* %44, align 8, !dbg !1366, !tbaa !351
  br label %54, !dbg !1367

; <label>:45:                                     ; preds = %37
  %46 = tail call i8* @calloc(i64 1, i64 32) #4, !dbg !1369
  %47 = icmp eq i8* %46, null, !dbg !1370
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1371
  br i1 %47, label %58, label %48, !dbg !1371

; <label>:48:                                     ; preds = %45
  %49 = bitcast i8* %46 to %struct._Bigint*, !dbg !1372
  %50 = getelementptr inbounds i8, i8* %46, i64 8, !dbg !1373
  %51 = bitcast i8* %50 to i32*, !dbg !1373
  store i32 0, i32* %51, align 8, !dbg !1374, !tbaa !371
  %52 = getelementptr inbounds i8, i8* %46, i64 12, !dbg !1375
  %53 = bitcast i8* %52 to i32*, !dbg !1375
  store i32 1, i32* %53, align 4, !dbg !1376, !tbaa !374
  br label %54

; <label>:54:                                     ; preds = %48, %41
  %55 = phi %struct._Bigint* [ %39, %41 ], [ %49, %48 ], !dbg !1377
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %56 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %55, i64 0, i32 4, !dbg !1378
  store i32 0, i32* %56, align 4, !dbg !1379, !tbaa !378
  %57 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %55, i64 0, i32 3, !dbg !1380
  store i32 0, i32* %57, align 8, !dbg !1381, !tbaa !381
  br label %58, !dbg !1382

; <label>:58:                                     ; preds = %45, %32, %54
  %59 = phi %struct._Bigint* [ %55, %54 ], [ null, %32 ], [ null, %45 ], !dbg !1383
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1384
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1385
  %60 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %59, i64 0, i32 4, !dbg !1387
  store i32 1, i32* %60, align 4, !dbg !1388, !tbaa !378
  %61 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %59, i64 0, i32 5, i64 0, !dbg !1389
  store i32 0, i32* %61, align 8, !dbg !1390, !tbaa !431
  br label %177, !dbg !1391

; <label>:62:                                     ; preds = %3, %23
  %63 = phi i32 [ %25, %23 ], [ %8, %3 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1392
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1347
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1349
  %64 = icmp slt i32 %63, 0, !dbg !1393
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1395
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %65 = lshr i32 %63, 31, !dbg !1396
  %66 = select i1 %64, %struct._Bigint* %1, %struct._Bigint* %2, !dbg !1396
  %67 = select i1 %64, %struct._Bigint* %2, %struct._Bigint* %1, !dbg !1396
  %68 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %67, i64 0, i32 1, !dbg !1398
  %69 = load i32, i32* %68, align 8, !dbg !1398, !tbaa !371
  %70 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 13, !dbg !1401
  %71 = load %struct._Bigint**, %struct._Bigint*** %70, align 8, !dbg !1401, !tbaa !332
  %72 = icmp eq %struct._Bigint** %71, null, !dbg !1402
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1403
  br i1 %72, label %73, label %78, !dbg !1403

; <label>:73:                                     ; preds = %62
  %74 = tail call i8* @calloc(i64 8, i64 65) #4, !dbg !1404
  %75 = bitcast %struct._Bigint*** %70 to i8**, !dbg !1405
  store i8* %74, i8** %75, align 8, !dbg !1405, !tbaa !332
  %76 = icmp eq i8* %74, null, !dbg !1406
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1407
  %77 = bitcast i8* %74 to %struct._Bigint**, !dbg !1407
  br i1 %76, label %106, label %78, !dbg !1407

; <label>:78:                                     ; preds = %73, %62
  %79 = phi %struct._Bigint** [ %77, %73 ], [ %71, %62 ], !dbg !1408
  %80 = sext i32 %69 to i64, !dbg !1408
  %81 = getelementptr inbounds %struct._Bigint*, %struct._Bigint** %79, i64 %80, !dbg !1408
  %82 = load %struct._Bigint*, %struct._Bigint** %81, align 8, !dbg !1408, !tbaa !351
  %83 = icmp eq %struct._Bigint* %82, null, !dbg !1410
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1411
  br i1 %83, label %88, label %84, !dbg !1411

; <label>:84:                                     ; preds = %78
  %85 = bitcast %struct._Bigint* %82 to i64*, !dbg !1412
  %86 = load i64, i64* %85, align 8, !dbg !1412, !tbaa !357
  %87 = bitcast %struct._Bigint** %81 to i64*, !dbg !1413
  store i64 %86, i64* %87, align 8, !dbg !1413, !tbaa !351
  br label %102, !dbg !1414

; <label>:88:                                     ; preds = %78
  %89 = shl i32 1, %69, !dbg !1415
  %90 = add nsw i32 %89, -1, !dbg !1417
  %91 = sext i32 %90 to i64, !dbg !1417
  %92 = shl nsw i64 %91, 2, !dbg !1417
  %93 = add nsw i64 %92, 32, !dbg !1417
  %94 = tail call i8* @calloc(i64 1, i64 %93) #4, !dbg !1417
  %95 = icmp eq i8* %94, null, !dbg !1418
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1419
  br i1 %95, label %106, label %96, !dbg !1419

; <label>:96:                                     ; preds = %88
  %97 = bitcast i8* %94 to %struct._Bigint*, !dbg !1420
  %98 = getelementptr inbounds i8, i8* %94, i64 8, !dbg !1421
  %99 = bitcast i8* %98 to i32*, !dbg !1421
  store i32 %69, i32* %99, align 8, !dbg !1422, !tbaa !371
  %100 = getelementptr inbounds i8, i8* %94, i64 12, !dbg !1423
  %101 = bitcast i8* %100 to i32*, !dbg !1423
  store i32 %89, i32* %101, align 4, !dbg !1424, !tbaa !374
  br label %102

; <label>:102:                                    ; preds = %96, %84
  %103 = phi %struct._Bigint* [ %82, %84 ], [ %97, %96 ], !dbg !1425
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %104 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %103, i64 0, i32 4, !dbg !1426
  store i32 0, i32* %104, align 4, !dbg !1427, !tbaa !378
  %105 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %103, i64 0, i32 3, !dbg !1428
  store i32 0, i32* %105, align 8, !dbg !1429, !tbaa !381
  br label %106, !dbg !1430

; <label>:106:                                    ; preds = %88, %73, %102
  %107 = phi %struct._Bigint* [ %103, %102 ], [ null, %73 ], [ null, %88 ], !dbg !1431
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1392
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1432
  %108 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %107, i64 0, i32 3, !dbg !1433
  store i32 %65, i32* %108, align 8, !dbg !1434, !tbaa !381
  %109 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %67, i64 0, i32 4, !dbg !1435
  %110 = load i32, i32* %109, align 4, !dbg !1435, !tbaa !378
  %111 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %67, i64 0, i32 5, i64 0, !dbg !1437
  %112 = sext i32 %110 to i64, !dbg !1439
  %113 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %66, i64 0, i32 4, !dbg !1441
  %114 = load i32, i32* %113, align 4, !dbg !1441, !tbaa !378
  %115 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %66, i64 0, i32 5, i64 0, !dbg !1443
  %116 = sext i32 %114 to i64, !dbg !1445
  %117 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %66, i64 0, i32 5, i64 %116, !dbg !1445
  %118 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %107, i64 0, i32 5, i64 0, !dbg !1447
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1450
  br label %119, !dbg !1450

; <label>:119:                                    ; preds = %119, %106
  %120 = phi i32 [ 0, %106 ], [ %137, %119 ], !dbg !1451
  %121 = phi i32* [ %111, %106 ], [ %131, %119 ], !dbg !1451
  %122 = phi i32* [ %115, %106 ], [ %133, %119 ], !dbg !1451
  %123 = phi i32* [ %118, %106 ], [ %141, %119 ], !dbg !1451
  %124 = load i32, i32* %121, align 4, !dbg !1453, !tbaa !431
  %125 = and i32 %124, 65535, !dbg !1454
  %126 = load i32, i32* %122, align 4, !dbg !1455, !tbaa !431
  %127 = and i32 %126, 65535, !dbg !1456
  %128 = sub nsw i32 %125, %127, !dbg !1457
  %129 = add nsw i32 %128, %120, !dbg !1458
  %130 = ashr i32 %129, 16, !dbg !1460
  %131 = getelementptr inbounds i32, i32* %121, i64 1, !dbg !1461
  %132 = lshr i32 %124, 16, !dbg !1462
  %133 = getelementptr inbounds i32, i32* %122, i64 1, !dbg !1463
  %134 = lshr i32 %126, 16, !dbg !1464
  %135 = sub nsw i32 %132, %134, !dbg !1465
  %136 = add nsw i32 %130, %135, !dbg !1466
  %137 = ashr i32 %136, 16, !dbg !1468
  %138 = shl i32 %136, 16, !dbg !1469
  %139 = and i32 %129, 65535, !dbg !1469
  %140 = or i32 %138, %139, !dbg !1469
  %141 = getelementptr inbounds i32, i32* %123, i64 1, !dbg !1469
  store i32 %140, i32* %123, align 4, !dbg !1469, !tbaa !431
  %142 = icmp ult i32* %133, %117, !dbg !1470
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1471
  br i1 %142, label %119, label %143, !dbg !1471, !llvm.loop !1472

; <label>:143:                                    ; preds = %119
  %144 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %67, i64 0, i32 5, i64 %112, !dbg !1439
  %145 = icmp ult i32* %131, %144, !dbg !1474
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1475
  br i1 %145, label %150, label %146, !dbg !1475

; <label>:146:                                    ; preds = %150, %143
  %147 = phi i32 [ %140, %143 ], [ %164, %150 ], !dbg !1476
  %148 = phi i32* [ %123, %143 ], [ %151, %150 ], !dbg !1477
  %149 = icmp eq i32 %147, 0, !dbg !1479
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1480
  br i1 %149, label %167, label %174, !dbg !1480

; <label>:150:                                    ; preds = %143, %150
  %151 = phi i32* [ %165, %150 ], [ %141, %143 ]
  %152 = phi i32* [ %158, %150 ], [ %131, %143 ]
  %153 = phi i32 [ %161, %150 ], [ %137, %143 ]
  %154 = load i32, i32* %152, align 4, !dbg !1481, !tbaa !431
  %155 = and i32 %154, 65535, !dbg !1482
  %156 = add nsw i32 %155, %153, !dbg !1483
  %157 = ashr i32 %156, 16, !dbg !1484
  %158 = getelementptr inbounds i32, i32* %152, i64 1, !dbg !1485
  %159 = lshr i32 %154, 16, !dbg !1486
  %160 = add nsw i32 %157, %159, !dbg !1487
  %161 = ashr i32 %160, 16, !dbg !1488
  %162 = shl i32 %160, 16, !dbg !1489
  %163 = and i32 %156, 65535, !dbg !1489
  %164 = or i32 %162, %163, !dbg !1489
  %165 = getelementptr inbounds i32, i32* %151, i64 1, !dbg !1489
  store i32 %164, i32* %151, align 4, !dbg !1489, !tbaa !431
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1475
  %166 = icmp ult i32* %158, %144, !dbg !1474
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1475
  br i1 %166, label %150, label %146, !dbg !1475, !llvm.loop !1490

; <label>:167:                                    ; preds = %146, %167
  %168 = phi i32* [ %171, %167 ], [ %148, %146 ]
  %169 = phi i32 [ %170, %167 ], [ %110, %146 ]
  %170 = add nsw i32 %169, -1, !dbg !1492
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1480
  %171 = getelementptr inbounds i32, i32* %168, i64 -1, !dbg !1493
  %172 = load i32, i32* %171, align 4, !dbg !1476, !tbaa !431
  %173 = icmp eq i32 %172, 0, !dbg !1479
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1480
  br i1 %173, label %167, label %174, !dbg !1480, !llvm.loop !1494

; <label>:174:                                    ; preds = %167, %146
  %175 = phi i32 [ %110, %146 ], [ %170, %167 ], !dbg !1392
  %176 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %107, i64 0, i32 4, !dbg !1495
  store i32 %175, i32* %176, align 4, !dbg !1496, !tbaa !378
  br label %177, !dbg !1497

; <label>:177:                                    ; preds = %174, %58
  %178 = phi %struct._Bigint* [ %107, %174 ], [ %59, %58 ], !dbg !1384
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1384
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1498
  ret %struct._Bigint* %178, !dbg !1498
}

; Function Attrs: noredzone nounwind
define dso_local double @__ulp(double) local_unnamed_addr #0 !dbg !1499 {
  %2 = bitcast double %0 to i64, !dbg !1514
  %3 = lshr i64 %2, 32, !dbg !1514
  %4 = trunc i64 %3 to i32, !dbg !1514
  %5 = and i32 %4, 2146435072, !dbg !1515
  %6 = icmp ugt i32 %5, 54525952, !dbg !1516
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1518
  br i1 %6, label %7, label %12, !dbg !1518

; <label>:7:                                      ; preds = %1
  %8 = add nsw i32 %5, -54525952, !dbg !1519
  %9 = zext i32 %8 to i64, !dbg !1521
  %10 = shl nuw i64 %9, 32, !dbg !1521
  %11 = bitcast i64 %10 to double, !dbg !1521
  br label %28, !dbg !1524

; <label>:12:                                     ; preds = %1
  %13 = sub nsw i32 54525952, %5, !dbg !1525
  %14 = ashr exact i32 %13, 20, !dbg !1527
  %15 = icmp slt i32 %13, 20971520, !dbg !1528
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1530
  br i1 %15, label %16, label %21, !dbg !1530

; <label>:16:                                     ; preds = %12
  %17 = lshr i32 524288, %14, !dbg !1531
  %18 = zext i32 %17 to i64, !dbg !1533
  %19 = shl nuw i64 %18, 32, !dbg !1533
  %20 = bitcast i64 %19 to double, !dbg !1533
  br label %28, !dbg !1534

; <label>:21:                                     ; preds = %12
  %22 = icmp sgt i32 %13, 52428800, !dbg !1535
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1537
  br i1 %22, label %28, label %23, !dbg !1537

; <label>:23:                                     ; preds = %21
  %24 = sub nsw i32 51, %14, !dbg !1538
  %25 = shl i32 1, %24, !dbg !1539
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1537
  %26 = zext i32 %25 to i64, !dbg !1537
  %27 = bitcast i64 %26 to double, !dbg !1537
  br label %28, !dbg !1537

; <label>:28:                                     ; preds = %23, %21, %16, %7
  %29 = phi double [ %11, %7 ], [ %20, %16 ], [ %27, %23 ], [ 4.940660e-324, %21 ], !dbg !1540
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1541
  ret double %29, !dbg !1541
}

; Function Attrs: noredzone nounwind
define dso_local double @__b2d(%struct._Bigint* readonly, i32* nocapture) local_unnamed_addr #0 !dbg !1542 {
  %3 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %0, i64 0, i32 5, i64 0, !dbg !1557
  %4 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %0, i64 0, i32 4, !dbg !1559
  %5 = load i32, i32* %4, align 4, !dbg !1559, !tbaa !378
  %6 = sext i32 %5 to i64, !dbg !1560
  %7 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %0, i64 0, i32 5, i64 %6, !dbg !1560
  %8 = getelementptr inbounds i32, i32* %7, i64 -1, !dbg !1562
  %9 = load i32, i32* %8, align 4, !dbg !1563, !tbaa !431
  %10 = icmp ugt i32 %9, 65535, !dbg !1568
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1569
  br i1 %10, label %13, label %11, !dbg !1569

; <label>:11:                                     ; preds = %2
  %12 = shl i32 %9, 16, !dbg !1570
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1571
  br label %13, !dbg !1571

; <label>:13:                                     ; preds = %11, %2
  %14 = phi i32 [ %9, %2 ], [ %12, %11 ]
  %15 = phi i32 [ 0, %2 ], [ 16, %11 ], !dbg !1572
  %16 = icmp ugt i32 %14, 16777215, !dbg !1573
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1574
  br i1 %16, label %20, label %17, !dbg !1574

; <label>:17:                                     ; preds = %13
  %18 = or i32 %15, 8, !dbg !1575
  %19 = shl i32 %14, 8, !dbg !1576
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1577
  br label %20, !dbg !1577

; <label>:20:                                     ; preds = %17, %13
  %21 = phi i32 [ %14, %13 ], [ %19, %17 ]
  %22 = phi i32 [ %15, %13 ], [ %18, %17 ], !dbg !1578
  %23 = icmp ugt i32 %21, 268435455, !dbg !1579
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1580
  br i1 %23, label %27, label %24, !dbg !1580

; <label>:24:                                     ; preds = %20
  %25 = add nsw i32 %22, 4, !dbg !1581
  %26 = shl i32 %21, 4, !dbg !1582
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1583
  br label %27, !dbg !1583

; <label>:27:                                     ; preds = %24, %20
  %28 = phi i32 [ %21, %20 ], [ %26, %24 ]
  %29 = phi i32 [ %22, %20 ], [ %25, %24 ], !dbg !1584
  %30 = icmp ugt i32 %28, 1073741823, !dbg !1585
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1586
  br i1 %30, label %34, label %31, !dbg !1586

; <label>:31:                                     ; preds = %27
  %32 = add nsw i32 %29, 2, !dbg !1587
  %33 = shl i32 %28, 2, !dbg !1588
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1589
  br label %34, !dbg !1589

; <label>:34:                                     ; preds = %31, %27
  %35 = phi i32 [ %28, %27 ], [ %33, %31 ]
  %36 = phi i32 [ %29, %27 ], [ %32, %31 ], !dbg !1590
  %37 = icmp slt i32 %35, 0, !dbg !1591
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1592
  br i1 %37, label %43, label %38, !dbg !1592

; <label>:38:                                     ; preds = %34
  %39 = add nsw i32 %36, 1, !dbg !1593
  %40 = and i32 %35, 1073741824, !dbg !1594
  %41 = icmp eq i32 %40, 0, !dbg !1594
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1595
  br i1 %41, label %42, label %43, !dbg !1595

; <label>:42:                                     ; preds = %38
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1596
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1597
  store i32 0, i32* %1, align 4, !dbg !1599, !tbaa !431
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1600
  br label %60, !dbg !1600

; <label>:43:                                     ; preds = %34, %38
  %44 = phi i32 [ %36, %34 ], [ %39, %38 ], !dbg !1601
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1602
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1597
  %45 = sub nsw i32 32, %44, !dbg !1603
  store i32 %45, i32* %1, align 4, !dbg !1599, !tbaa !431
  %46 = icmp slt i32 %44, 11, !dbg !1604
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1600
  br i1 %46, label %47, label %60, !dbg !1600

; <label>:47:                                     ; preds = %43
  %48 = sub nsw i32 11, %44, !dbg !1606
  %49 = lshr i32 %9, %48, !dbg !1608
  %50 = icmp ugt i32* %8, %3, !dbg !1609
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1610
  br i1 %50, label %51, label %54, !dbg !1610

; <label>:51:                                     ; preds = %47
  %52 = getelementptr inbounds i32, i32* %7, i64 -2, !dbg !1611
  %53 = load i32, i32* %52, align 4, !dbg !1612, !tbaa !431
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1610
  br label %54, !dbg !1610

; <label>:54:                                     ; preds = %47, %51
  %55 = phi i32 [ %53, %51 ], [ 0, %47 ], !dbg !1610
  %56 = add nsw i32 %44, 21, !dbg !1614
  %57 = shl i32 %9, %56, !dbg !1615
  %58 = lshr i32 %55, %48, !dbg !1616
  %59 = or i32 %58, %57, !dbg !1617
  br label %85, !dbg !1618

; <label>:60:                                     ; preds = %42, %43
  %61 = phi i32 [ 32, %42 ], [ %44, %43 ]
  %62 = icmp ugt i32* %8, %3, !dbg !1619
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1620
  br i1 %62, label %63, label %66, !dbg !1620

; <label>:63:                                     ; preds = %60
  %64 = getelementptr inbounds i32, i32* %7, i64 -2, !dbg !1621
  %65 = load i32, i32* %64, align 4, !dbg !1622, !tbaa !431
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1620
  br label %66, !dbg !1620

; <label>:66:                                     ; preds = %60, %63
  %67 = phi i32* [ %64, %63 ], [ %8, %60 ], !dbg !1623
  %68 = phi i32 [ %65, %63 ], [ 0, %60 ], !dbg !1620
  %69 = add nsw i32 %61, -11, !dbg !1625
  %70 = icmp eq i32 %69, 0, !dbg !1625
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1627
  br i1 %70, label %85, label %71, !dbg !1627

; <label>:71:                                     ; preds = %66
  %72 = shl i32 %9, %69, !dbg !1628
  %73 = sub i32 43, %61, !dbg !1630
  %74 = lshr i32 %68, %73, !dbg !1631
  %75 = or i32 %72, %74, !dbg !1632
  %76 = icmp ugt i32* %67, %3, !dbg !1633
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1634
  br i1 %76, label %77, label %80, !dbg !1634

; <label>:77:                                     ; preds = %71
  %78 = getelementptr inbounds i32, i32* %67, i64 -1, !dbg !1635
  %79 = load i32, i32* %78, align 4, !dbg !1636, !tbaa !431
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1634
  br label %80, !dbg !1634

; <label>:80:                                     ; preds = %71, %77
  %81 = phi i32 [ %79, %77 ], [ 0, %71 ], !dbg !1634
  %82 = shl i32 %68, %69, !dbg !1637
  %83 = lshr i32 %81, %73, !dbg !1638
  %84 = or i32 %83, %82, !dbg !1639
  br label %85, !dbg !1641

; <label>:85:                                     ; preds = %66, %80, %54
  %86 = phi i32 [ %84, %80 ], [ %59, %54 ], [ %68, %66 ]
  %87 = phi i32 [ %75, %80 ], [ %49, %54 ], [ %9, %66 ]
  %88 = or i32 %87, 1072693248, !dbg !1642
  %89 = zext i32 %88 to i64, !dbg !1642
  %90 = shl nuw i64 %89, 32, !dbg !1642
  %91 = zext i32 %86 to i64, !dbg !1642
  %92 = or i64 %90, %91, !dbg !1642
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %93 = bitcast i64 %92 to double, !dbg !1643
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1645
  ret double %93, !dbg !1645
}

; Function Attrs: noredzone nounwind
define dso_local %struct._Bigint* @__d2b(%struct._reent* nocapture, double, i32* nocapture, i32* nocapture) local_unnamed_addr #0 !dbg !1646 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = bitcast i32* %5 to i8*, !dbg !1663
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #5, !dbg !1663
  %8 = bitcast i32* %6 to i8*, !dbg !1663
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #5, !dbg !1663
  %9 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 13, !dbg !1667
  %10 = load %struct._Bigint**, %struct._Bigint*** %9, align 8, !dbg !1667, !tbaa !332
  %11 = icmp eq %struct._Bigint** %10, null, !dbg !1668
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1669
  br i1 %11, label %12, label %17, !dbg !1669

; <label>:12:                                     ; preds = %4
  %13 = tail call i8* @calloc(i64 8, i64 65) #4, !dbg !1670
  %14 = bitcast %struct._Bigint*** %9 to i8**, !dbg !1671
  store i8* %13, i8** %14, align 8, !dbg !1671, !tbaa !332
  %15 = icmp eq i8* %13, null, !dbg !1672
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1673
  %16 = bitcast i8* %13 to %struct._Bigint**, !dbg !1673
  br i1 %15, label %39, label %17, !dbg !1673

; <label>:17:                                     ; preds = %12, %4
  %18 = phi %struct._Bigint** [ %16, %12 ], [ %10, %4 ], !dbg !1674
  %19 = getelementptr inbounds %struct._Bigint*, %struct._Bigint** %18, i64 1, !dbg !1674
  %20 = load %struct._Bigint*, %struct._Bigint** %19, align 8, !dbg !1674, !tbaa !351
  %21 = icmp eq %struct._Bigint* %20, null, !dbg !1676
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1677
  br i1 %21, label %26, label %22, !dbg !1677

; <label>:22:                                     ; preds = %17
  %23 = bitcast %struct._Bigint* %20 to i64*, !dbg !1678
  %24 = load i64, i64* %23, align 8, !dbg !1678, !tbaa !357
  %25 = bitcast %struct._Bigint** %19 to i64*, !dbg !1679
  store i64 %24, i64* %25, align 8, !dbg !1679, !tbaa !351
  br label %35, !dbg !1680

; <label>:26:                                     ; preds = %17
  %27 = tail call i8* @calloc(i64 1, i64 36) #4, !dbg !1682
  %28 = icmp eq i8* %27, null, !dbg !1683
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1684
  br i1 %28, label %39, label %29, !dbg !1684

; <label>:29:                                     ; preds = %26
  %30 = bitcast i8* %27 to %struct._Bigint*, !dbg !1685
  %31 = getelementptr inbounds i8, i8* %27, i64 8, !dbg !1686
  %32 = bitcast i8* %31 to i32*, !dbg !1686
  store i32 1, i32* %32, align 8, !dbg !1687, !tbaa !371
  %33 = getelementptr inbounds i8, i8* %27, i64 12, !dbg !1688
  %34 = bitcast i8* %33 to i32*, !dbg !1688
  store i32 2, i32* %34, align 4, !dbg !1689, !tbaa !374
  br label %35

; <label>:35:                                     ; preds = %29, %22
  %36 = phi %struct._Bigint* [ %20, %22 ], [ %30, %29 ], !dbg !1690
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %37 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %36, i64 0, i32 4, !dbg !1691
  store i32 0, i32* %37, align 4, !dbg !1692, !tbaa !378
  %38 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %36, i64 0, i32 3, !dbg !1693
  store i32 0, i32* %38, align 8, !dbg !1694, !tbaa !381
  br label %39, !dbg !1695

; <label>:39:                                     ; preds = %26, %12, %35
  %40 = phi %struct._Bigint* [ %36, %35 ], [ null, %12 ], [ null, %26 ], !dbg !1696
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1697
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1698
  %41 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %40, i64 0, i32 5, i64 0, !dbg !1700
  %42 = bitcast double %1 to i64, !dbg !1702
  %43 = lshr i64 %42, 32, !dbg !1702
  %44 = trunc i64 %43 to i32, !dbg !1702
  %45 = and i32 %44, 1048575, !dbg !1703
  store i32 %45, i32* %6, align 4, !dbg !1705, !tbaa !431
  %46 = lshr i64 %42, 52, !dbg !1706
  %47 = trunc i64 %46 to i32, !dbg !1708
  %48 = and i32 %47, 2047, !dbg !1708
  %49 = icmp ne i32 %48, 0, !dbg !1710
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1711
  br i1 %49, label %50, label %52, !dbg !1711

; <label>:50:                                     ; preds = %39
  %51 = or i32 %45, 1048576, !dbg !1712
  store i32 %51, i32* %6, align 4, !dbg !1712, !tbaa !431
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1713
  br label %52, !dbg !1713

; <label>:52:                                     ; preds = %50, %39
  %53 = phi i32 [ %51, %50 ], [ %45, %39 ]
  %54 = trunc i64 %42 to i32, !dbg !1714
  %55 = icmp eq i32 %54, 0, !dbg !1714
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1716
  br i1 %55, label %72, label %56, !dbg !1716

; <label>:56:                                     ; preds = %52
  store i32 %54, i32* %5, align 4, !dbg !1718, !tbaa !431
  %57 = call i32 @__lo0bits(i32* nonnull %5) #6, !dbg !1720
  %58 = icmp eq i32 %57, 0, !dbg !1722
  %59 = load i32, i32* %5, align 4, !dbg !1724, !tbaa !431
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1725
  br i1 %58, label %65, label %60, !dbg !1725

; <label>:60:                                     ; preds = %56
  %61 = sub nsw i32 32, %57, !dbg !1726
  %62 = shl i32 %53, %61, !dbg !1728
  %63 = or i32 %62, %59, !dbg !1729
  store i32 %63, i32* %41, align 4, !dbg !1730, !tbaa !431
  %64 = lshr i32 %53, %57, !dbg !1731
  store i32 %64, i32* %6, align 4, !dbg !1731, !tbaa !431
  br label %66, !dbg !1732

; <label>:65:                                     ; preds = %56
  store i32 %59, i32* %41, align 4, !dbg !1733, !tbaa !431
  br label %66

; <label>:66:                                     ; preds = %65, %60
  %67 = phi i32 [ %53, %65 ], [ %64, %60 ], !dbg !1734
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %68 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %40, i64 0, i32 5, i64 1, !dbg !1735
  store i32 %67, i32* %68, align 4, !dbg !1736, !tbaa !431
  %69 = icmp eq i32 %67, 0, !dbg !1737
  %70 = select i1 %69, i32 1, i32 2, !dbg !1737
  %71 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %40, i64 0, i32 4, !dbg !1738
  store i32 %70, i32* %71, align 4, !dbg !1739, !tbaa !378
  br label %77, !dbg !1741

; <label>:72:                                     ; preds = %52
  %73 = call i32 @__lo0bits(i32* nonnull %6) #6, !dbg !1742
  %74 = load i32, i32* %6, align 4, !dbg !1744, !tbaa !431
  store i32 %74, i32* %41, align 4, !dbg !1745, !tbaa !431
  %75 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %40, i64 0, i32 4, !dbg !1746
  store i32 1, i32* %75, align 4, !dbg !1747, !tbaa !378
  %76 = add nsw i32 %73, 32, !dbg !1748
  br label %77

; <label>:77:                                     ; preds = %72, %66
  %78 = phi i32 [ %70, %66 ], [ 1, %72 ], !dbg !1749
  %79 = phi i32 [ %57, %66 ], [ %76, %72 ], !dbg !1749
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1750
  %80 = add i32 %79, %48, !dbg !1751
  br i1 %49, label %81, label %84, !dbg !1750

; <label>:81:                                     ; preds = %77
  %82 = add i32 %80, -1075, !dbg !1754
  store i32 %82, i32* %2, align 4, !dbg !1756, !tbaa !431
  %83 = sub nsw i32 53, %79, !dbg !1757
  br label %128, !dbg !1758

; <label>:84:                                     ; preds = %77
  %85 = add i32 %80, -1074, !dbg !1759
  store i32 %85, i32* %2, align 4, !dbg !1760, !tbaa !431
  %86 = shl nuw nsw i32 %78, 5, !dbg !1761
  %87 = add nsw i32 %78, -1, !dbg !1762
  %88 = sext i32 %87 to i64, !dbg !1763
  %89 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %40, i64 0, i32 5, i64 %88, !dbg !1763
  %90 = load i32, i32* %89, align 4, !dbg !1763, !tbaa !431
  %91 = icmp ugt i32 %90, 65535, !dbg !1767
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1768
  br i1 %91, label %94, label %92, !dbg !1768

; <label>:92:                                     ; preds = %84
  %93 = shl i32 %90, 16, !dbg !1769
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1770
  br label %94, !dbg !1770

; <label>:94:                                     ; preds = %92, %84
  %95 = phi i32 [ %90, %84 ], [ %93, %92 ]
  %96 = phi i32 [ 0, %84 ], [ 16, %92 ], !dbg !1771
  %97 = icmp ugt i32 %95, 16777215, !dbg !1772
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1773
  br i1 %97, label %101, label %98, !dbg !1773

; <label>:98:                                     ; preds = %94
  %99 = or i32 %96, 8, !dbg !1774
  %100 = shl i32 %95, 8, !dbg !1775
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1776
  br label %101, !dbg !1776

; <label>:101:                                    ; preds = %98, %94
  %102 = phi i32 [ %95, %94 ], [ %100, %98 ]
  %103 = phi i32 [ %96, %94 ], [ %99, %98 ], !dbg !1777
  %104 = icmp ugt i32 %102, 268435455, !dbg !1778
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1779
  br i1 %104, label %108, label %105, !dbg !1779

; <label>:105:                                    ; preds = %101
  %106 = add nsw i32 %103, 4, !dbg !1780
  %107 = shl i32 %102, 4, !dbg !1781
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1782
  br label %108, !dbg !1782

; <label>:108:                                    ; preds = %105, %101
  %109 = phi i32 [ %102, %101 ], [ %107, %105 ]
  %110 = phi i32 [ %103, %101 ], [ %106, %105 ], !dbg !1783
  %111 = icmp ugt i32 %109, 1073741823, !dbg !1784
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1785
  br i1 %111, label %115, label %112, !dbg !1785

; <label>:112:                                    ; preds = %108
  %113 = add nsw i32 %110, 2, !dbg !1786
  %114 = shl i32 %109, 2, !dbg !1787
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1788
  br label %115, !dbg !1788

; <label>:115:                                    ; preds = %112, %108
  %116 = phi i32 [ %109, %108 ], [ %114, %112 ]
  %117 = phi i32 [ %110, %108 ], [ %113, %112 ], !dbg !1789
  %118 = icmp slt i32 %116, 0, !dbg !1790
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1791
  br i1 %118, label %123, label %119, !dbg !1791

; <label>:119:                                    ; preds = %115
  %120 = add nsw i32 %117, 1, !dbg !1792
  %121 = and i32 %116, 1073741824, !dbg !1793
  %122 = icmp eq i32 %121, 0, !dbg !1793
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1794
  br i1 %122, label %125, label %123, !dbg !1794

; <label>:123:                                    ; preds = %119, %115
  %124 = phi i32 [ %117, %115 ], [ %120, %119 ], !dbg !1795
  br label %125, !dbg !1796

; <label>:125:                                    ; preds = %119, %123
  %126 = phi i32 [ %124, %123 ], [ 32, %119 ], !dbg !1797
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1751
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1798
  %127 = sub nsw i32 %86, %126, !dbg !1799
  br label %128

; <label>:128:                                    ; preds = %125, %81
  %129 = phi i32 [ %127, %125 ], [ %83, %81 ]
  store i32 %129, i32* %3, align 4, !dbg !1800, !tbaa !431
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #5, !dbg !1801
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #5, !dbg !1801
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1802
  ret %struct._Bigint* %40, !dbg !1802
}

; Function Attrs: noredzone nounwind
define dso_local double @__ratio(%struct._Bigint*, %struct._Bigint*) local_unnamed_addr #0 !dbg !1803 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = bitcast i32* %3 to i8*, !dbg !1815
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #5, !dbg !1815
  %6 = bitcast i32* %4 to i8*, !dbg !1815
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #5, !dbg !1815
  %7 = call double @__b2d(%struct._Bigint* %0, i32* nonnull %3) #6, !dbg !1817
  %8 = call double @__b2d(%struct._Bigint* %1, i32* nonnull %4) #6, !dbg !1820
  %9 = load i32, i32* %3, align 4, !dbg !1822, !tbaa !431
  %10 = load i32, i32* %4, align 4, !dbg !1823, !tbaa !431
  %11 = sub nsw i32 %9, %10, !dbg !1824
  %12 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %0, i64 0, i32 4, !dbg !1825
  %13 = load i32, i32* %12, align 4, !dbg !1825, !tbaa !378
  %14 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %1, i64 0, i32 4, !dbg !1826
  %15 = load i32, i32* %14, align 4, !dbg !1826, !tbaa !378
  %16 = sub nsw i32 %13, %15, !dbg !1827
  %17 = shl nsw i32 %16, 5, !dbg !1828
  %18 = add nsw i32 %17, %11, !dbg !1829
  %19 = icmp sgt i32 %18, 0, !dbg !1831
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1833
  %20 = shl i32 %18, 20, !dbg !1834
  br i1 %19, label %21, label %31, !dbg !1833

; <label>:21:                                     ; preds = %2
  %22 = bitcast double %7 to i64, !dbg !1836
  %23 = lshr i64 %22, 32, !dbg !1836
  %24 = trunc i64 %23 to i32, !dbg !1836
  %25 = add i32 %20, %24, !dbg !1836
  %26 = zext i32 %25 to i64, !dbg !1836
  %27 = shl nuw i64 %26, 32, !dbg !1836
  %28 = and i64 %22, 4294967295, !dbg !1836
  %29 = or i64 %27, %28, !dbg !1836
  %30 = bitcast i64 %29 to double, !dbg !1836
  br label %41, !dbg !1837

; <label>:31:                                     ; preds = %2
  %32 = bitcast double %8 to i64, !dbg !1838
  %33 = lshr i64 %32, 32, !dbg !1838
  %34 = trunc i64 %33 to i32, !dbg !1838
  %35 = sub i32 %34, %20, !dbg !1838
  %36 = zext i32 %35 to i64, !dbg !1838
  %37 = shl nuw i64 %36, 32, !dbg !1838
  %38 = and i64 %32, 4294967295, !dbg !1838
  %39 = or i64 %37, %38, !dbg !1838
  %40 = bitcast i64 %39 to double, !dbg !1838
  br label %41

; <label>:41:                                     ; preds = %31, %21
  %42 = phi double [ %30, %21 ], [ %7, %31 ], !dbg !1839
  %43 = phi double [ %8, %21 ], [ %40, %31 ], !dbg !1834
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %44 = fdiv double %42, %43, !dbg !1840
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #5, !dbg !1841
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #5, !dbg !1841
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1842
  ret double %44, !dbg !1842
}

; Function Attrs: noredzone nounwind
define dso_local double @_mprec_log10(i32) local_unnamed_addr #0 !dbg !1843 {
  %2 = icmp slt i32 %0, 24, !dbg !1851
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1853
  br i1 %2, label %4, label %3, !dbg !1853

; <label>:3:                                      ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1854
  br label %8, !dbg !1854

; <label>:4:                                      ; preds = %1
  %5 = sext i32 %0 to i64, !dbg !1855
  %6 = getelementptr inbounds [25 x double], [25 x double]* @__mprec_tens, i64 0, i64 %5, !dbg !1855
  %7 = load double, double* %6, align 8, !dbg !1855, !tbaa !1856
  br label %14, !dbg !1858

; <label>:8:                                      ; preds = %3, %8
  %9 = phi double [ 1.000000e+00, %3 ], [ %11, %8 ]
  %10 = phi i32 [ %0, %3 ], [ %12, %8 ]
  %11 = fmul double %9, 1.000000e+01, !dbg !1859
  %12 = add nsw i32 %10, -1, !dbg !1861
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1854
  %13 = icmp sgt i32 %10, 1, !dbg !1862
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1854
  br i1 %13, label %8, label %14, !dbg !1854, !llvm.loop !1863

; <label>:14:                                     ; preds = %8, %4
  %15 = phi double [ %7, %4 ], [ %11, %8 ], !dbg !1865
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1866
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1867
  ret double %15, !dbg !1867
}

; Function Attrs: noredzone nounwind
define dso_local void @__copybits(i32*, i32, %struct._Bigint* readonly) local_unnamed_addr #0 !dbg !1868 {
  %4 = add nsw i32 %1, -1, !dbg !1879
  %5 = ashr i32 %4, 5, !dbg !1880
  %6 = sext i32 %5 to i64, !dbg !1881
  %7 = getelementptr inbounds i32, i32* %0, i64 %6, !dbg !1881
  %8 = getelementptr inbounds i32, i32* %7, i64 1, !dbg !1882
  %9 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %2, i64 0, i32 4, !dbg !1884
  %10 = load i32, i32* %9, align 4, !dbg !1884, !tbaa !378
  %11 = sext i32 %10 to i64, !dbg !1885
  %12 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %2, i64 0, i32 5, i64 %11, !dbg !1885
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1887
  %13 = icmp sgt i32 %10, 0, !dbg !1888
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1887
  br i1 %13, label %14, label %16, !dbg !1887

; <label>:14:                                     ; preds = %3
  %15 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %2, i64 0, i32 5, i64 0, !dbg !1889
  br label %40, !dbg !1891

; <label>:16:                                     ; preds = %40, %3
  %17 = phi i32* [ %0, %3 ], [ %45, %40 ]
  %18 = icmp ult i32* %17, %8, !dbg !1892
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1893
  br i1 %18, label %19, label %58, !dbg !1893

; <label>:19:                                     ; preds = %16
  %20 = ptrtoint i32* %17 to i64
  %21 = icmp ugt i32* %17, %7, !dbg !1894
  %22 = select i1 %21, i32* %17, i32* %7, !dbg !1894
  %23 = bitcast i32* %22 to i8*
  %24 = sub i64 3, %20, !dbg !1894
  %25 = getelementptr i8, i8* %23, i64 %24, !dbg !1894
  %26 = ptrtoint i8* %25 to i64
  %27 = lshr i64 %26, 2, !dbg !1894
  %28 = add nuw nsw i64 %27, 1, !dbg !1894
  %29 = and i64 %28, 7, !dbg !1894
  %30 = icmp eq i64 %29, 0, !dbg !1894
  br i1 %30, label %37, label %31, !dbg !1894

; <label>:31:                                     ; preds = %19, %31
  %32 = phi i32* [ %34, %31 ], [ %17, %19 ]
  %33 = phi i64 [ %35, %31 ], [ %29, %19 ]
  %34 = getelementptr inbounds i32, i32* %32, i64 1, !dbg !1894
  store i32 0, i32* %32, align 4, !dbg !1895, !tbaa !431
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1893
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1893
  %35 = add i64 %33, -1, !dbg !1893
  %36 = icmp eq i64 %35, 0, !dbg !1893
  br i1 %36, label %37, label %31, !dbg !1893, !llvm.loop !1896

; <label>:37:                                     ; preds = %31, %19
  %38 = phi i32* [ %17, %19 ], [ %34, %31 ]
  %39 = icmp ult i8* %25, inttoptr (i64 28 to i8*), !dbg !1894
  br i1 %39, label %58, label %47, !dbg !1894

; <label>:40:                                     ; preds = %14, %40
  %41 = phi i32* [ %45, %40 ], [ %0, %14 ]
  %42 = phi i32* [ %43, %40 ], [ %15, %14 ]
  %43 = getelementptr inbounds i32, i32* %42, i64 1, !dbg !1891
  %44 = load i32, i32* %42, align 4, !dbg !1898, !tbaa !431
  %45 = getelementptr inbounds i32, i32* %41, i64 1, !dbg !1899
  store i32 %44, i32* %41, align 4, !dbg !1900, !tbaa !431
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1887
  %46 = icmp ult i32* %43, %12, !dbg !1888
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1887
  br i1 %46, label %40, label %16, !dbg !1887, !llvm.loop !1901

; <label>:47:                                     ; preds = %37, %47
  %48 = phi i32* [ %56, %47 ], [ %38, %37 ]
  %49 = getelementptr inbounds i32, i32* %48, i64 1, !dbg !1894
  store i32 0, i32* %48, align 4, !dbg !1895, !tbaa !431
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1893
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1893
  %50 = getelementptr inbounds i32, i32* %48, i64 2, !dbg !1894
  store i32 0, i32* %49, align 4, !dbg !1895, !tbaa !431
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1893
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1893
  %51 = getelementptr inbounds i32, i32* %48, i64 3, !dbg !1894
  store i32 0, i32* %50, align 4, !dbg !1895, !tbaa !431
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1893
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1893
  %52 = getelementptr inbounds i32, i32* %48, i64 4, !dbg !1894
  store i32 0, i32* %51, align 4, !dbg !1895, !tbaa !431
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1893
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1893
  %53 = getelementptr inbounds i32, i32* %48, i64 5, !dbg !1894
  store i32 0, i32* %52, align 4, !dbg !1895, !tbaa !431
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1893
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1893
  %54 = getelementptr inbounds i32, i32* %48, i64 6, !dbg !1894
  store i32 0, i32* %53, align 4, !dbg !1895, !tbaa !431
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1893
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1893
  %55 = getelementptr inbounds i32, i32* %48, i64 7, !dbg !1894
  store i32 0, i32* %54, align 4, !dbg !1895, !tbaa !431
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1893
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1893
  %56 = getelementptr inbounds i32, i32* %48, i64 8, !dbg !1894
  store i32 0, i32* %55, align 4, !dbg !1895, !tbaa !431
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1893
  %57 = icmp ult i32* %55, %7, !dbg !1892
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1893
  br i1 %57, label %47, label %58, !dbg !1893, !llvm.loop !1902

; <label>:58:                                     ; preds = %37, %47, %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1904
  ret void, !dbg !1904
}

; Function Attrs: noredzone nounwind
define dso_local i32 @__any_on(%struct._Bigint* readonly, i32) local_unnamed_addr #0 !dbg !1905 {
  %3 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %0, i64 0, i32 5, i64 0, !dbg !1918
  %4 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %0, i64 0, i32 4, !dbg !1920
  %5 = load i32, i32* %4, align 4, !dbg !1920, !tbaa !378
  %6 = ashr i32 %1, 5, !dbg !1922
  %7 = icmp sgt i32 %6, %5, !dbg !1924
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1926
  br i1 %7, label %8, label %9, !dbg !1926

; <label>:8:                                      ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1927
  br label %21, !dbg !1927

; <label>:9:                                      ; preds = %2
  %10 = icmp slt i32 %6, %5, !dbg !1928
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1930
  br i1 %10, label %11, label %21, !dbg !1930

; <label>:11:                                     ; preds = %9
  %12 = and i32 %1, 31, !dbg !1931
  %13 = icmp eq i32 %12, 0, !dbg !1931
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1932
  br i1 %13, label %21, label %14, !dbg !1932

; <label>:14:                                     ; preds = %11
  %15 = sext i32 %6 to i64, !dbg !1933
  %16 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %0, i64 0, i32 5, i64 %15, !dbg !1933
  %17 = load i32, i32* %16, align 4, !dbg !1933, !tbaa !431
  %18 = shl i32 -1, %12, !dbg !1937
  %19 = and i32 %17, %18, !dbg !1937
  %20 = icmp eq i32 %19, %17, !dbg !1938
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1940
  br i1 %20, label %21, label %32, !dbg !1940

; <label>:21:                                     ; preds = %14, %11, %9, %8
  %22 = phi i32 [ %5, %8 ], [ %6, %14 ], [ %6, %11 ], [ %6, %9 ], !dbg !1941
  %23 = sext i32 %22 to i64, !dbg !1943
  %24 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %0, i64 0, i32 5, i64 %23, !dbg !1943
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1944
  br label %25, !dbg !1944

; <label>:25:                                     ; preds = %28, %21
  %26 = phi i32* [ %24, %21 ], [ %29, %28 ], !dbg !1945
  %27 = icmp ugt i32* %26, %3, !dbg !1947
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1944
  br i1 %27, label %28, label %32, !dbg !1944

; <label>:28:                                     ; preds = %25
  %29 = getelementptr inbounds i32, i32* %26, i64 -1, !dbg !1948
  %30 = load i32, i32* %29, align 4, !dbg !1949, !tbaa !431
  %31 = icmp eq i32 %30, 0, !dbg !1949
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1950
  br i1 %31, label %25, label %32, !dbg !1950, !llvm.loop !1951

; <label>:32:                                     ; preds = %25, %28, %14
  %33 = phi i32 [ 1, %14 ], [ 0, %25 ], [ 1, %28 ], !dbg !1953
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1953
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1954
  ret i32 %33, !dbg !1954
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nobuiltin noredzone nounwind }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin noredzone }

!llvm.module.flags = !{!317, !318, !319}
!llvm.ident = !{!320}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "p05", scope: !2, file: !3, line: 427, type: !315, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "__pow5mult", scope: !3, file: !3, line: 422, type: !4, isLocal: false, isDefinition: true, scopeLine: 424, flags: DIFlagPrototyped, isOptimized: true, unit: !289, retainedNodes: !307)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/mprec.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !25, !6, !15}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Bigint", file: !8, line: 352, baseType: !9)
!8 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/mprec.h", directory: "/root/.unikraft/apps/redis/build")
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !10, line: 47, size: 256, elements: !11)
!10 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!11 = !{!12, !14, !16, !17, !18, !19}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !9, file: !10, line: 49, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !9, file: !10, line: 50, baseType: !15, size: 32, offset: 64)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !9, file: !10, line: 50, baseType: !15, size: 32, offset: 96)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !9, file: !10, line: 50, baseType: !15, size: 32, offset: 128)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !9, file: !10, line: 50, baseType: !15, size: 32, offset: 160)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !9, file: !10, line: 51, baseType: !20, size: 32, offset: 192)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 32, elements: !23)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !10, line: 25, baseType: !22)
!22 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!23 = !{!24}
!24 = !DISubrange(count: 1)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !10, line: 569, size: 14912, elements: !27)
!27 = !{!28, !29, !108, !109, !110, !111, !115, !116, !181, !182, !186, !187, !188, !189, !191, !192, !193, !255, !274, !275, !280, !287}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !26, file: !10, line: 571, baseType: !15, size: 32)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !26, file: !10, line: 576, baseType: !30, size: 64, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !10, line: 287, baseType: !32)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !10, line: 181, size: 1408, elements: !33)
!33 = !{!34, !37, !38, !39, !41, !42, !47, !48, !50, !59, !65, !70, !74, !75, !76, !77, !81, !83, !84, !85, !87, !88, !92, !107}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !32, file: !10, line: 182, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !32, file: !10, line: 183, baseType: !15, size: 32, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !32, file: !10, line: 184, baseType: !15, size: 32, offset: 96)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !32, file: !10, line: 185, baseType: !40, size: 16, offset: 128)
!40 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !32, file: !10, line: 186, baseType: !40, size: 16, offset: 144)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !32, file: !10, line: 187, baseType: !43, size: 128, offset: 192)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !10, line: 117, size: 128, elements: !44)
!44 = !{!45, !46}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !43, file: !10, line: 118, baseType: !35, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !43, file: !10, line: 119, baseType: !15, size: 32, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !32, file: !10, line: 188, baseType: !15, size: 32, offset: 320)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !32, file: !10, line: 195, baseType: !49, size: 64, offset: 384)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !32, file: !10, line: 197, baseType: !51, size: 64, offset: 448)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DISubroutineType(types: !53)
!53 = !{!54, !25, !49, !57, !15}
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !55, line: 145, baseType: !56)
!55 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!56 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !32, file: !10, line: 199, baseType: !60, size: 64, offset: 512)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DISubroutineType(types: !62)
!62 = !{!54, !25, !49, !63, !15}
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !32, file: !10, line: 202, baseType: !66, size: 64, offset: 576)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DISubroutineType(types: !68)
!68 = !{!69, !25, !49, !69, !15}
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !55, line: 114, baseType: !56)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !32, file: !10, line: 203, baseType: !71, size: 64, offset: 640)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DISubroutineType(types: !73)
!73 = !{!15, !25, !49}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !32, file: !10, line: 206, baseType: !43, size: 128, offset: 704)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !32, file: !10, line: 207, baseType: !35, size: 64, offset: 832)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !32, file: !10, line: 208, baseType: !15, size: 32, offset: 896)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !32, file: !10, line: 211, baseType: !78, size: 24, offset: 928)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 24, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 3)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !32, file: !10, line: 212, baseType: !82, size: 8, offset: 952)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 8, elements: !23)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !32, file: !10, line: 215, baseType: !43, size: 128, offset: 960)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !32, file: !10, line: 218, baseType: !15, size: 32, offset: 1088)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !32, file: !10, line: 219, baseType: !86, size: 64, offset: 1152)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !55, line: 44, baseType: !56)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !32, file: !10, line: 222, baseType: !25, size: 64, offset: 1216)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !32, file: !10, line: 226, baseType: !89, size: 32, offset: 1280)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !55, line: 175, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !91, line: 12, baseType: !15)
!91 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !32, file: !10, line: 228, baseType: !93, size: 64, offset: 1312)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !55, line: 171, baseType: !94)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !55, line: 163, size: 64, elements: !95)
!95 = !{!96, !97}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !94, file: !55, line: 165, baseType: !15, size: 32)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !94, file: !55, line: 170, baseType: !98, size: 32, offset: 32)
!98 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !94, file: !55, line: 166, size: 32, elements: !99)
!99 = !{!100, !103}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !98, file: !55, line: 168, baseType: !101, size: 32)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !102, line: 124, baseType: !22)
!102 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!103 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !98, file: !55, line: 169, baseType: !104, size: 32)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 32, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 4)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !32, file: !10, line: 229, baseType: !15, size: 32, offset: 1376)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !26, file: !10, line: 576, baseType: !30, size: 64, offset: 128)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !26, file: !10, line: 576, baseType: !30, size: 64, offset: 192)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !26, file: !10, line: 578, baseType: !15, size: 32, offset: 256)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !26, file: !10, line: 579, baseType: !112, size: 200, offset: 288)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 200, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 25)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !26, file: !10, line: 582, baseType: !15, size: 32, offset: 512)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !26, file: !10, line: 583, baseType: !117, size: 64, offset: 576)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !119, line: 178, size: 3392, elements: !120)
!119 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/../locale/setlocale.h", directory: "/root/.unikraft/apps/redis/build")
!120 = !{!121, !126, !134, !143, !144, !145, !173, !177, !180}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "categories", scope: !118, file: !119, line: 180, baseType: !122, size: 1792)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 1792, elements: !123)
!123 = !{!124, !125}
!124 = !DISubrange(count: 7)
!125 = !DISubrange(count: 32)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "wctomb", scope: !118, file: !119, line: 181, baseType: !127, size: 64, offset: 1792)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DISubroutineType(types: !129)
!129 = !{!15, !25, !57, !130, !131}
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !102, line: 83, baseType: !15)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !133, line: 86, baseType: !93)
!133 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/wchar.h", directory: "/root/.unikraft/apps/redis/build")
!134 = !DIDerivedType(tag: DW_TAG_member, name: "mbtowc", scope: !118, file: !119, line: 183, baseType: !135, size: 64, offset: 1856)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DISubroutineType(types: !137)
!137 = !{!15, !25, !138, !63, !139, !131}
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !140, line: 40, baseType: !141)
!140 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !55, line: 129, baseType: !142)
!142 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "cjk_lang", scope: !118, file: !119, line: 185, baseType: !15, size: 32, offset: 1920)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_ptr", scope: !118, file: !119, line: 186, baseType: !57, size: 64, offset: 1984)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "lconv", scope: !118, file: !119, line: 187, baseType: !146, size: 768, offset: 2048)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !147, line: 42, size: 768, elements: !148)
!147 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/locale.h", directory: "/root/.unikraft/apps/redis/build")
!148 = !{!149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "decimal_point", scope: !146, file: !147, line: 44, baseType: !57, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "thousands_sep", scope: !146, file: !147, line: 45, baseType: !57, size: 64, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "grouping", scope: !146, file: !147, line: 46, baseType: !57, size: 64, offset: 128)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "int_curr_symbol", scope: !146, file: !147, line: 47, baseType: !57, size: 64, offset: 192)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "currency_symbol", scope: !146, file: !147, line: 48, baseType: !57, size: 64, offset: 256)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "mon_decimal_point", scope: !146, file: !147, line: 49, baseType: !57, size: 64, offset: 320)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "mon_thousands_sep", scope: !146, file: !147, line: 50, baseType: !57, size: 64, offset: 384)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "mon_grouping", scope: !146, file: !147, line: 51, baseType: !57, size: 64, offset: 448)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "positive_sign", scope: !146, file: !147, line: 52, baseType: !57, size: 64, offset: 512)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "negative_sign", scope: !146, file: !147, line: 53, baseType: !57, size: 64, offset: 576)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "int_frac_digits", scope: !146, file: !147, line: 54, baseType: !58, size: 8, offset: 640)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "frac_digits", scope: !146, file: !147, line: 55, baseType: !58, size: 8, offset: 648)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "p_cs_precedes", scope: !146, file: !147, line: 56, baseType: !58, size: 8, offset: 656)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "p_sep_by_space", scope: !146, file: !147, line: 57, baseType: !58, size: 8, offset: 664)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "n_cs_precedes", scope: !146, file: !147, line: 58, baseType: !58, size: 8, offset: 672)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "n_sep_by_space", scope: !146, file: !147, line: 59, baseType: !58, size: 8, offset: 680)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "p_sign_posn", scope: !146, file: !147, line: 60, baseType: !58, size: 8, offset: 688)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "n_sign_posn", scope: !146, file: !147, line: 61, baseType: !58, size: 8, offset: 696)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_cs_precedes", scope: !146, file: !147, line: 62, baseType: !58, size: 8, offset: 704)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sep_by_space", scope: !146, file: !147, line: 63, baseType: !58, size: 8, offset: 712)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sign_posn", scope: !146, file: !147, line: 64, baseType: !58, size: 8, offset: 720)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_cs_precedes", scope: !146, file: !147, line: 65, baseType: !58, size: 8, offset: 728)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sep_by_space", scope: !146, file: !147, line: 66, baseType: !58, size: 8, offset: 736)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sign_posn", scope: !146, file: !147, line: 67, baseType: !58, size: 8, offset: 744)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cur_max", scope: !118, file: !119, line: 189, baseType: !174, size: 16, offset: 2816)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 16, elements: !175)
!175 = !{!176}
!176 = !DISubrange(count: 2)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_codeset", scope: !118, file: !119, line: 190, baseType: !178, size: 256, offset: 2832)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 256, elements: !179)
!179 = !{!125}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "message_codeset", scope: !118, file: !119, line: 191, baseType: !178, size: 256, offset: 3088)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !26, file: !10, line: 585, baseType: !15, size: 32, offset: 640)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !26, file: !10, line: 587, baseType: !183, size: 64, offset: 704)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{null, !25}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !26, file: !10, line: 590, baseType: !13, size: 64, offset: 768)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !26, file: !10, line: 591, baseType: !15, size: 32, offset: 832)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !26, file: !10, line: 592, baseType: !13, size: 64, offset: 896)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !26, file: !10, line: 593, baseType: !190, size: 64, offset: 960)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !26, file: !10, line: 596, baseType: !15, size: 32, offset: 1024)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !26, file: !10, line: 597, baseType: !57, size: 64, offset: 1088)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !26, file: !10, line: 632, baseType: !194, size: 2880, offset: 1152)
!194 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !26, file: !10, line: 599, size: 2880, elements: !195)
!195 = !{!196, !246}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !194, file: !10, line: 622, baseType: !197, size: 1728)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !194, file: !10, line: 601, size: 1728, elements: !198)
!198 = !{!199, !200, !201, !205, !217, !218, !220, !228, !229, !230, !231, !235, !239, !240, !241, !242, !243, !244, !245}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !197, file: !10, line: 603, baseType: !22, size: 32)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !197, file: !10, line: 604, baseType: !57, size: 64, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !197, file: !10, line: 605, baseType: !202, size: 208, offset: 128)
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 208, elements: !203)
!203 = !{!204}
!204 = !DISubrange(count: 26)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !197, file: !10, line: 606, baseType: !206, size: 288, offset: 352)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !10, line: 55, size: 288, elements: !207)
!207 = !{!208, !209, !210, !211, !212, !213, !214, !215, !216}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !206, file: !10, line: 57, baseType: !15, size: 32)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !206, file: !10, line: 58, baseType: !15, size: 32, offset: 32)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !206, file: !10, line: 59, baseType: !15, size: 32, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !206, file: !10, line: 60, baseType: !15, size: 32, offset: 96)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !206, file: !10, line: 61, baseType: !15, size: 32, offset: 128)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !206, file: !10, line: 62, baseType: !15, size: 32, offset: 160)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !206, file: !10, line: 63, baseType: !15, size: 32, offset: 192)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !206, file: !10, line: 64, baseType: !15, size: 32, offset: 224)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !206, file: !10, line: 65, baseType: !15, size: 32, offset: 256)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !197, file: !10, line: 607, baseType: !15, size: 32, offset: 640)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !197, file: !10, line: 608, baseType: !219, size: 64, offset: 704)
!219 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !197, file: !10, line: 609, baseType: !221, size: 112, offset: 768)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !10, line: 319, size: 112, elements: !222)
!222 = !{!223, !226, !227}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !221, file: !10, line: 320, baseType: !224, size: 48)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 48, elements: !79)
!225 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !221, file: !10, line: 321, baseType: !224, size: 48, offset: 48)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !221, file: !10, line: 322, baseType: !225, size: 16, offset: 96)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !197, file: !10, line: 610, baseType: !93, size: 64, offset: 896)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !197, file: !10, line: 611, baseType: !93, size: 64, offset: 960)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !197, file: !10, line: 612, baseType: !93, size: 64, offset: 1024)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !197, file: !10, line: 613, baseType: !232, size: 64, offset: 1088)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 64, elements: !233)
!233 = !{!234}
!234 = !DISubrange(count: 8)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !197, file: !10, line: 614, baseType: !236, size: 192, offset: 1152)
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 192, elements: !237)
!237 = !{!238}
!238 = !DISubrange(count: 24)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !197, file: !10, line: 615, baseType: !15, size: 32, offset: 1344)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !197, file: !10, line: 616, baseType: !93, size: 64, offset: 1376)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !197, file: !10, line: 617, baseType: !93, size: 64, offset: 1440)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !197, file: !10, line: 618, baseType: !93, size: 64, offset: 1504)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !197, file: !10, line: 619, baseType: !93, size: 64, offset: 1568)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !197, file: !10, line: 620, baseType: !93, size: 64, offset: 1632)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !197, file: !10, line: 621, baseType: !15, size: 32, offset: 1696)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !194, file: !10, line: 631, baseType: !247, size: 2880)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !194, file: !10, line: 626, size: 2880, elements: !248)
!248 = !{!249, !253}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !247, file: !10, line: 629, baseType: !250, size: 1920)
!250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 1920, elements: !251)
!251 = !{!252}
!252 = !DISubrange(count: 30)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !247, file: !10, line: 630, baseType: !254, size: 960, offset: 1920)
!254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 960, elements: !251)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !26, file: !10, line: 636, baseType: !256, size: 64, offset: 4032)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !10, line: 93, size: 6336, elements: !258)
!258 = !{!259, !260, !261, !266}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !257, file: !10, line: 94, baseType: !256, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !257, file: !10, line: 95, baseType: !15, size: 32, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !257, file: !10, line: 97, baseType: !262, size: 2048, offset: 128)
!262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !263, size: 2048, elements: !179)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DISubroutineType(types: !265)
!265 = !{null}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !257, file: !10, line: 98, baseType: !267, size: 4160, offset: 2176)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !10, line: 74, size: 4160, elements: !268)
!268 = !{!269, !271, !272, !273}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !267, file: !10, line: 75, baseType: !270, size: 2048)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 2048, elements: !179)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !267, file: !10, line: 76, baseType: !270, size: 2048, offset: 2048)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !267, file: !10, line: 78, baseType: !21, size: 32, offset: 4096)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !267, file: !10, line: 81, baseType: !21, size: 32, offset: 4128)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !26, file: !10, line: 637, baseType: !257, size: 6336, offset: 4096)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !26, file: !10, line: 641, baseType: !276, size: 64, offset: 10432)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DISubroutineType(types: !279)
!279 = !{null, !15}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !26, file: !10, line: 646, baseType: !281, size: 192, offset: 10496)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !10, line: 291, size: 192, elements: !282)
!282 = !{!283, !285, !286}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !281, file: !10, line: 293, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !281, file: !10, line: 294, baseType: !15, size: 32, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !281, file: !10, line: 295, baseType: !30, size: 64, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !26, file: !10, line: 648, baseType: !288, size: 4224, offset: 10688)
!288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 4224, elements: !79)
!289 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !290, retainedTypes: !291, globals: !294)
!290 = !{}
!291 = !{!49, !190, !6, !15, !57, !292}
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !293, line: 79, baseType: !22)
!293 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!294 = !{!0, !295, !300, !305}
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(name: "__mprec_tens", scope: !289, file: !3, line: 955, type: !297, isLocal: false, isDefinition: true)
!297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 1600, elements: !113)
!298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !299)
!299 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!300 = !DIGlobalVariableExpression(var: !301, expr: !DIExpression())
!301 = distinct !DIGlobalVariable(name: "__mprec_bigtens", scope: !289, file: !3, line: 964, type: !302, isLocal: false, isDefinition: true)
!302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 320, elements: !303)
!303 = !{!304}
!304 = !DISubrange(count: 5)
!305 = !DIGlobalVariableExpression(var: !306, expr: !DIExpression())
!306 = distinct !DIGlobalVariable(name: "__mprec_tinytens", scope: !289, file: !3, line: 967, type: !302, isLocal: false, isDefinition: true)
!307 = !{!308, !309, !310, !311, !312, !313, !314}
!308 = !DILocalVariable(name: "ptr", arg: 1, scope: !2, file: !3, line: 422, type: !25)
!309 = !DILocalVariable(name: "b", arg: 2, scope: !2, file: !3, line: 422, type: !6)
!310 = !DILocalVariable(name: "k", arg: 3, scope: !2, file: !3, line: 422, type: !15)
!311 = !DILocalVariable(name: "b1", scope: !2, file: !3, line: 425, type: !6)
!312 = !DILocalVariable(name: "p5", scope: !2, file: !3, line: 425, type: !6)
!313 = !DILocalVariable(name: "p51", scope: !2, file: !3, line: 425, type: !6)
!314 = !DILocalVariable(name: "i", scope: !2, file: !3, line: 426, type: !15)
!315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 96, elements: !79)
!316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!317 = !{i32 2, !"Dwarf Version", i32 4}
!318 = !{i32 2, !"Debug Info Version", i32 3}
!319 = !{i32 1, !"wchar_size", i32 4}
!320 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!321 = distinct !DISubprogram(name: "_Balloc", scope: !3, file: !3, line: 97, type: !322, isLocal: false, isDefinition: true, scopeLine: 98, flags: DIFlagPrototyped, isOptimized: true, unit: !289, retainedNodes: !324)
!322 = !DISubroutineType(types: !323)
!323 = !{!6, !25, !15}
!324 = !{!325, !326, !327, !328}
!325 = !DILocalVariable(name: "ptr", arg: 1, scope: !321, file: !3, line: 97, type: !25)
!326 = !DILocalVariable(name: "k", arg: 2, scope: !321, file: !3, line: 97, type: !15)
!327 = !DILocalVariable(name: "x", scope: !321, file: !3, line: 99, type: !15)
!328 = !DILocalVariable(name: "rv", scope: !321, file: !3, line: 100, type: !6)
!329 = !DILocation(line: 97, column: 1, scope: !321)
!330 = !DILocation(line: 103, column: 7, scope: !331)
!331 = distinct !DILexicalBlock(scope: !321, file: !3, line: 103, column: 7)
!332 = !{!333, !337, i64 120}
!333 = !{!"_reent", !334, i64 0, !337, i64 8, !337, i64 16, !337, i64 24, !334, i64 32, !335, i64 36, !334, i64 64, !337, i64 72, !334, i64 80, !337, i64 88, !337, i64 96, !334, i64 104, !337, i64 112, !337, i64 120, !334, i64 128, !337, i64 136, !335, i64 144, !337, i64 504, !338, i64 512, !337, i64 1304, !340, i64 1312, !335, i64 1336}
!334 = !{!"int", !335, i64 0}
!335 = !{!"omnipotent char", !336, i64 0}
!336 = !{!"Simple C/C++ TBAA"}
!337 = !{!"any pointer", !335, i64 0}
!338 = !{!"_atexit", !337, i64 0, !334, i64 8, !335, i64 16, !339, i64 272}
!339 = !{!"_on_exit_args", !335, i64 0, !335, i64 256, !334, i64 512, !334, i64 516}
!340 = !{!"_glue", !337, i64 0, !334, i64 8, !337, i64 16}
!341 = !DILocation(line: 103, column: 31, scope: !331)
!342 = !DILocation(line: 103, column: 7, scope: !321)
!343 = !DILocation(line: 106, column: 53, scope: !344)
!344 = distinct !DILexicalBlock(scope: !331, file: !3, line: 104, column: 5)
!345 = !DILocation(line: 106, column: 31, scope: !344)
!346 = !DILocation(line: 109, column: 35, scope: !347)
!347 = distinct !DILexicalBlock(scope: !344, file: !3, line: 109, column: 11)
!348 = !DILocation(line: 109, column: 11, scope: !344)
!349 = !DILocation(line: 115, column: 13, scope: !350)
!350 = distinct !DILexicalBlock(scope: !321, file: !3, line: 115, column: 7)
!351 = !{!337, !337, i64 0}
!352 = !DILocation(line: 100, column: 12, scope: !321)
!353 = !DILocation(line: 115, column: 41, scope: !350)
!354 = !DILocation(line: 115, column: 7, scope: !321)
!355 = !DILocation(line: 117, column: 40, scope: !356)
!356 = distinct !DILexicalBlock(scope: !350, file: !3, line: 116, column: 5)
!357 = !{!358, !337, i64 0}
!358 = !{!"_Bigint", !337, i64 0, !334, i64 8, !334, i64 12, !334, i64 16, !334, i64 20, !335, i64 24}
!359 = !DILocation(line: 117, column: 34, scope: !356)
!360 = !DILocation(line: 118, column: 5, scope: !356)
!361 = !DILocation(line: 121, column: 13, scope: !362)
!362 = distinct !DILexicalBlock(scope: !350, file: !3, line: 120, column: 5)
!363 = !DILocation(line: 99, column: 7, scope: !321)
!364 = !DILocation(line: 123, column: 24, scope: !362)
!365 = !DILocation(line: 127, column: 14, scope: !366)
!366 = distinct !DILexicalBlock(scope: !362, file: !3, line: 127, column: 11)
!367 = !DILocation(line: 127, column: 11, scope: !362)
!368 = !DILocation(line: 123, column: 12, scope: !362)
!369 = !DILocation(line: 128, column: 11, scope: !362)
!370 = !DILocation(line: 128, column: 14, scope: !362)
!371 = !{!358, !334, i64 8}
!372 = !DILocation(line: 129, column: 11, scope: !362)
!373 = !DILocation(line: 129, column: 19, scope: !362)
!374 = !{!358, !334, i64 12}
!375 = !DILocation(line: 0, scope: !362)
!376 = !DILocation(line: 131, column: 19, scope: !321)
!377 = !DILocation(line: 131, column: 24, scope: !321)
!378 = !{!358, !334, i64 20}
!379 = !DILocation(line: 131, column: 7, scope: !321)
!380 = !DILocation(line: 131, column: 13, scope: !321)
!381 = !{!358, !334, i64 16}
!382 = !DILocation(line: 132, column: 3, scope: !321)
!383 = !DILocation(line: 0, scope: !366)
!384 = !DILocation(line: 0, scope: !385)
!385 = distinct !DILexicalBlock(scope: !347, file: !3, line: 110, column: 2)
!386 = !DILocation(line: 133, column: 1, scope: !321)
!387 = distinct !DISubprogram(name: "_Bfree", scope: !3, file: !3, line: 136, type: !388, isLocal: false, isDefinition: true, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: true, unit: !289, retainedNodes: !390)
!388 = !DISubroutineType(types: !389)
!389 = !{null, !25, !6}
!390 = !{!391, !392}
!391 = !DILocalVariable(name: "ptr", arg: 1, scope: !387, file: !3, line: 136, type: !25)
!392 = !DILocalVariable(name: "v", arg: 2, scope: !387, file: !3, line: 136, type: !6)
!393 = !DILocation(line: 136, column: 1, scope: !387)
!394 = !DILocation(line: 139, column: 7, scope: !395)
!395 = distinct !DILexicalBlock(scope: !387, file: !3, line: 139, column: 7)
!396 = !DILocation(line: 139, column: 7, scope: !387)
!397 = !DILocation(line: 141, column: 18, scope: !398)
!398 = distinct !DILexicalBlock(scope: !395, file: !3, line: 140, column: 5)
!399 = !DILocation(line: 141, column: 45, scope: !398)
!400 = !DILocation(line: 141, column: 16, scope: !398)
!401 = !DILocation(line: 142, column: 38, scope: !398)
!402 = !DILocation(line: 143, column: 5, scope: !398)
!403 = !DILocation(line: 144, column: 1, scope: !387)
!404 = distinct !DISubprogram(name: "__multadd", scope: !3, file: !3, line: 147, type: !405, isLocal: false, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !289, retainedNodes: !407)
!405 = !DISubroutineType(types: !406)
!406 = !{!6, !25, !6, !15, !15}
!407 = !{!408, !409, !410, !411, !412, !413, !414, !416, !417, !418, !419}
!408 = !DILocalVariable(name: "ptr", arg: 1, scope: !404, file: !3, line: 147, type: !25)
!409 = !DILocalVariable(name: "b", arg: 2, scope: !404, file: !3, line: 147, type: !6)
!410 = !DILocalVariable(name: "m", arg: 3, scope: !404, file: !3, line: 147, type: !15)
!411 = !DILocalVariable(name: "a", arg: 4, scope: !404, file: !3, line: 147, type: !15)
!412 = !DILocalVariable(name: "i", scope: !404, file: !3, line: 153, type: !15)
!413 = !DILocalVariable(name: "wds", scope: !404, file: !3, line: 153, type: !15)
!414 = !DILocalVariable(name: "x", scope: !404, file: !3, line: 154, type: !415)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!416 = !DILocalVariable(name: "y", scope: !404, file: !3, line: 154, type: !21)
!417 = !DILocalVariable(name: "xi", scope: !404, file: !3, line: 156, type: !21)
!418 = !DILocalVariable(name: "z", scope: !404, file: !3, line: 156, type: !21)
!419 = !DILocalVariable(name: "b1", scope: !404, file: !3, line: 158, type: !6)
!420 = !DILocation(line: 147, column: 1, scope: !404)
!421 = !DILocation(line: 160, column: 12, scope: !404)
!422 = !DILocation(line: 153, column: 10, scope: !404)
!423 = !DILocation(line: 161, column: 7, scope: !404)
!424 = !DILocation(line: 154, column: 12, scope: !404)
!425 = !DILocation(line: 153, column: 7, scope: !404)
!426 = !DILocation(line: 163, column: 3, scope: !404)
!427 = !DILocation(line: 0, scope: !428)
!428 = distinct !DILexicalBlock(scope: !404, file: !3, line: 164, column: 5)
!429 = !DILocation(line: 0, scope: !404)
!430 = !DILocation(line: 166, column: 12, scope: !428)
!431 = !{!334, !334, i64 0}
!432 = !DILocation(line: 156, column: 11, scope: !404)
!433 = !DILocation(line: 167, column: 15, scope: !428)
!434 = !DILocation(line: 167, column: 25, scope: !428)
!435 = !DILocation(line: 167, column: 29, scope: !428)
!436 = !DILocation(line: 154, column: 15, scope: !404)
!437 = !DILocation(line: 168, column: 15, scope: !428)
!438 = !DILocation(line: 168, column: 22, scope: !428)
!439 = !DILocation(line: 168, column: 31, scope: !428)
!440 = !DILocation(line: 168, column: 26, scope: !428)
!441 = !DILocation(line: 156, column: 15, scope: !404)
!442 = !DILocation(line: 169, column: 20, scope: !428)
!443 = !DILocation(line: 170, column: 17, scope: !428)
!444 = !DILocation(line: 170, column: 29, scope: !428)
!445 = !DILocation(line: 170, column: 24, scope: !428)
!446 = !DILocation(line: 170, column: 9, scope: !428)
!447 = !DILocation(line: 170, column: 12, scope: !428)
!448 = !DILocation(line: 177, column: 10, scope: !404)
!449 = !DILocation(line: 177, column: 14, scope: !404)
!450 = !DILocation(line: 176, column: 5, scope: !428)
!451 = distinct !{!451, !426, !452}
!452 = !DILocation(line: 177, column: 19, scope: !404)
!453 = !DILocation(line: 178, column: 7, scope: !454)
!454 = distinct !DILexicalBlock(scope: !404, file: !3, line: 178, column: 7)
!455 = !DILocation(line: 178, column: 7, scope: !404)
!456 = !DILocation(line: 180, column: 21, scope: !457)
!457 = distinct !DILexicalBlock(scope: !458, file: !3, line: 180, column: 11)
!458 = distinct !DILexicalBlock(scope: !454, file: !3, line: 179, column: 5)
!459 = !DILocation(line: 180, column: 15, scope: !457)
!460 = !DILocation(line: 180, column: 11, scope: !458)
!461 = !DILocation(line: 182, column: 25, scope: !462)
!462 = distinct !DILexicalBlock(scope: !457, file: !3, line: 181, column: 2)
!463 = !DILocation(line: 182, column: 28, scope: !462)
!464 = !DILocation(line: 97, column: 1, scope: !321, inlinedAt: !465)
!465 = distinct !DILocation(line: 182, column: 9, scope: !462)
!466 = !DILocation(line: 103, column: 7, scope: !331, inlinedAt: !465)
!467 = !DILocation(line: 103, column: 31, scope: !331, inlinedAt: !465)
!468 = !DILocation(line: 103, column: 7, scope: !321, inlinedAt: !465)
!469 = !DILocation(line: 106, column: 53, scope: !344, inlinedAt: !465)
!470 = !DILocation(line: 106, column: 31, scope: !344, inlinedAt: !465)
!471 = !DILocation(line: 109, column: 35, scope: !347, inlinedAt: !465)
!472 = !DILocation(line: 109, column: 11, scope: !344, inlinedAt: !465)
!473 = !DILocation(line: 115, column: 13, scope: !350, inlinedAt: !465)
!474 = !DILocation(line: 100, column: 12, scope: !321, inlinedAt: !465)
!475 = !DILocation(line: 115, column: 41, scope: !350, inlinedAt: !465)
!476 = !DILocation(line: 115, column: 7, scope: !321, inlinedAt: !465)
!477 = !DILocation(line: 117, column: 40, scope: !356, inlinedAt: !465)
!478 = !DILocation(line: 117, column: 34, scope: !356, inlinedAt: !465)
!479 = !DILocation(line: 118, column: 5, scope: !356, inlinedAt: !465)
!480 = !DILocation(line: 121, column: 13, scope: !362, inlinedAt: !465)
!481 = !DILocation(line: 99, column: 7, scope: !321, inlinedAt: !465)
!482 = !DILocation(line: 123, column: 24, scope: !362, inlinedAt: !465)
!483 = !DILocation(line: 127, column: 14, scope: !366, inlinedAt: !465)
!484 = !DILocation(line: 127, column: 11, scope: !362, inlinedAt: !465)
!485 = !DILocation(line: 123, column: 12, scope: !362, inlinedAt: !465)
!486 = !DILocation(line: 128, column: 11, scope: !362, inlinedAt: !465)
!487 = !DILocation(line: 128, column: 14, scope: !362, inlinedAt: !465)
!488 = !DILocation(line: 129, column: 11, scope: !362, inlinedAt: !465)
!489 = !DILocation(line: 129, column: 19, scope: !362, inlinedAt: !465)
!490 = !DILocation(line: 0, scope: !362, inlinedAt: !465)
!491 = !DILocation(line: 131, column: 19, scope: !321, inlinedAt: !465)
!492 = !DILocation(line: 131, column: 24, scope: !321, inlinedAt: !465)
!493 = !DILocation(line: 131, column: 7, scope: !321, inlinedAt: !465)
!494 = !DILocation(line: 131, column: 13, scope: !321, inlinedAt: !465)
!495 = !DILocation(line: 132, column: 3, scope: !321, inlinedAt: !465)
!496 = !DILocation(line: 0, scope: !366, inlinedAt: !465)
!497 = !DILocation(line: 0, scope: !462)
!498 = !DILocation(line: 133, column: 1, scope: !321, inlinedAt: !465)
!499 = !DILocation(line: 158, column: 12, scope: !404)
!500 = !DILocation(line: 183, column: 4, scope: !462)
!501 = !DILocation(line: 136, column: 1, scope: !387, inlinedAt: !502)
!502 = distinct !DILocation(line: 184, column: 4, scope: !462)
!503 = !DILocation(line: 139, column: 7, scope: !387, inlinedAt: !502)
!504 = !DILocation(line: 141, column: 18, scope: !398, inlinedAt: !502)
!505 = !DILocation(line: 141, column: 45, scope: !398, inlinedAt: !502)
!506 = !DILocation(line: 141, column: 16, scope: !398, inlinedAt: !502)
!507 = !DILocation(line: 142, column: 38, scope: !398, inlinedAt: !502)
!508 = !DILocation(line: 143, column: 5, scope: !398, inlinedAt: !502)
!509 = !DILocation(line: 144, column: 1, scope: !387, inlinedAt: !502)
!510 = !DILocation(line: 186, column: 2, scope: !462)
!511 = !DILocation(line: 188, column: 10, scope: !458)
!512 = !DILocation(line: 187, column: 16, scope: !458)
!513 = !DILocation(line: 187, column: 7, scope: !458)
!514 = !DILocation(line: 187, column: 20, scope: !458)
!515 = !DILocation(line: 188, column: 15, scope: !458)
!516 = !DILocation(line: 189, column: 5, scope: !458)
!517 = !DILocation(line: 190, column: 3, scope: !404)
!518 = distinct !DISubprogram(name: "__s2b", scope: !3, file: !3, line: 194, type: !519, isLocal: false, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !289, retainedNodes: !521)
!519 = !DISubroutineType(types: !520)
!520 = !{!6, !25, !63, !15, !15, !21}
!521 = !{!522, !523, !524, !525, !526, !527, !528, !529, !530, !531}
!522 = !DILocalVariable(name: "ptr", arg: 1, scope: !518, file: !3, line: 194, type: !25)
!523 = !DILocalVariable(name: "s", arg: 2, scope: !518, file: !3, line: 194, type: !63)
!524 = !DILocalVariable(name: "nd0", arg: 3, scope: !518, file: !3, line: 194, type: !15)
!525 = !DILocalVariable(name: "nd", arg: 4, scope: !518, file: !3, line: 194, type: !15)
!526 = !DILocalVariable(name: "y9", arg: 5, scope: !518, file: !3, line: 194, type: !21)
!527 = !DILocalVariable(name: "b", scope: !518, file: !3, line: 201, type: !6)
!528 = !DILocalVariable(name: "i", scope: !518, file: !3, line: 202, type: !15)
!529 = !DILocalVariable(name: "k", scope: !518, file: !3, line: 202, type: !15)
!530 = !DILocalVariable(name: "x", scope: !518, file: !3, line: 203, type: !15)
!531 = !DILocalVariable(name: "y", scope: !518, file: !3, line: 203, type: !15)
!532 = !DILocation(line: 194, column: 1, scope: !518)
!533 = !DILocation(line: 205, column: 11, scope: !518)
!534 = !DILocation(line: 205, column: 16, scope: !518)
!535 = !DILocation(line: 203, column: 10, scope: !518)
!536 = !DILocation(line: 202, column: 10, scope: !518)
!537 = !DILocation(line: 203, column: 13, scope: !518)
!538 = !DILocation(line: 206, column: 8, scope: !539)
!539 = distinct !DILexicalBlock(scope: !518, file: !3, line: 206, column: 3)
!540 = !DILocation(line: 206, column: 24, scope: !541)
!541 = distinct !DILexicalBlock(scope: !539, file: !3, line: 206, column: 3)
!542 = !DILocation(line: 206, column: 3, scope: !539)
!543 = !DILocation(line: 206, column: 31, scope: !541)
!544 = !DILocation(line: 206, column: 39, scope: !541)
!545 = !DILocation(line: 206, column: 3, scope: !541)
!546 = distinct !{!546, !542, !547}
!547 = !DILocation(line: 206, column: 42, scope: !539)
!548 = !DILocation(line: 0, scope: !541)
!549 = !DILocation(line: 97, column: 1, scope: !321, inlinedAt: !550)
!550 = distinct !DILocation(line: 208, column: 7, scope: !518)
!551 = !DILocation(line: 103, column: 7, scope: !331, inlinedAt: !550)
!552 = !DILocation(line: 103, column: 31, scope: !331, inlinedAt: !550)
!553 = !DILocation(line: 103, column: 7, scope: !321, inlinedAt: !550)
!554 = !DILocation(line: 106, column: 53, scope: !344, inlinedAt: !550)
!555 = !DILocation(line: 106, column: 31, scope: !344, inlinedAt: !550)
!556 = !DILocation(line: 109, column: 35, scope: !347, inlinedAt: !550)
!557 = !DILocation(line: 109, column: 11, scope: !344, inlinedAt: !550)
!558 = !DILocation(line: 115, column: 13, scope: !350, inlinedAt: !550)
!559 = !DILocation(line: 100, column: 12, scope: !321, inlinedAt: !550)
!560 = !DILocation(line: 115, column: 41, scope: !350, inlinedAt: !550)
!561 = !DILocation(line: 115, column: 7, scope: !321, inlinedAt: !550)
!562 = !DILocation(line: 117, column: 40, scope: !356, inlinedAt: !550)
!563 = !DILocation(line: 117, column: 34, scope: !356, inlinedAt: !550)
!564 = !DILocation(line: 118, column: 5, scope: !356, inlinedAt: !550)
!565 = !DILocation(line: 121, column: 13, scope: !362, inlinedAt: !550)
!566 = !DILocation(line: 99, column: 7, scope: !321, inlinedAt: !550)
!567 = !DILocation(line: 123, column: 24, scope: !362, inlinedAt: !550)
!568 = !DILocation(line: 127, column: 14, scope: !366, inlinedAt: !550)
!569 = !DILocation(line: 127, column: 11, scope: !362, inlinedAt: !550)
!570 = !DILocation(line: 123, column: 12, scope: !362, inlinedAt: !550)
!571 = !DILocation(line: 128, column: 11, scope: !362, inlinedAt: !550)
!572 = !DILocation(line: 128, column: 14, scope: !362, inlinedAt: !550)
!573 = !DILocation(line: 129, column: 11, scope: !362, inlinedAt: !550)
!574 = !DILocation(line: 129, column: 19, scope: !362, inlinedAt: !550)
!575 = !DILocation(line: 0, scope: !362, inlinedAt: !550)
!576 = !DILocation(line: 131, column: 19, scope: !321, inlinedAt: !550)
!577 = !DILocation(line: 131, column: 24, scope: !321, inlinedAt: !550)
!578 = !DILocation(line: 131, column: 7, scope: !321, inlinedAt: !550)
!579 = !DILocation(line: 131, column: 13, scope: !321, inlinedAt: !550)
!580 = !DILocation(line: 132, column: 3, scope: !321, inlinedAt: !550)
!581 = !DILocation(line: 0, scope: !366, inlinedAt: !550)
!582 = !DILocation(line: 0, scope: !518)
!583 = !DILocation(line: 133, column: 1, scope: !321, inlinedAt: !550)
!584 = !DILocation(line: 201, column: 12, scope: !518)
!585 = !DILocation(line: 209, column: 3, scope: !518)
!586 = !DILocation(line: 209, column: 12, scope: !518)
!587 = !DILocation(line: 210, column: 6, scope: !518)
!588 = !DILocation(line: 210, column: 11, scope: !518)
!589 = !DILocation(line: 202, column: 7, scope: !518)
!590 = !DILocation(line: 218, column: 9, scope: !591)
!591 = distinct !DILexicalBlock(scope: !518, file: !3, line: 218, column: 7)
!592 = !DILocation(line: 218, column: 7, scope: !518)
!593 = !DILocation(line: 220, column: 9, scope: !594)
!594 = distinct !DILexicalBlock(scope: !591, file: !3, line: 219, column: 5)
!595 = !DILocation(line: 221, column: 7, scope: !594)
!596 = !DILocation(line: 0, scope: !594)
!597 = !DILocation(line: 222, column: 29, scope: !594)
!598 = !DILocation(line: 222, column: 27, scope: !594)
!599 = !{!335, !335, i64 0}
!600 = !DILocation(line: 222, column: 32, scope: !594)
!601 = !DILocation(line: 222, column: 6, scope: !594)
!602 = !DILocation(line: 223, column: 14, scope: !594)
!603 = !DILocation(line: 222, column: 2, scope: !594)
!604 = !DILocation(line: 223, column: 18, scope: !594)
!605 = distinct !{!605, !595, !606}
!606 = !DILocation(line: 223, column: 23, scope: !594)
!607 = !DILocation(line: 224, column: 8, scope: !594)
!608 = !DILocation(line: 225, column: 5, scope: !594)
!609 = !DILocation(line: 227, column: 7, scope: !591)
!610 = !DILocation(line: 0, scope: !591)
!611 = !DILocation(line: 228, column: 3, scope: !518)
!612 = !DILocation(line: 228, column: 12, scope: !613)
!613 = distinct !DILexicalBlock(scope: !614, file: !3, line: 228, column: 3)
!614 = distinct !DILexicalBlock(scope: !518, file: !3, line: 228, column: 3)
!615 = !DILocation(line: 228, column: 3, scope: !614)
!616 = !DILocation(line: 229, column: 32, scope: !613)
!617 = !DILocation(line: 229, column: 30, scope: !613)
!618 = !DILocation(line: 229, column: 35, scope: !613)
!619 = !DILocation(line: 229, column: 9, scope: !613)
!620 = !DILocation(line: 228, column: 19, scope: !613)
!621 = !DILocation(line: 228, column: 3, scope: !613)
!622 = distinct !{!622, !615, !623}
!623 = !DILocation(line: 229, column: 40, scope: !614)
!624 = !DILocation(line: 0, scope: !613)
!625 = !DILocation(line: 230, column: 3, scope: !518)
!626 = distinct !DISubprogram(name: "__hi0bits", scope: !3, file: !3, line: 234, type: !627, isLocal: false, isDefinition: true, scopeLine: 236, flags: DIFlagPrototyped, isOptimized: true, unit: !289, retainedNodes: !629)
!627 = !DISubroutineType(types: !628)
!628 = !{!15, !21}
!629 = !{!630, !631}
!630 = !DILocalVariable(name: "x", arg: 1, scope: !626, file: !3, line: 234, type: !21)
!631 = !DILocalVariable(name: "k", scope: !626, file: !3, line: 237, type: !15)
!632 = !DILocation(line: 234, column: 1, scope: !626)
!633 = !DILocation(line: 237, column: 16, scope: !626)
!634 = !DILocation(line: 239, column: 11, scope: !635)
!635 = distinct !DILexicalBlock(scope: !626, file: !3, line: 239, column: 7)
!636 = !DILocation(line: 239, column: 7, scope: !626)
!637 = !DILocation(line: 242, column: 9, scope: !638)
!638 = distinct !DILexicalBlock(scope: !635, file: !3, line: 240, column: 5)
!639 = !DILocation(line: 243, column: 5, scope: !638)
!640 = !DILocation(line: 0, scope: !638)
!641 = !DILocation(line: 244, column: 11, scope: !642)
!642 = distinct !DILexicalBlock(scope: !626, file: !3, line: 244, column: 7)
!643 = !DILocation(line: 244, column: 7, scope: !626)
!644 = !DILocation(line: 246, column: 9, scope: !645)
!645 = distinct !DILexicalBlock(scope: !642, file: !3, line: 245, column: 5)
!646 = !DILocation(line: 247, column: 9, scope: !645)
!647 = !DILocation(line: 248, column: 5, scope: !645)
!648 = !DILocation(line: 0, scope: !645)
!649 = !DILocation(line: 249, column: 11, scope: !650)
!650 = distinct !DILexicalBlock(scope: !626, file: !3, line: 249, column: 7)
!651 = !DILocation(line: 249, column: 7, scope: !626)
!652 = !DILocation(line: 251, column: 9, scope: !653)
!653 = distinct !DILexicalBlock(scope: !650, file: !3, line: 250, column: 5)
!654 = !DILocation(line: 252, column: 9, scope: !653)
!655 = !DILocation(line: 253, column: 5, scope: !653)
!656 = !DILocation(line: 0, scope: !653)
!657 = !DILocation(line: 254, column: 11, scope: !658)
!658 = distinct !DILexicalBlock(scope: !626, file: !3, line: 254, column: 7)
!659 = !DILocation(line: 254, column: 7, scope: !626)
!660 = !DILocation(line: 256, column: 9, scope: !661)
!661 = distinct !DILexicalBlock(scope: !658, file: !3, line: 255, column: 5)
!662 = !DILocation(line: 257, column: 9, scope: !661)
!663 = !DILocation(line: 258, column: 5, scope: !661)
!664 = !DILocation(line: 0, scope: !661)
!665 = !DILocation(line: 259, column: 11, scope: !666)
!666 = distinct !DILexicalBlock(scope: !626, file: !3, line: 259, column: 7)
!667 = !DILocation(line: 259, column: 7, scope: !626)
!668 = !DILocation(line: 261, column: 8, scope: !669)
!669 = distinct !DILexicalBlock(scope: !666, file: !3, line: 260, column: 5)
!670 = !DILocation(line: 262, column: 15, scope: !671)
!671 = distinct !DILexicalBlock(scope: !669, file: !3, line: 262, column: 11)
!672 = !DILocation(line: 262, column: 11, scope: !669)
!673 = !DILocation(line: 0, scope: !669)
!674 = !DILocation(line: 265, column: 3, scope: !626)
!675 = !DILocation(line: 0, scope: !671)
!676 = !DILocation(line: 266, column: 1, scope: !626)
!677 = distinct !DISubprogram(name: "__lo0bits", scope: !3, file: !3, line: 269, type: !678, isLocal: false, isDefinition: true, scopeLine: 270, flags: DIFlagPrototyped, isOptimized: true, unit: !289, retainedNodes: !680)
!678 = !DISubroutineType(types: !679)
!679 = !{!15, !415}
!680 = !{!681, !682, !683}
!681 = !DILocalVariable(name: "y", arg: 1, scope: !677, file: !3, line: 269, type: !415)
!682 = !DILocalVariable(name: "k", scope: !677, file: !3, line: 271, type: !15)
!683 = !DILocalVariable(name: "x", scope: !677, file: !3, line: 272, type: !21)
!684 = !DILocation(line: 269, column: 1, scope: !677)
!685 = !DILocation(line: 272, column: 24, scope: !677)
!686 = !DILocation(line: 272, column: 20, scope: !677)
!687 = !DILocation(line: 274, column: 9, scope: !688)
!688 = distinct !DILexicalBlock(scope: !677, file: !3, line: 274, column: 7)
!689 = !DILocation(line: 274, column: 7, scope: !677)
!690 = !DILocation(line: 276, column: 13, scope: !691)
!691 = distinct !DILexicalBlock(scope: !692, file: !3, line: 276, column: 11)
!692 = distinct !DILexicalBlock(scope: !688, file: !3, line: 275, column: 5)
!693 = !DILocation(line: 276, column: 11, scope: !692)
!694 = !DILocation(line: 278, column: 13, scope: !695)
!695 = distinct !DILexicalBlock(scope: !692, file: !3, line: 278, column: 11)
!696 = !DILocation(line: 278, column: 11, scope: !692)
!697 = !DILocation(line: 280, column: 11, scope: !698)
!698 = distinct !DILexicalBlock(scope: !695, file: !3, line: 279, column: 2)
!699 = !DILocation(line: 280, column: 7, scope: !698)
!700 = !DILocation(line: 281, column: 4, scope: !698)
!701 = !DILocation(line: 283, column: 14, scope: !692)
!702 = !DILocation(line: 283, column: 10, scope: !692)
!703 = !DILocation(line: 284, column: 7, scope: !692)
!704 = !DILocation(line: 271, column: 16, scope: !677)
!705 = !DILocation(line: 287, column: 11, scope: !706)
!706 = distinct !DILexicalBlock(scope: !677, file: !3, line: 287, column: 7)
!707 = !DILocation(line: 287, column: 7, scope: !677)
!708 = !DILocation(line: 290, column: 9, scope: !709)
!709 = distinct !DILexicalBlock(scope: !706, file: !3, line: 288, column: 5)
!710 = !DILocation(line: 291, column: 5, scope: !709)
!711 = !DILocation(line: 0, scope: !709)
!712 = !DILocation(line: 292, column: 11, scope: !713)
!713 = distinct !DILexicalBlock(scope: !677, file: !3, line: 292, column: 7)
!714 = !DILocation(line: 292, column: 7, scope: !677)
!715 = !DILocation(line: 294, column: 9, scope: !716)
!716 = distinct !DILexicalBlock(scope: !713, file: !3, line: 293, column: 5)
!717 = !DILocation(line: 295, column: 9, scope: !716)
!718 = !DILocation(line: 296, column: 5, scope: !716)
!719 = !DILocation(line: 0, scope: !716)
!720 = !DILocation(line: 297, column: 11, scope: !721)
!721 = distinct !DILexicalBlock(scope: !677, file: !3, line: 297, column: 7)
!722 = !DILocation(line: 297, column: 7, scope: !677)
!723 = !DILocation(line: 299, column: 9, scope: !724)
!724 = distinct !DILexicalBlock(scope: !721, file: !3, line: 298, column: 5)
!725 = !DILocation(line: 300, column: 9, scope: !724)
!726 = !DILocation(line: 301, column: 5, scope: !724)
!727 = !DILocation(line: 0, scope: !724)
!728 = !DILocation(line: 302, column: 11, scope: !729)
!729 = distinct !DILexicalBlock(scope: !677, file: !3, line: 302, column: 7)
!730 = !DILocation(line: 302, column: 7, scope: !677)
!731 = !DILocation(line: 304, column: 9, scope: !732)
!732 = distinct !DILexicalBlock(scope: !729, file: !3, line: 303, column: 5)
!733 = !DILocation(line: 305, column: 9, scope: !732)
!734 = !DILocation(line: 306, column: 5, scope: !732)
!735 = !DILocation(line: 0, scope: !732)
!736 = !DILocation(line: 307, column: 11, scope: !737)
!737 = distinct !DILexicalBlock(scope: !677, file: !3, line: 307, column: 7)
!738 = !DILocation(line: 307, column: 7, scope: !677)
!739 = !DILocation(line: 309, column: 8, scope: !740)
!740 = distinct !DILexicalBlock(scope: !737, file: !3, line: 308, column: 5)
!741 = !DILocation(line: 310, column: 9, scope: !740)
!742 = !DILocation(line: 311, column: 11, scope: !743)
!743 = distinct !DILexicalBlock(scope: !740, file: !3, line: 311, column: 11)
!744 = !DILocation(line: 311, column: 11, scope: !740)
!745 = !DILocation(line: 0, scope: !740)
!746 = !DILocation(line: 314, column: 6, scope: !677)
!747 = !DILocation(line: 315, column: 3, scope: !677)
!748 = !DILocation(line: 0, scope: !743)
!749 = !DILocation(line: 0, scope: !691)
!750 = !DILocation(line: 316, column: 1, scope: !677)
!751 = distinct !DISubprogram(name: "__i2b", scope: !3, file: !3, line: 319, type: !322, isLocal: false, isDefinition: true, scopeLine: 320, flags: DIFlagPrototyped, isOptimized: true, unit: !289, retainedNodes: !752)
!752 = !{!753, !754, !755}
!753 = !DILocalVariable(name: "ptr", arg: 1, scope: !751, file: !3, line: 319, type: !25)
!754 = !DILocalVariable(name: "i", arg: 2, scope: !751, file: !3, line: 319, type: !15)
!755 = !DILocalVariable(name: "b", scope: !751, file: !3, line: 321, type: !6)
!756 = !DILocation(line: 319, column: 1, scope: !751)
!757 = !DILocation(line: 97, column: 1, scope: !321, inlinedAt: !758)
!758 = distinct !DILocation(line: 323, column: 7, scope: !751)
!759 = !DILocation(line: 103, column: 7, scope: !331, inlinedAt: !758)
!760 = !DILocation(line: 103, column: 31, scope: !331, inlinedAt: !758)
!761 = !DILocation(line: 103, column: 7, scope: !321, inlinedAt: !758)
!762 = !DILocation(line: 106, column: 53, scope: !344, inlinedAt: !758)
!763 = !DILocation(line: 106, column: 31, scope: !344, inlinedAt: !758)
!764 = !DILocation(line: 109, column: 35, scope: !347, inlinedAt: !758)
!765 = !DILocation(line: 109, column: 11, scope: !344, inlinedAt: !758)
!766 = !DILocation(line: 115, column: 13, scope: !350, inlinedAt: !758)
!767 = !DILocation(line: 100, column: 12, scope: !321, inlinedAt: !758)
!768 = !DILocation(line: 115, column: 41, scope: !350, inlinedAt: !758)
!769 = !DILocation(line: 115, column: 7, scope: !321, inlinedAt: !758)
!770 = !DILocation(line: 117, column: 40, scope: !356, inlinedAt: !758)
!771 = !DILocation(line: 117, column: 34, scope: !356, inlinedAt: !758)
!772 = !DILocation(line: 118, column: 5, scope: !356, inlinedAt: !758)
!773 = !DILocation(line: 99, column: 7, scope: !321, inlinedAt: !758)
!774 = !DILocation(line: 123, column: 24, scope: !362, inlinedAt: !758)
!775 = !DILocation(line: 127, column: 14, scope: !366, inlinedAt: !758)
!776 = !DILocation(line: 127, column: 11, scope: !362, inlinedAt: !758)
!777 = !DILocation(line: 123, column: 12, scope: !362, inlinedAt: !758)
!778 = !DILocation(line: 128, column: 11, scope: !362, inlinedAt: !758)
!779 = !DILocation(line: 128, column: 14, scope: !362, inlinedAt: !758)
!780 = !DILocation(line: 129, column: 11, scope: !362, inlinedAt: !758)
!781 = !DILocation(line: 129, column: 19, scope: !362, inlinedAt: !758)
!782 = !DILocation(line: 0, scope: !362, inlinedAt: !758)
!783 = !DILocation(line: 131, column: 19, scope: !321, inlinedAt: !758)
!784 = !DILocation(line: 131, column: 24, scope: !321, inlinedAt: !758)
!785 = !DILocation(line: 131, column: 7, scope: !321, inlinedAt: !758)
!786 = !DILocation(line: 131, column: 13, scope: !321, inlinedAt: !758)
!787 = !DILocation(line: 132, column: 3, scope: !321, inlinedAt: !758)
!788 = !DILocation(line: 0, scope: !366, inlinedAt: !758)
!789 = !DILocation(line: 0, scope: !751)
!790 = !DILocation(line: 133, column: 1, scope: !321, inlinedAt: !758)
!791 = !DILocation(line: 321, column: 12, scope: !751)
!792 = !DILocation(line: 324, column: 3, scope: !751)
!793 = !DILocation(line: 324, column: 12, scope: !751)
!794 = !DILocation(line: 325, column: 6, scope: !751)
!795 = !DILocation(line: 325, column: 11, scope: !751)
!796 = !DILocation(line: 326, column: 3, scope: !751)
!797 = distinct !DISubprogram(name: "__multiply", scope: !3, file: !3, line: 330, type: !798, isLocal: false, isDefinition: true, scopeLine: 331, flags: DIFlagPrototyped, isOptimized: true, unit: !289, retainedNodes: !800)
!798 = !DISubroutineType(types: !799)
!799 = !{!6, !25, !6, !6}
!800 = !{!801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819}
!801 = !DILocalVariable(name: "ptr", arg: 1, scope: !797, file: !3, line: 330, type: !25)
!802 = !DILocalVariable(name: "a", arg: 2, scope: !797, file: !3, line: 330, type: !6)
!803 = !DILocalVariable(name: "b", arg: 3, scope: !797, file: !3, line: 330, type: !6)
!804 = !DILocalVariable(name: "c", scope: !797, file: !3, line: 332, type: !6)
!805 = !DILocalVariable(name: "k", scope: !797, file: !3, line: 333, type: !15)
!806 = !DILocalVariable(name: "wa", scope: !797, file: !3, line: 333, type: !15)
!807 = !DILocalVariable(name: "wb", scope: !797, file: !3, line: 333, type: !15)
!808 = !DILocalVariable(name: "wc", scope: !797, file: !3, line: 333, type: !15)
!809 = !DILocalVariable(name: "carry", scope: !797, file: !3, line: 334, type: !21)
!810 = !DILocalVariable(name: "y", scope: !797, file: !3, line: 334, type: !21)
!811 = !DILocalVariable(name: "z", scope: !797, file: !3, line: 334, type: !21)
!812 = !DILocalVariable(name: "x", scope: !797, file: !3, line: 335, type: !415)
!813 = !DILocalVariable(name: "xa", scope: !797, file: !3, line: 335, type: !415)
!814 = !DILocalVariable(name: "xae", scope: !797, file: !3, line: 335, type: !415)
!815 = !DILocalVariable(name: "xb", scope: !797, file: !3, line: 335, type: !415)
!816 = !DILocalVariable(name: "xbe", scope: !797, file: !3, line: 335, type: !415)
!817 = !DILocalVariable(name: "xc", scope: !797, file: !3, line: 335, type: !415)
!818 = !DILocalVariable(name: "xc0", scope: !797, file: !3, line: 335, type: !415)
!819 = !DILocalVariable(name: "z2", scope: !797, file: !3, line: 337, type: !21)
!820 = !DILocation(line: 330, column: 1, scope: !797)
!821 = !DILocation(line: 340, column: 10, scope: !822)
!822 = distinct !DILexicalBlock(scope: !797, file: !3, line: 340, column: 7)
!823 = !DILocation(line: 340, column: 20, scope: !822)
!824 = !DILocation(line: 340, column: 15, scope: !822)
!825 = !DILocation(line: 340, column: 7, scope: !797)
!826 = !DILocation(line: 332, column: 12, scope: !797)
!827 = !DILocation(line: 345, column: 5, scope: !828)
!828 = distinct !DILexicalBlock(scope: !822, file: !3, line: 341, column: 5)
!829 = !DILocation(line: 348, column: 11, scope: !797)
!830 = !DILocation(line: 347, column: 11, scope: !797)
!831 = !DILocation(line: 346, column: 10, scope: !797)
!832 = !DILocation(line: 333, column: 7, scope: !797)
!833 = !DILocation(line: 333, column: 10, scope: !797)
!834 = !DILocation(line: 333, column: 14, scope: !797)
!835 = !DILocation(line: 349, column: 11, scope: !797)
!836 = !DILocation(line: 333, column: 18, scope: !797)
!837 = !DILocation(line: 350, column: 15, scope: !838)
!838 = distinct !DILexicalBlock(scope: !797, file: !3, line: 350, column: 7)
!839 = !DILocation(line: 350, column: 10, scope: !838)
!840 = !DILocation(line: 350, column: 7, scope: !797)
!841 = !DILocation(line: 351, column: 6, scope: !838)
!842 = !DILocation(line: 351, column: 5, scope: !838)
!843 = !DILocation(line: 0, scope: !797)
!844 = !DILocation(line: 97, column: 1, scope: !321, inlinedAt: !845)
!845 = distinct !DILocation(line: 352, column: 7, scope: !797)
!846 = !DILocation(line: 103, column: 7, scope: !331, inlinedAt: !845)
!847 = !DILocation(line: 103, column: 31, scope: !331, inlinedAt: !845)
!848 = !DILocation(line: 103, column: 7, scope: !321, inlinedAt: !845)
!849 = !DILocation(line: 106, column: 53, scope: !344, inlinedAt: !845)
!850 = !DILocation(line: 106, column: 31, scope: !344, inlinedAt: !845)
!851 = !DILocation(line: 109, column: 35, scope: !347, inlinedAt: !845)
!852 = !DILocation(line: 109, column: 11, scope: !344, inlinedAt: !845)
!853 = !DILocation(line: 115, column: 13, scope: !350, inlinedAt: !845)
!854 = !DILocation(line: 100, column: 12, scope: !321, inlinedAt: !845)
!855 = !DILocation(line: 115, column: 41, scope: !350, inlinedAt: !845)
!856 = !DILocation(line: 115, column: 7, scope: !321, inlinedAt: !845)
!857 = !DILocation(line: 117, column: 40, scope: !356, inlinedAt: !845)
!858 = !DILocation(line: 117, column: 34, scope: !356, inlinedAt: !845)
!859 = !DILocation(line: 118, column: 5, scope: !356, inlinedAt: !845)
!860 = !DILocation(line: 121, column: 13, scope: !362, inlinedAt: !845)
!861 = !DILocation(line: 99, column: 7, scope: !321, inlinedAt: !845)
!862 = !DILocation(line: 123, column: 24, scope: !362, inlinedAt: !845)
!863 = !DILocation(line: 127, column: 14, scope: !366, inlinedAt: !845)
!864 = !DILocation(line: 127, column: 11, scope: !362, inlinedAt: !845)
!865 = !DILocation(line: 123, column: 12, scope: !362, inlinedAt: !845)
!866 = !DILocation(line: 128, column: 11, scope: !362, inlinedAt: !845)
!867 = !DILocation(line: 128, column: 14, scope: !362, inlinedAt: !845)
!868 = !DILocation(line: 129, column: 11, scope: !362, inlinedAt: !845)
!869 = !DILocation(line: 129, column: 19, scope: !362, inlinedAt: !845)
!870 = !DILocation(line: 0, scope: !362, inlinedAt: !845)
!871 = !DILocation(line: 131, column: 19, scope: !321, inlinedAt: !845)
!872 = !DILocation(line: 131, column: 24, scope: !321, inlinedAt: !845)
!873 = !DILocation(line: 131, column: 7, scope: !321, inlinedAt: !845)
!874 = !DILocation(line: 131, column: 13, scope: !321, inlinedAt: !845)
!875 = !DILocation(line: 132, column: 3, scope: !321, inlinedAt: !845)
!876 = !DILocation(line: 0, scope: !366, inlinedAt: !845)
!877 = !DILocation(line: 133, column: 1, scope: !321, inlinedAt: !845)
!878 = !DILocation(line: 353, column: 12, scope: !879)
!879 = distinct !DILexicalBlock(scope: !797, file: !3, line: 353, column: 3)
!880 = !DILocation(line: 335, column: 12, scope: !797)
!881 = !DILocation(line: 353, column: 26, scope: !879)
!882 = !DILocation(line: 335, column: 16, scope: !797)
!883 = !DILocation(line: 353, column: 8, scope: !879)
!884 = !DILocation(line: 353, column: 34, scope: !885)
!885 = distinct !DILexicalBlock(scope: !879, file: !3, line: 353, column: 3)
!886 = !DILocation(line: 353, column: 3, scope: !879)
!887 = !DILocation(line: 354, column: 8, scope: !885)
!888 = !DILocation(line: 353, column: 41, scope: !885)
!889 = !DILocation(line: 353, column: 3, scope: !885)
!890 = distinct !{!890, !886, !891}
!891 = !DILocation(line: 354, column: 10, scope: !879)
!892 = !DILocation(line: 355, column: 8, scope: !797)
!893 = !DILocation(line: 356, column: 12, scope: !797)
!894 = !DILocation(line: 335, column: 21, scope: !797)
!895 = !DILocation(line: 358, column: 12, scope: !797)
!896 = !DILocation(line: 335, column: 32, scope: !797)
!897 = !DILocation(line: 335, column: 43, scope: !797)
!898 = !DILocation(line: 361, column: 3, scope: !797)
!899 = !DILocation(line: 361, column: 13, scope: !900)
!900 = distinct !DILexicalBlock(scope: !901, file: !3, line: 361, column: 3)
!901 = distinct !DILexicalBlock(scope: !797, file: !3, line: 361, column: 3)
!902 = !DILocation(line: 361, column: 3, scope: !901)
!903 = !DILocation(line: 357, column: 8, scope: !797)
!904 = !DILocation(line: 335, column: 27, scope: !797)
!905 = !DILocation(line: 363, column: 16, scope: !906)
!906 = distinct !DILexicalBlock(scope: !907, file: !3, line: 363, column: 11)
!907 = distinct !DILexicalBlock(scope: !900, file: !3, line: 362, column: 5)
!908 = !DILocation(line: 363, column: 20, scope: !906)
!909 = !DILocation(line: 334, column: 18, scope: !797)
!910 = !DILocation(line: 363, column: 30, scope: !906)
!911 = !DILocation(line: 363, column: 11, scope: !907)
!912 = !DILocation(line: 335, column: 38, scope: !797)
!913 = !DILocation(line: 334, column: 11, scope: !797)
!914 = !DILocation(line: 368, column: 4, scope: !915)
!915 = distinct !DILexicalBlock(scope: !906, file: !3, line: 364, column: 2)
!916 = !DILocation(line: 0, scope: !917)
!917 = distinct !DILexicalBlock(scope: !915, file: !3, line: 369, column: 6)
!918 = !DILocation(line: 370, column: 13, scope: !917)
!919 = !DILocation(line: 370, column: 16, scope: !917)
!920 = !DILocation(line: 370, column: 26, scope: !917)
!921 = !DILocation(line: 370, column: 33, scope: !917)
!922 = !DILocation(line: 370, column: 37, scope: !917)
!923 = !DILocation(line: 370, column: 30, scope: !917)
!924 = !DILocation(line: 370, column: 47, scope: !917)
!925 = !DILocation(line: 334, column: 21, scope: !797)
!926 = !DILocation(line: 371, column: 18, scope: !917)
!927 = !DILocation(line: 372, column: 16, scope: !917)
!928 = !DILocation(line: 372, column: 19, scope: !917)
!929 = !DILocation(line: 372, column: 26, scope: !917)
!930 = !DILocation(line: 372, column: 37, scope: !917)
!931 = !DILocation(line: 372, column: 30, scope: !917)
!932 = !DILocation(line: 372, column: 44, scope: !917)
!933 = !DILocation(line: 337, column: 11, scope: !797)
!934 = !DILocation(line: 373, column: 19, scope: !917)
!935 = !DILocation(line: 374, column: 8, scope: !917)
!936 = !DILocation(line: 376, column: 13, scope: !915)
!937 = !DILocation(line: 375, column: 6, scope: !917)
!938 = distinct !{!938, !914, !939}
!939 = !DILocation(line: 376, column: 18, scope: !915)
!940 = !DILocation(line: 377, column: 8, scope: !915)
!941 = !DILocation(line: 378, column: 2, scope: !915)
!942 = !DILocation(line: 379, column: 16, scope: !943)
!943 = distinct !DILexicalBlock(scope: !907, file: !3, line: 379, column: 11)
!944 = !DILocation(line: 379, column: 20, scope: !943)
!945 = !DILocation(line: 379, column: 27, scope: !943)
!946 = !DILocation(line: 379, column: 11, scope: !907)
!947 = !DILocation(line: 384, column: 9, scope: !948)
!948 = distinct !DILexicalBlock(scope: !943, file: !3, line: 380, column: 2)
!949 = !DILocation(line: 385, column: 4, scope: !948)
!950 = !DILocation(line: 387, column: 33, scope: !951)
!951 = distinct !DILexicalBlock(scope: !948, file: !3, line: 386, column: 6)
!952 = !DILocation(line: 0, scope: !951)
!953 = !DILocation(line: 387, column: 13, scope: !951)
!954 = !DILocation(line: 387, column: 16, scope: !951)
!955 = !DILocation(line: 387, column: 26, scope: !951)
!956 = !DILocation(line: 387, column: 37, scope: !951)
!957 = !DILocation(line: 387, column: 30, scope: !951)
!958 = !DILocation(line: 387, column: 44, scope: !951)
!959 = !DILocation(line: 388, column: 18, scope: !951)
!960 = !DILocation(line: 389, column: 8, scope: !951)
!961 = !DILocation(line: 390, column: 16, scope: !951)
!962 = !DILocation(line: 390, column: 14, scope: !951)
!963 = !DILocation(line: 390, column: 19, scope: !951)
!964 = !DILocation(line: 390, column: 26, scope: !951)
!965 = !DILocation(line: 390, column: 33, scope: !951)
!966 = !DILocation(line: 390, column: 37, scope: !951)
!967 = !DILocation(line: 390, column: 30, scope: !951)
!968 = !DILocation(line: 390, column: 47, scope: !951)
!969 = !DILocation(line: 391, column: 19, scope: !951)
!970 = !DILocation(line: 393, column: 13, scope: !948)
!971 = !DILocation(line: 392, column: 6, scope: !951)
!972 = distinct !{!972, !949, !973}
!973 = !DILocation(line: 393, column: 18, scope: !948)
!974 = !DILocation(line: 394, column: 8, scope: !948)
!975 = !DILocation(line: 395, column: 2, scope: !948)
!976 = !DILocation(line: 361, column: 22, scope: !900)
!977 = !DILocation(line: 361, column: 29, scope: !900)
!978 = !DILocation(line: 361, column: 3, scope: !900)
!979 = distinct !{!979, !902, !980}
!980 = !DILocation(line: 396, column: 5, scope: !901)
!981 = !DILocation(line: 416, column: 8, scope: !982)
!982 = distinct !DILexicalBlock(scope: !797, file: !3, line: 416, column: 3)
!983 = !DILocation(line: 416, column: 43, scope: !984)
!984 = distinct !DILexicalBlock(scope: !982, file: !3, line: 416, column: 3)
!985 = !DILocation(line: 416, column: 48, scope: !984)
!986 = !DILocation(line: 416, column: 47, scope: !984)
!987 = !DILocation(line: 416, column: 46, scope: !984)
!988 = !DILocation(line: 416, column: 3, scope: !982)
!989 = !DILocation(line: 416, column: 54, scope: !984)
!990 = !DILocation(line: 416, column: 3, scope: !984)
!991 = !DILocation(line: 416, column: 39, scope: !984)
!992 = distinct !{!992, !988, !993}
!993 = !DILocation(line: 416, column: 59, scope: !982)
!994 = !DILocation(line: 0, scope: !984)
!995 = !DILocation(line: 417, column: 6, scope: !797)
!996 = !DILocation(line: 417, column: 11, scope: !797)
!997 = !DILocation(line: 418, column: 3, scope: !797)
!998 = !DILocation(line: 422, column: 1, scope: !2)
!999 = !DILocation(line: 429, column: 14, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !2, file: !3, line: 429, column: 7)
!1001 = !DILocation(line: 426, column: 7, scope: !2)
!1002 = !DILocation(line: 429, column: 19, scope: !1000)
!1003 = !DILocation(line: 429, column: 7, scope: !2)
!1004 = !DILocation(line: 430, column: 32, scope: !1000)
!1005 = !DILocation(line: 430, column: 26, scope: !1000)
!1006 = !DILocation(line: 430, column: 9, scope: !1000)
!1007 = !DILocation(line: 430, column: 5, scope: !1000)
!1008 = !DILocation(line: 432, column: 11, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !2, file: !3, line: 432, column: 7)
!1010 = !DILocation(line: 432, column: 7, scope: !2)
!1011 = !DILocation(line: 435, column: 14, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !2, file: !3, line: 435, column: 7)
!1013 = !{!333, !337, i64 112}
!1014 = !DILocation(line: 425, column: 17, scope: !2)
!1015 = !DILocation(line: 435, column: 12, scope: !1012)
!1016 = !DILocation(line: 435, column: 7, scope: !2)
!1017 = !DILocation(line: 319, column: 1, scope: !751, inlinedAt: !1018)
!1018 = distinct !DILocation(line: 438, column: 33, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 436, column: 5)
!1020 = !DILocation(line: 97, column: 1, scope: !321, inlinedAt: !1021)
!1021 = distinct !DILocation(line: 323, column: 7, scope: !751, inlinedAt: !1018)
!1022 = !DILocation(line: 103, column: 7, scope: !331, inlinedAt: !1021)
!1023 = !DILocation(line: 103, column: 31, scope: !331, inlinedAt: !1021)
!1024 = !DILocation(line: 103, column: 7, scope: !321, inlinedAt: !1021)
!1025 = !DILocation(line: 106, column: 53, scope: !344, inlinedAt: !1021)
!1026 = !DILocation(line: 106, column: 31, scope: !344, inlinedAt: !1021)
!1027 = !DILocation(line: 109, column: 35, scope: !347, inlinedAt: !1021)
!1028 = !DILocation(line: 109, column: 11, scope: !344, inlinedAt: !1021)
!1029 = !DILocation(line: 115, column: 13, scope: !350, inlinedAt: !1021)
!1030 = !DILocation(line: 100, column: 12, scope: !321, inlinedAt: !1021)
!1031 = !DILocation(line: 115, column: 41, scope: !350, inlinedAt: !1021)
!1032 = !DILocation(line: 115, column: 7, scope: !321, inlinedAt: !1021)
!1033 = !DILocation(line: 117, column: 40, scope: !356, inlinedAt: !1021)
!1034 = !DILocation(line: 117, column: 34, scope: !356, inlinedAt: !1021)
!1035 = !DILocation(line: 118, column: 5, scope: !356, inlinedAt: !1021)
!1036 = !DILocation(line: 99, column: 7, scope: !321, inlinedAt: !1021)
!1037 = !DILocation(line: 123, column: 24, scope: !362, inlinedAt: !1021)
!1038 = !DILocation(line: 127, column: 14, scope: !366, inlinedAt: !1021)
!1039 = !DILocation(line: 127, column: 11, scope: !362, inlinedAt: !1021)
!1040 = !DILocation(line: 123, column: 12, scope: !362, inlinedAt: !1021)
!1041 = !DILocation(line: 128, column: 11, scope: !362, inlinedAt: !1021)
!1042 = !DILocation(line: 128, column: 14, scope: !362, inlinedAt: !1021)
!1043 = !DILocation(line: 129, column: 11, scope: !362, inlinedAt: !1021)
!1044 = !DILocation(line: 129, column: 19, scope: !362, inlinedAt: !1021)
!1045 = !DILocation(line: 0, scope: !362, inlinedAt: !1021)
!1046 = !DILocation(line: 131, column: 19, scope: !321, inlinedAt: !1021)
!1047 = !DILocation(line: 131, column: 24, scope: !321, inlinedAt: !1021)
!1048 = !DILocation(line: 131, column: 7, scope: !321, inlinedAt: !1021)
!1049 = !DILocation(line: 131, column: 13, scope: !321, inlinedAt: !1021)
!1050 = !DILocation(line: 132, column: 3, scope: !321, inlinedAt: !1021)
!1051 = !DILocation(line: 0, scope: !366, inlinedAt: !1021)
!1052 = !DILocation(line: 0, scope: !1019)
!1053 = !DILocation(line: 133, column: 1, scope: !321, inlinedAt: !1021)
!1054 = !DILocation(line: 321, column: 12, scope: !751, inlinedAt: !1018)
!1055 = !DILocation(line: 324, column: 3, scope: !751, inlinedAt: !1018)
!1056 = !DILocation(line: 324, column: 12, scope: !751, inlinedAt: !1018)
!1057 = !DILocation(line: 325, column: 6, scope: !751, inlinedAt: !1018)
!1058 = !DILocation(line: 325, column: 11, scope: !751, inlinedAt: !1018)
!1059 = !DILocation(line: 326, column: 3, scope: !751, inlinedAt: !1018)
!1060 = !DILocation(line: 438, column: 31, scope: !1019)
!1061 = !DILocation(line: 439, column: 11, scope: !1019)
!1062 = !DILocation(line: 439, column: 17, scope: !1019)
!1063 = !DILocation(line: 440, column: 5, scope: !1019)
!1064 = !DILocation(line: 441, column: 3, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 441, column: 3)
!1066 = distinct !DILexicalBlock(scope: !2, file: !3, line: 441, column: 3)
!1067 = !DILocation(line: 0, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 449, column: 11)
!1069 = distinct !DILexicalBlock(scope: !1065, file: !3, line: 442, column: 5)
!1070 = !DILocation(line: 0, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1072, file: !3, line: 444, column: 2)
!1072 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 443, column: 11)
!1073 = !DILocation(line: 0, scope: !1069)
!1074 = !DILocation(line: 443, column: 13, scope: !1072)
!1075 = !DILocation(line: 443, column: 11, scope: !1069)
!1076 = !DILocation(line: 445, column: 9, scope: !1071)
!1077 = !DILocation(line: 425, column: 12, scope: !2)
!1078 = !DILocation(line: 136, column: 1, scope: !387, inlinedAt: !1079)
!1079 = distinct !DILocation(line: 446, column: 4, scope: !1071)
!1080 = !DILocation(line: 139, column: 7, scope: !395, inlinedAt: !1079)
!1081 = !DILocation(line: 139, column: 7, scope: !387, inlinedAt: !1079)
!1082 = !DILocation(line: 141, column: 18, scope: !398, inlinedAt: !1079)
!1083 = !DILocation(line: 141, column: 45, scope: !398, inlinedAt: !1079)
!1084 = !DILocation(line: 141, column: 16, scope: !398, inlinedAt: !1079)
!1085 = !DILocation(line: 142, column: 38, scope: !398, inlinedAt: !1079)
!1086 = !DILocation(line: 143, column: 5, scope: !398, inlinedAt: !1079)
!1087 = !DILocation(line: 144, column: 1, scope: !387, inlinedAt: !1079)
!1088 = !DILocation(line: 448, column: 2, scope: !1071)
!1089 = !DILocation(line: 0, scope: !1000)
!1090 = !DILocation(line: 449, column: 15, scope: !1068)
!1091 = !DILocation(line: 449, column: 11, scope: !1069)
!1092 = !DILocation(line: 451, column: 23, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 451, column: 11)
!1094 = !DILocation(line: 425, column: 22, scope: !2)
!1095 = !DILocation(line: 451, column: 17, scope: !1093)
!1096 = !DILocation(line: 451, column: 11, scope: !1069)
!1097 = distinct !{!1097, !1098, !1099}
!1098 = !DILocation(line: 441, column: 3, scope: !1066)
!1099 = !DILocation(line: 457, column: 5, scope: !1066)
!1100 = !DILocation(line: 453, column: 22, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1093, file: !3, line: 452, column: 2)
!1102 = !DILocation(line: 453, column: 20, scope: !1101)
!1103 = !DILocation(line: 454, column: 9, scope: !1101)
!1104 = !DILocation(line: 454, column: 15, scope: !1101)
!1105 = !DILocation(line: 455, column: 2, scope: !1101)
!1106 = !DILocation(line: 0, scope: !1009)
!1107 = !DILocation(line: 459, column: 1, scope: !2)
!1108 = distinct !DISubprogram(name: "__lshift", scope: !3, file: !3, line: 462, type: !4, isLocal: false, isDefinition: true, scopeLine: 463, flags: DIFlagPrototyped, isOptimized: true, unit: !289, retainedNodes: !1109)
!1109 = !{!1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121}
!1110 = !DILocalVariable(name: "ptr", arg: 1, scope: !1108, file: !3, line: 462, type: !25)
!1111 = !DILocalVariable(name: "b", arg: 2, scope: !1108, file: !3, line: 462, type: !6)
!1112 = !DILocalVariable(name: "k", arg: 3, scope: !1108, file: !3, line: 462, type: !15)
!1113 = !DILocalVariable(name: "i", scope: !1108, file: !3, line: 464, type: !15)
!1114 = !DILocalVariable(name: "k1", scope: !1108, file: !3, line: 464, type: !15)
!1115 = !DILocalVariable(name: "n", scope: !1108, file: !3, line: 464, type: !15)
!1116 = !DILocalVariable(name: "n1", scope: !1108, file: !3, line: 464, type: !15)
!1117 = !DILocalVariable(name: "b1", scope: !1108, file: !3, line: 465, type: !6)
!1118 = !DILocalVariable(name: "x", scope: !1108, file: !3, line: 466, type: !415)
!1119 = !DILocalVariable(name: "x1", scope: !1108, file: !3, line: 466, type: !415)
!1120 = !DILocalVariable(name: "xe", scope: !1108, file: !3, line: 466, type: !415)
!1121 = !DILocalVariable(name: "z", scope: !1108, file: !3, line: 466, type: !21)
!1122 = !DILocation(line: 462, column: 1, scope: !1108)
!1123 = !DILocation(line: 469, column: 9, scope: !1108)
!1124 = !DILocation(line: 464, column: 14, scope: !1108)
!1125 = !DILocation(line: 473, column: 11, scope: !1108)
!1126 = !DILocation(line: 464, column: 10, scope: !1108)
!1127 = !DILocation(line: 474, column: 15, scope: !1108)
!1128 = !DILocation(line: 474, column: 10, scope: !1108)
!1129 = !DILocation(line: 474, column: 20, scope: !1108)
!1130 = !DILocation(line: 464, column: 17, scope: !1108)
!1131 = !DILocation(line: 475, column: 15, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 475, column: 3)
!1133 = !DILocation(line: 464, column: 7, scope: !1108)
!1134 = !DILocation(line: 475, column: 8, scope: !1132)
!1135 = !DILocation(line: 475, column: 27, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1132, file: !3, line: 475, column: 3)
!1137 = !DILocation(line: 475, column: 3, scope: !1132)
!1138 = !DILocation(line: 476, column: 7, scope: !1136)
!1139 = !DILocation(line: 475, column: 34, scope: !1136)
!1140 = !DILocation(line: 475, column: 3, scope: !1136)
!1141 = distinct !{!1141, !1137, !1142}
!1142 = !DILocation(line: 476, column: 7, scope: !1132)
!1143 = !DILocation(line: 0, scope: !1136)
!1144 = !DILocation(line: 97, column: 1, scope: !321, inlinedAt: !1145)
!1145 = distinct !DILocation(line: 477, column: 8, scope: !1108)
!1146 = !DILocation(line: 103, column: 7, scope: !331, inlinedAt: !1145)
!1147 = !DILocation(line: 103, column: 31, scope: !331, inlinedAt: !1145)
!1148 = !DILocation(line: 103, column: 7, scope: !321, inlinedAt: !1145)
!1149 = !DILocation(line: 106, column: 53, scope: !344, inlinedAt: !1145)
!1150 = !DILocation(line: 106, column: 31, scope: !344, inlinedAt: !1145)
!1151 = !DILocation(line: 109, column: 35, scope: !347, inlinedAt: !1145)
!1152 = !DILocation(line: 109, column: 11, scope: !344, inlinedAt: !1145)
!1153 = !DILocation(line: 115, column: 13, scope: !350, inlinedAt: !1145)
!1154 = !DILocation(line: 100, column: 12, scope: !321, inlinedAt: !1145)
!1155 = !DILocation(line: 115, column: 41, scope: !350, inlinedAt: !1145)
!1156 = !DILocation(line: 115, column: 7, scope: !321, inlinedAt: !1145)
!1157 = !DILocation(line: 117, column: 40, scope: !356, inlinedAt: !1145)
!1158 = !DILocation(line: 117, column: 34, scope: !356, inlinedAt: !1145)
!1159 = !DILocation(line: 118, column: 5, scope: !356, inlinedAt: !1145)
!1160 = !DILocation(line: 121, column: 13, scope: !362, inlinedAt: !1145)
!1161 = !DILocation(line: 99, column: 7, scope: !321, inlinedAt: !1145)
!1162 = !DILocation(line: 123, column: 24, scope: !362, inlinedAt: !1145)
!1163 = !DILocation(line: 127, column: 14, scope: !366, inlinedAt: !1145)
!1164 = !DILocation(line: 127, column: 11, scope: !362, inlinedAt: !1145)
!1165 = !DILocation(line: 123, column: 12, scope: !362, inlinedAt: !1145)
!1166 = !DILocation(line: 128, column: 11, scope: !362, inlinedAt: !1145)
!1167 = !DILocation(line: 128, column: 14, scope: !362, inlinedAt: !1145)
!1168 = !DILocation(line: 129, column: 11, scope: !362, inlinedAt: !1145)
!1169 = !DILocation(line: 129, column: 19, scope: !362, inlinedAt: !1145)
!1170 = !DILocation(line: 0, scope: !362, inlinedAt: !1145)
!1171 = !DILocation(line: 131, column: 19, scope: !321, inlinedAt: !1145)
!1172 = !DILocation(line: 131, column: 24, scope: !321, inlinedAt: !1145)
!1173 = !DILocation(line: 131, column: 7, scope: !321, inlinedAt: !1145)
!1174 = !DILocation(line: 131, column: 13, scope: !321, inlinedAt: !1145)
!1175 = !DILocation(line: 132, column: 3, scope: !321, inlinedAt: !1145)
!1176 = !DILocation(line: 0, scope: !366, inlinedAt: !1145)
!1177 = !DILocation(line: 0, scope: !1108)
!1178 = !DILocation(line: 133, column: 1, scope: !321, inlinedAt: !1145)
!1179 = !DILocation(line: 465, column: 12, scope: !1108)
!1180 = !DILocation(line: 478, column: 8, scope: !1108)
!1181 = !DILocation(line: 466, column: 16, scope: !1108)
!1182 = !DILocation(line: 479, column: 8, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 479, column: 3)
!1184 = !DILocation(line: 479, column: 17, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 479, column: 3)
!1186 = !DILocation(line: 479, column: 3, scope: !1183)
!1187 = !DILocation(line: 480, column: 8, scope: !1185)
!1188 = !DILocation(line: 480, column: 11, scope: !1185)
!1189 = !DILocation(line: 479, column: 23, scope: !1185)
!1190 = !DILocation(line: 479, column: 3, scope: !1185)
!1191 = distinct !{!1191, !1186, !1192}
!1192 = !DILocation(line: 480, column: 13, scope: !1183)
!1193 = !DILocation(line: 0, scope: !1185)
!1194 = !DILocation(line: 481, column: 7, scope: !1108)
!1195 = !DILocation(line: 466, column: 12, scope: !1108)
!1196 = !DILocation(line: 482, column: 15, scope: !1108)
!1197 = !DILocation(line: 482, column: 10, scope: !1108)
!1198 = !DILocation(line: 466, column: 21, scope: !1108)
!1199 = !DILocation(line: 484, column: 9, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 484, column: 7)
!1201 = !DILocation(line: 484, column: 7, scope: !1108)
!1202 = !DILocation(line: 486, column: 15, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1200, file: !3, line: 485, column: 5)
!1204 = !DILocation(line: 466, column: 25, scope: !1108)
!1205 = !DILocation(line: 488, column: 7, scope: !1203)
!1206 = !DILocation(line: 0, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 489, column: 2)
!1208 = !DILocation(line: 490, column: 12, scope: !1207)
!1209 = !DILocation(line: 490, column: 15, scope: !1207)
!1210 = !DILocation(line: 490, column: 20, scope: !1207)
!1211 = !DILocation(line: 490, column: 7, scope: !1207)
!1212 = !DILocation(line: 490, column: 10, scope: !1207)
!1213 = !DILocation(line: 491, column: 10, scope: !1207)
!1214 = !DILocation(line: 491, column: 8, scope: !1207)
!1215 = !DILocation(line: 491, column: 13, scope: !1207)
!1216 = !DILocation(line: 493, column: 16, scope: !1203)
!1217 = !DILocation(line: 492, column: 2, scope: !1207)
!1218 = distinct !{!1218, !1205, !1219}
!1219 = !DILocation(line: 493, column: 20, scope: !1203)
!1220 = !DILocation(line: 494, column: 16, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 494, column: 11)
!1222 = !DILocation(line: 494, column: 21, scope: !1221)
!1223 = !DILocation(line: 494, column: 11, scope: !1203)
!1224 = !DILocation(line: 495, column: 2, scope: !1221)
!1225 = !DILocation(line: 0, scope: !1200)
!1226 = !DILocation(line: 514, column: 17, scope: !1200)
!1227 = !DILocation(line: 514, column: 15, scope: !1200)
!1228 = !DILocation(line: 514, column: 10, scope: !1200)
!1229 = !DILocation(line: 514, column: 13, scope: !1200)
!1230 = !DILocation(line: 515, column: 14, scope: !1200)
!1231 = !DILocation(line: 514, column: 7, scope: !1200)
!1232 = distinct !{!1232, !1233, !1234}
!1233 = !DILocation(line: 513, column: 5, scope: !1200)
!1234 = !DILocation(line: 515, column: 18, scope: !1200)
!1235 = !DILocation(line: 516, column: 17, scope: !1108)
!1236 = !DILocation(line: 516, column: 7, scope: !1108)
!1237 = !DILocation(line: 516, column: 12, scope: !1108)
!1238 = !DILocation(line: 136, column: 1, scope: !387, inlinedAt: !1239)
!1239 = distinct !DILocation(line: 517, column: 3, scope: !1108)
!1240 = !DILocation(line: 139, column: 7, scope: !395, inlinedAt: !1239)
!1241 = !DILocation(line: 139, column: 7, scope: !387, inlinedAt: !1239)
!1242 = !DILocation(line: 141, column: 18, scope: !398, inlinedAt: !1239)
!1243 = !DILocation(line: 141, column: 45, scope: !398, inlinedAt: !1239)
!1244 = !DILocation(line: 141, column: 16, scope: !398, inlinedAt: !1239)
!1245 = !DILocation(line: 142, column: 38, scope: !398, inlinedAt: !1239)
!1246 = !DILocation(line: 143, column: 5, scope: !398, inlinedAt: !1239)
!1247 = !DILocation(line: 144, column: 1, scope: !387, inlinedAt: !1239)
!1248 = !DILocation(line: 518, column: 3, scope: !1108)
!1249 = distinct !DISubprogram(name: "__mcmp", scope: !3, file: !3, line: 522, type: !1250, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: true, unit: !289, retainedNodes: !1252)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{!15, !6, !6}
!1252 = !{!1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260}
!1253 = !DILocalVariable(name: "a", arg: 1, scope: !1249, file: !3, line: 522, type: !6)
!1254 = !DILocalVariable(name: "b", arg: 2, scope: !1249, file: !3, line: 522, type: !6)
!1255 = !DILocalVariable(name: "xa", scope: !1249, file: !3, line: 524, type: !415)
!1256 = !DILocalVariable(name: "xa0", scope: !1249, file: !3, line: 524, type: !415)
!1257 = !DILocalVariable(name: "xb", scope: !1249, file: !3, line: 524, type: !415)
!1258 = !DILocalVariable(name: "xb0", scope: !1249, file: !3, line: 524, type: !415)
!1259 = !DILocalVariable(name: "i", scope: !1249, file: !3, line: 525, type: !15)
!1260 = !DILocalVariable(name: "j", scope: !1249, file: !3, line: 525, type: !15)
!1261 = !DILocation(line: 522, column: 1, scope: !1249)
!1262 = !DILocation(line: 527, column: 10, scope: !1249)
!1263 = !DILocation(line: 525, column: 7, scope: !1249)
!1264 = !DILocation(line: 528, column: 10, scope: !1249)
!1265 = !DILocation(line: 525, column: 10, scope: !1249)
!1266 = !DILocation(line: 535, column: 9, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 535, column: 7)
!1268 = !DILocation(line: 535, column: 7, scope: !1249)
!1269 = !DILocation(line: 537, column: 9, scope: !1249)
!1270 = !DILocation(line: 524, column: 17, scope: !1249)
!1271 = !DILocation(line: 538, column: 12, scope: !1249)
!1272 = !DILocation(line: 524, column: 12, scope: !1249)
!1273 = !DILocation(line: 524, column: 28, scope: !1249)
!1274 = !DILocation(line: 540, column: 12, scope: !1249)
!1275 = !DILocation(line: 524, column: 23, scope: !1249)
!1276 = !DILocation(line: 541, column: 3, scope: !1249)
!1277 = !DILocation(line: 0, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1279, file: !3, line: 543, column: 11)
!1279 = distinct !DILexicalBlock(scope: !1280, file: !3, line: 542, column: 5)
!1280 = distinct !DILexicalBlock(scope: !1281, file: !3, line: 541, column: 3)
!1281 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 541, column: 3)
!1282 = !DILocation(line: 543, column: 12, scope: !1278)
!1283 = !DILocation(line: 543, column: 11, scope: !1278)
!1284 = !DILocation(line: 543, column: 21, scope: !1278)
!1285 = !DILocation(line: 543, column: 20, scope: !1278)
!1286 = !DILocation(line: 543, column: 17, scope: !1278)
!1287 = !DILocation(line: 543, column: 11, scope: !1279)
!1288 = !DILocation(line: 544, column: 13, scope: !1278)
!1289 = !DILocation(line: 544, column: 9, scope: !1278)
!1290 = !DILocation(line: 544, column: 2, scope: !1278)
!1291 = !DILocation(line: 545, column: 14, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1279, file: !3, line: 545, column: 11)
!1293 = !DILocation(line: 545, column: 11, scope: !1279)
!1294 = distinct !{!1294, !1295, !1296}
!1295 = !DILocation(line: 541, column: 3, scope: !1281)
!1296 = !DILocation(line: 547, column: 5, scope: !1281)
!1297 = !DILocation(line: 0, scope: !1249)
!1298 = !DILocation(line: 0, scope: !1267)
!1299 = !DILocation(line: 549, column: 1, scope: !1249)
!1300 = distinct !DISubprogram(name: "__mdiff", scope: !3, file: !3, line: 552, type: !798, isLocal: false, isDefinition: true, scopeLine: 554, flags: DIFlagPrototyped, isOptimized: true, unit: !289, retainedNodes: !1301)
!1301 = !{!1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316}
!1302 = !DILocalVariable(name: "ptr", arg: 1, scope: !1300, file: !3, line: 552, type: !25)
!1303 = !DILocalVariable(name: "a", arg: 2, scope: !1300, file: !3, line: 552, type: !6)
!1304 = !DILocalVariable(name: "b", arg: 3, scope: !1300, file: !3, line: 552, type: !6)
!1305 = !DILocalVariable(name: "c", scope: !1300, file: !3, line: 555, type: !6)
!1306 = !DILocalVariable(name: "i", scope: !1300, file: !3, line: 556, type: !15)
!1307 = !DILocalVariable(name: "wa", scope: !1300, file: !3, line: 556, type: !15)
!1308 = !DILocalVariable(name: "wb", scope: !1300, file: !3, line: 556, type: !15)
!1309 = !DILocalVariable(name: "borrow", scope: !1300, file: !3, line: 557, type: !15)
!1310 = !DILocalVariable(name: "y", scope: !1300, file: !3, line: 557, type: !15)
!1311 = !DILocalVariable(name: "xa", scope: !1300, file: !3, line: 558, type: !415)
!1312 = !DILocalVariable(name: "xae", scope: !1300, file: !3, line: 558, type: !415)
!1313 = !DILocalVariable(name: "xb", scope: !1300, file: !3, line: 558, type: !415)
!1314 = !DILocalVariable(name: "xbe", scope: !1300, file: !3, line: 558, type: !415)
!1315 = !DILocalVariable(name: "xc", scope: !1300, file: !3, line: 558, type: !415)
!1316 = !DILocalVariable(name: "z", scope: !1300, file: !3, line: 560, type: !15)
!1317 = !DILocation(line: 552, column: 1, scope: !1300)
!1318 = !DILocation(line: 522, column: 1, scope: !1249, inlinedAt: !1319)
!1319 = distinct !DILocation(line: 563, column: 7, scope: !1300)
!1320 = !DILocation(line: 527, column: 10, scope: !1249, inlinedAt: !1319)
!1321 = !DILocation(line: 525, column: 7, scope: !1249, inlinedAt: !1319)
!1322 = !DILocation(line: 528, column: 10, scope: !1249, inlinedAt: !1319)
!1323 = !DILocation(line: 525, column: 10, scope: !1249, inlinedAt: !1319)
!1324 = !DILocation(line: 535, column: 9, scope: !1267, inlinedAt: !1319)
!1325 = !DILocation(line: 535, column: 7, scope: !1249, inlinedAt: !1319)
!1326 = !DILocation(line: 537, column: 9, scope: !1249, inlinedAt: !1319)
!1327 = !DILocation(line: 524, column: 17, scope: !1249, inlinedAt: !1319)
!1328 = !DILocation(line: 538, column: 12, scope: !1249, inlinedAt: !1319)
!1329 = !DILocation(line: 524, column: 12, scope: !1249, inlinedAt: !1319)
!1330 = !DILocation(line: 524, column: 28, scope: !1249, inlinedAt: !1319)
!1331 = !DILocation(line: 540, column: 12, scope: !1249, inlinedAt: !1319)
!1332 = !DILocation(line: 524, column: 23, scope: !1249, inlinedAt: !1319)
!1333 = !DILocation(line: 541, column: 3, scope: !1249, inlinedAt: !1319)
!1334 = !DILocation(line: 0, scope: !1278, inlinedAt: !1319)
!1335 = !DILocation(line: 543, column: 12, scope: !1278, inlinedAt: !1319)
!1336 = !DILocation(line: 543, column: 11, scope: !1278, inlinedAt: !1319)
!1337 = !DILocation(line: 543, column: 21, scope: !1278, inlinedAt: !1319)
!1338 = !DILocation(line: 543, column: 20, scope: !1278, inlinedAt: !1319)
!1339 = !DILocation(line: 543, column: 17, scope: !1278, inlinedAt: !1319)
!1340 = !DILocation(line: 543, column: 11, scope: !1279, inlinedAt: !1319)
!1341 = !DILocation(line: 544, column: 13, scope: !1278, inlinedAt: !1319)
!1342 = !DILocation(line: 544, column: 9, scope: !1278, inlinedAt: !1319)
!1343 = !DILocation(line: 544, column: 2, scope: !1278, inlinedAt: !1319)
!1344 = !DILocation(line: 545, column: 14, scope: !1292, inlinedAt: !1319)
!1345 = !DILocation(line: 545, column: 11, scope: !1279, inlinedAt: !1319)
!1346 = !DILocation(line: 548, column: 3, scope: !1249, inlinedAt: !1319)
!1347 = !DILocation(line: 549, column: 1, scope: !1249, inlinedAt: !1319)
!1348 = !DILocation(line: 556, column: 7, scope: !1300)
!1349 = !DILocation(line: 564, column: 7, scope: !1300)
!1350 = !DILocation(line: 97, column: 1, scope: !321, inlinedAt: !1351)
!1351 = distinct !DILocation(line: 566, column: 11, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1353, file: !3, line: 565, column: 5)
!1353 = distinct !DILexicalBlock(scope: !1300, file: !3, line: 564, column: 7)
!1354 = !DILocation(line: 103, column: 7, scope: !331, inlinedAt: !1351)
!1355 = !DILocation(line: 103, column: 31, scope: !331, inlinedAt: !1351)
!1356 = !DILocation(line: 103, column: 7, scope: !321, inlinedAt: !1351)
!1357 = !DILocation(line: 106, column: 53, scope: !344, inlinedAt: !1351)
!1358 = !DILocation(line: 106, column: 31, scope: !344, inlinedAt: !1351)
!1359 = !DILocation(line: 109, column: 35, scope: !347, inlinedAt: !1351)
!1360 = !DILocation(line: 109, column: 11, scope: !344, inlinedAt: !1351)
!1361 = !DILocation(line: 115, column: 13, scope: !350, inlinedAt: !1351)
!1362 = !DILocation(line: 100, column: 12, scope: !321, inlinedAt: !1351)
!1363 = !DILocation(line: 115, column: 41, scope: !350, inlinedAt: !1351)
!1364 = !DILocation(line: 115, column: 7, scope: !321, inlinedAt: !1351)
!1365 = !DILocation(line: 117, column: 40, scope: !356, inlinedAt: !1351)
!1366 = !DILocation(line: 117, column: 34, scope: !356, inlinedAt: !1351)
!1367 = !DILocation(line: 118, column: 5, scope: !356, inlinedAt: !1351)
!1368 = !DILocation(line: 99, column: 7, scope: !321, inlinedAt: !1351)
!1369 = !DILocation(line: 123, column: 24, scope: !362, inlinedAt: !1351)
!1370 = !DILocation(line: 127, column: 14, scope: !366, inlinedAt: !1351)
!1371 = !DILocation(line: 127, column: 11, scope: !362, inlinedAt: !1351)
!1372 = !DILocation(line: 123, column: 12, scope: !362, inlinedAt: !1351)
!1373 = !DILocation(line: 128, column: 11, scope: !362, inlinedAt: !1351)
!1374 = !DILocation(line: 128, column: 14, scope: !362, inlinedAt: !1351)
!1375 = !DILocation(line: 129, column: 11, scope: !362, inlinedAt: !1351)
!1376 = !DILocation(line: 129, column: 19, scope: !362, inlinedAt: !1351)
!1377 = !DILocation(line: 0, scope: !362, inlinedAt: !1351)
!1378 = !DILocation(line: 131, column: 19, scope: !321, inlinedAt: !1351)
!1379 = !DILocation(line: 131, column: 24, scope: !321, inlinedAt: !1351)
!1380 = !DILocation(line: 131, column: 7, scope: !321, inlinedAt: !1351)
!1381 = !DILocation(line: 131, column: 13, scope: !321, inlinedAt: !1351)
!1382 = !DILocation(line: 132, column: 3, scope: !321, inlinedAt: !1351)
!1383 = !DILocation(line: 0, scope: !366, inlinedAt: !1351)
!1384 = !DILocation(line: 0, scope: !1352)
!1385 = !DILocation(line: 133, column: 1, scope: !321, inlinedAt: !1351)
!1386 = !DILocation(line: 555, column: 12, scope: !1300)
!1387 = !DILocation(line: 567, column: 10, scope: !1352)
!1388 = !DILocation(line: 567, column: 15, scope: !1352)
!1389 = !DILocation(line: 568, column: 7, scope: !1352)
!1390 = !DILocation(line: 568, column: 16, scope: !1352)
!1391 = !DILocation(line: 569, column: 7, scope: !1352)
!1392 = !DILocation(line: 0, scope: !1300)
!1393 = !DILocation(line: 571, column: 9, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1300, file: !3, line: 571, column: 7)
!1395 = !DILocation(line: 571, column: 7, scope: !1300)
!1396 = !DILocation(line: 577, column: 5, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1394, file: !3, line: 572, column: 5)
!1398 = !DILocation(line: 580, column: 23, scope: !1300)
!1399 = !DILocation(line: 97, column: 1, scope: !321, inlinedAt: !1400)
!1400 = distinct !DILocation(line: 580, column: 7, scope: !1300)
!1401 = !DILocation(line: 103, column: 7, scope: !331, inlinedAt: !1400)
!1402 = !DILocation(line: 103, column: 31, scope: !331, inlinedAt: !1400)
!1403 = !DILocation(line: 103, column: 7, scope: !321, inlinedAt: !1400)
!1404 = !DILocation(line: 106, column: 53, scope: !344, inlinedAt: !1400)
!1405 = !DILocation(line: 106, column: 31, scope: !344, inlinedAt: !1400)
!1406 = !DILocation(line: 109, column: 35, scope: !347, inlinedAt: !1400)
!1407 = !DILocation(line: 109, column: 11, scope: !344, inlinedAt: !1400)
!1408 = !DILocation(line: 115, column: 13, scope: !350, inlinedAt: !1400)
!1409 = !DILocation(line: 100, column: 12, scope: !321, inlinedAt: !1400)
!1410 = !DILocation(line: 115, column: 41, scope: !350, inlinedAt: !1400)
!1411 = !DILocation(line: 115, column: 7, scope: !321, inlinedAt: !1400)
!1412 = !DILocation(line: 117, column: 40, scope: !356, inlinedAt: !1400)
!1413 = !DILocation(line: 117, column: 34, scope: !356, inlinedAt: !1400)
!1414 = !DILocation(line: 118, column: 5, scope: !356, inlinedAt: !1400)
!1415 = !DILocation(line: 121, column: 13, scope: !362, inlinedAt: !1400)
!1416 = !DILocation(line: 99, column: 7, scope: !321, inlinedAt: !1400)
!1417 = !DILocation(line: 123, column: 24, scope: !362, inlinedAt: !1400)
!1418 = !DILocation(line: 127, column: 14, scope: !366, inlinedAt: !1400)
!1419 = !DILocation(line: 127, column: 11, scope: !362, inlinedAt: !1400)
!1420 = !DILocation(line: 123, column: 12, scope: !362, inlinedAt: !1400)
!1421 = !DILocation(line: 128, column: 11, scope: !362, inlinedAt: !1400)
!1422 = !DILocation(line: 128, column: 14, scope: !362, inlinedAt: !1400)
!1423 = !DILocation(line: 129, column: 11, scope: !362, inlinedAt: !1400)
!1424 = !DILocation(line: 129, column: 19, scope: !362, inlinedAt: !1400)
!1425 = !DILocation(line: 0, scope: !362, inlinedAt: !1400)
!1426 = !DILocation(line: 131, column: 19, scope: !321, inlinedAt: !1400)
!1427 = !DILocation(line: 131, column: 24, scope: !321, inlinedAt: !1400)
!1428 = !DILocation(line: 131, column: 7, scope: !321, inlinedAt: !1400)
!1429 = !DILocation(line: 131, column: 13, scope: !321, inlinedAt: !1400)
!1430 = !DILocation(line: 132, column: 3, scope: !321, inlinedAt: !1400)
!1431 = !DILocation(line: 0, scope: !366, inlinedAt: !1400)
!1432 = !DILocation(line: 133, column: 1, scope: !321, inlinedAt: !1400)
!1433 = !DILocation(line: 581, column: 6, scope: !1300)
!1434 = !DILocation(line: 581, column: 12, scope: !1300)
!1435 = !DILocation(line: 582, column: 11, scope: !1300)
!1436 = !DILocation(line: 556, column: 10, scope: !1300)
!1437 = !DILocation(line: 583, column: 8, scope: !1300)
!1438 = !DILocation(line: 558, column: 12, scope: !1300)
!1439 = !DILocation(line: 584, column: 12, scope: !1300)
!1440 = !DILocation(line: 558, column: 17, scope: !1300)
!1441 = !DILocation(line: 585, column: 11, scope: !1300)
!1442 = !DILocation(line: 556, column: 14, scope: !1300)
!1443 = !DILocation(line: 586, column: 8, scope: !1300)
!1444 = !DILocation(line: 558, column: 23, scope: !1300)
!1445 = !DILocation(line: 587, column: 12, scope: !1300)
!1446 = !DILocation(line: 558, column: 28, scope: !1300)
!1447 = !DILocation(line: 588, column: 8, scope: !1300)
!1448 = !DILocation(line: 558, column: 34, scope: !1300)
!1449 = !DILocation(line: 557, column: 10, scope: !1300)
!1450 = !DILocation(line: 591, column: 3, scope: !1300)
!1451 = !DILocation(line: 0, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1300, file: !3, line: 592, column: 5)
!1453 = !DILocation(line: 593, column: 12, scope: !1452)
!1454 = !DILocation(line: 593, column: 16, scope: !1452)
!1455 = !DILocation(line: 593, column: 29, scope: !1452)
!1456 = !DILocation(line: 593, column: 33, scope: !1452)
!1457 = !DILocation(line: 593, column: 26, scope: !1452)
!1458 = !DILocation(line: 593, column: 43, scope: !1452)
!1459 = !DILocation(line: 557, column: 18, scope: !1300)
!1460 = !DILocation(line: 594, column: 18, scope: !1452)
!1461 = !DILocation(line: 596, column: 15, scope: !1452)
!1462 = !DILocation(line: 596, column: 18, scope: !1452)
!1463 = !DILocation(line: 596, column: 31, scope: !1452)
!1464 = !DILocation(line: 596, column: 34, scope: !1452)
!1465 = !DILocation(line: 596, column: 25, scope: !1452)
!1466 = !DILocation(line: 596, column: 41, scope: !1452)
!1467 = !DILocation(line: 560, column: 10, scope: !1300)
!1468 = !DILocation(line: 597, column: 18, scope: !1452)
!1469 = !DILocation(line: 599, column: 7, scope: !1452)
!1470 = !DILocation(line: 601, column: 13, scope: !1300)
!1471 = !DILocation(line: 600, column: 5, scope: !1452)
!1472 = distinct !{!1472, !1450, !1473}
!1473 = !DILocation(line: 601, column: 18, scope: !1300)
!1474 = !DILocation(line: 602, column: 13, scope: !1300)
!1475 = !DILocation(line: 602, column: 3, scope: !1300)
!1476 = !DILocation(line: 629, column: 11, scope: !1300)
!1477 = !DILocation(line: 0, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1300, file: !3, line: 603, column: 5)
!1479 = !DILocation(line: 629, column: 10, scope: !1300)
!1480 = !DILocation(line: 629, column: 3, scope: !1300)
!1481 = !DILocation(line: 604, column: 12, scope: !1478)
!1482 = !DILocation(line: 604, column: 16, scope: !1478)
!1483 = !DILocation(line: 604, column: 26, scope: !1478)
!1484 = !DILocation(line: 605, column: 18, scope: !1478)
!1485 = !DILocation(line: 607, column: 15, scope: !1478)
!1486 = !DILocation(line: 607, column: 18, scope: !1478)
!1487 = !DILocation(line: 607, column: 25, scope: !1478)
!1488 = !DILocation(line: 608, column: 18, scope: !1478)
!1489 = !DILocation(line: 610, column: 7, scope: !1478)
!1490 = distinct !{!1490, !1475, !1491}
!1491 = !DILocation(line: 611, column: 5, scope: !1300)
!1492 = !DILocation(line: 630, column: 7, scope: !1300)
!1493 = !DILocation(line: 629, column: 12, scope: !1300)
!1494 = distinct !{!1494, !1480, !1492}
!1495 = !DILocation(line: 631, column: 6, scope: !1300)
!1496 = !DILocation(line: 631, column: 11, scope: !1300)
!1497 = !DILocation(line: 632, column: 3, scope: !1300)
!1498 = !DILocation(line: 633, column: 1, scope: !1300)
!1499 = distinct !DISubprogram(name: "__ulp", scope: !3, file: !3, line: 636, type: !1500, isLocal: false, isDefinition: true, scopeLine: 637, flags: DIFlagPrototyped, isOptimized: true, unit: !289, retainedNodes: !1502)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{!299, !299}
!1502 = !{!1503, !1504, !1510, !1511}
!1503 = !DILocalVariable(name: "_x", arg: 1, scope: !1499, file: !3, line: 636, type: !299)
!1504 = !DILocalVariable(name: "x", scope: !1499, file: !3, line: 638, type: !1505)
!1505 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "double_union", file: !8, line: 68, size: 64, elements: !1506)
!1506 = !{!1507, !1508}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1505, file: !8, line: 70, baseType: !299, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !1505, file: !8, line: 71, baseType: !1509, size: 64)
!1509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 64, elements: !175)
!1510 = !DILocalVariable(name: "a", scope: !1499, file: !3, line: 638, type: !1505)
!1511 = !DILocalVariable(name: "L", scope: !1499, file: !3, line: 639, type: !15)
!1512 = !DILocation(line: 636, column: 1, scope: !1499)
!1513 = !DILocation(line: 638, column: 22, scope: !1499)
!1514 = !DILocation(line: 643, column: 8, scope: !1499)
!1515 = !DILocation(line: 643, column: 18, scope: !1499)
!1516 = !DILocation(line: 645, column: 9, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1499, file: !3, line: 645, column: 7)
!1518 = !DILocation(line: 645, column: 7, scope: !1499)
!1519 = !DILocation(line: 643, column: 30, scope: !1499)
!1520 = !DILocation(line: 639, column: 19, scope: !1499)
!1521 = !DILocation(line: 651, column: 17, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1517, file: !3, line: 646, column: 5)
!1523 = !DILocation(line: 638, column: 25, scope: !1499)
!1524 = !DILocation(line: 657, column: 5, scope: !1522)
!1525 = !DILocation(line: 660, column: 11, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1517, file: !3, line: 659, column: 5)
!1527 = !DILocation(line: 660, column: 14, scope: !1526)
!1528 = !DILocation(line: 661, column: 13, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1526, file: !3, line: 661, column: 11)
!1530 = !DILocation(line: 661, column: 11, scope: !1526)
!1531 = !DILocation(line: 663, column: 24, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1529, file: !3, line: 662, column: 2)
!1533 = !DILocation(line: 663, column: 14, scope: !1532)
!1534 = !DILocation(line: 667, column: 2, scope: !1532)
!1535 = !DILocation(line: 673, column: 24, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1529, file: !3, line: 669, column: 2)
!1537 = !DILocation(line: 673, column: 22, scope: !1536)
!1538 = !DILocation(line: 673, column: 45, scope: !1536)
!1539 = !DILocation(line: 673, column: 38, scope: !1536)
!1540 = !DILocation(line: 0, scope: !1536)
!1541 = !DILocation(line: 678, column: 3, scope: !1499)
!1542 = distinct !DISubprogram(name: "__b2d", scope: !3, file: !3, line: 682, type: !1543, isLocal: false, isDefinition: true, scopeLine: 684, flags: DIFlagPrototyped, isOptimized: true, unit: !289, retainedNodes: !1546)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{!299, !6, !1545}
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!1546 = !{!1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555}
!1547 = !DILocalVariable(name: "a", arg: 1, scope: !1542, file: !3, line: 682, type: !6)
!1548 = !DILocalVariable(name: "e", arg: 2, scope: !1542, file: !3, line: 682, type: !1545)
!1549 = !DILocalVariable(name: "xa", scope: !1542, file: !3, line: 685, type: !415)
!1550 = !DILocalVariable(name: "xa0", scope: !1542, file: !3, line: 685, type: !415)
!1551 = !DILocalVariable(name: "w", scope: !1542, file: !3, line: 685, type: !21)
!1552 = !DILocalVariable(name: "y", scope: !1542, file: !3, line: 685, type: !21)
!1553 = !DILocalVariable(name: "z", scope: !1542, file: !3, line: 685, type: !21)
!1554 = !DILocalVariable(name: "k", scope: !1542, file: !3, line: 686, type: !15)
!1555 = !DILocalVariable(name: "d", scope: !1542, file: !3, line: 687, type: !1505)
!1556 = !DILocation(line: 682, column: 1, scope: !1542)
!1557 = !DILocation(line: 695, column: 9, scope: !1542)
!1558 = !DILocation(line: 685, column: 17, scope: !1542)
!1559 = !DILocation(line: 696, column: 17, scope: !1542)
!1560 = !DILocation(line: 696, column: 12, scope: !1542)
!1561 = !DILocation(line: 685, column: 12, scope: !1542)
!1562 = !DILocation(line: 697, column: 8, scope: !1542)
!1563 = !DILocation(line: 697, column: 7, scope: !1542)
!1564 = !DILocation(line: 685, column: 25, scope: !1542)
!1565 = !DILocation(line: 234, column: 1, scope: !626, inlinedAt: !1566)
!1566 = distinct !DILocation(line: 702, column: 7, scope: !1542)
!1567 = !DILocation(line: 237, column: 16, scope: !626, inlinedAt: !1566)
!1568 = !DILocation(line: 239, column: 11, scope: !635, inlinedAt: !1566)
!1569 = !DILocation(line: 239, column: 7, scope: !626, inlinedAt: !1566)
!1570 = !DILocation(line: 242, column: 9, scope: !638, inlinedAt: !1566)
!1571 = !DILocation(line: 243, column: 5, scope: !638, inlinedAt: !1566)
!1572 = !DILocation(line: 0, scope: !638, inlinedAt: !1566)
!1573 = !DILocation(line: 244, column: 11, scope: !642, inlinedAt: !1566)
!1574 = !DILocation(line: 244, column: 7, scope: !626, inlinedAt: !1566)
!1575 = !DILocation(line: 246, column: 9, scope: !645, inlinedAt: !1566)
!1576 = !DILocation(line: 247, column: 9, scope: !645, inlinedAt: !1566)
!1577 = !DILocation(line: 248, column: 5, scope: !645, inlinedAt: !1566)
!1578 = !DILocation(line: 0, scope: !645, inlinedAt: !1566)
!1579 = !DILocation(line: 249, column: 11, scope: !650, inlinedAt: !1566)
!1580 = !DILocation(line: 249, column: 7, scope: !626, inlinedAt: !1566)
!1581 = !DILocation(line: 251, column: 9, scope: !653, inlinedAt: !1566)
!1582 = !DILocation(line: 252, column: 9, scope: !653, inlinedAt: !1566)
!1583 = !DILocation(line: 253, column: 5, scope: !653, inlinedAt: !1566)
!1584 = !DILocation(line: 0, scope: !653, inlinedAt: !1566)
!1585 = !DILocation(line: 254, column: 11, scope: !658, inlinedAt: !1566)
!1586 = !DILocation(line: 254, column: 7, scope: !626, inlinedAt: !1566)
!1587 = !DILocation(line: 256, column: 9, scope: !661, inlinedAt: !1566)
!1588 = !DILocation(line: 257, column: 9, scope: !661, inlinedAt: !1566)
!1589 = !DILocation(line: 258, column: 5, scope: !661, inlinedAt: !1566)
!1590 = !DILocation(line: 0, scope: !661, inlinedAt: !1566)
!1591 = !DILocation(line: 259, column: 11, scope: !666, inlinedAt: !1566)
!1592 = !DILocation(line: 259, column: 7, scope: !626, inlinedAt: !1566)
!1593 = !DILocation(line: 261, column: 8, scope: !669, inlinedAt: !1566)
!1594 = !DILocation(line: 262, column: 15, scope: !671, inlinedAt: !1566)
!1595 = !DILocation(line: 262, column: 11, scope: !669, inlinedAt: !1566)
!1596 = !DILocation(line: 263, column: 2, scope: !671, inlinedAt: !1566)
!1597 = !DILocation(line: 266, column: 1, scope: !626, inlinedAt: !1566)
!1598 = !DILocation(line: 686, column: 7, scope: !1542)
!1599 = !DILocation(line: 703, column: 6, scope: !1542)
!1600 = !DILocation(line: 705, column: 7, scope: !1542)
!1601 = !DILocation(line: 0, scope: !669, inlinedAt: !1566)
!1602 = !DILocation(line: 265, column: 3, scope: !626, inlinedAt: !1566)
!1603 = !DILocation(line: 703, column: 11, scope: !1542)
!1604 = !DILocation(line: 705, column: 9, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 705, column: 7)
!1606 = !DILocation(line: 707, column: 32, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1605, file: !3, line: 706, column: 5)
!1608 = !DILocation(line: 707, column: 22, scope: !1607)
!1609 = !DILocation(line: 708, column: 14, scope: !1607)
!1610 = !DILocation(line: 708, column: 11, scope: !1607)
!1611 = !DILocation(line: 708, column: 23, scope: !1607)
!1612 = !DILocation(line: 708, column: 22, scope: !1607)
!1613 = !DILocation(line: 685, column: 22, scope: !1542)
!1614 = !DILocation(line: 710, column: 31, scope: !1607)
!1615 = !DILocation(line: 710, column: 14, scope: !1607)
!1616 = !DILocation(line: 710, column: 40, scope: !1607)
!1617 = !DILocation(line: 710, column: 36, scope: !1607)
!1618 = !DILocation(line: 712, column: 7, scope: !1607)
!1619 = !DILocation(line: 714, column: 10, scope: !1542)
!1620 = !DILocation(line: 714, column: 7, scope: !1542)
!1621 = !DILocation(line: 714, column: 19, scope: !1542)
!1622 = !DILocation(line: 714, column: 18, scope: !1542)
!1623 = !DILocation(line: 0, scope: !1542)
!1624 = !DILocation(line: 685, column: 28, scope: !1542)
!1625 = !DILocation(line: 715, column: 9, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 715, column: 7)
!1627 = !DILocation(line: 715, column: 7, scope: !1542)
!1628 = !DILocation(line: 717, column: 22, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1626, file: !3, line: 716, column: 5)
!1630 = !DILocation(line: 717, column: 38, scope: !1629)
!1631 = !DILocation(line: 717, column: 31, scope: !1629)
!1632 = !DILocation(line: 717, column: 27, scope: !1629)
!1633 = !DILocation(line: 718, column: 14, scope: !1629)
!1634 = !DILocation(line: 718, column: 11, scope: !1629)
!1635 = !DILocation(line: 718, column: 23, scope: !1629)
!1636 = !DILocation(line: 718, column: 22, scope: !1629)
!1637 = !DILocation(line: 720, column: 14, scope: !1629)
!1638 = !DILocation(line: 720, column: 23, scope: !1629)
!1639 = !DILocation(line: 720, column: 19, scope: !1629)
!1640 = !DILocation(line: 687, column: 22, scope: !1542)
!1641 = !DILocation(line: 722, column: 5, scope: !1629)
!1642 = !DILocation(line: 0, scope: !1607)
!1643 = !DILocation(line: 0, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1626, file: !3, line: 724, column: 5)
!1645 = !DILocation(line: 755, column: 3, scope: !1542)
!1646 = distinct !DISubprogram(name: "__d2b", scope: !3, file: !3, line: 759, type: !1647, isLocal: false, isDefinition: true, scopeLine: 766, flags: DIFlagPrototyped, isOptimized: true, unit: !289, retainedNodes: !1649)
!1647 = !DISubroutineType(types: !1648)
!1648 = !{!6, !25, !299, !1545, !1545}
!1649 = !{!1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661}
!1650 = !DILocalVariable(name: "ptr", arg: 1, scope: !1646, file: !3, line: 759, type: !25)
!1651 = !DILocalVariable(name: "_d", arg: 2, scope: !1646, file: !3, line: 759, type: !299)
!1652 = !DILocalVariable(name: "e", arg: 3, scope: !1646, file: !3, line: 759, type: !1545)
!1653 = !DILocalVariable(name: "bits", arg: 4, scope: !1646, file: !3, line: 759, type: !1545)
!1654 = !DILocalVariable(name: "d", scope: !1646, file: !3, line: 767, type: !1505)
!1655 = !DILocalVariable(name: "b", scope: !1646, file: !3, line: 768, type: !6)
!1656 = !DILocalVariable(name: "de", scope: !1646, file: !3, line: 769, type: !15)
!1657 = !DILocalVariable(name: "i", scope: !1646, file: !3, line: 769, type: !15)
!1658 = !DILocalVariable(name: "k", scope: !1646, file: !3, line: 769, type: !15)
!1659 = !DILocalVariable(name: "x", scope: !1646, file: !3, line: 770, type: !415)
!1660 = !DILocalVariable(name: "y", scope: !1646, file: !3, line: 770, type: !21)
!1661 = !DILocalVariable(name: "z", scope: !1646, file: !3, line: 770, type: !21)
!1662 = !DILocation(line: 759, column: 1, scope: !1646)
!1663 = !DILocation(line: 770, column: 3, scope: !1646)
!1664 = !DILocation(line: 767, column: 22, scope: !1646)
!1665 = !DILocation(line: 97, column: 1, scope: !321, inlinedAt: !1666)
!1666 = distinct !DILocation(line: 785, column: 7, scope: !1646)
!1667 = !DILocation(line: 103, column: 7, scope: !331, inlinedAt: !1666)
!1668 = !DILocation(line: 103, column: 31, scope: !331, inlinedAt: !1666)
!1669 = !DILocation(line: 103, column: 7, scope: !321, inlinedAt: !1666)
!1670 = !DILocation(line: 106, column: 53, scope: !344, inlinedAt: !1666)
!1671 = !DILocation(line: 106, column: 31, scope: !344, inlinedAt: !1666)
!1672 = !DILocation(line: 109, column: 35, scope: !347, inlinedAt: !1666)
!1673 = !DILocation(line: 109, column: 11, scope: !344, inlinedAt: !1666)
!1674 = !DILocation(line: 115, column: 13, scope: !350, inlinedAt: !1666)
!1675 = !DILocation(line: 100, column: 12, scope: !321, inlinedAt: !1666)
!1676 = !DILocation(line: 115, column: 41, scope: !350, inlinedAt: !1666)
!1677 = !DILocation(line: 115, column: 7, scope: !321, inlinedAt: !1666)
!1678 = !DILocation(line: 117, column: 40, scope: !356, inlinedAt: !1666)
!1679 = !DILocation(line: 117, column: 34, scope: !356, inlinedAt: !1666)
!1680 = !DILocation(line: 118, column: 5, scope: !356, inlinedAt: !1666)
!1681 = !DILocation(line: 99, column: 7, scope: !321, inlinedAt: !1666)
!1682 = !DILocation(line: 123, column: 24, scope: !362, inlinedAt: !1666)
!1683 = !DILocation(line: 127, column: 14, scope: !366, inlinedAt: !1666)
!1684 = !DILocation(line: 127, column: 11, scope: !362, inlinedAt: !1666)
!1685 = !DILocation(line: 123, column: 12, scope: !362, inlinedAt: !1666)
!1686 = !DILocation(line: 128, column: 11, scope: !362, inlinedAt: !1666)
!1687 = !DILocation(line: 128, column: 14, scope: !362, inlinedAt: !1666)
!1688 = !DILocation(line: 129, column: 11, scope: !362, inlinedAt: !1666)
!1689 = !DILocation(line: 129, column: 19, scope: !362, inlinedAt: !1666)
!1690 = !DILocation(line: 0, scope: !362, inlinedAt: !1666)
!1691 = !DILocation(line: 131, column: 19, scope: !321, inlinedAt: !1666)
!1692 = !DILocation(line: 131, column: 24, scope: !321, inlinedAt: !1666)
!1693 = !DILocation(line: 131, column: 7, scope: !321, inlinedAt: !1666)
!1694 = !DILocation(line: 131, column: 13, scope: !321, inlinedAt: !1666)
!1695 = !DILocation(line: 132, column: 3, scope: !321, inlinedAt: !1666)
!1696 = !DILocation(line: 0, scope: !366, inlinedAt: !1666)
!1697 = !DILocation(line: 0, scope: !1646)
!1698 = !DILocation(line: 133, column: 1, scope: !321, inlinedAt: !1666)
!1699 = !DILocation(line: 768, column: 12, scope: !1646)
!1700 = !DILocation(line: 789, column: 7, scope: !1646)
!1701 = !DILocation(line: 770, column: 12, scope: !1646)
!1702 = !DILocation(line: 791, column: 7, scope: !1646)
!1703 = !DILocation(line: 791, column: 10, scope: !1646)
!1704 = !DILocation(line: 770, column: 18, scope: !1646)
!1705 = !DILocation(line: 791, column: 5, scope: !1646)
!1706 = !DILocation(line: 799, column: 20, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1646, file: !3, line: 799, column: 7)
!1708 = !DILocation(line: 799, column: 23, scope: !1707)
!1709 = !DILocation(line: 769, column: 7, scope: !1646)
!1710 = !DILocation(line: 799, column: 38, scope: !1707)
!1711 = !DILocation(line: 799, column: 7, scope: !1646)
!1712 = !DILocation(line: 800, column: 7, scope: !1707)
!1713 = !DILocation(line: 800, column: 5, scope: !1707)
!1714 = !DILocation(line: 804, column: 7, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1646, file: !3, line: 804, column: 7)
!1716 = !DILocation(line: 804, column: 7, scope: !1646)
!1717 = !DILocation(line: 770, column: 15, scope: !1646)
!1718 = !DILocation(line: 806, column: 9, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1715, file: !3, line: 805, column: 5)
!1720 = !DILocation(line: 807, column: 11, scope: !1719)
!1721 = !DILocation(line: 769, column: 14, scope: !1646)
!1722 = !DILocation(line: 808, column: 11, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1719, file: !3, line: 808, column: 11)
!1724 = !DILocation(line: 0, scope: !1723)
!1725 = !DILocation(line: 808, column: 11, scope: !1719)
!1726 = !DILocation(line: 810, column: 30, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1723, file: !3, line: 809, column: 2)
!1728 = !DILocation(line: 810, column: 23, scope: !1727)
!1729 = !DILocation(line: 810, column: 19, scope: !1727)
!1730 = !DILocation(line: 810, column: 15, scope: !1727)
!1731 = !DILocation(line: 811, column: 6, scope: !1727)
!1732 = !DILocation(line: 812, column: 2, scope: !1727)
!1733 = !DILocation(line: 814, column: 7, scope: !1723)
!1734 = !DILocation(line: 815, column: 29, scope: !1719)
!1735 = !DILocation(line: 815, column: 22, scope: !1719)
!1736 = !DILocation(line: 815, column: 27, scope: !1719)
!1737 = !DILocation(line: 815, column: 21, scope: !1719)
!1738 = !DILocation(line: 815, column: 14, scope: !1719)
!1739 = !DILocation(line: 815, column: 19, scope: !1719)
!1740 = !DILocation(line: 769, column: 11, scope: !1646)
!1741 = !DILocation(line: 816, column: 5, scope: !1719)
!1742 = !DILocation(line: 824, column: 11, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1715, file: !3, line: 819, column: 5)
!1744 = !DILocation(line: 825, column: 14, scope: !1743)
!1745 = !DILocation(line: 825, column: 12, scope: !1743)
!1746 = !DILocation(line: 826, column: 14, scope: !1743)
!1747 = !DILocation(line: 826, column: 19, scope: !1743)
!1748 = !DILocation(line: 828, column: 9, scope: !1743)
!1749 = !DILocation(line: 0, scope: !1743)
!1750 = !DILocation(line: 886, column: 7, scope: !1646)
!1751 = !DILocation(line: 0, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1753, file: !3, line: 899, column: 5)
!1753 = distinct !DILexicalBlock(scope: !1646, file: !3, line: 886, column: 7)
!1754 = !DILocation(line: 893, column: 32, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1753, file: !3, line: 887, column: 5)
!1756 = !DILocation(line: 893, column: 10, scope: !1755)
!1757 = !DILocation(line: 894, column: 17, scope: !1755)
!1758 = !DILocation(line: 897, column: 5, scope: !1755)
!1759 = !DILocation(line: 900, column: 36, scope: !1752)
!1760 = !DILocation(line: 900, column: 10, scope: !1752)
!1761 = !DILocation(line: 902, column: 18, scope: !1752)
!1762 = !DILocation(line: 902, column: 37, scope: !1752)
!1763 = !DILocation(line: 902, column: 33, scope: !1752)
!1764 = !DILocation(line: 234, column: 1, scope: !626, inlinedAt: !1765)
!1765 = distinct !DILocation(line: 902, column: 24, scope: !1752)
!1766 = !DILocation(line: 237, column: 16, scope: !626, inlinedAt: !1765)
!1767 = !DILocation(line: 239, column: 11, scope: !635, inlinedAt: !1765)
!1768 = !DILocation(line: 239, column: 7, scope: !626, inlinedAt: !1765)
!1769 = !DILocation(line: 242, column: 9, scope: !638, inlinedAt: !1765)
!1770 = !DILocation(line: 243, column: 5, scope: !638, inlinedAt: !1765)
!1771 = !DILocation(line: 0, scope: !638, inlinedAt: !1765)
!1772 = !DILocation(line: 244, column: 11, scope: !642, inlinedAt: !1765)
!1773 = !DILocation(line: 244, column: 7, scope: !626, inlinedAt: !1765)
!1774 = !DILocation(line: 246, column: 9, scope: !645, inlinedAt: !1765)
!1775 = !DILocation(line: 247, column: 9, scope: !645, inlinedAt: !1765)
!1776 = !DILocation(line: 248, column: 5, scope: !645, inlinedAt: !1765)
!1777 = !DILocation(line: 0, scope: !645, inlinedAt: !1765)
!1778 = !DILocation(line: 249, column: 11, scope: !650, inlinedAt: !1765)
!1779 = !DILocation(line: 249, column: 7, scope: !626, inlinedAt: !1765)
!1780 = !DILocation(line: 251, column: 9, scope: !653, inlinedAt: !1765)
!1781 = !DILocation(line: 252, column: 9, scope: !653, inlinedAt: !1765)
!1782 = !DILocation(line: 253, column: 5, scope: !653, inlinedAt: !1765)
!1783 = !DILocation(line: 0, scope: !653, inlinedAt: !1765)
!1784 = !DILocation(line: 254, column: 11, scope: !658, inlinedAt: !1765)
!1785 = !DILocation(line: 254, column: 7, scope: !626, inlinedAt: !1765)
!1786 = !DILocation(line: 256, column: 9, scope: !661, inlinedAt: !1765)
!1787 = !DILocation(line: 257, column: 9, scope: !661, inlinedAt: !1765)
!1788 = !DILocation(line: 258, column: 5, scope: !661, inlinedAt: !1765)
!1789 = !DILocation(line: 0, scope: !661, inlinedAt: !1765)
!1790 = !DILocation(line: 259, column: 11, scope: !666, inlinedAt: !1765)
!1791 = !DILocation(line: 259, column: 7, scope: !626, inlinedAt: !1765)
!1792 = !DILocation(line: 261, column: 8, scope: !669, inlinedAt: !1765)
!1793 = !DILocation(line: 262, column: 15, scope: !671, inlinedAt: !1765)
!1794 = !DILocation(line: 262, column: 11, scope: !669, inlinedAt: !1765)
!1795 = !DILocation(line: 0, scope: !669, inlinedAt: !1765)
!1796 = !DILocation(line: 265, column: 3, scope: !626, inlinedAt: !1765)
!1797 = !DILocation(line: 0, scope: !671, inlinedAt: !1765)
!1798 = !DILocation(line: 266, column: 1, scope: !626, inlinedAt: !1765)
!1799 = !DILocation(line: 902, column: 22, scope: !1752)
!1800 = !DILocation(line: 0, scope: !1755)
!1801 = !DILocation(line: 909, column: 1, scope: !1646)
!1802 = !DILocation(line: 908, column: 3, scope: !1646)
!1803 = distinct !DISubprogram(name: "__ratio", scope: !3, file: !3, line: 914, type: !1804, isLocal: false, isDefinition: true, scopeLine: 916, flags: DIFlagPrototyped, isOptimized: true, unit: !289, retainedNodes: !1806)
!1804 = !DISubroutineType(types: !1805)
!1805 = !{!299, !6, !6}
!1806 = !{!1807, !1808, !1809, !1810, !1811, !1812, !1813}
!1807 = !DILocalVariable(name: "a", arg: 1, scope: !1803, file: !3, line: 914, type: !6)
!1808 = !DILocalVariable(name: "b", arg: 2, scope: !1803, file: !3, line: 914, type: !6)
!1809 = !DILocalVariable(name: "da", scope: !1803, file: !3, line: 917, type: !1505)
!1810 = !DILocalVariable(name: "db", scope: !1803, file: !3, line: 917, type: !1505)
!1811 = !DILocalVariable(name: "k", scope: !1803, file: !3, line: 918, type: !15)
!1812 = !DILocalVariable(name: "ka", scope: !1803, file: !3, line: 918, type: !15)
!1813 = !DILocalVariable(name: "kb", scope: !1803, file: !3, line: 918, type: !15)
!1814 = !DILocation(line: 914, column: 1, scope: !1803)
!1815 = !DILocation(line: 918, column: 3, scope: !1803)
!1816 = !DILocation(line: 918, column: 10, scope: !1803)
!1817 = !DILocation(line: 920, column: 10, scope: !1803)
!1818 = !DILocation(line: 917, column: 22, scope: !1803)
!1819 = !DILocation(line: 918, column: 14, scope: !1803)
!1820 = !DILocation(line: 921, column: 10, scope: !1803)
!1821 = !DILocation(line: 917, column: 26, scope: !1803)
!1822 = !DILocation(line: 923, column: 7, scope: !1803)
!1823 = !DILocation(line: 923, column: 12, scope: !1803)
!1824 = !DILocation(line: 923, column: 10, scope: !1803)
!1825 = !DILocation(line: 923, column: 26, scope: !1803)
!1826 = !DILocation(line: 923, column: 36, scope: !1803)
!1827 = !DILocation(line: 923, column: 31, scope: !1803)
!1828 = !DILocation(line: 923, column: 20, scope: !1803)
!1829 = !DILocation(line: 923, column: 15, scope: !1803)
!1830 = !DILocation(line: 918, column: 7, scope: !1803)
!1831 = !DILocation(line: 942, column: 9, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1803, file: !3, line: 942, column: 7)
!1833 = !DILocation(line: 942, column: 7, scope: !1803)
!1834 = !DILocation(line: 0, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1832, file: !3, line: 945, column: 5)
!1836 = !DILocation(line: 943, column: 16, scope: !1832)
!1837 = !DILocation(line: 943, column: 5, scope: !1832)
!1838 = !DILocation(line: 947, column: 18, scope: !1835)
!1839 = !DILocation(line: 0, scope: !1803)
!1840 = !DILocation(line: 950, column: 15, scope: !1803)
!1841 = !DILocation(line: 951, column: 1, scope: !1803)
!1842 = !DILocation(line: 950, column: 3, scope: !1803)
!1843 = distinct !DISubprogram(name: "_mprec_log10", scope: !3, file: !3, line: 979, type: !1844, isLocal: false, isDefinition: true, scopeLine: 981, flags: DIFlagPrototyped, isOptimized: true, unit: !289, retainedNodes: !1846)
!1844 = !DISubroutineType(types: !1845)
!1845 = !{!299, !15}
!1846 = !{!1847, !1848}
!1847 = !DILocalVariable(name: "dig", arg: 1, scope: !1843, file: !3, line: 979, type: !15)
!1848 = !DILocalVariable(name: "v", scope: !1843, file: !3, line: 982, type: !299)
!1849 = !DILocation(line: 979, column: 1, scope: !1843)
!1850 = !DILocation(line: 982, column: 10, scope: !1843)
!1851 = !DILocation(line: 983, column: 11, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1843, file: !3, line: 983, column: 7)
!1853 = !DILocation(line: 983, column: 7, scope: !1843)
!1854 = !DILocation(line: 985, column: 3, scope: !1843)
!1855 = !DILocation(line: 984, column: 12, scope: !1852)
!1856 = !{!1857, !1857, i64 0}
!1857 = !{!"double", !335, i64 0}
!1858 = !DILocation(line: 984, column: 5, scope: !1852)
!1859 = !DILocation(line: 987, column: 9, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1843, file: !3, line: 986, column: 5)
!1861 = !DILocation(line: 988, column: 10, scope: !1860)
!1862 = !DILocation(line: 985, column: 14, scope: !1843)
!1863 = distinct !{!1863, !1854, !1864}
!1864 = !DILocation(line: 989, column: 5, scope: !1843)
!1865 = !DILocation(line: 0, scope: !1843)
!1866 = !DILocation(line: 0, scope: !1852)
!1867 = !DILocation(line: 991, column: 1, scope: !1843)
!1868 = distinct !DISubprogram(name: "__copybits", scope: !3, file: !3, line: 994, type: !1869, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !289, retainedNodes: !1871)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{null, !415, !15, !6}
!1871 = !{!1872, !1873, !1874, !1875, !1876, !1877}
!1872 = !DILocalVariable(name: "c", arg: 1, scope: !1868, file: !3, line: 994, type: !415)
!1873 = !DILocalVariable(name: "n", arg: 2, scope: !1868, file: !3, line: 994, type: !15)
!1874 = !DILocalVariable(name: "b", arg: 3, scope: !1868, file: !3, line: 994, type: !6)
!1875 = !DILocalVariable(name: "ce", scope: !1868, file: !3, line: 999, type: !415)
!1876 = !DILocalVariable(name: "x", scope: !1868, file: !3, line: 999, type: !415)
!1877 = !DILocalVariable(name: "xe", scope: !1868, file: !3, line: 999, type: !415)
!1878 = !DILocation(line: 994, column: 1, scope: !1868)
!1879 = !DILocation(line: 1004, column: 14, scope: !1868)
!1880 = !DILocation(line: 1004, column: 18, scope: !1868)
!1881 = !DILocation(line: 1004, column: 9, scope: !1868)
!1882 = !DILocation(line: 1004, column: 29, scope: !1868)
!1883 = !DILocation(line: 999, column: 11, scope: !1868)
!1884 = !DILocation(line: 1007, column: 14, scope: !1868)
!1885 = !DILocation(line: 1007, column: 9, scope: !1868)
!1886 = !DILocation(line: 999, column: 20, scope: !1868)
!1887 = !DILocation(line: 1008, column: 2, scope: !1868)
!1888 = !DILocation(line: 1008, column: 10, scope: !1868)
!1889 = !DILocation(line: 1005, column: 6, scope: !1868)
!1890 = !DILocation(line: 999, column: 16, scope: !1868)
!1891 = !DILocation(line: 1009, column: 12, scope: !1868)
!1892 = !DILocation(line: 1018, column: 10, scope: !1868)
!1893 = !DILocation(line: 1018, column: 2, scope: !1868)
!1894 = !DILocation(line: 1019, column: 5, scope: !1868)
!1895 = !DILocation(line: 1019, column: 8, scope: !1868)
!1896 = distinct !{!1896, !1897}
!1897 = !{!"llvm.loop.unroll.disable"}
!1898 = !DILocation(line: 1009, column: 10, scope: !1868)
!1899 = !DILocation(line: 1009, column: 5, scope: !1868)
!1900 = !DILocation(line: 1009, column: 8, scope: !1868)
!1901 = distinct !{!1901, !1887, !1891}
!1902 = distinct !{!1902, !1893, !1903}
!1903 = !DILocation(line: 1019, column: 10, scope: !1868)
!1904 = !DILocation(line: 1020, column: 1, scope: !1868)
!1905 = distinct !DISubprogram(name: "__any_on", scope: !3, file: !3, line: 1023, type: !1906, isLocal: false, isDefinition: true, scopeLine: 1026, flags: DIFlagPrototyped, isOptimized: true, unit: !289, retainedNodes: !1908)
!1906 = !DISubroutineType(types: !1907)
!1907 = !{!21, !6, !15}
!1908 = !{!1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916}
!1909 = !DILocalVariable(name: "b", arg: 1, scope: !1905, file: !3, line: 1023, type: !6)
!1910 = !DILocalVariable(name: "k", arg: 2, scope: !1905, file: !3, line: 1023, type: !15)
!1911 = !DILocalVariable(name: "n", scope: !1905, file: !3, line: 1027, type: !15)
!1912 = !DILocalVariable(name: "nwds", scope: !1905, file: !3, line: 1027, type: !15)
!1913 = !DILocalVariable(name: "x", scope: !1905, file: !3, line: 1028, type: !415)
!1914 = !DILocalVariable(name: "x0", scope: !1905, file: !3, line: 1028, type: !415)
!1915 = !DILocalVariable(name: "x1", scope: !1905, file: !3, line: 1028, type: !21)
!1916 = !DILocalVariable(name: "x2", scope: !1905, file: !3, line: 1028, type: !21)
!1917 = !DILocation(line: 1023, column: 1, scope: !1905)
!1918 = !DILocation(line: 1030, column: 6, scope: !1905)
!1919 = !DILocation(line: 1028, column: 11, scope: !1905)
!1920 = !DILocation(line: 1031, column: 12, scope: !1905)
!1921 = !DILocation(line: 1027, column: 9, scope: !1905)
!1922 = !DILocation(line: 1032, column: 8, scope: !1905)
!1923 = !DILocation(line: 1027, column: 6, scope: !1905)
!1924 = !DILocation(line: 1033, column: 8, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 1033, column: 6)
!1926 = !DILocation(line: 1033, column: 6, scope: !1905)
!1927 = !DILocation(line: 1034, column: 3, scope: !1925)
!1928 = !DILocation(line: 1035, column: 13, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1925, file: !3, line: 1035, column: 11)
!1930 = !DILocation(line: 1035, column: 20, scope: !1929)
!1931 = !DILocation(line: 1035, column: 26, scope: !1929)
!1932 = !DILocation(line: 1035, column: 11, scope: !1925)
!1933 = !DILocation(line: 1036, column: 13, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1929, file: !3, line: 1035, column: 37)
!1935 = !DILocation(line: 1028, column: 23, scope: !1905)
!1936 = !DILocation(line: 1028, column: 19, scope: !1905)
!1937 = !DILocation(line: 1038, column: 6, scope: !1934)
!1938 = !DILocation(line: 1039, column: 10, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1934, file: !3, line: 1039, column: 7)
!1940 = !DILocation(line: 1039, column: 7, scope: !1934)
!1941 = !DILocation(line: 0, scope: !1905)
!1942 = !DILocation(line: 1028, column: 15, scope: !1905)
!1943 = !DILocation(line: 1043, column: 4, scope: !1905)
!1944 = !DILocation(line: 1044, column: 2, scope: !1905)
!1945 = !DILocation(line: 0, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 1045, column: 7)
!1947 = !DILocation(line: 1044, column: 10, scope: !1905)
!1948 = !DILocation(line: 1045, column: 8, scope: !1946)
!1949 = !DILocation(line: 1045, column: 7, scope: !1946)
!1950 = !DILocation(line: 1045, column: 7, scope: !1905)
!1951 = distinct !{!1951, !1944, !1952}
!1952 = !DILocation(line: 1046, column: 11, scope: !1905)
!1953 = !DILocation(line: 0, scope: !1939)
!1954 = !DILocation(line: 1048, column: 1, scope: !1905)
