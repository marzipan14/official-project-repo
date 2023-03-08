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
  br i1 %5, label %6, label %11, !dbg !342

; <label>:6:                                      ; preds = %2
  %7 = tail call i8* @calloc(i64 8, i64 65) #4, !dbg !343
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
  %27 = tail call i8* @calloc(i64 1, i64 %26) #4, !dbg !364
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !384
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !401
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
  %41 = tail call i8* @calloc(i64 8, i64 65) #4, !dbg !467
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
  %61 = tail call i8* @calloc(i64 1, i64 %60) #4, !dbg !480
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !495
  %75 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %74, i64 0, i32 3, !dbg !497
  %76 = bitcast i32* %75 to i8*, !dbg !497
  %77 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %1, i64 0, i32 3, !dbg !497
  %78 = bitcast i32* %77 to i8*, !dbg !497
  %79 = load i32, i32* %5, align 4, !dbg !497, !tbaa !378
  %80 = sext i32 %79 to i64, !dbg !497
  %81 = shl nsw i64 %80, 2, !dbg !497
  %82 = add nsw i64 %81, 8, !dbg !497
  %83 = tail call i8* @memcpy(i8* nonnull %76, i8* nonnull %78, i64 %82) #4, !dbg !497
  %84 = load %struct._Bigint**, %struct._Bigint*** %37, align 8, !dbg !500, !tbaa !332
  %85 = load i32, i32* %34, align 8, !dbg !501, !tbaa !371
  %86 = sext i32 %85 to i64, !dbg !500
  %87 = getelementptr inbounds %struct._Bigint*, %struct._Bigint** %84, i64 %86, !dbg !500
  %88 = bitcast %struct._Bigint** %87 to i64*, !dbg !500
  %89 = load i64, i64* %88, align 8, !dbg !500, !tbaa !351
  %90 = bitcast %struct._Bigint* %1 to i64*, !dbg !502
  store i64 %89, i64* %90, align 8, !dbg !502, !tbaa !357
  store %struct._Bigint* %1, %struct._Bigint** %87, align 8, !dbg !503, !tbaa !351
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !504
  %91 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %74, i64 0, i32 4, !dbg !505
  br label %92, !dbg !506

; <label>:92:                                     ; preds = %29, %73
  %93 = phi i32* [ %5, %29 ], [ %91, %73 ], !dbg !505
  %94 = phi %struct._Bigint* [ %1, %29 ], [ %74, %73 ]
  %95 = add nsw i32 %6, 1, !dbg !507
  %96 = sext i32 %6 to i64, !dbg !508
  %97 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %94, i64 0, i32 5, i64 %96, !dbg !508
  store i32 %20, i32* %97, align 4, !dbg !509, !tbaa !429
  store i32 %95, i32* %93, align 4, !dbg !510, !tbaa !378
  br label %98, !dbg !511

; <label>:98:                                     ; preds = %27, %92
  %99 = phi %struct._Bigint* [ %94, %92 ], [ %1, %27 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !512
  ret %struct._Bigint* %99, !dbg !512
}

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local %struct._Bigint* @__s2b(%struct._reent* nocapture, i8* nocapture readonly, i32, i32, i32) local_unnamed_addr #0 !dbg !513 {
  %6 = add nsw i32 %3, 8, !dbg !528
  %7 = sdiv i32 %6, 9, !dbg !529
  %8 = icmp sgt i32 %3, 9, !dbg !533
  br i1 %8, label %9, label %15, !dbg !536

; <label>:9:                                      ; preds = %5, %9
  %10 = phi i32 [ %12, %9 ], [ 1, %5 ]
  %11 = phi i32 [ %13, %9 ], [ 0, %5 ]
  %12 = shl i32 %10, 1, !dbg !537
  %13 = add nuw nsw i32 %11, 1, !dbg !538
  %14 = icmp sgt i32 %7, %12, !dbg !533
  br i1 %14, label %9, label %15, !dbg !536, !llvm.loop !539

; <label>:15:                                     ; preds = %9, %5
  %16 = phi i32 [ 0, %5 ], [ %13, %9 ], !dbg !541
  %17 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 13, !dbg !544
  %18 = load %struct._Bigint**, %struct._Bigint*** %17, align 8, !dbg !544, !tbaa !332
  %19 = icmp eq %struct._Bigint** %18, null, !dbg !545
  br i1 %19, label %20, label %25, !dbg !546

; <label>:20:                                     ; preds = %15
  %21 = tail call i8* @calloc(i64 8, i64 65) #4, !dbg !547
  %22 = bitcast %struct._Bigint*** %17 to i8**, !dbg !548
  store i8* %21, i8** %22, align 8, !dbg !548, !tbaa !332
  %23 = icmp eq i8* %21, null, !dbg !549
  %24 = bitcast i8* %21 to %struct._Bigint**, !dbg !550
  br i1 %23, label %53, label %25, !dbg !550

; <label>:25:                                     ; preds = %20, %15
  %26 = phi %struct._Bigint** [ %24, %20 ], [ %18, %15 ], !dbg !551
  %27 = zext i32 %16 to i64, !dbg !551
  %28 = getelementptr inbounds %struct._Bigint*, %struct._Bigint** %26, i64 %27, !dbg !551
  %29 = load %struct._Bigint*, %struct._Bigint** %28, align 8, !dbg !551, !tbaa !351
  %30 = icmp eq %struct._Bigint* %29, null, !dbg !553
  br i1 %30, label %35, label %31, !dbg !554

; <label>:31:                                     ; preds = %25
  %32 = bitcast %struct._Bigint* %29 to i64*, !dbg !555
  %33 = load i64, i64* %32, align 8, !dbg !555, !tbaa !357
  %34 = bitcast %struct._Bigint** %28 to i64*, !dbg !556
  store i64 %33, i64* %34, align 8, !dbg !556, !tbaa !351
  br label %49, !dbg !557

; <label>:35:                                     ; preds = %25
  %36 = shl i32 1, %16, !dbg !558
  %37 = add nsw i32 %36, -1, !dbg !560
  %38 = sext i32 %37 to i64, !dbg !560
  %39 = shl nsw i64 %38, 2, !dbg !560
  %40 = add nsw i64 %39, 32, !dbg !560
  %41 = tail call i8* @calloc(i64 1, i64 %40) #4, !dbg !560
  %42 = icmp eq i8* %41, null, !dbg !561
  br i1 %42, label %53, label %43, !dbg !562

; <label>:43:                                     ; preds = %35
  %44 = bitcast i8* %41 to %struct._Bigint*, !dbg !563
  %45 = getelementptr inbounds i8, i8* %41, i64 8, !dbg !564
  %46 = bitcast i8* %45 to i32*, !dbg !564
  store i32 %16, i32* %46, align 8, !dbg !565, !tbaa !371
  %47 = getelementptr inbounds i8, i8* %41, i64 12, !dbg !566
  %48 = bitcast i8* %47 to i32*, !dbg !566
  store i32 %36, i32* %48, align 4, !dbg !567, !tbaa !374
  br label %49

; <label>:49:                                     ; preds = %43, %31
  %50 = phi %struct._Bigint* [ %29, %31 ], [ %44, %43 ], !dbg !568
  %51 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %50, i64 0, i32 4, !dbg !569
  store i32 0, i32* %51, align 4, !dbg !570, !tbaa !378
  %52 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %50, i64 0, i32 3, !dbg !571
  store i32 0, i32* %52, align 8, !dbg !572, !tbaa !381
  br label %53, !dbg !573

; <label>:53:                                     ; preds = %20, %35, %49
  %54 = phi %struct._Bigint* [ %50, %49 ], [ null, %20 ], [ null, %35 ], !dbg !574
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !575
  %55 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %54, i64 0, i32 5, i64 0, !dbg !577
  store i32 %4, i32* %55, align 8, !dbg !578, !tbaa !429
  %56 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %54, i64 0, i32 4, !dbg !579
  store i32 1, i32* %56, align 4, !dbg !580, !tbaa !378
  %57 = icmp sgt i32 %2, 9, !dbg !582
  br i1 %57, label %58, label %77, !dbg !584

; <label>:58:                                     ; preds = %53
  %59 = getelementptr inbounds i8, i8* %1, i64 9, !dbg !585
  %60 = add i32 %2, -10, !dbg !587
  %61 = zext i32 %60 to i64, !dbg !587
  %62 = add nuw nsw i64 %61, 9, !dbg !587
  br label %63, !dbg !587

; <label>:63:                                     ; preds = %63, %58
  %64 = phi %struct._Bigint* [ %54, %58 ], [ %71, %63 ], !dbg !588
  %65 = phi i32 [ 9, %58 ], [ %72, %63 ], !dbg !588
  %66 = phi i8* [ %59, %58 ], [ %67, %63 ], !dbg !588
  %67 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !589
  %68 = load i8, i8* %66, align 1, !dbg !590, !tbaa !591
  %69 = sext i8 %68 to i32, !dbg !590
  %70 = add nsw i32 %69, -48, !dbg !592
  %71 = tail call %struct._Bigint* @__multadd(%struct._reent* %0, %struct._Bigint* %64, i32 10, i32 %70) #6, !dbg !593
  %72 = add nuw nsw i32 %65, 1, !dbg !594
  %73 = icmp eq i32 %72, %2, !dbg !595
  br i1 %73, label %74, label %63, !dbg !596, !llvm.loop !597

; <label>:74:                                     ; preds = %63
  %75 = getelementptr i8, i8* %1, i64 %62, !dbg !587
  %76 = getelementptr inbounds i8, i8* %75, i64 2, !dbg !599
  br label %79, !dbg !600

; <label>:77:                                     ; preds = %53
  %78 = getelementptr inbounds i8, i8* %1, i64 10, !dbg !601
  br label %79

; <label>:79:                                     ; preds = %77, %74
  %80 = phi %struct._Bigint* [ %71, %74 ], [ %54, %77 ], !dbg !602
  %81 = phi i32 [ %2, %74 ], [ 9, %77 ], !dbg !602
  %82 = phi i8* [ %76, %74 ], [ %78, %77 ], !dbg !603
  %83 = icmp slt i32 %81, %3, !dbg !604
  br i1 %83, label %84, label %95, !dbg !607

; <label>:84:                                     ; preds = %79, %84
  %85 = phi i8* [ %88, %84 ], [ %82, %79 ]
  %86 = phi i32 [ %93, %84 ], [ %81, %79 ]
  %87 = phi %struct._Bigint* [ %92, %84 ], [ %80, %79 ]
  %88 = getelementptr inbounds i8, i8* %85, i64 1, !dbg !608
  %89 = load i8, i8* %85, align 1, !dbg !609, !tbaa !591
  %90 = sext i8 %89 to i32, !dbg !609
  %91 = add nsw i32 %90, -48, !dbg !610
  %92 = tail call %struct._Bigint* @__multadd(%struct._reent* %0, %struct._Bigint* %87, i32 10, i32 %91) #6, !dbg !611
  %93 = add nuw nsw i32 %86, 1, !dbg !612
  %94 = icmp eq i32 %93, %3, !dbg !604
  br i1 %94, label %95, label %84, !dbg !607, !llvm.loop !613

; <label>:95:                                     ; preds = %84, %79
  %96 = phi %struct._Bigint* [ %80, %79 ], [ %92, %84 ], !dbg !615
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !616
  ret %struct._Bigint* %96, !dbg !616
}

; Function Attrs: noredzone nounwind
define dso_local i32 @__hi0bits(i32) local_unnamed_addr #0 !dbg !617 {
  %2 = icmp ugt i32 %0, 65535, !dbg !625
  %3 = shl i32 %0, 16, !dbg !627
  %4 = select i1 %2, i32 %0, i32 %3, !dbg !629
  %5 = select i1 %2, i32 0, i32 16, !dbg !629
  %6 = icmp ugt i32 %4, 16777215, !dbg !630
  %7 = or i32 %5, 8, !dbg !632
  %8 = shl i32 %4, 8, !dbg !634
  %9 = select i1 %6, i32 %4, i32 %8, !dbg !635
  %10 = select i1 %6, i32 %5, i32 %7, !dbg !635
  %11 = icmp ugt i32 %9, 268435455, !dbg !636
  %12 = or i32 %10, 4, !dbg !638
  %13 = shl i32 %9, 4, !dbg !640
  %14 = select i1 %11, i32 %9, i32 %13, !dbg !641
  %15 = select i1 %11, i32 %10, i32 %12, !dbg !641
  %16 = icmp ugt i32 %14, 1073741823, !dbg !642
  %17 = or i32 %15, 2, !dbg !644
  %18 = shl i32 %14, 2, !dbg !646
  %19 = select i1 %16, i32 %14, i32 %18, !dbg !647
  %20 = select i1 %16, i32 %15, i32 %17, !dbg !647
  %21 = icmp slt i32 %19, 0, !dbg !648
  br i1 %21, label %26, label %22, !dbg !650

; <label>:22:                                     ; preds = %1
  %23 = add nsw i32 %20, 1, !dbg !651
  %24 = and i32 %19, 1073741824, !dbg !653
  %25 = icmp eq i32 %24, 0, !dbg !653
  br i1 %25, label %28, label %26, !dbg !655

; <label>:26:                                     ; preds = %22, %1
  %27 = phi i32 [ %20, %1 ], [ %23, %22 ], !dbg !656
  br label %28, !dbg !657

; <label>:28:                                     ; preds = %22, %26
  %29 = phi i32 [ %27, %26 ], [ 32, %22 ], !dbg !658
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !659
  ret i32 %29, !dbg !659
}

; Function Attrs: noredzone nounwind
define dso_local i32 @__lo0bits(i32* nocapture) local_unnamed_addr #0 !dbg !660 {
  %2 = load i32, i32* %0, align 4, !dbg !668, !tbaa !429
  %3 = and i32 %2, 7, !dbg !670
  %4 = icmp eq i32 %3, 0, !dbg !670
  br i1 %4, label %15, label %5, !dbg !672

; <label>:5:                                      ; preds = %1
  %6 = and i32 %2, 1, !dbg !673
  %7 = icmp eq i32 %6, 0, !dbg !673
  br i1 %7, label %8, label %48, !dbg !676

; <label>:8:                                      ; preds = %5
  %9 = and i32 %2, 2, !dbg !677
  %10 = icmp eq i32 %9, 0, !dbg !677
  br i1 %10, label %13, label %11, !dbg !679

; <label>:11:                                     ; preds = %8
  %12 = lshr i32 %2, 1, !dbg !680
  store i32 %12, i32* %0, align 4, !dbg !682, !tbaa !429
  br label %48, !dbg !683

; <label>:13:                                     ; preds = %8
  %14 = lshr i32 %2, 2, !dbg !684
  store i32 %14, i32* %0, align 4, !dbg !685, !tbaa !429
  br label %48, !dbg !686

; <label>:15:                                     ; preds = %1
  %16 = and i32 %2, 65535, !dbg !688
  %17 = icmp eq i32 %16, 0, !dbg !688
  %18 = lshr i32 %2, 16, !dbg !690
  %19 = select i1 %17, i32 16, i32 0, !dbg !692
  %20 = select i1 %17, i32 %18, i32 %2, !dbg !692
  %21 = and i32 %20, 255, !dbg !693
  %22 = icmp eq i32 %21, 0, !dbg !693
  %23 = or i32 %19, 8, !dbg !695
  %24 = lshr i32 %20, 8, !dbg !697
  %25 = select i1 %22, i32 %23, i32 %19, !dbg !698
  %26 = select i1 %22, i32 %24, i32 %20, !dbg !698
  %27 = and i32 %26, 15, !dbg !699
  %28 = icmp eq i32 %27, 0, !dbg !699
  %29 = or i32 %25, 4, !dbg !701
  %30 = lshr i32 %26, 4, !dbg !703
  %31 = select i1 %28, i32 %29, i32 %25, !dbg !704
  %32 = select i1 %28, i32 %30, i32 %26, !dbg !704
  %33 = and i32 %32, 3, !dbg !705
  %34 = icmp eq i32 %33, 0, !dbg !705
  %35 = or i32 %31, 2, !dbg !707
  %36 = lshr i32 %32, 2, !dbg !709
  %37 = select i1 %34, i32 %35, i32 %31, !dbg !710
  %38 = select i1 %34, i32 %36, i32 %32, !dbg !710
  %39 = and i32 %38, 1, !dbg !711
  %40 = icmp eq i32 %39, 0, !dbg !711
  br i1 %40, label %41, label %45, !dbg !713

; <label>:41:                                     ; preds = %15
  %42 = add nsw i32 %37, 1, !dbg !714
  %43 = lshr i32 %38, 1, !dbg !716
  %44 = icmp eq i32 %43, 0, !dbg !717
  br i1 %44, label %48, label %45, !dbg !719

; <label>:45:                                     ; preds = %15, %41
  %46 = phi i32 [ %37, %15 ], [ %42, %41 ], !dbg !720
  %47 = phi i32 [ %38, %15 ], [ %43, %41 ], !dbg !720
  store i32 %47, i32* %0, align 4, !dbg !721, !tbaa !429
  br label %48, !dbg !722

; <label>:48:                                     ; preds = %41, %5, %45, %13, %11
  %49 = phi i32 [ 1, %11 ], [ 2, %13 ], [ %46, %45 ], [ 0, %5 ], [ 32, %41 ], !dbg !723
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !724
  ret i32 %49, !dbg !724
}

; Function Attrs: noredzone nounwind
define dso_local %struct._Bigint* @__i2b(%struct._reent* nocapture, i32) local_unnamed_addr #0 !dbg !725 {
  %3 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 13, !dbg !733
  %4 = load %struct._Bigint**, %struct._Bigint*** %3, align 8, !dbg !733, !tbaa !332
  %5 = icmp eq %struct._Bigint** %4, null, !dbg !734
  br i1 %5, label %6, label %11, !dbg !735

; <label>:6:                                      ; preds = %2
  %7 = tail call i8* @calloc(i64 8, i64 65) #4, !dbg !736
  %8 = bitcast %struct._Bigint*** %3 to i8**, !dbg !737
  store i8* %7, i8** %8, align 8, !dbg !737, !tbaa !332
  %9 = icmp eq i8* %7, null, !dbg !738
  %10 = bitcast i8* %7 to %struct._Bigint**, !dbg !739
  br i1 %9, label %33, label %11, !dbg !739

; <label>:11:                                     ; preds = %6, %2
  %12 = phi %struct._Bigint** [ %10, %6 ], [ %4, %2 ], !dbg !740
  %13 = getelementptr inbounds %struct._Bigint*, %struct._Bigint** %12, i64 1, !dbg !740
  %14 = load %struct._Bigint*, %struct._Bigint** %13, align 8, !dbg !740, !tbaa !351
  %15 = icmp eq %struct._Bigint* %14, null, !dbg !742
  br i1 %15, label %20, label %16, !dbg !743

; <label>:16:                                     ; preds = %11
  %17 = bitcast %struct._Bigint* %14 to i64*, !dbg !744
  %18 = load i64, i64* %17, align 8, !dbg !744, !tbaa !357
  %19 = bitcast %struct._Bigint** %13 to i64*, !dbg !745
  store i64 %18, i64* %19, align 8, !dbg !745, !tbaa !351
  br label %29, !dbg !746

; <label>:20:                                     ; preds = %11
  %21 = tail call i8* @calloc(i64 1, i64 36) #4, !dbg !748
  %22 = icmp eq i8* %21, null, !dbg !749
  br i1 %22, label %33, label %23, !dbg !750

; <label>:23:                                     ; preds = %20
  %24 = bitcast i8* %21 to %struct._Bigint*, !dbg !751
  %25 = getelementptr inbounds i8, i8* %21, i64 8, !dbg !752
  %26 = bitcast i8* %25 to i32*, !dbg !752
  store i32 1, i32* %26, align 8, !dbg !753, !tbaa !371
  %27 = getelementptr inbounds i8, i8* %21, i64 12, !dbg !754
  %28 = bitcast i8* %27 to i32*, !dbg !754
  store i32 2, i32* %28, align 4, !dbg !755, !tbaa !374
  br label %29

; <label>:29:                                     ; preds = %23, %16
  %30 = phi %struct._Bigint* [ %14, %16 ], [ %24, %23 ], !dbg !756
  %31 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %30, i64 0, i32 4, !dbg !757
  store i32 0, i32* %31, align 4, !dbg !758, !tbaa !378
  %32 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %30, i64 0, i32 3, !dbg !759
  store i32 0, i32* %32, align 8, !dbg !760, !tbaa !381
  br label %33, !dbg !761

; <label>:33:                                     ; preds = %6, %20, %29
  %34 = phi %struct._Bigint* [ %30, %29 ], [ null, %6 ], [ null, %20 ], !dbg !762
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !763
  %35 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %34, i64 0, i32 5, i64 0, !dbg !765
  store i32 %1, i32* %35, align 8, !dbg !766, !tbaa !429
  %36 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %34, i64 0, i32 4, !dbg !767
  store i32 1, i32* %36, align 4, !dbg !768, !tbaa !378
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !769
  ret %struct._Bigint* %34, !dbg !769
}

; Function Attrs: noredzone nounwind
define dso_local %struct._Bigint* @__multiply(%struct._reent* nocapture, %struct._Bigint* readonly, %struct._Bigint* readonly) local_unnamed_addr #0 !dbg !770 {
  %4 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %1, i64 0, i32 4, !dbg !794
  %5 = load i32, i32* %4, align 4, !dbg !794, !tbaa !378
  %6 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %2, i64 0, i32 4, !dbg !796
  %7 = load i32, i32* %6, align 4, !dbg !796, !tbaa !378
  %8 = icmp slt i32 %5, %7, !dbg !797
  %9 = select i1 %8, %struct._Bigint* %1, %struct._Bigint* %2, !dbg !798
  %10 = select i1 %8, %struct._Bigint* %2, %struct._Bigint* %1, !dbg !798
  %11 = ptrtoint %struct._Bigint* %10 to i64
  %12 = bitcast %struct._Bigint* %10 to i8*
  %13 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %10, i64 0, i32 1, !dbg !799
  %14 = load i32, i32* %13, align 8, !dbg !799, !tbaa !371
  %15 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %10, i64 0, i32 4, !dbg !801
  %16 = load i32, i32* %15, align 4, !dbg !801, !tbaa !378
  %17 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %9, i64 0, i32 4, !dbg !803
  %18 = load i32, i32* %17, align 4, !dbg !803, !tbaa !378
  %19 = add nsw i32 %18, %16, !dbg !805
  %20 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %10, i64 0, i32 2, !dbg !807
  %21 = load i32, i32* %20, align 4, !dbg !807, !tbaa !374
  %22 = icmp sgt i32 %19, %21, !dbg !809
  %23 = zext i1 %22 to i32, !dbg !810
  %24 = add nsw i32 %14, %23, !dbg !810
  %25 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 13, !dbg !813
  %26 = load %struct._Bigint**, %struct._Bigint*** %25, align 8, !dbg !813, !tbaa !332
  %27 = icmp eq %struct._Bigint** %26, null, !dbg !814
  br i1 %27, label %28, label %33, !dbg !815

; <label>:28:                                     ; preds = %3
  %29 = tail call i8* @calloc(i64 8, i64 65) #4, !dbg !816
  %30 = bitcast %struct._Bigint*** %25 to i8**, !dbg !817
  store i8* %29, i8** %30, align 8, !dbg !817, !tbaa !332
  %31 = icmp eq i8* %29, null, !dbg !818
  %32 = bitcast i8* %29 to %struct._Bigint**, !dbg !819
  br i1 %31, label %61, label %33, !dbg !819

; <label>:33:                                     ; preds = %28, %3
  %34 = phi %struct._Bigint** [ %32, %28 ], [ %26, %3 ], !dbg !820
  %35 = sext i32 %24 to i64, !dbg !820
  %36 = getelementptr inbounds %struct._Bigint*, %struct._Bigint** %34, i64 %35, !dbg !820
  %37 = load %struct._Bigint*, %struct._Bigint** %36, align 8, !dbg !820, !tbaa !351
  %38 = icmp eq %struct._Bigint* %37, null, !dbg !822
  br i1 %38, label %43, label %39, !dbg !823

; <label>:39:                                     ; preds = %33
  %40 = bitcast %struct._Bigint* %37 to i64*, !dbg !824
  %41 = load i64, i64* %40, align 8, !dbg !824, !tbaa !357
  %42 = bitcast %struct._Bigint** %36 to i64*, !dbg !825
  store i64 %41, i64* %42, align 8, !dbg !825, !tbaa !351
  br label %57, !dbg !826

; <label>:43:                                     ; preds = %33
  %44 = shl i32 1, %24, !dbg !827
  %45 = add nsw i32 %44, -1, !dbg !829
  %46 = sext i32 %45 to i64, !dbg !829
  %47 = shl nsw i64 %46, 2, !dbg !829
  %48 = add nsw i64 %47, 32, !dbg !829
  %49 = tail call i8* @calloc(i64 1, i64 %48) #4, !dbg !829
  %50 = icmp eq i8* %49, null, !dbg !830
  br i1 %50, label %61, label %51, !dbg !831

; <label>:51:                                     ; preds = %43
  %52 = bitcast i8* %49 to %struct._Bigint*, !dbg !832
  %53 = getelementptr inbounds i8, i8* %49, i64 8, !dbg !833
  %54 = bitcast i8* %53 to i32*, !dbg !833
  store i32 %24, i32* %54, align 8, !dbg !834, !tbaa !371
  %55 = getelementptr inbounds i8, i8* %49, i64 12, !dbg !835
  %56 = bitcast i8* %55 to i32*, !dbg !835
  store i32 %44, i32* %56, align 4, !dbg !836, !tbaa !374
  br label %57

; <label>:57:                                     ; preds = %51, %39
  %58 = phi %struct._Bigint* [ %37, %39 ], [ %52, %51 ], !dbg !837
  %59 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %58, i64 0, i32 4, !dbg !838
  store i32 0, i32* %59, align 4, !dbg !839, !tbaa !378
  %60 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %58, i64 0, i32 3, !dbg !840
  store i32 0, i32* %60, align 8, !dbg !841, !tbaa !381
  br label %61, !dbg !842

; <label>:61:                                     ; preds = %28, %43, %57
  %62 = phi %struct._Bigint* [ %58, %57 ], [ null, %28 ], [ null, %43 ], !dbg !843
  %63 = bitcast %struct._Bigint* %62 to i8*
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !844
  %64 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %62, i64 0, i32 5, i64 0, !dbg !846
  %65 = sext i32 %19 to i64, !dbg !849
  %66 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %62, i64 0, i32 5, i64 %65, !dbg !849
  %67 = icmp sgt i32 %19, 0, !dbg !851
  br i1 %67, label %68, label %161, !dbg !853

; <label>:68:                                     ; preds = %61
  %69 = ptrtoint %struct._Bigint* %62 to i64
  %70 = shl nsw i64 %65, 2, !dbg !854
  %71 = add nsw i64 %70, 24, !dbg !854
  %72 = getelementptr i8, i8* %63, i64 %71, !dbg !854
  %73 = ptrtoint i8* %72 to i64
  %74 = getelementptr %struct._Bigint, %struct._Bigint* %62, i64 0, i32 5, i64 1, !dbg !854
  %75 = ptrtoint i32* %74 to i64
  %76 = icmp ugt i64 %73, %75, !dbg !854
  %77 = select i1 %76, i64 %73, i64 %75, !dbg !854
  %78 = inttoptr i64 %77 to i8*
  %79 = sub i64 -25, %69, !dbg !854
  %80 = getelementptr i8, i8* %78, i64 %79, !dbg !854
  %81 = ptrtoint i8* %80 to i64
  %82 = lshr i64 %81, 2, !dbg !854
  %83 = add nuw nsw i64 %82, 1, !dbg !854
  %84 = icmp ult i64 %83, 8, !dbg !854
  br i1 %84, label %155, label %85, !dbg !854

; <label>:85:                                     ; preds = %68
  %86 = and i64 %83, 9223372036854775800, !dbg !854
  %87 = getelementptr %struct._Bigint, %struct._Bigint* %62, i64 0, i32 5, i64 %86, !dbg !854
  %88 = add nsw i64 %86, -8, !dbg !854
  %89 = lshr exact i64 %88, 3, !dbg !854
  %90 = add nuw nsw i64 %89, 1, !dbg !854
  %91 = and i64 %90, 7, !dbg !854
  %92 = icmp ult i64 %88, 56, !dbg !854
  br i1 %92, label %140, label %93, !dbg !854

; <label>:93:                                     ; preds = %85
  %94 = sub nsw i64 %90, %91, !dbg !854
  br label %95, !dbg !854

; <label>:95:                                     ; preds = %95, %93
  %96 = phi i64 [ 0, %93 ], [ %137, %95 ]
  %97 = phi i64 [ %94, %93 ], [ %138, %95 ]
  %98 = getelementptr %struct._Bigint, %struct._Bigint* %62, i64 0, i32 5, i64 %96
  %99 = bitcast i32* %98 to <4 x i32>*, !dbg !854
  store <4 x i32> zeroinitializer, <4 x i32>* %99, align 4, !dbg !854, !tbaa !429
  %100 = getelementptr i32, i32* %98, i64 4, !dbg !854
  %101 = bitcast i32* %100 to <4 x i32>*, !dbg !854
  store <4 x i32> zeroinitializer, <4 x i32>* %101, align 4, !dbg !854, !tbaa !429
  %102 = or i64 %96, 8
  %103 = getelementptr %struct._Bigint, %struct._Bigint* %62, i64 0, i32 5, i64 %102
  %104 = bitcast i32* %103 to <4 x i32>*, !dbg !854
  store <4 x i32> zeroinitializer, <4 x i32>* %104, align 4, !dbg !854, !tbaa !429
  %105 = getelementptr i32, i32* %103, i64 4, !dbg !854
  %106 = bitcast i32* %105 to <4 x i32>*, !dbg !854
  store <4 x i32> zeroinitializer, <4 x i32>* %106, align 4, !dbg !854, !tbaa !429
  %107 = or i64 %96, 16
  %108 = getelementptr %struct._Bigint, %struct._Bigint* %62, i64 0, i32 5, i64 %107
  %109 = bitcast i32* %108 to <4 x i32>*, !dbg !854
  store <4 x i32> zeroinitializer, <4 x i32>* %109, align 4, !dbg !854, !tbaa !429
  %110 = getelementptr i32, i32* %108, i64 4, !dbg !854
  %111 = bitcast i32* %110 to <4 x i32>*, !dbg !854
  store <4 x i32> zeroinitializer, <4 x i32>* %111, align 4, !dbg !854, !tbaa !429
  %112 = or i64 %96, 24
  %113 = getelementptr %struct._Bigint, %struct._Bigint* %62, i64 0, i32 5, i64 %112
  %114 = bitcast i32* %113 to <4 x i32>*, !dbg !854
  store <4 x i32> zeroinitializer, <4 x i32>* %114, align 4, !dbg !854, !tbaa !429
  %115 = getelementptr i32, i32* %113, i64 4, !dbg !854
  %116 = bitcast i32* %115 to <4 x i32>*, !dbg !854
  store <4 x i32> zeroinitializer, <4 x i32>* %116, align 4, !dbg !854, !tbaa !429
  %117 = or i64 %96, 32
  %118 = getelementptr %struct._Bigint, %struct._Bigint* %62, i64 0, i32 5, i64 %117
  %119 = bitcast i32* %118 to <4 x i32>*, !dbg !854
  store <4 x i32> zeroinitializer, <4 x i32>* %119, align 4, !dbg !854, !tbaa !429
  %120 = getelementptr i32, i32* %118, i64 4, !dbg !854
  %121 = bitcast i32* %120 to <4 x i32>*, !dbg !854
  store <4 x i32> zeroinitializer, <4 x i32>* %121, align 4, !dbg !854, !tbaa !429
  %122 = or i64 %96, 40
  %123 = getelementptr %struct._Bigint, %struct._Bigint* %62, i64 0, i32 5, i64 %122
  %124 = bitcast i32* %123 to <4 x i32>*, !dbg !854
  store <4 x i32> zeroinitializer, <4 x i32>* %124, align 4, !dbg !854, !tbaa !429
  %125 = getelementptr i32, i32* %123, i64 4, !dbg !854
  %126 = bitcast i32* %125 to <4 x i32>*, !dbg !854
  store <4 x i32> zeroinitializer, <4 x i32>* %126, align 4, !dbg !854, !tbaa !429
  %127 = or i64 %96, 48
  %128 = getelementptr %struct._Bigint, %struct._Bigint* %62, i64 0, i32 5, i64 %127
  %129 = bitcast i32* %128 to <4 x i32>*, !dbg !854
  store <4 x i32> zeroinitializer, <4 x i32>* %129, align 4, !dbg !854, !tbaa !429
  %130 = getelementptr i32, i32* %128, i64 4, !dbg !854
  %131 = bitcast i32* %130 to <4 x i32>*, !dbg !854
  store <4 x i32> zeroinitializer, <4 x i32>* %131, align 4, !dbg !854, !tbaa !429
  %132 = or i64 %96, 56
  %133 = getelementptr %struct._Bigint, %struct._Bigint* %62, i64 0, i32 5, i64 %132
  %134 = bitcast i32* %133 to <4 x i32>*, !dbg !854
  store <4 x i32> zeroinitializer, <4 x i32>* %134, align 4, !dbg !854, !tbaa !429
  %135 = getelementptr i32, i32* %133, i64 4, !dbg !854
  %136 = bitcast i32* %135 to <4 x i32>*, !dbg !854
  store <4 x i32> zeroinitializer, <4 x i32>* %136, align 4, !dbg !854, !tbaa !429
  %137 = add i64 %96, 64
  %138 = add i64 %97, -8
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %95, !llvm.loop !855

; <label>:140:                                    ; preds = %95, %85
  %141 = phi i64 [ 0, %85 ], [ %137, %95 ]
  %142 = icmp eq i64 %91, 0
  br i1 %142, label %153, label %143

; <label>:143:                                    ; preds = %140, %143
  %144 = phi i64 [ %150, %143 ], [ %141, %140 ]
  %145 = phi i64 [ %151, %143 ], [ %91, %140 ]
  %146 = getelementptr %struct._Bigint, %struct._Bigint* %62, i64 0, i32 5, i64 %144
  %147 = bitcast i32* %146 to <4 x i32>*, !dbg !854
  store <4 x i32> zeroinitializer, <4 x i32>* %147, align 4, !dbg !854, !tbaa !429
  %148 = getelementptr i32, i32* %146, i64 4, !dbg !854
  %149 = bitcast i32* %148 to <4 x i32>*, !dbg !854
  store <4 x i32> zeroinitializer, <4 x i32>* %149, align 4, !dbg !854, !tbaa !429
  %150 = add i64 %144, 8
  %151 = add i64 %145, -1
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %143, !llvm.loop !858

; <label>:153:                                    ; preds = %143, %140
  %154 = icmp eq i64 %83, %86
  br i1 %154, label %161, label %155, !dbg !854

; <label>:155:                                    ; preds = %153, %68
  %156 = phi i32* [ %64, %68 ], [ %87, %153 ]
  br label %157, !dbg !854

; <label>:157:                                    ; preds = %155, %157
  %158 = phi i32* [ %159, %157 ], [ %156, %155 ]
  store i32 0, i32* %158, align 4, !dbg !854, !tbaa !429
  %159 = getelementptr inbounds i32, i32* %158, i64 1, !dbg !860
  %160 = icmp ult i32* %159, %66, !dbg !851
  br i1 %160, label %157, label %161, !dbg !853, !llvm.loop !861

; <label>:161:                                    ; preds = %157, %153, %61
  %162 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %10, i64 0, i32 5, i64 0, !dbg !863
  %163 = sext i32 %16 to i64, !dbg !864
  %164 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %10, i64 0, i32 5, i64 %163, !dbg !864
  %165 = sext i32 %18 to i64, !dbg !866
  %166 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %9, i64 0, i32 5, i64 %165, !dbg !866
  %167 = icmp sgt i32 %18, 0, !dbg !869
  br i1 %167, label %168, label %186, !dbg !872

