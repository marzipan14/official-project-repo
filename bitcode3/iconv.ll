; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/iconv/lib/iconv.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/iconv/lib/iconv.c"
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

@_iconv_null_conversion_handlers = external dso_local constant %struct.iconv_conversion_handlers_t, align 8
@_iconv_ucs_conversion_handlers = external dso_local constant %struct.iconv_conversion_handlers_t, align 8

; Function Attrs: noredzone nounwind
define dso_local i8* @iconv_open(i8*, i8*) local_unnamed_addr #0 !dbg !281 {
  %3 = tail call %struct._reent* @__getreent() #4, !dbg !288
  %4 = tail call i8* @_iconv_open_r(%struct._reent* %3, i8* %0, i8* %1) #5, !dbg !289
  ret i8* %4, !dbg !290
}

; Function Attrs: noredzone nounwind
define dso_local i8* @_iconv_open_r(%struct._reent*, i8*, i8*) local_unnamed_addr #0 !dbg !291 {
  %4 = icmp eq i8* %1, null, !dbg !300
  %5 = icmp eq i8* %2, null, !dbg !302
  %6 = or i1 %4, %5, !dbg !303
  br i1 %6, label %42, label %7, !dbg !303

; <label>:7:                                      ; preds = %3
  %8 = load i8, i8* %1, align 1, !dbg !304, !tbaa !305
  %9 = icmp eq i8 %8, 0, !dbg !308
  br i1 %9, label %42, label %10, !dbg !309

; <label>:10:                                     ; preds = %7
  %11 = load i8, i8* %2, align 1, !dbg !310, !tbaa !305
  %12 = icmp eq i8 %11, 0, !dbg !311
  br i1 %12, label %42, label %13, !dbg !312

; <label>:13:                                     ; preds = %10
  %14 = tail call i8* @_iconv_resolve_encoding_name(%struct._reent* %0, i8* nonnull %1) #4, !dbg !313
  %15 = icmp eq i8* %14, null, !dbg !315
  br i1 %15, label %42, label %16, !dbg !316

; <label>:16:                                     ; preds = %13
  %17 = tail call i8* @_iconv_resolve_encoding_name(%struct._reent* %0, i8* nonnull %2) #4, !dbg !317
  %18 = icmp eq i8* %17, null, !dbg !319
  br i1 %18, label %19, label %20, !dbg !320

; <label>:19:                                     ; preds = %16
  tail call void @free(i8* nonnull %14) #4, !dbg !321
  br label %42, !dbg !323

; <label>:20:                                     ; preds = %16
  %21 = tail call i8* @malloc(i64 16) #4, !dbg !324
  %22 = icmp eq i8* %21, null, !dbg !326
  br i1 %22, label %42, label %23, !dbg !328

; <label>:23:                                     ; preds = %20
  %24 = tail call i32 @strcmp(i8* nonnull %17, i8* nonnull %14) #4, !dbg !329
  %25 = icmp eq i32 %24, 0, !dbg !331
  %26 = bitcast i8* %21 to %struct.iconv_conversion_handlers_t**, !dbg !332
  br i1 %25, label %27, label %32, !dbg !334

; <label>:27:                                     ; preds = %23
  store %struct.iconv_conversion_handlers_t* @_iconv_null_conversion_handlers, %struct.iconv_conversion_handlers_t** %26, align 8, !dbg !335, !tbaa !337
  %28 = load i8* (%struct._reent*, i8*, i8*)*, i8* (%struct._reent*, i8*, i8*)** getelementptr inbounds (%struct.iconv_conversion_handlers_t, %struct.iconv_conversion_handlers_t* @_iconv_null_conversion_handlers, i64 0, i32 0), align 8, !dbg !340, !tbaa !341
  %29 = tail call i8* %28(%struct._reent* %0, i8* nonnull %14, i8* nonnull %17) #4, !dbg !343
  %30 = getelementptr inbounds i8, i8* %21, i64 8, !dbg !344
  %31 = bitcast i8* %30 to i8**, !dbg !344
  store i8* %29, i8** %31, align 8, !dbg !345, !tbaa !346
  br label %37, !dbg !347

; <label>:32:                                     ; preds = %23
  store %struct.iconv_conversion_handlers_t* @_iconv_ucs_conversion_handlers, %struct.iconv_conversion_handlers_t** %26, align 8, !dbg !348, !tbaa !337
  %33 = load i8* (%struct._reent*, i8*, i8*)*, i8* (%struct._reent*, i8*, i8*)** getelementptr inbounds (%struct.iconv_conversion_handlers_t, %struct.iconv_conversion_handlers_t* @_iconv_ucs_conversion_handlers, i64 0, i32 0), align 8, !dbg !349, !tbaa !341
  %34 = tail call i8* %33(%struct._reent* %0, i8* nonnull %14, i8* nonnull %17) #4, !dbg !350
  %35 = getelementptr inbounds i8, i8* %21, i64 8, !dbg !351
  %36 = bitcast i8* %35 to i8**, !dbg !351
  store i8* %34, i8** %36, align 8, !dbg !352, !tbaa !346
  br label %37

; <label>:37:                                     ; preds = %32, %27
  %38 = phi i8** [ %36, %32 ], [ %31, %27 ], !dbg !353
  tail call void @free(i8* nonnull %14) #4, !dbg !355
  tail call void @free(i8* nonnull %17) #4, !dbg !356
  %39 = load i8*, i8** %38, align 8, !dbg !353, !tbaa !346
  %40 = icmp eq i8* %39, null, !dbg !357
  br i1 %40, label %41, label %42, !dbg !358

; <label>:41:                                     ; preds = %37
  tail call void @free(i8* nonnull %21) #4, !dbg !359
  br label %42, !dbg !361

; <label>:42:                                     ; preds = %37, %20, %13, %3, %7, %10, %41, %19
  %43 = phi i8* [ inttoptr (i64 -1 to i8*), %19 ], [ inttoptr (i64 -1 to i8*), %41 ], [ inttoptr (i64 -1 to i8*), %10 ], [ inttoptr (i64 -1 to i8*), %7 ], [ inttoptr (i64 -1 to i8*), %3 ], [ inttoptr (i64 -1 to i8*), %13 ], [ inttoptr (i64 -1 to i8*), %20 ], [ %21, %37 ], !dbg !362
  ret i8* %43, !dbg !363
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i64 @iconv(i8*, i8** noalias, i64* noalias, i8** noalias, i64* noalias) local_unnamed_addr #0 !dbg !364 {
  %6 = tail call %struct._reent* @__getreent() #4, !dbg !377
  %7 = tail call i64 @_iconv_r(%struct._reent* %6, i8* %0, i8** %1, i64* %2, i8** %3, i64* %4) #5, !dbg !378
  ret i64 %7, !dbg !379
}

; Function Attrs: noredzone nounwind
define dso_local i64 @_iconv_r(%struct._reent*, i8*, i8**, i64*, i8**, i64*) local_unnamed_addr #0 !dbg !380 {
  %7 = alloca i64, align 8
  %8 = bitcast i64* %7 to %struct._mbstate_t*
  %9 = alloca i64, align 8
  %10 = bitcast i64* %9 to %struct._mbstate_t*
  %11 = ptrtoint i8* %1 to i64, !dbg !399
  switch i64 %11, label %12 [
    i64 -1, label %23
    i64 0, label %23
  ], !dbg !399

