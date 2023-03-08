; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/ecvtbuf.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/ecvtbuf.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._reent = type { i32, %struct.__sFILE*, %struct.__sFILE*, %struct.__sFILE*, i32, [25 x i8], i32, %struct.__locale_t*, i32, void (%struct._reent*)*, %struct._Bigint*, i32, %struct._Bigint*, %struct._Bigint**, i32, i8*, %union.anon.0, %struct._atexit*, %struct._atexit, void (i32)**, %struct._glue, [3 x %struct.__sFILE] }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i64, i32)*, i32 (%struct._reent*, i8*)*, %struct.__sbuf, i8*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64, %struct._reent*, i32, %struct._mbstate_t, i32 }
%struct.__sbuf = type { i8*, i32 }
%struct._mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__locale_t = type { [7 x [32 x i8]], i32 (%struct._reent*, i8*, i32, %struct._mbstate_t*)*, i32 (%struct._reent*, i32*, i8*, i64, %struct._mbstate_t*)*, i32, i8*, %struct.lconv, [2 x i8], [32 x i8], [32 x i8] }
%struct.lconv = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct._Bigint = type { %struct._Bigint*, i32, i32, i32, i32, [1 x i32] }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { [30 x i8*], [30 x i32] }
%struct._atexit = type { %struct._atexit*, i32, [32 x void ()*], %struct._on_exit_args }
%struct._on_exit_args = type { [32 x i8*], [32 x i8*], i32, i32 }
%struct._glue = type { %struct._glue*, i32, %struct.__sFILE* }

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i8* @fcvtbuf(double, i32, i32*, i32*, i8*) local_unnamed_addr #0 !dbg !11 {
  %6 = alloca i8*, align 8
  %7 = tail call %struct._reent* @__getreent() #4, !dbg !305
  %8 = bitcast i8** %6 to i8*, !dbg !307
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #5, !dbg !307
  %9 = icmp eq i8* %4, null, !dbg !309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !311
  br i1 %9, label %10, label %25, !dbg !311

; <label>:10:                                     ; preds = %5
  %11 = getelementptr inbounds %struct._reent, %struct._reent* %7, i64 0, i32 14, !dbg !312
  %12 = load i32, i32* %11, align 8, !dbg !312, !tbaa !315
  %13 = add nsw i32 %1, 35, !dbg !324
  %14 = icmp sgt i32 %12, %13, !dbg !325
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !326
  %15 = getelementptr inbounds %struct._reent, %struct._reent* %7, i64 0, i32 15
  %16 = load i8*, i8** %15, align 8, !dbg !327, !tbaa !330
  br i1 %14, label %23, label %17, !dbg !326

; <label>:17:                                     ; preds = %10
  %18 = add nsw i32 %1, 36, !dbg !331
  %19 = sext i32 %18 to i64, !dbg !331
  %20 = tail call i8* @realloc(i8* %16, i64 %19) #4, !dbg !331
  %21 = icmp eq i8* %20, null, !dbg !332
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !333
  br i1 %21, label %85, label %22, !dbg !333

; <label>:22:                                     ; preds = %17
  store i32 %18, i32* %11, align 8, !dbg !334, !tbaa !315
  store i8* %20, i8** %15, align 8, !dbg !335, !tbaa !330
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !336
  br label %23, !dbg !336

; <label>:23:                                     ; preds = %10, %22
  %24 = phi i8* [ %20, %22 ], [ %16, %10 ], !dbg !337
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !338
  br label %25, !dbg !338

; <label>:25:                                     ; preds = %23, %5
  %26 = phi i8* [ %24, %23 ], [ %4, %5 ]
  %27 = fcmp olt double %0, 1.000000e+00, !dbg !340
  %28 = fcmp ogt double %0, -1.000000e+00, !dbg !342
  %29 = and i1 %27, %28, !dbg !343
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !343
  %30 = select i1 %29, i32 2, i32 3, !dbg !343
  %31 = call i8* @_dtoa_r(%struct._reent* %7, double %0, i32 %30, i32 %1, i32* %2, i32* %3, i8** nonnull %6) #4, !dbg !346
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %32 = load i32, i32* %2, align 4, !dbg !348, !tbaa !349
  %33 = sub nsw i32 0, %32, !dbg !350
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !351
  %34 = load i8*, i8** %6, align 8, !dbg !352, !tbaa !353
  %35 = icmp ult i8* %31, %34, !dbg !354
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !351
  br i1 %35, label %62, label %36, !dbg !351

; <label>:36:                                     ; preds = %62, %25
  %37 = phi i8* [ %26, %25 ], [ %68, %62 ], !dbg !355
  %38 = phi i32 [ %33, %25 ], [ %69, %62 ], !dbg !355
  %39 = icmp slt i32 %38, %1, !dbg !357
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !358
  br i1 %39, label %40, label %83, !dbg !358

; <label>:40:                                     ; preds = %36
  %41 = xor i32 %38, -1, !dbg !359
  %42 = add i32 %41, %1, !dbg !359
  %43 = zext i32 %42 to i64, !dbg !359
  %44 = add nuw nsw i64 %43, 1, !dbg !359
  %45 = sub i32 %1, %38, !dbg !359
  %46 = xor i32 %38, -1, !dbg !359
  %47 = add i32 %46, %1, !dbg !359
  %48 = and i32 %45, 3, !dbg !359
  %49 = icmp eq i32 %48, 0, !dbg !359
  br i1 %49, label %58, label %50, !dbg !359

; <label>:50:                                     ; preds = %40, %50
  %51 = phi i32 [ %55, %50 ], [ %38, %40 ]
  %52 = phi i8* [ %54, %50 ], [ %37, %40 ]
  %53 = phi i32 [ %56, %50 ], [ %48, %40 ]
  %54 = getelementptr inbounds i8, i8* %52, i64 1, !dbg !359
  store i8 48, i8* %52, align 1, !dbg !360, !tbaa !362
  %55 = add nsw i32 %51, 1, !dbg !363
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !358
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !358
  %56 = add i32 %53, -1, !dbg !358
  %57 = icmp eq i32 %56, 0, !dbg !358
  br i1 %57, label %58, label %50, !dbg !358, !llvm.loop !364

; <label>:58:                                     ; preds = %50, %40
  %59 = phi i32 [ %38, %40 ], [ %55, %50 ]
  %60 = phi i8* [ %37, %40 ], [ %54, %50 ]
  %61 = icmp ult i32 %47, 3, !dbg !359
  br i1 %61, label %81, label %72, !dbg !359

; <label>:62:                                     ; preds = %25, %62
  %63 = phi i32 [ %69, %62 ], [ %33, %25 ]
  %64 = phi i8* [ %66, %62 ], [ %31, %25 ]
  %65 = phi i8* [ %68, %62 ], [ %26, %25 ]
  %66 = getelementptr inbounds i8, i8* %64, i64 1, !dbg !366
  %67 = load i8, i8* %64, align 1, !dbg !367, !tbaa !362
  %68 = getelementptr inbounds i8, i8* %65, i64 1, !dbg !368
  store i8 %67, i8* %65, align 1, !dbg !369, !tbaa !362
  %69 = add nsw i32 %63, 1, !dbg !370
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !351
  %70 = load i8*, i8** %6, align 8, !dbg !352, !tbaa !353
  %71 = icmp ult i8* %66, %70, !dbg !354
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !351
  br i1 %71, label %62, label %36, !dbg !351, !llvm.loop !371

; <label>:72:                                     ; preds = %58, %72
  %73 = phi i32 [ %79, %72 ], [ %59, %58 ]
  %74 = phi i8* [ %78, %72 ], [ %60, %58 ]
  %75 = getelementptr inbounds i8, i8* %74, i64 1, !dbg !359
  store i8 48, i8* %74, align 1, !dbg !360, !tbaa !362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !358
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !358
  %76 = getelementptr inbounds i8, i8* %74, i64 2, !dbg !359
  store i8 48, i8* %75, align 1, !dbg !360, !tbaa !362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !358
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !358
  %77 = getelementptr inbounds i8, i8* %74, i64 3, !dbg !359
  store i8 48, i8* %76, align 1, !dbg !360, !tbaa !362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !358
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !358
  %78 = getelementptr inbounds i8, i8* %74, i64 4, !dbg !359
  store i8 48, i8* %77, align 1, !dbg !360, !tbaa !362
  %79 = add nsw i32 %73, 4, !dbg !363
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !358
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !358
  %80 = icmp eq i32 %79, %1, !dbg !357
  br i1 %80, label %81, label %72, !dbg !358, !llvm.loop !373

; <label>:81:                                     ; preds = %72, %58
  %82 = getelementptr i8, i8* %37, i64 %44, !dbg !359
  br label %83, !dbg !375

; <label>:83:                                     ; preds = %81, %36
  %84 = phi i8* [ %37, %36 ], [ %82, %81 ], !dbg !359
  store i8 0, i8* %84, align 1, !dbg !375, !tbaa !362
  br label %85, !dbg !376

; <label>:85:                                     ; preds = %17, %83
  %86 = phi i8* [ %26, %83 ], [ null, %17 ], !dbg !359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !327
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #5, !dbg !377
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !377
  ret i8* %86, !dbg !377
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @realloc(i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @_dtoa_r(%struct._reent*, double, i32, i32, i32*, i32*, i8**) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone nounwind
define dso_local i8* @ecvtbuf(double, i32, i32*, i32*, i8*) local_unnamed_addr #0 !dbg !378 {
  %6 = alloca i8*, align 8
  %7 = tail call %struct._reent* @__getreent() #4, !dbg !391
  %8 = bitcast i8** %6 to i8*, !dbg !393
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #5, !dbg !393
  %9 = icmp eq i8* %4, null, !dbg !395
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !397
  br i1 %9, label %10, label %24, !dbg !397

; <label>:10:                                     ; preds = %5
  %11 = getelementptr inbounds %struct._reent, %struct._reent* %7, i64 0, i32 14, !dbg !398
  %12 = load i32, i32* %11, align 8, !dbg !398, !tbaa !315
  %13 = icmp sgt i32 %12, %1, !dbg !401
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !402
  %14 = getelementptr inbounds %struct._reent, %struct._reent* %7, i64 0, i32 15
  %15 = load i8*, i8** %14, align 8, !dbg !403, !tbaa !330
  br i1 %13, label %22, label %16, !dbg !402

; <label>:16:                                     ; preds = %10
  %17 = add nsw i32 %1, 1, !dbg !406
  %18 = sext i32 %17 to i64, !dbg !406
  %19 = tail call i8* @realloc(i8* %15, i64 %18) #4, !dbg !406
  %20 = icmp eq i8* %19, null, !dbg !407
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !408
  br i1 %20, label %78, label %21, !dbg !408

; <label>:21:                                     ; preds = %16
  store i32 %17, i32* %11, align 8, !dbg !409, !tbaa !315
  store i8* %19, i8** %14, align 8, !dbg !410, !tbaa !330
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !411
  br label %22, !dbg !411

; <label>:22:                                     ; preds = %10, %21
  %23 = phi i8* [ %19, %21 ], [ %15, %10 ], !dbg !412
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !413
  br label %24, !dbg !413

; <label>:24:                                     ; preds = %22, %5
  %25 = phi i8* [ %23, %22 ], [ %4, %5 ]
  %26 = call i8* @_dtoa_r(%struct._reent* %7, double %0, i32 2, i32 %1, i32* %2, i32* %3, i8** nonnull %6) #4, !dbg !416
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !418
  %27 = load i8*, i8** %6, align 8, !dbg !419, !tbaa !353
  %28 = icmp ult i8* %26, %27, !dbg !420
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !418
  br i1 %28, label %55, label %29, !dbg !418

; <label>:29:                                     ; preds = %55, %24
  %30 = phi i8* [ %25, %24 ], [ %61, %55 ], !dbg !421
  %31 = phi i32 [ 0, %24 ], [ %62, %55 ], !dbg !421
  %32 = icmp slt i32 %31, %1, !dbg !423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !424
  br i1 %32, label %33, label %76, !dbg !424

; <label>:33:                                     ; preds = %29
  %34 = xor i32 %31, -1, !dbg !425
  %35 = add i32 %34, %1, !dbg !425
  %36 = zext i32 %35 to i64, !dbg !425
  %37 = add nuw nsw i64 %36, 1, !dbg !425
  %38 = sub i32 %1, %31, !dbg !425
  %39 = xor i32 %31, -1, !dbg !425
  %40 = add i32 %39, %1, !dbg !425
  %41 = and i32 %38, 3, !dbg !425
  %42 = icmp eq i32 %41, 0, !dbg !425
  br i1 %42, label %51, label %43, !dbg !425

; <label>:43:                                     ; preds = %33, %43
  %44 = phi i32 [ %48, %43 ], [ %31, %33 ]
  %45 = phi i8* [ %47, %43 ], [ %30, %33 ]
  %46 = phi i32 [ %49, %43 ], [ %41, %33 ]
  %47 = getelementptr inbounds i8, i8* %45, i64 1, !dbg !425
  store i8 48, i8* %45, align 1, !dbg !426, !tbaa !362
  %48 = add nuw nsw i32 %44, 1, !dbg !428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !424
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !424
  %49 = add i32 %46, -1, !dbg !424
  %50 = icmp eq i32 %49, 0, !dbg !424
  br i1 %50, label %51, label %43, !dbg !424, !llvm.loop !429

; <label>:51:                                     ; preds = %43, %33
  %52 = phi i32 [ %31, %33 ], [ %48, %43 ]
  %53 = phi i8* [ %30, %33 ], [ %47, %43 ]
  %54 = icmp ult i32 %40, 3, !dbg !425
  br i1 %54, label %74, label %65, !dbg !425

; <label>:55:                                     ; preds = %24, %55
  %56 = phi i32 [ %62, %55 ], [ 0, %24 ]
  %57 = phi i8* [ %59, %55 ], [ %26, %24 ]
  %58 = phi i8* [ %61, %55 ], [ %25, %24 ]
  %59 = getelementptr inbounds i8, i8* %57, i64 1, !dbg !430
  %60 = load i8, i8* %57, align 1, !dbg !431, !tbaa !362
  %61 = getelementptr inbounds i8, i8* %58, i64 1, !dbg !432
  store i8 %60, i8* %58, align 1, !dbg !433, !tbaa !362
  %62 = add nuw nsw i32 %56, 1, !dbg !434
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !418
  %63 = load i8*, i8** %6, align 8, !dbg !419, !tbaa !353
  %64 = icmp ult i8* %59, %63, !dbg !420
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !418
  br i1 %64, label %55, label %29, !dbg !418, !llvm.loop !435

; <label>:65:                                     ; preds = %51, %65
  %66 = phi i32 [ %72, %65 ], [ %52, %51 ]
  %67 = phi i8* [ %71, %65 ], [ %53, %51 ]
  %68 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !425
  store i8 48, i8* %67, align 1, !dbg !426, !tbaa !362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !424
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !424
  %69 = getelementptr inbounds i8, i8* %67, i64 2, !dbg !425
  store i8 48, i8* %68, align 1, !dbg !426, !tbaa !362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !424
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !424
  %70 = getelementptr inbounds i8, i8* %67, i64 3, !dbg !425
  store i8 48, i8* %69, align 1, !dbg !426, !tbaa !362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !424
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !424
  %71 = getelementptr inbounds i8, i8* %67, i64 4, !dbg !425
  store i8 48, i8* %70, align 1, !dbg !426, !tbaa !362
  %72 = add nsw i32 %66, 4, !dbg !428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !424
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !424
  %73 = icmp eq i32 %72, %1, !dbg !423
  br i1 %73, label %74, label %65, !dbg !424, !llvm.loop !437

; <label>:74:                                     ; preds = %65, %51
  %75 = getelementptr i8, i8* %30, i64 %37, !dbg !425
  br label %76, !dbg !439

; <label>:76:                                     ; preds = %74, %29
  %77 = phi i8* [ %30, %29 ], [ %75, %74 ], !dbg !425
  store i8 0, i8* %77, align 1, !dbg !439, !tbaa !362
  br label %78, !dbg !440

; <label>:78:                                     ; preds = %16, %76
  %79 = phi i8* [ %25, %76 ], [ null, %16 ], !dbg !425
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !403
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #5, !dbg !441
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !441
  ret i8* %79, !dbg !441
}