; <label>:168:                                    ; preds = %161
  %169 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %9, i64 0, i32 5, i64 0, !dbg !873
  %170 = shl nsw i64 %163, 2, !dbg !875
  %171 = add nsw i64 %170, 24, !dbg !875
  %172 = getelementptr i8, i8* %12, i64 %171, !dbg !875
  %173 = ptrtoint i8* %172 to i64
  %174 = getelementptr %struct._Bigint, %struct._Bigint* %10, i64 0, i32 5, i64 1, !dbg !875
  %175 = ptrtoint i32* %174 to i64
  %176 = icmp ugt i64 %173, %175, !dbg !875
  %177 = select i1 %176, i64 %173, i64 %175, !dbg !875
  %178 = inttoptr i64 %177 to i8*
  %179 = sub i64 -25, %11, !dbg !875
  %180 = getelementptr i8, i8* %178, i64 %179, !dbg !875
  %181 = ptrtoint i8* %180 to i64
  %182 = add i64 %181, 28, !dbg !875
  %183 = and i64 %182, -4, !dbg !875
  %184 = getelementptr i8, i8* %63, i64 %183, !dbg !875
  %185 = bitcast i8* %184 to %struct._Bigint*
  br label %187, !dbg !875

; <label>:186:                                    ; preds = %259, %161
  br i1 %67, label %267, label %276, !dbg !879

; <label>:187:                                    ; preds = %168, %259
  %188 = phi i8* [ %184, %168 ], [ %265, %259 ]
  %189 = phi %struct._Bigint* [ %185, %168 ], [ %266, %259 ]
  %190 = phi i8* [ %184, %168 ], [ %263, %259 ]
  %191 = phi %struct._Bigint* [ %185, %168 ], [ %264, %259 ]
  %192 = phi i32* [ %64, %168 ], [ %261, %259 ]
  %193 = phi i32* [ %169, %168 ], [ %260, %259 ]
  %194 = bitcast %struct._Bigint* %189 to i32*
  %195 = bitcast %struct._Bigint* %191 to i32*
  %196 = load i32, i32* %193, align 4, !dbg !875, !tbaa !429
  %197 = and i32 %196, 65535, !dbg !882
  %198 = icmp eq i32 %197, 0, !dbg !884
  br i1 %198, label %225, label %199, !dbg !885

; <label>:199:                                    ; preds = %187, %199
  %200 = phi i32 [ %217, %199 ], [ 0, %187 ], !dbg !886
  %201 = phi i32* [ %211, %199 ], [ %162, %187 ], !dbg !886
  %202 = phi i32* [ %221, %199 ], [ %192, %187 ], !dbg !886
  %203 = load i32, i32* %201, align 4, !dbg !890, !tbaa !429
  %204 = and i32 %203, 65535, !dbg !891
  %205 = mul nuw i32 %204, %197, !dbg !892
  %206 = load i32, i32* %202, align 4, !dbg !893, !tbaa !429
  %207 = and i32 %206, 65535, !dbg !894
  %208 = add nuw nsw i32 %207, %200, !dbg !895
  %209 = add i32 %208, %205, !dbg !896
  %210 = lshr i32 %209, 16, !dbg !898
  %211 = getelementptr inbounds i32, i32* %201, i64 1, !dbg !899
  %212 = lshr i32 %203, 16, !dbg !900
  %213 = mul nuw i32 %212, %197, !dbg !901
  %214 = lshr i32 %206, 16, !dbg !902
  %215 = add i32 %213, %214, !dbg !903
  %216 = add i32 %215, %210, !dbg !904
  %217 = lshr i32 %216, 16, !dbg !906
  %218 = shl i32 %216, 16, !dbg !907
  %219 = and i32 %209, 65535, !dbg !907
  %220 = or i32 %218, %219, !dbg !907
  %221 = getelementptr inbounds i32, i32* %202, i64 1, !dbg !907
  store i32 %220, i32* %202, align 4, !dbg !907, !tbaa !429
  %222 = icmp ult i32* %211, %164, !dbg !908
  br i1 %222, label %199, label %223, !dbg !909, !llvm.loop !910

; <label>:223:                                    ; preds = %199
  store i32 %217, i32* %195, align 4, !dbg !913, !tbaa !429
  %224 = load i32, i32* %193, align 4, !dbg !914, !tbaa !429
  br label %225, !dbg !916

; <label>:225:                                    ; preds = %187, %223
  %226 = phi i32 [ %196, %187 ], [ %224, %223 ], !dbg !914
  %227 = lshr i32 %226, 16, !dbg !917
  %228 = icmp eq i32 %227, 0, !dbg !918
  br i1 %228, label %259, label %229, !dbg !919

; <label>:229:                                    ; preds = %225
  %230 = load i32, i32* %192, align 4, !dbg !920, !tbaa !429
  br label %231, !dbg !922

; <label>:231:                                    ; preds = %231, %229
  %232 = phi i32 [ %230, %229 ], [ %252, %231 ], !dbg !923
  %233 = phi i32 [ 0, %229 ], [ %256, %231 ], !dbg !925
  %234 = phi i32* [ %162, %229 ], [ %248, %231 ], !dbg !925
  %235 = phi i32* [ %192, %229 ], [ %247, %231 ], !dbg !925
  %236 = phi i32 [ %230, %229 ], [ %255, %231 ], !dbg !925
  %237 = load i32, i32* %234, align 4, !dbg !926, !tbaa !429
  %238 = and i32 %237, 65535, !dbg !927
  %239 = mul nuw i32 %238, %227, !dbg !928
  %240 = lshr i32 %232, 16, !dbg !929
  %241 = add nuw nsw i32 %240, %233, !dbg !930
  %242 = add i32 %241, %239, !dbg !931
  %243 = lshr i32 %242, 16, !dbg !932
  %244 = shl i32 %242, 16, !dbg !933
  %245 = and i32 %236, 65535, !dbg !933
  %246 = or i32 %244, %245, !dbg !933
  %247 = getelementptr inbounds i32, i32* %235, i64 1, !dbg !933
  store i32 %246, i32* %235, align 4, !dbg !933, !tbaa !429
  %248 = getelementptr inbounds i32, i32* %234, i64 1, !dbg !934
  %249 = load i32, i32* %234, align 4, !dbg !935, !tbaa !429
  %250 = lshr i32 %249, 16, !dbg !936
  %251 = mul nuw i32 %250, %227, !dbg !937
  %252 = load i32, i32* %247, align 4, !dbg !938, !tbaa !429
  %253 = and i32 %252, 65535, !dbg !939
  %254 = add i32 %251, %253, !dbg !940
  %255 = add i32 %254, %243, !dbg !941
  %256 = lshr i32 %255, 16, !dbg !942
  %257 = icmp ult i32* %248, %164, !dbg !943
  br i1 %257, label %231, label %258, !dbg !944, !llvm.loop !945

; <label>:258:                                    ; preds = %231
  store i32 %255, i32* %194, align 4, !dbg !947, !tbaa !429
  br label %259, !dbg !948

; <label>:259:                                    ; preds = %225, %258
  %260 = getelementptr inbounds i32, i32* %193, i64 1, !dbg !949
  %261 = getelementptr inbounds i32, i32* %192, i64 1, !dbg !950
  %262 = icmp ult i32* %260, %166, !dbg !869
  %263 = getelementptr i8, i8* %190, i64 4, !dbg !872
  %264 = bitcast i8* %263 to %struct._Bigint*, !dbg !872
  %265 = getelementptr i8, i8* %188, i64 4, !dbg !872
  %266 = bitcast i8* %265 to %struct._Bigint*, !dbg !872
  br i1 %262, label %187, label %186, !dbg !872, !llvm.loop !951

; <label>:267:                                    ; preds = %186, %273
  %268 = phi i32* [ %270, %273 ], [ %66, %186 ]
  %269 = phi i32 [ %274, %273 ], [ %19, %186 ]
  %270 = getelementptr inbounds i32, i32* %268, i64 -1, !dbg !953
  %271 = load i32, i32* %270, align 4, !dbg !954, !tbaa !429
  %272 = icmp eq i32 %271, 0, !dbg !955
  br i1 %272, label %273, label %276, !dbg !956

; <label>:273:                                    ; preds = %267
  %274 = add nsw i32 %269, -1, !dbg !957
  %275 = icmp sgt i32 %269, 1, !dbg !958
  br i1 %275, label %267, label %276, !dbg !879, !llvm.loop !959

; <label>:276:                                    ; preds = %267, %273, %186
  %277 = phi i32 [ %19, %186 ], [ %274, %273 ], [ %269, %267 ], !dbg !961
  %278 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %62, i64 0, i32 4, !dbg !962
  store i32 %277, i32* %278, align 4, !dbg !963, !tbaa !378
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !964
  ret %struct._Bigint* %62, !dbg !964
}

; Function Attrs: noredzone nounwind
define dso_local %struct._Bigint* @__pow5mult(%struct._reent* nocapture, %struct._Bigint*, i32) local_unnamed_addr #0 !dbg !2 {
  %4 = and i32 %2, 3, !dbg !966
  %5 = icmp eq i32 %4, 0, !dbg !969
  br i1 %5, label %12, label %6, !dbg !970

; <label>:6:                                      ; preds = %3
  %7 = add nsw i32 %4, -1, !dbg !971
  %8 = sext i32 %7 to i64, !dbg !972
  %9 = getelementptr inbounds [3 x i32], [3 x i32]* @__pow5mult.p05, i64 0, i64 %8, !dbg !972
  %10 = load i32, i32* %9, align 4, !dbg !972, !tbaa !429
  %11 = tail call %struct._Bigint* @__multadd(%struct._reent* %0, %struct._Bigint* %1, i32 %10, i32 0) #6, !dbg !973
  br label %12, !dbg !974

; <label>:12:                                     ; preds = %3, %6
  %13 = phi %struct._Bigint* [ %11, %6 ], [ %1, %3 ]
  %14 = ashr i32 %2, 2, !dbg !975
  %15 = icmp eq i32 %14, 0, !dbg !975
  br i1 %15, label %90, label %16, !dbg !977

; <label>:16:                                     ; preds = %12
  %17 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 12, !dbg !978
  %18 = load %struct._Bigint*, %struct._Bigint** %17, align 8, !dbg !978, !tbaa !980
  %19 = icmp eq %struct._Bigint* %18, null, !dbg !982
  %20 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 13
  br i1 %19, label %21, label %56, !dbg !983

; <label>:21:                                     ; preds = %16
  %22 = load %struct._Bigint**, %struct._Bigint*** %20, align 8, !dbg !989, !tbaa !332
  %23 = icmp eq %struct._Bigint** %22, null, !dbg !990
  br i1 %23, label %24, label %29, !dbg !991

; <label>:24:                                     ; preds = %21
  %25 = tail call i8* @calloc(i64 8, i64 65) #4, !dbg !992
  %26 = bitcast %struct._Bigint*** %20 to i8**, !dbg !993
  store i8* %25, i8** %26, align 8, !dbg !993, !tbaa !332
  %27 = icmp eq i8* %25, null, !dbg !994
  %28 = bitcast i8* %25 to %struct._Bigint**, !dbg !995
  br i1 %27, label %51, label %29, !dbg !995

; <label>:29:                                     ; preds = %24, %21
  %30 = phi %struct._Bigint** [ %28, %24 ], [ %22, %21 ], !dbg !996
  %31 = getelementptr inbounds %struct._Bigint*, %struct._Bigint** %30, i64 1, !dbg !996
  %32 = load %struct._Bigint*, %struct._Bigint** %31, align 8, !dbg !996, !tbaa !351
  %33 = icmp eq %struct._Bigint* %32, null, !dbg !998
  br i1 %33, label %38, label %34, !dbg !999

; <label>:34:                                     ; preds = %29
  %35 = bitcast %struct._Bigint* %32 to i64*, !dbg !1000
  %36 = load i64, i64* %35, align 8, !dbg !1000, !tbaa !357
  %37 = bitcast %struct._Bigint** %31 to i64*, !dbg !1001
  store i64 %36, i64* %37, align 8, !dbg !1001, !tbaa !351
  br label %47, !dbg !1002

; <label>:38:                                     ; preds = %29
  %39 = tail call i8* @calloc(i64 1, i64 36) #4, !dbg !1004
  %40 = icmp eq i8* %39, null, !dbg !1005
  br i1 %40, label %51, label %41, !dbg !1006

; <label>:41:                                     ; preds = %38
  %42 = bitcast i8* %39 to %struct._Bigint*, !dbg !1007
  %43 = getelementptr inbounds i8, i8* %39, i64 8, !dbg !1008
  %44 = bitcast i8* %43 to i32*, !dbg !1008
  store i32 1, i32* %44, align 8, !dbg !1009, !tbaa !371
  %45 = getelementptr inbounds i8, i8* %39, i64 12, !dbg !1010
  %46 = bitcast i8* %45 to i32*, !dbg !1010
  store i32 2, i32* %46, align 4, !dbg !1011, !tbaa !374
  br label %47

; <label>:47:                                     ; preds = %41, %34
  %48 = phi %struct._Bigint* [ %32, %34 ], [ %42, %41 ], !dbg !1012
  %49 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %48, i64 0, i32 4, !dbg !1013
  store i32 0, i32* %49, align 4, !dbg !1014, !tbaa !378
  %50 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %48, i64 0, i32 3, !dbg !1015
  store i32 0, i32* %50, align 8, !dbg !1016, !tbaa !381
  br label %51, !dbg !1017

; <label>:51:                                     ; preds = %24, %38, %47
  %52 = phi %struct._Bigint* [ %48, %47 ], [ null, %24 ], [ null, %38 ], !dbg !1018
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1019
  %53 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %52, i64 0, i32 5, i64 0, !dbg !1021
  store i32 625, i32* %53, align 8, !dbg !1022, !tbaa !429
  %54 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %52, i64 0, i32 4, !dbg !1023
  store i32 1, i32* %54, align 4, !dbg !1024, !tbaa !378
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1025
  store %struct._Bigint* %52, %struct._Bigint** %17, align 8, !dbg !1026, !tbaa !980
  %55 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %52, i64 0, i32 0, !dbg !1027
  store %struct._Bigint* null, %struct._Bigint** %55, align 8, !dbg !1028, !tbaa !357
  br label %56, !dbg !1029

; <label>:56:                                     ; preds = %16, %51
  %57 = phi %struct._Bigint* [ %52, %51 ], [ %18, %16 ]
  br label %58, !dbg !1030

; <label>:58:                                     ; preds = %85, %56
  %59 = phi i32 [ %14, %56 ], [ %79, %85 ], !dbg !1035
  %60 = phi %struct._Bigint* [ %13, %56 ], [ %78, %85 ], !dbg !1037
  %61 = phi %struct._Bigint* [ %57, %56 ], [ %86, %85 ], !dbg !1039
  %62 = and i32 %59, 1, !dbg !1030
  %63 = icmp eq i32 %62, 0, !dbg !1030
  br i1 %63, label %77, label %64, !dbg !1040

; <label>:64:                                     ; preds = %58
  %65 = tail call %struct._Bigint* @__multiply(%struct._reent* %0, %struct._Bigint* %60, %struct._Bigint* %61) #6, !dbg !1041
  %66 = icmp eq %struct._Bigint* %60, null, !dbg !1045
  br i1 %66, label %76, label %67, !dbg !1046

; <label>:67:                                     ; preds = %64
  %68 = load %struct._Bigint**, %struct._Bigint*** %20, align 8, !dbg !1047, !tbaa !332
  %69 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %60, i64 0, i32 1, !dbg !1048
  %70 = load i32, i32* %69, align 8, !dbg !1048, !tbaa !371
  %71 = sext i32 %70 to i64, !dbg !1047
  %72 = getelementptr inbounds %struct._Bigint*, %struct._Bigint** %68, i64 %71, !dbg !1047
  %73 = bitcast %struct._Bigint** %72 to i64*, !dbg !1047
  %74 = load i64, i64* %73, align 8, !dbg !1047, !tbaa !351
  %75 = bitcast %struct._Bigint* %60 to i64*, !dbg !1049
  store i64 %74, i64* %75, align 8, !dbg !1049, !tbaa !357
  store %struct._Bigint* %60, %struct._Bigint** %72, align 8, !dbg !1050, !tbaa !351
  br label %76, !dbg !1051

; <label>:76:                                     ; preds = %64, %67
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1052
  br label %77, !dbg !1053

; <label>:77:                                     ; preds = %58, %76
  %78 = phi %struct._Bigint* [ %65, %76 ], [ %60, %58 ], !dbg !1054
  %79 = ashr i32 %59, 1, !dbg !1055
  %80 = icmp eq i32 %79, 0, !dbg !1055
  br i1 %80, label %90, label %81, !dbg !1056

; <label>:81:                                     ; preds = %77
  %82 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %61, i64 0, i32 0, !dbg !1057
  %83 = load %struct._Bigint*, %struct._Bigint** %82, align 8, !dbg !1057, !tbaa !357
  %84 = icmp eq %struct._Bigint* %83, null, !dbg !1060
  br i1 %84, label %87, label %85, !dbg !1061

; <label>:85:                                     ; preds = %81, %87
  %86 = phi %struct._Bigint* [ %83, %81 ], [ %88, %87 ]
  br label %58, !dbg !981, !llvm.loop !1062

; <label>:87:                                     ; preds = %81
  %88 = tail call %struct._Bigint* @__multiply(%struct._reent* %0, %struct._Bigint* nonnull %61, %struct._Bigint* nonnull %61) #6, !dbg !1065
  store %struct._Bigint* %88, %struct._Bigint** %82, align 8, !dbg !1067, !tbaa !357
  %89 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %88, i64 0, i32 0, !dbg !1068
  store %struct._Bigint* null, %struct._Bigint** %89, align 8, !dbg !1069, !tbaa !357
  br label %85, !dbg !1070

; <label>:90:                                     ; preds = %77, %12
  %91 = phi %struct._Bigint* [ %13, %12 ], [ %78, %77 ], !dbg !1071
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1072
  ret %struct._Bigint* %91, !dbg !1072
}

; Function Attrs: noredzone nounwind
define dso_local %struct._Bigint* @__lshift(%struct._reent* nocapture, %struct._Bigint*, i32) local_unnamed_addr #0 !dbg !1073 {
  %4 = ptrtoint %struct._Bigint* %1 to i64
  %5 = bitcast %struct._Bigint* %1 to i8*
  %6 = ashr i32 %2, 5, !dbg !1088
  %7 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %1, i64 0, i32 1, !dbg !1090
  %8 = load i32, i32* %7, align 8, !dbg !1090, !tbaa !371
  %9 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %1, i64 0, i32 4, !dbg !1092
  %10 = load i32, i32* %9, align 4, !dbg !1092, !tbaa !378
  %11 = add nsw i32 %10, %6, !dbg !1093
  %12 = add nsw i32 %11, 1, !dbg !1094
  %13 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %1, i64 0, i32 2, !dbg !1096
  %14 = load i32, i32* %13, align 4, !dbg !1096, !tbaa !374
  %15 = icmp slt i32 %11, %14, !dbg !1099
  br i1 %15, label %22, label %16, !dbg !1101

; <label>:16:                                     ; preds = %3, %16
  %17 = phi i32 [ %20, %16 ], [ %14, %3 ]
  %18 = phi i32 [ %19, %16 ], [ %8, %3 ]
  %19 = add nsw i32 %18, 1, !dbg !1102
  %20 = shl i32 %17, 1, !dbg !1103
  %21 = icmp slt i32 %11, %20, !dbg !1099
  br i1 %21, label %22, label %16, !dbg !1101, !llvm.loop !1104

; <label>:22:                                     ; preds = %16, %3
  %23 = phi i32 [ %8, %3 ], [ %19, %16 ], !dbg !1106
  %24 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 13, !dbg !1109
  %25 = load %struct._Bigint**, %struct._Bigint*** %24, align 8, !dbg !1109, !tbaa !332
  %26 = icmp eq %struct._Bigint** %25, null, !dbg !1110
  br i1 %26, label %27, label %32, !dbg !1111

; <label>:27:                                     ; preds = %22
  %28 = tail call i8* @calloc(i64 8, i64 65) #4, !dbg !1112
  %29 = bitcast %struct._Bigint*** %24 to i8**, !dbg !1113
  store i8* %28, i8** %29, align 8, !dbg !1113, !tbaa !332
  %30 = icmp eq i8* %28, null, !dbg !1114
  %31 = bitcast i8* %28 to %struct._Bigint**, !dbg !1115
  br i1 %30, label %60, label %32, !dbg !1115

; <label>:32:                                     ; preds = %27, %22
  %33 = phi %struct._Bigint** [ %31, %27 ], [ %25, %22 ], !dbg !1116
  %34 = sext i32 %23 to i64, !dbg !1116
  %35 = getelementptr inbounds %struct._Bigint*, %struct._Bigint** %33, i64 %34, !dbg !1116
  %36 = load %struct._Bigint*, %struct._Bigint** %35, align 8, !dbg !1116, !tbaa !351
  %37 = icmp eq %struct._Bigint* %36, null, !dbg !1118
  br i1 %37, label %42, label %38, !dbg !1119

; <label>:38:                                     ; preds = %32
  %39 = bitcast %struct._Bigint* %36 to i64*, !dbg !1120
  %40 = load i64, i64* %39, align 8, !dbg !1120, !tbaa !357
  %41 = bitcast %struct._Bigint** %35 to i64*, !dbg !1121
  store i64 %40, i64* %41, align 8, !dbg !1121, !tbaa !351
  br label %56, !dbg !1122

; <label>:42:                                     ; preds = %32
  %43 = shl i32 1, %23, !dbg !1123
  %44 = add nsw i32 %43, -1, !dbg !1125
  %45 = sext i32 %44 to i64, !dbg !1125
  %46 = shl nsw i64 %45, 2, !dbg !1125
  %47 = add nsw i64 %46, 32, !dbg !1125
  %48 = tail call i8* @calloc(i64 1, i64 %47) #4, !dbg !1125
  %49 = icmp eq i8* %48, null, !dbg !1126
  br i1 %49, label %60, label %50, !dbg !1127

; <label>:50:                                     ; preds = %42
  %51 = bitcast i8* %48 to %struct._Bigint*, !dbg !1128
  %52 = getelementptr inbounds i8, i8* %48, i64 8, !dbg !1129
  %53 = bitcast i8* %52 to i32*, !dbg !1129
  store i32 %23, i32* %53, align 8, !dbg !1130, !tbaa !371
  %54 = getelementptr inbounds i8, i8* %48, i64 12, !dbg !1131
  %55 = bitcast i8* %54 to i32*, !dbg !1131
  store i32 %43, i32* %55, align 4, !dbg !1132, !tbaa !374
  br label %56

; <label>:56:                                     ; preds = %50, %38
  %57 = phi %struct._Bigint* [ %36, %38 ], [ %51, %50 ], !dbg !1133
  %58 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %57, i64 0, i32 4, !dbg !1134
  store i32 0, i32* %58, align 4, !dbg !1135, !tbaa !378
  %59 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %57, i64 0, i32 3, !dbg !1136
  store i32 0, i32* %59, align 8, !dbg !1137, !tbaa !381
  br label %60, !dbg !1138

; <label>:60:                                     ; preds = %27, %42, %56
  %61 = phi %struct._Bigint* [ %57, %56 ], [ null, %27 ], [ null, %42 ], !dbg !1139
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1140
  %62 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %61, i64 0, i32 5, i64 0, !dbg !1142
  %63 = icmp sgt i32 %2, 31, !dbg !1144
  br i1 %63, label %64, label %96, !dbg !1147

; <label>:64:                                     ; preds = %60
  %65 = icmp sgt i32 %6, 1, !dbg !1148
  %66 = select i1 %65, i32 %6, i32 1, !dbg !1148
  %67 = add nsw i32 %66, -1, !dbg !1148
  %68 = zext i32 %67 to i64, !dbg !1148
  %69 = add nuw nsw i64 %68, 1, !dbg !1148
  %70 = icmp ult i64 %69, 8, !dbg !1148
  br i1 %70, label %87, label %71, !dbg !1148

; <label>:71:                                     ; preds = %64
  %72 = and i32 %66, 7, !dbg !1148
  %73 = zext i32 %72 to i64, !dbg !1148
  %74 = sub nsw i64 %69, %73, !dbg !1148
  %75 = getelementptr %struct._Bigint, %struct._Bigint* %61, i64 0, i32 5, i64 %74, !dbg !1148
  %76 = trunc i64 %74 to i32, !dbg !1148
  br label %77, !dbg !1148

; <label>:77:                                     ; preds = %77, %71
  %78 = phi i64 [ 0, %71 ], [ %83, %77 ]
  %79 = getelementptr %struct._Bigint, %struct._Bigint* %61, i64 0, i32 5, i64 %78
  %80 = bitcast i32* %79 to <4 x i32>*, !dbg !1149
  store <4 x i32> zeroinitializer, <4 x i32>* %80, align 4, !dbg !1149, !tbaa !429
  %81 = getelementptr i32, i32* %79, i64 4, !dbg !1149
  %82 = bitcast i32* %81 to <4 x i32>*, !dbg !1149
  store <4 x i32> zeroinitializer, <4 x i32>* %82, align 4, !dbg !1149, !tbaa !429
  %83 = add i64 %78, 8
  %84 = icmp eq i64 %83, %74
  br i1 %84, label %85, label %77, !llvm.loop !1150

; <label>:85:                                     ; preds = %77
  %86 = icmp eq i32 %72, 0
  br i1 %86, label %96, label %87, !dbg !1148

; <label>:87:                                     ; preds = %85, %64
  %88 = phi i32* [ %62, %64 ], [ %75, %85 ]
  %89 = phi i32 [ 0, %64 ], [ %76, %85 ]
  br label %90, !dbg !1148

; <label>:90:                                     ; preds = %87, %90
  %91 = phi i32* [ %93, %90 ], [ %88, %87 ]
  %92 = phi i32 [ %94, %90 ], [ %89, %87 ]
  %93 = getelementptr inbounds i32, i32* %91, i64 1, !dbg !1148
  store i32 0, i32* %91, align 4, !dbg !1149, !tbaa !429
  %94 = add nuw nsw i32 %92, 1, !dbg !1152
  %95 = icmp slt i32 %94, %6, !dbg !1144
  br i1 %95, label %90, label %96, !dbg !1147, !llvm.loop !1153

; <label>:96:                                     ; preds = %90, %85, %60
  %97 = phi i32* [ %62, %60 ], [ %75, %85 ], [ %93, %90 ], !dbg !1154
  %98 = bitcast i32* %97 to i8*
  %99 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %1, i64 0, i32 5, i64 0, !dbg !1155
  %100 = load i32, i32* %9, align 4, !dbg !1157, !tbaa !378
  %101 = sext i32 %100 to i64, !dbg !1158
  %102 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %1, i64 0, i32 5, i64 %101, !dbg !1158
  %103 = and i32 %2, 31, !dbg !1160
  %104 = icmp eq i32 %103, 0, !dbg !1160
  br i1 %104, label %105, label %258, !dbg !1162

; <label>:105:                                    ; preds = %96
  %106 = shl nsw i64 %101, 2, !dbg !1163
  %107 = add nsw i64 %106, 24, !dbg !1163
  %108 = getelementptr i8, i8* %5, i64 %107, !dbg !1163
  %109 = ptrtoint i8* %108 to i64
  %110 = getelementptr %struct._Bigint, %struct._Bigint* %1, i64 0, i32 5, i64 1, !dbg !1163
  %111 = ptrtoint i32* %110 to i64
  %112 = icmp ugt i64 %109, %111, !dbg !1163
  %113 = select i1 %112, i64 %109, i64 %111, !dbg !1163
  %114 = inttoptr i64 %113 to i8*
  %115 = sub i64 -25, %4, !dbg !1163
  %116 = getelementptr i8, i8* %114, i64 %115, !dbg !1163
  %117 = ptrtoint i8* %116 to i64
  %118 = lshr i64 %117, 2, !dbg !1163
  %119 = add nuw nsw i64 %118, 1, !dbg !1163
  %120 = icmp ult i64 %119, 8, !dbg !1163
  br i1 %120, label %121, label %154, !dbg !1163

; <label>:121:                                    ; preds = %256, %154, %105
  %122 = phi i32* [ %99, %154 ], [ %99, %105 ], [ %179, %256 ]
  %123 = phi i32* [ %97, %154 ], [ %97, %105 ], [ %180, %256 ]
  %124 = ptrtoint i32* %122 to i64
  %125 = shl nsw i64 %101, 2, !dbg !1163
  %126 = add nsw i64 %125, 24, !dbg !1163
  %127 = getelementptr i8, i8* %5, i64 %126, !dbg !1163
  %128 = ptrtoint i8* %127 to i64
  %129 = getelementptr i32, i32* %122, i64 1, !dbg !1163
  %130 = ptrtoint i32* %129 to i64
  %131 = icmp ugt i64 %128, %130, !dbg !1163
  %132 = select i1 %131, i64 %128, i64 %130, !dbg !1163
  %133 = inttoptr i64 %132 to i8*
  %134 = xor i64 %124, -1, !dbg !1163
  %135 = getelementptr i8, i8* %133, i64 %134, !dbg !1163
  %136 = ptrtoint i8* %135 to i64
  %137 = lshr i64 %136, 2, !dbg !1163
  %138 = add nuw nsw i64 %137, 1, !dbg !1163
  %139 = and i64 %138, 7, !dbg !1163
  %140 = icmp eq i64 %139, 0, !dbg !1163
  br i1 %140, label %150, label %141, !dbg !1163

; <label>:141:                                    ; preds = %121, %141
  %142 = phi i32* [ %145, %141 ], [ %122, %121 ], !dbg !1164
  %143 = phi i32* [ %147, %141 ], [ %123, %121 ], !dbg !1164
  %144 = phi i64 [ %148, %141 ], [ %139, %121 ]
  %145 = getelementptr inbounds i32, i32* %142, i64 1, !dbg !1163
  %146 = load i32, i32* %142, align 4, !dbg !1165, !tbaa !429
  %147 = getelementptr inbounds i32, i32* %143, i64 1, !dbg !1166
  store i32 %146, i32* %143, align 4, !dbg !1167, !tbaa !429
  %148 = add i64 %144, -1, !dbg !1168
  %149 = icmp eq i64 %148, 0, !dbg !1168
  br i1 %149, label %150, label %141, !dbg !1168, !llvm.loop !1169

; <label>:150:                                    ; preds = %141, %121
  %151 = phi i32* [ %122, %121 ], [ %145, %141 ]
  %152 = phi i32* [ %123, %121 ], [ %147, %141 ]
  %153 = icmp ult i8* %135, inttoptr (i64 28 to i8*), !dbg !1163
  br i1 %153, label %381, label %353, !dbg !1163

; <label>:154:                                    ; preds = %105
  %155 = shl nsw i64 %101, 2, !dbg !1163
  %156 = add nsw i64 %155, 24, !dbg !1163
  %157 = getelementptr i8, i8* %5, i64 %156, !dbg !1163
  %158 = ptrtoint i8* %157 to i64
  %159 = getelementptr %struct._Bigint, %struct._Bigint* %1, i64 0, i32 5, i64 1, !dbg !1163
  %160 = ptrtoint i32* %159 to i64
  %161 = icmp ugt i64 %158, %160, !dbg !1163
  %162 = select i1 %161, i64 %158, i64 %160, !dbg !1163
  %163 = inttoptr i64 %162 to i8*
  %164 = sub i64 -25, %4, !dbg !1163
  %165 = getelementptr i8, i8* %163, i64 %164, !dbg !1163
  %166 = ptrtoint i8* %165 to i64
  %167 = lshr i64 %166, 2, !dbg !1163
  %168 = add nuw nsw i64 %167, 1, !dbg !1163
  %169 = getelementptr i32, i32* %97, i64 %168, !dbg !1163
  %170 = getelementptr %struct._Bigint, %struct._Bigint* %1, i64 0, i32 5, i64 0, !dbg !1163
  %171 = add i64 %166, 28, !dbg !1163
  %172 = and i64 %171, -4, !dbg !1163
  %173 = getelementptr i8, i8* %5, i64 %172, !dbg !1163
  %174 = icmp ugt i8* %173, %98, !dbg !1163
  %175 = icmp ult i32* %170, %169, !dbg !1163
  %176 = and i1 %174, %175, !dbg !1163
  br i1 %176, label %121, label %177, !dbg !1163

; <label>:177:                                    ; preds = %154
  %178 = and i64 %119, 9223372036854775800, !dbg !1163
  %179 = getelementptr %struct._Bigint, %struct._Bigint* %1, i64 0, i32 5, i64 %178, !dbg !1163
  %180 = getelementptr i32, i32* %97, i64 %178, !dbg !1163
  %181 = add nsw i64 %178, -8, !dbg !1163
  %182 = lshr exact i64 %181, 3, !dbg !1163
  %183 = add nuw nsw i64 %182, 1, !dbg !1163
  %184 = and i64 %183, 3, !dbg !1163
  %185 = icmp ult i64 %181, 24, !dbg !1163
  br i1 %185, label %237, label %186, !dbg !1163

; <label>:186:                                    ; preds = %177
  %187 = sub nsw i64 %183, %184, !dbg !1163
  br label %188, !dbg !1163

; <label>:188:                                    ; preds = %188, %186
  %189 = phi i64 [ 0, %186 ], [ %234, %188 ]
  %190 = phi i64 [ %187, %186 ], [ %235, %188 ]
  %191 = getelementptr %struct._Bigint, %struct._Bigint* %1, i64 0, i32 5, i64 %189, !dbg !1164
  %192 = getelementptr i32, i32* %97, i64 %189, !dbg !1164
  %193 = bitcast i32* %191 to <4 x i32>*, !dbg !1165
  %194 = load <4 x i32>, <4 x i32>* %193, align 4, !dbg !1165, !tbaa !429, !alias.scope !1170
  %195 = getelementptr i32, i32* %191, i64 4, !dbg !1165
  %196 = bitcast i32* %195 to <4 x i32>*, !dbg !1165
  %197 = load <4 x i32>, <4 x i32>* %196, align 4, !dbg !1165, !tbaa !429, !alias.scope !1170
  %198 = bitcast i32* %192 to <4 x i32>*, !dbg !1167
  store <4 x i32> %194, <4 x i32>* %198, align 4, !dbg !1167, !tbaa !429, !alias.scope !1173, !noalias !1170
  %199 = getelementptr i32, i32* %192, i64 4, !dbg !1167
  %200 = bitcast i32* %199 to <4 x i32>*, !dbg !1167
  store <4 x i32> %197, <4 x i32>* %200, align 4, !dbg !1167, !tbaa !429, !alias.scope !1173, !noalias !1170
  %201 = or i64 %189, 8
  %202 = getelementptr %struct._Bigint, %struct._Bigint* %1, i64 0, i32 5, i64 %201, !dbg !1164
  %203 = getelementptr i32, i32* %97, i64 %201, !dbg !1164
  %204 = bitcast i32* %202 to <4 x i32>*, !dbg !1165
  %205 = load <4 x i32>, <4 x i32>* %204, align 4, !dbg !1165, !tbaa !429, !alias.scope !1170
  %206 = getelementptr i32, i32* %202, i64 4, !dbg !1165
  %207 = bitcast i32* %206 to <4 x i32>*, !dbg !1165
  %208 = load <4 x i32>, <4 x i32>* %207, align 4, !dbg !1165, !tbaa !429, !alias.scope !1170
  %209 = bitcast i32* %203 to <4 x i32>*, !dbg !1167
  store <4 x i32> %205, <4 x i32>* %209, align 4, !dbg !1167, !tbaa !429, !alias.scope !1173, !noalias !1170
  %210 = getelementptr i32, i32* %203, i64 4, !dbg !1167
  %211 = bitcast i32* %210 to <4 x i32>*, !dbg !1167
  store <4 x i32> %208, <4 x i32>* %211, align 4, !dbg !1167, !tbaa !429, !alias.scope !1173, !noalias !1170
  %212 = or i64 %189, 16
  %213 = getelementptr %struct._Bigint, %struct._Bigint* %1, i64 0, i32 5, i64 %212, !dbg !1164
  %214 = getelementptr i32, i32* %97, i64 %212, !dbg !1164
  %215 = bitcast i32* %213 to <4 x i32>*, !dbg !1165
  %216 = load <4 x i32>, <4 x i32>* %215, align 4, !dbg !1165, !tbaa !429, !alias.scope !1170
  %217 = getelementptr i32, i32* %213, i64 4, !dbg !1165
  %218 = bitcast i32* %217 to <4 x i32>*, !dbg !1165
  %219 = load <4 x i32>, <4 x i32>* %218, align 4, !dbg !1165, !tbaa !429, !alias.scope !1170
  %220 = bitcast i32* %214 to <4 x i32>*, !dbg !1167
  store <4 x i32> %216, <4 x i32>* %220, align 4, !dbg !1167, !tbaa !429, !alias.scope !1173, !noalias !1170
  %221 = getelementptr i32, i32* %214, i64 4, !dbg !1167
  %222 = bitcast i32* %221 to <4 x i32>*, !dbg !1167
  store <4 x i32> %219, <4 x i32>* %222, align 4, !dbg !1167, !tbaa !429, !alias.scope !1173, !noalias !1170
  %223 = or i64 %189, 24
  %224 = getelementptr %struct._Bigint, %struct._Bigint* %1, i64 0, i32 5, i64 %223, !dbg !1164
  %225 = getelementptr i32, i32* %97, i64 %223, !dbg !1164
  %226 = bitcast i32* %224 to <4 x i32>*, !dbg !1165
  %227 = load <4 x i32>, <4 x i32>* %226, align 4, !dbg !1165, !tbaa !429, !alias.scope !1170
  %228 = getelementptr i32, i32* %224, i64 4, !dbg !1165
  %229 = bitcast i32* %228 to <4 x i32>*, !dbg !1165
  %230 = load <4 x i32>, <4 x i32>* %229, align 4, !dbg !1165, !tbaa !429, !alias.scope !1170
  %231 = bitcast i32* %225 to <4 x i32>*, !dbg !1167
  store <4 x i32> %227, <4 x i32>* %231, align 4, !dbg !1167, !tbaa !429, !alias.scope !1173, !noalias !1170
  %232 = getelementptr i32, i32* %225, i64 4, !dbg !1167
  %233 = bitcast i32* %232 to <4 x i32>*, !dbg !1167
  store <4 x i32> %230, <4 x i32>* %233, align 4, !dbg !1167, !tbaa !429, !alias.scope !1173, !noalias !1170
  %234 = add i64 %189, 32
  %235 = add i64 %190, -4
  %236 = icmp eq i64 %235, 0
  br i1 %236, label %237, label %188, !llvm.loop !1175

