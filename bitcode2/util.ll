; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/util.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/util.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct.SHA1_CTX = type { [5 x i32], [2 x i32], [64 x i8] }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i64, i32)*, i32 (%struct._reent*, i8*)*, %struct.__sbuf, i8*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64, %struct._reent*, i32, %struct._mbstate_t, i32 }
%struct.__sbuf = type { i8*, i32 }
%struct._reent = type { i32, %struct.__sFILE*, %struct.__sFILE*, %struct.__sFILE*, i32, [25 x i8], i32, %struct.__locale_t*, i32, void (%struct._reent*)*, %struct._Bigint*, i32, %struct._Bigint*, %struct._Bigint**, i32, i8*, %union.anon.0, %struct._atexit*, %struct._atexit, void (i32)**, %struct._glue, [3 x %struct.__sFILE] }
%struct.__locale_t = type opaque
%struct._Bigint = type { %struct._Bigint*, i32, i32, i32, i32, [1 x i32] }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { [30 x i8*], [30 x i32] }
%struct._atexit = type { %struct._atexit*, i32, [32 x void ()*], %struct._on_exit_args }
%struct._on_exit_args = type { [32 x i8*], [32 x i8*], i32, i32 }
%struct._glue = type { %struct._glue*, i32, %struct.__sFILE* }
%struct._mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"kb\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"mb\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"gb\00", align 1
@ll2string.digits = internal unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 16, !dbg !0
@.str.7 = private unnamed_addr constant [4 x i8] c"nan\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"-inf\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"-0\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"%.17g\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"%.17Lf\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"%.17Lg\00", align 1
@getRandomBytes.seed_initialized = internal unnamed_addr global i1 false, align 4, !dbg !357
@getRandomBytes.seed = internal global [20 x i8] zeroinitializer, align 16, !dbg !335
@getRandomBytes.counter = internal global i64 0, align 8, !dbg !337
@.str.15 = private unnamed_addr constant [13 x i8] c"/dev/urandom\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c" \0D\0A\09\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @stringmatchlen(i8* nocapture readonly, i32, i8* nocapture readonly, i32, i32) local_unnamed_addr #0 !dbg !362 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !416
  %6 = icmp eq i32 %4, 0
  br label %7, !dbg !416

; <label>:7:                                      ; preds = %219, %5
  %8 = phi i32 [ %3, %5 ], [ %223, %219 ]
  %9 = phi i8* [ %2, %5 ], [ %222, %219 ]
  %10 = phi i32 [ %1, %5 ], [ %225, %219 ]
  %11 = phi i8* [ %0, %5 ], [ %224, %219 ]
  %12 = icmp ne i32 %10, 0, !dbg !417
  %13 = icmp ne i32 %8, 0, !dbg !418
  %14 = and i1 %13, %12, !dbg !418
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !416
  br i1 %14, label %15, label %237, !dbg !416

; <label>:15:                                     ; preds = %7
  %16 = load i8, i8* %11, align 1, !dbg !419, !tbaa !420
  %17 = sext i8 %16 to i32, !dbg !419
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !423
  switch i32 %17, label %184 [
    i32 42, label %18
    i32 63, label %46
    i32 91, label %47
    i32 92, label %179
  ], !dbg !423

; <label>:18:                                     ; preds = %15
  %19 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !424
  %20 = load i8, i8* %19, align 1, !dbg !424, !tbaa !420
  %21 = icmp eq i8 %20, 42, !dbg !425
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !426
  br i1 %21, label %22, label %29, !dbg !426

; <label>:22:                                     ; preds = %18, %22
  %23 = phi i8* [ %26, %22 ], [ %19, %18 ]
  %24 = phi i32 [ %25, %22 ], [ %10, %18 ]
  %25 = add nsw i32 %24, -1, !dbg !427
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !426
  %26 = getelementptr inbounds i8, i8* %23, i64 1, !dbg !424
  %27 = load i8, i8* %26, align 1, !dbg !424, !tbaa !420
  %28 = icmp eq i8 %27, 42, !dbg !425
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !426
  br i1 %28, label %22, label %29, !dbg !426, !llvm.loop !429

; <label>:29:                                     ; preds = %22, %18
  %30 = phi i32 [ %10, %18 ], [ %25, %22 ]
  %31 = phi i8* [ %19, %18 ], [ %26, %22 ], !dbg !424
  %32 = icmp eq i32 %30, 1, !dbg !431
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !433
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !434
  br i1 %32, label %243, label %33, !dbg !433

; <label>:33:                                     ; preds = %29
  %34 = add nsw i32 %30, -1
  br label %35, !dbg !435

; <label>:35:                                     ; preds = %33, %41
  %36 = phi i8* [ %9, %33 ], [ %42, %41 ]
  %37 = phi i32 [ %8, %33 ], [ %43, %41 ]
  %38 = tail call i32 @stringmatchlen(i8* nonnull %31, i32 %34, i8* %36, i32 %37, i32 %4) #5, !dbg !436
  %39 = icmp eq i32 %38, 0, !dbg !436
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !439
  br i1 %39, label %41, label %40, !dbg !439

; <label>:40:                                     ; preds = %35
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !440
  br label %243, !dbg !440

; <label>:41:                                     ; preds = %35
  %42 = getelementptr inbounds i8, i8* %36, i64 1, !dbg !441
  %43 = add nsw i32 %37, -1, !dbg !442
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !435
  %44 = icmp eq i32 %43, 0, !dbg !435
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !435
  br i1 %44, label %45, label %35, !dbg !435, !llvm.loop !443

; <label>:45:                                     ; preds = %41
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !445
  br label %243, !dbg !445

; <label>:46:                                     ; preds = %15
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !446
  br label %216, !dbg !447

; <label>:47:                                     ; preds = %15
  %48 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !448
  %49 = add nsw i32 %10, -1, !dbg !449
  %50 = load i8, i8* %48, align 1, !dbg !450, !tbaa !420
  %51 = icmp eq i8 %50, 94, !dbg !451
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !452
  br i1 %51, label %52, label %55, !dbg !452

; <label>:52:                                     ; preds = %47
  %53 = getelementptr inbounds i8, i8* %11, i64 2, !dbg !453
  %54 = add nsw i32 %10, -2, !dbg !456
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !457
  br label %55, !dbg !457

; <label>:55:                                     ; preds = %52, %47
  %56 = phi i32 [ %49, %47 ], [ %54, %52 ]
  %57 = phi i8* [ %48, %47 ], [ %53, %52 ]
  br label %58, !dbg !458

; <label>:58:                                     ; preds = %55, %164
  %59 = phi i32 [ %165, %164 ], [ 0, %55 ], !dbg !459
  %60 = phi i32 [ %169, %164 ], [ %56, %55 ], !dbg !462
  %61 = phi i8* [ %168, %164 ], [ %57, %55 ], !dbg !462
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !458
  %62 = load i8, i8* %61, align 1, !dbg !464, !tbaa !420
  %63 = sext i8 %62 to i32, !dbg !464
  %64 = icmp eq i8 %62, 92, !dbg !465
  %65 = icmp sgt i32 %60, 1, !dbg !466
  %66 = and i1 %65, %64, !dbg !467
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !467
  br i1 %66, label %67, label %74, !dbg !467

; <label>:67:                                     ; preds = %58
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !468
  %69 = add nsw i32 %60, -1, !dbg !469
  %70 = load i8, i8* %68, align 1, !dbg !470, !tbaa !420
  %71 = load i8, i8* %9, align 1, !dbg !471, !tbaa !420
  %72 = icmp eq i8 %70, %71, !dbg !472
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !473
  br i1 %72, label %73, label %164, !dbg !473

; <label>:73:                                     ; preds = %67
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !474
  br label %164, !dbg !474

; <label>:74:                                     ; preds = %58
  %75 = icmp eq i8 %62, 93, !dbg !475
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !476
  br i1 %75, label %170, label %76, !dbg !476

; <label>:76:                                     ; preds = %74
  %77 = icmp eq i32 %60, 0, !dbg !477
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !478
  br i1 %77, label %78, label %80, !dbg !478

; <label>:78:                                     ; preds = %76
  %79 = getelementptr inbounds i8, i8* %61, i64 -1, !dbg !479
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !481
  br label %170, !dbg !481

; <label>:80:                                     ; preds = %76
  %81 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !482
  %82 = load i8, i8* %81, align 1, !dbg !482, !tbaa !420
  %83 = icmp eq i8 %82, 45, !dbg !483
  %84 = icmp sgt i32 %60, 2, !dbg !484
  %85 = and i1 %84, %83, !dbg !485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !485
  br i1 %85, label %86, label %136, !dbg !485

; <label>:86:                                     ; preds = %80
  %87 = getelementptr inbounds i8, i8* %61, i64 2, !dbg !487
  %88 = load i8, i8* %87, align 1, !dbg !487, !tbaa !420
  %89 = sext i8 %88 to i32, !dbg !487
  %90 = load i8, i8* %9, align 1, !dbg !489, !tbaa !420
  %91 = sext i8 %90 to i32, !dbg !489
  %92 = icmp sgt i8 %62, %88, !dbg !491
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !492
  br i1 %92, label %93, label %94, !dbg !492

; <label>:93:                                     ; preds = %86
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !494
  br label %94, !dbg !494

; <label>:94:                                     ; preds = %93, %86
  %95 = phi i32 [ %63, %93 ], [ %89, %86 ], !dbg !495
  %96 = phi i32 [ %89, %93 ], [ %63, %86 ], !dbg !495
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !496
  br i1 %6, label %125, label %97, !dbg !496

; <label>:97:                                     ; preds = %94
  %98 = tail call i8* @__locale_ctype_ptr() #6, !dbg !497
  %99 = getelementptr inbounds i8, i8* %98, i64 1, !dbg !497
  %100 = sext i32 %96 to i64, !dbg !497
  %101 = getelementptr inbounds i8, i8* %99, i64 %100, !dbg !497
  %102 = load i8, i8* %101, align 1, !dbg !497, !tbaa !420
  %103 = and i8 %102, 3, !dbg !497
  %104 = icmp eq i8 %103, 1, !dbg !497
  %105 = add nsw i32 %96, 32, !dbg !497
  %106 = select i1 %104, i32 %105, i32 %96, !dbg !497
  %107 = tail call i8* @__locale_ctype_ptr() #6, !dbg !498
  %108 = getelementptr inbounds i8, i8* %107, i64 1, !dbg !498
  %109 = sext i32 %95 to i64, !dbg !498
  %110 = getelementptr inbounds i8, i8* %108, i64 %109, !dbg !498
  %111 = load i8, i8* %110, align 1, !dbg !498, !tbaa !420
  %112 = and i8 %111, 3, !dbg !498
  %113 = icmp eq i8 %112, 1, !dbg !498
  %114 = add nsw i32 %95, 32, !dbg !498
  %115 = select i1 %113, i32 %114, i32 %95, !dbg !498
  %116 = tail call i8* @__locale_ctype_ptr() #6, !dbg !499
  %117 = getelementptr inbounds i8, i8* %116, i64 1, !dbg !499
  %118 = sext i8 %90 to i64, !dbg !499
  %119 = getelementptr inbounds i8, i8* %117, i64 %118, !dbg !499
  %120 = load i8, i8* %119, align 1, !dbg !499, !tbaa !420
  %121 = and i8 %120, 3, !dbg !499
  %122 = icmp eq i8 %121, 1, !dbg !499
  %123 = add nsw i32 %91, 32, !dbg !499
  %124 = select i1 %122, i32 %123, i32 %91, !dbg !499
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !500
  br label %125, !dbg !500

; <label>:125:                                    ; preds = %94, %97
  %126 = phi i32 [ %124, %97 ], [ %91, %94 ], !dbg !495
  %127 = phi i32 [ %115, %97 ], [ %95, %94 ], !dbg !501
  %128 = phi i32 [ %106, %97 ], [ %96, %94 ], !dbg !501
  %129 = add nsw i32 %60, -2, !dbg !502
  %130 = icmp slt i32 %126, %128, !dbg !503
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !505
  br i1 %130, label %134, label %131, !dbg !505

; <label>:131:                                    ; preds = %125
  %132 = icmp sgt i32 %126, %127, !dbg !506
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !507
  br i1 %132, label %134, label %133, !dbg !507

; <label>:133:                                    ; preds = %131
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !508
  br label %134, !dbg !508

; <label>:134:                                    ; preds = %131, %125, %133
  %135 = phi i32 [ 1, %133 ], [ %59, %131 ], [ %59, %125 ], !dbg !509
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !510
  br label %164, !dbg !510

; <label>:136:                                    ; preds = %80
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !511
  br i1 %6, label %137, label %141, !dbg !511

; <label>:137:                                    ; preds = %136
  %138 = load i8, i8* %9, align 1, !dbg !512, !tbaa !420
  %139 = icmp eq i8 %62, %138, !dbg !515
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !516
  br i1 %139, label %140, label %164, !dbg !516

; <label>:140:                                    ; preds = %137
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !517
  br label %164, !dbg !517

; <label>:141:                                    ; preds = %136
  %142 = tail call i8* @__locale_ctype_ptr() #6, !dbg !518
  %143 = getelementptr inbounds i8, i8* %142, i64 1, !dbg !518
  %144 = sext i8 %62 to i64, !dbg !518
  %145 = getelementptr inbounds i8, i8* %143, i64 %144, !dbg !518
  %146 = load i8, i8* %145, align 1, !dbg !518, !tbaa !420
  %147 = and i8 %146, 3, !dbg !518
  %148 = icmp eq i8 %147, 1, !dbg !518
  %149 = add nsw i32 %63, 32, !dbg !518
  %150 = select i1 %148, i32 %149, i32 %63, !dbg !518
  %151 = load i8, i8* %9, align 1, !dbg !519, !tbaa !420
  %152 = sext i8 %151 to i32, !dbg !519
  %153 = tail call i8* @__locale_ctype_ptr() #6, !dbg !519
  %154 = getelementptr inbounds i8, i8* %153, i64 1, !dbg !519
  %155 = sext i8 %151 to i64, !dbg !519
  %156 = getelementptr inbounds i8, i8* %154, i64 %155, !dbg !519
  %157 = load i8, i8* %156, align 1, !dbg !519, !tbaa !420
  %158 = and i8 %157, 3, !dbg !519
  %159 = icmp eq i8 %158, 1, !dbg !519
  %160 = add nsw i32 %152, 32, !dbg !519
  %161 = select i1 %159, i32 %160, i32 %152, !dbg !519
  %162 = icmp eq i32 %150, %161, !dbg !520
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !521
  br i1 %162, label %163, label %164, !dbg !521

; <label>:163:                                    ; preds = %141
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !522
  br label %164, !dbg !522

; <label>:164:                                    ; preds = %134, %141, %163, %137, %140, %67, %73
  %165 = phi i32 [ 1, %73 ], [ %59, %67 ], [ %135, %134 ], [ 1, %163 ], [ %59, %141 ], [ 1, %140 ], [ %59, %137 ], !dbg !509
  %166 = phi i32 [ %69, %73 ], [ %69, %67 ], [ %129, %134 ], [ %60, %163 ], [ %60, %141 ], [ %60, %140 ], [ %60, %137 ], !dbg !523
  %167 = phi i8* [ %68, %73 ], [ %68, %67 ], [ %87, %134 ], [ %61, %163 ], [ %61, %141 ], [ %61, %140 ], [ %61, %137 ], !dbg !523
  %168 = getelementptr inbounds i8, i8* %167, i64 1, !dbg !524
  %169 = add nsw i32 %166, -1, !dbg !525
  br label %58, !dbg !458, !llvm.loop !526

; <label>:170:                                    ; preds = %74, %78
  %171 = phi i32 [ 1, %78 ], [ %60, %74 ], !dbg !528
  %172 = phi i8* [ %79, %78 ], [ %61, %74 ], !dbg !528
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !529
  br i1 %51, label %173, label %176, !dbg !529

; <label>:173:                                    ; preds = %170
  %174 = icmp eq i32 %59, 0, !dbg !530
  %175 = zext i1 %174 to i32, !dbg !530
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !532
  br label %176, !dbg !532

; <label>:176:                                    ; preds = %173, %170
  %177 = phi i32 [ %175, %173 ], [ %59, %170 ], !dbg !509
  %178 = icmp eq i32 %177, 0, !dbg !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !535
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !509
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br i1 %178, label %243, label %219, !dbg !535

; <label>:179:                                    ; preds = %15
  %180 = icmp sgt i32 %10, 1, !dbg !536
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !538
  br i1 %180, label %181, label %184, !dbg !538

; <label>:181:                                    ; preds = %179
  %182 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !539
  %183 = add nsw i32 %10, -1, !dbg !541
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !542
  br label %184, !dbg !542

; <label>:184:                                    ; preds = %179, %181, %15
  %185 = phi i32 [ %10, %15 ], [ %183, %181 ], [ %10, %179 ]
  %186 = phi i8* [ %11, %15 ], [ %182, %181 ], [ %11, %179 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !543
  %187 = load i8, i8* %186, align 1, !dbg !544, !tbaa !420
  br i1 %6, label %188, label %192, !dbg !543

; <label>:188:                                    ; preds = %184
  %189 = load i8, i8* %9, align 1, !dbg !545, !tbaa !420
  %190 = icmp eq i8 %187, %189, !dbg !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !549
  br i1 %190, label %216, label %191, !dbg !549

; <label>:191:                                    ; preds = %188
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !550
  br label %243, !dbg !550

; <label>:192:                                    ; preds = %184
  %193 = sext i8 %187 to i32, !dbg !551
  %194 = tail call i8* @__locale_ctype_ptr() #6, !dbg !551
  %195 = getelementptr inbounds i8, i8* %194, i64 1, !dbg !551
  %196 = sext i8 %187 to i64, !dbg !551
  %197 = getelementptr inbounds i8, i8* %195, i64 %196, !dbg !551
  %198 = load i8, i8* %197, align 1, !dbg !551, !tbaa !420
  %199 = and i8 %198, 3, !dbg !551
  %200 = icmp eq i8 %199, 1, !dbg !551
  %201 = add nsw i32 %193, 32, !dbg !551
  %202 = select i1 %200, i32 %201, i32 %193, !dbg !551
  %203 = load i8, i8* %9, align 1, !dbg !552, !tbaa !420
  %204 = sext i8 %203 to i32, !dbg !552
  %205 = tail call i8* @__locale_ctype_ptr() #6, !dbg !552
  %206 = getelementptr inbounds i8, i8* %205, i64 1, !dbg !552
  %207 = sext i8 %203 to i64, !dbg !552
  %208 = getelementptr inbounds i8, i8* %206, i64 %207, !dbg !552
  %209 = load i8, i8* %208, align 1, !dbg !552, !tbaa !420
  %210 = and i8 %209, 3, !dbg !552
  %211 = icmp eq i8 %210, 1, !dbg !552
  %212 = add nsw i32 %204, 32, !dbg !552
  %213 = select i1 %211, i32 %212, i32 %204, !dbg !552
  %214 = icmp eq i32 %202, %213, !dbg !553
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !554
  br i1 %214, label %216, label %215, !dbg !554

; <label>:215:                                    ; preds = %192
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !555
  br label %243, !dbg !555

; <label>:216:                                    ; preds = %188, %192, %46
  %217 = phi i32 [ %10, %46 ], [ %185, %192 ], [ %185, %188 ]
  %218 = phi i8* [ %11, %46 ], [ %186, %192 ], [ %186, %188 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !434
  br label %219, !dbg !434

; <label>:219:                                    ; preds = %216, %176
  %220 = phi i32 [ %171, %176 ], [ %217, %216 ]
  %221 = phi i8* [ %172, %176 ], [ %218, %216 ]
  %222 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !434
  %223 = add nsw i32 %8, -1, !dbg !434
  %224 = getelementptr inbounds i8, i8* %221, i64 1, !dbg !556
  %225 = add nsw i32 %220, -1, !dbg !557
  %226 = icmp eq i32 %223, 0, !dbg !558
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !560
  br i1 %226, label %227, label %7, !dbg !560, !llvm.loop !561

; <label>:227:                                    ; preds = %219
  %228 = load i8, i8* %224, align 1, !dbg !563, !tbaa !420
  %229 = icmp eq i8 %228, 42, !dbg !565
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !566
  br i1 %229, label %230, label %237, !dbg !566

; <label>:230:                                    ; preds = %227, %230
  %231 = phi i8* [ %233, %230 ], [ %224, %227 ]
  %232 = phi i32 [ %234, %230 ], [ %225, %227 ]
  %233 = getelementptr inbounds i8, i8* %231, i64 1, !dbg !567
  %234 = add nsw i32 %232, -1, !dbg !569
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !566
  %235 = load i8, i8* %233, align 1, !dbg !563, !tbaa !420
  %236 = icmp eq i8 %235, 42, !dbg !565
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !566
  br i1 %236, label %230, label %237, !dbg !566, !llvm.loop !570

; <label>:237:                                    ; preds = %7, %230, %227
  %238 = phi i32 [ 0, %227 ], [ 0, %230 ], [ %8, %7 ]
  %239 = phi i32 [ %225, %227 ], [ %234, %230 ], [ %10, %7 ]
  %240 = or i32 %239, %238, !dbg !572
  %241 = icmp eq i32 %240, 0, !dbg !572
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !572
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !574
  %242 = zext i1 %241 to i32, !dbg !575
  br label %243, !dbg !575

; <label>:243:                                    ; preds = %176, %29, %237, %215, %191, %45, %40
  %244 = phi i32 [ 0, %215 ], [ 0, %191 ], [ 1, %40 ], [ 0, %45 ], [ %242, %237 ], [ 1, %29 ], [ 0, %176 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !576
  ret i32 %244, !dbg !576
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i8* @__locale_ctype_ptr() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @stringmatch(i8*, i8*, i32) local_unnamed_addr #0 !dbg !577 {
  %4 = tail call i64 @strlen(i8* %0) #6, !dbg !587
  %5 = trunc i64 %4 to i32, !dbg !587
  %6 = tail call i64 @strlen(i8* %1) #6, !dbg !588
  %7 = trunc i64 %6 to i32, !dbg !588
  %8 = tail call i32 @stringmatchlen(i8* %0, i32 %5, i8* %1, i32 %7, i32 %2) #5, !dbg !589
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !590
  ret i32 %8, !dbg !590
}

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @stringmatchlen_fuzz_test() local_unnamed_addr #0 !dbg !591 {
  %1 = alloca [32 x i8], align 16
  %2 = alloca [32 x i8], align 16
  %3 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 0, !dbg !607
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %3) #7, !dbg !607
  %4 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0, !dbg !609
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #7, !dbg !609
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !613
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !613
  br label %5, !dbg !613

; <label>:5:                                      ; preds = %0, %27
  %6 = phi i32 [ 9999999, %0 ], [ %30, %27 ]
  %7 = phi i32 [ 0, %0 ], [ %29, %27 ]
  %8 = tail call i32 @rand() #6, !dbg !614
  %9 = and i32 %8, 31, !dbg !615
  %10 = tail call i32 @rand() #6, !dbg !617
  %11 = and i32 %10, 31, !dbg !618
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !621
  %12 = icmp eq i32 %9, 0, !dbg !622
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !624
  br i1 %12, label %15, label %13, !dbg !624

; <label>:13:                                     ; preds = %5
  %14 = zext i32 %9 to i64
  br label %19, !dbg !625

; <label>:15:                                     ; preds = %19, %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !627
  %16 = icmp eq i32 %11, 0, !dbg !628
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !630
  br i1 %16, label %27, label %17, !dbg !630

; <label>:17:                                     ; preds = %15
  %18 = zext i32 %11 to i64
  br label %32, !dbg !631

; <label>:19:                                     ; preds = %19, %13
  %20 = phi i64 [ 0, %13 ], [ %25, %19 ]
  %21 = tail call i32 @rand() #6, !dbg !625
  %22 = srem i32 %21, 128, !dbg !632
  %23 = trunc i32 %22 to i8, !dbg !625
  %24 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 %20, !dbg !633
  store i8 %23, i8* %24, align 1, !dbg !634, !tbaa !420
  %25 = add nuw nsw i64 %20, 1, !dbg !635
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !636
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !624
  %26 = icmp eq i64 %25, %14, !dbg !622
  br i1 %26, label %15, label %19, !dbg !624, !llvm.loop !637

; <label>:27:                                     ; preds = %32, %15
  %28 = call i32 @stringmatchlen(i8* nonnull %4, i32 %11, i8* nonnull %3, i32 %9, i32 0) #5, !dbg !639
  %29 = add nsw i32 %28, %7, !dbg !640
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !613
  %30 = add nsw i32 %6, -1, !dbg !641
  %31 = icmp eq i32 %6, 0, !dbg !613
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !613
  br i1 %31, label %40, label %5, !dbg !613, !llvm.loop !642

; <label>:32:                                     ; preds = %32, %17
  %33 = phi i64 [ 0, %17 ], [ %38, %32 ]
  %34 = tail call i32 @rand() #6, !dbg !631
  %35 = srem i32 %34, 128, !dbg !644
  %36 = trunc i32 %35 to i8, !dbg !631
  %37 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 %33, !dbg !645
  store i8 %36, i8* %37, align 1, !dbg !646, !tbaa !420
  %38 = add nuw nsw i64 %33, 1, !dbg !647
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !648
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !630
  %39 = icmp eq i64 %38, %18, !dbg !628
  br i1 %39, label %27, label %32, !dbg !630, !llvm.loop !649

; <label>:40:                                     ; preds = %27
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #7, !dbg !651
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #7, !dbg !651
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !652
  ret i32 %29, !dbg !652
}

