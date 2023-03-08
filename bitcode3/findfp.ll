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

; Function Attrs: noredzone nounwind
define dso_local %struct._glue* @__sfmoreglue(%struct._reent* nocapture readnone, i32) local_unnamed_addr #0 !dbg !252 {
  %3 = add nsw i32 %1, -1, !dbg !260
  %4 = sext i32 %3 to i64, !dbg !260
  %5 = mul nsw i64 %4, 176, !dbg !260
  %6 = add nsw i64 %5, 200, !dbg !260
  %7 = tail call i8* @malloc(i64 %6) #6, !dbg !260
  %8 = icmp eq i8* %7, null, !dbg !261
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
  %19 = tail call i8* @memset(i8* nonnull %14, i32 0, i64 %18) #6, !dbg !289
  br label %20, !dbg !290

; <label>:20:                                     ; preds = %2, %9
  %21 = phi %struct._glue* [ %10, %9 ], [ null, %2 ], !dbg !291
  ret %struct._glue* %21, !dbg !292
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
define dso_local %struct.__sFILE* @__sfp(%struct._reent* nocapture) local_unnamed_addr #0 !dbg !293 {
  %2 = alloca i32, align 4
  %3 = bitcast i32* %2 to i8*, !dbg !305
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #7, !dbg !305
  %4 = call i32 @pthread_setcancelstate(i32 1, i32* nonnull %2) #6, !dbg !305
  %5 = load %struct._reent*, %struct._reent** @_global_impure_ptr, align 8, !dbg !306, !tbaa !308
  %6 = getelementptr inbounds %struct._reent, %struct._reent* %5, i64 0, i32 8, !dbg !309
  %7 = load i32, i32* %6, align 8, !dbg !309, !tbaa !310
  %8 = icmp eq i32 %7, 0, !dbg !306
  br i1 %8, label %9, label %10, !dbg !314

; <label>:9:                                      ; preds = %1
  call void @__sinit(%struct._reent* %5) #8, !dbg !315
  br label %10, !dbg !315

; <label>:10:                                     ; preds = %1, %9
  %11 = getelementptr inbounds %struct._reent, %struct._reent* %5, i64 0, i32 20, !dbg !316
  br label %12, !dbg !319

; <label>:12:                                     ; preds = %52, %10
  %13 = phi %struct._glue* [ %11, %10 ], [ %53, %52 ], !dbg !320
  %14 = getelementptr inbounds %struct._glue, %struct._glue* %13, i64 0, i32 1, !dbg !322
  %15 = load i32, i32* %14, align 8, !dbg !322, !tbaa !325
  %16 = icmp sgt i32 %15, 0, !dbg !327
  br i1 %16, label %17, label %30, !dbg !329

; <label>:17:                                     ; preds = %12
  %18 = getelementptr inbounds %struct._glue, %struct._glue* %13, i64 0, i32 2, !dbg !330
  %19 = load %struct.__sFILE*, %struct.__sFILE** %18, align 8, !dbg !330, !tbaa !331
  br label %20, !dbg !333

; <label>:20:                                     ; preds = %17, %26
  %21 = phi i32 [ %27, %26 ], [ %15, %17 ]
  %22 = phi %struct.__sFILE* [ %28, %26 ], [ %19, %17 ]
  %23 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %22, i64 0, i32 3, !dbg !333
  %24 = load i16, i16* %23, align 8, !dbg !333, !tbaa !335
  %25 = icmp eq i16 %24, 0, !dbg !336
  br i1 %25, label %54, label %26, !dbg !337

; <label>:26:                                     ; preds = %20
  %27 = add nsw i32 %21, -1, !dbg !338
  %28 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %22, i64 1, !dbg !339
  %29 = icmp sgt i32 %21, 1, !dbg !327
  br i1 %29, label %20, label %30, !dbg !329, !llvm.loop !340

; <label>:30:                                     ; preds = %26, %12
  %31 = getelementptr inbounds %struct._glue, %struct._glue* %13, i64 0, i32 0, !dbg !342
  %32 = load %struct._glue*, %struct._glue** %31, align 8, !dbg !342, !tbaa !344
  %33 = icmp eq %struct._glue* %32, null, !dbg !345
  br i1 %33, label %34, label %52, !dbg !346

; <label>:34:                                     ; preds = %30
  %35 = call i8* @malloc(i64 728) #6, !dbg !349
  %36 = icmp eq i8* %35, null, !dbg !350
  br i1 %36, label %37, label %42, !dbg !351

; <label>:37:                                     ; preds = %34
  %38 = getelementptr inbounds %struct._glue, %struct._glue* %13, i64 0, i32 0, !dbg !342
  store %struct._glue* null, %struct._glue** %38, align 8, !dbg !352, !tbaa !344
  %39 = load i32, i32* %2, align 4, !dbg !353, !tbaa !354
  %40 = call i32 @pthread_setcancelstate(i32 %39, i32* nonnull %2) #6, !dbg !353
  %41 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !355
  store i32 12, i32* %41, align 8, !dbg !356, !tbaa !357
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #7, !dbg !358
  br label %73

; <label>:42:                                     ; preds = %34
  %43 = bitcast i8* %35 to %struct._glue**, !dbg !360
  store %struct._glue* null, %struct._glue** %43, align 8, !dbg !361, !tbaa !268
  %44 = getelementptr inbounds i8, i8* %35, i64 8, !dbg !362
  %45 = bitcast i8* %44 to i32*, !dbg !362
  store i32 4, i32* %45, align 8, !dbg !363, !tbaa !282
  %46 = getelementptr inbounds i8, i8* %35, i64 24, !dbg !364
  %47 = getelementptr inbounds i8, i8* %35, i64 16, !dbg !365
  %48 = bitcast i8* %47 to i8**, !dbg !366
  store i8* %46, i8** %48, align 8, !dbg !366, !tbaa !286
  %49 = call i8* @memset(i8* nonnull %46, i32 0, i64 704) #6, !dbg !367
  %50 = bitcast %struct._glue* %13 to i8**, !dbg !352
  store i8* %35, i8** %50, align 8, !dbg !352, !tbaa !344
  %51 = bitcast i8* %35 to %struct._glue*, !dbg !368
  br label %52, !dbg !368

