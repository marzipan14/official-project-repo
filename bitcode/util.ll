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
  %6 = icmp eq i32 %4, 0
  br label %7, !dbg !416

; <label>:7:                                      ; preds = %204, %5
  %8 = phi i32 [ %3, %5 ], [ %205, %204 ]
  %9 = phi i8* [ %2, %5 ], [ %208, %204 ]
  %10 = phi i32 [ %1, %5 ], [ %210, %204 ]
  %11 = phi i8* [ %0, %5 ], [ %209, %204 ]
  %12 = icmp ne i32 %10, 0, !dbg !417
  %13 = icmp ne i32 %8, 0, !dbg !418
  %14 = and i1 %13, %12, !dbg !418
  br i1 %14, label %15, label %222, !dbg !416

; <label>:15:                                     ; preds = %7
  %16 = load i8, i8* %11, align 1, !dbg !419, !tbaa !420
  %17 = sext i8 %16 to i32, !dbg !419
  switch i32 %17, label %172 [
    i32 42, label %18
    i32 63, label %36
    i32 91, label %38
    i32 92, label %166
  ], !dbg !423

; <label>:18:                                     ; preds = %15, %18
  %19 = phi i32 [ %24, %18 ], [ %10, %15 ]
  %20 = phi i8* [ %21, %18 ], [ %11, %15 ]
  %21 = getelementptr inbounds i8, i8* %20, i64 1, !dbg !424
  %22 = load i8, i8* %21, align 1, !dbg !424, !tbaa !420
  %23 = icmp eq i8 %22, 42, !dbg !425
  %24 = add nsw i32 %19, -1, !dbg !426
  br i1 %23, label %18, label %25, !dbg !428, !llvm.loop !429

; <label>:25:                                     ; preds = %18
  %26 = icmp eq i32 %19, 1, !dbg !431
  br i1 %26, label %228, label %27, !dbg !433

; <label>:27:                                     ; preds = %25, %32
  %28 = phi i8* [ %33, %32 ], [ %9, %25 ]
  %29 = phi i32 [ %34, %32 ], [ %8, %25 ]
  %30 = tail call i32 @stringmatchlen(i8* nonnull %21, i32 %24, i8* %28, i32 %29, i32 %4) #5, !dbg !434
  %31 = icmp eq i32 %30, 0, !dbg !434
  br i1 %31, label %32, label %228, !dbg !437

; <label>:32:                                     ; preds = %27
  %33 = getelementptr inbounds i8, i8* %28, i64 1, !dbg !438
  %34 = add nsw i32 %29, -1, !dbg !439
  %35 = icmp eq i32 %34, 0, !dbg !440
  br i1 %35, label %228, label %27, !dbg !440, !llvm.loop !441

; <label>:36:                                     ; preds = %15
  %37 = add nsw i32 %8, -1, !dbg !443
  br label %204, !dbg !444

; <label>:38:                                     ; preds = %15
  %39 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !445
  %40 = load i8, i8* %39, align 1, !dbg !446, !tbaa !420
  %41 = icmp eq i8 %40, 94, !dbg !447
  %42 = getelementptr inbounds i8, i8* %11, i64 2, !dbg !448
  %43 = select i1 %41, i32 -2, i32 -1, !dbg !451
  %44 = add i32 %43, %10, !dbg !451
  %45 = select i1 %41, i8* %42, i8* %39, !dbg !451
  br label %46, !dbg !453

; <label>:46:                                     ; preds = %150, %38
  %47 = phi i32 [ 0, %38 ], [ %151, %150 ], !dbg !454
  %48 = phi i32 [ %44, %38 ], [ %155, %150 ], !dbg !457
  %49 = phi i8* [ %45, %38 ], [ %154, %150 ], !dbg !457
  %50 = load i8, i8* %49, align 1, !dbg !458, !tbaa !420
  %51 = sext i8 %50 to i32, !dbg !458
  %52 = icmp eq i8 %50, 92, !dbg !459
  %53 = icmp sgt i32 %48, 1, !dbg !460
  %54 = and i1 %53, %52, !dbg !461
  br i1 %54, label %55, label %62, !dbg !461

; <label>:55:                                     ; preds = %46
  %56 = getelementptr inbounds i8, i8* %49, i64 1, !dbg !462
  %57 = add nsw i32 %48, -1, !dbg !463
  %58 = load i8, i8* %56, align 1, !dbg !464, !tbaa !420
  %59 = load i8, i8* %9, align 1, !dbg !465, !tbaa !420
  %60 = icmp eq i8 %58, %59, !dbg !466
  %61 = select i1 %60, i32 1, i32 %47, !dbg !467
  br label %150, !dbg !467

; <label>:62:                                     ; preds = %46
  %63 = icmp eq i8 %50, 93, !dbg !468
  br i1 %63, label %156, label %64, !dbg !469

; <label>:64:                                     ; preds = %62
  %65 = icmp eq i32 %48, 0, !dbg !470
  br i1 %65, label %66, label %68, !dbg !471

; <label>:66:                                     ; preds = %64
  %67 = getelementptr inbounds i8, i8* %49, i64 -1, !dbg !472
  br label %156, !dbg !474

; <label>:68:                                     ; preds = %64
  %69 = getelementptr inbounds i8, i8* %49, i64 1, !dbg !475
  %70 = load i8, i8* %69, align 1, !dbg !475, !tbaa !420
  %71 = icmp eq i8 %70, 45, !dbg !476
  %72 = icmp sgt i32 %48, 2, !dbg !477
  %73 = and i1 %72, %71, !dbg !478
  br i1 %73, label %74, label %122, !dbg !478

; <label>:74:                                     ; preds = %68
  %75 = getelementptr inbounds i8, i8* %49, i64 2, !dbg !480
  %76 = load i8, i8* %75, align 1, !dbg !480, !tbaa !420
  %77 = load i8, i8* %9, align 1, !dbg !481, !tbaa !420
  %78 = sext i8 %77 to i32, !dbg !481
  %79 = icmp sgt i8 %50, %76, !dbg !483
  %80 = select i1 %79, i8 %50, i8 %76, !dbg !483
  %81 = sext i8 %80 to i32, !dbg !483
  %82 = icmp slt i8 %50, %76, !dbg !483
  %83 = select i1 %82, i8 %50, i8 %76, !dbg !483
  %84 = sext i8 %83 to i32, !dbg !483
  br i1 %6, label %113, label %85, !dbg !485

; <label>:85:                                     ; preds = %74
  %86 = tail call i8* @__locale_ctype_ptr() #6, !dbg !486
  %87 = getelementptr inbounds i8, i8* %86, i64 1, !dbg !486
  %88 = sext i8 %83 to i64, !dbg !486
  %89 = getelementptr inbounds i8, i8* %87, i64 %88, !dbg !486
  %90 = load i8, i8* %89, align 1, !dbg !486, !tbaa !420
  %91 = and i8 %90, 3, !dbg !486
  %92 = icmp eq i8 %91, 1, !dbg !486
  %93 = add nsw i32 %84, 32, !dbg !486
  %94 = select i1 %92, i32 %93, i32 %84, !dbg !486
  %95 = tail call i8* @__locale_ctype_ptr() #6, !dbg !487
  %96 = getelementptr inbounds i8, i8* %95, i64 1, !dbg !487
  %97 = sext i8 %80 to i64, !dbg !487
  %98 = getelementptr inbounds i8, i8* %96, i64 %97, !dbg !487
  %99 = load i8, i8* %98, align 1, !dbg !487, !tbaa !420
  %100 = and i8 %99, 3, !dbg !487
  %101 = icmp eq i8 %100, 1, !dbg !487
  %102 = add nsw i32 %81, 32, !dbg !487
  %103 = select i1 %101, i32 %102, i32 %81, !dbg !487
  %104 = tail call i8* @__locale_ctype_ptr() #6, !dbg !488
  %105 = getelementptr inbounds i8, i8* %104, i64 1, !dbg !488
  %106 = sext i8 %77 to i64, !dbg !488
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !488
  %108 = load i8, i8* %107, align 1, !dbg !488, !tbaa !420
  %109 = and i8 %108, 3, !dbg !488
  %110 = icmp eq i8 %109, 1, !dbg !488
  %111 = add nsw i32 %78, 32, !dbg !488
  %112 = select i1 %110, i32 %111, i32 %78, !dbg !488
  br label %113, !dbg !489

; <label>:113:                                    ; preds = %74, %85
  %114 = phi i32 [ %112, %85 ], [ %78, %74 ], !dbg !490
  %115 = phi i32 [ %103, %85 ], [ %81, %74 ], !dbg !491
  %116 = phi i32 [ %94, %85 ], [ %84, %74 ], !dbg !491
  %117 = add nsw i32 %48, -2, !dbg !492
  %118 = icmp slt i32 %114, %116, !dbg !493
  %119 = icmp sgt i32 %114, %115, !dbg !495
  %120 = or i1 %119, %118, !dbg !496
  %121 = select i1 %120, i32 %47, i32 1, !dbg !496
  br label %150, !dbg !496

; <label>:122:                                    ; preds = %68
  br i1 %6, label %123, label %127, !dbg !497

; <label>:123:                                    ; preds = %122
  %124 = load i8, i8* %9, align 1, !dbg !498, !tbaa !420
  %125 = icmp eq i8 %50, %124, !dbg !501
  %126 = select i1 %125, i32 1, i32 %47, !dbg !502
  br label %150, !dbg !502

; <label>:127:                                    ; preds = %122
  %128 = tail call i8* @__locale_ctype_ptr() #6, !dbg !503
  %129 = getelementptr inbounds i8, i8* %128, i64 1, !dbg !503
  %130 = sext i8 %50 to i64, !dbg !503
  %131 = getelementptr inbounds i8, i8* %129, i64 %130, !dbg !503
  %132 = load i8, i8* %131, align 1, !dbg !503, !tbaa !420
  %133 = and i8 %132, 3, !dbg !503
  %134 = icmp eq i8 %133, 1, !dbg !503
  %135 = add nsw i32 %51, 32, !dbg !503
  %136 = select i1 %134, i32 %135, i32 %51, !dbg !503
  %137 = load i8, i8* %9, align 1, !dbg !504, !tbaa !420
  %138 = sext i8 %137 to i32, !dbg !504
  %139 = tail call i8* @__locale_ctype_ptr() #6, !dbg !504
  %140 = getelementptr inbounds i8, i8* %139, i64 1, !dbg !504
  %141 = sext i8 %137 to i64, !dbg !504
  %142 = getelementptr inbounds i8, i8* %140, i64 %141, !dbg !504
  %143 = load i8, i8* %142, align 1, !dbg !504, !tbaa !420
  %144 = and i8 %143, 3, !dbg !504
  %145 = icmp eq i8 %144, 1, !dbg !504
  %146 = add nsw i32 %138, 32, !dbg !504
  %147 = select i1 %145, i32 %146, i32 %138, !dbg !504
  %148 = icmp eq i32 %136, %147, !dbg !505
  %149 = select i1 %148, i32 1, i32 %47, !dbg !506
  br label %150, !dbg !506

; <label>:150:                                    ; preds = %127, %123, %55, %113
  %151 = phi i32 [ %61, %55 ], [ %121, %113 ], [ %126, %123 ], [ %149, %127 ], !dbg !507
  %152 = phi i32 [ %57, %55 ], [ %117, %113 ], [ %48, %123 ], [ %48, %127 ], !dbg !508
  %153 = phi i8* [ %56, %55 ], [ %75, %113 ], [ %49, %123 ], [ %49, %127 ], !dbg !508
  %154 = getelementptr inbounds i8, i8* %153, i64 1, !dbg !509
  %155 = add nsw i32 %152, -1, !dbg !510
  br label %46, !dbg !453, !llvm.loop !511

; <label>:156:                                    ; preds = %62, %66
  %157 = phi i32 [ 1, %66 ], [ %48, %62 ], !dbg !513
  %158 = phi i8* [ %67, %66 ], [ %49, %62 ], !dbg !513
  %159 = icmp eq i32 %47, 0, !dbg !514
  %160 = zext i1 %159 to i32, !dbg !514
  %161 = select i1 %41, i32 %160, i32 %47, !dbg !516
  %162 = icmp eq i32 %161, 0, !dbg !517
  %163 = xor i1 %162, true, !dbg !519
  %164 = sext i1 %163 to i32, !dbg !519
  %165 = add nsw i32 %8, %164, !dbg !519
  br i1 %162, label %228, label %204

; <label>:166:                                    ; preds = %15
  %167 = icmp sgt i32 %10, 1, !dbg !520
  br i1 %167, label %168, label %172, !dbg !522

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !523
  %170 = add nsw i32 %10, -1, !dbg !525
  %171 = load i8, i8* %169, align 1, !dbg !526, !tbaa !420
  br label %172, !dbg !527

; <label>:172:                                    ; preds = %166, %168, %15
  %173 = phi i8 [ %16, %15 ], [ %171, %168 ], [ %16, %166 ], !dbg !526
  %174 = phi i32 [ %10, %15 ], [ %170, %168 ], [ %10, %166 ]
  %175 = phi i8* [ %11, %15 ], [ %169, %168 ], [ %11, %166 ]
  br i1 %6, label %176, label %179, !dbg !528

; <label>:176:                                    ; preds = %172
  %177 = load i8, i8* %9, align 1, !dbg !529, !tbaa !420
  %178 = icmp eq i8 %173, %177, !dbg !532
  br i1 %178, label %202, label %228, !dbg !533

; <label>:179:                                    ; preds = %172
  %180 = sext i8 %173 to i32, !dbg !534
  %181 = tail call i8* @__locale_ctype_ptr() #6, !dbg !534
  %182 = getelementptr inbounds i8, i8* %181, i64 1, !dbg !534
  %183 = sext i8 %173 to i64, !dbg !534
  %184 = getelementptr inbounds i8, i8* %182, i64 %183, !dbg !534
  %185 = load i8, i8* %184, align 1, !dbg !534, !tbaa !420
  %186 = and i8 %185, 3, !dbg !534
  %187 = icmp eq i8 %186, 1, !dbg !534
  %188 = add nsw i32 %180, 32, !dbg !534
  %189 = select i1 %187, i32 %188, i32 %180, !dbg !534
  %190 = load i8, i8* %9, align 1, !dbg !535, !tbaa !420
  %191 = sext i8 %190 to i32, !dbg !535
  %192 = tail call i8* @__locale_ctype_ptr() #6, !dbg !535
  %193 = getelementptr inbounds i8, i8* %192, i64 1, !dbg !535
  %194 = sext i8 %190 to i64, !dbg !535
  %195 = getelementptr inbounds i8, i8* %193, i64 %194, !dbg !535
  %196 = load i8, i8* %195, align 1, !dbg !535, !tbaa !420
  %197 = and i8 %196, 3, !dbg !535
  %198 = icmp eq i8 %197, 1, !dbg !535
  %199 = add nsw i32 %191, 32, !dbg !535
  %200 = select i1 %198, i32 %199, i32 %191, !dbg !535
  %201 = icmp eq i32 %189, %200, !dbg !536
  br i1 %201, label %202, label %228, !dbg !537

; <label>:202:                                    ; preds = %179, %176
  %203 = add nsw i32 %8, -1, !dbg !538
  br label %204, !dbg !539

; <label>:204:                                    ; preds = %156, %202, %36
  %205 = phi i32 [ %203, %202 ], [ %165, %156 ], [ %37, %36 ], !dbg !540
  %206 = phi i32 [ %174, %202 ], [ %157, %156 ], [ %10, %36 ]
  %207 = phi i8* [ %175, %202 ], [ %158, %156 ], [ %11, %36 ]
  %208 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !540
  %209 = getelementptr inbounds i8, i8* %207, i64 1, !dbg !541
  %210 = add nsw i32 %206, -1, !dbg !542
  %211 = icmp eq i32 %205, 0, !dbg !543
  br i1 %211, label %212, label %7, !dbg !545, !llvm.loop !546

; <label>:212:                                    ; preds = %204
  %213 = load i8, i8* %209, align 1, !dbg !548, !tbaa !420
  %214 = icmp eq i8 %213, 42, !dbg !550
  br i1 %214, label %215, label %222, !dbg !551

; <label>:215:                                    ; preds = %212, %215
  %216 = phi i8* [ %218, %215 ], [ %209, %212 ]
  %217 = phi i32 [ %219, %215 ], [ %210, %212 ]
  %218 = getelementptr inbounds i8, i8* %216, i64 1, !dbg !552
  %219 = add nsw i32 %217, -1, !dbg !554
  %220 = load i8, i8* %218, align 1, !dbg !548, !tbaa !420
  %221 = icmp eq i8 %220, 42, !dbg !550
  br i1 %221, label %215, label %222, !dbg !551, !llvm.loop !555

; <label>:222:                                    ; preds = %7, %215, %212
  %223 = phi i32 [ 0, %212 ], [ 0, %215 ], [ %8, %7 ]
  %224 = phi i32 [ %210, %212 ], [ %219, %215 ], [ %10, %7 ]
  %225 = or i32 %224, %223, !dbg !557
  %226 = icmp eq i32 %225, 0, !dbg !557
  %227 = zext i1 %226 to i32, !dbg !559
  br label %228, !dbg !559

; <label>:228:                                    ; preds = %179, %176, %156, %27, %32, %222, %25
  %229 = phi i32 [ 1, %25 ], [ %227, %222 ], [ 1, %27 ], [ 0, %32 ], [ 0, %156 ], [ 0, %176 ], [ 0, %179 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !560
  ret i32 %229, !dbg !560
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i8* @__locale_ctype_ptr() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @stringmatch(i8*, i8*, i32) local_unnamed_addr #0 !dbg !561 {
  %4 = tail call i64 @strlen(i8* %0) #6, !dbg !571
  %5 = trunc i64 %4 to i32, !dbg !571
  %6 = tail call i64 @strlen(i8* %1) #6, !dbg !572
  %7 = trunc i64 %6 to i32, !dbg !572
  %8 = tail call i32 @stringmatchlen(i8* %0, i32 %5, i8* %1, i32 %7, i32 %2) #5, !dbg !573
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !574
  ret i32 %8, !dbg !574
}

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @stringmatchlen_fuzz_test() local_unnamed_addr #0 !dbg !575 {
  %1 = alloca [32 x i8], align 16
  %2 = alloca [32 x i8], align 16
  %3 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 0, !dbg !591
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %3) #7, !dbg !591
  %4 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0, !dbg !593
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #7, !dbg !593
  br label %5, !dbg !597

; <label>:5:                                      ; preds = %0, %27
  %6 = phi i32 [ 9999999, %0 ], [ %30, %27 ]
  %7 = phi i32 [ 0, %0 ], [ %29, %27 ]
  %8 = tail call i32 @rand() #6, !dbg !598
  %9 = and i32 %8, 31, !dbg !599
  %10 = tail call i32 @rand() #6, !dbg !601
  %11 = and i32 %10, 31, !dbg !602
  %12 = icmp eq i32 %9, 0, !dbg !605
  br i1 %12, label %15, label %13, !dbg !607

; <label>:13:                                     ; preds = %5
  %14 = zext i32 %9 to i64
  br label %19, !dbg !608

; <label>:15:                                     ; preds = %19, %5
  %16 = icmp eq i32 %11, 0, !dbg !610
  br i1 %16, label %27, label %17, !dbg !612

; <label>:17:                                     ; preds = %15
  %18 = zext i32 %11 to i64
  br label %32, !dbg !613

; <label>:19:                                     ; preds = %19, %13
  %20 = phi i64 [ 0, %13 ], [ %25, %19 ]
  %21 = tail call i32 @rand() #6, !dbg !608
  %22 = srem i32 %21, 128, !dbg !614
  %23 = trunc i32 %22 to i8, !dbg !608
  %24 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i64 0, i64 %20, !dbg !615
  store i8 %23, i8* %24, align 1, !dbg !616, !tbaa !420
  %25 = add nuw nsw i64 %20, 1, !dbg !617
  %26 = icmp eq i64 %25, %14, !dbg !605
  br i1 %26, label %15, label %19, !dbg !607, !llvm.loop !618

; <label>:27:                                     ; preds = %32, %15
  %28 = call i32 @stringmatchlen(i8* nonnull %4, i32 %11, i8* nonnull %3, i32 %9, i32 0) #5, !dbg !620
  %29 = add nsw i32 %28, %7, !dbg !621
  %30 = add nsw i32 %6, -1, !dbg !622
  %31 = icmp eq i32 %6, 0, !dbg !597
  br i1 %31, label %40, label %5, !dbg !597, !llvm.loop !623

; <label>:32:                                     ; preds = %32, %17
  %33 = phi i64 [ 0, %17 ], [ %38, %32 ]
  %34 = tail call i32 @rand() #6, !dbg !613
  %35 = srem i32 %34, 128, !dbg !625
  %36 = trunc i32 %35 to i8, !dbg !613
  %37 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 %33, !dbg !626
  store i8 %36, i8* %37, align 1, !dbg !627, !tbaa !420
  %38 = add nuw nsw i64 %33, 1, !dbg !628
  %39 = icmp eq i64 %38, %18, !dbg !610
  br i1 %39, label %27, label %32, !dbg !612, !llvm.loop !629

; <label>:40:                                     ; preds = %27
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #7, !dbg !631
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #7, !dbg !631
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !632
  ret i32 %29, !dbg !632
}

; Function Attrs: noredzone
declare dso_local i32 @rand() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i64 @memtoll(i8*, i32*) local_unnamed_addr #0 !dbg !633 {
  %3 = alloca [128 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0, !dbg !651
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %5) #7, !dbg !651
  %6 = icmp ne i32* %1, null, !dbg !653
  br i1 %6, label %7, label %8, !dbg !655

; <label>:7:                                      ; preds = %2
  store i32 0, i32* %1, align 4, !dbg !656, !tbaa !657
  br label %8, !dbg !659

; <label>:8:                                      ; preds = %7, %2
  %9 = load i8, i8* %0, align 1, !dbg !661, !tbaa !420
  %10 = icmp eq i8 %9, 45, !dbg !663
  %11 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !664
  %12 = select i1 %10, i8* %11, i8* %0, !dbg !665
  %13 = load i8, i8* %12, align 1, !dbg !666, !tbaa !420
  %14 = icmp eq i8 %13, 0, !dbg !666
  br i1 %14, label %54, label %15, !dbg !667

