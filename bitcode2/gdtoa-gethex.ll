; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/gdtoa-gethex.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/gdtoa-gethex.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct.FPI = type { i32, i32, i32, i32, i32 }
%struct.__locale_t = type { [7 x [32 x i8]], i32 (%struct._reent*, i8*, i32, %struct._mbstate_t*)*, i32 (%struct._reent*, i32*, i8*, i64, %struct._mbstate_t*)*, i32, i8*, %struct.lconv, [2 x i8], [32 x i8], [32 x i8] }
%struct.lconv = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@__hexdig = dso_local local_unnamed_addr constant <{ [103 x i8], [153 x i8] }> <{ [103 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\11\12\13\14\15\16\17\18\19\00\00\00\00\00\00\00\1A\1B\1C\1D\1E\1F\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1A\1B\1C\1D\1E\1F", [153 x i8] zeroinitializer }>, align 16, !dbg !0
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @__gethex(%struct._reent*, i8** nocapture, %struct.FPI* nocapture readonly, i32* nocapture, %struct._Bigint** nocapture, i32, %struct.__locale_t*) local_unnamed_addr #0 !dbg !48 {
  %8 = tail call %struct.lconv* @__localeconv_l(%struct.__locale_t* %6) #3, !dbg !375
  %9 = getelementptr inbounds %struct.lconv, %struct.lconv* %8, i64 0, i32 0, !dbg !376
  %10 = load i8*, i8** %9, align 8, !dbg !376, !tbaa !377
  %11 = tail call i64 @strlen(i8* %10) #3, !dbg !383
  %12 = add i64 %11, -1, !dbg !385
  %13 = getelementptr inbounds i8, i8* %10, i64 %12, !dbg !386
  %14 = load i8, i8* %13, align 1, !dbg !386, !tbaa !387
  %15 = load i8*, i8** %1, align 8, !dbg !390, !tbaa !391
  %16 = getelementptr inbounds i8, i8* %15, i64 2, !dbg !392
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !394
  %17 = load i8, i8* %16, align 1, !dbg !395, !tbaa !387
  %18 = icmp eq i8 %17, 48, !dbg !396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !394
  br i1 %18, label %19, label %29, !dbg !394

; <label>:19:                                     ; preds = %7, %19
  %20 = phi i64 [ %21, %19 ], [ 0, %7 ]
  %21 = add nuw i64 %20, 1, !dbg !397
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !394
  %22 = getelementptr inbounds i8, i8* %16, i64 %21, !dbg !395
  %23 = load i8, i8* %22, align 1, !dbg !395, !tbaa !387
  %24 = icmp eq i8 %23, 48, !dbg !396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !394
  br i1 %24, label %19, label %25, !dbg !394, !llvm.loop !398

; <label>:25:                                     ; preds = %19
  %26 = trunc i64 %21 to i32, !dbg !395
  %27 = and i64 %21, 4294967295, !dbg !395
  %28 = getelementptr inbounds i8, i8* %16, i64 %27, !dbg !395
  br label %29, !dbg !394

; <label>:29:                                     ; preds = %25, %7
  %30 = phi i32 [ %26, %25 ], [ 0, %7 ], !dbg !399
  %31 = phi i8* [ %28, %25 ], [ %16, %7 ], !dbg !395
  %32 = phi i8 [ %23, %25 ], [ %17, %7 ], !dbg !395
  %33 = zext i8 %32 to i64, !dbg !404
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [103 x i8], [153 x i8] }>* @__hexdig to [256 x i8]*), i64 0, i64 %33, !dbg !404
  %35 = load i8, i8* %34, align 1, !dbg !404, !tbaa !387
  %36 = icmp eq i8 %35, 0, !dbg !404
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !406
  br i1 %36, label %42, label %37, !dbg !406

; <label>:37:                                     ; preds = %29
  %38 = load i8, i8* %31, align 1, !dbg !407, !tbaa !387
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [103 x i8], [153 x i8] }>* @__hexdig to [256 x i8]*), i64 0, i64 %39
  %41 = load i8, i8* %40, align 1, !dbg !407, !tbaa !387
  br label %72, !dbg !406

; <label>:42:                                     ; preds = %29
  %43 = tail call i32 @strncmp(i8* nonnull %31, i8* %10, i64 %11) #3, !dbg !408
  %44 = icmp eq i32 %43, 0, !dbg !411
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !412
  br i1 %44, label %45, label %119, !dbg !412

; <label>:45:                                     ; preds = %42
  %46 = getelementptr inbounds i8, i8* %31, i64 %11, !dbg !413
  %47 = load i8, i8* %46, align 1, !dbg !414, !tbaa !387
  %48 = zext i8 %47 to i64, !dbg !414
  %49 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [103 x i8], [153 x i8] }>* @__hexdig to [256 x i8]*), i64 0, i64 %48, !dbg !414
  %50 = load i8, i8* %49, align 1, !dbg !414, !tbaa !387
  %51 = icmp eq i8 %50, 0, !dbg !414
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !416
  br i1 %51, label %119, label %52, !dbg !416

; <label>:52:                                     ; preds = %45
  %53 = icmp eq i8 %47, 48, !dbg !417
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !418
  br i1 %53, label %55, label %54, !dbg !418

; <label>:54:                                     ; preds = %52
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !419
  br label %65, !dbg !419

; <label>:55:                                     ; preds = %52, %55
  %56 = phi i8* [ %57, %55 ], [ %46, %52 ]
  %57 = getelementptr inbounds i8, i8* %56, i64 1, !dbg !420
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !418
  %58 = load i8, i8* %57, align 1, !dbg !421, !tbaa !387
  %59 = icmp eq i8 %58, 48, !dbg !417
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !418
  br i1 %59, label %55, label %60, !dbg !418, !llvm.loop !422

; <label>:60:                                     ; preds = %55
  %61 = zext i8 %58 to i64
  %62 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [103 x i8], [153 x i8] }>* @__hexdig to [256 x i8]*), i64 0, i64 %61
  %63 = load i8, i8* %62, align 1, !dbg !423, !tbaa !387
  %64 = icmp eq i8 %63, 0, !dbg !423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !419
  br i1 %64, label %68, label %65, !dbg !419

; <label>:65:                                     ; preds = %54, %60
  %66 = phi i8* [ %46, %54 ], [ %57, %60 ]
  %67 = phi i8 [ %50, %54 ], [ %63, %60 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !425
  br label %68, !dbg !425

; <label>:68:                                     ; preds = %60, %65
  %69 = phi i8* [ %66, %65 ], [ %57, %60 ]
  %70 = phi i8 [ %67, %65 ], [ 0, %60 ]
  %71 = phi i32 [ 0, %65 ], [ 1, %60 ], !dbg !426
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !427
  br label %72, !dbg !427

; <label>:72:                                     ; preds = %37, %68
  %73 = phi i8 [ %41, %37 ], [ %70, %68 ], !dbg !407
  %74 = phi i8* [ %31, %37 ], [ %69, %68 ], !dbg !426
  %75 = phi i32 [ %30, %37 ], [ 1, %68 ], !dbg !426
  %76 = phi i32 [ 0, %37 ], [ %71, %68 ], !dbg !428
  %77 = phi i8* [ null, %37 ], [ %46, %68 ], !dbg !426
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !429
  %78 = icmp eq i8 %73, 0, !dbg !429
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !429
  br i1 %78, label %87, label %79, !dbg !429

; <label>:79:                                     ; preds = %72, %79
  %80 = phi i8* [ %81, %79 ], [ %74, %72 ]
  %81 = getelementptr inbounds i8, i8* %80, i64 1, !dbg !430
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !429
  %82 = load i8, i8* %81, align 1, !dbg !407, !tbaa !387
  %83 = zext i8 %82 to i64, !dbg !407
  %84 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [103 x i8], [153 x i8] }>* @__hexdig to [256 x i8]*), i64 0, i64 %83, !dbg !407
  %85 = load i8, i8* %84, align 1, !dbg !407, !tbaa !387
  %86 = icmp eq i8 %85, 0, !dbg !429
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !429
  br i1 %86, label %87, label %79, !dbg !429, !llvm.loop !431

; <label>:87:                                     ; preds = %79, %72
  %88 = phi i8* [ %74, %72 ], [ %81, %79 ], !dbg !399
  %89 = tail call i32 @strncmp(i8* nonnull %88, i8* %10, i64 %11) #3, !dbg !432
  %90 = icmp ne i32 %89, 0, !dbg !434
  %91 = icmp ne i8* %77, null, !dbg !435
  %92 = or i1 %91, %90, !dbg !436
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !436
  br i1 %92, label %108, label %93, !dbg !436

; <label>:93:                                     ; preds = %87
  %94 = getelementptr inbounds i8, i8* %88, i64 %11, !dbg !437
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !439
  %95 = load i8, i8* %94, align 1, !dbg !440, !tbaa !387
  %96 = zext i8 %95 to i64, !dbg !440
  %97 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [103 x i8], [153 x i8] }>* @__hexdig to [256 x i8]*), i64 0, i64 %96, !dbg !440
  %98 = load i8, i8* %97, align 1, !dbg !440, !tbaa !387
  %99 = icmp eq i8 %98, 0, !dbg !439
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !439
  br i1 %99, label %108, label %100, !dbg !439

; <label>:100:                                    ; preds = %93, %100
  %101 = phi i8* [ %102, %100 ], [ %94, %93 ]
  %102 = getelementptr inbounds i8, i8* %101, i64 1, !dbg !441
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !439
  %103 = load i8, i8* %102, align 1, !dbg !440, !tbaa !387
  %104 = zext i8 %103 to i64, !dbg !440
  %105 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [103 x i8], [153 x i8] }>* @__hexdig to [256 x i8]*), i64 0, i64 %104, !dbg !440
  %106 = load i8, i8* %105, align 1, !dbg !440, !tbaa !387
  %107 = icmp eq i8 %106, 0, !dbg !439
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !439
  br i1 %107, label %108, label %100, !dbg !439, !llvm.loop !442

; <label>:108:                                    ; preds = %100, %93, %87
  %109 = phi i8* [ %88, %87 ], [ %94, %93 ], [ %102, %100 ], !dbg !443
  %110 = phi i8* [ %77, %87 ], [ %94, %93 ], [ %94, %100 ], !dbg !443
  %111 = icmp eq i8* %110, null, !dbg !444
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !446
  br i1 %111, label %119, label %112, !dbg !446

; <label>:112:                                    ; preds = %108
  %113 = ptrtoint i8* %109 to i64, !dbg !447
  %114 = ptrtoint i8* %110 to i64, !dbg !447
  %115 = sub i64 %113, %114, !dbg !447
  %116 = trunc i64 %115 to i32, !dbg !448
  %117 = shl i32 %116, 2, !dbg !449
  %118 = sub nsw i32 0, %117, !dbg !450
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !451
  br label %119, !dbg !451

; <label>:119:                                    ; preds = %108, %45, %42, %112
  %120 = phi i8* [ %74, %112 ], [ %74, %108 ], [ %31, %42 ], [ %31, %45 ], !dbg !452
  %121 = phi i8* [ %109, %112 ], [ %109, %108 ], [ %31, %42 ], [ %46, %45 ], !dbg !426
  %122 = phi i32 [ %75, %112 ], [ %75, %108 ], [ %30, %42 ], [ %30, %45 ], !dbg !453
  %123 = phi i32 [ %76, %112 ], [ %76, %108 ], [ 1, %42 ], [ 1, %45 ], !dbg !426
  %124 = phi i32 [ %118, %112 ], [ 0, %108 ], [ 0, %42 ], [ 0, %45 ], !dbg !399
  %125 = load i8, i8* %121, align 1, !dbg !455, !tbaa !387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !456
  switch i8 %125, label %180 [
    i8 112, label %126
    i8 80, label %126
  ], !dbg !456

; <label>:126:                                    ; preds = %119, %119
  %127 = getelementptr inbounds i8, i8* %121, i64 1, !dbg !458
  %128 = load i8, i8* %127, align 1, !dbg !460, !tbaa !387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !461
  switch i8 %128, label %133 [
    i8 45, label %129
    i8 43, label %130
  ], !dbg !461

; <label>:129:                                    ; preds = %126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !462
  br label %130, !dbg !462

; <label>:130:                                    ; preds = %126, %129
  %131 = phi i32 [ 0, %126 ], [ 1, %129 ], !dbg !464
  %132 = getelementptr inbounds i8, i8* %121, i64 2, !dbg !465
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !466
  br label %133, !dbg !466

; <label>:133:                                    ; preds = %130, %126
  %134 = phi i8* [ %127, %126 ], [ %132, %130 ], !dbg !464
  %135 = phi i32 [ 0, %126 ], [ %131, %130 ], !dbg !467
  %136 = load i8, i8* %134, align 1, !dbg !468, !tbaa !387
  %137 = zext i8 %136 to i64, !dbg !468
  %138 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [103 x i8], [153 x i8] }>* @__hexdig to [256 x i8]*), i64 0, i64 %137, !dbg !468
  %139 = load i8, i8* %138, align 1, !dbg !468, !tbaa !387
  %140 = add i8 %139, -1, !dbg !470
  %141 = icmp ugt i8 %140, 24, !dbg !470
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !470
  br i1 %141, label %177, label %142, !dbg !470

; <label>:142:                                    ; preds = %133
  %143 = zext i8 %139 to i32, !dbg !468
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !473
  %144 = add nsw i32 %143, -16, !dbg !474
  %145 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !475
  %146 = load i8, i8* %145, align 1, !dbg !475, !tbaa !387
  %147 = zext i8 %146 to i64, !dbg !475
  %148 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [103 x i8], [153 x i8] }>* @__hexdig to [256 x i8]*), i64 0, i64 %147, !dbg !475
  %149 = load i8, i8* %148, align 1, !dbg !475, !tbaa !387
  %150 = add i8 %149, -1, !dbg !476
  %151 = icmp ult i8 %150, 25, !dbg !476
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !473
  br i1 %151, label %152, label %167, !dbg !473

; <label>:152:                                    ; preds = %142, %152
  %153 = phi i8 [ %164, %152 ], [ %149, %142 ]
  %154 = phi i8* [ %160, %152 ], [ %145, %142 ]
  %155 = phi i32 [ %159, %152 ], [ %144, %142 ]
  %156 = zext i8 %153 to i32, !dbg !475
  %157 = mul nsw i32 %155, 10, !dbg !477
  %158 = add nsw i32 %157, %156, !dbg !478
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !473
  %159 = add nsw i32 %158, -16, !dbg !474
  %160 = getelementptr inbounds i8, i8* %154, i64 1, !dbg !475
  %161 = load i8, i8* %160, align 1, !dbg !475, !tbaa !387
  %162 = zext i8 %161 to i64, !dbg !475
  %163 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [103 x i8], [153 x i8] }>* @__hexdig to [256 x i8]*), i64 0, i64 %162, !dbg !475
  %164 = load i8, i8* %163, align 1, !dbg !475, !tbaa !387
  %165 = add i8 %164, -1, !dbg !476
  %166 = icmp ult i8 %165, 25, !dbg !476
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !473
  br i1 %166, label %152, label %167, !dbg !473, !llvm.loop !479

; <label>:167:                                    ; preds = %152, %142
  %168 = phi i32 [ %143, %142 ], [ %158, %152 ]
  %169 = phi i32 [ %144, %142 ], [ %159, %152 ], !dbg !474
  %170 = phi i8* [ %145, %142 ], [ %160, %152 ], !dbg !475
  %171 = icmp eq i32 %135, 0, !dbg !481
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !483
  br i1 %171, label %174, label %172, !dbg !483