; Function Attrs: noredzone nounwind
define dso_local i8* @_gcvt(%struct._reent*, double, i32, i8* returned, i8 signext, i32) local_unnamed_addr #0 !dbg !442 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = fcmp olt double %1, 0.000000e+00, !dbg !462
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !464
  br i1 %10, label %11, label %13, !dbg !464

; <label>:11:                                     ; preds = %6
  %12 = fsub double -0.000000e+00, %1, !dbg !465
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !467
  br label %13, !dbg !467

; <label>:13:                                     ; preds = %11, %6
  %14 = phi double [ %12, %11 ], [ %1, %6 ]
  %15 = fcmp oeq double %14, 0.000000e+00, !dbg !468
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !469
  br i1 %15, label %16, label %18, !dbg !469

; <label>:16:                                     ; preds = %13
  %17 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !470
  store i8 48, i8* %3, align 1, !dbg !472, !tbaa !362
  store i8 0, i8* %17, align 1, !dbg !473, !tbaa !362
  br label %133, !dbg !474

; <label>:18:                                     ; preds = %13
  %19 = fcmp ugt double %14, 1.000000e-04, !dbg !475
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !476
  br i1 %19, label %20, label %23, !dbg !476

; <label>:20:                                     ; preds = %18
  %21 = tail call double @_mprec_log10(i32 %2) #4, !dbg !477
  %22 = fcmp ult double %14, %21, !dbg !478
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !479
  br i1 %22, label %25, label %23, !dbg !479

; <label>:23:                                     ; preds = %20, %18
  %24 = add nsw i32 %2, -1, !dbg !480
  tail call fastcc void @print_e(%struct._reent* %0, i8* %3, double %14, i32 %24, i8 signext %4, i32 %5) #6, !dbg !482
  br label %133, !dbg !483

; <label>:25:                                     ; preds = %20
  %26 = bitcast i32* %7 to i8*, !dbg !484
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #5, !dbg !484
  %27 = bitcast i32* %8 to i8*, !dbg !485
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %27) #5, !dbg !485
  %28 = bitcast i8** %9 to i8*, !dbg !486
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %28) #5, !dbg !486
  %29 = fcmp olt double %14, 1.000000e+00, !dbg !487
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !489
  %30 = select i1 %29, i32 3, i32 2, !dbg !489
  %31 = call i8* @_dtoa_r(%struct._reent* %0, double %14, i32 %30, i32 %2, i32* nonnull %7, i32* nonnull %8, i8** nonnull %9) #4, !dbg !494
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %32 = load i32, i32* %7, align 4, !dbg !496, !tbaa !349
  %33 = icmp eq i32 %32, 9999, !dbg !498
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !499
  br i1 %33, label %39, label %34, !dbg !499

; <label>:34:                                     ; preds = %25
  %35 = load i8, i8* %31, align 1, !dbg !500, !tbaa !362
  %36 = icmp ne i8 %35, 0, !dbg !500
  %37 = icmp sgt i32 %32, 0, !dbg !501
  %38 = and i1 %36, %37, !dbg !502
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !503
  br i1 %38, label %49, label %41, !dbg !503

; <label>:39:                                     ; preds = %25
  %40 = call i8* @strcpy(i8* %3, i8* %31) #4, !dbg !504
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !506
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %28) #5, !dbg !507
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %27) #5, !dbg !507
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #5, !dbg !507
  br label %134

; <label>:41:                                     ; preds = %49, %34
  %42 = phi i32 [ %32, %34 ], [ %57, %49 ], !dbg !508
  %43 = phi i8* [ %3, %34 ], [ %55, %49 ]
  %44 = phi i32 [ %2, %34 ], [ %58, %49 ]
  %45 = phi i8* [ %31, %34 ], [ %54, %49 ], !dbg !509
  %46 = icmp sgt i32 %42, 0, !dbg !511
  %47 = icmp sgt i32 %44, 0, !dbg !512
  %48 = and i1 %47, %46, !dbg !513
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !514
  br i1 %48, label %63, label %73, !dbg !514

; <label>:49:                                     ; preds = %34, %49
  %50 = phi i8 [ %59, %49 ], [ %35, %34 ]
  %51 = phi i8* [ %54, %49 ], [ %31, %34 ]
  %52 = phi i32 [ %58, %49 ], [ %2, %34 ]
  %53 = phi i8* [ %55, %49 ], [ %3, %34 ]
  %54 = getelementptr inbounds i8, i8* %51, i64 1, !dbg !515
  %55 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !516
  store i8 %50, i8* %53, align 1, !dbg !517, !tbaa !362
  %56 = load i32, i32* %7, align 4, !dbg !518, !tbaa !349
  %57 = add nsw i32 %56, -1, !dbg !518
  store i32 %57, i32* %7, align 4, !dbg !518, !tbaa !349
  %58 = add nsw i32 %52, -1, !dbg !519
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !503
  %59 = load i8, i8* %54, align 1, !dbg !500, !tbaa !362
  %60 = icmp ne i8 %59, 0, !dbg !500
  %61 = icmp sgt i32 %56, 1, !dbg !501
  %62 = and i1 %60, %61, !dbg !502
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !503
  br i1 %62, label %49, label %41, !dbg !503, !llvm.loop !520

; <label>:63:                                     ; preds = %41, %63
  %64 = phi i32 [ %69, %63 ], [ %44, %41 ]
  %65 = phi i8* [ %66, %63 ], [ %43, %41 ]
  %66 = getelementptr inbounds i8, i8* %65, i64 1, !dbg !522
  store i8 48, i8* %65, align 1, !dbg !524, !tbaa !362
  %67 = load i32, i32* %7, align 4, !dbg !525, !tbaa !349
  %68 = add nsw i32 %67, -1, !dbg !525
  store i32 %68, i32* %7, align 4, !dbg !525, !tbaa !349
  %69 = add nsw i32 %64, -1, !dbg !526
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !514
  %70 = icmp sgt i32 %67, 1, !dbg !511
  %71 = icmp sgt i32 %64, 1, !dbg !512
  %72 = and i1 %71, %70, !dbg !513
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !514
  br i1 %72, label %63, label %73, !dbg !514, !llvm.loop !527

; <label>:73:                                     ; preds = %63, %41
  %74 = phi i8* [ %43, %41 ], [ %66, %63 ]
  %75 = phi i32 [ %44, %41 ], [ %69, %63 ]
  %76 = icmp ne i32 %5, 0, !dbg !529
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !531
  br i1 %76, label %80, label %77, !dbg !531

; <label>:77:                                     ; preds = %73
  %78 = load i8, i8* %45, align 1, !dbg !532, !tbaa !362
  %79 = icmp eq i8 %78, 0, !dbg !532
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !533
  br i1 %79, label %131, label %80, !dbg !533

; <label>:80:                                     ; preds = %77, %73
  %81 = icmp eq i8* %74, %3, !dbg !534
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !537
  br i1 %81, label %82, label %84, !dbg !537

; <label>:82:                                     ; preds = %80
  %83 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !538
  store i8 48, i8* %3, align 1, !dbg !539, !tbaa !362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !540
  br label %84, !dbg !540

; <label>:84:                                     ; preds = %82, %80
  %85 = phi i8* [ %83, %82 ], [ %74, %80 ]
  store i8 46, i8* %85, align 1, !dbg !541, !tbaa !362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !542
  %86 = getelementptr inbounds i8, i8* %85, i64 1, !dbg !543
  %87 = load i32, i32* %7, align 4, !dbg !545, !tbaa !349
  %88 = icmp slt i32 %87, 0, !dbg !546
  %89 = icmp sgt i32 %75, 0, !dbg !547
  %90 = and i1 %89, %88, !dbg !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !542
  br i1 %90, label %98, label %91, !dbg !542

; <label>:91:                                     ; preds = %98, %84
  %92 = phi i32 [ %75, %84 ], [ %103, %98 ]
  %93 = phi i8* [ %86, %84 ], [ %104, %98 ], !dbg !543
  %94 = load i8, i8* %45, align 1, !dbg !549, !tbaa !362
  %95 = icmp ne i8 %94, 0, !dbg !549
  %96 = icmp sgt i32 %92, 0, !dbg !550
  %97 = and i1 %96, %95, !dbg !551
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !552
  br i1 %97, label %108, label %120, !dbg !552

; <label>:98:                                     ; preds = %84, %98
  %99 = phi i8* [ %104, %98 ], [ %86, %84 ]
  %100 = phi i32 [ %103, %98 ], [ %75, %84 ]
  store i8 48, i8* %99, align 1, !dbg !553, !tbaa !362
  %101 = load i32, i32* %7, align 4, !dbg !554, !tbaa !349
  %102 = add nsw i32 %101, 1, !dbg !554
  store i32 %102, i32* %7, align 4, !dbg !554, !tbaa !349
  %103 = add nsw i32 %100, -1, !dbg !555
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !542
  %104 = getelementptr inbounds i8, i8* %99, i64 1, !dbg !543
  %105 = icmp slt i32 %101, -1, !dbg !546
  %106 = icmp sgt i32 %100, 1, !dbg !547
  %107 = and i1 %106, %105, !dbg !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !542
  br i1 %107, label %98, label %91, !dbg !542, !llvm.loop !556

; <label>:108:                                    ; preds = %91, %108
  %109 = phi i8 [ %116, %108 ], [ %94, %91 ]
  %110 = phi i8* [ %113, %108 ], [ %45, %91 ]
  %111 = phi i32 [ %115, %108 ], [ %92, %91 ]
  %112 = phi i8* [ %114, %108 ], [ %93, %91 ]
  %113 = getelementptr inbounds i8, i8* %110, i64 1, !dbg !558
  %114 = getelementptr inbounds i8, i8* %112, i64 1, !dbg !560
  store i8 %109, i8* %112, align 1, !dbg !561, !tbaa !362
  %115 = add nsw i32 %111, -1, !dbg !562
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !552
  %116 = load i8, i8* %113, align 1, !dbg !549, !tbaa !362
  %117 = icmp ne i8 %116, 0, !dbg !549
  %118 = icmp sgt i32 %111, 1, !dbg !550
  %119 = and i1 %118, %117, !dbg !551
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !552
  br i1 %119, label %108, label %120, !dbg !552, !llvm.loop !563

