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
  br i1 %5, label %11, label %6, !dbg !371

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct._reent, %struct._reent* %4, i64 0, i32 8, !dbg !371
  %8 = load i32, i32* %7, align 8, !dbg !371, !tbaa !373
  %9 = icmp eq i32 %8, 0, !dbg !371
  br i1 %9, label %10, label %11, !dbg !370

; <label>:10:                                     ; preds = %6
  tail call void @__sinit(%struct._reent* nonnull %4) #4, !dbg !371
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
  %19 = load i32, i32* %2, align 4, !dbg !409, !tbaa !410
  %20 = icmp eq i32 %19, 0, !dbg !412
  br i1 %20, label %1205, label %21, !dbg !414

; <label>:21:                                     ; preds = %4
  %22 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %3, i64 0, i32 0
  %23 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %3, i64 0, i32 3
  %24 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %3, i64 0, i32 2
  %25 = getelementptr inbounds [350 x i32], [350 x i32]* %6, i64 0, i64 0
  %26 = getelementptr inbounds [350 x i32], [350 x i32]* %6, i64 0, i64 1
  %27 = ptrtoint [350 x i32]* %6 to i64
  %28 = getelementptr inbounds [350 x i32], [350 x i32]* %6, i64 0, i64 329
  %29 = getelementptr inbounds [350 x i32], [350 x i32]* %6, i64 0, i64 328
  br label %30, !dbg !414

; <label>:30:                                     ; preds = %21, %1185
  %31 = phi i32 [ %19, %21 ], [ %1191, %1185 ]
  %32 = phi i32* [ %2, %21 ], [ %235, %1185 ]
  %33 = phi i32* [ null, %21 ], [ %1190, %1185 ]
  %34 = phi i8* [ null, %21 ], [ %1189, %1185 ]
  %35 = phi i32 [ 0, %21 ], [ %233, %1185 ]
  %36 = phi i32* [ null, %21 ], [ %232, %1185 ]
  %37 = phi i32* [ null, %21 ], [ %231, %1185 ]
  %38 = phi i64 (%struct._reent*, i32*, i32**, i32)* [ null, %21 ], [ %230, %1185 ]
  %39 = phi i32 [ 0, %21 ], [ %1188, %1185 ]
  %40 = phi i32 [ 0, %21 ], [ %1187, %1185 ]
  %41 = phi i32 [ 0, %21 ], [ %1186, %1185 ]
  %42 = sext i32 %40 to i64, !dbg !414
  br label %43, !dbg !414

; <label>:43:                                     ; preds = %30, %85
  %44 = phi i64 [ %42, %30 ], [ %86, %85 ]
  %45 = phi i32 [ %31, %30 ], [ %87, %85 ]
  %46 = phi i32* [ %32, %30 ], [ %78, %85 ]
  %47 = trunc i64 %44 to i32
  %48 = trunc i64 %44 to i8
  %49 = trunc i64 %44 to i16
  br label %50, !dbg !414

; <label>:50:                                     ; preds = %43, %64
  %51 = phi i32 [ %45, %43 ], [ %66, %64 ]
  %52 = phi i32* [ %46, %43 ], [ %65, %64 ]
  %53 = getelementptr inbounds i32, i32* %52, i64 1, !dbg !415
  %54 = call i32 @iswspace(i32 %51) #4, !dbg !416
  %55 = icmp eq i32 %54, 0, !dbg !416
  br i1 %55, label %68, label %56, !dbg !418

; <label>:56:                                     ; preds = %50, %59
  %57 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !419
  %58 = icmp eq i32 %57, -1, !dbg !421
  br i1 %58, label %64, label %59, !dbg !422

; <label>:59:                                     ; preds = %56
  %60 = call i32 @iswspace(i32 %57) #4, !dbg !423
  %61 = icmp eq i32 %60, 0, !dbg !422
  br i1 %61, label %62, label %56, !dbg !424, !llvm.loop !425

; <label>:62:                                     ; preds = %59
  %63 = call i32 @_ungetwc_r(%struct._reent* %0, i32 %57, %struct.__sFILE* %1) #4, !dbg !427
  br label %64, !dbg !427

; <label>:64:                                     ; preds = %56, %167, %203, %216, %185, %62, %150
  %65 = phi i32* [ %74, %150 ], [ %53, %62 ], [ %74, %185 ], [ %74, %216 ], [ %74, %203 ], [ %74, %167 ], [ %53, %56 ]
  %66 = load i32, i32* %65, align 4, !dbg !409, !tbaa !410
  %67 = icmp eq i32 %66, 0, !dbg !412
  br i1 %67, label %1205, label %50, !dbg !414, !llvm.loop !429

; <label>:68:                                     ; preds = %50
  %69 = icmp eq i32 %51, 37, !dbg !432
  br i1 %69, label %70, label %76, !dbg !434

; <label>:70:                                     ; preds = %68, %91
  %71 = phi i32 [ %92, %91 ], [ 0, %68 ], !dbg !435
  %72 = phi i64 [ %93, %91 ], [ 0, %68 ], !dbg !437
  %73 = phi i32* [ %94, %91 ], [ %53, %68 ], !dbg !437
  %74 = getelementptr inbounds i32, i32* %73, i64 1, !dbg !440
  %75 = load i32, i32* %73, align 4, !dbg !441, !tbaa !410
  switch i32 %75, label %1205 [
    i32 37, label %76
    i32 42, label %89
    i32 108, label %95
    i32 76, label %102
    i32 104, label %104
    i32 106, label %111
    i32 116, label %113
    i32 122, label %115
    i32 48, label %117
    i32 49, label %117
    i32 50, label %117
    i32 51, label %117
    i32 52, label %117
    i32 53, label %117
    i32 54, label %117
    i32 55, label %117
    i32 56, label %117
    i32 57, label %117
    i32 100, label %223
    i32 105, label %224
    i32 111, label %225
    i32 117, label %226
    i32 88, label %122
    i32 120, label %122
    i32 65, label %227
    i32 97, label %227
    i32 70, label %227
    i32 69, label %227
    i32 71, label %227
    i32 101, label %227
    i32 102, label %227
    i32 103, label %227
    i32 83, label %124
    i32 115, label %126
    i32 91, label %127
    i32 67, label %143
    i32 99, label %145
    i32 112, label %148
    i32 110, label %150
    i32 0, label %220
  ], !dbg !442

; <label>:76:                                     ; preds = %68, %70
  %77 = phi i32 [ %75, %70 ], [ %51, %68 ], !dbg !437
  %78 = phi i32* [ %74, %70 ], [ %53, %68 ], !dbg !437
  %79 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !443
  %80 = icmp eq i32 %79, -1, !dbg !446
  br i1 %80, label %1193, label %81, !dbg !447

; <label>:81:                                     ; preds = %76
  %82 = icmp eq i32 %79, %77, !dbg !448
  br i1 %82, label %85, label %83, !dbg !450

; <label>:83:                                     ; preds = %81
  %84 = call i32 @_ungetwc_r(%struct._reent* %0, i32 %79, %struct.__sFILE* %1) #4, !dbg !451
  br label %1193, !dbg !453

; <label>:85:                                     ; preds = %81
  %86 = add i64 %44, 1, !dbg !454
  %87 = load i32, i32* %78, align 4, !dbg !409, !tbaa !410
  %88 = icmp eq i32 %87, 0, !dbg !412
  br i1 %88, label %1205, label %43, !dbg !414, !llvm.loop !429

; <label>:89:                                     ; preds = %70
  %90 = or i32 %71, 16, !dbg !455
  br label %91, !dbg !456

; <label>:91:                                     ; preds = %89, %95, %102, %104, %111, %113, %115, %117
  %92 = phi i32 [ %71, %117 ], [ %116, %115 ], [ %114, %113 ], [ %112, %111 ], [ %109, %104 ], [ %103, %102 ], [ %100, %95 ], [ %90, %89 ]
  %93 = phi i64 [ %121, %117 ], [ %72, %115 ], [ %72, %113 ], [ %72, %111 ], [ %72, %104 ], [ %72, %102 ], [ %72, %95 ], [ %72, %89 ]
  %94 = phi i32* [ %74, %117 ], [ %74, %115 ], [ %74, %113 ], [ %74, %111 ], [ %110, %104 ], [ %74, %102 ], [ %101, %95 ], [ %74, %89 ]
  br label %70, !dbg !385

; <label>:95:                                     ; preds = %70
  %96 = load i32, i32* %74, align 4, !dbg !457, !tbaa !410
  %97 = icmp eq i32 %96, 108, !dbg !459
  %98 = getelementptr inbounds i32, i32* %73, i64 2, !dbg !460
  %99 = select i1 %97, i32 2, i32 1, !dbg !462
  %100 = or i32 %99, %71, !dbg !462
  %101 = select i1 %97, i32* %98, i32* %74, !dbg !462
  br label %91, !dbg !463

; <label>:102:                                    ; preds = %70
  %103 = or i32 %71, 2, !dbg !464
  br label %91, !dbg !465

; <label>:104:                                    ; preds = %70
  %105 = load i32, i32* %74, align 4, !dbg !466, !tbaa !410
  %106 = icmp eq i32 %105, 104, !dbg !468
  %107 = getelementptr inbounds i32, i32* %73, i64 2, !dbg !469
  %108 = select i1 %106, i32 8, i32 4, !dbg !471
  %109 = or i32 %108, %71, !dbg !471
  %110 = select i1 %106, i32* %107, i32* %74, !dbg !471
  br label %91, !dbg !472

; <label>:111:                                    ; preds = %70
  %112 = or i32 %71, 1, !dbg !473
  br label %91, !dbg !475

; <label>:113:                                    ; preds = %70
  %114 = or i32 %71, 1, !dbg !476
  br label %91, !dbg !480

; <label>:115:                                    ; preds = %70
  %116 = or i32 %71, 1, !dbg !481
  br label %91, !dbg !485

; <label>:117:                                    ; preds = %70, %70, %70, %70, %70, %70, %70, %70, %70, %70
  %118 = mul i64 %72, 10, !dbg !486
  %119 = zext i32 %75 to i64, !dbg !487
  %120 = add i64 %118, -48, !dbg !488
  %121 = add i64 %120, %119, !dbg !489
  br label %91, !dbg !490

; <label>:122:                                    ; preds = %70, %70
  %123 = or i32 %71, 512, !dbg !491
  br label %227, !dbg !492

; <label>:124:                                    ; preds = %70
  %125 = or i32 %71, 1, !dbg !493
  br label %227, !dbg !494

; <label>:126:                                    ; preds = %70
  br label %227, !dbg !495

; <label>:127:                                    ; preds = %70
  %128 = load i32, i32* %74, align 4, !dbg !496, !tbaa !410
  %129 = icmp eq i32 %128, 94, !dbg !498
  %130 = getelementptr inbounds i32, i32* %73, i64 2, !dbg !499
  %131 = zext i1 %129 to i32, !dbg !501
  %132 = select i1 %129, i32* %130, i32* %74, !dbg !501
  %133 = load i32, i32* %132, align 4, !dbg !502, !tbaa !410
  %134 = icmp eq i32 %133, 93, !dbg !504
  %135 = getelementptr inbounds i32, i32* %132, i64 1, !dbg !505
  %136 = select i1 %134, i32* %135, i32* %132, !dbg !506
  br label %137, !dbg !507

; <label>:137:                                    ; preds = %137, %127
  %138 = phi i32* [ %136, %127 ], [ %140, %137 ], !dbg !435
  %139 = load i32, i32* %138, align 4, !dbg !508, !tbaa !410
  %140 = getelementptr inbounds i32, i32* %138, i64 1, !dbg !435
  switch i32 %139, label %137 [
    i32 93, label %141
    i32 0, label %141
  ], !dbg !507

; <label>:141:                                    ; preds = %137, %137
  %142 = or i32 %71, 64, !dbg !509
  br label %227, !dbg !510

; <label>:143:                                    ; preds = %70
  %144 = or i32 %71, 1, !dbg !511
  br label %145, !dbg !512

; <label>:145:                                    ; preds = %70, %143
  %146 = phi i32 [ %144, %143 ], [ %71, %70 ], !dbg !435
  %147 = or i32 %146, 64, !dbg !513
  br label %227, !dbg !514

; <label>:148:                                    ; preds = %70
  %149 = or i32 %71, 544, !dbg !515
  br label %227, !dbg !516

; <label>:150:                                    ; preds = %70
  %151 = and i32 %71, 16, !dbg !517
  %152 = icmp eq i32 %151, 0, !dbg !517
  br i1 %152, label %153, label %64, !dbg !519

; <label>:153:                                    ; preds = %150
  %154 = and i32 %71, 8, !dbg !520
  %155 = icmp eq i32 %154, 0, !dbg !520
  br i1 %155, label %171, label %156, !dbg !522

; <label>:156:                                    ; preds = %153
  %157 = load i32, i32* %22, align 8, !dbg !523
  %158 = icmp ult i32 %157, 41, !dbg !523
  br i1 %158, label %159, label %164, !dbg !523

; <label>:159:                                    ; preds = %156
  %160 = load i8*, i8** %23, align 8, !dbg !523
  %161 = sext i32 %157 to i64, !dbg !523
  %162 = getelementptr i8, i8* %160, i64 %161, !dbg !523
  %163 = add i32 %157, 8, !dbg !523
  store i32 %163, i32* %22, align 8, !dbg !523
  br label %167, !dbg !523

; <label>:164:                                    ; preds = %156
  %165 = load i8*, i8** %24, align 8, !dbg !523
  %166 = getelementptr i8, i8* %165, i64 8, !dbg !523
  store i8* %166, i8** %24, align 8, !dbg !523
  br label %167, !dbg !523

; <label>:167:                                    ; preds = %164, %159
  %168 = phi i8* [ %162, %159 ], [ %165, %164 ]
  %169 = bitcast i8* %168 to i8**, !dbg !523
  %170 = load i8*, i8** %169, align 8, !dbg !523
  store i8 %48, i8* %170, align 1, !dbg !526, !tbaa !401
  br label %64, !dbg !527

; <label>:171:                                    ; preds = %153
  %172 = and i32 %71, 4, !dbg !528
  %173 = icmp eq i32 %172, 0, !dbg !528
  br i1 %173, label %189, label %174, !dbg !530

; <label>:174:                                    ; preds = %171
  %175 = load i32, i32* %22, align 8, !dbg !531
  %176 = icmp ult i32 %175, 41, !dbg !531
  br i1 %176, label %177, label %182, !dbg !531

; <label>:177:                                    ; preds = %174
  %178 = load i8*, i8** %23, align 8, !dbg !531
  %179 = sext i32 %175 to i64, !dbg !531
  %180 = getelementptr i8, i8* %178, i64 %179, !dbg !531
  %181 = add i32 %175, 8, !dbg !531
  store i32 %181, i32* %22, align 8, !dbg !531
  br label %185, !dbg !531

; <label>:182:                                    ; preds = %174
  %183 = load i8*, i8** %24, align 8, !dbg !531
  %184 = getelementptr i8, i8* %183, i64 8, !dbg !531
  store i8* %184, i8** %24, align 8, !dbg !531
  br label %185, !dbg !531

; <label>:185:                                    ; preds = %182, %177
  %186 = phi i8* [ %180, %177 ], [ %183, %182 ]
  %187 = bitcast i8* %186 to i16**, !dbg !531
  %188 = load i16*, i16** %187, align 8, !dbg !531
  store i16 %49, i16* %188, align 2, !dbg !534, !tbaa !535
  br label %64, !dbg !537

; <label>:189:                                    ; preds = %171
  %190 = and i32 %71, 1, !dbg !538
  %191 = icmp eq i32 %190, 0, !dbg !538
  %192 = load i32, i32* %22, align 8, !dbg !540
  %193 = icmp ult i32 %192, 41, !dbg !540
  br i1 %191, label %207, label %194, !dbg !542

; <label>:194:                                    ; preds = %189
  br i1 %193, label %195, label %200, !dbg !543

; <label>:195:                                    ; preds = %194
  %196 = load i8*, i8** %23, align 8, !dbg !543
  %197 = sext i32 %192 to i64, !dbg !543
  %198 = getelementptr i8, i8* %196, i64 %197, !dbg !543
  %199 = add i32 %192, 8, !dbg !543
  store i32 %199, i32* %22, align 8, !dbg !543
  br label %203, !dbg !543

; <label>:200:                                    ; preds = %194
  %201 = load i8*, i8** %24, align 8, !dbg !543
  %202 = getelementptr i8, i8* %201, i64 8, !dbg !543
  store i8* %202, i8** %24, align 8, !dbg !543
  br label %203, !dbg !543

; <label>:203:                                    ; preds = %200, %195
  %204 = phi i8* [ %198, %195 ], [ %201, %200 ]
  %205 = bitcast i8* %204 to i64**, !dbg !543
  %206 = load i64*, i64** %205, align 8, !dbg !543
  store i64 %44, i64* %206, align 8, !dbg !546, !tbaa !547
  br label %64, !dbg !549

; <label>:207:                                    ; preds = %189
  br i1 %193, label %208, label %213, !dbg !550

; <label>:208:                                    ; preds = %207
  %209 = load i8*, i8** %23, align 8, !dbg !550
  %210 = sext i32 %192 to i64, !dbg !550
  %211 = getelementptr i8, i8* %209, i64 %210, !dbg !550
  %212 = add i32 %192, 8, !dbg !550
  store i32 %212, i32* %22, align 8, !dbg !550
  br label %216, !dbg !550

; <label>:213:                                    ; preds = %207
  %214 = load i8*, i8** %24, align 8, !dbg !550
  %215 = getelementptr i8, i8* %214, i64 8, !dbg !550
  store i8* %215, i8** %24, align 8, !dbg !550
  br label %216, !dbg !550

; <label>:216:                                    ; preds = %213, %208
  %217 = phi i8* [ %211, %208 ], [ %214, %213 ]
  %218 = bitcast i8* %217 to i32**, !dbg !550
  %219 = load i32*, i32** %218, align 8, !dbg !550
  store i32 %47, i32* %219, align 4, !dbg !552, !tbaa !410
  br label %64

; <label>:220:                                    ; preds = %70
  %221 = load i32, i32* %8, align 4, !dbg !553, !tbaa !410
  %222 = call i32 @pthread_setcancelstate(i32 %221, i32* nonnull %8) #4, !dbg !553
  br label %1203, !dbg !554

; <label>:223:                                    ; preds = %70
  br label %227, !dbg !555

; <label>:224:                                    ; preds = %70
  br label %227, !dbg !555

; <label>:225:                                    ; preds = %70
  br label %227, !dbg !555

; <label>:226:                                    ; preds = %70
  br label %227

; <label>:227:                                    ; preds = %70, %70, %70, %70, %70, %70, %70, %70, %226, %124, %126, %225, %224, %223, %148, %145, %141, %122
  %228 = phi i32 [ %149, %148 ], [ %147, %145 ], [ %142, %141 ], [ %123, %122 ], [ %71, %223 ], [ %71, %224 ], [ %71, %225 ], [ %125, %124 ], [ %71, %126 ], [ %71, %226 ], [ %71, %70 ], [ %71, %70 ], [ %71, %70 ], [ %71, %70 ], [ %71, %70 ], [ %71, %70 ], [ %71, %70 ], [ %71, %70 ], !dbg !437
  %229 = phi i32 [ 16, %148 ], [ %39, %145 ], [ %39, %141 ], [ 16, %122 ], [ 10, %223 ], [ 0, %224 ], [ 8, %225 ], [ %39, %124 ], [ %39, %126 ], [ 10, %226 ], [ %39, %70 ], [ %39, %70 ], [ %39, %70 ], [ %39, %70 ], [ %39, %70 ], [ %39, %70 ], [ %39, %70 ], [ %39, %70 ], !dbg !435
  %230 = phi i64 (%struct._reent*, i32*, i32**, i32)* [ @_wcstoul_r, %148 ], [ %38, %145 ], [ %38, %141 ], [ @_wcstoul_r, %122 ], [ @_wcstol_r, %223 ], [ @_wcstol_r, %224 ], [ @_wcstoul_r, %225 ], [ %38, %124 ], [ %38, %126 ], [ @_wcstoul_r, %226 ], [ %38, %70 ], [ %38, %70 ], [ %38, %70 ], [ %38, %70 ], [ %38, %70 ], [ %38, %70 ], [ %38, %70 ], [ %38, %70 ], !dbg !435
  %231 = phi i32* [ %37, %148 ], [ %37, %145 ], [ %74, %141 ], [ %37, %122 ], [ %37, %223 ], [ %37, %224 ], [ %37, %225 ], [ %37, %124 ], [ %37, %126 ], [ %37, %226 ], [ %37, %70 ], [ %37, %70 ], [ %37, %70 ], [ %37, %70 ], [ %37, %70 ], [ %37, %70 ], [ %37, %70 ], [ %37, %70 ], !dbg !557
  %232 = phi i32* [ %36, %148 ], [ %36, %145 ], [ %138, %141 ], [ %36, %122 ], [ %36, %223 ], [ %36, %224 ], [ %36, %225 ], [ %36, %124 ], [ %36, %126 ], [ %36, %226 ], [ %36, %70 ], [ %36, %70 ], [ %36, %70 ], [ %36, %70 ], [ %36, %70 ], [ %36, %70 ], [ %36, %70 ], [ %36, %70 ], !dbg !557
  %233 = phi i32 [ %35, %148 ], [ %35, %145 ], [ %131, %141 ], [ %35, %122 ], [ %35, %223 ], [ %35, %224 ], [ %35, %225 ], [ %35, %124 ], [ %35, %126 ], [ %35, %226 ], [ %35, %70 ], [ %35, %70 ], [ %35, %70 ], [ %35, %70 ], [ %35, %70 ], [ %35, %70 ], [ %35, %70 ], [ %35, %70 ], !dbg !558
  %234 = phi i3 [ 3, %148 ], [ 0, %145 ], [ 1, %141 ], [ 3, %122 ], [ 3, %223 ], [ 3, %224 ], [ 3, %225 ], [ 2, %124 ], [ 2, %126 ], [ 3, %226 ], [ -4, %70 ], [ -4, %70 ], [ -4, %70 ], [ -4, %70 ], [ -4, %70 ], [ -4, %70 ], [ -4, %70 ], [ -4, %70 ]
  %235 = phi i32* [ %74, %148 ], [ %74, %145 ], [ %140, %141 ], [ %74, %122 ], [ %74, %223 ], [ %74, %224 ], [ %74, %225 ], [ %74, %124 ], [ %74, %126 ], [ %74, %226 ], [ %74, %70 ], [ %74, %70 ], [ %74, %70 ], [ %74, %70 ], [ %74, %70 ], [ %74, %70 ], [ %74, %70 ], [ %74, %70 ], !dbg !437
  %236 = trunc i64 %44 to i32
  %237 = and i32 %228, 64, !dbg !555
  %238 = icmp eq i32 %237, 0, !dbg !559
  br i1 %238, label %239, label %253, !dbg !560

