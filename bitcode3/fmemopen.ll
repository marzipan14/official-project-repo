; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fmemopen.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fmemopen.c"
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
define dso_local %struct.__sFILE* @_fmemopen_r(%struct._reent*, i8* noalias, i64, i8* noalias) local_unnamed_addr #0 !dbg !52 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = bitcast i32* %5 to i8*, !dbg !288
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #5, !dbg !288
  %9 = call i32 @__sflags(%struct._reent* %0, i8* %3, i32* nonnull %5) #6, !dbg !290
  %10 = icmp eq i32 %9, 0, !dbg !293
  br i1 %10, label %114, label %11, !dbg !294

; <label>:11:                                     ; preds = %4
  %12 = icmp eq i64 %2, 0, !dbg !295
  br i1 %12, label %19, label %13, !dbg !297

; <label>:13:                                     ; preds = %11
  %14 = icmp ne i8* %1, null, !dbg !298
  %15 = xor i1 %14, true, !dbg !299
  %16 = and i32 %9, 16, !dbg !300
  %17 = icmp eq i32 %16, 0, !dbg !300
  %18 = and i1 %17, %15, !dbg !299
  br i1 %18, label %19, label %21, !dbg !299

; <label>:19:                                     ; preds = %13, %11
  %20 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !301
  store i32 22, i32* %20, align 8, !dbg !303, !tbaa !304
  br label %114, !dbg !313

; <label>:21:                                     ; preds = %13
  %22 = call %struct.__sFILE* @__sfp(%struct._reent* %0) #6, !dbg !314
  %23 = icmp eq %struct.__sFILE* %22, null, !dbg !317
  br i1 %23, label %114, label %24, !dbg !318

; <label>:24:                                     ; preds = %21
  %25 = add i64 %2, 48, !dbg !319
  %26 = select i1 %14, i64 48, i64 %25, !dbg !319
  %27 = call i8* @malloc(i64 %26) #6, !dbg !319
  %28 = icmp eq i8* %27, null, !dbg !321
  br i1 %28, label %29, label %35, !dbg !322

; <label>:29:                                     ; preds = %24
  %30 = bitcast i32* %6 to i8*, !dbg !323
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %30) #5, !dbg !323
  %31 = call i32 @pthread_setcancelstate(i32 1, i32* nonnull %6) #6, !dbg !323
  call void @__sfp_lock_acquire() #6, !dbg !323
  %32 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %22, i64 0, i32 3, !dbg !324
  store i16 0, i16* %32, align 8, !dbg !325, !tbaa !326
  call void @__sfp_lock_release() #6, !dbg !332
  %33 = load i32, i32* %6, align 4, !dbg !332, !tbaa !333
  %34 = call i32 @pthread_setcancelstate(i32 %33, i32* nonnull %6) #6, !dbg !332
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %30) #5, !dbg !334
  br label %114, !dbg !335

; <label>:35:                                     ; preds = %24
  %36 = bitcast i8* %27 to i8**, !dbg !336
  store i8* %27, i8** %36, align 8, !dbg !337, !tbaa !338
  %37 = getelementptr inbounds i8, i8* %27, i64 32, !dbg !340
  %38 = bitcast i8* %37 to i64*, !dbg !340
  store i64 %2, i64* %38, align 8, !dbg !341, !tbaa !342
  %39 = lshr i32 %9, 3, !dbg !343
  %40 = trunc i32 %39 to i8, !dbg !343
  %41 = and i8 %40, 1, !dbg !343
  %42 = getelementptr inbounds i8, i8* %27, i64 41, !dbg !344
  store i8 %41, i8* %42, align 1, !dbg !345, !tbaa !346
  %43 = getelementptr inbounds i8, i8* %27, i64 42, !dbg !347
  store i8 0, i8* %43, align 2, !dbg !348, !tbaa !349
  br i1 %14, label %54, label %44, !dbg !350

; <label>:44:                                     ; preds = %35
  %45 = getelementptr inbounds i8, i8* %27, i64 48, !dbg !351
  %46 = getelementptr inbounds i8, i8* %27, i64 8, !dbg !354
  %47 = bitcast i8* %46 to i8**, !dbg !354
  store i8* %45, i8** %47, align 8, !dbg !355, !tbaa !356
  store i8 0, i8* %45, align 1, !dbg !357, !tbaa !358
  %48 = getelementptr inbounds i8, i8* %27, i64 16, !dbg !359
  %49 = bitcast i8* %48 to <2 x i64>*, !dbg !360
  store <2 x i64> zeroinitializer, <2 x i64>* %49, align 8, !dbg !360, !tbaa !361
  %50 = lshr i32 %9, 8, !dbg !362
  %51 = trunc i32 %50 to i8, !dbg !362
  %52 = and i8 %51, 1, !dbg !362
  %53 = getelementptr inbounds i8, i8* %27, i64 40, !dbg !363
  store i8 %52, i8* %53, align 8, !dbg !364, !tbaa !365
  br label %95, !dbg !366

; <label>:54:                                     ; preds = %35
  %55 = getelementptr inbounds i8, i8* %27, i64 8, !dbg !367
  %56 = bitcast i8* %55 to i8**, !dbg !367
  store i8* %1, i8** %56, align 8, !dbg !369, !tbaa !356
  %57 = load i8, i8* %3, align 1, !dbg !370, !tbaa !358
  %58 = sext i8 %57 to i32, !dbg !370
  switch i32 %58, label %94 [
    i32 97, label %59
    i32 114, label %84
    i32 119, label %90
  ], !dbg !371

; <label>:59:                                     ; preds = %54
  %60 = call i8* @memchr(i8* nonnull %1, i32 0, i64 %2) #6, !dbg !372
  %61 = icmp eq i8* %60, null, !dbg !374
  br i1 %61, label %71, label %62, !dbg !374

; <label>:62:                                     ; preds = %59
  %63 = bitcast i8* %55 to i64*, !dbg !375
  %64 = load i64, i64* %63, align 8, !dbg !375, !tbaa !356
  %65 = ptrtoint i8* %60 to i64, !dbg !376
  %66 = sub i64 %65, %64, !dbg !376
  %67 = getelementptr inbounds i8, i8* %27, i64 16, !dbg !377
  %68 = bitcast i8* %67 to i64*, !dbg !377
  store i64 %66, i64* %68, align 8, !dbg !378, !tbaa !379
  %69 = getelementptr inbounds i8, i8* %27, i64 24, !dbg !380
  %70 = bitcast i8* %69 to i64*, !dbg !380
  store i64 %66, i64* %70, align 8, !dbg !381, !tbaa !382
  br label %82, !dbg !383

; <label>:71:                                     ; preds = %59
  %72 = getelementptr inbounds i8, i8* %27, i64 16, !dbg !377
  %73 = bitcast i8* %72 to i64*, !dbg !377
  store i64 %2, i64* %73, align 8, !dbg !378, !tbaa !379
  %74 = getelementptr inbounds i8, i8* %27, i64 24, !dbg !380
  %75 = bitcast i8* %74 to i64*, !dbg !380
  store i64 %2, i64* %75, align 8, !dbg !381, !tbaa !382
  %76 = load i8, i8* %42, align 1, !dbg !385, !tbaa !346
  %77 = icmp eq i8 %76, 0, !dbg !386
  br i1 %77, label %82, label %78, !dbg !387

; <label>:78:                                     ; preds = %71
  %79 = load i8*, i8** %56, align 8, !dbg !388, !tbaa !356
  %80 = add i64 %2, -1, !dbg !389
  %81 = getelementptr inbounds i8, i8* %79, i64 %80, !dbg !390
  store i8 0, i8* %81, align 1, !dbg !391, !tbaa !358
  br label %82, !dbg !390

; <label>:82:                                     ; preds = %62, %71, %78
  %83 = getelementptr inbounds i8, i8* %27, i64 40, !dbg !392
  store i8 1, i8* %83, align 8, !dbg !393, !tbaa !365
  br label %95, !dbg !394

; <label>:84:                                     ; preds = %54
  %85 = getelementptr inbounds i8, i8* %27, i64 40, !dbg !395
  store i8 0, i8* %85, align 8, !dbg !396, !tbaa !365
  %86 = getelementptr inbounds i8, i8* %27, i64 16, !dbg !397
  %87 = bitcast i8* %86 to i64*, !dbg !397
  store i64 0, i64* %87, align 8, !dbg !398, !tbaa !379
  %88 = getelementptr inbounds i8, i8* %27, i64 24, !dbg !399
  %89 = bitcast i8* %88 to i64*, !dbg !399
  store i64 %2, i64* %89, align 8, !dbg !400, !tbaa !382
  br label %95, !dbg !401