; Function Attrs: noredzone
declare dso_local i32 @rand() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i64 @memtoll(i8*, i32*) local_unnamed_addr #0 !dbg !653 {
  %3 = alloca [128 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0, !dbg !671
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %5) #7, !dbg !671
  %6 = icmp ne i32* %1, null, !dbg !673
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !675
  br i1 %6, label %7, label %8, !dbg !675

; <label>:7:                                      ; preds = %2
  store i32 0, i32* %1, align 4, !dbg !676, !tbaa !677
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !679
  br label %8, !dbg !679

; <label>:8:                                      ; preds = %7, %2
  %9 = load i8, i8* %0, align 1, !dbg !681, !tbaa !420
  %10 = icmp eq i8 %9, 45, !dbg !683
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !684
  br i1 %10, label %11, label %14, !dbg !684

; <label>:11:                                     ; preds = %8
  %12 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !685
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !686
  %13 = load i8, i8* %12, align 1, !dbg !687, !tbaa !420
  br label %14, !dbg !686

; <label>:14:                                     ; preds = %11, %8
  %15 = phi i8 [ %13, %11 ], [ %9, %8 ], !dbg !687
  %16 = phi i8* [ %12, %11 ], [ %0, %8 ], !dbg !688
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !689
  %17 = icmp eq i8 %15, 0, !dbg !687
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !690
  br i1 %17, label %32, label %18, !dbg !690

; <label>:18:                                     ; preds = %14, %28
  %19 = phi i8* [ %29, %28 ], [ %16, %14 ]
  %20 = tail call i8* @__locale_ctype_ptr() #6, !dbg !691
  %21 = getelementptr inbounds i8, i8* %20, i64 1, !dbg !691
  %22 = load i8, i8* %19, align 1, !dbg !691, !tbaa !420
  %23 = sext i8 %22 to i64, !dbg !691
  %24 = getelementptr inbounds i8, i8* %21, i64 %23, !dbg !691
  %25 = load i8, i8* %24, align 1, !dbg !691, !tbaa !420
  %26 = and i8 %25, 4, !dbg !691
  %27 = icmp eq i8 %26, 0, !dbg !690
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !689
  br i1 %27, label %34, label %28, !dbg !689

; <label>:28:                                     ; preds = %18
  %29 = getelementptr inbounds i8, i8* %19, i64 1, !dbg !692
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !689
  %30 = load i8, i8* %29, align 1, !dbg !687, !tbaa !420
  %31 = icmp eq i8 %30, 0, !dbg !687
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !690
  br i1 %31, label %32, label %18, !dbg !690, !llvm.loop !693

; <label>:32:                                     ; preds = %28, %14
  %33 = phi i8* [ %16, %14 ], [ %29, %28 ], !dbg !688
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !689
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !694
  br label %59, !dbg !694

; <label>:34:                                     ; preds = %18
  %35 = icmp eq i8 %22, 0, !dbg !696
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !694
  br i1 %35, label %59, label %36, !dbg !694

; <label>:36:                                     ; preds = %34
  %37 = tail call i32 @strcasecmp(i8* nonnull %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #8, !dbg !697
  %38 = icmp eq i32 %37, 0, !dbg !697
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !698
  br i1 %38, label %59, label %39, !dbg !698

; <label>:39:                                     ; preds = %36
  %40 = tail call i32 @strcasecmp(i8* nonnull %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !699
  %41 = icmp eq i32 %40, 0, !dbg !699
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !701
  br i1 %41, label %59, label %42, !dbg !701

; <label>:42:                                     ; preds = %39
  %43 = tail call i32 @strcasecmp(i8* nonnull %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !702
  %44 = icmp eq i32 %43, 0, !dbg !702
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !704
  br i1 %44, label %59, label %45, !dbg !704

; <label>:45:                                     ; preds = %42
  %46 = tail call i32 @strcasecmp(i8* nonnull %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !705
  %47 = icmp eq i32 %46, 0, !dbg !705
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !707
  br i1 %47, label %59, label %48, !dbg !707

; <label>:48:                                     ; preds = %45
  %49 = tail call i32 @strcasecmp(i8* nonnull %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !708
  %50 = icmp eq i32 %49, 0, !dbg !708
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !710
  br i1 %50, label %59, label %51, !dbg !710

; <label>:51:                                     ; preds = %48
  %52 = tail call i32 @strcasecmp(i8* nonnull %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !711
  %53 = icmp eq i32 %52, 0, !dbg !711
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !713
  br i1 %53, label %59, label %54, !dbg !713

; <label>:54:                                     ; preds = %51
  %55 = tail call i32 @strcasecmp(i8* nonnull %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)) #8, !dbg !714
  %56 = icmp eq i32 %55, 0, !dbg !714
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !716
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br i1 %56, label %62, label %57, !dbg !716

; <label>:57:                                     ; preds = %54
  br i1 %6, label %58, label %93, !dbg !717

; <label>:58:                                     ; preds = %57
  store i32 1, i32* %1, align 4, !dbg !719, !tbaa !677
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !721
  br label %93, !dbg !721

; <label>:59:                                     ; preds = %51, %48, %45, %42, %39, %34, %36, %32
  %60 = phi i8* [ %33, %32 ], [ %19, %36 ], [ %19, %34 ], [ %19, %39 ], [ %19, %42 ], [ %19, %45 ], [ %19, %48 ], [ %19, %51 ]
  %61 = phi i64 [ 1, %32 ], [ 1, %36 ], [ 1, %34 ], [ 1000, %39 ], [ 1024, %42 ], [ 1000000, %45 ], [ 1048576, %48 ], [ 1000000000, %51 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !722
  br label %62, !dbg !724

; <label>:62:                                     ; preds = %59, %54
  %63 = phi i8* [ %19, %54 ], [ %60, %59 ]
  %64 = phi i64 [ 1073741824, %54 ], [ %61, %59 ], !dbg !725
  %65 = ptrtoint i8* %63 to i64, !dbg !724
  %66 = ptrtoint i8* %0 to i64, !dbg !724
  %67 = sub i64 %65, %66, !dbg !724
  %68 = and i64 %67, 4294967295, !dbg !728
  %69 = icmp ugt i64 %68, 127, !dbg !731
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !732
  br i1 %69, label %70, label %72, !dbg !732

; <label>:70:                                     ; preds = %62
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !733
  br i1 %6, label %71, label %93, !dbg !733

; <label>:71:                                     ; preds = %70
  store i32 1, i32* %1, align 4, !dbg !735, !tbaa !677
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !737
  br label %93, !dbg !737

; <label>:72:                                     ; preds = %62
  %73 = call i8* @memcpy(i8* nonnull %5, i8* %0, i64 %68) #6, !dbg !738
  %74 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 %68, !dbg !739
  store i8 0, i8* %74, align 1, !dbg !740, !tbaa !420
  %75 = bitcast i8** %4 to i8*, !dbg !741
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %75) #7, !dbg !741
  %76 = call i32* @__errno() #6, !dbg !742
  store i32 0, i32* %76, align 4, !dbg !743, !tbaa !677
  %77 = call i64 @strtoll(i8* nonnull %5, i8** nonnull %4, i32 10) #6, !dbg !745
  %78 = icmp eq i64 %77, 0, !dbg !747
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !749
  br i1 %78, label %79, label %83, !dbg !749

; <label>:79:                                     ; preds = %72
  %80 = call i32* @__errno() #6, !dbg !750
  %81 = load i32, i32* %80, align 4, !dbg !750, !tbaa !677
  %82 = icmp eq i32 %81, 22, !dbg !751
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !752
  br i1 %82, label %87, label %83, !dbg !752

; <label>:83:                                     ; preds = %79, %72
  %84 = load i8*, i8** %4, align 8, !dbg !753, !tbaa !754
  %85 = load i8, i8* %84, align 1, !dbg !756, !tbaa !420
  %86 = icmp eq i8 %85, 0, !dbg !757
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !758
  br i1 %86, label %89, label %87, !dbg !758

; <label>:87:                                     ; preds = %83, %79
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !759
  br i1 %6, label %88, label %91, !dbg !759

; <label>:88:                                     ; preds = %87
  store i32 1, i32* %1, align 4, !dbg !761, !tbaa !677
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !763
  br label %91, !dbg !763

; <label>:89:                                     ; preds = %83
  %90 = mul nsw i64 %77, %64, !dbg !764
  br label %91, !dbg !765

; <label>:91:                                     ; preds = %87, %88, %89
  %92 = phi i64 [ %90, %89 ], [ 0, %88 ], [ 0, %87 ], !dbg !688
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !766
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %75) #7, !dbg !767
  br label %93

; <label>:93:                                     ; preds = %70, %71, %57, %58, %91
  %94 = phi i64 [ %92, %91 ], [ 0, %58 ], [ 0, %57 ], [ 0, %71 ], [ 0, %70 ], !dbg !768
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %5) #7, !dbg !767
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !767
  ret i64 %94, !dbg !767
}

; Function Attrs: noredzone nounwind readonly
declare dso_local i32 @strcasecmp(i8*, i8*) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @digits10(i64) local_unnamed_addr #0 !dbg !769 {
  %2 = icmp ult i64 %0, 10, !dbg !775
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !777
  br i1 %2, label %33, label %3, !dbg !777

; <label>:3:                                      ; preds = %1
  %4 = icmp ult i64 %0, 100, !dbg !778
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !780
  br i1 %4, label %33, label %5, !dbg !780

; <label>:5:                                      ; preds = %3
  %6 = icmp ult i64 %0, 1000, !dbg !781
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !783
  br i1 %6, label %33, label %7, !dbg !783

; <label>:7:                                      ; preds = %5
  %8 = icmp ult i64 %0, 1000000000000, !dbg !784
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !786
  br i1 %8, label %9, label %29, !dbg !786

; <label>:9:                                      ; preds = %7
  %10 = icmp ult i64 %0, 100000000, !dbg !787
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !790
  br i1 %10, label %11, label %21, !dbg !790

; <label>:11:                                     ; preds = %9
  %12 = icmp ult i64 %0, 1000000, !dbg !791
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !794
  br i1 %12, label %13, label %18, !dbg !794

; <label>:13:                                     ; preds = %11
  %14 = icmp ult i64 %0, 10000, !dbg !795
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !798
  br i1 %14, label %33, label %15, !dbg !798

; <label>:15:                                     ; preds = %13
  %16 = icmp ugt i64 %0, 99999, !dbg !799
  %17 = select i1 %16, i32 6, i32 5, !dbg !800
  br label %33, !dbg !801

; <label>:18:                                     ; preds = %11
  %19 = icmp ugt i64 %0, 9999999, !dbg !802
  %20 = select i1 %19, i32 8, i32 7, !dbg !803
  br label %33, !dbg !804

; <label>:21:                                     ; preds = %9
  %22 = icmp ult i64 %0, 10000000000, !dbg !805
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !807
  br i1 %22, label %23, label %26, !dbg !807

; <label>:23:                                     ; preds = %21
  %24 = icmp ugt i64 %0, 999999999, !dbg !808
  %25 = select i1 %24, i32 10, i32 9, !dbg !810
  br label %33, !dbg !811

; <label>:26:                                     ; preds = %21
  %27 = icmp ugt i64 %0, 99999999999, !dbg !812
  %28 = select i1 %27, i32 12, i32 11, !dbg !813
  br label %33, !dbg !814

; <label>:29:                                     ; preds = %7
  %30 = udiv i64 %0, 1000000000000, !dbg !815
  %31 = tail call i32 @digits10(i64 %30) #5, !dbg !816
  %32 = add i32 %31, 12, !dbg !817
  br label %33, !dbg !818

; <label>:33:                                     ; preds = %13, %5, %3, %1, %29, %26, %23, %18, %15
  %34 = phi i32 [ %17, %15 ], [ %20, %18 ], [ %25, %23 ], [ %28, %26 ], [ %32, %29 ], [ 1, %1 ], [ 2, %3 ], [ 3, %5 ], [ 4, %13 ], !dbg !819
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !820
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !821
  ret i32 %34, !dbg !821
}

; Function Attrs: noredzone nounwind
define dso_local i32 @sdigits10(i64) local_unnamed_addr #0 !dbg !822 {
  %2 = icmp slt i64 %0, 0, !dbg !833
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !834
  br i1 %2, label %3, label %9, !dbg !834

; <label>:3:                                      ; preds = %1
  %4 = icmp eq i64 %0, -9223372036854775808, !dbg !835
  %5 = sub nsw i64 0, %0, !dbg !836
  %6 = select i1 %4, i64 -9223372036854775808, i64 %5, !dbg !837
  %7 = tail call i32 @digits10(i64 %6) #5, !dbg !839
  %8 = add i32 %7, 1, !dbg !840
  br label %11

; <label>:9:                                      ; preds = %1
  %10 = tail call i32 @digits10(i64 %0) #5, !dbg !841
  br label %11, !dbg !843

; <label>:11:                                     ; preds = %9, %3
  %12 = phi i32 [ %8, %3 ], [ %10, %9 ], !dbg !844
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !845
  ret i32 %12, !dbg !845
}

; Function Attrs: noredzone nounwind
define dso_local i32 @ll2string(i8* nocapture, i64, i64) local_unnamed_addr #0 !dbg !2 {
  %4 = icmp slt i64 %2, 0, !dbg !849
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !851
  br i1 %4, label %5, label %9, !dbg !851

; <label>:5:                                      ; preds = %3
  %6 = icmp eq i64 %2, -9223372036854775808, !dbg !852
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !855
  %7 = sub nsw i64 0, %2, !dbg !856
  %8 = select i1 %6, i64 -9223372036854775808, i64 %7, !dbg !855
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %9, !dbg !860

; <label>:9:                                      ; preds = %3, %5
  %10 = phi i64 [ %8, %5 ], [ %2, %3 ], !dbg !861
  %11 = phi i32 [ 1, %5 ], [ 0, %3 ], !dbg !861
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %12 = tail call i32 @digits10(i64 %10) #5, !dbg !863
  %13 = add i32 %12, %11, !dbg !864
  %14 = zext i32 %13 to i64, !dbg !866
  %15 = icmp ult i64 %14, %1, !dbg !868
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !869
  br i1 %15, label %16, label %68, !dbg !869

; <label>:16:                                     ; preds = %9
  %17 = getelementptr inbounds i8, i8* %0, i64 %14, !dbg !871
  store i8 0, i8* %17, align 1, !dbg !872, !tbaa !420
  %18 = add i32 %13, -1, !dbg !873
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !874
  %19 = icmp ugt i64 %10, 99, !dbg !875
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !874
  br i1 %19, label %20, label %41, !dbg !874

; <label>:20:                                     ; preds = %16, %20
  %21 = phi i32 [ %39, %20 ], [ %18, %16 ]
  %22 = phi i64 [ %26, %20 ], [ %10, %16 ]
  %23 = urem i64 %22, 100, !dbg !876
  %24 = trunc i64 %23 to i32, !dbg !877
  %25 = shl nuw nsw i32 %24, 1, !dbg !877
  %26 = udiv i64 %22, 100, !dbg !879
  %27 = or i32 %25, 1, !dbg !880
  %28 = zext i32 %27 to i64, !dbg !881
  %29 = getelementptr inbounds [201 x i8], [201 x i8]* @ll2string.digits, i64 0, i64 %28, !dbg !881
  %30 = load i8, i8* %29, align 1, !dbg !881, !tbaa !420
  %31 = zext i32 %21 to i64, !dbg !882
  %32 = getelementptr inbounds i8, i8* %0, i64 %31, !dbg !882
  store i8 %30, i8* %32, align 1, !dbg !883, !tbaa !420
  %33 = zext i32 %25 to i64, !dbg !884
  %34 = getelementptr inbounds [201 x i8], [201 x i8]* @ll2string.digits, i64 0, i64 %33, !dbg !884
  %35 = load i8, i8* %34, align 2, !dbg !884, !tbaa !420
  %36 = add i32 %21, -1, !dbg !885
  %37 = zext i32 %36 to i64, !dbg !886
  %38 = getelementptr inbounds i8, i8* %0, i64 %37, !dbg !886
  store i8 %35, i8* %38, align 1, !dbg !887, !tbaa !420
  %39 = add i32 %21, -2, !dbg !888
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !874
  %40 = icmp ugt i64 %22, 9999, !dbg !875
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !874
  br i1 %40, label %20, label %41, !dbg !874, !llvm.loop !889

; <label>:41:                                     ; preds = %20, %16
  %42 = phi i64 [ %10, %16 ], [ %26, %20 ], !dbg !891
  %43 = phi i32 [ %18, %16 ], [ %39, %20 ], !dbg !891
  %44 = icmp ult i64 %42, 10, !dbg !892
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !893
  br i1 %44, label %45, label %48, !dbg !893

; <label>:45:                                     ; preds = %41
  %46 = trunc i64 %42 to i8, !dbg !894
  %47 = add i8 %46, 48, !dbg !896
  br label %61, !dbg !897

; <label>:48:                                     ; preds = %41
  %49 = trunc i64 %42 to i32, !dbg !898
  %50 = shl i32 %49, 1, !dbg !899
  %51 = or i32 %50, 1, !dbg !901
  %52 = sext i32 %51 to i64, !dbg !902
  %53 = getelementptr inbounds [201 x i8], [201 x i8]* @ll2string.digits, i64 0, i64 %52, !dbg !902
  %54 = load i8, i8* %53, align 1, !dbg !902, !tbaa !420
  %55 = zext i32 %43 to i64, !dbg !903
  %56 = getelementptr inbounds i8, i8* %0, i64 %55, !dbg !903
  store i8 %54, i8* %56, align 1, !dbg !904, !tbaa !420
  %57 = sext i32 %50 to i64, !dbg !905
  %58 = getelementptr inbounds [201 x i8], [201 x i8]* @ll2string.digits, i64 0, i64 %57, !dbg !905
  %59 = load i8, i8* %58, align 2, !dbg !905, !tbaa !420
  %60 = add i32 %43, -1, !dbg !906
  br label %61

; <label>:61:                                     ; preds = %48, %45
  %62 = phi i32 [ %60, %48 ], [ %43, %45 ]
  %63 = phi i8 [ %59, %48 ], [ %47, %45 ]
  %64 = zext i32 %62 to i64, !dbg !907
  %65 = getelementptr inbounds i8, i8* %0, i64 %64, !dbg !907
  store i8 %63, i8* %65, align 1, !dbg !907, !tbaa !420
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %66 = icmp eq i32 %11, 0, !dbg !908
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !910
  br i1 %66, label %68, label %67, !dbg !910

; <label>:67:                                     ; preds = %61
  store i8 45, i8* %0, align 1, !dbg !911, !tbaa !420
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !912
  br label %68, !dbg !912

; <label>:68:                                     ; preds = %67, %61, %9
  %69 = phi i32 [ 0, %9 ], [ %13, %61 ], [ %13, %67 ], !dbg !913
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !914
  ret i32 %69, !dbg !914
}

; Function Attrs: noredzone nounwind
define dso_local i32 @string2ll(i8* nocapture readonly, i64, i64*) local_unnamed_addr #0 !dbg !915 {
  %4 = icmp eq i64 %1, 0, !dbg !933
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !935
  br i1 %4, label %67, label %5, !dbg !935

; <label>:5:                                      ; preds = %3
  %6 = icmp eq i64 %1, 1, !dbg !936
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !938
  %7 = load i8, i8* %0, align 1, !dbg !939, !tbaa !420
  br i1 %6, label %8, label %13, !dbg !938

; <label>:8:                                      ; preds = %5
  %9 = icmp eq i8 %7, 48, !dbg !941
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !942
  br i1 %9, label %10, label %13, !dbg !942

; <label>:10:                                     ; preds = %8
  %11 = icmp eq i64* %2, null, !dbg !943
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !946
  br i1 %11, label %67, label %12, !dbg !946

; <label>:12:                                     ; preds = %10
  store i64 0, i64* %2, align 8, !dbg !947, !tbaa !948
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !950
  br label %67, !dbg !950

; <label>:13:                                     ; preds = %5, %8
  %14 = icmp eq i8 %7, 45, !dbg !951
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !952
  br i1 %14, label %15, label %19, !dbg !952

; <label>:15:                                     ; preds = %13
  %16 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !953
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !955
  br i1 %6, label %67, label %17, !dbg !955

; <label>:17:                                     ; preds = %15
  %18 = load i8, i8* %16, align 1, !dbg !956, !tbaa !420
  br label %19, !dbg !955

; <label>:19:                                     ; preds = %17, %13
  %20 = phi i8 [ %18, %17 ], [ %7, %13 ], !dbg !956
  %21 = phi i8* [ %16, %17 ], [ %0, %13 ], !dbg !958
  %22 = phi i64 [ 2, %17 ], [ 1, %13 ]
  %23 = phi i32 [ 1, %17 ], [ 0, %13 ], !dbg !958
  %24 = sext i8 %20 to i64, !dbg !956
  %25 = icmp sgt i8 %20, 48, !dbg !959
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !960
  br i1 %25, label %26, label %67, !dbg !960

; <label>:26:                                     ; preds = %19
  %27 = icmp slt i8 %20, 58, !dbg !961
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !962
  br i1 %27, label %28, label %67, !dbg !962

; <label>:28:                                     ; preds = %26
  %29 = add nsw i64 %24, -48, !dbg !963
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !966
  %30 = icmp ult i64 %22, %1, !dbg !967
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !968
  br i1 %30, label %31, label %53, !dbg !968

; <label>:31:                                     ; preds = %28, %47
  %32 = phi i8* [ %35, %47 ], [ %21, %28 ]
  %33 = phi i64 [ %49, %47 ], [ %29, %28 ]
  %34 = phi i64 [ %50, %47 ], [ %22, %28 ]
  %35 = getelementptr inbounds i8, i8* %32, i64 1, !dbg !969
  %36 = load i8, i8* %35, align 1, !dbg !971, !tbaa !420
  %37 = sext i8 %36 to i64, !dbg !971
  %38 = icmp sgt i8 %36, 47, !dbg !972
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !973
  br i1 %38, label %39, label %52, !dbg !973

; <label>:39:                                     ; preds = %31
  %40 = icmp slt i8 %36, 58, !dbg !974
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !966
  br i1 %40, label %41, label %52, !dbg !966

; <label>:41:                                     ; preds = %39
  %42 = icmp ugt i64 %33, 1844674407370955161, !dbg !975
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !977
  br i1 %42, label %67, label %43, !dbg !977

; <label>:43:                                     ; preds = %41
  %44 = mul i64 %33, 10, !dbg !978
  %45 = sub nsw i64 47, %37, !dbg !979
  %46 = icmp ugt i64 %44, %45, !dbg !981
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !982
  br i1 %46, label %67, label %47, !dbg !982

; <label>:47:                                     ; preds = %43
  %48 = add i64 %44, -48, !dbg !983
  %49 = add i64 %48, %37, !dbg !984
  %50 = add nuw i64 %34, 1, !dbg !985
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !966
  %51 = icmp ult i64 %50, %1, !dbg !967
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !968
  br i1 %51, label %31, label %53, !dbg !968, !llvm.loop !986

; <label>:52:                                     ; preds = %39, %31
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !988
  br label %67, !dbg !989

; <label>:53:                                     ; preds = %47, %28
  %54 = phi i64 [ %29, %28 ], [ %49, %47 ], !dbg !969
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !988
  %55 = icmp eq i32 %23, 0, !dbg !991
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !993
  br i1 %55, label %62, label %56, !dbg !993

; <label>:56:                                     ; preds = %53
  %57 = icmp ugt i64 %54, -9223372036854775808, !dbg !994
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !997
  br i1 %57, label %67, label %58, !dbg !997

; <label>:58:                                     ; preds = %56
  %59 = icmp eq i64* %2, null, !dbg !998
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1000
  br i1 %59, label %67, label %60, !dbg !1000

; <label>:60:                                     ; preds = %58
  %61 = sub i64 0, %54, !dbg !1001
  store i64 %61, i64* %2, align 8, !dbg !1002, !tbaa !948
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1003
  br label %67, !dbg !1003

; <label>:62:                                     ; preds = %53
  %63 = icmp slt i64 %54, 0, !dbg !1004
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1007
  br i1 %63, label %67, label %64, !dbg !1007

; <label>:64:                                     ; preds = %62
  %65 = icmp eq i64* %2, null, !dbg !1008
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1010
  br i1 %65, label %67, label %66, !dbg !1010

; <label>:66:                                     ; preds = %64
  store i64 %54, i64* %2, align 8, !dbg !1011, !tbaa !948
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1012
  br label %67, !dbg !1012

; <label>:67:                                     ; preds = %43, %41, %60, %66, %64, %58, %62, %56, %19, %26, %15, %12, %10, %3, %52
  %68 = phi i32 [ 0, %52 ], [ 0, %3 ], [ 1, %10 ], [ 1, %12 ], [ 0, %15 ], [ 0, %26 ], [ 0, %19 ], [ 0, %56 ], [ 0, %62 ], [ 1, %58 ], [ 1, %64 ], [ 1, %66 ], [ 1, %60 ], [ 0, %41 ], [ 0, %43 ], !dbg !1013
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1015
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1016
  ret i32 %68, !dbg !1016
}

