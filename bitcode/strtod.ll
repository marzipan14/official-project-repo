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
  %22 = load i8, i8* %21, align 1, !dbg !438, !tbaa !439
  %23 = sext i8 %22 to i32, !dbg !438
  switch i32 %23, label %32 [
    i32 45, label %25
    i32 43, label %24
    i32 0, label %385
    i32 9, label %30
    i32 10, label %30
    i32 11, label %30
    i32 12, label %30
    i32 13, label %30
    i32 32, label %30
  ], !dbg !440

; <label>:24:                                     ; preds = %20
  br label %25, !dbg !441

; <label>:25:                                     ; preds = %20, %24
  %26 = phi i32 [ 0, %24 ], [ 1, %20 ], !dbg !444
  %27 = getelementptr inbounds i8, i8* %21, i64 1, !dbg !441
  store i8* %27, i8** %7, align 8, !dbg !441, !tbaa !416
  %28 = load i8, i8* %27, align 1, !dbg !445, !tbaa !439
  %29 = icmp eq i8 %28, 0, !dbg !445
  br i1 %29, label %385, label %32, !dbg !446

; <label>:30:                                     ; preds = %20, %20, %20, %20, %20, %20
  %31 = getelementptr inbounds i8, i8* %21, i64 1, !dbg !447
  br label %20, !dbg !448, !llvm.loop !449

; <label>:32:                                     ; preds = %20, %25
  %33 = phi i8 [ %28, %25 ], [ %22, %20 ], !dbg !452
  %34 = phi i8* [ %27, %25 ], [ %21, %20 ], !dbg !453
  %35 = phi i32 [ %26, %25 ], [ 0, %20 ], !dbg !454
  %36 = icmp eq i8 %33, 48, !dbg !455
  br i1 %36, label %37, label %91, !dbg !456

; <label>:37:                                     ; preds = %32
  %38 = bitcast i32* %9 to i8*, !dbg !457
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %38) #4, !dbg !457
  %39 = bitcast [2 x i32]* %10 to i8*, !dbg !458
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %39) #4, !dbg !458
  %40 = getelementptr inbounds i8, i8* %34, i64 1, !dbg !460
  %41 = load i8, i8* %40, align 1, !dbg !460, !tbaa !439
  %42 = sext i8 %41 to i32, !dbg !460
  switch i32 %42, label %86 [
    i32 120, label %43
    i32 88, label %43
  ], !dbg !461

; <label>:43:                                     ; preds = %37, %37
  %44 = call i32 @__gethex(%struct._reent* %0, i8** nonnull %7, %struct.FPI* nonnull @_strtod_l.fpi, i32* nonnull %9, %struct._Bigint** nonnull %8, i32 %35, %struct.__locale_t* %3) #5, !dbg !463
  %45 = trunc i32 %44 to i3, !dbg !467
  switch i3 %45, label %47 [
    i3 -2, label %46
    i3 0, label %83
  ], !dbg !467

; <label>:46:                                     ; preds = %43
  store i8* %40, i8** %7, align 8, !dbg !468, !tbaa !416
  br label %83, !dbg !470

; <label>:47:                                     ; preds = %43
  %48 = load %struct._Bigint*, %struct._Bigint** %8, align 8, !dbg !471, !tbaa !416
  %49 = icmp eq %struct._Bigint* %48, null, !dbg !471
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0, !dbg !473
  br i1 %49, label %53, label %51, !dbg !475

; <label>:51:                                     ; preds = %47
  call void @__copybits(i32* nonnull %50, i32 53, %struct._Bigint* nonnull %48) #5, !dbg !476
  %52 = load %struct._Bigint*, %struct._Bigint** %8, align 8, !dbg !477, !tbaa !416
  call void @_Bfree(%struct._reent* %0, %struct._Bigint* %52) #5, !dbg !478
  br label %53, !dbg !479

; <label>:53:                                     ; preds = %47, %51
  switch i3 %45, label %77 [
    i3 3, label %75
    i3 -4, label %76
    i3 2, label %54
    i3 1, label %62
    i3 -3, label %62
  ], !dbg !491

; <label>:54:                                     ; preds = %53
  %55 = load i32, i32* %50, align 4, !dbg !492, !tbaa !494
  %56 = zext i32 %55 to i64, !dbg !496
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1, !dbg !497
  %58 = load i32, i32* %57, align 4, !dbg !497, !tbaa !494
  %59 = zext i32 %58 to i64, !dbg !498
  %60 = shl nuw i64 %59, 32, !dbg !498
  %61 = or i64 %60, %56, !dbg !498
  br label %77, !dbg !499

; <label>:62:                                     ; preds = %53, %53
  %63 = load i32, i32* %9, align 4, !dbg !500, !tbaa !494
  %64 = load i32, i32* %50, align 4, !dbg !501, !tbaa !494
  %65 = zext i32 %64 to i64, !dbg !502
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1, !dbg !503
  %67 = load i32, i32* %66, align 4, !dbg !503, !tbaa !494
  %68 = and i32 %67, -1048577, !dbg !504
  %69 = shl i32 %63, 20, !dbg !505
  %70 = add i32 %69, 1127219200, !dbg !505
  %71 = or i32 %68, %70, !dbg !506
  %72 = zext i32 %71 to i64, !dbg !507
  %73 = shl nuw i64 %72, 32, !dbg !507
  %74 = or i64 %73, %65, !dbg !507
  br label %77, !dbg !508

; <label>:75:                                     ; preds = %53
  br label %77, !dbg !509

; <label>:76:                                     ; preds = %53
  br label %77, !dbg !510

; <label>:77:                                     ; preds = %76, %75, %62, %54, %53
  %78 = phi i64 [ 9223372036854775807, %76 ], [ 9218868437227405312, %75 ], [ %74, %62 ], [ %61, %54 ], [ 0, %53 ], !dbg !511
  %79 = and i32 %44, 8, !dbg !512
  %80 = zext i32 %79 to i64, !dbg !514
  %81 = shl nuw i64 %80, 60, !dbg !514
  %82 = or i64 %81, %78, !dbg !514
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !515
  br label %83, !dbg !516

; <label>:83:                                     ; preds = %77, %46, %43
  %84 = phi i64 [ 0, %46 ], [ 0, %43 ], [ %82, %77 ]
  %85 = phi i32 [ 0, %46 ], [ %35, %43 ], [ %35, %77 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %39) #4, !dbg !517
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %38) #4, !dbg !517
  br label %950

; <label>:86:                                     ; preds = %37
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %39) #4, !dbg !517
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %38) #4, !dbg !517
  br label %87

; <label>:87:                                     ; preds = %86, %87
  %88 = phi i8* [ %34, %86 ], [ %89, %87 ], !dbg !518
  %89 = getelementptr inbounds i8, i8* %88, i64 1, !dbg !518
  store i8* %89, i8** %7, align 8, !dbg !518, !tbaa !416
  %90 = load i8, i8* %89, align 1, !dbg !519, !tbaa !439
  switch i8 %90, label %91 [
    i8 48, label %87
    i8 0, label %950
  ], !dbg !520

; <label>:91:                                     ; preds = %87, %32
  %92 = phi i8 [ %33, %32 ], [ %90, %87 ], !dbg !521
  %93 = phi i8* [ %34, %32 ], [ %89, %87 ], !dbg !524
  %94 = phi i32 [ 0, %32 ], [ 1, %87 ], !dbg !525
  %95 = sext i8 %92 to i32, !dbg !521
  %96 = add i8 %92, -48, !dbg !532
  %97 = icmp ult i8 %96, 10, !dbg !532
  br i1 %97, label %98, label %124, !dbg !533

; <label>:98:                                     ; preds = %91, %113
  %99 = phi i32 [ %119, %113 ], [ %95, %91 ]
  %100 = phi i8* [ %117, %113 ], [ %93, %91 ]
  %101 = phi i32 [ %115, %113 ], [ 0, %91 ]
  %102 = phi i32 [ %114, %113 ], [ 0, %91 ]
  %103 = phi i32 [ %116, %113 ], [ 0, %91 ]
  %104 = icmp ult i32 %103, 9, !dbg !534
  br i1 %104, label %105, label %109, !dbg !536

; <label>:105:                                    ; preds = %98
  %106 = mul i32 %102, 10, !dbg !537
  %107 = add nsw i32 %99, -48, !dbg !538
  %108 = add i32 %107, %106, !dbg !539
  br label %113, !dbg !540

; <label>:109:                                    ; preds = %98
  %110 = mul i32 %101, 10, !dbg !541
  %111 = add nsw i32 %99, -48, !dbg !542
  %112 = add i32 %111, %110, !dbg !543
  br label %113

; <label>:113:                                    ; preds = %105, %109
  %114 = phi i32 [ %108, %105 ], [ %102, %109 ], !dbg !525
  %115 = phi i32 [ %101, %105 ], [ %112, %109 ], !dbg !544
  %116 = add nuw nsw i32 %103, 1, !dbg !545
  %117 = getelementptr inbounds i8, i8* %100, i64 1, !dbg !546
  store i8* %117, i8** %7, align 8, !dbg !546, !tbaa !416
  %118 = load i8, i8* %117, align 1, !dbg !521, !tbaa !439
  %119 = sext i8 %118 to i32, !dbg !521
  %120 = add i8 %118, -48, !dbg !532
  %121 = icmp ult i8 %120, 10, !dbg !532
  br i1 %121, label %98, label %122, !dbg !533, !llvm.loop !547

; <label>:122:                                    ; preds = %113
  %123 = sext i8 %118 to i32, !dbg !521
  br label %124, !dbg !549

; <label>:124:                                    ; preds = %122, %91
  %125 = phi i32 [ 0, %91 ], [ %116, %122 ], !dbg !551
  %126 = phi i32 [ 0, %91 ], [ %114, %122 ], !dbg !544
  %127 = phi i32 [ 0, %91 ], [ %115, %122 ], !dbg !552
  %128 = phi i8* [ %93, %91 ], [ %117, %122 ], !dbg !553
  %129 = phi i32 [ %95, %91 ], [ %123, %122 ], !dbg !521
  %130 = load i8*, i8** %17, align 8, !dbg !549, !tbaa !426
  %131 = shl i64 %19, 32, !dbg !555
  %132 = ashr exact i64 %131, 32, !dbg !555
  %133 = tail call i32 @strncmp(i8* %128, i8* %130, i64 %132) #5, !dbg !556
  %134 = icmp eq i32 %133, 0, !dbg !557
  br i1 %134, label %135, label %260, !dbg !558

; <label>:135:                                    ; preds = %124
  %136 = getelementptr inbounds i8, i8* %128, i64 %132, !dbg !559
  store i8* %136, i8** %7, align 8, !dbg !559, !tbaa !416
  %137 = load i8, i8* %136, align 1, !dbg !561, !tbaa !439
  %138 = sext i8 %137 to i32, !dbg !561
  %139 = icmp eq i32 %125, 0, !dbg !562
  br i1 %139, label %140, label %157, !dbg !564

; <label>:140:                                    ; preds = %135
  %141 = icmp eq i8 %137, 48, !dbg !565
  br i1 %141, label %142, label %151, !dbg !569

; <label>:142:                                    ; preds = %140, %142
  %143 = phi i8* [ %146, %142 ], [ %136, %140 ], !dbg !570
  %144 = phi i32 [ %145, %142 ], [ 0, %140 ]
  %145 = add nuw nsw i32 %144, 1, !dbg !571
  %146 = getelementptr inbounds i8, i8* %143, i64 1, !dbg !570
  store i8* %146, i8** %7, align 8, !dbg !570, !tbaa !416
  %147 = load i8, i8* %146, align 1, !dbg !572, !tbaa !439
  %148 = icmp eq i8 %147, 48, !dbg !565
  br i1 %148, label %142, label %149, !dbg !569, !llvm.loop !573

; <label>:149:                                    ; preds = %142
  %150 = sext i8 %147 to i32, !dbg !572
  br label %151, !dbg !569

; <label>:151:                                    ; preds = %149, %140
  %152 = phi i8* [ %146, %149 ], [ %136, %140 ]
  %153 = phi i32 [ %150, %149 ], [ %138, %140 ], !dbg !575
  %154 = phi i32 [ %145, %149 ], [ 0, %140 ], !dbg !575
  %155 = add nsw i32 %153, -49, !dbg !576
  %156 = icmp ult i32 %155, 9, !dbg !576
  br i1 %156, label %168, label %260, !dbg !576

; <label>:157:                                    ; preds = %135, %251
  %158 = phi i8* [ %136, %135 ], [ %257, %251 ]
  %159 = phi i32 [ %138, %135 ], [ %259, %251 ], !dbg !578
  %160 = phi i32 [ %125, %135 ], [ %252, %251 ], !dbg !581
  %161 = phi i32 [ 0, %135 ], [ %253, %251 ], !dbg !586
  %162 = phi i32 [ 0, %135 ], [ %254, %251 ], !dbg !586
  %163 = phi i8* [ %93, %135 ], [ %174, %251 ], !dbg !587
  %164 = phi i32 [ %126, %135 ], [ %255, %251 ], !dbg !581
  %165 = phi i32 [ %127, %135 ], [ %256, %251 ], !dbg !552
  %166 = add nsw i32 %159, -48, !dbg !588
  %167 = icmp ult i32 %166, 10, !dbg !588
  br i1 %167, label %168, label %260, !dbg !589

; <label>:168:                                    ; preds = %151, %157
  %169 = phi i8* [ %158, %157 ], [ %152, %151 ]
  %170 = phi i32 [ %159, %157 ], [ %153, %151 ], !dbg !590
  %171 = phi i32 [ %160, %157 ], [ 0, %151 ], !dbg !591
  %172 = phi i32 [ %161, %157 ], [ %154, %151 ], !dbg !592
  %173 = phi i32 [ %162, %157 ], [ 0, %151 ], !dbg !592
  %174 = phi i8* [ %163, %157 ], [ %152, %151 ], !dbg !592
  %175 = phi i32 [ %164, %157 ], [ %126, %151 ], !dbg !594
  %176 = phi i32 [ %165, %157 ], [ %127, %151 ], !dbg !552
  %177 = add i32 %173, 1, !dbg !595
  %178 = add nsw i32 %170, -48, !dbg !596
  %179 = icmp eq i32 %178, 0, !dbg !596
  br i1 %179, label %251, label %180, !dbg !597

; <label>:180:                                    ; preds = %168
  %181 = add nsw i32 %177, %172, !dbg !598
  %182 = icmp slt i32 %173, 1, !dbg !599
  %183 = add nsw i32 %171, 1, !dbg !581
  %184 = icmp slt i32 %171, 9, !dbg !581
  br i1 %182, label %235, label %185, !dbg !602

; <label>:185:                                    ; preds = %180
  %186 = add i32 %171, %173, !dbg !603
  %187 = and i32 %173, 1, !dbg !603
  %188 = icmp eq i32 %173, 1, !dbg !603
  br i1 %188, label %209, label %189, !dbg !603

; <label>:189:                                    ; preds = %185
  %190 = sub i32 %173, %187, !dbg !603
  br label %191, !dbg !603

; <label>:191:                                    ; preds = %969, %189
  %192 = phi i1 [ %184, %189 ], [ %973, %969 ]
  %193 = phi i32 [ %183, %189 ], [ %972, %969 ]
  %194 = phi i32 [ %176, %189 ], [ %971, %969 ]
  %195 = phi i32 [ %175, %189 ], [ %970, %969 ]
  %196 = phi i32 [ %171, %189 ], [ %207, %969 ]
  %197 = phi i32 [ %190, %189 ], [ %974, %969 ]
  br i1 %192, label %198, label %200, !dbg !603

; <label>:198:                                    ; preds = %191
  %199 = mul i32 %195, 10, !dbg !604
  br label %204, !dbg !606

; <label>:200:                                    ; preds = %191
  %201 = icmp slt i32 %196, 16, !dbg !607
  %202 = mul i32 %194, 10, !dbg !609
  %203 = select i1 %201, i32 %202, i32 %194, !dbg !610
  br label %204, !dbg !610

; <label>:204:                                    ; preds = %200, %198
  %205 = phi i32 [ %199, %198 ], [ %195, %200 ], !dbg !525
  %206 = phi i32 [ %194, %198 ], [ %203, %200 ], !dbg !525
  %207 = add nsw i32 %193, 1, !dbg !581
  %208 = icmp slt i32 %193, 9, !dbg !581
  br i1 %208, label %967, label %963, !dbg !603

; <label>:209:                                    ; preds = %969, %185
  %210 = phi i32 [ undef, %185 ], [ %970, %969 ]
  %211 = phi i32 [ undef, %185 ], [ %971, %969 ]
  %212 = phi i1 [ undef, %185 ], [ %973, %969 ]
  %213 = phi i1 [ %184, %185 ], [ %973, %969 ]
  %214 = phi i32 [ %183, %185 ], [ %972, %969 ]
  %215 = phi i32 [ %176, %185 ], [ %971, %969 ]
  %216 = phi i32 [ %175, %185 ], [ %970, %969 ]
  %217 = phi i32 [ %171, %185 ], [ %207, %969 ]
  %218 = icmp eq i32 %187, 0, !dbg !603
  br i1 %218, label %230, label %219, !dbg !603

; <label>:219:                                    ; preds = %209
  br i1 %213, label %224, label %220, !dbg !603

; <label>:220:                                    ; preds = %219
  %221 = icmp slt i32 %217, 16, !dbg !607
  %222 = mul i32 %215, 10, !dbg !609
  %223 = select i1 %221, i32 %222, i32 %215, !dbg !610
  br label %226, !dbg !610

; <label>:224:                                    ; preds = %219
  %225 = mul i32 %216, 10, !dbg !604
  br label %226, !dbg !606

; <label>:226:                                    ; preds = %220, %224
  %227 = phi i32 [ %225, %224 ], [ %216, %220 ], !dbg !525
  %228 = phi i32 [ %215, %224 ], [ %223, %220 ], !dbg !525
  %229 = icmp slt i32 %214, 9, !dbg !581
  br label %230, !dbg !603

; <label>:230:                                    ; preds = %209, %226
  %231 = phi i32 [ %210, %209 ], [ %227, %226 ], !dbg !525
  %232 = phi i32 [ %211, %209 ], [ %228, %226 ], !dbg !525
  %233 = phi i1 [ %212, %209 ], [ %229, %226 ], !dbg !581
  %234 = add i32 %186, 1, !dbg !603
  br i1 %233, label %236, label %242, !dbg !611

; <label>:235:                                    ; preds = %180
  br i1 %184, label %236, label %242, !dbg !611

; <label>:236:                                    ; preds = %230, %235
  %237 = phi i32 [ %234, %230 ], [ %183, %235 ]
  %238 = phi i32 [ %232, %230 ], [ %176, %235 ]
  %239 = phi i32 [ %231, %230 ], [ %175, %235 ]
  %240 = mul i32 %239, 10, !dbg !612
  %241 = add i32 %240, %178, !dbg !613
  br label %251, !dbg !614

; <label>:242:                                    ; preds = %230, %235
  %243 = phi i32 [ %234, %230 ], [ %183, %235 ]
  %244 = phi i32 [ %232, %230 ], [ %176, %235 ]
  %245 = phi i32 [ %231, %230 ], [ %175, %235 ]
  %246 = phi i32 [ %186, %230 ], [ %171, %235 ]
  %247 = icmp slt i32 %246, 16, !dbg !615
  br i1 %247, label %248, label %251, !dbg !617

; <label>:248:                                    ; preds = %242
  %249 = mul i32 %244, 10, !dbg !618
  %250 = add i32 %249, %178, !dbg !619
  br label %251, !dbg !620

; <label>:251:                                    ; preds = %236, %248, %242, %168
  %252 = phi i32 [ %171, %168 ], [ %243, %242 ], [ %243, %248 ], [ %237, %236 ], !dbg !621
  %253 = phi i32 [ %172, %168 ], [ %181, %242 ], [ %181, %248 ], [ %181, %236 ], !dbg !621
  %254 = phi i32 [ %177, %168 ], [ 0, %242 ], [ 0, %248 ], [ 0, %236 ], !dbg !622
  %255 = phi i32 [ %175, %168 ], [ %245, %242 ], [ %245, %248 ], [ %241, %236 ], !dbg !525
  %256 = phi i32 [ %176, %168 ], [ %244, %242 ], [ %250, %248 ], [ %238, %236 ], !dbg !552
  %257 = getelementptr inbounds i8, i8* %169, i64 1, !dbg !623
  store i8* %257, i8** %7, align 8, !dbg !623, !tbaa !416
  %258 = load i8, i8* %257, align 1, !dbg !624, !tbaa !439
  %259 = sext i8 %258 to i32, !dbg !624
  br label %157, !dbg !625, !llvm.loop !626