; <label>:237:                                    ; preds = %188, %177
  %238 = phi i64 [ 0, %177 ], [ %234, %188 ]
  %239 = icmp eq i64 %184, 0
  br i1 %239, label %256, label %240

; <label>:240:                                    ; preds = %237, %240
  %241 = phi i64 [ %253, %240 ], [ %238, %237 ]
  %242 = phi i64 [ %254, %240 ], [ %184, %237 ]
  %243 = getelementptr %struct._Bigint, %struct._Bigint* %1, i64 0, i32 5, i64 %241, !dbg !1164
  %244 = getelementptr i32, i32* %97, i64 %241, !dbg !1164
  %245 = bitcast i32* %243 to <4 x i32>*, !dbg !1165
  %246 = load <4 x i32>, <4 x i32>* %245, align 4, !dbg !1165, !tbaa !429, !alias.scope !1170
  %247 = getelementptr i32, i32* %243, i64 4, !dbg !1165
  %248 = bitcast i32* %247 to <4 x i32>*, !dbg !1165
  %249 = load <4 x i32>, <4 x i32>* %248, align 4, !dbg !1165, !tbaa !429, !alias.scope !1170
  %250 = bitcast i32* %244 to <4 x i32>*, !dbg !1167
  store <4 x i32> %246, <4 x i32>* %250, align 4, !dbg !1167, !tbaa !429, !alias.scope !1173, !noalias !1170
  %251 = getelementptr i32, i32* %244, i64 4, !dbg !1167
  %252 = bitcast i32* %251 to <4 x i32>*, !dbg !1167
  store <4 x i32> %249, <4 x i32>* %252, align 4, !dbg !1167, !tbaa !429, !alias.scope !1173, !noalias !1170
  %253 = add i64 %241, 8
  %254 = add i64 %242, -1
  %255 = icmp eq i64 %254, 0
  br i1 %255, label %256, label %240, !llvm.loop !1178

; <label>:256:                                    ; preds = %240, %237
  %257 = icmp eq i64 %119, %178
  br i1 %257, label %381, label %121, !dbg !1163

; <label>:258:                                    ; preds = %96
  %259 = sub nsw i32 32, %103, !dbg !1179
  %260 = shl nsw i64 %101, 2, !dbg !1182
  %261 = add nsw i64 %260, 24, !dbg !1182
  %262 = getelementptr i8, i8* %5, i64 %261, !dbg !1182
  %263 = ptrtoint i8* %262 to i64
  %264 = getelementptr %struct._Bigint, %struct._Bigint* %1, i64 0, i32 5, i64 1, !dbg !1182
  %265 = ptrtoint i32* %264 to i64
  %266 = icmp ugt i64 %263, %265, !dbg !1182
  %267 = select i1 %266, i64 %263, i64 %265, !dbg !1182
  %268 = inttoptr i64 %267 to i8*
  %269 = sub i64 -25, %4, !dbg !1182
  %270 = getelementptr i8, i8* %268, i64 %269, !dbg !1182
  %271 = ptrtoint i8* %270 to i64
  %272 = lshr i64 %271, 2, !dbg !1182
  %273 = add nuw nsw i64 %272, 1, !dbg !1182
  %274 = shl nsw i64 %101, 2, !dbg !1182
  %275 = add nsw i64 %274, 24, !dbg !1182
  %276 = getelementptr i8, i8* %5, i64 %275, !dbg !1182
  %277 = ptrtoint i8* %276 to i64
  %278 = getelementptr %struct._Bigint, %struct._Bigint* %1, i64 0, i32 5, i64 1, !dbg !1182
  %279 = ptrtoint i32* %278 to i64
  %280 = icmp ugt i64 %277, %279, !dbg !1182
  %281 = select i1 %280, i64 %277, i64 %279, !dbg !1182
  %282 = inttoptr i64 %281 to i8*
  %283 = sub i64 -25, %4, !dbg !1182
  %284 = getelementptr i8, i8* %282, i64 %283, !dbg !1182
  %285 = ptrtoint i8* %284 to i64
  %286 = lshr i64 %285, 2, !dbg !1182
  %287 = add nuw nsw i64 %286, 1, !dbg !1182
  %288 = and i64 %287, 3, !dbg !1182
  %289 = icmp ult i8* %284, inttoptr (i64 12 to i8*), !dbg !1182
  br i1 %289, label %327, label %290, !dbg !1182

; <label>:290:                                    ; preds = %258
  %291 = sub nsw i64 %287, %288, !dbg !1182
  br label %292, !dbg !1182

; <label>:292:                                    ; preds = %292, %290
  %293 = phi i32* [ %99, %290 ], [ %322, %292 ], !dbg !1183
  %294 = phi i32* [ %97, %290 ], [ %321, %292 ], !dbg !1183
  %295 = phi i32 [ 0, %290 ], [ %324, %292 ], !dbg !1183
  %296 = phi i64 [ %291, %290 ], [ %325, %292 ]
  %297 = load i32, i32* %293, align 4, !dbg !1185, !tbaa !429
  %298 = shl i32 %297, %103, !dbg !1186
  %299 = or i32 %298, %295, !dbg !1187
  %300 = getelementptr inbounds i32, i32* %294, i64 1, !dbg !1188
  store i32 %299, i32* %294, align 4, !dbg !1189, !tbaa !429
  %301 = getelementptr inbounds i32, i32* %293, i64 1, !dbg !1190
  %302 = load i32, i32* %293, align 4, !dbg !1191, !tbaa !429
  %303 = lshr i32 %302, %259, !dbg !1192
  %304 = load i32, i32* %301, align 4, !dbg !1185, !tbaa !429
  %305 = shl i32 %304, %103, !dbg !1186
  %306 = or i32 %305, %303, !dbg !1187
  %307 = getelementptr inbounds i32, i32* %294, i64 2, !dbg !1188
  store i32 %306, i32* %300, align 4, !dbg !1189, !tbaa !429
  %308 = getelementptr inbounds i32, i32* %293, i64 2, !dbg !1190
  %309 = load i32, i32* %301, align 4, !dbg !1191, !tbaa !429
  %310 = lshr i32 %309, %259, !dbg !1192
  %311 = load i32, i32* %308, align 4, !dbg !1185, !tbaa !429
  %312 = shl i32 %311, %103, !dbg !1186
  %313 = or i32 %312, %310, !dbg !1187
  %314 = getelementptr inbounds i32, i32* %294, i64 3, !dbg !1188
  store i32 %313, i32* %307, align 4, !dbg !1189, !tbaa !429
  %315 = getelementptr inbounds i32, i32* %293, i64 3, !dbg !1190
  %316 = load i32, i32* %308, align 4, !dbg !1191, !tbaa !429
  %317 = lshr i32 %316, %259, !dbg !1192
  %318 = load i32, i32* %315, align 4, !dbg !1185, !tbaa !429
  %319 = shl i32 %318, %103, !dbg !1186
  %320 = or i32 %319, %317, !dbg !1187
  %321 = getelementptr inbounds i32, i32* %294, i64 4, !dbg !1188
  store i32 %320, i32* %314, align 4, !dbg !1189, !tbaa !429
  %322 = getelementptr inbounds i32, i32* %293, i64 4, !dbg !1190
  %323 = load i32, i32* %315, align 4, !dbg !1191, !tbaa !429
  %324 = lshr i32 %323, %259, !dbg !1192
  %325 = add i64 %296, -4, !dbg !1193
  %326 = icmp eq i64 %325, 0, !dbg !1193
  br i1 %326, label %327, label %292, !dbg !1193, !llvm.loop !1194

; <label>:327:                                    ; preds = %292, %258
  %328 = phi i32 [ undef, %258 ], [ %324, %292 ]
  %329 = phi i32* [ %99, %258 ], [ %322, %292 ]
  %330 = phi i32* [ %97, %258 ], [ %321, %292 ]
  %331 = phi i32 [ 0, %258 ], [ %324, %292 ]
  %332 = icmp eq i64 %288, 0, !dbg !1193
  br i1 %332, label %347, label %333, !dbg !1193

; <label>:333:                                    ; preds = %327, %333
  %334 = phi i32* [ %342, %333 ], [ %329, %327 ], !dbg !1183
  %335 = phi i32* [ %341, %333 ], [ %330, %327 ], !dbg !1183
  %336 = phi i32 [ %344, %333 ], [ %331, %327 ], !dbg !1183
  %337 = phi i64 [ %345, %333 ], [ %288, %327 ]
  %338 = load i32, i32* %334, align 4, !dbg !1185, !tbaa !429
  %339 = shl i32 %338, %103, !dbg !1186
  %340 = or i32 %339, %336, !dbg !1187
  %341 = getelementptr inbounds i32, i32* %335, i64 1, !dbg !1188
  store i32 %340, i32* %335, align 4, !dbg !1189, !tbaa !429
  %342 = getelementptr inbounds i32, i32* %334, i64 1, !dbg !1190
  %343 = load i32, i32* %334, align 4, !dbg !1191, !tbaa !429
  %344 = lshr i32 %343, %259, !dbg !1192
  %345 = add i64 %337, -1, !dbg !1193
  %346 = icmp eq i64 %345, 0, !dbg !1193
  br i1 %346, label %347, label %333, !dbg !1193, !llvm.loop !1196

; <label>:347:                                    ; preds = %333, %327
  %348 = phi i32 [ %328, %327 ], [ %344, %333 ], !dbg !1192
  %349 = getelementptr i32, i32* %97, i64 %273, !dbg !1182
  store i32 %348, i32* %349, align 4, !dbg !1197, !tbaa !429
  %350 = icmp eq i32 %348, 0, !dbg !1199
  %351 = add nsw i32 %11, 2, !dbg !1200
  %352 = select i1 %350, i32 %12, i32 %351, !dbg !1201
  br label %381, !dbg !1201

; <label>:353:                                    ; preds = %150, %353
  %354 = phi i32* [ %377, %353 ], [ %151, %150 ], !dbg !1164
  %355 = phi i32* [ %379, %353 ], [ %152, %150 ], !dbg !1164
  %356 = getelementptr inbounds i32, i32* %354, i64 1, !dbg !1163
  %357 = load i32, i32* %354, align 4, !dbg !1165, !tbaa !429
  %358 = getelementptr inbounds i32, i32* %355, i64 1, !dbg !1166
  store i32 %357, i32* %355, align 4, !dbg !1167, !tbaa !429
  %359 = getelementptr inbounds i32, i32* %354, i64 2, !dbg !1163
  %360 = load i32, i32* %356, align 4, !dbg !1165, !tbaa !429
  %361 = getelementptr inbounds i32, i32* %355, i64 2, !dbg !1166
  store i32 %360, i32* %358, align 4, !dbg !1167, !tbaa !429
  %362 = getelementptr inbounds i32, i32* %354, i64 3, !dbg !1163
  %363 = load i32, i32* %359, align 4, !dbg !1165, !tbaa !429
  %364 = getelementptr inbounds i32, i32* %355, i64 3, !dbg !1166
  store i32 %363, i32* %361, align 4, !dbg !1167, !tbaa !429
  %365 = getelementptr inbounds i32, i32* %354, i64 4, !dbg !1163
  %366 = load i32, i32* %362, align 4, !dbg !1165, !tbaa !429
  %367 = getelementptr inbounds i32, i32* %355, i64 4, !dbg !1166
  store i32 %366, i32* %364, align 4, !dbg !1167, !tbaa !429
  %368 = getelementptr inbounds i32, i32* %354, i64 5, !dbg !1163
  %369 = load i32, i32* %365, align 4, !dbg !1165, !tbaa !429
  %370 = getelementptr inbounds i32, i32* %355, i64 5, !dbg !1166
  store i32 %369, i32* %367, align 4, !dbg !1167, !tbaa !429
  %371 = getelementptr inbounds i32, i32* %354, i64 6, !dbg !1163
  %372 = load i32, i32* %368, align 4, !dbg !1165, !tbaa !429
  %373 = getelementptr inbounds i32, i32* %355, i64 6, !dbg !1166
  store i32 %372, i32* %370, align 4, !dbg !1167, !tbaa !429
  %374 = getelementptr inbounds i32, i32* %354, i64 7, !dbg !1163
  %375 = load i32, i32* %371, align 4, !dbg !1165, !tbaa !429
  %376 = getelementptr inbounds i32, i32* %355, i64 7, !dbg !1166
  store i32 %375, i32* %373, align 4, !dbg !1167, !tbaa !429
  %377 = getelementptr inbounds i32, i32* %354, i64 8, !dbg !1163
  %378 = load i32, i32* %374, align 4, !dbg !1165, !tbaa !429
  %379 = getelementptr inbounds i32, i32* %355, i64 8, !dbg !1166
  store i32 %378, i32* %376, align 4, !dbg !1167, !tbaa !429
  %380 = icmp ult i32* %377, %102, !dbg !1202
  br i1 %380, label %353, label %381, !dbg !1168, !llvm.loop !1203

; <label>:381:                                    ; preds = %150, %353, %256, %347
  %382 = phi i32 [ %352, %347 ], [ %12, %256 ], [ %12, %353 ], [ %12, %150 ], !dbg !1204
  %383 = add nsw i32 %382, -1, !dbg !1205
  %384 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %61, i64 0, i32 4, !dbg !1206
  store i32 %383, i32* %384, align 4, !dbg !1207, !tbaa !378
  %385 = icmp eq %struct._Bigint* %1, null, !dbg !1210
  br i1 %385, label %394, label %386, !dbg !1211

; <label>:386:                                    ; preds = %381
  %387 = load %struct._Bigint**, %struct._Bigint*** %24, align 8, !dbg !1212, !tbaa !332
  %388 = load i32, i32* %7, align 8, !dbg !1213, !tbaa !371
  %389 = sext i32 %388 to i64, !dbg !1212
  %390 = getelementptr inbounds %struct._Bigint*, %struct._Bigint** %387, i64 %389, !dbg !1212
  %391 = bitcast %struct._Bigint** %390 to i64*, !dbg !1212
  %392 = load i64, i64* %391, align 8, !dbg !1212, !tbaa !351
  %393 = bitcast %struct._Bigint* %1 to i64*, !dbg !1214
  store i64 %392, i64* %393, align 8, !dbg !1214, !tbaa !357
  store %struct._Bigint* %1, %struct._Bigint** %390, align 8, !dbg !1215, !tbaa !351
  br label %394, !dbg !1216

; <label>:394:                                    ; preds = %381, %386
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1217
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1218
  ret %struct._Bigint* %61, !dbg !1218
}

; Function Attrs: noredzone nounwind
define dso_local i32 @__mcmp(%struct._Bigint* readonly, %struct._Bigint* nocapture readonly) local_unnamed_addr #0 !dbg !1219 {
  %3 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %0, i64 0, i32 4, !dbg !1232
  %4 = load i32, i32* %3, align 4, !dbg !1232, !tbaa !378
  %5 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %1, i64 0, i32 4, !dbg !1234
  %6 = load i32, i32* %5, align 4, !dbg !1234, !tbaa !378
  %7 = sub nsw i32 %4, %6, !dbg !1236
  %8 = icmp eq i32 %7, 0, !dbg !1236
  br i1 %8, label %9, label %27, !dbg !1238

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %0, i64 0, i32 5, i64 0, !dbg !1239
  %11 = sext i32 %6 to i64, !dbg !1241
  %12 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %0, i64 0, i32 5, i64 %11, !dbg !1241
  %13 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %1, i64 0, i32 5, i64 %11, !dbg !1244
  br label %14, !dbg !1246

; <label>:14:                                     ; preds = %25, %9
  %15 = phi i32* [ %13, %9 ], [ %19, %25 ], !dbg !1247
  %16 = phi i32* [ %12, %9 ], [ %17, %25 ], !dbg !1247
  %17 = getelementptr inbounds i32, i32* %16, i64 -1, !dbg !1252
  %18 = load i32, i32* %17, align 4, !dbg !1253, !tbaa !429
  %19 = getelementptr inbounds i32, i32* %15, i64 -1, !dbg !1254
  %20 = load i32, i32* %19, align 4, !dbg !1255, !tbaa !429
  %21 = icmp eq i32 %18, %20, !dbg !1256
  br i1 %21, label %25, label %22, !dbg !1257

; <label>:22:                                     ; preds = %14
  %23 = icmp ult i32 %18, %20, !dbg !1258
  %24 = select i1 %23, i32 -1, i32 1, !dbg !1259
  br label %27, !dbg !1260

; <label>:25:                                     ; preds = %14
  %26 = icmp ugt i32* %17, %10, !dbg !1261
  br i1 %26, label %14, label %27, !dbg !1263, !llvm.loop !1264

; <label>:27:                                     ; preds = %25, %2, %22
  %28 = phi i32 [ %24, %22 ], [ %7, %2 ], [ 0, %25 ], !dbg !1267
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1268
  ret i32 %28, !dbg !1268
}

; Function Attrs: noredzone nounwind
define dso_local %struct._Bigint* @__mdiff(%struct._reent* nocapture, %struct._Bigint* readonly, %struct._Bigint* readonly) local_unnamed_addr #0 !dbg !1269 {
  %4 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %1, i64 0, i32 4, !dbg !1289
  %5 = load i32, i32* %4, align 4, !dbg !1289, !tbaa !378
  %6 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %2, i64 0, i32 4, !dbg !1291
  %7 = load i32, i32* %6, align 4, !dbg !1291, !tbaa !378
  %8 = sub nsw i32 %5, %7, !dbg !1293
  %9 = icmp eq i32 %8, 0, !dbg !1293
  br i1 %9, label %10, label %62, !dbg !1294

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %1, i64 0, i32 5, i64 0, !dbg !1295
  %12 = sext i32 %7 to i64, !dbg !1297
  %13 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %1, i64 0, i32 5, i64 %12, !dbg !1297
  %14 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %2, i64 0, i32 5, i64 %12, !dbg !1300
  br label %15, !dbg !1302

; <label>:15:                                     ; preds = %26, %10
  %16 = phi i32* [ %14, %10 ], [ %20, %26 ], !dbg !1303
  %17 = phi i32* [ %13, %10 ], [ %18, %26 ], !dbg !1303
  %18 = getelementptr inbounds i32, i32* %17, i64 -1, !dbg !1304
  %19 = load i32, i32* %18, align 4, !dbg !1305, !tbaa !429
  %20 = getelementptr inbounds i32, i32* %16, i64 -1, !dbg !1306
  %21 = load i32, i32* %20, align 4, !dbg !1307, !tbaa !429
  %22 = icmp eq i32 %19, %21, !dbg !1308
  br i1 %22, label %26, label %23, !dbg !1309

; <label>:23:                                     ; preds = %15
  %24 = icmp ult i32 %19, %21, !dbg !1310
  %25 = select i1 %24, i32 -1, i32 1, !dbg !1311
  br label %62, !dbg !1312

; <label>:26:                                     ; preds = %15
  %27 = icmp ugt i32* %18, %11, !dbg !1313
  br i1 %27, label %15, label %28, !dbg !1314, !llvm.loop !1264

; <label>:28:                                     ; preds = %26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1315
  %29 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 13, !dbg !1321
  %30 = load %struct._Bigint**, %struct._Bigint*** %29, align 8, !dbg !1321, !tbaa !332
  %31 = icmp eq %struct._Bigint** %30, null, !dbg !1322
  br i1 %31, label %32, label %37, !dbg !1323

; <label>:32:                                     ; preds = %28
  %33 = tail call i8* @calloc(i64 8, i64 65) #4, !dbg !1324
  %34 = bitcast %struct._Bigint*** %29 to i8**, !dbg !1325
  store i8* %33, i8** %34, align 8, !dbg !1325, !tbaa !332
  %35 = icmp eq i8* %33, null, !dbg !1326
  %36 = bitcast i8* %33 to %struct._Bigint**, !dbg !1327
  br i1 %35, label %58, label %37, !dbg !1327

; <label>:37:                                     ; preds = %32, %28
  %38 = phi %struct._Bigint** [ %36, %32 ], [ %30, %28 ], !dbg !1328
  %39 = load %struct._Bigint*, %struct._Bigint** %38, align 8, !dbg !1328, !tbaa !351
  %40 = icmp eq %struct._Bigint* %39, null, !dbg !1330
  br i1 %40, label %45, label %41, !dbg !1331

; <label>:41:                                     ; preds = %37
  %42 = bitcast %struct._Bigint* %39 to i64*, !dbg !1332
  %43 = load i64, i64* %42, align 8, !dbg !1332, !tbaa !357
  %44 = bitcast %struct._Bigint** %38 to i64*, !dbg !1333
  store i64 %43, i64* %44, align 8, !dbg !1333, !tbaa !351
  br label %54, !dbg !1334

; <label>:45:                                     ; preds = %37
  %46 = tail call i8* @calloc(i64 1, i64 32) #4, !dbg !1336
  %47 = icmp eq i8* %46, null, !dbg !1337
  br i1 %47, label %58, label %48, !dbg !1338

; <label>:48:                                     ; preds = %45
  %49 = bitcast i8* %46 to %struct._Bigint*, !dbg !1339
  %50 = getelementptr inbounds i8, i8* %46, i64 8, !dbg !1340
  %51 = bitcast i8* %50 to i32*, !dbg !1340
  store i32 0, i32* %51, align 8, !dbg !1341, !tbaa !371
  %52 = getelementptr inbounds i8, i8* %46, i64 12, !dbg !1342
  %53 = bitcast i8* %52 to i32*, !dbg !1342
  store i32 1, i32* %53, align 4, !dbg !1343, !tbaa !374
  br label %54

; <label>:54:                                     ; preds = %48, %41
  %55 = phi %struct._Bigint* [ %39, %41 ], [ %49, %48 ], !dbg !1344
  %56 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %55, i64 0, i32 4, !dbg !1345
  store i32 0, i32* %56, align 4, !dbg !1346, !tbaa !378
  %57 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %55, i64 0, i32 3, !dbg !1347
  store i32 0, i32* %57, align 8, !dbg !1348, !tbaa !381
  br label %58, !dbg !1349

; <label>:58:                                     ; preds = %32, %45, %54
  %59 = phi %struct._Bigint* [ %55, %54 ], [ null, %32 ], [ null, %45 ], !dbg !1350
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1351
  %60 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %59, i64 0, i32 4, !dbg !1353
  store i32 1, i32* %60, align 4, !dbg !1354, !tbaa !378
  %61 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %59, i64 0, i32 5, i64 0, !dbg !1355
  store i32 0, i32* %61, align 8, !dbg !1356, !tbaa !429
  br label %244, !dbg !1357

; <label>:62:                                     ; preds = %23, %3
  %63 = phi i32 [ %8, %3 ], [ %25, %23 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1315
  %64 = icmp slt i32 %63, 0, !dbg !1358
  %65 = lshr i32 %63, 31, !dbg !1360
  %66 = select i1 %64, %struct._Bigint* %1, %struct._Bigint* %2, !dbg !1360
  %67 = ptrtoint %struct._Bigint* %66 to i64
  %68 = bitcast %struct._Bigint* %66 to i8*
  %69 = select i1 %64, %struct._Bigint* %2, %struct._Bigint* %1, !dbg !1360
  %70 = bitcast %struct._Bigint* %69 to i8*
  %71 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %69, i64 0, i32 1, !dbg !1362
  %72 = load i32, i32* %71, align 8, !dbg !1362, !tbaa !371
  %73 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 13, !dbg !1365
  %74 = load %struct._Bigint**, %struct._Bigint*** %73, align 8, !dbg !1365, !tbaa !332
  %75 = icmp eq %struct._Bigint** %74, null, !dbg !1366
  br i1 %75, label %76, label %81, !dbg !1367

; <label>:76:                                     ; preds = %62
  %77 = tail call i8* @calloc(i64 8, i64 65) #4, !dbg !1368
  %78 = bitcast %struct._Bigint*** %73 to i8**, !dbg !1369
  store i8* %77, i8** %78, align 8, !dbg !1369, !tbaa !332
  %79 = icmp eq i8* %77, null, !dbg !1370
  %80 = bitcast i8* %77 to %struct._Bigint**, !dbg !1371
  br i1 %79, label %109, label %81, !dbg !1371

; <label>:81:                                     ; preds = %76, %62
  %82 = phi %struct._Bigint** [ %80, %76 ], [ %74, %62 ], !dbg !1372
  %83 = sext i32 %72 to i64, !dbg !1372
  %84 = getelementptr inbounds %struct._Bigint*, %struct._Bigint** %82, i64 %83, !dbg !1372
  %85 = load %struct._Bigint*, %struct._Bigint** %84, align 8, !dbg !1372, !tbaa !351
  %86 = icmp eq %struct._Bigint* %85, null, !dbg !1374
  br i1 %86, label %91, label %87, !dbg !1375

; <label>:87:                                     ; preds = %81
  %88 = bitcast %struct._Bigint* %85 to i64*, !dbg !1376
  %89 = load i64, i64* %88, align 8, !dbg !1376, !tbaa !357
  %90 = bitcast %struct._Bigint** %84 to i64*, !dbg !1377
  store i64 %89, i64* %90, align 8, !dbg !1377, !tbaa !351
  br label %105, !dbg !1378

; <label>:91:                                     ; preds = %81
  %92 = shl i32 1, %72, !dbg !1379
  %93 = add nsw i32 %92, -1, !dbg !1381
  %94 = sext i32 %93 to i64, !dbg !1381
  %95 = shl nsw i64 %94, 2, !dbg !1381
  %96 = add nsw i64 %95, 32, !dbg !1381
  %97 = tail call i8* @calloc(i64 1, i64 %96) #4, !dbg !1381
  %98 = icmp eq i8* %97, null, !dbg !1382
  br i1 %98, label %109, label %99, !dbg !1383

; <label>:99:                                     ; preds = %91
  %100 = bitcast i8* %97 to %struct._Bigint*, !dbg !1384
  %101 = getelementptr inbounds i8, i8* %97, i64 8, !dbg !1385
  %102 = bitcast i8* %101 to i32*, !dbg !1385
  store i32 %72, i32* %102, align 8, !dbg !1386, !tbaa !371
  %103 = getelementptr inbounds i8, i8* %97, i64 12, !dbg !1387
  %104 = bitcast i8* %103 to i32*, !dbg !1387
  store i32 %92, i32* %104, align 4, !dbg !1388, !tbaa !374
  br label %105

; <label>:105:                                    ; preds = %99, %87
  %106 = phi %struct._Bigint* [ %85, %87 ], [ %100, %99 ], !dbg !1389
  %107 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %106, i64 0, i32 4, !dbg !1390
  store i32 0, i32* %107, align 4, !dbg !1391, !tbaa !378
  %108 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %106, i64 0, i32 3, !dbg !1392
  store i32 0, i32* %108, align 8, !dbg !1393, !tbaa !381
  br label %109, !dbg !1394

; <label>:109:                                    ; preds = %76, %91, %105
  %110 = phi %struct._Bigint* [ %106, %105 ], [ null, %76 ], [ null, %91 ], !dbg !1395
  %111 = bitcast %struct._Bigint* %110 to i8*
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1396
  %112 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %110, i64 0, i32 3, !dbg !1397
  store i32 %65, i32* %112, align 8, !dbg !1398, !tbaa !381
  %113 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %69, i64 0, i32 4, !dbg !1399
  %114 = load i32, i32* %113, align 4, !dbg !1399, !tbaa !378
  %115 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %69, i64 0, i32 5, i64 0, !dbg !1401
  %116 = sext i32 %114 to i64, !dbg !1403
  %117 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %66, i64 0, i32 4, !dbg !1405
  %118 = load i32, i32* %117, align 4, !dbg !1405, !tbaa !378
  %119 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %66, i64 0, i32 5, i64 0, !dbg !1407
  %120 = sext i32 %118 to i64, !dbg !1409
  %121 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %66, i64 0, i32 5, i64 %120, !dbg !1409
  %122 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %110, i64 0, i32 5, i64 0, !dbg !1411
  %123 = shl nsw i64 %120, 2, !dbg !1414
  %124 = add nsw i64 %123, 24, !dbg !1414
  %125 = getelementptr i8, i8* %68, i64 %124, !dbg !1414
  %126 = ptrtoint i8* %125 to i64
  %127 = getelementptr %struct._Bigint, %struct._Bigint* %66, i64 0, i32 5, i64 1, !dbg !1414
  %128 = ptrtoint i32* %127 to i64
  %129 = icmp ugt i64 %126, %128, !dbg !1414
  %130 = select i1 %129, i64 %126, i64 %128, !dbg !1414
  %131 = inttoptr i64 %130 to i8*
  %132 = sub i64 -25, %67, !dbg !1414
  %133 = getelementptr i8, i8* %131, i64 %132, !dbg !1414
  %134 = ptrtoint i8* %133 to i64
  %135 = add i64 %134, 28, !dbg !1414
  %136 = and i64 %135, -4, !dbg !1414
  %137 = getelementptr i8, i8* %70, i64 %136, !dbg !1414
  %138 = getelementptr i8, i8* %111, i64 %136, !dbg !1414
  br label %139, !dbg !1414

; <label>:139:                                    ; preds = %139, %109
  %140 = phi i32 [ 0, %109 ], [ %157, %139 ], !dbg !1415
  %141 = phi i32* [ %115, %109 ], [ %151, %139 ], !dbg !1415
  %142 = phi i32* [ %119, %109 ], [ %153, %139 ], !dbg !1415
  %143 = phi i32* [ %122, %109 ], [ %161, %139 ], !dbg !1415
  %144 = load i32, i32* %141, align 4, !dbg !1417, !tbaa !429
  %145 = and i32 %144, 65535, !dbg !1418
  %146 = load i32, i32* %142, align 4, !dbg !1419, !tbaa !429
  %147 = and i32 %146, 65535, !dbg !1420
  %148 = sub nsw i32 %145, %147, !dbg !1421
  %149 = add nsw i32 %148, %140, !dbg !1422
  %150 = ashr i32 %149, 16, !dbg !1424
  %151 = getelementptr inbounds i32, i32* %141, i64 1, !dbg !1425
  %152 = lshr i32 %144, 16, !dbg !1426
  %153 = getelementptr inbounds i32, i32* %142, i64 1, !dbg !1427
  %154 = lshr i32 %146, 16, !dbg !1428
  %155 = sub nsw i32 %152, %154, !dbg !1429
  %156 = add nsw i32 %150, %155, !dbg !1430
  %157 = ashr i32 %156, 16, !dbg !1432
  %158 = shl i32 %156, 16, !dbg !1433
  %159 = and i32 %149, 65535, !dbg !1433
  %160 = or i32 %158, %159, !dbg !1433
  %161 = getelementptr inbounds i32, i32* %143, i64 1, !dbg !1433
  store i32 %160, i32* %143, align 4, !dbg !1433, !tbaa !429
  %162 = icmp ult i32* %153, %121, !dbg !1434
  br i1 %162, label %139, label %163, !dbg !1435, !llvm.loop !1436

; <label>:163:                                    ; preds = %139
  %164 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %69, i64 0, i32 5, i64 %116, !dbg !1403
  %165 = bitcast i8* %137 to i32*
  %166 = bitcast i8* %138 to i32*
  %167 = icmp ugt i32* %164, %165, !dbg !1438
  br i1 %167, label %170, label %168, !dbg !1439

; <label>:168:                                    ; preds = %204, %163
  %169 = phi i32* [ %166, %163 ], [ %205, %204 ]
  br label %235, !dbg !1440

; <label>:170:                                    ; preds = %163
  %171 = ptrtoint i8* %137 to i64
  %172 = shl nsw i64 %116, 2, !dbg !1441
  %173 = add nsw i64 %172, 23, !dbg !1441
  %174 = sub i64 %173, %171, !dbg !1441
  %175 = getelementptr i8, i8* %70, i64 %174, !dbg !1441
  %176 = ptrtoint i8* %175 to i64
  %177 = lshr i64 %176, 2, !dbg !1441
  %178 = add nuw nsw i64 %177, 1, !dbg !1441
  %179 = shl nsw i64 %116, 2, !dbg !1441
  %180 = add nsw i64 %179, 23, !dbg !1441
  %181 = sub i64 %180, %136, !dbg !1441
  %182 = and i64 %181, 4, !dbg !1441
  %183 = icmp eq i64 %182, 0, !dbg !1441
  br i1 %183, label %184, label %199, !dbg !1441

; <label>:184:                                    ; preds = %170
  %185 = load i32, i32* %165, align 4, !dbg !1441, !tbaa !429
  %186 = and i32 %185, 65535, !dbg !1443
  %187 = add nsw i32 %186, %157, !dbg !1444
  %188 = ashr i32 %187, 16, !dbg !1445
  %189 = getelementptr inbounds i8, i8* %137, i64 4, !dbg !1446
  %190 = bitcast i8* %189 to i32*, !dbg !1446
  %191 = lshr i32 %185, 16, !dbg !1447
  %192 = add nsw i32 %188, %191, !dbg !1448
  %193 = ashr i32 %192, 16, !dbg !1449
  %194 = shl i32 %192, 16, !dbg !1450
  %195 = and i32 %187, 65535, !dbg !1450
  %196 = or i32 %194, %195, !dbg !1450
  %197 = getelementptr inbounds i8, i8* %138, i64 4, !dbg !1450
  %198 = bitcast i8* %197 to i32*, !dbg !1450
  store i32 %196, i32* %166, align 4, !dbg !1450, !tbaa !429
  br label %199, !dbg !1439

; <label>:199:                                    ; preds = %184, %170
  %200 = phi i32* [ %166, %170 ], [ %198, %184 ]
  %201 = phi i32* [ %165, %170 ], [ %190, %184 ]
  %202 = phi i32 [ %157, %170 ], [ %193, %184 ]
  %203 = icmp eq i64 %181, 3, !dbg !1441
  br i1 %203, label %204, label %206, !dbg !1441

; <label>:204:                                    ; preds = %206, %199
  %205 = getelementptr i32, i32* %166, i64 %178, !dbg !1441
  br label %168, !dbg !1440

; <label>:206:                                    ; preds = %199, %206
  %207 = phi i32* [ %233, %206 ], [ %200, %199 ]
  %208 = phi i32* [ %226, %206 ], [ %201, %199 ]
  %209 = phi i32 [ %229, %206 ], [ %202, %199 ]
  %210 = load i32, i32* %208, align 4, !dbg !1441, !tbaa !429
  %211 = and i32 %210, 65535, !dbg !1443
  %212 = add nsw i32 %211, %209, !dbg !1444
  %213 = ashr i32 %212, 16, !dbg !1445
  %214 = getelementptr inbounds i32, i32* %208, i64 1, !dbg !1446
  %215 = lshr i32 %210, 16, !dbg !1447
  %216 = add nsw i32 %213, %215, !dbg !1448
  %217 = ashr i32 %216, 16, !dbg !1449
  %218 = shl i32 %216, 16, !dbg !1450
  %219 = and i32 %212, 65535, !dbg !1450
  %220 = or i32 %218, %219, !dbg !1450
  %221 = getelementptr inbounds i32, i32* %207, i64 1, !dbg !1450
  store i32 %220, i32* %207, align 4, !dbg !1450, !tbaa !429
  %222 = load i32, i32* %214, align 4, !dbg !1441, !tbaa !429
  %223 = and i32 %222, 65535, !dbg !1443
  %224 = add nsw i32 %223, %217, !dbg !1444
  %225 = ashr i32 %224, 16, !dbg !1445
  %226 = getelementptr inbounds i32, i32* %208, i64 2, !dbg !1446
  %227 = lshr i32 %222, 16, !dbg !1447
  %228 = add nsw i32 %225, %227, !dbg !1448
  %229 = ashr i32 %228, 16, !dbg !1449
  %230 = shl i32 %228, 16, !dbg !1450
  %231 = and i32 %224, 65535, !dbg !1450
  %232 = or i32 %230, %231, !dbg !1450
  %233 = getelementptr inbounds i32, i32* %207, i64 2, !dbg !1450
  store i32 %232, i32* %221, align 4, !dbg !1450, !tbaa !429
  %234 = icmp ult i32* %226, %164, !dbg !1438
  br i1 %234, label %206, label %204, !dbg !1439, !llvm.loop !1451

; <label>:235:                                    ; preds = %168, %235
  %236 = phi i32 [ %241, %235 ], [ %114, %168 ], !dbg !1453
  %237 = phi i32* [ %238, %235 ], [ %169, %168 ], !dbg !1453
  %238 = getelementptr inbounds i32, i32* %237, i64 -1, !dbg !1440
  %239 = load i32, i32* %238, align 4, !dbg !1454, !tbaa !429
  %240 = icmp eq i32 %239, 0, !dbg !1455
  %241 = add nsw i32 %236, -1, !dbg !1456
  br i1 %240, label %235, label %242, !dbg !1457, !llvm.loop !1458

; <label>:242:                                    ; preds = %235
  %243 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %110, i64 0, i32 4, !dbg !1459
  store i32 %236, i32* %243, align 4, !dbg !1460, !tbaa !378
  br label %244, !dbg !1461

; <label>:244:                                    ; preds = %242, %58
  %245 = phi %struct._Bigint* [ %110, %242 ], [ %59, %58 ], !dbg !1462
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1463
  ret %struct._Bigint* %245, !dbg !1463
}

