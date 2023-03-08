; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fflush.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fflush.c"
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
define dso_local i32 @__sflush_r(%struct._reent*, %struct.__sFILE*) local_unnamed_addr #0 !dbg !29 {
  %3 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 3, !dbg !270
  %4 = load i16, i16* %3, align 8, !dbg !270, !tbaa !271
  %5 = sext i16 %4 to i32, !dbg !282
  %6 = and i32 %5, 8, !dbg !283
  %7 = icmp eq i32 %6, 0, !dbg !284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !285
  br i1 %7, label %8, label %106, !dbg !285

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 1, !dbg !286
  %10 = load i32, i32* %9, align 8, !dbg !286, !tbaa !287
  %11 = icmp sgt i32 %10, 0, !dbg !288
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !289
  br i1 %11, label %16, label %12, !dbg !289

; <label>:12:                                     ; preds = %8
  %13 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 14, !dbg !290
  %14 = load i32, i32* %13, align 8, !dbg !290, !tbaa !291
  %15 = icmp sgt i32 %14, 0, !dbg !292
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !293
  br i1 %15, label %16, label %147, !dbg !293

; <label>:16:                                     ; preds = %12, %8
  %17 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 10, !dbg !294
  %18 = load i64 (%struct._reent*, i8*, i64, i32)*, i64 (%struct._reent*, i8*, i64, i32)** %17, align 8, !dbg !294, !tbaa !295
  %19 = icmp eq i64 (%struct._reent*, i8*, i64, i32)* %18, null, !dbg !296
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !297
  br i1 %19, label %147, label %20, !dbg !297

; <label>:20:                                     ; preds = %16
  %21 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !298
  %22 = load i32, i32* %21, align 8, !dbg !298, !tbaa !299
  store i32 0, i32* %21, align 8, !dbg !305, !tbaa !299
  %23 = and i16 %4, 4096, !dbg !306
  %24 = icmp eq i16 %23, 0, !dbg !306
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !307
  br i1 %24, label %28, label %25, !dbg !307

; <label>:25:                                     ; preds = %20
  %26 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 19, !dbg !308
  %27 = load i64, i64* %26, align 8, !dbg !308, !tbaa !309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !311
  br label %46, !dbg !311

; <label>:28:                                     ; preds = %20
  %29 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 7, !dbg !312
  %30 = load i8*, i8** %29, align 8, !dbg !312, !tbaa !313
  %31 = tail call i64 %18(%struct._reent* nonnull %0, i8* %30, i64 0, i32 1) #4, !dbg !314
  %32 = icmp eq i64 %31, -1, !dbg !315
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !316
  br i1 %32, label %33, label %46, !dbg !316

; <label>:33:                                     ; preds = %28
  %34 = load i32, i32* %21, align 8, !dbg !317, !tbaa !299
  %35 = icmp eq i32 %34, 0, !dbg !318
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !319
  br i1 %35, label %46, label %36, !dbg !319

; <label>:36:                                     ; preds = %33
  %37 = icmp eq i32 %34, 29, !dbg !321
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !323
  br i1 %37, label %40, label %38, !dbg !323

; <label>:38:                                     ; preds = %36
  %39 = icmp eq i32 %34, 22, !dbg !324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !325
  br i1 %39, label %40, label %41, !dbg !325

; <label>:40:                                     ; preds = %38, %36
  store i32 %22, i32* %21, align 8, !dbg !326, !tbaa !299
  br label %44, !dbg !328

; <label>:41:                                     ; preds = %38
  %42 = load i16, i16* %3, align 8, !dbg !329, !tbaa !271
  %43 = or i16 %42, 64, !dbg !329
  store i16 %43, i16* %3, align 8, !dbg !329, !tbaa !271
  br label %44

; <label>:44:                                     ; preds = %41, %40
  %45 = phi i32 [ 0, %40 ], [ -1, %41 ], !dbg !330
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %103

; <label>:46:                                     ; preds = %33, %28, %25
  %47 = phi i64 [ %27, %25 ], [ -1, %33 ], [ %31, %28 ], !dbg !331
  %48 = load i16, i16* %3, align 8, !dbg !332, !tbaa !271
  %49 = and i16 %48, 4, !dbg !334
  %50 = icmp eq i16 %49, 0, !dbg !334
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !335
  br i1 %50, label %63, label %51, !dbg !335

; <label>:51:                                     ; preds = %46
  %52 = load i32, i32* %9, align 8, !dbg !336, !tbaa !287
  %53 = sext i32 %52 to i64, !dbg !338
  %54 = sub nsw i64 %47, %53, !dbg !339
  %55 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 12, i32 0, !dbg !340
  %56 = load i8*, i8** %55, align 8, !dbg !340, !tbaa !342
  %57 = icmp eq i8* %56, null, !dbg !340
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !343
  br i1 %57, label %63, label %58, !dbg !343

; <label>:58:                                     ; preds = %51
  %59 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 14, !dbg !344
  %60 = load i32, i32* %59, align 8, !dbg !344, !tbaa !291
  %61 = sext i32 %60 to i64, !dbg !345
  %62 = sub nsw i64 %54, %61, !dbg !346
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !347
  br label %63, !dbg !347

; <label>:63:                                     ; preds = %51, %46, %58
  %64 = phi i64 [ %62, %58 ], [ %54, %51 ], [ %47, %46 ], !dbg !348
  %65 = load i64 (%struct._reent*, i8*, i64, i32)*, i64 (%struct._reent*, i8*, i64, i32)** %17, align 8, !dbg !349, !tbaa !295
  %66 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 7, !dbg !350
  %67 = load i8*, i8** %66, align 8, !dbg !350, !tbaa !313
  %68 = tail call i64 %65(%struct._reent* nonnull %0, i8* %67, i64 %64, i32 0) #4, !dbg !351
  %69 = icmp ne i64 %68, -1, !dbg !352
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !354
  br i1 %69, label %77, label %70, !dbg !354

; <label>:70:                                     ; preds = %63
  %71 = load i32, i32* %21, align 8, !dbg !355, !tbaa !299
  %72 = icmp eq i32 %71, 0, !dbg !356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !357
  br i1 %72, label %77, label %73, !dbg !357

