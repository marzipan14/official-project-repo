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

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local %struct.__sFILE* @_fmemopen_r(%struct._reent*, i8* noalias, i64, i8* noalias) local_unnamed_addr #0 !dbg !52 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = bitcast i32* %5 to i8*, !dbg !288
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #5, !dbg !288
  %9 = call i32 @__sflags(%struct._reent* %0, i8* %3, i32* nonnull %5) #6, !dbg !290
  %10 = icmp eq i32 %9, 0, !dbg !293
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !294
  br i1 %10, label %114, label %11, !dbg !294

; <label>:11:                                     ; preds = %4
  %12 = icmp eq i64 %2, 0, !dbg !295
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !297
  br i1 %12, label %18, label %13, !dbg !297

; <label>:13:                                     ; preds = %11
  %14 = icmp ne i8* %1, null, !dbg !298
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !299
  br i1 %14, label %20, label %15, !dbg !299

; <label>:15:                                     ; preds = %13
  %16 = and i32 %9, 16, !dbg !300
  %17 = icmp eq i32 %16, 0, !dbg !300
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !301
  br i1 %17, label %18, label %20, !dbg !301

; <label>:18:                                     ; preds = %15, %11
  %19 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !302
  store i32 22, i32* %19, align 8, !dbg !304, !tbaa !305
  br label %114, !dbg !314

; <label>:20:                                     ; preds = %15, %13
  %21 = call %struct.__sFILE* @__sfp(%struct._reent* %0) #6, !dbg !315
  %22 = icmp eq %struct.__sFILE* %21, null, !dbg !318
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !319
  br i1 %22, label %114, label %23, !dbg !319

; <label>:23:                                     ; preds = %20
  %24 = add i64 %2, 48, !dbg !320
  %25 = select i1 %14, i64 48, i64 %24, !dbg !320
  %26 = call i8* @malloc(i64 %25) #6, !dbg !320
  %27 = icmp eq i8* %26, null, !dbg !322
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !323
  br i1 %27, label %28, label %34, !dbg !323

; <label>:28:                                     ; preds = %23
  %29 = bitcast i32* %6 to i8*, !dbg !324
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %29) #5, !dbg !324
  %30 = call i32 @pthread_setcancelstate(i32 1, i32* nonnull %6) #6, !dbg !324
  call void @__sfp_lock_acquire() #6, !dbg !324
  %31 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %21, i64 0, i32 3, !dbg !325
  store i16 0, i16* %31, align 8, !dbg !326, !tbaa !327
  call void @__sfp_lock_release() #6, !dbg !333
  %32 = load i32, i32* %6, align 4, !dbg !333, !tbaa !334
  %33 = call i32 @pthread_setcancelstate(i32 %32, i32* nonnull %6) #6, !dbg !333
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %29) #5, !dbg !335
  br label %114, !dbg !336

; <label>:34:                                     ; preds = %23
  %35 = bitcast i8* %26 to i8**, !dbg !337
  store i8* %26, i8** %35, align 8, !dbg !338, !tbaa !339
  %36 = getelementptr inbounds i8, i8* %26, i64 32, !dbg !341
  %37 = bitcast i8* %36 to i64*, !dbg !341
  store i64 %2, i64* %37, align 8, !dbg !342, !tbaa !343
  %38 = lshr i32 %9, 3, !dbg !344
  %39 = trunc i32 %38 to i8, !dbg !344
  %40 = and i8 %39, 1, !dbg !344
  %41 = getelementptr inbounds i8, i8* %26, i64 41, !dbg !345
  store i8 %40, i8* %41, align 1, !dbg !346, !tbaa !347
  %42 = getelementptr inbounds i8, i8* %26, i64 42, !dbg !348
  store i8 0, i8* %42, align 2, !dbg !349, !tbaa !350
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !351
  br i1 %14, label %53, label %43, !dbg !351

; <label>:43:                                     ; preds = %34
  %44 = getelementptr inbounds i8, i8* %26, i64 48, !dbg !352
  %45 = getelementptr inbounds i8, i8* %26, i64 8, !dbg !355
  %46 = bitcast i8* %45 to i8**, !dbg !355
  store i8* %44, i8** %46, align 8, !dbg !356, !tbaa !357
  store i8 0, i8* %44, align 1, !dbg !358, !tbaa !359
  %47 = getelementptr inbounds i8, i8* %26, i64 16, !dbg !360
  %48 = bitcast i8* %47 to <2 x i64>*, !dbg !361
  store <2 x i64> zeroinitializer, <2 x i64>* %48, align 8, !dbg !361, !tbaa !362
  %49 = lshr i32 %9, 8, !dbg !363
  %50 = trunc i32 %49 to i8, !dbg !363
  %51 = and i8 %50, 1, !dbg !363
  %52 = getelementptr inbounds i8, i8* %26, i64 40, !dbg !364
  store i8 %51, i8* %52, align 8, !dbg !365, !tbaa !366
  br label %95, !dbg !367

; <label>:53:                                     ; preds = %34
  %54 = getelementptr inbounds i8, i8* %26, i64 8, !dbg !368
  %55 = bitcast i8* %54 to i8**, !dbg !368
  store i8* %1, i8** %55, align 8, !dbg !370, !tbaa !357
  %56 = load i8, i8* %3, align 1, !dbg !371, !tbaa !359
  %57 = sext i8 %56 to i32, !dbg !371
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !372
  switch i32 %57, label %94 [
    i32 97, label %58
    i32 114, label %84
    i32 119, label %90
  ], !dbg !372

; <label>:58:                                     ; preds = %53
  %59 = call i8* @memchr(i8* nonnull %1, i32 0, i64 %2) #6, !dbg !373
  %60 = icmp eq i8* %59, null, !dbg !375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !375
  br i1 %60, label %70, label %61, !dbg !375

; <label>:61:                                     ; preds = %58
  %62 = bitcast i8* %54 to i64*, !dbg !376
  %63 = load i64, i64* %62, align 8, !dbg !376, !tbaa !357
  %64 = ptrtoint i8* %59 to i64, !dbg !377
  %65 = sub i64 %64, %63, !dbg !377
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !375
  %66 = getelementptr inbounds i8, i8* %26, i64 16, !dbg !378
  %67 = bitcast i8* %66 to i64*, !dbg !378
  store i64 %65, i64* %67, align 8, !dbg !379, !tbaa !380
  %68 = getelementptr inbounds i8, i8* %26, i64 24, !dbg !381
  %69 = bitcast i8* %68 to i64*, !dbg !381
  store i64 %65, i64* %69, align 8, !dbg !382, !tbaa !383
  br label %81, !dbg !384