; <label>:52:                                     ; preds = %42, %30
  %53 = phi %struct._glue* [ %51, %42 ], [ %32, %30 ]
  br label %12, !dbg !318, !llvm.loop !369

; <label>:54:                                     ; preds = %20
  %55 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %22, i64 0, i32 3, !dbg !333
  %56 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %22, i64 0, i32 4, !dbg !372
  store i16 -1, i16* %56, align 2, !dbg !373, !tbaa !374
  store i16 1, i16* %55, align 8, !dbg !375, !tbaa !335
  %57 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %22, i64 0, i32 23, !dbg !376
  store i32 0, i32* %57, align 4, !dbg !377, !tbaa !378
  %58 = load i32, i32* %2, align 4, !dbg !379, !tbaa !354
  %59 = call i32 @pthread_setcancelstate(i32 %58, i32* nonnull %2) #6, !dbg !379
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #7, !dbg !358
  %60 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %22, i64 0, i32 0, !dbg !380
  store i8* null, i8** %60, align 8, !dbg !381, !tbaa !382
  %61 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %22, i64 0, i32 2, !dbg !383
  store i32 0, i32* %61, align 4, !dbg !384, !tbaa !385
  %62 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %22, i64 0, i32 1, !dbg !386
  store i32 0, i32* %62, align 8, !dbg !387, !tbaa !388
  %63 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %22, i64 0, i32 5, i32 0, !dbg !389
  store i8* null, i8** %63, align 8, !dbg !390, !tbaa !391
  %64 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %22, i64 0, i32 5, i32 1, !dbg !392
  store i32 0, i32* %64, align 8, !dbg !393, !tbaa !394
  %65 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %22, i64 0, i32 6, !dbg !395
  store i32 0, i32* %65, align 8, !dbg !396, !tbaa !397
  %66 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %22, i64 0, i32 22, !dbg !398
  %67 = bitcast %struct._mbstate_t* %66 to i8*, !dbg !399
  %68 = call i8* @memset(i8* nonnull %67, i32 0, i64 8) #6, !dbg !400
  %69 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %22, i64 0, i32 12, i32 0, !dbg !401
  store i8* null, i8** %69, align 8, !dbg !402, !tbaa !403
  %70 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %22, i64 0, i32 12, i32 1, !dbg !404
  store i32 0, i32* %70, align 8, !dbg !405, !tbaa !406
  %71 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %22, i64 0, i32 17, i32 0, !dbg !407
  store i8* null, i8** %71, align 8, !dbg !408, !tbaa !409
  %72 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %22, i64 0, i32 17, i32 1, !dbg !410
  store i32 0, i32* %72, align 8, !dbg !411, !tbaa !412
  br label %73, !dbg !413

; <label>:73:                                     ; preds = %37, %54
  %74 = phi %struct.__sFILE* [ %22, %54 ], [ null, %37 ]
  ret %struct.__sFILE* %74, !dbg !414
}

; Function Attrs: noredzone
declare dso_local i32 @pthread_setcancelstate(i32, i32*) local_unnamed_addr #2

; Function Attrs: norecurse noredzone nounwind readnone
define dso_local void @__sfp_lock_acquire() local_unnamed_addr #3 !dbg !415 {
  ret void, !dbg !417
}