; <label>:73:                                     ; preds = %70
  %74 = icmp eq i32 %71, 29, !dbg !358
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !359
  br i1 %74, label %77, label %75, !dbg !359

; <label>:75:                                     ; preds = %73
  %76 = icmp eq i32 %71, 22, !dbg !360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !361
  br i1 %76, label %77, label %100, !dbg !361

; <label>:77:                                     ; preds = %75, %73, %70, %63
  store i32 0, i32* %9, align 8, !dbg !362, !tbaa !287
  %78 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 5, i32 0, !dbg !364
  %79 = bitcast i8** %78 to i64*, !dbg !364
  %80 = load i64, i64* %79, align 8, !dbg !364, !tbaa !365
  %81 = bitcast %struct.__sFILE* %1 to i64*, !dbg !366
  store i64 %80, i64* %81, align 8, !dbg !366, !tbaa !367
  %82 = load i16, i16* %3, align 8, !dbg !368, !tbaa !271
  %83 = and i16 %82, 4096, !dbg !370
  %84 = icmp eq i16 %83, 0, !dbg !370
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !371
  br i1 %84, label %91, label %85, !dbg !371

; <label>:85:                                     ; preds = %77
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !372
  br i1 %69, label %89, label %86, !dbg !372

; <label>:86:                                     ; preds = %85
  %87 = load i32, i32* %21, align 8, !dbg !373, !tbaa !299
  %88 = icmp eq i32 %87, 0, !dbg !374
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !375
  br i1 %88, label %89, label %91, !dbg !375

; <label>:89:                                     ; preds = %86, %85
  %90 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 19, !dbg !376
  store i64 %68, i64* %90, align 8, !dbg !377, !tbaa !309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !378
  br label %91, !dbg !378

; <label>:91:                                     ; preds = %77, %89, %86
  store i32 %22, i32* %21, align 8, !dbg !379, !tbaa !299
  %92 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 12, i32 0, !dbg !380
  %93 = load i8*, i8** %92, align 8, !dbg !380, !tbaa !342
  %94 = icmp eq i8* %93, null, !dbg !380
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !382
  br i1 %94, label %105, label %95, !dbg !382

; <label>:95:                                     ; preds = %91
  %96 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 15, i64 0, !dbg !383
  %97 = icmp eq i8* %93, %96, !dbg !383
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !386
  br i1 %97, label %99, label %98, !dbg !386

; <label>:98:                                     ; preds = %95
  tail call void @free(i8* nonnull %93) #4, !dbg !383
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !383
  br label %99, !dbg !383

; <label>:99:                                     ; preds = %95, %98
  store i8* null, i8** %92, align 8, !dbg !386, !tbaa !342
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !386
  br label %105, !dbg !386

; <label>:100:                                    ; preds = %75
  %101 = load i16, i16* %3, align 8, !dbg !387, !tbaa !271
  %102 = or i16 %101, 64, !dbg !387
  store i16 %102, i16* %3, align 8, !dbg !387, !tbaa !271
  br label %103, !dbg !389

; <label>:103:                                    ; preds = %100, %44
  %104 = phi i32 [ %45, %44 ], [ -1, %100 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %147

; <label>:105:                                    ; preds = %99, %91
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !390
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %147

; <label>:106:                                    ; preds = %2
  %107 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 5, i32 0, !dbg !391
  %108 = load i8*, i8** %107, align 8, !dbg !391, !tbaa !365
  %109 = icmp eq i8* %108, null, !dbg !394
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !395
  br i1 %109, label %147, label %110, !dbg !395

; <label>:110:                                    ; preds = %106
  %111 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 0, !dbg !396
  %112 = bitcast %struct.__sFILE* %1 to i64*, !dbg !396
  %113 = load i64, i64* %112, align 8, !dbg !396, !tbaa !367
  %114 = ptrtoint i8* %108 to i64, !dbg !397
  %115 = sub i64 %113, %114, !dbg !397
  store i8* %108, i8** %111, align 8, !dbg !398, !tbaa !367
  %116 = and i32 %5, 3, !dbg !399
  %117 = icmp eq i32 %116, 0, !dbg !399
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !400
  br i1 %117, label %118, label %121, !dbg !400

; <label>:118:                                    ; preds = %110
  %119 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 5, i32 1, !dbg !401
  %120 = load i32, i32* %119, align 8, !dbg !401, !tbaa !402
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !400
  br label %121, !dbg !400

; <label>:121:                                    ; preds = %110, %118
  %122 = phi i32 [ %120, %118 ], [ 0, %110 ], !dbg !400
  %123 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 2, !dbg !403
  store i32 %122, i32* %123, align 4, !dbg !404, !tbaa !405
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !406
  %124 = trunc i64 %115 to i32, !dbg !407
  %125 = icmp sgt i32 %124, 0, !dbg !410
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !406
  br i1 %125, label %126, label %147, !dbg !406

; <label>:126:                                    ; preds = %121
  %127 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 9
  %128 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 7
  br label %129, !dbg !406

; <label>:129:                                    ; preds = %126, %140
  %130 = phi i32 [ %124, %126 ], [ %145, %140 ]
  %131 = phi i8* [ %108, %126 ], [ %141, %140 ]
  %132 = phi i64 [ %115, %126 ], [ %144, %140 ]
  %133 = load i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i8*, i32)** %127, align 8, !dbg !411, !tbaa !412
  %134 = load i8*, i8** %128, align 8, !dbg !413, !tbaa !313
  %135 = tail call i64 %133(%struct._reent* %0, i8* %134, i8* %131, i32 %130) #4, !dbg !414
  %136 = icmp slt i64 %135, 1, !dbg !416
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !418
  br i1 %136, label %137, label %140, !dbg !418

; <label>:137:                                    ; preds = %129
  %138 = load i16, i16* %3, align 8, !dbg !419, !tbaa !271
  %139 = or i16 %138, 64, !dbg !419
  store i16 %139, i16* %3, align 8, !dbg !419, !tbaa !271
  br label %147, !dbg !421

