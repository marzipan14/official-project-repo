; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/strtod.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/strtod.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.FPI = type { i32, i32, i32, i32, i32 }
%struct.__locale_t = type { [7 x [32 x i8]], i32 (%struct._reent*, i8*, i32, %struct._mbstate_t*)*, i32 (%struct._reent*, i32*, i8*, i64, %struct._mbstate_t*)*, i32, i8*, %struct.lconv, [2 x i8], [32 x i8], [32 x i8] }
%struct._reent = type { i32, %struct.__sFILE*, %struct.__sFILE*, %struct.__sFILE*, i32, [25 x i8], i32, %struct.__locale_t*, i32, void (%struct._reent*)*, %struct._Bigint*, i32, %struct._Bigint*, %struct._Bigint**, i32, i8*, %union.anon.0, %struct._atexit*, %struct._atexit, void (i32)**, %struct._glue, [3 x %struct.__sFILE] }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i64, i32)*, i32 (%struct._reent*, i8*)*, %struct.__sbuf, i8*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64, %struct._reent*, i32, %struct._mbstate_t, i32 }
%struct.__sbuf = type { i8*, i32 }
%struct._mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct._Bigint = type { %struct._Bigint*, i32, i32, i32, i32, [1 x i32] }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { [30 x i8*], [30 x i32] }
%struct._atexit = type { %struct._atexit*, i32, [32 x void ()*], %struct._on_exit_args }
%struct._on_exit_args = type { [32 x i8*], [32 x i8*], i32, i32 }
%struct._glue = type { %struct._glue*, i32, %struct.__sFILE* }
%struct.lconv = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@_strtod_l.fpi = internal constant %struct.FPI { i32 53, i32 -1074, i32 971, i32 1, i32 0 }, align 4, !dbg !0
@_strtod_l.fpinan = internal constant %struct.FPI { i32 52, i32 -1074, i32 971, i32 1, i32 0 }, align 4, !dbg !319
@.str = private unnamed_addr constant [3 x i8] c"nf\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"inity\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"an\00", align 1
@__mprec_tens = external dso_local local_unnamed_addr constant [0 x double], align 8
@__mprec_bigtens = external dso_local local_unnamed_addr constant [0 x double], align 8
@tinytens = internal unnamed_addr constant [5 x double] [double 0x3C9CD2B297D889BC, double 1.000000e-32, double 0x32A50FFD44F4A73D, double 1.000000e-128, double 0x1168062864AC6F43], align 16, !dbg !330
@__global_locale = external dso_local global %struct.__locale_t, align 8
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local double @_strtod_l(%struct._reent*, i8* noalias, i8** noalias, %struct.__locale_t*) local_unnamed_addr #0 !dbg !2 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct._Bigint*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca [2 x i32], align 4
  %12 = bitcast i32* %5 to i8*, !dbg !412
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #4, !dbg !412
  %13 = bitcast i32* %6 to i8*, !dbg !412
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13) #4, !dbg !412
  %14 = bitcast i8** %7 to i8*, !dbg !413
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #4, !dbg !413
  %15 = bitcast %struct._Bigint** %8 to i8*, !dbg !414
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %15) #4, !dbg !414
  store %struct._Bigint* null, %struct._Bigint** %8, align 8, !dbg !415, !tbaa !416
  %16 = tail call %struct.lconv* @__localeconv_l(%struct.__locale_t* %3) #5, !dbg !423
  %17 = getelementptr inbounds %struct.lconv, %struct.lconv* %16, i64 0, i32 0, !dbg !425
  %18 = load i8*, i8** %17, align 8, !dbg !425, !tbaa !426
  %19 = tail call i64 @strlen(i8* %18) #5, !dbg !428
  br label %20, !dbg !434

; <label>:20:                                     ; preds = %30, %4
  %21 = phi i8* [ %1, %4 ], [ %31, %30 ]
  store i8* %21, i8** %7, align 8, !dbg !436, !tbaa !416
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !438
  %22 = load i8, i8* %21, align 1, !dbg !439, !tbaa !440
  %23 = sext i8 %22 to i32, !dbg !439
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !441
  switch i32 %23, label %32 [
    i32 45, label %24
    i32 43, label %25
    i32 0, label %386
    i32 9, label %30
    i32 10, label %30
    i32 11, label %30
    i32 12, label %30
    i32 13, label %30
    i32 32, label %30
  ], !dbg !441

; <label>:24:                                     ; preds = %20
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !442
  br label %25, !dbg !442

; <label>:25:                                     ; preds = %20, %24
  %26 = phi i32 [ 1, %24 ], [ 0, %20 ], !dbg !444
  %27 = getelementptr inbounds i8, i8* %21, i64 1, !dbg !445
  store i8* %27, i8** %7, align 8, !dbg !445, !tbaa !416
  %28 = load i8, i8* %27, align 1, !dbg !447, !tbaa !440
  %29 = icmp eq i8 %28, 0, !dbg !447
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !448
  br i1 %29, label %386, label %32, !dbg !448

; <label>:30:                                     ; preds = %20, %20, %20, %20, %20, %20
  %31 = getelementptr inbounds i8, i8* %21, i64 1, !dbg !449
  br label %20, !dbg !450, !llvm.loop !451

; <label>:32:                                     ; preds = %20, %25
  %33 = phi i8 [ %28, %25 ], [ %22, %20 ], !dbg !454
  %34 = phi i8* [ %27, %25 ], [ %21, %20 ], !dbg !455
  %35 = phi i32 [ %26, %25 ], [ 0, %20 ], !dbg !456
  %36 = icmp eq i8 %33, 48, !dbg !457
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !458
  br i1 %36, label %37, label %101, !dbg !458

; <label>:37:                                     ; preds = %32
  %38 = bitcast i32* %9 to i8*, !dbg !459
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %38) #4, !dbg !459
  %39 = bitcast [2 x i32]* %10 to i8*, !dbg !460
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %39) #4, !dbg !460
  %40 = getelementptr inbounds i8, i8* %34, i64 1, !dbg !462
  %41 = load i8, i8* %40, align 1, !dbg !462, !tbaa !440
  %42 = sext i8 %41 to i32, !dbg !462
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !463
  switch i32 %42, label %93 [
    i32 120, label %43
    i32 88, label %43
  ], !dbg !463

; <label>:43:                                     ; preds = %37, %37
  %44 = call i32 @__gethex(%struct._reent* %0, i8** nonnull %7, %struct.FPI* nonnull @_strtod_l.fpi, i32* nonnull %9, %struct._Bigint** nonnull %8, i32 %35, %struct.__locale_t* %3) #5, !dbg !465
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !469
  %45 = trunc i32 %44 to i3, !dbg !469
  switch i3 %45, label %47 [
    i3 -2, label %46
    i3 0, label %90
  ], !dbg !469

; <label>:46:                                     ; preds = %43
  store i8* %40, i8** %7, align 8, !dbg !470, !tbaa !416
  br label %87, !dbg !472

; <label>:47:                                     ; preds = %43
  %48 = load %struct._Bigint*, %struct._Bigint** %8, align 8, !dbg !473, !tbaa !416
  %49 = icmp eq %struct._Bigint* %48, null, !dbg !473
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !475
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0, !dbg !476
  br i1 %49, label %53, label %51, !dbg !475

; <label>:51:                                     ; preds = %47
  call void @__copybits(i32* nonnull %50, i32 53, %struct._Bigint* nonnull %48) #5, !dbg !478
  %52 = load %struct._Bigint*, %struct._Bigint** %8, align 8, !dbg !479, !tbaa !416
  call void @_Bfree(%struct._reent* %0, %struct._Bigint* %52) #5, !dbg !480
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !481
  br label %53, !dbg !481

; <label>:53:                                     ; preds = %47, %51
  %54 = load i32, i32* %9, align 4, !dbg !482, !tbaa !483
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !496
  switch i3 %45, label %79 [
    i3 -2, label %77
    i3 -4, label %76
    i3 2, label %55
    i3 1, label %63
    i3 -3, label %63
    i3 3, label %75
  ], !dbg !496

; <label>:55:                                     ; preds = %53
  %56 = load i32, i32* %50, align 4, !dbg !497, !tbaa !483
  %57 = zext i32 %56 to i64, !dbg !499
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1, !dbg !500
  %59 = load i32, i32* %58, align 4, !dbg !500, !tbaa !483
  %60 = zext i32 %59 to i64, !dbg !501
  %61 = shl nuw i64 %60, 32, !dbg !501
  %62 = or i64 %61, %57, !dbg !501
  br label %77, !dbg !502

; <label>:63:                                     ; preds = %53, %53
  %64 = load i32, i32* %50, align 4, !dbg !503, !tbaa !483
  %65 = zext i32 %64 to i64, !dbg !504
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1, !dbg !505
  %67 = load i32, i32* %66, align 4, !dbg !505, !tbaa !483
  %68 = and i32 %67, -1048577, !dbg !506
  %69 = shl i32 %54, 20, !dbg !507
  %70 = add i32 %69, 1127219200, !dbg !507
  %71 = or i32 %68, %70, !dbg !508
  %72 = zext i32 %71 to i64, !dbg !509
  %73 = shl nuw i64 %72, 32, !dbg !509
  %74 = or i64 %73, %65, !dbg !509
  br label %77, !dbg !510

; <label>:75:                                     ; preds = %53
  br label %77, !dbg !511

; <label>:76:                                     ; preds = %53
  br label %77, !dbg !512

; <label>:77:                                     ; preds = %53, %55, %63, %75, %76
  %78 = phi i64 [ %62, %55 ], [ %74, %63 ], [ 9218868437227405312, %75 ], [ 9223372036854775807, %76 ], [ 0, %53 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !513
  br label %79, !dbg !514

; <label>:79:                                     ; preds = %77, %53
  %80 = phi i64 [ 0, %53 ], [ %78, %77 ], !dbg !513
  %81 = and i32 %44, 8, !dbg !514
  %82 = icmp eq i32 %81, 0, !dbg !514
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !516
  br i1 %82, label %85, label %83, !dbg !516

; <label>:83:                                     ; preds = %79
  %84 = or i64 %80, -9223372036854775808, !dbg !517
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !518
  br label %85, !dbg !518

; <label>:85:                                     ; preds = %79, %83
  %86 = phi i64 [ %80, %79 ], [ %84, %83 ], !dbg !513
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !519
  br label %87, !dbg !520

; <label>:87:                                     ; preds = %85, %46
  %88 = phi i64 [ 0, %46 ], [ %86, %85 ]
  %89 = phi i32 [ 0, %46 ], [ %35, %85 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !513
  br label %90, !dbg !521

; <label>:90:                                     ; preds = %87, %43
  %91 = phi i64 [ 0, %43 ], [ %88, %87 ], !dbg !522
  %92 = phi i32 [ %35, %43 ], [ %89, %87 ], !dbg !513
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !521
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %39) #4, !dbg !523
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %38) #4, !dbg !523
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %964

; <label>:93:                                     ; preds = %37
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !523
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %39) #4, !dbg !523
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %38) #4, !dbg !523
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !524
  br label %94, !dbg !524

; <label>:94:                                     ; preds = %94, %93
  %95 = phi i8* [ %96, %94 ], [ %34, %93 ], !dbg !525
  %96 = getelementptr inbounds i8, i8* %95, i64 1, !dbg !525
  store i8* %96, i8** %7, align 8, !dbg !525, !tbaa !416
  %97 = load i8, i8* %96, align 1, !dbg !526, !tbaa !440
  %98 = icmp eq i8 %97, 48, !dbg !527
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !524
  br i1 %98, label %94, label %99, !dbg !524, !llvm.loop !528

; <label>:99:                                     ; preds = %94
  %100 = icmp eq i8 %97, 0, !dbg !530
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !532
  br i1 %100, label %964, label %101, !dbg !532

; <label>:101:                                    ; preds = %99, %32
  %102 = phi i8 [ %97, %99 ], [ %33, %32 ], !dbg !533
  %103 = phi i8* [ %96, %99 ], [ %34, %32 ], !dbg !536
  %104 = phi i32 [ 1, %99 ], [ 0, %32 ], !dbg !537
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !543
  %105 = sext i8 %102 to i32, !dbg !533
  %106 = add i8 %102, -48, !dbg !545
  %107 = icmp ult i8 %106, 10, !dbg !545
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !546
  br i1 %107, label %108, label %134, !dbg !546

; <label>:108:                                    ; preds = %101, %123
  %109 = phi i32 [ %129, %123 ], [ %105, %101 ]
  %110 = phi i8* [ %127, %123 ], [ %103, %101 ]
  %111 = phi i32 [ %125, %123 ], [ 0, %101 ]
  %112 = phi i32 [ %124, %123 ], [ 0, %101 ]
  %113 = phi i32 [ %126, %123 ], [ 0, %101 ]
  %114 = icmp ult i32 %113, 9, !dbg !547
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !549
  br i1 %114, label %115, label %119, !dbg !549

; <label>:115:                                    ; preds = %108
  %116 = mul i32 %112, 10, !dbg !550
  %117 = add nsw i32 %109, -48, !dbg !551
  %118 = add i32 %117, %116, !dbg !552
  br label %123, !dbg !553

; <label>:119:                                    ; preds = %108
  %120 = mul i32 %111, 10, !dbg !554
  %121 = add nsw i32 %109, -48, !dbg !555
  %122 = add i32 %121, %120, !dbg !556
  br label %123

; <label>:123:                                    ; preds = %115, %119
  %124 = phi i32 [ %118, %115 ], [ %112, %119 ], !dbg !537
  %125 = phi i32 [ %111, %115 ], [ %122, %119 ], !dbg !557
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %126 = add nuw nsw i32 %113, 1, !dbg !558
  %127 = getelementptr inbounds i8, i8* %110, i64 1, !dbg !559
  store i8* %127, i8** %7, align 8, !dbg !559, !tbaa !416
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !560
  %128 = load i8, i8* %127, align 1, !dbg !533, !tbaa !440
  %129 = sext i8 %128 to i32, !dbg !533
  %130 = add i8 %128, -48, !dbg !545
  %131 = icmp ult i8 %130, 10, !dbg !545
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !546
  br i1 %131, label %108, label %132, !dbg !546, !llvm.loop !561

; <label>:132:                                    ; preds = %123
  %133 = sext i8 %128 to i32, !dbg !533
  br label %134, !dbg !563

; <label>:134:                                    ; preds = %132, %101
  %135 = phi i32 [ 0, %101 ], [ %126, %132 ], !dbg !565
  %136 = phi i32 [ 0, %101 ], [ %124, %132 ], !dbg !557
  %137 = phi i32 [ 0, %101 ], [ %125, %132 ], !dbg !566
  %138 = phi i8* [ %103, %101 ], [ %127, %132 ], !dbg !567
  %139 = phi i32 [ %105, %101 ], [ %133, %132 ], !dbg !533
  %140 = load i8*, i8** %17, align 8, !dbg !563, !tbaa !426
  %141 = shl i64 %19, 32, !dbg !569
  %142 = ashr exact i64 %141, 32, !dbg !569
  %143 = tail call i32 @strncmp(i8* %138, i8* %140, i64 %142) #5, !dbg !570
  %144 = icmp eq i32 %143, 0, !dbg !571
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !572
  br i1 %144, label %145, label %258, !dbg !572

; <label>:145:                                    ; preds = %134
  %146 = getelementptr inbounds i8, i8* %138, i64 %142, !dbg !573
  store i8* %146, i8** %7, align 8, !dbg !573, !tbaa !416
  %147 = load i8, i8* %146, align 1, !dbg !575, !tbaa !440
  %148 = sext i8 %147 to i32, !dbg !575
  %149 = icmp eq i32 %135, 0, !dbg !576
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !578
  br i1 %149, label %150, label %168, !dbg !578

; <label>:150:                                    ; preds = %145
  %151 = icmp eq i8 %147, 48, !dbg !579
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !583
  br i1 %151, label %152, label %161, !dbg !583

; <label>:152:                                    ; preds = %150, %152
  %153 = phi i8* [ %156, %152 ], [ %146, %150 ], !dbg !584
  %154 = phi i32 [ %155, %152 ], [ 0, %150 ]
  %155 = add nuw nsw i32 %154, 1, !dbg !585
  %156 = getelementptr inbounds i8, i8* %153, i64 1, !dbg !584
  store i8* %156, i8** %7, align 8, !dbg !584, !tbaa !416
  %157 = load i8, i8* %156, align 1, !dbg !586, !tbaa !440
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !587
  %158 = icmp eq i8 %157, 48, !dbg !579
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !583
  br i1 %158, label %152, label %159, !dbg !583, !llvm.loop !588

; <label>:159:                                    ; preds = %152
  %160 = sext i8 %157 to i32, !dbg !586
  br label %161, !dbg !583

; <label>:161:                                    ; preds = %159, %150
  %162 = phi i8* [ %156, %159 ], [ %146, %150 ]
  %163 = phi i32 [ %160, %159 ], [ %148, %150 ], !dbg !590
  %164 = phi i32 [ %155, %159 ], [ 0, %150 ], !dbg !590
  %165 = add nsw i32 %163, -49, !dbg !591
  %166 = icmp ult i32 %165, 9, !dbg !591
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !591
  br i1 %166, label %167, label %258, !dbg !591

; <label>:167:                                    ; preds = %161
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !593
  br label %180, !dbg !593

; <label>:168:                                    ; preds = %145, %249
  %169 = phi i8* [ %146, %145 ], [ %255, %249 ]
  %170 = phi i32 [ %135, %145 ], [ %182, %249 ]
  %171 = phi i32 [ %148, %145 ], [ %257, %249 ], !dbg !595
  %172 = phi i32 [ %135, %145 ], [ %250, %249 ], !dbg !598
  %173 = phi i32 [ 0, %145 ], [ %251, %249 ], !dbg !603
  %174 = phi i32 [ 0, %145 ], [ %252, %249 ], !dbg !603
  %175 = phi i8* [ %103, %145 ], [ %187, %249 ], !dbg !604
  %176 = phi i32 [ %136, %145 ], [ %253, %249 ], !dbg !598
  %177 = phi i32 [ %137, %145 ], [ %254, %249 ], !dbg !566
  %178 = add nsw i32 %171, -48, !dbg !605
  %179 = icmp ult i32 %178, 10, !dbg !605
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !606
  br i1 %179, label %180, label %258, !dbg !606

; <label>:180:                                    ; preds = %168, %167
  %181 = phi i8* [ %169, %168 ], [ %162, %167 ]
  %182 = phi i32 [ %170, %168 ], [ 0, %167 ]
  %183 = phi i32 [ %171, %168 ], [ %163, %167 ], !dbg !607
  %184 = phi i32 [ %172, %168 ], [ 0, %167 ], !dbg !608
  %185 = phi i32 [ %173, %168 ], [ %164, %167 ], !dbg !609
  %186 = phi i32 [ %174, %168 ], [ 0, %167 ], !dbg !609
  %187 = phi i8* [ %175, %168 ], [ %162, %167 ], !dbg !609
  %188 = phi i32 [ %176, %168 ], [ %136, %167 ], !dbg !610
  %189 = phi i32 [ %177, %168 ], [ %137, %167 ], !dbg !566
  %190 = add i32 %186, 1, !dbg !611
  %191 = add nsw i32 %183, -48, !dbg !612
  %192 = icmp eq i32 %191, 0, !dbg !612
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !613
  br i1 %192, label %249, label %193, !dbg !613

; <label>:193:                                    ; preds = %180
  %194 = add nsw i32 %190, %185, !dbg !614
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !615
  %195 = icmp slt i32 %186, 1, !dbg !617
  %196 = add nsw i32 %184, 1, !dbg !598
  %197 = icmp slt i32 %184, 9, !dbg !598
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !619
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !620
  br i1 %195, label %225, label %198, !dbg !619

; <label>:198:                                    ; preds = %193
  %199 = add i32 %184, %186, !dbg !621
  br label %200, !dbg !621

; <label>:200:                                    ; preds = %216, %198
  %201 = phi i1 [ %221, %216 ], [ %197, %198 ]
  %202 = phi i32 [ %220, %216 ], [ %196, %198 ]
  %203 = phi i32 [ %218, %216 ], [ %189, %198 ]
  %204 = phi i32 [ %217, %216 ], [ %188, %198 ]
  %205 = phi i32 [ %202, %216 ], [ %184, %198 ]
  %206 = phi i32 [ %219, %216 ], [ 1, %198 ]
  br i1 %201, label %207, label %209, !dbg !621

; <label>:207:                                    ; preds = %200
  %208 = mul i32 %204, 10, !dbg !622
  br label %213, !dbg !624

; <label>:209:                                    ; preds = %200
  %210 = icmp slt i32 %205, 16, !dbg !625
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !627
  br i1 %210, label %211, label %216, !dbg !627

; <label>:211:                                    ; preds = %209
  %212 = mul i32 %203, 10, !dbg !628
  br label %213, !dbg !629