; <label>:120:                                    ; preds = %108, %91
  %121 = phi i8* [ %93, %91 ], [ %114, %108 ], !dbg !565
  %122 = phi i32 [ %92, %91 ], [ %115, %108 ]
  %123 = phi i1 [ %96, %91 ], [ %118, %108 ], !dbg !550
  %124 = and i1 %76, %123, !dbg !566
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !566
  br i1 %124, label %125, label %131, !dbg !566

; <label>:125:                                    ; preds = %120, %125
  %126 = phi i8* [ %128, %125 ], [ %121, %120 ], !dbg !567
  %127 = phi i32 [ %129, %125 ], [ %122, %120 ]
  %128 = getelementptr inbounds i8, i8* %126, i64 1, !dbg !571
  store i8 48, i8* %126, align 1, !dbg !572, !tbaa !362
  %129 = add nsw i32 %127, -1, !dbg !573
  %130 = icmp sgt i32 %127, 1, !dbg !574
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !575
  br i1 %130, label %125, label %131, !dbg !575

; <label>:131:                                    ; preds = %125, %77, %120
  %132 = phi i8* [ %121, %120 ], [ %74, %77 ], [ %128, %125 ]
  store i8 0, i8* %132, align 1, !dbg !576, !tbaa !362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !507
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %28) #5, !dbg !507
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %27) #5, !dbg !507
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #5, !dbg !507
  br label %133

; <label>:133:                                    ; preds = %131, %23, %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %134, !dbg !577

; <label>:134:                                    ; preds = %39, %133
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !578
  ret i8* %3, !dbg !578
}

; Function Attrs: noredzone
declare dso_local double @_mprec_log10(i32) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc void @print_e(%struct._reent*, i8*, double, i32, i8 signext, i32) unnamed_addr #0 !dbg !579 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = bitcast i32* %7 to i8*, !dbg !599
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #5, !dbg !599
  %11 = bitcast i8** %8 to i8*, !dbg !600
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #5, !dbg !600
  %12 = bitcast i32* %9 to i8*, !dbg !601
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #5, !dbg !601
  %13 = add nsw i32 %3, 1, !dbg !603
  %14 = call i8* @_dtoa_r(%struct._reent* %0, double %2, i32 2, i32 %13, i32* nonnull %9, i32* nonnull %7, i8** nonnull %8) #4, !dbg !607
  %15 = load i32, i32* %9, align 4, !dbg !609, !tbaa !349
  %16 = icmp eq i32 %15, 9999, !dbg !611
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !612
  br i1 %16, label %17, label %19, !dbg !612

; <label>:17:                                     ; preds = %6
  %18 = call i8* @strcpy(i8* %1, i8* %14) #4, !dbg !613
  br label %98, !dbg !615

; <label>:19:                                     ; preds = %6
  %20 = load i8, i8* %14, align 1, !dbg !616, !tbaa !362
  %21 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !617
  store i8 %20, i8* %1, align 1, !dbg !618, !tbaa !362
  %22 = or i32 %5, %3, !dbg !619
  %23 = icmp eq i32 %22, 0, !dbg !619
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !619
  br i1 %23, label %26, label %24, !dbg !619

; <label>:24:                                     ; preds = %19
  %25 = getelementptr inbounds i8, i8* %1, i64 2, !dbg !621
  store i8 46, i8* %21, align 1, !dbg !622, !tbaa !362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !623
  br label %26, !dbg !623

; <label>:26:                                     ; preds = %19, %24
  %27 = phi i8* [ %25, %24 ], [ %21, %19 ], !dbg !624
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !625
  %28 = getelementptr inbounds i8, i8* %14, i64 1, !dbg !626
  %29 = load i8, i8* %28, align 1, !dbg !628, !tbaa !362
  %30 = icmp ne i8 %29, 0, !dbg !628
  %31 = icmp sgt i32 %3, 0, !dbg !629
  %32 = and i1 %31, %30, !dbg !630
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !625
  br i1 %32, label %33, label %45, !dbg !625

; <label>:33:                                     ; preds = %26, %33
  %34 = phi i8 [ %41, %33 ], [ %29, %26 ]
  %35 = phi i8* [ %40, %33 ], [ %28, %26 ]
  %36 = phi i8* [ %38, %33 ], [ %27, %26 ]
  %37 = phi i32 [ %39, %33 ], [ %3, %26 ]
  %38 = getelementptr inbounds i8, i8* %36, i64 1, !dbg !631
  store i8 %34, i8* %36, align 1, !dbg !632, !tbaa !362
  %39 = add nsw i32 %37, -1, !dbg !633
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !625
  %40 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !626
  %41 = load i8, i8* %40, align 1, !dbg !628, !tbaa !362
  %42 = icmp ne i8 %41, 0, !dbg !628
  %43 = icmp sgt i32 %37, 1, !dbg !629
  %44 = and i1 %43, %42, !dbg !630
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !625
  br i1 %44, label %33, label %45, !dbg !625, !llvm.loop !634

; <label>:45:                                     ; preds = %33, %26
  %46 = phi i32 [ %3, %26 ], [ %39, %33 ], !dbg !626
  %47 = phi i8* [ %27, %26 ], [ %38, %33 ], !dbg !626
  %48 = icmp eq i8 %4, 103, !dbg !636
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !638
  br i1 %48, label %49, label %50, !dbg !638

; <label>:49:                                     ; preds = %45
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !639
  br label %61, !dbg !639

; <label>:50:                                     ; preds = %45
  %51 = icmp eq i8 %4, 71, !dbg !640
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !642
  br i1 %51, label %54, label %52, !dbg !642

; <label>:52:                                     ; preds = %50
  %53 = icmp sgt i32 %46, 0, !dbg !643
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !645
  br i1 %53, label %55, label %61, !dbg !645

; <label>:54:                                     ; preds = %50
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !646
  br label %61, !dbg !646

; <label>:55:                                     ; preds = %52, %55
  %56 = phi i8* [ %58, %55 ], [ %47, %52 ]
  %57 = phi i32 [ %59, %55 ], [ %46, %52 ]
  %58 = getelementptr inbounds i8, i8* %56, i64 1, !dbg !647
  store i8 48, i8* %56, align 1, !dbg !649, !tbaa !362
  %59 = add nsw i32 %57, -1, !dbg !650
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !645
  %60 = icmp sgt i32 %57, 1, !dbg !643
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !645
  br i1 %60, label %55, label %61, !dbg !645, !llvm.loop !651

; <label>:61:                                     ; preds = %55, %52, %54, %49
  %62 = phi i8 [ 101, %49 ], [ 69, %54 ], [ %4, %52 ], [ %4, %55 ]
  %63 = phi i8* [ %47, %49 ], [ %47, %54 ], [ %47, %52 ], [ %58, %55 ], !dbg !621
  %64 = getelementptr inbounds i8, i8* %63, i64 1, !dbg !653
  store i8 %62, i8* %63, align 1, !dbg !654, !tbaa !362
  %65 = load i32, i32* %9, align 4, !dbg !655, !tbaa !349
  %66 = add nsw i32 %65, -1, !dbg !655
  store i32 %66, i32* %9, align 4, !dbg !655, !tbaa !349
  %67 = icmp slt i32 %65, 1, !dbg !656
  %68 = getelementptr inbounds i8, i8* %63, i64 2, !dbg !658
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !660
  br i1 %67, label %69, label %72, !dbg !660

; <label>:69:                                     ; preds = %61
  store i8 45, i8* %64, align 1, !dbg !661, !tbaa !362
  %70 = load i32, i32* %9, align 4, !dbg !663, !tbaa !349
  %71 = sub nsw i32 0, %70, !dbg !664
  store i32 %71, i32* %9, align 4, !dbg !665, !tbaa !349
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !666
  br label %74, !dbg !666

; <label>:72:                                     ; preds = %61
  store i8 43, i8* %64, align 1, !dbg !667, !tbaa !362
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %73 = load i32, i32* %9, align 4, !dbg !668, !tbaa !349
  br label %74

; <label>:74:                                     ; preds = %72, %69
  %75 = phi i32 [ %73, %72 ], [ %71, %69 ], !dbg !668
  %76 = icmp sgt i32 %75, 99, !dbg !669
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !670
  br i1 %76, label %77, label %85, !dbg !670

; <label>:77:                                     ; preds = %74
  %78 = udiv i32 %75, 100
  %79 = trunc i32 %78 to i8, !dbg !672
  %80 = add i8 %79, 48, !dbg !672
  %81 = getelementptr inbounds i8, i8* %63, i64 3, !dbg !673
  store i8 %80, i8* %68, align 1, !dbg !674, !tbaa !362
  %82 = load i32, i32* %9, align 4, !dbg !675, !tbaa !349
  %83 = mul i32 %78, -100, !dbg !675
  %84 = add i32 %82, %83, !dbg !675
  store i32 %84, i32* %9, align 4, !dbg !675, !tbaa !349
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !676
  br label %85, !dbg !676

; <label>:85:                                     ; preds = %77, %74
  %86 = phi i32 [ %84, %77 ], [ %75, %74 ], !dbg !677
  %87 = phi i8* [ %81, %77 ], [ %68, %74 ], !dbg !658
  %88 = sdiv i32 %86, 10, !dbg !678
  %89 = trunc i32 %88 to i8, !dbg !680
  %90 = add i8 %89, 48, !dbg !680
  %91 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !681
  store i8 %90, i8* %87, align 1, !dbg !682, !tbaa !362
  %92 = load i32, i32* %9, align 4, !dbg !683, !tbaa !349
  %93 = mul i32 %88, -10, !dbg !683
  %94 = add i32 %92, %93, !dbg !683
  store i32 %94, i32* %9, align 4, !dbg !683, !tbaa !349
  %95 = trunc i32 %94 to i8, !dbg !684
  %96 = add i8 %95, 48, !dbg !684
  %97 = getelementptr inbounds i8, i8* %87, i64 2, !dbg !685
  store i8 %96, i8* %91, align 1, !dbg !686, !tbaa !362
  store i8 0, i8* %97, align 1, !dbg !687, !tbaa !362
  br label %98, !dbg !688

; <label>:98:                                     ; preds = %85, %17
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !689
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #5, !dbg !688
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #5, !dbg !688
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #5, !dbg !688
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !688
  ret void, !dbg !688
}

; Function Attrs: noredzone
declare dso_local i8* @strcpy(i8*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i8* @_dcvt(%struct._reent*, i8* returned, double, i32, i32, i8 signext, i32) local_unnamed_addr #0 !dbg !690 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = sext i8 %5 to i32, !dbg !702
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !703
  switch i32 %11, label %117 [
    i32 102, label %12
    i32 70, label %12
    i32 103, label %109
    i32 71, label %109
    i32 101, label %115
    i32 69, label %115
  ], !dbg !703

; <label>:12:                                     ; preds = %7, %7
  %13 = bitcast i32* %8 to i8*, !dbg !723
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13) #5, !dbg !723
  %14 = bitcast i32* %9 to i8*, !dbg !724
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %14) #5, !dbg !724
  %15 = bitcast i8** %10 to i8*, !dbg !725
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %15) #5, !dbg !725
  %16 = call i8* @_dtoa_r(%struct._reent* %0, double %2, i32 3, i32 %3, i32* nonnull %8, i32* nonnull %9, i8** nonnull %10) #4, !dbg !729
  %17 = load i32, i32* %8, align 4, !dbg !732, !tbaa !349
  %18 = icmp eq i32 %17, 9999, !dbg !734
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !735
  br i1 %18, label %24, label %19, !dbg !735

; <label>:19:                                     ; preds = %12
  %20 = load i8, i8* %16, align 1, !dbg !736, !tbaa !362
  %21 = icmp ne i8 %20, 0, !dbg !736
  %22 = icmp sgt i32 %17, 0, !dbg !737
  %23 = and i1 %22, %21, !dbg !738
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !739
  br i1 %23, label %31, label %26, !dbg !739

; <label>:24:                                     ; preds = %12
  %25 = call i8* @strcpy(i8* %1, i8* %16) #4, !dbg !740
  br label %108, !dbg !742

; <label>:26:                                     ; preds = %31, %19
  %27 = phi i8* [ %16, %19 ], [ %35, %31 ], !dbg !743
  %28 = phi i8* [ %1, %19 ], [ %36, %31 ]
  %29 = phi i32 [ %17, %19 ], [ %38, %31 ], !dbg !745
  %30 = icmp sgt i32 %29, 0, !dbg !746
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !747
  br i1 %30, label %43, label %49, !dbg !747

