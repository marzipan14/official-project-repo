; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/ungetc.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/ungetc.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._reent = type { i32, %struct.__sFILE*, %struct.__sFILE*, %struct.__sFILE*, i32, [25 x i8], i32, %struct.__locale_t*, i32, void (%struct._reent*)*, %struct._Bigint*, i32, %struct._Bigint*, %struct._Bigint**, i32, i8*, %union.anon.0, %struct._atexit*, %struct._atexit, void (i32)**, %struct._glue, [3 x %struct.__sFILE] }
%struct.__locale_t = type opaque
%struct._Bigint = type { %struct._Bigint*, i32, i32, i32, i32, [1 x i32] }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { [30 x i8*], [30 x i32] }
%struct._atexit = type { %struct._atexit*, i32, [32 x void ()*], %struct._on_exit_args }
%struct._on_exit_args = type { [32 x i8*], [32 x i8*], i32, i32 }
%struct._glue = type { %struct._glue*, i32, %struct.__sFILE* }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i64, i32)*, i32 (%struct._reent*, i8*)*, %struct.__sbuf, i8*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64, %struct._reent*, i32, %struct._mbstate_t, i32 }
%struct.__sbuf = type { i8*, i32 }
%struct._mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @__submore(%struct._reent* nocapture readnone, %struct.__sFILE*) local_unnamed_addr #0 !dbg !34 {
  %3 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 12, i32 0, !dbg !261
  %4 = load i8*, i8** %3, align 8, !dbg !261, !tbaa !263
  %5 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 15, i64 0, !dbg !273
  %6 = icmp eq i8* %4, %5, !dbg !274
  br i1 %6, label %7, label %21, !dbg !275

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @malloc(i64 1024) #4, !dbg !276
  %9 = icmp eq i8* %8, null, !dbg !280
  br i1 %9, label %33, label %10, !dbg !281

; <label>:10:                                     ; preds = %7
  store i8* %8, i8** %3, align 8, !dbg !282, !tbaa !263
  %11 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 12, i32 1, !dbg !283
  store i32 1024, i32* %11, align 8, !dbg !284, !tbaa !285
  %12 = getelementptr inbounds i8, i8* %8, i64 1021, !dbg !286
  %13 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 15, i64 2, !dbg !288
  %14 = load i8, i8* %13, align 1, !dbg !288, !tbaa !291
  %15 = getelementptr inbounds i8, i8* %8, i64 1023, !dbg !292
  store i8 %14, i8* %15, align 1, !dbg !293, !tbaa !291
  %16 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 15, i64 1, !dbg !288
  %17 = load i8, i8* %16, align 1, !dbg !288, !tbaa !291
  %18 = getelementptr inbounds i8, i8* %8, i64 1022, !dbg !292
  store i8 %17, i8* %18, align 1, !dbg !293, !tbaa !291
  %19 = load i8, i8* %4, align 1, !dbg !288, !tbaa !291
  store i8 %19, i8* %12, align 1, !dbg !293, !tbaa !291
  %20 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 0, !dbg !294
  store i8* %12, i8** %20, align 8, !dbg !295, !tbaa !296
  br label %33, !dbg !297

; <label>:21:                                     ; preds = %2
  %22 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 12, i32 1, !dbg !298
  %23 = load i32, i32* %22, align 8, !dbg !298, !tbaa !285
  %24 = shl i32 %23, 1, !dbg !299
  %25 = sext i32 %24 to i64, !dbg !299
  %26 = tail call i8* @realloc(i8* %4, i64 %25) #4, !dbg !299
  %27 = icmp eq i8* %26, null, !dbg !300
  br i1 %27, label %33, label %28, !dbg !302

; <label>:28:                                     ; preds = %21
  %29 = sext i32 %23 to i64, !dbg !303
  %30 = getelementptr inbounds i8, i8* %26, i64 %29, !dbg !303
  %31 = tail call i8* @memcpy(i8* nonnull %30, i8* nonnull %26, i64 %29) #4, !dbg !304
  %32 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 0, !dbg !305
  store i8* %30, i8** %32, align 8, !dbg !306, !tbaa !296
  store i8* %26, i8** %3, align 8, !dbg !307, !tbaa !263
  store i32 %24, i32* %22, align 8, !dbg !308, !tbaa !285
  br label %33, !dbg !309

; <label>:33:                                     ; preds = %21, %7, %28, %10
  %34 = phi i32 [ 0, %10 ], [ 0, %28 ], [ -1, %7 ], [ -1, %21 ], !dbg !310
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !311
  ret i32 %34, !dbg !311
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @realloc(i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone nounwind
define dso_local i32 @_ungetc_r(%struct._reent*, i32, %struct.__sFILE*) local_unnamed_addr #0 !dbg !312 {
  %4 = alloca i32, align 4
  %5 = icmp eq i32 %1, -1, !dbg !324
  br i1 %5, label %138, label %6, !dbg !326

; <label>:6:                                      ; preds = %3
  %7 = icmp eq %struct._reent* %0, null, !dbg !328
  br i1 %7, label %13, label %8, !dbg !328

; <label>:8:                                      ; preds = %6
  %9 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 8, !dbg !328
  %10 = load i32, i32* %9, align 8, !dbg !328, !tbaa !330
  %11 = icmp eq i32 %10, 0, !dbg !328
  br i1 %11, label %12, label %13, !dbg !327

; <label>:12:                                     ; preds = %8
  tail call void @__sinit(%struct._reent* nonnull %0) #4, !dbg !328
  br label %13, !dbg !328

; <label>:13:                                     ; preds = %8, %6, %12
  %14 = bitcast i32* %4 to i8*, !dbg !335
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %14) #5, !dbg !335
  %15 = call i32 @pthread_setcancelstate(i32 1, i32* nonnull %4) #4, !dbg !335
  %16 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 3, !dbg !336
  %17 = load i16, i16* %16, align 8, !dbg !337, !tbaa !338
  %18 = and i16 %17, -33, !dbg !337
  store i16 %18, i16* %16, align 8, !dbg !337, !tbaa !338
  %19 = sext i16 %18 to i32, !dbg !339
  %20 = and i32 %19, 4, !dbg !341
  %21 = icmp eq i32 %20, 0, !dbg !342
  br i1 %21, label %22, label %45, !dbg !343

