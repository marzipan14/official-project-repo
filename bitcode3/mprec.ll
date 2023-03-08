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

; Function Attrs: noredzone nounwind
define dso_local %struct._Bigint* @_Balloc(%struct._reent* nocapture, i32) local_unnamed_addr #0 !dbg !321 {
  %3 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 13, !dbg !330
  %4 = load %struct._Bigint**, %struct._Bigint*** %3, align 8, !dbg !330, !tbaa !332
  %5 = icmp eq %struct._Bigint** %4, null, !dbg !341
  br i1 %5, label %6, label %11, !dbg !342

; <label>:6:                                      ; preds = %2
  %7 = tail call i8* @calloc(i64 8, i64 65) #6, !dbg !343
  %8 = bitcast %struct._Bigint*** %3 to i8**, !dbg !345
  store i8* %7, i8** %8, align 8, !dbg !345, !tbaa !332
  %9 = icmp eq i8* %7, null, !dbg !346
  %10 = bitcast i8* %7 to %struct._Bigint**, !dbg !348
  br i1 %9, label %39, label %11, !dbg !348

; <label>:11:                                     ; preds = %6, %2
  %12 = phi %struct._Bigint** [ %10, %6 ], [ %4, %2 ], !dbg !349
  %13 = sext i32 %1 to i64, !dbg !349
  %14 = getelementptr inbounds %struct._Bigint*, %struct._Bigint** %12, i64 %13, !dbg !349
  %15 = load %struct._Bigint*, %struct._Bigint** %14, align 8, !dbg !349, !tbaa !351
  %16 = icmp eq %struct._Bigint* %15, null, !dbg !353
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
  %27 = tail call i8* @calloc(i64 1, i64 %26) #6, !dbg !364
  %28 = icmp eq i8* %27, null, !dbg !365
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
  %37 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %36, i64 0, i32 4, !dbg !376
  store i32 0, i32* %37, align 4, !dbg !377, !tbaa !378
  %38 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %36, i64 0, i32 3, !dbg !379
  store i32 0, i32* %38, align 8, !dbg !380, !tbaa !381
  br label %39, !dbg !382

; <label>:39:                                     ; preds = %21, %6, %35
  %40 = phi %struct._Bigint* [ %36, %35 ], [ null, %6 ], [ null, %21 ], !dbg !383
  ret %struct._Bigint* %40, !dbg !384
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone nounwind
define dso_local void @_Bfree(%struct._reent* nocapture readonly, %struct._Bigint*) local_unnamed_addr #0 !dbg !385 {
  %3 = icmp eq %struct._Bigint* %1, null, !dbg !392
  br i1 %3, label %14, label %4, !dbg !394

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 13, !dbg !395
  %6 = load %struct._Bigint**, %struct._Bigint*** %5, align 8, !dbg !395, !tbaa !332
  %7 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %1, i64 0, i32 1, !dbg !397
  %8 = load i32, i32* %7, align 8, !dbg !397, !tbaa !371
  %9 = sext i32 %8 to i64, !dbg !395
  %10 = getelementptr inbounds %struct._Bigint*, %struct._Bigint** %6, i64 %9, !dbg !395
  %11 = bitcast %struct._Bigint** %10 to i64*, !dbg !395
  %12 = load i64, i64* %11, align 8, !dbg !395, !tbaa !351
  %13 = bitcast %struct._Bigint* %1 to i64*, !dbg !398
  store i64 %12, i64* %13, align 8, !dbg !398, !tbaa !357
  store %struct._Bigint* %1, %struct._Bigint** %10, align 8, !dbg !399, !tbaa !351
  br label %14, !dbg !400

; <label>:14:                                     ; preds = %2, %4
  ret void, !dbg !401
}

; Function Attrs: noredzone nounwind
define dso_local %struct._Bigint* @__multadd(%struct._reent* nocapture, %struct._Bigint*, i32, i32) local_unnamed_addr #0 !dbg !402 {
  %5 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %1, i64 0, i32 4, !dbg !419
  %6 = load i32, i32* %5, align 4, !dbg !419, !tbaa !378
  %7 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %1, i64 0, i32 5, i64 0, !dbg !421
  br label %8, !dbg !424

; <label>:8:                                      ; preds = %8, %4
  %9 = phi i32* [ %7, %4 ], [ %24, %8 ], !dbg !425
  %10 = phi i32 [ 0, %4 ], [ %25, %8 ], !dbg !427
  %11 = phi i32 [ %3, %4 ], [ %20, %8 ]
  %12 = load i32, i32* %9, align 4, !dbg !428, !tbaa !429
  %13 = and i32 %12, 65535, !dbg !431
  %14 = mul i32 %13, %2, !dbg !432
  %15 = add i32 %14, %11, !dbg !433
  %16 = lshr i32 %12, 16, !dbg !435
  %17 = mul i32 %16, %2, !dbg !436
  %18 = lshr i32 %15, 16, !dbg !437
  %19 = add i32 %18, %17, !dbg !438
  %20 = lshr i32 %19, 16, !dbg !440
  %21 = shl i32 %19, 16, !dbg !441
  %22 = and i32 %15, 65535, !dbg !442
  %23 = or i32 %21, %22, !dbg !443
  %24 = getelementptr inbounds i32, i32* %9, i64 1, !dbg !444
  store i32 %23, i32* %9, align 4, !dbg !445, !tbaa !429
  %25 = add nuw nsw i32 %10, 1, !dbg !446
  %26 = icmp slt i32 %25, %6, !dbg !447
  br i1 %26, label %8, label %27, !dbg !448, !llvm.loop !449

; <label>:27:                                     ; preds = %8
  %28 = icmp eq i32 %20, 0, !dbg !451
  br i1 %28, label %98, label %29, !dbg !453

; <label>:29:                                     ; preds = %27
  %30 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %1, i64 0, i32 2, !dbg !454
  %31 = load i32, i32* %30, align 4, !dbg !454, !tbaa !374
  %32 = icmp slt i32 %6, %31, !dbg !457
  br i1 %32, label %92, label %33, !dbg !458

; <label>:33:                                     ; preds = %29
  %34 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %1, i64 0, i32 1, !dbg !459
  %35 = load i32, i32* %34, align 8, !dbg !459, !tbaa !371
  %36 = add nsw i32 %35, 1, !dbg !461
  %37 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 13, !dbg !464
  %38 = load %struct._Bigint**, %struct._Bigint*** %37, align 8, !dbg !464, !tbaa !332
  %39 = icmp eq %struct._Bigint** %38, null, !dbg !465
  br i1 %39, label %40, label %45, !dbg !466

; <label>:40:                                     ; preds = %33
  %41 = tail call i8* @calloc(i64 8, i64 65) #6, !dbg !467
  %42 = bitcast %struct._Bigint*** %37 to i8**, !dbg !468
  store i8* %41, i8** %42, align 8, !dbg !468, !tbaa !332
  %43 = icmp eq i8* %41, null, !dbg !469
  %44 = bitcast i8* %41 to %struct._Bigint**, !dbg !470
  br i1 %43, label %73, label %45, !dbg !470

; <label>:45:                                     ; preds = %40, %33
  %46 = phi %struct._Bigint** [ %44, %40 ], [ %38, %33 ], !dbg !471
  %47 = sext i32 %36 to i64, !dbg !471
  %48 = getelementptr inbounds %struct._Bigint*, %struct._Bigint** %46, i64 %47, !dbg !471
  %49 = load %struct._Bigint*, %struct._Bigint** %48, align 8, !dbg !471, !tbaa !351
  %50 = icmp eq %struct._Bigint* %49, null, !dbg !473
  br i1 %50, label %55, label %51, !dbg !474

; <label>:51:                                     ; preds = %45
  %52 = bitcast %struct._Bigint* %49 to i64*, !dbg !475
  %53 = load i64, i64* %52, align 8, !dbg !475, !tbaa !357
  %54 = bitcast %struct._Bigint** %48 to i64*, !dbg !476
  store i64 %53, i64* %54, align 8, !dbg !476, !tbaa !351
  br label %69, !dbg !477

; <label>:55:                                     ; preds = %45
  %56 = shl i32 1, %36, !dbg !478
  %57 = add nsw i32 %56, -1, !dbg !480
  %58 = sext i32 %57 to i64, !dbg !480
  %59 = shl nsw i64 %58, 2, !dbg !480
  %60 = add nsw i64 %59, 32, !dbg !480
  %61 = tail call i8* @calloc(i64 1, i64 %60) #6, !dbg !480
  %62 = icmp eq i8* %61, null, !dbg !481
  br i1 %62, label %73, label %63, !dbg !482

; <label>:63:                                     ; preds = %55
  %64 = bitcast i8* %61 to %struct._Bigint*, !dbg !483
  %65 = getelementptr inbounds i8, i8* %61, i64 8, !dbg !484
  %66 = bitcast i8* %65 to i32*, !dbg !484
  store i32 %36, i32* %66, align 8, !dbg !485, !tbaa !371
  %67 = getelementptr inbounds i8, i8* %61, i64 12, !dbg !486
  %68 = bitcast i8* %67 to i32*, !dbg !486
  store i32 %56, i32* %68, align 4, !dbg !487, !tbaa !374
  br label %69

; <label>:69:                                     ; preds = %63, %51
  %70 = phi %struct._Bigint* [ %49, %51 ], [ %64, %63 ], !dbg !488
  %71 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %70, i64 0, i32 4, !dbg !489
  store i32 0, i32* %71, align 4, !dbg !490, !tbaa !378
  %72 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %70, i64 0, i32 3, !dbg !491
  store i32 0, i32* %72, align 8, !dbg !492, !tbaa !381
  br label %73, !dbg !493

; <label>:73:                                     ; preds = %40, %55, %69
  %74 = phi %struct._Bigint* [ %70, %69 ], [ null, %40 ], [ null, %55 ], !dbg !494
  %75 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %74, i64 0, i32 3, !dbg !496
  %76 = bitcast i32* %75 to i8*, !dbg !496
  %77 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %1, i64 0, i32 3, !dbg !496
  %78 = bitcast i32* %77 to i8*, !dbg !496
  %79 = load i32, i32* %5, align 4, !dbg !496, !tbaa !378
  %80 = sext i32 %79 to i64, !dbg !496
  %81 = shl nsw i64 %80, 2, !dbg !496
  %82 = add nsw i64 %81, 8, !dbg !496
  %83 = tail call i8* @memcpy(i8* nonnull %76, i8* nonnull %78, i64 %82) #6, !dbg !496
  %84 = load %struct._Bigint**, %struct._Bigint*** %37, align 8, !dbg !499, !tbaa !332
  %85 = load i32, i32* %34, align 8, !dbg !500, !tbaa !371
  %86 = sext i32 %85 to i64, !dbg !499
  %87 = getelementptr inbounds %struct._Bigint*, %struct._Bigint** %84, i64 %86, !dbg !499
  %88 = bitcast %struct._Bigint** %87 to i64*, !dbg !499
  %89 = load i64, i64* %88, align 8, !dbg !499, !tbaa !351
  %90 = bitcast %struct._Bigint* %1 to i64*, !dbg !501
  store i64 %89, i64* %90, align 8, !dbg !501, !tbaa !357
  store %struct._Bigint* %1, %struct._Bigint** %87, align 8, !dbg !502, !tbaa !351
  %91 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %74, i64 0, i32 4, !dbg !503
  br label %92, !dbg !504

; <label>:92:                                     ; preds = %29, %73
  %93 = phi i32* [ %5, %29 ], [ %91, %73 ], !dbg !503
  %94 = phi %struct._Bigint* [ %1, %29 ], [ %74, %73 ]
  %95 = add nsw i32 %6, 1, !dbg !505
  %96 = sext i32 %6 to i64, !dbg !506
  %97 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %94, i64 0, i32 5, i64 %96, !dbg !506
  store i32 %20, i32* %97, align 4, !dbg !507, !tbaa !429
  store i32 %95, i32* %93, align 4, !dbg !508, !tbaa !378
  br label %98, !dbg !509

; <label>:98:                                     ; preds = %27, %92
  %99 = phi %struct._Bigint* [ %94, %92 ], [ %1, %27 ]
  ret %struct._Bigint* %99, !dbg !510
}

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local %struct._Bigint* @__s2b(%struct._reent* nocapture, i8* nocapture readonly, i32, i32, i32) local_unnamed_addr #0 !dbg !511 {
  %6 = add nsw i32 %3, 8, !dbg !526
  %7 = sdiv i32 %6, 9, !dbg !527
  %8 = icmp sgt i32 %3, 9, !dbg !531
  br i1 %8, label %9, label %15, !dbg !534

; <label>:9:                                      ; preds = %5, %9
  %10 = phi i32 [ %12, %9 ], [ 1, %5 ]
  %11 = phi i32 [ %13, %9 ], [ 0, %5 ]
  %12 = shl i32 %10, 1, !dbg !535
  %13 = add nuw nsw i32 %11, 1, !dbg !536
  %14 = icmp sgt i32 %7, %12, !dbg !531
  br i1 %14, label %9, label %15, !dbg !534, !llvm.loop !537

; <label>:15:                                     ; preds = %9, %5
  %16 = phi i32 [ 0, %5 ], [ %13, %9 ], !dbg !539
  %17 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 13, !dbg !542
  %18 = load %struct._Bigint**, %struct._Bigint*** %17, align 8, !dbg !542, !tbaa !332
  %19 = icmp eq %struct._Bigint** %18, null, !dbg !543
  br i1 %19, label %20, label %25, !dbg !544

; <label>:20:                                     ; preds = %15
  %21 = tail call i8* @calloc(i64 8, i64 65) #6, !dbg !545
  %22 = bitcast %struct._Bigint*** %17 to i8**, !dbg !546
  store i8* %21, i8** %22, align 8, !dbg !546, !tbaa !332
  %23 = icmp eq i8* %21, null, !dbg !547
  %24 = bitcast i8* %21 to %struct._Bigint**, !dbg !548
  br i1 %23, label %53, label %25, !dbg !548

; <label>:25:                                     ; preds = %20, %15
  %26 = phi %struct._Bigint** [ %24, %20 ], [ %18, %15 ], !dbg !549
  %27 = zext i32 %16 to i64, !dbg !549
  %28 = getelementptr inbounds %struct._Bigint*, %struct._Bigint** %26, i64 %27, !dbg !549
  %29 = load %struct._Bigint*, %struct._Bigint** %28, align 8, !dbg !549, !tbaa !351
  %30 = icmp eq %struct._Bigint* %29, null, !dbg !551
  br i1 %30, label %35, label %31, !dbg !552

; <label>:31:                                     ; preds = %25
  %32 = bitcast %struct._Bigint* %29 to i64*, !dbg !553
  %33 = load i64, i64* %32, align 8, !dbg !553, !tbaa !357
  %34 = bitcast %struct._Bigint** %28 to i64*, !dbg !554
  store i64 %33, i64* %34, align 8, !dbg !554, !tbaa !351
  br label %49, !dbg !555

; <label>:35:                                     ; preds = %25
  %36 = shl i32 1, %16, !dbg !556
  %37 = add nsw i32 %36, -1, !dbg !558
  %38 = sext i32 %37 to i64, !dbg !558
  %39 = shl nsw i64 %38, 2, !dbg !558
  %40 = add nsw i64 %39, 32, !dbg !558
  %41 = tail call i8* @calloc(i64 1, i64 %40) #6, !dbg !558
  %42 = icmp eq i8* %41, null, !dbg !559
  br i1 %42, label %53, label %43, !dbg !560

; <label>:43:                                     ; preds = %35
  %44 = bitcast i8* %41 to %struct._Bigint*, !dbg !561
  %45 = getelementptr inbounds i8, i8* %41, i64 8, !dbg !562
  %46 = bitcast i8* %45 to i32*, !dbg !562
  store i32 %16, i32* %46, align 8, !dbg !563, !tbaa !371
  %47 = getelementptr inbounds i8, i8* %41, i64 12, !dbg !564
  %48 = bitcast i8* %47 to i32*, !dbg !564
  store i32 %36, i32* %48, align 4, !dbg !565, !tbaa !374
  br label %49

; <label>:49:                                     ; preds = %43, %31
  %50 = phi %struct._Bigint* [ %29, %31 ], [ %44, %43 ], !dbg !566
  %51 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %50, i64 0, i32 4, !dbg !567
  store i32 0, i32* %51, align 4, !dbg !568, !tbaa !378
  %52 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %50, i64 0, i32 3, !dbg !569
  store i32 0, i32* %52, align 8, !dbg !570, !tbaa !381
  br label %53, !dbg !571

; <label>:53:                                     ; preds = %20, %35, %49
  %54 = phi %struct._Bigint* [ %50, %49 ], [ null, %20 ], [ null, %35 ], !dbg !572
  %55 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %54, i64 0, i32 5, i64 0, !dbg !574
  store i32 %4, i32* %55, align 8, !dbg !575, !tbaa !429
  %56 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %54, i64 0, i32 4, !dbg !576
  store i32 1, i32* %56, align 4, !dbg !577, !tbaa !378
  %57 = icmp sgt i32 %2, 9, !dbg !579
  br i1 %57, label %58, label %77, !dbg !581

; <label>:58:                                     ; preds = %53
  %59 = getelementptr inbounds i8, i8* %1, i64 9, !dbg !582
  %60 = add i32 %2, -10, !dbg !584
  %61 = zext i32 %60 to i64, !dbg !584
  %62 = add nuw nsw i64 %61, 9, !dbg !584
  br label %63, !dbg !584

; <label>:63:                                     ; preds = %63, %58
  %64 = phi %struct._Bigint* [ %54, %58 ], [ %71, %63 ], !dbg !585
  %65 = phi i32 [ 9, %58 ], [ %72, %63 ], !dbg !585
  %66 = phi i8* [ %59, %58 ], [ %67, %63 ], !dbg !585
  %67 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !586
  %68 = load i8, i8* %66, align 1, !dbg !587, !tbaa !588
  %69 = sext i8 %68 to i32, !dbg !587
  %70 = add nsw i32 %69, -48, !dbg !589
  %71 = tail call %struct._Bigint* @__multadd(%struct._reent* %0, %struct._Bigint* %64, i32 10, i32 %70) #8, !dbg !590
  %72 = add nuw nsw i32 %65, 1, !dbg !591
  %73 = icmp eq i32 %72, %2, !dbg !592
  br i1 %73, label %74, label %63, !dbg !593, !llvm.loop !594

; <label>:74:                                     ; preds = %63
  %75 = getelementptr i8, i8* %1, i64 %62, !dbg !584
  %76 = getelementptr inbounds i8, i8* %75, i64 2, !dbg !596
  br label %79, !dbg !597

; <label>:77:                                     ; preds = %53
  %78 = getelementptr inbounds i8, i8* %1, i64 10, !dbg !598
  br label %79

; <label>:79:                                     ; preds = %77, %74
  %80 = phi %struct._Bigint* [ %71, %74 ], [ %54, %77 ], !dbg !599
  %81 = phi i32 [ %2, %74 ], [ 9, %77 ], !dbg !599
  %82 = phi i8* [ %76, %74 ], [ %78, %77 ], !dbg !600
  %83 = icmp slt i32 %81, %3, !dbg !601
  br i1 %83, label %84, label %95, !dbg !604

; <label>:84:                                     ; preds = %79, %84
  %85 = phi i8* [ %88, %84 ], [ %82, %79 ]
  %86 = phi i32 [ %93, %84 ], [ %81, %79 ]
  %87 = phi %struct._Bigint* [ %92, %84 ], [ %80, %79 ]
  %88 = getelementptr inbounds i8, i8* %85, i64 1, !dbg !605
  %89 = load i8, i8* %85, align 1, !dbg !606, !tbaa !588
  %90 = sext i8 %89 to i32, !dbg !606
  %91 = add nsw i32 %90, -48, !dbg !607
  %92 = tail call %struct._Bigint* @__multadd(%struct._reent* %0, %struct._Bigint* %87, i32 10, i32 %91) #8, !dbg !608
  %93 = add nuw nsw i32 %86, 1, !dbg !609
  %94 = icmp eq i32 %93, %3, !dbg !601
  br i1 %94, label %95, label %84, !dbg !604, !llvm.loop !610

; <label>:95:                                     ; preds = %84, %79
  %96 = phi %struct._Bigint* [ %80, %79 ], [ %92, %84 ], !dbg !612
  ret %struct._Bigint* %96, !dbg !613
}

; Function Attrs: noredzone nounwind readnone
define dso_local i32 @__hi0bits(i32) local_unnamed_addr #3 !dbg !614 {
  %2 = icmp ugt i32 %0, 65535, !dbg !622
  %3 = shl i32 %0, 16, !dbg !624
  %4 = select i1 %2, i32 %0, i32 %3, !dbg !626
  %5 = select i1 %2, i32 0, i32 16, !dbg !626
  %6 = icmp ugt i32 %4, 16777215, !dbg !627
  %7 = or i32 %5, 8, !dbg !629
  %8 = shl i32 %4, 8, !dbg !631
  %9 = select i1 %6, i32 %4, i32 %8, !dbg !632
  %10 = select i1 %6, i32 %5, i32 %7, !dbg !632
  %11 = icmp ugt i32 %9, 268435455, !dbg !633
  %12 = or i32 %10, 4, !dbg !635
  %13 = shl i32 %9, 4, !dbg !637
  %14 = select i1 %11, i32 %9, i32 %13, !dbg !638
  %15 = select i1 %11, i32 %10, i32 %12, !dbg !638
  %16 = icmp ugt i32 %14, 1073741823, !dbg !639
  %17 = or i32 %15, 2, !dbg !641
  %18 = shl i32 %14, 2, !dbg !643
  %19 = select i1 %16, i32 %14, i32 %18, !dbg !644
  %20 = select i1 %16, i32 %15, i32 %17, !dbg !644
  %21 = icmp slt i32 %19, 0, !dbg !645
  br i1 %21, label %26, label %22, !dbg !647

; <label>:22:                                     ; preds = %1
  %23 = add nsw i32 %20, 1, !dbg !648
  %24 = and i32 %19, 1073741824, !dbg !650
  %25 = icmp eq i32 %24, 0, !dbg !650
  br i1 %25, label %28, label %26, !dbg !652

; <label>:26:                                     ; preds = %22, %1
  %27 = phi i32 [ %20, %1 ], [ %23, %22 ], !dbg !653
  br label %28, !dbg !654

; <label>:28:                                     ; preds = %22, %26
  %29 = phi i32 [ %27, %26 ], [ 32, %22 ], !dbg !655
  ret i32 %29, !dbg !656
}

; Function Attrs: noredzone nounwind
define dso_local i32 @__lo0bits(i32* nocapture) local_unnamed_addr #0 !dbg !657 {
  %2 = load i32, i32* %0, align 4, !dbg !665, !tbaa !429
  %3 = and i32 %2, 7, !dbg !667
  %4 = icmp eq i32 %3, 0, !dbg !667
  br i1 %4, label %15, label %5, !dbg !669

; <label>:5:                                      ; preds = %1
  %6 = and i32 %2, 1, !dbg !670
  %7 = icmp eq i32 %6, 0, !dbg !670
  br i1 %7, label %8, label %48, !dbg !673

; <label>:8:                                      ; preds = %5
  %9 = and i32 %2, 2, !dbg !674
  %10 = icmp eq i32 %9, 0, !dbg !674
  br i1 %10, label %13, label %11, !dbg !676

; <label>:11:                                     ; preds = %8
  %12 = lshr i32 %2, 1, !dbg !677
  store i32 %12, i32* %0, align 4, !dbg !679, !tbaa !429
  br label %48, !dbg !680

; <label>:13:                                     ; preds = %8
  %14 = lshr i32 %2, 2, !dbg !681
  store i32 %14, i32* %0, align 4, !dbg !682, !tbaa !429
  br label %48, !dbg !683

; <label>:15:                                     ; preds = %1
  %16 = and i32 %2, 65535, !dbg !685
  %17 = icmp eq i32 %16, 0, !dbg !685
  %18 = lshr i32 %2, 16, !dbg !687
  %19 = select i1 %17, i32 16, i32 0, !dbg !689
  %20 = select i1 %17, i32 %18, i32 %2, !dbg !689
  %21 = and i32 %20, 255, !dbg !690
  %22 = icmp eq i32 %21, 0, !dbg !690
  %23 = or i32 %19, 8, !dbg !692
  %24 = lshr i32 %20, 8, !dbg !694
  %25 = select i1 %22, i32 %23, i32 %19, !dbg !695
  %26 = select i1 %22, i32 %24, i32 %20, !dbg !695
  %27 = and i32 %26, 15, !dbg !696
  %28 = icmp eq i32 %27, 0, !dbg !696
  %29 = or i32 %25, 4, !dbg !698
  %30 = lshr i32 %26, 4, !dbg !700
  %31 = select i1 %28, i32 %29, i32 %25, !dbg !701
  %32 = select i1 %28, i32 %30, i32 %26, !dbg !701
  %33 = and i32 %32, 3, !dbg !702
  %34 = icmp eq i32 %33, 0, !dbg !702
  %35 = or i32 %31, 2, !dbg !704
  %36 = lshr i32 %32, 2, !dbg !706
  %37 = select i1 %34, i32 %35, i32 %31, !dbg !707
  %38 = select i1 %34, i32 %36, i32 %32, !dbg !707
  %39 = and i32 %38, 1, !dbg !708
  %40 = icmp eq i32 %39, 0, !dbg !708
  br i1 %40, label %41, label %45, !dbg !710

; <label>:41:                                     ; preds = %15
  %42 = add nsw i32 %37, 1, !dbg !711
  %43 = lshr i32 %38, 1, !dbg !713
  %44 = icmp eq i32 %43, 0, !dbg !714
  br i1 %44, label %48, label %45, !dbg !716

; <label>:45:                                     ; preds = %15, %41
  %46 = phi i32 [ %37, %15 ], [ %42, %41 ], !dbg !717
  %47 = phi i32 [ %38, %15 ], [ %43, %41 ], !dbg !717
  store i32 %47, i32* %0, align 4, !dbg !718, !tbaa !429
  br label %48, !dbg !719

; <label>:48:                                     ; preds = %41, %5, %45, %13, %11
  %49 = phi i32 [ 1, %11 ], [ 2, %13 ], [ %46, %45 ], [ 0, %5 ], [ 32, %41 ], !dbg !720
  ret i32 %49, !dbg !721
}

; Function Attrs: noredzone nounwind
define dso_local %struct._Bigint* @__i2b(%struct._reent* nocapture, i32) local_unnamed_addr #0 !dbg !722 {
  %3 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 13, !dbg !730
  %4 = load %struct._Bigint**, %struct._Bigint*** %3, align 8, !dbg !730, !tbaa !332
  %5 = icmp eq %struct._Bigint** %4, null, !dbg !731
  br i1 %5, label %6, label %11, !dbg !732

; <label>:6:                                      ; preds = %2
  %7 = tail call i8* @calloc(i64 8, i64 65) #6, !dbg !733
  %8 = bitcast %struct._Bigint*** %3 to i8**, !dbg !734
  store i8* %7, i8** %8, align 8, !dbg !734, !tbaa !332
  %9 = icmp eq i8* %7, null, !dbg !735
  %10 = bitcast i8* %7 to %struct._Bigint**, !dbg !736
  br i1 %9, label %33, label %11, !dbg !736

; <label>:11:                                     ; preds = %6, %2
  %12 = phi %struct._Bigint** [ %10, %6 ], [ %4, %2 ], !dbg !737
  %13 = getelementptr inbounds %struct._Bigint*, %struct._Bigint** %12, i64 1, !dbg !737
  %14 = load %struct._Bigint*, %struct._Bigint** %13, align 8, !dbg !737, !tbaa !351
  %15 = icmp eq %struct._Bigint* %14, null, !dbg !739
  br i1 %15, label %20, label %16, !dbg !740

; <label>:16:                                     ; preds = %11
  %17 = bitcast %struct._Bigint* %14 to i64*, !dbg !741
  %18 = load i64, i64* %17, align 8, !dbg !741, !tbaa !357
  %19 = bitcast %struct._Bigint** %13 to i64*, !dbg !742
  store i64 %18, i64* %19, align 8, !dbg !742, !tbaa !351
  br label %29, !dbg !743

; <label>:20:                                     ; preds = %11
  %21 = tail call i8* @calloc(i64 1, i64 36) #6, !dbg !745
  %22 = icmp eq i8* %21, null, !dbg !746
  br i1 %22, label %33, label %23, !dbg !747

; <label>:23:                                     ; preds = %20
  %24 = bitcast i8* %21 to %struct._Bigint*, !dbg !748
  %25 = getelementptr inbounds i8, i8* %21, i64 8, !dbg !749
  %26 = bitcast i8* %25 to i32*, !dbg !749
  store i32 1, i32* %26, align 8, !dbg !750, !tbaa !371
  %27 = getelementptr inbounds i8, i8* %21, i64 12, !dbg !751
  %28 = bitcast i8* %27 to i32*, !dbg !751
  store i32 2, i32* %28, align 4, !dbg !752, !tbaa !374
  br label %29

; <label>:29:                                     ; preds = %23, %16
  %30 = phi %struct._Bigint* [ %14, %16 ], [ %24, %23 ], !dbg !753
  %31 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %30, i64 0, i32 4, !dbg !754
  store i32 0, i32* %31, align 4, !dbg !755, !tbaa !378
  %32 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %30, i64 0, i32 3, !dbg !756
  store i32 0, i32* %32, align 8, !dbg !757, !tbaa !381
  br label %33, !dbg !758

; <label>:33:                                     ; preds = %6, %20, %29
  %34 = phi %struct._Bigint* [ %30, %29 ], [ null, %6 ], [ null, %20 ], !dbg !759
  %35 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %34, i64 0, i32 5, i64 0, !dbg !761
  store i32 %1, i32* %35, align 8, !dbg !762, !tbaa !429
  %36 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %34, i64 0, i32 4, !dbg !763
  store i32 1, i32* %36, align 4, !dbg !764, !tbaa !378
  ret %struct._Bigint* %34, !dbg !765
}

; Function Attrs: noredzone nounwind
define dso_local %struct._Bigint* @__multiply(%struct._reent* nocapture, %struct._Bigint* readonly, %struct._Bigint* readonly) local_unnamed_addr #0 !dbg !766 {
  %4 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %1, i64 0, i32 4, !dbg !790
  %5 = load i32, i32* %4, align 4, !dbg !790, !tbaa !378
  %6 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %2, i64 0, i32 4, !dbg !792
  %7 = load i32, i32* %6, align 4, !dbg !792, !tbaa !378
  %8 = icmp slt i32 %5, %7, !dbg !793
  %9 = select i1 %8, %struct._Bigint* %1, %struct._Bigint* %2, !dbg !794
  %10 = select i1 %8, %struct._Bigint* %2, %struct._Bigint* %1, !dbg !794
  %11 = ptrtoint %struct._Bigint* %10 to i64
  %12 = bitcast %struct._Bigint* %10 to i8*
  %13 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %10, i64 0, i32 1, !dbg !795
  %14 = load i32, i32* %13, align 8, !dbg !795, !tbaa !371
  %15 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %10, i64 0, i32 4, !dbg !797
  %16 = load i32, i32* %15, align 4, !dbg !797, !tbaa !378
  %17 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %9, i64 0, i32 4, !dbg !799
  %18 = load i32, i32* %17, align 4, !dbg !799, !tbaa !378
  %19 = add nsw i32 %18, %16, !dbg !801
  %20 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %10, i64 0, i32 2, !dbg !803
  %21 = load i32, i32* %20, align 4, !dbg !803, !tbaa !374
  %22 = icmp sgt i32 %19, %21, !dbg !805
  %23 = zext i1 %22 to i32, !dbg !806
  %24 = add nsw i32 %14, %23, !dbg !806
  %25 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 13, !dbg !809
  %26 = load %struct._Bigint**, %struct._Bigint*** %25, align 8, !dbg !809, !tbaa !332
  %27 = icmp eq %struct._Bigint** %26, null, !dbg !810
  br i1 %27, label %28, label %33, !dbg !811

; <label>:28:                                     ; preds = %3
  %29 = tail call i8* @calloc(i64 8, i64 65) #6, !dbg !812
  %30 = bitcast %struct._Bigint*** %25 to i8**, !dbg !813
  store i8* %29, i8** %30, align 8, !dbg !813, !tbaa !332
  %31 = icmp eq i8* %29, null, !dbg !814
  %32 = bitcast i8* %29 to %struct._Bigint**, !dbg !815
  br i1 %31, label %61, label %33, !dbg !815

; <label>:33:                                     ; preds = %28, %3
  %34 = phi %struct._Bigint** [ %32, %28 ], [ %26, %3 ], !dbg !816
  %35 = sext i32 %24 to i64, !dbg !816
  %36 = getelementptr inbounds %struct._Bigint*, %struct._Bigint** %34, i64 %35, !dbg !816
  %37 = load %struct._Bigint*, %struct._Bigint** %36, align 8, !dbg !816, !tbaa !351
  %38 = icmp eq %struct._Bigint* %37, null, !dbg !818
  br i1 %38, label %43, label %39, !dbg !819

; <label>:39:                                     ; preds = %33
  %40 = bitcast %struct._Bigint* %37 to i64*, !dbg !820
  %41 = load i64, i64* %40, align 8, !dbg !820, !tbaa !357
  %42 = bitcast %struct._Bigint** %36 to i64*, !dbg !821
  store i64 %41, i64* %42, align 8, !dbg !821, !tbaa !351
  br label %57, !dbg !822

; <label>:43:                                     ; preds = %33
  %44 = shl i32 1, %24, !dbg !823
  %45 = add nsw i32 %44, -1, !dbg !825
  %46 = sext i32 %45 to i64, !dbg !825
  %47 = shl nsw i64 %46, 2, !dbg !825
  %48 = add nsw i64 %47, 32, !dbg !825
  %49 = tail call i8* @calloc(i64 1, i64 %48) #6, !dbg !825
  %50 = icmp eq i8* %49, null, !dbg !826
  br i1 %50, label %61, label %51, !dbg !827

; <label>:51:                                     ; preds = %43
  %52 = bitcast i8* %49 to %struct._Bigint*, !dbg !828
  %53 = getelementptr inbounds i8, i8* %49, i64 8, !dbg !829
  %54 = bitcast i8* %53 to i32*, !dbg !829
  store i32 %24, i32* %54, align 8, !dbg !830, !tbaa !371
  %55 = getelementptr inbounds i8, i8* %49, i64 12, !dbg !831
  %56 = bitcast i8* %55 to i32*, !dbg !831
  store i32 %44, i32* %56, align 4, !dbg !832, !tbaa !374
  br label %57

; <label>:57:                                     ; preds = %51, %39
  %58 = phi %struct._Bigint* [ %37, %39 ], [ %52, %51 ], !dbg !833
  %59 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %58, i64 0, i32 4, !dbg !834
  store i32 0, i32* %59, align 4, !dbg !835, !tbaa !378
  %60 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %58, i64 0, i32 3, !dbg !836
  store i32 0, i32* %60, align 8, !dbg !837, !tbaa !381
  br label %61, !dbg !838

; <label>:61:                                     ; preds = %28, %43, %57
  %62 = phi %struct._Bigint* [ %58, %57 ], [ null, %28 ], [ null, %43 ], !dbg !839
  %63 = bitcast %struct._Bigint* %62 to i8*
  %64 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %62, i64 0, i32 5, i64 0, !dbg !841
  %65 = sext i32 %19 to i64, !dbg !844
  %66 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %62, i64 0, i32 5, i64 %65, !dbg !844
  %67 = icmp sgt i32 %19, 0, !dbg !846
  br i1 %67, label %68, label %161, !dbg !848

; <label>:68:                                     ; preds = %61
  %69 = ptrtoint %struct._Bigint* %62 to i64
  %70 = shl nsw i64 %65, 2, !dbg !849
  %71 = add nsw i64 %70, 24, !dbg !849
  %72 = getelementptr i8, i8* %63, i64 %71, !dbg !849
  %73 = ptrtoint i8* %72 to i64
  %74 = getelementptr %struct._Bigint, %struct._Bigint* %62, i64 0, i32 5, i64 1, !dbg !849
  %75 = ptrtoint i32* %74 to i64
  %76 = icmp ugt i64 %73, %75, !dbg !849
  %77 = select i1 %76, i64 %73, i64 %75, !dbg !849
  %78 = inttoptr i64 %77 to i8*
  %79 = sub i64 -25, %69, !dbg !849
  %80 = getelementptr i8, i8* %78, i64 %79, !dbg !849
  %81 = ptrtoint i8* %80 to i64
  %82 = lshr i64 %81, 2, !dbg !849
  %83 = add nuw nsw i64 %82, 1, !dbg !849
  %84 = icmp ult i64 %83, 8, !dbg !849
  br i1 %84, label %155, label %85, !dbg !849

; <label>:85:                                     ; preds = %68
  %86 = and i64 %83, 9223372036854775800, !dbg !849
  %87 = getelementptr %struct._Bigint, %struct._Bigint* %62, i64 0, i32 5, i64 %86, !dbg !849
  %88 = add nsw i64 %86, -8, !dbg !849
  %89 = lshr exact i64 %88, 3, !dbg !849
  %90 = add nuw nsw i64 %89, 1, !dbg !849
  %91 = and i64 %90, 7, !dbg !849
  %92 = icmp ult i64 %88, 56, !dbg !849
  br i1 %92, label %140, label %93, !dbg !849

; <label>:93:                                     ; preds = %85
  %94 = sub nsw i64 %90, %91, !dbg !849
  br label %95, !dbg !849