; <label>:90:                                     ; preds = %54
  %91 = getelementptr inbounds i8, i8* %27, i64 40, !dbg !402
  store i8 0, i8* %91, align 8, !dbg !403, !tbaa !365
  %92 = getelementptr inbounds i8, i8* %27, i64 16, !dbg !404
  %93 = bitcast i8* %92 to <2 x i64>*, !dbg !405
  store <2 x i64> zeroinitializer, <2 x i64>* %93, align 8, !dbg !405, !tbaa !361
  store i8 0, i8* %1, align 1, !dbg !406, !tbaa !358
  br label %95, !dbg !407

; <label>:94:                                     ; preds = %54
  call void @abort() #7, !dbg !408
  unreachable, !dbg !408

; <label>:95:                                     ; preds = %82, %84, %90, %44
  %96 = bitcast i32* %7 to i8*, !dbg !409
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %96) #5, !dbg !409
  %97 = call i32 @pthread_setcancelstate(i32 1, i32* nonnull %7) #6, !dbg !409
  %98 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %22, i64 0, i32 4, !dbg !410
  store i16 -1, i16* %98, align 2, !dbg !411, !tbaa !412
  %99 = trunc i32 %9 to i16, !dbg !413
  %100 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %22, i64 0, i32 3, !dbg !414
  store i16 %99, i16* %100, align 8, !dbg !415, !tbaa !326
  %101 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %22, i64 0, i32 7, !dbg !416
  store i8* %27, i8** %101, align 8, !dbg !417, !tbaa !418
  %102 = and i32 %9, 20, !dbg !419
  %103 = icmp eq i32 %102, 0, !dbg !420
  %104 = select i1 %103, i64 (%struct._reent*, i8*, i8*, i32)* null, i64 (%struct._reent*, i8*, i8*, i32)* @fmemreader, !dbg !420
  %105 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %22, i64 0, i32 8, !dbg !421
  store i64 (%struct._reent*, i8*, i8*, i32)* %104, i64 (%struct._reent*, i8*, i8*, i32)** %105, align 8, !dbg !422, !tbaa !423
  %106 = and i32 %9, 24, !dbg !424
  %107 = icmp eq i32 %106, 0, !dbg !425
  %108 = select i1 %107, i64 (%struct._reent*, i8*, i8*, i32)* null, i64 (%struct._reent*, i8*, i8*, i32)* @fmemwriter, !dbg !425
  %109 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %22, i64 0, i32 9, !dbg !426
  store i64 (%struct._reent*, i8*, i8*, i32)* %108, i64 (%struct._reent*, i8*, i8*, i32)** %109, align 8, !dbg !427, !tbaa !428
  %110 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %22, i64 0, i32 10, !dbg !429
  store i64 (%struct._reent*, i8*, i64, i32)* @fmemseeker, i64 (%struct._reent*, i8*, i64, i32)** %110, align 8, !dbg !430, !tbaa !431
  %111 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %22, i64 0, i32 11, !dbg !432
  store i32 (%struct._reent*, i8*)* @fmemcloser, i32 (%struct._reent*, i8*)** %111, align 8, !dbg !433, !tbaa !434
  %112 = load i32, i32* %7, align 4, !dbg !435, !tbaa !333
  %113 = call i32 @pthread_setcancelstate(i32 %112, i32* nonnull %7) #6, !dbg !435
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %96) #5, !dbg !436
  br label %114, !dbg !437