; <label>:22:                                     ; preds = %13
  %23 = and i32 %19, 16, !dbg !344
  %24 = icmp eq i32 %23, 0, !dbg !347
  br i1 %24, label %25, label %28, !dbg !348

; <label>:25:                                     ; preds = %22
  %26 = load i32, i32* %4, align 4, !dbg !349, !tbaa !351
  %27 = call i32 @pthread_setcancelstate(i32 %26, i32* nonnull %4) #4, !dbg !349
  br label %123, !dbg !352

; <label>:28:                                     ; preds = %22
  %29 = and i32 %19, 8, !dbg !353
  %30 = icmp eq i32 %29, 0, !dbg !353
  br i1 %30, label %42, label %31, !dbg !355

; <label>:31:                                     ; preds = %28
  %32 = call i32 @_fflush_r(%struct._reent* %0, %struct.__sFILE* nonnull %2) #4, !dbg !356
  %33 = icmp eq i32 %32, 0, !dbg !356
  br i1 %33, label %37, label %34, !dbg !359

; <label>:34:                                     ; preds = %31
  %35 = load i32, i32* %4, align 4, !dbg !360, !tbaa !351
  %36 = call i32 @pthread_setcancelstate(i32 %35, i32* nonnull %4) #4, !dbg !360
  br label %123, !dbg !362

; <label>:37:                                     ; preds = %31
  %38 = load i16, i16* %16, align 8, !dbg !363, !tbaa !338
  %39 = and i16 %38, -9, !dbg !363
  store i16 %39, i16* %16, align 8, !dbg !363, !tbaa !338
  %40 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 2, !dbg !364
  store i32 0, i32* %40, align 4, !dbg !365, !tbaa !366
  %41 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 6, !dbg !367
  store i32 0, i32* %41, align 8, !dbg !368, !tbaa !369
  br label %42, !dbg !370

; <label>:42:                                     ; preds = %28, %37
  %43 = phi i16 [ %18, %28 ], [ %39, %37 ], !dbg !371
  %44 = or i16 %43, 4, !dbg !371
  store i16 %44, i16* %16, align 8, !dbg !371, !tbaa !338
  br label %45, !dbg !372

; <label>:45:                                     ; preds = %42, %13
  %46 = trunc i32 %1 to i8, !dbg !373
  %47 = and i32 %1, 255, !dbg !373
  %48 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 12, i32 0, !dbg !374
  %49 = load i8*, i8** %48, align 8, !dbg !374, !tbaa !263
  %50 = icmp eq i8* %49, null, !dbg !374
  br i1 %50, label %100, label %51, !dbg !376

; <label>:51:                                     ; preds = %45
  %52 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 1, !dbg !377
  %53 = load i32, i32* %52, align 8, !dbg !377, !tbaa !380
  %54 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 12, i32 1, !dbg !381
  %55 = load i32, i32* %54, align 8, !dbg !381, !tbaa !285
  %56 = icmp slt i32 %53, %55, !dbg !382
  br i1 %56, label %57, label %60, !dbg !383

; <label>:57:                                     ; preds = %51
  %58 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 0
  %59 = load i8*, i8** %58, align 8, !dbg !384, !tbaa !296
  br label %92, !dbg !383

; <label>:60:                                     ; preds = %51
  %61 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 15, i64 0, !dbg !387
  %62 = icmp eq i8* %49, %61, !dbg !388
  br i1 %62, label %63, label %76, !dbg !389

; <label>:63:                                     ; preds = %60
  %64 = call i8* @malloc(i64 1024) #4, !dbg !390
  %65 = icmp eq i8* %64, null, !dbg !392
  br i1 %65, label %89, label %66, !dbg !393

; <label>:66:                                     ; preds = %63
  store i8* %64, i8** %48, align 8, !dbg !394, !tbaa !263
  store i32 1024, i32* %54, align 8, !dbg !395, !tbaa !285
  %67 = getelementptr inbounds i8, i8* %64, i64 1021, !dbg !396
  %68 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 15, i64 2, !dbg !398
  %69 = load i8, i8* %68, align 1, !dbg !398, !tbaa !291
  %70 = getelementptr inbounds i8, i8* %64, i64 1023, !dbg !399
  store i8 %69, i8* %70, align 1, !dbg !400, !tbaa !291
  %71 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 15, i64 1, !dbg !398
  %72 = load i8, i8* %71, align 1, !dbg !398, !tbaa !291
  %73 = getelementptr inbounds i8, i8* %64, i64 1022, !dbg !399
  store i8 %72, i8* %73, align 1, !dbg !400, !tbaa !291
  %74 = load i8, i8* %49, align 1, !dbg !398, !tbaa !291
  store i8 %74, i8* %67, align 1, !dbg !400, !tbaa !291
  %75 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 0, !dbg !401
  store i8* %67, i8** %75, align 8, !dbg !402, !tbaa !296
  br label %86, !dbg !403

; <label>:76:                                     ; preds = %60
  %77 = shl i32 %55, 1, !dbg !404
  %78 = sext i32 %77 to i64, !dbg !404
  %79 = call i8* @realloc(i8* nonnull %49, i64 %78) #4, !dbg !404
  %80 = icmp eq i8* %79, null, !dbg !405
  br i1 %80, label %89, label %81, !dbg !406

; <label>:81:                                     ; preds = %76
  %82 = sext i32 %55 to i64, !dbg !407
  %83 = getelementptr inbounds i8, i8* %79, i64 %82, !dbg !407
  %84 = call i8* @memcpy(i8* nonnull %83, i8* nonnull %79, i64 %82) #4, !dbg !408
  %85 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 0, !dbg !409
  store i8* %83, i8** %85, align 8, !dbg !410, !tbaa !296
  store i8* %79, i8** %48, align 8, !dbg !411, !tbaa !263
  store i32 %77, i32* %54, align 8, !dbg !412, !tbaa !285
  br label %86, !dbg !413