; <label>:95:                                     ; preds = %95, %93
  %96 = phi i64 [ 0, %93 ], [ %137, %95 ]
  %97 = phi i64 [ %94, %93 ], [ %138, %95 ]
  %98 = getelementptr %struct._Bigint, %struct._Bigint* %62, i64 0, i32 5, i64 %96
  %99 = bitcast i32* %98 to <4 x i32>*, !dbg !849
  store <4 x i32> zeroinitializer, <4 x i32>* %99, align 4, !dbg !849, !tbaa !429
  %100 = getelementptr i32, i32* %98, i64 4, !dbg !849
  %101 = bitcast i32* %100 to <4 x i32>*, !dbg !849
  store <4 x i32> zeroinitializer, <4 x i32>* %101, align 4, !dbg !849, !tbaa !429
  %102 = or i64 %96, 8
  %103 = getelementptr %struct._Bigint, %struct._Bigint* %62, i64 0, i32 5, i64 %102
  %104 = bitcast i32* %103 to <4 x i32>*, !dbg !849
  store <4 x i32> zeroinitializer, <4 x i32>* %104, align 4, !dbg !849, !tbaa !429
  %105 = getelementptr i32, i32* %103, i64 4, !dbg !849
  %106 = bitcast i32* %105 to <4 x i32>*, !dbg !849
  store <4 x i32> zeroinitializer, <4 x i32>* %106, align 4, !dbg !849, !tbaa !429
  %107 = or i64 %96, 16
  %108 = getelementptr %struct._Bigint, %struct._Bigint* %62, i64 0, i32 5, i64 %107
  %109 = bitcast i32* %108 to <4 x i32>*, !dbg !849
  store <4 x i32> zeroinitializer, <4 x i32>* %109, align 4, !dbg !849, !tbaa !429
  %110 = getelementptr i32, i32* %108, i64 4, !dbg !849
  %111 = bitcast i32* %110 to <4 x i32>*, !dbg !849
  store <4 x i32> zeroinitializer, <4 x i32>* %111, align 4, !dbg !849, !tbaa !429
  %112 = or i64 %96, 24
  %113 = getelementptr %struct._Bigint, %struct._Bigint* %62, i64 0, i32 5, i64 %112
  %114 = bitcast i32* %113 to <4 x i32>*, !dbg !849
  store <4 x i32> zeroinitializer, <4 x i32>* %114, align 4, !dbg !849, !tbaa !429
  %115 = getelementptr i32, i32* %113, i64 4, !dbg !849
  %116 = bitcast i32* %115 to <4 x i32>*, !dbg !849
  store <4 x i32> zeroinitializer, <4 x i32>* %116, align 4, !dbg !849, !tbaa !429
  %117 = or i64 %96, 32
  %118 = getelementptr %struct._Bigint, %struct._Bigint* %62, i64 0, i32 5, i64 %117
  %119 = bitcast i32* %118 to <4 x i32>*, !dbg !849
  store <4 x i32> zeroinitializer, <4 x i32>* %119, align 4, !dbg !849, !tbaa !429
  %120 = getelementptr i32, i32* %118, i64 4, !dbg !849
  %121 = bitcast i32* %120 to <4 x i32>*, !dbg !849
  store <4 x i32> zeroinitializer, <4 x i32>* %121, align 4, !dbg !849, !tbaa !429
  %122 = or i64 %96, 40
  %123 = getelementptr %struct._Bigint, %struct._Bigint* %62, i64 0, i32 5, i64 %122
  %124 = bitcast i32* %123 to <4 x i32>*, !dbg !849
  store <4 x i32> zeroinitializer, <4 x i32>* %124, align 4, !dbg !849, !tbaa !429
  %125 = getelementptr i32, i32* %123, i64 4, !dbg !849
  %126 = bitcast i32* %125 to <4 x i32>*, !dbg !849
  store <4 x i32> zeroinitializer, <4 x i32>* %126, align 4, !dbg !849, !tbaa !429
  %127 = or i64 %96, 48
  %128 = getelementptr %struct._Bigint, %struct._Bigint* %62, i64 0, i32 5, i64 %127
  %129 = bitcast i32* %128 to <4 x i32>*, !dbg !849
  store <4 x i32> zeroinitializer, <4 x i32>* %129, align 4, !dbg !849, !tbaa !429
  %130 = getelementptr i32, i32* %128, i64 4, !dbg !849
  %131 = bitcast i32* %130 to <4 x i32>*, !dbg !849
  store <4 x i32> zeroinitializer, <4 x i32>* %131, align 4, !dbg !849, !tbaa !429
  %132 = or i64 %96, 56
  %133 = getelementptr %struct._Bigint, %struct._Bigint* %62, i64 0, i32 5, i64 %132
  %134 = bitcast i32* %133 to <4 x i32>*, !dbg !849
  store <4 x i32> zeroinitializer, <4 x i32>* %134, align 4, !dbg !849, !tbaa !429
  %135 = getelementptr i32, i32* %133, i64 4, !dbg !849
  %136 = bitcast i32* %135 to <4 x i32>*, !dbg !849
  store <4 x i32> zeroinitializer, <4 x i32>* %136, align 4, !dbg !849, !tbaa !429
  %137 = add i64 %96, 64
  %138 = add i64 %97, -8
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %95, !llvm.loop !850

; <label>:140:                                    ; preds = %95, %85
  %141 = phi i64 [ 0, %85 ], [ %137, %95 ]
  %142 = icmp eq i64 %91, 0
  br i1 %142, label %153, label %143

; <label>:143:                                    ; preds = %140, %143
  %144 = phi i64 [ %150, %143 ], [ %141, %140 ]
  %145 = phi i64 [ %151, %143 ], [ %91, %140 ]
  %146 = getelementptr %struct._Bigint, %struct._Bigint* %62, i64 0, i32 5, i64 %144
  %147 = bitcast i32* %146 to <4 x i32>*, !dbg !849
  store <4 x i32> zeroinitializer, <4 x i32>* %147, align 4, !dbg !849, !tbaa !429
  %148 = getelementptr i32, i32* %146, i64 4, !dbg !849
  %149 = bitcast i32* %148 to <4 x i32>*, !dbg !849
  store <4 x i32> zeroinitializer, <4 x i32>* %149, align 4, !dbg !849, !tbaa !429
  %150 = add i64 %144, 8
  %151 = add i64 %145, -1
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %143, !llvm.loop !853

; <label>:153:                                    ; preds = %143, %140
  %154 = icmp eq i64 %83, %86
  br i1 %154, label %161, label %155, !dbg !849

; <label>:155:                                    ; preds = %153, %68
  %156 = phi i32* [ %64, %68 ], [ %87, %153 ]
  br label %157, !dbg !849

; <label>:157:                                    ; preds = %155, %157
  %158 = phi i32* [ %159, %157 ], [ %156, %155 ]
  store i32 0, i32* %158, align 4, !dbg !849, !tbaa !429
  %159 = getelementptr inbounds i32, i32* %158, i64 1, !dbg !855
  %160 = icmp ult i32* %159, %66, !dbg !846
  br i1 %160, label %157, label %161, !dbg !848, !llvm.loop !856

; <label>:161:                                    ; preds = %157, %153, %61
  %162 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %10, i64 0, i32 5, i64 0, !dbg !858
  %163 = sext i32 %16 to i64, !dbg !859
  %164 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %10, i64 0, i32 5, i64 %163, !dbg !859
  %165 = sext i32 %18 to i64, !dbg !861
  %166 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %9, i64 0, i32 5, i64 %165, !dbg !861
  %167 = icmp sgt i32 %18, 0, !dbg !864
  br i1 %167, label %168, label %186, !dbg !867

; <label>:168:                                    ; preds = %161
  %169 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %9, i64 0, i32 5, i64 0, !dbg !868
  %170 = shl nsw i64 %163, 2, !dbg !870
  %171 = add nsw i64 %170, 24, !dbg !870
  %172 = getelementptr i8, i8* %12, i64 %171, !dbg !870
  %173 = ptrtoint i8* %172 to i64
  %174 = getelementptr %struct._Bigint, %struct._Bigint* %10, i64 0, i32 5, i64 1, !dbg !870
  %175 = ptrtoint i32* %174 to i64
  %176 = icmp ugt i64 %173, %175, !dbg !870
  %177 = select i1 %176, i64 %173, i64 %175, !dbg !870
  %178 = inttoptr i64 %177 to i8*
  %179 = sub i64 -25, %11, !dbg !870
  %180 = getelementptr i8, i8* %178, i64 %179, !dbg !870
  %181 = ptrtoint i8* %180 to i64
  %182 = add i64 %181, 28, !dbg !870
  %183 = and i64 %182, -4, !dbg !870
  %184 = getelementptr i8, i8* %63, i64 %183, !dbg !870
  %185 = bitcast i8* %184 to %struct._Bigint*
  br label %187, !dbg !870

; <label>:186:                                    ; preds = %259, %161
  br i1 %67, label %267, label %276, !dbg !874

; <label>:187:                                    ; preds = %168, %259
  %188 = phi i8* [ %184, %168 ], [ %265, %259 ]
  %189 = phi %struct._Bigint* [ %185, %168 ], [ %266, %259 ]
  %190 = phi i8* [ %184, %168 ], [ %263, %259 ]
  %191 = phi %struct._Bigint* [ %185, %168 ], [ %264, %259 ]
  %192 = phi i32* [ %64, %168 ], [ %261, %259 ]
  %193 = phi i32* [ %169, %168 ], [ %260, %259 ]
  %194 = bitcast %struct._Bigint* %189 to i32*
  %195 = bitcast %struct._Bigint* %191 to i32*
  %196 = load i32, i32* %193, align 4, !dbg !870, !tbaa !429
  %197 = and i32 %196, 65535, !dbg !877
  %198 = icmp eq i32 %197, 0, !dbg !879
  br i1 %198, label %225, label %199, !dbg !880

; <label>:199:                                    ; preds = %187, %199
  %200 = phi i32 [ %217, %199 ], [ 0, %187 ], !dbg !881
  %201 = phi i32* [ %211, %199 ], [ %162, %187 ], !dbg !881
  %202 = phi i32* [ %221, %199 ], [ %192, %187 ], !dbg !881
  %203 = load i32, i32* %201, align 4, !dbg !885, !tbaa !429
  %204 = and i32 %203, 65535, !dbg !886
  %205 = mul nuw i32 %204, %197, !dbg !887
  %206 = load i32, i32* %202, align 4, !dbg !888, !tbaa !429
  %207 = and i32 %206, 65535, !dbg !889
  %208 = add nuw nsw i32 %207, %200, !dbg !890
  %209 = add i32 %208, %205, !dbg !891
  %210 = lshr i32 %209, 16, !dbg !893
  %211 = getelementptr inbounds i32, i32* %201, i64 1, !dbg !894
  %212 = lshr i32 %203, 16, !dbg !895
  %213 = mul nuw i32 %212, %197, !dbg !896
  %214 = lshr i32 %206, 16, !dbg !897
  %215 = add i32 %213, %214, !dbg !898
  %216 = add i32 %215, %210, !dbg !899
  %217 = lshr i32 %216, 16, !dbg !901
  %218 = shl i32 %216, 16, !dbg !902
  %219 = and i32 %209, 65535, !dbg !902
  %220 = or i32 %218, %219, !dbg !902
  %221 = getelementptr inbounds i32, i32* %202, i64 1, !dbg !902
  store i32 %220, i32* %202, align 4, !dbg !902, !tbaa !429
  %222 = icmp ult i32* %211, %164, !dbg !903
  br i1 %222, label %199, label %223, !dbg !904, !llvm.loop !905

; <label>:223:                                    ; preds = %199
  store i32 %217, i32* %195, align 4, !dbg !908, !tbaa !429
  %224 = load i32, i32* %193, align 4, !dbg !909, !tbaa !429
  br label %225, !dbg !911

; <label>:225:                                    ; preds = %187, %223
  %226 = phi i32 [ %196, %187 ], [ %224, %223 ], !dbg !909
  %227 = lshr i32 %226, 16, !dbg !912
  %228 = icmp eq i32 %227, 0, !dbg !913
  br i1 %228, label %259, label %229, !dbg !914

; <label>:229:                                    ; preds = %225
  %230 = load i32, i32* %192, align 4, !dbg !915, !tbaa !429
  br label %231, !dbg !917

; <label>:231:                                    ; preds = %231, %229
  %232 = phi i32 [ %230, %229 ], [ %252, %231 ], !dbg !918
  %233 = phi i32 [ 0, %229 ], [ %256, %231 ], !dbg !920
  %234 = phi i32* [ %162, %229 ], [ %248, %231 ], !dbg !920
  %235 = phi i32* [ %192, %229 ], [ %247, %231 ], !dbg !920
  %236 = phi i32 [ %230, %229 ], [ %255, %231 ], !dbg !920
  %237 = load i32, i32* %234, align 4, !dbg !921, !tbaa !429
  %238 = and i32 %237, 65535, !dbg !922
  %239 = mul nuw i32 %238, %227, !dbg !923
  %240 = lshr i32 %232, 16, !dbg !924
  %241 = add nuw nsw i32 %240, %233, !dbg !925
  %242 = add i32 %241, %239, !dbg !926
  %243 = lshr i32 %242, 16, !dbg !927
  %244 = shl i32 %242, 16, !dbg !928
  %245 = and i32 %236, 65535, !dbg !928
  %246 = or i32 %244, %245, !dbg !928
  %247 = getelementptr inbounds i32, i32* %235, i64 1, !dbg !928
  store i32 %246, i32* %235, align 4, !dbg !928, !tbaa !429
  %248 = getelementptr inbounds i32, i32* %234, i64 1, !dbg !929
  %249 = load i32, i32* %234, align 4, !dbg !930, !tbaa !429
  %250 = lshr i32 %249, 16, !dbg !931
  %251 = mul nuw i32 %250, %227, !dbg !932
  %252 = load i32, i32* %247, align 4, !dbg !933, !tbaa !429
  %253 = and i32 %252, 65535, !dbg !934
  %254 = add i32 %251, %253, !dbg !935
  %255 = add i32 %254, %243, !dbg !936
  %256 = lshr i32 %255, 16, !dbg !937
  %257 = icmp ult i32* %248, %164, !dbg !938
  br i1 %257, label %231, label %258, !dbg !939, !llvm.loop !940

; <label>:258:                                    ; preds = %231
  store i32 %255, i32* %194, align 4, !dbg !942, !tbaa !429
  br label %259, !dbg !943

; <label>:259:                                    ; preds = %225, %258
  %260 = getelementptr inbounds i32, i32* %193, i64 1, !dbg !944
  %261 = getelementptr inbounds i32, i32* %192, i64 1, !dbg !945
  %262 = icmp ult i32* %260, %166, !dbg !864
  %263 = getelementptr i8, i8* %190, i64 4, !dbg !867
  %264 = bitcast i8* %263 to %struct._Bigint*, !dbg !867
  %265 = getelementptr i8, i8* %188, i64 4, !dbg !867
  %266 = bitcast i8* %265 to %struct._Bigint*, !dbg !867
  br i1 %262, label %187, label %186, !dbg !867, !llvm.loop !946

; <label>:267:                                    ; preds = %186, %273
  %268 = phi i32* [ %270, %273 ], [ %66, %186 ]
  %269 = phi i32 [ %274, %273 ], [ %19, %186 ]
  %270 = getelementptr inbounds i32, i32* %268, i64 -1, !dbg !948
  %271 = load i32, i32* %270, align 4, !dbg !949, !tbaa !429
  %272 = icmp eq i32 %271, 0, !dbg !950
  br i1 %272, label %273, label %276, !dbg !951

; <label>:273:                                    ; preds = %267
  %274 = add nsw i32 %269, -1, !dbg !952
  %275 = icmp sgt i32 %269, 1, !dbg !953
  br i1 %275, label %267, label %276, !dbg !874, !llvm.loop !954

; <label>:276:                                    ; preds = %267, %273, %186
  %277 = phi i32 [ %19, %186 ], [ %274, %273 ], [ %269, %267 ], !dbg !956
  %278 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %62, i64 0, i32 4, !dbg !957
  store i32 %277, i32* %278, align 4, !dbg !958, !tbaa !378
  ret %struct._Bigint* %62, !dbg !959
}

; Function Attrs: noredzone nounwind
define dso_local %struct._Bigint* @__pow5mult(%struct._reent* nocapture, %struct._Bigint*, i32) local_unnamed_addr #0 !dbg !2 {
  %4 = and i32 %2, 3, !dbg !961
  %5 = icmp eq i32 %4, 0, !dbg !964
  br i1 %5, label %12, label %6, !dbg !965

; <label>:6:                                      ; preds = %3
  %7 = add nsw i32 %4, -1, !dbg !966
  %8 = sext i32 %7 to i64, !dbg !967
  %9 = getelementptr inbounds [3 x i32], [3 x i32]* @__pow5mult.p05, i64 0, i64 %8, !dbg !967
  %10 = load i32, i32* %9, align 4, !dbg !967, !tbaa !429
  %11 = tail call %struct._Bigint* @__multadd(%struct._reent* %0, %struct._Bigint* %1, i32 %10, i32 0) #8, !dbg !968
  br label %12, !dbg !969

; <label>:12:                                     ; preds = %3, %6
  %13 = phi %struct._Bigint* [ %11, %6 ], [ %1, %3 ]
  %14 = ashr i32 %2, 2, !dbg !970
  %15 = icmp eq i32 %14, 0, !dbg !970
  br i1 %15, label %89, label %16, !dbg !972

; <label>:16:                                     ; preds = %12
  %17 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 12, !dbg !973
  %18 = load %struct._Bigint*, %struct._Bigint** %17, align 8, !dbg !973, !tbaa !975
  %19 = icmp eq %struct._Bigint* %18, null, !dbg !977
  %20 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 13
  br i1 %19, label %21, label %56, !dbg !978

; <label>:21:                                     ; preds = %16
  %22 = load %struct._Bigint**, %struct._Bigint*** %20, align 8, !dbg !984, !tbaa !332
  %23 = icmp eq %struct._Bigint** %22, null, !dbg !985
  br i1 %23, label %24, label %29, !dbg !986

; <label>:24:                                     ; preds = %21
  %25 = tail call i8* @calloc(i64 8, i64 65) #6, !dbg !987
  %26 = bitcast %struct._Bigint*** %20 to i8**, !dbg !988
  store i8* %25, i8** %26, align 8, !dbg !988, !tbaa !332
  %27 = icmp eq i8* %25, null, !dbg !989
  %28 = bitcast i8* %25 to %struct._Bigint**, !dbg !990
  br i1 %27, label %51, label %29, !dbg !990

; <label>:29:                                     ; preds = %24, %21
  %30 = phi %struct._Bigint** [ %28, %24 ], [ %22, %21 ], !dbg !991
  %31 = getelementptr inbounds %struct._Bigint*, %struct._Bigint** %30, i64 1, !dbg !991
  %32 = load %struct._Bigint*, %struct._Bigint** %31, align 8, !dbg !991, !tbaa !351
  %33 = icmp eq %struct._Bigint* %32, null, !dbg !993
  br i1 %33, label %38, label %34, !dbg !994

; <label>:34:                                     ; preds = %29
  %35 = bitcast %struct._Bigint* %32 to i64*, !dbg !995
  %36 = load i64, i64* %35, align 8, !dbg !995, !tbaa !357
  %37 = bitcast %struct._Bigint** %31 to i64*, !dbg !996
  store i64 %36, i64* %37, align 8, !dbg !996, !tbaa !351
  br label %47, !dbg !997

; <label>:38:                                     ; preds = %29
  %39 = tail call i8* @calloc(i64 1, i64 36) #6, !dbg !999
  %40 = icmp eq i8* %39, null, !dbg !1000
  br i1 %40, label %51, label %41, !dbg !1001

; <label>:41:                                     ; preds = %38
  %42 = bitcast i8* %39 to %struct._Bigint*, !dbg !1002
  %43 = getelementptr inbounds i8, i8* %39, i64 8, !dbg !1003
  %44 = bitcast i8* %43 to i32*, !dbg !1003
  store i32 1, i32* %44, align 8, !dbg !1004, !tbaa !371
  %45 = getelementptr inbounds i8, i8* %39, i64 12, !dbg !1005
  %46 = bitcast i8* %45 to i32*, !dbg !1005
  store i32 2, i32* %46, align 4, !dbg !1006, !tbaa !374
  br label %47

; <label>:47:                                     ; preds = %41, %34
  %48 = phi %struct._Bigint* [ %32, %34 ], [ %42, %41 ], !dbg !1007
  %49 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %48, i64 0, i32 4, !dbg !1008
  store i32 0, i32* %49, align 4, !dbg !1009, !tbaa !378
  %50 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %48, i64 0, i32 3, !dbg !1010
  store i32 0, i32* %50, align 8, !dbg !1011, !tbaa !381
  br label %51, !dbg !1012

; <label>:51:                                     ; preds = %24, %38, %47
  %52 = phi %struct._Bigint* [ %48, %47 ], [ null, %24 ], [ null, %38 ], !dbg !1013
  %53 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %52, i64 0, i32 5, i64 0, !dbg !1015
  store i32 625, i32* %53, align 8, !dbg !1016, !tbaa !429
  %54 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %52, i64 0, i32 4, !dbg !1017
  store i32 1, i32* %54, align 4, !dbg !1018, !tbaa !378
  store %struct._Bigint* %52, %struct._Bigint** %17, align 8, !dbg !1019, !tbaa !975
  %55 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %52, i64 0, i32 0, !dbg !1020
  store %struct._Bigint* null, %struct._Bigint** %55, align 8, !dbg !1021, !tbaa !357
  br label %56, !dbg !1022

; <label>:56:                                     ; preds = %16, %51
  %57 = phi %struct._Bigint* [ %52, %51 ], [ %18, %16 ]
  br label %58, !dbg !1023

; <label>:58:                                     ; preds = %84, %56
  %59 = phi i32 [ %14, %56 ], [ %78, %84 ], !dbg !1028
  %60 = phi %struct._Bigint* [ %13, %56 ], [ %77, %84 ], !dbg !1030
  %61 = phi %struct._Bigint* [ %57, %56 ], [ %85, %84 ], !dbg !1032
  %62 = and i32 %59, 1, !dbg !1023
  %63 = icmp eq i32 %62, 0, !dbg !1023
  br i1 %63, label %76, label %64, !dbg !1033

; <label>:64:                                     ; preds = %58
  %65 = tail call %struct._Bigint* @__multiply(%struct._reent* %0, %struct._Bigint* %60, %struct._Bigint* %61) #8, !dbg !1034
  %66 = icmp eq %struct._Bigint* %60, null, !dbg !1038
  br i1 %66, label %76, label %67, !dbg !1039

; <label>:67:                                     ; preds = %64
  %68 = load %struct._Bigint**, %struct._Bigint*** %20, align 8, !dbg !1040, !tbaa !332
  %69 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %60, i64 0, i32 1, !dbg !1041
  %70 = load i32, i32* %69, align 8, !dbg !1041, !tbaa !371
  %71 = sext i32 %70 to i64, !dbg !1040
  %72 = getelementptr inbounds %struct._Bigint*, %struct._Bigint** %68, i64 %71, !dbg !1040
  %73 = bitcast %struct._Bigint** %72 to i64*, !dbg !1040
  %74 = load i64, i64* %73, align 8, !dbg !1040, !tbaa !351
  %75 = bitcast %struct._Bigint* %60 to i64*, !dbg !1042
  store i64 %74, i64* %75, align 8, !dbg !1042, !tbaa !357
  store %struct._Bigint* %60, %struct._Bigint** %72, align 8, !dbg !1043, !tbaa !351
  br label %76, !dbg !1044

; <label>:76:                                     ; preds = %67, %64, %58
  %77 = phi %struct._Bigint* [ %60, %58 ], [ %65, %64 ], [ %65, %67 ], !dbg !1045
  %78 = ashr i32 %59, 1, !dbg !1046
  %79 = icmp eq i32 %78, 0, !dbg !1046
  br i1 %79, label %89, label %80, !dbg !1047

; <label>:80:                                     ; preds = %76
  %81 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %61, i64 0, i32 0, !dbg !1048
  %82 = load %struct._Bigint*, %struct._Bigint** %81, align 8, !dbg !1048, !tbaa !357
  %83 = icmp eq %struct._Bigint* %82, null, !dbg !1051
  br i1 %83, label %86, label %84, !dbg !1052

; <label>:84:                                     ; preds = %80, %86
  %85 = phi %struct._Bigint* [ %82, %80 ], [ %87, %86 ]
  br label %58, !dbg !976, !llvm.loop !1053

; <label>:86:                                     ; preds = %80
  %87 = tail call %struct._Bigint* @__multiply(%struct._reent* %0, %struct._Bigint* nonnull %61, %struct._Bigint* nonnull %61) #8, !dbg !1056
  store %struct._Bigint* %87, %struct._Bigint** %81, align 8, !dbg !1058, !tbaa !357
  %88 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %87, i64 0, i32 0, !dbg !1059
  store %struct._Bigint* null, %struct._Bigint** %88, align 8, !dbg !1060, !tbaa !357
  br label %84, !dbg !1061

; <label>:89:                                     ; preds = %76, %12
  %90 = phi %struct._Bigint* [ %13, %12 ], [ %77, %76 ], !dbg !1062
  ret %struct._Bigint* %90, !dbg !1063
}

; Function Attrs: noredzone nounwind
define dso_local %struct._Bigint* @__lshift(%struct._reent* nocapture, %struct._Bigint*, i32) local_unnamed_addr #0 !dbg !1064 {
  %4 = ptrtoint %struct._Bigint* %1 to i64
  %5 = bitcast %struct._Bigint* %1 to i8*
  %6 = ashr i32 %2, 5, !dbg !1079
  %7 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %1, i64 0, i32 1, !dbg !1081
  %8 = load i32, i32* %7, align 8, !dbg !1081, !tbaa !371
  %9 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %1, i64 0, i32 4, !dbg !1083
  %10 = load i32, i32* %9, align 4, !dbg !1083, !tbaa !378
  %11 = add nsw i32 %10, %6, !dbg !1084
  %12 = add nsw i32 %11, 1, !dbg !1085
  %13 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %1, i64 0, i32 2, !dbg !1087
  %14 = load i32, i32* %13, align 4, !dbg !1087, !tbaa !374
  %15 = icmp slt i32 %11, %14, !dbg !1090
  br i1 %15, label %22, label %16, !dbg !1092

; <label>:16:                                     ; preds = %3, %16
  %17 = phi i32 [ %20, %16 ], [ %14, %3 ]
  %18 = phi i32 [ %19, %16 ], [ %8, %3 ]
  %19 = add nsw i32 %18, 1, !dbg !1093
  %20 = shl i32 %17, 1, !dbg !1094
  %21 = icmp slt i32 %11, %20, !dbg !1090
  br i1 %21, label %22, label %16, !dbg !1092, !llvm.loop !1095

; <label>:22:                                     ; preds = %16, %3
  %23 = phi i32 [ %8, %3 ], [ %19, %16 ], !dbg !1097
  %24 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 13, !dbg !1100
  %25 = load %struct._Bigint**, %struct._Bigint*** %24, align 8, !dbg !1100, !tbaa !332
  %26 = icmp eq %struct._Bigint** %25, null, !dbg !1101
  br i1 %26, label %27, label %32, !dbg !1102

; <label>:27:                                     ; preds = %22
  %28 = tail call i8* @calloc(i64 8, i64 65) #6, !dbg !1103
  %29 = bitcast %struct._Bigint*** %24 to i8**, !dbg !1104
  store i8* %28, i8** %29, align 8, !dbg !1104, !tbaa !332
  %30 = icmp eq i8* %28, null, !dbg !1105
  %31 = bitcast i8* %28 to %struct._Bigint**, !dbg !1106
  br i1 %30, label %60, label %32, !dbg !1106

; <label>:32:                                     ; preds = %27, %22
  %33 = phi %struct._Bigint** [ %31, %27 ], [ %25, %22 ], !dbg !1107
  %34 = sext i32 %23 to i64, !dbg !1107
  %35 = getelementptr inbounds %struct._Bigint*, %struct._Bigint** %33, i64 %34, !dbg !1107
  %36 = load %struct._Bigint*, %struct._Bigint** %35, align 8, !dbg !1107, !tbaa !351
  %37 = icmp eq %struct._Bigint* %36, null, !dbg !1109
  br i1 %37, label %42, label %38, !dbg !1110

; <label>:38:                                     ; preds = %32
  %39 = bitcast %struct._Bigint* %36 to i64*, !dbg !1111
  %40 = load i64, i64* %39, align 8, !dbg !1111, !tbaa !357
  %41 = bitcast %struct._Bigint** %35 to i64*, !dbg !1112
  store i64 %40, i64* %41, align 8, !dbg !1112, !tbaa !351
  br label %56, !dbg !1113

; <label>:42:                                     ; preds = %32
  %43 = shl i32 1, %23, !dbg !1114
  %44 = add nsw i32 %43, -1, !dbg !1116
  %45 = sext i32 %44 to i64, !dbg !1116
  %46 = shl nsw i64 %45, 2, !dbg !1116
  %47 = add nsw i64 %46, 32, !dbg !1116
  %48 = tail call i8* @calloc(i64 1, i64 %47) #6, !dbg !1116
  %49 = icmp eq i8* %48, null, !dbg !1117
  br i1 %49, label %60, label %50, !dbg !1118

; <label>:50:                                     ; preds = %42
  %51 = bitcast i8* %48 to %struct._Bigint*, !dbg !1119
  %52 = getelementptr inbounds i8, i8* %48, i64 8, !dbg !1120
  %53 = bitcast i8* %52 to i32*, !dbg !1120
  store i32 %23, i32* %53, align 8, !dbg !1121, !tbaa !371
  %54 = getelementptr inbounds i8, i8* %48, i64 12, !dbg !1122
  %55 = bitcast i8* %54 to i32*, !dbg !1122
  store i32 %43, i32* %55, align 4, !dbg !1123, !tbaa !374
  br label %56

; <label>:56:                                     ; preds = %50, %38
  %57 = phi %struct._Bigint* [ %36, %38 ], [ %51, %50 ], !dbg !1124
  %58 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %57, i64 0, i32 4, !dbg !1125
  store i32 0, i32* %58, align 4, !dbg !1126, !tbaa !378
  %59 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %57, i64 0, i32 3, !dbg !1127
  store i32 0, i32* %59, align 8, !dbg !1128, !tbaa !381
  br label %60, !dbg !1129

; <label>:60:                                     ; preds = %27, %42, %56
  %61 = phi %struct._Bigint* [ %57, %56 ], [ null, %27 ], [ null, %42 ], !dbg !1130
  %62 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %61, i64 0, i32 5, i64 0, !dbg !1132
  %63 = icmp sgt i32 %2, 31, !dbg !1134
  br i1 %63, label %64, label %96, !dbg !1137

; <label>:64:                                     ; preds = %60
  %65 = icmp sgt i32 %6, 1, !dbg !1138
  %66 = select i1 %65, i32 %6, i32 1, !dbg !1138
  %67 = add nsw i32 %66, -1, !dbg !1138
  %68 = zext i32 %67 to i64, !dbg !1138
  %69 = add nuw nsw i64 %68, 1, !dbg !1138
  %70 = icmp ult i64 %69, 8, !dbg !1138
  br i1 %70, label %87, label %71, !dbg !1138

; <label>:71:                                     ; preds = %64
  %72 = and i32 %66, 7, !dbg !1138
  %73 = zext i32 %72 to i64, !dbg !1138
  %74 = sub nsw i64 %69, %73, !dbg !1138
  %75 = getelementptr %struct._Bigint, %struct._Bigint* %61, i64 0, i32 5, i64 %74, !dbg !1138
  %76 = trunc i64 %74 to i32, !dbg !1138
  br label %77, !dbg !1138

; <label>:77:                                     ; preds = %77, %71
  %78 = phi i64 [ 0, %71 ], [ %83, %77 ]
  %79 = getelementptr %struct._Bigint, %struct._Bigint* %61, i64 0, i32 5, i64 %78
  %80 = bitcast i32* %79 to <4 x i32>*, !dbg !1139
  store <4 x i32> zeroinitializer, <4 x i32>* %80, align 4, !dbg !1139, !tbaa !429
  %81 = getelementptr i32, i32* %79, i64 4, !dbg !1139
  %82 = bitcast i32* %81 to <4 x i32>*, !dbg !1139
  store <4 x i32> zeroinitializer, <4 x i32>* %82, align 4, !dbg !1139, !tbaa !429
  %83 = add i64 %78, 8
  %84 = icmp eq i64 %83, %74
  br i1 %84, label %85, label %77, !llvm.loop !1140

; <label>:85:                                     ; preds = %77
  %86 = icmp eq i32 %72, 0
  br i1 %86, label %96, label %87, !dbg !1138

; <label>:87:                                     ; preds = %85, %64
  %88 = phi i32* [ %62, %64 ], [ %75, %85 ]
  %89 = phi i32 [ 0, %64 ], [ %76, %85 ]
  br label %90, !dbg !1138

; <label>:90:                                     ; preds = %87, %90
  %91 = phi i32* [ %93, %90 ], [ %88, %87 ]
  %92 = phi i32 [ %94, %90 ], [ %89, %87 ]
  %93 = getelementptr inbounds i32, i32* %91, i64 1, !dbg !1138
  store i32 0, i32* %91, align 4, !dbg !1139, !tbaa !429
  %94 = add nuw nsw i32 %92, 1, !dbg !1142
  %95 = icmp slt i32 %94, %6, !dbg !1134
  br i1 %95, label %90, label %96, !dbg !1137, !llvm.loop !1143

; <label>:96:                                     ; preds = %90, %85, %60
  %97 = phi i32* [ %62, %60 ], [ %75, %85 ], [ %93, %90 ], !dbg !1144
  %98 = bitcast i32* %97 to i8*
  %99 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %1, i64 0, i32 5, i64 0, !dbg !1145
  %100 = load i32, i32* %9, align 4, !dbg !1147, !tbaa !378
  %101 = sext i32 %100 to i64, !dbg !1148
  %102 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %1, i64 0, i32 5, i64 %101, !dbg !1148
  %103 = and i32 %2, 31, !dbg !1150
  %104 = icmp eq i32 %103, 0, !dbg !1150
  br i1 %104, label %105, label %258, !dbg !1152

; <label>:105:                                    ; preds = %96
  %106 = shl nsw i64 %101, 2, !dbg !1153
  %107 = add nsw i64 %106, 24, !dbg !1153
  %108 = getelementptr i8, i8* %5, i64 %107, !dbg !1153
  %109 = ptrtoint i8* %108 to i64
  %110 = getelementptr %struct._Bigint, %struct._Bigint* %1, i64 0, i32 5, i64 1, !dbg !1153
  %111 = ptrtoint i32* %110 to i64
  %112 = icmp ugt i64 %109, %111, !dbg !1153
  %113 = select i1 %112, i64 %109, i64 %111, !dbg !1153
  %114 = inttoptr i64 %113 to i8*
  %115 = sub i64 -25, %4, !dbg !1153
  %116 = getelementptr i8, i8* %114, i64 %115, !dbg !1153
  %117 = ptrtoint i8* %116 to i64
  %118 = lshr i64 %117, 2, !dbg !1153
  %119 = add nuw nsw i64 %118, 1, !dbg !1153
  %120 = icmp ult i64 %119, 8, !dbg !1153
  br i1 %120, label %121, label %154, !dbg !1153

; <label>:121:                                    ; preds = %256, %154, %105
  %122 = phi i32* [ %99, %154 ], [ %99, %105 ], [ %179, %256 ]
  %123 = phi i32* [ %97, %154 ], [ %97, %105 ], [ %180, %256 ]
  %124 = ptrtoint i32* %122 to i64
  %125 = shl nsw i64 %101, 2, !dbg !1153
  %126 = add nsw i64 %125, 24, !dbg !1153
  %127 = getelementptr i8, i8* %5, i64 %126, !dbg !1153
  %128 = ptrtoint i8* %127 to i64
  %129 = getelementptr i32, i32* %122, i64 1, !dbg !1153
  %130 = ptrtoint i32* %129 to i64
  %131 = icmp ugt i64 %128, %130, !dbg !1153
  %132 = select i1 %131, i64 %128, i64 %130, !dbg !1153
  %133 = inttoptr i64 %132 to i8*
  %134 = xor i64 %124, -1, !dbg !1153
  %135 = getelementptr i8, i8* %133, i64 %134, !dbg !1153
  %136 = ptrtoint i8* %135 to i64
  %137 = lshr i64 %136, 2, !dbg !1153
  %138 = add nuw nsw i64 %137, 1, !dbg !1153
  %139 = and i64 %138, 7, !dbg !1153
  %140 = icmp eq i64 %139, 0, !dbg !1153
  br i1 %140, label %150, label %141, !dbg !1153

; <label>:141:                                    ; preds = %121, %141
  %142 = phi i32* [ %145, %141 ], [ %122, %121 ], !dbg !1154
  %143 = phi i32* [ %147, %141 ], [ %123, %121 ], !dbg !1154
  %144 = phi i64 [ %148, %141 ], [ %139, %121 ]
  %145 = getelementptr inbounds i32, i32* %142, i64 1, !dbg !1153
  %146 = load i32, i32* %142, align 4, !dbg !1155, !tbaa !429
  %147 = getelementptr inbounds i32, i32* %143, i64 1, !dbg !1156
  store i32 %146, i32* %143, align 4, !dbg !1157, !tbaa !429
  %148 = add i64 %144, -1, !dbg !1158
  %149 = icmp eq i64 %148, 0, !dbg !1158
  br i1 %149, label %150, label %141, !dbg !1158, !llvm.loop !1159

