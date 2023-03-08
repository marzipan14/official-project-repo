; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/vfwscanf.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/vfwscanf.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@__svfiwscanf_r.basefix = internal unnamed_addr constant [17 x i16] [i16 10, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16], align 16, !dbg !0
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @vfiwscanf(%struct.__sFILE* noalias, i32* noalias, %struct.__va_list_tag*) local_unnamed_addr #0 !dbg !333 {
  %4 = tail call %struct._reent* @__getreent() #4, !dbg !346
  %5 = icmp eq %struct._reent* %4, null, !dbg !349
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !349
  br i1 %5, label %11, label %6, !dbg !349

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct._reent, %struct._reent* %4, i64 0, i32 8, !dbg !349
  %8 = load i32, i32* %7, align 8, !dbg !349, !tbaa !351
  %9 = icmp eq i32 %8, 0, !dbg !349
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !348
  br i1 %9, label %10, label %11, !dbg !348

; <label>:10:                                     ; preds = %6
  tail call void @__sinit(%struct._reent* nonnull %4) #4, !dbg !349
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !349
  br label %11, !dbg !349

; <label>:11:                                     ; preds = %6, %3, %10
  %12 = tail call i32 @__svfiwscanf_r(%struct._reent* %4, %struct.__sFILE* %0, i32* %1, %struct.__va_list_tag* %2) #5, !dbg !360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !361
  ret i32 %12, !dbg !361
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @__sinit(%struct._reent*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local i32 @__svfiwscanf_r(%struct._reent*, %struct.__sFILE*, i32*, %struct.__va_list_tag*) local_unnamed_addr #0 !dbg !2 {
  %5 = alloca %struct._mbstate_t, align 4
  %6 = alloca [40 x i32], align 16
  %7 = alloca [1 x i8], align 1
  %8 = alloca i32, align 4
  %9 = bitcast %struct._mbstate_t* %5 to i8*, !dbg !366
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #6, !dbg !366
  %10 = bitcast [40 x i32]* %6 to i8*, !dbg !368
  call void @llvm.lifetime.start.p0i8(i64 160, i8* nonnull %10) #6, !dbg !368
  %11 = getelementptr inbounds [1 x i8], [1 x i8]* %7, i64 0, i64 0, !dbg !372
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %11) #6, !dbg !372
  %12 = bitcast i32* %8 to i8*, !dbg !374
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #6, !dbg !374
  %13 = call i32 @pthread_setcancelstate(i32 1, i32* nonnull %8) #4, !dbg !374
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !379
  %14 = load i32, i32* %2, align 4, !dbg !380, !tbaa !381
  %15 = icmp eq i32 %14, 0, !dbg !383
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !385
  br i1 %15, label %921, label %16, !dbg !385

; <label>:16:                                     ; preds = %4
  %17 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %3, i64 0, i32 0
  %18 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %3, i64 0, i32 3
  %19 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %3, i64 0, i32 2
  %20 = getelementptr inbounds [40 x i32], [40 x i32]* %6, i64 0, i64 0
  %21 = getelementptr inbounds [40 x i32], [40 x i32]* %6, i64 0, i64 1
  %22 = ptrtoint [40 x i32]* %6 to i64
  br label %23, !dbg !385

; <label>:23:                                     ; preds = %16, %901
  %24 = phi i32 [ %14, %16 ], [ %907, %901 ]
  %25 = phi i32* [ %2, %16 ], [ %248, %901 ]
  %26 = phi i8* [ null, %16 ], [ %906, %901 ]
  %27 = phi i32 [ 0, %16 ], [ %247, %901 ]
  %28 = phi i32* [ null, %16 ], [ %246, %901 ]
  %29 = phi i32* [ null, %16 ], [ %245, %901 ]
  %30 = phi i64 (%struct._reent*, i32*, i32**, i32)* [ null, %16 ], [ %244, %901 ]
  %31 = phi i32 [ 0, %16 ], [ %905, %901 ]
  %32 = phi i32 [ 0, %16 ], [ %904, %901 ]
  %33 = phi i32 [ 0, %16 ], [ %903, %901 ]
  %34 = phi i32* [ null, %16 ], [ %902, %901 ]
  %35 = sext i32 %32 to i64, !dbg !385
  br label %36, !dbg !385

; <label>:36:                                     ; preds = %23, %80
  %37 = phi i64 [ %35, %23 ], [ %81, %80 ]
  %38 = phi i32 [ %24, %23 ], [ %82, %80 ]
  %39 = phi i32* [ %25, %23 ], [ %73, %80 ]
  %40 = trunc i64 %37 to i32
  %41 = trunc i64 %37 to i8
  %42 = trunc i64 %37 to i16
  br label %43, !dbg !385

; <label>:43:                                     ; preds = %36, %59
  %44 = phi i32 [ %38, %36 ], [ %61, %59 ]
  %45 = phi i32* [ %39, %36 ], [ %60, %59 ]
  %46 = getelementptr inbounds i32, i32* %45, i64 1, !dbg !386
  %47 = call i32 @iswspace(i32 %44) #4, !dbg !387
  %48 = icmp eq i32 %47, 0, !dbg !387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !389
  br i1 %48, label %63, label %49, !dbg !389

; <label>:49:                                     ; preds = %43, %52
  %50 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !390
  %51 = icmp eq i32 %50, -1, !dbg !392
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !393
  br i1 %51, label %57, label %52, !dbg !393

; <label>:52:                                     ; preds = %49
  %53 = call i32 @iswspace(i32 %50) #4, !dbg !394
  %54 = icmp eq i32 %53, 0, !dbg !393
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !395
  br i1 %54, label %55, label %49, !dbg !395, !llvm.loop !396

; <label>:55:                                     ; preds = %52
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !398
  %56 = call i32 @_ungetwc_r(%struct._reent* %0, i32 %50, %struct.__sFILE* %1) #4, !dbg !399
  br label %57, !dbg !399