; <label>:12:                                     ; preds = %6
  %13 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !401
  %14 = bitcast i8* %13 to i8**, !dbg !401
  %15 = load i8*, i8** %14, align 8, !dbg !401, !tbaa !346
  %16 = icmp eq i8* %15, null, !dbg !402
  br i1 %16, label %23, label %17, !dbg !403

; <label>:17:                                     ; preds = %12
  %18 = bitcast i8* %1 to %struct.iconv_conversion_handlers_t**, !dbg !404
  %19 = load %struct.iconv_conversion_handlers_t*, %struct.iconv_conversion_handlers_t** %18, align 8, !dbg !404, !tbaa !337
  %20 = icmp eq %struct.iconv_conversion_handlers_t* %19, @_iconv_null_conversion_handlers, !dbg !405
  %21 = icmp eq %struct.iconv_conversion_handlers_t* %19, @_iconv_ucs_conversion_handlers, !dbg !406
  %22 = or i1 %20, %21, !dbg !407
  br i1 %22, label %25, label %23, !dbg !407

; <label>:23:                                     ; preds = %17, %6, %6, %12
  %24 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !408
  store i32 9, i32* %24, align 8, !dbg !410, !tbaa !411
  br label %105, !dbg !417

; <label>:25:                                     ; preds = %17
  %26 = icmp eq i8** %2, null, !dbg !418
  br i1 %26, label %30, label %27, !dbg !419

; <label>:27:                                     ; preds = %25
  %28 = load i8*, i8** %2, align 8, !dbg !420, !tbaa !421
  %29 = icmp eq i8* %28, null, !dbg !422
  br i1 %29, label %30, label %88, !dbg !423

; <label>:30:                                     ; preds = %27, %25
  %31 = bitcast i64* %7 to i8*, !dbg !424
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %31) #6, !dbg !424
  store i64 0, i64* %7, align 8, !dbg !425
  %32 = getelementptr inbounds %struct.iconv_conversion_handlers_t, %struct.iconv_conversion_handlers_t* %19, i64 0, i32 6, !dbg !426
  %33 = load i32 (i8*, i32)*, i32 (i8*, i32)** %32, align 8, !dbg !426, !tbaa !428
  %34 = tail call i32 %33(i8* nonnull %15, i32 1) #4, !dbg !429
  %35 = icmp eq i32 %34, 0, !dbg !429
  br i1 %35, label %86, label %36, !dbg !430

; <label>:36:                                     ; preds = %30
  %37 = icmp eq i8** %4, null, !dbg !431
  br i1 %37, label %41, label %38, !dbg !433

; <label>:38:                                     ; preds = %36
  %39 = load i8*, i8** %4, align 8, !dbg !434, !tbaa !421
  %40 = icmp eq i8* %39, null, !dbg !435
  br i1 %40, label %41, label %47, !dbg !436

; <label>:41:                                     ; preds = %38, %36
  %42 = load %struct.iconv_conversion_handlers_t*, %struct.iconv_conversion_handlers_t** %18, align 8, !dbg !437, !tbaa !337
  %43 = getelementptr inbounds %struct.iconv_conversion_handlers_t, %struct.iconv_conversion_handlers_t* %42, i64 0, i32 4, !dbg !439
  %44 = load i32 (i8*, %struct._mbstate_t*, i32)*, i32 (i8*, %struct._mbstate_t*, i32)** %43, align 8, !dbg !439, !tbaa !440
  %45 = load i8*, i8** %14, align 8, !dbg !441, !tbaa !346
  %46 = call i32 %44(i8* %45, %struct._mbstate_t* nonnull %8, i32 1) #4, !dbg !442
  br label %86, !dbg !443

; <label>:47:                                     ; preds = %38
  %48 = icmp eq i64* %5, null, !dbg !444
  br i1 %48, label %84, label %49, !dbg !445

; <label>:49:                                     ; preds = %47
  %50 = bitcast i64* %9 to i8*, !dbg !446
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %50) #6, !dbg !446
  store i64 0, i64* %9, align 8, !dbg !447
  %51 = load %struct.iconv_conversion_handlers_t*, %struct.iconv_conversion_handlers_t** %18, align 8, !dbg !448, !tbaa !337
  %52 = getelementptr inbounds %struct.iconv_conversion_handlers_t, %struct.iconv_conversion_handlers_t* %51, i64 0, i32 3, !dbg !449
  %53 = load void (i8*, %struct._mbstate_t*, i32)*, void (i8*, %struct._mbstate_t*, i32)** %52, align 8, !dbg !449, !tbaa !450
  %54 = load i8*, i8** %14, align 8, !dbg !451, !tbaa !346
  call void %53(i8* %54, %struct._mbstate_t* nonnull %10, i32 1) #4, !dbg !452
  %55 = load %struct.iconv_conversion_handlers_t*, %struct.iconv_conversion_handlers_t** %18, align 8, !dbg !453, !tbaa !337
  %56 = getelementptr inbounds %struct.iconv_conversion_handlers_t, %struct.iconv_conversion_handlers_t* %55, i64 0, i32 4, !dbg !454
  %57 = load i32 (i8*, %struct._mbstate_t*, i32)*, i32 (i8*, %struct._mbstate_t*, i32)** %56, align 8, !dbg !454, !tbaa !440
  %58 = load i8*, i8** %14, align 8, !dbg !455, !tbaa !346
  %59 = call i32 %57(i8* %58, %struct._mbstate_t* nonnull %8, i32 1) #4, !dbg !456
  %60 = load %struct.iconv_conversion_handlers_t*, %struct.iconv_conversion_handlers_t** %18, align 8, !dbg !457, !tbaa !337
  %61 = getelementptr inbounds %struct.iconv_conversion_handlers_t, %struct.iconv_conversion_handlers_t* %60, i64 0, i32 3, !dbg !458
  %62 = load void (i8*, %struct._mbstate_t*, i32)*, void (i8*, %struct._mbstate_t*, i32)** %61, align 8, !dbg !458, !tbaa !450
  %63 = load i8*, i8** %14, align 8, !dbg !459, !tbaa !346
  call void %62(i8* %63, %struct._mbstate_t* nonnull %8, i32 1) #4, !dbg !460
  %64 = load i64, i64* %5, align 8, !dbg !461, !tbaa !463
  %65 = bitcast i64* %7 to i32*, !dbg !465
  %66 = load i32, i32* %65, align 8, !dbg !465, !tbaa !466
  %67 = sext i32 %66 to i64, !dbg !468
  %68 = icmp ult i64 %64, %67, !dbg !469
  br i1 %68, label %78, label %69, !dbg !470

; <label>:69:                                     ; preds = %49
  %70 = load i8*, i8** %4, align 8, !dbg !471, !tbaa !421
  %71 = call i8* @memcpy(i8* %70, i8* nonnull %31, i64 %67) #4, !dbg !473
  %72 = load i32, i32* %65, align 8, !dbg !474, !tbaa !466
  %73 = load i8*, i8** %4, align 8, !dbg !475, !tbaa !421
  %74 = sext i32 %72 to i64, !dbg !475
  %75 = getelementptr inbounds i8, i8* %73, i64 %74, !dbg !475
  store i8* %75, i8** %4, align 8, !dbg !475, !tbaa !421
  %76 = load i64, i64* %5, align 8, !dbg !476, !tbaa !463
  %77 = sub i64 %76, %74, !dbg !476
  store i64 %77, i64* %5, align 8, !dbg !476, !tbaa !463
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %50) #6, !dbg !477
  br label %86

