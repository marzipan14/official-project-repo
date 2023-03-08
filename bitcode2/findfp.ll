; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/findfp.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/findfp.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._reent = type { i32, %struct.__sFILE*, %struct.__sFILE*, %struct.__sFILE*, i32, [25 x i8], i32, %struct.__locale_t*, i32, void (%struct._reent*)*, %struct._Bigint*, i32, %struct._Bigint*, %struct._Bigint**, i32, i8*, %union.anon.0, %struct._atexit*, %struct._atexit, void (i32)**, %struct._glue, [3 x %struct.__sFILE] }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i64, i32)*, i32 (%struct._reent*, i8*)*, %struct.__sbuf, i8*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64, %struct._reent*, i32, %struct._mbstate_t, i32 }
%struct.__sbuf = type { i8*, i32 }
%struct._mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__locale_t = type opaque
%struct._Bigint = type { %struct._Bigint*, i32, i32, i32, i32, [1 x i32] }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { [30 x i8*], [30 x i32] }
%struct._atexit = type { %struct._atexit*, i32, [32 x void ()*], %struct._on_exit_args }
%struct._on_exit_args = type { [32 x i8*], [32 x i8*], i32, i32 }
%struct._glue = type { %struct._glue*, i32, %struct.__sFILE* }

@_global_impure_ptr = external dso_local local_unnamed_addr constant %struct._reent*, align 8
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local %struct._glue* @__sfmoreglue(%struct._reent* nocapture readnone, i32) local_unnamed_addr #0 !dbg !252 {
  %3 = add nsw i32 %1, -1, !dbg !260
  %4 = sext i32 %3 to i64, !dbg !260
  %5 = mul nsw i64 %4, 176, !dbg !260
  %6 = add nsw i64 %5, 200, !dbg !260
  %7 = tail call i8* @malloc(i64 %6) #5, !dbg !260
  %8 = icmp eq i8* %7, null, !dbg !261
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !263
  br i1 %8, label %20, label %9, !dbg !263

; <label>:9:                                      ; preds = %2
  %10 = bitcast i8* %7 to %struct._glue*, !dbg !265
  %11 = bitcast i8* %7 to %struct._glue**, !dbg !266
  store %struct._glue* null, %struct._glue** %11, align 8, !dbg !267, !tbaa !268
  %12 = getelementptr inbounds i8, i8* %7, i64 8, !dbg !280
  %13 = bitcast i8* %12 to i32*, !dbg !280
  store i32 %1, i32* %13, align 8, !dbg !281, !tbaa !282
  %14 = getelementptr inbounds i8, i8* %7, i64 24, !dbg !283
  %15 = getelementptr inbounds i8, i8* %7, i64 16, !dbg !284
  %16 = bitcast i8* %15 to i8**, !dbg !285
  store i8* %14, i8** %16, align 8, !dbg !285, !tbaa !286
  %17 = sext i32 %1 to i64, !dbg !287
  %18 = mul nsw i64 %17, 176, !dbg !288
  %19 = tail call i8* @memset(i8* nonnull %14, i32 0, i64 %18) #5, !dbg !289
  br label %20, !dbg !290

; <label>:20:                                     ; preds = %2, %9
  %21 = phi %struct._glue* [ %10, %9 ], [ null, %2 ], !dbg !291
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !292
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !293
  ret %struct._glue* %21, !dbg !293
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone nounwind
define dso_local %struct.__sFILE* @__sfp(%struct._reent* nocapture) local_unnamed_addr #0 !dbg !294 {
  %2 = alloca i32, align 4
  %3 = bitcast i32* %2 to i8*, !dbg !306
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #6, !dbg !306
  %4 = call i32 @pthread_setcancelstate(i32 1, i32* nonnull %2) #5, !dbg !306
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !307
  %5 = load %struct._reent*, %struct._reent** @_global_impure_ptr, align 8, !dbg !311, !tbaa !313
  %6 = getelementptr inbounds %struct._reent, %struct._reent* %5, i64 0, i32 8, !dbg !314
  %7 = load i32, i32* %6, align 8, !dbg !314, !tbaa !315
  %8 = icmp eq i32 %7, 0, !dbg !311
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !319
  br i1 %8, label %9, label %10, !dbg !319

; <label>:9:                                      ; preds = %1
  call void @__sinit(%struct._reent* %5) #7, !dbg !320
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !320
  br label %10, !dbg !320

; <label>:10:                                     ; preds = %1, %9
  %11 = getelementptr inbounds %struct._reent, %struct._reent* %5, i64 0, i32 20, !dbg !321
  br label %12, !dbg !324

; <label>:12:                                     ; preds = %51, %10
  %13 = phi %struct._glue* [ %11, %10 ], [ %52, %51 ], !dbg !325
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !327
  %14 = getelementptr inbounds %struct._glue, %struct._glue* %13, i64 0, i32 2, !dbg !328
  %15 = load %struct.__sFILE*, %struct.__sFILE** %14, align 8, !dbg !328, !tbaa !331
  %16 = getelementptr inbounds %struct._glue, %struct._glue* %13, i64 0, i32 1, !dbg !333
  %17 = load i32, i32* %16, align 8, !dbg !333, !tbaa !334
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !336
  %18 = icmp sgt i32 %17, 0, !dbg !337
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !339
  br i1 %18, label %19, label %29, !dbg !339

; <label>:19:                                     ; preds = %12, %25
  %20 = phi i32 [ %26, %25 ], [ %17, %12 ]
  %21 = phi %struct.__sFILE* [ %27, %25 ], [ %15, %12 ]
  %22 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %21, i64 0, i32 3, !dbg !340
  %23 = load i16, i16* %22, align 8, !dbg !340, !tbaa !342
  %24 = icmp eq i16 %23, 0, !dbg !343
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !344
  br i1 %24, label %53, label %25, !dbg !344

; <label>:25:                                     ; preds = %19
  %26 = add nsw i32 %20, -1, !dbg !345
  %27 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %21, i64 1, !dbg !346
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !347
  %28 = icmp sgt i32 %20, 1, !dbg !337
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !339
  br i1 %28, label %19, label %29, !dbg !339, !llvm.loop !348

; <label>:29:                                     ; preds = %25, %12
  %30 = getelementptr inbounds %struct._glue, %struct._glue* %13, i64 0, i32 0, !dbg !350
  %31 = load %struct._glue*, %struct._glue** %30, align 8, !dbg !350, !tbaa !352
  %32 = icmp eq %struct._glue* %31, null, !dbg !353
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !354
  br i1 %32, label %33, label %51, !dbg !354

; <label>:33:                                     ; preds = %29
  %34 = call i8* @malloc(i64 728) #5, !dbg !357
  %35 = icmp eq i8* %34, null, !dbg !358
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !359
  br i1 %35, label %36, label %41, !dbg !359

; <label>:36:                                     ; preds = %33
  %37 = getelementptr inbounds %struct._glue, %struct._glue* %13, i64 0, i32 0, !dbg !350
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !361
  store %struct._glue* null, %struct._glue** %37, align 8, !dbg !362, !tbaa !352
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !363
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !364
  %38 = load i32, i32* %2, align 4, !dbg !367, !tbaa !368
  %39 = call i32 @pthread_setcancelstate(i32 %38, i32* nonnull %2) #5, !dbg !367
  %40 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !369
  store i32 12, i32* %40, align 8, !dbg !370, !tbaa !371
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !372
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #6, !dbg !373
  br label %72

; <label>:41:                                     ; preds = %33
  %42 = bitcast i8* %34 to %struct._glue**, !dbg !375
  store %struct._glue* null, %struct._glue** %42, align 8, !dbg !376, !tbaa !268
  %43 = getelementptr inbounds i8, i8* %34, i64 8, !dbg !377
  %44 = bitcast i8* %43 to i32*, !dbg !377
  store i32 4, i32* %44, align 8, !dbg !378, !tbaa !282
  %45 = getelementptr inbounds i8, i8* %34, i64 24, !dbg !379
  %46 = getelementptr inbounds i8, i8* %34, i64 16, !dbg !380
  %47 = bitcast i8* %46 to i8**, !dbg !381
  store i8* %45, i8** %47, align 8, !dbg !381, !tbaa !286
  %48 = call i8* @memset(i8* nonnull %45, i32 0, i64 704) #5, !dbg !382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !383
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !361
  %49 = bitcast %struct._glue* %13 to i8**, !dbg !362
  store i8* %34, i8** %49, align 8, !dbg !362, !tbaa !352
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !363
  %50 = bitcast i8* %34 to %struct._glue*, !dbg !363
  br label %51, !dbg !363

; <label>:51:                                     ; preds = %41, %29
  %52 = phi %struct._glue* [ %50, %41 ], [ %31, %29 ]
  br label %12, !dbg !327, !llvm.loop !384