; <label>:140:                                    ; preds = %129
  %141 = getelementptr inbounds i8, i8* %131, i64 %135, !dbg !422
  %142 = shl i64 %132, 32, !dbg !423
  %143 = ashr exact i64 %142, 32, !dbg !423
  %144 = sub nsw i64 %143, %135, !dbg !423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !406
  %145 = trunc i64 %144 to i32, !dbg !407
  %146 = icmp sgt i32 %145, 0, !dbg !410
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !406
  br i1 %146, label %129, label %147, !dbg !406, !llvm.loop !424

; <label>:147:                                    ; preds = %140, %121, %106, %12, %16, %105, %103, %137
  %148 = phi i32 [ -1, %137 ], [ %104, %103 ], [ 0, %105 ], [ 0, %16 ], [ 0, %12 ], [ 0, %106 ], [ 0, %121 ], [ 0, %140 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !426
  ret i32 %148, !dbg !426
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i32 @_fflush_r(%struct._reent*, %struct.__sFILE*) #0 !dbg !427 {
  %3 = alloca i32, align 4
  %4 = icmp eq %struct._reent* %0, null, !dbg !438
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !438
  br i1 %4, label %10, label %5, !dbg !438

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 8, !dbg !438
  %7 = load i32, i32* %6, align 8, !dbg !438, !tbaa !440
  %8 = icmp eq i32 %7, 0, !dbg !438
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !437
  br i1 %8, label %9, label %10, !dbg !437

; <label>:9:                                      ; preds = %5
  tail call void @__sinit(%struct._reent* nonnull %0) #4, !dbg !438
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !438
  br label %10, !dbg !438

; <label>:10:                                     ; preds = %5, %2, %9
  %11 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 3, !dbg !441
  %12 = load i16, i16* %11, align 8, !dbg !441, !tbaa !271
  %13 = icmp eq i16 %12, 0, !dbg !443
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !444
  br i1 %13, label %20, label %14, !dbg !444

; <label>:14:                                     ; preds = %10
  %15 = bitcast i32* %3 to i8*, !dbg !445
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #5, !dbg !445
  %16 = call i32 @pthread_setcancelstate(i32 1, i32* nonnull %3) #4, !dbg !445
  %17 = call i32 @__sflush_r(%struct._reent* %0, %struct.__sFILE* nonnull %1) #6, !dbg !446
  %18 = load i32, i32* %3, align 4, !dbg !448, !tbaa !449
  %19 = call i32 @pthread_setcancelstate(i32 %18, i32* nonnull %3) #4, !dbg !448
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #5, !dbg !450
  br label %20, !dbg !451

; <label>:20:                                     ; preds = %10, %14
  %21 = phi i32 [ %17, %14 ], [ 0, %10 ], !dbg !452
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !452
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !453
  ret i32 %21, !dbg !453
}

; Function Attrs: noredzone
declare dso_local void @__sinit(%struct._reent*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @pthread_setcancelstate(i32, i32*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i32 @fflush(%struct.__sFILE*) local_unnamed_addr #0 !dbg !454 {
  %2 = alloca i32, align 4
  %3 = icmp eq %struct.__sFILE* %0, null, !dbg !460
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !462
  br i1 %3, label %4, label %7, !dbg !462

; <label>:4:                                      ; preds = %1
  %5 = load %struct._reent*, %struct._reent** @_global_impure_ptr, align 8, !dbg !463, !tbaa !464
  %6 = tail call i32 @_fwalk_reent(%struct._reent* %5, i32 (%struct._reent*, %struct.__sFILE*)* nonnull @_fflush_r) #4, !dbg !465
  br label %27, !dbg !466

; <label>:7:                                      ; preds = %1
  %8 = tail call %struct._reent* @__getreent() #4, !dbg !467
  %9 = icmp eq %struct._reent* %8, null, !dbg !471
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !471
  br i1 %9, label %15, label %10, !dbg !471

; <label>:10:                                     ; preds = %7
  %11 = getelementptr inbounds %struct._reent, %struct._reent* %8, i64 0, i32 8, !dbg !471
  %12 = load i32, i32* %11, align 8, !dbg !471, !tbaa !440
  %13 = icmp eq i32 %12, 0, !dbg !471
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !470
  br i1 %13, label %14, label %15, !dbg !470

; <label>:14:                                     ; preds = %10
  tail call void @__sinit(%struct._reent* nonnull %8) #4, !dbg !471
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !471
  br label %15, !dbg !471

; <label>:15:                                     ; preds = %14, %10, %7
  %16 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %0, i64 0, i32 3, !dbg !472
  %17 = load i16, i16* %16, align 8, !dbg !472, !tbaa !271
  %18 = icmp eq i16 %17, 0, !dbg !473
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !474
  br i1 %18, label %25, label %19, !dbg !474

; <label>:19:                                     ; preds = %15
  %20 = bitcast i32* %2 to i8*, !dbg !475
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %20) #5, !dbg !475
  %21 = call i32 @pthread_setcancelstate(i32 1, i32* nonnull %2) #4, !dbg !475
  %22 = call i32 @__sflush_r(%struct._reent* %8, %struct.__sFILE* nonnull %0) #4, !dbg !476
  %23 = load i32, i32* %2, align 4, !dbg !478, !tbaa !449
  %24 = call i32 @pthread_setcancelstate(i32 %23, i32* nonnull %2) #4, !dbg !478
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %20) #5, !dbg !479
  br label %25, !dbg !480

; <label>:25:                                     ; preds = %15, %19
  %26 = phi i32 [ %22, %19 ], [ 0, %15 ], !dbg !481
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !482
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !483
  br label %27, !dbg !484

; <label>:27:                                     ; preds = %25, %4
  %28 = phi i32 [ %6, %4 ], [ %26, %25 ], !dbg !482
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !486
  ret i32 %28, !dbg !486
}

; Function Attrs: noredzone
declare dso_local i32 @_fwalk_reent(%struct._reent*, i32 (%struct._reent*, %struct.__sFILE*)*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nobuiltin noredzone nounwind }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin noredzone }

