; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/iconv/lib/ucsconv.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/iconv/lib/ucsconv.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.iconv_conversion_handlers_t = type { i8* (%struct._reent*, i8*, i8*)*, i64 (%struct._reent*, i8*)*, i64 (%struct._reent*, i8*, i8**, i64*, i8**, i64*, i32)*, void (i8*, %struct._mbstate_t*, i32)*, i32 (i8*, %struct._mbstate_t*, i32)*, i32 (i8*, i32)*, i32 (i8*, i32)* }
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
%struct.iconv_to_ucs_ces_t = type { i8**, %struct.iconv_to_ucs_ces_handlers_t* }
%struct.iconv_to_ucs_ces_handlers_t = type { i8* (%struct._reent*, i8*)*, i64 (%struct._reent*, i8*)*, i32 (i8*)*, void (i8*, %struct._mbstate_t*)*, i32 (i8*, %struct._mbstate_t*)*, i32 (i8*)*, i32 (i8*, i8**, i64*)* }
%struct.iconv_from_ucs_ces_t = type { i8**, %struct.iconv_from_ucs_ces_handlers_t* }
%struct.iconv_from_ucs_ces_handlers_t = type { i8* (%struct._reent*, i8*)*, i64 (%struct._reent*, i8*)*, i32 (i8*)*, void (i8*, %struct._mbstate_t*)*, i32 (i8*, %struct._mbstate_t*)*, i32 (i8*)*, i64 (i8*, i32, i8**, i64*)* }

@_iconv_ucs_conversion_handlers = dso_local local_unnamed_addr constant %struct.iconv_conversion_handlers_t { i8* (%struct._reent*, i8*, i8*)* @ucs_based_conversion_open, i64 (%struct._reent*, i8*)* @ucs_based_conversion_close, i64 (%struct._reent*, i8*, i8**, i64*, i8**, i64*, i32)* @ucs_based_conversion_convert, void (i8*, %struct._mbstate_t*, i32)* @ucs_based_conversion_get_state, i32 (i8*, %struct._mbstate_t*, i32)* @ucs_based_conversion_set_state, i32 (i8*, i32)* @ucs_based_conversion_get_mb_cur_max, i32 (i8*, i32)* @ucs_based_conversion_is_stateful }, align 8, !dbg !0
@_iconv_to_ucs_ces = external dso_local local_unnamed_addr constant [0 x %struct.iconv_to_ucs_ces_t], align 8
@_iconv_from_ucs_ces = external dso_local local_unnamed_addr constant [0 x %struct.iconv_from_ucs_ces_t], align 8
@fake_data = internal global i32 0, align 4, !dbg !306
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define internal i8* @ucs_based_conversion_open(%struct._reent*, i8*, i8*) #0 !dbg !339 {
  %4 = tail call i8* @calloc(i64 1, i64 32) #4, !dbg !363
  %5 = icmp eq i8* %4, null, !dbg !365
  br i1 %5, label %115, label %6, !dbg !367

; <label>:6:                                      ; preds = %3
  %7 = load i8**, i8*** getelementptr inbounds ([0 x %struct.iconv_to_ucs_ces_t], [0 x %struct.iconv_to_ucs_ces_t]* @_iconv_to_ucs_ces, i64 0, i64 0, i32 0), align 8, !dbg !369, !tbaa !372
  %8 = icmp eq i8** %7, null, !dbg !377
  br i1 %8, label %31, label %9, !dbg !378

; <label>:9:                                      ; preds = %6, %25
  %10 = phi i8** [ %27, %25 ], [ %7, %6 ]
  %11 = phi i8*** [ %26, %25 ], [ getelementptr inbounds ([0 x %struct.iconv_to_ucs_ces_t], [0 x %struct.iconv_to_ucs_ces_t]* @_iconv_to_ucs_ces, i64 0, i64 0, i32 0), %6 ]
  %12 = load i8*, i8** %10, align 8, !dbg !391, !tbaa !394
  %13 = icmp eq i8* %12, null, !dbg !395
  br i1 %13, label %25, label %18, !dbg !396

; <label>:14:                                     ; preds = %18
  %15 = getelementptr inbounds i8*, i8** %20, i64 1, !dbg !397
  %16 = load i8*, i8** %20, align 8, !dbg !391, !tbaa !394
  %17 = icmp eq i8* %16, null, !dbg !395
  br i1 %17, label %25, label %18, !dbg !396, !llvm.loop !398

; <label>:18:                                     ; preds = %9, %14
  %19 = phi i8* [ %16, %14 ], [ %12, %9 ]
  %20 = phi i8** [ %15, %14 ], [ %10, %9 ]
  %21 = tail call i32 @strcmp(i8* nonnull %19, i8* %2) #4, !dbg !401
  %22 = icmp eq i32 %21, 0, !dbg !403
  br i1 %22, label %23, label %14, !dbg !404

; <label>:23:                                     ; preds = %18
  %24 = bitcast i8*** %11 to %struct.iconv_to_ucs_ces_t*
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !405
  br label %31

; <label>:25:                                     ; preds = %14, %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !405
  %26 = getelementptr inbounds i8**, i8*** %11, i64 2, !dbg !406
  %27 = load i8**, i8*** %26, align 8, !dbg !369, !tbaa !372
  %28 = icmp eq i8** %27, null, !dbg !377
  br i1 %28, label %29, label %9, !dbg !378, !llvm.loop !407

; <label>:29:                                     ; preds = %25
  %30 = bitcast i8*** %26 to %struct.iconv_to_ucs_ces_t*, !dbg !406
  br label %31, !dbg !409

; <label>:31:                                     ; preds = %29, %6, %23
  %32 = phi %struct.iconv_to_ucs_ces_t* [ %24, %23 ], [ getelementptr inbounds ([0 x %struct.iconv_to_ucs_ces_t], [0 x %struct.iconv_to_ucs_ces_t]* @_iconv_to_ucs_ces, i64 0, i64 0), %6 ], [ %30, %29 ]
  %33 = phi i8*** [ %11, %23 ], [ getelementptr inbounds ([0 x %struct.iconv_to_ucs_ces_t], [0 x %struct.iconv_to_ucs_ces_t]* @_iconv_to_ucs_ces, i64 0, i64 0, i32 0), %6 ], [ %26, %29 ]
  %34 = load i8**, i8*** getelementptr inbounds ([0 x %struct.iconv_from_ucs_ces_t], [0 x %struct.iconv_from_ucs_ces_t]* @_iconv_from_ucs_ces, i64 0, i64 0, i32 0), align 8, !dbg !409, !tbaa !372
  %35 = icmp eq i8** %34, null, !dbg !413
  br i1 %35, label %58, label %36, !dbg !414

; <label>:36:                                     ; preds = %31, %52
  %37 = phi i8** [ %54, %52 ], [ %34, %31 ]
  %38 = phi i8*** [ %53, %52 ], [ getelementptr inbounds ([0 x %struct.iconv_from_ucs_ces_t], [0 x %struct.iconv_from_ucs_ces_t]* @_iconv_from_ucs_ces, i64 0, i64 0, i32 0), %31 ]
  %39 = load i8*, i8** %37, align 8, !dbg !420, !tbaa !394
  %40 = icmp eq i8* %39, null, !dbg !421
  br i1 %40, label %52, label %45, !dbg !422

; <label>:41:                                     ; preds = %45
  %42 = getelementptr inbounds i8*, i8** %47, i64 1, !dbg !423
  %43 = load i8*, i8** %47, align 8, !dbg !420, !tbaa !394
  %44 = icmp eq i8* %43, null, !dbg !421
  br i1 %44, label %52, label %45, !dbg !422, !llvm.loop !398

; <label>:45:                                     ; preds = %36, %41
  %46 = phi i8* [ %43, %41 ], [ %39, %36 ]
  %47 = phi i8** [ %42, %41 ], [ %37, %36 ]
  %48 = tail call i32 @strcmp(i8* nonnull %46, i8* %1) #4, !dbg !424
  %49 = icmp eq i32 %48, 0, !dbg !425
  br i1 %49, label %50, label %41, !dbg !426

; <label>:50:                                     ; preds = %45
  %51 = bitcast i8*** %38 to %struct.iconv_from_ucs_ces_t*
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !427
  br label %58

; <label>:52:                                     ; preds = %41, %36
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !427
  %53 = getelementptr inbounds i8**, i8*** %38, i64 2, !dbg !428
  %54 = load i8**, i8*** %53, align 8, !dbg !409, !tbaa !372
  %55 = icmp eq i8** %54, null, !dbg !413
  br i1 %55, label %56, label %36, !dbg !414, !llvm.loop !429

; <label>:56:                                     ; preds = %52
  %57 = bitcast i8*** %53 to %struct.iconv_from_ucs_ces_t*, !dbg !428
  br label %58, !dbg !431

; <label>:58:                                     ; preds = %56, %31, %50
  %59 = phi %struct.iconv_from_ucs_ces_t* [ %51, %50 ], [ getelementptr inbounds ([0 x %struct.iconv_from_ucs_ces_t], [0 x %struct.iconv_from_ucs_ces_t]* @_iconv_from_ucs_ces, i64 0, i64 0), %31 ], [ %57, %56 ]
  %60 = phi i8*** [ %38, %50 ], [ getelementptr inbounds ([0 x %struct.iconv_from_ucs_ces_t], [0 x %struct.iconv_from_ucs_ces_t]* @_iconv_from_ucs_ces, i64 0, i64 0, i32 0), %31 ], [ %53, %56 ]
  %61 = load i8**, i8*** %33, align 8, !dbg !431, !tbaa !372
  %62 = icmp eq i8** %61, null, !dbg !433
  br i1 %62, label %101, label %63, !dbg !434

; <label>:63:                                     ; preds = %58
  %64 = load i8**, i8*** %60, align 8, !dbg !435, !tbaa !372
  %65 = icmp eq i8** %64, null, !dbg !436
  br i1 %65, label %101, label %66, !dbg !437

; <label>:66:                                     ; preds = %63
  %67 = getelementptr inbounds %struct.iconv_to_ucs_ces_t, %struct.iconv_to_ucs_ces_t* %32, i64 0, i32 1, !dbg !438
  %68 = bitcast %struct.iconv_to_ucs_ces_handlers_t** %67 to i64*, !dbg !438
  %69 = load i64, i64* %68, align 8, !dbg !438, !tbaa !439
  %70 = bitcast i8* %4 to i64*, !dbg !440
  store i64 %69, i64* %70, align 8, !dbg !440, !tbaa !441
  %71 = getelementptr inbounds %struct.iconv_from_ucs_ces_t, %struct.iconv_from_ucs_ces_t* %59, i64 0, i32 1, !dbg !443
  %72 = bitcast %struct.iconv_from_ucs_ces_handlers_t** %71 to i64*, !dbg !443
  %73 = load i64, i64* %72, align 8, !dbg !443, !tbaa !439
  %74 = getelementptr inbounds i8, i8* %4, i64 16, !dbg !444
  %75 = bitcast i8* %74 to i64*, !dbg !445
  store i64 %73, i64* %75, align 8, !dbg !445, !tbaa !446
  %76 = inttoptr i64 %69 to %struct.iconv_to_ucs_ces_handlers_t*, !dbg !447
  %77 = getelementptr inbounds %struct.iconv_to_ucs_ces_handlers_t, %struct.iconv_to_ucs_ces_handlers_t* %76, i64 0, i32 0, !dbg !449
  %78 = load i8* (%struct._reent*, i8*)*, i8* (%struct._reent*, i8*)** %77, align 8, !dbg !449, !tbaa !450
  %79 = icmp eq i8* (%struct._reent*, i8*)* %78, null, !dbg !452
  br i1 %79, label %85, label %80, !dbg !453