; <label>:86:                                     ; preds = %66, %81
  %87 = phi i8** [ %75, %66 ], [ %85, %81 ], !dbg !414
  %88 = phi i8* [ %67, %66 ], [ %83, %81 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !415
  br label %92, !dbg !416

; <label>:89:                                     ; preds = %76, %63
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !415
  %90 = load i32, i32* %4, align 4, !dbg !417, !tbaa !351
  %91 = call i32 @pthread_setcancelstate(i32 %90, i32* nonnull %4) #4, !dbg !417
  br label %123, !dbg !419

; <label>:92:                                     ; preds = %57, %86
  %93 = phi i8** [ %58, %57 ], [ %87, %86 ], !dbg !414
  %94 = phi i8* [ %59, %57 ], [ %88, %86 ], !dbg !384
  %95 = getelementptr inbounds i8, i8* %94, i64 -1, !dbg !384
  store i8* %95, i8** %93, align 8, !dbg !384, !tbaa !296
  store i8 %46, i8* %95, align 1, !dbg !420, !tbaa !291
  %96 = load i32, i32* %52, align 8, !dbg !421, !tbaa !380
  %97 = add nsw i32 %96, 1, !dbg !421
  store i32 %97, i32* %52, align 8, !dbg !421, !tbaa !380
  %98 = load i32, i32* %4, align 4, !dbg !422, !tbaa !351
  %99 = call i32 @pthread_setcancelstate(i32 %98, i32* nonnull %4) #4, !dbg !422
  br label %123, !dbg !423

; <label>:100:                                    ; preds = %45
  %101 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 5, i32 0, !dbg !424
  %102 = load i8*, i8** %101, align 8, !dbg !424, !tbaa !426
  %103 = icmp eq i8* %102, null, !dbg !427
  br i1 %103, label %104, label %108, !dbg !428

; <label>:104:                                    ; preds = %100
  %105 = bitcast %struct.__sFILE* %2 to i64*
  %106 = load i64, i64* %105, align 8, !dbg !429, !tbaa !296
  %107 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 0, !dbg !429
  br label %125, !dbg !428

; <label>:108:                                    ; preds = %100
  %109 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 0, !dbg !430
  %110 = load i8*, i8** %109, align 8, !dbg !430, !tbaa !296
  %111 = icmp ugt i8* %110, %102, !dbg !431
  %112 = ptrtoint i8* %110 to i64, !dbg !432
  br i1 %111, label %113, label %125, !dbg !432

; <label>:113:                                    ; preds = %108
  %114 = getelementptr inbounds i8, i8* %110, i64 -1, !dbg !433
  %115 = load i8, i8* %114, align 1, !dbg !433, !tbaa !291
  %116 = icmp eq i8 %115, %46, !dbg !434
  br i1 %116, label %117, label %125, !dbg !435

; <label>:117:                                    ; preds = %113
  store i8* %114, i8** %109, align 8, !dbg !436, !tbaa !296
  %118 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 1, !dbg !438
  %119 = load i32, i32* %118, align 8, !dbg !439, !tbaa !380
  %120 = add nsw i32 %119, 1, !dbg !439
  store i32 %120, i32* %118, align 8, !dbg !439, !tbaa !380
  %121 = load i32, i32* %4, align 4, !dbg !440, !tbaa !351
  %122 = call i32 @pthread_setcancelstate(i32 %121, i32* nonnull %4) #4, !dbg !440
  br label %123, !dbg !441

; <label>:123:                                    ; preds = %25, %34, %89, %92, %117
  %124 = phi i32 [ %47, %117 ], [ %47, %92 ], [ -1, %89 ], [ -1, %34 ], [ -1, %25 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14) #5, !dbg !442
  br label %138

; <label>:125:                                    ; preds = %104, %113, %108
  %126 = phi i8** [ %107, %104 ], [ %109, %113 ], [ %109, %108 ], !dbg !429
  %127 = phi i64 [ %106, %104 ], [ %112, %113 ], [ %112, %108 ], !dbg !429
  %128 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 1, !dbg !443
  %129 = load i32, i32* %128, align 8, !dbg !443, !tbaa !380
  %130 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 14, !dbg !444
  store i32 %129, i32* %130, align 8, !dbg !445, !tbaa !446
  %131 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 13, !dbg !447
  %132 = bitcast i8** %131 to i64*, !dbg !448
  store i64 %127, i64* %132, align 8, !dbg !448, !tbaa !449
  %133 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 15, i64 0, !dbg !450
  store i8* %133, i8** %48, align 8, !dbg !451, !tbaa !263
  %134 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 12, i32 1, !dbg !452
  store i32 3, i32* %134, align 8, !dbg !453, !tbaa !285
  %135 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 15, i64 2, !dbg !454
  store i8 %46, i8* %135, align 2, !dbg !455, !tbaa !291
  store i8* %135, i8** %126, align 8, !dbg !456, !tbaa !296
  store i32 1, i32* %128, align 8, !dbg !457, !tbaa !380
  %136 = load i32, i32* %4, align 4, !dbg !458, !tbaa !351
  %137 = call i32 @pthread_setcancelstate(i32 %136, i32* nonnull %4) #4, !dbg !458
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14) #5, !dbg !442
  br label %138

; <label>:138:                                    ; preds = %125, %123, %3
  %139 = phi i32 [ -1, %3 ], [ %47, %125 ], [ %124, %123 ], !dbg !459
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !460
  ret i32 %139, !dbg !460
}