; <label>:70:                                     ; preds = %58
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !375
  %71 = getelementptr inbounds i8, i8* %26, i64 16, !dbg !378
  %72 = bitcast i8* %71 to i64*, !dbg !378
  store i64 %2, i64* %72, align 8, !dbg !379, !tbaa !380
  %73 = getelementptr inbounds i8, i8* %26, i64 24, !dbg !381
  %74 = bitcast i8* %73 to i64*, !dbg !381
  store i64 %2, i64* %74, align 8, !dbg !382, !tbaa !383
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !384
  %75 = load i8, i8* %41, align 1, !dbg !386, !tbaa !347
  %76 = icmp eq i8 %75, 0, !dbg !387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !388
  br i1 %76, label %82, label %77, !dbg !388

; <label>:77:                                     ; preds = %70
  %78 = load i8*, i8** %55, align 8, !dbg !389, !tbaa !357
  %79 = add i64 %2, -1, !dbg !390
  %80 = getelementptr inbounds i8, i8* %78, i64 %79, !dbg !391
  store i8 0, i8* %80, align 1, !dbg !392, !tbaa !359
  br label %81, !dbg !391

; <label>:81:                                     ; preds = %77, %61
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !393
  br label %82, !dbg !394

; <label>:82:                                     ; preds = %81, %70
  %83 = getelementptr inbounds i8, i8* %26, i64 40, !dbg !394
  store i8 1, i8* %83, align 8, !dbg !395, !tbaa !366
  br label %95, !dbg !396

; <label>:84:                                     ; preds = %53
  %85 = getelementptr inbounds i8, i8* %26, i64 40, !dbg !397
  store i8 0, i8* %85, align 8, !dbg !398, !tbaa !366
  %86 = getelementptr inbounds i8, i8* %26, i64 16, !dbg !399
  %87 = bitcast i8* %86 to i64*, !dbg !399
  store i64 0, i64* %87, align 8, !dbg !400, !tbaa !380
  %88 = getelementptr inbounds i8, i8* %26, i64 24, !dbg !401
  %89 = bitcast i8* %88 to i64*, !dbg !401
  store i64 %2, i64* %89, align 8, !dbg !402, !tbaa !383
  br label %95, !dbg !403

; <label>:90:                                     ; preds = %53
  %91 = getelementptr inbounds i8, i8* %26, i64 40, !dbg !404
  store i8 0, i8* %91, align 8, !dbg !405, !tbaa !366
  %92 = getelementptr inbounds i8, i8* %26, i64 16, !dbg !406
  %93 = bitcast i8* %92 to <2 x i64>*, !dbg !407
  store <2 x i64> zeroinitializer, <2 x i64>* %93, align 8, !dbg !407, !tbaa !362
  store i8 0, i8* %1, align 1, !dbg !408, !tbaa !359
  br label %95, !dbg !409

; <label>:94:                                     ; preds = %53
  call void @abort() #7, !dbg !410
  unreachable

; <label>:95:                                     ; preds = %82, %84, %90, %43
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !411
  %96 = bitcast i32* %7 to i8*, !dbg !412
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %96) #5, !dbg !412
  %97 = call i32 @pthread_setcancelstate(i32 1, i32* nonnull %7) #6, !dbg !412
  %98 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %21, i64 0, i32 4, !dbg !413
  store i16 -1, i16* %98, align 2, !dbg !414, !tbaa !415
  %99 = trunc i32 %9 to i16, !dbg !416
  %100 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %21, i64 0, i32 3, !dbg !417
  store i16 %99, i16* %100, align 8, !dbg !418, !tbaa !327
  %101 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %21, i64 0, i32 7, !dbg !419
  store i8* %26, i8** %101, align 8, !dbg !420, !tbaa !421
  %102 = and i32 %9, 20, !dbg !422
  %103 = icmp eq i32 %102, 0, !dbg !423
  %104 = select i1 %103, i64 (%struct._reent*, i8*, i8*, i32)* null, i64 (%struct._reent*, i8*, i8*, i32)* @fmemreader, !dbg !423
  %105 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %21, i64 0, i32 8, !dbg !424
  store i64 (%struct._reent*, i8*, i8*, i32)* %104, i64 (%struct._reent*, i8*, i8*, i32)** %105, align 8, !dbg !425, !tbaa !426
  %106 = and i32 %9, 24, !dbg !427
  %107 = icmp eq i32 %106, 0, !dbg !428
  %108 = select i1 %107, i64 (%struct._reent*, i8*, i8*, i32)* null, i64 (%struct._reent*, i8*, i8*, i32)* @fmemwriter, !dbg !428
  %109 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %21, i64 0, i32 9, !dbg !429
  store i64 (%struct._reent*, i8*, i8*, i32)* %108, i64 (%struct._reent*, i8*, i8*, i32)** %109, align 8, !dbg !430, !tbaa !431
  %110 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %21, i64 0, i32 10, !dbg !432
  store i64 (%struct._reent*, i8*, i64, i32)* @fmemseeker, i64 (%struct._reent*, i8*, i64, i32)** %110, align 8, !dbg !433, !tbaa !434
  %111 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %21, i64 0, i32 11, !dbg !435
  store i32 (%struct._reent*, i8*)* @fmemcloser, i32 (%struct._reent*, i8*)** %111, align 8, !dbg !436, !tbaa !437
  %112 = load i32, i32* %7, align 4, !dbg !438, !tbaa !334
  %113 = call i32 @pthread_setcancelstate(i32 %112, i32* nonnull %7) #6, !dbg !438
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %96) #5, !dbg !439
  br label %114, !dbg !440

; <label>:114:                                    ; preds = %20, %4, %95, %28, %18
  %115 = phi %struct.__sFILE* [ null, %28 ], [ %21, %95 ], [ null, %18 ], [ null, %4 ], [ null, %20 ], !dbg !441
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !442
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #5, !dbg !443
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !443
  ret %struct.__sFILE* %115, !dbg !443
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
define internal i64 @fmemreader(%struct._reent* nocapture readnone, i8* nocapture, i8*, i32) #0 !dbg !444 {
  %5 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !453
  %6 = bitcast i8* %5 to i64*, !dbg !453
  %7 = load i64, i64* %6, align 8, !dbg !453, !tbaa !380
  %8 = getelementptr inbounds i8, i8* %1, i64 24, !dbg !455
  %9 = bitcast i8* %8 to i64*, !dbg !455
  %10 = load i64, i64* %9, align 8, !dbg !455, !tbaa !383
  %11 = icmp ult i64 %10, %7, !dbg !456
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !457
  br i1 %11, label %28, label %12, !dbg !457

; <label>:12:                                     ; preds = %4
  %13 = sext i32 %3 to i64, !dbg !458
  %14 = sub i64 %10, %7, !dbg !460
  %15 = icmp ugt i64 %14, %13, !dbg !461
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !462
  br i1 %15, label %19, label %16, !dbg !462

; <label>:16:                                     ; preds = %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !463
  %17 = shl i64 %14, 32, !dbg !464
  %18 = ashr exact i64 %17, 32, !dbg !464
  br label %19, !dbg !463