; <label>:15:                                     ; preds = %8, %25
  %16 = phi i8* [ %26, %25 ], [ %12, %8 ]
  %17 = tail call i8* @__locale_ctype_ptr() #6, !dbg !668
  %18 = getelementptr inbounds i8, i8* %17, i64 1, !dbg !668
  %19 = load i8, i8* %16, align 1, !dbg !668, !tbaa !420
  %20 = sext i8 %19 to i64, !dbg !668
  %21 = getelementptr inbounds i8, i8* %18, i64 %20, !dbg !668
  %22 = load i8, i8* %21, align 1, !dbg !668, !tbaa !420
  %23 = and i8 %22, 4, !dbg !668
  %24 = icmp eq i8 %23, 0, !dbg !667
  br i1 %24, label %29, label %25, !dbg !669

; <label>:25:                                     ; preds = %15
  %26 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !670
  %27 = load i8, i8* %26, align 1, !dbg !666, !tbaa !420
  %28 = icmp eq i8 %27, 0, !dbg !666
  br i1 %28, label %54, label %15, !dbg !667, !llvm.loop !671

; <label>:29:                                     ; preds = %15
  %30 = icmp eq i8 %19, 0, !dbg !672
  br i1 %30, label %54, label %31, !dbg !674

; <label>:31:                                     ; preds = %29
  %32 = tail call i32 @strcasecmp(i8* nonnull %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #8, !dbg !675
  %33 = icmp eq i32 %32, 0, !dbg !675
  br i1 %33, label %54, label %34, !dbg !676

; <label>:34:                                     ; preds = %31
  %35 = tail call i32 @strcasecmp(i8* nonnull %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !677
  %36 = icmp eq i32 %35, 0, !dbg !677
  br i1 %36, label %54, label %37, !dbg !679

; <label>:37:                                     ; preds = %34
  %38 = tail call i32 @strcasecmp(i8* nonnull %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !680
  %39 = icmp eq i32 %38, 0, !dbg !680
  br i1 %39, label %54, label %40, !dbg !682

; <label>:40:                                     ; preds = %37
  %41 = tail call i32 @strcasecmp(i8* nonnull %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !683
  %42 = icmp eq i32 %41, 0, !dbg !683
  br i1 %42, label %54, label %43, !dbg !685

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @strcasecmp(i8* nonnull %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !686
  %45 = icmp eq i32 %44, 0, !dbg !686
  br i1 %45, label %54, label %46, !dbg !688

; <label>:46:                                     ; preds = %43
  %47 = tail call i32 @strcasecmp(i8* nonnull %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !689
  %48 = icmp eq i32 %47, 0, !dbg !689
  br i1 %48, label %54, label %49, !dbg !691

; <label>:49:                                     ; preds = %46
  %50 = tail call i32 @strcasecmp(i8* nonnull %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)) #8, !dbg !692
  %51 = icmp eq i32 %50, 0, !dbg !692
  br i1 %51, label %54, label %52, !dbg !694

; <label>:52:                                     ; preds = %49
  br i1 %6, label %53, label %85, !dbg !695

; <label>:53:                                     ; preds = %52
  store i32 1, i32* %1, align 4, !dbg !697, !tbaa !657
  br label %85, !dbg !699

; <label>:54:                                     ; preds = %25, %8, %49, %46, %43, %40, %37, %34, %29, %31
  %55 = phi i8* [ %16, %31 ], [ %16, %29 ], [ %16, %34 ], [ %16, %37 ], [ %16, %40 ], [ %16, %43 ], [ %16, %46 ], [ %16, %49 ], [ %12, %8 ], [ %26, %25 ]
  %56 = phi i64 [ 1, %31 ], [ 1, %29 ], [ 1000, %34 ], [ 1024, %37 ], [ 1000000, %40 ], [ 1048576, %43 ], [ 1000000000, %46 ], [ 1073741824, %49 ], [ 1, %8 ], [ 1, %25 ], !dbg !700
  %57 = ptrtoint i8* %55 to i64, !dbg !703
  %58 = ptrtoint i8* %0 to i64, !dbg !703
  %59 = sub i64 %57, %58, !dbg !703
  %60 = and i64 %59, 4294967295, !dbg !704
  %61 = icmp ugt i64 %60, 127, !dbg !707
  br i1 %61, label %62, label %64, !dbg !708

; <label>:62:                                     ; preds = %54
  br i1 %6, label %63, label %85, !dbg !709

; <label>:63:                                     ; preds = %62
  store i32 1, i32* %1, align 4, !dbg !711, !tbaa !657
  br label %85, !dbg !713

; <label>:64:                                     ; preds = %54
  %65 = call i8* @memcpy(i8* nonnull %5, i8* %0, i64 %60) #6, !dbg !714
  %66 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 %60, !dbg !715
  store i8 0, i8* %66, align 1, !dbg !716, !tbaa !420
  %67 = bitcast i8** %4 to i8*, !dbg !717
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %67) #7, !dbg !717
  %68 = call i32* @__errno() #6, !dbg !718
  store i32 0, i32* %68, align 4, !dbg !719, !tbaa !657
  %69 = call i64 @strtoll(i8* nonnull %5, i8** nonnull %4, i32 10) #6, !dbg !721
  %70 = icmp eq i64 %69, 0, !dbg !723
  br i1 %70, label %71, label %75, !dbg !725

; <label>:71:                                     ; preds = %64
  %72 = call i32* @__errno() #6, !dbg !726
  %73 = load i32, i32* %72, align 4, !dbg !726, !tbaa !657
  %74 = icmp eq i32 %73, 22, !dbg !727
  br i1 %74, label %79, label %75, !dbg !728

; <label>:75:                                     ; preds = %71, %64
  %76 = load i8*, i8** %4, align 8, !dbg !729, !tbaa !730
  %77 = load i8, i8* %76, align 1, !dbg !732, !tbaa !420
  %78 = icmp eq i8 %77, 0, !dbg !733
  br i1 %78, label %81, label %79, !dbg !734

; <label>:79:                                     ; preds = %75, %71
  br i1 %6, label %80, label %83, !dbg !735

; <label>:80:                                     ; preds = %79
  store i32 1, i32* %1, align 4, !dbg !737, !tbaa !657
  br label %83, !dbg !739

; <label>:81:                                     ; preds = %75
  %82 = mul nsw i64 %69, %56, !dbg !740
  br label %83, !dbg !741

; <label>:83:                                     ; preds = %79, %80, %81
  %84 = phi i64 [ %82, %81 ], [ 0, %80 ], [ 0, %79 ], !dbg !742
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %67) #7, !dbg !743
  br label %85

; <label>:85:                                     ; preds = %62, %63, %52, %53, %83
  %86 = phi i64 [ %84, %83 ], [ 0, %53 ], [ 0, %52 ], [ 0, %63 ], [ 0, %62 ], !dbg !744
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %5) #7, !dbg !743
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !743
  ret i64 %86, !dbg !743
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
define dso_local i32 @digits10(i64) local_unnamed_addr #0 !dbg !745 {
  %2 = icmp ult i64 %0, 10, !dbg !751
  br i1 %2, label %33, label %3, !dbg !753

; <label>:3:                                      ; preds = %1
  %4 = icmp ult i64 %0, 100, !dbg !754
  br i1 %4, label %33, label %5, !dbg !756

; <label>:5:                                      ; preds = %3
  %6 = icmp ult i64 %0, 1000, !dbg !757
  br i1 %6, label %33, label %7, !dbg !759

; <label>:7:                                      ; preds = %5
  %8 = icmp ult i64 %0, 1000000000000, !dbg !760
  br i1 %8, label %9, label %29, !dbg !762

; <label>:9:                                      ; preds = %7
  %10 = icmp ult i64 %0, 100000000, !dbg !763
  br i1 %10, label %11, label %21, !dbg !766

; <label>:11:                                     ; preds = %9
  %12 = icmp ult i64 %0, 1000000, !dbg !767
  br i1 %12, label %13, label %18, !dbg !770

; <label>:13:                                     ; preds = %11
  %14 = icmp ult i64 %0, 10000, !dbg !771
  br i1 %14, label %33, label %15, !dbg !774

; <label>:15:                                     ; preds = %13
  %16 = icmp ugt i64 %0, 99999, !dbg !775
  %17 = select i1 %16, i32 6, i32 5, !dbg !776
  br label %33, !dbg !777

; <label>:18:                                     ; preds = %11
  %19 = icmp ugt i64 %0, 9999999, !dbg !778
  %20 = select i1 %19, i32 8, i32 7, !dbg !779
  br label %33, !dbg !780

; <label>:21:                                     ; preds = %9
  %22 = icmp ult i64 %0, 10000000000, !dbg !781
  br i1 %22, label %23, label %26, !dbg !783

; <label>:23:                                     ; preds = %21
  %24 = icmp ugt i64 %0, 999999999, !dbg !784
  %25 = select i1 %24, i32 10, i32 9, !dbg !786
  br label %33, !dbg !787

; <label>:26:                                     ; preds = %21
  %27 = icmp ugt i64 %0, 99999999999, !dbg !788
  %28 = select i1 %27, i32 12, i32 11, !dbg !789
  br label %33, !dbg !790

; <label>:29:                                     ; preds = %7
  %30 = udiv i64 %0, 1000000000000, !dbg !791
  %31 = tail call i32 @digits10(i64 %30) #5, !dbg !792
  %32 = add i32 %31, 12, !dbg !793
  br label %33, !dbg !794

; <label>:33:                                     ; preds = %13, %5, %3, %1, %29, %26, %23, %18, %15
  %34 = phi i32 [ %17, %15 ], [ %20, %18 ], [ %25, %23 ], [ %28, %26 ], [ %32, %29 ], [ 1, %1 ], [ 2, %3 ], [ 3, %5 ], [ 4, %13 ], !dbg !795
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !796
  ret i32 %34, !dbg !796
}

; Function Attrs: noredzone nounwind
define dso_local i32 @sdigits10(i64) local_unnamed_addr #0 !dbg !797 {
  %2 = icmp slt i64 %0, 0, !dbg !808
  br i1 %2, label %3, label %9, !dbg !809

; <label>:3:                                      ; preds = %1
  %4 = icmp eq i64 %0, -9223372036854775808, !dbg !810
  %5 = sub nsw i64 0, %0, !dbg !811
  %6 = select i1 %4, i64 -9223372036854775808, i64 %5, !dbg !812
  %7 = tail call i32 @digits10(i64 %6) #5, !dbg !814
  %8 = add i32 %7, 1, !dbg !815
  br label %11

; <label>:9:                                      ; preds = %1
  %10 = tail call i32 @digits10(i64 %0) #5, !dbg !816
  br label %11, !dbg !818

; <label>:11:                                     ; preds = %9, %3
  %12 = phi i32 [ %8, %3 ], [ %10, %9 ], !dbg !819
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !820
  ret i32 %12, !dbg !820
}

; Function Attrs: noredzone nounwind
define dso_local i32 @ll2string(i8* nocapture, i64, i64) local_unnamed_addr #0 !dbg !2 {
  %4 = icmp slt i64 %2, 0, !dbg !824
  br i1 %4, label %5, label %9, !dbg !826

; <label>:5:                                      ; preds = %3
  %6 = icmp eq i64 %2, -9223372036854775808, !dbg !827
  %7 = sub nsw i64 0, %2, !dbg !830
  %8 = select i1 %6, i64 -9223372036854775808, i64 %7, !dbg !833
  br label %9, !dbg !833

; <label>:9:                                      ; preds = %3, %5
  %10 = phi i64 [ %8, %5 ], [ %2, %3 ], !dbg !834
  %11 = phi i32 [ 1, %5 ], [ 0, %3 ], !dbg !834
  %12 = tail call i32 @digits10(i64 %10) #5, !dbg !837
  %13 = add i32 %12, %11, !dbg !838
  %14 = zext i32 %13 to i64, !dbg !840
  %15 = icmp ult i64 %14, %1, !dbg !842
  br i1 %15, label %16, label %68, !dbg !843

; <label>:16:                                     ; preds = %9
  %17 = getelementptr inbounds i8, i8* %0, i64 %14, !dbg !845
  store i8 0, i8* %17, align 1, !dbg !846, !tbaa !420
  %18 = add i32 %13, -1, !dbg !847
  %19 = icmp ugt i64 %10, 99, !dbg !848
  br i1 %19, label %20, label %41, !dbg !849

; <label>:20:                                     ; preds = %16, %20
  %21 = phi i32 [ %39, %20 ], [ %18, %16 ]
  %22 = phi i64 [ %26, %20 ], [ %10, %16 ]
  %23 = urem i64 %22, 100, !dbg !850
  %24 = trunc i64 %23 to i32, !dbg !851
  %25 = shl nuw nsw i32 %24, 1, !dbg !851
  %26 = udiv i64 %22, 100, !dbg !853
  %27 = or i32 %25, 1, !dbg !854
  %28 = zext i32 %27 to i64, !dbg !855
  %29 = getelementptr inbounds [201 x i8], [201 x i8]* @ll2string.digits, i64 0, i64 %28, !dbg !855
  %30 = load i8, i8* %29, align 1, !dbg !855, !tbaa !420
  %31 = zext i32 %21 to i64, !dbg !856
  %32 = getelementptr inbounds i8, i8* %0, i64 %31, !dbg !856
  store i8 %30, i8* %32, align 1, !dbg !857, !tbaa !420
  %33 = zext i32 %25 to i64, !dbg !858
  %34 = getelementptr inbounds [201 x i8], [201 x i8]* @ll2string.digits, i64 0, i64 %33, !dbg !858
  %35 = load i8, i8* %34, align 2, !dbg !858, !tbaa !420
  %36 = add i32 %21, -1, !dbg !859
  %37 = zext i32 %36 to i64, !dbg !860
  %38 = getelementptr inbounds i8, i8* %0, i64 %37, !dbg !860
  store i8 %35, i8* %38, align 1, !dbg !861, !tbaa !420
  %39 = add i32 %21, -2, !dbg !862
  %40 = icmp ugt i64 %22, 9999, !dbg !848
  br i1 %40, label %20, label %41, !dbg !849, !llvm.loop !863

; <label>:41:                                     ; preds = %20, %16
  %42 = phi i64 [ %10, %16 ], [ %26, %20 ], !dbg !865
  %43 = phi i32 [ %18, %16 ], [ %39, %20 ], !dbg !865
  %44 = icmp ult i64 %42, 10, !dbg !866
  br i1 %44, label %45, label %48, !dbg !867

; <label>:45:                                     ; preds = %41
  %46 = trunc i64 %42 to i8, !dbg !868
  %47 = add i8 %46, 48, !dbg !870
  br label %61, !dbg !871

; <label>:48:                                     ; preds = %41
  %49 = trunc i64 %42 to i32, !dbg !872
  %50 = shl i32 %49, 1, !dbg !873
  %51 = or i32 %50, 1, !dbg !875
  %52 = sext i32 %51 to i64, !dbg !876
  %53 = getelementptr inbounds [201 x i8], [201 x i8]* @ll2string.digits, i64 0, i64 %52, !dbg !876
  %54 = load i8, i8* %53, align 1, !dbg !876, !tbaa !420
  %55 = zext i32 %43 to i64, !dbg !877
  %56 = getelementptr inbounds i8, i8* %0, i64 %55, !dbg !877
  store i8 %54, i8* %56, align 1, !dbg !878, !tbaa !420
  %57 = sext i32 %50 to i64, !dbg !879
  %58 = getelementptr inbounds [201 x i8], [201 x i8]* @ll2string.digits, i64 0, i64 %57, !dbg !879
  %59 = load i8, i8* %58, align 2, !dbg !879, !tbaa !420
  %60 = add i32 %43, -1, !dbg !880
  br label %61

; <label>:61:                                     ; preds = %48, %45
  %62 = phi i32 [ %60, %48 ], [ %43, %45 ]
  %63 = phi i8 [ %59, %48 ], [ %47, %45 ]
  %64 = zext i32 %62 to i64, !dbg !881
  %65 = getelementptr inbounds i8, i8* %0, i64 %64, !dbg !881
  store i8 %63, i8* %65, align 1, !dbg !881, !tbaa !420
  %66 = icmp eq i32 %11, 0, !dbg !882
  br i1 %66, label %68, label %67, !dbg !884

; <label>:67:                                     ; preds = %61
  store i8 45, i8* %0, align 1, !dbg !885, !tbaa !420
  br label %68, !dbg !886

; <label>:68:                                     ; preds = %67, %61, %9
  %69 = phi i32 [ 0, %9 ], [ %13, %61 ], [ %13, %67 ], !dbg !887
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !888
  ret i32 %69, !dbg !888
}

; Function Attrs: noredzone nounwind
define dso_local i32 @string2ll(i8* nocapture readonly, i64, i64*) local_unnamed_addr #0 !dbg !889 {
  %4 = icmp eq i64 %1, 0, !dbg !907
  br i1 %4, label %64, label %5, !dbg !909

; <label>:5:                                      ; preds = %3
  %6 = icmp eq i64 %1, 1, !dbg !910
  %7 = load i8, i8* %0, align 1, !dbg !912, !tbaa !420
  %8 = icmp eq i8 %7, 48, !dbg !914
  %9 = and i1 %6, %8, !dbg !915
  br i1 %9, label %10, label %13, !dbg !915

; <label>:10:                                     ; preds = %5
  %11 = icmp eq i64* %2, null, !dbg !916
  br i1 %11, label %64, label %12, !dbg !919

; <label>:12:                                     ; preds = %10
  store i64 0, i64* %2, align 8, !dbg !920, !tbaa !921
  br label %64, !dbg !923

; <label>:13:                                     ; preds = %5
  %14 = icmp eq i8 %7, 45, !dbg !924
  br i1 %14, label %15, label %19, !dbg !925

; <label>:15:                                     ; preds = %13
  %16 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !926
  br i1 %6, label %64, label %17, !dbg !928

; <label>:17:                                     ; preds = %15
  %18 = load i8, i8* %16, align 1, !dbg !929, !tbaa !420
  br label %19, !dbg !928

; <label>:19:                                     ; preds = %17, %13
  %20 = phi i8 [ %18, %17 ], [ %7, %13 ], !dbg !929
  %21 = phi i8* [ %16, %17 ], [ %0, %13 ], !dbg !931
  %22 = phi i64 [ 2, %17 ], [ 1, %13 ]
  %23 = phi i32 [ 1, %17 ], [ 0, %13 ], !dbg !931
  %24 = add i8 %20, -49, !dbg !932
  %25 = icmp ult i8 %24, 9, !dbg !932
  br i1 %25, label %26, label %64, !dbg !932

; <label>:26:                                     ; preds = %19
  %27 = sext i8 %20 to i64, !dbg !929
  %28 = add nsw i64 %27, -48, !dbg !933
  %29 = icmp ult i64 %22, %1, !dbg !936
  br i1 %29, label %30, label %50, !dbg !937

; <label>:30:                                     ; preds = %26, %45
  %31 = phi i8* [ %34, %45 ], [ %21, %26 ]
  %32 = phi i64 [ %47, %45 ], [ %28, %26 ]
  %33 = phi i64 [ %48, %45 ], [ %22, %26 ]
  %34 = getelementptr inbounds i8, i8* %31, i64 1, !dbg !938
  %35 = load i8, i8* %34, align 1, !dbg !940, !tbaa !420
  %36 = sext i8 %35 to i64, !dbg !940
  %37 = add i8 %35, -48, !dbg !941
  %38 = icmp ugt i8 %37, 9, !dbg !941
  %39 = icmp ugt i64 %32, 1844674407370955161, !dbg !942
  %40 = or i1 %39, %38, !dbg !941
  br i1 %40, label %64, label %41, !dbg !941

; <label>:41:                                     ; preds = %30
  %42 = mul i64 %32, 10, !dbg !944
  %43 = sub nsw i64 47, %36, !dbg !945
  %44 = icmp ugt i64 %42, %43, !dbg !947
  br i1 %44, label %64, label %45, !dbg !948

; <label>:45:                                     ; preds = %41
  %46 = add i64 %42, -48, !dbg !949
  %47 = add i64 %46, %36, !dbg !950
  %48 = add nuw i64 %33, 1, !dbg !951
  %49 = icmp ult i64 %48, %1, !dbg !936
  br i1 %49, label %30, label %50, !dbg !937, !llvm.loop !952

; <label>:50:                                     ; preds = %45, %26
  %51 = phi i64 [ %28, %26 ], [ %47, %45 ], !dbg !938
  %52 = icmp eq i32 %23, 0, !dbg !955
  br i1 %52, label %59, label %53, !dbg !957

; <label>:53:                                     ; preds = %50
  %54 = icmp ugt i64 %51, -9223372036854775808, !dbg !958
  br i1 %54, label %64, label %55, !dbg !961

; <label>:55:                                     ; preds = %53
  %56 = icmp eq i64* %2, null, !dbg !962
  br i1 %56, label %64, label %57, !dbg !964

; <label>:57:                                     ; preds = %55
  %58 = sub i64 0, %51, !dbg !965
  store i64 %58, i64* %2, align 8, !dbg !966, !tbaa !921
  br label %64, !dbg !967

; <label>:59:                                     ; preds = %50
  %60 = icmp slt i64 %51, 0, !dbg !968
  br i1 %60, label %64, label %61, !dbg !971

; <label>:61:                                     ; preds = %59
  %62 = icmp eq i64* %2, null, !dbg !972
  br i1 %62, label %64, label %63, !dbg !974

; <label>:63:                                     ; preds = %61
  store i64 %51, i64* %2, align 8, !dbg !975, !tbaa !921
  br label %64, !dbg !976

; <label>:64:                                     ; preds = %30, %41, %57, %63, %61, %55, %59, %53, %19, %15, %12, %10, %3
  %65 = phi i32 [ 0, %3 ], [ 1, %10 ], [ 1, %12 ], [ 0, %15 ], [ 0, %19 ], [ 0, %53 ], [ 0, %59 ], [ 1, %55 ], [ 1, %61 ], [ 1, %63 ], [ 1, %57 ], [ 0, %41 ], [ 0, %30 ], !dbg !977
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !979
  ret i32 %65, !dbg !979
}

