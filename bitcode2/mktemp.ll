; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/mktemp.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/mktemp.c"
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
%struct.stat = type { i16, i16, i32, i16, i16, i16, i16, i64, %struct.timespec, %struct.timespec, %struct.timespec, i64, i64 }
%struct.timespec = type { i64, i64 }

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @_mkstemp_r(%struct._reent*, i8*) local_unnamed_addr #0 !dbg !14 {
  %3 = alloca i32, align 4
  %4 = bitcast i32* %3 to i8*, !dbg !237
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #4, !dbg !237
  %5 = call fastcc i32 @_gettemp(%struct._reent* %0, i8* %1, i32* nonnull %3, i32 0, i64 0, i32 0) #5, !dbg !239
  %6 = icmp eq i32 %5, 0, !dbg !239
  %7 = load i32, i32* %3, align 4, !dbg !240
  %8 = select i1 %6, i32 -1, i32 %7, !dbg !239
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #4, !dbg !241
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !242
  ret i32 %8, !dbg !242
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone nounwind
define internal fastcc i32 @_gettemp(%struct._reent*, i8*, i32*, i32, i64, i32) unnamed_addr #0 !dbg !243 {
  %7 = alloca %struct.stat, align 8
  %8 = bitcast %struct.stat* %7 to i8*, !dbg !304
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %8) #4, !dbg !304
  %9 = tail call i32 @_getpid_r(%struct._reent* %0) #6, !dbg !305
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !308
  %10 = load i8, i8* %1, align 1, !dbg !310, !tbaa !312
  %11 = icmp eq i8 %10, 0, !dbg !315
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !315
  br i1 %11, label %17, label %12, !dbg !315

; <label>:12:                                     ; preds = %6, %12
  %13 = phi i8* [ %14, %12 ], [ %1, %6 ]
  %14 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !316
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !317
  %15 = load i8, i8* %14, align 1, !dbg !310, !tbaa !312
  %16 = icmp eq i8 %15, 0, !dbg !315
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !315
  br i1 %16, label %17, label %12, !dbg !315, !llvm.loop !318

; <label>:17:                                     ; preds = %12, %6
  %18 = phi i8* [ %1, %6 ], [ %14, %12 ], !dbg !320
  %19 = ptrtoint i8* %18 to i64, !dbg !321
  %20 = ptrtoint i8* %1 to i64, !dbg !321
  %21 = sub i64 %19, %20, !dbg !321
  %22 = icmp ult i64 %21, %4, !dbg !323
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !324
  br i1 %22, label %23, label %25, !dbg !324

; <label>:23:                                     ; preds = %17
  %24 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !325
  store i32 22, i32* %24, align 8, !dbg !327, !tbaa !328
  br label %112, !dbg !335

; <label>:25:                                     ; preds = %17
  %26 = sub i64 0, %4, !dbg !336
  %27 = getelementptr inbounds i8, i8* %18, i64 %26, !dbg !336
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !338
  %28 = icmp ugt i8* %27, %1, !dbg !339
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !340
  br i1 %28, label %29, label %41, !dbg !340

; <label>:29:                                     ; preds = %25, %35
  %30 = phi i32 [ %39, %35 ], [ %9, %25 ]
  %31 = phi i8* [ %32, %35 ], [ %27, %25 ]
  %32 = getelementptr inbounds i8, i8* %31, i64 -1, !dbg !341
  %33 = load i8, i8* %32, align 1, !dbg !342, !tbaa !312
  %34 = icmp eq i8 %33, 88, !dbg !343
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !338
  br i1 %34, label %35, label %41, !dbg !338

; <label>:35:                                     ; preds = %29
  %36 = urem i32 %30, 10, !dbg !344
  %37 = trunc i32 %36 to i8, !dbg !346
  %38 = or i8 %37, 48, !dbg !346
  store i8 %38, i8* %32, align 1, !dbg !347, !tbaa !312
  %39 = udiv i32 %30, 10, !dbg !348
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !338
  %40 = icmp ugt i8* %32, %1, !dbg !339
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !340
  br i1 %40, label %29, label %41, !dbg !340, !llvm.loop !349

; <label>:41:                                     ; preds = %29, %35, %25
  %42 = phi i8* [ %27, %25 ], [ %32, %35 ], [ %32, %29 ], !dbg !351
  %43 = ptrtoint i8* %27 to i64, !dbg !352
  %44 = ptrtoint i8* %42 to i64, !dbg !352
  %45 = sub i64 %43, %44, !dbg !352
  %46 = icmp slt i64 %45, 6, !dbg !354
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !355
  br i1 %46, label %47, label %49, !dbg !355

; <label>:47:                                     ; preds = %41
  %48 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !356
  store i32 22, i32* %48, align 8, !dbg !358, !tbaa !328
  br label %112, !dbg !359

; <label>:49:                                     ; preds = %41
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !361
  %50 = icmp ugt i8* %42, %1, !dbg !363
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !367
  br i1 %50, label %51, label %69, !dbg !367

; <label>:51:                                     ; preds = %49, %66
  %52 = phi i8* [ %67, %66 ], [ %42, %49 ]
  %53 = load i8, i8* %52, align 1, !dbg !368, !tbaa !312
  %54 = icmp eq i8 %53, 47, !dbg !370
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !371
  br i1 %54, label %55, label %66, !dbg !371

; <label>:55:                                     ; preds = %51
  store i8 0, i8* %52, align 1, !dbg !372, !tbaa !312
  %56 = call i32 @_stat_r(%struct._reent* %0, i8* %1, %struct.stat* nonnull %7) #6, !dbg !375
  %57 = icmp eq i32 %56, 0, !dbg !375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !377
  br i1 %57, label %58, label %112, !dbg !377

; <label>:58:                                     ; preds = %55
  %59 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 2, !dbg !378
  %60 = load i32, i32* %59, align 4, !dbg !378, !tbaa !380
  %61 = and i32 %60, 16384, !dbg !385
  %62 = icmp eq i32 %61, 0, !dbg !385
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !386
  br i1 %62, label %63, label %65, !dbg !386

; <label>:63:                                     ; preds = %58
  %64 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !387
  store i32 20, i32* %64, align 8, !dbg !389, !tbaa !328
  br label %112, !dbg !390

; <label>:65:                                     ; preds = %58
  store i8 47, i8* %52, align 1, !dbg !391, !tbaa !312
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !392
  br label %69, !dbg !392

; <label>:66:                                     ; preds = %51
  %67 = getelementptr inbounds i8, i8* %52, i64 -1, !dbg !393
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !394
  %68 = icmp ugt i8* %67, %1, !dbg !363
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !367
  br i1 %68, label %51, label %69, !dbg !367, !llvm.loop !395

; <label>:69:                                     ; preds = %66, %49, %65
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !398
  %70 = icmp eq i32 %3, 0, !dbg !399
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !404
  br i1 %70, label %71, label %77, !dbg !404

; <label>:71:                                     ; preds = %69
  %72 = icmp eq i32* %2, null
  %73 = getelementptr inbounds i8, i8* %42, i64 1
  %74 = icmp eq i8* %73, %27
  %75 = or i32 %5, 2562
  %76 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0
  br label %79, !dbg !404

; <label>:77:                                     ; preds = %69
  %78 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !405
  store i32 88, i32* %78, align 8, !dbg !407, !tbaa !328
  br label %112, !dbg !408