; <label>:19:                                     ; preds = %12, %16
  %20 = phi i64 [ %13, %12 ], [ %18, %16 ], !dbg !464
  %21 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !465
  %22 = bitcast i8* %21 to i8**, !dbg !465
  %23 = load i8*, i8** %22, align 8, !dbg !465, !tbaa !357
  %24 = getelementptr inbounds i8, i8* %23, i64 %7, !dbg !466
  %25 = tail call i8* @memcpy(i8* %2, i8* %24, i64 %20) #6, !dbg !467
  %26 = load i64, i64* %6, align 8, !dbg !468, !tbaa !380
  %27 = add i64 %26, %20, !dbg !468
  store i64 %27, i64* %6, align 8, !dbg !468, !tbaa !380
  br label %28, !dbg !469

; <label>:28:                                     ; preds = %4, %19
  %29 = phi i64 [ %20, %19 ], [ 0, %4 ], !dbg !470
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !471
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !472
  ret i64 %29, !dbg !472
}

; Function Attrs: noredzone nounwind
define internal i64 @fmemwriter(%struct._reent* nocapture, i8* nocapture, i8*, i32) #0 !dbg !473 {
  %5 = getelementptr inbounds i8, i8* %1, i64 40, !dbg !483
  %6 = load i8, i8* %5, align 8, !dbg !483, !tbaa !366
  %7 = icmp eq i8 %6, 0, !dbg !485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !486
  br i1 %7, label %14, label %8, !dbg !486

; <label>:8:                                      ; preds = %4
  %9 = getelementptr inbounds i8, i8* %1, i64 24, !dbg !488
  %10 = bitcast i8* %9 to i64*, !dbg !488
  %11 = load i64, i64* %10, align 8, !dbg !488, !tbaa !383
  %12 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !489
  %13 = bitcast i8* %12 to i64*, !dbg !489
  store i64 %11, i64* %13, align 8, !dbg !490, !tbaa !380
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !491
  br label %30, !dbg !491

; <label>:14:                                     ; preds = %4
  %15 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !492
  %16 = bitcast i8* %15 to i64*, !dbg !492
  %17 = load i64, i64* %16, align 8, !dbg !492, !tbaa !380
  %18 = getelementptr inbounds i8, i8* %1, i64 24, !dbg !494
  %19 = bitcast i8* %18 to i64*, !dbg !494
  %20 = load i64, i64* %19, align 8, !dbg !494, !tbaa !383
  %21 = icmp ugt i64 %17, %20, !dbg !495
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !496
  br i1 %21, label %22, label %30, !dbg !496

; <label>:22:                                     ; preds = %14
  %23 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !497
  %24 = bitcast i8* %23 to i8**, !dbg !497
  %25 = load i8*, i8** %24, align 8, !dbg !497, !tbaa !357
  %26 = getelementptr inbounds i8, i8* %25, i64 %20, !dbg !498
  %27 = sub i64 %17, %20, !dbg !499
  %28 = tail call i8* @memset(i8* %26, i32 0, i64 %27) #6, !dbg !500
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !500
  %29 = load i64, i64* %16, align 8, !dbg !501, !tbaa !380
  br label %30, !dbg !500

; <label>:30:                                     ; preds = %14, %22, %8
  %31 = phi i64* [ %16, %14 ], [ %16, %22 ], [ %13, %8 ], !dbg !501
  %32 = phi i64 [ %17, %14 ], [ %29, %22 ], [ %11, %8 ], !dbg !501
  %33 = sext i32 %3 to i64, !dbg !503
  %34 = add i64 %32, %33, !dbg !504
  %35 = getelementptr inbounds i8, i8* %1, i64 32, !dbg !505
  %36 = bitcast i8* %35 to i64*, !dbg !505
  %37 = load i64, i64* %36, align 8, !dbg !505, !tbaa !343
  %38 = getelementptr inbounds i8, i8* %1, i64 41, !dbg !506
  %39 = load i8, i8* %38, align 1, !dbg !506, !tbaa !347
  %40 = sext i8 %39 to i64, !dbg !507
  %41 = sub i64 %37, %40, !dbg !508
  %42 = icmp ugt i64 %34, %41, !dbg !509
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !510
  br i1 %42, label %43, label %50, !dbg !510

; <label>:43:                                     ; preds = %30
  %44 = sext i8 %39 to i32, !dbg !511
  %45 = sub i64 %37, %32, !dbg !513
  %46 = trunc i64 %45 to i32, !dbg !514
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !515
  %47 = shl i64 %45, 32, !dbg !516
  %48 = ashr exact i64 %47, 32, !dbg !516
  %49 = add i64 %32, %48, !dbg !518
  br label %50, !dbg !515

; <label>:50:                                     ; preds = %43, %30
  %51 = phi i64 [ %49, %43 ], [ %34, %30 ], !dbg !518
  %52 = phi i64 [ %48, %43 ], [ %33, %30 ], !dbg !516
  %53 = phi i32 [ %46, %43 ], [ %3, %30 ]
  %54 = phi i32 [ %44, %43 ], [ 0, %30 ], !dbg !519
  %55 = getelementptr inbounds i8, i8* %1, i64 24, !dbg !520
  %56 = bitcast i8* %55 to i64*, !dbg !520
  %57 = load i64, i64* %56, align 8, !dbg !520, !tbaa !383
  %58 = icmp ugt i64 %51, %57, !dbg !521
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !522
  br i1 %58, label %59, label %69, !dbg !522

; <label>:59:                                     ; preds = %50
  store i64 %51, i64* %56, align 8, !dbg !523, !tbaa !383
  %60 = sext i32 %54 to i64, !dbg !525
  %61 = sub i64 %51, %60, !dbg !527
  %62 = icmp ult i64 %61, %37, !dbg !528
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !529
  br i1 %62, label %63, label %83, !dbg !529

; <label>:63:                                     ; preds = %59
  %64 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !530
  %65 = bitcast i8* %64 to i8**, !dbg !530
  %66 = load i8*, i8** %65, align 8, !dbg !530, !tbaa !357
  %67 = getelementptr inbounds i8, i8* %66, i64 %61, !dbg !531
  store i8 0, i8* %67, align 1, !dbg !532, !tbaa !359
  %68 = getelementptr inbounds i8, i8* %1, i64 42, !dbg !533
  store i8 0, i8* %68, align 2, !dbg !534, !tbaa !350
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !535
  br label %83, !dbg !535

; <label>:69:                                     ; preds = %50
  %70 = icmp eq i8 %39, 0, !dbg !536
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !538
  br i1 %70, label %83, label %71, !dbg !538

; <label>:71:                                     ; preds = %69
  %72 = icmp eq i32 %53, 0, !dbg !539
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !542
  br i1 %72, label %82, label %73, !dbg !542

; <label>:73:                                     ; preds = %71
  %74 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !543
  %75 = bitcast i8* %74 to i8**, !dbg !543
  %76 = load i8*, i8** %75, align 8, !dbg !543, !tbaa !357
  %77 = sext i32 %54 to i64, !dbg !545
  %78 = sub i64 %51, %77, !dbg !546
  %79 = getelementptr inbounds i8, i8* %76, i64 %78, !dbg !547
  %80 = load i8, i8* %79, align 1, !dbg !547, !tbaa !359
  %81 = getelementptr inbounds i8, i8* %1, i64 42, !dbg !548
  store i8 %80, i8* %81, align 2, !dbg !549, !tbaa !350
  store i8 0, i8* %79, align 1, !dbg !550, !tbaa !359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !551
  br label %83, !dbg !551