; <label>:31:                                     ; preds = %19, %31
  %32 = phi i8 [ %39, %31 ], [ %20, %19 ]
  %33 = phi i8* [ %36, %31 ], [ %1, %19 ]
  %34 = phi i8* [ %35, %31 ], [ %16, %19 ]
  %35 = getelementptr inbounds i8, i8* %34, i64 1, !dbg !748
  %36 = getelementptr inbounds i8, i8* %33, i64 1, !dbg !749
  store i8 %32, i8* %33, align 1, !dbg !750, !tbaa !362
  %37 = load i32, i32* %8, align 4, !dbg !751, !tbaa !349
  %38 = add nsw i32 %37, -1, !dbg !751
  store i32 %38, i32* %8, align 4, !dbg !751, !tbaa !349
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !739
  %39 = load i8, i8* %35, align 1, !dbg !736, !tbaa !362
  %40 = icmp ne i8 %39, 0, !dbg !736
  %41 = icmp sgt i32 %37, 1, !dbg !737
  %42 = and i1 %41, %40, !dbg !738
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !739
  br i1 %42, label %31, label %26, !dbg !739, !llvm.loop !752

; <label>:43:                                     ; preds = %26, %43
  %44 = phi i8* [ %45, %43 ], [ %28, %26 ]
  %45 = getelementptr inbounds i8, i8* %44, i64 1, !dbg !755
  store i8 48, i8* %44, align 1, !dbg !757, !tbaa !362
  %46 = load i32, i32* %8, align 4, !dbg !758, !tbaa !349
  %47 = add nsw i32 %46, -1, !dbg !758
  store i32 %47, i32* %8, align 4, !dbg !758, !tbaa !349
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !747
  %48 = icmp sgt i32 %46, 1, !dbg !746
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !747
  br i1 %48, label %43, label %49, !dbg !747, !llvm.loop !759

; <label>:49:                                     ; preds = %43, %26
  %50 = phi i8* [ %28, %26 ], [ %45, %43 ]
  %51 = or i32 %6, %3, !dbg !762
  %52 = icmp eq i32 %51, 0, !dbg !762
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !764
  br i1 %52, label %53, label %56, !dbg !764

; <label>:53:                                     ; preds = %49
  %54 = load i8, i8* %27, align 1, !dbg !765, !tbaa !362
  %55 = icmp eq i8 %54, 0, !dbg !765
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !766
  br i1 %55, label %106, label %56, !dbg !766

; <label>:56:                                     ; preds = %53, %49
  %57 = icmp eq i8* %27, %16, !dbg !767
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !770
  br i1 %57, label %58, label %60, !dbg !770

; <label>:58:                                     ; preds = %56
  %59 = getelementptr inbounds i8, i8* %50, i64 1, !dbg !771
  store i8 48, i8* %50, align 1, !dbg !772, !tbaa !362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !773
  br label %60, !dbg !773

; <label>:60:                                     ; preds = %58, %56
  %61 = phi i8* [ %59, %58 ], [ %50, %56 ]
  store i8 46, i8* %61, align 1, !dbg !774, !tbaa !362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !775
  %62 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !776
  %63 = load i32, i32* %8, align 4, !dbg !778, !tbaa !349
  %64 = icmp slt i32 %63, 0, !dbg !779
  %65 = icmp sgt i32 %3, 0, !dbg !780
  %66 = and i1 %65, %64, !dbg !781
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !775
  br i1 %66, label %74, label %67, !dbg !775

; <label>:67:                                     ; preds = %74, %60
  %68 = phi i32 [ %3, %60 ], [ %79, %74 ]
  %69 = phi i8* [ %62, %60 ], [ %80, %74 ], !dbg !776
  %70 = load i8, i8* %27, align 1, !dbg !782, !tbaa !362
  %71 = icmp ne i8 %70, 0, !dbg !782
  %72 = icmp sgt i32 %68, 0, !dbg !783
  %73 = and i1 %72, %71, !dbg !784
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !785
  br i1 %73, label %88, label %84, !dbg !785

; <label>:74:                                     ; preds = %60, %74
  %75 = phi i8* [ %80, %74 ], [ %62, %60 ]
  %76 = phi i32 [ %79, %74 ], [ %3, %60 ]
  store i8 48, i8* %75, align 1, !dbg !786, !tbaa !362
  %77 = load i32, i32* %8, align 4, !dbg !787, !tbaa !349
  %78 = add nsw i32 %77, 1, !dbg !787
  store i32 %78, i32* %8, align 4, !dbg !787, !tbaa !349
  %79 = add nsw i32 %76, -1, !dbg !788
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !775
  %80 = getelementptr inbounds i8, i8* %75, i64 1, !dbg !776
  %81 = icmp slt i32 %77, -1, !dbg !779
  %82 = icmp sgt i32 %76, 1, !dbg !780
  %83 = and i1 %82, %81, !dbg !781
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !775
  br i1 %83, label %74, label %67, !dbg !775, !llvm.loop !789

; <label>:84:                                     ; preds = %88, %67
  %85 = phi i32 [ %68, %67 ], [ %95, %88 ]
  %86 = phi i8* [ %69, %67 ], [ %94, %88 ], !dbg !792
  %87 = icmp sgt i32 %85, 0, !dbg !794
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !795
  br i1 %87, label %100, label %106, !dbg !795

; <label>:88:                                     ; preds = %67, %88
  %89 = phi i8 [ %96, %88 ], [ %70, %67 ]
  %90 = phi i8* [ %94, %88 ], [ %69, %67 ]
  %91 = phi i8* [ %93, %88 ], [ %27, %67 ]
  %92 = phi i32 [ %95, %88 ], [ %68, %67 ]
  %93 = getelementptr inbounds i8, i8* %91, i64 1, !dbg !796
  %94 = getelementptr inbounds i8, i8* %90, i64 1, !dbg !797
  store i8 %89, i8* %90, align 1, !dbg !798, !tbaa !362
  %95 = add nsw i32 %92, -1, !dbg !799
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !785
  %96 = load i8, i8* %93, align 1, !dbg !782, !tbaa !362
  %97 = icmp ne i8 %96, 0, !dbg !782
  %98 = icmp sgt i32 %92, 1, !dbg !783
  %99 = and i1 %98, %97, !dbg !784
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !785
  br i1 %99, label %88, label %84, !dbg !785, !llvm.loop !800

; <label>:100:                                    ; preds = %84, %100
  %101 = phi i8* [ %103, %100 ], [ %86, %84 ]
  %102 = phi i32 [ %104, %100 ], [ %85, %84 ]
  %103 = getelementptr inbounds i8, i8* %101, i64 1, !dbg !803
  store i8 48, i8* %101, align 1, !dbg !805, !tbaa !362
  %104 = add nsw i32 %102, -1, !dbg !806
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !795
  %105 = icmp sgt i32 %102, 1, !dbg !794
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !795
  br i1 %105, label %100, label %106, !dbg !795, !llvm.loop !807

; <label>:106:                                    ; preds = %100, %84, %53
  %107 = phi i8* [ %50, %53 ], [ %86, %84 ], [ %103, %100 ]
  store i8 0, i8* %107, align 1, !dbg !810, !tbaa !362
  br label %108, !dbg !811

; <label>:108:                                    ; preds = %24, %106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !812
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #5, !dbg !811
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14) #5, !dbg !811
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #5, !dbg !811
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !811
  br label %116, !dbg !813

; <label>:109:                                    ; preds = %7, %7
  %110 = icmp eq i32 %3, 0, !dbg !814
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !816
  br i1 %110, label %111, label %112, !dbg !816

; <label>:111:                                    ; preds = %109
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !817
  br label %112, !dbg !817

; <label>:112:                                    ; preds = %111, %109
  %113 = phi i32 [ 1, %111 ], [ %3, %109 ]
  %114 = tail call i8* @_gcvt(%struct._reent* %0, double %2, i32 %113, i8* %1, i8 signext %5, i32 %6) #6, !dbg !818
  br label %116, !dbg !819

; <label>:115:                                    ; preds = %7, %7
  tail call fastcc void @print_e(%struct._reent* %0, i8* %1, double %2, i32 %3, i8 signext %5, i32 %6) #6, !dbg !820
  br label %116, !dbg !821

; <label>:116:                                    ; preds = %108, %112, %115
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !812
  br label %117, !dbg !822

; <label>:117:                                    ; preds = %116, %7
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !822
  ret i8* %1, !dbg !822
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nobuiltin noredzone nounwind }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin noredzone }