; <label>:79:                                     ; preds = %101, %71
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !409
  br i1 %72, label %86, label %80, !dbg !409

; <label>:80:                                     ; preds = %79
  %81 = call i32 @_open_r(%struct._reent* %0, i8* %1, i32 %75, i32 384) #6, !dbg !410
  store i32 %81, i32* %2, align 4, !dbg !414, !tbaa !415
  %82 = icmp sgt i32 %81, -1, !dbg !416
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !417
  br i1 %82, label %112, label %83, !dbg !417

; <label>:83:                                     ; preds = %80
  %84 = load i32, i32* %76, align 8, !dbg !418, !tbaa !328
  %85 = icmp eq i32 %84, 17, !dbg !420
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !421
  br i1 %85, label %93, label %112, !dbg !421

; <label>:86:                                     ; preds = %79
  %87 = call i32 @_stat_r(%struct._reent* %0, i8* %1, %struct.stat* nonnull %7) #6, !dbg !422
  %88 = icmp eq i32 %87, 0, !dbg !422
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !424
  br i1 %88, label %93, label %89, !dbg !424

; <label>:89:                                     ; preds = %86
  %90 = load i32, i32* %76, align 8, !dbg !425, !tbaa !328
  %91 = icmp eq i32 %90, 2, !dbg !426
  %92 = zext i1 %91 to i32, !dbg !427
  br label %112, !dbg !428

; <label>:93:                                     ; preds = %83, %86
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !429
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !431
  br i1 %74, label %112, label %94, !dbg !431

; <label>:94:                                     ; preds = %93, %98
  %95 = phi i8* [ %99, %98 ], [ %73, %93 ]
  %96 = load i8, i8* %95, align 1, !dbg !434, !tbaa !312
  %97 = icmp eq i8 %96, 122, !dbg !436
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !437
  br i1 %97, label %98, label %101, !dbg !437

; <label>:98:                                     ; preds = %94
  store i8 97, i8* %95, align 1, !dbg !438, !tbaa !312
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !439
  %99 = getelementptr inbounds i8, i8* %95, i64 1, !dbg !440
  %100 = icmp eq i8* %99, %27, !dbg !441
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !431
  br i1 %100, label %112, label %94, !dbg !431, !llvm.loop !443

; <label>:101:                                    ; preds = %94
  %102 = call i8* @__locale_ctype_ptr() #6, !dbg !446
  %103 = getelementptr inbounds i8, i8* %102, i64 1, !dbg !446
  %104 = load i8, i8* %95, align 1, !dbg !446, !tbaa !312
  %105 = zext i8 %104 to i64, !dbg !446
  %106 = getelementptr inbounds i8, i8* %103, i64 %105, !dbg !446
  %107 = load i8, i8* %106, align 1, !dbg !446, !tbaa !312
  %108 = and i8 %107, 4, !dbg !446
  %109 = icmp eq i8 %108, 0, !dbg !446
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !449
  %110 = add i8 %104, 1, !dbg !450
  %111 = select i1 %109, i8 %110, i8 97, !dbg !449
  store i8 %111, i8* %95, align 1, !dbg !451, !tbaa !312
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !452
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !404
  br label %79, !dbg !404

; <label>:112:                                    ; preds = %93, %83, %80, %98, %55, %89, %77, %63, %47, %23
  %113 = phi i32 [ 0, %23 ], [ 0, %47 ], [ 0, %77 ], [ %92, %89 ], [ 0, %63 ], [ 0, %55 ], [ 0, %98 ], [ 0, %93 ], [ 0, %83 ], [ 1, %80 ], !dbg !453
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !454
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %8) #4, !dbg !455
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !455
  ret i32 %113, !dbg !455
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone nounwind
define dso_local i8* @_mkdtemp_r(%struct._reent*, i8*) local_unnamed_addr #0 !dbg !456 {
  %3 = tail call fastcc i32 @_gettemp(%struct._reent* %0, i8* %1, i32* null, i32 1, i64 0, i32 0) #5, !dbg !463
  %4 = icmp eq i32 %3, 0, !dbg !463
  %5 = select i1 %4, i8* null, i8* %1, !dbg !463
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !464
  ret i8* %5, !dbg !464
}

; Function Attrs: noredzone nounwind
define dso_local i32 @_mkstemps_r(%struct._reent*, i8*, i32) local_unnamed_addr #0 !dbg !465 {
  %4 = alloca i32, align 4
  %5 = bitcast i32* %4 to i8*, !dbg !474
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #4, !dbg !474
  %6 = sext i32 %2 to i64, !dbg !475
  %7 = call fastcc i32 @_gettemp(%struct._reent* %0, i8* %1, i32* nonnull %4, i32 0, i64 %6, i32 0) #5, !dbg !477
  %8 = icmp eq i32 %7, 0, !dbg !477
  %9 = load i32, i32* %4, align 4, !dbg !478
  %10 = select i1 %8, i32 -1, i32 %9, !dbg !477
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #4, !dbg !479
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !480
  ret i32 %10, !dbg !480
}

; Function Attrs: noredzone nounwind
define dso_local i32 @_mkostemp_r(%struct._reent*, i8*, i32) local_unnamed_addr #0 !dbg !481 {
  %4 = alloca i32, align 4
  %5 = bitcast i32* %4 to i8*, !dbg !488
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #4, !dbg !488
  %6 = and i32 %2, -4, !dbg !489
  %7 = call fastcc i32 @_gettemp(%struct._reent* %0, i8* %1, i32* nonnull %4, i32 0, i64 0, i32 %6) #5, !dbg !491
  %8 = icmp eq i32 %7, 0, !dbg !491
  %9 = load i32, i32* %4, align 4, !dbg !492
  %10 = select i1 %8, i32 -1, i32 %9, !dbg !491
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #4, !dbg !493
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !494
  ret i32 %10, !dbg !494
}

; Function Attrs: noredzone nounwind
define dso_local i32 @_mkostemps_r(%struct._reent*, i8*, i32, i32) local_unnamed_addr #0 !dbg !495 {
  %5 = alloca i32, align 4
  %6 = bitcast i32* %5 to i8*, !dbg !505
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #4, !dbg !505
  %7 = sext i32 %2 to i64, !dbg !506
  %8 = and i32 %3, -4, !dbg !507
  %9 = call fastcc i32 @_gettemp(%struct._reent* %0, i8* %1, i32* nonnull %5, i32 0, i64 %7, i32 %8) #5, !dbg !509
  %10 = icmp eq i32 %9, 0, !dbg !509
  %11 = load i32, i32* %5, align 4, !dbg !510
  %12 = select i1 %10, i32 -1, i32 %11, !dbg !509
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #4, !dbg !511
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !512
  ret i32 %12, !dbg !512
}

; Function Attrs: noredzone nounwind
define dso_local i8* @_mktemp_r(%struct._reent*, i8*) local_unnamed_addr #0 !dbg !513 {
  %3 = tail call fastcc i32 @_gettemp(%struct._reent* %0, i8* %1, i32* null, i32 0, i64 0, i32 0) #5, !dbg !518
  %4 = icmp eq i32 %3, 0, !dbg !518
  %5 = select i1 %4, i8* null, i8* %1, !dbg !518
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !519
  ret i8* %5, !dbg !519
}