; Function Attrs: noredzone nounwind
define dso_local double @__ulp(double) local_unnamed_addr #0 !dbg !1464 {
  %2 = bitcast double %0 to i64, !dbg !1479
  %3 = lshr i64 %2, 32, !dbg !1479
  %4 = trunc i64 %3 to i32, !dbg !1479
  %5 = and i32 %4, 2146435072, !dbg !1480
  %6 = icmp ugt i32 %5, 54525952, !dbg !1481
  br i1 %6, label %7, label %12, !dbg !1483

; <label>:7:                                      ; preds = %1
  %8 = add nsw i32 %5, -54525952, !dbg !1484
  %9 = zext i32 %8 to i64, !dbg !1486
  %10 = shl nuw i64 %9, 32, !dbg !1486
  %11 = bitcast i64 %10 to double, !dbg !1486
  br label %28, !dbg !1489

; <label>:12:                                     ; preds = %1
  %13 = sub nsw i32 54525952, %5, !dbg !1490
  %14 = ashr exact i32 %13, 20, !dbg !1492
  %15 = icmp slt i32 %13, 20971520, !dbg !1493
  br i1 %15, label %16, label %21, !dbg !1495

; <label>:16:                                     ; preds = %12
  %17 = lshr i32 524288, %14, !dbg !1496
  %18 = zext i32 %17 to i64, !dbg !1498
  %19 = shl nuw i64 %18, 32, !dbg !1498
  %20 = bitcast i64 %19 to double, !dbg !1498
  br label %28, !dbg !1499

; <label>:21:                                     ; preds = %12
  %22 = icmp sgt i32 %13, 52428800, !dbg !1500
  br i1 %22, label %28, label %23, !dbg !1502

; <label>:23:                                     ; preds = %21
  %24 = sub nsw i32 51, %14, !dbg !1503
  %25 = shl i32 1, %24, !dbg !1504
  %26 = zext i32 %25 to i64, !dbg !1502
  %27 = bitcast i64 %26 to double, !dbg !1502
  br label %28, !dbg !1502

; <label>:28:                                     ; preds = %23, %21, %16, %7
  %29 = phi double [ %11, %7 ], [ %20, %16 ], [ %27, %23 ], [ 4.940660e-324, %21 ], !dbg !1505
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1506
  ret double %29, !dbg !1506
}

; Function Attrs: noredzone nounwind
define dso_local double @__b2d(%struct._Bigint* readonly, i32* nocapture) local_unnamed_addr #0 !dbg !1507 {
  %3 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %0, i64 0, i32 5, i64 0, !dbg !1522
  %4 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %0, i64 0, i32 4, !dbg !1524
  %5 = load i32, i32* %4, align 4, !dbg !1524, !tbaa !378
  %6 = sext i32 %5 to i64, !dbg !1525
  %7 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %0, i64 0, i32 5, i64 %6, !dbg !1525
  %8 = getelementptr inbounds i32, i32* %7, i64 -1, !dbg !1527
  %9 = load i32, i32* %8, align 4, !dbg !1528, !tbaa !429
  %10 = icmp ugt i32 %9, 65535, !dbg !1533
  %11 = shl i32 %9, 16, !dbg !1534
  %12 = select i1 %10, i32 %9, i32 %11, !dbg !1535
  %13 = select i1 %10, i32 0, i32 16, !dbg !1535
  %14 = icmp ugt i32 %12, 16777215, !dbg !1536
  %15 = or i32 %13, 8, !dbg !1537
  %16 = shl i32 %12, 8, !dbg !1538
  %17 = select i1 %14, i32 %12, i32 %16, !dbg !1539
  %18 = select i1 %14, i32 %13, i32 %15, !dbg !1539
  %19 = icmp ugt i32 %17, 268435455, !dbg !1540
  %20 = or i32 %18, 4, !dbg !1541
  %21 = shl i32 %17, 4, !dbg !1542
  %22 = select i1 %19, i32 %17, i32 %21, !dbg !1543
  %23 = select i1 %19, i32 %18, i32 %20, !dbg !1543
  %24 = icmp ugt i32 %22, 1073741823, !dbg !1544
  %25 = or i32 %23, 2, !dbg !1545
  %26 = shl i32 %22, 2, !dbg !1546
  %27 = select i1 %24, i32 %22, i32 %26, !dbg !1547
  %28 = select i1 %24, i32 %23, i32 %25, !dbg !1547
  %29 = icmp slt i32 %27, 0, !dbg !1548
  br i1 %29, label %35, label %30, !dbg !1549

; <label>:30:                                     ; preds = %2
  %31 = add nsw i32 %28, 1, !dbg !1550
  %32 = and i32 %27, 1073741824, !dbg !1551
  %33 = icmp eq i32 %32, 0, !dbg !1551
  br i1 %33, label %34, label %35, !dbg !1552

; <label>:34:                                     ; preds = %30
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1553
  store i32 0, i32* %1, align 4, !dbg !1555, !tbaa !429
  br label %52, !dbg !1556

; <label>:35:                                     ; preds = %2, %30
  %36 = phi i32 [ %28, %2 ], [ %31, %30 ], !dbg !1557
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1553
  %37 = sub nsw i32 32, %36, !dbg !1558
  store i32 %37, i32* %1, align 4, !dbg !1555, !tbaa !429
  %38 = icmp slt i32 %36, 11, !dbg !1559
  br i1 %38, label %39, label %52, !dbg !1556

; <label>:39:                                     ; preds = %35
  %40 = sub nsw i32 11, %36, !dbg !1561
  %41 = lshr i32 %9, %40, !dbg !1563
  %42 = icmp ugt i32* %8, %3, !dbg !1564
  br i1 %42, label %43, label %46, !dbg !1565

; <label>:43:                                     ; preds = %39
  %44 = getelementptr inbounds i32, i32* %7, i64 -2, !dbg !1566
  %45 = load i32, i32* %44, align 4, !dbg !1567, !tbaa !429
  br label %46, !dbg !1565

; <label>:46:                                     ; preds = %39, %43
  %47 = phi i32 [ %45, %43 ], [ 0, %39 ], !dbg !1565
  %48 = add nsw i32 %36, 21, !dbg !1569
  %49 = shl i32 %9, %48, !dbg !1570
  %50 = lshr i32 %47, %40, !dbg !1571
  %51 = or i32 %50, %49, !dbg !1572
  br label %77, !dbg !1573

; <label>:52:                                     ; preds = %34, %35
  %53 = phi i32 [ 32, %34 ], [ %36, %35 ]
  %54 = icmp ugt i32* %8, %3, !dbg !1574
  br i1 %54, label %55, label %58, !dbg !1575

; <label>:55:                                     ; preds = %52
  %56 = getelementptr inbounds i32, i32* %7, i64 -2, !dbg !1576
  %57 = load i32, i32* %56, align 4, !dbg !1577, !tbaa !429
  br label %58, !dbg !1575

; <label>:58:                                     ; preds = %52, %55
  %59 = phi i32* [ %56, %55 ], [ %8, %52 ], !dbg !1578
  %60 = phi i32 [ %57, %55 ], [ 0, %52 ], !dbg !1575
  %61 = add nsw i32 %53, -11, !dbg !1580
  %62 = icmp eq i32 %61, 0, !dbg !1580
  br i1 %62, label %77, label %63, !dbg !1582

; <label>:63:                                     ; preds = %58
  %64 = shl i32 %9, %61, !dbg !1583
  %65 = sub i32 43, %53, !dbg !1585
  %66 = lshr i32 %60, %65, !dbg !1586
  %67 = or i32 %64, %66, !dbg !1587
  %68 = icmp ugt i32* %59, %3, !dbg !1588
  br i1 %68, label %69, label %72, !dbg !1589

; <label>:69:                                     ; preds = %63
  %70 = getelementptr inbounds i32, i32* %59, i64 -1, !dbg !1590
  %71 = load i32, i32* %70, align 4, !dbg !1591, !tbaa !429
  br label %72, !dbg !1589

; <label>:72:                                     ; preds = %63, %69
  %73 = phi i32 [ %71, %69 ], [ 0, %63 ], !dbg !1589
  %74 = shl i32 %60, %61, !dbg !1592
  %75 = lshr i32 %73, %65, !dbg !1593
  %76 = or i32 %75, %74, !dbg !1594
  br label %77, !dbg !1596

; <label>:77:                                     ; preds = %58, %72, %46
  %78 = phi i32 [ %76, %72 ], [ %51, %46 ], [ %60, %58 ]
  %79 = phi i32 [ %67, %72 ], [ %41, %46 ], [ %9, %58 ]
  %80 = or i32 %79, 1072693248, !dbg !1597
  %81 = zext i32 %80 to i64, !dbg !1597
  %82 = shl nuw i64 %81, 32, !dbg !1597
  %83 = zext i32 %78 to i64, !dbg !1597
  %84 = or i64 %82, %83, !dbg !1597
  %85 = bitcast i64 %84 to double, !dbg !1598
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1600
  ret double %85, !dbg !1600
}

; Function Attrs: noredzone nounwind
define dso_local %struct._Bigint* @__d2b(%struct._reent* nocapture, double, i32* nocapture, i32* nocapture) local_unnamed_addr #0 !dbg !1601 {
  %5 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 13, !dbg !1621
  %6 = load %struct._Bigint**, %struct._Bigint*** %5, align 8, !dbg !1621, !tbaa !332
  %7 = icmp eq %struct._Bigint** %6, null, !dbg !1622
  br i1 %7, label %8, label %13, !dbg !1623

; <label>:8:                                      ; preds = %4
  %9 = tail call i8* @calloc(i64 8, i64 65) #4, !dbg !1624
  %10 = bitcast %struct._Bigint*** %5 to i8**, !dbg !1625
  store i8* %9, i8** %10, align 8, !dbg !1625, !tbaa !332
  %11 = icmp eq i8* %9, null, !dbg !1626
  %12 = bitcast i8* %9 to %struct._Bigint**, !dbg !1627
  br i1 %11, label %35, label %13, !dbg !1627

; <label>:13:                                     ; preds = %8, %4
  %14 = phi %struct._Bigint** [ %12, %8 ], [ %6, %4 ], !dbg !1628
  %15 = getelementptr inbounds %struct._Bigint*, %struct._Bigint** %14, i64 1, !dbg !1628
  %16 = load %struct._Bigint*, %struct._Bigint** %15, align 8, !dbg !1628, !tbaa !351
  %17 = icmp eq %struct._Bigint* %16, null, !dbg !1630
  br i1 %17, label %22, label %18, !dbg !1631

; <label>:18:                                     ; preds = %13
  %19 = bitcast %struct._Bigint* %16 to i64*, !dbg !1632
  %20 = load i64, i64* %19, align 8, !dbg !1632, !tbaa !357
  %21 = bitcast %struct._Bigint** %15 to i64*, !dbg !1633
  store i64 %20, i64* %21, align 8, !dbg !1633, !tbaa !351
  br label %31, !dbg !1634

; <label>:22:                                     ; preds = %13
  %23 = tail call i8* @calloc(i64 1, i64 36) #4, !dbg !1636
  %24 = icmp eq i8* %23, null, !dbg !1637
  br i1 %24, label %35, label %25, !dbg !1638

; <label>:25:                                     ; preds = %22
  %26 = bitcast i8* %23 to %struct._Bigint*, !dbg !1639
  %27 = getelementptr inbounds i8, i8* %23, i64 8, !dbg !1640
  %28 = bitcast i8* %27 to i32*, !dbg !1640
  store i32 1, i32* %28, align 8, !dbg !1641, !tbaa !371
  %29 = getelementptr inbounds i8, i8* %23, i64 12, !dbg !1642
  %30 = bitcast i8* %29 to i32*, !dbg !1642
  store i32 2, i32* %30, align 4, !dbg !1643, !tbaa !374
  br label %31

; <label>:31:                                     ; preds = %25, %18
  %32 = phi %struct._Bigint* [ %16, %18 ], [ %26, %25 ], !dbg !1644
  %33 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %32, i64 0, i32 4, !dbg !1645
  store i32 0, i32* %33, align 4, !dbg !1646, !tbaa !378
  %34 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %32, i64 0, i32 3, !dbg !1647
  store i32 0, i32* %34, align 8, !dbg !1648, !tbaa !381
  br label %35, !dbg !1649

; <label>:35:                                     ; preds = %8, %22, %31
  %36 = phi %struct._Bigint* [ %32, %31 ], [ null, %8 ], [ null, %22 ], !dbg !1650
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1651
  %37 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %36, i64 0, i32 5, i64 0, !dbg !1653
  %38 = bitcast double %1 to i64, !dbg !1655
  %39 = lshr i64 %38, 32, !dbg !1655
  %40 = trunc i64 %39 to i32, !dbg !1655
  %41 = and i32 %40, 1048575, !dbg !1656
  %42 = lshr i64 %38, 52, !dbg !1658
  %43 = trunc i64 %42 to i32, !dbg !1660
  %44 = and i32 %43, 2047, !dbg !1660
  %45 = icmp ne i32 %44, 0, !dbg !1662
  %46 = or i32 %41, 1048576, !dbg !1663
  %47 = select i1 %45, i32 %46, i32 %41, !dbg !1664
  %48 = trunc i64 %38 to i32, !dbg !1665
  %49 = icmp eq i32 %48, 0, !dbg !1665
  br i1 %49, label %117, label %50, !dbg !1667

; <label>:50:                                     ; preds = %35
  %51 = and i32 %48, 7, !dbg !1672
  %52 = icmp eq i32 %51, 0, !dbg !1672
  br i1 %52, label %64, label %53, !dbg !1673

; <label>:53:                                     ; preds = %50
  %54 = and i32 %48, 1, !dbg !1674
  %55 = icmp eq i32 %54, 0, !dbg !1674
  br i1 %55, label %57, label %56, !dbg !1675

; <label>:56:                                     ; preds = %53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1676
  br label %108, !dbg !1678

; <label>:57:                                     ; preds = %53
  %58 = and i32 %48, 2, !dbg !1679
  %59 = icmp eq i32 %58, 0, !dbg !1679
  br i1 %59, label %62, label %60, !dbg !1680

; <label>:60:                                     ; preds = %57
  %61 = lshr i32 %48, 1, !dbg !1681
  br label %94, !dbg !1682

; <label>:62:                                     ; preds = %57
  %63 = lshr i32 %48, 2, !dbg !1683
  br label %94, !dbg !1684

; <label>:64:                                     ; preds = %50
  %65 = and i32 %48, 65535, !dbg !1686
  %66 = icmp eq i32 %65, 0, !dbg !1686
  %67 = lshr i32 %48, 16, !dbg !1687
  %68 = select i1 %66, i32 16, i32 0, !dbg !1688
  %69 = select i1 %66, i32 %67, i32 %48, !dbg !1688
  %70 = and i32 %69, 255, !dbg !1689
  %71 = icmp eq i32 %70, 0, !dbg !1689
  %72 = or i32 %68, 8, !dbg !1690
  %73 = lshr i32 %69, 8, !dbg !1691
  %74 = select i1 %71, i32 %72, i32 %68, !dbg !1692
  %75 = select i1 %71, i32 %73, i32 %69, !dbg !1692
  %76 = and i32 %75, 15, !dbg !1693
  %77 = icmp eq i32 %76, 0, !dbg !1693
  %78 = or i32 %74, 4, !dbg !1694
  %79 = lshr i32 %75, 4, !dbg !1695
  %80 = select i1 %77, i32 %78, i32 %74, !dbg !1696
  %81 = select i1 %77, i32 %79, i32 %75, !dbg !1696
  %82 = and i32 %81, 3, !dbg !1697
  %83 = icmp eq i32 %82, 0, !dbg !1697
  %84 = or i32 %80, 2, !dbg !1698
  %85 = lshr i32 %81, 2, !dbg !1699
  %86 = select i1 %83, i32 %84, i32 %80, !dbg !1700
  %87 = select i1 %83, i32 %85, i32 %81, !dbg !1700
  %88 = and i32 %87, 1, !dbg !1701
  %89 = icmp eq i32 %88, 0, !dbg !1701
  br i1 %89, label %90, label %97, !dbg !1702

; <label>:90:                                     ; preds = %64
  %91 = add nsw i32 %86, 1, !dbg !1703
  %92 = lshr i32 %87, 1, !dbg !1704
  %93 = icmp eq i32 %92, 0, !dbg !1705
  br i1 %93, label %94, label %97, !dbg !1706

; <label>:94:                                     ; preds = %60, %62, %90
  %95 = phi i32 [ %61, %60 ], [ %63, %62 ], [ %48, %90 ]
  %96 = phi i32 [ 1, %60 ], [ 2, %62 ], [ 32, %90 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1676
  br label %101, !dbg !1678

; <label>:97:                                     ; preds = %64, %90
  %98 = phi i32 [ %86, %64 ], [ %91, %90 ], !dbg !1707
  %99 = phi i32 [ %87, %64 ], [ %92, %90 ], !dbg !1707
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1676
  %100 = icmp eq i32 %98, 0, !dbg !1708
  br i1 %100, label %108, label %101, !dbg !1678

; <label>:101:                                    ; preds = %94, %97
  %102 = phi i32 [ %96, %94 ], [ %98, %97 ]
  %103 = phi i32 [ %95, %94 ], [ %99, %97 ]
  %104 = sub nsw i32 32, %102, !dbg !1710
  %105 = shl i32 %47, %104, !dbg !1712
  %106 = or i32 %105, %103, !dbg !1713
  store i32 %106, i32* %37, align 4, !dbg !1714, !tbaa !429
  %107 = lshr i32 %47, %102, !dbg !1715
  br label %110, !dbg !1716

; <label>:108:                                    ; preds = %56, %97
  %109 = phi i32 [ %48, %56 ], [ %99, %97 ]
  store i32 %109, i32* %37, align 4, !dbg !1717, !tbaa !429
  br label %110

; <label>:110:                                    ; preds = %108, %101
  %111 = phi i32 [ 0, %108 ], [ %102, %101 ]
  %112 = phi i32 [ %47, %108 ], [ %107, %101 ], !dbg !1718
  %113 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %36, i64 0, i32 5, i64 1, !dbg !1719
  store i32 %112, i32* %113, align 4, !dbg !1720, !tbaa !429
  %114 = icmp eq i32 %112, 0, !dbg !1721
  %115 = select i1 %114, i32 1, i32 2, !dbg !1721
  %116 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %36, i64 0, i32 4, !dbg !1722
  store i32 %115, i32* %116, align 4, !dbg !1723, !tbaa !378
  br label %168, !dbg !1725

; <label>:117:                                    ; preds = %35
  %118 = and i32 %47, 7, !dbg !1729
  %119 = icmp eq i32 %118, 0, !dbg !1729
  br i1 %119, label %130, label %120, !dbg !1730

; <label>:120:                                    ; preds = %117
  %121 = and i32 %47, 1, !dbg !1731
  %122 = icmp eq i32 %121, 0, !dbg !1731
  br i1 %122, label %123, label %163, !dbg !1732

; <label>:123:                                    ; preds = %120
  %124 = and i32 %47, 2, !dbg !1733
  %125 = icmp eq i32 %124, 0, !dbg !1733
  br i1 %125, label %128, label %126, !dbg !1734

; <label>:126:                                    ; preds = %123
  %127 = lshr i32 %47, 1, !dbg !1735
  br label %163, !dbg !1736

; <label>:128:                                    ; preds = %123
  %129 = lshr i32 %47, 2, !dbg !1737
  br label %163, !dbg !1738

; <label>:130:                                    ; preds = %117
  %131 = and i32 %47, 65535, !dbg !1740
  %132 = icmp eq i32 %131, 0, !dbg !1740
  %133 = lshr i32 %47, 16, !dbg !1741
  %134 = select i1 %132, i32 16, i32 0, !dbg !1742
  %135 = select i1 %132, i32 %133, i32 %47, !dbg !1742
  %136 = and i32 %135, 255, !dbg !1743
  %137 = icmp eq i32 %136, 0, !dbg !1743
  %138 = or i32 %134, 8, !dbg !1744
  %139 = lshr i32 %135, 8, !dbg !1745
  %140 = select i1 %137, i32 %138, i32 %134, !dbg !1746
  %141 = select i1 %137, i32 %139, i32 %135, !dbg !1746
  %142 = and i32 %141, 15, !dbg !1747
  %143 = icmp eq i32 %142, 0, !dbg !1747
  %144 = or i32 %140, 4, !dbg !1748
  %145 = lshr i32 %141, 4, !dbg !1749
  %146 = select i1 %143, i32 %144, i32 %140, !dbg !1750
  %147 = select i1 %143, i32 %145, i32 %141, !dbg !1750
  %148 = and i32 %147, 3, !dbg !1751
  %149 = icmp eq i32 %148, 0, !dbg !1751
  %150 = or i32 %146, 2, !dbg !1752
  %151 = lshr i32 %147, 2, !dbg !1753
  %152 = select i1 %149, i32 %150, i32 %146, !dbg !1754
  %153 = select i1 %149, i32 %151, i32 %147, !dbg !1754
  %154 = and i32 %153, 1, !dbg !1755
  %155 = icmp eq i32 %154, 0, !dbg !1755
  br i1 %155, label %156, label %160, !dbg !1756

; <label>:156:                                    ; preds = %130
  %157 = add nsw i32 %152, 1, !dbg !1757
  %158 = lshr i32 %153, 1, !dbg !1758
  %159 = icmp eq i32 %158, 0, !dbg !1759
  br i1 %159, label %163, label %160, !dbg !1760

; <label>:160:                                    ; preds = %156, %130
  %161 = phi i32 [ %152, %130 ], [ %157, %156 ], !dbg !1761
  %162 = phi i32 [ %153, %130 ], [ %158, %156 ], !dbg !1761
  br label %163, !dbg !1762

; <label>:163:                                    ; preds = %120, %126, %128, %156, %160
  %164 = phi i32 [ %47, %156 ], [ %162, %160 ], [ %129, %128 ], [ %127, %126 ], [ %47, %120 ], !dbg !1763
  %165 = phi i32 [ 32, %156 ], [ %161, %160 ], [ 2, %128 ], [ 1, %126 ], [ 0, %120 ], !dbg !1764
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1765
  store i32 %164, i32* %37, align 4, !dbg !1766, !tbaa !429
  %166 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %36, i64 0, i32 4, !dbg !1767
  store i32 1, i32* %166, align 4, !dbg !1768, !tbaa !378
  %167 = add nsw i32 %165, 32, !dbg !1769
  br label %168

; <label>:168:                                    ; preds = %163, %110
  %169 = phi i32 [ %115, %110 ], [ 1, %163 ], !dbg !1763
  %170 = phi i32 [ %111, %110 ], [ %167, %163 ], !dbg !1763
  %171 = add i32 %170, %44, !dbg !1770
  br i1 %45, label %172, label %175, !dbg !1773

; <label>:172:                                    ; preds = %168
  %173 = add i32 %171, -1075, !dbg !1774
  store i32 %173, i32* %2, align 4, !dbg !1776, !tbaa !429
  %174 = sub nsw i32 53, %170, !dbg !1777
  br label %211, !dbg !1778

; <label>:175:                                    ; preds = %168
  %176 = add i32 %171, -1074, !dbg !1779
  store i32 %176, i32* %2, align 4, !dbg !1780, !tbaa !429
  %177 = shl nuw nsw i32 %169, 5, !dbg !1781
  %178 = add nsw i32 %169, -1, !dbg !1782
  %179 = sext i32 %178 to i64, !dbg !1783
  %180 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %36, i64 0, i32 5, i64 %179, !dbg !1783
  %181 = load i32, i32* %180, align 4, !dbg !1783, !tbaa !429
  %182 = icmp ugt i32 %181, 65535, !dbg !1787
  %183 = shl i32 %181, 16, !dbg !1788
  %184 = select i1 %182, i32 %181, i32 %183, !dbg !1789
  %185 = select i1 %182, i32 0, i32 16, !dbg !1789
  %186 = icmp ugt i32 %184, 16777215, !dbg !1790
  %187 = or i32 %185, 8, !dbg !1791
  %188 = shl i32 %184, 8, !dbg !1792
  %189 = select i1 %186, i32 %184, i32 %188, !dbg !1793
  %190 = select i1 %186, i32 %185, i32 %187, !dbg !1793
  %191 = icmp ugt i32 %189, 268435455, !dbg !1794
  %192 = or i32 %190, 4, !dbg !1795
  %193 = shl i32 %189, 4, !dbg !1796
  %194 = select i1 %191, i32 %189, i32 %193, !dbg !1797
  %195 = select i1 %191, i32 %190, i32 %192, !dbg !1797
  %196 = icmp ugt i32 %194, 1073741823, !dbg !1798
  %197 = or i32 %195, 2, !dbg !1799
  %198 = shl i32 %194, 2, !dbg !1800
  %199 = select i1 %196, i32 %194, i32 %198, !dbg !1801
  %200 = select i1 %196, i32 %195, i32 %197, !dbg !1801
  %201 = icmp slt i32 %199, 0, !dbg !1802
  br i1 %201, label %206, label %202, !dbg !1803

; <label>:202:                                    ; preds = %175
  %203 = add nsw i32 %200, 1, !dbg !1804
  %204 = and i32 %199, 1073741824, !dbg !1805
  %205 = icmp eq i32 %204, 0, !dbg !1805
  br i1 %205, label %208, label %206, !dbg !1806

; <label>:206:                                    ; preds = %202, %175
  %207 = phi i32 [ %200, %175 ], [ %203, %202 ], !dbg !1807
  br label %208, !dbg !1808

; <label>:208:                                    ; preds = %202, %206
  %209 = phi i32 [ %207, %206 ], [ 32, %202 ], !dbg !1809
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1810
  %210 = sub nsw i32 %177, %209, !dbg !1811
  br label %211

; <label>:211:                                    ; preds = %208, %172
  %212 = phi i32 [ %210, %208 ], [ %174, %172 ]
  store i32 %212, i32* %3, align 4, !dbg !1812, !tbaa !429
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1813
  ret %struct._Bigint* %36, !dbg !1813
}

; Function Attrs: noredzone nounwind
define dso_local double @__ratio(%struct._Bigint*, %struct._Bigint*) local_unnamed_addr #0 !dbg !1814 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = bitcast i32* %3 to i8*, !dbg !1826
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #5, !dbg !1826
  %6 = bitcast i32* %4 to i8*, !dbg !1826
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #5, !dbg !1826
  %7 = call double @__b2d(%struct._Bigint* %0, i32* nonnull %3) #6, !dbg !1828
  %8 = call double @__b2d(%struct._Bigint* %1, i32* nonnull %4) #6, !dbg !1831
  %9 = load i32, i32* %3, align 4, !dbg !1833, !tbaa !429
  %10 = load i32, i32* %4, align 4, !dbg !1834, !tbaa !429
  %11 = sub nsw i32 %9, %10, !dbg !1835
  %12 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %0, i64 0, i32 4, !dbg !1836
  %13 = load i32, i32* %12, align 4, !dbg !1836, !tbaa !378
  %14 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %1, i64 0, i32 4, !dbg !1837
  %15 = load i32, i32* %14, align 4, !dbg !1837, !tbaa !378
  %16 = sub nsw i32 %13, %15, !dbg !1838
  %17 = shl nsw i32 %16, 5, !dbg !1839
  %18 = add nsw i32 %17, %11, !dbg !1840
  %19 = icmp sgt i32 %18, 0, !dbg !1842
  %20 = shl i32 %18, 20, !dbg !1844
  br i1 %19, label %21, label %31, !dbg !1846

; <label>:21:                                     ; preds = %2
  %22 = bitcast double %7 to i64, !dbg !1847
  %23 = lshr i64 %22, 32, !dbg !1847
  %24 = trunc i64 %23 to i32, !dbg !1847
  %25 = add i32 %20, %24, !dbg !1847
  %26 = zext i32 %25 to i64, !dbg !1847
  %27 = shl nuw i64 %26, 32, !dbg !1847
  %28 = and i64 %22, 4294967295, !dbg !1847
  %29 = or i64 %27, %28, !dbg !1847
  %30 = bitcast i64 %29 to double, !dbg !1847
  br label %41, !dbg !1848

; <label>:31:                                     ; preds = %2
  %32 = bitcast double %8 to i64, !dbg !1849
  %33 = lshr i64 %32, 32, !dbg !1849
  %34 = trunc i64 %33 to i32, !dbg !1849
  %35 = sub i32 %34, %20, !dbg !1849
  %36 = zext i32 %35 to i64, !dbg !1849
  %37 = shl nuw i64 %36, 32, !dbg !1849
  %38 = and i64 %32, 4294967295, !dbg !1849
  %39 = or i64 %37, %38, !dbg !1849
  %40 = bitcast i64 %39 to double, !dbg !1849
  br label %41

; <label>:41:                                     ; preds = %31, %21
  %42 = phi double [ %30, %21 ], [ %7, %31 ], !dbg !1850
  %43 = phi double [ %8, %21 ], [ %40, %31 ], !dbg !1844
  %44 = fdiv double %42, %43, !dbg !1851
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #5, !dbg !1852
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #5, !dbg !1852
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1853
  ret double %44, !dbg !1853
}

; Function Attrs: noredzone nounwind
define dso_local double @_mprec_log10(i32) local_unnamed_addr #0 !dbg !1854 {
  %2 = icmp slt i32 %0, 24, !dbg !1862
  br i1 %2, label %3, label %7, !dbg !1864

; <label>:3:                                      ; preds = %1
  %4 = sext i32 %0 to i64, !dbg !1865
  %5 = getelementptr inbounds [25 x double], [25 x double]* @__mprec_tens, i64 0, i64 %4, !dbg !1865
  %6 = load double, double* %5, align 8, !dbg !1865, !tbaa !1866
  br label %13, !dbg !1868

; <label>:7:                                      ; preds = %1, %7
  %8 = phi double [ %10, %7 ], [ 1.000000e+00, %1 ]
  %9 = phi i32 [ %11, %7 ], [ %0, %1 ]
  %10 = fmul double %8, 1.000000e+01, !dbg !1869
  %11 = add nsw i32 %9, -1, !dbg !1871
  %12 = icmp sgt i32 %9, 1, !dbg !1872
  br i1 %12, label %7, label %13, !dbg !1873, !llvm.loop !1874

; <label>:13:                                     ; preds = %7, %3
  %14 = phi double [ %6, %3 ], [ %10, %7 ], !dbg !1876
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1877
  ret double %14, !dbg !1877
}

; Function Attrs: noredzone nounwind
define dso_local void @__copybits(i32*, i32, %struct._Bigint* readonly) local_unnamed_addr #0 !dbg !1878 {
  %4 = bitcast i32* %0 to i8*
  %5 = bitcast %struct._Bigint* %2 to i8*
  %6 = ptrtoint %struct._Bigint* %2 to i64
  %7 = add nsw i32 %1, -1, !dbg !1889
  %8 = ashr i32 %7, 5, !dbg !1890
  %9 = sext i32 %8 to i64, !dbg !1891
  %10 = getelementptr inbounds i32, i32* %0, i64 %9, !dbg !1891
  %11 = getelementptr inbounds i32, i32* %10, i64 1, !dbg !1892
  %12 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %2, i64 0, i32 4, !dbg !1894
  %13 = load i32, i32* %12, align 4, !dbg !1894, !tbaa !378
  %14 = sext i32 %13 to i64, !dbg !1895
  %15 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %2, i64 0, i32 5, i64 %14, !dbg !1895
  %16 = icmp sgt i32 %13, 0, !dbg !1897
  br i1 %16, label %17, label %187, !dbg !1898