; <label>:82:                                     ; preds = %71
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %83

; <label>:83:                                     ; preds = %69, %82, %73, %59, %63
  %84 = phi i32 [ %54, %63 ], [ %54, %59 ], [ %54, %73 ], [ 0, %82 ], [ %54, %69 ], !dbg !552
  %85 = load i64, i64* %31, align 8, !dbg !553, !tbaa !380
  %86 = add i64 %85, %52, !dbg !553
  store i64 %86, i64* %31, align 8, !dbg !553, !tbaa !380
  %87 = sub nsw i32 %53, %84, !dbg !554
  %88 = icmp eq i32 %87, 0, !dbg !554
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !556
  br i1 %88, label %96, label %89, !dbg !556

; <label>:89:                                     ; preds = %83
  %90 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !557
  %91 = bitcast i8* %90 to i8**, !dbg !557
  %92 = load i8*, i8** %91, align 8, !dbg !557, !tbaa !357
  %93 = getelementptr inbounds i8, i8* %92, i64 %85, !dbg !558
  %94 = sext i32 %87 to i64, !dbg !559
  %95 = tail call i8* @memcpy(i8* %93, i8* %2, i64 %94) #6, !dbg !560
  br label %98, !dbg !561

; <label>:96:                                     ; preds = %83
  %97 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !562
  store i32 28, i32* %97, align 8, !dbg !564, !tbaa !305
  br label %98, !dbg !565

; <label>:98:                                     ; preds = %89, %96
  %99 = phi i64 [ %52, %89 ], [ -1, %96 ], !dbg !566
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !566
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !567
  ret i64 %99, !dbg !567
}

; Function Attrs: noredzone nounwind
define internal i64 @fmemseeker(%struct._reent* nocapture, i8* nocapture, i64, i32) #0 !dbg !568 {
  %5 = icmp eq i32 %3, 1, !dbg !578
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !580
  br i1 %5, label %8, label %6, !dbg !580

; <label>:6:                                      ; preds = %4
  %7 = icmp eq i32 %3, 2, !dbg !581
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !583
  br i1 %7, label %8, label %14, !dbg !583

; <label>:8:                                      ; preds = %6, %4
  %9 = phi i64 [ 16, %4 ], [ 24, %6 ]
  %10 = getelementptr inbounds i8, i8* %1, i64 %9, !dbg !584
  %11 = bitcast i8* %10 to i64*, !dbg !584
  %12 = load i64, i64* %11, align 8, !dbg !584, !tbaa !362
  %13 = add i64 %12, %2, !dbg !584
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !584
  br label %14, !dbg !585

; <label>:14:                                     ; preds = %8, %6
  %15 = phi i64 [ %2, %6 ], [ %13, %8 ], !dbg !587
  %16 = icmp slt i64 %15, 0, !dbg !585
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !588
  br i1 %16, label %17, label %19, !dbg !588

; <label>:17:                                     ; preds = %14
  %18 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !589
  store i32 22, i32* %18, align 8, !dbg !591, !tbaa !305
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !592
  br label %59, !dbg !592

; <label>:19:                                     ; preds = %14
  %20 = getelementptr inbounds i8, i8* %1, i64 32, !dbg !593
  %21 = bitcast i8* %20 to i64*, !dbg !593
  %22 = load i64, i64* %21, align 8, !dbg !593, !tbaa !343
  %23 = icmp ugt i64 %15, %22, !dbg !595
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !596
  br i1 %23, label %24, label %26, !dbg !596

; <label>:24:                                     ; preds = %19
  %25 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !597
  store i32 28, i32* %25, align 8, !dbg !599, !tbaa !305
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !600
  br label %59, !dbg !600

; <label>:26:                                     ; preds = %19
  %27 = getelementptr inbounds i8, i8* %1, i64 41, !dbg !601
  %28 = load i8, i8* %27, align 1, !dbg !601, !tbaa !347
  %29 = icmp eq i8 %28, 0, !dbg !604
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !605
  %30 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !606
  %31 = bitcast i8* %30 to i64*, !dbg !606
  br i1 %29, label %32, label %33, !dbg !605

; <label>:32:                                     ; preds = %26
  store i64 %15, i64* %31, align 8, !dbg !607, !tbaa !380
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !608
  br label %59, !dbg !608

; <label>:33:                                     ; preds = %26
  %34 = load i64, i64* %31, align 8, !dbg !610, !tbaa !380
  %35 = getelementptr inbounds i8, i8* %1, i64 24, !dbg !611
  %36 = bitcast i8* %35 to i64*, !dbg !611
  %37 = load i64, i64* %36, align 8, !dbg !611, !tbaa !383
  %38 = icmp ult i64 %34, %37, !dbg !612
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !613
  br i1 %38, label %40, label %39, !dbg !613

; <label>:39:                                     ; preds = %33
  store i64 %15, i64* %31, align 8, !dbg !607, !tbaa !380
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !608
  br label %49, !dbg !608

; <label>:40:                                     ; preds = %33
  %41 = getelementptr inbounds i8, i8* %1, i64 42, !dbg !614
  %42 = load i8, i8* %41, align 2, !dbg !614, !tbaa !350
  %43 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !616
  %44 = bitcast i8* %43 to i8**, !dbg !616
  %45 = load i8*, i8** %44, align 8, !dbg !616, !tbaa !357
  %46 = getelementptr inbounds i8, i8* %45, i64 %34, !dbg !617
  store i8 %42, i8* %46, align 1, !dbg !618, !tbaa !359
  store i8 0, i8* %41, align 2, !dbg !619, !tbaa !350
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !620
  %47 = load i8, i8* %27, align 1, !dbg !621, !tbaa !347
  store i64 %15, i64* %31, align 8, !dbg !607, !tbaa !380
  %48 = icmp eq i8 %47, 0, !dbg !622
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !608
  br i1 %48, label %59, label %49, !dbg !608

; <label>:49:                                     ; preds = %39, %40
  %50 = load i64, i64* %36, align 8, !dbg !623, !tbaa !383
  %51 = icmp ult i64 %15, %50, !dbg !624
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !625
  br i1 %51, label %52, label %59, !dbg !625

; <label>:52:                                     ; preds = %49
  %53 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !626
  %54 = bitcast i8* %53 to i8**, !dbg !626
  %55 = load i8*, i8** %54, align 8, !dbg !626, !tbaa !357
  %56 = getelementptr inbounds i8, i8* %55, i64 %15, !dbg !628
  %57 = load i8, i8* %56, align 1, !dbg !628, !tbaa !359
  %58 = getelementptr inbounds i8, i8* %1, i64 42, !dbg !629
  store i8 %57, i8* %58, align 2, !dbg !630, !tbaa !350
  store i8 0, i8* %56, align 1, !dbg !631, !tbaa !359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !632
  br label %59, !dbg !632