; Function Attrs: noredzone nounwind
define dso_local void @__sinit(%struct._reent*) local_unnamed_addr #0 !dbg !418 {
  %2 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 8, !dbg !422
  %3 = load i32, i32* %2, align 8, !dbg !422, !tbaa !310
  %4 = icmp eq i32 %3, 0, !dbg !424
  br i1 %4, label %5, label %71, !dbg !425

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 9, !dbg !426
  store void (%struct._reent*)* @_cleanup_r, void (%struct._reent*)** %6, align 8, !dbg !427, !tbaa !428
  %7 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 20, i32 0, !dbg !429
  store %struct._glue* null, %struct._glue** %7, align 8, !dbg !430, !tbaa !431
  %8 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 20, i32 1, !dbg !432
  store i32 3, i32* %8, align 8, !dbg !433, !tbaa !434
  %9 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 21, i64 0, !dbg !435
  %10 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 20, i32 2, !dbg !436
  store %struct.__sFILE* %9, %struct.__sFILE** %10, align 8, !dbg !437, !tbaa !438
  %11 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 1, !dbg !439
  %12 = load %struct.__sFILE*, %struct.__sFILE** %11, align 8, !dbg !439, !tbaa !440
  %13 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %12, i64 0, i32 0, !dbg !457
  store i8* null, i8** %13, align 8, !dbg !458, !tbaa !382
  %14 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %12, i64 0, i32 1, !dbg !459
  store i32 0, i32* %14, align 8, !dbg !460, !tbaa !388
  %15 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %12, i64 0, i32 2, !dbg !461
  store i32 0, i32* %15, align 4, !dbg !462, !tbaa !385
  %16 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %12, i64 0, i32 3, !dbg !463
  store i16 4, i16* %16, align 8, !dbg !464, !tbaa !335
  %17 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %12, i64 0, i32 23, !dbg !465
  store i32 0, i32* %17, align 4, !dbg !466, !tbaa !378
  %18 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %12, i64 0, i32 4, !dbg !467
  store i16 0, i16* %18, align 2, !dbg !468, !tbaa !374
  %19 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %12, i64 0, i32 5, i32 0, !dbg !469
  store i8* null, i8** %19, align 8, !dbg !470, !tbaa !391
  %20 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %12, i64 0, i32 5, i32 1, !dbg !471
  store i32 0, i32* %20, align 8, !dbg !472, !tbaa !394
  %21 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %12, i64 0, i32 6, !dbg !473
  store i32 0, i32* %21, align 8, !dbg !474, !tbaa !397
  %22 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %12, i64 0, i32 22, !dbg !475
  %23 = bitcast %struct._mbstate_t* %22 to i8*, !dbg !476
  %24 = tail call i8* @memset(i8* nonnull %23, i32 0, i64 8) #6, !dbg !477
  %25 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %12, i64 0, i32 7, !dbg !478
  %26 = bitcast i8** %25 to %struct.__sFILE**, !dbg !479
  store %struct.__sFILE* %12, %struct.__sFILE** %26, align 8, !dbg !479, !tbaa !480
  %27 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %12, i64 0, i32 8, !dbg !481
  %28 = bitcast i64 (%struct._reent*, i8*, i8*, i32)** %27 to <2 x i64 (%struct._reent*, i8*, i8*, i32)*>*, !dbg !482
  store <2 x i64 (%struct._reent*, i8*, i8*, i32)*> <i64 (%struct._reent*, i8*, i8*, i32)* @__sread, i64 (%struct._reent*, i8*, i8*, i32)* @__swrite>, <2 x i64 (%struct._reent*, i8*, i8*, i32)*>* %28, align 8, !dbg !482, !tbaa !308
  %29 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %12, i64 0, i32 10, !dbg !483
  store i64 (%struct._reent*, i8*, i64, i32)* @__sseek, i64 (%struct._reent*, i8*, i64, i32)** %29, align 8, !dbg !484, !tbaa !485
  %30 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %12, i64 0, i32 11, !dbg !486
  store i32 (%struct._reent*, i8*)* @__sclose, i32 (%struct._reent*, i8*)** %30, align 8, !dbg !487, !tbaa !488
  %31 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 2, !dbg !489
  %32 = load %struct.__sFILE*, %struct.__sFILE** %31, align 8, !dbg !489, !tbaa !490
  %33 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %32, i64 0, i32 0, !dbg !498
  store i8* null, i8** %33, align 8, !dbg !499, !tbaa !382
  %34 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %32, i64 0, i32 1, !dbg !500
  store i32 0, i32* %34, align 8, !dbg !501, !tbaa !388
  %35 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %32, i64 0, i32 2, !dbg !502
  store i32 0, i32* %35, align 4, !dbg !503, !tbaa !385
  %36 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %32, i64 0, i32 3, !dbg !504
  store i16 9, i16* %36, align 8, !dbg !505, !tbaa !335
  %37 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %32, i64 0, i32 23, !dbg !506
  store i32 0, i32* %37, align 4, !dbg !507, !tbaa !378
  %38 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %32, i64 0, i32 4, !dbg !508
  store i16 1, i16* %38, align 2, !dbg !509, !tbaa !374
  %39 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %32, i64 0, i32 5, i32 0, !dbg !510
  store i8* null, i8** %39, align 8, !dbg !511, !tbaa !391
  %40 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %32, i64 0, i32 5, i32 1, !dbg !512
  store i32 0, i32* %40, align 8, !dbg !513, !tbaa !394
  %41 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %32, i64 0, i32 6, !dbg !514
  store i32 0, i32* %41, align 8, !dbg !515, !tbaa !397
  %42 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %32, i64 0, i32 22, !dbg !516
  %43 = bitcast %struct._mbstate_t* %42 to i8*, !dbg !517
  %44 = tail call i8* @memset(i8* nonnull %43, i32 0, i64 8) #6, !dbg !518
  %45 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %32, i64 0, i32 7, !dbg !519
  %46 = bitcast i8** %45 to %struct.__sFILE**, !dbg !520
  store %struct.__sFILE* %32, %struct.__sFILE** %46, align 8, !dbg !520, !tbaa !480
  %47 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %32, i64 0, i32 8, !dbg !521
  %48 = bitcast i64 (%struct._reent*, i8*, i8*, i32)** %47 to <2 x i64 (%struct._reent*, i8*, i8*, i32)*>*, !dbg !522
  store <2 x i64 (%struct._reent*, i8*, i8*, i32)*> <i64 (%struct._reent*, i8*, i8*, i32)* @__sread, i64 (%struct._reent*, i8*, i8*, i32)* @__swrite>, <2 x i64 (%struct._reent*, i8*, i8*, i32)*>* %48, align 8, !dbg !522, !tbaa !308
  %49 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %32, i64 0, i32 10, !dbg !523
  store i64 (%struct._reent*, i8*, i64, i32)* @__sseek, i64 (%struct._reent*, i8*, i64, i32)** %49, align 8, !dbg !524, !tbaa !485
  %50 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %32, i64 0, i32 11, !dbg !525
  store i32 (%struct._reent*, i8*)* @__sclose, i32 (%struct._reent*, i8*)** %50, align 8, !dbg !526, !tbaa !488
  %51 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 3, !dbg !527
  %52 = load %struct.__sFILE*, %struct.__sFILE** %51, align 8, !dbg !527, !tbaa !528
  %53 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %52, i64 0, i32 0, !dbg !536
  store i8* null, i8** %53, align 8, !dbg !537, !tbaa !382
  %54 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %52, i64 0, i32 1, !dbg !538
  store i32 0, i32* %54, align 8, !dbg !539, !tbaa !388
  %55 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %52, i64 0, i32 2, !dbg !540
  store i32 0, i32* %55, align 4, !dbg !541, !tbaa !385
  %56 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %52, i64 0, i32 3, !dbg !542
  store i16 18, i16* %56, align 8, !dbg !543, !tbaa !335
  %57 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %52, i64 0, i32 23, !dbg !544
  store i32 0, i32* %57, align 4, !dbg !545, !tbaa !378
  %58 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %52, i64 0, i32 4, !dbg !546
  store i16 2, i16* %58, align 2, !dbg !547, !tbaa !374
  %59 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %52, i64 0, i32 5, i32 0, !dbg !548
  store i8* null, i8** %59, align 8, !dbg !549, !tbaa !391
  %60 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %52, i64 0, i32 5, i32 1, !dbg !550
  store i32 0, i32* %60, align 8, !dbg !551, !tbaa !394
  %61 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %52, i64 0, i32 6, !dbg !552
  store i32 0, i32* %61, align 8, !dbg !553, !tbaa !397
  %62 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %52, i64 0, i32 22, !dbg !554
  %63 = bitcast %struct._mbstate_t* %62 to i8*, !dbg !555
  %64 = tail call i8* @memset(i8* nonnull %63, i32 0, i64 8) #6, !dbg !556
  %65 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %52, i64 0, i32 7, !dbg !557
  %66 = bitcast i8** %65 to %struct.__sFILE**, !dbg !558
  store %struct.__sFILE* %52, %struct.__sFILE** %66, align 8, !dbg !558, !tbaa !480
  %67 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %52, i64 0, i32 8, !dbg !559
  %68 = bitcast i64 (%struct._reent*, i8*, i8*, i32)** %67 to <2 x i64 (%struct._reent*, i8*, i8*, i32)*>*, !dbg !560
  store <2 x i64 (%struct._reent*, i8*, i8*, i32)*> <i64 (%struct._reent*, i8*, i8*, i32)* @__sread, i64 (%struct._reent*, i8*, i8*, i32)* @__swrite>, <2 x i64 (%struct._reent*, i8*, i8*, i32)*>* %68, align 8, !dbg !560, !tbaa !308
  %69 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %52, i64 0, i32 10, !dbg !561
  store i64 (%struct._reent*, i8*, i64, i32)* @__sseek, i64 (%struct._reent*, i8*, i64, i32)** %69, align 8, !dbg !562, !tbaa !485
  %70 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %52, i64 0, i32 11, !dbg !563
  store i32 (%struct._reent*, i8*)* @__sclose, i32 (%struct._reent*, i8*)** %70, align 8, !dbg !564, !tbaa !488
  store i32 1, i32* %2, align 8, !dbg !565, !tbaa !310
  br label %71, !dbg !566