; <label>:172:                                    ; preds = %167
  %173 = sub i32 16, %168, !dbg !484
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !485
  br label %174, !dbg !485

; <label>:174:                                    ; preds = %167, %172
  %175 = phi i32 [ %173, %172 ], [ %169, %167 ], !dbg !474
  %176 = add nsw i32 %175, %124, !dbg !486
  br label %177, !dbg !487

; <label>:177:                                    ; preds = %133, %174
  %178 = phi i8* [ %170, %174 ], [ %121, %133 ]
  %179 = phi i32 [ %176, %174 ], [ %124, %133 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !488
  br label %180, !dbg !490

; <label>:180:                                    ; preds = %177, %119
  %181 = phi i8* [ %121, %119 ], [ %178, %177 ], !dbg !474
  %182 = phi i32 [ %124, %119 ], [ %179, %177 ], !dbg !474
  store i8* %181, i8** %1, align 8, !dbg !490, !tbaa !391
  %183 = icmp eq i32 %123, 0, !dbg !491
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !493
  br i1 %183, label %187, label %184, !dbg !493

; <label>:184:                                    ; preds = %180
  %185 = icmp eq i32 %122, 0, !dbg !494
  %186 = select i1 %185, i32 6, i32 0, !dbg !494
  br label %629, !dbg !495

; <label>:187:                                    ; preds = %180
  %188 = ptrtoint i8* %121 to i64, !dbg !496
  %189 = ptrtoint i8* %120 to i64, !dbg !496
  %190 = xor i64 %189, 4294967295, !dbg !497
  %191 = add i64 %190, %188, !dbg !497
  %192 = trunc i64 %191 to i32, !dbg !498
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !500
  %193 = icmp sgt i32 %192, 7, !dbg !502
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !504
  br i1 %193, label %194, label %200, !dbg !504

; <label>:194:                                    ; preds = %187, %194
  %195 = phi i32 [ %198, %194 ], [ %192, %187 ]
  %196 = phi i32 [ %197, %194 ], [ 0, %187 ]
  %197 = add nuw nsw i32 %196, 1, !dbg !505
  %198 = lshr i32 %195, 1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !506
  %199 = icmp ugt i32 %195, 15, !dbg !502
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !504
  br i1 %199, label %194, label %200, !dbg !504, !llvm.loop !507

; <label>:200:                                    ; preds = %194, %187
  %201 = phi i32 [ 0, %187 ], [ %197, %194 ], !dbg !509
  %202 = tail call %struct._Bigint* @_Balloc(%struct._reent* %0, i32 %201) #3, !dbg !510
  %203 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %202, i64 0, i32 5, i64 0, !dbg !512
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !515
  %204 = icmp ugt i8* %121, %120, !dbg !516
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !515
  br i1 %204, label %205, label %245, !dbg !515

; <label>:205:                                    ; preds = %200
  %206 = sub i64 0, %11
  %207 = sub i64 1, %11
  br label %208, !dbg !515

; <label>:208:                                    ; preds = %205, %231
  %209 = phi i32* [ %203, %205 ], [ %234, %231 ]
  %210 = phi i32 [ 0, %205 ], [ %242, %231 ]
  %211 = phi i32 [ 0, %205 ], [ %243, %231 ]
  %212 = phi i8* [ %121, %205 ], [ %215, %231 ]
  br label %213, !dbg !515

; <label>:213:                                    ; preds = %208, %224
  %214 = phi i8* [ %212, %208 ], [ %225, %224 ]
  %215 = getelementptr inbounds i8, i8* %214, i64 -1, !dbg !517
  %216 = load i8, i8* %215, align 1, !dbg !520, !tbaa !387
  %217 = icmp eq i8 %216, %14, !dbg !521
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !522
  br i1 %217, label %218, label %227, !dbg !522

; <label>:218:                                    ; preds = %213
  %219 = getelementptr inbounds i8, i8* %214, i64 %206, !dbg !523
  %220 = icmp ult i8* %219, %120, !dbg !524
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !525
  br i1 %220, label %227, label %221, !dbg !525

; <label>:221:                                    ; preds = %218
  %222 = tail call i32 @strncmp(i8* nonnull %219, i8* %10, i64 %11) #3, !dbg !526
  %223 = icmp eq i32 %222, 0, !dbg !527
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !528
  br i1 %223, label %224, label %227, !dbg !528

; <label>:224:                                    ; preds = %221
  %225 = getelementptr inbounds i8, i8* %215, i64 %207, !dbg !529
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !531
  %226 = icmp ugt i8* %225, %120, !dbg !516
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !515
  br i1 %226, label %213, label %245, !dbg !515, !llvm.loop !532

; <label>:227:                                    ; preds = %218, %221, %213
  %228 = icmp eq i32 %211, 32, !dbg !534
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !536
  br i1 %228, label %229, label %231, !dbg !536

; <label>:229:                                    ; preds = %227
  %230 = getelementptr inbounds i32, i32* %209, i64 1, !dbg !537
  store i32 %210, i32* %209, align 4, !dbg !539, !tbaa !540
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !542
  br label %231, !dbg !542

; <label>:231:                                    ; preds = %229, %227
  %232 = phi i32 [ 0, %229 ], [ %211, %227 ], !dbg !399
  %233 = phi i32 [ 0, %229 ], [ %210, %227 ], !dbg !399
  %234 = phi i32* [ %230, %229 ], [ %209, %227 ], !dbg !399
  %235 = load i8, i8* %215, align 1, !dbg !543, !tbaa !387
  %236 = zext i8 %235 to i64, !dbg !543
  %237 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [103 x i8], [153 x i8] }>* @__hexdig to [256 x i8]*), i64 0, i64 %236, !dbg !543
  %238 = load i8, i8* %237, align 1, !dbg !543, !tbaa !387
  %239 = and i8 %238, 15, !dbg !544
  %240 = zext i8 %239 to i32, !dbg !544
  %241 = shl i32 %240, %232, !dbg !545
  %242 = or i32 %241, %233, !dbg !546
  %243 = add nsw i32 %232, 4, !dbg !547
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !515
  %244 = icmp ugt i8* %215, %120, !dbg !516
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !515
  br i1 %244, label %208, label %245, !dbg !515, !llvm.loop !532

; <label>:245:                                    ; preds = %231, %224, %200
  %246 = phi i32 [ 0, %200 ], [ %210, %224 ], [ %242, %231 ]
  %247 = phi i32* [ %203, %200 ], [ %209, %224 ], [ %234, %231 ]
  %248 = getelementptr inbounds i32, i32* %247, i64 1, !dbg !548
  store i32 %246, i32* %247, align 4, !dbg !549, !tbaa !540
  %249 = ptrtoint i32* %248 to i64, !dbg !550
  %250 = ptrtoint i32* %203 to i64, !dbg !550
  %251 = sub i64 %249, %250, !dbg !550
  %252 = lshr exact i64 %251, 2, !dbg !550
  %253 = trunc i64 %252 to i32, !dbg !551
  %254 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %202, i64 0, i32 4, !dbg !552
  store i32 %253, i32* %254, align 4, !dbg !553, !tbaa !554
  %255 = trunc i64 %251 to i32, !dbg !556
  %256 = shl i32 %255, 3, !dbg !556
  %257 = tail call i32 @__hi0bits(i32 %246) #3, !dbg !557
  %258 = sub nsw i32 %256, %257, !dbg !558
  %259 = getelementptr inbounds %struct.FPI, %struct.FPI* %2, i64 0, i32 0, !dbg !559
  %260 = load i32, i32* %259, align 4, !dbg !559, !tbaa !560
  %261 = icmp sgt i32 %258, %260, !dbg !564
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !566
  br i1 %261, label %262, label %340, !dbg !566

; <label>:262:                                    ; preds = %245
  %263 = sub nsw i32 %258, %260, !dbg !567
  %264 = tail call i32 @__any_on(%struct._Bigint* nonnull %202, i32 %263) #3, !dbg !569
  %265 = icmp eq i32 %264, 0, !dbg !569
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !571
  br i1 %265, label %283, label %266, !dbg !571

; <label>:266:                                    ; preds = %262
  %267 = add nsw i32 %263, -1, !dbg !572
  %268 = ashr i32 %267, 5, !dbg !574
  %269 = sext i32 %268 to i64, !dbg !576
  %270 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %202, i64 0, i32 5, i64 %269, !dbg !576
  %271 = load i32, i32* %270, align 4, !dbg !576, !tbaa !540
  %272 = and i32 %267, 31, !dbg !577
  %273 = shl i32 1, %272, !dbg !578
  %274 = and i32 %271, %273, !dbg !579
  %275 = icmp eq i32 %274, 0, !dbg !579
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !580
  br i1 %275, label %283, label %276, !dbg !580

; <label>:276:                                    ; preds = %266
  %277 = icmp sgt i32 %263, 2, !dbg !581
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !584
  br i1 %277, label %278, label %283, !dbg !584

; <label>:278:                                    ; preds = %276
  %279 = add nsw i32 %263, -2, !dbg !585
  %280 = tail call i32 @__any_on(%struct._Bigint* nonnull %202, i32 %279) #3, !dbg !586
  %281 = icmp eq i32 %280, 0, !dbg !586
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !587
  br i1 %281, label %283, label %282, !dbg !587

; <label>:282:                                    ; preds = %278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !588
  br label %283, !dbg !588

; <label>:283:                                    ; preds = %278, %266, %262, %282, %276
  %284 = phi i32 [ 3, %282 ], [ 2, %278 ], [ 2, %276 ], [ 1, %266 ], [ 0, %262 ], !dbg !399
  %285 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %202, i64 0, i32 5, !dbg !602
  %286 = getelementptr inbounds [1 x i32], [1 x i32]* %285, i64 0, i64 0, !dbg !603
  %287 = ashr i32 %263, 5, !dbg !606
  %288 = load i32, i32* %254, align 4, !dbg !608, !tbaa !554
  %289 = icmp slt i32 %287, %288, !dbg !610
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !611
  br i1 %289, label %290, label %329, !dbg !611

; <label>:290:                                    ; preds = %283
  %291 = sext i32 %288 to i64, !dbg !612
  %292 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %202, i64 0, i32 5, i64 %291, !dbg !612
  %293 = sext i32 %287 to i64, !dbg !615
  %294 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %202, i64 0, i32 5, i64 %293, !dbg !615
  %295 = and i32 %263, 31, !dbg !616
  %296 = icmp eq i32 %295, 0, !dbg !616
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !618
  br i1 %296, label %297, label %298, !dbg !618

; <label>:297:                                    ; preds = %290
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !619
  br label %322, !dbg !620

; <label>:298:                                    ; preds = %290
  %299 = sub nsw i32 32, %295, !dbg !621
  %300 = load i32, i32* %294, align 4, !dbg !623, !tbaa !540
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !624
  %301 = getelementptr inbounds i32, i32* %294, i64 1, !dbg !625
  %302 = lshr i32 %300, %295, !dbg !625
  %303 = icmp ult i32* %301, %292, !dbg !628
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !624
  br i1 %303, label %304, label %316, !dbg !624

; <label>:304:                                    ; preds = %298, %304
  %305 = phi i32 [ %314, %304 ], [ %302, %298 ]
  %306 = phi i32* [ %313, %304 ], [ %301, %298 ]
  %307 = phi i32* [ %311, %304 ], [ %286, %298 ]
  %308 = load i32, i32* %306, align 4, !dbg !629, !tbaa !540
  %309 = shl i32 %308, %299, !dbg !630
  %310 = or i32 %309, %305, !dbg !631
  %311 = getelementptr inbounds i32, i32* %307, i64 1, !dbg !632
  store i32 %310, i32* %307, align 4, !dbg !633, !tbaa !540
  %312 = load i32, i32* %306, align 4, !dbg !634, !tbaa !540
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !624
  %313 = getelementptr inbounds i32, i32* %306, i64 1, !dbg !625
  %314 = lshr i32 %312, %295, !dbg !625
  %315 = icmp ult i32* %313, %292, !dbg !628
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !624
  br i1 %315, label %304, label %316, !dbg !624, !llvm.loop !635

; <label>:316:                                    ; preds = %304, %298
  %317 = phi i32* [ %286, %298 ], [ %311, %304 ], !dbg !625
  %318 = phi i32 [ %302, %298 ], [ %314, %304 ], !dbg !625
  store i32 %318, i32* %317, align 4, !dbg !638, !tbaa !540
  %319 = icmp eq i32 %318, 0, !dbg !640
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !641
  br i1 %319, label %329, label %320, !dbg !641

; <label>:320:                                    ; preds = %316
  %321 = getelementptr inbounds i32, i32* %317, i64 1, !dbg !642
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !643
  br label %329, !dbg !643

; <label>:322:                                    ; preds = %322, %297
  %323 = phi i32* [ %327, %322 ], [ %286, %297 ]
  %324 = phi i32* [ %325, %322 ], [ %294, %297 ]
  %325 = getelementptr inbounds i32, i32* %324, i64 1, !dbg !620
  %326 = load i32, i32* %324, align 4, !dbg !644, !tbaa !540
  %327 = getelementptr inbounds i32, i32* %323, i64 1, !dbg !645
  store i32 %326, i32* %323, align 4, !dbg !646, !tbaa !540
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !619
  %328 = icmp ult i32* %325, %292, !dbg !647
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !619
  br i1 %328, label %322, label %329, !dbg !619, !llvm.loop !648

; <label>:329:                                    ; preds = %322, %320, %316, %283
  %330 = phi i32* [ %321, %320 ], [ %317, %316 ], [ %286, %283 ], [ %327, %322 ], !dbg !651
  %331 = ptrtoint i32* %330 to i64, !dbg !652
  %332 = ptrtoint [1 x i32]* %285 to i64, !dbg !652
  %333 = sub i64 %331, %332, !dbg !652
  %334 = lshr exact i64 %333, 2, !dbg !652
  %335 = trunc i64 %334 to i32, !dbg !654
  store i32 %335, i32* %254, align 4, !dbg !655, !tbaa !554
  %336 = icmp eq i32 %335, 0, !dbg !656
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !657
  br i1 %336, label %337, label %338, !dbg !657

; <label>:337:                                    ; preds = %329
  store i32 0, i32* %286, align 8, !dbg !658, !tbaa !540
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !659
  br label %338, !dbg !659

; <label>:338:                                    ; preds = %329, %337
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !660
  %339 = add nsw i32 %263, %182, !dbg !661
  br label %347, !dbg !662

; <label>:340:                                    ; preds = %245
  %341 = icmp slt i32 %258, %260, !dbg !663
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !665
  br i1 %341, label %342, label %352, !dbg !665

; <label>:342:                                    ; preds = %340
  %343 = sub nsw i32 %260, %258, !dbg !666
  %344 = tail call %struct._Bigint* @__lshift(%struct._reent* %0, %struct._Bigint* nonnull %202, i32 %343) #3, !dbg !668
  %345 = sub nsw i32 %182, %343, !dbg !669
  %346 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %344, i64 0, i32 5, i64 0, !dbg !670
  br label %347, !dbg !671