; <label>:57:                                     ; preds = %49, %55, %183, %219, %232, %201
  %58 = phi i32* [ %69, %201 ], [ %69, %232 ], [ %69, %219 ], [ %69, %183 ], [ %46, %55 ], [ %46, %49 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !401
  br label %59, !dbg !380

; <label>:59:                                     ; preds = %57, %166
  %60 = phi i32* [ %69, %166 ], [ %58, %57 ]
  %61 = load i32, i32* %60, align 4, !dbg !380, !tbaa !381
  %62 = icmp eq i32 %61, 0, !dbg !383
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !385
  br i1 %62, label %921, label %43, !dbg !385, !llvm.loop !403

; <label>:63:                                     ; preds = %43
  %64 = icmp eq i32 %44, 37, !dbg !406
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !408
  br i1 %64, label %65, label %71, !dbg !408

; <label>:65:                                     ; preds = %63, %86
  %66 = phi i64 [ %87, %86 ], [ 0, %63 ], !dbg !409
  %67 = phi i32 [ %88, %86 ], [ 0, %63 ], !dbg !401
  %68 = phi i32* [ %89, %86 ], [ %46, %63 ], !dbg !409
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !409
  %69 = getelementptr inbounds i32, i32* %68, i64 1, !dbg !412
  %70 = load i32, i32* %68, align 4, !dbg !413, !tbaa !381
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !414
  switch i32 %70, label %921 [
    i32 37, label %71
    i32 42, label %84
    i32 108, label %90
    i32 76, label %97
    i32 104, label %99
    i32 106, label %106
    i32 116, label %108
    i32 122, label %110
    i32 48, label %112
    i32 49, label %112
    i32 50, label %112
    i32 51, label %112
    i32 52, label %112
    i32 53, label %112
    i32 54, label %112
    i32 55, label %112
    i32 56, label %112
    i32 57, label %112
    i32 100, label %239
    i32 105, label %240
    i32 111, label %117
    i32 117, label %118
    i32 88, label %119
    i32 120, label %119
    i32 83, label %121
    i32 115, label %123
    i32 91, label %125
    i32 67, label %159
    i32 99, label %161
    i32 112, label %164
    i32 110, label %166
    i32 0, label %236
  ], !dbg !414

; <label>:71:                                     ; preds = %63, %65
  %72 = phi i32 [ %70, %65 ], [ %44, %63 ], !dbg !409
  %73 = phi i32* [ %69, %65 ], [ %46, %63 ], !dbg !409
  %74 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !415
  %75 = icmp eq i32 %74, -1, !dbg !418
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !419
  br i1 %75, label %909, label %76, !dbg !419

; <label>:76:                                     ; preds = %71
  %77 = icmp eq i32 %74, %72, !dbg !420
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !422
  br i1 %77, label %80, label %78, !dbg !422

; <label>:78:                                     ; preds = %76
  %79 = call i32 @_ungetwc_r(%struct._reent* %0, i32 %74, %struct.__sFILE* %1) #4, !dbg !423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !425
  br label %909, !dbg !425

; <label>:80:                                     ; preds = %76
  %81 = add i64 %37, 1, !dbg !426
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !427
  %82 = load i32, i32* %73, align 4, !dbg !380, !tbaa !381
  %83 = icmp eq i32 %82, 0, !dbg !383
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !385
  br i1 %83, label %921, label %36, !dbg !385, !llvm.loop !403

; <label>:84:                                     ; preds = %65
  %85 = or i32 %67, 16, !dbg !428
  br label %86, !dbg !429

; <label>:86:                                     ; preds = %84, %90, %97, %99, %106, %108, %110, %112
  %87 = phi i64 [ %116, %112 ], [ %66, %110 ], [ %66, %108 ], [ %66, %106 ], [ %66, %99 ], [ %66, %97 ], [ %66, %90 ], [ %66, %84 ]
  %88 = phi i32 [ %67, %112 ], [ %111, %110 ], [ %109, %108 ], [ %107, %106 ], [ %105, %99 ], [ %98, %97 ], [ %96, %90 ], [ %85, %84 ]
  %89 = phi i32* [ %69, %112 ], [ %69, %110 ], [ %69, %108 ], [ %69, %106 ], [ %104, %99 ], [ %69, %97 ], [ %95, %90 ], [ %69, %84 ]
  br label %65, !dbg !409

; <label>:90:                                     ; preds = %65
  %91 = load i32, i32* %69, align 4, !dbg !430, !tbaa !381
  %92 = icmp eq i32 %91, 108, !dbg !432
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !433
  %93 = getelementptr inbounds i32, i32* %68, i64 2, !dbg !434
  %94 = select i1 %92, i32 2, i32 1, !dbg !433
  %95 = select i1 %92, i32* %93, i32* %69, !dbg !433
  %96 = or i32 %67, %94, !dbg !436
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %86, !dbg !437

; <label>:97:                                     ; preds = %65
  %98 = or i32 %67, 2, !dbg !438
  br label %86, !dbg !439

; <label>:99:                                     ; preds = %65
  %100 = load i32, i32* %69, align 4, !dbg !440, !tbaa !381
  %101 = icmp eq i32 %100, 104, !dbg !442
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !443
  %102 = getelementptr inbounds i32, i32* %68, i64 2, !dbg !444
  %103 = select i1 %101, i32 8, i32 4, !dbg !443
  %104 = select i1 %101, i32* %102, i32* %69, !dbg !443
  %105 = or i32 %67, %103, !dbg !446
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %86, !dbg !447

; <label>:106:                                    ; preds = %65
  %107 = or i32 %67, 1, !dbg !448
  br label %86, !dbg !450

; <label>:108:                                    ; preds = %65
  %109 = or i32 %67, 1, !dbg !451
  br label %86, !dbg !455

; <label>:110:                                    ; preds = %65
  %111 = or i32 %67, 1, !dbg !456
  br label %86, !dbg !460

; <label>:112:                                    ; preds = %65, %65, %65, %65, %65, %65, %65, %65, %65, %65
  %113 = mul i64 %66, 10, !dbg !461
  %114 = zext i32 %70 to i64, !dbg !462
  %115 = add i64 %113, -48, !dbg !463
  %116 = add i64 %115, %114, !dbg !464
  br label %86, !dbg !465

; <label>:117:                                    ; preds = %65
  br label %240, !dbg !466

; <label>:118:                                    ; preds = %65
  br label %240, !dbg !467

; <label>:119:                                    ; preds = %65, %65
  %120 = or i32 %67, 512, !dbg !468
  br label %240, !dbg !469

; <label>:121:                                    ; preds = %65
  %122 = or i32 %67, 1, !dbg !470
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !471
  br label %123, !dbg !471

; <label>:123:                                    ; preds = %65, %121
  %124 = phi i32 [ %122, %121 ], [ %67, %65 ], !dbg !401
  br label %240, !dbg !472

; <label>:125:                                    ; preds = %65
  %126 = load i32, i32* %69, align 4, !dbg !473, !tbaa !381
  %127 = icmp eq i32 %126, 94, !dbg !475
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !476
  br i1 %127, label %128, label %131, !dbg !476

; <label>:128:                                    ; preds = %125
  %129 = getelementptr inbounds i32, i32* %68, i64 2, !dbg !477
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !479
  %130 = load i32, i32* %129, align 4, !dbg !480, !tbaa !381
  br label %132, !dbg !479

; <label>:131:                                    ; preds = %125
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %132

; <label>:132:                                    ; preds = %131, %128
  %133 = phi i32 [ %126, %131 ], [ %130, %128 ], !dbg !480
  %134 = phi i32 [ 0, %131 ], [ 1, %128 ], !dbg !482
  %135 = phi i32* [ %69, %131 ], [ %129, %128 ], !dbg !409
  %136 = icmp eq i32 %133, 93, !dbg !483
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !484
  br i1 %136, label %137, label %140, !dbg !484

; <label>:137:                                    ; preds = %132
  %138 = getelementptr inbounds i32, i32* %135, i64 1, !dbg !485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !486
  %139 = load i32, i32* %138, align 4, !dbg !487, !tbaa !381
  br label %140, !dbg !486

; <label>:140:                                    ; preds = %137, %132
  %141 = phi i32 [ %139, %137 ], [ %133, %132 ], !dbg !487
  %142 = phi i32* [ %138, %137 ], [ %135, %132 ], !dbg !488
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !489
  %143 = icmp eq i32 %141, 0, !dbg !490
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !491
  br i1 %143, label %144, label %147, !dbg !491

; <label>:144:                                    ; preds = %152, %140
  %145 = phi i32* [ %142, %140 ], [ %151, %152 ], !dbg !401
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !489
  %146 = getelementptr inbounds i32, i32* %145, i64 1, !dbg !401
  br label %155, !dbg !489

; <label>:147:                                    ; preds = %140, %152
  %148 = phi i32 [ %153, %152 ], [ %141, %140 ]
  %149 = phi i32* [ %151, %152 ], [ %142, %140 ]
  %150 = icmp eq i32 %148, 93, !dbg !492
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !489
  %151 = getelementptr inbounds i32, i32* %149, i64 1, !dbg !401
  br i1 %150, label %155, label %152, !dbg !489

; <label>:152:                                    ; preds = %147
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !489
  %153 = load i32, i32* %151, align 4, !dbg !487, !tbaa !381
  %154 = icmp eq i32 %153, 0, !dbg !490
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !491
  br i1 %154, label %144, label %147, !dbg !491, !llvm.loop !493

; <label>:155:                                    ; preds = %147, %144
  %156 = phi i32* [ %145, %144 ], [ %149, %147 ]
  %157 = phi i32* [ %146, %144 ], [ %151, %147 ]
  %158 = or i32 %67, 64, !dbg !495
  br label %240, !dbg !496

; <label>:159:                                    ; preds = %65
  %160 = or i32 %67, 1, !dbg !497
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !498
  br label %161, !dbg !498

; <label>:161:                                    ; preds = %65, %159
  %162 = phi i32 [ %160, %159 ], [ %67, %65 ], !dbg !401
  %163 = or i32 %162, 64, !dbg !499
  br label %240, !dbg !500

; <label>:164:                                    ; preds = %65
  %165 = or i32 %67, 544, !dbg !501
  br label %240, !dbg !502

; <label>:166:                                    ; preds = %65
  %167 = and i32 %67, 16, !dbg !503
  %168 = icmp eq i32 %167, 0, !dbg !503
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !505
  br i1 %168, label %169, label %59, !dbg !505

; <label>:169:                                    ; preds = %166
  %170 = and i32 %67, 8, !dbg !506
  %171 = icmp eq i32 %170, 0, !dbg !506
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !508
  br i1 %171, label %187, label %172, !dbg !508

; <label>:172:                                    ; preds = %169
  %173 = load i32, i32* %17, align 8, !dbg !509
  %174 = icmp ult i32 %173, 41, !dbg !509
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !509
  br i1 %174, label %175, label %180, !dbg !509

; <label>:175:                                    ; preds = %172
  %176 = load i8*, i8** %18, align 8, !dbg !509
  %177 = sext i32 %173 to i64, !dbg !509
  %178 = getelementptr i8, i8* %176, i64 %177, !dbg !509
  %179 = add i32 %173, 8, !dbg !509
  store i32 %179, i32* %17, align 8, !dbg !509
  br label %183, !dbg !509

; <label>:180:                                    ; preds = %172
  %181 = load i8*, i8** %19, align 8, !dbg !509
  %182 = getelementptr i8, i8* %181, i64 8, !dbg !509
  store i8* %182, i8** %19, align 8, !dbg !509
  br label %183, !dbg !509

; <label>:183:                                    ; preds = %180, %175
  %184 = phi i8* [ %178, %175 ], [ %181, %180 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !509
  %185 = bitcast i8* %184 to i8**, !dbg !509
  %186 = load i8*, i8** %185, align 8, !dbg !509
  store i8 %41, i8* %186, align 1, !dbg !512, !tbaa !513
  br label %57, !dbg !514

; <label>:187:                                    ; preds = %169
  %188 = and i32 %67, 4, !dbg !515
  %189 = icmp eq i32 %188, 0, !dbg !515
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !517
  br i1 %189, label %205, label %190, !dbg !517

; <label>:190:                                    ; preds = %187
  %191 = load i32, i32* %17, align 8, !dbg !518
  %192 = icmp ult i32 %191, 41, !dbg !518
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !518
  br i1 %192, label %193, label %198, !dbg !518

; <label>:193:                                    ; preds = %190
  %194 = load i8*, i8** %18, align 8, !dbg !518
  %195 = sext i32 %191 to i64, !dbg !518
  %196 = getelementptr i8, i8* %194, i64 %195, !dbg !518
  %197 = add i32 %191, 8, !dbg !518
  store i32 %197, i32* %17, align 8, !dbg !518
  br label %201, !dbg !518

; <label>:198:                                    ; preds = %190
  %199 = load i8*, i8** %19, align 8, !dbg !518
  %200 = getelementptr i8, i8* %199, i64 8, !dbg !518
  store i8* %200, i8** %19, align 8, !dbg !518
  br label %201, !dbg !518

; <label>:201:                                    ; preds = %198, %193
  %202 = phi i8* [ %196, %193 ], [ %199, %198 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !518
  %203 = bitcast i8* %202 to i16**, !dbg !518
  %204 = load i16*, i16** %203, align 8, !dbg !518
  store i16 %42, i16* %204, align 2, !dbg !521, !tbaa !522
  br label %57, !dbg !524

; <label>:205:                                    ; preds = %187
  %206 = and i32 %67, 1, !dbg !525
  %207 = icmp eq i32 %206, 0, !dbg !525
  %208 = load i32, i32* %17, align 8, !dbg !527
  %209 = icmp ult i32 %208, 41, !dbg !527
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !529
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !530
  br i1 %207, label %223, label %210, !dbg !529

; <label>:210:                                    ; preds = %205
  br i1 %209, label %211, label %216, !dbg !532

; <label>:211:                                    ; preds = %210
  %212 = load i8*, i8** %18, align 8, !dbg !532
  %213 = sext i32 %208 to i64, !dbg !532
  %214 = getelementptr i8, i8* %212, i64 %213, !dbg !532
  %215 = add i32 %208, 8, !dbg !532
  store i32 %215, i32* %17, align 8, !dbg !532
  br label %219, !dbg !532

; <label>:216:                                    ; preds = %210
  %217 = load i8*, i8** %19, align 8, !dbg !532
  %218 = getelementptr i8, i8* %217, i64 8, !dbg !532
  store i8* %218, i8** %19, align 8, !dbg !532
  br label %219, !dbg !532

; <label>:219:                                    ; preds = %216, %211
  %220 = phi i8* [ %214, %211 ], [ %217, %216 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !532
  %221 = bitcast i8* %220 to i64**, !dbg !532
  %222 = load i64*, i64** %221, align 8, !dbg !532
  store i64 %37, i64* %222, align 8, !dbg !534, !tbaa !535
  br label %57, !dbg !537

; <label>:223:                                    ; preds = %205
  br i1 %209, label %224, label %229, !dbg !538

; <label>:224:                                    ; preds = %223
  %225 = load i8*, i8** %18, align 8, !dbg !538
  %226 = sext i32 %208 to i64, !dbg !538
  %227 = getelementptr i8, i8* %225, i64 %226, !dbg !538
  %228 = add i32 %208, 8, !dbg !538
  store i32 %228, i32* %17, align 8, !dbg !538
  br label %232, !dbg !538

; <label>:229:                                    ; preds = %223
  %230 = load i8*, i8** %19, align 8, !dbg !538
  %231 = getelementptr i8, i8* %230, i64 8, !dbg !538
  store i8* %231, i8** %19, align 8, !dbg !538
  br label %232, !dbg !538

; <label>:232:                                    ; preds = %229, %224
  %233 = phi i8* [ %227, %224 ], [ %230, %229 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !538
  %234 = bitcast i8* %233 to i32**, !dbg !538
  %235 = load i32*, i32** %234, align 8, !dbg !538
  store i32 %40, i32* %235, align 4, !dbg !540, !tbaa !381
  br label %57

; <label>:236:                                    ; preds = %65
  %237 = load i32, i32* %8, align 4, !dbg !541, !tbaa !381
  %238 = call i32 @pthread_setcancelstate(i32 %237, i32* nonnull %8) #4, !dbg !541
  br label %919, !dbg !542

; <label>:239:                                    ; preds = %65
  br label %240, !dbg !401

; <label>:240:                                    ; preds = %65, %239, %164, %161, %155, %123, %119, %118, %117
  %241 = phi i2 [ -1, %164 ], [ 0, %161 ], [ 1, %155 ], [ -2, %123 ], [ -1, %119 ], [ -1, %118 ], [ -1, %117 ], [ -1, %239 ], [ -1, %65 ]
  %242 = phi i32 [ %165, %164 ], [ %163, %161 ], [ %158, %155 ], [ %124, %123 ], [ %120, %119 ], [ %67, %118 ], [ %67, %117 ], [ %67, %239 ], [ %67, %65 ], !dbg !409
  %243 = phi i32 [ 16, %164 ], [ %31, %161 ], [ %31, %155 ], [ %31, %123 ], [ 16, %119 ], [ 10, %118 ], [ 8, %117 ], [ 10, %239 ], [ 0, %65 ], !dbg !401
  %244 = phi i64 (%struct._reent*, i32*, i32**, i32)* [ @_wcstoul_r, %164 ], [ %30, %161 ], [ %30, %155 ], [ %30, %123 ], [ @_wcstoul_r, %119 ], [ @_wcstoul_r, %118 ], [ @_wcstoul_r, %117 ], [ @_wcstol_r, %239 ], [ @_wcstol_r, %65 ], !dbg !401
  %245 = phi i32* [ %29, %164 ], [ %29, %161 ], [ %69, %155 ], [ %29, %123 ], [ %29, %119 ], [ %29, %118 ], [ %29, %117 ], [ %29, %239 ], [ %29, %65 ], !dbg !543
  %246 = phi i32* [ %28, %164 ], [ %28, %161 ], [ %156, %155 ], [ %28, %123 ], [ %28, %119 ], [ %28, %118 ], [ %28, %117 ], [ %28, %239 ], [ %28, %65 ], !dbg !543
  %247 = phi i32 [ %27, %164 ], [ %27, %161 ], [ %134, %155 ], [ %27, %123 ], [ %27, %119 ], [ %27, %118 ], [ %27, %117 ], [ %27, %239 ], [ %27, %65 ], !dbg !544
  %248 = phi i32* [ %69, %164 ], [ %69, %161 ], [ %157, %155 ], [ %69, %123 ], [ %69, %119 ], [ %69, %118 ], [ %69, %117 ], [ %69, %239 ], [ %69, %65 ], !dbg !409
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !401
  %249 = trunc i64 %37 to i32
  %250 = and i32 %242, 64, !dbg !545
  %251 = icmp eq i32 %250, 0, !dbg !547
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !548
  br i1 %251, label %252, label %267, !dbg !548

; <label>:252:                                    ; preds = %240
  %253 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !549
  %254 = icmp eq i32 %253, -1, !dbg !551
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !552
  br i1 %254, label %255, label %256, !dbg !552

; <label>:255:                                    ; preds = %252, %261
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !553
  br label %909, !dbg !553

; <label>:256:                                    ; preds = %252, %261
  %257 = phi i32 [ %263, %261 ], [ %253, %252 ]
  %258 = phi i32 [ %262, %261 ], [ %249, %252 ]
  %259 = call i32 @iswspace(i32 %257) #4, !dbg !554
  %260 = icmp eq i32 %259, 0, !dbg !552
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !555
  br i1 %260, label %265, label %261, !dbg !555

; <label>:261:                                    ; preds = %256
  %262 = add nsw i32 %258, 1, !dbg !556
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !555
  %263 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !549
  %264 = icmp eq i32 %263, -1, !dbg !551
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !552
  br i1 %264, label %255, label %256, !dbg !552, !llvm.loop !557

; <label>:265:                                    ; preds = %256
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !553
  %266 = call i32 @_ungetwc_r(%struct._reent* %0, i32 %257, %struct.__sFILE* %1) #4, !dbg !558
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !559
  br label %267, !dbg !559

; <label>:267:                                    ; preds = %265, %240
  %268 = phi i32 [ %258, %265 ], [ %249, %240 ], !dbg !560
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !561
  switch i2 %241, label %900 [
    i2 0, label %269
    i2 1, label %380
    i2 -2, label %550
    i2 -1, label %698
  ], !dbg !561

; <label>:269:                                    ; preds = %267
  %270 = icmp eq i64 %66, 0, !dbg !562
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !564
  br i1 %270, label %271, label %272, !dbg !564

; <label>:271:                                    ; preds = %269
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !565
  br label %272, !dbg !565

; <label>:272:                                    ; preds = %271, %269
  %273 = phi i64 [ 1, %271 ], [ %66, %269 ], !dbg !409
  %274 = and i32 %242, 1, !dbg !566
  %275 = icmp eq i32 %274, 0, !dbg !566
  %276 = and i32 %242, 16, !dbg !568
  %277 = icmp ne i32 %276, 0, !dbg !568
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !571
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !572
  br i1 %275, label %319, label %278, !dbg !571

; <label>:278:                                    ; preds = %272
  br i1 %277, label %294, label %279, !dbg !574

; <label>:279:                                    ; preds = %278
  %280 = load i32, i32* %17, align 8, !dbg !575
  %281 = icmp ult i32 %280, 41, !dbg !575
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !575
  br i1 %281, label %282, label %287, !dbg !575

; <label>:282:                                    ; preds = %279
  %283 = load i8*, i8** %18, align 8, !dbg !575
  %284 = sext i32 %280 to i64, !dbg !575
  %285 = getelementptr i8, i8* %283, i64 %284, !dbg !575
  %286 = add i32 %280, 8, !dbg !575
  store i32 %286, i32* %17, align 8, !dbg !575
  br label %290, !dbg !575

; <label>:287:                                    ; preds = %279
  %288 = load i8*, i8** %19, align 8, !dbg !575
  %289 = getelementptr i8, i8* %288, i64 8, !dbg !575
  store i8* %289, i8** %19, align 8, !dbg !575
  br label %290, !dbg !575

; <label>:290:                                    ; preds = %287, %282
  %291 = phi i8* [ %285, %282 ], [ %288, %287 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !575
  %292 = bitcast i8* %291 to i32**, !dbg !575
  %293 = load i32*, i32** %292, align 8, !dbg !575
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !577
  br label %294, !dbg !577

; <label>:294:                                    ; preds = %278, %290
  %295 = phi i32* [ %34, %278 ], [ %293, %290 ], !dbg !578
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !581
  br label %296, !dbg !582

; <label>:296:                                    ; preds = %294, %306
  %297 = phi i64 [ %300, %306 ], [ %273, %294 ]
  %298 = phi i32 [ %308, %306 ], [ 0, %294 ]
  %299 = phi i32* [ %307, %306 ], [ %295, %294 ]
  %300 = add i64 %297, -1, !dbg !582
  %301 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !583
  %302 = icmp eq i32 %301, -1, !dbg !584
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !580
  br i1 %302, label %311, label %303, !dbg !580

; <label>:303:                                    ; preds = %296
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !585
  br i1 %277, label %306, label %304, !dbg !585

; <label>:304:                                    ; preds = %303
  %305 = getelementptr inbounds i32, i32* %299, i64 1, !dbg !587
  store i32 %301, i32* %299, align 4, !dbg !589, !tbaa !381
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !590
  br label %306, !dbg !590

; <label>:306:                                    ; preds = %304, %303
  %307 = phi i32* [ %299, %303 ], [ %305, %304 ], !dbg !591
  %308 = add nuw nsw i32 %298, 1, !dbg !592
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !580
  %309 = icmp eq i64 %300, 0, !dbg !593
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !581
  br i1 %309, label %310, label %296, !dbg !581, !llvm.loop !594

; <label>:310:                                    ; preds = %306
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !596
  br label %313, !dbg !596

; <label>:311:                                    ; preds = %296
  %312 = icmp eq i32 %298, 0, !dbg !597
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !596
  br i1 %312, label %909, label %313, !dbg !596

; <label>:313:                                    ; preds = %310, %311
  %314 = phi i32 [ %308, %310 ], [ %298, %311 ]
  %315 = phi i32* [ %307, %310 ], [ %299, %311 ]
  %316 = add nsw i32 %314, %268, !dbg !599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !600
  br i1 %277, label %901, label %317, !dbg !600

; <label>:317:                                    ; preds = %313
  %318 = add nsw i32 %33, 1, !dbg !601
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !603
  br label %901, !dbg !603

; <label>:319:                                    ; preds = %272
  br i1 %277, label %335, label %320, !dbg !604

; <label>:320:                                    ; preds = %319
  %321 = load i32, i32* %17, align 8, !dbg !605
  %322 = icmp ult i32 %321, 41, !dbg !605
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !605
  br i1 %322, label %323, label %328, !dbg !605

; <label>:323:                                    ; preds = %320
  %324 = load i8*, i8** %18, align 8, !dbg !605
  %325 = sext i32 %321 to i64, !dbg !605
  %326 = getelementptr i8, i8* %324, i64 %325, !dbg !605
  %327 = add i32 %321, 8, !dbg !605
  store i32 %327, i32* %17, align 8, !dbg !605
  br label %331, !dbg !605

; <label>:328:                                    ; preds = %320
  %329 = load i8*, i8** %19, align 8, !dbg !605
  %330 = getelementptr i8, i8* %329, i64 8, !dbg !605
  store i8* %330, i8** %19, align 8, !dbg !605
  br label %331, !dbg !605

; <label>:331:                                    ; preds = %328, %323
  %332 = phi i8* [ %326, %323 ], [ %329, %328 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !605
  %333 = bitcast i8* %332 to i8**, !dbg !605
  %334 = load i8*, i8** %333, align 8, !dbg !605
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !606
  br label %335, !dbg !606

; <label>:335:                                    ; preds = %319, %331
  %336 = phi i8* [ %26, %319 ], [ %334, %331 ], !dbg !568
  %337 = call i8* @memset(i8* nonnull %9, i32 0, i64 8) #4, !dbg !607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !608
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !609
  br label %338, !dbg !610

; <label>:338:                                    ; preds = %335, %365
  %339 = phi i8* [ %367, %365 ], [ %336, %335 ]
  %340 = phi i32 [ %369, %365 ], [ 0, %335 ]
  %341 = phi i64 [ %368, %365 ], [ %273, %335 ]
  %342 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !610
  %343 = icmp eq i32 %342, -1, !dbg !611
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !608
  br i1 %343, label %372, label %344, !dbg !608

; <label>:344:                                    ; preds = %338
  %345 = call i32 @__locale_mb_cur_max() #4, !dbg !612
  %346 = sext i32 %345 to i64, !dbg !612
  %347 = icmp ult i64 %341, %346, !dbg !615
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !616
  br i1 %347, label %352, label %348, !dbg !616

; <label>:348:                                    ; preds = %344
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !617
  br i1 %277, label %352, label %349, !dbg !617

; <label>:349:                                    ; preds = %348
  %350 = call i64 @_wcrtomb_r(%struct._reent* %0, i8* %339, i32 %342, %struct._mbstate_t* nonnull %5) #4, !dbg !619
  %351 = icmp eq i64 %350, -1, !dbg !622
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !624
  br i1 %351, label %909, label %362, !dbg !624

; <label>:352:                                    ; preds = %344, %348
  %353 = call i64 @_wcrtomb_r(%struct._reent* %0, i8* nonnull %11, i32 %342, %struct._mbstate_t* nonnull %5) #4, !dbg !625
  %354 = icmp eq i64 %353, -1, !dbg !627
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !629
  br i1 %354, label %909, label %355, !dbg !629

; <label>:355:                                    ; preds = %352
  %356 = icmp ugt i64 %353, %341, !dbg !630
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !632
  br i1 %356, label %357, label %359, !dbg !632

; <label>:357:                                    ; preds = %355
  %358 = call i32 @_ungetwc_r(%struct._reent* %0, i32 %342, %struct.__sFILE* %1) #4, !dbg !633
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !635
  br label %372, !dbg !635

; <label>:359:                                    ; preds = %355
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !636
  br i1 %277, label %365, label %360, !dbg !636

; <label>:360:                                    ; preds = %359
  %361 = call i8* @memcpy(i8* %339, i8* nonnull %11, i64 %353) #4, !dbg !637
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !637
  br label %362, !dbg !637

; <label>:362:                                    ; preds = %360, %349
  %363 = phi i64 [ %350, %349 ], [ %353, %360 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !639
  %364 = getelementptr inbounds i8, i8* %339, i64 %363, !dbg !640
  br label %365, !dbg !642

; <label>:365:                                    ; preds = %359, %362
  %366 = phi i64 [ %363, %362 ], [ %353, %359 ]
  %367 = phi i8* [ %364, %362 ], [ %339, %359 ], !dbg !643
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !643
  %368 = sub i64 %341, %366, !dbg !644
  %369 = add nuw nsw i32 %340, 1, !dbg !645
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !608
  %370 = icmp eq i64 %368, 0, !dbg !646
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !609
  br i1 %370, label %371, label %338, !dbg !609, !llvm.loop !647

; <label>:371:                                    ; preds = %365
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !649
  br label %374, !dbg !649

; <label>:372:                                    ; preds = %338, %357
  %373 = icmp eq i32 %340, 0, !dbg !650
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !649
  br i1 %373, label %909, label %374, !dbg !649

; <label>:374:                                    ; preds = %371, %372
  %375 = phi i8* [ %367, %371 ], [ %339, %372 ]
  %376 = phi i32 [ %369, %371 ], [ %340, %372 ]
  %377 = add nsw i32 %376, %268, !dbg !652
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !653
  br i1 %277, label %901, label %378, !dbg !653

; <label>:378:                                    ; preds = %374
  %379 = add nsw i32 %33, 1, !dbg !654
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !656
  br label %901, !dbg !656

; <label>:380:                                    ; preds = %267
  %381 = icmp eq i64 %66, 0, !dbg !657
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !659
  br i1 %381, label %382, label %383, !dbg !659

; <label>:382:                                    ; preds = %380
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !660
  br label %383, !dbg !660

; <label>:383:                                    ; preds = %382, %380
  %384 = phi i64 [ -1, %382 ], [ %66, %380 ], !dbg !409
  %385 = and i32 %242, 16, !dbg !661
  %386 = icmp ne i32 %385, 0, !dbg !661
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !663
  %387 = and i32 %242, 1, !dbg !664
  %388 = icmp eq i32 %387, 0, !dbg !664
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !666
  br i1 %386, label %389, label %419, !dbg !663

; <label>:389:                                    ; preds = %383
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !667
  br i1 %388, label %488, label %390, !dbg !669

; <label>:390:                                    ; preds = %389
  %391 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !670
  %392 = icmp eq i32 %391, -1, !dbg !671
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !672
  br i1 %392, label %416, label %393, !dbg !672

; <label>:393:                                    ; preds = %390
  %394 = icmp eq i32 %247, 0
  %395 = ptrtoint i32* %246 to i64
  %396 = ptrtoint i32* %245 to i64
  %397 = sub i64 %395, %396
  %398 = ashr exact i64 %397, 2
  br label %399, !dbg !672

; <label>:399:                                    ; preds = %393, %410
  %400 = phi i32 [ %391, %393 ], [ %412, %410 ]
  %401 = phi i32 [ 0, %393 ], [ %411, %410 ]
  %402 = phi i64 [ %384, %393 ], [ %403, %410 ]
  %403 = add i64 %402, -1, !dbg !673
  %404 = icmp eq i64 %402, 0, !dbg !674
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !675
  br i1 %404, label %414, label %405, !dbg !675

; <label>:405:                                    ; preds = %399
  %406 = call i32* @wmemchr(i32* %245, i32 %400, i64 %398) #4, !dbg !676
  %407 = icmp eq i32* %406, null, !dbg !676
  %408 = icmp ne i32* %406, null, !dbg !676
  %409 = select i1 %394, i1 %408, i1 %407, !dbg !676
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !677
  br i1 %409, label %410, label %414, !dbg !677

; <label>:410:                                    ; preds = %405
  %411 = add nuw nsw i32 %401, 1, !dbg !678
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !677
  %412 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !670
  %413 = icmp eq i32 %412, -1, !dbg !671
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !672
  br i1 %413, label %416, label %399, !dbg !672, !llvm.loop !679

; <label>:414:                                    ; preds = %405, %399
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !680
  %415 = call i32 @_ungetwc_r(%struct._reent* %0, i32 %400, %struct.__sFILE* %1) #4, !dbg !681
  br label %416, !dbg !681

; <label>:416:                                    ; preds = %410, %390, %414
  %417 = phi i32 [ %401, %414 ], [ 0, %390 ], [ %411, %410 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !683
  %418 = icmp eq i32 %417, 0, !dbg !684
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !686
  br i1 %418, label %921, label %544, !dbg !686

; <label>:419:                                    ; preds = %383
  br i1 %388, label %473, label %420, !dbg !687

; <label>:420:                                    ; preds = %419
  %421 = load i32, i32* %17, align 8, !dbg !688
  %422 = icmp ult i32 %421, 41, !dbg !688
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !688
  br i1 %422, label %423, label %428, !dbg !688

; <label>:423:                                    ; preds = %420
  %424 = load i8*, i8** %18, align 8, !dbg !688
  %425 = sext i32 %421 to i64, !dbg !688
  %426 = getelementptr i8, i8* %424, i64 %425, !dbg !688
  %427 = add i32 %421, 8, !dbg !688
  store i32 %427, i32* %17, align 8, !dbg !688
  br label %431, !dbg !688

; <label>:428:                                    ; preds = %420
  %429 = load i8*, i8** %19, align 8, !dbg !688
  %430 = getelementptr i8, i8* %429, i64 8, !dbg !688
  store i8* %430, i8** %19, align 8, !dbg !688
  br label %431, !dbg !688

; <label>:431:                                    ; preds = %428, %423
  %432 = phi i8* [ %426, %423 ], [ %429, %428 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !688
  %433 = bitcast i8* %432 to i32**, !dbg !688
  %434 = load i32*, i32** %433, align 8, !dbg !688
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !691
  %435 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !692
  %436 = icmp eq i32 %435, -1, !dbg !693
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !694
  br i1 %436, label %459, label %437, !dbg !694

; <label>:437:                                    ; preds = %431
  %438 = icmp eq i32 %247, 0
  %439 = ptrtoint i32* %246 to i64
  %440 = ptrtoint i32* %245 to i64
  %441 = sub i64 %439, %440
  %442 = ashr exact i64 %441, 2
  br label %443, !dbg !694

; <label>:443:                                    ; preds = %437, %455
  %444 = phi i32 [ %435, %437 ], [ %457, %455 ]
  %445 = phi i32* [ %434, %437 ], [ %456, %455 ]
  %446 = phi i64 [ %384, %437 ], [ %447, %455 ]
  %447 = add i64 %446, -1, !dbg !695
  %448 = icmp eq i64 %446, 0, !dbg !696
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !697
  br i1 %448, label %449, label %450, !dbg !697

; <label>:449:                                    ; preds = %443
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !691
  br label %461, !dbg !698

; <label>:450:                                    ; preds = %443
  %451 = call i32* @wmemchr(i32* %245, i32 %444, i64 %442) #4, !dbg !699
  %452 = icmp eq i32* %451, null, !dbg !699
  %453 = icmp ne i32* %451, null, !dbg !699
  %454 = select i1 %438, i1 %453, i1 %452, !dbg !699
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !691
  br i1 %454, label %455, label %461, !dbg !691

; <label>:455:                                    ; preds = %450
  %456 = getelementptr inbounds i32, i32* %445, i64 1, !dbg !700
  store i32 %444, i32* %445, align 4, !dbg !701, !tbaa !381
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !691
  %457 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !692
  %458 = icmp eq i32 %457, -1, !dbg !693
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !694
  br i1 %458, label %459, label %443, !dbg !694, !llvm.loop !702

; <label>:459:                                    ; preds = %455, %431
  %460 = phi i32* [ %434, %431 ], [ %456, %455 ], !dbg !704
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !691
  br label %463

; <label>:461:                                    ; preds = %450, %449
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !698
  %462 = call i32 @_ungetwc_r(%struct._reent* %0, i32 %444, %struct.__sFILE* %1) #4, !dbg !705
  br label %463, !dbg !705

; <label>:463:                                    ; preds = %459, %461
  %464 = phi i32* [ %460, %459 ], [ %445, %461 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !707
  %465 = ptrtoint i32* %464 to i64, !dbg !708
  %466 = ptrtoint i32* %434 to i64, !dbg !708
  %467 = sub i64 %465, %466, !dbg !708
  %468 = lshr exact i64 %467, 2, !dbg !708
  %469 = trunc i64 %468 to i32, !dbg !709
  %470 = icmp eq i32 %469, 0, !dbg !710
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !712
  br i1 %470, label %921, label %471, !dbg !712

; <label>:471:                                    ; preds = %463
  store i32 0, i32* %464, align 4, !dbg !713, !tbaa !381
  %472 = add nsw i32 %33, 1, !dbg !714
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !715
  br label %544, !dbg !715

; <label>:473:                                    ; preds = %419
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !716
  %474 = load i32, i32* %17, align 8, !dbg !718
  %475 = icmp ult i32 %474, 41, !dbg !718
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !718
  br i1 %475, label %476, label %481, !dbg !718

; <label>:476:                                    ; preds = %473
  %477 = load i8*, i8** %18, align 8, !dbg !718
  %478 = sext i32 %474 to i64, !dbg !718
  %479 = getelementptr i8, i8* %477, i64 %478, !dbg !718
  %480 = add i32 %474, 8, !dbg !718
  store i32 %480, i32* %17, align 8, !dbg !718
  br label %484, !dbg !718

; <label>:481:                                    ; preds = %473
  %482 = load i8*, i8** %19, align 8, !dbg !718
  %483 = getelementptr i8, i8* %482, i64 8, !dbg !718
  store i8* %483, i8** %19, align 8, !dbg !718
  br label %484, !dbg !718

; <label>:484:                                    ; preds = %481, %476
  %485 = phi i8* [ %479, %476 ], [ %482, %481 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !718
  %486 = bitcast i8* %485 to i8**, !dbg !718
  %487 = load i8*, i8** %486, align 8, !dbg !718
  br label %488, !dbg !720

; <label>:488:                                    ; preds = %389, %484
  %489 = phi i8* [ %487, %484 ], [ %26, %389 ], !dbg !721
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !721
  %490 = call i8* @memset(i8* nonnull %9, i32 0, i64 8) #4, !dbg !722
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !723
  %491 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !724
  %492 = icmp eq i32 %491, -1, !dbg !725
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !726
  br i1 %492, label %539, label %493, !dbg !726

; <label>:493:                                    ; preds = %488
  %494 = icmp eq i32 %247, 0
  %495 = ptrtoint i32* %246 to i64
  %496 = ptrtoint i32* %245 to i64
  %497 = sub i64 %495, %496
  %498 = ashr exact i64 %497, 2
  br label %499, !dbg !726

; <label>:499:                                    ; preds = %493, %530
  %500 = phi i32 [ %491, %493 ], [ %535, %530 ]
  %501 = phi i8* [ %489, %493 ], [ %532, %530 ]
  %502 = phi i32 [ 0, %493 ], [ %534, %530 ]
  %503 = phi i64 [ %384, %493 ], [ %533, %530 ]
  %504 = add i64 %503, -1, !dbg !727
  %505 = icmp eq i64 %503, 0, !dbg !728
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !729
  br i1 %505, label %537, label %506, !dbg !729

; <label>:506:                                    ; preds = %499
  %507 = call i32* @wmemchr(i32* %245, i32 %500, i64 %498) #4, !dbg !730
  %508 = icmp eq i32* %507, null, !dbg !730
  %509 = icmp ne i32* %507, null, !dbg !730
  %510 = select i1 %494, i1 %509, i1 %508, !dbg !730
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !723
  br i1 %510, label %511, label %537, !dbg !723

; <label>:511:                                    ; preds = %506
  %512 = call i32 @__locale_mb_cur_max() #4, !dbg !731
  %513 = sext i32 %512 to i64, !dbg !731
  %514 = icmp ult i64 %504, %513, !dbg !734
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !735
  br i1 %514, label %519, label %515, !dbg !735

; <label>:515:                                    ; preds = %511
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !736
  br i1 %386, label %519, label %516, !dbg !736

; <label>:516:                                    ; preds = %515
  %517 = call i64 @_wcrtomb_r(%struct._reent* %0, i8* %501, i32 %500, %struct._mbstate_t* nonnull %5) #4, !dbg !737
  %518 = icmp eq i64 %517, -1, !dbg !739
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !741
  br i1 %518, label %909, label %527, !dbg !741

; <label>:519:                                    ; preds = %511, %515
  %520 = call i64 @wcrtomb(i8* nonnull %11, i32 %500, %struct._mbstate_t* nonnull %5) #4, !dbg !742
  %521 = icmp eq i64 %520, -1, !dbg !744
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !746
  br i1 %521, label %909, label %522, !dbg !746

; <label>:522:                                    ; preds = %519
  %523 = icmp ugt i64 %520, %504, !dbg !747
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !749
  br i1 %523, label %537, label %524, !dbg !749

; <label>:524:                                    ; preds = %522
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !750
  br i1 %386, label %530, label %525, !dbg !750

; <label>:525:                                    ; preds = %524
  %526 = call i8* @memcpy(i8* %501, i8* nonnull %11, i64 %520) #4, !dbg !751
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !751
  br label %527, !dbg !751

; <label>:527:                                    ; preds = %525, %516
  %528 = phi i64 [ %517, %516 ], [ %520, %525 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !753
  %529 = getelementptr inbounds i8, i8* %501, i64 %528, !dbg !754
  br label %530, !dbg !756

; <label>:530:                                    ; preds = %524, %527
  %531 = phi i64 [ %528, %527 ], [ %520, %524 ]
  %532 = phi i8* [ %529, %527 ], [ %501, %524 ], !dbg !757
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !757
  %533 = sub i64 %504, %531, !dbg !758
  %534 = add nuw nsw i32 %502, 1, !dbg !759
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !723
  %535 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !724
  %536 = icmp eq i32 %535, -1, !dbg !725
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !726
  br i1 %536, label %539, label %499, !dbg !726, !llvm.loop !760

; <label>:537:                                    ; preds = %506, %522, %499
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !762
  %538 = call i32 @_ungetwc_r(%struct._reent* %0, i32 %500, %struct.__sFILE* %1) #4, !dbg !763
  br label %539, !dbg !763

; <label>:539:                                    ; preds = %530, %488, %537
  %540 = phi i32 [ %502, %537 ], [ 0, %488 ], [ %534, %530 ]
  %541 = phi i8* [ %501, %537 ], [ %489, %488 ], [ %532, %530 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !765
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !766
  br i1 %386, label %544, label %542, !dbg !766

; <label>:542:                                    ; preds = %539
  store i8 0, i8* %541, align 1, !dbg !767, !tbaa !513
  %543 = add nsw i32 %33, 1, !dbg !770
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !771
  br label %544, !dbg !771

; <label>:544:                                    ; preds = %471, %542, %539, %416
  %545 = phi i32* [ %34, %416 ], [ %464, %471 ], [ %34, %539 ], [ %34, %542 ], !dbg !544
  %546 = phi i32 [ %417, %416 ], [ %469, %471 ], [ %540, %539 ], [ %540, %542 ], !dbg !772
  %547 = phi i32 [ %33, %416 ], [ %472, %471 ], [ %33, %539 ], [ %543, %542 ], !dbg !773
  %548 = phi i8* [ %26, %416 ], [ %26, %471 ], [ %541, %539 ], [ %541, %542 ], !dbg !371
  %549 = add nsw i32 %546, %268, !dbg !774
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !775
  br label %901, !dbg !775

; <label>:550:                                    ; preds = %267
  %551 = icmp eq i64 %66, 0, !dbg !776
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !778
  br i1 %551, label %552, label %553, !dbg !778

; <label>:552:                                    ; preds = %550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !779
  br label %553, !dbg !779

; <label>:553:                                    ; preds = %552, %550
  %554 = phi i64 [ -1, %552 ], [ %66, %550 ], !dbg !409
  %555 = and i32 %242, 16, !dbg !780
  %556 = icmp ne i32 %555, 0, !dbg !780
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !782
  %557 = and i32 %242, 1, !dbg !783
  %558 = icmp eq i32 %557, 0, !dbg !783
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !785
  br i1 %556, label %559, label %579, !dbg !782

; <label>:559:                                    ; preds = %553
  br i1 %558, label %560, label %561, !dbg !786

; <label>:560:                                    ; preds = %559
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !787
  br label %637, !dbg !788

; <label>:561:                                    ; preds = %559
  %562 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !790
  %563 = icmp eq i32 %562, -1, !dbg !792
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !793
  br i1 %563, label %693, label %564, !dbg !793

; <label>:564:                                    ; preds = %561, %573
  %565 = phi i32 [ %575, %573 ], [ %562, %561 ]
  %566 = phi i32 [ %574, %573 ], [ %268, %561 ]
  %567 = phi i64 [ %568, %573 ], [ %554, %561 ]
  %568 = add i64 %567, -1, !dbg !794
  %569 = icmp eq i64 %567, 0, !dbg !795
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !796
  br i1 %569, label %577, label %570, !dbg !796

; <label>:570:                                    ; preds = %564
  %571 = call i32 @iswspace(i32 %565) #4, !dbg !797
  %572 = icmp eq i32 %571, 0, !dbg !798
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !799
  br i1 %572, label %573, label %577, !dbg !799

; <label>:573:                                    ; preds = %570
  %574 = add nsw i32 %566, 1, !dbg !800
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !799
  %575 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !790
  %576 = icmp eq i32 %575, -1, !dbg !792
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !793
  br i1 %576, label %693, label %564, !dbg !793, !llvm.loop !801

; <label>:577:                                    ; preds = %570, %564
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !802
  %578 = call i32 @_ungetwc_r(%struct._reent* %0, i32 %565, %struct.__sFILE* %1) #4, !dbg !803
  br label %693, !dbg !803

; <label>:579:                                    ; preds = %553
  br i1 %558, label %622, label %580, !dbg !787

; <label>:580:                                    ; preds = %579
  %581 = load i32, i32* %17, align 8, !dbg !805
  %582 = icmp ult i32 %581, 41, !dbg !805
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !805
  br i1 %582, label %583, label %588, !dbg !805

; <label>:583:                                    ; preds = %580
  %584 = load i8*, i8** %18, align 8, !dbg !805
  %585 = sext i32 %581 to i64, !dbg !805
  %586 = getelementptr i8, i8* %584, i64 %585, !dbg !805
  %587 = add i32 %581, 8, !dbg !805
  store i32 %587, i32* %17, align 8, !dbg !805
  br label %591, !dbg !805

; <label>:588:                                    ; preds = %580
  %589 = load i8*, i8** %19, align 8, !dbg !805
  %590 = getelementptr i8, i8* %589, i64 8, !dbg !805
  store i8* %590, i8** %19, align 8, !dbg !805
  br label %591, !dbg !805

; <label>:591:                                    ; preds = %588, %583
  %592 = phi i8* [ %586, %583 ], [ %589, %588 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !805
  %593 = bitcast i8* %592 to i32**, !dbg !805
  %594 = load i32*, i32** %593, align 8, !dbg !805
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !807
  %595 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !808
  %596 = icmp eq i32 %595, -1, !dbg !809
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !810
  br i1 %596, label %613, label %597, !dbg !810

; <label>:597:                                    ; preds = %591, %608
  %598 = phi i32 [ %611, %608 ], [ %595, %591 ]
  %599 = phi i32 [ %610, %608 ], [ %268, %591 ]
  %600 = phi i32* [ %609, %608 ], [ %594, %591 ]
  %601 = phi i64 [ %602, %608 ], [ %554, %591 ]
  %602 = add i64 %601, -1, !dbg !811
  %603 = icmp eq i64 %601, 0, !dbg !812
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !813
  br i1 %603, label %604, label %605, !dbg !813

; <label>:604:                                    ; preds = %597
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !807
  br label %616, !dbg !814

; <label>:605:                                    ; preds = %597
  %606 = call i32 @iswspace(i32 %598) #4, !dbg !815
  %607 = icmp eq i32 %606, 0, !dbg !816
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !807
  br i1 %607, label %608, label %616, !dbg !807

; <label>:608:                                    ; preds = %605
  %609 = getelementptr inbounds i32, i32* %600, i64 1, !dbg !817
  store i32 %598, i32* %600, align 4, !dbg !819, !tbaa !381
  %610 = add nsw i32 %599, 1, !dbg !820
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !807
  %611 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !808
  %612 = icmp eq i32 %611, -1, !dbg !809
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !810
  br i1 %612, label %613, label %597, !dbg !810, !llvm.loop !821

; <label>:613:                                    ; preds = %608, %591
  %614 = phi i32* [ %594, %591 ], [ %609, %608 ], !dbg !823
  %615 = phi i32 [ %268, %591 ], [ %610, %608 ], !dbg !823
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !807
  br label %618

; <label>:616:                                    ; preds = %605, %604
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !814
  %617 = call i32 @_ungetwc_r(%struct._reent* %0, i32 %598, %struct.__sFILE* %1) #4, !dbg !824
  br label %618, !dbg !824

; <label>:618:                                    ; preds = %613, %616
  %619 = phi i32* [ %614, %613 ], [ %600, %616 ]
  %620 = phi i32 [ %615, %613 ], [ %599, %616 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !826
  store i32 0, i32* %619, align 4, !dbg !827, !tbaa !381
  %621 = add nsw i32 %33, 1, !dbg !828
  br label %693, !dbg !829

; <label>:622:                                    ; preds = %579
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !788
  %623 = load i32, i32* %17, align 8, !dbg !830
  %624 = icmp ult i32 %623, 41, !dbg !830
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !830
  br i1 %624, label %625, label %630, !dbg !830

; <label>:625:                                    ; preds = %622
  %626 = load i8*, i8** %18, align 8, !dbg !830
  %627 = sext i32 %623 to i64, !dbg !830
  %628 = getelementptr i8, i8* %626, i64 %627, !dbg !830
  %629 = add i32 %623, 8, !dbg !830
  store i32 %629, i32* %17, align 8, !dbg !830
  br label %633, !dbg !830

; <label>:630:                                    ; preds = %622
  %631 = load i8*, i8** %19, align 8, !dbg !830
  %632 = getelementptr i8, i8* %631, i64 8, !dbg !830
  store i8* %632, i8** %19, align 8, !dbg !830
  br label %633, !dbg !830

; <label>:633:                                    ; preds = %630, %625
  %634 = phi i8* [ %628, %625 ], [ %631, %630 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !830
  %635 = bitcast i8* %634 to i8**, !dbg !830
  %636 = load i8*, i8** %635, align 8, !dbg !830
  br label %637, !dbg !832

; <label>:637:                                    ; preds = %560, %633
  %638 = phi i8* [ %636, %633 ], [ %26, %560 ], !dbg !833
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !833
  %639 = call i8* @memset(i8* nonnull %9, i32 0, i64 8) #4, !dbg !834
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !835
  %640 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !836
  %641 = icmp ne i32 %640, -1, !dbg !837
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !838
  br i1 %641, label %642, label %678, !dbg !838

; <label>:642:                                    ; preds = %637, %668
  %643 = phi i32 [ %673, %668 ], [ %640, %637 ]
  %644 = phi i8* [ %670, %668 ], [ %638, %637 ]
  %645 = phi i32 [ %672, %668 ], [ %268, %637 ]
  %646 = phi i64 [ %671, %668 ], [ %554, %637 ]
  %647 = call i32 @iswspace(i32 %643) #4, !dbg !839
  %648 = icmp eq i32 %647, 0, !dbg !840
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !835
  br i1 %648, label %649, label %677, !dbg !835

; <label>:649:                                    ; preds = %642
  %650 = call i32 @__locale_mb_cur_max() #4, !dbg !841
  %651 = sext i32 %650 to i64, !dbg !841
  %652 = icmp ult i64 %646, %651, !dbg !844
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !845
  br i1 %652, label %657, label %653, !dbg !845

; <label>:653:                                    ; preds = %649
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !846
  br i1 %556, label %657, label %654, !dbg !846

; <label>:654:                                    ; preds = %653
  %655 = call i64 @wcrtomb(i8* %644, i32 %643, %struct._mbstate_t* nonnull %5) #4, !dbg !847
  %656 = icmp eq i64 %655, -1, !dbg !849
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !851
  br i1 %656, label %909, label %665, !dbg !851

; <label>:657:                                    ; preds = %649, %653
  %658 = call i64 @wcrtomb(i8* nonnull %11, i32 %643, %struct._mbstate_t* nonnull %5) #4, !dbg !852
  %659 = icmp eq i64 %658, -1, !dbg !854
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !856
  br i1 %659, label %909, label %660, !dbg !856

; <label>:660:                                    ; preds = %657
  %661 = icmp ugt i64 %658, %646, !dbg !857
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !859
  br i1 %661, label %677, label %662, !dbg !859

; <label>:662:                                    ; preds = %660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !860
  br i1 %556, label %668, label %663, !dbg !860

; <label>:663:                                    ; preds = %662
  %664 = call i8* @memcpy(i8* %644, i8* nonnull %11, i64 %658) #4, !dbg !861
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !861
  br label %665, !dbg !861

; <label>:665:                                    ; preds = %663, %654
  %666 = phi i64 [ %655, %654 ], [ %658, %663 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !863
  %667 = getelementptr inbounds i8, i8* %644, i64 %666, !dbg !864
  br label %668, !dbg !866

; <label>:668:                                    ; preds = %662, %665
  %669 = phi i64 [ %666, %665 ], [ %658, %662 ]
  %670 = phi i8* [ %667, %665 ], [ %644, %662 ], !dbg !867
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !867
  %671 = sub i64 %646, %669, !dbg !868
  %672 = add nsw i32 %645, 1, !dbg !869
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !835
  %673 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !836
  %674 = icmp ne i32 %673, -1, !dbg !837
  %675 = icmp ne i64 %671, 0, !dbg !870
  %676 = and i1 %675, %674, !dbg !838
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !838
  br i1 %676, label %642, label %678, !dbg !838, !llvm.loop !871

; <label>:677:                                    ; preds = %642, %660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !873
  br label %683, !dbg !873

; <label>:678:                                    ; preds = %668, %637
  %679 = phi i32 [ %268, %637 ], [ %672, %668 ], !dbg !874
  %680 = phi i8* [ %638, %637 ], [ %670, %668 ], !dbg !371
  %681 = phi i32 [ %640, %637 ], [ %673, %668 ], !dbg !836
  %682 = phi i1 [ %641, %637 ], [ %674, %668 ], !dbg !837
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !873
  br i1 %682, label %683, label %688, !dbg !873

; <label>:683:                                    ; preds = %677, %678
  %684 = phi i32 [ %643, %677 ], [ %681, %678 ]
  %685 = phi i8* [ %644, %677 ], [ %680, %678 ]
  %686 = phi i32 [ %645, %677 ], [ %679, %678 ]
  %687 = call i32 @_ungetwc_r(%struct._reent* %0, i32 %684, %struct.__sFILE* %1) #4, !dbg !875
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !875
  br label %688, !dbg !875

; <label>:688:                                    ; preds = %683, %678
  %689 = phi i8* [ %685, %683 ], [ %680, %678 ]
  %690 = phi i32 [ %686, %683 ], [ %679, %678 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !877
  br i1 %556, label %901, label %691, !dbg !877

; <label>:691:                                    ; preds = %688
  store i8 0, i8* %689, align 1, !dbg !878, !tbaa !513
  %692 = add nsw i32 %33, 1, !dbg !881
  br label %693, !dbg !882

; <label>:693:                                    ; preds = %573, %561, %577, %691, %618
  %694 = phi i32* [ %34, %691 ], [ %619, %618 ], [ %34, %577 ], [ %34, %561 ], [ %34, %573 ]
  %695 = phi i32 [ %692, %691 ], [ %621, %618 ], [ %33, %577 ], [ %33, %561 ], [ %33, %573 ]
  %696 = phi i32 [ %690, %691 ], [ %620, %618 ], [ %566, %577 ], [ %268, %561 ], [ %574, %573 ]
  %697 = phi i8* [ %689, %691 ], [ %26, %618 ], [ %26, %577 ], [ %26, %561 ], [ %26, %573 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !883
  br label %901, !dbg !884

; <label>:698:                                    ; preds = %267
  %699 = add i64 %66, -1, !dbg !885
  %700 = icmp ugt i64 %699, 38, !dbg !885
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !885
  br i1 %700, label %701, label %702, !dbg !885

; <label>:701:                                    ; preds = %698
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !887
  br label %702, !dbg !887

; <label>:702:                                    ; preds = %701, %698
  %703 = phi i64 [ 39, %701 ], [ %66, %698 ], !dbg !409
  %704 = or i32 %242, 1408, !dbg !888
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !889
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !891
  br label %705, !dbg !892

; <label>:705:                                    ; preds = %702, %770
  %706 = phi i32* [ %775, %770 ], [ %20, %702 ]
  %707 = phi i32 [ %772, %770 ], [ %243, %702 ]
  %708 = phi i32 [ %771, %770 ], [ %704, %702 ]
  %709 = phi i64 [ %773, %770 ], [ 0, %702 ]
  %710 = phi i64 [ %774, %770 ], [ %703, %702 ]
  %711 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !892
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !895
  switch i32 %711, label %765 [
    i32 48, label %712
    i32 49, label %725
    i32 50, label %725
    i32 51, label %725
    i32 52, label %725
    i32 53, label %725
    i32 54, label %725
    i32 55, label %725
    i32 56, label %731
    i32 57, label %731
    i32 65, label %740
    i32 66, label %740
    i32 67, label %740
    i32 68, label %740
    i32 69, label %740
    i32 70, label %740
    i32 97, label %740
    i32 98, label %740
    i32 99, label %740
    i32 100, label %740
    i32 101, label %740
    i32 102, label %740
    i32 43, label %744
    i32 45, label %744
    i32 120, label %750
    i32 88, label %750
  ], !dbg !895

; <label>:712:                                    ; preds = %705
  %713 = icmp eq i32 %707, 0, !dbg !896
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !899
  br i1 %713, label %714, label %716, !dbg !899

; <label>:714:                                    ; preds = %712
  %715 = or i32 %708, 512, !dbg !900
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !902
  br label %716, !dbg !902

; <label>:716:                                    ; preds = %714, %712
  %717 = phi i32 [ %715, %714 ], [ %708, %712 ], !dbg !903
  %718 = phi i32 [ 8, %714 ], [ %707, %712 ], !dbg !401
  %719 = and i32 %717, 1024, !dbg !904
  %720 = icmp eq i32 %719, 0, !dbg !904
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !906
  br i1 %720, label %723, label %721, !dbg !906

; <label>:721:                                    ; preds = %716
  %722 = and i32 %717, -1409, !dbg !907
  br label %770, !dbg !908

; <label>:723:                                    ; preds = %716
  %724 = and i32 %717, -897, !dbg !909
  br label %770

; <label>:725:                                    ; preds = %705, %705, %705, %705, %705, %705, %705
  %726 = sext i32 %707 to i64, !dbg !910
  %727 = getelementptr inbounds [17 x i16], [17 x i16]* @__svfiwscanf_r.basefix, i64 0, i64 %726, !dbg !910
  %728 = load i16, i16* %727, align 2, !dbg !910, !tbaa !522
  %729 = sext i16 %728 to i32, !dbg !910
  %730 = and i32 %708, -897, !dbg !911
  br label %770, !dbg !912

; <label>:731:                                    ; preds = %705, %705
  %732 = sext i32 %707 to i64, !dbg !913
  %733 = getelementptr inbounds [17 x i16], [17 x i16]* @__svfiwscanf_r.basefix, i64 0, i64 %732, !dbg !913
  %734 = load i16, i16* %733, align 2, !dbg !913, !tbaa !522
  %735 = add nsw i64 %732, -1, !dbg !914
  %736 = icmp ult i64 %735, 8, !dbg !914
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !916
  %737 = sext i16 %734 to i32, !dbg !913
  br i1 %736, label %761, label %738, !dbg !916

; <label>:738:                                    ; preds = %731
  %739 = and i32 %708, -897, !dbg !917
  br label %770, !dbg !918

; <label>:740:                                    ; preds = %705, %705, %705, %705, %705, %705, %705, %705, %705, %705, %705, %705
  %741 = icmp slt i32 %707, 11, !dbg !919
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !921
  br i1 %741, label %763, label %742, !dbg !921

; <label>:742:                                    ; preds = %740
  %743 = and i32 %708, -897, !dbg !922
  br label %770, !dbg !923

; <label>:744:                                    ; preds = %705, %705
  %745 = trunc i32 %708 to i8, !dbg !924
  %746 = icmp slt i8 %745, 0, !dbg !924
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !926
  br i1 %746, label %747, label %763, !dbg !926

; <label>:747:                                    ; preds = %744
  %748 = and i32 %708, -65665, !dbg !927
  %749 = or i32 %748, 65536, !dbg !929
  br label %770, !dbg !930

; <label>:750:                                    ; preds = %705, %705
  %751 = and i32 %708, 512, !dbg !931
  %752 = icmp eq i32 %751, 0, !dbg !931
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !933
  br i1 %752, label %763, label %753, !dbg !933

; <label>:753:                                    ; preds = %750
  %754 = lshr i32 %708, 16, !dbg !934
  %755 = and i32 %754, 1, !dbg !934
  %756 = zext i32 %755 to i64, !dbg !935
  %757 = getelementptr inbounds i32, i32* %21, i64 %756, !dbg !935
  %758 = icmp eq i32* %706, %757, !dbg !936
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !937
  br i1 %758, label %759, label %763, !dbg !937

; <label>:759:                                    ; preds = %753
  %760 = and i32 %708, -513, !dbg !938
  br label %770, !dbg !940

; <label>:761:                                    ; preds = %731
  %762 = sext i16 %734 to i32, !dbg !913
  br label %763, !dbg !941

; <label>:763:                                    ; preds = %750, %753, %744, %740, %761
  %764 = phi i32 [ %762, %761 ], [ %707, %740 ], [ %707, %744 ], [ %707, %753 ], [ %707, %750 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !941
  br label %767, !dbg !941

; <label>:765:                                    ; preds = %705
  %766 = icmp eq i32 %711, -1, !dbg !942
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !941
  br i1 %766, label %777, label %767, !dbg !941

; <label>:767:                                    ; preds = %763, %765
  %768 = phi i32 [ %764, %763 ], [ %707, %765 ]
  %769 = call i32 @_ungetwc_r(%struct._reent* %0, i32 %711, %struct.__sFILE* %1) #4, !dbg !944
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !944
  br label %777, !dbg !944

; <label>:770:                                    ; preds = %721, %723, %759, %747, %742, %738, %725
  %771 = phi i32 [ %760, %759 ], [ %749, %747 ], [ %743, %742 ], [ %739, %738 ], [ %730, %725 ], [ %722, %721 ], [ %724, %723 ], !dbg !945
  %772 = phi i32 [ 16, %759 ], [ %707, %747 ], [ %707, %742 ], [ %737, %738 ], [ %729, %725 ], [ %718, %721 ], [ %718, %723 ], !dbg !946
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %773 = add nuw nsw i64 %709, 1, !dbg !947
  store i32 %711, i32* %706, align 4, !dbg !948, !tbaa !381
  %774 = add nsw i64 %710, -1, !dbg !949
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !950
  %775 = getelementptr inbounds [40 x i32], [40 x i32]* %6, i64 0, i64 %773, !dbg !365
  %776 = icmp eq i64 %774, 0, !dbg !891
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !891
  br i1 %776, label %777, label %705, !dbg !891, !llvm.loop !951

; <label>:777:                                    ; preds = %770, %765, %767
  %778 = phi i64 [ %709, %767 ], [ %709, %765 ], [ 1, %770 ]
  %779 = phi i32 [ %708, %767 ], [ %708, %765 ], [ %771, %770 ]
  %780 = phi i32* [ %706, %767 ], [ %706, %765 ], [ %775, %770 ]
  %781 = phi i32 [ %768, %767 ], [ %707, %765 ], [ %772, %770 ], !dbg !953
  %782 = and i32 %779, 256, !dbg !954
  %783 = icmp eq i32 %782, 0, !dbg !954
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !956
  br i1 %783, label %790, label %784, !dbg !956

; <label>:784:                                    ; preds = %777
  %785 = icmp eq i64 %778, 0, !dbg !957
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !960
  br i1 %785, label %921, label %786, !dbg !960

; <label>:786:                                    ; preds = %784
  %787 = getelementptr inbounds i32, i32* %780, i64 -1, !dbg !961
  %788 = load i32, i32* %787, align 4, !dbg !962, !tbaa !381
  %789 = call i32 @_ungetwc_r(%struct._reent* %0, i32 %788, %struct.__sFILE* %1) #4, !dbg !963
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !963
  br label %921, !dbg !963

; <label>:790:                                    ; preds = %777
  %791 = getelementptr inbounds i32, i32* %780, i64 -1, !dbg !964
  %792 = load i32, i32* %791, align 4, !dbg !964, !tbaa !381
  %793 = or i32 %792, 32, !dbg !965
  %794 = icmp eq i32 %793, 120, !dbg !965
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !965
  br i1 %794, label %795, label %797, !dbg !965

; <label>:795:                                    ; preds = %790
  %796 = call i32 @_ungetwc_r(%struct._reent* %0, i32 %792, %struct.__sFILE* %1) #4, !dbg !967
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !969
  br label %797, !dbg !969

; <label>:797:                                    ; preds = %790, %795
  %798 = phi i32* [ %791, %795 ], [ %780, %790 ], !dbg !970
  %799 = and i32 %779, 16, !dbg !971
  %800 = icmp eq i32 %799, 0, !dbg !972
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !973
  br i1 %800, label %801, label %893, !dbg !973

; <label>:801:                                    ; preds = %797
  store i32 0, i32* %798, align 4, !dbg !974, !tbaa !381
  %802 = call i64 %244(%struct._reent* %0, i32* nonnull %20, i32** null, i32 %781) #4, !dbg !975, !callees !976
  %803 = and i32 %779, 32, !dbg !978
  %804 = icmp eq i32 %803, 0, !dbg !978
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !979
  br i1 %804, label %821, label %805, !dbg !979

; <label>:805:                                    ; preds = %801
  %806 = load i32, i32* %17, align 8, !dbg !980
  %807 = icmp ult i32 %806, 41, !dbg !980
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !980
  br i1 %807, label %808, label %813, !dbg !980

; <label>:808:                                    ; preds = %805
  %809 = load i8*, i8** %18, align 8, !dbg !980
  %810 = sext i32 %806 to i64, !dbg !980
  %811 = getelementptr i8, i8* %809, i64 %810, !dbg !980
  %812 = add i32 %806, 8, !dbg !980
  store i32 %812, i32* %17, align 8, !dbg !980
  br label %816, !dbg !980

; <label>:813:                                    ; preds = %805
  %814 = load i8*, i8** %19, align 8, !dbg !980
  %815 = getelementptr i8, i8* %814, i64 8, !dbg !980
  store i8* %815, i8** %19, align 8, !dbg !980
  br label %816, !dbg !980

; <label>:816:                                    ; preds = %813, %808
  %817 = phi i8* [ %811, %808 ], [ %814, %813 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !980
  %818 = bitcast i8* %817 to i8***, !dbg !980
  %819 = load i8**, i8*** %818, align 8, !dbg !980
  %820 = inttoptr i64 %802 to i8*, !dbg !982
  store i8* %820, i8** %819, align 8, !dbg !983, !tbaa !984
  br label %891, !dbg !985

; <label>:821:                                    ; preds = %801
  %822 = and i32 %779, 8, !dbg !986
  %823 = icmp eq i32 %822, 0, !dbg !986
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !988
  br i1 %823, label %840, label %824, !dbg !988

; <label>:824:                                    ; preds = %821
  %825 = load i32, i32* %17, align 8, !dbg !989
  %826 = icmp ult i32 %825, 41, !dbg !989
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !989
  br i1 %826, label %827, label %832, !dbg !989

; <label>:827:                                    ; preds = %824
  %828 = load i8*, i8** %18, align 8, !dbg !989
  %829 = sext i32 %825 to i64, !dbg !989
  %830 = getelementptr i8, i8* %828, i64 %829, !dbg !989
  %831 = add i32 %825, 8, !dbg !989
  store i32 %831, i32* %17, align 8, !dbg !989
  br label %835, !dbg !989

; <label>:832:                                    ; preds = %824
  %833 = load i8*, i8** %19, align 8, !dbg !989
  %834 = getelementptr i8, i8* %833, i64 8, !dbg !989
  store i8* %834, i8** %19, align 8, !dbg !989
  br label %835, !dbg !989

; <label>:835:                                    ; preds = %832, %827
  %836 = phi i8* [ %830, %827 ], [ %833, %832 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !989
  %837 = bitcast i8* %836 to i8**, !dbg !989
  %838 = load i8*, i8** %837, align 8, !dbg !989
  %839 = trunc i64 %802 to i8, !dbg !991
  store i8 %839, i8* %838, align 1, !dbg !992, !tbaa !513
  br label %891, !dbg !993

; <label>:840:                                    ; preds = %821
  %841 = and i32 %779, 4, !dbg !994
  %842 = icmp eq i32 %841, 0, !dbg !994
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !996
  br i1 %842, label %859, label %843, !dbg !996

; <label>:843:                                    ; preds = %840
  %844 = load i32, i32* %17, align 8, !dbg !997
  %845 = icmp ult i32 %844, 41, !dbg !997
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !997
  br i1 %845, label %846, label %851, !dbg !997

; <label>:846:                                    ; preds = %843
  %847 = load i8*, i8** %18, align 8, !dbg !997
  %848 = sext i32 %844 to i64, !dbg !997
  %849 = getelementptr i8, i8* %847, i64 %848, !dbg !997
  %850 = add i32 %844, 8, !dbg !997
  store i32 %850, i32* %17, align 8, !dbg !997
  br label %854, !dbg !997

; <label>:851:                                    ; preds = %843
  %852 = load i8*, i8** %19, align 8, !dbg !997
  %853 = getelementptr i8, i8* %852, i64 8, !dbg !997
  store i8* %853, i8** %19, align 8, !dbg !997
  br label %854, !dbg !997

; <label>:854:                                    ; preds = %851, %846
  %855 = phi i8* [ %849, %846 ], [ %852, %851 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !997
  %856 = bitcast i8* %855 to i16**, !dbg !997
  %857 = load i16*, i16** %856, align 8, !dbg !997
  %858 = trunc i64 %802 to i16, !dbg !999
  store i16 %858, i16* %857, align 2, !dbg !1000, !tbaa !522
  br label %891, !dbg !1001

; <label>:859:                                    ; preds = %840
  %860 = and i32 %779, 1, !dbg !1002
  %861 = icmp eq i32 %860, 0, !dbg !1002
  %862 = load i32, i32* %17, align 8, !dbg !1004
  %863 = icmp ult i32 %862, 41, !dbg !1004
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1006
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1007
  br i1 %861, label %877, label %864, !dbg !1006

; <label>:864:                                    ; preds = %859
  br i1 %863, label %865, label %870, !dbg !1009

; <label>:865:                                    ; preds = %864
  %866 = load i8*, i8** %18, align 8, !dbg !1009
  %867 = sext i32 %862 to i64, !dbg !1009
  %868 = getelementptr i8, i8* %866, i64 %867, !dbg !1009
  %869 = add i32 %862, 8, !dbg !1009
  store i32 %869, i32* %17, align 8, !dbg !1009
  br label %873, !dbg !1009

; <label>:870:                                    ; preds = %864
  %871 = load i8*, i8** %19, align 8, !dbg !1009
  %872 = getelementptr i8, i8* %871, i64 8, !dbg !1009
  store i8* %872, i8** %19, align 8, !dbg !1009
  br label %873, !dbg !1009

; <label>:873:                                    ; preds = %870, %865
  %874 = phi i8* [ %868, %865 ], [ %871, %870 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1009
  %875 = bitcast i8* %874 to i64**, !dbg !1009
  %876 = load i64*, i64** %875, align 8, !dbg !1009
  store i64 %802, i64* %876, align 8, !dbg !1010, !tbaa !535
  br label %891, !dbg !1011

; <label>:877:                                    ; preds = %859
  br i1 %863, label %878, label %883, !dbg !1012

; <label>:878:                                    ; preds = %877
  %879 = load i8*, i8** %18, align 8, !dbg !1012
  %880 = sext i32 %862 to i64, !dbg !1012
  %881 = getelementptr i8, i8* %879, i64 %880, !dbg !1012
  %882 = add i32 %862, 8, !dbg !1012
  store i32 %882, i32* %17, align 8, !dbg !1012
  br label %886, !dbg !1012

; <label>:883:                                    ; preds = %877
  %884 = load i8*, i8** %19, align 8, !dbg !1012
  %885 = getelementptr i8, i8* %884, i64 8, !dbg !1012
  store i8* %885, i8** %19, align 8, !dbg !1012
  br label %886, !dbg !1012

; <label>:886:                                    ; preds = %883, %878
  %887 = phi i8* [ %881, %878 ], [ %884, %883 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1012
  %888 = bitcast i8* %887 to i32**, !dbg !1012
  %889 = load i32*, i32** %888, align 8, !dbg !1012
  %890 = trunc i64 %802 to i32, !dbg !1013
  store i32 %890, i32* %889, align 4, !dbg !1014, !tbaa !381
  br label %891

; <label>:891:                                    ; preds = %835, %873, %886, %854, %816
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %892 = add nsw i32 %33, 1, !dbg !1015
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1016
  br label %893, !dbg !1016

; <label>:893:                                    ; preds = %891, %797
  %894 = phi i32 [ %892, %891 ], [ %33, %797 ], !dbg !543
  %895 = ptrtoint i32* %798 to i64, !dbg !1017
  %896 = sub i64 %895, %22, !dbg !1017
  %897 = lshr exact i64 %896, 2, !dbg !1017
  %898 = trunc i64 %897 to i32, !dbg !1018
  %899 = add i32 %268, %898, !dbg !1018
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1019
  br label %901, !dbg !1019

; <label>:900:                                    ; preds = %267
  unreachable

; <label>:901:                                    ; preds = %544, %893, %374, %378, %313, %317, %688, %693
  %902 = phi i32* [ %34, %688 ], [ %694, %693 ], [ %798, %893 ], [ %545, %544 ], [ %315, %313 ], [ %315, %317 ], [ %34, %374 ], [ %34, %378 ]
  %903 = phi i32 [ %33, %688 ], [ %695, %693 ], [ %894, %893 ], [ %547, %544 ], [ %33, %313 ], [ %318, %317 ], [ %33, %374 ], [ %379, %378 ]
  %904 = phi i32 [ %690, %688 ], [ %696, %693 ], [ %899, %893 ], [ %549, %544 ], [ %316, %313 ], [ %316, %317 ], [ %377, %374 ], [ %377, %378 ]
  %905 = phi i32 [ %243, %688 ], [ %243, %693 ], [ %781, %893 ], [ %243, %544 ], [ %243, %313 ], [ %243, %317 ], [ %243, %374 ], [ %243, %378 ]
  %906 = phi i8* [ %689, %688 ], [ %697, %693 ], [ %26, %893 ], [ %548, %544 ], [ %26, %313 ], [ %26, %317 ], [ %375, %374 ], [ %375, %378 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1020
  %907 = load i32, i32* %248, align 4, !dbg !380, !tbaa !381
  %908 = icmp eq i32 %907, 0, !dbg !383
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !385
  br i1 %908, label %921, label %23, !dbg !385, !llvm.loop !403

; <label>:909:                                    ; preds = %372, %311, %71, %657, %654, %519, %516, %352, %349, %255, %78
  %910 = load i32, i32* %8, align 4, !dbg !1021, !tbaa !381
  %911 = call i32 @pthread_setcancelstate(i32 %910, i32* nonnull %8) #4, !dbg !1021
  %912 = icmp eq i32 %33, 0, !dbg !1022
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1023
  br i1 %912, label %919, label %913, !dbg !1023

; <label>:913:                                    ; preds = %909
  %914 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 3, !dbg !1024
  %915 = load i16, i16* %914, align 8, !dbg !1024, !tbaa !1025
  %916 = and i16 %915, 64, !dbg !1029
  %917 = icmp eq i16 %916, 0, !dbg !1029
  %918 = select i1 %917, i32 %33, i32 -1, !dbg !1022
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1022
  br label %919, !dbg !1022

; <label>:919:                                    ; preds = %913, %909, %236
  %920 = phi i32 [ -1, %236 ], [ -1, %909 ], [ %918, %913 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !401
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #6, !dbg !1030
  br label %925

; <label>:921:                                    ; preds = %901, %416, %463, %80, %59, %65, %4, %784, %786
  %922 = phi i32 [ %33, %784 ], [ %33, %786 ], [ 0, %4 ], [ %33, %65 ], [ %33, %59 ], [ %33, %80 ], [ %903, %901 ], [ %33, %416 ], [ %33, %463 ]
  %923 = load i32, i32* %8, align 4, !dbg !1031, !tbaa !381
  %924 = call i32 @pthread_setcancelstate(i32 %923, i32* nonnull %8) #4, !dbg !1031
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1030
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #6, !dbg !1030
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %925, !dbg !1032

; <label>:925:                                    ; preds = %919, %921
  %926 = phi i32 [ %922, %921 ], [ %920, %919 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %11) #6, !dbg !1033
  call void @llvm.lifetime.end.p0i8(i64 160, i8* nonnull %10) #6, !dbg !1033
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #6, !dbg !1033
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1033
  ret i32 %926, !dbg !1033
}

; Function Attrs: noredzone nounwind
define dso_local i32 @__svfiwscanf(%struct.__sFILE*, i32*, %struct.__va_list_tag*) local_unnamed_addr #0 !dbg !1034 {
  %4 = tail call %struct._reent* @__getreent() #4, !dbg !1042
  %5 = tail call i32 @__svfiwscanf_r(%struct._reent* %4, %struct.__sFILE* %0, i32* %1, %struct.__va_list_tag* %2) #5, !dbg !1043
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1044
  ret i32 %5, !dbg !1044
}

; Function Attrs: noredzone nounwind
define dso_local i32 @_vfiwscanf_r(%struct._reent*, %struct.__sFILE*, i32*, %struct.__va_list_tag*) local_unnamed_addr #0 !dbg !1045 {
  %5 = icmp eq %struct._reent* %0, null, !dbg !1055
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1055
  br i1 %5, label %11, label %6, !dbg !1055

; <label>:6:                                      ; preds = %4
  %7 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 8, !dbg !1055
  %8 = load i32, i32* %7, align 8, !dbg !1055, !tbaa !351
  %9 = icmp eq i32 %8, 0, !dbg !1055
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1054
  br i1 %9, label %10, label %11, !dbg !1054

; <label>:10:                                     ; preds = %6
  tail call void @__sinit(%struct._reent* nonnull %0) #4, !dbg !1055
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1055
  br label %11, !dbg !1055

; <label>:11:                                     ; preds = %6, %4, %10
  %12 = tail call i32 @__svfiwscanf_r(%struct._reent* %0, %struct.__sFILE* %1, i32* %2, %struct.__va_list_tag* %3) #5, !dbg !1057
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1058
  ret i32 %12, !dbg !1058
}

; Function Attrs: noredzone
declare dso_local i32 @pthread_setcancelstate(i32, i32*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @iswspace(i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @_fgetwc_r(%struct._reent*, %struct.__sFILE*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @_ungetwc_r(%struct._reent*, i32, %struct.__sFILE*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @_wcstol_r(%struct._reent*, i32*, i32**, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @_wcstoul_r(%struct._reent*, i32*, i32**, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @__locale_mb_cur_max() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @_wcrtomb_r(%struct._reent*, i8*, i32, %struct._mbstate_t*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32* @wmemchr(i32*, i32, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @wcrtomb(i8*, i32, %struct._mbstate_t*) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin noredzone nounwind }
attributes #5 = { nobuiltin noredzone }
attributes #6 = { nounwind }

!llvm.module.flags = !{!329, !330, !331}
!llvm.ident = !{!332}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "basefix", scope: !2, file: !3, line: 429, type: !325, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "__svfiwscanf_r", scope: !3, file: !3, line: 377, type: !4, isLocal: false, isDefinition: true, scopeLine: 382, flags: DIFlagPrototyped, isOptimized: true, unit: !239, retainedNodes: !273)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/vfwscanf.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !7, !226, !229, !232}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !9, line: 569, size: 14912, elements: !10)
!9 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!10 = !{!11, !12, !94, !95, !96, !97, !101, !102, !105, !106, !110, !122, !123, !124, !126, !127, !128, !190, !211, !212, !217, !224}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !8, file: !9, line: 571, baseType: !6, size: 32)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !8, file: !9, line: 576, baseType: !13, size: 64, offset: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !9, line: 287, baseType: !15)
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !9, line: 181, size: 1408, elements: !16)
!16 = !{!17, !20, !21, !22, !24, !25, !30, !31, !33, !42, !48, !53, !57, !58, !59, !60, !64, !68, !69, !70, !72, !73, !77, !93}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !15, file: !9, line: 182, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !15, file: !9, line: 183, baseType: !6, size: 32, offset: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !15, file: !9, line: 184, baseType: !6, size: 32, offset: 96)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !15, file: !9, line: 185, baseType: !23, size: 16, offset: 128)
!23 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !15, file: !9, line: 186, baseType: !23, size: 16, offset: 144)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !15, file: !9, line: 187, baseType: !26, size: 128, offset: 192)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !9, line: 117, size: 128, elements: !27)
!27 = !{!28, !29}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !26, file: !9, line: 118, baseType: !18, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !26, file: !9, line: 119, baseType: !6, size: 32, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !15, file: !9, line: 188, baseType: !6, size: 32, offset: 320)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !15, file: !9, line: 195, baseType: !32, size: 64, offset: 384)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !15, file: !9, line: 197, baseType: !34, size: 64, offset: 448)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DISubroutineType(types: !36)
!36 = !{!37, !7, !32, !40, !6}
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !38, line: 145, baseType: !39)
!38 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!39 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !15, file: !9, line: 199, baseType: !43, size: 64, offset: 512)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DISubroutineType(types: !45)
!45 = !{!37, !7, !32, !46, !6}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !15, file: !9, line: 202, baseType: !49, size: 64, offset: 576)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DISubroutineType(types: !51)
!51 = !{!52, !7, !32, !52, !6}
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !38, line: 114, baseType: !39)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !15, file: !9, line: 203, baseType: !54, size: 64, offset: 640)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DISubroutineType(types: !56)
!56 = !{!6, !7, !32}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !15, file: !9, line: 206, baseType: !26, size: 128, offset: 704)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !15, file: !9, line: 207, baseType: !18, size: 64, offset: 832)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !15, file: !9, line: 208, baseType: !6, size: 32, offset: 896)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !15, file: !9, line: 211, baseType: !61, size: 24, offset: 928)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 24, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 3)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !15, file: !9, line: 212, baseType: !65, size: 8, offset: 952)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 8, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 1)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !15, file: !9, line: 215, baseType: !26, size: 128, offset: 960)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !15, file: !9, line: 218, baseType: !6, size: 32, offset: 1088)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !15, file: !9, line: 219, baseType: !71, size: 64, offset: 1152)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !38, line: 44, baseType: !39)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !15, file: !9, line: 222, baseType: !7, size: 64, offset: 1216)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !15, file: !9, line: 226, baseType: !74, size: 32, offset: 1280)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !38, line: 175, baseType: !75)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !76, line: 12, baseType: !6)
!76 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !15, file: !9, line: 228, baseType: !78, size: 64, offset: 1312)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !38, line: 171, baseType: !79)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 163, size: 64, elements: !80)
!80 = !{!81, !82}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !79, file: !38, line: 165, baseType: !6, size: 32)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !79, file: !38, line: 170, baseType: !83, size: 32, offset: 32)
!83 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !79, file: !38, line: 166, size: 32, elements: !84)
!84 = !{!85, !89}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !83, file: !38, line: 168, baseType: !86, size: 32)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !87, line: 124, baseType: !88)
!87 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!88 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !83, file: !38, line: 169, baseType: !90, size: 32)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 32, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 4)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !15, file: !9, line: 229, baseType: !6, size: 32, offset: 1376)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !8, file: !9, line: 576, baseType: !13, size: 64, offset: 128)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !8, file: !9, line: 576, baseType: !13, size: 64, offset: 192)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !8, file: !9, line: 578, baseType: !6, size: 32, offset: 256)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !8, file: !9, line: 579, baseType: !98, size: 200, offset: 288)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 200, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 25)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !8, file: !9, line: 582, baseType: !6, size: 32, offset: 512)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !8, file: !9, line: 583, baseType: !103, size: 64, offset: 576)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !9, line: 40, flags: DIFlagFwdDecl)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !8, file: !9, line: 585, baseType: !6, size: 32, offset: 640)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !8, file: !9, line: 587, baseType: !107, size: 64, offset: 704)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DISubroutineType(types: !109)
!109 = !{null, !7}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !8, file: !9, line: 590, baseType: !111, size: 64, offset: 768)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !9, line: 47, size: 256, elements: !113)
!113 = !{!114, !115, !116, !117, !118, !119}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !112, file: !9, line: 49, baseType: !111, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !112, file: !9, line: 50, baseType: !6, size: 32, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !112, file: !9, line: 50, baseType: !6, size: 32, offset: 96)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !112, file: !9, line: 50, baseType: !6, size: 32, offset: 128)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !112, file: !9, line: 50, baseType: !6, size: 32, offset: 160)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !112, file: !9, line: 51, baseType: !120, size: 32, offset: 192)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 32, elements: !66)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !9, line: 25, baseType: !88)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !8, file: !9, line: 591, baseType: !6, size: 32, offset: 832)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !8, file: !9, line: 592, baseType: !111, size: 64, offset: 896)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !8, file: !9, line: 593, baseType: !125, size: 64, offset: 960)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !8, file: !9, line: 596, baseType: !6, size: 32, offset: 1024)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !8, file: !9, line: 597, baseType: !40, size: 64, offset: 1088)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !8, file: !9, line: 632, baseType: !129, size: 2880, offset: 1152)
!129 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !8, file: !9, line: 599, size: 2880, elements: !130)
!130 = !{!131, !181}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !129, file: !9, line: 622, baseType: !132, size: 1728)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !129, file: !9, line: 601, size: 1728, elements: !133)
!133 = !{!134, !135, !136, !140, !152, !153, !155, !163, !164, !165, !166, !170, !174, !175, !176, !177, !178, !179, !180}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !132, file: !9, line: 603, baseType: !88, size: 32)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !132, file: !9, line: 604, baseType: !40, size: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !132, file: !9, line: 605, baseType: !137, size: 208, offset: 128)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 208, elements: !138)
!138 = !{!139}
!139 = !DISubrange(count: 26)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !132, file: !9, line: 606, baseType: !141, size: 288, offset: 352)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !9, line: 55, size: 288, elements: !142)
!142 = !{!143, !144, !145, !146, !147, !148, !149, !150, !151}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !141, file: !9, line: 57, baseType: !6, size: 32)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !141, file: !9, line: 58, baseType: !6, size: 32, offset: 32)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !141, file: !9, line: 59, baseType: !6, size: 32, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !141, file: !9, line: 60, baseType: !6, size: 32, offset: 96)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !141, file: !9, line: 61, baseType: !6, size: 32, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !141, file: !9, line: 62, baseType: !6, size: 32, offset: 160)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !141, file: !9, line: 63, baseType: !6, size: 32, offset: 192)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !141, file: !9, line: 64, baseType: !6, size: 32, offset: 224)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !141, file: !9, line: 65, baseType: !6, size: 32, offset: 256)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !132, file: !9, line: 607, baseType: !6, size: 32, offset: 640)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !132, file: !9, line: 608, baseType: !154, size: 64, offset: 704)
!154 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !132, file: !9, line: 609, baseType: !156, size: 112, offset: 768)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !9, line: 319, size: 112, elements: !157)
!157 = !{!158, !161, !162}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !156, file: !9, line: 320, baseType: !159, size: 48)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 48, elements: !62)
!160 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !156, file: !9, line: 321, baseType: !159, size: 48, offset: 48)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !156, file: !9, line: 322, baseType: !160, size: 16, offset: 96)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !132, file: !9, line: 610, baseType: !78, size: 64, offset: 896)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !132, file: !9, line: 611, baseType: !78, size: 64, offset: 960)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !132, file: !9, line: 612, baseType: !78, size: 64, offset: 1024)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !132, file: !9, line: 613, baseType: !167, size: 64, offset: 1088)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 64, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 8)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !132, file: !9, line: 614, baseType: !171, size: 192, offset: 1152)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 192, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 24)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !132, file: !9, line: 615, baseType: !6, size: 32, offset: 1344)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !132, file: !9, line: 616, baseType: !78, size: 64, offset: 1376)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !132, file: !9, line: 617, baseType: !78, size: 64, offset: 1440)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !132, file: !9, line: 618, baseType: !78, size: 64, offset: 1504)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !132, file: !9, line: 619, baseType: !78, size: 64, offset: 1568)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !132, file: !9, line: 620, baseType: !78, size: 64, offset: 1632)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !132, file: !9, line: 621, baseType: !6, size: 32, offset: 1696)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !129, file: !9, line: 631, baseType: !182, size: 2880)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !129, file: !9, line: 626, size: 2880, elements: !183)
!183 = !{!184, !188}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !182, file: !9, line: 629, baseType: !185, size: 1920)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 1920, elements: !186)
!186 = !{!187}
!187 = !DISubrange(count: 30)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !182, file: !9, line: 630, baseType: !189, size: 960, offset: 1920)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 960, elements: !186)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !8, file: !9, line: 636, baseType: !191, size: 64, offset: 4032)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !9, line: 93, size: 6336, elements: !193)
!193 = !{!194, !195, !196, !203}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !192, file: !9, line: 94, baseType: !191, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !192, file: !9, line: 95, baseType: !6, size: 32, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !192, file: !9, line: 97, baseType: !197, size: 2048, offset: 128)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 2048, elements: !201)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DISubroutineType(types: !200)
!200 = !{null}
!201 = !{!202}
!202 = !DISubrange(count: 32)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !192, file: !9, line: 98, baseType: !204, size: 4160, offset: 2176)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !9, line: 74, size: 4160, elements: !205)
!205 = !{!206, !208, !209, !210}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !204, file: !9, line: 75, baseType: !207, size: 2048)
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 2048, elements: !201)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !204, file: !9, line: 76, baseType: !207, size: 2048, offset: 2048)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !204, file: !9, line: 78, baseType: !121, size: 32, offset: 4096)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !204, file: !9, line: 81, baseType: !121, size: 32, offset: 4128)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !8, file: !9, line: 637, baseType: !192, size: 6336, offset: 4096)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !8, file: !9, line: 641, baseType: !213, size: 64, offset: 10432)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{null, !6}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !8, file: !9, line: 646, baseType: !218, size: 192, offset: 10496)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !9, line: 291, size: 192, elements: !219)
!219 = !{!220, !222, !223}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !218, file: !9, line: 293, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !218, file: !9, line: 294, baseType: !6, size: 32, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !218, file: !9, line: 295, baseType: !13, size: 64, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !8, file: !9, line: 648, baseType: !225, size: 4224, offset: 10688)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 4224, elements: !62)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !228, line: 66, baseType: !14)
!228 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !231)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !87, line: 83, baseType: !6)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !234)
!234 = !{!235, !236, !237, !238}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !233, file: !3, baseType: !88, size: 32)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !233, file: !3, baseType: !88, size: 32, offset: 32)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !233, file: !3, baseType: !32, size: 64, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !233, file: !3, baseType: !32, size: 64, offset: 128)
!239 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !240, retainedTypes: !258, globals: !272)
!240 = !{!241}
!241 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !242, line: 435, baseType: !6, size: 32, elements: !243)
!242 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread.h", directory: "/root/.unikraft/apps/redis/build")
!243 = !{!244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257}
!244 = !DIEnumerator(name: "PTHREAD_CREATE_JOINABLE", value: 0)
!245 = !DIEnumerator(name: "PTHREAD_CREATE_DETACHED", value: 1)
!246 = !DIEnumerator(name: "PTHREAD_INHERIT_SCHED", value: 0)
!247 = !DIEnumerator(name: "PTHREAD_EXPLICIT_SCHED", value: 1)
!248 = !DIEnumerator(name: "PTHREAD_SCOPE_PROCESS", value: 0)
!249 = !DIEnumerator(name: "PTHREAD_SCOPE_SYSTEM", value: 1)
!250 = !DIEnumerator(name: "PTHREAD_SCOPE_PROCESS_VFPU", value: 2)
!251 = !DIEnumerator(name: "PTHREAD_CANCEL_ENABLE", value: 0)
!252 = !DIEnumerator(name: "PTHREAD_CANCEL_DISABLE", value: 1)
!253 = !DIEnumerator(name: "PTHREAD_CANCEL_ASYNCHRONOUS", value: 0)
!254 = !DIEnumerator(name: "PTHREAD_CANCEL_DEFERRED", value: 1)
!255 = !DIEnumerator(name: "PTHREAD_PROCESS_PRIVATE", value: 0)
!256 = !DIEnumerator(name: "PTHREAD_PROCESS_SHARED", value: 1)
!257 = !DIEnumerator(name: "PTHREAD_BARRIER_SERIAL_THREAD", value: -1)
!258 = !{!259, !86, !260, !231, !32, !265, !264, !268}
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!263, !7, !229, !264, !6}
!263 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !266, line: 40, baseType: !267)
!266 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !38, line: 129, baseType: !263)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !269, line: 82, baseType: !270)
!269 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintptr_t", file: !271, line: 232, baseType: !263)
!271 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!272 = !{!0}
!273 = !{!274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !291, !292, !296, !297, !298, !299, !300, !301, !302, !304, !305, !307, !309, !311, !313, !321}
!274 = !DILocalVariable(name: "rptr", arg: 1, scope: !2, file: !3, line: 377, type: !7)
!275 = !DILocalVariable(name: "fp", arg: 2, scope: !2, file: !3, line: 377, type: !226)
!276 = !DILocalVariable(name: "fmt0", arg: 3, scope: !2, file: !3, line: 377, type: !229)
!277 = !DILocalVariable(name: "ap", arg: 4, scope: !2, file: !3, line: 377, type: !232)
!278 = !DILocalVariable(name: "fmt", scope: !2, file: !3, line: 383, type: !259)
!279 = !DILocalVariable(name: "c", scope: !2, file: !3, line: 384, type: !86)
!280 = !DILocalVariable(name: "width", scope: !2, file: !3, line: 385, type: !265)
!281 = !DILocalVariable(name: "p", scope: !2, file: !3, line: 386, type: !259)
!282 = !DILocalVariable(name: "n", scope: !2, file: !3, line: 387, type: !6)
!283 = !DILocalVariable(name: "flags", scope: !2, file: !3, line: 388, type: !6)
!284 = !DILocalVariable(name: "p0", scope: !2, file: !3, line: 389, type: !259)
!285 = !DILocalVariable(name: "nassigned", scope: !2, file: !3, line: 390, type: !6)
!286 = !DILocalVariable(name: "nread", scope: !2, file: !3, line: 391, type: !6)
!287 = !DILocalVariable(name: "base", scope: !2, file: !3, line: 399, type: !6)
!288 = !DILocalVariable(name: "mbs", scope: !2, file: !3, line: 401, type: !289)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !290, line: 86, baseType: !78)
!290 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/wchar.h", directory: "/root/.unikraft/apps/redis/build")
!291 = !DILocalVariable(name: "ccfn", scope: !2, file: !3, line: 404, type: !260)
!292 = !DILocalVariable(name: "buf", scope: !2, file: !3, line: 405, type: !293)
!293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, size: 1280, elements: !294)
!294 = !{!295}
!295 = !DISubrange(count: 40)
!296 = !DILocalVariable(name: "ccls", scope: !2, file: !3, line: 406, type: !229)
!297 = !DILocalVariable(name: "ccle", scope: !2, file: !3, line: 407, type: !229)
!298 = !DILocalVariable(name: "cclcompl", scope: !2, file: !3, line: 408, type: !6)
!299 = !DILocalVariable(name: "wi", scope: !2, file: !3, line: 409, type: !86)
!300 = !DILocalVariable(name: "mbp", scope: !2, file: !3, line: 410, type: !40)
!301 = !DILocalVariable(name: "nconv", scope: !2, file: !3, line: 411, type: !265)
!302 = !DILocalVariable(name: "mbbuf", scope: !2, file: !3, line: 412, type: !303)
!303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 8, elements: !66)
!304 = !DILocalVariable(name: "cp", scope: !2, file: !3, line: 414, type: !40)
!305 = !DILocalVariable(name: "sp", scope: !2, file: !3, line: 415, type: !306)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!307 = !DILocalVariable(name: "ip", scope: !2, file: !3, line: 416, type: !308)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!309 = !DILocalVariable(name: "lp", scope: !2, file: !3, line: 423, type: !310)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!311 = !DILocalVariable(name: "__oldfpcancel", scope: !312, file: !3, line: 469, type: !6)
!312 = distinct !DILexicalBlock(scope: !2, file: !3, line: 469, column: 3)
!313 = !DILocalVariable(name: "res", scope: !314, file: !3, line: 1104, type: !263)
!314 = distinct !DILexicalBlock(scope: !315, file: !3, line: 1103, column: 6)
!315 = distinct !DILexicalBlock(scope: !316, file: !3, line: 1102, column: 8)
!316 = distinct !DILexicalBlock(scope: !317, file: !3, line: 971, column: 2)
!317 = distinct !DILexicalBlock(scope: !318, file: !3, line: 771, column: 2)
!318 = distinct !DILexicalBlock(scope: !319, file: !3, line: 477, column: 5)
!319 = distinct !DILexicalBlock(scope: !320, file: !3, line: 476, column: 3)
!320 = distinct !DILexicalBlock(scope: !312, file: !3, line: 476, column: 3)
!321 = !DILocalVariable(name: "vp", scope: !322, file: !3, line: 1110, type: !324)
!322 = distinct !DILexicalBlock(scope: !323, file: !3, line: 1109, column: 3)
!323 = distinct !DILexicalBlock(scope: !314, file: !3, line: 1108, column: 12)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 272, elements: !327)
!326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!327 = !{!328}
!328 = !DISubrange(count: 17)
!329 = !{i32 2, !"Dwarf Version", i32 4}
!330 = !{i32 2, !"Debug Info Version", i32 3}
!331 = !{i32 1, !"wchar_size", i32 4}
!332 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!333 = distinct !DISubprogram(name: "vfiwscanf", scope: !3, file: !3, line: 262, type: !334, isLocal: false, isDefinition: true, scopeLine: 266, flags: DIFlagPrototyped, isOptimized: true, unit: !239, retainedNodes: !338)
!334 = !DISubroutineType(types: !335)
!335 = !{!6, !336, !337, !232}
!336 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !226)
!337 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !229)
!338 = !{!339, !340, !341, !342, !343}
!339 = !DILocalVariable(name: "fp", arg: 1, scope: !333, file: !3, line: 262, type: !336)
!340 = !DILocalVariable(name: "fmt", arg: 2, scope: !333, file: !3, line: 262, type: !337)
!341 = !DILocalVariable(name: "ap", arg: 3, scope: !333, file: !3, line: 262, type: !232)
!342 = !DILocalVariable(name: "reent", scope: !333, file: !3, line: 267, type: !7)
!343 = !DILocalVariable(name: "_check_init_ptr", scope: !344, file: !3, line: 269, type: !7)
!344 = distinct !DILexicalBlock(scope: !333, file: !3, line: 269, column: 3)
!345 = !DILocation(line: 262, column: 1, scope: !333)
!346 = !DILocation(line: 267, column: 26, scope: !333)
!347 = !DILocation(line: 267, column: 18, scope: !333)
!348 = !DILocation(line: 269, column: 3, scope: !344)
!349 = !DILocation(line: 269, column: 3, scope: !350)
!350 = distinct !DILexicalBlock(scope: !344, file: !3, line: 269, column: 3)
!351 = !{!352, !353, i64 80}
!352 = !{!"_reent", !353, i64 0, !356, i64 8, !356, i64 16, !356, i64 24, !353, i64 32, !354, i64 36, !353, i64 64, !356, i64 72, !353, i64 80, !356, i64 88, !356, i64 96, !353, i64 104, !356, i64 112, !356, i64 120, !353, i64 128, !356, i64 136, !354, i64 144, !356, i64 504, !357, i64 512, !356, i64 1304, !359, i64 1312, !354, i64 1336}
!353 = !{!"int", !354, i64 0}
!354 = !{!"omnipotent char", !355, i64 0}
!355 = !{!"Simple C/C++ TBAA"}
!356 = !{!"any pointer", !354, i64 0}
!357 = !{!"_atexit", !356, i64 0, !353, i64 8, !354, i64 16, !358, i64 272}
!358 = !{!"_on_exit_args", !354, i64 0, !354, i64 256, !353, i64 512, !353, i64 516}
!359 = !{!"_glue", !356, i64 0, !353, i64 8, !356, i64 16}
!360 = !DILocation(line: 270, column: 10, scope: !333)
!361 = !DILocation(line: 270, column: 3, scope: !333)
!362 = !DILocation(line: 377, column: 1, scope: !2)
!363 = !DILocation(line: 383, column: 21, scope: !2)
!364 = !DILocation(line: 386, column: 21, scope: !2)
!365 = !DILocation(line: 399, column: 7, scope: !2)
!366 = !DILocation(line: 401, column: 3, scope: !2)
!367 = !DILocation(line: 404, column: 19, scope: !2)
!368 = !DILocation(line: 405, column: 3, scope: !2)
!369 = !DILocation(line: 405, column: 11, scope: !2)
!370 = !DILocation(line: 408, column: 7, scope: !2)
!371 = !DILocation(line: 410, column: 9, scope: !2)
!372 = !DILocation(line: 412, column: 3, scope: !2)
!373 = !DILocation(line: 412, column: 8, scope: !2)
!374 = !DILocation(line: 469, column: 3, scope: !312)
!375 = !DILocation(line: 390, column: 7, scope: !2)
!376 = !DILocation(line: 391, column: 7, scope: !2)
!377 = !DILocation(line: 407, column: 18, scope: !2)
!378 = !DILocation(line: 406, column: 18, scope: !2)
!379 = !DILocation(line: 476, column: 3, scope: !312)
!380 = !DILocation(line: 478, column: 11, scope: !318)
!381 = !{!353, !353, i64 0}
!382 = !DILocation(line: 384, column: 19, scope: !2)
!383 = !DILocation(line: 479, column: 13, scope: !384)
!384 = distinct !DILexicalBlock(scope: !318, file: !3, line: 479, column: 11)
!385 = !DILocation(line: 479, column: 11, scope: !318)
!386 = !DILocation(line: 478, column: 15, scope: !318)
!387 = !DILocation(line: 481, column: 11, scope: !388)
!388 = distinct !DILexicalBlock(scope: !318, file: !3, line: 481, column: 11)
!389 = !DILocation(line: 481, column: 11, scope: !318)
!390 = !DILocation(line: 483, column: 16, scope: !391)
!391 = distinct !DILexicalBlock(scope: !388, file: !3, line: 482, column: 2)
!392 = !DILocation(line: 483, column: 38, scope: !391)
!393 = !DILocation(line: 483, column: 46, scope: !391)
!394 = !DILocation(line: 483, column: 49, scope: !391)
!395 = !DILocation(line: 483, column: 4, scope: !391)
!396 = distinct !{!396, !395, !397}
!397 = !DILocation(line: 484, column: 6, scope: !391)
!398 = !DILocation(line: 485, column: 8, scope: !391)
!399 = !DILocation(line: 486, column: 6, scope: !400)
!400 = distinct !DILexicalBlock(scope: !391, file: !3, line: 485, column: 8)
!401 = !DILocation(line: 0, scope: !402)
!402 = distinct !DILexicalBlock(scope: !318, file: !3, line: 507, column: 2)
!403 = distinct !{!403, !404, !405}
!404 = !DILocation(line: 476, column: 3, scope: !320)
!405 = !DILocation(line: 1473, column: 5, scope: !320)
!406 = !DILocation(line: 489, column: 13, scope: !407)
!407 = distinct !DILexicalBlock(scope: !318, file: !3, line: 489, column: 11)
!408 = !DILocation(line: 489, column: 11, scope: !318)
!409 = !DILocation(line: 0, scope: !318)
!410 = !DILocation(line: 388, column: 16, scope: !2)
!411 = !DILocation(line: 385, column: 19, scope: !2)
!412 = !DILocation(line: 504, column: 15, scope: !318)
!413 = !DILocation(line: 504, column: 11, scope: !318)
!414 = !DILocation(line: 506, column: 7, scope: !318)
!415 = !DILocation(line: 510, column: 14, scope: !416)
!416 = distinct !DILexicalBlock(scope: !402, file: !3, line: 510, column: 8)
!417 = !DILocation(line: 409, column: 10, scope: !2)
!418 = !DILocation(line: 510, column: 36, scope: !416)
!419 = !DILocation(line: 510, column: 8, scope: !402)
!420 = !DILocation(line: 512, column: 11, scope: !421)
!421 = distinct !DILexicalBlock(scope: !402, file: !3, line: 512, column: 8)
!422 = !DILocation(line: 512, column: 8, scope: !402)
!423 = !DILocation(line: 514, column: 8, scope: !424)
!424 = distinct !DILexicalBlock(scope: !421, file: !3, line: 513, column: 6)
!425 = !DILocation(line: 515, column: 8, scope: !424)
!426 = !DILocation(line: 517, column: 9, scope: !402)
!427 = !DILocation(line: 518, column: 4, scope: !402)
!428 = !DILocation(line: 521, column: 10, scope: !402)
!429 = !DILocation(line: 522, column: 4, scope: !402)
!430 = !DILocation(line: 525, column: 8, scope: !431)
!431 = distinct !DILexicalBlock(scope: !402, file: !3, line: 525, column: 8)
!432 = !DILocation(line: 525, column: 13, scope: !431)
!433 = !DILocation(line: 525, column: 8, scope: !402)
!434 = !DILocation(line: 527, column: 8, scope: !435)
!435 = distinct !DILexicalBlock(scope: !431, file: !3, line: 526, column: 6)
!436 = !DILocation(line: 0, scope: !435)
!437 = !DILocation(line: 533, column: 4, scope: !402)
!438 = !DILocation(line: 535, column: 10, scope: !402)
!439 = !DILocation(line: 536, column: 4, scope: !402)
!440 = !DILocation(line: 539, column: 8, scope: !441)
!441 = distinct !DILexicalBlock(scope: !402, file: !3, line: 539, column: 8)
!442 = !DILocation(line: 539, column: 13, scope: !441)
!443 = !DILocation(line: 539, column: 8, scope: !402)
!444 = !DILocation(line: 541, column: 8, scope: !445)
!445 = distinct !DILexicalBlock(scope: !441, file: !3, line: 540, column: 6)
!446 = !DILocation(line: 0, scope: !445)
!447 = !DILocation(line: 547, column: 4, scope: !402)
!448 = !DILocation(line: 551, column: 12, scope: !449)
!449 = distinct !DILexicalBlock(scope: !402, file: !3, line: 550, column: 8)
!450 = !DILocation(line: 554, column: 4, scope: !402)
!451 = !DILocation(line: 563, column: 12, scope: !452)
!452 = distinct !DILexicalBlock(scope: !453, file: !3, line: 562, column: 13)
!453 = distinct !DILexicalBlock(scope: !454, file: !3, line: 560, column: 13)
!454 = distinct !DILexicalBlock(scope: !402, file: !3, line: 556, column: 8)
!455 = !DILocation(line: 570, column: 4, scope: !402)
!456 = !DILocation(line: 578, column: 12, scope: !457)
!457 = distinct !DILexicalBlock(scope: !458, file: !3, line: 577, column: 13)
!458 = distinct !DILexicalBlock(scope: !459, file: !3, line: 575, column: 13)
!459 = distinct !DILexicalBlock(scope: !402, file: !3, line: 572, column: 8)
!460 = !DILocation(line: 585, column: 4, scope: !402)
!461 = !DILocation(line: 598, column: 18, scope: !402)
!462 = !DILocation(line: 598, column: 25, scope: !402)
!463 = !DILocation(line: 598, column: 23, scope: !402)
!464 = !DILocation(line: 598, column: 27, scope: !402)
!465 = !DILocation(line: 599, column: 4, scope: !402)
!466 = !DILocation(line: 630, column: 4, scope: !402)
!467 = !DILocation(line: 636, column: 4, scope: !402)
!468 = !DILocation(line: 640, column: 10, scope: !402)
!469 = !DILocation(line: 644, column: 4, scope: !402)
!470 = !DILocation(line: 663, column: 10, scope: !402)
!471 = !DILocation(line: 663, column: 4, scope: !402)
!472 = !DILocation(line: 669, column: 4, scope: !402)
!473 = !DILocation(line: 673, column: 8, scope: !474)
!474 = distinct !DILexicalBlock(scope: !402, file: !3, line: 673, column: 8)
!475 = !DILocation(line: 673, column: 13, scope: !474)
!476 = !DILocation(line: 673, column: 8, scope: !402)
!477 = !DILocation(line: 676, column: 8, scope: !478)
!478 = distinct !DILexicalBlock(scope: !474, file: !3, line: 674, column: 6)
!479 = !DILocation(line: 677, column: 6, scope: !478)
!480 = !DILocation(line: 680, column: 8, scope: !481)
!481 = distinct !DILexicalBlock(scope: !402, file: !3, line: 680, column: 8)
!482 = !DILocation(line: 0, scope: !474)
!483 = !DILocation(line: 680, column: 13, scope: !481)
!484 = !DILocation(line: 680, column: 8, scope: !402)
!485 = !DILocation(line: 681, column: 9, scope: !481)
!486 = !DILocation(line: 681, column: 6, scope: !481)
!487 = !DILocation(line: 682, column: 11, scope: !402)
!488 = !DILocation(line: 0, scope: !478)
!489 = !DILocation(line: 682, column: 4, scope: !402)
!490 = !DILocation(line: 682, column: 16, scope: !402)
!491 = !DILocation(line: 682, column: 24, scope: !402)
!492 = !DILocation(line: 682, column: 32, scope: !402)
!493 = distinct !{!493, !489, !494}
!494 = !DILocation(line: 683, column: 9, scope: !402)
!495 = !DILocation(line: 686, column: 10, scope: !402)
!496 = !DILocation(line: 688, column: 4, scope: !402)
!497 = !DILocation(line: 692, column: 10, scope: !402)
!498 = !DILocation(line: 692, column: 4, scope: !402)
!499 = !DILocation(line: 697, column: 10, scope: !402)
!500 = !DILocation(line: 699, column: 4, scope: !402)
!501 = !DILocation(line: 702, column: 10, scope: !402)
!502 = !DILocation(line: 706, column: 4, scope: !402)
!503 = !DILocation(line: 709, column: 14, scope: !504)
!504 = distinct !DILexicalBlock(scope: !402, file: !3, line: 709, column: 8)
!505 = !DILocation(line: 709, column: 8, scope: !402)
!506 = !DILocation(line: 712, column: 14, scope: !507)
!507 = distinct !DILexicalBlock(scope: !402, file: !3, line: 712, column: 8)
!508 = !DILocation(line: 712, column: 8, scope: !402)
!509 = !DILocation(line: 714, column: 13, scope: !510)
!510 = distinct !DILexicalBlock(scope: !507, file: !3, line: 713, column: 6)
!511 = !DILocation(line: 414, column: 9, scope: !2)
!512 = !DILocation(line: 715, column: 12, scope: !510)
!513 = !{!354, !354, i64 0}
!514 = !DILocation(line: 716, column: 6, scope: !510)
!515 = !DILocation(line: 719, column: 14, scope: !516)
!516 = distinct !DILexicalBlock(scope: !507, file: !3, line: 719, column: 8)
!517 = !DILocation(line: 719, column: 8, scope: !507)
!518 = !DILocation(line: 721, column: 13, scope: !519)
!519 = distinct !DILexicalBlock(scope: !516, file: !3, line: 720, column: 6)
!520 = !DILocation(line: 415, column: 10, scope: !2)
!521 = !DILocation(line: 722, column: 12, scope: !519)
!522 = !{!523, !523, i64 0}
!523 = !{!"short", !354, i64 0}
!524 = !DILocation(line: 723, column: 6, scope: !519)
!525 = !DILocation(line: 724, column: 19, scope: !526)
!526 = distinct !DILexicalBlock(scope: !516, file: !3, line: 724, column: 13)
!527 = !DILocation(line: 0, scope: !528)
!528 = distinct !DILexicalBlock(scope: !526, file: !3, line: 737, column: 6)
!529 = !DILocation(line: 724, column: 13, scope: !516)
!530 = !DILocation(line: 0, scope: !531)
!531 = distinct !DILexicalBlock(scope: !526, file: !3, line: 725, column: 6)
!532 = !DILocation(line: 726, column: 13, scope: !531)
!533 = !DILocation(line: 423, column: 9, scope: !2)
!534 = !DILocation(line: 727, column: 12, scope: !531)
!535 = !{!536, !536, i64 0}
!536 = !{!"long", !354, i64 0}
!537 = !DILocation(line: 728, column: 6, scope: !531)
!538 = !DILocation(line: 738, column: 13, scope: !528)
!539 = !DILocation(line: 416, column: 8, scope: !2)
!540 = !DILocation(line: 739, column: 12, scope: !528)
!541 = !DILocation(line: 747, column: 4, scope: !402)
!542 = !DILocation(line: 748, column: 4, scope: !402)
!543 = !DILocation(line: 0, scope: !312)
!544 = !DILocation(line: 0, scope: !2)
!545 = !DILocation(line: 758, column: 18, scope: !546)
!546 = distinct !DILexicalBlock(scope: !318, file: !3, line: 758, column: 11)
!547 = !DILocation(line: 758, column: 28, scope: !546)
!548 = !DILocation(line: 758, column: 11, scope: !318)
!549 = !DILocation(line: 760, column: 17, scope: !550)
!550 = distinct !DILexicalBlock(scope: !546, file: !3, line: 759, column: 2)
!551 = !DILocation(line: 760, column: 39, scope: !550)
!552 = !DILocation(line: 760, column: 47, scope: !550)
!553 = !DILocation(line: 762, column: 8, scope: !550)
!554 = !DILocation(line: 760, column: 50, scope: !550)
!555 = !DILocation(line: 760, column: 4, scope: !550)
!556 = !DILocation(line: 761, column: 11, scope: !550)
!557 = distinct !{!557, !555, !556}
!558 = !DILocation(line: 764, column: 4, scope: !550)
!559 = !DILocation(line: 765, column: 2, scope: !550)
!560 = !DILocation(line: 474, column: 9, scope: !312)
!561 = !DILocation(line: 770, column: 7, scope: !318)
!562 = !DILocation(line: 775, column: 14, scope: !563)
!563 = distinct !DILexicalBlock(scope: !317, file: !3, line: 775, column: 8)
!564 = !DILocation(line: 775, column: 8, scope: !317)
!565 = !DILocation(line: 776, column: 6, scope: !563)
!566 = !DILocation(line: 777, column: 21, scope: !567)
!567 = distinct !DILexicalBlock(scope: !317, file: !3, line: 777, column: 15)
!568 = !DILocation(line: 0, scope: !569)
!569 = distinct !DILexicalBlock(scope: !570, file: !3, line: 796, column: 12)
!570 = distinct !DILexicalBlock(scope: !567, file: !3, line: 795, column: 6)
!571 = !DILocation(line: 777, column: 15, scope: !317)
!572 = !DILocation(line: 0, scope: !573)
!573 = distinct !DILexicalBlock(scope: !567, file: !3, line: 778, column: 6)
!574 = !DILocation(line: 779, column: 12, scope: !573)
!575 = !DILocation(line: 780, column: 7, scope: !576)
!576 = distinct !DILexicalBlock(scope: !573, file: !3, line: 779, column: 12)
!577 = !DILocation(line: 780, column: 3, scope: !576)
!578 = !DILocation(line: 0, scope: !576)
!579 = !DILocation(line: 387, column: 16, scope: !2)
!580 = !DILocation(line: 782, column: 8, scope: !573)
!581 = !DILocation(line: 782, column: 28, scope: !573)
!582 = !DILocation(line: 782, column: 20, scope: !573)
!583 = !DILocation(line: 782, column: 37, scope: !573)
!584 = !DILocation(line: 782, column: 59, scope: !573)
!585 = !DILocation(line: 784, column: 9, scope: !586)
!586 = distinct !DILexicalBlock(scope: !573, file: !3, line: 783, column: 3)
!587 = !DILocation(line: 785, column: 9, scope: !588)
!588 = distinct !DILexicalBlock(scope: !586, file: !3, line: 784, column: 9)
!589 = !DILocation(line: 785, column: 12, scope: !588)
!590 = !DILocation(line: 785, column: 7, scope: !588)
!591 = !DILocation(line: 0, scope: !588)
!592 = !DILocation(line: 786, column: 6, scope: !586)
!593 = !DILocation(line: 782, column: 23, scope: !573)
!594 = distinct !{!594, !580, !595}
!595 = !DILocation(line: 787, column: 3, scope: !573)
!596 = !DILocation(line: 788, column: 12, scope: !573)
!597 = !DILocation(line: 788, column: 14, scope: !598)
!598 = distinct !DILexicalBlock(scope: !573, file: !3, line: 788, column: 12)
!599 = !DILocation(line: 790, column: 14, scope: !573)
!600 = !DILocation(line: 791, column: 12, scope: !573)
!601 = !DILocation(line: 792, column: 12, scope: !602)
!602 = distinct !DILexicalBlock(scope: !573, file: !3, line: 791, column: 12)
!603 = !DILocation(line: 792, column: 3, scope: !602)
!604 = !DILocation(line: 796, column: 12, scope: !570)
!605 = !DILocation(line: 797, column: 9, scope: !569)
!606 = !DILocation(line: 797, column: 3, scope: !569)
!607 = !DILocation(line: 799, column: 8, scope: !570)
!608 = !DILocation(line: 800, column: 8, scope: !570)
!609 = !DILocation(line: 800, column: 26, scope: !570)
!610 = !DILocation(line: 800, column: 35, scope: !570)
!611 = !DILocation(line: 800, column: 57, scope: !570)
!612 = !DILocation(line: 802, column: 18, scope: !613)
!613 = distinct !DILexicalBlock(scope: !614, file: !3, line: 802, column: 9)
!614 = distinct !DILexicalBlock(scope: !570, file: !3, line: 801, column: 3)
!615 = !DILocation(line: 802, column: 15, scope: !613)
!616 = !DILocation(line: 802, column: 29, scope: !613)
!617 = !DILocation(line: 802, column: 9, scope: !614)
!618 = !DILocation(line: 401, column: 13, scope: !2)
!619 = !DILocation(line: 804, column: 17, scope: !620)
!620 = distinct !DILexicalBlock(scope: !613, file: !3, line: 803, column: 7)
!621 = !DILocation(line: 411, column: 10, scope: !2)
!622 = !DILocation(line: 805, column: 19, scope: !623)
!623 = distinct !DILexicalBlock(scope: !620, file: !3, line: 805, column: 13)
!624 = !DILocation(line: 805, column: 13, scope: !620)
!625 = !DILocation(line: 810, column: 17, scope: !626)
!626 = distinct !DILexicalBlock(scope: !613, file: !3, line: 809, column: 7)
!627 = !DILocation(line: 811, column: 19, scope: !628)
!628 = distinct !DILexicalBlock(scope: !626, file: !3, line: 811, column: 13)
!629 = !DILocation(line: 811, column: 13, scope: !626)
!630 = !DILocation(line: 813, column: 19, scope: !631)
!631 = distinct !DILexicalBlock(scope: !626, file: !3, line: 813, column: 13)
!632 = !DILocation(line: 813, column: 13, scope: !626)
!633 = !DILocation(line: 815, column: 6, scope: !634)
!634 = distinct !DILexicalBlock(scope: !631, file: !3, line: 814, column: 4)
!635 = !DILocation(line: 816, column: 6, scope: !634)
!636 = !DILocation(line: 818, column: 13, scope: !626)
!637 = !DILocation(line: 819, column: 4, scope: !638)
!638 = distinct !DILexicalBlock(scope: !626, file: !3, line: 818, column: 13)
!639 = !DILocation(line: 821, column: 9, scope: !614)
!640 = !DILocation(line: 822, column: 11, scope: !641)
!641 = distinct !DILexicalBlock(scope: !614, file: !3, line: 821, column: 9)
!642 = !DILocation(line: 822, column: 7, scope: !641)
!643 = !DILocation(line: 0, scope: !641)
!644 = !DILocation(line: 823, column: 11, scope: !614)
!645 = !DILocation(line: 824, column: 6, scope: !614)
!646 = !DILocation(line: 800, column: 21, scope: !570)
!647 = distinct !{!647, !608, !648}
!648 = !DILocation(line: 825, column: 3, scope: !570)
!649 = !DILocation(line: 826, column: 12, scope: !570)
!650 = !DILocation(line: 826, column: 14, scope: !651)
!651 = distinct !DILexicalBlock(scope: !570, file: !3, line: 826, column: 12)
!652 = !DILocation(line: 828, column: 14, scope: !570)
!653 = !DILocation(line: 829, column: 12, scope: !570)
!654 = !DILocation(line: 830, column: 12, scope: !655)
!655 = distinct !DILexicalBlock(scope: !570, file: !3, line: 829, column: 12)
!656 = !DILocation(line: 830, column: 3, scope: !655)
!657 = !DILocation(line: 836, column: 14, scope: !658)
!658 = distinct !DILexicalBlock(scope: !317, file: !3, line: 836, column: 8)
!659 = !DILocation(line: 836, column: 8, scope: !317)
!660 = !DILocation(line: 837, column: 6, scope: !658)
!661 = !DILocation(line: 839, column: 15, scope: !662)
!662 = distinct !DILexicalBlock(scope: !317, file: !3, line: 839, column: 8)
!663 = !DILocation(line: 839, column: 27, scope: !662)
!664 = !DILocation(line: 0, scope: !665)
!665 = distinct !DILexicalBlock(scope: !662, file: !3, line: 850, column: 13)
!666 = !DILocation(line: 0, scope: !662)
!667 = !DILocation(line: 0, scope: !668)
!668 = distinct !DILexicalBlock(scope: !662, file: !3, line: 840, column: 6)
!669 = !DILocation(line: 839, column: 8, scope: !317)
!670 = !DILocation(line: 842, column: 21, scope: !668)
!671 = !DILocation(line: 842, column: 43, scope: !668)
!672 = !DILocation(line: 843, column: 8, scope: !668)
!673 = !DILocation(line: 843, column: 16, scope: !668)
!674 = !DILocation(line: 843, column: 19, scope: !668)
!675 = !DILocation(line: 843, column: 24, scope: !668)
!676 = !DILocation(line: 843, column: 27, scope: !668)
!677 = !DILocation(line: 842, column: 8, scope: !668)
!678 = !DILocation(line: 844, column: 4, scope: !668)
!679 = distinct !{!679, !677, !678}
!680 = !DILocation(line: 845, column: 12, scope: !668)
!681 = !DILocation(line: 846, column: 3, scope: !682)
!682 = distinct !DILexicalBlock(scope: !668, file: !3, line: 845, column: 12)
!683 = !DILocation(line: 0, scope: !682)
!684 = !DILocation(line: 847, column: 14, scope: !685)
!685 = distinct !DILexicalBlock(scope: !668, file: !3, line: 847, column: 12)
!686 = !DILocation(line: 847, column: 12, scope: !668)
!687 = !DILocation(line: 850, column: 13, scope: !662)
!688 = !DILocation(line: 852, column: 17, scope: !689)
!689 = distinct !DILexicalBlock(scope: !665, file: !3, line: 851, column: 6)
!690 = !DILocation(line: 389, column: 21, scope: !2)
!691 = !DILocation(line: 853, column: 8, scope: !689)
!692 = !DILocation(line: 853, column: 21, scope: !689)
!693 = !DILocation(line: 853, column: 43, scope: !689)
!694 = !DILocation(line: 854, column: 8, scope: !689)
!695 = !DILocation(line: 854, column: 16, scope: !689)
!696 = !DILocation(line: 854, column: 19, scope: !689)
!697 = !DILocation(line: 854, column: 24, scope: !689)
!698 = !DILocation(line: 856, column: 12, scope: !689)
!699 = !DILocation(line: 854, column: 27, scope: !689)
!700 = !DILocation(line: 855, column: 5, scope: !689)
!701 = !DILocation(line: 855, column: 8, scope: !689)
!702 = distinct !{!702, !691, !703}
!703 = !DILocation(line: 855, column: 20, scope: !689)
!704 = !DILocation(line: 0, scope: !689)
!705 = !DILocation(line: 857, column: 3, scope: !706)
!706 = distinct !DILexicalBlock(scope: !689, file: !3, line: 856, column: 12)
!707 = !DILocation(line: 0, scope: !706)
!708 = !DILocation(line: 858, column: 14, scope: !689)
!709 = !DILocation(line: 858, column: 12, scope: !689)
!710 = !DILocation(line: 859, column: 14, scope: !711)
!711 = distinct !DILexicalBlock(scope: !689, file: !3, line: 859, column: 12)
!712 = !DILocation(line: 859, column: 12, scope: !689)
!713 = !DILocation(line: 861, column: 11, scope: !689)
!714 = !DILocation(line: 862, column: 17, scope: !689)
!715 = !DILocation(line: 863, column: 6, scope: !689)
!716 = !DILocation(line: 866, column: 12, scope: !717)
!717 = distinct !DILexicalBlock(scope: !665, file: !3, line: 865, column: 6)
!718 = !DILocation(line: 867, column: 9, scope: !719)
!719 = distinct !DILexicalBlock(scope: !717, file: !3, line: 866, column: 12)
!720 = !DILocation(line: 867, column: 3, scope: !719)
!721 = !DILocation(line: 0, scope: !719)
!722 = !DILocation(line: 869, column: 8, scope: !717)
!723 = !DILocation(line: 870, column: 8, scope: !717)
!724 = !DILocation(line: 870, column: 21, scope: !717)
!725 = !DILocation(line: 870, column: 43, scope: !717)
!726 = !DILocation(line: 871, column: 8, scope: !717)
!727 = !DILocation(line: 871, column: 16, scope: !717)
!728 = !DILocation(line: 871, column: 19, scope: !717)
!729 = !DILocation(line: 871, column: 24, scope: !717)
!730 = !DILocation(line: 871, column: 27, scope: !717)
!731 = !DILocation(line: 873, column: 18, scope: !732)
!732 = distinct !DILexicalBlock(scope: !733, file: !3, line: 873, column: 9)
!733 = distinct !DILexicalBlock(scope: !717, file: !3, line: 872, column: 3)
!734 = !DILocation(line: 873, column: 15, scope: !732)
!735 = !DILocation(line: 873, column: 29, scope: !732)
!736 = !DILocation(line: 873, column: 9, scope: !733)
!737 = !DILocation(line: 875, column: 17, scope: !738)
!738 = distinct !DILexicalBlock(scope: !732, file: !3, line: 874, column: 7)
!739 = !DILocation(line: 876, column: 19, scope: !740)
!740 = distinct !DILexicalBlock(scope: !738, file: !3, line: 876, column: 13)
!741 = !DILocation(line: 876, column: 13, scope: !738)
!742 = !DILocation(line: 881, column: 17, scope: !743)
!743 = distinct !DILexicalBlock(scope: !732, file: !3, line: 880, column: 7)
!744 = !DILocation(line: 882, column: 19, scope: !745)
!745 = distinct !DILexicalBlock(scope: !743, file: !3, line: 882, column: 13)
!746 = !DILocation(line: 882, column: 13, scope: !743)
!747 = !DILocation(line: 884, column: 19, scope: !748)
!748 = distinct !DILexicalBlock(scope: !743, file: !3, line: 884, column: 13)
!749 = !DILocation(line: 884, column: 13, scope: !743)
!750 = !DILocation(line: 886, column: 13, scope: !743)
!751 = !DILocation(line: 887, column: 4, scope: !752)
!752 = distinct !DILexicalBlock(scope: !743, file: !3, line: 886, column: 13)
!753 = !DILocation(line: 889, column: 9, scope: !733)
!754 = !DILocation(line: 890, column: 11, scope: !755)
!755 = distinct !DILexicalBlock(scope: !733, file: !3, line: 889, column: 9)
!756 = !DILocation(line: 890, column: 7, scope: !755)
!757 = !DILocation(line: 0, scope: !755)
!758 = !DILocation(line: 891, column: 11, scope: !733)
!759 = !DILocation(line: 892, column: 6, scope: !733)
!760 = distinct !{!760, !723, !761}
!761 = !DILocation(line: 893, column: 3, scope: !717)
!762 = !DILocation(line: 894, column: 12, scope: !717)
!763 = !DILocation(line: 895, column: 3, scope: !764)
!764 = distinct !DILexicalBlock(scope: !717, file: !3, line: 894, column: 12)
!765 = !DILocation(line: 0, scope: !764)
!766 = !DILocation(line: 896, column: 12, scope: !717)
!767 = !DILocation(line: 898, column: 10, scope: !768)
!768 = distinct !DILexicalBlock(scope: !769, file: !3, line: 897, column: 3)
!769 = distinct !DILexicalBlock(scope: !717, file: !3, line: 896, column: 12)
!770 = !DILocation(line: 899, column: 14, scope: !768)
!771 = !DILocation(line: 900, column: 3, scope: !768)
!772 = !DILocation(line: 0, scope: !717)
!773 = !DILocation(line: 0, scope: !768)
!774 = !DILocation(line: 902, column: 10, scope: !317)
!775 = !DILocation(line: 903, column: 4, scope: !317)
!776 = !DILocation(line: 907, column: 14, scope: !777)
!777 = distinct !DILexicalBlock(scope: !317, file: !3, line: 907, column: 8)
!778 = !DILocation(line: 907, column: 8, scope: !317)
!779 = !DILocation(line: 908, column: 13, scope: !777)
!780 = !DILocation(line: 909, column: 15, scope: !781)
!781 = distinct !DILexicalBlock(scope: !317, file: !3, line: 909, column: 8)
!782 = !DILocation(line: 909, column: 27, scope: !781)
!783 = !DILocation(line: 0, scope: !784)
!784 = distinct !DILexicalBlock(scope: !781, file: !3, line: 917, column: 13)
!785 = !DILocation(line: 0, scope: !781)
!786 = !DILocation(line: 909, column: 8, scope: !317)
!787 = !DILocation(line: 917, column: 13, scope: !781)
!788 = !DILocation(line: 933, column: 12, scope: !789)
!789 = distinct !DILexicalBlock(scope: !784, file: !3, line: 932, column: 6)
!790 = !DILocation(line: 911, column: 21, scope: !791)
!791 = distinct !DILexicalBlock(scope: !781, file: !3, line: 910, column: 6)
!792 = !DILocation(line: 911, column: 43, scope: !791)
!793 = !DILocation(line: 912, column: 8, scope: !791)
!794 = !DILocation(line: 912, column: 16, scope: !791)
!795 = !DILocation(line: 912, column: 19, scope: !791)
!796 = !DILocation(line: 912, column: 24, scope: !791)
!797 = !DILocation(line: 912, column: 28, scope: !791)
!798 = !DILocation(line: 912, column: 27, scope: !791)
!799 = !DILocation(line: 911, column: 8, scope: !791)
!800 = !DILocation(line: 913, column: 8, scope: !791)
!801 = distinct !{!801, !799, !800}
!802 = !DILocation(line: 914, column: 12, scope: !791)
!803 = !DILocation(line: 915, column: 3, scope: !804)
!804 = distinct !DILexicalBlock(scope: !791, file: !3, line: 914, column: 12)
!805 = !DILocation(line: 919, column: 17, scope: !806)
!806 = distinct !DILexicalBlock(scope: !784, file: !3, line: 918, column: 6)
!807 = !DILocation(line: 920, column: 8, scope: !806)
!808 = !DILocation(line: 920, column: 21, scope: !806)
!809 = !DILocation(line: 920, column: 43, scope: !806)
!810 = !DILocation(line: 921, column: 8, scope: !806)
!811 = !DILocation(line: 921, column: 16, scope: !806)
!812 = !DILocation(line: 921, column: 19, scope: !806)
!813 = !DILocation(line: 921, column: 24, scope: !806)
!814 = !DILocation(line: 926, column: 12, scope: !806)
!815 = !DILocation(line: 921, column: 28, scope: !806)
!816 = !DILocation(line: 921, column: 27, scope: !806)
!817 = !DILocation(line: 923, column: 7, scope: !818)
!818 = distinct !DILexicalBlock(scope: !806, file: !3, line: 922, column: 3)
!819 = !DILocation(line: 923, column: 10, scope: !818)
!820 = !DILocation(line: 924, column: 10, scope: !818)
!821 = distinct !{!821, !807, !822}
!822 = !DILocation(line: 925, column: 3, scope: !806)
!823 = !DILocation(line: 0, scope: !818)
!824 = !DILocation(line: 927, column: 3, scope: !825)
!825 = distinct !DILexicalBlock(scope: !806, file: !3, line: 926, column: 12)
!826 = !DILocation(line: 0, scope: !825)
!827 = !DILocation(line: 928, column: 11, scope: !806)
!828 = !DILocation(line: 929, column: 17, scope: !806)
!829 = !DILocation(line: 930, column: 6, scope: !806)
!830 = !DILocation(line: 934, column: 9, scope: !831)
!831 = distinct !DILexicalBlock(scope: !789, file: !3, line: 933, column: 12)
!832 = !DILocation(line: 934, column: 3, scope: !831)
!833 = !DILocation(line: 0, scope: !831)
!834 = !DILocation(line: 935, column: 8, scope: !789)
!835 = !DILocation(line: 936, column: 8, scope: !789)
!836 = !DILocation(line: 936, column: 21, scope: !789)
!837 = !DILocation(line: 936, column: 43, scope: !789)
!838 = !DILocation(line: 937, column: 8, scope: !789)
!839 = !DILocation(line: 937, column: 26, scope: !789)
!840 = !DILocation(line: 937, column: 25, scope: !789)
!841 = !DILocation(line: 939, column: 18, scope: !842)
!842 = distinct !DILexicalBlock(scope: !843, file: !3, line: 939, column: 9)
!843 = distinct !DILexicalBlock(scope: !789, file: !3, line: 938, column: 3)
!844 = !DILocation(line: 939, column: 15, scope: !842)
!845 = !DILocation(line: 939, column: 29, scope: !842)
!846 = !DILocation(line: 939, column: 9, scope: !843)
!847 = !DILocation(line: 941, column: 17, scope: !848)
!848 = distinct !DILexicalBlock(scope: !842, file: !3, line: 940, column: 7)
!849 = !DILocation(line: 942, column: 19, scope: !850)
!850 = distinct !DILexicalBlock(scope: !848, file: !3, line: 942, column: 13)
!851 = !DILocation(line: 942, column: 13, scope: !848)
!852 = !DILocation(line: 947, column: 17, scope: !853)
!853 = distinct !DILexicalBlock(scope: !842, file: !3, line: 946, column: 7)
!854 = !DILocation(line: 948, column: 19, scope: !855)
!855 = distinct !DILexicalBlock(scope: !853, file: !3, line: 948, column: 13)
!856 = !DILocation(line: 948, column: 13, scope: !853)
!857 = !DILocation(line: 950, column: 19, scope: !858)
!858 = distinct !DILexicalBlock(scope: !853, file: !3, line: 950, column: 13)
!859 = !DILocation(line: 950, column: 13, scope: !853)
!860 = !DILocation(line: 952, column: 13, scope: !853)
!861 = !DILocation(line: 953, column: 4, scope: !862)
!862 = distinct !DILexicalBlock(scope: !853, file: !3, line: 952, column: 13)
!863 = !DILocation(line: 955, column: 9, scope: !843)
!864 = !DILocation(line: 956, column: 11, scope: !865)
!865 = distinct !DILexicalBlock(scope: !843, file: !3, line: 955, column: 9)
!866 = !DILocation(line: 956, column: 7, scope: !865)
!867 = !DILocation(line: 0, scope: !865)
!868 = !DILocation(line: 957, column: 11, scope: !843)
!869 = !DILocation(line: 958, column: 10, scope: !843)
!870 = !DILocation(line: 937, column: 17, scope: !789)
!871 = distinct !{!871, !835, !872}
!872 = !DILocation(line: 959, column: 3, scope: !789)
!873 = !DILocation(line: 960, column: 12, scope: !789)
!874 = !DILocation(line: 0, scope: !843)
!875 = !DILocation(line: 961, column: 3, scope: !876)
!876 = distinct !DILexicalBlock(scope: !789, file: !3, line: 960, column: 12)
!877 = !DILocation(line: 962, column: 12, scope: !789)
!878 = !DILocation(line: 964, column: 10, scope: !879)
!879 = distinct !DILexicalBlock(scope: !880, file: !3, line: 963, column: 3)
!880 = distinct !DILexicalBlock(scope: !789, file: !3, line: 962, column: 12)
!881 = !DILocation(line: 965, column: 14, scope: !879)
!882 = !DILocation(line: 966, column: 3, scope: !879)
!883 = !DILocation(line: 0, scope: !804)
!884 = !DILocation(line: 968, column: 4, scope: !317)
!885 = !DILocation(line: 973, column: 19, scope: !886)
!886 = distinct !DILexicalBlock(scope: !316, file: !3, line: 973, column: 8)
!887 = !DILocation(line: 974, column: 6, scope: !886)
!888 = !DILocation(line: 975, column: 10, scope: !316)
!889 = !DILocation(line: 976, column: 9, scope: !890)
!890 = distinct !DILexicalBlock(scope: !316, file: !3, line: 976, column: 4)
!891 = !DILocation(line: 976, column: 4, scope: !890)
!892 = !DILocation(line: 978, column: 12, scope: !893)
!893 = distinct !DILexicalBlock(scope: !894, file: !3, line: 977, column: 6)
!894 = distinct !DILexicalBlock(scope: !890, file: !3, line: 976, column: 4)
!895 = !DILocation(line: 983, column: 8, scope: !893)
!896 = !DILocation(line: 995, column: 14, scope: !897)
!897 = distinct !DILexicalBlock(scope: !898, file: !3, line: 995, column: 9)
!898 = distinct !DILexicalBlock(scope: !893, file: !3, line: 984, column: 3)
!899 = !DILocation(line: 995, column: 9, scope: !898)
!900 = !DILocation(line: 998, column: 15, scope: !901)
!901 = distinct !DILexicalBlock(scope: !897, file: !3, line: 996, column: 7)
!902 = !DILocation(line: 999, column: 7, scope: !901)
!903 = !DILocation(line: 0, scope: !316)
!904 = !DILocation(line: 1000, column: 15, scope: !905)
!905 = distinct !DILexicalBlock(scope: !898, file: !3, line: 1000, column: 9)
!906 = !DILocation(line: 1000, column: 9, scope: !898)
!907 = !DILocation(line: 1001, column: 13, scope: !905)
!908 = !DILocation(line: 1001, column: 7, scope: !905)
!909 = !DILocation(line: 1003, column: 13, scope: !905)
!910 = !DILocation(line: 1014, column: 12, scope: !898)
!911 = !DILocation(line: 1015, column: 11, scope: !898)
!912 = !DILocation(line: 1016, column: 5, scope: !898)
!913 = !DILocation(line: 1021, column: 12, scope: !898)
!914 = !DILocation(line: 1022, column: 14, scope: !915)
!915 = distinct !DILexicalBlock(scope: !898, file: !3, line: 1022, column: 9)
!916 = !DILocation(line: 1022, column: 9, scope: !898)
!917 = !DILocation(line: 1024, column: 11, scope: !898)
!918 = !DILocation(line: 1025, column: 5, scope: !898)
!919 = !DILocation(line: 1041, column: 14, scope: !920)
!920 = distinct !DILexicalBlock(scope: !898, file: !3, line: 1041, column: 9)
!921 = !DILocation(line: 1041, column: 9, scope: !898)
!922 = !DILocation(line: 1043, column: 11, scope: !898)
!923 = !DILocation(line: 1044, column: 5, scope: !898)
!924 = !DILocation(line: 1049, column: 15, scope: !925)
!925 = distinct !DILexicalBlock(scope: !898, file: !3, line: 1049, column: 9)
!926 = !DILocation(line: 1049, column: 9, scope: !898)
!927 = !DILocation(line: 1051, column: 15, scope: !928)
!928 = distinct !DILexicalBlock(scope: !925, file: !3, line: 1050, column: 7)
!929 = !DILocation(line: 1052, column: 15, scope: !928)
!930 = !DILocation(line: 1053, column: 9, scope: !928)
!931 = !DILocation(line: 1060, column: 16, scope: !932)
!932 = distinct !DILexicalBlock(scope: !898, file: !3, line: 1060, column: 9)
!933 = !DILocation(line: 1060, column: 25, scope: !932)
!934 = !DILocation(line: 1060, column: 43, scope: !932)
!935 = !DILocation(line: 1060, column: 41, scope: !932)
!936 = !DILocation(line: 1060, column: 30, scope: !932)
!937 = !DILocation(line: 1060, column: 9, scope: !898)
!938 = !DILocation(line: 1063, column: 15, scope: !939)
!939 = distinct !DILexicalBlock(scope: !932, file: !3, line: 1061, column: 7)
!940 = !DILocation(line: 1064, column: 9, scope: !939)
!941 = !DILocation(line: 1073, column: 12, scope: !893)
!942 = !DILocation(line: 1073, column: 14, scope: !943)
!943 = distinct !DILexicalBlock(scope: !893, file: !3, line: 1073, column: 12)
!944 = !DILocation(line: 1074, column: 3, scope: !943)
!945 = !DILocation(line: 0, scope: !905)
!946 = !DILocation(line: 0, scope: !901)
!947 = !DILocation(line: 1080, column: 10, scope: !893)
!948 = !DILocation(line: 1080, column: 13, scope: !893)
!949 = !DILocation(line: 976, column: 30, scope: !894)
!950 = !DILocation(line: 976, column: 4, scope: !894)
!951 = distinct !{!951, !891, !952}
!952 = !DILocation(line: 1081, column: 6, scope: !890)
!953 = !DILocation(line: 705, column: 9, scope: !402)
!954 = !DILocation(line: 1090, column: 14, scope: !955)
!955 = distinct !DILexicalBlock(scope: !316, file: !3, line: 1090, column: 8)
!956 = !DILocation(line: 1090, column: 8, scope: !316)
!957 = !DILocation(line: 1092, column: 14, scope: !958)
!958 = distinct !DILexicalBlock(scope: !959, file: !3, line: 1092, column: 12)
!959 = distinct !DILexicalBlock(scope: !955, file: !3, line: 1091, column: 6)
!960 = !DILocation(line: 1092, column: 12, scope: !959)
!961 = !DILocation(line: 1093, column: 22, scope: !958)
!962 = !DILocation(line: 1093, column: 21, scope: !958)
!963 = !DILocation(line: 1093, column: 3, scope: !958)
!964 = !DILocation(line: 1096, column: 8, scope: !316)
!965 = !DILocation(line: 1097, column: 18, scope: !966)
!966 = distinct !DILexicalBlock(scope: !316, file: !3, line: 1097, column: 8)
!967 = !DILocation(line: 1100, column: 8, scope: !968)
!968 = distinct !DILexicalBlock(scope: !966, file: !3, line: 1098, column: 6)
!969 = !DILocation(line: 1101, column: 6, scope: !968)
!970 = !DILocation(line: 0, scope: !890)
!971 = !DILocation(line: 1102, column: 15, scope: !315)
!972 = !DILocation(line: 1102, column: 27, scope: !315)
!973 = !DILocation(line: 1102, column: 8, scope: !316)
!974 = !DILocation(line: 1106, column: 11, scope: !314)
!975 = !DILocation(line: 1107, column: 14, scope: !314)
!976 = !{i64 (%struct._reent*, i32*, i32**, i32)* @_wcstol_r, i64 (%struct._reent*, i32*, i32**, i32)* @_wcstoul_r}
!977 = !DILocation(line: 1104, column: 22, scope: !314)
!978 = !DILocation(line: 1108, column: 18, scope: !323)
!979 = !DILocation(line: 1108, column: 12, scope: !314)
!980 = !DILocation(line: 1110, column: 17, scope: !322)
!981 = !DILocation(line: 1110, column: 12, scope: !322)
!982 = !DILocation(line: 1120, column: 13, scope: !322)
!983 = !DILocation(line: 1120, column: 11, scope: !322)
!984 = !{!356, !356, i64 0}
!985 = !DILocation(line: 1121, column: 3, scope: !322)
!986 = !DILocation(line: 1123, column: 23, scope: !987)
!987 = distinct !DILexicalBlock(scope: !323, file: !3, line: 1123, column: 17)
!988 = !DILocation(line: 1123, column: 17, scope: !323)
!989 = !DILocation(line: 1125, column: 10, scope: !990)
!990 = distinct !DILexicalBlock(scope: !987, file: !3, line: 1124, column: 3)
!991 = !DILocation(line: 1126, column: 11, scope: !990)
!992 = !DILocation(line: 1126, column: 9, scope: !990)
!993 = !DILocation(line: 1127, column: 3, scope: !990)
!994 = !DILocation(line: 1129, column: 23, scope: !995)
!995 = distinct !DILexicalBlock(scope: !987, file: !3, line: 1129, column: 17)
!996 = !DILocation(line: 1129, column: 17, scope: !987)
!997 = !DILocation(line: 1131, column: 10, scope: !998)
!998 = distinct !DILexicalBlock(scope: !995, file: !3, line: 1130, column: 3)
!999 = !DILocation(line: 1132, column: 11, scope: !998)
!1000 = !DILocation(line: 1132, column: 9, scope: !998)
!1001 = !DILocation(line: 1133, column: 3, scope: !998)
!1002 = !DILocation(line: 1134, column: 23, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !995, file: !3, line: 1134, column: 17)
!1004 = !DILocation(line: 0, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 1152, column: 3)
!1006 = !DILocation(line: 1134, column: 17, scope: !995)
!1007 = !DILocation(line: 0, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 1135, column: 3)
!1009 = !DILocation(line: 1136, column: 10, scope: !1008)
!1010 = !DILocation(line: 1137, column: 9, scope: !1008)
!1011 = !DILocation(line: 1138, column: 3, scope: !1008)
!1012 = !DILocation(line: 1153, column: 10, scope: !1005)
!1013 = !DILocation(line: 1154, column: 11, scope: !1005)
!1014 = !DILocation(line: 1154, column: 9, scope: !1005)
!1015 = !DILocation(line: 1156, column: 17, scope: !314)
!1016 = !DILocation(line: 1157, column: 6, scope: !314)
!1017 = !DILocation(line: 1158, column: 15, scope: !316)
!1018 = !DILocation(line: 1158, column: 10, scope: !316)
!1019 = !DILocation(line: 1159, column: 4, scope: !316)
!1020 = !DILocation(line: 0, scope: !317)
!1021 = !DILocation(line: 1479, column: 3, scope: !312)
!1022 = !DILocation(line: 1480, column: 10, scope: !312)
!1023 = !DILocation(line: 1480, column: 20, scope: !312)
!1024 = !DILocation(line: 1480, column: 29, scope: !312)
!1025 = !{!1026, !523, i64 16}
!1026 = !{!"__sFILE", !356, i64 0, !353, i64 8, !353, i64 12, !523, i64 16, !523, i64 18, !1027, i64 24, !353, i64 40, !356, i64 48, !356, i64 56, !356, i64 64, !356, i64 72, !356, i64 80, !1027, i64 88, !356, i64 104, !353, i64 112, !354, i64 116, !354, i64 119, !1027, i64 120, !353, i64 136, !536, i64 144, !356, i64 152, !353, i64 160, !1028, i64 164, !353, i64 172}
!1027 = !{!"__sbuf", !356, i64 0, !353, i64 8}
!1028 = !{!"", !353, i64 0, !354, i64 4}
!1029 = !DILocation(line: 1480, column: 36, scope: !312)
!1030 = !DILocation(line: 1484, column: 3, scope: !2)
!1031 = !DILocation(line: 1484, column: 3, scope: !312)
!1032 = !DILocation(line: 1485, column: 3, scope: !2)
!1033 = !DILocation(line: 1486, column: 1, scope: !2)
!1034 = distinct !DISubprogram(name: "__svfiwscanf", scope: !3, file: !3, line: 274, type: !1035, isLocal: false, isDefinition: true, scopeLine: 278, flags: DIFlagPrototyped, isOptimized: true, unit: !239, retainedNodes: !1037)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!6, !226, !229, !232}
!1037 = !{!1038, !1039, !1040}
!1038 = !DILocalVariable(name: "fp", arg: 1, scope: !1034, file: !3, line: 274, type: !226)
!1039 = !DILocalVariable(name: "fmt0", arg: 2, scope: !1034, file: !3, line: 274, type: !229)
!1040 = !DILocalVariable(name: "ap", arg: 3, scope: !1034, file: !3, line: 274, type: !232)
!1041 = !DILocation(line: 274, column: 1, scope: !1034)
!1042 = !DILocation(line: 279, column: 25, scope: !1034)
!1043 = !DILocation(line: 279, column: 10, scope: !1034)
!1044 = !DILocation(line: 279, column: 3, scope: !1034)
!1045 = distinct !DISubprogram(name: "_vfiwscanf_r", scope: !3, file: !3, line: 285, type: !4, isLocal: false, isDefinition: true, scopeLine: 290, flags: DIFlagPrototyped, isOptimized: true, unit: !239, retainedNodes: !1046)
!1046 = !{!1047, !1048, !1049, !1050, !1051}
!1047 = !DILocalVariable(name: "data", arg: 1, scope: !1045, file: !3, line: 285, type: !7)
!1048 = !DILocalVariable(name: "fp", arg: 2, scope: !1045, file: !3, line: 285, type: !226)
!1049 = !DILocalVariable(name: "fmt", arg: 3, scope: !1045, file: !3, line: 285, type: !229)
!1050 = !DILocalVariable(name: "ap", arg: 4, scope: !1045, file: !3, line: 285, type: !232)
!1051 = !DILocalVariable(name: "_check_init_ptr", scope: !1052, file: !3, line: 291, type: !7)
!1052 = distinct !DILexicalBlock(scope: !1045, file: !3, line: 291, column: 3)
!1053 = !DILocation(line: 285, column: 1, scope: !1045)
!1054 = !DILocation(line: 291, column: 3, scope: !1052)
!1055 = !DILocation(line: 291, column: 3, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 291, column: 3)
!1057 = !DILocation(line: 292, column: 10, scope: !1045)
!1058 = !DILocation(line: 292, column: 3, scope: !1045)