; <label>:17:                                     ; preds = %3
  %18 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %2, i64 0, i32 5, i64 0, !dbg !1899
  %19 = shl nsw i64 %14, 2, !dbg !1901
  %20 = add nsw i64 %19, 24, !dbg !1901
  %21 = getelementptr i8, i8* %5, i64 %20, !dbg !1901
  %22 = ptrtoint i8* %21 to i64
  %23 = getelementptr %struct._Bigint, %struct._Bigint* %2, i64 0, i32 5, i64 1, !dbg !1901
  %24 = ptrtoint i32* %23 to i64
  %25 = icmp ugt i64 %22, %24, !dbg !1901
  %26 = select i1 %25, i64 %22, i64 %24, !dbg !1901
  %27 = inttoptr i64 %26 to i8*
  %28 = sub i64 -25, %6, !dbg !1901
  %29 = getelementptr i8, i8* %27, i64 %28, !dbg !1901
  %30 = ptrtoint i8* %29 to i64
  %31 = lshr i64 %30, 2, !dbg !1901
  %32 = add nuw nsw i64 %31, 1, !dbg !1901
  %33 = shl nsw i64 %14, 2, !dbg !1901
  %34 = add nsw i64 %33, 24, !dbg !1901
  %35 = getelementptr i8, i8* %5, i64 %34, !dbg !1901
  %36 = ptrtoint i8* %35 to i64
  %37 = getelementptr %struct._Bigint, %struct._Bigint* %2, i64 0, i32 5, i64 1, !dbg !1901
  %38 = ptrtoint i32* %37 to i64
  %39 = icmp ugt i64 %36, %38, !dbg !1901
  %40 = select i1 %39, i64 %36, i64 %38, !dbg !1901
  %41 = inttoptr i64 %40 to i8*
  %42 = sub i64 -25, %6, !dbg !1901
  %43 = getelementptr i8, i8* %41, i64 %42, !dbg !1901
  %44 = ptrtoint i8* %43 to i64
  %45 = lshr i64 %44, 2, !dbg !1901
  %46 = add nuw nsw i64 %45, 1, !dbg !1901
  %47 = icmp ult i64 %46, 8, !dbg !1901
  br i1 %47, label %48, label %81, !dbg !1901

; <label>:48:                                     ; preds = %183, %81, %17
  %49 = phi i32* [ %0, %81 ], [ %0, %17 ], [ %106, %183 ]
  %50 = phi i32* [ %18, %81 ], [ %18, %17 ], [ %107, %183 ]
  %51 = ptrtoint i32* %50 to i64
  %52 = shl nsw i64 %14, 2, !dbg !1901
  %53 = add nsw i64 %52, 24, !dbg !1901
  %54 = getelementptr i8, i8* %5, i64 %53, !dbg !1901
  %55 = ptrtoint i8* %54 to i64
  %56 = getelementptr i32, i32* %50, i64 1, !dbg !1901
  %57 = ptrtoint i32* %56 to i64
  %58 = icmp ugt i64 %55, %57, !dbg !1901
  %59 = select i1 %58, i64 %55, i64 %57, !dbg !1901
  %60 = inttoptr i64 %59 to i8*
  %61 = xor i64 %51, -1, !dbg !1901
  %62 = getelementptr i8, i8* %60, i64 %61, !dbg !1901
  %63 = ptrtoint i8* %62 to i64
  %64 = lshr i64 %63, 2, !dbg !1901
  %65 = add nuw nsw i64 %64, 1, !dbg !1901
  %66 = and i64 %65, 7, !dbg !1901
  %67 = icmp eq i64 %66, 0, !dbg !1901
  br i1 %67, label %77, label %68, !dbg !1901

; <label>:68:                                     ; preds = %48, %68
  %69 = phi i32* [ %74, %68 ], [ %49, %48 ]
  %70 = phi i32* [ %72, %68 ], [ %50, %48 ]
  %71 = phi i64 [ %75, %68 ], [ %66, %48 ]
  %72 = getelementptr inbounds i32, i32* %70, i64 1, !dbg !1901
  %73 = load i32, i32* %70, align 4, !dbg !1902, !tbaa !429
  %74 = getelementptr inbounds i32, i32* %69, i64 1, !dbg !1903
  store i32 %73, i32* %69, align 4, !dbg !1904, !tbaa !429
  %75 = add i64 %71, -1, !dbg !1898
  %76 = icmp eq i64 %75, 0, !dbg !1898
  br i1 %76, label %77, label %68, !dbg !1898, !llvm.loop !1905

; <label>:77:                                     ; preds = %68, %48
  %78 = phi i32* [ %49, %48 ], [ %74, %68 ]
  %79 = phi i32* [ %50, %48 ], [ %72, %68 ]
  %80 = icmp ult i8* %62, inttoptr (i64 28 to i8*), !dbg !1901
  br i1 %80, label %185, label %273, !dbg !1901

; <label>:81:                                     ; preds = %17
  %82 = shl nsw i64 %14, 2, !dbg !1901
  %83 = add nsw i64 %82, 24, !dbg !1901
  %84 = getelementptr i8, i8* %5, i64 %83, !dbg !1901
  %85 = ptrtoint i8* %84 to i64
  %86 = getelementptr %struct._Bigint, %struct._Bigint* %2, i64 0, i32 5, i64 1, !dbg !1901
  %87 = ptrtoint i32* %86 to i64
  %88 = icmp ugt i64 %85, %87, !dbg !1901
  %89 = select i1 %88, i64 %85, i64 %87, !dbg !1901
  %90 = inttoptr i64 %89 to i8*
  %91 = sub i64 -25, %6, !dbg !1901
  %92 = getelementptr i8, i8* %90, i64 %91, !dbg !1901
  %93 = ptrtoint i8* %92 to i64
  %94 = lshr i64 %93, 2, !dbg !1901
  %95 = add nuw nsw i64 %94, 1, !dbg !1901
  %96 = getelementptr i32, i32* %0, i64 %95, !dbg !1901
  %97 = getelementptr %struct._Bigint, %struct._Bigint* %2, i64 0, i32 5, i64 0, !dbg !1901
  %98 = add i64 %93, 28, !dbg !1901
  %99 = and i64 %98, -4, !dbg !1901
  %100 = getelementptr i8, i8* %5, i64 %99, !dbg !1901
  %101 = icmp ugt i8* %100, %4, !dbg !1901
  %102 = icmp ult i32* %97, %96, !dbg !1901
  %103 = and i1 %101, %102, !dbg !1901
  br i1 %103, label %48, label %104, !dbg !1901

; <label>:104:                                    ; preds = %81
  %105 = and i64 %46, 9223372036854775800, !dbg !1901
  %106 = getelementptr i32, i32* %0, i64 %105, !dbg !1901
  %107 = getelementptr %struct._Bigint, %struct._Bigint* %2, i64 0, i32 5, i64 %105, !dbg !1901
  %108 = add nsw i64 %105, -8, !dbg !1901
  %109 = lshr exact i64 %108, 3, !dbg !1901
  %110 = add nuw nsw i64 %109, 1, !dbg !1901
  %111 = and i64 %110, 3, !dbg !1901
  %112 = icmp ult i64 %108, 24, !dbg !1901
  br i1 %112, label %164, label %113, !dbg !1901

; <label>:113:                                    ; preds = %104
  %114 = sub nsw i64 %110, %111, !dbg !1901
  br label %115, !dbg !1901

; <label>:115:                                    ; preds = %115, %113
  %116 = phi i64 [ 0, %113 ], [ %161, %115 ]
  %117 = phi i64 [ %114, %113 ], [ %162, %115 ]
  %118 = getelementptr i32, i32* %0, i64 %116
  %119 = getelementptr %struct._Bigint, %struct._Bigint* %2, i64 0, i32 5, i64 %116
  %120 = bitcast i32* %119 to <4 x i32>*, !dbg !1902
  %121 = load <4 x i32>, <4 x i32>* %120, align 4, !dbg !1902, !tbaa !429, !alias.scope !1906
  %122 = getelementptr i32, i32* %119, i64 4, !dbg !1902
  %123 = bitcast i32* %122 to <4 x i32>*, !dbg !1902
  %124 = load <4 x i32>, <4 x i32>* %123, align 4, !dbg !1902, !tbaa !429, !alias.scope !1906
  %125 = bitcast i32* %118 to <4 x i32>*, !dbg !1904
  store <4 x i32> %121, <4 x i32>* %125, align 4, !dbg !1904, !tbaa !429, !alias.scope !1909, !noalias !1906
  %126 = getelementptr i32, i32* %118, i64 4, !dbg !1904
  %127 = bitcast i32* %126 to <4 x i32>*, !dbg !1904
  store <4 x i32> %124, <4 x i32>* %127, align 4, !dbg !1904, !tbaa !429, !alias.scope !1909, !noalias !1906
  %128 = or i64 %116, 8
  %129 = getelementptr i32, i32* %0, i64 %128
  %130 = getelementptr %struct._Bigint, %struct._Bigint* %2, i64 0, i32 5, i64 %128
  %131 = bitcast i32* %130 to <4 x i32>*, !dbg !1902
  %132 = load <4 x i32>, <4 x i32>* %131, align 4, !dbg !1902, !tbaa !429, !alias.scope !1906
  %133 = getelementptr i32, i32* %130, i64 4, !dbg !1902
  %134 = bitcast i32* %133 to <4 x i32>*, !dbg !1902
  %135 = load <4 x i32>, <4 x i32>* %134, align 4, !dbg !1902, !tbaa !429, !alias.scope !1906
  %136 = bitcast i32* %129 to <4 x i32>*, !dbg !1904
  store <4 x i32> %132, <4 x i32>* %136, align 4, !dbg !1904, !tbaa !429, !alias.scope !1909, !noalias !1906
  %137 = getelementptr i32, i32* %129, i64 4, !dbg !1904
  %138 = bitcast i32* %137 to <4 x i32>*, !dbg !1904
  store <4 x i32> %135, <4 x i32>* %138, align 4, !dbg !1904, !tbaa !429, !alias.scope !1909, !noalias !1906
  %139 = or i64 %116, 16
  %140 = getelementptr i32, i32* %0, i64 %139
  %141 = getelementptr %struct._Bigint, %struct._Bigint* %2, i64 0, i32 5, i64 %139
  %142 = bitcast i32* %141 to <4 x i32>*, !dbg !1902
  %143 = load <4 x i32>, <4 x i32>* %142, align 4, !dbg !1902, !tbaa !429, !alias.scope !1906
  %144 = getelementptr i32, i32* %141, i64 4, !dbg !1902
  %145 = bitcast i32* %144 to <4 x i32>*, !dbg !1902
  %146 = load <4 x i32>, <4 x i32>* %145, align 4, !dbg !1902, !tbaa !429, !alias.scope !1906
  %147 = bitcast i32* %140 to <4 x i32>*, !dbg !1904
  store <4 x i32> %143, <4 x i32>* %147, align 4, !dbg !1904, !tbaa !429, !alias.scope !1909, !noalias !1906
  %148 = getelementptr i32, i32* %140, i64 4, !dbg !1904
  %149 = bitcast i32* %148 to <4 x i32>*, !dbg !1904
  store <4 x i32> %146, <4 x i32>* %149, align 4, !dbg !1904, !tbaa !429, !alias.scope !1909, !noalias !1906
  %150 = or i64 %116, 24
  %151 = getelementptr i32, i32* %0, i64 %150
  %152 = getelementptr %struct._Bigint, %struct._Bigint* %2, i64 0, i32 5, i64 %150
  %153 = bitcast i32* %152 to <4 x i32>*, !dbg !1902
  %154 = load <4 x i32>, <4 x i32>* %153, align 4, !dbg !1902, !tbaa !429, !alias.scope !1906
  %155 = getelementptr i32, i32* %152, i64 4, !dbg !1902
  %156 = bitcast i32* %155 to <4 x i32>*, !dbg !1902
  %157 = load <4 x i32>, <4 x i32>* %156, align 4, !dbg !1902, !tbaa !429, !alias.scope !1906
  %158 = bitcast i32* %151 to <4 x i32>*, !dbg !1904
  store <4 x i32> %154, <4 x i32>* %158, align 4, !dbg !1904, !tbaa !429, !alias.scope !1909, !noalias !1906
  %159 = getelementptr i32, i32* %151, i64 4, !dbg !1904
  %160 = bitcast i32* %159 to <4 x i32>*, !dbg !1904
  store <4 x i32> %157, <4 x i32>* %160, align 4, !dbg !1904, !tbaa !429, !alias.scope !1909, !noalias !1906
  %161 = add i64 %116, 32
  %162 = add i64 %117, -4
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %164, label %115, !llvm.loop !1911

; <label>:164:                                    ; preds = %115, %104
  %165 = phi i64 [ 0, %104 ], [ %161, %115 ]
  %166 = icmp eq i64 %111, 0
  br i1 %166, label %183, label %167

; <label>:167:                                    ; preds = %164, %167
  %168 = phi i64 [ %180, %167 ], [ %165, %164 ]
  %169 = phi i64 [ %181, %167 ], [ %111, %164 ]
  %170 = getelementptr i32, i32* %0, i64 %168
  %171 = getelementptr %struct._Bigint, %struct._Bigint* %2, i64 0, i32 5, i64 %168
  %172 = bitcast i32* %171 to <4 x i32>*, !dbg !1902
  %173 = load <4 x i32>, <4 x i32>* %172, align 4, !dbg !1902, !tbaa !429, !alias.scope !1906
  %174 = getelementptr i32, i32* %171, i64 4, !dbg !1902
  %175 = bitcast i32* %174 to <4 x i32>*, !dbg !1902
  %176 = load <4 x i32>, <4 x i32>* %175, align 4, !dbg !1902, !tbaa !429, !alias.scope !1906
  %177 = bitcast i32* %170 to <4 x i32>*, !dbg !1904
  store <4 x i32> %173, <4 x i32>* %177, align 4, !dbg !1904, !tbaa !429, !alias.scope !1909, !noalias !1906
  %178 = getelementptr i32, i32* %170, i64 4, !dbg !1904
  %179 = bitcast i32* %178 to <4 x i32>*, !dbg !1904
  store <4 x i32> %176, <4 x i32>* %179, align 4, !dbg !1904, !tbaa !429, !alias.scope !1909, !noalias !1906
  %180 = add i64 %168, 8
  %181 = add i64 %169, -1
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %183, label %167, !llvm.loop !1912

; <label>:183:                                    ; preds = %167, %164
  %184 = icmp eq i64 %46, %105
  br i1 %184, label %185, label %48, !dbg !1901

; <label>:185:                                    ; preds = %77, %273, %183
  %186 = getelementptr i32, i32* %0, i64 %32, !dbg !1901
  br label %187, !dbg !1913

; <label>:187:                                    ; preds = %185, %3
  %188 = phi i32* [ %0, %3 ], [ %186, %185 ]
  %189 = icmp ult i32* %188, %11, !dbg !1913
  br i1 %189, label %190, label %305, !dbg !1914

; <label>:190:                                    ; preds = %187
  %191 = ptrtoint i32* %188 to i64
  %192 = icmp ugt i32* %188, %10, !dbg !1915
  %193 = select i1 %192, i32* %188, i32* %10, !dbg !1915
  %194 = bitcast i32* %193 to i8*
  %195 = sub i64 3, %191, !dbg !1915
  %196 = getelementptr i8, i8* %194, i64 %195, !dbg !1915
  %197 = ptrtoint i8* %196 to i64
  %198 = lshr i64 %197, 2, !dbg !1915
  %199 = add nuw nsw i64 %198, 1, !dbg !1915
  %200 = icmp ult i64 %199, 8, !dbg !1915
  br i1 %200, label %201, label %203, !dbg !1915

; <label>:201:                                    ; preds = %271, %190
  %202 = phi i32* [ %188, %190 ], [ %205, %271 ]
  br label %301, !dbg !1915

; <label>:203:                                    ; preds = %190
  %204 = and i64 %199, 9223372036854775800, !dbg !1915
  %205 = getelementptr i32, i32* %188, i64 %204, !dbg !1915
  %206 = add nsw i64 %204, -8, !dbg !1915
  %207 = lshr exact i64 %206, 3, !dbg !1915
  %208 = add nuw nsw i64 %207, 1, !dbg !1915
  %209 = and i64 %208, 7, !dbg !1915
  %210 = icmp ult i64 %206, 56, !dbg !1915
  br i1 %210, label %258, label %211, !dbg !1915

; <label>:211:                                    ; preds = %203
  %212 = sub nsw i64 %208, %209, !dbg !1915
  br label %213, !dbg !1915

; <label>:213:                                    ; preds = %213, %211
  %214 = phi i64 [ 0, %211 ], [ %255, %213 ]
  %215 = phi i64 [ %212, %211 ], [ %256, %213 ]
  %216 = getelementptr i32, i32* %188, i64 %214
  %217 = bitcast i32* %216 to <4 x i32>*, !dbg !1916
  store <4 x i32> zeroinitializer, <4 x i32>* %217, align 4, !dbg !1916, !tbaa !429
  %218 = getelementptr i32, i32* %216, i64 4, !dbg !1916
  %219 = bitcast i32* %218 to <4 x i32>*, !dbg !1916
  store <4 x i32> zeroinitializer, <4 x i32>* %219, align 4, !dbg !1916, !tbaa !429
  %220 = or i64 %214, 8
  %221 = getelementptr i32, i32* %188, i64 %220
  %222 = bitcast i32* %221 to <4 x i32>*, !dbg !1916
  store <4 x i32> zeroinitializer, <4 x i32>* %222, align 4, !dbg !1916, !tbaa !429
  %223 = getelementptr i32, i32* %221, i64 4, !dbg !1916
  %224 = bitcast i32* %223 to <4 x i32>*, !dbg !1916
  store <4 x i32> zeroinitializer, <4 x i32>* %224, align 4, !dbg !1916, !tbaa !429
  %225 = or i64 %214, 16
  %226 = getelementptr i32, i32* %188, i64 %225
  %227 = bitcast i32* %226 to <4 x i32>*, !dbg !1916
  store <4 x i32> zeroinitializer, <4 x i32>* %227, align 4, !dbg !1916, !tbaa !429
  %228 = getelementptr i32, i32* %226, i64 4, !dbg !1916
  %229 = bitcast i32* %228 to <4 x i32>*, !dbg !1916
  store <4 x i32> zeroinitializer, <4 x i32>* %229, align 4, !dbg !1916, !tbaa !429
  %230 = or i64 %214, 24
  %231 = getelementptr i32, i32* %188, i64 %230
  %232 = bitcast i32* %231 to <4 x i32>*, !dbg !1916
  store <4 x i32> zeroinitializer, <4 x i32>* %232, align 4, !dbg !1916, !tbaa !429
  %233 = getelementptr i32, i32* %231, i64 4, !dbg !1916
  %234 = bitcast i32* %233 to <4 x i32>*, !dbg !1916
  store <4 x i32> zeroinitializer, <4 x i32>* %234, align 4, !dbg !1916, !tbaa !429
  %235 = or i64 %214, 32
  %236 = getelementptr i32, i32* %188, i64 %235
  %237 = bitcast i32* %236 to <4 x i32>*, !dbg !1916
  store <4 x i32> zeroinitializer, <4 x i32>* %237, align 4, !dbg !1916, !tbaa !429
  %238 = getelementptr i32, i32* %236, i64 4, !dbg !1916
  %239 = bitcast i32* %238 to <4 x i32>*, !dbg !1916
  store <4 x i32> zeroinitializer, <4 x i32>* %239, align 4, !dbg !1916, !tbaa !429
  %240 = or i64 %214, 40
  %241 = getelementptr i32, i32* %188, i64 %240
  %242 = bitcast i32* %241 to <4 x i32>*, !dbg !1916
  store <4 x i32> zeroinitializer, <4 x i32>* %242, align 4, !dbg !1916, !tbaa !429
  %243 = getelementptr i32, i32* %241, i64 4, !dbg !1916
  %244 = bitcast i32* %243 to <4 x i32>*, !dbg !1916
  store <4 x i32> zeroinitializer, <4 x i32>* %244, align 4, !dbg !1916, !tbaa !429
  %245 = or i64 %214, 48
  %246 = getelementptr i32, i32* %188, i64 %245
  %247 = bitcast i32* %246 to <4 x i32>*, !dbg !1916
  store <4 x i32> zeroinitializer, <4 x i32>* %247, align 4, !dbg !1916, !tbaa !429
  %248 = getelementptr i32, i32* %246, i64 4, !dbg !1916
  %249 = bitcast i32* %248 to <4 x i32>*, !dbg !1916
  store <4 x i32> zeroinitializer, <4 x i32>* %249, align 4, !dbg !1916, !tbaa !429
  %250 = or i64 %214, 56
  %251 = getelementptr i32, i32* %188, i64 %250
  %252 = bitcast i32* %251 to <4 x i32>*, !dbg !1916
  store <4 x i32> zeroinitializer, <4 x i32>* %252, align 4, !dbg !1916, !tbaa !429
  %253 = getelementptr i32, i32* %251, i64 4, !dbg !1916
  %254 = bitcast i32* %253 to <4 x i32>*, !dbg !1916
  store <4 x i32> zeroinitializer, <4 x i32>* %254, align 4, !dbg !1916, !tbaa !429
  %255 = add i64 %214, 64
  %256 = add i64 %215, -8
  %257 = icmp eq i64 %256, 0
  br i1 %257, label %258, label %213, !llvm.loop !1917

; <label>:258:                                    ; preds = %213, %203
  %259 = phi i64 [ 0, %203 ], [ %255, %213 ]
  %260 = icmp eq i64 %209, 0
  br i1 %260, label %271, label %261

; <label>:261:                                    ; preds = %258, %261
  %262 = phi i64 [ %268, %261 ], [ %259, %258 ]
  %263 = phi i64 [ %269, %261 ], [ %209, %258 ]
  %264 = getelementptr i32, i32* %188, i64 %262
  %265 = bitcast i32* %264 to <4 x i32>*, !dbg !1916
  store <4 x i32> zeroinitializer, <4 x i32>* %265, align 4, !dbg !1916, !tbaa !429
  %266 = getelementptr i32, i32* %264, i64 4, !dbg !1916
  %267 = bitcast i32* %266 to <4 x i32>*, !dbg !1916
  store <4 x i32> zeroinitializer, <4 x i32>* %267, align 4, !dbg !1916, !tbaa !429
  %268 = add i64 %262, 8
  %269 = add i64 %263, -1
  %270 = icmp eq i64 %269, 0
  br i1 %270, label %271, label %261, !llvm.loop !1919

; <label>:271:                                    ; preds = %261, %258
  %272 = icmp eq i64 %199, %204
  br i1 %272, label %305, label %201, !dbg !1915

; <label>:273:                                    ; preds = %77, %273
  %274 = phi i32* [ %299, %273 ], [ %78, %77 ]
  %275 = phi i32* [ %297, %273 ], [ %79, %77 ]
  %276 = getelementptr inbounds i32, i32* %275, i64 1, !dbg !1901
  %277 = load i32, i32* %275, align 4, !dbg !1902, !tbaa !429
  %278 = getelementptr inbounds i32, i32* %274, i64 1, !dbg !1903
  store i32 %277, i32* %274, align 4, !dbg !1904, !tbaa !429
  %279 = getelementptr inbounds i32, i32* %275, i64 2, !dbg !1901
  %280 = load i32, i32* %276, align 4, !dbg !1902, !tbaa !429
  %281 = getelementptr inbounds i32, i32* %274, i64 2, !dbg !1903
  store i32 %280, i32* %278, align 4, !dbg !1904, !tbaa !429
  %282 = getelementptr inbounds i32, i32* %275, i64 3, !dbg !1901
  %283 = load i32, i32* %279, align 4, !dbg !1902, !tbaa !429
  %284 = getelementptr inbounds i32, i32* %274, i64 3, !dbg !1903
  store i32 %283, i32* %281, align 4, !dbg !1904, !tbaa !429
  %285 = getelementptr inbounds i32, i32* %275, i64 4, !dbg !1901
  %286 = load i32, i32* %282, align 4, !dbg !1902, !tbaa !429
  %287 = getelementptr inbounds i32, i32* %274, i64 4, !dbg !1903
  store i32 %286, i32* %284, align 4, !dbg !1904, !tbaa !429
  %288 = getelementptr inbounds i32, i32* %275, i64 5, !dbg !1901
  %289 = load i32, i32* %285, align 4, !dbg !1902, !tbaa !429
  %290 = getelementptr inbounds i32, i32* %274, i64 5, !dbg !1903
  store i32 %289, i32* %287, align 4, !dbg !1904, !tbaa !429
  %291 = getelementptr inbounds i32, i32* %275, i64 6, !dbg !1901
  %292 = load i32, i32* %288, align 4, !dbg !1902, !tbaa !429
  %293 = getelementptr inbounds i32, i32* %274, i64 6, !dbg !1903
  store i32 %292, i32* %290, align 4, !dbg !1904, !tbaa !429
  %294 = getelementptr inbounds i32, i32* %275, i64 7, !dbg !1901
  %295 = load i32, i32* %291, align 4, !dbg !1902, !tbaa !429
  %296 = getelementptr inbounds i32, i32* %274, i64 7, !dbg !1903
  store i32 %295, i32* %293, align 4, !dbg !1904, !tbaa !429
  %297 = getelementptr inbounds i32, i32* %275, i64 8, !dbg !1901
  %298 = load i32, i32* %294, align 4, !dbg !1902, !tbaa !429
  %299 = getelementptr inbounds i32, i32* %274, i64 8, !dbg !1903
  store i32 %298, i32* %296, align 4, !dbg !1904, !tbaa !429
  %300 = icmp ult i32* %297, %15, !dbg !1897
  br i1 %300, label %273, label %185, !dbg !1898, !llvm.loop !1920

; <label>:301:                                    ; preds = %201, %301
  %302 = phi i32* [ %303, %301 ], [ %202, %201 ]
  %303 = getelementptr inbounds i32, i32* %302, i64 1, !dbg !1915
  store i32 0, i32* %302, align 4, !dbg !1916, !tbaa !429
  %304 = icmp ult i32* %302, %10, !dbg !1913
  br i1 %304, label %301, label %305, !dbg !1914, !llvm.loop !1921

; <label>:305:                                    ; preds = %301, %271, %187
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1922
  ret void, !dbg !1922
}

; Function Attrs: noredzone nounwind
define dso_local i32 @__any_on(%struct._Bigint* readonly, i32) local_unnamed_addr #0 !dbg !1923 {
  %3 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %0, i64 0, i32 5, i64 0, !dbg !1936
  %4 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %0, i64 0, i32 4, !dbg !1938
  %5 = load i32, i32* %4, align 4, !dbg !1938, !tbaa !378
  %6 = ashr i32 %1, 5, !dbg !1940
  %7 = icmp sgt i32 %6, %5, !dbg !1942
  br i1 %7, label %20, label %8, !dbg !1944

; <label>:8:                                      ; preds = %2
  %9 = icmp slt i32 %6, %5, !dbg !1945
  br i1 %9, label %10, label %20, !dbg !1947

; <label>:10:                                     ; preds = %8
  %11 = and i32 %1, 31, !dbg !1948
  %12 = icmp eq i32 %11, 0, !dbg !1948
  br i1 %12, label %20, label %13, !dbg !1949

; <label>:13:                                     ; preds = %10
  %14 = sext i32 %6 to i64, !dbg !1950
  %15 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %0, i64 0, i32 5, i64 %14, !dbg !1950
  %16 = load i32, i32* %15, align 4, !dbg !1950, !tbaa !429
  %17 = shl i32 -1, %11, !dbg !1954
  %18 = and i32 %16, %17, !dbg !1954
  %19 = icmp eq i32 %18, %16, !dbg !1955
  br i1 %19, label %20, label %31, !dbg !1957

; <label>:20:                                     ; preds = %2, %13, %10, %8
  %21 = phi i32 [ %6, %13 ], [ %6, %10 ], [ %6, %8 ], [ %5, %2 ], !dbg !1958
  %22 = sext i32 %21 to i64, !dbg !1960
  %23 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %0, i64 0, i32 5, i64 %22, !dbg !1960
  br label %24, !dbg !1961

; <label>:24:                                     ; preds = %27, %20
  %25 = phi i32* [ %23, %20 ], [ %28, %27 ], !dbg !1962
  %26 = icmp ugt i32* %25, %3, !dbg !1964
  br i1 %26, label %27, label %31, !dbg !1961

; <label>:27:                                     ; preds = %24
  %28 = getelementptr inbounds i32, i32* %25, i64 -1, !dbg !1965
  %29 = load i32, i32* %28, align 4, !dbg !1966, !tbaa !429
  %30 = icmp eq i32 %29, 0, !dbg !1966
  br i1 %30, label %24, label %31, !dbg !1967, !llvm.loop !1968