; <label>:239:                                    ; preds = %227
  %240 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !561
  %241 = icmp eq i32 %240, -1, !dbg !563
  br i1 %241, label %1193, label %242, !dbg !563

; <label>:242:                                    ; preds = %239, %247
  %243 = phi i32 [ %249, %247 ], [ %240, %239 ]
  %244 = phi i32 [ %248, %247 ], [ %236, %239 ]
  %245 = call i32 @iswspace(i32 %243) #4, !dbg !564
  %246 = icmp eq i32 %245, 0, !dbg !563
  br i1 %246, label %251, label %247, !dbg !565

; <label>:247:                                    ; preds = %242
  %248 = add nsw i32 %244, 1, !dbg !566
  %249 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !561
  %250 = icmp eq i32 %249, -1, !dbg !563
  br i1 %250, label %1193, label %242, !dbg !563, !llvm.loop !567

; <label>:251:                                    ; preds = %242
  %252 = call i32 @_ungetwc_r(%struct._reent* %0, i32 %243, %struct.__sFILE* %1) #4, !dbg !568
  br label %253, !dbg !569

; <label>:253:                                    ; preds = %251, %227
  %254 = phi i32 [ %244, %251 ], [ %236, %227 ], !dbg !570
  switch i3 %234, label %1185 [
    i3 0, label %255
    i3 1, label %362
    i3 2, label %525
    i3 3, label %662
    i3 -4, label %857
  ], !dbg !571

; <label>:255:                                    ; preds = %253
  %256 = icmp eq i64 %72, 0, !dbg !572
  %257 = select i1 %256, i64 1, i64 %72, !dbg !574
  %258 = and i32 %228, 1, !dbg !575
  %259 = icmp eq i32 %258, 0, !dbg !575
  %260 = and i32 %228, 16, !dbg !577
  %261 = icmp ne i32 %260, 0, !dbg !577
  br i1 %259, label %303, label %262, !dbg !580

; <label>:262:                                    ; preds = %255
  br i1 %261, label %278, label %263, !dbg !581

; <label>:263:                                    ; preds = %262
  %264 = load i32, i32* %22, align 8, !dbg !583
  %265 = icmp ult i32 %264, 41, !dbg !583
  br i1 %265, label %266, label %271, !dbg !583

; <label>:266:                                    ; preds = %263
  %267 = load i8*, i8** %23, align 8, !dbg !583
  %268 = sext i32 %264 to i64, !dbg !583
  %269 = getelementptr i8, i8* %267, i64 %268, !dbg !583
  %270 = add i32 %264, 8, !dbg !583
  store i32 %270, i32* %22, align 8, !dbg !583
  br label %274, !dbg !583

; <label>:271:                                    ; preds = %263
  %272 = load i8*, i8** %24, align 8, !dbg !583
  %273 = getelementptr i8, i8* %272, i64 8, !dbg !583
  store i8* %273, i8** %24, align 8, !dbg !583
  br label %274, !dbg !583

; <label>:274:                                    ; preds = %271, %266
  %275 = phi i8* [ %269, %266 ], [ %272, %271 ]
  %276 = bitcast i8* %275 to i32**, !dbg !583
  %277 = load i32*, i32** %276, align 8, !dbg !583
  br label %278, !dbg !585

; <label>:278:                                    ; preds = %274, %262
  %279 = phi i32* [ %33, %262 ], [ %277, %274 ]
  br label %280, !dbg !586

; <label>:280:                                    ; preds = %278, %290
  %281 = phi i64 [ %284, %290 ], [ %257, %278 ]
  %282 = phi i32* [ %291, %290 ], [ %279, %278 ]
  %283 = phi i32 [ %292, %290 ], [ 0, %278 ]
  %284 = add i64 %281, -1, !dbg !586
  %285 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !588
  %286 = icmp eq i32 %285, -1, !dbg !589
  br i1 %286, label %294, label %287, !dbg !590

; <label>:287:                                    ; preds = %280
  br i1 %261, label %290, label %288, !dbg !591

; <label>:288:                                    ; preds = %287
  %289 = getelementptr inbounds i32, i32* %282, i64 1, !dbg !593
  store i32 %285, i32* %282, align 4, !dbg !595, !tbaa !410
  br label %290, !dbg !596

; <label>:290:                                    ; preds = %288, %287
  %291 = phi i32* [ %282, %287 ], [ %289, %288 ], !dbg !597
  %292 = add nuw nsw i32 %283, 1, !dbg !598
  %293 = icmp eq i64 %284, 0, !dbg !599
  br i1 %293, label %296, label %280, !dbg !600, !llvm.loop !601

; <label>:294:                                    ; preds = %280
  %295 = icmp eq i32 %283, 0, !dbg !603
  br i1 %295, label %1193, label %296, !dbg !605

; <label>:296:                                    ; preds = %290, %294
  %297 = phi i32* [ %282, %294 ], [ %291, %290 ]
  %298 = phi i32 [ %283, %294 ], [ %292, %290 ]
  %299 = add nsw i32 %298, %254, !dbg !606
  %300 = xor i1 %261, true, !dbg !607
  %301 = zext i1 %300 to i32, !dbg !607
  %302 = add nsw i32 %41, %301, !dbg !607
  br label %1185, !dbg !607

; <label>:303:                                    ; preds = %255
  br i1 %261, label %319, label %304, !dbg !608

; <label>:304:                                    ; preds = %303
  %305 = load i32, i32* %22, align 8, !dbg !609
  %306 = icmp ult i32 %305, 41, !dbg !609
  br i1 %306, label %307, label %312, !dbg !609

; <label>:307:                                    ; preds = %304
  %308 = load i8*, i8** %23, align 8, !dbg !609
  %309 = sext i32 %305 to i64, !dbg !609
  %310 = getelementptr i8, i8* %308, i64 %309, !dbg !609
  %311 = add i32 %305, 8, !dbg !609
  store i32 %311, i32* %22, align 8, !dbg !609
  br label %315, !dbg !609

; <label>:312:                                    ; preds = %304
  %313 = load i8*, i8** %24, align 8, !dbg !609
  %314 = getelementptr i8, i8* %313, i64 8, !dbg !609
  store i8* %314, i8** %24, align 8, !dbg !609
  br label %315, !dbg !609

; <label>:315:                                    ; preds = %312, %307
  %316 = phi i8* [ %310, %307 ], [ %313, %312 ]
  %317 = bitcast i8* %316 to i8**, !dbg !609
  %318 = load i8*, i8** %317, align 8, !dbg !609
  br label %319, !dbg !610

; <label>:319:                                    ; preds = %315, %303
  %320 = phi i8* [ %34, %303 ], [ %318, %315 ], !dbg !577
  %321 = call i8* @memset(i8* nonnull %9, i32 0, i64 8) #4, !dbg !611
  br label %322, !dbg !612

; <label>:322:                                    ; preds = %319, %346
  %323 = phi i64 [ %257, %319 ], [ %350, %346 ]
  %324 = phi i32 [ 0, %319 ], [ %351, %346 ]
  %325 = phi i8* [ %320, %319 ], [ %349, %346 ]
  %326 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !613
  %327 = icmp eq i32 %326, -1, !dbg !614
  br i1 %327, label %353, label %328, !dbg !615

; <label>:328:                                    ; preds = %322
  %329 = call i32 @__locale_mb_cur_max() #4, !dbg !616
  %330 = sext i32 %329 to i64, !dbg !616
  %331 = icmp ult i64 %323, %330, !dbg !619
  %332 = or i1 %261, %331, !dbg !620
  br i1 %332, label %336, label %333, !dbg !620

; <label>:333:                                    ; preds = %328
  %334 = call i64 @_wcrtomb_r(%struct._reent* %0, i8* %325, i32 %326, %struct._mbstate_t* nonnull %5) #4, !dbg !622
  %335 = icmp eq i64 %334, -1, !dbg !625
  br i1 %335, label %1193, label %346, !dbg !627

; <label>:336:                                    ; preds = %328
  %337 = call i64 @_wcrtomb_r(%struct._reent* %0, i8* nonnull %11, i32 %326, %struct._mbstate_t* nonnull %5) #4, !dbg !628
  %338 = icmp eq i64 %337, -1, !dbg !630
  br i1 %338, label %1193, label %339, !dbg !632

; <label>:339:                                    ; preds = %336
  %340 = icmp ugt i64 %337, %323, !dbg !633
  br i1 %340, label %341, label %343, !dbg !635

; <label>:341:                                    ; preds = %339
  %342 = call i32 @_ungetwc_r(%struct._reent* %0, i32 %326, %struct.__sFILE* %1) #4, !dbg !636
  br label %353, !dbg !638

; <label>:343:                                    ; preds = %339
  br i1 %261, label %346, label %344, !dbg !639

; <label>:344:                                    ; preds = %343
  %345 = call i8* @memcpy(i8* %325, i8* nonnull %11, i64 %337) #4, !dbg !640
  br label %346, !dbg !640

; <label>:346:                                    ; preds = %343, %344, %333
  %347 = phi i64 [ %337, %343 ], [ %337, %344 ], [ %334, %333 ], !dbg !642
  %348 = getelementptr inbounds i8, i8* %325, i64 %347, !dbg !643
  %349 = select i1 %261, i8* %325, i8* %348, !dbg !645
  %350 = sub i64 %323, %347, !dbg !646
  %351 = add nuw nsw i32 %324, 1, !dbg !647
  %352 = icmp eq i64 %350, 0, !dbg !648
  br i1 %352, label %355, label %322, !dbg !612, !llvm.loop !649

; <label>:353:                                    ; preds = %322, %341
  %354 = icmp eq i32 %324, 0, !dbg !651
  br i1 %354, label %1193, label %355, !dbg !653

; <label>:355:                                    ; preds = %346, %353
  %356 = phi i32 [ %324, %353 ], [ %351, %346 ]
  %357 = phi i8* [ %325, %353 ], [ %349, %346 ]
  %358 = add nsw i32 %356, %254, !dbg !654
  %359 = xor i1 %261, true, !dbg !655
  %360 = zext i1 %359 to i32, !dbg !655
  %361 = add nsw i32 %41, %360, !dbg !655
  br label %1185, !dbg !655

; <label>:362:                                    ; preds = %253
  %363 = icmp eq i64 %72, 0, !dbg !656
  %364 = select i1 %363, i64 -1, i64 %72, !dbg !658
  %365 = and i32 %228, 16, !dbg !659
  %366 = icmp ne i32 %365, 0, !dbg !659
  %367 = xor i1 %366, true, !dbg !661
  %368 = and i32 %228, 1, !dbg !662
  %369 = icmp eq i32 %368, 0, !dbg !662
  %370 = or i1 %369, %367, !dbg !661
  br i1 %370, label %398, label %371, !dbg !661

; <label>:371:                                    ; preds = %362
  %372 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !663
  %373 = icmp eq i32 %372, -1, !dbg !665
  br i1 %373, label %1205, label %374, !dbg !666

; <label>:374:                                    ; preds = %371
  %375 = icmp eq i32 %233, 0
  %376 = ptrtoint i32* %232 to i64
  %377 = ptrtoint i32* %231 to i64
  %378 = sub i64 %376, %377
  %379 = ashr exact i64 %378, 2
  br label %380, !dbg !666

; <label>:380:                                    ; preds = %374, %391
  %381 = phi i32 [ %372, %374 ], [ %393, %391 ]
  %382 = phi i64 [ %364, %374 ], [ %384, %391 ]
  %383 = phi i32 [ 0, %374 ], [ %392, %391 ]
  %384 = add i64 %382, -1, !dbg !667
  %385 = icmp eq i64 %382, 0, !dbg !668
  br i1 %385, label %395, label %386, !dbg !669

; <label>:386:                                    ; preds = %380
  %387 = call i32* @wmemchr(i32* %231, i32 %381, i64 %379) #4, !dbg !670
  %388 = icmp eq i32* %387, null, !dbg !670
  %389 = icmp ne i32* %387, null, !dbg !670
  %390 = select i1 %375, i1 %389, i1 %388, !dbg !670
  br i1 %390, label %391, label %395, !dbg !671

; <label>:391:                                    ; preds = %386
  %392 = add nuw nsw i32 %383, 1, !dbg !672
  %393 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !663
  %394 = icmp eq i32 %393, -1, !dbg !665
  br i1 %394, label %519, label %380, !dbg !666, !llvm.loop !673

; <label>:395:                                    ; preds = %380, %386
  %396 = call i32 @_ungetwc_r(%struct._reent* %0, i32 %381, %struct.__sFILE* %1) #4, !dbg !674
  %397 = icmp eq i32 %383, 0, !dbg !676
  br i1 %397, label %1205, label %519, !dbg !678

; <label>:398:                                    ; preds = %362
  br i1 %369, label %449, label %399, !dbg !679

; <label>:399:                                    ; preds = %398
  %400 = load i32, i32* %22, align 8, !dbg !680
  %401 = icmp ult i32 %400, 41, !dbg !680
  br i1 %401, label %402, label %407, !dbg !680

; <label>:402:                                    ; preds = %399
  %403 = load i8*, i8** %23, align 8, !dbg !680
  %404 = sext i32 %400 to i64, !dbg !680
  %405 = getelementptr i8, i8* %403, i64 %404, !dbg !680
  %406 = add i32 %400, 8, !dbg !680
  store i32 %406, i32* %22, align 8, !dbg !680
  br label %410, !dbg !680

; <label>:407:                                    ; preds = %399
  %408 = load i8*, i8** %24, align 8, !dbg !680
  %409 = getelementptr i8, i8* %408, i64 8, !dbg !680
  store i8* %409, i8** %24, align 8, !dbg !680
  br label %410, !dbg !680

; <label>:410:                                    ; preds = %407, %402
  %411 = phi i8* [ %405, %402 ], [ %408, %407 ]
  %412 = bitcast i8* %411 to i32**, !dbg !680
  %413 = load i32*, i32** %412, align 8, !dbg !680
  %414 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !684
  %415 = icmp eq i32 %414, -1, !dbg !685
  br i1 %415, label %439, label %416, !dbg !686

; <label>:416:                                    ; preds = %410
  %417 = icmp eq i32 %233, 0
  %418 = ptrtoint i32* %232 to i64
  %419 = ptrtoint i32* %231 to i64
  %420 = sub i64 %418, %419
  %421 = ashr exact i64 %420, 2
  br label %422, !dbg !686

; <label>:422:                                    ; preds = %416, %433
  %423 = phi i32 [ %414, %416 ], [ %435, %433 ]
  %424 = phi i64 [ %364, %416 ], [ %426, %433 ]
  %425 = phi i32* [ %413, %416 ], [ %434, %433 ]
  %426 = add i64 %424, -1, !dbg !687
  %427 = icmp eq i64 %424, 0, !dbg !688
  br i1 %427, label %437, label %428, !dbg !689

; <label>:428:                                    ; preds = %422
  %429 = call i32* @wmemchr(i32* %231, i32 %423, i64 %421) #4, !dbg !690
  %430 = icmp eq i32* %429, null, !dbg !690
  %431 = icmp ne i32* %429, null, !dbg !690
  %432 = select i1 %417, i1 %431, i1 %430, !dbg !690
  br i1 %432, label %433, label %437, !dbg !691

; <label>:433:                                    ; preds = %428
  %434 = getelementptr inbounds i32, i32* %425, i64 1, !dbg !692
  store i32 %423, i32* %425, align 4, !dbg !693, !tbaa !410
  %435 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !684
  %436 = icmp eq i32 %435, -1, !dbg !685
  br i1 %436, label %439, label %422, !dbg !686, !llvm.loop !694

; <label>:437:                                    ; preds = %428, %422
  %438 = call i32 @_ungetwc_r(%struct._reent* %0, i32 %423, %struct.__sFILE* %1) #4, !dbg !696
  br label %439, !dbg !696

; <label>:439:                                    ; preds = %433, %410, %437
  %440 = phi i32* [ %425, %437 ], [ %413, %410 ], [ %434, %433 ]
  %441 = ptrtoint i32* %440 to i64, !dbg !698
  %442 = ptrtoint i32* %413 to i64, !dbg !698
  %443 = sub i64 %441, %442, !dbg !698
  %444 = lshr exact i64 %443, 2, !dbg !698
  %445 = trunc i64 %444 to i32, !dbg !699
  %446 = icmp eq i32 %445, 0, !dbg !700
  br i1 %446, label %1205, label %447, !dbg !702

; <label>:447:                                    ; preds = %439
  store i32 0, i32* %440, align 4, !dbg !703, !tbaa !410
  %448 = add nsw i32 %41, 1, !dbg !704
  br label %519, !dbg !705

; <label>:449:                                    ; preds = %398
  br i1 %366, label %465, label %450, !dbg !706

; <label>:450:                                    ; preds = %449
  %451 = load i32, i32* %22, align 8, !dbg !708
  %452 = icmp ult i32 %451, 41, !dbg !708
  br i1 %452, label %453, label %458, !dbg !708

; <label>:453:                                    ; preds = %450
  %454 = load i8*, i8** %23, align 8, !dbg !708
  %455 = sext i32 %451 to i64, !dbg !708
  %456 = getelementptr i8, i8* %454, i64 %455, !dbg !708
  %457 = add i32 %451, 8, !dbg !708
  store i32 %457, i32* %22, align 8, !dbg !708
  br label %461, !dbg !708

; <label>:458:                                    ; preds = %450
  %459 = load i8*, i8** %24, align 8, !dbg !708
  %460 = getelementptr i8, i8* %459, i64 8, !dbg !708
  store i8* %460, i8** %24, align 8, !dbg !708
  br label %461, !dbg !708

; <label>:461:                                    ; preds = %458, %453
  %462 = phi i8* [ %456, %453 ], [ %459, %458 ]
  %463 = bitcast i8* %462 to i8**, !dbg !708
  %464 = load i8*, i8** %463, align 8, !dbg !708
  br label %465, !dbg !710

; <label>:465:                                    ; preds = %461, %449
  %466 = phi i8* [ %34, %449 ], [ %464, %461 ], !dbg !711
  %467 = call i8* @memset(i8* nonnull %9, i32 0, i64 8) #4, !dbg !712
  %468 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !713
  %469 = icmp eq i32 %468, -1, !dbg !714
  br i1 %469, label %514, label %470, !dbg !715

; <label>:470:                                    ; preds = %465
  %471 = icmp eq i32 %233, 0
  %472 = ptrtoint i32* %232 to i64
  %473 = ptrtoint i32* %231 to i64
  %474 = sub i64 %472, %473
  %475 = ashr exact i64 %474, 2
  br label %476, !dbg !715

; <label>:476:                                    ; preds = %470, %504
  %477 = phi i32 [ %468, %470 ], [ %510, %504 ]
  %478 = phi i64 [ %364, %470 ], [ %508, %504 ]
  %479 = phi i32 [ 0, %470 ], [ %509, %504 ]
  %480 = phi i8* [ %466, %470 ], [ %507, %504 ]
  %481 = add i64 %478, -1, !dbg !716
  %482 = icmp eq i64 %478, 0, !dbg !717
  br i1 %482, label %512, label %483, !dbg !718

; <label>:483:                                    ; preds = %476
  %484 = call i32* @wmemchr(i32* %231, i32 %477, i64 %475) #4, !dbg !719
  %485 = icmp eq i32* %484, null, !dbg !719
  %486 = icmp ne i32* %484, null, !dbg !719
  %487 = select i1 %471, i1 %486, i1 %485, !dbg !719
  br i1 %487, label %488, label %512, !dbg !720

; <label>:488:                                    ; preds = %483
  %489 = call i32 @__locale_mb_cur_max() #4, !dbg !721
  %490 = sext i32 %489 to i64, !dbg !721
  %491 = icmp ult i64 %481, %490, !dbg !724
  %492 = or i1 %366, %491, !dbg !725
  br i1 %492, label %496, label %493, !dbg !725

; <label>:493:                                    ; preds = %488
  %494 = call i64 @_wcrtomb_r(%struct._reent* %0, i8* %480, i32 %477, %struct._mbstate_t* nonnull %5) #4, !dbg !726
  %495 = icmp eq i64 %494, -1, !dbg !728
  br i1 %495, label %1193, label %504, !dbg !730

; <label>:496:                                    ; preds = %488
  %497 = call i64 @wcrtomb(i8* nonnull %11, i32 %477, %struct._mbstate_t* nonnull %5) #4, !dbg !731
  %498 = icmp eq i64 %497, -1, !dbg !733
  br i1 %498, label %1193, label %499, !dbg !735