; <label>:213:                                    ; preds = %211, %207
  %214 = phi i32 [ %204, %211 ], [ %208, %207 ]
  %215 = phi i32 [ %212, %211 ], [ %203, %207 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !630
  br label %216, !dbg !631

; <label>:216:                                    ; preds = %213, %209
  %217 = phi i32 [ %204, %209 ], [ %214, %213 ], !dbg !537
  %218 = phi i32 [ %203, %209 ], [ %215, %213 ], !dbg !537
  %219 = add nuw nsw i32 %206, 1, !dbg !631
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !632
  %220 = add nsw i32 %202, 1, !dbg !598
  %221 = icmp slt i32 %202, 9, !dbg !598
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !619
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !620
  %222 = icmp eq i32 %219, %190, !dbg !617
  br i1 %222, label %223, label %200, !dbg !619, !llvm.loop !633

; <label>:223:                                    ; preds = %216
  %224 = add i32 %199, 1, !dbg !621
  br i1 %221, label %226, label %232, !dbg !635

; <label>:225:                                    ; preds = %193
  br i1 %197, label %226, label %232, !dbg !635

; <label>:226:                                    ; preds = %223, %225
  %227 = phi i32 [ %224, %223 ], [ %196, %225 ]
  %228 = phi i32 [ %218, %223 ], [ %189, %225 ]
  %229 = phi i32 [ %217, %223 ], [ %188, %225 ]
  %230 = mul i32 %229, 10, !dbg !636
  %231 = add i32 %230, %191, !dbg !637
  br label %241, !dbg !638

; <label>:232:                                    ; preds = %223, %225
  %233 = phi i32 [ %224, %223 ], [ %196, %225 ]
  %234 = phi i32 [ %218, %223 ], [ %189, %225 ]
  %235 = phi i32 [ %217, %223 ], [ %188, %225 ]
  %236 = phi i32 [ %199, %223 ], [ %184, %225 ]
  %237 = icmp slt i32 %236, 16, !dbg !639
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !641
  br i1 %237, label %238, label %245, !dbg !641

; <label>:238:                                    ; preds = %232
  %239 = mul i32 %234, 10, !dbg !642
  %240 = add i32 %239, %191, !dbg !643
  br label %241, !dbg !644

; <label>:241:                                    ; preds = %226, %238
  %242 = phi i32 [ %233, %238 ], [ %227, %226 ]
  %243 = phi i32 [ %235, %238 ], [ %231, %226 ]
  %244 = phi i32 [ %240, %238 ], [ %228, %226 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !598
  br label %245, !dbg !645

; <label>:245:                                    ; preds = %241, %232
  %246 = phi i32 [ %233, %232 ], [ %242, %241 ]
  %247 = phi i32 [ %235, %232 ], [ %243, %241 ], !dbg !537
  %248 = phi i32 [ %234, %232 ], [ %244, %241 ], !dbg !537
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !645
  br label %249, !dbg !645

; <label>:249:                                    ; preds = %180, %245
  %250 = phi i32 [ %246, %245 ], [ %184, %180 ], !dbg !646
  %251 = phi i32 [ %194, %245 ], [ %185, %180 ], !dbg !646
  %252 = phi i32 [ 0, %245 ], [ %190, %180 ], !dbg !647
  %253 = phi i32 [ %247, %245 ], [ %188, %180 ], !dbg !537
  %254 = phi i32 [ %248, %245 ], [ %189, %180 ], !dbg !566
  %255 = getelementptr inbounds i8, i8* %181, i64 1, !dbg !648
  store i8* %255, i8** %7, align 8, !dbg !648, !tbaa !416
  %256 = load i8, i8* %255, align 1, !dbg !649, !tbaa !440
  %257 = sext i8 %256 to i32, !dbg !649
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !650
  br label %168, !dbg !650, !llvm.loop !651

; <label>:258:                                    ; preds = %134, %168, %161
  %259 = phi i8* [ %169, %168 ], [ %162, %161 ], [ %138, %134 ]
  %260 = phi i32 [ %170, %168 ], [ 0, %161 ], [ %135, %134 ]
  %261 = phi i32 [ %171, %168 ], [ %163, %161 ], [ %139, %134 ], !dbg !565
  %262 = phi i32 [ 1, %168 ], [ 1, %161 ], [ 0, %134 ], !dbg !537
  %263 = phi i32 [ %172, %168 ], [ 0, %161 ], [ %135, %134 ], !dbg !608
  %264 = phi i32 [ %173, %168 ], [ 0, %161 ], [ 0, %134 ], !dbg !653
  %265 = phi i32 [ %174, %168 ], [ %164, %161 ], [ 0, %134 ], !dbg !654
  %266 = phi i8* [ %175, %168 ], [ %103, %161 ], [ %103, %134 ], !dbg !604
  %267 = phi i32 [ %176, %168 ], [ %136, %161 ], [ %136, %134 ], !dbg !610
  %268 = phi i32 [ %177, %168 ], [ %137, %161 ], [ %137, %134 ], !dbg !566
  %269 = or i32 %261, 32, !dbg !656
  %270 = icmp eq i32 %269, 101, !dbg !656
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !656
  br i1 %270, label %271, label %342, !dbg !656

; <label>:271:                                    ; preds = %258
  %272 = or i32 %265, %104, !dbg !658
  %273 = or i32 %272, %263, !dbg !658
  %274 = icmp eq i32 %273, 0, !dbg !658
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !658
  br i1 %274, label %386, label %275, !dbg !658

; <label>:275:                                    ; preds = %271
  %276 = getelementptr inbounds i8, i8* %259, i64 1, !dbg !662
  store i8* %276, i8** %7, align 8, !dbg !662, !tbaa !416
  %277 = load i8, i8* %276, align 1, !dbg !663, !tbaa !440
  %278 = sext i8 %277 to i32, !dbg !663
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !664
  switch i32 %278, label %285 [
    i32 45, label %279
    i32 43, label %280
  ], !dbg !664

; <label>:279:                                    ; preds = %275
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !665
  br label %280, !dbg !665

; <label>:280:                                    ; preds = %275, %279
  %281 = phi i32 [ 0, %275 ], [ 1, %279 ], !dbg !667
  %282 = getelementptr inbounds i8, i8* %259, i64 2, !dbg !668
  store i8* %282, i8** %7, align 8, !dbg !668, !tbaa !416
  %283 = load i8, i8* %282, align 1, !dbg !669, !tbaa !440
  %284 = sext i8 %283 to i32, !dbg !669
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !670
  br label %285, !dbg !670

; <label>:285:                                    ; preds = %280, %275
  %286 = phi i8* [ %276, %275 ], [ %282, %280 ]
  %287 = phi i32 [ %278, %275 ], [ %284, %280 ], !dbg !667
  %288 = phi i32 [ 0, %275 ], [ %281, %280 ], !dbg !671
  %289 = add nsw i32 %287, -48, !dbg !672
  %290 = icmp ult i32 %289, 10, !dbg !672
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !672
  br i1 %290, label %291, label %341, !dbg !672

; <label>:291:                                    ; preds = %285
  %292 = icmp eq i32 %287, 48, !dbg !674
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !676
  br i1 %292, label %293, label %300, !dbg !676

; <label>:293:                                    ; preds = %291, %293
  %294 = phi i8* [ %295, %293 ], [ %286, %291 ], !dbg !677
  %295 = getelementptr inbounds i8, i8* %294, i64 1, !dbg !677
  store i8* %295, i8** %7, align 8, !dbg !677, !tbaa !416
  %296 = load i8, i8* %295, align 1, !dbg !678, !tbaa !440
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !676
  %297 = icmp eq i8 %296, 48, !dbg !674
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !676
  br i1 %297, label %293, label %298, !dbg !676, !llvm.loop !679

; <label>:298:                                    ; preds = %293
  %299 = sext i8 %296 to i32, !dbg !678
  br label %300, !dbg !676

; <label>:300:                                    ; preds = %298, %291
  %301 = phi i8* [ %295, %298 ], [ %286, %291 ]
  %302 = phi i32 [ %299, %298 ], [ %287, %291 ], !dbg !681
  %303 = ptrtoint i8* %301 to i64, !dbg !667
  %304 = add nsw i32 %302, -49, !dbg !682
  %305 = icmp ult i32 %304, 9, !dbg !682
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !682
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br i1 %305, label %306, label %342, !dbg !682

; <label>:306:                                    ; preds = %300
  %307 = add nsw i32 %302, -48, !dbg !686
  %308 = getelementptr inbounds i8, i8* %301, i64 1, !dbg !688
  store i8* %308, i8** %7, align 8, !dbg !688, !tbaa !416
  %309 = load i8, i8* %308, align 1, !dbg !689, !tbaa !440
  %310 = sext i8 %309 to i32, !dbg !689
  %311 = add i8 %309, -48, !dbg !690
  %312 = icmp ult i8 %311, 10, !dbg !690
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !691
  br i1 %312, label %313, label %327, !dbg !691

; <label>:313:                                    ; preds = %306, %313
  %314 = phi i8* [ %320, %313 ], [ %308, %306 ], !dbg !688
  %315 = phi i32 [ %322, %313 ], [ %310, %306 ]
  %316 = phi i32 [ %319, %313 ], [ %307, %306 ]
  %317 = mul nsw i32 %316, 10, !dbg !692
  %318 = add nsw i32 %315, %317, !dbg !693
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !691
  %319 = add nsw i32 %318, -48, !dbg !686
  %320 = getelementptr inbounds i8, i8* %314, i64 1, !dbg !688
  store i8* %320, i8** %7, align 8, !dbg !688, !tbaa !416
  %321 = load i8, i8* %320, align 1, !dbg !689, !tbaa !440
  %322 = sext i8 %321 to i32, !dbg !689
  %323 = add i8 %321, -48, !dbg !690
  %324 = icmp ult i8 %323, 10, !dbg !690
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !691
  br i1 %324, label %313, label %325, !dbg !691, !llvm.loop !694

; <label>:325:                                    ; preds = %313
  %326 = sext i8 %321 to i32, !dbg !689
  br label %327, !dbg !696

; <label>:327:                                    ; preds = %325, %306
  %328 = phi i32 [ %302, %306 ], [ %318, %325 ]
  %329 = phi i32 [ %307, %306 ], [ %319, %325 ], !dbg !686
  %330 = phi i8* [ %308, %306 ], [ %320, %325 ], !dbg !688
  %331 = phi i32 [ %310, %306 ], [ %326, %325 ], !dbg !689
  %332 = ptrtoint i8* %330 to i64, !dbg !696
  %333 = sub i64 %332, %303, !dbg !696
  %334 = icmp sgt i64 %333, 8, !dbg !698
  %335 = icmp sgt i32 %328, 20047, !dbg !699
  %336 = or i1 %335, %334, !dbg !700
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !700
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %337 = select i1 %336, i32 19999, i32 %329, !dbg !701
  %338 = icmp eq i32 %288, 0, !dbg !702
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !704
  br i1 %338, label %342, label %339, !dbg !704

; <label>:339:                                    ; preds = %327
  %340 = sub nsw i32 0, %337, !dbg !705
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !706
  br label %342, !dbg !706

; <label>:341:                                    ; preds = %285
  store i8* %259, i8** %7, align 8, !dbg !707, !tbaa !416
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %342

; <label>:342:                                    ; preds = %300, %327, %341, %339, %258
  %343 = phi i32 [ %331, %339 ], [ %331, %327 ], [ %287, %341 ], [ %261, %258 ], [ %302, %300 ], !dbg !708
  %344 = phi i32 [ %340, %339 ], [ %337, %327 ], [ 0, %341 ], [ 0, %258 ], [ 0, %300 ], !dbg !537
  %345 = phi i8* [ %259, %339 ], [ %259, %327 ], [ %259, %341 ], [ %1, %258 ], [ %259, %300 ]
  %346 = icmp eq i32 %263, 0, !dbg !709
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !710
  br i1 %346, label %347, label %388, !dbg !710

; <label>:347:                                    ; preds = %342
  %348 = or i32 %265, %104, !dbg !711
  %349 = icmp eq i32 %348, 0, !dbg !711
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !711
  br i1 %349, label %350, label %964, !dbg !711

; <label>:350:                                    ; preds = %347
  %351 = icmp eq i32 %262, 0, !dbg !713
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !715
  br i1 %351, label %352, label %386, !dbg !715

; <label>:352:                                    ; preds = %350
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !716
  switch i32 %343, label %386 [
    i32 105, label %353
    i32 73, label %353
    i32 110, label %365
    i32 78, label %365
  ], !dbg !716

; <label>:353:                                    ; preds = %352, %352
  %354 = call i32 @__match(i8** nonnull %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #5, !dbg !717
  %355 = icmp eq i32 %354, 0, !dbg !717
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !720
  br i1 %355, label %386, label %356, !dbg !720

; <label>:356:                                    ; preds = %353
  %357 = load i8*, i8** %7, align 8, !dbg !721, !tbaa !416
  %358 = getelementptr inbounds i8, i8* %357, i64 -1, !dbg !721
  store i8* %358, i8** %7, align 8, !dbg !721, !tbaa !416
  %359 = call i32 @__match(i8** nonnull %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !723
  %360 = icmp eq i32 %359, 0, !dbg !723
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !725
  br i1 %360, label %361, label %364, !dbg !725

; <label>:361:                                    ; preds = %356
  %362 = load i8*, i8** %7, align 8, !dbg !726, !tbaa !416
  %363 = getelementptr inbounds i8, i8* %362, i64 1, !dbg !726
  store i8* %363, i8** %7, align 8, !dbg !726, !tbaa !416
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !726
  br label %364, !dbg !726

; <label>:364:                                    ; preds = %356, %361
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !727
  br label %964, !dbg !727

; <label>:365:                                    ; preds = %352, %352
  %366 = call i32 @__match(i8** nonnull %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #5, !dbg !728
  %367 = icmp eq i32 %366, 0, !dbg !728
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !730
  br i1 %367, label %386, label %368, !dbg !730

; <label>:368:                                    ; preds = %365
  %369 = load i8*, i8** %7, align 8, !dbg !731, !tbaa !416
  %370 = load i8, i8* %369, align 1, !dbg !734, !tbaa !440
  %371 = icmp eq i8 %370, 40, !dbg !735
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !736
  br i1 %371, label %372, label %385, !dbg !736

; <label>:372:                                    ; preds = %368
  %373 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0, !dbg !737
  %374 = call i32 @__hexnan(i8** nonnull %7, %struct.FPI* nonnull @_strtod_l.fpinan, i32* nonnull %373) #5, !dbg !738
  %375 = icmp eq i32 %374, 5, !dbg !739
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !740
  br i1 %375, label %376, label %385, !dbg !740

; <label>:376:                                    ; preds = %372
  %377 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1, !dbg !741
  %378 = load i32, i32* %377, align 4, !dbg !741, !tbaa !483
  %379 = or i32 %378, 2146435072, !dbg !743
  %380 = zext i32 %379 to i64, !dbg !744
  %381 = shl nuw i64 %380, 32, !dbg !744
  %382 = load i32, i32* %373, align 4, !dbg !745, !tbaa !483
  %383 = zext i32 %382 to i64, !dbg !746
  %384 = or i64 %381, %383, !dbg !746
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !747
  br label %964, !dbg !747

; <label>:385:                                    ; preds = %372, %368
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %964

; <label>:386:                                    ; preds = %20, %271, %353, %365, %350, %25, %352
  %387 = phi i8* [ %345, %350 ], [ %345, %352 ], [ %345, %365 ], [ %345, %353 ], [ %1, %271 ], [ %1, %25 ], [ %1, %20 ]
  store i8* %387, i8** %7, align 8, !dbg !748, !tbaa !416
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !749
  br label %964, !dbg !749

; <label>:388:                                    ; preds = %342
  %389 = sub nsw i32 %344, %264, !dbg !750
  %390 = icmp eq i32 %260, 0, !dbg !752
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !754
  br i1 %390, label %391, label %392, !dbg !754

; <label>:391:                                    ; preds = %388
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !755
  br label %392, !dbg !755

; <label>:392:                                    ; preds = %388, %391
  %393 = phi i32 [ %260, %388 ], [ %263, %391 ], !dbg !756
  %394 = icmp slt i32 %263, 16, !dbg !757
  %395 = select i1 %394, i32 %263, i32 16, !dbg !758
  %396 = uitofp i32 %267 to double, !dbg !760
  %397 = icmp sgt i32 %395, 9, !dbg !761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !763
  br i1 %397, label %398, label %406, !dbg !763

; <label>:398:                                    ; preds = %392
  %399 = add nsw i32 %395, -9, !dbg !764
  %400 = sext i32 %399 to i64, !dbg !766
  %401 = getelementptr inbounds [0 x double], [0 x double]* @__mprec_tens, i64 0, i64 %400, !dbg !766
  %402 = load double, double* %401, align 8, !dbg !766, !tbaa !767
  %403 = fmul double %402, %396, !dbg !769
  %404 = uitofp i32 %268 to double, !dbg !770
  %405 = fadd double %403, %404, !dbg !771
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !772
  br label %406, !dbg !772

; <label>:406:                                    ; preds = %398, %392
  %407 = phi double [ %405, %398 ], [ %396, %392 ]
  %408 = bitcast double %407 to i64, !dbg !537
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !774
  br i1 %394, label %409, label %445, !dbg !774

; <label>:409:                                    ; preds = %406
  %410 = icmp eq i32 %389, 0, !dbg !775
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !779
  br i1 %410, label %964, label %411, !dbg !779

; <label>:411:                                    ; preds = %409
  %412 = icmp sgt i32 %389, 0, !dbg !780
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !782
  br i1 %412, label %413, label %436, !dbg !782

; <label>:413:                                    ; preds = %411
  %414 = icmp slt i32 %389, 23, !dbg !783
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !786
  br i1 %414, label %415, label %421, !dbg !786

; <label>:415:                                    ; preds = %413
  %416 = sext i32 %389 to i64, !dbg !787
  %417 = getelementptr inbounds [0 x double], [0 x double]* @__mprec_tens, i64 0, i64 %416, !dbg !787
  %418 = load double, double* %417, align 8, !dbg !787, !tbaa !767
  %419 = fmul double %407, %418, !dbg !787
  %420 = bitcast double %419 to i64, !dbg !787
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !789
  br label %964, !dbg !789

; <label>:421:                                    ; preds = %413
  %422 = sub nsw i32 15, %263, !dbg !790
  %423 = add nsw i32 %422, 22, !dbg !791
  %424 = icmp sgt i32 %389, %423, !dbg !793
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !794
  br i1 %424, label %445, label %425, !dbg !794

; <label>:425:                                    ; preds = %421
  %426 = sub nsw i32 %389, %422, !dbg !795
  %427 = sext i32 %422 to i64, !dbg !797
  %428 = getelementptr inbounds [0 x double], [0 x double]* @__mprec_tens, i64 0, i64 %427, !dbg !797
  %429 = load double, double* %428, align 8, !dbg !797, !tbaa !767
  %430 = fmul double %407, %429, !dbg !798
  %431 = sext i32 %426 to i64, !dbg !799
  %432 = getelementptr inbounds [0 x double], [0 x double]* @__mprec_tens, i64 0, i64 %431, !dbg !799
  %433 = load double, double* %432, align 8, !dbg !799, !tbaa !767
  %434 = fmul double %430, %433, !dbg !799
  %435 = bitcast double %434 to i64, !dbg !799
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !800
  br label %964, !dbg !800

; <label>:436:                                    ; preds = %411
  %437 = icmp sgt i32 %389, -23, !dbg !801
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !803
  br i1 %437, label %438, label %445, !dbg !803

; <label>:438:                                    ; preds = %436
  %439 = sub nsw i32 0, %389, !dbg !804
  %440 = sext i32 %439 to i64, !dbg !804
  %441 = getelementptr inbounds [0 x double], [0 x double]* @__mprec_tens, i64 0, i64 %440, !dbg !804
  %442 = load double, double* %441, align 8, !dbg !804, !tbaa !767
  %443 = fdiv double %407, %442, !dbg !804
  %444 = bitcast double %443 to i64, !dbg !804
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !806
  br label %964, !dbg !806

; <label>:445:                                    ; preds = %421, %436, %406
  %446 = sub nsw i32 %263, %395, !dbg !807
  %447 = add nsw i32 %389, %446, !dbg !808
  %448 = icmp sgt i32 %447, 0, !dbg !810
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !812
  br i1 %448, label %449, label %513, !dbg !812

; <label>:449:                                    ; preds = %445
  %450 = and i32 %447, 15, !dbg !813
  %451 = icmp eq i32 %450, 0, !dbg !816
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !817
  br i1 %451, label %458, label %452, !dbg !817

; <label>:452:                                    ; preds = %449
  %453 = zext i32 %450 to i64, !dbg !818
  %454 = getelementptr inbounds [0 x double], [0 x double]* @__mprec_tens, i64 0, i64 %453, !dbg !818
  %455 = load double, double* %454, align 8, !dbg !818, !tbaa !767
  %456 = fmul double %407, %455, !dbg !819
  %457 = bitcast double %456 to i64, !dbg !819
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !820
  br label %458, !dbg !820

; <label>:458:                                    ; preds = %449, %452
  %459 = phi double [ %407, %449 ], [ %456, %452 ], !dbg !821
  %460 = phi i64 [ %408, %449 ], [ %457, %452 ], !dbg !821
  %461 = and i32 %447, -16, !dbg !822
  %462 = icmp eq i32 %461, 0, !dbg !822
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !824
  br i1 %462, label %595, label %463, !dbg !824

; <label>:463:                                    ; preds = %458
  %464 = icmp sgt i32 %461, 308, !dbg !825
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !828
  br i1 %464, label %470, label %472, !dbg !828

; <label>:465:                                    ; preds = %871, %710, %707, %701, %695, %690, %681, %678, %632, %617, %935, %600, %768
  %466 = phi %struct._Bigint* [ %705, %768 ], [ null, %600 ], [ %705, %871 ], [ %705, %710 ], [ %705, %707 ], [ null, %701 ], [ null, %695 ], [ %618, %690 ], [ %618, %681 ], [ %618, %678 ], [ %618, %632 ], [ %618, %617 ], [ null, %935 ]
  %467 = phi %struct._Bigint* [ %711, %768 ], [ null, %600 ], [ %711, %871 ], [ %711, %710 ], [ null, %707 ], [ %688, %701 ], [ %688, %695 ], [ %688, %690 ], [ %679, %681 ], [ null, %678 ], [ null, %632 ], [ %620, %617 ], [ %711, %935 ]
  %468 = phi %struct._Bigint* [ %713, %768 ], [ null, %600 ], [ %713, %871 ], [ null, %710 ], [ %619, %707 ], [ %619, %701 ], [ %619, %695 ], [ %619, %690 ], [ %619, %681 ], [ %619, %678 ], [ %619, %632 ], [ %619, %617 ], [ %713, %935 ]
  %469 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !829
  store i32 34, i32* %469, align 8, !dbg !831, !tbaa !832
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !837
  br label %958, !dbg !837

; <label>:470:                                    ; preds = %595, %494, %463
  %471 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !829
  store i32 34, i32* %471, align 8, !dbg !831, !tbaa !832
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !837
  br label %964

; <label>:472:                                    ; preds = %463
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !839
  %473 = icmp ugt i32 %447, 31, !dbg !841
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !843
  br i1 %473, label %474, label %494, !dbg !843

; <label>:474:                                    ; preds = %472
  %475 = lshr i32 %447, 4
  br label %476, !dbg !844

; <label>:476:                                    ; preds = %474, %488
  %477 = phi i64 [ 0, %474 ], [ %491, %488 ]
  %478 = phi i32 [ %475, %474 ], [ %492, %488 ]
  %479 = phi i64 [ %460, %474 ], [ %490, %488 ]
  %480 = phi double [ %459, %474 ], [ %489, %488 ]
  %481 = and i32 %478, 1, !dbg !844
  %482 = icmp eq i32 %481, 0, !dbg !844
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !846
  br i1 %482, label %488, label %483, !dbg !846

; <label>:483:                                    ; preds = %476
  %484 = getelementptr inbounds [0 x double], [0 x double]* @__mprec_bigtens, i64 0, i64 %477, !dbg !847
  %485 = load double, double* %484, align 8, !dbg !847, !tbaa !767
  %486 = fmul double %480, %485, !dbg !848
  %487 = bitcast double %486 to i64, !dbg !848
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !849
  br label %488, !dbg !849

; <label>:488:                                    ; preds = %476, %483
  %489 = phi double [ %480, %476 ], [ %486, %483 ], !dbg !850
  %490 = phi i64 [ %479, %476 ], [ %487, %483 ], !dbg !850
  %491 = add nuw nsw i64 %477, 1, !dbg !851
  %492 = lshr i32 %478, 1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !852
  %493 = icmp ugt i32 %478, 3, !dbg !841
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !843
  br i1 %493, label %476, label %494, !dbg !843, !llvm.loop !853

; <label>:494:                                    ; preds = %488, %472
  %495 = phi i64 [ %460, %472 ], [ %490, %488 ], !dbg !855
  %496 = phi i64 [ 0, %472 ], [ %491, %488 ], !dbg !856
  %497 = add i64 %495, -238690780250636288, !dbg !857
  %498 = and i64 %496, 4294967295, !dbg !858
  %499 = getelementptr inbounds [0 x double], [0 x double]* @__mprec_bigtens, i64 0, i64 %498, !dbg !858
  %500 = load double, double* %499, align 8, !dbg !858, !tbaa !767
  %501 = bitcast i64 %497 to double, !dbg !859
  %502 = fmul double %500, %501, !dbg !859
  %503 = bitcast double %502 to i64, !dbg !859
  %504 = lshr i64 %503, 32, !dbg !860
  %505 = trunc i64 %504 to i32, !dbg !860
  %506 = and i32 %505, 2146435072, !dbg !862
  %507 = icmp ugt i32 %506, 2090860544, !dbg !863
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !864
  br i1 %507, label %470, label %508, !dbg !864

; <label>:508:                                    ; preds = %494
  %509 = icmp ugt i32 %506, 2089811968, !dbg !865
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !867
  br i1 %509, label %510, label %511, !dbg !867

; <label>:510:                                    ; preds = %508
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !868
  br label %595, !dbg !868

; <label>:511:                                    ; preds = %508
  %512 = add i64 %503, 238690780250636288, !dbg !870
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %595

; <label>:513:                                    ; preds = %445
  %514 = icmp slt i32 %447, 0, !dbg !871
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !873
  br i1 %514, label %515, label %595, !dbg !873

; <label>:515:                                    ; preds = %513
  %516 = sub nsw i32 0, %447, !dbg !874
  %517 = and i32 %516, 15, !dbg !876
  %518 = icmp eq i32 %517, 0, !dbg !878
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !879
  br i1 %518, label %525, label %519, !dbg !879

; <label>:519:                                    ; preds = %515
  %520 = zext i32 %517 to i64, !dbg !880
  %521 = getelementptr inbounds [0 x double], [0 x double]* @__mprec_tens, i64 0, i64 %520, !dbg !880
  %522 = load double, double* %521, align 8, !dbg !880, !tbaa !767
  %523 = fdiv double %407, %522, !dbg !881
  %524 = bitcast double %523 to i64, !dbg !881
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !882
  br label %525, !dbg !882

; <label>:525:                                    ; preds = %515, %519
  %526 = phi double [ %407, %515 ], [ %523, %519 ], !dbg !883
  %527 = phi i64 [ %408, %515 ], [ %524, %519 ], !dbg !883
  %528 = ashr i32 %516, 4, !dbg !884
  %529 = icmp eq i32 %528, 0, !dbg !884
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !886
  br i1 %529, label %595, label %530, !dbg !886

; <label>:530:                                    ; preds = %525
  %531 = icmp slt i32 %447, -511, !dbg !887
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !890
  br i1 %531, label %593, label %532, !dbg !890

; <label>:532:                                    ; preds = %530
  %533 = and i32 %516, 256, !dbg !891
  %534 = icmp eq i32 %533, 0, !dbg !891
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !893
  br i1 %534, label %536, label %535, !dbg !893

; <label>:535:                                    ; preds = %532
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !894
  br label %536, !dbg !894

; <label>:536:                                    ; preds = %532, %535
  %537 = phi i32 [ 106, %535 ], [ 0, %532 ], !dbg !537
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !895
  %538 = icmp slt i32 %447, -15, !dbg !897
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !899
  br i1 %538, label %539, label %557, !dbg !899

; <label>:539:                                    ; preds = %536, %551
  %540 = phi i64 [ %554, %551 ], [ 0, %536 ]
  %541 = phi i32 [ %555, %551 ], [ %528, %536 ]
  %542 = phi i64 [ %553, %551 ], [ %527, %536 ]
  %543 = phi double [ %552, %551 ], [ %526, %536 ]
  %544 = and i32 %541, 1, !dbg !900
  %545 = icmp eq i32 %544, 0, !dbg !900
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !902
  br i1 %545, label %551, label %546, !dbg !902

; <label>:546:                                    ; preds = %539
  %547 = getelementptr inbounds [5 x double], [5 x double]* @tinytens, i64 0, i64 %540, !dbg !903
  %548 = load double, double* %547, align 8, !dbg !903, !tbaa !767
  %549 = fmul double %543, %548, !dbg !904
  %550 = bitcast double %549 to i64, !dbg !904
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !905
  br label %551, !dbg !905

; <label>:551:                                    ; preds = %539, %546
  %552 = phi double [ %543, %539 ], [ %549, %546 ], !dbg !906
  %553 = phi i64 [ %542, %539 ], [ %550, %546 ], !dbg !906
  %554 = add nuw nsw i64 %540, 1, !dbg !907
  %555 = lshr i32 %541, 1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !908
  %556 = icmp eq i32 %555, 0, !dbg !897
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !899
  br i1 %556, label %557, label %539, !dbg !899, !llvm.loop !909

; <label>:557:                                    ; preds = %551, %536
  %558 = phi i64 [ %527, %536 ], [ %553, %551 ], !dbg !855
  %559 = icmp eq i32 %537, 0, !dbg !911
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !913
  br i1 %559, label %586, label %560, !dbg !913

; <label>:560:                                    ; preds = %557
  %561 = lshr i64 %558, 52, !dbg !914
  %562 = trunc i64 %561 to i32, !dbg !915
  %563 = and i32 %562, 2047, !dbg !915
  %564 = sub nsw i32 107, %563, !dbg !916
  %565 = icmp sgt i32 %564, 0, !dbg !917
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !918
  br i1 %565, label %566, label %586, !dbg !918

; <label>:566:                                    ; preds = %560
  %567 = icmp sgt i32 %564, 31, !dbg !919
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !922
  br i1 %567, label %568, label %579, !dbg !922

; <label>:568:                                    ; preds = %566
  %569 = icmp sgt i32 %564, 52, !dbg !923
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !926
  br i1 %569, label %570, label %571, !dbg !926

; <label>:570:                                    ; preds = %568
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !927
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !928
  br label %595, !dbg !928

; <label>:571:                                    ; preds = %568
  %572 = add nsw i32 %564, -32, !dbg !929
  %573 = shl i32 -1, %572, !dbg !930
  %574 = lshr i64 %558, 32, !dbg !931
  %575 = trunc i64 %574 to i32, !dbg !931
  %576 = and i32 %573, %575, !dbg !931
  %577 = zext i32 %576 to i64, !dbg !931
  %578 = shl nuw i64 %577, 32, !dbg !931
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %586

; <label>:579:                                    ; preds = %566
  %580 = shl i32 -1, %564, !dbg !932
  %581 = trunc i64 %558 to i32, !dbg !933
  %582 = and i32 %580, %581, !dbg !933
  %583 = zext i32 %582 to i64, !dbg !933
  %584 = and i64 %558, -4294967296, !dbg !933
  %585 = or i64 %584, %583, !dbg !933
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %586

; <label>:586:                                    ; preds = %557, %579, %571, %560
  %587 = phi i64 [ %558, %557 ], [ %578, %571 ], [ %585, %579 ], [ %558, %560 ], !dbg !934
  %588 = bitcast i64 %587 to double, !dbg !935
  %589 = fcmp une double %588, 0.000000e+00, !dbg !935
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !928
  br i1 %589, label %595, label %593, !dbg !928

; <label>:590:                                    ; preds = %840, %785, %820
  %591 = phi %struct._Bigint* [ %713, %820 ], [ %779, %785 ], [ %713, %840 ]
  %592 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !937
  store i32 34, i32* %592, align 8, !dbg !939, !tbaa !832
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !940
  br label %958, !dbg !940

; <label>:593:                                    ; preds = %586, %530
  %594 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !937
  store i32 34, i32* %594, align 8, !dbg !939, !tbaa !832
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !940
  br label %964

; <label>:595:                                    ; preds = %570, %458, %525, %513, %586, %511, %510
  %596 = phi i64 [ %460, %458 ], [ 9218868437227405311, %510 ], [ %512, %511 ], [ %527, %525 ], [ %587, %586 ], [ %408, %513 ], [ 247697979505377280, %570 ], !dbg !934
  %597 = phi i32 [ 0, %458 ], [ 0, %510 ], [ 0, %511 ], [ 0, %525 ], [ %537, %586 ], [ 0, %513 ], [ %537, %570 ], !dbg !537
  %598 = tail call %struct._Bigint* @__s2b(%struct._reent* %0, i8* %266, i32 %393, i32 %263, i32 %267) #5, !dbg !941
  %599 = icmp eq %struct._Bigint* %598, null, !dbg !942
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !944
  br i1 %599, label %470, label %600, !dbg !944

; <label>:600:                                    ; preds = %595
  %601 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %598, i64 0, i32 1, !dbg !946
  %602 = load i32, i32* %601, align 8, !dbg !946, !tbaa !950
  %603 = call %struct._Bigint* @_Balloc(%struct._reent* %0, i32 %602) #5, !dbg !952
  %604 = icmp eq %struct._Bigint* %603, null, !dbg !953
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !955
  br i1 %604, label %465, label %605, !dbg !955

; <label>:605:                                    ; preds = %600
  %606 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %598, i64 0, i32 3
  %607 = bitcast i32* %606 to i8*
  %608 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %598, i64 0, i32 4
  %609 = icmp sgt i32 %389, -1
  %610 = sub nsw i32 0, %389
  %611 = icmp eq i32 %597, 0
  %612 = icmp ne i32 %597, 0
  %613 = select i1 %609, i32 %389, i32 0
  %614 = select i1 %609, i32 0, i32 %610
  %615 = icmp sgt i32 %614, 0
  %616 = icmp sgt i32 %613, 0
  br label %617, !dbg !955

; <label>:617:                                    ; preds = %605, %935
  %618 = phi %struct._Bigint* [ %603, %605 ], [ %939, %935 ]
  %619 = phi %struct._Bigint* [ null, %605 ], [ %713, %935 ]
  %620 = phi %struct._Bigint* [ null, %605 ], [ %711, %935 ]
  %621 = phi i64 [ %596, %605 ], [ %936, %935 ]
  %622 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %618, i64 0, i32 3, !dbg !956
  %623 = bitcast i32* %622 to i8*, !dbg !956
  %624 = load i32, i32* %608, align 4, !dbg !956, !tbaa !957
  %625 = sext i32 %624 to i64, !dbg !956
  %626 = shl nsw i64 %625, 2, !dbg !956
  %627 = add nsw i64 %626, 8, !dbg !956
  %628 = call i8* @memcpy(i8* nonnull %623, i8* nonnull %607, i64 %627) #5, !dbg !956
  %629 = bitcast i64 %621 to double, !dbg !958
  %630 = call %struct._Bigint* @__d2b(%struct._reent* %0, double %629, i32* nonnull %5, i32* nonnull %6) #5, !dbg !961
  store %struct._Bigint* %630, %struct._Bigint** %8, align 8, !dbg !962, !tbaa !416
  %631 = icmp eq %struct._Bigint* %630, null, !dbg !963
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !965
  br i1 %631, label %465, label %632, !dbg !965

; <label>:632:                                    ; preds = %617
  %633 = call %struct._Bigint* @__i2b(%struct._reent* %0, i32 1) #5, !dbg !966
  %634 = icmp eq %struct._Bigint* %633, null, !dbg !967
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !969
  br i1 %634, label %465, label %635, !dbg !969

; <label>:635:                                    ; preds = %632
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !970
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %636 = load i32, i32* %5, align 4, !dbg !975, !tbaa !483
  %637 = icmp sgt i32 %636, -1, !dbg !977
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !978
  %638 = select i1 %637, i32 0, i32 %636, !dbg !978
  %639 = sub nsw i32 %613, %638, !dbg !978
  %640 = select i1 %637, i32 %636, i32 0, !dbg !978
  %641 = add nsw i32 %614, %640, !dbg !978
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %642 = sub nsw i32 %636, %597, !dbg !982
  %643 = load i32, i32* %6, align 4, !dbg !983, !tbaa !483
  %644 = add nsw i32 %643, %642, !dbg !984
  %645 = sub nsw i32 54, %643, !dbg !985
  %646 = icmp slt i32 %644, -1021, !dbg !986
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !988
  br i1 %646, label %647, label %656, !dbg !988

; <label>:647:                                    ; preds = %635
  %648 = sub i32 -1021, %644, !dbg !989
  %649 = sub nsw i32 %645, %648, !dbg !991
  %650 = icmp slt i32 %648, 32, !dbg !992
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !994
  %651 = add nsw i32 %648, -32, !dbg !995
  %652 = shl i32 1, %651, !dbg !996
  %653 = shl i32 1, %648, !dbg !997
  %654 = select i1 %650, i32 %653, i32 1, !dbg !994
  %655 = select i1 %650, i32 0, i32 %652, !dbg !994
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %656, !dbg !998

; <label>:656:                                    ; preds = %647, %635
  %657 = phi i32 [ %645, %635 ], [ %649, %647 ], !dbg !999
  %658 = phi i32 [ 1, %635 ], [ %654, %647 ], !dbg !999
  %659 = phi i32 [ 0, %635 ], [ %655, %647 ], !dbg !999
  %660 = add nsw i32 %657, %641, !dbg !998
  %661 = add i32 %639, %597, !dbg !1000
  %662 = add i32 %661, %657, !dbg !1001
  %663 = icmp slt i32 %660, %662, !dbg !1002
  %664 = select i1 %663, i32 %660, i32 %662, !dbg !1003
  %665 = icmp sgt i32 %664, %641, !dbg !1004
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1006
  br i1 %665, label %666, label %667, !dbg !1006

; <label>:666:                                    ; preds = %656
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1007
  br label %667, !dbg !1007

; <label>:667:                                    ; preds = %666, %656
  %668 = phi i32 [ %641, %666 ], [ %664, %656 ], !dbg !999
  %669 = icmp sgt i32 %668, 0, !dbg !1008
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1010
  br i1 %669, label %670, label %674, !dbg !1010

; <label>:670:                                    ; preds = %667
  %671 = sub nsw i32 %660, %668, !dbg !1011
  %672 = sub nsw i32 %662, %668, !dbg !1013
  %673 = sub nsw i32 %641, %668, !dbg !1014
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1015
  br label %674, !dbg !1015

; <label>:674:                                    ; preds = %670, %667
  %675 = phi i32 [ %672, %670 ], [ %662, %667 ], !dbg !999
  %676 = phi i32 [ %673, %670 ], [ %641, %667 ], !dbg !999
  %677 = phi i32 [ %671, %670 ], [ %660, %667 ], !dbg !999
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1016
  br i1 %615, label %678, label %687, !dbg !1016

; <label>:678:                                    ; preds = %674
  %679 = call %struct._Bigint* @__pow5mult(%struct._reent* %0, %struct._Bigint* nonnull %633, i32 %614) #5, !dbg !1017
  %680 = icmp eq %struct._Bigint* %679, null, !dbg !1020
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1022
  br i1 %680, label %465, label %681, !dbg !1022

; <label>:681:                                    ; preds = %678
  %682 = load %struct._Bigint*, %struct._Bigint** %8, align 8, !dbg !1023, !tbaa !416
  %683 = call %struct._Bigint* @__multiply(%struct._reent* %0, %struct._Bigint* nonnull %679, %struct._Bigint* %682) #5, !dbg !1024
  %684 = icmp eq %struct._Bigint* %683, null, !dbg !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1028
  br i1 %684, label %465, label %685, !dbg !1028

; <label>:685:                                    ; preds = %681
  %686 = load %struct._Bigint*, %struct._Bigint** %8, align 8, !dbg !1029, !tbaa !416
  call void @_Bfree(%struct._reent* %0, %struct._Bigint* %686) #5, !dbg !1030
  store %struct._Bigint* %683, %struct._Bigint** %8, align 8, !dbg !1031, !tbaa !416
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1032
  br label %687, !dbg !1032

; <label>:687:                                    ; preds = %685, %674
  %688 = phi %struct._Bigint* [ %679, %685 ], [ %633, %674 ], !dbg !999
  %689 = icmp sgt i32 %677, 0, !dbg !1033
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1035
  br i1 %689, label %690, label %694, !dbg !1035

; <label>:690:                                    ; preds = %687
  %691 = load %struct._Bigint*, %struct._Bigint** %8, align 8, !dbg !1036, !tbaa !416
  %692 = call %struct._Bigint* @__lshift(%struct._reent* %0, %struct._Bigint* %691, i32 %677) #5, !dbg !1038
  store %struct._Bigint* %692, %struct._Bigint** %8, align 8, !dbg !1039, !tbaa !416
  %693 = icmp eq %struct._Bigint* %692, null, !dbg !1040
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1042
  br i1 %693, label %465, label %694, !dbg !1042

; <label>:694:                                    ; preds = %690, %687
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1043
  br i1 %616, label %695, label %698, !dbg !1043

; <label>:695:                                    ; preds = %694
  %696 = call %struct._Bigint* @__pow5mult(%struct._reent* %0, %struct._Bigint* nonnull %618, i32 %613) #5, !dbg !1044
  %697 = icmp eq %struct._Bigint* %696, null, !dbg !1047
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1049
  br i1 %697, label %465, label %698, !dbg !1049

; <label>:698:                                    ; preds = %695, %694
  %699 = phi %struct._Bigint* [ %696, %695 ], [ %618, %694 ], !dbg !999
  %700 = icmp sgt i32 %675, 0, !dbg !1050
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1052
  br i1 %700, label %701, label %704, !dbg !1052

; <label>:701:                                    ; preds = %698
  %702 = call %struct._Bigint* @__lshift(%struct._reent* %0, %struct._Bigint* nonnull %699, i32 %675) #5, !dbg !1053
  %703 = icmp eq %struct._Bigint* %702, null, !dbg !1055
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1057
  br i1 %703, label %465, label %704, !dbg !1057

; <label>:704:                                    ; preds = %701, %698
  %705 = phi %struct._Bigint* [ %702, %701 ], [ %699, %698 ], !dbg !1058
  %706 = icmp sgt i32 %676, 0, !dbg !1059
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1061
  br i1 %706, label %707, label %710, !dbg !1061

; <label>:707:                                    ; preds = %704
  %708 = call %struct._Bigint* @__lshift(%struct._reent* %0, %struct._Bigint* nonnull %688, i32 %676) #5, !dbg !1062
  %709 = icmp eq %struct._Bigint* %708, null, !dbg !1064
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1066
  br i1 %709, label %465, label %710, !dbg !1066

; <label>:710:                                    ; preds = %707, %704
  %711 = phi %struct._Bigint* [ %708, %707 ], [ %688, %704 ], !dbg !1067
  %712 = load %struct._Bigint*, %struct._Bigint** %8, align 8, !dbg !1068, !tbaa !416
  %713 = call %struct._Bigint* @__mdiff(%struct._reent* %0, %struct._Bigint* %712, %struct._Bigint* nonnull %705) #5, !dbg !1069
  %714 = icmp eq %struct._Bigint* %713, null, !dbg !1070
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1072
  br i1 %714, label %465, label %715, !dbg !1072

; <label>:715:                                    ; preds = %710
  %716 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %713, i64 0, i32 3, !dbg !1073
  %717 = load i32, i32* %716, align 8, !dbg !1073, !tbaa !1074
  store i32 0, i32* %716, align 8, !dbg !1076, !tbaa !1074
  %718 = call i32 @__mcmp(%struct._Bigint* nonnull %713, %struct._Bigint* nonnull %711) #5, !dbg !1077
  %719 = icmp slt i32 %718, 0, !dbg !1078
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1080
  br i1 %719, label %720, label %745, !dbg !1080

; <label>:720:                                    ; preds = %715
  %721 = icmp eq i32 %717, 0, !dbg !1081
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1084
  br i1 %721, label %722, label %942, !dbg !1084

; <label>:722:                                    ; preds = %720
  %723 = trunc i64 %621 to i32, !dbg !1085
  %724 = icmp eq i32 %723, 0, !dbg !1085
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1086
  br i1 %724, label %725, label %942, !dbg !1086

; <label>:725:                                    ; preds = %722
  %726 = lshr i64 %621, 32, !dbg !1087
  %727 = trunc i64 %726 to i32, !dbg !1087
  %728 = and i32 %727, 1048575, !dbg !1088
  %729 = icmp eq i32 %728, 0, !dbg !1088
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1089
  br i1 %729, label %730, label %942, !dbg !1089

; <label>:730:                                    ; preds = %725
  %731 = and i32 %727, 2146435072, !dbg !1090
  %732 = icmp ult i32 %731, 112197633, !dbg !1091
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1092
  br i1 %732, label %942, label %733, !dbg !1092

; <label>:733:                                    ; preds = %730
  %734 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %713, i64 0, i32 5, i64 0, !dbg !1093
  %735 = load i32, i32* %734, align 8, !dbg !1093, !tbaa !483
  %736 = icmp eq i32 %735, 0, !dbg !1093
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1095
  br i1 %736, label %737, label %741, !dbg !1095

; <label>:737:                                    ; preds = %733
  %738 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %713, i64 0, i32 4, !dbg !1096
  %739 = load i32, i32* %738, align 4, !dbg !1096, !tbaa !957
  %740 = icmp slt i32 %739, 2, !dbg !1097
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1098
  br i1 %740, label %942, label %741, !dbg !1098

; <label>:741:                                    ; preds = %733, %737
  %742 = call %struct._Bigint* @__lshift(%struct._reent* %0, %struct._Bigint* nonnull %713, i32 1) #5, !dbg !1099
  %743 = call i32 @__mcmp(%struct._Bigint* %742, %struct._Bigint* nonnull %711) #5, !dbg !1100
  %744 = icmp sgt i32 %743, 0, !dbg !1102
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1103
  br i1 %744, label %778, label %942, !dbg !1103

; <label>:745:                                    ; preds = %715
  %746 = icmp eq i32 %718, 0, !dbg !1104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1106
  br i1 %746, label %747, label %826, !dbg !1106

; <label>:747:                                    ; preds = %745
  %748 = icmp ne i32 %717, 0, !dbg !1107
  %749 = lshr i64 %621, 32, !dbg !1110
  %750 = trunc i64 %749 to i32, !dbg !1110
  %751 = and i32 %750, 1048575, !dbg !1110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1112
  br i1 %748, label %752, label %773, !dbg !1112

; <label>:752:                                    ; preds = %747
  %753 = icmp eq i32 %751, 1048575, !dbg !1113
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1116
  br i1 %753, label %754, label %792, !dbg !1116

; <label>:754:                                    ; preds = %752
  %755 = trunc i64 %621 to i32, !dbg !1117
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1118
  br i1 %611, label %763, label %756, !dbg !1118

; <label>:756:                                    ; preds = %754
  %757 = and i32 %750, 2146435072, !dbg !1119
  %758 = icmp ult i32 %757, 111149057, !dbg !1120
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1121
  br i1 %758, label %759, label %763, !dbg !1121

; <label>:759:                                    ; preds = %756
  %760 = lshr exact i32 %757, 20, !dbg !1122
  %761 = sub nsw i32 107, %760, !dbg !1123
  %762 = shl i32 -1, %761, !dbg !1124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1121
  br label %763, !dbg !1121

; <label>:763:                                    ; preds = %754, %756, %759
  %764 = phi i32 [ %762, %759 ], [ -1, %756 ], [ -1, %754 ], !dbg !1121
  %765 = icmp eq i32 %764, %755, !dbg !1125
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1126
  br i1 %765, label %766, label %792, !dbg !1126

; <label>:766:                                    ; preds = %763
  %767 = icmp eq i32 %750, 2146435071, !dbg !1127
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1130
  br i1 %767, label %768, label %770, !dbg !1130

; <label>:768:                                    ; preds = %766
  %769 = icmp eq i32 %755, -1, !dbg !1131
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1132
  br i1 %769, label %465, label %770, !dbg !1132

; <label>:770:                                    ; preds = %768, %766
  %771 = and i64 %621, 9218868437227405312, !dbg !1133
  %772 = add nuw i64 %771, 4503599627370496, !dbg !1133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1134
  br label %942, !dbg !1134

; <label>:773:                                    ; preds = %747
  %774 = icmp eq i32 %751, 0, !dbg !1135
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1136
  br i1 %774, label %775, label %792, !dbg !1136

; <label>:775:                                    ; preds = %773
  %776 = trunc i64 %621 to i32, !dbg !1137
  %777 = icmp eq i32 %776, 0, !dbg !1137
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1138
  br i1 %777, label %778, label %792, !dbg !1138

; <label>:778:                                    ; preds = %775, %741
  %779 = phi %struct._Bigint* [ %742, %741 ], [ %713, %775 ], !dbg !999
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1139
  br i1 %611, label %788, label %780, !dbg !1139

; <label>:780:                                    ; preds = %778
  %781 = lshr i64 %621, 32, !dbg !1141
  %782 = trunc i64 %781 to i32, !dbg !1141
  %783 = and i32 %782, 2146435072, !dbg !1144
  %784 = icmp ult i32 %783, 112197633, !dbg !1145
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1147
  br i1 %784, label %785, label %788, !dbg !1147

; <label>:785:                                    ; preds = %780
  %786 = icmp ugt i32 %783, 57671680, !dbg !1148
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1151
  br i1 %786, label %787, label %590, !dbg !1151

; <label>:787:                                    ; preds = %785
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1152
  br label %947, !dbg !1152

; <label>:788:                                    ; preds = %778, %780
  %789 = and i64 %621, 9218868437227405312, !dbg !1153
  %790 = add nsw i64 %789, -4503599627370496, !dbg !1153
  %791 = or i64 %790, 4503599627370495, !dbg !1154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1155
  br label %942, !dbg !1155

; <label>:792:                                    ; preds = %775, %773, %752, %763
  %793 = icmp eq i32 %659, 0, !dbg !1156
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1158
  br i1 %793, label %797, label %794, !dbg !1158

; <label>:794:                                    ; preds = %792
  %795 = and i32 %659, %750, !dbg !1159
  %796 = icmp eq i32 %795, 0, !dbg !1159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1162
  br i1 %796, label %942, label %801, !dbg !1162

; <label>:797:                                    ; preds = %792
  %798 = trunc i64 %621 to i32, !dbg !1163
  %799 = and i32 %658, %798, !dbg !1165
  %800 = icmp eq i32 %799, 0, !dbg !1165
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1166
  br i1 %800, label %942, label %801, !dbg !1166

; <label>:801:                                    ; preds = %794, %797
  %802 = call double @__ulp(double %629) #5, !dbg !1180
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1182
  br i1 %611, label %816, label %803, !dbg !1182

; <label>:803:                                    ; preds = %801
  %804 = lshr i64 %621, 52, !dbg !1184
  %805 = trunc i64 %804 to i32, !dbg !1185
  %806 = and i32 %805, 2047, !dbg !1185
  %807 = sub nsw i32 107, %806, !dbg !1186
  %808 = icmp slt i32 %807, 1, !dbg !1188
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1189
  br i1 %808, label %816, label %809, !dbg !1189

; <label>:809:                                    ; preds = %803
  %810 = shl i32 %807, 20, !dbg !1190
  %811 = add i32 %810, 1072693248, !dbg !1191
  %812 = zext i32 %811 to i64, !dbg !1192
  %813 = shl nuw i64 %812, 32, !dbg !1192
  %814 = bitcast i64 %813 to double, !dbg !1192
  %815 = fmul double %802, %814, !dbg !1194
  br label %816, !dbg !1195

; <label>:816:                                    ; preds = %801, %803, %809
  %817 = phi double [ %815, %809 ], [ %802, %803 ], [ %802, %801 ], !dbg !1196
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1197
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1198
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1199
  br i1 %748, label %818, label %820, !dbg !1199

; <label>:818:                                    ; preds = %816
  %819 = fadd double %817, %629, !dbg !1200
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1201
  br label %823, !dbg !1201

; <label>:820:                                    ; preds = %816
  %821 = fsub double %629, %817, !dbg !1202
  %822 = fcmp une double %821, 0.000000e+00, !dbg !1203
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1205
  br i1 %822, label %823, label %590, !dbg !1205

; <label>:823:                                    ; preds = %820, %818
  %824 = phi double [ %819, %818 ], [ %821, %820 ]
  %825 = bitcast double %824 to i64, !dbg !1197
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1206
  br label %942, !dbg !1206

; <label>:826:                                    ; preds = %745
  %827 = call double @__ratio(%struct._Bigint* nonnull %713, %struct._Bigint* nonnull %711) #5, !dbg !1207
  %828 = fcmp ugt double %827, 2.000000e+00, !dbg !1210
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1211
  br i1 %828, label %847, label %829, !dbg !1211

; <label>:829:                                    ; preds = %826
  %830 = icmp eq i32 %717, 0, !dbg !1212
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1215
  br i1 %830, label %831, label %852, !dbg !1215

; <label>:831:                                    ; preds = %829
  %832 = trunc i64 %621 to i32, !dbg !1216
  %833 = icmp eq i32 %832, 0, !dbg !1216
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1218
  br i1 %833, label %834, label %838, !dbg !1218

; <label>:834:                                    ; preds = %831
  %835 = and i64 %621, 4503595332403200, !dbg !1219
  %836 = icmp eq i64 %835, 0, !dbg !1219
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1220
  br i1 %836, label %842, label %837, !dbg !1220

; <label>:837:                                    ; preds = %834
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1221
  br label %852, !dbg !1221

; <label>:838:                                    ; preds = %831
  %839 = icmp eq i32 %832, 1, !dbg !1224
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1221
  br i1 %839, label %840, label %852, !dbg !1221

; <label>:840:                                    ; preds = %838
  %841 = icmp ult i64 %621, 4294967296, !dbg !1225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1226
  br i1 %841, label %590, label %852, !dbg !1226

; <label>:842:                                    ; preds = %834
  %843 = fcmp olt double %827, 1.000000e+00, !dbg !1227
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1230
  %844 = fmul double %827, 5.000000e-01, !dbg !1231
  %845 = select i1 %843, double 5.000000e-01, double %844, !dbg !1230
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %846 = fsub double -0.000000e+00, %845, !dbg !1232
  br label %852

; <label>:847:                                    ; preds = %826
  %848 = fmul double %827, 5.000000e-01, !dbg !1234
  %849 = icmp eq i32 %717, 0, !dbg !1236
  %850 = fsub double -0.000000e+00, %848, !dbg !1237
  %851 = select i1 %849, double %850, double %848, !dbg !1236
  br label %852

; <label>:852:                                    ; preds = %838, %840, %837, %829, %842, %847
  %853 = phi double [ %845, %842 ], [ %848, %847 ], [ 1.000000e+00, %829 ], [ 1.000000e+00, %837 ], [ 1.000000e+00, %840 ], [ 1.000000e+00, %838 ], !dbg !1238
  %854 = phi double [ %846, %842 ], [ %851, %847 ], [ 1.000000e+00, %829 ], [ -1.000000e+00, %837 ], [ -1.000000e+00, %840 ], [ -1.000000e+00, %838 ], !dbg !1238
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %855 = lshr i64 %621, 32, !dbg !1239
  %856 = trunc i64 %855 to i32, !dbg !1239
  %857 = and i32 %856, 2146435072, !dbg !1240
  %858 = icmp eq i32 %857, 2145386496, !dbg !1241
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1243
  br i1 %858, label %859, label %877, !dbg !1243

; <label>:859:                                    ; preds = %852
  %860 = add i64 %621, -238690780250636288, !dbg !1244
  %861 = bitcast i64 %860 to double, !dbg !1246
  %862 = call double @__ulp(double %861) #5, !dbg !1247
  %863 = fmul double %854, %862, !dbg !1248
  %864 = fadd double %863, %861, !dbg !1250
  %865 = bitcast double %864 to i64, !dbg !1250
  %866 = and i64 %865, 9214364837600034816, !dbg !1251
  %867 = icmp ugt i64 %866, 8980177652681801728, !dbg !1251
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1253
  br i1 %867, label %868, label %875, !dbg !1253

; <label>:868:                                    ; preds = %859
  %869 = and i64 %621, -4294967296, !dbg !1254
  %870 = icmp eq i64 %869, 9218868432932438016, !dbg !1254
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1257
  br i1 %870, label %871, label %874, !dbg !1257

; <label>:871:                                    ; preds = %868
  %872 = trunc i64 %621 to i32, !dbg !1258
  %873 = icmp eq i32 %872, -1, !dbg !1259
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1260
  br i1 %873, label %465, label %874, !dbg !1260

; <label>:874:                                    ; preds = %871, %868
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1261
  br label %935, !dbg !1261

; <label>:875:                                    ; preds = %859
  %876 = add i64 %865, 238690780250636288, !dbg !1262
  br label %910, !dbg !1263

; <label>:877:                                    ; preds = %852
  %878 = icmp ult i32 %857, 111149057, !dbg !1264
  %879 = and i1 %612, %878, !dbg !1267
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1267
  br i1 %879, label %880, label %903, !dbg !1267

; <label>:880:                                    ; preds = %877
  %881 = fcmp ugt double %853, 0x41DFFFFFFFC00000, !dbg !1268
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1271
  br i1 %881, label %890, label %882, !dbg !1271

; <label>:882:                                    ; preds = %880
  %883 = fptoui double %853 to i32, !dbg !1272
  %884 = icmp eq i32 %883, 0, !dbg !1275
  %885 = select i1 %884, i32 1, i32 %883, !dbg !1276
  %886 = uitofp i32 %885 to double, !dbg !1277
  %887 = icmp eq i32 %717, 0, !dbg !1278
  %888 = fsub double -0.000000e+00, %886, !dbg !1279
  %889 = select i1 %887, double %888, double %886, !dbg !1278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1280
  br label %890, !dbg !1280

; <label>:890:                                    ; preds = %880, %882
  %891 = phi double [ %886, %882 ], [ %853, %880 ], !dbg !1281
  %892 = phi double [ %889, %882 ], [ %854, %880 ], !dbg !1281
  %893 = sub nsw i32 112197632, %857, !dbg !1282
  %894 = bitcast double %892 to i64, !dbg !1283
  %895 = lshr i64 %894, 32, !dbg !1283
  %896 = trunc i64 %895 to i32, !dbg !1283
  %897 = add i32 %893, %896, !dbg !1283
  %898 = zext i32 %897 to i64, !dbg !1283
  %899 = shl nuw i64 %898, 32, !dbg !1283
  %900 = and i64 %894, 4294967295, !dbg !1283
  %901 = or i64 %899, %900, !dbg !1283
  %902 = bitcast i64 %901 to double, !dbg !1283
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1284
  br label %903, !dbg !1284

; <label>:903:                                    ; preds = %890, %877
  %904 = phi double [ %891, %890 ], [ %853, %877 ], !dbg !1281
  %905 = phi double [ %902, %890 ], [ %854, %877 ], !dbg !1281
  %906 = call double @__ulp(double %629) #5, !dbg !1285
  %907 = fmul double %905, %906, !dbg !1286
  %908 = fadd double %907, %629, !dbg !1287
  %909 = bitcast double %908 to i64, !dbg !1287
  br label %910

; <label>:910:                                    ; preds = %903, %875
  %911 = phi i64 [ %876, %875 ], [ %909, %903 ], !dbg !1288
  %912 = phi double [ %853, %875 ], [ %904, %903 ], !dbg !1289
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %913 = lshr i64 %911, 32, !dbg !1290
  %914 = trunc i64 %913 to i32, !dbg !1290
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1291
  br i1 %611, label %915, label %935, !dbg !1291

; <label>:915:                                    ; preds = %910
  %916 = and i32 %914, 2146435072, !dbg !1292
  %917 = icmp eq i32 %857, %916, !dbg !1293
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1296
  br i1 %917, label %918, label %935, !dbg !1296

; <label>:918:                                    ; preds = %915
  %919 = fptosi double %912 to i32, !dbg !1297
  %920 = sitofp i32 %919 to double, !dbg !1299
  %921 = fsub double %912, %920, !dbg !1300
  %922 = icmp eq i32 %717, 0, !dbg !1301
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1303
  br i1 %922, label %923, label %929, !dbg !1303

; <label>:923:                                    ; preds = %918
  %924 = trunc i64 %911 to i32, !dbg !1304
  %925 = icmp eq i32 %924, 0, !dbg !1304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1305
  br i1 %925, label %926, label %929, !dbg !1305

; <label>:926:                                    ; preds = %923
  %927 = and i32 %914, 1048575, !dbg !1306
  %928 = icmp eq i32 %927, 0, !dbg !1306
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1307
  br i1 %928, label %933, label %929, !dbg !1307

; <label>:929:                                    ; preds = %926, %923, %918
  %930 = fcmp olt double %921, 0x3FDFFFFF94A03595, !dbg !1308
  %931 = fcmp ogt double %921, 0x3FE0000035AFE535, !dbg !1311
  %932 = or i1 %930, %931, !dbg !1312
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1312
  br i1 %932, label %941, label %935, !dbg !1312

; <label>:933:                                    ; preds = %926
  %934 = fcmp olt double %921, 0x3FCFFFFF94A03595, !dbg !1313
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1315
  br i1 %934, label %941, label %935, !dbg !1315

; <label>:935:                                    ; preds = %910, %929, %933, %915, %874
  %936 = phi i64 [ 9218868437227405311, %874 ], [ %911, %933 ], [ %911, %929 ], [ %911, %915 ], [ %911, %910 ], !dbg !1316
  %937 = load %struct._Bigint*, %struct._Bigint** %8, align 8, !dbg !1317, !tbaa !416
  call void @_Bfree(%struct._reent* %0, %struct._Bigint* %937) #5, !dbg !1318
  call void @_Bfree(%struct._reent* %0, %struct._Bigint* nonnull %705) #5, !dbg !1319
  call void @_Bfree(%struct._reent* %0, %struct._Bigint* nonnull %711) #5, !dbg !1320
  call void @_Bfree(%struct._reent* %0, %struct._Bigint* nonnull %713) #5, !dbg !1321
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1322
  %938 = load i32, i32* %601, align 8, !dbg !946, !tbaa !950
  %939 = call %struct._Bigint* @_Balloc(%struct._reent* %0, i32 %938) #5, !dbg !952
  %940 = icmp eq %struct._Bigint* %939, null, !dbg !953
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !955
  br i1 %940, label %465, label %617, !dbg !955, !llvm.loop !1323

; <label>:941:                                    ; preds = %933, %929
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1152
  br label %958, !dbg !1152

; <label>:942:                                    ; preds = %725, %722, %720, %794, %797, %741, %737, %730, %823, %788, %770
  %943 = phi i64 [ %621, %730 ], [ %621, %737 ], [ %791, %788 ], [ %621, %741 ], [ %621, %725 ], [ %621, %722 ], [ %621, %720 ], [ %772, %770 ], [ %621, %797 ], [ %825, %823 ], [ %621, %794 ], !dbg !1316
  %944 = phi %struct._Bigint* [ %713, %730 ], [ %713, %737 ], [ %779, %788 ], [ %742, %741 ], [ %713, %725 ], [ %713, %722 ], [ %713, %720 ], [ %713, %770 ], [ %713, %797 ], [ %713, %823 ], [ %713, %794 ], !dbg !999
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1152
  br i1 %611, label %958, label %945, !dbg !1152

; <label>:945:                                    ; preds = %942
  %946 = bitcast i64 %943 to double, !dbg !1326
  br label %947, !dbg !1152

; <label>:947:                                    ; preds = %945, %787
  %948 = phi double [ %946, %945 ], [ %629, %787 ], !dbg !1326
  %949 = phi %struct._Bigint* [ %944, %945 ], [ %779, %787 ]
  %950 = fmul double %948, 0x3950000000000000, !dbg !1326
  %951 = bitcast double %950 to i64, !dbg !1326
  %952 = icmp ult i64 %951, 4294967296, !dbg !1329
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1331
  br i1 %952, label %953, label %958, !dbg !1331

; <label>:953:                                    ; preds = %947
  %954 = trunc i64 %951 to i32, !dbg !1332
  %955 = icmp eq i32 %954, 0, !dbg !1333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1334
  br i1 %955, label %956, label %958, !dbg !1334

; <label>:956:                                    ; preds = %953
  %957 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !1335
  store i32 34, i32* %957, align 8, !dbg !1336, !tbaa !832
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1337
  br label %958, !dbg !1337

; <label>:958:                                    ; preds = %941, %590, %465, %942, %956, %953, %947
  %959 = phi i64 [ %943, %942 ], [ %951, %956 ], [ %951, %953 ], [ %951, %947 ], [ 9218868437227405312, %465 ], [ 0, %590 ], [ %911, %941 ], !dbg !1338
  %960 = phi %struct._Bigint* [ %705, %942 ], [ %705, %956 ], [ %705, %953 ], [ %705, %947 ], [ %466, %465 ], [ %705, %590 ], [ %705, %941 ], !dbg !1339
  %961 = phi %struct._Bigint* [ %711, %942 ], [ %711, %956 ], [ %711, %953 ], [ %711, %947 ], [ %467, %465 ], [ %711, %590 ], [ %711, %941 ], !dbg !1340
  %962 = phi %struct._Bigint* [ %944, %942 ], [ %949, %956 ], [ %949, %953 ], [ %949, %947 ], [ %468, %465 ], [ %591, %590 ], [ %713, %941 ], !dbg !1341
  %963 = load %struct._Bigint*, %struct._Bigint** %8, align 8, !dbg !1342, !tbaa !416
  call void @_Bfree(%struct._reent* %0, %struct._Bigint* %963) #5, !dbg !1343
  call void @_Bfree(%struct._reent* %0, %struct._Bigint* %960) #5, !dbg !1344
  call void @_Bfree(%struct._reent* %0, %struct._Bigint* %961) #5, !dbg !1345
  call void @_Bfree(%struct._reent* %0, %struct._Bigint* nonnull %598) #5, !dbg !1346
  call void @_Bfree(%struct._reent* %0, %struct._Bigint* %962) #5, !dbg !1347
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1347
  br label %964, !dbg !1347

; <label>:964:                                    ; preds = %593, %470, %90, %99, %409, %347, %386, %376, %385, %958, %438, %425, %415, %364
  %965 = phi i64 [ %91, %90 ], [ 0, %99 ], [ 0, %386 ], [ %384, %376 ], [ -2251799813685248, %385 ], [ 9218868437227405312, %364 ], [ 0, %347 ], [ %408, %409 ], [ %420, %415 ], [ 9218868437227405312, %470 ], [ %959, %958 ], [ 0, %593 ], [ %435, %425 ], [ %444, %438 ], !dbg !1348
  %966 = phi i32 [ %92, %90 ], [ %35, %99 ], [ 0, %386 ], [ %35, %376 ], [ %35, %385 ], [ %35, %364 ], [ %35, %347 ], [ %35, %409 ], [ %35, %415 ], [ %35, %470 ], [ %35, %958 ], [ %35, %593 ], [ %35, %425 ], [ %35, %438 ], !dbg !537
  %967 = icmp eq i8** %2, null, !dbg !1349
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1351
  br i1 %967, label %972, label %968, !dbg !1351

; <label>:968:                                    ; preds = %964
  %969 = bitcast i8** %7 to i64*, !dbg !1352
  %970 = load i64, i64* %969, align 8, !dbg !1352, !tbaa !416
  %971 = bitcast i8** %2 to i64*, !dbg !1353
  store i64 %970, i64* %971, align 8, !dbg !1353, !tbaa !416
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1354
  br label %972, !dbg !1354

; <label>:972:                                    ; preds = %968, %964
  %973 = icmp eq i32 %966, 0, !dbg !1355
  %974 = bitcast i64 %965 to double, !dbg !537
  %975 = fsub double -0.000000e+00, %974, !dbg !1356
  %976 = select i1 %973, double %974, double %975, !dbg !1355
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1357
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #4, !dbg !1358
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #4, !dbg !1358
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #4, !dbg !1358
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #4, !dbg !1358
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1358
  ret double %976, !dbg !1358
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local %struct.lconv* @__localeconv_l(%struct.__locale_t*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @__gethex(%struct._reent*, i8**, %struct.FPI*, i32*, %struct._Bigint**, i32, %struct.__locale_t*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @__copybits(i32*, i32, %struct._Bigint*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @_Bfree(%struct._reent*, %struct._Bigint*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i32 @strncmp(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @__match(i8**, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @__hexnan(i8**, %struct.FPI*, i32*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct._Bigint* @__s2b(%struct._reent*, i8*, i32, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct._Bigint* @_Balloc(%struct._reent*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct._Bigint* @__d2b(%struct._reent*, double, i32*, i32*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct._Bigint* @__i2b(%struct._reent*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct._Bigint* @__pow5mult(%struct._reent*, %struct._Bigint*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct._Bigint* @__multiply(%struct._reent*, %struct._Bigint*, %struct._Bigint*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct._Bigint* @__lshift(%struct._reent*, %struct._Bigint*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct._Bigint* @__mdiff(%struct._reent*, %struct._Bigint*, %struct._Bigint*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @__mcmp(%struct._Bigint*, %struct._Bigint*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local double @__ratio(%struct._Bigint*, %struct._Bigint*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local double @__ulp(double) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local double @_strtod_r(%struct._reent*, i8* noalias, i8** noalias) local_unnamed_addr #0 !dbg !1359 {
  %4 = tail call %struct._reent* @__getreent() #5, !dbg !1367
  %5 = getelementptr inbounds %struct._reent, %struct._reent* %4, i64 0, i32 7, !dbg !1373
  %6 = load %struct.__locale_t*, %struct.__locale_t** %5, align 8, !dbg !1373, !tbaa !1374
  %7 = icmp eq %struct.__locale_t* %6, null, !dbg !1367
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1367
  br i1 %7, label %8, label %9, !dbg !1367

; <label>:8:                                      ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1367
  br label %9, !dbg !1367

; <label>:9:                                      ; preds = %3, %8
  %10 = phi %struct.__locale_t* [ @__global_locale, %8 ], [ %6, %3 ], !dbg !1367
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1378
  %11 = tail call double @_strtod_l(%struct._reent* %0, i8* %1, i8** %2, %struct.__locale_t* nonnull %10) #6, !dbg !1379
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1380
  ret double %11, !dbg !1380
}

; Function Attrs: noredzone nounwind
define dso_local double @strtod_l(i8* noalias, i8** noalias, %struct.__locale_t*) local_unnamed_addr #0 !dbg !1381 {
  %4 = tail call %struct._reent* @__getreent() #5, !dbg !1391
  %5 = tail call double @_strtod_l(%struct._reent* %4, i8* %0, i8** %1, %struct.__locale_t* %2) #6, !dbg !1392
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1393
  ret double %5, !dbg !1393
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local double @strtod(i8* noalias, i8** noalias) local_unnamed_addr #0 !dbg !1394 {
  %3 = tail call %struct._reent* @__getreent() #5, !dbg !1401
  %4 = tail call %struct._reent* @__getreent() #5, !dbg !1402
  %5 = getelementptr inbounds %struct._reent, %struct._reent* %4, i64 0, i32 7, !dbg !1404
  %6 = load %struct.__locale_t*, %struct.__locale_t** %5, align 8, !dbg !1404, !tbaa !1374
  %7 = icmp eq %struct.__locale_t* %6, null, !dbg !1402
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1402
  br i1 %7, label %8, label %9, !dbg !1402

; <label>:8:                                      ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1405
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1402
  br label %9, !dbg !1402

; <label>:9:                                      ; preds = %2, %8
  %10 = phi %struct.__locale_t* [ @__global_locale, %8 ], [ %6, %2 ], !dbg !1402
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1407
  %11 = tail call double @_strtod_l(%struct._reent* %3, i8* %0, i8** %1, %struct.__locale_t* nonnull %10) #6, !dbg !1408
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1409
  ret double %11, !dbg !1409
}

; Function Attrs: noredzone nounwind
define dso_local float @strtof_l(i8* noalias, i8** noalias, %struct.__locale_t*) local_unnamed_addr #0 !dbg !1410 {
  %4 = tail call %struct._reent* @__getreent() #5, !dbg !1422
  %5 = tail call double @_strtod_l(%struct._reent* %4, i8* %0, i8** %1, %struct.__locale_t* %2) #6, !dbg !1423
  %6 = tail call i32 @__fpclassifyd(double %5) #5, !dbg !1425
  %7 = icmp eq i32 %6, 0, !dbg !1425
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1427
  br i1 %7, label %8, label %10, !dbg !1427

; <label>:8:                                      ; preds = %3
  %9 = tail call float @nanf(i8* null) #5, !dbg !1428
  br label %20, !dbg !1429

; <label>:10:                                     ; preds = %3
  %11 = fptrunc double %5 to float, !dbg !1430
  %12 = tail call i32 @__fpclassifyf(float %11) #5, !dbg !1432
  %13 = icmp eq i32 %12, 1, !dbg !1432
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1434
  br i1 %13, label %14, label %20, !dbg !1434

; <label>:14:                                     ; preds = %10
  %15 = tail call i32 @__fpclassifyd(double %5) #5, !dbg !1435
  %16 = icmp eq i32 %15, 1, !dbg !1435
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1436
  br i1 %16, label %20, label %17, !dbg !1436

; <label>:17:                                     ; preds = %14
  %18 = tail call %struct._reent* @__getreent() #5, !dbg !1437
  %19 = getelementptr inbounds %struct._reent, %struct._reent* %18, i64 0, i32 0, !dbg !1438
  store i32 34, i32* %19, align 8, !dbg !1439, !tbaa !832
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1437
  br label %20, !dbg !1437

; <label>:20:                                     ; preds = %10, %14, %17, %8
  %21 = phi float [ %9, %8 ], [ %11, %17 ], [ %11, %14 ], [ %11, %10 ], !dbg !1440
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1441
  ret float %21, !dbg !1441
}

; Function Attrs: noredzone
declare dso_local i32 @__fpclassifyd(double) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local float @nanf(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @__fpclassifyf(float) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local float @strtof(i8* noalias, i8** noalias) local_unnamed_addr #0 !dbg !1442 {
  %3 = tail call %struct._reent* @__getreent() #5, !dbg !1451
  %4 = tail call %struct._reent* @__getreent() #5, !dbg !1452
  %5 = getelementptr inbounds %struct._reent, %struct._reent* %4, i64 0, i32 7, !dbg !1454
  %6 = load %struct.__locale_t*, %struct.__locale_t** %5, align 8, !dbg !1454, !tbaa !1374
  %7 = icmp eq %struct.__locale_t* %6, null, !dbg !1452
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1452
  br i1 %7, label %8, label %9, !dbg !1452

; <label>:8:                                      ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1455
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1452
  br label %9, !dbg !1452

; <label>:9:                                      ; preds = %2, %8
  %10 = phi %struct.__locale_t* [ @__global_locale, %8 ], [ %6, %2 ], !dbg !1452
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1457
  %11 = tail call double @_strtod_l(%struct._reent* %3, i8* %0, i8** %1, %struct.__locale_t* nonnull %10) #6, !dbg !1458
  %12 = tail call i32 @__fpclassifyd(double %11) #5, !dbg !1460
  %13 = icmp eq i32 %12, 0, !dbg !1460
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1462
  br i1 %13, label %14, label %16, !dbg !1462

; <label>:14:                                     ; preds = %9
  %15 = tail call float @nanf(i8* null) #5, !dbg !1463
  br label %26, !dbg !1464

; <label>:16:                                     ; preds = %9
  %17 = fptrunc double %11 to float, !dbg !1465
  %18 = tail call i32 @__fpclassifyf(float %17) #5, !dbg !1467
  %19 = icmp eq i32 %18, 1, !dbg !1467
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1469
  br i1 %19, label %20, label %26, !dbg !1469

; <label>:20:                                     ; preds = %16
  %21 = tail call i32 @__fpclassifyd(double %11) #5, !dbg !1470
  %22 = icmp eq i32 %21, 1, !dbg !1470
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1471
  br i1 %22, label %26, label %23, !dbg !1471

; <label>:23:                                     ; preds = %20
  %24 = tail call %struct._reent* @__getreent() #5, !dbg !1472
  %25 = getelementptr inbounds %struct._reent, %struct._reent* %24, i64 0, i32 0, !dbg !1473
  store i32 34, i32* %25, align 8, !dbg !1474, !tbaa !832
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1472
  br label %26, !dbg !1472

; <label>:26:                                     ; preds = %16, %20, %23, %14
  %27 = phi float [ %15, %14 ], [ %17, %23 ], [ %17, %20 ], [ %17, %16 ], !dbg !1475
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1476
  ret float %27, !dbg !1476
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }
attributes #6 = { nobuiltin noredzone }

!llvm.module.flags = !{!404, !405, !406}
!llvm.ident = !{!407}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "fpi", scope: !2, file: !3, line: 306, type: !321, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "_strtod_l", scope: !3, file: !3, line: 253, type: !4, isLocal: false, isDefinition: true, scopeLine: 255, flags: DIFlagPrototyped, isOptimized: true, unit: !292, retainedNodes: !336)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/strtod.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !7, !287, !288, !290}
!6 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !9, line: 569, size: 14912, elements: !10)
!9 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!10 = !{!11, !13, !95, !96, !97, !98, !102, !103, !168, !169, !173, !185, !186, !187, !189, !190, !191, !253, !272, !273, !278, !285}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !8, file: !9, line: 571, baseType: !12, size: 32)
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !8, file: !9, line: 576, baseType: !14, size: 64, offset: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !9, line: 287, baseType: !16)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !9, line: 181, size: 1408, elements: !17)
!17 = !{!18, !21, !22, !23, !25, !26, !31, !32, !34, !43, !49, !54, !58, !59, !60, !61, !65, !69, !70, !71, !73, !74, !78, !94}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !16, file: !9, line: 182, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !16, file: !9, line: 183, baseType: !12, size: 32, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !16, file: !9, line: 184, baseType: !12, size: 32, offset: 96)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !16, file: !9, line: 185, baseType: !24, size: 16, offset: 128)
!24 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !16, file: !9, line: 186, baseType: !24, size: 16, offset: 144)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !16, file: !9, line: 187, baseType: !27, size: 128, offset: 192)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !9, line: 117, size: 128, elements: !28)
!28 = !{!29, !30}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !27, file: !9, line: 118, baseType: !19, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !27, file: !9, line: 119, baseType: !12, size: 32, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !16, file: !9, line: 188, baseType: !12, size: 32, offset: 320)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !16, file: !9, line: 195, baseType: !33, size: 64, offset: 384)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !16, file: !9, line: 197, baseType: !35, size: 64, offset: 448)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DISubroutineType(types: !37)
!37 = !{!38, !7, !33, !41, !12}
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !39, line: 145, baseType: !40)
!39 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!40 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !16, file: !9, line: 199, baseType: !44, size: 64, offset: 512)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DISubroutineType(types: !46)
!46 = !{!38, !7, !33, !47, !12}
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !16, file: !9, line: 202, baseType: !50, size: 64, offset: 576)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DISubroutineType(types: !52)
!52 = !{!53, !7, !33, !53, !12}
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !39, line: 114, baseType: !40)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !16, file: !9, line: 203, baseType: !55, size: 64, offset: 640)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DISubroutineType(types: !57)
!57 = !{!12, !7, !33}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !16, file: !9, line: 206, baseType: !27, size: 128, offset: 704)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !16, file: !9, line: 207, baseType: !19, size: 64, offset: 832)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !16, file: !9, line: 208, baseType: !12, size: 32, offset: 896)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !16, file: !9, line: 211, baseType: !62, size: 24, offset: 928)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 24, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 3)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !16, file: !9, line: 212, baseType: !66, size: 8, offset: 952)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 8, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 1)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !16, file: !9, line: 215, baseType: !27, size: 128, offset: 960)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !16, file: !9, line: 218, baseType: !12, size: 32, offset: 1088)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !16, file: !9, line: 219, baseType: !72, size: 64, offset: 1152)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !39, line: 44, baseType: !40)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !16, file: !9, line: 222, baseType: !7, size: 64, offset: 1216)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !16, file: !9, line: 226, baseType: !75, size: 32, offset: 1280)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !39, line: 175, baseType: !76)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !77, line: 12, baseType: !12)
!77 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !16, file: !9, line: 228, baseType: !79, size: 64, offset: 1312)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !39, line: 171, baseType: !80)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !39, line: 163, size: 64, elements: !81)
!81 = !{!82, !83}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !80, file: !39, line: 165, baseType: !12, size: 32)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !80, file: !39, line: 170, baseType: !84, size: 32, offset: 32)
!84 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !80, file: !39, line: 166, size: 32, elements: !85)
!85 = !{!86, !90}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !84, file: !39, line: 168, baseType: !87, size: 32)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !88, line: 124, baseType: !89)
!88 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!89 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !84, file: !39, line: 169, baseType: !91, size: 32)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 32, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: 4)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !16, file: !9, line: 229, baseType: !12, size: 32, offset: 1376)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !8, file: !9, line: 576, baseType: !14, size: 64, offset: 128)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !8, file: !9, line: 576, baseType: !14, size: 64, offset: 192)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !8, file: !9, line: 578, baseType: !12, size: 32, offset: 256)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !8, file: !9, line: 579, baseType: !99, size: 200, offset: 288)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 200, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 25)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !8, file: !9, line: 582, baseType: !12, size: 32, offset: 512)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !8, file: !9, line: 583, baseType: !104, size: 64, offset: 576)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !106, line: 178, size: 3392, elements: !107)
!106 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/../locale/setlocale.h", directory: "/root/.unikraft/apps/redis/build")
!107 = !{!108, !113, !121, !130, !131, !132, !160, !164, !167}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "categories", scope: !105, file: !106, line: 180, baseType: !109, size: 1792)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 1792, elements: !110)
!110 = !{!111, !112}
!111 = !DISubrange(count: 7)
!112 = !DISubrange(count: 32)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "wctomb", scope: !105, file: !106, line: 181, baseType: !114, size: 64, offset: 1792)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DISubroutineType(types: !116)
!116 = !{!12, !7, !41, !117, !118}
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !88, line: 83, baseType: !12)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !120, line: 86, baseType: !79)
!120 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/wchar.h", directory: "/root/.unikraft/apps/redis/build")
!121 = !DIDerivedType(tag: DW_TAG_member, name: "mbtowc", scope: !105, file: !106, line: 183, baseType: !122, size: 64, offset: 1856)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DISubroutineType(types: !124)
!124 = !{!12, !7, !125, !47, !126, !118}
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !127, line: 40, baseType: !128)
!127 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !39, line: 129, baseType: !129)
!129 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "cjk_lang", scope: !105, file: !106, line: 185, baseType: !12, size: 32, offset: 1920)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_ptr", scope: !105, file: !106, line: 186, baseType: !41, size: 64, offset: 1984)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "lconv", scope: !105, file: !106, line: 187, baseType: !133, size: 768, offset: 2048)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !134, line: 42, size: 768, elements: !135)
!134 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/locale.h", directory: "/root/.unikraft/apps/redis/build")
!135 = !{!136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "decimal_point", scope: !133, file: !134, line: 44, baseType: !41, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "thousands_sep", scope: !133, file: !134, line: 45, baseType: !41, size: 64, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "grouping", scope: !133, file: !134, line: 46, baseType: !41, size: 64, offset: 128)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "int_curr_symbol", scope: !133, file: !134, line: 47, baseType: !41, size: 64, offset: 192)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "currency_symbol", scope: !133, file: !134, line: 48, baseType: !41, size: 64, offset: 256)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "mon_decimal_point", scope: !133, file: !134, line: 49, baseType: !41, size: 64, offset: 320)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "mon_thousands_sep", scope: !133, file: !134, line: 50, baseType: !41, size: 64, offset: 384)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "mon_grouping", scope: !133, file: !134, line: 51, baseType: !41, size: 64, offset: 448)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "positive_sign", scope: !133, file: !134, line: 52, baseType: !41, size: 64, offset: 512)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "negative_sign", scope: !133, file: !134, line: 53, baseType: !41, size: 64, offset: 576)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "int_frac_digits", scope: !133, file: !134, line: 54, baseType: !42, size: 8, offset: 640)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "frac_digits", scope: !133, file: !134, line: 55, baseType: !42, size: 8, offset: 648)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "p_cs_precedes", scope: !133, file: !134, line: 56, baseType: !42, size: 8, offset: 656)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "p_sep_by_space", scope: !133, file: !134, line: 57, baseType: !42, size: 8, offset: 664)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "n_cs_precedes", scope: !133, file: !134, line: 58, baseType: !42, size: 8, offset: 672)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "n_sep_by_space", scope: !133, file: !134, line: 59, baseType: !42, size: 8, offset: 680)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "p_sign_posn", scope: !133, file: !134, line: 60, baseType: !42, size: 8, offset: 688)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "n_sign_posn", scope: !133, file: !134, line: 61, baseType: !42, size: 8, offset: 696)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_cs_precedes", scope: !133, file: !134, line: 62, baseType: !42, size: 8, offset: 704)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sep_by_space", scope: !133, file: !134, line: 63, baseType: !42, size: 8, offset: 712)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sign_posn", scope: !133, file: !134, line: 64, baseType: !42, size: 8, offset: 720)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_cs_precedes", scope: !133, file: !134, line: 65, baseType: !42, size: 8, offset: 728)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sep_by_space", scope: !133, file: !134, line: 66, baseType: !42, size: 8, offset: 736)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sign_posn", scope: !133, file: !134, line: 67, baseType: !42, size: 8, offset: 744)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cur_max", scope: !105, file: !106, line: 189, baseType: !161, size: 16, offset: 2816)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 16, elements: !162)
!162 = !{!163}
!163 = !DISubrange(count: 2)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_codeset", scope: !105, file: !106, line: 190, baseType: !165, size: 256, offset: 2832)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 256, elements: !166)
!166 = !{!112}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "message_codeset", scope: !105, file: !106, line: 191, baseType: !165, size: 256, offset: 3088)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !8, file: !9, line: 585, baseType: !12, size: 32, offset: 640)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !8, file: !9, line: 587, baseType: !170, size: 64, offset: 704)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DISubroutineType(types: !172)
!172 = !{null, !7}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !8, file: !9, line: 590, baseType: !174, size: 64, offset: 768)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !9, line: 47, size: 256, elements: !176)
!176 = !{!177, !178, !179, !180, !181, !182}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !175, file: !9, line: 49, baseType: !174, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !175, file: !9, line: 50, baseType: !12, size: 32, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !175, file: !9, line: 50, baseType: !12, size: 32, offset: 96)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !175, file: !9, line: 50, baseType: !12, size: 32, offset: 128)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !175, file: !9, line: 50, baseType: !12, size: 32, offset: 160)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !175, file: !9, line: 51, baseType: !183, size: 32, offset: 192)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 32, elements: !67)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !9, line: 25, baseType: !89)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !8, file: !9, line: 591, baseType: !12, size: 32, offset: 832)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !8, file: !9, line: 592, baseType: !174, size: 64, offset: 896)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !8, file: !9, line: 593, baseType: !188, size: 64, offset: 960)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !8, file: !9, line: 596, baseType: !12, size: 32, offset: 1024)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !8, file: !9, line: 597, baseType: !41, size: 64, offset: 1088)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !8, file: !9, line: 632, baseType: !192, size: 2880, offset: 1152)
!192 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !8, file: !9, line: 599, size: 2880, elements: !193)
!193 = !{!194, !244}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !192, file: !9, line: 622, baseType: !195, size: 1728)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !192, file: !9, line: 601, size: 1728, elements: !196)
!196 = !{!197, !198, !199, !203, !215, !216, !218, !226, !227, !228, !229, !233, !237, !238, !239, !240, !241, !242, !243}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !195, file: !9, line: 603, baseType: !89, size: 32)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !195, file: !9, line: 604, baseType: !41, size: 64, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !195, file: !9, line: 605, baseType: !200, size: 208, offset: 128)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 208, elements: !201)
!201 = !{!202}
!202 = !DISubrange(count: 26)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !195, file: !9, line: 606, baseType: !204, size: 288, offset: 352)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !9, line: 55, size: 288, elements: !205)
!205 = !{!206, !207, !208, !209, !210, !211, !212, !213, !214}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !204, file: !9, line: 57, baseType: !12, size: 32)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !204, file: !9, line: 58, baseType: !12, size: 32, offset: 32)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !204, file: !9, line: 59, baseType: !12, size: 32, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !204, file: !9, line: 60, baseType: !12, size: 32, offset: 96)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !204, file: !9, line: 61, baseType: !12, size: 32, offset: 128)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !204, file: !9, line: 62, baseType: !12, size: 32, offset: 160)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !204, file: !9, line: 63, baseType: !12, size: 32, offset: 192)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !204, file: !9, line: 64, baseType: !12, size: 32, offset: 224)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !204, file: !9, line: 65, baseType: !12, size: 32, offset: 256)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !195, file: !9, line: 607, baseType: !12, size: 32, offset: 640)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !195, file: !9, line: 608, baseType: !217, size: 64, offset: 704)
!217 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !195, file: !9, line: 609, baseType: !219, size: 112, offset: 768)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !9, line: 319, size: 112, elements: !220)
!220 = !{!221, !224, !225}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !219, file: !9, line: 320, baseType: !222, size: 48)
!222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 48, elements: !63)
!223 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !219, file: !9, line: 321, baseType: !222, size: 48, offset: 48)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !219, file: !9, line: 322, baseType: !223, size: 16, offset: 96)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !195, file: !9, line: 610, baseType: !79, size: 64, offset: 896)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !195, file: !9, line: 611, baseType: !79, size: 64, offset: 960)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !195, file: !9, line: 612, baseType: !79, size: 64, offset: 1024)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !195, file: !9, line: 613, baseType: !230, size: 64, offset: 1088)
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 64, elements: !231)
!231 = !{!232}
!232 = !DISubrange(count: 8)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !195, file: !9, line: 614, baseType: !234, size: 192, offset: 1152)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 192, elements: !235)
!235 = !{!236}
!236 = !DISubrange(count: 24)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !195, file: !9, line: 615, baseType: !12, size: 32, offset: 1344)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !195, file: !9, line: 616, baseType: !79, size: 64, offset: 1376)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !195, file: !9, line: 617, baseType: !79, size: 64, offset: 1440)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !195, file: !9, line: 618, baseType: !79, size: 64, offset: 1504)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !195, file: !9, line: 619, baseType: !79, size: 64, offset: 1568)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !195, file: !9, line: 620, baseType: !79, size: 64, offset: 1632)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !195, file: !9, line: 621, baseType: !12, size: 32, offset: 1696)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !192, file: !9, line: 631, baseType: !245, size: 2880)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !192, file: !9, line: 626, size: 2880, elements: !246)
!246 = !{!247, !251}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !245, file: !9, line: 629, baseType: !248, size: 1920)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 1920, elements: !249)
!249 = !{!250}
!250 = !DISubrange(count: 30)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !245, file: !9, line: 630, baseType: !252, size: 960, offset: 1920)
!252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 960, elements: !249)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !8, file: !9, line: 636, baseType: !254, size: 64, offset: 4032)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !9, line: 93, size: 6336, elements: !256)
!256 = !{!257, !258, !259, !264}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !255, file: !9, line: 94, baseType: !254, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !255, file: !9, line: 95, baseType: !12, size: 32, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !255, file: !9, line: 97, baseType: !260, size: 2048, offset: 128)
!260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !261, size: 2048, elements: !166)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DISubroutineType(types: !263)
!263 = !{null}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !255, file: !9, line: 98, baseType: !265, size: 4160, offset: 2176)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !9, line: 74, size: 4160, elements: !266)
!266 = !{!267, !269, !270, !271}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !265, file: !9, line: 75, baseType: !268, size: 2048)
!268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 2048, elements: !166)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !265, file: !9, line: 76, baseType: !268, size: 2048, offset: 2048)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !265, file: !9, line: 78, baseType: !184, size: 32, offset: 4096)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !265, file: !9, line: 81, baseType: !184, size: 32, offset: 4128)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !8, file: !9, line: 637, baseType: !255, size: 6336, offset: 4096)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !8, file: !9, line: 641, baseType: !274, size: 64, offset: 10432)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{null, !12}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !8, file: !9, line: 646, baseType: !279, size: 192, offset: 10496)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !9, line: 291, size: 192, elements: !280)
!280 = !{!281, !283, !284}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !279, file: !9, line: 293, baseType: !282, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !279, file: !9, line: 294, baseType: !12, size: 32, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !279, file: !9, line: 295, baseType: !14, size: 64, offset: 128)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !8, file: !9, line: 648, baseType: !286, size: 4224, offset: 10688)
!286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 4224, elements: !63)
!287 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !47)
!288 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !289)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "locale_t", file: !291, line: 10, baseType: !104)
!291 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/xlocale.h", directory: "/root/.unikraft/apps/redis/build")
!292 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !293, retainedTypes: !311, globals: !318)
!293 = !{!294}
!294 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !295, line: 36, baseType: !89, size: 32, elements: !296)
!295 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/gdtoa.h", directory: "/root/.unikraft/apps/redis/build")
!296 = !{!297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310}
!297 = !DIEnumerator(name: "STRTOG_Zero", value: 0, isUnsigned: true)
!298 = !DIEnumerator(name: "STRTOG_Normal", value: 1, isUnsigned: true)
!299 = !DIEnumerator(name: "STRTOG_Denormal", value: 2, isUnsigned: true)
!300 = !DIEnumerator(name: "STRTOG_Infinite", value: 3, isUnsigned: true)
!301 = !DIEnumerator(name: "STRTOG_NaN", value: 4, isUnsigned: true)
!302 = !DIEnumerator(name: "STRTOG_NaNbits", value: 5, isUnsigned: true)
!303 = !DIEnumerator(name: "STRTOG_NoNumber", value: 6, isUnsigned: true)
!304 = !DIEnumerator(name: "STRTOG_Retmask", value: 7, isUnsigned: true)
!305 = !DIEnumerator(name: "STRTOG_Neg", value: 8, isUnsigned: true)
!306 = !DIEnumerator(name: "STRTOG_Inexlo", value: 16, isUnsigned: true)
!307 = !DIEnumerator(name: "STRTOG_Inexhi", value: 32, isUnsigned: true)
!308 = !DIEnumerator(name: "STRTOG_Inexact", value: 48, isUnsigned: true)
!309 = !DIEnumerator(name: "STRTOG_Underflow", value: 64, isUnsigned: true)
!310 = !DIEnumerator(name: "STRTOG_Overflow", value: 128, isUnsigned: true)
!311 = !{!12, !312, !33, !41, !314, !317, !184, !316}
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !313, line: 79, baseType: !89)
!313 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "Long", file: !315, line: 84, baseType: !316)
!315 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/mprec.h", directory: "/root/.unikraft/apps/redis/build")
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !313, line: 77, baseType: !12)
!317 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!318 = !{!0, !319, !330}
!319 = !DIGlobalVariableExpression(var: !320, expr: !DIExpression())
!320 = distinct !DIGlobalVariable(name: "fpinan", scope: !2, file: !3, line: 433, type: !321, isLocal: true, isDefinition: true)
!321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !322)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "FPI", file: !295, line: 63, baseType: !323)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FPI", file: !295, line: 57, size: 160, elements: !324)
!324 = !{!325, !326, !327, !328, !329}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "nbits", scope: !323, file: !295, line: 58, baseType: !12, size: 32)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "emin", scope: !323, file: !295, line: 59, baseType: !12, size: 32, offset: 32)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "emax", scope: !323, file: !295, line: 60, baseType: !12, size: 32, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "rounding", scope: !323, file: !295, line: 61, baseType: !12, size: 32, offset: 96)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "sudden_underflow", scope: !323, file: !295, line: 62, baseType: !12, size: 32, offset: 128)
!330 = !DIGlobalVariableExpression(var: !331, expr: !DIExpression())
!331 = distinct !DIGlobalVariable(name: "tinytens", scope: !292, file: !3, line: 170, type: !332, isLocal: true, isDefinition: true)
!332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !333, size: 320, elements: !334)
!333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!334 = !{!335}
!335 = !DISubrange(count: 5)
!336 = !{!337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !376, !377, !378, !379, !380, !381, !384, !385, !386, !387, !388, !389, !390, !391, !393, !394, !398, !399}
!337 = !DILocalVariable(name: "ptr", arg: 1, scope: !2, file: !3, line: 253, type: !7)
!338 = !DILocalVariable(name: "s00", arg: 2, scope: !2, file: !3, line: 253, type: !287)
!339 = !DILocalVariable(name: "se", arg: 3, scope: !2, file: !3, line: 253, type: !288)
!340 = !DILocalVariable(name: "loc", arg: 4, scope: !2, file: !3, line: 254, type: !290)
!341 = !DILocalVariable(name: "scale", scope: !2, file: !3, line: 257, type: !12)
!342 = !DILocalVariable(name: "bb2", scope: !2, file: !3, line: 259, type: !12)
!343 = !DILocalVariable(name: "bb5", scope: !2, file: !3, line: 259, type: !12)
!344 = !DILocalVariable(name: "bbe", scope: !2, file: !3, line: 259, type: !12)
!345 = !DILocalVariable(name: "bd2", scope: !2, file: !3, line: 259, type: !12)
!346 = !DILocalVariable(name: "bd5", scope: !2, file: !3, line: 259, type: !12)
!347 = !DILocalVariable(name: "bbbits", scope: !2, file: !3, line: 259, type: !12)
!348 = !DILocalVariable(name: "bs2", scope: !2, file: !3, line: 259, type: !12)
!349 = !DILocalVariable(name: "c", scope: !2, file: !3, line: 259, type: !12)
!350 = !DILocalVariable(name: "decpt", scope: !2, file: !3, line: 259, type: !12)
!351 = !DILocalVariable(name: "dsign", scope: !2, file: !3, line: 259, type: !12)
!352 = !DILocalVariable(name: "e", scope: !2, file: !3, line: 260, type: !12)
!353 = !DILocalVariable(name: "e1", scope: !2, file: !3, line: 260, type: !12)
!354 = !DILocalVariable(name: "esign", scope: !2, file: !3, line: 260, type: !12)
!355 = !DILocalVariable(name: "i", scope: !2, file: !3, line: 260, type: !12)
!356 = !DILocalVariable(name: "j", scope: !2, file: !3, line: 260, type: !12)
!357 = !DILocalVariable(name: "k", scope: !2, file: !3, line: 260, type: !12)
!358 = !DILocalVariable(name: "nd", scope: !2, file: !3, line: 260, type: !12)
!359 = !DILocalVariable(name: "nd0", scope: !2, file: !3, line: 260, type: !12)
!360 = !DILocalVariable(name: "nf", scope: !2, file: !3, line: 260, type: !12)
!361 = !DILocalVariable(name: "nz", scope: !2, file: !3, line: 260, type: !12)
!362 = !DILocalVariable(name: "nz0", scope: !2, file: !3, line: 260, type: !12)
!363 = !DILocalVariable(name: "sign", scope: !2, file: !3, line: 260, type: !12)
!364 = !DILocalVariable(name: "s", scope: !2, file: !3, line: 261, type: !47)
!365 = !DILocalVariable(name: "s0", scope: !2, file: !3, line: 261, type: !47)
!366 = !DILocalVariable(name: "s1", scope: !2, file: !3, line: 261, type: !47)
!367 = !DILocalVariable(name: "aadj", scope: !2, file: !3, line: 262, type: !6)
!368 = !DILocalVariable(name: "adj", scope: !2, file: !3, line: 262, type: !6)
!369 = !DILocalVariable(name: "aadj1", scope: !2, file: !3, line: 263, type: !370)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "U", file: !315, line: 89, baseType: !371)
!371 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !315, line: 89, size: 64, elements: !372)
!372 = !{!373, !374}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !371, file: !315, line: 89, baseType: !6, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !371, file: !315, line: 89, baseType: !375, size: 64)
!375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 64, elements: !162)
!376 = !DILocalVariable(name: "rv", scope: !2, file: !3, line: 263, type: !370)
!377 = !DILocalVariable(name: "rv0", scope: !2, file: !3, line: 263, type: !370)
!378 = !DILocalVariable(name: "L", scope: !2, file: !3, line: 264, type: !314)
!379 = !DILocalVariable(name: "y", scope: !2, file: !3, line: 265, type: !184)
!380 = !DILocalVariable(name: "z", scope: !2, file: !3, line: 265, type: !184)
!381 = !DILocalVariable(name: "bb", scope: !2, file: !3, line: 266, type: !382)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Bigint", file: !315, line: 352, baseType: !175)
!384 = !DILocalVariable(name: "bb1", scope: !2, file: !3, line: 266, type: !382)
!385 = !DILocalVariable(name: "bd", scope: !2, file: !3, line: 266, type: !382)
!386 = !DILocalVariable(name: "bd0", scope: !2, file: !3, line: 266, type: !382)
!387 = !DILocalVariable(name: "bs", scope: !2, file: !3, line: 266, type: !382)
!388 = !DILocalVariable(name: "delta", scope: !2, file: !3, line: 266, type: !382)
!389 = !DILocalVariable(name: "Lsb", scope: !2, file: !3, line: 268, type: !184)
!390 = !DILocalVariable(name: "Lsb1", scope: !2, file: !3, line: 268, type: !184)
!391 = !DILocalVariable(name: "lconv", scope: !2, file: !3, line: 276, type: !392)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!393 = !DILocalVariable(name: "dec_len", scope: !2, file: !3, line: 277, type: !12)
!394 = !DILocalVariable(name: "exp", scope: !395, file: !3, line: 307, type: !314)
!395 = distinct !DILexicalBlock(scope: !396, file: !3, line: 305, column: 3)
!396 = distinct !DILexicalBlock(scope: !397, file: !3, line: 303, column: 17)
!397 = distinct !DILexicalBlock(scope: !2, file: !3, line: 303, column: 6)
!398 = !DILocalVariable(name: "bits", scope: !395, file: !3, line: 308, type: !375)
!399 = !DILocalVariable(name: "bits", scope: !400, file: !3, line: 432, type: !375)
!400 = distinct !DILexicalBlock(scope: !401, file: !3, line: 429, column: 20)
!401 = distinct !DILexicalBlock(scope: !402, file: !3, line: 429, column: 7)
!402 = distinct !DILexicalBlock(scope: !403, file: !3, line: 428, column: 11)
!403 = distinct !DILexicalBlock(scope: !2, file: !3, line: 428, column: 6)
!404 = !{i32 2, !"Dwarf Version", i32 4}
!405 = !{i32 2, !"Debug Info Version", i32 3}
!406 = !{i32 1, !"wchar_size", i32 4}
!407 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!408 = !DILocation(line: 253, column: 27, scope: !2)
!409 = !DILocation(line: 253, column: 55, scope: !2)
!410 = !DILocation(line: 253, column: 78, scope: !2)
!411 = !DILocation(line: 254, column: 14, scope: !2)
!412 = !DILocation(line: 259, column: 2, scope: !2)
!413 = !DILocation(line: 261, column: 2, scope: !2)
!414 = !DILocation(line: 266, column: 2, scope: !2)
!415 = !DILocation(line: 266, column: 11, scope: !2)
!416 = !{!417, !417, i64 0}
!417 = !{!"any pointer", !418, i64 0}
!418 = !{!"omnipotent char", !419, i64 0}
!419 = !{!"Simple C/C++ TBAA"}
!420 = !DILocation(line: 266, column: 29, scope: !2)
!421 = !DILocation(line: 266, column: 47, scope: !2)
!422 = !DILocation(line: 266, column: 59, scope: !2)
!423 = !DILocation(line: 276, column: 24, scope: !2)
!424 = !DILocation(line: 276, column: 16, scope: !2)
!425 = !DILocation(line: 277, column: 31, scope: !2)
!426 = !{!427, !417, i64 0}
!427 = !{!"lconv", !417, i64 0, !417, i64 8, !417, i64 16, !417, i64 24, !417, i64 32, !417, i64 40, !417, i64 48, !417, i64 56, !417, i64 64, !417, i64 72, !418, i64 80, !418, i64 81, !418, i64 82, !418, i64 83, !418, i64 84, !418, i64 85, !418, i64 86, !418, i64 87, !418, i64 88, !418, i64 89, !418, i64 90, !418, i64 91, !418, i64 92, !418, i64 93}
!428 = !DILocation(line: 277, column: 16, scope: !2)
!429 = !DILocation(line: 259, column: 47, scope: !2)
!430 = !DILocation(line: 260, column: 40, scope: !2)
!431 = !DILocation(line: 260, column: 44, scope: !2)
!432 = !DILocation(line: 260, column: 49, scope: !2)
!433 = !DILocation(line: 261, column: 15, scope: !2)
!434 = !DILocation(line: 282, column: 6, scope: !435)
!435 = distinct !DILexicalBlock(scope: !2, file: !3, line: 282, column: 2)
!436 = !DILocation(line: 0, scope: !437)
!437 = distinct !DILexicalBlock(scope: !435, file: !3, line: 282, column: 2)
!438 = !DILocation(line: 0, scope: !435)
!439 = !DILocation(line: 282, column: 27, scope: !437)
!440 = !{!418, !418, i64 0}
!441 = !DILocation(line: 282, column: 20, scope: !437)
!442 = !DILocation(line: 284, column: 4, scope: !443)
!443 = distinct !DILexicalBlock(scope: !437, file: !3, line: 282, column: 31)
!444 = !DILocation(line: 0, scope: !443)
!445 = !DILocation(line: 287, column: 9, scope: !446)
!446 = distinct !DILexicalBlock(scope: !443, file: !3, line: 287, column: 8)
!447 = !DILocation(line: 287, column: 8, scope: !446)
!448 = !DILocation(line: 287, column: 8, scope: !443)
!449 = !DILocation(line: 282, column: 16, scope: !437)
!450 = !DILocation(line: 282, column: 2, scope: !437)
!451 = distinct !{!451, !452, !453}
!452 = !DILocation(line: 282, column: 2, scope: !435)
!453 = !DILocation(line: 301, column: 3, scope: !435)
!454 = !DILocation(line: 303, column: 6, scope: !397)
!455 = !DILocation(line: 303, column: 7, scope: !397)
!456 = !DILocation(line: 280, column: 7, scope: !2)
!457 = !DILocation(line: 303, column: 9, scope: !397)
!458 = !DILocation(line: 303, column: 6, scope: !2)
!459 = !DILocation(line: 307, column: 3, scope: !395)
!460 = !DILocation(line: 308, column: 3, scope: !395)
!461 = !DILocation(line: 308, column: 11, scope: !395)
!462 = !DILocation(line: 309, column: 10, scope: !395)
!463 = !DILocation(line: 309, column: 3, scope: !395)
!464 = !DILocation(line: 307, column: 8, scope: !395)
!465 = !DILocation(line: 326, column: 16, scope: !466)
!466 = distinct !DILexicalBlock(scope: !467, file: !3, line: 315, column: 4)
!467 = distinct !DILexicalBlock(scope: !395, file: !3, line: 309, column: 16)
!468 = !DILocation(line: 260, column: 18, scope: !2)
!469 = !DILocation(line: 326, column: 4, scope: !466)
!470 = !DILocation(line: 328, column: 7, scope: !471)
!471 = distinct !DILexicalBlock(scope: !466, file: !3, line: 326, column: 80)
!472 = !DILocation(line: 329, column: 5, scope: !471)
!473 = !DILocation(line: 334, column: 9, scope: !474)
!474 = distinct !DILexicalBlock(scope: !471, file: !3, line: 334, column: 9)
!475 = !DILocation(line: 334, column: 9, scope: !471)
!476 = !DILocation(line: 0, scope: !477)
!477 = distinct !DILexicalBlock(scope: !474, file: !3, line: 334, column: 13)
!478 = !DILocation(line: 335, column: 6, scope: !477)
!479 = !DILocation(line: 336, column: 16, scope: !477)
!480 = !DILocation(line: 336, column: 6, scope: !477)
!481 = !DILocation(line: 337, column: 6, scope: !477)
!482 = !DILocation(line: 338, column: 23, scope: !471)
!483 = !{!484, !484, i64 0}
!484 = !{!"int", !418, i64 0}
!485 = !DILocalVariable(name: "L", arg: 1, scope: !486, file: !3, line: 215, type: !489)
!486 = distinct !DISubprogram(name: "ULtod", scope: !3, file: !3, line: 215, type: !487, isLocal: true, isDefinition: true, scopeLine: 220, flags: DIFlagPrototyped, isOptimized: true, unit: !292, retainedNodes: !490)
!487 = !DISubroutineType(types: !488)
!488 = !{null, !489, !489, !314, !12}
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!490 = !{!485, !491, !492, !493}
!491 = !DILocalVariable(name: "bits", arg: 2, scope: !486, file: !3, line: 215, type: !489)
!492 = !DILocalVariable(name: "exp", arg: 3, scope: !486, file: !3, line: 215, type: !314)
!493 = !DILocalVariable(name: "k", arg: 4, scope: !486, file: !3, line: 215, type: !12)
!494 = !DILocation(line: 215, column: 1, scope: !486, inlinedAt: !495)
!495 = distinct !DILocation(line: 338, column: 5, scope: !471)
!496 = !DILocation(line: 221, column: 2, scope: !486, inlinedAt: !495)
!497 = !DILocation(line: 228, column: 11, scope: !498, inlinedAt: !495)
!498 = distinct !DILexicalBlock(scope: !486, file: !3, line: 221, column: 29)
!499 = !DILocation(line: 228, column: 9, scope: !498, inlinedAt: !495)
!500 = !DILocation(line: 229, column: 11, scope: !498, inlinedAt: !495)
!501 = !DILocation(line: 229, column: 9, scope: !498, inlinedAt: !495)
!502 = !DILocation(line: 230, column: 3, scope: !498, inlinedAt: !495)
!503 = !DILocation(line: 234, column: 11, scope: !498, inlinedAt: !495)
!504 = !DILocation(line: 234, column: 9, scope: !498, inlinedAt: !495)
!505 = !DILocation(line: 235, column: 12, scope: !498, inlinedAt: !495)
!506 = !DILocation(line: 235, column: 20, scope: !498, inlinedAt: !495)
!507 = !DILocation(line: 235, column: 55, scope: !498, inlinedAt: !495)
!508 = !DILocation(line: 235, column: 33, scope: !498, inlinedAt: !495)
!509 = !DILocation(line: 235, column: 9, scope: !498, inlinedAt: !495)
!510 = !DILocation(line: 236, column: 3, scope: !498, inlinedAt: !495)
!511 = !DILocation(line: 241, column: 3, scope: !498, inlinedAt: !495)
!512 = !DILocation(line: 246, column: 4, scope: !498, inlinedAt: !495)
!513 = !DILocation(line: 0, scope: !471)
!514 = !DILocation(line: 247, column: 8, scope: !515, inlinedAt: !495)
!515 = distinct !DILexicalBlock(scope: !486, file: !3, line: 247, column: 6)
!516 = !DILocation(line: 247, column: 6, scope: !486, inlinedAt: !495)
!517 = !DILocation(line: 248, column: 9, scope: !515, inlinedAt: !495)
!518 = !DILocation(line: 248, column: 3, scope: !515, inlinedAt: !495)
!519 = !DILocation(line: 249, column: 1, scope: !486, inlinedAt: !495)
!520 = !DILocation(line: 339, column: 6, scope: !471)
!521 = !DILocation(line: 340, column: 4, scope: !467)
!522 = !DILocation(line: 281, column: 11, scope: !2)
!523 = !DILocation(line: 342, column: 3, scope: !396)
!524 = !DILocation(line: 345, column: 3, scope: !396)
!525 = !DILocation(line: 345, column: 10, scope: !396)
!526 = !DILocation(line: 345, column: 9, scope: !396)
!527 = !DILocation(line: 345, column: 14, scope: !396)
!528 = distinct !{!528, !524, !529}
!529 = !DILocation(line: 345, column: 22, scope: !396)
!530 = !DILocation(line: 346, column: 8, scope: !531)
!531 = distinct !DILexicalBlock(scope: !396, file: !3, line: 346, column: 7)
!532 = !DILocation(line: 346, column: 7, scope: !396)
!533 = !DILocation(line: 351, column: 24, scope: !534)
!534 = distinct !DILexicalBlock(scope: !535, file: !3, line: 351, column: 2)
!535 = distinct !DILexicalBlock(scope: !2, file: !3, line: 351, column: 2)
!536 = !DILocation(line: 349, column: 7, scope: !2)
!537 = !DILocation(line: 0, scope: !2)
!538 = !DILocation(line: 261, column: 19, scope: !2)
!539 = !DILocation(line: 265, column: 13, scope: !2)
!540 = !DILocation(line: 265, column: 10, scope: !2)
!541 = !DILocation(line: 260, column: 36, scope: !2)
!542 = !DILocation(line: 260, column: 27, scope: !2)
!543 = !DILocation(line: 351, column: 6, scope: !535)
!544 = !DILocation(line: 259, column: 44, scope: !2)
!545 = !DILocation(line: 351, column: 35, scope: !534)
!546 = !DILocation(line: 351, column: 2, scope: !535)
!547 = !DILocation(line: 352, column: 10, scope: !548)
!548 = distinct !DILexicalBlock(scope: !534, file: !3, line: 352, column: 7)
!549 = !DILocation(line: 352, column: 7, scope: !534)
!550 = !DILocation(line: 353, column: 10, scope: !548)
!551 = !DILocation(line: 353, column: 13, scope: !548)
!552 = !DILocation(line: 353, column: 17, scope: !548)
!553 = !DILocation(line: 353, column: 4, scope: !548)
!554 = !DILocation(line: 355, column: 10, scope: !548)
!555 = !DILocation(line: 355, column: 13, scope: !548)
!556 = !DILocation(line: 355, column: 17, scope: !548)
!557 = !DILocation(line: 0, scope: !548)
!558 = !DILocation(line: 351, column: 50, scope: !534)
!559 = !DILocation(line: 351, column: 55, scope: !534)
!560 = !DILocation(line: 351, column: 2, scope: !534)
!561 = distinct !{!561, !546, !562}
!562 = !DILocation(line: 355, column: 19, scope: !535)
!563 = !DILocation(line: 357, column: 25, scope: !564)
!564 = distinct !DILexicalBlock(scope: !2, file: !3, line: 357, column: 6)
!565 = !DILocation(line: 0, scope: !534)
!566 = !DILocation(line: 350, column: 8, scope: !2)
!567 = !DILocation(line: 351, column: 25, scope: !534)
!568 = !DILocation(line: 260, column: 31, scope: !2)
!569 = !DILocation(line: 357, column: 40, scope: !564)
!570 = !DILocation(line: 357, column: 6, scope: !564)
!571 = !DILocation(line: 357, column: 49, scope: !564)
!572 = !DILocation(line: 357, column: 6, scope: !2)
!573 = !DILocation(line: 360, column: 11, scope: !574)
!574 = distinct !DILexicalBlock(scope: !564, file: !3, line: 358, column: 3)
!575 = !DILocation(line: 360, column: 7, scope: !574)
!576 = !DILocation(line: 361, column: 8, scope: !577)
!577 = distinct !DILexicalBlock(scope: !574, file: !3, line: 361, column: 7)
!578 = !DILocation(line: 361, column: 7, scope: !574)
!579 = !DILocation(line: 362, column: 12, scope: !580)
!580 = distinct !DILexicalBlock(scope: !581, file: !3, line: 362, column: 4)
!581 = distinct !DILexicalBlock(scope: !582, file: !3, line: 362, column: 4)
!582 = distinct !DILexicalBlock(scope: !577, file: !3, line: 361, column: 12)
!583 = !DILocation(line: 362, column: 4, scope: !581)
!584 = !DILocation(line: 362, column: 25, scope: !580)
!585 = !DILocation(line: 363, column: 7, scope: !580)
!586 = !DILocation(line: 362, column: 24, scope: !580)
!587 = !DILocation(line: 362, column: 4, scope: !580)
!588 = distinct !{!588, !583, !589}
!589 = !DILocation(line: 363, column: 7, scope: !581)
!590 = !DILocation(line: 0, scope: !580)
!591 = !DILocation(line: 364, column: 16, scope: !592)
!592 = distinct !DILexicalBlock(scope: !582, file: !3, line: 364, column: 8)
!593 = !DILocation(line: 368, column: 5, scope: !594)
!594 = distinct !DILexicalBlock(scope: !592, file: !3, line: 364, column: 29)
!595 = !DILocation(line: 0, scope: !596)
!596 = distinct !DILexicalBlock(scope: !597, file: !3, line: 372, column: 3)
!597 = distinct !DILexicalBlock(scope: !574, file: !3, line: 372, column: 3)
!598 = !DILocation(line: 0, scope: !599)
!599 = distinct !DILexicalBlock(scope: !600, file: !3, line: 382, column: 9)
!600 = distinct !DILexicalBlock(scope: !601, file: !3, line: 375, column: 18)
!601 = distinct !DILexicalBlock(scope: !602, file: !3, line: 375, column: 8)
!602 = distinct !DILexicalBlock(scope: !596, file: !3, line: 372, column: 41)
!603 = !DILocation(line: 0, scope: !600)
!604 = !DILocation(line: 349, column: 5, scope: !2)
!605 = !DILocation(line: 372, column: 18, scope: !596)
!606 = !DILocation(line: 372, column: 3, scope: !597)
!607 = !DILocation(line: 360, column: 5, scope: !574)
!608 = !DILocation(line: 351, column: 9, scope: !535)
!609 = !DILocation(line: 0, scope: !594)
!610 = !DILocation(line: 350, column: 4, scope: !2)
!611 = !DILocation(line: 374, column: 6, scope: !602)
!612 = !DILocation(line: 375, column: 10, scope: !601)
!613 = !DILocation(line: 375, column: 8, scope: !602)
!614 = !DILocation(line: 376, column: 8, scope: !600)
!615 = !DILocation(line: 377, column: 9, scope: !616)
!616 = distinct !DILexicalBlock(scope: !600, file: !3, line: 377, column: 5)
!617 = !DILocation(line: 377, column: 18, scope: !618)
!618 = distinct !DILexicalBlock(scope: !616, file: !3, line: 377, column: 5)
!619 = !DILocation(line: 377, column: 5, scope: !616)
!620 = !DILocation(line: 0, scope: !618)
!621 = !DILocation(line: 378, column: 10, scope: !618)
!622 = !DILocation(line: 379, column: 9, scope: !623)
!623 = distinct !DILexicalBlock(scope: !618, file: !3, line: 378, column: 10)
!624 = !DILocation(line: 379, column: 7, scope: !623)
!625 = !DILocation(line: 380, column: 18, scope: !626)
!626 = distinct !DILexicalBlock(scope: !623, file: !3, line: 380, column: 15)
!627 = !DILocation(line: 380, column: 15, scope: !623)
!628 = !DILocation(line: 381, column: 9, scope: !626)
!629 = !DILocation(line: 381, column: 7, scope: !626)
!630 = !DILocation(line: 0, scope: !626)
!631 = !DILocation(line: 377, column: 25, scope: !618)
!632 = !DILocation(line: 377, column: 5, scope: !618)
!633 = distinct !{!633, !619, !634}
!634 = !DILocation(line: 381, column: 12, scope: !616)
!635 = !DILocation(line: 382, column: 9, scope: !600)
!636 = !DILocation(line: 383, column: 12, scope: !599)
!637 = !DILocation(line: 383, column: 15, scope: !599)
!638 = !DILocation(line: 383, column: 6, scope: !599)
!639 = !DILocation(line: 384, column: 17, scope: !640)
!640 = distinct !DILexicalBlock(scope: !599, file: !3, line: 384, column: 14)
!641 = !DILocation(line: 384, column: 14, scope: !599)
!642 = !DILocation(line: 385, column: 12, scope: !640)
!643 = !DILocation(line: 385, column: 15, scope: !640)
!644 = !DILocation(line: 385, column: 6, scope: !640)
!645 = !DILocation(line: 387, column: 5, scope: !600)
!646 = !DILocation(line: 0, scope: !535)
!647 = !DILocation(line: 0, scope: !602)
!648 = !DILocation(line: 372, column: 36, scope: !596)
!649 = !DILocation(line: 372, column: 35, scope: !596)
!650 = !DILocation(line: 372, column: 3, scope: !596)
!651 = distinct !{!651, !606, !652}
!652 = !DILocation(line: 388, column: 4, scope: !597)
!653 = !DILocation(line: 351, column: 14, scope: !535)
!654 = !DILocation(line: 280, column: 18, scope: !2)
!655 = !DILocation(line: 260, column: 4, scope: !2)
!656 = !DILocation(line: 392, column: 15, scope: !657)
!657 = distinct !DILexicalBlock(scope: !2, file: !3, line: 392, column: 6)
!658 = !DILocation(line: 393, column: 11, scope: !659)
!659 = distinct !DILexicalBlock(scope: !660, file: !3, line: 393, column: 7)
!660 = distinct !DILexicalBlock(scope: !657, file: !3, line: 392, column: 28)
!661 = !DILocation(line: 260, column: 11, scope: !2)
!662 = !DILocation(line: 398, column: 15, scope: !660)
!663 = !DILocation(line: 398, column: 14, scope: !660)
!664 = !DILocation(line: 398, column: 3, scope: !660)
!665 = !DILocation(line: 400, column: 5, scope: !666)
!666 = distinct !DILexicalBlock(scope: !660, file: !3, line: 398, column: 20)
!667 = !DILocation(line: 0, scope: !666)
!668 = !DILocation(line: 402, column: 10, scope: !666)
!669 = !DILocation(line: 402, column: 9, scope: !666)
!670 = !DILocation(line: 403, column: 4, scope: !666)
!671 = !DILocation(line: 397, column: 9, scope: !660)
!672 = !DILocation(line: 404, column: 16, scope: !673)
!673 = distinct !DILexicalBlock(scope: !660, file: !3, line: 404, column: 7)
!674 = !DILocation(line: 405, column: 12, scope: !675)
!675 = distinct !DILexicalBlock(scope: !673, file: !3, line: 404, column: 29)
!676 = !DILocation(line: 405, column: 4, scope: !675)
!677 = !DILocation(line: 406, column: 10, scope: !675)
!678 = !DILocation(line: 406, column: 9, scope: !675)
!679 = distinct !{!679, !676, !680}
!680 = !DILocation(line: 406, column: 12, scope: !675)
!681 = !DILocation(line: 0, scope: !675)
!682 = !DILocation(line: 407, column: 16, scope: !683)
!683 = distinct !DILexicalBlock(scope: !675, file: !3, line: 407, column: 8)
!684 = !DILocation(line: 264, column: 7, scope: !2)
!685 = !DILocation(line: 261, column: 24, scope: !2)
!686 = !DILocation(line: 0, scope: !687)
!687 = distinct !DILexicalBlock(scope: !683, file: !3, line: 407, column: 29)
!688 = !DILocation(line: 410, column: 17, scope: !687)
!689 = !DILocation(line: 410, column: 16, scope: !687)
!690 = !DILocation(line: 410, column: 29, scope: !687)
!691 = !DILocation(line: 410, column: 5, scope: !687)
!692 = !DILocation(line: 411, column: 12, scope: !687)
!693 = !DILocation(line: 411, column: 15, scope: !687)
!694 = distinct !{!694, !691, !695}
!695 = !DILocation(line: 411, column: 21, scope: !687)
!696 = !DILocation(line: 412, column: 11, scope: !697)
!697 = distinct !DILexicalBlock(scope: !687, file: !3, line: 412, column: 9)
!698 = !DILocation(line: 412, column: 16, scope: !697)
!699 = !DILocation(line: 412, column: 25, scope: !697)
!700 = !DILocation(line: 412, column: 20, scope: !697)
!701 = !DILocation(line: 416, column: 6, scope: !697)
!702 = !DILocation(line: 419, column: 9, scope: !703)
!703 = distinct !DILexicalBlock(scope: !687, file: !3, line: 419, column: 9)
!704 = !DILocation(line: 419, column: 9, scope: !687)
!705 = !DILocation(line: 420, column: 10, scope: !703)
!706 = !DILocation(line: 420, column: 6, scope: !703)
!707 = !DILocation(line: 426, column: 6, scope: !673)
!708 = !DILocation(line: 0, scope: !574)
!709 = !DILocation(line: 428, column: 7, scope: !403)
!710 = !DILocation(line: 428, column: 6, scope: !2)
!711 = !DILocation(line: 429, column: 11, scope: !401)
!712 = !DILocation(line: 432, column: 12, scope: !400)
!713 = !DILocation(line: 435, column: 9, scope: !714)
!714 = distinct !DILexicalBlock(scope: !400, file: !3, line: 435, column: 8)
!715 = !DILocation(line: 435, column: 8, scope: !400)
!716 = !DILocation(line: 436, column: 5, scope: !714)
!717 = !DILocation(line: 439, column: 9, scope: !718)
!718 = distinct !DILexicalBlock(scope: !719, file: !3, line: 439, column: 9)
!719 = distinct !DILexicalBlock(scope: !714, file: !3, line: 436, column: 15)
!720 = !DILocation(line: 439, column: 9, scope: !719)
!721 = !DILocation(line: 440, column: 6, scope: !722)
!722 = distinct !DILexicalBlock(scope: !718, file: !3, line: 439, column: 25)
!723 = !DILocation(line: 441, column: 11, scope: !724)
!724 = distinct !DILexicalBlock(scope: !722, file: !3, line: 441, column: 10)
!725 = !DILocation(line: 441, column: 10, scope: !722)
!726 = !DILocation(line: 442, column: 7, scope: !724)
!727 = !DILocation(line: 447, column: 6, scope: !722)
!728 = !DILocation(line: 452, column: 9, scope: !729)
!729 = distinct !DILexicalBlock(scope: !719, file: !3, line: 452, column: 9)
!730 = !DILocation(line: 452, column: 9, scope: !719)
!731 = !DILocation(line: 454, column: 11, scope: !732)
!732 = distinct !DILexicalBlock(scope: !733, file: !3, line: 454, column: 10)
!733 = distinct !DILexicalBlock(scope: !729, file: !3, line: 452, column: 26)
!734 = !DILocation(line: 454, column: 10, scope: !732)
!735 = !DILocation(line: 454, column: 13, scope: !732)
!736 = !DILocation(line: 455, column: 7, scope: !732)
!737 = !DILocation(line: 455, column: 30, scope: !732)
!738 = !DILocation(line: 455, column: 10, scope: !732)
!739 = !DILocation(line: 456, column: 8, scope: !732)
!740 = !DILocation(line: 454, column: 10, scope: !733)
!741 = !DILocation(line: 457, column: 33, scope: !742)
!742 = distinct !DILexicalBlock(scope: !732, file: !3, line: 456, column: 27)
!743 = !DILocation(line: 457, column: 31, scope: !742)
!744 = !DILocation(line: 457, column: 18, scope: !742)
!745 = !DILocation(line: 459, column: 20, scope: !742)
!746 = !DILocation(line: 459, column: 18, scope: !742)
!747 = !DILocation(line: 461, column: 7, scope: !742)
!748 = !DILocation(line: 476, column: 6, scope: !400)
!749 = !DILocation(line: 478, column: 4, scope: !400)
!750 = !DILocation(line: 481, column: 9, scope: !2)
!751 = !DILocation(line: 260, column: 7, scope: !2)
!752 = !DILocation(line: 488, column: 7, scope: !753)
!753 = distinct !DILexicalBlock(scope: !2, file: !3, line: 488, column: 6)
!754 = !DILocation(line: 488, column: 6, scope: !2)
!755 = !DILocation(line: 489, column: 3, scope: !753)
!756 = !DILocation(line: 0, scope: !753)
!757 = !DILocation(line: 490, column: 9, scope: !2)
!758 = !DILocation(line: 490, column: 6, scope: !2)
!759 = !DILocation(line: 260, column: 24, scope: !2)
!760 = !DILocation(line: 491, column: 13, scope: !2)
!761 = !DILocation(line: 492, column: 8, scope: !762)
!762 = distinct !DILexicalBlock(scope: !2, file: !3, line: 492, column: 6)
!763 = !DILocation(line: 492, column: 6, scope: !2)
!764 = !DILocation(line: 497, column: 21, scope: !765)
!765 = distinct !DILexicalBlock(scope: !762, file: !3, line: 492, column: 13)
!766 = !DILocation(line: 497, column: 14, scope: !765)
!767 = !{!768, !768, i64 0}
!768 = !{!"double", !418, i64 0}
!769 = !DILocation(line: 497, column: 26, scope: !765)
!770 = !DILocation(line: 497, column: 39, scope: !765)
!771 = !DILocation(line: 497, column: 37, scope: !765)
!772 = !DILocation(line: 498, column: 3, scope: !765)
!773 = !DILocation(line: 266, column: 41, scope: !2)
!774 = !DILocation(line: 500, column: 6, scope: !2)
!775 = !DILocation(line: 507, column: 8, scope: !776)
!776 = distinct !DILexicalBlock(scope: !777, file: !3, line: 507, column: 7)
!777 = distinct !DILexicalBlock(scope: !778, file: !3, line: 506, column: 6)
!778 = distinct !DILexicalBlock(scope: !2, file: !3, line: 500, column: 6)
!779 = !DILocation(line: 507, column: 7, scope: !777)
!780 = !DILocation(line: 509, column: 9, scope: !781)
!781 = distinct !DILexicalBlock(scope: !777, file: !3, line: 509, column: 7)
!782 = !DILocation(line: 509, column: 7, scope: !777)
!783 = !DILocation(line: 510, column: 10, scope: !784)
!784 = distinct !DILexicalBlock(scope: !785, file: !3, line: 510, column: 8)
!785 = distinct !DILexicalBlock(scope: !781, file: !3, line: 509, column: 14)
!786 = !DILocation(line: 510, column: 8, scope: !785)
!787 = !DILocation(line: 521, column: 16, scope: !788)
!788 = distinct !DILexicalBlock(scope: !784, file: !3, line: 510, column: 23)
!789 = !DILocation(line: 522, column: 5, scope: !788)
!790 = !DILocation(line: 525, column: 16, scope: !785)
!791 = !DILocation(line: 526, column: 22, scope: !792)
!792 = distinct !DILexicalBlock(scope: !785, file: !3, line: 526, column: 8)
!793 = !DILocation(line: 526, column: 10, scope: !792)
!794 = !DILocation(line: 526, column: 8, scope: !785)
!795 = !DILocation(line: 537, column: 7, scope: !796)
!796 = distinct !DILexicalBlock(scope: !792, file: !3, line: 526, column: 27)
!797 = !DILocation(line: 538, column: 17, scope: !796)
!798 = !DILocation(line: 538, column: 14, scope: !796)
!799 = !DILocation(line: 551, column: 16, scope: !796)
!800 = !DILocation(line: 553, column: 5, scope: !796)
!801 = !DILocation(line: 557, column: 14, scope: !802)
!802 = distinct !DILexicalBlock(scope: !781, file: !3, line: 557, column: 12)
!803 = !DILocation(line: 557, column: 12, scope: !781)
!804 = !DILocation(line: 565, column: 15, scope: !805)
!805 = distinct !DILexicalBlock(scope: !802, file: !3, line: 557, column: 28)
!806 = !DILocation(line: 566, column: 4, scope: !805)
!807 = !DILocation(line: 570, column: 11, scope: !2)
!808 = !DILocation(line: 570, column: 5, scope: !2)
!809 = !DILocation(line: 257, column: 6, scope: !2)
!810 = !DILocation(line: 594, column: 9, scope: !811)
!811 = distinct !DILexicalBlock(scope: !2, file: !3, line: 594, column: 6)
!812 = !DILocation(line: 594, column: 6, scope: !2)
!813 = !DILocation(line: 595, column: 16, scope: !814)
!814 = distinct !DILexicalBlock(scope: !815, file: !3, line: 595, column: 8)
!815 = distinct !DILexicalBlock(scope: !811, file: !3, line: 594, column: 14)
!816 = !DILocation(line: 595, column: 22, scope: !814)
!817 = !DILocation(line: 595, column: 8, scope: !815)
!818 = !DILocation(line: 596, column: 16, scope: !814)
!819 = !DILocation(line: 596, column: 13, scope: !814)
!820 = !DILocation(line: 596, column: 4, scope: !814)
!821 = !DILocation(line: 0, scope: !814)
!822 = !DILocation(line: 597, column: 10, scope: !823)
!823 = distinct !DILexicalBlock(scope: !815, file: !3, line: 597, column: 7)
!824 = !DILocation(line: 597, column: 7, scope: !815)
!825 = !DILocation(line: 598, column: 11, scope: !826)
!826 = distinct !DILexicalBlock(scope: !827, file: !3, line: 598, column: 8)
!827 = distinct !DILexicalBlock(scope: !823, file: !3, line: 597, column: 18)
!828 = !DILocation(line: 598, column: 8, scope: !827)
!829 = !DILocation(line: 601, column: 10, scope: !830)
!830 = distinct !DILexicalBlock(scope: !826, file: !3, line: 598, column: 29)
!831 = !DILocation(line: 601, column: 17, scope: !830)
!832 = !{!833, !484, i64 0}
!833 = !{!"_reent", !484, i64 0, !417, i64 8, !417, i64 16, !417, i64 24, !484, i64 32, !418, i64 36, !484, i64 64, !417, i64 72, !484, i64 80, !417, i64 88, !417, i64 96, !484, i64 104, !417, i64 112, !417, i64 120, !484, i64 128, !417, i64 136, !418, i64 144, !417, i64 504, !834, i64 512, !417, i64 1304, !836, i64 1312, !418, i64 1336}
!834 = !{!"_atexit", !417, i64 0, !484, i64 8, !418, i64 16, !835, i64 272}
!835 = !{!"_on_exit_args", !418, i64 0, !418, i64 256, !484, i64 512, !484, i64 516}
!836 = !{!"_glue", !417, i64 0, !484, i64 8, !417, i64 16}
!837 = !DILocation(line: 637, column: 9, scope: !830)
!838 = !DILocation(line: 260, column: 21, scope: !2)
!839 = !DILocation(line: 642, column: 8, scope: !840)
!840 = distinct !DILexicalBlock(scope: !827, file: !3, line: 642, column: 4)
!841 = !DILocation(line: 642, column: 18, scope: !842)
!842 = distinct !DILexicalBlock(scope: !840, file: !3, line: 642, column: 4)
!843 = !DILocation(line: 642, column: 4, scope: !840)
!844 = !DILocation(line: 643, column: 12, scope: !845)
!845 = distinct !DILexicalBlock(scope: !842, file: !3, line: 643, column: 9)
!846 = !DILocation(line: 643, column: 9, scope: !842)
!847 = !DILocation(line: 644, column: 18, scope: !845)
!848 = !DILocation(line: 644, column: 15, scope: !845)
!849 = !DILocation(line: 644, column: 6, scope: !845)
!850 = !DILocation(line: 0, scope: !845)
!851 = !DILocation(line: 642, column: 24, scope: !842)
!852 = !DILocation(line: 642, column: 4, scope: !842)
!853 = distinct !{!853, !843, !854}
!854 = !DILocation(line: 644, column: 27, scope: !840)
!855 = !DILocation(line: 497, column: 12, scope: !765)
!856 = !DILocation(line: 0, scope: !842)
!857 = !DILocation(line: 646, column: 15, scope: !827)
!858 = !DILocation(line: 647, column: 16, scope: !827)
!859 = !DILocation(line: 647, column: 13, scope: !827)
!860 = !DILocation(line: 648, column: 13, scope: !861)
!861 = distinct !DILexicalBlock(scope: !827, file: !3, line: 648, column: 8)
!862 = !DILocation(line: 648, column: 24, scope: !861)
!863 = !DILocation(line: 649, column: 5, scope: !861)
!864 = !DILocation(line: 648, column: 8, scope: !827)
!865 = !DILocation(line: 651, column: 10, scope: !866)
!866 = distinct !DILexicalBlock(scope: !827, file: !3, line: 651, column: 8)
!867 = !DILocation(line: 651, column: 8, scope: !827)
!868 = !DILocation(line: 658, column: 5, scope: !869)
!869 = distinct !DILexicalBlock(scope: !866, file: !3, line: 651, column: 45)
!870 = !DILocation(line: 660, column: 16, scope: !866)
!871 = !DILocation(line: 663, column: 14, scope: !872)
!872 = distinct !DILexicalBlock(scope: !811, file: !3, line: 663, column: 11)
!873 = !DILocation(line: 663, column: 11, scope: !811)
!874 = !DILocation(line: 664, column: 8, scope: !875)
!875 = distinct !DILexicalBlock(scope: !872, file: !3, line: 663, column: 19)
!876 = !DILocation(line: 665, column: 16, scope: !877)
!877 = distinct !DILexicalBlock(scope: !875, file: !3, line: 665, column: 8)
!878 = !DILocation(line: 665, column: 22, scope: !877)
!879 = !DILocation(line: 665, column: 8, scope: !875)
!880 = !DILocation(line: 666, column: 16, scope: !877)
!881 = !DILocation(line: 666, column: 13, scope: !877)
!882 = !DILocation(line: 666, column: 4, scope: !877)
!883 = !DILocation(line: 0, scope: !877)
!884 = !DILocation(line: 667, column: 10, scope: !885)
!885 = distinct !DILexicalBlock(scope: !875, file: !3, line: 667, column: 7)
!886 = !DILocation(line: 667, column: 7, scope: !875)
!887 = !DILocation(line: 668, column: 11, scope: !888)
!888 = distinct !DILexicalBlock(scope: !889, file: !3, line: 668, column: 8)
!889 = distinct !DILexicalBlock(scope: !885, file: !3, line: 667, column: 17)
!890 = !DILocation(line: 668, column: 8, scope: !889)
!891 = !DILocation(line: 671, column: 11, scope: !892)
!892 = distinct !DILexicalBlock(scope: !889, file: !3, line: 671, column: 8)
!893 = !DILocation(line: 671, column: 8, scope: !889)
!894 = !DILocation(line: 672, column: 5, scope: !892)
!895 = !DILocation(line: 673, column: 8, scope: !896)
!896 = distinct !DILexicalBlock(scope: !889, file: !3, line: 673, column: 4)
!897 = !DILocation(line: 673, column: 18, scope: !898)
!898 = distinct !DILexicalBlock(scope: !896, file: !3, line: 673, column: 4)
!899 = !DILocation(line: 673, column: 4, scope: !896)
!900 = !DILocation(line: 674, column: 12, scope: !901)
!901 = distinct !DILexicalBlock(scope: !898, file: !3, line: 674, column: 9)
!902 = !DILocation(line: 674, column: 9, scope: !898)
!903 = !DILocation(line: 675, column: 18, scope: !901)
!904 = !DILocation(line: 675, column: 15, scope: !901)
!905 = !DILocation(line: 675, column: 6, scope: !901)
!906 = !DILocation(line: 0, scope: !901)
!907 = !DILocation(line: 673, column: 24, scope: !898)
!908 = !DILocation(line: 673, column: 4, scope: !898)
!909 = distinct !{!909, !899, !910}
!910 = !DILocation(line: 675, column: 28, scope: !896)
!911 = !DILocation(line: 676, column: 8, scope: !912)
!912 = distinct !DILexicalBlock(scope: !889, file: !3, line: 676, column: 8)
!913 = !DILocation(line: 676, column: 14, scope: !912)
!914 = !DILocation(line: 676, column: 34, scope: !912)
!915 = !DILocation(line: 677, column: 7, scope: !912)
!916 = !DILocation(line: 676, column: 30, scope: !912)
!917 = !DILocation(line: 677, column: 22, scope: !912)
!918 = !DILocation(line: 676, column: 8, scope: !889)
!919 = !DILocation(line: 679, column: 11, scope: !920)
!920 = distinct !DILexicalBlock(scope: !921, file: !3, line: 679, column: 9)
!921 = distinct !DILexicalBlock(scope: !912, file: !3, line: 677, column: 27)
!922 = !DILocation(line: 679, column: 9, scope: !921)
!923 = !DILocation(line: 683, column: 12, scope: !924)
!924 = distinct !DILexicalBlock(scope: !925, file: !3, line: 683, column: 10)
!925 = distinct !DILexicalBlock(scope: !920, file: !3, line: 679, column: 18)
!926 = !DILocation(line: 683, column: 10, scope: !925)
!927 = !DILocation(line: 684, column: 7, scope: !924)
!928 = !DILocation(line: 704, column: 9, scope: !889)
!929 = !DILocation(line: 686, column: 37, scope: !924)
!930 = !DILocation(line: 686, column: 32, scope: !924)
!931 = !DILocation(line: 686, column: 18, scope: !924)
!932 = !DILocation(line: 690, column: 31, scope: !920)
!933 = !DILocation(line: 690, column: 17, scope: !920)
!934 = !DILocation(line: 0, scope: !765)
!935 = !DILocation(line: 704, column: 10, scope: !936)
!936 = distinct !DILexicalBlock(scope: !889, file: !3, line: 704, column: 9)
!937 = !DILocation(line: 708, column: 11, scope: !938)
!938 = distinct !DILexicalBlock(scope: !936, file: !3, line: 704, column: 20)
!939 = !DILocation(line: 708, column: 18, scope: !938)
!940 = !DILocation(line: 710, column: 10, scope: !938)
!941 = !DILocation(line: 733, column: 8, scope: !2)
!942 = !DILocation(line: 734, column: 10, scope: !943)
!943 = distinct !DILexicalBlock(scope: !2, file: !3, line: 734, column: 6)
!944 = !DILocation(line: 734, column: 6, scope: !2)
!945 = !DILocation(line: 263, column: 15, scope: !2)
!946 = !DILocation(line: 738, column: 24, scope: !947)
!947 = distinct !DILexicalBlock(scope: !948, file: !3, line: 737, column: 10)
!948 = distinct !DILexicalBlock(scope: !949, file: !3, line: 737, column: 2)
!949 = distinct !DILexicalBlock(scope: !2, file: !3, line: 737, column: 2)
!950 = !{!951, !484, i64 8}
!951 = !{!"_Bigint", !417, i64 0, !484, i64 8, !484, i64 12, !484, i64 16, !484, i64 20, !418, i64 24}
!952 = !DILocation(line: 738, column: 8, scope: !947)
!953 = !DILocation(line: 739, column: 10, scope: !954)
!954 = distinct !DILexicalBlock(scope: !947, file: !3, line: 739, column: 7)
!955 = !DILocation(line: 739, column: 7, scope: !947)
!956 = !DILocation(line: 741, column: 3, scope: !947)
!957 = !{!951, !484, i64 20}
!958 = !DILocation(line: 742, column: 16, scope: !947)
!959 = !DILocation(line: 259, column: 16, scope: !2)
!960 = !DILocation(line: 259, column: 31, scope: !2)
!961 = !DILocation(line: 742, column: 8, scope: !947)
!962 = !DILocation(line: 742, column: 6, scope: !947)
!963 = !DILocation(line: 743, column: 10, scope: !964)
!964 = distinct !DILexicalBlock(scope: !947, file: !3, line: 743, column: 7)
!965 = !DILocation(line: 743, column: 7, scope: !947)
!966 = !DILocation(line: 745, column: 8, scope: !947)
!967 = !DILocation(line: 746, column: 10, scope: !968)
!968 = distinct !DILexicalBlock(scope: !947, file: !3, line: 746, column: 7)
!969 = !DILocation(line: 746, column: 7, scope: !947)
!970 = !DILocation(line: 749, column: 7, scope: !947)
!971 = !DILocation(line: 259, column: 6, scope: !2)
!972 = !DILocation(line: 259, column: 11, scope: !2)
!973 = !DILocation(line: 259, column: 26, scope: !2)
!974 = !DILocation(line: 259, column: 21, scope: !2)
!975 = !DILocation(line: 757, column: 7, scope: !976)
!976 = distinct !DILexicalBlock(scope: !947, file: !3, line: 757, column: 7)
!977 = !DILocation(line: 757, column: 11, scope: !976)
!978 = !DILocation(line: 757, column: 7, scope: !947)
!979 = !DILocation(line: 259, column: 39, scope: !2)
!980 = !DILocation(line: 268, column: 10, scope: !2)
!981 = !DILocation(line: 268, column: 15, scope: !2)
!982 = !DILocation(line: 769, column: 11, scope: !947)
!983 = !DILocation(line: 770, column: 11, scope: !947)
!984 = !DILocation(line: 770, column: 9, scope: !947)
!985 = !DILocation(line: 771, column: 13, scope: !947)
!986 = !DILocation(line: 772, column: 9, scope: !987)
!987 = distinct !DILexicalBlock(scope: !947, file: !3, line: 772, column: 7)
!988 = !DILocation(line: 772, column: 7, scope: !947)
!989 = !DILocation(line: 773, column: 13, scope: !990)
!990 = distinct !DILexicalBlock(scope: !987, file: !3, line: 772, column: 17)
!991 = !DILocation(line: 774, column: 6, scope: !990)
!992 = !DILocation(line: 775, column: 10, scope: !993)
!993 = distinct !DILexicalBlock(scope: !990, file: !3, line: 775, column: 8)
!994 = !DILocation(line: 775, column: 8, scope: !990)
!995 = !DILocation(line: 778, column: 21, scope: !993)
!996 = !DILocation(line: 778, column: 16, scope: !993)
!997 = !DILocation(line: 776, column: 9, scope: !993)
!998 = !DILocation(line: 796, column: 7, scope: !947)
!999 = !DILocation(line: 0, scope: !947)
!1000 = !DILocation(line: 797, column: 7, scope: !947)
!1001 = !DILocation(line: 799, column: 7, scope: !947)
!1002 = !DILocation(line: 801, column: 11, scope: !947)
!1003 = !DILocation(line: 801, column: 7, scope: !947)
!1004 = !DILocation(line: 802, column: 9, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !947, file: !3, line: 802, column: 7)
!1006 = !DILocation(line: 802, column: 7, scope: !947)
!1007 = !DILocation(line: 803, column: 4, scope: !1005)
!1008 = !DILocation(line: 804, column: 9, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !947, file: !3, line: 804, column: 7)
!1010 = !DILocation(line: 804, column: 7, scope: !947)
!1011 = !DILocation(line: 805, column: 8, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 804, column: 14)
!1013 = !DILocation(line: 806, column: 8, scope: !1012)
!1014 = !DILocation(line: 807, column: 8, scope: !1012)
!1015 = !DILocation(line: 808, column: 4, scope: !1012)
!1016 = !DILocation(line: 809, column: 7, scope: !947)
!1017 = !DILocation(line: 810, column: 9, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1019, file: !3, line: 809, column: 16)
!1019 = distinct !DILexicalBlock(scope: !947, file: !3, line: 809, column: 7)
!1020 = !DILocation(line: 811, column: 11, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 811, column: 8)
!1022 = !DILocation(line: 811, column: 8, scope: !1018)
!1023 = !DILocation(line: 813, column: 24, scope: !1018)
!1024 = !DILocation(line: 813, column: 10, scope: !1018)
!1025 = !DILocation(line: 266, column: 23, scope: !2)
!1026 = !DILocation(line: 814, column: 12, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 814, column: 8)
!1028 = !DILocation(line: 814, column: 8, scope: !1018)
!1029 = !DILocation(line: 816, column: 15, scope: !1018)
!1030 = !DILocation(line: 816, column: 4, scope: !1018)
!1031 = !DILocation(line: 817, column: 7, scope: !1018)
!1032 = !DILocation(line: 818, column: 4, scope: !1018)
!1033 = !DILocation(line: 819, column: 11, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !947, file: !3, line: 819, column: 7)
!1035 = !DILocation(line: 819, column: 7, scope: !947)
!1036 = !DILocation(line: 820, column: 21, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 819, column: 16)
!1038 = !DILocation(line: 820, column: 9, scope: !1037)
!1039 = !DILocation(line: 820, column: 7, scope: !1037)
!1040 = !DILocation(line: 821, column: 11, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1037, file: !3, line: 821, column: 8)
!1042 = !DILocation(line: 821, column: 8, scope: !1037)
!1043 = !DILocation(line: 824, column: 7, scope: !947)
!1044 = !DILocation(line: 825, column: 9, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1046, file: !3, line: 824, column: 16)
!1046 = distinct !DILexicalBlock(scope: !947, file: !3, line: 824, column: 7)
!1047 = !DILocation(line: 826, column: 11, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1045, file: !3, line: 826, column: 8)
!1049 = !DILocation(line: 826, column: 8, scope: !1045)
!1050 = !DILocation(line: 829, column: 11, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !947, file: !3, line: 829, column: 7)
!1052 = !DILocation(line: 829, column: 7, scope: !947)
!1053 = !DILocation(line: 830, column: 9, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1051, file: !3, line: 829, column: 16)
!1055 = !DILocation(line: 831, column: 11, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1054, file: !3, line: 831, column: 8)
!1057 = !DILocation(line: 831, column: 8, scope: !1054)
!1058 = !DILocation(line: 0, scope: !1045)
!1059 = !DILocation(line: 834, column: 11, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !947, file: !3, line: 834, column: 7)
!1061 = !DILocation(line: 834, column: 7, scope: !947)
!1062 = !DILocation(line: 835, column: 9, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 834, column: 16)
!1064 = !DILocation(line: 836, column: 11, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1063, file: !3, line: 836, column: 8)
!1066 = !DILocation(line: 836, column: 8, scope: !1063)
!1067 = !DILocation(line: 0, scope: !1018)
!1068 = !DILocation(line: 839, column: 21, scope: !947)
!1069 = !DILocation(line: 839, column: 11, scope: !947)
!1070 = !DILocation(line: 840, column: 13, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !947, file: !3, line: 840, column: 7)
!1072 = !DILocation(line: 840, column: 7, scope: !947)
!1073 = !DILocation(line: 842, column: 18, scope: !947)
!1074 = !{!951, !484, i64 16}
!1075 = !DILocation(line: 259, column: 54, scope: !2)
!1076 = !DILocation(line: 843, column: 16, scope: !947)
!1077 = !DILocation(line: 844, column: 7, scope: !947)
!1078 = !DILocation(line: 938, column: 9, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !947, file: !3, line: 938, column: 7)
!1080 = !DILocation(line: 938, column: 7, scope: !947)
!1081 = !DILocation(line: 942, column: 8, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 942, column: 8)
!1083 = distinct !DILexicalBlock(scope: !1079, file: !3, line: 938, column: 14)
!1084 = !DILocation(line: 942, column: 14, scope: !1082)
!1085 = !DILocation(line: 942, column: 17, scope: !1082)
!1086 = !DILocation(line: 942, column: 28, scope: !1082)
!1087 = !DILocation(line: 942, column: 31, scope: !1082)
!1088 = !DILocation(line: 942, column: 42, scope: !1082)
!1089 = !DILocation(line: 945, column: 5, scope: !1082)
!1090 = !DILocation(line: 945, column: 20, scope: !1082)
!1091 = !DILocation(line: 945, column: 32, scope: !1082)
!1092 = !DILocation(line: 942, column: 8, scope: !1083)
!1093 = !DILocation(line: 957, column: 9, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 957, column: 8)
!1095 = !DILocation(line: 957, column: 22, scope: !1094)
!1096 = !DILocation(line: 957, column: 32, scope: !1094)
!1097 = !DILocation(line: 957, column: 37, scope: !1094)
!1098 = !DILocation(line: 957, column: 8, scope: !1083)
!1099 = !DILocation(line: 964, column: 12, scope: !1083)
!1100 = !DILocation(line: 965, column: 8, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 965, column: 8)
!1102 = !DILocation(line: 965, column: 23, scope: !1101)
!1103 = !DILocation(line: 965, column: 8, scope: !1083)
!1104 = !DILocation(line: 969, column: 9, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !947, file: !3, line: 969, column: 7)
!1106 = !DILocation(line: 969, column: 7, scope: !947)
!1107 = !DILocation(line: 971, column: 8, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 971, column: 8)
!1109 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 969, column: 15)
!1110 = !DILocation(line: 0, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 997, column: 13)
!1112 = !DILocation(line: 971, column: 8, scope: !1109)
!1113 = !DILocation(line: 972, column: 36, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1115, file: !3, line: 972, column: 9)
!1115 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 971, column: 15)
!1116 = !DILocation(line: 973, column: 6, scope: !1114)
!1117 = !DILocation(line: 973, column: 10, scope: !1114)
!1118 = !DILocation(line: 975, column: 11, scope: !1114)
!1119 = !DILocation(line: 975, column: 30, scope: !1114)
!1120 = !DILocation(line: 975, column: 42, scope: !1114)
!1121 = !DILocation(line: 975, column: 4, scope: !1114)
!1122 = !DILocation(line: 976, column: 43, scope: !1114)
!1123 = !DILocation(line: 976, column: 40, scope: !1114)
!1124 = !DILocation(line: 976, column: 31, scope: !1114)
!1125 = !DILocation(line: 973, column: 21, scope: !1114)
!1126 = !DILocation(line: 972, column: 9, scope: !1115)
!1127 = !DILocation(line: 980, column: 21, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 980, column: 10)
!1129 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 978, column: 23)
!1130 = !DILocation(line: 980, column: 29, scope: !1128)
!1131 = !DILocation(line: 980, column: 43, scope: !1128)
!1132 = !DILocation(line: 980, column: 10, scope: !1129)
!1133 = !DILocation(line: 982, column: 17, scope: !1129)
!1134 = !DILocation(line: 994, column: 6, scope: !1129)
!1135 = !DILocation(line: 997, column: 26, scope: !1111)
!1136 = !DILocation(line: 997, column: 40, scope: !1111)
!1137 = !DILocation(line: 997, column: 44, scope: !1111)
!1138 = !DILocation(line: 997, column: 13, scope: !1108)
!1139 = !DILocation(line: 1015, column: 9, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1111, file: !3, line: 997, column: 56)
!1141 = !DILocation(line: 1016, column: 10, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1143, file: !3, line: 1015, column: 16)
!1143 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 1015, column: 9)
!1144 = !DILocation(line: 1016, column: 21, scope: !1142)
!1145 = !DILocation(line: 1017, column: 12, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 1017, column: 10)
!1147 = !DILocation(line: 1017, column: 10, scope: !1142)
!1148 = !DILocation(line: 1018, column: 13, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1150, file: !3, line: 1018, column: 11)
!1150 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 1017, column: 33)
!1151 = !DILocation(line: 1018, column: 11, scope: !1150)
!1152 = !DILocation(line: 1237, column: 6, scope: !2)
!1153 = !DILocation(line: 1029, column: 16, scope: !1140)
!1154 = !DILocation(line: 1031, column: 16, scope: !1140)
!1155 = !DILocation(line: 1036, column: 5, scope: !1140)
!1156 = !DILocation(line: 1041, column: 8, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 1041, column: 8)
!1158 = !DILocation(line: 1041, column: 8, scope: !1109)
!1159 = !DILocation(line: 1042, column: 22, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1161, file: !3, line: 1042, column: 9)
!1161 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 1041, column: 14)
!1162 = !DILocation(line: 1042, column: 9, scope: !1161)
!1163 = !DILocation(line: 1045, column: 15, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 1045, column: 13)
!1165 = !DILocation(line: 1045, column: 26, scope: !1164)
!1166 = !DILocation(line: 1045, column: 13, scope: !1157)
!1167 = !DILocalVariable(name: "x", arg: 1, scope: !1168, file: !3, line: 192, type: !370)
!1168 = distinct !DISubprogram(name: "sulp", scope: !3, file: !3, line: 192, type: !1169, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !292, retainedNodes: !1171)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{!6, !370, !12}
!1171 = !{!1167, !1172, !1173, !1174, !1175}
!1172 = !DILocalVariable(name: "scale", arg: 2, scope: !1168, file: !3, line: 192, type: !12)
!1173 = !DILocalVariable(name: "u", scope: !1168, file: !3, line: 196, type: !370)
!1174 = !DILocalVariable(name: "rv", scope: !1168, file: !3, line: 197, type: !6)
!1175 = !DILocalVariable(name: "i", scope: !1168, file: !3, line: 198, type: !12)
!1176 = !DILocation(line: 192, column: 1, scope: !1168, inlinedAt: !1177)
!1177 = distinct !DILocation(line: 0, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 1059, column: 9)
!1179 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 1052, column: 8)
!1180 = !DILocation(line: 200, column: 14, scope: !1168, inlinedAt: !1177)
!1181 = !DILocation(line: 197, column: 16, scope: !1168, inlinedAt: !1177)
!1182 = !DILocation(line: 201, column: 20, scope: !1183, inlinedAt: !1177)
!1183 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 201, column: 13)
!1184 = !DILocation(line: 201, column: 40, scope: !1183, inlinedAt: !1177)
!1185 = !DILocation(line: 201, column: 62, scope: !1183, inlinedAt: !1177)
!1186 = !DILocation(line: 201, column: 36, scope: !1183, inlinedAt: !1177)
!1187 = !DILocation(line: 198, column: 13, scope: !1168, inlinedAt: !1177)
!1188 = !DILocation(line: 201, column: 77, scope: !1183, inlinedAt: !1177)
!1189 = !DILocation(line: 201, column: 13, scope: !1168, inlinedAt: !1177)
!1190 = !DILocation(line: 203, column: 43, scope: !1168, inlinedAt: !1177)
!1191 = !DILocation(line: 203, column: 27, scope: !1168, inlinedAt: !1177)
!1192 = !DILocation(line: 203, column: 19, scope: !1168, inlinedAt: !1177)
!1193 = !DILocation(line: 196, column: 11, scope: !1168, inlinedAt: !1177)
!1194 = !DILocation(line: 207, column: 19, scope: !1168, inlinedAt: !1177)
!1195 = !DILocation(line: 207, column: 9, scope: !1168, inlinedAt: !1177)
!1196 = !DILocation(line: 0, scope: !1168, inlinedAt: !1177)
!1197 = !DILocation(line: 0, scope: !1178)
!1198 = !DILocation(line: 208, column: 9, scope: !1168, inlinedAt: !1177)
!1199 = !DILocation(line: 1052, column: 8, scope: !1109)
!1200 = !DILocation(line: 1054, column: 14, scope: !1179)
!1201 = !DILocation(line: 1054, column: 5, scope: !1179)
!1202 = !DILocation(line: 1061, column: 14, scope: !1178)
!1203 = !DILocation(line: 1066, column: 10, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 1066, column: 9)
!1205 = !DILocation(line: 1066, column: 9, scope: !1178)
!1206 = !DILocation(line: 1074, column: 4, scope: !1109)
!1207 = !DILocation(line: 1076, column: 15, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !947, file: !3, line: 1076, column: 7)
!1209 = !DILocation(line: 262, column: 9, scope: !2)
!1210 = !DILocation(line: 1076, column: 33, scope: !1208)
!1211 = !DILocation(line: 1076, column: 7, scope: !947)
!1212 = !DILocation(line: 1077, column: 8, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 1077, column: 8)
!1214 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 1076, column: 40)
!1215 = !DILocation(line: 1077, column: 8, scope: !1214)
!1216 = !DILocation(line: 1079, column: 13, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 1079, column: 13)
!1218 = !DILocation(line: 1079, column: 24, scope: !1217)
!1219 = !DILocation(line: 1079, column: 38, scope: !1217)
!1220 = !DILocation(line: 1079, column: 13, scope: !1213)
!1221 = !DILocation(line: 1081, column: 29, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 1081, column: 9)
!1223 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 1079, column: 52)
!1224 = !DILocation(line: 1081, column: 20, scope: !1222)
!1225 = !DILocation(line: 1081, column: 33, scope: !1222)
!1226 = !DILocation(line: 1081, column: 9, scope: !1223)
!1227 = !DILocation(line: 1091, column: 14, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1229, file: !3, line: 1091, column: 9)
!1229 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 1087, column: 9)
!1230 = !DILocation(line: 1091, column: 9, scope: !1229)
!1231 = !DILocation(line: 1094, column: 11, scope: !1228)
!1232 = !DILocation(line: 1095, column: 19, scope: !1229)
!1233 = !DILocation(line: 263, column: 4, scope: !2)
!1234 = !DILocation(line: 1099, column: 9, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 1098, column: 8)
!1236 = !DILocation(line: 1100, column: 18, scope: !1235)
!1237 = !DILocation(line: 1100, column: 33, scope: !1235)
!1238 = !DILocation(line: 0, scope: !1235)
!1239 = !DILocation(line: 1115, column: 7, scope: !947)
!1240 = !DILocation(line: 1115, column: 18, scope: !947)
!1241 = !DILocation(line: 1119, column: 9, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !947, file: !3, line: 1119, column: 7)
!1243 = !DILocation(line: 1119, column: 7, scope: !947)
!1244 = !DILocation(line: 1121, column: 15, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 1119, column: 43)
!1246 = !DILocation(line: 1122, column: 28, scope: !1245)
!1247 = !DILocation(line: 1122, column: 24, scope: !1245)
!1248 = !DILocation(line: 1122, column: 22, scope: !1245)
!1249 = !DILocation(line: 262, column: 15, scope: !2)
!1250 = !DILocation(line: 1123, column: 13, scope: !1245)
!1251 = !DILocation(line: 1124, column: 32, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 1124, column: 8)
!1253 = !DILocation(line: 1124, column: 8, scope: !1245)
!1254 = !DILocation(line: 1126, column: 21, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 1126, column: 9)
!1256 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 1125, column: 37)
!1257 = !DILocation(line: 1126, column: 29, scope: !1255)
!1258 = !DILocation(line: 1126, column: 32, scope: !1255)
!1259 = !DILocation(line: 1126, column: 44, scope: !1255)
!1260 = !DILocation(line: 1126, column: 9, scope: !1256)
!1261 = !DILocation(line: 1132, column: 5, scope: !1256)
!1262 = !DILocation(line: 1135, column: 16, scope: !1252)
!1263 = !DILocation(line: 1136, column: 4, scope: !1245)
!1264 = !DILocation(line: 1139, column: 19, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 1139, column: 8)
!1266 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 1137, column: 8)
!1267 = !DILocation(line: 1139, column: 14, scope: !1265)
!1268 = !DILocation(line: 1140, column: 14, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1270, file: !3, line: 1140, column: 9)
!1270 = distinct !DILexicalBlock(scope: !1265, file: !3, line: 1139, column: 36)
!1271 = !DILocation(line: 1140, column: 9, scope: !1270)
!1272 = !DILocation(line: 1141, column: 15, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 1141, column: 10)
!1274 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 1140, column: 29)
!1275 = !DILocation(line: 1141, column: 21, scope: !1273)
!1276 = !DILocation(line: 1141, column: 10, scope: !1274)
!1277 = !DILocation(line: 1143, column: 13, scope: !1274)
!1278 = !DILocation(line: 1144, column: 20, scope: !1274)
!1279 = !DILocation(line: 1144, column: 35, scope: !1274)
!1280 = !DILocation(line: 1145, column: 6, scope: !1274)
!1281 = !DILocation(line: 0, scope: !1213)
!1282 = !DILocation(line: 1146, column: 39, scope: !1270)
!1283 = !DILocation(line: 1146, column: 19, scope: !1270)
!1284 = !DILocation(line: 1147, column: 5, scope: !1270)
!1285 = !DILocation(line: 1148, column: 24, scope: !1266)
!1286 = !DILocation(line: 1148, column: 22, scope: !1266)
!1287 = !DILocation(line: 1149, column: 13, scope: !1266)
!1288 = !DILocation(line: 0, scope: !1266)
!1289 = !DILocation(line: 0, scope: !1274)
!1290 = !DILocation(line: 1199, column: 7, scope: !947)
!1291 = !DILocation(line: 1202, column: 7, scope: !947)
!1292 = !DILocation(line: 1199, column: 18, scope: !947)
!1293 = !DILocation(line: 1204, column: 9, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1295, file: !3, line: 1204, column: 7)
!1295 = distinct !DILexicalBlock(scope: !947, file: !3, line: 1202, column: 7)
!1296 = !DILocation(line: 1204, column: 7, scope: !1295)
!1297 = !DILocation(line: 1206, column: 8, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 1204, column: 15)
!1299 = !DILocation(line: 1207, column: 12, scope: !1298)
!1300 = !DILocation(line: 1207, column: 9, scope: !1298)
!1301 = !DILocation(line: 1209, column: 8, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1298, file: !3, line: 1209, column: 8)
!1303 = !DILocation(line: 1209, column: 14, scope: !1302)
!1304 = !DILocation(line: 1209, column: 17, scope: !1302)
!1305 = !DILocation(line: 1209, column: 28, scope: !1302)
!1306 = !DILocation(line: 1209, column: 42, scope: !1302)
!1307 = !DILocation(line: 1209, column: 8, scope: !1298)
!1308 = !DILocation(line: 1210, column: 14, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 1210, column: 9)
!1310 = distinct !DILexicalBlock(scope: !1302, file: !3, line: 1209, column: 56)
!1311 = !DILocation(line: 1210, column: 33, scope: !1309)
!1312 = !DILocation(line: 1210, column: 25, scope: !1309)
!1313 = !DILocation(line: 1213, column: 18, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1302, file: !3, line: 1213, column: 13)
!1315 = !DILocation(line: 1213, column: 13, scope: !1302)
!1316 = !DILocation(line: 0, scope: !1252)
!1317 = !DILocation(line: 1218, column: 13, scope: !947)
!1318 = !DILocation(line: 1218, column: 3, scope: !947)
!1319 = !DILocation(line: 1219, column: 3, scope: !947)
!1320 = !DILocation(line: 1220, column: 3, scope: !947)
!1321 = !DILocation(line: 1221, column: 3, scope: !947)
!1322 = !DILocation(line: 737, column: 2, scope: !948)
!1323 = distinct !{!1323, !1324, !1325}
!1324 = !DILocation(line: 737, column: 2, scope: !949)
!1325 = !DILocation(line: 1222, column: 3, scope: !949)
!1326 = !DILocation(line: 1242, column: 12, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1328, file: !3, line: 1237, column: 13)
!1328 = distinct !DILexicalBlock(scope: !2, file: !3, line: 1237, column: 6)
!1329 = !DILocation(line: 1245, column: 18, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1327, file: !3, line: 1245, column: 7)
!1331 = !DILocation(line: 1245, column: 23, scope: !1330)
!1332 = !DILocation(line: 1245, column: 26, scope: !1330)
!1333 = !DILocation(line: 1245, column: 37, scope: !1330)
!1334 = !DILocation(line: 1245, column: 7, scope: !1327)
!1335 = !DILocation(line: 1246, column: 9, scope: !1330)
!1336 = !DILocation(line: 1246, column: 16, scope: !1330)
!1337 = !DILocation(line: 1246, column: 4, scope: !1330)
!1338 = !DILocation(line: 0, scope: !938)
!1339 = !DILocation(line: 0, scope: !1054)
!1340 = !DILocation(line: 0, scope: !1063)
!1341 = !DILocation(line: 0, scope: !1083)
!1342 = !DILocation(line: 1258, column: 12, scope: !2)
!1343 = !DILocation(line: 1258, column: 2, scope: !2)
!1344 = !DILocation(line: 1259, column: 2, scope: !2)
!1345 = !DILocation(line: 1260, column: 2, scope: !2)
!1346 = !DILocation(line: 1261, column: 2, scope: !2)
!1347 = !DILocation(line: 1262, column: 2, scope: !2)
!1348 = !DILocation(line: 0, scope: !805)
!1349 = !DILocation(line: 1264, column: 6, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !2, file: !3, line: 1264, column: 6)
!1351 = !DILocation(line: 1264, column: 6, scope: !2)
!1352 = !DILocation(line: 1265, column: 17, scope: !1350)
!1353 = !DILocation(line: 1265, column: 7, scope: !1350)
!1354 = !DILocation(line: 1265, column: 3, scope: !1350)
!1355 = !DILocation(line: 1266, column: 9, scope: !2)
!1356 = !DILocation(line: 1266, column: 16, scope: !2)
!1357 = !DILocation(line: 1266, column: 2, scope: !2)
!1358 = !DILocation(line: 1267, column: 1, scope: !2)
!1359 = distinct !DISubprogram(name: "_strtod_r", scope: !3, file: !3, line: 1270, type: !1360, isLocal: false, isDefinition: true, scopeLine: 1274, flags: DIFlagPrototyped, isOptimized: true, unit: !292, retainedNodes: !1362)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{!6, !7, !287, !288}
!1362 = !{!1363, !1364, !1365}
!1363 = !DILocalVariable(name: "ptr", arg: 1, scope: !1359, file: !3, line: 1270, type: !7)
!1364 = !DILocalVariable(name: "s00", arg: 2, scope: !1359, file: !3, line: 1270, type: !287)
!1365 = !DILocalVariable(name: "se", arg: 3, scope: !1359, file: !3, line: 1270, type: !288)
!1366 = !DILocation(line: 1270, column: 1, scope: !1359)
!1367 = !DILocation(line: 230, column: 10, scope: !1368, inlinedAt: !1372)
!1368 = distinct !DISubprogram(name: "__get_current_locale", scope: !106, file: !106, line: 228, type: !1369, isLocal: true, isDefinition: true, scopeLine: 229, flags: DIFlagPrototyped, isOptimized: true, unit: !292, retainedNodes: !1371)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{!104}
!1371 = !{}
!1372 = distinct !DILocation(line: 1275, column: 35, scope: !1359)
!1373 = !DILocation(line: 230, column: 18, scope: !1368, inlinedAt: !1372)
!1374 = !{!833, !417, i64 72}
!1375 = !DILocation(line: 213, column: 3, scope: !1376, inlinedAt: !1377)
!1376 = distinct !DISubprogram(name: "__get_global_locale", scope: !106, file: !106, line: 210, type: !1369, isLocal: true, isDefinition: true, scopeLine: 211, isOptimized: true, unit: !292, retainedNodes: !1371)
!1377 = distinct !DILocation(line: 230, column: 29, scope: !1368, inlinedAt: !1372)
!1378 = !DILocation(line: 230, column: 3, scope: !1368, inlinedAt: !1372)
!1379 = !DILocation(line: 1275, column: 10, scope: !1359)
!1380 = !DILocation(line: 1275, column: 3, scope: !1359)
!1381 = distinct !DISubprogram(name: "strtod_l", scope: !3, file: !3, line: 1281, type: !1382, isLocal: false, isDefinition: true, scopeLine: 1282, flags: DIFlagPrototyped, isOptimized: true, unit: !292, retainedNodes: !1384)
!1382 = !DISubroutineType(types: !1383)
!1383 = !{!6, !287, !288, !290}
!1384 = !{!1385, !1386, !1387}
!1385 = !DILocalVariable(name: "s00", arg: 1, scope: !1381, file: !3, line: 1281, type: !287)
!1386 = !DILocalVariable(name: "se", arg: 2, scope: !1381, file: !3, line: 1281, type: !288)
!1387 = !DILocalVariable(name: "loc", arg: 3, scope: !1381, file: !3, line: 1281, type: !290)
!1388 = !DILocation(line: 1281, column: 34, scope: !1381)
!1389 = !DILocation(line: 1281, column: 57, scope: !1381)
!1390 = !DILocation(line: 1281, column: 70, scope: !1381)
!1391 = !DILocation(line: 1283, column: 21, scope: !1381)
!1392 = !DILocation(line: 1283, column: 10, scope: !1381)
!1393 = !DILocation(line: 1283, column: 3, scope: !1381)
!1394 = distinct !DISubprogram(name: "strtod", scope: !3, file: !3, line: 1287, type: !1395, isLocal: false, isDefinition: true, scopeLine: 1289, flags: DIFlagPrototyped, isOptimized: true, unit: !292, retainedNodes: !1397)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{!6, !287, !288}
!1397 = !{!1398, !1399}
!1398 = !DILocalVariable(name: "s00", arg: 1, scope: !1394, file: !3, line: 1287, type: !287)
!1399 = !DILocalVariable(name: "se", arg: 2, scope: !1394, file: !3, line: 1287, type: !288)
!1400 = !DILocation(line: 1287, column: 1, scope: !1394)
!1401 = !DILocation(line: 1290, column: 21, scope: !1394)
!1402 = !DILocation(line: 230, column: 10, scope: !1368, inlinedAt: !1403)
!1403 = distinct !DILocation(line: 1290, column: 38, scope: !1394)
!1404 = !DILocation(line: 230, column: 18, scope: !1368, inlinedAt: !1403)
!1405 = !DILocation(line: 213, column: 3, scope: !1376, inlinedAt: !1406)
!1406 = distinct !DILocation(line: 230, column: 29, scope: !1368, inlinedAt: !1403)
!1407 = !DILocation(line: 230, column: 3, scope: !1368, inlinedAt: !1403)
!1408 = !DILocation(line: 1290, column: 10, scope: !1394)
!1409 = !DILocation(line: 1290, column: 3, scope: !1394)
!1410 = distinct !DISubprogram(name: "strtof_l", scope: !3, file: !3, line: 1294, type: !1411, isLocal: false, isDefinition: true, scopeLine: 1295, flags: DIFlagPrototyped, isOptimized: true, unit: !292, retainedNodes: !1413)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{!317, !287, !288, !290}
!1413 = !{!1414, !1415, !1416, !1417, !1418}
!1414 = !DILocalVariable(name: "s00", arg: 1, scope: !1410, file: !3, line: 1294, type: !287)
!1415 = !DILocalVariable(name: "se", arg: 2, scope: !1410, file: !3, line: 1294, type: !288)
!1416 = !DILocalVariable(name: "loc", arg: 3, scope: !1410, file: !3, line: 1294, type: !290)
!1417 = !DILocalVariable(name: "val", scope: !1410, file: !3, line: 1296, type: !6)
!1418 = !DILocalVariable(name: "retval", scope: !1410, file: !3, line: 1299, type: !317)
!1419 = !DILocation(line: 1294, column: 34, scope: !1410)
!1420 = !DILocation(line: 1294, column: 57, scope: !1410)
!1421 = !DILocation(line: 1294, column: 70, scope: !1410)
!1422 = !DILocation(line: 1296, column: 27, scope: !1410)
!1423 = !DILocation(line: 1296, column: 16, scope: !1410)
!1424 = !DILocation(line: 1296, column: 10, scope: !1410)
!1425 = !DILocation(line: 1297, column: 7, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1410, file: !3, line: 1297, column: 7)
!1427 = !DILocation(line: 1297, column: 7, scope: !1410)
!1428 = !DILocation(line: 1298, column: 12, scope: !1426)
!1429 = !DILocation(line: 1298, column: 5, scope: !1426)
!1430 = !DILocation(line: 1299, column: 18, scope: !1410)
!1431 = !DILocation(line: 1299, column: 9, scope: !1410)
!1432 = !DILocation(line: 1301, column: 7, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1410, file: !3, line: 1301, column: 7)
!1434 = !DILocation(line: 1301, column: 22, scope: !1433)
!1435 = !DILocation(line: 1301, column: 26, scope: !1433)
!1436 = !DILocation(line: 1301, column: 7, scope: !1410)
!1437 = !DILocation(line: 1302, column: 5, scope: !1433)
!1438 = !DILocation(line: 1302, column: 13, scope: !1433)
!1439 = !DILocation(line: 1302, column: 20, scope: !1433)
!1440 = !DILocation(line: 0, scope: !1410)
!1441 = !DILocation(line: 1305, column: 1, scope: !1410)
!1442 = distinct !DISubprogram(name: "strtof", scope: !3, file: !3, line: 1308, type: !1443, isLocal: false, isDefinition: true, scopeLine: 1311, flags: DIFlagPrototyped, isOptimized: true, unit: !292, retainedNodes: !1445)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{!317, !287, !288}
!1445 = !{!1446, !1447, !1448, !1449}
!1446 = !DILocalVariable(name: "s00", arg: 1, scope: !1442, file: !3, line: 1308, type: !287)
!1447 = !DILocalVariable(name: "se", arg: 2, scope: !1442, file: !3, line: 1308, type: !288)
!1448 = !DILocalVariable(name: "val", scope: !1442, file: !3, line: 1312, type: !6)
!1449 = !DILocalVariable(name: "retval", scope: !1442, file: !3, line: 1315, type: !317)
!1450 = !DILocation(line: 1308, column: 1, scope: !1442)
!1451 = !DILocation(line: 1312, column: 27, scope: !1442)
!1452 = !DILocation(line: 230, column: 10, scope: !1368, inlinedAt: !1453)
!1453 = distinct !DILocation(line: 1312, column: 44, scope: !1442)
!1454 = !DILocation(line: 230, column: 18, scope: !1368, inlinedAt: !1453)
!1455 = !DILocation(line: 213, column: 3, scope: !1376, inlinedAt: !1456)
!1456 = distinct !DILocation(line: 230, column: 29, scope: !1368, inlinedAt: !1453)
!1457 = !DILocation(line: 230, column: 3, scope: !1368, inlinedAt: !1453)
!1458 = !DILocation(line: 1312, column: 16, scope: !1442)
!1459 = !DILocation(line: 1312, column: 10, scope: !1442)
!1460 = !DILocation(line: 1313, column: 7, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 1313, column: 7)
!1462 = !DILocation(line: 1313, column: 7, scope: !1442)
!1463 = !DILocation(line: 1314, column: 12, scope: !1461)
!1464 = !DILocation(line: 1314, column: 5, scope: !1461)
!1465 = !DILocation(line: 1315, column: 18, scope: !1442)
!1466 = !DILocation(line: 1315, column: 9, scope: !1442)
!1467 = !DILocation(line: 1317, column: 7, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 1317, column: 7)
!1469 = !DILocation(line: 1317, column: 22, scope: !1468)
!1470 = !DILocation(line: 1317, column: 26, scope: !1468)
!1471 = !DILocation(line: 1317, column: 7, scope: !1442)
!1472 = !DILocation(line: 1318, column: 5, scope: !1468)
!1473 = !DILocation(line: 1318, column: 13, scope: !1468)
!1474 = !DILocation(line: 1318, column: 20, scope: !1468)
!1475 = !DILocation(line: 0, scope: !1442)
!1476 = !DILocation(line: 1321, column: 1, scope: !1442)