; <label>:53:                                     ; preds = %19
  %54 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %21, i64 0, i32 3, !dbg !340
  %55 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %21, i64 0, i32 4, !dbg !387
  store i16 -1, i16* %55, align 2, !dbg !388, !tbaa !389
  store i16 1, i16* %54, align 8, !dbg !390, !tbaa !342
  %56 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %21, i64 0, i32 23, !dbg !391
  store i32 0, i32* %56, align 4, !dbg !392, !tbaa !393
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !394
  %57 = load i32, i32* %2, align 4, !dbg !396, !tbaa !368
  %58 = call i32 @pthread_setcancelstate(i32 %57, i32* nonnull %2) #5, !dbg !396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !373
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #6, !dbg !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %59 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %21, i64 0, i32 0, !dbg !397
  store i8* null, i8** %59, align 8, !dbg !398, !tbaa !399
  %60 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %21, i64 0, i32 2, !dbg !400
  store i32 0, i32* %60, align 4, !dbg !401, !tbaa !402
  %61 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %21, i64 0, i32 1, !dbg !403
  store i32 0, i32* %61, align 8, !dbg !404, !tbaa !405
  %62 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %21, i64 0, i32 5, i32 0, !dbg !406
  store i8* null, i8** %62, align 8, !dbg !407, !tbaa !408
  %63 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %21, i64 0, i32 5, i32 1, !dbg !409
  store i32 0, i32* %63, align 8, !dbg !410, !tbaa !411
  %64 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %21, i64 0, i32 6, !dbg !412
  store i32 0, i32* %64, align 8, !dbg !413, !tbaa !414
  %65 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %21, i64 0, i32 22, !dbg !415
  %66 = bitcast %struct._mbstate_t* %65 to i8*, !dbg !416
  %67 = call i8* @memset(i8* nonnull %66, i32 0, i64 8) #5, !dbg !417
  %68 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %21, i64 0, i32 12, i32 0, !dbg !418
  store i8* null, i8** %68, align 8, !dbg !419, !tbaa !420
  %69 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %21, i64 0, i32 12, i32 1, !dbg !421
  store i32 0, i32* %69, align 8, !dbg !422, !tbaa !423
  %70 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %21, i64 0, i32 17, i32 0, !dbg !424
  store i8* null, i8** %70, align 8, !dbg !425, !tbaa !426
  %71 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %21, i64 0, i32 17, i32 1, !dbg !427
  store i32 0, i32* %71, align 8, !dbg !428, !tbaa !429
  br label %72, !dbg !430

; <label>:72:                                     ; preds = %36, %53
  %73 = phi %struct.__sFILE* [ %21, %53 ], [ null, %36 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !431
  ret %struct.__sFILE* %73, !dbg !431
}

; Function Attrs: noredzone
declare dso_local i32 @pthread_setcancelstate(i32, i32*) local_unnamed_addr #2

; Function Attrs: norecurse noredzone nounwind
define dso_local void @__sfp_lock_acquire() local_unnamed_addr #3 !dbg !308 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !432
  ret void, !dbg !432
}

; Function Attrs: noredzone nounwind
define dso_local void @__sinit(%struct._reent*) local_unnamed_addr #0 !dbg !433 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !437
  %2 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 8, !dbg !440
  %3 = load i32, i32* %2, align 8, !dbg !440, !tbaa !315
  %4 = icmp eq i32 %3, 0, !dbg !442
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !443
  br i1 %4, label %5, label %71, !dbg !443

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 9, !dbg !444
  store void (%struct._reent*)* @_cleanup_r, void (%struct._reent*)** %6, align 8, !dbg !445, !tbaa !446
  %7 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 20, i32 0, !dbg !447
  store %struct._glue* null, %struct._glue** %7, align 8, !dbg !448, !tbaa !449
  %8 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 20, i32 1, !dbg !450
  store i32 3, i32* %8, align 8, !dbg !451, !tbaa !452
  %9 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 21, i64 0, !dbg !453
  %10 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 20, i32 2, !dbg !454
  store %struct.__sFILE* %9, %struct.__sFILE** %10, align 8, !dbg !455, !tbaa !456
  %11 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 1, !dbg !457
  %12 = load %struct.__sFILE*, %struct.__sFILE** %11, align 8, !dbg !457, !tbaa !458
  %13 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %12, i64 0, i32 0, !dbg !475
  store i8* null, i8** %13, align 8, !dbg !476, !tbaa !399
  %14 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %12, i64 0, i32 1, !dbg !477
  store i32 0, i32* %14, align 8, !dbg !478, !tbaa !405
  %15 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %12, i64 0, i32 2, !dbg !479
  store i32 0, i32* %15, align 4, !dbg !480, !tbaa !402
  %16 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %12, i64 0, i32 3, !dbg !481
  store i16 4, i16* %16, align 8, !dbg !482, !tbaa !342
  %17 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %12, i64 0, i32 23, !dbg !483
  store i32 0, i32* %17, align 4, !dbg !484, !tbaa !393
  %18 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %12, i64 0, i32 4, !dbg !485
  store i16 0, i16* %18, align 2, !dbg !486, !tbaa !389
  %19 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %12, i64 0, i32 5, i32 0, !dbg !487
  store i8* null, i8** %19, align 8, !dbg !488, !tbaa !408
  %20 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %12, i64 0, i32 5, i32 1, !dbg !489
  store i32 0, i32* %20, align 8, !dbg !490, !tbaa !411
  %21 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %12, i64 0, i32 6, !dbg !491
  store i32 0, i32* %21, align 8, !dbg !492, !tbaa !414
  %22 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %12, i64 0, i32 22, !dbg !493
  %23 = bitcast %struct._mbstate_t* %22 to i8*, !dbg !494
  %24 = tail call i8* @memset(i8* nonnull %23, i32 0, i64 8) #5, !dbg !495
  %25 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %12, i64 0, i32 7, !dbg !496
  %26 = bitcast i8** %25 to %struct.__sFILE**, !dbg !497
  store %struct.__sFILE* %12, %struct.__sFILE** %26, align 8, !dbg !497, !tbaa !498
  %27 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %12, i64 0, i32 8, !dbg !499
  %28 = bitcast i64 (%struct._reent*, i8*, i8*, i32)** %27 to <2 x i64 (%struct._reent*, i8*, i8*, i32)*>*, !dbg !500
  store <2 x i64 (%struct._reent*, i8*, i8*, i32)*> <i64 (%struct._reent*, i8*, i8*, i32)* @__sread, i64 (%struct._reent*, i8*, i8*, i32)* @__swrite>, <2 x i64 (%struct._reent*, i8*, i8*, i32)*>* %28, align 8, !dbg !500, !tbaa !313
  %29 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %12, i64 0, i32 10, !dbg !501
  store i64 (%struct._reent*, i8*, i64, i32)* @__sseek, i64 (%struct._reent*, i8*, i64, i32)** %29, align 8, !dbg !502, !tbaa !503
  %30 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %12, i64 0, i32 11, !dbg !504
  store i32 (%struct._reent*, i8*)* @__sclose, i32 (%struct._reent*, i8*)** %30, align 8, !dbg !505, !tbaa !506
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !507
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !508
  %31 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 2, !dbg !509
  %32 = load %struct.__sFILE*, %struct.__sFILE** %31, align 8, !dbg !509, !tbaa !510
  %33 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %32, i64 0, i32 0, !dbg !518
  store i8* null, i8** %33, align 8, !dbg !519, !tbaa !399
  %34 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %32, i64 0, i32 1, !dbg !520
  store i32 0, i32* %34, align 8, !dbg !521, !tbaa !405
  %35 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %32, i64 0, i32 2, !dbg !522
  store i32 0, i32* %35, align 4, !dbg !523, !tbaa !402
  %36 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %32, i64 0, i32 3, !dbg !524
  store i16 9, i16* %36, align 8, !dbg !525, !tbaa !342
  %37 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %32, i64 0, i32 23, !dbg !526
  store i32 0, i32* %37, align 4, !dbg !527, !tbaa !393
  %38 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %32, i64 0, i32 4, !dbg !528
  store i16 1, i16* %38, align 2, !dbg !529, !tbaa !389
  %39 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %32, i64 0, i32 5, i32 0, !dbg !530
  store i8* null, i8** %39, align 8, !dbg !531, !tbaa !408
  %40 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %32, i64 0, i32 5, i32 1, !dbg !532
  store i32 0, i32* %40, align 8, !dbg !533, !tbaa !411
  %41 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %32, i64 0, i32 6, !dbg !534
  store i32 0, i32* %41, align 8, !dbg !535, !tbaa !414
  %42 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %32, i64 0, i32 22, !dbg !536
  %43 = bitcast %struct._mbstate_t* %42 to i8*, !dbg !537
  %44 = tail call i8* @memset(i8* nonnull %43, i32 0, i64 8) #5, !dbg !538
  %45 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %32, i64 0, i32 7, !dbg !539
  %46 = bitcast i8** %45 to %struct.__sFILE**, !dbg !540
  store %struct.__sFILE* %32, %struct.__sFILE** %46, align 8, !dbg !540, !tbaa !498
  %47 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %32, i64 0, i32 8, !dbg !541
  %48 = bitcast i64 (%struct._reent*, i8*, i8*, i32)** %47 to <2 x i64 (%struct._reent*, i8*, i8*, i32)*>*, !dbg !542
  store <2 x i64 (%struct._reent*, i8*, i8*, i32)*> <i64 (%struct._reent*, i8*, i8*, i32)* @__sread, i64 (%struct._reent*, i8*, i8*, i32)* @__swrite>, <2 x i64 (%struct._reent*, i8*, i8*, i32)*>* %48, align 8, !dbg !542, !tbaa !313
  %49 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %32, i64 0, i32 10, !dbg !543
  store i64 (%struct._reent*, i8*, i64, i32)* @__sseek, i64 (%struct._reent*, i8*, i64, i32)** %49, align 8, !dbg !544, !tbaa !503
  %50 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %32, i64 0, i32 11, !dbg !545
  store i32 (%struct._reent*, i8*)* @__sclose, i32 (%struct._reent*, i8*)** %50, align 8, !dbg !546, !tbaa !506
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !547
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !548
  %51 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 3, !dbg !549
  %52 = load %struct.__sFILE*, %struct.__sFILE** %51, align 8, !dbg !549, !tbaa !550
  %53 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %52, i64 0, i32 0, !dbg !558
  store i8* null, i8** %53, align 8, !dbg !559, !tbaa !399
  %54 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %52, i64 0, i32 1, !dbg !560
  store i32 0, i32* %54, align 8, !dbg !561, !tbaa !405
  %55 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %52, i64 0, i32 2, !dbg !562
  store i32 0, i32* %55, align 4, !dbg !563, !tbaa !402
  %56 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %52, i64 0, i32 3, !dbg !564
  store i16 18, i16* %56, align 8, !dbg !565, !tbaa !342
  %57 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %52, i64 0, i32 23, !dbg !566
  store i32 0, i32* %57, align 4, !dbg !567, !tbaa !393
  %58 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %52, i64 0, i32 4, !dbg !568
  store i16 2, i16* %58, align 2, !dbg !569, !tbaa !389
  %59 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %52, i64 0, i32 5, i32 0, !dbg !570
  store i8* null, i8** %59, align 8, !dbg !571, !tbaa !408
  %60 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %52, i64 0, i32 5, i32 1, !dbg !572
  store i32 0, i32* %60, align 8, !dbg !573, !tbaa !411
  %61 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %52, i64 0, i32 6, !dbg !574
  store i32 0, i32* %61, align 8, !dbg !575, !tbaa !414
  %62 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %52, i64 0, i32 22, !dbg !576
  %63 = bitcast %struct._mbstate_t* %62 to i8*, !dbg !577
  %64 = tail call i8* @memset(i8* nonnull %63, i32 0, i64 8) #5, !dbg !578
  %65 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %52, i64 0, i32 7, !dbg !579
  %66 = bitcast i8** %65 to %struct.__sFILE**, !dbg !580
  store %struct.__sFILE* %52, %struct.__sFILE** %66, align 8, !dbg !580, !tbaa !498
  %67 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %52, i64 0, i32 8, !dbg !581
  %68 = bitcast i64 (%struct._reent*, i8*, i8*, i32)** %67 to <2 x i64 (%struct._reent*, i8*, i8*, i32)*>*, !dbg !582
  store <2 x i64 (%struct._reent*, i8*, i8*, i32)*> <i64 (%struct._reent*, i8*, i8*, i32)* @__sread, i64 (%struct._reent*, i8*, i8*, i32)* @__swrite>, <2 x i64 (%struct._reent*, i8*, i8*, i32)*>* %68, align 8, !dbg !582, !tbaa !313
  %69 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %52, i64 0, i32 10, !dbg !583
  store i64 (%struct._reent*, i8*, i64, i32)* @__sseek, i64 (%struct._reent*, i8*, i64, i32)** %69, align 8, !dbg !584, !tbaa !503
  %70 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %52, i64 0, i32 11, !dbg !585
  store i32 (%struct._reent*, i8*)* @__sclose, i32 (%struct._reent*, i8*)** %70, align 8, !dbg !586, !tbaa !506
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !587
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !588
  store i32 1, i32* %2, align 8, !dbg !589, !tbaa !315
  br label %71, !dbg !590