; <label>:114:                                    ; preds = %21, %4, %95, %29, %19
  %115 = phi %struct.__sFILE* [ null, %29 ], [ %22, %95 ], [ null, %19 ], [ null, %4 ], [ null, %21 ], !dbg !438
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #5, !dbg !439
  ret %struct.__sFILE* %115, !dbg !439
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i32 @__sflags(%struct._reent*, i8*, i32*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local %struct.__sFILE* @__sfp(%struct._reent*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @pthread_setcancelstate(i32, i32*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @__sfp_lock_acquire() local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @__sfp_lock_release() local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i8* @memchr(i8*, i32, i64) local_unnamed_addr #2

; Function Attrs: noredzone noreturn
declare dso_local void @abort() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal i64 @fmemreader(%struct._reent* nocapture readnone, i8* nocapture, i8*, i32) #0 !dbg !440 {
  %5 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !449
  %6 = bitcast i8* %5 to i64*, !dbg !449
  %7 = load i64, i64* %6, align 8, !dbg !449, !tbaa !379
  %8 = getelementptr inbounds i8, i8* %1, i64 24, !dbg !451
  %9 = bitcast i8* %8 to i64*, !dbg !451
  %10 = load i64, i64* %9, align 8, !dbg !451, !tbaa !382
  %11 = icmp ult i64 %10, %7, !dbg !452
  br i1 %11, label %26, label %12, !dbg !453

; <label>:12:                                     ; preds = %4
  %13 = sext i32 %3 to i64, !dbg !454
  %14 = sub i64 %10, %7, !dbg !456
  %15 = icmp ugt i64 %14, %13, !dbg !457
  %16 = trunc i64 %14 to i32, !dbg !458
  %17 = select i1 %15, i32 %3, i32 %16, !dbg !459
  %18 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !460
  %19 = bitcast i8* %18 to i8**, !dbg !460
  %20 = load i8*, i8** %19, align 8, !dbg !460, !tbaa !356
  %21 = getelementptr inbounds i8, i8* %20, i64 %7, !dbg !461
  %22 = sext i32 %17 to i64, !dbg !462
  %23 = tail call i8* @memcpy(i8* %2, i8* %21, i64 %22) #6, !dbg !463
  %24 = load i64, i64* %6, align 8, !dbg !464, !tbaa !379
  %25 = add i64 %24, %22, !dbg !464
  store i64 %25, i64* %6, align 8, !dbg !464, !tbaa !379
  br label %26, !dbg !465

; <label>:26:                                     ; preds = %4, %12
  %27 = phi i64 [ %22, %12 ], [ 0, %4 ], !dbg !466
  ret i64 %27, !dbg !467
}

; Function Attrs: noredzone nounwind
define internal i64 @fmemwriter(%struct._reent* nocapture, i8* nocapture, i8*, i32) #0 !dbg !468 {
  %5 = getelementptr inbounds i8, i8* %1, i64 40, !dbg !478
  %6 = load i8, i8* %5, align 8, !dbg !478, !tbaa !365
  %7 = icmp eq i8 %6, 0, !dbg !480
  br i1 %7, label %14, label %8, !dbg !481

; <label>:8:                                      ; preds = %4
  %9 = getelementptr inbounds i8, i8* %1, i64 24, !dbg !483
  %10 = bitcast i8* %9 to i64*, !dbg !483
  %11 = load i64, i64* %10, align 8, !dbg !483, !tbaa !382
  %12 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !484
  %13 = bitcast i8* %12 to i64*, !dbg !484
  store i64 %11, i64* %13, align 8, !dbg !485, !tbaa !379
  br label %31, !dbg !486

; <label>:14:                                     ; preds = %4
  %15 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !487
  %16 = bitcast i8* %15 to i64*, !dbg !487
  %17 = load i64, i64* %16, align 8, !dbg !487, !tbaa !379
  %18 = getelementptr inbounds i8, i8* %1, i64 24, !dbg !489
  %19 = bitcast i8* %18 to i64*, !dbg !489
  %20 = load i64, i64* %19, align 8, !dbg !489, !tbaa !382
  %21 = icmp ugt i64 %17, %20, !dbg !490
  br i1 %21, label %22, label %31, !dbg !491

; <label>:22:                                     ; preds = %14
  %23 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !492
  %24 = bitcast i8* %23 to i8**, !dbg !492
  %25 = load i8*, i8** %24, align 8, !dbg !492, !tbaa !356
  %26 = getelementptr inbounds i8, i8* %25, i64 %20, !dbg !493
  %27 = sub i64 %17, %20, !dbg !494
  %28 = tail call i8* @memset(i8* %26, i32 0, i64 %27) #6, !dbg !495
  %29 = load i64, i64* %16, align 8, !dbg !496, !tbaa !379
  %30 = load i64, i64* %19, align 8, !dbg !498, !tbaa !382
  br label %31, !dbg !495

; <label>:31:                                     ; preds = %14, %22, %8
  %32 = phi i64* [ %19, %14 ], [ %19, %22 ], [ %10, %8 ], !dbg !498
  %33 = phi i64* [ %16, %14 ], [ %16, %22 ], [ %13, %8 ], !dbg !496
  %34 = phi i64 [ %20, %14 ], [ %30, %22 ], [ %11, %8 ], !dbg !498
  %35 = phi i64 [ %17, %14 ], [ %29, %22 ], [ %11, %8 ], !dbg !496
  %36 = sext i32 %3 to i64, !dbg !500
  %37 = add i64 %35, %36, !dbg !501
  %38 = getelementptr inbounds i8, i8* %1, i64 32, !dbg !502
  %39 = bitcast i8* %38 to i64*, !dbg !502
  %40 = load i64, i64* %39, align 8, !dbg !502, !tbaa !342
  %41 = getelementptr inbounds i8, i8* %1, i64 41, !dbg !503
  %42 = load i8, i8* %41, align 1, !dbg !503, !tbaa !346
  %43 = sext i8 %42 to i64, !dbg !504
  %44 = sub i64 %40, %43, !dbg !505
  %45 = icmp ugt i64 %37, %44, !dbg !506
  %46 = sext i8 %42 to i32, !dbg !507
  %47 = sub i64 %40, %35, !dbg !509
  %48 = trunc i64 %47 to i32, !dbg !510
  %49 = select i1 %45, i32 %48, i32 %3, !dbg !511
  %50 = select i1 %45, i32 %46, i32 0, !dbg !511
  %51 = sext i32 %49 to i64, !dbg !512
  %52 = add i64 %35, %51, !dbg !513
  %53 = icmp ugt i64 %52, %34, !dbg !514
  br i1 %53, label %54, label %64, !dbg !515

; <label>:54:                                     ; preds = %31
  store i64 %52, i64* %32, align 8, !dbg !516, !tbaa !382
  %55 = sext i32 %50 to i64, !dbg !518
  %56 = sub i64 %52, %55, !dbg !520
  %57 = icmp ult i64 %56, %40, !dbg !521
  br i1 %57, label %58, label %77, !dbg !522

; <label>:58:                                     ; preds = %54
  %59 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !523
  %60 = bitcast i8* %59 to i8**, !dbg !523
  %61 = load i8*, i8** %60, align 8, !dbg !523, !tbaa !356
  %62 = getelementptr inbounds i8, i8* %61, i64 %56, !dbg !524
  store i8 0, i8* %62, align 1, !dbg !525, !tbaa !358
  %63 = getelementptr inbounds i8, i8* %1, i64 42, !dbg !526
  store i8 0, i8* %63, align 2, !dbg !527, !tbaa !349
  br label %77, !dbg !528

; <label>:64:                                     ; preds = %31
  %65 = icmp eq i8 %42, 0, !dbg !529
  br i1 %65, label %77, label %66, !dbg !531

; <label>:66:                                     ; preds = %64
  %67 = icmp eq i32 %49, 0, !dbg !532
  br i1 %67, label %77, label %68, !dbg !535

; <label>:68:                                     ; preds = %66
  %69 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !536
  %70 = bitcast i8* %69 to i8**, !dbg !536
  %71 = load i8*, i8** %70, align 8, !dbg !536, !tbaa !356
  %72 = sext i32 %50 to i64, !dbg !538
  %73 = sub i64 %52, %72, !dbg !539
  %74 = getelementptr inbounds i8, i8* %71, i64 %73, !dbg !540
  %75 = load i8, i8* %74, align 1, !dbg !540, !tbaa !358
  %76 = getelementptr inbounds i8, i8* %1, i64 42, !dbg !541
  store i8 %75, i8* %76, align 2, !dbg !542, !tbaa !349
  store i8 0, i8* %74, align 1, !dbg !543, !tbaa !358
  br label %77, !dbg !544

; <label>:77:                                     ; preds = %66, %64, %68, %54, %58
  %78 = phi i32 [ %50, %58 ], [ %50, %54 ], [ %50, %68 ], [ %50, %64 ], [ 0, %66 ], !dbg !545
  %79 = load i64, i64* %33, align 8, !dbg !546, !tbaa !379
  %80 = add i64 %79, %51, !dbg !546
  store i64 %80, i64* %33, align 8, !dbg !546, !tbaa !379
  %81 = sub nsw i32 %49, %78, !dbg !547
  %82 = icmp eq i32 %81, 0, !dbg !547
  br i1 %82, label %90, label %83, !dbg !549

; <label>:83:                                     ; preds = %77
  %84 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !550
  %85 = bitcast i8* %84 to i8**, !dbg !550
  %86 = load i8*, i8** %85, align 8, !dbg !550, !tbaa !356
  %87 = getelementptr inbounds i8, i8* %86, i64 %79, !dbg !551
  %88 = sext i32 %81 to i64, !dbg !552
  %89 = tail call i8* @memcpy(i8* %87, i8* %2, i64 %88) #6, !dbg !553
  br label %92, !dbg !554

; <label>:90:                                     ; preds = %77
  %91 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !555
  store i32 28, i32* %91, align 8, !dbg !557, !tbaa !304
  br label %92, !dbg !558

; <label>:92:                                     ; preds = %83, %90
  %93 = phi i64 [ %51, %83 ], [ -1, %90 ], !dbg !559
  ret i64 %93, !dbg !560
}

; Function Attrs: noredzone nounwind
define internal i64 @fmemseeker(%struct._reent* nocapture, i8* nocapture, i64, i32) #0 !dbg !561 {
  switch i32 %3, label %12 [
    i32 1, label %6
    i32 2, label %5
  ], !dbg !571

; <label>:5:                                      ; preds = %4
  br label %6, !dbg !572

; <label>:6:                                      ; preds = %4, %5
  %7 = phi i64 [ 24, %5 ], [ 16, %4 ]
  %8 = getelementptr inbounds i8, i8* %1, i64 %7, !dbg !575
  %9 = bitcast i8* %8 to i64*, !dbg !575
  %10 = load i64, i64* %9, align 8, !dbg !575, !tbaa !361
  %11 = add i64 %10, %2, !dbg !575
  br label %12, !dbg !576

; <label>:12:                                     ; preds = %6, %4
  %13 = phi i64 [ %2, %4 ], [ %11, %6 ], !dbg !578
  %14 = icmp slt i64 %13, 0, !dbg !576
  br i1 %14, label %15, label %17, !dbg !579

; <label>:15:                                     ; preds = %12
  %16 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !580
  store i32 22, i32* %16, align 8, !dbg !582, !tbaa !304
  br label %57, !dbg !583

; <label>:17:                                     ; preds = %12
  %18 = getelementptr inbounds i8, i8* %1, i64 32, !dbg !584
  %19 = bitcast i8* %18 to i64*, !dbg !584
  %20 = load i64, i64* %19, align 8, !dbg !584, !tbaa !342
  %21 = icmp ugt i64 %13, %20, !dbg !586
  br i1 %21, label %22, label %24, !dbg !587

; <label>:22:                                     ; preds = %17
  %23 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !588
  store i32 28, i32* %23, align 8, !dbg !590, !tbaa !304
  br label %57, !dbg !591

; <label>:24:                                     ; preds = %17
  %25 = getelementptr inbounds i8, i8* %1, i64 41, !dbg !592
  %26 = load i8, i8* %25, align 1, !dbg !592, !tbaa !346
  %27 = icmp eq i8 %26, 0, !dbg !595
  %28 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !596
  %29 = bitcast i8* %28 to i64*, !dbg !596
  br i1 %27, label %30, label %31, !dbg !597

; <label>:30:                                     ; preds = %24
  store i64 %13, i64* %29, align 8, !dbg !598, !tbaa !379
  br label %57, !dbg !599

; <label>:31:                                     ; preds = %24
  %32 = load i64, i64* %29, align 8, !dbg !601, !tbaa !379
  %33 = getelementptr inbounds i8, i8* %1, i64 24, !dbg !602
  %34 = bitcast i8* %33 to i64*, !dbg !602
  %35 = load i64, i64* %34, align 8, !dbg !602, !tbaa !382
  %36 = icmp ult i64 %32, %35, !dbg !603
  br i1 %36, label %38, label %37, !dbg !604

; <label>:37:                                     ; preds = %31
  store i64 %13, i64* %29, align 8, !dbg !598, !tbaa !379
  br label %47, !dbg !599

; <label>:38:                                     ; preds = %31
  %39 = getelementptr inbounds i8, i8* %1, i64 42, !dbg !605
  %40 = load i8, i8* %39, align 2, !dbg !605, !tbaa !349
  %41 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !607
  %42 = bitcast i8* %41 to i8**, !dbg !607
  %43 = load i8*, i8** %42, align 8, !dbg !607, !tbaa !356
  %44 = getelementptr inbounds i8, i8* %43, i64 %32, !dbg !608
  store i8 %40, i8* %44, align 1, !dbg !609, !tbaa !358
  store i8 0, i8* %39, align 2, !dbg !610, !tbaa !349
  %45 = load i8, i8* %25, align 1, !dbg !611, !tbaa !346
  store i64 %13, i64* %29, align 8, !dbg !598, !tbaa !379
  %46 = icmp eq i8 %45, 0, !dbg !612
  br i1 %46, label %57, label %47, !dbg !599

; <label>:47:                                     ; preds = %37, %38
  %48 = load i64, i64* %34, align 8, !dbg !613, !tbaa !382
  %49 = icmp ult i64 %13, %48, !dbg !614
  br i1 %49, label %50, label %57, !dbg !615

; <label>:50:                                     ; preds = %47
  %51 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !616
  %52 = bitcast i8* %51 to i8**, !dbg !616
  %53 = load i8*, i8** %52, align 8, !dbg !616, !tbaa !356
  %54 = getelementptr inbounds i8, i8* %53, i64 %13, !dbg !618
  %55 = load i8, i8* %54, align 1, !dbg !618, !tbaa !358
  %56 = getelementptr inbounds i8, i8* %1, i64 42, !dbg !619
  store i8 %55, i8* %56, align 2, !dbg !620, !tbaa !349
  store i8 0, i8* %54, align 1, !dbg !621, !tbaa !358
  br label %57, !dbg !622

; <label>:57:                                     ; preds = %30, %38, %22, %50, %47, %15
  %58 = phi i64 [ -1, %15 ], [ -1, %22 ], [ %13, %50 ], [ %13, %47 ], [ %13, %38 ], [ %13, %30 ], !dbg !575
  ret i64 %58, !dbg !623
}