; Function Attrs: noredzone
declare dso_local void @__sinit(%struct._reent*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @pthread_setcancelstate(i32, i32*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @_fflush_r(%struct._reent*, %struct.__sFILE*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i32 @ungetc(i32, %struct.__sFILE*) local_unnamed_addr #0 !dbg !461 {
  %3 = tail call %struct._reent* @__getreent() #4, !dbg !468
  %4 = tail call i32 @_ungetc_r(%struct._reent* %3, i32 %0, %struct.__sFILE* %1) #6, !dbg !469
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !470
  ret i32 %4, !dbg !470
}

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

!llvm.module.flags = !{!30, !31, !32}
!llvm.ident = !{!33}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !21)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/ungetc.c", directory: "/root/.unikraft/apps/redis/build")
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
!21 = !{!22, !24, !29, !23}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !25, line: 40, baseType: !26)
!25 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !27, line: 129, baseType: !28)
!27 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!28 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!30 = !{i32 2, !"Dwarf Version", i32 4}
!31 = !{i32 2, !"Debug Info Version", i32 3}
!32 = !{i32 1, !"wchar_size", i32 4}
!33 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!34 = distinct !DISubprogram(name: "__submore", scope: !1, file: !1, line: 80, type: !35, isLocal: false, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !255)
!35 = !DISubroutineType(types: !36)
!36 = !{!5, !37, !252}
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !39, line: 569, size: 14912, elements: !40)
!39 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!40 = !{!41, !42, !120, !121, !122, !123, !127, !128, !131, !132, !136, !148, !149, !150, !152, !153, !154, !216, !237, !238, !243, !250}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !38, file: !39, line: 571, baseType: !5, size: 32)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !38, file: !39, line: 576, baseType: !43, size: 64, offset: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !39, line: 287, baseType: !45)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !39, line: 181, size: 1408, elements: !46)
!46 = !{!47, !48, !49, !50, !52, !53, !58, !59, !60, !68, !74, !79, !83, !84, !85, !86, !90, !94, !95, !96, !98, !99, !103, !119}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !45, file: !39, line: 182, baseType: !22, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !45, file: !39, line: 183, baseType: !5, size: 32, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !45, file: !39, line: 184, baseType: !5, size: 32, offset: 96)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !45, file: !39, line: 185, baseType: !51, size: 16, offset: 128)
!51 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !45, file: !39, line: 186, baseType: !51, size: 16, offset: 144)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !45, file: !39, line: 187, baseType: !54, size: 128, offset: 192)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !39, line: 117, size: 128, elements: !55)
!55 = !{!56, !57}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !54, file: !39, line: 118, baseType: !22, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !54, file: !39, line: 119, baseType: !5, size: 32, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !45, file: !39, line: 188, baseType: !5, size: 32, offset: 320)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !45, file: !39, line: 195, baseType: !29, size: 64, offset: 384)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !45, file: !39, line: 197, baseType: !61, size: 64, offset: 448)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DISubroutineType(types: !63)
!63 = !{!64, !37, !29, !66, !5}
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !27, line: 145, baseType: !65)
!65 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !45, file: !39, line: 199, baseType: !69, size: 64, offset: 512)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DISubroutineType(types: !71)
!71 = !{!64, !37, !29, !72, !5}
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !45, file: !39, line: 202, baseType: !75, size: 64, offset: 576)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DISubroutineType(types: !77)
!77 = !{!78, !37, !29, !78, !5}
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !27, line: 114, baseType: !65)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !45, file: !39, line: 203, baseType: !80, size: 64, offset: 640)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DISubroutineType(types: !82)
!82 = !{!5, !37, !29}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !45, file: !39, line: 206, baseType: !54, size: 128, offset: 704)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !45, file: !39, line: 207, baseType: !22, size: 64, offset: 832)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !45, file: !39, line: 208, baseType: !5, size: 32, offset: 896)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !45, file: !39, line: 211, baseType: !87, size: 24, offset: 928)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 24, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 3)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !45, file: !39, line: 212, baseType: !91, size: 8, offset: 952)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: 1)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !45, file: !39, line: 215, baseType: !54, size: 128, offset: 960)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !45, file: !39, line: 218, baseType: !5, size: 32, offset: 1088)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !45, file: !39, line: 219, baseType: !97, size: 64, offset: 1152)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !27, line: 44, baseType: !65)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !45, file: !39, line: 222, baseType: !37, size: 64, offset: 1216)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !45, file: !39, line: 226, baseType: !100, size: 32, offset: 1280)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !27, line: 175, baseType: !101)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !102, line: 12, baseType: !5)
!102 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !45, file: !39, line: 228, baseType: !104, size: 64, offset: 1312)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !27, line: 171, baseType: !105)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !27, line: 163, size: 64, elements: !106)
!106 = !{!107, !108}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !105, file: !27, line: 165, baseType: !5, size: 32)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !105, file: !27, line: 170, baseType: !109, size: 32, offset: 32)
!109 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !105, file: !27, line: 166, size: 32, elements: !110)
!110 = !{!111, !115}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !109, file: !27, line: 168, baseType: !112, size: 32)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !113, line: 124, baseType: !114)
!113 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!114 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !109, file: !27, line: 169, baseType: !116, size: 32)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 32, elements: !117)
!117 = !{!118}
!118 = !DISubrange(count: 4)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !45, file: !39, line: 229, baseType: !5, size: 32, offset: 1376)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !38, file: !39, line: 576, baseType: !43, size: 64, offset: 128)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !38, file: !39, line: 576, baseType: !43, size: 64, offset: 192)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !38, file: !39, line: 578, baseType: !5, size: 32, offset: 256)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !38, file: !39, line: 579, baseType: !124, size: 200, offset: 288)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 200, elements: !125)
!125 = !{!126}
!126 = !DISubrange(count: 25)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !38, file: !39, line: 582, baseType: !5, size: 32, offset: 512)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !38, file: !39, line: 583, baseType: !129, size: 64, offset: 576)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !39, line: 40, flags: DIFlagFwdDecl)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !38, file: !39, line: 585, baseType: !5, size: 32, offset: 640)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !38, file: !39, line: 587, baseType: !133, size: 64, offset: 704)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DISubroutineType(types: !135)
!135 = !{null, !37}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !38, file: !39, line: 590, baseType: !137, size: 64, offset: 768)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !39, line: 47, size: 256, elements: !139)
!139 = !{!140, !141, !142, !143, !144, !145}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !138, file: !39, line: 49, baseType: !137, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !138, file: !39, line: 50, baseType: !5, size: 32, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !138, file: !39, line: 50, baseType: !5, size: 32, offset: 96)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !138, file: !39, line: 50, baseType: !5, size: 32, offset: 128)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !138, file: !39, line: 50, baseType: !5, size: 32, offset: 160)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !138, file: !39, line: 51, baseType: !146, size: 32, offset: 192)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 32, elements: !92)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !39, line: 25, baseType: !114)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !38, file: !39, line: 591, baseType: !5, size: 32, offset: 832)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !38, file: !39, line: 592, baseType: !137, size: 64, offset: 896)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !38, file: !39, line: 593, baseType: !151, size: 64, offset: 960)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !38, file: !39, line: 596, baseType: !5, size: 32, offset: 1024)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !38, file: !39, line: 597, baseType: !66, size: 64, offset: 1088)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !38, file: !39, line: 632, baseType: !155, size: 2880, offset: 1152)
!155 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !38, file: !39, line: 599, size: 2880, elements: !156)
!156 = !{!157, !207}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !155, file: !39, line: 622, baseType: !158, size: 1728)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !155, file: !39, line: 601, size: 1728, elements: !159)
!159 = !{!160, !161, !162, !166, !178, !179, !181, !189, !190, !191, !192, !196, !200, !201, !202, !203, !204, !205, !206}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !158, file: !39, line: 603, baseType: !114, size: 32)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !158, file: !39, line: 604, baseType: !66, size: 64, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !158, file: !39, line: 605, baseType: !163, size: 208, offset: 128)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 208, elements: !164)
!164 = !{!165}
!165 = !DISubrange(count: 26)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !158, file: !39, line: 606, baseType: !167, size: 288, offset: 352)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !39, line: 55, size: 288, elements: !168)
!168 = !{!169, !170, !171, !172, !173, !174, !175, !176, !177}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !167, file: !39, line: 57, baseType: !5, size: 32)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !167, file: !39, line: 58, baseType: !5, size: 32, offset: 32)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !167, file: !39, line: 59, baseType: !5, size: 32, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !167, file: !39, line: 60, baseType: !5, size: 32, offset: 96)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !167, file: !39, line: 61, baseType: !5, size: 32, offset: 128)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !167, file: !39, line: 62, baseType: !5, size: 32, offset: 160)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !167, file: !39, line: 63, baseType: !5, size: 32, offset: 192)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !167, file: !39, line: 64, baseType: !5, size: 32, offset: 224)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !167, file: !39, line: 65, baseType: !5, size: 32, offset: 256)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !158, file: !39, line: 607, baseType: !5, size: 32, offset: 640)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !158, file: !39, line: 608, baseType: !180, size: 64, offset: 704)
!180 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !158, file: !39, line: 609, baseType: !182, size: 112, offset: 768)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !39, line: 319, size: 112, elements: !183)
!183 = !{!184, !187, !188}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !182, file: !39, line: 320, baseType: !185, size: 48)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 48, elements: !88)
!186 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !182, file: !39, line: 321, baseType: !185, size: 48, offset: 48)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !182, file: !39, line: 322, baseType: !186, size: 16, offset: 96)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !158, file: !39, line: 610, baseType: !104, size: 64, offset: 896)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !158, file: !39, line: 611, baseType: !104, size: 64, offset: 960)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !158, file: !39, line: 612, baseType: !104, size: 64, offset: 1024)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !158, file: !39, line: 613, baseType: !193, size: 64, offset: 1088)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 64, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 8)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !158, file: !39, line: 614, baseType: !197, size: 192, offset: 1152)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 192, elements: !198)
!198 = !{!199}
!199 = !DISubrange(count: 24)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !158, file: !39, line: 615, baseType: !5, size: 32, offset: 1344)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !158, file: !39, line: 616, baseType: !104, size: 64, offset: 1376)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !158, file: !39, line: 617, baseType: !104, size: 64, offset: 1440)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !158, file: !39, line: 618, baseType: !104, size: 64, offset: 1504)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !158, file: !39, line: 619, baseType: !104, size: 64, offset: 1568)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !158, file: !39, line: 620, baseType: !104, size: 64, offset: 1632)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !158, file: !39, line: 621, baseType: !5, size: 32, offset: 1696)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !155, file: !39, line: 631, baseType: !208, size: 2880)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !155, file: !39, line: 626, size: 2880, elements: !209)
!209 = !{!210, !214}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !208, file: !39, line: 629, baseType: !211, size: 1920)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 1920, elements: !212)
!212 = !{!213}
!213 = !DISubrange(count: 30)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !208, file: !39, line: 630, baseType: !215, size: 960, offset: 1920)
!215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 960, elements: !212)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !38, file: !39, line: 636, baseType: !217, size: 64, offset: 4032)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !39, line: 93, size: 6336, elements: !219)
!219 = !{!220, !221, !222, !229}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !218, file: !39, line: 94, baseType: !217, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !218, file: !39, line: 95, baseType: !5, size: 32, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !218, file: !39, line: 97, baseType: !223, size: 2048, offset: 128)
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 2048, elements: !227)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DISubroutineType(types: !226)
!226 = !{null}
!227 = !{!228}
!228 = !DISubrange(count: 32)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !218, file: !39, line: 98, baseType: !230, size: 4160, offset: 2176)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !39, line: 74, size: 4160, elements: !231)
!231 = !{!232, !234, !235, !236}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !230, file: !39, line: 75, baseType: !233, size: 2048)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 2048, elements: !227)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !230, file: !39, line: 76, baseType: !233, size: 2048, offset: 2048)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !230, file: !39, line: 78, baseType: !147, size: 32, offset: 4096)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !230, file: !39, line: 81, baseType: !147, size: 32, offset: 4128)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !38, file: !39, line: 637, baseType: !218, size: 6336, offset: 4096)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !38, file: !39, line: 641, baseType: !239, size: 64, offset: 10432)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DISubroutineType(types: !242)
!242 = !{null, !5}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !38, file: !39, line: 646, baseType: !244, size: 192, offset: 10496)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !39, line: 291, size: 192, elements: !245)
!245 = !{!246, !248, !249}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !244, file: !39, line: 293, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !244, file: !39, line: 294, baseType: !5, size: 32, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !244, file: !39, line: 295, baseType: !43, size: 64, offset: 128)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !38, file: !39, line: 648, baseType: !251, size: 4224, offset: 10688)
!251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 4224, elements: !88)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !254, line: 66, baseType: !44)
!254 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!255 = !{!256, !257, !258, !259}
!256 = !DILocalVariable(name: "rptr", arg: 1, scope: !34, file: !1, line: 80, type: !37)
!257 = !DILocalVariable(name: "fp", arg: 2, scope: !34, file: !1, line: 80, type: !252)
!258 = !DILocalVariable(name: "i", scope: !34, file: !1, line: 84, type: !5)
!259 = !DILocalVariable(name: "p", scope: !34, file: !1, line: 85, type: !22)
!260 = !DILocation(line: 80, column: 1, scope: !34)
!261 = !DILocation(line: 87, column: 15, scope: !262)
!262 = distinct !DILexicalBlock(scope: !34, file: !1, line: 87, column: 7)
!263 = !{!264, !265, i64 88}
!264 = !{!"__sFILE", !265, i64 0, !268, i64 8, !268, i64 12, !269, i64 16, !269, i64 18, !270, i64 24, !268, i64 40, !265, i64 48, !265, i64 56, !265, i64 64, !265, i64 72, !265, i64 80, !270, i64 88, !265, i64 104, !268, i64 112, !266, i64 116, !266, i64 119, !270, i64 120, !268, i64 136, !271, i64 144, !265, i64 152, !268, i64 160, !272, i64 164, !268, i64 172}
!265 = !{!"any pointer", !266, i64 0}
!266 = !{!"omnipotent char", !267, i64 0}
!267 = !{!"Simple C/C++ TBAA"}
!268 = !{!"int", !266, i64 0}
!269 = !{!"short", !266, i64 0}
!270 = !{!"__sbuf", !265, i64 0, !268, i64 8}
!271 = !{!"long", !266, i64 0}
!272 = !{!"", !268, i64 0, !266, i64 4}
!273 = !DILocation(line: 87, column: 24, scope: !262)
!274 = !DILocation(line: 87, column: 21, scope: !262)
!275 = !DILocation(line: 87, column: 7, scope: !34)
!276 = !DILocation(line: 92, column: 34, scope: !277)
!277 = distinct !DILexicalBlock(scope: !278, file: !1, line: 92, column: 11)
!278 = distinct !DILexicalBlock(scope: !262, file: !1, line: 88, column: 5)
!279 = !DILocation(line: 85, column: 27, scope: !34)
!280 = !DILocation(line: 92, column: 69, scope: !277)
!281 = !DILocation(line: 92, column: 11, scope: !278)
!282 = !DILocation(line: 94, column: 21, scope: !278)
!283 = !DILocation(line: 95, column: 15, scope: !278)
!284 = !DILocation(line: 95, column: 21, scope: !278)
!285 = !{!264, !268, i64 96}
!286 = !DILocation(line: 96, column: 9, scope: !278)
!287 = !DILocation(line: 84, column: 16, scope: !34)
!288 = !DILocation(line: 98, column: 9, scope: !289)
!289 = distinct !DILexicalBlock(scope: !290, file: !1, line: 97, column: 7)
!290 = distinct !DILexicalBlock(scope: !278, file: !1, line: 97, column: 7)
!291 = !{!266, !266, i64 0}
!292 = !DILocation(line: 98, column: 2, scope: !289)
!293 = !DILocation(line: 98, column: 7, scope: !289)
!294 = !DILocation(line: 99, column: 11, scope: !278)
!295 = !DILocation(line: 99, column: 14, scope: !278)
!296 = !{!264, !265, i64 0}
!297 = !DILocation(line: 100, column: 7, scope: !278)
!298 = !DILocation(line: 102, column: 15, scope: !34)
!299 = !DILocation(line: 103, column: 25, scope: !34)
!300 = !DILocation(line: 104, column: 9, scope: !301)
!301 = distinct !DILexicalBlock(scope: !34, file: !1, line: 104, column: 7)
!302 = !DILocation(line: 104, column: 7, scope: !34)
!303 = !DILocation(line: 106, column: 32, scope: !34)
!304 = !DILocation(line: 106, column: 14, scope: !34)
!305 = !DILocation(line: 107, column: 7, scope: !34)
!306 = !DILocation(line: 107, column: 10, scope: !34)
!307 = !DILocation(line: 108, column: 17, scope: !34)
!308 = !DILocation(line: 109, column: 17, scope: !34)
!309 = !DILocation(line: 110, column: 3, scope: !34)
!310 = !DILocation(line: 0, scope: !34)
!311 = !DILocation(line: 111, column: 1, scope: !34)
!312 = distinct !DISubprogram(name: "_ungetc_r", scope: !1, file: !1, line: 114, type: !313, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !315)
!313 = !DISubroutineType(types: !314)
!314 = !{!5, !37, !5, !252}
!315 = !{!316, !317, !318, !319, !321}
!316 = !DILocalVariable(name: "rptr", arg: 1, scope: !312, file: !1, line: 114, type: !37)
!317 = !DILocalVariable(name: "c", arg: 2, scope: !312, file: !1, line: 114, type: !5)
!318 = !DILocalVariable(name: "fp", arg: 3, scope: !312, file: !1, line: 114, type: !252)
!319 = !DILocalVariable(name: "_check_init_ptr", scope: !320, file: !1, line: 126, type: !37)
!320 = distinct !DILexicalBlock(scope: !312, file: !1, line: 126, column: 3)
!321 = !DILocalVariable(name: "__oldfpcancel", scope: !322, file: !1, line: 128, type: !5)
!322 = distinct !DILexicalBlock(scope: !312, file: !1, line: 128, column: 3)
!323 = !DILocation(line: 114, column: 1, scope: !312)
!324 = !DILocation(line: 119, column: 9, scope: !325)
!325 = distinct !DILexicalBlock(scope: !312, file: !1, line: 119, column: 7)
!326 = !DILocation(line: 119, column: 7, scope: !312)
!327 = !DILocation(line: 126, column: 3, scope: !320)
!328 = !DILocation(line: 126, column: 3, scope: !329)
!329 = distinct !DILexicalBlock(scope: !320, file: !1, line: 126, column: 3)
!330 = !{!331, !268, i64 80}
!331 = !{!"_reent", !268, i64 0, !265, i64 8, !265, i64 16, !265, i64 24, !268, i64 32, !266, i64 36, !268, i64 64, !265, i64 72, !268, i64 80, !265, i64 88, !265, i64 96, !268, i64 104, !265, i64 112, !265, i64 120, !268, i64 128, !265, i64 136, !266, i64 144, !265, i64 504, !332, i64 512, !265, i64 1304, !334, i64 1312, !266, i64 1336}
!332 = !{!"_atexit", !265, i64 0, !268, i64 8, !266, i64 16, !333, i64 272}
!333 = !{!"_on_exit_args", !266, i64 0, !266, i64 256, !268, i64 512, !268, i64 516}
!334 = !{!"_glue", !265, i64 0, !268, i64 8, !265, i64 16}
!335 = !DILocation(line: 128, column: 3, scope: !322)
!336 = !DILocation(line: 133, column: 7, scope: !322)
!337 = !DILocation(line: 133, column: 14, scope: !322)
!338 = !{!264, !269, i64 16}
!339 = !DILocation(line: 135, column: 8, scope: !340)
!340 = distinct !DILexicalBlock(scope: !322, file: !1, line: 135, column: 7)
!341 = !DILocation(line: 135, column: 19, scope: !340)
!342 = !DILocation(line: 135, column: 28, scope: !340)
!343 = !DILocation(line: 135, column: 7, scope: !322)
!344 = !DILocation(line: 141, column: 23, scope: !345)
!345 = distinct !DILexicalBlock(scope: !346, file: !1, line: 141, column: 11)
!346 = distinct !DILexicalBlock(scope: !340, file: !1, line: 136, column: 5)
!347 = !DILocation(line: 141, column: 32, scope: !345)
!348 = !DILocation(line: 141, column: 11, scope: !346)
!349 = !DILocation(line: 143, column: 11, scope: !350)
!350 = distinct !DILexicalBlock(scope: !345, file: !1, line: 142, column: 9)
!351 = !{!268, !268, i64 0}
!352 = !DILocation(line: 144, column: 11, scope: !350)
!353 = !DILocation(line: 146, column: 22, scope: !354)
!354 = distinct !DILexicalBlock(scope: !346, file: !1, line: 146, column: 11)
!355 = !DILocation(line: 146, column: 11, scope: !346)
!356 = !DILocation(line: 148, column: 8, scope: !357)
!357 = distinct !DILexicalBlock(scope: !358, file: !1, line: 148, column: 8)
!358 = distinct !DILexicalBlock(scope: !354, file: !1, line: 147, column: 2)
!359 = !DILocation(line: 148, column: 8, scope: !358)
!360 = !DILocation(line: 150, column: 15, scope: !361)
!361 = distinct !DILexicalBlock(scope: !357, file: !1, line: 149, column: 13)
!362 = !DILocation(line: 151, column: 15, scope: !361)
!363 = !DILocation(line: 153, column: 15, scope: !358)
!364 = !DILocation(line: 154, column: 8, scope: !358)
!365 = !DILocation(line: 154, column: 11, scope: !358)
!366 = !{!264, !268, i64 12}
!367 = !DILocation(line: 155, column: 8, scope: !358)
!368 = !DILocation(line: 155, column: 17, scope: !358)
!369 = !{!264, !268, i64 40}
!370 = !DILocation(line: 156, column: 2, scope: !358)
!371 = !DILocation(line: 157, column: 18, scope: !346)
!372 = !DILocation(line: 158, column: 5, scope: !346)
!373 = !DILocation(line: 159, column: 7, scope: !322)
!374 = !DILocation(line: 166, column: 7, scope: !375)
!375 = distinct !DILexicalBlock(scope: !322, file: !1, line: 166, column: 7)
!376 = !DILocation(line: 166, column: 7, scope: !322)
!377 = !DILocation(line: 168, column: 15, scope: !378)
!378 = distinct !DILexicalBlock(scope: !379, file: !1, line: 168, column: 11)
!379 = distinct !DILexicalBlock(scope: !375, file: !1, line: 167, column: 5)
!380 = !{!264, !268, i64 8}
!381 = !DILocation(line: 168, column: 29, scope: !378)
!382 = !DILocation(line: 168, column: 18, scope: !378)
!383 = !DILocation(line: 168, column: 35, scope: !378)
!384 = !DILocation(line: 173, column: 8, scope: !379)
!385 = !DILocation(line: 80, column: 1, scope: !34, inlinedAt: !386)
!386 = distinct !DILocation(line: 168, column: 38, scope: !378)
!387 = !DILocation(line: 87, column: 24, scope: !262, inlinedAt: !386)
!388 = !DILocation(line: 87, column: 21, scope: !262, inlinedAt: !386)
!389 = !DILocation(line: 87, column: 7, scope: !34, inlinedAt: !386)
!390 = !DILocation(line: 92, column: 34, scope: !277, inlinedAt: !386)
!391 = !DILocation(line: 85, column: 27, scope: !34, inlinedAt: !386)
!392 = !DILocation(line: 92, column: 69, scope: !277, inlinedAt: !386)
!393 = !DILocation(line: 92, column: 11, scope: !278, inlinedAt: !386)
!394 = !DILocation(line: 94, column: 21, scope: !278, inlinedAt: !386)
!395 = !DILocation(line: 95, column: 21, scope: !278, inlinedAt: !386)
!396 = !DILocation(line: 96, column: 9, scope: !278, inlinedAt: !386)
!397 = !DILocation(line: 84, column: 16, scope: !34, inlinedAt: !386)
!398 = !DILocation(line: 98, column: 9, scope: !289, inlinedAt: !386)
!399 = !DILocation(line: 98, column: 2, scope: !289, inlinedAt: !386)
!400 = !DILocation(line: 98, column: 7, scope: !289, inlinedAt: !386)
!401 = !DILocation(line: 99, column: 11, scope: !278, inlinedAt: !386)
!402 = !DILocation(line: 99, column: 14, scope: !278, inlinedAt: !386)
!403 = !DILocation(line: 100, column: 7, scope: !278, inlinedAt: !386)
!404 = !DILocation(line: 103, column: 25, scope: !34, inlinedAt: !386)
!405 = !DILocation(line: 104, column: 9, scope: !301, inlinedAt: !386)
!406 = !DILocation(line: 104, column: 7, scope: !34, inlinedAt: !386)
!407 = !DILocation(line: 106, column: 32, scope: !34, inlinedAt: !386)
!408 = !DILocation(line: 106, column: 14, scope: !34, inlinedAt: !386)
!409 = !DILocation(line: 107, column: 7, scope: !34, inlinedAt: !386)
!410 = !DILocation(line: 107, column: 10, scope: !34, inlinedAt: !386)
!411 = !DILocation(line: 108, column: 17, scope: !34, inlinedAt: !386)
!412 = !DILocation(line: 109, column: 17, scope: !34, inlinedAt: !386)
!413 = !DILocation(line: 110, column: 3, scope: !34, inlinedAt: !386)
!414 = !DILocation(line: 173, column: 14, scope: !379)
!415 = !DILocation(line: 111, column: 1, scope: !34, inlinedAt: !386)
!416 = !DILocation(line: 168, column: 11, scope: !379)
!417 = !DILocation(line: 170, column: 11, scope: !418)
!418 = distinct !DILexicalBlock(scope: !378, file: !1, line: 169, column: 9)
!419 = !DILocation(line: 171, column: 11, scope: !418)
!420 = !DILocation(line: 173, column: 17, scope: !379)
!421 = !DILocation(line: 174, column: 13, scope: !379)
!422 = !DILocation(line: 175, column: 7, scope: !379)
!423 = !DILocation(line: 176, column: 7, scope: !379)
!424 = !DILocation(line: 185, column: 15, scope: !425)
!425 = distinct !DILexicalBlock(scope: !322, file: !1, line: 185, column: 7)
!426 = !{!264, !265, i64 24}
!427 = !DILocation(line: 185, column: 21, scope: !425)
!428 = !DILocation(line: 185, column: 29, scope: !425)
!429 = !DILocation(line: 199, column: 17, scope: !322)
!430 = !DILocation(line: 185, column: 36, scope: !425)
!431 = !DILocation(line: 185, column: 39, scope: !425)
!432 = !DILocation(line: 185, column: 55, scope: !425)
!433 = !DILocation(line: 185, column: 58, scope: !425)
!434 = !DILocation(line: 185, column: 69, scope: !425)
!435 = !DILocation(line: 185, column: 7, scope: !322)
!436 = !DILocation(line: 187, column: 13, scope: !437)
!437 = distinct !DILexicalBlock(scope: !425, file: !1, line: 186, column: 5)
!438 = !DILocation(line: 188, column: 11, scope: !437)
!439 = !DILocation(line: 188, column: 13, scope: !437)
!440 = !DILocation(line: 189, column: 7, scope: !437)
!441 = !DILocation(line: 190, column: 7, scope: !437)
!442 = !DILocation(line: 205, column: 3, scope: !312)
!443 = !DILocation(line: 198, column: 17, scope: !322)
!444 = !DILocation(line: 198, column: 7, scope: !322)
!445 = !DILocation(line: 198, column: 11, scope: !322)
!446 = !{!264, !268, i64 112}
!447 = !DILocation(line: 199, column: 7, scope: !322)
!448 = !DILocation(line: 199, column: 11, scope: !322)
!449 = !{!264, !265, i64 104}
!450 = !DILocation(line: 200, column: 19, scope: !322)
!451 = !DILocation(line: 200, column: 17, scope: !322)
!452 = !DILocation(line: 201, column: 11, scope: !322)
!453 = !DILocation(line: 201, column: 17, scope: !322)
!454 = !DILocation(line: 202, column: 3, scope: !322)
!455 = !DILocation(line: 202, column: 37, scope: !322)
!456 = !DILocation(line: 203, column: 10, scope: !322)
!457 = !DILocation(line: 204, column: 10, scope: !322)
!458 = !DILocation(line: 205, column: 3, scope: !322)
!459 = !DILocation(line: 0, scope: !350)
!460 = !DILocation(line: 207, column: 1, scope: !312)
!461 = distinct !DISubprogram(name: "ungetc", scope: !1, file: !1, line: 211, type: !462, isLocal: false, isDefinition: true, scopeLine: 214, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !464)
!462 = !DISubroutineType(types: !463)
!463 = !{!5, !5, !252}
!464 = !{!465, !466}
!465 = !DILocalVariable(name: "c", arg: 1, scope: !461, file: !1, line: 211, type: !5)
!466 = !DILocalVariable(name: "fp", arg: 2, scope: !461, file: !1, line: 211, type: !252)
!467 = !DILocation(line: 211, column: 1, scope: !461)
!468 = !DILocation(line: 215, column: 21, scope: !461)
!469 = !DILocation(line: 215, column: 10, scope: !461)
!470 = !DILocation(line: 215, column: 3, scope: !461)