; <label>:499:                                    ; preds = %496
  %500 = icmp ugt i64 %497, %481, !dbg !736
  br i1 %500, label %512, label %501, !dbg !738

; <label>:501:                                    ; preds = %499
  br i1 %366, label %504, label %502, !dbg !739

; <label>:502:                                    ; preds = %501
  %503 = call i8* @memcpy(i8* %480, i8* nonnull %11, i64 %497) #4, !dbg !740
  br label %504, !dbg !740

; <label>:504:                                    ; preds = %501, %502, %493
  %505 = phi i64 [ %497, %501 ], [ %497, %502 ], [ %494, %493 ], !dbg !742
  %506 = getelementptr inbounds i8, i8* %480, i64 %505, !dbg !743
  %507 = select i1 %366, i8* %480, i8* %506, !dbg !745
  %508 = sub i64 %481, %505, !dbg !746
  %509 = add nuw nsw i32 %479, 1, !dbg !747
  %510 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !713
  %511 = icmp eq i32 %510, -1, !dbg !714
  br i1 %511, label %514, label %476, !dbg !715, !llvm.loop !748

; <label>:512:                                    ; preds = %483, %499, %476
  %513 = call i32 @_ungetwc_r(%struct._reent* %0, i32 %477, %struct.__sFILE* %1) #4, !dbg !750
  br label %514, !dbg !750

; <label>:514:                                    ; preds = %504, %465, %512
  %515 = phi i8* [ %480, %512 ], [ %466, %465 ], [ %507, %504 ]
  %516 = phi i32 [ %479, %512 ], [ 0, %465 ], [ %509, %504 ]
  br i1 %366, label %519, label %517, !dbg !752

; <label>:517:                                    ; preds = %514
  store i8 0, i8* %515, align 1, !dbg !753, !tbaa !401
  %518 = add nsw i32 %41, 1, !dbg !756
  br label %519, !dbg !757

; <label>:519:                                    ; preds = %391, %447, %517, %514, %395
  %520 = phi i32 [ %41, %395 ], [ %448, %447 ], [ %41, %514 ], [ %518, %517 ], [ %41, %391 ], !dbg !758
  %521 = phi i8* [ %34, %395 ], [ %34, %447 ], [ %515, %514 ], [ %515, %517 ], [ %34, %391 ], !dbg !393
  %522 = phi i32 [ %383, %395 ], [ %445, %447 ], [ %516, %514 ], [ %516, %517 ], [ %392, %391 ], !dbg !759
  %523 = phi i32* [ %33, %395 ], [ %440, %447 ], [ %33, %514 ], [ %33, %517 ], [ %33, %391 ], !dbg !558
  %524 = add nsw i32 %522, %254, !dbg !760
  br label %1185, !dbg !761

; <label>:525:                                    ; preds = %253
  %526 = icmp eq i64 %72, 0, !dbg !762
  %527 = select i1 %526, i64 -1, i64 %72, !dbg !764
  %528 = and i32 %228, 16, !dbg !765
  %529 = icmp ne i32 %528, 0, !dbg !765
  %530 = xor i1 %529, true, !dbg !767
  %531 = and i32 %228, 1, !dbg !768
  %532 = icmp eq i32 %531, 0, !dbg !768
  %533 = or i1 %532, %530, !dbg !767
  br i1 %533, label %552, label %534, !dbg !767

; <label>:534:                                    ; preds = %525
  %535 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !769
  %536 = icmp eq i32 %535, -1, !dbg !771
  br i1 %536, label %1185, label %537, !dbg !772

; <label>:537:                                    ; preds = %534, %546
  %538 = phi i32 [ %548, %546 ], [ %535, %534 ]
  %539 = phi i64 [ %541, %546 ], [ %527, %534 ]
  %540 = phi i32 [ %547, %546 ], [ %254, %534 ]
  %541 = add i64 %539, -1, !dbg !773
  %542 = icmp eq i64 %539, 0, !dbg !774
  br i1 %542, label %550, label %543, !dbg !775

; <label>:543:                                    ; preds = %537
  %544 = call i32 @iswspace(i32 %538) #4, !dbg !776
  %545 = icmp eq i32 %544, 0, !dbg !777
  br i1 %545, label %546, label %550, !dbg !778

; <label>:546:                                    ; preds = %543
  %547 = add nsw i32 %540, 1, !dbg !779
  %548 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !769
  %549 = icmp eq i32 %548, -1, !dbg !771
  br i1 %549, label %1185, label %537, !dbg !772, !llvm.loop !780

; <label>:550:                                    ; preds = %543, %537
  %551 = call i32 @_ungetwc_r(%struct._reent* %0, i32 %538, %struct.__sFILE* %1) #4, !dbg !781
  br label %1185, !dbg !781

; <label>:552:                                    ; preds = %525
  br i1 %532, label %591, label %553, !dbg !783

; <label>:553:                                    ; preds = %552
  %554 = load i32, i32* %22, align 8, !dbg !784
  %555 = icmp ult i32 %554, 41, !dbg !784
  br i1 %555, label %556, label %561, !dbg !784

; <label>:556:                                    ; preds = %553
  %557 = load i8*, i8** %23, align 8, !dbg !784
  %558 = sext i32 %554 to i64, !dbg !784
  %559 = getelementptr i8, i8* %557, i64 %558, !dbg !784
  %560 = add i32 %554, 8, !dbg !784
  store i32 %560, i32* %22, align 8, !dbg !784
  br label %564, !dbg !784

; <label>:561:                                    ; preds = %553
  %562 = load i8*, i8** %24, align 8, !dbg !784
  %563 = getelementptr i8, i8* %562, i64 8, !dbg !784
  store i8* %563, i8** %24, align 8, !dbg !784
  br label %564, !dbg !784

; <label>:564:                                    ; preds = %561, %556
  %565 = phi i8* [ %559, %556 ], [ %562, %561 ]
  %566 = bitcast i8* %565 to i32**, !dbg !784
  %567 = load i32*, i32** %566, align 8, !dbg !784
  %568 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !787
  %569 = icmp eq i32 %568, -1, !dbg !788
  br i1 %569, label %587, label %570, !dbg !789

; <label>:570:                                    ; preds = %564, %580
  %571 = phi i32 [ %583, %580 ], [ %568, %564 ]
  %572 = phi i64 [ %575, %580 ], [ %527, %564 ]
  %573 = phi i32* [ %581, %580 ], [ %567, %564 ]
  %574 = phi i32 [ %582, %580 ], [ %254, %564 ]
  %575 = add i64 %572, -1, !dbg !790
  %576 = icmp eq i64 %572, 0, !dbg !791
  br i1 %576, label %585, label %577, !dbg !792

; <label>:577:                                    ; preds = %570
  %578 = call i32 @iswspace(i32 %571) #4, !dbg !793
  %579 = icmp eq i32 %578, 0, !dbg !794
  br i1 %579, label %580, label %585, !dbg !795

; <label>:580:                                    ; preds = %577
  %581 = getelementptr inbounds i32, i32* %573, i64 1, !dbg !796
  store i32 %571, i32* %573, align 4, !dbg !798, !tbaa !410
  %582 = add nsw i32 %574, 1, !dbg !799
  %583 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !787
  %584 = icmp eq i32 %583, -1, !dbg !788
  br i1 %584, label %587, label %570, !dbg !789, !llvm.loop !800

; <label>:585:                                    ; preds = %577, %570
  %586 = call i32 @_ungetwc_r(%struct._reent* %0, i32 %571, %struct.__sFILE* %1) #4, !dbg !802
  br label %587, !dbg !802

; <label>:587:                                    ; preds = %580, %564, %585
  %588 = phi i32 [ %574, %585 ], [ %254, %564 ], [ %582, %580 ]
  %589 = phi i32* [ %573, %585 ], [ %567, %564 ], [ %581, %580 ]
  store i32 0, i32* %589, align 4, !dbg !804, !tbaa !410
  %590 = add nsw i32 %41, 1, !dbg !805
  br label %1185, !dbg !806

; <label>:591:                                    ; preds = %552
  br i1 %529, label %607, label %592, !dbg !807

; <label>:592:                                    ; preds = %591
  %593 = load i32, i32* %22, align 8, !dbg !809
  %594 = icmp ult i32 %593, 41, !dbg !809
  br i1 %594, label %595, label %600, !dbg !809

; <label>:595:                                    ; preds = %592
  %596 = load i8*, i8** %23, align 8, !dbg !809
  %597 = sext i32 %593 to i64, !dbg !809
  %598 = getelementptr i8, i8* %596, i64 %597, !dbg !809
  %599 = add i32 %593, 8, !dbg !809
  store i32 %599, i32* %22, align 8, !dbg !809
  br label %603, !dbg !809

; <label>:600:                                    ; preds = %592
  %601 = load i8*, i8** %24, align 8, !dbg !809
  %602 = getelementptr i8, i8* %601, i64 8, !dbg !809
  store i8* %602, i8** %24, align 8, !dbg !809
  br label %603, !dbg !809

; <label>:603:                                    ; preds = %600, %595
  %604 = phi i8* [ %598, %595 ], [ %601, %600 ]
  %605 = bitcast i8* %604 to i8**, !dbg !809
  %606 = load i8*, i8** %605, align 8, !dbg !809
  br label %607, !dbg !811

; <label>:607:                                    ; preds = %603, %591
  %608 = phi i8* [ %34, %591 ], [ %606, %603 ], !dbg !812
  %609 = call i8* @memset(i8* nonnull %9, i32 0, i64 8) #4, !dbg !813
  %610 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !814
  %611 = icmp ne i32 %610, -1, !dbg !815
  %612 = icmp ne i64 %527, 0, !dbg !816
  %613 = and i1 %612, %611, !dbg !817
  br i1 %613, label %614, label %647, !dbg !817

; <label>:614:                                    ; preds = %607, %637
  %615 = phi i32 [ %643, %637 ], [ %610, %607 ]
  %616 = phi i64 [ %641, %637 ], [ %527, %607 ]
  %617 = phi i8* [ %640, %637 ], [ %608, %607 ]
  %618 = phi i32 [ %642, %637 ], [ %254, %607 ]
  %619 = call i32 @iswspace(i32 %615) #4, !dbg !818
  %620 = icmp eq i32 %619, 0, !dbg !819
  br i1 %620, label %621, label %652, !dbg !820

; <label>:621:                                    ; preds = %614
  %622 = call i32 @__locale_mb_cur_max() #4, !dbg !821
  %623 = sext i32 %622 to i64, !dbg !821
  %624 = icmp ult i64 %616, %623, !dbg !824
  %625 = or i1 %529, %624, !dbg !825
  br i1 %625, label %629, label %626, !dbg !825

; <label>:626:                                    ; preds = %621
  %627 = call i64 @wcrtomb(i8* %617, i32 %615, %struct._mbstate_t* nonnull %5) #4, !dbg !826
  %628 = icmp eq i64 %627, -1, !dbg !828
  br i1 %628, label %1193, label %637, !dbg !830

; <label>:629:                                    ; preds = %621
  %630 = call i64 @wcrtomb(i8* nonnull %11, i32 %615, %struct._mbstate_t* nonnull %5) #4, !dbg !831
  %631 = icmp eq i64 %630, -1, !dbg !833
  br i1 %631, label %1193, label %632, !dbg !835

; <label>:632:                                    ; preds = %629
  %633 = icmp ugt i64 %630, %616, !dbg !836
  br i1 %633, label %652, label %634, !dbg !838

; <label>:634:                                    ; preds = %632
  br i1 %529, label %637, label %635, !dbg !839

; <label>:635:                                    ; preds = %634
  %636 = call i8* @memcpy(i8* %617, i8* nonnull %11, i64 %630) #4, !dbg !840
  br label %637, !dbg !840

; <label>:637:                                    ; preds = %634, %635, %626
  %638 = phi i64 [ %630, %634 ], [ %630, %635 ], [ %627, %626 ], !dbg !842
  %639 = getelementptr inbounds i8, i8* %617, i64 %638, !dbg !843
  %640 = select i1 %529, i8* %617, i8* %639, !dbg !845
  %641 = sub i64 %616, %638, !dbg !846
  %642 = add nsw i32 %618, 1, !dbg !847
  %643 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !814
  %644 = icmp ne i32 %643, -1, !dbg !815
  %645 = icmp ne i64 %641, 0, !dbg !816
  %646 = and i1 %645, %644, !dbg !817
  br i1 %646, label %614, label %647, !dbg !817, !llvm.loop !848

; <label>:647:                                    ; preds = %637, %607
  %648 = phi i32 [ %254, %607 ], [ %642, %637 ], !dbg !850
  %649 = phi i8* [ %608, %607 ], [ %640, %637 ], !dbg !393
  %650 = phi i32 [ %610, %607 ], [ %643, %637 ], !dbg !814
  %651 = phi i1 [ %611, %607 ], [ %644, %637 ], !dbg !815
  br i1 %651, label %652, label %657, !dbg !851

; <label>:652:                                    ; preds = %632, %614, %647
  %653 = phi i32 [ %650, %647 ], [ %615, %614 ], [ %615, %632 ]
  %654 = phi i8* [ %649, %647 ], [ %617, %614 ], [ %617, %632 ]
  %655 = phi i32 [ %648, %647 ], [ %618, %614 ], [ %618, %632 ]
  %656 = call i32 @_ungetwc_r(%struct._reent* %0, i32 %653, %struct.__sFILE* %1) #4, !dbg !852
  br label %657, !dbg !852

; <label>:657:                                    ; preds = %652, %647
  %658 = phi i8* [ %654, %652 ], [ %649, %647 ]
  %659 = phi i32 [ %655, %652 ], [ %648, %647 ]
  br i1 %529, label %1185, label %660, !dbg !854

; <label>:660:                                    ; preds = %657
  store i8 0, i8* %658, align 1, !dbg !855, !tbaa !401
  %661 = add nsw i32 %41, 1, !dbg !858
  br label %1185, !dbg !859

; <label>:662:                                    ; preds = %253
  %663 = add i64 %72, -1, !dbg !860
  %664 = icmp ugt i64 %663, 348, !dbg !860
  %665 = or i32 %228, 1408, !dbg !862
  %666 = select i1 %664, i64 349, i64 %72
  %667 = icmp eq i64 %666, 0, !dbg !863
  br i1 %667, label %734, label %668, !dbg !863

; <label>:668:                                    ; preds = %662, %727
  %669 = phi i32* [ %732, %727 ], [ %25, %662 ]
  %670 = phi i64 [ %731, %727 ], [ %666, %662 ]
  %671 = phi i64 [ %730, %727 ], [ 0, %662 ]
  %672 = phi i32 [ %729, %727 ], [ %229, %662 ]
  %673 = phi i32 [ %728, %727 ], [ %665, %662 ]
  %674 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !865
  switch i32 %674, label %724 [
    i32 48, label %675
    i32 49, label %686
    i32 50, label %686
    i32 51, label %686
    i32 52, label %686
    i32 53, label %686
    i32 54, label %686
    i32 55, label %686
    i32 56, label %692
    i32 57, label %692
    i32 65, label %701
    i32 66, label %701
    i32 67, label %701
    i32 68, label %701
    i32 69, label %701
    i32 70, label %701
    i32 97, label %701
    i32 98, label %701
    i32 99, label %701
    i32 100, label %701
    i32 101, label %701
    i32 102, label %701
    i32 43, label %705
    i32 45, label %705
    i32 120, label %711
    i32 88, label %711
    i32 -1, label %734
  ], !dbg !868

; <label>:675:                                    ; preds = %668
  %676 = icmp eq i32 %672, 0, !dbg !869
  %677 = or i32 %673, 512, !dbg !872
  %678 = select i1 %676, i32 %677, i32 %673, !dbg !874
  %679 = select i1 %676, i32 8, i32 %672, !dbg !874
  %680 = and i32 %678, 1024, !dbg !875
  %681 = icmp eq i32 %680, 0, !dbg !875
  br i1 %681, label %684, label %682, !dbg !877

; <label>:682:                                    ; preds = %675
  %683 = and i32 %678, -1409, !dbg !878
  br label %727, !dbg !879

; <label>:684:                                    ; preds = %675
  %685 = and i32 %678, -897, !dbg !880
  br label %727

; <label>:686:                                    ; preds = %668, %668, %668, %668, %668, %668, %668
  %687 = sext i32 %672 to i64, !dbg !881
  %688 = getelementptr inbounds [17 x i16], [17 x i16]* @__svfwscanf_r.basefix, i64 0, i64 %687, !dbg !881
  %689 = load i16, i16* %688, align 2, !dbg !881, !tbaa !535
  %690 = sext i16 %689 to i32, !dbg !881
  %691 = and i32 %673, -897, !dbg !882
  br label %727, !dbg !883

; <label>:692:                                    ; preds = %668, %668
  %693 = sext i32 %672 to i64, !dbg !884
  %694 = getelementptr inbounds [17 x i16], [17 x i16]* @__svfwscanf_r.basefix, i64 0, i64 %693, !dbg !884
  %695 = load i16, i16* %694, align 2, !dbg !884, !tbaa !535
  %696 = add nsw i64 %693, -1, !dbg !885
  %697 = icmp ult i64 %696, 8, !dbg !885
  %698 = sext i16 %695 to i32, !dbg !884
  br i1 %697, label %722, label %699, !dbg !887

; <label>:699:                                    ; preds = %692
  %700 = and i32 %673, -897, !dbg !888
  br label %727, !dbg !889

; <label>:701:                                    ; preds = %668, %668, %668, %668, %668, %668, %668, %668, %668, %668, %668, %668
  %702 = icmp slt i32 %672, 11, !dbg !890
  br i1 %702, label %724, label %703, !dbg !892

; <label>:703:                                    ; preds = %701
  %704 = and i32 %673, -897, !dbg !893
  br label %727, !dbg !894

; <label>:705:                                    ; preds = %668, %668
  %706 = trunc i32 %673 to i8, !dbg !895
  %707 = icmp slt i8 %706, 0, !dbg !895
  br i1 %707, label %708, label %724, !dbg !897

; <label>:708:                                    ; preds = %705
  %709 = and i32 %673, -65665, !dbg !898
  %710 = or i32 %709, 65536, !dbg !900
  br label %727, !dbg !901

; <label>:711:                                    ; preds = %668, %668
  %712 = and i32 %673, 512, !dbg !902
  %713 = icmp eq i32 %712, 0, !dbg !902
  br i1 %713, label %724, label %714, !dbg !904

; <label>:714:                                    ; preds = %711
  %715 = lshr i32 %673, 16, !dbg !905
  %716 = and i32 %715, 1, !dbg !905
  %717 = zext i32 %716 to i64, !dbg !906
  %718 = getelementptr inbounds i32, i32* %26, i64 %717, !dbg !906
  %719 = icmp eq i32* %669, %718, !dbg !907
  br i1 %719, label %720, label %724, !dbg !908

; <label>:720:                                    ; preds = %714
  %721 = and i32 %673, -513, !dbg !909
  br label %727, !dbg !911

; <label>:722:                                    ; preds = %692
  %723 = sext i16 %695 to i32, !dbg !884
  br label %724, !dbg !912

; <label>:724:                                    ; preds = %668, %701, %705, %714, %711, %722
  %725 = phi i32 [ %723, %722 ], [ %672, %711 ], [ %672, %714 ], [ %672, %705 ], [ %672, %701 ], [ %672, %668 ]
  %726 = call i32 @_ungetwc_r(%struct._reent* %0, i32 %674, %struct.__sFILE* %1) #4, !dbg !912
  br label %734, !dbg !912

; <label>:727:                                    ; preds = %682, %684, %720, %708, %703, %699, %686
  %728 = phi i32 [ %721, %720 ], [ %710, %708 ], [ %704, %703 ], [ %700, %699 ], [ %691, %686 ], [ %683, %682 ], [ %685, %684 ], !dbg !914
  %729 = phi i32 [ 16, %720 ], [ %672, %708 ], [ %672, %703 ], [ %698, %699 ], [ %690, %686 ], [ %679, %682 ], [ %679, %684 ], !dbg !915
  %730 = add nuw nsw i64 %671, 1, !dbg !916
  store i32 %674, i32* %669, align 4, !dbg !917, !tbaa !410
  %731 = add nsw i64 %670, -1, !dbg !918
  %732 = getelementptr inbounds [350 x i32], [350 x i32]* %6, i64 0, i64 %730, !dbg !438
  %733 = icmp eq i64 %731, 0, !dbg !863
  br i1 %733, label %734, label %668, !dbg !863, !llvm.loop !919

; <label>:734:                                    ; preds = %727, %668, %662, %724
  %735 = phi i32 [ %673, %724 ], [ %665, %662 ], [ %728, %727 ], [ %673, %668 ]
  %736 = phi i64 [ %671, %724 ], [ 0, %662 ], [ 1, %727 ], [ %671, %668 ]
  %737 = phi i32* [ %669, %724 ], [ %25, %662 ], [ %732, %727 ], [ %669, %668 ]
  %738 = phi i32 [ %725, %724 ], [ %229, %662 ], [ %729, %727 ], [ %672, %668 ], !dbg !921
  %739 = and i32 %735, 256, !dbg !922
  %740 = icmp eq i32 %739, 0, !dbg !922
  br i1 %740, label %747, label %741, !dbg !924

; <label>:741:                                    ; preds = %734
  %742 = icmp eq i64 %736, 0, !dbg !925
  br i1 %742, label %1205, label %743, !dbg !928

; <label>:743:                                    ; preds = %741
  %744 = getelementptr inbounds i32, i32* %737, i64 -1, !dbg !929
  %745 = load i32, i32* %744, align 4, !dbg !930, !tbaa !410
  %746 = call i32 @_ungetwc_r(%struct._reent* %0, i32 %745, %struct.__sFILE* %1) #4, !dbg !931
  br label %1205, !dbg !931

