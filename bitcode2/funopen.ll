; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/funopen.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/funopen.c"
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
define dso_local %struct.__sFILE* @_funopen_r(%struct._reent*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*)*) local_unnamed_addr #0 !dbg !61 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = icmp ne i32 (i8*, i8*, i32)* %2, null, !dbg !295
  %10 = icmp ne i32 (i8*, i8*, i32)* %3, null, !dbg !297
  %11 = or i1 %9, %10, !dbg !298
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !298
  br i1 %11, label %14, label %12, !dbg !298

; <label>:12:                                     ; preds = %6
  %13 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !299
  store i32 22, i32* %13, align 8, !dbg !301, !tbaa !302
  br label %64, !dbg !311

; <label>:14:                                     ; preds = %6
  %15 = tail call %struct.__sFILE* @__sfp(%struct._reent* %0) #4, !dbg !312
  %16 = icmp eq %struct.__sFILE* %15, null, !dbg !315
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !316
  br i1 %16, label %64, label %17, !dbg !316

; <label>:17:                                     ; preds = %14
  %18 = tail call i8* @malloc(i64 40) #4, !dbg !317
  %19 = icmp eq i8* %18, null, !dbg !319
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !320
  br i1 %19, label %20, label %26, !dbg !320

; <label>:20:                                     ; preds = %17
  %21 = bitcast i32* %7 to i8*, !dbg !321
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %21) #5, !dbg !321
  %22 = call i32 @pthread_setcancelstate(i32 1, i32* nonnull %7) #4, !dbg !321
  call void @__sfp_lock_acquire() #4, !dbg !321
  %23 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %15, i64 0, i32 3, !dbg !322
  store i16 0, i16* %23, align 8, !dbg !323, !tbaa !324
  call void @__sfp_lock_release() #4, !dbg !330
  %24 = load i32, i32* %7, align 4, !dbg !330, !tbaa !331
  %25 = call i32 @pthread_setcancelstate(i32 %24, i32* nonnull %7) #4, !dbg !330
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %21) #5, !dbg !332
  br label %64, !dbg !333

; <label>:26:                                     ; preds = %17
  %27 = bitcast i32* %8 to i8*, !dbg !334
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %27) #5, !dbg !334
  %28 = call i32 @pthread_setcancelstate(i32 1, i32* nonnull %8) #4, !dbg !334
  %29 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %15, i64 0, i32 4, !dbg !335
  store i16 -1, i16* %29, align 2, !dbg !336, !tbaa !337
  %30 = bitcast i8* %18 to i8**, !dbg !338
  store i8* %1, i8** %30, align 8, !dbg !339, !tbaa !340
  %31 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %15, i64 0, i32 7, !dbg !342
  store i8* %18, i8** %31, align 8, !dbg !343, !tbaa !344
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !345
  br i1 %9, label %32, label %45, !dbg !345

; <label>:32:                                     ; preds = %26
  %33 = getelementptr inbounds i8, i8* %18, i64 8, !dbg !346
  %34 = bitcast i8* %33 to i32 (i8*, i8*, i32)**, !dbg !346
  store i32 (i8*, i8*, i32)* %2, i32 (i8*, i8*, i32)** %34, align 8, !dbg !349, !tbaa !350
  %35 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %15, i64 0, i32 8, !dbg !351
  store i64 (%struct._reent*, i8*, i8*, i32)* @funreader, i64 (%struct._reent*, i8*, i8*, i32)** %35, align 8, !dbg !352, !tbaa !353
  %36 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %15, i64 0, i32 3, !dbg !354
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !357
  br i1 %10, label %37, label %41, !dbg !357

; <label>:37:                                     ; preds = %32
  store i16 16, i16* %36, align 8, !dbg !358, !tbaa !324
  %38 = getelementptr inbounds i8, i8* %18, i64 16, !dbg !360
  %39 = bitcast i8* %38 to i32 (i8*, i8*, i32)**, !dbg !360
  store i32 (i8*, i8*, i32)* %3, i32 (i8*, i8*, i32)** %39, align 8, !dbg !361, !tbaa !362
  %40 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %15, i64 0, i32 9, !dbg !363
  store i64 (%struct._reent*, i8*, i8*, i32)* @funwriter, i64 (%struct._reent*, i8*, i8*, i32)** %40, align 8, !dbg !364, !tbaa !365
  br label %53, !dbg !366

; <label>:41:                                     ; preds = %32
  store i16 4, i16* %36, align 8, !dbg !367, !tbaa !324
  %42 = getelementptr inbounds i8, i8* %18, i64 16, !dbg !368
  %43 = bitcast i8* %42 to i32 (i8*, i8*, i32)**, !dbg !368
  store i32 (i8*, i8*, i32)* null, i32 (i8*, i8*, i32)** %43, align 8, !dbg !369, !tbaa !362
  %44 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %15, i64 0, i32 9, !dbg !370
  store i64 (%struct._reent*, i8*, i8*, i32)* null, i64 (%struct._reent*, i8*, i8*, i32)** %44, align 8, !dbg !371, !tbaa !365
  br label %53

; <label>:45:                                     ; preds = %26
  %46 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %15, i64 0, i32 3, !dbg !372
  store i16 8, i16* %46, align 8, !dbg !374, !tbaa !324
  %47 = getelementptr inbounds i8, i8* %18, i64 16, !dbg !375
  %48 = bitcast i8* %47 to i32 (i8*, i8*, i32)**, !dbg !375
  store i32 (i8*, i8*, i32)* %3, i32 (i8*, i8*, i32)** %48, align 8, !dbg !376, !tbaa !362
  %49 = getelementptr inbounds i8, i8* %18, i64 8, !dbg !377
  %50 = bitcast i8* %49 to i32 (i8*, i8*, i32)**, !dbg !377
  store i32 (i8*, i8*, i32)* null, i32 (i8*, i8*, i32)** %50, align 8, !dbg !378, !tbaa !350
  %51 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %15, i64 0, i32 8, !dbg !379
  %52 = bitcast i64 (%struct._reent*, i8*, i8*, i32)** %51 to <2 x i64 (%struct._reent*, i8*, i8*, i32)*>*, !dbg !380
  store <2 x i64 (%struct._reent*, i8*, i8*, i32)*> <i64 (%struct._reent*, i8*, i8*, i32)* null, i64 (%struct._reent*, i8*, i8*, i32)* @funwriter>, <2 x i64 (%struct._reent*, i8*, i8*, i32)*>* %52, align 8, !dbg !380, !tbaa !381
  br label %53