; <label>:80:                                     ; preds = %66
  %81 = tail call i8* %78(%struct._reent* %0, i8* %2) #4, !dbg !454
  %82 = getelementptr inbounds i8, i8* %4, i64 8, !dbg !456
  %83 = bitcast i8* %82 to i8**, !dbg !456
  store i8* %81, i8** %83, align 8, !dbg !457, !tbaa !458
  %84 = icmp eq i8* %81, null, !dbg !459
  br i1 %84, label %101, label %88, !dbg !461

; <label>:85:                                     ; preds = %66
  %86 = getelementptr inbounds i8, i8* %4, i64 8, !dbg !462
  %87 = bitcast i8* %86 to i8**, !dbg !462
  store i8* bitcast (i32* @fake_data to i8*), i8** %87, align 8, !dbg !463, !tbaa !458
  br label %88

; <label>:88:                                     ; preds = %80, %85
  %89 = load %struct.iconv_from_ucs_ces_handlers_t*, %struct.iconv_from_ucs_ces_handlers_t** %71, align 8, !dbg !464, !tbaa !439
  %90 = getelementptr inbounds %struct.iconv_from_ucs_ces_handlers_t, %struct.iconv_from_ucs_ces_handlers_t* %89, i64 0, i32 0, !dbg !466
  %91 = load i8* (%struct._reent*, i8*)*, i8* (%struct._reent*, i8*)** %90, align 8, !dbg !466, !tbaa !450
  %92 = icmp eq i8* (%struct._reent*, i8*)* %91, null, !dbg !467
  br i1 %92, label %98, label %93, !dbg !468

; <label>:93:                                     ; preds = %88
  %94 = tail call i8* %91(%struct._reent* %0, i8* %1) #4, !dbg !469
  %95 = getelementptr inbounds i8, i8* %4, i64 24, !dbg !471
  %96 = bitcast i8* %95 to i8**, !dbg !471
  store i8* %94, i8** %96, align 8, !dbg !472, !tbaa !473
  %97 = icmp eq i8* %94, null, !dbg !474
  br i1 %97, label %101, label %115, !dbg !476

; <label>:98:                                     ; preds = %88
  %99 = getelementptr inbounds i8, i8* %4, i64 24, !dbg !477
  %100 = bitcast i8* %99 to i8**, !dbg !477
  store i8* bitcast (i32* @fake_data to i8*), i8** %100, align 8, !dbg !478, !tbaa !473
  br label %115

; <label>:101:                                    ; preds = %93, %80, %58, %63
  %102 = getelementptr inbounds i8, i8* %4, i64 8, !dbg !479
  %103 = bitcast i8* %102 to i8**, !dbg !479
  %104 = load i8*, i8** %103, align 8, !dbg !479, !tbaa !458
  %105 = icmp eq i8* %104, null, !dbg !481
  br i1 %105, label %114, label %106, !dbg !482

; <label>:106:                                    ; preds = %101
  %107 = bitcast i8* %4 to %struct.iconv_to_ucs_ces_handlers_t**, !dbg !483
  %108 = load %struct.iconv_to_ucs_ces_handlers_t*, %struct.iconv_to_ucs_ces_handlers_t** %107, align 8, !dbg !483, !tbaa !441
  %109 = getelementptr inbounds %struct.iconv_to_ucs_ces_handlers_t, %struct.iconv_to_ucs_ces_handlers_t* %108, i64 0, i32 1, !dbg !484
  %110 = load i64 (%struct._reent*, i8*)*, i64 (%struct._reent*, i8*)** %109, align 8, !dbg !484, !tbaa !485
  %111 = icmp eq i64 (%struct._reent*, i8*)* %110, null, !dbg !486
  br i1 %111, label %114, label %112, !dbg !487

; <label>:112:                                    ; preds = %106
  %113 = tail call i64 %110(%struct._reent* %0, i8* nonnull %104) #4, !dbg !488
  br label %114, !dbg !488

; <label>:114:                                    ; preds = %106, %101, %112
  tail call void @free(i8* nonnull %4) #4, !dbg !489
  br label %115, !dbg !490

; <label>:115:                                    ; preds = %98, %93, %3, %114
  %116 = phi i8* [ null, %114 ], [ null, %3 ], [ %4, %93 ], [ %4, %98 ], !dbg !491
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !492
  ret i8* %116, !dbg !492
}

; Function Attrs: noredzone nounwind
define internal i64 @ucs_based_conversion_close(%struct._reent*, i8*) #0 !dbg !493 {
  %3 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !502
  %4 = bitcast i8* %3 to %struct.iconv_from_ucs_ces_handlers_t**, !dbg !504
  %5 = load %struct.iconv_from_ucs_ces_handlers_t*, %struct.iconv_from_ucs_ces_handlers_t** %4, align 8, !dbg !504, !tbaa !446
  %6 = getelementptr inbounds %struct.iconv_from_ucs_ces_handlers_t, %struct.iconv_from_ucs_ces_handlers_t* %5, i64 0, i32 1, !dbg !505
  %7 = load i64 (%struct._reent*, i8*)*, i64 (%struct._reent*, i8*)** %6, align 8, !dbg !505, !tbaa !485
  %8 = icmp eq i64 (%struct._reent*, i8*)* %7, null, !dbg !506
  br i1 %8, label %14, label %9, !dbg !507

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds i8, i8* %1, i64 24, !dbg !508
  %11 = bitcast i8* %10 to i8**, !dbg !508
  %12 = load i8*, i8** %11, align 8, !dbg !508, !tbaa !473
  %13 = tail call i64 %7(%struct._reent* %0, i8* %12) #4, !dbg !509
  br label %14, !dbg !510

; <label>:14:                                     ; preds = %2, %9
  %15 = phi i64 [ %13, %9 ], [ 0, %2 ], !dbg !511
  %16 = bitcast i8* %1 to %struct.iconv_to_ucs_ces_handlers_t**, !dbg !512
  %17 = load %struct.iconv_to_ucs_ces_handlers_t*, %struct.iconv_to_ucs_ces_handlers_t** %16, align 8, !dbg !512, !tbaa !441
  %18 = getelementptr inbounds %struct.iconv_to_ucs_ces_handlers_t, %struct.iconv_to_ucs_ces_handlers_t* %17, i64 0, i32 1, !dbg !514
  %19 = load i64 (%struct._reent*, i8*)*, i64 (%struct._reent*, i8*)** %18, align 8, !dbg !514, !tbaa !485
  %20 = icmp eq i64 (%struct._reent*, i8*)* %19, null, !dbg !515
  br i1 %20, label %27, label %21, !dbg !516

; <label>:21:                                     ; preds = %14
  %22 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !517
  %23 = bitcast i8* %22 to i8**, !dbg !517
  %24 = load i8*, i8** %23, align 8, !dbg !517, !tbaa !458
  %25 = tail call i64 %19(%struct._reent* %0, i8* %24) #4, !dbg !518
  %26 = or i64 %25, %15, !dbg !519
  br label %27, !dbg !520

; <label>:27:                                     ; preds = %14, %21
  %28 = phi i64 [ %26, %21 ], [ %15, %14 ], !dbg !521
  tail call void @free(i8* nonnull %1) #4, !dbg !522
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !523
  ret i64 %28, !dbg !523
}

; Function Attrs: noredzone nounwind
define internal i64 @ucs_based_conversion_convert(%struct._reent* nocapture, i8* nocapture readonly, i8**, i64*, i8**, i64*, i32) #0 !dbg !524 {
  %8 = alloca [6 x i8], align 1
  %9 = alloca i8*, align 8
  %10 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0, !dbg !546
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %10) #5, !dbg !546
  %11 = bitcast i8** %9 to i8*, !dbg !548
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #5, !dbg !548
  %12 = load i64, i64* %3, align 8, !dbg !551, !tbaa !552
  %13 = icmp eq i64 %12, 0, !dbg !554
  br i1 %13, label %76, label %14, !dbg !555

; <label>:14:                                     ; preds = %7
  %15 = bitcast i8** %2 to i64*
  %16 = bitcast i8* %1 to %struct.iconv_to_ucs_ces_handlers_t**
  %17 = getelementptr inbounds i8, i8* %1, i64 8
  %18 = bitcast i8* %17 to i8**
  %19 = and i32 %6, 1
  %20 = icmp eq i32 %19, 0
  %21 = getelementptr inbounds i8, i8* %1, i64 16
  %22 = bitcast i8* %21 to %struct.iconv_from_ucs_ces_handlers_t**
  %23 = getelementptr inbounds i8, i8* %1, i64 24
  %24 = bitcast i8* %23 to i8**
  %25 = and i32 %6, 2
  %26 = icmp eq i32 %25, 0
  br label %27, !dbg !555

; <label>:27:                                     ; preds = %14, %72
  %28 = phi i64 [ %12, %14 ], [ %74, %72 ]
  %29 = phi i8** [ %4, %14 ], [ %49, %72 ]
  %30 = phi i64 [ 0, %14 ], [ %73, %72 ]
  %31 = load i64, i64* %15, align 8, !dbg !556, !tbaa !394
  %32 = load i64, i64* %5, align 8, !dbg !559, !tbaa !552
  %33 = icmp eq i64 %32, 0, !dbg !561
  br i1 %33, label %34, label %36, !dbg !562

; <label>:34:                                     ; preds = %27
  %35 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !563
  store i32 7, i32* %35, align 8, !dbg !565, !tbaa !566
  br label %76, !dbg !572

; <label>:36:                                     ; preds = %27
  %37 = load %struct.iconv_to_ucs_ces_handlers_t*, %struct.iconv_to_ucs_ces_handlers_t** %16, align 8, !dbg !573, !tbaa !441
  %38 = getelementptr inbounds %struct.iconv_to_ucs_ces_handlers_t, %struct.iconv_to_ucs_ces_handlers_t* %37, i64 0, i32 6, !dbg !574
  %39 = load i32 (i8*, i8**, i64*)*, i32 (i8*, i8**, i64*)** %38, align 8, !dbg !574, !tbaa !575
  %40 = load i8*, i8** %18, align 8, !dbg !576, !tbaa !458
  %41 = call i32 %39(i8* %40, i8** nonnull %2, i64* nonnull %3) #4, !dbg !577
  switch i32 %41, label %46 [
    i32 -2, label %42
    i32 -1, label %44
  ], !dbg !579

