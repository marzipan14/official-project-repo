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
  br i1 %9, label %10, label %23, !dbg !311

; <label>:10:                                     ; preds = %5
  %11 = getelementptr inbounds %struct._reent, %struct._reent* %7, i64 0, i32 14, !dbg !312
  %12 = load i32, i32* %11, align 8, !dbg !312, !tbaa !315
  %13 = add nsw i32 %1, 35, !dbg !324
  %14 = icmp sgt i32 %12, %13, !dbg !325
  %15 = getelementptr inbounds %struct._reent, %struct._reent* %7, i64 0, i32 15
  %16 = load i8*, i8** %15, align 8, !dbg !326, !tbaa !329
  br i1 %14, label %23, label %17, !dbg !330

; <label>:17:                                     ; preds = %10
  %18 = add nsw i32 %1, 36, !dbg !331
  %19 = sext i32 %18 to i64, !dbg !331
  %20 = tail call i8* @realloc(i8* %16, i64 %19) #4, !dbg !331
  %21 = icmp eq i8* %20, null, !dbg !332
  br i1 %21, label %89, label %22, !dbg !333

; <label>:22:                                     ; preds = %17
  store i32 %18, i32* %11, align 8, !dbg !334, !tbaa !315
  store i8* %20, i8** %15, align 8, !dbg !335, !tbaa !329
  br label %23, !dbg !336

; <label>:23:                                     ; preds = %10, %22, %5
  %24 = phi i8* [ %4, %5 ], [ %20, %22 ], [ %16, %10 ]
  %25 = fcmp olt double %0, 1.000000e+00, !dbg !338
  %26 = fcmp ogt double %0, -1.000000e+00, !dbg !340
  %27 = and i1 %25, %26, !dbg !341
  %28 = select i1 %27, i32 2, i32 3, !dbg !341
  %29 = call i8* @_dtoa_r(%struct._reent* %7, double %0, i32 %28, i32 %1, i32* %2, i32* %3, i8** nonnull %6) #4, !dbg !344
  %30 = load i32, i32* %2, align 4, !dbg !346, !tbaa !347
  %31 = sub nsw i32 0, %30, !dbg !348
  %32 = load i8*, i8** %6, align 8, !dbg !349, !tbaa !350
  %33 = icmp ult i8* %29, %32, !dbg !351
  br i1 %33, label %69, label %34, !dbg !352

; <label>:34:                                     ; preds = %69, %23
  %35 = phi i8* [ %24, %23 ], [ %75, %69 ], !dbg !353
  %36 = phi i32 [ %31, %23 ], [ %76, %69 ], !dbg !353
  %37 = icmp slt i32 %36, %1, !dbg !355
  br i1 %37, label %38, label %87, !dbg !356

; <label>:38:                                     ; preds = %34
  %39 = xor i32 %36, -1, !dbg !357
  %40 = add i32 %39, %1, !dbg !357
  %41 = zext i32 %40 to i64, !dbg !357
  %42 = add nuw nsw i64 %41, 1, !dbg !357
  %43 = xor i32 %36, -1, !dbg !357
  %44 = add i32 %43, %1, !dbg !357
  %45 = zext i32 %44 to i64, !dbg !357
  %46 = add nuw nsw i64 %45, 1, !dbg !357
  %47 = icmp ult i64 %46, 32, !dbg !357
  br i1 %47, label %48, label %51, !dbg !357

; <label>:48:                                     ; preds = %67, %38
  %49 = phi i32 [ %36, %38 ], [ %57, %67 ]
  %50 = phi i8* [ %35, %38 ], [ %58, %67 ]
  br label %79, !dbg !357

; <label>:51:                                     ; preds = %38
  %52 = add i32 %44, 1, !dbg !357
  %53 = and i32 %52, 31, !dbg !357
  %54 = zext i32 %53 to i64, !dbg !357
  %55 = sub nsw i64 %46, %54, !dbg !357
  %56 = trunc i64 %55 to i32, !dbg !357
  %57 = add i32 %36, %56, !dbg !357
  %58 = getelementptr i8, i8* %35, i64 %55, !dbg !357
  br label %59, !dbg !357

; <label>:59:                                     ; preds = %59, %51
  %60 = phi i64 [ 0, %51 ], [ %65, %59 ]
  %61 = getelementptr i8, i8* %35, i64 %60
  %62 = bitcast i8* %61 to <16 x i8>*, !dbg !358
  store <16 x i8> <i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48>, <16 x i8>* %62, align 1, !dbg !358, !tbaa !360
  %63 = getelementptr i8, i8* %61, i64 16, !dbg !358
  %64 = bitcast i8* %63 to <16 x i8>*, !dbg !358
  store <16 x i8> <i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48>, <16 x i8>* %64, align 1, !dbg !358, !tbaa !360
  %65 = add i64 %60, 32
  %66 = icmp eq i64 %65, %55
  br i1 %66, label %67, label %59, !llvm.loop !361

; <label>:67:                                     ; preds = %59
  %68 = icmp eq i32 %53, 0
  br i1 %68, label %85, label %48, !dbg !357

; <label>:69:                                     ; preds = %23, %69
  %70 = phi i32 [ %76, %69 ], [ %31, %23 ]
  %71 = phi i8* [ %73, %69 ], [ %29, %23 ]
  %72 = phi i8* [ %75, %69 ], [ %24, %23 ]
  %73 = getelementptr inbounds i8, i8* %71, i64 1, !dbg !364
  %74 = load i8, i8* %71, align 1, !dbg !365, !tbaa !360
  %75 = getelementptr inbounds i8, i8* %72, i64 1, !dbg !366
  store i8 %74, i8* %72, align 1, !dbg !367, !tbaa !360
  %76 = add nsw i32 %70, 1, !dbg !368
  %77 = load i8*, i8** %6, align 8, !dbg !349, !tbaa !350
  %78 = icmp ult i8* %73, %77, !dbg !351
  br i1 %78, label %69, label %34, !dbg !352, !llvm.loop !369

; <label>:79:                                     ; preds = %48, %79
  %80 = phi i32 [ %83, %79 ], [ %49, %48 ]
  %81 = phi i8* [ %82, %79 ], [ %50, %48 ]
  %82 = getelementptr inbounds i8, i8* %81, i64 1, !dbg !357
  store i8 48, i8* %81, align 1, !dbg !358, !tbaa !360
  %83 = add nsw i32 %80, 1, !dbg !371
  %84 = icmp eq i32 %83, %1, !dbg !355
  br i1 %84, label %85, label %79, !dbg !356, !llvm.loop !372

; <label>:85:                                     ; preds = %79, %67
  %86 = getelementptr i8, i8* %35, i64 %42, !dbg !357
  br label %87, !dbg !374

; <label>:87:                                     ; preds = %85, %34
  %88 = phi i8* [ %35, %34 ], [ %86, %85 ], !dbg !357
  store i8 0, i8* %88, align 1, !dbg !374, !tbaa !360
  br label %89, !dbg !375

; <label>:89:                                     ; preds = %17, %87
  %90 = phi i8* [ %24, %87 ], [ null, %17 ], !dbg !357
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #5, !dbg !376
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !376
  ret i8* %90, !dbg !376
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
define dso_local i8* @ecvtbuf(double, i32, i32*, i32*, i8*) local_unnamed_addr #0 !dbg !377 {
  %6 = alloca i8*, align 8
  %7 = tail call %struct._reent* @__getreent() #4, !dbg !390
  %8 = bitcast i8** %6 to i8*, !dbg !392
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #5, !dbg !392
  %9 = icmp eq i8* %4, null, !dbg !394
  br i1 %9, label %10, label %22, !dbg !396

; <label>:10:                                     ; preds = %5
  %11 = getelementptr inbounds %struct._reent, %struct._reent* %7, i64 0, i32 14, !dbg !397
  %12 = load i32, i32* %11, align 8, !dbg !397, !tbaa !315
  %13 = icmp sgt i32 %12, %1, !dbg !400
  %14 = getelementptr inbounds %struct._reent, %struct._reent* %7, i64 0, i32 15
  %15 = load i8*, i8** %14, align 8, !dbg !401, !tbaa !329
  br i1 %13, label %22, label %16, !dbg !404

; <label>:16:                                     ; preds = %10
  %17 = add nsw i32 %1, 1, !dbg !405
  %18 = sext i32 %17 to i64, !dbg !405
  %19 = tail call i8* @realloc(i8* %15, i64 %18) #4, !dbg !405
  %20 = icmp eq i8* %19, null, !dbg !406
  br i1 %20, label %82, label %21, !dbg !407

; <label>:21:                                     ; preds = %16
  store i32 %17, i32* %11, align 8, !dbg !408, !tbaa !315
  store i8* %19, i8** %14, align 8, !dbg !409, !tbaa !329
  br label %22, !dbg !410

; <label>:22:                                     ; preds = %10, %21, %5
  %23 = phi i8* [ %4, %5 ], [ %19, %21 ], [ %15, %10 ]
  %24 = call i8* @_dtoa_r(%struct._reent* %7, double %0, i32 2, i32 %1, i32* %2, i32* %3, i8** nonnull %6) #4, !dbg !413
  %25 = load i8*, i8** %6, align 8, !dbg !415, !tbaa !350
  %26 = icmp ult i8* %24, %25, !dbg !416
  br i1 %26, label %62, label %27, !dbg !417

; <label>:27:                                     ; preds = %62, %22
  %28 = phi i8* [ %23, %22 ], [ %68, %62 ], !dbg !418
  %29 = phi i32 [ 0, %22 ], [ %69, %62 ], !dbg !418
  %30 = icmp slt i32 %29, %1, !dbg !420
  br i1 %30, label %31, label %80, !dbg !421

; <label>:31:                                     ; preds = %27
  %32 = xor i32 %29, -1, !dbg !422
  %33 = add i32 %32, %1, !dbg !422
  %34 = zext i32 %33 to i64, !dbg !422
  %35 = add nuw nsw i64 %34, 1, !dbg !422
  %36 = xor i32 %29, -1, !dbg !422
  %37 = add i32 %36, %1, !dbg !422
  %38 = zext i32 %37 to i64, !dbg !422
  %39 = add nuw nsw i64 %38, 1, !dbg !422
  %40 = icmp ult i64 %39, 32, !dbg !422
  br i1 %40, label %41, label %44, !dbg !422

; <label>:41:                                     ; preds = %60, %31
  %42 = phi i32 [ %29, %31 ], [ %50, %60 ]
  %43 = phi i8* [ %28, %31 ], [ %51, %60 ]
  br label %72, !dbg !422

; <label>:44:                                     ; preds = %31
  %45 = add i32 %37, 1, !dbg !422
  %46 = and i32 %45, 31, !dbg !422
  %47 = zext i32 %46 to i64, !dbg !422
  %48 = sub nsw i64 %39, %47, !dbg !422
  %49 = trunc i64 %48 to i32, !dbg !422
  %50 = add i32 %29, %49, !dbg !422
  %51 = getelementptr i8, i8* %28, i64 %48, !dbg !422
  br label %52, !dbg !422