; <label>:53:                                     ; preds = %37, %41, %45
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %54 = getelementptr inbounds i8, i8* %18, i64 24, !dbg !382
  %55 = bitcast i8* %54 to i64 (i8*, i64, i32)**, !dbg !382
  store i64 (i8*, i64, i32)* %4, i64 (i8*, i64, i32)** %55, align 8, !dbg !383, !tbaa !384
  %56 = icmp eq i64 (i8*, i64, i32)* %4, null, !dbg !385
  %57 = select i1 %56, i64 (%struct._reent*, i8*, i64, i32)* null, i64 (%struct._reent*, i8*, i64, i32)* @funseeker, !dbg !385
  %58 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %15, i64 0, i32 10, !dbg !386
  store i64 (%struct._reent*, i8*, i64, i32)* %57, i64 (%struct._reent*, i8*, i64, i32)** %58, align 8, !dbg !387, !tbaa !388
  %59 = getelementptr inbounds i8, i8* %18, i64 32, !dbg !389
  %60 = bitcast i8* %59 to i32 (i8*)**, !dbg !389
  store i32 (i8*)* %5, i32 (i8*)** %60, align 8, !dbg !390, !tbaa !391
  %61 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %15, i64 0, i32 11, !dbg !392
  store i32 (%struct._reent*, i8*)* @funcloser, i32 (%struct._reent*, i8*)** %61, align 8, !dbg !393, !tbaa !394
  %62 = load i32, i32* %8, align 4, !dbg !395, !tbaa !331
  %63 = call i32 @pthread_setcancelstate(i32 %62, i32* nonnull %8) #4, !dbg !395
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %27) #5, !dbg !396
  br label %64, !dbg !397

; <label>:64:                                     ; preds = %14, %53, %20, %12
  %65 = phi %struct.__sFILE* [ null, %20 ], [ %15, %53 ], [ null, %12 ], [ null, %14 ], !dbg !398
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !398
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !399
  ret %struct.__sFILE* %65, !dbg !399
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

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

; Function Attrs: noredzone nounwind
define internal i64 @funreader(%struct._reent* nocapture, i8* nocapture readonly, i8*, i32) #0 !dbg !400 {
  %5 = tail call i32* @__errno() #4, !dbg !410
  store i32 0, i32* %5, align 4, !dbg !411, !tbaa !331
  %6 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !412
  %7 = bitcast i8* %6 to i32 (i8*, i8*, i32)**, !dbg !412
  %8 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %7, align 8, !dbg !412, !tbaa !350
  %9 = bitcast i8* %1 to i8**, !dbg !414
  %10 = load i8*, i8** %9, align 8, !dbg !414, !tbaa !340
  %11 = tail call i32 %8(i8* %10, i8* %2, i32 %3) #4, !dbg !415
  %12 = icmp slt i32 %11, 0, !dbg !417
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !418
  br i1 %12, label %13, label %21, !dbg !418

; <label>:13:                                     ; preds = %4
  %14 = tail call i32* @__errno() #4, !dbg !419
  %15 = load i32, i32* %14, align 4, !dbg !419, !tbaa !331
  %16 = icmp eq i32 %15, 0, !dbg !419
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !420
  br i1 %16, label %21, label %17, !dbg !420

; <label>:17:                                     ; preds = %13
  %18 = tail call i32* @__errno() #4, !dbg !421
  %19 = load i32, i32* %18, align 4, !dbg !421, !tbaa !331
  %20 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !422
  store i32 %19, i32* %20, align 8, !dbg !423, !tbaa !302
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !424
  br label %21, !dbg !424

; <label>:21:                                     ; preds = %13, %17, %4
  %22 = sext i32 %11 to i64, !dbg !425
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !426
  ret i64 %22, !dbg !426
}

; Function Attrs: noredzone nounwind
define internal i64 @funwriter(%struct._reent* nocapture, i8* nocapture readonly, i8*, i32) #0 !dbg !427 {
  %5 = tail call i32* @__errno() #4, !dbg !437
  store i32 0, i32* %5, align 4, !dbg !438, !tbaa !331
  %6 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !439
  %7 = bitcast i8* %6 to i32 (i8*, i8*, i32)**, !dbg !439
  %8 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %7, align 8, !dbg !439, !tbaa !362
  %9 = bitcast i8* %1 to i8**, !dbg !441
  %10 = load i8*, i8** %9, align 8, !dbg !441, !tbaa !340
  %11 = tail call i32 %8(i8* %10, i8* %2, i32 %3) #4, !dbg !442
  %12 = icmp slt i32 %11, 0, !dbg !444
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !445
  br i1 %12, label %13, label %21, !dbg !445

; <label>:13:                                     ; preds = %4
  %14 = tail call i32* @__errno() #4, !dbg !446
  %15 = load i32, i32* %14, align 4, !dbg !446, !tbaa !331
  %16 = icmp eq i32 %15, 0, !dbg !446
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !447
  br i1 %16, label %21, label %17, !dbg !447

; <label>:17:                                     ; preds = %13
  %18 = tail call i32* @__errno() #4, !dbg !448
  %19 = load i32, i32* %18, align 4, !dbg !448, !tbaa !331
  %20 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !449
  store i32 %19, i32* %20, align 8, !dbg !450, !tbaa !302
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !451
  br label %21, !dbg !451

; <label>:21:                                     ; preds = %13, %17, %4
  %22 = sext i32 %11 to i64, !dbg !452
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !453
  ret i64 %22, !dbg !453
}

; Function Attrs: noredzone nounwind
define internal i64 @funseeker(%struct._reent* nocapture, i8* nocapture readonly, i64, i32) #0 !dbg !454 {
  %5 = tail call i32* @__errno() #4, !dbg !464
  store i32 0, i32* %5, align 4, !dbg !465, !tbaa !331
  %6 = getelementptr inbounds i8, i8* %1, i64 24, !dbg !466
  %7 = bitcast i8* %6 to i64 (i8*, i64, i32)**, !dbg !466
  %8 = load i64 (i8*, i64, i32)*, i64 (i8*, i64, i32)** %7, align 8, !dbg !466, !tbaa !384
  %9 = bitcast i8* %1 to i8**, !dbg !468
  %10 = load i8*, i8** %9, align 8, !dbg !468, !tbaa !340
  %11 = tail call i64 %8(i8* %10, i64 %2, i32 %3) #4, !dbg !469
  %12 = icmp slt i64 %11, 0, !dbg !471
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !472
  br i1 %12, label %13, label %21, !dbg !472