; <label>:150:                                    ; preds = %141, %121
  %151 = phi i32* [ %122, %121 ], [ %145, %141 ]
  %152 = phi i32* [ %123, %121 ], [ %147, %141 ]
  %153 = icmp ult i8* %135, inttoptr (i64 28 to i8*), !dbg !1153
  br i1 %153, label %381, label %353, !dbg !1153

; <label>:154:                                    ; preds = %105
  %155 = shl nsw i64 %101, 2, !dbg !1153
  %156 = add nsw i64 %155, 24, !dbg !1153
  %157 = getelementptr i8, i8* %5, i64 %156, !dbg !1153
  %158 = ptrtoint i8* %157 to i64
  %159 = getelementptr %struct._Bigint, %struct._Bigint* %1, i64 0, i32 5, i64 1, !dbg !1153
  %160 = ptrtoint i32* %159 to i64
  %161 = icmp ugt i64 %158, %160, !dbg !1153
  %162 = select i1 %161, i64 %158, i64 %160, !dbg !1153
  %163 = inttoptr i64 %162 to i8*
  %164 = sub i64 -25, %4, !dbg !1153
  %165 = getelementptr i8, i8* %163, i64 %164, !dbg !1153
  %166 = ptrtoint i8* %165 to i64
  %167 = lshr i64 %166, 2, !dbg !1153
  %168 = add nuw nsw i64 %167, 1, !dbg !1153
  %169 = getelementptr i32, i32* %97, i64 %168, !dbg !1153
  %170 = getelementptr %struct._Bigint, %struct._Bigint* %1, i64 0, i32 5, i64 0, !dbg !1153
  %171 = add i64 %166, 28, !dbg !1153
  %172 = and i64 %171, -4, !dbg !1153
  %173 = getelementptr i8, i8* %5, i64 %172, !dbg !1153
  %174 = icmp ugt i8* %173, %98, !dbg !1153
  %175 = icmp ult i32* %170, %169, !dbg !1153
  %176 = and i1 %174, %175, !dbg !1153
  br i1 %176, label %121, label %177, !dbg !1153

; <label>:177:                                    ; preds = %154
  %178 = and i64 %119, 9223372036854775800, !dbg !1153
  %179 = getelementptr %struct._Bigint, %struct._Bigint* %1, i64 0, i32 5, i64 %178, !dbg !1153
  %180 = getelementptr i32, i32* %97, i64 %178, !dbg !1153
  %181 = add nsw i64 %178, -8, !dbg !1153
  %182 = lshr exact i64 %181, 3, !dbg !1153
  %183 = add nuw nsw i64 %182, 1, !dbg !1153
  %184 = and i64 %183, 3, !dbg !1153
  %185 = icmp ult i64 %181, 24, !dbg !1153
  br i1 %185, label %237, label %186, !dbg !1153

; <label>:186:                                    ; preds = %177
  %187 = sub nsw i64 %183, %184, !dbg !1153
  br label %188, !dbg !1153

; <label>:188:                                    ; preds = %188, %186
  %189 = phi i64 [ 0, %186 ], [ %234, %188 ]
  %190 = phi i64 [ %187, %186 ], [ %235, %188 ]
  %191 = getelementptr %struct._Bigint, %struct._Bigint* %1, i64 0, i32 5, i64 %189, !dbg !1154
  %192 = getelementptr i32, i32* %97, i64 %189, !dbg !1154
  %193 = bitcast i32* %191 to <4 x i32>*, !dbg !1155
  %194 = load <4 x i32>, <4 x i32>* %193, align 4, !dbg !1155, !tbaa !429, !alias.scope !1160
  %195 = getelementptr i32, i32* %191, i64 4, !dbg !1155
  %196 = bitcast i32* %195 to <4 x i32>*, !dbg !1155
  %197 = load <4 x i32>, <4 x i32>* %196, align 4, !dbg !1155, !tbaa !429, !alias.scope !1160
  %198 = bitcast i32* %192 to <4 x i32>*, !dbg !1157
  store <4 x i32> %194, <4 x i32>* %198, align 4, !dbg !1157, !tbaa !429, !alias.scope !1163, !noalias !1160
  %199 = getelementptr i32, i32* %192, i64 4, !dbg !1157
  %200 = bitcast i32* %199 to <4 x i32>*, !dbg !1157
  store <4 x i32> %197, <4 x i32>* %200, align 4, !dbg !1157, !tbaa !429, !alias.scope !1163, !noalias !1160
  %201 = or i64 %189, 8
  %202 = getelementptr %struct._Bigint, %struct._Bigint* %1, i64 0, i32 5, i64 %201, !dbg !1154
  %203 = getelementptr i32, i32* %97, i64 %201, !dbg !1154
  %204 = bitcast i32* %202 to <4 x i32>*, !dbg !1155
  %205 = load <4 x i32>, <4 x i32>* %204, align 4, !dbg !1155, !tbaa !429, !alias.scope !1160
  %206 = getelementptr i32, i32* %202, i64 4, !dbg !1155
  %207 = bitcast i32* %206 to <4 x i32>*, !dbg !1155
  %208 = load <4 x i32>, <4 x i32>* %207, align 4, !dbg !1155, !tbaa !429, !alias.scope !1160
  %209 = bitcast i32* %203 to <4 x i32>*, !dbg !1157
  store <4 x i32> %205, <4 x i32>* %209, align 4, !dbg !1157, !tbaa !429, !alias.scope !1163, !noalias !1160
  %210 = getelementptr i32, i32* %203, i64 4, !dbg !1157
  %211 = bitcast i32* %210 to <4 x i32>*, !dbg !1157
  store <4 x i32> %208, <4 x i32>* %211, align 4, !dbg !1157, !tbaa !429, !alias.scope !1163, !noalias !1160
  %212 = or i64 %189, 16
  %213 = getelementptr %struct._Bigint, %struct._Bigint* %1, i64 0, i32 5, i64 %212, !dbg !1154
  %214 = getelementptr i32, i32* %97, i64 %212, !dbg !1154
  %215 = bitcast i32* %213 to <4 x i32>*, !dbg !1155
  %216 = load <4 x i32>, <4 x i32>* %215, align 4, !dbg !1155, !tbaa !429, !alias.scope !1160
  %217 = getelementptr i32, i32* %213, i64 4, !dbg !1155
  %218 = bitcast i32* %217 to <4 x i32>*, !dbg !1155
  %219 = load <4 x i32>, <4 x i32>* %218, align 4, !dbg !1155, !tbaa !429, !alias.scope !1160
  %220 = bitcast i32* %214 to <4 x i32>*, !dbg !1157
  store <4 x i32> %216, <4 x i32>* %220, align 4, !dbg !1157, !tbaa !429, !alias.scope !1163, !noalias !1160
  %221 = getelementptr i32, i32* %214, i64 4, !dbg !1157
  %222 = bitcast i32* %221 to <4 x i32>*, !dbg !1157
  store <4 x i32> %219, <4 x i32>* %222, align 4, !dbg !1157, !tbaa !429, !alias.scope !1163, !noalias !1160
  %223 = or i64 %189, 24
  %224 = getelementptr %struct._Bigint, %struct._Bigint* %1, i64 0, i32 5, i64 %223, !dbg !1154
  %225 = getelementptr i32, i32* %97, i64 %223, !dbg !1154
  %226 = bitcast i32* %224 to <4 x i32>*, !dbg !1155
  %227 = load <4 x i32>, <4 x i32>* %226, align 4, !dbg !1155, !tbaa !429, !alias.scope !1160
  %228 = getelementptr i32, i32* %224, i64 4, !dbg !1155
  %229 = bitcast i32* %228 to <4 x i32>*, !dbg !1155
  %230 = load <4 x i32>, <4 x i32>* %229, align 4, !dbg !1155, !tbaa !429, !alias.scope !1160
  %231 = bitcast i32* %225 to <4 x i32>*, !dbg !1157
  store <4 x i32> %227, <4 x i32>* %231, align 4, !dbg !1157, !tbaa !429, !alias.scope !1163, !noalias !1160
  %232 = getelementptr i32, i32* %225, i64 4, !dbg !1157
  %233 = bitcast i32* %232 to <4 x i32>*, !dbg !1157
  store <4 x i32> %230, <4 x i32>* %233, align 4, !dbg !1157, !tbaa !429, !alias.scope !1163, !noalias !1160
  %234 = add i64 %189, 32
  %235 = add i64 %190, -4
  %236 = icmp eq i64 %235, 0
  br i1 %236, label %237, label %188, !llvm.loop !1165

; <label>:237:                                    ; preds = %188, %177
  %238 = phi i64 [ 0, %177 ], [ %234, %188 ]
  %239 = icmp eq i64 %184, 0
  br i1 %239, label %256, label %240

; <label>:240:                                    ; preds = %237, %240
  %241 = phi i64 [ %253, %240 ], [ %238, %237 ]
  %242 = phi i64 [ %254, %240 ], [ %184, %237 ]
  %243 = getelementptr %struct._Bigint, %struct._Bigint* %1, i64 0, i32 5, i64 %241, !dbg !1154
  %244 = getelementptr i32, i32* %97, i64 %241, !dbg !1154
  %245 = bitcast i32* %243 to <4 x i32>*, !dbg !1155
  %246 = load <4 x i32>, <4 x i32>* %245, align 4, !dbg !1155, !tbaa !429, !alias.scope !1160
  %247 = getelementptr i32, i32* %243, i64 4, !dbg !1155
  %248 = bitcast i32* %247 to <4 x i32>*, !dbg !1155
  %249 = load <4 x i32>, <4 x i32>* %248, align 4, !dbg !1155, !tbaa !429, !alias.scope !1160
  %250 = bitcast i32* %244 to <4 x i32>*, !dbg !1157
  store <4 x i32> %246, <4 x i32>* %250, align 4, !dbg !1157, !tbaa !429, !alias.scope !1163, !noalias !1160
  %251 = getelementptr i32, i32* %244, i64 4, !dbg !1157
  %252 = bitcast i32* %251 to <4 x i32>*, !dbg !1157
  store <4 x i32> %249, <4 x i32>* %252, align 4, !dbg !1157, !tbaa !429, !alias.scope !1163, !noalias !1160
  %253 = add i64 %241, 8
  %254 = add i64 %242, -1
  %255 = icmp eq i64 %254, 0
  br i1 %255, label %256, label %240, !llvm.loop !1168

; <label>:256:                                    ; preds = %240, %237
  %257 = icmp eq i64 %119, %178
  br i1 %257, label %381, label %121, !dbg !1153

; <label>:258:                                    ; preds = %96
  %259 = sub nsw i32 32, %103, !dbg !1169
  %260 = shl nsw i64 %101, 2, !dbg !1172
  %261 = add nsw i64 %260, 24, !dbg !1172
  %262 = getelementptr i8, i8* %5, i64 %261, !dbg !1172
  %263 = ptrtoint i8* %262 to i64
  %264 = getelementptr %struct._Bigint, %struct._Bigint* %1, i64 0, i32 5, i64 1, !dbg !1172
  %265 = ptrtoint i32* %264 to i64
  %266 = icmp ugt i64 %263, %265, !dbg !1172
  %267 = select i1 %266, i64 %263, i64 %265, !dbg !1172
  %268 = inttoptr i64 %267 to i8*
  %269 = sub i64 -25, %4, !dbg !1172
  %270 = getelementptr i8, i8* %268, i64 %269, !dbg !1172
  %271 = ptrtoint i8* %270 to i64
  %272 = lshr i64 %271, 2, !dbg !1172
  %273 = add nuw nsw i64 %272, 1, !dbg !1172
  %274 = shl nsw i64 %101, 2, !dbg !1172
  %275 = add nsw i64 %274, 24, !dbg !1172
  %276 = getelementptr i8, i8* %5, i64 %275, !dbg !1172
  %277 = ptrtoint i8* %276 to i64
  %278 = getelementptr %struct._Bigint, %struct._Bigint* %1, i64 0, i32 5, i64 1, !dbg !1172
  %279 = ptrtoint i32* %278 to i64
  %280 = icmp ugt i64 %277, %279, !dbg !1172
  %281 = select i1 %280, i64 %277, i64 %279, !dbg !1172
  %282 = inttoptr i64 %281 to i8*
  %283 = sub i64 -25, %4, !dbg !1172
  %284 = getelementptr i8, i8* %282, i64 %283, !dbg !1172
  %285 = ptrtoint i8* %284 to i64
  %286 = lshr i64 %285, 2, !dbg !1172
  %287 = add nuw nsw i64 %286, 1, !dbg !1172
  %288 = and i64 %287, 3, !dbg !1172
  %289 = icmp ult i8* %284, inttoptr (i64 12 to i8*), !dbg !1172
  br i1 %289, label %327, label %290, !dbg !1172

; <label>:290:                                    ; preds = %258
  %291 = sub nsw i64 %287, %288, !dbg !1172
  br label %292, !dbg !1172

; <label>:292:                                    ; preds = %292, %290
  %293 = phi i32* [ %99, %290 ], [ %322, %292 ], !dbg !1173
  %294 = phi i32* [ %97, %290 ], [ %321, %292 ], !dbg !1173
  %295 = phi i32 [ 0, %290 ], [ %324, %292 ], !dbg !1173
  %296 = phi i64 [ %291, %290 ], [ %325, %292 ]
  %297 = load i32, i32* %293, align 4, !dbg !1175, !tbaa !429
  %298 = shl i32 %297, %103, !dbg !1176
  %299 = or i32 %298, %295, !dbg !1177
  %300 = getelementptr inbounds i32, i32* %294, i64 1, !dbg !1178
  store i32 %299, i32* %294, align 4, !dbg !1179, !tbaa !429
  %301 = getelementptr inbounds i32, i32* %293, i64 1, !dbg !1180
  %302 = load i32, i32* %293, align 4, !dbg !1181, !tbaa !429
  %303 = lshr i32 %302, %259, !dbg !1182
  %304 = load i32, i32* %301, align 4, !dbg !1175, !tbaa !429
  %305 = shl i32 %304, %103, !dbg !1176
  %306 = or i32 %305, %303, !dbg !1177
  %307 = getelementptr inbounds i32, i32* %294, i64 2, !dbg !1178
  store i32 %306, i32* %300, align 4, !dbg !1179, !tbaa !429
  %308 = getelementptr inbounds i32, i32* %293, i64 2, !dbg !1180
  %309 = load i32, i32* %301, align 4, !dbg !1181, !tbaa !429
  %310 = lshr i32 %309, %259, !dbg !1182
  %311 = load i32, i32* %308, align 4, !dbg !1175, !tbaa !429
  %312 = shl i32 %311, %103, !dbg !1176
  %313 = or i32 %312, %310, !dbg !1177
  %314 = getelementptr inbounds i32, i32* %294, i64 3, !dbg !1178
  store i32 %313, i32* %307, align 4, !dbg !1179, !tbaa !429
  %315 = getelementptr inbounds i32, i32* %293, i64 3, !dbg !1180
  %316 = load i32, i32* %308, align 4, !dbg !1181, !tbaa !429
  %317 = lshr i32 %316, %259, !dbg !1182
  %318 = load i32, i32* %315, align 4, !dbg !1175, !tbaa !429
  %319 = shl i32 %318, %103, !dbg !1176
  %320 = or i32 %319, %317, !dbg !1177
  %321 = getelementptr inbounds i32, i32* %294, i64 4, !dbg !1178
  store i32 %320, i32* %314, align 4, !dbg !1179, !tbaa !429
  %322 = getelementptr inbounds i32, i32* %293, i64 4, !dbg !1180
  %323 = load i32, i32* %315, align 4, !dbg !1181, !tbaa !429
  %324 = lshr i32 %323, %259, !dbg !1182
  %325 = add i64 %296, -4, !dbg !1183
  %326 = icmp eq i64 %325, 0, !dbg !1183
  br i1 %326, label %327, label %292, !dbg !1183, !llvm.loop !1184

; <label>:327:                                    ; preds = %292, %258
  %328 = phi i32 [ undef, %258 ], [ %324, %292 ]
  %329 = phi i32* [ %99, %258 ], [ %322, %292 ]
  %330 = phi i32* [ %97, %258 ], [ %321, %292 ]
  %331 = phi i32 [ 0, %258 ], [ %324, %292 ]
  %332 = icmp eq i64 %288, 0, !dbg !1183
  br i1 %332, label %347, label %333, !dbg !1183

; <label>:333:                                    ; preds = %327, %333
  %334 = phi i32* [ %342, %333 ], [ %329, %327 ], !dbg !1173
  %335 = phi i32* [ %341, %333 ], [ %330, %327 ], !dbg !1173
  %336 = phi i32 [ %344, %333 ], [ %331, %327 ], !dbg !1173
  %337 = phi i64 [ %345, %333 ], [ %288, %327 ]
  %338 = load i32, i32* %334, align 4, !dbg !1175, !tbaa !429
  %339 = shl i32 %338, %103, !dbg !1176
  %340 = or i32 %339, %336, !dbg !1177
  %341 = getelementptr inbounds i32, i32* %335, i64 1, !dbg !1178
  store i32 %340, i32* %335, align 4, !dbg !1179, !tbaa !429
  %342 = getelementptr inbounds i32, i32* %334, i64 1, !dbg !1180
  %343 = load i32, i32* %334, align 4, !dbg !1181, !tbaa !429
  %344 = lshr i32 %343, %259, !dbg !1182
  %345 = add i64 %337, -1, !dbg !1183
  %346 = icmp eq i64 %345, 0, !dbg !1183
  br i1 %346, label %347, label %333, !dbg !1183, !llvm.loop !1186

; <label>:347:                                    ; preds = %333, %327
  %348 = phi i32 [ %328, %327 ], [ %344, %333 ], !dbg !1182
  %349 = getelementptr i32, i32* %97, i64 %273, !dbg !1172
  store i32 %348, i32* %349, align 4, !dbg !1187, !tbaa !429
  %350 = icmp eq i32 %348, 0, !dbg !1189
  %351 = add nsw i32 %11, 2, !dbg !1190
  %352 = select i1 %350, i32 %12, i32 %351, !dbg !1191
  br label %381, !dbg !1191

; <label>:353:                                    ; preds = %150, %353
  %354 = phi i32* [ %377, %353 ], [ %151, %150 ], !dbg !1154
  %355 = phi i32* [ %379, %353 ], [ %152, %150 ], !dbg !1154
  %356 = getelementptr inbounds i32, i32* %354, i64 1, !dbg !1153
  %357 = load i32, i32* %354, align 4, !dbg !1155, !tbaa !429
  %358 = getelementptr inbounds i32, i32* %355, i64 1, !dbg !1156
  store i32 %357, i32* %355, align 4, !dbg !1157, !tbaa !429
  %359 = getelementptr inbounds i32, i32* %354, i64 2, !dbg !1153
  %360 = load i32, i32* %356, align 4, !dbg !1155, !tbaa !429
  %361 = getelementptr inbounds i32, i32* %355, i64 2, !dbg !1156
  store i32 %360, i32* %358, align 4, !dbg !1157, !tbaa !429
  %362 = getelementptr inbounds i32, i32* %354, i64 3, !dbg !1153
  %363 = load i32, i32* %359, align 4, !dbg !1155, !tbaa !429
  %364 = getelementptr inbounds i32, i32* %355, i64 3, !dbg !1156
  store i32 %363, i32* %361, align 4, !dbg !1157, !tbaa !429
  %365 = getelementptr inbounds i32, i32* %354, i64 4, !dbg !1153
  %366 = load i32, i32* %362, align 4, !dbg !1155, !tbaa !429
  %367 = getelementptr inbounds i32, i32* %355, i64 4, !dbg !1156
  store i32 %366, i32* %364, align 4, !dbg !1157, !tbaa !429
  %368 = getelementptr inbounds i32, i32* %354, i64 5, !dbg !1153
  %369 = load i32, i32* %365, align 4, !dbg !1155, !tbaa !429
  %370 = getelementptr inbounds i32, i32* %355, i64 5, !dbg !1156
  store i32 %369, i32* %367, align 4, !dbg !1157, !tbaa !429
  %371 = getelementptr inbounds i32, i32* %354, i64 6, !dbg !1153
  %372 = load i32, i32* %368, align 4, !dbg !1155, !tbaa !429
  %373 = getelementptr inbounds i32, i32* %355, i64 6, !dbg !1156
  store i32 %372, i32* %370, align 4, !dbg !1157, !tbaa !429
  %374 = getelementptr inbounds i32, i32* %354, i64 7, !dbg !1153
  %375 = load i32, i32* %371, align 4, !dbg !1155, !tbaa !429
  %376 = getelementptr inbounds i32, i32* %355, i64 7, !dbg !1156
  store i32 %375, i32* %373, align 4, !dbg !1157, !tbaa !429
  %377 = getelementptr inbounds i32, i32* %354, i64 8, !dbg !1153
  %378 = load i32, i32* %374, align 4, !dbg !1155, !tbaa !429
  %379 = getelementptr inbounds i32, i32* %355, i64 8, !dbg !1156
  store i32 %378, i32* %376, align 4, !dbg !1157, !tbaa !429
  %380 = icmp ult i32* %377, %102, !dbg !1192
  br i1 %380, label %353, label %381, !dbg !1158, !llvm.loop !1193

; <label>:381:                                    ; preds = %150, %353, %256, %347
  %382 = phi i32 [ %352, %347 ], [ %12, %256 ], [ %12, %353 ], [ %12, %150 ], !dbg !1194
  %383 = add nsw i32 %382, -1, !dbg !1195
  %384 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %61, i64 0, i32 4, !dbg !1196
  store i32 %383, i32* %384, align 4, !dbg !1197, !tbaa !378
  %385 = icmp eq %struct._Bigint* %1, null, !dbg !1200
  br i1 %385, label %394, label %386, !dbg !1201

; <label>:386:                                    ; preds = %381
  %387 = load %struct._Bigint**, %struct._Bigint*** %24, align 8, !dbg !1202, !tbaa !332
  %388 = load i32, i32* %7, align 8, !dbg !1203, !tbaa !371
  %389 = sext i32 %388 to i64, !dbg !1202
  %390 = getelementptr inbounds %struct._Bigint*, %struct._Bigint** %387, i64 %389, !dbg !1202
  %391 = bitcast %struct._Bigint** %390 to i64*, !dbg !1202
  %392 = load i64, i64* %391, align 8, !dbg !1202, !tbaa !351
  %393 = bitcast %struct._Bigint* %1 to i64*, !dbg !1204
  store i64 %392, i64* %393, align 8, !dbg !1204, !tbaa !357
  store %struct._Bigint* %1, %struct._Bigint** %390, align 8, !dbg !1205, !tbaa !351
  br label %394, !dbg !1206

; <label>:394:                                    ; preds = %381, %386
  ret %struct._Bigint* %61, !dbg !1207
}

; Function Attrs: noredzone nounwind readonly
define dso_local i32 @__mcmp(%struct._Bigint* readonly, %struct._Bigint* nocapture readonly) local_unnamed_addr #4 !dbg !1208 {
  %3 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %0, i64 0, i32 4, !dbg !1221
  %4 = load i32, i32* %3, align 4, !dbg !1221, !tbaa !378
  %5 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %1, i64 0, i32 4, !dbg !1223
  %6 = load i32, i32* %5, align 4, !dbg !1223, !tbaa !378
  %7 = sub nsw i32 %4, %6, !dbg !1225
  %8 = icmp eq i32 %7, 0, !dbg !1225
  br i1 %8, label %9, label %27, !dbg !1227

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %0, i64 0, i32 5, i64 0, !dbg !1228
  %11 = sext i32 %6 to i64, !dbg !1230
  %12 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %0, i64 0, i32 5, i64 %11, !dbg !1230
  %13 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %1, i64 0, i32 5, i64 %11, !dbg !1233
  br label %14, !dbg !1235

; <label>:14:                                     ; preds = %25, %9
  %15 = phi i32* [ %13, %9 ], [ %19, %25 ], !dbg !1236
  %16 = phi i32* [ %12, %9 ], [ %17, %25 ], !dbg !1236
  %17 = getelementptr inbounds i32, i32* %16, i64 -1, !dbg !1241
  %18 = load i32, i32* %17, align 4, !dbg !1242, !tbaa !429
  %19 = getelementptr inbounds i32, i32* %15, i64 -1, !dbg !1243
  %20 = load i32, i32* %19, align 4, !dbg !1244, !tbaa !429
  %21 = icmp eq i32 %18, %20, !dbg !1245
  br i1 %21, label %25, label %22, !dbg !1246

; <label>:22:                                     ; preds = %14
  %23 = icmp ult i32 %18, %20, !dbg !1247
  %24 = select i1 %23, i32 -1, i32 1, !dbg !1248
  br label %27, !dbg !1249

; <label>:25:                                     ; preds = %14
  %26 = icmp ugt i32* %17, %10, !dbg !1250
  br i1 %26, label %14, label %27, !dbg !1252, !llvm.loop !1253

; <label>:27:                                     ; preds = %25, %2, %22
  %28 = phi i32 [ %24, %22 ], [ %7, %2 ], [ 0, %25 ], !dbg !1256
  ret i32 %28, !dbg !1257
}

; Function Attrs: noredzone nounwind
define dso_local %struct._Bigint* @__mdiff(%struct._reent* nocapture, %struct._Bigint* readonly, %struct._Bigint* readonly) local_unnamed_addr #0 !dbg !1258 {
  %4 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %1, i64 0, i32 4, !dbg !1278
  %5 = load i32, i32* %4, align 4, !dbg !1278, !tbaa !378
  %6 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %2, i64 0, i32 4, !dbg !1280
  %7 = load i32, i32* %6, align 4, !dbg !1280, !tbaa !378
  %8 = sub nsw i32 %5, %7, !dbg !1282
  %9 = icmp eq i32 %8, 0, !dbg !1282
  br i1 %9, label %10, label %56, !dbg !1283

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %1, i64 0, i32 5, i64 0, !dbg !1284
  %12 = sext i32 %7 to i64, !dbg !1286
  %13 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %1, i64 0, i32 5, i64 %12, !dbg !1286
  %14 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %2, i64 0, i32 5, i64 %12, !dbg !1289
  br label %15, !dbg !1291

; <label>:15:                                     ; preds = %26, %10
  %16 = phi i32* [ %14, %10 ], [ %20, %26 ], !dbg !1292
  %17 = phi i32* [ %13, %10 ], [ %18, %26 ], !dbg !1292
  %18 = getelementptr inbounds i32, i32* %17, i64 -1, !dbg !1293
  %19 = load i32, i32* %18, align 4, !dbg !1294, !tbaa !429
  %20 = getelementptr inbounds i32, i32* %16, i64 -1, !dbg !1295
  %21 = load i32, i32* %20, align 4, !dbg !1296, !tbaa !429
  %22 = icmp eq i32 %19, %21, !dbg !1297
  br i1 %22, label %26, label %23, !dbg !1298

; <label>:23:                                     ; preds = %15
  %24 = icmp ult i32 %19, %21, !dbg !1299
  %25 = select i1 %24, i32 -1, i32 1, !dbg !1300
  br label %56, !dbg !1301

; <label>:26:                                     ; preds = %15
  %27 = icmp ugt i32* %18, %11, !dbg !1302
  br i1 %27, label %15, label %28, !dbg !1303, !llvm.loop !1253

; <label>:28:                                     ; preds = %26
  %29 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 13, !dbg !1309
  %30 = load %struct._Bigint**, %struct._Bigint*** %29, align 8, !dbg !1309, !tbaa !332
  %31 = icmp eq %struct._Bigint** %30, null, !dbg !1310
  br i1 %31, label %32, label %36, !dbg !1311

; <label>:32:                                     ; preds = %28
  %33 = tail call i8* @calloc(i64 8, i64 65) #6, !dbg !1312
  %34 = bitcast %struct._Bigint*** %29 to i8**, !dbg !1313
  store i8* %33, i8** %34, align 8, !dbg !1313, !tbaa !332
  %35 = bitcast i8* %33 to %struct._Bigint**, !dbg !1314
  br label %36, !dbg !1314

; <label>:36:                                     ; preds = %32, %28
  %37 = phi %struct._Bigint** [ %35, %32 ], [ %30, %28 ], !dbg !1315
  %38 = load %struct._Bigint*, %struct._Bigint** %37, align 8, !dbg !1315, !tbaa !351
  %39 = icmp eq %struct._Bigint* %38, null, !dbg !1317
  br i1 %39, label %44, label %40, !dbg !1318

; <label>:40:                                     ; preds = %36
  %41 = bitcast %struct._Bigint* %38 to i64*, !dbg !1319
  %42 = load i64, i64* %41, align 8, !dbg !1319, !tbaa !357
  %43 = bitcast %struct._Bigint** %37 to i64*, !dbg !1320
  store i64 %42, i64* %43, align 8, !dbg !1320, !tbaa !351
  br label %51, !dbg !1321

; <label>:44:                                     ; preds = %36
  %45 = tail call i8* @calloc(i64 1, i64 32) #6, !dbg !1323
  %46 = bitcast i8* %45 to %struct._Bigint*, !dbg !1324
  %47 = getelementptr inbounds i8, i8* %45, i64 8, !dbg !1325
  %48 = bitcast i8* %47 to i32*, !dbg !1325
  store i32 0, i32* %48, align 8, !dbg !1326, !tbaa !371
  %49 = getelementptr inbounds i8, i8* %45, i64 12, !dbg !1327
  %50 = bitcast i8* %49 to i32*, !dbg !1327
  store i32 1, i32* %50, align 4, !dbg !1328, !tbaa !374
  br label %51

; <label>:51:                                     ; preds = %44, %40
  %52 = phi %struct._Bigint* [ %38, %40 ], [ %46, %44 ], !dbg !1329
  %53 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %52, i64 0, i32 4, !dbg !1330
  %54 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %52, i64 0, i32 3, !dbg !1331
  store i32 0, i32* %54, align 8, !dbg !1332, !tbaa !381
  store i32 1, i32* %53, align 4, !dbg !1334, !tbaa !378
  %55 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %52, i64 0, i32 5, i64 0, !dbg !1335
  store i32 0, i32* %55, align 8, !dbg !1336, !tbaa !429
  br label %231, !dbg !1337

; <label>:56:                                     ; preds = %23, %3
  %57 = phi i32 [ %8, %3 ], [ %25, %23 ]
  %58 = icmp slt i32 %57, 0, !dbg !1338
  %59 = lshr i32 %57, 31, !dbg !1340
  %60 = select i1 %58, %struct._Bigint* %1, %struct._Bigint* %2, !dbg !1340
  %61 = ptrtoint %struct._Bigint* %60 to i64
  %62 = bitcast %struct._Bigint* %60 to i8*
  %63 = select i1 %58, %struct._Bigint* %2, %struct._Bigint* %1, !dbg !1340
  %64 = bitcast %struct._Bigint* %63 to i8*
  %65 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %63, i64 0, i32 1, !dbg !1342
  %66 = load i32, i32* %65, align 8, !dbg !1342, !tbaa !371
  %67 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 13, !dbg !1345
  %68 = load %struct._Bigint**, %struct._Bigint*** %67, align 8, !dbg !1345, !tbaa !332
  %69 = icmp eq %struct._Bigint** %68, null, !dbg !1346
  br i1 %69, label %70, label %74, !dbg !1347

; <label>:70:                                     ; preds = %56
  %71 = tail call i8* @calloc(i64 8, i64 65) #6, !dbg !1348
  %72 = bitcast %struct._Bigint*** %67 to i8**, !dbg !1349
  store i8* %71, i8** %72, align 8, !dbg !1349, !tbaa !332
  %73 = bitcast i8* %71 to %struct._Bigint**, !dbg !1350
  br label %74, !dbg !1350

; <label>:74:                                     ; preds = %70, %56
  %75 = phi %struct._Bigint** [ %73, %70 ], [ %68, %56 ], !dbg !1351
  %76 = sext i32 %66 to i64, !dbg !1351
  %77 = getelementptr inbounds %struct._Bigint*, %struct._Bigint** %75, i64 %76, !dbg !1351
  %78 = load %struct._Bigint*, %struct._Bigint** %77, align 8, !dbg !1351, !tbaa !351
  %79 = icmp eq %struct._Bigint* %78, null, !dbg !1353
  br i1 %79, label %84, label %80, !dbg !1354

; <label>:80:                                     ; preds = %74
  %81 = bitcast %struct._Bigint* %78 to i64*, !dbg !1355
  %82 = load i64, i64* %81, align 8, !dbg !1355, !tbaa !357
  %83 = bitcast %struct._Bigint** %77 to i64*, !dbg !1356
  store i64 %82, i64* %83, align 8, !dbg !1356, !tbaa !351
  br label %96, !dbg !1357

; <label>:84:                                     ; preds = %74
  %85 = shl i32 1, %66, !dbg !1358
  %86 = add nsw i32 %85, -1, !dbg !1360
  %87 = sext i32 %86 to i64, !dbg !1360
  %88 = shl nsw i64 %87, 2, !dbg !1360
  %89 = add nsw i64 %88, 32, !dbg !1360
  %90 = tail call i8* @calloc(i64 1, i64 %89) #6, !dbg !1360
  %91 = bitcast i8* %90 to %struct._Bigint*, !dbg !1361
  %92 = getelementptr inbounds i8, i8* %90, i64 8, !dbg !1362
  %93 = bitcast i8* %92 to i32*, !dbg !1362
  store i32 %66, i32* %93, align 8, !dbg !1363, !tbaa !371
  %94 = getelementptr inbounds i8, i8* %90, i64 12, !dbg !1364
  %95 = bitcast i8* %94 to i32*, !dbg !1364
  store i32 %85, i32* %95, align 4, !dbg !1365, !tbaa !374
  br label %96

; <label>:96:                                     ; preds = %84, %80
  %97 = phi %struct._Bigint* [ %78, %80 ], [ %91, %84 ], !dbg !1366
  %98 = bitcast %struct._Bigint* %97 to i8*
  %99 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %97, i64 0, i32 4, !dbg !1367
  store i32 0, i32* %99, align 4, !dbg !1368, !tbaa !378
  %100 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %97, i64 0, i32 3, !dbg !1369
  store i32 %59, i32* %100, align 8, !dbg !1370, !tbaa !381
  %101 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %63, i64 0, i32 4, !dbg !1371
  %102 = load i32, i32* %101, align 4, !dbg !1371, !tbaa !378
  %103 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %63, i64 0, i32 5, i64 0, !dbg !1373
  %104 = sext i32 %102 to i64, !dbg !1375
  %105 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %60, i64 0, i32 4, !dbg !1377
  %106 = load i32, i32* %105, align 4, !dbg !1377, !tbaa !378
  %107 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %60, i64 0, i32 5, i64 0, !dbg !1379
  %108 = sext i32 %106 to i64, !dbg !1381
  %109 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %60, i64 0, i32 5, i64 %108, !dbg !1381
  %110 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %97, i64 0, i32 5, i64 0, !dbg !1383
  %111 = shl nsw i64 %108, 2, !dbg !1386
  %112 = add nsw i64 %111, 24, !dbg !1386
  %113 = getelementptr i8, i8* %62, i64 %112, !dbg !1386
  %114 = ptrtoint i8* %113 to i64
  %115 = getelementptr %struct._Bigint, %struct._Bigint* %60, i64 0, i32 5, i64 1, !dbg !1386
  %116 = ptrtoint i32* %115 to i64
  %117 = icmp ugt i64 %114, %116, !dbg !1386
  %118 = select i1 %117, i64 %114, i64 %116, !dbg !1386
  %119 = inttoptr i64 %118 to i8*
  %120 = sub i64 -25, %61, !dbg !1386
  %121 = getelementptr i8, i8* %119, i64 %120, !dbg !1386
  %122 = ptrtoint i8* %121 to i64
  %123 = add i64 %122, 28, !dbg !1386
  %124 = and i64 %123, -4, !dbg !1386
  %125 = getelementptr i8, i8* %64, i64 %124, !dbg !1386
  %126 = getelementptr i8, i8* %98, i64 %124, !dbg !1386
  br label %127, !dbg !1386

; <label>:127:                                    ; preds = %127, %96
  %128 = phi i32 [ 0, %96 ], [ %145, %127 ], !dbg !1387
  %129 = phi i32* [ %103, %96 ], [ %139, %127 ], !dbg !1387
  %130 = phi i32* [ %107, %96 ], [ %141, %127 ], !dbg !1387
  %131 = phi i32* [ %110, %96 ], [ %149, %127 ], !dbg !1387
  %132 = load i32, i32* %129, align 4, !dbg !1389, !tbaa !429
  %133 = and i32 %132, 65535, !dbg !1390
  %134 = load i32, i32* %130, align 4, !dbg !1391, !tbaa !429
  %135 = and i32 %134, 65535, !dbg !1392
  %136 = sub nsw i32 %133, %135, !dbg !1393
  %137 = add nsw i32 %136, %128, !dbg !1394
  %138 = ashr i32 %137, 16, !dbg !1396
  %139 = getelementptr inbounds i32, i32* %129, i64 1, !dbg !1397
  %140 = lshr i32 %132, 16, !dbg !1398
  %141 = getelementptr inbounds i32, i32* %130, i64 1, !dbg !1399
  %142 = lshr i32 %134, 16, !dbg !1400
  %143 = sub nsw i32 %140, %142, !dbg !1401
  %144 = add nsw i32 %138, %143, !dbg !1402
  %145 = ashr i32 %144, 16, !dbg !1404
  %146 = shl i32 %144, 16, !dbg !1405
  %147 = and i32 %137, 65535, !dbg !1405
  %148 = or i32 %146, %147, !dbg !1405
  %149 = getelementptr inbounds i32, i32* %131, i64 1, !dbg !1405
  store i32 %148, i32* %131, align 4, !dbg !1405, !tbaa !429
  %150 = icmp ult i32* %141, %109, !dbg !1406
  br i1 %150, label %127, label %151, !dbg !1407, !llvm.loop !1408