; <label>:747:                                    ; preds = %734
  %748 = getelementptr inbounds i32, i32* %737, i64 -1, !dbg !932
  %749 = load i32, i32* %748, align 4, !dbg !932, !tbaa !410
  %750 = or i32 %749, 32, !dbg !933
  %751 = icmp eq i32 %750, 120, !dbg !933
  br i1 %751, label %752, label %754, !dbg !933

; <label>:752:                                    ; preds = %747
  %753 = call i32 @_ungetwc_r(%struct._reent* %0, i32 %749, %struct.__sFILE* %1) #4, !dbg !935
  br label %754, !dbg !937

; <label>:754:                                    ; preds = %747, %752
  %755 = phi i32* [ %748, %752 ], [ %737, %747 ], !dbg !938
  %756 = and i32 %735, 16, !dbg !939
  %757 = icmp eq i32 %756, 0, !dbg !940
  br i1 %757, label %758, label %850, !dbg !941

; <label>:758:                                    ; preds = %754
  store i32 0, i32* %755, align 4, !dbg !942, !tbaa !410
  %759 = call i64 %230(%struct._reent* %0, i32* nonnull %25, i32** null, i32 %738) #4, !dbg !943, !callees !944
  %760 = and i32 %735, 32, !dbg !946
  %761 = icmp eq i32 %760, 0, !dbg !946
  br i1 %761, label %778, label %762, !dbg !947

; <label>:762:                                    ; preds = %758
  %763 = load i32, i32* %22, align 8, !dbg !948
  %764 = icmp ult i32 %763, 41, !dbg !948
  br i1 %764, label %765, label %770, !dbg !948

; <label>:765:                                    ; preds = %762
  %766 = load i8*, i8** %23, align 8, !dbg !948
  %767 = sext i32 %763 to i64, !dbg !948
  %768 = getelementptr i8, i8* %766, i64 %767, !dbg !948
  %769 = add i32 %763, 8, !dbg !948
  store i32 %769, i32* %22, align 8, !dbg !948
  br label %773, !dbg !948

; <label>:770:                                    ; preds = %762
  %771 = load i8*, i8** %24, align 8, !dbg !948
  %772 = getelementptr i8, i8* %771, i64 8, !dbg !948
  store i8* %772, i8** %24, align 8, !dbg !948
  br label %773, !dbg !948

; <label>:773:                                    ; preds = %770, %765
  %774 = phi i8* [ %768, %765 ], [ %771, %770 ]
  %775 = bitcast i8* %774 to i8***, !dbg !948
  %776 = load i8**, i8*** %775, align 8, !dbg !948
  %777 = inttoptr i64 %759 to i8*, !dbg !950
  store i8* %777, i8** %776, align 8, !dbg !951, !tbaa !952
  br label %848, !dbg !953

; <label>:778:                                    ; preds = %758
  %779 = and i32 %735, 8, !dbg !954
  %780 = icmp eq i32 %779, 0, !dbg !954
  br i1 %780, label %797, label %781, !dbg !956

; <label>:781:                                    ; preds = %778
  %782 = load i32, i32* %22, align 8, !dbg !957
  %783 = icmp ult i32 %782, 41, !dbg !957
  br i1 %783, label %784, label %789, !dbg !957

; <label>:784:                                    ; preds = %781
  %785 = load i8*, i8** %23, align 8, !dbg !957
  %786 = sext i32 %782 to i64, !dbg !957
  %787 = getelementptr i8, i8* %785, i64 %786, !dbg !957
  %788 = add i32 %782, 8, !dbg !957
  store i32 %788, i32* %22, align 8, !dbg !957
  br label %792, !dbg !957

; <label>:789:                                    ; preds = %781
  %790 = load i8*, i8** %24, align 8, !dbg !957
  %791 = getelementptr i8, i8* %790, i64 8, !dbg !957
  store i8* %791, i8** %24, align 8, !dbg !957
  br label %792, !dbg !957

; <label>:792:                                    ; preds = %789, %784
  %793 = phi i8* [ %787, %784 ], [ %790, %789 ]
  %794 = bitcast i8* %793 to i8**, !dbg !957
  %795 = load i8*, i8** %794, align 8, !dbg !957
  %796 = trunc i64 %759 to i8, !dbg !959
  store i8 %796, i8* %795, align 1, !dbg !960, !tbaa !401
  br label %848, !dbg !961

; <label>:797:                                    ; preds = %778
  %798 = and i32 %735, 4, !dbg !962
  %799 = icmp eq i32 %798, 0, !dbg !962
  br i1 %799, label %816, label %800, !dbg !964

; <label>:800:                                    ; preds = %797
  %801 = load i32, i32* %22, align 8, !dbg !965
  %802 = icmp ult i32 %801, 41, !dbg !965
  br i1 %802, label %803, label %808, !dbg !965

; <label>:803:                                    ; preds = %800
  %804 = load i8*, i8** %23, align 8, !dbg !965
  %805 = sext i32 %801 to i64, !dbg !965
  %806 = getelementptr i8, i8* %804, i64 %805, !dbg !965
  %807 = add i32 %801, 8, !dbg !965
  store i32 %807, i32* %22, align 8, !dbg !965
  br label %811, !dbg !965

; <label>:808:                                    ; preds = %800
  %809 = load i8*, i8** %24, align 8, !dbg !965
  %810 = getelementptr i8, i8* %809, i64 8, !dbg !965
  store i8* %810, i8** %24, align 8, !dbg !965
  br label %811, !dbg !965

; <label>:811:                                    ; preds = %808, %803
  %812 = phi i8* [ %806, %803 ], [ %809, %808 ]
  %813 = bitcast i8* %812 to i16**, !dbg !965
  %814 = load i16*, i16** %813, align 8, !dbg !965
  %815 = trunc i64 %759 to i16, !dbg !967
  store i16 %815, i16* %814, align 2, !dbg !968, !tbaa !535
  br label %848, !dbg !969

; <label>:816:                                    ; preds = %797
  %817 = and i32 %735, 1, !dbg !970
  %818 = icmp eq i32 %817, 0, !dbg !970
  %819 = load i32, i32* %22, align 8, !dbg !972
  %820 = icmp ult i32 %819, 41, !dbg !972
  br i1 %818, label %834, label %821, !dbg !974

; <label>:821:                                    ; preds = %816
  br i1 %820, label %822, label %827, !dbg !975

; <label>:822:                                    ; preds = %821
  %823 = load i8*, i8** %23, align 8, !dbg !975
  %824 = sext i32 %819 to i64, !dbg !975
  %825 = getelementptr i8, i8* %823, i64 %824, !dbg !975
  %826 = add i32 %819, 8, !dbg !975
  store i32 %826, i32* %22, align 8, !dbg !975
  br label %830, !dbg !975

; <label>:827:                                    ; preds = %821
  %828 = load i8*, i8** %24, align 8, !dbg !975
  %829 = getelementptr i8, i8* %828, i64 8, !dbg !975
  store i8* %829, i8** %24, align 8, !dbg !975
  br label %830, !dbg !975

; <label>:830:                                    ; preds = %827, %822
  %831 = phi i8* [ %825, %822 ], [ %828, %827 ]
  %832 = bitcast i8* %831 to i64**, !dbg !975
  %833 = load i64*, i64** %832, align 8, !dbg !975
  store i64 %759, i64* %833, align 8, !dbg !977, !tbaa !547
  br label %848, !dbg !978

; <label>:834:                                    ; preds = %816
  br i1 %820, label %835, label %840, !dbg !979

; <label>:835:                                    ; preds = %834
  %836 = load i8*, i8** %23, align 8, !dbg !979
  %837 = sext i32 %819 to i64, !dbg !979
  %838 = getelementptr i8, i8* %836, i64 %837, !dbg !979
  %839 = add i32 %819, 8, !dbg !979
  store i32 %839, i32* %22, align 8, !dbg !979
  br label %843, !dbg !979

; <label>:840:                                    ; preds = %834
  %841 = load i8*, i8** %24, align 8, !dbg !979
  %842 = getelementptr i8, i8* %841, i64 8, !dbg !979
  store i8* %842, i8** %24, align 8, !dbg !979
  br label %843, !dbg !979

; <label>:843:                                    ; preds = %840, %835
  %844 = phi i8* [ %838, %835 ], [ %841, %840 ]
  %845 = bitcast i8* %844 to i32**, !dbg !979
  %846 = load i32*, i32** %845, align 8, !dbg !979
  %847 = trunc i64 %759 to i32, !dbg !980
  store i32 %847, i32* %846, align 4, !dbg !981, !tbaa !410
  br label %848

; <label>:848:                                    ; preds = %792, %830, %843, %811, %773
  %849 = add nsw i32 %41, 1, !dbg !982
  br label %850, !dbg !983

; <label>:850:                                    ; preds = %848, %754
  %851 = phi i32 [ %849, %848 ], [ %41, %754 ], !dbg !557
  %852 = ptrtoint i32* %755 to i64, !dbg !984
  %853 = sub i64 %852, %27, !dbg !984
  %854 = lshr exact i64 %853, 2, !dbg !984
  %855 = trunc i64 %854 to i32, !dbg !985
  %856 = add i32 %254, %855, !dbg !985
  br label %1185, !dbg !986

; <label>:857:                                    ; preds = %253
  %858 = add i64 %72, -1, !dbg !992
  %859 = icmp ugt i64 %858, 348, !dbg !994
  %860 = or i32 %228, 1920, !dbg !995
  %861 = select i1 %859, i64 349, i64 %72
  %862 = icmp eq i64 %861, 0, !dbg !998
  br i1 %862, label %1001, label %863, !dbg !998

; <label>:863:                                    ; preds = %857
  %864 = trunc i64 %72 to i32, !dbg !1000
  %865 = add i32 %864, -349, !dbg !1000
  %866 = select i1 %859, i32 %865, i32 0
  br label %867, !dbg !1002

; <label>:867:                                    ; preds = %863, %973
  %868 = phi i32* [ %986, %973 ], [ %25, %863 ]
  %869 = phi i8 [ %983, %973 ], [ 0, %863 ]
  %870 = phi i8 [ %982, %973 ], [ 0, %863 ]
  %871 = phi i32 [ %981, %973 ], [ %866, %863 ]
  %872 = phi i32* [ %980, %973 ], [ null, %863 ]
  %873 = phi i64 [ %979, %973 ], [ 0, %863 ]
  %874 = phi i64 [ %978, %973 ], [ 0, %863 ]
  %875 = phi i64 [ %977, %973 ], [ 0, %863 ]
  %876 = phi i64 [ %984, %973 ], [ %861, %863 ]
  %877 = phi i64 [ %975, %973 ], [ 0, %863 ]
  %878 = phi i32 [ %985, %973 ], [ %254, %863 ]
  %879 = phi i32 [ %974, %973 ], [ %860, %863 ]
  %880 = call i32 @_fgetwc_r(%struct._reent* %0, %struct.__sFILE* %1) #4, !dbg !1002
  switch i32 %880, label %953 [
    i32 48, label %881
    i32 49, label %891
    i32 50, label %891
    i32 51, label %891
    i32 52, label %891
    i32 53, label %891
    i32 54, label %891
    i32 55, label %891
    i32 56, label %891
    i32 57, label %891
    i32 43, label %898
    i32 45, label %898
    i32 110, label %903
    i32 78, label %903
    i32 97, label %917
    i32 65, label %917
    i32 105, label %919
    i32 102, label %931
    i32 70, label %931
    i32 116, label %933
    i32 84, label %933
    i32 121, label %935
    i32 89, label %935
    i32 101, label %937
    i32 69, label %937
  ], !dbg !1005

; <label>:881:                                    ; preds = %867
  %882 = and i32 %879, 256, !dbg !1006
  %883 = icmp eq i32 %882, 0, !dbg !1006
  br i1 %883, label %891, label %884, !dbg !1009

; <label>:884:                                    ; preds = %881
  %885 = and i32 %879, -129, !dbg !1010
  %886 = add nsw i64 %874, 1, !dbg !1012
  %887 = icmp eq i32 %871, 0, !dbg !1013
  br i1 %887, label %973, label %888, !dbg !1015

; <label>:888:                                    ; preds = %884
  %889 = add i32 %871, -1, !dbg !1016
  %890 = add i64 %876, 1, !dbg !1018
  br label %973, !dbg !1019

; <label>:891:                                    ; preds = %881, %867, %867, %867, %867, %867, %867, %867, %867, %867
  %892 = sext i8 %870 to i32, !dbg !1020
  %893 = sext i8 %869 to i32, !dbg !1022
  %894 = sub nsw i32 0, %893, !dbg !1023
  %895 = icmp eq i32 %892, %894, !dbg !1023
  br i1 %895, label %896, label %962, !dbg !1024

; <label>:896:                                    ; preds = %891
  %897 = and i32 %879, -385, !dbg !1025
  br label %964, !dbg !1027

; <label>:898:                                    ; preds = %867, %867
  %899 = trunc i32 %879 to i8, !dbg !1028
  %900 = icmp slt i8 %899, 0, !dbg !1028
  br i1 %900, label %901, label %962, !dbg !1030

; <label>:901:                                    ; preds = %898
  %902 = and i32 %879, -129, !dbg !1031
  br label %964, !dbg !1033

; <label>:903:                                    ; preds = %867, %867
  %904 = icmp eq i8 %870, 0, !dbg !1034
  %905 = icmp eq i64 %874, 0, !dbg !1036
  %906 = and i1 %905, %904, !dbg !1037
  %907 = and i32 %879, 1792, !dbg !1038
  %908 = icmp eq i32 %907, 1792, !dbg !1039
  %909 = and i1 %908, %906, !dbg !1037
  br i1 %909, label %910, label %912, !dbg !1037

; <label>:910:                                    ; preds = %903
  %911 = and i32 %879, -1921, !dbg !1040
  br label %964, !dbg !1042

; <label>:912:                                    ; preds = %903
  %913 = icmp eq i8 %870, 2, !dbg !1043
  br i1 %913, label %964, label %914, !dbg !1045

; <label>:914:                                    ; preds = %912
  switch i8 %869, label %962 [
    i8 1, label %915
    i8 4, label %915
  ], !dbg !1046

; <label>:915:                                    ; preds = %914, %914
  %916 = add i8 %869, 1, !dbg !1048
  br label %964, !dbg !1050

; <label>:917:                                    ; preds = %867, %867
  %918 = icmp eq i8 %870, 1, !dbg !1051
  br i1 %918, label %964, label %962, !dbg !1053

; <label>:919:                                    ; preds = %867
  %920 = icmp eq i8 %869, 0, !dbg !1054
  %921 = icmp eq i64 %874, 0, !dbg !1056
  %922 = and i1 %921, %920, !dbg !1057
  %923 = and i32 %879, 1792, !dbg !1058
  %924 = icmp eq i32 %923, 1792, !dbg !1059
  %925 = and i1 %924, %922, !dbg !1057
  br i1 %925, label %926, label %928, !dbg !1057

; <label>:926:                                    ; preds = %919
  %927 = and i32 %879, -1921, !dbg !1060
  br label %964, !dbg !1062

; <label>:928:                                    ; preds = %919
  switch i8 %869, label %962 [
    i8 3, label %929
    i8 5, label %929
  ], !dbg !1063

; <label>:929:                                    ; preds = %928, %928
  %930 = add i8 %869, 1, !dbg !1065
  br label %964, !dbg !1067

; <label>:931:                                    ; preds = %867, %867
  %932 = icmp eq i8 %869, 2, !dbg !1068
  br i1 %932, label %964, label %962, !dbg !1070

; <label>:933:                                    ; preds = %867, %867
  %934 = icmp eq i8 %869, 6, !dbg !1071
  br i1 %934, label %964, label %962, !dbg !1073

; <label>:935:                                    ; preds = %867, %867
  %936 = icmp eq i8 %869, 7, !dbg !1074
  br i1 %936, label %964, label %962, !dbg !1076

; <label>:937:                                    ; preds = %867, %867
  %938 = and i32 %879, 1280, !dbg !1077
  %939 = icmp eq i32 %938, 1024, !dbg !1079
  br i1 %939, label %945, label %940, !dbg !1080

; <label>:940:                                    ; preds = %937
  %941 = and i32 %879, 1024, !dbg !1081
  %942 = icmp ne i32 %941, 0, !dbg !1081
  %943 = icmp ne i64 %874, 0, !dbg !1082
  %944 = and i1 %942, %943, !dbg !1083
  br i1 %944, label %945, label %962, !dbg !1083

; <label>:945:                                    ; preds = %940, %937
  %946 = and i32 %879, 512, !dbg !1084
  %947 = icmp eq i32 %946, 0, !dbg !1084
  %948 = sub nsw i64 %874, %875, !dbg !1087
  %949 = select i1 %947, i64 %948, i64 %873, !dbg !1089
  %950 = select i1 %947, i32* %868, i32* %872, !dbg !1089
  %951 = and i32 %879, -1921, !dbg !1090
  %952 = or i32 %951, 384, !dbg !1091
  br label %964, !dbg !1092

; <label>:953:                                    ; preds = %867
  %954 = icmp ne i32 %880, %16, !dbg !1093
  %955 = and i32 %879, 512, !dbg !1095
  %956 = icmp eq i32 %955, 0, !dbg !1095
  %957 = or i1 %956, %954, !dbg !1096
  br i1 %957, label %960, label %958, !dbg !1096

; <label>:958:                                    ; preds = %953
  %959 = and i32 %879, -641, !dbg !1097
  br label %964, !dbg !1099

; <label>:960:                                    ; preds = %953
  %961 = icmp eq i32 %880, -1, !dbg !1100
  br i1 %961, label %988, label %962, !dbg !1102

; <label>:962:                                    ; preds = %891, %898, %917, %931, %933, %935, %940, %914, %928, %960
  %963 = call i32 @_ungetwc_r(%struct._reent* %0, i32 %880, %struct.__sFILE* %1) #4, !dbg !1103
  br label %988, !dbg !1103

; <label>:964:                                    ; preds = %935, %933, %931, %917, %912, %958, %945, %929, %926, %915, %910, %901, %896
  %965 = phi i32 [ %959, %958 ], [ %952, %945 ], [ %927, %926 ], [ %879, %929 ], [ %911, %910 ], [ %879, %915 ], [ %902, %901 ], [ %897, %896 ], [ %879, %912 ], [ %879, %917 ], [ %879, %931 ], [ %879, %933 ], [ %879, %935 ], !dbg !1104
  %966 = phi i64 [ %874, %958 ], [ %875, %945 ], [ %875, %926 ], [ %875, %929 ], [ %875, %910 ], [ %875, %915 ], [ %875, %901 ], [ %875, %896 ], [ %875, %912 ], [ %875, %917 ], [ %875, %931 ], [ %875, %933 ], [ %875, %935 ], !dbg !1105
  %967 = phi i64 [ %874, %958 ], [ 0, %945 ], [ 0, %926 ], [ %874, %929 ], [ 0, %910 ], [ %874, %915 ], [ %874, %901 ], [ %874, %896 ], [ %874, %912 ], [ %874, %917 ], [ %874, %931 ], [ %874, %933 ], [ %874, %935 ], !dbg !1105
  %968 = phi i64 [ %873, %958 ], [ %949, %945 ], [ %873, %926 ], [ %873, %929 ], [ %873, %910 ], [ %873, %915 ], [ %873, %901 ], [ %873, %896 ], [ %873, %912 ], [ %873, %917 ], [ %873, %931 ], [ %873, %933 ], [ %873, %935 ], !dbg !1106
  %969 = phi i32* [ %872, %958 ], [ %950, %945 ], [ %872, %926 ], [ %872, %929 ], [ %872, %910 ], [ %872, %915 ], [ %872, %901 ], [ %872, %896 ], [ %872, %912 ], [ %872, %917 ], [ %872, %931 ], [ %872, %933 ], [ %872, %935 ], !dbg !988
  %970 = phi i8 [ %870, %958 ], [ %870, %945 ], [ %870, %926 ], [ %870, %929 ], [ 1, %910 ], [ %870, %915 ], [ %870, %901 ], [ %870, %896 ], [ 3, %912 ], [ 2, %917 ], [ %870, %931 ], [ %870, %933 ], [ %870, %935 ], !dbg !1105
  %971 = phi i8 [ %869, %958 ], [ %869, %945 ], [ 1, %926 ], [ %930, %929 ], [ %869, %910 ], [ %916, %915 ], [ %869, %901 ], [ %869, %896 ], [ %869, %912 ], [ %869, %917 ], [ 3, %931 ], [ 7, %933 ], [ 8, %935 ], !dbg !1105
  %972 = add nsw i64 %877, 1, !dbg !1107
  store i32 %880, i32* %868, align 4, !dbg !1108, !tbaa !410
  br label %973, !dbg !1109