; <label>:13:                                     ; preds = %4
  %14 = tail call i32* @__errno() #4, !dbg !473
  %15 = load i32, i32* %14, align 4, !dbg !473, !tbaa !331
  %16 = icmp eq i32 %15, 0, !dbg !473
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !474
  br i1 %16, label %21, label %17, !dbg !474

; <label>:17:                                     ; preds = %13
  %18 = tail call i32* @__errno() #4, !dbg !475
  %19 = load i32, i32* %18, align 4, !dbg !475, !tbaa !331
  %20 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !476
  store i32 %19, i32* %20, align 8, !dbg !477, !tbaa !302
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !478
  br label %21, !dbg !478

; <label>:21:                                     ; preds = %13, %17, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !479
  ret i64 %11, !dbg !479
}

; Function Attrs: noredzone nounwind
define internal i32 @funcloser(%struct._reent* nocapture, i8*) #0 !dbg !480 {
  %3 = getelementptr inbounds i8, i8* %1, i64 32, !dbg !488
  %4 = bitcast i8* %3 to i32 (i8*)**, !dbg !488
  %5 = load i32 (i8*)*, i32 (i8*)** %4, align 8, !dbg !488, !tbaa !391
  %6 = icmp eq i32 (i8*)* %5, null, !dbg !490
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !491
  br i1 %6, label %22, label %7, !dbg !491

; <label>:7:                                      ; preds = %2
  %8 = tail call i32* @__errno() #4, !dbg !493
  store i32 0, i32* %8, align 4, !dbg !495, !tbaa !331
  %9 = load i32 (i8*)*, i32 (i8*)** %4, align 8, !dbg !496, !tbaa !391
  %10 = bitcast i8* %1 to i8**, !dbg !498
  %11 = load i8*, i8** %10, align 8, !dbg !498, !tbaa !340
  %12 = tail call i32 %9(i8* %11) #4, !dbg !499
  %13 = icmp slt i32 %12, 0, !dbg !500
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !501
  br i1 %13, label %14, label %22, !dbg !501

; <label>:14:                                     ; preds = %7
  %15 = tail call i32* @__errno() #4, !dbg !502
  %16 = load i32, i32* %15, align 4, !dbg !502, !tbaa !331
  %17 = icmp eq i32 %16, 0, !dbg !502
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !503
  br i1 %17, label %22, label %18, !dbg !503

; <label>:18:                                     ; preds = %14
  %19 = tail call i32* @__errno() #4, !dbg !504
  %20 = load i32, i32* %19, align 4, !dbg !504, !tbaa !331
  %21 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !505
  store i32 %20, i32* %21, align 8, !dbg !506, !tbaa !302
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !507
  br label %22, !dbg !507

; <label>:22:                                     ; preds = %14, %2, %7, %18
  %23 = phi i32 [ %12, %18 ], [ %12, %14 ], [ %12, %7 ], [ 0, %2 ], !dbg !508
  tail call void @free(i8* nonnull %1) #4, !dbg !509
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !510
  ret i32 %23, !dbg !510
}

; Function Attrs: noredzone nounwind
define dso_local %struct.__sFILE* @funopen(i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*)*) local_unnamed_addr #0 !dbg !511 {
  %6 = tail call %struct._reent* @__getreent() #4, !dbg !521
  %7 = tail call %struct.__sFILE* @_funopen_r(%struct._reent* %6, i8* %0, i32 (i8*, i8*, i32)* %1, i32 (i8*, i8*, i32)* %2, i64 (i8*, i64, i32)* %3, i32 (i8*)* %4) #6, !dbg !522
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !523
  ret %struct.__sFILE* %7, !dbg !523
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nobuiltin noredzone nounwind }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin noredzone }