; <label>:347:                                    ; preds = %338, %342
  %348 = phi i32 [ 0, %342 ], [ %284, %338 ]
  %349 = phi i32* [ %346, %342 ], [ %203, %338 ]
  %350 = phi i32 [ %345, %342 ], [ %339, %338 ]
  %351 = phi %struct._Bigint* [ %344, %342 ], [ %202, %338 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !672
  br label %352, !dbg !673

; <label>:352:                                    ; preds = %347, %340
  %353 = phi i32 [ 0, %340 ], [ %348, %347 ], !dbg !399
  %354 = phi i32* [ %203, %340 ], [ %349, %347 ], !dbg !399
  %355 = phi i32 [ %182, %340 ], [ %350, %347 ], !dbg !675
  %356 = phi %struct._Bigint* [ %202, %340 ], [ %351, %347 ], !dbg !399
  %357 = getelementptr inbounds %struct.FPI, %struct.FPI* %2, i64 0, i32 2, !dbg !673
  %358 = load i32, i32* %357, align 4, !dbg !673, !tbaa !676
  %359 = icmp sgt i32 %355, %358, !dbg !677
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !678
  br i1 %359, label %360, label %362, !dbg !678

; <label>:360:                                    ; preds = %611, %352
  %361 = phi %struct._Bigint* [ %356, %352 ], [ %538, %611 ], !dbg !679
  tail call void @_Bfree(%struct._reent* %0, %struct._Bigint* %361) #3, !dbg !684
  store %struct._Bigint* null, %struct._Bigint** %4, align 8, !dbg !686, !tbaa !391
  br label %629, !dbg !687

; <label>:362:                                    ; preds = %352
  %363 = getelementptr inbounds %struct.FPI, %struct.FPI* %2, i64 0, i32 1, !dbg !689
  %364 = load i32, i32* %363, align 4, !dbg !689, !tbaa !691
  %365 = icmp sgt i32 %364, %355, !dbg !692
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !693
  br i1 %365, label %366, label %470, !dbg !693

; <label>:366:                                    ; preds = %362
  %367 = sub nsw i32 %364, %355, !dbg !694
  %368 = icmp sgt i32 %260, %367, !dbg !696
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !698
  br i1 %368, label %390, label %369, !dbg !698

; <label>:369:                                    ; preds = %366
  %370 = getelementptr inbounds %struct.FPI, %struct.FPI* %2, i64 0, i32 3, !dbg !699
  %371 = load i32, i32* %370, align 4, !dbg !699, !tbaa !701
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !702
  switch i32 %371, label %389 [
    i32 1, label %372
    i32 2, label %382
    i32 3, label %384
  ], !dbg !702

; <label>:372:                                    ; preds = %369
  %373 = icmp eq i32 %260, %367, !dbg !703
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !706
  br i1 %373, label %374, label %389, !dbg !706

; <label>:374:                                    ; preds = %372
  %375 = icmp slt i32 %260, 2, !dbg !707
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !708
  br i1 %375, label %386, label %376, !dbg !708

; <label>:376:                                    ; preds = %374
  %377 = add nsw i32 %260, -1, !dbg !709
  %378 = tail call i32 @__any_on(%struct._Bigint* %356, i32 %377) #3, !dbg !710
  %379 = icmp eq i32 %378, 0, !dbg !710
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !711
  br i1 %379, label %389, label %380, !dbg !711

; <label>:380:                                    ; preds = %376
  %381 = load i32, i32* %363, align 4, !dbg !712, !tbaa !691
  br label %386, !dbg !711

; <label>:382:                                    ; preds = %369
  %383 = icmp eq i32 %5, 0, !dbg !715
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !717
  br i1 %383, label %386, label %389, !dbg !717

; <label>:384:                                    ; preds = %369
  %385 = icmp eq i32 %5, 0, !dbg !718
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !719
  br i1 %385, label %389, label %386, !dbg !719

; <label>:386:                                    ; preds = %380, %382, %384, %374
  %387 = phi i32 [ %381, %380 ], [ %364, %382 ], [ %364, %384 ], [ %364, %374 ], !dbg !712
  store i32 %387, i32* %3, align 4, !dbg !720, !tbaa !540
  %388 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %356, i64 0, i32 4, !dbg !721
  store i32 1, i32* %388, align 4, !dbg !722, !tbaa !554
  store i32 1, i32* %354, align 4, !dbg !723, !tbaa !540
  store %struct._Bigint* %356, %struct._Bigint** %4, align 8, !dbg !724, !tbaa !391
  br label %629, !dbg !725

; <label>:389:                                    ; preds = %376, %382, %384, %372, %369
  tail call void @_Bfree(%struct._reent* %0, %struct._Bigint* %356) #3, !dbg !726
  store %struct._Bigint* null, %struct._Bigint** %4, align 8, !dbg !727, !tbaa !391
  br label %629, !dbg !728

; <label>:390:                                    ; preds = %366
  %391 = add nsw i32 %367, -1, !dbg !729
  %392 = icmp eq i32 %353, 0, !dbg !730
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !732
  br i1 %392, label %393, label %397, !dbg !732

; <label>:393:                                    ; preds = %390
  %394 = icmp sgt i32 %367, 1, !dbg !733
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !735
  br i1 %394, label %395, label %399, !dbg !735

; <label>:395:                                    ; preds = %393
  %396 = tail call i32 @__any_on(%struct._Bigint* %356, i32 %391) #3, !dbg !736
  br label %397, !dbg !737

; <label>:397:                                    ; preds = %390, %395
  %398 = phi i32 [ %396, %395 ], [ 1, %390 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !738
  br label %399, !dbg !739

; <label>:399:                                    ; preds = %397, %393
  %400 = phi i32 [ 0, %393 ], [ %398, %397 ], !dbg !741
  %401 = ashr i32 %391, 5, !dbg !739
  %402 = sext i32 %401 to i64, !dbg !742
  %403 = getelementptr inbounds i32, i32* %354, i64 %402, !dbg !742
  %404 = load i32, i32* %403, align 4, !dbg !742, !tbaa !540
  %405 = and i32 %391, 31, !dbg !743
  %406 = shl i32 1, %405, !dbg !744
  %407 = and i32 %404, %406, !dbg !745
  %408 = icmp eq i32 %407, 0, !dbg !745
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !746
  br i1 %408, label %411, label %409, !dbg !746

; <label>:409:                                    ; preds = %399
  %410 = or i32 %400, 2, !dbg !747
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !748
  br label %411, !dbg !748

; <label>:411:                                    ; preds = %399, %409
  %412 = phi i32 [ %410, %409 ], [ %400, %399 ], !dbg !738
  %413 = sub nsw i32 %260, %367, !dbg !749
  %414 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %356, i64 0, i32 5, !dbg !752
  %415 = getelementptr inbounds [1 x i32], [1 x i32]* %414, i64 0, i64 0, !dbg !753
  %416 = ashr i32 %367, 5, !dbg !756
  %417 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %356, i64 0, i32 4, !dbg !758
  %418 = load i32, i32* %417, align 4, !dbg !758, !tbaa !554
  %419 = icmp slt i32 %416, %418, !dbg !759
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !760
  br i1 %419, label %420, label %459, !dbg !760

; <label>:420:                                    ; preds = %411
  %421 = sext i32 %418 to i64, !dbg !761
  %422 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %356, i64 0, i32 5, i64 %421, !dbg !761
  %423 = sext i32 %416 to i64, !dbg !763
  %424 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %356, i64 0, i32 5, i64 %423, !dbg !763
  %425 = and i32 %367, 31, !dbg !764
  %426 = icmp eq i32 %425, 0, !dbg !764
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !765
  br i1 %426, label %427, label %428, !dbg !765

; <label>:427:                                    ; preds = %420
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !766
  br label %452, !dbg !767

; <label>:428:                                    ; preds = %420
  %429 = sub nsw i32 32, %425, !dbg !768
  %430 = load i32, i32* %424, align 4, !dbg !769, !tbaa !540
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !770
  %431 = getelementptr inbounds i32, i32* %424, i64 1, !dbg !771
  %432 = lshr i32 %430, %425, !dbg !771
  %433 = icmp ult i32* %431, %422, !dbg !773
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !770
  br i1 %433, label %434, label %446, !dbg !770

; <label>:434:                                    ; preds = %428, %434
  %435 = phi i32 [ %444, %434 ], [ %432, %428 ]
  %436 = phi i32* [ %443, %434 ], [ %431, %428 ]
  %437 = phi i32* [ %441, %434 ], [ %415, %428 ]
  %438 = load i32, i32* %436, align 4, !dbg !774, !tbaa !540
  %439 = shl i32 %438, %429, !dbg !775
  %440 = or i32 %439, %435, !dbg !776
  %441 = getelementptr inbounds i32, i32* %437, i64 1, !dbg !777
  store i32 %440, i32* %437, align 4, !dbg !778, !tbaa !540
  %442 = load i32, i32* %436, align 4, !dbg !779, !tbaa !540
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !770
  %443 = getelementptr inbounds i32, i32* %436, i64 1, !dbg !771
  %444 = lshr i32 %442, %425, !dbg !771
  %445 = icmp ult i32* %443, %422, !dbg !773
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !770
  br i1 %445, label %434, label %446, !dbg !770, !llvm.loop !635

; <label>:446:                                    ; preds = %434, %428
  %447 = phi i32* [ %415, %428 ], [ %441, %434 ], !dbg !771
  %448 = phi i32 [ %432, %428 ], [ %444, %434 ], !dbg !771
  store i32 %448, i32* %447, align 4, !dbg !780, !tbaa !540
  %449 = icmp eq i32 %448, 0, !dbg !781
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !782
  br i1 %449, label %459, label %450, !dbg !782

; <label>:450:                                    ; preds = %446
  %451 = getelementptr inbounds i32, i32* %447, i64 1, !dbg !783
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !784
  br label %459, !dbg !784

; <label>:452:                                    ; preds = %452, %427
  %453 = phi i32* [ %457, %452 ], [ %415, %427 ]
  %454 = phi i32* [ %455, %452 ], [ %424, %427 ]
  %455 = getelementptr inbounds i32, i32* %454, i64 1, !dbg !767
  %456 = load i32, i32* %454, align 4, !dbg !785, !tbaa !540
  %457 = getelementptr inbounds i32, i32* %453, i64 1, !dbg !786
  store i32 %456, i32* %453, align 4, !dbg !787, !tbaa !540
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !766
  %458 = icmp ult i32* %455, %422, !dbg !788
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !766
  br i1 %458, label %452, label %459, !dbg !766, !llvm.loop !648

; <label>:459:                                    ; preds = %452, %450, %446, %411
  %460 = phi i32* [ %451, %450 ], [ %447, %446 ], [ %415, %411 ], [ %457, %452 ], !dbg !789
  %461 = ptrtoint i32* %460 to i64, !dbg !790
  %462 = ptrtoint [1 x i32]* %414 to i64, !dbg !790
  %463 = sub i64 %461, %462, !dbg !790
  %464 = lshr exact i64 %463, 2, !dbg !790
  %465 = trunc i64 %464 to i32, !dbg !791
  store i32 %465, i32* %417, align 4, !dbg !792, !tbaa !554
  %466 = icmp eq i32 %465, 0, !dbg !793
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !794
  br i1 %466, label %467, label %468, !dbg !794

; <label>:467:                                    ; preds = %459
  store i32 0, i32* %415, align 8, !dbg !795, !tbaa !540
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !796
  br label %468, !dbg !796

; <label>:468:                                    ; preds = %459, %467
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !797
  %469 = load i32, i32* %363, align 4, !dbg !798, !tbaa !691
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !799
  br label %470, !dbg !799

; <label>:470:                                    ; preds = %468, %362
  %471 = phi i32 [ 2, %468 ], [ 1, %362 ], !dbg !399
  %472 = phi i32 [ %413, %468 ], [ %260, %362 ], !dbg !399
  %473 = phi i32 [ %412, %468 ], [ %353, %362 ], !dbg !741
  %474 = phi i32 [ %469, %468 ], [ %355, %362 ], !dbg !672
  %475 = icmp eq i32 %473, 0, !dbg !800
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !801
  br i1 %475, label %625, label %476, !dbg !801

; <label>:476:                                    ; preds = %470
  %477 = getelementptr inbounds %struct.FPI, %struct.FPI* %2, i64 0, i32 3, !dbg !803
  %478 = load i32, i32* %477, align 4, !dbg !803, !tbaa !701
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !804
  switch i32 %478, label %490 [
    i32 3, label %491
    i32 1, label %479
    i32 2, label %488
  ], !dbg !804

; <label>:479:                                    ; preds = %476
  %480 = and i32 %473, 2, !dbg !805
  %481 = icmp eq i32 %480, 0, !dbg !805
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !808
  br i1 %481, label %490, label %482, !dbg !808

; <label>:482:                                    ; preds = %479
  %483 = load i32, i32* %354, align 4, !dbg !809, !tbaa !540
  %484 = or i32 %483, %473, !dbg !810
  %485 = and i32 %484, 1, !dbg !810
  %486 = icmp eq i32 %485, 0, !dbg !810
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !811
  br i1 %486, label %490, label %487, !dbg !811

; <label>:487:                                    ; preds = %482
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !812
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !813
  br label %494, !dbg !813

; <label>:488:                                    ; preds = %476
  %489 = sub nsw i32 1, %5, !dbg !814
  br label %491, !dbg !815

; <label>:490:                                    ; preds = %476, %482, %479
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !813
  br label %619, !dbg !813

; <label>:491:                                    ; preds = %476, %488
  %492 = phi i32 [ %489, %488 ], [ %5, %476 ], !dbg !816
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !816
  %493 = icmp eq i32 %492, 0, !dbg !817
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !813
  br i1 %493, label %619, label %494, !dbg !813

; <label>:494:                                    ; preds = %487, %491
  %495 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %356, i64 0, i32 4, !dbg !818
  %496 = load i32, i32* %495, align 4, !dbg !818, !tbaa !554
  %497 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %356, i64 0, i32 5, i64 0, !dbg !830
  %498 = sext i32 %496 to i64, !dbg !832
  %499 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %356, i64 0, i32 5, i64 %498, !dbg !832
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !834
  br label %500, !dbg !834

; <label>:500:                                    ; preds = %506, %494
  %501 = phi i32* [ %497, %494 ], [ %507, %506 ], !dbg !835
  %502 = load i32, i32* %501, align 4, !dbg !837, !tbaa !540
  %503 = icmp eq i32 %502, -1, !dbg !839
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !840
  br i1 %503, label %506, label %504, !dbg !840

; <label>:504:                                    ; preds = %500
  %505 = add i32 %502, 1, !dbg !841
  store i32 %505, i32* %501, align 4, !dbg !841, !tbaa !540
  br label %537, !dbg !843

; <label>:506:                                    ; preds = %500
  %507 = getelementptr inbounds i32, i32* %501, i64 1, !dbg !844
  store i32 0, i32* %501, align 4, !dbg !845, !tbaa !540
  %508 = icmp ult i32* %507, %499, !dbg !846
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !847
  br i1 %508, label %500, label %509, !dbg !847, !llvm.loop !848

; <label>:509:                                    ; preds = %506
  %510 = load i32, i32* %495, align 4, !dbg !851, !tbaa !554
  %511 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %356, i64 0, i32 2, !dbg !854
  %512 = load i32, i32* %511, align 4, !dbg !854, !tbaa !855
  %513 = icmp slt i32 %510, %512, !dbg !856
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !857
  br i1 %513, label %530, label %514, !dbg !857

; <label>:514:                                    ; preds = %509
  %515 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %356, i64 0, i32 1, !dbg !858
  %516 = load i32, i32* %515, align 8, !dbg !858, !tbaa !860
  %517 = add nsw i32 %516, 1, !dbg !861
  %518 = tail call %struct._Bigint* @_Balloc(%struct._reent* %0, i32 %517) #3, !dbg !862
  %519 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %518, i64 0, i32 3, !dbg !864
  %520 = bitcast i32* %519 to i8*, !dbg !864
  %521 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %356, i64 0, i32 3, !dbg !864
  %522 = bitcast i32* %521 to i8*, !dbg !864
  %523 = load i32, i32* %495, align 4, !dbg !864, !tbaa !554
  %524 = sext i32 %523 to i64, !dbg !864
  %525 = shl nsw i64 %524, 2, !dbg !864
  %526 = add nsw i64 %525, 8, !dbg !864
  %527 = tail call i8* @memcpy(i8* nonnull %520, i8* nonnull %522, i64 %526) #3, !dbg !864
  tail call void @_Bfree(%struct._reent* %0, %struct._Bigint* nonnull %356) #3, !dbg !865
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !866
  %528 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %518, i64 0, i32 4
  %529 = load i32, i32* %528, align 4, !dbg !867, !tbaa !554
  br label %530, !dbg !866

; <label>:530:                                    ; preds = %514, %509
  %531 = phi i32* [ %495, %509 ], [ %528, %514 ], !dbg !868
  %532 = phi i32 [ %510, %509 ], [ %529, %514 ], !dbg !867
  %533 = phi %struct._Bigint* [ %356, %509 ], [ %518, %514 ]
  %534 = add nsw i32 %532, 1, !dbg !867
  store i32 %534, i32* %531, align 4, !dbg !867, !tbaa !554
  %535 = sext i32 %532 to i64, !dbg !869
  %536 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %533, i64 0, i32 5, i64 %535, !dbg !869
  store i32 1, i32* %536, align 4, !dbg !870, !tbaa !540
  br label %537, !dbg !871

; <label>:537:                                    ; preds = %504, %530
  %538 = phi %struct._Bigint* [ %356, %504 ], [ %533, %530 ], !dbg !872
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !679
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !873
  %539 = icmp eq i32 %471, 2, !dbg !874
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !876
  br i1 %539, label %540, label %554, !dbg !876

; <label>:540:                                    ; preds = %537
  %541 = load i32, i32* %259, align 4, !dbg !877, !tbaa !560
  %542 = add nsw i32 %541, -1, !dbg !880
  %543 = icmp eq i32 %472, %542, !dbg !881
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !882
  br i1 %543, label %544, label %615, !dbg !882

; <label>:544:                                    ; preds = %540
  %545 = ashr i32 %472, 5, !dbg !883
  %546 = sext i32 %545 to i64, !dbg !884
  %547 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %538, i64 0, i32 5, i64 %546, !dbg !884
  %548 = load i32, i32* %547, align 4, !dbg !884, !tbaa !540
  %549 = and i32 %472, 31, !dbg !885
  %550 = shl i32 1, %549, !dbg !886
  %551 = and i32 %548, %550, !dbg !887
  %552 = icmp eq i32 %551, 0, !dbg !887
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !888
  br i1 %552, label %615, label %553, !dbg !888

; <label>:553:                                    ; preds = %544
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !889
  br label %615, !dbg !889

; <label>:554:                                    ; preds = %537
  %555 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %538, i64 0, i32 4, !dbg !890
  %556 = load i32, i32* %555, align 4, !dbg !890, !tbaa !554
  %557 = icmp sgt i32 %556, %496, !dbg !892
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !893
  br i1 %557, label %571, label %558, !dbg !893

; <label>:558:                                    ; preds = %554
  %559 = and i32 %472, 31, !dbg !894
  %560 = icmp eq i32 %559, 0, !dbg !895
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !896
  br i1 %560, label %615, label %561, !dbg !896

; <label>:561:                                    ; preds = %558
  %562 = add nsw i32 %496, -1, !dbg !897
  %563 = sext i32 %562 to i64, !dbg !898
  %564 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %538, i64 0, i32 5, i64 %563, !dbg !898
  %565 = load i32, i32* %564, align 4, !dbg !898, !tbaa !540
  %566 = tail call i32 @__hi0bits(i32 %565) #3, !dbg !899
  %567 = sub nsw i32 32, %559, !dbg !900
  %568 = icmp slt i32 %566, %567, !dbg !901
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !902
  br i1 %568, label %569, label %615, !dbg !902

; <label>:569:                                    ; preds = %561
  %570 = load i32, i32* %555, align 4, !dbg !903, !tbaa !554
  br label %571, !dbg !902

; <label>:571:                                    ; preds = %569, %554
  %572 = phi i32 [ %570, %569 ], [ %556, %554 ], !dbg !903
  %573 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %538, i64 0, i32 5, !dbg !907
  %574 = getelementptr inbounds [1 x i32], [1 x i32]* %573, i64 0, i64 0, !dbg !908
  %575 = icmp sgt i32 %572, 0, !dbg !912
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !913
  br i1 %575, label %576, label %602, !dbg !913

; <label>:576:                                    ; preds = %571
  %577 = sext i32 %572 to i64, !dbg !914
  %578 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %538, i64 0, i32 5, i64 %577, !dbg !914
  %579 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %538, i64 0, i32 5, i64 0, !dbg !916
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !917
  %580 = load i32, i32* %579, align 4, !dbg !918, !tbaa !540
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !919
  %581 = lshr i32 %580, 1, !dbg !920
  %582 = icmp eq i32 %572, 1, !dbg !922
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !919
  br i1 %582, label %596, label %583, !dbg !919

; <label>:583:                                    ; preds = %576
  %584 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %538, i64 0, i32 5, i64 1, !dbg !920
  br label %585, !dbg !923

; <label>:585:                                    ; preds = %583, %585
  %586 = phi i32 [ %594, %585 ], [ %581, %583 ]
  %587 = phi i32* [ %593, %585 ], [ %584, %583 ]
  %588 = phi i32* [ %592, %585 ], [ %574, %583 ]
  %589 = load i32, i32* %587, align 4, !dbg !923, !tbaa !540
  %590 = shl i32 %589, 31, !dbg !924
  %591 = or i32 %590, %586, !dbg !925
  %592 = getelementptr inbounds i32, i32* %588, i64 1, !dbg !926
  store i32 %591, i32* %588, align 4, !dbg !927, !tbaa !540
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !919
  %593 = getelementptr inbounds i32, i32* %587, i64 1, !dbg !920
  %594 = lshr i32 %589, 1, !dbg !920
  %595 = icmp ult i32* %593, %578, !dbg !922
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !919
  br i1 %595, label %585, label %596, !dbg !919, !llvm.loop !635

; <label>:596:                                    ; preds = %585, %576
  %597 = phi i32* [ %574, %576 ], [ %592, %585 ], !dbg !920
  %598 = phi i32 [ %581, %576 ], [ %594, %585 ], !dbg !920
  store i32 %598, i32* %597, align 4, !dbg !928, !tbaa !540
  %599 = icmp eq i32 %598, 0, !dbg !929
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !930
  br i1 %599, label %602, label %600, !dbg !930

; <label>:600:                                    ; preds = %596
  %601 = getelementptr inbounds i32, i32* %597, i64 1, !dbg !931
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !932
  br label %602, !dbg !932

; <label>:602:                                    ; preds = %600, %596, %571
  %603 = phi i32* [ %601, %600 ], [ %597, %596 ], [ %574, %571 ], !dbg !933
  %604 = ptrtoint i32* %603 to i64, !dbg !934
  %605 = ptrtoint [1 x i32]* %573 to i64, !dbg !934
  %606 = sub i64 %604, %605, !dbg !934
  %607 = lshr exact i64 %606, 2, !dbg !934
  %608 = trunc i64 %607 to i32, !dbg !935
  store i32 %608, i32* %555, align 4, !dbg !936, !tbaa !554
  %609 = icmp eq i32 %608, 0, !dbg !937
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !938
  br i1 %609, label %610, label %611, !dbg !938

; <label>:610:                                    ; preds = %602
  store i32 0, i32* %574, align 8, !dbg !939, !tbaa !540
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !940
  br label %611, !dbg !940

; <label>:611:                                    ; preds = %602, %610
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !941
  %612 = add nsw i32 %474, 1, !dbg !942
  %613 = load i32, i32* %357, align 4, !dbg !944, !tbaa !676
  %614 = icmp slt i32 %474, %613, !dbg !945
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !946
  br i1 %614, label %615, label %360, !dbg !946

; <label>:615:                                    ; preds = %544, %611, %558, %561, %540, %553
  %616 = phi i32 [ 1, %553 ], [ 2, %544 ], [ 2, %540 ], [ %471, %611 ], [ %471, %561 ], [ %471, %558 ], !dbg !947
  %617 = phi i32 [ %474, %553 ], [ %474, %544 ], [ %474, %540 ], [ %612, %611 ], [ %474, %561 ], [ %474, %558 ], !dbg !947
  %618 = or i32 %616, 32, !dbg !948
  br label %621, !dbg !949

; <label>:619:                                    ; preds = %490, %491
  %620 = or i32 %471, 16, !dbg !950
  br label %621

; <label>:621:                                    ; preds = %619, %615
  %622 = phi i32 [ %620, %619 ], [ %618, %615 ]
  %623 = phi i32 [ %474, %619 ], [ %617, %615 ]
  %624 = phi %struct._Bigint* [ %356, %619 ], [ %538, %615 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %625, !dbg !951

; <label>:625:                                    ; preds = %621, %470
  %626 = phi i32 [ %471, %470 ], [ %622, %621 ], !dbg !947
  %627 = phi i32 [ %474, %470 ], [ %623, %621 ], !dbg !952
  %628 = phi %struct._Bigint* [ %356, %470 ], [ %624, %621 ], !dbg !399
  store %struct._Bigint* %628, %struct._Bigint** %4, align 8, !dbg !951, !tbaa !391
  store i32 %627, i32* %3, align 4, !dbg !953, !tbaa !540
  br label %629, !dbg !954

; <label>:629:                                    ; preds = %625, %389, %386, %360, %184
  %630 = phi i32 [ %186, %184 ], [ 163, %360 ], [ 80, %389 ], [ 98, %386 ], [ %626, %625 ], !dbg !399
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !955
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !956
  ret i32 %630, !dbg !956
}

; Function Attrs: noredzone
declare dso_local %struct.lconv* @__localeconv_l(%struct.__locale_t*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @strncmp(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local %struct._Bigint* @_Balloc(%struct._reent*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @__hi0bits(i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @__any_on(%struct._Bigint*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local %struct._Bigint* @__lshift(%struct._reent*, %struct._Bigint*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @_Bfree(%struct._reent*, %struct._Bigint*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }
attributes #4 = { nounwind }

!llvm.module.flags = !{!44, !45, !46}
!llvm.ident = !{!47}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__hexdig", scope: !2, file: !3, line: 41, type: !41, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !23, globals: !40)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/gdtoa-gethex.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 36, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/gdtoa.h", directory: "/root/.unikraft/apps/redis/build")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22}
!9 = !DIEnumerator(name: "STRTOG_Zero", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "STRTOG_Normal", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "STRTOG_Denormal", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "STRTOG_Infinite", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "STRTOG_NaN", value: 4, isUnsigned: true)
!14 = !DIEnumerator(name: "STRTOG_NaNbits", value: 5, isUnsigned: true)
!15 = !DIEnumerator(name: "STRTOG_NoNumber", value: 6, isUnsigned: true)
!16 = !DIEnumerator(name: "STRTOG_Retmask", value: 7, isUnsigned: true)
!17 = !DIEnumerator(name: "STRTOG_Neg", value: 8, isUnsigned: true)
!18 = !DIEnumerator(name: "STRTOG_Inexlo", value: 16, isUnsigned: true)
!19 = !DIEnumerator(name: "STRTOG_Inexhi", value: 32, isUnsigned: true)
!20 = !DIEnumerator(name: "STRTOG_Inexact", value: 48, isUnsigned: true)
!21 = !DIEnumerator(name: "STRTOG_Underflow", value: 64, isUnsigned: true)
!22 = !DIEnumerator(name: "STRTOG_Overflow", value: 128, isUnsigned: true)
!23 = !{!24, !26, !29, !32, !37, !38}
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!28 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "Long", file: !33, line: 84, baseType: !34)
!33 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/mprec.h", directory: "/root/.unikraft/apps/redis/build")
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !35, line: 77, baseType: !36)
!35 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!36 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !39, line: 25, baseType: !7)
!39 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!40 = !{!0}
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 2048, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 256)
!44 = !{i32 2, !"Dwarf Version", i32 4}
!45 = !{i32 2, !"Debug Info Version", i32 3}
!46 = !{i32 1, !"wchar_size", i32 4}
!47 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!48 = distinct !DISubprogram(name: "__gethex", scope: !3, file: !3, line: 148, type: !49, isLocal: false, isDefinition: true, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !338)
!49 = !DISubroutineType(types: !50)
!50 = !{!36, !51, !321, !322, !332, !333, !36, !336}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !39, line: 569, size: 14912, elements: !53)
!53 = !{!54, !55, !130, !131, !132, !133, !137, !138, !203, !204, !208, !219, !220, !221, !223, !224, !225, !287, !306, !307, !312, !319}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !52, file: !39, line: 571, baseType: !36, size: 32)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !52, file: !39, line: 576, baseType: !56, size: 64, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !39, line: 287, baseType: !58)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !39, line: 181, size: 1408, elements: !59)
!59 = !{!60, !61, !62, !63, !65, !66, !71, !72, !74, !81, !85, !90, !94, !95, !96, !97, !101, !105, !106, !107, !109, !110, !114, !129}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !58, file: !39, line: 182, baseType: !24, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !58, file: !39, line: 183, baseType: !36, size: 32, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !58, file: !39, line: 184, baseType: !36, size: 32, offset: 96)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !58, file: !39, line: 185, baseType: !64, size: 16, offset: 128)
!64 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !58, file: !39, line: 186, baseType: !64, size: 16, offset: 144)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !58, file: !39, line: 187, baseType: !67, size: 128, offset: 192)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !39, line: 117, size: 128, elements: !68)
!68 = !{!69, !70}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !67, file: !39, line: 118, baseType: !24, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !67, file: !39, line: 119, baseType: !36, size: 32, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !58, file: !39, line: 188, baseType: !36, size: 32, offset: 320)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !58, file: !39, line: 195, baseType: !73, size: 64, offset: 384)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !58, file: !39, line: 197, baseType: !75, size: 64, offset: 448)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DISubroutineType(types: !77)
!77 = !{!78, !51, !73, !37, !36}
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !79, line: 145, baseType: !80)
!79 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!80 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !58, file: !39, line: 199, baseType: !82, size: 64, offset: 512)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DISubroutineType(types: !84)
!84 = !{!78, !51, !73, !26, !36}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !58, file: !39, line: 202, baseType: !86, size: 64, offset: 576)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DISubroutineType(types: !88)
!88 = !{!89, !51, !73, !89, !36}
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !79, line: 114, baseType: !80)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !58, file: !39, line: 203, baseType: !91, size: 64, offset: 640)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DISubroutineType(types: !93)
!93 = !{!36, !51, !73}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !58, file: !39, line: 206, baseType: !67, size: 128, offset: 704)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !58, file: !39, line: 207, baseType: !24, size: 64, offset: 832)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !58, file: !39, line: 208, baseType: !36, size: 32, offset: 896)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !58, file: !39, line: 211, baseType: !98, size: 24, offset: 928)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 24, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 3)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !58, file: !39, line: 212, baseType: !102, size: 8, offset: 952)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 8, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 1)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !58, file: !39, line: 215, baseType: !67, size: 128, offset: 960)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !58, file: !39, line: 218, baseType: !36, size: 32, offset: 1088)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !58, file: !39, line: 219, baseType: !108, size: 64, offset: 1152)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !79, line: 44, baseType: !80)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !58, file: !39, line: 222, baseType: !51, size: 64, offset: 1216)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !58, file: !39, line: 226, baseType: !111, size: 32, offset: 1280)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !79, line: 175, baseType: !112)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !113, line: 12, baseType: !36)
!113 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !58, file: !39, line: 228, baseType: !115, size: 64, offset: 1312)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !79, line: 171, baseType: !116)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !79, line: 163, size: 64, elements: !117)
!117 = !{!118, !119}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !116, file: !79, line: 165, baseType: !36, size: 32)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !116, file: !79, line: 170, baseType: !120, size: 32, offset: 32)
!120 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !116, file: !79, line: 166, size: 32, elements: !121)
!121 = !{!122, !125}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !120, file: !79, line: 168, baseType: !123, size: 32)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !124, line: 124, baseType: !7)
!124 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!125 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !120, file: !79, line: 169, baseType: !126, size: 32)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 32, elements: !127)
!127 = !{!128}
!128 = !DISubrange(count: 4)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !58, file: !39, line: 229, baseType: !36, size: 32, offset: 1376)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !52, file: !39, line: 576, baseType: !56, size: 64, offset: 128)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !52, file: !39, line: 576, baseType: !56, size: 64, offset: 192)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !52, file: !39, line: 578, baseType: !36, size: 32, offset: 256)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !52, file: !39, line: 579, baseType: !134, size: 200, offset: 288)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 200, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 25)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !52, file: !39, line: 582, baseType: !36, size: 32, offset: 512)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !52, file: !39, line: 583, baseType: !139, size: 64, offset: 576)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !141, line: 178, size: 3392, elements: !142)
!141 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/../locale/setlocale.h", directory: "/root/.unikraft/apps/redis/build")
!142 = !{!143, !148, !156, !165, !166, !167, !195, !199, !202}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "categories", scope: !140, file: !141, line: 180, baseType: !144, size: 1792)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 1792, elements: !145)
!145 = !{!146, !147}
!146 = !DISubrange(count: 7)
!147 = !DISubrange(count: 32)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "wctomb", scope: !140, file: !141, line: 181, baseType: !149, size: 64, offset: 1792)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DISubroutineType(types: !151)
!151 = !{!36, !51, !37, !152, !153}
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !124, line: 83, baseType: !36)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !155, line: 86, baseType: !115)
!155 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/wchar.h", directory: "/root/.unikraft/apps/redis/build")
!156 = !DIDerivedType(tag: DW_TAG_member, name: "mbtowc", scope: !140, file: !141, line: 183, baseType: !157, size: 64, offset: 1856)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DISubroutineType(types: !159)
!159 = !{!36, !51, !160, !26, !161, !153}
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !162, line: 40, baseType: !163)
!162 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !79, line: 129, baseType: !164)
!164 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "cjk_lang", scope: !140, file: !141, line: 185, baseType: !36, size: 32, offset: 1920)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_ptr", scope: !140, file: !141, line: 186, baseType: !37, size: 64, offset: 1984)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "lconv", scope: !140, file: !141, line: 187, baseType: !168, size: 768, offset: 2048)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !169, line: 42, size: 768, elements: !170)
!169 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/locale.h", directory: "/root/.unikraft/apps/redis/build")
!170 = !{!171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "decimal_point", scope: !168, file: !169, line: 44, baseType: !37, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "thousands_sep", scope: !168, file: !169, line: 45, baseType: !37, size: 64, offset: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "grouping", scope: !168, file: !169, line: 46, baseType: !37, size: 64, offset: 128)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "int_curr_symbol", scope: !168, file: !169, line: 47, baseType: !37, size: 64, offset: 192)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "currency_symbol", scope: !168, file: !169, line: 48, baseType: !37, size: 64, offset: 256)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "mon_decimal_point", scope: !168, file: !169, line: 49, baseType: !37, size: 64, offset: 320)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "mon_thousands_sep", scope: !168, file: !169, line: 50, baseType: !37, size: 64, offset: 384)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "mon_grouping", scope: !168, file: !169, line: 51, baseType: !37, size: 64, offset: 448)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "positive_sign", scope: !168, file: !169, line: 52, baseType: !37, size: 64, offset: 512)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "negative_sign", scope: !168, file: !169, line: 53, baseType: !37, size: 64, offset: 576)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "int_frac_digits", scope: !168, file: !169, line: 54, baseType: !28, size: 8, offset: 640)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "frac_digits", scope: !168, file: !169, line: 55, baseType: !28, size: 8, offset: 648)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "p_cs_precedes", scope: !168, file: !169, line: 56, baseType: !28, size: 8, offset: 656)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "p_sep_by_space", scope: !168, file: !169, line: 57, baseType: !28, size: 8, offset: 664)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "n_cs_precedes", scope: !168, file: !169, line: 58, baseType: !28, size: 8, offset: 672)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "n_sep_by_space", scope: !168, file: !169, line: 59, baseType: !28, size: 8, offset: 680)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "p_sign_posn", scope: !168, file: !169, line: 60, baseType: !28, size: 8, offset: 688)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "n_sign_posn", scope: !168, file: !169, line: 61, baseType: !28, size: 8, offset: 696)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_cs_precedes", scope: !168, file: !169, line: 62, baseType: !28, size: 8, offset: 704)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sep_by_space", scope: !168, file: !169, line: 63, baseType: !28, size: 8, offset: 712)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sign_posn", scope: !168, file: !169, line: 64, baseType: !28, size: 8, offset: 720)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_cs_precedes", scope: !168, file: !169, line: 65, baseType: !28, size: 8, offset: 728)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sep_by_space", scope: !168, file: !169, line: 66, baseType: !28, size: 8, offset: 736)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sign_posn", scope: !168, file: !169, line: 67, baseType: !28, size: 8, offset: 744)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cur_max", scope: !140, file: !141, line: 189, baseType: !196, size: 16, offset: 2816)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 16, elements: !197)
!197 = !{!198}
!198 = !DISubrange(count: 2)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_codeset", scope: !140, file: !141, line: 190, baseType: !200, size: 256, offset: 2832)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 256, elements: !201)
!201 = !{!147}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "message_codeset", scope: !140, file: !141, line: 191, baseType: !200, size: 256, offset: 3088)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !52, file: !39, line: 585, baseType: !36, size: 32, offset: 640)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !52, file: !39, line: 587, baseType: !205, size: 64, offset: 704)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DISubroutineType(types: !207)
!207 = !{null, !51}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !52, file: !39, line: 590, baseType: !209, size: 64, offset: 768)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !39, line: 47, size: 256, elements: !211)
!211 = !{!212, !213, !214, !215, !216, !217}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !210, file: !39, line: 49, baseType: !209, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !210, file: !39, line: 50, baseType: !36, size: 32, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !210, file: !39, line: 50, baseType: !36, size: 32, offset: 96)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !210, file: !39, line: 50, baseType: !36, size: 32, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !210, file: !39, line: 50, baseType: !36, size: 32, offset: 160)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !210, file: !39, line: 51, baseType: !218, size: 32, offset: 192)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 32, elements: !103)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !52, file: !39, line: 591, baseType: !36, size: 32, offset: 832)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !52, file: !39, line: 592, baseType: !209, size: 64, offset: 896)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !52, file: !39, line: 593, baseType: !222, size: 64, offset: 960)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !52, file: !39, line: 596, baseType: !36, size: 32, offset: 1024)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !52, file: !39, line: 597, baseType: !37, size: 64, offset: 1088)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !52, file: !39, line: 632, baseType: !226, size: 2880, offset: 1152)
!226 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !52, file: !39, line: 599, size: 2880, elements: !227)
!227 = !{!228, !278}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !226, file: !39, line: 622, baseType: !229, size: 1728)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !226, file: !39, line: 601, size: 1728, elements: !230)
!230 = !{!231, !232, !233, !237, !249, !250, !252, !260, !261, !262, !263, !267, !271, !272, !273, !274, !275, !276, !277}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !229, file: !39, line: 603, baseType: !7, size: 32)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !229, file: !39, line: 604, baseType: !37, size: 64, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !229, file: !39, line: 605, baseType: !234, size: 208, offset: 128)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 208, elements: !235)
!235 = !{!236}
!236 = !DISubrange(count: 26)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !229, file: !39, line: 606, baseType: !238, size: 288, offset: 352)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !39, line: 55, size: 288, elements: !239)
!239 = !{!240, !241, !242, !243, !244, !245, !246, !247, !248}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !238, file: !39, line: 57, baseType: !36, size: 32)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !238, file: !39, line: 58, baseType: !36, size: 32, offset: 32)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !238, file: !39, line: 59, baseType: !36, size: 32, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !238, file: !39, line: 60, baseType: !36, size: 32, offset: 96)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !238, file: !39, line: 61, baseType: !36, size: 32, offset: 128)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !238, file: !39, line: 62, baseType: !36, size: 32, offset: 160)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !238, file: !39, line: 63, baseType: !36, size: 32, offset: 192)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !238, file: !39, line: 64, baseType: !36, size: 32, offset: 224)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !238, file: !39, line: 65, baseType: !36, size: 32, offset: 256)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !229, file: !39, line: 607, baseType: !36, size: 32, offset: 640)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !229, file: !39, line: 608, baseType: !251, size: 64, offset: 704)
!251 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !229, file: !39, line: 609, baseType: !253, size: 112, offset: 768)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !39, line: 319, size: 112, elements: !254)
!254 = !{!255, !258, !259}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !253, file: !39, line: 320, baseType: !256, size: 48)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 48, elements: !99)
!257 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !253, file: !39, line: 321, baseType: !256, size: 48, offset: 48)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !253, file: !39, line: 322, baseType: !257, size: 16, offset: 96)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !229, file: !39, line: 610, baseType: !115, size: 64, offset: 896)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !229, file: !39, line: 611, baseType: !115, size: 64, offset: 960)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !229, file: !39, line: 612, baseType: !115, size: 64, offset: 1024)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !229, file: !39, line: 613, baseType: !264, size: 64, offset: 1088)
!264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 64, elements: !265)
!265 = !{!266}
!266 = !DISubrange(count: 8)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !229, file: !39, line: 614, baseType: !268, size: 192, offset: 1152)
!268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 192, elements: !269)
!269 = !{!270}
!270 = !DISubrange(count: 24)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !229, file: !39, line: 615, baseType: !36, size: 32, offset: 1344)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !229, file: !39, line: 616, baseType: !115, size: 64, offset: 1376)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !229, file: !39, line: 617, baseType: !115, size: 64, offset: 1440)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !229, file: !39, line: 618, baseType: !115, size: 64, offset: 1504)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !229, file: !39, line: 619, baseType: !115, size: 64, offset: 1568)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !229, file: !39, line: 620, baseType: !115, size: 64, offset: 1632)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !229, file: !39, line: 621, baseType: !36, size: 32, offset: 1696)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !226, file: !39, line: 631, baseType: !279, size: 2880)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !226, file: !39, line: 626, size: 2880, elements: !280)
!280 = !{!281, !285}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !279, file: !39, line: 629, baseType: !282, size: 1920)
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 1920, elements: !283)
!283 = !{!284}
!284 = !DISubrange(count: 30)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !279, file: !39, line: 630, baseType: !286, size: 960, offset: 1920)
!286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 960, elements: !283)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !52, file: !39, line: 636, baseType: !288, size: 64, offset: 4032)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !39, line: 93, size: 6336, elements: !290)
!290 = !{!291, !292, !293, !298}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !289, file: !39, line: 94, baseType: !288, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !289, file: !39, line: 95, baseType: !36, size: 32, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !289, file: !39, line: 97, baseType: !294, size: 2048, offset: 128)
!294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 2048, elements: !201)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DISubroutineType(types: !297)
!297 = !{null}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !289, file: !39, line: 98, baseType: !299, size: 4160, offset: 2176)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !39, line: 74, size: 4160, elements: !300)
!300 = !{!301, !303, !304, !305}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !299, file: !39, line: 75, baseType: !302, size: 2048)
!302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 2048, elements: !201)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !299, file: !39, line: 76, baseType: !302, size: 2048, offset: 2048)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !299, file: !39, line: 78, baseType: !38, size: 32, offset: 4096)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !299, file: !39, line: 81, baseType: !38, size: 32, offset: 4128)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !52, file: !39, line: 637, baseType: !289, size: 6336, offset: 4096)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !52, file: !39, line: 641, baseType: !308, size: 64, offset: 10432)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{null, !36}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !52, file: !39, line: 646, baseType: !313, size: 192, offset: 10496)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !39, line: 291, size: 192, elements: !314)
!314 = !{!315, !317, !318}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !313, file: !39, line: 293, baseType: !316, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !313, file: !39, line: 294, baseType: !36, size: 32, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !313, file: !39, line: 295, baseType: !56, size: 64, offset: 128)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !52, file: !39, line: 648, baseType: !320, size: 4224, offset: 10688)
!320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 4224, elements: !99)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !324)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "FPI", file: !6, line: 63, baseType: !325)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FPI", file: !6, line: 57, size: 160, elements: !326)
!326 = !{!327, !328, !329, !330, !331}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "nbits", scope: !325, file: !6, line: 58, baseType: !36, size: 32)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "emin", scope: !325, file: !6, line: 59, baseType: !36, size: 32, offset: 32)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "emax", scope: !325, file: !6, line: 60, baseType: !36, size: 32, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "rounding", scope: !325, file: !6, line: 61, baseType: !36, size: 32, offset: 96)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "sudden_underflow", scope: !325, file: !6, line: 62, baseType: !36, size: 32, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Bigint", file: !33, line: 352, baseType: !210)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "locale_t", file: !337, line: 10, baseType: !139)
!337 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/xlocale.h", directory: "/root/.unikraft/apps/redis/build")
!338 = !{!339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !363, !364, !365, !366, !367}
!339 = !DILocalVariable(name: "ptr", arg: 1, scope: !48, file: !3, line: 148, type: !51)
!340 = !DILocalVariable(name: "sp", arg: 2, scope: !48, file: !3, line: 148, type: !321)
!341 = !DILocalVariable(name: "fpi", arg: 3, scope: !48, file: !3, line: 148, type: !322)
!342 = !DILocalVariable(name: "exp", arg: 4, scope: !48, file: !3, line: 149, type: !332)
!343 = !DILocalVariable(name: "bp", arg: 5, scope: !48, file: !3, line: 149, type: !333)
!344 = !DILocalVariable(name: "sign", arg: 6, scope: !48, file: !3, line: 149, type: !36)
!345 = !DILocalVariable(name: "loc", arg: 7, scope: !48, file: !3, line: 149, type: !336)
!346 = !DILocalVariable(name: "b", scope: !48, file: !3, line: 151, type: !334)
!347 = !DILocalVariable(name: "decpt", scope: !48, file: !3, line: 152, type: !30)
!348 = !DILocalVariable(name: "s0", scope: !48, file: !3, line: 152, type: !30)
!349 = !DILocalVariable(name: "s", scope: !48, file: !3, line: 152, type: !30)
!350 = !DILocalVariable(name: "s1", scope: !48, file: !3, line: 152, type: !30)
!351 = !DILocalVariable(name: "esign", scope: !48, file: !3, line: 153, type: !36)
!352 = !DILocalVariable(name: "havedig", scope: !48, file: !3, line: 153, type: !36)
!353 = !DILocalVariable(name: "irv", scope: !48, file: !3, line: 153, type: !36)
!354 = !DILocalVariable(name: "k", scope: !48, file: !3, line: 153, type: !36)
!355 = !DILocalVariable(name: "n", scope: !48, file: !3, line: 153, type: !36)
!356 = !DILocalVariable(name: "nbits", scope: !48, file: !3, line: 153, type: !36)
!357 = !DILocalVariable(name: "up", scope: !48, file: !3, line: 153, type: !36)
!358 = !DILocalVariable(name: "zret", scope: !48, file: !3, line: 153, type: !36)
!359 = !DILocalVariable(name: "L", scope: !48, file: !3, line: 154, type: !38)
!360 = !DILocalVariable(name: "lostbits", scope: !48, file: !3, line: 154, type: !38)
!361 = !DILocalVariable(name: "x", scope: !48, file: !3, line: 154, type: !362)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!363 = !DILocalVariable(name: "e", scope: !48, file: !3, line: 155, type: !32)
!364 = !DILocalVariable(name: "e1", scope: !48, file: !3, line: 155, type: !32)
!365 = !DILocalVariable(name: "decimalpoint", scope: !48, file: !3, line: 156, type: !24)
!366 = !DILocalVariable(name: "decp_len", scope: !48, file: !3, line: 158, type: !161)
!367 = !DILocalVariable(name: "decp_end", scope: !48, file: !3, line: 159, type: !25)
!368 = !DILocation(line: 148, column: 24, scope: !48)
!369 = !DILocation(line: 148, column: 42, scope: !48)
!370 = !DILocation(line: 148, column: 57, scope: !48)
!371 = !DILocation(line: 149, column: 8, scope: !48)
!372 = !DILocation(line: 149, column: 23, scope: !48)
!373 = !DILocation(line: 149, column: 31, scope: !48)
!374 = !DILocation(line: 149, column: 46, scope: !48)
!375 = !DILocation(line: 157, column: 11, scope: !48)
!376 = !DILocation(line: 157, column: 33, scope: !48)
!377 = !{!378, !379, i64 0}
!378 = !{!"lconv", !379, i64 0, !379, i64 8, !379, i64 16, !379, i64 24, !379, i64 32, !379, i64 40, !379, i64 48, !379, i64 56, !379, i64 64, !379, i64 72, !380, i64 80, !380, i64 81, !380, i64 82, !380, i64 83, !380, i64 84, !380, i64 85, !380, i64 86, !380, i64 87, !380, i64 88, !380, i64 89, !380, i64 90, !380, i64 91, !380, i64 92, !380, i64 93}
!379 = !{!"any pointer", !380, i64 0}
!380 = !{!"omnipotent char", !381, i64 0}
!381 = !{!"Simple C/C++ TBAA"}
!382 = !DILocation(line: 156, column: 17, scope: !48)
!383 = !DILocation(line: 158, column: 20, scope: !48)
!384 = !DILocation(line: 158, column: 9, scope: !48)
!385 = !DILocation(line: 159, column: 49, scope: !48)
!386 = !DILocation(line: 159, column: 27, scope: !48)
!387 = !{!380, !380, i64 0}
!388 = !DILocation(line: 159, column: 16, scope: !48)
!389 = !DILocation(line: 153, column: 13, scope: !48)
!390 = !DILocation(line: 162, column: 7, scope: !48)
!391 = !{!379, !379, i64 0}
!392 = !DILocation(line: 162, column: 36, scope: !48)
!393 = !DILocation(line: 152, column: 32, scope: !48)
!394 = !DILocation(line: 163, column: 2, scope: !48)
!395 = !DILocation(line: 163, column: 8, scope: !48)
!396 = !DILocation(line: 163, column: 20, scope: !48)
!397 = !DILocation(line: 164, column: 10, scope: !48)
!398 = distinct !{!398, !394, !397}
!399 = !DILocation(line: 0, scope: !48)
!400 = !DILocation(line: 152, column: 37, scope: !48)
!401 = !DILocation(line: 152, column: 24, scope: !48)
!402 = !DILocation(line: 153, column: 44, scope: !48)
!403 = !DILocation(line: 155, column: 7, scope: !48)
!404 = !DILocation(line: 170, column: 7, scope: !405)
!405 = distinct !DILexicalBlock(scope: !48, file: !3, line: 170, column: 6)
!406 = !DILocation(line: 170, column: 6, scope: !48)
!407 = !DILocation(line: 185, column: 8, scope: !48)
!408 = !DILocation(line: 172, column: 7, scope: !409)
!409 = distinct !DILexicalBlock(scope: !410, file: !3, line: 172, column: 7)
!410 = distinct !DILexicalBlock(scope: !405, file: !3, line: 170, column: 25)
!411 = !DILocation(line: 173, column: 19, scope: !409)
!412 = !DILocation(line: 172, column: 7, scope: !410)
!413 = !DILocation(line: 175, column: 14, scope: !410)
!414 = !DILocation(line: 176, column: 8, scope: !415)
!415 = distinct !DILexicalBlock(scope: !410, file: !3, line: 176, column: 7)
!416 = !DILocation(line: 176, column: 7, scope: !410)
!417 = !DILocation(line: 178, column: 12, scope: !410)
!418 = !DILocation(line: 178, column: 3, scope: !410)
!419 = !DILocation(line: 180, column: 7, scope: !410)
!420 = !DILocation(line: 179, column: 5, scope: !410)
!421 = !DILocation(line: 178, column: 9, scope: !410)
!422 = distinct !{!422, !418, !420}
!423 = !DILocation(line: 180, column: 7, scope: !424)
!424 = distinct !DILexicalBlock(scope: !410, file: !3, line: 180, column: 7)
!425 = !DILocation(line: 181, column: 4, scope: !424)
!426 = !DILocation(line: 0, scope: !410)
!427 = !DILocation(line: 184, column: 3, scope: !410)
!428 = !DILocation(line: 0, scope: !424)
!429 = !DILocation(line: 185, column: 2, scope: !48)
!430 = !DILocation(line: 186, column: 4, scope: !48)
!431 = distinct !{!431, !429, !430}
!432 = !DILocation(line: 187, column: 6, scope: !433)
!433 = distinct !DILexicalBlock(scope: !48, file: !3, line: 187, column: 6)
!434 = !DILocation(line: 188, column: 18, scope: !433)
!435 = !DILocation(line: 189, column: 10, scope: !433)
!436 = !DILocation(line: 189, column: 6, scope: !433)
!437 = !DILocation(line: 190, column: 14, scope: !438)
!438 = distinct !DILexicalBlock(scope: !433, file: !3, line: 189, column: 17)
!439 = !DILocation(line: 191, column: 3, scope: !438)
!440 = !DILocation(line: 191, column: 9, scope: !438)
!441 = !DILocation(line: 192, column: 5, scope: !438)
!442 = distinct !{!442, !439, !441}
!443 = !DILocation(line: 0, scope: !438)
!444 = !DILocation(line: 194, column: 6, scope: !445)
!445 = distinct !DILexicalBlock(scope: !48, file: !3, line: 194, column: 6)
!446 = !DILocation(line: 194, column: 6, scope: !48)
!447 = !DILocation(line: 195, column: 18, scope: !445)
!448 = !DILocation(line: 195, column: 10, scope: !445)
!449 = !DILocation(line: 195, column: 27, scope: !445)
!450 = !DILocation(line: 195, column: 7, scope: !445)
!451 = !DILocation(line: 195, column: 3, scope: !445)
!452 = !DILocation(line: 165, column: 5, scope: !48)
!453 = !DILocation(line: 161, column: 10, scope: !48)
!454 = !DILocation(line: 152, column: 41, scope: !48)
!455 = !DILocation(line: 198, column: 9, scope: !48)
!456 = !DILocation(line: 198, column: 2, scope: !48)
!457 = !DILocation(line: 153, column: 6, scope: !48)
!458 = !DILocation(line: 202, column: 11, scope: !459)
!459 = distinct !DILexicalBlock(scope: !48, file: !3, line: 198, column: 13)
!460 = !DILocation(line: 202, column: 10, scope: !459)
!461 = !DILocation(line: 202, column: 3, scope: !459)
!462 = !DILocation(line: 204, column: 4, scope: !463)
!463 = distinct !DILexicalBlock(scope: !459, file: !3, line: 202, column: 16)
!464 = !DILocation(line: 0, scope: !463)
!465 = !DILocation(line: 207, column: 5, scope: !463)
!466 = !DILocation(line: 208, column: 5, scope: !463)
!467 = !DILocation(line: 201, column: 9, scope: !459)
!468 = !DILocation(line: 209, column: 12, scope: !469)
!469 = distinct !DILexicalBlock(scope: !459, file: !3, line: 209, column: 7)
!470 = !DILocation(line: 209, column: 35, scope: !469)
!471 = !DILocation(line: 153, column: 30, scope: !48)
!472 = !DILocation(line: 155, column: 10, scope: !48)
!473 = !DILocation(line: 214, column: 3, scope: !459)
!474 = !DILocation(line: 0, scope: !459)
!475 = !DILocation(line: 214, column: 14, scope: !459)
!476 = !DILocation(line: 214, column: 38, scope: !459)
!477 = !DILocation(line: 215, column: 11, scope: !459)
!478 = !DILocation(line: 215, column: 15, scope: !459)
!479 = distinct !{!479, !473, !480}
!480 = !DILocation(line: 215, column: 21, scope: !459)
!481 = !DILocation(line: 216, column: 7, scope: !482)
!482 = distinct !DILexicalBlock(scope: !459, file: !3, line: 216, column: 7)
!483 = !DILocation(line: 216, column: 7, scope: !459)
!484 = !DILocation(line: 217, column: 9, scope: !482)
!485 = !DILocation(line: 217, column: 4, scope: !482)
!486 = !DILocation(line: 218, column: 5, scope: !459)
!487 = !DILocation(line: 219, column: 4, scope: !459)
!488 = !DILocation(line: 0, scope: !489)
!489 = distinct !DILexicalBlock(scope: !469, file: !3, line: 209, column: 48)
!490 = !DILocation(line: 220, column: 6, scope: !48)
!491 = !DILocation(line: 221, column: 6, scope: !492)
!492 = distinct !DILexicalBlock(scope: !48, file: !3, line: 221, column: 6)
!493 = !DILocation(line: 221, column: 6, scope: !48)
!494 = !DILocation(line: 222, column: 10, scope: !492)
!495 = !DILocation(line: 222, column: 3, scope: !492)
!496 = !DILocation(line: 223, column: 9, scope: !48)
!497 = !DILocation(line: 223, column: 14, scope: !48)
!498 = !DILocation(line: 223, column: 6, scope: !48)
!499 = !DILocation(line: 153, column: 27, scope: !48)
!500 = !DILocation(line: 224, column: 6, scope: !501)
!501 = distinct !DILexicalBlock(scope: !48, file: !3, line: 224, column: 2)
!502 = !DILocation(line: 224, column: 15, scope: !503)
!503 = distinct !DILexicalBlock(scope: !501, file: !3, line: 224, column: 2)
!504 = !DILocation(line: 224, column: 2, scope: !501)
!505 = !DILocation(line: 225, column: 4, scope: !503)
!506 = !DILocation(line: 224, column: 2, scope: !503)
!507 = distinct !{!507, !504, !508}
!508 = !DILocation(line: 225, column: 4, scope: !501)
!509 = !DILocation(line: 0, scope: !503)
!510 = !DILocation(line: 226, column: 6, scope: !48)
!511 = !DILocation(line: 151, column: 11, scope: !48)
!512 = !DILocation(line: 227, column: 6, scope: !48)
!513 = !DILocation(line: 154, column: 24, scope: !48)
!514 = !DILocation(line: 154, column: 10, scope: !48)
!515 = !DILocation(line: 230, column: 2, scope: !48)
!516 = !DILocation(line: 230, column: 11, scope: !48)
!517 = !DILocation(line: 231, column: 8, scope: !518)
!518 = distinct !DILexicalBlock(scope: !519, file: !3, line: 231, column: 7)
!519 = distinct !DILexicalBlock(scope: !48, file: !3, line: 230, column: 17)
!520 = !DILocation(line: 231, column: 7, scope: !518)
!521 = !DILocation(line: 231, column: 13, scope: !518)
!522 = !DILocation(line: 231, column: 25, scope: !518)
!523 = !DILocation(line: 231, column: 42, scope: !518)
!524 = !DILocation(line: 231, column: 46, scope: !518)
!525 = !DILocation(line: 232, column: 7, scope: !518)
!526 = !DILocation(line: 232, column: 10, scope: !518)
!527 = !DILocation(line: 233, column: 44, scope: !518)
!528 = !DILocation(line: 231, column: 7, scope: !519)
!529 = !DILocation(line: 234, column: 7, scope: !530)
!530 = distinct !DILexicalBlock(scope: !518, file: !3, line: 233, column: 50)
!531 = !DILocation(line: 235, column: 4, scope: !530)
!532 = distinct !{!532, !515, !533}
!533 = !DILocation(line: 244, column: 3, scope: !48)
!534 = !DILocation(line: 237, column: 9, scope: !535)
!535 = distinct !DILexicalBlock(scope: !519, file: !3, line: 237, column: 7)
!536 = !DILocation(line: 237, column: 7, scope: !519)
!537 = !DILocation(line: 238, column: 6, scope: !538)
!538 = distinct !DILexicalBlock(scope: !535, file: !3, line: 237, column: 16)
!539 = !DILocation(line: 238, column: 9, scope: !538)
!540 = !{!541, !541, i64 0}
!541 = !{!"int", !380, i64 0}
!542 = !DILocation(line: 241, column: 4, scope: !538)
!543 = !DILocation(line: 242, column: 9, scope: !519)
!544 = !DILocation(line: 242, column: 27, scope: !519)
!545 = !DILocation(line: 242, column: 35, scope: !519)
!546 = !DILocation(line: 242, column: 5, scope: !519)
!547 = !DILocation(line: 243, column: 5, scope: !519)
!548 = !DILocation(line: 245, column: 4, scope: !48)
!549 = !DILocation(line: 245, column: 7, scope: !48)
!550 = !DILocation(line: 246, column: 18, scope: !48)
!551 = !DILocation(line: 246, column: 16, scope: !48)
!552 = !DILocation(line: 246, column: 5, scope: !48)
!553 = !DILocation(line: 246, column: 10, scope: !48)
!554 = !{!555, !541, i64 20}
!555 = !{!"_Bigint", !379, i64 0, !541, i64 8, !541, i64 12, !541, i64 16, !541, i64 20, !380, i64 24}
!556 = !DILocation(line: 247, column: 8, scope: !48)
!557 = !DILocation(line: 247, column: 13, scope: !48)
!558 = !DILocation(line: 247, column: 11, scope: !48)
!559 = !DILocation(line: 248, column: 15, scope: !48)
!560 = !{!561, !541, i64 0}
!561 = !{!"FPI", !541, i64 0, !541, i64 4, !541, i64 8, !541, i64 12, !541, i64 16}
!562 = !DILocation(line: 153, column: 33, scope: !48)
!563 = !DILocation(line: 154, column: 13, scope: !48)
!564 = !DILocation(line: 251, column: 8, scope: !565)
!565 = distinct !DILexicalBlock(scope: !48, file: !3, line: 251, column: 6)
!566 = !DILocation(line: 251, column: 6, scope: !48)
!567 = !DILocation(line: 252, column: 5, scope: !568)
!568 = distinct !DILexicalBlock(scope: !565, file: !3, line: 251, column: 17)
!569 = !DILocation(line: 253, column: 7, scope: !570)
!570 = distinct !DILexicalBlock(scope: !568, file: !3, line: 253, column: 7)
!571 = !DILocation(line: 253, column: 7, scope: !568)
!572 = !DILocation(line: 255, column: 10, scope: !573)
!573 = distinct !DILexicalBlock(scope: !570, file: !3, line: 253, column: 20)
!574 = !DILocation(line: 256, column: 11, scope: !575)
!575 = distinct !DILexicalBlock(scope: !573, file: !3, line: 256, column: 8)
!576 = !DILocation(line: 256, column: 8, scope: !575)
!577 = !DILocation(line: 256, column: 31, scope: !575)
!578 = !DILocation(line: 256, column: 25, scope: !575)
!579 = !DILocation(line: 256, column: 21, scope: !575)
!580 = !DILocation(line: 256, column: 8, scope: !573)
!581 = !DILocation(line: 258, column: 11, scope: !582)
!582 = distinct !DILexicalBlock(scope: !583, file: !3, line: 258, column: 9)
!583 = distinct !DILexicalBlock(scope: !575, file: !3, line: 256, column: 41)
!584 = !DILocation(line: 258, column: 15, scope: !582)
!585 = !DILocation(line: 258, column: 28, scope: !582)
!586 = !DILocation(line: 258, column: 18, scope: !582)
!587 = !DILocation(line: 258, column: 9, scope: !583)
!588 = !DILocation(line: 259, column: 6, scope: !582)
!589 = !DILocalVariable(name: "b", arg: 1, scope: !590, file: !3, line: 73, type: !334)
!590 = distinct !DISubprogram(name: "rshift", scope: !3, file: !3, line: 73, type: !591, isLocal: true, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !593)
!591 = !DISubroutineType(types: !592)
!592 = !{null, !334, !36}
!593 = !{!589, !594, !595, !596, !597, !598, !599}
!594 = !DILocalVariable(name: "k", arg: 2, scope: !590, file: !3, line: 73, type: !36)
!595 = !DILocalVariable(name: "x", scope: !590, file: !3, line: 77, type: !362)
!596 = !DILocalVariable(name: "x1", scope: !590, file: !3, line: 77, type: !362)
!597 = !DILocalVariable(name: "xe", scope: !590, file: !3, line: 77, type: !362)
!598 = !DILocalVariable(name: "y", scope: !590, file: !3, line: 77, type: !38)
!599 = !DILocalVariable(name: "n", scope: !590, file: !3, line: 78, type: !36)
!600 = !DILocation(line: 73, column: 1, scope: !590, inlinedAt: !601)
!601 = distinct !DILocation(line: 262, column: 3, scope: !568)
!602 = !DILocation(line: 80, column: 14, scope: !590, inlinedAt: !601)
!603 = !DILocation(line: 80, column: 11, scope: !590, inlinedAt: !601)
!604 = !DILocation(line: 77, column: 15, scope: !590, inlinedAt: !601)
!605 = !DILocation(line: 77, column: 11, scope: !590, inlinedAt: !601)
!606 = !DILocation(line: 81, column: 8, scope: !590, inlinedAt: !601)
!607 = !DILocation(line: 78, column: 6, scope: !590, inlinedAt: !601)
!608 = !DILocation(line: 82, column: 13, scope: !609, inlinedAt: !601)
!609 = distinct !DILexicalBlock(scope: !590, file: !3, line: 82, column: 6)
!610 = !DILocation(line: 82, column: 8, scope: !609, inlinedAt: !601)
!611 = !DILocation(line: 82, column: 6, scope: !590, inlinedAt: !601)
!612 = !DILocation(line: 83, column: 10, scope: !613, inlinedAt: !601)
!613 = distinct !DILexicalBlock(scope: !609, file: !3, line: 82, column: 19)
!614 = !DILocation(line: 77, column: 20, scope: !590, inlinedAt: !601)
!615 = !DILocation(line: 84, column: 5, scope: !613, inlinedAt: !601)
!616 = !DILocation(line: 85, column: 9, scope: !617, inlinedAt: !601)
!617 = distinct !DILexicalBlock(scope: !613, file: !3, line: 85, column: 7)
!618 = !DILocation(line: 85, column: 7, scope: !613, inlinedAt: !601)
!619 = !DILocation(line: 96, column: 4, scope: !617, inlinedAt: !601)
!620 = !DILocation(line: 97, column: 15, scope: !617, inlinedAt: !601)
!621 = !DILocation(line: 86, column: 15, scope: !622, inlinedAt: !601)
!622 = distinct !DILexicalBlock(scope: !617, file: !3, line: 85, column: 19)
!623 = !DILocation(line: 87, column: 8, scope: !622, inlinedAt: !601)
!624 = !DILocation(line: 88, column: 4, scope: !622, inlinedAt: !601)
!625 = !DILocation(line: 0, scope: !626, inlinedAt: !601)
!626 = distinct !DILexicalBlock(scope: !622, file: !3, line: 88, column: 18)
!627 = !DILocation(line: 77, column: 24, scope: !590, inlinedAt: !601)
!628 = !DILocation(line: 88, column: 12, scope: !622, inlinedAt: !601)
!629 = !DILocation(line: 89, column: 19, scope: !626, inlinedAt: !601)
!630 = !DILocation(line: 89, column: 22, scope: !626, inlinedAt: !601)
!631 = !DILocation(line: 89, column: 16, scope: !626, inlinedAt: !601)
!632 = !DILocation(line: 89, column: 8, scope: !626, inlinedAt: !601)
!633 = !DILocation(line: 89, column: 11, scope: !626, inlinedAt: !601)
!634 = !DILocation(line: 90, column: 9, scope: !626, inlinedAt: !601)
!635 = distinct !{!635, !636, !637}
!636 = !DILocation(line: 88, column: 4, scope: !622)
!637 = !DILocation(line: 91, column: 5, scope: !622)
!638 = !DILocation(line: 92, column: 13, scope: !639, inlinedAt: !601)
!639 = distinct !DILexicalBlock(scope: !622, file: !3, line: 92, column: 8)
!640 = !DILocation(line: 92, column: 18, scope: !639, inlinedAt: !601)
!641 = !DILocation(line: 92, column: 8, scope: !622, inlinedAt: !601)
!642 = !DILocation(line: 93, column: 7, scope: !639, inlinedAt: !601)
!643 = !DILocation(line: 93, column: 5, scope: !639, inlinedAt: !601)
!644 = !DILocation(line: 97, column: 13, scope: !617, inlinedAt: !601)
!645 = !DILocation(line: 97, column: 8, scope: !617, inlinedAt: !601)
!646 = !DILocation(line: 97, column: 11, scope: !617, inlinedAt: !601)
!647 = !DILocation(line: 96, column: 12, scope: !617, inlinedAt: !601)
!648 = distinct !{!648, !649, !650}
!649 = !DILocation(line: 96, column: 4, scope: !617)
!650 = !DILocation(line: 97, column: 15, scope: !617)
!651 = !DILocation(line: 0, scope: !590, inlinedAt: !601)
!652 = !DILocation(line: 99, column: 20, scope: !653, inlinedAt: !601)
!653 = distinct !DILexicalBlock(scope: !590, file: !3, line: 99, column: 6)
!654 = !DILocation(line: 99, column: 17, scope: !653, inlinedAt: !601)
!655 = !DILocation(line: 99, column: 15, scope: !653, inlinedAt: !601)
!656 = !DILocation(line: 99, column: 29, scope: !653, inlinedAt: !601)
!657 = !DILocation(line: 99, column: 6, scope: !590, inlinedAt: !601)
!658 = !DILocation(line: 100, column: 12, scope: !653, inlinedAt: !601)
!659 = !DILocation(line: 100, column: 3, scope: !653, inlinedAt: !601)
!660 = !DILocation(line: 101, column: 1, scope: !590, inlinedAt: !601)
!661 = !DILocation(line: 263, column: 5, scope: !568)
!662 = !DILocation(line: 264, column: 3, scope: !568)
!663 = !DILocation(line: 265, column: 13, scope: !664)
!664 = distinct !DILexicalBlock(scope: !565, file: !3, line: 265, column: 11)
!665 = !DILocation(line: 265, column: 11, scope: !565)
!666 = !DILocation(line: 266, column: 13, scope: !667)
!667 = distinct !DILexicalBlock(scope: !664, file: !3, line: 265, column: 22)
!668 = !DILocation(line: 267, column: 7, scope: !667)
!669 = !DILocation(line: 268, column: 5, scope: !667)
!670 = !DILocation(line: 269, column: 7, scope: !667)
!671 = !DILocation(line: 270, column: 3, scope: !667)
!672 = !DILocation(line: 0, scope: !568)
!673 = !DILocation(line: 271, column: 15, scope: !674)
!674 = distinct !DILexicalBlock(scope: !48, file: !3, line: 271, column: 6)
!675 = !DILocation(line: 0, scope: !445)
!676 = !{!561, !541, i64 8}
!677 = !DILocation(line: 271, column: 8, scope: !674)
!678 = !DILocation(line: 271, column: 6, scope: !48)
!679 = !DILocation(line: 0, scope: !680)
!680 = distinct !DILexicalBlock(scope: !681, file: !3, line: 332, column: 11)
!681 = distinct !DILexicalBlock(scope: !682, file: !3, line: 332, column: 7)
!682 = distinct !DILexicalBlock(scope: !683, file: !3, line: 316, column: 16)
!683 = distinct !DILexicalBlock(scope: !48, file: !3, line: 316, column: 6)
!684 = !DILocation(line: 273, column: 3, scope: !685)
!685 = distinct !DILexicalBlock(scope: !674, file: !3, line: 271, column: 21)
!686 = !DILocation(line: 274, column: 7, scope: !685)
!687 = !DILocation(line: 275, column: 3, scope: !685)
!688 = !DILocation(line: 153, column: 22, scope: !48)
!689 = !DILocation(line: 278, column: 15, scope: !690)
!690 = distinct !DILexicalBlock(scope: !48, file: !3, line: 278, column: 6)
!691 = !{!561, !541, i64 4}
!692 = !DILocation(line: 278, column: 8, scope: !690)
!693 = !DILocation(line: 278, column: 6, scope: !48)
!694 = !DILocation(line: 280, column: 17, scope: !695)
!695 = distinct !DILexicalBlock(scope: !690, file: !3, line: 278, column: 21)
!696 = !DILocation(line: 281, column: 9, scope: !697)
!697 = distinct !DILexicalBlock(scope: !695, file: !3, line: 281, column: 7)
!698 = !DILocation(line: 281, column: 7, scope: !695)
!699 = !DILocation(line: 282, column: 17, scope: !700)
!700 = distinct !DILexicalBlock(scope: !697, file: !3, line: 281, column: 19)
!701 = !{!561, !541, i64 12}
!702 = !DILocation(line: 282, column: 4, scope: !700)
!703 = !DILocation(line: 284, column: 11, scope: !704)
!704 = distinct !DILexicalBlock(scope: !705, file: !3, line: 284, column: 9)
!705 = distinct !DILexicalBlock(scope: !700, file: !3, line: 282, column: 27)
!706 = !DILocation(line: 284, column: 20, scope: !704)
!707 = !DILocation(line: 284, column: 26, scope: !704)
!708 = !DILocation(line: 284, column: 30, scope: !704)
!709 = !DILocation(line: 284, column: 43, scope: !704)
!710 = !DILocation(line: 284, column: 33, scope: !704)
!711 = !DILocation(line: 284, column: 9, scope: !705)
!712 = !DILocation(line: 294, column: 18, scope: !713)
!713 = distinct !DILexicalBlock(scope: !714, file: !3, line: 292, column: 15)
!714 = distinct !DILexicalBlock(scope: !705, file: !3, line: 292, column: 9)
!715 = !DILocation(line: 288, column: 10, scope: !716)
!716 = distinct !DILexicalBlock(scope: !705, file: !3, line: 288, column: 9)
!717 = !DILocation(line: 288, column: 9, scope: !705)
!718 = !DILocation(line: 292, column: 9, scope: !714)
!719 = !DILocation(line: 292, column: 9, scope: !705)
!720 = !DILocation(line: 294, column: 11, scope: !713)
!721 = !DILocation(line: 295, column: 16, scope: !713)
!722 = !DILocation(line: 295, column: 21, scope: !713)
!723 = !DILocation(line: 295, column: 11, scope: !713)
!724 = !DILocation(line: 296, column: 10, scope: !713)
!725 = !DILocation(line: 297, column: 6, scope: !713)
!726 = !DILocation(line: 301, column: 4, scope: !700)
!727 = !DILocation(line: 302, column: 8, scope: !700)
!728 = !DILocation(line: 303, column: 4, scope: !700)
!729 = !DILocation(line: 305, column: 9, scope: !695)
!730 = !DILocation(line: 306, column: 7, scope: !731)
!731 = distinct !DILexicalBlock(scope: !695, file: !3, line: 306, column: 7)
!732 = !DILocation(line: 306, column: 7, scope: !695)
!733 = !DILocation(line: 308, column: 14, scope: !734)
!734 = distinct !DILexicalBlock(scope: !731, file: !3, line: 308, column: 12)
!735 = !DILocation(line: 308, column: 12, scope: !731)
!736 = !DILocation(line: 309, column: 15, scope: !734)
!737 = !DILocation(line: 309, column: 4, scope: !734)
!738 = !DILocation(line: 0, scope: !731)
!739 = !DILocation(line: 310, column: 10, scope: !740)
!740 = distinct !DILexicalBlock(scope: !695, file: !3, line: 310, column: 7)
!741 = !DILocation(line: 0, scope: !582)
!742 = !DILocation(line: 310, column: 7, scope: !740)
!743 = !DILocation(line: 310, column: 30, scope: !740)
!744 = !DILocation(line: 310, column: 24, scope: !740)
!745 = !DILocation(line: 310, column: 20, scope: !740)
!746 = !DILocation(line: 310, column: 7, scope: !695)
!747 = !DILocation(line: 311, column: 13, scope: !740)
!748 = !DILocation(line: 311, column: 4, scope: !740)
!749 = !DILocation(line: 312, column: 9, scope: !695)
!750 = !DILocation(line: 73, column: 1, scope: !590, inlinedAt: !751)
!751 = distinct !DILocation(line: 313, column: 3, scope: !695)
!752 = !DILocation(line: 80, column: 14, scope: !590, inlinedAt: !751)
!753 = !DILocation(line: 80, column: 11, scope: !590, inlinedAt: !751)
!754 = !DILocation(line: 77, column: 15, scope: !590, inlinedAt: !751)
!755 = !DILocation(line: 77, column: 11, scope: !590, inlinedAt: !751)
!756 = !DILocation(line: 81, column: 8, scope: !590, inlinedAt: !751)
!757 = !DILocation(line: 78, column: 6, scope: !590, inlinedAt: !751)
!758 = !DILocation(line: 82, column: 13, scope: !609, inlinedAt: !751)
!759 = !DILocation(line: 82, column: 8, scope: !609, inlinedAt: !751)
!760 = !DILocation(line: 82, column: 6, scope: !590, inlinedAt: !751)
!761 = !DILocation(line: 83, column: 10, scope: !613, inlinedAt: !751)
!762 = !DILocation(line: 77, column: 20, scope: !590, inlinedAt: !751)
!763 = !DILocation(line: 84, column: 5, scope: !613, inlinedAt: !751)
!764 = !DILocation(line: 85, column: 9, scope: !617, inlinedAt: !751)
!765 = !DILocation(line: 85, column: 7, scope: !613, inlinedAt: !751)
!766 = !DILocation(line: 96, column: 4, scope: !617, inlinedAt: !751)
!767 = !DILocation(line: 97, column: 15, scope: !617, inlinedAt: !751)
!768 = !DILocation(line: 86, column: 15, scope: !622, inlinedAt: !751)
!769 = !DILocation(line: 87, column: 8, scope: !622, inlinedAt: !751)
!770 = !DILocation(line: 88, column: 4, scope: !622, inlinedAt: !751)
!771 = !DILocation(line: 0, scope: !626, inlinedAt: !751)
!772 = !DILocation(line: 77, column: 24, scope: !590, inlinedAt: !751)
!773 = !DILocation(line: 88, column: 12, scope: !622, inlinedAt: !751)
!774 = !DILocation(line: 89, column: 19, scope: !626, inlinedAt: !751)
!775 = !DILocation(line: 89, column: 22, scope: !626, inlinedAt: !751)
!776 = !DILocation(line: 89, column: 16, scope: !626, inlinedAt: !751)
!777 = !DILocation(line: 89, column: 8, scope: !626, inlinedAt: !751)
!778 = !DILocation(line: 89, column: 11, scope: !626, inlinedAt: !751)
!779 = !DILocation(line: 90, column: 9, scope: !626, inlinedAt: !751)
!780 = !DILocation(line: 92, column: 13, scope: !639, inlinedAt: !751)
!781 = !DILocation(line: 92, column: 18, scope: !639, inlinedAt: !751)
!782 = !DILocation(line: 92, column: 8, scope: !622, inlinedAt: !751)
!783 = !DILocation(line: 93, column: 7, scope: !639, inlinedAt: !751)
!784 = !DILocation(line: 93, column: 5, scope: !639, inlinedAt: !751)
!785 = !DILocation(line: 97, column: 13, scope: !617, inlinedAt: !751)
!786 = !DILocation(line: 97, column: 8, scope: !617, inlinedAt: !751)
!787 = !DILocation(line: 97, column: 11, scope: !617, inlinedAt: !751)
!788 = !DILocation(line: 96, column: 12, scope: !617, inlinedAt: !751)
!789 = !DILocation(line: 0, scope: !590, inlinedAt: !751)
!790 = !DILocation(line: 99, column: 20, scope: !653, inlinedAt: !751)
!791 = !DILocation(line: 99, column: 17, scope: !653, inlinedAt: !751)
!792 = !DILocation(line: 99, column: 15, scope: !653, inlinedAt: !751)
!793 = !DILocation(line: 99, column: 29, scope: !653, inlinedAt: !751)
!794 = !DILocation(line: 99, column: 6, scope: !590, inlinedAt: !751)
!795 = !DILocation(line: 100, column: 12, scope: !653, inlinedAt: !751)
!796 = !DILocation(line: 100, column: 3, scope: !653, inlinedAt: !751)
!797 = !DILocation(line: 101, column: 1, scope: !590, inlinedAt: !751)
!798 = !DILocation(line: 314, column: 12, scope: !695)
!799 = !DILocation(line: 315, column: 3, scope: !695)
!800 = !DILocation(line: 316, column: 6, scope: !683)
!801 = !DILocation(line: 316, column: 6, scope: !48)
!802 = !DILocation(line: 153, column: 40, scope: !48)
!803 = !DILocation(line: 318, column: 15, scope: !682)
!804 = !DILocation(line: 318, column: 3, scope: !682)
!805 = !DILocation(line: 322, column: 21, scope: !806)
!806 = distinct !DILexicalBlock(scope: !807, file: !3, line: 322, column: 11)
!807 = distinct !DILexicalBlock(scope: !682, file: !3, line: 318, column: 25)
!808 = !DILocation(line: 323, column: 8, scope: !806)
!809 = !DILocation(line: 323, column: 30, scope: !806)
!810 = !DILocation(line: 323, column: 27, scope: !806)
!811 = !DILocation(line: 322, column: 11, scope: !807)
!812 = !DILocation(line: 324, column: 5, scope: !806)
!813 = !DILocation(line: 332, column: 7, scope: !682)
!814 = !DILocation(line: 327, column: 11, scope: !807)
!815 = !DILocation(line: 328, column: 4, scope: !807)
!816 = !DILocation(line: 0, scope: !807)
!817 = !DILocation(line: 332, column: 7, scope: !681)
!818 = !DILocation(line: 333, column: 11, scope: !680)
!819 = !DILocalVariable(name: "ptr", arg: 1, scope: !820, file: !3, line: 104, type: !51)
!820 = distinct !DISubprogram(name: "increment", scope: !3, file: !3, line: 104, type: !821, isLocal: true, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !823)
!821 = !DISubroutineType(types: !822)
!822 = !{!334, !51, !334}
!823 = !{!819, !824, !825, !826, !827}
!824 = !DILocalVariable(name: "b", arg: 2, scope: !820, file: !3, line: 104, type: !334)
!825 = !DILocalVariable(name: "x", scope: !820, file: !3, line: 108, type: !362)
!826 = !DILocalVariable(name: "xe", scope: !820, file: !3, line: 108, type: !362)
!827 = !DILocalVariable(name: "b1", scope: !820, file: !3, line: 109, type: !334)
!828 = !DILocation(line: 104, column: 1, scope: !820, inlinedAt: !829)
!829 = distinct !DILocation(line: 334, column: 8, scope: !680)
!830 = !DILocation(line: 114, column: 6, scope: !820, inlinedAt: !829)
!831 = !DILocation(line: 108, column: 11, scope: !820, inlinedAt: !829)
!832 = !DILocation(line: 115, column: 9, scope: !820, inlinedAt: !829)
!833 = !DILocation(line: 108, column: 15, scope: !820, inlinedAt: !829)
!834 = !DILocation(line: 117, column: 2, scope: !820, inlinedAt: !829)
!835 = !DILocation(line: 0, scope: !836, inlinedAt: !829)
!836 = distinct !DILexicalBlock(scope: !820, file: !3, line: 117, column: 5)
!837 = !DILocation(line: 118, column: 7, scope: !838, inlinedAt: !829)
!838 = distinct !DILexicalBlock(scope: !836, file: !3, line: 118, column: 7)
!839 = !DILocation(line: 118, column: 10, scope: !838, inlinedAt: !829)
!840 = !DILocation(line: 118, column: 7, scope: !836, inlinedAt: !829)
!841 = !DILocation(line: 119, column: 4, scope: !842, inlinedAt: !829)
!842 = distinct !DILexicalBlock(scope: !838, file: !3, line: 118, column: 34)
!843 = !DILocation(line: 120, column: 4, scope: !842, inlinedAt: !829)
!844 = !DILocation(line: 122, column: 5, scope: !836, inlinedAt: !829)
!845 = !DILocation(line: 122, column: 8, scope: !836, inlinedAt: !829)
!846 = !DILocation(line: 123, column: 13, scope: !820, inlinedAt: !829)
!847 = !DILocation(line: 123, column: 3, scope: !836, inlinedAt: !829)
!848 = distinct !{!848, !849, !850}
!849 = !DILocation(line: 117, column: 2, scope: !820)
!850 = !DILocation(line: 123, column: 17, scope: !820)
!851 = !DILocation(line: 135, column: 10, scope: !852, inlinedAt: !829)
!852 = distinct !DILexicalBlock(scope: !853, file: !3, line: 135, column: 7)
!853 = distinct !DILexicalBlock(scope: !820, file: !3, line: 134, column: 2)
!854 = !DILocation(line: 135, column: 21, scope: !852, inlinedAt: !829)
!855 = !{!555, !541, i64 12}
!856 = !DILocation(line: 135, column: 15, scope: !852, inlinedAt: !829)
!857 = !DILocation(line: 135, column: 7, scope: !853, inlinedAt: !829)
!858 = !DILocation(line: 136, column: 24, scope: !859, inlinedAt: !829)
!859 = distinct !DILexicalBlock(scope: !852, file: !3, line: 135, column: 30)
!860 = !{!555, !541, i64 8}
!861 = !DILocation(line: 136, column: 26, scope: !859, inlinedAt: !829)
!862 = !DILocation(line: 136, column: 9, scope: !859, inlinedAt: !829)
!863 = !DILocation(line: 109, column: 11, scope: !820, inlinedAt: !829)
!864 = !DILocation(line: 137, column: 4, scope: !859, inlinedAt: !829)
!865 = !DILocation(line: 138, column: 4, scope: !859, inlinedAt: !829)
!866 = !DILocation(line: 140, column: 4, scope: !859, inlinedAt: !829)
!867 = !DILocation(line: 141, column: 16, scope: !853, inlinedAt: !829)
!868 = !DILocation(line: 141, column: 12, scope: !853, inlinedAt: !829)
!869 = !DILocation(line: 141, column: 3, scope: !853, inlinedAt: !829)
!870 = !DILocation(line: 141, column: 20, scope: !853, inlinedAt: !829)
!871 = !DILocation(line: 143, column: 2, scope: !820, inlinedAt: !829)
!872 = !DILocation(line: 0, scope: !820, inlinedAt: !829)
!873 = !DILocation(line: 144, column: 1, scope: !820, inlinedAt: !829)
!874 = !DILocation(line: 336, column: 12, scope: !875)
!875 = distinct !DILexicalBlock(scope: !680, file: !3, line: 336, column: 8)
!876 = !DILocation(line: 336, column: 8, scope: !680)
!877 = !DILocation(line: 337, column: 23, scope: !878)
!878 = distinct !DILexicalBlock(scope: !879, file: !3, line: 337, column: 9)
!879 = distinct !DILexicalBlock(scope: !875, file: !3, line: 336, column: 32)
!880 = !DILocation(line: 337, column: 29, scope: !878)
!881 = !DILocation(line: 337, column: 15, scope: !878)
!882 = !DILocation(line: 338, column: 6, scope: !878)
!883 = !DILocation(line: 338, column: 17, scope: !878)
!884 = !DILocation(line: 338, column: 9, scope: !878)
!885 = !DILocation(line: 338, column: 42, scope: !878)
!886 = !DILocation(line: 338, column: 32, scope: !878)
!887 = !DILocation(line: 338, column: 28, scope: !878)
!888 = !DILocation(line: 337, column: 9, scope: !879)
!889 = !DILocation(line: 339, column: 6, scope: !878)
!890 = !DILocation(line: 341, column: 17, scope: !891)
!891 = distinct !DILexicalBlock(scope: !875, file: !3, line: 341, column: 13)
!892 = !DILocation(line: 341, column: 22, scope: !891)
!893 = !DILocation(line: 342, column: 5, scope: !891)
!894 = !DILocation(line: 342, column: 20, scope: !891)
!895 = !DILocation(line: 342, column: 29, scope: !891)
!896 = !DILocation(line: 343, column: 9, scope: !891)
!897 = !DILocation(line: 343, column: 24, scope: !891)
!898 = !DILocation(line: 343, column: 21, scope: !891)
!899 = !DILocation(line: 343, column: 13, scope: !891)
!900 = !DILocation(line: 343, column: 33, scope: !891)
!901 = !DILocation(line: 343, column: 29, scope: !891)
!902 = !DILocation(line: 341, column: 13, scope: !875)
!903 = !DILocation(line: 82, column: 13, scope: !609, inlinedAt: !904)
!904 = distinct !DILocation(line: 344, column: 5, scope: !905)
!905 = distinct !DILexicalBlock(scope: !891, file: !3, line: 343, column: 39)
!906 = !DILocation(line: 73, column: 1, scope: !590, inlinedAt: !904)
!907 = !DILocation(line: 80, column: 14, scope: !590, inlinedAt: !904)
!908 = !DILocation(line: 80, column: 11, scope: !590, inlinedAt: !904)
!909 = !DILocation(line: 77, column: 15, scope: !590, inlinedAt: !904)
!910 = !DILocation(line: 77, column: 11, scope: !590, inlinedAt: !904)
!911 = !DILocation(line: 78, column: 6, scope: !590, inlinedAt: !904)
!912 = !DILocation(line: 82, column: 8, scope: !609, inlinedAt: !904)
!913 = !DILocation(line: 82, column: 6, scope: !590, inlinedAt: !904)
!914 = !DILocation(line: 83, column: 10, scope: !613, inlinedAt: !904)
!915 = !DILocation(line: 77, column: 20, scope: !590, inlinedAt: !904)
!916 = !DILocation(line: 84, column: 5, scope: !613, inlinedAt: !904)
!917 = !DILocation(line: 85, column: 7, scope: !613, inlinedAt: !904)
!918 = !DILocation(line: 87, column: 8, scope: !622, inlinedAt: !904)
!919 = !DILocation(line: 88, column: 4, scope: !622, inlinedAt: !904)
!920 = !DILocation(line: 0, scope: !626, inlinedAt: !904)
!921 = !DILocation(line: 77, column: 24, scope: !590, inlinedAt: !904)
!922 = !DILocation(line: 88, column: 12, scope: !622, inlinedAt: !904)
!923 = !DILocation(line: 89, column: 19, scope: !626, inlinedAt: !904)
!924 = !DILocation(line: 89, column: 22, scope: !626, inlinedAt: !904)
!925 = !DILocation(line: 89, column: 16, scope: !626, inlinedAt: !904)
!926 = !DILocation(line: 89, column: 8, scope: !626, inlinedAt: !904)
!927 = !DILocation(line: 89, column: 11, scope: !626, inlinedAt: !904)
!928 = !DILocation(line: 92, column: 13, scope: !639, inlinedAt: !904)
!929 = !DILocation(line: 92, column: 18, scope: !639, inlinedAt: !904)
!930 = !DILocation(line: 92, column: 8, scope: !622, inlinedAt: !904)
!931 = !DILocation(line: 93, column: 7, scope: !639, inlinedAt: !904)
!932 = !DILocation(line: 93, column: 5, scope: !639, inlinedAt: !904)
!933 = !DILocation(line: 0, scope: !590, inlinedAt: !904)
!934 = !DILocation(line: 99, column: 20, scope: !653, inlinedAt: !904)
!935 = !DILocation(line: 99, column: 17, scope: !653, inlinedAt: !904)
!936 = !DILocation(line: 99, column: 15, scope: !653, inlinedAt: !904)
!937 = !DILocation(line: 99, column: 29, scope: !653, inlinedAt: !904)
!938 = !DILocation(line: 99, column: 6, scope: !590, inlinedAt: !904)
!939 = !DILocation(line: 100, column: 12, scope: !653, inlinedAt: !904)
!940 = !DILocation(line: 100, column: 3, scope: !653, inlinedAt: !904)
!941 = !DILocation(line: 101, column: 1, scope: !590, inlinedAt: !904)
!942 = !DILocation(line: 345, column: 9, scope: !943)
!943 = distinct !DILexicalBlock(scope: !905, file: !3, line: 345, column: 9)
!944 = !DILocation(line: 345, column: 20, scope: !943)
!945 = !DILocation(line: 345, column: 13, scope: !943)
!946 = !DILocation(line: 345, column: 9, scope: !905)
!947 = !DILocation(line: 0, scope: !695)
!948 = !DILocation(line: 348, column: 8, scope: !680)
!949 = !DILocation(line: 349, column: 4, scope: !680)
!950 = !DILocation(line: 351, column: 8, scope: !681)
!951 = !DILocation(line: 353, column: 6, scope: !48)
!952 = !DILocation(line: 314, column: 5, scope: !695)
!953 = !DILocation(line: 354, column: 7, scope: !48)
!954 = !DILocation(line: 355, column: 2, scope: !48)
!955 = !DILocation(line: 0, scope: !492)
!956 = !DILocation(line: 356, column: 1, scope: !48)