; <label>:71:                                     ; preds = %1, %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !591
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !594
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !590
  ret void, !dbg !590
}

; Function Attrs: norecurse noredzone nounwind
define dso_local void @__sfp_lock_release() local_unnamed_addr #3 !dbg !365 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !596
  ret void, !dbg !596
}

; Function Attrs: noredzone nounwind
define dso_local void @_cleanup_r(%struct._reent*) #0 !dbg !597 {
  %2 = tail call i32 @_fwalk_reent(%struct._reent* %0, i32 (%struct._reent*, %struct.__sFILE*)* nonnull @_fclose_r) #5, !dbg !606
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !607
  ret void, !dbg !607
}

; Function Attrs: noredzone
declare dso_local i32 @_fclose_r(%struct._reent*, %struct.__sFILE*) #2

; Function Attrs: noredzone
declare dso_local i32 @_fwalk_reent(%struct._reent*, i32 (%struct._reent*, %struct.__sFILE*)*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @_cleanup() local_unnamed_addr #0 !dbg !608 {
  %1 = load %struct._reent*, %struct._reent** @_global_impure_ptr, align 8, !dbg !609, !tbaa !313
  %2 = tail call i32 @_fwalk_reent(%struct._reent* %1, i32 (%struct._reent*, %struct.__sFILE*)* nonnull @_fclose_r) #5, !dbg !613
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !614
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !615
  ret void, !dbg !615
}

; Function Attrs: norecurse noredzone nounwind
define dso_local void @__sinit_lock_acquire() local_unnamed_addr #3 !dbg !438 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !616
  ret void, !dbg !616
}

; Function Attrs: norecurse noredzone nounwind
define dso_local void @__sinit_lock_release() local_unnamed_addr #3 !dbg !592 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !617
  ret void, !dbg !617
}

; Function Attrs: noredzone nounwind
define dso_local void @__fp_lock_all() local_unnamed_addr #0 !dbg !618 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !619
  %1 = tail call %struct._reent* @__getreent() #5, !dbg !621
  %2 = tail call i32 @_fwalk(%struct._reent* %1, i32 (%struct.__sFILE*)* nonnull @__fp_lock) #5, !dbg !622
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !623
  ret void, !dbg !623
}

; Function Attrs: noredzone
declare dso_local i32 @_fwalk(%struct._reent*, i32 (%struct.__sFILE*)*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal i32 @__fp_lock(%struct.__sFILE* nocapture readnone) #0 !dbg !624 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !630
  ret i32 0, !dbg !630
}

; Function Attrs: noredzone nounwind
define dso_local void @__fp_unlock_all() local_unnamed_addr #0 !dbg !631 {
  %1 = tail call %struct._reent* @__getreent() #5, !dbg !632
  %2 = tail call i32 @_fwalk(%struct._reent* %1, i32 (%struct.__sFILE*)* nonnull @__fp_unlock) #5, !dbg !633
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !634
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !636
  ret void, !dbg !636
}

; Function Attrs: noredzone nounwind
define internal i32 @__fp_unlock(%struct.__sFILE* nocapture readnone) #0 !dbg !637 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !641
  ret i32 0, !dbg !641
}

; Function Attrs: noredzone
declare dso_local i64 @__sread(%struct._reent*, i8*, i8*, i32) #2

; Function Attrs: noredzone
declare dso_local i64 @__swrite(%struct._reent*, i8*, i8*, i32) #2