; <label>:42:                                     ; preds = %36
  %43 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !580
  store i32 22, i32* %43, align 8, !dbg !583, !tbaa !566
  br label %76, !dbg !584

; <label>:44:                                     ; preds = %36
  %45 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !585
  store i32 138, i32* %45, align 8, !dbg !588, !tbaa !566
  br label %76, !dbg !589

; <label>:46:                                     ; preds = %36
  br i1 %20, label %48, label %47, !dbg !590

; <label>:47:                                     ; preds = %46
  store i8* %10, i8** %9, align 8, !dbg !592, !tbaa !394
  br label %48, !dbg !595

; <label>:48:                                     ; preds = %46, %47
  %49 = phi i8** [ %9, %47 ], [ %29, %46 ]
  %50 = load %struct.iconv_from_ucs_ces_handlers_t*, %struct.iconv_from_ucs_ces_handlers_t** %22, align 8, !dbg !596, !tbaa !446
  %51 = getelementptr inbounds %struct.iconv_from_ucs_ces_handlers_t, %struct.iconv_from_ucs_ces_handlers_t* %50, i64 0, i32 6, !dbg !597
  %52 = load i64 (i8*, i32, i8**, i64*)*, i64 (i8*, i32, i8**, i64*)** %51, align 8, !dbg !597, !tbaa !575
  %53 = load i8*, i8** %24, align 8, !dbg !598, !tbaa !473
  %54 = call i64 %52(i8* %53, i32 %41, i8** %49, i64* nonnull %5) #4, !dbg !599
  switch i64 %54, label %72 [
    i64 0, label %55
    i64 -1, label %57
  ], !dbg !601

; <label>:55:                                     ; preds = %48
  store i64 %31, i64* %15, align 8, !dbg !602, !tbaa !394
  store i64 %28, i64* %3, align 8, !dbg !605, !tbaa !552
  %56 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !606
  store i32 7, i32* %56, align 8, !dbg !607, !tbaa !566
  br label %76, !dbg !608

; <label>:57:                                     ; preds = %48
  br i1 %26, label %60, label %58, !dbg !609

; <label>:58:                                     ; preds = %57
  %59 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !612
  store i32 138, i32* %59, align 8, !dbg !615, !tbaa !566
  br label %76, !dbg !616

; <label>:60:                                     ; preds = %57
  %61 = load %struct.iconv_from_ucs_ces_handlers_t*, %struct.iconv_from_ucs_ces_handlers_t** %22, align 8, !dbg !617, !tbaa !446
  %62 = getelementptr inbounds %struct.iconv_from_ucs_ces_handlers_t, %struct.iconv_from_ucs_ces_handlers_t* %61, i64 0, i32 6, !dbg !618
  %63 = load i64 (i8*, i32, i8**, i64*)*, i64 (i8*, i32, i8**, i64*)** %62, align 8, !dbg !618, !tbaa !575
  %64 = load i8*, i8** %24, align 8, !dbg !619, !tbaa !473
  %65 = call i64 %63(i8* %64, i32 63, i8** %49, i64* nonnull %5) #4, !dbg !620
  %66 = trunc i64 %65 to i32, !dbg !621
  %67 = icmp slt i32 %66, 0, !dbg !623
  br i1 %67, label %68, label %70, !dbg !624

; <label>:68:                                     ; preds = %60
  %69 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !625
  store i32 7, i32* %69, align 8, !dbg !627, !tbaa !566
  br label %76, !dbg !628

; <label>:70:                                     ; preds = %60
  %71 = add i64 %30, 1, !dbg !629
  br label %72, !dbg !630

; <label>:72:                                     ; preds = %70, %48
  %73 = phi i64 [ %71, %70 ], [ %30, %48 ], !dbg !631
  %74 = load i64, i64* %3, align 8, !dbg !551, !tbaa !552
  %75 = icmp eq i64 %74, 0, !dbg !554
  br i1 %75, label %76, label %27, !dbg !555

; <label>:76:                                     ; preds = %72, %7, %68, %58, %55, %44, %42, %34
  %77 = phi i64 [ -1, %34 ], [ -1, %42 ], [ -1, %44 ], [ -1, %55 ], [ -1, %58 ], [ -1, %68 ], [ 0, %7 ], [ %73, %72 ], !dbg !632
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #5, !dbg !633
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %10) #5, !dbg !633
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !633
  ret i64 %77, !dbg !633
}

; Function Attrs: noredzone nounwind
define internal void @ucs_based_conversion_get_state(i8* nocapture readonly, %struct._mbstate_t*, i32) #0 !dbg !634 {
  %4 = icmp eq i32 %2, 0, !dbg !642
  br i1 %4, label %5, label %17, !dbg !644

; <label>:5:                                      ; preds = %3
  %6 = bitcast i8* %0 to %struct.iconv_to_ucs_ces_handlers_t**, !dbg !646
  %7 = load %struct.iconv_to_ucs_ces_handlers_t*, %struct.iconv_to_ucs_ces_handlers_t** %6, align 8, !dbg !646, !tbaa !441
  %8 = getelementptr inbounds %struct.iconv_to_ucs_ces_handlers_t, %struct.iconv_to_ucs_ces_handlers_t* %7, i64 0, i32 3, !dbg !649
  %9 = load void (i8*, %struct._mbstate_t*)*, void (i8*, %struct._mbstate_t*)** %8, align 8, !dbg !649, !tbaa !650
  %10 = icmp eq void (i8*, %struct._mbstate_t*)* %9, null, !dbg !651
  br i1 %10, label %15, label %11, !dbg !652

; <label>:11:                                     ; preds = %5
  %12 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !653
  %13 = bitcast i8* %12 to i8**, !dbg !653
  %14 = load i8*, i8** %13, align 8, !dbg !653, !tbaa !458
  tail call void %9(i8* %14, %struct._mbstate_t* %1) #4, !dbg !654
  br label %30, !dbg !654

; <label>:15:                                     ; preds = %5
  %16 = bitcast %struct._mbstate_t* %1 to i64*, !dbg !655
  store i64 0, i64* %16, align 4, !dbg !655
  br label %30

; <label>:17:                                     ; preds = %3
  %18 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !656
  %19 = bitcast i8* %18 to %struct.iconv_from_ucs_ces_handlers_t**, !dbg !659
  %20 = load %struct.iconv_from_ucs_ces_handlers_t*, %struct.iconv_from_ucs_ces_handlers_t** %19, align 8, !dbg !659, !tbaa !446
  %21 = getelementptr inbounds %struct.iconv_from_ucs_ces_handlers_t, %struct.iconv_from_ucs_ces_handlers_t* %20, i64 0, i32 3, !dbg !660
  %22 = load void (i8*, %struct._mbstate_t*)*, void (i8*, %struct._mbstate_t*)** %21, align 8, !dbg !660, !tbaa !650
  %23 = icmp eq void (i8*, %struct._mbstate_t*)* %22, null, !dbg !661
  br i1 %23, label %28, label %24, !dbg !662

; <label>:24:                                     ; preds = %17
  %25 = getelementptr inbounds i8, i8* %0, i64 24, !dbg !663
  %26 = bitcast i8* %25 to i8**, !dbg !663
  %27 = load i8*, i8** %26, align 8, !dbg !663, !tbaa !473
  tail call void %22(i8* %27, %struct._mbstate_t* %1) #4, !dbg !664
  br label %30, !dbg !664

; <label>:28:                                     ; preds = %17
  %29 = bitcast %struct._mbstate_t* %1 to i64*, !dbg !665
  store i64 0, i64* %29, align 4, !dbg !665
  br label %30

; <label>:30:                                     ; preds = %24, %28, %11, %15
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !666
  ret void, !dbg !666
}

; Function Attrs: noredzone nounwind
define internal i32 @ucs_based_conversion_set_state(i8* nocapture readonly, %struct._mbstate_t*, i32) #0 !dbg !667 {
  %4 = icmp eq i32 %2, 0, !dbg !674
  br i1 %4, label %5, label %16, !dbg !676

; <label>:5:                                      ; preds = %3
  %6 = bitcast i8* %0 to %struct.iconv_to_ucs_ces_handlers_t**, !dbg !678
  %7 = load %struct.iconv_to_ucs_ces_handlers_t*, %struct.iconv_to_ucs_ces_handlers_t** %6, align 8, !dbg !678, !tbaa !441
  %8 = getelementptr inbounds %struct.iconv_to_ucs_ces_handlers_t, %struct.iconv_to_ucs_ces_handlers_t* %7, i64 0, i32 4, !dbg !681
  %9 = load i32 (i8*, %struct._mbstate_t*)*, i32 (i8*, %struct._mbstate_t*)** %8, align 8, !dbg !681, !tbaa !682
  %10 = icmp eq i32 (i8*, %struct._mbstate_t*)* %9, null, !dbg !683
  br i1 %10, label %28, label %11, !dbg !684

; <label>:11:                                     ; preds = %5
  %12 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !685
  %13 = bitcast i8* %12 to i8**, !dbg !685
  %14 = load i8*, i8** %13, align 8, !dbg !685, !tbaa !458
  %15 = tail call i32 %9(i8* %14, %struct._mbstate_t* %1) #4, !dbg !686
  br label %28, !dbg !687

; <label>:16:                                     ; preds = %3
  %17 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !688
  %18 = bitcast i8* %17 to %struct.iconv_from_ucs_ces_handlers_t**, !dbg !691
  %19 = load %struct.iconv_from_ucs_ces_handlers_t*, %struct.iconv_from_ucs_ces_handlers_t** %18, align 8, !dbg !691, !tbaa !446
  %20 = getelementptr inbounds %struct.iconv_from_ucs_ces_handlers_t, %struct.iconv_from_ucs_ces_handlers_t* %19, i64 0, i32 4, !dbg !692
  %21 = load i32 (i8*, %struct._mbstate_t*)*, i32 (i8*, %struct._mbstate_t*)** %20, align 8, !dbg !692, !tbaa !682
  %22 = icmp eq i32 (i8*, %struct._mbstate_t*)* %21, null, !dbg !693
  br i1 %22, label %28, label %23, !dbg !694

; <label>:23:                                     ; preds = %16
  %24 = getelementptr inbounds i8, i8* %0, i64 24, !dbg !695
  %25 = bitcast i8* %24 to i8**, !dbg !695
  %26 = load i8*, i8** %25, align 8, !dbg !695, !tbaa !473
  %27 = tail call i32 %21(i8* %26, %struct._mbstate_t* %1) #4, !dbg !696
  br label %28, !dbg !697

; <label>:28:                                     ; preds = %16, %5, %23, %11
  %29 = phi i32 [ %15, %11 ], [ %27, %23 ], [ 0, %5 ], [ 0, %16 ], !dbg !698
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !699
  ret i32 %29, !dbg !699
}