; <label>:31:                                     ; preds = %24, %27, %13
  %32 = phi i32 [ 1, %13 ], [ 0, %24 ], [ 1, %27 ], !dbg !1970
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1971
  ret i32 %32, !dbg !1971
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
!495 = !DILocation(line: 133, column: 1, scope: !321, inlinedAt: !463)
!496 = !DILocation(line: 158, column: 12, scope: !402)
!497 = !DILocation(line: 183, column: 4, scope: !460)
!498 = !DILocation(line: 136, column: 1, scope: !385, inlinedAt: !499)
!499 = distinct !DILocation(line: 184, column: 4, scope: !460)
!500 = !DILocation(line: 141, column: 18, scope: !396, inlinedAt: !499)
!501 = !DILocation(line: 141, column: 45, scope: !396, inlinedAt: !499)
!502 = !DILocation(line: 141, column: 16, scope: !396, inlinedAt: !499)
!503 = !DILocation(line: 142, column: 38, scope: !396, inlinedAt: !499)
!504 = !DILocation(line: 144, column: 1, scope: !385, inlinedAt: !499)
!505 = !DILocation(line: 188, column: 10, scope: !456)
!506 = !DILocation(line: 186, column: 2, scope: !460)
!507 = !DILocation(line: 187, column: 16, scope: !456)
!508 = !DILocation(line: 187, column: 7, scope: !456)
!509 = !DILocation(line: 187, column: 20, scope: !456)
!510 = !DILocation(line: 188, column: 15, scope: !456)
!511 = !DILocation(line: 189, column: 5, scope: !456)
!512 = !DILocation(line: 190, column: 3, scope: !402)
!513 = distinct !DISubprogram(name: "__s2b", scope: !3, file: !3, line: 194, type: !514, isLocal: false, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !289, retainedNodes: !516)
!514 = !DISubroutineType(types: !515)
!515 = !{!6, !25, !63, !15, !15, !21}
!516 = !{!517, !518, !519, !520, !521, !522, !523, !524, !525, !526}
!517 = !DILocalVariable(name: "ptr", arg: 1, scope: !513, file: !3, line: 194, type: !25)
!518 = !DILocalVariable(name: "s", arg: 2, scope: !513, file: !3, line: 194, type: !63)
!519 = !DILocalVariable(name: "nd0", arg: 3, scope: !513, file: !3, line: 194, type: !15)
!520 = !DILocalVariable(name: "nd", arg: 4, scope: !513, file: !3, line: 194, type: !15)
!521 = !DILocalVariable(name: "y9", arg: 5, scope: !513, file: !3, line: 194, type: !21)
!522 = !DILocalVariable(name: "b", scope: !513, file: !3, line: 201, type: !6)
!523 = !DILocalVariable(name: "i", scope: !513, file: !3, line: 202, type: !15)
!524 = !DILocalVariable(name: "k", scope: !513, file: !3, line: 202, type: !15)
!525 = !DILocalVariable(name: "x", scope: !513, file: !3, line: 203, type: !15)
!526 = !DILocalVariable(name: "y", scope: !513, file: !3, line: 203, type: !15)
!527 = !DILocation(line: 194, column: 1, scope: !513)
!528 = !DILocation(line: 205, column: 11, scope: !513)
!529 = !DILocation(line: 205, column: 16, scope: !513)
!530 = !DILocation(line: 203, column: 10, scope: !513)
!531 = !DILocation(line: 202, column: 10, scope: !513)
!532 = !DILocation(line: 203, column: 13, scope: !513)
!533 = !DILocation(line: 206, column: 24, scope: !534)
!534 = distinct !DILexicalBlock(scope: !535, file: !3, line: 206, column: 3)
!535 = distinct !DILexicalBlock(scope: !513, file: !3, line: 206, column: 3)
!536 = !DILocation(line: 206, column: 3, scope: !535)
!537 = !DILocation(line: 206, column: 31, scope: !534)
!538 = !DILocation(line: 206, column: 39, scope: !534)
!539 = distinct !{!539, !536, !540}
!540 = !DILocation(line: 206, column: 42, scope: !535)
!541 = !DILocation(line: 0, scope: !534)
!542 = !DILocation(line: 97, column: 1, scope: !321, inlinedAt: !543)
!543 = distinct !DILocation(line: 208, column: 7, scope: !513)
!544 = !DILocation(line: 103, column: 7, scope: !331, inlinedAt: !543)
!545 = !DILocation(line: 103, column: 31, scope: !331, inlinedAt: !543)
!546 = !DILocation(line: 103, column: 7, scope: !321, inlinedAt: !543)
!547 = !DILocation(line: 106, column: 53, scope: !344, inlinedAt: !543)
!548 = !DILocation(line: 106, column: 31, scope: !344, inlinedAt: !543)
!549 = !DILocation(line: 109, column: 35, scope: !347, inlinedAt: !543)
!550 = !DILocation(line: 109, column: 11, scope: !344, inlinedAt: !543)
!551 = !DILocation(line: 115, column: 13, scope: !350, inlinedAt: !543)
!552 = !DILocation(line: 100, column: 12, scope: !321, inlinedAt: !543)
!553 = !DILocation(line: 115, column: 41, scope: !350, inlinedAt: !543)
!554 = !DILocation(line: 115, column: 7, scope: !321, inlinedAt: !543)
!555 = !DILocation(line: 117, column: 40, scope: !356, inlinedAt: !543)
!556 = !DILocation(line: 117, column: 34, scope: !356, inlinedAt: !543)
!557 = !DILocation(line: 118, column: 5, scope: !356, inlinedAt: !543)
!558 = !DILocation(line: 121, column: 13, scope: !362, inlinedAt: !543)
!559 = !DILocation(line: 99, column: 7, scope: !321, inlinedAt: !543)
!560 = !DILocation(line: 123, column: 24, scope: !362, inlinedAt: !543)
!561 = !DILocation(line: 127, column: 14, scope: !366, inlinedAt: !543)
!562 = !DILocation(line: 127, column: 11, scope: !362, inlinedAt: !543)
!563 = !DILocation(line: 123, column: 12, scope: !362, inlinedAt: !543)
!564 = !DILocation(line: 128, column: 11, scope: !362, inlinedAt: !543)
!565 = !DILocation(line: 128, column: 14, scope: !362, inlinedAt: !543)
!566 = !DILocation(line: 129, column: 11, scope: !362, inlinedAt: !543)
!567 = !DILocation(line: 129, column: 19, scope: !362, inlinedAt: !543)
!568 = !DILocation(line: 0, scope: !362, inlinedAt: !543)
!569 = !DILocation(line: 131, column: 19, scope: !321, inlinedAt: !543)
!570 = !DILocation(line: 131, column: 24, scope: !321, inlinedAt: !543)
!571 = !DILocation(line: 131, column: 7, scope: !321, inlinedAt: !543)
!572 = !DILocation(line: 131, column: 13, scope: !321, inlinedAt: !543)
!573 = !DILocation(line: 132, column: 3, scope: !321, inlinedAt: !543)
!574 = !DILocation(line: 0, scope: !366, inlinedAt: !543)
!575 = !DILocation(line: 133, column: 1, scope: !321, inlinedAt: !543)
!576 = !DILocation(line: 201, column: 12, scope: !513)
!577 = !DILocation(line: 209, column: 3, scope: !513)
!578 = !DILocation(line: 209, column: 12, scope: !513)
!579 = !DILocation(line: 210, column: 6, scope: !513)
!580 = !DILocation(line: 210, column: 11, scope: !513)
!581 = !DILocation(line: 202, column: 7, scope: !513)
!582 = !DILocation(line: 218, column: 9, scope: !583)
!583 = distinct !DILexicalBlock(scope: !513, file: !3, line: 218, column: 7)
!584 = !DILocation(line: 218, column: 7, scope: !513)
!585 = !DILocation(line: 220, column: 9, scope: !586)
!586 = distinct !DILexicalBlock(scope: !583, file: !3, line: 219, column: 5)
!587 = !DILocation(line: 221, column: 7, scope: !586)
!588 = !DILocation(line: 0, scope: !586)
!589 = !DILocation(line: 222, column: 29, scope: !586)
!590 = !DILocation(line: 222, column: 27, scope: !586)
!591 = !{!335, !335, i64 0}
!592 = !DILocation(line: 222, column: 32, scope: !586)
!593 = !DILocation(line: 222, column: 6, scope: !586)
!594 = !DILocation(line: 223, column: 14, scope: !586)
!595 = !DILocation(line: 223, column: 18, scope: !586)
!596 = !DILocation(line: 222, column: 2, scope: !586)
!597 = distinct !{!597, !587, !598}
!598 = !DILocation(line: 223, column: 23, scope: !586)
!599 = !DILocation(line: 224, column: 8, scope: !586)
!600 = !DILocation(line: 225, column: 5, scope: !586)
!601 = !DILocation(line: 227, column: 7, scope: !583)
!602 = !DILocation(line: 0, scope: !513)
!603 = !DILocation(line: 0, scope: !583)
!604 = !DILocation(line: 228, column: 12, scope: !605)
!605 = distinct !DILexicalBlock(scope: !606, file: !3, line: 228, column: 3)
!606 = distinct !DILexicalBlock(scope: !513, file: !3, line: 228, column: 3)
!607 = !DILocation(line: 228, column: 3, scope: !606)
!608 = !DILocation(line: 229, column: 32, scope: !605)
!609 = !DILocation(line: 229, column: 30, scope: !605)
!610 = !DILocation(line: 229, column: 35, scope: !605)
!611 = !DILocation(line: 229, column: 9, scope: !605)
!612 = !DILocation(line: 228, column: 19, scope: !605)
!613 = distinct !{!613, !607, !614}
!614 = !DILocation(line: 229, column: 40, scope: !606)
!615 = !DILocation(line: 0, scope: !605)
!616 = !DILocation(line: 230, column: 3, scope: !513)
!617 = distinct !DISubprogram(name: "__hi0bits", scope: !3, file: !3, line: 234, type: !618, isLocal: false, isDefinition: true, scopeLine: 236, flags: DIFlagPrototyped, isOptimized: true, unit: !289, retainedNodes: !620)
!618 = !DISubroutineType(types: !619)
!619 = !{!15, !21}
!620 = !{!621, !622}
!621 = !DILocalVariable(name: "x", arg: 1, scope: !617, file: !3, line: 234, type: !21)
!622 = !DILocalVariable(name: "k", scope: !617, file: !3, line: 237, type: !15)
!623 = !DILocation(line: 234, column: 1, scope: !617)
!624 = !DILocation(line: 237, column: 16, scope: !617)
!625 = !DILocation(line: 239, column: 11, scope: !626)
!626 = distinct !DILexicalBlock(scope: !617, file: !3, line: 239, column: 7)
!627 = !DILocation(line: 242, column: 9, scope: !628)
!628 = distinct !DILexicalBlock(scope: !626, file: !3, line: 240, column: 5)
!629 = !DILocation(line: 239, column: 7, scope: !617)
!630 = !DILocation(line: 244, column: 11, scope: !631)
!631 = distinct !DILexicalBlock(scope: !617, file: !3, line: 244, column: 7)
!632 = !DILocation(line: 246, column: 9, scope: !633)
!633 = distinct !DILexicalBlock(scope: !631, file: !3, line: 245, column: 5)
!634 = !DILocation(line: 247, column: 9, scope: !633)
!635 = !DILocation(line: 244, column: 7, scope: !617)
!636 = !DILocation(line: 249, column: 11, scope: !637)
!637 = distinct !DILexicalBlock(scope: !617, file: !3, line: 249, column: 7)
!638 = !DILocation(line: 251, column: 9, scope: !639)
!639 = distinct !DILexicalBlock(scope: !637, file: !3, line: 250, column: 5)
!640 = !DILocation(line: 252, column: 9, scope: !639)
!641 = !DILocation(line: 249, column: 7, scope: !617)
!642 = !DILocation(line: 254, column: 11, scope: !643)
!643 = distinct !DILexicalBlock(scope: !617, file: !3, line: 254, column: 7)
!644 = !DILocation(line: 256, column: 9, scope: !645)
!645 = distinct !DILexicalBlock(scope: !643, file: !3, line: 255, column: 5)
!646 = !DILocation(line: 257, column: 9, scope: !645)
!647 = !DILocation(line: 254, column: 7, scope: !617)
!648 = !DILocation(line: 259, column: 11, scope: !649)
!649 = distinct !DILexicalBlock(scope: !617, file: !3, line: 259, column: 7)
!650 = !DILocation(line: 259, column: 7, scope: !617)
!651 = !DILocation(line: 261, column: 8, scope: !652)
!652 = distinct !DILexicalBlock(scope: !649, file: !3, line: 260, column: 5)
!653 = !DILocation(line: 262, column: 15, scope: !654)
!654 = distinct !DILexicalBlock(scope: !652, file: !3, line: 262, column: 11)
!655 = !DILocation(line: 262, column: 11, scope: !652)
!656 = !DILocation(line: 0, scope: !652)
!657 = !DILocation(line: 265, column: 3, scope: !617)
!658 = !DILocation(line: 0, scope: !654)
!659 = !DILocation(line: 266, column: 1, scope: !617)
!660 = distinct !DISubprogram(name: "__lo0bits", scope: !3, file: !3, line: 269, type: !661, isLocal: false, isDefinition: true, scopeLine: 270, flags: DIFlagPrototyped, isOptimized: true, unit: !289, retainedNodes: !663)
!661 = !DISubroutineType(types: !662)
!662 = !{!15, !413}
!663 = !{!664, !665, !666}
!664 = !DILocalVariable(name: "y", arg: 1, scope: !660, file: !3, line: 269, type: !413)
!665 = !DILocalVariable(name: "k", scope: !660, file: !3, line: 271, type: !15)
!666 = !DILocalVariable(name: "x", scope: !660, file: !3, line: 272, type: !21)
!667 = !DILocation(line: 269, column: 1, scope: !660)
!668 = !DILocation(line: 272, column: 24, scope: !660)
!669 = !DILocation(line: 272, column: 20, scope: !660)
!670 = !DILocation(line: 274, column: 9, scope: !671)
!671 = distinct !DILexicalBlock(scope: !660, file: !3, line: 274, column: 7)
!672 = !DILocation(line: 274, column: 7, scope: !660)
!673 = !DILocation(line: 276, column: 13, scope: !674)
!674 = distinct !DILexicalBlock(scope: !675, file: !3, line: 276, column: 11)
!675 = distinct !DILexicalBlock(scope: !671, file: !3, line: 275, column: 5)
!676 = !DILocation(line: 276, column: 11, scope: !675)
!677 = !DILocation(line: 278, column: 13, scope: !678)
!678 = distinct !DILexicalBlock(scope: !675, file: !3, line: 278, column: 11)
!679 = !DILocation(line: 278, column: 11, scope: !675)
!680 = !DILocation(line: 280, column: 11, scope: !681)
!681 = distinct !DILexicalBlock(scope: !678, file: !3, line: 279, column: 2)
!682 = !DILocation(line: 280, column: 7, scope: !681)
!683 = !DILocation(line: 281, column: 4, scope: !681)
!684 = !DILocation(line: 283, column: 14, scope: !675)
!685 = !DILocation(line: 283, column: 10, scope: !675)
!686 = !DILocation(line: 284, column: 7, scope: !675)
!687 = !DILocation(line: 271, column: 16, scope: !660)
!688 = !DILocation(line: 287, column: 11, scope: !689)
!689 = distinct !DILexicalBlock(scope: !660, file: !3, line: 287, column: 7)
!690 = !DILocation(line: 290, column: 9, scope: !691)
!691 = distinct !DILexicalBlock(scope: !689, file: !3, line: 288, column: 5)
!692 = !DILocation(line: 287, column: 7, scope: !660)
!693 = !DILocation(line: 292, column: 11, scope: !694)
!694 = distinct !DILexicalBlock(scope: !660, file: !3, line: 292, column: 7)
!695 = !DILocation(line: 294, column: 9, scope: !696)
!696 = distinct !DILexicalBlock(scope: !694, file: !3, line: 293, column: 5)
!697 = !DILocation(line: 295, column: 9, scope: !696)
!698 = !DILocation(line: 292, column: 7, scope: !660)
!699 = !DILocation(line: 297, column: 11, scope: !700)
!700 = distinct !DILexicalBlock(scope: !660, file: !3, line: 297, column: 7)
!701 = !DILocation(line: 299, column: 9, scope: !702)
!702 = distinct !DILexicalBlock(scope: !700, file: !3, line: 298, column: 5)
!703 = !DILocation(line: 300, column: 9, scope: !702)
!704 = !DILocation(line: 297, column: 7, scope: !660)
!705 = !DILocation(line: 302, column: 11, scope: !706)
!706 = distinct !DILexicalBlock(scope: !660, file: !3, line: 302, column: 7)
!707 = !DILocation(line: 304, column: 9, scope: !708)
!708 = distinct !DILexicalBlock(scope: !706, file: !3, line: 303, column: 5)
!709 = !DILocation(line: 305, column: 9, scope: !708)
!710 = !DILocation(line: 302, column: 7, scope: !660)
!711 = !DILocation(line: 307, column: 11, scope: !712)
!712 = distinct !DILexicalBlock(scope: !660, file: !3, line: 307, column: 7)
!713 = !DILocation(line: 307, column: 7, scope: !660)
!714 = !DILocation(line: 309, column: 8, scope: !715)
!715 = distinct !DILexicalBlock(scope: !712, file: !3, line: 308, column: 5)
!716 = !DILocation(line: 310, column: 9, scope: !715)
!717 = !DILocation(line: 311, column: 11, scope: !718)
!718 = distinct !DILexicalBlock(scope: !715, file: !3, line: 311, column: 11)
!719 = !DILocation(line: 311, column: 11, scope: !715)
!720 = !DILocation(line: 0, scope: !715)
!721 = !DILocation(line: 314, column: 6, scope: !660)
!722 = !DILocation(line: 315, column: 3, scope: !660)
!723 = !DILocation(line: 0, scope: !718)
!724 = !DILocation(line: 316, column: 1, scope: !660)
!725 = distinct !DISubprogram(name: "__i2b", scope: !3, file: !3, line: 319, type: !322, isLocal: false, isDefinition: true, scopeLine: 320, flags: DIFlagPrototyped, isOptimized: true, unit: !289, retainedNodes: !726)
!726 = !{!727, !728, !729}
!727 = !DILocalVariable(name: "ptr", arg: 1, scope: !725, file: !3, line: 319, type: !25)
!728 = !DILocalVariable(name: "i", arg: 2, scope: !725, file: !3, line: 319, type: !15)
!729 = !DILocalVariable(name: "b", scope: !725, file: !3, line: 321, type: !6)
!730 = !DILocation(line: 319, column: 1, scope: !725)
!731 = !DILocation(line: 97, column: 1, scope: !321, inlinedAt: !732)
!732 = distinct !DILocation(line: 323, column: 7, scope: !725)
!733 = !DILocation(line: 103, column: 7, scope: !331, inlinedAt: !732)
!734 = !DILocation(line: 103, column: 31, scope: !331, inlinedAt: !732)
!735 = !DILocation(line: 103, column: 7, scope: !321, inlinedAt: !732)
!736 = !DILocation(line: 106, column: 53, scope: !344, inlinedAt: !732)
!737 = !DILocation(line: 106, column: 31, scope: !344, inlinedAt: !732)
!738 = !DILocation(line: 109, column: 35, scope: !347, inlinedAt: !732)
!739 = !DILocation(line: 109, column: 11, scope: !344, inlinedAt: !732)
!740 = !DILocation(line: 115, column: 13, scope: !350, inlinedAt: !732)
!741 = !DILocation(line: 100, column: 12, scope: !321, inlinedAt: !732)
!742 = !DILocation(line: 115, column: 41, scope: !350, inlinedAt: !732)
!743 = !DILocation(line: 115, column: 7, scope: !321, inlinedAt: !732)
!744 = !DILocation(line: 117, column: 40, scope: !356, inlinedAt: !732)
!745 = !DILocation(line: 117, column: 34, scope: !356, inlinedAt: !732)
!746 = !DILocation(line: 118, column: 5, scope: !356, inlinedAt: !732)
!747 = !DILocation(line: 99, column: 7, scope: !321, inlinedAt: !732)
!748 = !DILocation(line: 123, column: 24, scope: !362, inlinedAt: !732)
!749 = !DILocation(line: 127, column: 14, scope: !366, inlinedAt: !732)
!750 = !DILocation(line: 127, column: 11, scope: !362, inlinedAt: !732)
!751 = !DILocation(line: 123, column: 12, scope: !362, inlinedAt: !732)
!752 = !DILocation(line: 128, column: 11, scope: !362, inlinedAt: !732)
!753 = !DILocation(line: 128, column: 14, scope: !362, inlinedAt: !732)
!754 = !DILocation(line: 129, column: 11, scope: !362, inlinedAt: !732)
!755 = !DILocation(line: 129, column: 19, scope: !362, inlinedAt: !732)
!756 = !DILocation(line: 0, scope: !362, inlinedAt: !732)
!757 = !DILocation(line: 131, column: 19, scope: !321, inlinedAt: !732)
!758 = !DILocation(line: 131, column: 24, scope: !321, inlinedAt: !732)
!759 = !DILocation(line: 131, column: 7, scope: !321, inlinedAt: !732)
!760 = !DILocation(line: 131, column: 13, scope: !321, inlinedAt: !732)
!761 = !DILocation(line: 132, column: 3, scope: !321, inlinedAt: !732)
!762 = !DILocation(line: 0, scope: !366, inlinedAt: !732)
!763 = !DILocation(line: 133, column: 1, scope: !321, inlinedAt: !732)
!764 = !DILocation(line: 321, column: 12, scope: !725)
!765 = !DILocation(line: 324, column: 3, scope: !725)
!766 = !DILocation(line: 324, column: 12, scope: !725)
!767 = !DILocation(line: 325, column: 6, scope: !725)
!768 = !DILocation(line: 325, column: 11, scope: !725)
!769 = !DILocation(line: 326, column: 3, scope: !725)
!770 = distinct !DISubprogram(name: "__multiply", scope: !3, file: !3, line: 330, type: !771, isLocal: false, isDefinition: true, scopeLine: 331, flags: DIFlagPrototyped, isOptimized: true, unit: !289, retainedNodes: !773)
!771 = !DISubroutineType(types: !772)
!772 = !{!6, !25, !6, !6}
!773 = !{!774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792}
!774 = !DILocalVariable(name: "ptr", arg: 1, scope: !770, file: !3, line: 330, type: !25)
!775 = !DILocalVariable(name: "a", arg: 2, scope: !770, file: !3, line: 330, type: !6)
!776 = !DILocalVariable(name: "b", arg: 3, scope: !770, file: !3, line: 330, type: !6)
!777 = !DILocalVariable(name: "c", scope: !770, file: !3, line: 332, type: !6)
!778 = !DILocalVariable(name: "k", scope: !770, file: !3, line: 333, type: !15)
!779 = !DILocalVariable(name: "wa", scope: !770, file: !3, line: 333, type: !15)
!780 = !DILocalVariable(name: "wb", scope: !770, file: !3, line: 333, type: !15)
!781 = !DILocalVariable(name: "wc", scope: !770, file: !3, line: 333, type: !15)
!782 = !DILocalVariable(name: "carry", scope: !770, file: !3, line: 334, type: !21)
!783 = !DILocalVariable(name: "y", scope: !770, file: !3, line: 334, type: !21)
!784 = !DILocalVariable(name: "z", scope: !770, file: !3, line: 334, type: !21)
!785 = !DILocalVariable(name: "x", scope: !770, file: !3, line: 335, type: !413)
!786 = !DILocalVariable(name: "xa", scope: !770, file: !3, line: 335, type: !413)
!787 = !DILocalVariable(name: "xae", scope: !770, file: !3, line: 335, type: !413)
!788 = !DILocalVariable(name: "xb", scope: !770, file: !3, line: 335, type: !413)
!789 = !DILocalVariable(name: "xbe", scope: !770, file: !3, line: 335, type: !413)
!790 = !DILocalVariable(name: "xc", scope: !770, file: !3, line: 335, type: !413)
!791 = !DILocalVariable(name: "xc0", scope: !770, file: !3, line: 335, type: !413)
!792 = !DILocalVariable(name: "z2", scope: !770, file: !3, line: 337, type: !21)
!793 = !DILocation(line: 330, column: 1, scope: !770)
!794 = !DILocation(line: 340, column: 10, scope: !795)
!795 = distinct !DILexicalBlock(scope: !770, file: !3, line: 340, column: 7)
!796 = !DILocation(line: 340, column: 20, scope: !795)
!797 = !DILocation(line: 340, column: 15, scope: !795)
!798 = !DILocation(line: 340, column: 7, scope: !770)
!799 = !DILocation(line: 346, column: 10, scope: !770)
!800 = !DILocation(line: 333, column: 7, scope: !770)
!801 = !DILocation(line: 347, column: 11, scope: !770)
!802 = !DILocation(line: 333, column: 10, scope: !770)
!803 = !DILocation(line: 348, column: 11, scope: !770)
!804 = !DILocation(line: 333, column: 14, scope: !770)
!805 = !DILocation(line: 349, column: 11, scope: !770)
!806 = !DILocation(line: 333, column: 18, scope: !770)
!807 = !DILocation(line: 350, column: 15, scope: !808)
!808 = distinct !DILexicalBlock(scope: !770, file: !3, line: 350, column: 7)
!809 = !DILocation(line: 350, column: 10, scope: !808)
!810 = !DILocation(line: 350, column: 7, scope: !770)
!811 = !DILocation(line: 97, column: 1, scope: !321, inlinedAt: !812)
!812 = distinct !DILocation(line: 352, column: 7, scope: !770)
!813 = !DILocation(line: 103, column: 7, scope: !331, inlinedAt: !812)
!814 = !DILocation(line: 103, column: 31, scope: !331, inlinedAt: !812)
!815 = !DILocation(line: 103, column: 7, scope: !321, inlinedAt: !812)
!816 = !DILocation(line: 106, column: 53, scope: !344, inlinedAt: !812)
!817 = !DILocation(line: 106, column: 31, scope: !344, inlinedAt: !812)
!818 = !DILocation(line: 109, column: 35, scope: !347, inlinedAt: !812)
!819 = !DILocation(line: 109, column: 11, scope: !344, inlinedAt: !812)
!820 = !DILocation(line: 115, column: 13, scope: !350, inlinedAt: !812)
!821 = !DILocation(line: 100, column: 12, scope: !321, inlinedAt: !812)
!822 = !DILocation(line: 115, column: 41, scope: !350, inlinedAt: !812)
!823 = !DILocation(line: 115, column: 7, scope: !321, inlinedAt: !812)
!824 = !DILocation(line: 117, column: 40, scope: !356, inlinedAt: !812)
!825 = !DILocation(line: 117, column: 34, scope: !356, inlinedAt: !812)
!826 = !DILocation(line: 118, column: 5, scope: !356, inlinedAt: !812)
!827 = !DILocation(line: 121, column: 13, scope: !362, inlinedAt: !812)
!828 = !DILocation(line: 99, column: 7, scope: !321, inlinedAt: !812)
!829 = !DILocation(line: 123, column: 24, scope: !362, inlinedAt: !812)
!830 = !DILocation(line: 127, column: 14, scope: !366, inlinedAt: !812)
!831 = !DILocation(line: 127, column: 11, scope: !362, inlinedAt: !812)
!832 = !DILocation(line: 123, column: 12, scope: !362, inlinedAt: !812)
!833 = !DILocation(line: 128, column: 11, scope: !362, inlinedAt: !812)
!834 = !DILocation(line: 128, column: 14, scope: !362, inlinedAt: !812)
!835 = !DILocation(line: 129, column: 11, scope: !362, inlinedAt: !812)
!836 = !DILocation(line: 129, column: 19, scope: !362, inlinedAt: !812)
!837 = !DILocation(line: 0, scope: !362, inlinedAt: !812)
!838 = !DILocation(line: 131, column: 19, scope: !321, inlinedAt: !812)
!839 = !DILocation(line: 131, column: 24, scope: !321, inlinedAt: !812)
!840 = !DILocation(line: 131, column: 7, scope: !321, inlinedAt: !812)
!841 = !DILocation(line: 131, column: 13, scope: !321, inlinedAt: !812)
!842 = !DILocation(line: 132, column: 3, scope: !321, inlinedAt: !812)
!843 = !DILocation(line: 0, scope: !366, inlinedAt: !812)
!844 = !DILocation(line: 133, column: 1, scope: !321, inlinedAt: !812)
!845 = !DILocation(line: 332, column: 12, scope: !770)
!846 = !DILocation(line: 353, column: 12, scope: !847)
!847 = distinct !DILexicalBlock(scope: !770, file: !3, line: 353, column: 3)
!848 = !DILocation(line: 335, column: 12, scope: !770)
!849 = !DILocation(line: 353, column: 26, scope: !847)
!850 = !DILocation(line: 335, column: 16, scope: !770)
!851 = !DILocation(line: 353, column: 34, scope: !852)
!852 = distinct !DILexicalBlock(scope: !847, file: !3, line: 353, column: 3)
!853 = !DILocation(line: 353, column: 3, scope: !847)
!854 = !DILocation(line: 354, column: 8, scope: !852)
!855 = distinct !{!855, !853, !856, !857}
!856 = !DILocation(line: 354, column: 10, scope: !847)
!857 = !{!"llvm.loop.isvectorized", i32 1}
!858 = distinct !{!858, !859}
!859 = !{!"llvm.loop.unroll.disable"}
!860 = !DILocation(line: 353, column: 41, scope: !852)
!861 = distinct !{!861, !853, !856, !862, !857}
!862 = !{!"llvm.loop.unroll.runtime.disable"}
!863 = !DILocation(line: 355, column: 8, scope: !770)
!864 = !DILocation(line: 356, column: 12, scope: !770)
!865 = !DILocation(line: 335, column: 21, scope: !770)
!866 = !DILocation(line: 358, column: 12, scope: !770)
!867 = !DILocation(line: 335, column: 32, scope: !770)
!868 = !DILocation(line: 335, column: 43, scope: !770)
!869 = !DILocation(line: 361, column: 13, scope: !870)
!870 = distinct !DILexicalBlock(scope: !871, file: !3, line: 361, column: 3)
!871 = distinct !DILexicalBlock(scope: !770, file: !3, line: 361, column: 3)
!872 = !DILocation(line: 361, column: 3, scope: !871)
!873 = !DILocation(line: 357, column: 8, scope: !770)
!874 = !DILocation(line: 335, column: 27, scope: !770)
!875 = !DILocation(line: 363, column: 16, scope: !876)
!876 = distinct !DILexicalBlock(scope: !877, file: !3, line: 363, column: 11)
!877 = distinct !DILexicalBlock(scope: !870, file: !3, line: 362, column: 5)
!878 = !DILocation(line: 335, column: 38, scope: !770)
!879 = !DILocation(line: 416, column: 43, scope: !880)
!880 = distinct !DILexicalBlock(scope: !881, file: !3, line: 416, column: 3)
!881 = distinct !DILexicalBlock(scope: !770, file: !3, line: 416, column: 3)
!882 = !DILocation(line: 363, column: 20, scope: !876)
!883 = !DILocation(line: 334, column: 18, scope: !770)
!884 = !DILocation(line: 363, column: 30, scope: !876)
!885 = !DILocation(line: 363, column: 11, scope: !877)
!886 = !DILocation(line: 0, scope: !887)
!887 = distinct !DILexicalBlock(scope: !888, file: !3, line: 369, column: 6)
!888 = distinct !DILexicalBlock(scope: !876, file: !3, line: 364, column: 2)
!889 = !DILocation(line: 334, column: 11, scope: !770)
!890 = !DILocation(line: 370, column: 13, scope: !887)
!891 = !DILocation(line: 370, column: 16, scope: !887)
!892 = !DILocation(line: 370, column: 26, scope: !887)
!893 = !DILocation(line: 370, column: 33, scope: !887)
!894 = !DILocation(line: 370, column: 37, scope: !887)
!895 = !DILocation(line: 370, column: 30, scope: !887)
!896 = !DILocation(line: 370, column: 47, scope: !887)
!897 = !DILocation(line: 334, column: 21, scope: !770)
!898 = !DILocation(line: 371, column: 18, scope: !887)
!899 = !DILocation(line: 372, column: 16, scope: !887)
!900 = !DILocation(line: 372, column: 19, scope: !887)
!901 = !DILocation(line: 372, column: 26, scope: !887)
!902 = !DILocation(line: 372, column: 37, scope: !887)
!903 = !DILocation(line: 372, column: 30, scope: !887)
!904 = !DILocation(line: 372, column: 44, scope: !887)
!905 = !DILocation(line: 337, column: 11, scope: !770)
!906 = !DILocation(line: 373, column: 19, scope: !887)
!907 = !DILocation(line: 374, column: 8, scope: !887)
!908 = !DILocation(line: 376, column: 13, scope: !888)
!909 = !DILocation(line: 375, column: 6, scope: !887)
!910 = distinct !{!910, !911, !912}
!911 = !DILocation(line: 368, column: 4, scope: !888)
!912 = !DILocation(line: 376, column: 18, scope: !888)
!913 = !DILocation(line: 377, column: 8, scope: !888)
!914 = !DILocation(line: 379, column: 16, scope: !915)
!915 = distinct !DILexicalBlock(scope: !877, file: !3, line: 379, column: 11)
!916 = !DILocation(line: 378, column: 2, scope: !888)
!917 = !DILocation(line: 379, column: 20, scope: !915)
!918 = !DILocation(line: 379, column: 27, scope: !915)
!919 = !DILocation(line: 379, column: 11, scope: !877)
!920 = !DILocation(line: 384, column: 9, scope: !921)
!921 = distinct !DILexicalBlock(scope: !915, file: !3, line: 380, column: 2)
!922 = !DILocation(line: 385, column: 4, scope: !921)
!923 = !DILocation(line: 387, column: 33, scope: !924)
!924 = distinct !DILexicalBlock(scope: !921, file: !3, line: 386, column: 6)
!925 = !DILocation(line: 0, scope: !924)
!926 = !DILocation(line: 387, column: 13, scope: !924)
!927 = !DILocation(line: 387, column: 16, scope: !924)
!928 = !DILocation(line: 387, column: 26, scope: !924)
!929 = !DILocation(line: 387, column: 37, scope: !924)
!930 = !DILocation(line: 387, column: 30, scope: !924)
!931 = !DILocation(line: 387, column: 44, scope: !924)
!932 = !DILocation(line: 388, column: 18, scope: !924)
!933 = !DILocation(line: 389, column: 8, scope: !924)
!934 = !DILocation(line: 390, column: 16, scope: !924)
!935 = !DILocation(line: 390, column: 14, scope: !924)
!936 = !DILocation(line: 390, column: 19, scope: !924)
!937 = !DILocation(line: 390, column: 26, scope: !924)
!938 = !DILocation(line: 390, column: 33, scope: !924)
!939 = !DILocation(line: 390, column: 37, scope: !924)
!940 = !DILocation(line: 390, column: 30, scope: !924)
!941 = !DILocation(line: 390, column: 47, scope: !924)
!942 = !DILocation(line: 391, column: 19, scope: !924)
!943 = !DILocation(line: 393, column: 13, scope: !921)
!944 = !DILocation(line: 392, column: 6, scope: !924)
!945 = distinct !{!945, !922, !946}
!946 = !DILocation(line: 393, column: 18, scope: !921)
!947 = !DILocation(line: 394, column: 8, scope: !921)
!948 = !DILocation(line: 395, column: 2, scope: !921)
!949 = !DILocation(line: 361, column: 22, scope: !870)
!950 = !DILocation(line: 361, column: 29, scope: !870)
!951 = distinct !{!951, !872, !952}
!952 = !DILocation(line: 396, column: 5, scope: !871)
!953 = !DILocation(line: 416, column: 48, scope: !880)
!954 = !DILocation(line: 416, column: 47, scope: !880)
!955 = !DILocation(line: 416, column: 46, scope: !880)
!956 = !DILocation(line: 416, column: 3, scope: !881)
!957 = !DILocation(line: 416, column: 54, scope: !880)
!958 = !DILocation(line: 416, column: 39, scope: !880)
!959 = distinct !{!959, !956, !960}
!960 = !DILocation(line: 416, column: 59, scope: !881)
!961 = !DILocation(line: 0, scope: !880)
!962 = !DILocation(line: 417, column: 6, scope: !770)
!963 = !DILocation(line: 417, column: 11, scope: !770)
!964 = !DILocation(line: 418, column: 3, scope: !770)
!965 = !DILocation(line: 422, column: 1, scope: !2)
!966 = !DILocation(line: 429, column: 14, scope: !967)
!967 = distinct !DILexicalBlock(scope: !2, file: !3, line: 429, column: 7)
!968 = !DILocation(line: 426, column: 7, scope: !2)
!969 = !DILocation(line: 429, column: 19, scope: !967)
!970 = !DILocation(line: 429, column: 7, scope: !2)
!971 = !DILocation(line: 430, column: 32, scope: !967)
!972 = !DILocation(line: 430, column: 26, scope: !967)
!973 = !DILocation(line: 430, column: 9, scope: !967)
!974 = !DILocation(line: 430, column: 5, scope: !967)
!975 = !DILocation(line: 432, column: 11, scope: !976)
!976 = distinct !DILexicalBlock(scope: !2, file: !3, line: 432, column: 7)
!977 = !DILocation(line: 432, column: 7, scope: !2)
!978 = !DILocation(line: 435, column: 14, scope: !979)
!979 = distinct !DILexicalBlock(scope: !2, file: !3, line: 435, column: 7)
!980 = !{!333, !337, i64 112}
!981 = !DILocation(line: 425, column: 17, scope: !2)
!982 = !DILocation(line: 435, column: 12, scope: !979)
!983 = !DILocation(line: 435, column: 7, scope: !2)
!984 = !DILocation(line: 319, column: 1, scope: !725, inlinedAt: !985)
!985 = distinct !DILocation(line: 438, column: 33, scope: !986)
!986 = distinct !DILexicalBlock(scope: !979, file: !3, line: 436, column: 5)
!987 = !DILocation(line: 97, column: 1, scope: !321, inlinedAt: !988)
!988 = distinct !DILocation(line: 323, column: 7, scope: !725, inlinedAt: !985)
!989 = !DILocation(line: 103, column: 7, scope: !331, inlinedAt: !988)
!990 = !DILocation(line: 103, column: 31, scope: !331, inlinedAt: !988)
!991 = !DILocation(line: 103, column: 7, scope: !321, inlinedAt: !988)
!992 = !DILocation(line: 106, column: 53, scope: !344, inlinedAt: !988)
!993 = !DILocation(line: 106, column: 31, scope: !344, inlinedAt: !988)
!994 = !DILocation(line: 109, column: 35, scope: !347, inlinedAt: !988)
!995 = !DILocation(line: 109, column: 11, scope: !344, inlinedAt: !988)
!996 = !DILocation(line: 115, column: 13, scope: !350, inlinedAt: !988)
!997 = !DILocation(line: 100, column: 12, scope: !321, inlinedAt: !988)
!998 = !DILocation(line: 115, column: 41, scope: !350, inlinedAt: !988)
!999 = !DILocation(line: 115, column: 7, scope: !321, inlinedAt: !988)
!1000 = !DILocation(line: 117, column: 40, scope: !356, inlinedAt: !988)
!1001 = !DILocation(line: 117, column: 34, scope: !356, inlinedAt: !988)
!1002 = !DILocation(line: 118, column: 5, scope: !356, inlinedAt: !988)
!1003 = !DILocation(line: 99, column: 7, scope: !321, inlinedAt: !988)
!1004 = !DILocation(line: 123, column: 24, scope: !362, inlinedAt: !988)
!1005 = !DILocation(line: 127, column: 14, scope: !366, inlinedAt: !988)
!1006 = !DILocation(line: 127, column: 11, scope: !362, inlinedAt: !988)
!1007 = !DILocation(line: 123, column: 12, scope: !362, inlinedAt: !988)
!1008 = !DILocation(line: 128, column: 11, scope: !362, inlinedAt: !988)
!1009 = !DILocation(line: 128, column: 14, scope: !362, inlinedAt: !988)
!1010 = !DILocation(line: 129, column: 11, scope: !362, inlinedAt: !988)
!1011 = !DILocation(line: 129, column: 19, scope: !362, inlinedAt: !988)
!1012 = !DILocation(line: 0, scope: !362, inlinedAt: !988)
!1013 = !DILocation(line: 131, column: 19, scope: !321, inlinedAt: !988)
!1014 = !DILocation(line: 131, column: 24, scope: !321, inlinedAt: !988)
!1015 = !DILocation(line: 131, column: 7, scope: !321, inlinedAt: !988)
!1016 = !DILocation(line: 131, column: 13, scope: !321, inlinedAt: !988)
!1017 = !DILocation(line: 132, column: 3, scope: !321, inlinedAt: !988)
!1018 = !DILocation(line: 0, scope: !366, inlinedAt: !988)
!1019 = !DILocation(line: 133, column: 1, scope: !321, inlinedAt: !988)
!1020 = !DILocation(line: 321, column: 12, scope: !725, inlinedAt: !985)
!1021 = !DILocation(line: 324, column: 3, scope: !725, inlinedAt: !985)
!1022 = !DILocation(line: 324, column: 12, scope: !725, inlinedAt: !985)
!1023 = !DILocation(line: 325, column: 6, scope: !725, inlinedAt: !985)
!1024 = !DILocation(line: 325, column: 11, scope: !725, inlinedAt: !985)
!1025 = !DILocation(line: 326, column: 3, scope: !725, inlinedAt: !985)
!1026 = !DILocation(line: 438, column: 31, scope: !986)
!1027 = !DILocation(line: 439, column: 11, scope: !986)
!1028 = !DILocation(line: 439, column: 17, scope: !986)
!1029 = !DILocation(line: 440, column: 5, scope: !986)
!1030 = !DILocation(line: 443, column: 13, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 443, column: 11)
!1032 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 442, column: 5)
!1033 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 441, column: 3)
!1034 = distinct !DILexicalBlock(scope: !2, file: !3, line: 441, column: 3)
!1035 = !DILocation(line: 0, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 449, column: 11)
!1037 = !DILocation(line: 0, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1031, file: !3, line: 444, column: 2)
!1039 = !DILocation(line: 0, scope: !1032)
!1040 = !DILocation(line: 443, column: 11, scope: !1032)
!1041 = !DILocation(line: 445, column: 9, scope: !1038)
!1042 = !DILocation(line: 425, column: 12, scope: !2)
!1043 = !DILocation(line: 136, column: 1, scope: !385, inlinedAt: !1044)
!1044 = distinct !DILocation(line: 446, column: 4, scope: !1038)
!1045 = !DILocation(line: 139, column: 7, scope: !393, inlinedAt: !1044)
!1046 = !DILocation(line: 139, column: 7, scope: !385, inlinedAt: !1044)
!1047 = !DILocation(line: 141, column: 18, scope: !396, inlinedAt: !1044)
!1048 = !DILocation(line: 141, column: 45, scope: !396, inlinedAt: !1044)
!1049 = !DILocation(line: 141, column: 16, scope: !396, inlinedAt: !1044)
!1050 = !DILocation(line: 142, column: 38, scope: !396, inlinedAt: !1044)
!1051 = !DILocation(line: 143, column: 5, scope: !396, inlinedAt: !1044)
!1052 = !DILocation(line: 144, column: 1, scope: !385, inlinedAt: !1044)
!1053 = !DILocation(line: 448, column: 2, scope: !1038)
!1054 = !DILocation(line: 0, scope: !967)
!1055 = !DILocation(line: 449, column: 15, scope: !1036)
!1056 = !DILocation(line: 449, column: 11, scope: !1032)
!1057 = !DILocation(line: 451, column: 23, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 451, column: 11)
!1059 = !DILocation(line: 425, column: 22, scope: !2)
!1060 = !DILocation(line: 451, column: 17, scope: !1058)
!1061 = !DILocation(line: 451, column: 11, scope: !1032)
!1062 = distinct !{!1062, !1063, !1064}
!1063 = !DILocation(line: 441, column: 3, scope: !1034)
!1064 = !DILocation(line: 457, column: 5, scope: !1034)
!1065 = !DILocation(line: 453, column: 22, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1058, file: !3, line: 452, column: 2)
!1067 = !DILocation(line: 453, column: 20, scope: !1066)
!1068 = !DILocation(line: 454, column: 9, scope: !1066)
!1069 = !DILocation(line: 454, column: 15, scope: !1066)
!1070 = !DILocation(line: 455, column: 2, scope: !1066)
!1071 = !DILocation(line: 0, scope: !976)
!1072 = !DILocation(line: 459, column: 1, scope: !2)
!1073 = distinct !DISubprogram(name: "__lshift", scope: !3, file: !3, line: 462, type: !4, isLocal: false, isDefinition: true, scopeLine: 463, flags: DIFlagPrototyped, isOptimized: true, unit: !289, retainedNodes: !1074)
!1074 = !{!1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086}
!1075 = !DILocalVariable(name: "ptr", arg: 1, scope: !1073, file: !3, line: 462, type: !25)
!1076 = !DILocalVariable(name: "b", arg: 2, scope: !1073, file: !3, line: 462, type: !6)
!1077 = !DILocalVariable(name: "k", arg: 3, scope: !1073, file: !3, line: 462, type: !15)
!1078 = !DILocalVariable(name: "i", scope: !1073, file: !3, line: 464, type: !15)
!1079 = !DILocalVariable(name: "k1", scope: !1073, file: !3, line: 464, type: !15)
!1080 = !DILocalVariable(name: "n", scope: !1073, file: !3, line: 464, type: !15)
!1081 = !DILocalVariable(name: "n1", scope: !1073, file: !3, line: 464, type: !15)
!1082 = !DILocalVariable(name: "b1", scope: !1073, file: !3, line: 465, type: !6)
!1083 = !DILocalVariable(name: "x", scope: !1073, file: !3, line: 466, type: !413)
!1084 = !DILocalVariable(name: "x1", scope: !1073, file: !3, line: 466, type: !413)
!1085 = !DILocalVariable(name: "xe", scope: !1073, file: !3, line: 466, type: !413)
!1086 = !DILocalVariable(name: "z", scope: !1073, file: !3, line: 466, type: !21)
!1087 = !DILocation(line: 462, column: 1, scope: !1073)
!1088 = !DILocation(line: 469, column: 9, scope: !1073)
!1089 = !DILocation(line: 464, column: 14, scope: !1073)
!1090 = !DILocation(line: 473, column: 11, scope: !1073)
!1091 = !DILocation(line: 464, column: 10, scope: !1073)
!1092 = !DILocation(line: 474, column: 15, scope: !1073)
!1093 = !DILocation(line: 474, column: 10, scope: !1073)
!1094 = !DILocation(line: 474, column: 20, scope: !1073)
!1095 = !DILocation(line: 464, column: 17, scope: !1073)
!1096 = !DILocation(line: 475, column: 15, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1073, file: !3, line: 475, column: 3)
!1098 = !DILocation(line: 464, column: 7, scope: !1073)
!1099 = !DILocation(line: 475, column: 27, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 475, column: 3)
!1101 = !DILocation(line: 475, column: 3, scope: !1097)
!1102 = !DILocation(line: 476, column: 7, scope: !1100)
!1103 = !DILocation(line: 475, column: 34, scope: !1100)
!1104 = distinct !{!1104, !1101, !1105}
!1105 = !DILocation(line: 476, column: 7, scope: !1097)
!1106 = !DILocation(line: 0, scope: !1100)
!1107 = !DILocation(line: 97, column: 1, scope: !321, inlinedAt: !1108)
!1108 = distinct !DILocation(line: 477, column: 8, scope: !1073)
!1109 = !DILocation(line: 103, column: 7, scope: !331, inlinedAt: !1108)
!1110 = !DILocation(line: 103, column: 31, scope: !331, inlinedAt: !1108)
!1111 = !DILocation(line: 103, column: 7, scope: !321, inlinedAt: !1108)
!1112 = !DILocation(line: 106, column: 53, scope: !344, inlinedAt: !1108)
!1113 = !DILocation(line: 106, column: 31, scope: !344, inlinedAt: !1108)
!1114 = !DILocation(line: 109, column: 35, scope: !347, inlinedAt: !1108)
!1115 = !DILocation(line: 109, column: 11, scope: !344, inlinedAt: !1108)
!1116 = !DILocation(line: 115, column: 13, scope: !350, inlinedAt: !1108)
!1117 = !DILocation(line: 100, column: 12, scope: !321, inlinedAt: !1108)
!1118 = !DILocation(line: 115, column: 41, scope: !350, inlinedAt: !1108)
!1119 = !DILocation(line: 115, column: 7, scope: !321, inlinedAt: !1108)
!1120 = !DILocation(line: 117, column: 40, scope: !356, inlinedAt: !1108)
!1121 = !DILocation(line: 117, column: 34, scope: !356, inlinedAt: !1108)
!1122 = !DILocation(line: 118, column: 5, scope: !356, inlinedAt: !1108)
!1123 = !DILocation(line: 121, column: 13, scope: !362, inlinedAt: !1108)
!1124 = !DILocation(line: 99, column: 7, scope: !321, inlinedAt: !1108)
!1125 = !DILocation(line: 123, column: 24, scope: !362, inlinedAt: !1108)
!1126 = !DILocation(line: 127, column: 14, scope: !366, inlinedAt: !1108)
!1127 = !DILocation(line: 127, column: 11, scope: !362, inlinedAt: !1108)
!1128 = !DILocation(line: 123, column: 12, scope: !362, inlinedAt: !1108)
!1129 = !DILocation(line: 128, column: 11, scope: !362, inlinedAt: !1108)
!1130 = !DILocation(line: 128, column: 14, scope: !362, inlinedAt: !1108)
!1131 = !DILocation(line: 129, column: 11, scope: !362, inlinedAt: !1108)
!1132 = !DILocation(line: 129, column: 19, scope: !362, inlinedAt: !1108)
!1133 = !DILocation(line: 0, scope: !362, inlinedAt: !1108)
!1134 = !DILocation(line: 131, column: 19, scope: !321, inlinedAt: !1108)
!1135 = !DILocation(line: 131, column: 24, scope: !321, inlinedAt: !1108)
!1136 = !DILocation(line: 131, column: 7, scope: !321, inlinedAt: !1108)
!1137 = !DILocation(line: 131, column: 13, scope: !321, inlinedAt: !1108)
!1138 = !DILocation(line: 132, column: 3, scope: !321, inlinedAt: !1108)
!1139 = !DILocation(line: 0, scope: !366, inlinedAt: !1108)
!1140 = !DILocation(line: 133, column: 1, scope: !321, inlinedAt: !1108)
!1141 = !DILocation(line: 465, column: 12, scope: !1073)
!1142 = !DILocation(line: 478, column: 8, scope: !1073)
!1143 = !DILocation(line: 466, column: 16, scope: !1073)
!1144 = !DILocation(line: 479, column: 17, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 479, column: 3)
!1146 = distinct !DILexicalBlock(scope: !1073, file: !3, line: 479, column: 3)
!1147 = !DILocation(line: 479, column: 3, scope: !1146)
!1148 = !DILocation(line: 480, column: 8, scope: !1145)
!1149 = !DILocation(line: 480, column: 11, scope: !1145)
!1150 = distinct !{!1150, !1147, !1151, !857}
!1151 = !DILocation(line: 480, column: 13, scope: !1146)
!1152 = !DILocation(line: 479, column: 23, scope: !1145)
!1153 = distinct !{!1153, !1147, !1151, !862, !857}
!1154 = !DILocation(line: 0, scope: !1145)
!1155 = !DILocation(line: 481, column: 7, scope: !1073)
!1156 = !DILocation(line: 466, column: 12, scope: !1073)
!1157 = !DILocation(line: 482, column: 15, scope: !1073)
!1158 = !DILocation(line: 482, column: 10, scope: !1073)
!1159 = !DILocation(line: 466, column: 21, scope: !1073)
!1160 = !DILocation(line: 484, column: 9, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1073, file: !3, line: 484, column: 7)
!1162 = !DILocation(line: 484, column: 7, scope: !1073)
!1163 = !DILocation(line: 514, column: 17, scope: !1161)
!1164 = !DILocation(line: 0, scope: !1161)
!1165 = !DILocation(line: 514, column: 15, scope: !1161)
!1166 = !DILocation(line: 514, column: 10, scope: !1161)
!1167 = !DILocation(line: 514, column: 13, scope: !1161)
!1168 = !DILocation(line: 514, column: 7, scope: !1161)
!1169 = distinct !{!1169, !859}
!1170 = !{!1171}
!1171 = distinct !{!1171, !1172}
!1172 = distinct !{!1172, !"LVerDomain"}
!1173 = !{!1174}
!1174 = distinct !{!1174, !1172}
!1175 = distinct !{!1175, !1176, !1177, !857}
!1176 = !DILocation(line: 513, column: 5, scope: !1161)
!1177 = !DILocation(line: 515, column: 18, scope: !1161)
!1178 = distinct !{!1178, !859}
!1179 = !DILocation(line: 486, column: 15, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1161, file: !3, line: 485, column: 5)
!1181 = !DILocation(line: 466, column: 25, scope: !1073)
!1182 = !DILocation(line: 488, column: 7, scope: !1180)
!1183 = !DILocation(line: 0, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 489, column: 2)
!1185 = !DILocation(line: 490, column: 12, scope: !1184)
!1186 = !DILocation(line: 490, column: 15, scope: !1184)
!1187 = !DILocation(line: 490, column: 20, scope: !1184)
!1188 = !DILocation(line: 490, column: 7, scope: !1184)
!1189 = !DILocation(line: 490, column: 10, scope: !1184)
!1190 = !DILocation(line: 491, column: 10, scope: !1184)
!1191 = !DILocation(line: 491, column: 8, scope: !1184)
!1192 = !DILocation(line: 491, column: 13, scope: !1184)
!1193 = !DILocation(line: 492, column: 2, scope: !1184)
!1194 = distinct !{!1194, !1182, !1195}
!1195 = !DILocation(line: 493, column: 20, scope: !1180)
!1196 = distinct !{!1196, !859}
!1197 = !DILocation(line: 494, column: 16, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 494, column: 11)
!1199 = !DILocation(line: 494, column: 21, scope: !1198)
!1200 = !DILocation(line: 495, column: 2, scope: !1198)
!1201 = !DILocation(line: 494, column: 11, scope: !1180)
!1202 = !DILocation(line: 515, column: 14, scope: !1161)
!1203 = distinct !{!1203, !1176, !1177, !857}
!1204 = !DILocation(line: 0, scope: !1073)
!1205 = !DILocation(line: 516, column: 17, scope: !1073)
!1206 = !DILocation(line: 516, column: 7, scope: !1073)
!1207 = !DILocation(line: 516, column: 12, scope: !1073)
!1208 = !DILocation(line: 136, column: 1, scope: !385, inlinedAt: !1209)
!1209 = distinct !DILocation(line: 517, column: 3, scope: !1073)
!1210 = !DILocation(line: 139, column: 7, scope: !393, inlinedAt: !1209)
!1211 = !DILocation(line: 139, column: 7, scope: !385, inlinedAt: !1209)
!1212 = !DILocation(line: 141, column: 18, scope: !396, inlinedAt: !1209)
!1213 = !DILocation(line: 141, column: 45, scope: !396, inlinedAt: !1209)
!1214 = !DILocation(line: 141, column: 16, scope: !396, inlinedAt: !1209)
!1215 = !DILocation(line: 142, column: 38, scope: !396, inlinedAt: !1209)
!1216 = !DILocation(line: 143, column: 5, scope: !396, inlinedAt: !1209)
!1217 = !DILocation(line: 144, column: 1, scope: !385, inlinedAt: !1209)
!1218 = !DILocation(line: 518, column: 3, scope: !1073)
!1219 = distinct !DISubprogram(name: "__mcmp", scope: !3, file: !3, line: 522, type: !1220, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: true, unit: !289, retainedNodes: !1222)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{!15, !6, !6}
!1222 = !{!1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230}
!1223 = !DILocalVariable(name: "a", arg: 1, scope: !1219, file: !3, line: 522, type: !6)
!1224 = !DILocalVariable(name: "b", arg: 2, scope: !1219, file: !3, line: 522, type: !6)
!1225 = !DILocalVariable(name: "xa", scope: !1219, file: !3, line: 524, type: !413)
!1226 = !DILocalVariable(name: "xa0", scope: !1219, file: !3, line: 524, type: !413)
!1227 = !DILocalVariable(name: "xb", scope: !1219, file: !3, line: 524, type: !413)
!1228 = !DILocalVariable(name: "xb0", scope: !1219, file: !3, line: 524, type: !413)
!1229 = !DILocalVariable(name: "i", scope: !1219, file: !3, line: 525, type: !15)
!1230 = !DILocalVariable(name: "j", scope: !1219, file: !3, line: 525, type: !15)
!1231 = !DILocation(line: 522, column: 1, scope: !1219)
!1232 = !DILocation(line: 527, column: 10, scope: !1219)
!1233 = !DILocation(line: 525, column: 7, scope: !1219)
!1234 = !DILocation(line: 528, column: 10, scope: !1219)
!1235 = !DILocation(line: 525, column: 10, scope: !1219)
!1236 = !DILocation(line: 535, column: 9, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 535, column: 7)
!1238 = !DILocation(line: 535, column: 7, scope: !1219)
!1239 = !DILocation(line: 537, column: 9, scope: !1219)
!1240 = !DILocation(line: 524, column: 17, scope: !1219)
!1241 = !DILocation(line: 538, column: 12, scope: !1219)
!1242 = !DILocation(line: 524, column: 12, scope: !1219)
!1243 = !DILocation(line: 524, column: 28, scope: !1219)
!1244 = !DILocation(line: 540, column: 12, scope: !1219)
!1245 = !DILocation(line: 524, column: 23, scope: !1219)
!1246 = !DILocation(line: 541, column: 3, scope: !1219)
!1247 = !DILocation(line: 0, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 543, column: 11)
!1249 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 542, column: 5)
!1250 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 541, column: 3)
!1251 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 541, column: 3)
!1252 = !DILocation(line: 543, column: 12, scope: !1248)
!1253 = !DILocation(line: 543, column: 11, scope: !1248)
!1254 = !DILocation(line: 543, column: 21, scope: !1248)
!1255 = !DILocation(line: 543, column: 20, scope: !1248)
!1256 = !DILocation(line: 543, column: 17, scope: !1248)
!1257 = !DILocation(line: 543, column: 11, scope: !1249)
!1258 = !DILocation(line: 544, column: 13, scope: !1248)
!1259 = !DILocation(line: 544, column: 9, scope: !1248)
!1260 = !DILocation(line: 544, column: 2, scope: !1248)
!1261 = !DILocation(line: 545, column: 14, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 545, column: 11)
!1263 = !DILocation(line: 545, column: 11, scope: !1249)
!1264 = distinct !{!1264, !1265, !1266}
!1265 = !DILocation(line: 541, column: 3, scope: !1251)
!1266 = !DILocation(line: 547, column: 5, scope: !1251)
!1267 = !DILocation(line: 0, scope: !1219)
!1268 = !DILocation(line: 549, column: 1, scope: !1219)
!1269 = distinct !DISubprogram(name: "__mdiff", scope: !3, file: !3, line: 552, type: !771, isLocal: false, isDefinition: true, scopeLine: 554, flags: DIFlagPrototyped, isOptimized: true, unit: !289, retainedNodes: !1270)
!1270 = !{!1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285}
!1271 = !DILocalVariable(name: "ptr", arg: 1, scope: !1269, file: !3, line: 552, type: !25)
!1272 = !DILocalVariable(name: "a", arg: 2, scope: !1269, file: !3, line: 552, type: !6)
!1273 = !DILocalVariable(name: "b", arg: 3, scope: !1269, file: !3, line: 552, type: !6)
!1274 = !DILocalVariable(name: "c", scope: !1269, file: !3, line: 555, type: !6)
!1275 = !DILocalVariable(name: "i", scope: !1269, file: !3, line: 556, type: !15)
!1276 = !DILocalVariable(name: "wa", scope: !1269, file: !3, line: 556, type: !15)
!1277 = !DILocalVariable(name: "wb", scope: !1269, file: !3, line: 556, type: !15)
!1278 = !DILocalVariable(name: "borrow", scope: !1269, file: !3, line: 557, type: !15)
!1279 = !DILocalVariable(name: "y", scope: !1269, file: !3, line: 557, type: !15)
!1280 = !DILocalVariable(name: "xa", scope: !1269, file: !3, line: 558, type: !413)
!1281 = !DILocalVariable(name: "xae", scope: !1269, file: !3, line: 558, type: !413)
!1282 = !DILocalVariable(name: "xb", scope: !1269, file: !3, line: 558, type: !413)
!1283 = !DILocalVariable(name: "xbe", scope: !1269, file: !3, line: 558, type: !413)
!1284 = !DILocalVariable(name: "xc", scope: !1269, file: !3, line: 558, type: !413)
!1285 = !DILocalVariable(name: "z", scope: !1269, file: !3, line: 560, type: !15)
!1286 = !DILocation(line: 552, column: 1, scope: !1269)
!1287 = !DILocation(line: 522, column: 1, scope: !1219, inlinedAt: !1288)
!1288 = distinct !DILocation(line: 563, column: 7, scope: !1269)
!1289 = !DILocation(line: 527, column: 10, scope: !1219, inlinedAt: !1288)
!1290 = !DILocation(line: 525, column: 7, scope: !1219, inlinedAt: !1288)
!1291 = !DILocation(line: 528, column: 10, scope: !1219, inlinedAt: !1288)
!1292 = !DILocation(line: 525, column: 10, scope: !1219, inlinedAt: !1288)
!1293 = !DILocation(line: 535, column: 9, scope: !1237, inlinedAt: !1288)
!1294 = !DILocation(line: 535, column: 7, scope: !1219, inlinedAt: !1288)
!1295 = !DILocation(line: 537, column: 9, scope: !1219, inlinedAt: !1288)
!1296 = !DILocation(line: 524, column: 17, scope: !1219, inlinedAt: !1288)
!1297 = !DILocation(line: 538, column: 12, scope: !1219, inlinedAt: !1288)
!1298 = !DILocation(line: 524, column: 12, scope: !1219, inlinedAt: !1288)
!1299 = !DILocation(line: 524, column: 28, scope: !1219, inlinedAt: !1288)
!1300 = !DILocation(line: 540, column: 12, scope: !1219, inlinedAt: !1288)
!1301 = !DILocation(line: 524, column: 23, scope: !1219, inlinedAt: !1288)
!1302 = !DILocation(line: 541, column: 3, scope: !1219, inlinedAt: !1288)
!1303 = !DILocation(line: 0, scope: !1248, inlinedAt: !1288)
!1304 = !DILocation(line: 543, column: 12, scope: !1248, inlinedAt: !1288)
!1305 = !DILocation(line: 543, column: 11, scope: !1248, inlinedAt: !1288)
!1306 = !DILocation(line: 543, column: 21, scope: !1248, inlinedAt: !1288)
!1307 = !DILocation(line: 543, column: 20, scope: !1248, inlinedAt: !1288)
!1308 = !DILocation(line: 543, column: 17, scope: !1248, inlinedAt: !1288)
!1309 = !DILocation(line: 543, column: 11, scope: !1249, inlinedAt: !1288)
!1310 = !DILocation(line: 544, column: 13, scope: !1248, inlinedAt: !1288)
!1311 = !DILocation(line: 544, column: 9, scope: !1248, inlinedAt: !1288)
!1312 = !DILocation(line: 544, column: 2, scope: !1248, inlinedAt: !1288)
!1313 = !DILocation(line: 545, column: 14, scope: !1262, inlinedAt: !1288)
!1314 = !DILocation(line: 545, column: 11, scope: !1249, inlinedAt: !1288)
!1315 = !DILocation(line: 549, column: 1, scope: !1219, inlinedAt: !1288)
!1316 = !DILocation(line: 556, column: 7, scope: !1269)
!1317 = !DILocation(line: 97, column: 1, scope: !321, inlinedAt: !1318)
!1318 = distinct !DILocation(line: 566, column: 11, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 565, column: 5)
!1320 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 564, column: 7)
!1321 = !DILocation(line: 103, column: 7, scope: !331, inlinedAt: !1318)
!1322 = !DILocation(line: 103, column: 31, scope: !331, inlinedAt: !1318)
!1323 = !DILocation(line: 103, column: 7, scope: !321, inlinedAt: !1318)
!1324 = !DILocation(line: 106, column: 53, scope: !344, inlinedAt: !1318)
!1325 = !DILocation(line: 106, column: 31, scope: !344, inlinedAt: !1318)
!1326 = !DILocation(line: 109, column: 35, scope: !347, inlinedAt: !1318)
!1327 = !DILocation(line: 109, column: 11, scope: !344, inlinedAt: !1318)
!1328 = !DILocation(line: 115, column: 13, scope: !350, inlinedAt: !1318)
!1329 = !DILocation(line: 100, column: 12, scope: !321, inlinedAt: !1318)
!1330 = !DILocation(line: 115, column: 41, scope: !350, inlinedAt: !1318)
!1331 = !DILocation(line: 115, column: 7, scope: !321, inlinedAt: !1318)
!1332 = !DILocation(line: 117, column: 40, scope: !356, inlinedAt: !1318)
!1333 = !DILocation(line: 117, column: 34, scope: !356, inlinedAt: !1318)
!1334 = !DILocation(line: 118, column: 5, scope: !356, inlinedAt: !1318)
!1335 = !DILocation(line: 99, column: 7, scope: !321, inlinedAt: !1318)
!1336 = !DILocation(line: 123, column: 24, scope: !362, inlinedAt: !1318)
!1337 = !DILocation(line: 127, column: 14, scope: !366, inlinedAt: !1318)
!1338 = !DILocation(line: 127, column: 11, scope: !362, inlinedAt: !1318)
!1339 = !DILocation(line: 123, column: 12, scope: !362, inlinedAt: !1318)
!1340 = !DILocation(line: 128, column: 11, scope: !362, inlinedAt: !1318)
!1341 = !DILocation(line: 128, column: 14, scope: !362, inlinedAt: !1318)
!1342 = !DILocation(line: 129, column: 11, scope: !362, inlinedAt: !1318)
!1343 = !DILocation(line: 129, column: 19, scope: !362, inlinedAt: !1318)
!1344 = !DILocation(line: 0, scope: !362, inlinedAt: !1318)
!1345 = !DILocation(line: 131, column: 19, scope: !321, inlinedAt: !1318)
!1346 = !DILocation(line: 131, column: 24, scope: !321, inlinedAt: !1318)
!1347 = !DILocation(line: 131, column: 7, scope: !321, inlinedAt: !1318)
!1348 = !DILocation(line: 131, column: 13, scope: !321, inlinedAt: !1318)
!1349 = !DILocation(line: 132, column: 3, scope: !321, inlinedAt: !1318)
!1350 = !DILocation(line: 0, scope: !366, inlinedAt: !1318)
!1351 = !DILocation(line: 133, column: 1, scope: !321, inlinedAt: !1318)
!1352 = !DILocation(line: 555, column: 12, scope: !1269)
!1353 = !DILocation(line: 567, column: 10, scope: !1319)
!1354 = !DILocation(line: 567, column: 15, scope: !1319)
!1355 = !DILocation(line: 568, column: 7, scope: !1319)
!1356 = !DILocation(line: 568, column: 16, scope: !1319)
!1357 = !DILocation(line: 569, column: 7, scope: !1319)
!1358 = !DILocation(line: 571, column: 9, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 571, column: 7)
!1360 = !DILocation(line: 577, column: 5, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1359, file: !3, line: 572, column: 5)
!1362 = !DILocation(line: 580, column: 23, scope: !1269)
!1363 = !DILocation(line: 97, column: 1, scope: !321, inlinedAt: !1364)
!1364 = distinct !DILocation(line: 580, column: 7, scope: !1269)
!1365 = !DILocation(line: 103, column: 7, scope: !331, inlinedAt: !1364)
!1366 = !DILocation(line: 103, column: 31, scope: !331, inlinedAt: !1364)
!1367 = !DILocation(line: 103, column: 7, scope: !321, inlinedAt: !1364)
!1368 = !DILocation(line: 106, column: 53, scope: !344, inlinedAt: !1364)
!1369 = !DILocation(line: 106, column: 31, scope: !344, inlinedAt: !1364)
!1370 = !DILocation(line: 109, column: 35, scope: !347, inlinedAt: !1364)
!1371 = !DILocation(line: 109, column: 11, scope: !344, inlinedAt: !1364)
!1372 = !DILocation(line: 115, column: 13, scope: !350, inlinedAt: !1364)
!1373 = !DILocation(line: 100, column: 12, scope: !321, inlinedAt: !1364)
!1374 = !DILocation(line: 115, column: 41, scope: !350, inlinedAt: !1364)
!1375 = !DILocation(line: 115, column: 7, scope: !321, inlinedAt: !1364)
!1376 = !DILocation(line: 117, column: 40, scope: !356, inlinedAt: !1364)
!1377 = !DILocation(line: 117, column: 34, scope: !356, inlinedAt: !1364)
!1378 = !DILocation(line: 118, column: 5, scope: !356, inlinedAt: !1364)
!1379 = !DILocation(line: 121, column: 13, scope: !362, inlinedAt: !1364)
!1380 = !DILocation(line: 99, column: 7, scope: !321, inlinedAt: !1364)
!1381 = !DILocation(line: 123, column: 24, scope: !362, inlinedAt: !1364)
!1382 = !DILocation(line: 127, column: 14, scope: !366, inlinedAt: !1364)
!1383 = !DILocation(line: 127, column: 11, scope: !362, inlinedAt: !1364)
!1384 = !DILocation(line: 123, column: 12, scope: !362, inlinedAt: !1364)
!1385 = !DILocation(line: 128, column: 11, scope: !362, inlinedAt: !1364)
!1386 = !DILocation(line: 128, column: 14, scope: !362, inlinedAt: !1364)
!1387 = !DILocation(line: 129, column: 11, scope: !362, inlinedAt: !1364)
!1388 = !DILocation(line: 129, column: 19, scope: !362, inlinedAt: !1364)
!1389 = !DILocation(line: 0, scope: !362, inlinedAt: !1364)
!1390 = !DILocation(line: 131, column: 19, scope: !321, inlinedAt: !1364)
!1391 = !DILocation(line: 131, column: 24, scope: !321, inlinedAt: !1364)
!1392 = !DILocation(line: 131, column: 7, scope: !321, inlinedAt: !1364)
!1393 = !DILocation(line: 131, column: 13, scope: !321, inlinedAt: !1364)
!1394 = !DILocation(line: 132, column: 3, scope: !321, inlinedAt: !1364)
!1395 = !DILocation(line: 0, scope: !366, inlinedAt: !1364)
!1396 = !DILocation(line: 133, column: 1, scope: !321, inlinedAt: !1364)
!1397 = !DILocation(line: 581, column: 6, scope: !1269)
!1398 = !DILocation(line: 581, column: 12, scope: !1269)
!1399 = !DILocation(line: 582, column: 11, scope: !1269)
!1400 = !DILocation(line: 556, column: 10, scope: !1269)
!1401 = !DILocation(line: 583, column: 8, scope: !1269)
!1402 = !DILocation(line: 558, column: 12, scope: !1269)
!1403 = !DILocation(line: 584, column: 12, scope: !1269)
!1404 = !DILocation(line: 558, column: 17, scope: !1269)
!1405 = !DILocation(line: 585, column: 11, scope: !1269)
!1406 = !DILocation(line: 556, column: 14, scope: !1269)
!1407 = !DILocation(line: 586, column: 8, scope: !1269)
!1408 = !DILocation(line: 558, column: 23, scope: !1269)
!1409 = !DILocation(line: 587, column: 12, scope: !1269)
!1410 = !DILocation(line: 558, column: 28, scope: !1269)
!1411 = !DILocation(line: 588, column: 8, scope: !1269)
!1412 = !DILocation(line: 558, column: 34, scope: !1269)
!1413 = !DILocation(line: 557, column: 10, scope: !1269)
!1414 = !DILocation(line: 591, column: 3, scope: !1269)
!1415 = !DILocation(line: 0, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 592, column: 5)
!1417 = !DILocation(line: 593, column: 12, scope: !1416)
!1418 = !DILocation(line: 593, column: 16, scope: !1416)
!1419 = !DILocation(line: 593, column: 29, scope: !1416)
!1420 = !DILocation(line: 593, column: 33, scope: !1416)
!1421 = !DILocation(line: 593, column: 26, scope: !1416)
!1422 = !DILocation(line: 593, column: 43, scope: !1416)
!1423 = !DILocation(line: 557, column: 18, scope: !1269)
!1424 = !DILocation(line: 594, column: 18, scope: !1416)
!1425 = !DILocation(line: 596, column: 15, scope: !1416)
!1426 = !DILocation(line: 596, column: 18, scope: !1416)
!1427 = !DILocation(line: 596, column: 31, scope: !1416)
!1428 = !DILocation(line: 596, column: 34, scope: !1416)
!1429 = !DILocation(line: 596, column: 25, scope: !1416)
!1430 = !DILocation(line: 596, column: 41, scope: !1416)
!1431 = !DILocation(line: 560, column: 10, scope: !1269)
!1432 = !DILocation(line: 597, column: 18, scope: !1416)
!1433 = !DILocation(line: 599, column: 7, scope: !1416)
!1434 = !DILocation(line: 601, column: 13, scope: !1269)
!1435 = !DILocation(line: 600, column: 5, scope: !1416)
!1436 = distinct !{!1436, !1414, !1437}
!1437 = !DILocation(line: 601, column: 18, scope: !1269)
!1438 = !DILocation(line: 602, column: 13, scope: !1269)
!1439 = !DILocation(line: 602, column: 3, scope: !1269)
!1440 = !DILocation(line: 629, column: 12, scope: !1269)
!1441 = !DILocation(line: 604, column: 12, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 603, column: 5)
!1443 = !DILocation(line: 604, column: 16, scope: !1442)
!1444 = !DILocation(line: 604, column: 26, scope: !1442)
!1445 = !DILocation(line: 605, column: 18, scope: !1442)
!1446 = !DILocation(line: 607, column: 15, scope: !1442)
!1447 = !DILocation(line: 607, column: 18, scope: !1442)
!1448 = !DILocation(line: 607, column: 25, scope: !1442)
!1449 = !DILocation(line: 608, column: 18, scope: !1442)
!1450 = !DILocation(line: 610, column: 7, scope: !1442)
!1451 = distinct !{!1451, !1439, !1452}
!1452 = !DILocation(line: 611, column: 5, scope: !1269)
!1453 = !DILocation(line: 0, scope: !1269)
!1454 = !DILocation(line: 629, column: 11, scope: !1269)
!1455 = !DILocation(line: 629, column: 10, scope: !1269)
!1456 = !DILocation(line: 630, column: 7, scope: !1269)
!1457 = !DILocation(line: 629, column: 3, scope: !1269)
!1458 = distinct !{!1458, !1457, !1456}
!1459 = !DILocation(line: 631, column: 6, scope: !1269)
!1460 = !DILocation(line: 631, column: 11, scope: !1269)
!1461 = !DILocation(line: 632, column: 3, scope: !1269)
!1462 = !DILocation(line: 0, scope: !1319)
!1463 = !DILocation(line: 633, column: 1, scope: !1269)
!1464 = distinct !DISubprogram(name: "__ulp", scope: !3, file: !3, line: 636, type: !1465, isLocal: false, isDefinition: true, scopeLine: 637, flags: DIFlagPrototyped, isOptimized: true, unit: !289, retainedNodes: !1467)
!1465 = !DISubroutineType(types: !1466)
!1466 = !{!299, !299}
!1467 = !{!1468, !1469, !1475, !1476}
!1468 = !DILocalVariable(name: "_x", arg: 1, scope: !1464, file: !3, line: 636, type: !299)
!1469 = !DILocalVariable(name: "x", scope: !1464, file: !3, line: 638, type: !1470)
!1470 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "double_union", file: !8, line: 68, size: 64, elements: !1471)
!1471 = !{!1472, !1473}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1470, file: !8, line: 70, baseType: !299, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !1470, file: !8, line: 71, baseType: !1474, size: 64)
!1474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 64, elements: !175)
!1475 = !DILocalVariable(name: "a", scope: !1464, file: !3, line: 638, type: !1470)
!1476 = !DILocalVariable(name: "L", scope: !1464, file: !3, line: 639, type: !15)
!1477 = !DILocation(line: 636, column: 1, scope: !1464)
!1478 = !DILocation(line: 638, column: 22, scope: !1464)
!1479 = !DILocation(line: 643, column: 8, scope: !1464)
!1480 = !DILocation(line: 643, column: 18, scope: !1464)
!1481 = !DILocation(line: 645, column: 9, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1464, file: !3, line: 645, column: 7)
!1483 = !DILocation(line: 645, column: 7, scope: !1464)
!1484 = !DILocation(line: 643, column: 30, scope: !1464)
!1485 = !DILocation(line: 639, column: 19, scope: !1464)
!1486 = !DILocation(line: 651, column: 17, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1482, file: !3, line: 646, column: 5)
!1488 = !DILocation(line: 638, column: 25, scope: !1464)
!1489 = !DILocation(line: 657, column: 5, scope: !1487)
!1490 = !DILocation(line: 660, column: 11, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1482, file: !3, line: 659, column: 5)
!1492 = !DILocation(line: 660, column: 14, scope: !1491)
!1493 = !DILocation(line: 661, column: 13, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1491, file: !3, line: 661, column: 11)
!1495 = !DILocation(line: 661, column: 11, scope: !1491)
!1496 = !DILocation(line: 663, column: 24, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1494, file: !3, line: 662, column: 2)
!1498 = !DILocation(line: 663, column: 14, scope: !1497)
!1499 = !DILocation(line: 667, column: 2, scope: !1497)
!1500 = !DILocation(line: 673, column: 24, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1494, file: !3, line: 669, column: 2)
!1502 = !DILocation(line: 673, column: 22, scope: !1501)
!1503 = !DILocation(line: 673, column: 45, scope: !1501)
!1504 = !DILocation(line: 673, column: 38, scope: !1501)
!1505 = !DILocation(line: 0, scope: !1501)
!1506 = !DILocation(line: 678, column: 3, scope: !1464)
!1507 = distinct !DISubprogram(name: "__b2d", scope: !3, file: !3, line: 682, type: !1508, isLocal: false, isDefinition: true, scopeLine: 684, flags: DIFlagPrototyped, isOptimized: true, unit: !289, retainedNodes: !1511)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{!299, !6, !1510}
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!1511 = !{!1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520}
!1512 = !DILocalVariable(name: "a", arg: 1, scope: !1507, file: !3, line: 682, type: !6)
!1513 = !DILocalVariable(name: "e", arg: 2, scope: !1507, file: !3, line: 682, type: !1510)
!1514 = !DILocalVariable(name: "xa", scope: !1507, file: !3, line: 685, type: !413)
!1515 = !DILocalVariable(name: "xa0", scope: !1507, file: !3, line: 685, type: !413)
!1516 = !DILocalVariable(name: "w", scope: !1507, file: !3, line: 685, type: !21)
!1517 = !DILocalVariable(name: "y", scope: !1507, file: !3, line: 685, type: !21)
!1518 = !DILocalVariable(name: "z", scope: !1507, file: !3, line: 685, type: !21)
!1519 = !DILocalVariable(name: "k", scope: !1507, file: !3, line: 686, type: !15)
!1520 = !DILocalVariable(name: "d", scope: !1507, file: !3, line: 687, type: !1470)
!1521 = !DILocation(line: 682, column: 1, scope: !1507)
!1522 = !DILocation(line: 695, column: 9, scope: !1507)
!1523 = !DILocation(line: 685, column: 17, scope: !1507)
!1524 = !DILocation(line: 696, column: 17, scope: !1507)
!1525 = !DILocation(line: 696, column: 12, scope: !1507)
!1526 = !DILocation(line: 685, column: 12, scope: !1507)
!1527 = !DILocation(line: 697, column: 8, scope: !1507)
!1528 = !DILocation(line: 697, column: 7, scope: !1507)
!1529 = !DILocation(line: 685, column: 25, scope: !1507)
!1530 = !DILocation(line: 234, column: 1, scope: !617, inlinedAt: !1531)
!1531 = distinct !DILocation(line: 702, column: 7, scope: !1507)
!1532 = !DILocation(line: 237, column: 16, scope: !617, inlinedAt: !1531)
!1533 = !DILocation(line: 239, column: 11, scope: !626, inlinedAt: !1531)
!1534 = !DILocation(line: 242, column: 9, scope: !628, inlinedAt: !1531)
!1535 = !DILocation(line: 239, column: 7, scope: !617, inlinedAt: !1531)
!1536 = !DILocation(line: 244, column: 11, scope: !631, inlinedAt: !1531)
!1537 = !DILocation(line: 246, column: 9, scope: !633, inlinedAt: !1531)
!1538 = !DILocation(line: 247, column: 9, scope: !633, inlinedAt: !1531)
!1539 = !DILocation(line: 244, column: 7, scope: !617, inlinedAt: !1531)
!1540 = !DILocation(line: 249, column: 11, scope: !637, inlinedAt: !1531)
!1541 = !DILocation(line: 251, column: 9, scope: !639, inlinedAt: !1531)
!1542 = !DILocation(line: 252, column: 9, scope: !639, inlinedAt: !1531)
!1543 = !DILocation(line: 249, column: 7, scope: !617, inlinedAt: !1531)
!1544 = !DILocation(line: 254, column: 11, scope: !643, inlinedAt: !1531)
!1545 = !DILocation(line: 256, column: 9, scope: !645, inlinedAt: !1531)
!1546 = !DILocation(line: 257, column: 9, scope: !645, inlinedAt: !1531)
!1547 = !DILocation(line: 254, column: 7, scope: !617, inlinedAt: !1531)
!1548 = !DILocation(line: 259, column: 11, scope: !649, inlinedAt: !1531)
!1549 = !DILocation(line: 259, column: 7, scope: !617, inlinedAt: !1531)
!1550 = !DILocation(line: 261, column: 8, scope: !652, inlinedAt: !1531)
!1551 = !DILocation(line: 262, column: 15, scope: !654, inlinedAt: !1531)
!1552 = !DILocation(line: 262, column: 11, scope: !652, inlinedAt: !1531)
!1553 = !DILocation(line: 266, column: 1, scope: !617, inlinedAt: !1531)
!1554 = !DILocation(line: 686, column: 7, scope: !1507)
!1555 = !DILocation(line: 703, column: 6, scope: !1507)
!1556 = !DILocation(line: 705, column: 7, scope: !1507)
!1557 = !DILocation(line: 0, scope: !652, inlinedAt: !1531)
!1558 = !DILocation(line: 703, column: 11, scope: !1507)
!1559 = !DILocation(line: 705, column: 9, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1507, file: !3, line: 705, column: 7)
!1561 = !DILocation(line: 707, column: 32, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1560, file: !3, line: 706, column: 5)
!1563 = !DILocation(line: 707, column: 22, scope: !1562)
!1564 = !DILocation(line: 708, column: 14, scope: !1562)
!1565 = !DILocation(line: 708, column: 11, scope: !1562)
!1566 = !DILocation(line: 708, column: 23, scope: !1562)
!1567 = !DILocation(line: 708, column: 22, scope: !1562)
!1568 = !DILocation(line: 685, column: 22, scope: !1507)
!1569 = !DILocation(line: 710, column: 31, scope: !1562)
!1570 = !DILocation(line: 710, column: 14, scope: !1562)
!1571 = !DILocation(line: 710, column: 40, scope: !1562)
!1572 = !DILocation(line: 710, column: 36, scope: !1562)
!1573 = !DILocation(line: 712, column: 7, scope: !1562)
!1574 = !DILocation(line: 714, column: 10, scope: !1507)
!1575 = !DILocation(line: 714, column: 7, scope: !1507)
!1576 = !DILocation(line: 714, column: 19, scope: !1507)
!1577 = !DILocation(line: 714, column: 18, scope: !1507)
!1578 = !DILocation(line: 0, scope: !1507)
!1579 = !DILocation(line: 685, column: 28, scope: !1507)
!1580 = !DILocation(line: 715, column: 9, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1507, file: !3, line: 715, column: 7)
!1582 = !DILocation(line: 715, column: 7, scope: !1507)
!1583 = !DILocation(line: 717, column: 22, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1581, file: !3, line: 716, column: 5)
!1585 = !DILocation(line: 717, column: 38, scope: !1584)
!1586 = !DILocation(line: 717, column: 31, scope: !1584)
!1587 = !DILocation(line: 717, column: 27, scope: !1584)
!1588 = !DILocation(line: 718, column: 14, scope: !1584)
!1589 = !DILocation(line: 718, column: 11, scope: !1584)
!1590 = !DILocation(line: 718, column: 23, scope: !1584)
!1591 = !DILocation(line: 718, column: 22, scope: !1584)
!1592 = !DILocation(line: 720, column: 14, scope: !1584)
!1593 = !DILocation(line: 720, column: 23, scope: !1584)
!1594 = !DILocation(line: 720, column: 19, scope: !1584)
!1595 = !DILocation(line: 687, column: 22, scope: !1507)
!1596 = !DILocation(line: 722, column: 5, scope: !1584)
!1597 = !DILocation(line: 0, scope: !1562)
!1598 = !DILocation(line: 0, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1581, file: !3, line: 724, column: 5)
!1600 = !DILocation(line: 755, column: 3, scope: !1507)
!1601 = distinct !DISubprogram(name: "__d2b", scope: !3, file: !3, line: 759, type: !1602, isLocal: false, isDefinition: true, scopeLine: 766, flags: DIFlagPrototyped, isOptimized: true, unit: !289, retainedNodes: !1604)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!6, !25, !299, !1510, !1510}
!1604 = !{!1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616}
!1605 = !DILocalVariable(name: "ptr", arg: 1, scope: !1601, file: !3, line: 759, type: !25)
!1606 = !DILocalVariable(name: "_d", arg: 2, scope: !1601, file: !3, line: 759, type: !299)
!1607 = !DILocalVariable(name: "e", arg: 3, scope: !1601, file: !3, line: 759, type: !1510)
!1608 = !DILocalVariable(name: "bits", arg: 4, scope: !1601, file: !3, line: 759, type: !1510)
!1609 = !DILocalVariable(name: "d", scope: !1601, file: !3, line: 767, type: !1470)
!1610 = !DILocalVariable(name: "b", scope: !1601, file: !3, line: 768, type: !6)
!1611 = !DILocalVariable(name: "de", scope: !1601, file: !3, line: 769, type: !15)
!1612 = !DILocalVariable(name: "i", scope: !1601, file: !3, line: 769, type: !15)
!1613 = !DILocalVariable(name: "k", scope: !1601, file: !3, line: 769, type: !15)
!1614 = !DILocalVariable(name: "x", scope: !1601, file: !3, line: 770, type: !413)
!1615 = !DILocalVariable(name: "y", scope: !1601, file: !3, line: 770, type: !21)
!1616 = !DILocalVariable(name: "z", scope: !1601, file: !3, line: 770, type: !21)
!1617 = !DILocation(line: 759, column: 1, scope: !1601)
!1618 = !DILocation(line: 767, column: 22, scope: !1601)
!1619 = !DILocation(line: 97, column: 1, scope: !321, inlinedAt: !1620)
!1620 = distinct !DILocation(line: 785, column: 7, scope: !1601)
!1621 = !DILocation(line: 103, column: 7, scope: !331, inlinedAt: !1620)
!1622 = !DILocation(line: 103, column: 31, scope: !331, inlinedAt: !1620)
!1623 = !DILocation(line: 103, column: 7, scope: !321, inlinedAt: !1620)
!1624 = !DILocation(line: 106, column: 53, scope: !344, inlinedAt: !1620)
!1625 = !DILocation(line: 106, column: 31, scope: !344, inlinedAt: !1620)
!1626 = !DILocation(line: 109, column: 35, scope: !347, inlinedAt: !1620)
!1627 = !DILocation(line: 109, column: 11, scope: !344, inlinedAt: !1620)
!1628 = !DILocation(line: 115, column: 13, scope: !350, inlinedAt: !1620)
!1629 = !DILocation(line: 100, column: 12, scope: !321, inlinedAt: !1620)
!1630 = !DILocation(line: 115, column: 41, scope: !350, inlinedAt: !1620)
!1631 = !DILocation(line: 115, column: 7, scope: !321, inlinedAt: !1620)
!1632 = !DILocation(line: 117, column: 40, scope: !356, inlinedAt: !1620)
!1633 = !DILocation(line: 117, column: 34, scope: !356, inlinedAt: !1620)
!1634 = !DILocation(line: 118, column: 5, scope: !356, inlinedAt: !1620)
!1635 = !DILocation(line: 99, column: 7, scope: !321, inlinedAt: !1620)
!1636 = !DILocation(line: 123, column: 24, scope: !362, inlinedAt: !1620)
!1637 = !DILocation(line: 127, column: 14, scope: !366, inlinedAt: !1620)
!1638 = !DILocation(line: 127, column: 11, scope: !362, inlinedAt: !1620)
!1639 = !DILocation(line: 123, column: 12, scope: !362, inlinedAt: !1620)
!1640 = !DILocation(line: 128, column: 11, scope: !362, inlinedAt: !1620)
!1641 = !DILocation(line: 128, column: 14, scope: !362, inlinedAt: !1620)
!1642 = !DILocation(line: 129, column: 11, scope: !362, inlinedAt: !1620)
!1643 = !DILocation(line: 129, column: 19, scope: !362, inlinedAt: !1620)
!1644 = !DILocation(line: 0, scope: !362, inlinedAt: !1620)
!1645 = !DILocation(line: 131, column: 19, scope: !321, inlinedAt: !1620)
!1646 = !DILocation(line: 131, column: 24, scope: !321, inlinedAt: !1620)
!1647 = !DILocation(line: 131, column: 7, scope: !321, inlinedAt: !1620)
!1648 = !DILocation(line: 131, column: 13, scope: !321, inlinedAt: !1620)
!1649 = !DILocation(line: 132, column: 3, scope: !321, inlinedAt: !1620)
!1650 = !DILocation(line: 0, scope: !366, inlinedAt: !1620)
!1651 = !DILocation(line: 133, column: 1, scope: !321, inlinedAt: !1620)
!1652 = !DILocation(line: 768, column: 12, scope: !1601)
!1653 = !DILocation(line: 789, column: 7, scope: !1601)
!1654 = !DILocation(line: 770, column: 12, scope: !1601)
!1655 = !DILocation(line: 791, column: 7, scope: !1601)
!1656 = !DILocation(line: 791, column: 10, scope: !1601)
!1657 = !DILocation(line: 770, column: 18, scope: !1601)
!1658 = !DILocation(line: 799, column: 20, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1601, file: !3, line: 799, column: 7)
!1660 = !DILocation(line: 799, column: 23, scope: !1659)
!1661 = !DILocation(line: 769, column: 7, scope: !1601)
!1662 = !DILocation(line: 799, column: 38, scope: !1659)
!1663 = !DILocation(line: 800, column: 7, scope: !1659)
!1664 = !DILocation(line: 799, column: 7, scope: !1601)
!1665 = !DILocation(line: 804, column: 7, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1601, file: !3, line: 804, column: 7)
!1667 = !DILocation(line: 804, column: 7, scope: !1601)
!1668 = !DILocation(line: 770, column: 15, scope: !1601)
!1669 = !DILocation(line: 272, column: 20, scope: !660, inlinedAt: !1670)
!1670 = distinct !DILocation(line: 807, column: 11, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1666, file: !3, line: 805, column: 5)
!1672 = !DILocation(line: 274, column: 9, scope: !671, inlinedAt: !1670)
!1673 = !DILocation(line: 274, column: 7, scope: !660, inlinedAt: !1670)
!1674 = !DILocation(line: 276, column: 13, scope: !674, inlinedAt: !1670)
!1675 = !DILocation(line: 276, column: 11, scope: !675, inlinedAt: !1670)
!1676 = !DILocation(line: 316, column: 1, scope: !660, inlinedAt: !1670)
!1677 = !DILocation(line: 769, column: 14, scope: !1601)
!1678 = !DILocation(line: 808, column: 11, scope: !1671)
!1679 = !DILocation(line: 278, column: 13, scope: !678, inlinedAt: !1670)
!1680 = !DILocation(line: 278, column: 11, scope: !675, inlinedAt: !1670)
!1681 = !DILocation(line: 280, column: 11, scope: !681, inlinedAt: !1670)
!1682 = !DILocation(line: 281, column: 4, scope: !681, inlinedAt: !1670)
!1683 = !DILocation(line: 283, column: 14, scope: !675, inlinedAt: !1670)
!1684 = !DILocation(line: 284, column: 7, scope: !675, inlinedAt: !1670)
!1685 = !DILocation(line: 271, column: 16, scope: !660, inlinedAt: !1670)
!1686 = !DILocation(line: 287, column: 11, scope: !689, inlinedAt: !1670)
!1687 = !DILocation(line: 290, column: 9, scope: !691, inlinedAt: !1670)
!1688 = !DILocation(line: 287, column: 7, scope: !660, inlinedAt: !1670)
!1689 = !DILocation(line: 292, column: 11, scope: !694, inlinedAt: !1670)
!1690 = !DILocation(line: 294, column: 9, scope: !696, inlinedAt: !1670)
!1691 = !DILocation(line: 295, column: 9, scope: !696, inlinedAt: !1670)
!1692 = !DILocation(line: 292, column: 7, scope: !660, inlinedAt: !1670)
!1693 = !DILocation(line: 297, column: 11, scope: !700, inlinedAt: !1670)
!1694 = !DILocation(line: 299, column: 9, scope: !702, inlinedAt: !1670)
!1695 = !DILocation(line: 300, column: 9, scope: !702, inlinedAt: !1670)
!1696 = !DILocation(line: 297, column: 7, scope: !660, inlinedAt: !1670)
!1697 = !DILocation(line: 302, column: 11, scope: !706, inlinedAt: !1670)
!1698 = !DILocation(line: 304, column: 9, scope: !708, inlinedAt: !1670)
!1699 = !DILocation(line: 305, column: 9, scope: !708, inlinedAt: !1670)
!1700 = !DILocation(line: 302, column: 7, scope: !660, inlinedAt: !1670)
!1701 = !DILocation(line: 307, column: 11, scope: !712, inlinedAt: !1670)
!1702 = !DILocation(line: 307, column: 7, scope: !660, inlinedAt: !1670)
!1703 = !DILocation(line: 309, column: 8, scope: !715, inlinedAt: !1670)
!1704 = !DILocation(line: 310, column: 9, scope: !715, inlinedAt: !1670)
!1705 = !DILocation(line: 311, column: 11, scope: !718, inlinedAt: !1670)
!1706 = !DILocation(line: 311, column: 11, scope: !715, inlinedAt: !1670)
!1707 = !DILocation(line: 0, scope: !715, inlinedAt: !1670)
!1708 = !DILocation(line: 808, column: 11, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1671, file: !3, line: 808, column: 11)
!1710 = !DILocation(line: 810, column: 30, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1709, file: !3, line: 809, column: 2)
!1712 = !DILocation(line: 810, column: 23, scope: !1711)
!1713 = !DILocation(line: 810, column: 19, scope: !1711)
!1714 = !DILocation(line: 810, column: 15, scope: !1711)
!1715 = !DILocation(line: 811, column: 6, scope: !1711)
!1716 = !DILocation(line: 812, column: 2, scope: !1711)
!1717 = !DILocation(line: 814, column: 7, scope: !1709)
!1718 = !DILocation(line: 0, scope: !1711)
!1719 = !DILocation(line: 815, column: 22, scope: !1671)
!1720 = !DILocation(line: 815, column: 27, scope: !1671)
!1721 = !DILocation(line: 815, column: 21, scope: !1671)
!1722 = !DILocation(line: 815, column: 14, scope: !1671)
!1723 = !DILocation(line: 815, column: 19, scope: !1671)
!1724 = !DILocation(line: 769, column: 11, scope: !1601)
!1725 = !DILocation(line: 816, column: 5, scope: !1671)
!1726 = !DILocation(line: 272, column: 20, scope: !660, inlinedAt: !1727)
!1727 = distinct !DILocation(line: 824, column: 11, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1666, file: !3, line: 819, column: 5)
!1729 = !DILocation(line: 274, column: 9, scope: !671, inlinedAt: !1727)
!1730 = !DILocation(line: 274, column: 7, scope: !660, inlinedAt: !1727)
!1731 = !DILocation(line: 276, column: 13, scope: !674, inlinedAt: !1727)
!1732 = !DILocation(line: 276, column: 11, scope: !675, inlinedAt: !1727)
!1733 = !DILocation(line: 278, column: 13, scope: !678, inlinedAt: !1727)
!1734 = !DILocation(line: 278, column: 11, scope: !675, inlinedAt: !1727)
!1735 = !DILocation(line: 280, column: 11, scope: !681, inlinedAt: !1727)
!1736 = !DILocation(line: 281, column: 4, scope: !681, inlinedAt: !1727)
!1737 = !DILocation(line: 283, column: 14, scope: !675, inlinedAt: !1727)
!1738 = !DILocation(line: 284, column: 7, scope: !675, inlinedAt: !1727)
!1739 = !DILocation(line: 271, column: 16, scope: !660, inlinedAt: !1727)
!1740 = !DILocation(line: 287, column: 11, scope: !689, inlinedAt: !1727)
!1741 = !DILocation(line: 290, column: 9, scope: !691, inlinedAt: !1727)
!1742 = !DILocation(line: 287, column: 7, scope: !660, inlinedAt: !1727)
!1743 = !DILocation(line: 292, column: 11, scope: !694, inlinedAt: !1727)
!1744 = !DILocation(line: 294, column: 9, scope: !696, inlinedAt: !1727)
!1745 = !DILocation(line: 295, column: 9, scope: !696, inlinedAt: !1727)
!1746 = !DILocation(line: 292, column: 7, scope: !660, inlinedAt: !1727)
!1747 = !DILocation(line: 297, column: 11, scope: !700, inlinedAt: !1727)
!1748 = !DILocation(line: 299, column: 9, scope: !702, inlinedAt: !1727)
!1749 = !DILocation(line: 300, column: 9, scope: !702, inlinedAt: !1727)
!1750 = !DILocation(line: 297, column: 7, scope: !660, inlinedAt: !1727)
!1751 = !DILocation(line: 302, column: 11, scope: !706, inlinedAt: !1727)
!1752 = !DILocation(line: 304, column: 9, scope: !708, inlinedAt: !1727)
!1753 = !DILocation(line: 305, column: 9, scope: !708, inlinedAt: !1727)
!1754 = !DILocation(line: 302, column: 7, scope: !660, inlinedAt: !1727)
!1755 = !DILocation(line: 307, column: 11, scope: !712, inlinedAt: !1727)
!1756 = !DILocation(line: 307, column: 7, scope: !660, inlinedAt: !1727)
!1757 = !DILocation(line: 309, column: 8, scope: !715, inlinedAt: !1727)
!1758 = !DILocation(line: 310, column: 9, scope: !715, inlinedAt: !1727)
!1759 = !DILocation(line: 311, column: 11, scope: !718, inlinedAt: !1727)
!1760 = !DILocation(line: 311, column: 11, scope: !715, inlinedAt: !1727)
!1761 = !DILocation(line: 0, scope: !715, inlinedAt: !1727)
!1762 = !DILocation(line: 315, column: 3, scope: !660, inlinedAt: !1727)
!1763 = !DILocation(line: 0, scope: !1728)
!1764 = !DILocation(line: 0, scope: !718, inlinedAt: !1727)
!1765 = !DILocation(line: 316, column: 1, scope: !660, inlinedAt: !1727)
!1766 = !DILocation(line: 825, column: 12, scope: !1728)
!1767 = !DILocation(line: 826, column: 14, scope: !1728)
!1768 = !DILocation(line: 826, column: 19, scope: !1728)
!1769 = !DILocation(line: 828, column: 9, scope: !1728)
!1770 = !DILocation(line: 0, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1772, file: !3, line: 899, column: 5)
!1772 = distinct !DILexicalBlock(scope: !1601, file: !3, line: 886, column: 7)
!1773 = !DILocation(line: 886, column: 7, scope: !1601)
!1774 = !DILocation(line: 893, column: 32, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1772, file: !3, line: 887, column: 5)
!1776 = !DILocation(line: 893, column: 10, scope: !1775)
!1777 = !DILocation(line: 894, column: 17, scope: !1775)
!1778 = !DILocation(line: 897, column: 5, scope: !1775)
!1779 = !DILocation(line: 900, column: 36, scope: !1771)
!1780 = !DILocation(line: 900, column: 10, scope: !1771)
!1781 = !DILocation(line: 902, column: 18, scope: !1771)
!1782 = !DILocation(line: 902, column: 37, scope: !1771)
!1783 = !DILocation(line: 902, column: 33, scope: !1771)
!1784 = !DILocation(line: 234, column: 1, scope: !617, inlinedAt: !1785)
!1785 = distinct !DILocation(line: 902, column: 24, scope: !1771)
!1786 = !DILocation(line: 237, column: 16, scope: !617, inlinedAt: !1785)
!1787 = !DILocation(line: 239, column: 11, scope: !626, inlinedAt: !1785)
!1788 = !DILocation(line: 242, column: 9, scope: !628, inlinedAt: !1785)
!1789 = !DILocation(line: 239, column: 7, scope: !617, inlinedAt: !1785)
!1790 = !DILocation(line: 244, column: 11, scope: !631, inlinedAt: !1785)
!1791 = !DILocation(line: 246, column: 9, scope: !633, inlinedAt: !1785)
!1792 = !DILocation(line: 247, column: 9, scope: !633, inlinedAt: !1785)
!1793 = !DILocation(line: 244, column: 7, scope: !617, inlinedAt: !1785)
!1794 = !DILocation(line: 249, column: 11, scope: !637, inlinedAt: !1785)
!1795 = !DILocation(line: 251, column: 9, scope: !639, inlinedAt: !1785)
!1796 = !DILocation(line: 252, column: 9, scope: !639, inlinedAt: !1785)
!1797 = !DILocation(line: 249, column: 7, scope: !617, inlinedAt: !1785)
!1798 = !DILocation(line: 254, column: 11, scope: !643, inlinedAt: !1785)
!1799 = !DILocation(line: 256, column: 9, scope: !645, inlinedAt: !1785)
!1800 = !DILocation(line: 257, column: 9, scope: !645, inlinedAt: !1785)
!1801 = !DILocation(line: 254, column: 7, scope: !617, inlinedAt: !1785)
!1802 = !DILocation(line: 259, column: 11, scope: !649, inlinedAt: !1785)
!1803 = !DILocation(line: 259, column: 7, scope: !617, inlinedAt: !1785)
!1804 = !DILocation(line: 261, column: 8, scope: !652, inlinedAt: !1785)
!1805 = !DILocation(line: 262, column: 15, scope: !654, inlinedAt: !1785)
!1806 = !DILocation(line: 262, column: 11, scope: !652, inlinedAt: !1785)
!1807 = !DILocation(line: 0, scope: !652, inlinedAt: !1785)
!1808 = !DILocation(line: 265, column: 3, scope: !617, inlinedAt: !1785)
!1809 = !DILocation(line: 0, scope: !654, inlinedAt: !1785)
!1810 = !DILocation(line: 266, column: 1, scope: !617, inlinedAt: !1785)
!1811 = !DILocation(line: 902, column: 22, scope: !1771)
!1812 = !DILocation(line: 0, scope: !1775)
!1813 = !DILocation(line: 908, column: 3, scope: !1601)
!1814 = distinct !DISubprogram(name: "__ratio", scope: !3, file: !3, line: 914, type: !1815, isLocal: false, isDefinition: true, scopeLine: 916, flags: DIFlagPrototyped, isOptimized: true, unit: !289, retainedNodes: !1817)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{!299, !6, !6}
!1817 = !{!1818, !1819, !1820, !1821, !1822, !1823, !1824}
!1818 = !DILocalVariable(name: "a", arg: 1, scope: !1814, file: !3, line: 914, type: !6)
!1819 = !DILocalVariable(name: "b", arg: 2, scope: !1814, file: !3, line: 914, type: !6)
!1820 = !DILocalVariable(name: "da", scope: !1814, file: !3, line: 917, type: !1470)
!1821 = !DILocalVariable(name: "db", scope: !1814, file: !3, line: 917, type: !1470)
!1822 = !DILocalVariable(name: "k", scope: !1814, file: !3, line: 918, type: !15)
!1823 = !DILocalVariable(name: "ka", scope: !1814, file: !3, line: 918, type: !15)
!1824 = !DILocalVariable(name: "kb", scope: !1814, file: !3, line: 918, type: !15)
!1825 = !DILocation(line: 914, column: 1, scope: !1814)
!1826 = !DILocation(line: 918, column: 3, scope: !1814)
!1827 = !DILocation(line: 918, column: 10, scope: !1814)
!1828 = !DILocation(line: 920, column: 10, scope: !1814)
!1829 = !DILocation(line: 917, column: 22, scope: !1814)
!1830 = !DILocation(line: 918, column: 14, scope: !1814)
!1831 = !DILocation(line: 921, column: 10, scope: !1814)
!1832 = !DILocation(line: 917, column: 26, scope: !1814)
!1833 = !DILocation(line: 923, column: 7, scope: !1814)
!1834 = !DILocation(line: 923, column: 12, scope: !1814)
!1835 = !DILocation(line: 923, column: 10, scope: !1814)
!1836 = !DILocation(line: 923, column: 26, scope: !1814)
!1837 = !DILocation(line: 923, column: 36, scope: !1814)
!1838 = !DILocation(line: 923, column: 31, scope: !1814)
!1839 = !DILocation(line: 923, column: 20, scope: !1814)
!1840 = !DILocation(line: 923, column: 15, scope: !1814)
!1841 = !DILocation(line: 918, column: 7, scope: !1814)
!1842 = !DILocation(line: 942, column: 9, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1814, file: !3, line: 942, column: 7)
!1844 = !DILocation(line: 0, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1843, file: !3, line: 945, column: 5)
!1846 = !DILocation(line: 942, column: 7, scope: !1814)
!1847 = !DILocation(line: 943, column: 16, scope: !1843)
!1848 = !DILocation(line: 943, column: 5, scope: !1843)
!1849 = !DILocation(line: 947, column: 18, scope: !1845)
!1850 = !DILocation(line: 0, scope: !1814)
!1851 = !DILocation(line: 950, column: 15, scope: !1814)
!1852 = !DILocation(line: 951, column: 1, scope: !1814)
!1853 = !DILocation(line: 950, column: 3, scope: !1814)
!1854 = distinct !DISubprogram(name: "_mprec_log10", scope: !3, file: !3, line: 979, type: !1855, isLocal: false, isDefinition: true, scopeLine: 981, flags: DIFlagPrototyped, isOptimized: true, unit: !289, retainedNodes: !1857)
!1855 = !DISubroutineType(types: !1856)
!1856 = !{!299, !15}
!1857 = !{!1858, !1859}
!1858 = !DILocalVariable(name: "dig", arg: 1, scope: !1854, file: !3, line: 979, type: !15)
!1859 = !DILocalVariable(name: "v", scope: !1854, file: !3, line: 982, type: !299)
!1860 = !DILocation(line: 979, column: 1, scope: !1854)
!1861 = !DILocation(line: 982, column: 10, scope: !1854)
!1862 = !DILocation(line: 983, column: 11, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1854, file: !3, line: 983, column: 7)
!1864 = !DILocation(line: 983, column: 7, scope: !1854)
!1865 = !DILocation(line: 984, column: 12, scope: !1863)
!1866 = !{!1867, !1867, i64 0}
!1867 = !{!"double", !335, i64 0}
!1868 = !DILocation(line: 984, column: 5, scope: !1863)
!1869 = !DILocation(line: 987, column: 9, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1854, file: !3, line: 986, column: 5)
!1871 = !DILocation(line: 988, column: 10, scope: !1870)
!1872 = !DILocation(line: 985, column: 14, scope: !1854)
!1873 = !DILocation(line: 985, column: 3, scope: !1854)
!1874 = distinct !{!1874, !1873, !1875}
!1875 = !DILocation(line: 989, column: 5, scope: !1854)
!1876 = !DILocation(line: 0, scope: !1854)
!1877 = !DILocation(line: 991, column: 1, scope: !1854)
!1878 = distinct !DISubprogram(name: "__copybits", scope: !3, file: !3, line: 994, type: !1879, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !289, retainedNodes: !1881)
!1879 = !DISubroutineType(types: !1880)
!1880 = !{null, !413, !15, !6}
!1881 = !{!1882, !1883, !1884, !1885, !1886, !1887}
!1882 = !DILocalVariable(name: "c", arg: 1, scope: !1878, file: !3, line: 994, type: !413)
!1883 = !DILocalVariable(name: "n", arg: 2, scope: !1878, file: !3, line: 994, type: !15)
!1884 = !DILocalVariable(name: "b", arg: 3, scope: !1878, file: !3, line: 994, type: !6)
!1885 = !DILocalVariable(name: "ce", scope: !1878, file: !3, line: 999, type: !413)
!1886 = !DILocalVariable(name: "x", scope: !1878, file: !3, line: 999, type: !413)
!1887 = !DILocalVariable(name: "xe", scope: !1878, file: !3, line: 999, type: !413)
!1888 = !DILocation(line: 994, column: 1, scope: !1878)
!1889 = !DILocation(line: 1004, column: 14, scope: !1878)
!1890 = !DILocation(line: 1004, column: 18, scope: !1878)
!1891 = !DILocation(line: 1004, column: 9, scope: !1878)
!1892 = !DILocation(line: 1004, column: 29, scope: !1878)
!1893 = !DILocation(line: 999, column: 11, scope: !1878)
!1894 = !DILocation(line: 1007, column: 14, scope: !1878)
!1895 = !DILocation(line: 1007, column: 9, scope: !1878)
!1896 = !DILocation(line: 999, column: 20, scope: !1878)
!1897 = !DILocation(line: 1008, column: 10, scope: !1878)
!1898 = !DILocation(line: 1008, column: 2, scope: !1878)
!1899 = !DILocation(line: 1005, column: 6, scope: !1878)
!1900 = !DILocation(line: 999, column: 16, scope: !1878)
!1901 = !DILocation(line: 1009, column: 12, scope: !1878)
!1902 = !DILocation(line: 1009, column: 10, scope: !1878)
!1903 = !DILocation(line: 1009, column: 5, scope: !1878)
!1904 = !DILocation(line: 1009, column: 8, scope: !1878)
!1905 = distinct !{!1905, !859}
!1906 = !{!1907}
!1907 = distinct !{!1907, !1908}
!1908 = distinct !{!1908, !"LVerDomain"}
!1909 = !{!1910}
!1910 = distinct !{!1910, !1908}
!1911 = distinct !{!1911, !1898, !1901, !857}
!1912 = distinct !{!1912, !859}
!1913 = !DILocation(line: 1018, column: 10, scope: !1878)
!1914 = !DILocation(line: 1018, column: 2, scope: !1878)
!1915 = !DILocation(line: 1019, column: 5, scope: !1878)
!1916 = !DILocation(line: 1019, column: 8, scope: !1878)
!1917 = distinct !{!1917, !1914, !1918, !857}
!1918 = !DILocation(line: 1019, column: 10, scope: !1878)
!1919 = distinct !{!1919, !859}
!1920 = distinct !{!1920, !1898, !1901, !857}
!1921 = distinct !{!1921, !1914, !1918, !862, !857}
!1922 = !DILocation(line: 1020, column: 1, scope: !1878)
!1923 = distinct !DISubprogram(name: "__any_on", scope: !3, file: !3, line: 1023, type: !1924, isLocal: false, isDefinition: true, scopeLine: 1026, flags: DIFlagPrototyped, isOptimized: true, unit: !289, retainedNodes: !1926)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{!21, !6, !15}
!1926 = !{!1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934}
!1927 = !DILocalVariable(name: "b", arg: 1, scope: !1923, file: !3, line: 1023, type: !6)
!1928 = !DILocalVariable(name: "k", arg: 2, scope: !1923, file: !3, line: 1023, type: !15)
!1929 = !DILocalVariable(name: "n", scope: !1923, file: !3, line: 1027, type: !15)
!1930 = !DILocalVariable(name: "nwds", scope: !1923, file: !3, line: 1027, type: !15)
!1931 = !DILocalVariable(name: "x", scope: !1923, file: !3, line: 1028, type: !413)
!1932 = !DILocalVariable(name: "x0", scope: !1923, file: !3, line: 1028, type: !413)
!1933 = !DILocalVariable(name: "x1", scope: !1923, file: !3, line: 1028, type: !21)
!1934 = !DILocalVariable(name: "x2", scope: !1923, file: !3, line: 1028, type: !21)
!1935 = !DILocation(line: 1023, column: 1, scope: !1923)
!1936 = !DILocation(line: 1030, column: 6, scope: !1923)
!1937 = !DILocation(line: 1028, column: 11, scope: !1923)
!1938 = !DILocation(line: 1031, column: 12, scope: !1923)
!1939 = !DILocation(line: 1027, column: 9, scope: !1923)
!1940 = !DILocation(line: 1032, column: 8, scope: !1923)
!1941 = !DILocation(line: 1027, column: 6, scope: !1923)
!1942 = !DILocation(line: 1033, column: 8, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1923, file: !3, line: 1033, column: 6)
!1944 = !DILocation(line: 1033, column: 6, scope: !1923)
!1945 = !DILocation(line: 1035, column: 13, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1943, file: !3, line: 1035, column: 11)
!1947 = !DILocation(line: 1035, column: 20, scope: !1946)
!1948 = !DILocation(line: 1035, column: 26, scope: !1946)
!1949 = !DILocation(line: 1035, column: 11, scope: !1943)
!1950 = !DILocation(line: 1036, column: 13, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1946, file: !3, line: 1035, column: 37)
!1952 = !DILocation(line: 1028, column: 23, scope: !1923)
!1953 = !DILocation(line: 1028, column: 19, scope: !1923)
!1954 = !DILocation(line: 1038, column: 6, scope: !1951)
!1955 = !DILocation(line: 1039, column: 10, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1951, file: !3, line: 1039, column: 7)
!1957 = !DILocation(line: 1039, column: 7, scope: !1951)
!1958 = !DILocation(line: 0, scope: !1923)
!1959 = !DILocation(line: 1028, column: 15, scope: !1923)
!1960 = !DILocation(line: 1043, column: 4, scope: !1923)
!1961 = !DILocation(line: 1044, column: 2, scope: !1923)
!1962 = !DILocation(line: 0, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1923, file: !3, line: 1045, column: 7)
!1964 = !DILocation(line: 1044, column: 10, scope: !1923)
!1965 = !DILocation(line: 1045, column: 8, scope: !1963)
!1966 = !DILocation(line: 1045, column: 7, scope: !1963)
!1967 = !DILocation(line: 1045, column: 7, scope: !1923)
!1968 = distinct !{!1968, !1961, !1969}
!1969 = !DILocation(line: 1046, column: 11, scope: !1923)
!1970 = !DILocation(line: 0, scope: !1956)
!1971 = !DILocation(line: 1048, column: 1, scope: !1923)