; <label>:52:                                     ; preds = %52, %44
  %53 = phi i64 [ 0, %44 ], [ %58, %52 ]
  %54 = getelementptr i8, i8* %28, i64 %53
  %55 = bitcast i8* %54 to <16 x i8>*, !dbg !423
  store <16 x i8> <i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48>, <16 x i8>* %55, align 1, !dbg !423, !tbaa !360
  %56 = getelementptr i8, i8* %54, i64 16, !dbg !423
  %57 = bitcast i8* %56 to <16 x i8>*, !dbg !423
  store <16 x i8> <i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48>, <16 x i8>* %57, align 1, !dbg !423, !tbaa !360
  %58 = add i64 %53, 32
  %59 = icmp eq i64 %58, %48
  br i1 %59, label %60, label %52, !llvm.loop !425

; <label>:60:                                     ; preds = %52
  %61 = icmp eq i32 %46, 0
  br i1 %61, label %78, label %41, !dbg !422

; <label>:62:                                     ; preds = %22, %62
  %63 = phi i32 [ %69, %62 ], [ 0, %22 ]
  %64 = phi i8* [ %66, %62 ], [ %24, %22 ]
  %65 = phi i8* [ %68, %62 ], [ %23, %22 ]
  %66 = getelementptr inbounds i8, i8* %64, i64 1, !dbg !427
  %67 = load i8, i8* %64, align 1, !dbg !428, !tbaa !360
  %68 = getelementptr inbounds i8, i8* %65, i64 1, !dbg !429
  store i8 %67, i8* %65, align 1, !dbg !430, !tbaa !360
  %69 = add nuw nsw i32 %63, 1, !dbg !431
  %70 = load i8*, i8** %6, align 8, !dbg !415, !tbaa !350
  %71 = icmp ult i8* %66, %70, !dbg !416
  br i1 %71, label %62, label %27, !dbg !417, !llvm.loop !432

; <label>:72:                                     ; preds = %41, %72
  %73 = phi i32 [ %76, %72 ], [ %42, %41 ]
  %74 = phi i8* [ %75, %72 ], [ %43, %41 ]
  %75 = getelementptr inbounds i8, i8* %74, i64 1, !dbg !422
  store i8 48, i8* %74, align 1, !dbg !423, !tbaa !360
  %76 = add nuw nsw i32 %73, 1, !dbg !434
  %77 = icmp eq i32 %76, %1, !dbg !420
  br i1 %77, label %78, label %72, !dbg !421, !llvm.loop !435

; <label>:78:                                     ; preds = %72, %60
  %79 = getelementptr i8, i8* %28, i64 %35, !dbg !422
  br label %80, !dbg !436

; <label>:80:                                     ; preds = %78, %27
  %81 = phi i8* [ %28, %27 ], [ %79, %78 ], !dbg !422
  store i8 0, i8* %81, align 1, !dbg !436, !tbaa !360
  br label %82, !dbg !437

; <label>:82:                                     ; preds = %16, %80
  %83 = phi i8* [ %23, %80 ], [ null, %16 ], !dbg !422
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #5, !dbg !438
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !438
  ret i8* %83, !dbg !438
}

; Function Attrs: noredzone nounwind
define dso_local i8* @_gcvt(%struct._reent*, double, i32, i8* returned, i8 signext, i32) local_unnamed_addr #0 !dbg !439 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = fcmp olt double %1, 0.000000e+00, !dbg !459
  %11 = fsub double -0.000000e+00, %1, !dbg !461
  %12 = select i1 %10, double %11, double %1, !dbg !463
  %13 = fcmp oeq double %12, 0.000000e+00, !dbg !464
  br i1 %13, label %14, label %16, !dbg !465

; <label>:14:                                     ; preds = %6
  %15 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !466
  store i8 48, i8* %3, align 1, !dbg !468, !tbaa !360
  store i8 0, i8* %15, align 1, !dbg !469, !tbaa !360
  br label %161, !dbg !470

; <label>:16:                                     ; preds = %6
  %17 = fcmp ugt double %12, 1.000000e-04, !dbg !471
  br i1 %17, label %18, label %21, !dbg !472

; <label>:18:                                     ; preds = %16
  %19 = tail call double @_mprec_log10(i32 %2) #4, !dbg !473
  %20 = fcmp ult double %12, %19, !dbg !474
  br i1 %20, label %23, label %21, !dbg !475

; <label>:21:                                     ; preds = %18, %16
  %22 = add nsw i32 %2, -1, !dbg !476
  tail call fastcc void @print_e(%struct._reent* %0, i8* %3, double %12, i32 %22, i8 signext %4, i32 %5) #6, !dbg !478
  br label %161, !dbg !479

; <label>:23:                                     ; preds = %18
  %24 = bitcast i32* %7 to i8*, !dbg !480
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #5, !dbg !480
  %25 = bitcast i32* %8 to i8*, !dbg !481
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #5, !dbg !481
  %26 = bitcast i8** %9 to i8*, !dbg !482
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #5, !dbg !482
  %27 = fcmp olt double %12, 1.000000e+00, !dbg !483
  %28 = select i1 %27, i32 3, i32 2, !dbg !489
  %29 = call i8* @_dtoa_r(%struct._reent* %0, double %12, i32 %28, i32 %2, i32* nonnull %7, i32* nonnull %8, i8** nonnull %9) #4, !dbg !490
  %30 = load i32, i32* %7, align 4, !dbg !492, !tbaa !347
  %31 = icmp eq i32 %30, 9999, !dbg !494
  br i1 %31, label %37, label %32, !dbg !495

; <label>:32:                                     ; preds = %23
  %33 = load i8, i8* %29, align 1, !dbg !496, !tbaa !360
  %34 = icmp ne i8 %33, 0, !dbg !496
  %35 = icmp sgt i32 %30, 0, !dbg !497
  %36 = and i1 %34, %35, !dbg !498
  br i1 %36, label %47, label %39, !dbg !499

; <label>:37:                                     ; preds = %23
  %38 = call i8* @strcpy(i8* %3, i8* %29) #4, !dbg !500
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #5, !dbg !502
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #5, !dbg !502
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #5, !dbg !502
  br label %161

; <label>:39:                                     ; preds = %47, %32
  %40 = phi i32 [ %30, %32 ], [ %55, %47 ], !dbg !503
  %41 = phi i8* [ %3, %32 ], [ %53, %47 ]
  %42 = phi i32 [ %2, %32 ], [ %56, %47 ]
  %43 = phi i8* [ %29, %32 ], [ %52, %47 ], !dbg !504
  %44 = icmp sgt i32 %40, 0, !dbg !506
  %45 = icmp sgt i32 %42, 0, !dbg !507
  %46 = and i1 %45, %44, !dbg !508
  br i1 %46, label %61, label %71, !dbg !509

; <label>:47:                                     ; preds = %32, %47
  %48 = phi i8 [ %57, %47 ], [ %33, %32 ]
  %49 = phi i8* [ %52, %47 ], [ %29, %32 ]
  %50 = phi i32 [ %56, %47 ], [ %2, %32 ]
  %51 = phi i8* [ %53, %47 ], [ %3, %32 ]
  %52 = getelementptr inbounds i8, i8* %49, i64 1, !dbg !510
  %53 = getelementptr inbounds i8, i8* %51, i64 1, !dbg !511
  store i8 %48, i8* %51, align 1, !dbg !512, !tbaa !360
  %54 = load i32, i32* %7, align 4, !dbg !513, !tbaa !347
  %55 = add nsw i32 %54, -1, !dbg !513
  store i32 %55, i32* %7, align 4, !dbg !513, !tbaa !347
  %56 = add nsw i32 %50, -1, !dbg !514
  %57 = load i8, i8* %52, align 1, !dbg !496, !tbaa !360
  %58 = icmp ne i8 %57, 0, !dbg !496
  %59 = icmp sgt i32 %54, 1, !dbg !497
  %60 = and i1 %58, %59, !dbg !498
  br i1 %60, label %47, label %39, !dbg !499, !llvm.loop !515

; <label>:61:                                     ; preds = %39, %61
  %62 = phi i32 [ %67, %61 ], [ %42, %39 ]
  %63 = phi i8* [ %64, %61 ], [ %41, %39 ]
  %64 = getelementptr inbounds i8, i8* %63, i64 1, !dbg !517
  store i8 48, i8* %63, align 1, !dbg !519, !tbaa !360
  %65 = load i32, i32* %7, align 4, !dbg !520, !tbaa !347
  %66 = add nsw i32 %65, -1, !dbg !520
  store i32 %66, i32* %7, align 4, !dbg !520, !tbaa !347
  %67 = add nsw i32 %62, -1, !dbg !521
  %68 = icmp sgt i32 %65, 1, !dbg !506
  %69 = icmp sgt i32 %62, 1, !dbg !507
  %70 = and i1 %69, %68, !dbg !508
  br i1 %70, label %61, label %71, !dbg !509, !llvm.loop !522

; <label>:71:                                     ; preds = %61, %39
  %72 = phi i8* [ %41, %39 ], [ %64, %61 ]
  %73 = phi i32 [ %42, %39 ], [ %67, %61 ]
  %74 = icmp ne i32 %5, 0, !dbg !524
  br i1 %74, label %78, label %75, !dbg !526

; <label>:75:                                     ; preds = %71
  %76 = load i8, i8* %43, align 1, !dbg !527, !tbaa !360
  %77 = icmp eq i8 %76, 0, !dbg !527
  br i1 %77, label %159, label %78, !dbg !528

; <label>:78:                                     ; preds = %75, %71
  %79 = icmp eq i8* %72, %3, !dbg !529
  br i1 %79, label %80, label %82, !dbg !532

; <label>:80:                                     ; preds = %78
  %81 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !533
  store i8 48, i8* %3, align 1, !dbg !534, !tbaa !360
  br label %82, !dbg !535

; <label>:82:                                     ; preds = %80, %78
  %83 = phi i8* [ %81, %80 ], [ %72, %78 ]
  store i8 46, i8* %83, align 1, !dbg !536, !tbaa !360
  %84 = getelementptr inbounds i8, i8* %83, i64 1, !dbg !537
  %85 = load i32, i32* %7, align 4, !dbg !539, !tbaa !347
  %86 = icmp slt i32 %85, 0, !dbg !540
  %87 = icmp sgt i32 %73, 0, !dbg !541
  %88 = and i1 %87, %86, !dbg !542
  br i1 %88, label %96, label %89, !dbg !543

; <label>:89:                                     ; preds = %96, %82
  %90 = phi i32 [ %73, %82 ], [ %101, %96 ]
  %91 = phi i8* [ %84, %82 ], [ %102, %96 ], !dbg !537
  %92 = load i8, i8* %43, align 1, !dbg !544, !tbaa !360
  %93 = icmp ne i8 %92, 0, !dbg !544
  %94 = icmp sgt i32 %90, 0, !dbg !545
  %95 = and i1 %94, %93, !dbg !546
  br i1 %95, label %106, label %118, !dbg !547

