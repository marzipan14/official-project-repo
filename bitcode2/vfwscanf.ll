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
%struct.lconv = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@__svfwscanf_r.basefix = internal unnamed_addr constant [17 x i16] [i16 10, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16], align 16, !dbg !0
@.str = private unnamed_addr constant [5 x i32] [i32 101, i32 37, i32 108, i32 100, i32 0], align 4
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @vfwscanf(%struct.__sFILE* noalias, i32* noalias, %struct.__va_list_tag*) local_unnamed_addr #0 !dbg !355 {
  %4 = tail call %struct._reent* @__getreent() #4, !dbg !368
  %5 = icmp eq %struct._reent* %4, null, !dbg !371
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !371
  br i1 %5, label %11, label %6, !dbg !371

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct._reent, %struct._reent* %4, i64 0, i32 8, !dbg !371
  %8 = load i32, i32* %7, align 8, !dbg !371, !tbaa !373
  %9 = icmp eq i32 %8, 0, !dbg !371
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !370
  br i1 %9, label %10, label %11, !dbg !370

; <label>:10:                                     ; preds = %6
  tail call void @__sinit(%struct._reent* nonnull %4) #4, !dbg !371
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !371
  br label %11, !dbg !371

; <label>:11:                                     ; preds = %6, %3, %10
  %12 = tail call i32 @__svfwscanf_r(%struct._reent* %4, %struct.__sFILE* %0, i32* %1, %struct.__va_list_tag* %2) #5, !dbg !382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !383
  ret i32 %12, !dbg !383
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
define dso_local i32 @__svfwscanf_r(%struct._reent*, %struct.__sFILE*, i32*, %struct.__va_list_tag*) local_unnamed_addr #0 !dbg !2 {
  %5 = alloca %struct._mbstate_t, align 4
  %6 = alloca [350 x i32], align 16
  %7 = alloca [1 x i8], align 1
  %8 = alloca i32, align 4
  %9 = bitcast %struct._mbstate_t* %5 to i8*, !dbg !388
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #6, !dbg !388
  %10 = bitcast [350 x i32]* %6 to i8*, !dbg !390
  call void @llvm.lifetime.start.p0i8(i64 1400, i8* nonnull %10) #6, !dbg !390
  %11 = getelementptr inbounds [1 x i8], [1 x i8]* %7, i64 0, i64 0, !dbg !394
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %11) #6, !dbg !394
  %12 = tail call %struct.lconv* @_localeconv_r(%struct._reent* %0) #4, !dbg !396
  %13 = getelementptr inbounds %struct.lconv, %struct.lconv* %12, i64 0, i32 0, !dbg !397
  %14 = load i8*, i8** %13, align 8, !dbg !397, !tbaa !398
  %15 = load i8, i8* %14, align 1, !dbg !400, !tbaa !401
  %16 = sext i8 %15 to i32, !dbg !402
  %17 = bitcast i32* %8 to i8*, !dbg !404
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %17) #6, !dbg !404
  %18 = call i32 @pthread_setcancelstate(i32 1, i32* nonnull %8) #4, !dbg !404
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !409
  %19 = load i32, i32* %2, align 4, !dbg !410, !tbaa !411
  %20 = icmp eq i32 %19, 0, !dbg !413
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !415
  br i1 %20, label %1268, label %21, !dbg !415

; <label>:21:                                     ; preds = %4
  %22 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %3, i64 0, i32 0
  %23 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %3, i64 0, i32 3
  %24 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %3, i64 0, i32 2
  %25 = getelementptr inbounds [350 x i32], [350 x i32]* %6, i64 0, i64 0
  %26 = getelementptr inbounds [350 x i32], [350 x i32]* %6, i64 0, i64 1
  %27 = ptrtoint [350 x i32]* %6 to i64
  %28 = getelementptr inbounds [350 x i32], [350 x i32]* %6, i64 0, i64 329
  %29 = getelementptr inbounds [350 x i32], [350 x i32]* %6, i64 0, i64 328
  br label %30, !dbg !415

; <label>:30:                                     ; preds = %21, %1248
  %31 = phi i32 [ %19, %21 ], [ %1254, %1248 ]
  %32 = phi i32* [ %2, %21 ], [ %256, %1248 ]
  %33 = phi i32* [ null, %21 ], [ %1253, %1248 ]
  %34 = phi i8* [ null, %21 ], [ %1252, %1248 ]
  %35 = phi i32 [ 0, %21 ], [ %254, %1248 ]
  %36 = phi i32* [ null, %21 ], [ %253, %1248 ]
  %37 = phi i32* [ null, %21 ], [ %252, %1248 ]
  %38 = phi i64 (%struct._reent*, i32*, i32**, i32)* [ null, %21 ], [ %251, %1248 ]
  %39 = phi i32 [ 0, %21 ], [ %1251, %1248 ]
  %40 = phi i32 [ 0, %21 ], [ %1250, %1248 ]
  %41 = phi i32 [ 0, %21 ], [ %1249, %1248 ]
  %42 = sext i32 %40 to i64, !dbg !415
  br label %43, !dbg !415

; <label>:43:                                     ; preds = %30, %87
  %44 = phi i64 [ %42, %30 ], [ %88, %87 ]
  %45 = phi i32 [ %31, %30 ], [ %89, %87 ]
  %46 = phi i32* [ %32, %30 ], [ %80, %87 ]
  %47 = trunc i64 %44 to i32
  %48 = trunc i64 %44 to i8
  %49 = trunc i64 %44 to i16
  br label %50, !dbg !415

; <label>:50:                                     ; preds = %43, %66
  %51 = phi i32 [ %45, %43 ], [ %68, %66 ]
  %52 = phi i32* [ %46, %43 ], [ %67, %66 ]
  %53 = getelementptr inbounds i32, i32* %52, i64 1, !dbg !416
  %54 = call i32 @iswspace(i32 %51) #4, !dbg !417
  %55 = icmp eq i32 %54, 0, !dbg !417
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !419
  br i1 %55, label %70, label %56, !dbg !419

; <label>:56:                                     ; preds = %50, %59
  %57 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !420
  %58 = icmp eq i32 %57, -1, !dbg !422
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !423
  br i1 %58, label %64, label %59, !dbg !423

; <label>:59:                                     ; preds = %56
  %60 = call i32 @iswspace(i32 %57) #4, !dbg !424
  %61 = icmp eq i32 %60, 0, !dbg !423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !425
  br i1 %61, label %62, label %56, !dbg !425, !llvm.loop !426

; <label>:62:                                     ; preds = %59
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !428
  %63 = call i32 @_ungetwc_r(%struct._reent* %0, i32 %57, %struct.__sFILE* %1) #4, !dbg !429
  br label %64, !dbg !429