; Function Attrs: noredzone nounwind
define dso_local i32 @mkstemp(i8*) local_unnamed_addr #0 !dbg !520 {
  %2 = alloca i32, align 4
  %3 = bitcast i32* %2 to i8*, !dbg !527
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #4, !dbg !527
  %4 = tail call %struct._reent* @__getreent() #6, !dbg !528
  %5 = call fastcc i32 @_gettemp(%struct._reent* %4, i8* %0, i32* nonnull %2, i32 0, i64 0, i32 0) #5, !dbg !530
  %6 = icmp eq i32 %5, 0, !dbg !530
  %7 = load i32, i32* %2, align 4, !dbg !531
  %8 = select i1 %6, i32 -1, i32 %7, !dbg !530
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #4, !dbg !532
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !533
  ret i32 %8, !dbg !533
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i8* @mkdtemp(i8*) local_unnamed_addr #0 !dbg !534 {
  %2 = tail call %struct._reent* @__getreent() #6, !dbg !540
  %3 = tail call fastcc i32 @_gettemp(%struct._reent* %2, i8* %0, i32* null, i32 1, i64 0, i32 0) #5, !dbg !541
  %4 = icmp eq i32 %3, 0, !dbg !541
  %5 = select i1 %4, i8* null, i8* %0, !dbg !541
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !542
  ret i8* %5, !dbg !542
}

; Function Attrs: noredzone nounwind
define dso_local i32 @mkstemps(i8*, i32) local_unnamed_addr #0 !dbg !543 {
  %3 = alloca i32, align 4
  %4 = bitcast i32* %3 to i8*, !dbg !551
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #4, !dbg !551
  %5 = tail call %struct._reent* @__getreent() #6, !dbg !552
  %6 = sext i32 %1 to i64, !dbg !553
  %7 = call fastcc i32 @_gettemp(%struct._reent* %5, i8* %0, i32* nonnull %3, i32 0, i64 %6, i32 0) #5, !dbg !555
  %8 = icmp eq i32 %7, 0, !dbg !555
  %9 = load i32, i32* %3, align 4, !dbg !556
  %10 = select i1 %8, i32 -1, i32 %9, !dbg !555
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #4, !dbg !557
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !558
  ret i32 %10, !dbg !558
}

; Function Attrs: noredzone nounwind
define dso_local i32 @mkostemp(i8*, i32) local_unnamed_addr #0 !dbg !559 {
  %3 = alloca i32, align 4
  %4 = bitcast i32* %3 to i8*, !dbg !565
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #4, !dbg !565
  %5 = tail call %struct._reent* @__getreent() #6, !dbg !566
  %6 = and i32 %1, -4, !dbg !567
  %7 = call fastcc i32 @_gettemp(%struct._reent* %5, i8* %0, i32* nonnull %3, i32 0, i64 0, i32 %6) #5, !dbg !569
  %8 = icmp eq i32 %7, 0, !dbg !569
  %9 = load i32, i32* %3, align 4, !dbg !570
  %10 = select i1 %8, i32 -1, i32 %9, !dbg !569
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #4, !dbg !571
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !572
  ret i32 %10, !dbg !572
}

; Function Attrs: noredzone nounwind
define dso_local i32 @mkostemps(i8*, i32, i32) local_unnamed_addr #0 !dbg !573 {
  %4 = alloca i32, align 4
  %5 = bitcast i32* %4 to i8*, !dbg !582
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #4, !dbg !582
  %6 = tail call %struct._reent* @__getreent() #6, !dbg !583
  %7 = sext i32 %1 to i64, !dbg !584
  %8 = and i32 %2, -4, !dbg !585
  %9 = call fastcc i32 @_gettemp(%struct._reent* %6, i8* %0, i32* nonnull %4, i32 0, i64 %7, i32 %8) #5, !dbg !587
  %10 = icmp eq i32 %9, 0, !dbg !587
  %11 = load i32, i32* %4, align 4, !dbg !588
  %12 = select i1 %10, i32 -1, i32 %11, !dbg !587
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #4, !dbg !589
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !590
  ret i32 %12, !dbg !590
}

; Function Attrs: noredzone nounwind
define dso_local i8* @mktemp(i8*) local_unnamed_addr #0 !dbg !591 {
  %2 = tail call %struct._reent* @__getreent() #6, !dbg !595
  %3 = tail call fastcc i32 @_gettemp(%struct._reent* %2, i8* %0, i32* null, i32 0, i64 0, i32 0) #5, !dbg !596
  %4 = icmp eq i32 %3, 0, !dbg !596
  %5 = select i1 %4, i8* null, i8* %0, !dbg !596
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !597
  ret i8* %5, !dbg !597
}