; <label>:260:                                    ; preds = %124, %157, %151
  %261 = phi i8* [ %158, %157 ], [ %152, %151 ], [ %128, %124 ]
  %262 = phi i32 [ %159, %157 ], [ %153, %151 ], [ %129, %124 ], !dbg !551
  %263 = phi i32 [ 1, %157 ], [ 1, %151 ], [ 0, %124 ], !dbg !525
  %264 = phi i32 [ %160, %157 ], [ 0, %151 ], [ %125, %124 ], !dbg !591
  %265 = phi i32 [ %161, %157 ], [ 0, %151 ], [ 0, %124 ], !dbg !628
  %266 = phi i32 [ %162, %157 ], [ %154, %151 ], [ 0, %124 ], !dbg !629
  %267 = phi i8* [ %163, %157 ], [ %93, %151 ], [ %93, %124 ], !dbg !587
  %268 = phi i32 [ %164, %157 ], [ %126, %151 ], [ %126, %124 ], !dbg !594
  %269 = phi i32 [ %165, %157 ], [ %127, %151 ], [ %127, %124 ], !dbg !552
  %270 = or i32 %262, 32, !dbg !631
  %271 = icmp eq i32 %270, 101, !dbg !631
  br i1 %271, label %272, label %343, !dbg !631

; <label>:272:                                    ; preds = %260
  %273 = or i32 %266, %94, !dbg !633
  %274 = or i32 %273, %264, !dbg !633
  %275 = icmp eq i32 %274, 0, !dbg !633
  br i1 %275, label %385, label %276, !dbg !633

; <label>:276:                                    ; preds = %272
  %277 = getelementptr inbounds i8, i8* %261, i64 1, !dbg !637
  store i8* %277, i8** %7, align 8, !dbg !637, !tbaa !416
  %278 = load i8, i8* %277, align 1, !dbg !638, !tbaa !439
  %279 = sext i8 %278 to i32, !dbg !638
  switch i32 %279, label %286 [
    i32 45, label %280
    i32 43, label %281
  ], !dbg !639

; <label>:280:                                    ; preds = %276
  br label %281, !dbg !640

; <label>:281:                                    ; preds = %276, %280
  %282 = phi i32 [ 0, %276 ], [ 1, %280 ], !dbg !642
  %283 = getelementptr inbounds i8, i8* %261, i64 2, !dbg !643
  store i8* %283, i8** %7, align 8, !dbg !643, !tbaa !416
  %284 = load i8, i8* %283, align 1, !dbg !644, !tbaa !439
  %285 = sext i8 %284 to i32, !dbg !644
  br label %286, !dbg !645

; <label>:286:                                    ; preds = %281, %276
  %287 = phi i8* [ %277, %276 ], [ %283, %281 ]
  %288 = phi i32 [ %279, %276 ], [ %285, %281 ], !dbg !642
  %289 = phi i32 [ 0, %276 ], [ %282, %281 ], !dbg !646
  %290 = add nsw i32 %288, -48, !dbg !647
  %291 = icmp ult i32 %290, 10, !dbg !647
  br i1 %291, label %292, label %342, !dbg !647

; <label>:292:                                    ; preds = %286
  %293 = icmp eq i32 %288, 48, !dbg !649
  br i1 %293, label %294, label %301, !dbg !651

; <label>:294:                                    ; preds = %292, %294
  %295 = phi i8* [ %296, %294 ], [ %287, %292 ], !dbg !652
  %296 = getelementptr inbounds i8, i8* %295, i64 1, !dbg !652
  store i8* %296, i8** %7, align 8, !dbg !652, !tbaa !416
  %297 = load i8, i8* %296, align 1, !dbg !653, !tbaa !439
  %298 = icmp eq i8 %297, 48, !dbg !649
  br i1 %298, label %294, label %299, !dbg !651, !llvm.loop !654

; <label>:299:                                    ; preds = %294
  %300 = sext i8 %297 to i32, !dbg !653
  br label %301, !dbg !651

; <label>:301:                                    ; preds = %299, %292
  %302 = phi i8* [ %296, %299 ], [ %287, %292 ]
  %303 = phi i32 [ %300, %299 ], [ %288, %292 ], !dbg !656
  %304 = ptrtoint i8* %302 to i64, !dbg !642
  %305 = add nsw i32 %303, -49, !dbg !657
  %306 = icmp ult i32 %305, 9, !dbg !657
  br i1 %306, label %307, label %343, !dbg !657

; <label>:307:                                    ; preds = %301
  %308 = add nsw i32 %303, -48, !dbg !661
  %309 = getelementptr inbounds i8, i8* %302, i64 1, !dbg !663
  store i8* %309, i8** %7, align 8, !dbg !663, !tbaa !416
  %310 = load i8, i8* %309, align 1, !dbg !664, !tbaa !439
  %311 = sext i8 %310 to i32, !dbg !664
  %312 = add i8 %310, -48, !dbg !665
  %313 = icmp ult i8 %312, 10, !dbg !665
  br i1 %313, label %314, label %328, !dbg !666

; <label>:314:                                    ; preds = %307, %314
  %315 = phi i8* [ %321, %314 ], [ %309, %307 ], !dbg !663
  %316 = phi i32 [ %323, %314 ], [ %311, %307 ]
  %317 = phi i32 [ %320, %314 ], [ %308, %307 ]
  %318 = mul nsw i32 %317, 10, !dbg !667
  %319 = add nsw i32 %316, %318, !dbg !668
  %320 = add nsw i32 %319, -48, !dbg !661
  %321 = getelementptr inbounds i8, i8* %315, i64 1, !dbg !663
  store i8* %321, i8** %7, align 8, !dbg !663, !tbaa !416
  %322 = load i8, i8* %321, align 1, !dbg !664, !tbaa !439
  %323 = sext i8 %322 to i32, !dbg !664
  %324 = add i8 %322, -48, !dbg !665
  %325 = icmp ult i8 %324, 10, !dbg !665
  br i1 %325, label %314, label %326, !dbg !666, !llvm.loop !669

; <label>:326:                                    ; preds = %314
  %327 = sext i8 %322 to i32, !dbg !664
  br label %328, !dbg !671

; <label>:328:                                    ; preds = %326, %307
  %329 = phi i32 [ %303, %307 ], [ %319, %326 ]
  %330 = phi i32 [ %308, %307 ], [ %320, %326 ], !dbg !661
  %331 = phi i8* [ %309, %307 ], [ %321, %326 ], !dbg !663
  %332 = phi i32 [ %311, %307 ], [ %327, %326 ], !dbg !664
  %333 = ptrtoint i8* %331 to i64, !dbg !671
  %334 = sub i64 %333, %304, !dbg !671
  %335 = icmp sgt i64 %334, 8, !dbg !673
  %336 = icmp sgt i32 %329, 20047, !dbg !674
  %337 = or i1 %336, %335, !dbg !675
  %338 = select i1 %337, i32 19999, i32 %330, !dbg !676
  %339 = icmp eq i32 %289, 0, !dbg !677
  %340 = sub nsw i32 0, %338, !dbg !679
  %341 = select i1 %339, i32 %338, i32 %340, !dbg !680
  br label %343, !dbg !680

; <label>:342:                                    ; preds = %286
  store i8* %261, i8** %7, align 8, !dbg !681, !tbaa !416
  br label %343

; <label>:343:                                    ; preds = %328, %301, %342, %260
  %344 = phi i32 [ %288, %342 ], [ %262, %260 ], [ %303, %301 ], [ %332, %328 ], !dbg !682
  %345 = phi i32 [ 0, %342 ], [ 0, %260 ], [ 0, %301 ], [ %341, %328 ], !dbg !525
  %346 = phi i8* [ %261, %342 ], [ %1, %260 ], [ %261, %301 ], [ %261, %328 ]
  %347 = icmp eq i32 %264, 0, !dbg !683
  br i1 %347, label %348, label %387, !dbg !684

; <label>:348:                                    ; preds = %343
  %349 = or i32 %266, %94, !dbg !685
  %350 = icmp eq i32 %349, 0, !dbg !685
  br i1 %350, label %351, label %950, !dbg !685

; <label>:351:                                    ; preds = %348
  %352 = icmp eq i32 %263, 0, !dbg !687
  br i1 %352, label %353, label %385, !dbg !689

; <label>:353:                                    ; preds = %351
  switch i32 %344, label %385 [
    i32 105, label %354
    i32 73, label %354
    i32 110, label %365
    i32 78, label %365
  ], !dbg !690