; <label>:96:                                     ; preds = %82, %96
  %97 = phi i8* [ %102, %96 ], [ %84, %82 ]
  %98 = phi i32 [ %101, %96 ], [ %73, %82 ]
  store i8 48, i8* %97, align 1, !dbg !548, !tbaa !360
  %99 = load i32, i32* %7, align 4, !dbg !549, !tbaa !347
  %100 = add nsw i32 %99, 1, !dbg !549
  store i32 %100, i32* %7, align 4, !dbg !549, !tbaa !347
  %101 = add nsw i32 %98, -1, !dbg !550
  %102 = getelementptr inbounds i8, i8* %97, i64 1, !dbg !537
  %103 = icmp slt i32 %99, -1, !dbg !540
  %104 = icmp sgt i32 %98, 1, !dbg !541
  %105 = and i1 %104, %103, !dbg !542
  br i1 %105, label %96, label %89, !dbg !543, !llvm.loop !551

; <label>:106:                                    ; preds = %89, %106
  %107 = phi i8 [ %114, %106 ], [ %92, %89 ]
  %108 = phi i8* [ %111, %106 ], [ %43, %89 ]
  %109 = phi i32 [ %113, %106 ], [ %90, %89 ]
  %110 = phi i8* [ %112, %106 ], [ %91, %89 ]
  %111 = getelementptr inbounds i8, i8* %108, i64 1, !dbg !553
  %112 = getelementptr inbounds i8, i8* %110, i64 1, !dbg !555
  store i8 %107, i8* %110, align 1, !dbg !556, !tbaa !360
  %113 = add nsw i32 %109, -1, !dbg !557
  %114 = load i8, i8* %111, align 1, !dbg !544, !tbaa !360
  %115 = icmp ne i8 %114, 0, !dbg !544
  %116 = icmp sgt i32 %109, 1, !dbg !545
  %117 = and i1 %116, %115, !dbg !546
  br i1 %117, label %106, label %118, !dbg !547, !llvm.loop !558

; <label>:118:                                    ; preds = %106, %89
  %119 = phi i8* [ %91, %89 ], [ %112, %106 ], !dbg !560
  %120 = phi i32 [ %90, %89 ], [ %113, %106 ]
  %121 = phi i1 [ %94, %89 ], [ %116, %106 ], !dbg !545
  %122 = and i1 %74, %121, !dbg !561
  br i1 %122, label %123, label %159, !dbg !561

; <label>:123:                                    ; preds = %118
  %124 = xor i32 %120, -1, !dbg !562
  %125 = icmp sgt i32 %124, -2, !dbg !562
  %126 = select i1 %125, i32 %124, i32 -2, !dbg !562
  %127 = add i32 %120, %126, !dbg !562
  %128 = add i32 %127, 1, !dbg !562
  %129 = zext i32 %128 to i64, !dbg !562
  %130 = add nuw nsw i64 %129, 1, !dbg !562
  %131 = icmp ult i64 %130, 32, !dbg !562
  br i1 %131, label %150, label %132, !dbg !562

; <label>:132:                                    ; preds = %123
  %133 = add i32 %127, 2, !dbg !562
  %134 = and i32 %133, 31, !dbg !562
  %135 = zext i32 %134 to i64, !dbg !562
  %136 = sub nsw i64 %130, %135, !dbg !562
  %137 = getelementptr i8, i8* %119, i64 %136, !dbg !562
  %138 = trunc i64 %136 to i32, !dbg !562
  %139 = sub i32 %120, %138, !dbg !562
  br label %140, !dbg !562

; <label>:140:                                    ; preds = %140, %132
  %141 = phi i64 [ 0, %132 ], [ %146, %140 ]
  %142 = getelementptr i8, i8* %119, i64 %141, !dbg !566
  %143 = bitcast i8* %142 to <16 x i8>*, !dbg !567
  store <16 x i8> <i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48>, <16 x i8>* %143, align 1, !dbg !567, !tbaa !360
  %144 = getelementptr i8, i8* %142, i64 16, !dbg !567
  %145 = bitcast i8* %144 to <16 x i8>*, !dbg !567
  store <16 x i8> <i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48>, <16 x i8>* %145, align 1, !dbg !567, !tbaa !360
  %146 = add i64 %141, 32
  %147 = icmp eq i64 %146, %136
  br i1 %147, label %148, label %140, !llvm.loop !568

; <label>:148:                                    ; preds = %140
  %149 = icmp eq i32 %134, 0
  br i1 %149, label %159, label %150, !dbg !562

; <label>:150:                                    ; preds = %148, %123
  %151 = phi i8* [ %119, %123 ], [ %137, %148 ]
  %152 = phi i32 [ %120, %123 ], [ %139, %148 ]
  br label %153, !dbg !562

; <label>:153:                                    ; preds = %150, %153
  %154 = phi i8* [ %156, %153 ], [ %151, %150 ], !dbg !566
  %155 = phi i32 [ %157, %153 ], [ %152, %150 ]
  %156 = getelementptr inbounds i8, i8* %154, i64 1, !dbg !562
  store i8 48, i8* %154, align 1, !dbg !567, !tbaa !360
  %157 = add nsw i32 %155, -1, !dbg !569
  %158 = icmp sgt i32 %155, 1, !dbg !570
  br i1 %158, label %153, label %159, !dbg !571, !llvm.loop !572

; <label>:159:                                    ; preds = %153, %148, %75, %118
  %160 = phi i8* [ %119, %118 ], [ %72, %75 ], [ %137, %148 ], [ %156, %153 ]
  store i8 0, i8* %160, align 1, !dbg !573, !tbaa !360
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #5, !dbg !502
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #5, !dbg !502
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #5, !dbg !502
  br label %161

; <label>:161:                                    ; preds = %14, %21, %159, %37
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !574
  ret i8* %3, !dbg !574
}

; Function Attrs: noredzone
declare dso_local double @_mprec_log10(i32) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc void @print_e(%struct._reent*, i8*, double, i32, i8 signext, i32) unnamed_addr #0 !dbg !575 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = bitcast i32* %7 to i8*, !dbg !595
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #5, !dbg !595
  %11 = bitcast i8** %8 to i8*, !dbg !596
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #5, !dbg !596
  %12 = bitcast i32* %9 to i8*, !dbg !597
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #5, !dbg !597
  %13 = add nsw i32 %3, 1, !dbg !599
  %14 = call i8* @_dtoa_r(%struct._reent* %0, double %2, i32 2, i32 %13, i32* nonnull %9, i32* nonnull %7, i8** nonnull %8) #4, !dbg !603
  %15 = load i32, i32* %9, align 4, !dbg !605, !tbaa !347
  %16 = icmp eq i32 %15, 9999, !dbg !607
  br i1 %16, label %17, label %19, !dbg !608

; <label>:17:                                     ; preds = %6
  %18 = call i8* @strcpy(i8* %1, i8* %14) #4, !dbg !609
  br label %124, !dbg !611

; <label>:19:                                     ; preds = %6
  %20 = load i8, i8* %14, align 1, !dbg !612, !tbaa !360
  %21 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !613
  store i8 %20, i8* %1, align 1, !dbg !614, !tbaa !360
  %22 = or i32 %5, %3, !dbg !615
  %23 = icmp eq i32 %22, 0, !dbg !615
  br i1 %23, label %26, label %24, !dbg !615

; <label>:24:                                     ; preds = %19
  %25 = getelementptr inbounds i8, i8* %1, i64 2, !dbg !617
  store i8 46, i8* %21, align 1, !dbg !618, !tbaa !360
  br label %26, !dbg !619

; <label>:26:                                     ; preds = %19, %24
  %27 = phi i8* [ %25, %24 ], [ %21, %19 ], !dbg !620
  %28 = getelementptr inbounds i8, i8* %14, i64 1, !dbg !621
  %29 = load i8, i8* %28, align 1, !dbg !623, !tbaa !360
  %30 = icmp ne i8 %29, 0, !dbg !623
  %31 = icmp sgt i32 %3, 0, !dbg !624
  %32 = and i1 %31, %30, !dbg !625
  br i1 %32, label %33, label %45, !dbg !626

; <label>:33:                                     ; preds = %26, %33
  %34 = phi i8 [ %41, %33 ], [ %29, %26 ]
  %35 = phi i8* [ %40, %33 ], [ %28, %26 ]
  %36 = phi i8* [ %38, %33 ], [ %27, %26 ]
  %37 = phi i32 [ %39, %33 ], [ %3, %26 ]
  %38 = getelementptr inbounds i8, i8* %36, i64 1, !dbg !627
  store i8 %34, i8* %36, align 1, !dbg !628, !tbaa !360
  %39 = add nsw i32 %37, -1, !dbg !629
  %40 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !621
  %41 = load i8, i8* %40, align 1, !dbg !623, !tbaa !360
  %42 = icmp ne i8 %41, 0, !dbg !623
  %43 = icmp sgt i32 %37, 1, !dbg !624
  %44 = and i1 %43, %42, !dbg !625
  br i1 %44, label %33, label %45, !dbg !626, !llvm.loop !630

; <label>:45:                                     ; preds = %33, %26
  %46 = phi i32 [ %3, %26 ], [ %39, %33 ], !dbg !621
  %47 = phi i8* [ %27, %26 ], [ %38, %33 ], !dbg !621
  switch i8 %4, label %48 [
    i8 103, label %87
    i8 71, label %80
  ], !dbg !632

; <label>:48:                                     ; preds = %45
  %49 = icmp sgt i32 %46, 0, !dbg !633
  br i1 %49, label %50, label %87, !dbg !637

; <label>:50:                                     ; preds = %48
  %51 = xor i32 %46, -1, !dbg !638
  %52 = icmp sgt i32 %51, -2, !dbg !638
  %53 = select i1 %52, i32 %51, i32 -2, !dbg !638
  %54 = add i32 %46, %53, !dbg !638
  %55 = add i32 %54, 1, !dbg !638
  %56 = zext i32 %55 to i64, !dbg !638
  %57 = add nuw nsw i64 %56, 1, !dbg !638
  %58 = icmp ult i64 %57, 32, !dbg !638
  br i1 %58, label %59, label %62, !dbg !638

; <label>:59:                                     ; preds = %78, %50
  %60 = phi i8* [ %47, %50 ], [ %67, %78 ]
  %61 = phi i32 [ %46, %50 ], [ %69, %78 ]
  br label %81, !dbg !638

; <label>:62:                                     ; preds = %50
  %63 = add i32 %54, 2, !dbg !638
  %64 = and i32 %63, 31, !dbg !638
  %65 = zext i32 %64 to i64, !dbg !638
  %66 = sub nsw i64 %57, %65, !dbg !638
  %67 = getelementptr i8, i8* %47, i64 %66, !dbg !638
  %68 = trunc i64 %66 to i32, !dbg !638
  %69 = sub i32 %46, %68, !dbg !638
  br label %70, !dbg !638

; <label>:70:                                     ; preds = %70, %62
  %71 = phi i64 [ 0, %62 ], [ %76, %70 ]
  %72 = getelementptr i8, i8* %47, i64 %71
  %73 = bitcast i8* %72 to <16 x i8>*, !dbg !640
  store <16 x i8> <i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48>, <16 x i8>* %73, align 1, !dbg !640, !tbaa !360
  %74 = getelementptr i8, i8* %72, i64 16, !dbg !640
  %75 = bitcast i8* %74 to <16 x i8>*, !dbg !640
  store <16 x i8> <i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48>, <16 x i8>* %75, align 1, !dbg !640, !tbaa !360
  %76 = add i64 %71, 32
  %77 = icmp eq i64 %76, %66
  br i1 %77, label %78, label %70, !llvm.loop !641