!llvm.module.flags = !{!25, !26, !27}
!llvm.ident = !{!28}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !21)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fflush.c", directory: "/root/.unikraft/apps/redis/build")
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
!21 = !{!22, !23}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!25 = !{i32 2, !"Dwarf Version", i32 4}
!26 = !{i32 2, !"Debug Info Version", i32 3}
!27 = !{i32 1, !"wchar_size", i32 4}
!28 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!29 = distinct !DISubprogram(name: "__sflush_r", scope: !1, file: !1, line: 103, type: !30, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !251)
!30 = !DISubroutineType(types: !31)
!31 = !{!5, !32, !248}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !34, line: 569, size: 14912, elements: !35)
!34 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!35 = !{!36, !37, !116, !117, !118, !119, !123, !124, !127, !128, !132, !144, !145, !146, !148, !149, !150, !212, !233, !234, !239, !246}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !33, file: !34, line: 571, baseType: !5, size: 32)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !33, file: !34, line: 576, baseType: !38, size: 64, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !34, line: 287, baseType: !40)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !34, line: 181, size: 1408, elements: !41)
!41 = !{!42, !45, !46, !47, !49, !50, !55, !56, !57, !64, !70, !75, !79, !80, !81, !82, !86, !90, !91, !92, !94, !95, !99, !115}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !40, file: !34, line: 182, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !40, file: !34, line: 183, baseType: !5, size: 32, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !40, file: !34, line: 184, baseType: !5, size: 32, offset: 96)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !40, file: !34, line: 185, baseType: !48, size: 16, offset: 128)
!48 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !40, file: !34, line: 186, baseType: !48, size: 16, offset: 144)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !40, file: !34, line: 187, baseType: !51, size: 128, offset: 192)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !34, line: 117, size: 128, elements: !52)
!52 = !{!53, !54}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !51, file: !34, line: 118, baseType: !43, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !51, file: !34, line: 119, baseType: !5, size: 32, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !40, file: !34, line: 188, baseType: !5, size: 32, offset: 320)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !40, file: !34, line: 195, baseType: !22, size: 64, offset: 384)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !40, file: !34, line: 197, baseType: !58, size: 64, offset: 448)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DISubroutineType(types: !60)
!60 = !{!61, !32, !22, !23, !5}
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !62, line: 145, baseType: !63)
!62 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!63 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !40, file: !34, line: 199, baseType: !65, size: 64, offset: 512)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DISubroutineType(types: !67)
!67 = !{!61, !32, !22, !68, !5}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !40, file: !34, line: 202, baseType: !71, size: 64, offset: 576)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DISubroutineType(types: !73)
!73 = !{!74, !32, !22, !74, !5}
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !62, line: 114, baseType: !63)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !40, file: !34, line: 203, baseType: !76, size: 64, offset: 640)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DISubroutineType(types: !78)
!78 = !{!5, !32, !22}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !40, file: !34, line: 206, baseType: !51, size: 128, offset: 704)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !40, file: !34, line: 207, baseType: !43, size: 64, offset: 832)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !40, file: !34, line: 208, baseType: !5, size: 32, offset: 896)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !40, file: !34, line: 211, baseType: !83, size: 24, offset: 928)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 24, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: 3)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !40, file: !34, line: 212, baseType: !87, size: 8, offset: 952)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 8, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 1)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !40, file: !34, line: 215, baseType: !51, size: 128, offset: 960)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !40, file: !34, line: 218, baseType: !5, size: 32, offset: 1088)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !40, file: !34, line: 219, baseType: !93, size: 64, offset: 1152)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !62, line: 44, baseType: !63)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !40, file: !34, line: 222, baseType: !32, size: 64, offset: 1216)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !40, file: !34, line: 226, baseType: !96, size: 32, offset: 1280)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !62, line: 175, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !98, line: 12, baseType: !5)
!98 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !40, file: !34, line: 228, baseType: !100, size: 64, offset: 1312)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !62, line: 171, baseType: !101)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !62, line: 163, size: 64, elements: !102)
!102 = !{!103, !104}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !101, file: !62, line: 165, baseType: !5, size: 32)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !101, file: !62, line: 170, baseType: !105, size: 32, offset: 32)
!105 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !101, file: !62, line: 166, size: 32, elements: !106)
!106 = !{!107, !111}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !105, file: !62, line: 168, baseType: !108, size: 32)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !109, line: 124, baseType: !110)
!109 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!110 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !105, file: !62, line: 169, baseType: !112, size: 32)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 32, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 4)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !40, file: !34, line: 229, baseType: !5, size: 32, offset: 1376)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !33, file: !34, line: 576, baseType: !38, size: 64, offset: 128)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !33, file: !34, line: 576, baseType: !38, size: 64, offset: 192)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !33, file: !34, line: 578, baseType: !5, size: 32, offset: 256)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !33, file: !34, line: 579, baseType: !120, size: 200, offset: 288)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 200, elements: !121)
!121 = !{!122}
!122 = !DISubrange(count: 25)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !33, file: !34, line: 582, baseType: !5, size: 32, offset: 512)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !33, file: !34, line: 583, baseType: !125, size: 64, offset: 576)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !34, line: 40, flags: DIFlagFwdDecl)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !33, file: !34, line: 585, baseType: !5, size: 32, offset: 640)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !33, file: !34, line: 587, baseType: !129, size: 64, offset: 704)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DISubroutineType(types: !131)
!131 = !{null, !32}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !33, file: !34, line: 590, baseType: !133, size: 64, offset: 768)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !34, line: 47, size: 256, elements: !135)
!135 = !{!136, !137, !138, !139, !140, !141}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !134, file: !34, line: 49, baseType: !133, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !134, file: !34, line: 50, baseType: !5, size: 32, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !134, file: !34, line: 50, baseType: !5, size: 32, offset: 96)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !134, file: !34, line: 50, baseType: !5, size: 32, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !134, file: !34, line: 50, baseType: !5, size: 32, offset: 160)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !134, file: !34, line: 51, baseType: !142, size: 32, offset: 192)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 32, elements: !88)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !34, line: 25, baseType: !110)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !33, file: !34, line: 591, baseType: !5, size: 32, offset: 832)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !33, file: !34, line: 592, baseType: !133, size: 64, offset: 896)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !33, file: !34, line: 593, baseType: !147, size: 64, offset: 960)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !33, file: !34, line: 596, baseType: !5, size: 32, offset: 1024)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !33, file: !34, line: 597, baseType: !23, size: 64, offset: 1088)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !33, file: !34, line: 632, baseType: !151, size: 2880, offset: 1152)
!151 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !33, file: !34, line: 599, size: 2880, elements: !152)
!152 = !{!153, !203}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !151, file: !34, line: 622, baseType: !154, size: 1728)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !151, file: !34, line: 601, size: 1728, elements: !155)
!155 = !{!156, !157, !158, !162, !174, !175, !177, !185, !186, !187, !188, !192, !196, !197, !198, !199, !200, !201, !202}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !154, file: !34, line: 603, baseType: !110, size: 32)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !154, file: !34, line: 604, baseType: !23, size: 64, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !154, file: !34, line: 605, baseType: !159, size: 208, offset: 128)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 208, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 26)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !154, file: !34, line: 606, baseType: !163, size: 288, offset: 352)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !34, line: 55, size: 288, elements: !164)
!164 = !{!165, !166, !167, !168, !169, !170, !171, !172, !173}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !163, file: !34, line: 57, baseType: !5, size: 32)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !163, file: !34, line: 58, baseType: !5, size: 32, offset: 32)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !163, file: !34, line: 59, baseType: !5, size: 32, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !163, file: !34, line: 60, baseType: !5, size: 32, offset: 96)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !163, file: !34, line: 61, baseType: !5, size: 32, offset: 128)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !163, file: !34, line: 62, baseType: !5, size: 32, offset: 160)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !163, file: !34, line: 63, baseType: !5, size: 32, offset: 192)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !163, file: !34, line: 64, baseType: !5, size: 32, offset: 224)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !163, file: !34, line: 65, baseType: !5, size: 32, offset: 256)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !154, file: !34, line: 607, baseType: !5, size: 32, offset: 640)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !154, file: !34, line: 608, baseType: !176, size: 64, offset: 704)
!176 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !154, file: !34, line: 609, baseType: !178, size: 112, offset: 768)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !34, line: 319, size: 112, elements: !179)
!179 = !{!180, !183, !184}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !178, file: !34, line: 320, baseType: !181, size: 48)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 48, elements: !84)
!182 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !178, file: !34, line: 321, baseType: !181, size: 48, offset: 48)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !178, file: !34, line: 322, baseType: !182, size: 16, offset: 96)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !154, file: !34, line: 610, baseType: !100, size: 64, offset: 896)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !154, file: !34, line: 611, baseType: !100, size: 64, offset: 960)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !154, file: !34, line: 612, baseType: !100, size: 64, offset: 1024)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !154, file: !34, line: 613, baseType: !189, size: 64, offset: 1088)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 64, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 8)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !154, file: !34, line: 614, baseType: !193, size: 192, offset: 1152)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 192, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 24)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !154, file: !34, line: 615, baseType: !5, size: 32, offset: 1344)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !154, file: !34, line: 616, baseType: !100, size: 64, offset: 1376)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !154, file: !34, line: 617, baseType: !100, size: 64, offset: 1440)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !154, file: !34, line: 618, baseType: !100, size: 64, offset: 1504)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !154, file: !34, line: 619, baseType: !100, size: 64, offset: 1568)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !154, file: !34, line: 620, baseType: !100, size: 64, offset: 1632)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !154, file: !34, line: 621, baseType: !5, size: 32, offset: 1696)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !151, file: !34, line: 631, baseType: !204, size: 2880)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !151, file: !34, line: 626, size: 2880, elements: !205)
!205 = !{!206, !210}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !204, file: !34, line: 629, baseType: !207, size: 1920)
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 1920, elements: !208)
!208 = !{!209}
!209 = !DISubrange(count: 30)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !204, file: !34, line: 630, baseType: !211, size: 960, offset: 1920)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 960, elements: !208)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !33, file: !34, line: 636, baseType: !213, size: 64, offset: 4032)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !34, line: 93, size: 6336, elements: !215)
!215 = !{!216, !217, !218, !225}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !214, file: !34, line: 94, baseType: !213, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !214, file: !34, line: 95, baseType: !5, size: 32, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !214, file: !34, line: 97, baseType: !219, size: 2048, offset: 128)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 2048, elements: !223)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{null}
!223 = !{!224}
!224 = !DISubrange(count: 32)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !214, file: !34, line: 98, baseType: !226, size: 4160, offset: 2176)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !34, line: 74, size: 4160, elements: !227)
!227 = !{!228, !230, !231, !232}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !226, file: !34, line: 75, baseType: !229, size: 2048)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 2048, elements: !223)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !226, file: !34, line: 76, baseType: !229, size: 2048, offset: 2048)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !226, file: !34, line: 78, baseType: !143, size: 32, offset: 4096)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !226, file: !34, line: 81, baseType: !143, size: 32, offset: 4128)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !33, file: !34, line: 637, baseType: !214, size: 6336, offset: 4096)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !33, file: !34, line: 641, baseType: !235, size: 64, offset: 10432)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{null, !5}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !33, file: !34, line: 646, baseType: !240, size: 192, offset: 10496)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !34, line: 291, size: 192, elements: !241)
!241 = !{!242, !244, !245}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !240, file: !34, line: 293, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !240, file: !34, line: 294, baseType: !5, size: 32, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !240, file: !34, line: 295, baseType: !38, size: 64, offset: 128)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !33, file: !34, line: 648, baseType: !247, size: 4224, offset: 10688)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 4224, elements: !84)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !250, line: 66, baseType: !39)
!250 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!251 = !{!252, !253, !254, !255, !256, !257, !258, !263, !264}
!252 = !DILocalVariable(name: "ptr", arg: 1, scope: !29, file: !1, line: 103, type: !32)
!253 = !DILocalVariable(name: "fp", arg: 2, scope: !29, file: !1, line: 103, type: !248)
!254 = !DILocalVariable(name: "p", scope: !29, file: !1, line: 107, type: !43)
!255 = !DILocalVariable(name: "n", scope: !29, file: !1, line: 108, type: !5)
!256 = !DILocalVariable(name: "t", scope: !29, file: !1, line: 109, type: !61)
!257 = !DILocalVariable(name: "flags", scope: !29, file: !1, line: 110, type: !48)
!258 = !DILocalVariable(name: "tmp_errno", scope: !259, file: !1, line: 131, type: !5)
!259 = distinct !DILexicalBlock(scope: !260, file: !1, line: 130, column: 2)
!260 = distinct !DILexicalBlock(scope: !261, file: !1, line: 129, column: 11)
!261 = distinct !DILexicalBlock(scope: !262, file: !1, line: 114, column: 5)
!262 = distinct !DILexicalBlock(scope: !29, file: !1, line: 113, column: 7)
!263 = !DILocalVariable(name: "curoff", scope: !259, file: !1, line: 135, type: !74)
!264 = !DILocalVariable(name: "result", scope: !265, file: !1, line: 158, type: !5)
!265 = distinct !DILexicalBlock(scope: !266, file: !1, line: 157, column: 3)
!266 = distinct !DILexicalBlock(scope: !267, file: !1, line: 156, column: 12)
!267 = distinct !DILexicalBlock(scope: !268, file: !1, line: 147, column: 6)
!268 = distinct !DILexicalBlock(scope: !259, file: !1, line: 144, column: 8)
!269 = !DILocation(line: 103, column: 1, scope: !29)
!270 = !DILocation(line: 112, column: 15, scope: !29)
!271 = !{!272, !277, i64 16}
!272 = !{!"__sFILE", !273, i64 0, !276, i64 8, !276, i64 12, !277, i64 16, !277, i64 18, !278, i64 24, !276, i64 40, !273, i64 48, !273, i64 56, !273, i64 64, !273, i64 72, !273, i64 80, !278, i64 88, !273, i64 104, !276, i64 112, !274, i64 116, !274, i64 119, !278, i64 120, !276, i64 136, !279, i64 144, !273, i64 152, !276, i64 160, !280, i64 164, !276, i64 172}
!273 = !{!"any pointer", !274, i64 0}
!274 = !{!"omnipotent char", !275, i64 0}
!275 = !{!"Simple C/C++ TBAA"}
!276 = !{!"int", !274, i64 0}
!277 = !{!"short", !274, i64 0}
!278 = !{!"__sbuf", !273, i64 0, !276, i64 8}
!279 = !{!"long", !274, i64 0}
!280 = !{!"", !276, i64 0, !274, i64 4}
!281 = !DILocation(line: 110, column: 9, scope: !29)
!282 = !DILocation(line: 113, column: 8, scope: !262)
!283 = !DILocation(line: 113, column: 14, scope: !262)
!284 = !DILocation(line: 113, column: 23, scope: !262)
!285 = !DILocation(line: 113, column: 7, scope: !29)
!286 = !DILocation(line: 129, column: 16, scope: !260)
!287 = !{!272, !276, i64 8}
!288 = !DILocation(line: 129, column: 19, scope: !260)
!289 = !DILocation(line: 129, column: 23, scope: !260)
!290 = !DILocation(line: 129, column: 30, scope: !260)
!291 = !{!272, !276, i64 112}
!292 = !DILocation(line: 129, column: 34, scope: !260)
!293 = !DILocation(line: 129, column: 39, scope: !260)
!294 = !DILocation(line: 129, column: 46, scope: !260)
!295 = !{!272, !273, i64 72}
!296 = !DILocation(line: 129, column: 52, scope: !260)
!297 = !DILocation(line: 129, column: 11, scope: !261)
!298 = !DILocation(line: 141, column: 21, scope: !259)
!299 = !{!300, !276, i64 0}
!300 = !{!"_reent", !276, i64 0, !273, i64 8, !273, i64 16, !273, i64 24, !276, i64 32, !274, i64 36, !276, i64 64, !273, i64 72, !276, i64 80, !273, i64 88, !273, i64 96, !276, i64 104, !273, i64 112, !273, i64 120, !276, i64 128, !273, i64 136, !274, i64 144, !273, i64 504, !301, i64 512, !273, i64 1304, !303, i64 1312, !274, i64 1336}
!301 = !{!"_atexit", !273, i64 0, !276, i64 8, !274, i64 16, !302, i64 272}
!302 = !{!"_on_exit_args", !274, i64 0, !274, i64 256, !276, i64 512, !276, i64 516}
!303 = !{!"_glue", !273, i64 0, !276, i64 8, !273, i64 16}
!304 = !DILocation(line: 131, column: 8, scope: !259)
!305 = !DILocation(line: 142, column: 16, scope: !259)
!306 = !DILocation(line: 144, column: 19, scope: !268)
!307 = !DILocation(line: 144, column: 8, scope: !259)
!308 = !DILocation(line: 145, column: 19, scope: !268)
!309 = !{!272, !279, i64 144}
!310 = !DILocation(line: 135, column: 12, scope: !259)
!311 = !DILocation(line: 145, column: 6, scope: !268)
!312 = !DILocation(line: 155, column: 32, scope: !267)
!313 = !{!272, !273, i64 48}
!314 = !DILocation(line: 155, column: 12, scope: !267)
!315 = !DILocation(line: 156, column: 19, scope: !266)
!316 = !DILocation(line: 156, column: 26, scope: !266)
!317 = !DILocation(line: 156, column: 34, scope: !266)
!318 = !DILocation(line: 156, column: 41, scope: !266)
!319 = !DILocation(line: 156, column: 12, scope: !267)
!320 = !DILocation(line: 158, column: 9, scope: !265)
!321 = !DILocation(line: 159, column: 21, scope: !322)
!322 = distinct !DILexicalBlock(scope: !265, file: !1, line: 159, column: 9)
!323 = !DILocation(line: 159, column: 31, scope: !322)
!324 = !DILocation(line: 159, column: 46, scope: !322)
!325 = !DILocation(line: 159, column: 9, scope: !265)
!326 = !DILocation(line: 162, column: 21, scope: !327)
!327 = distinct !DILexicalBlock(scope: !322, file: !1, line: 160, column: 7)
!328 = !DILocation(line: 163, column: 7, scope: !327)
!329 = !DILocation(line: 165, column: 18, scope: !322)
!330 = !DILocation(line: 0, scope: !265)
!331 = !DILocation(line: 0, scope: !267)
!332 = !DILocation(line: 169, column: 19, scope: !333)
!333 = distinct !DILexicalBlock(scope: !259, file: !1, line: 169, column: 15)
!334 = !DILocation(line: 169, column: 26, scope: !333)
!335 = !DILocation(line: 169, column: 15, scope: !259)
!336 = !DILocation(line: 173, column: 29, scope: !337)
!337 = distinct !DILexicalBlock(scope: !333, file: !1, line: 170, column: 13)
!338 = !DILocation(line: 173, column: 25, scope: !337)
!339 = !DILocation(line: 173, column: 22, scope: !337)
!340 = !DILocation(line: 174, column: 19, scope: !341)
!341 = distinct !DILexicalBlock(scope: !337, file: !1, line: 174, column: 19)
!342 = !{!272, !273, i64 88}
!343 = !DILocation(line: 174, column: 19, scope: !337)
!344 = !DILocation(line: 175, column: 31, scope: !341)
!345 = !DILocation(line: 175, column: 27, scope: !341)
!346 = !DILocation(line: 175, column: 24, scope: !341)
!347 = !DILocation(line: 175, column: 17, scope: !341)
!348 = !DILocation(line: 0, scope: !268)
!349 = !DILocation(line: 183, column: 19, scope: !259)
!350 = !DILocation(line: 183, column: 35, scope: !259)
!351 = !DILocation(line: 183, column: 15, scope: !259)
!352 = !DILocation(line: 184, column: 15, scope: !353)
!353 = distinct !DILexicalBlock(scope: !259, file: !1, line: 184, column: 8)
!354 = !DILocation(line: 184, column: 21, scope: !353)
!355 = !DILocation(line: 184, column: 29, scope: !353)
!356 = !DILocation(line: 184, column: 36, scope: !353)
!357 = !DILocation(line: 185, column: 8, scope: !353)
!358 = !DILocation(line: 185, column: 23, scope: !353)
!359 = !DILocation(line: 185, column: 33, scope: !353)
!360 = !DILocation(line: 185, column: 48, scope: !353)
!361 = !DILocation(line: 184, column: 8, scope: !259)
!362 = !DILocation(line: 192, column: 15, scope: !363)
!363 = distinct !DILexicalBlock(scope: !353, file: !1, line: 186, column: 6)
!364 = !DILocation(line: 193, column: 25, scope: !363)
!365 = !{!272, !273, i64 24}
!366 = !DILocation(line: 193, column: 15, scope: !363)
!367 = !{!272, !273, i64 0}
!368 = !DILocation(line: 194, column: 17, scope: !369)
!369 = distinct !DILexicalBlock(scope: !363, file: !1, line: 194, column: 12)
!370 = !DILocation(line: 194, column: 24, scope: !369)
!371 = !DILocation(line: 194, column: 34, scope: !369)
!372 = !DILocation(line: 194, column: 51, scope: !369)
!373 = !DILocation(line: 194, column: 59, scope: !369)
!374 = !DILocation(line: 194, column: 66, scope: !369)
!375 = !DILocation(line: 194, column: 12, scope: !363)
!376 = !DILocation(line: 195, column: 7, scope: !369)
!377 = !DILocation(line: 195, column: 15, scope: !369)
!378 = !DILocation(line: 195, column: 3, scope: !369)
!379 = !DILocation(line: 196, column: 20, scope: !363)
!380 = !DILocation(line: 197, column: 12, scope: !381)
!381 = distinct !DILexicalBlock(scope: !363, file: !1, line: 197, column: 12)
!382 = !DILocation(line: 197, column: 12, scope: !363)
!383 = !DILocation(line: 198, column: 3, scope: !384)
!384 = distinct !DILexicalBlock(scope: !385, file: !1, line: 198, column: 3)
!385 = distinct !DILexicalBlock(scope: !381, file: !1, line: 198, column: 3)
!386 = !DILocation(line: 198, column: 3, scope: !385)
!387 = !DILocation(line: 202, column: 19, scope: !388)
!388 = distinct !DILexicalBlock(scope: !353, file: !1, line: 201, column: 6)
!389 = !DILocation(line: 203, column: 8, scope: !388)
!390 = !DILocation(line: 205, column: 2, scope: !260)
!391 = !DILocation(line: 208, column: 20, scope: !392)
!392 = distinct !DILexicalBlock(scope: !29, file: !1, line: 208, column: 7)
!393 = !DILocation(line: 107, column: 27, scope: !29)
!394 = !DILocation(line: 208, column: 27, scope: !392)
!395 = !DILocation(line: 208, column: 7, scope: !29)
!396 = !DILocation(line: 213, column: 11, scope: !29)
!397 = !DILocation(line: 213, column: 14, scope: !29)
!398 = !DILocation(line: 220, column: 10, scope: !29)
!399 = !DILocation(line: 221, column: 18, scope: !29)
!400 = !DILocation(line: 221, column: 12, scope: !29)
!401 = !DILocation(line: 221, column: 52, scope: !29)
!402 = !{!272, !276, i64 32}
!403 = !DILocation(line: 221, column: 7, scope: !29)
!404 = !DILocation(line: 221, column: 10, scope: !29)
!405 = !{!272, !276, i64 12}
!406 = !DILocation(line: 223, column: 3, scope: !29)
!407 = !DILocation(line: 0, scope: !408)
!408 = distinct !DILexicalBlock(scope: !29, file: !1, line: 224, column: 5)
!409 = !DILocation(line: 108, column: 37, scope: !29)
!410 = !DILocation(line: 223, column: 12, scope: !29)
!411 = !DILocation(line: 225, column: 15, scope: !408)
!412 = !{!272, !273, i64 64}
!413 = !DILocation(line: 225, column: 32, scope: !408)
!414 = !DILocation(line: 225, column: 11, scope: !408)
!415 = !DILocation(line: 109, column: 36, scope: !29)
!416 = !DILocation(line: 226, column: 13, scope: !417)
!417 = distinct !DILexicalBlock(scope: !408, file: !1, line: 226, column: 11)
!418 = !DILocation(line: 226, column: 11, scope: !408)
!419 = !DILocation(line: 228, column: 22, scope: !420)
!420 = distinct !DILexicalBlock(scope: !417, file: !1, line: 227, column: 2)
!421 = !DILocation(line: 229, column: 11, scope: !420)
!422 = !DILocation(line: 231, column: 9, scope: !408)
!423 = !DILocation(line: 232, column: 9, scope: !408)
!424 = distinct !{!424, !406, !425}
!425 = !DILocation(line: 233, column: 5, scope: !29)
!426 = !DILocation(line: 235, column: 1, scope: !29)
!427 = distinct !DISubprogram(name: "_fflush_r", scope: !1, file: !1, line: 253, type: !30, isLocal: false, isDefinition: true, scopeLine: 256, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !428)
!428 = !{!429, !430, !431, !432, !434}
!429 = !DILocalVariable(name: "ptr", arg: 1, scope: !427, file: !1, line: 253, type: !32)
!430 = !DILocalVariable(name: "fp", arg: 2, scope: !427, file: !1, line: 253, type: !248)
!431 = !DILocalVariable(name: "ret", scope: !427, file: !1, line: 257, type: !5)
!432 = !DILocalVariable(name: "_check_init_ptr", scope: !433, file: !1, line: 275, type: !32)
!433 = distinct !DILexicalBlock(scope: !427, file: !1, line: 275, column: 3)
!434 = !DILocalVariable(name: "__oldfpcancel", scope: !435, file: !1, line: 280, type: !5)
!435 = distinct !DILexicalBlock(scope: !427, file: !1, line: 280, column: 3)
!436 = !DILocation(line: 253, column: 1, scope: !427)
!437 = !DILocation(line: 275, column: 3, scope: !433)
!438 = !DILocation(line: 275, column: 3, scope: !439)
!439 = distinct !DILexicalBlock(scope: !433, file: !1, line: 275, column: 3)
!440 = !{!300, !276, i64 80}
!441 = !DILocation(line: 277, column: 12, scope: !442)
!442 = distinct !DILexicalBlock(scope: !427, file: !1, line: 277, column: 7)
!443 = !DILocation(line: 277, column: 8, scope: !442)
!444 = !DILocation(line: 277, column: 7, scope: !427)
!445 = !DILocation(line: 280, column: 3, scope: !435)
!446 = !DILocation(line: 281, column: 9, scope: !435)
!447 = !DILocation(line: 257, column: 7, scope: !427)
!448 = !DILocation(line: 282, column: 3, scope: !435)
!449 = !{!276, !276, i64 0}
!450 = !DILocation(line: 282, column: 3, scope: !427)
!451 = !DILocation(line: 283, column: 3, scope: !427)
!452 = !DILocation(line: 0, scope: !442)
!453 = !DILocation(line: 284, column: 1, scope: !427)
!454 = distinct !DISubprogram(name: "fflush", scope: !1, file: !1, line: 289, type: !455, isLocal: false, isDefinition: true, scopeLine: 291, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !457)
!455 = !DISubroutineType(types: !456)
!456 = !{!5, !248}
!457 = !{!458}
!458 = !DILocalVariable(name: "fp", arg: 1, scope: !454, file: !1, line: 289, type: !248)
!459 = !DILocation(line: 289, column: 1, scope: !454)
!460 = !DILocation(line: 292, column: 10, scope: !461)
!461 = distinct !DILexicalBlock(scope: !454, file: !1, line: 292, column: 7)
!462 = !DILocation(line: 292, column: 7, scope: !454)
!463 = !DILocation(line: 293, column: 26, scope: !461)
!464 = !{!273, !273, i64 0}
!465 = !DILocation(line: 293, column: 12, scope: !461)
!466 = !DILocation(line: 293, column: 5, scope: !461)
!467 = !DILocation(line: 295, column: 21, scope: !454)
!468 = !DILocation(line: 253, column: 1, scope: !427, inlinedAt: !469)
!469 = distinct !DILocation(line: 295, column: 10, scope: !454)
!470 = !DILocation(line: 275, column: 3, scope: !433, inlinedAt: !469)
!471 = !DILocation(line: 275, column: 3, scope: !439, inlinedAt: !469)
!472 = !DILocation(line: 277, column: 12, scope: !442, inlinedAt: !469)
!473 = !DILocation(line: 277, column: 8, scope: !442, inlinedAt: !469)
!474 = !DILocation(line: 277, column: 7, scope: !427, inlinedAt: !469)
!475 = !DILocation(line: 280, column: 3, scope: !435, inlinedAt: !469)
!476 = !DILocation(line: 281, column: 9, scope: !435, inlinedAt: !469)
!477 = !DILocation(line: 257, column: 7, scope: !427, inlinedAt: !469)
!478 = !DILocation(line: 282, column: 3, scope: !435, inlinedAt: !469)
!479 = !DILocation(line: 282, column: 3, scope: !427, inlinedAt: !469)
!480 = !DILocation(line: 283, column: 3, scope: !427, inlinedAt: !469)
!481 = !DILocation(line: 0, scope: !442, inlinedAt: !469)
!482 = !DILocation(line: 0, scope: !454)
!483 = !DILocation(line: 284, column: 1, scope: !427, inlinedAt: !469)
!484 = !DILocation(line: 295, column: 3, scope: !454)
!485 = !DILocation(line: 0, scope: !461)
!486 = !DILocation(line: 296, column: 1, scope: !454)