; <label>:151:                                    ; preds = %127
  %152 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %63, i64 0, i32 5, i64 %104, !dbg !1375
  %153 = bitcast i8* %125 to i32*
  %154 = bitcast i8* %126 to i32*
  %155 = icmp ugt i32* %152, %153, !dbg !1410
  br i1 %155, label %158, label %156, !dbg !1411

; <label>:156:                                    ; preds = %192, %151
  %157 = phi i32* [ %154, %151 ], [ %193, %192 ]
  br label %223, !dbg !1412

; <label>:158:                                    ; preds = %151
  %159 = ptrtoint i8* %125 to i64
  %160 = shl nsw i64 %104, 2, !dbg !1413
  %161 = add nsw i64 %160, 23, !dbg !1413
  %162 = sub i64 %161, %159, !dbg !1413
  %163 = getelementptr i8, i8* %64, i64 %162, !dbg !1413
  %164 = ptrtoint i8* %163 to i64
  %165 = lshr i64 %164, 2, !dbg !1413
  %166 = add nuw nsw i64 %165, 1, !dbg !1413
  %167 = shl nsw i64 %104, 2, !dbg !1413
  %168 = add nsw i64 %167, 23, !dbg !1413
  %169 = sub i64 %168, %124, !dbg !1413
  %170 = and i64 %169, 4, !dbg !1413
  %171 = icmp eq i64 %170, 0, !dbg !1413
  br i1 %171, label %172, label %187, !dbg !1413

; <label>:172:                                    ; preds = %158
  %173 = load i32, i32* %153, align 4, !dbg !1413, !tbaa !429
  %174 = and i32 %173, 65535, !dbg !1415
  %175 = add nsw i32 %174, %145, !dbg !1416
  %176 = ashr i32 %175, 16, !dbg !1417
  %177 = getelementptr inbounds i8, i8* %125, i64 4, !dbg !1418
  %178 = bitcast i8* %177 to i32*, !dbg !1418
  %179 = lshr i32 %173, 16, !dbg !1419
  %180 = add nsw i32 %176, %179, !dbg !1420
  %181 = ashr i32 %180, 16, !dbg !1421
  %182 = shl i32 %180, 16, !dbg !1422
  %183 = and i32 %175, 65535, !dbg !1422
  %184 = or i32 %182, %183, !dbg !1422
  %185 = getelementptr inbounds i8, i8* %126, i64 4, !dbg !1422
  %186 = bitcast i8* %185 to i32*, !dbg !1422
  store i32 %184, i32* %154, align 4, !dbg !1422, !tbaa !429
  br label %187, !dbg !1411

; <label>:187:                                    ; preds = %172, %158
  %188 = phi i32* [ %154, %158 ], [ %186, %172 ]
  %189 = phi i32* [ %153, %158 ], [ %178, %172 ]
  %190 = phi i32 [ %145, %158 ], [ %181, %172 ]
  %191 = icmp eq i64 %169, 3, !dbg !1413
  br i1 %191, label %192, label %194, !dbg !1413

; <label>:192:                                    ; preds = %194, %187
  %193 = getelementptr i32, i32* %154, i64 %166, !dbg !1413
  br label %156, !dbg !1412

; <label>:194:                                    ; preds = %187, %194
  %195 = phi i32* [ %221, %194 ], [ %188, %187 ]
  %196 = phi i32* [ %214, %194 ], [ %189, %187 ]
  %197 = phi i32 [ %217, %194 ], [ %190, %187 ]
  %198 = load i32, i32* %196, align 4, !dbg !1413, !tbaa !429
  %199 = and i32 %198, 65535, !dbg !1415
  %200 = add nsw i32 %199, %197, !dbg !1416
  %201 = ashr i32 %200, 16, !dbg !1417
  %202 = getelementptr inbounds i32, i32* %196, i64 1, !dbg !1418
  %203 = lshr i32 %198, 16, !dbg !1419
  %204 = add nsw i32 %201, %203, !dbg !1420
  %205 = ashr i32 %204, 16, !dbg !1421
  %206 = shl i32 %204, 16, !dbg !1422
  %207 = and i32 %200, 65535, !dbg !1422
  %208 = or i32 %206, %207, !dbg !1422
  %209 = getelementptr inbounds i32, i32* %195, i64 1, !dbg !1422
  store i32 %208, i32* %195, align 4, !dbg !1422, !tbaa !429
  %210 = load i32, i32* %202, align 4, !dbg !1413, !tbaa !429
  %211 = and i32 %210, 65535, !dbg !1415
  %212 = add nsw i32 %211, %205, !dbg !1416
  %213 = ashr i32 %212, 16, !dbg !1417
  %214 = getelementptr inbounds i32, i32* %196, i64 2, !dbg !1418
  %215 = lshr i32 %210, 16, !dbg !1419
  %216 = add nsw i32 %213, %215, !dbg !1420
  %217 = ashr i32 %216, 16, !dbg !1421
  %218 = shl i32 %216, 16, !dbg !1422
  %219 = and i32 %212, 65535, !dbg !1422
  %220 = or i32 %218, %219, !dbg !1422
  %221 = getelementptr inbounds i32, i32* %195, i64 2, !dbg !1422
  store i32 %220, i32* %209, align 4, !dbg !1422, !tbaa !429
  %222 = icmp ult i32* %214, %152, !dbg !1410
  br i1 %222, label %194, label %192, !dbg !1411, !llvm.loop !1423

; <label>:223:                                    ; preds = %156, %223
  %224 = phi i32 [ %229, %223 ], [ %102, %156 ], !dbg !1425
  %225 = phi i32* [ %226, %223 ], [ %157, %156 ], !dbg !1425
  %226 = getelementptr inbounds i32, i32* %225, i64 -1, !dbg !1412
  %227 = load i32, i32* %226, align 4, !dbg !1426, !tbaa !429
  %228 = icmp eq i32 %227, 0, !dbg !1427
  %229 = add nsw i32 %224, -1, !dbg !1428
  br i1 %228, label %223, label %230, !dbg !1429, !llvm.loop !1430

; <label>:230:                                    ; preds = %223
  store i32 %224, i32* %99, align 4, !dbg !1431, !tbaa !378
  br label %231, !dbg !1432

; <label>:231:                                    ; preds = %230, %51
  %232 = phi %struct._Bigint* [ %97, %230 ], [ %52, %51 ], !dbg !1433
  ret %struct._Bigint* %232, !dbg !1434
}

; Function Attrs: noredzone nounwind readnone
define dso_local double @__ulp(double) local_unnamed_addr #3 !dbg !1435 {
  %2 = bitcast double %0 to i64, !dbg !1450
  %3 = lshr i64 %2, 32, !dbg !1450
  %4 = trunc i64 %3 to i32, !dbg !1450
  %5 = and i32 %4, 2146435072, !dbg !1451
  %6 = icmp ugt i32 %5, 54525952, !dbg !1452
  br i1 %6, label %7, label %12, !dbg !1454

; <label>:7:                                      ; preds = %1
  %8 = add nsw i32 %5, -54525952, !dbg !1455
  %9 = zext i32 %8 to i64, !dbg !1457
  %10 = shl nuw i64 %9, 32, !dbg !1457
  %11 = bitcast i64 %10 to double, !dbg !1457
  br label %28, !dbg !1460

; <label>:12:                                     ; preds = %1
  %13 = sub nsw i32 54525952, %5, !dbg !1461
  %14 = ashr exact i32 %13, 20, !dbg !1463
  %15 = icmp slt i32 %13, 20971520, !dbg !1464
  br i1 %15, label %16, label %21, !dbg !1466

; <label>:16:                                     ; preds = %12
  %17 = lshr i32 524288, %14, !dbg !1467
  %18 = zext i32 %17 to i64, !dbg !1469
  %19 = shl nuw i64 %18, 32, !dbg !1469
  %20 = bitcast i64 %19 to double, !dbg !1469
  br label %28, !dbg !1470

; <label>:21:                                     ; preds = %12
  %22 = icmp sgt i32 %13, 52428800, !dbg !1471
  br i1 %22, label %28, label %23, !dbg !1473

; <label>:23:                                     ; preds = %21
  %24 = sub nsw i32 51, %14, !dbg !1474
  %25 = shl i32 1, %24, !dbg !1475
  %26 = zext i32 %25 to i64, !dbg !1473
  %27 = bitcast i64 %26 to double, !dbg !1473
  br label %28, !dbg !1473

; <label>:28:                                     ; preds = %23, %21, %16, %7
  %29 = phi double [ %11, %7 ], [ %20, %16 ], [ %27, %23 ], [ 4.940660e-324, %21 ], !dbg !1476
  ret double %29, !dbg !1477
}

; Function Attrs: noredzone nounwind
define dso_local double @__b2d(%struct._Bigint* readonly, i32* nocapture) local_unnamed_addr #0 !dbg !1478 {
  %3 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %0, i64 0, i32 5, i64 0, !dbg !1493
  %4 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %0, i64 0, i32 4, !dbg !1495
  %5 = load i32, i32* %4, align 4, !dbg !1495, !tbaa !378
  %6 = sext i32 %5 to i64, !dbg !1496
  %7 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %0, i64 0, i32 5, i64 %6, !dbg !1496
  %8 = getelementptr inbounds i32, i32* %7, i64 -1, !dbg !1498
  %9 = load i32, i32* %8, align 4, !dbg !1499, !tbaa !429
  %10 = icmp ugt i32 %9, 65535, !dbg !1504
  %11 = shl i32 %9, 16, !dbg !1505
  %12 = select i1 %10, i32 %9, i32 %11, !dbg !1506
  %13 = select i1 %10, i32 0, i32 16, !dbg !1506
  %14 = icmp ugt i32 %12, 16777215, !dbg !1507
  %15 = or i32 %13, 8, !dbg !1508
  %16 = shl i32 %12, 8, !dbg !1509
  %17 = select i1 %14, i32 %12, i32 %16, !dbg !1510
  %18 = select i1 %14, i32 %13, i32 %15, !dbg !1510
  %19 = icmp ugt i32 %17, 268435455, !dbg !1511
  %20 = or i32 %18, 4, !dbg !1512
  %21 = shl i32 %17, 4, !dbg !1513
  %22 = select i1 %19, i32 %17, i32 %21, !dbg !1514
  %23 = select i1 %19, i32 %18, i32 %20, !dbg !1514
  %24 = icmp ugt i32 %22, 1073741823, !dbg !1515
  %25 = or i32 %23, 2, !dbg !1516
  %26 = shl i32 %22, 2, !dbg !1517
  %27 = select i1 %24, i32 %22, i32 %26, !dbg !1518
  %28 = select i1 %24, i32 %23, i32 %25, !dbg !1518
  %29 = icmp slt i32 %27, 0, !dbg !1519
  br i1 %29, label %35, label %30, !dbg !1520

; <label>:30:                                     ; preds = %2
  %31 = add nsw i32 %28, 1, !dbg !1521
  %32 = and i32 %27, 1073741824, !dbg !1522
  %33 = icmp eq i32 %32, 0, !dbg !1522
  br i1 %33, label %34, label %35, !dbg !1523

; <label>:34:                                     ; preds = %30
  store i32 0, i32* %1, align 4, !dbg !1525, !tbaa !429
  br label %52, !dbg !1526

; <label>:35:                                     ; preds = %2, %30
  %36 = phi i32 [ %28, %2 ], [ %31, %30 ], !dbg !1527
  %37 = sub nsw i32 32, %36, !dbg !1528
  store i32 %37, i32* %1, align 4, !dbg !1525, !tbaa !429
  %38 = icmp slt i32 %36, 11, !dbg !1529
  br i1 %38, label %39, label %52, !dbg !1526

; <label>:39:                                     ; preds = %35
  %40 = sub nsw i32 11, %36, !dbg !1531
  %41 = lshr i32 %9, %40, !dbg !1533
  %42 = icmp ugt i32* %8, %3, !dbg !1534
  br i1 %42, label %43, label %46, !dbg !1535

; <label>:43:                                     ; preds = %39
  %44 = getelementptr inbounds i32, i32* %7, i64 -2, !dbg !1536
  %45 = load i32, i32* %44, align 4, !dbg !1537, !tbaa !429
  br label %46, !dbg !1535

; <label>:46:                                     ; preds = %39, %43
  %47 = phi i32 [ %45, %43 ], [ 0, %39 ], !dbg !1535
  %48 = add nsw i32 %36, 21, !dbg !1539
  %49 = shl i32 %9, %48, !dbg !1540
  %50 = lshr i32 %47, %40, !dbg !1541
  %51 = or i32 %50, %49, !dbg !1542
  br label %77, !dbg !1543

; <label>:52:                                     ; preds = %34, %35
  %53 = phi i32 [ 32, %34 ], [ %36, %35 ]
  %54 = icmp ugt i32* %8, %3, !dbg !1544
  br i1 %54, label %55, label %58, !dbg !1545

; <label>:55:                                     ; preds = %52
  %56 = getelementptr inbounds i32, i32* %7, i64 -2, !dbg !1546
  %57 = load i32, i32* %56, align 4, !dbg !1547, !tbaa !429
  br label %58, !dbg !1545

; <label>:58:                                     ; preds = %52, %55
  %59 = phi i32* [ %56, %55 ], [ %8, %52 ], !dbg !1548
  %60 = phi i32 [ %57, %55 ], [ 0, %52 ], !dbg !1545
  %61 = add nsw i32 %53, -11, !dbg !1550
  %62 = icmp eq i32 %61, 0, !dbg !1550
  br i1 %62, label %77, label %63, !dbg !1552

; <label>:63:                                     ; preds = %58
  %64 = shl i32 %9, %61, !dbg !1553
  %65 = sub i32 43, %53, !dbg !1555
  %66 = lshr i32 %60, %65, !dbg !1556
  %67 = or i32 %64, %66, !dbg !1557
  %68 = icmp ugt i32* %59, %3, !dbg !1558
  br i1 %68, label %69, label %72, !dbg !1559

; <label>:69:                                     ; preds = %63
  %70 = getelementptr inbounds i32, i32* %59, i64 -1, !dbg !1560
  %71 = load i32, i32* %70, align 4, !dbg !1561, !tbaa !429
  br label %72, !dbg !1559

; <label>:72:                                     ; preds = %63, %69
  %73 = phi i32 [ %71, %69 ], [ 0, %63 ], !dbg !1559
  %74 = shl i32 %60, %61, !dbg !1562
  %75 = lshr i32 %73, %65, !dbg !1563
  %76 = or i32 %75, %74, !dbg !1564
  br label %77, !dbg !1566

; <label>:77:                                     ; preds = %58, %72, %46
  %78 = phi i32 [ %76, %72 ], [ %51, %46 ], [ %60, %58 ]
  %79 = phi i32 [ %67, %72 ], [ %41, %46 ], [ %9, %58 ]
  %80 = or i32 %79, 1072693248, !dbg !1567
  %81 = zext i32 %80 to i64, !dbg !1567
  %82 = shl nuw i64 %81, 32, !dbg !1567
  %83 = zext i32 %78 to i64, !dbg !1567
  %84 = or i64 %82, %83, !dbg !1567
  %85 = bitcast i64 %84 to double, !dbg !1568
  ret double %85, !dbg !1570
}

; Function Attrs: noredzone nounwind
define dso_local %struct._Bigint* @__d2b(%struct._reent* nocapture, double, i32* nocapture, i32* nocapture) local_unnamed_addr #0 !dbg !1571 {
  %5 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 13, !dbg !1591
  %6 = load %struct._Bigint**, %struct._Bigint*** %5, align 8, !dbg !1591, !tbaa !332
  %7 = icmp eq %struct._Bigint** %6, null, !dbg !1592
  br i1 %7, label %8, label %13, !dbg !1593

; <label>:8:                                      ; preds = %4
  %9 = tail call i8* @calloc(i64 8, i64 65) #6, !dbg !1594
  %10 = bitcast %struct._Bigint*** %5 to i8**, !dbg !1595
  store i8* %9, i8** %10, align 8, !dbg !1595, !tbaa !332
  %11 = icmp eq i8* %9, null, !dbg !1596
  %12 = bitcast i8* %9 to %struct._Bigint**, !dbg !1597
  br i1 %11, label %35, label %13, !dbg !1597

; <label>:13:                                     ; preds = %8, %4
  %14 = phi %struct._Bigint** [ %12, %8 ], [ %6, %4 ], !dbg !1598
  %15 = getelementptr inbounds %struct._Bigint*, %struct._Bigint** %14, i64 1, !dbg !1598
  %16 = load %struct._Bigint*, %struct._Bigint** %15, align 8, !dbg !1598, !tbaa !351
  %17 = icmp eq %struct._Bigint* %16, null, !dbg !1600
  br i1 %17, label %22, label %18, !dbg !1601

; <label>:18:                                     ; preds = %13
  %19 = bitcast %struct._Bigint* %16 to i64*, !dbg !1602
  %20 = load i64, i64* %19, align 8, !dbg !1602, !tbaa !357
  %21 = bitcast %struct._Bigint** %15 to i64*, !dbg !1603
  store i64 %20, i64* %21, align 8, !dbg !1603, !tbaa !351
  br label %31, !dbg !1604

; <label>:22:                                     ; preds = %13
  %23 = tail call i8* @calloc(i64 1, i64 36) #6, !dbg !1606
  %24 = icmp eq i8* %23, null, !dbg !1607
  br i1 %24, label %35, label %25, !dbg !1608

; <label>:25:                                     ; preds = %22
  %26 = bitcast i8* %23 to %struct._Bigint*, !dbg !1609
  %27 = getelementptr inbounds i8, i8* %23, i64 8, !dbg !1610
  %28 = bitcast i8* %27 to i32*, !dbg !1610
  store i32 1, i32* %28, align 8, !dbg !1611, !tbaa !371
  %29 = getelementptr inbounds i8, i8* %23, i64 12, !dbg !1612
  %30 = bitcast i8* %29 to i32*, !dbg !1612
  store i32 2, i32* %30, align 4, !dbg !1613, !tbaa !374
  br label %31

; <label>:31:                                     ; preds = %25, %18
  %32 = phi %struct._Bigint* [ %16, %18 ], [ %26, %25 ], !dbg !1614
  %33 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %32, i64 0, i32 4, !dbg !1615
  store i32 0, i32* %33, align 4, !dbg !1616, !tbaa !378
  %34 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %32, i64 0, i32 3, !dbg !1617
  store i32 0, i32* %34, align 8, !dbg !1618, !tbaa !381
  br label %35, !dbg !1619

; <label>:35:                                     ; preds = %8, %22, %31
  %36 = phi %struct._Bigint* [ %32, %31 ], [ null, %8 ], [ null, %22 ], !dbg !1620
  %37 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %36, i64 0, i32 5, i64 0, !dbg !1622
  %38 = bitcast double %1 to i64, !dbg !1624
  %39 = lshr i64 %38, 32, !dbg !1624
  %40 = trunc i64 %39 to i32, !dbg !1624
  %41 = and i32 %40, 1048575, !dbg !1625
  %42 = lshr i64 %38, 52, !dbg !1627
  %43 = trunc i64 %42 to i32, !dbg !1629
  %44 = and i32 %43, 2047, !dbg !1629
  %45 = icmp ne i32 %44, 0, !dbg !1631
  %46 = or i32 %41, 1048576, !dbg !1632
  %47 = select i1 %45, i32 %46, i32 %41, !dbg !1633
  %48 = trunc i64 %38 to i32, !dbg !1634
  %49 = icmp eq i32 %48, 0, !dbg !1634
  br i1 %49, label %113, label %50, !dbg !1636

; <label>:50:                                     ; preds = %35
  %51 = and i32 %48, 7, !dbg !1641
  %52 = icmp eq i32 %51, 0, !dbg !1641
  br i1 %52, label %63, label %53, !dbg !1642

; <label>:53:                                     ; preds = %50
  %54 = and i32 %48, 1, !dbg !1643
  %55 = icmp eq i32 %54, 0, !dbg !1643
  br i1 %55, label %56, label %104, !dbg !1644

; <label>:56:                                     ; preds = %53
  %57 = and i32 %48, 2, !dbg !1645
  %58 = icmp eq i32 %57, 0, !dbg !1645
  br i1 %58, label %61, label %59, !dbg !1646

; <label>:59:                                     ; preds = %56
  %60 = lshr i32 %48, 1, !dbg !1647
  br label %97, !dbg !1648

; <label>:61:                                     ; preds = %56
  %62 = lshr i32 %48, 2, !dbg !1649
  br label %97, !dbg !1650

; <label>:63:                                     ; preds = %50
  %64 = and i32 %48, 65535, !dbg !1652
  %65 = icmp eq i32 %64, 0, !dbg !1652
  %66 = lshr i32 %48, 16, !dbg !1653
  %67 = select i1 %65, i32 16, i32 0, !dbg !1654
  %68 = select i1 %65, i32 %66, i32 %48, !dbg !1654
  %69 = and i32 %68, 255, !dbg !1655
  %70 = icmp eq i32 %69, 0, !dbg !1655
  %71 = or i32 %67, 8, !dbg !1656
  %72 = lshr i32 %68, 8, !dbg !1657
  %73 = select i1 %70, i32 %71, i32 %67, !dbg !1658
  %74 = select i1 %70, i32 %72, i32 %68, !dbg !1658
  %75 = and i32 %74, 15, !dbg !1659
  %76 = icmp eq i32 %75, 0, !dbg !1659
  %77 = or i32 %73, 4, !dbg !1660
  %78 = lshr i32 %74, 4, !dbg !1661
  %79 = select i1 %76, i32 %77, i32 %73, !dbg !1662
  %80 = select i1 %76, i32 %78, i32 %74, !dbg !1662
  %81 = and i32 %80, 3, !dbg !1663
  %82 = icmp eq i32 %81, 0, !dbg !1663
  %83 = or i32 %79, 2, !dbg !1664
  %84 = lshr i32 %80, 2, !dbg !1665
  %85 = select i1 %82, i32 %83, i32 %79, !dbg !1666
  %86 = select i1 %82, i32 %84, i32 %80, !dbg !1666
  %87 = and i32 %86, 1, !dbg !1667
  %88 = icmp eq i32 %87, 0, !dbg !1667
  br i1 %88, label %89, label %93, !dbg !1668

; <label>:89:                                     ; preds = %63
  %90 = add nsw i32 %85, 1, !dbg !1669
  %91 = lshr i32 %86, 1, !dbg !1670
  %92 = icmp eq i32 %91, 0, !dbg !1671
  br i1 %92, label %97, label %93, !dbg !1672

; <label>:93:                                     ; preds = %63, %89
  %94 = phi i32 [ %85, %63 ], [ %90, %89 ], !dbg !1673
  %95 = phi i32 [ %86, %63 ], [ %91, %89 ], !dbg !1673
  %96 = icmp eq i32 %94, 0, !dbg !1675
  br i1 %96, label %104, label %97, !dbg !1677

; <label>:97:                                     ; preds = %89, %61, %59, %93
  %98 = phi i32 [ %94, %93 ], [ 32, %89 ], [ 2, %61 ], [ 1, %59 ]
  %99 = phi i32 [ %95, %93 ], [ %48, %89 ], [ %62, %61 ], [ %60, %59 ]
  %100 = sub nsw i32 32, %98, !dbg !1678
  %101 = shl i32 %47, %100, !dbg !1680
  %102 = or i32 %101, %99, !dbg !1681
  store i32 %102, i32* %37, align 4, !dbg !1682, !tbaa !429
  %103 = lshr i32 %47, %98, !dbg !1683
  br label %106, !dbg !1684

; <label>:104:                                    ; preds = %53, %93
  %105 = phi i32 [ %95, %93 ], [ %48, %53 ]
  store i32 %105, i32* %37, align 4, !dbg !1685, !tbaa !429
  br label %106

; <label>:106:                                    ; preds = %104, %97
  %107 = phi i32 [ 0, %104 ], [ %98, %97 ]
  %108 = phi i32 [ %47, %104 ], [ %103, %97 ], !dbg !1686
  %109 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %36, i64 0, i32 5, i64 1, !dbg !1687
  store i32 %108, i32* %109, align 4, !dbg !1688, !tbaa !429
  %110 = icmp eq i32 %108, 0, !dbg !1689
  %111 = select i1 %110, i32 1, i32 2, !dbg !1689
  %112 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %36, i64 0, i32 4, !dbg !1690
  store i32 %111, i32* %112, align 4, !dbg !1691, !tbaa !378
  br label %164, !dbg !1693

; <label>:113:                                    ; preds = %35
  %114 = and i32 %47, 7, !dbg !1697
  %115 = icmp eq i32 %114, 0, !dbg !1697
  br i1 %115, label %126, label %116, !dbg !1698

; <label>:116:                                    ; preds = %113
  %117 = and i32 %47, 1, !dbg !1699
  %118 = icmp eq i32 %117, 0, !dbg !1699
  br i1 %118, label %119, label %159, !dbg !1700

; <label>:119:                                    ; preds = %116
  %120 = and i32 %47, 2, !dbg !1701
  %121 = icmp eq i32 %120, 0, !dbg !1701
  br i1 %121, label %124, label %122, !dbg !1702

; <label>:122:                                    ; preds = %119
  %123 = lshr i32 %47, 1, !dbg !1703
  br label %159, !dbg !1704

; <label>:124:                                    ; preds = %119
  %125 = lshr i32 %47, 2, !dbg !1705
  br label %159, !dbg !1706

; <label>:126:                                    ; preds = %113
  %127 = and i32 %47, 65535, !dbg !1708
  %128 = icmp eq i32 %127, 0, !dbg !1708
  %129 = lshr i32 %47, 16, !dbg !1709
  %130 = select i1 %128, i32 16, i32 0, !dbg !1710
  %131 = select i1 %128, i32 %129, i32 %47, !dbg !1710
  %132 = and i32 %131, 255, !dbg !1711
  %133 = icmp eq i32 %132, 0, !dbg !1711
  %134 = or i32 %130, 8, !dbg !1712
  %135 = lshr i32 %131, 8, !dbg !1713
  %136 = select i1 %133, i32 %134, i32 %130, !dbg !1714
  %137 = select i1 %133, i32 %135, i32 %131, !dbg !1714
  %138 = and i32 %137, 15, !dbg !1715
  %139 = icmp eq i32 %138, 0, !dbg !1715
  %140 = or i32 %136, 4, !dbg !1716
  %141 = lshr i32 %137, 4, !dbg !1717
  %142 = select i1 %139, i32 %140, i32 %136, !dbg !1718
  %143 = select i1 %139, i32 %141, i32 %137, !dbg !1718
  %144 = and i32 %143, 3, !dbg !1719
  %145 = icmp eq i32 %144, 0, !dbg !1719
  %146 = or i32 %142, 2, !dbg !1720
  %147 = lshr i32 %143, 2, !dbg !1721
  %148 = select i1 %145, i32 %146, i32 %142, !dbg !1722
  %149 = select i1 %145, i32 %147, i32 %143, !dbg !1722
  %150 = and i32 %149, 1, !dbg !1723
  %151 = icmp eq i32 %150, 0, !dbg !1723
  br i1 %151, label %152, label %156, !dbg !1724

; <label>:152:                                    ; preds = %126
  %153 = add nsw i32 %148, 1, !dbg !1725
  %154 = lshr i32 %149, 1, !dbg !1726
  %155 = icmp eq i32 %154, 0, !dbg !1727
  br i1 %155, label %159, label %156, !dbg !1728

; <label>:156:                                    ; preds = %152, %126
  %157 = phi i32 [ %148, %126 ], [ %153, %152 ], !dbg !1729
  %158 = phi i32 [ %149, %126 ], [ %154, %152 ], !dbg !1729
  br label %159, !dbg !1730

; <label>:159:                                    ; preds = %116, %122, %124, %152, %156
  %160 = phi i32 [ %47, %152 ], [ %158, %156 ], [ %125, %124 ], [ %123, %122 ], [ %47, %116 ], !dbg !1731
  %161 = phi i32 [ 32, %152 ], [ %157, %156 ], [ 2, %124 ], [ 1, %122 ], [ 0, %116 ], !dbg !1732
  store i32 %160, i32* %37, align 4, !dbg !1733, !tbaa !429
  %162 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %36, i64 0, i32 4, !dbg !1734
  store i32 1, i32* %162, align 4, !dbg !1735, !tbaa !378
  %163 = add nsw i32 %161, 32, !dbg !1736
  br label %164

; <label>:164:                                    ; preds = %159, %106
  %165 = phi i32 [ %111, %106 ], [ 1, %159 ], !dbg !1731
  %166 = phi i32 [ %107, %106 ], [ %163, %159 ], !dbg !1731
  %167 = add i32 %166, %44, !dbg !1737
  br i1 %45, label %168, label %171, !dbg !1740

; <label>:168:                                    ; preds = %164
  %169 = add i32 %167, -1075, !dbg !1741
  store i32 %169, i32* %2, align 4, !dbg !1743, !tbaa !429
  %170 = sub nsw i32 53, %166, !dbg !1744
  br label %207, !dbg !1745

; <label>:171:                                    ; preds = %164
  %172 = add i32 %167, -1074, !dbg !1746
  store i32 %172, i32* %2, align 4, !dbg !1747, !tbaa !429
  %173 = shl nuw nsw i32 %165, 5, !dbg !1748
  %174 = add nsw i32 %165, -1, !dbg !1749
  %175 = sext i32 %174 to i64, !dbg !1750
  %176 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %36, i64 0, i32 5, i64 %175, !dbg !1750
  %177 = load i32, i32* %176, align 4, !dbg !1750, !tbaa !429
  %178 = icmp ugt i32 %177, 65535, !dbg !1754
  %179 = shl i32 %177, 16, !dbg !1755
  %180 = select i1 %178, i32 %177, i32 %179, !dbg !1756
  %181 = select i1 %178, i32 0, i32 16, !dbg !1756
  %182 = icmp ugt i32 %180, 16777215, !dbg !1757
  %183 = or i32 %181, 8, !dbg !1758
  %184 = shl i32 %180, 8, !dbg !1759
  %185 = select i1 %182, i32 %180, i32 %184, !dbg !1760
  %186 = select i1 %182, i32 %181, i32 %183, !dbg !1760
  %187 = icmp ugt i32 %185, 268435455, !dbg !1761
  %188 = or i32 %186, 4, !dbg !1762
  %189 = shl i32 %185, 4, !dbg !1763
  %190 = select i1 %187, i32 %185, i32 %189, !dbg !1764
  %191 = select i1 %187, i32 %186, i32 %188, !dbg !1764
  %192 = icmp ugt i32 %190, 1073741823, !dbg !1765
  %193 = or i32 %191, 2, !dbg !1766
  %194 = shl i32 %190, 2, !dbg !1767
  %195 = select i1 %192, i32 %190, i32 %194, !dbg !1768
  %196 = select i1 %192, i32 %191, i32 %193, !dbg !1768
  %197 = icmp slt i32 %195, 0, !dbg !1769
  br i1 %197, label %202, label %198, !dbg !1770

; <label>:198:                                    ; preds = %171
  %199 = add nsw i32 %196, 1, !dbg !1771
  %200 = and i32 %195, 1073741824, !dbg !1772
  %201 = icmp eq i32 %200, 0, !dbg !1772
  br i1 %201, label %204, label %202, !dbg !1773

; <label>:202:                                    ; preds = %198, %171
  %203 = phi i32 [ %196, %171 ], [ %199, %198 ], !dbg !1774
  br label %204, !dbg !1775

; <label>:204:                                    ; preds = %198, %202
  %205 = phi i32 [ %203, %202 ], [ 32, %198 ], !dbg !1776
  %206 = sub nsw i32 %173, %205, !dbg !1777
  br label %207

; <label>:207:                                    ; preds = %204, %168
  %208 = phi i32 [ %206, %204 ], [ %170, %168 ]
  store i32 %208, i32* %3, align 4, !dbg !1778, !tbaa !429
  ret %struct._Bigint* %36, !dbg !1779
}

; Function Attrs: noredzone nounwind
define dso_local double @__ratio(%struct._Bigint*, %struct._Bigint*) local_unnamed_addr #0 !dbg !1780 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = bitcast i32* %3 to i8*, !dbg !1792
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #7, !dbg !1792
  %6 = bitcast i32* %4 to i8*, !dbg !1792
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #7, !dbg !1792
  %7 = call double @__b2d(%struct._Bigint* %0, i32* nonnull %3) #8, !dbg !1794
  %8 = call double @__b2d(%struct._Bigint* %1, i32* nonnull %4) #8, !dbg !1797
  %9 = load i32, i32* %3, align 4, !dbg !1799, !tbaa !429
  %10 = load i32, i32* %4, align 4, !dbg !1800, !tbaa !429
  %11 = sub nsw i32 %9, %10, !dbg !1801
  %12 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %0, i64 0, i32 4, !dbg !1802
  %13 = load i32, i32* %12, align 4, !dbg !1802, !tbaa !378
  %14 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %1, i64 0, i32 4, !dbg !1803
  %15 = load i32, i32* %14, align 4, !dbg !1803, !tbaa !378
  %16 = sub nsw i32 %13, %15, !dbg !1804
  %17 = shl nsw i32 %16, 5, !dbg !1805
  %18 = add nsw i32 %17, %11, !dbg !1806
  %19 = icmp sgt i32 %18, 0, !dbg !1808
  %20 = shl i32 %18, 20, !dbg !1810
  br i1 %19, label %21, label %31, !dbg !1812

; <label>:21:                                     ; preds = %2
  %22 = bitcast double %7 to i64, !dbg !1813
  %23 = lshr i64 %22, 32, !dbg !1813
  %24 = trunc i64 %23 to i32, !dbg !1813
  %25 = add i32 %20, %24, !dbg !1813
  %26 = zext i32 %25 to i64, !dbg !1813
  %27 = shl nuw i64 %26, 32, !dbg !1813
  %28 = and i64 %22, 4294967295, !dbg !1813
  %29 = or i64 %27, %28, !dbg !1813
  %30 = bitcast i64 %29 to double, !dbg !1813
  br label %41, !dbg !1814

; <label>:31:                                     ; preds = %2
  %32 = bitcast double %8 to i64, !dbg !1815
  %33 = lshr i64 %32, 32, !dbg !1815
  %34 = trunc i64 %33 to i32, !dbg !1815
  %35 = sub i32 %34, %20, !dbg !1815
  %36 = zext i32 %35 to i64, !dbg !1815
  %37 = shl nuw i64 %36, 32, !dbg !1815
  %38 = and i64 %32, 4294967295, !dbg !1815
  %39 = or i64 %37, %38, !dbg !1815
  %40 = bitcast i64 %39 to double, !dbg !1815
  br label %41

; <label>:41:                                     ; preds = %31, %21
  %42 = phi double [ %30, %21 ], [ %7, %31 ], !dbg !1816
  %43 = phi double [ %8, %21 ], [ %40, %31 ], !dbg !1810
  %44 = fdiv double %42, %43, !dbg !1817
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #7, !dbg !1818
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #7, !dbg !1818
  ret double %44, !dbg !1819
}

; Function Attrs: noredzone nounwind readnone
define dso_local double @_mprec_log10(i32) local_unnamed_addr #3 !dbg !1820 {
  %2 = icmp slt i32 %0, 24, !dbg !1828
  br i1 %2, label %3, label %7, !dbg !1830

; <label>:3:                                      ; preds = %1
  %4 = sext i32 %0 to i64, !dbg !1831
  %5 = getelementptr inbounds [25 x double], [25 x double]* @__mprec_tens, i64 0, i64 %4, !dbg !1831
  %6 = load double, double* %5, align 8, !dbg !1831, !tbaa !1832
  br label %13, !dbg !1834

; <label>:7:                                      ; preds = %1, %7
  %8 = phi double [ %10, %7 ], [ 1.000000e+00, %1 ]
  %9 = phi i32 [ %11, %7 ], [ %0, %1 ]
  %10 = fmul double %8, 1.000000e+01, !dbg !1835
  %11 = add nsw i32 %9, -1, !dbg !1837
  %12 = icmp sgt i32 %9, 1, !dbg !1838
  br i1 %12, label %7, label %13, !dbg !1839, !llvm.loop !1840

; <label>:13:                                     ; preds = %7, %3
  %14 = phi double [ %6, %3 ], [ %10, %7 ], !dbg !1842
  ret double %14, !dbg !1843
}

; Function Attrs: noredzone nounwind
define dso_local void @__copybits(i32*, i32, %struct._Bigint* readonly) local_unnamed_addr #0 !dbg !1844 {
  %4 = bitcast i32* %0 to i8*
  %5 = bitcast %struct._Bigint* %2 to i8*
  %6 = ptrtoint %struct._Bigint* %2 to i64
  %7 = add nsw i32 %1, -1, !dbg !1855
  %8 = ashr i32 %7, 5, !dbg !1856
  %9 = sext i32 %8 to i64, !dbg !1857
  %10 = getelementptr inbounds i32, i32* %0, i64 %9, !dbg !1857
  %11 = getelementptr inbounds i32, i32* %10, i64 1, !dbg !1858
  %12 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %2, i64 0, i32 4, !dbg !1860
  %13 = load i32, i32* %12, align 4, !dbg !1860, !tbaa !378
  %14 = sext i32 %13 to i64, !dbg !1861
  %15 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %2, i64 0, i32 5, i64 %14, !dbg !1861
  %16 = icmp sgt i32 %13, 0, !dbg !1863
  br i1 %16, label %17, label %187, !dbg !1864