; <label>:78:                                     ; preds = %70
  %79 = icmp eq i32 %64, 0
  br i1 %79, label %87, label %59, !dbg !638

; <label>:80:                                     ; preds = %45
  br label %87, !dbg !643

; <label>:81:                                     ; preds = %59, %81
  %82 = phi i8* [ %84, %81 ], [ %60, %59 ]
  %83 = phi i32 [ %85, %81 ], [ %61, %59 ]
  %84 = getelementptr inbounds i8, i8* %82, i64 1, !dbg !638
  store i8 48, i8* %82, align 1, !dbg !640, !tbaa !360
  %85 = add nsw i32 %83, -1, !dbg !644
  %86 = icmp sgt i32 %83, 1, !dbg !633
  br i1 %86, label %81, label %87, !dbg !637, !llvm.loop !645

; <label>:87:                                     ; preds = %81, %78, %48, %45, %80
  %88 = phi i8 [ 69, %80 ], [ 101, %45 ], [ %4, %48 ], [ %4, %78 ], [ %4, %81 ]
  %89 = phi i8* [ %47, %80 ], [ %47, %45 ], [ %47, %48 ], [ %67, %78 ], [ %84, %81 ], !dbg !617
  %90 = getelementptr inbounds i8, i8* %89, i64 1, !dbg !646
  store i8 %88, i8* %89, align 1, !dbg !647, !tbaa !360
  %91 = load i32, i32* %9, align 4, !dbg !648, !tbaa !347
  %92 = add nsw i32 %91, -1, !dbg !648
  store i32 %92, i32* %9, align 4, !dbg !648, !tbaa !347
  %93 = icmp slt i32 %91, 1, !dbg !649
  %94 = getelementptr inbounds i8, i8* %89, i64 2, !dbg !651
  br i1 %93, label %95, label %98, !dbg !653

; <label>:95:                                     ; preds = %87
  store i8 45, i8* %90, align 1, !dbg !654, !tbaa !360
  %96 = load i32, i32* %9, align 4, !dbg !656, !tbaa !347
  %97 = sub nsw i32 0, %96, !dbg !657
  store i32 %97, i32* %9, align 4, !dbg !658, !tbaa !347
  br label %100, !dbg !659

; <label>:98:                                     ; preds = %87
  store i8 43, i8* %90, align 1, !dbg !660, !tbaa !360
  %99 = load i32, i32* %9, align 4, !dbg !661, !tbaa !347
  br label %100

; <label>:100:                                    ; preds = %98, %95
  %101 = phi i32 [ %99, %98 ], [ %97, %95 ], !dbg !661
  %102 = icmp sgt i32 %101, 99, !dbg !662
  br i1 %102, label %103, label %111, !dbg !663

; <label>:103:                                    ; preds = %100
  %104 = udiv i32 %101, 100
  %105 = trunc i32 %104 to i8, !dbg !665
  %106 = add i8 %105, 48, !dbg !665
  %107 = getelementptr inbounds i8, i8* %89, i64 3, !dbg !666
  store i8 %106, i8* %94, align 1, !dbg !667, !tbaa !360
  %108 = load i32, i32* %9, align 4, !dbg !668, !tbaa !347
  %109 = mul i32 %104, -100, !dbg !668
  %110 = add i32 %108, %109, !dbg !668
  store i32 %110, i32* %9, align 4, !dbg !668, !tbaa !347
  br label %111, !dbg !669

; <label>:111:                                    ; preds = %103, %100
  %112 = phi i32 [ %110, %103 ], [ %101, %100 ], !dbg !670
  %113 = phi i8* [ %107, %103 ], [ %94, %100 ], !dbg !651
  %114 = sdiv i32 %112, 10, !dbg !671
  %115 = trunc i32 %114 to i8, !dbg !673
  %116 = add i8 %115, 48, !dbg !673
  %117 = getelementptr inbounds i8, i8* %113, i64 1, !dbg !674
  store i8 %116, i8* %113, align 1, !dbg !675, !tbaa !360
  %118 = load i32, i32* %9, align 4, !dbg !676, !tbaa !347
  %119 = mul i32 %114, -10, !dbg !676
  %120 = add i32 %118, %119, !dbg !676
  store i32 %120, i32* %9, align 4, !dbg !676, !tbaa !347
  %121 = trunc i32 %120 to i8, !dbg !677
  %122 = add i8 %121, 48, !dbg !677
  %123 = getelementptr inbounds i8, i8* %113, i64 2, !dbg !678
  store i8 %122, i8* %117, align 1, !dbg !679, !tbaa !360
  store i8 0, i8* %123, align 1, !dbg !680, !tbaa !360
  br label %124, !dbg !681

; <label>:124:                                    ; preds = %111, %17
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #5, !dbg !681
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #5, !dbg !681
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #5, !dbg !681
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !681
  ret void, !dbg !681
}

; Function Attrs: noredzone
declare dso_local i8* @strcpy(i8*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i8* @_dcvt(%struct._reent*, i8* returned, double, i32, i32, i8 signext, i32) local_unnamed_addr #0 !dbg !682 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = sext i8 %5 to i32, !dbg !694
  switch i32 %11, label %144 [
    i32 102, label %12
    i32 70, label %12
    i32 103, label %139
    i32 71, label %139
    i32 101, label %143
    i32 69, label %143
  ], !dbg !695

; <label>:12:                                     ; preds = %7, %7
  %13 = bitcast i32* %8 to i8*, !dbg !715
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13) #5, !dbg !715
  %14 = bitcast i32* %9 to i8*, !dbg !716
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %14) #5, !dbg !716
  %15 = bitcast i8** %10 to i8*, !dbg !717
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %15) #5, !dbg !717
  %16 = call i8* @_dtoa_r(%struct._reent* %0, double %2, i32 3, i32 %3, i32* nonnull %8, i32* nonnull %9, i8** nonnull %10) #4, !dbg !721
  %17 = load i32, i32* %8, align 4, !dbg !724, !tbaa !347
  %18 = icmp eq i32 %17, 9999, !dbg !726
  br i1 %18, label %24, label %19, !dbg !727

; <label>:19:                                     ; preds = %12
  %20 = load i8, i8* %16, align 1, !dbg !728, !tbaa !360
  %21 = icmp ne i8 %20, 0, !dbg !728
  %22 = icmp sgt i32 %17, 0, !dbg !729
  %23 = and i1 %22, %21, !dbg !730
  br i1 %23, label %31, label %26, !dbg !731

; <label>:24:                                     ; preds = %12
  %25 = call i8* @strcpy(i8* %1, i8* %16) #4, !dbg !732
  br label %138, !dbg !734

; <label>:26:                                     ; preds = %31, %19
  %27 = phi i8* [ %16, %19 ], [ %35, %31 ], !dbg !735
  %28 = phi i8* [ %1, %19 ], [ %36, %31 ]
  %29 = phi i32 [ %17, %19 ], [ %38, %31 ], !dbg !737
  %30 = icmp sgt i32 %29, 0, !dbg !738
  br i1 %30, label %43, label %49, !dbg !739

; <label>:31:                                     ; preds = %19, %31
  %32 = phi i8 [ %39, %31 ], [ %20, %19 ]
  %33 = phi i8* [ %36, %31 ], [ %1, %19 ]
  %34 = phi i8* [ %35, %31 ], [ %16, %19 ]
  %35 = getelementptr inbounds i8, i8* %34, i64 1, !dbg !740
  %36 = getelementptr inbounds i8, i8* %33, i64 1, !dbg !741
  store i8 %32, i8* %33, align 1, !dbg !742, !tbaa !360
  %37 = load i32, i32* %8, align 4, !dbg !743, !tbaa !347
  %38 = add nsw i32 %37, -1, !dbg !743
  store i32 %38, i32* %8, align 4, !dbg !743, !tbaa !347
  %39 = load i8, i8* %35, align 1, !dbg !728, !tbaa !360
  %40 = icmp ne i8 %39, 0, !dbg !728
  %41 = icmp sgt i32 %37, 1, !dbg !729
  %42 = and i1 %41, %40, !dbg !730
  br i1 %42, label %31, label %26, !dbg !731, !llvm.loop !744

; <label>:43:                                     ; preds = %26, %43
  %44 = phi i8* [ %45, %43 ], [ %28, %26 ]
  %45 = getelementptr inbounds i8, i8* %44, i64 1, !dbg !747
  store i8 48, i8* %44, align 1, !dbg !749, !tbaa !360
  %46 = load i32, i32* %8, align 4, !dbg !750, !tbaa !347
  %47 = add nsw i32 %46, -1, !dbg !750
  store i32 %47, i32* %8, align 4, !dbg !750, !tbaa !347
  %48 = icmp sgt i32 %46, 1, !dbg !738
  br i1 %48, label %43, label %49, !dbg !739, !llvm.loop !751

; <label>:49:                                     ; preds = %43, %26
  %50 = phi i8* [ %28, %26 ], [ %45, %43 ]
  %51 = or i32 %6, %3, !dbg !754
  %52 = icmp eq i32 %51, 0, !dbg !754
  br i1 %52, label %53, label %56, !dbg !756

; <label>:53:                                     ; preds = %49
  %54 = load i8, i8* %27, align 1, !dbg !757, !tbaa !360
  %55 = icmp eq i8 %54, 0, !dbg !757
  br i1 %55, label %136, label %56, !dbg !758

; <label>:56:                                     ; preds = %53, %49
  %57 = icmp eq i8* %27, %16, !dbg !759
  br i1 %57, label %58, label %60, !dbg !762

; <label>:58:                                     ; preds = %56
  %59 = getelementptr inbounds i8, i8* %50, i64 1, !dbg !763
  store i8 48, i8* %50, align 1, !dbg !764, !tbaa !360
  br label %60, !dbg !765

; <label>:60:                                     ; preds = %58, %56
  %61 = phi i8* [ %59, %58 ], [ %50, %56 ]
  store i8 46, i8* %61, align 1, !dbg !766, !tbaa !360
  %62 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !767
  %63 = load i32, i32* %8, align 4, !dbg !769, !tbaa !347
  %64 = icmp slt i32 %63, 0, !dbg !770
  %65 = icmp sgt i32 %3, 0, !dbg !771
  %66 = and i1 %65, %64, !dbg !772
  br i1 %66, label %74, label %67, !dbg !773

; <label>:67:                                     ; preds = %74, %60
  %68 = phi i32 [ %3, %60 ], [ %79, %74 ]
  %69 = phi i8* [ %62, %60 ], [ %80, %74 ], !dbg !767
  %70 = load i8, i8* %27, align 1, !dbg !774, !tbaa !360
  %71 = icmp ne i8 %70, 0, !dbg !774
  %72 = icmp sgt i32 %68, 0, !dbg !775
  %73 = and i1 %72, %71, !dbg !776
  br i1 %73, label %118, label %84, !dbg !777