!llvm.module.flags = !{!7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/ecvtbuf.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!7 = !{i32 2, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!11 = distinct !DISubprogram(name: "fcvtbuf", scope: !1, file: !1, line: 229, type: !12, isLocal: false, isDefinition: true, scopeLine: 235, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !17)
!12 = !DISubroutineType(types: !13)
!13 = !{!5, !14, !15, !16, !16, !5}
!14 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!17 = !{!18, !19, !20, !21, !22, !23, !300, !301, !302, !303}
!18 = !DILocalVariable(name: "invalue", arg: 1, scope: !11, file: !1, line: 229, type: !14)
!19 = !DILocalVariable(name: "ndigit", arg: 2, scope: !11, file: !1, line: 229, type: !15)
!20 = !DILocalVariable(name: "decpt", arg: 3, scope: !11, file: !1, line: 229, type: !16)
!21 = !DILocalVariable(name: "sign", arg: 4, scope: !11, file: !1, line: 229, type: !16)
!22 = !DILocalVariable(name: "fcvt_buf", arg: 5, scope: !11, file: !1, line: 229, type: !5)
!23 = !DILocalVariable(name: "reent", scope: !11, file: !1, line: 236, type: !24)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !26, line: 569, size: 14912, elements: !27)
!26 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!27 = !{!28, !29, !108, !109, !110, !111, !115, !116, !181, !182, !186, !198, !199, !200, !202, !203, !204, !266, !285, !286, !291, !298}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !25, file: !26, line: 571, baseType: !15, size: 32)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !25, file: !26, line: 576, baseType: !30, size: 64, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !26, line: 287, baseType: !32)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !26, line: 181, size: 1408, elements: !33)
!33 = !{!34, !37, !38, !39, !41, !42, !47, !48, !49, !56, !62, !67, !71, !72, !73, !74, !78, !82, !83, !84, !86, !87, !91, !107}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !32, file: !26, line: 182, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !32, file: !26, line: 183, baseType: !15, size: 32, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !32, file: !26, line: 184, baseType: !15, size: 32, offset: 96)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !32, file: !26, line: 185, baseType: !40, size: 16, offset: 128)
!40 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !32, file: !26, line: 186, baseType: !40, size: 16, offset: 144)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !32, file: !26, line: 187, baseType: !43, size: 128, offset: 192)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !26, line: 117, size: 128, elements: !44)
!44 = !{!45, !46}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !43, file: !26, line: 118, baseType: !35, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !43, file: !26, line: 119, baseType: !15, size: 32, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !32, file: !26, line: 188, baseType: !15, size: 32, offset: 320)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !32, file: !26, line: 195, baseType: !4, size: 64, offset: 384)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !32, file: !26, line: 197, baseType: !50, size: 64, offset: 448)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DISubroutineType(types: !52)
!52 = !{!53, !24, !4, !5, !15}
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !54, line: 145, baseType: !55)
!54 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!55 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !32, file: !26, line: 199, baseType: !57, size: 64, offset: 512)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DISubroutineType(types: !59)
!59 = !{!53, !24, !4, !60, !15}
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !32, file: !26, line: 202, baseType: !63, size: 64, offset: 576)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DISubroutineType(types: !65)
!65 = !{!66, !24, !4, !66, !15}
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !54, line: 114, baseType: !55)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !32, file: !26, line: 203, baseType: !68, size: 64, offset: 640)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{!15, !24, !4}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !32, file: !26, line: 206, baseType: !43, size: 128, offset: 704)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !32, file: !26, line: 207, baseType: !35, size: 64, offset: 832)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !32, file: !26, line: 208, baseType: !15, size: 32, offset: 896)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !32, file: !26, line: 211, baseType: !75, size: 24, offset: 928)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 24, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 3)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !32, file: !26, line: 212, baseType: !79, size: 8, offset: 952)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 8, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 1)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !32, file: !26, line: 215, baseType: !43, size: 128, offset: 960)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !32, file: !26, line: 218, baseType: !15, size: 32, offset: 1088)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !32, file: !26, line: 219, baseType: !85, size: 64, offset: 1152)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !54, line: 44, baseType: !55)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !32, file: !26, line: 222, baseType: !24, size: 64, offset: 1216)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !32, file: !26, line: 226, baseType: !88, size: 32, offset: 1280)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !54, line: 175, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !90, line: 12, baseType: !15)
!90 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !32, file: !26, line: 228, baseType: !92, size: 64, offset: 1312)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !54, line: 171, baseType: !93)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !54, line: 163, size: 64, elements: !94)
!94 = !{!95, !96}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !93, file: !54, line: 165, baseType: !15, size: 32)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !93, file: !54, line: 170, baseType: !97, size: 32, offset: 32)
!97 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !93, file: !54, line: 166, size: 32, elements: !98)
!98 = !{!99, !103}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !97, file: !54, line: 168, baseType: !100, size: 32)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !101, line: 124, baseType: !102)
!101 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!102 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !97, file: !54, line: 169, baseType: !104, size: 32)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 32, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 4)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !32, file: !26, line: 229, baseType: !15, size: 32, offset: 1376)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !25, file: !26, line: 576, baseType: !30, size: 64, offset: 128)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !25, file: !26, line: 576, baseType: !30, size: 64, offset: 192)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !25, file: !26, line: 578, baseType: !15, size: 32, offset: 256)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !25, file: !26, line: 579, baseType: !112, size: 200, offset: 288)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 200, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 25)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !25, file: !26, line: 582, baseType: !15, size: 32, offset: 512)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !25, file: !26, line: 583, baseType: !117, size: 64, offset: 576)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !119, line: 178, size: 3392, elements: !120)
!119 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/../locale/setlocale.h", directory: "/root/.unikraft/apps/redis/build")
!120 = !{!121, !126, !134, !143, !144, !145, !173, !177, !180}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "categories", scope: !118, file: !119, line: 180, baseType: !122, size: 1792)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1792, elements: !123)
!123 = !{!124, !125}
!124 = !DISubrange(count: 7)
!125 = !DISubrange(count: 32)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "wctomb", scope: !118, file: !119, line: 181, baseType: !127, size: 64, offset: 1792)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DISubroutineType(types: !129)
!129 = !{!15, !24, !5, !130, !131}
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !101, line: 83, baseType: !15)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !133, line: 86, baseType: !92)
!133 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/wchar.h", directory: "/root/.unikraft/apps/redis/build")
!134 = !DIDerivedType(tag: DW_TAG_member, name: "mbtowc", scope: !118, file: !119, line: 183, baseType: !135, size: 64, offset: 1856)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DISubroutineType(types: !137)
!137 = !{!15, !24, !138, !60, !139, !131}
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !140, line: 40, baseType: !141)
!140 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !54, line: 129, baseType: !142)
!142 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "cjk_lang", scope: !118, file: !119, line: 185, baseType: !15, size: 32, offset: 1920)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_ptr", scope: !118, file: !119, line: 186, baseType: !5, size: 64, offset: 1984)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "lconv", scope: !118, file: !119, line: 187, baseType: !146, size: 768, offset: 2048)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !147, line: 42, size: 768, elements: !148)
!147 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/locale.h", directory: "/root/.unikraft/apps/redis/build")
!148 = !{!149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "decimal_point", scope: !146, file: !147, line: 44, baseType: !5, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "thousands_sep", scope: !146, file: !147, line: 45, baseType: !5, size: 64, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "grouping", scope: !146, file: !147, line: 46, baseType: !5, size: 64, offset: 128)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "int_curr_symbol", scope: !146, file: !147, line: 47, baseType: !5, size: 64, offset: 192)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "currency_symbol", scope: !146, file: !147, line: 48, baseType: !5, size: 64, offset: 256)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "mon_decimal_point", scope: !146, file: !147, line: 49, baseType: !5, size: 64, offset: 320)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "mon_thousands_sep", scope: !146, file: !147, line: 50, baseType: !5, size: 64, offset: 384)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "mon_grouping", scope: !146, file: !147, line: 51, baseType: !5, size: 64, offset: 448)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "positive_sign", scope: !146, file: !147, line: 52, baseType: !5, size: 64, offset: 512)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "negative_sign", scope: !146, file: !147, line: 53, baseType: !5, size: 64, offset: 576)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "int_frac_digits", scope: !146, file: !147, line: 54, baseType: !6, size: 8, offset: 640)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "frac_digits", scope: !146, file: !147, line: 55, baseType: !6, size: 8, offset: 648)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "p_cs_precedes", scope: !146, file: !147, line: 56, baseType: !6, size: 8, offset: 656)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "p_sep_by_space", scope: !146, file: !147, line: 57, baseType: !6, size: 8, offset: 664)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "n_cs_precedes", scope: !146, file: !147, line: 58, baseType: !6, size: 8, offset: 672)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "n_sep_by_space", scope: !146, file: !147, line: 59, baseType: !6, size: 8, offset: 680)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "p_sign_posn", scope: !146, file: !147, line: 60, baseType: !6, size: 8, offset: 688)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "n_sign_posn", scope: !146, file: !147, line: 61, baseType: !6, size: 8, offset: 696)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_cs_precedes", scope: !146, file: !147, line: 62, baseType: !6, size: 8, offset: 704)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sep_by_space", scope: !146, file: !147, line: 63, baseType: !6, size: 8, offset: 712)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sign_posn", scope: !146, file: !147, line: 64, baseType: !6, size: 8, offset: 720)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_cs_precedes", scope: !146, file: !147, line: 65, baseType: !6, size: 8, offset: 728)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sep_by_space", scope: !146, file: !147, line: 66, baseType: !6, size: 8, offset: 736)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sign_posn", scope: !146, file: !147, line: 67, baseType: !6, size: 8, offset: 744)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cur_max", scope: !118, file: !119, line: 189, baseType: !174, size: 16, offset: 2816)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 16, elements: !175)
!175 = !{!176}
!176 = !DISubrange(count: 2)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_codeset", scope: !118, file: !119, line: 190, baseType: !178, size: 256, offset: 2832)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !179)
!179 = !{!125}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "message_codeset", scope: !118, file: !119, line: 191, baseType: !178, size: 256, offset: 3088)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !25, file: !26, line: 585, baseType: !15, size: 32, offset: 640)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !25, file: !26, line: 587, baseType: !183, size: 64, offset: 704)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{null, !24}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !25, file: !26, line: 590, baseType: !187, size: 64, offset: 768)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !26, line: 47, size: 256, elements: !189)
!189 = !{!190, !191, !192, !193, !194, !195}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !188, file: !26, line: 49, baseType: !187, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !188, file: !26, line: 50, baseType: !15, size: 32, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !188, file: !26, line: 50, baseType: !15, size: 32, offset: 96)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !188, file: !26, line: 50, baseType: !15, size: 32, offset: 128)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !188, file: !26, line: 50, baseType: !15, size: 32, offset: 160)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !188, file: !26, line: 51, baseType: !196, size: 32, offset: 192)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 32, elements: !80)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !26, line: 25, baseType: !102)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !25, file: !26, line: 591, baseType: !15, size: 32, offset: 832)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !25, file: !26, line: 592, baseType: !187, size: 64, offset: 896)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !25, file: !26, line: 593, baseType: !201, size: 64, offset: 960)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !25, file: !26, line: 596, baseType: !15, size: 32, offset: 1024)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !25, file: !26, line: 597, baseType: !5, size: 64, offset: 1088)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !25, file: !26, line: 632, baseType: !205, size: 2880, offset: 1152)
!205 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !25, file: !26, line: 599, size: 2880, elements: !206)
!206 = !{!207, !257}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !205, file: !26, line: 622, baseType: !208, size: 1728)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !205, file: !26, line: 601, size: 1728, elements: !209)
!209 = !{!210, !211, !212, !216, !228, !229, !231, !239, !240, !241, !242, !246, !250, !251, !252, !253, !254, !255, !256}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !208, file: !26, line: 603, baseType: !102, size: 32)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !208, file: !26, line: 604, baseType: !5, size: 64, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !208, file: !26, line: 605, baseType: !213, size: 208, offset: 128)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 208, elements: !214)
!214 = !{!215}
!215 = !DISubrange(count: 26)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !208, file: !26, line: 606, baseType: !217, size: 288, offset: 352)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !26, line: 55, size: 288, elements: !218)
!218 = !{!219, !220, !221, !222, !223, !224, !225, !226, !227}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !217, file: !26, line: 57, baseType: !15, size: 32)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !217, file: !26, line: 58, baseType: !15, size: 32, offset: 32)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !217, file: !26, line: 59, baseType: !15, size: 32, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !217, file: !26, line: 60, baseType: !15, size: 32, offset: 96)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !217, file: !26, line: 61, baseType: !15, size: 32, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !217, file: !26, line: 62, baseType: !15, size: 32, offset: 160)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !217, file: !26, line: 63, baseType: !15, size: 32, offset: 192)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !217, file: !26, line: 64, baseType: !15, size: 32, offset: 224)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !217, file: !26, line: 65, baseType: !15, size: 32, offset: 256)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !208, file: !26, line: 607, baseType: !15, size: 32, offset: 640)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !208, file: !26, line: 608, baseType: !230, size: 64, offset: 704)
!230 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !208, file: !26, line: 609, baseType: !232, size: 112, offset: 768)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !26, line: 319, size: 112, elements: !233)
!233 = !{!234, !237, !238}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !232, file: !26, line: 320, baseType: !235, size: 48)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !236, size: 48, elements: !76)
!236 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !232, file: !26, line: 321, baseType: !235, size: 48, offset: 48)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !232, file: !26, line: 322, baseType: !236, size: 16, offset: 96)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !208, file: !26, line: 610, baseType: !92, size: 64, offset: 896)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !208, file: !26, line: 611, baseType: !92, size: 64, offset: 960)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !208, file: !26, line: 612, baseType: !92, size: 64, offset: 1024)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !208, file: !26, line: 613, baseType: !243, size: 64, offset: 1088)
!243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 64, elements: !244)
!244 = !{!245}
!245 = !DISubrange(count: 8)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !208, file: !26, line: 614, baseType: !247, size: 192, offset: 1152)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 192, elements: !248)
!248 = !{!249}
!249 = !DISubrange(count: 24)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !208, file: !26, line: 615, baseType: !15, size: 32, offset: 1344)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !208, file: !26, line: 616, baseType: !92, size: 64, offset: 1376)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !208, file: !26, line: 617, baseType: !92, size: 64, offset: 1440)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !208, file: !26, line: 618, baseType: !92, size: 64, offset: 1504)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !208, file: !26, line: 619, baseType: !92, size: 64, offset: 1568)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !208, file: !26, line: 620, baseType: !92, size: 64, offset: 1632)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !208, file: !26, line: 621, baseType: !15, size: 32, offset: 1696)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !205, file: !26, line: 631, baseType: !258, size: 2880)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !205, file: !26, line: 626, size: 2880, elements: !259)
!259 = !{!260, !264}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !258, file: !26, line: 629, baseType: !261, size: 1920)
!261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 1920, elements: !262)
!262 = !{!263}
!263 = !DISubrange(count: 30)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !258, file: !26, line: 630, baseType: !265, size: 960, offset: 1920)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 960, elements: !262)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !25, file: !26, line: 636, baseType: !267, size: 64, offset: 4032)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !26, line: 93, size: 6336, elements: !269)
!269 = !{!270, !271, !272, !277}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !268, file: !26, line: 94, baseType: !267, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !268, file: !26, line: 95, baseType: !15, size: 32, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !268, file: !26, line: 97, baseType: !273, size: 2048, offset: 128)
!273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !274, size: 2048, elements: !179)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{null}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !268, file: !26, line: 98, baseType: !278, size: 4160, offset: 2176)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !26, line: 74, size: 4160, elements: !279)
!279 = !{!280, !282, !283, !284}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !278, file: !26, line: 75, baseType: !281, size: 2048)
!281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !179)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !278, file: !26, line: 76, baseType: !281, size: 2048, offset: 2048)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !278, file: !26, line: 78, baseType: !197, size: 32, offset: 4096)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !278, file: !26, line: 81, baseType: !197, size: 32, offset: 4128)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !25, file: !26, line: 637, baseType: !268, size: 6336, offset: 4096)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !25, file: !26, line: 641, baseType: !287, size: 64, offset: 10432)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DISubroutineType(types: !290)
!290 = !{null, !15}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !25, file: !26, line: 646, baseType: !292, size: 192, offset: 10496)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !26, line: 291, size: 192, elements: !293)
!293 = !{!294, !296, !297}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !292, file: !26, line: 293, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !292, file: !26, line: 294, baseType: !15, size: 32, offset: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !292, file: !26, line: 295, baseType: !30, size: 64, offset: 128)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !25, file: !26, line: 648, baseType: !299, size: 4224, offset: 10688)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 4224, elements: !76)
!300 = !DILocalVariable(name: "save", scope: !11, file: !1, line: 237, type: !5)
!301 = !DILocalVariable(name: "p", scope: !11, file: !1, line: 238, type: !5)
!302 = !DILocalVariable(name: "end", scope: !11, file: !1, line: 239, type: !5)
!303 = !DILocalVariable(name: "done", scope: !11, file: !1, line: 240, type: !15)
!304 = !DILocation(line: 229, column: 1, scope: !11)
!305 = !DILocation(line: 236, column: 26, scope: !11)
!306 = !DILocation(line: 236, column: 18, scope: !11)
!307 = !DILocation(line: 239, column: 3, scope: !11)
!308 = !DILocation(line: 240, column: 7, scope: !11)
!309 = !DILocation(line: 242, column: 16, scope: !310)
!310 = distinct !DILexicalBlock(scope: !11, file: !1, line: 242, column: 7)
!311 = !DILocation(line: 242, column: 7, scope: !11)
!312 = !DILocation(line: 244, column: 18, scope: !313)
!313 = distinct !DILexicalBlock(scope: !314, file: !1, line: 244, column: 11)
!314 = distinct !DILexicalBlock(scope: !310, file: !1, line: 243, column: 5)
!315 = !{!316, !317, i64 128}
!316 = !{!"_reent", !317, i64 0, !320, i64 8, !320, i64 16, !320, i64 24, !317, i64 32, !318, i64 36, !317, i64 64, !320, i64 72, !317, i64 80, !320, i64 88, !320, i64 96, !317, i64 104, !320, i64 112, !320, i64 120, !317, i64 128, !320, i64 136, !318, i64 144, !320, i64 504, !321, i64 512, !320, i64 1304, !323, i64 1312, !318, i64 1336}
!317 = !{!"int", !318, i64 0}
!318 = !{!"omnipotent char", !319, i64 0}
!319 = !{!"Simple C/C++ TBAA"}
!320 = !{!"any pointer", !318, i64 0}
!321 = !{!"_atexit", !320, i64 0, !317, i64 8, !318, i64 16, !322, i64 272}
!322 = !{!"_on_exit_args", !318, i64 0, !318, i64 256, !317, i64 512, !317, i64 516}
!323 = !{!"_glue", !320, i64 0, !317, i64 8, !320, i64 16}
!324 = !DILocation(line: 244, column: 36, scope: !313)
!325 = !DILocation(line: 244, column: 26, scope: !313)
!326 = !DILocation(line: 244, column: 11, scope: !314)
!327 = !DILocation(line: 0, scope: !328)
!328 = distinct !DILexicalBlock(scope: !329, file: !1, line: 246, column: 8)
!329 = distinct !DILexicalBlock(scope: !313, file: !1, line: 245, column: 2)
!330 = !{!316, !320, i64 136}
!331 = !DILocation(line: 246, column: 29, scope: !328)
!332 = !DILocation(line: 247, column: 27, scope: !328)
!333 = !DILocation(line: 246, column: 8, scope: !329)
!334 = !DILocation(line: 249, column: 19, scope: !329)
!335 = !DILocation(line: 250, column: 19, scope: !329)
!336 = !DILocation(line: 251, column: 2, scope: !329)
!337 = !DILocation(line: 253, column: 25, scope: !314)
!338 = !DILocation(line: 254, column: 5, scope: !314)
!339 = !DILocation(line: 237, column: 9, scope: !11)
!340 = !DILocation(line: 258, column: 15, scope: !341)
!341 = distinct !DILexicalBlock(scope: !11, file: !1, line: 258, column: 7)
!342 = !DILocation(line: 258, column: 32, scope: !341)
!343 = !DILocation(line: 258, column: 21, scope: !341)
!344 = !DILocation(line: 239, column: 9, scope: !11)
!345 = !DILocation(line: 238, column: 9, scope: !11)
!346 = !DILocation(line: 0, scope: !347)
!347 = distinct !DILexicalBlock(scope: !341, file: !1, line: 259, column: 5)
!348 = !DILocation(line: 269, column: 11, scope: !11)
!349 = !{!317, !317, i64 0}
!350 = !DILocation(line: 269, column: 10, scope: !11)
!351 = !DILocation(line: 270, column: 3, scope: !11)
!352 = !DILocation(line: 270, column: 14, scope: !11)
!353 = !{!320, !320, i64 0}
!354 = !DILocation(line: 270, column: 12, scope: !11)
!355 = !DILocation(line: 0, scope: !356)
!356 = distinct !DILexicalBlock(scope: !11, file: !1, line: 271, column: 5)
!357 = !DILocation(line: 276, column: 15, scope: !11)
!358 = !DILocation(line: 276, column: 3, scope: !11)
!359 = !DILocation(line: 0, scope: !11)
!360 = !DILocation(line: 278, column: 19, scope: !361)
!361 = distinct !DILexicalBlock(scope: !11, file: !1, line: 277, column: 5)
!362 = !{!318, !318, i64 0}
!363 = !DILocation(line: 279, column: 11, scope: !361)
!364 = distinct !{!364, !365}
!365 = !{!"llvm.loop.unroll.disable"}
!366 = !DILocation(line: 272, column: 23, scope: !356)
!367 = !DILocation(line: 272, column: 21, scope: !356)
!368 = !DILocation(line: 272, column: 16, scope: !356)
!369 = !DILocation(line: 272, column: 19, scope: !356)
!370 = !DILocation(line: 273, column: 11, scope: !356)
!371 = distinct !{!371, !351, !372}
!372 = !DILocation(line: 274, column: 5, scope: !11)
!373 = distinct !{!373, !358, !374}
!374 = !DILocation(line: 280, column: 5, scope: !11)
!375 = !DILocation(line: 281, column: 15, scope: !11)
!376 = !DILocation(line: 282, column: 3, scope: !11)
!377 = !DILocation(line: 283, column: 1, scope: !11)
!378 = distinct !DISubprogram(name: "ecvtbuf", scope: !1, file: !1, line: 286, type: !12, isLocal: false, isDefinition: true, scopeLine: 292, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !379)
!379 = !{!380, !381, !382, !383, !384, !385, !386, !387, !388, !389}
!380 = !DILocalVariable(name: "invalue", arg: 1, scope: !378, file: !1, line: 286, type: !14)
!381 = !DILocalVariable(name: "ndigit", arg: 2, scope: !378, file: !1, line: 286, type: !15)
!382 = !DILocalVariable(name: "decpt", arg: 3, scope: !378, file: !1, line: 286, type: !16)
!383 = !DILocalVariable(name: "sign", arg: 4, scope: !378, file: !1, line: 286, type: !16)
!384 = !DILocalVariable(name: "fcvt_buf", arg: 5, scope: !378, file: !1, line: 286, type: !5)
!385 = !DILocalVariable(name: "reent", scope: !378, file: !1, line: 293, type: !24)
!386 = !DILocalVariable(name: "save", scope: !378, file: !1, line: 294, type: !5)
!387 = !DILocalVariable(name: "p", scope: !378, file: !1, line: 295, type: !5)
!388 = !DILocalVariable(name: "end", scope: !378, file: !1, line: 296, type: !5)
!389 = !DILocalVariable(name: "done", scope: !378, file: !1, line: 297, type: !15)
!390 = !DILocation(line: 286, column: 1, scope: !378)
!391 = !DILocation(line: 293, column: 26, scope: !378)
!392 = !DILocation(line: 293, column: 18, scope: !378)
!393 = !DILocation(line: 296, column: 3, scope: !378)
!394 = !DILocation(line: 297, column: 7, scope: !378)
!395 = !DILocation(line: 299, column: 16, scope: !396)
!396 = distinct !DILexicalBlock(scope: !378, file: !1, line: 299, column: 7)
!397 = !DILocation(line: 299, column: 7, scope: !378)
!398 = !DILocation(line: 301, column: 18, scope: !399)
!399 = distinct !DILexicalBlock(scope: !400, file: !1, line: 301, column: 11)
!400 = distinct !DILexicalBlock(scope: !396, file: !1, line: 300, column: 5)
!401 = !DILocation(line: 301, column: 26, scope: !399)
!402 = !DILocation(line: 301, column: 11, scope: !400)
!403 = !DILocation(line: 0, scope: !404)
!404 = distinct !DILexicalBlock(scope: !405, file: !1, line: 303, column: 8)
!405 = distinct !DILexicalBlock(scope: !399, file: !1, line: 302, column: 2)
!406 = !DILocation(line: 303, column: 29, scope: !404)
!407 = !DILocation(line: 304, column: 26, scope: !404)
!408 = !DILocation(line: 303, column: 8, scope: !405)
!409 = !DILocation(line: 306, column: 19, scope: !405)
!410 = !DILocation(line: 307, column: 19, scope: !405)
!411 = !DILocation(line: 308, column: 2, scope: !405)
!412 = !DILocation(line: 310, column: 25, scope: !400)
!413 = !DILocation(line: 311, column: 5, scope: !400)
!414 = !DILocation(line: 294, column: 9, scope: !378)
!415 = !DILocation(line: 296, column: 9, scope: !378)
!416 = !DILocation(line: 315, column: 7, scope: !378)
!417 = !DILocation(line: 295, column: 9, scope: !378)
!418 = !DILocation(line: 319, column: 3, scope: !378)
!419 = !DILocation(line: 319, column: 14, scope: !378)
!420 = !DILocation(line: 319, column: 12, scope: !378)
!421 = !DILocation(line: 0, scope: !422)
!422 = distinct !DILexicalBlock(scope: !378, file: !1, line: 320, column: 5)
!423 = !DILocation(line: 325, column: 15, scope: !378)
!424 = !DILocation(line: 325, column: 3, scope: !378)
!425 = !DILocation(line: 0, scope: !378)
!426 = !DILocation(line: 327, column: 19, scope: !427)
!427 = distinct !DILexicalBlock(scope: !378, file: !1, line: 326, column: 5)
!428 = !DILocation(line: 328, column: 11, scope: !427)
!429 = distinct !{!429, !365}
!430 = !DILocation(line: 321, column: 23, scope: !422)
!431 = !DILocation(line: 321, column: 21, scope: !422)
!432 = !DILocation(line: 321, column: 16, scope: !422)
!433 = !DILocation(line: 321, column: 19, scope: !422)
!434 = !DILocation(line: 322, column: 11, scope: !422)
!435 = distinct !{!435, !418, !436}
!436 = !DILocation(line: 323, column: 5, scope: !378)
!437 = distinct !{!437, !424, !438}
!438 = !DILocation(line: 329, column: 5, scope: !378)
!439 = !DILocation(line: 330, column: 15, scope: !378)
!440 = !DILocation(line: 331, column: 3, scope: !378)
!441 = !DILocation(line: 332, column: 1, scope: !378)
!442 = distinct !DISubprogram(name: "_gcvt", scope: !1, file: !1, line: 337, type: !443, isLocal: false, isDefinition: true, scopeLine: 344, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !445)
!443 = !DISubroutineType(types: !444)
!444 = !{!5, !24, !14, !15, !5, !6, !15}
!445 = !{!446, !447, !448, !449, !450, !451, !452, !453, !457, !458, !459}
!446 = !DILocalVariable(name: "ptr", arg: 1, scope: !442, file: !1, line: 337, type: !24)
!447 = !DILocalVariable(name: "invalue", arg: 2, scope: !442, file: !1, line: 337, type: !14)
!448 = !DILocalVariable(name: "ndigit", arg: 3, scope: !442, file: !1, line: 337, type: !15)
!449 = !DILocalVariable(name: "buf", arg: 4, scope: !442, file: !1, line: 337, type: !5)
!450 = !DILocalVariable(name: "type", arg: 5, scope: !442, file: !1, line: 337, type: !6)
!451 = !DILocalVariable(name: "dot", arg: 6, scope: !442, file: !1, line: 337, type: !15)
!452 = !DILocalVariable(name: "save", scope: !442, file: !1, line: 345, type: !5)
!453 = !DILocalVariable(name: "decpt", scope: !454, file: !1, line: 376, type: !15)
!454 = distinct !DILexicalBlock(scope: !455, file: !1, line: 375, column: 5)
!455 = distinct !DILexicalBlock(scope: !456, file: !1, line: 363, column: 7)
!456 = distinct !DILexicalBlock(scope: !442, file: !1, line: 352, column: 7)
!457 = !DILocalVariable(name: "sign", scope: !454, file: !1, line: 377, type: !15)
!458 = !DILocalVariable(name: "end", scope: !454, file: !1, line: 378, type: !5)
!459 = !DILocalVariable(name: "p", scope: !454, file: !1, line: 379, type: !5)
!460 = !DILocation(line: 337, column: 1, scope: !442)
!461 = !DILocation(line: 345, column: 9, scope: !442)
!462 = !DILocation(line: 347, column: 15, scope: !463)
!463 = distinct !DILexicalBlock(scope: !442, file: !1, line: 347, column: 7)
!464 = !DILocation(line: 347, column: 7, scope: !442)
!465 = !DILocation(line: 349, column: 17, scope: !466)
!466 = distinct !DILexicalBlock(scope: !463, file: !1, line: 348, column: 5)
!467 = !DILocation(line: 350, column: 5, scope: !466)
!468 = !DILocation(line: 352, column: 15, scope: !456)
!469 = !DILocation(line: 352, column: 7, scope: !442)
!470 = !DILocation(line: 354, column: 11, scope: !471)
!471 = distinct !DILexicalBlock(scope: !456, file: !1, line: 353, column: 5)
!472 = !DILocation(line: 354, column: 14, scope: !471)
!473 = !DILocation(line: 355, column: 12, scope: !471)
!474 = !DILocation(line: 356, column: 5, scope: !471)
!475 = !DILocation(line: 363, column: 14, scope: !455)
!476 = !DILocation(line: 363, column: 25, scope: !455)
!477 = !DILocation(line: 363, column: 39, scope: !455)
!478 = !DILocation(line: 363, column: 36, scope: !455)
!479 = !DILocation(line: 363, column: 7, scope: !456)
!480 = !DILocation(line: 372, column: 42, scope: !481)
!481 = distinct !DILexicalBlock(scope: !455, file: !1, line: 364, column: 5)
!482 = !DILocation(line: 372, column: 7, scope: !481)
!483 = !DILocation(line: 373, column: 5, scope: !481)
!484 = !DILocation(line: 376, column: 7, scope: !454)
!485 = !DILocation(line: 377, column: 7, scope: !454)
!486 = !DILocation(line: 378, column: 7, scope: !454)
!487 = !DILocation(line: 381, column: 19, scope: !488)
!488 = distinct !DILexicalBlock(scope: !454, file: !1, line: 381, column: 11)
!489 = !DILocation(line: 381, column: 11, scope: !454)
!490 = !DILocation(line: 376, column: 11, scope: !454)
!491 = !DILocation(line: 377, column: 11, scope: !454)
!492 = !DILocation(line: 378, column: 13, scope: !454)
!493 = !DILocation(line: 379, column: 13, scope: !454)
!494 = !DILocation(line: 0, scope: !495)
!495 = distinct !DILexicalBlock(scope: !488, file: !1, line: 382, column: 2)
!496 = !DILocation(line: 391, column: 11, scope: !497)
!497 = distinct !DILexicalBlock(scope: !454, file: !1, line: 391, column: 11)
!498 = !DILocation(line: 391, column: 17, scope: !497)
!499 = !DILocation(line: 391, column: 11, scope: !454)
!500 = !DILocation(line: 396, column: 14, scope: !454)
!501 = !DILocation(line: 396, column: 26, scope: !454)
!502 = !DILocation(line: 396, column: 17, scope: !454)
!503 = !DILocation(line: 396, column: 7, scope: !454)
!504 = !DILocation(line: 393, column: 4, scope: !505)
!505 = distinct !DILexicalBlock(scope: !497, file: !1, line: 392, column: 2)
!506 = !DILocation(line: 394, column: 4, scope: !505)
!507 = !DILocation(line: 439, column: 5, scope: !455)
!508 = !DILocation(line: 403, column: 14, scope: !454)
!509 = !DILocation(line: 0, scope: !510)
!510 = distinct !DILexicalBlock(scope: !454, file: !1, line: 397, column: 2)
!511 = !DILocation(line: 403, column: 20, scope: !454)
!512 = !DILocation(line: 403, column: 34, scope: !454)
!513 = !DILocation(line: 403, column: 24, scope: !454)
!514 = !DILocation(line: 403, column: 7, scope: !454)
!515 = !DILocation(line: 398, column: 15, scope: !510)
!516 = !DILocation(line: 398, column: 8, scope: !510)
!517 = !DILocation(line: 398, column: 11, scope: !510)
!518 = !DILocation(line: 399, column: 9, scope: !510)
!519 = !DILocation(line: 400, column: 10, scope: !510)
!520 = distinct !{!520, !503, !521}
!521 = !DILocation(line: 401, column: 2, scope: !454)
!522 = !DILocation(line: 405, column: 8, scope: !523)
!523 = distinct !DILexicalBlock(scope: !454, file: !1, line: 404, column: 2)
!524 = !DILocation(line: 405, column: 11, scope: !523)
!525 = !DILocation(line: 406, column: 9, scope: !523)
!526 = !DILocation(line: 407, column: 10, scope: !523)
!527 = distinct !{!527, !514, !528}
!528 = !DILocation(line: 408, column: 2, scope: !454)
!529 = !DILocation(line: 410, column: 11, scope: !530)
!530 = distinct !DILexicalBlock(scope: !454, file: !1, line: 410, column: 11)
!531 = !DILocation(line: 410, column: 15, scope: !530)
!532 = !DILocation(line: 410, column: 18, scope: !530)
!533 = !DILocation(line: 410, column: 11, scope: !454)
!534 = !DILocation(line: 412, column: 12, scope: !535)
!535 = distinct !DILexicalBlock(scope: !536, file: !1, line: 412, column: 8)
!536 = distinct !DILexicalBlock(scope: !530, file: !1, line: 411, column: 2)
!537 = !DILocation(line: 412, column: 8, scope: !536)
!538 = !DILocation(line: 413, column: 10, scope: !535)
!539 = !DILocation(line: 413, column: 13, scope: !535)
!540 = !DILocation(line: 413, column: 6, scope: !535)
!541 = !DILocation(line: 414, column: 11, scope: !536)
!542 = !DILocation(line: 415, column: 4, scope: !536)
!543 = !DILocation(line: 0, scope: !544)
!544 = distinct !DILexicalBlock(scope: !536, file: !1, line: 416, column: 6)
!545 = !DILocation(line: 415, column: 11, scope: !536)
!546 = !DILocation(line: 415, column: 17, scope: !536)
!547 = !DILocation(line: 415, column: 31, scope: !536)
!548 = !DILocation(line: 415, column: 21, scope: !536)
!549 = !DILocation(line: 423, column: 11, scope: !536)
!550 = !DILocation(line: 423, column: 24, scope: !536)
!551 = !DILocation(line: 423, column: 14, scope: !536)
!552 = !DILocation(line: 423, column: 4, scope: !536)
!553 = !DILocation(line: 417, column: 15, scope: !544)
!554 = !DILocation(line: 418, column: 13, scope: !544)
!555 = !DILocation(line: 419, column: 14, scope: !544)
!556 = distinct !{!556, !542, !557}
!557 = !DILocation(line: 420, column: 6, scope: !536)
!558 = !DILocation(line: 425, column: 19, scope: !559)
!559 = distinct !DILexicalBlock(scope: !536, file: !1, line: 424, column: 6)
!560 = !DILocation(line: 425, column: 12, scope: !559)
!561 = !DILocation(line: 425, column: 15, scope: !559)
!562 = !DILocation(line: 426, column: 14, scope: !559)
!563 = distinct !{!563, !552, !564}
!564 = !DILocation(line: 427, column: 6, scope: !536)
!565 = !DILocation(line: 0, scope: !559)
!566 = !DILocation(line: 429, column: 8, scope: !536)
!567 = !DILocation(line: 0, scope: !568)
!568 = distinct !DILexicalBlock(scope: !569, file: !1, line: 432, column: 3)
!569 = distinct !DILexicalBlock(scope: !570, file: !1, line: 430, column: 6)
!570 = distinct !DILexicalBlock(scope: !536, file: !1, line: 429, column: 8)
!571 = !DILocation(line: 433, column: 9, scope: !568)
!572 = !DILocation(line: 433, column: 12, scope: !568)
!573 = !DILocation(line: 434, column: 11, scope: !568)
!574 = !DILocation(line: 431, column: 22, scope: !569)
!575 = !DILocation(line: 431, column: 8, scope: !569)
!576 = !DILocation(line: 438, column: 14, scope: !454)
!577 = !DILocation(line: 441, column: 3, scope: !442)
!578 = !DILocation(line: 442, column: 1, scope: !442)
!579 = distinct !DISubprogram(name: "print_e", scope: !1, file: !1, line: 146, type: !580, isLocal: true, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !582)
!580 = !DISubroutineType(types: !581)
!581 = !{null, !24, !5, !14, !15, !6, !15}
!582 = !{!583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595}
!583 = !DILocalVariable(name: "ptr", arg: 1, scope: !579, file: !1, line: 146, type: !24)
!584 = !DILocalVariable(name: "buf", arg: 2, scope: !579, file: !1, line: 146, type: !5)
!585 = !DILocalVariable(name: "invalue", arg: 3, scope: !579, file: !1, line: 146, type: !14)
!586 = !DILocalVariable(name: "width", arg: 4, scope: !579, file: !1, line: 146, type: !15)
!587 = !DILocalVariable(name: "type", arg: 5, scope: !579, file: !1, line: 146, type: !6)
!588 = !DILocalVariable(name: "dot", arg: 6, scope: !579, file: !1, line: 146, type: !15)
!589 = !DILocalVariable(name: "sign", scope: !579, file: !1, line: 154, type: !15)
!590 = !DILocalVariable(name: "end", scope: !579, file: !1, line: 155, type: !5)
!591 = !DILocalVariable(name: "p", scope: !579, file: !1, line: 156, type: !5)
!592 = !DILocalVariable(name: "decpt", scope: !579, file: !1, line: 157, type: !15)
!593 = !DILocalVariable(name: "top", scope: !579, file: !1, line: 158, type: !15)
!594 = !DILocalVariable(name: "ndigit", scope: !579, file: !1, line: 159, type: !15)
!595 = !DILocalVariable(name: "top", scope: !596, file: !1, line: 210, type: !15)
!596 = distinct !DILexicalBlock(scope: !597, file: !1, line: 209, column: 5)
!597 = distinct !DILexicalBlock(scope: !579, file: !1, line: 208, column: 7)
!598 = !DILocation(line: 146, column: 1, scope: !579)
!599 = !DILocation(line: 154, column: 3, scope: !579)
!600 = !DILocation(line: 155, column: 3, scope: !579)
!601 = !DILocation(line: 157, column: 3, scope: !579)
!602 = !DILocation(line: 159, column: 7, scope: !579)
!603 = !DILocation(line: 161, column: 39, scope: !579)
!604 = !DILocation(line: 154, column: 7, scope: !579)
!605 = !DILocation(line: 155, column: 9, scope: !579)
!606 = !DILocation(line: 157, column: 7, scope: !579)
!607 = !DILocation(line: 161, column: 7, scope: !579)
!608 = !DILocation(line: 156, column: 9, scope: !579)
!609 = !DILocation(line: 163, column: 7, scope: !610)
!610 = distinct !DILexicalBlock(scope: !579, file: !1, line: 163, column: 7)
!611 = !DILocation(line: 163, column: 13, scope: !610)
!612 = !DILocation(line: 163, column: 7, scope: !579)
!613 = !DILocation(line: 165, column: 7, scope: !614)
!614 = distinct !DILexicalBlock(scope: !610, file: !1, line: 164, column: 5)
!615 = !DILocation(line: 166, column: 7, scope: !614)
!616 = !DILocation(line: 169, column: 12, scope: !579)
!617 = !DILocation(line: 169, column: 7, scope: !579)
!618 = !DILocation(line: 169, column: 10, scope: !579)
!619 = !DILocation(line: 170, column: 11, scope: !620)
!620 = distinct !DILexicalBlock(scope: !579, file: !1, line: 170, column: 7)
!621 = !DILocation(line: 171, column: 9, scope: !620)
!622 = !DILocation(line: 171, column: 12, scope: !620)
!623 = !DILocation(line: 171, column: 5, scope: !620)
!624 = !DILocation(line: 0, scope: !579)
!625 = !DILocation(line: 173, column: 3, scope: !579)
!626 = !DILocation(line: 0, scope: !627)
!627 = distinct !DILexicalBlock(scope: !579, file: !1, line: 174, column: 5)
!628 = !DILocation(line: 173, column: 10, scope: !579)
!629 = !DILocation(line: 173, column: 23, scope: !579)
!630 = !DILocation(line: 173, column: 13, scope: !579)
!631 = !DILocation(line: 175, column: 11, scope: !627)
!632 = !DILocation(line: 175, column: 14, scope: !627)
!633 = !DILocation(line: 176, column: 13, scope: !627)
!634 = distinct !{!634, !625, !635}
!635 = !DILocation(line: 177, column: 5, scope: !579)
!636 = !DILocation(line: 182, column: 12, scope: !637)
!637 = distinct !DILexicalBlock(scope: !579, file: !1, line: 182, column: 7)
!638 = !DILocation(line: 182, column: 7, scope: !579)
!639 = !DILocation(line: 183, column: 5, scope: !637)
!640 = !DILocation(line: 184, column: 17, scope: !641)
!641 = distinct !DILexicalBlock(scope: !637, file: !1, line: 184, column: 12)
!642 = !DILocation(line: 184, column: 12, scope: !637)
!643 = !DILocation(line: 188, column: 21, scope: !644)
!644 = distinct !DILexicalBlock(scope: !641, file: !1, line: 187, column: 5)
!645 = !DILocation(line: 188, column: 7, scope: !644)
!646 = !DILocation(line: 185, column: 5, scope: !641)
!647 = !DILocation(line: 190, column: 8, scope: !648)
!648 = distinct !DILexicalBlock(scope: !644, file: !1, line: 189, column: 2)
!649 = !DILocation(line: 190, column: 11, scope: !648)
!650 = !DILocation(line: 191, column: 10, scope: !648)
!651 = distinct !{!651, !645, !652}
!652 = !DILocation(line: 192, column: 2, scope: !644)
!653 = !DILocation(line: 197, column: 7, scope: !579)
!654 = !DILocation(line: 197, column: 10, scope: !579)
!655 = !DILocation(line: 198, column: 8, scope: !579)
!656 = !DILocation(line: 199, column: 13, scope: !657)
!657 = distinct !DILexicalBlock(scope: !579, file: !1, line: 199, column: 7)
!658 = !DILocation(line: 0, scope: !659)
!659 = distinct !DILexicalBlock(scope: !657, file: !1, line: 205, column: 5)
!660 = !DILocation(line: 199, column: 7, scope: !579)
!661 = !DILocation(line: 201, column: 14, scope: !662)
!662 = distinct !DILexicalBlock(scope: !657, file: !1, line: 200, column: 5)
!663 = !DILocation(line: 202, column: 16, scope: !662)
!664 = !DILocation(line: 202, column: 15, scope: !662)
!665 = !DILocation(line: 202, column: 13, scope: !662)
!666 = !DILocation(line: 203, column: 5, scope: !662)
!667 = !DILocation(line: 206, column: 14, scope: !659)
!668 = !DILocation(line: 208, column: 7, scope: !597)
!669 = !DILocation(line: 208, column: 13, scope: !597)
!670 = !DILocation(line: 208, column: 7, scope: !579)
!671 = !DILocation(line: 210, column: 11, scope: !596)
!672 = !DILocation(line: 211, column: 16, scope: !596)
!673 = !DILocation(line: 211, column: 11, scope: !596)
!674 = !DILocation(line: 211, column: 14, scope: !596)
!675 = !DILocation(line: 212, column: 13, scope: !596)
!676 = !DILocation(line: 213, column: 5, scope: !596)
!677 = !DILocation(line: 214, column: 9, scope: !579)
!678 = !DILocation(line: 214, column: 15, scope: !579)
!679 = !DILocation(line: 158, column: 7, scope: !579)
!680 = !DILocation(line: 215, column: 12, scope: !579)
!681 = !DILocation(line: 215, column: 7, scope: !579)
!682 = !DILocation(line: 215, column: 10, scope: !579)
!683 = !DILocation(line: 216, column: 9, scope: !579)
!684 = !DILocation(line: 217, column: 12, scope: !579)
!685 = !DILocation(line: 217, column: 7, scope: !579)
!686 = !DILocation(line: 217, column: 10, scope: !579)
!687 = !DILocation(line: 219, column: 10, scope: !579)
!688 = !DILocation(line: 220, column: 1, scope: !579)
!689 = !DILocation(line: 0, scope: !614)
!690 = distinct !DISubprogram(name: "_dcvt", scope: !1, file: !1, line: 445, type: !691, isLocal: false, isDefinition: true, scopeLine: 453, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !693)
!691 = !DISubroutineType(types: !692)
!692 = !{!5, !24, !5, !14, !15, !15, !6, !15}
!693 = !{!694, !695, !696, !697, !698, !699, !700}
!694 = !DILocalVariable(name: "ptr", arg: 1, scope: !690, file: !1, line: 445, type: !24)
!695 = !DILocalVariable(name: "buffer", arg: 2, scope: !690, file: !1, line: 445, type: !5)
!696 = !DILocalVariable(name: "invalue", arg: 3, scope: !690, file: !1, line: 445, type: !14)
!697 = !DILocalVariable(name: "precision", arg: 4, scope: !690, file: !1, line: 445, type: !15)
!698 = !DILocalVariable(name: "width", arg: 5, scope: !690, file: !1, line: 445, type: !15)
!699 = !DILocalVariable(name: "type", arg: 6, scope: !690, file: !1, line: 445, type: !6)
!700 = !DILocalVariable(name: "dot", arg: 7, scope: !690, file: !1, line: 445, type: !15)
!701 = !DILocation(line: 445, column: 1, scope: !690)
!702 = !DILocation(line: 454, column: 11, scope: !690)
!703 = !DILocation(line: 454, column: 3, scope: !690)
!704 = !DILocalVariable(name: "ptr", arg: 1, scope: !705, file: !1, line: 78, type: !24)
!705 = distinct !DISubprogram(name: "print_f", scope: !1, file: !1, line: 78, type: !706, isLocal: true, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !708)
!706 = !DISubroutineType(types: !707)
!707 = !{null, !24, !5, !14, !15, !6, !15, !15}
!708 = !{!704, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719}
!709 = !DILocalVariable(name: "buf", arg: 2, scope: !705, file: !1, line: 78, type: !5)
!710 = !DILocalVariable(name: "invalue", arg: 3, scope: !705, file: !1, line: 78, type: !14)
!711 = !DILocalVariable(name: "ndigit", arg: 4, scope: !705, file: !1, line: 78, type: !15)
!712 = !DILocalVariable(name: "type", arg: 5, scope: !705, file: !1, line: 78, type: !6)
!713 = !DILocalVariable(name: "dot", arg: 6, scope: !705, file: !1, line: 78, type: !15)
!714 = !DILocalVariable(name: "mode", arg: 7, scope: !705, file: !1, line: 78, type: !15)
!715 = !DILocalVariable(name: "decpt", scope: !705, file: !1, line: 87, type: !15)
!716 = !DILocalVariable(name: "sign", scope: !705, file: !1, line: 88, type: !15)
!717 = !DILocalVariable(name: "p", scope: !705, file: !1, line: 89, type: !5)
!718 = !DILocalVariable(name: "start", scope: !705, file: !1, line: 89, type: !5)
!719 = !DILocalVariable(name: "end", scope: !705, file: !1, line: 89, type: !5)
!720 = !DILocation(line: 78, column: 1, scope: !705, inlinedAt: !721)
!721 = distinct !DILocation(line: 458, column: 7, scope: !722)
!722 = distinct !DILexicalBlock(scope: !690, file: !1, line: 455, column: 5)
!723 = !DILocation(line: 87, column: 3, scope: !705, inlinedAt: !721)
!724 = !DILocation(line: 88, column: 3, scope: !705, inlinedAt: !721)
!725 = !DILocation(line: 89, column: 3, scope: !705, inlinedAt: !721)
!726 = !DILocation(line: 87, column: 7, scope: !705, inlinedAt: !721)
!727 = !DILocation(line: 88, column: 7, scope: !705, inlinedAt: !721)
!728 = !DILocation(line: 89, column: 21, scope: !705, inlinedAt: !721)
!729 = !DILocation(line: 91, column: 15, scope: !705, inlinedAt: !721)
!730 = !DILocation(line: 89, column: 9, scope: !705, inlinedAt: !721)
!731 = !DILocation(line: 89, column: 13, scope: !705, inlinedAt: !721)
!732 = !DILocation(line: 93, column: 7, scope: !733, inlinedAt: !721)
!733 = distinct !DILexicalBlock(scope: !705, file: !1, line: 93, column: 7)
!734 = !DILocation(line: 93, column: 13, scope: !733, inlinedAt: !721)
!735 = !DILocation(line: 93, column: 7, scope: !705, inlinedAt: !721)
!736 = !DILocation(line: 98, column: 10, scope: !705, inlinedAt: !721)
!737 = !DILocation(line: 98, column: 22, scope: !705, inlinedAt: !721)
!738 = !DILocation(line: 98, column: 13, scope: !705, inlinedAt: !721)
!739 = !DILocation(line: 98, column: 3, scope: !705, inlinedAt: !721)
!740 = !DILocation(line: 95, column: 7, scope: !741, inlinedAt: !721)
!741 = distinct !DILexicalBlock(scope: !733, file: !1, line: 94, column: 5)
!742 = !DILocation(line: 96, column: 7, scope: !741, inlinedAt: !721)
!743 = !DILocation(line: 0, scope: !744, inlinedAt: !721)
!744 = distinct !DILexicalBlock(scope: !705, file: !1, line: 99, column: 5)
!745 = !DILocation(line: 98, column: 16, scope: !705, inlinedAt: !721)
!746 = !DILocation(line: 104, column: 16, scope: !705, inlinedAt: !721)
!747 = !DILocation(line: 104, column: 3, scope: !705, inlinedAt: !721)
!748 = !DILocation(line: 100, column: 18, scope: !744, inlinedAt: !721)
!749 = !DILocation(line: 100, column: 11, scope: !744, inlinedAt: !721)
!750 = !DILocation(line: 100, column: 14, scope: !744, inlinedAt: !721)
!751 = !DILocation(line: 101, column: 12, scope: !744, inlinedAt: !721)
!752 = distinct !{!752, !753, !754}
!753 = !DILocation(line: 98, column: 3, scope: !705)
!754 = !DILocation(line: 102, column: 5, scope: !705)
!755 = !DILocation(line: 106, column: 11, scope: !756, inlinedAt: !721)
!756 = distinct !DILexicalBlock(scope: !705, file: !1, line: 105, column: 5)
!757 = !DILocation(line: 106, column: 14, scope: !756, inlinedAt: !721)
!758 = !DILocation(line: 107, column: 12, scope: !756, inlinedAt: !721)
!759 = distinct !{!759, !760, !761}
!760 = !DILocation(line: 104, column: 3, scope: !705)
!761 = !DILocation(line: 108, column: 5, scope: !705)
!762 = !DILocation(line: 110, column: 7, scope: !763, inlinedAt: !721)
!763 = distinct !DILexicalBlock(scope: !705, file: !1, line: 110, column: 7)
!764 = !DILocation(line: 110, column: 11, scope: !763, inlinedAt: !721)
!765 = !DILocation(line: 110, column: 14, scope: !763, inlinedAt: !721)
!766 = !DILocation(line: 110, column: 7, scope: !705, inlinedAt: !721)
!767 = !DILocation(line: 112, column: 13, scope: !768, inlinedAt: !721)
!768 = distinct !DILexicalBlock(scope: !769, file: !1, line: 112, column: 11)
!769 = distinct !DILexicalBlock(scope: !763, file: !1, line: 111, column: 5)
!770 = !DILocation(line: 112, column: 11, scope: !769, inlinedAt: !721)
!771 = !DILocation(line: 113, column: 6, scope: !768, inlinedAt: !721)
!772 = !DILocation(line: 113, column: 9, scope: !768, inlinedAt: !721)
!773 = !DILocation(line: 113, column: 2, scope: !768, inlinedAt: !721)
!774 = !DILocation(line: 114, column: 14, scope: !769, inlinedAt: !721)
!775 = !DILocation(line: 115, column: 7, scope: !769, inlinedAt: !721)
!776 = !DILocation(line: 0, scope: !777, inlinedAt: !721)
!777 = distinct !DILexicalBlock(scope: !769, file: !1, line: 116, column: 2)
!778 = !DILocation(line: 115, column: 14, scope: !769, inlinedAt: !721)
!779 = !DILocation(line: 115, column: 20, scope: !769, inlinedAt: !721)
!780 = !DILocation(line: 115, column: 34, scope: !769, inlinedAt: !721)
!781 = !DILocation(line: 115, column: 24, scope: !769, inlinedAt: !721)
!782 = !DILocation(line: 123, column: 14, scope: !769, inlinedAt: !721)
!783 = !DILocation(line: 123, column: 27, scope: !769, inlinedAt: !721)
!784 = !DILocation(line: 123, column: 17, scope: !769, inlinedAt: !721)
!785 = !DILocation(line: 123, column: 7, scope: !769, inlinedAt: !721)
!786 = !DILocation(line: 117, column: 11, scope: !777, inlinedAt: !721)
!787 = !DILocation(line: 118, column: 9, scope: !777, inlinedAt: !721)
!788 = !DILocation(line: 119, column: 10, scope: !777, inlinedAt: !721)
!789 = distinct !{!789, !790, !791}
!790 = !DILocation(line: 115, column: 7, scope: !769)
!791 = !DILocation(line: 120, column: 2, scope: !769)
!792 = !DILocation(line: 0, scope: !793, inlinedAt: !721)
!793 = distinct !DILexicalBlock(scope: !769, file: !1, line: 124, column: 2)
!794 = !DILocation(line: 129, column: 21, scope: !769, inlinedAt: !721)
!795 = !DILocation(line: 129, column: 7, scope: !769, inlinedAt: !721)
!796 = !DILocation(line: 125, column: 15, scope: !793, inlinedAt: !721)
!797 = !DILocation(line: 125, column: 8, scope: !793, inlinedAt: !721)
!798 = !DILocation(line: 125, column: 11, scope: !793, inlinedAt: !721)
!799 = !DILocation(line: 126, column: 10, scope: !793, inlinedAt: !721)
!800 = distinct !{!800, !801, !802}
!801 = !DILocation(line: 123, column: 7, scope: !769)
!802 = !DILocation(line: 127, column: 2, scope: !769)
!803 = !DILocation(line: 131, column: 8, scope: !804, inlinedAt: !721)
!804 = distinct !DILexicalBlock(scope: !769, file: !1, line: 130, column: 2)
!805 = !DILocation(line: 131, column: 11, scope: !804, inlinedAt: !721)
!806 = !DILocation(line: 132, column: 10, scope: !804, inlinedAt: !721)
!807 = distinct !{!807, !808, !809}
!808 = !DILocation(line: 129, column: 7, scope: !769)
!809 = !DILocation(line: 133, column: 2, scope: !769)
!810 = !DILocation(line: 135, column: 10, scope: !705, inlinedAt: !721)
!811 = !DILocation(line: 136, column: 1, scope: !705, inlinedAt: !721)
!812 = !DILocation(line: 0, scope: !722)
!813 = !DILocation(line: 459, column: 7, scope: !722)
!814 = !DILocation(line: 462, column: 21, scope: !815)
!815 = distinct !DILexicalBlock(scope: !722, file: !1, line: 462, column: 11)
!816 = !DILocation(line: 462, column: 11, scope: !722)
!817 = !DILocation(line: 463, column: 2, scope: !815)
!818 = !DILocation(line: 464, column: 7, scope: !722)
!819 = !DILocation(line: 465, column: 7, scope: !722)
!820 = !DILocation(line: 468, column: 7, scope: !722)
!821 = !DILocation(line: 469, column: 5, scope: !722)
!822 = !DILocation(line: 470, column: 3, scope: !690)