; Function Attrs: noredzone nounwind
define internal i32 @fmemcloser(%struct._reent* nocapture readnone, i8* nocapture readonly) #0 !dbg !624 {
  %3 = bitcast i8* %1 to i8**, !dbg !631
  %4 = load i8*, i8** %3, align 8, !dbg !631, !tbaa !338
  tail call void @free(i8* %4) #6, !dbg !631
  ret i32 0, !dbg !632
}

; Function Attrs: noredzone nounwind
define dso_local %struct.__sFILE* @fmemopen(i8* noalias, i64, i8* noalias) local_unnamed_addr #0 !dbg !633 {
  %4 = tail call %struct._reent* @__getreent() #6, !dbg !641
  %5 = tail call %struct.__sFILE* @_fmemopen_r(%struct._reent* %4, i8* %0, i64 %1, i8* %2) #8, !dbg !642
  ret %struct.__sFILE* %5, !dbg !643
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin noredzone nounwind }
attributes #7 = { nobuiltin noredzone noreturn nounwind }
attributes #8 = { nobuiltin noredzone }

!llvm.module.flags = !{!48, !49, !50}
!llvm.ident = !{!51}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !21)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fmemopen.c", directory: "/root/.unikraft/apps/redis/build")
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
!21 = !{!22, !23, !29, !42, !47}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmemcookie", file: !1, line: 81, baseType: !25)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fmemcookie", file: !1, line: 72, size: 384, elements: !26)
!26 = !{!27, !28, !31, !37, !38, !39, !40, !41}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "storage", scope: !25, file: !1, line: 73, baseType: !22, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !25, file: !1, line: 74, baseType: !29, size: 64, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !25, file: !1, line: 75, baseType: !32, size: 64, offset: 128)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !33, line: 40, baseType: !34)
!33 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !35, line: 129, baseType: !36)
!35 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!36 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "eof", scope: !25, file: !1, line: 76, baseType: !32, size: 64, offset: 192)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !25, file: !1, line: 77, baseType: !32, size: 64, offset: 256)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "append", scope: !25, file: !1, line: 78, baseType: !30, size: 8, offset: 320)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "writeonly", scope: !25, file: !1, line: 79, baseType: !30, size: 8, offset: 328)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "saved", scope: !25, file: !1, line: 80, baseType: !30, size: 8, offset: 336)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !43, line: 173, baseType: !44)
!43 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !35, line: 100, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !35, line: 44, baseType: !46)
!46 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !35, line: 114, baseType: !46)
!48 = !{i32 2, !"Dwarf Version", i32 4}
!49 = !{i32 2, !"Debug Info Version", i32 3}
!50 = !{i32 1, !"wchar_size", i32 4}
!51 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!52 = distinct !DISubprogram(name: "_fmemopen_r", scope: !1, file: !1, line: 271, type: !53, isLocal: false, isDefinition: true, scopeLine: 276, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !272)
!53 = !DISubroutineType(types: !54)
!54 = !{!55, !82, !270, !32, !271}
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !57, line: 66, baseType: !58)
!57 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !59, line: 287, baseType: !60)
!59 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !59, line: 181, size: 1408, elements: !61)
!61 = !{!62, !65, !66, !67, !69, !70, !75, !76, !77, !239, !245, !249, !253, !254, !255, !256, !258, !260, !261, !262, !263, !264, !268, !269}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !60, file: !59, line: 182, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !60, file: !59, line: 183, baseType: !5, size: 32, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !60, file: !59, line: 184, baseType: !5, size: 32, offset: 96)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !60, file: !59, line: 185, baseType: !68, size: 16, offset: 128)
!68 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !60, file: !59, line: 186, baseType: !68, size: 16, offset: 144)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !60, file: !59, line: 187, baseType: !71, size: 128, offset: 192)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !59, line: 117, size: 128, elements: !72)
!72 = !{!73, !74}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !71, file: !59, line: 118, baseType: !63, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !71, file: !59, line: 119, baseType: !5, size: 32, offset: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !60, file: !59, line: 188, baseType: !5, size: 32, offset: 320)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !60, file: !59, line: 195, baseType: !22, size: 64, offset: 384)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !60, file: !59, line: 197, baseType: !78, size: 64, offset: 448)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DISubroutineType(types: !80)
!80 = !{!81, !82, !22, !29, !5}
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !35, line: 145, baseType: !46)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !59, line: 569, size: 14912, elements: !84)
!84 = !{!85, !86, !88, !89, !90, !91, !95, !96, !99, !100, !104, !119, !120, !121, !123, !124, !125, !203, !224, !225, !230, !237}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !83, file: !59, line: 571, baseType: !5, size: 32)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !83, file: !59, line: 576, baseType: !87, size: 64, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !83, file: !59, line: 576, baseType: !87, size: 64, offset: 128)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !83, file: !59, line: 576, baseType: !87, size: 64, offset: 192)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !83, file: !59, line: 578, baseType: !5, size: 32, offset: 256)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !83, file: !59, line: 579, baseType: !92, size: 200, offset: 288)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 200, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: 25)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !83, file: !59, line: 582, baseType: !5, size: 32, offset: 512)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !83, file: !59, line: 583, baseType: !97, size: 64, offset: 576)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !59, line: 40, flags: DIFlagFwdDecl)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !83, file: !59, line: 585, baseType: !5, size: 32, offset: 640)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !83, file: !59, line: 587, baseType: !101, size: 64, offset: 704)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DISubroutineType(types: !103)
!103 = !{null, !82}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !83, file: !59, line: 590, baseType: !105, size: 64, offset: 768)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !59, line: 47, size: 256, elements: !107)
!107 = !{!108, !109, !110, !111, !112, !113}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !106, file: !59, line: 49, baseType: !105, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !106, file: !59, line: 50, baseType: !5, size: 32, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !106, file: !59, line: 50, baseType: !5, size: 32, offset: 96)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !106, file: !59, line: 50, baseType: !5, size: 32, offset: 128)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !106, file: !59, line: 50, baseType: !5, size: 32, offset: 160)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !106, file: !59, line: 51, baseType: !114, size: 32, offset: 192)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 32, elements: !117)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !59, line: 25, baseType: !116)
!116 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!117 = !{!118}
!118 = !DISubrange(count: 1)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !83, file: !59, line: 591, baseType: !5, size: 32, offset: 832)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !83, file: !59, line: 592, baseType: !105, size: 64, offset: 896)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !83, file: !59, line: 593, baseType: !122, size: 64, offset: 960)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !83, file: !59, line: 596, baseType: !5, size: 32, offset: 1024)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !83, file: !59, line: 597, baseType: !29, size: 64, offset: 1088)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !83, file: !59, line: 632, baseType: !126, size: 2880, offset: 1152)
!126 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !83, file: !59, line: 599, size: 2880, elements: !127)
!127 = !{!128, !194}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !126, file: !59, line: 622, baseType: !129, size: 1728)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !126, file: !59, line: 601, size: 1728, elements: !130)
!130 = !{!131, !132, !133, !137, !149, !150, !152, !162, !177, !178, !179, !183, !187, !188, !189, !190, !191, !192, !193}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !129, file: !59, line: 603, baseType: !116, size: 32)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !129, file: !59, line: 604, baseType: !29, size: 64, offset: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !129, file: !59, line: 605, baseType: !134, size: 208, offset: 128)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 208, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 26)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !129, file: !59, line: 606, baseType: !138, size: 288, offset: 352)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !59, line: 55, size: 288, elements: !139)
!139 = !{!140, !141, !142, !143, !144, !145, !146, !147, !148}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !138, file: !59, line: 57, baseType: !5, size: 32)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !138, file: !59, line: 58, baseType: !5, size: 32, offset: 32)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !138, file: !59, line: 59, baseType: !5, size: 32, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !138, file: !59, line: 60, baseType: !5, size: 32, offset: 96)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !138, file: !59, line: 61, baseType: !5, size: 32, offset: 128)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !138, file: !59, line: 62, baseType: !5, size: 32, offset: 160)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !138, file: !59, line: 63, baseType: !5, size: 32, offset: 192)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !138, file: !59, line: 64, baseType: !5, size: 32, offset: 224)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !138, file: !59, line: 65, baseType: !5, size: 32, offset: 256)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !129, file: !59, line: 607, baseType: !5, size: 32, offset: 640)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !129, file: !59, line: 608, baseType: !151, size: 64, offset: 704)
!151 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !129, file: !59, line: 609, baseType: !153, size: 112, offset: 768)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !59, line: 319, size: 112, elements: !154)
!154 = !{!155, !160, !161}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !153, file: !59, line: 320, baseType: !156, size: 48)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 48, elements: !158)
!157 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!158 = !{!159}
!159 = !DISubrange(count: 3)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !153, file: !59, line: 321, baseType: !156, size: 48, offset: 48)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !153, file: !59, line: 322, baseType: !157, size: 16, offset: 96)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !129, file: !59, line: 610, baseType: !163, size: 64, offset: 896)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !35, line: 171, baseType: !164)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !35, line: 163, size: 64, elements: !165)
!165 = !{!166, !167}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !164, file: !35, line: 165, baseType: !5, size: 32)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !164, file: !35, line: 170, baseType: !168, size: 32, offset: 32)
!168 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !164, file: !35, line: 166, size: 32, elements: !169)
!169 = !{!170, !173}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !168, file: !35, line: 168, baseType: !171, size: 32)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !172, line: 124, baseType: !116)
!172 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!173 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !168, file: !35, line: 169, baseType: !174, size: 32)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 32, elements: !175)
!175 = !{!176}
!176 = !DISubrange(count: 4)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !129, file: !59, line: 611, baseType: !163, size: 64, offset: 960)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !129, file: !59, line: 612, baseType: !163, size: 64, offset: 1024)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !129, file: !59, line: 613, baseType: !180, size: 64, offset: 1088)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 64, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 8)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !129, file: !59, line: 614, baseType: !184, size: 192, offset: 1152)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 192, elements: !185)
!185 = !{!186}
!186 = !DISubrange(count: 24)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !129, file: !59, line: 615, baseType: !5, size: 32, offset: 1344)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !129, file: !59, line: 616, baseType: !163, size: 64, offset: 1376)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !129, file: !59, line: 617, baseType: !163, size: 64, offset: 1440)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !129, file: !59, line: 618, baseType: !163, size: 64, offset: 1504)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !129, file: !59, line: 619, baseType: !163, size: 64, offset: 1568)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !129, file: !59, line: 620, baseType: !163, size: 64, offset: 1632)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !129, file: !59, line: 621, baseType: !5, size: 32, offset: 1696)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !126, file: !59, line: 631, baseType: !195, size: 2880)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !126, file: !59, line: 626, size: 2880, elements: !196)
!196 = !{!197, !201}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !195, file: !59, line: 629, baseType: !198, size: 1920)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 1920, elements: !199)
!199 = !{!200}
!200 = !DISubrange(count: 30)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !195, file: !59, line: 630, baseType: !202, size: 960, offset: 1920)
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 960, elements: !199)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !83, file: !59, line: 636, baseType: !204, size: 64, offset: 4032)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !59, line: 93, size: 6336, elements: !206)
!206 = !{!207, !208, !209, !216}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !205, file: !59, line: 94, baseType: !204, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !205, file: !59, line: 95, baseType: !5, size: 32, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !205, file: !59, line: 97, baseType: !210, size: 2048, offset: 128)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 2048, elements: !214)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DISubroutineType(types: !213)
!213 = !{null}
!214 = !{!215}
!215 = !DISubrange(count: 32)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !205, file: !59, line: 98, baseType: !217, size: 4160, offset: 2176)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !59, line: 74, size: 4160, elements: !218)
!218 = !{!219, !221, !222, !223}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !217, file: !59, line: 75, baseType: !220, size: 2048)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 2048, elements: !214)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !217, file: !59, line: 76, baseType: !220, size: 2048, offset: 2048)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !217, file: !59, line: 78, baseType: !115, size: 32, offset: 4096)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !217, file: !59, line: 81, baseType: !115, size: 32, offset: 4128)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !83, file: !59, line: 637, baseType: !205, size: 6336, offset: 4096)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !83, file: !59, line: 641, baseType: !226, size: 64, offset: 10432)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DISubroutineType(types: !229)
!229 = !{null, !5}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !83, file: !59, line: 646, baseType: !231, size: 192, offset: 10496)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !59, line: 291, size: 192, elements: !232)
!232 = !{!233, !235, !236}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !231, file: !59, line: 293, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !231, file: !59, line: 294, baseType: !5, size: 32, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !231, file: !59, line: 295, baseType: !87, size: 64, offset: 128)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !83, file: !59, line: 648, baseType: !238, size: 4224, offset: 10688)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 4224, elements: !158)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !60, file: !59, line: 199, baseType: !240, size: 64, offset: 512)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DISubroutineType(types: !242)
!242 = !{!81, !82, !22, !243, !5}
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !60, file: !59, line: 202, baseType: !246, size: 64, offset: 576)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{!47, !82, !22, !47, !5}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !60, file: !59, line: 203, baseType: !250, size: 64, offset: 640)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DISubroutineType(types: !252)
!252 = !{!5, !82, !22}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !60, file: !59, line: 206, baseType: !71, size: 128, offset: 704)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !60, file: !59, line: 207, baseType: !63, size: 64, offset: 832)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !60, file: !59, line: 208, baseType: !5, size: 32, offset: 896)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !60, file: !59, line: 211, baseType: !257, size: 24, offset: 928)
!257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 24, elements: !158)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !60, file: !59, line: 212, baseType: !259, size: 8, offset: 952)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 8, elements: !117)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !60, file: !59, line: 215, baseType: !71, size: 128, offset: 960)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !60, file: !59, line: 218, baseType: !5, size: 32, offset: 1088)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !60, file: !59, line: 219, baseType: !45, size: 64, offset: 1152)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !60, file: !59, line: 222, baseType: !82, size: 64, offset: 1216)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !60, file: !59, line: 226, baseType: !265, size: 32, offset: 1280)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !35, line: 175, baseType: !266)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !267, line: 12, baseType: !5)
!267 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !60, file: !59, line: 228, baseType: !163, size: 64, offset: 1312)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !60, file: !59, line: 229, baseType: !5, size: 32, offset: 1376)
!270 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !22)
!271 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !243)
!272 = !{!273, !274, !275, !276, !277, !278, !279, !280, !281, !285}
!273 = !DILocalVariable(name: "ptr", arg: 1, scope: !52, file: !1, line: 271, type: !82)
!274 = !DILocalVariable(name: "buf", arg: 2, scope: !52, file: !1, line: 271, type: !270)
!275 = !DILocalVariable(name: "size", arg: 3, scope: !52, file: !1, line: 271, type: !32)
!276 = !DILocalVariable(name: "mode", arg: 4, scope: !52, file: !1, line: 271, type: !271)
!277 = !DILocalVariable(name: "fp", scope: !52, file: !1, line: 277, type: !55)
!278 = !DILocalVariable(name: "c", scope: !52, file: !1, line: 278, type: !23)
!279 = !DILocalVariable(name: "flags", scope: !52, file: !1, line: 279, type: !5)
!280 = !DILocalVariable(name: "dummy", scope: !52, file: !1, line: 280, type: !5)
!281 = !DILocalVariable(name: "__oldsfpcancel", scope: !282, file: !1, line: 294, type: !5)
!282 = distinct !DILexicalBlock(scope: !283, file: !1, line: 294, column: 7)
!283 = distinct !DILexicalBlock(scope: !284, file: !1, line: 293, column: 5)
!284 = distinct !DILexicalBlock(scope: !52, file: !1, line: 291, column: 7)
!285 = !DILocalVariable(name: "__oldfpcancel", scope: !286, file: !1, line: 346, type: !5)
!286 = distinct !DILexicalBlock(scope: !52, file: !1, line: 346, column: 3)
!287 = !DILocation(line: 271, column: 1, scope: !52)
!288 = !DILocation(line: 280, column: 3, scope: !52)
!289 = !DILocation(line: 280, column: 7, scope: !52)
!290 = !DILocation(line: 282, column: 16, scope: !291)
!291 = distinct !DILexicalBlock(scope: !52, file: !1, line: 282, column: 7)
!292 = !DILocation(line: 279, column: 7, scope: !52)
!293 = !DILocation(line: 282, column: 46, scope: !291)
!294 = !DILocation(line: 282, column: 7, scope: !52)
!295 = !DILocation(line: 284, column: 8, scope: !296)
!296 = distinct !DILexicalBlock(scope: !52, file: !1, line: 284, column: 7)
!297 = !DILocation(line: 284, column: 13, scope: !296)
!298 = !DILocation(line: 284, column: 18, scope: !296)
!299 = !DILocation(line: 284, column: 22, scope: !296)
!300 = !DILocation(line: 284, column: 31, scope: !296)
!301 = !DILocation(line: 286, column: 12, scope: !302)
!302 = distinct !DILexicalBlock(scope: !296, file: !1, line: 285, column: 5)
!303 = !DILocation(line: 286, column: 19, scope: !302)
!304 = !{!305, !306, i64 0}
!305 = !{!"_reent", !306, i64 0, !309, i64 8, !309, i64 16, !309, i64 24, !306, i64 32, !307, i64 36, !306, i64 64, !309, i64 72, !306, i64 80, !309, i64 88, !309, i64 96, !306, i64 104, !309, i64 112, !309, i64 120, !306, i64 128, !309, i64 136, !307, i64 144, !309, i64 504, !310, i64 512, !309, i64 1304, !312, i64 1312, !307, i64 1336}
!306 = !{!"int", !307, i64 0}
!307 = !{!"omnipotent char", !308, i64 0}
!308 = !{!"Simple C/C++ TBAA"}
!309 = !{!"any pointer", !307, i64 0}
!310 = !{!"_atexit", !309, i64 0, !306, i64 8, !307, i64 16, !311, i64 272}
!311 = !{!"_on_exit_args", !307, i64 0, !307, i64 256, !306, i64 512, !306, i64 516}
!312 = !{!"_glue", !309, i64 0, !306, i64 8, !309, i64 16}
!313 = !DILocation(line: 287, column: 7, scope: !302)
!314 = !DILocation(line: 289, column: 13, scope: !315)
!315 = distinct !DILexicalBlock(scope: !52, file: !1, line: 289, column: 7)
!316 = !DILocation(line: 277, column: 9, scope: !52)
!317 = !DILocation(line: 289, column: 26, scope: !315)
!318 = !DILocation(line: 289, column: 7, scope: !52)
!319 = !DILocation(line: 291, column: 27, scope: !284)
!320 = !DILocation(line: 278, column: 15, scope: !52)
!321 = !DILocation(line: 292, column: 7, scope: !284)
!322 = !DILocation(line: 291, column: 7, scope: !52)
!323 = !DILocation(line: 294, column: 7, scope: !282)
!324 = !DILocation(line: 295, column: 11, scope: !282)
!325 = !DILocation(line: 295, column: 18, scope: !282)
!326 = !{!327, !328, i64 16}
!327 = !{!"__sFILE", !309, i64 0, !306, i64 8, !306, i64 12, !328, i64 16, !328, i64 18, !329, i64 24, !306, i64 40, !309, i64 48, !309, i64 56, !309, i64 64, !309, i64 72, !309, i64 80, !329, i64 88, !309, i64 104, !306, i64 112, !307, i64 116, !307, i64 119, !329, i64 120, !306, i64 136, !330, i64 144, !309, i64 152, !306, i64 160, !331, i64 164, !306, i64 172}
!328 = !{!"short", !307, i64 0}
!329 = !{!"__sbuf", !309, i64 0, !306, i64 8}
!330 = !{!"long", !307, i64 0}
!331 = !{!"", !306, i64 0, !307, i64 4}
!332 = !DILocation(line: 299, column: 7, scope: !282)
!333 = !{!306, !306, i64 0}
!334 = !DILocation(line: 299, column: 7, scope: !283)
!335 = !DILocation(line: 300, column: 7, scope: !283)
!336 = !DILocation(line: 303, column: 6, scope: !52)
!337 = !DILocation(line: 303, column: 14, scope: !52)
!338 = !{!339, !309, i64 0}
!339 = !{!"fmemcookie", !309, i64 0, !309, i64 8, !330, i64 16, !330, i64 24, !330, i64 32, !307, i64 40, !307, i64 41, !307, i64 42}
!340 = !DILocation(line: 304, column: 6, scope: !52)
!341 = !DILocation(line: 304, column: 10, scope: !52)
!342 = !{!339, !330, i64 32}
!343 = !DILocation(line: 307, column: 18, scope: !52)
!344 = !DILocation(line: 307, column: 6, scope: !52)
!345 = !DILocation(line: 307, column: 16, scope: !52)
!346 = !{!339, !307, i64 41}
!347 = !DILocation(line: 308, column: 6, scope: !52)
!348 = !DILocation(line: 308, column: 12, scope: !52)
!349 = !{!339, !307, i64 42}
!350 = !DILocation(line: 309, column: 7, scope: !52)
!351 = !DILocation(line: 312, column: 28, scope: !352)
!352 = distinct !DILexicalBlock(scope: !353, file: !1, line: 310, column: 5)
!353 = distinct !DILexicalBlock(scope: !52, file: !1, line: 309, column: 7)
!354 = !DILocation(line: 312, column: 10, scope: !352)
!355 = !DILocation(line: 312, column: 14, scope: !352)
!356 = !{!339, !309, i64 8}
!357 = !DILocation(line: 313, column: 17, scope: !352)
!358 = !{!307, !307, i64 0}
!359 = !DILocation(line: 314, column: 10, scope: !352)
!360 = !DILocation(line: 314, column: 14, scope: !352)
!361 = !{!330, !330, i64 0}
!362 = !DILocation(line: 315, column: 19, scope: !352)
!363 = !DILocation(line: 315, column: 10, scope: !352)
!364 = !DILocation(line: 315, column: 17, scope: !352)
!365 = !{!339, !307, i64 40}
!366 = !DILocation(line: 316, column: 5, scope: !352)
!367 = !DILocation(line: 319, column: 10, scope: !368)
!368 = distinct !DILexicalBlock(scope: !353, file: !1, line: 318, column: 5)
!369 = !DILocation(line: 319, column: 14, scope: !368)
!370 = !DILocation(line: 320, column: 15, scope: !368)
!371 = !DILocation(line: 320, column: 7, scope: !368)
!372 = !DILocation(line: 324, column: 10, scope: !373)
!373 = distinct !DILexicalBlock(scope: !368, file: !1, line: 321, column: 2)
!374 = !DILocation(line: 325, column: 22, scope: !373)
!375 = !DILocation(line: 325, column: 46, scope: !373)
!376 = !DILocation(line: 325, column: 41, scope: !373)
!377 = !DILocation(line: 325, column: 16, scope: !373)
!378 = !DILocation(line: 325, column: 20, scope: !373)
!379 = !{!339, !330, i64 16}
!380 = !DILocation(line: 325, column: 7, scope: !373)
!381 = !DILocation(line: 325, column: 11, scope: !373)
!382 = !{!339, !330, i64 24}
!383 = !DILocation(line: 326, column: 13, scope: !384)
!384 = distinct !DILexicalBlock(scope: !373, file: !1, line: 326, column: 8)
!385 = !DILocation(line: 326, column: 19, scope: !384)
!386 = !DILocation(line: 326, column: 16, scope: !384)
!387 = !DILocation(line: 326, column: 8, scope: !373)
!388 = !DILocation(line: 328, column: 9, scope: !384)
!389 = !DILocation(line: 328, column: 18, scope: !384)
!390 = !DILocation(line: 328, column: 6, scope: !384)
!391 = !DILocation(line: 328, column: 23, scope: !384)
!392 = !DILocation(line: 329, column: 7, scope: !373)
!393 = !DILocation(line: 329, column: 14, scope: !373)
!394 = !DILocation(line: 330, column: 4, scope: !373)
!395 = !DILocation(line: 333, column: 16, scope: !373)
!396 = !DILocation(line: 333, column: 23, scope: !373)
!397 = !DILocation(line: 333, column: 7, scope: !373)
!398 = !DILocation(line: 333, column: 11, scope: !373)
!399 = !DILocation(line: 334, column: 7, scope: !373)
!400 = !DILocation(line: 334, column: 11, scope: !373)
!401 = !DILocation(line: 335, column: 4, scope: !373)
!402 = !DILocation(line: 338, column: 16, scope: !373)
!403 = !DILocation(line: 338, column: 23, scope: !373)
!404 = !DILocation(line: 338, column: 7, scope: !373)
!405 = !DILocation(line: 338, column: 11, scope: !373)
!406 = !DILocation(line: 339, column: 12, scope: !373)
!407 = !DILocation(line: 340, column: 4, scope: !373)
!408 = !DILocation(line: 342, column: 4, scope: !373)
!409 = !DILocation(line: 346, column: 3, scope: !286)
!410 = !DILocation(line: 347, column: 7, scope: !286)
!411 = !DILocation(line: 347, column: 13, scope: !286)
!412 = !{!327, !328, i64 18}
!413 = !DILocation(line: 348, column: 16, scope: !286)
!414 = !DILocation(line: 348, column: 7, scope: !286)
!415 = !DILocation(line: 348, column: 14, scope: !286)
!416 = !DILocation(line: 349, column: 7, scope: !286)
!417 = !DILocation(line: 349, column: 15, scope: !286)
!418 = !{!327, !309, i64 48}
!419 = !DILocation(line: 350, column: 21, scope: !286)
!420 = !DILocation(line: 350, column: 15, scope: !286)
!421 = !DILocation(line: 350, column: 7, scope: !286)
!422 = !DILocation(line: 350, column: 13, scope: !286)
!423 = !{!327, !309, i64 56}
!424 = !DILocation(line: 351, column: 22, scope: !286)
!425 = !DILocation(line: 351, column: 16, scope: !286)
!426 = !DILocation(line: 351, column: 7, scope: !286)
!427 = !DILocation(line: 351, column: 14, scope: !286)
!428 = !{!327, !309, i64 64}
!429 = !DILocation(line: 352, column: 7, scope: !286)
!430 = !DILocation(line: 352, column: 13, scope: !286)
!431 = !{!327, !309, i64 72}
!432 = !DILocation(line: 357, column: 7, scope: !286)
!433 = !DILocation(line: 357, column: 14, scope: !286)
!434 = !{!327, !309, i64 80}
!435 = !DILocation(line: 358, column: 3, scope: !286)
!436 = !DILocation(line: 358, column: 3, scope: !52)
!437 = !DILocation(line: 359, column: 3, scope: !52)
!438 = !DILocation(line: 0, scope: !302)
!439 = !DILocation(line: 360, column: 1, scope: !52)
!440 = distinct !DISubprogram(name: "fmemreader", scope: !1, file: !1, line: 86, type: !79, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !441)
!441 = !{!442, !443, !444, !445, !446}
!442 = !DILocalVariable(name: "ptr", arg: 1, scope: !440, file: !1, line: 86, type: !82)
!443 = !DILocalVariable(name: "cookie", arg: 2, scope: !440, file: !1, line: 86, type: !22)
!444 = !DILocalVariable(name: "buf", arg: 3, scope: !440, file: !1, line: 86, type: !29)
!445 = !DILocalVariable(name: "n", arg: 4, scope: !440, file: !1, line: 86, type: !5)
!446 = !DILocalVariable(name: "c", scope: !440, file: !1, line: 92, type: !23)
!447 = !DILocation(line: 86, column: 1, scope: !440)
!448 = !DILocation(line: 92, column: 15, scope: !440)
!449 = !DILocation(line: 94, column: 10, scope: !450)
!450 = distinct !DILexicalBlock(scope: !440, file: !1, line: 94, column: 7)
!451 = !DILocation(line: 94, column: 19, scope: !450)
!452 = !DILocation(line: 94, column: 14, scope: !450)
!453 = !DILocation(line: 94, column: 7, scope: !440)
!454 = !DILocation(line: 96, column: 7, scope: !455)
!455 = distinct !DILexicalBlock(scope: !440, file: !1, line: 96, column: 7)
!456 = !DILocation(line: 96, column: 19, scope: !455)
!457 = !DILocation(line: 96, column: 9, scope: !455)
!458 = !DILocation(line: 97, column: 9, scope: !455)
!459 = !DILocation(line: 96, column: 7, scope: !440)
!460 = !DILocation(line: 98, column: 19, scope: !440)
!461 = !DILocation(line: 98, column: 23, scope: !440)
!462 = !DILocation(line: 98, column: 33, scope: !440)
!463 = !DILocation(line: 98, column: 3, scope: !440)
!464 = !DILocation(line: 99, column: 10, scope: !440)
!465 = !DILocation(line: 100, column: 3, scope: !440)
!466 = !DILocation(line: 0, scope: !440)
!467 = !DILocation(line: 101, column: 1, scope: !440)
!468 = distinct !DISubprogram(name: "fmemwriter", scope: !1, file: !1, line: 106, type: !241, isLocal: true, isDefinition: true, scopeLine: 111, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !469)
!469 = !{!470, !471, !472, !473, !474, !475}
!470 = !DILocalVariable(name: "ptr", arg: 1, scope: !468, file: !1, line: 106, type: !82)
!471 = !DILocalVariable(name: "cookie", arg: 2, scope: !468, file: !1, line: 106, type: !22)
!472 = !DILocalVariable(name: "buf", arg: 3, scope: !468, file: !1, line: 106, type: !243)
!473 = !DILocalVariable(name: "n", arg: 4, scope: !468, file: !1, line: 106, type: !5)
!474 = !DILocalVariable(name: "c", scope: !468, file: !1, line: 112, type: !23)
!475 = !DILocalVariable(name: "adjust", scope: !468, file: !1, line: 113, type: !5)
!476 = !DILocation(line: 106, column: 1, scope: !468)
!477 = !DILocation(line: 113, column: 7, scope: !468)
!478 = !DILocation(line: 117, column: 10, scope: !479)
!479 = distinct !DILexicalBlock(scope: !468, file: !1, line: 117, column: 7)
!480 = !DILocation(line: 117, column: 7, scope: !479)
!481 = !DILocation(line: 117, column: 7, scope: !468)
!482 = !DILocation(line: 112, column: 15, scope: !468)
!483 = !DILocation(line: 118, column: 17, scope: !479)
!484 = !DILocation(line: 118, column: 8, scope: !479)
!485 = !DILocation(line: 118, column: 12, scope: !479)
!486 = !DILocation(line: 118, column: 5, scope: !479)
!487 = !DILocation(line: 119, column: 15, scope: !488)
!488 = distinct !DILexicalBlock(scope: !479, file: !1, line: 119, column: 12)
!489 = !DILocation(line: 119, column: 24, scope: !488)
!490 = !DILocation(line: 119, column: 19, scope: !488)
!491 = !DILocation(line: 119, column: 12, scope: !479)
!492 = !DILocation(line: 120, column: 16, scope: !488)
!493 = !DILocation(line: 120, column: 20, scope: !488)
!494 = !DILocation(line: 120, column: 43, scope: !488)
!495 = !DILocation(line: 120, column: 5, scope: !488)
!496 = !DILocation(line: 122, column: 10, scope: !497)
!497 = distinct !DILexicalBlock(scope: !468, file: !1, line: 122, column: 7)
!498 = !DILocation(line: 132, column: 23, scope: !499)
!499 = distinct !DILexicalBlock(scope: !468, file: !1, line: 132, column: 7)
!500 = !DILocation(line: 122, column: 16, scope: !497)
!501 = !DILocation(line: 122, column: 14, scope: !497)
!502 = !DILocation(line: 122, column: 23, scope: !497)
!503 = !DILocation(line: 122, column: 32, scope: !497)
!504 = !DILocation(line: 122, column: 29, scope: !497)
!505 = !DILocation(line: 122, column: 27, scope: !497)
!506 = !DILocation(line: 122, column: 18, scope: !497)
!507 = !DILocation(line: 124, column: 16, scope: !508)
!508 = distinct !DILexicalBlock(scope: !497, file: !1, line: 123, column: 5)
!509 = !DILocation(line: 125, column: 18, scope: !508)
!510 = !DILocation(line: 125, column: 11, scope: !508)
!511 = !DILocation(line: 122, column: 7, scope: !468)
!512 = !DILocation(line: 132, column: 16, scope: !499)
!513 = !DILocation(line: 132, column: 14, scope: !499)
!514 = !DILocation(line: 132, column: 18, scope: !499)
!515 = !DILocation(line: 132, column: 7, scope: !468)
!516 = !DILocation(line: 134, column: 14, scope: !517)
!517 = distinct !DILexicalBlock(scope: !499, file: !1, line: 133, column: 5)
!518 = !DILocation(line: 135, column: 20, scope: !519)
!519 = distinct !DILexicalBlock(scope: !517, file: !1, line: 135, column: 11)
!520 = !DILocation(line: 135, column: 18, scope: !519)
!521 = !DILocation(line: 135, column: 27, scope: !519)
!522 = !DILocation(line: 135, column: 11, scope: !517)
!523 = !DILocation(line: 136, column: 16, scope: !519)
!524 = !DILocation(line: 136, column: 13, scope: !519)
!525 = !DILocation(line: 136, column: 37, scope: !519)
!526 = !DILocation(line: 136, column: 5, scope: !519)
!527 = !DILocation(line: 136, column: 11, scope: !519)
!528 = !DILocation(line: 136, column: 2, scope: !519)
!529 = !DILocation(line: 138, column: 12, scope: !530)
!530 = distinct !DILexicalBlock(scope: !499, file: !1, line: 138, column: 12)
!531 = !DILocation(line: 138, column: 12, scope: !499)
!532 = !DILocation(line: 140, column: 11, scope: !533)
!533 = distinct !DILexicalBlock(scope: !534, file: !1, line: 140, column: 11)
!534 = distinct !DILexicalBlock(scope: !530, file: !1, line: 139, column: 5)
!535 = !DILocation(line: 140, column: 11, scope: !534)
!536 = !DILocation(line: 142, column: 18, scope: !537)
!537 = distinct !DILexicalBlock(scope: !533, file: !1, line: 141, column: 2)
!538 = !DILocation(line: 142, column: 35, scope: !537)
!539 = !DILocation(line: 142, column: 33, scope: !537)
!540 = !DILocation(line: 142, column: 15, scope: !537)
!541 = !DILocation(line: 142, column: 7, scope: !537)
!542 = !DILocation(line: 142, column: 13, scope: !537)
!543 = !DILocation(line: 143, column: 32, scope: !537)
!544 = !DILocation(line: 144, column: 2, scope: !537)
!545 = !DILocation(line: 0, scope: !508)
!546 = !DILocation(line: 148, column: 10, scope: !468)
!547 = !DILocation(line: 149, column: 9, scope: !548)
!548 = distinct !DILexicalBlock(scope: !468, file: !1, line: 149, column: 7)
!549 = !DILocation(line: 149, column: 7, scope: !468)
!550 = !DILocation(line: 150, column: 16, scope: !548)
!551 = !DILocation(line: 150, column: 29, scope: !548)
!552 = !DILocation(line: 150, column: 39, scope: !548)
!553 = !DILocation(line: 150, column: 5, scope: !548)
!554 = !DILocation(line: 156, column: 3, scope: !468)
!555 = !DILocation(line: 153, column: 12, scope: !556)
!556 = distinct !DILexicalBlock(scope: !548, file: !1, line: 152, column: 5)
!557 = !DILocation(line: 153, column: 19, scope: !556)
!558 = !DILocation(line: 154, column: 7, scope: !556)
!559 = !DILocation(line: 0, scope: !556)
!560 = !DILocation(line: 157, column: 1, scope: !468)
!561 = distinct !DISubprogram(name: "fmemseeker", scope: !1, file: !1, line: 162, type: !247, isLocal: true, isDefinition: true, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !562)
!562 = !{!563, !564, !565, !566, !567, !568}
!563 = !DILocalVariable(name: "ptr", arg: 1, scope: !561, file: !1, line: 162, type: !82)
!564 = !DILocalVariable(name: "cookie", arg: 2, scope: !561, file: !1, line: 162, type: !22)
!565 = !DILocalVariable(name: "pos", arg: 3, scope: !561, file: !1, line: 162, type: !47)
!566 = !DILocalVariable(name: "whence", arg: 4, scope: !561, file: !1, line: 162, type: !5)
!567 = !DILocalVariable(name: "c", scope: !561, file: !1, line: 168, type: !23)
!568 = !DILocalVariable(name: "offset", scope: !561, file: !1, line: 170, type: !42)
!569 = !DILocation(line: 162, column: 1, scope: !561)
!570 = !DILocation(line: 170, column: 9, scope: !561)
!571 = !DILocation(line: 175, column: 7, scope: !561)
!572 = !DILocation(line: 178, column: 5, scope: !573)
!573 = distinct !DILexicalBlock(scope: !574, file: !1, line: 177, column: 12)
!574 = distinct !DILexicalBlock(scope: !561, file: !1, line: 175, column: 7)
!575 = !DILocation(line: 0, scope: !574)
!576 = !DILocation(line: 179, column: 14, scope: !577)
!577 = distinct !DILexicalBlock(scope: !561, file: !1, line: 179, column: 7)
!578 = !DILocation(line: 0, scope: !561)
!579 = !DILocation(line: 179, column: 7, scope: !561)
!580 = !DILocation(line: 181, column: 12, scope: !581)
!581 = distinct !DILexicalBlock(scope: !577, file: !1, line: 180, column: 5)
!582 = !DILocation(line: 181, column: 19, scope: !581)
!583 = !DILocation(line: 183, column: 5, scope: !581)
!584 = !DILocation(line: 184, column: 24, scope: !585)
!585 = distinct !DILexicalBlock(scope: !577, file: !1, line: 184, column: 12)
!586 = !DILocation(line: 184, column: 19, scope: !585)
!587 = !DILocation(line: 184, column: 12, scope: !577)
!588 = !DILocation(line: 186, column: 12, scope: !589)
!589 = distinct !DILexicalBlock(scope: !585, file: !1, line: 185, column: 5)
!590 = !DILocation(line: 186, column: 19, scope: !589)
!591 = !DILocation(line: 188, column: 5, scope: !589)
!592 = !DILocation(line: 198, column: 14, scope: !593)
!593 = distinct !DILexicalBlock(scope: !594, file: !1, line: 198, column: 11)
!594 = distinct !DILexicalBlock(scope: !585, file: !1, line: 197, column: 5)
!595 = !DILocation(line: 198, column: 11, scope: !593)
!596 = !DILocation(line: 0, scope: !593)
!597 = !DILocation(line: 198, column: 24, scope: !593)
!598 = !DILocation(line: 203, column: 14, scope: !594)
!599 = !DILocation(line: 204, column: 24, scope: !600)
!600 = distinct !DILexicalBlock(scope: !594, file: !1, line: 204, column: 11)
!601 = !DILocation(line: 198, column: 30, scope: !593)
!602 = !DILocation(line: 198, column: 39, scope: !593)
!603 = !DILocation(line: 198, column: 34, scope: !593)
!604 = !DILocation(line: 198, column: 11, scope: !594)
!605 = !DILocation(line: 200, column: 24, scope: !606)
!606 = distinct !DILexicalBlock(scope: !593, file: !1, line: 199, column: 2)
!607 = !DILocation(line: 200, column: 7, scope: !606)
!608 = !DILocation(line: 200, column: 4, scope: !606)
!609 = !DILocation(line: 200, column: 19, scope: !606)
!610 = !DILocation(line: 201, column: 13, scope: !606)
!611 = !DILocation(line: 204, column: 14, scope: !600)
!612 = !DILocation(line: 204, column: 11, scope: !600)
!613 = !DILocation(line: 204, column: 39, scope: !600)
!614 = !DILocation(line: 204, column: 34, scope: !600)
!615 = !DILocation(line: 204, column: 11, scope: !594)
!616 = !DILocation(line: 206, column: 18, scope: !617)
!617 = distinct !DILexicalBlock(scope: !600, file: !1, line: 205, column: 2)
!618 = !DILocation(line: 206, column: 15, scope: !617)
!619 = !DILocation(line: 206, column: 7, scope: !617)
!620 = !DILocation(line: 206, column: 13, scope: !617)
!621 = !DILocation(line: 207, column: 19, scope: !617)
!622 = !DILocation(line: 208, column: 2, scope: !617)
!623 = !DILocation(line: 210, column: 3, scope: !561)
!624 = distinct !DISubprogram(name: "fmemcloser", scope: !1, file: !1, line: 259, type: !251, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !625)
!625 = !{!626, !627, !628}
!626 = !DILocalVariable(name: "ptr", arg: 1, scope: !624, file: !1, line: 259, type: !82)
!627 = !DILocalVariable(name: "cookie", arg: 2, scope: !624, file: !1, line: 259, type: !22)
!628 = !DILocalVariable(name: "c", scope: !624, file: !1, line: 263, type: !23)
!629 = !DILocation(line: 259, column: 1, scope: !624)
!630 = !DILocation(line: 263, column: 15, scope: !624)
!631 = !DILocation(line: 264, column: 3, scope: !624)
!632 = !DILocation(line: 265, column: 3, scope: !624)
!633 = distinct !DISubprogram(name: "fmemopen", scope: !1, file: !1, line: 364, type: !634, isLocal: false, isDefinition: true, scopeLine: 368, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !636)
!634 = !DISubroutineType(types: !635)
!635 = !{!55, !270, !32, !271}
!636 = !{!637, !638, !639}
!637 = !DILocalVariable(name: "buf", arg: 1, scope: !633, file: !1, line: 364, type: !270)
!638 = !DILocalVariable(name: "size", arg: 2, scope: !633, file: !1, line: 364, type: !32)
!639 = !DILocalVariable(name: "mode", arg: 3, scope: !633, file: !1, line: 364, type: !271)
!640 = !DILocation(line: 364, column: 1, scope: !633)
!641 = !DILocation(line: 369, column: 23, scope: !633)
!642 = !DILocation(line: 369, column: 10, scope: !633)
!643 = !DILocation(line: 369, column: 3, scope: !633)