; <label>:973:                                    ; preds = %884, %888, %964
  %974 = phi i32 [ %965, %964 ], [ %885, %888 ], [ %885, %884 ], !dbg !1110
  %975 = phi i64 [ %972, %964 ], [ %877, %888 ], [ %877, %884 ]
  %976 = phi i64 [ %876, %964 ], [ %890, %888 ], [ %876, %884 ], !dbg !1111
  %977 = phi i64 [ %966, %964 ], [ %875, %888 ], [ %875, %884 ], !dbg !1105
  %978 = phi i64 [ %967, %964 ], [ %886, %888 ], [ %886, %884 ], !dbg !1110
  %979 = phi i64 [ %968, %964 ], [ %873, %888 ], [ %873, %884 ], !dbg !1106
  %980 = phi i32* [ %969, %964 ], [ %872, %888 ], [ %872, %884 ], !dbg !988
  %981 = phi i32 [ %871, %964 ], [ %889, %888 ], [ 0, %884 ], !dbg !1111
  %982 = phi i8 [ %970, %964 ], [ %870, %888 ], [ %870, %884 ], !dbg !990
  %983 = phi i8 [ %971, %964 ], [ %869, %888 ], [ %869, %884 ], !dbg !991
  %984 = add i64 %976, -1, !dbg !1112
  %985 = add nsw i32 %878, 1, !dbg !1113
  %986 = getelementptr inbounds [350 x i32], [350 x i32]* %6, i64 0, i64 %975, !dbg !991
  %987 = icmp eq i64 %984, 0, !dbg !998
  br i1 %987, label %988, label %867, !dbg !998, !llvm.loop !1114

; <label>:988:                                    ; preds = %973, %960, %962
  %989 = phi i32 [ %879, %960 ], [ %879, %962 ], [ %974, %973 ]
  %990 = phi i32 [ %878, %960 ], [ %878, %962 ], [ %985, %973 ]
  %991 = phi i64 [ %877, %960 ], [ %877, %962 ], [ %975, %973 ]
  %992 = phi i64 [ %875, %960 ], [ %875, %962 ], [ %977, %973 ]
  %993 = phi i64 [ %874, %960 ], [ %874, %962 ], [ %978, %973 ]
  %994 = phi i64 [ %873, %960 ], [ %873, %962 ], [ %979, %973 ]
  %995 = phi i32* [ %872, %960 ], [ %872, %962 ], [ %980, %973 ]
  %996 = phi i8 [ %870, %960 ], [ %870, %962 ], [ %982, %973 ]
  %997 = phi i8 [ %869, %960 ], [ %869, %962 ], [ %983, %973 ]
  %998 = phi i32* [ %868, %960 ], [ %868, %962 ], [ %986, %973 ]
  %999 = icmp eq i64 %993, 0, !dbg !1116
  %1000 = and i32 %989, -257, !dbg !1118
  br i1 %999, label %1001, label %1011, !dbg !1119

; <label>:1001:                                   ; preds = %857, %988
  %1002 = phi i32* [ %998, %988 ], [ %25, %857 ]
  %1003 = phi i8 [ %997, %988 ], [ 0, %857 ]
  %1004 = phi i8 [ %996, %988 ], [ 0, %857 ]
  %1005 = phi i32* [ %995, %988 ], [ null, %857 ]
  %1006 = phi i64 [ %994, %988 ], [ 0, %857 ]
  %1007 = phi i64 [ %992, %988 ], [ 0, %857 ]
  %1008 = phi i64 [ %991, %988 ], [ 0, %857 ]
  %1009 = phi i32 [ %990, %988 ], [ %254, %857 ]
  %1010 = phi i32 [ %989, %988 ], [ %860, %857 ]
  br label %1011, !dbg !1119

; <label>:1011:                                   ; preds = %988, %1001
  %1012 = phi i32* [ %1002, %1001 ], [ %998, %988 ]
  %1013 = phi i8 [ %1003, %1001 ], [ %997, %988 ]
  %1014 = phi i8 [ %1004, %1001 ], [ %996, %988 ]
  %1015 = phi i32* [ %1005, %1001 ], [ %995, %988 ]
  %1016 = phi i64 [ %1006, %1001 ], [ %994, %988 ]
  %1017 = phi i64 [ 0, %1001 ], [ %993, %988 ]
  %1018 = phi i64 [ %1007, %1001 ], [ %992, %988 ]
  %1019 = phi i64 [ %1008, %1001 ], [ %991, %988 ]
  %1020 = phi i32 [ %1009, %1001 ], [ %990, %988 ]
  %1021 = phi i32 [ %1010, %1001 ], [ %1000, %988 ]
  %1022 = sext i8 %1014 to i32, !dbg !1120
  %1023 = add nsw i32 %1022, -1, !dbg !1122
  %1024 = icmp ult i32 %1023, 2, !dbg !1123
  br i1 %1024, label %1025, label %1033, !dbg !1124

; <label>:1025:                                   ; preds = %1011
  %1026 = icmp ugt i32* %1012, %25, !dbg !1125
  br i1 %1026, label %1027, label %1205, !dbg !1127

; <label>:1027:                                   ; preds = %1025, %1027
  %1028 = phi i32* [ %1029, %1027 ], [ %1012, %1025 ]
  %1029 = getelementptr inbounds i32, i32* %1028, i64 -1, !dbg !1128
  %1030 = load i32, i32* %1029, align 4, !dbg !1130, !tbaa !410
  %1031 = call i32 @_ungetwc_r(%struct._reent* %0, i32 %1030, %struct.__sFILE* %1) #4, !dbg !1131
  %1032 = icmp ugt i32* %1029, %25, !dbg !1125
  br i1 %1032, label %1027, label %1205, !dbg !1127, !llvm.loop !1132

; <label>:1033:                                   ; preds = %1011
  %1034 = sext i8 %1013 to i32, !dbg !1134
  %1035 = add nsw i32 %1034, -1, !dbg !1136
  %1036 = icmp ult i32 %1035, 7, !dbg !1137
  br i1 %1036, label %1037, label %1068, !dbg !1138

; <label>:1037:                                   ; preds = %1033
  %1038 = icmp sgt i8 %1013, 2, !dbg !1139
  br i1 %1038, label %1039, label %1047, !dbg !1142

; <label>:1039:                                   ; preds = %1037
  %1040 = icmp eq i8 %1013, 3, !dbg !1143
  br i1 %1040, label %1068, label %1041, !dbg !1144

; <label>:1041:                                   ; preds = %1039
  %1042 = add i8 %1013, -4, !dbg !1145
  %1043 = zext i8 %1042 to i64, !dbg !1145
  %1044 = xor i64 %1043, -1, !dbg !1145
  %1045 = add i64 %1019, %1044, !dbg !1145
  %1046 = zext i8 %1042 to i32, !dbg !1145
  br label %1049, !dbg !1145

; <label>:1047:                                   ; preds = %1037
  %1048 = icmp sgt i64 %1019, 0, !dbg !1146
  br i1 %1048, label %1058, label %1205, !dbg !1148

; <label>:1049:                                   ; preds = %1041, %1049
  %1050 = phi i8 [ %1052, %1049 ], [ %1013, %1041 ]
  %1051 = phi i64 [ %1053, %1049 ], [ %1019, %1041 ]
  %1052 = add nsw i8 %1050, -1, !dbg !1145
  %1053 = add nsw i64 %1051, -1, !dbg !1149
  %1054 = getelementptr inbounds [350 x i32], [350 x i32]* %6, i64 0, i64 %1053, !dbg !386
  %1055 = load i32, i32* %1054, align 4, !dbg !1151, !tbaa !410
  %1056 = call i32 @_ungetwc_r(%struct._reent* %0, i32 %1055, %struct.__sFILE* %1) #4, !dbg !1152
  %1057 = icmp sgt i8 %1050, 4, !dbg !1143
  br i1 %1057, label %1049, label %1065, !dbg !1144, !llvm.loop !1153

; <label>:1058:                                   ; preds = %1047, %1058
  %1059 = phi i64 [ %1060, %1058 ], [ %1019, %1047 ]
  %1060 = add nsw i64 %1059, -1, !dbg !1155
  %1061 = getelementptr inbounds [350 x i32], [350 x i32]* %6, i64 0, i64 %1060, !dbg !386
  %1062 = load i32, i32* %1061, align 4, !dbg !1157, !tbaa !410
  %1063 = call i32 @_ungetwc_r(%struct._reent* %0, i32 %1062, %struct.__sFILE* %1) #4, !dbg !1158
  %1064 = icmp sgt i64 %1059, 1, !dbg !1146
  br i1 %1064, label %1058, label %1205, !dbg !1148, !llvm.loop !1159

; <label>:1065:                                   ; preds = %1049
  %1066 = xor i32 %1046, -1, !dbg !1145
  %1067 = add i32 %1020, %1066, !dbg !1145
  br label %1068, !dbg !386

; <label>:1068:                                   ; preds = %1065, %1039, %1033
  %1069 = phi i32 [ %1020, %1033 ], [ %1020, %1039 ], [ %1067, %1065 ], !dbg !570
  %1070 = phi i64 [ %1019, %1033 ], [ %1019, %1039 ], [ %1045, %1065 ]
  %1071 = getelementptr inbounds [350 x i32], [350 x i32]* %6, i64 0, i64 %1070, !dbg !386
  %1072 = and i32 %1021, 256, !dbg !1161
  %1073 = icmp eq i32 %1072, 0, !dbg !1161
  br i1 %1073, label %1102, label %1074, !dbg !1163

; <label>:1074:                                   ; preds = %1068
  %1075 = and i32 %1021, 1024, !dbg !1164
  %1076 = icmp eq i32 %1075, 0, !dbg !1164
  br i1 %1076, label %1086, label %1077, !dbg !1167

; <label>:1077:                                   ; preds = %1074
  %1078 = icmp sgt i64 %1070, 0, !dbg !1168
  br i1 %1078, label %1079, label %1205, !dbg !1170

; <label>:1079:                                   ; preds = %1077, %1079
  %1080 = phi i64 [ %1081, %1079 ], [ %1070, %1077 ]
  %1081 = add nsw i64 %1080, -1, !dbg !1171
  %1082 = getelementptr inbounds [350 x i32], [350 x i32]* %6, i64 0, i64 %1081, !dbg !386
  %1083 = load i32, i32* %1082, align 4, !dbg !1173, !tbaa !410
  %1084 = call i32 @_ungetwc_r(%struct._reent* %0, i32 %1083, %struct.__sFILE* %1) #4, !dbg !1174
  %1085 = icmp sgt i64 %1080, 1, !dbg !1168
  br i1 %1085, label %1079, label %1205, !dbg !1170, !llvm.loop !1175

; <label>:1086:                                   ; preds = %1074
  %1087 = getelementptr inbounds i32, i32* %1071, i64 -1, !dbg !1177
  %1088 = load i32, i32* %1087, align 4, !dbg !1178, !tbaa !410
  %1089 = add nsw i32 %1069, -1, !dbg !1179
  %1090 = or i32 %1088, 32, !dbg !1180
  %1091 = icmp eq i32 %1090, 101, !dbg !1180
  br i1 %1091, label %1097, label %1092, !dbg !1180

; <label>:1092:                                   ; preds = %1086
  %1093 = call i32 @_ungetwc_r(%struct._reent* %0, i32 %1088, %struct.__sFILE* %1) #4, !dbg !1182
  %1094 = getelementptr inbounds i32, i32* %1071, i64 -2, !dbg !1184
  %1095 = load i32, i32* %1094, align 4, !dbg !1185, !tbaa !410
  %1096 = add nsw i32 %1069, -2, !dbg !1186
  br label %1097, !dbg !1187

; <label>:1097:                                   ; preds = %1086, %1092
  %1098 = phi i32 [ %1096, %1092 ], [ %1089, %1086 ], !dbg !1188
  %1099 = phi i32* [ %1094, %1092 ], [ %1087, %1086 ], !dbg !1188
  %1100 = phi i32 [ %1095, %1092 ], [ %1088, %1086 ], !dbg !1188
  %1101 = call i32 @_ungetwc_r(%struct._reent* %0, i32 %1100, %struct.__sFILE* %1) #4, !dbg !1189
  br label %1102, !dbg !1190

; <label>:1102:                                   ; preds = %1068, %1097
  %1103 = phi i32 [ %1098, %1097 ], [ %1069, %1068 ], !dbg !557
  %1104 = phi i32* [ %1099, %1097 ], [ %1071, %1068 ], !dbg !1191
  %1105 = and i32 %1021, 16, !dbg !1192
  %1106 = icmp eq i32 %1105, 0, !dbg !1193
  br i1 %1106, label %1107, label %1185, !dbg !1194

; <label>:1107:                                   ; preds = %1102
  store i32 0, i32* %1104, align 4, !dbg !1197, !tbaa !410
  %1108 = and i32 %1021, 1536, !dbg !1198
  %1109 = icmp eq i32 %1108, 1024, !dbg !1200
  br i1 %1109, label %1116, label %1110, !dbg !1201

; <label>:1110:                                   ; preds = %1107
  %1111 = icmp eq i64 %1016, 0, !dbg !1202
  br i1 %1111, label %1126, label %1112, !dbg !1204

; <label>:1112:                                   ; preds = %1110
  %1113 = getelementptr inbounds i32, i32* %1015, i64 1, !dbg !1205
  %1114 = call i64 @_wcstol_r(%struct._reent* %0, i32* nonnull %1113, i32** null, i32 10) #4, !dbg !1206
  %1115 = sub nsw i64 %1114, %1016, !dbg !1207
  br label %1120, !dbg !1208

; <label>:1116:                                   ; preds = %1107
  %1117 = sub nsw i64 %1017, %1018, !dbg !1209
  %1118 = sub nsw i64 0, %1117, !dbg !1211
  %1119 = icmp eq i64 %1117, 0, !dbg !1212
  br i1 %1119, label %1126, label %1120, !dbg !1208

; <label>:1120:                                   ; preds = %1112, %1116
  %1121 = phi i64 [ %1115, %1112 ], [ %1118, %1116 ]
  %1122 = phi i32* [ %1015, %1112 ], [ %1104, %1116 ]
  %1123 = icmp ult i32* %1122, %28, !dbg !1214
  %1124 = select i1 %1123, i32* %1122, i32* %29, !dbg !1217
  %1125 = call i32 (i32*, i64, i32*, ...) @swprintf(i32* %1124, i64 21, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str, i64 0, i64 0), i64 %1121) #4, !dbg !1218
  br label %1126, !dbg !1219

; <label>:1126:                                   ; preds = %1110, %1116, %1120
  %1127 = call double @_wcstod_r(%struct._reent* %0, i32* nonnull %25, i32** null) #4, !dbg !1220
  %1128 = and i32 %1021, 1, !dbg !1221
  %1129 = icmp eq i32 %1128, 0, !dbg !1221
  br i1 %1129, label %1145, label %1130, !dbg !1223

; <label>:1130:                                   ; preds = %1126
  %1131 = load i32, i32* %22, align 8, !dbg !1224
  %1132 = icmp ult i32 %1131, 41, !dbg !1224
  br i1 %1132, label %1133, label %1138, !dbg !1224

; <label>:1133:                                   ; preds = %1130
  %1134 = load i8*, i8** %23, align 8, !dbg !1224
  %1135 = sext i32 %1131 to i64, !dbg !1224
  %1136 = getelementptr i8, i8* %1134, i64 %1135, !dbg !1224
  %1137 = add i32 %1131, 8, !dbg !1224
  store i32 %1137, i32* %22, align 8, !dbg !1224
  br label %1141, !dbg !1224

; <label>:1138:                                   ; preds = %1130
  %1139 = load i8*, i8** %24, align 8, !dbg !1224
  %1140 = getelementptr i8, i8* %1139, i64 8, !dbg !1224
  store i8* %1140, i8** %24, align 8, !dbg !1224
  br label %1141, !dbg !1224

; <label>:1141:                                   ; preds = %1138, %1133
  %1142 = phi i8* [ %1136, %1133 ], [ %1139, %1138 ]
  %1143 = bitcast i8* %1142 to double**, !dbg !1224
  %1144 = load double*, double** %1143, align 8, !dbg !1224
  store double %1127, double* %1144, align 8, !dbg !1227, !tbaa !1228
  br label %1183, !dbg !1230

; <label>:1145:                                   ; preds = %1126
  %1146 = and i32 %1021, 2, !dbg !1231
  %1147 = icmp eq i32 %1146, 0, !dbg !1231
  %1148 = load i32, i32* %22, align 8, !dbg !1233
  %1149 = icmp ult i32 %1148, 41, !dbg !1233
  br i1 %1147, label %1164, label %1150, !dbg !1235

; <label>:1150:                                   ; preds = %1145
  br i1 %1149, label %1151, label %1156, !dbg !1236

; <label>:1151:                                   ; preds = %1150
  %1152 = load i8*, i8** %23, align 8, !dbg !1236
  %1153 = sext i32 %1148 to i64, !dbg !1236
  %1154 = getelementptr i8, i8* %1152, i64 %1153, !dbg !1236
  %1155 = add i32 %1148, 8, !dbg !1236
  store i32 %1155, i32* %22, align 8, !dbg !1236
  br label %1159, !dbg !1236

; <label>:1156:                                   ; preds = %1150
  %1157 = load i8*, i8** %24, align 8, !dbg !1236
  %1158 = getelementptr i8, i8* %1157, i64 8, !dbg !1236
  store i8* %1158, i8** %24, align 8, !dbg !1236
  br label %1159, !dbg !1236

; <label>:1159:                                   ; preds = %1156, %1151
  %1160 = phi i8* [ %1154, %1151 ], [ %1157, %1156 ]
  %1161 = bitcast i8* %1160 to x86_fp80**, !dbg !1236
  %1162 = load x86_fp80*, x86_fp80** %1161, align 8, !dbg !1236
  %1163 = fpext double %1127 to x86_fp80, !dbg !1239
  store x86_fp80 %1163, x86_fp80* %1162, align 16, !dbg !1240, !tbaa !1241
  br label %1183, !dbg !1243

; <label>:1164:                                   ; preds = %1145
  br i1 %1149, label %1165, label %1170, !dbg !1244

; <label>:1165:                                   ; preds = %1164
  %1166 = load i8*, i8** %23, align 8, !dbg !1244
  %1167 = sext i32 %1148 to i64, !dbg !1244
  %1168 = getelementptr i8, i8* %1166, i64 %1167, !dbg !1244
  %1169 = add i32 %1148, 8, !dbg !1244
  store i32 %1169, i32* %22, align 8, !dbg !1244
  br label %1173, !dbg !1244

; <label>:1170:                                   ; preds = %1164
  %1171 = load i8*, i8** %24, align 8, !dbg !1244
  %1172 = getelementptr i8, i8* %1171, i64 8, !dbg !1244
  store i8* %1172, i8** %24, align 8, !dbg !1244
  br label %1173, !dbg !1244

; <label>:1173:                                   ; preds = %1170, %1165
  %1174 = phi i8* [ %1168, %1165 ], [ %1171, %1170 ]
  %1175 = bitcast i8* %1174 to float**, !dbg !1244
  %1176 = load float*, float** %1175, align 8, !dbg !1244
  %1177 = call i32 @__fpclassifyd(double %1127) #4, !dbg !1246
  %1178 = icmp eq i32 %1177, 0, !dbg !1246
  br i1 %1178, label %1179, label %1181, !dbg !1248

; <label>:1179:                                   ; preds = %1173
  %1180 = call float @nanf(i8* null) #4, !dbg !1249
  store float %1180, float* %1176, align 4, !dbg !1250, !tbaa !1251
  br label %1183, !dbg !1253

; <label>:1181:                                   ; preds = %1173
  %1182 = fptrunc double %1127 to float, !dbg !1254
  store float %1182, float* %1176, align 4, !dbg !1255, !tbaa !1251
  br label %1183

; <label>:1183:                                   ; preds = %1159, %1181, %1179, %1141
  %1184 = add nsw i32 %41, 1, !dbg !1256
  br label %1185, !dbg !1257

; <label>:1185:                                   ; preds = %546, %519, %850, %253, %296, %355, %1102, %1183, %550, %657, %660, %587, %534
  %1186 = phi i32 [ %41, %550 ], [ %590, %587 ], [ %41, %657 ], [ %661, %660 ], [ %41, %534 ], [ %41, %253 ], [ %851, %850 ], [ %520, %519 ], [ %302, %296 ], [ %361, %355 ], [ %1184, %1183 ], [ %41, %1102 ], [ %41, %546 ]
  %1187 = phi i32 [ %540, %550 ], [ %588, %587 ], [ %659, %657 ], [ %659, %660 ], [ %254, %534 ], [ %254, %253 ], [ %856, %850 ], [ %524, %519 ], [ %299, %296 ], [ %358, %355 ], [ %1103, %1183 ], [ %1103, %1102 ], [ %547, %546 ]
  %1188 = phi i32 [ %229, %550 ], [ %229, %587 ], [ %229, %657 ], [ %229, %660 ], [ %229, %534 ], [ %229, %253 ], [ %738, %850 ], [ %229, %519 ], [ %229, %296 ], [ %229, %355 ], [ %229, %1183 ], [ %229, %1102 ], [ %229, %546 ]
  %1189 = phi i8* [ %34, %550 ], [ %34, %587 ], [ %658, %657 ], [ %658, %660 ], [ %34, %534 ], [ %34, %253 ], [ %34, %850 ], [ %521, %519 ], [ %34, %296 ], [ %357, %355 ], [ %34, %1183 ], [ %34, %1102 ], [ %34, %546 ]
  %1190 = phi i32* [ %33, %550 ], [ %589, %587 ], [ %33, %657 ], [ %33, %660 ], [ %33, %534 ], [ %33, %253 ], [ %755, %850 ], [ %523, %519 ], [ %297, %296 ], [ %33, %355 ], [ %1104, %1183 ], [ %1104, %1102 ], [ %33, %546 ]
  %1191 = load i32, i32* %235, align 4, !dbg !409, !tbaa !410
  %1192 = icmp eq i32 %1191, 0, !dbg !412
  br i1 %1192, label %1205, label %30, !dbg !414, !llvm.loop !429

; <label>:1193:                                   ; preds = %353, %294, %239, %76, %247, %629, %626, %496, %493, %336, %333, %83
  %1194 = load i32, i32* %8, align 4, !dbg !1258, !tbaa !410
  %1195 = call i32 @pthread_setcancelstate(i32 %1194, i32* nonnull %8) #4, !dbg !1258
  %1196 = icmp eq i32 %41, 0, !dbg !1259
  br i1 %1196, label %1203, label %1197, !dbg !1260