!llvm.module.flags = !{!57, !58, !59}
!llvm.ident = !{!60}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !21)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/funopen.c", directory: "/root/.unikraft/apps/redis/build")
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
!21 = !{!22, !23, !47}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "funcookie", file: !1, line: 104, baseType: !25)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "funcookie", file: !1, line: 98, size: 320, elements: !26)
!26 = !{!27, !28, !35, !42, !52}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "cookie", scope: !25, file: !1, line: 99, baseType: !22, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "readfn", scope: !25, file: !1, line: 100, baseType: !29, size: 64, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "funread", file: !1, line: 88, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DISubroutineType(types: !32)
!32 = !{!5, !22, !33, !5}
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "writefn", scope: !25, file: !1, line: 101, baseType: !36, size: 64, offset: 128)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "funwrite", file: !1, line: 89, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DISubroutineType(types: !39)
!39 = !{!5, !22, !40, !5}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "seekfn", scope: !25, file: !1, line: 102, baseType: !43, size: 64, offset: 192)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "funseek", file: !1, line: 94, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DISubroutineType(types: !46)
!46 = !{!47, !22, !47, !5}
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !48, line: 73, baseType: !49)
!48 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !50, line: 114, baseType: !51)
!50 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!51 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "closefn", scope: !25, file: !1, line: 103, baseType: !53, size: 64, offset: 256)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "funclose", file: !1, line: 96, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DISubroutineType(types: !56)
!56 = !{!5, !22}
!57 = !{i32 2, !"Dwarf Version", i32 4}
!58 = !{i32 2, !"Debug Info Version", i32 3}
!59 = !{i32 1, !"wchar_size", i32 4}
!60 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!61 = distinct !DISubprogram(name: "_funopen_r", scope: !1, file: !1, line: 198, type: !62, isLocal: false, isDefinition: true, scopeLine: 205, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !279)
!62 = !DISubroutineType(types: !63)
!63 = !{!64, !90, !277, !29, !36, !43, !53}
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !48, line: 66, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !67, line: 287, baseType: !68)
!67 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !67, line: 181, size: 1408, elements: !69)
!69 = !{!70, !73, !74, !75, !77, !78, !83, !84, !85, !247, !251, !255, !259, !260, !261, !262, !264, !266, !267, !268, !270, !271, !275, !276}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !68, file: !67, line: 182, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !68, file: !67, line: 183, baseType: !5, size: 32, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !68, file: !67, line: 184, baseType: !5, size: 32, offset: 96)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !68, file: !67, line: 185, baseType: !76, size: 16, offset: 128)
!76 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !68, file: !67, line: 186, baseType: !76, size: 16, offset: 144)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !68, file: !67, line: 187, baseType: !79, size: 128, offset: 192)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !67, line: 117, size: 128, elements: !80)
!80 = !{!81, !82}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !79, file: !67, line: 118, baseType: !71, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !79, file: !67, line: 119, baseType: !5, size: 32, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !68, file: !67, line: 188, baseType: !5, size: 32, offset: 320)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !68, file: !67, line: 195, baseType: !22, size: 64, offset: 384)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !68, file: !67, line: 197, baseType: !86, size: 64, offset: 448)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DISubroutineType(types: !88)
!88 = !{!89, !90, !22, !33, !5}
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !50, line: 145, baseType: !51)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !67, line: 569, size: 14912, elements: !92)
!92 = !{!93, !94, !96, !97, !98, !99, !103, !104, !107, !108, !112, !127, !128, !129, !131, !132, !133, !211, !232, !233, !238, !245}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !91, file: !67, line: 571, baseType: !5, size: 32)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !91, file: !67, line: 576, baseType: !95, size: 64, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !91, file: !67, line: 576, baseType: !95, size: 64, offset: 128)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !91, file: !67, line: 576, baseType: !95, size: 64, offset: 192)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !91, file: !67, line: 578, baseType: !5, size: 32, offset: 256)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !91, file: !67, line: 579, baseType: !100, size: 200, offset: 288)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 200, elements: !101)
!101 = !{!102}
!102 = !DISubrange(count: 25)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !91, file: !67, line: 582, baseType: !5, size: 32, offset: 512)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !91, file: !67, line: 583, baseType: !105, size: 64, offset: 576)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !67, line: 40, flags: DIFlagFwdDecl)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !91, file: !67, line: 585, baseType: !5, size: 32, offset: 640)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !91, file: !67, line: 587, baseType: !109, size: 64, offset: 704)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DISubroutineType(types: !111)
!111 = !{null, !90}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !91, file: !67, line: 590, baseType: !113, size: 64, offset: 768)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !67, line: 47, size: 256, elements: !115)
!115 = !{!116, !117, !118, !119, !120, !121}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !114, file: !67, line: 49, baseType: !113, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !114, file: !67, line: 50, baseType: !5, size: 32, offset: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !114, file: !67, line: 50, baseType: !5, size: 32, offset: 96)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !114, file: !67, line: 50, baseType: !5, size: 32, offset: 128)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !114, file: !67, line: 50, baseType: !5, size: 32, offset: 160)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !114, file: !67, line: 51, baseType: !122, size: 32, offset: 192)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 32, elements: !125)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !67, line: 25, baseType: !124)
!124 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!125 = !{!126}
!126 = !DISubrange(count: 1)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !91, file: !67, line: 591, baseType: !5, size: 32, offset: 832)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !91, file: !67, line: 592, baseType: !113, size: 64, offset: 896)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !91, file: !67, line: 593, baseType: !130, size: 64, offset: 960)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !91, file: !67, line: 596, baseType: !5, size: 32, offset: 1024)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !91, file: !67, line: 597, baseType: !33, size: 64, offset: 1088)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !91, file: !67, line: 632, baseType: !134, size: 2880, offset: 1152)
!134 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !91, file: !67, line: 599, size: 2880, elements: !135)
!135 = !{!136, !202}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !134, file: !67, line: 622, baseType: !137, size: 1728)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !134, file: !67, line: 601, size: 1728, elements: !138)
!138 = !{!139, !140, !141, !145, !157, !158, !160, !170, !185, !186, !187, !191, !195, !196, !197, !198, !199, !200, !201}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !137, file: !67, line: 603, baseType: !124, size: 32)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !137, file: !67, line: 604, baseType: !33, size: 64, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !137, file: !67, line: 605, baseType: !142, size: 208, offset: 128)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 208, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 26)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !137, file: !67, line: 606, baseType: !146, size: 288, offset: 352)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !67, line: 55, size: 288, elements: !147)
!147 = !{!148, !149, !150, !151, !152, !153, !154, !155, !156}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !146, file: !67, line: 57, baseType: !5, size: 32)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !146, file: !67, line: 58, baseType: !5, size: 32, offset: 32)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !146, file: !67, line: 59, baseType: !5, size: 32, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !146, file: !67, line: 60, baseType: !5, size: 32, offset: 96)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !146, file: !67, line: 61, baseType: !5, size: 32, offset: 128)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !146, file: !67, line: 62, baseType: !5, size: 32, offset: 160)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !146, file: !67, line: 63, baseType: !5, size: 32, offset: 192)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !146, file: !67, line: 64, baseType: !5, size: 32, offset: 224)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !146, file: !67, line: 65, baseType: !5, size: 32, offset: 256)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !137, file: !67, line: 607, baseType: !5, size: 32, offset: 640)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !137, file: !67, line: 608, baseType: !159, size: 64, offset: 704)
!159 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !137, file: !67, line: 609, baseType: !161, size: 112, offset: 768)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !67, line: 319, size: 112, elements: !162)
!162 = !{!163, !168, !169}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !161, file: !67, line: 320, baseType: !164, size: 48)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 48, elements: !166)
!165 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!166 = !{!167}
!167 = !DISubrange(count: 3)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !161, file: !67, line: 321, baseType: !164, size: 48, offset: 48)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !161, file: !67, line: 322, baseType: !165, size: 16, offset: 96)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !137, file: !67, line: 610, baseType: !171, size: 64, offset: 896)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !50, line: 171, baseType: !172)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !50, line: 163, size: 64, elements: !173)
!173 = !{!174, !175}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !172, file: !50, line: 165, baseType: !5, size: 32)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !172, file: !50, line: 170, baseType: !176, size: 32, offset: 32)
!176 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !172, file: !50, line: 166, size: 32, elements: !177)
!177 = !{!178, !181}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !176, file: !50, line: 168, baseType: !179, size: 32)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !180, line: 124, baseType: !124)
!180 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!181 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !176, file: !50, line: 169, baseType: !182, size: 32)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 32, elements: !183)
!183 = !{!184}
!184 = !DISubrange(count: 4)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !137, file: !67, line: 611, baseType: !171, size: 64, offset: 960)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !137, file: !67, line: 612, baseType: !171, size: 64, offset: 1024)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !137, file: !67, line: 613, baseType: !188, size: 64, offset: 1088)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 64, elements: !189)
!189 = !{!190}
!190 = !DISubrange(count: 8)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !137, file: !67, line: 614, baseType: !192, size: 192, offset: 1152)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 192, elements: !193)
!193 = !{!194}
!194 = !DISubrange(count: 24)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !137, file: !67, line: 615, baseType: !5, size: 32, offset: 1344)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !137, file: !67, line: 616, baseType: !171, size: 64, offset: 1376)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !137, file: !67, line: 617, baseType: !171, size: 64, offset: 1440)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !137, file: !67, line: 618, baseType: !171, size: 64, offset: 1504)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !137, file: !67, line: 619, baseType: !171, size: 64, offset: 1568)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !137, file: !67, line: 620, baseType: !171, size: 64, offset: 1632)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !137, file: !67, line: 621, baseType: !5, size: 32, offset: 1696)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !134, file: !67, line: 631, baseType: !203, size: 2880)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !134, file: !67, line: 626, size: 2880, elements: !204)
!204 = !{!205, !209}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !203, file: !67, line: 629, baseType: !206, size: 1920)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 1920, elements: !207)
!207 = !{!208}
!208 = !DISubrange(count: 30)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !203, file: !67, line: 630, baseType: !210, size: 960, offset: 1920)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 960, elements: !207)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !91, file: !67, line: 636, baseType: !212, size: 64, offset: 4032)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !67, line: 93, size: 6336, elements: !214)
!214 = !{!215, !216, !217, !224}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !213, file: !67, line: 94, baseType: !212, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !213, file: !67, line: 95, baseType: !5, size: 32, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !213, file: !67, line: 97, baseType: !218, size: 2048, offset: 128)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 2048, elements: !222)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{null}
!222 = !{!223}
!223 = !DISubrange(count: 32)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !213, file: !67, line: 98, baseType: !225, size: 4160, offset: 2176)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !67, line: 74, size: 4160, elements: !226)
!226 = !{!227, !229, !230, !231}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !225, file: !67, line: 75, baseType: !228, size: 2048)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 2048, elements: !222)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !225, file: !67, line: 76, baseType: !228, size: 2048, offset: 2048)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !225, file: !67, line: 78, baseType: !123, size: 32, offset: 4096)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !225, file: !67, line: 81, baseType: !123, size: 32, offset: 4128)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !91, file: !67, line: 637, baseType: !213, size: 6336, offset: 4096)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !91, file: !67, line: 641, baseType: !234, size: 64, offset: 10432)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DISubroutineType(types: !237)
!237 = !{null, !5}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !91, file: !67, line: 646, baseType: !239, size: 192, offset: 10496)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !67, line: 291, size: 192, elements: !240)
!240 = !{!241, !243, !244}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !239, file: !67, line: 293, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !239, file: !67, line: 294, baseType: !5, size: 32, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !239, file: !67, line: 295, baseType: !95, size: 64, offset: 128)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !91, file: !67, line: 648, baseType: !246, size: 4224, offset: 10688)
!246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 4224, elements: !166)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !68, file: !67, line: 199, baseType: !248, size: 64, offset: 512)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DISubroutineType(types: !250)
!250 = !{!89, !90, !22, !40, !5}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !68, file: !67, line: 202, baseType: !252, size: 64, offset: 576)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DISubroutineType(types: !254)
!254 = !{!49, !90, !22, !49, !5}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !68, file: !67, line: 203, baseType: !256, size: 64, offset: 640)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DISubroutineType(types: !258)
!258 = !{!5, !90, !22}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !68, file: !67, line: 206, baseType: !79, size: 128, offset: 704)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !68, file: !67, line: 207, baseType: !71, size: 64, offset: 832)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !68, file: !67, line: 208, baseType: !5, size: 32, offset: 896)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !68, file: !67, line: 211, baseType: !263, size: 24, offset: 928)
!263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 24, elements: !166)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !68, file: !67, line: 212, baseType: !265, size: 8, offset: 952)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 8, elements: !125)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !68, file: !67, line: 215, baseType: !79, size: 128, offset: 960)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !68, file: !67, line: 218, baseType: !5, size: 32, offset: 1088)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !68, file: !67, line: 219, baseType: !269, size: 64, offset: 1152)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !50, line: 44, baseType: !51)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !68, file: !67, line: 222, baseType: !90, size: 64, offset: 1216)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !68, file: !67, line: 226, baseType: !272, size: 32, offset: 1280)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !50, line: 175, baseType: !273)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !274, line: 12, baseType: !5)
!274 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !68, file: !67, line: 228, baseType: !171, size: 64, offset: 1312)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !68, file: !67, line: 229, baseType: !5, size: 32, offset: 1376)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!279 = !{!280, !281, !282, !283, !284, !285, !286, !287, !288, !292}
!280 = !DILocalVariable(name: "ptr", arg: 1, scope: !61, file: !1, line: 198, type: !90)
!281 = !DILocalVariable(name: "cookie", arg: 2, scope: !61, file: !1, line: 198, type: !277)
!282 = !DILocalVariable(name: "readfn", arg: 3, scope: !61, file: !1, line: 198, type: !29)
!283 = !DILocalVariable(name: "writefn", arg: 4, scope: !61, file: !1, line: 198, type: !36)
!284 = !DILocalVariable(name: "seekfn", arg: 5, scope: !61, file: !1, line: 198, type: !43)
!285 = !DILocalVariable(name: "closefn", arg: 6, scope: !61, file: !1, line: 198, type: !53)
!286 = !DILocalVariable(name: "fp", scope: !61, file: !1, line: 206, type: !64)
!287 = !DILocalVariable(name: "c", scope: !61, file: !1, line: 207, type: !23)
!288 = !DILocalVariable(name: "__oldsfpcancel", scope: !289, file: !1, line: 218, type: !5)
!289 = distinct !DILexicalBlock(scope: !290, file: !1, line: 218, column: 7)
!290 = distinct !DILexicalBlock(scope: !291, file: !1, line: 217, column: 5)
!291 = distinct !DILexicalBlock(scope: !61, file: !1, line: 216, column: 7)
!292 = !DILocalVariable(name: "__oldfpcancel", scope: !293, file: !1, line: 227, type: !5)
!293 = distinct !DILexicalBlock(scope: !61, file: !1, line: 227, column: 3)
!294 = !DILocation(line: 198, column: 1, scope: !61)
!295 = !DILocation(line: 209, column: 8, scope: !296)
!296 = distinct !DILexicalBlock(scope: !61, file: !1, line: 209, column: 7)
!297 = !DILocation(line: 209, column: 19, scope: !296)
!298 = !DILocation(line: 209, column: 15, scope: !296)
!299 = !DILocation(line: 211, column: 12, scope: !300)
!300 = distinct !DILexicalBlock(scope: !296, file: !1, line: 210, column: 5)
!301 = !DILocation(line: 211, column: 19, scope: !300)
!302 = !{!303, !304, i64 0}
!303 = !{!"_reent", !304, i64 0, !307, i64 8, !307, i64 16, !307, i64 24, !304, i64 32, !305, i64 36, !304, i64 64, !307, i64 72, !304, i64 80, !307, i64 88, !307, i64 96, !304, i64 104, !307, i64 112, !307, i64 120, !304, i64 128, !307, i64 136, !305, i64 144, !307, i64 504, !308, i64 512, !307, i64 1304, !310, i64 1312, !305, i64 1336}
!304 = !{!"int", !305, i64 0}
!305 = !{!"omnipotent char", !306, i64 0}
!306 = !{!"Simple C/C++ TBAA"}
!307 = !{!"any pointer", !305, i64 0}
!308 = !{!"_atexit", !307, i64 0, !304, i64 8, !305, i64 16, !309, i64 272}
!309 = !{!"_on_exit_args", !305, i64 0, !305, i64 256, !304, i64 512, !304, i64 516}
!310 = !{!"_glue", !307, i64 0, !304, i64 8, !307, i64 16}
!311 = !DILocation(line: 212, column: 7, scope: !300)
!312 = !DILocation(line: 214, column: 13, scope: !313)
!313 = distinct !DILexicalBlock(scope: !61, file: !1, line: 214, column: 7)
!314 = !DILocation(line: 206, column: 9, scope: !61)
!315 = !DILocation(line: 214, column: 26, scope: !313)
!316 = !DILocation(line: 214, column: 7, scope: !61)
!317 = !DILocation(line: 216, column: 26, scope: !291)
!318 = !DILocation(line: 207, column: 14, scope: !61)
!319 = !DILocation(line: 216, column: 54, scope: !291)
!320 = !DILocation(line: 216, column: 7, scope: !61)
!321 = !DILocation(line: 218, column: 7, scope: !289)
!322 = !DILocation(line: 219, column: 11, scope: !289)
!323 = !DILocation(line: 219, column: 18, scope: !289)
!324 = !{!325, !326, i64 16}
!325 = !{!"__sFILE", !307, i64 0, !304, i64 8, !304, i64 12, !326, i64 16, !326, i64 18, !327, i64 24, !304, i64 40, !307, i64 48, !307, i64 56, !307, i64 64, !307, i64 72, !307, i64 80, !327, i64 88, !307, i64 104, !304, i64 112, !305, i64 116, !305, i64 119, !327, i64 120, !304, i64 136, !328, i64 144, !307, i64 152, !304, i64 160, !329, i64 164, !304, i64 172}
!326 = !{!"short", !305, i64 0}
!327 = !{!"__sbuf", !307, i64 0, !304, i64 8}
!328 = !{!"long", !305, i64 0}
!329 = !{!"", !304, i64 0, !305, i64 4}
!330 = !DILocation(line: 223, column: 7, scope: !289)
!331 = !{!304, !304, i64 0}
!332 = !DILocation(line: 223, column: 7, scope: !290)
!333 = !DILocation(line: 224, column: 7, scope: !290)
!334 = !DILocation(line: 227, column: 3, scope: !293)
!335 = !DILocation(line: 228, column: 7, scope: !293)
!336 = !DILocation(line: 228, column: 13, scope: !293)
!337 = !{!325, !326, i64 18}
!338 = !DILocation(line: 229, column: 6, scope: !293)
!339 = !DILocation(line: 229, column: 13, scope: !293)
!340 = !{!341, !307, i64 0}
!341 = !{!"funcookie", !307, i64 0, !307, i64 8, !307, i64 16, !307, i64 24, !307, i64 32}
!342 = !DILocation(line: 230, column: 7, scope: !293)
!343 = !DILocation(line: 230, column: 15, scope: !293)
!344 = !{!325, !307, i64 48}
!345 = !DILocation(line: 231, column: 7, scope: !293)
!346 = !DILocation(line: 233, column: 10, scope: !347)
!347 = distinct !DILexicalBlock(scope: !348, file: !1, line: 232, column: 5)
!348 = distinct !DILexicalBlock(scope: !293, file: !1, line: 231, column: 7)
!349 = !DILocation(line: 233, column: 17, scope: !347)
!350 = !{!341, !307, i64 8}
!351 = !DILocation(line: 234, column: 11, scope: !347)
!352 = !DILocation(line: 234, column: 17, scope: !347)
!353 = !{!325, !307, i64 56}
!354 = !DILocation(line: 0, scope: !355)
!355 = distinct !DILexicalBlock(scope: !356, file: !1, line: 242, column: 2)
!356 = distinct !DILexicalBlock(scope: !347, file: !1, line: 235, column: 11)
!357 = !DILocation(line: 235, column: 11, scope: !347)
!358 = !DILocation(line: 237, column: 15, scope: !359)
!359 = distinct !DILexicalBlock(scope: !356, file: !1, line: 236, column: 2)
!360 = !DILocation(line: 238, column: 7, scope: !359)
!361 = !DILocation(line: 238, column: 15, scope: !359)
!362 = !{!341, !307, i64 16}
!363 = !DILocation(line: 239, column: 8, scope: !359)
!364 = !DILocation(line: 239, column: 15, scope: !359)
!365 = !{!325, !307, i64 64}
!366 = !DILocation(line: 240, column: 2, scope: !359)
!367 = !DILocation(line: 243, column: 15, scope: !355)
!368 = !DILocation(line: 244, column: 7, scope: !355)
!369 = !DILocation(line: 244, column: 15, scope: !355)
!370 = !DILocation(line: 245, column: 8, scope: !355)
!371 = !DILocation(line: 245, column: 15, scope: !355)
!372 = !DILocation(line: 250, column: 11, scope: !373)
!373 = distinct !DILexicalBlock(scope: !348, file: !1, line: 249, column: 5)
!374 = !DILocation(line: 250, column: 18, scope: !373)
!375 = !DILocation(line: 251, column: 10, scope: !373)
!376 = !DILocation(line: 251, column: 18, scope: !373)
!377 = !DILocation(line: 253, column: 10, scope: !373)
!378 = !DILocation(line: 253, column: 17, scope: !373)
!379 = !DILocation(line: 254, column: 11, scope: !373)
!380 = !DILocation(line: 254, column: 17, scope: !373)
!381 = !{!307, !307, i64 0}
!382 = !DILocation(line: 256, column: 6, scope: !293)
!383 = !DILocation(line: 256, column: 13, scope: !293)
!384 = !{!341, !307, i64 24}
!385 = !DILocation(line: 257, column: 15, scope: !293)
!386 = !DILocation(line: 257, column: 7, scope: !293)
!387 = !DILocation(line: 257, column: 13, scope: !293)
!388 = !{!325, !307, i64 72}
!389 = !DILocation(line: 262, column: 6, scope: !293)
!390 = !DILocation(line: 262, column: 14, scope: !293)
!391 = !{!341, !307, i64 32}
!392 = !DILocation(line: 263, column: 7, scope: !293)
!393 = !DILocation(line: 263, column: 14, scope: !293)
!394 = !{!325, !307, i64 80}
!395 = !DILocation(line: 264, column: 3, scope: !293)
!396 = !DILocation(line: 264, column: 3, scope: !61)
!397 = !DILocation(line: 265, column: 3, scope: !61)
!398 = !DILocation(line: 0, scope: !300)
!399 = !DILocation(line: 266, column: 1, scope: !61)
!400 = distinct !DISubprogram(name: "funreader", scope: !1, file: !1, line: 107, type: !87, isLocal: true, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !401)
!401 = !{!402, !403, !404, !405, !406, !407}
!402 = !DILocalVariable(name: "ptr", arg: 1, scope: !400, file: !1, line: 107, type: !90)
!403 = !DILocalVariable(name: "cookie", arg: 2, scope: !400, file: !1, line: 107, type: !22)
!404 = !DILocalVariable(name: "buf", arg: 3, scope: !400, file: !1, line: 107, type: !33)
!405 = !DILocalVariable(name: "n", arg: 4, scope: !400, file: !1, line: 107, type: !5)
!406 = !DILocalVariable(name: "result", scope: !400, file: !1, line: 113, type: !5)
!407 = !DILocalVariable(name: "c", scope: !400, file: !1, line: 114, type: !23)
!408 = !DILocation(line: 107, column: 1, scope: !400)
!409 = !DILocation(line: 114, column: 14, scope: !400)
!410 = !DILocation(line: 115, column: 3, scope: !400)
!411 = !DILocation(line: 115, column: 9, scope: !400)
!412 = !DILocation(line: 116, column: 20, scope: !413)
!413 = distinct !DILexicalBlock(scope: !400, file: !1, line: 116, column: 7)
!414 = !DILocation(line: 116, column: 31, scope: !413)
!415 = !DILocation(line: 116, column: 17, scope: !413)
!416 = !DILocation(line: 113, column: 7, scope: !400)
!417 = !DILocation(line: 116, column: 48, scope: !413)
!418 = !DILocation(line: 116, column: 52, scope: !413)
!419 = !DILocation(line: 116, column: 55, scope: !413)
!420 = !DILocation(line: 116, column: 7, scope: !400)
!421 = !DILocation(line: 117, column: 19, scope: !413)
!422 = !DILocation(line: 117, column: 10, scope: !413)
!423 = !DILocation(line: 117, column: 17, scope: !413)
!424 = !DILocation(line: 117, column: 5, scope: !413)
!425 = !DILocation(line: 118, column: 10, scope: !400)
!426 = !DILocation(line: 118, column: 3, scope: !400)
!427 = distinct !DISubprogram(name: "funwriter", scope: !1, file: !1, line: 122, type: !249, isLocal: true, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !428)
!428 = !{!429, !430, !431, !432, !433, !434}
!429 = !DILocalVariable(name: "ptr", arg: 1, scope: !427, file: !1, line: 122, type: !90)
!430 = !DILocalVariable(name: "cookie", arg: 2, scope: !427, file: !1, line: 122, type: !22)
!431 = !DILocalVariable(name: "buf", arg: 3, scope: !427, file: !1, line: 122, type: !40)
!432 = !DILocalVariable(name: "n", arg: 4, scope: !427, file: !1, line: 122, type: !5)
!433 = !DILocalVariable(name: "result", scope: !427, file: !1, line: 128, type: !5)
!434 = !DILocalVariable(name: "c", scope: !427, file: !1, line: 129, type: !23)
!435 = !DILocation(line: 122, column: 1, scope: !427)
!436 = !DILocation(line: 129, column: 14, scope: !427)
!437 = !DILocation(line: 130, column: 3, scope: !427)
!438 = !DILocation(line: 130, column: 9, scope: !427)
!439 = !DILocation(line: 131, column: 20, scope: !440)
!440 = distinct !DILexicalBlock(scope: !427, file: !1, line: 131, column: 7)
!441 = !DILocation(line: 131, column: 32, scope: !440)
!442 = !DILocation(line: 131, column: 17, scope: !440)
!443 = !DILocation(line: 128, column: 7, scope: !427)
!444 = !DILocation(line: 131, column: 49, scope: !440)
!445 = !DILocation(line: 131, column: 53, scope: !440)
!446 = !DILocation(line: 131, column: 56, scope: !440)
!447 = !DILocation(line: 131, column: 7, scope: !427)
!448 = !DILocation(line: 132, column: 19, scope: !440)
!449 = !DILocation(line: 132, column: 10, scope: !440)
!450 = !DILocation(line: 132, column: 17, scope: !440)
!451 = !DILocation(line: 132, column: 5, scope: !440)
!452 = !DILocation(line: 133, column: 10, scope: !427)
!453 = !DILocation(line: 133, column: 3, scope: !427)
!454 = distinct !DISubprogram(name: "funseeker", scope: !1, file: !1, line: 137, type: !253, isLocal: true, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !455)
!455 = !{!456, !457, !458, !459, !460, !461}
!456 = !DILocalVariable(name: "ptr", arg: 1, scope: !454, file: !1, line: 137, type: !90)
!457 = !DILocalVariable(name: "cookie", arg: 2, scope: !454, file: !1, line: 137, type: !22)
!458 = !DILocalVariable(name: "off", arg: 3, scope: !454, file: !1, line: 137, type: !49)
!459 = !DILocalVariable(name: "whence", arg: 4, scope: !454, file: !1, line: 137, type: !5)
!460 = !DILocalVariable(name: "c", scope: !454, file: !1, line: 143, type: !23)
!461 = !DILocalVariable(name: "result", scope: !454, file: !1, line: 145, type: !47)
!462 = !DILocation(line: 137, column: 1, scope: !454)
!463 = !DILocation(line: 143, column: 14, scope: !454)
!464 = !DILocation(line: 146, column: 3, scope: !454)
!465 = !DILocation(line: 146, column: 9, scope: !454)
!466 = !DILocation(line: 147, column: 20, scope: !467)
!467 = distinct !DILexicalBlock(scope: !454, file: !1, line: 147, column: 7)
!468 = !DILocation(line: 147, column: 31, scope: !467)
!469 = !DILocation(line: 147, column: 17, scope: !467)
!470 = !DILocation(line: 145, column: 10, scope: !454)
!471 = !DILocation(line: 147, column: 62, scope: !467)
!472 = !DILocation(line: 147, column: 66, scope: !467)
!473 = !DILocation(line: 147, column: 69, scope: !467)
!474 = !DILocation(line: 147, column: 7, scope: !454)
!475 = !DILocation(line: 148, column: 19, scope: !467)
!476 = !DILocation(line: 148, column: 10, scope: !467)
!477 = !DILocation(line: 148, column: 17, scope: !467)
!478 = !DILocation(line: 148, column: 5, scope: !467)
!479 = !DILocation(line: 160, column: 3, scope: !454)
!480 = distinct !DISubprogram(name: "funcloser", scope: !1, file: !1, line: 181, type: !257, isLocal: true, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !481)
!481 = !{!482, !483, !484, !485}
!482 = !DILocalVariable(name: "ptr", arg: 1, scope: !480, file: !1, line: 181, type: !90)
!483 = !DILocalVariable(name: "cookie", arg: 2, scope: !480, file: !1, line: 181, type: !22)
!484 = !DILocalVariable(name: "result", scope: !480, file: !1, line: 185, type: !5)
!485 = !DILocalVariable(name: "c", scope: !480, file: !1, line: 186, type: !23)
!486 = !DILocation(line: 181, column: 1, scope: !480)
!487 = !DILocation(line: 185, column: 7, scope: !480)
!488 = !DILocation(line: 187, column: 10, scope: !489)
!489 = distinct !DILexicalBlock(scope: !480, file: !1, line: 187, column: 7)
!490 = !DILocation(line: 187, column: 7, scope: !489)
!491 = !DILocation(line: 187, column: 7, scope: !480)
!492 = !DILocation(line: 186, column: 14, scope: !480)
!493 = !DILocation(line: 189, column: 7, scope: !494)
!494 = distinct !DILexicalBlock(scope: !489, file: !1, line: 188, column: 5)
!495 = !DILocation(line: 189, column: 13, scope: !494)
!496 = !DILocation(line: 190, column: 24, scope: !497)
!497 = distinct !DILexicalBlock(scope: !494, file: !1, line: 190, column: 11)
!498 = !DILocation(line: 190, column: 36, scope: !497)
!499 = !DILocation(line: 190, column: 21, scope: !497)
!500 = !DILocation(line: 190, column: 45, scope: !497)
!501 = !DILocation(line: 190, column: 49, scope: !497)
!502 = !DILocation(line: 190, column: 52, scope: !497)
!503 = !DILocation(line: 190, column: 11, scope: !494)
!504 = !DILocation(line: 191, column: 16, scope: !497)
!505 = !DILocation(line: 191, column: 7, scope: !497)
!506 = !DILocation(line: 191, column: 14, scope: !497)
!507 = !DILocation(line: 191, column: 2, scope: !497)
!508 = !DILocation(line: 0, scope: !480)
!509 = !DILocation(line: 193, column: 3, scope: !480)
!510 = !DILocation(line: 194, column: 3, scope: !480)
!511 = distinct !DISubprogram(name: "funopen", scope: !1, file: !1, line: 270, type: !512, isLocal: false, isDefinition: true, scopeLine: 276, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !514)
!512 = !DISubroutineType(types: !513)
!513 = !{!64, !277, !29, !36, !43, !53}
!514 = !{!515, !516, !517, !518, !519}
!515 = !DILocalVariable(name: "cookie", arg: 1, scope: !511, file: !1, line: 270, type: !277)
!516 = !DILocalVariable(name: "readfn", arg: 2, scope: !511, file: !1, line: 270, type: !29)
!517 = !DILocalVariable(name: "writefn", arg: 3, scope: !511, file: !1, line: 270, type: !36)
!518 = !DILocalVariable(name: "seekfn", arg: 4, scope: !511, file: !1, line: 270, type: !43)
!519 = !DILocalVariable(name: "closefn", arg: 5, scope: !511, file: !1, line: 270, type: !53)
!520 = !DILocation(line: 270, column: 1, scope: !511)
!521 = !DILocation(line: 277, column: 22, scope: !511)
!522 = !DILocation(line: 277, column: 10, scope: !511)
!523 = !DILocation(line: 277, column: 3, scope: !511)