; <label>:71:                                     ; preds = %1, %5
  ret void, !dbg !566
}

; Function Attrs: norecurse noredzone nounwind readnone
define dso_local void @__sfp_lock_release() local_unnamed_addr #3 !dbg !567 {
  ret void, !dbg !568
}

; Function Attrs: noredzone nounwind
define dso_local void @_cleanup_r(%struct._reent*) #0 !dbg !569 {
  %2 = tail call i32 @_fwalk_reent(%struct._reent* %0, i32 (%struct._reent*, %struct.__sFILE*)* nonnull @_fclose_r) #6, !dbg !578
  ret void, !dbg !579
}

; Function Attrs: noredzone
declare dso_local i32 @_fclose_r(%struct._reent*, %struct.__sFILE*) #2

; Function Attrs: noredzone
declare dso_local i32 @_fwalk_reent(%struct._reent*, i32 (%struct._reent*, %struct.__sFILE*)*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @_cleanup() local_unnamed_addr #0 !dbg !580 {
  %1 = load %struct._reent*, %struct._reent** @_global_impure_ptr, align 8, !dbg !581, !tbaa !308
  %2 = tail call i32 @_fwalk_reent(%struct._reent* %1, i32 (%struct._reent*, %struct.__sFILE*)* nonnull @_fclose_r) #6, !dbg !585
  ret void, !dbg !586
}

; Function Attrs: norecurse noredzone nounwind readnone
define dso_local void @__sinit_lock_acquire() local_unnamed_addr #3 !dbg !587 {
  ret void, !dbg !588
}

; Function Attrs: norecurse noredzone nounwind readnone
define dso_local void @__sinit_lock_release() local_unnamed_addr #3 !dbg !589 {
  ret void, !dbg !590
}

; Function Attrs: noredzone nounwind
define dso_local void @__fp_lock_all() local_unnamed_addr #0 !dbg !591 {
  %1 = tail call %struct._reent* @__getreent() #6, !dbg !592
  %2 = tail call i32 @_fwalk(%struct._reent* %1, i32 (%struct.__sFILE*)* nonnull @__fp_lock) #6, !dbg !593
  ret void, !dbg !594
}

; Function Attrs: noredzone
declare dso_local i32 @_fwalk(%struct._reent*, i32 (%struct.__sFILE*)*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #2

; Function Attrs: noredzone nounwind readnone
define internal i32 @__fp_lock(%struct.__sFILE* nocapture readnone) #4 !dbg !595 {
  ret i32 0, !dbg !601
}

; Function Attrs: noredzone nounwind
define dso_local void @__fp_unlock_all() local_unnamed_addr #0 !dbg !602 {
  %1 = tail call %struct._reent* @__getreent() #6, !dbg !603
  %2 = tail call i32 @_fwalk(%struct._reent* %1, i32 (%struct.__sFILE*)* nonnull @__fp_unlock) #6, !dbg !604
  ret void, !dbg !605
}