; Function Attrs: noredzone nounwind
define dso_local i32 @string2l(i8* nocapture readonly, i64, i64* nocapture) local_unnamed_addr #0 !dbg !1017 {
  %4 = alloca i64, align 8
  %5 = bitcast i64* %4 to i8*, !dbg !1029
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #7, !dbg !1029
  %6 = call i32 @string2ll(i8* %0, i64 %1, i64* nonnull %4) #5, !dbg !1031
  %7 = icmp eq i32 %6, 0, !dbg !1031
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1033
  br i1 %7, label %10, label %8, !dbg !1033

; <label>:8:                                      ; preds = %3
  %9 = load i64, i64* %4, align 8, !dbg !1034, !tbaa !948
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1036
  store i64 %9, i64* %2, align 8, !dbg !1037, !tbaa !1038
  br label %10, !dbg !1040

; <label>:10:                                     ; preds = %3, %8
  %11 = phi i32 [ 1, %8 ], [ 0, %3 ], !dbg !1041
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1041
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #7, !dbg !1042
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1042
  ret i32 %11, !dbg !1042
}

; Function Attrs: noredzone nounwind
define dso_local i32 @string2ld(i8*, i64, x86_fp80*) local_unnamed_addr #0 !dbg !1043 {
  %4 = alloca [5120 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = getelementptr inbounds [5120 x i8], [5120 x i8]* %4, i64 0, i64 0, !dbg !1061
  call void @llvm.lifetime.start.p0i8(i64 5120, i8* nonnull %6) #7, !dbg !1061
  %7 = bitcast i8** %5 to i8*, !dbg !1063
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #7, !dbg !1063
  %8 = icmp ugt i64 %1, 5119, !dbg !1064
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1066
  br i1 %8, label %47, label %9, !dbg !1066

; <label>:9:                                      ; preds = %3
  %10 = call i8* @memcpy(i8* nonnull %6, i8* %0, i64 %1) #6, !dbg !1067
  %11 = getelementptr inbounds [5120 x i8], [5120 x i8]* %4, i64 0, i64 %1, !dbg !1068
  store i8 0, i8* %11, align 1, !dbg !1069, !tbaa !420
  %12 = call i32* @__errno() #6, !dbg !1070
  store i32 0, i32* %12, align 4, !dbg !1071, !tbaa !677
  %13 = call x86_fp80 @strtold(i8* nonnull %6, i8** nonnull %5) #6, !dbg !1073
  %14 = call i8* @__locale_ctype_ptr() #6, !dbg !1075
  %15 = getelementptr inbounds i8, i8* %14, i64 1, !dbg !1075
  %16 = load i8, i8* %6, align 16, !dbg !1075, !tbaa !420
  %17 = sext i8 %16 to i64, !dbg !1075
  %18 = getelementptr inbounds i8, i8* %15, i64 %17, !dbg !1075
  %19 = load i8, i8* %18, align 1, !dbg !1075, !tbaa !420
  %20 = and i8 %19, 8, !dbg !1075
  %21 = icmp eq i8 %20, 0, !dbg !1075
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1077
  br i1 %21, label %22, label %47, !dbg !1077

; <label>:22:                                     ; preds = %9
  %23 = load i8*, i8** %5, align 8, !dbg !1078, !tbaa !754
  %24 = load i8, i8* %23, align 1, !dbg !1078, !tbaa !420
  %25 = icmp eq i8 %24, 0, !dbg !1079
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1080
  br i1 %25, label %26, label %47, !dbg !1080

; <label>:26:                                     ; preds = %22
  %27 = call i32* @__errno() #6, !dbg !1081
  %28 = load i32, i32* %27, align 4, !dbg !1081, !tbaa !677
  %29 = icmp eq i32 %28, 34, !dbg !1082
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1083
  br i1 %29, label %30, label %36, !dbg !1083

; <label>:30:                                     ; preds = %26
  %31 = fcmp oeq x86_fp80 %13, 0xK7FFF8000000000000000, !dbg !1084
  %32 = fcmp oeq x86_fp80 %13, 0xKFFFF8000000000000000, !dbg !1085
  %33 = or i1 %31, %32, !dbg !1086
  %34 = fcmp oeq x86_fp80 %13, 0xK00000000000000000000, !dbg !1087
  %35 = or i1 %34, %33, !dbg !1086
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1086
  br i1 %35, label %47, label %36, !dbg !1086

; <label>:36:                                     ; preds = %30, %26
  %37 = call i32* @__errno() #6, !dbg !1088
  %38 = load i32, i32* %37, align 4, !dbg !1088, !tbaa !677
  %39 = icmp eq i32 %38, 22, !dbg !1089
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1090
  br i1 %39, label %47, label %40, !dbg !1090

; <label>:40:                                     ; preds = %36
  %41 = fptrunc x86_fp80 %13 to double, !dbg !1091
  %42 = call i32 @__fpclassifyd(double %41) #6, !dbg !1091
  %43 = icmp eq i32 %42, 0, !dbg !1091
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1092
  br i1 %43, label %47, label %44, !dbg !1092

; <label>:44:                                     ; preds = %40
  %45 = icmp eq x86_fp80* %2, null, !dbg !1093
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1095
  br i1 %45, label %47, label %46, !dbg !1095

; <label>:46:                                     ; preds = %44
  store x86_fp80 %13, x86_fp80* %2, align 16, !dbg !1096, !tbaa !1097
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1099
  br label %47, !dbg !1099

; <label>:47:                                     ; preds = %46, %44, %30, %36, %40, %9, %22, %3
  %48 = phi i32 [ 0, %3 ], [ 0, %22 ], [ 0, %9 ], [ 0, %40 ], [ 0, %36 ], [ 0, %30 ], [ 1, %44 ], [ 1, %46 ], !dbg !1100
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1101
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #7, !dbg !1102
  call void @llvm.lifetime.end.p0i8(i64 5120, i8* nonnull %6) #7, !dbg !1102
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1102
  ret i32 %48, !dbg !1102
}

; Function Attrs: noredzone
declare dso_local x86_fp80 @strtold(i8*, i8**) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @__fpclassifyd(double) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @d2string(i8*, i64, double) local_unnamed_addr #0 !dbg !1103 {
  %4 = tail call i32 @__fpclassifyd(double %2) #6, !dbg !1119
  %5 = icmp eq i32 %4, 0, !dbg !1119
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1120
  br i1 %5, label %6, label %8, !dbg !1120

; <label>:6:                                      ; preds = %3
  %7 = tail call i32 (i8*, i64, i8*, ...) @snprintf(i8* %0, i64 %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !1121
  br label %40, !dbg !1123

; <label>:8:                                      ; preds = %3
  %9 = tail call i32 @__fpclassifyd(double %2) #6, !dbg !1124
  %10 = icmp eq i32 %9, 1, !dbg !1124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1125
  br i1 %10, label %11, label %17, !dbg !1125

; <label>:11:                                     ; preds = %8
  %12 = fcmp olt double %2, 0.000000e+00, !dbg !1126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1129
  br i1 %12, label %13, label %15, !dbg !1129

; <label>:13:                                     ; preds = %11
  %14 = tail call i32 (i8*, i64, i8*, ...) @snprintf(i8* %0, i64 %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !1130
  br label %40, !dbg !1131

; <label>:15:                                     ; preds = %11
  %16 = tail call i32 (i8*, i64, i8*, ...) @snprintf(i8* %0, i64 %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !1132
  br label %40

; <label>:17:                                     ; preds = %8
  %18 = fcmp oeq double %2, 0.000000e+00, !dbg !1133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1134
  br i1 %18, label %19, label %26, !dbg !1134

; <label>:19:                                     ; preds = %17
  %20 = fdiv double 1.000000e+00, %2, !dbg !1135
  %21 = fcmp olt double %20, 0.000000e+00, !dbg !1138
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1139
  br i1 %21, label %22, label %24, !dbg !1139

; <label>:22:                                     ; preds = %19
  %23 = tail call i32 (i8*, i64, i8*, ...) @snprintf(i8* %0, i64 %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0)) #6, !dbg !1140
  br label %40, !dbg !1141

; <label>:24:                                     ; preds = %19
  %25 = tail call i32 (i8*, i64, i8*, ...) @snprintf(i8* %0, i64 %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0)) #6, !dbg !1142
  br label %40

; <label>:26:                                     ; preds = %17
  %27 = fcmp ogt double %2, 0xC32FFFFFFFFFFFFE, !dbg !1145
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1147
  br i1 %27, label %28, label %36, !dbg !1147

; <label>:28:                                     ; preds = %26
  %29 = fcmp olt double %2, 0x4330000000000000, !dbg !1148
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1149
  br i1 %29, label %30, label %36, !dbg !1149

; <label>:30:                                     ; preds = %28
  %31 = fptosi double %2 to i64, !dbg !1150
  %32 = sitofp i64 %31 to double, !dbg !1151
  %33 = fcmp oeq double %32, %2, !dbg !1152
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1153
  br i1 %33, label %34, label %36, !dbg !1153

; <label>:34:                                     ; preds = %30
  %35 = tail call i32 @ll2string(i8* %0, i64 %1, i64 %31) #5, !dbg !1154
  br label %38, !dbg !1155

; <label>:36:                                     ; preds = %30, %28, %26
  %37 = tail call i32 (i8*, i64, i8*, ...) @snprintf(i8* %0, i64 %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), double %2) #6, !dbg !1156
  br label %38

; <label>:38:                                     ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %40

; <label>:40:                                     ; preds = %15, %13, %22, %24, %38, %6
  %41 = phi i32 [ %7, %6 ], [ %14, %13 ], [ %16, %15 ], [ %23, %22 ], [ %25, %24 ], [ %39, %38 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1157
  ret i32 %41, !dbg !1157
}

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @ld2string(i8*, i64, x86_fp80, i32) local_unnamed_addr #0 !dbg !1158 {
  %5 = fptrunc x86_fp80 %2 to double, !dbg !1177
  %6 = tail call i32 @__fpclassifyd(double %5) #6, !dbg !1177
  %7 = icmp eq i32 %6, 1, !dbg !1177
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1178
  br i1 %7, label %8, label %16, !dbg !1178

; <label>:8:                                      ; preds = %4
  %9 = icmp ult i64 %1, 5, !dbg !1179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1182
  br i1 %9, label %55, label %10, !dbg !1182

; <label>:10:                                     ; preds = %8
  %11 = fcmp ogt x86_fp80 %2, 0xK00000000000000000000, !dbg !1183
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1185
  br i1 %11, label %12, label %14, !dbg !1185

; <label>:12:                                     ; preds = %10
  %13 = tail call i8* @memcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i64 3) #6, !dbg !1186
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1189
  br label %51, !dbg !1189

; <label>:14:                                     ; preds = %10
  %15 = tail call i8* @memcpy(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 4) #6, !dbg !1190
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %51

; <label>:16:                                     ; preds = %4
  %17 = icmp eq i32 %3, 0, !dbg !1192
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1193
  br i1 %17, label %46, label %18, !dbg !1193

; <label>:18:                                     ; preds = %16
  %19 = tail call i32 (i8*, i64, i8*, ...) @snprintf(i8* %0, i64 %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), x86_fp80 %2) #6, !dbg !1194
  %20 = sext i32 %19 to i64, !dbg !1194
  %21 = add nsw i64 %20, 1, !dbg !1195
  %22 = icmp ugt i64 %21, %1, !dbg !1197
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1198
  br i1 %22, label %55, label %23, !dbg !1198

; <label>:23:                                     ; preds = %18
  %24 = tail call i8* @strchr(i8* %0, i32 46) #6, !dbg !1199
  %25 = icmp eq i8* %24, null, !dbg !1200
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1201
  br i1 %25, label %51, label %26, !dbg !1201

; <label>:26:                                     ; preds = %23
  %27 = getelementptr inbounds i8, i8* %0, i64 %20, !dbg !1202
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1204
  %28 = getelementptr inbounds i8, i8* %27, i64 -1, !dbg !1205
  %29 = load i8, i8* %28, align 1, !dbg !1207, !tbaa !420
  %30 = icmp eq i8 %29, 48, !dbg !1208
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1204
  br i1 %30, label %31, label %38, !dbg !1204

; <label>:31:                                     ; preds = %26, %31
  %32 = phi i8* [ %35, %31 ], [ %28, %26 ]
  %33 = phi i64 [ %34, %31 ], [ %20, %26 ]
  %34 = add i64 %33, -1, !dbg !1209
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1204
  %35 = getelementptr inbounds i8, i8* %32, i64 -1, !dbg !1205
  %36 = load i8, i8* %35, align 1, !dbg !1207, !tbaa !420
  %37 = icmp eq i8 %36, 48, !dbg !1208
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1204
  br i1 %37, label %31, label %38, !dbg !1204, !llvm.loop !1210

; <label>:38:                                     ; preds = %31, %26
  %39 = phi i64 [ %20, %26 ], [ %34, %31 ], !dbg !1205
  %40 = phi i8 [ %29, %26 ], [ %36, %31 ], !dbg !1207
  %41 = icmp eq i8 %40, 46, !dbg !1212
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1214
  br i1 %41, label %42, label %44, !dbg !1214

; <label>:42:                                     ; preds = %38
  %43 = add i64 %39, -1, !dbg !1215
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1216
  br label %44, !dbg !1216

; <label>:44:                                     ; preds = %42, %38
  %45 = phi i64 [ %43, %42 ], [ %39, %38 ], !dbg !1217
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1218
  br label %51, !dbg !1218

; <label>:46:                                     ; preds = %16
  %47 = tail call i32 (i8*, i64, i8*, ...) @snprintf(i8* %0, i64 %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), x86_fp80 %2) #6, !dbg !1219
  %48 = sext i32 %47 to i64, !dbg !1219
  %49 = add nsw i64 %48, 1, !dbg !1221
  %50 = icmp ugt i64 %49, %1, !dbg !1223
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1224
  br i1 %50, label %55, label %51, !dbg !1224

; <label>:51:                                     ; preds = %23, %44, %46, %12, %14
  %52 = phi i64 [ 3, %12 ], [ 4, %14 ], [ %45, %44 ], [ %20, %23 ], [ %48, %46 ], !dbg !1225
  %53 = getelementptr inbounds i8, i8* %0, i64 %52, !dbg !1226
  store i8 0, i8* %53, align 1, !dbg !1227, !tbaa !420
  %54 = trunc i64 %52 to i32, !dbg !1228
  br label %55, !dbg !1229

; <label>:55:                                     ; preds = %46, %18, %8, %51
  %56 = phi i32 [ %54, %51 ], [ 0, %8 ], [ 0, %18 ], [ 0, %46 ], !dbg !1230
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1232
  ret i32 %56, !dbg !1232
}

; Function Attrs: noredzone
declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @getRandomBytes(i8*, i64) local_unnamed_addr #0 !dbg !81 {
  %3 = alloca %struct.timeval, align 8
  %4 = alloca [20 x i8], align 16
  %5 = alloca %struct.SHA1_CTX, align 4
  %6 = load i1, i1* @getRandomBytes.seed_initialized, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1235
  br i1 %6, label %40, label %7, !dbg !1235

; <label>:7:                                      ; preds = %2
  %8 = tail call %struct.__sFILE* @fopen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #6, !dbg !1236
  %9 = icmp eq %struct.__sFILE* %8, null, !dbg !1238
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1239
  br i1 %9, label %13, label %10, !dbg !1239

; <label>:10:                                     ; preds = %7
  %11 = tail call i64 @fread(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @getRandomBytes.seed, i64 0, i64 0), i64 20, i64 1, %struct.__sFILE* nonnull %8) #6, !dbg !1240
  %12 = icmp eq i64 %11, 1, !dbg !1241
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1242
  br i1 %12, label %35, label %13, !dbg !1242

; <label>:13:                                     ; preds = %10, %7
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1245
  %14 = bitcast %struct.timeval* %3 to i8*
  %15 = ptrtoint %struct.timeval* %3 to i64
  %16 = add i64 %15, 65536
  %17 = inttoptr i64 %16 to %struct.timeval*
  %18 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i64 0, i32 0
  %19 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i64 0, i32 1
  %20 = ptrtoint %struct.__sFILE* %8 to i64
  br label %21, !dbg !1245

; <label>:21:                                     ; preds = %21, %13
  %22 = phi i64 [ 0, %13 ], [ %33, %21 ]
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %14) #7, !dbg !1259
  %23 = call i32 @gettimeofday(%struct.timeval* %17, i8* null) #6, !dbg !1261
  %24 = load i64, i64* %18, align 8, !dbg !1263, !tbaa !1264
  %25 = load i64, i64* %19, align 8, !dbg !1266, !tbaa !1267
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %14) #7, !dbg !1268
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1269
  %26 = call i32 @getpid() #6, !dbg !1270
  %27 = zext i32 %26 to i64, !dbg !1272
  %28 = xor i64 %24, %20, !dbg !1273
  %29 = xor i64 %28, %25, !dbg !1274
  %30 = xor i64 %29, %27, !dbg !1275
  %31 = trunc i64 %30 to i8, !dbg !1276
  %32 = getelementptr inbounds [20 x i8], [20 x i8]* @getRandomBytes.seed, i64 0, i64 %22, !dbg !1277
  store i8 %31, i8* %32, align 1, !dbg !1278, !tbaa !420
  %33 = add nuw nsw i64 %22, 1, !dbg !1279
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1280
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1245
  %34 = icmp eq i64 %33, 20, !dbg !1281
  br i1 %34, label %36, label %21, !dbg !1245, !llvm.loop !1282

; <label>:35:                                     ; preds = %10
  store i1 true, i1* @getRandomBytes.seed_initialized, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1284
  br label %37, !dbg !1284

; <label>:36:                                     ; preds = %21
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1285
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1284
  br i1 %9, label %39, label %37, !dbg !1284

; <label>:37:                                     ; preds = %35, %36
  %38 = call i32 @fclose(%struct.__sFILE* nonnull %8) #6, !dbg !1286
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1286
  br label %39, !dbg !1286

; <label>:39:                                     ; preds = %36, %37
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1288
  br label %40, !dbg !1288

; <label>:40:                                     ; preds = %39, %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1289
  %41 = icmp eq i64 %1, 0, !dbg !1289
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1289
  br i1 %41, label %56, label %42, !dbg !1289

; <label>:42:                                     ; preds = %40
  %43 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %44 = bitcast %struct.SHA1_CTX* %5 to i8*
  br label %45, !dbg !1289

; <label>:45:                                     ; preds = %42, %45
  %46 = phi i8* [ %0, %42 ], [ %54, %45 ]
  %47 = phi i64 [ %1, %42 ], [ %53, %45 ]
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %43) #7, !dbg !1290
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %44) #7, !dbg !1292
  %48 = icmp ult i64 %47, 20, !dbg !1293
  %49 = select i1 %48, i64 %47, i64 20, !dbg !1293
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %5) #6, !dbg !1295
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %5, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @getRandomBytes.seed, i64 0, i64 0), i32 20) #6, !dbg !1296
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %5, i8* bitcast (i64* @getRandomBytes.counter to i8*), i32 8) #6, !dbg !1297
  call void @SHA1Final(i8* nonnull %43, %struct.SHA1_CTX* nonnull %5) #6, !dbg !1298
  %50 = load i64, i64* @getRandomBytes.counter, align 8, !dbg !1299, !tbaa !1038
  %51 = add i64 %50, 1, !dbg !1299
  store i64 %51, i64* @getRandomBytes.counter, align 8, !dbg !1299, !tbaa !1038
  %52 = call i8* @memcpy(i8* %46, i8* nonnull %43, i64 %49) #6, !dbg !1300
  %53 = sub i64 %47, %49, !dbg !1301
  %54 = getelementptr inbounds i8, i8* %46, i64 %49, !dbg !1302
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %44) #7, !dbg !1303
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %43) #7, !dbg !1303
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1289
  %55 = icmp eq i64 %53, 0, !dbg !1289
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1289
  br i1 %55, label %56, label %45, !dbg !1289, !llvm.loop !1304

; <label>:56:                                     ; preds = %45, %40
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1305
  ret void, !dbg !1305
}