; <label>:17:                                     ; preds = %3
  %18 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %2, i64 0, i32 5, i64 0, !dbg !1865
  %19 = shl nsw i64 %14, 2, !dbg !1867
  %20 = add nsw i64 %19, 24, !dbg !1867
  %21 = getelementptr i8, i8* %5, i64 %20, !dbg !1867
  %22 = ptrtoint i8* %21 to i64
  %23 = getelementptr %struct._Bigint, %struct._Bigint* %2, i64 0, i32 5, i64 1, !dbg !1867
  %24 = ptrtoint i32* %23 to i64
  %25 = icmp ugt i64 %22, %24, !dbg !1867
  %26 = select i1 %25, i64 %22, i64 %24, !dbg !1867
  %27 = inttoptr i64 %26 to i8*
  %28 = sub i64 -25, %6, !dbg !1867
  %29 = getelementptr i8, i8* %27, i64 %28, !dbg !1867
  %30 = ptrtoint i8* %29 to i64
  %31 = lshr i64 %30, 2, !dbg !1867
  %32 = add nuw nsw i64 %31, 1, !dbg !1867
  %33 = shl nsw i64 %14, 2, !dbg !1867
  %34 = add nsw i64 %33, 24, !dbg !1867
  %35 = getelementptr i8, i8* %5, i64 %34, !dbg !1867
  %36 = ptrtoint i8* %35 to i64
  %37 = getelementptr %struct._Bigint, %struct._Bigint* %2, i64 0, i32 5, i64 1, !dbg !1867
  %38 = ptrtoint i32* %37 to i64
  %39 = icmp ugt i64 %36, %38, !dbg !1867
  %40 = select i1 %39, i64 %36, i64 %38, !dbg !1867
  %41 = inttoptr i64 %40 to i8*
  %42 = sub i64 -25, %6, !dbg !1867
  %43 = getelementptr i8, i8* %41, i64 %42, !dbg !1867
  %44 = ptrtoint i8* %43 to i64
  %45 = lshr i64 %44, 2, !dbg !1867
  %46 = add nuw nsw i64 %45, 1, !dbg !1867
  %47 = icmp ult i64 %46, 8, !dbg !1867
  br i1 %47, label %48, label %81, !dbg !1867

; <label>:48:                                     ; preds = %183, %81, %17
  %49 = phi i32* [ %0, %81 ], [ %0, %17 ], [ %106, %183 ]
  %50 = phi i32* [ %18, %81 ], [ %18, %17 ], [ %107, %183 ]
  %51 = ptrtoint i32* %50 to i64
  %52 = shl nsw i64 %14, 2, !dbg !1867
  %53 = add nsw i64 %52, 24, !dbg !1867
  %54 = getelementptr i8, i8* %5, i64 %53, !dbg !1867
  %55 = ptrtoint i8* %54 to i64
  %56 = getelementptr i32, i32* %50, i64 1, !dbg !1867
  %57 = ptrtoint i32* %56 to i64
  %58 = icmp ugt i64 %55, %57, !dbg !1867
  %59 = select i1 %58, i64 %55, i64 %57, !dbg !1867
  %60 = inttoptr i64 %59 to i8*
  %61 = xor i64 %51, -1, !dbg !1867
  %62 = getelementptr i8, i8* %60, i64 %61, !dbg !1867
  %63 = ptrtoint i8* %62 to i64
  %64 = lshr i64 %63, 2, !dbg !1867
  %65 = add nuw nsw i64 %64, 1, !dbg !1867
  %66 = and i64 %65, 7, !dbg !1867
  %67 = icmp eq i64 %66, 0, !dbg !1867
  br i1 %67, label %77, label %68, !dbg !1867

; <label>:68:                                     ; preds = %48, %68
  %69 = phi i32* [ %74, %68 ], [ %49, %48 ]
  %70 = phi i32* [ %72, %68 ], [ %50, %48 ]
  %71 = phi i64 [ %75, %68 ], [ %66, %48 ]
  %72 = getelementptr inbounds i32, i32* %70, i64 1, !dbg !1867
  %73 = load i32, i32* %70, align 4, !dbg !1868, !tbaa !429
  %74 = getelementptr inbounds i32, i32* %69, i64 1, !dbg !1869
  store i32 %73, i32* %69, align 4, !dbg !1870, !tbaa !429
  %75 = add i64 %71, -1, !dbg !1864
  %76 = icmp eq i64 %75, 0, !dbg !1864
  br i1 %76, label %77, label %68, !dbg !1864, !llvm.loop !1871

; <label>:77:                                     ; preds = %68, %48
  %78 = phi i32* [ %49, %48 ], [ %74, %68 ]
  %79 = phi i32* [ %50, %48 ], [ %72, %68 ]
  %80 = icmp ult i8* %62, inttoptr (i64 28 to i8*), !dbg !1867
  br i1 %80, label %185, label %273, !dbg !1867

; <label>:81:                                     ; preds = %17
  %82 = shl nsw i64 %14, 2, !dbg !1867
  %83 = add nsw i64 %82, 24, !dbg !1867
  %84 = getelementptr i8, i8* %5, i64 %83, !dbg !1867
  %85 = ptrtoint i8* %84 to i64
  %86 = getelementptr %struct._Bigint, %struct._Bigint* %2, i64 0, i32 5, i64 1, !dbg !1867
  %87 = ptrtoint i32* %86 to i64
  %88 = icmp ugt i64 %85, %87, !dbg !1867
  %89 = select i1 %88, i64 %85, i64 %87, !dbg !1867
  %90 = inttoptr i64 %89 to i8*
  %91 = sub i64 -25, %6, !dbg !1867
  %92 = getelementptr i8, i8* %90, i64 %91, !dbg !1867
  %93 = ptrtoint i8* %92 to i64
  %94 = lshr i64 %93, 2, !dbg !1867
  %95 = add nuw nsw i64 %94, 1, !dbg !1867
  %96 = getelementptr i32, i32* %0, i64 %95, !dbg !1867
  %97 = getelementptr %struct._Bigint, %struct._Bigint* %2, i64 0, i32 5, i64 0, !dbg !1867
  %98 = add i64 %93, 28, !dbg !1867
  %99 = and i64 %98, -4, !dbg !1867
  %100 = getelementptr i8, i8* %5, i64 %99, !dbg !1867
  %101 = icmp ugt i8* %100, %4, !dbg !1867
  %102 = icmp ult i32* %97, %96, !dbg !1867
  %103 = and i1 %101, %102, !dbg !1867
  br i1 %103, label %48, label %104, !dbg !1867

; <label>:104:                                    ; preds = %81
  %105 = and i64 %46, 9223372036854775800, !dbg !1867
  %106 = getelementptr i32, i32* %0, i64 %105, !dbg !1867
  %107 = getelementptr %struct._Bigint, %struct._Bigint* %2, i64 0, i32 5, i64 %105, !dbg !1867
  %108 = add nsw i64 %105, -8, !dbg !1867
  %109 = lshr exact i64 %108, 3, !dbg !1867
  %110 = add nuw nsw i64 %109, 1, !dbg !1867
  %111 = and i64 %110, 3, !dbg !1867
  %112 = icmp ult i64 %108, 24, !dbg !1867
  br i1 %112, label %164, label %113, !dbg !1867

; <label>:113:                                    ; preds = %104
  %114 = sub nsw i64 %110, %111, !dbg !1867
  br label %115, !dbg !1867

; <label>:115:                                    ; preds = %115, %113
  %116 = phi i64 [ 0, %113 ], [ %161, %115 ]
  %117 = phi i64 [ %114, %113 ], [ %162, %115 ]
  %118 = getelementptr i32, i32* %0, i64 %116
  %119 = getelementptr %struct._Bigint, %struct._Bigint* %2, i64 0, i32 5, i64 %116
  %120 = bitcast i32* %119 to <4 x i32>*, !dbg !1868
  %121 = load <4 x i32>, <4 x i32>* %120, align 4, !dbg !1868, !tbaa !429, !alias.scope !1872
  %122 = getelementptr i32, i32* %119, i64 4, !dbg !1868
  %123 = bitcast i32* %122 to <4 x i32>*, !dbg !1868
  %124 = load <4 x i32>, <4 x i32>* %123, align 4, !dbg !1868, !tbaa !429, !alias.scope !1872
  %125 = bitcast i32* %118 to <4 x i32>*, !dbg !1870
  store <4 x i32> %121, <4 x i32>* %125, align 4, !dbg !1870, !tbaa !429, !alias.scope !1875, !noalias !1872
  %126 = getelementptr i32, i32* %118, i64 4, !dbg !1870
  %127 = bitcast i32* %126 to <4 x i32>*, !dbg !1870
  store <4 x i32> %124, <4 x i32>* %127, align 4, !dbg !1870, !tbaa !429, !alias.scope !1875, !noalias !1872
  %128 = or i64 %116, 8
  %129 = getelementptr i32, i32* %0, i64 %128
  %130 = getelementptr %struct._Bigint, %struct._Bigint* %2, i64 0, i32 5, i64 %128
  %131 = bitcast i32* %130 to <4 x i32>*, !dbg !1868
  %132 = load <4 x i32>, <4 x i32>* %131, align 4, !dbg !1868, !tbaa !429, !alias.scope !1872
  %133 = getelementptr i32, i32* %130, i64 4, !dbg !1868
  %134 = bitcast i32* %133 to <4 x i32>*, !dbg !1868
  %135 = load <4 x i32>, <4 x i32>* %134, align 4, !dbg !1868, !tbaa !429, !alias.scope !1872
  %136 = bitcast i32* %129 to <4 x i32>*, !dbg !1870
  store <4 x i32> %132, <4 x i32>* %136, align 4, !dbg !1870, !tbaa !429, !alias.scope !1875, !noalias !1872
  %137 = getelementptr i32, i32* %129, i64 4, !dbg !1870
  %138 = bitcast i32* %137 to <4 x i32>*, !dbg !1870
  store <4 x i32> %135, <4 x i32>* %138, align 4, !dbg !1870, !tbaa !429, !alias.scope !1875, !noalias !1872
  %139 = or i64 %116, 16
  %140 = getelementptr i32, i32* %0, i64 %139
  %141 = getelementptr %struct._Bigint, %struct._Bigint* %2, i64 0, i32 5, i64 %139
  %142 = bitcast i32* %141 to <4 x i32>*, !dbg !1868
  %143 = load <4 x i32>, <4 x i32>* %142, align 4, !dbg !1868, !tbaa !429, !alias.scope !1872
  %144 = getelementptr i32, i32* %141, i64 4, !dbg !1868
  %145 = bitcast i32* %144 to <4 x i32>*, !dbg !1868
  %146 = load <4 x i32>, <4 x i32>* %145, align 4, !dbg !1868, !tbaa !429, !alias.scope !1872
  %147 = bitcast i32* %140 to <4 x i32>*, !dbg !1870
  store <4 x i32> %143, <4 x i32>* %147, align 4, !dbg !1870, !tbaa !429, !alias.scope !1875, !noalias !1872
  %148 = getelementptr i32, i32* %140, i64 4, !dbg !1870
  %149 = bitcast i32* %148 to <4 x i32>*, !dbg !1870
  store <4 x i32> %146, <4 x i32>* %149, align 4, !dbg !1870, !tbaa !429, !alias.scope !1875, !noalias !1872
  %150 = or i64 %116, 24
  %151 = getelementptr i32, i32* %0, i64 %150
  %152 = getelementptr %struct._Bigint, %struct._Bigint* %2, i64 0, i32 5, i64 %150
  %153 = bitcast i32* %152 to <4 x i32>*, !dbg !1868
  %154 = load <4 x i32>, <4 x i32>* %153, align 4, !dbg !1868, !tbaa !429, !alias.scope !1872
  %155 = getelementptr i32, i32* %152, i64 4, !dbg !1868
  %156 = bitcast i32* %155 to <4 x i32>*, !dbg !1868
  %157 = load <4 x i32>, <4 x i32>* %156, align 4, !dbg !1868, !tbaa !429, !alias.scope !1872
  %158 = bitcast i32* %151 to <4 x i32>*, !dbg !1870
  store <4 x i32> %154, <4 x i32>* %158, align 4, !dbg !1870, !tbaa !429, !alias.scope !1875, !noalias !1872
  %159 = getelementptr i32, i32* %151, i64 4, !dbg !1870
  %160 = bitcast i32* %159 to <4 x i32>*, !dbg !1870
  store <4 x i32> %157, <4 x i32>* %160, align 4, !dbg !1870, !tbaa !429, !alias.scope !1875, !noalias !1872
  %161 = add i64 %116, 32
  %162 = add i64 %117, -4
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %164, label %115, !llvm.loop !1877

; <label>:164:                                    ; preds = %115, %104
  %165 = phi i64 [ 0, %104 ], [ %161, %115 ]
  %166 = icmp eq i64 %111, 0
  br i1 %166, label %183, label %167

; <label>:167:                                    ; preds = %164, %167
  %168 = phi i64 [ %180, %167 ], [ %165, %164 ]
  %169 = phi i64 [ %181, %167 ], [ %111, %164 ]
  %170 = getelementptr i32, i32* %0, i64 %168
  %171 = getelementptr %struct._Bigint, %struct._Bigint* %2, i64 0, i32 5, i64 %168
  %172 = bitcast i32* %171 to <4 x i32>*, !dbg !1868
  %173 = load <4 x i32>, <4 x i32>* %172, align 4, !dbg !1868, !tbaa !429, !alias.scope !1872
  %174 = getelementptr i32, i32* %171, i64 4, !dbg !1868
  %175 = bitcast i32* %174 to <4 x i32>*, !dbg !1868
  %176 = load <4 x i32>, <4 x i32>* %175, align 4, !dbg !1868, !tbaa !429, !alias.scope !1872
  %177 = bitcast i32* %170 to <4 x i32>*, !dbg !1870
  store <4 x i32> %173, <4 x i32>* %177, align 4, !dbg !1870, !tbaa !429, !alias.scope !1875, !noalias !1872
  %178 = getelementptr i32, i32* %170, i64 4, !dbg !1870
  %179 = bitcast i32* %178 to <4 x i32>*, !dbg !1870
  store <4 x i32> %176, <4 x i32>* %179, align 4, !dbg !1870, !tbaa !429, !alias.scope !1875, !noalias !1872
  %180 = add i64 %168, 8
  %181 = add i64 %169, -1
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %183, label %167, !llvm.loop !1878

; <label>:183:                                    ; preds = %167, %164
  %184 = icmp eq i64 %46, %105
  br i1 %184, label %185, label %48, !dbg !1867

; <label>:185:                                    ; preds = %77, %273, %183
  %186 = getelementptr i32, i32* %0, i64 %32, !dbg !1867
  br label %187, !dbg !1879

; <label>:187:                                    ; preds = %185, %3
  %188 = phi i32* [ %0, %3 ], [ %186, %185 ]
  %189 = icmp ult i32* %188, %11, !dbg !1879
  br i1 %189, label %190, label %305, !dbg !1880

; <label>:190:                                    ; preds = %187
  %191 = ptrtoint i32* %188 to i64
  %192 = icmp ugt i32* %188, %10, !dbg !1881
  %193 = select i1 %192, i32* %188, i32* %10, !dbg !1881
  %194 = bitcast i32* %193 to i8*
  %195 = sub i64 3, %191, !dbg !1881
  %196 = getelementptr i8, i8* %194, i64 %195, !dbg !1881
  %197 = ptrtoint i8* %196 to i64
  %198 = lshr i64 %197, 2, !dbg !1881
  %199 = add nuw nsw i64 %198, 1, !dbg !1881
  %200 = icmp ult i64 %199, 8, !dbg !1881
  br i1 %200, label %201, label %203, !dbg !1881

; <label>:201:                                    ; preds = %271, %190
  %202 = phi i32* [ %188, %190 ], [ %205, %271 ]
  br label %301, !dbg !1881

; <label>:203:                                    ; preds = %190
  %204 = and i64 %199, 9223372036854775800, !dbg !1881
  %205 = getelementptr i32, i32* %188, i64 %204, !dbg !1881
  %206 = add nsw i64 %204, -8, !dbg !1881
  %207 = lshr exact i64 %206, 3, !dbg !1881
  %208 = add nuw nsw i64 %207, 1, !dbg !1881
  %209 = and i64 %208, 7, !dbg !1881
  %210 = icmp ult i64 %206, 56, !dbg !1881
  br i1 %210, label %258, label %211, !dbg !1881

; <label>:211:                                    ; preds = %203
  %212 = sub nsw i64 %208, %209, !dbg !1881
  br label %213, !dbg !1881

; <label>:213:                                    ; preds = %213, %211
  %214 = phi i64 [ 0, %211 ], [ %255, %213 ]
  %215 = phi i64 [ %212, %211 ], [ %256, %213 ]
  %216 = getelementptr i32, i32* %188, i64 %214
  %217 = bitcast i32* %216 to <4 x i32>*, !dbg !1882
  store <4 x i32> zeroinitializer, <4 x i32>* %217, align 4, !dbg !1882, !tbaa !429
  %218 = getelementptr i32, i32* %216, i64 4, !dbg !1882
  %219 = bitcast i32* %218 to <4 x i32>*, !dbg !1882
  store <4 x i32> zeroinitializer, <4 x i32>* %219, align 4, !dbg !1882, !tbaa !429
  %220 = or i64 %214, 8
  %221 = getelementptr i32, i32* %188, i64 %220
  %222 = bitcast i32* %221 to <4 x i32>*, !dbg !1882
  store <4 x i32> zeroinitializer, <4 x i32>* %222, align 4, !dbg !1882, !tbaa !429
  %223 = getelementptr i32, i32* %221, i64 4, !dbg !1882
  %224 = bitcast i32* %223 to <4 x i32>*, !dbg !1882
  store <4 x i32> zeroinitializer, <4 x i32>* %224, align 4, !dbg !1882, !tbaa !429
  %225 = or i64 %214, 16
  %226 = getelementptr i32, i32* %188, i64 %225
  %227 = bitcast i32* %226 to <4 x i32>*, !dbg !1882
  store <4 x i32> zeroinitializer, <4 x i32>* %227, align 4, !dbg !1882, !tbaa !429
  %228 = getelementptr i32, i32* %226, i64 4, !dbg !1882
  %229 = bitcast i32* %228 to <4 x i32>*, !dbg !1882
  store <4 x i32> zeroinitializer, <4 x i32>* %229, align 4, !dbg !1882, !tbaa !429
  %230 = or i64 %214, 24
  %231 = getelementptr i32, i32* %188, i64 %230
  %232 = bitcast i32* %231 to <4 x i32>*, !dbg !1882
  store <4 x i32> zeroinitializer, <4 x i32>* %232, align 4, !dbg !1882, !tbaa !429
  %233 = getelementptr i32, i32* %231, i64 4, !dbg !1882
  %234 = bitcast i32* %233 to <4 x i32>*, !dbg !1882
  store <4 x i32> zeroinitializer, <4 x i32>* %234, align 4, !dbg !1882, !tbaa !429
  %235 = or i64 %214, 32
  %236 = getelementptr i32, i32* %188, i64 %235
  %237 = bitcast i32* %236 to <4 x i32>*, !dbg !1882
  store <4 x i32> zeroinitializer, <4 x i32>* %237, align 4, !dbg !1882, !tbaa !429
  %238 = getelementptr i32, i32* %236, i64 4, !dbg !1882
  %239 = bitcast i32* %238 to <4 x i32>*, !dbg !1882
  store <4 x i32> zeroinitializer, <4 x i32>* %239, align 4, !dbg !1882, !tbaa !429
  %240 = or i64 %214, 40
  %241 = getelementptr i32, i32* %188, i64 %240
  %242 = bitcast i32* %241 to <4 x i32>*, !dbg !1882
  store <4 x i32> zeroinitializer, <4 x i32>* %242, align 4, !dbg !1882, !tbaa !429
  %243 = getelementptr i32, i32* %241, i64 4, !dbg !1882
  %244 = bitcast i32* %243 to <4 x i32>*, !dbg !1882
  store <4 x i32> zeroinitializer, <4 x i32>* %244, align 4, !dbg !1882, !tbaa !429
  %245 = or i64 %214, 48
  %246 = getelementptr i32, i32* %188, i64 %245
  %247 = bitcast i32* %246 to <4 x i32>*, !dbg !1882
  store <4 x i32> zeroinitializer, <4 x i32>* %247, align 4, !dbg !1882, !tbaa !429
  %248 = getelementptr i32, i32* %246, i64 4, !dbg !1882
  %249 = bitcast i32* %248 to <4 x i32>*, !dbg !1882
  store <4 x i32> zeroinitializer, <4 x i32>* %249, align 4, !dbg !1882, !tbaa !429
  %250 = or i64 %214, 56
  %251 = getelementptr i32, i32* %188, i64 %250
  %252 = bitcast i32* %251 to <4 x i32>*, !dbg !1882
  store <4 x i32> zeroinitializer, <4 x i32>* %252, align 4, !dbg !1882, !tbaa !429
  %253 = getelementptr i32, i32* %251, i64 4, !dbg !1882
  %254 = bitcast i32* %253 to <4 x i32>*, !dbg !1882
  store <4 x i32> zeroinitializer, <4 x i32>* %254, align 4, !dbg !1882, !tbaa !429
  %255 = add i64 %214, 64
  %256 = add i64 %215, -8
  %257 = icmp eq i64 %256, 0
  br i1 %257, label %258, label %213, !llvm.loop !1883

; <label>:258:                                    ; preds = %213, %203
  %259 = phi i64 [ 0, %203 ], [ %255, %213 ]
  %260 = icmp eq i64 %209, 0
  br i1 %260, label %271, label %261

; <label>:261:                                    ; preds = %258, %261
  %262 = phi i64 [ %268, %261 ], [ %259, %258 ]
  %263 = phi i64 [ %269, %261 ], [ %209, %258 ]
  %264 = getelementptr i32, i32* %188, i64 %262
  %265 = bitcast i32* %264 to <4 x i32>*, !dbg !1882
  store <4 x i32> zeroinitializer, <4 x i32>* %265, align 4, !dbg !1882, !tbaa !429
  %266 = getelementptr i32, i32* %264, i64 4, !dbg !1882
  %267 = bitcast i32* %266 to <4 x i32>*, !dbg !1882
  store <4 x i32> zeroinitializer, <4 x i32>* %267, align 4, !dbg !1882, !tbaa !429
  %268 = add i64 %262, 8
  %269 = add i64 %263, -1
  %270 = icmp eq i64 %269, 0
  br i1 %270, label %271, label %261, !llvm.loop !1885

; <label>:271:                                    ; preds = %261, %258
  %272 = icmp eq i64 %199, %204
  br i1 %272, label %305, label %201, !dbg !1881

; <label>:273:                                    ; preds = %77, %273
  %274 = phi i32* [ %299, %273 ], [ %78, %77 ]
  %275 = phi i32* [ %297, %273 ], [ %79, %77 ]
  %276 = getelementptr inbounds i32, i32* %275, i64 1, !dbg !1867
  %277 = load i32, i32* %275, align 4, !dbg !1868, !tbaa !429
  %278 = getelementptr inbounds i32, i32* %274, i64 1, !dbg !1869
  store i32 %277, i32* %274, align 4, !dbg !1870, !tbaa !429
  %279 = getelementptr inbounds i32, i32* %275, i64 2, !dbg !1867
  %280 = load i32, i32* %276, align 4, !dbg !1868, !tbaa !429
  %281 = getelementptr inbounds i32, i32* %274, i64 2, !dbg !1869
  store i32 %280, i32* %278, align 4, !dbg !1870, !tbaa !429
  %282 = getelementptr inbounds i32, i32* %275, i64 3, !dbg !1867
  %283 = load i32, i32* %279, align 4, !dbg !1868, !tbaa !429
  %284 = getelementptr inbounds i32, i32* %274, i64 3, !dbg !1869
  store i32 %283, i32* %281, align 4, !dbg !1870, !tbaa !429
  %285 = getelementptr inbounds i32, i32* %275, i64 4, !dbg !1867
  %286 = load i32, i32* %282, align 4, !dbg !1868, !tbaa !429
  %287 = getelementptr inbounds i32, i32* %274, i64 4, !dbg !1869
  store i32 %286, i32* %284, align 4, !dbg !1870, !tbaa !429
  %288 = getelementptr inbounds i32, i32* %275, i64 5, !dbg !1867
  %289 = load i32, i32* %285, align 4, !dbg !1868, !tbaa !429
  %290 = getelementptr inbounds i32, i32* %274, i64 5, !dbg !1869
  store i32 %289, i32* %287, align 4, !dbg !1870, !tbaa !429
  %291 = getelementptr inbounds i32, i32* %275, i64 6, !dbg !1867
  %292 = load i32, i32* %288, align 4, !dbg !1868, !tbaa !429
  %293 = getelementptr inbounds i32, i32* %274, i64 6, !dbg !1869
  store i32 %292, i32* %290, align 4, !dbg !1870, !tbaa !429
  %294 = getelementptr inbounds i32, i32* %275, i64 7, !dbg !1867
  %295 = load i32, i32* %291, align 4, !dbg !1868, !tbaa !429
  %296 = getelementptr inbounds i32, i32* %274, i64 7, !dbg !1869
  store i32 %295, i32* %293, align 4, !dbg !1870, !tbaa !429
  %297 = getelementptr inbounds i32, i32* %275, i64 8, !dbg !1867
  %298 = load i32, i32* %294, align 4, !dbg !1868, !tbaa !429
  %299 = getelementptr inbounds i32, i32* %274, i64 8, !dbg !1869
  store i32 %298, i32* %296, align 4, !dbg !1870, !tbaa !429
  %300 = icmp ult i32* %297, %15, !dbg !1863
  br i1 %300, label %273, label %185, !dbg !1864, !llvm.loop !1886

; <label>:301:                                    ; preds = %201, %301
  %302 = phi i32* [ %303, %301 ], [ %202, %201 ]
  %303 = getelementptr inbounds i32, i32* %302, i64 1, !dbg !1881
  store i32 0, i32* %302, align 4, !dbg !1882, !tbaa !429
  %304 = icmp ult i32* %302, %10, !dbg !1879
  br i1 %304, label %301, label %305, !dbg !1880, !llvm.loop !1887

; <label>:305:                                    ; preds = %301, %271, %187
  ret void, !dbg !1888
}

; Function Attrs: noredzone nounwind readonly
define dso_local i32 @__any_on(%struct._Bigint* readonly, i32) local_unnamed_addr #4 !dbg !1889 {
  %3 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %0, i64 0, i32 5, i64 0, !dbg !1902
  %4 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %0, i64 0, i32 4, !dbg !1904
  %5 = load i32, i32* %4, align 4, !dbg !1904, !tbaa !378
  %6 = ashr i32 %1, 5, !dbg !1906
  %7 = icmp sgt i32 %6, %5, !dbg !1908
  br i1 %7, label %20, label %8, !dbg !1910

; <label>:8:                                      ; preds = %2
  %9 = icmp slt i32 %6, %5, !dbg !1911
  br i1 %9, label %10, label %20, !dbg !1913

; <label>:10:                                     ; preds = %8
  %11 = and i32 %1, 31, !dbg !1914
  %12 = icmp eq i32 %11, 0, !dbg !1914
  br i1 %12, label %20, label %13, !dbg !1915

; <label>:13:                                     ; preds = %10
  %14 = sext i32 %6 to i64, !dbg !1916
  %15 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %0, i64 0, i32 5, i64 %14, !dbg !1916
  %16 = load i32, i32* %15, align 4, !dbg !1916, !tbaa !429
  %17 = shl i32 -1, %11, !dbg !1920
  %18 = and i32 %16, %17, !dbg !1920
  %19 = icmp eq i32 %18, %16, !dbg !1921
  br i1 %19, label %20, label %31, !dbg !1923

; <label>:20:                                     ; preds = %2, %13, %10, %8
  %21 = phi i32 [ %6, %13 ], [ %6, %10 ], [ %6, %8 ], [ %5, %2 ], !dbg !1924
  %22 = sext i32 %21 to i64, !dbg !1926
  %23 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %0, i64 0, i32 5, i64 %22, !dbg !1926
  br label %24, !dbg !1927

; <label>:24:                                     ; preds = %27, %20
  %25 = phi i32* [ %23, %20 ], [ %28, %27 ], !dbg !1928
  %26 = icmp ugt i32* %25, %3, !dbg !1930
  br i1 %26, label %27, label %31, !dbg !1927

; <label>:27:                                     ; preds = %24
  %28 = getelementptr inbounds i32, i32* %25, i64 -1, !dbg !1931
  %29 = load i32, i32* %28, align 4, !dbg !1932, !tbaa !429
  %30 = icmp eq i32 %29, 0, !dbg !1932
  br i1 %30, label %24, label %31, !dbg !1933, !llvm.loop !1934