; Function Attrs: noredzone nounwind readnone
define internal i32 @__fp_unlock(%struct.__sFILE* nocapture readnone) #4 !dbg !606 {
  ret i32 0, !dbg !610
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
attributes #3 = { norecurse noredzone nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone speculatable }
attributes #6 = { nobuiltin noredzone nounwind }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin noredzone }

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
!292 = !DILocation(line: 142, column: 1, scope: !252)
!293 = distinct !DISubprogram(name: "__sfp", scope: !1, file: !1, line: 149, type: !294, isLocal: false, isDefinition: true, scopeLine: 151, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !297)
!294 = !DISubroutineType(types: !295)
!295 = !{!296, !60}
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!297 = !{!298, !299, !300, !301, !302}
!298 = !DILocalVariable(name: "d", arg: 1, scope: !293, file: !1, line: 149, type: !60)
!299 = !DILocalVariable(name: "fp", scope: !293, file: !1, line: 152, type: !296)
!300 = !DILocalVariable(name: "n", scope: !293, file: !1, line: 153, type: !5)
!301 = !DILocalVariable(name: "g", scope: !293, file: !1, line: 154, type: !30)
!302 = !DILocalVariable(name: "__oldsfpcancel", scope: !303, file: !1, line: 156, type: !5)
!303 = distinct !DILexicalBlock(scope: !293, file: !1, line: 156, column: 3)
!304 = !DILocation(line: 149, column: 1, scope: !293)
!305 = !DILocation(line: 156, column: 3, scope: !303)
!306 = !DILocation(line: 158, column: 8, scope: !307)
!307 = distinct !DILexicalBlock(scope: !303, file: !1, line: 158, column: 7)
!308 = !{!271, !271, i64 0}
!309 = !DILocation(line: 158, column: 23, scope: !307)
!310 = !{!311, !274, i64 80}
!311 = !{!"_reent", !274, i64 0, !271, i64 8, !271, i64 16, !271, i64 24, !274, i64 32, !272, i64 36, !274, i64 64, !271, i64 72, !274, i64 80, !271, i64 88, !271, i64 96, !274, i64 104, !271, i64 112, !271, i64 120, !274, i64 128, !271, i64 136, !272, i64 144, !271, i64 504, !312, i64 512, !271, i64 1304, !270, i64 1312, !272, i64 1336}
!312 = !{!"_atexit", !271, i64 0, !274, i64 8, !272, i64 16, !313, i64 272}
!313 = !{!"_on_exit_args", !272, i64 0, !272, i64 256, !274, i64 512, !274, i64 516}
!314 = !DILocation(line: 158, column: 7, scope: !303)
!315 = !DILocation(line: 159, column: 5, scope: !307)
!316 = !DILocation(line: 160, column: 28, scope: !317)
!317 = distinct !DILexicalBlock(scope: !303, file: !1, line: 160, column: 3)
!318 = !DILocation(line: 154, column: 17, scope: !293)
!319 = !DILocation(line: 160, column: 8, scope: !317)
!320 = !DILocation(line: 0, scope: !321)
!321 = distinct !DILexicalBlock(scope: !317, file: !1, line: 160, column: 3)
!322 = !DILocation(line: 162, column: 34, scope: !323)
!323 = distinct !DILexicalBlock(scope: !324, file: !1, line: 162, column: 7)
!324 = distinct !DILexicalBlock(scope: !321, file: !1, line: 161, column: 5)
!325 = !{!270, !274, i64 8}
!326 = !DILocation(line: 153, column: 7, scope: !293)
!327 = !DILocation(line: 162, column: 46, scope: !328)
!328 = distinct !DILexicalBlock(scope: !323, file: !1, line: 162, column: 7)
!329 = !DILocation(line: 162, column: 7, scope: !323)
!330 = !DILocation(line: 162, column: 20, scope: !323)
!331 = !{!270, !271, i64 16}
!332 = !DILocation(line: 152, column: 9, scope: !293)
!333 = !DILocation(line: 163, column: 10, scope: !334)
!334 = distinct !DILexicalBlock(scope: !328, file: !1, line: 163, column: 6)
!335 = !{!275, !276, i64 16}
!336 = !DILocation(line: 163, column: 17, scope: !334)
!337 = !DILocation(line: 163, column: 6, scope: !328)
!338 = !DILocation(line: 162, column: 42, scope: !328)
!339 = !DILocation(line: 162, column: 54, scope: !328)
!340 = distinct !{!340, !329, !341}
!341 = !DILocation(line: 164, column: 9, scope: !323)
!342 = !DILocation(line: 165, column: 14, scope: !343)
!343 = distinct !DILexicalBlock(scope: !324, file: !1, line: 165, column: 11)
!344 = !{!270, !271, i64 0}
!345 = !DILocation(line: 165, column: 20, scope: !343)
!346 = !DILocation(line: 165, column: 28, scope: !343)
!347 = !DILocation(line: 127, column: 1, scope: !252, inlinedAt: !348)
!348 = distinct !DILocation(line: 166, column: 16, scope: !343)
!349 = !DILocation(line: 134, column: 5, scope: !252, inlinedAt: !348)
!350 = !DILocation(line: 135, column: 9, scope: !262, inlinedAt: !348)
!351 = !DILocation(line: 135, column: 7, scope: !252, inlinedAt: !348)
!352 = !DILocation(line: 166, column: 14, scope: !343)
!353 = !DILocation(line: 169, column: 3, scope: !303)
!354 = !{!274, !274, i64 0}
!355 = !DILocation(line: 170, column: 6, scope: !303)
!356 = !DILocation(line: 170, column: 13, scope: !303)
!357 = !{!311, !274, i64 0}
!358 = !DILocation(line: 180, column: 3, scope: !293)
!359 = !DILocation(line: 131, column: 26, scope: !252, inlinedAt: !348)
!360 = !DILocation(line: 137, column: 11, scope: !252, inlinedAt: !348)
!361 = !DILocation(line: 137, column: 17, scope: !252, inlinedAt: !348)
!362 = !DILocation(line: 138, column: 11, scope: !252, inlinedAt: !348)
!363 = !DILocation(line: 138, column: 18, scope: !252, inlinedAt: !348)
!364 = !DILocation(line: 139, column: 23, scope: !252, inlinedAt: !348)
!365 = !DILocation(line: 139, column: 11, scope: !252, inlinedAt: !348)
!366 = !DILocation(line: 139, column: 17, scope: !252, inlinedAt: !348)
!367 = !DILocation(line: 140, column: 3, scope: !252, inlinedAt: !348)
!368 = !DILocation(line: 165, column: 11, scope: !324)
!369 = distinct !{!369, !370, !371}
!370 = !DILocation(line: 160, column: 3, scope: !317)
!371 = !DILocation(line: 168, column: 5, scope: !317)
!372 = !DILocation(line: 174, column: 7, scope: !303)
!373 = !DILocation(line: 174, column: 13, scope: !303)
!374 = !{!275, !276, i64 18}
!375 = !DILocation(line: 175, column: 14, scope: !303)
!376 = !DILocation(line: 176, column: 7, scope: !303)
!377 = !DILocation(line: 176, column: 15, scope: !303)
!378 = !{!275, !274, i64 172}
!379 = !DILocation(line: 180, column: 3, scope: !303)
!380 = !DILocation(line: 182, column: 7, scope: !293)
!381 = !DILocation(line: 182, column: 10, scope: !293)
!382 = !{!275, !271, i64 0}
!383 = !DILocation(line: 183, column: 7, scope: !293)
!384 = !DILocation(line: 183, column: 10, scope: !293)
!385 = !{!275, !274, i64 12}
!386 = !DILocation(line: 184, column: 7, scope: !293)
!387 = !DILocation(line: 184, column: 10, scope: !293)
!388 = !{!275, !274, i64 8}
!389 = !DILocation(line: 185, column: 11, scope: !293)
!390 = !DILocation(line: 185, column: 17, scope: !293)
!391 = !{!275, !271, i64 24}
!392 = !DILocation(line: 186, column: 11, scope: !293)
!393 = !DILocation(line: 186, column: 17, scope: !293)
!394 = !{!275, !274, i64 32}
!395 = !DILocation(line: 187, column: 7, scope: !293)
!396 = !DILocation(line: 187, column: 16, scope: !293)
!397 = !{!275, !274, i64 40}
!398 = !DILocation(line: 188, column: 16, scope: !293)
!399 = !DILocation(line: 188, column: 11, scope: !293)
!400 = !DILocation(line: 188, column: 3, scope: !293)
!401 = !DILocation(line: 190, column: 11, scope: !293)
!402 = !DILocation(line: 190, column: 17, scope: !293)
!403 = !{!275, !271, i64 88}
!404 = !DILocation(line: 191, column: 11, scope: !293)
!405 = !DILocation(line: 191, column: 17, scope: !293)
!406 = !{!275, !274, i64 96}
!407 = !DILocation(line: 192, column: 11, scope: !293)
!408 = !DILocation(line: 192, column: 17, scope: !293)
!409 = !{!275, !271, i64 120}
!410 = !DILocation(line: 193, column: 11, scope: !293)
!411 = !DILocation(line: 193, column: 17, scope: !293)
!412 = !{!275, !274, i64 128}
!413 = !DILocation(line: 195, column: 3, scope: !293)
!414 = !DILocation(line: 196, column: 1, scope: !293)
!415 = distinct !DISubprogram(name: "__sfp_lock_acquire", scope: !1, file: !1, line: 307, type: !191, isLocal: false, isDefinition: true, scopeLine: 308, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !416)
!416 = !{}
!417 = !DILocation(line: 310, column: 1, scope: !415)
!418 = distinct !DISubprogram(name: "__sinit", scope: !1, file: !1, line: 249, type: !80, isLocal: false, isDefinition: true, scopeLine: 251, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !419)
!419 = !{!420}
!420 = !DILocalVariable(name: "s", arg: 1, scope: !418, file: !1, line: 249, type: !60)
!421 = !DILocation(line: 249, column: 1, scope: !418)
!422 = !DILocation(line: 254, column: 10, scope: !423)
!423 = distinct !DILexicalBlock(scope: !418, file: !1, line: 254, column: 7)
!424 = !DILocation(line: 254, column: 7, scope: !423)
!425 = !DILocation(line: 254, column: 7, scope: !418)
!426 = !DILocation(line: 261, column: 6, scope: !418)
!427 = !DILocation(line: 261, column: 16, scope: !418)
!428 = !{!311, !271, i64 88}
!429 = !DILocation(line: 263, column: 14, scope: !418)
!430 = !DILocation(line: 263, column: 20, scope: !418)
!431 = !{!311, !271, i64 1312}
!432 = !DILocation(line: 266, column: 14, scope: !418)
!433 = !DILocation(line: 266, column: 21, scope: !418)
!434 = !{!311, !274, i64 1320}
!435 = !DILocation(line: 267, column: 23, scope: !418)
!436 = !DILocation(line: 267, column: 14, scope: !418)
!437 = !DILocation(line: 267, column: 20, scope: !418)
!438 = !{!311, !271, i64 1328}
!439 = !DILocation(line: 291, column: 18, scope: !418)
!440 = !{!311, !271, i64 8}
!441 = !DILocalVariable(name: "ptr", arg: 1, scope: !442, file: !1, line: 92, type: !296)
!442 = distinct !DISubprogram(name: "stdin_init", scope: !1, file: !1, line: 92, type: !443, isLocal: true, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !445)
!443 = !DISubroutineType(types: !444)
!444 = !{null, !296}
!445 = !{!441}
!446 = !DILocation(line: 92, column: 18, scope: !442, inlinedAt: !447)
!447 = distinct !DILocation(line: 291, column: 3, scope: !418)
!448 = !DILocalVariable(name: "ptr", arg: 1, scope: !449, file: !1, line: 47, type: !296)
!449 = distinct !DISubprogram(name: "std", scope: !1, file: !1, line: 47, type: !450, isLocal: true, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !452)
!450 = !DISubroutineType(types: !451)
!451 = !{null, !296, !5, !5}
!452 = !{!448, !453, !454}
!453 = !DILocalVariable(name: "flags", arg: 2, scope: !449, file: !1, line: 47, type: !5)
!454 = !DILocalVariable(name: "file", arg: 3, scope: !449, file: !1, line: 47, type: !5)
!455 = !DILocation(line: 47, column: 1, scope: !449, inlinedAt: !456)
!456 = distinct !DILocation(line: 94, column: 3, scope: !442, inlinedAt: !447)
!457 = !DILocation(line: 52, column: 8, scope: !449, inlinedAt: !456)
!458 = !DILocation(line: 52, column: 11, scope: !449, inlinedAt: !456)
!459 = !DILocation(line: 53, column: 8, scope: !449, inlinedAt: !456)
!460 = !DILocation(line: 53, column: 11, scope: !449, inlinedAt: !456)
!461 = !DILocation(line: 54, column: 8, scope: !449, inlinedAt: !456)
!462 = !DILocation(line: 54, column: 11, scope: !449, inlinedAt: !456)
!463 = !DILocation(line: 55, column: 8, scope: !449, inlinedAt: !456)
!464 = !DILocation(line: 55, column: 15, scope: !449, inlinedAt: !456)
!465 = !DILocation(line: 56, column: 8, scope: !449, inlinedAt: !456)
!466 = !DILocation(line: 56, column: 16, scope: !449, inlinedAt: !456)
!467 = !DILocation(line: 57, column: 8, scope: !449, inlinedAt: !456)
!468 = !DILocation(line: 57, column: 14, scope: !449, inlinedAt: !456)
!469 = !DILocation(line: 58, column: 12, scope: !449, inlinedAt: !456)
!470 = !DILocation(line: 58, column: 18, scope: !449, inlinedAt: !456)
!471 = !DILocation(line: 59, column: 12, scope: !449, inlinedAt: !456)
!472 = !DILocation(line: 59, column: 18, scope: !449, inlinedAt: !456)
!473 = !DILocation(line: 60, column: 8, scope: !449, inlinedAt: !456)
!474 = !DILocation(line: 60, column: 17, scope: !449, inlinedAt: !456)
!475 = !DILocation(line: 61, column: 17, scope: !449, inlinedAt: !456)
!476 = !DILocation(line: 61, column: 11, scope: !449, inlinedAt: !456)
!477 = !DILocation(line: 61, column: 3, scope: !449, inlinedAt: !456)
!478 = !DILocation(line: 62, column: 8, scope: !449, inlinedAt: !456)
!479 = !DILocation(line: 62, column: 16, scope: !449, inlinedAt: !456)
!480 = !{!275, !271, i64 48}
!481 = !DILocation(line: 63, column: 8, scope: !449, inlinedAt: !456)
!482 = !DILocation(line: 63, column: 14, scope: !449, inlinedAt: !456)
!483 = !DILocation(line: 71, column: 8, scope: !449, inlinedAt: !456)
!484 = !DILocation(line: 71, column: 14, scope: !449, inlinedAt: !456)
!485 = !{!275, !271, i64 72}
!486 = !DILocation(line: 73, column: 8, scope: !449, inlinedAt: !456)
!487 = !DILocation(line: 73, column: 15, scope: !449, inlinedAt: !456)
!488 = !{!275, !271, i64 80}
!489 = !DILocation(line: 292, column: 19, scope: !418)
!490 = !{!311, !271, i64 16}
!491 = !DILocalVariable(name: "ptr", arg: 1, scope: !492, file: !1, line: 98, type: !296)
!492 = distinct !DISubprogram(name: "stdout_init", scope: !1, file: !1, line: 98, type: !443, isLocal: true, isDefinition: true, scopeLine: 99, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !493)
!493 = !{!491}
!494 = !DILocation(line: 98, column: 19, scope: !492, inlinedAt: !495)
!495 = distinct !DILocation(line: 292, column: 3, scope: !418)
!496 = !DILocation(line: 47, column: 1, scope: !449, inlinedAt: !497)
!497 = distinct !DILocation(line: 109, column: 3, scope: !492, inlinedAt: !495)
!498 = !DILocation(line: 52, column: 8, scope: !449, inlinedAt: !497)
!499 = !DILocation(line: 52, column: 11, scope: !449, inlinedAt: !497)
!500 = !DILocation(line: 53, column: 8, scope: !449, inlinedAt: !497)
!501 = !DILocation(line: 53, column: 11, scope: !449, inlinedAt: !497)
!502 = !DILocation(line: 54, column: 8, scope: !449, inlinedAt: !497)
!503 = !DILocation(line: 54, column: 11, scope: !449, inlinedAt: !497)
!504 = !DILocation(line: 55, column: 8, scope: !449, inlinedAt: !497)
!505 = !DILocation(line: 55, column: 15, scope: !449, inlinedAt: !497)
!506 = !DILocation(line: 56, column: 8, scope: !449, inlinedAt: !497)
!507 = !DILocation(line: 56, column: 16, scope: !449, inlinedAt: !497)
!508 = !DILocation(line: 57, column: 8, scope: !449, inlinedAt: !497)
!509 = !DILocation(line: 57, column: 14, scope: !449, inlinedAt: !497)
!510 = !DILocation(line: 58, column: 12, scope: !449, inlinedAt: !497)
!511 = !DILocation(line: 58, column: 18, scope: !449, inlinedAt: !497)
!512 = !DILocation(line: 59, column: 12, scope: !449, inlinedAt: !497)
!513 = !DILocation(line: 59, column: 18, scope: !449, inlinedAt: !497)
!514 = !DILocation(line: 60, column: 8, scope: !449, inlinedAt: !497)
!515 = !DILocation(line: 60, column: 17, scope: !449, inlinedAt: !497)
!516 = !DILocation(line: 61, column: 17, scope: !449, inlinedAt: !497)
!517 = !DILocation(line: 61, column: 11, scope: !449, inlinedAt: !497)
!518 = !DILocation(line: 61, column: 3, scope: !449, inlinedAt: !497)
!519 = !DILocation(line: 62, column: 8, scope: !449, inlinedAt: !497)
!520 = !DILocation(line: 62, column: 16, scope: !449, inlinedAt: !497)
!521 = !DILocation(line: 63, column: 8, scope: !449, inlinedAt: !497)
!522 = !DILocation(line: 63, column: 14, scope: !449, inlinedAt: !497)
!523 = !DILocation(line: 71, column: 8, scope: !449, inlinedAt: !497)
!524 = !DILocation(line: 71, column: 14, scope: !449, inlinedAt: !497)
!525 = !DILocation(line: 73, column: 8, scope: !449, inlinedAt: !497)
!526 = !DILocation(line: 73, column: 15, scope: !449, inlinedAt: !497)
!527 = !DILocation(line: 293, column: 19, scope: !418)
!528 = !{!311, !271, i64 24}
!529 = !DILocalVariable(name: "ptr", arg: 1, scope: !530, file: !1, line: 114, type: !296)
!530 = distinct !DISubprogram(name: "stderr_init", scope: !1, file: !1, line: 114, type: !443, isLocal: true, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !531)
!531 = !{!529}
!532 = !DILocation(line: 114, column: 19, scope: !530, inlinedAt: !533)
!533 = distinct !DILocation(line: 293, column: 3, scope: !418)
!534 = !DILocation(line: 47, column: 1, scope: !449, inlinedAt: !535)
!535 = distinct !DILocation(line: 118, column: 3, scope: !530, inlinedAt: !533)
!536 = !DILocation(line: 52, column: 8, scope: !449, inlinedAt: !535)
!537 = !DILocation(line: 52, column: 11, scope: !449, inlinedAt: !535)
!538 = !DILocation(line: 53, column: 8, scope: !449, inlinedAt: !535)
!539 = !DILocation(line: 53, column: 11, scope: !449, inlinedAt: !535)
!540 = !DILocation(line: 54, column: 8, scope: !449, inlinedAt: !535)
!541 = !DILocation(line: 54, column: 11, scope: !449, inlinedAt: !535)
!542 = !DILocation(line: 55, column: 8, scope: !449, inlinedAt: !535)
!543 = !DILocation(line: 55, column: 15, scope: !449, inlinedAt: !535)
!544 = !DILocation(line: 56, column: 8, scope: !449, inlinedAt: !535)
!545 = !DILocation(line: 56, column: 16, scope: !449, inlinedAt: !535)
!546 = !DILocation(line: 57, column: 8, scope: !449, inlinedAt: !535)
!547 = !DILocation(line: 57, column: 14, scope: !449, inlinedAt: !535)
!548 = !DILocation(line: 58, column: 12, scope: !449, inlinedAt: !535)
!549 = !DILocation(line: 58, column: 18, scope: !449, inlinedAt: !535)
!550 = !DILocation(line: 59, column: 12, scope: !449, inlinedAt: !535)
!551 = !DILocation(line: 59, column: 18, scope: !449, inlinedAt: !535)
!552 = !DILocation(line: 60, column: 8, scope: !449, inlinedAt: !535)
!553 = !DILocation(line: 60, column: 17, scope: !449, inlinedAt: !535)
!554 = !DILocation(line: 61, column: 17, scope: !449, inlinedAt: !535)
!555 = !DILocation(line: 61, column: 11, scope: !449, inlinedAt: !535)
!556 = !DILocation(line: 61, column: 3, scope: !449, inlinedAt: !535)
!557 = !DILocation(line: 62, column: 8, scope: !449, inlinedAt: !535)
!558 = !DILocation(line: 62, column: 16, scope: !449, inlinedAt: !535)
!559 = !DILocation(line: 63, column: 8, scope: !449, inlinedAt: !535)
!560 = !DILocation(line: 63, column: 14, scope: !449, inlinedAt: !535)
!561 = !DILocation(line: 71, column: 8, scope: !449, inlinedAt: !535)
!562 = !DILocation(line: 71, column: 14, scope: !449, inlinedAt: !535)
!563 = !DILocation(line: 73, column: 8, scope: !449, inlinedAt: !535)
!564 = !DILocation(line: 73, column: 15, scope: !449, inlinedAt: !535)
!565 = !DILocation(line: 296, column: 17, scope: !418)
!566 = !DILocation(line: 299, column: 1, scope: !418)
!567 = distinct !DISubprogram(name: "__sfp_lock_release", scope: !1, file: !1, line: 313, type: !191, isLocal: false, isDefinition: true, scopeLine: 314, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !416)
!568 = !DILocation(line: 316, column: 1, scope: !567)
!569 = distinct !DISubprogram(name: "_cleanup_r", scope: !1, file: !1, line: 207, type: !80, isLocal: false, isDefinition: true, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !570)
!570 = !{!571, !572}
!571 = !DILocalVariable(name: "ptr", arg: 1, scope: !569, file: !1, line: 207, type: !60)
!572 = !DILocalVariable(name: "cleanup_func", scope: !569, file: !1, line: 210, type: !573)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DISubroutineType(types: !575)
!575 = !{!5, !60, !296}
!576 = !DILocation(line: 207, column: 1, scope: !569)
!577 = !DILocation(line: 210, column: 9, scope: !569)
!578 = !DILocation(line: 233, column: 14, scope: !569)
!579 = !DILocation(line: 234, column: 1, scope: !569)
!580 = distinct !DISubprogram(name: "_cleanup", scope: !1, file: !1, line: 238, type: !191, isLocal: false, isDefinition: true, scopeLine: 239, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !416)
!581 = !DILocation(line: 240, column: 15, scope: !580)
!582 = !DILocation(line: 207, column: 1, scope: !569, inlinedAt: !583)
!583 = distinct !DILocation(line: 240, column: 3, scope: !580)
!584 = !DILocation(line: 210, column: 9, scope: !569, inlinedAt: !583)
!585 = !DILocation(line: 233, column: 14, scope: !569, inlinedAt: !583)
!586 = !DILocation(line: 241, column: 1, scope: !580)
!587 = distinct !DISubprogram(name: "__sinit_lock_acquire", scope: !1, file: !1, line: 319, type: !191, isLocal: false, isDefinition: true, scopeLine: 320, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !416)
!588 = !DILocation(line: 322, column: 1, scope: !587)
!589 = distinct !DISubprogram(name: "__sinit_lock_release", scope: !1, file: !1, line: 325, type: !191, isLocal: false, isDefinition: true, scopeLine: 326, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !416)
!590 = !DILocation(line: 328, column: 1, scope: !589)
!591 = distinct !DISubprogram(name: "__fp_lock_all", scope: !1, file: !1, line: 353, type: !191, isLocal: false, isDefinition: true, scopeLine: 354, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !416)
!592 = !DILocation(line: 357, column: 22, scope: !591)
!593 = !DILocation(line: 357, column: 14, scope: !591)
!594 = !DILocation(line: 358, column: 1, scope: !591)
!595 = distinct !DISubprogram(name: "__fp_lock", scope: !1, file: !1, line: 332, type: !596, isLocal: true, isDefinition: true, scopeLine: 334, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !598)
!596 = !DISubroutineType(types: !597)
!597 = !{!5, !296}
!598 = !{!599}
!599 = !DILocalVariable(name: "ptr", arg: 1, scope: !595, file: !1, line: 332, type: !296)
!600 = !DILocation(line: 332, column: 1, scope: !595)
!601 = !DILocation(line: 338, column: 3, scope: !595)
!602 = distinct !DISubprogram(name: "__fp_unlock_all", scope: !1, file: !1, line: 361, type: !191, isLocal: false, isDefinition: true, scopeLine: 362, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !416)
!603 = !DILocation(line: 363, column: 22, scope: !602)
!604 = !DILocation(line: 363, column: 14, scope: !602)
!605 = !DILocation(line: 366, column: 1, scope: !602)
!606 = distinct !DISubprogram(name: "__fp_unlock", scope: !1, file: !1, line: 343, type: !596, isLocal: true, isDefinition: true, scopeLine: 345, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !607)
!607 = !{!608}
!608 = !DILocalVariable(name: "ptr", arg: 1, scope: !606, file: !1, line: 343, type: !296)
!609 = !DILocation(line: 343, column: 1, scope: !606)
!610 = !DILocation(line: 349, column: 3, scope: !606)