; Function Attrs: noredzone nounwind
define internal i32 @ucs_based_conversion_get_mb_cur_max(i8* nocapture readonly, i32) #0 !dbg !700 {
  %3 = icmp eq i32 %1, 0, !dbg !706
  br i1 %3, label %4, label %13, !dbg !708

; <label>:4:                                      ; preds = %2
  %5 = bitcast i8* %0 to %struct.iconv_to_ucs_ces_handlers_t**, !dbg !710
  %6 = load %struct.iconv_to_ucs_ces_handlers_t*, %struct.iconv_to_ucs_ces_handlers_t** %5, align 8, !dbg !710, !tbaa !441
  %7 = getelementptr inbounds %struct.iconv_to_ucs_ces_handlers_t, %struct.iconv_to_ucs_ces_handlers_t* %6, i64 0, i32 2, !dbg !711
  %8 = load i32 (i8*)*, i32 (i8*)** %7, align 8, !dbg !711, !tbaa !712
  %9 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !713
  %10 = bitcast i8* %9 to i8**, !dbg !713
  %11 = load i8*, i8** %10, align 8, !dbg !713, !tbaa !458
  %12 = tail call i32 %8(i8* %11) #4, !dbg !714
  br label %23, !dbg !715

; <label>:13:                                     ; preds = %2
  %14 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !716
  %15 = bitcast i8* %14 to %struct.iconv_from_ucs_ces_handlers_t**, !dbg !717
  %16 = load %struct.iconv_from_ucs_ces_handlers_t*, %struct.iconv_from_ucs_ces_handlers_t** %15, align 8, !dbg !717, !tbaa !446
  %17 = getelementptr inbounds %struct.iconv_from_ucs_ces_handlers_t, %struct.iconv_from_ucs_ces_handlers_t* %16, i64 0, i32 2, !dbg !718
  %18 = load i32 (i8*)*, i32 (i8*)** %17, align 8, !dbg !718, !tbaa !712
  %19 = getelementptr inbounds i8, i8* %0, i64 24, !dbg !719
  %20 = bitcast i8* %19 to i8**, !dbg !719
  %21 = load i8*, i8** %20, align 8, !dbg !719, !tbaa !473
  %22 = tail call i32 %18(i8* %21) #4, !dbg !720
  br label %23, !dbg !721

; <label>:23:                                     ; preds = %13, %4
  %24 = phi i32 [ %12, %4 ], [ %22, %13 ], !dbg !722
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !723
  ret i32 %24, !dbg !723
}

; Function Attrs: noredzone nounwind
define internal i32 @ucs_based_conversion_is_stateful(i8* nocapture readonly, i32) #0 !dbg !724 {
  %3 = icmp eq i32 %1, 0, !dbg !730
  br i1 %3, label %4, label %15, !dbg !732

; <label>:4:                                      ; preds = %2
  %5 = bitcast i8* %0 to %struct.iconv_to_ucs_ces_handlers_t**, !dbg !734
  %6 = load %struct.iconv_to_ucs_ces_handlers_t*, %struct.iconv_to_ucs_ces_handlers_t** %5, align 8, !dbg !734, !tbaa !441
  %7 = getelementptr inbounds %struct.iconv_to_ucs_ces_handlers_t, %struct.iconv_to_ucs_ces_handlers_t* %6, i64 0, i32 5, !dbg !737
  %8 = load i32 (i8*)*, i32 (i8*)** %7, align 8, !dbg !737, !tbaa !738
  %9 = icmp eq i32 (i8*)* %8, null, !dbg !739
  br i1 %9, label %27, label %10, !dbg !740

; <label>:10:                                     ; preds = %4
  %11 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !741
  %12 = bitcast i8* %11 to i8**, !dbg !741
  %13 = load i8*, i8** %12, align 8, !dbg !741, !tbaa !458
  %14 = tail call i32 %8(i8* %13) #4, !dbg !742
  br label %27, !dbg !743

; <label>:15:                                     ; preds = %2
  %16 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !744
  %17 = bitcast i8* %16 to %struct.iconv_from_ucs_ces_handlers_t**, !dbg !747
  %18 = load %struct.iconv_from_ucs_ces_handlers_t*, %struct.iconv_from_ucs_ces_handlers_t** %17, align 8, !dbg !747, !tbaa !446
  %19 = getelementptr inbounds %struct.iconv_from_ucs_ces_handlers_t, %struct.iconv_from_ucs_ces_handlers_t* %18, i64 0, i32 5, !dbg !748
  %20 = load i32 (i8*)*, i32 (i8*)** %19, align 8, !dbg !748, !tbaa !738
  %21 = icmp eq i32 (i8*)* %20, null, !dbg !749
  br i1 %21, label %27, label %22, !dbg !750

; <label>:22:                                     ; preds = %15
  %23 = getelementptr inbounds i8, i8* %0, i64 24, !dbg !751
  %24 = bitcast i8* %23 to i8**, !dbg !751
  %25 = load i8*, i8** %24, align 8, !dbg !751, !tbaa !473
  %26 = tail call i32 %20(i8* %25) #4, !dbg !752
  br label %27, !dbg !753