; <label>:1197:                                   ; preds = %1193
  %1198 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 3, !dbg !1261
  %1199 = load i16, i16* %1198, align 8, !dbg !1261, !tbaa !1262
  %1200 = and i16 %1199, 64, !dbg !1266
  %1201 = icmp eq i16 %1200, 0, !dbg !1266
  %1202 = select i1 %1201, i32 %41, i32 -1, !dbg !1259
  br label %1203, !dbg !1259

; <label>:1203:                                   ; preds = %220, %1193, %1197
  %1204 = phi i32 [ %1202, %1197 ], [ -1, %1193 ], [ -1, %220 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %17) #6, !dbg !1267
  br label %1209

; <label>:1205:                                   ; preds = %371, %1185, %395, %439, %85, %64, %70, %1058, %1079, %1027, %4, %1047, %1077, %1025, %741, %743
  %1206 = phi i32 [ %41, %741 ], [ %41, %743 ], [ %41, %1025 ], [ %41, %1077 ], [ %41, %1047 ], [ 0, %4 ], [ %41, %1027 ], [ %41, %1079 ], [ %41, %1058 ], [ %41, %70 ], [ %41, %64 ], [ %41, %85 ], [ %41, %371 ], [ %1186, %1185 ], [ %41, %395 ], [ %41, %439 ]
  %1207 = load i32, i32* %8, align 4, !dbg !1268, !tbaa !410
  %1208 = call i32 @pthread_setcancelstate(i32 %1207, i32* nonnull %8) #4, !dbg !1268
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %17) #6, !dbg !1267
  br label %1209

; <label>:1209:                                   ; preds = %1203, %1205
  %1210 = phi i32 [ %1206, %1205 ], [ %1204, %1203 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %11) #6, !dbg !1269
  call void @llvm.lifetime.end.p0i8(i64 1400, i8* nonnull %10) #6, !dbg !1269
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #6, !dbg !1269
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1269
  ret i32 %1210, !dbg !1269
}

; Function Attrs: noredzone nounwind
define dso_local i32 @__svfwscanf(%struct.__sFILE*, i32*, %struct.__va_list_tag*) local_unnamed_addr #0 !dbg !1270 {
  %4 = tail call %struct._reent* @__getreent() #4, !dbg !1278
  %5 = tail call i32 @__svfwscanf_r(%struct._reent* %4, %struct.__sFILE* %0, i32* %1, %struct.__va_list_tag* %2) #5, !dbg !1279
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1280
  ret i32 %5, !dbg !1280
}

; Function Attrs: noredzone nounwind
define dso_local i32 @_vfwscanf_r(%struct._reent*, %struct.__sFILE*, i32*, %struct.__va_list_tag*) local_unnamed_addr #0 !dbg !1281 {
  %5 = icmp eq %struct._reent* %0, null, !dbg !1291
  br i1 %5, label %11, label %6, !dbg !1291

; <label>:6:                                      ; preds = %4
  %7 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 8, !dbg !1291
  %8 = load i32, i32* %7, align 8, !dbg !1291, !tbaa !373
  %9 = icmp eq i32 %8, 0, !dbg !1291
  br i1 %9, label %10, label %11, !dbg !1290

; <label>:10:                                     ; preds = %6
  tail call void @__sinit(%struct._reent* nonnull %0) #4, !dbg !1291
  br label %11, !dbg !1291