; <label>:354:                                    ; preds = %353, %353
  %355 = call i32 @__match(i8** nonnull %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #5, !dbg !691
  %356 = icmp eq i32 %355, 0, !dbg !691
  br i1 %356, label %385, label %357, !dbg !694

; <label>:357:                                    ; preds = %354
  %358 = load i8*, i8** %7, align 8, !dbg !695, !tbaa !416
  %359 = getelementptr inbounds i8, i8* %358, i64 -1, !dbg !695
  store i8* %359, i8** %7, align 8, !dbg !695, !tbaa !416
  %360 = call i32 @__match(i8** nonnull %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !697
  %361 = icmp eq i32 %360, 0, !dbg !697
  br i1 %361, label %362, label %950, !dbg !699

; <label>:362:                                    ; preds = %357
  %363 = load i8*, i8** %7, align 8, !dbg !700, !tbaa !416
  %364 = getelementptr inbounds i8, i8* %363, i64 1, !dbg !700
  store i8* %364, i8** %7, align 8, !dbg !700, !tbaa !416
  br label %950, !dbg !700

; <label>:365:                                    ; preds = %353, %353
  %366 = call i32 @__match(i8** nonnull %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #5, !dbg !701
  %367 = icmp eq i32 %366, 0, !dbg !701
  br i1 %367, label %385, label %368, !dbg !703

; <label>:368:                                    ; preds = %365
  %369 = load i8*, i8** %7, align 8, !dbg !704, !tbaa !416
  %370 = load i8, i8* %369, align 1, !dbg !707, !tbaa !439
  %371 = icmp eq i8 %370, 40, !dbg !708
  br i1 %371, label %372, label %950, !dbg !709

; <label>:372:                                    ; preds = %368
  %373 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0, !dbg !710
  %374 = call i32 @__hexnan(i8** nonnull %7, %struct.FPI* nonnull @_strtod_l.fpinan, i32* nonnull %373) #5, !dbg !711
  %375 = icmp eq i32 %374, 5, !dbg !712
  br i1 %375, label %376, label %950, !dbg !713

; <label>:376:                                    ; preds = %372
  %377 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1, !dbg !714
  %378 = load i32, i32* %377, align 4, !dbg !714, !tbaa !494
  %379 = or i32 %378, 2146435072, !dbg !716
  %380 = zext i32 %379 to i64, !dbg !717
  %381 = shl nuw i64 %380, 32, !dbg !717
  %382 = load i32, i32* %373, align 4, !dbg !718, !tbaa !494
  %383 = zext i32 %382 to i64, !dbg !719
  %384 = or i64 %381, %383, !dbg !719
  br label %950, !dbg !720

; <label>:385:                                    ; preds = %20, %272, %354, %365, %351, %25, %353
  %386 = phi i8* [ %346, %351 ], [ %346, %353 ], [ %346, %365 ], [ %346, %354 ], [ %1, %272 ], [ %1, %25 ], [ %1, %20 ]
  store i8* %386, i8** %7, align 8, !dbg !721, !tbaa !416
  br label %950, !dbg !722

; <label>:387:                                    ; preds = %343
  %388 = sub nsw i32 %345, %265, !dbg !723
  %389 = icmp eq i32 %125, 0, !dbg !725
  %390 = select i1 %389, i32 %264, i32 %125, !dbg !727
  %391 = icmp slt i32 %264, 16, !dbg !728
  %392 = select i1 %391, i32 %264, i32 16, !dbg !729
  %393 = uitofp i32 %268 to double, !dbg !731
  %394 = icmp sgt i32 %392, 9, !dbg !732
  br i1 %394, label %395, label %403, !dbg !734

; <label>:395:                                    ; preds = %387
  %396 = add nsw i32 %392, -9, !dbg !735
  %397 = sext i32 %396 to i64, !dbg !737
  %398 = getelementptr inbounds [0 x double], [0 x double]* @__mprec_tens, i64 0, i64 %397, !dbg !737
  %399 = load double, double* %398, align 8, !dbg !737, !tbaa !738
  %400 = fmul double %399, %393, !dbg !740
  %401 = uitofp i32 %269 to double, !dbg !741
  %402 = fadd double %400, %401, !dbg !742
  br label %403, !dbg !743

; <label>:403:                                    ; preds = %395, %387
  %404 = phi double [ %402, %395 ], [ %393, %387 ]
  %405 = bitcast double %404 to i64, !dbg !525
  br i1 %391, label %406, label %442, !dbg !745

; <label>:406:                                    ; preds = %403
  %407 = icmp eq i32 %388, 0, !dbg !746
  br i1 %407, label %950, label %408, !dbg !750

; <label>:408:                                    ; preds = %406
  %409 = icmp sgt i32 %388, 0, !dbg !751
  br i1 %409, label %410, label %433, !dbg !753

; <label>:410:                                    ; preds = %408
  %411 = icmp slt i32 %388, 23, !dbg !754
  br i1 %411, label %412, label %418, !dbg !757

; <label>:412:                                    ; preds = %410
  %413 = sext i32 %388 to i64, !dbg !758
  %414 = getelementptr inbounds [0 x double], [0 x double]* @__mprec_tens, i64 0, i64 %413, !dbg !758
  %415 = load double, double* %414, align 8, !dbg !758, !tbaa !738
  %416 = fmul double %404, %415, !dbg !758
  %417 = bitcast double %416 to i64, !dbg !758
  br label %950, !dbg !760

; <label>:418:                                    ; preds = %410
  %419 = sub nsw i32 15, %264, !dbg !761
  %420 = add nsw i32 %419, 22, !dbg !762
  %421 = icmp sgt i32 %388, %420, !dbg !764
  br i1 %421, label %442, label %422, !dbg !765

; <label>:422:                                    ; preds = %418
  %423 = sub nsw i32 %388, %419, !dbg !766
  %424 = sext i32 %419 to i64, !dbg !768
  %425 = getelementptr inbounds [0 x double], [0 x double]* @__mprec_tens, i64 0, i64 %424, !dbg !768
  %426 = load double, double* %425, align 8, !dbg !768, !tbaa !738
  %427 = fmul double %404, %426, !dbg !769
  %428 = sext i32 %423 to i64, !dbg !770
  %429 = getelementptr inbounds [0 x double], [0 x double]* @__mprec_tens, i64 0, i64 %428, !dbg !770
  %430 = load double, double* %429, align 8, !dbg !770, !tbaa !738
  %431 = fmul double %427, %430, !dbg !770
  %432 = bitcast double %431 to i64, !dbg !770
  br label %950, !dbg !771

; <label>:433:                                    ; preds = %408
  %434 = icmp sgt i32 %388, -23, !dbg !772
  br i1 %434, label %435, label %442, !dbg !774

; <label>:435:                                    ; preds = %433
  %436 = sub nsw i32 0, %388, !dbg !775
  %437 = sext i32 %436 to i64, !dbg !775
  %438 = getelementptr inbounds [0 x double], [0 x double]* @__mprec_tens, i64 0, i64 %437, !dbg !775
  %439 = load double, double* %438, align 8, !dbg !775, !tbaa !738
  %440 = fdiv double %404, %439, !dbg !775
  %441 = bitcast double %440 to i64, !dbg !775
  br label %950, !dbg !777

; <label>:442:                                    ; preds = %418, %433, %403
  %443 = sub nsw i32 %264, %392, !dbg !778
  %444 = add nsw i32 %388, %443, !dbg !779
  %445 = icmp sgt i32 %444, 0, !dbg !781
  br i1 %445, label %446, label %509, !dbg !783

; <label>:446:                                    ; preds = %442
  %447 = and i32 %444, 15, !dbg !784
  %448 = icmp eq i32 %447, 0, !dbg !787
  br i1 %448, label %455, label %449, !dbg !788

; <label>:449:                                    ; preds = %446
  %450 = zext i32 %447 to i64, !dbg !789
  %451 = getelementptr inbounds [0 x double], [0 x double]* @__mprec_tens, i64 0, i64 %450, !dbg !789
  %452 = load double, double* %451, align 8, !dbg !789, !tbaa !738
  %453 = fmul double %404, %452, !dbg !790
  %454 = bitcast double %453 to i64, !dbg !790
  br label %455, !dbg !791

; <label>:455:                                    ; preds = %446, %449
  %456 = phi double [ %404, %446 ], [ %453, %449 ], !dbg !792
  %457 = phi i64 [ %405, %446 ], [ %454, %449 ], !dbg !792
  %458 = and i32 %444, -16, !dbg !793
  %459 = icmp eq i32 %458, 0, !dbg !793
  br i1 %459, label %587, label %460, !dbg !795

; <label>:460:                                    ; preds = %455
  %461 = icmp sgt i32 %458, 308, !dbg !796
  br i1 %461, label %467, label %469, !dbg !799

; <label>:462:                                    ; preds = %922, %620, %631, %679, %682, %691, %696, %702, %708, %711, %861, %597, %592, %766
  %463 = phi %struct._Bigint* [ %706, %766 ], [ null, %592 ], [ %595, %597 ], [ %706, %861 ], [ %706, %711 ], [ %706, %708 ], [ null, %702 ], [ null, %696 ], [ %635, %691 ], [ %635, %682 ], [ %635, %679 ], [ %635, %631 ], [ %926, %620 ], [ null, %922 ]
  %464 = phi %struct._Bigint* [ %712, %766 ], [ null, %592 ], [ null, %597 ], [ %712, %861 ], [ %712, %711 ], [ null, %708 ], [ %689, %702 ], [ %689, %696 ], [ %689, %691 ], [ %680, %682 ], [ null, %679 ], [ null, %631 ], [ %712, %620 ], [ %712, %922 ]
  %465 = phi %struct._Bigint* [ %714, %766 ], [ null, %592 ], [ null, %597 ], [ %714, %861 ], [ null, %711 ], [ %634, %708 ], [ %634, %702 ], [ %634, %696 ], [ %634, %691 ], [ %634, %682 ], [ %634, %679 ], [ %634, %631 ], [ %714, %620 ], [ %714, %922 ]
  %466 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !800
  store i32 34, i32* %466, align 8, !dbg !802, !tbaa !803
  br label %944, !dbg !808

; <label>:467:                                    ; preds = %587, %491, %460
  %468 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !800
  store i32 34, i32* %468, align 8, !dbg !802, !tbaa !803
  br label %950

; <label>:469:                                    ; preds = %460
  %470 = icmp ugt i32 %444, 31, !dbg !810
  br i1 %470, label %471, label %491, !dbg !813

; <label>:471:                                    ; preds = %469
  %472 = lshr i32 %444, 4
  br label %473, !dbg !814

; <label>:473:                                    ; preds = %471, %485
  %474 = phi i64 [ 0, %471 ], [ %488, %485 ]
  %475 = phi i32 [ %472, %471 ], [ %489, %485 ]
  %476 = phi i64 [ %457, %471 ], [ %487, %485 ]
  %477 = phi double [ %456, %471 ], [ %486, %485 ]
  %478 = and i32 %475, 1, !dbg !814
  %479 = icmp eq i32 %478, 0, !dbg !814
  br i1 %479, label %485, label %480, !dbg !816

; <label>:480:                                    ; preds = %473
  %481 = getelementptr inbounds [0 x double], [0 x double]* @__mprec_bigtens, i64 0, i64 %474, !dbg !817
  %482 = load double, double* %481, align 8, !dbg !817, !tbaa !738
  %483 = fmul double %477, %482, !dbg !818
  %484 = bitcast double %483 to i64, !dbg !818
  br label %485, !dbg !819

; <label>:485:                                    ; preds = %473, %480
  %486 = phi double [ %477, %473 ], [ %483, %480 ], !dbg !820
  %487 = phi i64 [ %476, %473 ], [ %484, %480 ], !dbg !820
  %488 = add nuw nsw i64 %474, 1, !dbg !821
  %489 = lshr i32 %475, 1
  %490 = icmp ugt i32 %475, 3, !dbg !810
  br i1 %490, label %473, label %491, !dbg !813, !llvm.loop !822

; <label>:491:                                    ; preds = %485, %469
  %492 = phi i64 [ %457, %469 ], [ %487, %485 ], !dbg !824
  %493 = phi i64 [ 0, %469 ], [ %488, %485 ], !dbg !825
  %494 = add i64 %492, -238690780250636288, !dbg !826
  %495 = and i64 %493, 4294967295, !dbg !827
  %496 = getelementptr inbounds [0 x double], [0 x double]* @__mprec_bigtens, i64 0, i64 %495, !dbg !827
  %497 = load double, double* %496, align 8, !dbg !827, !tbaa !738
  %498 = bitcast i64 %494 to double, !dbg !828
  %499 = fmul double %497, %498, !dbg !828
  %500 = bitcast double %499 to i64, !dbg !828
  %501 = lshr i64 %500, 32, !dbg !829
  %502 = trunc i64 %501 to i32, !dbg !829
  %503 = and i32 %502, 2146435072, !dbg !831
  %504 = icmp ugt i32 %503, 2090860544, !dbg !832
  br i1 %504, label %467, label %505, !dbg !833

; <label>:505:                                    ; preds = %491
  %506 = icmp ugt i32 %503, 2089811968, !dbg !834
  %507 = add i64 %500, 238690780250636288, !dbg !836
  %508 = select i1 %506, i64 9218868437227405311, i64 %507, !dbg !837
  br label %587, !dbg !837

; <label>:509:                                    ; preds = %442
  %510 = icmp slt i32 %444, 0, !dbg !838
  br i1 %510, label %511, label %587, !dbg !840

; <label>:511:                                    ; preds = %509
  %512 = sub nsw i32 0, %444, !dbg !841
  %513 = and i32 %512, 15, !dbg !843
  %514 = icmp eq i32 %513, 0, !dbg !845
  br i1 %514, label %521, label %515, !dbg !846

; <label>:515:                                    ; preds = %511
  %516 = zext i32 %513 to i64, !dbg !847
  %517 = getelementptr inbounds [0 x double], [0 x double]* @__mprec_tens, i64 0, i64 %516, !dbg !847
  %518 = load double, double* %517, align 8, !dbg !847, !tbaa !738
  %519 = fdiv double %404, %518, !dbg !848
  %520 = bitcast double %519 to i64, !dbg !848
  br label %521, !dbg !849

; <label>:521:                                    ; preds = %511, %515
  %522 = phi double [ %404, %511 ], [ %519, %515 ], !dbg !850
  %523 = phi i64 [ %405, %511 ], [ %520, %515 ], !dbg !850
  %524 = ashr i32 %512, 4, !dbg !851
  %525 = icmp eq i32 %524, 0, !dbg !851
  br i1 %525, label %587, label %526, !dbg !853

; <label>:526:                                    ; preds = %521
  %527 = icmp slt i32 %444, -511, !dbg !854
  br i1 %527, label %585, label %528, !dbg !857

; <label>:528:                                    ; preds = %526
  %529 = and i32 %512, 256, !dbg !858
  %530 = icmp eq i32 %529, 0, !dbg !858
  %531 = select i1 %530, i32 0, i32 106, !dbg !860
  %532 = icmp slt i32 %444, -15, !dbg !861
  br i1 %532, label %533, label %551, !dbg !864

; <label>:533:                                    ; preds = %528, %545
  %534 = phi i64 [ %548, %545 ], [ 0, %528 ]
  %535 = phi i32 [ %549, %545 ], [ %524, %528 ]
  %536 = phi i64 [ %547, %545 ], [ %523, %528 ]
  %537 = phi double [ %546, %545 ], [ %522, %528 ]
  %538 = and i32 %535, 1, !dbg !865
  %539 = icmp eq i32 %538, 0, !dbg !865
  br i1 %539, label %545, label %540, !dbg !867

; <label>:540:                                    ; preds = %533
  %541 = getelementptr inbounds [5 x double], [5 x double]* @tinytens, i64 0, i64 %534, !dbg !868
  %542 = load double, double* %541, align 8, !dbg !868, !tbaa !738
  %543 = fmul double %537, %542, !dbg !869
  %544 = bitcast double %543 to i64, !dbg !869
  br label %545, !dbg !870

; <label>:545:                                    ; preds = %533, %540
  %546 = phi double [ %537, %533 ], [ %543, %540 ], !dbg !871
  %547 = phi i64 [ %536, %533 ], [ %544, %540 ], !dbg !871
  %548 = add nuw nsw i64 %534, 1, !dbg !872
  %549 = lshr i32 %535, 1
  %550 = icmp eq i32 %549, 0, !dbg !861
  br i1 %550, label %551, label %533, !dbg !864, !llvm.loop !873

; <label>:551:                                    ; preds = %545, %528
  %552 = phi i64 [ %523, %528 ], [ %547, %545 ], !dbg !824
  br i1 %530, label %578, label %553, !dbg !875

; <label>:553:                                    ; preds = %551
  %554 = lshr i64 %552, 52, !dbg !877
  %555 = trunc i64 %554 to i32, !dbg !878
  %556 = and i32 %555, 2047, !dbg !878
  %557 = sub nsw i32 107, %556, !dbg !879
  %558 = icmp sgt i32 %557, 0, !dbg !880
  br i1 %558, label %559, label %578, !dbg !881

; <label>:559:                                    ; preds = %553
  %560 = icmp sgt i32 %557, 31, !dbg !882
  br i1 %560, label %561, label %571, !dbg !885

; <label>:561:                                    ; preds = %559
  %562 = icmp sgt i32 %557, 52, !dbg !886
  br i1 %562, label %587, label %563, !dbg !889

; <label>:563:                                    ; preds = %561
  %564 = add nsw i32 %557, -32, !dbg !890
  %565 = shl i32 -1, %564, !dbg !891
  %566 = lshr i64 %552, 32, !dbg !892
  %567 = trunc i64 %566 to i32, !dbg !892
  %568 = and i32 %565, %567, !dbg !892
  %569 = zext i32 %568 to i64, !dbg !892
  %570 = shl nuw i64 %569, 32, !dbg !892
  br label %578

; <label>:571:                                    ; preds = %559
  %572 = shl i32 -1, %557, !dbg !893
  %573 = trunc i64 %552 to i32, !dbg !894
  %574 = and i32 %572, %573, !dbg !894
  %575 = zext i32 %574 to i64, !dbg !894
  %576 = and i64 %552, -4294967296, !dbg !894
  %577 = or i64 %576, %575, !dbg !894
  br label %578

; <label>:578:                                    ; preds = %551, %571, %563, %553
  %579 = phi i64 [ %552, %551 ], [ %570, %563 ], [ %577, %571 ], [ %552, %553 ], !dbg !895
  %580 = bitcast i64 %579 to double, !dbg !896
  %581 = fcmp une double %580, 0.000000e+00, !dbg !896
  br i1 %581, label %587, label %585, !dbg !898

; <label>:582:                                    ; preds = %833, %784, %819
  %583 = phi %struct._Bigint* [ %714, %819 ], [ %778, %784 ], [ %714, %833 ]
  %584 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !899
  store i32 34, i32* %584, align 8, !dbg !901, !tbaa !803
  br label %944, !dbg !902

; <label>:585:                                    ; preds = %578, %526
  %586 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !899
  store i32 34, i32* %586, align 8, !dbg !901, !tbaa !803
  br label %950

; <label>:587:                                    ; preds = %505, %561, %455, %521, %509, %578
  %588 = phi i64 [ %457, %455 ], [ %523, %521 ], [ %579, %578 ], [ %405, %509 ], [ 247697979505377280, %561 ], [ %508, %505 ], !dbg !895
  %589 = phi i32 [ 0, %455 ], [ 0, %521 ], [ %531, %578 ], [ 0, %509 ], [ 106, %561 ], [ 0, %505 ], !dbg !525
  %590 = tail call %struct._Bigint* @__s2b(%struct._reent* %0, i8* %267, i32 %390, i32 %264, i32 %268) #5, !dbg !903
  %591 = icmp eq %struct._Bigint* %590, null, !dbg !904
  br i1 %591, label %467, label %592, !dbg !906

; <label>:592:                                    ; preds = %587
  %593 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %590, i64 0, i32 1, !dbg !908
  %594 = load i32, i32* %593, align 8, !dbg !908, !tbaa !912
  %595 = call %struct._Bigint* @_Balloc(%struct._reent* %0, i32 %594) #5, !dbg !914
  %596 = icmp eq %struct._Bigint* %595, null, !dbg !915
  br i1 %596, label %462, label %597, !dbg !917

; <label>:597:                                    ; preds = %592
  %598 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %590, i64 0, i32 3
  %599 = bitcast i32* %598 to i8*
  %600 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %590, i64 0, i32 4
  %601 = icmp sgt i32 %388, -1
  %602 = sub nsw i32 0, %388
  %603 = select i1 %601, i32 %388, i32 0
  %604 = select i1 %601, i32 0, i32 %602
  %605 = add i32 %589, %603
  %606 = icmp sgt i32 %604, 0
  %607 = icmp sgt i32 %603, 0
  %608 = icmp eq i32 %589, 0
  %609 = icmp ne i32 %589, 0
  %610 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %595, i64 0, i32 3, !dbg !918
  %611 = bitcast i32* %610 to i8*, !dbg !918
  %612 = load i32, i32* %600, align 4, !dbg !918, !tbaa !919
  %613 = sext i32 %612 to i64, !dbg !918
  %614 = shl nsw i64 %613, 2, !dbg !918
  %615 = add nsw i64 %614, 8, !dbg !918
  %616 = call i8* @memcpy(i8* nonnull %611, i8* nonnull %599, i64 %615) #5, !dbg !918
  %617 = bitcast i64 %588 to double, !dbg !920
  %618 = call %struct._Bigint* @__d2b(%struct._reent* %0, double %617, i32* nonnull %5, i32* nonnull %6) #5, !dbg !923
  store %struct._Bigint* %618, %struct._Bigint** %8, align 8, !dbg !924, !tbaa !416
  %619 = icmp eq %struct._Bigint* %618, null, !dbg !925
  br i1 %619, label %462, label %631, !dbg !927

; <label>:620:                                    ; preds = %922
  %621 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %926, i64 0, i32 3, !dbg !918
  %622 = bitcast i32* %621 to i8*, !dbg !918
  %623 = load i32, i32* %600, align 4, !dbg !918, !tbaa !919
  %624 = sext i32 %623 to i64, !dbg !918
  %625 = shl nsw i64 %624, 2, !dbg !918
  %626 = add nsw i64 %625, 8, !dbg !918
  %627 = call i8* @memcpy(i8* nonnull %622, i8* nonnull %599, i64 %626) #5, !dbg !918
  %628 = bitcast i64 %923 to double, !dbg !920
  %629 = call %struct._Bigint* @__d2b(%struct._reent* %0, double %628, i32* nonnull %5, i32* nonnull %6) #5, !dbg !923
  store %struct._Bigint* %629, %struct._Bigint** %8, align 8, !dbg !924, !tbaa !416
  %630 = icmp eq %struct._Bigint* %629, null, !dbg !925
  br i1 %630, label %462, label %631, !dbg !927, !llvm.loop !928

; <label>:631:                                    ; preds = %597, %620
  %632 = phi double [ %628, %620 ], [ %617, %597 ]
  %633 = phi i64 [ %923, %620 ], [ %588, %597 ]
  %634 = phi %struct._Bigint* [ %714, %620 ], [ null, %597 ]
  %635 = phi %struct._Bigint* [ %926, %620 ], [ %595, %597 ]
  %636 = call %struct._Bigint* @__i2b(%struct._reent* %0, i32 1) #5, !dbg !931
  %637 = icmp eq %struct._Bigint* %636, null, !dbg !932
  br i1 %637, label %462, label %638, !dbg !934

; <label>:638:                                    ; preds = %631
  %639 = load i32, i32* %5, align 4, !dbg !939, !tbaa !494
  %640 = icmp sgt i32 %639, -1, !dbg !941
  %641 = sub i32 0, %639
  %642 = select i1 %640, i32 0, i32 %641, !dbg !942
  %643 = select i1 %640, i32 %639, i32 0, !dbg !942
  %644 = add nsw i32 %643, %604, !dbg !942
  %645 = sub nsw i32 %639, %589, !dbg !946
  %646 = load i32, i32* %6, align 4, !dbg !947, !tbaa !494
  %647 = add nsw i32 %645, %646, !dbg !948
  %648 = sub nsw i32 54, %646, !dbg !949
  %649 = icmp slt i32 %647, -1021, !dbg !950
  br i1 %649, label %650, label %659, !dbg !952

; <label>:650:                                    ; preds = %638
  %651 = sub i32 -1021, %647, !dbg !953
  %652 = sub nsw i32 %648, %651, !dbg !955
  %653 = icmp slt i32 %651, 32, !dbg !956
  br i1 %653, label %654, label %656, !dbg !958

; <label>:654:                                    ; preds = %650
  %655 = shl i32 1, %651, !dbg !959
  br label %659, !dbg !960

; <label>:656:                                    ; preds = %650
  %657 = add nsw i32 %651, -32, !dbg !961
  %658 = shl i32 1, %657, !dbg !962
  br label %659

; <label>:659:                                    ; preds = %654, %656, %638
  %660 = phi i32 [ %652, %654 ], [ %652, %656 ], [ %648, %638 ], !dbg !963
  %661 = phi i32 [ %655, %654 ], [ 1, %656 ], [ 1, %638 ], !dbg !963
  %662 = phi i32 [ 0, %654 ], [ %658, %656 ], [ 0, %638 ], !dbg !963
  %663 = add nsw i32 %660, %644, !dbg !964
  %664 = add i32 %605, %642, !dbg !965
  %665 = add i32 %664, %660, !dbg !966
  %666 = icmp slt i32 %663, %665, !dbg !967
  %667 = select i1 %666, i32 %663, i32 %665, !dbg !968
  %668 = icmp sgt i32 %667, %644, !dbg !969
  %669 = select i1 %668, i32 %644, i32 %667, !dbg !971
  %670 = icmp sgt i32 %669, 0, !dbg !972
  br i1 %670, label %671, label %675, !dbg !974

; <label>:671:                                    ; preds = %659
  %672 = sub nsw i32 %663, %669, !dbg !975
  %673 = sub nsw i32 %665, %669, !dbg !977
  %674 = sub nsw i32 %644, %669, !dbg !978
  br label %675, !dbg !979

; <label>:675:                                    ; preds = %671, %659
  %676 = phi i32 [ %673, %671 ], [ %665, %659 ], !dbg !963
  %677 = phi i32 [ %674, %671 ], [ %644, %659 ], !dbg !963
  %678 = phi i32 [ %672, %671 ], [ %663, %659 ], !dbg !963
  br i1 %606, label %679, label %688, !dbg !980

; <label>:679:                                    ; preds = %675
  %680 = call %struct._Bigint* @__pow5mult(%struct._reent* %0, %struct._Bigint* nonnull %636, i32 %604) #5, !dbg !981
  %681 = icmp eq %struct._Bigint* %680, null, !dbg !984
  br i1 %681, label %462, label %682, !dbg !986

; <label>:682:                                    ; preds = %679
  %683 = load %struct._Bigint*, %struct._Bigint** %8, align 8, !dbg !987, !tbaa !416
  %684 = call %struct._Bigint* @__multiply(%struct._reent* %0, %struct._Bigint* nonnull %680, %struct._Bigint* %683) #5, !dbg !988
  %685 = icmp eq %struct._Bigint* %684, null, !dbg !990
  br i1 %685, label %462, label %686, !dbg !992

; <label>:686:                                    ; preds = %682
  %687 = load %struct._Bigint*, %struct._Bigint** %8, align 8, !dbg !993, !tbaa !416
  call void @_Bfree(%struct._reent* %0, %struct._Bigint* %687) #5, !dbg !994
  store %struct._Bigint* %684, %struct._Bigint** %8, align 8, !dbg !995, !tbaa !416
  br label %688, !dbg !996

; <label>:688:                                    ; preds = %686, %675
  %689 = phi %struct._Bigint* [ %680, %686 ], [ %636, %675 ], !dbg !963
  %690 = icmp sgt i32 %678, 0, !dbg !997
  br i1 %690, label %691, label %695, !dbg !999

; <label>:691:                                    ; preds = %688
  %692 = load %struct._Bigint*, %struct._Bigint** %8, align 8, !dbg !1000, !tbaa !416
  %693 = call %struct._Bigint* @__lshift(%struct._reent* %0, %struct._Bigint* %692, i32 %678) #5, !dbg !1002
  store %struct._Bigint* %693, %struct._Bigint** %8, align 8, !dbg !1003, !tbaa !416
  %694 = icmp eq %struct._Bigint* %693, null, !dbg !1004
  br i1 %694, label %462, label %695, !dbg !1006

; <label>:695:                                    ; preds = %691, %688
  br i1 %607, label %696, label %699, !dbg !1007

; <label>:696:                                    ; preds = %695
  %697 = call %struct._Bigint* @__pow5mult(%struct._reent* %0, %struct._Bigint* nonnull %635, i32 %603) #5, !dbg !1008
  %698 = icmp eq %struct._Bigint* %697, null, !dbg !1011
  br i1 %698, label %462, label %699, !dbg !1013

; <label>:699:                                    ; preds = %696, %695
  %700 = phi %struct._Bigint* [ %697, %696 ], [ %635, %695 ], !dbg !963
  %701 = icmp sgt i32 %676, 0, !dbg !1014
  br i1 %701, label %702, label %705, !dbg !1016

; <label>:702:                                    ; preds = %699
  %703 = call %struct._Bigint* @__lshift(%struct._reent* %0, %struct._Bigint* nonnull %700, i32 %676) #5, !dbg !1017
  %704 = icmp eq %struct._Bigint* %703, null, !dbg !1019
  br i1 %704, label %462, label %705, !dbg !1021

; <label>:705:                                    ; preds = %702, %699
  %706 = phi %struct._Bigint* [ %703, %702 ], [ %700, %699 ], !dbg !1022
  %707 = icmp sgt i32 %677, 0, !dbg !1023
  br i1 %707, label %708, label %711, !dbg !1025

; <label>:708:                                    ; preds = %705
  %709 = call %struct._Bigint* @__lshift(%struct._reent* %0, %struct._Bigint* nonnull %689, i32 %677) #5, !dbg !1026
  %710 = icmp eq %struct._Bigint* %709, null, !dbg !1028
  br i1 %710, label %462, label %711, !dbg !1030

; <label>:711:                                    ; preds = %708, %705
  %712 = phi %struct._Bigint* [ %709, %708 ], [ %689, %705 ], !dbg !1031
  %713 = load %struct._Bigint*, %struct._Bigint** %8, align 8, !dbg !1032, !tbaa !416
  %714 = call %struct._Bigint* @__mdiff(%struct._reent* %0, %struct._Bigint* %713, %struct._Bigint* nonnull %706) #5, !dbg !1033
  %715 = icmp eq %struct._Bigint* %714, null, !dbg !1034
  br i1 %715, label %462, label %716, !dbg !1036

; <label>:716:                                    ; preds = %711
  %717 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %714, i64 0, i32 3, !dbg !1037
  %718 = load i32, i32* %717, align 8, !dbg !1037, !tbaa !1038
  store i32 0, i32* %717, align 8, !dbg !1040, !tbaa !1038
  %719 = call i32 @__mcmp(%struct._Bigint* nonnull %714, %struct._Bigint* nonnull %712) #5, !dbg !1041
  %720 = icmp slt i32 %719, 0, !dbg !1042
  br i1 %720, label %721, label %745, !dbg !1044

; <label>:721:                                    ; preds = %716
  %722 = trunc i64 %633 to i32, !dbg !1045
  %723 = or i32 %718, %722, !dbg !1048
  %724 = icmp eq i32 %723, 0, !dbg !1048
  br i1 %724, label %725, label %928, !dbg !1048

; <label>:725:                                    ; preds = %721
  %726 = lshr i64 %633, 32, !dbg !1049
  %727 = trunc i64 %726 to i32, !dbg !1049
  %728 = and i32 %727, 1048575, !dbg !1050
  %729 = icmp ne i32 %728, 0, !dbg !1050
  %730 = and i32 %727, 2146435072, !dbg !1051
  %731 = icmp ult i32 %730, 112197633, !dbg !1052
  %732 = or i1 %729, %731, !dbg !1053
  br i1 %732, label %928, label %733, !dbg !1053

; <label>:733:                                    ; preds = %725
  %734 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %714, i64 0, i32 5, i64 0, !dbg !1054
  %735 = load i32, i32* %734, align 8, !dbg !1054, !tbaa !494
  %736 = icmp eq i32 %735, 0, !dbg !1054
  br i1 %736, label %737, label %741, !dbg !1056

; <label>:737:                                    ; preds = %733
  %738 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %714, i64 0, i32 4, !dbg !1057
  %739 = load i32, i32* %738, align 4, !dbg !1057, !tbaa !919
  %740 = icmp slt i32 %739, 2, !dbg !1058
  br i1 %740, label %928, label %741, !dbg !1059

; <label>:741:                                    ; preds = %733, %737
  %742 = call %struct._Bigint* @__lshift(%struct._reent* %0, %struct._Bigint* nonnull %714, i32 1) #5, !dbg !1060
  %743 = call i32 @__mcmp(%struct._Bigint* %742, %struct._Bigint* nonnull %712) #5, !dbg !1061
  %744 = icmp sgt i32 %743, 0, !dbg !1063
  br i1 %744, label %777, label %928, !dbg !1064

; <label>:745:                                    ; preds = %716
  %746 = icmp eq i32 %719, 0, !dbg !1065
  br i1 %746, label %747, label %823, !dbg !1067

; <label>:747:                                    ; preds = %745
  %748 = icmp ne i32 %718, 0, !dbg !1068
  %749 = lshr i64 %633, 32, !dbg !1071
  %750 = trunc i64 %749 to i32, !dbg !1071
  %751 = and i32 %750, 1048575, !dbg !1071
  br i1 %748, label %752, label %773, !dbg !1073

; <label>:752:                                    ; preds = %747
  %753 = icmp eq i32 %751, 1048575, !dbg !1074
  br i1 %753, label %754, label %790, !dbg !1077

; <label>:754:                                    ; preds = %752
  %755 = trunc i64 %633 to i32, !dbg !1078
  br i1 %608, label %763, label %756, !dbg !1079

; <label>:756:                                    ; preds = %754
  %757 = and i32 %750, 2146435072, !dbg !1080
  %758 = icmp ult i32 %757, 111149057, !dbg !1081
  br i1 %758, label %759, label %763, !dbg !1082

; <label>:759:                                    ; preds = %756
  %760 = lshr exact i32 %757, 20, !dbg !1083
  %761 = sub nsw i32 107, %760, !dbg !1084
  %762 = shl i32 -1, %761, !dbg !1085
  br label %763, !dbg !1082

; <label>:763:                                    ; preds = %754, %756, %759
  %764 = phi i32 [ %762, %759 ], [ -1, %756 ], [ -1, %754 ], !dbg !1082
  %765 = icmp eq i32 %764, %755, !dbg !1086
  br i1 %765, label %766, label %790, !dbg !1087

; <label>:766:                                    ; preds = %763
  %767 = icmp eq i32 %750, 2146435071, !dbg !1088
  %768 = icmp eq i32 %755, -1, !dbg !1091
  %769 = and i1 %768, %767, !dbg !1092
  br i1 %769, label %462, label %770, !dbg !1092

; <label>:770:                                    ; preds = %766
  %771 = and i64 %633, 9218868437227405312, !dbg !1093
  %772 = add nuw i64 %771, 4503599627370496, !dbg !1093
  br label %928, !dbg !1094

; <label>:773:                                    ; preds = %747
  %774 = trunc i64 %633 to i32, !dbg !1095
  %775 = or i32 %751, %774, !dbg !1096
  %776 = icmp eq i32 %775, 0, !dbg !1096
  br i1 %776, label %777, label %790, !dbg !1096

; <label>:777:                                    ; preds = %773, %741
  %778 = phi %struct._Bigint* [ %742, %741 ], [ %714, %773 ], !dbg !963
  br i1 %608, label %786, label %779, !dbg !1097

; <label>:779:                                    ; preds = %777
  %780 = lshr i64 %633, 32, !dbg !1099
  %781 = trunc i64 %780 to i32, !dbg !1099
  %782 = and i32 %781, 2146435072, !dbg !1102
  %783 = icmp ult i32 %782, 112197633, !dbg !1103
  br i1 %783, label %784, label %786, !dbg !1105

; <label>:784:                                    ; preds = %779
  %785 = icmp ugt i32 %782, 57671680, !dbg !1106
  br i1 %785, label %933, label %582, !dbg !1109

; <label>:786:                                    ; preds = %777, %779
  %787 = and i64 %633, 9218868437227405312, !dbg !1110
  %788 = add nsw i64 %787, -4503599627370496, !dbg !1110
  %789 = or i64 %788, 4503599627370495, !dbg !1111
  br label %928, !dbg !1112

; <label>:790:                                    ; preds = %773, %752, %763
  %791 = icmp eq i32 %662, 0, !dbg !1113
  br i1 %791, label %795, label %792, !dbg !1115

; <label>:792:                                    ; preds = %790
  %793 = and i32 %662, %750, !dbg !1116
  %794 = icmp eq i32 %793, 0, !dbg !1116
  br i1 %794, label %928, label %799, !dbg !1119

; <label>:795:                                    ; preds = %790
  %796 = trunc i64 %633 to i32, !dbg !1120
  %797 = and i32 %661, %796, !dbg !1122
  %798 = icmp eq i32 %797, 0, !dbg !1122
  br i1 %798, label %928, label %799, !dbg !1123

; <label>:799:                                    ; preds = %792, %795
  %800 = call double @__ulp(double %632) #5, !dbg !1137
  br i1 %608, label %814, label %801, !dbg !1139

; <label>:801:                                    ; preds = %799
  %802 = lshr i64 %633, 52, !dbg !1141
  %803 = trunc i64 %802 to i32, !dbg !1142
  %804 = and i32 %803, 2047, !dbg !1142
  %805 = sub nsw i32 107, %804, !dbg !1143
  %806 = icmp slt i32 %805, 1, !dbg !1145
  br i1 %806, label %814, label %807, !dbg !1146

; <label>:807:                                    ; preds = %801
  %808 = shl i32 %805, 20, !dbg !1147
  %809 = add i32 %808, 1072693248, !dbg !1148
  %810 = zext i32 %809 to i64, !dbg !1149
  %811 = shl nuw i64 %810, 32, !dbg !1149
  %812 = bitcast i64 %811 to double, !dbg !1149
  %813 = fmul double %800, %812, !dbg !1151
  br label %814, !dbg !1152

; <label>:814:                                    ; preds = %799, %801, %807
  %815 = phi double [ %813, %807 ], [ %800, %799 ], [ %800, %801 ], !dbg !1153
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1154
  br i1 %748, label %816, label %819, !dbg !1155

; <label>:816:                                    ; preds = %814
  %817 = fadd double %815, %632, !dbg !1156
  %818 = bitcast double %817 to i64, !dbg !1156
  br label %928, !dbg !1157

; <label>:819:                                    ; preds = %814
  %820 = fsub double %632, %815, !dbg !1158
  %821 = bitcast double %820 to i64, !dbg !1158
  %822 = fcmp une double %820, 0.000000e+00, !dbg !1159
  br i1 %822, label %928, label %582, !dbg !1161

; <label>:823:                                    ; preds = %745
  %824 = call double @__ratio(%struct._Bigint* nonnull %714, %struct._Bigint* nonnull %712) #5, !dbg !1162
  %825 = fcmp ugt double %824, 2.000000e+00, !dbg !1165
  br i1 %825, label %840, label %826, !dbg !1166

; <label>:826:                                    ; preds = %823
  %827 = icmp eq i32 %718, 0, !dbg !1167
  br i1 %827, label %828, label %845, !dbg !1170

; <label>:828:                                    ; preds = %826
  %829 = trunc i64 %633 to i32, !dbg !1171
  switch i32 %829, label %845 [
    i32 0, label %830
    i32 1, label %833
  ], !dbg !1173

; <label>:830:                                    ; preds = %828
  %831 = and i64 %633, 4503595332403200, !dbg !1174
  %832 = icmp eq i64 %831, 0, !dbg !1174
  br i1 %832, label %835, label %845, !dbg !1175

; <label>:833:                                    ; preds = %828
  %834 = icmp ult i64 %633, 4294967296, !dbg !1176
  br i1 %834, label %582, label %845, !dbg !1179

; <label>:835:                                    ; preds = %830
  %836 = fcmp olt double %824, 1.000000e+00, !dbg !1180
  %837 = fmul double %824, 5.000000e-01, !dbg !1183
  %838 = select i1 %836, double 5.000000e-01, double %837, !dbg !1184
  %839 = fsub double -0.000000e+00, %838, !dbg !1185
  br label %845

; <label>:840:                                    ; preds = %823
  %841 = fmul double %824, 5.000000e-01, !dbg !1187
  %842 = icmp eq i32 %718, 0, !dbg !1189
  %843 = fsub double -0.000000e+00, %841, !dbg !1190
  %844 = select i1 %842, double %843, double %841, !dbg !1189
  br label %845

; <label>:845:                                    ; preds = %828, %830, %833, %826, %835, %840
  %846 = phi double [ %838, %835 ], [ %841, %840 ], [ 1.000000e+00, %826 ], [ 1.000000e+00, %833 ], [ 1.000000e+00, %830 ], [ 1.000000e+00, %828 ], !dbg !1191
  %847 = phi double [ %839, %835 ], [ %844, %840 ], [ 1.000000e+00, %826 ], [ -1.000000e+00, %833 ], [ -1.000000e+00, %830 ], [ -1.000000e+00, %828 ], !dbg !1191
  %848 = lshr i64 %633, 32, !dbg !1192
  %849 = trunc i64 %848 to i32, !dbg !1192
  %850 = and i32 %849, 2146435072, !dbg !1193
  %851 = icmp eq i32 %850, 2145386496, !dbg !1194
  br i1 %851, label %852, label %865, !dbg !1196

; <label>:852:                                    ; preds = %845
  %853 = add i64 %633, -238690780250636288, !dbg !1197
  %854 = bitcast i64 %853 to double, !dbg !1199
  %855 = call double @__ulp(double %854) #5, !dbg !1200
  %856 = fmul double %847, %855, !dbg !1201
  %857 = fadd double %856, %854, !dbg !1203
  %858 = bitcast double %857 to i64, !dbg !1203
  %859 = and i64 %858, 9214364837600034816, !dbg !1204
  %860 = icmp ugt i64 %859, 8980177652681801728, !dbg !1204
  br i1 %860, label %861, label %863, !dbg !1206

; <label>:861:                                    ; preds = %852
  %862 = icmp eq i64 %633, 9218868437227405311, !dbg !1207
  br i1 %862, label %462, label %922, !dbg !1207

; <label>:863:                                    ; preds = %852
  %864 = add i64 %858, 238690780250636288, !dbg !1210
  br label %898, !dbg !1211

; <label>:865:                                    ; preds = %845
  %866 = icmp ult i32 %850, 111149057, !dbg !1212
  %867 = and i1 %609, %866, !dbg !1215
  br i1 %867, label %868, label %891, !dbg !1215

; <label>:868:                                    ; preds = %865
  %869 = fcmp ugt double %846, 0x41DFFFFFFFC00000, !dbg !1216
  br i1 %869, label %878, label %870, !dbg !1219

; <label>:870:                                    ; preds = %868
  %871 = fptoui double %846 to i32, !dbg !1220
  %872 = icmp eq i32 %871, 0, !dbg !1223
  %873 = select i1 %872, i32 1, i32 %871, !dbg !1224
  %874 = uitofp i32 %873 to double, !dbg !1225
  %875 = icmp eq i32 %718, 0, !dbg !1226
  %876 = fsub double -0.000000e+00, %874, !dbg !1227
  %877 = select i1 %875, double %876, double %874, !dbg !1226
  br label %878, !dbg !1228

; <label>:878:                                    ; preds = %868, %870
  %879 = phi double [ %874, %870 ], [ %846, %868 ], !dbg !1229
  %880 = phi double [ %877, %870 ], [ %847, %868 ], !dbg !1229
  %881 = sub nsw i32 112197632, %850, !dbg !1230
  %882 = bitcast double %880 to i64, !dbg !1231
  %883 = lshr i64 %882, 32, !dbg !1231
  %884 = trunc i64 %883 to i32, !dbg !1231
  %885 = add i32 %881, %884, !dbg !1231
  %886 = zext i32 %885 to i64, !dbg !1231
  %887 = shl nuw i64 %886, 32, !dbg !1231
  %888 = and i64 %882, 4294967295, !dbg !1231
  %889 = or i64 %887, %888, !dbg !1231
  %890 = bitcast i64 %889 to double, !dbg !1231
  br label %891, !dbg !1232

; <label>:891:                                    ; preds = %878, %865
  %892 = phi double [ %879, %878 ], [ %846, %865 ], !dbg !1229
  %893 = phi double [ %890, %878 ], [ %847, %865 ], !dbg !1229
  %894 = call double @__ulp(double %632) #5, !dbg !1233
  %895 = fmul double %893, %894, !dbg !1234
  %896 = fadd double %895, %632, !dbg !1235
  %897 = bitcast double %896 to i64, !dbg !1235
  br label %898

; <label>:898:                                    ; preds = %891, %863
  %899 = phi i64 [ %864, %863 ], [ %897, %891 ], !dbg !1236
  %900 = phi double [ %846, %863 ], [ %892, %891 ], !dbg !1237
  %901 = lshr i64 %899, 32, !dbg !1238
  %902 = trunc i64 %901 to i32, !dbg !1238
  %903 = and i32 %902, 2146435072, !dbg !1239
  %904 = icmp eq i32 %850, %903, !dbg !1240
  %905 = and i1 %608, %904, !dbg !1243
  br i1 %905, label %906, label %922, !dbg !1243

; <label>:906:                                    ; preds = %898
  %907 = fptosi double %900 to i32, !dbg !1244
  %908 = sitofp i32 %907 to double, !dbg !1246
  %909 = fsub double %900, %908, !dbg !1247
  %910 = icmp eq i32 %718, 0, !dbg !1248
  br i1 %910, label %911, label %916, !dbg !1250

; <label>:911:                                    ; preds = %906
  %912 = trunc i64 %899 to i32, !dbg !1251
  %913 = and i32 %902, 1048575, !dbg !1252
  %914 = or i32 %913, %912, !dbg !1253
  %915 = icmp eq i32 %914, 0, !dbg !1253
  br i1 %915, label %920, label %916, !dbg !1253

; <label>:916:                                    ; preds = %911, %906
  %917 = fcmp olt double %909, 0x3FDFFFFF94A03595, !dbg !1254
  %918 = fcmp ogt double %909, 0x3FE0000035AFE535, !dbg !1257
  %919 = or i1 %917, %918, !dbg !1258
  br i1 %919, label %944, label %922, !dbg !1258

; <label>:920:                                    ; preds = %911
  %921 = fcmp olt double %909, 0x3FCFFFFF94A03595, !dbg !1259
  br i1 %921, label %944, label %922, !dbg !1261

; <label>:922:                                    ; preds = %861, %898, %916, %920
  %923 = phi i64 [ %899, %920 ], [ %899, %916 ], [ %899, %898 ], [ 9218868437227405311, %861 ], !dbg !1262
  %924 = load %struct._Bigint*, %struct._Bigint** %8, align 8, !dbg !1263, !tbaa !416
  call void @_Bfree(%struct._reent* %0, %struct._Bigint* %924) #5, !dbg !1264
  call void @_Bfree(%struct._reent* %0, %struct._Bigint* nonnull %706) #5, !dbg !1265
  call void @_Bfree(%struct._reent* %0, %struct._Bigint* nonnull %712) #5, !dbg !1266
  call void @_Bfree(%struct._reent* %0, %struct._Bigint* nonnull %714) #5, !dbg !1267
  %925 = load i32, i32* %593, align 8, !dbg !908, !tbaa !912
  %926 = call %struct._Bigint* @_Balloc(%struct._reent* %0, i32 %925) #5, !dbg !914
  %927 = icmp eq %struct._Bigint* %926, null, !dbg !915
  br i1 %927, label %462, label %620, !dbg !917, !llvm.loop !928

; <label>:928:                                    ; preds = %816, %819, %725, %721, %792, %795, %741, %737, %786, %770
  %929 = phi i64 [ %633, %725 ], [ %633, %737 ], [ %789, %786 ], [ %633, %741 ], [ %633, %721 ], [ %772, %770 ], [ %633, %795 ], [ %818, %816 ], [ %821, %819 ], [ %633, %792 ], !dbg !1262
  %930 = phi %struct._Bigint* [ %714, %725 ], [ %714, %737 ], [ %778, %786 ], [ %742, %741 ], [ %714, %721 ], [ %714, %770 ], [ %714, %795 ], [ %714, %816 ], [ %714, %819 ], [ %714, %792 ], !dbg !963
  br i1 %608, label %944, label %931, !dbg !1268

; <label>:931:                                    ; preds = %928
  %932 = bitcast i64 %929 to double, !dbg !1269
  br label %933, !dbg !1268

; <label>:933:                                    ; preds = %931, %784
  %934 = phi double [ %932, %931 ], [ %632, %784 ], !dbg !1269
  %935 = phi %struct._Bigint* [ %930, %931 ], [ %778, %784 ]
  %936 = fmul double %934, 0x3950000000000000, !dbg !1269
  %937 = bitcast double %936 to i64, !dbg !1269
  %938 = icmp ult i64 %937, 4294967296, !dbg !1272
  %939 = trunc i64 %937 to i32, !dbg !1274
  %940 = icmp eq i32 %939, 0, !dbg !1275
  %941 = and i1 %938, %940, !dbg !1276
  br i1 %941, label %942, label %944, !dbg !1276

; <label>:942:                                    ; preds = %933
  %943 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !1277
  store i32 34, i32* %943, align 8, !dbg !1278, !tbaa !803
  br label %944, !dbg !1279

; <label>:944:                                    ; preds = %916, %920, %582, %462, %928, %942, %933
  %945 = phi i64 [ %929, %928 ], [ %937, %942 ], [ %937, %933 ], [ 9218868437227405312, %462 ], [ 0, %582 ], [ %899, %920 ], [ %899, %916 ], !dbg !1280
  %946 = phi %struct._Bigint* [ %706, %928 ], [ %706, %942 ], [ %706, %933 ], [ %463, %462 ], [ %706, %582 ], [ %706, %920 ], [ %706, %916 ], !dbg !1281
  %947 = phi %struct._Bigint* [ %712, %928 ], [ %712, %942 ], [ %712, %933 ], [ %464, %462 ], [ %712, %582 ], [ %712, %920 ], [ %712, %916 ], !dbg !1282
  %948 = phi %struct._Bigint* [ %930, %928 ], [ %935, %942 ], [ %935, %933 ], [ %465, %462 ], [ %583, %582 ], [ %714, %920 ], [ %714, %916 ], !dbg !1283
  %949 = load %struct._Bigint*, %struct._Bigint** %8, align 8, !dbg !1284, !tbaa !416
  call void @_Bfree(%struct._reent* %0, %struct._Bigint* %949) #5, !dbg !1285
  call void @_Bfree(%struct._reent* %0, %struct._Bigint* %946) #5, !dbg !1286
  call void @_Bfree(%struct._reent* %0, %struct._Bigint* %947) #5, !dbg !1287
  call void @_Bfree(%struct._reent* %0, %struct._Bigint* nonnull %590) #5, !dbg !1288
  call void @_Bfree(%struct._reent* %0, %struct._Bigint* %948) #5, !dbg !1289
  br label %950, !dbg !1289

; <label>:950:                                    ; preds = %87, %368, %372, %362, %357, %585, %467, %83, %406, %348, %385, %376, %944, %435, %422, %412
  %951 = phi i64 [ 0, %385 ], [ %384, %376 ], [ 0, %348 ], [ %405, %406 ], [ %417, %412 ], [ 9218868437227405312, %467 ], [ %945, %944 ], [ 0, %585 ], [ %432, %422 ], [ %441, %435 ], [ %84, %83 ], [ 9218868437227405312, %357 ], [ 9218868437227405312, %362 ], [ -2251799813685248, %372 ], [ -2251799813685248, %368 ], [ 0, %87 ], !dbg !525
  %952 = phi i32 [ 0, %385 ], [ %35, %376 ], [ %35, %348 ], [ %35, %406 ], [ %35, %412 ], [ %35, %467 ], [ %35, %944 ], [ %35, %585 ], [ %35, %422 ], [ %35, %435 ], [ %85, %83 ], [ %35, %357 ], [ %35, %362 ], [ %35, %372 ], [ %35, %368 ], [ %35, %87 ], !dbg !525
  %953 = icmp eq i8** %2, null, !dbg !1290
  br i1 %953, label %958, label %954, !dbg !1292

; <label>:954:                                    ; preds = %950
  %955 = bitcast i8** %7 to i64*, !dbg !1293
  %956 = load i64, i64* %955, align 8, !dbg !1293, !tbaa !416
  %957 = bitcast i8** %2 to i64*, !dbg !1294
  store i64 %956, i64* %957, align 8, !dbg !1294, !tbaa !416
  br label %958, !dbg !1295

; <label>:958:                                    ; preds = %954, %950
  %959 = icmp eq i32 %952, 0, !dbg !1296
  %960 = bitcast i64 %951 to double, !dbg !525
  %961 = fsub double -0.000000e+00, %960, !dbg !1297
  %962 = select i1 %959, double %960, double %961, !dbg !1296
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #4, !dbg !1298
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #4, !dbg !1298
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #4, !dbg !1298
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #4, !dbg !1298
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1298
  ret double %962, !dbg !1298

; <label>:963:                                    ; preds = %204
  %964 = icmp slt i32 %193, 16, !dbg !607
  %965 = mul i32 %206, 10, !dbg !609
  %966 = select i1 %964, i32 %965, i32 %206, !dbg !610
  br label %969, !dbg !610

; <label>:967:                                    ; preds = %204
  %968 = mul i32 %205, 10, !dbg !604
  br label %969, !dbg !606

; <label>:969:                                    ; preds = %967, %963
  %970 = phi i32 [ %968, %967 ], [ %205, %963 ], !dbg !525
  %971 = phi i32 [ %206, %967 ], [ %966, %963 ], !dbg !525
  %972 = add nsw i32 %193, 2, !dbg !581
  %973 = icmp slt i32 %193, 8, !dbg !581
  %974 = add i32 %197, -2, !dbg !602
  %975 = icmp eq i32 %974, 0, !dbg !602
  br i1 %975, label %209, label %191, !dbg !602, !llvm.loop !1299
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
define dso_local double @_strtod_r(%struct._reent*, i8* noalias, i8** noalias) local_unnamed_addr #0 !dbg !1301 {
  %4 = tail call %struct._reent* @__getreent() #5, !dbg !1309
  %5 = getelementptr inbounds %struct._reent, %struct._reent* %4, i64 0, i32 7, !dbg !1315
  %6 = load %struct.__locale_t*, %struct.__locale_t** %5, align 8, !dbg !1315, !tbaa !1316
  %7 = icmp eq %struct.__locale_t* %6, null, !dbg !1309
  br i1 %7, label %8, label %9, !dbg !1309

; <label>:8:                                      ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1317
  br label %9, !dbg !1309

; <label>:9:                                      ; preds = %3, %8
  %10 = phi %struct.__locale_t* [ @__global_locale, %8 ], [ %6, %3 ], !dbg !1309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1320
  %11 = tail call double @_strtod_l(%struct._reent* %0, i8* %1, i8** %2, %struct.__locale_t* nonnull %10) #6, !dbg !1321
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1322
  ret double %11, !dbg !1322
}

; Function Attrs: noredzone nounwind
define dso_local double @strtod_l(i8* noalias, i8** noalias, %struct.__locale_t*) local_unnamed_addr #0 !dbg !1323 {
  %4 = tail call %struct._reent* @__getreent() #5, !dbg !1333
  %5 = tail call double @_strtod_l(%struct._reent* %4, i8* %0, i8** %1, %struct.__locale_t* %2) #6, !dbg !1334
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1335
  ret double %5, !dbg !1335
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local double @strtod(i8* noalias, i8** noalias) local_unnamed_addr #0 !dbg !1336 {
  %3 = tail call %struct._reent* @__getreent() #5, !dbg !1343
  %4 = tail call %struct._reent* @__getreent() #5, !dbg !1344
  %5 = getelementptr inbounds %struct._reent, %struct._reent* %4, i64 0, i32 7, !dbg !1346
  %6 = load %struct.__locale_t*, %struct.__locale_t** %5, align 8, !dbg !1346, !tbaa !1316
  %7 = icmp eq %struct.__locale_t* %6, null, !dbg !1344
  br i1 %7, label %8, label %9, !dbg !1344

; <label>:8:                                      ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1347
  br label %9, !dbg !1344

; <label>:9:                                      ; preds = %2, %8
  %10 = phi %struct.__locale_t* [ @__global_locale, %8 ], [ %6, %2 ], !dbg !1344
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1349
  %11 = tail call double @_strtod_l(%struct._reent* %3, i8* %0, i8** %1, %struct.__locale_t* nonnull %10) #6, !dbg !1350
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1351
  ret double %11, !dbg !1351
}

; Function Attrs: noredzone nounwind
define dso_local float @strtof_l(i8* noalias, i8** noalias, %struct.__locale_t*) local_unnamed_addr #0 !dbg !1352 {
  %4 = tail call %struct._reent* @__getreent() #5, !dbg !1364
  %5 = tail call double @_strtod_l(%struct._reent* %4, i8* %0, i8** %1, %struct.__locale_t* %2) #6, !dbg !1365
  %6 = tail call i32 @__fpclassifyd(double %5) #5, !dbg !1367
  %7 = icmp eq i32 %6, 0, !dbg !1367
  br i1 %7, label %8, label %10, !dbg !1369

; <label>:8:                                      ; preds = %3
  %9 = tail call float @nanf(i8* null) #5, !dbg !1370
  br label %20, !dbg !1371

; <label>:10:                                     ; preds = %3
  %11 = fptrunc double %5 to float, !dbg !1372
  %12 = tail call i32 @__fpclassifyf(float %11) #5, !dbg !1374
  %13 = icmp eq i32 %12, 1, !dbg !1374
  br i1 %13, label %14, label %20, !dbg !1376

; <label>:14:                                     ; preds = %10
  %15 = tail call i32 @__fpclassifyd(double %5) #5, !dbg !1377
  %16 = icmp eq i32 %15, 1, !dbg !1377
  br i1 %16, label %20, label %17, !dbg !1378

; <label>:17:                                     ; preds = %14
  %18 = tail call %struct._reent* @__getreent() #5, !dbg !1379
  %19 = getelementptr inbounds %struct._reent, %struct._reent* %18, i64 0, i32 0, !dbg !1380
  store i32 34, i32* %19, align 8, !dbg !1381, !tbaa !803
  br label %20, !dbg !1379

; <label>:20:                                     ; preds = %10, %14, %17, %8
  %21 = phi float [ %9, %8 ], [ %11, %17 ], [ %11, %14 ], [ %11, %10 ], !dbg !1382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1383
  ret float %21, !dbg !1383
}