; <label>:74:                                     ; preds = %60, %74
  %75 = phi i8* [ %80, %74 ], [ %62, %60 ]
  %76 = phi i32 [ %79, %74 ], [ %3, %60 ]
  store i8 48, i8* %75, align 1, !dbg !778, !tbaa !360
  %77 = load i32, i32* %8, align 4, !dbg !779, !tbaa !347
  %78 = add nsw i32 %77, 1, !dbg !779
  store i32 %78, i32* %8, align 4, !dbg !779, !tbaa !347
  %79 = add nsw i32 %76, -1, !dbg !780
  %80 = getelementptr inbounds i8, i8* %75, i64 1, !dbg !767
  %81 = icmp slt i32 %77, -1, !dbg !770
  %82 = icmp sgt i32 %76, 1, !dbg !771
  %83 = and i1 %82, %81, !dbg !772
  br i1 %83, label %74, label %67, !dbg !773, !llvm.loop !781

; <label>:84:                                     ; preds = %118, %67
  %85 = phi i32 [ %68, %67 ], [ %125, %118 ]
  %86 = phi i8* [ %69, %67 ], [ %124, %118 ], !dbg !784
  %87 = icmp sgt i32 %85, 0, !dbg !786
  br i1 %87, label %88, label %136, !dbg !787

; <label>:88:                                     ; preds = %84
  %89 = xor i32 %85, -1, !dbg !788
  %90 = icmp sgt i32 %89, -2, !dbg !788
  %91 = select i1 %90, i32 %89, i32 -2, !dbg !788
  %92 = add i32 %85, %91, !dbg !788
  %93 = add i32 %92, 1, !dbg !788
  %94 = zext i32 %93 to i64, !dbg !788
  %95 = add nuw nsw i64 %94, 1, !dbg !788
  %96 = icmp ult i64 %95, 32, !dbg !788
  br i1 %96, label %97, label %100, !dbg !788

; <label>:97:                                     ; preds = %116, %88
  %98 = phi i8* [ %86, %88 ], [ %105, %116 ]
  %99 = phi i32 [ %85, %88 ], [ %107, %116 ]
  br label %130, !dbg !788

; <label>:100:                                    ; preds = %88
  %101 = add i32 %92, 2, !dbg !788
  %102 = and i32 %101, 31, !dbg !788
  %103 = zext i32 %102 to i64, !dbg !788
  %104 = sub nsw i64 %95, %103, !dbg !788
  %105 = getelementptr i8, i8* %86, i64 %104, !dbg !788
  %106 = trunc i64 %104 to i32, !dbg !788
  %107 = sub i32 %85, %106, !dbg !788
  br label %108, !dbg !788

; <label>:108:                                    ; preds = %108, %100
  %109 = phi i64 [ 0, %100 ], [ %114, %108 ]
  %110 = getelementptr i8, i8* %86, i64 %109
  %111 = bitcast i8* %110 to <16 x i8>*, !dbg !790
  store <16 x i8> <i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48>, <16 x i8>* %111, align 1, !dbg !790, !tbaa !360
  %112 = getelementptr i8, i8* %110, i64 16, !dbg !790
  %113 = bitcast i8* %112 to <16 x i8>*, !dbg !790
  store <16 x i8> <i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48>, <16 x i8>* %113, align 1, !dbg !790, !tbaa !360
  %114 = add i64 %109, 32
  %115 = icmp eq i64 %114, %104
  br i1 %115, label %116, label %108, !llvm.loop !791

; <label>:116:                                    ; preds = %108
  %117 = icmp eq i32 %102, 0
  br i1 %117, label %136, label %97, !dbg !788

; <label>:118:                                    ; preds = %67, %118
  %119 = phi i8 [ %126, %118 ], [ %70, %67 ]
  %120 = phi i8* [ %124, %118 ], [ %69, %67 ]
  %121 = phi i8* [ %123, %118 ], [ %27, %67 ]
  %122 = phi i32 [ %125, %118 ], [ %68, %67 ]
  %123 = getelementptr inbounds i8, i8* %121, i64 1, !dbg !794
  %124 = getelementptr inbounds i8, i8* %120, i64 1, !dbg !795
  store i8 %119, i8* %120, align 1, !dbg !796, !tbaa !360
  %125 = add nsw i32 %122, -1, !dbg !797
  %126 = load i8, i8* %123, align 1, !dbg !774, !tbaa !360
  %127 = icmp ne i8 %126, 0, !dbg !774
  %128 = icmp sgt i32 %122, 1, !dbg !775
  %129 = and i1 %128, %127, !dbg !776
  br i1 %129, label %118, label %84, !dbg !777, !llvm.loop !798

; <label>:130:                                    ; preds = %97, %130
  %131 = phi i8* [ %133, %130 ], [ %98, %97 ]
  %132 = phi i32 [ %134, %130 ], [ %99, %97 ]
  %133 = getelementptr inbounds i8, i8* %131, i64 1, !dbg !788
  store i8 48, i8* %131, align 1, !dbg !790, !tbaa !360
  %134 = add nsw i32 %132, -1, !dbg !801
  %135 = icmp sgt i32 %132, 1, !dbg !786
  br i1 %135, label %130, label %136, !dbg !787, !llvm.loop !802

; <label>:136:                                    ; preds = %130, %116, %84, %53
  %137 = phi i8* [ %50, %53 ], [ %86, %84 ], [ %105, %116 ], [ %133, %130 ]
  store i8 0, i8* %137, align 1, !dbg !803, !tbaa !360
  br label %138, !dbg !804

; <label>:138:                                    ; preds = %24, %136
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #5, !dbg !804
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14) #5, !dbg !804
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #5, !dbg !804
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !804
  br label %144, !dbg !805

; <label>:139:                                    ; preds = %7, %7
  %140 = icmp eq i32 %3, 0, !dbg !806
  %141 = select i1 %140, i32 1, i32 %3, !dbg !808
  %142 = tail call i8* @_gcvt(%struct._reent* %0, double %2, i32 %141, i8* %1, i8 signext %5, i32 %6) #6, !dbg !809
  br label %144, !dbg !810

; <label>:143:                                    ; preds = %7, %7
  tail call fastcc void @print_e(%struct._reent* %0, i8* %1, double %2, i32 %3, i8 signext %5, i32 %6) #6, !dbg !811
  br label %144, !dbg !812