; Function Attrs: noredzone
declare dso_local i64 @__sseek(%struct._reent*, i8*, i64, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @__sclose(%struct._reent*, i8*) #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { norecurse noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { nobuiltin noredzone nounwind }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin noredzone }

!llvm.module.flags = !{!248, !249, !250}
!llvm.ident = !{!251}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !21)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/findfp.c", directory: "/root/.unikraft/apps/redis/build")
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
!21 = !{!22, !52}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "glue_with_file", file: !1, line: 121, size: 1600, elements: !24)
!24 = !{!25, !245}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "glue", scope: !23, file: !1, line: 122, baseType: !26, size: 192)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !27, line: 291, size: 192, elements: !28)
!27 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!28 = !{!29, !31, !32}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !26, file: !27, line: 293, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !26, file: !27, line: 294, baseType: !5, size: 32, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !26, file: !27, line: 295, baseType: !33, size: 64, offset: 128)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !27, line: 287, baseType: !35)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !27, line: 181, size: 1408, elements: !36)
!36 = !{!37, !40, !41, !42, !44, !45, !50, !51, !53, !212, !218, !223, !227, !228, !229, !230, !232, !234, !235, !236, !238, !239, !243, !244}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !35, file: !27, line: 182, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !35, file: !27, line: 183, baseType: !5, size: 32, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !35, file: !27, line: 184, baseType: !5, size: 32, offset: 96)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !35, file: !27, line: 185, baseType: !43, size: 16, offset: 128)
!43 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !35, file: !27, line: 186, baseType: !43, size: 16, offset: 144)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !35, file: !27, line: 187, baseType: !46, size: 128, offset: 192)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !27, line: 117, size: 128, elements: !47)
!47 = !{!48, !49}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !46, file: !27, line: 118, baseType: !38, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !46, file: !27, line: 119, baseType: !5, size: 32, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !35, file: !27, line: 188, baseType: !5, size: 32, offset: 320)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !35, file: !27, line: 195, baseType: !52, size: 64, offset: 384)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !35, file: !27, line: 197, baseType: !54, size: 64, offset: 448)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DISubroutineType(types: !56)
!56 = !{!57, !60, !52, !103, !5}
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !58, line: 145, baseType: !59)
!58 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!59 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !27, line: 569, size: 14912, elements: !62)
!62 = !{!63, !64, !65, !66, !67, !68, !73, !74, !77, !78, !82, !97, !98, !99, !101, !102, !104, !182, !203, !204, !209, !210}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !61, file: !27, line: 571, baseType: !5, size: 32)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !61, file: !27, line: 576, baseType: !33, size: 64, offset: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !61, file: !27, line: 576, baseType: !33, size: 64, offset: 128)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !61, file: !27, line: 576, baseType: !33, size: 64, offset: 192)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !61, file: !27, line: 578, baseType: !5, size: 32, offset: 256)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !61, file: !27, line: 579, baseType: !69, size: 200, offset: 288)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 200, elements: !71)
!70 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!71 = !{!72}
!72 = !DISubrange(count: 25)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !61, file: !27, line: 582, baseType: !5, size: 32, offset: 512)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !61, file: !27, line: 583, baseType: !75, size: 64, offset: 576)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !27, line: 40, flags: DIFlagFwdDecl)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !61, file: !27, line: 585, baseType: !5, size: 32, offset: 640)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !61, file: !27, line: 587, baseType: !79, size: 64, offset: 704)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DISubroutineType(types: !81)
!81 = !{null, !60}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !61, file: !27, line: 590, baseType: !83, size: 64, offset: 768)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !27, line: 47, size: 256, elements: !85)
!85 = !{!86, !87, !88, !89, !90, !91}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !84, file: !27, line: 49, baseType: !83, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !84, file: !27, line: 50, baseType: !5, size: 32, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !84, file: !27, line: 50, baseType: !5, size: 32, offset: 96)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !84, file: !27, line: 50, baseType: !5, size: 32, offset: 128)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !84, file: !27, line: 50, baseType: !5, size: 32, offset: 160)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !84, file: !27, line: 51, baseType: !92, size: 32, offset: 192)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 32, elements: !95)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !27, line: 25, baseType: !94)
!94 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!95 = !{!96}
!96 = !DISubrange(count: 1)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !61, file: !27, line: 591, baseType: !5, size: 32, offset: 832)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !61, file: !27, line: 592, baseType: !83, size: 64, offset: 896)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !61, file: !27, line: 593, baseType: !100, size: 64, offset: 960)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !61, file: !27, line: 596, baseType: !5, size: 32, offset: 1024)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !61, file: !27, line: 597, baseType: !103, size: 64, offset: 1088)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !61, file: !27, line: 632, baseType: !105, size: 2880, offset: 1152)
!105 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !61, file: !27, line: 599, size: 2880, elements: !106)
!106 = !{!107, !173}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !105, file: !27, line: 622, baseType: !108, size: 1728)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !105, file: !27, line: 601, size: 1728, elements: !109)
!109 = !{!110, !111, !112, !116, !128, !129, !131, !141, !156, !157, !158, !162, !166, !167, !168, !169, !170, !171, !172}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !108, file: !27, line: 603, baseType: !94, size: 32)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !108, file: !27, line: 604, baseType: !103, size: 64, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !108, file: !27, line: 605, baseType: !113, size: 208, offset: 128)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 208, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 26)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !108, file: !27, line: 606, baseType: !117, size: 288, offset: 352)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !27, line: 55, size: 288, elements: !118)
!118 = !{!119, !120, !121, !122, !123, !124, !125, !126, !127}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !117, file: !27, line: 57, baseType: !5, size: 32)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !117, file: !27, line: 58, baseType: !5, size: 32, offset: 32)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !117, file: !27, line: 59, baseType: !5, size: 32, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !117, file: !27, line: 60, baseType: !5, size: 32, offset: 96)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !117, file: !27, line: 61, baseType: !5, size: 32, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !117, file: !27, line: 62, baseType: !5, size: 32, offset: 160)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !117, file: !27, line: 63, baseType: !5, size: 32, offset: 192)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !117, file: !27, line: 64, baseType: !5, size: 32, offset: 224)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !117, file: !27, line: 65, baseType: !5, size: 32, offset: 256)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !108, file: !27, line: 607, baseType: !5, size: 32, offset: 640)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !108, file: !27, line: 608, baseType: !130, size: 64, offset: 704)
!130 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !108, file: !27, line: 609, baseType: !132, size: 112, offset: 768)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !27, line: 319, size: 112, elements: !133)
!133 = !{!134, !139, !140}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !132, file: !27, line: 320, baseType: !135, size: 48)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 48, elements: !137)
!136 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!137 = !{!138}
!138 = !DISubrange(count: 3)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !132, file: !27, line: 321, baseType: !135, size: 48, offset: 48)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !132, file: !27, line: 322, baseType: !136, size: 16, offset: 96)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !108, file: !27, line: 610, baseType: !142, size: 64, offset: 896)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !58, line: 171, baseType: !143)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !58, line: 163, size: 64, elements: !144)
!144 = !{!145, !146}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !143, file: !58, line: 165, baseType: !5, size: 32)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !143, file: !58, line: 170, baseType: !147, size: 32, offset: 32)
!147 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !143, file: !58, line: 166, size: 32, elements: !148)
!148 = !{!149, !152}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !147, file: !58, line: 168, baseType: !150, size: 32)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !151, line: 124, baseType: !94)
!151 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!152 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !147, file: !58, line: 169, baseType: !153, size: 32)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 32, elements: !154)
!154 = !{!155}
!155 = !DISubrange(count: 4)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !108, file: !27, line: 611, baseType: !142, size: 64, offset: 960)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !108, file: !27, line: 612, baseType: !142, size: 64, offset: 1024)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !108, file: !27, line: 613, baseType: !159, size: 64, offset: 1088)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 64, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 8)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !108, file: !27, line: 614, baseType: !163, size: 192, offset: 1152)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 192, elements: !164)
!164 = !{!165}
!165 = !DISubrange(count: 24)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !108, file: !27, line: 615, baseType: !5, size: 32, offset: 1344)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !108, file: !27, line: 616, baseType: !142, size: 64, offset: 1376)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !108, file: !27, line: 617, baseType: !142, size: 64, offset: 1440)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !108, file: !27, line: 618, baseType: !142, size: 64, offset: 1504)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !108, file: !27, line: 619, baseType: !142, size: 64, offset: 1568)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !108, file: !27, line: 620, baseType: !142, size: 64, offset: 1632)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !108, file: !27, line: 621, baseType: !5, size: 32, offset: 1696)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !105, file: !27, line: 631, baseType: !174, size: 2880)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !105, file: !27, line: 626, size: 2880, elements: !175)
!175 = !{!176, !180}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !174, file: !27, line: 629, baseType: !177, size: 1920)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 1920, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 30)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !174, file: !27, line: 630, baseType: !181, size: 960, offset: 1920)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 960, elements: !178)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !61, file: !27, line: 636, baseType: !183, size: 64, offset: 4032)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !27, line: 93, size: 6336, elements: !185)
!185 = !{!186, !187, !188, !195}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !184, file: !27, line: 94, baseType: !183, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !184, file: !27, line: 95, baseType: !5, size: 32, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !184, file: !27, line: 97, baseType: !189, size: 2048, offset: 128)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 2048, elements: !193)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{null}
!193 = !{!194}
!194 = !DISubrange(count: 32)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !184, file: !27, line: 98, baseType: !196, size: 4160, offset: 2176)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !27, line: 74, size: 4160, elements: !197)
!197 = !{!198, !200, !201, !202}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !196, file: !27, line: 75, baseType: !199, size: 2048)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 2048, elements: !193)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !196, file: !27, line: 76, baseType: !199, size: 2048, offset: 2048)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !196, file: !27, line: 78, baseType: !93, size: 32, offset: 4096)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !196, file: !27, line: 81, baseType: !93, size: 32, offset: 4128)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !61, file: !27, line: 637, baseType: !184, size: 6336, offset: 4096)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !61, file: !27, line: 641, baseType: !205, size: 64, offset: 10432)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DISubroutineType(types: !208)
!208 = !{null, !5}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !61, file: !27, line: 646, baseType: !26, size: 192, offset: 10496)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !61, file: !27, line: 648, baseType: !211, size: 4224, offset: 10688)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 4224, elements: !137)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !35, file: !27, line: 199, baseType: !213, size: 64, offset: 512)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{!57, !60, !52, !216, !5}
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !35, file: !27, line: 202, baseType: !219, size: 64, offset: 576)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{!222, !60, !52, !222, !5}
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !58, line: 114, baseType: !59)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !35, file: !27, line: 203, baseType: !224, size: 64, offset: 640)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DISubroutineType(types: !226)
!226 = !{!5, !60, !52}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !35, file: !27, line: 206, baseType: !46, size: 128, offset: 704)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !35, file: !27, line: 207, baseType: !38, size: 64, offset: 832)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !35, file: !27, line: 208, baseType: !5, size: 32, offset: 896)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !35, file: !27, line: 211, baseType: !231, size: 24, offset: 928)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 24, elements: !137)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !35, file: !27, line: 212, baseType: !233, size: 8, offset: 952)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 8, elements: !95)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !35, file: !27, line: 215, baseType: !46, size: 128, offset: 960)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !35, file: !27, line: 218, baseType: !5, size: 32, offset: 1088)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !35, file: !27, line: 219, baseType: !237, size: 64, offset: 1152)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !58, line: 44, baseType: !59)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !35, file: !27, line: 222, baseType: !60, size: 64, offset: 1216)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !35, file: !27, line: 226, baseType: !240, size: 32, offset: 1280)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !58, line: 175, baseType: !241)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !242, line: 12, baseType: !5)
!242 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !35, file: !27, line: 228, baseType: !142, size: 64, offset: 1312)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !35, file: !27, line: 229, baseType: !5, size: 32, offset: 1376)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !23, file: !1, line: 123, baseType: !246, size: 1408, offset: 192)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !247, line: 66, baseType: !34)
!247 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!248 = !{i32 2, !"Dwarf Version", i32 4}
!249 = !{i32 2, !"Debug Info Version", i32 3}
!250 = !{i32 1, !"wchar_size", i32 4}
!251 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!252 = distinct !DISubprogram(name: "__sfmoreglue", scope: !1, file: !1, line: 127, type: !253, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !255)
!253 = !DISubroutineType(types: !254)
!254 = !{!30, !60, !5}
!255 = !{!256, !257, !258}
!256 = !DILocalVariable(name: "d", arg: 1, scope: !252, file: !1, line: 127, type: !60)
!257 = !DILocalVariable(name: "n", arg: 2, scope: !252, file: !1, line: 127, type: !5)
!258 = !DILocalVariable(name: "g", scope: !252, file: !1, line: 131, type: !22)
!259 = !DILocation(line: 127, column: 1, scope: !252)
!260 = !DILocation(line: 134, column: 5, scope: !252)
!261 = !DILocation(line: 135, column: 9, scope: !262)
!262 = distinct !DILexicalBlock(scope: !252, file: !1, line: 135, column: 7)
!263 = !DILocation(line: 135, column: 7, scope: !252)
!264 = !DILocation(line: 131, column: 26, scope: !252)
!265 = !DILocation(line: 137, column: 6, scope: !252)
!266 = !DILocation(line: 137, column: 11, scope: !252)
!267 = !DILocation(line: 137, column: 17, scope: !252)
!268 = !{!269, !271, i64 0}
!269 = !{!"glue_with_file", !270, i64 0, !275, i64 24}
!270 = !{!"_glue", !271, i64 0, !274, i64 8, !271, i64 16}
!271 = !{!"any pointer", !272, i64 0}
!272 = !{!"omnipotent char", !273, i64 0}
!273 = !{!"Simple C/C++ TBAA"}
!274 = !{!"int", !272, i64 0}
!275 = !{!"__sFILE", !271, i64 0, !274, i64 8, !274, i64 12, !276, i64 16, !276, i64 18, !277, i64 24, !274, i64 40, !271, i64 48, !271, i64 56, !271, i64 64, !271, i64 72, !271, i64 80, !277, i64 88, !271, i64 104, !274, i64 112, !272, i64 116, !272, i64 119, !277, i64 120, !274, i64 136, !278, i64 144, !271, i64 152, !274, i64 160, !279, i64 164, !274, i64 172}
!276 = !{!"short", !272, i64 0}
!277 = !{!"__sbuf", !271, i64 0, !274, i64 8}
!278 = !{!"long", !272, i64 0}
!279 = !{!"", !274, i64 0, !272, i64 4}
!280 = !DILocation(line: 138, column: 11, scope: !252)
!281 = !DILocation(line: 138, column: 18, scope: !252)
!282 = !{!269, !274, i64 8}
!283 = !DILocation(line: 139, column: 23, scope: !252)
!284 = !DILocation(line: 139, column: 11, scope: !252)
!285 = !DILocation(line: 139, column: 17, scope: !252)
!286 = !{!269, !271, i64 16}
!287 = !DILocation(line: 140, column: 24, scope: !252)
!288 = !DILocation(line: 140, column: 26, scope: !252)
!289 = !DILocation(line: 140, column: 3, scope: !252)
!290 = !DILocation(line: 141, column: 3, scope: !252)
!291 = !DILocation(line: 0, scope: !252)
!292 = !DILocation(line: 0, scope: !262)
!293 = !DILocation(line: 142, column: 1, scope: !252)
!294 = distinct !DISubprogram(name: "__sfp", scope: !1, file: !1, line: 149, type: !295, isLocal: false, isDefinition: true, scopeLine: 151, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !298)
!295 = !DISubroutineType(types: !296)
!296 = !{!297, !60}
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!298 = !{!299, !300, !301, !302, !303}
!299 = !DILocalVariable(name: "d", arg: 1, scope: !294, file: !1, line: 149, type: !60)
!300 = !DILocalVariable(name: "fp", scope: !294, file: !1, line: 152, type: !297)
!301 = !DILocalVariable(name: "n", scope: !294, file: !1, line: 153, type: !5)
!302 = !DILocalVariable(name: "g", scope: !294, file: !1, line: 154, type: !30)
!303 = !DILocalVariable(name: "__oldsfpcancel", scope: !304, file: !1, line: 156, type: !5)
!304 = distinct !DILexicalBlock(scope: !294, file: !1, line: 156, column: 3)
!305 = !DILocation(line: 149, column: 1, scope: !294)
!306 = !DILocation(line: 156, column: 3, scope: !304)
!307 = !DILocation(line: 310, column: 1, scope: !308, inlinedAt: !310)
!308 = distinct !DISubprogram(name: "__sfp_lock_acquire", scope: !1, file: !1, line: 307, type: !191, isLocal: false, isDefinition: true, scopeLine: 308, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !309)
!309 = !{}
!310 = distinct !DILocation(line: 156, column: 3, scope: !304)
!311 = !DILocation(line: 158, column: 8, scope: !312)
!312 = distinct !DILexicalBlock(scope: !304, file: !1, line: 158, column: 7)
!313 = !{!271, !271, i64 0}
!314 = !DILocation(line: 158, column: 23, scope: !312)
!315 = !{!316, !274, i64 80}
!316 = !{!"_reent", !274, i64 0, !271, i64 8, !271, i64 16, !271, i64 24, !274, i64 32, !272, i64 36, !274, i64 64, !271, i64 72, !274, i64 80, !271, i64 88, !271, i64 96, !274, i64 104, !271, i64 112, !271, i64 120, !274, i64 128, !271, i64 136, !272, i64 144, !271, i64 504, !317, i64 512, !271, i64 1304, !270, i64 1312, !272, i64 1336}
!317 = !{!"_atexit", !271, i64 0, !274, i64 8, !272, i64 16, !318, i64 272}
!318 = !{!"_on_exit_args", !272, i64 0, !272, i64 256, !274, i64 512, !274, i64 516}
!319 = !DILocation(line: 158, column: 7, scope: !304)
!320 = !DILocation(line: 159, column: 5, scope: !312)
!321 = !DILocation(line: 160, column: 28, scope: !322)
!322 = distinct !DILexicalBlock(scope: !304, file: !1, line: 160, column: 3)
!323 = !DILocation(line: 154, column: 17, scope: !294)
!324 = !DILocation(line: 160, column: 8, scope: !322)
!325 = !DILocation(line: 0, scope: !326)
!326 = distinct !DILexicalBlock(scope: !322, file: !1, line: 160, column: 3)
!327 = !DILocation(line: 0, scope: !322)
!328 = !DILocation(line: 162, column: 20, scope: !329)
!329 = distinct !DILexicalBlock(scope: !330, file: !1, line: 162, column: 7)
!330 = distinct !DILexicalBlock(scope: !326, file: !1, line: 161, column: 5)
!331 = !{!270, !271, i64 16}
!332 = !DILocation(line: 152, column: 9, scope: !294)
!333 = !DILocation(line: 162, column: 34, scope: !329)
!334 = !{!270, !274, i64 8}
!335 = !DILocation(line: 153, column: 7, scope: !294)
!336 = !DILocation(line: 162, column: 12, scope: !329)
!337 = !DILocation(line: 162, column: 46, scope: !338)
!338 = distinct !DILexicalBlock(scope: !329, file: !1, line: 162, column: 7)
!339 = !DILocation(line: 162, column: 7, scope: !329)
!340 = !DILocation(line: 163, column: 10, scope: !341)
!341 = distinct !DILexicalBlock(scope: !338, file: !1, line: 163, column: 6)
!342 = !{!275, !276, i64 16}
!343 = !DILocation(line: 163, column: 17, scope: !341)
!344 = !DILocation(line: 163, column: 6, scope: !338)
!345 = !DILocation(line: 162, column: 42, scope: !338)
!346 = !DILocation(line: 162, column: 54, scope: !338)
!347 = !DILocation(line: 162, column: 7, scope: !338)
!348 = distinct !{!348, !339, !349}
!349 = !DILocation(line: 164, column: 9, scope: !329)
!350 = !DILocation(line: 165, column: 14, scope: !351)
!351 = distinct !DILexicalBlock(scope: !330, file: !1, line: 165, column: 11)
!352 = !{!270, !271, i64 0}
!353 = !DILocation(line: 165, column: 20, scope: !351)
!354 = !DILocation(line: 165, column: 28, scope: !351)
!355 = !DILocation(line: 127, column: 1, scope: !252, inlinedAt: !356)
!356 = distinct !DILocation(line: 166, column: 16, scope: !351)
!357 = !DILocation(line: 134, column: 5, scope: !252, inlinedAt: !356)
!358 = !DILocation(line: 135, column: 9, scope: !262, inlinedAt: !356)
!359 = !DILocation(line: 135, column: 7, scope: !252, inlinedAt: !356)
!360 = !DILocation(line: 136, column: 5, scope: !262, inlinedAt: !356)
!361 = !DILocation(line: 142, column: 1, scope: !252, inlinedAt: !356)
!362 = !DILocation(line: 166, column: 14, scope: !351)
!363 = !DILocation(line: 165, column: 11, scope: !330)
!364 = !DILocation(line: 316, column: 1, scope: !365, inlinedAt: !366)
!365 = distinct !DISubprogram(name: "__sfp_lock_release", scope: !1, file: !1, line: 313, type: !191, isLocal: false, isDefinition: true, scopeLine: 314, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !309)
!366 = distinct !DILocation(line: 169, column: 3, scope: !304)
!367 = !DILocation(line: 169, column: 3, scope: !304)
!368 = !{!274, !274, i64 0}
!369 = !DILocation(line: 170, column: 6, scope: !304)
!370 = !DILocation(line: 170, column: 13, scope: !304)
!371 = !{!316, !274, i64 0}
!372 = !DILocation(line: 171, column: 3, scope: !304)
!373 = !DILocation(line: 180, column: 3, scope: !294)
!374 = !DILocation(line: 131, column: 26, scope: !252, inlinedAt: !356)
!375 = !DILocation(line: 137, column: 11, scope: !252, inlinedAt: !356)
!376 = !DILocation(line: 137, column: 17, scope: !252, inlinedAt: !356)
!377 = !DILocation(line: 138, column: 11, scope: !252, inlinedAt: !356)
!378 = !DILocation(line: 138, column: 18, scope: !252, inlinedAt: !356)
!379 = !DILocation(line: 139, column: 23, scope: !252, inlinedAt: !356)
!380 = !DILocation(line: 139, column: 11, scope: !252, inlinedAt: !356)
!381 = !DILocation(line: 139, column: 17, scope: !252, inlinedAt: !356)
!382 = !DILocation(line: 140, column: 3, scope: !252, inlinedAt: !356)
!383 = !DILocation(line: 141, column: 3, scope: !252, inlinedAt: !356)
!384 = distinct !{!384, !385, !386}
!385 = !DILocation(line: 160, column: 3, scope: !322)
!386 = !DILocation(line: 168, column: 5, scope: !322)
!387 = !DILocation(line: 174, column: 7, scope: !304)
!388 = !DILocation(line: 174, column: 13, scope: !304)
!389 = !{!275, !276, i64 18}
!390 = !DILocation(line: 175, column: 14, scope: !304)
!391 = !DILocation(line: 176, column: 7, scope: !304)
!392 = !DILocation(line: 176, column: 15, scope: !304)
!393 = !{!275, !274, i64 172}
!394 = !DILocation(line: 316, column: 1, scope: !365, inlinedAt: !395)
!395 = distinct !DILocation(line: 180, column: 3, scope: !304)
!396 = !DILocation(line: 180, column: 3, scope: !304)
!397 = !DILocation(line: 182, column: 7, scope: !294)
!398 = !DILocation(line: 182, column: 10, scope: !294)
!399 = !{!275, !271, i64 0}
!400 = !DILocation(line: 183, column: 7, scope: !294)
!401 = !DILocation(line: 183, column: 10, scope: !294)
!402 = !{!275, !274, i64 12}
!403 = !DILocation(line: 184, column: 7, scope: !294)
!404 = !DILocation(line: 184, column: 10, scope: !294)
!405 = !{!275, !274, i64 8}
!406 = !DILocation(line: 185, column: 11, scope: !294)
!407 = !DILocation(line: 185, column: 17, scope: !294)
!408 = !{!275, !271, i64 24}
!409 = !DILocation(line: 186, column: 11, scope: !294)
!410 = !DILocation(line: 186, column: 17, scope: !294)
!411 = !{!275, !274, i64 32}
!412 = !DILocation(line: 187, column: 7, scope: !294)
!413 = !DILocation(line: 187, column: 16, scope: !294)
!414 = !{!275, !274, i64 40}
!415 = !DILocation(line: 188, column: 16, scope: !294)
!416 = !DILocation(line: 188, column: 11, scope: !294)
!417 = !DILocation(line: 188, column: 3, scope: !294)
!418 = !DILocation(line: 190, column: 11, scope: !294)
!419 = !DILocation(line: 190, column: 17, scope: !294)
!420 = !{!275, !271, i64 88}
!421 = !DILocation(line: 191, column: 11, scope: !294)
!422 = !DILocation(line: 191, column: 17, scope: !294)
!423 = !{!275, !274, i64 96}
!424 = !DILocation(line: 192, column: 11, scope: !294)
!425 = !DILocation(line: 192, column: 17, scope: !294)
!426 = !{!275, !271, i64 120}
!427 = !DILocation(line: 193, column: 11, scope: !294)
!428 = !DILocation(line: 193, column: 17, scope: !294)
!429 = !{!275, !274, i64 128}
!430 = !DILocation(line: 195, column: 3, scope: !294)
!431 = !DILocation(line: 196, column: 1, scope: !294)
!432 = !DILocation(line: 310, column: 1, scope: !308)
!433 = distinct !DISubprogram(name: "__sinit", scope: !1, file: !1, line: 249, type: !80, isLocal: false, isDefinition: true, scopeLine: 251, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !434)
!434 = !{!435}
!435 = !DILocalVariable(name: "s", arg: 1, scope: !433, file: !1, line: 249, type: !60)
!436 = !DILocation(line: 249, column: 1, scope: !433)
!437 = !DILocation(line: 322, column: 1, scope: !438, inlinedAt: !439)
!438 = distinct !DISubprogram(name: "__sinit_lock_acquire", scope: !1, file: !1, line: 319, type: !191, isLocal: false, isDefinition: true, scopeLine: 320, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !309)
!439 = distinct !DILocation(line: 252, column: 3, scope: !433)
!440 = !DILocation(line: 254, column: 10, scope: !441)
!441 = distinct !DILexicalBlock(scope: !433, file: !1, line: 254, column: 7)
!442 = !DILocation(line: 254, column: 7, scope: !441)
!443 = !DILocation(line: 254, column: 7, scope: !433)
!444 = !DILocation(line: 261, column: 6, scope: !433)
!445 = !DILocation(line: 261, column: 16, scope: !433)
!446 = !{!316, !271, i64 88}
!447 = !DILocation(line: 263, column: 14, scope: !433)
!448 = !DILocation(line: 263, column: 20, scope: !433)
!449 = !{!316, !271, i64 1312}
!450 = !DILocation(line: 266, column: 14, scope: !433)
!451 = !DILocation(line: 266, column: 21, scope: !433)
!452 = !{!316, !274, i64 1320}
!453 = !DILocation(line: 267, column: 23, scope: !433)
!454 = !DILocation(line: 267, column: 14, scope: !433)
!455 = !DILocation(line: 267, column: 20, scope: !433)
!456 = !{!316, !271, i64 1328}
!457 = !DILocation(line: 291, column: 18, scope: !433)
!458 = !{!316, !271, i64 8}
!459 = !DILocalVariable(name: "ptr", arg: 1, scope: !460, file: !1, line: 92, type: !297)
!460 = distinct !DISubprogram(name: "stdin_init", scope: !1, file: !1, line: 92, type: !461, isLocal: true, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !463)
!461 = !DISubroutineType(types: !462)
!462 = !{null, !297}
!463 = !{!459}
!464 = !DILocation(line: 92, column: 18, scope: !460, inlinedAt: !465)
!465 = distinct !DILocation(line: 291, column: 3, scope: !433)
!466 = !DILocalVariable(name: "ptr", arg: 1, scope: !467, file: !1, line: 47, type: !297)
!467 = distinct !DISubprogram(name: "std", scope: !1, file: !1, line: 47, type: !468, isLocal: true, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !470)
!468 = !DISubroutineType(types: !469)
!469 = !{null, !297, !5, !5}
!470 = !{!466, !471, !472}
!471 = !DILocalVariable(name: "flags", arg: 2, scope: !467, file: !1, line: 47, type: !5)
!472 = !DILocalVariable(name: "file", arg: 3, scope: !467, file: !1, line: 47, type: !5)
!473 = !DILocation(line: 47, column: 1, scope: !467, inlinedAt: !474)
!474 = distinct !DILocation(line: 94, column: 3, scope: !460, inlinedAt: !465)
!475 = !DILocation(line: 52, column: 8, scope: !467, inlinedAt: !474)
!476 = !DILocation(line: 52, column: 11, scope: !467, inlinedAt: !474)
!477 = !DILocation(line: 53, column: 8, scope: !467, inlinedAt: !474)
!478 = !DILocation(line: 53, column: 11, scope: !467, inlinedAt: !474)
!479 = !DILocation(line: 54, column: 8, scope: !467, inlinedAt: !474)
!480 = !DILocation(line: 54, column: 11, scope: !467, inlinedAt: !474)
!481 = !DILocation(line: 55, column: 8, scope: !467, inlinedAt: !474)
!482 = !DILocation(line: 55, column: 15, scope: !467, inlinedAt: !474)
!483 = !DILocation(line: 56, column: 8, scope: !467, inlinedAt: !474)
!484 = !DILocation(line: 56, column: 16, scope: !467, inlinedAt: !474)
!485 = !DILocation(line: 57, column: 8, scope: !467, inlinedAt: !474)
!486 = !DILocation(line: 57, column: 14, scope: !467, inlinedAt: !474)
!487 = !DILocation(line: 58, column: 12, scope: !467, inlinedAt: !474)
!488 = !DILocation(line: 58, column: 18, scope: !467, inlinedAt: !474)
!489 = !DILocation(line: 59, column: 12, scope: !467, inlinedAt: !474)
!490 = !DILocation(line: 59, column: 18, scope: !467, inlinedAt: !474)
!491 = !DILocation(line: 60, column: 8, scope: !467, inlinedAt: !474)
!492 = !DILocation(line: 60, column: 17, scope: !467, inlinedAt: !474)
!493 = !DILocation(line: 61, column: 17, scope: !467, inlinedAt: !474)
!494 = !DILocation(line: 61, column: 11, scope: !467, inlinedAt: !474)
!495 = !DILocation(line: 61, column: 3, scope: !467, inlinedAt: !474)
!496 = !DILocation(line: 62, column: 8, scope: !467, inlinedAt: !474)
!497 = !DILocation(line: 62, column: 16, scope: !467, inlinedAt: !474)
!498 = !{!275, !271, i64 48}
!499 = !DILocation(line: 63, column: 8, scope: !467, inlinedAt: !474)
!500 = !DILocation(line: 63, column: 14, scope: !467, inlinedAt: !474)
!501 = !DILocation(line: 71, column: 8, scope: !467, inlinedAt: !474)
!502 = !DILocation(line: 71, column: 14, scope: !467, inlinedAt: !474)
!503 = !{!275, !271, i64 72}
!504 = !DILocation(line: 73, column: 8, scope: !467, inlinedAt: !474)
!505 = !DILocation(line: 73, column: 15, scope: !467, inlinedAt: !474)
!506 = !{!275, !271, i64 80}
!507 = !DILocation(line: 89, column: 1, scope: !467, inlinedAt: !474)
!508 = !DILocation(line: 95, column: 1, scope: !460, inlinedAt: !465)
!509 = !DILocation(line: 292, column: 19, scope: !433)
!510 = !{!316, !271, i64 16}
!511 = !DILocalVariable(name: "ptr", arg: 1, scope: !512, file: !1, line: 98, type: !297)
!512 = distinct !DISubprogram(name: "stdout_init", scope: !1, file: !1, line: 98, type: !461, isLocal: true, isDefinition: true, scopeLine: 99, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !513)
!513 = !{!511}
!514 = !DILocation(line: 98, column: 19, scope: !512, inlinedAt: !515)
!515 = distinct !DILocation(line: 292, column: 3, scope: !433)
!516 = !DILocation(line: 47, column: 1, scope: !467, inlinedAt: !517)
!517 = distinct !DILocation(line: 109, column: 3, scope: !512, inlinedAt: !515)
!518 = !DILocation(line: 52, column: 8, scope: !467, inlinedAt: !517)
!519 = !DILocation(line: 52, column: 11, scope: !467, inlinedAt: !517)
!520 = !DILocation(line: 53, column: 8, scope: !467, inlinedAt: !517)
!521 = !DILocation(line: 53, column: 11, scope: !467, inlinedAt: !517)
!522 = !DILocation(line: 54, column: 8, scope: !467, inlinedAt: !517)
!523 = !DILocation(line: 54, column: 11, scope: !467, inlinedAt: !517)
!524 = !DILocation(line: 55, column: 8, scope: !467, inlinedAt: !517)
!525 = !DILocation(line: 55, column: 15, scope: !467, inlinedAt: !517)
!526 = !DILocation(line: 56, column: 8, scope: !467, inlinedAt: !517)
!527 = !DILocation(line: 56, column: 16, scope: !467, inlinedAt: !517)
!528 = !DILocation(line: 57, column: 8, scope: !467, inlinedAt: !517)
!529 = !DILocation(line: 57, column: 14, scope: !467, inlinedAt: !517)
!530 = !DILocation(line: 58, column: 12, scope: !467, inlinedAt: !517)
!531 = !DILocation(line: 58, column: 18, scope: !467, inlinedAt: !517)
!532 = !DILocation(line: 59, column: 12, scope: !467, inlinedAt: !517)
!533 = !DILocation(line: 59, column: 18, scope: !467, inlinedAt: !517)
!534 = !DILocation(line: 60, column: 8, scope: !467, inlinedAt: !517)
!535 = !DILocation(line: 60, column: 17, scope: !467, inlinedAt: !517)
!536 = !DILocation(line: 61, column: 17, scope: !467, inlinedAt: !517)
!537 = !DILocation(line: 61, column: 11, scope: !467, inlinedAt: !517)
!538 = !DILocation(line: 61, column: 3, scope: !467, inlinedAt: !517)
!539 = !DILocation(line: 62, column: 8, scope: !467, inlinedAt: !517)
!540 = !DILocation(line: 62, column: 16, scope: !467, inlinedAt: !517)
!541 = !DILocation(line: 63, column: 8, scope: !467, inlinedAt: !517)
!542 = !DILocation(line: 63, column: 14, scope: !467, inlinedAt: !517)
!543 = !DILocation(line: 71, column: 8, scope: !467, inlinedAt: !517)
!544 = !DILocation(line: 71, column: 14, scope: !467, inlinedAt: !517)
!545 = !DILocation(line: 73, column: 8, scope: !467, inlinedAt: !517)
!546 = !DILocation(line: 73, column: 15, scope: !467, inlinedAt: !517)
!547 = !DILocation(line: 89, column: 1, scope: !467, inlinedAt: !517)
!548 = !DILocation(line: 111, column: 1, scope: !512, inlinedAt: !515)
!549 = !DILocation(line: 293, column: 19, scope: !433)
!550 = !{!316, !271, i64 24}
!551 = !DILocalVariable(name: "ptr", arg: 1, scope: !552, file: !1, line: 114, type: !297)
!552 = distinct !DISubprogram(name: "stderr_init", scope: !1, file: !1, line: 114, type: !461, isLocal: true, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !553)
!553 = !{!551}
!554 = !DILocation(line: 114, column: 19, scope: !552, inlinedAt: !555)
!555 = distinct !DILocation(line: 293, column: 3, scope: !433)
!556 = !DILocation(line: 47, column: 1, scope: !467, inlinedAt: !557)
!557 = distinct !DILocation(line: 118, column: 3, scope: !552, inlinedAt: !555)
!558 = !DILocation(line: 52, column: 8, scope: !467, inlinedAt: !557)
!559 = !DILocation(line: 52, column: 11, scope: !467, inlinedAt: !557)
!560 = !DILocation(line: 53, column: 8, scope: !467, inlinedAt: !557)
!561 = !DILocation(line: 53, column: 11, scope: !467, inlinedAt: !557)
!562 = !DILocation(line: 54, column: 8, scope: !467, inlinedAt: !557)
!563 = !DILocation(line: 54, column: 11, scope: !467, inlinedAt: !557)
!564 = !DILocation(line: 55, column: 8, scope: !467, inlinedAt: !557)
!565 = !DILocation(line: 55, column: 15, scope: !467, inlinedAt: !557)
!566 = !DILocation(line: 56, column: 8, scope: !467, inlinedAt: !557)
!567 = !DILocation(line: 56, column: 16, scope: !467, inlinedAt: !557)
!568 = !DILocation(line: 57, column: 8, scope: !467, inlinedAt: !557)
!569 = !DILocation(line: 57, column: 14, scope: !467, inlinedAt: !557)
!570 = !DILocation(line: 58, column: 12, scope: !467, inlinedAt: !557)
!571 = !DILocation(line: 58, column: 18, scope: !467, inlinedAt: !557)
!572 = !DILocation(line: 59, column: 12, scope: !467, inlinedAt: !557)
!573 = !DILocation(line: 59, column: 18, scope: !467, inlinedAt: !557)
!574 = !DILocation(line: 60, column: 8, scope: !467, inlinedAt: !557)
!575 = !DILocation(line: 60, column: 17, scope: !467, inlinedAt: !557)
!576 = !DILocation(line: 61, column: 17, scope: !467, inlinedAt: !557)
!577 = !DILocation(line: 61, column: 11, scope: !467, inlinedAt: !557)
!578 = !DILocation(line: 61, column: 3, scope: !467, inlinedAt: !557)
!579 = !DILocation(line: 62, column: 8, scope: !467, inlinedAt: !557)
!580 = !DILocation(line: 62, column: 16, scope: !467, inlinedAt: !557)
!581 = !DILocation(line: 63, column: 8, scope: !467, inlinedAt: !557)
!582 = !DILocation(line: 63, column: 14, scope: !467, inlinedAt: !557)
!583 = !DILocation(line: 71, column: 8, scope: !467, inlinedAt: !557)
!584 = !DILocation(line: 71, column: 14, scope: !467, inlinedAt: !557)
!585 = !DILocation(line: 73, column: 8, scope: !467, inlinedAt: !557)
!586 = !DILocation(line: 73, column: 15, scope: !467, inlinedAt: !557)
!587 = !DILocation(line: 89, column: 1, scope: !467, inlinedAt: !557)
!588 = !DILocation(line: 119, column: 1, scope: !552, inlinedAt: !555)
!589 = !DILocation(line: 296, column: 17, scope: !433)
!590 = !DILocation(line: 299, column: 1, scope: !433)
!591 = !DILocation(line: 328, column: 1, scope: !592, inlinedAt: !593)
!592 = distinct !DISubprogram(name: "__sinit_lock_release", scope: !1, file: !1, line: 325, type: !191, isLocal: false, isDefinition: true, scopeLine: 326, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !309)
!593 = distinct !DILocation(line: 298, column: 3, scope: !433)
!594 = !DILocation(line: 0, scope: !595)
!595 = distinct !DILexicalBlock(scope: !441, file: !1, line: 255, column: 5)
!596 = !DILocation(line: 316, column: 1, scope: !365)
!597 = distinct !DISubprogram(name: "_cleanup_r", scope: !1, file: !1, line: 207, type: !80, isLocal: false, isDefinition: true, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !598)
!598 = !{!599, !600}
!599 = !DILocalVariable(name: "ptr", arg: 1, scope: !597, file: !1, line: 207, type: !60)
!600 = !DILocalVariable(name: "cleanup_func", scope: !597, file: !1, line: 210, type: !601)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DISubroutineType(types: !603)
!603 = !{!5, !60, !297}
!604 = !DILocation(line: 207, column: 1, scope: !597)
!605 = !DILocation(line: 210, column: 9, scope: !597)
!606 = !DILocation(line: 233, column: 14, scope: !597)
!607 = !DILocation(line: 234, column: 1, scope: !597)
!608 = distinct !DISubprogram(name: "_cleanup", scope: !1, file: !1, line: 238, type: !191, isLocal: false, isDefinition: true, scopeLine: 239, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !309)
!609 = !DILocation(line: 240, column: 15, scope: !608)
!610 = !DILocation(line: 207, column: 1, scope: !597, inlinedAt: !611)
!611 = distinct !DILocation(line: 240, column: 3, scope: !608)
!612 = !DILocation(line: 210, column: 9, scope: !597, inlinedAt: !611)
!613 = !DILocation(line: 233, column: 14, scope: !597, inlinedAt: !611)
!614 = !DILocation(line: 234, column: 1, scope: !597, inlinedAt: !611)
!615 = !DILocation(line: 241, column: 1, scope: !608)
!616 = !DILocation(line: 322, column: 1, scope: !438)
!617 = !DILocation(line: 328, column: 1, scope: !592)
!618 = distinct !DISubprogram(name: "__fp_lock_all", scope: !1, file: !1, line: 353, type: !191, isLocal: false, isDefinition: true, scopeLine: 354, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !309)
!619 = !DILocation(line: 310, column: 1, scope: !308, inlinedAt: !620)
!620 = distinct !DILocation(line: 355, column: 3, scope: !618)
!621 = !DILocation(line: 357, column: 22, scope: !618)
!622 = !DILocation(line: 357, column: 14, scope: !618)
!623 = !DILocation(line: 358, column: 1, scope: !618)
!624 = distinct !DISubprogram(name: "__fp_lock", scope: !1, file: !1, line: 332, type: !625, isLocal: true, isDefinition: true, scopeLine: 334, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !627)
!625 = !DISubroutineType(types: !626)
!626 = !{!5, !297}
!627 = !{!628}
!628 = !DILocalVariable(name: "ptr", arg: 1, scope: !624, file: !1, line: 332, type: !297)
!629 = !DILocation(line: 332, column: 1, scope: !624)
!630 = !DILocation(line: 338, column: 3, scope: !624)
!631 = distinct !DISubprogram(name: "__fp_unlock_all", scope: !1, file: !1, line: 361, type: !191, isLocal: false, isDefinition: true, scopeLine: 362, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !309)
!632 = !DILocation(line: 363, column: 22, scope: !631)
!633 = !DILocation(line: 363, column: 14, scope: !631)
!634 = !DILocation(line: 316, column: 1, scope: !365, inlinedAt: !635)
!635 = distinct !DILocation(line: 365, column: 3, scope: !631)
!636 = !DILocation(line: 366, column: 1, scope: !631)
!637 = distinct !DISubprogram(name: "__fp_unlock", scope: !1, file: !1, line: 343, type: !625, isLocal: true, isDefinition: true, scopeLine: 345, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !638)
!638 = !{!639}
!639 = !DILocalVariable(name: "ptr", arg: 1, scope: !637, file: !1, line: 343, type: !297)
!640 = !DILocation(line: 343, column: 1, scope: !637)
!641 = !DILocation(line: 349, column: 3, scope: !637)