; Function Attrs: noredzone
declare dso_local i32 @__fpclassifyd(double) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local float @nanf(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @__fpclassifyf(float) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local float @strtof(i8* noalias, i8** noalias) local_unnamed_addr #0 !dbg !1384 {
  %3 = tail call %struct._reent* @__getreent() #5, !dbg !1393
  %4 = tail call %struct._reent* @__getreent() #5, !dbg !1394
  %5 = getelementptr inbounds %struct._reent, %struct._reent* %4, i64 0, i32 7, !dbg !1396
  %6 = load %struct.__locale_t*, %struct.__locale_t** %5, align 8, !dbg !1396, !tbaa !1316
  %7 = icmp eq %struct.__locale_t* %6, null, !dbg !1394
  br i1 %7, label %8, label %9, !dbg !1394

; <label>:8:                                      ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1397
  br label %9, !dbg !1394

; <label>:9:                                      ; preds = %2, %8
  %10 = phi %struct.__locale_t* [ @__global_locale, %8 ], [ %6, %2 ], !dbg !1394
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1399
  %11 = tail call double @_strtod_l(%struct._reent* %3, i8* %0, i8** %1, %struct.__locale_t* nonnull %10) #6, !dbg !1400
  %12 = tail call i32 @__fpclassifyd(double %11) #5, !dbg !1402
  %13 = icmp eq i32 %12, 0, !dbg !1402
  br i1 %13, label %14, label %16, !dbg !1404

; <label>:14:                                     ; preds = %9
  %15 = tail call float @nanf(i8* null) #5, !dbg !1405
  br label %26, !dbg !1406

; <label>:16:                                     ; preds = %9
  %17 = fptrunc double %11 to float, !dbg !1407
  %18 = tail call i32 @__fpclassifyf(float %17) #5, !dbg !1409
  %19 = icmp eq i32 %18, 1, !dbg !1409
  br i1 %19, label %20, label %26, !dbg !1411

; <label>:20:                                     ; preds = %16
  %21 = tail call i32 @__fpclassifyd(double %11) #5, !dbg !1412
  %22 = icmp eq i32 %21, 1, !dbg !1412
  br i1 %22, label %26, label %23, !dbg !1413

; <label>:23:                                     ; preds = %20
  %24 = tail call %struct._reent* @__getreent() #5, !dbg !1414
  %25 = getelementptr inbounds %struct._reent, %struct._reent* %24, i64 0, i32 0, !dbg !1415
  store i32 34, i32* %25, align 8, !dbg !1416, !tbaa !803
  br label %26, !dbg !1414

; <label>:26:                                     ; preds = %16, %20, %23, %14
  %27 = phi float [ %15, %14 ], [ %17, %23 ], [ %17, %20 ], [ %17, %16 ], !dbg !1417
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1418
  ret float %27, !dbg !1418
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
!438 = !DILocation(line: 282, column: 27, scope: !437)
!439 = !{!418, !418, i64 0}
!440 = !DILocation(line: 282, column: 20, scope: !437)
!441 = !DILocation(line: 287, column: 9, scope: !442)
!442 = distinct !DILexicalBlock(scope: !443, file: !3, line: 287, column: 8)
!443 = distinct !DILexicalBlock(scope: !437, file: !3, line: 282, column: 31)
!444 = !DILocation(line: 0, scope: !443)
!445 = !DILocation(line: 287, column: 8, scope: !442)
!446 = !DILocation(line: 287, column: 8, scope: !443)
!447 = !DILocation(line: 282, column: 16, scope: !437)
!448 = !DILocation(line: 282, column: 2, scope: !437)
!449 = distinct !{!449, !450, !451}
!450 = !DILocation(line: 282, column: 2, scope: !435)
!451 = !DILocation(line: 301, column: 3, scope: !435)
!452 = !DILocation(line: 303, column: 6, scope: !397)
!453 = !DILocation(line: 303, column: 7, scope: !397)
!454 = !DILocation(line: 280, column: 7, scope: !2)
!455 = !DILocation(line: 303, column: 9, scope: !397)
!456 = !DILocation(line: 303, column: 6, scope: !2)
!457 = !DILocation(line: 307, column: 3, scope: !395)
!458 = !DILocation(line: 308, column: 3, scope: !395)
!459 = !DILocation(line: 308, column: 11, scope: !395)
!460 = !DILocation(line: 309, column: 10, scope: !395)
!461 = !DILocation(line: 309, column: 3, scope: !395)
!462 = !DILocation(line: 307, column: 8, scope: !395)
!463 = !DILocation(line: 326, column: 16, scope: !464)
!464 = distinct !DILexicalBlock(scope: !465, file: !3, line: 315, column: 4)
!465 = distinct !DILexicalBlock(scope: !395, file: !3, line: 309, column: 16)
!466 = !DILocation(line: 260, column: 18, scope: !2)
!467 = !DILocation(line: 326, column: 4, scope: !464)
!468 = !DILocation(line: 328, column: 7, scope: !469)
!469 = distinct !DILexicalBlock(scope: !464, file: !3, line: 326, column: 80)
!470 = !DILocation(line: 329, column: 5, scope: !469)
!471 = !DILocation(line: 334, column: 9, scope: !472)
!472 = distinct !DILexicalBlock(scope: !469, file: !3, line: 334, column: 9)
!473 = !DILocation(line: 0, scope: !474)
!474 = distinct !DILexicalBlock(scope: !472, file: !3, line: 334, column: 13)
!475 = !DILocation(line: 334, column: 9, scope: !469)
!476 = !DILocation(line: 335, column: 6, scope: !474)
!477 = !DILocation(line: 336, column: 16, scope: !474)
!478 = !DILocation(line: 336, column: 6, scope: !474)
!479 = !DILocation(line: 337, column: 6, scope: !474)
!480 = !DILocalVariable(name: "L", arg: 1, scope: !481, file: !3, line: 215, type: !484)
!481 = distinct !DISubprogram(name: "ULtod", scope: !3, file: !3, line: 215, type: !482, isLocal: true, isDefinition: true, scopeLine: 220, flags: DIFlagPrototyped, isOptimized: true, unit: !292, retainedNodes: !485)
!482 = !DISubroutineType(types: !483)
!483 = !{null, !484, !484, !314, !12}
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!485 = !{!480, !486, !487, !488}
!486 = !DILocalVariable(name: "bits", arg: 2, scope: !481, file: !3, line: 215, type: !484)
!487 = !DILocalVariable(name: "exp", arg: 3, scope: !481, file: !3, line: 215, type: !314)
!488 = !DILocalVariable(name: "k", arg: 4, scope: !481, file: !3, line: 215, type: !12)
!489 = !DILocation(line: 215, column: 1, scope: !481, inlinedAt: !490)
!490 = distinct !DILocation(line: 338, column: 5, scope: !469)
!491 = !DILocation(line: 221, column: 2, scope: !481, inlinedAt: !490)
!492 = !DILocation(line: 228, column: 11, scope: !493, inlinedAt: !490)
!493 = distinct !DILexicalBlock(scope: !481, file: !3, line: 221, column: 29)
!494 = !{!495, !495, i64 0}
!495 = !{!"int", !418, i64 0}
!496 = !DILocation(line: 228, column: 9, scope: !493, inlinedAt: !490)
!497 = !DILocation(line: 229, column: 11, scope: !493, inlinedAt: !490)
!498 = !DILocation(line: 229, column: 9, scope: !493, inlinedAt: !490)
!499 = !DILocation(line: 230, column: 3, scope: !493, inlinedAt: !490)
!500 = !DILocation(line: 338, column: 23, scope: !469)
!501 = !DILocation(line: 234, column: 11, scope: !493, inlinedAt: !490)
!502 = !DILocation(line: 234, column: 9, scope: !493, inlinedAt: !490)
!503 = !DILocation(line: 235, column: 12, scope: !493, inlinedAt: !490)
!504 = !DILocation(line: 235, column: 20, scope: !493, inlinedAt: !490)
!505 = !DILocation(line: 235, column: 55, scope: !493, inlinedAt: !490)
!506 = !DILocation(line: 235, column: 33, scope: !493, inlinedAt: !490)
!507 = !DILocation(line: 235, column: 9, scope: !493, inlinedAt: !490)
!508 = !DILocation(line: 236, column: 3, scope: !493, inlinedAt: !490)
!509 = !DILocation(line: 241, column: 3, scope: !493, inlinedAt: !490)
!510 = !DILocation(line: 246, column: 4, scope: !493, inlinedAt: !490)
!511 = !DILocation(line: 0, scope: !469)
!512 = !DILocation(line: 247, column: 8, scope: !513, inlinedAt: !490)
!513 = distinct !DILexicalBlock(scope: !481, file: !3, line: 247, column: 6)
!514 = !DILocation(line: 247, column: 6, scope: !481, inlinedAt: !490)
!515 = !DILocation(line: 249, column: 1, scope: !481, inlinedAt: !490)
!516 = !DILocation(line: 339, column: 6, scope: !469)
!517 = !DILocation(line: 342, column: 3, scope: !396)
!518 = !DILocation(line: 345, column: 10, scope: !396)
!519 = !DILocation(line: 345, column: 9, scope: !396)
!520 = !DILocation(line: 345, column: 3, scope: !396)
!521 = !DILocation(line: 351, column: 24, scope: !522)
!522 = distinct !DILexicalBlock(scope: !523, file: !3, line: 351, column: 2)
!523 = distinct !DILexicalBlock(scope: !2, file: !3, line: 351, column: 2)
!524 = !DILocation(line: 349, column: 7, scope: !2)
!525 = !DILocation(line: 0, scope: !2)
!526 = !DILocation(line: 261, column: 19, scope: !2)
!527 = !DILocation(line: 265, column: 13, scope: !2)
!528 = !DILocation(line: 265, column: 10, scope: !2)
!529 = !DILocation(line: 260, column: 36, scope: !2)
!530 = !DILocation(line: 260, column: 27, scope: !2)
!531 = !DILocation(line: 259, column: 44, scope: !2)
!532 = !DILocation(line: 351, column: 35, scope: !522)
!533 = !DILocation(line: 351, column: 2, scope: !523)
!534 = !DILocation(line: 352, column: 10, scope: !535)
!535 = distinct !DILexicalBlock(scope: !522, file: !3, line: 352, column: 7)
!536 = !DILocation(line: 352, column: 7, scope: !522)
!537 = !DILocation(line: 353, column: 10, scope: !535)
!538 = !DILocation(line: 353, column: 13, scope: !535)
!539 = !DILocation(line: 353, column: 17, scope: !535)
!540 = !DILocation(line: 353, column: 4, scope: !535)
!541 = !DILocation(line: 355, column: 10, scope: !535)
!542 = !DILocation(line: 355, column: 13, scope: !535)
!543 = !DILocation(line: 355, column: 17, scope: !535)
!544 = !DILocation(line: 0, scope: !535)
!545 = !DILocation(line: 351, column: 50, scope: !522)
!546 = !DILocation(line: 351, column: 55, scope: !522)
!547 = distinct !{!547, !533, !548}
!548 = !DILocation(line: 355, column: 19, scope: !523)
!549 = !DILocation(line: 357, column: 25, scope: !550)
!550 = distinct !DILexicalBlock(scope: !2, file: !3, line: 357, column: 6)
!551 = !DILocation(line: 0, scope: !522)
!552 = !DILocation(line: 350, column: 8, scope: !2)
!553 = !DILocation(line: 351, column: 25, scope: !522)
!554 = !DILocation(line: 260, column: 31, scope: !2)
!555 = !DILocation(line: 357, column: 40, scope: !550)
!556 = !DILocation(line: 357, column: 6, scope: !550)
!557 = !DILocation(line: 357, column: 49, scope: !550)
!558 = !DILocation(line: 357, column: 6, scope: !2)
!559 = !DILocation(line: 360, column: 11, scope: !560)
!560 = distinct !DILexicalBlock(scope: !550, file: !3, line: 358, column: 3)
!561 = !DILocation(line: 360, column: 7, scope: !560)
!562 = !DILocation(line: 361, column: 8, scope: !563)
!563 = distinct !DILexicalBlock(scope: !560, file: !3, line: 361, column: 7)
!564 = !DILocation(line: 361, column: 7, scope: !560)
!565 = !DILocation(line: 362, column: 12, scope: !566)
!566 = distinct !DILexicalBlock(scope: !567, file: !3, line: 362, column: 4)
!567 = distinct !DILexicalBlock(scope: !568, file: !3, line: 362, column: 4)
!568 = distinct !DILexicalBlock(scope: !563, file: !3, line: 361, column: 12)
!569 = !DILocation(line: 362, column: 4, scope: !567)
!570 = !DILocation(line: 362, column: 25, scope: !566)
!571 = !DILocation(line: 363, column: 7, scope: !566)
!572 = !DILocation(line: 362, column: 24, scope: !566)
!573 = distinct !{!573, !569, !574}
!574 = !DILocation(line: 363, column: 7, scope: !567)
!575 = !DILocation(line: 0, scope: !566)
!576 = !DILocation(line: 364, column: 16, scope: !577)
!577 = distinct !DILexicalBlock(scope: !568, file: !3, line: 364, column: 8)
!578 = !DILocation(line: 0, scope: !579)
!579 = distinct !DILexicalBlock(scope: !580, file: !3, line: 372, column: 3)
!580 = distinct !DILexicalBlock(scope: !560, file: !3, line: 372, column: 3)
!581 = !DILocation(line: 0, scope: !582)
!582 = distinct !DILexicalBlock(scope: !583, file: !3, line: 382, column: 9)
!583 = distinct !DILexicalBlock(scope: !584, file: !3, line: 375, column: 18)
!584 = distinct !DILexicalBlock(scope: !585, file: !3, line: 375, column: 8)
!585 = distinct !DILexicalBlock(scope: !579, file: !3, line: 372, column: 41)
!586 = !DILocation(line: 0, scope: !583)
!587 = !DILocation(line: 349, column: 5, scope: !2)
!588 = !DILocation(line: 372, column: 18, scope: !579)
!589 = !DILocation(line: 372, column: 3, scope: !580)
!590 = !DILocation(line: 360, column: 5, scope: !560)
!591 = !DILocation(line: 351, column: 9, scope: !523)
!592 = !DILocation(line: 0, scope: !593)
!593 = distinct !DILexicalBlock(scope: !577, file: !3, line: 364, column: 29)
!594 = !DILocation(line: 350, column: 4, scope: !2)
!595 = !DILocation(line: 374, column: 6, scope: !585)
!596 = !DILocation(line: 375, column: 10, scope: !584)
!597 = !DILocation(line: 375, column: 8, scope: !585)
!598 = !DILocation(line: 376, column: 8, scope: !583)
!599 = !DILocation(line: 377, column: 18, scope: !600)
!600 = distinct !DILexicalBlock(scope: !601, file: !3, line: 377, column: 5)
!601 = distinct !DILexicalBlock(scope: !583, file: !3, line: 377, column: 5)
!602 = !DILocation(line: 377, column: 5, scope: !601)
!603 = !DILocation(line: 378, column: 10, scope: !600)
!604 = !DILocation(line: 379, column: 9, scope: !605)
!605 = distinct !DILexicalBlock(scope: !600, file: !3, line: 378, column: 10)
!606 = !DILocation(line: 379, column: 7, scope: !605)
!607 = !DILocation(line: 380, column: 18, scope: !608)
!608 = distinct !DILexicalBlock(scope: !605, file: !3, line: 380, column: 15)
!609 = !DILocation(line: 381, column: 9, scope: !608)
!610 = !DILocation(line: 380, column: 15, scope: !605)
!611 = !DILocation(line: 382, column: 9, scope: !583)
!612 = !DILocation(line: 383, column: 12, scope: !582)
!613 = !DILocation(line: 383, column: 15, scope: !582)
!614 = !DILocation(line: 383, column: 6, scope: !582)
!615 = !DILocation(line: 384, column: 17, scope: !616)
!616 = distinct !DILexicalBlock(scope: !582, file: !3, line: 384, column: 14)
!617 = !DILocation(line: 384, column: 14, scope: !582)
!618 = !DILocation(line: 385, column: 12, scope: !616)
!619 = !DILocation(line: 385, column: 15, scope: !616)
!620 = !DILocation(line: 385, column: 6, scope: !616)
!621 = !DILocation(line: 0, scope: !523)
!622 = !DILocation(line: 0, scope: !585)
!623 = !DILocation(line: 372, column: 36, scope: !579)
!624 = !DILocation(line: 372, column: 35, scope: !579)
!625 = !DILocation(line: 372, column: 3, scope: !579)
!626 = distinct !{!626, !589, !627}
!627 = !DILocation(line: 388, column: 4, scope: !580)
!628 = !DILocation(line: 351, column: 14, scope: !523)
!629 = !DILocation(line: 280, column: 18, scope: !2)
!630 = !DILocation(line: 260, column: 4, scope: !2)
!631 = !DILocation(line: 392, column: 15, scope: !632)
!632 = distinct !DILexicalBlock(scope: !2, file: !3, line: 392, column: 6)
!633 = !DILocation(line: 393, column: 11, scope: !634)
!634 = distinct !DILexicalBlock(scope: !635, file: !3, line: 393, column: 7)
!635 = distinct !DILexicalBlock(scope: !632, file: !3, line: 392, column: 28)
!636 = !DILocation(line: 260, column: 11, scope: !2)
!637 = !DILocation(line: 398, column: 15, scope: !635)
!638 = !DILocation(line: 398, column: 14, scope: !635)
!639 = !DILocation(line: 398, column: 3, scope: !635)
!640 = !DILocation(line: 400, column: 5, scope: !641)
!641 = distinct !DILexicalBlock(scope: !635, file: !3, line: 398, column: 20)
!642 = !DILocation(line: 0, scope: !641)
!643 = !DILocation(line: 402, column: 10, scope: !641)
!644 = !DILocation(line: 402, column: 9, scope: !641)
!645 = !DILocation(line: 403, column: 4, scope: !641)
!646 = !DILocation(line: 397, column: 9, scope: !635)
!647 = !DILocation(line: 404, column: 16, scope: !648)
!648 = distinct !DILexicalBlock(scope: !635, file: !3, line: 404, column: 7)
!649 = !DILocation(line: 405, column: 12, scope: !650)
!650 = distinct !DILexicalBlock(scope: !648, file: !3, line: 404, column: 29)
!651 = !DILocation(line: 405, column: 4, scope: !650)
!652 = !DILocation(line: 406, column: 10, scope: !650)
!653 = !DILocation(line: 406, column: 9, scope: !650)
!654 = distinct !{!654, !651, !655}
!655 = !DILocation(line: 406, column: 12, scope: !650)
!656 = !DILocation(line: 0, scope: !650)
!657 = !DILocation(line: 407, column: 16, scope: !658)
!658 = distinct !DILexicalBlock(scope: !650, file: !3, line: 407, column: 8)
!659 = !DILocation(line: 264, column: 7, scope: !2)
!660 = !DILocation(line: 261, column: 24, scope: !2)
!661 = !DILocation(line: 0, scope: !662)
!662 = distinct !DILexicalBlock(scope: !658, file: !3, line: 407, column: 29)
!663 = !DILocation(line: 410, column: 17, scope: !662)
!664 = !DILocation(line: 410, column: 16, scope: !662)
!665 = !DILocation(line: 410, column: 29, scope: !662)
!666 = !DILocation(line: 410, column: 5, scope: !662)
!667 = !DILocation(line: 411, column: 12, scope: !662)
!668 = !DILocation(line: 411, column: 15, scope: !662)
!669 = distinct !{!669, !666, !670}
!670 = !DILocation(line: 411, column: 21, scope: !662)
!671 = !DILocation(line: 412, column: 11, scope: !672)
!672 = distinct !DILexicalBlock(scope: !662, file: !3, line: 412, column: 9)
!673 = !DILocation(line: 412, column: 16, scope: !672)
!674 = !DILocation(line: 412, column: 25, scope: !672)
!675 = !DILocation(line: 412, column: 20, scope: !672)
!676 = !DILocation(line: 416, column: 6, scope: !672)
!677 = !DILocation(line: 419, column: 9, scope: !678)
!678 = distinct !DILexicalBlock(scope: !662, file: !3, line: 419, column: 9)
!679 = !DILocation(line: 420, column: 10, scope: !678)
!680 = !DILocation(line: 419, column: 9, scope: !662)
!681 = !DILocation(line: 426, column: 6, scope: !648)
!682 = !DILocation(line: 0, scope: !560)
!683 = !DILocation(line: 428, column: 7, scope: !403)
!684 = !DILocation(line: 428, column: 6, scope: !2)
!685 = !DILocation(line: 429, column: 11, scope: !401)
!686 = !DILocation(line: 432, column: 12, scope: !400)
!687 = !DILocation(line: 435, column: 9, scope: !688)
!688 = distinct !DILexicalBlock(scope: !400, file: !3, line: 435, column: 8)
!689 = !DILocation(line: 435, column: 8, scope: !400)
!690 = !DILocation(line: 436, column: 5, scope: !688)
!691 = !DILocation(line: 439, column: 9, scope: !692)
!692 = distinct !DILexicalBlock(scope: !693, file: !3, line: 439, column: 9)
!693 = distinct !DILexicalBlock(scope: !688, file: !3, line: 436, column: 15)
!694 = !DILocation(line: 439, column: 9, scope: !693)
!695 = !DILocation(line: 440, column: 6, scope: !696)
!696 = distinct !DILexicalBlock(scope: !692, file: !3, line: 439, column: 25)
!697 = !DILocation(line: 441, column: 11, scope: !698)
!698 = distinct !DILexicalBlock(scope: !696, file: !3, line: 441, column: 10)
!699 = !DILocation(line: 441, column: 10, scope: !696)
!700 = !DILocation(line: 442, column: 7, scope: !698)
!701 = !DILocation(line: 452, column: 9, scope: !702)
!702 = distinct !DILexicalBlock(scope: !693, file: !3, line: 452, column: 9)
!703 = !DILocation(line: 452, column: 9, scope: !693)
!704 = !DILocation(line: 454, column: 11, scope: !705)
!705 = distinct !DILexicalBlock(scope: !706, file: !3, line: 454, column: 10)
!706 = distinct !DILexicalBlock(scope: !702, file: !3, line: 452, column: 26)
!707 = !DILocation(line: 454, column: 10, scope: !705)
!708 = !DILocation(line: 454, column: 13, scope: !705)
!709 = !DILocation(line: 455, column: 7, scope: !705)
!710 = !DILocation(line: 455, column: 30, scope: !705)
!711 = !DILocation(line: 455, column: 10, scope: !705)
!712 = !DILocation(line: 456, column: 8, scope: !705)
!713 = !DILocation(line: 454, column: 10, scope: !706)
!714 = !DILocation(line: 457, column: 33, scope: !715)
!715 = distinct !DILexicalBlock(scope: !705, file: !3, line: 456, column: 27)
!716 = !DILocation(line: 457, column: 31, scope: !715)
!717 = !DILocation(line: 457, column: 18, scope: !715)
!718 = !DILocation(line: 459, column: 20, scope: !715)
!719 = !DILocation(line: 459, column: 18, scope: !715)
!720 = !DILocation(line: 461, column: 7, scope: !715)
!721 = !DILocation(line: 476, column: 6, scope: !400)
!722 = !DILocation(line: 478, column: 4, scope: !400)
!723 = !DILocation(line: 481, column: 9, scope: !2)
!724 = !DILocation(line: 260, column: 7, scope: !2)
!725 = !DILocation(line: 488, column: 7, scope: !726)
!726 = distinct !DILexicalBlock(scope: !2, file: !3, line: 488, column: 6)
!727 = !DILocation(line: 488, column: 6, scope: !2)
!728 = !DILocation(line: 490, column: 9, scope: !2)
!729 = !DILocation(line: 490, column: 6, scope: !2)
!730 = !DILocation(line: 260, column: 24, scope: !2)
!731 = !DILocation(line: 491, column: 13, scope: !2)
!732 = !DILocation(line: 492, column: 8, scope: !733)
!733 = distinct !DILexicalBlock(scope: !2, file: !3, line: 492, column: 6)
!734 = !DILocation(line: 492, column: 6, scope: !2)
!735 = !DILocation(line: 497, column: 21, scope: !736)
!736 = distinct !DILexicalBlock(scope: !733, file: !3, line: 492, column: 13)
!737 = !DILocation(line: 497, column: 14, scope: !736)
!738 = !{!739, !739, i64 0}
!739 = !{!"double", !418, i64 0}
!740 = !DILocation(line: 497, column: 26, scope: !736)
!741 = !DILocation(line: 497, column: 39, scope: !736)
!742 = !DILocation(line: 497, column: 37, scope: !736)
!743 = !DILocation(line: 498, column: 3, scope: !736)
!744 = !DILocation(line: 266, column: 41, scope: !2)
!745 = !DILocation(line: 500, column: 6, scope: !2)
!746 = !DILocation(line: 507, column: 8, scope: !747)
!747 = distinct !DILexicalBlock(scope: !748, file: !3, line: 507, column: 7)
!748 = distinct !DILexicalBlock(scope: !749, file: !3, line: 506, column: 6)
!749 = distinct !DILexicalBlock(scope: !2, file: !3, line: 500, column: 6)
!750 = !DILocation(line: 507, column: 7, scope: !748)
!751 = !DILocation(line: 509, column: 9, scope: !752)
!752 = distinct !DILexicalBlock(scope: !748, file: !3, line: 509, column: 7)
!753 = !DILocation(line: 509, column: 7, scope: !748)
!754 = !DILocation(line: 510, column: 10, scope: !755)
!755 = distinct !DILexicalBlock(scope: !756, file: !3, line: 510, column: 8)
!756 = distinct !DILexicalBlock(scope: !752, file: !3, line: 509, column: 14)
!757 = !DILocation(line: 510, column: 8, scope: !756)
!758 = !DILocation(line: 521, column: 16, scope: !759)
!759 = distinct !DILexicalBlock(scope: !755, file: !3, line: 510, column: 23)
!760 = !DILocation(line: 522, column: 5, scope: !759)
!761 = !DILocation(line: 525, column: 16, scope: !756)
!762 = !DILocation(line: 526, column: 22, scope: !763)
!763 = distinct !DILexicalBlock(scope: !756, file: !3, line: 526, column: 8)
!764 = !DILocation(line: 526, column: 10, scope: !763)
!765 = !DILocation(line: 526, column: 8, scope: !756)
!766 = !DILocation(line: 537, column: 7, scope: !767)
!767 = distinct !DILexicalBlock(scope: !763, file: !3, line: 526, column: 27)
!768 = !DILocation(line: 538, column: 17, scope: !767)
!769 = !DILocation(line: 538, column: 14, scope: !767)
!770 = !DILocation(line: 551, column: 16, scope: !767)
!771 = !DILocation(line: 553, column: 5, scope: !767)
!772 = !DILocation(line: 557, column: 14, scope: !773)
!773 = distinct !DILexicalBlock(scope: !752, file: !3, line: 557, column: 12)
!774 = !DILocation(line: 557, column: 12, scope: !752)
!775 = !DILocation(line: 565, column: 15, scope: !776)
!776 = distinct !DILexicalBlock(scope: !773, file: !3, line: 557, column: 28)
!777 = !DILocation(line: 566, column: 4, scope: !776)
!778 = !DILocation(line: 570, column: 11, scope: !2)
!779 = !DILocation(line: 570, column: 5, scope: !2)
!780 = !DILocation(line: 257, column: 6, scope: !2)
!781 = !DILocation(line: 594, column: 9, scope: !782)
!782 = distinct !DILexicalBlock(scope: !2, file: !3, line: 594, column: 6)
!783 = !DILocation(line: 594, column: 6, scope: !2)
!784 = !DILocation(line: 595, column: 16, scope: !785)
!785 = distinct !DILexicalBlock(scope: !786, file: !3, line: 595, column: 8)
!786 = distinct !DILexicalBlock(scope: !782, file: !3, line: 594, column: 14)
!787 = !DILocation(line: 595, column: 22, scope: !785)
!788 = !DILocation(line: 595, column: 8, scope: !786)
!789 = !DILocation(line: 596, column: 16, scope: !785)
!790 = !DILocation(line: 596, column: 13, scope: !785)
!791 = !DILocation(line: 596, column: 4, scope: !785)
!792 = !DILocation(line: 0, scope: !785)
!793 = !DILocation(line: 597, column: 10, scope: !794)
!794 = distinct !DILexicalBlock(scope: !786, file: !3, line: 597, column: 7)
!795 = !DILocation(line: 597, column: 7, scope: !786)
!796 = !DILocation(line: 598, column: 11, scope: !797)
!797 = distinct !DILexicalBlock(scope: !798, file: !3, line: 598, column: 8)
!798 = distinct !DILexicalBlock(scope: !794, file: !3, line: 597, column: 18)
!799 = !DILocation(line: 598, column: 8, scope: !798)
!800 = !DILocation(line: 601, column: 10, scope: !801)
!801 = distinct !DILexicalBlock(scope: !797, file: !3, line: 598, column: 29)
!802 = !DILocation(line: 601, column: 17, scope: !801)
!803 = !{!804, !495, i64 0}
!804 = !{!"_reent", !495, i64 0, !417, i64 8, !417, i64 16, !417, i64 24, !495, i64 32, !418, i64 36, !495, i64 64, !417, i64 72, !495, i64 80, !417, i64 88, !417, i64 96, !495, i64 104, !417, i64 112, !417, i64 120, !495, i64 128, !417, i64 136, !418, i64 144, !417, i64 504, !805, i64 512, !417, i64 1304, !807, i64 1312, !418, i64 1336}
!805 = !{!"_atexit", !417, i64 0, !495, i64 8, !418, i64 16, !806, i64 272}
!806 = !{!"_on_exit_args", !418, i64 0, !418, i64 256, !495, i64 512, !495, i64 516}
!807 = !{!"_glue", !417, i64 0, !495, i64 8, !417, i64 16}
!808 = !DILocation(line: 637, column: 9, scope: !801)
!809 = !DILocation(line: 260, column: 21, scope: !2)
!810 = !DILocation(line: 642, column: 18, scope: !811)
!811 = distinct !DILexicalBlock(scope: !812, file: !3, line: 642, column: 4)
!812 = distinct !DILexicalBlock(scope: !798, file: !3, line: 642, column: 4)
!813 = !DILocation(line: 642, column: 4, scope: !812)
!814 = !DILocation(line: 643, column: 12, scope: !815)
!815 = distinct !DILexicalBlock(scope: !811, file: !3, line: 643, column: 9)
!816 = !DILocation(line: 643, column: 9, scope: !811)
!817 = !DILocation(line: 644, column: 18, scope: !815)
!818 = !DILocation(line: 644, column: 15, scope: !815)
!819 = !DILocation(line: 644, column: 6, scope: !815)
!820 = !DILocation(line: 0, scope: !815)
!821 = !DILocation(line: 642, column: 24, scope: !811)
!822 = distinct !{!822, !813, !823}
!823 = !DILocation(line: 644, column: 27, scope: !812)
!824 = !DILocation(line: 497, column: 12, scope: !736)
!825 = !DILocation(line: 0, scope: !811)
!826 = !DILocation(line: 646, column: 15, scope: !798)
!827 = !DILocation(line: 647, column: 16, scope: !798)
!828 = !DILocation(line: 647, column: 13, scope: !798)
!829 = !DILocation(line: 648, column: 13, scope: !830)
!830 = distinct !DILexicalBlock(scope: !798, file: !3, line: 648, column: 8)
!831 = !DILocation(line: 648, column: 24, scope: !830)
!832 = !DILocation(line: 649, column: 5, scope: !830)
!833 = !DILocation(line: 648, column: 8, scope: !798)
!834 = !DILocation(line: 651, column: 10, scope: !835)
!835 = distinct !DILexicalBlock(scope: !798, file: !3, line: 651, column: 8)
!836 = !DILocation(line: 660, column: 16, scope: !835)
!837 = !DILocation(line: 651, column: 8, scope: !798)
!838 = !DILocation(line: 663, column: 14, scope: !839)
!839 = distinct !DILexicalBlock(scope: !782, file: !3, line: 663, column: 11)
!840 = !DILocation(line: 663, column: 11, scope: !782)
!841 = !DILocation(line: 664, column: 8, scope: !842)
!842 = distinct !DILexicalBlock(scope: !839, file: !3, line: 663, column: 19)
!843 = !DILocation(line: 665, column: 16, scope: !844)
!844 = distinct !DILexicalBlock(scope: !842, file: !3, line: 665, column: 8)
!845 = !DILocation(line: 665, column: 22, scope: !844)
!846 = !DILocation(line: 665, column: 8, scope: !842)
!847 = !DILocation(line: 666, column: 16, scope: !844)
!848 = !DILocation(line: 666, column: 13, scope: !844)
!849 = !DILocation(line: 666, column: 4, scope: !844)
!850 = !DILocation(line: 0, scope: !844)
!851 = !DILocation(line: 667, column: 10, scope: !852)
!852 = distinct !DILexicalBlock(scope: !842, file: !3, line: 667, column: 7)
!853 = !DILocation(line: 667, column: 7, scope: !842)
!854 = !DILocation(line: 668, column: 11, scope: !855)
!855 = distinct !DILexicalBlock(scope: !856, file: !3, line: 668, column: 8)
!856 = distinct !DILexicalBlock(scope: !852, file: !3, line: 667, column: 17)
!857 = !DILocation(line: 668, column: 8, scope: !856)
!858 = !DILocation(line: 671, column: 11, scope: !859)
!859 = distinct !DILexicalBlock(scope: !856, file: !3, line: 671, column: 8)
!860 = !DILocation(line: 671, column: 8, scope: !856)
!861 = !DILocation(line: 673, column: 18, scope: !862)
!862 = distinct !DILexicalBlock(scope: !863, file: !3, line: 673, column: 4)
!863 = distinct !DILexicalBlock(scope: !856, file: !3, line: 673, column: 4)
!864 = !DILocation(line: 673, column: 4, scope: !863)
!865 = !DILocation(line: 674, column: 12, scope: !866)
!866 = distinct !DILexicalBlock(scope: !862, file: !3, line: 674, column: 9)
!867 = !DILocation(line: 674, column: 9, scope: !862)
!868 = !DILocation(line: 675, column: 18, scope: !866)
!869 = !DILocation(line: 675, column: 15, scope: !866)
!870 = !DILocation(line: 675, column: 6, scope: !866)
!871 = !DILocation(line: 0, scope: !866)
!872 = !DILocation(line: 673, column: 24, scope: !862)
!873 = distinct !{!873, !864, !874}
!874 = !DILocation(line: 675, column: 28, scope: !863)
!875 = !DILocation(line: 676, column: 14, scope: !876)
!876 = distinct !DILexicalBlock(scope: !856, file: !3, line: 676, column: 8)
!877 = !DILocation(line: 676, column: 34, scope: !876)
!878 = !DILocation(line: 677, column: 7, scope: !876)
!879 = !DILocation(line: 676, column: 30, scope: !876)
!880 = !DILocation(line: 677, column: 22, scope: !876)
!881 = !DILocation(line: 676, column: 8, scope: !856)
!882 = !DILocation(line: 679, column: 11, scope: !883)
!883 = distinct !DILexicalBlock(scope: !884, file: !3, line: 679, column: 9)
!884 = distinct !DILexicalBlock(scope: !876, file: !3, line: 677, column: 27)
!885 = !DILocation(line: 679, column: 9, scope: !884)
!886 = !DILocation(line: 683, column: 12, scope: !887)
!887 = distinct !DILexicalBlock(scope: !888, file: !3, line: 683, column: 10)
!888 = distinct !DILexicalBlock(scope: !883, file: !3, line: 679, column: 18)
!889 = !DILocation(line: 683, column: 10, scope: !888)
!890 = !DILocation(line: 686, column: 37, scope: !887)
!891 = !DILocation(line: 686, column: 32, scope: !887)
!892 = !DILocation(line: 686, column: 18, scope: !887)
!893 = !DILocation(line: 690, column: 31, scope: !883)
!894 = !DILocation(line: 690, column: 17, scope: !883)
!895 = !DILocation(line: 0, scope: !736)
!896 = !DILocation(line: 704, column: 10, scope: !897)
!897 = distinct !DILexicalBlock(scope: !856, file: !3, line: 704, column: 9)
!898 = !DILocation(line: 704, column: 9, scope: !856)
!899 = !DILocation(line: 708, column: 11, scope: !900)
!900 = distinct !DILexicalBlock(scope: !897, file: !3, line: 704, column: 20)
!901 = !DILocation(line: 708, column: 18, scope: !900)
!902 = !DILocation(line: 710, column: 10, scope: !900)
!903 = !DILocation(line: 733, column: 8, scope: !2)
!904 = !DILocation(line: 734, column: 10, scope: !905)
!905 = distinct !DILexicalBlock(scope: !2, file: !3, line: 734, column: 6)
!906 = !DILocation(line: 734, column: 6, scope: !2)
!907 = !DILocation(line: 263, column: 15, scope: !2)
!908 = !DILocation(line: 738, column: 24, scope: !909)
!909 = distinct !DILexicalBlock(scope: !910, file: !3, line: 737, column: 10)
!910 = distinct !DILexicalBlock(scope: !911, file: !3, line: 737, column: 2)
!911 = distinct !DILexicalBlock(scope: !2, file: !3, line: 737, column: 2)
!912 = !{!913, !495, i64 8}
!913 = !{!"_Bigint", !417, i64 0, !495, i64 8, !495, i64 12, !495, i64 16, !495, i64 20, !418, i64 24}
!914 = !DILocation(line: 738, column: 8, scope: !909)
!915 = !DILocation(line: 739, column: 10, scope: !916)
!916 = distinct !DILexicalBlock(scope: !909, file: !3, line: 739, column: 7)
!917 = !DILocation(line: 739, column: 7, scope: !909)
!918 = !DILocation(line: 741, column: 3, scope: !909)
!919 = !{!913, !495, i64 20}
!920 = !DILocation(line: 742, column: 16, scope: !909)
!921 = !DILocation(line: 259, column: 16, scope: !2)
!922 = !DILocation(line: 259, column: 31, scope: !2)
!923 = !DILocation(line: 742, column: 8, scope: !909)
!924 = !DILocation(line: 742, column: 6, scope: !909)
!925 = !DILocation(line: 743, column: 10, scope: !926)
!926 = distinct !DILexicalBlock(scope: !909, file: !3, line: 743, column: 7)
!927 = !DILocation(line: 743, column: 7, scope: !909)
!928 = distinct !{!928, !929, !930}
!929 = !DILocation(line: 737, column: 2, scope: !911)
!930 = !DILocation(line: 1222, column: 3, scope: !911)
!931 = !DILocation(line: 745, column: 8, scope: !909)
!932 = !DILocation(line: 746, column: 10, scope: !933)
!933 = distinct !DILexicalBlock(scope: !909, file: !3, line: 746, column: 7)
!934 = !DILocation(line: 746, column: 7, scope: !909)
!935 = !DILocation(line: 259, column: 11, scope: !2)
!936 = !DILocation(line: 259, column: 6, scope: !2)
!937 = !DILocation(line: 259, column: 26, scope: !2)
!938 = !DILocation(line: 259, column: 21, scope: !2)
!939 = !DILocation(line: 757, column: 7, scope: !940)
!940 = distinct !DILexicalBlock(scope: !909, file: !3, line: 757, column: 7)
!941 = !DILocation(line: 757, column: 11, scope: !940)
!942 = !DILocation(line: 757, column: 7, scope: !909)
!943 = !DILocation(line: 259, column: 39, scope: !2)
!944 = !DILocation(line: 268, column: 10, scope: !2)
!945 = !DILocation(line: 268, column: 15, scope: !2)
!946 = !DILocation(line: 769, column: 11, scope: !909)
!947 = !DILocation(line: 770, column: 11, scope: !909)
!948 = !DILocation(line: 770, column: 9, scope: !909)
!949 = !DILocation(line: 771, column: 13, scope: !909)
!950 = !DILocation(line: 772, column: 9, scope: !951)
!951 = distinct !DILexicalBlock(scope: !909, file: !3, line: 772, column: 7)
!952 = !DILocation(line: 772, column: 7, scope: !909)
!953 = !DILocation(line: 773, column: 13, scope: !954)
!954 = distinct !DILexicalBlock(scope: !951, file: !3, line: 772, column: 17)
!955 = !DILocation(line: 774, column: 6, scope: !954)
!956 = !DILocation(line: 775, column: 10, scope: !957)
!957 = distinct !DILexicalBlock(scope: !954, file: !3, line: 775, column: 8)
!958 = !DILocation(line: 775, column: 8, scope: !954)
!959 = !DILocation(line: 776, column: 9, scope: !957)
!960 = !DILocation(line: 776, column: 5, scope: !957)
!961 = !DILocation(line: 778, column: 21, scope: !957)
!962 = !DILocation(line: 778, column: 16, scope: !957)
!963 = !DILocation(line: 0, scope: !909)
!964 = !DILocation(line: 796, column: 7, scope: !909)
!965 = !DILocation(line: 797, column: 7, scope: !909)
!966 = !DILocation(line: 799, column: 7, scope: !909)
!967 = !DILocation(line: 801, column: 11, scope: !909)
!968 = !DILocation(line: 801, column: 7, scope: !909)
!969 = !DILocation(line: 802, column: 9, scope: !970)
!970 = distinct !DILexicalBlock(scope: !909, file: !3, line: 802, column: 7)
!971 = !DILocation(line: 802, column: 7, scope: !909)
!972 = !DILocation(line: 804, column: 9, scope: !973)
!973 = distinct !DILexicalBlock(scope: !909, file: !3, line: 804, column: 7)
!974 = !DILocation(line: 804, column: 7, scope: !909)
!975 = !DILocation(line: 805, column: 8, scope: !976)
!976 = distinct !DILexicalBlock(scope: !973, file: !3, line: 804, column: 14)
!977 = !DILocation(line: 806, column: 8, scope: !976)
!978 = !DILocation(line: 807, column: 8, scope: !976)
!979 = !DILocation(line: 808, column: 4, scope: !976)
!980 = !DILocation(line: 809, column: 7, scope: !909)
!981 = !DILocation(line: 810, column: 9, scope: !982)
!982 = distinct !DILexicalBlock(scope: !983, file: !3, line: 809, column: 16)
!983 = distinct !DILexicalBlock(scope: !909, file: !3, line: 809, column: 7)
!984 = !DILocation(line: 811, column: 11, scope: !985)
!985 = distinct !DILexicalBlock(scope: !982, file: !3, line: 811, column: 8)
!986 = !DILocation(line: 811, column: 8, scope: !982)
!987 = !DILocation(line: 813, column: 24, scope: !982)
!988 = !DILocation(line: 813, column: 10, scope: !982)
!989 = !DILocation(line: 266, column: 23, scope: !2)
!990 = !DILocation(line: 814, column: 12, scope: !991)
!991 = distinct !DILexicalBlock(scope: !982, file: !3, line: 814, column: 8)
!992 = !DILocation(line: 814, column: 8, scope: !982)
!993 = !DILocation(line: 816, column: 15, scope: !982)
!994 = !DILocation(line: 816, column: 4, scope: !982)
!995 = !DILocation(line: 817, column: 7, scope: !982)
!996 = !DILocation(line: 818, column: 4, scope: !982)
!997 = !DILocation(line: 819, column: 11, scope: !998)
!998 = distinct !DILexicalBlock(scope: !909, file: !3, line: 819, column: 7)
!999 = !DILocation(line: 819, column: 7, scope: !909)
!1000 = !DILocation(line: 820, column: 21, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !998, file: !3, line: 819, column: 16)
!1002 = !DILocation(line: 820, column: 9, scope: !1001)
!1003 = !DILocation(line: 820, column: 7, scope: !1001)
!1004 = !DILocation(line: 821, column: 11, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 821, column: 8)
!1006 = !DILocation(line: 821, column: 8, scope: !1001)
!1007 = !DILocation(line: 824, column: 7, scope: !909)
!1008 = !DILocation(line: 825, column: 9, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 824, column: 16)
!1010 = distinct !DILexicalBlock(scope: !909, file: !3, line: 824, column: 7)
!1011 = !DILocation(line: 826, column: 11, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 826, column: 8)
!1013 = !DILocation(line: 826, column: 8, scope: !1009)
!1014 = !DILocation(line: 829, column: 11, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !909, file: !3, line: 829, column: 7)
!1016 = !DILocation(line: 829, column: 7, scope: !909)
!1017 = !DILocation(line: 830, column: 9, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 829, column: 16)
!1019 = !DILocation(line: 831, column: 11, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 831, column: 8)
!1021 = !DILocation(line: 831, column: 8, scope: !1018)
!1022 = !DILocation(line: 0, scope: !1009)
!1023 = !DILocation(line: 834, column: 11, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !909, file: !3, line: 834, column: 7)
!1025 = !DILocation(line: 834, column: 7, scope: !909)
!1026 = !DILocation(line: 835, column: 9, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 834, column: 16)
!1028 = !DILocation(line: 836, column: 11, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1027, file: !3, line: 836, column: 8)
!1030 = !DILocation(line: 836, column: 8, scope: !1027)
!1031 = !DILocation(line: 0, scope: !982)
!1032 = !DILocation(line: 839, column: 21, scope: !909)
!1033 = !DILocation(line: 839, column: 11, scope: !909)
!1034 = !DILocation(line: 840, column: 13, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !909, file: !3, line: 840, column: 7)
!1036 = !DILocation(line: 840, column: 7, scope: !909)
!1037 = !DILocation(line: 842, column: 18, scope: !909)
!1038 = !{!913, !495, i64 16}
!1039 = !DILocation(line: 259, column: 54, scope: !2)
!1040 = !DILocation(line: 843, column: 16, scope: !909)
!1041 = !DILocation(line: 844, column: 7, scope: !909)
!1042 = !DILocation(line: 938, column: 9, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !909, file: !3, line: 938, column: 7)
!1044 = !DILocation(line: 938, column: 7, scope: !909)
!1045 = !DILocation(line: 942, column: 17, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 942, column: 8)
!1047 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 938, column: 14)
!1048 = !DILocation(line: 942, column: 14, scope: !1046)
!1049 = !DILocation(line: 942, column: 31, scope: !1046)
!1050 = !DILocation(line: 942, column: 42, scope: !1046)
!1051 = !DILocation(line: 945, column: 20, scope: !1046)
!1052 = !DILocation(line: 945, column: 32, scope: !1046)
!1053 = !DILocation(line: 945, column: 5, scope: !1046)
!1054 = !DILocation(line: 957, column: 9, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 957, column: 8)
!1056 = !DILocation(line: 957, column: 22, scope: !1055)
!1057 = !DILocation(line: 957, column: 32, scope: !1055)
!1058 = !DILocation(line: 957, column: 37, scope: !1055)
!1059 = !DILocation(line: 957, column: 8, scope: !1047)
!1060 = !DILocation(line: 964, column: 12, scope: !1047)
!1061 = !DILocation(line: 965, column: 8, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 965, column: 8)
!1063 = !DILocation(line: 965, column: 23, scope: !1062)
!1064 = !DILocation(line: 965, column: 8, scope: !1047)
!1065 = !DILocation(line: 969, column: 9, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !909, file: !3, line: 969, column: 7)
!1067 = !DILocation(line: 969, column: 7, scope: !909)
!1068 = !DILocation(line: 971, column: 8, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 971, column: 8)
!1070 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 969, column: 15)
!1071 = !DILocation(line: 0, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 997, column: 13)
!1073 = !DILocation(line: 971, column: 8, scope: !1070)
!1074 = !DILocation(line: 972, column: 36, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 972, column: 9)
!1076 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 971, column: 15)
!1077 = !DILocation(line: 973, column: 6, scope: !1075)
!1078 = !DILocation(line: 973, column: 10, scope: !1075)
!1079 = !DILocation(line: 975, column: 11, scope: !1075)
!1080 = !DILocation(line: 975, column: 30, scope: !1075)
!1081 = !DILocation(line: 975, column: 42, scope: !1075)
!1082 = !DILocation(line: 975, column: 4, scope: !1075)
!1083 = !DILocation(line: 976, column: 43, scope: !1075)
!1084 = !DILocation(line: 976, column: 40, scope: !1075)
!1085 = !DILocation(line: 976, column: 31, scope: !1075)
!1086 = !DILocation(line: 973, column: 21, scope: !1075)
!1087 = !DILocation(line: 972, column: 9, scope: !1076)
!1088 = !DILocation(line: 980, column: 21, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 980, column: 10)
!1090 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 978, column: 23)
!1091 = !DILocation(line: 980, column: 43, scope: !1089)
!1092 = !DILocation(line: 980, column: 29, scope: !1089)
!1093 = !DILocation(line: 982, column: 17, scope: !1090)
!1094 = !DILocation(line: 994, column: 6, scope: !1090)
!1095 = !DILocation(line: 997, column: 44, scope: !1072)
!1096 = !DILocation(line: 997, column: 40, scope: !1072)
!1097 = !DILocation(line: 1015, column: 9, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1072, file: !3, line: 997, column: 56)
!1099 = !DILocation(line: 1016, column: 10, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 1015, column: 16)
!1101 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 1015, column: 9)
!1102 = !DILocation(line: 1016, column: 21, scope: !1100)
!1103 = !DILocation(line: 1017, column: 12, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 1017, column: 10)
!1105 = !DILocation(line: 1017, column: 10, scope: !1100)
!1106 = !DILocation(line: 1018, column: 13, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 1018, column: 11)
!1108 = distinct !DILexicalBlock(scope: !1104, file: !3, line: 1017, column: 33)
!1109 = !DILocation(line: 1018, column: 11, scope: !1108)
!1110 = !DILocation(line: 1029, column: 16, scope: !1098)
!1111 = !DILocation(line: 1031, column: 16, scope: !1098)
!1112 = !DILocation(line: 1036, column: 5, scope: !1098)
!1113 = !DILocation(line: 1041, column: 8, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 1041, column: 8)
!1115 = !DILocation(line: 1041, column: 8, scope: !1070)
!1116 = !DILocation(line: 1042, column: 22, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1118, file: !3, line: 1042, column: 9)
!1118 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 1041, column: 14)
!1119 = !DILocation(line: 1042, column: 9, scope: !1118)
!1120 = !DILocation(line: 1045, column: 15, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 1045, column: 13)
!1122 = !DILocation(line: 1045, column: 26, scope: !1121)
!1123 = !DILocation(line: 1045, column: 13, scope: !1114)
!1124 = !DILocalVariable(name: "x", arg: 1, scope: !1125, file: !3, line: 192, type: !370)
!1125 = distinct !DISubprogram(name: "sulp", scope: !3, file: !3, line: 192, type: !1126, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !292, retainedNodes: !1128)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{!6, !370, !12}
!1128 = !{!1124, !1129, !1130, !1131, !1132}
!1129 = !DILocalVariable(name: "scale", arg: 2, scope: !1125, file: !3, line: 192, type: !12)
!1130 = !DILocalVariable(name: "u", scope: !1125, file: !3, line: 196, type: !370)
!1131 = !DILocalVariable(name: "rv", scope: !1125, file: !3, line: 197, type: !6)
!1132 = !DILocalVariable(name: "i", scope: !1125, file: !3, line: 198, type: !12)
!1133 = !DILocation(line: 192, column: 1, scope: !1125, inlinedAt: !1134)
!1134 = distinct !DILocation(line: 0, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 1059, column: 9)
!1136 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 1052, column: 8)
!1137 = !DILocation(line: 200, column: 14, scope: !1125, inlinedAt: !1134)
!1138 = !DILocation(line: 197, column: 16, scope: !1125, inlinedAt: !1134)
!1139 = !DILocation(line: 201, column: 20, scope: !1140, inlinedAt: !1134)
!1140 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 201, column: 13)
!1141 = !DILocation(line: 201, column: 40, scope: !1140, inlinedAt: !1134)
!1142 = !DILocation(line: 201, column: 62, scope: !1140, inlinedAt: !1134)
!1143 = !DILocation(line: 201, column: 36, scope: !1140, inlinedAt: !1134)
!1144 = !DILocation(line: 198, column: 13, scope: !1125, inlinedAt: !1134)
!1145 = !DILocation(line: 201, column: 77, scope: !1140, inlinedAt: !1134)
!1146 = !DILocation(line: 201, column: 13, scope: !1125, inlinedAt: !1134)
!1147 = !DILocation(line: 203, column: 43, scope: !1125, inlinedAt: !1134)
!1148 = !DILocation(line: 203, column: 27, scope: !1125, inlinedAt: !1134)
!1149 = !DILocation(line: 203, column: 19, scope: !1125, inlinedAt: !1134)
!1150 = !DILocation(line: 196, column: 11, scope: !1125, inlinedAt: !1134)
!1151 = !DILocation(line: 207, column: 19, scope: !1125, inlinedAt: !1134)
!1152 = !DILocation(line: 207, column: 9, scope: !1125, inlinedAt: !1134)
!1153 = !DILocation(line: 0, scope: !1125, inlinedAt: !1134)
!1154 = !DILocation(line: 208, column: 9, scope: !1125, inlinedAt: !1134)
!1155 = !DILocation(line: 1052, column: 8, scope: !1070)
!1156 = !DILocation(line: 1054, column: 14, scope: !1136)
!1157 = !DILocation(line: 1054, column: 5, scope: !1136)
!1158 = !DILocation(line: 1061, column: 14, scope: !1135)
!1159 = !DILocation(line: 1066, column: 10, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 1066, column: 9)
!1161 = !DILocation(line: 1066, column: 9, scope: !1135)
!1162 = !DILocation(line: 1076, column: 15, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !909, file: !3, line: 1076, column: 7)
!1164 = !DILocation(line: 262, column: 9, scope: !2)
!1165 = !DILocation(line: 1076, column: 33, scope: !1163)
!1166 = !DILocation(line: 1076, column: 7, scope: !909)
!1167 = !DILocation(line: 1077, column: 8, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 1077, column: 8)
!1169 = distinct !DILexicalBlock(scope: !1163, file: !3, line: 1076, column: 40)
!1170 = !DILocation(line: 1077, column: 8, scope: !1169)
!1171 = !DILocation(line: 1079, column: 13, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 1079, column: 13)
!1173 = !DILocation(line: 1079, column: 24, scope: !1172)
!1174 = !DILocation(line: 1079, column: 38, scope: !1172)
!1175 = !DILocation(line: 1079, column: 13, scope: !1168)
!1176 = !DILocation(line: 1081, column: 33, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 1081, column: 9)
!1178 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 1079, column: 52)
!1179 = !DILocation(line: 1081, column: 9, scope: !1178)
!1180 = !DILocation(line: 1091, column: 14, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 1091, column: 9)
!1182 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 1087, column: 9)
!1183 = !DILocation(line: 1094, column: 11, scope: !1181)
!1184 = !DILocation(line: 1091, column: 9, scope: !1182)
!1185 = !DILocation(line: 1095, column: 19, scope: !1182)
!1186 = !DILocation(line: 263, column: 4, scope: !2)
!1187 = !DILocation(line: 1099, column: 9, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1163, file: !3, line: 1098, column: 8)
!1189 = !DILocation(line: 1100, column: 18, scope: !1188)
!1190 = !DILocation(line: 1100, column: 33, scope: !1188)
!1191 = !DILocation(line: 0, scope: !1188)
!1192 = !DILocation(line: 1115, column: 7, scope: !909)
!1193 = !DILocation(line: 1115, column: 18, scope: !909)
!1194 = !DILocation(line: 1119, column: 9, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !909, file: !3, line: 1119, column: 7)
!1196 = !DILocation(line: 1119, column: 7, scope: !909)
!1197 = !DILocation(line: 1121, column: 15, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 1119, column: 43)
!1199 = !DILocation(line: 1122, column: 28, scope: !1198)
!1200 = !DILocation(line: 1122, column: 24, scope: !1198)
!1201 = !DILocation(line: 1122, column: 22, scope: !1198)
!1202 = !DILocation(line: 262, column: 15, scope: !2)
!1203 = !DILocation(line: 1123, column: 13, scope: !1198)
!1204 = !DILocation(line: 1124, column: 32, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 1124, column: 8)
!1206 = !DILocation(line: 1124, column: 8, scope: !1198)
!1207 = !DILocation(line: 1126, column: 29, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1209, file: !3, line: 1126, column: 9)
!1209 = distinct !DILexicalBlock(scope: !1205, file: !3, line: 1125, column: 37)
!1210 = !DILocation(line: 1135, column: 16, scope: !1205)
!1211 = !DILocation(line: 1136, column: 4, scope: !1198)
!1212 = !DILocation(line: 1139, column: 19, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 1139, column: 8)
!1214 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 1137, column: 8)
!1215 = !DILocation(line: 1139, column: 14, scope: !1213)
!1216 = !DILocation(line: 1140, column: 14, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 1140, column: 9)
!1218 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 1139, column: 36)
!1219 = !DILocation(line: 1140, column: 9, scope: !1218)
!1220 = !DILocation(line: 1141, column: 15, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 1141, column: 10)
!1222 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 1140, column: 29)
!1223 = !DILocation(line: 1141, column: 21, scope: !1221)
!1224 = !DILocation(line: 1141, column: 10, scope: !1222)
!1225 = !DILocation(line: 1143, column: 13, scope: !1222)
!1226 = !DILocation(line: 1144, column: 20, scope: !1222)
!1227 = !DILocation(line: 1144, column: 35, scope: !1222)
!1228 = !DILocation(line: 1145, column: 6, scope: !1222)
!1229 = !DILocation(line: 0, scope: !1168)
!1230 = !DILocation(line: 1146, column: 39, scope: !1218)
!1231 = !DILocation(line: 1146, column: 19, scope: !1218)
!1232 = !DILocation(line: 1147, column: 5, scope: !1218)
!1233 = !DILocation(line: 1148, column: 24, scope: !1214)
!1234 = !DILocation(line: 1148, column: 22, scope: !1214)
!1235 = !DILocation(line: 1149, column: 13, scope: !1214)
!1236 = !DILocation(line: 0, scope: !1214)
!1237 = !DILocation(line: 0, scope: !1222)
!1238 = !DILocation(line: 1199, column: 7, scope: !909)
!1239 = !DILocation(line: 1199, column: 18, scope: !909)
!1240 = !DILocation(line: 1204, column: 9, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 1204, column: 7)
!1242 = distinct !DILexicalBlock(scope: !909, file: !3, line: 1202, column: 7)
!1243 = !DILocation(line: 1202, column: 7, scope: !909)
!1244 = !DILocation(line: 1206, column: 8, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 1204, column: 15)
!1246 = !DILocation(line: 1207, column: 12, scope: !1245)
!1247 = !DILocation(line: 1207, column: 9, scope: !1245)
!1248 = !DILocation(line: 1209, column: 8, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 1209, column: 8)
!1250 = !DILocation(line: 1209, column: 14, scope: !1249)
!1251 = !DILocation(line: 1209, column: 17, scope: !1249)
!1252 = !DILocation(line: 1209, column: 42, scope: !1249)
!1253 = !DILocation(line: 1209, column: 28, scope: !1249)
!1254 = !DILocation(line: 1210, column: 14, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 1210, column: 9)
!1256 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 1209, column: 56)
!1257 = !DILocation(line: 1210, column: 33, scope: !1255)
!1258 = !DILocation(line: 1210, column: 25, scope: !1255)
!1259 = !DILocation(line: 1213, column: 18, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 1213, column: 13)
!1261 = !DILocation(line: 1213, column: 13, scope: !1249)
!1262 = !DILocation(line: 0, scope: !1205)
!1263 = !DILocation(line: 1218, column: 13, scope: !909)
!1264 = !DILocation(line: 1218, column: 3, scope: !909)
!1265 = !DILocation(line: 1219, column: 3, scope: !909)
!1266 = !DILocation(line: 1220, column: 3, scope: !909)
!1267 = !DILocation(line: 1221, column: 3, scope: !909)
!1268 = !DILocation(line: 1237, column: 6, scope: !2)
!1269 = !DILocation(line: 1242, column: 12, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 1237, column: 13)
!1271 = distinct !DILexicalBlock(scope: !2, file: !3, line: 1237, column: 6)
!1272 = !DILocation(line: 1245, column: 18, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1270, file: !3, line: 1245, column: 7)
!1274 = !DILocation(line: 1245, column: 26, scope: !1273)
!1275 = !DILocation(line: 1245, column: 37, scope: !1273)
!1276 = !DILocation(line: 1245, column: 23, scope: !1273)
!1277 = !DILocation(line: 1246, column: 9, scope: !1273)
!1278 = !DILocation(line: 1246, column: 16, scope: !1273)
!1279 = !DILocation(line: 1246, column: 4, scope: !1273)
!1280 = !DILocation(line: 0, scope: !900)
!1281 = !DILocation(line: 0, scope: !1018)
!1282 = !DILocation(line: 0, scope: !1027)
!1283 = !DILocation(line: 0, scope: !1047)
!1284 = !DILocation(line: 1258, column: 12, scope: !2)
!1285 = !DILocation(line: 1258, column: 2, scope: !2)
!1286 = !DILocation(line: 1259, column: 2, scope: !2)
!1287 = !DILocation(line: 1260, column: 2, scope: !2)
!1288 = !DILocation(line: 1261, column: 2, scope: !2)
!1289 = !DILocation(line: 1262, column: 2, scope: !2)
!1290 = !DILocation(line: 1264, column: 6, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !2, file: !3, line: 1264, column: 6)
!1292 = !DILocation(line: 1264, column: 6, scope: !2)
!1293 = !DILocation(line: 1265, column: 17, scope: !1291)
!1294 = !DILocation(line: 1265, column: 7, scope: !1291)
!1295 = !DILocation(line: 1265, column: 3, scope: !1291)
!1296 = !DILocation(line: 1266, column: 9, scope: !2)
!1297 = !DILocation(line: 1266, column: 16, scope: !2)
!1298 = !DILocation(line: 1267, column: 1, scope: !2)
!1299 = distinct !{!1299, !602, !1300}
!1300 = !DILocation(line: 381, column: 12, scope: !601)
!1301 = distinct !DISubprogram(name: "_strtod_r", scope: !3, file: !3, line: 1270, type: !1302, isLocal: false, isDefinition: true, scopeLine: 1274, flags: DIFlagPrototyped, isOptimized: true, unit: !292, retainedNodes: !1304)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{!6, !7, !287, !288}
!1304 = !{!1305, !1306, !1307}
!1305 = !DILocalVariable(name: "ptr", arg: 1, scope: !1301, file: !3, line: 1270, type: !7)
!1306 = !DILocalVariable(name: "s00", arg: 2, scope: !1301, file: !3, line: 1270, type: !287)
!1307 = !DILocalVariable(name: "se", arg: 3, scope: !1301, file: !3, line: 1270, type: !288)
!1308 = !DILocation(line: 1270, column: 1, scope: !1301)
!1309 = !DILocation(line: 230, column: 10, scope: !1310, inlinedAt: !1314)
!1310 = distinct !DISubprogram(name: "__get_current_locale", scope: !106, file: !106, line: 228, type: !1311, isLocal: true, isDefinition: true, scopeLine: 229, flags: DIFlagPrototyped, isOptimized: true, unit: !292, retainedNodes: !1313)
!1311 = !DISubroutineType(types: !1312)
!1312 = !{!104}
!1313 = !{}
!1314 = distinct !DILocation(line: 1275, column: 35, scope: !1301)
!1315 = !DILocation(line: 230, column: 18, scope: !1310, inlinedAt: !1314)
!1316 = !{!804, !417, i64 72}
!1317 = !DILocation(line: 213, column: 3, scope: !1318, inlinedAt: !1319)
!1318 = distinct !DISubprogram(name: "__get_global_locale", scope: !106, file: !106, line: 210, type: !1311, isLocal: true, isDefinition: true, scopeLine: 211, isOptimized: true, unit: !292, retainedNodes: !1313)
!1319 = distinct !DILocation(line: 230, column: 29, scope: !1310, inlinedAt: !1314)
!1320 = !DILocation(line: 230, column: 3, scope: !1310, inlinedAt: !1314)
!1321 = !DILocation(line: 1275, column: 10, scope: !1301)
!1322 = !DILocation(line: 1275, column: 3, scope: !1301)
!1323 = distinct !DISubprogram(name: "strtod_l", scope: !3, file: !3, line: 1281, type: !1324, isLocal: false, isDefinition: true, scopeLine: 1282, flags: DIFlagPrototyped, isOptimized: true, unit: !292, retainedNodes: !1326)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{!6, !287, !288, !290}
!1326 = !{!1327, !1328, !1329}
!1327 = !DILocalVariable(name: "s00", arg: 1, scope: !1323, file: !3, line: 1281, type: !287)
!1328 = !DILocalVariable(name: "se", arg: 2, scope: !1323, file: !3, line: 1281, type: !288)
!1329 = !DILocalVariable(name: "loc", arg: 3, scope: !1323, file: !3, line: 1281, type: !290)
!1330 = !DILocation(line: 1281, column: 34, scope: !1323)
!1331 = !DILocation(line: 1281, column: 57, scope: !1323)
!1332 = !DILocation(line: 1281, column: 70, scope: !1323)
!1333 = !DILocation(line: 1283, column: 21, scope: !1323)
!1334 = !DILocation(line: 1283, column: 10, scope: !1323)
!1335 = !DILocation(line: 1283, column: 3, scope: !1323)
!1336 = distinct !DISubprogram(name: "strtod", scope: !3, file: !3, line: 1287, type: !1337, isLocal: false, isDefinition: true, scopeLine: 1289, flags: DIFlagPrototyped, isOptimized: true, unit: !292, retainedNodes: !1339)
!1337 = !DISubroutineType(types: !1338)
!1338 = !{!6, !287, !288}
!1339 = !{!1340, !1341}
!1340 = !DILocalVariable(name: "s00", arg: 1, scope: !1336, file: !3, line: 1287, type: !287)
!1341 = !DILocalVariable(name: "se", arg: 2, scope: !1336, file: !3, line: 1287, type: !288)
!1342 = !DILocation(line: 1287, column: 1, scope: !1336)
!1343 = !DILocation(line: 1290, column: 21, scope: !1336)
!1344 = !DILocation(line: 230, column: 10, scope: !1310, inlinedAt: !1345)
!1345 = distinct !DILocation(line: 1290, column: 38, scope: !1336)
!1346 = !DILocation(line: 230, column: 18, scope: !1310, inlinedAt: !1345)
!1347 = !DILocation(line: 213, column: 3, scope: !1318, inlinedAt: !1348)
!1348 = distinct !DILocation(line: 230, column: 29, scope: !1310, inlinedAt: !1345)
!1349 = !DILocation(line: 230, column: 3, scope: !1310, inlinedAt: !1345)
!1350 = !DILocation(line: 1290, column: 10, scope: !1336)
!1351 = !DILocation(line: 1290, column: 3, scope: !1336)
!1352 = distinct !DISubprogram(name: "strtof_l", scope: !3, file: !3, line: 1294, type: !1353, isLocal: false, isDefinition: true, scopeLine: 1295, flags: DIFlagPrototyped, isOptimized: true, unit: !292, retainedNodes: !1355)
!1353 = !DISubroutineType(types: !1354)
!1354 = !{!317, !287, !288, !290}
!1355 = !{!1356, !1357, !1358, !1359, !1360}
!1356 = !DILocalVariable(name: "s00", arg: 1, scope: !1352, file: !3, line: 1294, type: !287)
!1357 = !DILocalVariable(name: "se", arg: 2, scope: !1352, file: !3, line: 1294, type: !288)
!1358 = !DILocalVariable(name: "loc", arg: 3, scope: !1352, file: !3, line: 1294, type: !290)
!1359 = !DILocalVariable(name: "val", scope: !1352, file: !3, line: 1296, type: !6)
!1360 = !DILocalVariable(name: "retval", scope: !1352, file: !3, line: 1299, type: !317)
!1361 = !DILocation(line: 1294, column: 34, scope: !1352)
!1362 = !DILocation(line: 1294, column: 57, scope: !1352)
!1363 = !DILocation(line: 1294, column: 70, scope: !1352)
!1364 = !DILocation(line: 1296, column: 27, scope: !1352)
!1365 = !DILocation(line: 1296, column: 16, scope: !1352)
!1366 = !DILocation(line: 1296, column: 10, scope: !1352)
!1367 = !DILocation(line: 1297, column: 7, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 1297, column: 7)
!1369 = !DILocation(line: 1297, column: 7, scope: !1352)
!1370 = !DILocation(line: 1298, column: 12, scope: !1368)
!1371 = !DILocation(line: 1298, column: 5, scope: !1368)
!1372 = !DILocation(line: 1299, column: 18, scope: !1352)
!1373 = !DILocation(line: 1299, column: 9, scope: !1352)
!1374 = !DILocation(line: 1301, column: 7, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 1301, column: 7)
!1376 = !DILocation(line: 1301, column: 22, scope: !1375)
!1377 = !DILocation(line: 1301, column: 26, scope: !1375)
!1378 = !DILocation(line: 1301, column: 7, scope: !1352)
!1379 = !DILocation(line: 1302, column: 5, scope: !1375)
!1380 = !DILocation(line: 1302, column: 13, scope: !1375)
!1381 = !DILocation(line: 1302, column: 20, scope: !1375)
!1382 = !DILocation(line: 0, scope: !1352)
!1383 = !DILocation(line: 1305, column: 1, scope: !1352)
!1384 = distinct !DISubprogram(name: "strtof", scope: !3, file: !3, line: 1308, type: !1385, isLocal: false, isDefinition: true, scopeLine: 1311, flags: DIFlagPrototyped, isOptimized: true, unit: !292, retainedNodes: !1387)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{!317, !287, !288}
!1387 = !{!1388, !1389, !1390, !1391}
!1388 = !DILocalVariable(name: "s00", arg: 1, scope: !1384, file: !3, line: 1308, type: !287)
!1389 = !DILocalVariable(name: "se", arg: 2, scope: !1384, file: !3, line: 1308, type: !288)
!1390 = !DILocalVariable(name: "val", scope: !1384, file: !3, line: 1312, type: !6)
!1391 = !DILocalVariable(name: "retval", scope: !1384, file: !3, line: 1315, type: !317)
!1392 = !DILocation(line: 1308, column: 1, scope: !1384)
!1393 = !DILocation(line: 1312, column: 27, scope: !1384)
!1394 = !DILocation(line: 230, column: 10, scope: !1310, inlinedAt: !1395)
!1395 = distinct !DILocation(line: 1312, column: 44, scope: !1384)
!1396 = !DILocation(line: 230, column: 18, scope: !1310, inlinedAt: !1395)
!1397 = !DILocation(line: 213, column: 3, scope: !1318, inlinedAt: !1398)
!1398 = distinct !DILocation(line: 230, column: 29, scope: !1310, inlinedAt: !1395)
!1399 = !DILocation(line: 230, column: 3, scope: !1310, inlinedAt: !1395)
!1400 = !DILocation(line: 1312, column: 16, scope: !1384)
!1401 = !DILocation(line: 1312, column: 10, scope: !1384)
!1402 = !DILocation(line: 1313, column: 7, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1384, file: !3, line: 1313, column: 7)
!1404 = !DILocation(line: 1313, column: 7, scope: !1384)
!1405 = !DILocation(line: 1314, column: 12, scope: !1403)
!1406 = !DILocation(line: 1314, column: 5, scope: !1403)
!1407 = !DILocation(line: 1315, column: 18, scope: !1384)
!1408 = !DILocation(line: 1315, column: 9, scope: !1384)
!1409 = !DILocation(line: 1317, column: 7, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1384, file: !3, line: 1317, column: 7)
!1411 = !DILocation(line: 1317, column: 22, scope: !1410)
!1412 = !DILocation(line: 1317, column: 26, scope: !1410)
!1413 = !DILocation(line: 1317, column: 7, scope: !1384)
!1414 = !DILocation(line: 1318, column: 5, scope: !1410)
!1415 = !DILocation(line: 1318, column: 13, scope: !1410)
!1416 = !DILocation(line: 1318, column: 20, scope: !1410)
!1417 = !DILocation(line: 0, scope: !1384)
!1418 = !DILocation(line: 1321, column: 1, scope: !1384)