; <label>:11:                                     ; preds = %6, %4, %10
  %12 = tail call i32 @__svfwscanf_r(%struct._reent* %0, %struct.__sFILE* %1, i32* %2, %struct.__va_list_tag* %3) #5, !dbg !1293
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1294
  ret i32 %12, !dbg !1294
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
!409 = !DILocation(line: 478, column: 11, scope: !328)
!410 = !{!375, !375, i64 0}
!411 = !DILocation(line: 384, column: 19, scope: !2)
!412 = !DILocation(line: 479, column: 13, scope: !413)
!413 = distinct !DILexicalBlock(scope: !328, file: !3, line: 479, column: 11)
!414 = !DILocation(line: 479, column: 11, scope: !328)
!415 = !DILocation(line: 478, column: 15, scope: !328)
!416 = !DILocation(line: 481, column: 11, scope: !417)
!417 = distinct !DILexicalBlock(scope: !328, file: !3, line: 481, column: 11)
!418 = !DILocation(line: 481, column: 11, scope: !328)
!419 = !DILocation(line: 483, column: 16, scope: !420)
!420 = distinct !DILexicalBlock(scope: !417, file: !3, line: 482, column: 2)
!421 = !DILocation(line: 483, column: 38, scope: !420)
!422 = !DILocation(line: 483, column: 46, scope: !420)
!423 = !DILocation(line: 483, column: 49, scope: !420)
!424 = !DILocation(line: 483, column: 4, scope: !420)
!425 = distinct !{!425, !424, !426}
!426 = !DILocation(line: 484, column: 6, scope: !420)
!427 = !DILocation(line: 486, column: 6, scope: !428)
!428 = distinct !DILexicalBlock(scope: !420, file: !3, line: 485, column: 8)
!429 = distinct !{!429, !430, !431}
!430 = !DILocation(line: 476, column: 3, scope: !330)
!431 = !DILocation(line: 1473, column: 5, scope: !330)
!432 = !DILocation(line: 489, column: 13, scope: !433)
!433 = distinct !DILexicalBlock(scope: !328, file: !3, line: 489, column: 11)
!434 = !DILocation(line: 489, column: 11, scope: !328)
!435 = !DILocation(line: 0, scope: !436)
!436 = distinct !DILexicalBlock(scope: !328, file: !3, line: 507, column: 2)
!437 = !DILocation(line: 0, scope: !328)
!438 = !DILocation(line: 385, column: 19, scope: !2)
!439 = !DILocation(line: 388, column: 16, scope: !2)
!440 = !DILocation(line: 504, column: 15, scope: !328)
!441 = !DILocation(line: 504, column: 11, scope: !328)
!442 = !DILocation(line: 506, column: 7, scope: !328)
!443 = !DILocation(line: 510, column: 14, scope: !444)
!444 = distinct !DILexicalBlock(scope: !436, file: !3, line: 510, column: 8)
!445 = !DILocation(line: 409, column: 10, scope: !2)
!446 = !DILocation(line: 510, column: 36, scope: !444)
!447 = !DILocation(line: 510, column: 8, scope: !436)
!448 = !DILocation(line: 512, column: 11, scope: !449)
!449 = distinct !DILexicalBlock(scope: !436, file: !3, line: 512, column: 8)
!450 = !DILocation(line: 512, column: 8, scope: !436)
!451 = !DILocation(line: 514, column: 8, scope: !452)
!452 = distinct !DILexicalBlock(scope: !449, file: !3, line: 513, column: 6)
!453 = !DILocation(line: 515, column: 8, scope: !452)
!454 = !DILocation(line: 517, column: 9, scope: !436)
!455 = !DILocation(line: 521, column: 10, scope: !436)
!456 = !DILocation(line: 522, column: 4, scope: !436)
!457 = !DILocation(line: 525, column: 8, scope: !458)
!458 = distinct !DILexicalBlock(scope: !436, file: !3, line: 525, column: 8)
!459 = !DILocation(line: 525, column: 13, scope: !458)
!460 = !DILocation(line: 527, column: 8, scope: !461)
!461 = distinct !DILexicalBlock(scope: !458, file: !3, line: 526, column: 6)
!462 = !DILocation(line: 525, column: 8, scope: !436)
!463 = !DILocation(line: 533, column: 4, scope: !436)
!464 = !DILocation(line: 535, column: 10, scope: !436)
!465 = !DILocation(line: 536, column: 4, scope: !436)
!466 = !DILocation(line: 539, column: 8, scope: !467)
!467 = distinct !DILexicalBlock(scope: !436, file: !3, line: 539, column: 8)
!468 = !DILocation(line: 539, column: 13, scope: !467)
!469 = !DILocation(line: 541, column: 8, scope: !470)
!470 = distinct !DILexicalBlock(scope: !467, file: !3, line: 540, column: 6)
!471 = !DILocation(line: 539, column: 8, scope: !436)
!472 = !DILocation(line: 547, column: 4, scope: !436)
!473 = !DILocation(line: 551, column: 12, scope: !474)
!474 = distinct !DILexicalBlock(scope: !436, file: !3, line: 550, column: 8)
!475 = !DILocation(line: 554, column: 4, scope: !436)
!476 = !DILocation(line: 563, column: 12, scope: !477)
!477 = distinct !DILexicalBlock(scope: !478, file: !3, line: 562, column: 13)
!478 = distinct !DILexicalBlock(scope: !479, file: !3, line: 560, column: 13)
!479 = distinct !DILexicalBlock(scope: !436, file: !3, line: 556, column: 8)
!480 = !DILocation(line: 570, column: 4, scope: !436)
!481 = !DILocation(line: 578, column: 12, scope: !482)
!482 = distinct !DILexicalBlock(scope: !483, file: !3, line: 577, column: 13)
!483 = distinct !DILexicalBlock(scope: !484, file: !3, line: 575, column: 13)
!484 = distinct !DILexicalBlock(scope: !436, file: !3, line: 572, column: 8)
!485 = !DILocation(line: 585, column: 4, scope: !436)
!486 = !DILocation(line: 598, column: 18, scope: !436)
!487 = !DILocation(line: 598, column: 25, scope: !436)
!488 = !DILocation(line: 598, column: 23, scope: !436)
!489 = !DILocation(line: 598, column: 27, scope: !436)
!490 = !DILocation(line: 599, column: 4, scope: !436)
!491 = !DILocation(line: 640, column: 10, scope: !436)
!492 = !DILocation(line: 644, column: 4, scope: !436)
!493 = !DILocation(line: 663, column: 10, scope: !436)
!494 = !DILocation(line: 663, column: 4, scope: !436)
!495 = !DILocation(line: 669, column: 4, scope: !436)
!496 = !DILocation(line: 673, column: 8, scope: !497)
!497 = distinct !DILexicalBlock(scope: !436, file: !3, line: 673, column: 8)
!498 = !DILocation(line: 673, column: 13, scope: !497)
!499 = !DILocation(line: 676, column: 8, scope: !500)
!500 = distinct !DILexicalBlock(scope: !497, file: !3, line: 674, column: 6)
!501 = !DILocation(line: 673, column: 8, scope: !436)
!502 = !DILocation(line: 680, column: 8, scope: !503)
!503 = distinct !DILexicalBlock(scope: !436, file: !3, line: 680, column: 8)
!504 = !DILocation(line: 680, column: 13, scope: !503)
!505 = !DILocation(line: 681, column: 9, scope: !503)
!506 = !DILocation(line: 680, column: 8, scope: !436)
!507 = !DILocation(line: 682, column: 4, scope: !436)
!508 = !DILocation(line: 682, column: 11, scope: !436)
!509 = !DILocation(line: 686, column: 10, scope: !436)
!510 = !DILocation(line: 688, column: 4, scope: !436)
!511 = !DILocation(line: 692, column: 10, scope: !436)
!512 = !DILocation(line: 692, column: 4, scope: !436)
!513 = !DILocation(line: 697, column: 10, scope: !436)
!514 = !DILocation(line: 699, column: 4, scope: !436)
!515 = !DILocation(line: 702, column: 10, scope: !436)
!516 = !DILocation(line: 706, column: 4, scope: !436)
!517 = !DILocation(line: 709, column: 14, scope: !518)
!518 = distinct !DILexicalBlock(scope: !436, file: !3, line: 709, column: 8)
!519 = !DILocation(line: 709, column: 8, scope: !436)
!520 = !DILocation(line: 712, column: 14, scope: !521)
!521 = distinct !DILexicalBlock(scope: !436, file: !3, line: 712, column: 8)
!522 = !DILocation(line: 712, column: 8, scope: !436)
!523 = !DILocation(line: 714, column: 13, scope: !524)
!524 = distinct !DILexicalBlock(scope: !521, file: !3, line: 713, column: 6)
!525 = !DILocation(line: 414, column: 9, scope: !2)
!526 = !DILocation(line: 715, column: 12, scope: !524)
!527 = !DILocation(line: 716, column: 6, scope: !524)
!528 = !DILocation(line: 719, column: 14, scope: !529)
!529 = distinct !DILexicalBlock(scope: !521, file: !3, line: 719, column: 8)
!530 = !DILocation(line: 719, column: 8, scope: !521)
!531 = !DILocation(line: 721, column: 13, scope: !532)
!532 = distinct !DILexicalBlock(scope: !529, file: !3, line: 720, column: 6)
!533 = !DILocation(line: 415, column: 10, scope: !2)
!534 = !DILocation(line: 722, column: 12, scope: !532)
!535 = !{!536, !536, i64 0}
!536 = !{!"short", !376, i64 0}
!537 = !DILocation(line: 723, column: 6, scope: !532)
!538 = !DILocation(line: 724, column: 19, scope: !539)
!539 = distinct !DILexicalBlock(scope: !529, file: !3, line: 724, column: 13)
!540 = !DILocation(line: 0, scope: !541)
!541 = distinct !DILexicalBlock(scope: !539, file: !3, line: 737, column: 6)
!542 = !DILocation(line: 724, column: 13, scope: !529)
!543 = !DILocation(line: 726, column: 13, scope: !544)
!544 = distinct !DILexicalBlock(scope: !539, file: !3, line: 725, column: 6)
!545 = !DILocation(line: 423, column: 9, scope: !2)
!546 = !DILocation(line: 727, column: 12, scope: !544)
!547 = !{!548, !548, i64 0}
!548 = !{!"long", !376, i64 0}
!549 = !DILocation(line: 728, column: 6, scope: !544)
!550 = !DILocation(line: 738, column: 13, scope: !541)
!551 = !DILocation(line: 416, column: 8, scope: !2)
!552 = !DILocation(line: 739, column: 12, scope: !541)
!553 = !DILocation(line: 747, column: 4, scope: !436)
!554 = !DILocation(line: 748, column: 4, scope: !436)
!555 = !DILocation(line: 758, column: 18, scope: !556)
!556 = distinct !DILexicalBlock(scope: !328, file: !3, line: 758, column: 11)
!557 = !DILocation(line: 0, scope: !322)
!558 = !DILocation(line: 0, scope: !2)
!559 = !DILocation(line: 758, column: 28, scope: !556)
!560 = !DILocation(line: 758, column: 11, scope: !328)
!561 = !DILocation(line: 760, column: 17, scope: !562)
!562 = distinct !DILexicalBlock(scope: !556, file: !3, line: 759, column: 2)
!563 = !DILocation(line: 760, column: 47, scope: !562)
!564 = !DILocation(line: 760, column: 50, scope: !562)
!565 = !DILocation(line: 760, column: 4, scope: !562)
!566 = !DILocation(line: 761, column: 11, scope: !562)
!567 = distinct !{!567, !565, !566}
!568 = !DILocation(line: 764, column: 4, scope: !562)
!569 = !DILocation(line: 765, column: 2, scope: !562)
!570 = !DILocation(line: 474, column: 9, scope: !322)
!571 = !DILocation(line: 770, column: 7, scope: !328)
!572 = !DILocation(line: 775, column: 14, scope: !573)
!573 = distinct !DILexicalBlock(scope: !327, file: !3, line: 775, column: 8)
!574 = !DILocation(line: 775, column: 8, scope: !327)
!575 = !DILocation(line: 777, column: 21, scope: !576)
!576 = distinct !DILexicalBlock(scope: !327, file: !3, line: 777, column: 15)
!577 = !DILocation(line: 0, scope: !578)
!578 = distinct !DILexicalBlock(scope: !579, file: !3, line: 796, column: 12)
!579 = distinct !DILexicalBlock(scope: !576, file: !3, line: 795, column: 6)
!580 = !DILocation(line: 777, column: 15, scope: !327)
!581 = !DILocation(line: 779, column: 12, scope: !582)
!582 = distinct !DILexicalBlock(scope: !576, file: !3, line: 778, column: 6)
!583 = !DILocation(line: 780, column: 7, scope: !584)
!584 = distinct !DILexicalBlock(scope: !582, file: !3, line: 779, column: 12)
!585 = !DILocation(line: 780, column: 3, scope: !584)
!586 = !DILocation(line: 782, column: 20, scope: !582)
!587 = !DILocation(line: 387, column: 16, scope: !2)
!588 = !DILocation(line: 782, column: 37, scope: !582)
!589 = !DILocation(line: 782, column: 59, scope: !582)
!590 = !DILocation(line: 782, column: 8, scope: !582)
!591 = !DILocation(line: 784, column: 9, scope: !592)
!592 = distinct !DILexicalBlock(scope: !582, file: !3, line: 783, column: 3)
!593 = !DILocation(line: 785, column: 9, scope: !594)
!594 = distinct !DILexicalBlock(scope: !592, file: !3, line: 784, column: 9)
!595 = !DILocation(line: 785, column: 12, scope: !594)
!596 = !DILocation(line: 785, column: 7, scope: !594)
!597 = !DILocation(line: 0, scope: !594)
!598 = !DILocation(line: 786, column: 6, scope: !592)
!599 = !DILocation(line: 782, column: 23, scope: !582)
!600 = !DILocation(line: 782, column: 28, scope: !582)
!601 = distinct !{!601, !590, !602}
!602 = !DILocation(line: 787, column: 3, scope: !582)
!603 = !DILocation(line: 788, column: 14, scope: !604)
!604 = distinct !DILexicalBlock(scope: !582, file: !3, line: 788, column: 12)
!605 = !DILocation(line: 788, column: 12, scope: !582)
!606 = !DILocation(line: 790, column: 14, scope: !582)
!607 = !DILocation(line: 791, column: 12, scope: !582)
!608 = !DILocation(line: 796, column: 12, scope: !579)
!609 = !DILocation(line: 797, column: 9, scope: !578)
!610 = !DILocation(line: 797, column: 3, scope: !578)
!611 = !DILocation(line: 799, column: 8, scope: !579)
!612 = !DILocation(line: 800, column: 26, scope: !579)
!613 = !DILocation(line: 800, column: 35, scope: !579)
!614 = !DILocation(line: 800, column: 57, scope: !579)
!615 = !DILocation(line: 800, column: 8, scope: !579)
!616 = !DILocation(line: 802, column: 18, scope: !617)
!617 = distinct !DILexicalBlock(scope: !618, file: !3, line: 802, column: 9)
!618 = distinct !DILexicalBlock(scope: !579, file: !3, line: 801, column: 3)
!619 = !DILocation(line: 802, column: 15, scope: !617)
!620 = !DILocation(line: 802, column: 29, scope: !617)
!621 = !DILocation(line: 401, column: 13, scope: !2)
!622 = !DILocation(line: 804, column: 17, scope: !623)
!623 = distinct !DILexicalBlock(scope: !617, file: !3, line: 803, column: 7)
!624 = !DILocation(line: 411, column: 10, scope: !2)
!625 = !DILocation(line: 805, column: 19, scope: !626)
!626 = distinct !DILexicalBlock(scope: !623, file: !3, line: 805, column: 13)
!627 = !DILocation(line: 805, column: 13, scope: !623)
!628 = !DILocation(line: 810, column: 17, scope: !629)
!629 = distinct !DILexicalBlock(scope: !617, file: !3, line: 809, column: 7)
!630 = !DILocation(line: 811, column: 19, scope: !631)
!631 = distinct !DILexicalBlock(scope: !629, file: !3, line: 811, column: 13)
!632 = !DILocation(line: 811, column: 13, scope: !629)
!633 = !DILocation(line: 813, column: 19, scope: !634)
!634 = distinct !DILexicalBlock(scope: !629, file: !3, line: 813, column: 13)
!635 = !DILocation(line: 813, column: 13, scope: !629)
!636 = !DILocation(line: 815, column: 6, scope: !637)
!637 = distinct !DILexicalBlock(scope: !634, file: !3, line: 814, column: 4)
!638 = !DILocation(line: 816, column: 6, scope: !637)
!639 = !DILocation(line: 818, column: 13, scope: !629)
!640 = !DILocation(line: 819, column: 4, scope: !641)
!641 = distinct !DILexicalBlock(scope: !629, file: !3, line: 818, column: 13)
!642 = !DILocation(line: 0, scope: !623)
!643 = !DILocation(line: 822, column: 11, scope: !644)
!644 = distinct !DILexicalBlock(scope: !618, file: !3, line: 821, column: 9)
!645 = !DILocation(line: 821, column: 9, scope: !618)
!646 = !DILocation(line: 823, column: 11, scope: !618)
!647 = !DILocation(line: 824, column: 6, scope: !618)
!648 = !DILocation(line: 800, column: 21, scope: !579)
!649 = distinct !{!649, !615, !650}
!650 = !DILocation(line: 825, column: 3, scope: !579)
!651 = !DILocation(line: 826, column: 14, scope: !652)
!652 = distinct !DILexicalBlock(scope: !579, file: !3, line: 826, column: 12)
!653 = !DILocation(line: 826, column: 12, scope: !579)
!654 = !DILocation(line: 828, column: 14, scope: !579)
!655 = !DILocation(line: 829, column: 12, scope: !579)
!656 = !DILocation(line: 836, column: 14, scope: !657)
!657 = distinct !DILexicalBlock(scope: !327, file: !3, line: 836, column: 8)
!658 = !DILocation(line: 836, column: 8, scope: !327)
!659 = !DILocation(line: 839, column: 15, scope: !660)
!660 = distinct !DILexicalBlock(scope: !327, file: !3, line: 839, column: 8)
!661 = !DILocation(line: 839, column: 27, scope: !660)
!662 = !DILocation(line: 839, column: 37, scope: !660)
!663 = !DILocation(line: 842, column: 21, scope: !664)
!664 = distinct !DILexicalBlock(scope: !660, file: !3, line: 840, column: 6)
!665 = !DILocation(line: 842, column: 43, scope: !664)
!666 = !DILocation(line: 843, column: 8, scope: !664)
!667 = !DILocation(line: 843, column: 16, scope: !664)
!668 = !DILocation(line: 843, column: 19, scope: !664)
!669 = !DILocation(line: 843, column: 24, scope: !664)
!670 = !DILocation(line: 843, column: 27, scope: !664)
!671 = !DILocation(line: 842, column: 8, scope: !664)
!672 = !DILocation(line: 844, column: 4, scope: !664)
!673 = distinct !{!673, !671, !672}
!674 = !DILocation(line: 846, column: 3, scope: !675)
!675 = distinct !DILexicalBlock(scope: !664, file: !3, line: 845, column: 12)
!676 = !DILocation(line: 847, column: 14, scope: !677)
!677 = distinct !DILexicalBlock(scope: !664, file: !3, line: 847, column: 12)
!678 = !DILocation(line: 847, column: 12, scope: !664)
!679 = !DILocation(line: 850, column: 13, scope: !660)
!680 = !DILocation(line: 852, column: 17, scope: !681)
!681 = distinct !DILexicalBlock(scope: !682, file: !3, line: 851, column: 6)
!682 = distinct !DILexicalBlock(scope: !660, file: !3, line: 850, column: 13)
!683 = !DILocation(line: 389, column: 21, scope: !2)
!684 = !DILocation(line: 853, column: 21, scope: !681)
!685 = !DILocation(line: 853, column: 43, scope: !681)
!686 = !DILocation(line: 854, column: 8, scope: !681)
!687 = !DILocation(line: 854, column: 16, scope: !681)
!688 = !DILocation(line: 854, column: 19, scope: !681)
!689 = !DILocation(line: 854, column: 24, scope: !681)
!690 = !DILocation(line: 854, column: 27, scope: !681)
!691 = !DILocation(line: 853, column: 8, scope: !681)
!692 = !DILocation(line: 855, column: 5, scope: !681)
!693 = !DILocation(line: 855, column: 8, scope: !681)
!694 = distinct !{!694, !691, !695}
!695 = !DILocation(line: 855, column: 20, scope: !681)
!696 = !DILocation(line: 857, column: 3, scope: !697)
!697 = distinct !DILexicalBlock(scope: !681, file: !3, line: 856, column: 12)
!698 = !DILocation(line: 858, column: 14, scope: !681)
!699 = !DILocation(line: 858, column: 12, scope: !681)
!700 = !DILocation(line: 859, column: 14, scope: !701)
!701 = distinct !DILexicalBlock(scope: !681, file: !3, line: 859, column: 12)
!702 = !DILocation(line: 859, column: 12, scope: !681)
!703 = !DILocation(line: 861, column: 11, scope: !681)
!704 = !DILocation(line: 862, column: 17, scope: !681)
!705 = !DILocation(line: 863, column: 6, scope: !681)
!706 = !DILocation(line: 866, column: 12, scope: !707)
!707 = distinct !DILexicalBlock(scope: !682, file: !3, line: 865, column: 6)
!708 = !DILocation(line: 867, column: 9, scope: !709)
!709 = distinct !DILexicalBlock(scope: !707, file: !3, line: 866, column: 12)
!710 = !DILocation(line: 867, column: 3, scope: !709)
!711 = !DILocation(line: 0, scope: !709)
!712 = !DILocation(line: 869, column: 8, scope: !707)
!713 = !DILocation(line: 870, column: 21, scope: !707)
!714 = !DILocation(line: 870, column: 43, scope: !707)
!715 = !DILocation(line: 871, column: 8, scope: !707)
!716 = !DILocation(line: 871, column: 16, scope: !707)
!717 = !DILocation(line: 871, column: 19, scope: !707)
!718 = !DILocation(line: 871, column: 24, scope: !707)
!719 = !DILocation(line: 871, column: 27, scope: !707)
!720 = !DILocation(line: 870, column: 8, scope: !707)
!721 = !DILocation(line: 873, column: 18, scope: !722)
!722 = distinct !DILexicalBlock(scope: !723, file: !3, line: 873, column: 9)
!723 = distinct !DILexicalBlock(scope: !707, file: !3, line: 872, column: 3)
!724 = !DILocation(line: 873, column: 15, scope: !722)
!725 = !DILocation(line: 873, column: 29, scope: !722)
!726 = !DILocation(line: 875, column: 17, scope: !727)
!727 = distinct !DILexicalBlock(scope: !722, file: !3, line: 874, column: 7)
!728 = !DILocation(line: 876, column: 19, scope: !729)
!729 = distinct !DILexicalBlock(scope: !727, file: !3, line: 876, column: 13)
!730 = !DILocation(line: 876, column: 13, scope: !727)
!731 = !DILocation(line: 881, column: 17, scope: !732)
!732 = distinct !DILexicalBlock(scope: !722, file: !3, line: 880, column: 7)
!733 = !DILocation(line: 882, column: 19, scope: !734)
!734 = distinct !DILexicalBlock(scope: !732, file: !3, line: 882, column: 13)
!735 = !DILocation(line: 882, column: 13, scope: !732)
!736 = !DILocation(line: 884, column: 19, scope: !737)
!737 = distinct !DILexicalBlock(scope: !732, file: !3, line: 884, column: 13)
!738 = !DILocation(line: 884, column: 13, scope: !732)
!739 = !DILocation(line: 886, column: 13, scope: !732)
!740 = !DILocation(line: 887, column: 4, scope: !741)
!741 = distinct !DILexicalBlock(scope: !732, file: !3, line: 886, column: 13)
!742 = !DILocation(line: 0, scope: !727)
!743 = !DILocation(line: 890, column: 11, scope: !744)
!744 = distinct !DILexicalBlock(scope: !723, file: !3, line: 889, column: 9)
!745 = !DILocation(line: 889, column: 9, scope: !723)
!746 = !DILocation(line: 891, column: 11, scope: !723)
!747 = !DILocation(line: 892, column: 6, scope: !723)
!748 = distinct !{!748, !720, !749}
!749 = !DILocation(line: 893, column: 3, scope: !707)
!750 = !DILocation(line: 895, column: 3, scope: !751)
!751 = distinct !DILexicalBlock(scope: !707, file: !3, line: 894, column: 12)
!752 = !DILocation(line: 896, column: 12, scope: !707)
!753 = !DILocation(line: 898, column: 10, scope: !754)
!754 = distinct !DILexicalBlock(scope: !755, file: !3, line: 897, column: 3)
!755 = distinct !DILexicalBlock(scope: !707, file: !3, line: 896, column: 12)
!756 = !DILocation(line: 899, column: 14, scope: !754)
!757 = !DILocation(line: 900, column: 3, scope: !754)
!758 = !DILocation(line: 0, scope: !754)
!759 = !DILocation(line: 0, scope: !707)
!760 = !DILocation(line: 902, column: 10, scope: !327)
!761 = !DILocation(line: 903, column: 4, scope: !327)
!762 = !DILocation(line: 907, column: 14, scope: !763)
!763 = distinct !DILexicalBlock(scope: !327, file: !3, line: 907, column: 8)
!764 = !DILocation(line: 907, column: 8, scope: !327)
!765 = !DILocation(line: 909, column: 15, scope: !766)
!766 = distinct !DILexicalBlock(scope: !327, file: !3, line: 909, column: 8)
!767 = !DILocation(line: 909, column: 27, scope: !766)
!768 = !DILocation(line: 909, column: 37, scope: !766)
!769 = !DILocation(line: 911, column: 21, scope: !770)
!770 = distinct !DILexicalBlock(scope: !766, file: !3, line: 910, column: 6)
!771 = !DILocation(line: 911, column: 43, scope: !770)
!772 = !DILocation(line: 912, column: 8, scope: !770)
!773 = !DILocation(line: 912, column: 16, scope: !770)
!774 = !DILocation(line: 912, column: 19, scope: !770)
!775 = !DILocation(line: 912, column: 24, scope: !770)
!776 = !DILocation(line: 912, column: 28, scope: !770)
!777 = !DILocation(line: 912, column: 27, scope: !770)
!778 = !DILocation(line: 911, column: 8, scope: !770)
!779 = !DILocation(line: 913, column: 8, scope: !770)
!780 = distinct !{!780, !778, !779}
!781 = !DILocation(line: 915, column: 3, scope: !782)
!782 = distinct !DILexicalBlock(scope: !770, file: !3, line: 914, column: 12)
!783 = !DILocation(line: 917, column: 13, scope: !766)
!784 = !DILocation(line: 919, column: 17, scope: !785)
!785 = distinct !DILexicalBlock(scope: !786, file: !3, line: 918, column: 6)
!786 = distinct !DILexicalBlock(scope: !766, file: !3, line: 917, column: 13)
!787 = !DILocation(line: 920, column: 21, scope: !785)
!788 = !DILocation(line: 920, column: 43, scope: !785)
!789 = !DILocation(line: 921, column: 8, scope: !785)
!790 = !DILocation(line: 921, column: 16, scope: !785)
!791 = !DILocation(line: 921, column: 19, scope: !785)
!792 = !DILocation(line: 921, column: 24, scope: !785)
!793 = !DILocation(line: 921, column: 28, scope: !785)
!794 = !DILocation(line: 921, column: 27, scope: !785)
!795 = !DILocation(line: 920, column: 8, scope: !785)
!796 = !DILocation(line: 923, column: 7, scope: !797)
!797 = distinct !DILexicalBlock(scope: !785, file: !3, line: 922, column: 3)
!798 = !DILocation(line: 923, column: 10, scope: !797)
!799 = !DILocation(line: 924, column: 10, scope: !797)
!800 = distinct !{!800, !795, !801}
!801 = !DILocation(line: 925, column: 3, scope: !785)
!802 = !DILocation(line: 927, column: 3, scope: !803)
!803 = distinct !DILexicalBlock(scope: !785, file: !3, line: 926, column: 12)
!804 = !DILocation(line: 928, column: 11, scope: !785)
!805 = !DILocation(line: 929, column: 17, scope: !785)
!806 = !DILocation(line: 930, column: 6, scope: !785)
!807 = !DILocation(line: 933, column: 12, scope: !808)
!808 = distinct !DILexicalBlock(scope: !786, file: !3, line: 932, column: 6)
!809 = !DILocation(line: 934, column: 9, scope: !810)
!810 = distinct !DILexicalBlock(scope: !808, file: !3, line: 933, column: 12)
!811 = !DILocation(line: 934, column: 3, scope: !810)
!812 = !DILocation(line: 0, scope: !810)
!813 = !DILocation(line: 935, column: 8, scope: !808)
!814 = !DILocation(line: 936, column: 21, scope: !808)
!815 = !DILocation(line: 936, column: 43, scope: !808)
!816 = !DILocation(line: 937, column: 17, scope: !808)
!817 = !DILocation(line: 937, column: 8, scope: !808)
!818 = !DILocation(line: 937, column: 26, scope: !808)
!819 = !DILocation(line: 937, column: 25, scope: !808)
!820 = !DILocation(line: 936, column: 8, scope: !808)
!821 = !DILocation(line: 939, column: 18, scope: !822)
!822 = distinct !DILexicalBlock(scope: !823, file: !3, line: 939, column: 9)
!823 = distinct !DILexicalBlock(scope: !808, file: !3, line: 938, column: 3)
!824 = !DILocation(line: 939, column: 15, scope: !822)
!825 = !DILocation(line: 939, column: 29, scope: !822)
!826 = !DILocation(line: 941, column: 17, scope: !827)
!827 = distinct !DILexicalBlock(scope: !822, file: !3, line: 940, column: 7)
!828 = !DILocation(line: 942, column: 19, scope: !829)
!829 = distinct !DILexicalBlock(scope: !827, file: !3, line: 942, column: 13)
!830 = !DILocation(line: 942, column: 13, scope: !827)
!831 = !DILocation(line: 947, column: 17, scope: !832)
!832 = distinct !DILexicalBlock(scope: !822, file: !3, line: 946, column: 7)
!833 = !DILocation(line: 948, column: 19, scope: !834)
!834 = distinct !DILexicalBlock(scope: !832, file: !3, line: 948, column: 13)
!835 = !DILocation(line: 948, column: 13, scope: !832)
!836 = !DILocation(line: 950, column: 19, scope: !837)
!837 = distinct !DILexicalBlock(scope: !832, file: !3, line: 950, column: 13)
!838 = !DILocation(line: 950, column: 13, scope: !832)
!839 = !DILocation(line: 952, column: 13, scope: !832)
!840 = !DILocation(line: 953, column: 4, scope: !841)
!841 = distinct !DILexicalBlock(scope: !832, file: !3, line: 952, column: 13)
!842 = !DILocation(line: 0, scope: !827)
!843 = !DILocation(line: 956, column: 11, scope: !844)
!844 = distinct !DILexicalBlock(scope: !823, file: !3, line: 955, column: 9)
!845 = !DILocation(line: 955, column: 9, scope: !823)
!846 = !DILocation(line: 957, column: 11, scope: !823)
!847 = !DILocation(line: 958, column: 10, scope: !823)
!848 = distinct !{!848, !820, !849}
!849 = !DILocation(line: 959, column: 3, scope: !808)
!850 = !DILocation(line: 0, scope: !823)
!851 = !DILocation(line: 960, column: 12, scope: !808)
!852 = !DILocation(line: 961, column: 3, scope: !853)
!853 = distinct !DILexicalBlock(scope: !808, file: !3, line: 960, column: 12)
!854 = !DILocation(line: 962, column: 12, scope: !808)
!855 = !DILocation(line: 964, column: 10, scope: !856)
!856 = distinct !DILexicalBlock(scope: !857, file: !3, line: 963, column: 3)
!857 = distinct !DILexicalBlock(scope: !808, file: !3, line: 962, column: 12)
!858 = !DILocation(line: 965, column: 14, scope: !856)
!859 = !DILocation(line: 966, column: 3, scope: !856)
!860 = !DILocation(line: 973, column: 19, scope: !861)
!861 = distinct !DILexicalBlock(scope: !326, file: !3, line: 973, column: 8)
!862 = !DILocation(line: 975, column: 10, scope: !326)
!863 = !DILocation(line: 976, column: 4, scope: !864)
!864 = distinct !DILexicalBlock(scope: !326, file: !3, line: 976, column: 4)
!865 = !DILocation(line: 978, column: 12, scope: !866)
!866 = distinct !DILexicalBlock(scope: !867, file: !3, line: 977, column: 6)
!867 = distinct !DILexicalBlock(scope: !864, file: !3, line: 976, column: 4)
!868 = !DILocation(line: 983, column: 8, scope: !866)
!869 = !DILocation(line: 995, column: 14, scope: !870)
!870 = distinct !DILexicalBlock(scope: !871, file: !3, line: 995, column: 9)
!871 = distinct !DILexicalBlock(scope: !866, file: !3, line: 984, column: 3)
!872 = !DILocation(line: 998, column: 15, scope: !873)
!873 = distinct !DILexicalBlock(scope: !870, file: !3, line: 996, column: 7)
!874 = !DILocation(line: 995, column: 9, scope: !871)
!875 = !DILocation(line: 1000, column: 15, scope: !876)
!876 = distinct !DILexicalBlock(scope: !871, file: !3, line: 1000, column: 9)
!877 = !DILocation(line: 1000, column: 9, scope: !871)
!878 = !DILocation(line: 1001, column: 13, scope: !876)
!879 = !DILocation(line: 1001, column: 7, scope: !876)
!880 = !DILocation(line: 1003, column: 13, scope: !876)
!881 = !DILocation(line: 1014, column: 12, scope: !871)
!882 = !DILocation(line: 1015, column: 11, scope: !871)
!883 = !DILocation(line: 1016, column: 5, scope: !871)
!884 = !DILocation(line: 1021, column: 12, scope: !871)
!885 = !DILocation(line: 1022, column: 14, scope: !886)
!886 = distinct !DILexicalBlock(scope: !871, file: !3, line: 1022, column: 9)
!887 = !DILocation(line: 1022, column: 9, scope: !871)
!888 = !DILocation(line: 1024, column: 11, scope: !871)
!889 = !DILocation(line: 1025, column: 5, scope: !871)
!890 = !DILocation(line: 1041, column: 14, scope: !891)
!891 = distinct !DILexicalBlock(scope: !871, file: !3, line: 1041, column: 9)
!892 = !DILocation(line: 1041, column: 9, scope: !871)
!893 = !DILocation(line: 1043, column: 11, scope: !871)
!894 = !DILocation(line: 1044, column: 5, scope: !871)
!895 = !DILocation(line: 1049, column: 15, scope: !896)
!896 = distinct !DILexicalBlock(scope: !871, file: !3, line: 1049, column: 9)
!897 = !DILocation(line: 1049, column: 9, scope: !871)
!898 = !DILocation(line: 1051, column: 15, scope: !899)
!899 = distinct !DILexicalBlock(scope: !896, file: !3, line: 1050, column: 7)
!900 = !DILocation(line: 1052, column: 15, scope: !899)
!901 = !DILocation(line: 1053, column: 9, scope: !899)
!902 = !DILocation(line: 1060, column: 16, scope: !903)
!903 = distinct !DILexicalBlock(scope: !871, file: !3, line: 1060, column: 9)
!904 = !DILocation(line: 1060, column: 25, scope: !903)
!905 = !DILocation(line: 1060, column: 43, scope: !903)
!906 = !DILocation(line: 1060, column: 41, scope: !903)
!907 = !DILocation(line: 1060, column: 30, scope: !903)
!908 = !DILocation(line: 1060, column: 9, scope: !871)
!909 = !DILocation(line: 1063, column: 15, scope: !910)
!910 = distinct !DILexicalBlock(scope: !903, file: !3, line: 1061, column: 7)
!911 = !DILocation(line: 1064, column: 9, scope: !910)
!912 = !DILocation(line: 1074, column: 3, scope: !913)
!913 = distinct !DILexicalBlock(scope: !866, file: !3, line: 1073, column: 12)
!914 = !DILocation(line: 0, scope: !876)
!915 = !DILocation(line: 0, scope: !873)
!916 = !DILocation(line: 1080, column: 10, scope: !866)
!917 = !DILocation(line: 1080, column: 13, scope: !866)
!918 = !DILocation(line: 976, column: 30, scope: !867)
!919 = distinct !{!919, !863, !920}
!920 = !DILocation(line: 1081, column: 6, scope: !864)
!921 = !DILocation(line: 705, column: 9, scope: !436)
!922 = !DILocation(line: 1090, column: 14, scope: !923)
!923 = distinct !DILexicalBlock(scope: !326, file: !3, line: 1090, column: 8)
!924 = !DILocation(line: 1090, column: 8, scope: !326)
!925 = !DILocation(line: 1092, column: 14, scope: !926)
!926 = distinct !DILexicalBlock(scope: !927, file: !3, line: 1092, column: 12)
!927 = distinct !DILexicalBlock(scope: !923, file: !3, line: 1091, column: 6)
!928 = !DILocation(line: 1092, column: 12, scope: !927)
!929 = !DILocation(line: 1093, column: 22, scope: !926)
!930 = !DILocation(line: 1093, column: 21, scope: !926)
!931 = !DILocation(line: 1093, column: 3, scope: !926)
!932 = !DILocation(line: 1096, column: 8, scope: !326)
!933 = !DILocation(line: 1097, column: 18, scope: !934)
!934 = distinct !DILexicalBlock(scope: !326, file: !3, line: 1097, column: 8)
!935 = !DILocation(line: 1100, column: 8, scope: !936)
!936 = distinct !DILexicalBlock(scope: !934, file: !3, line: 1098, column: 6)
!937 = !DILocation(line: 1101, column: 6, scope: !936)
!938 = !DILocation(line: 0, scope: !864)
!939 = !DILocation(line: 1102, column: 15, scope: !325)
!940 = !DILocation(line: 1102, column: 27, scope: !325)
!941 = !DILocation(line: 1102, column: 8, scope: !326)
!942 = !DILocation(line: 1106, column: 11, scope: !324)
!943 = !DILocation(line: 1107, column: 14, scope: !324)
!944 = !{i64 (%struct._reent*, i32*, i32**, i32)* @_wcstol_r, i64 (%struct._reent*, i32*, i32**, i32)* @_wcstoul_r}
!945 = !DILocation(line: 1104, column: 22, scope: !324)
!946 = !DILocation(line: 1108, column: 18, scope: !333)
!947 = !DILocation(line: 1108, column: 12, scope: !324)
!948 = !DILocation(line: 1110, column: 17, scope: !332)
!949 = !DILocation(line: 1110, column: 12, scope: !332)
!950 = !DILocation(line: 1120, column: 13, scope: !332)
!951 = !DILocation(line: 1120, column: 11, scope: !332)
!952 = !{!378, !378, i64 0}
!953 = !DILocation(line: 1121, column: 3, scope: !332)
!954 = !DILocation(line: 1123, column: 23, scope: !955)
!955 = distinct !DILexicalBlock(scope: !333, file: !3, line: 1123, column: 17)
!956 = !DILocation(line: 1123, column: 17, scope: !333)
!957 = !DILocation(line: 1125, column: 10, scope: !958)
!958 = distinct !DILexicalBlock(scope: !955, file: !3, line: 1124, column: 3)
!959 = !DILocation(line: 1126, column: 11, scope: !958)
!960 = !DILocation(line: 1126, column: 9, scope: !958)
!961 = !DILocation(line: 1127, column: 3, scope: !958)
!962 = !DILocation(line: 1129, column: 23, scope: !963)
!963 = distinct !DILexicalBlock(scope: !955, file: !3, line: 1129, column: 17)
!964 = !DILocation(line: 1129, column: 17, scope: !955)
!965 = !DILocation(line: 1131, column: 10, scope: !966)
!966 = distinct !DILexicalBlock(scope: !963, file: !3, line: 1130, column: 3)
!967 = !DILocation(line: 1132, column: 11, scope: !966)
!968 = !DILocation(line: 1132, column: 9, scope: !966)
!969 = !DILocation(line: 1133, column: 3, scope: !966)
!970 = !DILocation(line: 1134, column: 23, scope: !971)
!971 = distinct !DILexicalBlock(scope: !963, file: !3, line: 1134, column: 17)
!972 = !DILocation(line: 0, scope: !973)
!973 = distinct !DILexicalBlock(scope: !971, file: !3, line: 1152, column: 3)
!974 = !DILocation(line: 1134, column: 17, scope: !963)
!975 = !DILocation(line: 1136, column: 10, scope: !976)
!976 = distinct !DILexicalBlock(scope: !971, file: !3, line: 1135, column: 3)
!977 = !DILocation(line: 1137, column: 9, scope: !976)
!978 = !DILocation(line: 1138, column: 3, scope: !976)
!979 = !DILocation(line: 1153, column: 10, scope: !973)
!980 = !DILocation(line: 1154, column: 11, scope: !973)
!981 = !DILocation(line: 1154, column: 9, scope: !973)
!982 = !DILocation(line: 1156, column: 17, scope: !324)
!983 = !DILocation(line: 1157, column: 6, scope: !324)
!984 = !DILocation(line: 1158, column: 15, scope: !326)
!985 = !DILocation(line: 1158, column: 10, scope: !326)
!986 = !DILocation(line: 1159, column: 4, scope: !326)
!987 = !DILocation(line: 1169, column: 9, scope: !336)
!988 = !DILocation(line: 1171, column: 13, scope: !336)
!989 = !DILocation(line: 1172, column: 13, scope: !336)
!990 = !DILocation(line: 1173, column: 9, scope: !336)
!991 = !DILocation(line: 1174, column: 9, scope: !336)
!992 = !DILocation(line: 1179, column: 14, scope: !993)
!993 = distinct !DILexicalBlock(scope: !336, file: !3, line: 1179, column: 8)
!994 = !DILocation(line: 1179, column: 18, scope: !993)
!995 = !DILocation(line: 1185, column: 10, scope: !336)
!996 = !DILocation(line: 1170, column: 9, scope: !336)
!997 = !DILocation(line: 1170, column: 17, scope: !336)
!998 = !DILocation(line: 1188, column: 4, scope: !999)
!999 = distinct !DILexicalBlock(scope: !336, file: !3, line: 1188, column: 4)
!1000 = !DILocation(line: 1182, column: 21, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !993, file: !3, line: 1181, column: 6)
!1002 = !DILocation(line: 1190, column: 12, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 1189, column: 6)
!1004 = distinct !DILexicalBlock(scope: !999, file: !3, line: 1188, column: 4)
!1005 = !DILocation(line: 1195, column: 8, scope: !1003)
!1006 = !DILocation(line: 1198, column: 15, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 1198, column: 9)
!1008 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 1196, column: 3)
!1009 = !DILocation(line: 1198, column: 9, scope: !1008)
!1010 = !DILocation(line: 1200, column: 15, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 1199, column: 7)
!1012 = !DILocation(line: 1201, column: 15, scope: !1011)
!1013 = !DILocation(line: 1202, column: 13, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 1202, column: 13)
!1015 = !DILocation(line: 1202, column: 13, scope: !1011)
!1016 = !DILocation(line: 1204, column: 16, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1014, file: !3, line: 1203, column: 4)
!1018 = !DILocation(line: 1205, column: 11, scope: !1017)
!1019 = !DILocation(line: 1206, column: 4, scope: !1017)
!1020 = !DILocation(line: 1219, column: 9, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 1219, column: 9)
!1022 = !DILocation(line: 1219, column: 20, scope: !1021)
!1023 = !DILocation(line: 1219, column: 29, scope: !1021)
!1024 = !DILocation(line: 1219, column: 9, scope: !1008)
!1025 = !DILocation(line: 1221, column: 15, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 1220, column: 7)
!1027 = !DILocation(line: 1222, column: 9, scope: !1026)
!1028 = !DILocation(line: 1228, column: 15, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 1228, column: 9)
!1030 = !DILocation(line: 1228, column: 9, scope: !1008)
!1031 = !DILocation(line: 1230, column: 15, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1029, file: !3, line: 1229, column: 7)
!1033 = !DILocation(line: 1231, column: 9, scope: !1032)
!1034 = !DILocation(line: 1236, column: 18, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 1236, column: 9)
!1036 = !DILocation(line: 1236, column: 33, scope: !1035)
!1037 = !DILocation(line: 1236, column: 23, scope: !1035)
!1038 = !DILocation(line: 1237, column: 19, scope: !1035)
!1039 = !DILocation(line: 1237, column: 48, scope: !1035)
!1040 = !DILocation(line: 1240, column: 15, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 1239, column: 7)
!1042 = !DILocation(line: 1242, column: 9, scope: !1041)
!1043 = !DILocation(line: 1244, column: 18, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 1244, column: 9)
!1045 = !DILocation(line: 1244, column: 9, scope: !1008)
!1046 = !DILocation(line: 1249, column: 23, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 1249, column: 9)
!1048 = !DILocation(line: 1251, column: 17, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 1250, column: 7)
!1050 = !DILocation(line: 1252, column: 9, scope: !1049)
!1051 = !DILocation(line: 1257, column: 18, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 1257, column: 9)
!1053 = !DILocation(line: 1257, column: 9, scope: !1008)
!1054 = !DILocation(line: 1264, column: 18, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 1264, column: 9)
!1056 = !DILocation(line: 1264, column: 33, scope: !1055)
!1057 = !DILocation(line: 1264, column: 23, scope: !1055)
!1058 = !DILocation(line: 1265, column: 19, scope: !1055)
!1059 = !DILocation(line: 1265, column: 48, scope: !1055)
!1060 = !DILocation(line: 1268, column: 15, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 1267, column: 7)
!1062 = !DILocation(line: 1270, column: 9, scope: !1061)
!1063 = !DILocation(line: 1272, column: 23, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 1272, column: 9)
!1065 = !DILocation(line: 1274, column: 17, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 1273, column: 7)
!1067 = !DILocation(line: 1275, column: 9, scope: !1066)
!1068 = !DILocation(line: 1280, column: 18, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 1280, column: 9)
!1070 = !DILocation(line: 1280, column: 9, scope: !1008)
!1071 = !DILocation(line: 1288, column: 18, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 1288, column: 9)
!1073 = !DILocation(line: 1288, column: 9, scope: !1008)
!1074 = !DILocation(line: 1296, column: 18, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 1296, column: 9)
!1076 = !DILocation(line: 1296, column: 9, scope: !1008)
!1077 = !DILocation(line: 1305, column: 16, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 1305, column: 9)
!1079 = !DILocation(line: 1305, column: 37, scope: !1078)
!1080 = !DILocation(line: 1306, column: 9, scope: !1078)
!1081 = !DILocation(line: 1306, column: 20, scope: !1078)
!1082 = !DILocation(line: 1306, column: 32, scope: !1078)
!1083 = !DILocation(line: 1306, column: 29, scope: !1078)
!1084 = !DILocation(line: 1308, column: 22, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1086, file: !3, line: 1308, column: 13)
!1086 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 1307, column: 7)
!1087 = !DILocation(line: 1310, column: 26, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1085, file: !3, line: 1309, column: 4)
!1089 = !DILocation(line: 1308, column: 13, scope: !1086)
!1090 = !DILocation(line: 1314, column: 11, scope: !1086)
!1091 = !DILocation(line: 1315, column: 11, scope: !1086)
!1092 = !DILocation(line: 1317, column: 9, scope: !1086)
!1093 = !DILocation(line: 1321, column: 21, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 1321, column: 9)
!1095 = !DILocation(line: 1321, column: 40, scope: !1094)
!1096 = !DILocation(line: 1321, column: 30, scope: !1094)
!1097 = !DILocation(line: 1323, column: 15, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1094, file: !3, line: 1322, column: 7)
!1099 = !DILocation(line: 1325, column: 9, scope: !1098)
!1100 = !DILocation(line: 1329, column: 14, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 1329, column: 12)
!1102 = !DILocation(line: 1329, column: 12, scope: !1003)
!1103 = !DILocation(line: 1330, column: 3, scope: !1101)
!1104 = !DILocation(line: 0, scope: !1026)
!1105 = !DILocation(line: 0, scope: !336)
!1106 = !DILocation(line: 1187, column: 15, scope: !336)
!1107 = !DILocation(line: 1333, column: 10, scope: !1003)
!1108 = !DILocation(line: 1333, column: 13, scope: !1003)
!1109 = !DILocation(line: 1333, column: 8, scope: !1003)
!1110 = !DILocation(line: 0, scope: !1011)
!1111 = !DILocation(line: 0, scope: !1001)
!1112 = !DILocation(line: 1335, column: 13, scope: !1003)
!1113 = !DILocation(line: 1336, column: 8, scope: !1003)
!1114 = distinct !{!1114, !998, !1115}
!1115 = !DILocation(line: 1337, column: 6, scope: !999)
!1116 = !DILocation(line: 1338, column: 8, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !336, file: !3, line: 1338, column: 8)
!1118 = !DILocation(line: 1339, column: 12, scope: !1117)
!1119 = !DILocation(line: 1338, column: 8, scope: !336)
!1120 = !DILocation(line: 1348, column: 8, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !336, file: !3, line: 1348, column: 8)
!1122 = !DILocation(line: 1348, column: 17, scope: !1121)
!1123 = !DILocation(line: 1348, column: 22, scope: !1121)
!1124 = !DILocation(line: 1348, column: 8, scope: !336)
!1125 = !DILocation(line: 1353, column: 17, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 1349, column: 6)
!1127 = !DILocation(line: 1353, column: 8, scope: !1126)
!1128 = !DILocation(line: 1355, column: 24, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1126, file: !3, line: 1354, column: 3)
!1130 = !DILocation(line: 1355, column: 23, scope: !1129)
!1131 = !DILocation(line: 1355, column: 5, scope: !1129)
!1132 = distinct !{!1132, !1127, !1133}
!1133 = !DILocation(line: 1357, column: 3, scope: !1126)
!1134 = !DILocation(line: 1363, column: 8, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !336, file: !3, line: 1363, column: 8)
!1136 = !DILocation(line: 1363, column: 17, scope: !1135)
!1137 = !DILocation(line: 1363, column: 22, scope: !1135)
!1138 = !DILocation(line: 1363, column: 8, scope: !336)
!1139 = !DILocation(line: 1365, column: 21, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1141, file: !3, line: 1365, column: 12)
!1141 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 1364, column: 6)
!1142 = !DILocation(line: 1365, column: 12, scope: !1141)
!1143 = !DILocation(line: 1366, column: 21, scope: !1140)
!1144 = !DILocation(line: 1366, column: 3, scope: !1140)
!1145 = !DILocation(line: 1366, column: 18, scope: !1140)
!1146 = !DILocation(line: 1373, column: 14, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 1372, column: 3)
!1148 = !DILocation(line: 1373, column: 5, scope: !1147)
!1149 = !DILocation(line: 1368, column: 26, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 1367, column: 5)
!1151 = !DILocation(line: 1368, column: 25, scope: !1150)
!1152 = !DILocation(line: 1368, column: 7, scope: !1150)
!1153 = distinct !{!1153, !1144, !1154}
!1154 = !DILocation(line: 1370, column: 5, scope: !1140)
!1155 = !DILocation(line: 1375, column: 28, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1147, file: !3, line: 1374, column: 7)
!1157 = !DILocation(line: 1375, column: 27, scope: !1156)
!1158 = !DILocation(line: 1375, column: 9, scope: !1156)
!1159 = distinct !{!1159, !1148, !1160}
!1160 = !DILocation(line: 1377, column: 7, scope: !1147)
!1161 = !DILocation(line: 1386, column: 14, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !336, file: !3, line: 1386, column: 8)
!1163 = !DILocation(line: 1386, column: 8, scope: !336)
!1164 = !DILocation(line: 1388, column: 18, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1166, file: !3, line: 1388, column: 12)
!1166 = distinct !DILexicalBlock(scope: !1162, file: !3, line: 1387, column: 6)
!1167 = !DILocation(line: 1388, column: 12, scope: !1166)
!1168 = !DILocation(line: 1391, column: 14, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 1389, column: 3)
!1170 = !DILocation(line: 1391, column: 5, scope: !1169)
!1171 = !DILocation(line: 1393, column: 28, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 1392, column: 7)
!1173 = !DILocation(line: 1393, column: 27, scope: !1172)
!1174 = !DILocation(line: 1393, column: 9, scope: !1172)
!1175 = distinct !{!1175, !1170, !1176}
!1176 = !DILocation(line: 1395, column: 7, scope: !1169)
!1177 = !DILocation(line: 1399, column: 13, scope: !1166)
!1178 = !DILocation(line: 1399, column: 12, scope: !1166)
!1179 = !DILocation(line: 1400, column: 8, scope: !1166)
!1180 = !DILocation(line: 1401, column: 22, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1166, file: !3, line: 1401, column: 12)
!1182 = !DILocation(line: 1403, column: 5, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1181, file: !3, line: 1402, column: 3)
!1184 = !DILocation(line: 1404, column: 10, scope: !1183)
!1185 = !DILocation(line: 1404, column: 9, scope: !1183)
!1186 = !DILocation(line: 1405, column: 5, scope: !1183)
!1187 = !DILocation(line: 1406, column: 3, scope: !1183)
!1188 = !DILocation(line: 0, scope: !1166)
!1189 = !DILocation(line: 1407, column: 8, scope: !1166)
!1190 = !DILocation(line: 1408, column: 6, scope: !1166)
!1191 = !DILocation(line: 0, scope: !999)
!1192 = !DILocation(line: 1409, column: 15, scope: !345)
!1193 = !DILocation(line: 1409, column: 27, scope: !345)
!1194 = !DILocation(line: 1409, column: 8, scope: !336)
!1195 = !DILocation(line: 1411, column: 15, scope: !344)
!1196 = !DILocation(line: 1418, column: 13, scope: !344)
!1197 = !DILocation(line: 1420, column: 11, scope: !344)
!1198 = !DILocation(line: 1421, column: 19, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !344, file: !3, line: 1421, column: 12)
!1200 = !DILocation(line: 1421, column: 38, scope: !1199)
!1201 = !DILocation(line: 1421, column: 12, scope: !344)
!1202 = !DILocation(line: 1427, column: 17, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 1427, column: 17)
!1204 = !DILocation(line: 1427, column: 17, scope: !1199)
!1205 = !DILocation(line: 1428, column: 55, scope: !1203)
!1206 = !DILocation(line: 1428, column: 27, scope: !1203)
!1207 = !DILocation(line: 1428, column: 71, scope: !1203)
!1208 = !DILocation(line: 1429, column: 12, scope: !344)
!1209 = !DILocation(line: 1423, column: 25, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 1422, column: 3)
!1211 = !DILocation(line: 1424, column: 15, scope: !1210)
!1212 = !DILocation(line: 1429, column: 12, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !344, file: !3, line: 1429, column: 12)
!1214 = !DILocation(line: 1434, column: 19, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 1434, column: 9)
!1216 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 1430, column: 3)
!1217 = !DILocation(line: 1434, column: 9, scope: !1216)
!1218 = !DILocation(line: 1438, column: 18, scope: !1216)
!1219 = !DILocation(line: 1439, column: 3, scope: !1216)
!1220 = !DILocation(line: 1447, column: 16, scope: !344)
!1221 = !DILocation(line: 1449, column: 18, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !344, file: !3, line: 1449, column: 12)
!1223 = !DILocation(line: 1449, column: 12, scope: !344)
!1224 = !DILocation(line: 1451, column: 10, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 1450, column: 3)
!1226 = !DILocation(line: 420, column: 11, scope: !2)
!1227 = !DILocation(line: 1452, column: 9, scope: !1225)
!1228 = !{!1229, !1229, i64 0}
!1229 = !{!"double", !376, i64 0}
!1230 = !DILocation(line: 1453, column: 3, scope: !1225)
!1231 = !DILocation(line: 1454, column: 23, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 1454, column: 17)
!1233 = !DILocation(line: 0, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 1460, column: 3)
!1235 = !DILocation(line: 1454, column: 17, scope: !1222)
!1236 = !DILocation(line: 1456, column: 11, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 1455, column: 3)
!1238 = !DILocation(line: 419, column: 17, scope: !2)
!1239 = !DILocation(line: 1457, column: 12, scope: !1237)
!1240 = !DILocation(line: 1457, column: 10, scope: !1237)
!1241 = !{!1242, !1242, i64 0}
!1242 = !{!"long double", !376, i64 0}
!1243 = !DILocation(line: 1458, column: 3, scope: !1237)
!1244 = !DILocation(line: 1461, column: 11, scope: !1234)
!1245 = !DILocation(line: 418, column: 10, scope: !2)
!1246 = !DILocation(line: 1462, column: 9, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 1462, column: 9)
!1248 = !DILocation(line: 1462, column: 9, scope: !1234)
!1249 = !DILocation(line: 1463, column: 14, scope: !1247)
!1250 = !DILocation(line: 1463, column: 12, scope: !1247)
!1251 = !{!1252, !1252, i64 0}
!1252 = !{!"float", !376, i64 0}
!1253 = !DILocation(line: 1463, column: 7, scope: !1247)
!1254 = !DILocation(line: 1465, column: 14, scope: !1247)
!1255 = !DILocation(line: 1465, column: 12, scope: !1247)
!1256 = !DILocation(line: 1467, column: 17, scope: !344)
!1257 = !DILocation(line: 1468, column: 6, scope: !344)
!1258 = !DILocation(line: 1479, column: 3, scope: !322)
!1259 = !DILocation(line: 1480, column: 10, scope: !322)
!1260 = !DILocation(line: 1480, column: 20, scope: !322)
!1261 = !DILocation(line: 1480, column: 29, scope: !322)
!1262 = !{!1263, !536, i64 16}
!1263 = !{!"__sFILE", !378, i64 0, !375, i64 8, !375, i64 12, !536, i64 16, !536, i64 18, !1264, i64 24, !375, i64 40, !378, i64 48, !378, i64 56, !378, i64 64, !378, i64 72, !378, i64 80, !1264, i64 88, !378, i64 104, !375, i64 112, !376, i64 116, !376, i64 119, !1264, i64 120, !375, i64 136, !548, i64 144, !378, i64 152, !375, i64 160, !1265, i64 164, !375, i64 172}
!1264 = !{!"__sbuf", !378, i64 0, !375, i64 8}
!1265 = !{!"", !375, i64 0, !376, i64 4}
!1266 = !DILocation(line: 1480, column: 36, scope: !322)
!1267 = !DILocation(line: 1484, column: 3, scope: !2)
!1268 = !DILocation(line: 1484, column: 3, scope: !322)
!1269 = !DILocation(line: 1486, column: 1, scope: !2)
!1270 = distinct !DISubprogram(name: "__svfwscanf", scope: !3, file: !3, line: 274, type: !1271, isLocal: false, isDefinition: true, scopeLine: 278, flags: DIFlagPrototyped, isOptimized: true, unit: !239, retainedNodes: !1273)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{!6, !226, !229, !232}
!1273 = !{!1274, !1275, !1276}
!1274 = !DILocalVariable(name: "fp", arg: 1, scope: !1270, file: !3, line: 274, type: !226)
!1275 = !DILocalVariable(name: "fmt0", arg: 2, scope: !1270, file: !3, line: 274, type: !229)
!1276 = !DILocalVariable(name: "ap", arg: 3, scope: !1270, file: !3, line: 274, type: !232)
!1277 = !DILocation(line: 274, column: 1, scope: !1270)
!1278 = !DILocation(line: 279, column: 25, scope: !1270)
!1279 = !DILocation(line: 279, column: 10, scope: !1270)
!1280 = !DILocation(line: 279, column: 3, scope: !1270)
!1281 = distinct !DISubprogram(name: "_vfwscanf_r", scope: !3, file: !3, line: 285, type: !4, isLocal: false, isDefinition: true, scopeLine: 290, flags: DIFlagPrototyped, isOptimized: true, unit: !239, retainedNodes: !1282)
!1282 = !{!1283, !1284, !1285, !1286, !1287}
!1283 = !DILocalVariable(name: "data", arg: 1, scope: !1281, file: !3, line: 285, type: !7)
!1284 = !DILocalVariable(name: "fp", arg: 2, scope: !1281, file: !3, line: 285, type: !226)
!1285 = !DILocalVariable(name: "fmt", arg: 3, scope: !1281, file: !3, line: 285, type: !229)
!1286 = !DILocalVariable(name: "ap", arg: 4, scope: !1281, file: !3, line: 285, type: !232)
!1287 = !DILocalVariable(name: "_check_init_ptr", scope: !1288, file: !3, line: 291, type: !7)
!1288 = distinct !DILexicalBlock(scope: !1281, file: !3, line: 291, column: 3)
!1289 = !DILocation(line: 285, column: 1, scope: !1281)
!1290 = !DILocation(line: 291, column: 3, scope: !1288)
!1291 = !DILocation(line: 291, column: 3, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 291, column: 3)
!1293 = !DILocation(line: 292, column: 10, scope: !1281)
!1294 = !DILocation(line: 292, column: 3, scope: !1281)