; <label>:59:                                     ; preds = %32, %40, %24, %52, %49, %17
  %60 = phi i64 [ -1, %17 ], [ -1, %24 ], [ %15, %52 ], [ %15, %49 ], [ %15, %40 ], [ %15, %32 ], !dbg !584
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !633
  ret i64 %60, !dbg !633
}

; Function Attrs: noredzone nounwind
define internal i32 @fmemcloser(%struct._reent* nocapture readnone, i8* nocapture readonly) #0 !dbg !634 {
  %3 = bitcast i8* %1 to i8**, !dbg !641
  %4 = load i8*, i8** %3, align 8, !dbg !641, !tbaa !339
  tail call void @free(i8* %4) #6, !dbg !641
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !642
  ret i32 0, !dbg !642
}

; Function Attrs: noredzone nounwind
define dso_local %struct.__sFILE* @fmemopen(i8* noalias, i64, i8* noalias) local_unnamed_addr #0 !dbg !643 {
  %4 = tail call %struct._reent* @__getreent() #6, !dbg !651
  %5 = tail call %struct.__sFILE* @_fmemopen_r(%struct._reent* %4, i8* %0, i64 %1, i8* %2) #8, !dbg !652
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !653
  ret %struct.__sFILE* %5, !dbg !653
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
!301 = !DILocation(line: 284, column: 7, scope: !52)
!302 = !DILocation(line: 286, column: 12, scope: !303)
!303 = distinct !DILexicalBlock(scope: !296, file: !1, line: 285, column: 5)
!304 = !DILocation(line: 286, column: 19, scope: !303)
!305 = !{!306, !307, i64 0}
!306 = !{!"_reent", !307, i64 0, !310, i64 8, !310, i64 16, !310, i64 24, !307, i64 32, !308, i64 36, !307, i64 64, !310, i64 72, !307, i64 80, !310, i64 88, !310, i64 96, !307, i64 104, !310, i64 112, !310, i64 120, !307, i64 128, !310, i64 136, !308, i64 144, !310, i64 504, !311, i64 512, !310, i64 1304, !313, i64 1312, !308, i64 1336}
!307 = !{!"int", !308, i64 0}
!308 = !{!"omnipotent char", !309, i64 0}
!309 = !{!"Simple C/C++ TBAA"}
!310 = !{!"any pointer", !308, i64 0}
!311 = !{!"_atexit", !310, i64 0, !307, i64 8, !308, i64 16, !312, i64 272}
!312 = !{!"_on_exit_args", !308, i64 0, !308, i64 256, !307, i64 512, !307, i64 516}
!313 = !{!"_glue", !310, i64 0, !307, i64 8, !310, i64 16}
!314 = !DILocation(line: 287, column: 7, scope: !303)
!315 = !DILocation(line: 289, column: 13, scope: !316)
!316 = distinct !DILexicalBlock(scope: !52, file: !1, line: 289, column: 7)
!317 = !DILocation(line: 277, column: 9, scope: !52)
!318 = !DILocation(line: 289, column: 26, scope: !316)
!319 = !DILocation(line: 289, column: 7, scope: !52)
!320 = !DILocation(line: 291, column: 27, scope: !284)
!321 = !DILocation(line: 278, column: 15, scope: !52)
!322 = !DILocation(line: 292, column: 7, scope: !284)
!323 = !DILocation(line: 291, column: 7, scope: !52)
!324 = !DILocation(line: 294, column: 7, scope: !282)
!325 = !DILocation(line: 295, column: 11, scope: !282)
!326 = !DILocation(line: 295, column: 18, scope: !282)
!327 = !{!328, !329, i64 16}
!328 = !{!"__sFILE", !310, i64 0, !307, i64 8, !307, i64 12, !329, i64 16, !329, i64 18, !330, i64 24, !307, i64 40, !310, i64 48, !310, i64 56, !310, i64 64, !310, i64 72, !310, i64 80, !330, i64 88, !310, i64 104, !307, i64 112, !308, i64 116, !308, i64 119, !330, i64 120, !307, i64 136, !331, i64 144, !310, i64 152, !307, i64 160, !332, i64 164, !307, i64 172}
!329 = !{!"short", !308, i64 0}
!330 = !{!"__sbuf", !310, i64 0, !307, i64 8}
!331 = !{!"long", !308, i64 0}
!332 = !{!"", !307, i64 0, !308, i64 4}
!333 = !DILocation(line: 299, column: 7, scope: !282)
!334 = !{!307, !307, i64 0}
!335 = !DILocation(line: 299, column: 7, scope: !283)
!336 = !DILocation(line: 300, column: 7, scope: !283)
!337 = !DILocation(line: 303, column: 6, scope: !52)
!338 = !DILocation(line: 303, column: 14, scope: !52)
!339 = !{!340, !310, i64 0}
!340 = !{!"fmemcookie", !310, i64 0, !310, i64 8, !331, i64 16, !331, i64 24, !331, i64 32, !308, i64 40, !308, i64 41, !308, i64 42}
!341 = !DILocation(line: 304, column: 6, scope: !52)
!342 = !DILocation(line: 304, column: 10, scope: !52)
!343 = !{!340, !331, i64 32}
!344 = !DILocation(line: 307, column: 18, scope: !52)
!345 = !DILocation(line: 307, column: 6, scope: !52)
!346 = !DILocation(line: 307, column: 16, scope: !52)
!347 = !{!340, !308, i64 41}
!348 = !DILocation(line: 308, column: 6, scope: !52)
!349 = !DILocation(line: 308, column: 12, scope: !52)
!350 = !{!340, !308, i64 42}
!351 = !DILocation(line: 309, column: 7, scope: !52)
!352 = !DILocation(line: 312, column: 28, scope: !353)
!353 = distinct !DILexicalBlock(scope: !354, file: !1, line: 310, column: 5)
!354 = distinct !DILexicalBlock(scope: !52, file: !1, line: 309, column: 7)
!355 = !DILocation(line: 312, column: 10, scope: !353)
!356 = !DILocation(line: 312, column: 14, scope: !353)
!357 = !{!340, !310, i64 8}
!358 = !DILocation(line: 313, column: 17, scope: !353)
!359 = !{!308, !308, i64 0}
!360 = !DILocation(line: 314, column: 10, scope: !353)
!361 = !DILocation(line: 314, column: 14, scope: !353)
!362 = !{!331, !331, i64 0}
!363 = !DILocation(line: 315, column: 19, scope: !353)
!364 = !DILocation(line: 315, column: 10, scope: !353)
!365 = !DILocation(line: 315, column: 17, scope: !353)
!366 = !{!340, !308, i64 40}
!367 = !DILocation(line: 316, column: 5, scope: !353)
!368 = !DILocation(line: 319, column: 10, scope: !369)
!369 = distinct !DILexicalBlock(scope: !354, file: !1, line: 318, column: 5)
!370 = !DILocation(line: 319, column: 14, scope: !369)
!371 = !DILocation(line: 320, column: 15, scope: !369)
!372 = !DILocation(line: 320, column: 7, scope: !369)
!373 = !DILocation(line: 324, column: 10, scope: !374)
!374 = distinct !DILexicalBlock(scope: !369, file: !1, line: 321, column: 2)
!375 = !DILocation(line: 325, column: 22, scope: !374)
!376 = !DILocation(line: 325, column: 46, scope: !374)
!377 = !DILocation(line: 325, column: 41, scope: !374)
!378 = !DILocation(line: 325, column: 16, scope: !374)
!379 = !DILocation(line: 325, column: 20, scope: !374)
!380 = !{!340, !331, i64 16}
!381 = !DILocation(line: 325, column: 7, scope: !374)
!382 = !DILocation(line: 325, column: 11, scope: !374)
!383 = !{!340, !331, i64 24}
!384 = !DILocation(line: 326, column: 13, scope: !385)
!385 = distinct !DILexicalBlock(scope: !374, file: !1, line: 326, column: 8)
!386 = !DILocation(line: 326, column: 19, scope: !385)
!387 = !DILocation(line: 326, column: 16, scope: !385)
!388 = !DILocation(line: 326, column: 8, scope: !374)
!389 = !DILocation(line: 328, column: 9, scope: !385)
!390 = !DILocation(line: 328, column: 18, scope: !385)
!391 = !DILocation(line: 328, column: 6, scope: !385)
!392 = !DILocation(line: 328, column: 23, scope: !385)
!393 = !DILocation(line: 0, scope: !385)
!394 = !DILocation(line: 329, column: 7, scope: !374)
!395 = !DILocation(line: 329, column: 14, scope: !374)
!396 = !DILocation(line: 330, column: 4, scope: !374)
!397 = !DILocation(line: 333, column: 16, scope: !374)
!398 = !DILocation(line: 333, column: 23, scope: !374)
!399 = !DILocation(line: 333, column: 7, scope: !374)
!400 = !DILocation(line: 333, column: 11, scope: !374)
!401 = !DILocation(line: 334, column: 7, scope: !374)
!402 = !DILocation(line: 334, column: 11, scope: !374)
!403 = !DILocation(line: 335, column: 4, scope: !374)
!404 = !DILocation(line: 338, column: 16, scope: !374)
!405 = !DILocation(line: 338, column: 23, scope: !374)
!406 = !DILocation(line: 338, column: 7, scope: !374)
!407 = !DILocation(line: 338, column: 11, scope: !374)
!408 = !DILocation(line: 339, column: 12, scope: !374)
!409 = !DILocation(line: 340, column: 4, scope: !374)
!410 = !DILocation(line: 342, column: 4, scope: !374)
!411 = !DILocation(line: 0, scope: !353)
!412 = !DILocation(line: 346, column: 3, scope: !286)
!413 = !DILocation(line: 347, column: 7, scope: !286)
!414 = !DILocation(line: 347, column: 13, scope: !286)
!415 = !{!328, !329, i64 18}
!416 = !DILocation(line: 348, column: 16, scope: !286)
!417 = !DILocation(line: 348, column: 7, scope: !286)
!418 = !DILocation(line: 348, column: 14, scope: !286)
!419 = !DILocation(line: 349, column: 7, scope: !286)
!420 = !DILocation(line: 349, column: 15, scope: !286)
!421 = !{!328, !310, i64 48}
!422 = !DILocation(line: 350, column: 21, scope: !286)
!423 = !DILocation(line: 350, column: 15, scope: !286)
!424 = !DILocation(line: 350, column: 7, scope: !286)
!425 = !DILocation(line: 350, column: 13, scope: !286)
!426 = !{!328, !310, i64 56}
!427 = !DILocation(line: 351, column: 22, scope: !286)
!428 = !DILocation(line: 351, column: 16, scope: !286)
!429 = !DILocation(line: 351, column: 7, scope: !286)
!430 = !DILocation(line: 351, column: 14, scope: !286)
!431 = !{!328, !310, i64 64}
!432 = !DILocation(line: 352, column: 7, scope: !286)
!433 = !DILocation(line: 352, column: 13, scope: !286)
!434 = !{!328, !310, i64 72}
!435 = !DILocation(line: 357, column: 7, scope: !286)
!436 = !DILocation(line: 357, column: 14, scope: !286)
!437 = !{!328, !310, i64 80}
!438 = !DILocation(line: 358, column: 3, scope: !286)
!439 = !DILocation(line: 358, column: 3, scope: !52)
!440 = !DILocation(line: 359, column: 3, scope: !52)
!441 = !DILocation(line: 0, scope: !303)
!442 = !DILocation(line: 0, scope: !291)
!443 = !DILocation(line: 360, column: 1, scope: !52)
!444 = distinct !DISubprogram(name: "fmemreader", scope: !1, file: !1, line: 86, type: !79, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !445)
!445 = !{!446, !447, !448, !449, !450}
!446 = !DILocalVariable(name: "ptr", arg: 1, scope: !444, file: !1, line: 86, type: !82)
!447 = !DILocalVariable(name: "cookie", arg: 2, scope: !444, file: !1, line: 86, type: !22)
!448 = !DILocalVariable(name: "buf", arg: 3, scope: !444, file: !1, line: 86, type: !29)
!449 = !DILocalVariable(name: "n", arg: 4, scope: !444, file: !1, line: 86, type: !5)
!450 = !DILocalVariable(name: "c", scope: !444, file: !1, line: 92, type: !23)
!451 = !DILocation(line: 86, column: 1, scope: !444)
!452 = !DILocation(line: 92, column: 15, scope: !444)
!453 = !DILocation(line: 94, column: 10, scope: !454)
!454 = distinct !DILexicalBlock(scope: !444, file: !1, line: 94, column: 7)
!455 = !DILocation(line: 94, column: 19, scope: !454)
!456 = !DILocation(line: 94, column: 14, scope: !454)
!457 = !DILocation(line: 94, column: 7, scope: !444)
!458 = !DILocation(line: 96, column: 7, scope: !459)
!459 = distinct !DILexicalBlock(scope: !444, file: !1, line: 96, column: 7)
!460 = !DILocation(line: 96, column: 19, scope: !459)
!461 = !DILocation(line: 96, column: 9, scope: !459)
!462 = !DILocation(line: 96, column: 7, scope: !444)
!463 = !DILocation(line: 97, column: 5, scope: !459)
!464 = !DILocation(line: 98, column: 33, scope: !444)
!465 = !DILocation(line: 98, column: 19, scope: !444)
!466 = !DILocation(line: 98, column: 23, scope: !444)
!467 = !DILocation(line: 98, column: 3, scope: !444)
!468 = !DILocation(line: 99, column: 10, scope: !444)
!469 = !DILocation(line: 100, column: 3, scope: !444)
!470 = !DILocation(line: 0, scope: !444)
!471 = !DILocation(line: 0, scope: !454)
!472 = !DILocation(line: 101, column: 1, scope: !444)
!473 = distinct !DISubprogram(name: "fmemwriter", scope: !1, file: !1, line: 106, type: !241, isLocal: true, isDefinition: true, scopeLine: 111, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !474)
!474 = !{!475, !476, !477, !478, !479, !480}
!475 = !DILocalVariable(name: "ptr", arg: 1, scope: !473, file: !1, line: 106, type: !82)
!476 = !DILocalVariable(name: "cookie", arg: 2, scope: !473, file: !1, line: 106, type: !22)
!477 = !DILocalVariable(name: "buf", arg: 3, scope: !473, file: !1, line: 106, type: !243)
!478 = !DILocalVariable(name: "n", arg: 4, scope: !473, file: !1, line: 106, type: !5)
!479 = !DILocalVariable(name: "c", scope: !473, file: !1, line: 112, type: !23)
!480 = !DILocalVariable(name: "adjust", scope: !473, file: !1, line: 113, type: !5)
!481 = !DILocation(line: 106, column: 1, scope: !473)
!482 = !DILocation(line: 113, column: 7, scope: !473)
!483 = !DILocation(line: 117, column: 10, scope: !484)
!484 = distinct !DILexicalBlock(scope: !473, file: !1, line: 117, column: 7)
!485 = !DILocation(line: 117, column: 7, scope: !484)
!486 = !DILocation(line: 117, column: 7, scope: !473)
!487 = !DILocation(line: 112, column: 15, scope: !473)
!488 = !DILocation(line: 118, column: 17, scope: !484)
!489 = !DILocation(line: 118, column: 8, scope: !484)
!490 = !DILocation(line: 118, column: 12, scope: !484)
!491 = !DILocation(line: 118, column: 5, scope: !484)
!492 = !DILocation(line: 119, column: 15, scope: !493)
!493 = distinct !DILexicalBlock(scope: !484, file: !1, line: 119, column: 12)
!494 = !DILocation(line: 119, column: 24, scope: !493)
!495 = !DILocation(line: 119, column: 19, scope: !493)
!496 = !DILocation(line: 119, column: 12, scope: !484)
!497 = !DILocation(line: 120, column: 16, scope: !493)
!498 = !DILocation(line: 120, column: 20, scope: !493)
!499 = !DILocation(line: 120, column: 43, scope: !493)
!500 = !DILocation(line: 120, column: 5, scope: !493)
!501 = !DILocation(line: 122, column: 10, scope: !502)
!502 = distinct !DILexicalBlock(scope: !473, file: !1, line: 122, column: 7)
!503 = !DILocation(line: 122, column: 16, scope: !502)
!504 = !DILocation(line: 122, column: 14, scope: !502)
!505 = !DILocation(line: 122, column: 23, scope: !502)
!506 = !DILocation(line: 122, column: 32, scope: !502)
!507 = !DILocation(line: 122, column: 29, scope: !502)
!508 = !DILocation(line: 122, column: 27, scope: !502)
!509 = !DILocation(line: 122, column: 18, scope: !502)
!510 = !DILocation(line: 122, column: 7, scope: !473)
!511 = !DILocation(line: 124, column: 16, scope: !512)
!512 = distinct !DILexicalBlock(scope: !502, file: !1, line: 123, column: 5)
!513 = !DILocation(line: 125, column: 18, scope: !512)
!514 = !DILocation(line: 125, column: 11, scope: !512)
!515 = !DILocation(line: 126, column: 5, scope: !512)
!516 = !DILocation(line: 132, column: 16, scope: !517)
!517 = distinct !DILexicalBlock(scope: !473, file: !1, line: 132, column: 7)
!518 = !DILocation(line: 132, column: 14, scope: !517)
!519 = !DILocation(line: 0, scope: !473)
!520 = !DILocation(line: 132, column: 23, scope: !517)
!521 = !DILocation(line: 132, column: 18, scope: !517)
!522 = !DILocation(line: 132, column: 7, scope: !473)
!523 = !DILocation(line: 134, column: 14, scope: !524)
!524 = distinct !DILexicalBlock(scope: !517, file: !1, line: 133, column: 5)
!525 = !DILocation(line: 135, column: 20, scope: !526)
!526 = distinct !DILexicalBlock(scope: !524, file: !1, line: 135, column: 11)
!527 = !DILocation(line: 135, column: 18, scope: !526)
!528 = !DILocation(line: 135, column: 27, scope: !526)
!529 = !DILocation(line: 135, column: 11, scope: !524)
!530 = !DILocation(line: 136, column: 16, scope: !526)
!531 = !DILocation(line: 136, column: 13, scope: !526)
!532 = !DILocation(line: 136, column: 37, scope: !526)
!533 = !DILocation(line: 136, column: 5, scope: !526)
!534 = !DILocation(line: 136, column: 11, scope: !526)
!535 = !DILocation(line: 136, column: 2, scope: !526)
!536 = !DILocation(line: 138, column: 12, scope: !537)
!537 = distinct !DILexicalBlock(scope: !517, file: !1, line: 138, column: 12)
!538 = !DILocation(line: 138, column: 12, scope: !517)
!539 = !DILocation(line: 140, column: 11, scope: !540)
!540 = distinct !DILexicalBlock(scope: !541, file: !1, line: 140, column: 11)
!541 = distinct !DILexicalBlock(scope: !537, file: !1, line: 139, column: 5)
!542 = !DILocation(line: 140, column: 11, scope: !541)
!543 = !DILocation(line: 142, column: 18, scope: !544)
!544 = distinct !DILexicalBlock(scope: !540, file: !1, line: 141, column: 2)
!545 = !DILocation(line: 142, column: 35, scope: !544)
!546 = !DILocation(line: 142, column: 33, scope: !544)
!547 = !DILocation(line: 142, column: 15, scope: !544)
!548 = !DILocation(line: 142, column: 7, scope: !544)
!549 = !DILocation(line: 142, column: 13, scope: !544)
!550 = !DILocation(line: 143, column: 32, scope: !544)
!551 = !DILocation(line: 144, column: 2, scope: !544)
!552 = !DILocation(line: 0, scope: !512)
!553 = !DILocation(line: 148, column: 10, scope: !473)
!554 = !DILocation(line: 149, column: 9, scope: !555)
!555 = distinct !DILexicalBlock(scope: !473, file: !1, line: 149, column: 7)
!556 = !DILocation(line: 149, column: 7, scope: !473)
!557 = !DILocation(line: 150, column: 16, scope: !555)
!558 = !DILocation(line: 150, column: 29, scope: !555)
!559 = !DILocation(line: 150, column: 39, scope: !555)
!560 = !DILocation(line: 150, column: 5, scope: !555)
!561 = !DILocation(line: 156, column: 3, scope: !473)
!562 = !DILocation(line: 153, column: 12, scope: !563)
!563 = distinct !DILexicalBlock(scope: !555, file: !1, line: 152, column: 5)
!564 = !DILocation(line: 153, column: 19, scope: !563)
!565 = !DILocation(line: 154, column: 7, scope: !563)
!566 = !DILocation(line: 0, scope: !563)
!567 = !DILocation(line: 157, column: 1, scope: !473)
!568 = distinct !DISubprogram(name: "fmemseeker", scope: !1, file: !1, line: 162, type: !247, isLocal: true, isDefinition: true, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !569)
!569 = !{!570, !571, !572, !573, !574, !575}
!570 = !DILocalVariable(name: "ptr", arg: 1, scope: !568, file: !1, line: 162, type: !82)
!571 = !DILocalVariable(name: "cookie", arg: 2, scope: !568, file: !1, line: 162, type: !22)
!572 = !DILocalVariable(name: "pos", arg: 3, scope: !568, file: !1, line: 162, type: !47)
!573 = !DILocalVariable(name: "whence", arg: 4, scope: !568, file: !1, line: 162, type: !5)
!574 = !DILocalVariable(name: "c", scope: !568, file: !1, line: 168, type: !23)
!575 = !DILocalVariable(name: "offset", scope: !568, file: !1, line: 170, type: !42)
!576 = !DILocation(line: 162, column: 1, scope: !568)
!577 = !DILocation(line: 170, column: 9, scope: !568)
!578 = !DILocation(line: 175, column: 14, scope: !579)
!579 = distinct !DILexicalBlock(scope: !568, file: !1, line: 175, column: 7)
!580 = !DILocation(line: 175, column: 7, scope: !568)
!581 = !DILocation(line: 177, column: 19, scope: !582)
!582 = distinct !DILexicalBlock(scope: !579, file: !1, line: 177, column: 12)
!583 = !DILocation(line: 177, column: 12, scope: !579)
!584 = !DILocation(line: 0, scope: !579)
!585 = !DILocation(line: 179, column: 14, scope: !586)
!586 = distinct !DILexicalBlock(scope: !568, file: !1, line: 179, column: 7)
!587 = !DILocation(line: 0, scope: !568)
!588 = !DILocation(line: 179, column: 7, scope: !568)
!589 = !DILocation(line: 181, column: 12, scope: !590)
!590 = distinct !DILexicalBlock(scope: !586, file: !1, line: 180, column: 5)
!591 = !DILocation(line: 181, column: 19, scope: !590)
!592 = !DILocation(line: 183, column: 5, scope: !590)
!593 = !DILocation(line: 184, column: 24, scope: !594)
!594 = distinct !DILexicalBlock(scope: !586, file: !1, line: 184, column: 12)
!595 = !DILocation(line: 184, column: 19, scope: !594)
!596 = !DILocation(line: 184, column: 12, scope: !586)
!597 = !DILocation(line: 186, column: 12, scope: !598)
!598 = distinct !DILexicalBlock(scope: !594, file: !1, line: 185, column: 5)
!599 = !DILocation(line: 186, column: 19, scope: !598)
!600 = !DILocation(line: 188, column: 5, scope: !598)
!601 = !DILocation(line: 198, column: 14, scope: !602)
!602 = distinct !DILexicalBlock(scope: !603, file: !1, line: 198, column: 11)
!603 = distinct !DILexicalBlock(scope: !594, file: !1, line: 197, column: 5)
!604 = !DILocation(line: 198, column: 11, scope: !602)
!605 = !DILocation(line: 198, column: 24, scope: !602)
!606 = !DILocation(line: 0, scope: !602)
!607 = !DILocation(line: 203, column: 14, scope: !603)
!608 = !DILocation(line: 204, column: 24, scope: !609)
!609 = distinct !DILexicalBlock(scope: !603, file: !1, line: 204, column: 11)
!610 = !DILocation(line: 198, column: 30, scope: !602)
!611 = !DILocation(line: 198, column: 39, scope: !602)
!612 = !DILocation(line: 198, column: 34, scope: !602)
!613 = !DILocation(line: 198, column: 11, scope: !603)
!614 = !DILocation(line: 200, column: 24, scope: !615)
!615 = distinct !DILexicalBlock(scope: !602, file: !1, line: 199, column: 2)
!616 = !DILocation(line: 200, column: 7, scope: !615)
!617 = !DILocation(line: 200, column: 4, scope: !615)
!618 = !DILocation(line: 200, column: 19, scope: !615)
!619 = !DILocation(line: 201, column: 13, scope: !615)
!620 = !DILocation(line: 202, column: 2, scope: !615)
!621 = !DILocation(line: 204, column: 14, scope: !609)
!622 = !DILocation(line: 204, column: 11, scope: !609)
!623 = !DILocation(line: 204, column: 39, scope: !609)
!624 = !DILocation(line: 204, column: 34, scope: !609)
!625 = !DILocation(line: 204, column: 11, scope: !603)
!626 = !DILocation(line: 206, column: 18, scope: !627)
!627 = distinct !DILexicalBlock(scope: !609, file: !1, line: 205, column: 2)
!628 = !DILocation(line: 206, column: 15, scope: !627)
!629 = !DILocation(line: 206, column: 7, scope: !627)
!630 = !DILocation(line: 206, column: 13, scope: !627)
!631 = !DILocation(line: 207, column: 19, scope: !627)
!632 = !DILocation(line: 208, column: 2, scope: !627)
!633 = !DILocation(line: 210, column: 3, scope: !568)
!634 = distinct !DISubprogram(name: "fmemcloser", scope: !1, file: !1, line: 259, type: !251, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !635)
!635 = !{!636, !637, !638}
!636 = !DILocalVariable(name: "ptr", arg: 1, scope: !634, file: !1, line: 259, type: !82)
!637 = !DILocalVariable(name: "cookie", arg: 2, scope: !634, file: !1, line: 259, type: !22)
!638 = !DILocalVariable(name: "c", scope: !634, file: !1, line: 263, type: !23)
!639 = !DILocation(line: 259, column: 1, scope: !634)
!640 = !DILocation(line: 263, column: 15, scope: !634)
!641 = !DILocation(line: 264, column: 3, scope: !634)
!642 = !DILocation(line: 265, column: 3, scope: !634)
!643 = distinct !DISubprogram(name: "fmemopen", scope: !1, file: !1, line: 364, type: !644, isLocal: false, isDefinition: true, scopeLine: 368, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !646)
!644 = !DISubroutineType(types: !645)
!645 = !{!55, !270, !32, !271}
!646 = !{!647, !648, !649}
!647 = !DILocalVariable(name: "buf", arg: 1, scope: !643, file: !1, line: 364, type: !270)
!648 = !DILocalVariable(name: "size", arg: 2, scope: !643, file: !1, line: 364, type: !32)
!649 = !DILocalVariable(name: "mode", arg: 3, scope: !643, file: !1, line: 364, type: !271)
!650 = !DILocation(line: 364, column: 1, scope: !643)
!651 = !DILocation(line: 369, column: 23, scope: !643)
!652 = !DILocation(line: 369, column: 10, scope: !643)
!653 = !DILocation(line: 369, column: 3, scope: !643)