; <label>:144:                                    ; preds = %143, %7, %139, %138
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !813
  ret i8* %1, !dbg !813
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
!326 = !DILocation(line: 0, scope: !327)
!327 = distinct !DILexicalBlock(scope: !328, file: !1, line: 246, column: 8)
!328 = distinct !DILexicalBlock(scope: !313, file: !1, line: 245, column: 2)
!329 = !{!316, !320, i64 136}
!330 = !DILocation(line: 244, column: 11, scope: !314)
!331 = !DILocation(line: 246, column: 29, scope: !327)
!332 = !DILocation(line: 247, column: 27, scope: !327)
!333 = !DILocation(line: 246, column: 8, scope: !328)
!334 = !DILocation(line: 249, column: 19, scope: !328)
!335 = !DILocation(line: 250, column: 19, scope: !328)
!336 = !DILocation(line: 251, column: 2, scope: !328)
!337 = !DILocation(line: 237, column: 9, scope: !11)
!338 = !DILocation(line: 258, column: 15, scope: !339)
!339 = distinct !DILexicalBlock(scope: !11, file: !1, line: 258, column: 7)
!340 = !DILocation(line: 258, column: 32, scope: !339)
!341 = !DILocation(line: 258, column: 21, scope: !339)
!342 = !DILocation(line: 239, column: 9, scope: !11)
!343 = !DILocation(line: 238, column: 9, scope: !11)
!344 = !DILocation(line: 0, scope: !345)
!345 = distinct !DILexicalBlock(scope: !339, file: !1, line: 259, column: 5)
!346 = !DILocation(line: 269, column: 11, scope: !11)
!347 = !{!317, !317, i64 0}
!348 = !DILocation(line: 269, column: 10, scope: !11)
!349 = !DILocation(line: 270, column: 14, scope: !11)
!350 = !{!320, !320, i64 0}
!351 = !DILocation(line: 270, column: 12, scope: !11)
!352 = !DILocation(line: 270, column: 3, scope: !11)
!353 = !DILocation(line: 0, scope: !354)
!354 = distinct !DILexicalBlock(scope: !11, file: !1, line: 271, column: 5)
!355 = !DILocation(line: 276, column: 15, scope: !11)
!356 = !DILocation(line: 276, column: 3, scope: !11)
!357 = !DILocation(line: 0, scope: !11)
!358 = !DILocation(line: 278, column: 19, scope: !359)
!359 = distinct !DILexicalBlock(scope: !11, file: !1, line: 277, column: 5)
!360 = !{!318, !318, i64 0}
!361 = distinct !{!361, !356, !362, !363}
!362 = !DILocation(line: 280, column: 5, scope: !11)
!363 = !{!"llvm.loop.isvectorized", i32 1}
!364 = !DILocation(line: 272, column: 23, scope: !354)
!365 = !DILocation(line: 272, column: 21, scope: !354)
!366 = !DILocation(line: 272, column: 16, scope: !354)
!367 = !DILocation(line: 272, column: 19, scope: !354)
!368 = !DILocation(line: 273, column: 11, scope: !354)
!369 = distinct !{!369, !352, !370}
!370 = !DILocation(line: 274, column: 5, scope: !11)
!371 = !DILocation(line: 279, column: 11, scope: !359)
!372 = distinct !{!372, !356, !362, !373, !363}
!373 = !{!"llvm.loop.unroll.runtime.disable"}
!374 = !DILocation(line: 281, column: 15, scope: !11)
!375 = !DILocation(line: 282, column: 3, scope: !11)
!376 = !DILocation(line: 283, column: 1, scope: !11)
!377 = distinct !DISubprogram(name: "ecvtbuf", scope: !1, file: !1, line: 286, type: !12, isLocal: false, isDefinition: true, scopeLine: 292, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !378)
!378 = !{!379, !380, !381, !382, !383, !384, !385, !386, !387, !388}
!379 = !DILocalVariable(name: "invalue", arg: 1, scope: !377, file: !1, line: 286, type: !14)
!380 = !DILocalVariable(name: "ndigit", arg: 2, scope: !377, file: !1, line: 286, type: !15)
!381 = !DILocalVariable(name: "decpt", arg: 3, scope: !377, file: !1, line: 286, type: !16)
!382 = !DILocalVariable(name: "sign", arg: 4, scope: !377, file: !1, line: 286, type: !16)
!383 = !DILocalVariable(name: "fcvt_buf", arg: 5, scope: !377, file: !1, line: 286, type: !5)
!384 = !DILocalVariable(name: "reent", scope: !377, file: !1, line: 293, type: !24)
!385 = !DILocalVariable(name: "save", scope: !377, file: !1, line: 294, type: !5)
!386 = !DILocalVariable(name: "p", scope: !377, file: !1, line: 295, type: !5)
!387 = !DILocalVariable(name: "end", scope: !377, file: !1, line: 296, type: !5)
!388 = !DILocalVariable(name: "done", scope: !377, file: !1, line: 297, type: !15)
!389 = !DILocation(line: 286, column: 1, scope: !377)
!390 = !DILocation(line: 293, column: 26, scope: !377)
!391 = !DILocation(line: 293, column: 18, scope: !377)
!392 = !DILocation(line: 296, column: 3, scope: !377)
!393 = !DILocation(line: 297, column: 7, scope: !377)
!394 = !DILocation(line: 299, column: 16, scope: !395)
!395 = distinct !DILexicalBlock(scope: !377, file: !1, line: 299, column: 7)
!396 = !DILocation(line: 299, column: 7, scope: !377)
!397 = !DILocation(line: 301, column: 18, scope: !398)
!398 = distinct !DILexicalBlock(scope: !399, file: !1, line: 301, column: 11)
!399 = distinct !DILexicalBlock(scope: !395, file: !1, line: 300, column: 5)
!400 = !DILocation(line: 301, column: 26, scope: !398)
!401 = !DILocation(line: 0, scope: !402)
!402 = distinct !DILexicalBlock(scope: !403, file: !1, line: 303, column: 8)
!403 = distinct !DILexicalBlock(scope: !398, file: !1, line: 302, column: 2)
!404 = !DILocation(line: 301, column: 11, scope: !399)
!405 = !DILocation(line: 303, column: 29, scope: !402)
!406 = !DILocation(line: 304, column: 26, scope: !402)
!407 = !DILocation(line: 303, column: 8, scope: !403)
!408 = !DILocation(line: 306, column: 19, scope: !403)
!409 = !DILocation(line: 307, column: 19, scope: !403)
!410 = !DILocation(line: 308, column: 2, scope: !403)
!411 = !DILocation(line: 294, column: 9, scope: !377)
!412 = !DILocation(line: 296, column: 9, scope: !377)
!413 = !DILocation(line: 315, column: 7, scope: !377)
!414 = !DILocation(line: 295, column: 9, scope: !377)
!415 = !DILocation(line: 319, column: 14, scope: !377)
!416 = !DILocation(line: 319, column: 12, scope: !377)
!417 = !DILocation(line: 319, column: 3, scope: !377)
!418 = !DILocation(line: 0, scope: !419)
!419 = distinct !DILexicalBlock(scope: !377, file: !1, line: 320, column: 5)
!420 = !DILocation(line: 325, column: 15, scope: !377)
!421 = !DILocation(line: 325, column: 3, scope: !377)
!422 = !DILocation(line: 0, scope: !377)
!423 = !DILocation(line: 327, column: 19, scope: !424)
!424 = distinct !DILexicalBlock(scope: !377, file: !1, line: 326, column: 5)
!425 = distinct !{!425, !421, !426, !363}
!426 = !DILocation(line: 329, column: 5, scope: !377)
!427 = !DILocation(line: 321, column: 23, scope: !419)
!428 = !DILocation(line: 321, column: 21, scope: !419)
!429 = !DILocation(line: 321, column: 16, scope: !419)
!430 = !DILocation(line: 321, column: 19, scope: !419)
!431 = !DILocation(line: 322, column: 11, scope: !419)
!432 = distinct !{!432, !417, !433}
!433 = !DILocation(line: 323, column: 5, scope: !377)
!434 = !DILocation(line: 328, column: 11, scope: !424)
!435 = distinct !{!435, !421, !426, !373, !363}
!436 = !DILocation(line: 330, column: 15, scope: !377)
!437 = !DILocation(line: 331, column: 3, scope: !377)
!438 = !DILocation(line: 332, column: 1, scope: !377)
!439 = distinct !DISubprogram(name: "_gcvt", scope: !1, file: !1, line: 337, type: !440, isLocal: false, isDefinition: true, scopeLine: 344, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !442)
!440 = !DISubroutineType(types: !441)
!441 = !{!5, !24, !14, !15, !5, !6, !15}
!442 = !{!443, !444, !445, !446, !447, !448, !449, !450, !454, !455, !456}
!443 = !DILocalVariable(name: "ptr", arg: 1, scope: !439, file: !1, line: 337, type: !24)
!444 = !DILocalVariable(name: "invalue", arg: 2, scope: !439, file: !1, line: 337, type: !14)
!445 = !DILocalVariable(name: "ndigit", arg: 3, scope: !439, file: !1, line: 337, type: !15)
!446 = !DILocalVariable(name: "buf", arg: 4, scope: !439, file: !1, line: 337, type: !5)
!447 = !DILocalVariable(name: "type", arg: 5, scope: !439, file: !1, line: 337, type: !6)
!448 = !DILocalVariable(name: "dot", arg: 6, scope: !439, file: !1, line: 337, type: !15)
!449 = !DILocalVariable(name: "save", scope: !439, file: !1, line: 345, type: !5)
!450 = !DILocalVariable(name: "decpt", scope: !451, file: !1, line: 376, type: !15)
!451 = distinct !DILexicalBlock(scope: !452, file: !1, line: 375, column: 5)
!452 = distinct !DILexicalBlock(scope: !453, file: !1, line: 363, column: 7)
!453 = distinct !DILexicalBlock(scope: !439, file: !1, line: 352, column: 7)
!454 = !DILocalVariable(name: "sign", scope: !451, file: !1, line: 377, type: !15)
!455 = !DILocalVariable(name: "end", scope: !451, file: !1, line: 378, type: !5)
!456 = !DILocalVariable(name: "p", scope: !451, file: !1, line: 379, type: !5)
!457 = !DILocation(line: 337, column: 1, scope: !439)
!458 = !DILocation(line: 345, column: 9, scope: !439)
!459 = !DILocation(line: 347, column: 15, scope: !460)
!460 = distinct !DILexicalBlock(scope: !439, file: !1, line: 347, column: 7)
!461 = !DILocation(line: 349, column: 17, scope: !462)
!462 = distinct !DILexicalBlock(scope: !460, file: !1, line: 348, column: 5)
!463 = !DILocation(line: 347, column: 7, scope: !439)
!464 = !DILocation(line: 352, column: 15, scope: !453)
!465 = !DILocation(line: 352, column: 7, scope: !439)
!466 = !DILocation(line: 354, column: 11, scope: !467)
!467 = distinct !DILexicalBlock(scope: !453, file: !1, line: 353, column: 5)
!468 = !DILocation(line: 354, column: 14, scope: !467)
!469 = !DILocation(line: 355, column: 12, scope: !467)
!470 = !DILocation(line: 356, column: 5, scope: !467)
!471 = !DILocation(line: 363, column: 14, scope: !452)
!472 = !DILocation(line: 363, column: 25, scope: !452)
!473 = !DILocation(line: 363, column: 39, scope: !452)
!474 = !DILocation(line: 363, column: 36, scope: !452)
!475 = !DILocation(line: 363, column: 7, scope: !453)
!476 = !DILocation(line: 372, column: 42, scope: !477)
!477 = distinct !DILexicalBlock(scope: !452, file: !1, line: 364, column: 5)
!478 = !DILocation(line: 372, column: 7, scope: !477)
!479 = !DILocation(line: 373, column: 5, scope: !477)
!480 = !DILocation(line: 376, column: 7, scope: !451)
!481 = !DILocation(line: 377, column: 7, scope: !451)
!482 = !DILocation(line: 378, column: 7, scope: !451)
!483 = !DILocation(line: 381, column: 19, scope: !484)
!484 = distinct !DILexicalBlock(scope: !451, file: !1, line: 381, column: 11)
!485 = !DILocation(line: 376, column: 11, scope: !451)
!486 = !DILocation(line: 377, column: 11, scope: !451)
!487 = !DILocation(line: 378, column: 13, scope: !451)
!488 = !DILocation(line: 379, column: 13, scope: !451)
!489 = !DILocation(line: 381, column: 11, scope: !451)
!490 = !DILocation(line: 0, scope: !491)
!491 = distinct !DILexicalBlock(scope: !484, file: !1, line: 382, column: 2)
!492 = !DILocation(line: 391, column: 11, scope: !493)
!493 = distinct !DILexicalBlock(scope: !451, file: !1, line: 391, column: 11)
!494 = !DILocation(line: 391, column: 17, scope: !493)
!495 = !DILocation(line: 391, column: 11, scope: !451)
!496 = !DILocation(line: 396, column: 14, scope: !451)
!497 = !DILocation(line: 396, column: 26, scope: !451)
!498 = !DILocation(line: 396, column: 17, scope: !451)
!499 = !DILocation(line: 396, column: 7, scope: !451)
!500 = !DILocation(line: 393, column: 4, scope: !501)
!501 = distinct !DILexicalBlock(scope: !493, file: !1, line: 392, column: 2)
!502 = !DILocation(line: 439, column: 5, scope: !452)
!503 = !DILocation(line: 403, column: 14, scope: !451)
!504 = !DILocation(line: 0, scope: !505)
!505 = distinct !DILexicalBlock(scope: !451, file: !1, line: 397, column: 2)
!506 = !DILocation(line: 403, column: 20, scope: !451)
!507 = !DILocation(line: 403, column: 34, scope: !451)
!508 = !DILocation(line: 403, column: 24, scope: !451)
!509 = !DILocation(line: 403, column: 7, scope: !451)
!510 = !DILocation(line: 398, column: 15, scope: !505)
!511 = !DILocation(line: 398, column: 8, scope: !505)
!512 = !DILocation(line: 398, column: 11, scope: !505)
!513 = !DILocation(line: 399, column: 9, scope: !505)
!514 = !DILocation(line: 400, column: 10, scope: !505)
!515 = distinct !{!515, !499, !516}
!516 = !DILocation(line: 401, column: 2, scope: !451)
!517 = !DILocation(line: 405, column: 8, scope: !518)
!518 = distinct !DILexicalBlock(scope: !451, file: !1, line: 404, column: 2)
!519 = !DILocation(line: 405, column: 11, scope: !518)
!520 = !DILocation(line: 406, column: 9, scope: !518)
!521 = !DILocation(line: 407, column: 10, scope: !518)
!522 = distinct !{!522, !509, !523}
!523 = !DILocation(line: 408, column: 2, scope: !451)
!524 = !DILocation(line: 410, column: 11, scope: !525)
!525 = distinct !DILexicalBlock(scope: !451, file: !1, line: 410, column: 11)
!526 = !DILocation(line: 410, column: 15, scope: !525)
!527 = !DILocation(line: 410, column: 18, scope: !525)
!528 = !DILocation(line: 410, column: 11, scope: !451)
!529 = !DILocation(line: 412, column: 12, scope: !530)
!530 = distinct !DILexicalBlock(scope: !531, file: !1, line: 412, column: 8)
!531 = distinct !DILexicalBlock(scope: !525, file: !1, line: 411, column: 2)
!532 = !DILocation(line: 412, column: 8, scope: !531)
!533 = !DILocation(line: 413, column: 10, scope: !530)
!534 = !DILocation(line: 413, column: 13, scope: !530)
!535 = !DILocation(line: 413, column: 6, scope: !530)
!536 = !DILocation(line: 414, column: 11, scope: !531)
!537 = !DILocation(line: 0, scope: !538)
!538 = distinct !DILexicalBlock(scope: !531, file: !1, line: 416, column: 6)
!539 = !DILocation(line: 415, column: 11, scope: !531)
!540 = !DILocation(line: 415, column: 17, scope: !531)
!541 = !DILocation(line: 415, column: 31, scope: !531)
!542 = !DILocation(line: 415, column: 21, scope: !531)
!543 = !DILocation(line: 415, column: 4, scope: !531)
!544 = !DILocation(line: 423, column: 11, scope: !531)
!545 = !DILocation(line: 423, column: 24, scope: !531)
!546 = !DILocation(line: 423, column: 14, scope: !531)
!547 = !DILocation(line: 423, column: 4, scope: !531)
!548 = !DILocation(line: 417, column: 15, scope: !538)
!549 = !DILocation(line: 418, column: 13, scope: !538)
!550 = !DILocation(line: 419, column: 14, scope: !538)
!551 = distinct !{!551, !543, !552}
!552 = !DILocation(line: 420, column: 6, scope: !531)
!553 = !DILocation(line: 425, column: 19, scope: !554)
!554 = distinct !DILexicalBlock(scope: !531, file: !1, line: 424, column: 6)
!555 = !DILocation(line: 425, column: 12, scope: !554)
!556 = !DILocation(line: 425, column: 15, scope: !554)
!557 = !DILocation(line: 426, column: 14, scope: !554)
!558 = distinct !{!558, !547, !559}
!559 = !DILocation(line: 427, column: 6, scope: !531)
!560 = !DILocation(line: 0, scope: !554)
!561 = !DILocation(line: 429, column: 8, scope: !531)
!562 = !DILocation(line: 433, column: 9, scope: !563)
!563 = distinct !DILexicalBlock(scope: !564, file: !1, line: 432, column: 3)
!564 = distinct !DILexicalBlock(scope: !565, file: !1, line: 430, column: 6)
!565 = distinct !DILexicalBlock(scope: !531, file: !1, line: 429, column: 8)
!566 = !DILocation(line: 0, scope: !563)
!567 = !DILocation(line: 433, column: 12, scope: !563)
!568 = distinct !{!568, !363}
!569 = !DILocation(line: 434, column: 11, scope: !563)
!570 = !DILocation(line: 431, column: 22, scope: !564)
!571 = !DILocation(line: 431, column: 8, scope: !564)
!572 = distinct !{!572, !373, !363}
!573 = !DILocation(line: 438, column: 14, scope: !451)
!574 = !DILocation(line: 442, column: 1, scope: !439)
!575 = distinct !DISubprogram(name: "print_e", scope: !1, file: !1, line: 146, type: !576, isLocal: true, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !578)
!576 = !DISubroutineType(types: !577)
!577 = !{null, !24, !5, !14, !15, !6, !15}
!578 = !{!579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591}
!579 = !DILocalVariable(name: "ptr", arg: 1, scope: !575, file: !1, line: 146, type: !24)
!580 = !DILocalVariable(name: "buf", arg: 2, scope: !575, file: !1, line: 146, type: !5)
!581 = !DILocalVariable(name: "invalue", arg: 3, scope: !575, file: !1, line: 146, type: !14)
!582 = !DILocalVariable(name: "width", arg: 4, scope: !575, file: !1, line: 146, type: !15)
!583 = !DILocalVariable(name: "type", arg: 5, scope: !575, file: !1, line: 146, type: !6)
!584 = !DILocalVariable(name: "dot", arg: 6, scope: !575, file: !1, line: 146, type: !15)
!585 = !DILocalVariable(name: "sign", scope: !575, file: !1, line: 154, type: !15)
!586 = !DILocalVariable(name: "end", scope: !575, file: !1, line: 155, type: !5)
!587 = !DILocalVariable(name: "p", scope: !575, file: !1, line: 156, type: !5)
!588 = !DILocalVariable(name: "decpt", scope: !575, file: !1, line: 157, type: !15)
!589 = !DILocalVariable(name: "top", scope: !575, file: !1, line: 158, type: !15)
!590 = !DILocalVariable(name: "ndigit", scope: !575, file: !1, line: 159, type: !15)
!591 = !DILocalVariable(name: "top", scope: !592, file: !1, line: 210, type: !15)
!592 = distinct !DILexicalBlock(scope: !593, file: !1, line: 209, column: 5)
!593 = distinct !DILexicalBlock(scope: !575, file: !1, line: 208, column: 7)
!594 = !DILocation(line: 146, column: 1, scope: !575)
!595 = !DILocation(line: 154, column: 3, scope: !575)
!596 = !DILocation(line: 155, column: 3, scope: !575)
!597 = !DILocation(line: 157, column: 3, scope: !575)
!598 = !DILocation(line: 159, column: 7, scope: !575)
!599 = !DILocation(line: 161, column: 39, scope: !575)
!600 = !DILocation(line: 154, column: 7, scope: !575)
!601 = !DILocation(line: 155, column: 9, scope: !575)
!602 = !DILocation(line: 157, column: 7, scope: !575)
!603 = !DILocation(line: 161, column: 7, scope: !575)
!604 = !DILocation(line: 156, column: 9, scope: !575)
!605 = !DILocation(line: 163, column: 7, scope: !606)
!606 = distinct !DILexicalBlock(scope: !575, file: !1, line: 163, column: 7)
!607 = !DILocation(line: 163, column: 13, scope: !606)
!608 = !DILocation(line: 163, column: 7, scope: !575)
!609 = !DILocation(line: 165, column: 7, scope: !610)
!610 = distinct !DILexicalBlock(scope: !606, file: !1, line: 164, column: 5)
!611 = !DILocation(line: 166, column: 7, scope: !610)
!612 = !DILocation(line: 169, column: 12, scope: !575)
!613 = !DILocation(line: 169, column: 7, scope: !575)
!614 = !DILocation(line: 169, column: 10, scope: !575)
!615 = !DILocation(line: 170, column: 11, scope: !616)
!616 = distinct !DILexicalBlock(scope: !575, file: !1, line: 170, column: 7)
!617 = !DILocation(line: 171, column: 9, scope: !616)
!618 = !DILocation(line: 171, column: 12, scope: !616)
!619 = !DILocation(line: 171, column: 5, scope: !616)
!620 = !DILocation(line: 0, scope: !575)
!621 = !DILocation(line: 0, scope: !622)
!622 = distinct !DILexicalBlock(scope: !575, file: !1, line: 174, column: 5)
!623 = !DILocation(line: 173, column: 10, scope: !575)
!624 = !DILocation(line: 173, column: 23, scope: !575)
!625 = !DILocation(line: 173, column: 13, scope: !575)
!626 = !DILocation(line: 173, column: 3, scope: !575)
!627 = !DILocation(line: 175, column: 11, scope: !622)
!628 = !DILocation(line: 175, column: 14, scope: !622)
!629 = !DILocation(line: 176, column: 13, scope: !622)
!630 = distinct !{!630, !626, !631}
!631 = !DILocation(line: 177, column: 5, scope: !575)
!632 = !DILocation(line: 182, column: 7, scope: !575)
!633 = !DILocation(line: 188, column: 21, scope: !634)
!634 = distinct !DILexicalBlock(scope: !635, file: !1, line: 187, column: 5)
!635 = distinct !DILexicalBlock(scope: !636, file: !1, line: 184, column: 12)
!636 = distinct !DILexicalBlock(scope: !575, file: !1, line: 182, column: 7)
!637 = !DILocation(line: 188, column: 7, scope: !634)
!638 = !DILocation(line: 190, column: 8, scope: !639)
!639 = distinct !DILexicalBlock(scope: !634, file: !1, line: 189, column: 2)
!640 = !DILocation(line: 190, column: 11, scope: !639)
!641 = distinct !{!641, !637, !642, !363}
!642 = !DILocation(line: 192, column: 2, scope: !634)
!643 = !DILocation(line: 185, column: 5, scope: !635)
!644 = !DILocation(line: 191, column: 10, scope: !639)
!645 = distinct !{!645, !637, !642, !373, !363}
!646 = !DILocation(line: 197, column: 7, scope: !575)
!647 = !DILocation(line: 197, column: 10, scope: !575)
!648 = !DILocation(line: 198, column: 8, scope: !575)
!649 = !DILocation(line: 199, column: 13, scope: !650)
!650 = distinct !DILexicalBlock(scope: !575, file: !1, line: 199, column: 7)
!651 = !DILocation(line: 0, scope: !652)
!652 = distinct !DILexicalBlock(scope: !650, file: !1, line: 205, column: 5)
!653 = !DILocation(line: 199, column: 7, scope: !575)
!654 = !DILocation(line: 201, column: 14, scope: !655)
!655 = distinct !DILexicalBlock(scope: !650, file: !1, line: 200, column: 5)
!656 = !DILocation(line: 202, column: 16, scope: !655)
!657 = !DILocation(line: 202, column: 15, scope: !655)
!658 = !DILocation(line: 202, column: 13, scope: !655)
!659 = !DILocation(line: 203, column: 5, scope: !655)
!660 = !DILocation(line: 206, column: 14, scope: !652)
!661 = !DILocation(line: 208, column: 7, scope: !593)
!662 = !DILocation(line: 208, column: 13, scope: !593)
!663 = !DILocation(line: 208, column: 7, scope: !575)
!664 = !DILocation(line: 210, column: 11, scope: !592)
!665 = !DILocation(line: 211, column: 16, scope: !592)
!666 = !DILocation(line: 211, column: 11, scope: !592)
!667 = !DILocation(line: 211, column: 14, scope: !592)
!668 = !DILocation(line: 212, column: 13, scope: !592)
!669 = !DILocation(line: 213, column: 5, scope: !592)
!670 = !DILocation(line: 214, column: 9, scope: !575)
!671 = !DILocation(line: 214, column: 15, scope: !575)
!672 = !DILocation(line: 158, column: 7, scope: !575)
!673 = !DILocation(line: 215, column: 12, scope: !575)
!674 = !DILocation(line: 215, column: 7, scope: !575)
!675 = !DILocation(line: 215, column: 10, scope: !575)
!676 = !DILocation(line: 216, column: 9, scope: !575)
!677 = !DILocation(line: 217, column: 12, scope: !575)
!678 = !DILocation(line: 217, column: 7, scope: !575)
!679 = !DILocation(line: 217, column: 10, scope: !575)
!680 = !DILocation(line: 219, column: 10, scope: !575)
!681 = !DILocation(line: 220, column: 1, scope: !575)
!682 = distinct !DISubprogram(name: "_dcvt", scope: !1, file: !1, line: 445, type: !683, isLocal: false, isDefinition: true, scopeLine: 453, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !685)
!683 = !DISubroutineType(types: !684)
!684 = !{!5, !24, !5, !14, !15, !15, !6, !15}
!685 = !{!686, !687, !688, !689, !690, !691, !692}
!686 = !DILocalVariable(name: "ptr", arg: 1, scope: !682, file: !1, line: 445, type: !24)
!687 = !DILocalVariable(name: "buffer", arg: 2, scope: !682, file: !1, line: 445, type: !5)
!688 = !DILocalVariable(name: "invalue", arg: 3, scope: !682, file: !1, line: 445, type: !14)
!689 = !DILocalVariable(name: "precision", arg: 4, scope: !682, file: !1, line: 445, type: !15)
!690 = !DILocalVariable(name: "width", arg: 5, scope: !682, file: !1, line: 445, type: !15)
!691 = !DILocalVariable(name: "type", arg: 6, scope: !682, file: !1, line: 445, type: !6)
!692 = !DILocalVariable(name: "dot", arg: 7, scope: !682, file: !1, line: 445, type: !15)
!693 = !DILocation(line: 445, column: 1, scope: !682)
!694 = !DILocation(line: 454, column: 11, scope: !682)
!695 = !DILocation(line: 454, column: 3, scope: !682)
!696 = !DILocalVariable(name: "ptr", arg: 1, scope: !697, file: !1, line: 78, type: !24)
!697 = distinct !DISubprogram(name: "print_f", scope: !1, file: !1, line: 78, type: !698, isLocal: true, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !700)
!698 = !DISubroutineType(types: !699)
!699 = !{null, !24, !5, !14, !15, !6, !15, !15}
!700 = !{!696, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711}
!701 = !DILocalVariable(name: "buf", arg: 2, scope: !697, file: !1, line: 78, type: !5)
!702 = !DILocalVariable(name: "invalue", arg: 3, scope: !697, file: !1, line: 78, type: !14)
!703 = !DILocalVariable(name: "ndigit", arg: 4, scope: !697, file: !1, line: 78, type: !15)
!704 = !DILocalVariable(name: "type", arg: 5, scope: !697, file: !1, line: 78, type: !6)
!705 = !DILocalVariable(name: "dot", arg: 6, scope: !697, file: !1, line: 78, type: !15)
!706 = !DILocalVariable(name: "mode", arg: 7, scope: !697, file: !1, line: 78, type: !15)
!707 = !DILocalVariable(name: "decpt", scope: !697, file: !1, line: 87, type: !15)
!708 = !DILocalVariable(name: "sign", scope: !697, file: !1, line: 88, type: !15)
!709 = !DILocalVariable(name: "p", scope: !697, file: !1, line: 89, type: !5)
!710 = !DILocalVariable(name: "start", scope: !697, file: !1, line: 89, type: !5)
!711 = !DILocalVariable(name: "end", scope: !697, file: !1, line: 89, type: !5)
!712 = !DILocation(line: 78, column: 1, scope: !697, inlinedAt: !713)
!713 = distinct !DILocation(line: 458, column: 7, scope: !714)
!714 = distinct !DILexicalBlock(scope: !682, file: !1, line: 455, column: 5)
!715 = !DILocation(line: 87, column: 3, scope: !697, inlinedAt: !713)
!716 = !DILocation(line: 88, column: 3, scope: !697, inlinedAt: !713)
!717 = !DILocation(line: 89, column: 3, scope: !697, inlinedAt: !713)
!718 = !DILocation(line: 87, column: 7, scope: !697, inlinedAt: !713)
!719 = !DILocation(line: 88, column: 7, scope: !697, inlinedAt: !713)
!720 = !DILocation(line: 89, column: 21, scope: !697, inlinedAt: !713)
!721 = !DILocation(line: 91, column: 15, scope: !697, inlinedAt: !713)
!722 = !DILocation(line: 89, column: 9, scope: !697, inlinedAt: !713)
!723 = !DILocation(line: 89, column: 13, scope: !697, inlinedAt: !713)
!724 = !DILocation(line: 93, column: 7, scope: !725, inlinedAt: !713)
!725 = distinct !DILexicalBlock(scope: !697, file: !1, line: 93, column: 7)
!726 = !DILocation(line: 93, column: 13, scope: !725, inlinedAt: !713)
!727 = !DILocation(line: 93, column: 7, scope: !697, inlinedAt: !713)
!728 = !DILocation(line: 98, column: 10, scope: !697, inlinedAt: !713)
!729 = !DILocation(line: 98, column: 22, scope: !697, inlinedAt: !713)
!730 = !DILocation(line: 98, column: 13, scope: !697, inlinedAt: !713)
!731 = !DILocation(line: 98, column: 3, scope: !697, inlinedAt: !713)
!732 = !DILocation(line: 95, column: 7, scope: !733, inlinedAt: !713)
!733 = distinct !DILexicalBlock(scope: !725, file: !1, line: 94, column: 5)
!734 = !DILocation(line: 96, column: 7, scope: !733, inlinedAt: !713)
!735 = !DILocation(line: 0, scope: !736, inlinedAt: !713)
!736 = distinct !DILexicalBlock(scope: !697, file: !1, line: 99, column: 5)
!737 = !DILocation(line: 98, column: 16, scope: !697, inlinedAt: !713)
!738 = !DILocation(line: 104, column: 16, scope: !697, inlinedAt: !713)
!739 = !DILocation(line: 104, column: 3, scope: !697, inlinedAt: !713)
!740 = !DILocation(line: 100, column: 18, scope: !736, inlinedAt: !713)
!741 = !DILocation(line: 100, column: 11, scope: !736, inlinedAt: !713)
!742 = !DILocation(line: 100, column: 14, scope: !736, inlinedAt: !713)
!743 = !DILocation(line: 101, column: 12, scope: !736, inlinedAt: !713)
!744 = distinct !{!744, !745, !746}
!745 = !DILocation(line: 98, column: 3, scope: !697)
!746 = !DILocation(line: 102, column: 5, scope: !697)
!747 = !DILocation(line: 106, column: 11, scope: !748, inlinedAt: !713)
!748 = distinct !DILexicalBlock(scope: !697, file: !1, line: 105, column: 5)
!749 = !DILocation(line: 106, column: 14, scope: !748, inlinedAt: !713)
!750 = !DILocation(line: 107, column: 12, scope: !748, inlinedAt: !713)
!751 = distinct !{!751, !752, !753}
!752 = !DILocation(line: 104, column: 3, scope: !697)
!753 = !DILocation(line: 108, column: 5, scope: !697)
!754 = !DILocation(line: 110, column: 7, scope: !755, inlinedAt: !713)
!755 = distinct !DILexicalBlock(scope: !697, file: !1, line: 110, column: 7)
!756 = !DILocation(line: 110, column: 11, scope: !755, inlinedAt: !713)
!757 = !DILocation(line: 110, column: 14, scope: !755, inlinedAt: !713)
!758 = !DILocation(line: 110, column: 7, scope: !697, inlinedAt: !713)
!759 = !DILocation(line: 112, column: 13, scope: !760, inlinedAt: !713)
!760 = distinct !DILexicalBlock(scope: !761, file: !1, line: 112, column: 11)
!761 = distinct !DILexicalBlock(scope: !755, file: !1, line: 111, column: 5)
!762 = !DILocation(line: 112, column: 11, scope: !761, inlinedAt: !713)
!763 = !DILocation(line: 113, column: 6, scope: !760, inlinedAt: !713)
!764 = !DILocation(line: 113, column: 9, scope: !760, inlinedAt: !713)
!765 = !DILocation(line: 113, column: 2, scope: !760, inlinedAt: !713)
!766 = !DILocation(line: 114, column: 14, scope: !761, inlinedAt: !713)
!767 = !DILocation(line: 0, scope: !768, inlinedAt: !713)
!768 = distinct !DILexicalBlock(scope: !761, file: !1, line: 116, column: 2)
!769 = !DILocation(line: 115, column: 14, scope: !761, inlinedAt: !713)
!770 = !DILocation(line: 115, column: 20, scope: !761, inlinedAt: !713)
!771 = !DILocation(line: 115, column: 34, scope: !761, inlinedAt: !713)
!772 = !DILocation(line: 115, column: 24, scope: !761, inlinedAt: !713)
!773 = !DILocation(line: 115, column: 7, scope: !761, inlinedAt: !713)
!774 = !DILocation(line: 123, column: 14, scope: !761, inlinedAt: !713)
!775 = !DILocation(line: 123, column: 27, scope: !761, inlinedAt: !713)
!776 = !DILocation(line: 123, column: 17, scope: !761, inlinedAt: !713)
!777 = !DILocation(line: 123, column: 7, scope: !761, inlinedAt: !713)
!778 = !DILocation(line: 117, column: 11, scope: !768, inlinedAt: !713)
!779 = !DILocation(line: 118, column: 9, scope: !768, inlinedAt: !713)
!780 = !DILocation(line: 119, column: 10, scope: !768, inlinedAt: !713)
!781 = distinct !{!781, !782, !783}
!782 = !DILocation(line: 115, column: 7, scope: !761)
!783 = !DILocation(line: 120, column: 2, scope: !761)
!784 = !DILocation(line: 0, scope: !785, inlinedAt: !713)
!785 = distinct !DILexicalBlock(scope: !761, file: !1, line: 124, column: 2)
!786 = !DILocation(line: 129, column: 21, scope: !761, inlinedAt: !713)
!787 = !DILocation(line: 129, column: 7, scope: !761, inlinedAt: !713)
!788 = !DILocation(line: 131, column: 8, scope: !789, inlinedAt: !713)
!789 = distinct !DILexicalBlock(scope: !761, file: !1, line: 130, column: 2)
!790 = !DILocation(line: 131, column: 11, scope: !789, inlinedAt: !713)
!791 = distinct !{!791, !792, !793, !363}
!792 = !DILocation(line: 129, column: 7, scope: !761)
!793 = !DILocation(line: 133, column: 2, scope: !761)
!794 = !DILocation(line: 125, column: 15, scope: !785, inlinedAt: !713)
!795 = !DILocation(line: 125, column: 8, scope: !785, inlinedAt: !713)
!796 = !DILocation(line: 125, column: 11, scope: !785, inlinedAt: !713)
!797 = !DILocation(line: 126, column: 10, scope: !785, inlinedAt: !713)
!798 = distinct !{!798, !799, !800}
!799 = !DILocation(line: 123, column: 7, scope: !761)
!800 = !DILocation(line: 127, column: 2, scope: !761)
!801 = !DILocation(line: 132, column: 10, scope: !789, inlinedAt: !713)
!802 = distinct !{!802, !792, !793, !373, !363}
!803 = !DILocation(line: 135, column: 10, scope: !697, inlinedAt: !713)
!804 = !DILocation(line: 136, column: 1, scope: !697, inlinedAt: !713)
!805 = !DILocation(line: 459, column: 7, scope: !714)
!806 = !DILocation(line: 462, column: 21, scope: !807)
!807 = distinct !DILexicalBlock(scope: !714, file: !1, line: 462, column: 11)
!808 = !DILocation(line: 462, column: 11, scope: !714)
!809 = !DILocation(line: 464, column: 7, scope: !714)
!810 = !DILocation(line: 465, column: 7, scope: !714)
!811 = !DILocation(line: 468, column: 7, scope: !714)
!812 = !DILocation(line: 469, column: 5, scope: !714)
!813 = !DILocation(line: 470, column: 3, scope: !682)