; Function Attrs: noredzone nounwind
define dso_local i32 @string2l(i8* nocapture readonly, i64, i64* nocapture) local_unnamed_addr #0 !dbg !980 {
  %4 = icmp eq i64 %1, 0, !dbg !999
  br i1 %4, label %56, label %5, !dbg !1000

; <label>:5:                                      ; preds = %3
  %6 = icmp eq i64 %1, 1, !dbg !1001
  %7 = load i8, i8* %0, align 1, !dbg !1002, !tbaa !420
  %8 = icmp eq i8 %7, 48, !dbg !1003
  %9 = and i1 %6, %8, !dbg !1004
  br i1 %9, label %57, label %10, !dbg !1004

; <label>:10:                                     ; preds = %5
  %11 = icmp eq i8 %7, 45, !dbg !1005
  br i1 %11, label %12, label %16, !dbg !1006

; <label>:12:                                     ; preds = %10
  %13 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1007
  br i1 %6, label %56, label %14, !dbg !1008

; <label>:14:                                     ; preds = %12
  %15 = load i8, i8* %13, align 1, !dbg !1009, !tbaa !420
  br label %16, !dbg !1008

; <label>:16:                                     ; preds = %14, %10
  %17 = phi i8 [ %15, %14 ], [ %7, %10 ], !dbg !1009
  %18 = phi i8* [ %13, %14 ], [ %0, %10 ], !dbg !1010
  %19 = phi i64 [ 2, %14 ], [ 1, %10 ]
  %20 = phi i32 [ 1, %14 ], [ 0, %10 ], !dbg !1010
  %21 = add i8 %17, -49, !dbg !1011
  %22 = icmp ult i8 %21, 9, !dbg !1011
  br i1 %22, label %23, label %56, !dbg !1011

; <label>:23:                                     ; preds = %16
  %24 = sext i8 %17 to i64, !dbg !1009
  %25 = add nsw i64 %24, -48, !dbg !1012
  %26 = icmp ult i64 %19, %1, !dbg !1014
  br i1 %26, label %27, label %47, !dbg !1015

; <label>:27:                                     ; preds = %23, %42
  %28 = phi i8* [ %31, %42 ], [ %18, %23 ]
  %29 = phi i64 [ %44, %42 ], [ %25, %23 ]
  %30 = phi i64 [ %45, %42 ], [ %19, %23 ]
  %31 = getelementptr inbounds i8, i8* %28, i64 1, !dbg !1016
  %32 = load i8, i8* %31, align 1, !dbg !1017, !tbaa !420
  %33 = sext i8 %32 to i64, !dbg !1017
  %34 = add i8 %32, -48, !dbg !1018
  %35 = icmp ugt i8 %34, 9, !dbg !1018
  %36 = icmp ugt i64 %29, 1844674407370955161, !dbg !1019
  %37 = or i1 %36, %35, !dbg !1018
  br i1 %37, label %56, label %38, !dbg !1018

; <label>:38:                                     ; preds = %27
  %39 = mul i64 %29, 10, !dbg !1020
  %40 = sub nsw i64 47, %33, !dbg !1021
  %41 = icmp ugt i64 %39, %40, !dbg !1022
  br i1 %41, label %56, label %42, !dbg !1023

; <label>:42:                                     ; preds = %38
  %43 = add i64 %39, -48, !dbg !1024
  %44 = add i64 %43, %33, !dbg !1025
  %45 = add nuw i64 %30, 1, !dbg !1026
  %46 = icmp ult i64 %45, %1, !dbg !1014
  br i1 %46, label %27, label %47, !dbg !1015, !llvm.loop !952

; <label>:47:                                     ; preds = %42, %23
  %48 = phi i64 [ %25, %23 ], [ %44, %42 ], !dbg !1016
  %49 = icmp eq i32 %20, 0, !dbg !1027
  br i1 %49, label %54, label %50, !dbg !1028

; <label>:50:                                     ; preds = %47
  %51 = icmp ugt i64 %48, -9223372036854775808, !dbg !1029
  br i1 %51, label %56, label %52, !dbg !1030

; <label>:52:                                     ; preds = %50
  %53 = sub i64 0, %48, !dbg !1031
  br label %57, !dbg !1032

; <label>:54:                                     ; preds = %47
  %55 = icmp slt i64 %48, 0, !dbg !1033
  br i1 %55, label %56, label %57, !dbg !1034

; <label>:56:                                     ; preds = %38, %27, %3, %12, %16, %50, %54
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1035
  br label %59, !dbg !1036

; <label>:57:                                     ; preds = %54, %52, %5
  %58 = phi i64 [ %53, %52 ], [ 0, %5 ], [ %48, %54 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1035
  store i64 %58, i64* %2, align 8, !dbg !1038, !tbaa !1039
  br label %59, !dbg !1041

; <label>:59:                                     ; preds = %56, %57
  %60 = phi i32 [ 1, %57 ], [ 0, %56 ], !dbg !1042
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1043
  ret i32 %60, !dbg !1043
}

; Function Attrs: noredzone nounwind
define dso_local i32 @string2ld(i8*, i64, x86_fp80*) local_unnamed_addr #0 !dbg !1044 {
  %4 = alloca [5120 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = getelementptr inbounds [5120 x i8], [5120 x i8]* %4, i64 0, i64 0, !dbg !1062
  call void @llvm.lifetime.start.p0i8(i64 5120, i8* nonnull %6) #7, !dbg !1062
  %7 = bitcast i8** %5 to i8*, !dbg !1064
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #7, !dbg !1064
  %8 = icmp ugt i64 %1, 5119, !dbg !1065
  br i1 %8, label %47, label %9, !dbg !1067

; <label>:9:                                      ; preds = %3
  %10 = call i8* @memcpy(i8* nonnull %6, i8* %0, i64 %1) #6, !dbg !1068
  %11 = getelementptr inbounds [5120 x i8], [5120 x i8]* %4, i64 0, i64 %1, !dbg !1069
  store i8 0, i8* %11, align 1, !dbg !1070, !tbaa !420
  %12 = call i32* @__errno() #6, !dbg !1071
  store i32 0, i32* %12, align 4, !dbg !1072, !tbaa !657
  %13 = call x86_fp80 @strtold(i8* nonnull %6, i8** nonnull %5) #6, !dbg !1074
  %14 = call i8* @__locale_ctype_ptr() #6, !dbg !1076
  %15 = getelementptr inbounds i8, i8* %14, i64 1, !dbg !1076
  %16 = load i8, i8* %6, align 16, !dbg !1076, !tbaa !420
  %17 = sext i8 %16 to i64, !dbg !1076
  %18 = getelementptr inbounds i8, i8* %15, i64 %17, !dbg !1076
  %19 = load i8, i8* %18, align 1, !dbg !1076, !tbaa !420
  %20 = and i8 %19, 8, !dbg !1076
  %21 = icmp eq i8 %20, 0, !dbg !1076
  br i1 %21, label %22, label %47, !dbg !1078

; <label>:22:                                     ; preds = %9
  %23 = load i8*, i8** %5, align 8, !dbg !1079, !tbaa !730
  %24 = load i8, i8* %23, align 1, !dbg !1079, !tbaa !420
  %25 = icmp eq i8 %24, 0, !dbg !1080
  br i1 %25, label %26, label %47, !dbg !1081

; <label>:26:                                     ; preds = %22
  %27 = call i32* @__errno() #6, !dbg !1082
  %28 = load i32, i32* %27, align 4, !dbg !1082, !tbaa !657
  %29 = icmp eq i32 %28, 34, !dbg !1083
  br i1 %29, label %30, label %36, !dbg !1084

; <label>:30:                                     ; preds = %26
  %31 = fcmp oeq x86_fp80 %13, 0xK7FFF8000000000000000, !dbg !1085
  %32 = fcmp oeq x86_fp80 %13, 0xKFFFF8000000000000000, !dbg !1086
  %33 = or i1 %31, %32, !dbg !1087
  %34 = fcmp oeq x86_fp80 %13, 0xK00000000000000000000, !dbg !1088
  %35 = or i1 %34, %33, !dbg !1087
  br i1 %35, label %47, label %36, !dbg !1087

; <label>:36:                                     ; preds = %30, %26
  %37 = call i32* @__errno() #6, !dbg !1089
  %38 = load i32, i32* %37, align 4, !dbg !1089, !tbaa !657
  %39 = icmp eq i32 %38, 22, !dbg !1090
  br i1 %39, label %47, label %40, !dbg !1091

; <label>:40:                                     ; preds = %36
  %41 = fptrunc x86_fp80 %13 to double, !dbg !1092
  %42 = call i32 @__fpclassifyd(double %41) #6, !dbg !1092
  %43 = icmp eq i32 %42, 0, !dbg !1092
  br i1 %43, label %47, label %44, !dbg !1093

; <label>:44:                                     ; preds = %40
  %45 = icmp eq x86_fp80* %2, null, !dbg !1094
  br i1 %45, label %47, label %46, !dbg !1096

; <label>:46:                                     ; preds = %44
  store x86_fp80 %13, x86_fp80* %2, align 16, !dbg !1097, !tbaa !1098
  br label %47, !dbg !1100

; <label>:47:                                     ; preds = %46, %44, %30, %36, %40, %9, %22, %3
  %48 = phi i32 [ 0, %3 ], [ 0, %22 ], [ 0, %9 ], [ 0, %40 ], [ 0, %36 ], [ 0, %30 ], [ 1, %44 ], [ 1, %46 ], !dbg !1101
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
  br i1 %5, label %6, label %8, !dbg !1120

; <label>:6:                                      ; preds = %3
  %7 = tail call i32 (i8*, i64, i8*, ...) @snprintf(i8* %0, i64 %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !1121
  br label %103, !dbg !1123

; <label>:8:                                      ; preds = %3
  %9 = tail call i32 @__fpclassifyd(double %2) #6, !dbg !1124
  %10 = icmp eq i32 %9, 1, !dbg !1124
  br i1 %10, label %11, label %17, !dbg !1125

; <label>:11:                                     ; preds = %8
  %12 = fcmp olt double %2, 0.000000e+00, !dbg !1126
  br i1 %12, label %13, label %15, !dbg !1129

; <label>:13:                                     ; preds = %11
  %14 = tail call i32 (i8*, i64, i8*, ...) @snprintf(i8* %0, i64 %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !1130
  br label %103, !dbg !1131

; <label>:15:                                     ; preds = %11
  %16 = tail call i32 (i8*, i64, i8*, ...) @snprintf(i8* %0, i64 %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !1132
  br label %103

; <label>:17:                                     ; preds = %8
  %18 = fcmp oeq double %2, 0.000000e+00, !dbg !1133
  br i1 %18, label %19, label %26, !dbg !1134

; <label>:19:                                     ; preds = %17
  %20 = fdiv double 1.000000e+00, %2, !dbg !1135
  %21 = fcmp olt double %20, 0.000000e+00, !dbg !1138
  br i1 %21, label %22, label %24, !dbg !1139

; <label>:22:                                     ; preds = %19
  %23 = tail call i32 (i8*, i64, i8*, ...) @snprintf(i8* %0, i64 %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0)) #6, !dbg !1140
  br label %103, !dbg !1141

; <label>:24:                                     ; preds = %19
  %25 = tail call i32 (i8*, i64, i8*, ...) @snprintf(i8* %0, i64 %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0)) #6, !dbg !1142
  br label %103

; <label>:26:                                     ; preds = %17
  %27 = fcmp ogt double %2, 0xC32FFFFFFFFFFFFE, !dbg !1145
  %28 = fcmp olt double %2, 0x4330000000000000, !dbg !1147
  %29 = and i1 %27, %28, !dbg !1148
  br i1 %29, label %30, label %101, !dbg !1148

; <label>:30:                                     ; preds = %26
  %31 = fptosi double %2 to i64, !dbg !1149
  %32 = sitofp i64 %31 to double, !dbg !1150
  %33 = fcmp oeq double %32, %2, !dbg !1151
  br i1 %33, label %34, label %101, !dbg !1152

; <label>:34:                                     ; preds = %30
  %35 = icmp slt i64 %31, 0, !dbg !1157
  br i1 %35, label %36, label %40, !dbg !1158

; <label>:36:                                     ; preds = %34
  %37 = icmp eq i64 %31, -9223372036854775808, !dbg !1159
  %38 = sub nsw i64 0, %31, !dbg !1160
  %39 = select i1 %37, i64 -9223372036854775808, i64 %38, !dbg !1162
  br label %40, !dbg !1162

; <label>:40:                                     ; preds = %36, %34
  %41 = phi i64 [ %39, %36 ], [ %31, %34 ], !dbg !1163
  %42 = phi i32 [ 1, %36 ], [ 0, %34 ], !dbg !1163
  %43 = tail call i32 @digits10(i64 %41) #6, !dbg !1165
  %44 = add i32 %43, %42, !dbg !1166
  %45 = zext i32 %44 to i64, !dbg !1168
  %46 = icmp ult i64 %45, %1, !dbg !1169
  br i1 %46, label %47, label %99, !dbg !1170

; <label>:47:                                     ; preds = %40
  %48 = getelementptr inbounds i8, i8* %0, i64 %45, !dbg !1172
  store i8 0, i8* %48, align 1, !dbg !1173, !tbaa !420
  %49 = add i32 %44, -1, !dbg !1174
  %50 = icmp ugt i64 %41, 99, !dbg !1175
  br i1 %50, label %51, label %72, !dbg !1176

; <label>:51:                                     ; preds = %47, %51
  %52 = phi i32 [ %70, %51 ], [ %49, %47 ]
  %53 = phi i64 [ %57, %51 ], [ %41, %47 ]
  %54 = urem i64 %53, 100, !dbg !1177
  %55 = trunc i64 %54 to i32, !dbg !1178
  %56 = shl nuw nsw i32 %55, 1, !dbg !1178
  %57 = udiv i64 %53, 100, !dbg !1180
  %58 = or i32 %56, 1, !dbg !1181
  %59 = zext i32 %58 to i64, !dbg !1182
  %60 = getelementptr inbounds [201 x i8], [201 x i8]* @ll2string.digits, i64 0, i64 %59, !dbg !1182
  %61 = load i8, i8* %60, align 1, !dbg !1182, !tbaa !420
  %62 = zext i32 %52 to i64, !dbg !1183
  %63 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !1183
  store i8 %61, i8* %63, align 1, !dbg !1184, !tbaa !420
  %64 = zext i32 %56 to i64, !dbg !1185
  %65 = getelementptr inbounds [201 x i8], [201 x i8]* @ll2string.digits, i64 0, i64 %64, !dbg !1185
  %66 = load i8, i8* %65, align 2, !dbg !1185, !tbaa !420
  %67 = add i32 %52, -1, !dbg !1186
  %68 = zext i32 %67 to i64, !dbg !1187
  %69 = getelementptr inbounds i8, i8* %0, i64 %68, !dbg !1187
  store i8 %66, i8* %69, align 1, !dbg !1188, !tbaa !420
  %70 = add i32 %52, -2, !dbg !1189
  %71 = icmp ugt i64 %53, 9999, !dbg !1175
  br i1 %71, label %51, label %72, !dbg !1176, !llvm.loop !863

; <label>:72:                                     ; preds = %51, %47
  %73 = phi i64 [ %41, %47 ], [ %57, %51 ], !dbg !1190
  %74 = phi i32 [ %49, %47 ], [ %70, %51 ], !dbg !1190
  %75 = icmp ult i64 %73, 10, !dbg !1191
  br i1 %75, label %76, label %79, !dbg !1192

; <label>:76:                                     ; preds = %72
  %77 = trunc i64 %73 to i8, !dbg !1193
  %78 = add i8 %77, 48, !dbg !1194
  br label %92, !dbg !1195

; <label>:79:                                     ; preds = %72
  %80 = trunc i64 %73 to i32, !dbg !1196
  %81 = shl i32 %80, 1, !dbg !1197
  %82 = or i32 %81, 1, !dbg !1199
  %83 = sext i32 %82 to i64, !dbg !1200
  %84 = getelementptr inbounds [201 x i8], [201 x i8]* @ll2string.digits, i64 0, i64 %83, !dbg !1200
  %85 = load i8, i8* %84, align 1, !dbg !1200, !tbaa !420
  %86 = zext i32 %74 to i64, !dbg !1201
  %87 = getelementptr inbounds i8, i8* %0, i64 %86, !dbg !1201
  store i8 %85, i8* %87, align 1, !dbg !1202, !tbaa !420
  %88 = sext i32 %81 to i64, !dbg !1203
  %89 = getelementptr inbounds [201 x i8], [201 x i8]* @ll2string.digits, i64 0, i64 %88, !dbg !1203
  %90 = load i8, i8* %89, align 2, !dbg !1203, !tbaa !420
  %91 = add i32 %74, -1, !dbg !1204
  br label %92

; <label>:92:                                     ; preds = %79, %76
  %93 = phi i32 [ %91, %79 ], [ %74, %76 ]
  %94 = phi i8 [ %90, %79 ], [ %78, %76 ]
  %95 = zext i32 %93 to i64, !dbg !1205
  %96 = getelementptr inbounds i8, i8* %0, i64 %95, !dbg !1205
  store i8 %94, i8* %96, align 1, !dbg !1205, !tbaa !420
  %97 = icmp eq i32 %42, 0, !dbg !1206
  br i1 %97, label %99, label %98, !dbg !1207

; <label>:98:                                     ; preds = %92
  store i8 45, i8* %0, align 1, !dbg !1208, !tbaa !420
  br label %99, !dbg !1209

; <label>:99:                                     ; preds = %40, %92, %98
  %100 = phi i32 [ 0, %40 ], [ %44, %92 ], [ %44, %98 ], !dbg !1210
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1211
  br label %103, !dbg !1212

; <label>:101:                                    ; preds = %30, %26
  %102 = tail call i32 (i8*, i64, i8*, ...) @snprintf(i8* %0, i64 %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), double %2) #6, !dbg !1213
  br label %103

; <label>:103:                                    ; preds = %99, %101, %15, %13, %22, %24, %6
  %104 = phi i32 [ %7, %6 ], [ %14, %13 ], [ %16, %15 ], [ %23, %22 ], [ %25, %24 ], [ %100, %99 ], [ %102, %101 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1214
  ret i32 %104, !dbg !1214
}

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @ld2string(i8*, i64, x86_fp80, i32) local_unnamed_addr #0 !dbg !1215 {
  %5 = fptrunc x86_fp80 %2 to double, !dbg !1234
  %6 = tail call i32 @__fpclassifyd(double %5) #6, !dbg !1234
  %7 = icmp eq i32 %6, 1, !dbg !1234
  br i1 %7, label %8, label %16, !dbg !1235

; <label>:8:                                      ; preds = %4
  %9 = icmp ult i64 %1, 5, !dbg !1236
  br i1 %9, label %46, label %10, !dbg !1239

; <label>:10:                                     ; preds = %8
  %11 = fcmp ogt x86_fp80 %2, 0xK00000000000000000000, !dbg !1240
  br i1 %11, label %12, label %14, !dbg !1242

; <label>:12:                                     ; preds = %10
  %13 = tail call i8* @memcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i64 3) #6, !dbg !1243
  br label %42, !dbg !1246

; <label>:14:                                     ; preds = %10
  %15 = tail call i8* @memcpy(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 4) #6, !dbg !1247
  br label %42

; <label>:16:                                     ; preds = %4
  %17 = icmp eq i32 %3, 0, !dbg !1249
  br i1 %17, label %37, label %18, !dbg !1250

; <label>:18:                                     ; preds = %16
  %19 = tail call i32 (i8*, i64, i8*, ...) @snprintf(i8* %0, i64 %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), x86_fp80 %2) #6, !dbg !1251
  %20 = sext i32 %19 to i64, !dbg !1251
  %21 = add nsw i64 %20, 1, !dbg !1252
  %22 = icmp ugt i64 %21, %1, !dbg !1254
  br i1 %22, label %46, label %23, !dbg !1255

; <label>:23:                                     ; preds = %18
  %24 = tail call i8* @strchr(i8* %0, i32 46) #6, !dbg !1256
  %25 = icmp eq i8* %24, null, !dbg !1257
  br i1 %25, label %42, label %26, !dbg !1258

; <label>:26:                                     ; preds = %23
  %27 = getelementptr inbounds i8, i8* %0, i64 %20, !dbg !1259
  br label %28, !dbg !1261

; <label>:28:                                     ; preds = %33, %26
  %29 = phi i64 [ %20, %26 ], [ %34, %33 ], !dbg !1262
  %30 = phi i8* [ %27, %26 ], [ %31, %33 ]
  %31 = getelementptr inbounds i8, i8* %30, i64 -1, !dbg !1262
  %32 = load i8, i8* %31, align 1, !dbg !1264, !tbaa !420
  switch i8 %32, label %42 [
    i8 48, label %33
    i8 46, label %35
  ], !dbg !1261

; <label>:33:                                     ; preds = %28
  %34 = add i64 %29, -1, !dbg !1265
  br label %28, !dbg !1261, !llvm.loop !1266

; <label>:35:                                     ; preds = %28
  %36 = add i64 %29, -1, !dbg !1268
  br label %42, !dbg !1270

; <label>:37:                                     ; preds = %16
  %38 = tail call i32 (i8*, i64, i8*, ...) @snprintf(i8* %0, i64 %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), x86_fp80 %2) #6, !dbg !1271
  %39 = sext i32 %38 to i64, !dbg !1271
  %40 = add nsw i64 %39, 1, !dbg !1273
  %41 = icmp ugt i64 %40, %1, !dbg !1275
  br i1 %41, label %46, label %42, !dbg !1276

; <label>:42:                                     ; preds = %28, %35, %23, %37, %12, %14
  %43 = phi i64 [ 3, %12 ], [ 4, %14 ], [ %20, %23 ], [ %39, %37 ], [ %36, %35 ], [ %29, %28 ], !dbg !1277
  %44 = getelementptr inbounds i8, i8* %0, i64 %43, !dbg !1278
  store i8 0, i8* %44, align 1, !dbg !1279, !tbaa !420
  %45 = trunc i64 %43 to i32, !dbg !1280
  br label %46, !dbg !1281

; <label>:46:                                     ; preds = %37, %18, %8, %42
  %47 = phi i32 [ %45, %42 ], [ 0, %8 ], [ 0, %18 ], [ 0, %37 ], !dbg !1282
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1283
  ret i32 %47, !dbg !1283
}