; <label>:31:                                     ; preds = %24, %27, %13
  %32 = phi i32 [ 1, %13 ], [ 0, %24 ], [ 1, %27 ], !dbg !1936
  ret i32 %32, !dbg !1937
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone speculatable }
attributes #6 = { nobuiltin noredzone nounwind }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin noredzone }

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
!384 = !DILocation(line: 133, column: 1, scope: !321)
!385 = distinct !DISubprogram(name: "_Bfree", scope: !3, file: !3, line: 136, type: !386, isLocal: false, isDefinition: true, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: true, unit: !289, retainedNodes: !388)
!386 = !DISubroutineType(types: !387)
!387 = !{null, !25, !6}
!388 = !{!389, !390}
!389 = !DILocalVariable(name: "ptr", arg: 1, scope: !385, file: !3, line: 136, type: !25)
!390 = !DILocalVariable(name: "v", arg: 2, scope: !385, file: !3, line: 136, type: !6)
!391 = !DILocation(line: 136, column: 1, scope: !385)
!392 = !DILocation(line: 139, column: 7, scope: !393)
!393 = distinct !DILexicalBlock(scope: !385, file: !3, line: 139, column: 7)
!394 = !DILocation(line: 139, column: 7, scope: !385)
!395 = !DILocation(line: 141, column: 18, scope: !396)
!396 = distinct !DILexicalBlock(scope: !393, file: !3, line: 140, column: 5)
!397 = !DILocation(line: 141, column: 45, scope: !396)
!398 = !DILocation(line: 141, column: 16, scope: !396)
!399 = !DILocation(line: 142, column: 38, scope: !396)
!400 = !DILocation(line: 143, column: 5, scope: !396)
!401 = !DILocation(line: 144, column: 1, scope: !385)
!402 = distinct !DISubprogram(name: "__multadd", scope: !3, file: !3, line: 147, type: !403, isLocal: false, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !289, retainedNodes: !405)
!403 = !DISubroutineType(types: !404)
!404 = !{!6, !25, !6, !15, !15}
!405 = !{!406, !407, !408, !409, !410, !411, !412, !414, !415, !416, !417}
!406 = !DILocalVariable(name: "ptr", arg: 1, scope: !402, file: !3, line: 147, type: !25)
!407 = !DILocalVariable(name: "b", arg: 2, scope: !402, file: !3, line: 147, type: !6)
!408 = !DILocalVariable(name: "m", arg: 3, scope: !402, file: !3, line: 147, type: !15)
!409 = !DILocalVariable(name: "a", arg: 4, scope: !402, file: !3, line: 147, type: !15)
!410 = !DILocalVariable(name: "i", scope: !402, file: !3, line: 153, type: !15)
!411 = !DILocalVariable(name: "wds", scope: !402, file: !3, line: 153, type: !15)
!412 = !DILocalVariable(name: "x", scope: !402, file: !3, line: 154, type: !413)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!414 = !DILocalVariable(name: "y", scope: !402, file: !3, line: 154, type: !21)
!415 = !DILocalVariable(name: "xi", scope: !402, file: !3, line: 156, type: !21)
!416 = !DILocalVariable(name: "z", scope: !402, file: !3, line: 156, type: !21)
!417 = !DILocalVariable(name: "b1", scope: !402, file: !3, line: 158, type: !6)
!418 = !DILocation(line: 147, column: 1, scope: !402)
!419 = !DILocation(line: 160, column: 12, scope: !402)
!420 = !DILocation(line: 153, column: 10, scope: !402)
!421 = !DILocation(line: 161, column: 7, scope: !402)
!422 = !DILocation(line: 154, column: 12, scope: !402)
!423 = !DILocation(line: 153, column: 7, scope: !402)
!424 = !DILocation(line: 163, column: 3, scope: !402)
!425 = !DILocation(line: 0, scope: !426)
!426 = distinct !DILexicalBlock(scope: !402, file: !3, line: 164, column: 5)
!427 = !DILocation(line: 0, scope: !402)
!428 = !DILocation(line: 166, column: 12, scope: !426)
!429 = !{!334, !334, i64 0}
!430 = !DILocation(line: 156, column: 11, scope: !402)
!431 = !DILocation(line: 167, column: 15, scope: !426)
!432 = !DILocation(line: 167, column: 25, scope: !426)
!433 = !DILocation(line: 167, column: 29, scope: !426)
!434 = !DILocation(line: 154, column: 15, scope: !402)
!435 = !DILocation(line: 168, column: 15, scope: !426)
!436 = !DILocation(line: 168, column: 22, scope: !426)
!437 = !DILocation(line: 168, column: 31, scope: !426)
!438 = !DILocation(line: 168, column: 26, scope: !426)
!439 = !DILocation(line: 156, column: 15, scope: !402)
!440 = !DILocation(line: 169, column: 20, scope: !426)
!441 = !DILocation(line: 170, column: 17, scope: !426)
!442 = !DILocation(line: 170, column: 29, scope: !426)
!443 = !DILocation(line: 170, column: 24, scope: !426)
!444 = !DILocation(line: 170, column: 9, scope: !426)
!445 = !DILocation(line: 170, column: 12, scope: !426)
!446 = !DILocation(line: 177, column: 10, scope: !402)
!447 = !DILocation(line: 177, column: 14, scope: !402)
!448 = !DILocation(line: 176, column: 5, scope: !426)
!449 = distinct !{!449, !424, !450}
!450 = !DILocation(line: 177, column: 19, scope: !402)
!451 = !DILocation(line: 178, column: 7, scope: !452)
!452 = distinct !DILexicalBlock(scope: !402, file: !3, line: 178, column: 7)
!453 = !DILocation(line: 178, column: 7, scope: !402)
!454 = !DILocation(line: 180, column: 21, scope: !455)
!455 = distinct !DILexicalBlock(scope: !456, file: !3, line: 180, column: 11)
!456 = distinct !DILexicalBlock(scope: !452, file: !3, line: 179, column: 5)
!457 = !DILocation(line: 180, column: 15, scope: !455)
!458 = !DILocation(line: 180, column: 11, scope: !456)
!459 = !DILocation(line: 182, column: 25, scope: !460)
!460 = distinct !DILexicalBlock(scope: !455, file: !3, line: 181, column: 2)
!461 = !DILocation(line: 182, column: 28, scope: !460)
!462 = !DILocation(line: 97, column: 1, scope: !321, inlinedAt: !463)
!463 = distinct !DILocation(line: 182, column: 9, scope: !460)
!464 = !DILocation(line: 103, column: 7, scope: !331, inlinedAt: !463)
!465 = !DILocation(line: 103, column: 31, scope: !331, inlinedAt: !463)
!466 = !DILocation(line: 103, column: 7, scope: !321, inlinedAt: !463)
!467 = !DILocation(line: 106, column: 53, scope: !344, inlinedAt: !463)
!468 = !DILocation(line: 106, column: 31, scope: !344, inlinedAt: !463)
!469 = !DILocation(line: 109, column: 35, scope: !347, inlinedAt: !463)
!470 = !DILocation(line: 109, column: 11, scope: !344, inlinedAt: !463)
!471 = !DILocation(line: 115, column: 13, scope: !350, inlinedAt: !463)
!472 = !DILocation(line: 100, column: 12, scope: !321, inlinedAt: !463)
!473 = !DILocation(line: 115, column: 41, scope: !350, inlinedAt: !463)
!474 = !DILocation(line: 115, column: 7, scope: !321, inlinedAt: !463)
!475 = !DILocation(line: 117, column: 40, scope: !356, inlinedAt: !463)
!476 = !DILocation(line: 117, column: 34, scope: !356, inlinedAt: !463)
!477 = !DILocation(line: 118, column: 5, scope: !356, inlinedAt: !463)
!478 = !DILocation(line: 121, column: 13, scope: !362, inlinedAt: !463)
!479 = !DILocation(line: 99, column: 7, scope: !321, inlinedAt: !463)
!480 = !DILocation(line: 123, column: 24, scope: !362, inlinedAt: !463)
!481 = !DILocation(line: 127, column: 14, scope: !366, inlinedAt: !463)
!482 = !DILocation(line: 127, column: 11, scope: !362, inlinedAt: !463)
!483 = !DILocation(line: 123, column: 12, scope: !362, inlinedAt: !463)
!484 = !DILocation(line: 128, column: 11, scope: !362, inlinedAt: !463)
!485 = !DILocation(line: 128, column: 14, scope: !362, inlinedAt: !463)
!486 = !DILocation(line: 129, column: 11, scope: !362, inlinedAt: !463)
!487 = !DILocation(line: 129, column: 19, scope: !362, inlinedAt: !463)
!488 = !DILocation(line: 0, scope: !362, inlinedAt: !463)
!489 = !DILocation(line: 131, column: 19, scope: !321, inlinedAt: !463)
!490 = !DILocation(line: 131, column: 24, scope: !321, inlinedAt: !463)
!491 = !DILocation(line: 131, column: 7, scope: !321, inlinedAt: !463)
!492 = !DILocation(line: 131, column: 13, scope: !321, inlinedAt: !463)
!493 = !DILocation(line: 132, column: 3, scope: !321, inlinedAt: !463)
!494 = !DILocation(line: 0, scope: !366, inlinedAt: !463)
!495 = !DILocation(line: 158, column: 12, scope: !402)
!496 = !DILocation(line: 183, column: 4, scope: !460)
!497 = !DILocation(line: 136, column: 1, scope: !385, inlinedAt: !498)
!498 = distinct !DILocation(line: 184, column: 4, scope: !460)
!499 = !DILocation(line: 141, column: 18, scope: !396, inlinedAt: !498)
!500 = !DILocation(line: 141, column: 45, scope: !396, inlinedAt: !498)
!501 = !DILocation(line: 141, column: 16, scope: !396, inlinedAt: !498)
!502 = !DILocation(line: 142, column: 38, scope: !396, inlinedAt: !498)
!503 = !DILocation(line: 188, column: 10, scope: !456)
!504 = !DILocation(line: 186, column: 2, scope: !460)
!505 = !DILocation(line: 187, column: 16, scope: !456)
!506 = !DILocation(line: 187, column: 7, scope: !456)
!507 = !DILocation(line: 187, column: 20, scope: !456)
!508 = !DILocation(line: 188, column: 15, scope: !456)
!509 = !DILocation(line: 189, column: 5, scope: !456)
!510 = !DILocation(line: 190, column: 3, scope: !402)
!511 = distinct !DISubprogram(name: "__s2b", scope: !3, file: !3, line: 194, type: !512, isLocal: false, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !289, retainedNodes: !514)
!512 = !DISubroutineType(types: !513)
!513 = !{!6, !25, !63, !15, !15, !21}
!514 = !{!515, !516, !517, !518, !519, !520, !521, !522, !523, !524}
!515 = !DILocalVariable(name: "ptr", arg: 1, scope: !511, file: !3, line: 194, type: !25)
!516 = !DILocalVariable(name: "s", arg: 2, scope: !511, file: !3, line: 194, type: !63)
!517 = !DILocalVariable(name: "nd0", arg: 3, scope: !511, file: !3, line: 194, type: !15)
!518 = !DILocalVariable(name: "nd", arg: 4, scope: !511, file: !3, line: 194, type: !15)
!519 = !DILocalVariable(name: "y9", arg: 5, scope: !511, file: !3, line: 194, type: !21)
!520 = !DILocalVariable(name: "b", scope: !511, file: !3, line: 201, type: !6)
!521 = !DILocalVariable(name: "i", scope: !511, file: !3, line: 202, type: !15)
!522 = !DILocalVariable(name: "k", scope: !511, file: !3, line: 202, type: !15)
!523 = !DILocalVariable(name: "x", scope: !511, file: !3, line: 203, type: !15)
!524 = !DILocalVariable(name: "y", scope: !511, file: !3, line: 203, type: !15)
!525 = !DILocation(line: 194, column: 1, scope: !511)
!526 = !DILocation(line: 205, column: 11, scope: !511)
!527 = !DILocation(line: 205, column: 16, scope: !511)
!528 = !DILocation(line: 203, column: 10, scope: !511)
!529 = !DILocation(line: 202, column: 10, scope: !511)
!530 = !DILocation(line: 203, column: 13, scope: !511)
!531 = !DILocation(line: 206, column: 24, scope: !532)
!532 = distinct !DILexicalBlock(scope: !533, file: !3, line: 206, column: 3)
!533 = distinct !DILexicalBlock(scope: !511, file: !3, line: 206, column: 3)
!534 = !DILocation(line: 206, column: 3, scope: !533)
!535 = !DILocation(line: 206, column: 31, scope: !532)
!536 = !DILocation(line: 206, column: 39, scope: !532)
!537 = distinct !{!537, !534, !538}
!538 = !DILocation(line: 206, column: 42, scope: !533)
!539 = !DILocation(line: 0, scope: !532)
!540 = !DILocation(line: 97, column: 1, scope: !321, inlinedAt: !541)
!541 = distinct !DILocation(line: 208, column: 7, scope: !511)
!542 = !DILocation(line: 103, column: 7, scope: !331, inlinedAt: !541)
!543 = !DILocation(line: 103, column: 31, scope: !331, inlinedAt: !541)
!544 = !DILocation(line: 103, column: 7, scope: !321, inlinedAt: !541)
!545 = !DILocation(line: 106, column: 53, scope: !344, inlinedAt: !541)
!546 = !DILocation(line: 106, column: 31, scope: !344, inlinedAt: !541)
!547 = !DILocation(line: 109, column: 35, scope: !347, inlinedAt: !541)
!548 = !DILocation(line: 109, column: 11, scope: !344, inlinedAt: !541)
!549 = !DILocation(line: 115, column: 13, scope: !350, inlinedAt: !541)
!550 = !DILocation(line: 100, column: 12, scope: !321, inlinedAt: !541)
!551 = !DILocation(line: 115, column: 41, scope: !350, inlinedAt: !541)
!552 = !DILocation(line: 115, column: 7, scope: !321, inlinedAt: !541)
!553 = !DILocation(line: 117, column: 40, scope: !356, inlinedAt: !541)
!554 = !DILocation(line: 117, column: 34, scope: !356, inlinedAt: !541)
!555 = !DILocation(line: 118, column: 5, scope: !356, inlinedAt: !541)
!556 = !DILocation(line: 121, column: 13, scope: !362, inlinedAt: !541)
!557 = !DILocation(line: 99, column: 7, scope: !321, inlinedAt: !541)
!558 = !DILocation(line: 123, column: 24, scope: !362, inlinedAt: !541)
!559 = !DILocation(line: 127, column: 14, scope: !366, inlinedAt: !541)
!560 = !DILocation(line: 127, column: 11, scope: !362, inlinedAt: !541)
!561 = !DILocation(line: 123, column: 12, scope: !362, inlinedAt: !541)
!562 = !DILocation(line: 128, column: 11, scope: !362, inlinedAt: !541)
!563 = !DILocation(line: 128, column: 14, scope: !362, inlinedAt: !541)
!564 = !DILocation(line: 129, column: 11, scope: !362, inlinedAt: !541)
!565 = !DILocation(line: 129, column: 19, scope: !362, inlinedAt: !541)
!566 = !DILocation(line: 0, scope: !362, inlinedAt: !541)
!567 = !DILocation(line: 131, column: 19, scope: !321, inlinedAt: !541)
!568 = !DILocation(line: 131, column: 24, scope: !321, inlinedAt: !541)
!569 = !DILocation(line: 131, column: 7, scope: !321, inlinedAt: !541)
!570 = !DILocation(line: 131, column: 13, scope: !321, inlinedAt: !541)
!571 = !DILocation(line: 132, column: 3, scope: !321, inlinedAt: !541)
!572 = !DILocation(line: 0, scope: !366, inlinedAt: !541)
!573 = !DILocation(line: 201, column: 12, scope: !511)
!574 = !DILocation(line: 209, column: 3, scope: !511)
!575 = !DILocation(line: 209, column: 12, scope: !511)
!576 = !DILocation(line: 210, column: 6, scope: !511)
!577 = !DILocation(line: 210, column: 11, scope: !511)
!578 = !DILocation(line: 202, column: 7, scope: !511)
!579 = !DILocation(line: 218, column: 9, scope: !580)
!580 = distinct !DILexicalBlock(scope: !511, file: !3, line: 218, column: 7)
!581 = !DILocation(line: 218, column: 7, scope: !511)
!582 = !DILocation(line: 220, column: 9, scope: !583)
!583 = distinct !DILexicalBlock(scope: !580, file: !3, line: 219, column: 5)
!584 = !DILocation(line: 221, column: 7, scope: !583)
!585 = !DILocation(line: 0, scope: !583)
!586 = !DILocation(line: 222, column: 29, scope: !583)
!587 = !DILocation(line: 222, column: 27, scope: !583)
!588 = !{!335, !335, i64 0}
!589 = !DILocation(line: 222, column: 32, scope: !583)
!590 = !DILocation(line: 222, column: 6, scope: !583)
!591 = !DILocation(line: 223, column: 14, scope: !583)
!592 = !DILocation(line: 223, column: 18, scope: !583)
!593 = !DILocation(line: 222, column: 2, scope: !583)
!594 = distinct !{!594, !584, !595}
!595 = !DILocation(line: 223, column: 23, scope: !583)
!596 = !DILocation(line: 224, column: 8, scope: !583)
!597 = !DILocation(line: 225, column: 5, scope: !583)
!598 = !DILocation(line: 227, column: 7, scope: !580)
!599 = !DILocation(line: 0, scope: !511)
!600 = !DILocation(line: 0, scope: !580)
!601 = !DILocation(line: 228, column: 12, scope: !602)
!602 = distinct !DILexicalBlock(scope: !603, file: !3, line: 228, column: 3)
!603 = distinct !DILexicalBlock(scope: !511, file: !3, line: 228, column: 3)
!604 = !DILocation(line: 228, column: 3, scope: !603)
!605 = !DILocation(line: 229, column: 32, scope: !602)
!606 = !DILocation(line: 229, column: 30, scope: !602)
!607 = !DILocation(line: 229, column: 35, scope: !602)
!608 = !DILocation(line: 229, column: 9, scope: !602)
!609 = !DILocation(line: 228, column: 19, scope: !602)
!610 = distinct !{!610, !604, !611}
!611 = !DILocation(line: 229, column: 40, scope: !603)
!612 = !DILocation(line: 0, scope: !602)
!613 = !DILocation(line: 230, column: 3, scope: !511)
!614 = distinct !DISubprogram(name: "__hi0bits", scope: !3, file: !3, line: 234, type: !615, isLocal: false, isDefinition: true, scopeLine: 236, flags: DIFlagPrototyped, isOptimized: true, unit: !289, retainedNodes: !617)
!615 = !DISubroutineType(types: !616)
!616 = !{!15, !21}
!617 = !{!618, !619}
!618 = !DILocalVariable(name: "x", arg: 1, scope: !614, file: !3, line: 234, type: !21)
!619 = !DILocalVariable(name: "k", scope: !614, file: !3, line: 237, type: !15)
!620 = !DILocation(line: 234, column: 1, scope: !614)
!621 = !DILocation(line: 237, column: 16, scope: !614)
!622 = !DILocation(line: 239, column: 11, scope: !623)
!623 = distinct !DILexicalBlock(scope: !614, file: !3, line: 239, column: 7)
!624 = !DILocation(line: 242, column: 9, scope: !625)
!625 = distinct !DILexicalBlock(scope: !623, file: !3, line: 240, column: 5)
!626 = !DILocation(line: 239, column: 7, scope: !614)
!627 = !DILocation(line: 244, column: 11, scope: !628)
!628 = distinct !DILexicalBlock(scope: !614, file: !3, line: 244, column: 7)
!629 = !DILocation(line: 246, column: 9, scope: !630)
!630 = distinct !DILexicalBlock(scope: !628, file: !3, line: 245, column: 5)
!631 = !DILocation(line: 247, column: 9, scope: !630)
!632 = !DILocation(line: 244, column: 7, scope: !614)
!633 = !DILocation(line: 249, column: 11, scope: !634)
!634 = distinct !DILexicalBlock(scope: !614, file: !3, line: 249, column: 7)
!635 = !DILocation(line: 251, column: 9, scope: !636)
!636 = distinct !DILexicalBlock(scope: !634, file: !3, line: 250, column: 5)
!637 = !DILocation(line: 252, column: 9, scope: !636)
!638 = !DILocation(line: 249, column: 7, scope: !614)
!639 = !DILocation(line: 254, column: 11, scope: !640)
!640 = distinct !DILexicalBlock(scope: !614, file: !3, line: 254, column: 7)
!641 = !DILocation(line: 256, column: 9, scope: !642)
!642 = distinct !DILexicalBlock(scope: !640, file: !3, line: 255, column: 5)
!643 = !DILocation(line: 257, column: 9, scope: !642)
!644 = !DILocation(line: 254, column: 7, scope: !614)
!645 = !DILocation(line: 259, column: 11, scope: !646)
!646 = distinct !DILexicalBlock(scope: !614, file: !3, line: 259, column: 7)
!647 = !DILocation(line: 259, column: 7, scope: !614)
!648 = !DILocation(line: 261, column: 8, scope: !649)
!649 = distinct !DILexicalBlock(scope: !646, file: !3, line: 260, column: 5)
!650 = !DILocation(line: 262, column: 15, scope: !651)
!651 = distinct !DILexicalBlock(scope: !649, file: !3, line: 262, column: 11)
!652 = !DILocation(line: 262, column: 11, scope: !649)
!653 = !DILocation(line: 0, scope: !649)
!654 = !DILocation(line: 265, column: 3, scope: !614)
!655 = !DILocation(line: 0, scope: !651)
!656 = !DILocation(line: 266, column: 1, scope: !614)
!657 = distinct !DISubprogram(name: "__lo0bits", scope: !3, file: !3, line: 269, type: !658, isLocal: false, isDefinition: true, scopeLine: 270, flags: DIFlagPrototyped, isOptimized: true, unit: !289, retainedNodes: !660)
!658 = !DISubroutineType(types: !659)
!659 = !{!15, !413}
!660 = !{!661, !662, !663}
!661 = !DILocalVariable(name: "y", arg: 1, scope: !657, file: !3, line: 269, type: !413)
!662 = !DILocalVariable(name: "k", scope: !657, file: !3, line: 271, type: !15)
!663 = !DILocalVariable(name: "x", scope: !657, file: !3, line: 272, type: !21)
!664 = !DILocation(line: 269, column: 1, scope: !657)
!665 = !DILocation(line: 272, column: 24, scope: !657)
!666 = !DILocation(line: 272, column: 20, scope: !657)
!667 = !DILocation(line: 274, column: 9, scope: !668)
!668 = distinct !DILexicalBlock(scope: !657, file: !3, line: 274, column: 7)
!669 = !DILocation(line: 274, column: 7, scope: !657)
!670 = !DILocation(line: 276, column: 13, scope: !671)
!671 = distinct !DILexicalBlock(scope: !672, file: !3, line: 276, column: 11)
!672 = distinct !DILexicalBlock(scope: !668, file: !3, line: 275, column: 5)
!673 = !DILocation(line: 276, column: 11, scope: !672)
!674 = !DILocation(line: 278, column: 13, scope: !675)
!675 = distinct !DILexicalBlock(scope: !672, file: !3, line: 278, column: 11)
!676 = !DILocation(line: 278, column: 11, scope: !672)
!677 = !DILocation(line: 280, column: 11, scope: !678)
!678 = distinct !DILexicalBlock(scope: !675, file: !3, line: 279, column: 2)
!679 = !DILocation(line: 280, column: 7, scope: !678)
!680 = !DILocation(line: 281, column: 4, scope: !678)
!681 = !DILocation(line: 283, column: 14, scope: !672)
!682 = !DILocation(line: 283, column: 10, scope: !672)
!683 = !DILocation(line: 284, column: 7, scope: !672)
!684 = !DILocation(line: 271, column: 16, scope: !657)
!685 = !DILocation(line: 287, column: 11, scope: !686)
!686 = distinct !DILexicalBlock(scope: !657, file: !3, line: 287, column: 7)
!687 = !DILocation(line: 290, column: 9, scope: !688)
!688 = distinct !DILexicalBlock(scope: !686, file: !3, line: 288, column: 5)
!689 = !DILocation(line: 287, column: 7, scope: !657)
!690 = !DILocation(line: 292, column: 11, scope: !691)
!691 = distinct !DILexicalBlock(scope: !657, file: !3, line: 292, column: 7)
!692 = !DILocation(line: 294, column: 9, scope: !693)
!693 = distinct !DILexicalBlock(scope: !691, file: !3, line: 293, column: 5)
!694 = !DILocation(line: 295, column: 9, scope: !693)
!695 = !DILocation(line: 292, column: 7, scope: !657)
!696 = !DILocation(line: 297, column: 11, scope: !697)
!697 = distinct !DILexicalBlock(scope: !657, file: !3, line: 297, column: 7)
!698 = !DILocation(line: 299, column: 9, scope: !699)
!699 = distinct !DILexicalBlock(scope: !697, file: !3, line: 298, column: 5)
!700 = !DILocation(line: 300, column: 9, scope: !699)
!701 = !DILocation(line: 297, column: 7, scope: !657)
!702 = !DILocation(line: 302, column: 11, scope: !703)
!703 = distinct !DILexicalBlock(scope: !657, file: !3, line: 302, column: 7)
!704 = !DILocation(line: 304, column: 9, scope: !705)
!705 = distinct !DILexicalBlock(scope: !703, file: !3, line: 303, column: 5)
!706 = !DILocation(line: 305, column: 9, scope: !705)
!707 = !DILocation(line: 302, column: 7, scope: !657)
!708 = !DILocation(line: 307, column: 11, scope: !709)
!709 = distinct !DILexicalBlock(scope: !657, file: !3, line: 307, column: 7)
!710 = !DILocation(line: 307, column: 7, scope: !657)
!711 = !DILocation(line: 309, column: 8, scope: !712)
!712 = distinct !DILexicalBlock(scope: !709, file: !3, line: 308, column: 5)
!713 = !DILocation(line: 310, column: 9, scope: !712)
!714 = !DILocation(line: 311, column: 11, scope: !715)
!715 = distinct !DILexicalBlock(scope: !712, file: !3, line: 311, column: 11)
!716 = !DILocation(line: 311, column: 11, scope: !712)
!717 = !DILocation(line: 0, scope: !712)
!718 = !DILocation(line: 314, column: 6, scope: !657)
!719 = !DILocation(line: 315, column: 3, scope: !657)
!720 = !DILocation(line: 0, scope: !715)
!721 = !DILocation(line: 316, column: 1, scope: !657)
!722 = distinct !DISubprogram(name: "__i2b", scope: !3, file: !3, line: 319, type: !322, isLocal: false, isDefinition: true, scopeLine: 320, flags: DIFlagPrototyped, isOptimized: true, unit: !289, retainedNodes: !723)
!723 = !{!724, !725, !726}
!724 = !DILocalVariable(name: "ptr", arg: 1, scope: !722, file: !3, line: 319, type: !25)
!725 = !DILocalVariable(name: "i", arg: 2, scope: !722, file: !3, line: 319, type: !15)
!726 = !DILocalVariable(name: "b", scope: !722, file: !3, line: 321, type: !6)
!727 = !DILocation(line: 319, column: 1, scope: !722)
!728 = !DILocation(line: 97, column: 1, scope: !321, inlinedAt: !729)
!729 = distinct !DILocation(line: 323, column: 7, scope: !722)
!730 = !DILocation(line: 103, column: 7, scope: !331, inlinedAt: !729)
!731 = !DILocation(line: 103, column: 31, scope: !331, inlinedAt: !729)
!732 = !DILocation(line: 103, column: 7, scope: !321, inlinedAt: !729)
!733 = !DILocation(line: 106, column: 53, scope: !344, inlinedAt: !729)
!734 = !DILocation(line: 106, column: 31, scope: !344, inlinedAt: !729)
!735 = !DILocation(line: 109, column: 35, scope: !347, inlinedAt: !729)
!736 = !DILocation(line: 109, column: 11, scope: !344, inlinedAt: !729)
!737 = !DILocation(line: 115, column: 13, scope: !350, inlinedAt: !729)
!738 = !DILocation(line: 100, column: 12, scope: !321, inlinedAt: !729)
!739 = !DILocation(line: 115, column: 41, scope: !350, inlinedAt: !729)
!740 = !DILocation(line: 115, column: 7, scope: !321, inlinedAt: !729)
!741 = !DILocation(line: 117, column: 40, scope: !356, inlinedAt: !729)
!742 = !DILocation(line: 117, column: 34, scope: !356, inlinedAt: !729)
!743 = !DILocation(line: 118, column: 5, scope: !356, inlinedAt: !729)
!744 = !DILocation(line: 99, column: 7, scope: !321, inlinedAt: !729)
!745 = !DILocation(line: 123, column: 24, scope: !362, inlinedAt: !729)
!746 = !DILocation(line: 127, column: 14, scope: !366, inlinedAt: !729)
!747 = !DILocation(line: 127, column: 11, scope: !362, inlinedAt: !729)
!748 = !DILocation(line: 123, column: 12, scope: !362, inlinedAt: !729)
!749 = !DILocation(line: 128, column: 11, scope: !362, inlinedAt: !729)
!750 = !DILocation(line: 128, column: 14, scope: !362, inlinedAt: !729)
!751 = !DILocation(line: 129, column: 11, scope: !362, inlinedAt: !729)
!752 = !DILocation(line: 129, column: 19, scope: !362, inlinedAt: !729)
!753 = !DILocation(line: 0, scope: !362, inlinedAt: !729)
!754 = !DILocation(line: 131, column: 19, scope: !321, inlinedAt: !729)
!755 = !DILocation(line: 131, column: 24, scope: !321, inlinedAt: !729)
!756 = !DILocation(line: 131, column: 7, scope: !321, inlinedAt: !729)
!757 = !DILocation(line: 131, column: 13, scope: !321, inlinedAt: !729)
!758 = !DILocation(line: 132, column: 3, scope: !321, inlinedAt: !729)
!759 = !DILocation(line: 0, scope: !366, inlinedAt: !729)
!760 = !DILocation(line: 321, column: 12, scope: !722)
!761 = !DILocation(line: 324, column: 3, scope: !722)
!762 = !DILocation(line: 324, column: 12, scope: !722)
!763 = !DILocation(line: 325, column: 6, scope: !722)
!764 = !DILocation(line: 325, column: 11, scope: !722)
!765 = !DILocation(line: 326, column: 3, scope: !722)
!766 = distinct !DISubprogram(name: "__multiply", scope: !3, file: !3, line: 330, type: !767, isLocal: false, isDefinition: true, scopeLine: 331, flags: DIFlagPrototyped, isOptimized: true, unit: !289, retainedNodes: !769)
!767 = !DISubroutineType(types: !768)
!768 = !{!6, !25, !6, !6}
!769 = !{!770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788}
!770 = !DILocalVariable(name: "ptr", arg: 1, scope: !766, file: !3, line: 330, type: !25)
!771 = !DILocalVariable(name: "a", arg: 2, scope: !766, file: !3, line: 330, type: !6)
!772 = !DILocalVariable(name: "b", arg: 3, scope: !766, file: !3, line: 330, type: !6)
!773 = !DILocalVariable(name: "c", scope: !766, file: !3, line: 332, type: !6)
!774 = !DILocalVariable(name: "k", scope: !766, file: !3, line: 333, type: !15)
!775 = !DILocalVariable(name: "wa", scope: !766, file: !3, line: 333, type: !15)
!776 = !DILocalVariable(name: "wb", scope: !766, file: !3, line: 333, type: !15)
!777 = !DILocalVariable(name: "wc", scope: !766, file: !3, line: 333, type: !15)
!778 = !DILocalVariable(name: "carry", scope: !766, file: !3, line: 334, type: !21)
!779 = !DILocalVariable(name: "y", scope: !766, file: !3, line: 334, type: !21)
!780 = !DILocalVariable(name: "z", scope: !766, file: !3, line: 334, type: !21)
!781 = !DILocalVariable(name: "x", scope: !766, file: !3, line: 335, type: !413)
!782 = !DILocalVariable(name: "xa", scope: !766, file: !3, line: 335, type: !413)
!783 = !DILocalVariable(name: "xae", scope: !766, file: !3, line: 335, type: !413)
!784 = !DILocalVariable(name: "xb", scope: !766, file: !3, line: 335, type: !413)
!785 = !DILocalVariable(name: "xbe", scope: !766, file: !3, line: 335, type: !413)
!786 = !DILocalVariable(name: "xc", scope: !766, file: !3, line: 335, type: !413)
!787 = !DILocalVariable(name: "xc0", scope: !766, file: !3, line: 335, type: !413)
!788 = !DILocalVariable(name: "z2", scope: !766, file: !3, line: 337, type: !21)
!789 = !DILocation(line: 330, column: 1, scope: !766)
!790 = !DILocation(line: 340, column: 10, scope: !791)
!791 = distinct !DILexicalBlock(scope: !766, file: !3, line: 340, column: 7)
!792 = !DILocation(line: 340, column: 20, scope: !791)
!793 = !DILocation(line: 340, column: 15, scope: !791)
!794 = !DILocation(line: 340, column: 7, scope: !766)
!795 = !DILocation(line: 346, column: 10, scope: !766)
!796 = !DILocation(line: 333, column: 7, scope: !766)
!797 = !DILocation(line: 347, column: 11, scope: !766)
!798 = !DILocation(line: 333, column: 10, scope: !766)
!799 = !DILocation(line: 348, column: 11, scope: !766)
!800 = !DILocation(line: 333, column: 14, scope: !766)
!801 = !DILocation(line: 349, column: 11, scope: !766)
!802 = !DILocation(line: 333, column: 18, scope: !766)
!803 = !DILocation(line: 350, column: 15, scope: !804)
!804 = distinct !DILexicalBlock(scope: !766, file: !3, line: 350, column: 7)
!805 = !DILocation(line: 350, column: 10, scope: !804)
!806 = !DILocation(line: 350, column: 7, scope: !766)
!807 = !DILocation(line: 97, column: 1, scope: !321, inlinedAt: !808)
!808 = distinct !DILocation(line: 352, column: 7, scope: !766)
!809 = !DILocation(line: 103, column: 7, scope: !331, inlinedAt: !808)
!810 = !DILocation(line: 103, column: 31, scope: !331, inlinedAt: !808)
!811 = !DILocation(line: 103, column: 7, scope: !321, inlinedAt: !808)
!812 = !DILocation(line: 106, column: 53, scope: !344, inlinedAt: !808)
!813 = !DILocation(line: 106, column: 31, scope: !344, inlinedAt: !808)
!814 = !DILocation(line: 109, column: 35, scope: !347, inlinedAt: !808)
!815 = !DILocation(line: 109, column: 11, scope: !344, inlinedAt: !808)
!816 = !DILocation(line: 115, column: 13, scope: !350, inlinedAt: !808)
!817 = !DILocation(line: 100, column: 12, scope: !321, inlinedAt: !808)
!818 = !DILocation(line: 115, column: 41, scope: !350, inlinedAt: !808)
!819 = !DILocation(line: 115, column: 7, scope: !321, inlinedAt: !808)
!820 = !DILocation(line: 117, column: 40, scope: !356, inlinedAt: !808)
!821 = !DILocation(line: 117, column: 34, scope: !356, inlinedAt: !808)
!822 = !DILocation(line: 118, column: 5, scope: !356, inlinedAt: !808)
!823 = !DILocation(line: 121, column: 13, scope: !362, inlinedAt: !808)
!824 = !DILocation(line: 99, column: 7, scope: !321, inlinedAt: !808)
!825 = !DILocation(line: 123, column: 24, scope: !362, inlinedAt: !808)
!826 = !DILocation(line: 127, column: 14, scope: !366, inlinedAt: !808)
!827 = !DILocation(line: 127, column: 11, scope: !362, inlinedAt: !808)
!828 = !DILocation(line: 123, column: 12, scope: !362, inlinedAt: !808)
!829 = !DILocation(line: 128, column: 11, scope: !362, inlinedAt: !808)
!830 = !DILocation(line: 128, column: 14, scope: !362, inlinedAt: !808)
!831 = !DILocation(line: 129, column: 11, scope: !362, inlinedAt: !808)
!832 = !DILocation(line: 129, column: 19, scope: !362, inlinedAt: !808)
!833 = !DILocation(line: 0, scope: !362, inlinedAt: !808)
!834 = !DILocation(line: 131, column: 19, scope: !321, inlinedAt: !808)
!835 = !DILocation(line: 131, column: 24, scope: !321, inlinedAt: !808)
!836 = !DILocation(line: 131, column: 7, scope: !321, inlinedAt: !808)
!837 = !DILocation(line: 131, column: 13, scope: !321, inlinedAt: !808)
!838 = !DILocation(line: 132, column: 3, scope: !321, inlinedAt: !808)
!839 = !DILocation(line: 0, scope: !366, inlinedAt: !808)
!840 = !DILocation(line: 332, column: 12, scope: !766)
!841 = !DILocation(line: 353, column: 12, scope: !842)
!842 = distinct !DILexicalBlock(scope: !766, file: !3, line: 353, column: 3)
!843 = !DILocation(line: 335, column: 12, scope: !766)
!844 = !DILocation(line: 353, column: 26, scope: !842)
!845 = !DILocation(line: 335, column: 16, scope: !766)
!846 = !DILocation(line: 353, column: 34, scope: !847)
!847 = distinct !DILexicalBlock(scope: !842, file: !3, line: 353, column: 3)
!848 = !DILocation(line: 353, column: 3, scope: !842)
!849 = !DILocation(line: 354, column: 8, scope: !847)
!850 = distinct !{!850, !848, !851, !852}
!851 = !DILocation(line: 354, column: 10, scope: !842)
!852 = !{!"llvm.loop.isvectorized", i32 1}
!853 = distinct !{!853, !854}
!854 = !{!"llvm.loop.unroll.disable"}
!855 = !DILocation(line: 353, column: 41, scope: !847)
!856 = distinct !{!856, !848, !851, !857, !852}
!857 = !{!"llvm.loop.unroll.runtime.disable"}
!858 = !DILocation(line: 355, column: 8, scope: !766)
!859 = !DILocation(line: 356, column: 12, scope: !766)
!860 = !DILocation(line: 335, column: 21, scope: !766)
!861 = !DILocation(line: 358, column: 12, scope: !766)
!862 = !DILocation(line: 335, column: 32, scope: !766)
!863 = !DILocation(line: 335, column: 43, scope: !766)
!864 = !DILocation(line: 361, column: 13, scope: !865)
!865 = distinct !DILexicalBlock(scope: !866, file: !3, line: 361, column: 3)
!866 = distinct !DILexicalBlock(scope: !766, file: !3, line: 361, column: 3)
!867 = !DILocation(line: 361, column: 3, scope: !866)
!868 = !DILocation(line: 357, column: 8, scope: !766)
!869 = !DILocation(line: 335, column: 27, scope: !766)
!870 = !DILocation(line: 363, column: 16, scope: !871)
!871 = distinct !DILexicalBlock(scope: !872, file: !3, line: 363, column: 11)
!872 = distinct !DILexicalBlock(scope: !865, file: !3, line: 362, column: 5)
!873 = !DILocation(line: 335, column: 38, scope: !766)
!874 = !DILocation(line: 416, column: 43, scope: !875)
!875 = distinct !DILexicalBlock(scope: !876, file: !3, line: 416, column: 3)
!876 = distinct !DILexicalBlock(scope: !766, file: !3, line: 416, column: 3)
!877 = !DILocation(line: 363, column: 20, scope: !871)
!878 = !DILocation(line: 334, column: 18, scope: !766)
!879 = !DILocation(line: 363, column: 30, scope: !871)
!880 = !DILocation(line: 363, column: 11, scope: !872)
!881 = !DILocation(line: 0, scope: !882)
!882 = distinct !DILexicalBlock(scope: !883, file: !3, line: 369, column: 6)
!883 = distinct !DILexicalBlock(scope: !871, file: !3, line: 364, column: 2)
!884 = !DILocation(line: 334, column: 11, scope: !766)
!885 = !DILocation(line: 370, column: 13, scope: !882)
!886 = !DILocation(line: 370, column: 16, scope: !882)
!887 = !DILocation(line: 370, column: 26, scope: !882)
!888 = !DILocation(line: 370, column: 33, scope: !882)
!889 = !DILocation(line: 370, column: 37, scope: !882)
!890 = !DILocation(line: 370, column: 30, scope: !882)
!891 = !DILocation(line: 370, column: 47, scope: !882)
!892 = !DILocation(line: 334, column: 21, scope: !766)
!893 = !DILocation(line: 371, column: 18, scope: !882)
!894 = !DILocation(line: 372, column: 16, scope: !882)
!895 = !DILocation(line: 372, column: 19, scope: !882)
!896 = !DILocation(line: 372, column: 26, scope: !882)
!897 = !DILocation(line: 372, column: 37, scope: !882)
!898 = !DILocation(line: 372, column: 30, scope: !882)
!899 = !DILocation(line: 372, column: 44, scope: !882)
!900 = !DILocation(line: 337, column: 11, scope: !766)
!901 = !DILocation(line: 373, column: 19, scope: !882)
!902 = !DILocation(line: 374, column: 8, scope: !882)
!903 = !DILocation(line: 376, column: 13, scope: !883)
!904 = !DILocation(line: 375, column: 6, scope: !882)
!905 = distinct !{!905, !906, !907}
!906 = !DILocation(line: 368, column: 4, scope: !883)
!907 = !DILocation(line: 376, column: 18, scope: !883)
!908 = !DILocation(line: 377, column: 8, scope: !883)
!909 = !DILocation(line: 379, column: 16, scope: !910)
!910 = distinct !DILexicalBlock(scope: !872, file: !3, line: 379, column: 11)
!911 = !DILocation(line: 378, column: 2, scope: !883)
!912 = !DILocation(line: 379, column: 20, scope: !910)
!913 = !DILocation(line: 379, column: 27, scope: !910)
!914 = !DILocation(line: 379, column: 11, scope: !872)
!915 = !DILocation(line: 384, column: 9, scope: !916)
!916 = distinct !DILexicalBlock(scope: !910, file: !3, line: 380, column: 2)
!917 = !DILocation(line: 385, column: 4, scope: !916)
!918 = !DILocation(line: 387, column: 33, scope: !919)
!919 = distinct !DILexicalBlock(scope: !916, file: !3, line: 386, column: 6)
!920 = !DILocation(line: 0, scope: !919)
!921 = !DILocation(line: 387, column: 13, scope: !919)
!922 = !DILocation(line: 387, column: 16, scope: !919)
!923 = !DILocation(line: 387, column: 26, scope: !919)
!924 = !DILocation(line: 387, column: 37, scope: !919)
!925 = !DILocation(line: 387, column: 30, scope: !919)
!926 = !DILocation(line: 387, column: 44, scope: !919)
!927 = !DILocation(line: 388, column: 18, scope: !919)
!928 = !DILocation(line: 389, column: 8, scope: !919)
!929 = !DILocation(line: 390, column: 16, scope: !919)
!930 = !DILocation(line: 390, column: 14, scope: !919)
!931 = !DILocation(line: 390, column: 19, scope: !919)
!932 = !DILocation(line: 390, column: 26, scope: !919)
!933 = !DILocation(line: 390, column: 33, scope: !919)
!934 = !DILocation(line: 390, column: 37, scope: !919)
!935 = !DILocation(line: 390, column: 30, scope: !919)
!936 = !DILocation(line: 390, column: 47, scope: !919)
!937 = !DILocation(line: 391, column: 19, scope: !919)
!938 = !DILocation(line: 393, column: 13, scope: !916)
!939 = !DILocation(line: 392, column: 6, scope: !919)
!940 = distinct !{!940, !917, !941}
!941 = !DILocation(line: 393, column: 18, scope: !916)
!942 = !DILocation(line: 394, column: 8, scope: !916)
!943 = !DILocation(line: 395, column: 2, scope: !916)
!944 = !DILocation(line: 361, column: 22, scope: !865)
!945 = !DILocation(line: 361, column: 29, scope: !865)
!946 = distinct !{!946, !867, !947}
!947 = !DILocation(line: 396, column: 5, scope: !866)
!948 = !DILocation(line: 416, column: 48, scope: !875)
!949 = !DILocation(line: 416, column: 47, scope: !875)
!950 = !DILocation(line: 416, column: 46, scope: !875)
!951 = !DILocation(line: 416, column: 3, scope: !876)
!952 = !DILocation(line: 416, column: 54, scope: !875)
!953 = !DILocation(line: 416, column: 39, scope: !875)
!954 = distinct !{!954, !951, !955}
!955 = !DILocation(line: 416, column: 59, scope: !876)
!956 = !DILocation(line: 0, scope: !875)
!957 = !DILocation(line: 417, column: 6, scope: !766)
!958 = !DILocation(line: 417, column: 11, scope: !766)
!959 = !DILocation(line: 418, column: 3, scope: !766)
!960 = !DILocation(line: 422, column: 1, scope: !2)
!961 = !DILocation(line: 429, column: 14, scope: !962)
!962 = distinct !DILexicalBlock(scope: !2, file: !3, line: 429, column: 7)
!963 = !DILocation(line: 426, column: 7, scope: !2)
!964 = !DILocation(line: 429, column: 19, scope: !962)
!965 = !DILocation(line: 429, column: 7, scope: !2)
!966 = !DILocation(line: 430, column: 32, scope: !962)
!967 = !DILocation(line: 430, column: 26, scope: !962)
!968 = !DILocation(line: 430, column: 9, scope: !962)
!969 = !DILocation(line: 430, column: 5, scope: !962)
!970 = !DILocation(line: 432, column: 11, scope: !971)
!971 = distinct !DILexicalBlock(scope: !2, file: !3, line: 432, column: 7)
!972 = !DILocation(line: 432, column: 7, scope: !2)
!973 = !DILocation(line: 435, column: 14, scope: !974)
!974 = distinct !DILexicalBlock(scope: !2, file: !3, line: 435, column: 7)
!975 = !{!333, !337, i64 112}
!976 = !DILocation(line: 425, column: 17, scope: !2)
!977 = !DILocation(line: 435, column: 12, scope: !974)
!978 = !DILocation(line: 435, column: 7, scope: !2)
!979 = !DILocation(line: 319, column: 1, scope: !722, inlinedAt: !980)
!980 = distinct !DILocation(line: 438, column: 33, scope: !981)
!981 = distinct !DILexicalBlock(scope: !974, file: !3, line: 436, column: 5)
!982 = !DILocation(line: 97, column: 1, scope: !321, inlinedAt: !983)
!983 = distinct !DILocation(line: 323, column: 7, scope: !722, inlinedAt: !980)
!984 = !DILocation(line: 103, column: 7, scope: !331, inlinedAt: !983)
!985 = !DILocation(line: 103, column: 31, scope: !331, inlinedAt: !983)
!986 = !DILocation(line: 103, column: 7, scope: !321, inlinedAt: !983)
!987 = !DILocation(line: 106, column: 53, scope: !344, inlinedAt: !983)
!988 = !DILocation(line: 106, column: 31, scope: !344, inlinedAt: !983)
!989 = !DILocation(line: 109, column: 35, scope: !347, inlinedAt: !983)
!990 = !DILocation(line: 109, column: 11, scope: !344, inlinedAt: !983)
!991 = !DILocation(line: 115, column: 13, scope: !350, inlinedAt: !983)
!992 = !DILocation(line: 100, column: 12, scope: !321, inlinedAt: !983)
!993 = !DILocation(line: 115, column: 41, scope: !350, inlinedAt: !983)
!994 = !DILocation(line: 115, column: 7, scope: !321, inlinedAt: !983)
!995 = !DILocation(line: 117, column: 40, scope: !356, inlinedAt: !983)
!996 = !DILocation(line: 117, column: 34, scope: !356, inlinedAt: !983)
!997 = !DILocation(line: 118, column: 5, scope: !356, inlinedAt: !983)
!998 = !DILocation(line: 99, column: 7, scope: !321, inlinedAt: !983)
!999 = !DILocation(line: 123, column: 24, scope: !362, inlinedAt: !983)
!1000 = !DILocation(line: 127, column: 14, scope: !366, inlinedAt: !983)
!1001 = !DILocation(line: 127, column: 11, scope: !362, inlinedAt: !983)
!1002 = !DILocation(line: 123, column: 12, scope: !362, inlinedAt: !983)
!1003 = !DILocation(line: 128, column: 11, scope: !362, inlinedAt: !983)
!1004 = !DILocation(line: 128, column: 14, scope: !362, inlinedAt: !983)
!1005 = !DILocation(line: 129, column: 11, scope: !362, inlinedAt: !983)
!1006 = !DILocation(line: 129, column: 19, scope: !362, inlinedAt: !983)
!1007 = !DILocation(line: 0, scope: !362, inlinedAt: !983)
!1008 = !DILocation(line: 131, column: 19, scope: !321, inlinedAt: !983)
!1009 = !DILocation(line: 131, column: 24, scope: !321, inlinedAt: !983)
!1010 = !DILocation(line: 131, column: 7, scope: !321, inlinedAt: !983)
!1011 = !DILocation(line: 131, column: 13, scope: !321, inlinedAt: !983)
!1012 = !DILocation(line: 132, column: 3, scope: !321, inlinedAt: !983)
!1013 = !DILocation(line: 0, scope: !366, inlinedAt: !983)
!1014 = !DILocation(line: 321, column: 12, scope: !722, inlinedAt: !980)
!1015 = !DILocation(line: 324, column: 3, scope: !722, inlinedAt: !980)
!1016 = !DILocation(line: 324, column: 12, scope: !722, inlinedAt: !980)
!1017 = !DILocation(line: 325, column: 6, scope: !722, inlinedAt: !980)
!1018 = !DILocation(line: 325, column: 11, scope: !722, inlinedAt: !980)
!1019 = !DILocation(line: 438, column: 31, scope: !981)
!1020 = !DILocation(line: 439, column: 11, scope: !981)
!1021 = !DILocation(line: 439, column: 17, scope: !981)
!1022 = !DILocation(line: 440, column: 5, scope: !981)
!1023 = !DILocation(line: 443, column: 13, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1025, file: !3, line: 443, column: 11)
!1025 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 442, column: 5)
!1026 = distinct !DILexicalBlock(scope: !1027, file: !3, line: 441, column: 3)
!1027 = distinct !DILexicalBlock(scope: !2, file: !3, line: 441, column: 3)
!1028 = !DILocation(line: 0, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1025, file: !3, line: 449, column: 11)
!1030 = !DILocation(line: 0, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 444, column: 2)
!1032 = !DILocation(line: 0, scope: !1025)
!1033 = !DILocation(line: 443, column: 11, scope: !1025)
!1034 = !DILocation(line: 445, column: 9, scope: !1031)
!1035 = !DILocation(line: 425, column: 12, scope: !2)
!1036 = !DILocation(line: 136, column: 1, scope: !385, inlinedAt: !1037)
!1037 = distinct !DILocation(line: 446, column: 4, scope: !1031)
!1038 = !DILocation(line: 139, column: 7, scope: !393, inlinedAt: !1037)
!1039 = !DILocation(line: 139, column: 7, scope: !385, inlinedAt: !1037)
!1040 = !DILocation(line: 141, column: 18, scope: !396, inlinedAt: !1037)
!1041 = !DILocation(line: 141, column: 45, scope: !396, inlinedAt: !1037)
!1042 = !DILocation(line: 141, column: 16, scope: !396, inlinedAt: !1037)
!1043 = !DILocation(line: 142, column: 38, scope: !396, inlinedAt: !1037)
!1044 = !DILocation(line: 143, column: 5, scope: !396, inlinedAt: !1037)
!1045 = !DILocation(line: 0, scope: !962)
!1046 = !DILocation(line: 449, column: 15, scope: !1029)
!1047 = !DILocation(line: 449, column: 11, scope: !1025)
!1048 = !DILocation(line: 451, column: 23, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1025, file: !3, line: 451, column: 11)
!1050 = !DILocation(line: 425, column: 22, scope: !2)
!1051 = !DILocation(line: 451, column: 17, scope: !1049)
!1052 = !DILocation(line: 451, column: 11, scope: !1025)
!1053 = distinct !{!1053, !1054, !1055}
!1054 = !DILocation(line: 441, column: 3, scope: !1027)
!1055 = !DILocation(line: 457, column: 5, scope: !1027)
!1056 = !DILocation(line: 453, column: 22, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1049, file: !3, line: 452, column: 2)
!1058 = !DILocation(line: 453, column: 20, scope: !1057)
!1059 = !DILocation(line: 454, column: 9, scope: !1057)
!1060 = !DILocation(line: 454, column: 15, scope: !1057)
!1061 = !DILocation(line: 455, column: 2, scope: !1057)
!1062 = !DILocation(line: 0, scope: !971)
!1063 = !DILocation(line: 459, column: 1, scope: !2)
!1064 = distinct !DISubprogram(name: "__lshift", scope: !3, file: !3, line: 462, type: !4, isLocal: false, isDefinition: true, scopeLine: 463, flags: DIFlagPrototyped, isOptimized: true, unit: !289, retainedNodes: !1065)
!1065 = !{!1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077}
!1066 = !DILocalVariable(name: "ptr", arg: 1, scope: !1064, file: !3, line: 462, type: !25)
!1067 = !DILocalVariable(name: "b", arg: 2, scope: !1064, file: !3, line: 462, type: !6)
!1068 = !DILocalVariable(name: "k", arg: 3, scope: !1064, file: !3, line: 462, type: !15)
!1069 = !DILocalVariable(name: "i", scope: !1064, file: !3, line: 464, type: !15)
!1070 = !DILocalVariable(name: "k1", scope: !1064, file: !3, line: 464, type: !15)
!1071 = !DILocalVariable(name: "n", scope: !1064, file: !3, line: 464, type: !15)
!1072 = !DILocalVariable(name: "n1", scope: !1064, file: !3, line: 464, type: !15)
!1073 = !DILocalVariable(name: "b1", scope: !1064, file: !3, line: 465, type: !6)
!1074 = !DILocalVariable(name: "x", scope: !1064, file: !3, line: 466, type: !413)
!1075 = !DILocalVariable(name: "x1", scope: !1064, file: !3, line: 466, type: !413)
!1076 = !DILocalVariable(name: "xe", scope: !1064, file: !3, line: 466, type: !413)
!1077 = !DILocalVariable(name: "z", scope: !1064, file: !3, line: 466, type: !21)
!1078 = !DILocation(line: 462, column: 1, scope: !1064)
!1079 = !DILocation(line: 469, column: 9, scope: !1064)
!1080 = !DILocation(line: 464, column: 14, scope: !1064)
!1081 = !DILocation(line: 473, column: 11, scope: !1064)
!1082 = !DILocation(line: 464, column: 10, scope: !1064)
!1083 = !DILocation(line: 474, column: 15, scope: !1064)
!1084 = !DILocation(line: 474, column: 10, scope: !1064)
!1085 = !DILocation(line: 474, column: 20, scope: !1064)
!1086 = !DILocation(line: 464, column: 17, scope: !1064)
!1087 = !DILocation(line: 475, column: 15, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 475, column: 3)
!1089 = !DILocation(line: 464, column: 7, scope: !1064)
!1090 = !DILocation(line: 475, column: 27, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 475, column: 3)
!1092 = !DILocation(line: 475, column: 3, scope: !1088)
!1093 = !DILocation(line: 476, column: 7, scope: !1091)
!1094 = !DILocation(line: 475, column: 34, scope: !1091)
!1095 = distinct !{!1095, !1092, !1096}
!1096 = !DILocation(line: 476, column: 7, scope: !1088)
!1097 = !DILocation(line: 0, scope: !1091)
!1098 = !DILocation(line: 97, column: 1, scope: !321, inlinedAt: !1099)
!1099 = distinct !DILocation(line: 477, column: 8, scope: !1064)
!1100 = !DILocation(line: 103, column: 7, scope: !331, inlinedAt: !1099)
!1101 = !DILocation(line: 103, column: 31, scope: !331, inlinedAt: !1099)
!1102 = !DILocation(line: 103, column: 7, scope: !321, inlinedAt: !1099)
!1103 = !DILocation(line: 106, column: 53, scope: !344, inlinedAt: !1099)
!1104 = !DILocation(line: 106, column: 31, scope: !344, inlinedAt: !1099)
!1105 = !DILocation(line: 109, column: 35, scope: !347, inlinedAt: !1099)
!1106 = !DILocation(line: 109, column: 11, scope: !344, inlinedAt: !1099)
!1107 = !DILocation(line: 115, column: 13, scope: !350, inlinedAt: !1099)
!1108 = !DILocation(line: 100, column: 12, scope: !321, inlinedAt: !1099)
!1109 = !DILocation(line: 115, column: 41, scope: !350, inlinedAt: !1099)
!1110 = !DILocation(line: 115, column: 7, scope: !321, inlinedAt: !1099)
!1111 = !DILocation(line: 117, column: 40, scope: !356, inlinedAt: !1099)
!1112 = !DILocation(line: 117, column: 34, scope: !356, inlinedAt: !1099)
!1113 = !DILocation(line: 118, column: 5, scope: !356, inlinedAt: !1099)
!1114 = !DILocation(line: 121, column: 13, scope: !362, inlinedAt: !1099)
!1115 = !DILocation(line: 99, column: 7, scope: !321, inlinedAt: !1099)
!1116 = !DILocation(line: 123, column: 24, scope: !362, inlinedAt: !1099)
!1117 = !DILocation(line: 127, column: 14, scope: !366, inlinedAt: !1099)
!1118 = !DILocation(line: 127, column: 11, scope: !362, inlinedAt: !1099)
!1119 = !DILocation(line: 123, column: 12, scope: !362, inlinedAt: !1099)
!1120 = !DILocation(line: 128, column: 11, scope: !362, inlinedAt: !1099)
!1121 = !DILocation(line: 128, column: 14, scope: !362, inlinedAt: !1099)
!1122 = !DILocation(line: 129, column: 11, scope: !362, inlinedAt: !1099)
!1123 = !DILocation(line: 129, column: 19, scope: !362, inlinedAt: !1099)
!1124 = !DILocation(line: 0, scope: !362, inlinedAt: !1099)
!1125 = !DILocation(line: 131, column: 19, scope: !321, inlinedAt: !1099)
!1126 = !DILocation(line: 131, column: 24, scope: !321, inlinedAt: !1099)
!1127 = !DILocation(line: 131, column: 7, scope: !321, inlinedAt: !1099)
!1128 = !DILocation(line: 131, column: 13, scope: !321, inlinedAt: !1099)
!1129 = !DILocation(line: 132, column: 3, scope: !321, inlinedAt: !1099)
!1130 = !DILocation(line: 0, scope: !366, inlinedAt: !1099)
!1131 = !DILocation(line: 465, column: 12, scope: !1064)
!1132 = !DILocation(line: 478, column: 8, scope: !1064)
!1133 = !DILocation(line: 466, column: 16, scope: !1064)
!1134 = !DILocation(line: 479, column: 17, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 479, column: 3)
!1136 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 479, column: 3)
!1137 = !DILocation(line: 479, column: 3, scope: !1136)
!1138 = !DILocation(line: 480, column: 8, scope: !1135)
!1139 = !DILocation(line: 480, column: 11, scope: !1135)
!1140 = distinct !{!1140, !1137, !1141, !852}
!1141 = !DILocation(line: 480, column: 13, scope: !1136)
!1142 = !DILocation(line: 479, column: 23, scope: !1135)
!1143 = distinct !{!1143, !1137, !1141, !857, !852}
!1144 = !DILocation(line: 0, scope: !1135)
!1145 = !DILocation(line: 481, column: 7, scope: !1064)
!1146 = !DILocation(line: 466, column: 12, scope: !1064)
!1147 = !DILocation(line: 482, column: 15, scope: !1064)
!1148 = !DILocation(line: 482, column: 10, scope: !1064)
!1149 = !DILocation(line: 466, column: 21, scope: !1064)
!1150 = !DILocation(line: 484, column: 9, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 484, column: 7)
!1152 = !DILocation(line: 484, column: 7, scope: !1064)
!1153 = !DILocation(line: 514, column: 17, scope: !1151)
!1154 = !DILocation(line: 0, scope: !1151)
!1155 = !DILocation(line: 514, column: 15, scope: !1151)
!1156 = !DILocation(line: 514, column: 10, scope: !1151)
!1157 = !DILocation(line: 514, column: 13, scope: !1151)
!1158 = !DILocation(line: 514, column: 7, scope: !1151)
!1159 = distinct !{!1159, !854}
!1160 = !{!1161}
!1161 = distinct !{!1161, !1162}
!1162 = distinct !{!1162, !"LVerDomain"}
!1163 = !{!1164}
!1164 = distinct !{!1164, !1162}
!1165 = distinct !{!1165, !1166, !1167, !852}
!1166 = !DILocation(line: 513, column: 5, scope: !1151)
!1167 = !DILocation(line: 515, column: 18, scope: !1151)
!1168 = distinct !{!1168, !854}
!1169 = !DILocation(line: 486, column: 15, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1151, file: !3, line: 485, column: 5)
!1171 = !DILocation(line: 466, column: 25, scope: !1064)
!1172 = !DILocation(line: 488, column: 7, scope: !1170)
!1173 = !DILocation(line: 0, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 489, column: 2)
!1175 = !DILocation(line: 490, column: 12, scope: !1174)
!1176 = !DILocation(line: 490, column: 15, scope: !1174)
!1177 = !DILocation(line: 490, column: 20, scope: !1174)
!1178 = !DILocation(line: 490, column: 7, scope: !1174)
!1179 = !DILocation(line: 490, column: 10, scope: !1174)
!1180 = !DILocation(line: 491, column: 10, scope: !1174)
!1181 = !DILocation(line: 491, column: 8, scope: !1174)
!1182 = !DILocation(line: 491, column: 13, scope: !1174)
!1183 = !DILocation(line: 492, column: 2, scope: !1174)
!1184 = distinct !{!1184, !1172, !1185}
!1185 = !DILocation(line: 493, column: 20, scope: !1170)
!1186 = distinct !{!1186, !854}
!1187 = !DILocation(line: 494, column: 16, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 494, column: 11)
!1189 = !DILocation(line: 494, column: 21, scope: !1188)
!1190 = !DILocation(line: 495, column: 2, scope: !1188)
!1191 = !DILocation(line: 494, column: 11, scope: !1170)
!1192 = !DILocation(line: 515, column: 14, scope: !1151)
!1193 = distinct !{!1193, !1166, !1167, !852}
!1194 = !DILocation(line: 0, scope: !1064)
!1195 = !DILocation(line: 516, column: 17, scope: !1064)
!1196 = !DILocation(line: 516, column: 7, scope: !1064)
!1197 = !DILocation(line: 516, column: 12, scope: !1064)
!1198 = !DILocation(line: 136, column: 1, scope: !385, inlinedAt: !1199)
!1199 = distinct !DILocation(line: 517, column: 3, scope: !1064)
!1200 = !DILocation(line: 139, column: 7, scope: !393, inlinedAt: !1199)
!1201 = !DILocation(line: 139, column: 7, scope: !385, inlinedAt: !1199)
!1202 = !DILocation(line: 141, column: 18, scope: !396, inlinedAt: !1199)
!1203 = !DILocation(line: 141, column: 45, scope: !396, inlinedAt: !1199)
!1204 = !DILocation(line: 141, column: 16, scope: !396, inlinedAt: !1199)
!1205 = !DILocation(line: 142, column: 38, scope: !396, inlinedAt: !1199)
!1206 = !DILocation(line: 143, column: 5, scope: !396, inlinedAt: !1199)
!1207 = !DILocation(line: 518, column: 3, scope: !1064)
!1208 = distinct !DISubprogram(name: "__mcmp", scope: !3, file: !3, line: 522, type: !1209, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: true, unit: !289, retainedNodes: !1211)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!15, !6, !6}
!1211 = !{!1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219}
!1212 = !DILocalVariable(name: "a", arg: 1, scope: !1208, file: !3, line: 522, type: !6)
!1213 = !DILocalVariable(name: "b", arg: 2, scope: !1208, file: !3, line: 522, type: !6)
!1214 = !DILocalVariable(name: "xa", scope: !1208, file: !3, line: 524, type: !413)
!1215 = !DILocalVariable(name: "xa0", scope: !1208, file: !3, line: 524, type: !413)
!1216 = !DILocalVariable(name: "xb", scope: !1208, file: !3, line: 524, type: !413)
!1217 = !DILocalVariable(name: "xb0", scope: !1208, file: !3, line: 524, type: !413)
!1218 = !DILocalVariable(name: "i", scope: !1208, file: !3, line: 525, type: !15)
!1219 = !DILocalVariable(name: "j", scope: !1208, file: !3, line: 525, type: !15)
!1220 = !DILocation(line: 522, column: 1, scope: !1208)
!1221 = !DILocation(line: 527, column: 10, scope: !1208)
!1222 = !DILocation(line: 525, column: 7, scope: !1208)
!1223 = !DILocation(line: 528, column: 10, scope: !1208)
!1224 = !DILocation(line: 525, column: 10, scope: !1208)
!1225 = !DILocation(line: 535, column: 9, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 535, column: 7)
!1227 = !DILocation(line: 535, column: 7, scope: !1208)
!1228 = !DILocation(line: 537, column: 9, scope: !1208)
!1229 = !DILocation(line: 524, column: 17, scope: !1208)
!1230 = !DILocation(line: 538, column: 12, scope: !1208)
!1231 = !DILocation(line: 524, column: 12, scope: !1208)
!1232 = !DILocation(line: 524, column: 28, scope: !1208)
!1233 = !DILocation(line: 540, column: 12, scope: !1208)
!1234 = !DILocation(line: 524, column: 23, scope: !1208)
!1235 = !DILocation(line: 541, column: 3, scope: !1208)
!1236 = !DILocation(line: 0, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 543, column: 11)
!1238 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 542, column: 5)
!1239 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 541, column: 3)
!1240 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 541, column: 3)
!1241 = !DILocation(line: 543, column: 12, scope: !1237)
!1242 = !DILocation(line: 543, column: 11, scope: !1237)
!1243 = !DILocation(line: 543, column: 21, scope: !1237)
!1244 = !DILocation(line: 543, column: 20, scope: !1237)
!1245 = !DILocation(line: 543, column: 17, scope: !1237)
!1246 = !DILocation(line: 543, column: 11, scope: !1238)
!1247 = !DILocation(line: 544, column: 13, scope: !1237)
!1248 = !DILocation(line: 544, column: 9, scope: !1237)
!1249 = !DILocation(line: 544, column: 2, scope: !1237)
!1250 = !DILocation(line: 545, column: 14, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 545, column: 11)
!1252 = !DILocation(line: 545, column: 11, scope: !1238)
!1253 = distinct !{!1253, !1254, !1255}
!1254 = !DILocation(line: 541, column: 3, scope: !1240)
!1255 = !DILocation(line: 547, column: 5, scope: !1240)
!1256 = !DILocation(line: 0, scope: !1208)
!1257 = !DILocation(line: 549, column: 1, scope: !1208)
!1258 = distinct !DISubprogram(name: "__mdiff", scope: !3, file: !3, line: 552, type: !767, isLocal: false, isDefinition: true, scopeLine: 554, flags: DIFlagPrototyped, isOptimized: true, unit: !289, retainedNodes: !1259)
!1259 = !{!1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274}
!1260 = !DILocalVariable(name: "ptr", arg: 1, scope: !1258, file: !3, line: 552, type: !25)
!1261 = !DILocalVariable(name: "a", arg: 2, scope: !1258, file: !3, line: 552, type: !6)
!1262 = !DILocalVariable(name: "b", arg: 3, scope: !1258, file: !3, line: 552, type: !6)
!1263 = !DILocalVariable(name: "c", scope: !1258, file: !3, line: 555, type: !6)
!1264 = !DILocalVariable(name: "i", scope: !1258, file: !3, line: 556, type: !15)
!1265 = !DILocalVariable(name: "wa", scope: !1258, file: !3, line: 556, type: !15)
!1266 = !DILocalVariable(name: "wb", scope: !1258, file: !3, line: 556, type: !15)
!1267 = !DILocalVariable(name: "borrow", scope: !1258, file: !3, line: 557, type: !15)
!1268 = !DILocalVariable(name: "y", scope: !1258, file: !3, line: 557, type: !15)
!1269 = !DILocalVariable(name: "xa", scope: !1258, file: !3, line: 558, type: !413)
!1270 = !DILocalVariable(name: "xae", scope: !1258, file: !3, line: 558, type: !413)
!1271 = !DILocalVariable(name: "xb", scope: !1258, file: !3, line: 558, type: !413)
!1272 = !DILocalVariable(name: "xbe", scope: !1258, file: !3, line: 558, type: !413)
!1273 = !DILocalVariable(name: "xc", scope: !1258, file: !3, line: 558, type: !413)
!1274 = !DILocalVariable(name: "z", scope: !1258, file: !3, line: 560, type: !15)
!1275 = !DILocation(line: 552, column: 1, scope: !1258)
!1276 = !DILocation(line: 522, column: 1, scope: !1208, inlinedAt: !1277)
!1277 = distinct !DILocation(line: 563, column: 7, scope: !1258)
!1278 = !DILocation(line: 527, column: 10, scope: !1208, inlinedAt: !1277)
!1279 = !DILocation(line: 525, column: 7, scope: !1208, inlinedAt: !1277)
!1280 = !DILocation(line: 528, column: 10, scope: !1208, inlinedAt: !1277)
!1281 = !DILocation(line: 525, column: 10, scope: !1208, inlinedAt: !1277)
!1282 = !DILocation(line: 535, column: 9, scope: !1226, inlinedAt: !1277)
!1283 = !DILocation(line: 535, column: 7, scope: !1208, inlinedAt: !1277)
!1284 = !DILocation(line: 537, column: 9, scope: !1208, inlinedAt: !1277)
!1285 = !DILocation(line: 524, column: 17, scope: !1208, inlinedAt: !1277)
!1286 = !DILocation(line: 538, column: 12, scope: !1208, inlinedAt: !1277)
!1287 = !DILocation(line: 524, column: 12, scope: !1208, inlinedAt: !1277)
!1288 = !DILocation(line: 524, column: 28, scope: !1208, inlinedAt: !1277)
!1289 = !DILocation(line: 540, column: 12, scope: !1208, inlinedAt: !1277)
!1290 = !DILocation(line: 524, column: 23, scope: !1208, inlinedAt: !1277)
!1291 = !DILocation(line: 541, column: 3, scope: !1208, inlinedAt: !1277)
!1292 = !DILocation(line: 0, scope: !1237, inlinedAt: !1277)
!1293 = !DILocation(line: 543, column: 12, scope: !1237, inlinedAt: !1277)
!1294 = !DILocation(line: 543, column: 11, scope: !1237, inlinedAt: !1277)
!1295 = !DILocation(line: 543, column: 21, scope: !1237, inlinedAt: !1277)
!1296 = !DILocation(line: 543, column: 20, scope: !1237, inlinedAt: !1277)
!1297 = !DILocation(line: 543, column: 17, scope: !1237, inlinedAt: !1277)
!1298 = !DILocation(line: 543, column: 11, scope: !1238, inlinedAt: !1277)
!1299 = !DILocation(line: 544, column: 13, scope: !1237, inlinedAt: !1277)
!1300 = !DILocation(line: 544, column: 9, scope: !1237, inlinedAt: !1277)
!1301 = !DILocation(line: 544, column: 2, scope: !1237, inlinedAt: !1277)
!1302 = !DILocation(line: 545, column: 14, scope: !1251, inlinedAt: !1277)
!1303 = !DILocation(line: 545, column: 11, scope: !1238, inlinedAt: !1277)
!1304 = !DILocation(line: 556, column: 7, scope: !1258)
!1305 = !DILocation(line: 97, column: 1, scope: !321, inlinedAt: !1306)
!1306 = distinct !DILocation(line: 566, column: 11, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 565, column: 5)
!1308 = distinct !DILexicalBlock(scope: !1258, file: !3, line: 564, column: 7)
!1309 = !DILocation(line: 103, column: 7, scope: !331, inlinedAt: !1306)
!1310 = !DILocation(line: 103, column: 31, scope: !331, inlinedAt: !1306)
!1311 = !DILocation(line: 103, column: 7, scope: !321, inlinedAt: !1306)
!1312 = !DILocation(line: 106, column: 53, scope: !344, inlinedAt: !1306)
!1313 = !DILocation(line: 106, column: 31, scope: !344, inlinedAt: !1306)
!1314 = !DILocation(line: 109, column: 11, scope: !344, inlinedAt: !1306)
!1315 = !DILocation(line: 115, column: 13, scope: !350, inlinedAt: !1306)
!1316 = !DILocation(line: 100, column: 12, scope: !321, inlinedAt: !1306)
!1317 = !DILocation(line: 115, column: 41, scope: !350, inlinedAt: !1306)
!1318 = !DILocation(line: 115, column: 7, scope: !321, inlinedAt: !1306)
!1319 = !DILocation(line: 117, column: 40, scope: !356, inlinedAt: !1306)
!1320 = !DILocation(line: 117, column: 34, scope: !356, inlinedAt: !1306)
!1321 = !DILocation(line: 118, column: 5, scope: !356, inlinedAt: !1306)
!1322 = !DILocation(line: 99, column: 7, scope: !321, inlinedAt: !1306)
!1323 = !DILocation(line: 123, column: 24, scope: !362, inlinedAt: !1306)
!1324 = !DILocation(line: 123, column: 12, scope: !362, inlinedAt: !1306)
!1325 = !DILocation(line: 128, column: 11, scope: !362, inlinedAt: !1306)
!1326 = !DILocation(line: 128, column: 14, scope: !362, inlinedAt: !1306)
!1327 = !DILocation(line: 129, column: 11, scope: !362, inlinedAt: !1306)
!1328 = !DILocation(line: 129, column: 19, scope: !362, inlinedAt: !1306)
!1329 = !DILocation(line: 0, scope: !362, inlinedAt: !1306)
!1330 = !DILocation(line: 131, column: 19, scope: !321, inlinedAt: !1306)
!1331 = !DILocation(line: 131, column: 7, scope: !321, inlinedAt: !1306)
!1332 = !DILocation(line: 131, column: 13, scope: !321, inlinedAt: !1306)
!1333 = !DILocation(line: 555, column: 12, scope: !1258)
!1334 = !DILocation(line: 567, column: 15, scope: !1307)
!1335 = !DILocation(line: 568, column: 7, scope: !1307)
!1336 = !DILocation(line: 568, column: 16, scope: !1307)
!1337 = !DILocation(line: 569, column: 7, scope: !1307)
!1338 = !DILocation(line: 571, column: 9, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1258, file: !3, line: 571, column: 7)
!1340 = !DILocation(line: 577, column: 5, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1339, file: !3, line: 572, column: 5)
!1342 = !DILocation(line: 580, column: 23, scope: !1258)
!1343 = !DILocation(line: 97, column: 1, scope: !321, inlinedAt: !1344)
!1344 = distinct !DILocation(line: 580, column: 7, scope: !1258)
!1345 = !DILocation(line: 103, column: 7, scope: !331, inlinedAt: !1344)
!1346 = !DILocation(line: 103, column: 31, scope: !331, inlinedAt: !1344)
!1347 = !DILocation(line: 103, column: 7, scope: !321, inlinedAt: !1344)
!1348 = !DILocation(line: 106, column: 53, scope: !344, inlinedAt: !1344)
!1349 = !DILocation(line: 106, column: 31, scope: !344, inlinedAt: !1344)
!1350 = !DILocation(line: 109, column: 11, scope: !344, inlinedAt: !1344)
!1351 = !DILocation(line: 115, column: 13, scope: !350, inlinedAt: !1344)
!1352 = !DILocation(line: 100, column: 12, scope: !321, inlinedAt: !1344)
!1353 = !DILocation(line: 115, column: 41, scope: !350, inlinedAt: !1344)
!1354 = !DILocation(line: 115, column: 7, scope: !321, inlinedAt: !1344)
!1355 = !DILocation(line: 117, column: 40, scope: !356, inlinedAt: !1344)
!1356 = !DILocation(line: 117, column: 34, scope: !356, inlinedAt: !1344)
!1357 = !DILocation(line: 118, column: 5, scope: !356, inlinedAt: !1344)
!1358 = !DILocation(line: 121, column: 13, scope: !362, inlinedAt: !1344)
!1359 = !DILocation(line: 99, column: 7, scope: !321, inlinedAt: !1344)
!1360 = !DILocation(line: 123, column: 24, scope: !362, inlinedAt: !1344)
!1361 = !DILocation(line: 123, column: 12, scope: !362, inlinedAt: !1344)
!1362 = !DILocation(line: 128, column: 11, scope: !362, inlinedAt: !1344)
!1363 = !DILocation(line: 128, column: 14, scope: !362, inlinedAt: !1344)
!1364 = !DILocation(line: 129, column: 11, scope: !362, inlinedAt: !1344)
!1365 = !DILocation(line: 129, column: 19, scope: !362, inlinedAt: !1344)
!1366 = !DILocation(line: 0, scope: !362, inlinedAt: !1344)
!1367 = !DILocation(line: 131, column: 19, scope: !321, inlinedAt: !1344)
!1368 = !DILocation(line: 131, column: 24, scope: !321, inlinedAt: !1344)
!1369 = !DILocation(line: 581, column: 6, scope: !1258)
!1370 = !DILocation(line: 581, column: 12, scope: !1258)
!1371 = !DILocation(line: 582, column: 11, scope: !1258)
!1372 = !DILocation(line: 556, column: 10, scope: !1258)
!1373 = !DILocation(line: 583, column: 8, scope: !1258)
!1374 = !DILocation(line: 558, column: 12, scope: !1258)
!1375 = !DILocation(line: 584, column: 12, scope: !1258)
!1376 = !DILocation(line: 558, column: 17, scope: !1258)
!1377 = !DILocation(line: 585, column: 11, scope: !1258)
!1378 = !DILocation(line: 556, column: 14, scope: !1258)
!1379 = !DILocation(line: 586, column: 8, scope: !1258)
!1380 = !DILocation(line: 558, column: 23, scope: !1258)
!1381 = !DILocation(line: 587, column: 12, scope: !1258)
!1382 = !DILocation(line: 558, column: 28, scope: !1258)
!1383 = !DILocation(line: 588, column: 8, scope: !1258)
!1384 = !DILocation(line: 558, column: 34, scope: !1258)
!1385 = !DILocation(line: 557, column: 10, scope: !1258)
!1386 = !DILocation(line: 591, column: 3, scope: !1258)
!1387 = !DILocation(line: 0, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1258, file: !3, line: 592, column: 5)
!1389 = !DILocation(line: 593, column: 12, scope: !1388)
!1390 = !DILocation(line: 593, column: 16, scope: !1388)
!1391 = !DILocation(line: 593, column: 29, scope: !1388)
!1392 = !DILocation(line: 593, column: 33, scope: !1388)
!1393 = !DILocation(line: 593, column: 26, scope: !1388)
!1394 = !DILocation(line: 593, column: 43, scope: !1388)
!1395 = !DILocation(line: 557, column: 18, scope: !1258)
!1396 = !DILocation(line: 594, column: 18, scope: !1388)
!1397 = !DILocation(line: 596, column: 15, scope: !1388)
!1398 = !DILocation(line: 596, column: 18, scope: !1388)
!1399 = !DILocation(line: 596, column: 31, scope: !1388)
!1400 = !DILocation(line: 596, column: 34, scope: !1388)
!1401 = !DILocation(line: 596, column: 25, scope: !1388)
!1402 = !DILocation(line: 596, column: 41, scope: !1388)
!1403 = !DILocation(line: 560, column: 10, scope: !1258)
!1404 = !DILocation(line: 597, column: 18, scope: !1388)
!1405 = !DILocation(line: 599, column: 7, scope: !1388)
!1406 = !DILocation(line: 601, column: 13, scope: !1258)
!1407 = !DILocation(line: 600, column: 5, scope: !1388)
!1408 = distinct !{!1408, !1386, !1409}
!1409 = !DILocation(line: 601, column: 18, scope: !1258)
!1410 = !DILocation(line: 602, column: 13, scope: !1258)
!1411 = !DILocation(line: 602, column: 3, scope: !1258)
!1412 = !DILocation(line: 629, column: 12, scope: !1258)
!1413 = !DILocation(line: 604, column: 12, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1258, file: !3, line: 603, column: 5)
!1415 = !DILocation(line: 604, column: 16, scope: !1414)
!1416 = !DILocation(line: 604, column: 26, scope: !1414)
!1417 = !DILocation(line: 605, column: 18, scope: !1414)
!1418 = !DILocation(line: 607, column: 15, scope: !1414)
!1419 = !DILocation(line: 607, column: 18, scope: !1414)
!1420 = !DILocation(line: 607, column: 25, scope: !1414)
!1421 = !DILocation(line: 608, column: 18, scope: !1414)
!1422 = !DILocation(line: 610, column: 7, scope: !1414)
!1423 = distinct !{!1423, !1411, !1424}
!1424 = !DILocation(line: 611, column: 5, scope: !1258)
!1425 = !DILocation(line: 0, scope: !1258)
!1426 = !DILocation(line: 629, column: 11, scope: !1258)
!1427 = !DILocation(line: 629, column: 10, scope: !1258)
!1428 = !DILocation(line: 630, column: 7, scope: !1258)
!1429 = !DILocation(line: 629, column: 3, scope: !1258)
!1430 = distinct !{!1430, !1429, !1428}
!1431 = !DILocation(line: 631, column: 11, scope: !1258)
!1432 = !DILocation(line: 632, column: 3, scope: !1258)
!1433 = !DILocation(line: 0, scope: !1307)
!1434 = !DILocation(line: 633, column: 1, scope: !1258)
!1435 = distinct !DISubprogram(name: "__ulp", scope: !3, file: !3, line: 636, type: !1436, isLocal: false, isDefinition: true, scopeLine: 637, flags: DIFlagPrototyped, isOptimized: true, unit: !289, retainedNodes: !1438)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{!299, !299}
!1438 = !{!1439, !1440, !1446, !1447}
!1439 = !DILocalVariable(name: "_x", arg: 1, scope: !1435, file: !3, line: 636, type: !299)
!1440 = !DILocalVariable(name: "x", scope: !1435, file: !3, line: 638, type: !1441)
!1441 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "double_union", file: !8, line: 68, size: 64, elements: !1442)
!1442 = !{!1443, !1444}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1441, file: !8, line: 70, baseType: !299, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !1441, file: !8, line: 71, baseType: !1445, size: 64)
!1445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 64, elements: !175)
!1446 = !DILocalVariable(name: "a", scope: !1435, file: !3, line: 638, type: !1441)
!1447 = !DILocalVariable(name: "L", scope: !1435, file: !3, line: 639, type: !15)
!1448 = !DILocation(line: 636, column: 1, scope: !1435)
!1449 = !DILocation(line: 638, column: 22, scope: !1435)
!1450 = !DILocation(line: 643, column: 8, scope: !1435)
!1451 = !DILocation(line: 643, column: 18, scope: !1435)
!1452 = !DILocation(line: 645, column: 9, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1435, file: !3, line: 645, column: 7)
!1454 = !DILocation(line: 645, column: 7, scope: !1435)
!1455 = !DILocation(line: 643, column: 30, scope: !1435)
!1456 = !DILocation(line: 639, column: 19, scope: !1435)
!1457 = !DILocation(line: 651, column: 17, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 646, column: 5)
!1459 = !DILocation(line: 638, column: 25, scope: !1435)
!1460 = !DILocation(line: 657, column: 5, scope: !1458)
!1461 = !DILocation(line: 660, column: 11, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 659, column: 5)
!1463 = !DILocation(line: 660, column: 14, scope: !1462)
!1464 = !DILocation(line: 661, column: 13, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1462, file: !3, line: 661, column: 11)
!1466 = !DILocation(line: 661, column: 11, scope: !1462)
!1467 = !DILocation(line: 663, column: 24, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1465, file: !3, line: 662, column: 2)
!1469 = !DILocation(line: 663, column: 14, scope: !1468)
!1470 = !DILocation(line: 667, column: 2, scope: !1468)
!1471 = !DILocation(line: 673, column: 24, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1465, file: !3, line: 669, column: 2)
!1473 = !DILocation(line: 673, column: 22, scope: !1472)
!1474 = !DILocation(line: 673, column: 45, scope: !1472)
!1475 = !DILocation(line: 673, column: 38, scope: !1472)
!1476 = !DILocation(line: 0, scope: !1472)
!1477 = !DILocation(line: 678, column: 3, scope: !1435)
!1478 = distinct !DISubprogram(name: "__b2d", scope: !3, file: !3, line: 682, type: !1479, isLocal: false, isDefinition: true, scopeLine: 684, flags: DIFlagPrototyped, isOptimized: true, unit: !289, retainedNodes: !1482)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{!299, !6, !1481}
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!1482 = !{!1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491}
!1483 = !DILocalVariable(name: "a", arg: 1, scope: !1478, file: !3, line: 682, type: !6)
!1484 = !DILocalVariable(name: "e", arg: 2, scope: !1478, file: !3, line: 682, type: !1481)
!1485 = !DILocalVariable(name: "xa", scope: !1478, file: !3, line: 685, type: !413)
!1486 = !DILocalVariable(name: "xa0", scope: !1478, file: !3, line: 685, type: !413)
!1487 = !DILocalVariable(name: "w", scope: !1478, file: !3, line: 685, type: !21)
!1488 = !DILocalVariable(name: "y", scope: !1478, file: !3, line: 685, type: !21)
!1489 = !DILocalVariable(name: "z", scope: !1478, file: !3, line: 685, type: !21)
!1490 = !DILocalVariable(name: "k", scope: !1478, file: !3, line: 686, type: !15)
!1491 = !DILocalVariable(name: "d", scope: !1478, file: !3, line: 687, type: !1441)
!1492 = !DILocation(line: 682, column: 1, scope: !1478)
!1493 = !DILocation(line: 695, column: 9, scope: !1478)
!1494 = !DILocation(line: 685, column: 17, scope: !1478)
!1495 = !DILocation(line: 696, column: 17, scope: !1478)
!1496 = !DILocation(line: 696, column: 12, scope: !1478)
!1497 = !DILocation(line: 685, column: 12, scope: !1478)
!1498 = !DILocation(line: 697, column: 8, scope: !1478)
!1499 = !DILocation(line: 697, column: 7, scope: !1478)
!1500 = !DILocation(line: 685, column: 25, scope: !1478)
!1501 = !DILocation(line: 234, column: 1, scope: !614, inlinedAt: !1502)
!1502 = distinct !DILocation(line: 702, column: 7, scope: !1478)
!1503 = !DILocation(line: 237, column: 16, scope: !614, inlinedAt: !1502)
!1504 = !DILocation(line: 239, column: 11, scope: !623, inlinedAt: !1502)
!1505 = !DILocation(line: 242, column: 9, scope: !625, inlinedAt: !1502)
!1506 = !DILocation(line: 239, column: 7, scope: !614, inlinedAt: !1502)
!1507 = !DILocation(line: 244, column: 11, scope: !628, inlinedAt: !1502)
!1508 = !DILocation(line: 246, column: 9, scope: !630, inlinedAt: !1502)
!1509 = !DILocation(line: 247, column: 9, scope: !630, inlinedAt: !1502)
!1510 = !DILocation(line: 244, column: 7, scope: !614, inlinedAt: !1502)
!1511 = !DILocation(line: 249, column: 11, scope: !634, inlinedAt: !1502)
!1512 = !DILocation(line: 251, column: 9, scope: !636, inlinedAt: !1502)
!1513 = !DILocation(line: 252, column: 9, scope: !636, inlinedAt: !1502)
!1514 = !DILocation(line: 249, column: 7, scope: !614, inlinedAt: !1502)
!1515 = !DILocation(line: 254, column: 11, scope: !640, inlinedAt: !1502)
!1516 = !DILocation(line: 256, column: 9, scope: !642, inlinedAt: !1502)
!1517 = !DILocation(line: 257, column: 9, scope: !642, inlinedAt: !1502)
!1518 = !DILocation(line: 254, column: 7, scope: !614, inlinedAt: !1502)
!1519 = !DILocation(line: 259, column: 11, scope: !646, inlinedAt: !1502)
!1520 = !DILocation(line: 259, column: 7, scope: !614, inlinedAt: !1502)
!1521 = !DILocation(line: 261, column: 8, scope: !649, inlinedAt: !1502)
!1522 = !DILocation(line: 262, column: 15, scope: !651, inlinedAt: !1502)
!1523 = !DILocation(line: 262, column: 11, scope: !649, inlinedAt: !1502)
!1524 = !DILocation(line: 686, column: 7, scope: !1478)
!1525 = !DILocation(line: 703, column: 6, scope: !1478)
!1526 = !DILocation(line: 705, column: 7, scope: !1478)
!1527 = !DILocation(line: 0, scope: !649, inlinedAt: !1502)
!1528 = !DILocation(line: 703, column: 11, scope: !1478)
!1529 = !DILocation(line: 705, column: 9, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 705, column: 7)
!1531 = !DILocation(line: 707, column: 32, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 706, column: 5)
!1533 = !DILocation(line: 707, column: 22, scope: !1532)
!1534 = !DILocation(line: 708, column: 14, scope: !1532)
!1535 = !DILocation(line: 708, column: 11, scope: !1532)
!1536 = !DILocation(line: 708, column: 23, scope: !1532)
!1537 = !DILocation(line: 708, column: 22, scope: !1532)
!1538 = !DILocation(line: 685, column: 22, scope: !1478)
!1539 = !DILocation(line: 710, column: 31, scope: !1532)
!1540 = !DILocation(line: 710, column: 14, scope: !1532)
!1541 = !DILocation(line: 710, column: 40, scope: !1532)
!1542 = !DILocation(line: 710, column: 36, scope: !1532)
!1543 = !DILocation(line: 712, column: 7, scope: !1532)
!1544 = !DILocation(line: 714, column: 10, scope: !1478)
!1545 = !DILocation(line: 714, column: 7, scope: !1478)
!1546 = !DILocation(line: 714, column: 19, scope: !1478)
!1547 = !DILocation(line: 714, column: 18, scope: !1478)
!1548 = !DILocation(line: 0, scope: !1478)
!1549 = !DILocation(line: 685, column: 28, scope: !1478)
!1550 = !DILocation(line: 715, column: 9, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 715, column: 7)
!1552 = !DILocation(line: 715, column: 7, scope: !1478)
!1553 = !DILocation(line: 717, column: 22, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1551, file: !3, line: 716, column: 5)
!1555 = !DILocation(line: 717, column: 38, scope: !1554)
!1556 = !DILocation(line: 717, column: 31, scope: !1554)
!1557 = !DILocation(line: 717, column: 27, scope: !1554)
!1558 = !DILocation(line: 718, column: 14, scope: !1554)
!1559 = !DILocation(line: 718, column: 11, scope: !1554)
!1560 = !DILocation(line: 718, column: 23, scope: !1554)
!1561 = !DILocation(line: 718, column: 22, scope: !1554)
!1562 = !DILocation(line: 720, column: 14, scope: !1554)
!1563 = !DILocation(line: 720, column: 23, scope: !1554)
!1564 = !DILocation(line: 720, column: 19, scope: !1554)
!1565 = !DILocation(line: 687, column: 22, scope: !1478)
!1566 = !DILocation(line: 722, column: 5, scope: !1554)
!1567 = !DILocation(line: 0, scope: !1532)
!1568 = !DILocation(line: 0, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1551, file: !3, line: 724, column: 5)
!1570 = !DILocation(line: 755, column: 3, scope: !1478)
!1571 = distinct !DISubprogram(name: "__d2b", scope: !3, file: !3, line: 759, type: !1572, isLocal: false, isDefinition: true, scopeLine: 766, flags: DIFlagPrototyped, isOptimized: true, unit: !289, retainedNodes: !1574)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{!6, !25, !299, !1481, !1481}
!1574 = !{!1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586}
!1575 = !DILocalVariable(name: "ptr", arg: 1, scope: !1571, file: !3, line: 759, type: !25)
!1576 = !DILocalVariable(name: "_d", arg: 2, scope: !1571, file: !3, line: 759, type: !299)
!1577 = !DILocalVariable(name: "e", arg: 3, scope: !1571, file: !3, line: 759, type: !1481)
!1578 = !DILocalVariable(name: "bits", arg: 4, scope: !1571, file: !3, line: 759, type: !1481)
!1579 = !DILocalVariable(name: "d", scope: !1571, file: !3, line: 767, type: !1441)
!1580 = !DILocalVariable(name: "b", scope: !1571, file: !3, line: 768, type: !6)
!1581 = !DILocalVariable(name: "de", scope: !1571, file: !3, line: 769, type: !15)
!1582 = !DILocalVariable(name: "i", scope: !1571, file: !3, line: 769, type: !15)
!1583 = !DILocalVariable(name: "k", scope: !1571, file: !3, line: 769, type: !15)
!1584 = !DILocalVariable(name: "x", scope: !1571, file: !3, line: 770, type: !413)
!1585 = !DILocalVariable(name: "y", scope: !1571, file: !3, line: 770, type: !21)
!1586 = !DILocalVariable(name: "z", scope: !1571, file: !3, line: 770, type: !21)
!1587 = !DILocation(line: 759, column: 1, scope: !1571)
!1588 = !DILocation(line: 767, column: 22, scope: !1571)
!1589 = !DILocation(line: 97, column: 1, scope: !321, inlinedAt: !1590)
!1590 = distinct !DILocation(line: 785, column: 7, scope: !1571)
!1591 = !DILocation(line: 103, column: 7, scope: !331, inlinedAt: !1590)
!1592 = !DILocation(line: 103, column: 31, scope: !331, inlinedAt: !1590)
!1593 = !DILocation(line: 103, column: 7, scope: !321, inlinedAt: !1590)
!1594 = !DILocation(line: 106, column: 53, scope: !344, inlinedAt: !1590)
!1595 = !DILocation(line: 106, column: 31, scope: !344, inlinedAt: !1590)
!1596 = !DILocation(line: 109, column: 35, scope: !347, inlinedAt: !1590)
!1597 = !DILocation(line: 109, column: 11, scope: !344, inlinedAt: !1590)
!1598 = !DILocation(line: 115, column: 13, scope: !350, inlinedAt: !1590)
!1599 = !DILocation(line: 100, column: 12, scope: !321, inlinedAt: !1590)
!1600 = !DILocation(line: 115, column: 41, scope: !350, inlinedAt: !1590)
!1601 = !DILocation(line: 115, column: 7, scope: !321, inlinedAt: !1590)
!1602 = !DILocation(line: 117, column: 40, scope: !356, inlinedAt: !1590)
!1603 = !DILocation(line: 117, column: 34, scope: !356, inlinedAt: !1590)
!1604 = !DILocation(line: 118, column: 5, scope: !356, inlinedAt: !1590)
!1605 = !DILocation(line: 99, column: 7, scope: !321, inlinedAt: !1590)
!1606 = !DILocation(line: 123, column: 24, scope: !362, inlinedAt: !1590)
!1607 = !DILocation(line: 127, column: 14, scope: !366, inlinedAt: !1590)
!1608 = !DILocation(line: 127, column: 11, scope: !362, inlinedAt: !1590)
!1609 = !DILocation(line: 123, column: 12, scope: !362, inlinedAt: !1590)
!1610 = !DILocation(line: 128, column: 11, scope: !362, inlinedAt: !1590)
!1611 = !DILocation(line: 128, column: 14, scope: !362, inlinedAt: !1590)
!1612 = !DILocation(line: 129, column: 11, scope: !362, inlinedAt: !1590)
!1613 = !DILocation(line: 129, column: 19, scope: !362, inlinedAt: !1590)
!1614 = !DILocation(line: 0, scope: !362, inlinedAt: !1590)
!1615 = !DILocation(line: 131, column: 19, scope: !321, inlinedAt: !1590)
!1616 = !DILocation(line: 131, column: 24, scope: !321, inlinedAt: !1590)
!1617 = !DILocation(line: 131, column: 7, scope: !321, inlinedAt: !1590)
!1618 = !DILocation(line: 131, column: 13, scope: !321, inlinedAt: !1590)
!1619 = !DILocation(line: 132, column: 3, scope: !321, inlinedAt: !1590)
!1620 = !DILocation(line: 0, scope: !366, inlinedAt: !1590)
!1621 = !DILocation(line: 768, column: 12, scope: !1571)
!1622 = !DILocation(line: 789, column: 7, scope: !1571)
!1623 = !DILocation(line: 770, column: 12, scope: !1571)
!1624 = !DILocation(line: 791, column: 7, scope: !1571)
!1625 = !DILocation(line: 791, column: 10, scope: !1571)
!1626 = !DILocation(line: 770, column: 18, scope: !1571)
!1627 = !DILocation(line: 799, column: 20, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1571, file: !3, line: 799, column: 7)
!1629 = !DILocation(line: 799, column: 23, scope: !1628)
!1630 = !DILocation(line: 769, column: 7, scope: !1571)
!1631 = !DILocation(line: 799, column: 38, scope: !1628)
!1632 = !DILocation(line: 800, column: 7, scope: !1628)
!1633 = !DILocation(line: 799, column: 7, scope: !1571)
!1634 = !DILocation(line: 804, column: 7, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1571, file: !3, line: 804, column: 7)
!1636 = !DILocation(line: 804, column: 7, scope: !1571)
!1637 = !DILocation(line: 770, column: 15, scope: !1571)
!1638 = !DILocation(line: 272, column: 20, scope: !657, inlinedAt: !1639)
!1639 = distinct !DILocation(line: 807, column: 11, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1635, file: !3, line: 805, column: 5)
!1641 = !DILocation(line: 274, column: 9, scope: !668, inlinedAt: !1639)
!1642 = !DILocation(line: 274, column: 7, scope: !657, inlinedAt: !1639)
!1643 = !DILocation(line: 276, column: 13, scope: !671, inlinedAt: !1639)
!1644 = !DILocation(line: 276, column: 11, scope: !672, inlinedAt: !1639)
!1645 = !DILocation(line: 278, column: 13, scope: !675, inlinedAt: !1639)
!1646 = !DILocation(line: 278, column: 11, scope: !672, inlinedAt: !1639)
!1647 = !DILocation(line: 280, column: 11, scope: !678, inlinedAt: !1639)
!1648 = !DILocation(line: 281, column: 4, scope: !678, inlinedAt: !1639)
!1649 = !DILocation(line: 283, column: 14, scope: !672, inlinedAt: !1639)
!1650 = !DILocation(line: 284, column: 7, scope: !672, inlinedAt: !1639)
!1651 = !DILocation(line: 271, column: 16, scope: !657, inlinedAt: !1639)
!1652 = !DILocation(line: 287, column: 11, scope: !686, inlinedAt: !1639)
!1653 = !DILocation(line: 290, column: 9, scope: !688, inlinedAt: !1639)
!1654 = !DILocation(line: 287, column: 7, scope: !657, inlinedAt: !1639)
!1655 = !DILocation(line: 292, column: 11, scope: !691, inlinedAt: !1639)
!1656 = !DILocation(line: 294, column: 9, scope: !693, inlinedAt: !1639)
!1657 = !DILocation(line: 295, column: 9, scope: !693, inlinedAt: !1639)
!1658 = !DILocation(line: 292, column: 7, scope: !657, inlinedAt: !1639)
!1659 = !DILocation(line: 297, column: 11, scope: !697, inlinedAt: !1639)
!1660 = !DILocation(line: 299, column: 9, scope: !699, inlinedAt: !1639)
!1661 = !DILocation(line: 300, column: 9, scope: !699, inlinedAt: !1639)
!1662 = !DILocation(line: 297, column: 7, scope: !657, inlinedAt: !1639)
!1663 = !DILocation(line: 302, column: 11, scope: !703, inlinedAt: !1639)
!1664 = !DILocation(line: 304, column: 9, scope: !705, inlinedAt: !1639)
!1665 = !DILocation(line: 305, column: 9, scope: !705, inlinedAt: !1639)
!1666 = !DILocation(line: 302, column: 7, scope: !657, inlinedAt: !1639)
!1667 = !DILocation(line: 307, column: 11, scope: !709, inlinedAt: !1639)
!1668 = !DILocation(line: 307, column: 7, scope: !657, inlinedAt: !1639)
!1669 = !DILocation(line: 309, column: 8, scope: !712, inlinedAt: !1639)
!1670 = !DILocation(line: 310, column: 9, scope: !712, inlinedAt: !1639)
!1671 = !DILocation(line: 311, column: 11, scope: !715, inlinedAt: !1639)
!1672 = !DILocation(line: 311, column: 11, scope: !712, inlinedAt: !1639)
!1673 = !DILocation(line: 0, scope: !712, inlinedAt: !1639)
!1674 = !DILocation(line: 769, column: 14, scope: !1571)
!1675 = !DILocation(line: 808, column: 11, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1640, file: !3, line: 808, column: 11)
!1677 = !DILocation(line: 808, column: 11, scope: !1640)
!1678 = !DILocation(line: 810, column: 30, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1676, file: !3, line: 809, column: 2)
!1680 = !DILocation(line: 810, column: 23, scope: !1679)
!1681 = !DILocation(line: 810, column: 19, scope: !1679)
!1682 = !DILocation(line: 810, column: 15, scope: !1679)
!1683 = !DILocation(line: 811, column: 6, scope: !1679)
!1684 = !DILocation(line: 812, column: 2, scope: !1679)
!1685 = !DILocation(line: 814, column: 7, scope: !1676)
!1686 = !DILocation(line: 0, scope: !1679)
!1687 = !DILocation(line: 815, column: 22, scope: !1640)
!1688 = !DILocation(line: 815, column: 27, scope: !1640)
!1689 = !DILocation(line: 815, column: 21, scope: !1640)
!1690 = !DILocation(line: 815, column: 14, scope: !1640)
!1691 = !DILocation(line: 815, column: 19, scope: !1640)
!1692 = !DILocation(line: 769, column: 11, scope: !1571)
!1693 = !DILocation(line: 816, column: 5, scope: !1640)
!1694 = !DILocation(line: 272, column: 20, scope: !657, inlinedAt: !1695)
!1695 = distinct !DILocation(line: 824, column: 11, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1635, file: !3, line: 819, column: 5)
!1697 = !DILocation(line: 274, column: 9, scope: !668, inlinedAt: !1695)
!1698 = !DILocation(line: 274, column: 7, scope: !657, inlinedAt: !1695)
!1699 = !DILocation(line: 276, column: 13, scope: !671, inlinedAt: !1695)
!1700 = !DILocation(line: 276, column: 11, scope: !672, inlinedAt: !1695)
!1701 = !DILocation(line: 278, column: 13, scope: !675, inlinedAt: !1695)
!1702 = !DILocation(line: 278, column: 11, scope: !672, inlinedAt: !1695)
!1703 = !DILocation(line: 280, column: 11, scope: !678, inlinedAt: !1695)
!1704 = !DILocation(line: 281, column: 4, scope: !678, inlinedAt: !1695)
!1705 = !DILocation(line: 283, column: 14, scope: !672, inlinedAt: !1695)
!1706 = !DILocation(line: 284, column: 7, scope: !672, inlinedAt: !1695)
!1707 = !DILocation(line: 271, column: 16, scope: !657, inlinedAt: !1695)
!1708 = !DILocation(line: 287, column: 11, scope: !686, inlinedAt: !1695)
!1709 = !DILocation(line: 290, column: 9, scope: !688, inlinedAt: !1695)
!1710 = !DILocation(line: 287, column: 7, scope: !657, inlinedAt: !1695)
!1711 = !DILocation(line: 292, column: 11, scope: !691, inlinedAt: !1695)
!1712 = !DILocation(line: 294, column: 9, scope: !693, inlinedAt: !1695)
!1713 = !DILocation(line: 295, column: 9, scope: !693, inlinedAt: !1695)
!1714 = !DILocation(line: 292, column: 7, scope: !657, inlinedAt: !1695)
!1715 = !DILocation(line: 297, column: 11, scope: !697, inlinedAt: !1695)
!1716 = !DILocation(line: 299, column: 9, scope: !699, inlinedAt: !1695)
!1717 = !DILocation(line: 300, column: 9, scope: !699, inlinedAt: !1695)
!1718 = !DILocation(line: 297, column: 7, scope: !657, inlinedAt: !1695)
!1719 = !DILocation(line: 302, column: 11, scope: !703, inlinedAt: !1695)
!1720 = !DILocation(line: 304, column: 9, scope: !705, inlinedAt: !1695)
!1721 = !DILocation(line: 305, column: 9, scope: !705, inlinedAt: !1695)
!1722 = !DILocation(line: 302, column: 7, scope: !657, inlinedAt: !1695)
!1723 = !DILocation(line: 307, column: 11, scope: !709, inlinedAt: !1695)
!1724 = !DILocation(line: 307, column: 7, scope: !657, inlinedAt: !1695)
!1725 = !DILocation(line: 309, column: 8, scope: !712, inlinedAt: !1695)
!1726 = !DILocation(line: 310, column: 9, scope: !712, inlinedAt: !1695)
!1727 = !DILocation(line: 311, column: 11, scope: !715, inlinedAt: !1695)
!1728 = !DILocation(line: 311, column: 11, scope: !712, inlinedAt: !1695)
!1729 = !DILocation(line: 0, scope: !712, inlinedAt: !1695)
!1730 = !DILocation(line: 315, column: 3, scope: !657, inlinedAt: !1695)
!1731 = !DILocation(line: 0, scope: !1696)
!1732 = !DILocation(line: 0, scope: !715, inlinedAt: !1695)
!1733 = !DILocation(line: 825, column: 12, scope: !1696)
!1734 = !DILocation(line: 826, column: 14, scope: !1696)
!1735 = !DILocation(line: 826, column: 19, scope: !1696)
!1736 = !DILocation(line: 828, column: 9, scope: !1696)
!1737 = !DILocation(line: 0, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1739, file: !3, line: 899, column: 5)
!1739 = distinct !DILexicalBlock(scope: !1571, file: !3, line: 886, column: 7)
!1740 = !DILocation(line: 886, column: 7, scope: !1571)
!1741 = !DILocation(line: 893, column: 32, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1739, file: !3, line: 887, column: 5)
!1743 = !DILocation(line: 893, column: 10, scope: !1742)
!1744 = !DILocation(line: 894, column: 17, scope: !1742)
!1745 = !DILocation(line: 897, column: 5, scope: !1742)
!1746 = !DILocation(line: 900, column: 36, scope: !1738)
!1747 = !DILocation(line: 900, column: 10, scope: !1738)
!1748 = !DILocation(line: 902, column: 18, scope: !1738)
!1749 = !DILocation(line: 902, column: 37, scope: !1738)
!1750 = !DILocation(line: 902, column: 33, scope: !1738)
!1751 = !DILocation(line: 234, column: 1, scope: !614, inlinedAt: !1752)
!1752 = distinct !DILocation(line: 902, column: 24, scope: !1738)
!1753 = !DILocation(line: 237, column: 16, scope: !614, inlinedAt: !1752)
!1754 = !DILocation(line: 239, column: 11, scope: !623, inlinedAt: !1752)
!1755 = !DILocation(line: 242, column: 9, scope: !625, inlinedAt: !1752)
!1756 = !DILocation(line: 239, column: 7, scope: !614, inlinedAt: !1752)
!1757 = !DILocation(line: 244, column: 11, scope: !628, inlinedAt: !1752)
!1758 = !DILocation(line: 246, column: 9, scope: !630, inlinedAt: !1752)
!1759 = !DILocation(line: 247, column: 9, scope: !630, inlinedAt: !1752)
!1760 = !DILocation(line: 244, column: 7, scope: !614, inlinedAt: !1752)
!1761 = !DILocation(line: 249, column: 11, scope: !634, inlinedAt: !1752)
!1762 = !DILocation(line: 251, column: 9, scope: !636, inlinedAt: !1752)
!1763 = !DILocation(line: 252, column: 9, scope: !636, inlinedAt: !1752)
!1764 = !DILocation(line: 249, column: 7, scope: !614, inlinedAt: !1752)
!1765 = !DILocation(line: 254, column: 11, scope: !640, inlinedAt: !1752)
!1766 = !DILocation(line: 256, column: 9, scope: !642, inlinedAt: !1752)
!1767 = !DILocation(line: 257, column: 9, scope: !642, inlinedAt: !1752)
!1768 = !DILocation(line: 254, column: 7, scope: !614, inlinedAt: !1752)
!1769 = !DILocation(line: 259, column: 11, scope: !646, inlinedAt: !1752)
!1770 = !DILocation(line: 259, column: 7, scope: !614, inlinedAt: !1752)
!1771 = !DILocation(line: 261, column: 8, scope: !649, inlinedAt: !1752)
!1772 = !DILocation(line: 262, column: 15, scope: !651, inlinedAt: !1752)
!1773 = !DILocation(line: 262, column: 11, scope: !649, inlinedAt: !1752)
!1774 = !DILocation(line: 0, scope: !649, inlinedAt: !1752)
!1775 = !DILocation(line: 265, column: 3, scope: !614, inlinedAt: !1752)
!1776 = !DILocation(line: 0, scope: !651, inlinedAt: !1752)
!1777 = !DILocation(line: 902, column: 22, scope: !1738)
!1778 = !DILocation(line: 0, scope: !1742)
!1779 = !DILocation(line: 908, column: 3, scope: !1571)
!1780 = distinct !DISubprogram(name: "__ratio", scope: !3, file: !3, line: 914, type: !1781, isLocal: false, isDefinition: true, scopeLine: 916, flags: DIFlagPrototyped, isOptimized: true, unit: !289, retainedNodes: !1783)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{!299, !6, !6}
!1783 = !{!1784, !1785, !1786, !1787, !1788, !1789, !1790}
!1784 = !DILocalVariable(name: "a", arg: 1, scope: !1780, file: !3, line: 914, type: !6)
!1785 = !DILocalVariable(name: "b", arg: 2, scope: !1780, file: !3, line: 914, type: !6)
!1786 = !DILocalVariable(name: "da", scope: !1780, file: !3, line: 917, type: !1441)
!1787 = !DILocalVariable(name: "db", scope: !1780, file: !3, line: 917, type: !1441)
!1788 = !DILocalVariable(name: "k", scope: !1780, file: !3, line: 918, type: !15)
!1789 = !DILocalVariable(name: "ka", scope: !1780, file: !3, line: 918, type: !15)
!1790 = !DILocalVariable(name: "kb", scope: !1780, file: !3, line: 918, type: !15)
!1791 = !DILocation(line: 914, column: 1, scope: !1780)
!1792 = !DILocation(line: 918, column: 3, scope: !1780)
!1793 = !DILocation(line: 918, column: 10, scope: !1780)
!1794 = !DILocation(line: 920, column: 10, scope: !1780)
!1795 = !DILocation(line: 917, column: 22, scope: !1780)
!1796 = !DILocation(line: 918, column: 14, scope: !1780)
!1797 = !DILocation(line: 921, column: 10, scope: !1780)
!1798 = !DILocation(line: 917, column: 26, scope: !1780)
!1799 = !DILocation(line: 923, column: 7, scope: !1780)
!1800 = !DILocation(line: 923, column: 12, scope: !1780)
!1801 = !DILocation(line: 923, column: 10, scope: !1780)
!1802 = !DILocation(line: 923, column: 26, scope: !1780)
!1803 = !DILocation(line: 923, column: 36, scope: !1780)
!1804 = !DILocation(line: 923, column: 31, scope: !1780)
!1805 = !DILocation(line: 923, column: 20, scope: !1780)
!1806 = !DILocation(line: 923, column: 15, scope: !1780)
!1807 = !DILocation(line: 918, column: 7, scope: !1780)
!1808 = !DILocation(line: 942, column: 9, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1780, file: !3, line: 942, column: 7)
!1810 = !DILocation(line: 0, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1809, file: !3, line: 945, column: 5)
!1812 = !DILocation(line: 942, column: 7, scope: !1780)
!1813 = !DILocation(line: 943, column: 16, scope: !1809)
!1814 = !DILocation(line: 943, column: 5, scope: !1809)
!1815 = !DILocation(line: 947, column: 18, scope: !1811)
!1816 = !DILocation(line: 0, scope: !1780)
!1817 = !DILocation(line: 950, column: 15, scope: !1780)
!1818 = !DILocation(line: 951, column: 1, scope: !1780)
!1819 = !DILocation(line: 950, column: 3, scope: !1780)
!1820 = distinct !DISubprogram(name: "_mprec_log10", scope: !3, file: !3, line: 979, type: !1821, isLocal: false, isDefinition: true, scopeLine: 981, flags: DIFlagPrototyped, isOptimized: true, unit: !289, retainedNodes: !1823)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{!299, !15}
!1823 = !{!1824, !1825}
!1824 = !DILocalVariable(name: "dig", arg: 1, scope: !1820, file: !3, line: 979, type: !15)
!1825 = !DILocalVariable(name: "v", scope: !1820, file: !3, line: 982, type: !299)
!1826 = !DILocation(line: 979, column: 1, scope: !1820)
!1827 = !DILocation(line: 982, column: 10, scope: !1820)
!1828 = !DILocation(line: 983, column: 11, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1820, file: !3, line: 983, column: 7)
!1830 = !DILocation(line: 983, column: 7, scope: !1820)
!1831 = !DILocation(line: 984, column: 12, scope: !1829)
!1832 = !{!1833, !1833, i64 0}
!1833 = !{!"double", !335, i64 0}
!1834 = !DILocation(line: 984, column: 5, scope: !1829)
!1835 = !DILocation(line: 987, column: 9, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1820, file: !3, line: 986, column: 5)
!1837 = !DILocation(line: 988, column: 10, scope: !1836)
!1838 = !DILocation(line: 985, column: 14, scope: !1820)
!1839 = !DILocation(line: 985, column: 3, scope: !1820)
!1840 = distinct !{!1840, !1839, !1841}
!1841 = !DILocation(line: 989, column: 5, scope: !1820)
!1842 = !DILocation(line: 0, scope: !1820)
!1843 = !DILocation(line: 991, column: 1, scope: !1820)
!1844 = distinct !DISubprogram(name: "__copybits", scope: !3, file: !3, line: 994, type: !1845, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !289, retainedNodes: !1847)
!1845 = !DISubroutineType(types: !1846)
!1846 = !{null, !413, !15, !6}
!1847 = !{!1848, !1849, !1850, !1851, !1852, !1853}
!1848 = !DILocalVariable(name: "c", arg: 1, scope: !1844, file: !3, line: 994, type: !413)
!1849 = !DILocalVariable(name: "n", arg: 2, scope: !1844, file: !3, line: 994, type: !15)
!1850 = !DILocalVariable(name: "b", arg: 3, scope: !1844, file: !3, line: 994, type: !6)
!1851 = !DILocalVariable(name: "ce", scope: !1844, file: !3, line: 999, type: !413)
!1852 = !DILocalVariable(name: "x", scope: !1844, file: !3, line: 999, type: !413)
!1853 = !DILocalVariable(name: "xe", scope: !1844, file: !3, line: 999, type: !413)
!1854 = !DILocation(line: 994, column: 1, scope: !1844)
!1855 = !DILocation(line: 1004, column: 14, scope: !1844)
!1856 = !DILocation(line: 1004, column: 18, scope: !1844)
!1857 = !DILocation(line: 1004, column: 9, scope: !1844)
!1858 = !DILocation(line: 1004, column: 29, scope: !1844)
!1859 = !DILocation(line: 999, column: 11, scope: !1844)
!1860 = !DILocation(line: 1007, column: 14, scope: !1844)
!1861 = !DILocation(line: 1007, column: 9, scope: !1844)
!1862 = !DILocation(line: 999, column: 20, scope: !1844)
!1863 = !DILocation(line: 1008, column: 10, scope: !1844)
!1864 = !DILocation(line: 1008, column: 2, scope: !1844)
!1865 = !DILocation(line: 1005, column: 6, scope: !1844)
!1866 = !DILocation(line: 999, column: 16, scope: !1844)
!1867 = !DILocation(line: 1009, column: 12, scope: !1844)
!1868 = !DILocation(line: 1009, column: 10, scope: !1844)
!1869 = !DILocation(line: 1009, column: 5, scope: !1844)
!1870 = !DILocation(line: 1009, column: 8, scope: !1844)
!1871 = distinct !{!1871, !854}
!1872 = !{!1873}
!1873 = distinct !{!1873, !1874}
!1874 = distinct !{!1874, !"LVerDomain"}
!1875 = !{!1876}
!1876 = distinct !{!1876, !1874}
!1877 = distinct !{!1877, !1864, !1867, !852}
!1878 = distinct !{!1878, !854}
!1879 = !DILocation(line: 1018, column: 10, scope: !1844)
!1880 = !DILocation(line: 1018, column: 2, scope: !1844)
!1881 = !DILocation(line: 1019, column: 5, scope: !1844)
!1882 = !DILocation(line: 1019, column: 8, scope: !1844)
!1883 = distinct !{!1883, !1880, !1884, !852}
!1884 = !DILocation(line: 1019, column: 10, scope: !1844)
!1885 = distinct !{!1885, !854}
!1886 = distinct !{!1886, !1864, !1867, !852}
!1887 = distinct !{!1887, !1880, !1884, !857, !852}
!1888 = !DILocation(line: 1020, column: 1, scope: !1844)
!1889 = distinct !DISubprogram(name: "__any_on", scope: !3, file: !3, line: 1023, type: !1890, isLocal: false, isDefinition: true, scopeLine: 1026, flags: DIFlagPrototyped, isOptimized: true, unit: !289, retainedNodes: !1892)
!1890 = !DISubroutineType(types: !1891)
!1891 = !{!21, !6, !15}
!1892 = !{!1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900}
!1893 = !DILocalVariable(name: "b", arg: 1, scope: !1889, file: !3, line: 1023, type: !6)
!1894 = !DILocalVariable(name: "k", arg: 2, scope: !1889, file: !3, line: 1023, type: !15)
!1895 = !DILocalVariable(name: "n", scope: !1889, file: !3, line: 1027, type: !15)
!1896 = !DILocalVariable(name: "nwds", scope: !1889, file: !3, line: 1027, type: !15)
!1897 = !DILocalVariable(name: "x", scope: !1889, file: !3, line: 1028, type: !413)
!1898 = !DILocalVariable(name: "x0", scope: !1889, file: !3, line: 1028, type: !413)
!1899 = !DILocalVariable(name: "x1", scope: !1889, file: !3, line: 1028, type: !21)
!1900 = !DILocalVariable(name: "x2", scope: !1889, file: !3, line: 1028, type: !21)
!1901 = !DILocation(line: 1023, column: 1, scope: !1889)
!1902 = !DILocation(line: 1030, column: 6, scope: !1889)
!1903 = !DILocation(line: 1028, column: 11, scope: !1889)
!1904 = !DILocation(line: 1031, column: 12, scope: !1889)
!1905 = !DILocation(line: 1027, column: 9, scope: !1889)
!1906 = !DILocation(line: 1032, column: 8, scope: !1889)
!1907 = !DILocation(line: 1027, column: 6, scope: !1889)
!1908 = !DILocation(line: 1033, column: 8, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1889, file: !3, line: 1033, column: 6)
!1910 = !DILocation(line: 1033, column: 6, scope: !1889)
!1911 = !DILocation(line: 1035, column: 13, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1909, file: !3, line: 1035, column: 11)
!1913 = !DILocation(line: 1035, column: 20, scope: !1912)
!1914 = !DILocation(line: 1035, column: 26, scope: !1912)
!1915 = !DILocation(line: 1035, column: 11, scope: !1909)
!1916 = !DILocation(line: 1036, column: 13, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1912, file: !3, line: 1035, column: 37)
!1918 = !DILocation(line: 1028, column: 23, scope: !1889)
!1919 = !DILocation(line: 1028, column: 19, scope: !1889)
!1920 = !DILocation(line: 1038, column: 6, scope: !1917)
!1921 = !DILocation(line: 1039, column: 10, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1917, file: !3, line: 1039, column: 7)
!1923 = !DILocation(line: 1039, column: 7, scope: !1917)
!1924 = !DILocation(line: 0, scope: !1889)
!1925 = !DILocation(line: 1028, column: 15, scope: !1889)
!1926 = !DILocation(line: 1043, column: 4, scope: !1889)
!1927 = !DILocation(line: 1044, column: 2, scope: !1889)
!1928 = !DILocation(line: 0, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1889, file: !3, line: 1045, column: 7)
!1930 = !DILocation(line: 1044, column: 10, scope: !1889)
!1931 = !DILocation(line: 1045, column: 8, scope: !1929)
!1932 = !DILocation(line: 1045, column: 7, scope: !1929)
!1933 = !DILocation(line: 1045, column: 7, scope: !1889)
!1934 = distinct !{!1934, !1927, !1935}
!1935 = !DILocation(line: 1046, column: 11, scope: !1889)
!1936 = !DILocation(line: 0, scope: !1922)
!1937 = !DILocation(line: 1048, column: 1, scope: !1889)