; <label>:78:                                     ; preds = %49
  %79 = load %struct.iconv_conversion_handlers_t*, %struct.iconv_conversion_handlers_t** %18, align 8, !dbg !478, !tbaa !337
  %80 = getelementptr inbounds %struct.iconv_conversion_handlers_t, %struct.iconv_conversion_handlers_t* %79, i64 0, i32 4, !dbg !479
  %81 = load i32 (i8*, %struct._mbstate_t*, i32)*, i32 (i8*, %struct._mbstate_t*, i32)** %80, align 8, !dbg !479, !tbaa !440
  %82 = load i8*, i8** %14, align 8, !dbg !480, !tbaa !346
  %83 = call i32 %81(i8* %82, %struct._mbstate_t* nonnull %10, i32 1) #4, !dbg !481
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %50) #6, !dbg !477
  br label %84

; <label>:84:                                     ; preds = %78, %47
  %85 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !482
  store i32 7, i32* %85, align 8, !dbg !483, !tbaa !411
  br label %86, !dbg !484

; <label>:86:                                     ; preds = %69, %30, %84, %41
  %87 = phi i64 [ 0, %41 ], [ -1, %84 ], [ 0, %30 ], [ 0, %69 ], !dbg !485
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %31) #6, !dbg !486
  br label %105

; <label>:88:                                     ; preds = %27
  %89 = load i64, i64* %3, align 8, !dbg !487, !tbaa !463
  %90 = icmp eq i64 %89, 0, !dbg !489
  br i1 %90, label %91, label %93, !dbg !490

; <label>:91:                                     ; preds = %88
  %92 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !491
  store i32 22, i32* %92, align 8, !dbg !493, !tbaa !411
  br label %105, !dbg !494

; <label>:93:                                     ; preds = %88
  %94 = load i64, i64* %5, align 8, !dbg !495, !tbaa !463
  %95 = icmp eq i64 %94, 0, !dbg !497
  br i1 %95, label %99, label %96, !dbg !498

; <label>:96:                                     ; preds = %93
  %97 = load i8*, i8** %4, align 8, !dbg !499, !tbaa !421
  %98 = icmp eq i8* %97, null, !dbg !500
  br i1 %98, label %99, label %101, !dbg !501

; <label>:99:                                     ; preds = %96, %93
  %100 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !502
  store i32 7, i32* %100, align 8, !dbg !504, !tbaa !411
  br label %105, !dbg !505

; <label>:101:                                    ; preds = %96
  %102 = getelementptr inbounds %struct.iconv_conversion_handlers_t, %struct.iconv_conversion_handlers_t* %19, i64 0, i32 2, !dbg !506
  %103 = load i64 (%struct._reent*, i8*, i8**, i64*, i8**, i64*, i32)*, i64 (%struct._reent*, i8*, i8**, i64*, i8**, i64*, i32)** %102, align 8, !dbg !506, !tbaa !507
  %104 = tail call i64 %103(%struct._reent* %0, i8* nonnull %15, i8** nonnull %2, i64* nonnull %3, i8** nonnull %4, i64* nonnull %5, i32 0) #4, !dbg !508
  br label %105, !dbg !509

; <label>:105:                                    ; preds = %101, %99, %91, %86, %23
  %106 = phi i64 [ -1, %23 ], [ %87, %86 ], [ -1, %91 ], [ -1, %99 ], [ %104, %101 ], !dbg !510
  ret i64 %106, !dbg !511
}

; Function Attrs: noredzone nounwind
define dso_local i32 @iconv_close(i8*) local_unnamed_addr #0 !dbg !512 {
  %2 = tail call %struct._reent* @__getreent() #4, !dbg !518
  %3 = ptrtoint i8* %0 to i64, !dbg !530
  switch i64 %3, label %4 [
    i64 -1, label %15
    i64 0, label %15
  ], !dbg !530

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !532
  %6 = bitcast i8* %5 to i8**, !dbg !532
  %7 = load i8*, i8** %6, align 8, !dbg !532, !tbaa !346
  %8 = icmp eq i8* %7, null, !dbg !533
  br i1 %8, label %15, label %9, !dbg !534

; <label>:9:                                      ; preds = %4
  %10 = bitcast i8* %0 to %struct.iconv_conversion_handlers_t**, !dbg !535
  %11 = load %struct.iconv_conversion_handlers_t*, %struct.iconv_conversion_handlers_t** %10, align 8, !dbg !535, !tbaa !337
  %12 = icmp eq %struct.iconv_conversion_handlers_t* %11, @_iconv_null_conversion_handlers, !dbg !536
  %13 = icmp eq %struct.iconv_conversion_handlers_t* %11, @_iconv_ucs_conversion_handlers, !dbg !537
  %14 = or i1 %12, %13, !dbg !538
  br i1 %14, label %17, label %15, !dbg !538

; <label>:15:                                     ; preds = %9, %4, %1, %1
  %16 = getelementptr inbounds %struct._reent, %struct._reent* %2, i64 0, i32 0, !dbg !539
  store i32 9, i32* %16, align 8, !dbg !541, !tbaa !411
  br label %22, !dbg !542

; <label>:17:                                     ; preds = %9
  %18 = getelementptr inbounds %struct.iconv_conversion_handlers_t, %struct.iconv_conversion_handlers_t* %11, i64 0, i32 1, !dbg !543
  %19 = load i64 (%struct._reent*, i8*)*, i64 (%struct._reent*, i8*)** %18, align 8, !dbg !543, !tbaa !544
  %20 = tail call i64 %19(%struct._reent* %2, i8* nonnull %7) #4, !dbg !545
  %21 = trunc i64 %20 to i32, !dbg !546
  tail call void @free(i8* nonnull %0) #4, !dbg !548
  br label %22, !dbg !549

; <label>:22:                                     ; preds = %15, %17
  %23 = phi i32 [ -1, %15 ], [ %21, %17 ], !dbg !550
  ret i32 %23, !dbg !551
}

; Function Attrs: noredzone nounwind
define dso_local i32 @_iconv_close_r(%struct._reent*, i8*) local_unnamed_addr #0 !dbg !520 {
  %3 = ptrtoint i8* %1 to i64, !dbg !554
  switch i64 %3, label %4 [
    i64 -1, label %15
    i64 0, label %15
  ], !dbg !554

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !555
  %6 = bitcast i8* %5 to i8**, !dbg !555
  %7 = load i8*, i8** %6, align 8, !dbg !555, !tbaa !346
  %8 = icmp eq i8* %7, null, !dbg !556
  br i1 %8, label %15, label %9, !dbg !557

; <label>:9:                                      ; preds = %4
  %10 = bitcast i8* %1 to %struct.iconv_conversion_handlers_t**, !dbg !558
  %11 = load %struct.iconv_conversion_handlers_t*, %struct.iconv_conversion_handlers_t** %10, align 8, !dbg !558, !tbaa !337
  %12 = icmp eq %struct.iconv_conversion_handlers_t* %11, @_iconv_null_conversion_handlers, !dbg !559
  %13 = icmp eq %struct.iconv_conversion_handlers_t* %11, @_iconv_ucs_conversion_handlers, !dbg !560
  %14 = or i1 %12, %13, !dbg !561
  br i1 %14, label %17, label %15, !dbg !561

; <label>:15:                                     ; preds = %9, %2, %2, %4
  %16 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !562
  store i32 9, i32* %16, align 8, !dbg !563, !tbaa !411
  br label %22, !dbg !564