; Function Attrs: noredzone
declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @getRandomBytes(i8*, i64) local_unnamed_addr #0 !dbg !81 {
  %3 = alloca %struct.timeval, align 8
  %4 = alloca [20 x i8], align 16
  %5 = alloca %struct.SHA1_CTX, align 4
  %6 = load i1, i1* @getRandomBytes.seed_initialized, align 4
  br i1 %6, label %39, label %7, !dbg !1286

; <label>:7:                                      ; preds = %2
  %8 = tail call %struct.__sFILE* @fopen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #6, !dbg !1287
  %9 = icmp eq %struct.__sFILE* %8, null, !dbg !1289
  br i1 %9, label %13, label %10, !dbg !1290

; <label>:10:                                     ; preds = %7
  %11 = tail call i64 @fread(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @getRandomBytes.seed, i64 0, i64 0), i64 20, i64 1, %struct.__sFILE* nonnull %8) #6, !dbg !1291
  %12 = icmp eq i64 %11, 1, !dbg !1292
  br i1 %12, label %35, label %13, !dbg !1293

; <label>:13:                                     ; preds = %10, %7
  %14 = bitcast %struct.timeval* %3 to i8*
  %15 = ptrtoint %struct.timeval* %3 to i64
  %16 = add i64 %15, 65536
  %17 = inttoptr i64 %16 to %struct.timeval*
  %18 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i64 0, i32 0
  %19 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i64 0, i32 1
  %20 = ptrtoint %struct.__sFILE* %8 to i64
  br label %21, !dbg !1295

; <label>:21:                                     ; preds = %21, %13
  %22 = phi i64 [ 0, %13 ], [ %33, %21 ]
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %14) #7, !dbg !1309
  %23 = call i32 @gettimeofday(%struct.timeval* %17, i8* null) #6, !dbg !1311
  %24 = load i64, i64* %18, align 8, !dbg !1313, !tbaa !1314
  %25 = load i64, i64* %19, align 8, !dbg !1316, !tbaa !1317
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %14) #7, !dbg !1318
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1319
  %26 = call i32 @getpid() #6, !dbg !1320
  %27 = zext i32 %26 to i64, !dbg !1322
  %28 = xor i64 %24, %20, !dbg !1323
  %29 = xor i64 %28, %25, !dbg !1324
  %30 = xor i64 %29, %27, !dbg !1325
  %31 = trunc i64 %30 to i8, !dbg !1326
  %32 = getelementptr inbounds [20 x i8], [20 x i8]* @getRandomBytes.seed, i64 0, i64 %22, !dbg !1327
  store i8 %31, i8* %32, align 1, !dbg !1328, !tbaa !420
  %33 = add nuw nsw i64 %22, 1, !dbg !1329
  %34 = icmp eq i64 %33, 20, !dbg !1330
  br i1 %34, label %36, label %21, !dbg !1295, !llvm.loop !1331

; <label>:35:                                     ; preds = %10
  store i1 true, i1* @getRandomBytes.seed_initialized, align 4
  br label %37, !dbg !1333

; <label>:36:                                     ; preds = %21
  br i1 %9, label %39, label %37, !dbg !1333

; <label>:37:                                     ; preds = %35, %36
  %38 = call i32 @fclose(%struct.__sFILE* nonnull %8) #6, !dbg !1334
  br label %39, !dbg !1334

; <label>:39:                                     ; preds = %37, %36, %2
  %40 = icmp eq i64 %1, 0, !dbg !1336
  br i1 %40, label %55, label %41, !dbg !1336

; <label>:41:                                     ; preds = %39
  %42 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %43 = bitcast %struct.SHA1_CTX* %5 to i8*
  br label %44, !dbg !1336

; <label>:44:                                     ; preds = %41, %44
  %45 = phi i8* [ %0, %41 ], [ %53, %44 ]
  %46 = phi i64 [ %1, %41 ], [ %52, %44 ]
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %42) #7, !dbg !1337
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %43) #7, !dbg !1339
  %47 = icmp ult i64 %46, 20, !dbg !1340
  %48 = select i1 %47, i64 %46, i64 20, !dbg !1340
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %5) #6, !dbg !1342
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %5, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @getRandomBytes.seed, i64 0, i64 0), i32 20) #6, !dbg !1343
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %5, i8* bitcast (i64* @getRandomBytes.counter to i8*), i32 8) #6, !dbg !1344
  call void @SHA1Final(i8* nonnull %42, %struct.SHA1_CTX* nonnull %5) #6, !dbg !1345
  %49 = load i64, i64* @getRandomBytes.counter, align 8, !dbg !1346, !tbaa !1039
  %50 = add i64 %49, 1, !dbg !1346
  store i64 %50, i64* @getRandomBytes.counter, align 8, !dbg !1346, !tbaa !1039
  %51 = call i8* @memcpy(i8* %45, i8* nonnull %42, i64 %48) #6, !dbg !1347
  %52 = sub i64 %46, %48, !dbg !1348
  %53 = getelementptr inbounds i8, i8* %45, i64 %48, !dbg !1349
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %43) #7, !dbg !1350
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %42) #7, !dbg !1350
  %54 = icmp eq i64 %52, 0, !dbg !1336
  br i1 %54, label %55, label %44, !dbg !1336, !llvm.loop !1351

; <label>:55:                                     ; preds = %44, %39
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1352
  ret void, !dbg !1352
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
define dso_local void @getRandomHexChars(i8*, i64) local_unnamed_addr #0 !dbg !1353 {
  tail call void @getRandomBytes(i8* %0, i64 %1) #5, !dbg !1363
  %3 = icmp eq i64 %1, 0, !dbg !1365
  br i1 %3, label %38, label %4, !dbg !1368

; <label>:4:                                      ; preds = %2
  %5 = and i64 %1, 1, !dbg !1369
  %6 = icmp eq i64 %1, 1, !dbg !1369
  br i1 %6, label %28, label %7, !dbg !1369

; <label>:7:                                      ; preds = %4
  %8 = sub i64 %1, %5, !dbg !1369
  br label %9, !dbg !1369

; <label>:9:                                      ; preds = %9, %7
  %10 = phi i64 [ 0, %7 ], [ %25, %9 ]
  %11 = phi i64 [ %8, %7 ], [ %26, %9 ]
  %12 = getelementptr inbounds i8, i8* %0, i64 %10, !dbg !1369
  %13 = load i8, i8* %12, align 1, !dbg !1369, !tbaa !420
  %14 = and i8 %13, 15, !dbg !1370
  %15 = zext i8 %14 to i64, !dbg !1371
  %16 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.17, i64 0, i64 %15, !dbg !1371
  %17 = load i8, i8* %16, align 1, !dbg !1371, !tbaa !420
  store i8 %17, i8* %12, align 1, !dbg !1372, !tbaa !420
  %18 = or i64 %10, 1, !dbg !1373
  %19 = getelementptr inbounds i8, i8* %0, i64 %18, !dbg !1369
  %20 = load i8, i8* %19, align 1, !dbg !1369, !tbaa !420
  %21 = and i8 %20, 15, !dbg !1370
  %22 = zext i8 %21 to i64, !dbg !1371
  %23 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.17, i64 0, i64 %22, !dbg !1371
  %24 = load i8, i8* %23, align 1, !dbg !1371, !tbaa !420
  store i8 %24, i8* %19, align 1, !dbg !1372, !tbaa !420
  %25 = add i64 %10, 2, !dbg !1373
  %26 = add i64 %11, -2, !dbg !1368
  %27 = icmp eq i64 %26, 0, !dbg !1368
  br i1 %27, label %28, label %9, !dbg !1368, !llvm.loop !1374

; <label>:28:                                     ; preds = %9, %4
  %29 = phi i64 [ 0, %4 ], [ %25, %9 ]
  %30 = icmp eq i64 %5, 0, !dbg !1368
  br i1 %30, label %38, label %31, !dbg !1368

; <label>:31:                                     ; preds = %28
  %32 = getelementptr inbounds i8, i8* %0, i64 %29, !dbg !1369
  %33 = load i8, i8* %32, align 1, !dbg !1369, !tbaa !420
  %34 = and i8 %33, 15, !dbg !1370
  %35 = zext i8 %34 to i64, !dbg !1371
  %36 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.17, i64 0, i64 %35, !dbg !1371
  %37 = load i8, i8* %36, align 1, !dbg !1371, !tbaa !420
  store i8 %37, i8* %32, align 1, !dbg !1372, !tbaa !420
  br label %38, !dbg !1376

; <label>:38:                                     ; preds = %31, %28, %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1376
  ret void, !dbg !1376
}

; Function Attrs: noredzone nounwind
define dso_local i8* @getAbsolutePath(i8*) local_unnamed_addr #0 !dbg !1377 {
  %2 = alloca [1024 x i8], align 16
  %3 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0, !dbg !1395
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %3) #7, !dbg !1395
  %4 = tail call i8* @sdsnew(i8* %0) #6, !dbg !1397
  %5 = tail call i8* @sdstrim(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0)) #6, !dbg !1399
  %6 = load i8, i8* %5, align 1, !dbg !1400, !tbaa !420
  %7 = icmp eq i8 %6, 47, !dbg !1402
  br i1 %7, label %179, label %8, !dbg !1403

; <label>:8:                                      ; preds = %1
  %9 = call i8* @getcwd(i8* nonnull %3, i64 1024) #6, !dbg !1404
  %10 = icmp eq i8* %9, null, !dbg !1406
  br i1 %10, label %11, label %12, !dbg !1407

; <label>:11:                                     ; preds = %8
  call void @sdsfree(i8* %5) #6, !dbg !1408
  br label %179, !dbg !1410

; <label>:12:                                     ; preds = %8
  %13 = call i8* @sdsnew(i8* nonnull %3) #6, !dbg !1411
  %14 = getelementptr inbounds i8, i8* %13, i64 -1, !dbg !1423
  %15 = load i8, i8* %14, align 1, !dbg !1423, !tbaa !420
  %16 = trunc i8 %15 to i3, !dbg !1425
  switch i3 %16, label %17 [
    i3 0, label %18
    i3 1, label %21
    i3 2, label %25
    i3 3, label %30
    i3 -4, label %35
  ], !dbg !1425

; <label>:17:                                     ; preds = %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1426
  br label %73, !dbg !1427

; <label>:18:                                     ; preds = %12
  %19 = lshr i8 %15, 3, !dbg !1428
  %20 = zext i8 %19 to i64, !dbg !1428
  br label %39, !dbg !1430

; <label>:21:                                     ; preds = %12
  %22 = getelementptr inbounds i8, i8* %13, i64 -3, !dbg !1431
  %23 = load i8, i8* %22, align 1, !dbg !1432, !tbaa !420
  %24 = zext i8 %23 to i64, !dbg !1431
  br label %39, !dbg !1433

; <label>:25:                                     ; preds = %12
  %26 = getelementptr inbounds i8, i8* %13, i64 -5, !dbg !1434
  %27 = bitcast i8* %26 to i16*, !dbg !1435
  %28 = load i16, i16* %27, align 1, !dbg !1435, !tbaa !1436
  %29 = zext i16 %28 to i64, !dbg !1434
  br label %39, !dbg !1438

; <label>:30:                                     ; preds = %12
  %31 = getelementptr inbounds i8, i8* %13, i64 -9, !dbg !1439
  %32 = bitcast i8* %31 to i32*, !dbg !1440
  %33 = load i32, i32* %32, align 1, !dbg !1440, !tbaa !657
  %34 = zext i32 %33 to i64, !dbg !1439
  br label %39, !dbg !1441

; <label>:35:                                     ; preds = %12
  %36 = getelementptr inbounds i8, i8* %13, i64 -17, !dbg !1442
  %37 = bitcast i8* %36 to i64*, !dbg !1443
  %38 = load i64, i64* %37, align 1, !dbg !1443, !tbaa !1039
  br label %39, !dbg !1444

; <label>:39:                                     ; preds = %18, %21, %25, %30, %35
  %40 = phi i64 [ %38, %35 ], [ %34, %30 ], [ %29, %25 ], [ %24, %21 ], [ %20, %18 ], !dbg !1445
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1426
  %41 = icmp eq i64 %40, 0, !dbg !1446
  br i1 %41, label %73, label %42, !dbg !1427

; <label>:42:                                     ; preds = %39
  switch i3 %16, label %64 [
    i3 0, label %43
    i3 1, label %46
    i3 2, label %50
    i3 3, label %55
    i3 -4, label %60
  ], !dbg !1450

; <label>:43:                                     ; preds = %42
  %44 = lshr i8 %15, 3, !dbg !1451
  %45 = zext i8 %44 to i64, !dbg !1451
  br label %64, !dbg !1452

; <label>:46:                                     ; preds = %42
  %47 = getelementptr inbounds i8, i8* %13, i64 -3, !dbg !1453
  %48 = load i8, i8* %47, align 1, !dbg !1454, !tbaa !420
  %49 = zext i8 %48 to i64, !dbg !1453
  br label %64, !dbg !1455

; <label>:50:                                     ; preds = %42
  %51 = getelementptr inbounds i8, i8* %13, i64 -5, !dbg !1456
  %52 = bitcast i8* %51 to i16*, !dbg !1457
  %53 = load i16, i16* %52, align 1, !dbg !1457, !tbaa !1436
  %54 = zext i16 %53 to i64, !dbg !1456
  br label %64, !dbg !1458

; <label>:55:                                     ; preds = %42
  %56 = getelementptr inbounds i8, i8* %13, i64 -9, !dbg !1459
  %57 = bitcast i8* %56 to i32*, !dbg !1460
  %58 = load i32, i32* %57, align 1, !dbg !1460, !tbaa !657
  %59 = zext i32 %58 to i64, !dbg !1459
  br label %64, !dbg !1461

; <label>:60:                                     ; preds = %42
  %61 = getelementptr inbounds i8, i8* %13, i64 -17, !dbg !1462
  %62 = bitcast i8* %61 to i64*, !dbg !1463
  %63 = load i64, i64* %62, align 1, !dbg !1463, !tbaa !1039
  br label %64, !dbg !1464

; <label>:64:                                     ; preds = %42, %43, %46, %50, %55, %60
  %65 = phi i64 [ %63, %60 ], [ %59, %55 ], [ %54, %50 ], [ %49, %46 ], [ %45, %43 ], [ 0, %42 ], !dbg !1465
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1466
  %66 = add i64 %65, -1, !dbg !1467
  %67 = getelementptr inbounds i8, i8* %13, i64 %66, !dbg !1468
  %68 = load i8, i8* %67, align 1, !dbg !1468, !tbaa !420
  %69 = icmp eq i8 %68, 47, !dbg !1469
  br i1 %69, label %73, label %70, !dbg !1470

; <label>:70:                                     ; preds = %64
  %71 = call i8* @sdscat(i8* nonnull %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #6, !dbg !1471
  %72 = getelementptr inbounds i8, i8* %71, i64 -1
  br label %73, !dbg !1472

; <label>:73:                                     ; preds = %17, %64, %39, %70
  %74 = phi i8* [ %14, %17 ], [ %14, %64 ], [ %14, %39 ], [ %72, %70 ]
  %75 = phi i8* [ %13, %17 ], [ %13, %64 ], [ %13, %39 ], [ %71, %70 ], !dbg !1473
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
  br label %94, !dbg !1474

; <label>:94:                                     ; preds = %128, %73
  %95 = load i8, i8* %76, align 1, !dbg !1477, !tbaa !420
  %96 = trunc i8 %95 to i3, !dbg !1479
  switch i3 %96, label %97 [
    i3 0, label %98
    i3 1, label %101
    i3 2, label %104
    i3 3, label %107
    i3 -4, label %110
  ], !dbg !1479

; <label>:97:                                     ; preds = %94
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1480
  br label %177, !dbg !1481

; <label>:98:                                     ; preds = %94
  %99 = lshr i8 %95, 3, !dbg !1482
  %100 = zext i8 %99 to i64, !dbg !1482
  br label %112, !dbg !1483

; <label>:101:                                    ; preds = %94
  %102 = load i8, i8* %77, align 1, !dbg !1484, !tbaa !420
  %103 = zext i8 %102 to i64, !dbg !1485
  br label %112, !dbg !1486

; <label>:104:                                    ; preds = %94
  %105 = load i16, i16* %79, align 1, !dbg !1487, !tbaa !1436
  %106 = zext i16 %105 to i64, !dbg !1488
  br label %112, !dbg !1489

; <label>:107:                                    ; preds = %94
  %108 = load i32, i32* %81, align 1, !dbg !1490, !tbaa !657
  %109 = zext i32 %108 to i64, !dbg !1491
  br label %112, !dbg !1492

; <label>:110:                                    ; preds = %94
  %111 = load i64, i64* %83, align 1, !dbg !1493, !tbaa !1039
  br label %112, !dbg !1494

; <label>:112:                                    ; preds = %98, %101, %104, %107, %110
  %113 = phi i64 [ %111, %110 ], [ %109, %107 ], [ %106, %104 ], [ %103, %101 ], [ %100, %98 ], !dbg !1495
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1480
  %114 = icmp ugt i64 %113, 2, !dbg !1496
  br i1 %114, label %115, label %177, !dbg !1481

; <label>:115:                                    ; preds = %112
  %116 = load i8, i8* %5, align 1, !dbg !1497, !tbaa !420
  %117 = icmp eq i8 %116, 46, !dbg !1498
  br i1 %117, label %118, label %177, !dbg !1499

; <label>:118:                                    ; preds = %115
  %119 = load i8, i8* %84, align 1, !dbg !1500, !tbaa !420
  %120 = icmp eq i8 %119, 46, !dbg !1501
  br i1 %120, label %121, label %177, !dbg !1502

; <label>:121:                                    ; preds = %118
  %122 = load i8, i8* %85, align 1, !dbg !1503, !tbaa !420
  %123 = icmp eq i8 %122, 47, !dbg !1504
  br i1 %123, label %124, label %177, !dbg !1474

; <label>:124:                                    ; preds = %121
  call void @sdsrange(i8* nonnull %5, i64 3, i64 -1) #6, !dbg !1505
  %125 = load i8, i8* %74, align 1, !dbg !1508, !tbaa !420
  %126 = trunc i8 %125 to i3, !dbg !1510
  switch i3 %126, label %127 [
    i3 0, label %129
    i3 1, label %132
    i3 2, label %135
    i3 3, label %138
    i3 -4, label %141
  ], !dbg !1510

; <label>:127:                                    ; preds = %124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1511
  br label %128, !dbg !1512

; <label>:128:                                    ; preds = %127, %173, %143
  br label %94, !dbg !1475, !llvm.loop !1513

; <label>:129:                                    ; preds = %124
  %130 = lshr i8 %125, 3, !dbg !1515
  %131 = zext i8 %130 to i64, !dbg !1515
  br label %143, !dbg !1516

; <label>:132:                                    ; preds = %124
  %133 = load i8, i8* %86, align 1, !dbg !1517, !tbaa !420
  %134 = zext i8 %133 to i64, !dbg !1518
  br label %143, !dbg !1519

; <label>:135:                                    ; preds = %124
  %136 = load i16, i16* %88, align 1, !dbg !1520, !tbaa !1436
  %137 = zext i16 %136 to i64, !dbg !1521
  br label %143, !dbg !1522

; <label>:138:                                    ; preds = %124
  %139 = load i32, i32* %90, align 1, !dbg !1523, !tbaa !657
  %140 = zext i32 %139 to i64, !dbg !1524
  br label %143, !dbg !1525

; <label>:141:                                    ; preds = %124
  %142 = load i64, i64* %92, align 1, !dbg !1526, !tbaa !1039
  br label %143, !dbg !1527

; <label>:143:                                    ; preds = %129, %132, %135, %138, %141
  %144 = phi i64 [ %142, %141 ], [ %140, %138 ], [ %137, %135 ], [ %134, %132 ], [ %131, %129 ], !dbg !1528
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1511
  %145 = icmp ugt i64 %144, 1, !dbg !1529
  br i1 %145, label %146, label %128, !dbg !1512

; <label>:146:                                    ; preds = %143
  switch i3 %126, label %161 [
    i3 0, label %147
    i3 1, label %150
    i3 2, label %153
    i3 3, label %156
    i3 -4, label %159
  ], !dbg !1533

; <label>:147:                                    ; preds = %146
  %148 = lshr i8 %125, 3, !dbg !1534
  %149 = zext i8 %148 to i64, !dbg !1534
  br label %161, !dbg !1535

; <label>:150:                                    ; preds = %146
  %151 = load i8, i8* %86, align 1, !dbg !1536, !tbaa !420
  %152 = zext i8 %151 to i64, !dbg !1537
  br label %161, !dbg !1538

; <label>:153:                                    ; preds = %146
  %154 = load i16, i16* %88, align 1, !dbg !1539, !tbaa !1436
  %155 = zext i16 %154 to i64, !dbg !1540
  br label %161, !dbg !1541

; <label>:156:                                    ; preds = %146
  %157 = load i32, i32* %90, align 1, !dbg !1542, !tbaa !657
  %158 = zext i32 %157 to i64, !dbg !1543
  br label %161, !dbg !1544

; <label>:159:                                    ; preds = %146
  %160 = load i64, i64* %92, align 1, !dbg !1545, !tbaa !1039
  br label %161, !dbg !1546

; <label>:161:                                    ; preds = %146, %147, %150, %153, %156, %159
  %162 = phi i64 [ %160, %159 ], [ %158, %156 ], [ %155, %153 ], [ %152, %150 ], [ %149, %147 ], [ 0, %146 ], !dbg !1547
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1548
  %163 = getelementptr inbounds i8, i8* %93, i64 %162, !dbg !1549
  %164 = load i8, i8* %163, align 1, !dbg !1552, !tbaa !420
  %165 = icmp eq i8 %164, 47, !dbg !1553
  br i1 %165, label %173, label %166, !dbg !1554

; <label>:166:                                    ; preds = %161, %166
  %167 = phi i32 [ %170, %166 ], [ 1, %161 ]
  %168 = phi i8* [ %169, %166 ], [ %163, %161 ]
  %169 = getelementptr inbounds i8, i8* %168, i64 -1, !dbg !1555
  %170 = add nuw nsw i32 %167, 1, !dbg !1557
  %171 = load i8, i8* %169, align 1, !dbg !1552, !tbaa !420
  %172 = icmp eq i8 %171, 47, !dbg !1553
  br i1 %172, label %173, label %166, !dbg !1554, !llvm.loop !1558

; <label>:173:                                    ; preds = %166, %161
  %174 = phi i32 [ 1, %161 ], [ %170, %166 ], !dbg !1560
  %175 = xor i32 %174, -1, !dbg !1561
  %176 = sext i32 %175 to i64, !dbg !1561
  call void @sdsrange(i8* %75, i64 0, i64 %176) #6, !dbg !1562
  br label %128, !dbg !1563

; <label>:177:                                    ; preds = %112, %115, %118, %121, %97
  %178 = call i8* @sdscatsds(i8* %75, i8* nonnull %5) #6, !dbg !1564
  call void @sdsfree(i8* nonnull %5) #6, !dbg !1565
  br label %179, !dbg !1566

; <label>:179:                                    ; preds = %1, %177, %11
  %180 = phi i8* [ null, %11 ], [ %178, %177 ], [ %5, %1 ], !dbg !1473
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %3) #7, !dbg !1567
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1567
  ret i8* %180, !dbg !1567
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
define dso_local i64 @getTimeZone() local_unnamed_addr #0 !dbg !1568 {
  %1 = alloca %struct.timeval, align 8
  %2 = bitcast %struct.timeval* %1 to i8*, !dbg !1583
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #7, !dbg !1583
  %3 = ptrtoint %struct.timeval* %1 to i64, !dbg !1584
  %4 = add i64 %3, 65536, !dbg !1585
  %5 = inttoptr i64 %4 to %struct.timeval*, !dbg !1586
  %6 = call i32 @gettimeofday(%struct.timeval* %5, i8* null) #6, !dbg !1588
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #7, !dbg !1590
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1591
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1592
  ret i64 0, !dbg !1592
}