; Function Attrs: noredzone
declare dso_local %struct.__sFILE* @fopen(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @fread(i8*, i64, i64, %struct.__sFILE*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @getpid() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @fclose(%struct.__sFILE*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @SHA1Init(%struct.SHA1_CTX*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @SHA1Update(%struct.SHA1_CTX*, i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @SHA1Final(i8*, %struct.SHA1_CTX*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @getRandomHexChars(i8*, i64) local_unnamed_addr #0 !dbg !1306 {
  tail call void @getRandomBytes(i8* %0, i64 %1) #5, !dbg !1316
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1318
  %3 = icmp eq i64 %1, 0, !dbg !1320
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1322
  br i1 %3, label %38, label %4, !dbg !1322

; <label>:4:                                      ; preds = %2
  %5 = and i64 %1, 1, !dbg !1323
  %6 = icmp eq i64 %1, 1, !dbg !1323
  br i1 %6, label %28, label %7, !dbg !1323

; <label>:7:                                      ; preds = %4
  %8 = sub i64 %1, %5, !dbg !1323
  br label %9, !dbg !1323

; <label>:9:                                      ; preds = %9, %7
  %10 = phi i64 [ 0, %7 ], [ %25, %9 ]
  %11 = phi i64 [ %8, %7 ], [ %26, %9 ]
  %12 = getelementptr inbounds i8, i8* %0, i64 %10, !dbg !1323
  %13 = load i8, i8* %12, align 1, !dbg !1323, !tbaa !420
  %14 = and i8 %13, 15, !dbg !1324
  %15 = zext i8 %14 to i64, !dbg !1325
  %16 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.17, i64 0, i64 %15, !dbg !1325
  %17 = load i8, i8* %16, align 1, !dbg !1325, !tbaa !420
  store i8 %17, i8* %12, align 1, !dbg !1326, !tbaa !420
  %18 = or i64 %10, 1, !dbg !1327
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1328
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1322
  %19 = getelementptr inbounds i8, i8* %0, i64 %18, !dbg !1323
  %20 = load i8, i8* %19, align 1, !dbg !1323, !tbaa !420
  %21 = and i8 %20, 15, !dbg !1324
  %22 = zext i8 %21 to i64, !dbg !1325
  %23 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.17, i64 0, i64 %22, !dbg !1325
  %24 = load i8, i8* %23, align 1, !dbg !1325, !tbaa !420
  store i8 %24, i8* %19, align 1, !dbg !1326, !tbaa !420
  %25 = add i64 %10, 2, !dbg !1327
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1328
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1322
  %26 = add i64 %11, -2, !dbg !1322
  %27 = icmp eq i64 %26, 0, !dbg !1322
  br i1 %27, label %28, label %9, !dbg !1322, !llvm.loop !1329

; <label>:28:                                     ; preds = %9, %4
  %29 = phi i64 [ 0, %4 ], [ %25, %9 ]
  %30 = icmp eq i64 %5, 0, !dbg !1322
  br i1 %30, label %38, label %31, !dbg !1322

; <label>:31:                                     ; preds = %28
  %32 = getelementptr inbounds i8, i8* %0, i64 %29, !dbg !1323
  %33 = load i8, i8* %32, align 1, !dbg !1323, !tbaa !420
  %34 = and i8 %33, 15, !dbg !1324
  %35 = zext i8 %34 to i64, !dbg !1325
  %36 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.17, i64 0, i64 %35, !dbg !1325
  %37 = load i8, i8* %36, align 1, !dbg !1325, !tbaa !420
  store i8 %37, i8* %32, align 1, !dbg !1326, !tbaa !420
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1328
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1322
  br label %38, !dbg !1331

; <label>:38:                                     ; preds = %31, %28, %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1331
  ret void, !dbg !1331
}

; Function Attrs: noredzone nounwind
define dso_local i8* @getAbsolutePath(i8*) local_unnamed_addr #0 !dbg !1332 {
  %2 = alloca [1024 x i8], align 16
  %3 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0, !dbg !1350
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %3) #7, !dbg !1350
  %4 = tail call i8* @sdsnew(i8* %0) #6, !dbg !1352
  %5 = tail call i8* @sdstrim(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0)) #6, !dbg !1354
  %6 = load i8, i8* %5, align 1, !dbg !1355, !tbaa !420
  %7 = icmp eq i8 %6, 47, !dbg !1357
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1358
  br i1 %7, label %180, label %8, !dbg !1358

; <label>:8:                                      ; preds = %1
  %9 = call i8* @getcwd(i8* nonnull %3, i64 1024) #6, !dbg !1359
  %10 = icmp eq i8* %9, null, !dbg !1361
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1362
  br i1 %10, label %11, label %12, !dbg !1362

; <label>:11:                                     ; preds = %8
  call void @sdsfree(i8* %5) #6, !dbg !1363
  br label %180, !dbg !1365

; <label>:12:                                     ; preds = %8
  %13 = call i8* @sdsnew(i8* nonnull %3) #6, !dbg !1366
  %14 = getelementptr inbounds i8, i8* %13, i64 -1, !dbg !1378
  %15 = load i8, i8* %14, align 1, !dbg !1378, !tbaa !420
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1380
  %16 = trunc i8 %15 to i3, !dbg !1380
  switch i3 %16, label %38 [
    i3 0, label %17
    i3 1, label %20
    i3 2, label %24
    i3 3, label %29
    i3 -4, label %34
  ], !dbg !1380

; <label>:17:                                     ; preds = %12
  %18 = lshr i8 %15, 3, !dbg !1381
  %19 = zext i8 %18 to i64, !dbg !1381
  br label %39, !dbg !1383

; <label>:20:                                     ; preds = %12
  %21 = getelementptr inbounds i8, i8* %13, i64 -3, !dbg !1384
  %22 = load i8, i8* %21, align 1, !dbg !1385, !tbaa !420
  %23 = zext i8 %22 to i64, !dbg !1384
  br label %39, !dbg !1386

; <label>:24:                                     ; preds = %12
  %25 = getelementptr inbounds i8, i8* %13, i64 -5, !dbg !1387
  %26 = bitcast i8* %25 to i16*, !dbg !1388
  %27 = load i16, i16* %26, align 1, !dbg !1388, !tbaa !1389
  %28 = zext i16 %27 to i64, !dbg !1387
  br label %39, !dbg !1391

; <label>:29:                                     ; preds = %12
  %30 = getelementptr inbounds i8, i8* %13, i64 -9, !dbg !1392
  %31 = bitcast i8* %30 to i32*, !dbg !1393
  %32 = load i32, i32* %31, align 1, !dbg !1393, !tbaa !677
  %33 = zext i32 %32 to i64, !dbg !1392
  br label %39, !dbg !1394

; <label>:34:                                     ; preds = %12
  %35 = getelementptr inbounds i8, i8* %13, i64 -17, !dbg !1395
  %36 = bitcast i8* %35 to i64*, !dbg !1396
  %37 = load i64, i64* %36, align 1, !dbg !1396, !tbaa !1038
  br label %39, !dbg !1397

; <label>:38:                                     ; preds = %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1398
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1399
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1400
  br label %73, !dbg !1400

; <label>:39:                                     ; preds = %17, %20, %24, %29, %34
  %40 = phi i64 [ %37, %34 ], [ %33, %29 ], [ %28, %24 ], [ %23, %20 ], [ %19, %17 ], !dbg !1401
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1402
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1399
  %41 = icmp eq i64 %40, 0, !dbg !1403
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1400
  br i1 %41, label %73, label %42, !dbg !1400

; <label>:42:                                     ; preds = %39
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1407
  switch i3 %16, label %64 [
    i3 0, label %43
    i3 1, label %46
    i3 2, label %50
    i3 3, label %55
    i3 -4, label %60
  ], !dbg !1407

; <label>:43:                                     ; preds = %42
  %44 = lshr i8 %15, 3, !dbg !1408
  %45 = zext i8 %44 to i64, !dbg !1408
  br label %64, !dbg !1409

; <label>:46:                                     ; preds = %42
  %47 = getelementptr inbounds i8, i8* %13, i64 -3, !dbg !1410
  %48 = load i8, i8* %47, align 1, !dbg !1411, !tbaa !420
  %49 = zext i8 %48 to i64, !dbg !1410
  br label %64, !dbg !1412

; <label>:50:                                     ; preds = %42
  %51 = getelementptr inbounds i8, i8* %13, i64 -5, !dbg !1413
  %52 = bitcast i8* %51 to i16*, !dbg !1414
  %53 = load i16, i16* %52, align 1, !dbg !1414, !tbaa !1389
  %54 = zext i16 %53 to i64, !dbg !1413
  br label %64, !dbg !1415

; <label>:55:                                     ; preds = %42
  %56 = getelementptr inbounds i8, i8* %13, i64 -9, !dbg !1416
  %57 = bitcast i8* %56 to i32*, !dbg !1417
  %58 = load i32, i32* %57, align 1, !dbg !1417, !tbaa !677
  %59 = zext i32 %58 to i64, !dbg !1416
  br label %64, !dbg !1418

; <label>:60:                                     ; preds = %42
  %61 = getelementptr inbounds i8, i8* %13, i64 -17, !dbg !1419
  %62 = bitcast i8* %61 to i64*, !dbg !1420
  %63 = load i64, i64* %62, align 1, !dbg !1420, !tbaa !1038
  br label %64, !dbg !1421

; <label>:64:                                     ; preds = %42, %43, %46, %50, %55, %60
  %65 = phi i64 [ %63, %60 ], [ %59, %55 ], [ %54, %50 ], [ %49, %46 ], [ %45, %43 ], [ 0, %42 ], !dbg !1422
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1402
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1423
  %66 = add i64 %65, -1, !dbg !1424
  %67 = getelementptr inbounds i8, i8* %13, i64 %66, !dbg !1425
  %68 = load i8, i8* %67, align 1, !dbg !1425, !tbaa !420
  %69 = icmp eq i8 %68, 47, !dbg !1426
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1427
  br i1 %69, label %73, label %70, !dbg !1427

; <label>:70:                                     ; preds = %64
  %71 = call i8* @sdscat(i8* nonnull %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #6, !dbg !1428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1429
  %72 = getelementptr inbounds i8, i8* %71, i64 -1
  br label %73, !dbg !1429

; <label>:73:                                     ; preds = %38, %64, %39, %70
  %74 = phi i8* [ %14, %38 ], [ %14, %64 ], [ %14, %39 ], [ %72, %70 ]
  %75 = phi i8* [ %13, %38 ], [ %13, %64 ], [ %13, %39 ], [ %71, %70 ], !dbg !1430
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1431
  %76 = getelementptr inbounds i8, i8* %5, i64 -1
  %77 = getelementptr inbounds i8, i8* %5, i64 -3
  %78 = getelementptr inbounds i8, i8* %5, i64 -5
  %79 = bitcast i8* %78 to i16*
  %80 = getelementptr inbounds i8, i8* %5, i64 -9
  %81 = bitcast i8* %80 to i32*
  %82 = getelementptr inbounds i8, i8* %5, i64 -17
  %83 = bitcast i8* %82 to i64*
  %84 = getelementptr inbounds i8, i8* %5, i64 1
  %85 = getelementptr inbounds i8, i8* %5, i64 2
  %86 = getelementptr inbounds i8, i8* %75, i64 -3
  %87 = getelementptr inbounds i8, i8* %75, i64 -5
  %88 = bitcast i8* %87 to i16*
  %89 = getelementptr inbounds i8, i8* %75, i64 -9
  %90 = bitcast i8* %89 to i32*
  %91 = getelementptr inbounds i8, i8* %75, i64 -17
  %92 = bitcast i8* %91 to i64*
  %93 = getelementptr inbounds i8, i8* %75, i64 -2
  br label %94, !dbg !1431

; <label>:94:                                     ; preds = %177, %73
  %95 = load i8, i8* %76, align 1, !dbg !1434, !tbaa !420
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1436
  %96 = trunc i8 %95 to i3, !dbg !1436
  switch i3 %96, label %111 [
    i3 0, label %97
    i3 1, label %100
    i3 2, label %103
    i3 3, label %106
    i3 -4, label %109
  ], !dbg !1436

; <label>:97:                                     ; preds = %94
  %98 = lshr i8 %95, 3, !dbg !1437
  %99 = zext i8 %98 to i64, !dbg !1437
  br label %112, !dbg !1438

; <label>:100:                                    ; preds = %94
  %101 = load i8, i8* %77, align 1, !dbg !1439, !tbaa !420
  %102 = zext i8 %101 to i64, !dbg !1440
  br label %112, !dbg !1441

; <label>:103:                                    ; preds = %94
  %104 = load i16, i16* %79, align 1, !dbg !1442, !tbaa !1389
  %105 = zext i16 %104 to i64, !dbg !1443
  br label %112, !dbg !1444

; <label>:106:                                    ; preds = %94
  %107 = load i32, i32* %81, align 1, !dbg !1445, !tbaa !677
  %108 = zext i32 %107 to i64, !dbg !1446
  br label %112, !dbg !1447

; <label>:109:                                    ; preds = %94
  %110 = load i64, i64* %83, align 1, !dbg !1448, !tbaa !1038
  br label %112, !dbg !1449

; <label>:111:                                    ; preds = %94
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1450
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1451
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1452
  br label %178, !dbg !1452

; <label>:112:                                    ; preds = %97, %100, %103, %106, %109
  %113 = phi i64 [ %110, %109 ], [ %108, %106 ], [ %105, %103 ], [ %102, %100 ], [ %99, %97 ], !dbg !1453
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1430
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1451
  %114 = icmp ugt i64 %113, 2, !dbg !1454
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1452
  br i1 %114, label %115, label %178, !dbg !1452

; <label>:115:                                    ; preds = %112
  %116 = load i8, i8* %5, align 1, !dbg !1455, !tbaa !420
  %117 = icmp eq i8 %116, 46, !dbg !1456
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1457
  br i1 %117, label %118, label %178, !dbg !1457

; <label>:118:                                    ; preds = %115
  %119 = load i8, i8* %84, align 1, !dbg !1458, !tbaa !420
  %120 = icmp eq i8 %119, 46, !dbg !1459
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1460
  br i1 %120, label %121, label %178, !dbg !1460

; <label>:121:                                    ; preds = %118
  %122 = load i8, i8* %85, align 1, !dbg !1461, !tbaa !420
  %123 = icmp eq i8 %122, 47, !dbg !1462
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1431
  br i1 %123, label %124, label %178, !dbg !1431

; <label>:124:                                    ; preds = %121
  call void @sdsrange(i8* nonnull %5, i64 3, i64 -1) #6, !dbg !1463
  %125 = load i8, i8* %74, align 1, !dbg !1466, !tbaa !420
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1468
  %126 = trunc i8 %125 to i3, !dbg !1468
  switch i3 %126, label %141 [
    i3 0, label %127
    i3 1, label %130
    i3 2, label %133
    i3 3, label %136
    i3 -4, label %139
  ], !dbg !1468

; <label>:127:                                    ; preds = %124
  %128 = lshr i8 %125, 3, !dbg !1469
  %129 = zext i8 %128 to i64, !dbg !1469
  br label %142, !dbg !1470

; <label>:130:                                    ; preds = %124
  %131 = load i8, i8* %86, align 1, !dbg !1471, !tbaa !420
  %132 = zext i8 %131 to i64, !dbg !1472
  br label %142, !dbg !1473

; <label>:133:                                    ; preds = %124
  %134 = load i16, i16* %88, align 1, !dbg !1474, !tbaa !1389
  %135 = zext i16 %134 to i64, !dbg !1475
  br label %142, !dbg !1476

; <label>:136:                                    ; preds = %124
  %137 = load i32, i32* %90, align 1, !dbg !1477, !tbaa !677
  %138 = zext i32 %137 to i64, !dbg !1478
  br label %142, !dbg !1479

; <label>:139:                                    ; preds = %124
  %140 = load i64, i64* %92, align 1, !dbg !1480, !tbaa !1038
  br label %142, !dbg !1481

; <label>:141:                                    ; preds = %124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1482
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1483
  br label %176, !dbg !1484

; <label>:142:                                    ; preds = %127, %130, %133, %136, %139
  %143 = phi i64 [ %140, %139 ], [ %138, %136 ], [ %135, %133 ], [ %132, %130 ], [ %129, %127 ], !dbg !1485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1483
  %144 = icmp ugt i64 %143, 1, !dbg !1487
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1484
  br i1 %144, label %145, label %177, !dbg !1484

; <label>:145:                                    ; preds = %142
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1491
  switch i3 %126, label %160 [
    i3 0, label %146
    i3 1, label %149
    i3 2, label %152
    i3 3, label %155
    i3 -4, label %158
  ], !dbg !1491

; <label>:146:                                    ; preds = %145
  %147 = lshr i8 %125, 3, !dbg !1492
  %148 = zext i8 %147 to i64, !dbg !1492
  br label %160, !dbg !1493

; <label>:149:                                    ; preds = %145
  %150 = load i8, i8* %86, align 1, !dbg !1494, !tbaa !420
  %151 = zext i8 %150 to i64, !dbg !1495
  br label %160, !dbg !1496

; <label>:152:                                    ; preds = %145
  %153 = load i16, i16* %88, align 1, !dbg !1497, !tbaa !1389
  %154 = zext i16 %153 to i64, !dbg !1498
  br label %160, !dbg !1499

; <label>:155:                                    ; preds = %145
  %156 = load i32, i32* %90, align 1, !dbg !1500, !tbaa !677
  %157 = zext i32 %156 to i64, !dbg !1501
  br label %160, !dbg !1502

; <label>:158:                                    ; preds = %145
  %159 = load i64, i64* %92, align 1, !dbg !1503, !tbaa !1038
  br label %160, !dbg !1504

; <label>:160:                                    ; preds = %145, %146, %149, %152, %155, %158
  %161 = phi i64 [ %159, %158 ], [ %157, %155 ], [ %154, %152 ], [ %151, %149 ], [ %148, %146 ], [ 0, %145 ], !dbg !1505
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1506
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1507
  %162 = getelementptr inbounds i8, i8* %93, i64 %161, !dbg !1508
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1511
  %163 = load i8, i8* %162, align 1, !dbg !1512, !tbaa !420
  %164 = icmp eq i8 %163, 47, !dbg !1513
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1511
  br i1 %164, label %172, label %165, !dbg !1511

; <label>:165:                                    ; preds = %160, %165
  %166 = phi i32 [ %169, %165 ], [ 1, %160 ]
  %167 = phi i8* [ %168, %165 ], [ %162, %160 ]
  %168 = getelementptr inbounds i8, i8* %167, i64 -1, !dbg !1514
  %169 = add nuw nsw i32 %166, 1, !dbg !1516
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1511
  %170 = load i8, i8* %168, align 1, !dbg !1512, !tbaa !420
  %171 = icmp eq i8 %170, 47, !dbg !1513
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1511
  br i1 %171, label %172, label %165, !dbg !1511, !llvm.loop !1517

; <label>:172:                                    ; preds = %165, %160
  %173 = phi i32 [ 1, %160 ], [ %169, %165 ], !dbg !1519
  %174 = xor i32 %173, -1, !dbg !1520
  %175 = sext i32 %174 to i64, !dbg !1520
  call void @sdsrange(i8* %75, i64 0, i64 %175) #6, !dbg !1521
  br label %176, !dbg !1522

; <label>:176:                                    ; preds = %172, %141
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1506
  br label %177, !dbg !1431

; <label>:177:                                    ; preds = %176, %142
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1431
  br label %94, !dbg !1431, !llvm.loop !1523

; <label>:178:                                    ; preds = %112, %115, %118, %121, %111
  %179 = call i8* @sdscatsds(i8* %75, i8* nonnull %5) #6, !dbg !1525
  call void @sdsfree(i8* nonnull %5) #6, !dbg !1526
  br label %180, !dbg !1527

; <label>:180:                                    ; preds = %1, %178, %11
  %181 = phi i8* [ null, %11 ], [ %179, %178 ], [ %5, %1 ], !dbg !1430
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1528
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %3) #7, !dbg !1529
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1529
  ret i8* %181, !dbg !1529
}

; Function Attrs: noredzone
declare dso_local i8* @sdsnew(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdstrim(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @getcwd(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @sdsfree(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdscat(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @sdsrange(i8*, i64, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdscatsds(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i64 @getTimeZone() local_unnamed_addr #0 !dbg !1530 {
  %1 = alloca %struct.timeval, align 8
  %2 = bitcast %struct.timeval* %1 to i8*, !dbg !1545
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #7, !dbg !1545
  %3 = ptrtoint %struct.timeval* %1 to i64, !dbg !1546
  %4 = add i64 %3, 65536, !dbg !1547
  %5 = inttoptr i64 %4 to %struct.timeval*, !dbg !1548
  %6 = call i32 @gettimeofday(%struct.timeval* %5, i8* null) #6, !dbg !1550
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #7, !dbg !1552
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1553
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1554
  ret i64 0, !dbg !1554
}

; Function Attrs: noredzone nounwind
define dso_local i32 @pathIsBaseName(i8*) local_unnamed_addr #0 !dbg !1555 {
  %2 = tail call i8* @strchr(i8* %0, i32 47) #6, !dbg !1561
  %3 = icmp eq i8* %2, null, !dbg !1562
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1563
  br i1 %3, label %4, label %8, !dbg !1563

; <label>:4:                                      ; preds = %1
  %5 = tail call i8* @strchr(i8* %0, i32 92) #6, !dbg !1564
  %6 = icmp eq i8* %5, null, !dbg !1565
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %7 = zext i1 %6 to i32
  br label %8

; <label>:8:                                      ; preds = %4, %1
  %9 = phi i32 [ 0, %1 ], [ %7, %4 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1566
  ret i32 %9, !dbg !1566
}

; Function Attrs: noredzone
declare dso_local i32 @gettimeofday(%struct.timeval*, i8*) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin noredzone }
attributes #6 = { nobuiltin noredzone nounwind }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin noredzone nounwind readonly }

!llvm.module.flags = !{!358, !359, !360}
!llvm.ident = !{!361}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "digits", scope: !2, file: !3, line: 315, type: !354, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "ll2string", scope: !3, file: !3, line: 314, type: !4, isLocal: false, isDefinition: true, scopeLine: 314, flags: DIFlagPrototyped, isOptimized: true, unit: !15, retainedNodes: !339)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/util.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !7, !9, !14}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !10, line: 40, baseType: !11)
!10 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !12, line: 129, baseType: !13)
!12 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!13 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!14 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!15 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !16, retainedTypes: !17, globals: !78)
!16 = !{}
!17 = !{!6, !18, !22, !23, !26, !27, !28, !14, !29, !31, !39, !41, !54, !64, !71}
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !19, line: 60, baseType: !20)
!19 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !21, line: 105, baseType: !13)
!21 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!22 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !19, line: 48, baseType: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !21, line: 79, baseType: !25)
!25 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!27 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!28 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !33, line: 44, size: 128, elements: !34)
!33 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!34 = !{!35, !37}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !32, file: !33, line: 45, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !33, line: 34, baseType: !27)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !32, file: !33, line: 46, baseType: !38, size: 64, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "suseconds_t", file: !33, line: 39, baseType: !27)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !19, line: 82, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintptr_t", file: !21, line: 232, baseType: !13)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr8", file: !43, line: 51, size: 24, elements: !44)
!43 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/sds.h", directory: "/root/.unikraft/apps/redis/build")
!44 = !{!45, !48, !49, !50}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !42, file: !43, line: 52, baseType: !46, size: 8)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !19, line: 24, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !21, line: 43, baseType: !30)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !42, file: !43, line: 53, baseType: !46, size: 8, offset: 8)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !42, file: !43, line: 54, baseType: !30, size: 8, offset: 16)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !42, file: !43, line: 55, baseType: !51, offset: 24)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: -1)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr16", file: !43, line: 57, size: 40, elements: !56)
!56 = !{!57, !61, !62, !63}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !55, file: !43, line: 58, baseType: !58, size: 16)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !19, line: 36, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !21, line: 57, baseType: !60)
!60 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !55, file: !43, line: 59, baseType: !58, size: 16, offset: 16)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !55, file: !43, line: 60, baseType: !30, size: 8, offset: 32)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !55, file: !43, line: 61, baseType: !51, offset: 40)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr32", file: !43, line: 63, size: 72, elements: !66)
!66 = !{!67, !68, !69, !70}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !65, file: !43, line: 64, baseType: !23, size: 32)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !65, file: !43, line: 65, baseType: !23, size: 32, offset: 32)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !65, file: !43, line: 66, baseType: !30, size: 8, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !65, file: !43, line: 67, baseType: !51, offset: 72)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr64", file: !43, line: 69, size: 136, elements: !73)
!73 = !{!74, !75, !76, !77}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !72, file: !43, line: 70, baseType: !18, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !72, file: !43, line: 71, baseType: !18, size: 64, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !72, file: !43, line: 72, baseType: !30, size: 8, offset: 128)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !72, file: !43, line: 73, baseType: !51, offset: 136)
!78 = !{!0, !79, !335, !337}
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(name: "seed_initialized", scope: !81, file: !3, line: 586, type: !6, isLocal: true, isDefinition: true)
!81 = distinct !DISubprogram(name: "getRandomBytes", scope: !3, file: !3, line: 584, type: !82, isLocal: false, isDefinition: true, scopeLine: 584, flags: DIFlagPrototyped, isOptimized: true, unit: !15, retainedNodes: !84)
!82 = !DISubroutineType(types: !83)
!83 = !{null, !29, !9}
!84 = !{!85, !86, !87, !302, !306, !309, !312, !317, !334}
!85 = !DILocalVariable(name: "p", arg: 1, scope: !81, file: !3, line: 584, type: !29)
!86 = !DILocalVariable(name: "len", arg: 2, scope: !81, file: !3, line: 584, type: !9)
!87 = !DILocalVariable(name: "fp", scope: !88, file: !3, line: 595, type: !90)
!88 = distinct !DILexicalBlock(scope: !89, file: !3, line: 590, column: 28)
!89 = distinct !DILexicalBlock(scope: !81, file: !3, line: 590, column: 9)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !92, line: 66, baseType: !93)
!92 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !94, line: 287, baseType: !95)
!94 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !94, line: 181, size: 1408, elements: !96)
!96 = !{!97, !98, !99, !100, !102, !103, !108, !109, !110, !269, !275, !280, !284, !285, !286, !287, !289, !291, !292, !293, !295, !296, !300, !301}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !95, file: !94, line: 182, baseType: !29, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !95, file: !94, line: 183, baseType: !6, size: 32, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !95, file: !94, line: 184, baseType: !6, size: 32, offset: 96)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !95, file: !94, line: 185, baseType: !101, size: 16, offset: 128)
!101 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !95, file: !94, line: 186, baseType: !101, size: 16, offset: 144)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !95, file: !94, line: 187, baseType: !104, size: 128, offset: 192)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !94, line: 117, size: 128, elements: !105)
!105 = !{!106, !107}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !104, file: !94, line: 118, baseType: !29, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !104, file: !94, line: 119, baseType: !6, size: 32, offset: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !95, file: !94, line: 188, baseType: !6, size: 32, offset: 320)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !95, file: !94, line: 195, baseType: !26, size: 64, offset: 384)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !95, file: !94, line: 197, baseType: !111, size: 64, offset: 448)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DISubroutineType(types: !113)
!113 = !{!114, !115, !26, !7, !6}
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !12, line: 145, baseType: !27)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !94, line: 569, size: 14912, elements: !117)
!117 = !{!118, !119, !121, !122, !123, !124, !128, !129, !132, !133, !137, !151, !152, !153, !155, !156, !157, !233, !254, !255, !260, !267}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !116, file: !94, line: 571, baseType: !6, size: 32)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !116, file: !94, line: 576, baseType: !120, size: 64, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !116, file: !94, line: 576, baseType: !120, size: 64, offset: 128)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !116, file: !94, line: 576, baseType: !120, size: 64, offset: 192)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !116, file: !94, line: 578, baseType: !6, size: 32, offset: 256)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !116, file: !94, line: 579, baseType: !125, size: 200, offset: 288)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 200, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 25)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !116, file: !94, line: 582, baseType: !6, size: 32, offset: 512)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !116, file: !94, line: 583, baseType: !130, size: 64, offset: 576)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !94, line: 40, flags: DIFlagFwdDecl)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !116, file: !94, line: 585, baseType: !6, size: 32, offset: 640)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !116, file: !94, line: 587, baseType: !134, size: 64, offset: 704)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{null, !115}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !116, file: !94, line: 590, baseType: !138, size: 64, offset: 768)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !94, line: 47, size: 256, elements: !140)
!140 = !{!141, !142, !143, !144, !145, !146}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !139, file: !94, line: 49, baseType: !138, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !139, file: !94, line: 50, baseType: !6, size: 32, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !139, file: !94, line: 50, baseType: !6, size: 32, offset: 96)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !139, file: !94, line: 50, baseType: !6, size: 32, offset: 128)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !139, file: !94, line: 50, baseType: !6, size: 32, offset: 160)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !139, file: !94, line: 51, baseType: !147, size: 32, offset: 192)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 32, elements: !149)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !94, line: 25, baseType: !25)
!149 = !{!150}
!150 = !DISubrange(count: 1)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !116, file: !94, line: 591, baseType: !6, size: 32, offset: 832)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !116, file: !94, line: 592, baseType: !138, size: 64, offset: 896)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !116, file: !94, line: 593, baseType: !154, size: 64, offset: 960)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !116, file: !94, line: 596, baseType: !6, size: 32, offset: 1024)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !116, file: !94, line: 597, baseType: !7, size: 64, offset: 1088)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !116, file: !94, line: 632, baseType: !158, size: 2880, offset: 1152)
!158 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !116, file: !94, line: 599, size: 2880, elements: !159)
!159 = !{!160, !224}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !158, file: !94, line: 622, baseType: !161, size: 1728)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !158, file: !94, line: 601, size: 1728, elements: !162)
!162 = !{!163, !164, !165, !169, !181, !182, !183, !192, !207, !208, !209, !213, !217, !218, !219, !220, !221, !222, !223}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !161, file: !94, line: 603, baseType: !25, size: 32)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !161, file: !94, line: 604, baseType: !7, size: 64, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !161, file: !94, line: 605, baseType: !166, size: 208, offset: 128)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 208, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 26)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !161, file: !94, line: 606, baseType: !170, size: 288, offset: 352)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !94, line: 55, size: 288, elements: !171)
!171 = !{!172, !173, !174, !175, !176, !177, !178, !179, !180}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !170, file: !94, line: 57, baseType: !6, size: 32)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !170, file: !94, line: 58, baseType: !6, size: 32, offset: 32)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !170, file: !94, line: 59, baseType: !6, size: 32, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !170, file: !94, line: 60, baseType: !6, size: 32, offset: 96)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !170, file: !94, line: 61, baseType: !6, size: 32, offset: 128)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !170, file: !94, line: 62, baseType: !6, size: 32, offset: 160)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !170, file: !94, line: 63, baseType: !6, size: 32, offset: 192)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !170, file: !94, line: 64, baseType: !6, size: 32, offset: 224)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !170, file: !94, line: 65, baseType: !6, size: 32, offset: 256)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !161, file: !94, line: 607, baseType: !6, size: 32, offset: 640)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !161, file: !94, line: 608, baseType: !22, size: 64, offset: 704)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !161, file: !94, line: 609, baseType: !184, size: 112, offset: 768)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !94, line: 319, size: 112, elements: !185)
!185 = !{!186, !190, !191}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !184, file: !94, line: 320, baseType: !187, size: 48)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 48, elements: !188)
!188 = !{!189}
!189 = !DISubrange(count: 3)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !184, file: !94, line: 321, baseType: !187, size: 48, offset: 48)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !184, file: !94, line: 322, baseType: !60, size: 16, offset: 96)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !161, file: !94, line: 610, baseType: !193, size: 64, offset: 896)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !12, line: 171, baseType: !194)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 163, size: 64, elements: !195)
!195 = !{!196, !197}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !194, file: !12, line: 165, baseType: !6, size: 32)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !194, file: !12, line: 170, baseType: !198, size: 32, offset: 32)
!198 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !194, file: !12, line: 166, size: 32, elements: !199)
!199 = !{!200, !203}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !198, file: !12, line: 168, baseType: !201, size: 32)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !202, line: 124, baseType: !25)
!202 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!203 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !198, file: !12, line: 169, baseType: !204, size: 32)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 32, elements: !205)
!205 = !{!206}
!206 = !DISubrange(count: 4)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !161, file: !94, line: 611, baseType: !193, size: 64, offset: 960)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !161, file: !94, line: 612, baseType: !193, size: 64, offset: 1024)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !161, file: !94, line: 613, baseType: !210, size: 64, offset: 1088)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 64, elements: !211)
!211 = !{!212}
!212 = !DISubrange(count: 8)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !161, file: !94, line: 614, baseType: !214, size: 192, offset: 1152)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 192, elements: !215)
!215 = !{!216}
!216 = !DISubrange(count: 24)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !161, file: !94, line: 615, baseType: !6, size: 32, offset: 1344)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !161, file: !94, line: 616, baseType: !193, size: 64, offset: 1376)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !161, file: !94, line: 617, baseType: !193, size: 64, offset: 1440)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !161, file: !94, line: 618, baseType: !193, size: 64, offset: 1504)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !161, file: !94, line: 619, baseType: !193, size: 64, offset: 1568)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !161, file: !94, line: 620, baseType: !193, size: 64, offset: 1632)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !161, file: !94, line: 621, baseType: !6, size: 32, offset: 1696)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !158, file: !94, line: 631, baseType: !225, size: 2880)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !158, file: !94, line: 626, size: 2880, elements: !226)
!226 = !{!227, !231}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !225, file: !94, line: 629, baseType: !228, size: 1920)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 1920, elements: !229)
!229 = !{!230}
!230 = !DISubrange(count: 30)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !225, file: !94, line: 630, baseType: !232, size: 960, offset: 1920)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 960, elements: !229)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !116, file: !94, line: 636, baseType: !234, size: 64, offset: 4032)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !94, line: 93, size: 6336, elements: !236)
!236 = !{!237, !238, !239, !246}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !235, file: !94, line: 94, baseType: !234, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !235, file: !94, line: 95, baseType: !6, size: 32, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !235, file: !94, line: 97, baseType: !240, size: 2048, offset: 128)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 2048, elements: !244)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DISubroutineType(types: !243)
!243 = !{null}
!244 = !{!245}
!245 = !DISubrange(count: 32)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !235, file: !94, line: 98, baseType: !247, size: 4160, offset: 2176)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !94, line: 74, size: 4160, elements: !248)
!248 = !{!249, !251, !252, !253}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !247, file: !94, line: 75, baseType: !250, size: 2048)
!250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 2048, elements: !244)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !247, file: !94, line: 76, baseType: !250, size: 2048, offset: 2048)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !247, file: !94, line: 78, baseType: !148, size: 32, offset: 4096)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !247, file: !94, line: 81, baseType: !148, size: 32, offset: 4128)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !116, file: !94, line: 637, baseType: !235, size: 6336, offset: 4096)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !116, file: !94, line: 641, baseType: !256, size: 64, offset: 10432)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DISubroutineType(types: !259)
!259 = !{null, !6}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !116, file: !94, line: 646, baseType: !261, size: 192, offset: 10496)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !94, line: 291, size: 192, elements: !262)
!262 = !{!263, !265, !266}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !261, file: !94, line: 293, baseType: !264, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !261, file: !94, line: 294, baseType: !6, size: 32, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !261, file: !94, line: 295, baseType: !120, size: 64, offset: 128)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !116, file: !94, line: 648, baseType: !268, size: 4224, offset: 10688)
!268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 4224, elements: !188)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !95, file: !94, line: 199, baseType: !270, size: 64, offset: 512)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!114, !115, !26, !273, !6}
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !95, file: !94, line: 202, baseType: !276, size: 64, offset: 576)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!279, !115, !26, !279, !6}
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !12, line: 114, baseType: !27)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !95, file: !94, line: 203, baseType: !281, size: 64, offset: 640)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{!6, !115, !26}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !95, file: !94, line: 206, baseType: !104, size: 128, offset: 704)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !95, file: !94, line: 207, baseType: !29, size: 64, offset: 832)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !95, file: !94, line: 208, baseType: !6, size: 32, offset: 896)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !95, file: !94, line: 211, baseType: !288, size: 24, offset: 928)
!288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 24, elements: !188)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !95, file: !94, line: 212, baseType: !290, size: 8, offset: 952)
!290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 8, elements: !149)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !95, file: !94, line: 215, baseType: !104, size: 128, offset: 960)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !95, file: !94, line: 218, baseType: !6, size: 32, offset: 1088)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !95, file: !94, line: 219, baseType: !294, size: 64, offset: 1152)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !12, line: 44, baseType: !27)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !95, file: !94, line: 222, baseType: !115, size: 64, offset: 1216)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !95, file: !94, line: 226, baseType: !297, size: 32, offset: 1280)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !12, line: 175, baseType: !298)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !299, line: 12, baseType: !6)
!299 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!300 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !95, file: !94, line: 228, baseType: !193, size: 64, offset: 1312)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !95, file: !94, line: 229, baseType: !6, size: 32, offset: 1376)
!302 = !DILocalVariable(name: "j", scope: !303, file: !3, line: 599, type: !25)
!303 = distinct !DILexicalBlock(scope: !304, file: !3, line: 599, column: 13)
!304 = distinct !DILexicalBlock(scope: !305, file: !3, line: 596, column: 63)
!305 = distinct !DILexicalBlock(scope: !88, file: !3, line: 596, column: 13)
!306 = !DILocalVariable(name: "tv", scope: !307, file: !3, line: 600, type: !32)
!307 = distinct !DILexicalBlock(scope: !308, file: !3, line: 599, column: 61)
!308 = distinct !DILexicalBlock(scope: !303, file: !3, line: 599, column: 13)
!309 = !DILocalVariable(name: "pid", scope: !307, file: !3, line: 602, type: !310)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !311, line: 12, baseType: !6)
!311 = !DIFile(filename: "/root/.unikraft/libs/pthread-embedded/include/pte_types.h", directory: "/root/.unikraft/apps/redis/build")
!312 = !DILocalVariable(name: "digest", scope: !313, file: !3, line: 612, type: !314)
!313 = distinct !DILexicalBlock(scope: !81, file: !3, line: 611, column: 16)
!314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 160, elements: !315)
!315 = !{!316}
!316 = !DISubrange(count: 20)
!317 = !DILocalVariable(name: "ctx", scope: !313, file: !3, line: 613, type: !318)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "SHA1_CTX", file: !319, line: 14, baseType: !320)
!319 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/sha1.h", directory: "/root/.unikraft/apps/redis/build")
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !319, line: 10, size: 736, elements: !321)
!321 = !{!322, !326, !330}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !320, file: !319, line: 11, baseType: !323, size: 160)
!323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 160, elements: !324)
!324 = !{!325}
!325 = !DISubrange(count: 5)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !320, file: !319, line: 12, baseType: !327, size: 64, offset: 160)
!327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 64, elements: !328)
!328 = !{!329}
!329 = !DISubrange(count: 2)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !320, file: !319, line: 13, baseType: !331, size: 512, offset: 224)
!331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 512, elements: !332)
!332 = !{!333}
!333 = !DISubrange(count: 64)
!334 = !DILocalVariable(name: "copylen", scope: !313, file: !3, line: 614, type: !25)
!335 = !DIGlobalVariableExpression(var: !336, expr: !DIExpression())
!336 = distinct !DIGlobalVariable(name: "seed", scope: !81, file: !3, line: 587, type: !314, isLocal: true, isDefinition: true)
!337 = !DIGlobalVariableExpression(var: !338, expr: !DIExpression())
!338 = distinct !DIGlobalVariable(name: "counter", scope: !81, file: !3, line: 588, type: !18, isLocal: true, isDefinition: true)
!339 = !{!340, !341, !342, !343, !344, !345, !347, !348, !351}
!340 = !DILocalVariable(name: "dst", arg: 1, scope: !2, file: !3, line: 314, type: !7)
!341 = !DILocalVariable(name: "dstlen", arg: 2, scope: !2, file: !3, line: 314, type: !9)
!342 = !DILocalVariable(name: "svalue", arg: 3, scope: !2, file: !3, line: 314, type: !14)
!343 = !DILocalVariable(name: "negative", scope: !2, file: !3, line: 321, type: !6)
!344 = !DILocalVariable(name: "value", scope: !2, file: !3, line: 322, type: !22)
!345 = !DILocalVariable(name: "length", scope: !2, file: !3, line: 339, type: !346)
!346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!347 = !DILocalVariable(name: "next", scope: !2, file: !3, line: 343, type: !23)
!348 = !DILocalVariable(name: "i", scope: !349, file: !3, line: 347, type: !350)
!349 = distinct !DILexicalBlock(scope: !2, file: !3, line: 346, column: 26)
!350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!351 = !DILocalVariable(name: "i", scope: !352, file: !3, line: 358, type: !6)
!352 = distinct !DILexicalBlock(scope: !353, file: !3, line: 357, column: 12)
!353 = distinct !DILexicalBlock(scope: !2, file: !3, line: 355, column: 9)
!354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !274, size: 1608, elements: !355)
!355 = !{!356}
!356 = !DISubrange(count: 201)
!357 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!358 = !{i32 2, !"Dwarf Version", i32 4}
!359 = !{i32 2, !"Debug Info Version", i32 3}
!360 = !{i32 1, !"wchar_size", i32 4}
!361 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!362 = distinct !DISubprogram(name: "stringmatchlen", scope: !3, file: !3, line: 68, type: !363, isLocal: false, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, unit: !15, retainedNodes: !365)
!363 = !DISubroutineType(types: !364)
!364 = !{!6, !273, !6, !273, !6, !6}
!365 = !{!366, !367, !368, !369, !370, !371, !375, !376, !383, !384, !385, !388, !392, !394, !396, !402, !404, !409}
!366 = !DILocalVariable(name: "pattern", arg: 1, scope: !362, file: !3, line: 68, type: !273)
!367 = !DILocalVariable(name: "patternLen", arg: 2, scope: !362, file: !3, line: 68, type: !6)
!368 = !DILocalVariable(name: "string", arg: 3, scope: !362, file: !3, line: 69, type: !273)
!369 = !DILocalVariable(name: "stringLen", arg: 4, scope: !362, file: !3, line: 69, type: !6)
!370 = !DILocalVariable(name: "nocase", arg: 5, scope: !362, file: !3, line: 69, type: !6)
!371 = !DILocalVariable(name: "not", scope: !372, file: !3, line: 97, type: !6)
!372 = distinct !DILexicalBlock(scope: !373, file: !3, line: 96, column: 9)
!373 = distinct !DILexicalBlock(scope: !374, file: !3, line: 72, column: 28)
!374 = distinct !DILexicalBlock(scope: !362, file: !3, line: 71, column: 36)
!375 = !DILocalVariable(name: "match", scope: !372, file: !3, line: 97, type: !6)
!376 = !DILocalVariable(name: "start", scope: !377, file: !3, line: 120, type: !6)
!377 = distinct !DILexicalBlock(scope: !378, file: !3, line: 119, column: 66)
!378 = distinct !DILexicalBlock(scope: !379, file: !3, line: 119, column: 28)
!379 = distinct !DILexicalBlock(scope: !380, file: !3, line: 115, column: 28)
!380 = distinct !DILexicalBlock(scope: !381, file: !3, line: 113, column: 28)
!381 = distinct !DILexicalBlock(scope: !382, file: !3, line: 108, column: 21)
!382 = distinct !DILexicalBlock(scope: !372, file: !3, line: 107, column: 22)
!383 = !DILocalVariable(name: "end", scope: !377, file: !3, line: 121, type: !6)
!384 = !DILocalVariable(name: "c", scope: !377, file: !3, line: 122, type: !6)
!385 = !DILocalVariable(name: "t", scope: !386, file: !3, line: 124, type: !6)
!386 = distinct !DILexicalBlock(scope: !387, file: !3, line: 123, column: 38)
!387 = distinct !DILexicalBlock(scope: !377, file: !3, line: 123, column: 25)
!388 = !DILocalVariable(name: "__x", scope: !389, file: !3, line: 129, type: !6)
!389 = distinct !DILexicalBlock(scope: !390, file: !3, line: 129, column: 33)
!390 = distinct !DILexicalBlock(scope: !391, file: !3, line: 128, column: 33)
!391 = distinct !DILexicalBlock(scope: !377, file: !3, line: 128, column: 25)
!392 = !DILocalVariable(name: "__x", scope: !393, file: !3, line: 130, type: !6)
!393 = distinct !DILexicalBlock(scope: !390, file: !3, line: 130, column: 31)
!394 = !DILocalVariable(name: "__x", scope: !395, file: !3, line: 131, type: !6)
!395 = distinct !DILexicalBlock(scope: !390, file: !3, line: 131, column: 29)
!396 = !DILocalVariable(name: "__x", scope: !397, file: !3, line: 142, type: !6)
!397 = distinct !DILexicalBlock(scope: !398, file: !3, line: 142, column: 29)
!398 = distinct !DILexicalBlock(scope: !399, file: !3, line: 142, column: 29)
!399 = distinct !DILexicalBlock(scope: !400, file: !3, line: 141, column: 28)
!400 = distinct !DILexicalBlock(scope: !401, file: !3, line: 138, column: 25)
!401 = distinct !DILexicalBlock(scope: !378, file: !3, line: 137, column: 24)
!402 = !DILocalVariable(name: "__x", scope: !403, file: !3, line: 142, type: !6)
!403 = distinct !DILexicalBlock(scope: !398, file: !3, line: 142, column: 57)
!404 = !DILocalVariable(name: "__x", scope: !405, file: !3, line: 168, type: !6)
!405 = distinct !DILexicalBlock(scope: !406, file: !3, line: 168, column: 21)
!406 = distinct !DILexicalBlock(scope: !407, file: !3, line: 168, column: 21)
!407 = distinct !DILexicalBlock(scope: !408, file: !3, line: 167, column: 20)
!408 = distinct !DILexicalBlock(scope: !373, file: !3, line: 164, column: 17)
!409 = !DILocalVariable(name: "__x", scope: !410, file: !3, line: 168, type: !6)
!410 = distinct !DILexicalBlock(scope: !406, file: !3, line: 168, column: 49)
!411 = !DILocation(line: 68, column: 32, scope: !362)
!412 = !DILocation(line: 68, column: 45, scope: !362)
!413 = !DILocation(line: 69, column: 21, scope: !362)
!414 = !DILocation(line: 69, column: 33, scope: !362)
!415 = !DILocation(line: 69, column: 48, scope: !362)
!416 = !DILocation(line: 71, column: 5, scope: !362)
!417 = !DILocation(line: 71, column: 11, scope: !362)
!418 = !DILocation(line: 71, column: 22, scope: !362)
!419 = !DILocation(line: 72, column: 16, scope: !374)
!420 = !{!421, !421, i64 0}
!421 = !{!"omnipotent char", !422, i64 0}
!422 = !{!"Simple C/C++ TBAA"}
!423 = !DILocation(line: 72, column: 9, scope: !374)
!424 = !DILocation(line: 74, column: 20, scope: !373)
!425 = !DILocation(line: 74, column: 31, scope: !373)
!426 = !DILocation(line: 74, column: 13, scope: !373)
!427 = !DILocation(line: 76, column: 27, scope: !428)
!428 = distinct !DILexicalBlock(scope: !373, file: !3, line: 74, column: 39)
!429 = distinct !{!429, !426, !430}
!430 = !DILocation(line: 77, column: 13, scope: !373)
!431 = !DILocation(line: 78, column: 28, scope: !432)
!432 = distinct !DILexicalBlock(scope: !373, file: !3, line: 78, column: 17)
!433 = !DILocation(line: 78, column: 17, scope: !373)
!434 = !DILocation(line: 0, scope: !373)
!435 = !DILocation(line: 80, column: 13, scope: !373)
!436 = !DILocation(line: 81, column: 21, scope: !437)
!437 = distinct !DILexicalBlock(scope: !438, file: !3, line: 81, column: 21)
!438 = distinct !DILexicalBlock(scope: !373, file: !3, line: 80, column: 30)
!439 = !DILocation(line: 81, column: 21, scope: !438)
!440 = !DILocation(line: 83, column: 21, scope: !437)
!441 = !DILocation(line: 84, column: 23, scope: !438)
!442 = !DILocation(line: 85, column: 26, scope: !438)
!443 = distinct !{!443, !435, !444}
!444 = !DILocation(line: 86, column: 13, scope: !373)
!445 = !DILocation(line: 87, column: 13, scope: !373)
!446 = !DILocation(line: 90, column: 17, scope: !373)
!447 = !DILocation(line: 94, column: 13, scope: !373)
!448 = !DILocation(line: 99, column: 20, scope: !372)
!449 = !DILocation(line: 100, column: 23, scope: !372)
!450 = !DILocation(line: 101, column: 19, scope: !372)
!451 = !DILocation(line: 101, column: 30, scope: !372)
!452 = !DILocation(line: 102, column: 17, scope: !372)
!453 = !DILocation(line: 103, column: 24, scope: !454)
!454 = distinct !DILexicalBlock(scope: !455, file: !3, line: 102, column: 22)
!455 = distinct !DILexicalBlock(scope: !372, file: !3, line: 102, column: 17)
!456 = !DILocation(line: 104, column: 27, scope: !454)
!457 = !DILocation(line: 105, column: 13, scope: !454)
!458 = !DILocation(line: 107, column: 13, scope: !372)
!459 = !DILocation(line: 0, scope: !460)
!460 = distinct !DILexicalBlock(scope: !461, file: !3, line: 111, column: 25)
!461 = distinct !DILexicalBlock(scope: !381, file: !3, line: 108, column: 60)
!462 = !DILocation(line: 0, scope: !382)
!463 = !DILocation(line: 97, column: 22, scope: !372)
!464 = !DILocation(line: 108, column: 21, scope: !381)
!465 = !DILocation(line: 108, column: 32, scope: !381)
!466 = !DILocation(line: 108, column: 54, scope: !381)
!467 = !DILocation(line: 108, column: 40, scope: !381)
!468 = !DILocation(line: 109, column: 28, scope: !461)
!469 = !DILocation(line: 110, column: 31, scope: !461)
!470 = !DILocation(line: 111, column: 25, scope: !460)
!471 = !DILocation(line: 111, column: 39, scope: !460)
!472 = !DILocation(line: 111, column: 36, scope: !460)
!473 = !DILocation(line: 111, column: 25, scope: !461)
!474 = !DILocation(line: 112, column: 25, scope: !460)
!475 = !DILocation(line: 113, column: 39, scope: !380)
!476 = !DILocation(line: 113, column: 28, scope: !381)
!477 = !DILocation(line: 115, column: 39, scope: !379)
!478 = !DILocation(line: 115, column: 28, scope: !380)
!479 = !DILocation(line: 116, column: 28, scope: !480)
!480 = distinct !DILexicalBlock(scope: !379, file: !3, line: 115, column: 45)
!481 = !DILocation(line: 118, column: 21, scope: !480)
!482 = !DILocation(line: 119, column: 28, scope: !378)
!483 = !DILocation(line: 119, column: 39, scope: !378)
!484 = !DILocation(line: 119, column: 60, scope: !378)
!485 = !DILocation(line: 119, column: 46, scope: !378)
!486 = !DILocation(line: 120, column: 25, scope: !377)
!487 = !DILocation(line: 121, column: 31, scope: !377)
!488 = !DILocation(line: 121, column: 25, scope: !377)
!489 = !DILocation(line: 122, column: 29, scope: !377)
!490 = !DILocation(line: 122, column: 25, scope: !377)
!491 = !DILocation(line: 123, column: 31, scope: !387)
!492 = !DILocation(line: 123, column: 25, scope: !377)
!493 = !DILocation(line: 124, column: 29, scope: !386)
!494 = !DILocation(line: 127, column: 21, scope: !386)
!495 = !DILocation(line: 0, scope: !377)
!496 = !DILocation(line: 128, column: 25, scope: !377)
!497 = !DILocation(line: 129, column: 33, scope: !389)
!498 = !DILocation(line: 130, column: 31, scope: !393)
!499 = !DILocation(line: 131, column: 29, scope: !395)
!500 = !DILocation(line: 132, column: 21, scope: !390)
!501 = !DILocation(line: 0, scope: !386)
!502 = !DILocation(line: 134, column: 32, scope: !377)
!503 = !DILocation(line: 135, column: 27, scope: !504)
!504 = distinct !DILexicalBlock(scope: !377, file: !3, line: 135, column: 25)
!505 = !DILocation(line: 135, column: 36, scope: !504)
!506 = !DILocation(line: 135, column: 41, scope: !504)
!507 = !DILocation(line: 135, column: 25, scope: !377)
!508 = !DILocation(line: 136, column: 25, scope: !504)
!509 = !DILocation(line: 0, scope: !372)
!510 = !DILocation(line: 137, column: 17, scope: !377)
!511 = !DILocation(line: 138, column: 25, scope: !401)
!512 = !DILocation(line: 139, column: 43, scope: !513)
!513 = distinct !DILexicalBlock(scope: !514, file: !3, line: 139, column: 29)
!514 = distinct !DILexicalBlock(scope: !400, file: !3, line: 138, column: 34)
!515 = !DILocation(line: 139, column: 40, scope: !513)
!516 = !DILocation(line: 139, column: 29, scope: !514)
!517 = !DILocation(line: 140, column: 29, scope: !513)
!518 = !DILocation(line: 142, column: 29, scope: !397)
!519 = !DILocation(line: 142, column: 57, scope: !403)
!520 = !DILocation(line: 142, column: 54, scope: !398)
!521 = !DILocation(line: 142, column: 29, scope: !399)
!522 = !DILocation(line: 143, column: 29, scope: !398)
!523 = !DILocation(line: 0, scope: !454)
!524 = !DILocation(line: 146, column: 24, scope: !382)
!525 = !DILocation(line: 147, column: 27, scope: !382)
!526 = distinct !{!526, !458, !527}
!527 = !DILocation(line: 148, column: 13, scope: !372)
!528 = !DILocation(line: 0, scope: !480)
!529 = !DILocation(line: 149, column: 17, scope: !372)
!530 = !DILocation(line: 150, column: 25, scope: !531)
!531 = distinct !DILexicalBlock(scope: !372, file: !3, line: 149, column: 17)
!532 = !DILocation(line: 150, column: 17, scope: !531)
!533 = !DILocation(line: 151, column: 18, scope: !534)
!534 = distinct !DILexicalBlock(scope: !372, file: !3, line: 151, column: 17)
!535 = !DILocation(line: 151, column: 17, scope: !372)
!536 = !DILocation(line: 158, column: 28, scope: !537)
!537 = distinct !DILexicalBlock(scope: !373, file: !3, line: 158, column: 17)
!538 = !DILocation(line: 158, column: 17, scope: !373)
!539 = !DILocation(line: 159, column: 24, scope: !540)
!540 = distinct !DILexicalBlock(scope: !537, file: !3, line: 158, column: 34)
!541 = !DILocation(line: 160, column: 27, scope: !540)
!542 = !DILocation(line: 161, column: 13, scope: !540)
!543 = !DILocation(line: 164, column: 17, scope: !373)
!544 = !DILocation(line: 0, scope: !405)
!545 = !DILocation(line: 165, column: 35, scope: !546)
!546 = distinct !DILexicalBlock(scope: !547, file: !3, line: 165, column: 21)
!547 = distinct !DILexicalBlock(scope: !408, file: !3, line: 164, column: 26)
!548 = !DILocation(line: 165, column: 32, scope: !546)
!549 = !DILocation(line: 165, column: 21, scope: !547)
!550 = !DILocation(line: 166, column: 21, scope: !546)
!551 = !DILocation(line: 168, column: 21, scope: !405)
!552 = !DILocation(line: 168, column: 49, scope: !410)
!553 = !DILocation(line: 168, column: 46, scope: !406)
!554 = !DILocation(line: 168, column: 21, scope: !407)
!555 = !DILocation(line: 169, column: 21, scope: !406)
!556 = !DILocation(line: 175, column: 16, scope: !374)
!557 = !DILocation(line: 176, column: 19, scope: !374)
!558 = !DILocation(line: 177, column: 23, scope: !559)
!559 = distinct !DILexicalBlock(scope: !374, file: !3, line: 177, column: 13)
!560 = !DILocation(line: 177, column: 13, scope: !374)
!561 = distinct !{!561, !416, !562}
!562 = !DILocation(line: 184, column: 5, scope: !362)
!563 = !DILocation(line: 178, column: 19, scope: !564)
!564 = distinct !DILexicalBlock(scope: !559, file: !3, line: 177, column: 29)
!565 = !DILocation(line: 178, column: 28, scope: !564)
!566 = !DILocation(line: 178, column: 13, scope: !564)
!567 = !DILocation(line: 179, column: 24, scope: !568)
!568 = distinct !DILexicalBlock(scope: !564, file: !3, line: 178, column: 36)
!569 = !DILocation(line: 180, column: 27, scope: !568)
!570 = distinct !{!570, !566, !571}
!571 = !DILocation(line: 181, column: 13, scope: !564)
!572 = !DILocation(line: 185, column: 25, scope: !573)
!573 = distinct !DILexicalBlock(scope: !362, file: !3, line: 185, column: 9)
!574 = !DILocation(line: 0, scope: !362)
!575 = !DILocation(line: 186, column: 9, scope: !573)
!576 = !DILocation(line: 188, column: 1, scope: !362)
!577 = distinct !DISubprogram(name: "stringmatch", scope: !3, file: !3, line: 190, type: !578, isLocal: false, isDefinition: true, scopeLine: 190, flags: DIFlagPrototyped, isOptimized: true, unit: !15, retainedNodes: !580)
!578 = !DISubroutineType(types: !579)
!579 = !{!6, !273, !273, !6}
!580 = !{!581, !582, !583}
!581 = !DILocalVariable(name: "pattern", arg: 1, scope: !577, file: !3, line: 190, type: !273)
!582 = !DILocalVariable(name: "string", arg: 2, scope: !577, file: !3, line: 190, type: !273)
!583 = !DILocalVariable(name: "nocase", arg: 3, scope: !577, file: !3, line: 190, type: !6)
!584 = !DILocation(line: 190, column: 29, scope: !577)
!585 = !DILocation(line: 190, column: 50, scope: !577)
!586 = !DILocation(line: 190, column: 62, scope: !577)
!587 = !DILocation(line: 191, column: 35, scope: !577)
!588 = !DILocation(line: 191, column: 58, scope: !577)
!589 = !DILocation(line: 191, column: 12, scope: !577)
!590 = !DILocation(line: 191, column: 5, scope: !577)
!591 = distinct !DISubprogram(name: "stringmatchlen_fuzz_test", scope: !3, file: !3, line: 195, type: !592, isLocal: false, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !15, retainedNodes: !594)
!592 = !DISubroutineType(types: !593)
!593 = !{!6}
!594 = !{!595, !597, !598, !599, !600, !602, !603, !605}
!595 = !DILocalVariable(name: "str", scope: !591, file: !3, line: 196, type: !596)
!596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 256, elements: !244)
!597 = !DILocalVariable(name: "pat", scope: !591, file: !3, line: 197, type: !596)
!598 = !DILocalVariable(name: "cycles", scope: !591, file: !3, line: 198, type: !6)
!599 = !DILocalVariable(name: "total_matches", scope: !591, file: !3, line: 199, type: !6)
!600 = !DILocalVariable(name: "strlen", scope: !601, file: !3, line: 201, type: !6)
!601 = distinct !DILexicalBlock(scope: !591, file: !3, line: 200, column: 21)
!602 = !DILocalVariable(name: "patlen", scope: !601, file: !3, line: 202, type: !6)
!603 = !DILocalVariable(name: "j", scope: !604, file: !3, line: 203, type: !6)
!604 = distinct !DILexicalBlock(scope: !601, file: !3, line: 203, column: 9)
!605 = !DILocalVariable(name: "j", scope: !606, file: !3, line: 204, type: !6)
!606 = distinct !DILexicalBlock(scope: !601, file: !3, line: 204, column: 9)
!607 = !DILocation(line: 196, column: 5, scope: !591)
!608 = !DILocation(line: 196, column: 10, scope: !591)
!609 = !DILocation(line: 197, column: 5, scope: !591)
!610 = !DILocation(line: 197, column: 10, scope: !591)
!611 = !DILocation(line: 198, column: 9, scope: !591)
!612 = !DILocation(line: 199, column: 9, scope: !591)
!613 = !DILocation(line: 200, column: 5, scope: !591)
!614 = !DILocation(line: 201, column: 22, scope: !601)
!615 = !DILocation(line: 201, column: 29, scope: !601)
!616 = !DILocation(line: 201, column: 13, scope: !601)
!617 = !DILocation(line: 202, column: 22, scope: !601)
!618 = !DILocation(line: 202, column: 29, scope: !601)
!619 = !DILocation(line: 202, column: 13, scope: !601)
!620 = !DILocation(line: 203, column: 18, scope: !604)
!621 = !DILocation(line: 203, column: 14, scope: !604)
!622 = !DILocation(line: 203, column: 27, scope: !623)
!623 = distinct !DILexicalBlock(scope: !604, file: !3, line: 203, column: 9)
!624 = !DILocation(line: 203, column: 9, scope: !604)
!625 = !DILocation(line: 203, column: 51, scope: !623)
!626 = !DILocation(line: 204, column: 18, scope: !606)
!627 = !DILocation(line: 204, column: 14, scope: !606)
!628 = !DILocation(line: 204, column: 27, scope: !629)
!629 = distinct !DILexicalBlock(scope: !606, file: !3, line: 204, column: 9)
!630 = !DILocation(line: 204, column: 9, scope: !606)
!631 = !DILocation(line: 204, column: 51, scope: !629)
!632 = !DILocation(line: 203, column: 58, scope: !623)
!633 = !DILocation(line: 203, column: 42, scope: !623)
!634 = !DILocation(line: 203, column: 49, scope: !623)
!635 = !DILocation(line: 203, column: 38, scope: !623)
!636 = !DILocation(line: 203, column: 9, scope: !623)
!637 = distinct !{!637, !624, !638}
!638 = !DILocation(line: 203, column: 60, scope: !604)
!639 = !DILocation(line: 205, column: 26, scope: !601)
!640 = !DILocation(line: 205, column: 23, scope: !601)
!641 = !DILocation(line: 200, column: 17, scope: !591)
!642 = distinct !{!642, !613, !643}
!643 = !DILocation(line: 206, column: 5, scope: !591)
!644 = !DILocation(line: 204, column: 58, scope: !629)
!645 = !DILocation(line: 204, column: 42, scope: !629)
!646 = !DILocation(line: 204, column: 49, scope: !629)
!647 = !DILocation(line: 204, column: 38, scope: !629)
!648 = !DILocation(line: 204, column: 9, scope: !629)
!649 = distinct !{!649, !630, !650}
!650 = !DILocation(line: 204, column: 60, scope: !606)
!651 = !DILocation(line: 208, column: 1, scope: !591)
!652 = !DILocation(line: 207, column: 5, scope: !591)
!653 = distinct !DISubprogram(name: "memtoll", scope: !3, file: !3, line: 217, type: !654, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !15, retainedNodes: !657)
!654 = !DISubroutineType(types: !655)
!655 = !{!14, !273, !656}
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!657 = !{!658, !659, !660, !661, !665, !666, !667, !668}
!658 = !DILocalVariable(name: "p", arg: 1, scope: !653, file: !3, line: 217, type: !273)
!659 = !DILocalVariable(name: "err", arg: 2, scope: !653, file: !3, line: 217, type: !656)
!660 = !DILocalVariable(name: "u", scope: !653, file: !3, line: 218, type: !273)
!661 = !DILocalVariable(name: "buf", scope: !653, file: !3, line: 219, type: !662)
!662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 1024, elements: !663)
!663 = !{!664}
!664 = !DISubrange(count: 128)
!665 = !DILocalVariable(name: "mul", scope: !653, file: !3, line: 220, type: !27)
!666 = !DILocalVariable(name: "val", scope: !653, file: !3, line: 221, type: !14)
!667 = !DILocalVariable(name: "digits", scope: !653, file: !3, line: 222, type: !25)
!668 = !DILocalVariable(name: "endptr", scope: !653, file: !3, line: 259, type: !7)
!669 = !DILocation(line: 217, column: 31, scope: !653)
!670 = !DILocation(line: 217, column: 39, scope: !653)
!671 = !DILocation(line: 219, column: 5, scope: !653)
!672 = !DILocation(line: 219, column: 10, scope: !653)
!673 = !DILocation(line: 224, column: 9, scope: !674)
!674 = distinct !DILexicalBlock(scope: !653, file: !3, line: 224, column: 9)
!675 = !DILocation(line: 224, column: 9, scope: !653)
!676 = !DILocation(line: 224, column: 19, scope: !674)
!677 = !{!678, !678, i64 0}
!678 = !{!"int", !421, i64 0}
!679 = !DILocation(line: 224, column: 14, scope: !674)
!680 = !DILocation(line: 218, column: 17, scope: !653)
!681 = !DILocation(line: 228, column: 9, scope: !682)
!682 = distinct !DILexicalBlock(scope: !653, file: !3, line: 228, column: 9)
!683 = !DILocation(line: 228, column: 12, scope: !682)
!684 = !DILocation(line: 228, column: 9, scope: !653)
!685 = !DILocation(line: 228, column: 21, scope: !682)
!686 = !DILocation(line: 228, column: 20, scope: !682)
!687 = !DILocation(line: 229, column: 11, scope: !653)
!688 = !DILocation(line: 0, scope: !653)
!689 = !DILocation(line: 229, column: 5, scope: !653)
!690 = !DILocation(line: 229, column: 14, scope: !653)
!691 = !DILocation(line: 229, column: 17, scope: !653)
!692 = !DILocation(line: 229, column: 31, scope: !653)
!693 = distinct !{!693, !689, !692}
!694 = !DILocation(line: 230, column: 20, scope: !695)
!695 = distinct !DILexicalBlock(scope: !653, file: !3, line: 230, column: 9)
!696 = !DILocation(line: 230, column: 12, scope: !695)
!697 = !DILocation(line: 230, column: 24, scope: !695)
!698 = !DILocation(line: 230, column: 9, scope: !653)
!699 = !DILocation(line: 232, column: 17, scope: !700)
!700 = distinct !DILexicalBlock(scope: !695, file: !3, line: 232, column: 16)
!701 = !DILocation(line: 232, column: 16, scope: !695)
!702 = !DILocation(line: 234, column: 17, scope: !703)
!703 = distinct !DILexicalBlock(scope: !700, file: !3, line: 234, column: 16)
!704 = !DILocation(line: 234, column: 16, scope: !700)
!705 = !DILocation(line: 236, column: 17, scope: !706)
!706 = distinct !DILexicalBlock(scope: !703, file: !3, line: 236, column: 16)
!707 = !DILocation(line: 236, column: 16, scope: !703)
!708 = !DILocation(line: 238, column: 17, scope: !709)
!709 = distinct !DILexicalBlock(scope: !706, file: !3, line: 238, column: 16)
!710 = !DILocation(line: 238, column: 16, scope: !706)
!711 = !DILocation(line: 240, column: 17, scope: !712)
!712 = distinct !DILexicalBlock(scope: !709, file: !3, line: 240, column: 16)
!713 = !DILocation(line: 240, column: 16, scope: !709)
!714 = !DILocation(line: 242, column: 17, scope: !715)
!715 = distinct !DILexicalBlock(scope: !712, file: !3, line: 242, column: 16)
!716 = !DILocation(line: 242, column: 16, scope: !712)
!717 = !DILocation(line: 245, column: 13, scope: !718)
!718 = distinct !DILexicalBlock(scope: !715, file: !3, line: 244, column: 12)
!719 = !DILocation(line: 245, column: 23, scope: !720)
!720 = distinct !DILexicalBlock(scope: !718, file: !3, line: 245, column: 13)
!721 = !DILocation(line: 245, column: 18, scope: !720)
!722 = !DILocation(line: 0, scope: !723)
!723 = distinct !DILexicalBlock(scope: !695, file: !3, line: 230, column: 43)
!724 = !DILocation(line: 251, column: 15, scope: !653)
!725 = !DILocation(line: 0, scope: !726)
!726 = distinct !DILexicalBlock(scope: !700, file: !3, line: 232, column: 36)
!727 = !DILocation(line: 220, column: 10, scope: !653)
!728 = !DILocation(line: 252, column: 9, scope: !729)
!729 = distinct !DILexicalBlock(scope: !653, file: !3, line: 252, column: 9)
!730 = !DILocation(line: 222, column: 18, scope: !653)
!731 = !DILocation(line: 252, column: 16, scope: !729)
!732 = !DILocation(line: 252, column: 9, scope: !653)
!733 = !DILocation(line: 253, column: 13, scope: !734)
!734 = distinct !DILexicalBlock(scope: !729, file: !3, line: 252, column: 32)
!735 = !DILocation(line: 253, column: 23, scope: !736)
!736 = distinct !DILexicalBlock(scope: !734, file: !3, line: 253, column: 13)
!737 = !DILocation(line: 253, column: 18, scope: !736)
!738 = !DILocation(line: 256, column: 5, scope: !653)
!739 = !DILocation(line: 257, column: 5, scope: !653)
!740 = !DILocation(line: 257, column: 17, scope: !653)
!741 = !DILocation(line: 259, column: 5, scope: !653)
!742 = !DILocation(line: 260, column: 5, scope: !653)
!743 = !DILocation(line: 260, column: 11, scope: !653)
!744 = !DILocation(line: 259, column: 11, scope: !653)
!745 = !DILocation(line: 261, column: 11, scope: !653)
!746 = !DILocation(line: 221, column: 15, scope: !653)
!747 = !DILocation(line: 262, column: 14, scope: !748)
!748 = distinct !DILexicalBlock(scope: !653, file: !3, line: 262, column: 9)
!749 = !DILocation(line: 262, column: 19, scope: !748)
!750 = !DILocation(line: 262, column: 22, scope: !748)
!751 = !DILocation(line: 262, column: 28, scope: !748)
!752 = !DILocation(line: 262, column: 39, scope: !748)
!753 = !DILocation(line: 262, column: 43, scope: !748)
!754 = !{!755, !755, i64 0}
!755 = !{!"any pointer", !421, i64 0}
!756 = !DILocation(line: 262, column: 42, scope: !748)
!757 = !DILocation(line: 262, column: 50, scope: !748)
!758 = !DILocation(line: 262, column: 9, scope: !653)
!759 = !DILocation(line: 263, column: 13, scope: !760)
!760 = distinct !DILexicalBlock(scope: !748, file: !3, line: 262, column: 59)
!761 = !DILocation(line: 263, column: 23, scope: !762)
!762 = distinct !DILexicalBlock(scope: !760, file: !3, line: 263, column: 13)
!763 = !DILocation(line: 263, column: 18, scope: !762)
!764 = !DILocation(line: 266, column: 15, scope: !653)
!765 = !DILocation(line: 266, column: 5, scope: !653)
!766 = !DILocation(line: 0, scope: !760)
!767 = !DILocation(line: 267, column: 1, scope: !653)
!768 = !DILocation(line: 0, scope: !718)
!769 = distinct !DISubprogram(name: "digits10", scope: !3, file: !3, line: 271, type: !770, isLocal: false, isDefinition: true, scopeLine: 271, flags: DIFlagPrototyped, isOptimized: true, unit: !15, retainedNodes: !772)
!770 = !DISubroutineType(types: !771)
!771 = !{!23, !18}
!772 = !{!773}
!773 = !DILocalVariable(name: "v", arg: 1, scope: !769, file: !3, line: 271, type: !18)
!774 = !DILocation(line: 271, column: 28, scope: !769)
!775 = !DILocation(line: 272, column: 11, scope: !776)
!776 = distinct !DILexicalBlock(scope: !769, file: !3, line: 272, column: 9)
!777 = !DILocation(line: 272, column: 9, scope: !769)
!778 = !DILocation(line: 273, column: 11, scope: !779)
!779 = distinct !DILexicalBlock(scope: !769, file: !3, line: 273, column: 9)
!780 = !DILocation(line: 273, column: 9, scope: !769)
!781 = !DILocation(line: 274, column: 11, scope: !782)
!782 = distinct !DILexicalBlock(scope: !769, file: !3, line: 274, column: 9)
!783 = !DILocation(line: 274, column: 9, scope: !769)
!784 = !DILocation(line: 275, column: 11, scope: !785)
!785 = distinct !DILexicalBlock(scope: !769, file: !3, line: 275, column: 9)
!786 = !DILocation(line: 275, column: 9, scope: !769)
!787 = !DILocation(line: 276, column: 15, scope: !788)
!788 = distinct !DILexicalBlock(scope: !789, file: !3, line: 276, column: 13)
!789 = distinct !DILexicalBlock(scope: !785, file: !3, line: 275, column: 30)
!790 = !DILocation(line: 276, column: 13, scope: !789)
!791 = !DILocation(line: 277, column: 19, scope: !792)
!792 = distinct !DILexicalBlock(scope: !793, file: !3, line: 277, column: 17)
!793 = distinct !DILexicalBlock(scope: !788, file: !3, line: 276, column: 30)
!794 = !DILocation(line: 277, column: 17, scope: !793)
!795 = !DILocation(line: 278, column: 23, scope: !796)
!796 = distinct !DILexicalBlock(scope: !797, file: !3, line: 278, column: 21)
!797 = distinct !DILexicalBlock(scope: !792, file: !3, line: 277, column: 30)
!798 = !DILocation(line: 278, column: 21, scope: !797)
!799 = !DILocation(line: 279, column: 31, scope: !797)
!800 = !DILocation(line: 279, column: 26, scope: !797)
!801 = !DILocation(line: 279, column: 17, scope: !797)
!802 = !DILocation(line: 281, column: 27, scope: !793)
!803 = !DILocation(line: 281, column: 22, scope: !793)
!804 = !DILocation(line: 281, column: 13, scope: !793)
!805 = !DILocation(line: 283, column: 15, scope: !806)
!806 = distinct !DILexicalBlock(scope: !789, file: !3, line: 283, column: 13)
!807 = !DILocation(line: 283, column: 13, scope: !789)
!808 = !DILocation(line: 284, column: 27, scope: !809)
!809 = distinct !DILexicalBlock(scope: !806, file: !3, line: 283, column: 32)
!810 = !DILocation(line: 284, column: 22, scope: !809)
!811 = !DILocation(line: 284, column: 13, scope: !809)
!812 = !DILocation(line: 286, column: 24, scope: !789)
!813 = !DILocation(line: 286, column: 19, scope: !789)
!814 = !DILocation(line: 286, column: 9, scope: !789)
!815 = !DILocation(line: 288, column: 28, scope: !769)
!816 = !DILocation(line: 288, column: 17, scope: !769)
!817 = !DILocation(line: 288, column: 15, scope: !769)
!818 = !DILocation(line: 288, column: 5, scope: !769)
!819 = !DILocation(line: 0, scope: !769)
!820 = !DILocation(line: 0, scope: !776)
!821 = !DILocation(line: 289, column: 1, scope: !769)
!822 = distinct !DISubprogram(name: "sdigits10", scope: !3, file: !3, line: 292, type: !823, isLocal: false, isDefinition: true, scopeLine: 292, flags: DIFlagPrototyped, isOptimized: true, unit: !15, retainedNodes: !827)
!823 = !DISubroutineType(types: !824)
!824 = !{!23, !825}
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !19, line: 56, baseType: !826)
!826 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !21, line: 103, baseType: !27)
!827 = !{!828, !829}
!828 = !DILocalVariable(name: "v", arg: 1, scope: !822, file: !3, line: 292, type: !825)
!829 = !DILocalVariable(name: "uv", scope: !830, file: !3, line: 295, type: !18)
!830 = distinct !DILexicalBlock(scope: !831, file: !3, line: 293, column: 16)
!831 = distinct !DILexicalBlock(scope: !822, file: !3, line: 293, column: 9)
!832 = !DILocation(line: 292, column: 28, scope: !822)
!833 = !DILocation(line: 293, column: 11, scope: !831)
!834 = !DILocation(line: 293, column: 9, scope: !822)
!835 = !DILocation(line: 295, column: 26, scope: !830)
!836 = !DILocation(line: 296, column: 33, scope: !830)
!837 = !DILocation(line: 295, column: 23, scope: !830)
!838 = !DILocation(line: 295, column: 18, scope: !830)
!839 = !DILocation(line: 297, column: 16, scope: !830)
!840 = !DILocation(line: 297, column: 28, scope: !830)
!841 = !DILocation(line: 299, column: 16, scope: !842)
!842 = distinct !DILexicalBlock(scope: !831, file: !3, line: 298, column: 12)
!843 = !DILocation(line: 299, column: 9, scope: !842)
!844 = !DILocation(line: 0, scope: !842)
!845 = !DILocation(line: 301, column: 1, scope: !822)
!846 = !DILocation(line: 314, column: 21, scope: !2)
!847 = !DILocation(line: 314, column: 33, scope: !2)
!848 = !DILocation(line: 314, column: 51, scope: !2)
!849 = !DILocation(line: 326, column: 16, scope: !850)
!850 = distinct !DILexicalBlock(scope: !2, file: !3, line: 326, column: 9)
!851 = !DILocation(line: 326, column: 9, scope: !2)
!852 = !DILocation(line: 327, column: 20, scope: !853)
!853 = distinct !DILexicalBlock(scope: !854, file: !3, line: 327, column: 13)
!854 = distinct !DILexicalBlock(scope: !850, file: !3, line: 326, column: 21)
!855 = !DILocation(line: 327, column: 13, scope: !854)
!856 = !DILocation(line: 328, column: 21, scope: !857)
!857 = distinct !DILexicalBlock(scope: !853, file: !3, line: 327, column: 34)
!858 = !DILocation(line: 322, column: 24, scope: !2)
!859 = !DILocation(line: 321, column: 9, scope: !2)
!860 = !DILocation(line: 333, column: 5, scope: !854)
!861 = !DILocation(line: 0, scope: !862)
!862 = distinct !DILexicalBlock(scope: !850, file: !3, line: 333, column: 12)
!863 = !DILocation(line: 339, column: 29, scope: !2)
!864 = !DILocation(line: 339, column: 44, scope: !2)
!865 = !DILocation(line: 339, column: 20, scope: !2)
!866 = !DILocation(line: 340, column: 9, scope: !867)
!867 = distinct !DILexicalBlock(scope: !2, file: !3, line: 340, column: 9)
!868 = !DILocation(line: 340, column: 16, scope: !867)
!869 = !DILocation(line: 340, column: 9, scope: !2)
!870 = !DILocation(line: 343, column: 14, scope: !2)
!871 = !DILocation(line: 344, column: 5, scope: !2)
!872 = !DILocation(line: 344, column: 15, scope: !2)
!873 = !DILocation(line: 345, column: 9, scope: !2)
!874 = !DILocation(line: 346, column: 5, scope: !2)
!875 = !DILocation(line: 346, column: 18, scope: !2)
!876 = !DILocation(line: 347, column: 30, scope: !349)
!877 = !DILocation(line: 347, column: 23, scope: !349)
!878 = !DILocation(line: 347, column: 19, scope: !349)
!879 = !DILocation(line: 348, column: 15, scope: !349)
!880 = !DILocation(line: 349, column: 30, scope: !349)
!881 = !DILocation(line: 349, column: 21, scope: !349)
!882 = !DILocation(line: 349, column: 9, scope: !349)
!883 = !DILocation(line: 349, column: 19, scope: !349)
!884 = !DILocation(line: 350, column: 25, scope: !349)
!885 = !DILocation(line: 350, column: 18, scope: !349)
!886 = !DILocation(line: 350, column: 9, scope: !349)
!887 = !DILocation(line: 350, column: 23, scope: !349)
!888 = !DILocation(line: 351, column: 14, scope: !349)
!889 = distinct !{!889, !874, !890}
!890 = !DILocation(line: 352, column: 5, scope: !2)
!891 = !DILocation(line: 0, scope: !349)
!892 = !DILocation(line: 355, column: 15, scope: !353)
!893 = !DILocation(line: 355, column: 9, scope: !2)
!894 = !DILocation(line: 356, column: 27, scope: !895)
!895 = distinct !DILexicalBlock(scope: !353, file: !3, line: 355, column: 21)
!896 = !DILocation(line: 356, column: 25, scope: !895)
!897 = !DILocation(line: 357, column: 5, scope: !895)
!898 = !DILocation(line: 358, column: 17, scope: !352)
!899 = !DILocation(line: 358, column: 34, scope: !352)
!900 = !DILocation(line: 358, column: 13, scope: !352)
!901 = !DILocation(line: 359, column: 30, scope: !352)
!902 = !DILocation(line: 359, column: 21, scope: !352)
!903 = !DILocation(line: 359, column: 9, scope: !352)
!904 = !DILocation(line: 359, column: 19, scope: !352)
!905 = !DILocation(line: 360, column: 25, scope: !352)
!906 = !DILocation(line: 360, column: 18, scope: !352)
!907 = !DILocation(line: 0, scope: !895)
!908 = !DILocation(line: 364, column: 9, scope: !909)
!909 = distinct !DILexicalBlock(scope: !2, file: !3, line: 364, column: 9)
!910 = !DILocation(line: 364, column: 9, scope: !2)
!911 = !DILocation(line: 364, column: 26, scope: !909)
!912 = !DILocation(line: 364, column: 19, scope: !909)
!913 = !DILocation(line: 0, scope: !2)
!914 = !DILocation(line: 366, column: 1, scope: !2)
!915 = distinct !DISubprogram(name: "string2ll", scope: !3, file: !3, line: 380, type: !916, isLocal: false, isDefinition: true, scopeLine: 380, flags: DIFlagPrototyped, isOptimized: true, unit: !15, retainedNodes: !919)
!916 = !DISubroutineType(types: !917)
!917 = !{!6, !273, !9, !918}
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!919 = !{!920, !921, !922, !923, !924, !925, !926}
!920 = !DILocalVariable(name: "s", arg: 1, scope: !915, file: !3, line: 380, type: !273)
!921 = !DILocalVariable(name: "slen", arg: 2, scope: !915, file: !3, line: 380, type: !9)
!922 = !DILocalVariable(name: "value", arg: 3, scope: !915, file: !3, line: 380, type: !918)
!923 = !DILocalVariable(name: "p", scope: !915, file: !3, line: 381, type: !273)
!924 = !DILocalVariable(name: "plen", scope: !915, file: !3, line: 382, type: !9)
!925 = !DILocalVariable(name: "negative", scope: !915, file: !3, line: 383, type: !6)
!926 = !DILocalVariable(name: "v", scope: !915, file: !3, line: 384, type: !22)
!927 = !DILocation(line: 380, column: 27, scope: !915)
!928 = !DILocation(line: 380, column: 37, scope: !915)
!929 = !DILocation(line: 380, column: 54, scope: !915)
!930 = !DILocation(line: 381, column: 17, scope: !915)
!931 = !DILocation(line: 382, column: 12, scope: !915)
!932 = !DILocation(line: 383, column: 9, scope: !915)
!933 = !DILocation(line: 387, column: 14, scope: !934)
!934 = distinct !DILexicalBlock(scope: !915, file: !3, line: 387, column: 9)
!935 = !DILocation(line: 387, column: 9, scope: !915)
!936 = !DILocation(line: 391, column: 14, scope: !937)
!937 = distinct !DILexicalBlock(scope: !915, file: !3, line: 391, column: 9)
!938 = !DILocation(line: 391, column: 19, scope: !937)
!939 = !DILocation(line: 0, scope: !940)
!940 = distinct !DILexicalBlock(scope: !915, file: !3, line: 398, column: 9)
!941 = !DILocation(line: 391, column: 27, scope: !937)
!942 = !DILocation(line: 391, column: 9, scope: !915)
!943 = !DILocation(line: 392, column: 19, scope: !944)
!944 = distinct !DILexicalBlock(scope: !945, file: !3, line: 392, column: 13)
!945 = distinct !DILexicalBlock(scope: !937, file: !3, line: 391, column: 35)
!946 = !DILocation(line: 392, column: 13, scope: !945)
!947 = !DILocation(line: 392, column: 35, scope: !944)
!948 = !{!949, !949, i64 0}
!949 = !{!"long long", !421, i64 0}
!950 = !DILocation(line: 392, column: 28, scope: !944)
!951 = !DILocation(line: 398, column: 14, scope: !940)
!952 = !DILocation(line: 398, column: 9, scope: !915)
!953 = !DILocation(line: 400, column: 10, scope: !954)
!954 = distinct !DILexicalBlock(scope: !940, file: !3, line: 398, column: 22)
!955 = !DILocation(line: 403, column: 13, scope: !954)
!956 = !DILocation(line: 408, column: 9, scope: !957)
!957 = distinct !DILexicalBlock(scope: !915, file: !3, line: 408, column: 9)
!958 = !DILocation(line: 0, scope: !915)
!959 = !DILocation(line: 408, column: 14, scope: !957)
!960 = !DILocation(line: 408, column: 21, scope: !957)
!961 = !DILocation(line: 408, column: 29, scope: !957)
!962 = !DILocation(line: 408, column: 9, scope: !915)
!963 = !DILocation(line: 409, column: 17, scope: !964)
!964 = distinct !DILexicalBlock(scope: !957, file: !3, line: 408, column: 37)
!965 = !DILocation(line: 384, column: 24, scope: !915)
!966 = !DILocation(line: 416, column: 5, scope: !915)
!967 = !DILocation(line: 416, column: 17, scope: !915)
!968 = !DILocation(line: 416, column: 24, scope: !915)
!969 = !DILocation(line: 0, scope: !970)
!970 = distinct !DILexicalBlock(scope: !915, file: !3, line: 416, column: 55)
!971 = !DILocation(line: 416, column: 27, scope: !915)
!972 = !DILocation(line: 416, column: 32, scope: !915)
!973 = !DILocation(line: 416, column: 39, scope: !915)
!974 = !DILocation(line: 416, column: 47, scope: !915)
!975 = !DILocation(line: 417, column: 15, scope: !976)
!976 = distinct !DILexicalBlock(scope: !970, file: !3, line: 417, column: 13)
!977 = !DILocation(line: 417, column: 13, scope: !970)
!978 = !DILocation(line: 419, column: 11, scope: !970)
!979 = !DILocation(line: 421, column: 29, scope: !980)
!980 = distinct !DILexicalBlock(scope: !970, file: !3, line: 421, column: 13)
!981 = !DILocation(line: 421, column: 15, scope: !980)
!982 = !DILocation(line: 421, column: 13, scope: !970)
!983 = !DILocation(line: 421, column: 36, scope: !980)
!984 = !DILocation(line: 423, column: 11, scope: !970)
!985 = !DILocation(line: 425, column: 18, scope: !970)
!986 = distinct !{!986, !966, !987}
!987 = !DILocation(line: 426, column: 5, scope: !915)
!988 = !DILocation(line: 429, column: 9, scope: !915)
!989 = !DILocation(line: 430, column: 9, scope: !990)
!990 = distinct !DILexicalBlock(scope: !915, file: !3, line: 429, column: 9)
!991 = !DILocation(line: 434, column: 9, scope: !992)
!992 = distinct !DILexicalBlock(scope: !915, file: !3, line: 434, column: 9)
!993 = !DILocation(line: 434, column: 9, scope: !915)
!994 = !DILocation(line: 435, column: 15, scope: !995)
!995 = distinct !DILexicalBlock(scope: !996, file: !3, line: 435, column: 13)
!996 = distinct !DILexicalBlock(scope: !992, file: !3, line: 434, column: 19)
!997 = !DILocation(line: 435, column: 13, scope: !996)
!998 = !DILocation(line: 437, column: 19, scope: !999)
!999 = distinct !DILexicalBlock(scope: !996, file: !3, line: 437, column: 13)
!1000 = !DILocation(line: 437, column: 13, scope: !996)
!1001 = !DILocation(line: 437, column: 37, scope: !999)
!1002 = !DILocation(line: 437, column: 35, scope: !999)
!1003 = !DILocation(line: 437, column: 28, scope: !999)
!1004 = !DILocation(line: 439, column: 15, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 439, column: 13)
!1006 = distinct !DILexicalBlock(scope: !992, file: !3, line: 438, column: 12)
!1007 = !DILocation(line: 439, column: 13, scope: !1006)
!1008 = !DILocation(line: 441, column: 19, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 441, column: 13)
!1010 = !DILocation(line: 441, column: 13, scope: !1006)
!1011 = !DILocation(line: 441, column: 35, scope: !1009)
!1012 = !DILocation(line: 441, column: 28, scope: !1009)
!1013 = !DILocation(line: 0, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !957, file: !3, line: 411, column: 12)
!1015 = !DILocation(line: 0, scope: !934)
!1016 = !DILocation(line: 444, column: 1, scope: !915)
!1017 = distinct !DISubprogram(name: "string2l", scope: !3, file: !3, line: 449, type: !1018, isLocal: false, isDefinition: true, scopeLine: 449, flags: DIFlagPrototyped, isOptimized: true, unit: !15, retainedNodes: !1021)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!6, !273, !9, !1020}
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!1021 = !{!1022, !1023, !1024, !1025}
!1022 = !DILocalVariable(name: "s", arg: 1, scope: !1017, file: !3, line: 449, type: !273)
!1023 = !DILocalVariable(name: "slen", arg: 2, scope: !1017, file: !3, line: 449, type: !9)
!1024 = !DILocalVariable(name: "lval", arg: 3, scope: !1017, file: !3, line: 449, type: !1020)
!1025 = !DILocalVariable(name: "llval", scope: !1017, file: !3, line: 450, type: !14)
!1026 = !DILocation(line: 449, column: 26, scope: !1017)
!1027 = !DILocation(line: 449, column: 36, scope: !1017)
!1028 = !DILocation(line: 449, column: 48, scope: !1017)
!1029 = !DILocation(line: 450, column: 5, scope: !1017)
!1030 = !DILocation(line: 450, column: 15, scope: !1017)
!1031 = !DILocation(line: 452, column: 10, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 452, column: 9)
!1033 = !DILocation(line: 452, column: 9, scope: !1017)
!1034 = !DILocation(line: 455, column: 9, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 455, column: 9)
!1036 = !DILocation(line: 455, column: 26, scope: !1035)
!1037 = !DILocation(line: 458, column: 11, scope: !1017)
!1038 = !{!1039, !1039, i64 0}
!1039 = !{!"long", !421, i64 0}
!1040 = !DILocation(line: 459, column: 5, scope: !1017)
!1041 = !DILocation(line: 0, scope: !1032)
!1042 = !DILocation(line: 460, column: 1, scope: !1017)
!1043 = distinct !DISubprogram(name: "string2ld", scope: !3, file: !3, line: 469, type: !1044, isLocal: false, isDefinition: true, scopeLine: 469, flags: DIFlagPrototyped, isOptimized: true, unit: !15, retainedNodes: !1048)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!6, !273, !9, !1046}
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!1048 = !{!1049, !1050, !1051, !1052, !1056, !1057}
!1049 = !DILocalVariable(name: "s", arg: 1, scope: !1043, file: !3, line: 469, type: !273)
!1050 = !DILocalVariable(name: "slen", arg: 2, scope: !1043, file: !3, line: 469, type: !9)
!1051 = !DILocalVariable(name: "dp", arg: 3, scope: !1043, file: !3, line: 469, type: !1046)
!1052 = !DILocalVariable(name: "buf", scope: !1043, file: !3, line: 470, type: !1053)
!1053 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 40960, elements: !1054)
!1054 = !{!1055}
!1055 = !DISubrange(count: 5120)
!1056 = !DILocalVariable(name: "value", scope: !1043, file: !3, line: 471, type: !1047)
!1057 = !DILocalVariable(name: "eptr", scope: !1043, file: !3, line: 472, type: !7)
!1058 = !DILocation(line: 469, column: 27, scope: !1043)
!1059 = !DILocation(line: 469, column: 37, scope: !1043)
!1060 = !DILocation(line: 469, column: 56, scope: !1043)
!1061 = !DILocation(line: 470, column: 5, scope: !1043)
!1062 = !DILocation(line: 470, column: 10, scope: !1043)
!1063 = !DILocation(line: 472, column: 5, scope: !1043)
!1064 = !DILocation(line: 474, column: 14, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 474, column: 9)
!1066 = !DILocation(line: 474, column: 9, scope: !1043)
!1067 = !DILocation(line: 475, column: 5, scope: !1043)
!1068 = !DILocation(line: 476, column: 5, scope: !1043)
!1069 = !DILocation(line: 476, column: 15, scope: !1043)
!1070 = !DILocation(line: 478, column: 5, scope: !1043)
!1071 = !DILocation(line: 478, column: 11, scope: !1043)
!1072 = !DILocation(line: 472, column: 11, scope: !1043)
!1073 = !DILocation(line: 479, column: 13, scope: !1043)
!1074 = !DILocation(line: 471, column: 17, scope: !1043)
!1075 = !DILocation(line: 480, column: 9, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 480, column: 9)
!1077 = !DILocation(line: 480, column: 25, scope: !1076)
!1078 = !DILocation(line: 480, column: 28, scope: !1076)
!1079 = !DILocation(line: 480, column: 36, scope: !1076)
!1080 = !DILocation(line: 480, column: 44, scope: !1076)
!1081 = !DILocation(line: 481, column: 10, scope: !1076)
!1082 = !DILocation(line: 481, column: 16, scope: !1076)
!1083 = !DILocation(line: 481, column: 26, scope: !1076)
!1084 = !DILocation(line: 482, column: 20, scope: !1076)
!1085 = !DILocation(line: 482, column: 41, scope: !1076)
!1086 = !DILocation(line: 482, column: 32, scope: !1076)
!1087 = !DILocation(line: 482, column: 63, scope: !1076)
!1088 = !DILocation(line: 483, column: 9, scope: !1076)
!1089 = !DILocation(line: 483, column: 15, scope: !1076)
!1090 = !DILocation(line: 483, column: 25, scope: !1076)
!1091 = !DILocation(line: 484, column: 9, scope: !1076)
!1092 = !DILocation(line: 480, column: 9, scope: !1043)
!1093 = !DILocation(line: 487, column: 9, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 487, column: 9)
!1095 = !DILocation(line: 487, column: 9, scope: !1043)
!1096 = !DILocation(line: 487, column: 17, scope: !1094)
!1097 = !{!1098, !1098, i64 0}
!1098 = !{!"long double", !421, i64 0}
!1099 = !DILocation(line: 487, column: 13, scope: !1094)
!1100 = !DILocation(line: 0, scope: !1043)
!1101 = !DILocation(line: 0, scope: !1065)
!1102 = !DILocation(line: 489, column: 1, scope: !1043)
!1103 = distinct !DISubprogram(name: "d2string", scope: !3, file: !3, line: 496, type: !1104, isLocal: false, isDefinition: true, scopeLine: 496, flags: DIFlagPrototyped, isOptimized: true, unit: !15, retainedNodes: !1106)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{!6, !7, !9, !28}
!1106 = !{!1107, !1108, !1109, !1110, !1115}
!1107 = !DILocalVariable(name: "buf", arg: 1, scope: !1103, file: !3, line: 496, type: !7)
!1108 = !DILocalVariable(name: "len", arg: 2, scope: !1103, file: !3, line: 496, type: !9)
!1109 = !DILocalVariable(name: "value", arg: 3, scope: !1103, file: !3, line: 496, type: !28)
!1110 = !DILocalVariable(name: "min", scope: !1111, file: !3, line: 521, type: !28)
!1111 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 510, column: 12)
!1112 = distinct !DILexicalBlock(scope: !1113, file: !3, line: 504, column: 16)
!1113 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 499, column: 16)
!1114 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 497, column: 9)
!1115 = !DILocalVariable(name: "max", scope: !1111, file: !3, line: 522, type: !28)
!1116 = !DILocation(line: 496, column: 20, scope: !1103)
!1117 = !DILocation(line: 496, column: 32, scope: !1103)
!1118 = !DILocation(line: 496, column: 44, scope: !1103)
!1119 = !DILocation(line: 497, column: 9, scope: !1114)
!1120 = !DILocation(line: 497, column: 9, scope: !1103)
!1121 = !DILocation(line: 498, column: 15, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 497, column: 23)
!1123 = !DILocation(line: 499, column: 5, scope: !1122)
!1124 = !DILocation(line: 499, column: 16, scope: !1113)
!1125 = !DILocation(line: 499, column: 16, scope: !1114)
!1126 = !DILocation(line: 500, column: 19, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 500, column: 13)
!1128 = distinct !DILexicalBlock(scope: !1113, file: !3, line: 499, column: 30)
!1129 = !DILocation(line: 500, column: 13, scope: !1128)
!1130 = !DILocation(line: 501, column: 19, scope: !1127)
!1131 = !DILocation(line: 501, column: 13, scope: !1127)
!1132 = !DILocation(line: 503, column: 19, scope: !1127)
!1133 = !DILocation(line: 504, column: 22, scope: !1112)
!1134 = !DILocation(line: 504, column: 16, scope: !1113)
!1135 = !DILocation(line: 506, column: 16, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 506, column: 13)
!1137 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 504, column: 28)
!1138 = !DILocation(line: 506, column: 23, scope: !1136)
!1139 = !DILocation(line: 506, column: 13, scope: !1137)
!1140 = !DILocation(line: 507, column: 19, scope: !1136)
!1141 = !DILocation(line: 507, column: 13, scope: !1136)
!1142 = !DILocation(line: 509, column: 19, scope: !1136)
!1143 = !DILocation(line: 521, column: 16, scope: !1111)
!1144 = !DILocation(line: 522, column: 16, scope: !1111)
!1145 = !DILocation(line: 523, column: 19, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1111, file: !3, line: 523, column: 13)
!1147 = !DILocation(line: 523, column: 25, scope: !1146)
!1148 = !DILocation(line: 523, column: 34, scope: !1146)
!1149 = !DILocation(line: 523, column: 40, scope: !1146)
!1150 = !DILocation(line: 523, column: 62, scope: !1146)
!1151 = !DILocation(line: 523, column: 53, scope: !1146)
!1152 = !DILocation(line: 523, column: 49, scope: !1146)
!1153 = !DILocation(line: 523, column: 13, scope: !1111)
!1154 = !DILocation(line: 524, column: 19, scope: !1146)
!1155 = !DILocation(line: 524, column: 13, scope: !1146)
!1156 = !DILocation(line: 527, column: 19, scope: !1146)
!1157 = !DILocation(line: 530, column: 5, scope: !1103)
!1158 = distinct !DISubprogram(name: "ld2string", scope: !3, file: !3, line: 540, type: !1159, isLocal: false, isDefinition: true, scopeLine: 540, flags: DIFlagPrototyped, isOptimized: true, unit: !15, retainedNodes: !1161)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{!6, !7, !9, !1047, !6}
!1161 = !{!1162, !1163, !1164, !1165, !1166, !1167}
!1162 = !DILocalVariable(name: "buf", arg: 1, scope: !1158, file: !3, line: 540, type: !7)
!1163 = !DILocalVariable(name: "len", arg: 2, scope: !1158, file: !3, line: 540, type: !9)
!1164 = !DILocalVariable(name: "value", arg: 3, scope: !1158, file: !3, line: 540, type: !1047)
!1165 = !DILocalVariable(name: "humanfriendly", arg: 4, scope: !1158, file: !3, line: 540, type: !6)
!1166 = !DILocalVariable(name: "l", scope: !1158, file: !3, line: 541, type: !9)
!1167 = !DILocalVariable(name: "p", scope: !1168, file: !3, line: 564, type: !7)
!1168 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 563, column: 38)
!1169 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 563, column: 13)
!1170 = distinct !DILexicalBlock(scope: !1171, file: !3, line: 554, column: 31)
!1171 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 554, column: 16)
!1172 = distinct !DILexicalBlock(scope: !1158, file: !3, line: 543, column: 9)
!1173 = !DILocation(line: 540, column: 21, scope: !1158)
!1174 = !DILocation(line: 540, column: 33, scope: !1158)
!1175 = !DILocation(line: 540, column: 50, scope: !1158)
!1176 = !DILocation(line: 540, column: 61, scope: !1158)
!1177 = !DILocation(line: 543, column: 9, scope: !1172)
!1178 = !DILocation(line: 543, column: 9, scope: !1158)
!1179 = !DILocation(line: 546, column: 17, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1181, file: !3, line: 546, column: 13)
!1181 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 543, column: 23)
!1182 = !DILocation(line: 546, column: 13, scope: !1181)
!1183 = !DILocation(line: 547, column: 19, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1181, file: !3, line: 547, column: 13)
!1185 = !DILocation(line: 547, column: 13, scope: !1181)
!1186 = !DILocation(line: 548, column: 13, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 547, column: 24)
!1188 = !DILocation(line: 541, column: 12, scope: !1158)
!1189 = !DILocation(line: 550, column: 9, scope: !1187)
!1190 = !DILocation(line: 551, column: 13, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 550, column: 16)
!1192 = !DILocation(line: 554, column: 16, scope: !1171)
!1193 = !DILocation(line: 554, column: 16, scope: !1172)
!1194 = !DILocation(line: 560, column: 13, scope: !1170)
!1195 = !DILocation(line: 561, column: 14, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 561, column: 13)
!1197 = !DILocation(line: 561, column: 17, scope: !1196)
!1198 = !DILocation(line: 561, column: 13, scope: !1170)
!1199 = !DILocation(line: 563, column: 13, scope: !1169)
!1200 = !DILocation(line: 563, column: 29, scope: !1169)
!1201 = !DILocation(line: 563, column: 13, scope: !1170)
!1202 = !DILocation(line: 564, column: 26, scope: !1168)
!1203 = !DILocation(line: 564, column: 19, scope: !1168)
!1204 = !DILocation(line: 565, column: 13, scope: !1168)
!1205 = !DILocation(line: 0, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 565, column: 30)
!1207 = !DILocation(line: 565, column: 19, scope: !1168)
!1208 = !DILocation(line: 565, column: 22, scope: !1168)
!1209 = !DILocation(line: 567, column: 18, scope: !1206)
!1210 = distinct !{!1210, !1204, !1211}
!1211 = !DILocation(line: 568, column: 13, scope: !1168)
!1212 = !DILocation(line: 569, column: 20, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 569, column: 17)
!1214 = !DILocation(line: 569, column: 17, scope: !1168)
!1215 = !DILocation(line: 569, column: 29, scope: !1213)
!1216 = !DILocation(line: 569, column: 28, scope: !1213)
!1217 = !DILocation(line: 0, scope: !1170)
!1218 = !DILocation(line: 570, column: 9, scope: !1168)
!1219 = !DILocation(line: 572, column: 13, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1171, file: !3, line: 571, column: 12)
!1221 = !DILocation(line: 573, column: 14, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 573, column: 13)
!1223 = !DILocation(line: 573, column: 17, scope: !1222)
!1224 = !DILocation(line: 573, column: 13, scope: !1220)
!1225 = !DILocation(line: 0, scope: !1220)
!1226 = !DILocation(line: 575, column: 5, scope: !1158)
!1227 = !DILocation(line: 575, column: 12, scope: !1158)
!1228 = !DILocation(line: 576, column: 12, scope: !1158)
!1229 = !DILocation(line: 576, column: 5, scope: !1158)
!1230 = !DILocation(line: 0, scope: !1222)
!1231 = !DILocation(line: 0, scope: !1180)
!1232 = !DILocation(line: 577, column: 1, scope: !1158)
!1233 = !DILocation(line: 584, column: 36, scope: !81)
!1234 = !DILocation(line: 584, column: 46, scope: !81)
!1235 = !DILocation(line: 590, column: 9, scope: !81)
!1236 = !DILocation(line: 595, column: 20, scope: !88)
!1237 = !DILocation(line: 595, column: 15, scope: !88)
!1238 = !DILocation(line: 596, column: 16, scope: !305)
!1239 = !DILocation(line: 596, column: 24, scope: !305)
!1240 = !DILocation(line: 596, column: 27, scope: !305)
!1241 = !DILocation(line: 596, column: 57, scope: !305)
!1242 = !DILocation(line: 596, column: 13, scope: !88)
!1243 = !DILocation(line: 599, column: 31, scope: !303)
!1244 = !DILocation(line: 599, column: 18, scope: !303)
!1245 = !DILocation(line: 599, column: 13, scope: !303)
!1246 = !DILocation(line: 600, column: 32, scope: !307)
!1247 = !DILocalVariable(name: "tv", arg: 1, scope: !1248, file: !3, line: 50, type: !31)
!1248 = distinct !DISubprogram(name: "gettimeofday_wrapper", scope: !3, file: !3, line: 50, type: !1249, isLocal: true, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !15, retainedNodes: !1251)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{!6, !31, !26}
!1251 = !{!1247, !1252, !1253, !1254, !1255}
!1252 = !DILocalVariable(name: "tz", arg: 2, scope: !1248, file: !3, line: 50, type: !26)
!1253 = !DILocalVariable(name: "now", scope: !1248, file: !3, line: 52, type: !6)
!1254 = !DILocalVariable(name: "_ptimeval", scope: !1248, file: !3, line: 53, type: !32)
!1255 = !DILocalVariable(name: "_dss__ptimeval", scope: !1248, file: !3, line: 54, type: !31)
!1256 = !DILocation(line: 50, column: 56, scope: !1248, inlinedAt: !1257)
!1257 = distinct !DILocation(line: 601, column: 17, scope: !307)
!1258 = !DILocation(line: 50, column: 66, scope: !1248, inlinedAt: !1257)
!1259 = !DILocation(line: 53, column: 2, scope: !1248, inlinedAt: !1257)
!1260 = !DILocation(line: 54, column: 18, scope: !1248, inlinedAt: !1257)
!1261 = !DILocation(line: 58, column: 2, scope: !1248, inlinedAt: !1257)
!1262 = !DILocation(line: 52, column: 6, scope: !1248, inlinedAt: !1257)
!1263 = !DILocation(line: 59, column: 33, scope: !1248, inlinedAt: !1257)
!1264 = !{!1265, !1039, i64 0}
!1265 = !{!"timeval", !1039, i64 0, !1039, i64 8}
!1266 = !DILocation(line: 60, column: 34, scope: !1248, inlinedAt: !1257)
!1267 = !{!1265, !1039, i64 8}
!1268 = !DILocation(line: 63, column: 1, scope: !1248, inlinedAt: !1257)
!1269 = !DILocation(line: 62, column: 2, scope: !1248, inlinedAt: !1257)
!1270 = !DILocation(line: 602, column: 29, scope: !307)
!1271 = !DILocation(line: 602, column: 23, scope: !307)
!1272 = !DILocation(line: 603, column: 52, scope: !307)
!1273 = !DILocation(line: 603, column: 37, scope: !307)
!1274 = !DILocation(line: 603, column: 50, scope: !307)
!1275 = !DILocation(line: 603, column: 56, scope: !307)
!1276 = !DILocation(line: 603, column: 27, scope: !307)
!1277 = !DILocation(line: 603, column: 17, scope: !307)
!1278 = !DILocation(line: 603, column: 25, scope: !307)
!1279 = !DILocation(line: 599, column: 57, scope: !308)
!1280 = !DILocation(line: 599, column: 13, scope: !308)
!1281 = !DILocation(line: 599, column: 40, scope: !308)
!1282 = distinct !{!1282, !1245, !1283}
!1283 = !DILocation(line: 604, column: 13, scope: !303)
!1284 = !DILocation(line: 608, column: 13, scope: !88)
!1285 = !DILocation(line: 605, column: 9, scope: !304)
!1286 = !DILocation(line: 608, column: 17, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !88, file: !3, line: 608, column: 13)
!1288 = !DILocation(line: 609, column: 5, scope: !88)
!1289 = !DILocation(line: 611, column: 5, scope: !81)
!1290 = !DILocation(line: 612, column: 9, scope: !313)
!1291 = !DILocation(line: 612, column: 23, scope: !313)
!1292 = !DILocation(line: 613, column: 9, scope: !313)
!1293 = !DILocation(line: 614, column: 32, scope: !313)
!1294 = !DILocation(line: 613, column: 18, scope: !313)
!1295 = !DILocation(line: 616, column: 9, scope: !313)
!1296 = !DILocation(line: 617, column: 9, scope: !313)
!1297 = !DILocation(line: 618, column: 9, scope: !313)
!1298 = !DILocation(line: 619, column: 9, scope: !313)
!1299 = !DILocation(line: 620, column: 16, scope: !313)
!1300 = !DILocation(line: 622, column: 9, scope: !313)
!1301 = !DILocation(line: 623, column: 13, scope: !313)
!1302 = !DILocation(line: 624, column: 11, scope: !313)
!1303 = !DILocation(line: 625, column: 5, scope: !81)
!1304 = distinct !{!1304, !1289, !1303}
!1305 = !DILocation(line: 626, column: 1, scope: !81)
!1306 = distinct !DISubprogram(name: "getRandomHexChars", scope: !3, file: !3, line: 632, type: !1307, isLocal: false, isDefinition: true, scopeLine: 632, flags: DIFlagPrototyped, isOptimized: true, unit: !15, retainedNodes: !1309)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{null, !7, !9}
!1309 = !{!1310, !1311, !1312, !1313}
!1310 = !DILocalVariable(name: "p", arg: 1, scope: !1306, file: !3, line: 632, type: !7)
!1311 = !DILocalVariable(name: "len", arg: 2, scope: !1306, file: !3, line: 632, type: !9)
!1312 = !DILocalVariable(name: "charset", scope: !1306, file: !3, line: 633, type: !7)
!1313 = !DILocalVariable(name: "j", scope: !1306, file: !3, line: 634, type: !9)
!1314 = !DILocation(line: 632, column: 30, scope: !1306)
!1315 = !DILocation(line: 632, column: 40, scope: !1306)
!1316 = !DILocation(line: 636, column: 5, scope: !1306)
!1317 = !DILocation(line: 634, column: 12, scope: !1306)
!1318 = !DILocation(line: 637, column: 10, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1306, file: !3, line: 637, column: 5)
!1320 = !DILocation(line: 637, column: 19, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1319, file: !3, line: 637, column: 5)
!1322 = !DILocation(line: 637, column: 5, scope: !1319)
!1323 = !DILocation(line: 637, column: 46, scope: !1321)
!1324 = !DILocation(line: 637, column: 51, scope: !1321)
!1325 = !DILocation(line: 637, column: 38, scope: !1321)
!1326 = !DILocation(line: 637, column: 36, scope: !1321)
!1327 = !DILocation(line: 637, column: 27, scope: !1321)
!1328 = !DILocation(line: 637, column: 5, scope: !1321)
!1329 = distinct !{!1329, !1322, !1330}
!1330 = !DILocation(line: 637, column: 57, scope: !1319)
!1331 = !DILocation(line: 638, column: 1, scope: !1306)
!1332 = distinct !DISubprogram(name: "getAbsolutePath", scope: !3, file: !3, line: 647, type: !1333, isLocal: false, isDefinition: true, scopeLine: 647, flags: DIFlagPrototyped, isOptimized: true, unit: !15, retainedNodes: !1336)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!1335, !7}
!1335 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !43, line: 43, baseType: !7)
!1336 = !{!1337, !1338, !1342, !1343, !1344, !1348}
!1337 = !DILocalVariable(name: "filename", arg: 1, scope: !1332, file: !3, line: 647, type: !7)
!1338 = !DILocalVariable(name: "cwd", scope: !1332, file: !3, line: 648, type: !1339)
!1339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8192, elements: !1340)
!1340 = !{!1341}
!1341 = !DISubrange(count: 1024)
!1342 = !DILocalVariable(name: "abspath", scope: !1332, file: !3, line: 649, type: !1335)
!1343 = !DILocalVariable(name: "relpath", scope: !1332, file: !3, line: 650, type: !1335)
!1344 = !DILocalVariable(name: "p", scope: !1345, file: !3, line: 675, type: !7)
!1345 = distinct !DILexicalBlock(scope: !1346, file: !3, line: 674, column: 34)
!1346 = distinct !DILexicalBlock(scope: !1347, file: !3, line: 674, column: 13)
!1347 = distinct !DILexicalBlock(scope: !1332, file: !3, line: 672, column: 5)
!1348 = !DILocalVariable(name: "trimlen", scope: !1345, file: !3, line: 676, type: !6)
!1349 = !DILocation(line: 647, column: 27, scope: !1332)
!1350 = !DILocation(line: 648, column: 5, scope: !1332)
!1351 = !DILocation(line: 648, column: 10, scope: !1332)
!1352 = !DILocation(line: 650, column: 19, scope: !1332)
!1353 = !DILocation(line: 650, column: 9, scope: !1332)
!1354 = !DILocation(line: 652, column: 15, scope: !1332)
!1355 = !DILocation(line: 653, column: 9, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1332, file: !3, line: 653, column: 9)
!1357 = !DILocation(line: 653, column: 20, scope: !1356)
!1358 = !DILocation(line: 653, column: 9, scope: !1332)
!1359 = !DILocation(line: 656, column: 9, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1332, file: !3, line: 656, column: 9)
!1361 = !DILocation(line: 656, column: 33, scope: !1360)
!1362 = !DILocation(line: 656, column: 9, scope: !1332)
!1363 = !DILocation(line: 657, column: 9, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1360, file: !3, line: 656, column: 42)
!1365 = !DILocation(line: 658, column: 9, scope: !1364)
!1366 = !DILocation(line: 660, column: 15, scope: !1332)
!1367 = !DILocation(line: 649, column: 9, scope: !1332)
!1368 = !DILocalVariable(name: "s", arg: 1, scope: !1369, file: !43, line: 87, type: !1372)
!1369 = distinct !DISubprogram(name: "sdslen", scope: !43, file: !43, line: 87, type: !1370, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !15, retainedNodes: !1373)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{!9, !1372}
!1372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1335)
!1373 = !{!1368, !1374}
!1374 = !DILocalVariable(name: "flags", scope: !1369, file: !43, line: 88, type: !30)
!1375 = !DILocation(line: 87, column: 39, scope: !1369, inlinedAt: !1376)
!1376 = distinct !DILocation(line: 661, column: 9, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1332, file: !3, line: 661, column: 9)
!1378 = !DILocation(line: 88, column: 27, scope: !1369, inlinedAt: !1376)
!1379 = !DILocation(line: 88, column: 19, scope: !1369, inlinedAt: !1376)
!1380 = !DILocation(line: 89, column: 5, scope: !1369, inlinedAt: !1376)
!1381 = !DILocation(line: 91, column: 20, scope: !1382, inlinedAt: !1376)
!1382 = distinct !DILexicalBlock(scope: !1369, file: !43, line: 89, column: 33)
!1383 = !DILocation(line: 91, column: 13, scope: !1382, inlinedAt: !1376)
!1384 = !DILocation(line: 93, column: 20, scope: !1382, inlinedAt: !1376)
!1385 = !DILocation(line: 93, column: 34, scope: !1382, inlinedAt: !1376)
!1386 = !DILocation(line: 93, column: 13, scope: !1382, inlinedAt: !1376)
!1387 = !DILocation(line: 95, column: 20, scope: !1382, inlinedAt: !1376)
!1388 = !DILocation(line: 95, column: 35, scope: !1382, inlinedAt: !1376)
!1389 = !{!1390, !1390, i64 0}
!1390 = !{!"short", !421, i64 0}
!1391 = !DILocation(line: 95, column: 13, scope: !1382, inlinedAt: !1376)
!1392 = !DILocation(line: 97, column: 20, scope: !1382, inlinedAt: !1376)
!1393 = !DILocation(line: 97, column: 35, scope: !1382, inlinedAt: !1376)
!1394 = !DILocation(line: 97, column: 13, scope: !1382, inlinedAt: !1376)
!1395 = !DILocation(line: 99, column: 20, scope: !1382, inlinedAt: !1376)
!1396 = !DILocation(line: 99, column: 35, scope: !1382, inlinedAt: !1376)
!1397 = !DILocation(line: 99, column: 13, scope: !1382, inlinedAt: !1376)
!1398 = !DILocation(line: 101, column: 5, scope: !1369, inlinedAt: !1376)
!1399 = !DILocation(line: 102, column: 1, scope: !1369, inlinedAt: !1376)
!1400 = !DILocation(line: 661, column: 25, scope: !1377)
!1401 = !DILocation(line: 0, scope: !1382, inlinedAt: !1376)
!1402 = !DILocation(line: 0, scope: !1377)
!1403 = !DILocation(line: 661, column: 9, scope: !1377)
!1404 = !DILocation(line: 87, column: 39, scope: !1369, inlinedAt: !1405)
!1405 = distinct !DILocation(line: 661, column: 36, scope: !1377)
!1406 = !DILocation(line: 88, column: 19, scope: !1369, inlinedAt: !1405)
!1407 = !DILocation(line: 89, column: 5, scope: !1369, inlinedAt: !1405)
!1408 = !DILocation(line: 91, column: 20, scope: !1382, inlinedAt: !1405)
!1409 = !DILocation(line: 91, column: 13, scope: !1382, inlinedAt: !1405)
!1410 = !DILocation(line: 93, column: 20, scope: !1382, inlinedAt: !1405)
!1411 = !DILocation(line: 93, column: 34, scope: !1382, inlinedAt: !1405)
!1412 = !DILocation(line: 93, column: 13, scope: !1382, inlinedAt: !1405)
!1413 = !DILocation(line: 95, column: 20, scope: !1382, inlinedAt: !1405)
!1414 = !DILocation(line: 95, column: 35, scope: !1382, inlinedAt: !1405)
!1415 = !DILocation(line: 95, column: 13, scope: !1382, inlinedAt: !1405)
!1416 = !DILocation(line: 97, column: 20, scope: !1382, inlinedAt: !1405)
!1417 = !DILocation(line: 97, column: 35, scope: !1382, inlinedAt: !1405)
!1418 = !DILocation(line: 97, column: 13, scope: !1382, inlinedAt: !1405)
!1419 = !DILocation(line: 99, column: 20, scope: !1382, inlinedAt: !1405)
!1420 = !DILocation(line: 99, column: 35, scope: !1382, inlinedAt: !1405)
!1421 = !DILocation(line: 99, column: 13, scope: !1382, inlinedAt: !1405)
!1422 = !DILocation(line: 0, scope: !1382, inlinedAt: !1405)
!1423 = !DILocation(line: 102, column: 1, scope: !1369, inlinedAt: !1405)
!1424 = !DILocation(line: 661, column: 51, scope: !1377)
!1425 = !DILocation(line: 661, column: 28, scope: !1377)
!1426 = !DILocation(line: 661, column: 55, scope: !1377)
!1427 = !DILocation(line: 661, column: 9, scope: !1332)
!1428 = !DILocation(line: 662, column: 19, scope: !1377)
!1429 = !DILocation(line: 662, column: 9, scope: !1377)
!1430 = !DILocation(line: 0, scope: !1332)
!1431 = !DILocation(line: 670, column: 5, scope: !1332)
!1432 = !DILocation(line: 87, column: 39, scope: !1369, inlinedAt: !1433)
!1433 = distinct !DILocation(line: 670, column: 12, scope: !1332)
!1434 = !DILocation(line: 88, column: 27, scope: !1369, inlinedAt: !1433)
!1435 = !DILocation(line: 88, column: 19, scope: !1369, inlinedAt: !1433)
!1436 = !DILocation(line: 89, column: 5, scope: !1369, inlinedAt: !1433)
!1437 = !DILocation(line: 91, column: 20, scope: !1382, inlinedAt: !1433)
!1438 = !DILocation(line: 91, column: 13, scope: !1382, inlinedAt: !1433)
!1439 = !DILocation(line: 93, column: 34, scope: !1382, inlinedAt: !1433)
!1440 = !DILocation(line: 93, column: 20, scope: !1382, inlinedAt: !1433)
!1441 = !DILocation(line: 93, column: 13, scope: !1382, inlinedAt: !1433)
!1442 = !DILocation(line: 95, column: 35, scope: !1382, inlinedAt: !1433)
!1443 = !DILocation(line: 95, column: 20, scope: !1382, inlinedAt: !1433)
!1444 = !DILocation(line: 95, column: 13, scope: !1382, inlinedAt: !1433)
!1445 = !DILocation(line: 97, column: 35, scope: !1382, inlinedAt: !1433)
!1446 = !DILocation(line: 97, column: 20, scope: !1382, inlinedAt: !1433)
!1447 = !DILocation(line: 97, column: 13, scope: !1382, inlinedAt: !1433)
!1448 = !DILocation(line: 99, column: 35, scope: !1382, inlinedAt: !1433)
!1449 = !DILocation(line: 99, column: 13, scope: !1382, inlinedAt: !1433)
!1450 = !DILocation(line: 101, column: 5, scope: !1369, inlinedAt: !1433)
!1451 = !DILocation(line: 102, column: 1, scope: !1369, inlinedAt: !1433)
!1452 = !DILocation(line: 670, column: 33, scope: !1332)
!1453 = !DILocation(line: 0, scope: !1382, inlinedAt: !1433)
!1454 = !DILocation(line: 670, column: 28, scope: !1332)
!1455 = !DILocation(line: 671, column: 12, scope: !1332)
!1456 = !DILocation(line: 671, column: 23, scope: !1332)
!1457 = !DILocation(line: 671, column: 30, scope: !1332)
!1458 = !DILocation(line: 671, column: 33, scope: !1332)
!1459 = !DILocation(line: 671, column: 44, scope: !1332)
!1460 = !DILocation(line: 671, column: 51, scope: !1332)
!1461 = !DILocation(line: 671, column: 54, scope: !1332)
!1462 = !DILocation(line: 671, column: 65, scope: !1332)
!1463 = !DILocation(line: 673, column: 9, scope: !1347)
!1464 = !DILocation(line: 87, column: 39, scope: !1369, inlinedAt: !1465)
!1465 = distinct !DILocation(line: 674, column: 13, scope: !1346)
!1466 = !DILocation(line: 88, column: 27, scope: !1369, inlinedAt: !1465)
!1467 = !DILocation(line: 88, column: 19, scope: !1369, inlinedAt: !1465)
!1468 = !DILocation(line: 89, column: 5, scope: !1369, inlinedAt: !1465)
!1469 = !DILocation(line: 91, column: 20, scope: !1382, inlinedAt: !1465)
!1470 = !DILocation(line: 91, column: 13, scope: !1382, inlinedAt: !1465)
!1471 = !DILocation(line: 93, column: 34, scope: !1382, inlinedAt: !1465)
!1472 = !DILocation(line: 93, column: 20, scope: !1382, inlinedAt: !1465)
!1473 = !DILocation(line: 93, column: 13, scope: !1382, inlinedAt: !1465)
!1474 = !DILocation(line: 95, column: 35, scope: !1382, inlinedAt: !1465)
!1475 = !DILocation(line: 95, column: 20, scope: !1382, inlinedAt: !1465)
!1476 = !DILocation(line: 95, column: 13, scope: !1382, inlinedAt: !1465)
!1477 = !DILocation(line: 97, column: 35, scope: !1382, inlinedAt: !1465)
!1478 = !DILocation(line: 97, column: 20, scope: !1382, inlinedAt: !1465)
!1479 = !DILocation(line: 97, column: 13, scope: !1382, inlinedAt: !1465)
!1480 = !DILocation(line: 99, column: 35, scope: !1382, inlinedAt: !1465)
!1481 = !DILocation(line: 99, column: 13, scope: !1382, inlinedAt: !1465)
!1482 = !DILocation(line: 101, column: 5, scope: !1369, inlinedAt: !1465)
!1483 = !DILocation(line: 102, column: 1, scope: !1369, inlinedAt: !1465)
!1484 = !DILocation(line: 674, column: 13, scope: !1347)
!1485 = !DILocation(line: 0, scope: !1382, inlinedAt: !1465)
!1486 = !DILocation(line: 0, scope: !1346)
!1487 = !DILocation(line: 674, column: 29, scope: !1346)
!1488 = !DILocation(line: 87, column: 39, scope: !1369, inlinedAt: !1489)
!1489 = distinct !DILocation(line: 675, column: 33, scope: !1345)
!1490 = !DILocation(line: 88, column: 19, scope: !1369, inlinedAt: !1489)
!1491 = !DILocation(line: 89, column: 5, scope: !1369, inlinedAt: !1489)
!1492 = !DILocation(line: 91, column: 20, scope: !1382, inlinedAt: !1489)
!1493 = !DILocation(line: 91, column: 13, scope: !1382, inlinedAt: !1489)
!1494 = !DILocation(line: 93, column: 34, scope: !1382, inlinedAt: !1489)
!1495 = !DILocation(line: 93, column: 20, scope: !1382, inlinedAt: !1489)
!1496 = !DILocation(line: 93, column: 13, scope: !1382, inlinedAt: !1489)
!1497 = !DILocation(line: 95, column: 35, scope: !1382, inlinedAt: !1489)
!1498 = !DILocation(line: 95, column: 20, scope: !1382, inlinedAt: !1489)
!1499 = !DILocation(line: 95, column: 13, scope: !1382, inlinedAt: !1489)
!1500 = !DILocation(line: 97, column: 35, scope: !1382, inlinedAt: !1489)
!1501 = !DILocation(line: 97, column: 20, scope: !1382, inlinedAt: !1489)
!1502 = !DILocation(line: 97, column: 13, scope: !1382, inlinedAt: !1489)
!1503 = !DILocation(line: 99, column: 35, scope: !1382, inlinedAt: !1489)
!1504 = !DILocation(line: 99, column: 13, scope: !1382, inlinedAt: !1489)
!1505 = !DILocation(line: 0, scope: !1382, inlinedAt: !1489)
!1506 = !DILocation(line: 0, scope: !1345)
!1507 = !DILocation(line: 102, column: 1, scope: !1369, inlinedAt: !1489)
!1508 = !DILocation(line: 675, column: 48, scope: !1345)
!1509 = !DILocation(line: 675, column: 19, scope: !1345)
!1510 = !DILocation(line: 676, column: 17, scope: !1345)
!1511 = !DILocation(line: 678, column: 13, scope: !1345)
!1512 = !DILocation(line: 678, column: 19, scope: !1345)
!1513 = !DILocation(line: 678, column: 22, scope: !1345)
!1514 = !DILocation(line: 679, column: 18, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 678, column: 30)
!1516 = !DILocation(line: 680, column: 24, scope: !1515)
!1517 = distinct !{!1517, !1511, !1518}
!1518 = !DILocation(line: 681, column: 13, scope: !1345)
!1519 = !DILocation(line: 0, scope: !1515)
!1520 = !DILocation(line: 682, column: 32, scope: !1345)
!1521 = !DILocation(line: 682, column: 13, scope: !1345)
!1522 = !DILocation(line: 683, column: 9, scope: !1345)
!1523 = distinct !{!1523, !1431, !1524}
!1524 = !DILocation(line: 684, column: 5, scope: !1332)
!1525 = !DILocation(line: 687, column: 15, scope: !1332)
!1526 = !DILocation(line: 688, column: 5, scope: !1332)
!1527 = !DILocation(line: 689, column: 5, scope: !1332)
!1528 = !DILocation(line: 0, scope: !1356)
!1529 = !DILocation(line: 690, column: 1, scope: !1332)
!1530 = distinct !DISubprogram(name: "getTimeZone", scope: !3, file: !3, line: 697, type: !1531, isLocal: false, isDefinition: true, scopeLine: 697, flags: DIFlagPrototyped, isOptimized: true, unit: !15, retainedNodes: !1533)
!1531 = !DISubroutineType(types: !1532)
!1532 = !{!13}
!1533 = !{!1534, !1535}
!1534 = !DILocalVariable(name: "tv", scope: !1530, file: !3, line: 701, type: !32)
!1535 = !DILocalVariable(name: "tz", scope: !1530, file: !3, line: 702, type: !1536)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timezone", file: !1537, line: 35, size: 64, elements: !1538)
!1537 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/musl-imported/include/sys/time.h", directory: "/root/.unikraft/apps/redis/build")
!1538 = !{!1539, !1540}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "tz_minuteswest", scope: !1536, file: !1537, line: 36, baseType: !6, size: 32)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "tz_dsttime", scope: !1536, file: !1537, line: 37, baseType: !6, size: 32, offset: 32)
!1541 = !DILocation(line: 701, column: 20, scope: !1530)
!1542 = !DILocation(line: 50, column: 56, scope: !1248, inlinedAt: !1543)
!1543 = distinct !DILocation(line: 704, column: 5, scope: !1530)
!1544 = !DILocation(line: 50, column: 66, scope: !1248, inlinedAt: !1543)
!1545 = !DILocation(line: 53, column: 2, scope: !1248, inlinedAt: !1543)
!1546 = !DILocation(line: 54, column: 55, scope: !1248, inlinedAt: !1543)
!1547 = !DILocation(line: 54, column: 80, scope: !1248, inlinedAt: !1543)
!1548 = !DILocation(line: 54, column: 35, scope: !1248, inlinedAt: !1543)
!1549 = !DILocation(line: 54, column: 18, scope: !1248, inlinedAt: !1543)
!1550 = !DILocation(line: 58, column: 2, scope: !1248, inlinedAt: !1543)
!1551 = !DILocation(line: 52, column: 6, scope: !1248, inlinedAt: !1543)
!1552 = !DILocation(line: 63, column: 1, scope: !1248, inlinedAt: !1543)
!1553 = !DILocation(line: 62, column: 2, scope: !1248, inlinedAt: !1543)
!1554 = !DILocation(line: 706, column: 5, scope: !1530)
!1555 = distinct !DISubprogram(name: "pathIsBaseName", scope: !3, file: !3, line: 714, type: !1556, isLocal: false, isDefinition: true, scopeLine: 714, flags: DIFlagPrototyped, isOptimized: true, unit: !15, retainedNodes: !1558)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{!6, !7}
!1558 = !{!1559}
!1559 = !DILocalVariable(name: "path", arg: 1, scope: !1555, file: !3, line: 714, type: !7)
!1560 = !DILocation(line: 714, column: 26, scope: !1555)
!1561 = !DILocation(line: 715, column: 12, scope: !1555)
!1562 = !DILocation(line: 715, column: 29, scope: !1555)
!1563 = !DILocation(line: 715, column: 37, scope: !1555)
!1564 = !DILocation(line: 715, column: 40, scope: !1555)
!1565 = !DILocation(line: 715, column: 58, scope: !1555)
!1566 = !DILocation(line: 715, column: 5, scope: !1555)