; <label>:17:                                     ; preds = %9
  %18 = getelementptr inbounds %struct.iconv_conversion_handlers_t, %struct.iconv_conversion_handlers_t* %11, i64 0, i32 1, !dbg !565
  %19 = load i64 (%struct._reent*, i8*)*, i64 (%struct._reent*, i8*)** %18, align 8, !dbg !565, !tbaa !544
  %20 = tail call i64 %19(%struct._reent* %0, i8* nonnull %7) #4, !dbg !566
  %21 = trunc i64 %20 to i32, !dbg !567
  tail call void @free(i8* nonnull %1) #4, !dbg !569
  br label %22, !dbg !570

; <label>:22:                                     ; preds = %17, %15
  %23 = phi i32 [ -1, %15 ], [ %21, %17 ], !dbg !571
  ret i32 %23, !dbg !572
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i8* @_iconv_resolve_encoding_name(%struct._reent*, i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @malloc(i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nobuiltin noredzone nounwind }
attributes #5 = { nobuiltin noredzone }
attributes #6 = { nounwind }

!llvm.module.flags = !{!277, !278, !279}
!llvm.ident = !{!280}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/iconv/lib/iconv.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !8, !9, !5, !13, !247, !255, !259, !33}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "iconv_t", file: !10, line: 35, baseType: !11)
!10 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/iconv.h", directory: "/root/.unikraft/apps/redis/build")
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "_iconv_t", file: !12, line: 180, baseType: !8)
!12 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "iconv_conversion_t", file: !15, line: 209, baseType: !16)
!15 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/iconv/lib/conv.h", directory: "/root/.unikraft/apps/redis/build")
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !15, line: 199, size: 128, elements: !17)
!17 = !{!18, !276}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "handlers", scope: !16, file: !15, line: 202, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "iconv_conversion_handlers_t", file: !15, line: 191, baseType: !22)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !15, line: 48, size: 448, elements: !23)
!23 = !{!24, !243, !251, !260, !267, !271, !275}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !22, file: !15, line: 66, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DISubroutineType(types: !27)
!27 = !{!8, !28, !5, !5}
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !30, line: 569, size: 14912, elements: !31)
!30 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!31 = !{!32, !34, !111, !112, !113, !114, !118, !119, !122, !123, !127, !139, !140, !141, !143, !144, !145, !207, !228, !229, !234, !241}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !29, file: !30, line: 571, baseType: !33, size: 32)
!33 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !29, file: !30, line: 576, baseType: !35, size: 64, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !30, line: 287, baseType: !37)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !30, line: 181, size: 1408, elements: !38)
!38 = !{!39, !42, !43, !44, !46, !47, !52, !53, !54, !61, !65, !70, !74, !75, !76, !77, !81, !85, !86, !87, !89, !90, !94, !110}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !37, file: !30, line: 182, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !37, file: !30, line: 183, baseType: !33, size: 32, offset: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !37, file: !30, line: 184, baseType: !33, size: 32, offset: 96)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !37, file: !30, line: 185, baseType: !45, size: 16, offset: 128)
!45 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !37, file: !30, line: 186, baseType: !45, size: 16, offset: 144)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !37, file: !30, line: 187, baseType: !48, size: 128, offset: 192)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !30, line: 117, size: 128, elements: !49)
!49 = !{!50, !51}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !48, file: !30, line: 118, baseType: !40, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !48, file: !30, line: 119, baseType: !33, size: 32, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !37, file: !30, line: 188, baseType: !33, size: 32, offset: 320)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !37, file: !30, line: 195, baseType: !8, size: 64, offset: 384)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !37, file: !30, line: 197, baseType: !55, size: 64, offset: 448)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DISubroutineType(types: !57)
!57 = !{!58, !28, !8, !60, !33}
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !12, line: 145, baseType: !59)
!59 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !37, file: !30, line: 199, baseType: !62, size: 64, offset: 512)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DISubroutineType(types: !64)
!64 = !{!58, !28, !8, !5, !33}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !37, file: !30, line: 202, baseType: !66, size: 64, offset: 576)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DISubroutineType(types: !68)
!68 = !{!69, !28, !8, !69, !33}
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !12, line: 114, baseType: !59)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !37, file: !30, line: 203, baseType: !71, size: 64, offset: 640)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DISubroutineType(types: !73)
!73 = !{!33, !28, !8}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !37, file: !30, line: 206, baseType: !48, size: 128, offset: 704)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !37, file: !30, line: 207, baseType: !40, size: 64, offset: 832)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !37, file: !30, line: 208, baseType: !33, size: 32, offset: 896)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !37, file: !30, line: 211, baseType: !78, size: 24, offset: 928)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 24, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 3)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !37, file: !30, line: 212, baseType: !82, size: 8, offset: 952)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 8, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 1)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !37, file: !30, line: 215, baseType: !48, size: 128, offset: 960)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !37, file: !30, line: 218, baseType: !33, size: 32, offset: 1088)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !37, file: !30, line: 219, baseType: !88, size: 64, offset: 1152)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !12, line: 44, baseType: !59)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !37, file: !30, line: 222, baseType: !28, size: 64, offset: 1216)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !37, file: !30, line: 226, baseType: !91, size: 32, offset: 1280)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !12, line: 175, baseType: !92)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !93, line: 12, baseType: !33)
!93 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !37, file: !30, line: 228, baseType: !95, size: 64, offset: 1312)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !12, line: 171, baseType: !96)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 163, size: 64, elements: !97)
!97 = !{!98, !99}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !96, file: !12, line: 165, baseType: !33, size: 32)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !96, file: !12, line: 170, baseType: !100, size: 32, offset: 32)
!100 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !96, file: !12, line: 166, size: 32, elements: !101)
!101 = !{!102, !106}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !100, file: !12, line: 168, baseType: !103, size: 32)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !104, line: 124, baseType: !105)
!104 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!105 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !100, file: !12, line: 169, baseType: !107, size: 32)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 32, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 4)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !37, file: !30, line: 229, baseType: !33, size: 32, offset: 1376)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !29, file: !30, line: 576, baseType: !35, size: 64, offset: 128)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !29, file: !30, line: 576, baseType: !35, size: 64, offset: 192)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !29, file: !30, line: 578, baseType: !33, size: 32, offset: 256)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !29, file: !30, line: 579, baseType: !115, size: 200, offset: 288)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 200, elements: !116)
!116 = !{!117}
!117 = !DISubrange(count: 25)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !29, file: !30, line: 582, baseType: !33, size: 32, offset: 512)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !29, file: !30, line: 583, baseType: !120, size: 64, offset: 576)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !30, line: 40, flags: DIFlagFwdDecl)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !29, file: !30, line: 585, baseType: !33, size: 32, offset: 640)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !29, file: !30, line: 587, baseType: !124, size: 64, offset: 704)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DISubroutineType(types: !126)
!126 = !{null, !28}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !29, file: !30, line: 590, baseType: !128, size: 64, offset: 768)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !30, line: 47, size: 256, elements: !130)
!130 = !{!131, !132, !133, !134, !135, !136}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !129, file: !30, line: 49, baseType: !128, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !129, file: !30, line: 50, baseType: !33, size: 32, offset: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !129, file: !30, line: 50, baseType: !33, size: 32, offset: 96)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !129, file: !30, line: 50, baseType: !33, size: 32, offset: 128)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !129, file: !30, line: 50, baseType: !33, size: 32, offset: 160)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !129, file: !30, line: 51, baseType: !137, size: 32, offset: 192)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 32, elements: !83)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !30, line: 25, baseType: !105)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !29, file: !30, line: 591, baseType: !33, size: 32, offset: 832)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !29, file: !30, line: 592, baseType: !128, size: 64, offset: 896)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !29, file: !30, line: 593, baseType: !142, size: 64, offset: 960)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !29, file: !30, line: 596, baseType: !33, size: 32, offset: 1024)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !29, file: !30, line: 597, baseType: !60, size: 64, offset: 1088)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !29, file: !30, line: 632, baseType: !146, size: 2880, offset: 1152)
!146 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !29, file: !30, line: 599, size: 2880, elements: !147)
!147 = !{!148, !198}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !146, file: !30, line: 622, baseType: !149, size: 1728)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !146, file: !30, line: 601, size: 1728, elements: !150)
!150 = !{!151, !152, !153, !157, !169, !170, !172, !180, !181, !182, !183, !187, !191, !192, !193, !194, !195, !196, !197}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !149, file: !30, line: 603, baseType: !105, size: 32)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !149, file: !30, line: 604, baseType: !60, size: 64, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !149, file: !30, line: 605, baseType: !154, size: 208, offset: 128)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 208, elements: !155)
!155 = !{!156}
!156 = !DISubrange(count: 26)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !149, file: !30, line: 606, baseType: !158, size: 288, offset: 352)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !30, line: 55, size: 288, elements: !159)
!159 = !{!160, !161, !162, !163, !164, !165, !166, !167, !168}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !158, file: !30, line: 57, baseType: !33, size: 32)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !158, file: !30, line: 58, baseType: !33, size: 32, offset: 32)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !158, file: !30, line: 59, baseType: !33, size: 32, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !158, file: !30, line: 60, baseType: !33, size: 32, offset: 96)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !158, file: !30, line: 61, baseType: !33, size: 32, offset: 128)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !158, file: !30, line: 62, baseType: !33, size: 32, offset: 160)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !158, file: !30, line: 63, baseType: !33, size: 32, offset: 192)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !158, file: !30, line: 64, baseType: !33, size: 32, offset: 224)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !158, file: !30, line: 65, baseType: !33, size: 32, offset: 256)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !149, file: !30, line: 607, baseType: !33, size: 32, offset: 640)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !149, file: !30, line: 608, baseType: !171, size: 64, offset: 704)
!171 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !149, file: !30, line: 609, baseType: !173, size: 112, offset: 768)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !30, line: 319, size: 112, elements: !174)
!174 = !{!175, !178, !179}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !173, file: !30, line: 320, baseType: !176, size: 48)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 48, elements: !79)
!177 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !173, file: !30, line: 321, baseType: !176, size: 48, offset: 48)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !173, file: !30, line: 322, baseType: !177, size: 16, offset: 96)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !149, file: !30, line: 610, baseType: !95, size: 64, offset: 896)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !149, file: !30, line: 611, baseType: !95, size: 64, offset: 960)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !149, file: !30, line: 612, baseType: !95, size: 64, offset: 1024)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !149, file: !30, line: 613, baseType: !184, size: 64, offset: 1088)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !185)
!185 = !{!186}
!186 = !DISubrange(count: 8)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !149, file: !30, line: 614, baseType: !188, size: 192, offset: 1152)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 192, elements: !189)
!189 = !{!190}
!190 = !DISubrange(count: 24)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !149, file: !30, line: 615, baseType: !33, size: 32, offset: 1344)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !149, file: !30, line: 616, baseType: !95, size: 64, offset: 1376)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !149, file: !30, line: 617, baseType: !95, size: 64, offset: 1440)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !149, file: !30, line: 618, baseType: !95, size: 64, offset: 1504)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !149, file: !30, line: 619, baseType: !95, size: 64, offset: 1568)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !149, file: !30, line: 620, baseType: !95, size: 64, offset: 1632)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !149, file: !30, line: 621, baseType: !33, size: 32, offset: 1696)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !146, file: !30, line: 631, baseType: !199, size: 2880)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !146, file: !30, line: 626, size: 2880, elements: !200)
!200 = !{!201, !205}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !199, file: !30, line: 629, baseType: !202, size: 1920)
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 1920, elements: !203)
!203 = !{!204}
!204 = !DISubrange(count: 30)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !199, file: !30, line: 630, baseType: !206, size: 960, offset: 1920)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 960, elements: !203)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !29, file: !30, line: 636, baseType: !208, size: 64, offset: 4032)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !30, line: 93, size: 6336, elements: !210)
!210 = !{!211, !212, !213, !220}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !209, file: !30, line: 94, baseType: !208, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !209, file: !30, line: 95, baseType: !33, size: 32, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !209, file: !30, line: 97, baseType: !214, size: 2048, offset: 128)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 2048, elements: !218)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{null}
!218 = !{!219}
!219 = !DISubrange(count: 32)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !209, file: !30, line: 98, baseType: !221, size: 4160, offset: 2176)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !30, line: 74, size: 4160, elements: !222)
!222 = !{!223, !225, !226, !227}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !221, file: !30, line: 75, baseType: !224, size: 2048)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2048, elements: !218)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !221, file: !30, line: 76, baseType: !224, size: 2048, offset: 2048)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !221, file: !30, line: 78, baseType: !138, size: 32, offset: 4096)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !221, file: !30, line: 81, baseType: !138, size: 32, offset: 4128)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !29, file: !30, line: 637, baseType: !209, size: 6336, offset: 4096)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !29, file: !30, line: 641, baseType: !230, size: 64, offset: 10432)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DISubroutineType(types: !233)
!233 = !{null, !33}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !29, file: !30, line: 646, baseType: !235, size: 192, offset: 10496)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !30, line: 291, size: 192, elements: !236)
!236 = !{!237, !239, !240}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !235, file: !30, line: 293, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !235, file: !30, line: 294, baseType: !33, size: 32, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !235, file: !30, line: 295, baseType: !35, size: 64, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !29, file: !30, line: 648, baseType: !242, size: 4224, offset: 10688)
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 4224, elements: !79)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !22, file: !15, line: 84, baseType: !244, size: 64, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{!247, !28, !8}
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !248, line: 40, baseType: !249)
!248 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !12, line: 129, baseType: !250)
!250 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "convert", scope: !22, file: !15, line: 117, baseType: !252, size: 64, offset: 128)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DISubroutineType(types: !254)
!254 = !{!247, !28, !8, !255, !258, !259, !258, !33}
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !22, file: !15, line: 138, baseType: !261, size: 64, offset: 192)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DISubroutineType(types: !263)
!263 = !{null, !8, !264, !33}
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !266, line: 86, baseType: !95)
!266 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/wchar.h", directory: "/root/.unikraft/apps/redis/build")
!267 = !DIDerivedType(tag: DW_TAG_member, name: "set_state", scope: !22, file: !15, line: 157, baseType: !268, size: 64, offset: 256)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DISubroutineType(types: !270)
!270 = !{!33, !8, !264, !33}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "get_mb_cur_max", scope: !22, file: !15, line: 173, baseType: !272, size: 64, offset: 320)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DISubroutineType(types: !274)
!274 = !{!33, !8, !33}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "is_stateful", scope: !22, file: !15, line: 188, baseType: !272, size: 64, offset: 384)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !16, file: !15, line: 208, baseType: !8, size: 64, offset: 64)
!277 = !{i32 2, !"Dwarf Version", i32 4}
!278 = !{i32 2, !"Debug Info Version", i32 3}
!279 = !{i32 1, !"wchar_size", i32 4}
!280 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!281 = distinct !DISubprogram(name: "iconv_open", scope: !1, file: !1, line: 161, type: !282, isLocal: false, isDefinition: true, scopeLine: 164, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !284)
!282 = !DISubroutineType(types: !283)
!283 = !{!9, !5, !5}
!284 = !{!285, !286}
!285 = !DILocalVariable(name: "to", arg: 1, scope: !281, file: !1, line: 161, type: !5)
!286 = !DILocalVariable(name: "from", arg: 2, scope: !281, file: !1, line: 161, type: !5)
!287 = !DILocation(line: 161, column: 1, scope: !281)
!288 = !DILocation(line: 165, column: 25, scope: !281)
!289 = !DILocation(line: 165, column: 10, scope: !281)
!290 = !DILocation(line: 165, column: 3, scope: !281)
!291 = distinct !DISubprogram(name: "_iconv_open_r", scope: !1, file: !1, line: 191, type: !292, isLocal: false, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !294)
!292 = !DISubroutineType(types: !293)
!293 = !{!9, !28, !5, !5}
!294 = !{!295, !296, !297, !298}
!295 = !DILocalVariable(name: "rptr", arg: 1, scope: !291, file: !1, line: 191, type: !28)
!296 = !DILocalVariable(name: "to", arg: 2, scope: !291, file: !1, line: 191, type: !5)
!297 = !DILocalVariable(name: "from", arg: 3, scope: !291, file: !1, line: 191, type: !5)
!298 = !DILocalVariable(name: "ic", scope: !291, file: !1, line: 196, type: !13)
!299 = !DILocation(line: 191, column: 1, scope: !291)
!300 = !DILocation(line: 198, column: 10, scope: !301)
!301 = distinct !DILexicalBlock(scope: !291, file: !1, line: 198, column: 7)
!302 = !DILocation(line: 198, column: 26, scope: !301)
!303 = !DILocation(line: 198, column: 18, scope: !301)
!304 = !DILocation(line: 198, column: 37, scope: !301)
!305 = !{!306, !306, i64 0}
!306 = !{!"omnipotent char", !307, i64 0}
!307 = !{!"Simple C/C++ TBAA"}
!308 = !DILocation(line: 198, column: 41, scope: !301)
!309 = !DILocation(line: 198, column: 49, scope: !301)
!310 = !DILocation(line: 198, column: 52, scope: !301)
!311 = !DILocation(line: 198, column: 58, scope: !301)
!312 = !DILocation(line: 198, column: 7, scope: !291)
!313 = !DILocation(line: 201, column: 28, scope: !314)
!314 = distinct !DILexicalBlock(scope: !291, file: !1, line: 201, column: 7)
!315 = !DILocation(line: 201, column: 69, scope: !314)
!316 = !DILocation(line: 201, column: 7, scope: !291)
!317 = !DILocation(line: 204, column: 30, scope: !318)
!318 = distinct !DILexicalBlock(scope: !291, file: !1, line: 204, column: 7)
!319 = !DILocation(line: 204, column: 73, scope: !318)
!320 = !DILocation(line: 204, column: 7, scope: !291)
!321 = !DILocation(line: 206, column: 7, scope: !322)
!322 = distinct !DILexicalBlock(scope: !318, file: !1, line: 205, column: 5)
!323 = !DILocation(line: 207, column: 7, scope: !322)
!324 = !DILocation(line: 210, column: 30, scope: !291)
!325 = !DILocation(line: 196, column: 23, scope: !291)
!326 = !DILocation(line: 211, column: 10, scope: !327)
!327 = distinct !DILexicalBlock(scope: !291, file: !1, line: 211, column: 7)
!328 = !DILocation(line: 211, column: 7, scope: !291)
!329 = !DILocation(line: 215, column: 7, scope: !330)
!330 = distinct !DILexicalBlock(scope: !291, file: !1, line: 215, column: 7)
!331 = !DILocation(line: 215, column: 25, scope: !330)
!332 = !DILocation(line: 0, scope: !333)
!333 = distinct !DILexicalBlock(scope: !330, file: !1, line: 222, column: 5)
!334 = !DILocation(line: 215, column: 7, scope: !291)
!335 = !DILocation(line: 218, column: 20, scope: !336)
!336 = distinct !DILexicalBlock(scope: !330, file: !1, line: 216, column: 5)
!337 = !{!338, !339, i64 0}
!338 = !{!"", !339, i64 0, !339, i64 8}
!339 = !{!"any pointer", !306, i64 0}
!340 = !DILocation(line: 219, column: 32, scope: !336)
!341 = !{!342, !339, i64 0}
!342 = !{!"", !339, i64 0, !339, i64 8, !339, i64 16, !339, i64 24, !339, i64 32, !339, i64 40, !339, i64 48}
!343 = !DILocation(line: 219, column: 18, scope: !336)
!344 = !DILocation(line: 219, column: 11, scope: !336)
!345 = !DILocation(line: 219, column: 16, scope: !336)
!346 = !{!338, !339, i64 8}
!347 = !DILocation(line: 220, column: 5, scope: !336)
!348 = !DILocation(line: 224, column: 20, scope: !333)
!349 = !DILocation(line: 225, column: 32, scope: !333)
!350 = !DILocation(line: 225, column: 18, scope: !333)
!351 = !DILocation(line: 225, column: 11, scope: !333)
!352 = !DILocation(line: 225, column: 16, scope: !333)
!353 = !DILocation(line: 231, column: 11, scope: !354)
!354 = distinct !DILexicalBlock(scope: !291, file: !1, line: 231, column: 7)
!355 = !DILocation(line: 228, column: 3, scope: !291)
!356 = !DILocation(line: 229, column: 3, scope: !291)
!357 = !DILocation(line: 231, column: 16, scope: !354)
!358 = !DILocation(line: 231, column: 7, scope: !291)
!359 = !DILocation(line: 233, column: 7, scope: !360)
!360 = distinct !DILexicalBlock(scope: !354, file: !1, line: 232, column: 5)
!361 = !DILocation(line: 234, column: 7, scope: !360)
!362 = !DILocation(line: 0, scope: !291)
!363 = !DILocation(line: 238, column: 1, scope: !291)
!364 = distinct !DISubprogram(name: "iconv", scope: !1, file: !1, line: 170, type: !365, isLocal: false, isDefinition: true, scopeLine: 176, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !370)
!365 = !DISubroutineType(types: !366)
!366 = !{!247, !9, !367, !369, !367, !369}
!367 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !368)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !258)
!370 = !{!371, !372, !373, !374, !375}
!371 = !DILocalVariable(name: "cd", arg: 1, scope: !364, file: !1, line: 170, type: !9)
!372 = !DILocalVariable(name: "inbuf", arg: 2, scope: !364, file: !1, line: 170, type: !367)
!373 = !DILocalVariable(name: "inbytesleft", arg: 3, scope: !364, file: !1, line: 170, type: !369)
!374 = !DILocalVariable(name: "outbuf", arg: 4, scope: !364, file: !1, line: 170, type: !367)
!375 = !DILocalVariable(name: "outbytesleft", arg: 5, scope: !364, file: !1, line: 170, type: !369)
!376 = !DILocation(line: 170, column: 1, scope: !364)
!377 = !DILocation(line: 177, column: 22, scope: !364)
!378 = !DILocation(line: 177, column: 12, scope: !364)
!379 = !DILocation(line: 177, column: 5, scope: !364)
!380 = distinct !DISubprogram(name: "_iconv_r", scope: !1, file: !1, line: 242, type: !381, isLocal: false, isDefinition: true, scopeLine: 249, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !383)
!381 = !DISubroutineType(types: !382)
!382 = !{!247, !28, !9, !4, !258, !368, !258}
!383 = !{!384, !385, !386, !387, !388, !389, !390, !391, !394}
!384 = !DILocalVariable(name: "rptr", arg: 1, scope: !380, file: !1, line: 242, type: !28)
!385 = !DILocalVariable(name: "cd", arg: 2, scope: !380, file: !1, line: 242, type: !9)
!386 = !DILocalVariable(name: "inbuf", arg: 3, scope: !380, file: !1, line: 242, type: !4)
!387 = !DILocalVariable(name: "inbytesleft", arg: 4, scope: !380, file: !1, line: 242, type: !258)
!388 = !DILocalVariable(name: "outbuf", arg: 5, scope: !380, file: !1, line: 242, type: !368)
!389 = !DILocalVariable(name: "outbytesleft", arg: 6, scope: !380, file: !1, line: 242, type: !258)
!390 = !DILocalVariable(name: "ic", scope: !380, file: !1, line: 250, type: !13)
!391 = !DILocalVariable(name: "state_null", scope: !392, file: !1, line: 262, type: !265)
!392 = distinct !DILexicalBlock(scope: !393, file: !1, line: 261, column: 5)
!393 = distinct !DILexicalBlock(scope: !380, file: !1, line: 260, column: 7)
!394 = !DILocalVariable(name: "state_save", scope: !395, file: !1, line: 277, type: !265)
!395 = distinct !DILexicalBlock(scope: !396, file: !1, line: 276, column: 9)
!396 = distinct !DILexicalBlock(scope: !392, file: !1, line: 275, column: 11)
!397 = !DILocation(line: 242, column: 1, scope: !380)
!398 = !DILocation(line: 250, column: 23, scope: !380)
!399 = !DILocation(line: 252, column: 29, scope: !400)
!400 = distinct !DILexicalBlock(scope: !380, file: !1, line: 252, column: 7)
!401 = !DILocation(line: 252, column: 57, scope: !400)
!402 = !DILocation(line: 252, column: 62, scope: !400)
!403 = !DILocation(line: 253, column: 8, scope: !400)
!404 = !DILocation(line: 253, column: 16, scope: !400)
!405 = !DILocation(line: 253, column: 25, scope: !400)
!406 = !DILocation(line: 254, column: 28, scope: !400)
!407 = !DILocation(line: 254, column: 12, scope: !400)
!408 = !DILocation(line: 256, column: 7, scope: !409)
!409 = distinct !DILexicalBlock(scope: !400, file: !1, line: 255, column: 5)
!410 = !DILocation(line: 256, column: 24, scope: !409)
!411 = !{!412, !413, i64 0}
!412 = !{!"_reent", !413, i64 0, !339, i64 8, !339, i64 16, !339, i64 24, !413, i64 32, !306, i64 36, !413, i64 64, !339, i64 72, !413, i64 80, !339, i64 88, !339, i64 96, !413, i64 104, !339, i64 112, !339, i64 120, !413, i64 128, !339, i64 136, !306, i64 144, !339, i64 504, !414, i64 512, !339, i64 1304, !416, i64 1312, !306, i64 1336}
!413 = !{!"int", !306, i64 0}
!414 = !{!"_atexit", !339, i64 0, !413, i64 8, !306, i64 16, !415, i64 272}
!415 = !{!"_on_exit_args", !306, i64 0, !306, i64 256, !413, i64 512, !413, i64 516}
!416 = !{!"_glue", !339, i64 0, !413, i64 8, !339, i64 16}
!417 = !DILocation(line: 257, column: 7, scope: !409)
!418 = !DILocation(line: 260, column: 13, scope: !393)
!419 = !DILocation(line: 260, column: 21, scope: !393)
!420 = !DILocation(line: 260, column: 24, scope: !393)
!421 = !{!339, !339, i64 0}
!422 = !DILocation(line: 260, column: 31, scope: !393)
!423 = !DILocation(line: 260, column: 7, scope: !380)
!424 = !DILocation(line: 262, column: 7, scope: !392)
!425 = !DILocation(line: 262, column: 17, scope: !392)
!426 = !DILocation(line: 264, column: 26, scope: !427)
!427 = distinct !DILexicalBlock(scope: !392, file: !1, line: 264, column: 11)
!428 = !{!342, !339, i64 48}
!429 = !DILocation(line: 264, column: 12, scope: !427)
!430 = !DILocation(line: 264, column: 11, scope: !392)
!431 = !DILocation(line: 267, column: 18, scope: !432)
!432 = distinct !DILexicalBlock(scope: !392, file: !1, line: 267, column: 11)
!433 = !DILocation(line: 267, column: 26, scope: !432)
!434 = !DILocation(line: 267, column: 29, scope: !432)
!435 = !DILocation(line: 267, column: 37, scope: !432)
!436 = !DILocation(line: 267, column: 11, scope: !392)
!437 = !DILocation(line: 270, column: 15, scope: !438)
!438 = distinct !DILexicalBlock(scope: !432, file: !1, line: 268, column: 9)
!439 = !DILocation(line: 270, column: 25, scope: !438)
!440 = !{!342, !339, i64 32}
!441 = !DILocation(line: 270, column: 40, scope: !438)
!442 = !DILocation(line: 270, column: 11, scope: !438)
!443 = !DILocation(line: 272, column: 11, scope: !438)
!444 = !DILocation(line: 275, column: 24, scope: !396)
!445 = !DILocation(line: 275, column: 11, scope: !392)
!446 = !DILocation(line: 277, column: 11, scope: !395)
!447 = !DILocation(line: 277, column: 21, scope: !395)
!448 = !DILocation(line: 280, column: 15, scope: !395)
!449 = !DILocation(line: 280, column: 25, scope: !395)
!450 = !{!342, !339, i64 24}
!451 = !DILocation(line: 280, column: 40, scope: !395)
!452 = !DILocation(line: 280, column: 11, scope: !395)
!453 = !DILocation(line: 283, column: 15, scope: !395)
!454 = !DILocation(line: 283, column: 25, scope: !395)
!455 = !DILocation(line: 283, column: 40, scope: !395)
!456 = !DILocation(line: 283, column: 11, scope: !395)
!457 = !DILocation(line: 286, column: 15, scope: !395)
!458 = !DILocation(line: 286, column: 25, scope: !395)
!459 = !DILocation(line: 286, column: 40, scope: !395)
!460 = !DILocation(line: 286, column: 11, scope: !395)
!461 = !DILocation(line: 288, column: 15, scope: !462)
!462 = distinct !DILexicalBlock(scope: !395, file: !1, line: 288, column: 15)
!463 = !{!464, !464, i64 0}
!464 = !{!"long", !306, i64 0}
!465 = !DILocation(line: 288, column: 43, scope: !462)
!466 = !{!467, !413, i64 0}
!467 = !{!"", !413, i64 0, !306, i64 4}
!468 = !DILocation(line: 288, column: 32, scope: !462)
!469 = !DILocation(line: 288, column: 29, scope: !462)
!470 = !DILocation(line: 288, column: 15, scope: !395)
!471 = !DILocation(line: 290, column: 35, scope: !472)
!472 = distinct !DILexicalBlock(scope: !462, file: !1, line: 289, column: 13)
!473 = !DILocation(line: 290, column: 15, scope: !472)
!474 = !DILocation(line: 292, column: 37, scope: !472)
!475 = !DILocation(line: 292, column: 23, scope: !472)
!476 = !DILocation(line: 293, column: 29, scope: !472)
!477 = !DILocation(line: 300, column: 9, scope: !396)
!478 = !DILocation(line: 299, column: 16, scope: !395)
!479 = !DILocation(line: 299, column: 26, scope: !395)
!480 = !DILocation(line: 299, column: 41, scope: !395)
!481 = !DILocation(line: 299, column: 12, scope: !395)
!482 = !DILocation(line: 302, column: 7, scope: !392)
!483 = !DILocation(line: 302, column: 24, scope: !392)
!484 = !DILocation(line: 303, column: 7, scope: !392)
!485 = !DILocation(line: 0, scope: !427)
!486 = !DILocation(line: 304, column: 5, scope: !393)
!487 = !DILocation(line: 306, column: 7, scope: !488)
!488 = distinct !DILexicalBlock(scope: !380, file: !1, line: 306, column: 7)
!489 = !DILocation(line: 306, column: 20, scope: !488)
!490 = !DILocation(line: 306, column: 7, scope: !380)
!491 = !DILocation(line: 308, column: 7, scope: !492)
!492 = distinct !DILexicalBlock(scope: !488, file: !1, line: 307, column: 5)
!493 = !DILocation(line: 308, column: 24, scope: !492)
!494 = !DILocation(line: 309, column: 7, scope: !492)
!495 = !DILocation(line: 312, column: 7, scope: !496)
!496 = distinct !DILexicalBlock(scope: !380, file: !1, line: 312, column: 7)
!497 = !DILocation(line: 312, column: 21, scope: !496)
!498 = !DILocation(line: 312, column: 26, scope: !496)
!499 = !DILocation(line: 312, column: 29, scope: !496)
!500 = !DILocation(line: 312, column: 37, scope: !496)
!501 = !DILocation(line: 312, column: 7, scope: !380)
!502 = !DILocation(line: 314, column: 7, scope: !503)
!503 = distinct !DILexicalBlock(scope: !496, file: !1, line: 313, column: 5)
!504 = !DILocation(line: 314, column: 24, scope: !503)
!505 = !DILocation(line: 315, column: 7, scope: !503)
!506 = !DILocation(line: 318, column: 24, scope: !380)
!507 = !{!342, !339, i64 16}
!508 = !DILocation(line: 318, column: 10, scope: !380)
!509 = !DILocation(line: 318, column: 3, scope: !380)
!510 = !DILocation(line: 0, scope: !380)
!511 = !DILocation(line: 325, column: 1, scope: !380)
!512 = distinct !DISubprogram(name: "iconv_close", scope: !1, file: !1, line: 183, type: !513, isLocal: false, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !515)
!513 = !DISubroutineType(types: !514)
!514 = !{!33, !9}
!515 = !{!516}
!516 = !DILocalVariable(name: "cd", arg: 1, scope: !512, file: !1, line: 183, type: !9)
!517 = !DILocation(line: 183, column: 1, scope: !512)
!518 = !DILocation(line: 185, column: 28, scope: !512)
!519 = !DILocalVariable(name: "rptr", arg: 1, scope: !520, file: !1, line: 329, type: !28)
!520 = distinct !DISubprogram(name: "_iconv_close_r", scope: !1, file: !1, line: 329, type: !521, isLocal: false, isDefinition: true, scopeLine: 332, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !523)
!521 = !DISubroutineType(types: !522)
!522 = !{!33, !28, !9}
!523 = !{!519, !524, !525, !526}
!524 = !DILocalVariable(name: "cd", arg: 2, scope: !520, file: !1, line: 329, type: !9)
!525 = !DILocalVariable(name: "res", scope: !520, file: !1, line: 333, type: !33)
!526 = !DILocalVariable(name: "ic", scope: !520, file: !1, line: 334, type: !13)
!527 = !DILocation(line: 329, column: 1, scope: !520, inlinedAt: !528)
!528 = distinct !DILocation(line: 185, column: 12, scope: !512)
!529 = !DILocation(line: 334, column: 23, scope: !520, inlinedAt: !528)
!530 = !DILocation(line: 336, column: 29, scope: !531, inlinedAt: !528)
!531 = distinct !DILexicalBlock(scope: !520, file: !1, line: 336, column: 7)
!532 = !DILocation(line: 336, column: 57, scope: !531, inlinedAt: !528)
!533 = !DILocation(line: 336, column: 62, scope: !531, inlinedAt: !528)
!534 = !DILocation(line: 337, column: 8, scope: !531, inlinedAt: !528)
!535 = !DILocation(line: 337, column: 16, scope: !531, inlinedAt: !528)
!536 = !DILocation(line: 337, column: 25, scope: !531, inlinedAt: !528)
!537 = !DILocation(line: 338, column: 28, scope: !531, inlinedAt: !528)
!538 = !DILocation(line: 338, column: 12, scope: !531, inlinedAt: !528)
!539 = !DILocation(line: 340, column: 7, scope: !540, inlinedAt: !528)
!540 = distinct !DILexicalBlock(scope: !531, file: !1, line: 339, column: 5)
!541 = !DILocation(line: 340, column: 24, scope: !540, inlinedAt: !528)
!542 = !DILocation(line: 341, column: 7, scope: !540, inlinedAt: !528)
!543 = !DILocation(line: 344, column: 28, scope: !520, inlinedAt: !528)
!544 = !{!342, !339, i64 8}
!545 = !DILocation(line: 344, column: 14, scope: !520, inlinedAt: !528)
!546 = !DILocation(line: 344, column: 9, scope: !520, inlinedAt: !528)
!547 = !DILocation(line: 333, column: 7, scope: !520, inlinedAt: !528)
!548 = !DILocation(line: 346, column: 3, scope: !520, inlinedAt: !528)
!549 = !DILocation(line: 348, column: 3, scope: !520, inlinedAt: !528)
!550 = !DILocation(line: 0, scope: !520, inlinedAt: !528)
!551 = !DILocation(line: 185, column: 5, scope: !512)
!552 = !DILocation(line: 329, column: 1, scope: !520)
!553 = !DILocation(line: 334, column: 23, scope: !520)
!554 = !DILocation(line: 336, column: 29, scope: !531)
!555 = !DILocation(line: 336, column: 57, scope: !531)
!556 = !DILocation(line: 336, column: 62, scope: !531)
!557 = !DILocation(line: 337, column: 8, scope: !531)
!558 = !DILocation(line: 337, column: 16, scope: !531)
!559 = !DILocation(line: 337, column: 25, scope: !531)
!560 = !DILocation(line: 338, column: 28, scope: !531)
!561 = !DILocation(line: 338, column: 12, scope: !531)
!562 = !DILocation(line: 340, column: 7, scope: !540)
!563 = !DILocation(line: 340, column: 24, scope: !540)
!564 = !DILocation(line: 341, column: 7, scope: !540)
!565 = !DILocation(line: 344, column: 28, scope: !520)
!566 = !DILocation(line: 344, column: 14, scope: !520)
!567 = !DILocation(line: 344, column: 9, scope: !520)
!568 = !DILocation(line: 333, column: 7, scope: !520)
!569 = !DILocation(line: 346, column: 3, scope: !520)
!570 = !DILocation(line: 348, column: 3, scope: !520)
!571 = !DILocation(line: 0, scope: !520)
!572 = !DILocation(line: 349, column: 1, scope: !520)