; <label>:27:                                     ; preds = %15, %4, %22, %10
  %28 = phi i32 [ %14, %10 ], [ %26, %22 ], [ 0, %4 ], [ 0, %15 ], !dbg !754
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !755
  ret i32 %28, !dbg !755
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i8* @calloc(i64, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin noredzone nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!335, !336, !337}
!llvm.ident = !{!338}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_iconv_ucs_conversion_handlers", scope: !2, file: !3, line: 328, type: !308, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !305)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/iconv/lib/ucsconv.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6, !25, !249, !273, !304}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "iconv_ucs_conversion_t", file: !8, line: 279, baseType: !9)
!8 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/iconv/lib/ucsconv.h", directory: "/root/.unikraft/apps/redis/build")
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !8, line: 272, size: 256, elements: !10)
!10 = !{!11, !282}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "to_ucs", scope: !9, file: !8, line: 275, baseType: !12, size: 128)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "iconv_to_ucs_ces_desc_t", file: !8, line: 238, baseType: !13)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !8, line: 231, size: 128, elements: !14)
!14 = !{!15, !281}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "handlers", scope: !13, file: !8, line: 234, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "iconv_to_ucs_ces_handlers_t", file: !8, line: 161, baseType: !19)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !8, line: 53, size: 448, elements: !20)
!20 = !{!21, !245, !253, !257, !264, !268, !269}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !19, file: !8, line: 71, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DISubroutineType(types: !24)
!24 = !{!25, !26, !65}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !28, line: 569, size: 14912, elements: !29)
!28 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!29 = !{!30, !32, !113, !114, !115, !116, !120, !121, !124, !125, !129, !141, !142, !143, !145, !146, !147, !209, !230, !231, !236, !243}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !27, file: !28, line: 571, baseType: !31, size: 32)
!31 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !27, file: !28, line: 576, baseType: !33, size: 64, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !28, line: 287, baseType: !35)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !28, line: 181, size: 1408, elements: !36)
!36 = !{!37, !40, !41, !42, !44, !45, !50, !51, !52, !61, !67, !72, !76, !77, !78, !79, !83, !87, !88, !89, !91, !92, !96, !112}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !35, file: !28, line: 182, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !35, file: !28, line: 183, baseType: !31, size: 32, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !35, file: !28, line: 184, baseType: !31, size: 32, offset: 96)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !35, file: !28, line: 185, baseType: !43, size: 16, offset: 128)
!43 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !35, file: !28, line: 186, baseType: !43, size: 16, offset: 144)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !35, file: !28, line: 187, baseType: !46, size: 128, offset: 192)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !28, line: 117, size: 128, elements: !47)
!47 = !{!48, !49}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !46, file: !28, line: 118, baseType: !38, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !46, file: !28, line: 119, baseType: !31, size: 32, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !35, file: !28, line: 188, baseType: !31, size: 32, offset: 320)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !35, file: !28, line: 195, baseType: !25, size: 64, offset: 384)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !35, file: !28, line: 197, baseType: !53, size: 64, offset: 448)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DISubroutineType(types: !55)
!55 = !{!56, !26, !25, !59, !31}
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !57, line: 145, baseType: !58)
!57 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!58 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !35, file: !28, line: 199, baseType: !62, size: 64, offset: 512)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DISubroutineType(types: !64)
!64 = !{!56, !26, !25, !65, !31}
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !35, file: !28, line: 202, baseType: !68, size: 64, offset: 576)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{!71, !26, !25, !71, !31}
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !57, line: 114, baseType: !58)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !35, file: !28, line: 203, baseType: !73, size: 64, offset: 640)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DISubroutineType(types: !75)
!75 = !{!31, !26, !25}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !35, file: !28, line: 206, baseType: !46, size: 128, offset: 704)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !35, file: !28, line: 207, baseType: !38, size: 64, offset: 832)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !35, file: !28, line: 208, baseType: !31, size: 32, offset: 896)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !35, file: !28, line: 211, baseType: !80, size: 24, offset: 928)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 24, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 3)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !35, file: !28, line: 212, baseType: !84, size: 8, offset: 952)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 8, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: 1)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !35, file: !28, line: 215, baseType: !46, size: 128, offset: 960)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !35, file: !28, line: 218, baseType: !31, size: 32, offset: 1088)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !35, file: !28, line: 219, baseType: !90, size: 64, offset: 1152)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !57, line: 44, baseType: !58)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !35, file: !28, line: 222, baseType: !26, size: 64, offset: 1216)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !35, file: !28, line: 226, baseType: !93, size: 32, offset: 1280)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !57, line: 175, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !95, line: 12, baseType: !31)
!95 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !35, file: !28, line: 228, baseType: !97, size: 64, offset: 1312)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !57, line: 171, baseType: !98)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !57, line: 163, size: 64, elements: !99)
!99 = !{!100, !101}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !98, file: !57, line: 165, baseType: !31, size: 32)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !98, file: !57, line: 170, baseType: !102, size: 32, offset: 32)
!102 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !98, file: !57, line: 166, size: 32, elements: !103)
!103 = !{!104, !108}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !102, file: !57, line: 168, baseType: !105, size: 32)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !106, line: 124, baseType: !107)
!106 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!107 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !102, file: !57, line: 169, baseType: !109, size: 32)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 32, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 4)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !35, file: !28, line: 229, baseType: !31, size: 32, offset: 1376)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !27, file: !28, line: 576, baseType: !33, size: 64, offset: 128)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !27, file: !28, line: 576, baseType: !33, size: 64, offset: 192)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !27, file: !28, line: 578, baseType: !31, size: 32, offset: 256)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !27, file: !28, line: 579, baseType: !117, size: 200, offset: 288)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 200, elements: !118)
!118 = !{!119}
!119 = !DISubrange(count: 25)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !27, file: !28, line: 582, baseType: !31, size: 32, offset: 512)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !27, file: !28, line: 583, baseType: !122, size: 64, offset: 576)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !28, line: 40, flags: DIFlagFwdDecl)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !27, file: !28, line: 585, baseType: !31, size: 32, offset: 640)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !27, file: !28, line: 587, baseType: !126, size: 64, offset: 704)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DISubroutineType(types: !128)
!128 = !{null, !26}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !27, file: !28, line: 590, baseType: !130, size: 64, offset: 768)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !28, line: 47, size: 256, elements: !132)
!132 = !{!133, !134, !135, !136, !137, !138}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !131, file: !28, line: 49, baseType: !130, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !131, file: !28, line: 50, baseType: !31, size: 32, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !131, file: !28, line: 50, baseType: !31, size: 32, offset: 96)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !131, file: !28, line: 50, baseType: !31, size: 32, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !131, file: !28, line: 50, baseType: !31, size: 32, offset: 160)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !131, file: !28, line: 51, baseType: !139, size: 32, offset: 192)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 32, elements: !85)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !28, line: 25, baseType: !107)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !27, file: !28, line: 591, baseType: !31, size: 32, offset: 832)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !27, file: !28, line: 592, baseType: !130, size: 64, offset: 896)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !27, file: !28, line: 593, baseType: !144, size: 64, offset: 960)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !27, file: !28, line: 596, baseType: !31, size: 32, offset: 1024)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !27, file: !28, line: 597, baseType: !59, size: 64, offset: 1088)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !27, file: !28, line: 632, baseType: !148, size: 2880, offset: 1152)
!148 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !27, file: !28, line: 599, size: 2880, elements: !149)
!149 = !{!150, !200}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !148, file: !28, line: 622, baseType: !151, size: 1728)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !148, file: !28, line: 601, size: 1728, elements: !152)
!152 = !{!153, !154, !155, !159, !171, !172, !174, !182, !183, !184, !185, !189, !193, !194, !195, !196, !197, !198, !199}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !151, file: !28, line: 603, baseType: !107, size: 32)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !151, file: !28, line: 604, baseType: !59, size: 64, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !151, file: !28, line: 605, baseType: !156, size: 208, offset: 128)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 208, elements: !157)
!157 = !{!158}
!158 = !DISubrange(count: 26)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !151, file: !28, line: 606, baseType: !160, size: 288, offset: 352)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !28, line: 55, size: 288, elements: !161)
!161 = !{!162, !163, !164, !165, !166, !167, !168, !169, !170}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !160, file: !28, line: 57, baseType: !31, size: 32)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !160, file: !28, line: 58, baseType: !31, size: 32, offset: 32)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !160, file: !28, line: 59, baseType: !31, size: 32, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !160, file: !28, line: 60, baseType: !31, size: 32, offset: 96)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !160, file: !28, line: 61, baseType: !31, size: 32, offset: 128)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !160, file: !28, line: 62, baseType: !31, size: 32, offset: 160)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !160, file: !28, line: 63, baseType: !31, size: 32, offset: 192)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !160, file: !28, line: 64, baseType: !31, size: 32, offset: 224)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !160, file: !28, line: 65, baseType: !31, size: 32, offset: 256)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !151, file: !28, line: 607, baseType: !31, size: 32, offset: 640)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !151, file: !28, line: 608, baseType: !173, size: 64, offset: 704)
!173 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !151, file: !28, line: 609, baseType: !175, size: 112, offset: 768)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !28, line: 319, size: 112, elements: !176)
!176 = !{!177, !180, !181}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !175, file: !28, line: 320, baseType: !178, size: 48)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 48, elements: !81)
!179 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !175, file: !28, line: 321, baseType: !178, size: 48, offset: 48)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !175, file: !28, line: 322, baseType: !179, size: 16, offset: 96)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !151, file: !28, line: 610, baseType: !97, size: 64, offset: 896)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !151, file: !28, line: 611, baseType: !97, size: 64, offset: 960)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !151, file: !28, line: 612, baseType: !97, size: 64, offset: 1024)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !151, file: !28, line: 613, baseType: !186, size: 64, offset: 1088)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 64, elements: !187)
!187 = !{!188}
!188 = !DISubrange(count: 8)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !151, file: !28, line: 614, baseType: !190, size: 192, offset: 1152)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 192, elements: !191)
!191 = !{!192}
!192 = !DISubrange(count: 24)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !151, file: !28, line: 615, baseType: !31, size: 32, offset: 1344)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !151, file: !28, line: 616, baseType: !97, size: 64, offset: 1376)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !151, file: !28, line: 617, baseType: !97, size: 64, offset: 1440)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !151, file: !28, line: 618, baseType: !97, size: 64, offset: 1504)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !151, file: !28, line: 619, baseType: !97, size: 64, offset: 1568)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !151, file: !28, line: 620, baseType: !97, size: 64, offset: 1632)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !151, file: !28, line: 621, baseType: !31, size: 32, offset: 1696)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !148, file: !28, line: 631, baseType: !201, size: 2880)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !148, file: !28, line: 626, size: 2880, elements: !202)
!202 = !{!203, !207}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !201, file: !28, line: 629, baseType: !204, size: 1920)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 1920, elements: !205)
!205 = !{!206}
!206 = !DISubrange(count: 30)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !201, file: !28, line: 630, baseType: !208, size: 960, offset: 1920)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 960, elements: !205)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !27, file: !28, line: 636, baseType: !210, size: 64, offset: 4032)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !28, line: 93, size: 6336, elements: !212)
!212 = !{!213, !214, !215, !222}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !211, file: !28, line: 94, baseType: !210, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !211, file: !28, line: 95, baseType: !31, size: 32, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !211, file: !28, line: 97, baseType: !216, size: 2048, offset: 128)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 2048, elements: !220)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{null}
!220 = !{!221}
!221 = !DISubrange(count: 32)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !211, file: !28, line: 98, baseType: !223, size: 4160, offset: 2176)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !28, line: 74, size: 4160, elements: !224)
!224 = !{!225, !227, !228, !229}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !223, file: !28, line: 75, baseType: !226, size: 2048)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 2048, elements: !220)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !223, file: !28, line: 76, baseType: !226, size: 2048, offset: 2048)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !223, file: !28, line: 78, baseType: !140, size: 32, offset: 4096)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !223, file: !28, line: 81, baseType: !140, size: 32, offset: 4128)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !27, file: !28, line: 637, baseType: !211, size: 6336, offset: 4096)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !27, file: !28, line: 641, baseType: !232, size: 64, offset: 10432)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{null, !31}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !27, file: !28, line: 646, baseType: !237, size: 192, offset: 10496)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !28, line: 291, size: 192, elements: !238)
!238 = !{!239, !241, !242}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !237, file: !28, line: 293, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !237, file: !28, line: 294, baseType: !31, size: 32, offset: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !237, file: !28, line: 295, baseType: !33, size: 64, offset: 128)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !27, file: !28, line: 648, baseType: !244, size: 4224, offset: 10688)
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 4224, elements: !81)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !19, file: !8, line: 87, baseType: !246, size: 64, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{!249, !26, !25}
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !250, line: 40, baseType: !251)
!250 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !57, line: 129, baseType: !252)
!252 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "get_mb_cur_max", scope: !19, file: !8, line: 99, baseType: !254, size: 64, offset: 128)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DISubroutineType(types: !256)
!256 = !{!31, !25}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !19, file: !8, line: 111, baseType: !258, size: 64, offset: 192)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{null, !25, !261}
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !263, line: 86, baseType: !97)
!263 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/wchar.h", directory: "/root/.unikraft/apps/redis/build")
!264 = !DIDerivedType(tag: DW_TAG_member, name: "set_state", scope: !19, file: !8, line: 126, baseType: !265, size: 64, offset: 256)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{!31, !25, !261}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "is_stateful", scope: !19, file: !8, line: 138, baseType: !254, size: 64, offset: 320)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "convert_to_ucs", scope: !19, file: !8, line: 158, baseType: !270, size: 64, offset: 384)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!273, !25, !277, !280}
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs4_t", file: !274, line: 61, baseType: !275)
!274 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/iconv/lib/local.h", directory: "/root/.unikraft/apps/redis/build")
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !276, line: 79, baseType: !107)
!276 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !13, file: !8, line: 237, baseType: !25, size: 64, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "from_ucs", scope: !9, file: !8, line: 278, baseType: !283, size: 128, offset: 128)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "iconv_from_ucs_ces_desc_t", file: !8, line: 254, baseType: !284)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !8, line: 247, size: 128, elements: !285)
!285 = !{!286, !303}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "handlers", scope: !284, file: !8, line: 250, baseType: !287, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !289)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "iconv_from_ucs_ces_handlers_t", file: !8, line: 222, baseType: !290)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !8, line: 172, size: 448, elements: !291)
!291 = !{!292, !293, !294, !295, !296, !297, !298}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !290, file: !8, line: 175, baseType: !22, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !290, file: !8, line: 179, baseType: !246, size: 64, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "get_mb_cur_max", scope: !290, file: !8, line: 183, baseType: !254, size: 64, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !290, file: !8, line: 186, baseType: !258, size: 64, offset: 192)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "set_state", scope: !290, file: !8, line: 190, baseType: !265, size: 64, offset: 256)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "is_stateful", scope: !290, file: !8, line: 194, baseType: !254, size: 64, offset: 320)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "convert_from_ucs", scope: !290, file: !8, line: 218, baseType: !299, size: 64, offset: 384)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DISubroutineType(types: !301)
!301 = !{!249, !25, !273, !302, !280}
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !284, file: !8, line: 253, baseType: !25, size: 64, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !276, line: 77, baseType: !31)
!305 = !{!0, !306}
!306 = !DIGlobalVariableExpression(var: !307, expr: !DIExpression())
!307 = distinct !DIGlobalVariable(name: "fake_data", scope: !2, file: !3, line: 36, type: !31, isLocal: true, isDefinition: true)
!308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !309)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "iconv_conversion_handlers_t", file: !310, line: 191, baseType: !311)
!310 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/iconv/lib/conv.h", directory: "/root/.unikraft/apps/redis/build")
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !310, line: 48, size: 448, elements: !312)
!312 = !{!313, !317, !318, !322, !326, !330, !334}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !311, file: !310, line: 66, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DISubroutineType(types: !316)
!316 = !{!25, !26, !65, !65}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !311, file: !310, line: 84, baseType: !246, size: 64, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "convert", scope: !311, file: !310, line: 117, baseType: !319, size: 64, offset: 128)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DISubroutineType(types: !321)
!321 = !{!249, !26, !25, !277, !280, !302, !280, !31}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !311, file: !310, line: 138, baseType: !323, size: 64, offset: 192)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{null, !25, !261, !31}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "set_state", scope: !311, file: !310, line: 157, baseType: !327, size: 64, offset: 256)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{!31, !25, !261, !31}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "get_mb_cur_max", scope: !311, file: !310, line: 173, baseType: !331, size: 64, offset: 320)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DISubroutineType(types: !333)
!333 = !{!31, !25, !31}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "is_stateful", scope: !311, file: !310, line: 188, baseType: !331, size: 64, offset: 384)
!335 = !{i32 2, !"Dwarf Version", i32 4}
!336 = !{i32 2, !"Debug Info Version", i32 3}
!337 = !{i32 1, !"wchar_size", i32 4}
!338 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!339 = distinct !DISubprogram(name: "ucs_based_conversion_open", scope: !3, file: !3, line: 48, type: !315, isLocal: true, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !340)
!340 = !{!341, !342, !343, !344, !345, !354}
!341 = !DILocalVariable(name: "rptr", arg: 1, scope: !339, file: !3, line: 48, type: !26)
!342 = !DILocalVariable(name: "to", arg: 2, scope: !339, file: !3, line: 48, type: !65)
!343 = !DILocalVariable(name: "from", arg: 3, scope: !339, file: !3, line: 48, type: !65)
!344 = !DILocalVariable(name: "uc", scope: !339, file: !3, line: 53, type: !6)
!345 = !DILocalVariable(name: "to_ucs_bices", scope: !339, file: !3, line: 54, type: !346)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !348)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "iconv_to_ucs_ces_t", file: !8, line: 297, baseType: !349)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !8, line: 287, size: 128, elements: !350)
!350 = !{!351, !353}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "names", scope: !349, file: !8, line: 293, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "handlers", scope: !349, file: !8, line: 296, baseType: !16, size: 64, offset: 64)
!354 = !DILocalVariable(name: "from_ucs_bices", scope: !339, file: !3, line: 55, type: !355)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !357)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "iconv_from_ucs_ces_t", file: !8, line: 315, baseType: !358)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !8, line: 305, size: 128, elements: !359)
!359 = !{!360, !361}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "names", scope: !358, file: !8, line: 311, baseType: !352, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "handlers", scope: !358, file: !8, line: 314, baseType: !287, size: 64, offset: 64)
!362 = !DILocation(line: 48, column: 1, scope: !339)
!363 = !DILocation(line: 58, column: 14, scope: !339)
!364 = !DILocation(line: 53, column: 27, scope: !339)
!365 = !DILocation(line: 59, column: 10, scope: !366)
!366 = distinct !DILexicalBlock(scope: !339, file: !3, line: 59, column: 7)
!367 = !DILocation(line: 59, column: 7, scope: !339)
!368 = !DILocation(line: 54, column: 32, scope: !339)
!369 = !DILocation(line: 67, column: 22, scope: !370)
!370 = distinct !DILexicalBlock(scope: !371, file: !3, line: 66, column: 3)
!371 = distinct !DILexicalBlock(scope: !339, file: !3, line: 66, column: 3)
!372 = !{!373, !374, i64 0}
!373 = !{!"", !374, i64 0, !374, i64 8}
!374 = !{!"any pointer", !375, i64 0}
!375 = !{!"omnipotent char", !376, i64 0}
!376 = !{!"Simple C/C++ TBAA"}
!377 = !DILocation(line: 67, column: 28, scope: !370)
!378 = !DILocation(line: 66, column: 3, scope: !371)
!379 = !DILocalVariable(name: "searchee", arg: 1, scope: !380, file: !3, line: 345, type: !65)
!380 = distinct !DISubprogram(name: "find_encoding_name", scope: !3, file: !3, line: 345, type: !381, isLocal: true, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !383)
!381 = !DISubroutineType(types: !382)
!382 = !{!31, !65, !352}
!383 = !{!379, !384, !385}
!384 = !DILocalVariable(name: "names", arg: 2, scope: !380, file: !3, line: 345, type: !352)
!385 = !DILocalVariable(name: "p", scope: !380, file: !3, line: 349, type: !65)
!386 = !DILocation(line: 345, column: 1, scope: !380, inlinedAt: !387)
!387 = distinct !DILocation(line: 70, column: 11, scope: !388)
!388 = distinct !DILexicalBlock(scope: !389, file: !3, line: 70, column: 11)
!389 = distinct !DILexicalBlock(scope: !370, file: !3, line: 69, column: 5)
!390 = !DILocation(line: 349, column: 16, scope: !380, inlinedAt: !387)
!391 = !DILocation(line: 0, scope: !392, inlinedAt: !387)
!392 = distinct !DILexicalBlock(scope: !393, file: !3, line: 351, column: 3)
!393 = distinct !DILexicalBlock(scope: !380, file: !3, line: 351, column: 3)
!394 = !{!374, !374, i64 0}
!395 = !DILocation(line: 351, column: 22, scope: !392, inlinedAt: !387)
!396 = !DILocation(line: 351, column: 3, scope: !393, inlinedAt: !387)
!397 = !DILocation(line: 351, column: 42, scope: !392, inlinedAt: !387)
!398 = distinct !{!398, !399, !400}
!399 = !DILocation(line: 351, column: 3, scope: !393)
!400 = !DILocation(line: 353, column: 14, scope: !393)
!401 = !DILocation(line: 352, column: 9, scope: !402, inlinedAt: !387)
!402 = distinct !DILexicalBlock(scope: !392, file: !3, line: 352, column: 9)
!403 = !DILocation(line: 352, column: 30, scope: !402, inlinedAt: !387)
!404 = !DILocation(line: 352, column: 9, scope: !392, inlinedAt: !387)
!405 = !DILocation(line: 356, column: 1, scope: !380, inlinedAt: !387)
!406 = !DILocation(line: 68, column: 20, scope: !370)
!407 = distinct !{!407, !378, !408}
!408 = !DILocation(line: 72, column: 5, scope: !371)
!409 = !DILocation(line: 79, column: 24, scope: !410)
!410 = distinct !DILexicalBlock(scope: !411, file: !3, line: 78, column: 3)
!411 = distinct !DILexicalBlock(scope: !339, file: !3, line: 78, column: 3)
!412 = !DILocation(line: 55, column: 32, scope: !339)
!413 = !DILocation(line: 79, column: 30, scope: !410)
!414 = !DILocation(line: 78, column: 3, scope: !411)
!415 = !DILocation(line: 345, column: 1, scope: !380, inlinedAt: !416)
!416 = distinct !DILocation(line: 82, column: 11, scope: !417)
!417 = distinct !DILexicalBlock(scope: !418, file: !3, line: 82, column: 11)
!418 = distinct !DILexicalBlock(scope: !410, file: !3, line: 81, column: 5)
!419 = !DILocation(line: 349, column: 16, scope: !380, inlinedAt: !416)
!420 = !DILocation(line: 0, scope: !392, inlinedAt: !416)
!421 = !DILocation(line: 351, column: 22, scope: !392, inlinedAt: !416)
!422 = !DILocation(line: 351, column: 3, scope: !393, inlinedAt: !416)
!423 = !DILocation(line: 351, column: 42, scope: !392, inlinedAt: !416)
!424 = !DILocation(line: 352, column: 9, scope: !402, inlinedAt: !416)
!425 = !DILocation(line: 352, column: 30, scope: !402, inlinedAt: !416)
!426 = !DILocation(line: 352, column: 9, scope: !392, inlinedAt: !416)
!427 = !DILocation(line: 356, column: 1, scope: !380, inlinedAt: !416)
!428 = !DILocation(line: 80, column: 22, scope: !410)
!429 = distinct !{!429, !414, !430}
!430 = !DILocation(line: 84, column: 5, scope: !411)
!431 = !DILocation(line: 86, column: 21, scope: !432)
!432 = distinct !DILexicalBlock(scope: !339, file: !3, line: 86, column: 7)
!433 = !DILocation(line: 86, column: 27, scope: !432)
!434 = !DILocation(line: 86, column: 35, scope: !432)
!435 = !DILocation(line: 86, column: 54, scope: !432)
!436 = !DILocation(line: 86, column: 60, scope: !432)
!437 = !DILocation(line: 86, column: 7, scope: !339)
!438 = !DILocation(line: 89, column: 39, scope: !339)
!439 = !{!373, !374, i64 8}
!440 = !DILocation(line: 89, column: 23, scope: !339)
!441 = !{!442, !374, i64 0}
!442 = !{!"", !373, i64 0, !373, i64 16}
!443 = !DILocation(line: 90, column: 43, scope: !339)
!444 = !DILocation(line: 90, column: 7, scope: !339)
!445 = !DILocation(line: 90, column: 25, scope: !339)
!446 = !{!442, !374, i64 16}
!447 = !DILocation(line: 93, column: 21, scope: !448)
!448 = distinct !DILexicalBlock(scope: !339, file: !3, line: 93, column: 7)
!449 = !DILocation(line: 93, column: 31, scope: !448)
!450 = !{!451, !374, i64 0}
!451 = !{!"", !374, i64 0, !374, i64 8, !374, i64 16, !374, i64 24, !374, i64 32, !374, i64 40, !374, i64 48}
!452 = !DILocation(line: 93, column: 36, scope: !448)
!453 = !DILocation(line: 93, column: 7, scope: !339)
!454 = !DILocation(line: 95, column: 25, scope: !455)
!455 = distinct !DILexicalBlock(scope: !448, file: !3, line: 94, column: 5)
!456 = !DILocation(line: 95, column: 18, scope: !455)
!457 = !DILocation(line: 95, column: 23, scope: !455)
!458 = !{!442, !374, i64 8}
!459 = !DILocation(line: 96, column: 27, scope: !460)
!460 = distinct !DILexicalBlock(scope: !455, file: !3, line: 96, column: 11)
!461 = !DILocation(line: 96, column: 11, scope: !455)
!462 = !DILocation(line: 100, column: 16, scope: !448)
!463 = !DILocation(line: 100, column: 21, scope: !448)
!464 = !DILocation(line: 104, column: 23, scope: !465)
!465 = distinct !DILexicalBlock(scope: !339, file: !3, line: 104, column: 7)
!466 = !DILocation(line: 104, column: 33, scope: !465)
!467 = !DILocation(line: 104, column: 38, scope: !465)
!468 = !DILocation(line: 104, column: 7, scope: !339)
!469 = !DILocation(line: 106, column: 27, scope: !470)
!470 = distinct !DILexicalBlock(scope: !465, file: !3, line: 105, column: 5)
!471 = !DILocation(line: 106, column: 20, scope: !470)
!472 = !DILocation(line: 106, column: 25, scope: !470)
!473 = !{!442, !374, i64 24}
!474 = !DILocation(line: 107, column: 29, scope: !475)
!475 = distinct !DILexicalBlock(scope: !470, file: !3, line: 107, column: 11)
!476 = !DILocation(line: 107, column: 11, scope: !470)
!477 = !DILocation(line: 111, column: 18, scope: !465)
!478 = !DILocation(line: 111, column: 23, scope: !465)
!479 = !DILocation(line: 116, column: 18, scope: !480)
!480 = distinct !DILexicalBlock(scope: !339, file: !3, line: 116, column: 7)
!481 = !DILocation(line: 116, column: 23, scope: !480)
!482 = !DILocation(line: 116, column: 31, scope: !480)
!483 = !DILocation(line: 116, column: 45, scope: !480)
!484 = !DILocation(line: 116, column: 55, scope: !480)
!485 = !{!451, !374, i64 8}
!486 = !DILocation(line: 116, column: 61, scope: !480)
!487 = !DILocation(line: 116, column: 7, scope: !339)
!488 = !DILocation(line: 117, column: 5, scope: !480)
!489 = !DILocation(line: 119, column: 3, scope: !339)
!490 = !DILocation(line: 121, column: 3, scope: !339)
!491 = !DILocation(line: 0, scope: !339)
!492 = !DILocation(line: 122, column: 1, scope: !339)
!493 = distinct !DISubprogram(name: "ucs_based_conversion_close", scope: !3, file: !3, line: 126, type: !247, isLocal: true, isDefinition: true, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !494)
!494 = !{!495, !496, !497, !498}
!495 = !DILocalVariable(name: "rptr", arg: 1, scope: !493, file: !3, line: 126, type: !26)
!496 = !DILocalVariable(name: "data", arg: 2, scope: !493, file: !3, line: 126, type: !25)
!497 = !DILocalVariable(name: "uc", scope: !493, file: !3, line: 130, type: !6)
!498 = !DILocalVariable(name: "res", scope: !493, file: !3, line: 131, type: !249)
!499 = !DILocation(line: 126, column: 1, scope: !493)
!500 = !DILocation(line: 131, column: 10, scope: !493)
!501 = !DILocation(line: 130, column: 27, scope: !493)
!502 = !DILocation(line: 135, column: 11, scope: !503)
!503 = distinct !DILexicalBlock(scope: !493, file: !3, line: 135, column: 7)
!504 = !DILocation(line: 135, column: 20, scope: !503)
!505 = !DILocation(line: 135, column: 30, scope: !503)
!506 = !DILocation(line: 135, column: 36, scope: !503)
!507 = !DILocation(line: 135, column: 7, scope: !493)
!508 = !DILocation(line: 136, column: 60, scope: !503)
!509 = !DILocation(line: 136, column: 11, scope: !503)
!510 = !DILocation(line: 136, column: 5, scope: !503)
!511 = !DILocation(line: 0, scope: !493)
!512 = !DILocation(line: 137, column: 18, scope: !513)
!513 = distinct !DILexicalBlock(scope: !493, file: !3, line: 137, column: 7)
!514 = !DILocation(line: 137, column: 28, scope: !513)
!515 = !DILocation(line: 137, column: 34, scope: !513)
!516 = !DILocation(line: 137, column: 7, scope: !493)
!517 = !DILocation(line: 138, column: 57, scope: !513)
!518 = !DILocation(line: 138, column: 12, scope: !513)
!519 = !DILocation(line: 138, column: 9, scope: !513)
!520 = !DILocation(line: 138, column: 5, scope: !513)
!521 = !DILocation(line: 0, scope: !503)
!522 = !DILocation(line: 140, column: 3, scope: !493)
!523 = !DILocation(line: 142, column: 3, scope: !493)
!524 = distinct !DISubprogram(name: "ucs_based_conversion_convert", scope: !3, file: !3, line: 147, type: !320, isLocal: true, isDefinition: true, scopeLine: 156, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !525)
!525 = !{!526, !527, !528, !529, !530, !531, !532, !533, !537, !538, !539, !540, !542, !543, !544}
!526 = !DILocalVariable(name: "rptr", arg: 1, scope: !524, file: !3, line: 147, type: !26)
!527 = !DILocalVariable(name: "data", arg: 2, scope: !524, file: !3, line: 147, type: !25)
!528 = !DILocalVariable(name: "inbuf", arg: 3, scope: !524, file: !3, line: 147, type: !277)
!529 = !DILocalVariable(name: "inbytesleft", arg: 4, scope: !524, file: !3, line: 147, type: !280)
!530 = !DILocalVariable(name: "outbuf", arg: 5, scope: !524, file: !3, line: 147, type: !302)
!531 = !DILocalVariable(name: "outbytesleft", arg: 6, scope: !524, file: !3, line: 147, type: !280)
!532 = !DILocalVariable(name: "flags", arg: 7, scope: !524, file: !3, line: 147, type: !31)
!533 = !DILocalVariable(name: "outbuf1", scope: !524, file: !3, line: 157, type: !534)
!534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 48, elements: !535)
!535 = !{!536}
!536 = !DISubrange(count: 6)
!537 = !DILocalVariable(name: "poutbuf1", scope: !524, file: !3, line: 158, type: !38)
!538 = !DILocalVariable(name: "res", scope: !524, file: !3, line: 159, type: !249)
!539 = !DILocalVariable(name: "uc", scope: !524, file: !3, line: 160, type: !6)
!540 = !DILocalVariable(name: "bytes", scope: !541, file: !3, line: 164, type: !249)
!541 = distinct !DILexicalBlock(scope: !524, file: !3, line: 163, column: 5)
!542 = !DILocalVariable(name: "ch", scope: !541, file: !3, line: 165, type: !273)
!543 = !DILocalVariable(name: "inbuf_save", scope: !541, file: !3, line: 166, type: !278)
!544 = !DILocalVariable(name: "inbyteslef_save", scope: !541, file: !3, line: 167, type: !249)
!545 = !DILocation(line: 147, column: 1, scope: !524)
!546 = !DILocation(line: 157, column: 3, scope: !524)
!547 = !DILocation(line: 157, column: 17, scope: !524)
!548 = !DILocation(line: 158, column: 3, scope: !524)
!549 = !DILocation(line: 159, column: 10, scope: !524)
!550 = !DILocation(line: 160, column: 27, scope: !524)
!551 = !DILocation(line: 162, column: 10, scope: !524)
!552 = !{!553, !553, i64 0}
!553 = !{!"long", !375, i64 0}
!554 = !DILocation(line: 162, column: 23, scope: !524)
!555 = !DILocation(line: 162, column: 3, scope: !524)
!556 = !DILocation(line: 166, column: 42, scope: !541)
!557 = !DILocation(line: 166, column: 29, scope: !541)
!558 = !DILocation(line: 167, column: 14, scope: !541)
!559 = !DILocation(line: 169, column: 11, scope: !560)
!560 = distinct !DILexicalBlock(scope: !541, file: !3, line: 169, column: 11)
!561 = !DILocation(line: 169, column: 25, scope: !560)
!562 = !DILocation(line: 169, column: 11, scope: !541)
!563 = !DILocation(line: 171, column: 11, scope: !564)
!564 = distinct !DILexicalBlock(scope: !560, file: !3, line: 170, column: 9)
!565 = !DILocation(line: 171, column: 28, scope: !564)
!566 = !{!567, !568, i64 0}
!567 = !{!"_reent", !568, i64 0, !374, i64 8, !374, i64 16, !374, i64 24, !568, i64 32, !375, i64 36, !568, i64 64, !374, i64 72, !568, i64 80, !374, i64 88, !374, i64 96, !568, i64 104, !374, i64 112, !374, i64 120, !568, i64 128, !374, i64 136, !375, i64 144, !374, i64 504, !569, i64 512, !374, i64 1304, !571, i64 1312, !375, i64 1336}
!568 = !{!"int", !375, i64 0}
!569 = !{!"_atexit", !374, i64 0, !568, i64 8, !375, i64 16, !570, i64 272}
!570 = !{!"_on_exit_args", !375, i64 0, !375, i64 256, !568, i64 512, !568, i64 516}
!571 = !{!"_glue", !374, i64 0, !568, i64 8, !374, i64 16}
!572 = !DILocation(line: 172, column: 11, scope: !564)
!573 = !DILocation(line: 175, column: 23, scope: !541)
!574 = !DILocation(line: 175, column: 33, scope: !541)
!575 = !{!451, !374, i64 48}
!576 = !DILocation(line: 175, column: 60, scope: !541)
!577 = !DILocation(line: 175, column: 12, scope: !541)
!578 = !DILocation(line: 165, column: 23, scope: !541)
!579 = !DILocation(line: 178, column: 11, scope: !541)
!580 = !DILocation(line: 180, column: 11, scope: !581)
!581 = distinct !DILexicalBlock(scope: !582, file: !3, line: 179, column: 9)
!582 = distinct !DILexicalBlock(scope: !541, file: !3, line: 178, column: 11)
!583 = !DILocation(line: 180, column: 28, scope: !581)
!584 = !DILocation(line: 181, column: 11, scope: !581)
!585 = !DILocation(line: 186, column: 11, scope: !586)
!586 = distinct !DILexicalBlock(scope: !587, file: !3, line: 185, column: 9)
!587 = distinct !DILexicalBlock(scope: !541, file: !3, line: 184, column: 11)
!588 = !DILocation(line: 186, column: 28, scope: !586)
!589 = !DILocation(line: 187, column: 11, scope: !586)
!590 = !DILocation(line: 190, column: 11, scope: !541)
!591 = !DILocation(line: 158, column: 18, scope: !524)
!592 = !DILocation(line: 192, column: 20, scope: !593)
!593 = distinct !DILexicalBlock(scope: !594, file: !3, line: 191, column: 9)
!594 = distinct !DILexicalBlock(scope: !541, file: !3, line: 190, column: 11)
!595 = !DILocation(line: 194, column: 9, scope: !593)
!596 = !DILocation(line: 196, column: 28, scope: !541)
!597 = !DILocation(line: 196, column: 38, scope: !541)
!598 = !DILocation(line: 196, column: 69, scope: !541)
!599 = !DILocation(line: 196, column: 15, scope: !541)
!600 = !DILocation(line: 164, column: 23, scope: !541)
!601 = !DILocation(line: 199, column: 11, scope: !541)
!602 = !DILocation(line: 201, column: 18, scope: !603)
!603 = distinct !DILexicalBlock(scope: !604, file: !3, line: 200, column: 9)
!604 = distinct !DILexicalBlock(scope: !541, file: !3, line: 199, column: 11)
!605 = !DILocation(line: 202, column: 24, scope: !603)
!606 = !DILocation(line: 203, column: 11, scope: !603)
!607 = !DILocation(line: 203, column: 28, scope: !603)
!608 = !DILocation(line: 204, column: 11, scope: !603)
!609 = !DILocation(line: 208, column: 15, scope: !610)
!610 = distinct !DILexicalBlock(scope: !611, file: !3, line: 207, column: 9)
!611 = distinct !DILexicalBlock(scope: !604, file: !3, line: 206, column: 16)
!612 = !DILocation(line: 211, column: 15, scope: !613)
!613 = distinct !DILexicalBlock(scope: !614, file: !3, line: 209, column: 13)
!614 = distinct !DILexicalBlock(scope: !610, file: !3, line: 208, column: 15)
!615 = !DILocation(line: 211, column: 32, scope: !613)
!616 = !DILocation(line: 212, column: 15, scope: !613)
!617 = !DILocation(line: 221, column: 32, scope: !610)
!618 = !DILocation(line: 221, column: 42, scope: !610)
!619 = !DILocation(line: 222, column: 55, scope: !610)
!620 = !DILocation(line: 221, column: 19, scope: !610)
!621 = !DILocation(line: 226, column: 15, scope: !622)
!622 = distinct !DILexicalBlock(scope: !610, file: !3, line: 226, column: 15)
!623 = !DILocation(line: 226, column: 32, scope: !622)
!624 = !DILocation(line: 226, column: 15, scope: !610)
!625 = !DILocation(line: 228, column: 15, scope: !626)
!626 = distinct !DILexicalBlock(scope: !622, file: !3, line: 227, column: 13)
!627 = !DILocation(line: 228, column: 32, scope: !626)
!628 = !DILocation(line: 229, column: 15, scope: !626)
!629 = !DILocation(line: 232, column: 15, scope: !610)
!630 = !DILocation(line: 233, column: 9, scope: !610)
!631 = !DILocation(line: 0, scope: !610)
!632 = !DILocation(line: 0, scope: !524)
!633 = !DILocation(line: 237, column: 1, scope: !524)
!634 = distinct !DISubprogram(name: "ucs_based_conversion_get_state", scope: !3, file: !3, line: 255, type: !324, isLocal: true, isDefinition: true, scopeLine: 259, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !635)
!635 = !{!636, !637, !638, !639, !640}
!636 = !DILocalVariable(name: "data", arg: 1, scope: !634, file: !3, line: 255, type: !25)
!637 = !DILocalVariable(name: "state", arg: 2, scope: !634, file: !3, line: 255, type: !261)
!638 = !DILocalVariable(name: "direction", arg: 3, scope: !634, file: !3, line: 255, type: !31)
!639 = !DILocalVariable(name: "uc", scope: !634, file: !3, line: 260, type: !6)
!640 = !DILocalVariable(name: "nullstate", scope: !634, file: !3, line: 261, type: !262)
!641 = !DILocation(line: 255, column: 1, scope: !634)
!642 = !DILocation(line: 263, column: 17, scope: !643)
!643 = distinct !DILexicalBlock(scope: !634, file: !3, line: 263, column: 7)
!644 = !DILocation(line: 263, column: 7, scope: !634)
!645 = !DILocation(line: 260, column: 27, scope: !634)
!646 = !DILocation(line: 265, column: 22, scope: !647)
!647 = distinct !DILexicalBlock(scope: !648, file: !3, line: 265, column: 11)
!648 = distinct !DILexicalBlock(scope: !643, file: !3, line: 264, column: 5)
!649 = !DILocation(line: 265, column: 32, scope: !647)
!650 = !{!451, !374, i64 24}
!651 = !DILocation(line: 265, column: 42, scope: !647)
!652 = !DILocation(line: 265, column: 11, scope: !648)
!653 = !DILocation(line: 266, column: 52, scope: !647)
!654 = !DILocation(line: 266, column: 9, scope: !647)
!655 = !DILocation(line: 268, column: 18, scope: !647)
!656 = !DILocation(line: 272, column: 15, scope: !657)
!657 = distinct !DILexicalBlock(scope: !658, file: !3, line: 272, column: 11)
!658 = distinct !DILexicalBlock(scope: !643, file: !3, line: 271, column: 5)
!659 = !DILocation(line: 272, column: 24, scope: !657)
!660 = !DILocation(line: 272, column: 34, scope: !657)
!661 = !DILocation(line: 272, column: 44, scope: !657)
!662 = !DILocation(line: 272, column: 11, scope: !658)
!663 = !DILocation(line: 273, column: 56, scope: !657)
!664 = !DILocation(line: 273, column: 9, scope: !657)
!665 = !DILocation(line: 275, column: 18, scope: !657)
!666 = !DILocation(line: 279, column: 1, scope: !634)
!667 = distinct !DISubprogram(name: "ucs_based_conversion_set_state", scope: !3, file: !3, line: 283, type: !328, isLocal: true, isDefinition: true, scopeLine: 287, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !668)
!668 = !{!669, !670, !671, !672}
!669 = !DILocalVariable(name: "data", arg: 1, scope: !667, file: !3, line: 283, type: !25)
!670 = !DILocalVariable(name: "state", arg: 2, scope: !667, file: !3, line: 283, type: !261)
!671 = !DILocalVariable(name: "direction", arg: 3, scope: !667, file: !3, line: 283, type: !31)
!672 = !DILocalVariable(name: "uc", scope: !667, file: !3, line: 288, type: !6)
!673 = !DILocation(line: 283, column: 1, scope: !667)
!674 = !DILocation(line: 290, column: 17, scope: !675)
!675 = distinct !DILexicalBlock(scope: !667, file: !3, line: 290, column: 7)
!676 = !DILocation(line: 290, column: 7, scope: !667)
!677 = !DILocation(line: 288, column: 27, scope: !667)
!678 = !DILocation(line: 292, column: 22, scope: !679)
!679 = distinct !DILexicalBlock(scope: !680, file: !3, line: 292, column: 11)
!680 = distinct !DILexicalBlock(scope: !675, file: !3, line: 291, column: 5)
!681 = !DILocation(line: 292, column: 32, scope: !679)
!682 = !{!451, !374, i64 32}
!683 = !DILocation(line: 292, column: 42, scope: !679)
!684 = !DILocation(line: 292, column: 11, scope: !680)
!685 = !DILocation(line: 293, column: 59, scope: !679)
!686 = !DILocation(line: 293, column: 16, scope: !679)
!687 = !DILocation(line: 293, column: 9, scope: !679)
!688 = !DILocation(line: 297, column: 15, scope: !689)
!689 = distinct !DILexicalBlock(scope: !690, file: !3, line: 297, column: 11)
!690 = distinct !DILexicalBlock(scope: !675, file: !3, line: 296, column: 5)
!691 = !DILocation(line: 297, column: 24, scope: !689)
!692 = !DILocation(line: 297, column: 34, scope: !689)
!693 = !DILocation(line: 297, column: 44, scope: !689)
!694 = !DILocation(line: 297, column: 11, scope: !690)
!695 = !DILocation(line: 298, column: 63, scope: !689)
!696 = !DILocation(line: 298, column: 16, scope: !689)
!697 = !DILocation(line: 298, column: 9, scope: !689)
!698 = !DILocation(line: 0, scope: !689)
!699 = !DILocation(line: 302, column: 1, scope: !667)
!700 = distinct !DISubprogram(name: "ucs_based_conversion_get_mb_cur_max", scope: !3, file: !3, line: 241, type: !332, isLocal: true, isDefinition: true, scopeLine: 244, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !701)
!701 = !{!702, !703, !704}
!702 = !DILocalVariable(name: "data", arg: 1, scope: !700, file: !3, line: 241, type: !25)
!703 = !DILocalVariable(name: "direction", arg: 2, scope: !700, file: !3, line: 241, type: !31)
!704 = !DILocalVariable(name: "uc", scope: !700, file: !3, line: 245, type: !6)
!705 = !DILocation(line: 241, column: 1, scope: !700)
!706 = !DILocation(line: 247, column: 17, scope: !707)
!707 = distinct !DILexicalBlock(scope: !700, file: !3, line: 247, column: 7)
!708 = !DILocation(line: 247, column: 7, scope: !700)
!709 = !DILocation(line: 245, column: 27, scope: !700)
!710 = !DILocation(line: 248, column: 23, scope: !707)
!711 = !DILocation(line: 248, column: 33, scope: !707)
!712 = !{!451, !374, i64 16}
!713 = !DILocation(line: 248, column: 60, scope: !707)
!714 = !DILocation(line: 248, column: 12, scope: !707)
!715 = !DILocation(line: 248, column: 5, scope: !707)
!716 = !DILocation(line: 250, column: 16, scope: !707)
!717 = !DILocation(line: 250, column: 25, scope: !707)
!718 = !DILocation(line: 250, column: 35, scope: !707)
!719 = !DILocation(line: 250, column: 64, scope: !707)
!720 = !DILocation(line: 250, column: 12, scope: !707)
!721 = !DILocation(line: 250, column: 5, scope: !707)
!722 = !DILocation(line: 0, scope: !707)
!723 = !DILocation(line: 251, column: 1, scope: !700)
!724 = distinct !DISubprogram(name: "ucs_based_conversion_is_stateful", scope: !3, file: !3, line: 305, type: !332, isLocal: true, isDefinition: true, scopeLine: 308, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !725)
!725 = !{!726, !727, !728}
!726 = !DILocalVariable(name: "data", arg: 1, scope: !724, file: !3, line: 305, type: !25)
!727 = !DILocalVariable(name: "direction", arg: 2, scope: !724, file: !3, line: 305, type: !31)
!728 = !DILocalVariable(name: "uc", scope: !724, file: !3, line: 309, type: !6)
!729 = !DILocation(line: 305, column: 1, scope: !724)
!730 = !DILocation(line: 311, column: 17, scope: !731)
!731 = distinct !DILexicalBlock(scope: !724, file: !3, line: 311, column: 7)
!732 = !DILocation(line: 311, column: 7, scope: !724)
!733 = !DILocation(line: 309, column: 27, scope: !724)
!734 = !DILocation(line: 313, column: 22, scope: !735)
!735 = distinct !DILexicalBlock(scope: !736, file: !3, line: 313, column: 11)
!736 = distinct !DILexicalBlock(scope: !731, file: !3, line: 312, column: 5)
!737 = !DILocation(line: 313, column: 32, scope: !735)
!738 = !{!451, !374, i64 40}
!739 = !DILocation(line: 313, column: 44, scope: !735)
!740 = !DILocation(line: 313, column: 11, scope: !736)
!741 = !DILocation(line: 314, column: 61, scope: !735)
!742 = !DILocation(line: 314, column: 16, scope: !735)
!743 = !DILocation(line: 314, column: 9, scope: !735)
!744 = !DILocation(line: 318, column: 15, scope: !745)
!745 = distinct !DILexicalBlock(scope: !746, file: !3, line: 318, column: 11)
!746 = distinct !DILexicalBlock(scope: !731, file: !3, line: 317, column: 5)
!747 = !DILocation(line: 318, column: 24, scope: !745)
!748 = !DILocation(line: 318, column: 34, scope: !745)
!749 = !DILocation(line: 318, column: 46, scope: !745)
!750 = !DILocation(line: 318, column: 11, scope: !746)
!751 = !DILocation(line: 319, column: 65, scope: !745)
!752 = !DILocation(line: 319, column: 16, scope: !745)
!753 = !DILocation(line: 319, column: 9, scope: !745)
!754 = !DILocation(line: 0, scope: !745)
!755 = !DILocation(line: 323, column: 1, scope: !724)