; Function Attrs: noredzone
declare dso_local i32 @_getpid_r(%struct._reent*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @_stat_r(%struct._reent*, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @_open_r(%struct._reent*, i8*, i32, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @__locale_ctype_ptr() local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone }
attributes #6 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/mktemp.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !6, !7, !5, !9}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!10 = !{i32 2, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!14 = distinct !DISubprogram(name: "_mkstemp_r", scope: !1, file: !1, line: 266, type: !15, isLocal: false, isDefinition: true, scopeLine: 269, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !232)
!15 = !DISubroutineType(types: !16)
!16 = !{!5, !17, !7}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !19, line: 569, size: 14912, elements: !20)
!19 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!20 = !{!21, !22, !100, !101, !102, !103, !107, !108, !111, !112, !116, !128, !129, !130, !132, !133, !134, !196, !217, !218, !223, !230}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !18, file: !19, line: 571, baseType: !5, size: 32)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !18, file: !19, line: 576, baseType: !23, size: 64, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !19, line: 287, baseType: !25)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !19, line: 181, size: 1408, elements: !26)
!26 = !{!27, !29, !30, !31, !33, !34, !39, !40, !41, !48, !54, !59, !63, !64, !65, !66, !70, !74, !75, !76, !78, !79, !83, !99}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !25, file: !19, line: 182, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !25, file: !19, line: 183, baseType: !5, size: 32, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !25, file: !19, line: 184, baseType: !5, size: 32, offset: 96)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !25, file: !19, line: 185, baseType: !32, size: 16, offset: 128)
!32 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !25, file: !19, line: 186, baseType: !32, size: 16, offset: 144)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !25, file: !19, line: 187, baseType: !35, size: 128, offset: 192)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !19, line: 117, size: 128, elements: !36)
!36 = !{!37, !38}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !35, file: !19, line: 118, baseType: !28, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !35, file: !19, line: 119, baseType: !5, size: 32, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !25, file: !19, line: 188, baseType: !5, size: 32, offset: 320)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !25, file: !19, line: 195, baseType: !6, size: 64, offset: 384)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !25, file: !19, line: 197, baseType: !42, size: 64, offset: 448)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DISubroutineType(types: !44)
!44 = !{!45, !17, !6, !7, !5}
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !46, line: 145, baseType: !47)
!46 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!47 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !25, file: !19, line: 199, baseType: !49, size: 64, offset: 512)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DISubroutineType(types: !51)
!51 = !{!45, !17, !6, !52, !5}
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !25, file: !19, line: 202, baseType: !55, size: 64, offset: 576)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DISubroutineType(types: !57)
!57 = !{!58, !17, !6, !58, !5}
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !46, line: 114, baseType: !47)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !25, file: !19, line: 203, baseType: !60, size: 64, offset: 640)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DISubroutineType(types: !62)
!62 = !{!5, !17, !6}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !25, file: !19, line: 206, baseType: !35, size: 128, offset: 704)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !25, file: !19, line: 207, baseType: !28, size: 64, offset: 832)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !25, file: !19, line: 208, baseType: !5, size: 32, offset: 896)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !25, file: !19, line: 211, baseType: !67, size: 24, offset: 928)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 24, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 3)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !25, file: !19, line: 212, baseType: !71, size: 8, offset: 952)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 8, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 1)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !25, file: !19, line: 215, baseType: !35, size: 128, offset: 960)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !25, file: !19, line: 218, baseType: !5, size: 32, offset: 1088)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !25, file: !19, line: 219, baseType: !77, size: 64, offset: 1152)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !46, line: 44, baseType: !47)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !25, file: !19, line: 222, baseType: !17, size: 64, offset: 1216)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !25, file: !19, line: 226, baseType: !80, size: 32, offset: 1280)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !46, line: 175, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !82, line: 12, baseType: !5)
!82 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !25, file: !19, line: 228, baseType: !84, size: 64, offset: 1312)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !46, line: 171, baseType: !85)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !46, line: 163, size: 64, elements: !86)
!86 = !{!87, !88}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !85, file: !46, line: 165, baseType: !5, size: 32)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !85, file: !46, line: 170, baseType: !89, size: 32, offset: 32)
!89 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !85, file: !46, line: 166, size: 32, elements: !90)
!90 = !{!91, !95}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !89, file: !46, line: 168, baseType: !92, size: 32)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !93, line: 124, baseType: !94)
!93 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!94 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !89, file: !46, line: 169, baseType: !96, size: 32)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 32, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 4)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !25, file: !19, line: 229, baseType: !5, size: 32, offset: 1376)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !18, file: !19, line: 576, baseType: !23, size: 64, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !18, file: !19, line: 576, baseType: !23, size: 64, offset: 192)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !18, file: !19, line: 578, baseType: !5, size: 32, offset: 256)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !18, file: !19, line: 579, baseType: !104, size: 200, offset: 288)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 200, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 25)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !18, file: !19, line: 582, baseType: !5, size: 32, offset: 512)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !18, file: !19, line: 583, baseType: !109, size: 64, offset: 576)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !19, line: 40, flags: DIFlagFwdDecl)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !18, file: !19, line: 585, baseType: !5, size: 32, offset: 640)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !18, file: !19, line: 587, baseType: !113, size: 64, offset: 704)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DISubroutineType(types: !115)
!115 = !{null, !17}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !18, file: !19, line: 590, baseType: !117, size: 64, offset: 768)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !19, line: 47, size: 256, elements: !119)
!119 = !{!120, !121, !122, !123, !124, !125}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !118, file: !19, line: 49, baseType: !117, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !118, file: !19, line: 50, baseType: !5, size: 32, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !118, file: !19, line: 50, baseType: !5, size: 32, offset: 96)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !118, file: !19, line: 50, baseType: !5, size: 32, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !118, file: !19, line: 50, baseType: !5, size: 32, offset: 160)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !118, file: !19, line: 51, baseType: !126, size: 32, offset: 192)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 32, elements: !72)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !19, line: 25, baseType: !94)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !18, file: !19, line: 591, baseType: !5, size: 32, offset: 832)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !18, file: !19, line: 592, baseType: !117, size: 64, offset: 896)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !18, file: !19, line: 593, baseType: !131, size: 64, offset: 960)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !18, file: !19, line: 596, baseType: !5, size: 32, offset: 1024)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !18, file: !19, line: 597, baseType: !7, size: 64, offset: 1088)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !18, file: !19, line: 632, baseType: !135, size: 2880, offset: 1152)
!135 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !18, file: !19, line: 599, size: 2880, elements: !136)
!136 = !{!137, !187}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !135, file: !19, line: 622, baseType: !138, size: 1728)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !135, file: !19, line: 601, size: 1728, elements: !139)
!139 = !{!140, !141, !142, !146, !158, !159, !161, !169, !170, !171, !172, !176, !180, !181, !182, !183, !184, !185, !186}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !138, file: !19, line: 603, baseType: !94, size: 32)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !138, file: !19, line: 604, baseType: !7, size: 64, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !138, file: !19, line: 605, baseType: !143, size: 208, offset: 128)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 208, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 26)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !138, file: !19, line: 606, baseType: !147, size: 288, offset: 352)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !19, line: 55, size: 288, elements: !148)
!148 = !{!149, !150, !151, !152, !153, !154, !155, !156, !157}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !147, file: !19, line: 57, baseType: !5, size: 32)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !147, file: !19, line: 58, baseType: !5, size: 32, offset: 32)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !147, file: !19, line: 59, baseType: !5, size: 32, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !147, file: !19, line: 60, baseType: !5, size: 32, offset: 96)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !147, file: !19, line: 61, baseType: !5, size: 32, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !147, file: !19, line: 62, baseType: !5, size: 32, offset: 160)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !147, file: !19, line: 63, baseType: !5, size: 32, offset: 192)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !147, file: !19, line: 64, baseType: !5, size: 32, offset: 224)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !147, file: !19, line: 65, baseType: !5, size: 32, offset: 256)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !138, file: !19, line: 607, baseType: !5, size: 32, offset: 640)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !138, file: !19, line: 608, baseType: !160, size: 64, offset: 704)
!160 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !138, file: !19, line: 609, baseType: !162, size: 112, offset: 768)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !19, line: 319, size: 112, elements: !163)
!163 = !{!164, !167, !168}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !162, file: !19, line: 320, baseType: !165, size: 48)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 48, elements: !68)
!166 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !162, file: !19, line: 321, baseType: !165, size: 48, offset: 48)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !162, file: !19, line: 322, baseType: !166, size: 16, offset: 96)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !138, file: !19, line: 610, baseType: !84, size: 64, offset: 896)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !138, file: !19, line: 611, baseType: !84, size: 64, offset: 960)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !138, file: !19, line: 612, baseType: !84, size: 64, offset: 1024)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !138, file: !19, line: 613, baseType: !173, size: 64, offset: 1088)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 64, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 8)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !138, file: !19, line: 614, baseType: !177, size: 192, offset: 1152)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 192, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 24)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !138, file: !19, line: 615, baseType: !5, size: 32, offset: 1344)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !138, file: !19, line: 616, baseType: !84, size: 64, offset: 1376)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !138, file: !19, line: 617, baseType: !84, size: 64, offset: 1440)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !138, file: !19, line: 618, baseType: !84, size: 64, offset: 1504)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !138, file: !19, line: 619, baseType: !84, size: 64, offset: 1568)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !138, file: !19, line: 620, baseType: !84, size: 64, offset: 1632)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !138, file: !19, line: 621, baseType: !5, size: 32, offset: 1696)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !135, file: !19, line: 631, baseType: !188, size: 2880)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !135, file: !19, line: 626, size: 2880, elements: !189)
!189 = !{!190, !194}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !188, file: !19, line: 629, baseType: !191, size: 1920)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 1920, elements: !192)
!192 = !{!193}
!193 = !DISubrange(count: 30)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !188, file: !19, line: 630, baseType: !195, size: 960, offset: 1920)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 960, elements: !192)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !18, file: !19, line: 636, baseType: !197, size: 64, offset: 4032)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !19, line: 93, size: 6336, elements: !199)
!199 = !{!200, !201, !202, !209}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !198, file: !19, line: 94, baseType: !197, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !198, file: !19, line: 95, baseType: !5, size: 32, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !198, file: !19, line: 97, baseType: !203, size: 2048, offset: 128)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 2048, elements: !207)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{null}
!207 = !{!208}
!208 = !DISubrange(count: 32)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !198, file: !19, line: 98, baseType: !210, size: 4160, offset: 2176)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !19, line: 74, size: 4160, elements: !211)
!211 = !{!212, !214, !215, !216}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !210, file: !19, line: 75, baseType: !213, size: 2048)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 2048, elements: !207)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !210, file: !19, line: 76, baseType: !213, size: 2048, offset: 2048)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !210, file: !19, line: 78, baseType: !127, size: 32, offset: 4096)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !210, file: !19, line: 81, baseType: !127, size: 32, offset: 4128)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !18, file: !19, line: 637, baseType: !198, size: 6336, offset: 4096)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !18, file: !19, line: 641, baseType: !219, size: 64, offset: 10432)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{null, !5}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !18, file: !19, line: 646, baseType: !224, size: 192, offset: 10496)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !19, line: 291, size: 192, elements: !225)
!225 = !{!226, !228, !229}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !224, file: !19, line: 293, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !224, file: !19, line: 294, baseType: !5, size: 32, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !224, file: !19, line: 295, baseType: !23, size: 64, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !18, file: !19, line: 648, baseType: !231, size: 4224, offset: 10688)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 4224, elements: !68)
!232 = !{!233, !234, !235}
!233 = !DILocalVariable(name: "ptr", arg: 1, scope: !14, file: !1, line: 266, type: !17)
!234 = !DILocalVariable(name: "path", arg: 2, scope: !14, file: !1, line: 266, type: !7)
!235 = !DILocalVariable(name: "fd", scope: !14, file: !1, line: 270, type: !5)
!236 = !DILocation(line: 266, column: 1, scope: !14)
!237 = !DILocation(line: 270, column: 3, scope: !14)
!238 = !DILocation(line: 270, column: 7, scope: !14)
!239 = !DILocation(line: 272, column: 11, scope: !14)
!240 = !DILocation(line: 272, column: 55, scope: !14)
!241 = !DILocation(line: 273, column: 1, scope: !14)
!242 = !DILocation(line: 272, column: 3, scope: !14)
!243 = distinct !DISubprogram(name: "_gettemp", scope: !1, file: !1, line: 142, type: !244, isLocal: true, isDefinition: true, scopeLine: 149, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !248)
!244 = !DISubroutineType(types: !245)
!245 = !{!5, !17, !7, !4, !5, !246, !5}
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !93, line: 58, baseType: !247)
!247 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!248 = !{!249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !302}
!249 = !DILocalVariable(name: "ptr", arg: 1, scope: !243, file: !1, line: 142, type: !17)
!250 = !DILocalVariable(name: "path", arg: 2, scope: !243, file: !1, line: 142, type: !7)
!251 = !DILocalVariable(name: "doopen", arg: 3, scope: !243, file: !1, line: 142, type: !4)
!252 = !DILocalVariable(name: "domkdir", arg: 4, scope: !243, file: !1, line: 142, type: !5)
!253 = !DILocalVariable(name: "suffixlen", arg: 5, scope: !243, file: !1, line: 142, type: !246)
!254 = !DILocalVariable(name: "flags", arg: 6, scope: !243, file: !1, line: 142, type: !5)
!255 = !DILocalVariable(name: "start", scope: !243, file: !1, line: 150, type: !7)
!256 = !DILocalVariable(name: "trv", scope: !243, file: !1, line: 150, type: !7)
!257 = !DILocalVariable(name: "end", scope: !243, file: !1, line: 151, type: !7)
!258 = !DILocalVariable(name: "sbuf", scope: !243, file: !1, line: 155, type: !259)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !260, line: 27, size: 704, elements: !261)
!260 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/stat.h", directory: "/root/.unikraft/apps/redis/build")
!261 = !{!262, !266, !269, !274, !277, !280, !283, !284, !287, !294, !295, !296, !299}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !259, file: !260, line: 29, baseType: !263, size: 16)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !264, line: 177, baseType: !265)
!264 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !46, line: 54, baseType: !32)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !259, file: !260, line: 30, baseType: !267, size: 16, offset: 16)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !264, line: 155, baseType: !268)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !46, line: 73, baseType: !166)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !259, file: !260, line: 31, baseType: !270, size: 32, offset: 32)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !264, line: 205, baseType: !271)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !46, line: 88, baseType: !272)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !273, line: 79, baseType: !94)
!273 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!274 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !259, file: !260, line: 32, baseType: !275, size: 16, offset: 64)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !264, line: 210, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !46, line: 210, baseType: !166)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !259, file: !260, line: 33, baseType: !278, size: 16, offset: 80)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !264, line: 181, baseType: !279)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !46, line: 58, baseType: !166)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !259, file: !260, line: 34, baseType: !281, size: 16, offset: 96)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !264, line: 185, baseType: !282)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !46, line: 61, baseType: !166)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !259, file: !260, line: 35, baseType: !263, size: 16, offset: 112)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !259, file: !260, line: 36, baseType: !285, size: 64, offset: 128)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !264, line: 173, baseType: !286)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !46, line: 100, baseType: !77)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !259, file: !260, line: 37, baseType: !288, size: 128, offset: 192)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !289, line: 52, size: 128, elements: !290)
!289 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!290 = !{!291, !293}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !288, file: !289, line: 53, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !289, line: 34, baseType: !47)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !288, file: !289, line: 54, baseType: !47, size: 64, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !259, file: !260, line: 38, baseType: !288, size: 128, offset: 320)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !259, file: !260, line: 39, baseType: !288, size: 128, offset: 448)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !259, file: !260, line: 40, baseType: !297, size: 64, offset: 576)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "blksize_t", file: !264, line: 118, baseType: !298)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !46, line: 32, baseType: !47)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !259, file: !260, line: 41, baseType: !300, size: 64, offset: 640)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !264, line: 113, baseType: !301)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !46, line: 28, baseType: !47)
!302 = !DILocalVariable(name: "pid", scope: !243, file: !1, line: 157, type: !94)
!303 = !DILocation(line: 142, column: 1, scope: !243)
!304 = !DILocation(line: 155, column: 3, scope: !243)
!305 = !DILocation(line: 159, column: 9, scope: !243)
!306 = !DILocation(line: 157, column: 16, scope: !243)
!307 = !DILocation(line: 150, column: 26, scope: !243)
!308 = !DILocation(line: 160, column: 8, scope: !309)
!309 = distinct !DILexicalBlock(scope: !243, file: !1, line: 160, column: 3)
!310 = !DILocation(line: 160, column: 20, scope: !311)
!311 = distinct !DILexicalBlock(scope: !309, file: !1, line: 160, column: 3)
!312 = !{!313, !313, i64 0}
!313 = !{!"omnipotent char", !314, i64 0}
!314 = !{!"Simple C/C++ TBAA"}
!315 = !DILocation(line: 160, column: 3, scope: !309)
!316 = !DILocation(line: 160, column: 26, scope: !311)
!317 = !DILocation(line: 160, column: 3, scope: !311)
!318 = distinct !{!318, !315, !319}
!319 = !DILocation(line: 161, column: 5, scope: !309)
!320 = !DILocation(line: 0, scope: !311)
!321 = !DILocation(line: 162, column: 11, scope: !322)
!322 = distinct !DILexicalBlock(scope: !243, file: !1, line: 162, column: 7)
!323 = !DILocation(line: 162, column: 18, scope: !322)
!324 = !DILocation(line: 162, column: 7, scope: !243)
!325 = !DILocation(line: 164, column: 12, scope: !326)
!326 = distinct !DILexicalBlock(scope: !322, file: !1, line: 163, column: 5)
!327 = !DILocation(line: 164, column: 19, scope: !326)
!328 = !{!329, !330, i64 0}
!329 = !{!"_reent", !330, i64 0, !331, i64 8, !331, i64 16, !331, i64 24, !330, i64 32, !313, i64 36, !330, i64 64, !331, i64 72, !330, i64 80, !331, i64 88, !331, i64 96, !330, i64 104, !331, i64 112, !331, i64 120, !330, i64 128, !331, i64 136, !313, i64 144, !331, i64 504, !332, i64 512, !331, i64 1304, !334, i64 1312, !313, i64 1336}
!330 = !{!"int", !313, i64 0}
!331 = !{!"any pointer", !313, i64 0}
!332 = !{!"_atexit", !331, i64 0, !330, i64 8, !313, i64 16, !333, i64 272}
!333 = !{!"_on_exit_args", !313, i64 0, !313, i64 256, !330, i64 512, !330, i64 516}
!334 = !{!"_glue", !331, i64 0, !330, i64 8, !331, i64 16}
!335 = !DILocation(line: 165, column: 7, scope: !326)
!336 = !DILocation(line: 167, column: 7, scope: !243)
!337 = !DILocation(line: 151, column: 9, scope: !243)
!338 = !DILocation(line: 169, column: 3, scope: !243)
!339 = !DILocation(line: 169, column: 15, scope: !243)
!340 = !DILocation(line: 169, column: 21, scope: !243)
!341 = !DILocation(line: 169, column: 25, scope: !243)
!342 = !DILocation(line: 169, column: 24, scope: !243)
!343 = !DILocation(line: 169, column: 31, scope: !243)
!344 = !DILocation(line: 171, column: 19, scope: !345)
!345 = distinct !DILexicalBlock(scope: !243, file: !1, line: 170, column: 5)
!346 = !DILocation(line: 171, column: 14, scope: !345)
!347 = !DILocation(line: 171, column: 12, scope: !345)
!348 = !DILocation(line: 172, column: 11, scope: !345)
!349 = distinct !{!349, !338, !350}
!350 = !DILocation(line: 173, column: 5, scope: !243)
!351 = !DILocation(line: 0, scope: !243)
!352 = !DILocation(line: 174, column: 11, scope: !353)
!353 = distinct !DILexicalBlock(scope: !243, file: !1, line: 174, column: 7)
!354 = !DILocation(line: 174, column: 17, scope: !353)
!355 = !DILocation(line: 174, column: 7, scope: !243)
!356 = !DILocation(line: 176, column: 12, scope: !357)
!357 = distinct !DILexicalBlock(scope: !353, file: !1, line: 175, column: 5)
!358 = !DILocation(line: 176, column: 19, scope: !357)
!359 = !DILocation(line: 177, column: 7, scope: !357)
!360 = !DILocation(line: 150, column: 18, scope: !243)
!361 = !DILocation(line: 185, column: 8, scope: !362)
!362 = distinct !DILexicalBlock(scope: !243, file: !1, line: 185, column: 3)
!363 = !DILocation(line: 187, column: 15, scope: !364)
!364 = distinct !DILexicalBlock(scope: !365, file: !1, line: 187, column: 11)
!365 = distinct !DILexicalBlock(scope: !366, file: !1, line: 186, column: 5)
!366 = distinct !DILexicalBlock(scope: !362, file: !1, line: 185, column: 3)
!367 = !DILocation(line: 187, column: 11, scope: !365)
!368 = !DILocation(line: 189, column: 11, scope: !369)
!369 = distinct !DILexicalBlock(scope: !365, file: !1, line: 189, column: 11)
!370 = !DILocation(line: 189, column: 16, scope: !369)
!371 = !DILocation(line: 189, column: 11, scope: !365)
!372 = !DILocation(line: 191, column: 9, scope: !373)
!373 = distinct !DILexicalBlock(scope: !369, file: !1, line: 190, column: 2)
!374 = !DILocation(line: 155, column: 15, scope: !243)
!375 = !DILocation(line: 195, column: 8, scope: !376)
!376 = distinct !DILexicalBlock(scope: !373, file: !1, line: 195, column: 8)
!377 = !DILocation(line: 195, column: 8, scope: !373)
!378 = !DILocation(line: 198, column: 15, scope: !379)
!379 = distinct !DILexicalBlock(scope: !373, file: !1, line: 198, column: 8)
!380 = !{!381, !330, i64 4}
!381 = !{!"stat", !382, i64 0, !382, i64 2, !330, i64 4, !382, i64 8, !382, i64 10, !382, i64 12, !382, i64 14, !383, i64 16, !384, i64 24, !384, i64 40, !384, i64 56, !383, i64 72, !383, i64 80}
!382 = !{!"short", !313, i64 0}
!383 = !{!"long", !313, i64 0}
!384 = !{!"timespec", !383, i64 0, !383, i64 8}
!385 = !DILocation(line: 198, column: 23, scope: !379)
!386 = !DILocation(line: 198, column: 8, scope: !373)
!387 = !DILocation(line: 200, column: 13, scope: !388)
!388 = distinct !DILexicalBlock(scope: !379, file: !1, line: 199, column: 6)
!389 = !DILocation(line: 200, column: 20, scope: !388)
!390 = !DILocation(line: 201, column: 8, scope: !388)
!391 = !DILocation(line: 203, column: 9, scope: !373)
!392 = !DILocation(line: 204, column: 4, scope: !373)
!393 = !DILocation(line: 185, column: 26, scope: !366)
!394 = !DILocation(line: 185, column: 3, scope: !366)
!395 = distinct !{!395, !396, !397}
!396 = !DILocation(line: 185, column: 3, scope: !362)
!397 = !DILocation(line: 206, column: 5, scope: !362)
!398 = !DILocation(line: 208, column: 3, scope: !243)
!399 = !DILocation(line: 211, column: 11, scope: !400)
!400 = distinct !DILexicalBlock(scope: !401, file: !1, line: 211, column: 11)
!401 = distinct !DILexicalBlock(scope: !402, file: !1, line: 209, column: 5)
!402 = distinct !DILexicalBlock(scope: !403, file: !1, line: 208, column: 3)
!403 = distinct !DILexicalBlock(scope: !243, file: !1, line: 208, column: 3)
!404 = !DILocation(line: 211, column: 11, scope: !401)
!405 = !DILocation(line: 219, column: 9, scope: !406)
!406 = distinct !DILexicalBlock(scope: !400, file: !1, line: 212, column: 2)
!407 = !DILocation(line: 219, column: 16, scope: !406)
!408 = !DILocation(line: 220, column: 4, scope: !406)
!409 = !DILocation(line: 225, column: 11, scope: !400)
!410 = !DILocation(line: 227, column: 19, scope: !411)
!411 = distinct !DILexicalBlock(scope: !412, file: !1, line: 227, column: 8)
!412 = distinct !DILexicalBlock(scope: !413, file: !1, line: 226, column: 2)
!413 = distinct !DILexicalBlock(scope: !400, file: !1, line: 225, column: 11)
!414 = !DILocation(line: 227, column: 17, scope: !411)
!415 = !{!330, !330, i64 0}
!416 = !DILocation(line: 228, column: 14, scope: !411)
!417 = !DILocation(line: 227, column: 8, scope: !412)
!418 = !DILocation(line: 230, column: 13, scope: !419)
!419 = distinct !DILexicalBlock(scope: !412, file: !1, line: 230, column: 8)
!420 = !DILocation(line: 230, column: 20, scope: !419)
!421 = !DILocation(line: 230, column: 8, scope: !412)
!422 = !DILocation(line: 236, column: 16, scope: !423)
!423 = distinct !DILexicalBlock(scope: !413, file: !1, line: 236, column: 16)
!424 = !DILocation(line: 236, column: 16, scope: !413)
!425 = !DILocation(line: 238, column: 15, scope: !423)
!426 = !DILocation(line: 238, column: 22, scope: !423)
!427 = !DILocation(line: 238, column: 10, scope: !423)
!428 = !DILocation(line: 238, column: 2, scope: !423)
!429 = !DILocation(line: 241, column: 12, scope: !430)
!430 = distinct !DILexicalBlock(scope: !401, file: !1, line: 241, column: 7)
!431 = !DILocation(line: 243, column: 8, scope: !432)
!432 = distinct !DILexicalBlock(scope: !433, file: !1, line: 242, column: 2)
!433 = distinct !DILexicalBlock(scope: !430, file: !1, line: 241, column: 7)
!434 = !DILocation(line: 245, column: 8, scope: !435)
!435 = distinct !DILexicalBlock(scope: !432, file: !1, line: 245, column: 8)
!436 = !DILocation(line: 245, column: 13, scope: !435)
!437 = !DILocation(line: 245, column: 8, scope: !432)
!438 = !DILocation(line: 246, column: 13, scope: !435)
!439 = !DILocation(line: 241, column: 7, scope: !433)
!440 = !DILocation(line: 0, scope: !435)
!441 = !DILocation(line: 243, column: 12, scope: !442)
!442 = distinct !DILexicalBlock(scope: !432, file: !1, line: 243, column: 8)
!443 = distinct !{!443, !444, !445}
!444 = !DILocation(line: 241, column: 7, scope: !430)
!445 = !DILocation(line: 256, column: 2, scope: !430)
!446 = !DILocation(line: 250, column: 12, scope: !447)
!447 = distinct !DILexicalBlock(scope: !448, file: !1, line: 250, column: 12)
!448 = distinct !DILexicalBlock(scope: !435, file: !1, line: 248, column: 6)
!449 = !DILocation(line: 250, column: 12, scope: !448)
!450 = !DILocation(line: 253, column: 3, scope: !447)
!451 = !DILocation(line: 0, scope: !447)
!452 = !DILocation(line: 208, column: 3, scope: !402)
!453 = !DILocation(line: 0, scope: !388)
!454 = !DILocation(line: 0, scope: !326)
!455 = !DILocation(line: 259, column: 1, scope: !243)
!456 = distinct !DISubprogram(name: "_mkdtemp_r", scope: !1, file: !1, line: 277, type: !457, isLocal: false, isDefinition: true, scopeLine: 280, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !459)
!457 = !DISubroutineType(types: !458)
!458 = !{!7, !17, !7}
!459 = !{!460, !461}
!460 = !DILocalVariable(name: "ptr", arg: 1, scope: !456, file: !1, line: 277, type: !17)
!461 = !DILocalVariable(name: "path", arg: 2, scope: !456, file: !1, line: 277, type: !7)
!462 = !DILocation(line: 277, column: 1, scope: !456)
!463 = !DILocation(line: 281, column: 11, scope: !456)
!464 = !DILocation(line: 281, column: 3, scope: !456)
!465 = distinct !DISubprogram(name: "_mkstemps_r", scope: !1, file: !1, line: 285, type: !466, isLocal: false, isDefinition: true, scopeLine: 289, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !468)
!466 = !DISubroutineType(types: !467)
!467 = !{!5, !17, !7, !5}
!468 = !{!469, !470, !471, !472}
!469 = !DILocalVariable(name: "ptr", arg: 1, scope: !465, file: !1, line: 285, type: !17)
!470 = !DILocalVariable(name: "path", arg: 2, scope: !465, file: !1, line: 285, type: !7)
!471 = !DILocalVariable(name: "len", arg: 3, scope: !465, file: !1, line: 285, type: !5)
!472 = !DILocalVariable(name: "fd", scope: !465, file: !1, line: 290, type: !5)
!473 = !DILocation(line: 285, column: 1, scope: !465)
!474 = !DILocation(line: 290, column: 3, scope: !465)
!475 = !DILocation(line: 292, column: 40, scope: !465)
!476 = !DILocation(line: 290, column: 7, scope: !465)
!477 = !DILocation(line: 292, column: 11, scope: !465)
!478 = !DILocation(line: 292, column: 57, scope: !465)
!479 = !DILocation(line: 293, column: 1, scope: !465)
!480 = !DILocation(line: 292, column: 3, scope: !465)
!481 = distinct !DISubprogram(name: "_mkostemp_r", scope: !1, file: !1, line: 296, type: !466, isLocal: false, isDefinition: true, scopeLine: 300, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !482)
!482 = !{!483, !484, !485, !486}
!483 = !DILocalVariable(name: "ptr", arg: 1, scope: !481, file: !1, line: 296, type: !17)
!484 = !DILocalVariable(name: "path", arg: 2, scope: !481, file: !1, line: 296, type: !7)
!485 = !DILocalVariable(name: "flags", arg: 3, scope: !481, file: !1, line: 296, type: !5)
!486 = !DILocalVariable(name: "fd", scope: !481, file: !1, line: 301, type: !5)
!487 = !DILocation(line: 296, column: 1, scope: !481)
!488 = !DILocation(line: 301, column: 3, scope: !481)
!489 = !DILocation(line: 303, column: 49, scope: !481)
!490 = !DILocation(line: 301, column: 7, scope: !481)
!491 = !DILocation(line: 303, column: 11, scope: !481)
!492 = !DILocation(line: 303, column: 65, scope: !481)
!493 = !DILocation(line: 304, column: 1, scope: !481)
!494 = !DILocation(line: 303, column: 3, scope: !481)
!495 = distinct !DISubprogram(name: "_mkostemps_r", scope: !1, file: !1, line: 307, type: !496, isLocal: false, isDefinition: true, scopeLine: 312, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !498)
!496 = !DISubroutineType(types: !497)
!497 = !{!5, !17, !7, !5, !5}
!498 = !{!499, !500, !501, !502, !503}
!499 = !DILocalVariable(name: "ptr", arg: 1, scope: !495, file: !1, line: 307, type: !17)
!500 = !DILocalVariable(name: "path", arg: 2, scope: !495, file: !1, line: 307, type: !7)
!501 = !DILocalVariable(name: "len", arg: 3, scope: !495, file: !1, line: 307, type: !5)
!502 = !DILocalVariable(name: "flags", arg: 4, scope: !495, file: !1, line: 307, type: !5)
!503 = !DILocalVariable(name: "fd", scope: !495, file: !1, line: 313, type: !5)
!504 = !DILocation(line: 307, column: 1, scope: !495)
!505 = !DILocation(line: 313, column: 3, scope: !495)
!506 = !DILocation(line: 315, column: 40, scope: !495)
!507 = !DILocation(line: 315, column: 51, scope: !495)
!508 = !DILocation(line: 313, column: 7, scope: !495)
!509 = !DILocation(line: 315, column: 11, scope: !495)
!510 = !DILocation(line: 315, column: 67, scope: !495)
!511 = !DILocation(line: 316, column: 1, scope: !495)
!512 = !DILocation(line: 315, column: 3, scope: !495)
!513 = distinct !DISubprogram(name: "_mktemp_r", scope: !1, file: !1, line: 320, type: !457, isLocal: false, isDefinition: true, scopeLine: 323, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !514)
!514 = !{!515, !516}
!515 = !DILocalVariable(name: "ptr", arg: 1, scope: !513, file: !1, line: 320, type: !17)
!516 = !DILocalVariable(name: "path", arg: 2, scope: !513, file: !1, line: 320, type: !7)
!517 = !DILocation(line: 320, column: 1, scope: !513)
!518 = !DILocation(line: 324, column: 11, scope: !513)
!519 = !DILocation(line: 324, column: 3, scope: !513)
!520 = distinct !DISubprogram(name: "mkstemp", scope: !1, file: !1, line: 330, type: !521, isLocal: false, isDefinition: true, scopeLine: 332, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !523)
!521 = !DISubroutineType(types: !522)
!522 = !{!5, !7}
!523 = !{!524, !525}
!524 = !DILocalVariable(name: "path", arg: 1, scope: !520, file: !1, line: 330, type: !7)
!525 = !DILocalVariable(name: "fd", scope: !520, file: !1, line: 333, type: !5)
!526 = !DILocation(line: 330, column: 1, scope: !520)
!527 = !DILocation(line: 333, column: 3, scope: !520)
!528 = !DILocation(line: 335, column: 21, scope: !520)
!529 = !DILocation(line: 333, column: 7, scope: !520)
!530 = !DILocation(line: 335, column: 11, scope: !520)
!531 = !DILocation(line: 335, column: 58, scope: !520)
!532 = !DILocation(line: 336, column: 1, scope: !520)
!533 = !DILocation(line: 335, column: 3, scope: !520)
!534 = distinct !DISubprogram(name: "mkdtemp", scope: !1, file: !1, line: 340, type: !535, isLocal: false, isDefinition: true, scopeLine: 342, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !537)
!535 = !DISubroutineType(types: !536)
!536 = !{!7, !7}
!537 = !{!538}
!538 = !DILocalVariable(name: "path", arg: 1, scope: !534, file: !1, line: 340, type: !7)
!539 = !DILocation(line: 340, column: 1, scope: !534)
!540 = !DILocation(line: 343, column: 21, scope: !534)
!541 = !DILocation(line: 343, column: 11, scope: !534)
!542 = !DILocation(line: 343, column: 3, scope: !534)
!543 = distinct !DISubprogram(name: "mkstemps", scope: !1, file: !1, line: 347, type: !544, isLocal: false, isDefinition: true, scopeLine: 350, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !546)
!544 = !DISubroutineType(types: !545)
!545 = !{!5, !7, !5}
!546 = !{!547, !548, !549}
!547 = !DILocalVariable(name: "path", arg: 1, scope: !543, file: !1, line: 347, type: !7)
!548 = !DILocalVariable(name: "len", arg: 2, scope: !543, file: !1, line: 347, type: !5)
!549 = !DILocalVariable(name: "fd", scope: !543, file: !1, line: 351, type: !5)
!550 = !DILocation(line: 347, column: 1, scope: !543)
!551 = !DILocation(line: 351, column: 3, scope: !543)
!552 = !DILocation(line: 353, column: 21, scope: !543)
!553 = !DILocation(line: 353, column: 43, scope: !543)
!554 = !DILocation(line: 351, column: 7, scope: !543)
!555 = !DILocation(line: 353, column: 11, scope: !543)
!556 = !DILocation(line: 353, column: 60, scope: !543)
!557 = !DILocation(line: 354, column: 1, scope: !543)
!558 = !DILocation(line: 353, column: 3, scope: !543)
!559 = distinct !DISubprogram(name: "mkostemp", scope: !1, file: !1, line: 357, type: !544, isLocal: false, isDefinition: true, scopeLine: 360, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !560)
!560 = !{!561, !562, !563}
!561 = !DILocalVariable(name: "path", arg: 1, scope: !559, file: !1, line: 357, type: !7)
!562 = !DILocalVariable(name: "flags", arg: 2, scope: !559, file: !1, line: 357, type: !5)
!563 = !DILocalVariable(name: "fd", scope: !559, file: !1, line: 361, type: !5)
!564 = !DILocation(line: 357, column: 1, scope: !559)
!565 = !DILocation(line: 361, column: 3, scope: !559)
!566 = !DILocation(line: 363, column: 21, scope: !559)
!567 = !DILocation(line: 363, column: 52, scope: !559)
!568 = !DILocation(line: 361, column: 7, scope: !559)
!569 = !DILocation(line: 363, column: 11, scope: !559)
!570 = !DILocation(line: 363, column: 68, scope: !559)
!571 = !DILocation(line: 364, column: 1, scope: !559)
!572 = !DILocation(line: 363, column: 3, scope: !559)
!573 = distinct !DISubprogram(name: "mkostemps", scope: !1, file: !1, line: 367, type: !574, isLocal: false, isDefinition: true, scopeLine: 371, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !576)
!574 = !DISubroutineType(types: !575)
!575 = !{!5, !7, !5, !5}
!576 = !{!577, !578, !579, !580}
!577 = !DILocalVariable(name: "path", arg: 1, scope: !573, file: !1, line: 367, type: !7)
!578 = !DILocalVariable(name: "len", arg: 2, scope: !573, file: !1, line: 367, type: !5)
!579 = !DILocalVariable(name: "flags", arg: 3, scope: !573, file: !1, line: 367, type: !5)
!580 = !DILocalVariable(name: "fd", scope: !573, file: !1, line: 372, type: !5)
!581 = !DILocation(line: 367, column: 1, scope: !573)
!582 = !DILocation(line: 372, column: 3, scope: !573)
!583 = !DILocation(line: 374, column: 21, scope: !573)
!584 = !DILocation(line: 374, column: 43, scope: !573)
!585 = !DILocation(line: 374, column: 54, scope: !573)
!586 = !DILocation(line: 372, column: 7, scope: !573)
!587 = !DILocation(line: 374, column: 11, scope: !573)
!588 = !DILocation(line: 374, column: 70, scope: !573)
!589 = !DILocation(line: 375, column: 1, scope: !573)
!590 = !DILocation(line: 374, column: 3, scope: !573)
!591 = distinct !DISubprogram(name: "mktemp", scope: !1, file: !1, line: 379, type: !535, isLocal: false, isDefinition: true, scopeLine: 381, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !592)
!592 = !{!593}
!593 = !DILocalVariable(name: "path", arg: 1, scope: !591, file: !1, line: 379, type: !7)
!594 = !DILocation(line: 379, column: 1, scope: !591)
!595 = !DILocation(line: 382, column: 21, scope: !591)
!596 = !DILocation(line: 382, column: 11, scope: !591)
!597 = !DILocation(line: 382, column: 3, scope: !591)