; <label>:64:                                     ; preds = %56, %62, %191, %227, %240, %209
  %65 = phi i32* [ %76, %209 ], [ %76, %240 ], [ %76, %227 ], [ %76, %191 ], [ %53, %62 ], [ %53, %56 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !431
  br label %66, !dbg !410

; <label>:66:                                     ; preds = %64, %174
  %67 = phi i32* [ %76, %174 ], [ %65, %64 ]
  %68 = load i32, i32* %67, align 4, !dbg !410, !tbaa !411
  %69 = icmp eq i32 %68, 0, !dbg !413
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !415
  br i1 %69, label %1268, label %50, !dbg !415, !llvm.loop !433

; <label>:70:                                     ; preds = %50
  %71 = icmp eq i32 %51, 37, !dbg !436
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !438
  br i1 %71, label %72, label %78, !dbg !438

; <label>:72:                                     ; preds = %70, %93
  %73 = phi i32 [ %94, %93 ], [ 0, %70 ], !dbg !431
  %74 = phi i64 [ %95, %93 ], [ 0, %70 ], !dbg !439
  %75 = phi i32* [ %96, %93 ], [ %53, %70 ], !dbg !439
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !439
  %76 = getelementptr inbounds i32, i32* %75, i64 1, !dbg !442
  %77 = load i32, i32* %75, align 4, !dbg !443, !tbaa !411
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !444
  switch i32 %77, label %1268 [
    i32 37, label %78
    i32 42, label %91
    i32 108, label %97
    i32 76, label %104
    i32 104, label %106
    i32 106, label %113
    i32 116, label %115
    i32 122, label %117
    i32 48, label %119
    i32 49, label %119
    i32 50, label %119
    i32 51, label %119
    i32 52, label %119
    i32 53, label %119
    i32 54, label %119
    i32 55, label %119
    i32 56, label %119
    i32 57, label %119
    i32 100, label %247
    i32 105, label %248
    i32 111, label %124
    i32 117, label %125
    i32 88, label %126
    i32 120, label %126
    i32 65, label %128
    i32 97, label %128
    i32 70, label %128
    i32 69, label %128
    i32 71, label %128
    i32 101, label %128
    i32 102, label %128
    i32 103, label %128
    i32 83, label %129
    i32 115, label %131
    i32 91, label %133
    i32 67, label %167
    i32 99, label %169
    i32 112, label %172
    i32 110, label %174
    i32 0, label %244
  ], !dbg !444

; <label>:78:                                     ; preds = %70, %72
  %79 = phi i32 [ %77, %72 ], [ %51, %70 ], !dbg !439
  %80 = phi i32* [ %76, %72 ], [ %53, %70 ], !dbg !439
  %81 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !445
  %82 = icmp eq i32 %81, -1, !dbg !448
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !449
  br i1 %82, label %1256, label %83, !dbg !449

; <label>:83:                                     ; preds = %78
  %84 = icmp eq i32 %81, %79, !dbg !450
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !452
  br i1 %84, label %87, label %85, !dbg !452

; <label>:85:                                     ; preds = %83
  %86 = call i32 @_ungetwc_r(%struct._reent* %0, i32 %81, %struct.__sFILE* %1) #4, !dbg !453
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !455
  br label %1256, !dbg !455

; <label>:87:                                     ; preds = %83
  %88 = add i64 %44, 1, !dbg !456
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !457
  %89 = load i32, i32* %80, align 4, !dbg !410, !tbaa !411
  %90 = icmp eq i32 %89, 0, !dbg !413
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !415
  br i1 %90, label %1268, label %43, !dbg !415, !llvm.loop !433

; <label>:91:                                     ; preds = %72
  %92 = or i32 %73, 16, !dbg !458
  br label %93, !dbg !459

; <label>:93:                                     ; preds = %91, %97, %104, %106, %113, %115, %117, %119
  %94 = phi i32 [ %73, %119 ], [ %118, %117 ], [ %116, %115 ], [ %114, %113 ], [ %112, %106 ], [ %105, %104 ], [ %103, %97 ], [ %92, %91 ]
  %95 = phi i64 [ %123, %119 ], [ %74, %117 ], [ %74, %115 ], [ %74, %113 ], [ %74, %106 ], [ %74, %104 ], [ %74, %97 ], [ %74, %91 ]
  %96 = phi i32* [ %76, %119 ], [ %76, %117 ], [ %76, %115 ], [ %76, %113 ], [ %111, %106 ], [ %76, %104 ], [ %102, %97 ], [ %76, %91 ]
  br label %72, !dbg !439

; <label>:97:                                     ; preds = %72
  %98 = load i32, i32* %76, align 4, !dbg !460, !tbaa !411
  %99 = icmp eq i32 %98, 108, !dbg !462
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !463
  %100 = getelementptr inbounds i32, i32* %75, i64 2, !dbg !464
  %101 = select i1 %99, i32 2, i32 1, !dbg !463
  %102 = select i1 %99, i32* %100, i32* %76, !dbg !463
  %103 = or i32 %73, %101, !dbg !466
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %93, !dbg !467

; <label>:104:                                    ; preds = %72
  %105 = or i32 %73, 2, !dbg !468
  br label %93, !dbg !469

; <label>:106:                                    ; preds = %72
  %107 = load i32, i32* %76, align 4, !dbg !470, !tbaa !411
  %108 = icmp eq i32 %107, 104, !dbg !472
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !473
  %109 = getelementptr inbounds i32, i32* %75, i64 2, !dbg !474
  %110 = select i1 %108, i32 8, i32 4, !dbg !473
  %111 = select i1 %108, i32* %109, i32* %76, !dbg !473
  %112 = or i32 %73, %110, !dbg !476
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %93, !dbg !477

; <label>:113:                                    ; preds = %72
  %114 = or i32 %73, 1, !dbg !478
  br label %93, !dbg !480

; <label>:115:                                    ; preds = %72
  %116 = or i32 %73, 1, !dbg !481
  br label %93, !dbg !485

; <label>:117:                                    ; preds = %72
  %118 = or i32 %73, 1, !dbg !486
  br label %93, !dbg !490

; <label>:119:                                    ; preds = %72, %72, %72, %72, %72, %72, %72, %72, %72, %72
  %120 = mul i64 %74, 10, !dbg !491
  %121 = zext i32 %77 to i64, !dbg !492
  %122 = add i64 %120, -48, !dbg !493
  %123 = add i64 %122, %121, !dbg !494
  br label %93, !dbg !495

; <label>:124:                                    ; preds = %72
  br label %248, !dbg !496

; <label>:125:                                    ; preds = %72
  br label %248, !dbg !497

; <label>:126:                                    ; preds = %72, %72
  %127 = or i32 %73, 512, !dbg !498
  br label %248, !dbg !499

; <label>:128:                                    ; preds = %72, %72, %72, %72, %72, %72, %72, %72
  br label %248, !dbg !500

; <label>:129:                                    ; preds = %72
  %130 = or i32 %73, 1, !dbg !501
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !502
  br label %131, !dbg !502

; <label>:131:                                    ; preds = %72, %129
  %132 = phi i32 [ %130, %129 ], [ %73, %72 ], !dbg !431
  br label %248, !dbg !503

; <label>:133:                                    ; preds = %72
  %134 = load i32, i32* %76, align 4, !dbg !504, !tbaa !411
  %135 = icmp eq i32 %134, 94, !dbg !506
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !507
  br i1 %135, label %136, label %139, !dbg !507

; <label>:136:                                    ; preds = %133
  %137 = getelementptr inbounds i32, i32* %75, i64 2, !dbg !508
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !510
  %138 = load i32, i32* %137, align 4, !dbg !511, !tbaa !411
  br label %140, !dbg !510

; <label>:139:                                    ; preds = %133
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %140

; <label>:140:                                    ; preds = %139, %136
  %141 = phi i32 [ %134, %139 ], [ %138, %136 ], !dbg !511
  %142 = phi i32 [ 0, %139 ], [ 1, %136 ], !dbg !513
  %143 = phi i32* [ %76, %139 ], [ %137, %136 ], !dbg !439
  %144 = icmp eq i32 %141, 93, !dbg !514
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !515
  br i1 %144, label %145, label %148, !dbg !515

; <label>:145:                                    ; preds = %140
  %146 = getelementptr inbounds i32, i32* %143, i64 1, !dbg !516
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !517
  %147 = load i32, i32* %146, align 4, !dbg !518, !tbaa !411
  br label %148, !dbg !517

; <label>:148:                                    ; preds = %145, %140
  %149 = phi i32 [ %147, %145 ], [ %141, %140 ], !dbg !518
  %150 = phi i32* [ %146, %145 ], [ %143, %140 ], !dbg !519
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !520
  %151 = icmp eq i32 %149, 0, !dbg !521
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !522
  br i1 %151, label %152, label %155, !dbg !522

; <label>:152:                                    ; preds = %160, %148
  %153 = phi i32* [ %150, %148 ], [ %159, %160 ], !dbg !431
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !520
  %154 = getelementptr inbounds i32, i32* %153, i64 1, !dbg !431
  br label %163, !dbg !520

; <label>:155:                                    ; preds = %148, %160
  %156 = phi i32 [ %161, %160 ], [ %149, %148 ]
  %157 = phi i32* [ %159, %160 ], [ %150, %148 ]
  %158 = icmp eq i32 %156, 93, !dbg !523
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !520
  %159 = getelementptr inbounds i32, i32* %157, i64 1, !dbg !431
  br i1 %158, label %163, label %160, !dbg !520

; <label>:160:                                    ; preds = %155
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !520
  %161 = load i32, i32* %159, align 4, !dbg !518, !tbaa !411
  %162 = icmp eq i32 %161, 0, !dbg !521
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !522
  br i1 %162, label %152, label %155, !dbg !522, !llvm.loop !524

; <label>:163:                                    ; preds = %155, %152
  %164 = phi i32* [ %153, %152 ], [ %157, %155 ]
  %165 = phi i32* [ %154, %152 ], [ %159, %155 ]
  %166 = or i32 %73, 64, !dbg !526
  br label %248, !dbg !527

; <label>:167:                                    ; preds = %72
  %168 = or i32 %73, 1, !dbg !528
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !529
  br label %169, !dbg !529

; <label>:169:                                    ; preds = %72, %167
  %170 = phi i32 [ %168, %167 ], [ %73, %72 ], !dbg !431
  %171 = or i32 %170, 64, !dbg !530
  br label %248, !dbg !531

; <label>:172:                                    ; preds = %72
  %173 = or i32 %73, 544, !dbg !532
  br label %248, !dbg !533

; <label>:174:                                    ; preds = %72
  %175 = and i32 %73, 16, !dbg !534
  %176 = icmp eq i32 %175, 0, !dbg !534
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !536
  br i1 %176, label %177, label %66, !dbg !536

; <label>:177:                                    ; preds = %174
  %178 = and i32 %73, 8, !dbg !537
  %179 = icmp eq i32 %178, 0, !dbg !537
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !539
  br i1 %179, label %195, label %180, !dbg !539

; <label>:180:                                    ; preds = %177
  %181 = load i32, i32* %22, align 8, !dbg !540
  %182 = icmp ult i32 %181, 41, !dbg !540
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !540
  br i1 %182, label %183, label %188, !dbg !540

; <label>:183:                                    ; preds = %180
  %184 = load i8*, i8** %23, align 8, !dbg !540
  %185 = sext i32 %181 to i64, !dbg !540
  %186 = getelementptr i8, i8* %184, i64 %185, !dbg !540
  %187 = add i32 %181, 8, !dbg !540
  store i32 %187, i32* %22, align 8, !dbg !540
  br label %191, !dbg !540

; <label>:188:                                    ; preds = %180
  %189 = load i8*, i8** %24, align 8, !dbg !540
  %190 = getelementptr i8, i8* %189, i64 8, !dbg !540
  store i8* %190, i8** %24, align 8, !dbg !540
  br label %191, !dbg !540

; <label>:191:                                    ; preds = %188, %183
  %192 = phi i8* [ %186, %183 ], [ %189, %188 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !540
  %193 = bitcast i8* %192 to i8**, !dbg !540
  %194 = load i8*, i8** %193, align 8, !dbg !540
  store i8 %48, i8* %194, align 1, !dbg !543, !tbaa !401
  br label %64, !dbg !544

; <label>:195:                                    ; preds = %177
  %196 = and i32 %73, 4, !dbg !545
  %197 = icmp eq i32 %196, 0, !dbg !545
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !547
  br i1 %197, label %213, label %198, !dbg !547

; <label>:198:                                    ; preds = %195
  %199 = load i32, i32* %22, align 8, !dbg !548
  %200 = icmp ult i32 %199, 41, !dbg !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !548
  br i1 %200, label %201, label %206, !dbg !548

; <label>:201:                                    ; preds = %198
  %202 = load i8*, i8** %23, align 8, !dbg !548
  %203 = sext i32 %199 to i64, !dbg !548
  %204 = getelementptr i8, i8* %202, i64 %203, !dbg !548
  %205 = add i32 %199, 8, !dbg !548
  store i32 %205, i32* %22, align 8, !dbg !548
  br label %209, !dbg !548

; <label>:206:                                    ; preds = %198
  %207 = load i8*, i8** %24, align 8, !dbg !548
  %208 = getelementptr i8, i8* %207, i64 8, !dbg !548
  store i8* %208, i8** %24, align 8, !dbg !548
  br label %209, !dbg !548

; <label>:209:                                    ; preds = %206, %201
  %210 = phi i8* [ %204, %201 ], [ %207, %206 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !548
  %211 = bitcast i8* %210 to i16**, !dbg !548
  %212 = load i16*, i16** %211, align 8, !dbg !548
  store i16 %49, i16* %212, align 2, !dbg !551, !tbaa !552
  br label %64, !dbg !554

; <label>:213:                                    ; preds = %195
  %214 = and i32 %73, 1, !dbg !555
  %215 = icmp eq i32 %214, 0, !dbg !555
  %216 = load i32, i32* %22, align 8, !dbg !557
  %217 = icmp ult i32 %216, 41, !dbg !557
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !559
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !560
  br i1 %215, label %231, label %218, !dbg !559

; <label>:218:                                    ; preds = %213
  br i1 %217, label %219, label %224, !dbg !562

; <label>:219:                                    ; preds = %218
  %220 = load i8*, i8** %23, align 8, !dbg !562
  %221 = sext i32 %216 to i64, !dbg !562
  %222 = getelementptr i8, i8* %220, i64 %221, !dbg !562
  %223 = add i32 %216, 8, !dbg !562
  store i32 %223, i32* %22, align 8, !dbg !562
  br label %227, !dbg !562

; <label>:224:                                    ; preds = %218
  %225 = load i8*, i8** %24, align 8, !dbg !562
  %226 = getelementptr i8, i8* %225, i64 8, !dbg !562
  store i8* %226, i8** %24, align 8, !dbg !562
  br label %227, !dbg !562

; <label>:227:                                    ; preds = %224, %219
  %228 = phi i8* [ %222, %219 ], [ %225, %224 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !562
  %229 = bitcast i8* %228 to i64**, !dbg !562
  %230 = load i64*, i64** %229, align 8, !dbg !562
  store i64 %44, i64* %230, align 8, !dbg !564, !tbaa !565
  br label %64, !dbg !567

; <label>:231:                                    ; preds = %213
  br i1 %217, label %232, label %237, !dbg !568

; <label>:232:                                    ; preds = %231
  %233 = load i8*, i8** %23, align 8, !dbg !568
  %234 = sext i32 %216 to i64, !dbg !568
  %235 = getelementptr i8, i8* %233, i64 %234, !dbg !568
  %236 = add i32 %216, 8, !dbg !568
  store i32 %236, i32* %22, align 8, !dbg !568
  br label %240, !dbg !568

; <label>:237:                                    ; preds = %231
  %238 = load i8*, i8** %24, align 8, !dbg !568
  %239 = getelementptr i8, i8* %238, i64 8, !dbg !568
  store i8* %239, i8** %24, align 8, !dbg !568
  br label %240, !dbg !568

; <label>:240:                                    ; preds = %237, %232
  %241 = phi i8* [ %235, %232 ], [ %238, %237 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !568
  %242 = bitcast i8* %241 to i32**, !dbg !568
  %243 = load i32*, i32** %242, align 8, !dbg !568
  store i32 %47, i32* %243, align 4, !dbg !570, !tbaa !411
  br label %64

; <label>:244:                                    ; preds = %72
  %245 = load i32, i32* %8, align 4, !dbg !571, !tbaa !411
  %246 = call i32 @pthread_setcancelstate(i32 %245, i32* nonnull %8) #4, !dbg !571
  br label %1266, !dbg !572

; <label>:247:                                    ; preds = %72
  br label %248, !dbg !431

; <label>:248:                                    ; preds = %72, %247, %172, %169, %163, %131, %128, %126, %125, %124
  %249 = phi i32 [ %173, %172 ], [ %171, %169 ], [ %166, %163 ], [ %132, %131 ], [ %73, %128 ], [ %127, %126 ], [ %73, %125 ], [ %73, %124 ], [ %73, %247 ], [ %73, %72 ], !dbg !439
  %250 = phi i32 [ 16, %172 ], [ %39, %169 ], [ %39, %163 ], [ %39, %131 ], [ %39, %128 ], [ 16, %126 ], [ 10, %125 ], [ 8, %124 ], [ 10, %247 ], [ 0, %72 ], !dbg !431
  %251 = phi i64 (%struct._reent*, i32*, i32**, i32)* [ @_wcstoul_r, %172 ], [ %38, %169 ], [ %38, %163 ], [ %38, %131 ], [ %38, %128 ], [ @_wcstoul_r, %126 ], [ @_wcstoul_r, %125 ], [ @_wcstoul_r, %124 ], [ @_wcstol_r, %247 ], [ @_wcstol_r, %72 ], !dbg !431
  %252 = phi i32* [ %37, %172 ], [ %37, %169 ], [ %76, %163 ], [ %37, %131 ], [ %37, %128 ], [ %37, %126 ], [ %37, %125 ], [ %37, %124 ], [ %37, %247 ], [ %37, %72 ], !dbg !573
  %253 = phi i32* [ %36, %172 ], [ %36, %169 ], [ %164, %163 ], [ %36, %131 ], [ %36, %128 ], [ %36, %126 ], [ %36, %125 ], [ %36, %124 ], [ %36, %247 ], [ %36, %72 ], !dbg !573
  %254 = phi i32 [ %35, %172 ], [ %35, %169 ], [ %142, %163 ], [ %35, %131 ], [ %35, %128 ], [ %35, %126 ], [ %35, %125 ], [ %35, %124 ], [ %35, %247 ], [ %35, %72 ], !dbg !574
  %255 = phi i3 [ 3, %172 ], [ 0, %169 ], [ 1, %163 ], [ 2, %131 ], [ -4, %128 ], [ 3, %126 ], [ 3, %125 ], [ 3, %124 ], [ 3, %247 ], [ 3, %72 ]
  %256 = phi i32* [ %76, %172 ], [ %76, %169 ], [ %165, %163 ], [ %76, %131 ], [ %76, %128 ], [ %76, %126 ], [ %76, %125 ], [ %76, %124 ], [ %76, %247 ], [ %76, %72 ], !dbg !439
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !431
  %257 = trunc i64 %44 to i32
  %258 = and i32 %249, 64, !dbg !575
  %259 = icmp eq i32 %258, 0, !dbg !577
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !578
  br i1 %259, label %260, label %275, !dbg !578

; <label>:260:                                    ; preds = %248
  %261 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !579
  %262 = icmp eq i32 %261, -1, !dbg !581
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !582
  br i1 %262, label %263, label %264, !dbg !582

; <label>:263:                                    ; preds = %260, %269
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !583
  br label %1256, !dbg !583

; <label>:264:                                    ; preds = %260, %269
  %265 = phi i32 [ %271, %269 ], [ %261, %260 ]
  %266 = phi i32 [ %270, %269 ], [ %257, %260 ]
  %267 = call i32 @iswspace(i32 %265) #4, !dbg !584
  %268 = icmp eq i32 %267, 0, !dbg !582
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !585
  br i1 %268, label %273, label %269, !dbg !585

; <label>:269:                                    ; preds = %264
  %270 = add nsw i32 %266, 1, !dbg !586
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !585
  %271 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !579
  %272 = icmp eq i32 %271, -1, !dbg !581
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !582
  br i1 %272, label %263, label %264, !dbg !582, !llvm.loop !587

; <label>:273:                                    ; preds = %264
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !583
  %274 = call i32 @_ungetwc_r(%struct._reent* %0, i32 %265, %struct.__sFILE* %1) #4, !dbg !588
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !589
  br label %275, !dbg !589

; <label>:275:                                    ; preds = %273, %248
  %276 = phi i32 [ %266, %273 ], [ %257, %248 ], !dbg !590
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !591
  switch i3 %255, label %1248 [
    i3 0, label %277
    i3 1, label %388
    i3 2, label %558
    i3 3, label %706
    i3 -4, label %908
  ], !dbg !591

; <label>:277:                                    ; preds = %275
  %278 = icmp eq i64 %74, 0, !dbg !592
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !594
  br i1 %278, label %279, label %280, !dbg !594

; <label>:279:                                    ; preds = %277
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !595
  br label %280, !dbg !595

; <label>:280:                                    ; preds = %279, %277
  %281 = phi i64 [ 1, %279 ], [ %74, %277 ], !dbg !439
  %282 = and i32 %249, 1, !dbg !596
  %283 = icmp eq i32 %282, 0, !dbg !596
  %284 = and i32 %249, 16, !dbg !598
  %285 = icmp ne i32 %284, 0, !dbg !598
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !601
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !602
  br i1 %283, label %327, label %286, !dbg !601

; <label>:286:                                    ; preds = %280
  br i1 %285, label %302, label %287, !dbg !604

; <label>:287:                                    ; preds = %286
  %288 = load i32, i32* %22, align 8, !dbg !605
  %289 = icmp ult i32 %288, 41, !dbg !605
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !605
  br i1 %289, label %290, label %295, !dbg !605

; <label>:290:                                    ; preds = %287
  %291 = load i8*, i8** %23, align 8, !dbg !605
  %292 = sext i32 %288 to i64, !dbg !605
  %293 = getelementptr i8, i8* %291, i64 %292, !dbg !605
  %294 = add i32 %288, 8, !dbg !605
  store i32 %294, i32* %22, align 8, !dbg !605
  br label %298, !dbg !605

; <label>:295:                                    ; preds = %287
  %296 = load i8*, i8** %24, align 8, !dbg !605
  %297 = getelementptr i8, i8* %296, i64 8, !dbg !605
  store i8* %297, i8** %24, align 8, !dbg !605
  br label %298, !dbg !605

; <label>:298:                                    ; preds = %295, %290
  %299 = phi i8* [ %293, %290 ], [ %296, %295 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !605
  %300 = bitcast i8* %299 to i32**, !dbg !605
  %301 = load i32*, i32** %300, align 8, !dbg !605
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !607
  br label %302, !dbg !607

; <label>:302:                                    ; preds = %286, %298
  %303 = phi i32* [ %33, %286 ], [ %301, %298 ], !dbg !608
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !610
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !611
  br label %304, !dbg !612

; <label>:304:                                    ; preds = %302, %314
  %305 = phi i64 [ %308, %314 ], [ %281, %302 ]
  %306 = phi i32* [ %315, %314 ], [ %303, %302 ]
  %307 = phi i32 [ %316, %314 ], [ 0, %302 ]
  %308 = add i64 %305, -1, !dbg !612
  %309 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !613
  %310 = icmp eq i32 %309, -1, !dbg !614
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !610
  br i1 %310, label %319, label %311, !dbg !610

; <label>:311:                                    ; preds = %304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !615
  br i1 %285, label %314, label %312, !dbg !615

; <label>:312:                                    ; preds = %311
  %313 = getelementptr inbounds i32, i32* %306, i64 1, !dbg !617
  store i32 %309, i32* %306, align 4, !dbg !619, !tbaa !411
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !620
  br label %314, !dbg !620

; <label>:314:                                    ; preds = %312, %311
  %315 = phi i32* [ %306, %311 ], [ %313, %312 ], !dbg !621
  %316 = add nuw nsw i32 %307, 1, !dbg !622
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !610
  %317 = icmp eq i64 %308, 0, !dbg !623
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !611
  br i1 %317, label %318, label %304, !dbg !611, !llvm.loop !624

; <label>:318:                                    ; preds = %314
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !626
  br label %321, !dbg !626

; <label>:319:                                    ; preds = %304
  %320 = icmp eq i32 %307, 0, !dbg !627
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !626
  br i1 %320, label %1256, label %321, !dbg !626

; <label>:321:                                    ; preds = %318, %319
  %322 = phi i32* [ %315, %318 ], [ %306, %319 ]
  %323 = phi i32 [ %316, %318 ], [ %307, %319 ]
  %324 = add nsw i32 %323, %276, !dbg !629
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !630
  br i1 %285, label %1248, label %325, !dbg !630

; <label>:325:                                    ; preds = %321
  %326 = add nsw i32 %41, 1, !dbg !631
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !633
  br label %1248, !dbg !633

; <label>:327:                                    ; preds = %280
  br i1 %285, label %343, label %328, !dbg !634

; <label>:328:                                    ; preds = %327
  %329 = load i32, i32* %22, align 8, !dbg !635
  %330 = icmp ult i32 %329, 41, !dbg !635
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !635
  br i1 %330, label %331, label %336, !dbg !635

; <label>:331:                                    ; preds = %328
  %332 = load i8*, i8** %23, align 8, !dbg !635
  %333 = sext i32 %329 to i64, !dbg !635
  %334 = getelementptr i8, i8* %332, i64 %333, !dbg !635
  %335 = add i32 %329, 8, !dbg !635
  store i32 %335, i32* %22, align 8, !dbg !635
  br label %339, !dbg !635

; <label>:336:                                    ; preds = %328
  %337 = load i8*, i8** %24, align 8, !dbg !635
  %338 = getelementptr i8, i8* %337, i64 8, !dbg !635
  store i8* %338, i8** %24, align 8, !dbg !635
  br label %339, !dbg !635

; <label>:339:                                    ; preds = %336, %331
  %340 = phi i8* [ %334, %331 ], [ %337, %336 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !635
  %341 = bitcast i8* %340 to i8**, !dbg !635
  %342 = load i8*, i8** %341, align 8, !dbg !635
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !636
  br label %343, !dbg !636

; <label>:343:                                    ; preds = %327, %339
  %344 = phi i8* [ %34, %327 ], [ %342, %339 ], !dbg !598
  %345 = call i8* @memset(i8* nonnull %9, i32 0, i64 8) #4, !dbg !637
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !638
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !639
  br label %346, !dbg !640

; <label>:346:                                    ; preds = %343, %373
  %347 = phi i64 [ %376, %373 ], [ %281, %343 ]
  %348 = phi i32 [ %377, %373 ], [ 0, %343 ]
  %349 = phi i8* [ %375, %373 ], [ %344, %343 ]
  %350 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !640
  %351 = icmp eq i32 %350, -1, !dbg !641
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !638
  br i1 %351, label %380, label %352, !dbg !638

; <label>:352:                                    ; preds = %346
  %353 = call i32 @__locale_mb_cur_max() #4, !dbg !642
  %354 = sext i32 %353 to i64, !dbg !642
  %355 = icmp ult i64 %347, %354, !dbg !645
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !646
  br i1 %355, label %360, label %356, !dbg !646

; <label>:356:                                    ; preds = %352
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !647
  br i1 %285, label %360, label %357, !dbg !647

; <label>:357:                                    ; preds = %356
  %358 = call i64 @_wcrtomb_r(%struct._reent* %0, i8* %349, i32 %350, %struct._mbstate_t* nonnull %5) #4, !dbg !649
  %359 = icmp eq i64 %358, -1, !dbg !652
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !654
  br i1 %359, label %1256, label %370, !dbg !654

; <label>:360:                                    ; preds = %352, %356
  %361 = call i64 @_wcrtomb_r(%struct._reent* %0, i8* nonnull %11, i32 %350, %struct._mbstate_t* nonnull %5) #4, !dbg !655
  %362 = icmp eq i64 %361, -1, !dbg !657
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !659
  br i1 %362, label %1256, label %363, !dbg !659

; <label>:363:                                    ; preds = %360
  %364 = icmp ugt i64 %361, %347, !dbg !660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !662
  br i1 %364, label %365, label %367, !dbg !662

; <label>:365:                                    ; preds = %363
  %366 = call i32 @_ungetwc_r(%struct._reent* %0, i32 %350, %struct.__sFILE* %1) #4, !dbg !663
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !665
  br label %380, !dbg !665

; <label>:367:                                    ; preds = %363
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !666
  br i1 %285, label %373, label %368, !dbg !666

; <label>:368:                                    ; preds = %367
  %369 = call i8* @memcpy(i8* %349, i8* nonnull %11, i64 %361) #4, !dbg !667
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !667
  br label %370, !dbg !667

; <label>:370:                                    ; preds = %368, %357
  %371 = phi i64 [ %358, %357 ], [ %361, %368 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !669
  %372 = getelementptr inbounds i8, i8* %349, i64 %371, !dbg !670
  br label %373, !dbg !672

; <label>:373:                                    ; preds = %367, %370
  %374 = phi i64 [ %371, %370 ], [ %361, %367 ]
  %375 = phi i8* [ %372, %370 ], [ %349, %367 ], !dbg !673
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !673
  %376 = sub i64 %347, %374, !dbg !674
  %377 = add nuw nsw i32 %348, 1, !dbg !675
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !638
  %378 = icmp eq i64 %376, 0, !dbg !676
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !639
  br i1 %378, label %379, label %346, !dbg !639, !llvm.loop !677

; <label>:379:                                    ; preds = %373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !679
  br label %382, !dbg !679

; <label>:380:                                    ; preds = %346, %365
  %381 = icmp eq i32 %348, 0, !dbg !680
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !679
  br i1 %381, label %1256, label %382, !dbg !679

; <label>:382:                                    ; preds = %379, %380
  %383 = phi i32 [ %377, %379 ], [ %348, %380 ]
  %384 = phi i8* [ %375, %379 ], [ %349, %380 ]
  %385 = add nsw i32 %383, %276, !dbg !682
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !683
  br i1 %285, label %1248, label %386, !dbg !683

; <label>:386:                                    ; preds = %382
  %387 = add nsw i32 %41, 1, !dbg !684
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !686
  br label %1248, !dbg !686

; <label>:388:                                    ; preds = %275
  %389 = icmp eq i64 %74, 0, !dbg !687
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !689
  br i1 %389, label %390, label %391, !dbg !689

; <label>:390:                                    ; preds = %388
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !690
  br label %391, !dbg !690

; <label>:391:                                    ; preds = %390, %388
  %392 = phi i64 [ -1, %390 ], [ %74, %388 ], !dbg !439
  %393 = and i32 %249, 16, !dbg !691
  %394 = icmp ne i32 %393, 0, !dbg !691
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !693
  %395 = and i32 %249, 1, !dbg !694
  %396 = icmp eq i32 %395, 0, !dbg !694
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !696
  br i1 %394, label %397, label %427, !dbg !693

; <label>:397:                                    ; preds = %391
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !697
  br i1 %396, label %496, label %398, !dbg !699

; <label>:398:                                    ; preds = %397
  %399 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !700
  %400 = icmp eq i32 %399, -1, !dbg !701
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !702
  br i1 %400, label %424, label %401, !dbg !702

; <label>:401:                                    ; preds = %398
  %402 = icmp eq i32 %254, 0
  %403 = ptrtoint i32* %253 to i64
  %404 = ptrtoint i32* %252 to i64
  %405 = sub i64 %403, %404
  %406 = ashr exact i64 %405, 2
  br label %407, !dbg !702

; <label>:407:                                    ; preds = %401, %418
  %408 = phi i32 [ %399, %401 ], [ %420, %418 ]
  %409 = phi i64 [ %392, %401 ], [ %411, %418 ]
  %410 = phi i32 [ 0, %401 ], [ %419, %418 ]
  %411 = add i64 %409, -1, !dbg !703
  %412 = icmp eq i64 %409, 0, !dbg !704
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !705
  br i1 %412, label %422, label %413, !dbg !705

; <label>:413:                                    ; preds = %407
  %414 = call i32* @wmemchr(i32* %252, i32 %408, i64 %406) #4, !dbg !706
  %415 = icmp eq i32* %414, null, !dbg !706
  %416 = icmp ne i32* %414, null, !dbg !706
  %417 = select i1 %402, i1 %416, i1 %415, !dbg !706
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !707
  br i1 %417, label %418, label %422, !dbg !707

; <label>:418:                                    ; preds = %413
  %419 = add nuw nsw i32 %410, 1, !dbg !708
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !707
  %420 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !700
  %421 = icmp eq i32 %420, -1, !dbg !701
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !702
  br i1 %421, label %424, label %407, !dbg !702, !llvm.loop !709

; <label>:422:                                    ; preds = %413, %407
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !710
  %423 = call i32 @_ungetwc_r(%struct._reent* %0, i32 %408, %struct.__sFILE* %1) #4, !dbg !711
  br label %424, !dbg !711

; <label>:424:                                    ; preds = %418, %398, %422
  %425 = phi i32 [ %410, %422 ], [ 0, %398 ], [ %419, %418 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !713
  %426 = icmp eq i32 %425, 0, !dbg !714
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !716
  br i1 %426, label %1268, label %552, !dbg !716

; <label>:427:                                    ; preds = %391
  br i1 %396, label %481, label %428, !dbg !717

; <label>:428:                                    ; preds = %427
  %429 = load i32, i32* %22, align 8, !dbg !718
  %430 = icmp ult i32 %429, 41, !dbg !718
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !718
  br i1 %430, label %431, label %436, !dbg !718

; <label>:431:                                    ; preds = %428
  %432 = load i8*, i8** %23, align 8, !dbg !718
  %433 = sext i32 %429 to i64, !dbg !718
  %434 = getelementptr i8, i8* %432, i64 %433, !dbg !718
  %435 = add i32 %429, 8, !dbg !718
  store i32 %435, i32* %22, align 8, !dbg !718
  br label %439, !dbg !718

; <label>:436:                                    ; preds = %428
  %437 = load i8*, i8** %24, align 8, !dbg !718
  %438 = getelementptr i8, i8* %437, i64 8, !dbg !718
  store i8* %438, i8** %24, align 8, !dbg !718
  br label %439, !dbg !718

; <label>:439:                                    ; preds = %436, %431
  %440 = phi i8* [ %434, %431 ], [ %437, %436 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !718
  %441 = bitcast i8* %440 to i32**, !dbg !718
  %442 = load i32*, i32** %441, align 8, !dbg !718
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !721
  %443 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !722
  %444 = icmp eq i32 %443, -1, !dbg !723
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !724
  br i1 %444, label %467, label %445, !dbg !724

; <label>:445:                                    ; preds = %439
  %446 = icmp eq i32 %254, 0
  %447 = ptrtoint i32* %253 to i64
  %448 = ptrtoint i32* %252 to i64
  %449 = sub i64 %447, %448
  %450 = ashr exact i64 %449, 2
  br label %451, !dbg !724

; <label>:451:                                    ; preds = %445, %463
  %452 = phi i32 [ %443, %445 ], [ %465, %463 ]
  %453 = phi i64 [ %392, %445 ], [ %455, %463 ]
  %454 = phi i32* [ %442, %445 ], [ %464, %463 ]
  %455 = add i64 %453, -1, !dbg !725
  %456 = icmp eq i64 %453, 0, !dbg !726
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !727
  br i1 %456, label %457, label %458, !dbg !727

; <label>:457:                                    ; preds = %451
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !721
  br label %469, !dbg !728

; <label>:458:                                    ; preds = %451
  %459 = call i32* @wmemchr(i32* %252, i32 %452, i64 %450) #4, !dbg !729
  %460 = icmp eq i32* %459, null, !dbg !729
  %461 = icmp ne i32* %459, null, !dbg !729
  %462 = select i1 %446, i1 %461, i1 %460, !dbg !729
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !721
  br i1 %462, label %463, label %469, !dbg !721

; <label>:463:                                    ; preds = %458
  %464 = getelementptr inbounds i32, i32* %454, i64 1, !dbg !730
  store i32 %452, i32* %454, align 4, !dbg !731, !tbaa !411
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !721
  %465 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !722
  %466 = icmp eq i32 %465, -1, !dbg !723
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !724
  br i1 %466, label %467, label %451, !dbg !724, !llvm.loop !732

; <label>:467:                                    ; preds = %463, %439
  %468 = phi i32* [ %442, %439 ], [ %464, %463 ], !dbg !734
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !721
  br label %471

; <label>:469:                                    ; preds = %458, %457
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !728
  %470 = call i32 @_ungetwc_r(%struct._reent* %0, i32 %452, %struct.__sFILE* %1) #4, !dbg !735
  br label %471, !dbg !735

; <label>:471:                                    ; preds = %467, %469
  %472 = phi i32* [ %468, %467 ], [ %454, %469 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !737
  %473 = ptrtoint i32* %472 to i64, !dbg !738
  %474 = ptrtoint i32* %442 to i64, !dbg !738
  %475 = sub i64 %473, %474, !dbg !738
  %476 = lshr exact i64 %475, 2, !dbg !738
  %477 = trunc i64 %476 to i32, !dbg !739
  %478 = icmp eq i32 %477, 0, !dbg !740
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !742
  br i1 %478, label %1268, label %479, !dbg !742

; <label>:479:                                    ; preds = %471
  store i32 0, i32* %472, align 4, !dbg !743, !tbaa !411
  %480 = add nsw i32 %41, 1, !dbg !744
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !745
  br label %552, !dbg !745

; <label>:481:                                    ; preds = %427
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !746
  %482 = load i32, i32* %22, align 8, !dbg !748
  %483 = icmp ult i32 %482, 41, !dbg !748
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !748
  br i1 %483, label %484, label %489, !dbg !748

; <label>:484:                                    ; preds = %481
  %485 = load i8*, i8** %23, align 8, !dbg !748
  %486 = sext i32 %482 to i64, !dbg !748
  %487 = getelementptr i8, i8* %485, i64 %486, !dbg !748
  %488 = add i32 %482, 8, !dbg !748
  store i32 %488, i32* %22, align 8, !dbg !748
  br label %492, !dbg !748

; <label>:489:                                    ; preds = %481
  %490 = load i8*, i8** %24, align 8, !dbg !748
  %491 = getelementptr i8, i8* %490, i64 8, !dbg !748
  store i8* %491, i8** %24, align 8, !dbg !748
  br label %492, !dbg !748

; <label>:492:                                    ; preds = %489, %484
  %493 = phi i8* [ %487, %484 ], [ %490, %489 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !748
  %494 = bitcast i8* %493 to i8**, !dbg !748
  %495 = load i8*, i8** %494, align 8, !dbg !748
  br label %496, !dbg !750

; <label>:496:                                    ; preds = %397, %492
  %497 = phi i8* [ %495, %492 ], [ %34, %397 ], !dbg !751
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !751
  %498 = call i8* @memset(i8* nonnull %9, i32 0, i64 8) #4, !dbg !752
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !753
  %499 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !754
  %500 = icmp eq i32 %499, -1, !dbg !755
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !756
  br i1 %500, label %547, label %501, !dbg !756

; <label>:501:                                    ; preds = %496
  %502 = icmp eq i32 %254, 0
  %503 = ptrtoint i32* %253 to i64
  %504 = ptrtoint i32* %252 to i64
  %505 = sub i64 %503, %504
  %506 = ashr exact i64 %505, 2
  br label %507, !dbg !756

; <label>:507:                                    ; preds = %501, %538
  %508 = phi i32 [ %499, %501 ], [ %543, %538 ]
  %509 = phi i64 [ %392, %501 ], [ %541, %538 ]
  %510 = phi i32 [ 0, %501 ], [ %542, %538 ]
  %511 = phi i8* [ %497, %501 ], [ %540, %538 ]
  %512 = add i64 %509, -1, !dbg !757
  %513 = icmp eq i64 %509, 0, !dbg !758
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !759
  br i1 %513, label %545, label %514, !dbg !759

; <label>:514:                                    ; preds = %507
  %515 = call i32* @wmemchr(i32* %252, i32 %508, i64 %506) #4, !dbg !760
  %516 = icmp eq i32* %515, null, !dbg !760
  %517 = icmp ne i32* %515, null, !dbg !760
  %518 = select i1 %502, i1 %517, i1 %516, !dbg !760
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !753
  br i1 %518, label %519, label %545, !dbg !753

; <label>:519:                                    ; preds = %514
  %520 = call i32 @__locale_mb_cur_max() #4, !dbg !761
  %521 = sext i32 %520 to i64, !dbg !761
  %522 = icmp ult i64 %512, %521, !dbg !764
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !765
  br i1 %522, label %527, label %523, !dbg !765

; <label>:523:                                    ; preds = %519
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !766
  br i1 %394, label %527, label %524, !dbg !766

; <label>:524:                                    ; preds = %523
  %525 = call i64 @_wcrtomb_r(%struct._reent* %0, i8* %511, i32 %508, %struct._mbstate_t* nonnull %5) #4, !dbg !767
  %526 = icmp eq i64 %525, -1, !dbg !769
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !771
  br i1 %526, label %1256, label %535, !dbg !771

; <label>:527:                                    ; preds = %519, %523
  %528 = call i64 @wcrtomb(i8* nonnull %11, i32 %508, %struct._mbstate_t* nonnull %5) #4, !dbg !772
  %529 = icmp eq i64 %528, -1, !dbg !774
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !776
  br i1 %529, label %1256, label %530, !dbg !776

; <label>:530:                                    ; preds = %527
  %531 = icmp ugt i64 %528, %512, !dbg !777
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !779
  br i1 %531, label %545, label %532, !dbg !779

; <label>:532:                                    ; preds = %530
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !780
  br i1 %394, label %538, label %533, !dbg !780

; <label>:533:                                    ; preds = %532
  %534 = call i8* @memcpy(i8* %511, i8* nonnull %11, i64 %528) #4, !dbg !781
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !781
  br label %535, !dbg !781

; <label>:535:                                    ; preds = %533, %524
  %536 = phi i64 [ %525, %524 ], [ %528, %533 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !783
  %537 = getelementptr inbounds i8, i8* %511, i64 %536, !dbg !784
  br label %538, !dbg !786

; <label>:538:                                    ; preds = %532, %535
  %539 = phi i64 [ %536, %535 ], [ %528, %532 ]
  %540 = phi i8* [ %537, %535 ], [ %511, %532 ], !dbg !787
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !787
  %541 = sub i64 %512, %539, !dbg !788
  %542 = add nuw nsw i32 %510, 1, !dbg !789
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !753
  %543 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !754
  %544 = icmp eq i32 %543, -1, !dbg !755
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !756
  br i1 %544, label %547, label %507, !dbg !756, !llvm.loop !790

; <label>:545:                                    ; preds = %514, %530, %507
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !792
  %546 = call i32 @_ungetwc_r(%struct._reent* %0, i32 %508, %struct.__sFILE* %1) #4, !dbg !793
  br label %547, !dbg !793

; <label>:547:                                    ; preds = %538, %496, %545
  %548 = phi i8* [ %511, %545 ], [ %497, %496 ], [ %540, %538 ]
  %549 = phi i32 [ %510, %545 ], [ 0, %496 ], [ %542, %538 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !795
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !796
  br i1 %394, label %552, label %550, !dbg !796

; <label>:550:                                    ; preds = %547
  store i8 0, i8* %548, align 1, !dbg !797, !tbaa !401
  %551 = add nsw i32 %41, 1, !dbg !800
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !801
  br label %552, !dbg !801

; <label>:552:                                    ; preds = %479, %550, %547, %424
  %553 = phi i32 [ %41, %424 ], [ %480, %479 ], [ %41, %547 ], [ %551, %550 ], !dbg !802
  %554 = phi i8* [ %34, %424 ], [ %34, %479 ], [ %548, %547 ], [ %548, %550 ], !dbg !393
  %555 = phi i32 [ %425, %424 ], [ %477, %479 ], [ %549, %547 ], [ %549, %550 ], !dbg !803
  %556 = phi i32* [ %33, %424 ], [ %472, %479 ], [ %33, %547 ], [ %33, %550 ], !dbg !574
  %557 = add nsw i32 %555, %276, !dbg !804
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !805
  br label %1248, !dbg !805

; <label>:558:                                    ; preds = %275
  %559 = icmp eq i64 %74, 0, !dbg !806
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !808
  br i1 %559, label %560, label %561, !dbg !808

; <label>:560:                                    ; preds = %558
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !809
  br label %561, !dbg !809

; <label>:561:                                    ; preds = %560, %558
  %562 = phi i64 [ -1, %560 ], [ %74, %558 ], !dbg !439
  %563 = and i32 %249, 16, !dbg !810
  %564 = icmp ne i32 %563, 0, !dbg !810
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !812
  %565 = and i32 %249, 1, !dbg !813
  %566 = icmp eq i32 %565, 0, !dbg !813
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !815
  br i1 %564, label %567, label %587, !dbg !812

; <label>:567:                                    ; preds = %561
  br i1 %566, label %568, label %569, !dbg !816

; <label>:568:                                    ; preds = %567
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !817
  br label %645, !dbg !818

; <label>:569:                                    ; preds = %567
  %570 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !820
  %571 = icmp eq i32 %570, -1, !dbg !822
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !823
  br i1 %571, label %701, label %572, !dbg !823

; <label>:572:                                    ; preds = %569, %581
  %573 = phi i32 [ %583, %581 ], [ %570, %569 ]
  %574 = phi i64 [ %576, %581 ], [ %562, %569 ]
  %575 = phi i32 [ %582, %581 ], [ %276, %569 ]
  %576 = add i64 %574, -1, !dbg !824
  %577 = icmp eq i64 %574, 0, !dbg !825
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !826
  br i1 %577, label %585, label %578, !dbg !826

; <label>:578:                                    ; preds = %572
  %579 = call i32 @iswspace(i32 %573) #4, !dbg !827
  %580 = icmp eq i32 %579, 0, !dbg !828
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !829
  br i1 %580, label %581, label %585, !dbg !829

; <label>:581:                                    ; preds = %578
  %582 = add nsw i32 %575, 1, !dbg !830
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !829
  %583 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !820
  %584 = icmp eq i32 %583, -1, !dbg !822
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !823
  br i1 %584, label %701, label %572, !dbg !823, !llvm.loop !831

; <label>:585:                                    ; preds = %578, %572
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !832
  %586 = call i32 @_ungetwc_r(%struct._reent* %0, i32 %573, %struct.__sFILE* %1) #4, !dbg !833
  br label %701, !dbg !833

; <label>:587:                                    ; preds = %561
  br i1 %566, label %630, label %588, !dbg !817

; <label>:588:                                    ; preds = %587
  %589 = load i32, i32* %22, align 8, !dbg !835
  %590 = icmp ult i32 %589, 41, !dbg !835
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !835
  br i1 %590, label %591, label %596, !dbg !835

; <label>:591:                                    ; preds = %588
  %592 = load i8*, i8** %23, align 8, !dbg !835
  %593 = sext i32 %589 to i64, !dbg !835
  %594 = getelementptr i8, i8* %592, i64 %593, !dbg !835
  %595 = add i32 %589, 8, !dbg !835
  store i32 %595, i32* %22, align 8, !dbg !835
  br label %599, !dbg !835

; <label>:596:                                    ; preds = %588
  %597 = load i8*, i8** %24, align 8, !dbg !835
  %598 = getelementptr i8, i8* %597, i64 8, !dbg !835
  store i8* %598, i8** %24, align 8, !dbg !835
  br label %599, !dbg !835

; <label>:599:                                    ; preds = %596, %591
  %600 = phi i8* [ %594, %591 ], [ %597, %596 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !835
  %601 = bitcast i8* %600 to i32**, !dbg !835
  %602 = load i32*, i32** %601, align 8, !dbg !835
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !837
  %603 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !838
  %604 = icmp eq i32 %603, -1, !dbg !839
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !840
  br i1 %604, label %621, label %605, !dbg !840

; <label>:605:                                    ; preds = %599, %616
  %606 = phi i32 [ %619, %616 ], [ %603, %599 ]
  %607 = phi i64 [ %610, %616 ], [ %562, %599 ]
  %608 = phi i32* [ %617, %616 ], [ %602, %599 ]
  %609 = phi i32 [ %618, %616 ], [ %276, %599 ]
  %610 = add i64 %607, -1, !dbg !841
  %611 = icmp eq i64 %607, 0, !dbg !842
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !843
  br i1 %611, label %612, label %613, !dbg !843

; <label>:612:                                    ; preds = %605
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !837
  br label %624, !dbg !844

; <label>:613:                                    ; preds = %605
  %614 = call i32 @iswspace(i32 %606) #4, !dbg !845
  %615 = icmp eq i32 %614, 0, !dbg !846
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !837
  br i1 %615, label %616, label %624, !dbg !837

; <label>:616:                                    ; preds = %613
  %617 = getelementptr inbounds i32, i32* %608, i64 1, !dbg !847
  store i32 %606, i32* %608, align 4, !dbg !849, !tbaa !411
  %618 = add nsw i32 %609, 1, !dbg !850
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !837
  %619 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !838
  %620 = icmp eq i32 %619, -1, !dbg !839
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !840
  br i1 %620, label %621, label %605, !dbg !840, !llvm.loop !851

; <label>:621:                                    ; preds = %616, %599
  %622 = phi i32 [ %276, %599 ], [ %618, %616 ], !dbg !853
  %623 = phi i32* [ %602, %599 ], [ %617, %616 ], !dbg !853
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !837
  br label %626

; <label>:624:                                    ; preds = %613, %612
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !844
  %625 = call i32 @_ungetwc_r(%struct._reent* %0, i32 %606, %struct.__sFILE* %1) #4, !dbg !854
  br label %626, !dbg !854

; <label>:626:                                    ; preds = %621, %624
  %627 = phi i32 [ %622, %621 ], [ %609, %624 ]
  %628 = phi i32* [ %623, %621 ], [ %608, %624 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !856
  store i32 0, i32* %628, align 4, !dbg !857, !tbaa !411
  %629 = add nsw i32 %41, 1, !dbg !858
  br label %701, !dbg !859

; <label>:630:                                    ; preds = %587
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !818
  %631 = load i32, i32* %22, align 8, !dbg !860
  %632 = icmp ult i32 %631, 41, !dbg !860
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !860
  br i1 %632, label %633, label %638, !dbg !860

; <label>:633:                                    ; preds = %630
  %634 = load i8*, i8** %23, align 8, !dbg !860
  %635 = sext i32 %631 to i64, !dbg !860
  %636 = getelementptr i8, i8* %634, i64 %635, !dbg !860
  %637 = add i32 %631, 8, !dbg !860
  store i32 %637, i32* %22, align 8, !dbg !860
  br label %641, !dbg !860

; <label>:638:                                    ; preds = %630
  %639 = load i8*, i8** %24, align 8, !dbg !860
  %640 = getelementptr i8, i8* %639, i64 8, !dbg !860
  store i8* %640, i8** %24, align 8, !dbg !860
  br label %641, !dbg !860

; <label>:641:                                    ; preds = %638, %633
  %642 = phi i8* [ %636, %633 ], [ %639, %638 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !860
  %643 = bitcast i8* %642 to i8**, !dbg !860
  %644 = load i8*, i8** %643, align 8, !dbg !860
  br label %645, !dbg !862

; <label>:645:                                    ; preds = %568, %641
  %646 = phi i8* [ %644, %641 ], [ %34, %568 ], !dbg !863
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !863
  %647 = call i8* @memset(i8* nonnull %9, i32 0, i64 8) #4, !dbg !864
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !865
  %648 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !866
  %649 = icmp ne i32 %648, -1, !dbg !867
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !868
  br i1 %649, label %650, label %686, !dbg !868

; <label>:650:                                    ; preds = %645, %676
  %651 = phi i32 [ %681, %676 ], [ %648, %645 ]
  %652 = phi i64 [ %679, %676 ], [ %562, %645 ]
  %653 = phi i8* [ %678, %676 ], [ %646, %645 ]
  %654 = phi i32 [ %680, %676 ], [ %276, %645 ]
  %655 = call i32 @iswspace(i32 %651) #4, !dbg !869
  %656 = icmp eq i32 %655, 0, !dbg !870
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !865
  br i1 %656, label %657, label %685, !dbg !865

; <label>:657:                                    ; preds = %650
  %658 = call i32 @__locale_mb_cur_max() #4, !dbg !871
  %659 = sext i32 %658 to i64, !dbg !871
  %660 = icmp ult i64 %652, %659, !dbg !874
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !875
  br i1 %660, label %665, label %661, !dbg !875

; <label>:661:                                    ; preds = %657
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !876
  br i1 %564, label %665, label %662, !dbg !876

; <label>:662:                                    ; preds = %661
  %663 = call i64 @wcrtomb(i8* %653, i32 %651, %struct._mbstate_t* nonnull %5) #4, !dbg !877
  %664 = icmp eq i64 %663, -1, !dbg !879
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !881
  br i1 %664, label %1256, label %673, !dbg !881

; <label>:665:                                    ; preds = %657, %661
  %666 = call i64 @wcrtomb(i8* nonnull %11, i32 %651, %struct._mbstate_t* nonnull %5) #4, !dbg !882
  %667 = icmp eq i64 %666, -1, !dbg !884
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !886
  br i1 %667, label %1256, label %668, !dbg !886

; <label>:668:                                    ; preds = %665
  %669 = icmp ugt i64 %666, %652, !dbg !887
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !889
  br i1 %669, label %685, label %670, !dbg !889

; <label>:670:                                    ; preds = %668
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !890
  br i1 %564, label %676, label %671, !dbg !890

; <label>:671:                                    ; preds = %670
  %672 = call i8* @memcpy(i8* %653, i8* nonnull %11, i64 %666) #4, !dbg !891
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !891
  br label %673, !dbg !891

; <label>:673:                                    ; preds = %671, %662
  %674 = phi i64 [ %663, %662 ], [ %666, %671 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !893
  %675 = getelementptr inbounds i8, i8* %653, i64 %674, !dbg !894
  br label %676, !dbg !896

; <label>:676:                                    ; preds = %670, %673
  %677 = phi i64 [ %674, %673 ], [ %666, %670 ]
  %678 = phi i8* [ %675, %673 ], [ %653, %670 ], !dbg !897
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !897
  %679 = sub i64 %652, %677, !dbg !898
  %680 = add nsw i32 %654, 1, !dbg !899
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !865
  %681 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !866
  %682 = icmp ne i32 %681, -1, !dbg !867
  %683 = icmp ne i64 %679, 0, !dbg !900
  %684 = and i1 %683, %682, !dbg !868
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !868
  br i1 %684, label %650, label %686, !dbg !868, !llvm.loop !901

; <label>:685:                                    ; preds = %650, %668
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !903
  br label %691, !dbg !903

; <label>:686:                                    ; preds = %676, %645
  %687 = phi i32 [ %276, %645 ], [ %680, %676 ], !dbg !904
  %688 = phi i8* [ %646, %645 ], [ %678, %676 ], !dbg !393
  %689 = phi i32 [ %648, %645 ], [ %681, %676 ], !dbg !866
  %690 = phi i1 [ %649, %645 ], [ %682, %676 ], !dbg !867
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !903
  br i1 %690, label %691, label %696, !dbg !903

; <label>:691:                                    ; preds = %685, %686
  %692 = phi i32 [ %651, %685 ], [ %689, %686 ]
  %693 = phi i8* [ %653, %685 ], [ %688, %686 ]
  %694 = phi i32 [ %654, %685 ], [ %687, %686 ]
  %695 = call i32 @_ungetwc_r(%struct._reent* %0, i32 %692, %struct.__sFILE* %1) #4, !dbg !905
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !905
  br label %696, !dbg !905

; <label>:696:                                    ; preds = %691, %686
  %697 = phi i8* [ %693, %691 ], [ %688, %686 ]
  %698 = phi i32 [ %694, %691 ], [ %687, %686 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !907
  br i1 %564, label %1248, label %699, !dbg !907

; <label>:699:                                    ; preds = %696
  store i8 0, i8* %697, align 1, !dbg !908, !tbaa !401
  %700 = add nsw i32 %41, 1, !dbg !911
  br label %701, !dbg !912

; <label>:701:                                    ; preds = %581, %569, %585, %699, %626
  %702 = phi i32 [ %700, %699 ], [ %629, %626 ], [ %41, %585 ], [ %41, %569 ], [ %41, %581 ]
  %703 = phi i32 [ %698, %699 ], [ %627, %626 ], [ %575, %585 ], [ %276, %569 ], [ %582, %581 ]
  %704 = phi i8* [ %697, %699 ], [ %34, %626 ], [ %34, %585 ], [ %34, %569 ], [ %34, %581 ]
  %705 = phi i32* [ %33, %699 ], [ %628, %626 ], [ %33, %585 ], [ %33, %569 ], [ %33, %581 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !913
  br label %1248, !dbg !914

; <label>:706:                                    ; preds = %275
  %707 = add i64 %74, -1, !dbg !915
  %708 = icmp ugt i64 %707, 348, !dbg !915
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !915
  br i1 %708, label %709, label %710, !dbg !915

; <label>:709:                                    ; preds = %706
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !917
  br label %710, !dbg !917

; <label>:710:                                    ; preds = %709, %706
  %711 = phi i64 [ 349, %709 ], [ %74, %706 ], !dbg !439
  %712 = or i32 %249, 1408, !dbg !918
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !919
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !921
  br label %713, !dbg !922

; <label>:713:                                    ; preds = %710, %778
  %714 = phi i32* [ %783, %778 ], [ %25, %710 ]
  %715 = phi i64 [ %782, %778 ], [ %711, %710 ]
  %716 = phi i64 [ %781, %778 ], [ 0, %710 ]
  %717 = phi i32 [ %780, %778 ], [ %250, %710 ]
  %718 = phi i32 [ %779, %778 ], [ %712, %710 ]
  %719 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !922
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !925
  switch i32 %719, label %773 [
    i32 48, label %720
    i32 49, label %733
    i32 50, label %733
    i32 51, label %733
    i32 52, label %733
    i32 53, label %733
    i32 54, label %733
    i32 55, label %733
    i32 56, label %739
    i32 57, label %739
    i32 65, label %748
    i32 66, label %748
    i32 67, label %748
    i32 68, label %748
    i32 69, label %748
    i32 70, label %748
    i32 97, label %748
    i32 98, label %748
    i32 99, label %748
    i32 100, label %748
    i32 101, label %748
    i32 102, label %748
    i32 43, label %752
    i32 45, label %752
    i32 120, label %758
    i32 88, label %758
  ], !dbg !925

; <label>:720:                                    ; preds = %713
  %721 = icmp eq i32 %717, 0, !dbg !926
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !929
  br i1 %721, label %722, label %724, !dbg !929

; <label>:722:                                    ; preds = %720
  %723 = or i32 %718, 512, !dbg !930
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !932
  br label %724, !dbg !932

; <label>:724:                                    ; preds = %722, %720
  %725 = phi i32 [ %723, %722 ], [ %718, %720 ], !dbg !933
  %726 = phi i32 [ 8, %722 ], [ %717, %720 ], !dbg !431
  %727 = and i32 %725, 1024, !dbg !934
  %728 = icmp eq i32 %727, 0, !dbg !934
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !936
  br i1 %728, label %731, label %729, !dbg !936

; <label>:729:                                    ; preds = %724
  %730 = and i32 %725, -1409, !dbg !937
  br label %778, !dbg !938

; <label>:731:                                    ; preds = %724
  %732 = and i32 %725, -897, !dbg !939
  br label %778

; <label>:733:                                    ; preds = %713, %713, %713, %713, %713, %713, %713
  %734 = sext i32 %717 to i64, !dbg !940
  %735 = getelementptr inbounds [17 x i16], [17 x i16]* @__svfwscanf_r.basefix, i64 0, i64 %734, !dbg !940
  %736 = load i16, i16* %735, align 2, !dbg !940, !tbaa !552
  %737 = sext i16 %736 to i32, !dbg !940
  %738 = and i32 %718, -897, !dbg !941
  br label %778, !dbg !942

; <label>:739:                                    ; preds = %713, %713
  %740 = sext i32 %717 to i64, !dbg !943
  %741 = getelementptr inbounds [17 x i16], [17 x i16]* @__svfwscanf_r.basefix, i64 0, i64 %740, !dbg !943
  %742 = load i16, i16* %741, align 2, !dbg !943, !tbaa !552
  %743 = add nsw i64 %740, -1, !dbg !944
  %744 = icmp ult i64 %743, 8, !dbg !944
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !946
  %745 = sext i16 %742 to i32, !dbg !943
  br i1 %744, label %769, label %746, !dbg !946

; <label>:746:                                    ; preds = %739
  %747 = and i32 %718, -897, !dbg !947
  br label %778, !dbg !948

; <label>:748:                                    ; preds = %713, %713, %713, %713, %713, %713, %713, %713, %713, %713, %713, %713
  %749 = icmp slt i32 %717, 11, !dbg !949
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !951
  br i1 %749, label %771, label %750, !dbg !951

; <label>:750:                                    ; preds = %748
  %751 = and i32 %718, -897, !dbg !952
  br label %778, !dbg !953

; <label>:752:                                    ; preds = %713, %713
  %753 = trunc i32 %718 to i8, !dbg !954
  %754 = icmp slt i8 %753, 0, !dbg !954
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !956
  br i1 %754, label %755, label %771, !dbg !956

; <label>:755:                                    ; preds = %752
  %756 = and i32 %718, -65665, !dbg !957
  %757 = or i32 %756, 65536, !dbg !959
  br label %778, !dbg !960

; <label>:758:                                    ; preds = %713, %713
  %759 = and i32 %718, 512, !dbg !961
  %760 = icmp eq i32 %759, 0, !dbg !961
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !963
  br i1 %760, label %771, label %761, !dbg !963

; <label>:761:                                    ; preds = %758
  %762 = lshr i32 %718, 16, !dbg !964
  %763 = and i32 %762, 1, !dbg !964
  %764 = zext i32 %763 to i64, !dbg !965
  %765 = getelementptr inbounds i32, i32* %26, i64 %764, !dbg !965
  %766 = icmp eq i32* %714, %765, !dbg !966
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !967
  br i1 %766, label %767, label %771, !dbg !967

; <label>:767:                                    ; preds = %761
  %768 = and i32 %718, -513, !dbg !968
  br label %778, !dbg !970

; <label>:769:                                    ; preds = %739
  %770 = sext i16 %742 to i32, !dbg !943
  br label %771, !dbg !971

; <label>:771:                                    ; preds = %758, %761, %752, %748, %769
  %772 = phi i32 [ %770, %769 ], [ %717, %748 ], [ %717, %752 ], [ %717, %761 ], [ %717, %758 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !971
  br label %775, !dbg !971

; <label>:773:                                    ; preds = %713
  %774 = icmp eq i32 %719, -1, !dbg !972
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !971
  br i1 %774, label %785, label %775, !dbg !971

; <label>:775:                                    ; preds = %771, %773
  %776 = phi i32 [ %772, %771 ], [ %717, %773 ]
  %777 = call i32 @_ungetwc_r(%struct._reent* %0, i32 %719, %struct.__sFILE* %1) #4, !dbg !974
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !974
  br label %785, !dbg !974

; <label>:778:                                    ; preds = %729, %731, %767, %755, %750, %746, %733
  %779 = phi i32 [ %768, %767 ], [ %757, %755 ], [ %751, %750 ], [ %747, %746 ], [ %738, %733 ], [ %730, %729 ], [ %732, %731 ], !dbg !975
  %780 = phi i32 [ 16, %767 ], [ %717, %755 ], [ %717, %750 ], [ %745, %746 ], [ %737, %733 ], [ %726, %729 ], [ %726, %731 ], !dbg !976
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %781 = add nuw nsw i64 %716, 1, !dbg !977
  store i32 %719, i32* %714, align 4, !dbg !978, !tbaa !411
  %782 = add nsw i64 %715, -1, !dbg !979
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !980
  %783 = getelementptr inbounds [350 x i32], [350 x i32]* %6, i64 0, i64 %781, !dbg !440
  %784 = icmp eq i64 %782, 0, !dbg !921
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !921
  br i1 %784, label %785, label %713, !dbg !921, !llvm.loop !981

; <label>:785:                                    ; preds = %778, %773, %775
  %786 = phi i32 [ %718, %775 ], [ %718, %773 ], [ %779, %778 ]
  %787 = phi i64 [ %716, %775 ], [ %716, %773 ], [ 1, %778 ]
  %788 = phi i32* [ %714, %775 ], [ %714, %773 ], [ %783, %778 ]
  %789 = phi i32 [ %776, %775 ], [ %717, %773 ], [ %780, %778 ], !dbg !983
  %790 = and i32 %786, 256, !dbg !984
  %791 = icmp eq i32 %790, 0, !dbg !984
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !986
  br i1 %791, label %798, label %792, !dbg !986

; <label>:792:                                    ; preds = %785
  %793 = icmp eq i64 %787, 0, !dbg !987
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !990
  br i1 %793, label %1268, label %794, !dbg !990

; <label>:794:                                    ; preds = %792
  %795 = getelementptr inbounds i32, i32* %788, i64 -1, !dbg !991
  %796 = load i32, i32* %795, align 4, !dbg !992, !tbaa !411
  %797 = call i32 @_ungetwc_r(%struct._reent* %0, i32 %796, %struct.__sFILE* %1) #4, !dbg !993
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !993
  br label %1268, !dbg !993

; <label>:798:                                    ; preds = %785
  %799 = getelementptr inbounds i32, i32* %788, i64 -1, !dbg !994
  %800 = load i32, i32* %799, align 4, !dbg !994, !tbaa !411
  %801 = or i32 %800, 32, !dbg !995
  %802 = icmp eq i32 %801, 120, !dbg !995
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !995
  br i1 %802, label %803, label %805, !dbg !995

; <label>:803:                                    ; preds = %798
  %804 = call i32 @_ungetwc_r(%struct._reent* %0, i32 %800, %struct.__sFILE* %1) #4, !dbg !997
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !999
  br label %805, !dbg !999

; <label>:805:                                    ; preds = %798, %803
  %806 = phi i32* [ %799, %803 ], [ %788, %798 ], !dbg !1000
  %807 = and i32 %786, 16, !dbg !1001
  %808 = icmp eq i32 %807, 0, !dbg !1002
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1003
  br i1 %808, label %809, label %901, !dbg !1003

; <label>:809:                                    ; preds = %805
  store i32 0, i32* %806, align 4, !dbg !1004, !tbaa !411
  %810 = call i64 %251(%struct._reent* %0, i32* nonnull %25, i32** null, i32 %789) #4, !dbg !1005, !callees !1006
  %811 = and i32 %786, 32, !dbg !1008
  %812 = icmp eq i32 %811, 0, !dbg !1008
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1009
  br i1 %812, label %829, label %813, !dbg !1009

; <label>:813:                                    ; preds = %809
  %814 = load i32, i32* %22, align 8, !dbg !1010
  %815 = icmp ult i32 %814, 41, !dbg !1010
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1010
  br i1 %815, label %816, label %821, !dbg !1010

; <label>:816:                                    ; preds = %813
  %817 = load i8*, i8** %23, align 8, !dbg !1010
  %818 = sext i32 %814 to i64, !dbg !1010
  %819 = getelementptr i8, i8* %817, i64 %818, !dbg !1010
  %820 = add i32 %814, 8, !dbg !1010
  store i32 %820, i32* %22, align 8, !dbg !1010
  br label %824, !dbg !1010

; <label>:821:                                    ; preds = %813
  %822 = load i8*, i8** %24, align 8, !dbg !1010
  %823 = getelementptr i8, i8* %822, i64 8, !dbg !1010
  store i8* %823, i8** %24, align 8, !dbg !1010
  br label %824, !dbg !1010

; <label>:824:                                    ; preds = %821, %816
  %825 = phi i8* [ %819, %816 ], [ %822, %821 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1010
  %826 = bitcast i8* %825 to i8***, !dbg !1010
  %827 = load i8**, i8*** %826, align 8, !dbg !1010
  %828 = inttoptr i64 %810 to i8*, !dbg !1012
  store i8* %828, i8** %827, align 8, !dbg !1013, !tbaa !1014
  br label %899, !dbg !1015

; <label>:829:                                    ; preds = %809
  %830 = and i32 %786, 8, !dbg !1016
  %831 = icmp eq i32 %830, 0, !dbg !1016
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1018
  br i1 %831, label %848, label %832, !dbg !1018

; <label>:832:                                    ; preds = %829
  %833 = load i32, i32* %22, align 8, !dbg !1019
  %834 = icmp ult i32 %833, 41, !dbg !1019
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1019
  br i1 %834, label %835, label %840, !dbg !1019

; <label>:835:                                    ; preds = %832
  %836 = load i8*, i8** %23, align 8, !dbg !1019
  %837 = sext i32 %833 to i64, !dbg !1019
  %838 = getelementptr i8, i8* %836, i64 %837, !dbg !1019
  %839 = add i32 %833, 8, !dbg !1019
  store i32 %839, i32* %22, align 8, !dbg !1019
  br label %843, !dbg !1019

; <label>:840:                                    ; preds = %832
  %841 = load i8*, i8** %24, align 8, !dbg !1019
  %842 = getelementptr i8, i8* %841, i64 8, !dbg !1019
  store i8* %842, i8** %24, align 8, !dbg !1019
  br label %843, !dbg !1019

; <label>:843:                                    ; preds = %840, %835
  %844 = phi i8* [ %838, %835 ], [ %841, %840 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1019
  %845 = bitcast i8* %844 to i8**, !dbg !1019
  %846 = load i8*, i8** %845, align 8, !dbg !1019
  %847 = trunc i64 %810 to i8, !dbg !1021
  store i8 %847, i8* %846, align 1, !dbg !1022, !tbaa !401
  br label %899, !dbg !1023

; <label>:848:                                    ; preds = %829
  %849 = and i32 %786, 4, !dbg !1024
  %850 = icmp eq i32 %849, 0, !dbg !1024
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1026
  br i1 %850, label %867, label %851, !dbg !1026

; <label>:851:                                    ; preds = %848
  %852 = load i32, i32* %22, align 8, !dbg !1027
  %853 = icmp ult i32 %852, 41, !dbg !1027
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1027
  br i1 %853, label %854, label %859, !dbg !1027

; <label>:854:                                    ; preds = %851
  %855 = load i8*, i8** %23, align 8, !dbg !1027
  %856 = sext i32 %852 to i64, !dbg !1027
  %857 = getelementptr i8, i8* %855, i64 %856, !dbg !1027
  %858 = add i32 %852, 8, !dbg !1027
  store i32 %858, i32* %22, align 8, !dbg !1027
  br label %862, !dbg !1027

; <label>:859:                                    ; preds = %851
  %860 = load i8*, i8** %24, align 8, !dbg !1027
  %861 = getelementptr i8, i8* %860, i64 8, !dbg !1027
  store i8* %861, i8** %24, align 8, !dbg !1027
  br label %862, !dbg !1027

; <label>:862:                                    ; preds = %859, %854
  %863 = phi i8* [ %857, %854 ], [ %860, %859 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1027
  %864 = bitcast i8* %863 to i16**, !dbg !1027
  %865 = load i16*, i16** %864, align 8, !dbg !1027
  %866 = trunc i64 %810 to i16, !dbg !1029
  store i16 %866, i16* %865, align 2, !dbg !1030, !tbaa !552
  br label %899, !dbg !1031

; <label>:867:                                    ; preds = %848
  %868 = and i32 %786, 1, !dbg !1032
  %869 = icmp eq i32 %868, 0, !dbg !1032
  %870 = load i32, i32* %22, align 8, !dbg !1034
  %871 = icmp ult i32 %870, 41, !dbg !1034
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1036
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1037
  br i1 %869, label %885, label %872, !dbg !1036

; <label>:872:                                    ; preds = %867
  br i1 %871, label %873, label %878, !dbg !1039

; <label>:873:                                    ; preds = %872
  %874 = load i8*, i8** %23, align 8, !dbg !1039
  %875 = sext i32 %870 to i64, !dbg !1039
  %876 = getelementptr i8, i8* %874, i64 %875, !dbg !1039
  %877 = add i32 %870, 8, !dbg !1039
  store i32 %877, i32* %22, align 8, !dbg !1039
  br label %881, !dbg !1039

; <label>:878:                                    ; preds = %872
  %879 = load i8*, i8** %24, align 8, !dbg !1039
  %880 = getelementptr i8, i8* %879, i64 8, !dbg !1039
  store i8* %880, i8** %24, align 8, !dbg !1039
  br label %881, !dbg !1039

; <label>:881:                                    ; preds = %878, %873
  %882 = phi i8* [ %876, %873 ], [ %879, %878 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1039
  %883 = bitcast i8* %882 to i64**, !dbg !1039
  %884 = load i64*, i64** %883, align 8, !dbg !1039
  store i64 %810, i64* %884, align 8, !dbg !1040, !tbaa !565
  br label %899, !dbg !1041

; <label>:885:                                    ; preds = %867
  br i1 %871, label %886, label %891, !dbg !1042

; <label>:886:                                    ; preds = %885
  %887 = load i8*, i8** %23, align 8, !dbg !1042
  %888 = sext i32 %870 to i64, !dbg !1042
  %889 = getelementptr i8, i8* %887, i64 %888, !dbg !1042
  %890 = add i32 %870, 8, !dbg !1042
  store i32 %890, i32* %22, align 8, !dbg !1042
  br label %894, !dbg !1042

; <label>:891:                                    ; preds = %885
  %892 = load i8*, i8** %24, align 8, !dbg !1042
  %893 = getelementptr i8, i8* %892, i64 8, !dbg !1042
  store i8* %893, i8** %24, align 8, !dbg !1042
  br label %894, !dbg !1042

; <label>:894:                                    ; preds = %891, %886
  %895 = phi i8* [ %889, %886 ], [ %892, %891 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1042
  %896 = bitcast i8* %895 to i32**, !dbg !1042
  %897 = load i32*, i32** %896, align 8, !dbg !1042
  %898 = trunc i64 %810 to i32, !dbg !1043
  store i32 %898, i32* %897, align 4, !dbg !1044, !tbaa !411
  br label %899

; <label>:899:                                    ; preds = %843, %881, %894, %862, %824
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %900 = add nsw i32 %41, 1, !dbg !1045
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1046
  br label %901, !dbg !1046

; <label>:901:                                    ; preds = %899, %805
  %902 = phi i32 [ %900, %899 ], [ %41, %805 ], !dbg !573
  %903 = ptrtoint i32* %806 to i64, !dbg !1047
  %904 = sub i64 %903, %27, !dbg !1047
  %905 = lshr exact i64 %904, 2, !dbg !1047
  %906 = trunc i64 %905 to i32, !dbg !1048
  %907 = add i32 %276, %906, !dbg !1048
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1049
  br label %1248, !dbg !1049

; <label>:908:                                    ; preds = %275
  %909 = add i64 %74, -1, !dbg !1055
  %910 = icmp ugt i64 %909, 348, !dbg !1057
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1058
  br i1 %910, label %911, label %914, !dbg !1058

; <label>:911:                                    ; preds = %908
  %912 = trunc i64 %74 to i32, !dbg !1059
  %913 = add i32 %912, -349, !dbg !1059
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1061
  br label %914, !dbg !1061

; <label>:914:                                    ; preds = %908, %911
  %915 = phi i64 [ 349, %911 ], [ %74, %908 ], !dbg !439
  %916 = phi i32 [ %913, %911 ], [ 0, %908 ], !dbg !1062
  %917 = or i32 %249, 1920, !dbg !1063
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1066
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1068
  br label %918, !dbg !1069

; <label>:918:                                    ; preds = %914, %1048
  %919 = phi i32* [ %1061, %1048 ], [ %25, %914 ]
  %920 = phi i8 [ %1058, %1048 ], [ 0, %914 ]
  %921 = phi i8 [ %1057, %1048 ], [ 0, %914 ]
  %922 = phi i32 [ %1056, %1048 ], [ %916, %914 ]
  %923 = phi i32* [ %1055, %1048 ], [ null, %914 ]
  %924 = phi i64 [ %1054, %1048 ], [ 0, %914 ]
  %925 = phi i64 [ %1053, %1048 ], [ 0, %914 ]
  %926 = phi i64 [ %1052, %1048 ], [ 0, %914 ]
  %927 = phi i64 [ %1059, %1048 ], [ %915, %914 ]
  %928 = phi i64 [ %1050, %1048 ], [ 0, %914 ]
  %929 = phi i32 [ %1060, %1048 ], [ %276, %914 ]
  %930 = phi i32 [ %1049, %1048 ], [ %917, %914 ]
  %931 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !1069
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1072
  switch i32 %931, label %1014 [
    i32 48, label %932
    i32 49, label %942
    i32 50, label %942
    i32 51, label %942
    i32 52, label %942
    i32 53, label %942
    i32 54, label %942
    i32 55, label %942
    i32 56, label %942
    i32 57, label %942
    i32 43, label %949
    i32 45, label %949
    i32 110, label %954
    i32 78, label %954
    i32 97, label %972
    i32 65, label %972
    i32 105, label %974
    i32 102, label %990
    i32 70, label %990
    i32 116, label %992
    i32 84, label %992
    i32 121, label %994
    i32 89, label %994
    i32 101, label %996
    i32 69, label %996
  ], !dbg !1072

; <label>:932:                                    ; preds = %918
  %933 = and i32 %930, 256, !dbg !1073
  %934 = icmp eq i32 %933, 0, !dbg !1073
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1076
  br i1 %934, label %942, label %935, !dbg !1076

; <label>:935:                                    ; preds = %932
  %936 = and i32 %930, -129, !dbg !1077
  %937 = add nsw i64 %925, 1, !dbg !1079
  %938 = icmp eq i32 %922, 0, !dbg !1080
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1082
  br i1 %938, label %1048, label %939, !dbg !1082

; <label>:939:                                    ; preds = %935
  %940 = add i32 %922, -1, !dbg !1083
  %941 = add i64 %927, 1, !dbg !1085
  br label %1037, !dbg !1086

; <label>:942:                                    ; preds = %932, %918, %918, %918, %918, %918, %918, %918, %918, %918
  %943 = sext i8 %921 to i32, !dbg !1087
  %944 = sext i8 %920 to i32, !dbg !1089
  %945 = sub nsw i32 0, %944, !dbg !1090
  %946 = icmp eq i32 %943, %945, !dbg !1090
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1091
  br i1 %946, label %947, label %1021, !dbg !1091

; <label>:947:                                    ; preds = %942
  %948 = and i32 %930, -385, !dbg !1092
  br label %1028, !dbg !1094

; <label>:949:                                    ; preds = %918, %918
  %950 = trunc i32 %930 to i8, !dbg !1095
  %951 = icmp slt i8 %950, 0, !dbg !1095
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1097
  br i1 %951, label %952, label %1021, !dbg !1097

; <label>:952:                                    ; preds = %949
  %953 = and i32 %930, -129, !dbg !1098
  br label %1028, !dbg !1100

; <label>:954:                                    ; preds = %918, %918
  %955 = icmp eq i8 %921, 0, !dbg !1101
  %956 = icmp eq i64 %925, 0, !dbg !1103
  %957 = and i1 %956, %955, !dbg !1104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1104
  br i1 %957, label %958, label %964, !dbg !1104

; <label>:958:                                    ; preds = %954
  %959 = and i32 %930, 1792, !dbg !1105
  %960 = icmp eq i32 %959, 1792, !dbg !1106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1107
  br i1 %960, label %962, label %961, !dbg !1107

; <label>:961:                                    ; preds = %958
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1108
  br label %966, !dbg !1108

; <label>:962:                                    ; preds = %958
  %963 = and i32 %930, -1921, !dbg !1109
  br label %1028, !dbg !1111

; <label>:964:                                    ; preds = %954
  %965 = icmp eq i8 %921, 2, !dbg !1112
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1108
  br i1 %965, label %1028, label %966, !dbg !1108

; <label>:966:                                    ; preds = %961, %964
  %967 = icmp eq i8 %920, 1, !dbg !1114
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1116
  br i1 %967, label %970, label %968, !dbg !1116

; <label>:968:                                    ; preds = %966
  %969 = icmp eq i8 %920, 4, !dbg !1117
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1118
  br i1 %969, label %970, label %1021, !dbg !1118

; <label>:970:                                    ; preds = %968, %966
  %971 = add i8 %920, 1, !dbg !1119
  br label %1028, !dbg !1121

; <label>:972:                                    ; preds = %918, %918
  %973 = icmp eq i8 %921, 1, !dbg !1122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1124
  br i1 %973, label %1028, label %1021, !dbg !1124

; <label>:974:                                    ; preds = %918
  %975 = icmp eq i8 %920, 0, !dbg !1125
  %976 = icmp eq i64 %925, 0, !dbg !1127
  %977 = and i1 %976, %975, !dbg !1128
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1128
  br i1 %977, label %978, label %984, !dbg !1128

; <label>:978:                                    ; preds = %974
  %979 = and i32 %930, 1792, !dbg !1129
  %980 = icmp eq i32 %979, 1792, !dbg !1130
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1131
  br i1 %980, label %982, label %981, !dbg !1131

; <label>:981:                                    ; preds = %978
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1132
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1134
  br label %1021, !dbg !1134

; <label>:982:                                    ; preds = %978
  %983 = and i32 %930, -1921, !dbg !1135
  br label %1028, !dbg !1137

; <label>:984:                                    ; preds = %974
  %985 = icmp eq i8 %920, 3, !dbg !1138
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1132
  br i1 %985, label %988, label %986, !dbg !1132

; <label>:986:                                    ; preds = %984
  %987 = icmp eq i8 %920, 5, !dbg !1139
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1134
  br i1 %987, label %988, label %1021, !dbg !1134

; <label>:988:                                    ; preds = %986, %984
  %989 = add i8 %920, 1, !dbg !1140
  br label %1028, !dbg !1142

; <label>:990:                                    ; preds = %918, %918
  %991 = icmp eq i8 %920, 2, !dbg !1143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1145
  br i1 %991, label %1028, label %1021, !dbg !1145

; <label>:992:                                    ; preds = %918, %918
  %993 = icmp eq i8 %920, 6, !dbg !1146
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1148
  br i1 %993, label %1028, label %1021, !dbg !1148

; <label>:994:                                    ; preds = %918, %918
  %995 = icmp eq i8 %920, 7, !dbg !1149
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1151
  br i1 %995, label %1028, label %1021, !dbg !1151

; <label>:996:                                    ; preds = %918, %918
  %997 = and i32 %930, 1280, !dbg !1152
  %998 = icmp eq i32 %997, 1024, !dbg !1154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1155
  br i1 %998, label %1004, label %999, !dbg !1155

; <label>:999:                                    ; preds = %996
  %1000 = and i32 %930, 1024, !dbg !1156
  %1001 = icmp ne i32 %1000, 0, !dbg !1156
  %1002 = icmp ne i64 %925, 0, !dbg !1157
  %1003 = and i1 %1001, %1002, !dbg !1158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1158
  br i1 %1003, label %1004, label %1021, !dbg !1158

; <label>:1004:                                   ; preds = %999, %996
  %1005 = and i32 %930, 512, !dbg !1159
  %1006 = icmp eq i32 %1005, 0, !dbg !1159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1162
  br i1 %1006, label %1007, label %1009, !dbg !1162

; <label>:1007:                                   ; preds = %1004
  %1008 = sub nsw i64 %925, %926, !dbg !1163
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1165
  br label %1009, !dbg !1165

; <label>:1009:                                   ; preds = %1004, %1007
  %1010 = phi i64 [ %924, %1004 ], [ %1008, %1007 ], !dbg !1166
  %1011 = phi i32* [ %923, %1004 ], [ %919, %1007 ], !dbg !1166
  %1012 = and i32 %930, -1921, !dbg !1167
  %1013 = or i32 %1012, 384, !dbg !1168
  br label %1028, !dbg !1169

; <label>:1014:                                   ; preds = %918
  %1015 = icmp eq i32 %931, %16, !dbg !1170
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1172
  br i1 %1015, label %1016, label %1022, !dbg !1172

; <label>:1016:                                   ; preds = %1014
  %1017 = and i32 %930, 512, !dbg !1173
  %1018 = icmp eq i32 %1017, 0, !dbg !1173
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1174
  br i1 %1018, label %1022, label %1019, !dbg !1174

; <label>:1019:                                   ; preds = %1016
  %1020 = and i32 %930, -641, !dbg !1175
  br label %1028, !dbg !1177

; <label>:1021:                                   ; preds = %999, %994, %992, %990, %986, %972, %968, %949, %942, %981
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1178
  br label %1025, !dbg !1178

; <label>:1022:                                   ; preds = %1016, %1014
  %1023 = phi i32 [ %16, %1016 ], [ %931, %1014 ], !dbg !1069
  %1024 = icmp eq i32 %1023, -1, !dbg !1179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1178
  br i1 %1024, label %1063, label %1025, !dbg !1178

; <label>:1025:                                   ; preds = %1021, %1022
  %1026 = phi i32 [ %931, %1021 ], [ %1023, %1022 ]
  %1027 = call i32 @_ungetwc_r(%struct._reent* %0, i32 %1026, %struct.__sFILE* %1) #4, !dbg !1181
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1181
  br label %1063, !dbg !1181

; <label>:1028:                                   ; preds = %994, %992, %990, %972, %964, %1019, %1009, %988, %982, %970, %962, %952, %947
  %1029 = phi i32 [ %1020, %1019 ], [ %1013, %1009 ], [ %983, %982 ], [ %930, %988 ], [ %963, %962 ], [ %930, %970 ], [ %953, %952 ], [ %948, %947 ], [ %930, %964 ], [ %930, %972 ], [ %930, %990 ], [ %930, %992 ], [ %930, %994 ], !dbg !1182
  %1030 = phi i64 [ %925, %1019 ], [ %926, %1009 ], [ %926, %982 ], [ %926, %988 ], [ %926, %962 ], [ %926, %970 ], [ %926, %952 ], [ %926, %947 ], [ %926, %964 ], [ %926, %972 ], [ %926, %990 ], [ %926, %992 ], [ %926, %994 ], !dbg !1062
  %1031 = phi i64 [ %925, %1019 ], [ 0, %1009 ], [ 0, %982 ], [ %925, %988 ], [ 0, %962 ], [ %925, %970 ], [ %925, %952 ], [ %925, %947 ], [ %925, %964 ], [ %925, %972 ], [ %925, %990 ], [ %925, %992 ], [ %925, %994 ], !dbg !1062
  %1032 = phi i64 [ %924, %1019 ], [ %1010, %1009 ], [ %924, %982 ], [ %924, %988 ], [ %924, %962 ], [ %924, %970 ], [ %924, %952 ], [ %924, %947 ], [ %924, %964 ], [ %924, %972 ], [ %924, %990 ], [ %924, %992 ], [ %924, %994 ], !dbg !1183
  %1033 = phi i32* [ %923, %1019 ], [ %1011, %1009 ], [ %923, %982 ], [ %923, %988 ], [ %923, %962 ], [ %923, %970 ], [ %923, %952 ], [ %923, %947 ], [ %923, %964 ], [ %923, %972 ], [ %923, %990 ], [ %923, %992 ], [ %923, %994 ], !dbg !1051
  %1034 = phi i8 [ %921, %1019 ], [ %921, %1009 ], [ %921, %982 ], [ %921, %988 ], [ 1, %962 ], [ %921, %970 ], [ %921, %952 ], [ %921, %947 ], [ 3, %964 ], [ 2, %972 ], [ %921, %990 ], [ %921, %992 ], [ %921, %994 ], !dbg !1062
  %1035 = phi i8 [ %920, %1019 ], [ %920, %1009 ], [ 1, %982 ], [ %989, %988 ], [ %920, %962 ], [ %971, %970 ], [ %920, %952 ], [ %920, %947 ], [ %920, %964 ], [ %920, %972 ], [ 3, %990 ], [ 7, %992 ], [ 8, %994 ], !dbg !1062
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1182
  %1036 = add nsw i64 %928, 1, !dbg !1184
  store i32 %931, i32* %919, align 4, !dbg !1185, !tbaa !411
  br label %1037, !dbg !1186

; <label>:1037:                                   ; preds = %1028, %939
  %1038 = phi i32 [ %936, %939 ], [ %1029, %1028 ]
  %1039 = phi i64 [ %928, %939 ], [ %1036, %1028 ]
  %1040 = phi i64 [ %941, %939 ], [ %927, %1028 ]
  %1041 = phi i64 [ %926, %939 ], [ %1030, %1028 ]
  %1042 = phi i64 [ %937, %939 ], [ %1031, %1028 ]
  %1043 = phi i64 [ %924, %939 ], [ %1032, %1028 ]
  %1044 = phi i32* [ %923, %939 ], [ %1033, %1028 ]
  %1045 = phi i32 [ %940, %939 ], [ %922, %1028 ]
  %1046 = phi i8 [ %921, %939 ], [ %1034, %1028 ]
  %1047 = phi i8 [ %920, %939 ], [ %1035, %1028 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1187
  br label %1048, !dbg !1188

; <label>:1048:                                   ; preds = %1037, %935
  %1049 = phi i32 [ %936, %935 ], [ %1038, %1037 ], !dbg !1189
  %1050 = phi i64 [ %928, %935 ], [ %1039, %1037 ]
  %1051 = phi i64 [ %927, %935 ], [ %1040, %1037 ], !dbg !1190
  %1052 = phi i64 [ %926, %935 ], [ %1041, %1037 ], !dbg !1062
  %1053 = phi i64 [ %937, %935 ], [ %1042, %1037 ], !dbg !1189
  %1054 = phi i64 [ %924, %935 ], [ %1043, %1037 ], !dbg !1183
  %1055 = phi i32* [ %923, %935 ], [ %1044, %1037 ], !dbg !1051
  %1056 = phi i32 [ 0, %935 ], [ %1045, %1037 ], !dbg !1190
  %1057 = phi i8 [ %921, %935 ], [ %1046, %1037 ], !dbg !1053
  %1058 = phi i8 [ %920, %935 ], [ %1047, %1037 ], !dbg !1054
  %1059 = add i64 %1051, -1, !dbg !1188
  %1060 = add nsw i32 %929, 1, !dbg !1191
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1192
  %1061 = getelementptr inbounds [350 x i32], [350 x i32]* %6, i64 0, i64 %1050, !dbg !1054
  %1062 = icmp eq i64 %1059, 0, !dbg !1068
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1068
  br i1 %1062, label %1063, label %918, !dbg !1068, !llvm.loop !1193

; <label>:1063:                                   ; preds = %1048, %1022, %1025
  %1064 = phi i32 [ %930, %1022 ], [ %930, %1025 ], [ %1049, %1048 ]
  %1065 = phi i32 [ %929, %1022 ], [ %929, %1025 ], [ %1060, %1048 ]
  %1066 = phi i64 [ %928, %1022 ], [ %928, %1025 ], [ %1050, %1048 ]
  %1067 = phi i64 [ %926, %1022 ], [ %926, %1025 ], [ %1052, %1048 ]
  %1068 = phi i64 [ %925, %1022 ], [ %925, %1025 ], [ %1053, %1048 ]
  %1069 = phi i64 [ %924, %1022 ], [ %924, %1025 ], [ %1054, %1048 ]
  %1070 = phi i32* [ %923, %1022 ], [ %923, %1025 ], [ %1055, %1048 ]
  %1071 = phi i8 [ %921, %1022 ], [ %921, %1025 ], [ %1057, %1048 ]
  %1072 = phi i8 [ %920, %1022 ], [ %920, %1025 ], [ %1058, %1048 ]
  %1073 = phi i32* [ %919, %1022 ], [ %919, %1025 ], [ %1061, %1048 ]
  %1074 = icmp eq i64 %1068, 0, !dbg !1195
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1197
  br i1 %1074, label %1077, label %1075, !dbg !1197

; <label>:1075:                                   ; preds = %1063
  %1076 = and i32 %1064, -257, !dbg !1198
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1199
  br label %1077, !dbg !1199

; <label>:1077:                                   ; preds = %1063, %1075
  %1078 = phi i32 [ %1076, %1075 ], [ %1064, %1063 ], !dbg !1062
  %1079 = sext i8 %1071 to i32, !dbg !1200
  %1080 = add nsw i32 %1079, -1, !dbg !1202
  %1081 = icmp ult i32 %1080, 2, !dbg !1203
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1204
  br i1 %1081, label %1082, label %1090, !dbg !1204

; <label>:1082:                                   ; preds = %1077
  %1083 = icmp ugt i32* %1073, %25, !dbg !1205
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1207
  br i1 %1083, label %1084, label %1245, !dbg !1207

; <label>:1084:                                   ; preds = %1082, %1084
  %1085 = phi i32* [ %1086, %1084 ], [ %1073, %1082 ]
  %1086 = getelementptr inbounds i32, i32* %1085, i64 -1, !dbg !1208
  %1087 = load i32, i32* %1086, align 4, !dbg !1210, !tbaa !411
  %1088 = call i32 @_ungetwc_r(%struct._reent* %0, i32 %1087, %struct.__sFILE* %1) #4, !dbg !1211
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1207
  %1089 = icmp ugt i32* %1086, %25, !dbg !1205
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1207
  br i1 %1089, label %1084, label %1245, !dbg !1207, !llvm.loop !1212

; <label>:1090:                                   ; preds = %1077
  %1091 = sext i8 %1072 to i32, !dbg !1214
  %1092 = add nsw i32 %1091, -1, !dbg !1216
  %1093 = icmp ult i32 %1092, 7, !dbg !1217
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1218
  br i1 %1093, label %1094, label %1125, !dbg !1218

; <label>:1094:                                   ; preds = %1090
  %1095 = icmp sgt i8 %1072, 2, !dbg !1219
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1222
  br i1 %1095, label %1096, label %1104, !dbg !1222

; <label>:1096:                                   ; preds = %1094
  %1097 = icmp eq i8 %1072, 3, !dbg !1223
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1224
  br i1 %1097, label %1125, label %1098, !dbg !1224

; <label>:1098:                                   ; preds = %1096
  %1099 = add i8 %1072, -4, !dbg !1225
  %1100 = zext i8 %1099 to i64, !dbg !1225
  %1101 = xor i64 %1100, -1, !dbg !1225
  %1102 = add i64 %1066, %1101, !dbg !1225
  %1103 = zext i8 %1099 to i32, !dbg !1225
  br label %1106, !dbg !1225

; <label>:1104:                                   ; preds = %1094
  %1105 = icmp sgt i64 %1066, 0, !dbg !1226
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1228
  br i1 %1105, label %1115, label %1245, !dbg !1228

; <label>:1106:                                   ; preds = %1098, %1106
  %1107 = phi i8 [ %1109, %1106 ], [ %1072, %1098 ]
  %1108 = phi i64 [ %1110, %1106 ], [ %1066, %1098 ]
  %1109 = add nsw i8 %1107, -1, !dbg !1225
  %1110 = add nsw i64 %1108, -1, !dbg !1229
  %1111 = getelementptr inbounds [350 x i32], [350 x i32]* %6, i64 0, i64 %1110, !dbg !386
  %1112 = load i32, i32* %1111, align 4, !dbg !1231, !tbaa !411
  %1113 = call i32 @_ungetwc_r(%struct._reent* %0, i32 %1112, %struct.__sFILE* %1) #4, !dbg !1232
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1224
  %1114 = icmp sgt i8 %1107, 4, !dbg !1223
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1224
  br i1 %1114, label %1106, label %1122, !dbg !1224, !llvm.loop !1233

; <label>:1115:                                   ; preds = %1104, %1115
  %1116 = phi i64 [ %1117, %1115 ], [ %1066, %1104 ]
  %1117 = add nsw i64 %1116, -1, !dbg !1235
  %1118 = getelementptr inbounds [350 x i32], [350 x i32]* %6, i64 0, i64 %1117, !dbg !386
  %1119 = load i32, i32* %1118, align 4, !dbg !1237, !tbaa !411
  %1120 = call i32 @_ungetwc_r(%struct._reent* %0, i32 %1119, %struct.__sFILE* %1) #4, !dbg !1238
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1228
  %1121 = icmp sgt i64 %1116, 1, !dbg !1226
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1228
  br i1 %1121, label %1115, label %1245, !dbg !1228, !llvm.loop !1239

; <label>:1122:                                   ; preds = %1106
  %1123 = xor i32 %1103, -1, !dbg !1225
  %1124 = add i32 %1065, %1123, !dbg !1225
  br label %1125, !dbg !386

; <label>:1125:                                   ; preds = %1122, %1096, %1090
  %1126 = phi i32 [ %1065, %1090 ], [ %1065, %1096 ], [ %1124, %1122 ], !dbg !590
  %1127 = phi i64 [ %1066, %1090 ], [ %1066, %1096 ], [ %1102, %1122 ]
  %1128 = getelementptr inbounds [350 x i32], [350 x i32]* %6, i64 0, i64 %1127, !dbg !386
  %1129 = and i32 %1078, 256, !dbg !1241
  %1130 = icmp eq i32 %1129, 0, !dbg !1241
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1243
  br i1 %1130, label %1159, label %1131, !dbg !1243

; <label>:1131:                                   ; preds = %1125
  %1132 = and i32 %1078, 1024, !dbg !1244
  %1133 = icmp eq i32 %1132, 0, !dbg !1244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1247
  br i1 %1133, label %1143, label %1134, !dbg !1247

; <label>:1134:                                   ; preds = %1131
  %1135 = icmp sgt i64 %1127, 0, !dbg !1248
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1250
  br i1 %1135, label %1136, label %1245, !dbg !1250

; <label>:1136:                                   ; preds = %1134, %1136
  %1137 = phi i64 [ %1138, %1136 ], [ %1127, %1134 ]
  %1138 = add nsw i64 %1137, -1, !dbg !1251
  %1139 = getelementptr inbounds [350 x i32], [350 x i32]* %6, i64 0, i64 %1138, !dbg !386
  %1140 = load i32, i32* %1139, align 4, !dbg !1253, !tbaa !411
  %1141 = call i32 @_ungetwc_r(%struct._reent* %0, i32 %1140, %struct.__sFILE* %1) #4, !dbg !1254
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1250
  %1142 = icmp sgt i64 %1137, 1, !dbg !1248
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1250
  br i1 %1142, label %1136, label %1245, !dbg !1250, !llvm.loop !1255

; <label>:1143:                                   ; preds = %1131
  %1144 = getelementptr inbounds i32, i32* %1128, i64 -1, !dbg !1257
  %1145 = load i32, i32* %1144, align 4, !dbg !1258, !tbaa !411
  %1146 = add nsw i32 %1126, -1, !dbg !1259
  %1147 = or i32 %1145, 32, !dbg !1260
  %1148 = icmp eq i32 %1147, 101, !dbg !1260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1260
  br i1 %1148, label %1154, label %1149, !dbg !1260

; <label>:1149:                                   ; preds = %1143
  %1150 = call i32 @_ungetwc_r(%struct._reent* %0, i32 %1145, %struct.__sFILE* %1) #4, !dbg !1262
  %1151 = getelementptr inbounds i32, i32* %1128, i64 -2, !dbg !1264
  %1152 = load i32, i32* %1151, align 4, !dbg !1265, !tbaa !411
  %1153 = add nsw i32 %1126, -2, !dbg !1266
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1267
  br label %1154, !dbg !1267

; <label>:1154:                                   ; preds = %1143, %1149
  %1155 = phi i32 [ %1153, %1149 ], [ %1146, %1143 ], !dbg !1268
  %1156 = phi i32* [ %1151, %1149 ], [ %1144, %1143 ], !dbg !1268
  %1157 = phi i32 [ %1152, %1149 ], [ %1145, %1143 ], !dbg !1268
  %1158 = call i32 @_ungetwc_r(%struct._reent* %0, i32 %1157, %struct.__sFILE* %1) #4, !dbg !1269
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1270
  br label %1159, !dbg !1270

; <label>:1159:                                   ; preds = %1125, %1154
  %1160 = phi i32 [ %1155, %1154 ], [ %1126, %1125 ], !dbg !573
  %1161 = phi i32* [ %1156, %1154 ], [ %1128, %1125 ], !dbg !1271
  %1162 = and i32 %1078, 16, !dbg !1272
  %1163 = icmp eq i32 %1162, 0, !dbg !1273
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1274
  br i1 %1163, label %1164, label %1246, !dbg !1274

; <label>:1164:                                   ; preds = %1159
  store i32 0, i32* %1161, align 4, !dbg !1277, !tbaa !411
  %1165 = and i32 %1078, 1536, !dbg !1278
  %1166 = icmp eq i32 %1165, 1024, !dbg !1280
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1281
  br i1 %1166, label %1173, label %1167, !dbg !1281

; <label>:1167:                                   ; preds = %1164
  %1168 = icmp eq i64 %1069, 0, !dbg !1282
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1284
  br i1 %1168, label %1185, label %1169, !dbg !1284

; <label>:1169:                                   ; preds = %1167
  %1170 = getelementptr inbounds i32, i32* %1070, i64 1, !dbg !1285
  %1171 = call i64 @_wcstol_r(%struct._reent* %0, i32* nonnull %1170, i32** null, i32 10) #4, !dbg !1286
  %1172 = sub nsw i64 %1171, %1069, !dbg !1287
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1288
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1289
  br label %1177, !dbg !1289

; <label>:1173:                                   ; preds = %1164
  %1174 = sub nsw i64 %1068, %1067, !dbg !1290
  %1175 = sub nsw i64 0, %1174, !dbg !1292
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1293
  %1176 = icmp eq i64 %1174, 0, !dbg !1294
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1289
  br i1 %1176, label %1186, label %1177, !dbg !1289

; <label>:1177:                                   ; preds = %1169, %1173
  %1178 = phi i64 [ %1172, %1169 ], [ %1175, %1173 ]
  %1179 = phi i32* [ %1070, %1169 ], [ %1161, %1173 ]
  %1180 = icmp ult i32* %1179, %28, !dbg !1296
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1299
  br i1 %1180, label %1182, label %1181, !dbg !1299

; <label>:1181:                                   ; preds = %1177
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1300
  br label %1182, !dbg !1300

; <label>:1182:                                   ; preds = %1177, %1181
  %1183 = phi i32* [ %29, %1181 ], [ %1179, %1177 ], !dbg !1301
  %1184 = call i32 (i32*, i64, i32*, ...) @swprintf(i32* %1183, i64 21, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str, i64 0, i64 0), i64 %1178) #4, !dbg !1302
  br label %1185, !dbg !1303

; <label>:1185:                                   ; preds = %1167, %1182
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1304
  br label %1186, !dbg !1305

; <label>:1186:                                   ; preds = %1185, %1173
  %1187 = call double @_wcstod_r(%struct._reent* %0, i32* nonnull %25, i32** null) #4, !dbg !1305
  %1188 = and i32 %1078, 1, !dbg !1306
  %1189 = icmp eq i32 %1188, 0, !dbg !1306
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1308
  br i1 %1189, label %1205, label %1190, !dbg !1308

; <label>:1190:                                   ; preds = %1186
  %1191 = load i32, i32* %22, align 8, !dbg !1309
  %1192 = icmp ult i32 %1191, 41, !dbg !1309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1309
  br i1 %1192, label %1193, label %1198, !dbg !1309

; <label>:1193:                                   ; preds = %1190
  %1194 = load i8*, i8** %23, align 8, !dbg !1309
  %1195 = sext i32 %1191 to i64, !dbg !1309
  %1196 = getelementptr i8, i8* %1194, i64 %1195, !dbg !1309
  %1197 = add i32 %1191, 8, !dbg !1309
  store i32 %1197, i32* %22, align 8, !dbg !1309
  br label %1201, !dbg !1309

; <label>:1198:                                   ; preds = %1190
  %1199 = load i8*, i8** %24, align 8, !dbg !1309
  %1200 = getelementptr i8, i8* %1199, i64 8, !dbg !1309
  store i8* %1200, i8** %24, align 8, !dbg !1309
  br label %1201, !dbg !1309

; <label>:1201:                                   ; preds = %1198, %1193
  %1202 = phi i8* [ %1196, %1193 ], [ %1199, %1198 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1309
  %1203 = bitcast i8* %1202 to double**, !dbg !1309
  %1204 = load double*, double** %1203, align 8, !dbg !1309
  store double %1187, double* %1204, align 8, !dbg !1312, !tbaa !1313
  br label %1243, !dbg !1315

; <label>:1205:                                   ; preds = %1186
  %1206 = and i32 %1078, 2, !dbg !1316
  %1207 = icmp eq i32 %1206, 0, !dbg !1316
  %1208 = load i32, i32* %22, align 8, !dbg !1318
  %1209 = icmp ult i32 %1208, 41, !dbg !1318
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1320
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1321
  br i1 %1207, label %1224, label %1210, !dbg !1320

; <label>:1210:                                   ; preds = %1205
  br i1 %1209, label %1211, label %1216, !dbg !1323

; <label>:1211:                                   ; preds = %1210
  %1212 = load i8*, i8** %23, align 8, !dbg !1323
  %1213 = sext i32 %1208 to i64, !dbg !1323
  %1214 = getelementptr i8, i8* %1212, i64 %1213, !dbg !1323
  %1215 = add i32 %1208, 8, !dbg !1323
  store i32 %1215, i32* %22, align 8, !dbg !1323
  br label %1219, !dbg !1323

; <label>:1216:                                   ; preds = %1210
  %1217 = load i8*, i8** %24, align 8, !dbg !1323
  %1218 = getelementptr i8, i8* %1217, i64 8, !dbg !1323
  store i8* %1218, i8** %24, align 8, !dbg !1323
  br label %1219, !dbg !1323

; <label>:1219:                                   ; preds = %1216, %1211
  %1220 = phi i8* [ %1214, %1211 ], [ %1217, %1216 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1323
  %1221 = bitcast i8* %1220 to x86_fp80**, !dbg !1323
  %1222 = load x86_fp80*, x86_fp80** %1221, align 8, !dbg !1323
  %1223 = fpext double %1187 to x86_fp80, !dbg !1325
  store x86_fp80 %1223, x86_fp80* %1222, align 16, !dbg !1326, !tbaa !1327
  br label %1243, !dbg !1329

; <label>:1224:                                   ; preds = %1205
  br i1 %1209, label %1225, label %1230, !dbg !1330

; <label>:1225:                                   ; preds = %1224
  %1226 = load i8*, i8** %23, align 8, !dbg !1330
  %1227 = sext i32 %1208 to i64, !dbg !1330
  %1228 = getelementptr i8, i8* %1226, i64 %1227, !dbg !1330
  %1229 = add i32 %1208, 8, !dbg !1330
  store i32 %1229, i32* %22, align 8, !dbg !1330
  br label %1233, !dbg !1330

; <label>:1230:                                   ; preds = %1224
  %1231 = load i8*, i8** %24, align 8, !dbg !1330
  %1232 = getelementptr i8, i8* %1231, i64 8, !dbg !1330
  store i8* %1232, i8** %24, align 8, !dbg !1330
  br label %1233, !dbg !1330

; <label>:1233:                                   ; preds = %1230, %1225
  %1234 = phi i8* [ %1228, %1225 ], [ %1231, %1230 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1330
  %1235 = bitcast i8* %1234 to float**, !dbg !1330
  %1236 = load float*, float** %1235, align 8, !dbg !1330
  %1237 = call i32 @__fpclassifyd(double %1187) #4, !dbg !1332
  %1238 = icmp eq i32 %1237, 0, !dbg !1332
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1334
  br i1 %1238, label %1239, label %1241, !dbg !1334

; <label>:1239:                                   ; preds = %1233
  %1240 = call float @nanf(i8* null) #4, !dbg !1335
  store float %1240, float* %1236, align 4, !dbg !1336, !tbaa !1337
  br label %1243, !dbg !1339

; <label>:1241:                                   ; preds = %1233
  %1242 = fptrunc double %1187 to float, !dbg !1340
  store float %1242, float* %1236, align 4, !dbg !1341, !tbaa !1337
  br label %1243

; <label>:1243:                                   ; preds = %1219, %1241, %1239, %1201
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %1244 = add nsw i32 %41, 1, !dbg !1342
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1343
  br label %1246, !dbg !1343

; <label>:1245:                                   ; preds = %1115, %1136, %1084, %1134, %1104, %1082
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1344
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %1268

; <label>:1246:                                   ; preds = %1159, %1243
  %1247 = phi i32 [ %1244, %1243 ], [ %41, %1159 ], !dbg !573
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1345
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %1248

; <label>:1248:                                   ; preds = %552, %901, %275, %382, %386, %321, %325, %1246, %696, %701
  %1249 = phi i32 [ %41, %696 ], [ %702, %701 ], [ %41, %275 ], [ %1247, %1246 ], [ %902, %901 ], [ %553, %552 ], [ %41, %321 ], [ %326, %325 ], [ %41, %382 ], [ %387, %386 ]
  %1250 = phi i32 [ %698, %696 ], [ %703, %701 ], [ %276, %275 ], [ %1160, %1246 ], [ %907, %901 ], [ %557, %552 ], [ %324, %321 ], [ %324, %325 ], [ %385, %382 ], [ %385, %386 ]
  %1251 = phi i32 [ %250, %696 ], [ %250, %701 ], [ %250, %275 ], [ %250, %1246 ], [ %789, %901 ], [ %250, %552 ], [ %250, %321 ], [ %250, %325 ], [ %250, %382 ], [ %250, %386 ]
  %1252 = phi i8* [ %697, %696 ], [ %704, %701 ], [ %34, %275 ], [ %34, %1246 ], [ %34, %901 ], [ %554, %552 ], [ %34, %321 ], [ %34, %325 ], [ %384, %382 ], [ %384, %386 ]
  %1253 = phi i32* [ %33, %696 ], [ %705, %701 ], [ %33, %275 ], [ %1161, %1246 ], [ %806, %901 ], [ %556, %552 ], [ %322, %321 ], [ %322, %325 ], [ %33, %382 ], [ %33, %386 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1346
  %1254 = load i32, i32* %256, align 4, !dbg !410, !tbaa !411
  %1255 = icmp eq i32 %1254, 0, !dbg !413
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !415
  br i1 %1255, label %1268, label %30, !dbg !415, !llvm.loop !433

; <label>:1256:                                   ; preds = %380, %319, %78, %665, %662, %527, %524, %360, %357, %263, %85
  %1257 = load i32, i32* %8, align 4, !dbg !1347, !tbaa !411
  %1258 = call i32 @pthread_setcancelstate(i32 %1257, i32* nonnull %8) #4, !dbg !1347
  %1259 = icmp eq i32 %41, 0, !dbg !1348
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1349
  br i1 %1259, label %1266, label %1260, !dbg !1349

; <label>:1260:                                   ; preds = %1256
  %1261 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 3, !dbg !1350
  %1262 = load i16, i16* %1261, align 8, !dbg !1350, !tbaa !1351
  %1263 = and i16 %1262, 64, !dbg !1355
  %1264 = icmp eq i16 %1263, 0, !dbg !1355
  %1265 = select i1 %1264, i32 %41, i32 -1, !dbg !1348
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1348
  br label %1266, !dbg !1348

; <label>:1266:                                   ; preds = %1260, %1256, %244
  %1267 = phi i32 [ -1, %244 ], [ -1, %1256 ], [ %1265, %1260 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !431
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %17) #6, !dbg !1356
  br label %1272

; <label>:1268:                                   ; preds = %1248, %424, %471, %87, %66, %72, %4, %1245, %792, %794
  %1269 = phi i32 [ %41, %1245 ], [ %41, %792 ], [ %41, %794 ], [ 0, %4 ], [ %41, %72 ], [ %41, %66 ], [ %41, %87 ], [ %1249, %1248 ], [ %41, %424 ], [ %41, %471 ]
  %1270 = load i32, i32* %8, align 4, !dbg !1357, !tbaa !411
  %1271 = call i32 @pthread_setcancelstate(i32 %1270, i32* nonnull %8) #4, !dbg !1357
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1356
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %17) #6, !dbg !1356
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %1272, !dbg !1358

; <label>:1272:                                   ; preds = %1266, %1268
  %1273 = phi i32 [ %1269, %1268 ], [ %1267, %1266 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %11) #6, !dbg !1359
  call void @llvm.lifetime.end.p0i8(i64 1400, i8* nonnull %10) #6, !dbg !1359
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #6, !dbg !1359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1359
  ret i32 %1273, !dbg !1359
}

; Function Attrs: noredzone nounwind
define dso_local i32 @__svfwscanf(%struct.__sFILE*, i32*, %struct.__va_list_tag*) local_unnamed_addr #0 !dbg !1360 {
  %4 = tail call %struct._reent* @__getreent() #4, !dbg !1368
  %5 = tail call i32 @__svfwscanf_r(%struct._reent* %4, %struct.__sFILE* %0, i32* %1, %struct.__va_list_tag* %2) #5, !dbg !1369
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1370
  ret i32 %5, !dbg !1370
}

; Function Attrs: noredzone nounwind
define dso_local i32 @_vfwscanf_r(%struct._reent*, %struct.__sFILE*, i32*, %struct.__va_list_tag*) local_unnamed_addr #0 !dbg !1371 {
  %5 = icmp eq %struct._reent* %0, null, !dbg !1381
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1381
  br i1 %5, label %11, label %6, !dbg !1381

; <label>:6:                                      ; preds = %4
  %7 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 8, !dbg !1381
  %8 = load i32, i32* %7, align 8, !dbg !1381, !tbaa !373
  %9 = icmp eq i32 %8, 0, !dbg !1381
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1380
  br i1 %9, label %10, label %11, !dbg !1380

; <label>:10:                                     ; preds = %6
  tail call void @__sinit(%struct._reent* nonnull %0) #4, !dbg !1381
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1381
  br label %11, !dbg !1381

; <label>:11:                                     ; preds = %6, %4, %10
  %12 = tail call i32 @__svfwscanf_r(%struct._reent* %0, %struct.__sFILE* %1, i32* %2, %struct.__va_list_tag* %3) #5, !dbg !1383
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1384
  ret i32 %12, !dbg !1384
}

; Function Attrs: noredzone
declare dso_local %struct.lconv* @_localeconv_r(%struct._reent*) local_unnamed_addr #3

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

; Function Attrs: noredzone
declare dso_local i32 @swprintf(i32*, i64, i32*, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local double @_wcstod_r(%struct._reent*, i32*, i32**) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @__fpclassifyd(double) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local float @nanf(i8*) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin noredzone nounwind }
attributes #5 = { nobuiltin noredzone }
attributes #6 = { nounwind }

!llvm.module.flags = !{!351, !352, !353}
!llvm.ident = !{!354}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "basefix", scope: !2, file: !3, line: 429, type: !347, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "__svfwscanf_r", scope: !3, file: !3, line: 377, type: !4, isLocal: false, isDefinition: true, scopeLine: 382, flags: DIFlagPrototyped, isOptimized: true, unit: !239, retainedNodes: !273)
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
!258 = !{!259, !231, !86, !260, !32, !265, !264, !268}
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
!273 = !{!274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !291, !292, !296, !297, !298, !299, !300, !301, !302, !304, !305, !307, !309, !312, !315, !318, !319, !321, !323, !331, !335, !337, !338, !339, !340, !341, !342, !343, !346}
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
!293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, size: 11200, elements: !294)
!294 = !{!295}
!295 = !DISubrange(count: 350)
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
!309 = !DILocalVariable(name: "flp", scope: !2, file: !3, line: 418, type: !310)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!312 = !DILocalVariable(name: "ldp", scope: !2, file: !3, line: 419, type: !313)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!315 = !DILocalVariable(name: "dp", scope: !2, file: !3, line: 420, type: !316)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!318 = !DILocalVariable(name: "decpt", scope: !2, file: !3, line: 421, type: !231)
!319 = !DILocalVariable(name: "lp", scope: !2, file: !3, line: 423, type: !320)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!321 = !DILocalVariable(name: "__oldfpcancel", scope: !322, file: !3, line: 469, type: !6)
!322 = distinct !DILexicalBlock(scope: !2, file: !3, line: 469, column: 3)
!323 = !DILocalVariable(name: "res", scope: !324, file: !3, line: 1104, type: !263)
!324 = distinct !DILexicalBlock(scope: !325, file: !3, line: 1103, column: 6)
!325 = distinct !DILexicalBlock(scope: !326, file: !3, line: 1102, column: 8)
!326 = distinct !DILexicalBlock(scope: !327, file: !3, line: 971, column: 2)
!327 = distinct !DILexicalBlock(scope: !328, file: !3, line: 771, column: 2)
!328 = distinct !DILexicalBlock(scope: !329, file: !3, line: 477, column: 5)
!329 = distinct !DILexicalBlock(scope: !330, file: !3, line: 476, column: 3)
!330 = distinct !DILexicalBlock(scope: !322, file: !3, line: 476, column: 3)
!331 = !DILocalVariable(name: "vp", scope: !332, file: !3, line: 1110, type: !334)
!332 = distinct !DILexicalBlock(scope: !333, file: !3, line: 1109, column: 3)
!333 = distinct !DILexicalBlock(scope: !324, file: !3, line: 1108, column: 12)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!335 = !DILocalVariable(name: "leading_zeroes", scope: !336, file: !3, line: 1169, type: !39)
!336 = distinct !DILexicalBlock(scope: !327, file: !3, line: 1163, column: 2)
!337 = !DILocalVariable(name: "zeroes", scope: !336, file: !3, line: 1170, type: !39)
!338 = !DILocalVariable(name: "exp_adjust", scope: !336, file: !3, line: 1170, type: !39)
!339 = !DILocalVariable(name: "exp_start", scope: !336, file: !3, line: 1171, type: !259)
!340 = !DILocalVariable(name: "width_left", scope: !336, file: !3, line: 1172, type: !88)
!341 = !DILocalVariable(name: "nancount", scope: !336, file: !3, line: 1173, type: !41)
!342 = !DILocalVariable(name: "infcount", scope: !336, file: !3, line: 1174, type: !41)
!343 = !DILocalVariable(name: "res", scope: !344, file: !3, line: 1411, type: !317)
!344 = distinct !DILexicalBlock(scope: !345, file: !3, line: 1410, column: 6)
!345 = distinct !DILexicalBlock(scope: !336, file: !3, line: 1409, column: 8)
!346 = !DILocalVariable(name: "new_exp", scope: !344, file: !3, line: 1418, type: !39)
!347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 272, elements: !349)
!348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!349 = !{!350}
!350 = !DISubrange(count: 17)
!351 = !{i32 2, !"Dwarf Version", i32 4}
!352 = !{i32 2, !"Debug Info Version", i32 3}
!353 = !{i32 1, !"wchar_size", i32 4}
!354 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!355 = distinct !DISubprogram(name: "vfwscanf", scope: !3, file: !3, line: 262, type: !356, isLocal: false, isDefinition: true, scopeLine: 266, flags: DIFlagPrototyped, isOptimized: true, unit: !239, retainedNodes: !360)
!356 = !DISubroutineType(types: !357)
!357 = !{!6, !358, !359, !232}
!358 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !226)
!359 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !229)
!360 = !{!361, !362, !363, !364, !365}
!361 = !DILocalVariable(name: "fp", arg: 1, scope: !355, file: !3, line: 262, type: !358)
!362 = !DILocalVariable(name: "fmt", arg: 2, scope: !355, file: !3, line: 262, type: !359)
!363 = !DILocalVariable(name: "ap", arg: 3, scope: !355, file: !3, line: 262, type: !232)
!364 = !DILocalVariable(name: "reent", scope: !355, file: !3, line: 267, type: !7)
!365 = !DILocalVariable(name: "_check_init_ptr", scope: !366, file: !3, line: 269, type: !7)
!366 = distinct !DILexicalBlock(scope: !355, file: !3, line: 269, column: 3)
!367 = !DILocation(line: 262, column: 1, scope: !355)
!368 = !DILocation(line: 267, column: 26, scope: !355)
!369 = !DILocation(line: 267, column: 18, scope: !355)
!370 = !DILocation(line: 269, column: 3, scope: !366)
!371 = !DILocation(line: 269, column: 3, scope: !372)
!372 = distinct !DILexicalBlock(scope: !366, file: !3, line: 269, column: 3)
!373 = !{!374, !375, i64 80}
!374 = !{!"_reent", !375, i64 0, !378, i64 8, !378, i64 16, !378, i64 24, !375, i64 32, !376, i64 36, !375, i64 64, !378, i64 72, !375, i64 80, !378, i64 88, !378, i64 96, !375, i64 104, !378, i64 112, !378, i64 120, !375, i64 128, !378, i64 136, !376, i64 144, !378, i64 504, !379, i64 512, !378, i64 1304, !381, i64 1312, !376, i64 1336}
!375 = !{!"int", !376, i64 0}
!376 = !{!"omnipotent char", !377, i64 0}
!377 = !{!"Simple C/C++ TBAA"}
!378 = !{!"any pointer", !376, i64 0}
!379 = !{!"_atexit", !378, i64 0, !375, i64 8, !376, i64 16, !380, i64 272}
!380 = !{!"_on_exit_args", !376, i64 0, !376, i64 256, !375, i64 512, !375, i64 516}
!381 = !{!"_glue", !378, i64 0, !375, i64 8, !378, i64 16}
!382 = !DILocation(line: 270, column: 10, scope: !355)
!383 = !DILocation(line: 270, column: 3, scope: !355)
!384 = !DILocation(line: 377, column: 1, scope: !2)
!385 = !DILocation(line: 383, column: 21, scope: !2)
!386 = !DILocation(line: 386, column: 21, scope: !2)
!387 = !DILocation(line: 399, column: 7, scope: !2)
!388 = !DILocation(line: 401, column: 3, scope: !2)
!389 = !DILocation(line: 404, column: 19, scope: !2)
!390 = !DILocation(line: 405, column: 3, scope: !2)
!391 = !DILocation(line: 405, column: 11, scope: !2)
!392 = !DILocation(line: 408, column: 7, scope: !2)
!393 = !DILocation(line: 410, column: 9, scope: !2)
!394 = !DILocation(line: 412, column: 3, scope: !2)
!395 = !DILocation(line: 412, column: 8, scope: !2)
!396 = !DILocation(line: 465, column: 23, scope: !2)
!397 = !DILocation(line: 465, column: 45, scope: !2)
!398 = !{!399, !378, i64 0}
!399 = !{!"lconv", !378, i64 0, !378, i64 8, !378, i64 16, !378, i64 24, !378, i64 32, !378, i64 40, !378, i64 48, !378, i64 56, !378, i64 64, !378, i64 72, !376, i64 80, !376, i64 81, !376, i64 82, !376, i64 83, !376, i64 84, !376, i64 85, !376, i64 86, !376, i64 87, !376, i64 88, !376, i64 89, !376, i64 90, !376, i64 91, !376, i64 92, !376, i64 93}
!400 = !DILocation(line: 465, column: 22, scope: !2)
!401 = !{!376, !376, i64 0}
!402 = !DILocation(line: 465, column: 12, scope: !2)
!403 = !DILocation(line: 421, column: 11, scope: !2)
!404 = !DILocation(line: 469, column: 3, scope: !322)
!405 = !DILocation(line: 390, column: 7, scope: !2)
!406 = !DILocation(line: 391, column: 7, scope: !2)
!407 = !DILocation(line: 407, column: 18, scope: !2)
!408 = !DILocation(line: 406, column: 18, scope: !2)
!409 = !DILocation(line: 476, column: 3, scope: !322)
!410 = !DILocation(line: 478, column: 11, scope: !328)
!411 = !{!375, !375, i64 0}
!412 = !DILocation(line: 384, column: 19, scope: !2)
!413 = !DILocation(line: 479, column: 13, scope: !414)
!414 = distinct !DILexicalBlock(scope: !328, file: !3, line: 479, column: 11)
!415 = !DILocation(line: 479, column: 11, scope: !328)
!416 = !DILocation(line: 478, column: 15, scope: !328)
!417 = !DILocation(line: 481, column: 11, scope: !418)
!418 = distinct !DILexicalBlock(scope: !328, file: !3, line: 481, column: 11)
!419 = !DILocation(line: 481, column: 11, scope: !328)
!420 = !DILocation(line: 483, column: 16, scope: !421)
!421 = distinct !DILexicalBlock(scope: !418, file: !3, line: 482, column: 2)
!422 = !DILocation(line: 483, column: 38, scope: !421)
!423 = !DILocation(line: 483, column: 46, scope: !421)
!424 = !DILocation(line: 483, column: 49, scope: !421)
!425 = !DILocation(line: 483, column: 4, scope: !421)
!426 = distinct !{!426, !425, !427}
!427 = !DILocation(line: 484, column: 6, scope: !421)
!428 = !DILocation(line: 485, column: 8, scope: !421)
!429 = !DILocation(line: 486, column: 6, scope: !430)
!430 = distinct !DILexicalBlock(scope: !421, file: !3, line: 485, column: 8)
!431 = !DILocation(line: 0, scope: !432)
!432 = distinct !DILexicalBlock(scope: !328, file: !3, line: 507, column: 2)
!433 = distinct !{!433, !434, !435}
!434 = !DILocation(line: 476, column: 3, scope: !330)
!435 = !DILocation(line: 1473, column: 5, scope: !330)
!436 = !DILocation(line: 489, column: 13, scope: !437)
!437 = distinct !DILexicalBlock(scope: !328, file: !3, line: 489, column: 11)
!438 = !DILocation(line: 489, column: 11, scope: !328)
!439 = !DILocation(line: 0, scope: !328)
!440 = !DILocation(line: 385, column: 19, scope: !2)
!441 = !DILocation(line: 388, column: 16, scope: !2)
!442 = !DILocation(line: 504, column: 15, scope: !328)
!443 = !DILocation(line: 504, column: 11, scope: !328)
!444 = !DILocation(line: 506, column: 7, scope: !328)
!445 = !DILocation(line: 510, column: 14, scope: !446)
!446 = distinct !DILexicalBlock(scope: !432, file: !3, line: 510, column: 8)
!447 = !DILocation(line: 409, column: 10, scope: !2)
!448 = !DILocation(line: 510, column: 36, scope: !446)
!449 = !DILocation(line: 510, column: 8, scope: !432)
!450 = !DILocation(line: 512, column: 11, scope: !451)
!451 = distinct !DILexicalBlock(scope: !432, file: !3, line: 512, column: 8)
!452 = !DILocation(line: 512, column: 8, scope: !432)
!453 = !DILocation(line: 514, column: 8, scope: !454)
!454 = distinct !DILexicalBlock(scope: !451, file: !3, line: 513, column: 6)
!455 = !DILocation(line: 515, column: 8, scope: !454)
!456 = !DILocation(line: 517, column: 9, scope: !432)
!457 = !DILocation(line: 518, column: 4, scope: !432)
!458 = !DILocation(line: 521, column: 10, scope: !432)
!459 = !DILocation(line: 522, column: 4, scope: !432)
!460 = !DILocation(line: 525, column: 8, scope: !461)
!461 = distinct !DILexicalBlock(scope: !432, file: !3, line: 525, column: 8)
!462 = !DILocation(line: 525, column: 13, scope: !461)
!463 = !DILocation(line: 525, column: 8, scope: !432)
!464 = !DILocation(line: 527, column: 8, scope: !465)
!465 = distinct !DILexicalBlock(scope: !461, file: !3, line: 526, column: 6)
!466 = !DILocation(line: 0, scope: !465)
!467 = !DILocation(line: 533, column: 4, scope: !432)
!468 = !DILocation(line: 535, column: 10, scope: !432)
!469 = !DILocation(line: 536, column: 4, scope: !432)
!470 = !DILocation(line: 539, column: 8, scope: !471)
!471 = distinct !DILexicalBlock(scope: !432, file: !3, line: 539, column: 8)
!472 = !DILocation(line: 539, column: 13, scope: !471)
!473 = !DILocation(line: 539, column: 8, scope: !432)
!474 = !DILocation(line: 541, column: 8, scope: !475)
!475 = distinct !DILexicalBlock(scope: !471, file: !3, line: 540, column: 6)
!476 = !DILocation(line: 0, scope: !475)
!477 = !DILocation(line: 547, column: 4, scope: !432)
!478 = !DILocation(line: 551, column: 12, scope: !479)
!479 = distinct !DILexicalBlock(scope: !432, file: !3, line: 550, column: 8)
!480 = !DILocation(line: 554, column: 4, scope: !432)
!481 = !DILocation(line: 563, column: 12, scope: !482)
!482 = distinct !DILexicalBlock(scope: !483, file: !3, line: 562, column: 13)
!483 = distinct !DILexicalBlock(scope: !484, file: !3, line: 560, column: 13)
!484 = distinct !DILexicalBlock(scope: !432, file: !3, line: 556, column: 8)
!485 = !DILocation(line: 570, column: 4, scope: !432)
!486 = !DILocation(line: 578, column: 12, scope: !487)
!487 = distinct !DILexicalBlock(scope: !488, file: !3, line: 577, column: 13)
!488 = distinct !DILexicalBlock(scope: !489, file: !3, line: 575, column: 13)
!489 = distinct !DILexicalBlock(scope: !432, file: !3, line: 572, column: 8)
!490 = !DILocation(line: 585, column: 4, scope: !432)
!491 = !DILocation(line: 598, column: 18, scope: !432)
!492 = !DILocation(line: 598, column: 25, scope: !432)
!493 = !DILocation(line: 598, column: 23, scope: !432)
!494 = !DILocation(line: 598, column: 27, scope: !432)
!495 = !DILocation(line: 599, column: 4, scope: !432)
!496 = !DILocation(line: 630, column: 4, scope: !432)
!497 = !DILocation(line: 636, column: 4, scope: !432)
!498 = !DILocation(line: 640, column: 10, scope: !432)
!499 = !DILocation(line: 644, column: 4, scope: !432)
!500 = !DILocation(line: 658, column: 4, scope: !432)
!501 = !DILocation(line: 663, column: 10, scope: !432)
!502 = !DILocation(line: 663, column: 4, scope: !432)
!503 = !DILocation(line: 669, column: 4, scope: !432)
!504 = !DILocation(line: 673, column: 8, scope: !505)
!505 = distinct !DILexicalBlock(scope: !432, file: !3, line: 673, column: 8)
!506 = !DILocation(line: 673, column: 13, scope: !505)
!507 = !DILocation(line: 673, column: 8, scope: !432)
!508 = !DILocation(line: 676, column: 8, scope: !509)
!509 = distinct !DILexicalBlock(scope: !505, file: !3, line: 674, column: 6)
!510 = !DILocation(line: 677, column: 6, scope: !509)
!511 = !DILocation(line: 680, column: 8, scope: !512)
!512 = distinct !DILexicalBlock(scope: !432, file: !3, line: 680, column: 8)
!513 = !DILocation(line: 0, scope: !505)
!514 = !DILocation(line: 680, column: 13, scope: !512)
!515 = !DILocation(line: 680, column: 8, scope: !432)
!516 = !DILocation(line: 681, column: 9, scope: !512)
!517 = !DILocation(line: 681, column: 6, scope: !512)
!518 = !DILocation(line: 682, column: 11, scope: !432)
!519 = !DILocation(line: 0, scope: !509)
!520 = !DILocation(line: 682, column: 4, scope: !432)
!521 = !DILocation(line: 682, column: 16, scope: !432)
!522 = !DILocation(line: 682, column: 24, scope: !432)
!523 = !DILocation(line: 682, column: 32, scope: !432)
!524 = distinct !{!524, !520, !525}
!525 = !DILocation(line: 683, column: 9, scope: !432)
!526 = !DILocation(line: 686, column: 10, scope: !432)
!527 = !DILocation(line: 688, column: 4, scope: !432)
!528 = !DILocation(line: 692, column: 10, scope: !432)
!529 = !DILocation(line: 692, column: 4, scope: !432)
!530 = !DILocation(line: 697, column: 10, scope: !432)
!531 = !DILocation(line: 699, column: 4, scope: !432)
!532 = !DILocation(line: 702, column: 10, scope: !432)
!533 = !DILocation(line: 706, column: 4, scope: !432)
!534 = !DILocation(line: 709, column: 14, scope: !535)
!535 = distinct !DILexicalBlock(scope: !432, file: !3, line: 709, column: 8)
!536 = !DILocation(line: 709, column: 8, scope: !432)
!537 = !DILocation(line: 712, column: 14, scope: !538)
!538 = distinct !DILexicalBlock(scope: !432, file: !3, line: 712, column: 8)
!539 = !DILocation(line: 712, column: 8, scope: !432)
!540 = !DILocation(line: 714, column: 13, scope: !541)
!541 = distinct !DILexicalBlock(scope: !538, file: !3, line: 713, column: 6)
!542 = !DILocation(line: 414, column: 9, scope: !2)
!543 = !DILocation(line: 715, column: 12, scope: !541)
!544 = !DILocation(line: 716, column: 6, scope: !541)
!545 = !DILocation(line: 719, column: 14, scope: !546)
!546 = distinct !DILexicalBlock(scope: !538, file: !3, line: 719, column: 8)
!547 = !DILocation(line: 719, column: 8, scope: !538)
!548 = !DILocation(line: 721, column: 13, scope: !549)
!549 = distinct !DILexicalBlock(scope: !546, file: !3, line: 720, column: 6)
!550 = !DILocation(line: 415, column: 10, scope: !2)
!551 = !DILocation(line: 722, column: 12, scope: !549)
!552 = !{!553, !553, i64 0}
!553 = !{!"short", !376, i64 0}
!554 = !DILocation(line: 723, column: 6, scope: !549)
!555 = !DILocation(line: 724, column: 19, scope: !556)
!556 = distinct !DILexicalBlock(scope: !546, file: !3, line: 724, column: 13)
!557 = !DILocation(line: 0, scope: !558)
!558 = distinct !DILexicalBlock(scope: !556, file: !3, line: 737, column: 6)
!559 = !DILocation(line: 724, column: 13, scope: !546)
!560 = !DILocation(line: 0, scope: !561)
!561 = distinct !DILexicalBlock(scope: !556, file: !3, line: 725, column: 6)
!562 = !DILocation(line: 726, column: 13, scope: !561)
!563 = !DILocation(line: 423, column: 9, scope: !2)
!564 = !DILocation(line: 727, column: 12, scope: !561)
!565 = !{!566, !566, i64 0}
!566 = !{!"long", !376, i64 0}
!567 = !DILocation(line: 728, column: 6, scope: !561)
!568 = !DILocation(line: 738, column: 13, scope: !558)
!569 = !DILocation(line: 416, column: 8, scope: !2)
!570 = !DILocation(line: 739, column: 12, scope: !558)
!571 = !DILocation(line: 747, column: 4, scope: !432)
!572 = !DILocation(line: 748, column: 4, scope: !432)
!573 = !DILocation(line: 0, scope: !322)
!574 = !DILocation(line: 0, scope: !2)
!575 = !DILocation(line: 758, column: 18, scope: !576)
!576 = distinct !DILexicalBlock(scope: !328, file: !3, line: 758, column: 11)
!577 = !DILocation(line: 758, column: 28, scope: !576)
!578 = !DILocation(line: 758, column: 11, scope: !328)
!579 = !DILocation(line: 760, column: 17, scope: !580)
!580 = distinct !DILexicalBlock(scope: !576, file: !3, line: 759, column: 2)
!581 = !DILocation(line: 760, column: 39, scope: !580)
!582 = !DILocation(line: 760, column: 47, scope: !580)
!583 = !DILocation(line: 762, column: 8, scope: !580)
!584 = !DILocation(line: 760, column: 50, scope: !580)
!585 = !DILocation(line: 760, column: 4, scope: !580)
!586 = !DILocation(line: 761, column: 11, scope: !580)
!587 = distinct !{!587, !585, !586}
!588 = !DILocation(line: 764, column: 4, scope: !580)
!589 = !DILocation(line: 765, column: 2, scope: !580)
!590 = !DILocation(line: 474, column: 9, scope: !322)
!591 = !DILocation(line: 770, column: 7, scope: !328)
!592 = !DILocation(line: 775, column: 14, scope: !593)
!593 = distinct !DILexicalBlock(scope: !327, file: !3, line: 775, column: 8)
!594 = !DILocation(line: 775, column: 8, scope: !327)
!595 = !DILocation(line: 776, column: 6, scope: !593)
!596 = !DILocation(line: 777, column: 21, scope: !597)
!597 = distinct !DILexicalBlock(scope: !327, file: !3, line: 777, column: 15)
!598 = !DILocation(line: 0, scope: !599)
!599 = distinct !DILexicalBlock(scope: !600, file: !3, line: 796, column: 12)
!600 = distinct !DILexicalBlock(scope: !597, file: !3, line: 795, column: 6)
!601 = !DILocation(line: 777, column: 15, scope: !327)
!602 = !DILocation(line: 0, scope: !603)
!603 = distinct !DILexicalBlock(scope: !597, file: !3, line: 778, column: 6)
!604 = !DILocation(line: 779, column: 12, scope: !603)
!605 = !DILocation(line: 780, column: 7, scope: !606)
!606 = distinct !DILexicalBlock(scope: !603, file: !3, line: 779, column: 12)
!607 = !DILocation(line: 780, column: 3, scope: !606)
!608 = !DILocation(line: 0, scope: !606)
!609 = !DILocation(line: 387, column: 16, scope: !2)
!610 = !DILocation(line: 782, column: 8, scope: !603)
!611 = !DILocation(line: 782, column: 28, scope: !603)
!612 = !DILocation(line: 782, column: 20, scope: !603)
!613 = !DILocation(line: 782, column: 37, scope: !603)
!614 = !DILocation(line: 782, column: 59, scope: !603)
!615 = !DILocation(line: 784, column: 9, scope: !616)
!616 = distinct !DILexicalBlock(scope: !603, file: !3, line: 783, column: 3)
!617 = !DILocation(line: 785, column: 9, scope: !618)
!618 = distinct !DILexicalBlock(scope: !616, file: !3, line: 784, column: 9)
!619 = !DILocation(line: 785, column: 12, scope: !618)
!620 = !DILocation(line: 785, column: 7, scope: !618)
!621 = !DILocation(line: 0, scope: !618)
!622 = !DILocation(line: 786, column: 6, scope: !616)
!623 = !DILocation(line: 782, column: 23, scope: !603)
!624 = distinct !{!624, !610, !625}
!625 = !DILocation(line: 787, column: 3, scope: !603)
!626 = !DILocation(line: 788, column: 12, scope: !603)
!627 = !DILocation(line: 788, column: 14, scope: !628)
!628 = distinct !DILexicalBlock(scope: !603, file: !3, line: 788, column: 12)
!629 = !DILocation(line: 790, column: 14, scope: !603)
!630 = !DILocation(line: 791, column: 12, scope: !603)
!631 = !DILocation(line: 792, column: 12, scope: !632)
!632 = distinct !DILexicalBlock(scope: !603, file: !3, line: 791, column: 12)
!633 = !DILocation(line: 792, column: 3, scope: !632)
!634 = !DILocation(line: 796, column: 12, scope: !600)
!635 = !DILocation(line: 797, column: 9, scope: !599)
!636 = !DILocation(line: 797, column: 3, scope: !599)
!637 = !DILocation(line: 799, column: 8, scope: !600)
!638 = !DILocation(line: 800, column: 8, scope: !600)
!639 = !DILocation(line: 800, column: 26, scope: !600)
!640 = !DILocation(line: 800, column: 35, scope: !600)
!641 = !DILocation(line: 800, column: 57, scope: !600)
!642 = !DILocation(line: 802, column: 18, scope: !643)
!643 = distinct !DILexicalBlock(scope: !644, file: !3, line: 802, column: 9)
!644 = distinct !DILexicalBlock(scope: !600, file: !3, line: 801, column: 3)
!645 = !DILocation(line: 802, column: 15, scope: !643)
!646 = !DILocation(line: 802, column: 29, scope: !643)
!647 = !DILocation(line: 802, column: 9, scope: !644)
!648 = !DILocation(line: 401, column: 13, scope: !2)
!649 = !DILocation(line: 804, column: 17, scope: !650)
!650 = distinct !DILexicalBlock(scope: !643, file: !3, line: 803, column: 7)
!651 = !DILocation(line: 411, column: 10, scope: !2)
!652 = !DILocation(line: 805, column: 19, scope: !653)
!653 = distinct !DILexicalBlock(scope: !650, file: !3, line: 805, column: 13)
!654 = !DILocation(line: 805, column: 13, scope: !650)
!655 = !DILocation(line: 810, column: 17, scope: !656)
!656 = distinct !DILexicalBlock(scope: !643, file: !3, line: 809, column: 7)
!657 = !DILocation(line: 811, column: 19, scope: !658)
!658 = distinct !DILexicalBlock(scope: !656, file: !3, line: 811, column: 13)
!659 = !DILocation(line: 811, column: 13, scope: !656)
!660 = !DILocation(line: 813, column: 19, scope: !661)
!661 = distinct !DILexicalBlock(scope: !656, file: !3, line: 813, column: 13)
!662 = !DILocation(line: 813, column: 13, scope: !656)
!663 = !DILocation(line: 815, column: 6, scope: !664)
!664 = distinct !DILexicalBlock(scope: !661, file: !3, line: 814, column: 4)
!665 = !DILocation(line: 816, column: 6, scope: !664)
!666 = !DILocation(line: 818, column: 13, scope: !656)
!667 = !DILocation(line: 819, column: 4, scope: !668)
!668 = distinct !DILexicalBlock(scope: !656, file: !3, line: 818, column: 13)
!669 = !DILocation(line: 821, column: 9, scope: !644)
!670 = !DILocation(line: 822, column: 11, scope: !671)
!671 = distinct !DILexicalBlock(scope: !644, file: !3, line: 821, column: 9)
!672 = !DILocation(line: 822, column: 7, scope: !671)
!673 = !DILocation(line: 0, scope: !671)
!674 = !DILocation(line: 823, column: 11, scope: !644)
!675 = !DILocation(line: 824, column: 6, scope: !644)
!676 = !DILocation(line: 800, column: 21, scope: !600)
!677 = distinct !{!677, !638, !678}
!678 = !DILocation(line: 825, column: 3, scope: !600)
!679 = !DILocation(line: 826, column: 12, scope: !600)
!680 = !DILocation(line: 826, column: 14, scope: !681)
!681 = distinct !DILexicalBlock(scope: !600, file: !3, line: 826, column: 12)
!682 = !DILocation(line: 828, column: 14, scope: !600)
!683 = !DILocation(line: 829, column: 12, scope: !600)
!684 = !DILocation(line: 830, column: 12, scope: !685)
!685 = distinct !DILexicalBlock(scope: !600, file: !3, line: 829, column: 12)
!686 = !DILocation(line: 830, column: 3, scope: !685)
!687 = !DILocation(line: 836, column: 14, scope: !688)
!688 = distinct !DILexicalBlock(scope: !327, file: !3, line: 836, column: 8)
!689 = !DILocation(line: 836, column: 8, scope: !327)
!690 = !DILocation(line: 837, column: 6, scope: !688)
!691 = !DILocation(line: 839, column: 15, scope: !692)
!692 = distinct !DILexicalBlock(scope: !327, file: !3, line: 839, column: 8)
!693 = !DILocation(line: 839, column: 27, scope: !692)
!694 = !DILocation(line: 0, scope: !695)
!695 = distinct !DILexicalBlock(scope: !692, file: !3, line: 850, column: 13)
!696 = !DILocation(line: 0, scope: !692)
!697 = !DILocation(line: 0, scope: !698)
!698 = distinct !DILexicalBlock(scope: !692, file: !3, line: 840, column: 6)
!699 = !DILocation(line: 839, column: 8, scope: !327)
!700 = !DILocation(line: 842, column: 21, scope: !698)
!701 = !DILocation(line: 842, column: 43, scope: !698)
!702 = !DILocation(line: 843, column: 8, scope: !698)
!703 = !DILocation(line: 843, column: 16, scope: !698)
!704 = !DILocation(line: 843, column: 19, scope: !698)
!705 = !DILocation(line: 843, column: 24, scope: !698)
!706 = !DILocation(line: 843, column: 27, scope: !698)
!707 = !DILocation(line: 842, column: 8, scope: !698)
!708 = !DILocation(line: 844, column: 4, scope: !698)
!709 = distinct !{!709, !707, !708}
!710 = !DILocation(line: 845, column: 12, scope: !698)
!711 = !DILocation(line: 846, column: 3, scope: !712)
!712 = distinct !DILexicalBlock(scope: !698, file: !3, line: 845, column: 12)
!713 = !DILocation(line: 0, scope: !712)
!714 = !DILocation(line: 847, column: 14, scope: !715)
!715 = distinct !DILexicalBlock(scope: !698, file: !3, line: 847, column: 12)
!716 = !DILocation(line: 847, column: 12, scope: !698)
!717 = !DILocation(line: 850, column: 13, scope: !692)
!718 = !DILocation(line: 852, column: 17, scope: !719)
!719 = distinct !DILexicalBlock(scope: !695, file: !3, line: 851, column: 6)
!720 = !DILocation(line: 389, column: 21, scope: !2)
!721 = !DILocation(line: 853, column: 8, scope: !719)
!722 = !DILocation(line: 853, column: 21, scope: !719)
!723 = !DILocation(line: 853, column: 43, scope: !719)
!724 = !DILocation(line: 854, column: 8, scope: !719)
!725 = !DILocation(line: 854, column: 16, scope: !719)
!726 = !DILocation(line: 854, column: 19, scope: !719)
!727 = !DILocation(line: 854, column: 24, scope: !719)
!728 = !DILocation(line: 856, column: 12, scope: !719)
!729 = !DILocation(line: 854, column: 27, scope: !719)
!730 = !DILocation(line: 855, column: 5, scope: !719)
!731 = !DILocation(line: 855, column: 8, scope: !719)
!732 = distinct !{!732, !721, !733}
!733 = !DILocation(line: 855, column: 20, scope: !719)
!734 = !DILocation(line: 0, scope: !719)
!735 = !DILocation(line: 857, column: 3, scope: !736)
!736 = distinct !DILexicalBlock(scope: !719, file: !3, line: 856, column: 12)
!737 = !DILocation(line: 0, scope: !736)
!738 = !DILocation(line: 858, column: 14, scope: !719)
!739 = !DILocation(line: 858, column: 12, scope: !719)
!740 = !DILocation(line: 859, column: 14, scope: !741)
!741 = distinct !DILexicalBlock(scope: !719, file: !3, line: 859, column: 12)
!742 = !DILocation(line: 859, column: 12, scope: !719)
!743 = !DILocation(line: 861, column: 11, scope: !719)
!744 = !DILocation(line: 862, column: 17, scope: !719)
!745 = !DILocation(line: 863, column: 6, scope: !719)
!746 = !DILocation(line: 866, column: 12, scope: !747)
!747 = distinct !DILexicalBlock(scope: !695, file: !3, line: 865, column: 6)
!748 = !DILocation(line: 867, column: 9, scope: !749)
!749 = distinct !DILexicalBlock(scope: !747, file: !3, line: 866, column: 12)
!750 = !DILocation(line: 867, column: 3, scope: !749)
!751 = !DILocation(line: 0, scope: !749)
!752 = !DILocation(line: 869, column: 8, scope: !747)
!753 = !DILocation(line: 870, column: 8, scope: !747)
!754 = !DILocation(line: 870, column: 21, scope: !747)
!755 = !DILocation(line: 870, column: 43, scope: !747)
!756 = !DILocation(line: 871, column: 8, scope: !747)
!757 = !DILocation(line: 871, column: 16, scope: !747)
!758 = !DILocation(line: 871, column: 19, scope: !747)
!759 = !DILocation(line: 871, column: 24, scope: !747)
!760 = !DILocation(line: 871, column: 27, scope: !747)
!761 = !DILocation(line: 873, column: 18, scope: !762)
!762 = distinct !DILexicalBlock(scope: !763, file: !3, line: 873, column: 9)
!763 = distinct !DILexicalBlock(scope: !747, file: !3, line: 872, column: 3)
!764 = !DILocation(line: 873, column: 15, scope: !762)
!765 = !DILocation(line: 873, column: 29, scope: !762)
!766 = !DILocation(line: 873, column: 9, scope: !763)
!767 = !DILocation(line: 875, column: 17, scope: !768)
!768 = distinct !DILexicalBlock(scope: !762, file: !3, line: 874, column: 7)
!769 = !DILocation(line: 876, column: 19, scope: !770)
!770 = distinct !DILexicalBlock(scope: !768, file: !3, line: 876, column: 13)
!771 = !DILocation(line: 876, column: 13, scope: !768)
!772 = !DILocation(line: 881, column: 17, scope: !773)
!773 = distinct !DILexicalBlock(scope: !762, file: !3, line: 880, column: 7)
!774 = !DILocation(line: 882, column: 19, scope: !775)
!775 = distinct !DILexicalBlock(scope: !773, file: !3, line: 882, column: 13)
!776 = !DILocation(line: 882, column: 13, scope: !773)
!777 = !DILocation(line: 884, column: 19, scope: !778)
!778 = distinct !DILexicalBlock(scope: !773, file: !3, line: 884, column: 13)
!779 = !DILocation(line: 884, column: 13, scope: !773)
!780 = !DILocation(line: 886, column: 13, scope: !773)
!781 = !DILocation(line: 887, column: 4, scope: !782)
!782 = distinct !DILexicalBlock(scope: !773, file: !3, line: 886, column: 13)
!783 = !DILocation(line: 889, column: 9, scope: !763)
!784 = !DILocation(line: 890, column: 11, scope: !785)
!785 = distinct !DILexicalBlock(scope: !763, file: !3, line: 889, column: 9)
!786 = !DILocation(line: 890, column: 7, scope: !785)
!787 = !DILocation(line: 0, scope: !785)
!788 = !DILocation(line: 891, column: 11, scope: !763)
!789 = !DILocation(line: 892, column: 6, scope: !763)
!790 = distinct !{!790, !753, !791}
!791 = !DILocation(line: 893, column: 3, scope: !747)
!792 = !DILocation(line: 894, column: 12, scope: !747)
!793 = !DILocation(line: 895, column: 3, scope: !794)
!794 = distinct !DILexicalBlock(scope: !747, file: !3, line: 894, column: 12)
!795 = !DILocation(line: 0, scope: !794)
!796 = !DILocation(line: 896, column: 12, scope: !747)
!797 = !DILocation(line: 898, column: 10, scope: !798)
!798 = distinct !DILexicalBlock(scope: !799, file: !3, line: 897, column: 3)
!799 = distinct !DILexicalBlock(scope: !747, file: !3, line: 896, column: 12)
!800 = !DILocation(line: 899, column: 14, scope: !798)
!801 = !DILocation(line: 900, column: 3, scope: !798)
!802 = !DILocation(line: 0, scope: !798)
!803 = !DILocation(line: 0, scope: !747)
!804 = !DILocation(line: 902, column: 10, scope: !327)
!805 = !DILocation(line: 903, column: 4, scope: !327)
!806 = !DILocation(line: 907, column: 14, scope: !807)
!807 = distinct !DILexicalBlock(scope: !327, file: !3, line: 907, column: 8)
!808 = !DILocation(line: 907, column: 8, scope: !327)
!809 = !DILocation(line: 908, column: 13, scope: !807)
!810 = !DILocation(line: 909, column: 15, scope: !811)
!811 = distinct !DILexicalBlock(scope: !327, file: !3, line: 909, column: 8)
!812 = !DILocation(line: 909, column: 27, scope: !811)
!813 = !DILocation(line: 0, scope: !814)
!814 = distinct !DILexicalBlock(scope: !811, file: !3, line: 917, column: 13)
!815 = !DILocation(line: 0, scope: !811)
!816 = !DILocation(line: 909, column: 8, scope: !327)
!817 = !DILocation(line: 917, column: 13, scope: !811)
!818 = !DILocation(line: 933, column: 12, scope: !819)
!819 = distinct !DILexicalBlock(scope: !814, file: !3, line: 932, column: 6)
!820 = !DILocation(line: 911, column: 21, scope: !821)
!821 = distinct !DILexicalBlock(scope: !811, file: !3, line: 910, column: 6)
!822 = !DILocation(line: 911, column: 43, scope: !821)
!823 = !DILocation(line: 912, column: 8, scope: !821)
!824 = !DILocation(line: 912, column: 16, scope: !821)
!825 = !DILocation(line: 912, column: 19, scope: !821)
!826 = !DILocation(line: 912, column: 24, scope: !821)
!827 = !DILocation(line: 912, column: 28, scope: !821)
!828 = !DILocation(line: 912, column: 27, scope: !821)
!829 = !DILocation(line: 911, column: 8, scope: !821)
!830 = !DILocation(line: 913, column: 8, scope: !821)
!831 = distinct !{!831, !829, !830}
!832 = !DILocation(line: 914, column: 12, scope: !821)
!833 = !DILocation(line: 915, column: 3, scope: !834)
!834 = distinct !DILexicalBlock(scope: !821, file: !3, line: 914, column: 12)
!835 = !DILocation(line: 919, column: 17, scope: !836)
!836 = distinct !DILexicalBlock(scope: !814, file: !3, line: 918, column: 6)
!837 = !DILocation(line: 920, column: 8, scope: !836)
!838 = !DILocation(line: 920, column: 21, scope: !836)
!839 = !DILocation(line: 920, column: 43, scope: !836)
!840 = !DILocation(line: 921, column: 8, scope: !836)
!841 = !DILocation(line: 921, column: 16, scope: !836)
!842 = !DILocation(line: 921, column: 19, scope: !836)
!843 = !DILocation(line: 921, column: 24, scope: !836)
!844 = !DILocation(line: 926, column: 12, scope: !836)
!845 = !DILocation(line: 921, column: 28, scope: !836)
!846 = !DILocation(line: 921, column: 27, scope: !836)
!847 = !DILocation(line: 923, column: 7, scope: !848)
!848 = distinct !DILexicalBlock(scope: !836, file: !3, line: 922, column: 3)
!849 = !DILocation(line: 923, column: 10, scope: !848)
!850 = !DILocation(line: 924, column: 10, scope: !848)
!851 = distinct !{!851, !837, !852}
!852 = !DILocation(line: 925, column: 3, scope: !836)
!853 = !DILocation(line: 0, scope: !848)
!854 = !DILocation(line: 927, column: 3, scope: !855)
!855 = distinct !DILexicalBlock(scope: !836, file: !3, line: 926, column: 12)
!856 = !DILocation(line: 0, scope: !855)
!857 = !DILocation(line: 928, column: 11, scope: !836)
!858 = !DILocation(line: 929, column: 17, scope: !836)
!859 = !DILocation(line: 930, column: 6, scope: !836)
!860 = !DILocation(line: 934, column: 9, scope: !861)
!861 = distinct !DILexicalBlock(scope: !819, file: !3, line: 933, column: 12)
!862 = !DILocation(line: 934, column: 3, scope: !861)
!863 = !DILocation(line: 0, scope: !861)
!864 = !DILocation(line: 935, column: 8, scope: !819)
!865 = !DILocation(line: 936, column: 8, scope: !819)
!866 = !DILocation(line: 936, column: 21, scope: !819)
!867 = !DILocation(line: 936, column: 43, scope: !819)
!868 = !DILocation(line: 937, column: 8, scope: !819)
!869 = !DILocation(line: 937, column: 26, scope: !819)
!870 = !DILocation(line: 937, column: 25, scope: !819)
!871 = !DILocation(line: 939, column: 18, scope: !872)
!872 = distinct !DILexicalBlock(scope: !873, file: !3, line: 939, column: 9)
!873 = distinct !DILexicalBlock(scope: !819, file: !3, line: 938, column: 3)
!874 = !DILocation(line: 939, column: 15, scope: !872)
!875 = !DILocation(line: 939, column: 29, scope: !872)
!876 = !DILocation(line: 939, column: 9, scope: !873)
!877 = !DILocation(line: 941, column: 17, scope: !878)
!878 = distinct !DILexicalBlock(scope: !872, file: !3, line: 940, column: 7)
!879 = !DILocation(line: 942, column: 19, scope: !880)
!880 = distinct !DILexicalBlock(scope: !878, file: !3, line: 942, column: 13)
!881 = !DILocation(line: 942, column: 13, scope: !878)
!882 = !DILocation(line: 947, column: 17, scope: !883)
!883 = distinct !DILexicalBlock(scope: !872, file: !3, line: 946, column: 7)
!884 = !DILocation(line: 948, column: 19, scope: !885)
!885 = distinct !DILexicalBlock(scope: !883, file: !3, line: 948, column: 13)
!886 = !DILocation(line: 948, column: 13, scope: !883)
!887 = !DILocation(line: 950, column: 19, scope: !888)
!888 = distinct !DILexicalBlock(scope: !883, file: !3, line: 950, column: 13)
!889 = !DILocation(line: 950, column: 13, scope: !883)
!890 = !DILocation(line: 952, column: 13, scope: !883)
!891 = !DILocation(line: 953, column: 4, scope: !892)
!892 = distinct !DILexicalBlock(scope: !883, file: !3, line: 952, column: 13)
!893 = !DILocation(line: 955, column: 9, scope: !873)
!894 = !DILocation(line: 956, column: 11, scope: !895)
!895 = distinct !DILexicalBlock(scope: !873, file: !3, line: 955, column: 9)
!896 = !DILocation(line: 956, column: 7, scope: !895)
!897 = !DILocation(line: 0, scope: !895)
!898 = !DILocation(line: 957, column: 11, scope: !873)
!899 = !DILocation(line: 958, column: 10, scope: !873)
!900 = !DILocation(line: 937, column: 17, scope: !819)
!901 = distinct !{!901, !865, !902}
!902 = !DILocation(line: 959, column: 3, scope: !819)
!903 = !DILocation(line: 960, column: 12, scope: !819)
!904 = !DILocation(line: 0, scope: !873)
!905 = !DILocation(line: 961, column: 3, scope: !906)
!906 = distinct !DILexicalBlock(scope: !819, file: !3, line: 960, column: 12)
!907 = !DILocation(line: 962, column: 12, scope: !819)
!908 = !DILocation(line: 964, column: 10, scope: !909)
!909 = distinct !DILexicalBlock(scope: !910, file: !3, line: 963, column: 3)
!910 = distinct !DILexicalBlock(scope: !819, file: !3, line: 962, column: 12)
!911 = !DILocation(line: 965, column: 14, scope: !909)
!912 = !DILocation(line: 966, column: 3, scope: !909)
!913 = !DILocation(line: 0, scope: !834)
!914 = !DILocation(line: 968, column: 4, scope: !327)
!915 = !DILocation(line: 973, column: 19, scope: !916)
!916 = distinct !DILexicalBlock(scope: !326, file: !3, line: 973, column: 8)
!917 = !DILocation(line: 974, column: 6, scope: !916)
!918 = !DILocation(line: 975, column: 10, scope: !326)
!919 = !DILocation(line: 976, column: 9, scope: !920)
!920 = distinct !DILexicalBlock(scope: !326, file: !3, line: 976, column: 4)
!921 = !DILocation(line: 976, column: 4, scope: !920)
!922 = !DILocation(line: 978, column: 12, scope: !923)
!923 = distinct !DILexicalBlock(scope: !924, file: !3, line: 977, column: 6)
!924 = distinct !DILexicalBlock(scope: !920, file: !3, line: 976, column: 4)
!925 = !DILocation(line: 983, column: 8, scope: !923)
!926 = !DILocation(line: 995, column: 14, scope: !927)
!927 = distinct !DILexicalBlock(scope: !928, file: !3, line: 995, column: 9)
!928 = distinct !DILexicalBlock(scope: !923, file: !3, line: 984, column: 3)
!929 = !DILocation(line: 995, column: 9, scope: !928)
!930 = !DILocation(line: 998, column: 15, scope: !931)
!931 = distinct !DILexicalBlock(scope: !927, file: !3, line: 996, column: 7)
!932 = !DILocation(line: 999, column: 7, scope: !931)
!933 = !DILocation(line: 0, scope: !326)
!934 = !DILocation(line: 1000, column: 15, scope: !935)
!935 = distinct !DILexicalBlock(scope: !928, file: !3, line: 1000, column: 9)
!936 = !DILocation(line: 1000, column: 9, scope: !928)
!937 = !DILocation(line: 1001, column: 13, scope: !935)
!938 = !DILocation(line: 1001, column: 7, scope: !935)
!939 = !DILocation(line: 1003, column: 13, scope: !935)
!940 = !DILocation(line: 1014, column: 12, scope: !928)
!941 = !DILocation(line: 1015, column: 11, scope: !928)
!942 = !DILocation(line: 1016, column: 5, scope: !928)
!943 = !DILocation(line: 1021, column: 12, scope: !928)
!944 = !DILocation(line: 1022, column: 14, scope: !945)
!945 = distinct !DILexicalBlock(scope: !928, file: !3, line: 1022, column: 9)
!946 = !DILocation(line: 1022, column: 9, scope: !928)
!947 = !DILocation(line: 1024, column: 11, scope: !928)
!948 = !DILocation(line: 1025, column: 5, scope: !928)
!949 = !DILocation(line: 1041, column: 14, scope: !950)
!950 = distinct !DILexicalBlock(scope: !928, file: !3, line: 1041, column: 9)
!951 = !DILocation(line: 1041, column: 9, scope: !928)
!952 = !DILocation(line: 1043, column: 11, scope: !928)
!953 = !DILocation(line: 1044, column: 5, scope: !928)
!954 = !DILocation(line: 1049, column: 15, scope: !955)
!955 = distinct !DILexicalBlock(scope: !928, file: !3, line: 1049, column: 9)
!956 = !DILocation(line: 1049, column: 9, scope: !928)
!957 = !DILocation(line: 1051, column: 15, scope: !958)
!958 = distinct !DILexicalBlock(scope: !955, file: !3, line: 1050, column: 7)
!959 = !DILocation(line: 1052, column: 15, scope: !958)
!960 = !DILocation(line: 1053, column: 9, scope: !958)
!961 = !DILocation(line: 1060, column: 16, scope: !962)
!962 = distinct !DILexicalBlock(scope: !928, file: !3, line: 1060, column: 9)
!963 = !DILocation(line: 1060, column: 25, scope: !962)
!964 = !DILocation(line: 1060, column: 43, scope: !962)
!965 = !DILocation(line: 1060, column: 41, scope: !962)
!966 = !DILocation(line: 1060, column: 30, scope: !962)
!967 = !DILocation(line: 1060, column: 9, scope: !928)
!968 = !DILocation(line: 1063, column: 15, scope: !969)
!969 = distinct !DILexicalBlock(scope: !962, file: !3, line: 1061, column: 7)
!970 = !DILocation(line: 1064, column: 9, scope: !969)
!971 = !DILocation(line: 1073, column: 12, scope: !923)
!972 = !DILocation(line: 1073, column: 14, scope: !973)
!973 = distinct !DILexicalBlock(scope: !923, file: !3, line: 1073, column: 12)
!974 = !DILocation(line: 1074, column: 3, scope: !973)
!975 = !DILocation(line: 0, scope: !935)
!976 = !DILocation(line: 0, scope: !931)
!977 = !DILocation(line: 1080, column: 10, scope: !923)
!978 = !DILocation(line: 1080, column: 13, scope: !923)
!979 = !DILocation(line: 976, column: 30, scope: !924)
!980 = !DILocation(line: 976, column: 4, scope: !924)
!981 = distinct !{!981, !921, !982}
!982 = !DILocation(line: 1081, column: 6, scope: !920)
!983 = !DILocation(line: 705, column: 9, scope: !432)
!984 = !DILocation(line: 1090, column: 14, scope: !985)
!985 = distinct !DILexicalBlock(scope: !326, file: !3, line: 1090, column: 8)
!986 = !DILocation(line: 1090, column: 8, scope: !326)
!987 = !DILocation(line: 1092, column: 14, scope: !988)
!988 = distinct !DILexicalBlock(scope: !989, file: !3, line: 1092, column: 12)
!989 = distinct !DILexicalBlock(scope: !985, file: !3, line: 1091, column: 6)
!990 = !DILocation(line: 1092, column: 12, scope: !989)
!991 = !DILocation(line: 1093, column: 22, scope: !988)
!992 = !DILocation(line: 1093, column: 21, scope: !988)
!993 = !DILocation(line: 1093, column: 3, scope: !988)
!994 = !DILocation(line: 1096, column: 8, scope: !326)
!995 = !DILocation(line: 1097, column: 18, scope: !996)
!996 = distinct !DILexicalBlock(scope: !326, file: !3, line: 1097, column: 8)
!997 = !DILocation(line: 1100, column: 8, scope: !998)
!998 = distinct !DILexicalBlock(scope: !996, file: !3, line: 1098, column: 6)
!999 = !DILocation(line: 1101, column: 6, scope: !998)
!1000 = !DILocation(line: 0, scope: !920)
!1001 = !DILocation(line: 1102, column: 15, scope: !325)
!1002 = !DILocation(line: 1102, column: 27, scope: !325)
!1003 = !DILocation(line: 1102, column: 8, scope: !326)
!1004 = !DILocation(line: 1106, column: 11, scope: !324)
!1005 = !DILocation(line: 1107, column: 14, scope: !324)
!1006 = !{i64 (%struct._reent*, i32*, i32**, i32)* @_wcstol_r, i64 (%struct._reent*, i32*, i32**, i32)* @_wcstoul_r}
!1007 = !DILocation(line: 1104, column: 22, scope: !324)
!1008 = !DILocation(line: 1108, column: 18, scope: !333)
!1009 = !DILocation(line: 1108, column: 12, scope: !324)
!1010 = !DILocation(line: 1110, column: 17, scope: !332)
!1011 = !DILocation(line: 1110, column: 12, scope: !332)
!1012 = !DILocation(line: 1120, column: 13, scope: !332)
!1013 = !DILocation(line: 1120, column: 11, scope: !332)
!1014 = !{!378, !378, i64 0}
!1015 = !DILocation(line: 1121, column: 3, scope: !332)
!1016 = !DILocation(line: 1123, column: 23, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !333, file: !3, line: 1123, column: 17)
!1018 = !DILocation(line: 1123, column: 17, scope: !333)
!1019 = !DILocation(line: 1125, column: 10, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 1124, column: 3)
!1021 = !DILocation(line: 1126, column: 11, scope: !1020)
!1022 = !DILocation(line: 1126, column: 9, scope: !1020)
!1023 = !DILocation(line: 1127, column: 3, scope: !1020)
!1024 = !DILocation(line: 1129, column: 23, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 1129, column: 17)
!1026 = !DILocation(line: 1129, column: 17, scope: !1017)
!1027 = !DILocation(line: 1131, column: 10, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1025, file: !3, line: 1130, column: 3)
!1029 = !DILocation(line: 1132, column: 11, scope: !1028)
!1030 = !DILocation(line: 1132, column: 9, scope: !1028)
!1031 = !DILocation(line: 1133, column: 3, scope: !1028)
!1032 = !DILocation(line: 1134, column: 23, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1025, file: !3, line: 1134, column: 17)
!1034 = !DILocation(line: 0, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 1152, column: 3)
!1036 = !DILocation(line: 1134, column: 17, scope: !1025)
!1037 = !DILocation(line: 0, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 1135, column: 3)
!1039 = !DILocation(line: 1136, column: 10, scope: !1038)
!1040 = !DILocation(line: 1137, column: 9, scope: !1038)
!1041 = !DILocation(line: 1138, column: 3, scope: !1038)
!1042 = !DILocation(line: 1153, column: 10, scope: !1035)
!1043 = !DILocation(line: 1154, column: 11, scope: !1035)
!1044 = !DILocation(line: 1154, column: 9, scope: !1035)
!1045 = !DILocation(line: 1156, column: 17, scope: !324)
!1046 = !DILocation(line: 1157, column: 6, scope: !324)
!1047 = !DILocation(line: 1158, column: 15, scope: !326)
!1048 = !DILocation(line: 1158, column: 10, scope: !326)
!1049 = !DILocation(line: 1159, column: 4, scope: !326)
!1050 = !DILocation(line: 1169, column: 9, scope: !336)
!1051 = !DILocation(line: 1171, column: 13, scope: !336)
!1052 = !DILocation(line: 1172, column: 13, scope: !336)
!1053 = !DILocation(line: 1173, column: 9, scope: !336)
!1054 = !DILocation(line: 1174, column: 9, scope: !336)
!1055 = !DILocation(line: 1179, column: 14, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !336, file: !3, line: 1179, column: 8)
!1057 = !DILocation(line: 1179, column: 18, scope: !1056)
!1058 = !DILocation(line: 1179, column: 8, scope: !336)
!1059 = !DILocation(line: 1182, column: 21, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 1181, column: 6)
!1061 = !DILocation(line: 1184, column: 6, scope: !1060)
!1062 = !DILocation(line: 0, scope: !336)
!1063 = !DILocation(line: 1185, column: 10, scope: !336)
!1064 = !DILocation(line: 1170, column: 9, scope: !336)
!1065 = !DILocation(line: 1170, column: 17, scope: !336)
!1066 = !DILocation(line: 1188, column: 9, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !336, file: !3, line: 1188, column: 4)
!1068 = !DILocation(line: 1188, column: 4, scope: !1067)
!1069 = !DILocation(line: 1190, column: 12, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 1189, column: 6)
!1071 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 1188, column: 4)
!1072 = !DILocation(line: 1195, column: 8, scope: !1070)
!1073 = !DILocation(line: 1198, column: 15, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 1198, column: 9)
!1075 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 1196, column: 3)
!1076 = !DILocation(line: 1198, column: 9, scope: !1075)
!1077 = !DILocation(line: 1200, column: 15, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 1199, column: 7)
!1079 = !DILocation(line: 1201, column: 15, scope: !1078)
!1080 = !DILocation(line: 1202, column: 13, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 1202, column: 13)
!1082 = !DILocation(line: 1202, column: 13, scope: !1078)
!1083 = !DILocation(line: 1204, column: 16, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 1203, column: 4)
!1085 = !DILocation(line: 1205, column: 11, scope: !1084)
!1086 = !DILocation(line: 1206, column: 4, scope: !1084)
!1087 = !DILocation(line: 1219, column: 9, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 1219, column: 9)
!1089 = !DILocation(line: 1219, column: 20, scope: !1088)
!1090 = !DILocation(line: 1219, column: 29, scope: !1088)
!1091 = !DILocation(line: 1219, column: 9, scope: !1075)
!1092 = !DILocation(line: 1221, column: 15, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 1220, column: 7)
!1094 = !DILocation(line: 1222, column: 9, scope: !1093)
!1095 = !DILocation(line: 1228, column: 15, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 1228, column: 9)
!1097 = !DILocation(line: 1228, column: 9, scope: !1075)
!1098 = !DILocation(line: 1230, column: 15, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 1229, column: 7)
!1100 = !DILocation(line: 1231, column: 9, scope: !1099)
!1101 = !DILocation(line: 1236, column: 18, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 1236, column: 9)
!1103 = !DILocation(line: 1236, column: 33, scope: !1102)
!1104 = !DILocation(line: 1236, column: 23, scope: !1102)
!1105 = !DILocation(line: 1237, column: 19, scope: !1102)
!1106 = !DILocation(line: 1237, column: 48, scope: !1102)
!1107 = !DILocation(line: 1236, column: 9, scope: !1075)
!1108 = !DILocation(line: 1244, column: 9, scope: !1075)
!1109 = !DILocation(line: 1240, column: 15, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 1239, column: 7)
!1111 = !DILocation(line: 1242, column: 9, scope: !1110)
!1112 = !DILocation(line: 1244, column: 18, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 1244, column: 9)
!1114 = !DILocation(line: 1249, column: 18, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 1249, column: 9)
!1116 = !DILocation(line: 1249, column: 23, scope: !1115)
!1117 = !DILocation(line: 1249, column: 35, scope: !1115)
!1118 = !DILocation(line: 1249, column: 9, scope: !1075)
!1119 = !DILocation(line: 1251, column: 17, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1115, file: !3, line: 1250, column: 7)
!1121 = !DILocation(line: 1252, column: 9, scope: !1120)
!1122 = !DILocation(line: 1257, column: 18, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 1257, column: 9)
!1124 = !DILocation(line: 1257, column: 9, scope: !1075)
!1125 = !DILocation(line: 1264, column: 18, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 1264, column: 9)
!1127 = !DILocation(line: 1264, column: 33, scope: !1126)
!1128 = !DILocation(line: 1264, column: 23, scope: !1126)
!1129 = !DILocation(line: 1265, column: 19, scope: !1126)
!1130 = !DILocation(line: 1265, column: 48, scope: !1126)
!1131 = !DILocation(line: 1264, column: 9, scope: !1075)
!1132 = !DILocation(line: 1272, column: 23, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 1272, column: 9)
!1134 = !DILocation(line: 1272, column: 9, scope: !1075)
!1135 = !DILocation(line: 1268, column: 15, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1126, file: !3, line: 1267, column: 7)
!1137 = !DILocation(line: 1270, column: 9, scope: !1136)
!1138 = !DILocation(line: 1272, column: 18, scope: !1133)
!1139 = !DILocation(line: 1272, column: 35, scope: !1133)
!1140 = !DILocation(line: 1274, column: 17, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1133, file: !3, line: 1273, column: 7)
!1142 = !DILocation(line: 1275, column: 9, scope: !1141)
!1143 = !DILocation(line: 1280, column: 18, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 1280, column: 9)
!1145 = !DILocation(line: 1280, column: 9, scope: !1075)
!1146 = !DILocation(line: 1288, column: 18, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 1288, column: 9)
!1148 = !DILocation(line: 1288, column: 9, scope: !1075)
!1149 = !DILocation(line: 1296, column: 18, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 1296, column: 9)
!1151 = !DILocation(line: 1296, column: 9, scope: !1075)
!1152 = !DILocation(line: 1305, column: 16, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 1305, column: 9)
!1154 = !DILocation(line: 1305, column: 37, scope: !1153)
!1155 = !DILocation(line: 1306, column: 9, scope: !1153)
!1156 = !DILocation(line: 1306, column: 20, scope: !1153)
!1157 = !DILocation(line: 1306, column: 32, scope: !1153)
!1158 = !DILocation(line: 1306, column: 29, scope: !1153)
!1159 = !DILocation(line: 1308, column: 22, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1161, file: !3, line: 1308, column: 13)
!1161 = distinct !DILexicalBlock(scope: !1153, file: !3, line: 1307, column: 7)
!1162 = !DILocation(line: 1308, column: 13, scope: !1161)
!1163 = !DILocation(line: 1310, column: 26, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1160, file: !3, line: 1309, column: 4)
!1165 = !DILocation(line: 1312, column: 4, scope: !1164)
!1166 = !DILocation(line: 0, scope: !1164)
!1167 = !DILocation(line: 1314, column: 11, scope: !1161)
!1168 = !DILocation(line: 1315, column: 11, scope: !1161)
!1169 = !DILocation(line: 1317, column: 9, scope: !1161)
!1170 = !DILocation(line: 1321, column: 21, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 1321, column: 9)
!1172 = !DILocation(line: 1321, column: 30, scope: !1171)
!1173 = !DILocation(line: 1321, column: 40, scope: !1171)
!1174 = !DILocation(line: 1321, column: 9, scope: !1075)
!1175 = !DILocation(line: 1323, column: 15, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1171, file: !3, line: 1322, column: 7)
!1177 = !DILocation(line: 1325, column: 9, scope: !1176)
!1178 = !DILocation(line: 1329, column: 12, scope: !1070)
!1179 = !DILocation(line: 1329, column: 14, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 1329, column: 12)
!1181 = !DILocation(line: 1330, column: 3, scope: !1180)
!1182 = !DILocation(line: 0, scope: !1093)
!1183 = !DILocation(line: 1187, column: 15, scope: !336)
!1184 = !DILocation(line: 1333, column: 10, scope: !1070)
!1185 = !DILocation(line: 1333, column: 13, scope: !1070)
!1186 = !DILocation(line: 1333, column: 8, scope: !1070)
!1187 = !DILocation(line: 0, scope: !1070)
!1188 = !DILocation(line: 1335, column: 13, scope: !1070)
!1189 = !DILocation(line: 0, scope: !1078)
!1190 = !DILocation(line: 0, scope: !1060)
!1191 = !DILocation(line: 1336, column: 8, scope: !1070)
!1192 = !DILocation(line: 1188, column: 4, scope: !1071)
!1193 = distinct !{!1193, !1068, !1194}
!1194 = !DILocation(line: 1337, column: 6, scope: !1067)
!1195 = !DILocation(line: 1338, column: 8, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !336, file: !3, line: 1338, column: 8)
!1197 = !DILocation(line: 1338, column: 8, scope: !336)
!1198 = !DILocation(line: 1339, column: 12, scope: !1196)
!1199 = !DILocation(line: 1339, column: 6, scope: !1196)
!1200 = !DILocation(line: 1348, column: 8, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !336, file: !3, line: 1348, column: 8)
!1202 = !DILocation(line: 1348, column: 17, scope: !1201)
!1203 = !DILocation(line: 1348, column: 22, scope: !1201)
!1204 = !DILocation(line: 1348, column: 8, scope: !336)
!1205 = !DILocation(line: 1353, column: 17, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 1349, column: 6)
!1207 = !DILocation(line: 1353, column: 8, scope: !1206)
!1208 = !DILocation(line: 1355, column: 24, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1206, file: !3, line: 1354, column: 3)
!1210 = !DILocation(line: 1355, column: 23, scope: !1209)
!1211 = !DILocation(line: 1355, column: 5, scope: !1209)
!1212 = distinct !{!1212, !1207, !1213}
!1213 = !DILocation(line: 1357, column: 3, scope: !1206)
!1214 = !DILocation(line: 1363, column: 8, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !336, file: !3, line: 1363, column: 8)
!1216 = !DILocation(line: 1363, column: 17, scope: !1215)
!1217 = !DILocation(line: 1363, column: 22, scope: !1215)
!1218 = !DILocation(line: 1363, column: 8, scope: !336)
!1219 = !DILocation(line: 1365, column: 21, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 1365, column: 12)
!1221 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 1364, column: 6)
!1222 = !DILocation(line: 1365, column: 12, scope: !1221)
!1223 = !DILocation(line: 1366, column: 21, scope: !1220)
!1224 = !DILocation(line: 1366, column: 3, scope: !1220)
!1225 = !DILocation(line: 1366, column: 18, scope: !1220)
!1226 = !DILocation(line: 1373, column: 14, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 1372, column: 3)
!1228 = !DILocation(line: 1373, column: 5, scope: !1227)
!1229 = !DILocation(line: 1368, column: 26, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 1367, column: 5)
!1231 = !DILocation(line: 1368, column: 25, scope: !1230)
!1232 = !DILocation(line: 1368, column: 7, scope: !1230)
!1233 = distinct !{!1233, !1224, !1234}
!1234 = !DILocation(line: 1370, column: 5, scope: !1220)
!1235 = !DILocation(line: 1375, column: 28, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1227, file: !3, line: 1374, column: 7)
!1237 = !DILocation(line: 1375, column: 27, scope: !1236)
!1238 = !DILocation(line: 1375, column: 9, scope: !1236)
!1239 = distinct !{!1239, !1228, !1240}
!1240 = !DILocation(line: 1377, column: 7, scope: !1227)
!1241 = !DILocation(line: 1386, column: 14, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !336, file: !3, line: 1386, column: 8)
!1243 = !DILocation(line: 1386, column: 8, scope: !336)
!1244 = !DILocation(line: 1388, column: 18, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 1388, column: 12)
!1246 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 1387, column: 6)
!1247 = !DILocation(line: 1388, column: 12, scope: !1246)
!1248 = !DILocation(line: 1391, column: 14, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 1389, column: 3)
!1250 = !DILocation(line: 1391, column: 5, scope: !1249)
!1251 = !DILocation(line: 1393, column: 28, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 1392, column: 7)
!1253 = !DILocation(line: 1393, column: 27, scope: !1252)
!1254 = !DILocation(line: 1393, column: 9, scope: !1252)
!1255 = distinct !{!1255, !1250, !1256}
!1256 = !DILocation(line: 1395, column: 7, scope: !1249)
!1257 = !DILocation(line: 1399, column: 13, scope: !1246)
!1258 = !DILocation(line: 1399, column: 12, scope: !1246)
!1259 = !DILocation(line: 1400, column: 8, scope: !1246)
!1260 = !DILocation(line: 1401, column: 22, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 1401, column: 12)
!1262 = !DILocation(line: 1403, column: 5, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 1402, column: 3)
!1264 = !DILocation(line: 1404, column: 10, scope: !1263)
!1265 = !DILocation(line: 1404, column: 9, scope: !1263)
!1266 = !DILocation(line: 1405, column: 5, scope: !1263)
!1267 = !DILocation(line: 1406, column: 3, scope: !1263)
!1268 = !DILocation(line: 0, scope: !1246)
!1269 = !DILocation(line: 1407, column: 8, scope: !1246)
!1270 = !DILocation(line: 1408, column: 6, scope: !1246)
!1271 = !DILocation(line: 0, scope: !1067)
!1272 = !DILocation(line: 1409, column: 15, scope: !345)
!1273 = !DILocation(line: 1409, column: 27, scope: !345)
!1274 = !DILocation(line: 1409, column: 8, scope: !336)
!1275 = !DILocation(line: 1411, column: 15, scope: !344)
!1276 = !DILocation(line: 1418, column: 13, scope: !344)
!1277 = !DILocation(line: 1420, column: 11, scope: !344)
!1278 = !DILocation(line: 1421, column: 19, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !344, file: !3, line: 1421, column: 12)
!1280 = !DILocation(line: 1421, column: 38, scope: !1279)
!1281 = !DILocation(line: 1421, column: 12, scope: !344)
!1282 = !DILocation(line: 1427, column: 17, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1279, file: !3, line: 1427, column: 17)
!1284 = !DILocation(line: 1427, column: 17, scope: !1279)
!1285 = !DILocation(line: 1428, column: 55, scope: !1283)
!1286 = !DILocation(line: 1428, column: 27, scope: !1283)
!1287 = !DILocation(line: 1428, column: 71, scope: !1283)
!1288 = !DILocation(line: 1428, column: 17, scope: !1283)
!1289 = !DILocation(line: 1429, column: 12, scope: !344)
!1290 = !DILocation(line: 1423, column: 25, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1279, file: !3, line: 1422, column: 3)
!1292 = !DILocation(line: 1424, column: 15, scope: !1291)
!1293 = !DILocation(line: 1426, column: 3, scope: !1291)
!1294 = !DILocation(line: 1429, column: 12, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !344, file: !3, line: 1429, column: 12)
!1296 = !DILocation(line: 1434, column: 19, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1298, file: !3, line: 1434, column: 9)
!1298 = distinct !DILexicalBlock(scope: !1295, file: !3, line: 1430, column: 3)
!1299 = !DILocation(line: 1434, column: 9, scope: !1298)
!1300 = !DILocation(line: 1436, column: 7, scope: !1297)
!1301 = !DILocation(line: 0, scope: !1291)
!1302 = !DILocation(line: 1438, column: 18, scope: !1298)
!1303 = !DILocation(line: 1439, column: 3, scope: !1298)
!1304 = !DILocation(line: 0, scope: !1298)
!1305 = !DILocation(line: 1447, column: 16, scope: !344)
!1306 = !DILocation(line: 1449, column: 18, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !344, file: !3, line: 1449, column: 12)
!1308 = !DILocation(line: 1449, column: 12, scope: !344)
!1309 = !DILocation(line: 1451, column: 10, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 1450, column: 3)
!1311 = !DILocation(line: 420, column: 11, scope: !2)
!1312 = !DILocation(line: 1452, column: 9, scope: !1310)
!1313 = !{!1314, !1314, i64 0}
!1314 = !{!"double", !376, i64 0}
!1315 = !DILocation(line: 1453, column: 3, scope: !1310)
!1316 = !DILocation(line: 1454, column: 23, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 1454, column: 17)
!1318 = !DILocation(line: 0, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1317, file: !3, line: 1460, column: 3)
!1320 = !DILocation(line: 1454, column: 17, scope: !1307)
!1321 = !DILocation(line: 0, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1317, file: !3, line: 1455, column: 3)
!1323 = !DILocation(line: 1456, column: 11, scope: !1322)
!1324 = !DILocation(line: 419, column: 17, scope: !2)
!1325 = !DILocation(line: 1457, column: 12, scope: !1322)
!1326 = !DILocation(line: 1457, column: 10, scope: !1322)
!1327 = !{!1328, !1328, i64 0}
!1328 = !{!"long double", !376, i64 0}
!1329 = !DILocation(line: 1458, column: 3, scope: !1322)
!1330 = !DILocation(line: 1461, column: 11, scope: !1319)
!1331 = !DILocation(line: 418, column: 10, scope: !2)
!1332 = !DILocation(line: 1462, column: 9, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1319, file: !3, line: 1462, column: 9)
!1334 = !DILocation(line: 1462, column: 9, scope: !1319)
!1335 = !DILocation(line: 1463, column: 14, scope: !1333)
!1336 = !DILocation(line: 1463, column: 12, scope: !1333)
!1337 = !{!1338, !1338, i64 0}
!1338 = !{!"float", !376, i64 0}
!1339 = !DILocation(line: 1463, column: 7, scope: !1333)
!1340 = !DILocation(line: 1465, column: 14, scope: !1333)
!1341 = !DILocation(line: 1465, column: 12, scope: !1333)
!1342 = !DILocation(line: 1467, column: 17, scope: !344)
!1343 = !DILocation(line: 1468, column: 6, scope: !344)
!1344 = !DILocation(line: 0, scope: !1227)
!1345 = !DILocation(line: 1469, column: 4, scope: !336)
!1346 = !DILocation(line: 0, scope: !327)
!1347 = !DILocation(line: 1479, column: 3, scope: !322)
!1348 = !DILocation(line: 1480, column: 10, scope: !322)
!1349 = !DILocation(line: 1480, column: 20, scope: !322)
!1350 = !DILocation(line: 1480, column: 29, scope: !322)
!1351 = !{!1352, !553, i64 16}
!1352 = !{!"__sFILE", !378, i64 0, !375, i64 8, !375, i64 12, !553, i64 16, !553, i64 18, !1353, i64 24, !375, i64 40, !378, i64 48, !378, i64 56, !378, i64 64, !378, i64 72, !378, i64 80, !1353, i64 88, !378, i64 104, !375, i64 112, !376, i64 116, !376, i64 119, !1353, i64 120, !375, i64 136, !566, i64 144, !378, i64 152, !375, i64 160, !1354, i64 164, !375, i64 172}
!1353 = !{!"__sbuf", !378, i64 0, !375, i64 8}
!1354 = !{!"", !375, i64 0, !376, i64 4}
!1355 = !DILocation(line: 1480, column: 36, scope: !322)
!1356 = !DILocation(line: 1484, column: 3, scope: !2)
!1357 = !DILocation(line: 1484, column: 3, scope: !322)
!1358 = !DILocation(line: 1485, column: 3, scope: !2)
!1359 = !DILocation(line: 1486, column: 1, scope: !2)
!1360 = distinct !DISubprogram(name: "__svfwscanf", scope: !3, file: !3, line: 274, type: !1361, isLocal: false, isDefinition: true, scopeLine: 278, flags: DIFlagPrototyped, isOptimized: true, unit: !239, retainedNodes: !1363)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{!6, !226, !229, !232}
!1363 = !{!1364, !1365, !1366}
!1364 = !DILocalVariable(name: "fp", arg: 1, scope: !1360, file: !3, line: 274, type: !226)
!1365 = !DILocalVariable(name: "fmt0", arg: 2, scope: !1360, file: !3, line: 274, type: !229)
!1366 = !DILocalVariable(name: "ap", arg: 3, scope: !1360, file: !3, line: 274, type: !232)
!1367 = !DILocation(line: 274, column: 1, scope: !1360)
!1368 = !DILocation(line: 279, column: 25, scope: !1360)
!1369 = !DILocation(line: 279, column: 10, scope: !1360)
!1370 = !DILocation(line: 279, column: 3, scope: !1360)
!1371 = distinct !DISubprogram(name: "_vfwscanf_r", scope: !3, file: !3, line: 285, type: !4, isLocal: false, isDefinition: true, scopeLine: 290, flags: DIFlagPrototyped, isOptimized: true, unit: !239, retainedNodes: !1372)
!1372 = !{!1373, !1374, !1375, !1376, !1377}
!1373 = !DILocalVariable(name: "data", arg: 1, scope: !1371, file: !3, line: 285, type: !7)
!1374 = !DILocalVariable(name: "fp", arg: 2, scope: !1371, file: !3, line: 285, type: !226)
!1375 = !DILocalVariable(name: "fmt", arg: 3, scope: !1371, file: !3, line: 285, type: !229)
!1376 = !DILocalVariable(name: "ap", arg: 4, scope: !1371, file: !3, line: 285, type: !232)
!1377 = !DILocalVariable(name: "_check_init_ptr", scope: !1378, file: !3, line: 291, type: !7)
!1378 = distinct !DILexicalBlock(scope: !1371, file: !3, line: 291, column: 3)
!1379 = !DILocation(line: 285, column: 1, scope: !1371)
!1380 = !DILocation(line: 291, column: 3, scope: !1378)
!1381 = !DILocation(line: 291, column: 3, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1378, file: !3, line: 291, column: 3)
!1383 = !DILocation(line: 292, column: 10, scope: !1371)
!1384 = !DILocation(line: 292, column: 3, scope: !1371)