; Function Attrs: noredzone nounwind
define dso_local i32 @pathIsBaseName(i8*) local_unnamed_addr #0 !dbg !1593 {
  %2 = tail call i8* @strchr(i8* %0, i32 47) #6, !dbg !1599
  %3 = icmp eq i8* %2, null, !dbg !1600
  br i1 %3, label %4, label %8, !dbg !1601

; <label>:4:                                      ; preds = %1
  %5 = tail call i8* @strchr(i8* %0, i32 92) #6, !dbg !1602
  %6 = icmp eq i8* %5, null, !dbg !1603
  %7 = zext i1 %6 to i32
  br label %8

; <label>:8:                                      ; preds = %4, %1
  %9 = phi i32 [ 0, %1 ], [ %7, %4 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1604
  ret i32 %9, !dbg !1604
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
!426 = !DILocation(line: 76, column: 27, scope: !427)
!427 = distinct !DILexicalBlock(scope: !373, file: !3, line: 74, column: 39)
!428 = !DILocation(line: 74, column: 13, scope: !373)
!429 = distinct !{!429, !428, !430}
!430 = !DILocation(line: 77, column: 13, scope: !373)
!431 = !DILocation(line: 78, column: 28, scope: !432)
!432 = distinct !DILexicalBlock(scope: !373, file: !3, line: 78, column: 17)
!433 = !DILocation(line: 78, column: 17, scope: !373)
!434 = !DILocation(line: 81, column: 21, scope: !435)
!435 = distinct !DILexicalBlock(scope: !436, file: !3, line: 81, column: 21)
!436 = distinct !DILexicalBlock(scope: !373, file: !3, line: 80, column: 30)
!437 = !DILocation(line: 81, column: 21, scope: !436)
!438 = !DILocation(line: 84, column: 23, scope: !436)
!439 = !DILocation(line: 85, column: 26, scope: !436)
!440 = !DILocation(line: 80, column: 13, scope: !373)
!441 = distinct !{!441, !440, !442}
!442 = !DILocation(line: 86, column: 13, scope: !373)
!443 = !DILocation(line: 93, column: 22, scope: !373)
!444 = !DILocation(line: 94, column: 13, scope: !373)
!445 = !DILocation(line: 99, column: 20, scope: !372)
!446 = !DILocation(line: 101, column: 19, scope: !372)
!447 = !DILocation(line: 101, column: 30, scope: !372)
!448 = !DILocation(line: 103, column: 24, scope: !449)
!449 = distinct !DILexicalBlock(scope: !450, file: !3, line: 102, column: 22)
!450 = distinct !DILexicalBlock(scope: !372, file: !3, line: 102, column: 17)
!451 = !DILocation(line: 102, column: 17, scope: !372)
!452 = !DILocation(line: 97, column: 22, scope: !372)
!453 = !DILocation(line: 107, column: 13, scope: !372)
!454 = !DILocation(line: 0, scope: !455)
!455 = distinct !DILexicalBlock(scope: !456, file: !3, line: 111, column: 25)
!456 = distinct !DILexicalBlock(scope: !381, file: !3, line: 108, column: 60)
!457 = !DILocation(line: 0, scope: !382)
!458 = !DILocation(line: 108, column: 21, scope: !381)
!459 = !DILocation(line: 108, column: 32, scope: !381)
!460 = !DILocation(line: 108, column: 54, scope: !381)
!461 = !DILocation(line: 108, column: 40, scope: !381)
!462 = !DILocation(line: 109, column: 28, scope: !456)
!463 = !DILocation(line: 110, column: 31, scope: !456)
!464 = !DILocation(line: 111, column: 25, scope: !455)
!465 = !DILocation(line: 111, column: 39, scope: !455)
!466 = !DILocation(line: 111, column: 36, scope: !455)
!467 = !DILocation(line: 111, column: 25, scope: !456)
!468 = !DILocation(line: 113, column: 39, scope: !380)
!469 = !DILocation(line: 113, column: 28, scope: !381)
!470 = !DILocation(line: 115, column: 39, scope: !379)
!471 = !DILocation(line: 115, column: 28, scope: !380)
!472 = !DILocation(line: 116, column: 28, scope: !473)
!473 = distinct !DILexicalBlock(scope: !379, file: !3, line: 115, column: 45)
!474 = !DILocation(line: 118, column: 21, scope: !473)
!475 = !DILocation(line: 119, column: 28, scope: !378)
!476 = !DILocation(line: 119, column: 39, scope: !378)
!477 = !DILocation(line: 119, column: 60, scope: !378)
!478 = !DILocation(line: 119, column: 46, scope: !378)
!479 = !DILocation(line: 120, column: 25, scope: !377)
!480 = !DILocation(line: 121, column: 31, scope: !377)
!481 = !DILocation(line: 122, column: 29, scope: !377)
!482 = !DILocation(line: 122, column: 25, scope: !377)
!483 = !DILocation(line: 123, column: 25, scope: !377)
!484 = !DILocation(line: 121, column: 25, scope: !377)
!485 = !DILocation(line: 128, column: 25, scope: !377)
!486 = !DILocation(line: 129, column: 33, scope: !389)
!487 = !DILocation(line: 130, column: 31, scope: !393)
!488 = !DILocation(line: 131, column: 29, scope: !395)
!489 = !DILocation(line: 132, column: 21, scope: !390)
!490 = !DILocation(line: 0, scope: !377)
!491 = !DILocation(line: 0, scope: !386)
!492 = !DILocation(line: 134, column: 32, scope: !377)
!493 = !DILocation(line: 135, column: 27, scope: !494)
!494 = distinct !DILexicalBlock(scope: !377, file: !3, line: 135, column: 25)
!495 = !DILocation(line: 135, column: 41, scope: !494)
!496 = !DILocation(line: 135, column: 36, scope: !494)
!497 = !DILocation(line: 138, column: 25, scope: !401)
!498 = !DILocation(line: 139, column: 43, scope: !499)
!499 = distinct !DILexicalBlock(scope: !500, file: !3, line: 139, column: 29)
!500 = distinct !DILexicalBlock(scope: !400, file: !3, line: 138, column: 34)
!501 = !DILocation(line: 139, column: 40, scope: !499)
!502 = !DILocation(line: 139, column: 29, scope: !500)
!503 = !DILocation(line: 142, column: 29, scope: !397)
!504 = !DILocation(line: 142, column: 57, scope: !403)
!505 = !DILocation(line: 142, column: 54, scope: !398)
!506 = !DILocation(line: 142, column: 29, scope: !399)
!507 = !DILocation(line: 0, scope: !372)
!508 = !DILocation(line: 0, scope: !449)
!509 = !DILocation(line: 146, column: 24, scope: !382)
!510 = !DILocation(line: 147, column: 27, scope: !382)
!511 = distinct !{!511, !453, !512}
!512 = !DILocation(line: 148, column: 13, scope: !372)
!513 = !DILocation(line: 0, scope: !473)
!514 = !DILocation(line: 150, column: 25, scope: !515)
!515 = distinct !DILexicalBlock(scope: !372, file: !3, line: 149, column: 17)
!516 = !DILocation(line: 149, column: 17, scope: !372)
!517 = !DILocation(line: 151, column: 18, scope: !518)
!518 = distinct !DILexicalBlock(scope: !372, file: !3, line: 151, column: 17)
!519 = !DILocation(line: 151, column: 17, scope: !372)
!520 = !DILocation(line: 158, column: 28, scope: !521)
!521 = distinct !DILexicalBlock(scope: !373, file: !3, line: 158, column: 17)
!522 = !DILocation(line: 158, column: 17, scope: !373)
!523 = !DILocation(line: 159, column: 24, scope: !524)
!524 = distinct !DILexicalBlock(scope: !521, file: !3, line: 158, column: 34)
!525 = !DILocation(line: 160, column: 27, scope: !524)
!526 = !DILocation(line: 0, scope: !405)
!527 = !DILocation(line: 161, column: 13, scope: !524)
!528 = !DILocation(line: 164, column: 17, scope: !373)
!529 = !DILocation(line: 165, column: 35, scope: !530)
!530 = distinct !DILexicalBlock(scope: !531, file: !3, line: 165, column: 21)
!531 = distinct !DILexicalBlock(scope: !408, file: !3, line: 164, column: 26)
!532 = !DILocation(line: 165, column: 32, scope: !530)
!533 = !DILocation(line: 165, column: 21, scope: !531)
!534 = !DILocation(line: 168, column: 21, scope: !405)
!535 = !DILocation(line: 168, column: 49, scope: !410)
!536 = !DILocation(line: 168, column: 46, scope: !406)
!537 = !DILocation(line: 168, column: 21, scope: !407)
!538 = !DILocation(line: 172, column: 22, scope: !373)
!539 = !DILocation(line: 173, column: 13, scope: !373)
!540 = !DILocation(line: 0, scope: !373)
!541 = !DILocation(line: 175, column: 16, scope: !374)
!542 = !DILocation(line: 176, column: 19, scope: !374)
!543 = !DILocation(line: 177, column: 23, scope: !544)
!544 = distinct !DILexicalBlock(scope: !374, file: !3, line: 177, column: 13)
!545 = !DILocation(line: 177, column: 13, scope: !374)
!546 = distinct !{!546, !416, !547}
!547 = !DILocation(line: 184, column: 5, scope: !362)
!548 = !DILocation(line: 178, column: 19, scope: !549)
!549 = distinct !DILexicalBlock(scope: !544, file: !3, line: 177, column: 29)
!550 = !DILocation(line: 178, column: 28, scope: !549)
!551 = !DILocation(line: 178, column: 13, scope: !549)
!552 = !DILocation(line: 179, column: 24, scope: !553)
!553 = distinct !DILexicalBlock(scope: !549, file: !3, line: 178, column: 36)
!554 = !DILocation(line: 180, column: 27, scope: !553)
!555 = distinct !{!555, !551, !556}
!556 = !DILocation(line: 181, column: 13, scope: !549)
!557 = !DILocation(line: 185, column: 25, scope: !558)
!558 = distinct !DILexicalBlock(scope: !362, file: !3, line: 185, column: 9)
!559 = !DILocation(line: 186, column: 9, scope: !558)
!560 = !DILocation(line: 188, column: 1, scope: !362)
!561 = distinct !DISubprogram(name: "stringmatch", scope: !3, file: !3, line: 190, type: !562, isLocal: false, isDefinition: true, scopeLine: 190, flags: DIFlagPrototyped, isOptimized: true, unit: !15, retainedNodes: !564)
!562 = !DISubroutineType(types: !563)
!563 = !{!6, !273, !273, !6}
!564 = !{!565, !566, !567}
!565 = !DILocalVariable(name: "pattern", arg: 1, scope: !561, file: !3, line: 190, type: !273)
!566 = !DILocalVariable(name: "string", arg: 2, scope: !561, file: !3, line: 190, type: !273)
!567 = !DILocalVariable(name: "nocase", arg: 3, scope: !561, file: !3, line: 190, type: !6)
!568 = !DILocation(line: 190, column: 29, scope: !561)
!569 = !DILocation(line: 190, column: 50, scope: !561)
!570 = !DILocation(line: 190, column: 62, scope: !561)
!571 = !DILocation(line: 191, column: 35, scope: !561)
!572 = !DILocation(line: 191, column: 58, scope: !561)
!573 = !DILocation(line: 191, column: 12, scope: !561)
!574 = !DILocation(line: 191, column: 5, scope: !561)
!575 = distinct !DISubprogram(name: "stringmatchlen_fuzz_test", scope: !3, file: !3, line: 195, type: !576, isLocal: false, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !15, retainedNodes: !578)
!576 = !DISubroutineType(types: !577)
!577 = !{!6}
!578 = !{!579, !581, !582, !583, !584, !586, !587, !589}
!579 = !DILocalVariable(name: "str", scope: !575, file: !3, line: 196, type: !580)
!580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 256, elements: !244)
!581 = !DILocalVariable(name: "pat", scope: !575, file: !3, line: 197, type: !580)
!582 = !DILocalVariable(name: "cycles", scope: !575, file: !3, line: 198, type: !6)
!583 = !DILocalVariable(name: "total_matches", scope: !575, file: !3, line: 199, type: !6)
!584 = !DILocalVariable(name: "strlen", scope: !585, file: !3, line: 201, type: !6)
!585 = distinct !DILexicalBlock(scope: !575, file: !3, line: 200, column: 21)
!586 = !DILocalVariable(name: "patlen", scope: !585, file: !3, line: 202, type: !6)
!587 = !DILocalVariable(name: "j", scope: !588, file: !3, line: 203, type: !6)
!588 = distinct !DILexicalBlock(scope: !585, file: !3, line: 203, column: 9)
!589 = !DILocalVariable(name: "j", scope: !590, file: !3, line: 204, type: !6)
!590 = distinct !DILexicalBlock(scope: !585, file: !3, line: 204, column: 9)
!591 = !DILocation(line: 196, column: 5, scope: !575)
!592 = !DILocation(line: 196, column: 10, scope: !575)
!593 = !DILocation(line: 197, column: 5, scope: !575)
!594 = !DILocation(line: 197, column: 10, scope: !575)
!595 = !DILocation(line: 198, column: 9, scope: !575)
!596 = !DILocation(line: 199, column: 9, scope: !575)
!597 = !DILocation(line: 200, column: 5, scope: !575)
!598 = !DILocation(line: 201, column: 22, scope: !585)
!599 = !DILocation(line: 201, column: 29, scope: !585)
!600 = !DILocation(line: 201, column: 13, scope: !585)
!601 = !DILocation(line: 202, column: 22, scope: !585)
!602 = !DILocation(line: 202, column: 29, scope: !585)
!603 = !DILocation(line: 202, column: 13, scope: !585)
!604 = !DILocation(line: 203, column: 18, scope: !588)
!605 = !DILocation(line: 203, column: 27, scope: !606)
!606 = distinct !DILexicalBlock(scope: !588, file: !3, line: 203, column: 9)
!607 = !DILocation(line: 203, column: 9, scope: !588)
!608 = !DILocation(line: 203, column: 51, scope: !606)
!609 = !DILocation(line: 204, column: 18, scope: !590)
!610 = !DILocation(line: 204, column: 27, scope: !611)
!611 = distinct !DILexicalBlock(scope: !590, file: !3, line: 204, column: 9)
!612 = !DILocation(line: 204, column: 9, scope: !590)
!613 = !DILocation(line: 204, column: 51, scope: !611)
!614 = !DILocation(line: 203, column: 58, scope: !606)
!615 = !DILocation(line: 203, column: 42, scope: !606)
!616 = !DILocation(line: 203, column: 49, scope: !606)
!617 = !DILocation(line: 203, column: 38, scope: !606)
!618 = distinct !{!618, !607, !619}
!619 = !DILocation(line: 203, column: 60, scope: !588)
!620 = !DILocation(line: 205, column: 26, scope: !585)
!621 = !DILocation(line: 205, column: 23, scope: !585)
!622 = !DILocation(line: 200, column: 17, scope: !575)
!623 = distinct !{!623, !597, !624}
!624 = !DILocation(line: 206, column: 5, scope: !575)
!625 = !DILocation(line: 204, column: 58, scope: !611)
!626 = !DILocation(line: 204, column: 42, scope: !611)
!627 = !DILocation(line: 204, column: 49, scope: !611)
!628 = !DILocation(line: 204, column: 38, scope: !611)
!629 = distinct !{!629, !612, !630}
!630 = !DILocation(line: 204, column: 60, scope: !590)
!631 = !DILocation(line: 208, column: 1, scope: !575)
!632 = !DILocation(line: 207, column: 5, scope: !575)
!633 = distinct !DISubprogram(name: "memtoll", scope: !3, file: !3, line: 217, type: !634, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !15, retainedNodes: !637)
!634 = !DISubroutineType(types: !635)
!635 = !{!14, !273, !636}
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!637 = !{!638, !639, !640, !641, !645, !646, !647, !648}
!638 = !DILocalVariable(name: "p", arg: 1, scope: !633, file: !3, line: 217, type: !273)
!639 = !DILocalVariable(name: "err", arg: 2, scope: !633, file: !3, line: 217, type: !636)
!640 = !DILocalVariable(name: "u", scope: !633, file: !3, line: 218, type: !273)
!641 = !DILocalVariable(name: "buf", scope: !633, file: !3, line: 219, type: !642)
!642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 1024, elements: !643)
!643 = !{!644}
!644 = !DISubrange(count: 128)
!645 = !DILocalVariable(name: "mul", scope: !633, file: !3, line: 220, type: !27)
!646 = !DILocalVariable(name: "val", scope: !633, file: !3, line: 221, type: !14)
!647 = !DILocalVariable(name: "digits", scope: !633, file: !3, line: 222, type: !25)
!648 = !DILocalVariable(name: "endptr", scope: !633, file: !3, line: 259, type: !7)
!649 = !DILocation(line: 217, column: 31, scope: !633)
!650 = !DILocation(line: 217, column: 39, scope: !633)
!651 = !DILocation(line: 219, column: 5, scope: !633)
!652 = !DILocation(line: 219, column: 10, scope: !633)
!653 = !DILocation(line: 224, column: 9, scope: !654)
!654 = distinct !DILexicalBlock(scope: !633, file: !3, line: 224, column: 9)
!655 = !DILocation(line: 224, column: 9, scope: !633)
!656 = !DILocation(line: 224, column: 19, scope: !654)
!657 = !{!658, !658, i64 0}
!658 = !{!"int", !421, i64 0}
!659 = !DILocation(line: 224, column: 14, scope: !654)
!660 = !DILocation(line: 218, column: 17, scope: !633)
!661 = !DILocation(line: 228, column: 9, scope: !662)
!662 = distinct !DILexicalBlock(scope: !633, file: !3, line: 228, column: 9)
!663 = !DILocation(line: 228, column: 12, scope: !662)
!664 = !DILocation(line: 228, column: 21, scope: !662)
!665 = !DILocation(line: 228, column: 9, scope: !633)
!666 = !DILocation(line: 229, column: 11, scope: !633)
!667 = !DILocation(line: 229, column: 14, scope: !633)
!668 = !DILocation(line: 229, column: 17, scope: !633)
!669 = !DILocation(line: 229, column: 5, scope: !633)
!670 = !DILocation(line: 229, column: 31, scope: !633)
!671 = distinct !{!671, !669, !670}
!672 = !DILocation(line: 230, column: 12, scope: !673)
!673 = distinct !DILexicalBlock(scope: !633, file: !3, line: 230, column: 9)
!674 = !DILocation(line: 230, column: 20, scope: !673)
!675 = !DILocation(line: 230, column: 24, scope: !673)
!676 = !DILocation(line: 230, column: 9, scope: !633)
!677 = !DILocation(line: 232, column: 17, scope: !678)
!678 = distinct !DILexicalBlock(scope: !673, file: !3, line: 232, column: 16)
!679 = !DILocation(line: 232, column: 16, scope: !673)
!680 = !DILocation(line: 234, column: 17, scope: !681)
!681 = distinct !DILexicalBlock(scope: !678, file: !3, line: 234, column: 16)
!682 = !DILocation(line: 234, column: 16, scope: !678)
!683 = !DILocation(line: 236, column: 17, scope: !684)
!684 = distinct !DILexicalBlock(scope: !681, file: !3, line: 236, column: 16)
!685 = !DILocation(line: 236, column: 16, scope: !681)
!686 = !DILocation(line: 238, column: 17, scope: !687)
!687 = distinct !DILexicalBlock(scope: !684, file: !3, line: 238, column: 16)
!688 = !DILocation(line: 238, column: 16, scope: !684)
!689 = !DILocation(line: 240, column: 17, scope: !690)
!690 = distinct !DILexicalBlock(scope: !687, file: !3, line: 240, column: 16)
!691 = !DILocation(line: 240, column: 16, scope: !687)
!692 = !DILocation(line: 242, column: 17, scope: !693)
!693 = distinct !DILexicalBlock(scope: !690, file: !3, line: 242, column: 16)
!694 = !DILocation(line: 242, column: 16, scope: !690)
!695 = !DILocation(line: 245, column: 13, scope: !696)
!696 = distinct !DILexicalBlock(scope: !693, file: !3, line: 244, column: 12)
!697 = !DILocation(line: 245, column: 23, scope: !698)
!698 = distinct !DILexicalBlock(scope: !696, file: !3, line: 245, column: 13)
!699 = !DILocation(line: 245, column: 18, scope: !698)
!700 = !DILocation(line: 0, scope: !701)
!701 = distinct !DILexicalBlock(scope: !678, file: !3, line: 232, column: 36)
!702 = !DILocation(line: 220, column: 10, scope: !633)
!703 = !DILocation(line: 251, column: 15, scope: !633)
!704 = !DILocation(line: 252, column: 9, scope: !705)
!705 = distinct !DILexicalBlock(scope: !633, file: !3, line: 252, column: 9)
!706 = !DILocation(line: 222, column: 18, scope: !633)
!707 = !DILocation(line: 252, column: 16, scope: !705)
!708 = !DILocation(line: 252, column: 9, scope: !633)
!709 = !DILocation(line: 253, column: 13, scope: !710)
!710 = distinct !DILexicalBlock(scope: !705, file: !3, line: 252, column: 32)
!711 = !DILocation(line: 253, column: 23, scope: !712)
!712 = distinct !DILexicalBlock(scope: !710, file: !3, line: 253, column: 13)
!713 = !DILocation(line: 253, column: 18, scope: !712)
!714 = !DILocation(line: 256, column: 5, scope: !633)
!715 = !DILocation(line: 257, column: 5, scope: !633)
!716 = !DILocation(line: 257, column: 17, scope: !633)
!717 = !DILocation(line: 259, column: 5, scope: !633)
!718 = !DILocation(line: 260, column: 5, scope: !633)
!719 = !DILocation(line: 260, column: 11, scope: !633)
!720 = !DILocation(line: 259, column: 11, scope: !633)
!721 = !DILocation(line: 261, column: 11, scope: !633)
!722 = !DILocation(line: 221, column: 15, scope: !633)
!723 = !DILocation(line: 262, column: 14, scope: !724)
!724 = distinct !DILexicalBlock(scope: !633, file: !3, line: 262, column: 9)
!725 = !DILocation(line: 262, column: 19, scope: !724)
!726 = !DILocation(line: 262, column: 22, scope: !724)
!727 = !DILocation(line: 262, column: 28, scope: !724)
!728 = !DILocation(line: 262, column: 39, scope: !724)
!729 = !DILocation(line: 262, column: 43, scope: !724)
!730 = !{!731, !731, i64 0}
!731 = !{!"any pointer", !421, i64 0}
!732 = !DILocation(line: 262, column: 42, scope: !724)
!733 = !DILocation(line: 262, column: 50, scope: !724)
!734 = !DILocation(line: 262, column: 9, scope: !633)
!735 = !DILocation(line: 263, column: 13, scope: !736)
!736 = distinct !DILexicalBlock(scope: !724, file: !3, line: 262, column: 59)
!737 = !DILocation(line: 263, column: 23, scope: !738)
!738 = distinct !DILexicalBlock(scope: !736, file: !3, line: 263, column: 13)
!739 = !DILocation(line: 263, column: 18, scope: !738)
!740 = !DILocation(line: 266, column: 15, scope: !633)
!741 = !DILocation(line: 266, column: 5, scope: !633)
!742 = !DILocation(line: 0, scope: !633)
!743 = !DILocation(line: 267, column: 1, scope: !633)
!744 = !DILocation(line: 0, scope: !696)
!745 = distinct !DISubprogram(name: "digits10", scope: !3, file: !3, line: 271, type: !746, isLocal: false, isDefinition: true, scopeLine: 271, flags: DIFlagPrototyped, isOptimized: true, unit: !15, retainedNodes: !748)
!746 = !DISubroutineType(types: !747)
!747 = !{!23, !18}
!748 = !{!749}
!749 = !DILocalVariable(name: "v", arg: 1, scope: !745, file: !3, line: 271, type: !18)
!750 = !DILocation(line: 271, column: 28, scope: !745)
!751 = !DILocation(line: 272, column: 11, scope: !752)
!752 = distinct !DILexicalBlock(scope: !745, file: !3, line: 272, column: 9)
!753 = !DILocation(line: 272, column: 9, scope: !745)
!754 = !DILocation(line: 273, column: 11, scope: !755)
!755 = distinct !DILexicalBlock(scope: !745, file: !3, line: 273, column: 9)
!756 = !DILocation(line: 273, column: 9, scope: !745)
!757 = !DILocation(line: 274, column: 11, scope: !758)
!758 = distinct !DILexicalBlock(scope: !745, file: !3, line: 274, column: 9)
!759 = !DILocation(line: 274, column: 9, scope: !745)
!760 = !DILocation(line: 275, column: 11, scope: !761)
!761 = distinct !DILexicalBlock(scope: !745, file: !3, line: 275, column: 9)
!762 = !DILocation(line: 275, column: 9, scope: !745)
!763 = !DILocation(line: 276, column: 15, scope: !764)
!764 = distinct !DILexicalBlock(scope: !765, file: !3, line: 276, column: 13)
!765 = distinct !DILexicalBlock(scope: !761, file: !3, line: 275, column: 30)
!766 = !DILocation(line: 276, column: 13, scope: !765)
!767 = !DILocation(line: 277, column: 19, scope: !768)
!768 = distinct !DILexicalBlock(scope: !769, file: !3, line: 277, column: 17)
!769 = distinct !DILexicalBlock(scope: !764, file: !3, line: 276, column: 30)
!770 = !DILocation(line: 277, column: 17, scope: !769)
!771 = !DILocation(line: 278, column: 23, scope: !772)
!772 = distinct !DILexicalBlock(scope: !773, file: !3, line: 278, column: 21)
!773 = distinct !DILexicalBlock(scope: !768, file: !3, line: 277, column: 30)
!774 = !DILocation(line: 278, column: 21, scope: !773)
!775 = !DILocation(line: 279, column: 31, scope: !773)
!776 = !DILocation(line: 279, column: 26, scope: !773)
!777 = !DILocation(line: 279, column: 17, scope: !773)
!778 = !DILocation(line: 281, column: 27, scope: !769)
!779 = !DILocation(line: 281, column: 22, scope: !769)
!780 = !DILocation(line: 281, column: 13, scope: !769)
!781 = !DILocation(line: 283, column: 15, scope: !782)
!782 = distinct !DILexicalBlock(scope: !765, file: !3, line: 283, column: 13)
!783 = !DILocation(line: 283, column: 13, scope: !765)
!784 = !DILocation(line: 284, column: 27, scope: !785)
!785 = distinct !DILexicalBlock(scope: !782, file: !3, line: 283, column: 32)
!786 = !DILocation(line: 284, column: 22, scope: !785)
!787 = !DILocation(line: 284, column: 13, scope: !785)
!788 = !DILocation(line: 286, column: 24, scope: !765)
!789 = !DILocation(line: 286, column: 19, scope: !765)
!790 = !DILocation(line: 286, column: 9, scope: !765)
!791 = !DILocation(line: 288, column: 28, scope: !745)
!792 = !DILocation(line: 288, column: 17, scope: !745)
!793 = !DILocation(line: 288, column: 15, scope: !745)
!794 = !DILocation(line: 288, column: 5, scope: !745)
!795 = !DILocation(line: 0, scope: !745)
!796 = !DILocation(line: 289, column: 1, scope: !745)
!797 = distinct !DISubprogram(name: "sdigits10", scope: !3, file: !3, line: 292, type: !798, isLocal: false, isDefinition: true, scopeLine: 292, flags: DIFlagPrototyped, isOptimized: true, unit: !15, retainedNodes: !802)
!798 = !DISubroutineType(types: !799)
!799 = !{!23, !800}
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !19, line: 56, baseType: !801)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !21, line: 103, baseType: !27)
!802 = !{!803, !804}
!803 = !DILocalVariable(name: "v", arg: 1, scope: !797, file: !3, line: 292, type: !800)
!804 = !DILocalVariable(name: "uv", scope: !805, file: !3, line: 295, type: !18)
!805 = distinct !DILexicalBlock(scope: !806, file: !3, line: 293, column: 16)
!806 = distinct !DILexicalBlock(scope: !797, file: !3, line: 293, column: 9)
!807 = !DILocation(line: 292, column: 28, scope: !797)
!808 = !DILocation(line: 293, column: 11, scope: !806)
!809 = !DILocation(line: 293, column: 9, scope: !797)
!810 = !DILocation(line: 295, column: 26, scope: !805)
!811 = !DILocation(line: 296, column: 33, scope: !805)
!812 = !DILocation(line: 295, column: 23, scope: !805)
!813 = !DILocation(line: 295, column: 18, scope: !805)
!814 = !DILocation(line: 297, column: 16, scope: !805)
!815 = !DILocation(line: 297, column: 28, scope: !805)
!816 = !DILocation(line: 299, column: 16, scope: !817)
!817 = distinct !DILexicalBlock(scope: !806, file: !3, line: 298, column: 12)
!818 = !DILocation(line: 299, column: 9, scope: !817)
!819 = !DILocation(line: 0, scope: !817)
!820 = !DILocation(line: 301, column: 1, scope: !797)
!821 = !DILocation(line: 314, column: 21, scope: !2)
!822 = !DILocation(line: 314, column: 33, scope: !2)
!823 = !DILocation(line: 314, column: 51, scope: !2)
!824 = !DILocation(line: 326, column: 16, scope: !825)
!825 = distinct !DILexicalBlock(scope: !2, file: !3, line: 326, column: 9)
!826 = !DILocation(line: 326, column: 9, scope: !2)
!827 = !DILocation(line: 327, column: 20, scope: !828)
!828 = distinct !DILexicalBlock(scope: !829, file: !3, line: 327, column: 13)
!829 = distinct !DILexicalBlock(scope: !825, file: !3, line: 326, column: 21)
!830 = !DILocation(line: 328, column: 21, scope: !831)
!831 = distinct !DILexicalBlock(scope: !828, file: !3, line: 327, column: 34)
!832 = !DILocation(line: 322, column: 24, scope: !2)
!833 = !DILocation(line: 327, column: 13, scope: !829)
!834 = !DILocation(line: 0, scope: !835)
!835 = distinct !DILexicalBlock(scope: !825, file: !3, line: 333, column: 12)
!836 = !DILocation(line: 321, column: 9, scope: !2)
!837 = !DILocation(line: 339, column: 29, scope: !2)
!838 = !DILocation(line: 339, column: 44, scope: !2)
!839 = !DILocation(line: 339, column: 20, scope: !2)
!840 = !DILocation(line: 340, column: 9, scope: !841)
!841 = distinct !DILexicalBlock(scope: !2, file: !3, line: 340, column: 9)
!842 = !DILocation(line: 340, column: 16, scope: !841)
!843 = !DILocation(line: 340, column: 9, scope: !2)
!844 = !DILocation(line: 343, column: 14, scope: !2)
!845 = !DILocation(line: 344, column: 5, scope: !2)
!846 = !DILocation(line: 344, column: 15, scope: !2)
!847 = !DILocation(line: 345, column: 9, scope: !2)
!848 = !DILocation(line: 346, column: 18, scope: !2)
!849 = !DILocation(line: 346, column: 5, scope: !2)
!850 = !DILocation(line: 347, column: 30, scope: !349)
!851 = !DILocation(line: 347, column: 23, scope: !349)
!852 = !DILocation(line: 347, column: 19, scope: !349)
!853 = !DILocation(line: 348, column: 15, scope: !349)
!854 = !DILocation(line: 349, column: 30, scope: !349)
!855 = !DILocation(line: 349, column: 21, scope: !349)
!856 = !DILocation(line: 349, column: 9, scope: !349)
!857 = !DILocation(line: 349, column: 19, scope: !349)
!858 = !DILocation(line: 350, column: 25, scope: !349)
!859 = !DILocation(line: 350, column: 18, scope: !349)
!860 = !DILocation(line: 350, column: 9, scope: !349)
!861 = !DILocation(line: 350, column: 23, scope: !349)
!862 = !DILocation(line: 351, column: 14, scope: !349)
!863 = distinct !{!863, !849, !864}
!864 = !DILocation(line: 352, column: 5, scope: !2)
!865 = !DILocation(line: 0, scope: !349)
!866 = !DILocation(line: 355, column: 15, scope: !353)
!867 = !DILocation(line: 355, column: 9, scope: !2)
!868 = !DILocation(line: 356, column: 27, scope: !869)
!869 = distinct !DILexicalBlock(scope: !353, file: !3, line: 355, column: 21)
!870 = !DILocation(line: 356, column: 25, scope: !869)
!871 = !DILocation(line: 357, column: 5, scope: !869)
!872 = !DILocation(line: 358, column: 17, scope: !352)
!873 = !DILocation(line: 358, column: 34, scope: !352)
!874 = !DILocation(line: 358, column: 13, scope: !352)
!875 = !DILocation(line: 359, column: 30, scope: !352)
!876 = !DILocation(line: 359, column: 21, scope: !352)
!877 = !DILocation(line: 359, column: 9, scope: !352)
!878 = !DILocation(line: 359, column: 19, scope: !352)
!879 = !DILocation(line: 360, column: 25, scope: !352)
!880 = !DILocation(line: 360, column: 18, scope: !352)
!881 = !DILocation(line: 0, scope: !869)
!882 = !DILocation(line: 364, column: 9, scope: !883)
!883 = distinct !DILexicalBlock(scope: !2, file: !3, line: 364, column: 9)
!884 = !DILocation(line: 364, column: 9, scope: !2)
!885 = !DILocation(line: 364, column: 26, scope: !883)
!886 = !DILocation(line: 364, column: 19, scope: !883)
!887 = !DILocation(line: 0, scope: !2)
!888 = !DILocation(line: 366, column: 1, scope: !2)
!889 = distinct !DISubprogram(name: "string2ll", scope: !3, file: !3, line: 380, type: !890, isLocal: false, isDefinition: true, scopeLine: 380, flags: DIFlagPrototyped, isOptimized: true, unit: !15, retainedNodes: !893)
!890 = !DISubroutineType(types: !891)
!891 = !{!6, !273, !9, !892}
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!893 = !{!894, !895, !896, !897, !898, !899, !900}
!894 = !DILocalVariable(name: "s", arg: 1, scope: !889, file: !3, line: 380, type: !273)
!895 = !DILocalVariable(name: "slen", arg: 2, scope: !889, file: !3, line: 380, type: !9)
!896 = !DILocalVariable(name: "value", arg: 3, scope: !889, file: !3, line: 380, type: !892)
!897 = !DILocalVariable(name: "p", scope: !889, file: !3, line: 381, type: !273)
!898 = !DILocalVariable(name: "plen", scope: !889, file: !3, line: 382, type: !9)
!899 = !DILocalVariable(name: "negative", scope: !889, file: !3, line: 383, type: !6)
!900 = !DILocalVariable(name: "v", scope: !889, file: !3, line: 384, type: !22)
!901 = !DILocation(line: 380, column: 27, scope: !889)
!902 = !DILocation(line: 380, column: 37, scope: !889)
!903 = !DILocation(line: 380, column: 54, scope: !889)
!904 = !DILocation(line: 381, column: 17, scope: !889)
!905 = !DILocation(line: 382, column: 12, scope: !889)
!906 = !DILocation(line: 383, column: 9, scope: !889)
!907 = !DILocation(line: 387, column: 14, scope: !908)
!908 = distinct !DILexicalBlock(scope: !889, file: !3, line: 387, column: 9)
!909 = !DILocation(line: 387, column: 9, scope: !889)
!910 = !DILocation(line: 391, column: 14, scope: !911)
!911 = distinct !DILexicalBlock(scope: !889, file: !3, line: 391, column: 9)
!912 = !DILocation(line: 0, scope: !913)
!913 = distinct !DILexicalBlock(scope: !889, file: !3, line: 398, column: 9)
!914 = !DILocation(line: 391, column: 27, scope: !911)
!915 = !DILocation(line: 391, column: 19, scope: !911)
!916 = !DILocation(line: 392, column: 19, scope: !917)
!917 = distinct !DILexicalBlock(scope: !918, file: !3, line: 392, column: 13)
!918 = distinct !DILexicalBlock(scope: !911, file: !3, line: 391, column: 35)
!919 = !DILocation(line: 392, column: 13, scope: !918)
!920 = !DILocation(line: 392, column: 35, scope: !917)
!921 = !{!922, !922, i64 0}
!922 = !{!"long long", !421, i64 0}
!923 = !DILocation(line: 392, column: 28, scope: !917)
!924 = !DILocation(line: 398, column: 14, scope: !913)
!925 = !DILocation(line: 398, column: 9, scope: !889)
!926 = !DILocation(line: 400, column: 10, scope: !927)
!927 = distinct !DILexicalBlock(scope: !913, file: !3, line: 398, column: 22)
!928 = !DILocation(line: 403, column: 13, scope: !927)
!929 = !DILocation(line: 408, column: 9, scope: !930)
!930 = distinct !DILexicalBlock(scope: !889, file: !3, line: 408, column: 9)
!931 = !DILocation(line: 0, scope: !889)
!932 = !DILocation(line: 408, column: 21, scope: !930)
!933 = !DILocation(line: 409, column: 17, scope: !934)
!934 = distinct !DILexicalBlock(scope: !930, file: !3, line: 408, column: 37)
!935 = !DILocation(line: 384, column: 24, scope: !889)
!936 = !DILocation(line: 416, column: 17, scope: !889)
!937 = !DILocation(line: 416, column: 24, scope: !889)
!938 = !DILocation(line: 0, scope: !939)
!939 = distinct !DILexicalBlock(scope: !889, file: !3, line: 416, column: 55)
!940 = !DILocation(line: 416, column: 27, scope: !889)
!941 = !DILocation(line: 416, column: 39, scope: !889)
!942 = !DILocation(line: 417, column: 15, scope: !943)
!943 = distinct !DILexicalBlock(scope: !939, file: !3, line: 417, column: 13)
!944 = !DILocation(line: 419, column: 11, scope: !939)
!945 = !DILocation(line: 421, column: 29, scope: !946)
!946 = distinct !DILexicalBlock(scope: !939, file: !3, line: 421, column: 13)
!947 = !DILocation(line: 421, column: 15, scope: !946)
!948 = !DILocation(line: 421, column: 13, scope: !939)
!949 = !DILocation(line: 421, column: 36, scope: !946)
!950 = !DILocation(line: 423, column: 11, scope: !939)
!951 = !DILocation(line: 425, column: 18, scope: !939)
!952 = distinct !{!952, !953, !954}
!953 = !DILocation(line: 416, column: 5, scope: !889)
!954 = !DILocation(line: 426, column: 5, scope: !889)
!955 = !DILocation(line: 434, column: 9, scope: !956)
!956 = distinct !DILexicalBlock(scope: !889, file: !3, line: 434, column: 9)
!957 = !DILocation(line: 434, column: 9, scope: !889)
!958 = !DILocation(line: 435, column: 15, scope: !959)
!959 = distinct !DILexicalBlock(scope: !960, file: !3, line: 435, column: 13)
!960 = distinct !DILexicalBlock(scope: !956, file: !3, line: 434, column: 19)
!961 = !DILocation(line: 435, column: 13, scope: !960)
!962 = !DILocation(line: 437, column: 19, scope: !963)
!963 = distinct !DILexicalBlock(scope: !960, file: !3, line: 437, column: 13)
!964 = !DILocation(line: 437, column: 13, scope: !960)
!965 = !DILocation(line: 437, column: 37, scope: !963)
!966 = !DILocation(line: 437, column: 35, scope: !963)
!967 = !DILocation(line: 437, column: 28, scope: !963)
!968 = !DILocation(line: 439, column: 15, scope: !969)
!969 = distinct !DILexicalBlock(scope: !970, file: !3, line: 439, column: 13)
!970 = distinct !DILexicalBlock(scope: !956, file: !3, line: 438, column: 12)
!971 = !DILocation(line: 439, column: 13, scope: !970)
!972 = !DILocation(line: 441, column: 19, scope: !973)
!973 = distinct !DILexicalBlock(scope: !970, file: !3, line: 441, column: 13)
!974 = !DILocation(line: 441, column: 13, scope: !970)
!975 = !DILocation(line: 441, column: 35, scope: !973)
!976 = !DILocation(line: 441, column: 28, scope: !973)
!977 = !DILocation(line: 0, scope: !978)
!978 = distinct !DILexicalBlock(scope: !930, file: !3, line: 411, column: 12)
!979 = !DILocation(line: 444, column: 1, scope: !889)
!980 = distinct !DISubprogram(name: "string2l", scope: !3, file: !3, line: 449, type: !981, isLocal: false, isDefinition: true, scopeLine: 449, flags: DIFlagPrototyped, isOptimized: true, unit: !15, retainedNodes: !984)
!981 = !DISubroutineType(types: !982)
!982 = !{!6, !273, !9, !983}
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!984 = !{!985, !986, !987, !988}
!985 = !DILocalVariable(name: "s", arg: 1, scope: !980, file: !3, line: 449, type: !273)
!986 = !DILocalVariable(name: "slen", arg: 2, scope: !980, file: !3, line: 449, type: !9)
!987 = !DILocalVariable(name: "lval", arg: 3, scope: !980, file: !3, line: 449, type: !983)
!988 = !DILocalVariable(name: "llval", scope: !980, file: !3, line: 450, type: !14)
!989 = !DILocation(line: 449, column: 26, scope: !980)
!990 = !DILocation(line: 449, column: 36, scope: !980)
!991 = !DILocation(line: 449, column: 48, scope: !980)
!992 = !DILocation(line: 380, column: 27, scope: !889, inlinedAt: !993)
!993 = distinct !DILocation(line: 452, column: 10, scope: !994)
!994 = distinct !DILexicalBlock(scope: !980, file: !3, line: 452, column: 9)
!995 = !DILocation(line: 380, column: 37, scope: !889, inlinedAt: !993)
!996 = !DILocation(line: 381, column: 17, scope: !889, inlinedAt: !993)
!997 = !DILocation(line: 382, column: 12, scope: !889, inlinedAt: !993)
!998 = !DILocation(line: 383, column: 9, scope: !889, inlinedAt: !993)
!999 = !DILocation(line: 387, column: 14, scope: !908, inlinedAt: !993)
!1000 = !DILocation(line: 387, column: 9, scope: !889, inlinedAt: !993)
!1001 = !DILocation(line: 391, column: 14, scope: !911, inlinedAt: !993)
!1002 = !DILocation(line: 0, scope: !913, inlinedAt: !993)
!1003 = !DILocation(line: 391, column: 27, scope: !911, inlinedAt: !993)
!1004 = !DILocation(line: 391, column: 19, scope: !911, inlinedAt: !993)
!1005 = !DILocation(line: 398, column: 14, scope: !913, inlinedAt: !993)
!1006 = !DILocation(line: 398, column: 9, scope: !889, inlinedAt: !993)
!1007 = !DILocation(line: 400, column: 10, scope: !927, inlinedAt: !993)
!1008 = !DILocation(line: 403, column: 13, scope: !927, inlinedAt: !993)
!1009 = !DILocation(line: 408, column: 9, scope: !930, inlinedAt: !993)
!1010 = !DILocation(line: 0, scope: !889, inlinedAt: !993)
!1011 = !DILocation(line: 408, column: 21, scope: !930, inlinedAt: !993)
!1012 = !DILocation(line: 409, column: 17, scope: !934, inlinedAt: !993)
!1013 = !DILocation(line: 384, column: 24, scope: !889, inlinedAt: !993)
!1014 = !DILocation(line: 416, column: 17, scope: !889, inlinedAt: !993)
!1015 = !DILocation(line: 416, column: 24, scope: !889, inlinedAt: !993)
!1016 = !DILocation(line: 0, scope: !939, inlinedAt: !993)
!1017 = !DILocation(line: 416, column: 27, scope: !889, inlinedAt: !993)
!1018 = !DILocation(line: 416, column: 39, scope: !889, inlinedAt: !993)
!1019 = !DILocation(line: 417, column: 15, scope: !943, inlinedAt: !993)
!1020 = !DILocation(line: 419, column: 11, scope: !939, inlinedAt: !993)
!1021 = !DILocation(line: 421, column: 29, scope: !946, inlinedAt: !993)
!1022 = !DILocation(line: 421, column: 15, scope: !946, inlinedAt: !993)
!1023 = !DILocation(line: 421, column: 13, scope: !939, inlinedAt: !993)
!1024 = !DILocation(line: 421, column: 36, scope: !946, inlinedAt: !993)
!1025 = !DILocation(line: 423, column: 11, scope: !939, inlinedAt: !993)
!1026 = !DILocation(line: 425, column: 18, scope: !939, inlinedAt: !993)
!1027 = !DILocation(line: 434, column: 9, scope: !956, inlinedAt: !993)
!1028 = !DILocation(line: 434, column: 9, scope: !889, inlinedAt: !993)
!1029 = !DILocation(line: 435, column: 15, scope: !959, inlinedAt: !993)
!1030 = !DILocation(line: 435, column: 13, scope: !960, inlinedAt: !993)
!1031 = !DILocation(line: 437, column: 37, scope: !963, inlinedAt: !993)
!1032 = !DILocation(line: 437, column: 28, scope: !963, inlinedAt: !993)
!1033 = !DILocation(line: 439, column: 15, scope: !969, inlinedAt: !993)
!1034 = !DILocation(line: 439, column: 13, scope: !970, inlinedAt: !993)
!1035 = !DILocation(line: 444, column: 1, scope: !889, inlinedAt: !993)
!1036 = !DILocation(line: 452, column: 9, scope: !980)
!1037 = !DILocation(line: 450, column: 15, scope: !980)
!1038 = !DILocation(line: 458, column: 11, scope: !980)
!1039 = !{!1040, !1040, i64 0}
!1040 = !{!"long", !421, i64 0}
!1041 = !DILocation(line: 459, column: 5, scope: !980)
!1042 = !DILocation(line: 0, scope: !994)
!1043 = !DILocation(line: 460, column: 1, scope: !980)
!1044 = distinct !DISubprogram(name: "string2ld", scope: !3, file: !3, line: 469, type: !1045, isLocal: false, isDefinition: true, scopeLine: 469, flags: DIFlagPrototyped, isOptimized: true, unit: !15, retainedNodes: !1049)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!6, !273, !9, !1047}
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!1049 = !{!1050, !1051, !1052, !1053, !1057, !1058}
!1050 = !DILocalVariable(name: "s", arg: 1, scope: !1044, file: !3, line: 469, type: !273)
!1051 = !DILocalVariable(name: "slen", arg: 2, scope: !1044, file: !3, line: 469, type: !9)
!1052 = !DILocalVariable(name: "dp", arg: 3, scope: !1044, file: !3, line: 469, type: !1047)
!1053 = !DILocalVariable(name: "buf", scope: !1044, file: !3, line: 470, type: !1054)
!1054 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 40960, elements: !1055)
!1055 = !{!1056}
!1056 = !DISubrange(count: 5120)
!1057 = !DILocalVariable(name: "value", scope: !1044, file: !3, line: 471, type: !1048)
!1058 = !DILocalVariable(name: "eptr", scope: !1044, file: !3, line: 472, type: !7)
!1059 = !DILocation(line: 469, column: 27, scope: !1044)
!1060 = !DILocation(line: 469, column: 37, scope: !1044)
!1061 = !DILocation(line: 469, column: 56, scope: !1044)
!1062 = !DILocation(line: 470, column: 5, scope: !1044)
!1063 = !DILocation(line: 470, column: 10, scope: !1044)
!1064 = !DILocation(line: 472, column: 5, scope: !1044)
!1065 = !DILocation(line: 474, column: 14, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 474, column: 9)
!1067 = !DILocation(line: 474, column: 9, scope: !1044)
!1068 = !DILocation(line: 475, column: 5, scope: !1044)
!1069 = !DILocation(line: 476, column: 5, scope: !1044)
!1070 = !DILocation(line: 476, column: 15, scope: !1044)
!1071 = !DILocation(line: 478, column: 5, scope: !1044)
!1072 = !DILocation(line: 478, column: 11, scope: !1044)
!1073 = !DILocation(line: 472, column: 11, scope: !1044)
!1074 = !DILocation(line: 479, column: 13, scope: !1044)
!1075 = !DILocation(line: 471, column: 17, scope: !1044)
!1076 = !DILocation(line: 480, column: 9, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 480, column: 9)
!1078 = !DILocation(line: 480, column: 25, scope: !1077)
!1079 = !DILocation(line: 480, column: 28, scope: !1077)
!1080 = !DILocation(line: 480, column: 36, scope: !1077)
!1081 = !DILocation(line: 480, column: 44, scope: !1077)
!1082 = !DILocation(line: 481, column: 10, scope: !1077)
!1083 = !DILocation(line: 481, column: 16, scope: !1077)
!1084 = !DILocation(line: 481, column: 26, scope: !1077)
!1085 = !DILocation(line: 482, column: 20, scope: !1077)
!1086 = !DILocation(line: 482, column: 41, scope: !1077)
!1087 = !DILocation(line: 482, column: 32, scope: !1077)
!1088 = !DILocation(line: 482, column: 63, scope: !1077)
!1089 = !DILocation(line: 483, column: 9, scope: !1077)
!1090 = !DILocation(line: 483, column: 15, scope: !1077)
!1091 = !DILocation(line: 483, column: 25, scope: !1077)
!1092 = !DILocation(line: 484, column: 9, scope: !1077)
!1093 = !DILocation(line: 480, column: 9, scope: !1044)
!1094 = !DILocation(line: 487, column: 9, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 487, column: 9)
!1096 = !DILocation(line: 487, column: 9, scope: !1044)
!1097 = !DILocation(line: 487, column: 17, scope: !1095)
!1098 = !{!1099, !1099, i64 0}
!1099 = !{!"long double", !421, i64 0}
!1100 = !DILocation(line: 487, column: 13, scope: !1095)
!1101 = !DILocation(line: 0, scope: !1044)
!1102 = !DILocation(line: 489, column: 1, scope: !1044)
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
!1147 = !DILocation(line: 523, column: 34, scope: !1146)
!1148 = !DILocation(line: 523, column: 25, scope: !1146)
!1149 = !DILocation(line: 523, column: 62, scope: !1146)
!1150 = !DILocation(line: 523, column: 53, scope: !1146)
!1151 = !DILocation(line: 523, column: 49, scope: !1146)
!1152 = !DILocation(line: 523, column: 13, scope: !1111)
!1153 = !DILocation(line: 314, column: 21, scope: !2, inlinedAt: !1154)
!1154 = distinct !DILocation(line: 524, column: 19, scope: !1146)
!1155 = !DILocation(line: 314, column: 33, scope: !2, inlinedAt: !1154)
!1156 = !DILocation(line: 314, column: 51, scope: !2, inlinedAt: !1154)
!1157 = !DILocation(line: 326, column: 16, scope: !825, inlinedAt: !1154)
!1158 = !DILocation(line: 326, column: 9, scope: !2, inlinedAt: !1154)
!1159 = !DILocation(line: 327, column: 20, scope: !828, inlinedAt: !1154)
!1160 = !DILocation(line: 328, column: 21, scope: !831, inlinedAt: !1154)
!1161 = !DILocation(line: 322, column: 24, scope: !2, inlinedAt: !1154)
!1162 = !DILocation(line: 327, column: 13, scope: !829, inlinedAt: !1154)
!1163 = !DILocation(line: 0, scope: !835, inlinedAt: !1154)
!1164 = !DILocation(line: 321, column: 9, scope: !2, inlinedAt: !1154)
!1165 = !DILocation(line: 339, column: 29, scope: !2, inlinedAt: !1154)
!1166 = !DILocation(line: 339, column: 44, scope: !2, inlinedAt: !1154)
!1167 = !DILocation(line: 339, column: 20, scope: !2, inlinedAt: !1154)
!1168 = !DILocation(line: 340, column: 9, scope: !841, inlinedAt: !1154)
!1169 = !DILocation(line: 340, column: 16, scope: !841, inlinedAt: !1154)
!1170 = !DILocation(line: 340, column: 9, scope: !2, inlinedAt: !1154)
!1171 = !DILocation(line: 343, column: 14, scope: !2, inlinedAt: !1154)
!1172 = !DILocation(line: 344, column: 5, scope: !2, inlinedAt: !1154)
!1173 = !DILocation(line: 344, column: 15, scope: !2, inlinedAt: !1154)
!1174 = !DILocation(line: 345, column: 9, scope: !2, inlinedAt: !1154)
!1175 = !DILocation(line: 346, column: 18, scope: !2, inlinedAt: !1154)
!1176 = !DILocation(line: 346, column: 5, scope: !2, inlinedAt: !1154)
!1177 = !DILocation(line: 347, column: 30, scope: !349, inlinedAt: !1154)
!1178 = !DILocation(line: 347, column: 23, scope: !349, inlinedAt: !1154)
!1179 = !DILocation(line: 347, column: 19, scope: !349, inlinedAt: !1154)
!1180 = !DILocation(line: 348, column: 15, scope: !349, inlinedAt: !1154)
!1181 = !DILocation(line: 349, column: 30, scope: !349, inlinedAt: !1154)
!1182 = !DILocation(line: 349, column: 21, scope: !349, inlinedAt: !1154)
!1183 = !DILocation(line: 349, column: 9, scope: !349, inlinedAt: !1154)
!1184 = !DILocation(line: 349, column: 19, scope: !349, inlinedAt: !1154)
!1185 = !DILocation(line: 350, column: 25, scope: !349, inlinedAt: !1154)
!1186 = !DILocation(line: 350, column: 18, scope: !349, inlinedAt: !1154)
!1187 = !DILocation(line: 350, column: 9, scope: !349, inlinedAt: !1154)
!1188 = !DILocation(line: 350, column: 23, scope: !349, inlinedAt: !1154)
!1189 = !DILocation(line: 351, column: 14, scope: !349, inlinedAt: !1154)
!1190 = !DILocation(line: 0, scope: !349, inlinedAt: !1154)
!1191 = !DILocation(line: 355, column: 15, scope: !353, inlinedAt: !1154)
!1192 = !DILocation(line: 355, column: 9, scope: !2, inlinedAt: !1154)
!1193 = !DILocation(line: 356, column: 27, scope: !869, inlinedAt: !1154)
!1194 = !DILocation(line: 356, column: 25, scope: !869, inlinedAt: !1154)
!1195 = !DILocation(line: 357, column: 5, scope: !869, inlinedAt: !1154)
!1196 = !DILocation(line: 358, column: 17, scope: !352, inlinedAt: !1154)
!1197 = !DILocation(line: 358, column: 34, scope: !352, inlinedAt: !1154)
!1198 = !DILocation(line: 358, column: 13, scope: !352, inlinedAt: !1154)
!1199 = !DILocation(line: 359, column: 30, scope: !352, inlinedAt: !1154)
!1200 = !DILocation(line: 359, column: 21, scope: !352, inlinedAt: !1154)
!1201 = !DILocation(line: 359, column: 9, scope: !352, inlinedAt: !1154)
!1202 = !DILocation(line: 359, column: 19, scope: !352, inlinedAt: !1154)
!1203 = !DILocation(line: 360, column: 25, scope: !352, inlinedAt: !1154)
!1204 = !DILocation(line: 360, column: 18, scope: !352, inlinedAt: !1154)
!1205 = !DILocation(line: 0, scope: !1146)
!1206 = !DILocation(line: 364, column: 9, scope: !883, inlinedAt: !1154)
!1207 = !DILocation(line: 364, column: 9, scope: !2, inlinedAt: !1154)
!1208 = !DILocation(line: 364, column: 26, scope: !883, inlinedAt: !1154)
!1209 = !DILocation(line: 364, column: 19, scope: !883, inlinedAt: !1154)
!1210 = !DILocation(line: 0, scope: !2, inlinedAt: !1154)
!1211 = !DILocation(line: 366, column: 1, scope: !2, inlinedAt: !1154)
!1212 = !DILocation(line: 524, column: 13, scope: !1146)
!1213 = !DILocation(line: 527, column: 19, scope: !1146)
!1214 = !DILocation(line: 530, column: 5, scope: !1103)
!1215 = distinct !DISubprogram(name: "ld2string", scope: !3, file: !3, line: 540, type: !1216, isLocal: false, isDefinition: true, scopeLine: 540, flags: DIFlagPrototyped, isOptimized: true, unit: !15, retainedNodes: !1218)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{!6, !7, !9, !1048, !6}
!1218 = !{!1219, !1220, !1221, !1222, !1223, !1224}
!1219 = !DILocalVariable(name: "buf", arg: 1, scope: !1215, file: !3, line: 540, type: !7)
!1220 = !DILocalVariable(name: "len", arg: 2, scope: !1215, file: !3, line: 540, type: !9)
!1221 = !DILocalVariable(name: "value", arg: 3, scope: !1215, file: !3, line: 540, type: !1048)
!1222 = !DILocalVariable(name: "humanfriendly", arg: 4, scope: !1215, file: !3, line: 540, type: !6)
!1223 = !DILocalVariable(name: "l", scope: !1215, file: !3, line: 541, type: !9)
!1224 = !DILocalVariable(name: "p", scope: !1225, file: !3, line: 564, type: !7)
!1225 = distinct !DILexicalBlock(scope: !1226, file: !3, line: 563, column: 38)
!1226 = distinct !DILexicalBlock(scope: !1227, file: !3, line: 563, column: 13)
!1227 = distinct !DILexicalBlock(scope: !1228, file: !3, line: 554, column: 31)
!1228 = distinct !DILexicalBlock(scope: !1229, file: !3, line: 554, column: 16)
!1229 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 543, column: 9)
!1230 = !DILocation(line: 540, column: 21, scope: !1215)
!1231 = !DILocation(line: 540, column: 33, scope: !1215)
!1232 = !DILocation(line: 540, column: 50, scope: !1215)
!1233 = !DILocation(line: 540, column: 61, scope: !1215)
!1234 = !DILocation(line: 543, column: 9, scope: !1229)
!1235 = !DILocation(line: 543, column: 9, scope: !1215)
!1236 = !DILocation(line: 546, column: 17, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 546, column: 13)
!1238 = distinct !DILexicalBlock(scope: !1229, file: !3, line: 543, column: 23)
!1239 = !DILocation(line: 546, column: 13, scope: !1238)
!1240 = !DILocation(line: 547, column: 19, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 547, column: 13)
!1242 = !DILocation(line: 547, column: 13, scope: !1238)
!1243 = !DILocation(line: 548, column: 13, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 547, column: 24)
!1245 = !DILocation(line: 541, column: 12, scope: !1215)
!1246 = !DILocation(line: 550, column: 9, scope: !1244)
!1247 = !DILocation(line: 551, column: 13, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 550, column: 16)
!1249 = !DILocation(line: 554, column: 16, scope: !1228)
!1250 = !DILocation(line: 554, column: 16, scope: !1229)
!1251 = !DILocation(line: 560, column: 13, scope: !1227)
!1252 = !DILocation(line: 561, column: 14, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1227, file: !3, line: 561, column: 13)
!1254 = !DILocation(line: 561, column: 17, scope: !1253)
!1255 = !DILocation(line: 561, column: 13, scope: !1227)
!1256 = !DILocation(line: 563, column: 13, scope: !1226)
!1257 = !DILocation(line: 563, column: 29, scope: !1226)
!1258 = !DILocation(line: 563, column: 13, scope: !1227)
!1259 = !DILocation(line: 564, column: 26, scope: !1225)
!1260 = !DILocation(line: 564, column: 19, scope: !1225)
!1261 = !DILocation(line: 565, column: 13, scope: !1225)
!1262 = !DILocation(line: 0, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 565, column: 30)
!1264 = !DILocation(line: 565, column: 19, scope: !1225)
!1265 = !DILocation(line: 567, column: 18, scope: !1263)
!1266 = distinct !{!1266, !1261, !1267}
!1267 = !DILocation(line: 568, column: 13, scope: !1225)
!1268 = !DILocation(line: 569, column: 29, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 569, column: 17)
!1270 = !DILocation(line: 569, column: 28, scope: !1269)
!1271 = !DILocation(line: 572, column: 13, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1228, file: !3, line: 571, column: 12)
!1273 = !DILocation(line: 573, column: 14, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1272, file: !3, line: 573, column: 13)
!1275 = !DILocation(line: 573, column: 17, scope: !1274)
!1276 = !DILocation(line: 573, column: 13, scope: !1272)
!1277 = !DILocation(line: 0, scope: !1272)
!1278 = !DILocation(line: 575, column: 5, scope: !1215)
!1279 = !DILocation(line: 575, column: 12, scope: !1215)
!1280 = !DILocation(line: 576, column: 12, scope: !1215)
!1281 = !DILocation(line: 576, column: 5, scope: !1215)
!1282 = !DILocation(line: 0, scope: !1274)
!1283 = !DILocation(line: 577, column: 1, scope: !1215)
!1284 = !DILocation(line: 584, column: 36, scope: !81)
!1285 = !DILocation(line: 584, column: 46, scope: !81)
!1286 = !DILocation(line: 590, column: 9, scope: !81)
!1287 = !DILocation(line: 595, column: 20, scope: !88)
!1288 = !DILocation(line: 595, column: 15, scope: !88)
!1289 = !DILocation(line: 596, column: 16, scope: !305)
!1290 = !DILocation(line: 596, column: 24, scope: !305)
!1291 = !DILocation(line: 596, column: 27, scope: !305)
!1292 = !DILocation(line: 596, column: 57, scope: !305)
!1293 = !DILocation(line: 596, column: 13, scope: !88)
!1294 = !DILocation(line: 599, column: 31, scope: !303)
!1295 = !DILocation(line: 599, column: 13, scope: !303)
!1296 = !DILocation(line: 600, column: 32, scope: !307)
!1297 = !DILocalVariable(name: "tv", arg: 1, scope: !1298, file: !3, line: 50, type: !31)
!1298 = distinct !DISubprogram(name: "gettimeofday_wrapper", scope: !3, file: !3, line: 50, type: !1299, isLocal: true, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !15, retainedNodes: !1301)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{!6, !31, !26}
!1301 = !{!1297, !1302, !1303, !1304, !1305}
!1302 = !DILocalVariable(name: "tz", arg: 2, scope: !1298, file: !3, line: 50, type: !26)
!1303 = !DILocalVariable(name: "now", scope: !1298, file: !3, line: 52, type: !6)
!1304 = !DILocalVariable(name: "_ptimeval", scope: !1298, file: !3, line: 53, type: !32)
!1305 = !DILocalVariable(name: "_dss__ptimeval", scope: !1298, file: !3, line: 54, type: !31)
!1306 = !DILocation(line: 50, column: 56, scope: !1298, inlinedAt: !1307)
!1307 = distinct !DILocation(line: 601, column: 17, scope: !307)
!1308 = !DILocation(line: 50, column: 66, scope: !1298, inlinedAt: !1307)
!1309 = !DILocation(line: 53, column: 2, scope: !1298, inlinedAt: !1307)
!1310 = !DILocation(line: 54, column: 18, scope: !1298, inlinedAt: !1307)
!1311 = !DILocation(line: 58, column: 2, scope: !1298, inlinedAt: !1307)
!1312 = !DILocation(line: 52, column: 6, scope: !1298, inlinedAt: !1307)
!1313 = !DILocation(line: 59, column: 33, scope: !1298, inlinedAt: !1307)
!1314 = !{!1315, !1040, i64 0}
!1315 = !{!"timeval", !1040, i64 0, !1040, i64 8}
!1316 = !DILocation(line: 60, column: 34, scope: !1298, inlinedAt: !1307)
!1317 = !{!1315, !1040, i64 8}
!1318 = !DILocation(line: 63, column: 1, scope: !1298, inlinedAt: !1307)
!1319 = !DILocation(line: 62, column: 2, scope: !1298, inlinedAt: !1307)
!1320 = !DILocation(line: 602, column: 29, scope: !307)
!1321 = !DILocation(line: 602, column: 23, scope: !307)
!1322 = !DILocation(line: 603, column: 52, scope: !307)
!1323 = !DILocation(line: 603, column: 37, scope: !307)
!1324 = !DILocation(line: 603, column: 50, scope: !307)
!1325 = !DILocation(line: 603, column: 56, scope: !307)
!1326 = !DILocation(line: 603, column: 27, scope: !307)
!1327 = !DILocation(line: 603, column: 17, scope: !307)
!1328 = !DILocation(line: 603, column: 25, scope: !307)
!1329 = !DILocation(line: 599, column: 57, scope: !308)
!1330 = !DILocation(line: 599, column: 40, scope: !308)
!1331 = distinct !{!1331, !1295, !1332}
!1332 = !DILocation(line: 604, column: 13, scope: !303)
!1333 = !DILocation(line: 608, column: 13, scope: !88)
!1334 = !DILocation(line: 608, column: 17, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !88, file: !3, line: 608, column: 13)
!1336 = !DILocation(line: 611, column: 5, scope: !81)
!1337 = !DILocation(line: 612, column: 9, scope: !313)
!1338 = !DILocation(line: 612, column: 23, scope: !313)
!1339 = !DILocation(line: 613, column: 9, scope: !313)
!1340 = !DILocation(line: 614, column: 32, scope: !313)
!1341 = !DILocation(line: 613, column: 18, scope: !313)
!1342 = !DILocation(line: 616, column: 9, scope: !313)
!1343 = !DILocation(line: 617, column: 9, scope: !313)
!1344 = !DILocation(line: 618, column: 9, scope: !313)
!1345 = !DILocation(line: 619, column: 9, scope: !313)
!1346 = !DILocation(line: 620, column: 16, scope: !313)
!1347 = !DILocation(line: 622, column: 9, scope: !313)
!1348 = !DILocation(line: 623, column: 13, scope: !313)
!1349 = !DILocation(line: 624, column: 11, scope: !313)
!1350 = !DILocation(line: 625, column: 5, scope: !81)
!1351 = distinct !{!1351, !1336, !1350}
!1352 = !DILocation(line: 626, column: 1, scope: !81)
!1353 = distinct !DISubprogram(name: "getRandomHexChars", scope: !3, file: !3, line: 632, type: !1354, isLocal: false, isDefinition: true, scopeLine: 632, flags: DIFlagPrototyped, isOptimized: true, unit: !15, retainedNodes: !1356)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{null, !7, !9}
!1356 = !{!1357, !1358, !1359, !1360}
!1357 = !DILocalVariable(name: "p", arg: 1, scope: !1353, file: !3, line: 632, type: !7)
!1358 = !DILocalVariable(name: "len", arg: 2, scope: !1353, file: !3, line: 632, type: !9)
!1359 = !DILocalVariable(name: "charset", scope: !1353, file: !3, line: 633, type: !7)
!1360 = !DILocalVariable(name: "j", scope: !1353, file: !3, line: 634, type: !9)
!1361 = !DILocation(line: 632, column: 30, scope: !1353)
!1362 = !DILocation(line: 632, column: 40, scope: !1353)
!1363 = !DILocation(line: 636, column: 5, scope: !1353)
!1364 = !DILocation(line: 634, column: 12, scope: !1353)
!1365 = !DILocation(line: 637, column: 19, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1367, file: !3, line: 637, column: 5)
!1367 = distinct !DILexicalBlock(scope: !1353, file: !3, line: 637, column: 5)
!1368 = !DILocation(line: 637, column: 5, scope: !1367)
!1369 = !DILocation(line: 637, column: 46, scope: !1366)
!1370 = !DILocation(line: 637, column: 51, scope: !1366)
!1371 = !DILocation(line: 637, column: 38, scope: !1366)
!1372 = !DILocation(line: 637, column: 36, scope: !1366)
!1373 = !DILocation(line: 637, column: 27, scope: !1366)
!1374 = distinct !{!1374, !1368, !1375}
!1375 = !DILocation(line: 637, column: 57, scope: !1367)
!1376 = !DILocation(line: 638, column: 1, scope: !1353)
!1377 = distinct !DISubprogram(name: "getAbsolutePath", scope: !3, file: !3, line: 647, type: !1378, isLocal: false, isDefinition: true, scopeLine: 647, flags: DIFlagPrototyped, isOptimized: true, unit: !15, retainedNodes: !1381)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{!1380, !7}
!1380 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !43, line: 43, baseType: !7)
!1381 = !{!1382, !1383, !1387, !1388, !1389, !1393}
!1382 = !DILocalVariable(name: "filename", arg: 1, scope: !1377, file: !3, line: 647, type: !7)
!1383 = !DILocalVariable(name: "cwd", scope: !1377, file: !3, line: 648, type: !1384)
!1384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8192, elements: !1385)
!1385 = !{!1386}
!1386 = !DISubrange(count: 1024)
!1387 = !DILocalVariable(name: "abspath", scope: !1377, file: !3, line: 649, type: !1380)
!1388 = !DILocalVariable(name: "relpath", scope: !1377, file: !3, line: 650, type: !1380)
!1389 = !DILocalVariable(name: "p", scope: !1390, file: !3, line: 675, type: !7)
!1390 = distinct !DILexicalBlock(scope: !1391, file: !3, line: 674, column: 34)
!1391 = distinct !DILexicalBlock(scope: !1392, file: !3, line: 674, column: 13)
!1392 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 672, column: 5)
!1393 = !DILocalVariable(name: "trimlen", scope: !1390, file: !3, line: 676, type: !6)
!1394 = !DILocation(line: 647, column: 27, scope: !1377)
!1395 = !DILocation(line: 648, column: 5, scope: !1377)
!1396 = !DILocation(line: 648, column: 10, scope: !1377)
!1397 = !DILocation(line: 650, column: 19, scope: !1377)
!1398 = !DILocation(line: 650, column: 9, scope: !1377)
!1399 = !DILocation(line: 652, column: 15, scope: !1377)
!1400 = !DILocation(line: 653, column: 9, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 653, column: 9)
!1402 = !DILocation(line: 653, column: 20, scope: !1401)
!1403 = !DILocation(line: 653, column: 9, scope: !1377)
!1404 = !DILocation(line: 656, column: 9, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 656, column: 9)
!1406 = !DILocation(line: 656, column: 33, scope: !1405)
!1407 = !DILocation(line: 656, column: 9, scope: !1377)
!1408 = !DILocation(line: 657, column: 9, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1405, file: !3, line: 656, column: 42)
!1410 = !DILocation(line: 658, column: 9, scope: !1409)
!1411 = !DILocation(line: 660, column: 15, scope: !1377)
!1412 = !DILocation(line: 649, column: 9, scope: !1377)
!1413 = !DILocalVariable(name: "s", arg: 1, scope: !1414, file: !43, line: 87, type: !1417)
!1414 = distinct !DISubprogram(name: "sdslen", scope: !43, file: !43, line: 87, type: !1415, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !15, retainedNodes: !1418)
!1415 = !DISubroutineType(types: !1416)
!1416 = !{!9, !1417}
!1417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1380)
!1418 = !{!1413, !1419}
!1419 = !DILocalVariable(name: "flags", scope: !1414, file: !43, line: 88, type: !30)
!1420 = !DILocation(line: 87, column: 39, scope: !1414, inlinedAt: !1421)
!1421 = distinct !DILocation(line: 661, column: 9, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 661, column: 9)
!1423 = !DILocation(line: 88, column: 27, scope: !1414, inlinedAt: !1421)
!1424 = !DILocation(line: 88, column: 19, scope: !1414, inlinedAt: !1421)
!1425 = !DILocation(line: 89, column: 5, scope: !1414, inlinedAt: !1421)
!1426 = !DILocation(line: 102, column: 1, scope: !1414, inlinedAt: !1421)
!1427 = !DILocation(line: 661, column: 25, scope: !1422)
!1428 = !DILocation(line: 91, column: 20, scope: !1429, inlinedAt: !1421)
!1429 = distinct !DILexicalBlock(scope: !1414, file: !43, line: 89, column: 33)
!1430 = !DILocation(line: 91, column: 13, scope: !1429, inlinedAt: !1421)
!1431 = !DILocation(line: 93, column: 20, scope: !1429, inlinedAt: !1421)
!1432 = !DILocation(line: 93, column: 34, scope: !1429, inlinedAt: !1421)
!1433 = !DILocation(line: 93, column: 13, scope: !1429, inlinedAt: !1421)
!1434 = !DILocation(line: 95, column: 20, scope: !1429, inlinedAt: !1421)
!1435 = !DILocation(line: 95, column: 35, scope: !1429, inlinedAt: !1421)
!1436 = !{!1437, !1437, i64 0}
!1437 = !{!"short", !421, i64 0}
!1438 = !DILocation(line: 95, column: 13, scope: !1429, inlinedAt: !1421)
!1439 = !DILocation(line: 97, column: 20, scope: !1429, inlinedAt: !1421)
!1440 = !DILocation(line: 97, column: 35, scope: !1429, inlinedAt: !1421)
!1441 = !DILocation(line: 97, column: 13, scope: !1429, inlinedAt: !1421)
!1442 = !DILocation(line: 99, column: 20, scope: !1429, inlinedAt: !1421)
!1443 = !DILocation(line: 99, column: 35, scope: !1429, inlinedAt: !1421)
!1444 = !DILocation(line: 99, column: 13, scope: !1429, inlinedAt: !1421)
!1445 = !DILocation(line: 0, scope: !1429, inlinedAt: !1421)
!1446 = !DILocation(line: 661, column: 9, scope: !1422)
!1447 = !DILocation(line: 87, column: 39, scope: !1414, inlinedAt: !1448)
!1448 = distinct !DILocation(line: 661, column: 36, scope: !1422)
!1449 = !DILocation(line: 88, column: 19, scope: !1414, inlinedAt: !1448)
!1450 = !DILocation(line: 89, column: 5, scope: !1414, inlinedAt: !1448)
!1451 = !DILocation(line: 91, column: 20, scope: !1429, inlinedAt: !1448)
!1452 = !DILocation(line: 91, column: 13, scope: !1429, inlinedAt: !1448)
!1453 = !DILocation(line: 93, column: 20, scope: !1429, inlinedAt: !1448)
!1454 = !DILocation(line: 93, column: 34, scope: !1429, inlinedAt: !1448)
!1455 = !DILocation(line: 93, column: 13, scope: !1429, inlinedAt: !1448)
!1456 = !DILocation(line: 95, column: 20, scope: !1429, inlinedAt: !1448)
!1457 = !DILocation(line: 95, column: 35, scope: !1429, inlinedAt: !1448)
!1458 = !DILocation(line: 95, column: 13, scope: !1429, inlinedAt: !1448)
!1459 = !DILocation(line: 97, column: 20, scope: !1429, inlinedAt: !1448)
!1460 = !DILocation(line: 97, column: 35, scope: !1429, inlinedAt: !1448)
!1461 = !DILocation(line: 97, column: 13, scope: !1429, inlinedAt: !1448)
!1462 = !DILocation(line: 99, column: 20, scope: !1429, inlinedAt: !1448)
!1463 = !DILocation(line: 99, column: 35, scope: !1429, inlinedAt: !1448)
!1464 = !DILocation(line: 99, column: 13, scope: !1429, inlinedAt: !1448)
!1465 = !DILocation(line: 0, scope: !1429, inlinedAt: !1448)
!1466 = !DILocation(line: 102, column: 1, scope: !1414, inlinedAt: !1448)
!1467 = !DILocation(line: 661, column: 51, scope: !1422)
!1468 = !DILocation(line: 661, column: 28, scope: !1422)
!1469 = !DILocation(line: 661, column: 55, scope: !1422)
!1470 = !DILocation(line: 661, column: 9, scope: !1377)
!1471 = !DILocation(line: 662, column: 19, scope: !1422)
!1472 = !DILocation(line: 662, column: 9, scope: !1422)
!1473 = !DILocation(line: 0, scope: !1377)
!1474 = !DILocation(line: 670, column: 5, scope: !1377)
!1475 = !DILocation(line: 87, column: 39, scope: !1414, inlinedAt: !1476)
!1476 = distinct !DILocation(line: 670, column: 12, scope: !1377)
!1477 = !DILocation(line: 88, column: 27, scope: !1414, inlinedAt: !1476)
!1478 = !DILocation(line: 88, column: 19, scope: !1414, inlinedAt: !1476)
!1479 = !DILocation(line: 89, column: 5, scope: !1414, inlinedAt: !1476)
!1480 = !DILocation(line: 102, column: 1, scope: !1414, inlinedAt: !1476)
!1481 = !DILocation(line: 670, column: 33, scope: !1377)
!1482 = !DILocation(line: 91, column: 20, scope: !1429, inlinedAt: !1476)
!1483 = !DILocation(line: 91, column: 13, scope: !1429, inlinedAt: !1476)
!1484 = !DILocation(line: 93, column: 34, scope: !1429, inlinedAt: !1476)
!1485 = !DILocation(line: 93, column: 20, scope: !1429, inlinedAt: !1476)
!1486 = !DILocation(line: 93, column: 13, scope: !1429, inlinedAt: !1476)
!1487 = !DILocation(line: 95, column: 35, scope: !1429, inlinedAt: !1476)
!1488 = !DILocation(line: 95, column: 20, scope: !1429, inlinedAt: !1476)
!1489 = !DILocation(line: 95, column: 13, scope: !1429, inlinedAt: !1476)
!1490 = !DILocation(line: 97, column: 35, scope: !1429, inlinedAt: !1476)
!1491 = !DILocation(line: 97, column: 20, scope: !1429, inlinedAt: !1476)
!1492 = !DILocation(line: 97, column: 13, scope: !1429, inlinedAt: !1476)
!1493 = !DILocation(line: 99, column: 35, scope: !1429, inlinedAt: !1476)
!1494 = !DILocation(line: 99, column: 13, scope: !1429, inlinedAt: !1476)
!1495 = !DILocation(line: 0, scope: !1429, inlinedAt: !1476)
!1496 = !DILocation(line: 670, column: 28, scope: !1377)
!1497 = !DILocation(line: 671, column: 12, scope: !1377)
!1498 = !DILocation(line: 671, column: 23, scope: !1377)
!1499 = !DILocation(line: 671, column: 30, scope: !1377)
!1500 = !DILocation(line: 671, column: 33, scope: !1377)
!1501 = !DILocation(line: 671, column: 44, scope: !1377)
!1502 = !DILocation(line: 671, column: 51, scope: !1377)
!1503 = !DILocation(line: 671, column: 54, scope: !1377)
!1504 = !DILocation(line: 671, column: 65, scope: !1377)
!1505 = !DILocation(line: 673, column: 9, scope: !1392)
!1506 = !DILocation(line: 87, column: 39, scope: !1414, inlinedAt: !1507)
!1507 = distinct !DILocation(line: 674, column: 13, scope: !1391)
!1508 = !DILocation(line: 88, column: 27, scope: !1414, inlinedAt: !1507)
!1509 = !DILocation(line: 88, column: 19, scope: !1414, inlinedAt: !1507)
!1510 = !DILocation(line: 89, column: 5, scope: !1414, inlinedAt: !1507)
!1511 = !DILocation(line: 102, column: 1, scope: !1414, inlinedAt: !1507)
!1512 = !DILocation(line: 674, column: 13, scope: !1392)
!1513 = distinct !{!1513, !1474, !1514}
!1514 = !DILocation(line: 684, column: 5, scope: !1377)
!1515 = !DILocation(line: 91, column: 20, scope: !1429, inlinedAt: !1507)
!1516 = !DILocation(line: 91, column: 13, scope: !1429, inlinedAt: !1507)
!1517 = !DILocation(line: 93, column: 34, scope: !1429, inlinedAt: !1507)
!1518 = !DILocation(line: 93, column: 20, scope: !1429, inlinedAt: !1507)
!1519 = !DILocation(line: 93, column: 13, scope: !1429, inlinedAt: !1507)
!1520 = !DILocation(line: 95, column: 35, scope: !1429, inlinedAt: !1507)
!1521 = !DILocation(line: 95, column: 20, scope: !1429, inlinedAt: !1507)
!1522 = !DILocation(line: 95, column: 13, scope: !1429, inlinedAt: !1507)
!1523 = !DILocation(line: 97, column: 35, scope: !1429, inlinedAt: !1507)
!1524 = !DILocation(line: 97, column: 20, scope: !1429, inlinedAt: !1507)
!1525 = !DILocation(line: 97, column: 13, scope: !1429, inlinedAt: !1507)
!1526 = !DILocation(line: 99, column: 35, scope: !1429, inlinedAt: !1507)
!1527 = !DILocation(line: 99, column: 13, scope: !1429, inlinedAt: !1507)
!1528 = !DILocation(line: 0, scope: !1429, inlinedAt: !1507)
!1529 = !DILocation(line: 674, column: 29, scope: !1391)
!1530 = !DILocation(line: 87, column: 39, scope: !1414, inlinedAt: !1531)
!1531 = distinct !DILocation(line: 675, column: 33, scope: !1390)
!1532 = !DILocation(line: 88, column: 19, scope: !1414, inlinedAt: !1531)
!1533 = !DILocation(line: 89, column: 5, scope: !1414, inlinedAt: !1531)
!1534 = !DILocation(line: 91, column: 20, scope: !1429, inlinedAt: !1531)
!1535 = !DILocation(line: 91, column: 13, scope: !1429, inlinedAt: !1531)
!1536 = !DILocation(line: 93, column: 34, scope: !1429, inlinedAt: !1531)
!1537 = !DILocation(line: 93, column: 20, scope: !1429, inlinedAt: !1531)
!1538 = !DILocation(line: 93, column: 13, scope: !1429, inlinedAt: !1531)
!1539 = !DILocation(line: 95, column: 35, scope: !1429, inlinedAt: !1531)
!1540 = !DILocation(line: 95, column: 20, scope: !1429, inlinedAt: !1531)
!1541 = !DILocation(line: 95, column: 13, scope: !1429, inlinedAt: !1531)
!1542 = !DILocation(line: 97, column: 35, scope: !1429, inlinedAt: !1531)
!1543 = !DILocation(line: 97, column: 20, scope: !1429, inlinedAt: !1531)
!1544 = !DILocation(line: 97, column: 13, scope: !1429, inlinedAt: !1531)
!1545 = !DILocation(line: 99, column: 35, scope: !1429, inlinedAt: !1531)
!1546 = !DILocation(line: 99, column: 13, scope: !1429, inlinedAt: !1531)
!1547 = !DILocation(line: 0, scope: !1429, inlinedAt: !1531)
!1548 = !DILocation(line: 102, column: 1, scope: !1414, inlinedAt: !1531)
!1549 = !DILocation(line: 675, column: 48, scope: !1390)
!1550 = !DILocation(line: 675, column: 19, scope: !1390)
!1551 = !DILocation(line: 676, column: 17, scope: !1390)
!1552 = !DILocation(line: 678, column: 19, scope: !1390)
!1553 = !DILocation(line: 678, column: 22, scope: !1390)
!1554 = !DILocation(line: 678, column: 13, scope: !1390)
!1555 = !DILocation(line: 679, column: 18, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1390, file: !3, line: 678, column: 30)
!1557 = !DILocation(line: 680, column: 24, scope: !1556)
!1558 = distinct !{!1558, !1554, !1559}
!1559 = !DILocation(line: 681, column: 13, scope: !1390)
!1560 = !DILocation(line: 0, scope: !1556)
!1561 = !DILocation(line: 682, column: 32, scope: !1390)
!1562 = !DILocation(line: 682, column: 13, scope: !1390)
!1563 = !DILocation(line: 683, column: 9, scope: !1390)
!1564 = !DILocation(line: 687, column: 15, scope: !1377)
!1565 = !DILocation(line: 688, column: 5, scope: !1377)
!1566 = !DILocation(line: 689, column: 5, scope: !1377)
!1567 = !DILocation(line: 690, column: 1, scope: !1377)
!1568 = distinct !DISubprogram(name: "getTimeZone", scope: !3, file: !3, line: 697, type: !1569, isLocal: false, isDefinition: true, scopeLine: 697, flags: DIFlagPrototyped, isOptimized: true, unit: !15, retainedNodes: !1571)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{!13}
!1571 = !{!1572, !1573}
!1572 = !DILocalVariable(name: "tv", scope: !1568, file: !3, line: 701, type: !32)
!1573 = !DILocalVariable(name: "tz", scope: !1568, file: !3, line: 702, type: !1574)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timezone", file: !1575, line: 35, size: 64, elements: !1576)
!1575 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/musl-imported/include/sys/time.h", directory: "/root/.unikraft/apps/redis/build")
!1576 = !{!1577, !1578}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "tz_minuteswest", scope: !1574, file: !1575, line: 36, baseType: !6, size: 32)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "tz_dsttime", scope: !1574, file: !1575, line: 37, baseType: !6, size: 32, offset: 32)
!1579 = !DILocation(line: 701, column: 20, scope: !1568)
!1580 = !DILocation(line: 50, column: 56, scope: !1298, inlinedAt: !1581)
!1581 = distinct !DILocation(line: 704, column: 5, scope: !1568)
!1582 = !DILocation(line: 50, column: 66, scope: !1298, inlinedAt: !1581)
!1583 = !DILocation(line: 53, column: 2, scope: !1298, inlinedAt: !1581)
!1584 = !DILocation(line: 54, column: 55, scope: !1298, inlinedAt: !1581)
!1585 = !DILocation(line: 54, column: 80, scope: !1298, inlinedAt: !1581)
!1586 = !DILocation(line: 54, column: 35, scope: !1298, inlinedAt: !1581)
!1587 = !DILocation(line: 54, column: 18, scope: !1298, inlinedAt: !1581)
!1588 = !DILocation(line: 58, column: 2, scope: !1298, inlinedAt: !1581)
!1589 = !DILocation(line: 52, column: 6, scope: !1298, inlinedAt: !1581)
!1590 = !DILocation(line: 63, column: 1, scope: !1298, inlinedAt: !1581)
!1591 = !DILocation(line: 62, column: 2, scope: !1298, inlinedAt: !1581)
!1592 = !DILocation(line: 706, column: 5, scope: !1568)
!1593 = distinct !DISubprogram(name: "pathIsBaseName", scope: !3, file: !3, line: 714, type: !1594, isLocal: false, isDefinition: true, scopeLine: 714, flags: DIFlagPrototyped, isOptimized: true, unit: !15, retainedNodes: !1596)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{!6, !7}
!1596 = !{!1597}
!1597 = !DILocalVariable(name: "path", arg: 1, scope: !1593, file: !3, line: 714, type: !7)
!1598 = !DILocation(line: 714, column: 26, scope: !1593)
!1599 = !DILocation(line: 715, column: 12, scope: !1593)
!1600 = !DILocation(line: 715, column: 29, scope: !1593)
!1601 = !DILocation(line: 715, column: 37, scope: !1593)
!1602 = !DILocation(line: 715, column: 40, scope: !1593)
!1603 = !DILocation(line: 715, column: 58, scope: !1593)
!1604 = !DILocation(line: 715, column: 5, scope: !1593)
